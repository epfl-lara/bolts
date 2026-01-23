; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506878 () Bool)

(assert start!506878)

(declare-fun b!4853726 () Bool)

(declare-fun res!2072252 () Bool)

(declare-fun e!3034315 () Bool)

(assert (=> b!4853726 (=> (not res!2072252) (not e!3034315))))

(declare-datatypes ((K!17559 0))(
  ( (K!17560 (val!22353 Int)) )
))
(declare-datatypes ((V!17805 0))(
  ( (V!17806 (val!22354 Int)) )
))
(declare-datatypes ((tuple2!59524 0))(
  ( (tuple2!59525 (_1!33056 K!17559) (_2!33056 V!17805)) )
))
(declare-datatypes ((List!55819 0))(
  ( (Nil!55695) (Cons!55695 (h!62143 tuple2!59524) (t!363315 List!55819)) )
))
(declare-fun l!11080 () List!55819)

(declare-fun key!2508 () K!17559)

(get-info :version)

(assert (=> b!4853726 (= res!2072252 (and (or (not ((_ is Cons!55695) l!11080)) (not (= (_1!33056 (h!62143 l!11080)) key!2508))) ((_ is Cons!55695) l!11080)))))

(declare-fun b!4853727 () Bool)

(declare-fun e!3034316 () Bool)

(declare-fun containsKey!4770 (List!55819 K!17559) Bool)

(assert (=> b!4853727 (= e!3034316 (containsKey!4770 l!11080 key!2508))))

(declare-fun b!4853728 () Bool)

(declare-fun e!3034317 () Bool)

(declare-fun e!3034314 () Bool)

(assert (=> b!4853728 (= e!3034317 e!3034314)))

(declare-fun res!2072254 () Bool)

(assert (=> b!4853728 (=> res!2072254 e!3034314)))

(declare-fun lt!1990786 () tuple2!59524)

(assert (=> b!4853728 (= res!2072254 (not (= (_1!33056 lt!1990786) key!2508)))))

(declare-datatypes ((Option!13754 0))(
  ( (None!13753) (Some!13753 (v!49565 tuple2!59524)) )
))
(declare-fun lt!1990785 () Option!13754)

(declare-fun get!19140 (Option!13754) tuple2!59524)

(assert (=> b!4853728 (= lt!1990786 (get!19140 lt!1990785))))

(declare-fun res!2072256 () Bool)

(assert (=> start!506878 (=> (not res!2072256) (not e!3034315))))

(declare-fun noDuplicateKeys!2644 (List!55819) Bool)

(assert (=> start!506878 (= res!2072256 (noDuplicateKeys!2644 l!11080))))

(assert (=> start!506878 e!3034315))

(declare-fun e!3034319 () Bool)

(assert (=> start!506878 e!3034319))

(declare-fun tp_is_empty!35441 () Bool)

(assert (=> start!506878 tp_is_empty!35441))

(declare-fun b!4853729 () Bool)

(declare-fun e!3034318 () Bool)

(assert (=> b!4853729 (= e!3034315 e!3034318)))

(declare-fun res!2072251 () Bool)

(assert (=> b!4853729 (=> (not res!2072251) (not e!3034318))))

(assert (=> b!4853729 (= res!2072251 e!3034316)))

(declare-fun res!2072255 () Bool)

(assert (=> b!4853729 (=> res!2072255 e!3034316)))

(declare-fun isEmpty!29786 (Option!13754) Bool)

(assert (=> b!4853729 (= res!2072255 (not (isEmpty!29786 lt!1990785)))))

(declare-fun getPair!1142 (List!55819 K!17559) Option!13754)

(assert (=> b!4853729 (= lt!1990785 (getPair!1142 (t!363315 l!11080) key!2508))))

(declare-fun b!4853730 () Bool)

(assert (=> b!4853730 (= e!3034318 e!3034317)))

(declare-fun res!2072253 () Bool)

(assert (=> b!4853730 (=> res!2072253 e!3034317)))

(declare-fun isDefined!10835 (Option!13754) Bool)

(assert (=> b!4853730 (= res!2072253 (not (isDefined!10835 lt!1990785)))))

(declare-fun b!4853731 () Bool)

(declare-fun contains!19341 (List!55819 tuple2!59524) Bool)

(assert (=> b!4853731 (= e!3034314 (not (contains!19341 l!11080 lt!1990786)))))

(declare-fun tp!1365260 () Bool)

(declare-fun tp_is_empty!35443 () Bool)

(declare-fun b!4853732 () Bool)

(assert (=> b!4853732 (= e!3034319 (and tp_is_empty!35441 tp_is_empty!35443 tp!1365260))))

(assert (= (and start!506878 res!2072256) b!4853726))

(assert (= (and b!4853726 res!2072252) b!4853729))

(assert (= (and b!4853729 (not res!2072255)) b!4853727))

(assert (= (and b!4853729 res!2072251) b!4853730))

(assert (= (and b!4853730 (not res!2072253)) b!4853728))

(assert (= (and b!4853728 (not res!2072254)) b!4853731))

(assert (= (and start!506878 ((_ is Cons!55695) l!11080)) b!4853732))

(declare-fun m!5851890 () Bool)

(assert (=> start!506878 m!5851890))

(declare-fun m!5851892 () Bool)

(assert (=> b!4853731 m!5851892))

(declare-fun m!5851894 () Bool)

(assert (=> b!4853730 m!5851894))

(declare-fun m!5851896 () Bool)

(assert (=> b!4853729 m!5851896))

(declare-fun m!5851898 () Bool)

(assert (=> b!4853729 m!5851898))

(declare-fun m!5851900 () Bool)

(assert (=> b!4853728 m!5851900))

(declare-fun m!5851902 () Bool)

(assert (=> b!4853727 m!5851902))

(check-sat (not b!4853729) (not start!506878) tp_is_empty!35443 (not b!4853732) (not b!4853730) (not b!4853727) (not b!4853728) (not b!4853731) tp_is_empty!35441)
(check-sat)
(get-model)

(declare-fun d!1558115 () Bool)

(declare-fun res!2072261 () Bool)

(declare-fun e!3034324 () Bool)

(assert (=> d!1558115 (=> res!2072261 e!3034324)))

(assert (=> d!1558115 (= res!2072261 (not ((_ is Cons!55695) l!11080)))))

(assert (=> d!1558115 (= (noDuplicateKeys!2644 l!11080) e!3034324)))

(declare-fun b!4853737 () Bool)

(declare-fun e!3034325 () Bool)

(assert (=> b!4853737 (= e!3034324 e!3034325)))

(declare-fun res!2072262 () Bool)

(assert (=> b!4853737 (=> (not res!2072262) (not e!3034325))))

(assert (=> b!4853737 (= res!2072262 (not (containsKey!4770 (t!363315 l!11080) (_1!33056 (h!62143 l!11080)))))))

(declare-fun b!4853738 () Bool)

(assert (=> b!4853738 (= e!3034325 (noDuplicateKeys!2644 (t!363315 l!11080)))))

(assert (= (and d!1558115 (not res!2072261)) b!4853737))

(assert (= (and b!4853737 res!2072262) b!4853738))

(declare-fun m!5851904 () Bool)

(assert (=> b!4853737 m!5851904))

(declare-fun m!5851906 () Bool)

(assert (=> b!4853738 m!5851906))

(assert (=> start!506878 d!1558115))

(declare-fun d!1558121 () Bool)

(declare-fun lt!1990791 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9920 (List!55819) (InoxSet tuple2!59524))

(assert (=> d!1558121 (= lt!1990791 (select (content!9920 l!11080) lt!1990786))))

(declare-fun e!3034341 () Bool)

(assert (=> d!1558121 (= lt!1990791 e!3034341)))

(declare-fun res!2072276 () Bool)

(assert (=> d!1558121 (=> (not res!2072276) (not e!3034341))))

(assert (=> d!1558121 (= res!2072276 ((_ is Cons!55695) l!11080))))

(assert (=> d!1558121 (= (contains!19341 l!11080 lt!1990786) lt!1990791)))

(declare-fun b!4853759 () Bool)

(declare-fun e!3034340 () Bool)

(assert (=> b!4853759 (= e!3034341 e!3034340)))

(declare-fun res!2072275 () Bool)

(assert (=> b!4853759 (=> res!2072275 e!3034340)))

(assert (=> b!4853759 (= res!2072275 (= (h!62143 l!11080) lt!1990786))))

(declare-fun b!4853760 () Bool)

(assert (=> b!4853760 (= e!3034340 (contains!19341 (t!363315 l!11080) lt!1990786))))

(assert (= (and d!1558121 res!2072276) b!4853759))

(assert (= (and b!4853759 (not res!2072275)) b!4853760))

(declare-fun m!5851908 () Bool)

(assert (=> d!1558121 m!5851908))

(declare-fun m!5851910 () Bool)

(assert (=> d!1558121 m!5851910))

(declare-fun m!5851912 () Bool)

(assert (=> b!4853760 m!5851912))

(assert (=> b!4853731 d!1558121))

(declare-fun d!1558123 () Bool)

(assert (=> d!1558123 (= (isDefined!10835 lt!1990785) (not (isEmpty!29786 lt!1990785)))))

(declare-fun bs!1173237 () Bool)

(assert (= bs!1173237 d!1558123))

(assert (=> bs!1173237 m!5851896))

(assert (=> b!4853730 d!1558123))

(declare-fun d!1558125 () Bool)

(assert (=> d!1558125 (= (isEmpty!29786 lt!1990785) (not ((_ is Some!13753) lt!1990785)))))

(assert (=> b!4853729 d!1558125))

(declare-fun b!4853795 () Bool)

(declare-fun e!3034369 () Option!13754)

(assert (=> b!4853795 (= e!3034369 (Some!13753 (h!62143 (t!363315 l!11080))))))

(declare-fun b!4853796 () Bool)

(declare-fun e!3034370 () Option!13754)

(assert (=> b!4853796 (= e!3034370 None!13753)))

(declare-fun b!4853797 () Bool)

(declare-fun e!3034367 () Bool)

(assert (=> b!4853797 (= e!3034367 (not (containsKey!4770 (t!363315 l!11080) key!2508)))))

(declare-fun b!4853798 () Bool)

(assert (=> b!4853798 (= e!3034369 e!3034370)))

(declare-fun c!825784 () Bool)

(assert (=> b!4853798 (= c!825784 ((_ is Cons!55695) (t!363315 l!11080)))))

(declare-fun b!4853799 () Bool)

(declare-fun e!3034368 () Bool)

(declare-fun lt!1990797 () Option!13754)

(assert (=> b!4853799 (= e!3034368 (contains!19341 (t!363315 l!11080) (get!19140 lt!1990797)))))

(declare-fun d!1558127 () Bool)

(declare-fun e!3034371 () Bool)

(assert (=> d!1558127 e!3034371))

(declare-fun res!2072299 () Bool)

(assert (=> d!1558127 (=> res!2072299 e!3034371)))

(assert (=> d!1558127 (= res!2072299 e!3034367)))

(declare-fun res!2072300 () Bool)

(assert (=> d!1558127 (=> (not res!2072300) (not e!3034367))))

(assert (=> d!1558127 (= res!2072300 (isEmpty!29786 lt!1990797))))

(assert (=> d!1558127 (= lt!1990797 e!3034369)))

(declare-fun c!825783 () Bool)

(assert (=> d!1558127 (= c!825783 (and ((_ is Cons!55695) (t!363315 l!11080)) (= (_1!33056 (h!62143 (t!363315 l!11080))) key!2508)))))

(assert (=> d!1558127 (noDuplicateKeys!2644 (t!363315 l!11080))))

(assert (=> d!1558127 (= (getPair!1142 (t!363315 l!11080) key!2508) lt!1990797)))

(declare-fun b!4853800 () Bool)

(assert (=> b!4853800 (= e!3034370 (getPair!1142 (t!363315 (t!363315 l!11080)) key!2508))))

(declare-fun b!4853801 () Bool)

(declare-fun res!2072302 () Bool)

(assert (=> b!4853801 (=> (not res!2072302) (not e!3034368))))

(assert (=> b!4853801 (= res!2072302 (= (_1!33056 (get!19140 lt!1990797)) key!2508))))

(declare-fun b!4853802 () Bool)

(assert (=> b!4853802 (= e!3034371 e!3034368)))

(declare-fun res!2072301 () Bool)

(assert (=> b!4853802 (=> (not res!2072301) (not e!3034368))))

(assert (=> b!4853802 (= res!2072301 (isDefined!10835 lt!1990797))))

(assert (= (and d!1558127 c!825783) b!4853795))

(assert (= (and d!1558127 (not c!825783)) b!4853798))

(assert (= (and b!4853798 c!825784) b!4853800))

(assert (= (and b!4853798 (not c!825784)) b!4853796))

(assert (= (and d!1558127 res!2072300) b!4853797))

(assert (= (and d!1558127 (not res!2072299)) b!4853802))

(assert (= (and b!4853802 res!2072301) b!4853801))

(assert (= (and b!4853801 res!2072302) b!4853799))

(declare-fun m!5851936 () Bool)

(assert (=> b!4853801 m!5851936))

(assert (=> b!4853799 m!5851936))

(assert (=> b!4853799 m!5851936))

(declare-fun m!5851938 () Bool)

(assert (=> b!4853799 m!5851938))

(declare-fun m!5851940 () Bool)

(assert (=> d!1558127 m!5851940))

(assert (=> d!1558127 m!5851906))

(declare-fun m!5851942 () Bool)

(assert (=> b!4853797 m!5851942))

(declare-fun m!5851944 () Bool)

(assert (=> b!4853802 m!5851944))

(declare-fun m!5851946 () Bool)

(assert (=> b!4853800 m!5851946))

(assert (=> b!4853729 d!1558127))

(declare-fun d!1558137 () Bool)

(assert (=> d!1558137 (= (get!19140 lt!1990785) (v!49565 lt!1990785))))

(assert (=> b!4853728 d!1558137))

(declare-fun d!1558139 () Bool)

(declare-fun res!2072315 () Bool)

(declare-fun e!3034386 () Bool)

(assert (=> d!1558139 (=> res!2072315 e!3034386)))

(assert (=> d!1558139 (= res!2072315 (and ((_ is Cons!55695) l!11080) (= (_1!33056 (h!62143 l!11080)) key!2508)))))

(assert (=> d!1558139 (= (containsKey!4770 l!11080 key!2508) e!3034386)))

(declare-fun b!4853819 () Bool)

(declare-fun e!3034387 () Bool)

(assert (=> b!4853819 (= e!3034386 e!3034387)))

(declare-fun res!2072316 () Bool)

(assert (=> b!4853819 (=> (not res!2072316) (not e!3034387))))

(assert (=> b!4853819 (= res!2072316 ((_ is Cons!55695) l!11080))))

(declare-fun b!4853820 () Bool)

(assert (=> b!4853820 (= e!3034387 (containsKey!4770 (t!363315 l!11080) key!2508))))

(assert (= (and d!1558139 (not res!2072315)) b!4853819))

(assert (= (and b!4853819 res!2072316) b!4853820))

(assert (=> b!4853820 m!5851942))

(assert (=> b!4853727 d!1558139))

(declare-fun e!3034391 () Bool)

(declare-fun tp!1365266 () Bool)

(declare-fun b!4853826 () Bool)

(assert (=> b!4853826 (= e!3034391 (and tp_is_empty!35441 tp_is_empty!35443 tp!1365266))))

(assert (=> b!4853732 (= tp!1365260 e!3034391)))

(assert (= (and b!4853732 ((_ is Cons!55695) (t!363315 l!11080))) b!4853826))

(check-sat (not b!4853797) tp_is_empty!35443 (not d!1558123) (not b!4853801) (not d!1558121) (not b!4853799) (not b!4853802) (not d!1558127) (not b!4853737) (not b!4853820) tp_is_empty!35441 (not b!4853826) (not b!4853738) (not b!4853800) (not b!4853760))
(check-sat)
