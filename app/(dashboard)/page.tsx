import { UserButton } from "@clerk/nextjs";

export default function Home() {
  return (
    <>
    <UserButton afterSignOutUrl="/" />
    <p>This is an Authenticated Route!</p>
    </>
  );
}
