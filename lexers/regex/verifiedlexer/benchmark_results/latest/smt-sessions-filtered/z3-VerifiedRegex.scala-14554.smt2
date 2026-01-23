; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755232 () Bool)

(assert start!755232)

(declare-fun b!8023050 () Bool)

(declare-fun e!4726300 () Bool)

(declare-datatypes ((B!4233 0))(
  ( (B!4234 (val!32506 Int)) )
))
(declare-datatypes ((List!75018 0))(
  ( (Nil!74894) (Cons!74894 (h!81342 B!4233) (t!390761 List!75018)) )
))
(declare-fun p1!179 () List!75018)

(declare-fun lt!2720337 () List!75018)

(assert (=> b!8023050 (= e!4726300 (not (= (t!390761 p1!179) lt!2720337)))))

(declare-fun res!3172667 () Bool)

(declare-fun e!4726297 () Bool)

(assert (=> start!755232 (=> (not res!3172667) (not e!4726297))))

(declare-fun l!3411 () List!75018)

(declare-fun isPrefix!6825 (List!75018 List!75018) Bool)

(assert (=> start!755232 (= res!3172667 (isPrefix!6825 p1!179 l!3411))))

(assert (=> start!755232 e!4726297))

(declare-fun e!4726298 () Bool)

(assert (=> start!755232 e!4726298))

(declare-fun e!4726295 () Bool)

(assert (=> start!755232 e!4726295))

(declare-fun e!4726301 () Bool)

(assert (=> start!755232 e!4726301))

(declare-fun e!4726296 () Bool)

(assert (=> start!755232 e!4726296))

(declare-fun e!4726299 () Bool)

(assert (=> start!755232 e!4726299))

(declare-fun b!8023051 () Bool)

(declare-fun res!3172666 () Bool)

(assert (=> b!8023051 (=> (not res!3172666) (not e!4726297))))

(declare-fun s2!455 () List!75018)

(declare-fun p2!179 () List!75018)

(declare-fun ++!18562 (List!75018 List!75018) List!75018)

(assert (=> b!8023051 (= res!3172666 (= (++!18562 p2!179 s2!455) l!3411))))

(declare-fun b!8023052 () Bool)

(declare-fun res!3172668 () Bool)

(assert (=> b!8023052 (=> (not res!3172668) (not e!4726297))))

(declare-fun s1!490 () List!75018)

(assert (=> b!8023052 (= res!3172668 (= (++!18562 p1!179 s1!490) l!3411))))

(declare-fun b!8023053 () Bool)

(declare-fun res!3172663 () Bool)

(assert (=> b!8023053 (=> (not res!3172663) (not e!4726300))))

(declare-fun lt!2720338 () List!75018)

(assert (=> b!8023053 (= res!3172663 (isPrefix!6825 lt!2720337 lt!2720338))))

(declare-fun b!8023054 () Bool)

(declare-fun res!3172664 () Bool)

(assert (=> b!8023054 (=> (not res!3172664) (not e!4726297))))

(get-info :version)

(assert (=> b!8023054 (= res!3172664 (and (= p1!179 p2!179) ((_ is Cons!74894) p1!179)))))

(declare-fun b!8023055 () Bool)

(declare-fun tp_is_empty!54121 () Bool)

(declare-fun tp!2401143 () Bool)

(assert (=> b!8023055 (= e!4726296 (and tp_is_empty!54121 tp!2401143))))

(declare-fun b!8023056 () Bool)

(declare-fun tp!2401142 () Bool)

(assert (=> b!8023056 (= e!4726298 (and tp_is_empty!54121 tp!2401142))))

(declare-fun b!8023057 () Bool)

(declare-fun res!3172661 () Bool)

(assert (=> b!8023057 (=> (not res!3172661) (not e!4726300))))

(assert (=> b!8023057 (= res!3172661 (= (++!18562 (t!390761 p1!179) s1!490) lt!2720338))))

(declare-fun b!8023058 () Bool)

(declare-fun res!3172660 () Bool)

(assert (=> b!8023058 (=> (not res!3172660) (not e!4726300))))

(assert (=> b!8023058 (= res!3172660 (= (++!18562 lt!2720337 s2!455) lt!2720338))))

(declare-fun b!8023059 () Bool)

(declare-fun res!3172665 () Bool)

(assert (=> b!8023059 (=> (not res!3172665) (not e!4726297))))

(assert (=> b!8023059 (= res!3172665 (isPrefix!6825 p2!179 l!3411))))

(declare-fun b!8023060 () Bool)

(assert (=> b!8023060 (= e!4726297 e!4726300)))

(declare-fun res!3172662 () Bool)

(assert (=> b!8023060 (=> (not res!3172662) (not e!4726300))))

(assert (=> b!8023060 (= res!3172662 (isPrefix!6825 (t!390761 p1!179) lt!2720338))))

(declare-fun tail!15963 (List!75018) List!75018)

(assert (=> b!8023060 (= lt!2720338 (tail!15963 l!3411))))

(assert (=> b!8023060 (= lt!2720337 (tail!15963 p2!179))))

(declare-fun b!8023061 () Bool)

(declare-fun tp!2401145 () Bool)

(assert (=> b!8023061 (= e!4726301 (and tp_is_empty!54121 tp!2401145))))

(declare-fun b!8023062 () Bool)

(declare-fun tp!2401141 () Bool)

(assert (=> b!8023062 (= e!4726299 (and tp_is_empty!54121 tp!2401141))))

(declare-fun b!8023063 () Bool)

(declare-fun tp!2401144 () Bool)

(assert (=> b!8023063 (= e!4726295 (and tp_is_empty!54121 tp!2401144))))

(assert (= (and start!755232 res!3172667) b!8023059))

(assert (= (and b!8023059 res!3172665) b!8023052))

(assert (= (and b!8023052 res!3172668) b!8023051))

(assert (= (and b!8023051 res!3172666) b!8023054))

(assert (= (and b!8023054 res!3172664) b!8023060))

(assert (= (and b!8023060 res!3172662) b!8023053))

(assert (= (and b!8023053 res!3172663) b!8023057))

(assert (= (and b!8023057 res!3172661) b!8023058))

(assert (= (and b!8023058 res!3172660) b!8023050))

(assert (= (and start!755232 ((_ is Cons!74894) p2!179)) b!8023056))

(assert (= (and start!755232 ((_ is Cons!74894) s2!455)) b!8023063))

(assert (= (and start!755232 ((_ is Cons!74894) l!3411)) b!8023061))

(assert (= (and start!755232 ((_ is Cons!74894) p1!179)) b!8023055))

(assert (= (and start!755232 ((_ is Cons!74894) s1!490)) b!8023062))

(declare-fun m!8385750 () Bool)

(assert (=> b!8023053 m!8385750))

(declare-fun m!8385752 () Bool)

(assert (=> b!8023051 m!8385752))

(declare-fun m!8385754 () Bool)

(assert (=> b!8023057 m!8385754))

(declare-fun m!8385756 () Bool)

(assert (=> b!8023059 m!8385756))

(declare-fun m!8385758 () Bool)

(assert (=> b!8023052 m!8385758))

(declare-fun m!8385760 () Bool)

(assert (=> start!755232 m!8385760))

(declare-fun m!8385762 () Bool)

(assert (=> b!8023060 m!8385762))

(declare-fun m!8385764 () Bool)

(assert (=> b!8023060 m!8385764))

(declare-fun m!8385766 () Bool)

(assert (=> b!8023060 m!8385766))

(declare-fun m!8385768 () Bool)

(assert (=> b!8023058 m!8385768))

(check-sat (not b!8023053) tp_is_empty!54121 (not b!8023052) (not b!8023059) (not b!8023058) (not b!8023051) (not b!8023057) (not b!8023056) (not b!8023060) (not start!755232) (not b!8023061) (not b!8023063) (not b!8023062) (not b!8023055))
(check-sat)
(get-model)

(declare-fun b!8023079 () Bool)

(declare-fun e!4726312 () Bool)

(declare-fun size!43674 (List!75018) Int)

(assert (=> b!8023079 (= e!4726312 (>= (size!43674 l!3411) (size!43674 p1!179)))))

(declare-fun b!8023076 () Bool)

(declare-fun e!4726311 () Bool)

(declare-fun e!4726310 () Bool)

(assert (=> b!8023076 (= e!4726311 e!4726310)))

(declare-fun res!3172678 () Bool)

(assert (=> b!8023076 (=> (not res!3172678) (not e!4726310))))

(assert (=> b!8023076 (= res!3172678 (not ((_ is Nil!74894) l!3411)))))

(declare-fun b!8023077 () Bool)

(declare-fun res!3172677 () Bool)

(assert (=> b!8023077 (=> (not res!3172677) (not e!4726310))))

(declare-fun head!16425 (List!75018) B!4233)

(assert (=> b!8023077 (= res!3172677 (= (head!16425 p1!179) (head!16425 l!3411)))))

(declare-fun d!2392397 () Bool)

(assert (=> d!2392397 e!4726312))

(declare-fun res!3172679 () Bool)

(assert (=> d!2392397 (=> res!3172679 e!4726312)))

(declare-fun lt!2720343 () Bool)

(assert (=> d!2392397 (= res!3172679 (not lt!2720343))))

(assert (=> d!2392397 (= lt!2720343 e!4726311)))

(declare-fun res!3172680 () Bool)

(assert (=> d!2392397 (=> res!3172680 e!4726311)))

(assert (=> d!2392397 (= res!3172680 ((_ is Nil!74894) p1!179))))

(assert (=> d!2392397 (= (isPrefix!6825 p1!179 l!3411) lt!2720343)))

(declare-fun b!8023078 () Bool)

(assert (=> b!8023078 (= e!4726310 (isPrefix!6825 (tail!15963 p1!179) (tail!15963 l!3411)))))

(assert (= (and d!2392397 (not res!3172680)) b!8023076))

(assert (= (and b!8023076 res!3172678) b!8023077))

(assert (= (and b!8023077 res!3172677) b!8023078))

(assert (= (and d!2392397 (not res!3172679)) b!8023079))

(declare-fun m!8385770 () Bool)

(assert (=> b!8023079 m!8385770))

(declare-fun m!8385772 () Bool)

(assert (=> b!8023079 m!8385772))

(declare-fun m!8385774 () Bool)

(assert (=> b!8023077 m!8385774))

(declare-fun m!8385776 () Bool)

(assert (=> b!8023077 m!8385776))

(declare-fun m!8385778 () Bool)

(assert (=> b!8023078 m!8385778))

(assert (=> b!8023078 m!8385764))

(assert (=> b!8023078 m!8385778))

(assert (=> b!8023078 m!8385764))

(declare-fun m!8385780 () Bool)

(assert (=> b!8023078 m!8385780))

(assert (=> start!755232 d!2392397))

(declare-fun b!8023105 () Bool)

(declare-fun e!4726327 () List!75018)

(assert (=> b!8023105 (= e!4726327 (Cons!74894 (h!81342 p2!179) (++!18562 (t!390761 p2!179) s2!455)))))

(declare-fun d!2392401 () Bool)

(declare-fun e!4726328 () Bool)

(assert (=> d!2392401 e!4726328))

(declare-fun res!3172699 () Bool)

(assert (=> d!2392401 (=> (not res!3172699) (not e!4726328))))

(declare-fun lt!2720349 () List!75018)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15951 (List!75018) (InoxSet B!4233))

(assert (=> d!2392401 (= res!3172699 (= (content!15951 lt!2720349) ((_ map or) (content!15951 p2!179) (content!15951 s2!455))))))

(assert (=> d!2392401 (= lt!2720349 e!4726327)))

(declare-fun c!1472275 () Bool)

(assert (=> d!2392401 (= c!1472275 ((_ is Nil!74894) p2!179))))

(assert (=> d!2392401 (= (++!18562 p2!179 s2!455) lt!2720349)))

(declare-fun b!8023104 () Bool)

(assert (=> b!8023104 (= e!4726327 s2!455)))

(declare-fun b!8023106 () Bool)

(declare-fun res!3172700 () Bool)

(assert (=> b!8023106 (=> (not res!3172700) (not e!4726328))))

(assert (=> b!8023106 (= res!3172700 (= (size!43674 lt!2720349) (+ (size!43674 p2!179) (size!43674 s2!455))))))

(declare-fun b!8023107 () Bool)

(assert (=> b!8023107 (= e!4726328 (or (not (= s2!455 Nil!74894)) (= lt!2720349 p2!179)))))

(assert (= (and d!2392401 c!1472275) b!8023104))

(assert (= (and d!2392401 (not c!1472275)) b!8023105))

(assert (= (and d!2392401 res!3172699) b!8023106))

(assert (= (and b!8023106 res!3172700) b!8023107))

(declare-fun m!8385796 () Bool)

(assert (=> b!8023105 m!8385796))

(declare-fun m!8385798 () Bool)

(assert (=> d!2392401 m!8385798))

(declare-fun m!8385800 () Bool)

(assert (=> d!2392401 m!8385800))

(declare-fun m!8385802 () Bool)

(assert (=> d!2392401 m!8385802))

(declare-fun m!8385804 () Bool)

(assert (=> b!8023106 m!8385804))

(declare-fun m!8385806 () Bool)

(assert (=> b!8023106 m!8385806))

(declare-fun m!8385808 () Bool)

(assert (=> b!8023106 m!8385808))

(assert (=> b!8023051 d!2392401))

(declare-fun b!8023111 () Bool)

(declare-fun e!4726331 () Bool)

(assert (=> b!8023111 (= e!4726331 (>= (size!43674 lt!2720338) (size!43674 (t!390761 p1!179))))))

(declare-fun b!8023108 () Bool)

(declare-fun e!4726330 () Bool)

(declare-fun e!4726329 () Bool)

(assert (=> b!8023108 (= e!4726330 e!4726329)))

(declare-fun res!3172702 () Bool)

(assert (=> b!8023108 (=> (not res!3172702) (not e!4726329))))

(assert (=> b!8023108 (= res!3172702 (not ((_ is Nil!74894) lt!2720338)))))

(declare-fun b!8023109 () Bool)

(declare-fun res!3172701 () Bool)

(assert (=> b!8023109 (=> (not res!3172701) (not e!4726329))))

(assert (=> b!8023109 (= res!3172701 (= (head!16425 (t!390761 p1!179)) (head!16425 lt!2720338)))))

(declare-fun d!2392405 () Bool)

(assert (=> d!2392405 e!4726331))

(declare-fun res!3172703 () Bool)

(assert (=> d!2392405 (=> res!3172703 e!4726331)))

(declare-fun lt!2720350 () Bool)

(assert (=> d!2392405 (= res!3172703 (not lt!2720350))))

(assert (=> d!2392405 (= lt!2720350 e!4726330)))

(declare-fun res!3172704 () Bool)

(assert (=> d!2392405 (=> res!3172704 e!4726330)))

(assert (=> d!2392405 (= res!3172704 ((_ is Nil!74894) (t!390761 p1!179)))))

(assert (=> d!2392405 (= (isPrefix!6825 (t!390761 p1!179) lt!2720338) lt!2720350)))

(declare-fun b!8023110 () Bool)

(assert (=> b!8023110 (= e!4726329 (isPrefix!6825 (tail!15963 (t!390761 p1!179)) (tail!15963 lt!2720338)))))

(assert (= (and d!2392405 (not res!3172704)) b!8023108))

(assert (= (and b!8023108 res!3172702) b!8023109))

(assert (= (and b!8023109 res!3172701) b!8023110))

(assert (= (and d!2392405 (not res!3172703)) b!8023111))

(declare-fun m!8385810 () Bool)

(assert (=> b!8023111 m!8385810))

(declare-fun m!8385812 () Bool)

(assert (=> b!8023111 m!8385812))

(declare-fun m!8385814 () Bool)

(assert (=> b!8023109 m!8385814))

(declare-fun m!8385816 () Bool)

(assert (=> b!8023109 m!8385816))

(declare-fun m!8385818 () Bool)

(assert (=> b!8023110 m!8385818))

(declare-fun m!8385820 () Bool)

(assert (=> b!8023110 m!8385820))

(assert (=> b!8023110 m!8385818))

(assert (=> b!8023110 m!8385820))

(declare-fun m!8385822 () Bool)

(assert (=> b!8023110 m!8385822))

(assert (=> b!8023060 d!2392405))

(declare-fun d!2392407 () Bool)

(assert (=> d!2392407 (= (tail!15963 l!3411) (t!390761 l!3411))))

(assert (=> b!8023060 d!2392407))

(declare-fun d!2392409 () Bool)

(assert (=> d!2392409 (= (tail!15963 p2!179) (t!390761 p2!179))))

(assert (=> b!8023060 d!2392409))

(declare-fun b!8023119 () Bool)

(declare-fun e!4726337 () Bool)

(assert (=> b!8023119 (= e!4726337 (>= (size!43674 lt!2720338) (size!43674 lt!2720337)))))

(declare-fun b!8023116 () Bool)

(declare-fun e!4726336 () Bool)

(declare-fun e!4726335 () Bool)

(assert (=> b!8023116 (= e!4726336 e!4726335)))

(declare-fun res!3172710 () Bool)

(assert (=> b!8023116 (=> (not res!3172710) (not e!4726335))))

(assert (=> b!8023116 (= res!3172710 (not ((_ is Nil!74894) lt!2720338)))))

(declare-fun b!8023117 () Bool)

(declare-fun res!3172709 () Bool)

(assert (=> b!8023117 (=> (not res!3172709) (not e!4726335))))

(assert (=> b!8023117 (= res!3172709 (= (head!16425 lt!2720337) (head!16425 lt!2720338)))))

(declare-fun d!2392411 () Bool)

(assert (=> d!2392411 e!4726337))

(declare-fun res!3172711 () Bool)

(assert (=> d!2392411 (=> res!3172711 e!4726337)))

(declare-fun lt!2720352 () Bool)

(assert (=> d!2392411 (= res!3172711 (not lt!2720352))))

(assert (=> d!2392411 (= lt!2720352 e!4726336)))

(declare-fun res!3172712 () Bool)

(assert (=> d!2392411 (=> res!3172712 e!4726336)))

(assert (=> d!2392411 (= res!3172712 ((_ is Nil!74894) lt!2720337))))

(assert (=> d!2392411 (= (isPrefix!6825 lt!2720337 lt!2720338) lt!2720352)))

(declare-fun b!8023118 () Bool)

(assert (=> b!8023118 (= e!4726335 (isPrefix!6825 (tail!15963 lt!2720337) (tail!15963 lt!2720338)))))

(assert (= (and d!2392411 (not res!3172712)) b!8023116))

(assert (= (and b!8023116 res!3172710) b!8023117))

(assert (= (and b!8023117 res!3172709) b!8023118))

(assert (= (and d!2392411 (not res!3172711)) b!8023119))

(assert (=> b!8023119 m!8385810))

(declare-fun m!8385836 () Bool)

(assert (=> b!8023119 m!8385836))

(declare-fun m!8385838 () Bool)

(assert (=> b!8023117 m!8385838))

(assert (=> b!8023117 m!8385816))

(declare-fun m!8385840 () Bool)

(assert (=> b!8023118 m!8385840))

(assert (=> b!8023118 m!8385820))

(assert (=> b!8023118 m!8385840))

(assert (=> b!8023118 m!8385820))

(declare-fun m!8385842 () Bool)

(assert (=> b!8023118 m!8385842))

(assert (=> b!8023053 d!2392411))

(declare-fun b!8023127 () Bool)

(declare-fun e!4726343 () Bool)

(assert (=> b!8023127 (= e!4726343 (>= (size!43674 l!3411) (size!43674 p2!179)))))

(declare-fun b!8023124 () Bool)

(declare-fun e!4726342 () Bool)

(declare-fun e!4726341 () Bool)

(assert (=> b!8023124 (= e!4726342 e!4726341)))

(declare-fun res!3172718 () Bool)

(assert (=> b!8023124 (=> (not res!3172718) (not e!4726341))))

(assert (=> b!8023124 (= res!3172718 (not ((_ is Nil!74894) l!3411)))))

(declare-fun b!8023125 () Bool)

(declare-fun res!3172717 () Bool)

(assert (=> b!8023125 (=> (not res!3172717) (not e!4726341))))

(assert (=> b!8023125 (= res!3172717 (= (head!16425 p2!179) (head!16425 l!3411)))))

(declare-fun d!2392415 () Bool)

(assert (=> d!2392415 e!4726343))

(declare-fun res!3172719 () Bool)

(assert (=> d!2392415 (=> res!3172719 e!4726343)))

(declare-fun lt!2720354 () Bool)

(assert (=> d!2392415 (= res!3172719 (not lt!2720354))))

(assert (=> d!2392415 (= lt!2720354 e!4726342)))

(declare-fun res!3172720 () Bool)

(assert (=> d!2392415 (=> res!3172720 e!4726342)))

(assert (=> d!2392415 (= res!3172720 ((_ is Nil!74894) p2!179))))

(assert (=> d!2392415 (= (isPrefix!6825 p2!179 l!3411) lt!2720354)))

(declare-fun b!8023126 () Bool)

(assert (=> b!8023126 (= e!4726341 (isPrefix!6825 (tail!15963 p2!179) (tail!15963 l!3411)))))

(assert (= (and d!2392415 (not res!3172720)) b!8023124))

(assert (= (and b!8023124 res!3172718) b!8023125))

(assert (= (and b!8023125 res!3172717) b!8023126))

(assert (= (and d!2392415 (not res!3172719)) b!8023127))

(assert (=> b!8023127 m!8385770))

(assert (=> b!8023127 m!8385806))

(declare-fun m!8385854 () Bool)

(assert (=> b!8023125 m!8385854))

(assert (=> b!8023125 m!8385776))

(assert (=> b!8023126 m!8385766))

(assert (=> b!8023126 m!8385764))

(assert (=> b!8023126 m!8385766))

(assert (=> b!8023126 m!8385764))

(declare-fun m!8385856 () Bool)

(assert (=> b!8023126 m!8385856))

(assert (=> b!8023059 d!2392415))

(declare-fun b!8023133 () Bool)

(declare-fun e!4726347 () List!75018)

(assert (=> b!8023133 (= e!4726347 (Cons!74894 (h!81342 p1!179) (++!18562 (t!390761 p1!179) s1!490)))))

(declare-fun d!2392419 () Bool)

(declare-fun e!4726348 () Bool)

(assert (=> d!2392419 e!4726348))

(declare-fun res!3172725 () Bool)

(assert (=> d!2392419 (=> (not res!3172725) (not e!4726348))))

(declare-fun lt!2720356 () List!75018)

(assert (=> d!2392419 (= res!3172725 (= (content!15951 lt!2720356) ((_ map or) (content!15951 p1!179) (content!15951 s1!490))))))

(assert (=> d!2392419 (= lt!2720356 e!4726347)))

(declare-fun c!1472276 () Bool)

(assert (=> d!2392419 (= c!1472276 ((_ is Nil!74894) p1!179))))

(assert (=> d!2392419 (= (++!18562 p1!179 s1!490) lt!2720356)))

(declare-fun b!8023132 () Bool)

(assert (=> b!8023132 (= e!4726347 s1!490)))

(declare-fun b!8023134 () Bool)

(declare-fun res!3172726 () Bool)

(assert (=> b!8023134 (=> (not res!3172726) (not e!4726348))))

(assert (=> b!8023134 (= res!3172726 (= (size!43674 lt!2720356) (+ (size!43674 p1!179) (size!43674 s1!490))))))

(declare-fun b!8023135 () Bool)

(assert (=> b!8023135 (= e!4726348 (or (not (= s1!490 Nil!74894)) (= lt!2720356 p1!179)))))

(assert (= (and d!2392419 c!1472276) b!8023132))

(assert (= (and d!2392419 (not c!1472276)) b!8023133))

(assert (= (and d!2392419 res!3172725) b!8023134))

(assert (= (and b!8023134 res!3172726) b!8023135))

(assert (=> b!8023133 m!8385754))

(declare-fun m!8385866 () Bool)

(assert (=> d!2392419 m!8385866))

(declare-fun m!8385868 () Bool)

(assert (=> d!2392419 m!8385868))

(declare-fun m!8385870 () Bool)

(assert (=> d!2392419 m!8385870))

(declare-fun m!8385872 () Bool)

(assert (=> b!8023134 m!8385872))

(assert (=> b!8023134 m!8385772))

(declare-fun m!8385874 () Bool)

(assert (=> b!8023134 m!8385874))

(assert (=> b!8023052 d!2392419))

(declare-fun b!8023141 () Bool)

(declare-fun e!4726351 () List!75018)

(assert (=> b!8023141 (= e!4726351 (Cons!74894 (h!81342 (t!390761 p1!179)) (++!18562 (t!390761 (t!390761 p1!179)) s1!490)))))

(declare-fun d!2392423 () Bool)

(declare-fun e!4726352 () Bool)

(assert (=> d!2392423 e!4726352))

(declare-fun res!3172729 () Bool)

(assert (=> d!2392423 (=> (not res!3172729) (not e!4726352))))

(declare-fun lt!2720358 () List!75018)

(assert (=> d!2392423 (= res!3172729 (= (content!15951 lt!2720358) ((_ map or) (content!15951 (t!390761 p1!179)) (content!15951 s1!490))))))

(assert (=> d!2392423 (= lt!2720358 e!4726351)))

(declare-fun c!1472278 () Bool)

(assert (=> d!2392423 (= c!1472278 ((_ is Nil!74894) (t!390761 p1!179)))))

(assert (=> d!2392423 (= (++!18562 (t!390761 p1!179) s1!490) lt!2720358)))

(declare-fun b!8023140 () Bool)

(assert (=> b!8023140 (= e!4726351 s1!490)))

(declare-fun b!8023142 () Bool)

(declare-fun res!3172730 () Bool)

(assert (=> b!8023142 (=> (not res!3172730) (not e!4726352))))

(assert (=> b!8023142 (= res!3172730 (= (size!43674 lt!2720358) (+ (size!43674 (t!390761 p1!179)) (size!43674 s1!490))))))

(declare-fun b!8023143 () Bool)

(assert (=> b!8023143 (= e!4726352 (or (not (= s1!490 Nil!74894)) (= lt!2720358 (t!390761 p1!179))))))

(assert (= (and d!2392423 c!1472278) b!8023140))

(assert (= (and d!2392423 (not c!1472278)) b!8023141))

(assert (= (and d!2392423 res!3172729) b!8023142))

(assert (= (and b!8023142 res!3172730) b!8023143))

(declare-fun m!8385884 () Bool)

(assert (=> b!8023141 m!8385884))

(declare-fun m!8385886 () Bool)

(assert (=> d!2392423 m!8385886))

(declare-fun m!8385888 () Bool)

(assert (=> d!2392423 m!8385888))

(assert (=> d!2392423 m!8385870))

(declare-fun m!8385890 () Bool)

(assert (=> b!8023142 m!8385890))

(assert (=> b!8023142 m!8385812))

(assert (=> b!8023142 m!8385874))

(assert (=> b!8023057 d!2392423))

(declare-fun b!8023149 () Bool)

(declare-fun e!4726356 () List!75018)

(assert (=> b!8023149 (= e!4726356 (Cons!74894 (h!81342 lt!2720337) (++!18562 (t!390761 lt!2720337) s2!455)))))

(declare-fun d!2392427 () Bool)

(declare-fun e!4726357 () Bool)

(assert (=> d!2392427 e!4726357))

(declare-fun res!3172735 () Bool)

(assert (=> d!2392427 (=> (not res!3172735) (not e!4726357))))

(declare-fun lt!2720360 () List!75018)

(assert (=> d!2392427 (= res!3172735 (= (content!15951 lt!2720360) ((_ map or) (content!15951 lt!2720337) (content!15951 s2!455))))))

(assert (=> d!2392427 (= lt!2720360 e!4726356)))

(declare-fun c!1472279 () Bool)

(assert (=> d!2392427 (= c!1472279 ((_ is Nil!74894) lt!2720337))))

(assert (=> d!2392427 (= (++!18562 lt!2720337 s2!455) lt!2720360)))

(declare-fun b!8023148 () Bool)

(assert (=> b!8023148 (= e!4726356 s2!455)))

(declare-fun b!8023150 () Bool)

(declare-fun res!3172736 () Bool)

(assert (=> b!8023150 (=> (not res!3172736) (not e!4726357))))

(assert (=> b!8023150 (= res!3172736 (= (size!43674 lt!2720360) (+ (size!43674 lt!2720337) (size!43674 s2!455))))))

(declare-fun b!8023151 () Bool)

(assert (=> b!8023151 (= e!4726357 (or (not (= s2!455 Nil!74894)) (= lt!2720360 lt!2720337)))))

(assert (= (and d!2392427 c!1472279) b!8023148))

(assert (= (and d!2392427 (not c!1472279)) b!8023149))

(assert (= (and d!2392427 res!3172735) b!8023150))

(assert (= (and b!8023150 res!3172736) b!8023151))

(declare-fun m!8385900 () Bool)

(assert (=> b!8023149 m!8385900))

(declare-fun m!8385902 () Bool)

(assert (=> d!2392427 m!8385902))

(declare-fun m!8385904 () Bool)

(assert (=> d!2392427 m!8385904))

(assert (=> d!2392427 m!8385802))

(declare-fun m!8385906 () Bool)

(assert (=> b!8023150 m!8385906))

(assert (=> b!8023150 m!8385836))

(assert (=> b!8023150 m!8385808))

(assert (=> b!8023058 d!2392427))

(declare-fun b!8023160 () Bool)

(declare-fun e!4726362 () Bool)

(declare-fun tp!2401148 () Bool)

(assert (=> b!8023160 (= e!4726362 (and tp_is_empty!54121 tp!2401148))))

(assert (=> b!8023056 (= tp!2401142 e!4726362)))

(assert (= (and b!8023056 ((_ is Cons!74894) (t!390761 p2!179))) b!8023160))

(declare-fun b!8023161 () Bool)

(declare-fun e!4726363 () Bool)

(declare-fun tp!2401149 () Bool)

(assert (=> b!8023161 (= e!4726363 (and tp_is_empty!54121 tp!2401149))))

(assert (=> b!8023061 (= tp!2401145 e!4726363)))

(assert (= (and b!8023061 ((_ is Cons!74894) (t!390761 l!3411))) b!8023161))

(declare-fun b!8023162 () Bool)

(declare-fun e!4726364 () Bool)

(declare-fun tp!2401150 () Bool)

(assert (=> b!8023162 (= e!4726364 (and tp_is_empty!54121 tp!2401150))))

(assert (=> b!8023062 (= tp!2401141 e!4726364)))

(assert (= (and b!8023062 ((_ is Cons!74894) (t!390761 s1!490))) b!8023162))

(declare-fun b!8023163 () Bool)

(declare-fun e!4726365 () Bool)

(declare-fun tp!2401151 () Bool)

(assert (=> b!8023163 (= e!4726365 (and tp_is_empty!54121 tp!2401151))))

(assert (=> b!8023055 (= tp!2401143 e!4726365)))

(assert (= (and b!8023055 ((_ is Cons!74894) (t!390761 p1!179))) b!8023163))

(declare-fun b!8023164 () Bool)

(declare-fun e!4726366 () Bool)

(declare-fun tp!2401152 () Bool)

(assert (=> b!8023164 (= e!4726366 (and tp_is_empty!54121 tp!2401152))))

(assert (=> b!8023063 (= tp!2401144 e!4726366)))

(assert (= (and b!8023063 ((_ is Cons!74894) (t!390761 s2!455))) b!8023164))

(check-sat (not b!8023118) tp_is_empty!54121 (not b!8023142) (not b!8023164) (not b!8023125) (not d!2392427) (not d!2392423) (not b!8023162) (not b!8023110) (not b!8023078) (not b!8023150) (not b!8023077) (not b!8023141) (not b!8023127) (not b!8023149) (not d!2392401) (not b!8023133) (not b!8023117) (not b!8023163) (not b!8023079) (not b!8023126) (not b!8023161) (not b!8023119) (not b!8023111) (not b!8023160) (not b!8023109) (not b!8023105) (not b!8023134) (not d!2392419) (not b!8023106))
(check-sat)
