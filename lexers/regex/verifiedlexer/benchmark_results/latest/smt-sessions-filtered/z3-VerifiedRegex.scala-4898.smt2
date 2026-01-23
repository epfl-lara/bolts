; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251008 () Bool)

(assert start!251008)

(declare-fun b!2590979 () Bool)

(declare-fun res!1089459 () Bool)

(declare-fun e!1634440 () Bool)

(assert (=> b!2590979 (=> res!1089459 e!1634440)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!2013 0))(
  ( (B!2014 (val!9474 Int)) )
))
(declare-fun lt!911160 () (InoxSet B!2013))

(declare-fun lt!911157 () Int)

(declare-datatypes ((List!29907 0))(
  ( (Nil!29807) (Cons!29807 (h!35227 B!2013) (t!212920 List!29907)) )
))
(declare-fun size!23120 (List!29907) Int)

(declare-fun toList!1758 ((InoxSet B!2013)) List!29907)

(assert (=> b!2590979 (= res!1089459 (>= (size!23120 (toList!1758 lt!911160)) lt!911157))))

(declare-fun b!2590980 () Bool)

(declare-fun e!1634438 () Bool)

(declare-fun e!1634437 () Bool)

(assert (=> b!2590980 (= e!1634438 (not e!1634437))))

(declare-fun res!1089452 () Bool)

(assert (=> b!2590980 (=> res!1089452 e!1634437)))

(declare-fun lt!911161 () Int)

(declare-fun l!3230 () List!29907)

(assert (=> b!2590980 (= res!1089452 (>= lt!911161 (size!23120 l!3230)))))

(declare-fun lt!911156 () Int)

(assert (=> b!2590980 (= lt!911161 lt!911156)))

(assert (=> b!2590980 (= lt!911156 (size!23120 (t!212920 l!3230)))))

(declare-fun lt!911159 () (InoxSet B!2013))

(assert (=> b!2590980 (= lt!911161 (size!23120 (toList!1758 lt!911159)))))

(declare-fun content!4148 (List!29907) (InoxSet B!2013))

(assert (=> b!2590980 (= lt!911159 (content!4148 (t!212920 l!3230)))))

(declare-datatypes ((Unit!43720 0))(
  ( (Unit!43721) )
))
(declare-fun lt!911158 () Unit!43720)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!48 (List!29907) Unit!43720)

(assert (=> b!2590980 (= lt!911158 (lemmaNoDuplicateThenContentToListSameSize!48 (t!212920 l!3230)))))

(declare-fun b!2590981 () Bool)

(declare-fun e!1634439 () Bool)

(declare-fun tp_is_empty!13293 () Bool)

(declare-fun tp!822668 () Bool)

(assert (=> b!2590981 (= e!1634439 (and tp_is_empty!13293 tp!822668))))

(declare-fun b!2590982 () Bool)

(declare-fun res!1089455 () Bool)

(assert (=> b!2590982 (=> (not res!1089455) (not e!1634438))))

(get-info :version)

(assert (=> b!2590982 (= res!1089455 ((_ is Cons!29807) l!3230))))

(declare-fun b!2590983 () Bool)

(declare-fun e!1634441 () Bool)

(assert (=> b!2590983 (= e!1634437 e!1634441)))

(declare-fun res!1089458 () Bool)

(assert (=> b!2590983 (=> res!1089458 e!1634441)))

(assert (=> b!2590983 (= res!1089458 (not (= (size!23120 l!3230) lt!911157)))))

(assert (=> b!2590983 (= lt!911157 (+ 1 lt!911156))))

(declare-fun b!2590984 () Bool)

(declare-fun res!1089456 () Bool)

(assert (=> b!2590984 (=> res!1089456 e!1634437)))

(assert (=> b!2590984 (= res!1089456 (select lt!911159 (h!35227 l!3230)))))

(declare-fun b!2590985 () Bool)

(declare-fun res!1089454 () Bool)

(assert (=> b!2590985 (=> res!1089454 e!1634437)))

(declare-fun contains!5357 (List!29907 B!2013) Bool)

(assert (=> b!2590985 (= res!1089454 (contains!5357 (t!212920 l!3230) (h!35227 l!3230)))))

(declare-fun res!1089457 () Bool)

(assert (=> start!251008 (=> (not res!1089457) (not e!1634438))))

(declare-fun noDuplicate!355 (List!29907) Bool)

(assert (=> start!251008 (= res!1089457 (noDuplicate!355 l!3230))))

(assert (=> start!251008 e!1634438))

(assert (=> start!251008 e!1634439))

(declare-fun b!2590986 () Bool)

(assert (=> b!2590986 (= e!1634440 (= lt!911160 (content!4148 l!3230)))))

(declare-fun b!2590987 () Bool)

(assert (=> b!2590987 (= e!1634441 e!1634440)))

(declare-fun res!1089453 () Bool)

(assert (=> b!2590987 (=> res!1089453 e!1634440)))

(assert (=> b!2590987 (= res!1089453 (not (= (content!4148 l!3230) lt!911160)))))

(assert (=> b!2590987 (= lt!911160 ((_ map or) lt!911159 (store ((as const (Array B!2013 Bool)) false) (h!35227 l!3230) true)))))

(assert (= (and start!251008 res!1089457) b!2590982))

(assert (= (and b!2590982 res!1089455) b!2590980))

(assert (= (and b!2590980 (not res!1089452)) b!2590984))

(assert (= (and b!2590984 (not res!1089456)) b!2590985))

(assert (= (and b!2590985 (not res!1089454)) b!2590983))

(assert (= (and b!2590983 (not res!1089458)) b!2590987))

(assert (= (and b!2590987 (not res!1089453)) b!2590979))

(assert (= (and b!2590979 (not res!1089459)) b!2590986))

(assert (= (and start!251008 ((_ is Cons!29807) l!3230)) b!2590981))

(declare-fun m!2927003 () Bool)

(assert (=> b!2590979 m!2927003))

(assert (=> b!2590979 m!2927003))

(declare-fun m!2927005 () Bool)

(assert (=> b!2590979 m!2927005))

(declare-fun m!2927007 () Bool)

(assert (=> start!251008 m!2927007))

(declare-fun m!2927009 () Bool)

(assert (=> b!2590980 m!2927009))

(declare-fun m!2927011 () Bool)

(assert (=> b!2590980 m!2927011))

(assert (=> b!2590980 m!2927009))

(declare-fun m!2927013 () Bool)

(assert (=> b!2590980 m!2927013))

(declare-fun m!2927015 () Bool)

(assert (=> b!2590980 m!2927015))

(declare-fun m!2927017 () Bool)

(assert (=> b!2590980 m!2927017))

(declare-fun m!2927019 () Bool)

(assert (=> b!2590980 m!2927019))

(declare-fun m!2927021 () Bool)

(assert (=> b!2590985 m!2927021))

(declare-fun m!2927023 () Bool)

(assert (=> b!2590987 m!2927023))

(declare-fun m!2927025 () Bool)

(assert (=> b!2590987 m!2927025))

(declare-fun m!2927027 () Bool)

(assert (=> b!2590984 m!2927027))

(assert (=> b!2590983 m!2927011))

(assert (=> b!2590986 m!2927023))

(check-sat (not b!2590983) (not start!251008) (not b!2590980) (not b!2590986) (not b!2590985) (not b!2590981) (not b!2590987) (not b!2590979) tp_is_empty!13293)
(check-sat)
