; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45796 () Bool)

(assert start!45796)

(declare-fun b!479781 () Bool)

(declare-fun e!292443 () Bool)

(declare-datatypes ((C!3260 0))(
  ( (C!3261 (val!1616 Int)) )
))
(declare-datatypes ((Regex!1169 0))(
  ( (ElementMatch!1169 (c!95934 C!3260)) (Concat!2069 (regOne!2850 Regex!1169) (regTwo!2850 Regex!1169)) (EmptyExpr!1169) (Star!1169 (reg!1498 Regex!1169)) (EmptyLang!1169) (Union!1169 (regOne!2851 Regex!1169) (regTwo!2851 Regex!1169)) )
))
(declare-fun r!20230 () Regex!1169)

(declare-fun lostCause!163 (Regex!1169) Bool)

(assert (=> b!479781 (= e!292443 (lostCause!163 (regTwo!2850 r!20230)))))

(declare-fun b!479782 () Bool)

(declare-fun e!292447 () Bool)

(declare-fun tp_is_empty!2335 () Bool)

(assert (=> b!479782 (= e!292447 tp_is_empty!2335)))

(declare-fun b!479783 () Bool)

(declare-fun res!211950 () Bool)

(declare-fun e!292446 () Bool)

(assert (=> b!479783 (=> (not res!211950) (not e!292446))))

(declare-fun nullable!304 (Regex!1169) Bool)

(assert (=> b!479783 (= res!211950 (nullable!304 (regOne!2850 r!20230)))))

(declare-fun b!479784 () Bool)

(declare-fun tp!134671 () Bool)

(declare-fun tp!134667 () Bool)

(assert (=> b!479784 (= e!292447 (and tp!134671 tp!134667))))

(declare-fun b!479785 () Bool)

(declare-fun e!292445 () Bool)

(assert (=> b!479785 (= e!292446 (not e!292445))))

(declare-fun res!211951 () Bool)

(assert (=> b!479785 (=> res!211951 e!292445)))

(declare-fun validRegex!397 (Regex!1169) Bool)

(assert (=> b!479785 (= res!211951 (not (validRegex!397 (regTwo!2850 r!20230))))))

(declare-fun lt!210924 () Bool)

(assert (=> b!479785 (not lt!210924)))

(declare-datatypes ((Unit!8372 0))(
  ( (Unit!8373) )
))
(declare-fun lt!210923 () Unit!8372)

(declare-fun lemmaNullableThenNotLostCause!10 (Regex!1169) Unit!8372)

(assert (=> b!479785 (= lt!210923 (lemmaNullableThenNotLostCause!10 (regOne!2850 r!20230)))))

(declare-fun b!479786 () Bool)

(declare-fun tp!134669 () Bool)

(declare-fun tp!134670 () Bool)

(assert (=> b!479786 (= e!292447 (and tp!134669 tp!134670))))

(declare-fun b!479780 () Bool)

(declare-fun e!292444 () Bool)

(assert (=> b!479780 (= e!292444 e!292446)))

(declare-fun res!211955 () Bool)

(assert (=> b!479780 (=> (not res!211955) (not e!292446))))

(assert (=> b!479780 (= res!211955 e!292443)))

(declare-fun res!211949 () Bool)

(assert (=> b!479780 (=> res!211949 e!292443)))

(assert (=> b!479780 (= res!211949 lt!210924)))

(assert (=> b!479780 (= lt!210924 (lostCause!163 (regOne!2850 r!20230)))))

(declare-fun res!211954 () Bool)

(assert (=> start!45796 (=> (not res!211954) (not e!292444))))

(assert (=> start!45796 (= res!211954 (validRegex!397 r!20230))))

(assert (=> start!45796 e!292444))

(assert (=> start!45796 e!292447))

(declare-fun b!479787 () Bool)

(declare-fun tp!134668 () Bool)

(assert (=> b!479787 (= e!292447 tp!134668)))

(declare-fun b!479788 () Bool)

(declare-fun res!211952 () Bool)

(assert (=> b!479788 (=> (not res!211952) (not e!292444))))

(assert (=> b!479788 (= res!211952 (lostCause!163 r!20230))))

(declare-fun b!479789 () Bool)

(assert (=> b!479789 (= e!292445 (lostCause!163 (regTwo!2850 r!20230)))))

(declare-fun b!479790 () Bool)

(declare-fun res!211953 () Bool)

(assert (=> b!479790 (=> (not res!211953) (not e!292444))))

(get-info :version)

(assert (=> b!479790 (= res!211953 (and (not ((_ is EmptyLang!1169) r!20230)) (not ((_ is EmptyExpr!1169) r!20230)) (not ((_ is ElementMatch!1169) r!20230)) (not ((_ is Union!1169) r!20230)) (not ((_ is Star!1169) r!20230))))))

(assert (= (and start!45796 res!211954) b!479788))

(assert (= (and b!479788 res!211952) b!479790))

(assert (= (and b!479790 res!211953) b!479780))

(assert (= (and b!479780 (not res!211949)) b!479781))

(assert (= (and b!479780 res!211955) b!479783))

(assert (= (and b!479783 res!211950) b!479785))

(assert (= (and b!479785 (not res!211951)) b!479789))

(assert (= (and start!45796 ((_ is ElementMatch!1169) r!20230)) b!479782))

(assert (= (and start!45796 ((_ is Concat!2069) r!20230)) b!479786))

(assert (= (and start!45796 ((_ is Star!1169) r!20230)) b!479787))

(assert (= (and start!45796 ((_ is Union!1169) r!20230)) b!479784))

(declare-fun m!748797 () Bool)

(assert (=> b!479783 m!748797))

(declare-fun m!748799 () Bool)

(assert (=> b!479789 m!748799))

(assert (=> b!479781 m!748799))

(declare-fun m!748801 () Bool)

(assert (=> b!479788 m!748801))

(declare-fun m!748803 () Bool)

(assert (=> b!479785 m!748803))

(declare-fun m!748805 () Bool)

(assert (=> b!479785 m!748805))

(declare-fun m!748807 () Bool)

(assert (=> b!479780 m!748807))

(declare-fun m!748809 () Bool)

(assert (=> start!45796 m!748809))

(check-sat (not b!479786) (not b!479780) (not b!479785) (not start!45796) (not b!479788) (not b!479784) (not b!479781) (not b!479783) (not b!479787) tp_is_empty!2335 (not b!479789))
(check-sat)
