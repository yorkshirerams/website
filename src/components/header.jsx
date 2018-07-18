import React from 'react';
import {
  Collapse,
  Navbar,
  NavbarToggler,
  NavbarBrand,
  Nav,
  NavItem,
  NavLink,
} from 'reactstrap';

import './header.scss';

export default class Header extends React.Component {
  constructor(props) {
    super(props);

    this.toggle = this.toggle.bind(this);
    this.state = {
      isOpen: false,
    };
  }

  toggle() {
    const { isOpen } = this.state;
    this.setState({
      isOpen: !{ isOpen },
    });
  }

  render() {
    const { isOpen } = this.state;
    return (
      <div>
        <Navbar color="light" light expand="md">
          <NavbarBrand href="/">
            <img className="logo" src="/img/logo.png" alt="Home" />
          </NavbarBrand>
          <NavbarToggler onClick={this.toggle} />
          <Collapse isOpen={isOpen} navbar>
            <Nav className="ml-auto" navbar>
              <NavItem>
                <NavLink href="/news/">News</NavLink>
              </NavItem>
              <NavItem>
                <NavLink href="/schedule/">Schedule</NavLink>
              </NavItem>
              <NavItem>
                <NavLink href="/recruitment/">Recruitment</NavLink>
              </NavItem>
              <NavItem>
                <NavLink href="/sponsors/">Sponsors and Affiliates</NavLink>
              </NavItem>
              <NavItem>
                <NavLink href="/ramzone/">RamZone</NavLink>
              </NavItem>
              <NavItem>
                <NavLink href="/about/">About</NavLink>
              </NavItem>
              <NavItem>
                <NavLink href="/ramzone/">Contact</NavLink>
              </NavItem>
            </Nav>
          </Collapse>
        </Navbar>
      </div>
    );
  }
}
