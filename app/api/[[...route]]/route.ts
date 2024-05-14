import { z } from 'zod'
import { zValidator } from '@hono/zod-validator'
import { Hono } from 'hono'
import { clerkMiddleware, getAuth } from '@hono/clerk-auth'
import { handle } from 'hono/vercel'

import authors from './authors'
import books from './books'

export const runtime = 'edge';

const app = new Hono().basePath('/api')

app.route('/authors', authors)
app.route('/books', books)

// app.get(
//     '/hello',
//     clerkMiddleware(),
//     (c) => {
//         const auth = getAuth(c);
//         if(!auth?.userId) return c.json({ error: 'Unauthorized' });

//         return c.json({
//             message: 'Hello Next.js!',
//             userId: auth?.userId
//         })
//     })




export const GET = handle(app)
export const POST = handle(app)