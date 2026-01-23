; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251104 () Bool)

(assert start!251104)

(declare-fun b!2591517 () Bool)

(assert (=> b!2591517 true))

(declare-fun b!2591511 () Bool)

(declare-fun e!1634832 () Bool)

(declare-fun e!1634833 () Bool)

(assert (=> b!2591511 (= e!1634832 e!1634833)))

(declare-fun res!1089784 () Bool)

(assert (=> b!2591511 (=> res!1089784 e!1634833)))

(declare-datatypes ((B!2029 0))(
  ( (B!2030 (val!9482 Int)) )
))
(declare-datatypes ((List!29915 0))(
  ( (Nil!29815) (Cons!29815 (h!35235 B!2029) (t!212928 List!29915)) )
))
(declare-fun l!3230 () List!29915)

(declare-fun lt!911515 () Int)

(declare-fun size!23128 (List!29915) Int)

(assert (=> b!2591511 (= res!1089784 (not (= (size!23128 l!3230) lt!911515)))))

(declare-fun lt!911517 () Int)

(assert (=> b!2591511 (= lt!911515 (+ 1 lt!911517))))

(declare-fun b!2591512 () Bool)

(declare-datatypes ((Unit!43741 0))(
  ( (Unit!43742) )
))
(declare-fun e!1634830 () Unit!43741)

(declare-fun Unit!43743 () Unit!43741)

(assert (=> b!2591512 (= e!1634830 Unit!43743)))

(declare-fun b!2591513 () Bool)

(declare-fun res!1089787 () Bool)

(declare-fun e!1634829 () Bool)

(assert (=> b!2591513 (=> (not res!1089787) (not e!1634829))))

(get-info :version)

(assert (=> b!2591513 (= res!1089787 ((_ is Cons!29815) l!3230))))

(declare-fun b!2591514 () Bool)

(declare-fun e!1634831 () Bool)

(declare-fun e!1634828 () Bool)

(assert (=> b!2591514 (= e!1634831 e!1634828)))

(declare-fun res!1089782 () Bool)

(assert (=> b!2591514 (=> res!1089782 e!1634828)))

(declare-fun lt!911510 () Int)

(assert (=> b!2591514 (= res!1089782 (<= lt!911510 lt!911515))))

(declare-fun lt!911512 () Unit!43741)

(assert (=> b!2591514 (= lt!911512 e!1634830)))

(declare-fun c!417772 () Bool)

(assert (=> b!2591514 (= c!417772 (< lt!911510 lt!911515))))

(declare-fun lt!911518 () List!29915)

(assert (=> b!2591514 (= lt!911510 (size!23128 lt!911518))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!911509 () (InoxSet B!2029))

(declare-fun toList!1766 ((InoxSet B!2029)) List!29915)

(assert (=> b!2591514 (= lt!911518 (toList!1766 lt!911509))))

(declare-fun b!2591516 () Bool)

(declare-fun e!1634827 () Bool)

(declare-fun tp_is_empty!13309 () Bool)

(declare-fun tp!822704 () Bool)

(assert (=> b!2591516 (= e!1634827 (and tp_is_empty!13309 tp!822704))))

(declare-fun Unit!43744 () Unit!43741)

(assert (=> b!2591517 (= e!1634830 Unit!43744)))

(declare-fun lt!911514 () Unit!43741)

(declare-fun subsetContains!44 (List!29915 List!29915) Unit!43741)

(assert (=> b!2591517 (= lt!911514 (subsetContains!44 lt!911518 l!3230))))

(declare-fun lt!911513 () Unit!43741)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!18 (List!29915 List!29915) Unit!43741)

(assert (=> b!2591517 (= lt!911513 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!18 l!3230 lt!911518))))

(declare-fun lambda!96058 () Int)

(declare-fun exists!902 (List!29915 Int) Bool)

(assert (=> b!2591517 (exists!902 l!3230 lambda!96058)))

(declare-fun lt!911508 () B!2029)

(declare-fun getWitness!528 (List!29915 Int) B!2029)

(assert (=> b!2591517 (= lt!911508 (getWitness!528 l!3230 lambda!96058))))

(assert (=> b!2591517 false))

(declare-fun b!2591518 () Bool)

(declare-fun res!1089781 () Bool)

(assert (=> b!2591518 (=> res!1089781 e!1634832)))

(declare-fun lt!911516 () (InoxSet B!2029))

(assert (=> b!2591518 (= res!1089781 (select lt!911516 (h!35235 l!3230)))))

(declare-fun b!2591519 () Bool)

(assert (=> b!2591519 (= e!1634833 e!1634831)))

(declare-fun res!1089786 () Bool)

(assert (=> b!2591519 (=> res!1089786 e!1634831)))

(declare-fun content!4156 (List!29915) (InoxSet B!2029))

(assert (=> b!2591519 (= res!1089786 (not (= (content!4156 l!3230) lt!911509)))))

(assert (=> b!2591519 (= lt!911509 ((_ map or) lt!911516 (store ((as const (Array B!2029 Bool)) false) (h!35235 l!3230) true)))))

(declare-fun res!1089780 () Bool)

(assert (=> start!251104 (=> (not res!1089780) (not e!1634829))))

(declare-fun noDuplicate!363 (List!29915) Bool)

(assert (=> start!251104 (= res!1089780 (noDuplicate!363 l!3230))))

(assert (=> start!251104 e!1634829))

(assert (=> start!251104 e!1634827))

(declare-fun b!2591515 () Bool)

(assert (=> b!2591515 (= e!1634828 (= lt!911509 (content!4156 l!3230)))))

(declare-fun b!2591520 () Bool)

(assert (=> b!2591520 (= e!1634829 (not e!1634832))))

(declare-fun res!1089785 () Bool)

(assert (=> b!2591520 (=> res!1089785 e!1634832)))

(declare-fun lt!911511 () Int)

(assert (=> b!2591520 (= res!1089785 (>= lt!911511 (size!23128 l!3230)))))

(assert (=> b!2591520 (= lt!911511 lt!911517)))

(assert (=> b!2591520 (= lt!911517 (size!23128 (t!212928 l!3230)))))

(assert (=> b!2591520 (= lt!911511 (size!23128 (toList!1766 lt!911516)))))

(assert (=> b!2591520 (= lt!911516 (content!4156 (t!212928 l!3230)))))

(declare-fun lt!911519 () Unit!43741)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!56 (List!29915) Unit!43741)

(assert (=> b!2591520 (= lt!911519 (lemmaNoDuplicateThenContentToListSameSize!56 (t!212928 l!3230)))))

(declare-fun b!2591521 () Bool)

(declare-fun res!1089783 () Bool)

(assert (=> b!2591521 (=> res!1089783 e!1634832)))

(declare-fun contains!5365 (List!29915 B!2029) Bool)

(assert (=> b!2591521 (= res!1089783 (contains!5365 (t!212928 l!3230) (h!35235 l!3230)))))

(assert (= (and start!251104 res!1089780) b!2591513))

(assert (= (and b!2591513 res!1089787) b!2591520))

(assert (= (and b!2591520 (not res!1089785)) b!2591518))

(assert (= (and b!2591518 (not res!1089781)) b!2591521))

(assert (= (and b!2591521 (not res!1089783)) b!2591511))

(assert (= (and b!2591511 (not res!1089784)) b!2591519))

(assert (= (and b!2591519 (not res!1089786)) b!2591514))

(assert (= (and b!2591514 c!417772) b!2591517))

(assert (= (and b!2591514 (not c!417772)) b!2591512))

(assert (= (and b!2591514 (not res!1089782)) b!2591515))

(assert (= (and start!251104 ((_ is Cons!29815) l!3230)) b!2591516))

(declare-fun m!2927539 () Bool)

(assert (=> b!2591515 m!2927539))

(assert (=> b!2591519 m!2927539))

(declare-fun m!2927541 () Bool)

(assert (=> b!2591519 m!2927541))

(declare-fun m!2927543 () Bool)

(assert (=> b!2591518 m!2927543))

(declare-fun m!2927545 () Bool)

(assert (=> b!2591511 m!2927545))

(declare-fun m!2927547 () Bool)

(assert (=> b!2591521 m!2927547))

(declare-fun m!2927549 () Bool)

(assert (=> b!2591517 m!2927549))

(declare-fun m!2927551 () Bool)

(assert (=> b!2591517 m!2927551))

(declare-fun m!2927553 () Bool)

(assert (=> b!2591517 m!2927553))

(declare-fun m!2927555 () Bool)

(assert (=> b!2591517 m!2927555))

(declare-fun m!2927557 () Bool)

(assert (=> b!2591514 m!2927557))

(declare-fun m!2927559 () Bool)

(assert (=> b!2591514 m!2927559))

(assert (=> b!2591520 m!2927545))

(declare-fun m!2927561 () Bool)

(assert (=> b!2591520 m!2927561))

(declare-fun m!2927563 () Bool)

(assert (=> b!2591520 m!2927563))

(declare-fun m!2927565 () Bool)

(assert (=> b!2591520 m!2927565))

(assert (=> b!2591520 m!2927563))

(declare-fun m!2927567 () Bool)

(assert (=> b!2591520 m!2927567))

(declare-fun m!2927569 () Bool)

(assert (=> b!2591520 m!2927569))

(declare-fun m!2927571 () Bool)

(assert (=> start!251104 m!2927571))

(check-sat (not b!2591514) (not b!2591516) (not b!2591517) (not b!2591521) (not b!2591519) (not b!2591511) (not b!2591515) (not b!2591520) tp_is_empty!13309 (not start!251104))
(check-sat)
