; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282546 () Bool)

(assert start!282546)

(declare-fun b!2902702 () Bool)

(declare-fun e!1832855 () Bool)

(declare-fun tp!931674 () Bool)

(declare-fun tp!931673 () Bool)

(assert (=> b!2902702 (= e!1832855 (and tp!931674 tp!931673))))

(declare-fun b!2902703 () Bool)

(declare-fun res!1199300 () Bool)

(declare-fun e!1832859 () Bool)

(assert (=> b!2902703 (=> (not res!1199300) (not e!1832859))))

(declare-datatypes ((C!17936 0))(
  ( (C!17937 (val!11002 Int)) )
))
(declare-datatypes ((Regex!8877 0))(
  ( (ElementMatch!8877 (c!473030 C!17936)) (Concat!14198 (regOne!18266 Regex!8877) (regTwo!18266 Regex!8877)) (EmptyExpr!8877) (Star!8877 (reg!9206 Regex!8877)) (EmptyLang!8877) (Union!8877 (regOne!18267 Regex!8877) (regTwo!18267 Regex!8877)) )
))
(declare-fun r!19097 () Regex!8877)

(declare-datatypes ((List!34678 0))(
  ( (Nil!34554) (Cons!34554 (h!39974 C!17936) (t!233721 List!34678)) )
))
(declare-fun prefix!1456 () List!34678)

(declare-fun prefixMatch!935 (Regex!8877 List!34678) Bool)

(assert (=> b!2902703 (= res!1199300 (not (prefixMatch!935 r!19097 prefix!1456)))))

(declare-fun b!2902704 () Bool)

(declare-fun e!1832856 () Bool)

(declare-fun tp_is_empty!15341 () Bool)

(declare-fun tp!931678 () Bool)

(assert (=> b!2902704 (= e!1832856 (and tp_is_empty!15341 tp!931678))))

(declare-fun b!2902705 () Bool)

(declare-fun e!1832858 () Bool)

(assert (=> b!2902705 (= e!1832858 (not true))))

(declare-fun lt!1022343 () Regex!8877)

(declare-fun lt!1022344 () List!34678)

(declare-fun matchR!3827 (Regex!8877 List!34678) Bool)

(assert (=> b!2902705 (not (matchR!3827 lt!1022343 lt!1022344))))

(declare-datatypes ((Unit!48135 0))(
  ( (Unit!48136) )
))
(declare-fun lt!1022342 () Unit!48135)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!204 (Regex!8877 List!34678 List!34678) Unit!48135)

(assert (=> b!2902705 (= lt!1022342 (lemmaNotPrefixMatchThenCannotMatchLonger!204 lt!1022343 (t!233721 prefix!1456) lt!1022344))))

(declare-fun b!2902706 () Bool)

(assert (=> b!2902706 (= e!1832855 tp_is_empty!15341)))

(declare-fun res!1199299 () Bool)

(assert (=> start!282546 (=> (not res!1199299) (not e!1832859))))

(declare-fun validRegex!3650 (Regex!8877) Bool)

(assert (=> start!282546 (= res!1199299 (validRegex!3650 r!19097))))

(assert (=> start!282546 e!1832859))

(assert (=> start!282546 e!1832855))

(assert (=> start!282546 e!1832856))

(declare-fun e!1832857 () Bool)

(assert (=> start!282546 e!1832857))

(declare-fun b!2902707 () Bool)

(declare-fun res!1199301 () Bool)

(assert (=> b!2902707 (=> (not res!1199301) (not e!1832859))))

(declare-fun s!13418 () List!34678)

(declare-fun isPrefix!2714 (List!34678 List!34678) Bool)

(assert (=> b!2902707 (= res!1199301 (isPrefix!2714 prefix!1456 s!13418))))

(declare-fun b!2902708 () Bool)

(declare-fun res!1199298 () Bool)

(assert (=> b!2902708 (=> (not res!1199298) (not e!1832858))))

(assert (=> b!2902708 (= res!1199298 (isPrefix!2714 (t!233721 prefix!1456) lt!1022344))))

(declare-fun b!2902709 () Bool)

(assert (=> b!2902709 (= e!1832859 e!1832858)))

(declare-fun res!1199303 () Bool)

(assert (=> b!2902709 (=> (not res!1199303) (not e!1832858))))

(assert (=> b!2902709 (= res!1199303 (validRegex!3650 lt!1022343))))

(declare-fun tail!4638 (List!34678) List!34678)

(assert (=> b!2902709 (= lt!1022344 (tail!4638 s!13418))))

(declare-fun derivativeStep!2384 (Regex!8877 C!17936) Regex!8877)

(assert (=> b!2902709 (= lt!1022343 (derivativeStep!2384 r!19097 (h!39974 prefix!1456)))))

(declare-fun b!2902710 () Bool)

(declare-fun res!1199297 () Bool)

(assert (=> b!2902710 (=> (not res!1199297) (not e!1832859))))

(get-info :version)

(assert (=> b!2902710 (= res!1199297 (not ((_ is Nil!34554) prefix!1456)))))

(declare-fun b!2902711 () Bool)

(declare-fun tp!931675 () Bool)

(assert (=> b!2902711 (= e!1832857 (and tp_is_empty!15341 tp!931675))))

(declare-fun b!2902712 () Bool)

(declare-fun tp!931677 () Bool)

(assert (=> b!2902712 (= e!1832855 tp!931677)))

(declare-fun b!2902713 () Bool)

(declare-fun res!1199302 () Bool)

(assert (=> b!2902713 (=> (not res!1199302) (not e!1832858))))

(assert (=> b!2902713 (= res!1199302 (not (prefixMatch!935 lt!1022343 (t!233721 prefix!1456))))))

(declare-fun b!2902714 () Bool)

(declare-fun tp!931679 () Bool)

(declare-fun tp!931676 () Bool)

(assert (=> b!2902714 (= e!1832855 (and tp!931679 tp!931676))))

(assert (= (and start!282546 res!1199299) b!2902707))

(assert (= (and b!2902707 res!1199301) b!2902703))

(assert (= (and b!2902703 res!1199300) b!2902710))

(assert (= (and b!2902710 res!1199297) b!2902709))

(assert (= (and b!2902709 res!1199303) b!2902708))

(assert (= (and b!2902708 res!1199298) b!2902713))

(assert (= (and b!2902713 res!1199302) b!2902705))

(assert (= (and start!282546 ((_ is ElementMatch!8877) r!19097)) b!2902706))

(assert (= (and start!282546 ((_ is Concat!14198) r!19097)) b!2902702))

(assert (= (and start!282546 ((_ is Star!8877) r!19097)) b!2902712))

(assert (= (and start!282546 ((_ is Union!8877) r!19097)) b!2902714))

(assert (= (and start!282546 ((_ is Cons!34554) prefix!1456)) b!2902704))

(assert (= (and start!282546 ((_ is Cons!34554) s!13418)) b!2902711))

(declare-fun m!3306731 () Bool)

(assert (=> b!2902713 m!3306731))

(declare-fun m!3306733 () Bool)

(assert (=> b!2902707 m!3306733))

(declare-fun m!3306735 () Bool)

(assert (=> b!2902703 m!3306735))

(declare-fun m!3306737 () Bool)

(assert (=> start!282546 m!3306737))

(declare-fun m!3306739 () Bool)

(assert (=> b!2902705 m!3306739))

(declare-fun m!3306741 () Bool)

(assert (=> b!2902705 m!3306741))

(declare-fun m!3306743 () Bool)

(assert (=> b!2902709 m!3306743))

(declare-fun m!3306745 () Bool)

(assert (=> b!2902709 m!3306745))

(declare-fun m!3306747 () Bool)

(assert (=> b!2902709 m!3306747))

(declare-fun m!3306749 () Bool)

(assert (=> b!2902708 m!3306749))

(check-sat (not start!282546) (not b!2902704) (not b!2902705) (not b!2902711) (not b!2902703) (not b!2902713) tp_is_empty!15341 (not b!2902702) (not b!2902709) (not b!2902712) (not b!2902714) (not b!2902707) (not b!2902708))
(check-sat)
