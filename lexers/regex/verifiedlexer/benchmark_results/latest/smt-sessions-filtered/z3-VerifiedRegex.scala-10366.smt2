; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537780 () Bool)

(assert start!537780)

(declare-fun b!5099313 () Bool)

(declare-fun e!3180293 () Bool)

(declare-datatypes ((C!28312 0))(
  ( (C!28313 (val!23808 Int)) )
))
(declare-datatypes ((Regex!14027 0))(
  ( (ElementMatch!14027 (c!876133 C!28312)) (Concat!22872 (regOne!28566 Regex!14027) (regTwo!28566 Regex!14027)) (EmptyExpr!14027) (Star!14027 (reg!14356 Regex!14027)) (EmptyLang!14027) (Union!14027 (regOne!28567 Regex!14027) (regTwo!28567 Regex!14027)) )
))
(declare-fun r!12920 () Regex!14027)

(declare-datatypes ((List!58867 0))(
  ( (Nil!58743) (Cons!58743 (h!65191 C!28312) (t!371868 List!58867)) )
))
(declare-datatypes ((tuple2!63440 0))(
  ( (tuple2!63441 (_1!35023 List!58867) (_2!35023 List!58867)) )
))
(declare-fun lt!2095891 () tuple2!63440)

(declare-fun matchR!6816 (Regex!14027 List!58867) Bool)

(assert (=> b!5099313 (= e!3180293 (matchR!6816 r!12920 (_1!35023 lt!2095891)))))

(declare-fun setIsEmpty!29146 () Bool)

(declare-fun setRes!29146 () Bool)

(assert (=> setIsEmpty!29146 setRes!29146))

(declare-fun b!5099315 () Bool)

(declare-fun e!3180296 () Bool)

(declare-fun e!3180292 () Bool)

(assert (=> b!5099315 (= e!3180296 e!3180292)))

(declare-fun res!2170278 () Bool)

(assert (=> b!5099315 (=> (not res!2170278) (not e!3180292))))

(declare-fun lt!2095890 () List!58867)

(declare-fun input!5654 () List!58867)

(assert (=> b!5099315 (= res!2170278 (= lt!2095890 input!5654))))

(declare-fun lt!2095900 () tuple2!63440)

(declare-fun ++!12876 (List!58867 List!58867) List!58867)

(assert (=> b!5099315 (= lt!2095890 (++!12876 (_1!35023 lt!2095900) (_2!35023 lt!2095900)))))

(declare-fun lt!2095881 () tuple2!63440)

(declare-fun findLongestMatch!1857 (Regex!14027 List!58867) tuple2!63440)

(assert (=> b!5099315 (= lt!2095881 (findLongestMatch!1857 r!12920 input!5654))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58868 0))(
  ( (Nil!58744) (Cons!58744 (h!65192 Regex!14027) (t!371869 List!58868)) )
))
(declare-datatypes ((Context!6822 0))(
  ( (Context!6823 (exprs!3911 List!58868)) )
))
(declare-fun z!4303 () (InoxSet Context!6822))

(declare-fun findLongestMatchZipper!51 ((InoxSet Context!6822) List!58867) tuple2!63440)

(assert (=> b!5099315 (= lt!2095900 (findLongestMatchZipper!51 z!4303 input!5654))))

(declare-fun b!5099316 () Bool)

(declare-fun e!3180301 () Bool)

(declare-fun e!3180297 () Bool)

(assert (=> b!5099316 (= e!3180301 e!3180297)))

(declare-fun res!2170283 () Bool)

(assert (=> b!5099316 (=> res!2170283 e!3180297)))

(declare-fun e!3180291 () Bool)

(assert (=> b!5099316 (= res!2170283 e!3180291)))

(declare-fun res!2170284 () Bool)

(assert (=> b!5099316 (=> (not res!2170284) (not e!3180291))))

(declare-fun lt!2095880 () Bool)

(assert (=> b!5099316 (= res!2170284 (not lt!2095880))))

(assert (=> b!5099316 (= lt!2095880 (matchR!6816 r!12920 (_1!35023 lt!2095881)))))

(declare-fun setNonEmpty!29146 () Bool)

(declare-fun setElem!29146 () Context!6822)

(declare-fun tp!1422165 () Bool)

(declare-fun e!3180298 () Bool)

(declare-fun inv!78242 (Context!6822) Bool)

(assert (=> setNonEmpty!29146 (= setRes!29146 (and tp!1422165 (inv!78242 setElem!29146) e!3180298))))

(declare-fun setRest!29146 () (InoxSet Context!6822))

(assert (=> setNonEmpty!29146 (= z!4303 ((_ map or) (store ((as const (Array Context!6822 Bool)) false) setElem!29146 true) setRest!29146))))

(declare-fun b!5099317 () Bool)

(declare-fun e!3180299 () Bool)

(declare-fun lt!2095889 () tuple2!63440)

(declare-fun matchZipper!703 ((InoxSet Context!6822) List!58867) Bool)

(assert (=> b!5099317 (= e!3180299 (matchZipper!703 z!4303 (_1!35023 lt!2095889)))))

(declare-fun b!5099318 () Bool)

(declare-fun e!3180300 () Bool)

(declare-fun tp_is_empty!37319 () Bool)

(assert (=> b!5099318 (= e!3180300 tp_is_empty!37319)))

(declare-fun b!5099319 () Bool)

(declare-fun e!3180294 () Bool)

(assert (=> b!5099319 (= e!3180294 (not e!3180301))))

(declare-fun res!2170279 () Bool)

(assert (=> b!5099319 (=> res!2170279 e!3180301)))

(declare-fun e!3180290 () Bool)

(assert (=> b!5099319 (= res!2170279 e!3180290)))

(declare-fun res!2170285 () Bool)

(assert (=> b!5099319 (=> (not res!2170285) (not e!3180290))))

(declare-fun lt!2095886 () Bool)

(assert (=> b!5099319 (= res!2170285 (not lt!2095886))))

(assert (=> b!5099319 (= lt!2095886 (matchZipper!703 z!4303 (_1!35023 lt!2095900)))))

(assert (=> b!5099319 e!3180293))

(declare-fun res!2170281 () Bool)

(assert (=> b!5099319 (=> res!2170281 e!3180293)))

(declare-fun isEmpty!31776 (List!58867) Bool)

(assert (=> b!5099319 (= res!2170281 (isEmpty!31776 (_1!35023 lt!2095891)))))

(declare-fun lt!2095898 () Int)

(declare-fun lt!2095884 () Int)

(declare-fun findLongestMatchInner!2040 (Regex!14027 List!58867 Int List!58867 List!58867 Int) tuple2!63440)

(assert (=> b!5099319 (= lt!2095891 (findLongestMatchInner!2040 r!12920 Nil!58743 lt!2095898 input!5654 input!5654 lt!2095884))))

(declare-datatypes ((Unit!149778 0))(
  ( (Unit!149779) )
))
(declare-fun lt!2095887 () Unit!149778)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2008 (Regex!14027 List!58867) Unit!149778)

(assert (=> b!5099319 (= lt!2095887 (longestMatchIsAcceptedByMatchOrIsEmpty!2008 r!12920 input!5654))))

(assert (=> b!5099319 e!3180299))

(declare-fun res!2170282 () Bool)

(assert (=> b!5099319 (=> res!2170282 e!3180299)))

(assert (=> b!5099319 (= res!2170282 (isEmpty!31776 (_1!35023 lt!2095889)))))

(declare-fun findLongestMatchInnerZipper!101 ((InoxSet Context!6822) List!58867 Int List!58867 List!58867 Int) tuple2!63440)

(assert (=> b!5099319 (= lt!2095889 (findLongestMatchInnerZipper!101 z!4303 Nil!58743 lt!2095898 input!5654 input!5654 lt!2095884))))

(declare-fun size!39329 (List!58867) Int)

(assert (=> b!5099319 (= lt!2095884 (size!39329 input!5654))))

(assert (=> b!5099319 (= lt!2095898 (size!39329 Nil!58743))))

(declare-fun lt!2095883 () Unit!149778)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2009 ((InoxSet Context!6822) List!58867) Unit!149778)

(assert (=> b!5099319 (= lt!2095883 (longestMatchIsAcceptedByMatchOrIsEmpty!2009 z!4303 input!5654))))

(declare-fun lt!2095899 () List!58867)

(declare-fun isPrefix!5432 (List!58867 List!58867) Bool)

(assert (=> b!5099319 (isPrefix!5432 (_1!35023 lt!2095881) lt!2095899)))

(declare-fun lt!2095896 () Unit!149778)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3490 (List!58867 List!58867) Unit!149778)

(assert (=> b!5099319 (= lt!2095896 (lemmaConcatTwoListThenFirstIsPrefix!3490 (_1!35023 lt!2095881) (_2!35023 lt!2095881)))))

(assert (=> b!5099319 (isPrefix!5432 (_1!35023 lt!2095900) lt!2095890)))

(declare-fun lt!2095885 () Unit!149778)

(assert (=> b!5099319 (= lt!2095885 (lemmaConcatTwoListThenFirstIsPrefix!3490 (_1!35023 lt!2095900) (_2!35023 lt!2095900)))))

(declare-fun b!5099320 () Bool)

(assert (=> b!5099320 (= e!3180292 e!3180294)))

(declare-fun res!2170280 () Bool)

(assert (=> b!5099320 (=> (not res!2170280) (not e!3180294))))

(assert (=> b!5099320 (= res!2170280 (= lt!2095899 input!5654))))

(assert (=> b!5099320 (= lt!2095899 (++!12876 (_1!35023 lt!2095881) (_2!35023 lt!2095881)))))

(declare-fun b!5099321 () Bool)

(assert (=> b!5099321 (= e!3180290 (not (isEmpty!31776 (_1!35023 lt!2095900))))))

(declare-fun res!2170287 () Bool)

(declare-fun e!3180295 () Bool)

(assert (=> start!537780 (=> (not res!2170287) (not e!3180295))))

(declare-fun validRegex!6154 (Regex!14027) Bool)

(assert (=> start!537780 (= res!2170287 (validRegex!6154 r!12920))))

(assert (=> start!537780 e!3180295))

(assert (=> start!537780 e!3180300))

(declare-fun condSetEmpty!29146 () Bool)

(assert (=> start!537780 (= condSetEmpty!29146 (= z!4303 ((as const (Array Context!6822 Bool)) false)))))

(assert (=> start!537780 setRes!29146))

(declare-fun e!3180302 () Bool)

(assert (=> start!537780 e!3180302))

(declare-fun b!5099314 () Bool)

(declare-fun tp!1422161 () Bool)

(declare-fun tp!1422160 () Bool)

(assert (=> b!5099314 (= e!3180300 (and tp!1422161 tp!1422160))))

(declare-fun b!5099322 () Bool)

(declare-fun tp!1422163 () Bool)

(assert (=> b!5099322 (= e!3180298 tp!1422163)))

(declare-fun b!5099323 () Bool)

(declare-fun tp!1422162 () Bool)

(assert (=> b!5099323 (= e!3180300 tp!1422162)))

(declare-fun b!5099324 () Bool)

(declare-fun tp!1422167 () Bool)

(declare-fun tp!1422166 () Bool)

(assert (=> b!5099324 (= e!3180300 (and tp!1422167 tp!1422166))))

(declare-fun b!5099325 () Bool)

(assert (=> b!5099325 (= e!3180291 (not (isEmpty!31776 (_1!35023 lt!2095881))))))

(declare-fun b!5099326 () Bool)

(assert (=> b!5099326 (= e!3180295 e!3180296)))

(declare-fun res!2170288 () Bool)

(assert (=> b!5099326 (=> (not res!2170288) (not e!3180296))))

(declare-datatypes ((List!58869 0))(
  ( (Nil!58745) (Cons!58745 (h!65193 Context!6822) (t!371870 List!58869)) )
))
(declare-fun lt!2095897 () List!58869)

(declare-fun unfocusZipper!369 (List!58869) Regex!14027)

(assert (=> b!5099326 (= res!2170288 (= (unfocusZipper!369 lt!2095897) r!12920))))

(declare-fun toList!8161 ((InoxSet Context!6822)) List!58869)

(assert (=> b!5099326 (= lt!2095897 (toList!8161 z!4303))))

(declare-fun b!5099327 () Bool)

(declare-fun e!3180303 () Bool)

(assert (=> b!5099327 (= e!3180303 true)))

(declare-fun lt!2095882 () Bool)

(assert (=> b!5099327 (or (= (_1!35023 lt!2095900) (_1!35023 lt!2095881)) (not lt!2095882))))

(declare-fun lt!2095888 () Unit!149778)

(declare-fun longestMatchNoBiggerStringMatch!21 (Regex!14027 List!58867 List!58867 List!58867) Unit!149778)

(assert (=> b!5099327 (= lt!2095888 (longestMatchNoBiggerStringMatch!21 r!12920 input!5654 (_1!35023 lt!2095881) (_1!35023 lt!2095900)))))

(declare-fun b!5099328 () Bool)

(declare-fun tp!1422164 () Bool)

(assert (=> b!5099328 (= e!3180302 (and tp_is_empty!37319 tp!1422164))))

(declare-fun b!5099329 () Bool)

(assert (=> b!5099329 (= e!3180297 e!3180303)))

(declare-fun res!2170286 () Bool)

(assert (=> b!5099329 (=> res!2170286 e!3180303)))

(declare-fun lt!2095895 () Int)

(declare-fun lt!2095894 () Int)

(assert (=> b!5099329 (= res!2170286 (or (> lt!2095895 lt!2095894) (<= lt!2095894 lt!2095895)))))

(assert (=> b!5099329 (= lt!2095894 (size!39329 (_1!35023 lt!2095900)))))

(assert (=> b!5099329 (= lt!2095895 (size!39329 (_1!35023 lt!2095881)))))

(assert (=> b!5099329 (= lt!2095882 lt!2095886)))

(assert (=> b!5099329 (= lt!2095882 (matchR!6816 r!12920 (_1!35023 lt!2095900)))))

(declare-fun lt!2095892 () Unit!149778)

(declare-fun theoremZipperRegexEquiv!201 ((InoxSet Context!6822) List!58869 Regex!14027 List!58867) Unit!149778)

(assert (=> b!5099329 (= lt!2095892 (theoremZipperRegexEquiv!201 z!4303 lt!2095897 r!12920 (_1!35023 lt!2095900)))))

(assert (=> b!5099329 (= lt!2095880 (matchZipper!703 z!4303 (_1!35023 lt!2095881)))))

(declare-fun lt!2095893 () Unit!149778)

(assert (=> b!5099329 (= lt!2095893 (theoremZipperRegexEquiv!201 z!4303 lt!2095897 r!12920 (_1!35023 lt!2095881)))))

(assert (= (and start!537780 res!2170287) b!5099326))

(assert (= (and b!5099326 res!2170288) b!5099315))

(assert (= (and b!5099315 res!2170278) b!5099320))

(assert (= (and b!5099320 res!2170280) b!5099319))

(assert (= (and b!5099319 (not res!2170282)) b!5099317))

(assert (= (and b!5099319 (not res!2170281)) b!5099313))

(assert (= (and b!5099319 res!2170285) b!5099321))

(assert (= (and b!5099319 (not res!2170279)) b!5099316))

(assert (= (and b!5099316 res!2170284) b!5099325))

(assert (= (and b!5099316 (not res!2170283)) b!5099329))

(assert (= (and b!5099329 (not res!2170286)) b!5099327))

(get-info :version)

(assert (= (and start!537780 ((_ is ElementMatch!14027) r!12920)) b!5099318))

(assert (= (and start!537780 ((_ is Concat!22872) r!12920)) b!5099314))

(assert (= (and start!537780 ((_ is Star!14027) r!12920)) b!5099323))

(assert (= (and start!537780 ((_ is Union!14027) r!12920)) b!5099324))

(assert (= (and start!537780 condSetEmpty!29146) setIsEmpty!29146))

(assert (= (and start!537780 (not condSetEmpty!29146)) setNonEmpty!29146))

(assert (= setNonEmpty!29146 b!5099322))

(assert (= (and start!537780 ((_ is Cons!58743) input!5654)) b!5099328))

(declare-fun m!6156696 () Bool)

(assert (=> start!537780 m!6156696))

(declare-fun m!6156698 () Bool)

(assert (=> b!5099326 m!6156698))

(declare-fun m!6156700 () Bool)

(assert (=> b!5099326 m!6156700))

(declare-fun m!6156702 () Bool)

(assert (=> b!5099313 m!6156702))

(declare-fun m!6156704 () Bool)

(assert (=> b!5099320 m!6156704))

(declare-fun m!6156706 () Bool)

(assert (=> b!5099327 m!6156706))

(declare-fun m!6156708 () Bool)

(assert (=> b!5099319 m!6156708))

(declare-fun m!6156710 () Bool)

(assert (=> b!5099319 m!6156710))

(declare-fun m!6156712 () Bool)

(assert (=> b!5099319 m!6156712))

(declare-fun m!6156714 () Bool)

(assert (=> b!5099319 m!6156714))

(declare-fun m!6156716 () Bool)

(assert (=> b!5099319 m!6156716))

(declare-fun m!6156718 () Bool)

(assert (=> b!5099319 m!6156718))

(declare-fun m!6156720 () Bool)

(assert (=> b!5099319 m!6156720))

(declare-fun m!6156722 () Bool)

(assert (=> b!5099319 m!6156722))

(declare-fun m!6156724 () Bool)

(assert (=> b!5099319 m!6156724))

(declare-fun m!6156726 () Bool)

(assert (=> b!5099319 m!6156726))

(declare-fun m!6156728 () Bool)

(assert (=> b!5099319 m!6156728))

(declare-fun m!6156730 () Bool)

(assert (=> b!5099319 m!6156730))

(declare-fun m!6156732 () Bool)

(assert (=> b!5099319 m!6156732))

(declare-fun m!6156734 () Bool)

(assert (=> setNonEmpty!29146 m!6156734))

(declare-fun m!6156736 () Bool)

(assert (=> b!5099325 m!6156736))

(declare-fun m!6156738 () Bool)

(assert (=> b!5099315 m!6156738))

(declare-fun m!6156740 () Bool)

(assert (=> b!5099315 m!6156740))

(declare-fun m!6156742 () Bool)

(assert (=> b!5099315 m!6156742))

(declare-fun m!6156744 () Bool)

(assert (=> b!5099316 m!6156744))

(declare-fun m!6156746 () Bool)

(assert (=> b!5099317 m!6156746))

(declare-fun m!6156748 () Bool)

(assert (=> b!5099329 m!6156748))

(declare-fun m!6156750 () Bool)

(assert (=> b!5099329 m!6156750))

(declare-fun m!6156752 () Bool)

(assert (=> b!5099329 m!6156752))

(declare-fun m!6156754 () Bool)

(assert (=> b!5099329 m!6156754))

(declare-fun m!6156756 () Bool)

(assert (=> b!5099329 m!6156756))

(declare-fun m!6156758 () Bool)

(assert (=> b!5099329 m!6156758))

(declare-fun m!6156760 () Bool)

(assert (=> b!5099321 m!6156760))

(check-sat (not b!5099319) (not b!5099325) (not b!5099321) (not setNonEmpty!29146) (not b!5099326) (not b!5099329) (not b!5099323) (not b!5099313) (not b!5099327) (not b!5099324) tp_is_empty!37319 (not b!5099322) (not b!5099328) (not b!5099314) (not b!5099320) (not b!5099316) (not b!5099315) (not b!5099317) (not start!537780))
(check-sat)
