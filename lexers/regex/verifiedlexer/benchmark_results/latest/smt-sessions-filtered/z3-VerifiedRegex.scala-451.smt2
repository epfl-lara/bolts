; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13230 () Bool)

(assert start!13230)

(declare-fun b!128349 () Bool)

(declare-fun e!73760 () Bool)

(declare-fun tp_is_empty!1269 () Bool)

(declare-fun tp!69899 () Bool)

(assert (=> b!128349 (= e!73760 (and tp_is_empty!1269 tp!69899))))

(declare-fun b!128350 () Bool)

(declare-fun e!73759 () Bool)

(declare-fun tp!69898 () Bool)

(assert (=> b!128350 (= e!73759 (and tp_is_empty!1269 tp!69898))))

(declare-fun b!128351 () Bool)

(declare-fun e!73758 () Bool)

(declare-fun tp!69897 () Bool)

(assert (=> b!128351 (= e!73758 (and tp_is_empty!1269 tp!69897))))

(declare-fun b!128352 () Bool)

(declare-fun res!59188 () Bool)

(declare-fun e!73761 () Bool)

(assert (=> b!128352 (=> (not res!59188) (not e!73761))))

(declare-datatypes ((B!661 0))(
  ( (B!662 (val!794 Int)) )
))
(declare-datatypes ((List!2125 0))(
  ( (Nil!2119) (Cons!2119 (h!7516 B!661) (t!22701 List!2125)) )
))
(declare-fun s!1511 () List!2125)

(declare-fun isEmpty!849 (List!2125) Bool)

(assert (=> b!128352 (= res!59188 (not (isEmpty!849 s!1511)))))

(declare-fun p!1997 () List!2125)

(declare-fun b!128354 () Bool)

(declare-fun l!3367 () List!2125)

(declare-fun ++!416 (List!2125 List!2125) List!2125)

(declare-fun removeLast!8 (List!2125) List!2125)

(assert (=> b!128354 (= e!73761 (not (= (++!416 p!1997 (removeLast!8 s!1511)) (removeLast!8 l!3367))))))

(declare-fun b!128353 () Bool)

(declare-fun res!59189 () Bool)

(assert (=> b!128353 (=> (not res!59189) (not e!73761))))

(get-info :version)

(assert (=> b!128353 (= res!59189 (not ((_ is Cons!2119) p!1997)))))

(declare-fun res!59190 () Bool)

(assert (=> start!13230 (=> (not res!59190) (not e!73761))))

(assert (=> start!13230 (= res!59190 (= (++!416 p!1997 s!1511) l!3367))))

(assert (=> start!13230 e!73761))

(assert (=> start!13230 e!73758))

(assert (=> start!13230 e!73760))

(assert (=> start!13230 e!73759))

(assert (= (and start!13230 res!59190) b!128352))

(assert (= (and b!128352 res!59188) b!128353))

(assert (= (and b!128353 res!59189) b!128354))

(assert (= (and start!13230 ((_ is Cons!2119) p!1997)) b!128351))

(assert (= (and start!13230 ((_ is Cons!2119) s!1511)) b!128349))

(assert (= (and start!13230 ((_ is Cons!2119) l!3367)) b!128350))

(declare-fun m!113043 () Bool)

(assert (=> b!128352 m!113043))

(declare-fun m!113045 () Bool)

(assert (=> b!128354 m!113045))

(assert (=> b!128354 m!113045))

(declare-fun m!113047 () Bool)

(assert (=> b!128354 m!113047))

(declare-fun m!113049 () Bool)

(assert (=> b!128354 m!113049))

(declare-fun m!113051 () Bool)

(assert (=> start!13230 m!113051))

(check-sat (not start!13230) (not b!128354) (not b!128349) (not b!128350) (not b!128351) tp_is_empty!1269 (not b!128352))
(check-sat)
(get-model)

(declare-fun b!128371 () Bool)

(declare-fun e!73770 () List!2125)

(assert (=> b!128371 (= e!73770 (removeLast!8 s!1511))))

(declare-fun b!128372 () Bool)

(assert (=> b!128372 (= e!73770 (Cons!2119 (h!7516 p!1997) (++!416 (t!22701 p!1997) (removeLast!8 s!1511))))))

(declare-fun b!128373 () Bool)

(declare-fun res!59200 () Bool)

(declare-fun e!73771 () Bool)

(assert (=> b!128373 (=> (not res!59200) (not e!73771))))

(declare-fun lt!38398 () List!2125)

(declare-fun size!1936 (List!2125) Int)

(assert (=> b!128373 (= res!59200 (= (size!1936 lt!38398) (+ (size!1936 p!1997) (size!1936 (removeLast!8 s!1511)))))))

(declare-fun d!30294 () Bool)

(assert (=> d!30294 e!73771))

(declare-fun res!59199 () Bool)

(assert (=> d!30294 (=> (not res!59199) (not e!73771))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!254 (List!2125) (InoxSet B!661))

(assert (=> d!30294 (= res!59199 (= (content!254 lt!38398) ((_ map or) (content!254 p!1997) (content!254 (removeLast!8 s!1511)))))))

(assert (=> d!30294 (= lt!38398 e!73770)))

(declare-fun c!28035 () Bool)

(assert (=> d!30294 (= c!28035 ((_ is Nil!2119) p!1997))))

(assert (=> d!30294 (= (++!416 p!1997 (removeLast!8 s!1511)) lt!38398)))

(declare-fun b!128374 () Bool)

(assert (=> b!128374 (= e!73771 (or (not (= (removeLast!8 s!1511) Nil!2119)) (= lt!38398 p!1997)))))

(assert (= (and d!30294 c!28035) b!128371))

(assert (= (and d!30294 (not c!28035)) b!128372))

(assert (= (and d!30294 res!59199) b!128373))

(assert (= (and b!128373 res!59200) b!128374))

(assert (=> b!128372 m!113045))

(declare-fun m!113053 () Bool)

(assert (=> b!128372 m!113053))

(declare-fun m!113055 () Bool)

(assert (=> b!128373 m!113055))

(declare-fun m!113057 () Bool)

(assert (=> b!128373 m!113057))

(assert (=> b!128373 m!113045))

(declare-fun m!113059 () Bool)

(assert (=> b!128373 m!113059))

(declare-fun m!113061 () Bool)

(assert (=> d!30294 m!113061))

(declare-fun m!113063 () Bool)

(assert (=> d!30294 m!113063))

(assert (=> d!30294 m!113045))

(declare-fun m!113065 () Bool)

(assert (=> d!30294 m!113065))

(assert (=> b!128354 d!30294))

(declare-fun d!30298 () Bool)

(declare-fun lt!38403 () List!2125)

(declare-fun last!12 (List!2125) B!661)

(assert (=> d!30298 (= (++!416 lt!38403 (Cons!2119 (last!12 s!1511) Nil!2119)) s!1511)))

(declare-fun e!73778 () List!2125)

(assert (=> d!30298 (= lt!38403 e!73778)))

(declare-fun c!28040 () Bool)

(assert (=> d!30298 (= c!28040 (and ((_ is Cons!2119) s!1511) ((_ is Nil!2119) (t!22701 s!1511))))))

(assert (=> d!30298 (not (isEmpty!849 s!1511))))

(assert (=> d!30298 (= (removeLast!8 s!1511) lt!38403)))

(declare-fun b!128387 () Bool)

(assert (=> b!128387 (= e!73778 Nil!2119)))

(declare-fun b!128388 () Bool)

(assert (=> b!128388 (= e!73778 (Cons!2119 (h!7516 s!1511) (removeLast!8 (t!22701 s!1511))))))

(assert (= (and d!30298 c!28040) b!128387))

(assert (= (and d!30298 (not c!28040)) b!128388))

(declare-fun m!113091 () Bool)

(assert (=> d!30298 m!113091))

(declare-fun m!113093 () Bool)

(assert (=> d!30298 m!113093))

(assert (=> d!30298 m!113043))

(declare-fun m!113095 () Bool)

(assert (=> b!128388 m!113095))

(assert (=> b!128354 d!30298))

(declare-fun d!30306 () Bool)

(declare-fun lt!38404 () List!2125)

(assert (=> d!30306 (= (++!416 lt!38404 (Cons!2119 (last!12 l!3367) Nil!2119)) l!3367)))

(declare-fun e!73779 () List!2125)

(assert (=> d!30306 (= lt!38404 e!73779)))

(declare-fun c!28041 () Bool)

(assert (=> d!30306 (= c!28041 (and ((_ is Cons!2119) l!3367) ((_ is Nil!2119) (t!22701 l!3367))))))

(assert (=> d!30306 (not (isEmpty!849 l!3367))))

(assert (=> d!30306 (= (removeLast!8 l!3367) lt!38404)))

(declare-fun b!128389 () Bool)

(assert (=> b!128389 (= e!73779 Nil!2119)))

(declare-fun b!128390 () Bool)

(assert (=> b!128390 (= e!73779 (Cons!2119 (h!7516 l!3367) (removeLast!8 (t!22701 l!3367))))))

(assert (= (and d!30306 c!28041) b!128389))

(assert (= (and d!30306 (not c!28041)) b!128390))

(declare-fun m!113097 () Bool)

(assert (=> d!30306 m!113097))

(declare-fun m!113099 () Bool)

(assert (=> d!30306 m!113099))

(declare-fun m!113101 () Bool)

(assert (=> d!30306 m!113101))

(declare-fun m!113103 () Bool)

(assert (=> b!128390 m!113103))

(assert (=> b!128354 d!30306))

(declare-fun d!30308 () Bool)

(assert (=> d!30308 (= (isEmpty!849 s!1511) ((_ is Nil!2119) s!1511))))

(assert (=> b!128352 d!30308))

(declare-fun b!128395 () Bool)

(declare-fun e!73782 () List!2125)

(assert (=> b!128395 (= e!73782 s!1511)))

(declare-fun b!128396 () Bool)

(assert (=> b!128396 (= e!73782 (Cons!2119 (h!7516 p!1997) (++!416 (t!22701 p!1997) s!1511)))))

(declare-fun b!128397 () Bool)

(declare-fun res!59206 () Bool)

(declare-fun e!73783 () Bool)

(assert (=> b!128397 (=> (not res!59206) (not e!73783))))

(declare-fun lt!38407 () List!2125)

(assert (=> b!128397 (= res!59206 (= (size!1936 lt!38407) (+ (size!1936 p!1997) (size!1936 s!1511))))))

(declare-fun d!30310 () Bool)

(assert (=> d!30310 e!73783))

(declare-fun res!59205 () Bool)

(assert (=> d!30310 (=> (not res!59205) (not e!73783))))

(assert (=> d!30310 (= res!59205 (= (content!254 lt!38407) ((_ map or) (content!254 p!1997) (content!254 s!1511))))))

(assert (=> d!30310 (= lt!38407 e!73782)))

(declare-fun c!28044 () Bool)

(assert (=> d!30310 (= c!28044 ((_ is Nil!2119) p!1997))))

(assert (=> d!30310 (= (++!416 p!1997 s!1511) lt!38407)))

(declare-fun b!128398 () Bool)

(assert (=> b!128398 (= e!73783 (or (not (= s!1511 Nil!2119)) (= lt!38407 p!1997)))))

(assert (= (and d!30310 c!28044) b!128395))

(assert (= (and d!30310 (not c!28044)) b!128396))

(assert (= (and d!30310 res!59205) b!128397))

(assert (= (and b!128397 res!59206) b!128398))

(declare-fun m!113105 () Bool)

(assert (=> b!128396 m!113105))

(declare-fun m!113107 () Bool)

(assert (=> b!128397 m!113107))

(assert (=> b!128397 m!113057))

(declare-fun m!113109 () Bool)

(assert (=> b!128397 m!113109))

(declare-fun m!113111 () Bool)

(assert (=> d!30310 m!113111))

(assert (=> d!30310 m!113063))

(declare-fun m!113113 () Bool)

(assert (=> d!30310 m!113113))

(assert (=> start!13230 d!30310))

(declare-fun b!128407 () Bool)

(declare-fun e!73788 () Bool)

(declare-fun tp!69902 () Bool)

(assert (=> b!128407 (= e!73788 (and tp_is_empty!1269 tp!69902))))

(assert (=> b!128349 (= tp!69899 e!73788)))

(assert (= (and b!128349 ((_ is Cons!2119) (t!22701 s!1511))) b!128407))

(declare-fun b!128408 () Bool)

(declare-fun e!73789 () Bool)

(declare-fun tp!69903 () Bool)

(assert (=> b!128408 (= e!73789 (and tp_is_empty!1269 tp!69903))))

(assert (=> b!128350 (= tp!69898 e!73789)))

(assert (= (and b!128350 ((_ is Cons!2119) (t!22701 l!3367))) b!128408))

(declare-fun b!128409 () Bool)

(declare-fun e!73790 () Bool)

(declare-fun tp!69904 () Bool)

(assert (=> b!128409 (= e!73790 (and tp_is_empty!1269 tp!69904))))

(assert (=> b!128351 (= tp!69897 e!73790)))

(assert (= (and b!128351 ((_ is Cons!2119) (t!22701 p!1997))) b!128409))

(check-sat (not d!30298) (not d!30294) (not b!128396) (not b!128373) (not b!128390) (not d!30310) tp_is_empty!1269 (not b!128372) (not b!128408) (not b!128388) (not b!128397) (not d!30306) (not b!128409) (not b!128407))
(check-sat)
