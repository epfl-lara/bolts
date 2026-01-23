; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13094 () Bool)

(assert start!13094)

(declare-fun b!127610 () Bool)

(declare-fun e!73301 () Bool)

(declare-fun tp_is_empty!1229 () Bool)

(declare-fun tp!69654 () Bool)

(assert (=> b!127610 (= e!73301 (and tp_is_empty!1229 tp!69654))))

(declare-fun b!127611 () Bool)

(declare-fun e!73299 () Bool)

(declare-datatypes ((B!621 0))(
  ( (B!622 (val!774 Int)) )
))
(declare-datatypes ((List!2105 0))(
  ( (Nil!2099) (Cons!2099 (h!7496 B!621) (t!22681 List!2105)) )
))
(declare-fun p!1997 () List!2105)

(declare-fun l!3367 () List!2105)

(get-info :version)

(assert (=> b!127611 (= e!73299 (and ((_ is Cons!2099) p!1997) (= l!3367 Nil!2099)))))

(declare-fun res!58898 () Bool)

(assert (=> start!13094 (=> (not res!58898) (not e!73299))))

(declare-fun s!1511 () List!2105)

(declare-fun ++!396 (List!2105 List!2105) List!2105)

(assert (=> start!13094 (= res!58898 (= (++!396 p!1997 s!1511) l!3367))))

(assert (=> start!13094 e!73299))

(declare-fun e!73298 () Bool)

(assert (=> start!13094 e!73298))

(assert (=> start!13094 e!73301))

(declare-fun e!73300 () Bool)

(assert (=> start!13094 e!73300))

(declare-fun b!127612 () Bool)

(declare-fun tp!69653 () Bool)

(assert (=> b!127612 (= e!73298 (and tp_is_empty!1229 tp!69653))))

(declare-fun b!127613 () Bool)

(declare-fun res!58897 () Bool)

(assert (=> b!127613 (=> (not res!58897) (not e!73299))))

(declare-fun isEmpty!831 (List!2105) Bool)

(assert (=> b!127613 (= res!58897 (not (isEmpty!831 s!1511)))))

(declare-fun b!127614 () Bool)

(declare-fun tp!69655 () Bool)

(assert (=> b!127614 (= e!73300 (and tp_is_empty!1229 tp!69655))))

(assert (= (and start!13094 res!58898) b!127613))

(assert (= (and b!127613 res!58897) b!127611))

(assert (= (and start!13094 ((_ is Cons!2099) p!1997)) b!127612))

(assert (= (and start!13094 ((_ is Cons!2099) s!1511)) b!127610))

(assert (= (and start!13094 ((_ is Cons!2099) l!3367)) b!127614))

(declare-fun m!112443 () Bool)

(assert (=> start!13094 m!112443))

(declare-fun m!112445 () Bool)

(assert (=> b!127613 m!112445))

(check-sat (not b!127612) (not b!127610) (not start!13094) (not b!127613) (not b!127614) tp_is_empty!1229)
(check-sat)
(get-model)

(declare-fun b!127625 () Bool)

(declare-fun res!58903 () Bool)

(declare-fun e!73307 () Bool)

(assert (=> b!127625 (=> (not res!58903) (not e!73307))))

(declare-fun lt!38242 () List!2105)

(declare-fun size!1924 (List!2105) Int)

(assert (=> b!127625 (= res!58903 (= (size!1924 lt!38242) (+ (size!1924 p!1997) (size!1924 s!1511))))))

(declare-fun b!127624 () Bool)

(declare-fun e!73306 () List!2105)

(assert (=> b!127624 (= e!73306 (Cons!2099 (h!7496 p!1997) (++!396 (t!22681 p!1997) s!1511)))))

(declare-fun b!127623 () Bool)

(assert (=> b!127623 (= e!73306 s!1511)))

(declare-fun b!127626 () Bool)

(assert (=> b!127626 (= e!73307 (or (not (= s!1511 Nil!2099)) (= lt!38242 p!1997)))))

(declare-fun d!30136 () Bool)

(assert (=> d!30136 e!73307))

(declare-fun res!58904 () Bool)

(assert (=> d!30136 (=> (not res!58904) (not e!73307))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!242 (List!2105) (InoxSet B!621))

(assert (=> d!30136 (= res!58904 (= (content!242 lt!38242) ((_ map or) (content!242 p!1997) (content!242 s!1511))))))

(assert (=> d!30136 (= lt!38242 e!73306)))

(declare-fun c!27945 () Bool)

(assert (=> d!30136 (= c!27945 ((_ is Nil!2099) p!1997))))

(assert (=> d!30136 (= (++!396 p!1997 s!1511) lt!38242)))

(assert (= (and d!30136 c!27945) b!127623))

(assert (= (and d!30136 (not c!27945)) b!127624))

(assert (= (and d!30136 res!58904) b!127625))

(assert (= (and b!127625 res!58903) b!127626))

(declare-fun m!112447 () Bool)

(assert (=> b!127625 m!112447))

(declare-fun m!112449 () Bool)

(assert (=> b!127625 m!112449))

(declare-fun m!112451 () Bool)

(assert (=> b!127625 m!112451))

(declare-fun m!112453 () Bool)

(assert (=> b!127624 m!112453))

(declare-fun m!112455 () Bool)

(assert (=> d!30136 m!112455))

(declare-fun m!112457 () Bool)

(assert (=> d!30136 m!112457))

(declare-fun m!112459 () Bool)

(assert (=> d!30136 m!112459))

(assert (=> start!13094 d!30136))

(declare-fun d!30142 () Bool)

(assert (=> d!30142 (= (isEmpty!831 s!1511) ((_ is Nil!2099) s!1511))))

(assert (=> b!127613 d!30142))

(declare-fun b!127631 () Bool)

(declare-fun e!73310 () Bool)

(declare-fun tp!69658 () Bool)

(assert (=> b!127631 (= e!73310 (and tp_is_empty!1229 tp!69658))))

(assert (=> b!127612 (= tp!69653 e!73310)))

(assert (= (and b!127612 ((_ is Cons!2099) (t!22681 p!1997))) b!127631))

(declare-fun b!127632 () Bool)

(declare-fun e!73311 () Bool)

(declare-fun tp!69659 () Bool)

(assert (=> b!127632 (= e!73311 (and tp_is_empty!1229 tp!69659))))

(assert (=> b!127610 (= tp!69654 e!73311)))

(assert (= (and b!127610 ((_ is Cons!2099) (t!22681 s!1511))) b!127632))

(declare-fun b!127633 () Bool)

(declare-fun e!73312 () Bool)

(declare-fun tp!69660 () Bool)

(assert (=> b!127633 (= e!73312 (and tp_is_empty!1229 tp!69660))))

(assert (=> b!127614 (= tp!69655 e!73312)))

(assert (= (and b!127614 ((_ is Cons!2099) (t!22681 l!3367))) b!127633))

(check-sat (not b!127624) (not b!127625) (not b!127633) tp_is_empty!1229 (not b!127631) (not b!127632) (not d!30136))
(check-sat)
