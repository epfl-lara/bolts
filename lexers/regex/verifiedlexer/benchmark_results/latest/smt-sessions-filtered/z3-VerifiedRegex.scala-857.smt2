; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46254 () Bool)

(assert start!46254)

(declare-fun b!511454 () Bool)

(declare-fun e!305511 () Bool)

(declare-fun tp_is_empty!2419 () Bool)

(declare-fun tp!158976 () Bool)

(assert (=> b!511454 (= e!305511 (and tp_is_empty!2419 tp!158976))))

(declare-fun b!511453 () Bool)

(declare-fun e!305509 () Bool)

(declare-fun tp!158975 () Bool)

(assert (=> b!511453 (= e!305509 (and tp_is_empty!2419 tp!158975))))

(declare-fun b!511452 () Bool)

(declare-fun e!305512 () Bool)

(declare-fun tp!158977 () Bool)

(assert (=> b!511452 (= e!305512 (and tp_is_empty!2419 tp!158977))))

(declare-fun b!511451 () Bool)

(declare-fun e!305510 () Bool)

(declare-datatypes ((B!1033 0))(
  ( (B!1034 (val!1658 Int)) )
))
(declare-datatypes ((List!4631 0))(
  ( (Nil!4621) (Cons!4621 (h!10018 B!1033) (t!73149 List!4631)) )
))
(declare-fun l1!1060 () List!4631)

(declare-fun tot!35 () List!4631)

(get-info :version)

(assert (=> b!511451 (= e!305510 (and ((_ is Cons!4621) l1!1060) (= tot!35 Nil!4621)))))

(declare-fun res!217103 () Bool)

(assert (=> start!46254 (=> (not res!217103) (not e!305510))))

(declare-fun elmt!142 () B!1033)

(declare-fun l2!1029 () List!4631)

(declare-fun ++!1343 (List!4631 List!4631) List!4631)

(assert (=> start!46254 (= res!217103 (= (++!1343 (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621)) l2!1029) tot!35))))

(assert (=> start!46254 e!305510))

(assert (=> start!46254 e!305512))

(assert (=> start!46254 tp_is_empty!2419))

(assert (=> start!46254 e!305509))

(assert (=> start!46254 e!305511))

(assert (= (and start!46254 res!217103) b!511451))

(assert (= (and start!46254 ((_ is Cons!4621) l1!1060)) b!511452))

(assert (= (and start!46254 ((_ is Cons!4621) l2!1029)) b!511453))

(assert (= (and start!46254 ((_ is Cons!4621) tot!35)) b!511454))

(declare-fun m!758243 () Bool)

(assert (=> start!46254 m!758243))

(assert (=> start!46254 m!758243))

(declare-fun m!758245 () Bool)

(assert (=> start!46254 m!758245))

(check-sat (not b!511452) (not b!511453) (not b!511454) tp_is_empty!2419 (not start!46254))
(check-sat)
(get-model)

(declare-fun e!305528 () List!4631)

(declare-fun b!511485 () Bool)

(assert (=> b!511485 (= e!305528 (Cons!4621 (h!10018 (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621))) (++!1343 (t!73149 (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621))) l2!1029)))))

(declare-fun lt!212008 () List!4631)

(declare-fun e!305529 () Bool)

(declare-fun b!511487 () Bool)

(assert (=> b!511487 (= e!305529 (or (not (= l2!1029 Nil!4621)) (= lt!212008 (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621)))))))

(declare-fun d!183900 () Bool)

(assert (=> d!183900 e!305529))

(declare-fun res!217117 () Bool)

(assert (=> d!183900 (=> (not res!217117) (not e!305529))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!795 (List!4631) (InoxSet B!1033))

(assert (=> d!183900 (= res!217117 (= (content!795 lt!212008) ((_ map or) (content!795 (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621))) (content!795 l2!1029))))))

(assert (=> d!183900 (= lt!212008 e!305528)))

(declare-fun c!99452 () Bool)

(assert (=> d!183900 (= c!99452 ((_ is Nil!4621) (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621))))))

(assert (=> d!183900 (= (++!1343 (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621)) l2!1029) lt!212008)))

(declare-fun b!511484 () Bool)

(assert (=> b!511484 (= e!305528 l2!1029)))

(declare-fun b!511486 () Bool)

(declare-fun res!217116 () Bool)

(assert (=> b!511486 (=> (not res!217116) (not e!305529))))

(declare-fun size!3727 (List!4631) Int)

(assert (=> b!511486 (= res!217116 (= (size!3727 lt!212008) (+ (size!3727 (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621))) (size!3727 l2!1029))))))

(assert (= (and d!183900 c!99452) b!511484))

(assert (= (and d!183900 (not c!99452)) b!511485))

(assert (= (and d!183900 res!217117) b!511486))

(assert (= (and b!511486 res!217116) b!511487))

(declare-fun m!758275 () Bool)

(assert (=> b!511485 m!758275))

(declare-fun m!758277 () Bool)

(assert (=> d!183900 m!758277))

(assert (=> d!183900 m!758243))

(declare-fun m!758279 () Bool)

(assert (=> d!183900 m!758279))

(declare-fun m!758281 () Bool)

(assert (=> d!183900 m!758281))

(declare-fun m!758283 () Bool)

(assert (=> b!511486 m!758283))

(assert (=> b!511486 m!758243))

(declare-fun m!758285 () Bool)

(assert (=> b!511486 m!758285))

(declare-fun m!758287 () Bool)

(assert (=> b!511486 m!758287))

(assert (=> start!46254 d!183900))

(declare-fun b!511491 () Bool)

(declare-fun e!305532 () List!4631)

(assert (=> b!511491 (= e!305532 (Cons!4621 (h!10018 l1!1060) (++!1343 (t!73149 l1!1060) (Cons!4621 elmt!142 Nil!4621))))))

(declare-fun b!511493 () Bool)

(declare-fun e!305533 () Bool)

(declare-fun lt!212009 () List!4631)

(assert (=> b!511493 (= e!305533 (or (not (= (Cons!4621 elmt!142 Nil!4621) Nil!4621)) (= lt!212009 l1!1060)))))

(declare-fun d!183904 () Bool)

(assert (=> d!183904 e!305533))

(declare-fun res!217119 () Bool)

(assert (=> d!183904 (=> (not res!217119) (not e!305533))))

(assert (=> d!183904 (= res!217119 (= (content!795 lt!212009) ((_ map or) (content!795 l1!1060) (content!795 (Cons!4621 elmt!142 Nil!4621)))))))

(assert (=> d!183904 (= lt!212009 e!305532)))

(declare-fun c!99453 () Bool)

(assert (=> d!183904 (= c!99453 ((_ is Nil!4621) l1!1060))))

(assert (=> d!183904 (= (++!1343 l1!1060 (Cons!4621 elmt!142 Nil!4621)) lt!212009)))

(declare-fun b!511490 () Bool)

(assert (=> b!511490 (= e!305532 (Cons!4621 elmt!142 Nil!4621))))

(declare-fun b!511492 () Bool)

(declare-fun res!217118 () Bool)

(assert (=> b!511492 (=> (not res!217118) (not e!305533))))

(assert (=> b!511492 (= res!217118 (= (size!3727 lt!212009) (+ (size!3727 l1!1060) (size!3727 (Cons!4621 elmt!142 Nil!4621)))))))

(assert (= (and d!183904 c!99453) b!511490))

(assert (= (and d!183904 (not c!99453)) b!511491))

(assert (= (and d!183904 res!217119) b!511492))

(assert (= (and b!511492 res!217118) b!511493))

(declare-fun m!758289 () Bool)

(assert (=> b!511491 m!758289))

(declare-fun m!758291 () Bool)

(assert (=> d!183904 m!758291))

(declare-fun m!758293 () Bool)

(assert (=> d!183904 m!758293))

(declare-fun m!758295 () Bool)

(assert (=> d!183904 m!758295))

(declare-fun m!758297 () Bool)

(assert (=> b!511492 m!758297))

(declare-fun m!758299 () Bool)

(assert (=> b!511492 m!758299))

(declare-fun m!758301 () Bool)

(assert (=> b!511492 m!758301))

(assert (=> start!46254 d!183904))

(declare-fun b!511498 () Bool)

(declare-fun e!305536 () Bool)

(declare-fun tp!158985 () Bool)

(assert (=> b!511498 (= e!305536 (and tp_is_empty!2419 tp!158985))))

(assert (=> b!511452 (= tp!158977 e!305536)))

(assert (= (and b!511452 ((_ is Cons!4621) (t!73149 l1!1060))) b!511498))

(declare-fun b!511499 () Bool)

(declare-fun e!305537 () Bool)

(declare-fun tp!158986 () Bool)

(assert (=> b!511499 (= e!305537 (and tp_is_empty!2419 tp!158986))))

(assert (=> b!511453 (= tp!158975 e!305537)))

(assert (= (and b!511453 ((_ is Cons!4621) (t!73149 l2!1029))) b!511499))

(declare-fun b!511500 () Bool)

(declare-fun e!305538 () Bool)

(declare-fun tp!158987 () Bool)

(assert (=> b!511500 (= e!305538 (and tp_is_empty!2419 tp!158987))))

(assert (=> b!511454 (= tp!158976 e!305538)))

(assert (= (and b!511454 ((_ is Cons!4621) (t!73149 tot!35))) b!511500))

(check-sat (not d!183904) (not b!511500) (not b!511492) tp_is_empty!2419 (not b!511499) (not b!511491) (not b!511486) (not b!511498) (not d!183900) (not b!511485))
(check-sat)
