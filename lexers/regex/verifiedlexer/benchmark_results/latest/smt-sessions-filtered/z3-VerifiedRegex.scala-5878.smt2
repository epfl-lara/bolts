; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288172 () Bool)

(assert start!288172)

(declare-fun b!2981904 () Bool)

(assert (=> b!2981904 true))

(assert (=> b!2981904 true))

(assert (=> b!2981904 true))

(declare-fun lambda!111234 () Int)

(declare-fun lambda!111233 () Int)

(assert (=> b!2981904 (not (= lambda!111234 lambda!111233))))

(assert (=> b!2981904 true))

(assert (=> b!2981904 true))

(assert (=> b!2981904 true))

(declare-fun b!2981895 () Bool)

(declare-fun e!1875312 () Bool)

(declare-fun tp_is_empty!16177 () Bool)

(declare-fun tp!949231 () Bool)

(assert (=> b!2981895 (= e!1875312 (and tp_is_empty!16177 tp!949231))))

(declare-fun b!2981896 () Bool)

(declare-fun e!1875319 () Bool)

(declare-fun e!1875311 () Bool)

(assert (=> b!2981896 (= e!1875319 (not e!1875311))))

(declare-fun res!1229713 () Bool)

(assert (=> b!2981896 (=> res!1229713 e!1875311)))

(declare-fun lt!1038323 () Bool)

(declare-datatypes ((C!18800 0))(
  ( (C!18801 (val!11436 Int)) )
))
(declare-datatypes ((Regex!9307 0))(
  ( (ElementMatch!9307 (c!489793 C!18800)) (Concat!14628 (regOne!19126 Regex!9307) (regTwo!19126 Regex!9307)) (EmptyExpr!9307) (Star!9307 (reg!9636 Regex!9307)) (EmptyLang!9307) (Union!9307 (regOne!19127 Regex!9307) (regTwo!19127 Regex!9307)) )
))
(declare-fun r!17423 () Regex!9307)

(get-info :version)

(assert (=> b!2981896 (= res!1229713 (or lt!1038323 ((_ is Concat!14628) r!17423) ((_ is Union!9307) r!17423) (not ((_ is Star!9307) r!17423))))))

(declare-datatypes ((List!35172 0))(
  ( (Nil!35048) (Cons!35048 (h!40468 C!18800) (t!234237 List!35172)) )
))
(declare-fun s!11993 () List!35172)

(declare-fun matchRSpec!1444 (Regex!9307 List!35172) Bool)

(assert (=> b!2981896 (= lt!1038323 (matchRSpec!1444 r!17423 s!11993))))

(declare-fun matchR!4189 (Regex!9307 List!35172) Bool)

(assert (=> b!2981896 (= lt!1038323 (matchR!4189 r!17423 s!11993))))

(declare-datatypes ((Unit!48995 0))(
  ( (Unit!48996) )
))
(declare-fun lt!1038332 () Unit!48995)

(declare-fun mainMatchTheorem!1444 (Regex!9307 List!35172) Unit!48995)

(assert (=> b!2981896 (= lt!1038332 (mainMatchTheorem!1444 r!17423 s!11993))))

(declare-fun b!2981897 () Bool)

(declare-fun e!1875310 () Unit!48995)

(declare-fun Unit!48997 () Unit!48995)

(assert (=> b!2981897 (= e!1875310 Unit!48997)))

(declare-fun res!1229717 () Bool)

(assert (=> start!288172 (=> (not res!1229717) (not e!1875319))))

(declare-fun validRegex!4040 (Regex!9307) Bool)

(assert (=> start!288172 (= res!1229717 (validRegex!4040 r!17423))))

(assert (=> start!288172 e!1875319))

(declare-fun e!1875315 () Bool)

(assert (=> start!288172 e!1875315))

(assert (=> start!288172 e!1875312))

(declare-fun b!2981898 () Bool)

(declare-fun e!1875318 () Bool)

(assert (=> b!2981898 (= e!1875318 true)))

(declare-fun lt!1038326 () Unit!48995)

(assert (=> b!2981898 (= lt!1038326 e!1875310)))

(declare-fun c!489792 () Bool)

(declare-datatypes ((tuple2!33952 0))(
  ( (tuple2!33953 (_1!20108 List!35172) (_2!20108 List!35172)) )
))
(declare-fun lt!1038330 () tuple2!33952)

(declare-fun size!26479 (List!35172) Int)

(assert (=> b!2981898 (= c!489792 (= (size!26479 (_2!20108 lt!1038330)) (size!26479 s!11993)))))

(assert (=> b!2981898 (matchR!4189 (reg!9636 r!17423) (_1!20108 lt!1038330))))

(declare-fun lt!1038329 () Unit!48995)

(declare-fun lemmaSimplifySound!172 (Regex!9307 List!35172) Unit!48995)

(assert (=> b!2981898 (= lt!1038329 (lemmaSimplifySound!172 (reg!9636 r!17423) (_1!20108 lt!1038330)))))

(declare-fun b!2981899 () Bool)

(declare-fun e!1875314 () Bool)

(declare-fun e!1875317 () Bool)

(assert (=> b!2981899 (= e!1875314 e!1875317)))

(declare-fun res!1229716 () Bool)

(assert (=> b!2981899 (=> res!1229716 e!1875317)))

(declare-fun lt!1038324 () Regex!9307)

(assert (=> b!2981899 (= res!1229716 (not (matchR!4189 lt!1038324 s!11993)))))

(declare-fun lt!1038327 () Regex!9307)

(assert (=> b!2981899 (= lt!1038324 (Star!9307 lt!1038327))))

(declare-fun b!2981900 () Bool)

(declare-fun tp!949232 () Bool)

(declare-fun tp!949229 () Bool)

(assert (=> b!2981900 (= e!1875315 (and tp!949232 tp!949229))))

(declare-fun b!2981901 () Bool)

(declare-fun e!1875313 () Bool)

(assert (=> b!2981901 (= e!1875313 e!1875318)))

(declare-fun res!1229714 () Bool)

(assert (=> b!2981901 (=> res!1229714 e!1875318)))

(assert (=> b!2981901 (= res!1229714 (not (matchR!4189 lt!1038327 (_1!20108 lt!1038330))))))

(declare-datatypes ((Option!6708 0))(
  ( (None!6707) (Some!6707 (v!34841 tuple2!33952)) )
))
(declare-fun lt!1038328 () Option!6708)

(declare-fun get!10829 (Option!6708) tuple2!33952)

(assert (=> b!2981901 (= lt!1038330 (get!10829 lt!1038328))))

(declare-fun b!2981902 () Bool)

(declare-fun tp!949228 () Bool)

(assert (=> b!2981902 (= e!1875315 tp!949228)))

(declare-fun b!2981903 () Bool)

(declare-fun e!1875316 () Bool)

(assert (=> b!2981903 (= e!1875317 e!1875316)))

(declare-fun res!1229711 () Bool)

(assert (=> b!2981903 (=> res!1229711 e!1875316)))

(declare-fun isEmpty!19307 (List!35172) Bool)

(assert (=> b!2981903 (= res!1229711 (isEmpty!19307 s!11993))))

(assert (=> b!2981903 (matchRSpec!1444 lt!1038324 s!11993)))

(declare-fun lt!1038333 () Unit!48995)

(assert (=> b!2981903 (= lt!1038333 (mainMatchTheorem!1444 lt!1038324 s!11993))))

(assert (=> b!2981904 (= e!1875316 e!1875313)))

(declare-fun res!1229718 () Bool)

(assert (=> b!2981904 (=> res!1229718 e!1875313)))

(declare-fun lt!1038334 () Bool)

(assert (=> b!2981904 (= res!1229718 (not lt!1038334))))

(declare-fun Exists!1587 (Int) Bool)

(assert (=> b!2981904 (= (Exists!1587 lambda!111233) (Exists!1587 lambda!111234))))

(declare-fun lt!1038325 () Unit!48995)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!272 (Regex!9307 List!35172) Unit!48995)

(assert (=> b!2981904 (= lt!1038325 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!272 lt!1038327 s!11993))))

(assert (=> b!2981904 (= lt!1038334 (Exists!1587 lambda!111233))))

(declare-fun isDefined!5259 (Option!6708) Bool)

(assert (=> b!2981904 (= lt!1038334 (isDefined!5259 lt!1038328))))

(declare-fun findConcatSeparation!1102 (Regex!9307 Regex!9307 List!35172 List!35172 List!35172) Option!6708)

(assert (=> b!2981904 (= lt!1038328 (findConcatSeparation!1102 lt!1038327 lt!1038324 Nil!35048 s!11993 s!11993))))

(declare-fun lt!1038322 () Unit!48995)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!880 (Regex!9307 Regex!9307 List!35172) Unit!48995)

(assert (=> b!2981904 (= lt!1038322 (lemmaFindConcatSeparationEquivalentToExists!880 lt!1038327 lt!1038324 s!11993))))

(declare-fun b!2981905 () Bool)

(declare-fun Unit!48998 () Unit!48995)

(assert (=> b!2981905 (= e!1875310 Unit!48998)))

(declare-fun lt!1038331 () Unit!48995)

(assert (=> b!2981905 (= lt!1038331 (mainMatchTheorem!1444 (reg!9636 r!17423) (_1!20108 lt!1038330)))))

(assert (=> b!2981905 false))

(declare-fun b!2981906 () Bool)

(declare-fun tp!949230 () Bool)

(declare-fun tp!949233 () Bool)

(assert (=> b!2981906 (= e!1875315 (and tp!949230 tp!949233))))

(declare-fun b!2981907 () Bool)

(assert (=> b!2981907 (= e!1875315 tp_is_empty!16177)))

(declare-fun b!2981908 () Bool)

(declare-fun res!1229715 () Bool)

(assert (=> b!2981908 (=> res!1229715 e!1875318)))

(assert (=> b!2981908 (= res!1229715 (not (matchR!4189 lt!1038324 (_2!20108 lt!1038330))))))

(declare-fun b!2981909 () Bool)

(assert (=> b!2981909 (= e!1875311 e!1875314)))

(declare-fun res!1229712 () Bool)

(assert (=> b!2981909 (=> res!1229712 e!1875314)))

(declare-fun isEmptyLang!421 (Regex!9307) Bool)

(assert (=> b!2981909 (= res!1229712 (isEmptyLang!421 lt!1038327))))

(declare-fun simplify!308 (Regex!9307) Regex!9307)

(assert (=> b!2981909 (= lt!1038327 (simplify!308 (reg!9636 r!17423)))))

(assert (= (and start!288172 res!1229717) b!2981896))

(assert (= (and b!2981896 (not res!1229713)) b!2981909))

(assert (= (and b!2981909 (not res!1229712)) b!2981899))

(assert (= (and b!2981899 (not res!1229716)) b!2981903))

(assert (= (and b!2981903 (not res!1229711)) b!2981904))

(assert (= (and b!2981904 (not res!1229718)) b!2981901))

(assert (= (and b!2981901 (not res!1229714)) b!2981908))

(assert (= (and b!2981908 (not res!1229715)) b!2981898))

(assert (= (and b!2981898 c!489792) b!2981905))

(assert (= (and b!2981898 (not c!489792)) b!2981897))

(assert (= (and start!288172 ((_ is ElementMatch!9307) r!17423)) b!2981907))

(assert (= (and start!288172 ((_ is Concat!14628) r!17423)) b!2981900))

(assert (= (and start!288172 ((_ is Star!9307) r!17423)) b!2981902))

(assert (= (and start!288172 ((_ is Union!9307) r!17423)) b!2981906))

(assert (= (and start!288172 ((_ is Cons!35048) s!11993)) b!2981895))

(declare-fun m!3342669 () Bool)

(assert (=> b!2981896 m!3342669))

(declare-fun m!3342671 () Bool)

(assert (=> b!2981896 m!3342671))

(declare-fun m!3342673 () Bool)

(assert (=> b!2981896 m!3342673))

(declare-fun m!3342675 () Bool)

(assert (=> b!2981908 m!3342675))

(declare-fun m!3342677 () Bool)

(assert (=> b!2981901 m!3342677))

(declare-fun m!3342679 () Bool)

(assert (=> b!2981901 m!3342679))

(declare-fun m!3342681 () Bool)

(assert (=> start!288172 m!3342681))

(declare-fun m!3342683 () Bool)

(assert (=> b!2981909 m!3342683))

(declare-fun m!3342685 () Bool)

(assert (=> b!2981909 m!3342685))

(declare-fun m!3342687 () Bool)

(assert (=> b!2981905 m!3342687))

(declare-fun m!3342689 () Bool)

(assert (=> b!2981904 m!3342689))

(declare-fun m!3342691 () Bool)

(assert (=> b!2981904 m!3342691))

(declare-fun m!3342693 () Bool)

(assert (=> b!2981904 m!3342693))

(declare-fun m!3342695 () Bool)

(assert (=> b!2981904 m!3342695))

(assert (=> b!2981904 m!3342689))

(declare-fun m!3342697 () Bool)

(assert (=> b!2981904 m!3342697))

(declare-fun m!3342699 () Bool)

(assert (=> b!2981904 m!3342699))

(declare-fun m!3342701 () Bool)

(assert (=> b!2981898 m!3342701))

(declare-fun m!3342703 () Bool)

(assert (=> b!2981898 m!3342703))

(declare-fun m!3342705 () Bool)

(assert (=> b!2981898 m!3342705))

(declare-fun m!3342707 () Bool)

(assert (=> b!2981898 m!3342707))

(declare-fun m!3342709 () Bool)

(assert (=> b!2981903 m!3342709))

(declare-fun m!3342711 () Bool)

(assert (=> b!2981903 m!3342711))

(declare-fun m!3342713 () Bool)

(assert (=> b!2981903 m!3342713))

(declare-fun m!3342715 () Bool)

(assert (=> b!2981899 m!3342715))

(check-sat (not b!2981896) (not start!288172) (not b!2981900) (not b!2981908) (not b!2981895) (not b!2981899) (not b!2981902) (not b!2981906) (not b!2981903) (not b!2981904) (not b!2981909) tp_is_empty!16177 (not b!2981905) (not b!2981898) (not b!2981901))
(check-sat)
