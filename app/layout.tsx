import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Sky & Clouds — Watch Together",
  description: "A private long-distance movie night room for Senthil and Abhi.",
  icons: {
    icon: "/favicon.svg",
    shortcut: "/favicon.svg",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className="dark">
      <body className="antialiased">{children}</body>
    </html>
  );
}
