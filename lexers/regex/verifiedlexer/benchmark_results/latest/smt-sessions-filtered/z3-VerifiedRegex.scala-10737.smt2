; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549382 () Bool)

(assert start!549382)

(declare-fun setIsEmpty!32746 () Bool)

(declare-fun setRes!32746 () Bool)

(assert (=> setIsEmpty!32746 setRes!32746))

(declare-fun b!5189863 () Bool)

(declare-fun e!3232786 () Bool)

(declare-datatypes ((C!29712 0))(
  ( (C!29713 (val!24558 Int)) )
))
(declare-datatypes ((Regex!14721 0))(
  ( (ElementMatch!14721 (c!894554 C!29712)) (Concat!23566 (regOne!29954 Regex!14721) (regTwo!29954 Regex!14721)) (EmptyExpr!14721) (Star!14721 (reg!15050 Regex!14721)) (EmptyLang!14721) (Union!14721 (regOne!29955 Regex!14721) (regTwo!29955 Regex!14721)) )
))
(declare-datatypes ((List!60462 0))(
  ( (Nil!60338) (Cons!60338 (h!66786 Regex!14721) (t!373615 List!60462)) )
))
(declare-datatypes ((Context!8210 0))(
  ( (Context!8211 (exprs!4605 List!60462)) )
))
(declare-datatypes ((List!60463 0))(
  ( (Nil!60339) (Cons!60339 (h!66787 Context!8210) (t!373616 List!60463)) )
))
(declare-fun zl!343 () List!60463)

(declare-fun tp!1455934 () Bool)

(declare-fun e!3232790 () Bool)

(declare-fun inv!80049 (Context!8210) Bool)

(assert (=> b!5189863 (= e!3232790 (and (inv!80049 (h!66787 zl!343)) e!3232786 tp!1455934))))

(declare-fun b!5189864 () Bool)

(declare-fun e!3232787 () Bool)

(declare-fun tp!1455936 () Bool)

(declare-fun tp!1455935 () Bool)

(assert (=> b!5189864 (= e!3232787 (and tp!1455936 tp!1455935))))

(declare-fun b!5189865 () Bool)

(declare-fun e!3232788 () Bool)

(declare-fun e!3232791 () Bool)

(assert (=> b!5189865 (= e!3232788 (not e!3232791))))

(declare-fun res!2204311 () Bool)

(assert (=> b!5189865 (=> res!2204311 e!3232791)))

(get-info :version)

(assert (=> b!5189865 (= res!2204311 (not ((_ is Cons!60339) zl!343)))))

(declare-fun lt!2137076 () Bool)

(declare-fun r!7292 () Regex!14721)

(declare-datatypes ((List!60464 0))(
  ( (Nil!60340) (Cons!60340 (h!66788 C!29712) (t!373617 List!60464)) )
))
(declare-fun s!2326 () List!60464)

(declare-fun matchRSpec!1824 (Regex!14721 List!60464) Bool)

(assert (=> b!5189865 (= lt!2137076 (matchRSpec!1824 r!7292 s!2326))))

(declare-fun matchR!6906 (Regex!14721 List!60464) Bool)

(assert (=> b!5189865 (= lt!2137076 (matchR!6906 r!7292 s!2326))))

(declare-datatypes ((Unit!152276 0))(
  ( (Unit!152277) )
))
(declare-fun lt!2137081 () Unit!152276)

(declare-fun mainMatchTheorem!1824 (Regex!14721 List!60464) Unit!152276)

(assert (=> b!5189865 (= lt!2137081 (mainMatchTheorem!1824 r!7292 s!2326))))

(declare-fun b!5189866 () Bool)

(declare-fun tp!1455937 () Bool)

(assert (=> b!5189866 (= e!3232787 tp!1455937)))

(declare-fun b!5189867 () Bool)

(declare-fun e!3232785 () Bool)

(declare-fun tp!1455940 () Bool)

(assert (=> b!5189867 (= e!3232785 tp!1455940)))

(declare-fun b!5189868 () Bool)

(declare-fun res!2204317 () Bool)

(assert (=> b!5189868 (=> (not res!2204317) (not e!3232788))))

(declare-fun unfocusZipper!463 (List!60463) Regex!14721)

(assert (=> b!5189868 (= res!2204317 (= r!7292 (unfocusZipper!463 zl!343)))))

(declare-fun b!5189869 () Bool)

(declare-fun res!2204310 () Bool)

(assert (=> b!5189869 (=> res!2204310 e!3232791)))

(assert (=> b!5189869 (= res!2204310 (not ((_ is Cons!60338) (exprs!4605 (h!66787 zl!343)))))))

(declare-fun b!5189871 () Bool)

(declare-fun e!3232789 () Bool)

(assert (=> b!5189871 (= e!3232791 e!3232789)))

(declare-fun res!2204312 () Bool)

(assert (=> b!5189871 (=> res!2204312 e!3232789)))

(declare-fun lt!2137075 () Bool)

(declare-fun lt!2137073 () Bool)

(assert (=> b!5189871 (= res!2204312 (or (not (= lt!2137076 (or lt!2137075 lt!2137073))) ((_ is Nil!60340) s!2326)))))

(assert (=> b!5189871 (= lt!2137073 (matchRSpec!1824 (regTwo!29955 r!7292) s!2326))))

(assert (=> b!5189871 (= lt!2137073 (matchR!6906 (regTwo!29955 r!7292) s!2326))))

(declare-fun lt!2137074 () Unit!152276)

(assert (=> b!5189871 (= lt!2137074 (mainMatchTheorem!1824 (regTwo!29955 r!7292) s!2326))))

(assert (=> b!5189871 (= lt!2137075 (matchRSpec!1824 (regOne!29955 r!7292) s!2326))))

(assert (=> b!5189871 (= lt!2137075 (matchR!6906 (regOne!29955 r!7292) s!2326))))

(declare-fun lt!2137079 () Unit!152276)

(assert (=> b!5189871 (= lt!2137079 (mainMatchTheorem!1824 (regOne!29955 r!7292) s!2326))))

(declare-fun b!5189872 () Bool)

(declare-fun tp!1455939 () Bool)

(declare-fun tp!1455938 () Bool)

(assert (=> b!5189872 (= e!3232787 (and tp!1455939 tp!1455938))))

(declare-fun setElem!32746 () Context!8210)

(declare-fun tp!1455941 () Bool)

(declare-fun setNonEmpty!32746 () Bool)

(assert (=> setNonEmpty!32746 (= setRes!32746 (and tp!1455941 (inv!80049 setElem!32746) e!3232785))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8210))

(declare-fun setRest!32746 () (InoxSet Context!8210))

(assert (=> setNonEmpty!32746 (= z!1189 ((_ map or) (store ((as const (Array Context!8210 Bool)) false) setElem!32746 true) setRest!32746))))

(declare-fun b!5189873 () Bool)

(declare-fun res!2204309 () Bool)

(assert (=> b!5189873 (=> (not res!2204309) (not e!3232788))))

(declare-fun toList!8505 ((InoxSet Context!8210)) List!60463)

(assert (=> b!5189873 (= res!2204309 (= (toList!8505 z!1189) zl!343))))

(declare-fun b!5189874 () Bool)

(declare-fun tp_is_empty!38695 () Bool)

(assert (=> b!5189874 (= e!3232787 tp_is_empty!38695)))

(declare-fun b!5189875 () Bool)

(declare-fun res!2204318 () Bool)

(assert (=> b!5189875 (=> res!2204318 e!3232791)))

(declare-fun isEmpty!32302 (List!60463) Bool)

(assert (=> b!5189875 (= res!2204318 (not (isEmpty!32302 (t!373616 zl!343))))))

(declare-fun b!5189876 () Bool)

(declare-fun res!2204316 () Bool)

(assert (=> b!5189876 (=> res!2204316 e!3232791)))

(declare-fun generalisedUnion!650 (List!60462) Regex!14721)

(declare-fun unfocusZipperList!163 (List!60463) List!60462)

(assert (=> b!5189876 (= res!2204316 (not (= r!7292 (generalisedUnion!650 (unfocusZipperList!163 zl!343)))))))

(declare-fun b!5189877 () Bool)

(declare-fun e!3232784 () Bool)

(declare-fun tp!1455933 () Bool)

(assert (=> b!5189877 (= e!3232784 (and tp_is_empty!38695 tp!1455933))))

(declare-fun b!5189878 () Bool)

(declare-fun res!2204313 () Bool)

(assert (=> b!5189878 (=> res!2204313 e!3232791)))

(assert (=> b!5189878 (= res!2204313 (or ((_ is EmptyExpr!14721) r!7292) ((_ is EmptyLang!14721) r!7292) ((_ is ElementMatch!14721) r!7292) (not ((_ is Union!14721) r!7292))))))

(declare-fun b!5189879 () Bool)

(declare-fun e!3232783 () Bool)

(assert (=> b!5189879 (= e!3232783 true)))

(declare-fun lt!2137078 () (InoxSet Context!8210))

(declare-fun lt!2137077 () Context!8210)

(declare-fun derivationStepZipperDown!190 (Regex!14721 Context!8210 C!29712) (InoxSet Context!8210))

(assert (=> b!5189879 (= lt!2137078 (derivationStepZipperDown!190 (regTwo!29955 r!7292) lt!2137077 (h!66788 s!2326)))))

(declare-fun lt!2137080 () (InoxSet Context!8210))

(assert (=> b!5189879 (= lt!2137080 (derivationStepZipperDown!190 (regOne!29955 r!7292) lt!2137077 (h!66788 s!2326)))))

(declare-fun b!5189880 () Bool)

(assert (=> b!5189880 (= e!3232789 e!3232783)))

(declare-fun res!2204314 () Bool)

(assert (=> b!5189880 (=> res!2204314 e!3232783)))

(declare-fun derivationStepZipperUp!111 (Context!8210 C!29712) (InoxSet Context!8210))

(assert (=> b!5189880 (= res!2204314 (not (= (derivationStepZipperUp!111 (Context!8211 (Cons!60338 r!7292 Nil!60338)) (h!66788 s!2326)) (derivationStepZipperDown!190 r!7292 lt!2137077 (h!66788 s!2326)))))))

(assert (=> b!5189880 (= lt!2137077 (Context!8211 Nil!60338))))

(declare-fun b!5189881 () Bool)

(declare-fun res!2204308 () Bool)

(assert (=> b!5189881 (=> res!2204308 e!3232791)))

(declare-fun generalisedConcat!390 (List!60462) Regex!14721)

(assert (=> b!5189881 (= res!2204308 (not (= r!7292 (generalisedConcat!390 (exprs!4605 (h!66787 zl!343))))))))

(declare-fun b!5189870 () Bool)

(declare-fun tp!1455932 () Bool)

(assert (=> b!5189870 (= e!3232786 tp!1455932)))

(declare-fun res!2204315 () Bool)

(assert (=> start!549382 (=> (not res!2204315) (not e!3232788))))

(declare-fun validRegex!6457 (Regex!14721) Bool)

(assert (=> start!549382 (= res!2204315 (validRegex!6457 r!7292))))

(assert (=> start!549382 e!3232788))

(assert (=> start!549382 e!3232787))

(declare-fun condSetEmpty!32746 () Bool)

(assert (=> start!549382 (= condSetEmpty!32746 (= z!1189 ((as const (Array Context!8210 Bool)) false)))))

(assert (=> start!549382 setRes!32746))

(assert (=> start!549382 e!3232790))

(assert (=> start!549382 e!3232784))

(assert (= (and start!549382 res!2204315) b!5189873))

(assert (= (and b!5189873 res!2204309) b!5189868))

(assert (= (and b!5189868 res!2204317) b!5189865))

(assert (= (and b!5189865 (not res!2204311)) b!5189875))

(assert (= (and b!5189875 (not res!2204318)) b!5189881))

(assert (= (and b!5189881 (not res!2204308)) b!5189869))

(assert (= (and b!5189869 (not res!2204310)) b!5189876))

(assert (= (and b!5189876 (not res!2204316)) b!5189878))

(assert (= (and b!5189878 (not res!2204313)) b!5189871))

(assert (= (and b!5189871 (not res!2204312)) b!5189880))

(assert (= (and b!5189880 (not res!2204314)) b!5189879))

(assert (= (and start!549382 ((_ is ElementMatch!14721) r!7292)) b!5189874))

(assert (= (and start!549382 ((_ is Concat!23566) r!7292)) b!5189872))

(assert (= (and start!549382 ((_ is Star!14721) r!7292)) b!5189866))

(assert (= (and start!549382 ((_ is Union!14721) r!7292)) b!5189864))

(assert (= (and start!549382 condSetEmpty!32746) setIsEmpty!32746))

(assert (= (and start!549382 (not condSetEmpty!32746)) setNonEmpty!32746))

(assert (= setNonEmpty!32746 b!5189867))

(assert (= b!5189863 b!5189870))

(assert (= (and start!549382 ((_ is Cons!60339) zl!343)) b!5189863))

(assert (= (and start!549382 ((_ is Cons!60340) s!2326)) b!5189877))

(declare-fun m!6246270 () Bool)

(assert (=> b!5189865 m!6246270))

(declare-fun m!6246272 () Bool)

(assert (=> b!5189865 m!6246272))

(declare-fun m!6246274 () Bool)

(assert (=> b!5189865 m!6246274))

(declare-fun m!6246276 () Bool)

(assert (=> start!549382 m!6246276))

(declare-fun m!6246278 () Bool)

(assert (=> b!5189871 m!6246278))

(declare-fun m!6246280 () Bool)

(assert (=> b!5189871 m!6246280))

(declare-fun m!6246282 () Bool)

(assert (=> b!5189871 m!6246282))

(declare-fun m!6246284 () Bool)

(assert (=> b!5189871 m!6246284))

(declare-fun m!6246286 () Bool)

(assert (=> b!5189871 m!6246286))

(declare-fun m!6246288 () Bool)

(assert (=> b!5189871 m!6246288))

(declare-fun m!6246290 () Bool)

(assert (=> b!5189880 m!6246290))

(declare-fun m!6246292 () Bool)

(assert (=> b!5189880 m!6246292))

(declare-fun m!6246294 () Bool)

(assert (=> b!5189868 m!6246294))

(declare-fun m!6246296 () Bool)

(assert (=> b!5189881 m!6246296))

(declare-fun m!6246298 () Bool)

(assert (=> b!5189879 m!6246298))

(declare-fun m!6246300 () Bool)

(assert (=> b!5189879 m!6246300))

(declare-fun m!6246302 () Bool)

(assert (=> setNonEmpty!32746 m!6246302))

(declare-fun m!6246304 () Bool)

(assert (=> b!5189863 m!6246304))

(declare-fun m!6246306 () Bool)

(assert (=> b!5189875 m!6246306))

(declare-fun m!6246308 () Bool)

(assert (=> b!5189873 m!6246308))

(declare-fun m!6246310 () Bool)

(assert (=> b!5189876 m!6246310))

(assert (=> b!5189876 m!6246310))

(declare-fun m!6246312 () Bool)

(assert (=> b!5189876 m!6246312))

(check-sat (not start!549382) (not b!5189879) (not b!5189872) (not b!5189877) (not b!5189866) (not b!5189876) (not b!5189867) (not b!5189881) (not b!5189873) (not b!5189870) tp_is_empty!38695 (not b!5189868) (not b!5189871) (not b!5189880) (not b!5189875) (not b!5189864) (not b!5189865) (not setNonEmpty!32746) (not b!5189863))
(check-sat)
