import Head from "next/head";
import Navbar from "./navbar";

const Layout = (props) => (
  <div>
    <Head>
      <title>Head Static NextJS Bootstrap</title>
      <link rel="stylesheet" href = 'https://bootswatch.com/4/cosmo/bootstrap.min.css' />
      {/* <link rel="stylesheet" href = '/static/bootstrap.min.css' /> */}
    </Head>
    <Navbar/>
      {props.children}
  </div>

);

export default Layout;