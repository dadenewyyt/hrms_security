package com.dashen.hrms.security;

import com.dashen.hrms.model.Role;
import com.dashen.hrms.model.UserModel;
import com.dashen.hrms.repositories.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;
import org.springframework.security.core.userdetails.User;

/**
 * Created by Daniel Adenew on 5/8/2017.
 */
@Service
public class DanUserSecurityService implements UserDetailsService {

    private static final Logger logger = LoggerFactory.getLogger(DanUserSecurityService.class);

    @Autowired
    private UserRepository userRepository;

    public DanUserSecurityService(){}

    public DanUserSecurityService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        try {
            UserModel user = userRepository.findUserByUsername(username);
            if (user == null) {
                logger.debug("user not found with the provided username");
                //System.out.println("user not found with the provided username");
                return null;
            }
            logger.debug(" user from username " + user.toString());

            //System.out.println(" user from username " + user.toString());
            return new User(user.getUsername(),user.getPassword(), getAuthorities(user));
        } catch (Exception e) {
            //System.out.println("User not found");
            logger.debug("User not found");
            throw new UsernameNotFoundException("User not found");
        }
    }

    private Set<GrantedAuthority> getAuthorities(UserModel user) {
        Set<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();
        for (Role role : user.getRoles()) {
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getRole());
            authorities.add(grantedAuthority);
        }
        logger.debug("user authorities are " + authorities.toString());

       // System.out.println("user authorities are " + authorities.toString());
        return authorities;
    }
}