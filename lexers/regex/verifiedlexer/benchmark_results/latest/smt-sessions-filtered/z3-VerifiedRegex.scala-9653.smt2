; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506850 () Bool)

(assert start!506850)

(declare-fun b!4853638 () Bool)

(declare-fun e!3034237 () Bool)

(declare-fun e!3034238 () Bool)

(assert (=> b!4853638 (= e!3034237 e!3034238)))

(declare-fun res!2072182 () Bool)

(assert (=> b!4853638 (=> (not res!2072182) (not e!3034238))))

(declare-fun e!3034240 () Bool)

(assert (=> b!4853638 (= res!2072182 e!3034240)))

(declare-fun res!2072180 () Bool)

(assert (=> b!4853638 (=> res!2072180 e!3034240)))

(declare-datatypes ((K!17554 0))(
  ( (K!17555 (val!22349 Int)) )
))
(declare-datatypes ((V!17800 0))(
  ( (V!17801 (val!22350 Int)) )
))
(declare-datatypes ((tuple2!59520 0))(
  ( (tuple2!59521 (_1!33054 K!17554) (_2!33054 V!17800)) )
))
(declare-datatypes ((Option!13752 0))(
  ( (None!13751) (Some!13751 (v!49561 tuple2!59520)) )
))
(declare-fun lt!1990767 () Option!13752)

(declare-fun isEmpty!29784 (Option!13752) Bool)

(assert (=> b!4853638 (= res!2072180 (not (isEmpty!29784 lt!1990767)))))

(declare-datatypes ((List!55817 0))(
  ( (Nil!55693) (Cons!55693 (h!62141 tuple2!59520) (t!363313 List!55817)) )
))
(declare-fun l!11080 () List!55817)

(assert (=> b!4853638 (= lt!1990767 (Some!13751 (h!62141 l!11080)))))

(declare-fun res!2072183 () Bool)

(assert (=> start!506850 (=> (not res!2072183) (not e!3034237))))

(declare-fun noDuplicateKeys!2642 (List!55817) Bool)

(assert (=> start!506850 (= res!2072183 (noDuplicateKeys!2642 l!11080))))

(assert (=> start!506850 e!3034237))

(declare-fun e!3034239 () Bool)

(assert (=> start!506850 e!3034239))

(declare-fun tp_is_empty!35433 () Bool)

(assert (=> start!506850 tp_is_empty!35433))

(declare-fun b!4853639 () Bool)

(declare-fun e!3034241 () Bool)

(declare-fun lt!1990768 () tuple2!59520)

(declare-fun contains!19339 (List!55817 tuple2!59520) Bool)

(assert (=> b!4853639 (= e!3034241 (not (contains!19339 l!11080 lt!1990768)))))

(declare-fun b!4853640 () Bool)

(declare-fun key!2508 () K!17554)

(declare-fun containsKey!4768 (List!55817 K!17554) Bool)

(assert (=> b!4853640 (= e!3034240 (containsKey!4768 l!11080 key!2508))))

(declare-fun b!4853641 () Bool)

(declare-fun e!3034236 () Bool)

(assert (=> b!4853641 (= e!3034236 e!3034241)))

(declare-fun res!2072179 () Bool)

(assert (=> b!4853641 (=> res!2072179 e!3034241)))

(assert (=> b!4853641 (= res!2072179 (not (= (_1!33054 lt!1990768) key!2508)))))

(declare-fun get!19137 (Option!13752) tuple2!59520)

(assert (=> b!4853641 (= lt!1990768 (get!19137 lt!1990767))))

(declare-fun tp!1365248 () Bool)

(declare-fun b!4853642 () Bool)

(declare-fun tp_is_empty!35435 () Bool)

(assert (=> b!4853642 (= e!3034239 (and tp_is_empty!35433 tp_is_empty!35435 tp!1365248))))

(declare-fun b!4853643 () Bool)

(assert (=> b!4853643 (= e!3034238 e!3034236)))

(declare-fun res!2072181 () Bool)

(assert (=> b!4853643 (=> res!2072181 e!3034236)))

(declare-fun isDefined!10833 (Option!13752) Bool)

(assert (=> b!4853643 (= res!2072181 (not (isDefined!10833 lt!1990767)))))

(declare-fun b!4853644 () Bool)

(declare-fun res!2072184 () Bool)

(assert (=> b!4853644 (=> (not res!2072184) (not e!3034237))))

(get-info :version)

(assert (=> b!4853644 (= res!2072184 (and ((_ is Cons!55693) l!11080) (= (_1!33054 (h!62141 l!11080)) key!2508)))))

(assert (= (and start!506850 res!2072183) b!4853644))

(assert (= (and b!4853644 res!2072184) b!4853638))

(assert (= (and b!4853638 (not res!2072180)) b!4853640))

(assert (= (and b!4853638 res!2072182) b!4853643))

(assert (= (and b!4853643 (not res!2072181)) b!4853641))

(assert (= (and b!4853641 (not res!2072179)) b!4853639))

(assert (= (and start!506850 ((_ is Cons!55693) l!11080)) b!4853642))

(declare-fun m!5851840 () Bool)

(assert (=> b!4853640 m!5851840))

(declare-fun m!5851842 () Bool)

(assert (=> b!4853643 m!5851842))

(declare-fun m!5851844 () Bool)

(assert (=> b!4853638 m!5851844))

(declare-fun m!5851846 () Bool)

(assert (=> b!4853639 m!5851846))

(declare-fun m!5851848 () Bool)

(assert (=> start!506850 m!5851848))

(declare-fun m!5851850 () Bool)

(assert (=> b!4853641 m!5851850))

(check-sat (not b!4853640) (not b!4853643) tp_is_empty!35433 (not b!4853638) (not b!4853642) (not start!506850) tp_is_empty!35435 (not b!4853641) (not b!4853639))
(check-sat)
(get-model)

(declare-fun d!1558090 () Bool)

(assert (=> d!1558090 (= (isDefined!10833 lt!1990767) (not (isEmpty!29784 lt!1990767)))))

(declare-fun bs!1173233 () Bool)

(assert (= bs!1173233 d!1558090))

(assert (=> bs!1173233 m!5851844))

(assert (=> b!4853643 d!1558090))

(declare-fun d!1558094 () Bool)

(assert (=> d!1558094 (= (isEmpty!29784 lt!1990767) (not ((_ is Some!13751) lt!1990767)))))

(assert (=> b!4853638 d!1558094))

(declare-fun d!1558098 () Bool)

(declare-fun res!2072195 () Bool)

(declare-fun e!3034252 () Bool)

(assert (=> d!1558098 (=> res!2072195 e!3034252)))

(assert (=> d!1558098 (= res!2072195 (not ((_ is Cons!55693) l!11080)))))

(assert (=> d!1558098 (= (noDuplicateKeys!2642 l!11080) e!3034252)))

(declare-fun b!4853655 () Bool)

(declare-fun e!3034253 () Bool)

(assert (=> b!4853655 (= e!3034252 e!3034253)))

(declare-fun res!2072196 () Bool)

(assert (=> b!4853655 (=> (not res!2072196) (not e!3034253))))

(assert (=> b!4853655 (= res!2072196 (not (containsKey!4768 (t!363313 l!11080) (_1!33054 (h!62141 l!11080)))))))

(declare-fun b!4853656 () Bool)

(assert (=> b!4853656 (= e!3034253 (noDuplicateKeys!2642 (t!363313 l!11080)))))

(assert (= (and d!1558098 (not res!2072195)) b!4853655))

(assert (= (and b!4853655 res!2072196) b!4853656))

(declare-fun m!5851854 () Bool)

(assert (=> b!4853655 m!5851854))

(declare-fun m!5851856 () Bool)

(assert (=> b!4853656 m!5851856))

(assert (=> start!506850 d!1558098))

(declare-fun d!1558102 () Bool)

(declare-fun lt!1990774 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9918 (List!55817) (InoxSet tuple2!59520))

(assert (=> d!1558102 (= lt!1990774 (select (content!9918 l!11080) lt!1990768))))

(declare-fun e!3034262 () Bool)

(assert (=> d!1558102 (= lt!1990774 e!3034262)))

(declare-fun res!2072206 () Bool)

(assert (=> d!1558102 (=> (not res!2072206) (not e!3034262))))

(assert (=> d!1558102 (= res!2072206 ((_ is Cons!55693) l!11080))))

(assert (=> d!1558102 (= (contains!19339 l!11080 lt!1990768) lt!1990774)))

(declare-fun b!4853665 () Bool)

(declare-fun e!3034264 () Bool)

(assert (=> b!4853665 (= e!3034262 e!3034264)))

(declare-fun res!2072205 () Bool)

(assert (=> b!4853665 (=> res!2072205 e!3034264)))

(assert (=> b!4853665 (= res!2072205 (= (h!62141 l!11080) lt!1990768))))

(declare-fun b!4853667 () Bool)

(assert (=> b!4853667 (= e!3034264 (contains!19339 (t!363313 l!11080) lt!1990768))))

(assert (= (and d!1558102 res!2072206) b!4853665))

(assert (= (and b!4853665 (not res!2072205)) b!4853667))

(declare-fun m!5851859 () Bool)

(assert (=> d!1558102 m!5851859))

(declare-fun m!5851864 () Bool)

(assert (=> d!1558102 m!5851864))

(declare-fun m!5851866 () Bool)

(assert (=> b!4853667 m!5851866))

(assert (=> b!4853639 d!1558102))

(declare-fun d!1558107 () Bool)

(declare-fun res!2072217 () Bool)

(declare-fun e!3034274 () Bool)

(assert (=> d!1558107 (=> res!2072217 e!3034274)))

(assert (=> d!1558107 (= res!2072217 (and ((_ is Cons!55693) l!11080) (= (_1!33054 (h!62141 l!11080)) key!2508)))))

(assert (=> d!1558107 (= (containsKey!4768 l!11080 key!2508) e!3034274)))

(declare-fun b!4853677 () Bool)

(declare-fun e!3034275 () Bool)

(assert (=> b!4853677 (= e!3034274 e!3034275)))

(declare-fun res!2072218 () Bool)

(assert (=> b!4853677 (=> (not res!2072218) (not e!3034275))))

(assert (=> b!4853677 (= res!2072218 ((_ is Cons!55693) l!11080))))

(declare-fun b!4853678 () Bool)

(assert (=> b!4853678 (= e!3034275 (containsKey!4768 (t!363313 l!11080) key!2508))))

(assert (= (and d!1558107 (not res!2072217)) b!4853677))

(assert (= (and b!4853677 res!2072218) b!4853678))

(declare-fun m!5851870 () Bool)

(assert (=> b!4853678 m!5851870))

(assert (=> b!4853640 d!1558107))

(declare-fun d!1558110 () Bool)

(assert (=> d!1558110 (= (get!19137 lt!1990767) (v!49561 lt!1990767))))

(assert (=> b!4853641 d!1558110))

(declare-fun e!3034282 () Bool)

(declare-fun b!4853689 () Bool)

(declare-fun tp!1365253 () Bool)

(assert (=> b!4853689 (= e!3034282 (and tp_is_empty!35433 tp_is_empty!35435 tp!1365253))))

(assert (=> b!4853642 (= tp!1365248 e!3034282)))

(assert (= (and b!4853642 ((_ is Cons!55693) (t!363313 l!11080))) b!4853689))

(check-sat (not b!4853667) tp_is_empty!35433 (not b!4853689) (not d!1558102) tp_is_empty!35435 (not b!4853656) (not d!1558090) (not b!4853678) (not b!4853655))
(check-sat)
