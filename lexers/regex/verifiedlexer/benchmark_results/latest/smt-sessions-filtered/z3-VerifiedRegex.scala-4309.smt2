; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230568 () Bool)

(assert start!230568)

(declare-fun b!2336669 () Bool)

(declare-datatypes ((Unit!40686 0))(
  ( (Unit!40687) )
))
(declare-fun e!1496066 () Unit!40686)

(declare-fun Unit!40688 () Unit!40686)

(assert (=> b!2336669 (= e!1496066 Unit!40688)))

(assert (=> b!2336669 false))

(declare-fun b!2336670 () Bool)

(declare-fun res!996482 () Bool)

(declare-fun e!1496062 () Bool)

(assert (=> b!2336670 (=> (not res!996482) (not e!1496062))))

(declare-datatypes ((C!13872 0))(
  ( (C!13873 (val!8096 Int)) )
))
(declare-datatypes ((Regex!6857 0))(
  ( (ElementMatch!6857 (c!371393 C!13872)) (Concat!11479 (regOne!14226 Regex!6857) (regTwo!14226 Regex!6857)) (EmptyExpr!6857) (Star!6857 (reg!7186 Regex!6857)) (EmptyLang!6857) (Union!6857 (regOne!14227 Regex!6857) (regTwo!14227 Regex!6857)) )
))
(declare-fun r!26197 () Regex!6857)

(declare-fun nullable!1936 (Regex!6857) Bool)

(assert (=> b!2336670 (= res!996482 (not (nullable!1936 r!26197)))))

(declare-fun res!996484 () Bool)

(assert (=> start!230568 (=> (not res!996484) (not e!1496062))))

(declare-fun validRegex!2602 (Regex!6857) Bool)

(assert (=> start!230568 (= res!996484 (validRegex!2602 r!26197))))

(assert (=> start!230568 e!1496062))

(declare-fun e!1496063 () Bool)

(assert (=> start!230568 e!1496063))

(declare-fun tp_is_empty!11025 () Bool)

(assert (=> start!230568 tp_is_empty!11025))

(declare-fun b!2336671 () Bool)

(declare-fun tp!741357 () Bool)

(assert (=> b!2336671 (= e!1496063 tp!741357)))

(declare-fun b!2336672 () Bool)

(declare-fun tp!741358 () Bool)

(declare-fun tp!741360 () Bool)

(assert (=> b!2336672 (= e!1496063 (and tp!741358 tp!741360))))

(declare-fun b!2336673 () Bool)

(declare-fun e!1496065 () Unit!40686)

(declare-fun Unit!40689 () Unit!40686)

(assert (=> b!2336673 (= e!1496065 Unit!40689)))

(assert (=> b!2336673 false))

(declare-fun b!2336674 () Bool)

(assert (=> b!2336674 (= e!1496063 tp_is_empty!11025)))

(declare-fun b!2336675 () Bool)

(declare-fun Unit!40690 () Unit!40686)

(assert (=> b!2336675 (= e!1496066 Unit!40690)))

(declare-fun b!2336676 () Bool)

(declare-fun tp!741361 () Bool)

(declare-fun tp!741359 () Bool)

(assert (=> b!2336676 (= e!1496063 (and tp!741361 tp!741359))))

(declare-fun b!2336677 () Bool)

(declare-fun e!1496064 () Bool)

(assert (=> b!2336677 (= e!1496062 e!1496064)))

(declare-fun res!996483 () Bool)

(assert (=> b!2336677 (=> (not res!996483) (not e!1496064))))

(declare-fun c!13498 () C!13872)

(declare-fun derivativeStep!1596 (Regex!6857 C!13872) Regex!6857)

(assert (=> b!2336677 (= res!996483 (nullable!1936 (derivativeStep!1596 (regOne!14227 r!26197) c!13498)))))

(declare-fun lt!862478 () Unit!40686)

(assert (=> b!2336677 (= lt!862478 e!1496066)))

(declare-fun c!371391 () Bool)

(assert (=> b!2336677 (= c!371391 (nullable!1936 (regTwo!14227 r!26197)))))

(declare-fun lt!862477 () Unit!40686)

(assert (=> b!2336677 (= lt!862477 e!1496065)))

(declare-fun c!371392 () Bool)

(declare-fun lt!862479 () Bool)

(assert (=> b!2336677 (= c!371392 lt!862479)))

(assert (=> b!2336677 (= lt!862479 (nullable!1936 (regOne!14227 r!26197)))))

(declare-fun b!2336678 () Bool)

(declare-fun res!996486 () Bool)

(assert (=> b!2336678 (=> (not res!996486) (not e!1496062))))

(get-info :version)

(assert (=> b!2336678 (= res!996486 (and (not ((_ is EmptyExpr!6857) r!26197)) (not ((_ is EmptyLang!6857) r!26197)) (not ((_ is ElementMatch!6857) r!26197)) ((_ is Union!6857) r!26197)))))

(declare-fun b!2336679 () Bool)

(declare-fun Unit!40691 () Unit!40686)

(assert (=> b!2336679 (= e!1496065 Unit!40691)))

(declare-fun b!2336680 () Bool)

(declare-fun res!996487 () Bool)

(assert (=> b!2336680 (=> (not res!996487) (not e!1496062))))

(assert (=> b!2336680 (= res!996487 (nullable!1936 (derivativeStep!1596 r!26197 c!13498)))))

(declare-fun b!2336681 () Bool)

(declare-fun res!996485 () Bool)

(assert (=> b!2336681 (=> (not res!996485) (not e!1496064))))

(assert (=> b!2336681 (= res!996485 (validRegex!2602 (regOne!14227 r!26197)))))

(declare-fun b!2336682 () Bool)

(assert (=> b!2336682 (= e!1496064 lt!862479)))

(assert (= (and start!230568 res!996484) b!2336670))

(assert (= (and b!2336670 res!996482) b!2336680))

(assert (= (and b!2336680 res!996487) b!2336678))

(assert (= (and b!2336678 res!996486) b!2336677))

(assert (= (and b!2336677 c!371392) b!2336673))

(assert (= (and b!2336677 (not c!371392)) b!2336679))

(assert (= (and b!2336677 c!371391) b!2336669))

(assert (= (and b!2336677 (not c!371391)) b!2336675))

(assert (= (and b!2336677 res!996483) b!2336681))

(assert (= (and b!2336681 res!996485) b!2336682))

(assert (= (and start!230568 ((_ is ElementMatch!6857) r!26197)) b!2336674))

(assert (= (and start!230568 ((_ is Concat!11479) r!26197)) b!2336672))

(assert (= (and start!230568 ((_ is Star!6857) r!26197)) b!2336671))

(assert (= (and start!230568 ((_ is Union!6857) r!26197)) b!2336676))

(declare-fun m!2762877 () Bool)

(assert (=> start!230568 m!2762877))

(declare-fun m!2762879 () Bool)

(assert (=> b!2336677 m!2762879))

(assert (=> b!2336677 m!2762879))

(declare-fun m!2762881 () Bool)

(assert (=> b!2336677 m!2762881))

(declare-fun m!2762883 () Bool)

(assert (=> b!2336677 m!2762883))

(declare-fun m!2762885 () Bool)

(assert (=> b!2336677 m!2762885))

(declare-fun m!2762887 () Bool)

(assert (=> b!2336680 m!2762887))

(assert (=> b!2336680 m!2762887))

(declare-fun m!2762889 () Bool)

(assert (=> b!2336680 m!2762889))

(declare-fun m!2762891 () Bool)

(assert (=> b!2336681 m!2762891))

(declare-fun m!2762893 () Bool)

(assert (=> b!2336670 m!2762893))

(check-sat (not b!2336672) (not b!2336680) (not b!2336681) (not b!2336671) (not b!2336670) (not start!230568) (not b!2336677) (not b!2336676) tp_is_empty!11025)
(check-sat)
