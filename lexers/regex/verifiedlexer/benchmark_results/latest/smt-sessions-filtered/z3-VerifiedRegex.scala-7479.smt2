; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396246 () Bool)

(assert start!396246)

(declare-fun b!4159280 () Bool)

(declare-fun res!1703669 () Bool)

(declare-fun e!2581352 () Bool)

(assert (=> b!4159280 (=> (not res!1703669) (not e!2581352))))

(declare-datatypes ((B!2693 0))(
  ( (B!2694 (val!14638 Int)) )
))
(declare-fun e2!32 () B!2693)

(declare-datatypes ((List!45515 0))(
  ( (Nil!45391) (Cons!45391 (h!50811 B!2693) (t!343546 List!45515)) )
))
(declare-fun l!3062 () List!45515)

(declare-fun e1!32 () B!2693)

(declare-fun getIndex!870 (List!45515 B!2693) Int)

(assert (=> b!4159280 (= res!1703669 (< (getIndex!870 l!3062 e1!32) (getIndex!870 l!3062 e2!32)))))

(declare-fun res!1703671 () Bool)

(assert (=> start!396246 (=> (not res!1703671) (not e!2581352))))

(declare-fun contains!9249 (List!45515 B!2693) Bool)

(assert (=> start!396246 (= res!1703671 (contains!9249 l!3062 e1!32))))

(assert (=> start!396246 e!2581352))

(declare-fun e!2581351 () Bool)

(assert (=> start!396246 e!2581351))

(declare-fun tp_is_empty!21741 () Bool)

(assert (=> start!396246 tp_is_empty!21741))

(declare-fun b!4159281 () Bool)

(declare-fun res!1703670 () Bool)

(assert (=> b!4159281 (=> (not res!1703670) (not e!2581352))))

(assert (=> b!4159281 (= res!1703670 (contains!9249 l!3062 e2!32))))

(declare-fun b!4159282 () Bool)

(get-info :version)

(assert (=> b!4159282 (= e!2581352 (and (or (not ((_ is Cons!45391) l!3062)) (not (= (h!50811 l!3062) e1!32))) (or (not ((_ is Cons!45391) l!3062)) (= (h!50811 l!3062) e1!32)) ((_ is Nil!45391) l!3062)))))

(declare-fun b!4159283 () Bool)

(declare-fun res!1703672 () Bool)

(assert (=> b!4159283 (=> (not res!1703672) (not e!2581352))))

(assert (=> b!4159283 (= res!1703672 (not (= e1!32 e2!32)))))

(declare-fun b!4159284 () Bool)

(declare-fun tp!1269008 () Bool)

(assert (=> b!4159284 (= e!2581351 (and tp_is_empty!21741 tp!1269008))))

(assert (= (and start!396246 res!1703671) b!4159281))

(assert (= (and b!4159281 res!1703670) b!4159283))

(assert (= (and b!4159283 res!1703672) b!4159280))

(assert (= (and b!4159280 res!1703669) b!4159282))

(assert (= (and start!396246 ((_ is Cons!45391) l!3062)) b!4159284))

(declare-fun m!4753045 () Bool)

(assert (=> b!4159280 m!4753045))

(declare-fun m!4753047 () Bool)

(assert (=> b!4159280 m!4753047))

(declare-fun m!4753049 () Bool)

(assert (=> start!396246 m!4753049))

(declare-fun m!4753051 () Bool)

(assert (=> b!4159281 m!4753051))

(check-sat (not start!396246) (not b!4159284) tp_is_empty!21741 (not b!4159280) (not b!4159281))
(check-sat)
(get-model)

(declare-fun d!1229826 () Bool)

(declare-fun lt!1482625 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7037 (List!45515) (InoxSet B!2693))

(assert (=> d!1229826 (= lt!1482625 (select (content!7037 l!3062) e1!32))))

(declare-fun e!2581362 () Bool)

(assert (=> d!1229826 (= lt!1482625 e!2581362)))

(declare-fun res!1703678 () Bool)

(assert (=> d!1229826 (=> (not res!1703678) (not e!2581362))))

(assert (=> d!1229826 (= res!1703678 ((_ is Cons!45391) l!3062))))

(assert (=> d!1229826 (= (contains!9249 l!3062 e1!32) lt!1482625)))

(declare-fun b!4159297 () Bool)

(declare-fun e!2581363 () Bool)

(assert (=> b!4159297 (= e!2581362 e!2581363)))

(declare-fun res!1703677 () Bool)

(assert (=> b!4159297 (=> res!1703677 e!2581363)))

(assert (=> b!4159297 (= res!1703677 (= (h!50811 l!3062) e1!32))))

(declare-fun b!4159298 () Bool)

(assert (=> b!4159298 (= e!2581363 (contains!9249 (t!343546 l!3062) e1!32))))

(assert (= (and d!1229826 res!1703678) b!4159297))

(assert (= (and b!4159297 (not res!1703677)) b!4159298))

(declare-fun m!4753053 () Bool)

(assert (=> d!1229826 m!4753053))

(declare-fun m!4753055 () Bool)

(assert (=> d!1229826 m!4753055))

(declare-fun m!4753057 () Bool)

(assert (=> b!4159298 m!4753057))

(assert (=> start!396246 d!1229826))

(declare-fun d!1229828 () Bool)

(declare-fun lt!1482626 () Bool)

(assert (=> d!1229828 (= lt!1482626 (select (content!7037 l!3062) e2!32))))

(declare-fun e!2581364 () Bool)

(assert (=> d!1229828 (= lt!1482626 e!2581364)))

(declare-fun res!1703680 () Bool)

(assert (=> d!1229828 (=> (not res!1703680) (not e!2581364))))

(assert (=> d!1229828 (= res!1703680 ((_ is Cons!45391) l!3062))))

(assert (=> d!1229828 (= (contains!9249 l!3062 e2!32) lt!1482626)))

(declare-fun b!4159299 () Bool)

(declare-fun e!2581365 () Bool)

(assert (=> b!4159299 (= e!2581364 e!2581365)))

(declare-fun res!1703679 () Bool)

(assert (=> b!4159299 (=> res!1703679 e!2581365)))

(assert (=> b!4159299 (= res!1703679 (= (h!50811 l!3062) e2!32))))

(declare-fun b!4159300 () Bool)

(assert (=> b!4159300 (= e!2581365 (contains!9249 (t!343546 l!3062) e2!32))))

(assert (= (and d!1229828 res!1703680) b!4159299))

(assert (= (and b!4159299 (not res!1703679)) b!4159300))

(assert (=> d!1229828 m!4753053))

(declare-fun m!4753059 () Bool)

(assert (=> d!1229828 m!4753059))

(declare-fun m!4753061 () Bool)

(assert (=> b!4159300 m!4753061))

(assert (=> b!4159281 d!1229828))

(declare-fun b!4159325 () Bool)

(declare-fun e!2581381 () Int)

(assert (=> b!4159325 (= e!2581381 (+ 1 (getIndex!870 (t!343546 l!3062) e1!32)))))

(declare-fun b!4159323 () Bool)

(declare-fun e!2581382 () Int)

(assert (=> b!4159323 (= e!2581382 0)))

(declare-fun b!4159324 () Bool)

(assert (=> b!4159324 (= e!2581382 e!2581381)))

(declare-fun c!711833 () Bool)

(assert (=> b!4159324 (= c!711833 (and ((_ is Cons!45391) l!3062) (not (= (h!50811 l!3062) e1!32))))))

(declare-fun d!1229830 () Bool)

(declare-fun lt!1482634 () Int)

(assert (=> d!1229830 (>= lt!1482634 0)))

(assert (=> d!1229830 (= lt!1482634 e!2581382)))

(declare-fun c!711832 () Bool)

(assert (=> d!1229830 (= c!711832 (and ((_ is Cons!45391) l!3062) (= (h!50811 l!3062) e1!32)))))

(assert (=> d!1229830 (contains!9249 l!3062 e1!32)))

(assert (=> d!1229830 (= (getIndex!870 l!3062 e1!32) lt!1482634)))

(declare-fun b!4159326 () Bool)

(assert (=> b!4159326 (= e!2581381 (- 1))))

(assert (= (and d!1229830 c!711832) b!4159323))

(assert (= (and d!1229830 (not c!711832)) b!4159324))

(assert (= (and b!4159324 c!711833) b!4159325))

(assert (= (and b!4159324 (not c!711833)) b!4159326))

(declare-fun m!4753075 () Bool)

(assert (=> b!4159325 m!4753075))

(assert (=> d!1229830 m!4753049))

(assert (=> b!4159280 d!1229830))

(declare-fun b!4159333 () Bool)

(declare-fun e!2581385 () Int)

(assert (=> b!4159333 (= e!2581385 (+ 1 (getIndex!870 (t!343546 l!3062) e2!32)))))

(declare-fun b!4159331 () Bool)

(declare-fun e!2581386 () Int)

(assert (=> b!4159331 (= e!2581386 0)))

(declare-fun b!4159332 () Bool)

(assert (=> b!4159332 (= e!2581386 e!2581385)))

(declare-fun c!711835 () Bool)

(assert (=> b!4159332 (= c!711835 (and ((_ is Cons!45391) l!3062) (not (= (h!50811 l!3062) e2!32))))))

(declare-fun d!1229838 () Bool)

(declare-fun lt!1482636 () Int)

(assert (=> d!1229838 (>= lt!1482636 0)))

(assert (=> d!1229838 (= lt!1482636 e!2581386)))

(declare-fun c!711834 () Bool)

(assert (=> d!1229838 (= c!711834 (and ((_ is Cons!45391) l!3062) (= (h!50811 l!3062) e2!32)))))

(assert (=> d!1229838 (contains!9249 l!3062 e2!32)))

(assert (=> d!1229838 (= (getIndex!870 l!3062 e2!32) lt!1482636)))

(declare-fun b!4159334 () Bool)

(assert (=> b!4159334 (= e!2581385 (- 1))))

(assert (= (and d!1229838 c!711834) b!4159331))

(assert (= (and d!1229838 (not c!711834)) b!4159332))

(assert (= (and b!4159332 c!711835) b!4159333))

(assert (= (and b!4159332 (not c!711835)) b!4159334))

(declare-fun m!4753079 () Bool)

(assert (=> b!4159333 m!4753079))

(assert (=> d!1229838 m!4753051))

(assert (=> b!4159280 d!1229838))

(declare-fun b!4159342 () Bool)

(declare-fun e!2581392 () Bool)

(declare-fun tp!1269014 () Bool)

(assert (=> b!4159342 (= e!2581392 (and tp_is_empty!21741 tp!1269014))))

(assert (=> b!4159284 (= tp!1269008 e!2581392)))

(assert (= (and b!4159284 ((_ is Cons!45391) (t!343546 l!3062))) b!4159342))

(check-sat (not d!1229828) (not d!1229826) (not b!4159342) (not b!4159298) (not d!1229830) (not b!4159325) (not b!4159300) (not b!4159333) (not d!1229838) tp_is_empty!21741)
(check-sat)
