CREATE TABLE `messages` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`room_id` text NOT NULL,
	`participant_id` text NOT NULL,
	`name` text NOT NULL,
	`body` text NOT NULL,
	`kind` text DEFAULT 'chat' NOT NULL,
	`created_at` integer NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_messages_room_id` ON `messages` (`room_id`,`id`);--> statement-breakpoint
CREATE TABLE `participants` (
	`id` text PRIMARY KEY NOT NULL,
	`room_id` text NOT NULL,
	`name` text NOT NULL,
	`color` text DEFAULT '#7c6cff' NOT NULL,
	`last_seen` integer NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_participants_room_seen` ON `participants` (`room_id`,`last_seen`);--> statement-breakpoint
CREATE TABLE `rooms` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`media_url` text DEFAULT '' NOT NULL,
	`playback_time` integer DEFAULT 0 NOT NULL,
	`playback_state` text DEFAULT 'paused' NOT NULL,
	`updated_at` integer NOT NULL,
	`created_at` integer NOT NULL
);
