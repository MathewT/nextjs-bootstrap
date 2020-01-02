import Link from 'next/link'

const Navbar = () => (
  <div>
    <ul>
      <li><Link href = "/"><a>Main (navbar)</a></Link></li>
      <li><Link href = "/contact"><a>Contact (navbar)</a></Link></li>
    </ul>
  </div>
);

export default Navbar;