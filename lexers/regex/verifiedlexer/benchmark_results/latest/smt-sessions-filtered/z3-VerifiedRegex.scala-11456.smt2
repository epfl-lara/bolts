; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!620236 () Bool)

(assert start!620236)

(declare-fun b!6223092 () Bool)

(assert (=> b!6223092 true))

(assert (=> b!6223092 true))

(declare-fun lambda!340180 () Int)

(declare-fun lambda!340179 () Int)

(assert (=> b!6223092 (not (= lambda!340180 lambda!340179))))

(assert (=> b!6223092 true))

(assert (=> b!6223092 true))

(declare-fun b!6223098 () Bool)

(assert (=> b!6223098 true))

(declare-fun b!6223073 () Bool)

(declare-fun e!3787999 () Bool)

(declare-fun tp!1735943 () Bool)

(assert (=> b!6223073 (= e!3787999 tp!1735943)))

(declare-fun b!6223074 () Bool)

(declare-fun e!3788002 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32588 0))(
  ( (C!32589 (val!25996 Int)) )
))
(declare-datatypes ((Regex!16159 0))(
  ( (ElementMatch!16159 (c!1124503 C!32588)) (Concat!25004 (regOne!32830 Regex!16159) (regTwo!32830 Regex!16159)) (EmptyExpr!16159) (Star!16159 (reg!16488 Regex!16159)) (EmptyLang!16159) (Union!16159 (regOne!32831 Regex!16159) (regTwo!32831 Regex!16159)) )
))
(declare-datatypes ((List!64776 0))(
  ( (Nil!64652) (Cons!64652 (h!71100 Regex!16159) (t!378310 List!64776)) )
))
(declare-datatypes ((Context!11086 0))(
  ( (Context!11087 (exprs!6043 List!64776)) )
))
(declare-fun lt!2345247 () (InoxSet Context!11086))

(declare-datatypes ((List!64777 0))(
  ( (Nil!64653) (Cons!64653 (h!71101 C!32588) (t!378311 List!64777)) )
))
(declare-fun s!2326 () List!64777)

(declare-fun matchZipper!2171 ((InoxSet Context!11086) List!64777) Bool)

(assert (=> b!6223074 (= e!3788002 (matchZipper!2171 lt!2345247 (t!378311 s!2326)))))

(declare-fun b!6223075 () Bool)

(declare-datatypes ((Unit!157967 0))(
  ( (Unit!157968) )
))
(declare-fun e!3788004 () Unit!157967)

(declare-fun Unit!157969 () Unit!157967)

(assert (=> b!6223075 (= e!3788004 Unit!157969)))

(declare-fun b!6223076 () Bool)

(declare-fun e!3787998 () Bool)

(declare-fun e!3788006 () Bool)

(assert (=> b!6223076 (= e!3787998 (not e!3788006))))

(declare-fun res!2571976 () Bool)

(assert (=> b!6223076 (=> res!2571976 e!3788006)))

(declare-datatypes ((List!64778 0))(
  ( (Nil!64654) (Cons!64654 (h!71102 Context!11086) (t!378312 List!64778)) )
))
(declare-fun zl!343 () List!64778)

(get-info :version)

(assert (=> b!6223076 (= res!2571976 (not ((_ is Cons!64654) zl!343)))))

(declare-fun lt!2345239 () Bool)

(declare-fun r!7292 () Regex!16159)

(declare-fun matchRSpec!3260 (Regex!16159 List!64777) Bool)

(assert (=> b!6223076 (= lt!2345239 (matchRSpec!3260 r!7292 s!2326))))

(declare-fun matchR!8342 (Regex!16159 List!64777) Bool)

(assert (=> b!6223076 (= lt!2345239 (matchR!8342 r!7292 s!2326))))

(declare-fun lt!2345254 () Unit!157967)

(declare-fun mainMatchTheorem!3260 (Regex!16159 List!64777) Unit!157967)

(assert (=> b!6223076 (= lt!2345254 (mainMatchTheorem!3260 r!7292 s!2326))))

(declare-fun b!6223077 () Bool)

(declare-fun e!3788003 () Bool)

(declare-fun lt!2345241 () (InoxSet Context!11086))

(assert (=> b!6223077 (= e!3788003 (not (matchZipper!2171 lt!2345241 (t!378311 s!2326))))))

(declare-fun b!6223078 () Bool)

(declare-fun res!2571958 () Bool)

(assert (=> b!6223078 (=> (not res!2571958) (not e!3787998))))

(declare-fun unfocusZipper!1901 (List!64778) Regex!16159)

(assert (=> b!6223078 (= res!2571958 (= r!7292 (unfocusZipper!1901 zl!343)))))

(declare-fun b!6223079 () Bool)

(declare-fun res!2571967 () Bool)

(declare-fun e!3788009 () Bool)

(assert (=> b!6223079 (=> res!2571967 e!3788009)))

(declare-fun nullable!6152 (Regex!16159) Bool)

(assert (=> b!6223079 (= res!2571967 (not (nullable!6152 (regOne!32830 (regOne!32830 r!7292)))))))

(declare-fun b!6223080 () Bool)

(declare-fun res!2571962 () Bool)

(assert (=> b!6223080 (=> res!2571962 e!3788006)))

(declare-fun generalisedUnion!2003 (List!64776) Regex!16159)

(declare-fun unfocusZipperList!1580 (List!64778) List!64776)

(assert (=> b!6223080 (= res!2571962 (not (= r!7292 (generalisedUnion!2003 (unfocusZipperList!1580 zl!343)))))))

(declare-fun b!6223081 () Bool)

(declare-fun e!3788011 () Bool)

(declare-fun e!3788001 () Bool)

(assert (=> b!6223081 (= e!3788011 e!3788001)))

(declare-fun res!2571971 () Bool)

(assert (=> b!6223081 (=> res!2571971 e!3788001)))

(assert (=> b!6223081 (= res!2571971 (nullable!6152 (regTwo!32830 (regOne!32830 r!7292))))))

(declare-fun lt!2345242 () Context!11086)

(declare-fun lambda!340181 () Int)

(declare-fun lt!2345238 () (InoxSet Context!11086))

(declare-fun flatMap!1664 ((InoxSet Context!11086) Int) (InoxSet Context!11086))

(declare-fun derivationStepZipperUp!1333 (Context!11086 C!32588) (InoxSet Context!11086))

(assert (=> b!6223081 (= (flatMap!1664 lt!2345238 lambda!340181) (derivationStepZipperUp!1333 lt!2345242 (h!71101 s!2326)))))

(declare-fun lt!2345251 () Unit!157967)

(declare-fun lemmaFlatMapOnSingletonSet!1190 ((InoxSet Context!11086) Context!11086 Int) Unit!157967)

(assert (=> b!6223081 (= lt!2345251 (lemmaFlatMapOnSingletonSet!1190 lt!2345238 lt!2345242 lambda!340181))))

(declare-fun b!6223082 () Bool)

(declare-fun res!2571957 () Bool)

(assert (=> b!6223082 (=> res!2571957 e!3788006)))

(assert (=> b!6223082 (= res!2571957 (or ((_ is EmptyExpr!16159) r!7292) ((_ is EmptyLang!16159) r!7292) ((_ is ElementMatch!16159) r!7292) ((_ is Union!16159) r!7292) (not ((_ is Concat!25004) r!7292))))))

(declare-fun b!6223083 () Bool)

(declare-fun res!2571969 () Bool)

(assert (=> b!6223083 (=> res!2571969 e!3788006)))

(assert (=> b!6223083 (= res!2571969 (not ((_ is Cons!64652) (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223084 () Bool)

(declare-fun res!2571961 () Bool)

(assert (=> b!6223084 (=> res!2571961 e!3788006)))

(declare-fun isEmpty!36662 (List!64778) Bool)

(assert (=> b!6223084 (= res!2571961 (not (isEmpty!36662 (t!378312 zl!343))))))

(declare-fun res!2571968 () Bool)

(assert (=> start!620236 (=> (not res!2571968) (not e!3787998))))

(declare-fun validRegex!7895 (Regex!16159) Bool)

(assert (=> start!620236 (= res!2571968 (validRegex!7895 r!7292))))

(assert (=> start!620236 e!3787998))

(declare-fun e!3788008 () Bool)

(assert (=> start!620236 e!3788008))

(declare-fun condSetEmpty!42278 () Bool)

(declare-fun z!1189 () (InoxSet Context!11086))

(assert (=> start!620236 (= condSetEmpty!42278 (= z!1189 ((as const (Array Context!11086 Bool)) false)))))

(declare-fun setRes!42278 () Bool)

(assert (=> start!620236 setRes!42278))

(declare-fun e!3788012 () Bool)

(assert (=> start!620236 e!3788012))

(declare-fun e!3788010 () Bool)

(assert (=> start!620236 e!3788010))

(declare-fun tp!1735941 () Bool)

(declare-fun b!6223085 () Bool)

(declare-fun e!3788005 () Bool)

(declare-fun inv!83644 (Context!11086) Bool)

(assert (=> b!6223085 (= e!3788012 (and (inv!83644 (h!71102 zl!343)) e!3788005 tp!1735941))))

(declare-fun b!6223086 () Bool)

(declare-fun e!3788013 () Bool)

(declare-fun e!3787997 () Bool)

(assert (=> b!6223086 (= e!3788013 e!3787997)))

(declare-fun res!2571966 () Bool)

(assert (=> b!6223086 (=> res!2571966 e!3787997)))

(assert (=> b!6223086 (= res!2571966 e!3788003)))

(declare-fun res!2571974 () Bool)

(assert (=> b!6223086 (=> (not res!2571974) (not e!3788003))))

(declare-fun lt!2345249 () (InoxSet Context!11086))

(declare-fun lt!2345230 () Bool)

(assert (=> b!6223086 (= res!2571974 (not (= (matchZipper!2171 lt!2345249 (t!378311 s!2326)) lt!2345230)))))

(declare-fun lt!2345232 () (InoxSet Context!11086))

(declare-fun e!3788000 () Bool)

(assert (=> b!6223086 (= (matchZipper!2171 lt!2345232 (t!378311 s!2326)) e!3788000)))

(declare-fun res!2571964 () Bool)

(assert (=> b!6223086 (=> res!2571964 e!3788000)))

(assert (=> b!6223086 (= res!2571964 lt!2345230)))

(declare-fun lt!2345250 () (InoxSet Context!11086))

(assert (=> b!6223086 (= lt!2345230 (matchZipper!2171 lt!2345250 (t!378311 s!2326)))))

(declare-fun lt!2345246 () Unit!157967)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!990 ((InoxSet Context!11086) (InoxSet Context!11086) List!64777) Unit!157967)

(assert (=> b!6223086 (= lt!2345246 (lemmaZipperConcatMatchesSameAsBothZippers!990 lt!2345250 lt!2345241 (t!378311 s!2326)))))

(declare-fun b!6223087 () Bool)

(declare-fun Unit!157970 () Unit!157967)

(assert (=> b!6223087 (= e!3788004 Unit!157970)))

(declare-fun lt!2345244 () Unit!157967)

(assert (=> b!6223087 (= lt!2345244 (lemmaZipperConcatMatchesSameAsBothZippers!990 lt!2345249 lt!2345247 (t!378311 s!2326)))))

(declare-fun res!2571963 () Bool)

(assert (=> b!6223087 (= res!2571963 (matchZipper!2171 lt!2345249 (t!378311 s!2326)))))

(assert (=> b!6223087 (=> res!2571963 e!3788002)))

(assert (=> b!6223087 (= (matchZipper!2171 ((_ map or) lt!2345249 lt!2345247) (t!378311 s!2326)) e!3788002)))

(declare-fun b!6223088 () Bool)

(declare-fun res!2571975 () Bool)

(assert (=> b!6223088 (=> (not res!2571975) (not e!3787998))))

(declare-fun toList!9943 ((InoxSet Context!11086)) List!64778)

(assert (=> b!6223088 (= res!2571975 (= (toList!9943 z!1189) zl!343))))

(declare-fun b!6223089 () Bool)

(declare-fun res!2571960 () Bool)

(assert (=> b!6223089 (=> res!2571960 e!3788006)))

(declare-fun generalisedConcat!1756 (List!64776) Regex!16159)

(assert (=> b!6223089 (= res!2571960 (not (= r!7292 (generalisedConcat!1756 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun b!6223090 () Bool)

(declare-fun tp!1735942 () Bool)

(assert (=> b!6223090 (= e!3788005 tp!1735942)))

(declare-fun b!6223091 () Bool)

(assert (=> b!6223091 (= e!3788009 e!3788013)))

(declare-fun res!2571970 () Bool)

(assert (=> b!6223091 (=> res!2571970 e!3788013)))

(assert (=> b!6223091 (= res!2571970 (not (= lt!2345249 lt!2345232)))))

(assert (=> b!6223091 (= lt!2345232 ((_ map or) lt!2345250 lt!2345241))))

(declare-fun lt!2345243 () Context!11086)

(declare-fun derivationStepZipperDown!1407 (Regex!16159 Context!11086 C!32588) (InoxSet Context!11086))

(assert (=> b!6223091 (= lt!2345241 (derivationStepZipperDown!1407 (regTwo!32830 (regOne!32830 r!7292)) lt!2345243 (h!71101 s!2326)))))

(assert (=> b!6223091 (= lt!2345250 (derivationStepZipperDown!1407 (regOne!32830 (regOne!32830 r!7292)) lt!2345242 (h!71101 s!2326)))))

(declare-fun lt!2345240 () List!64776)

(assert (=> b!6223091 (= lt!2345242 (Context!11087 lt!2345240))))

(assert (=> b!6223091 (= lt!2345240 (Cons!64652 (regTwo!32830 (regOne!32830 r!7292)) (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun e!3788007 () Bool)

(assert (=> b!6223092 (= e!3788006 e!3788007)))

(declare-fun res!2571965 () Bool)

(assert (=> b!6223092 (=> res!2571965 e!3788007)))

(declare-fun lt!2345248 () Bool)

(assert (=> b!6223092 (= res!2571965 (or (not (= lt!2345239 lt!2345248)) ((_ is Nil!64653) s!2326)))))

(declare-fun Exists!3229 (Int) Bool)

(assert (=> b!6223092 (= (Exists!3229 lambda!340179) (Exists!3229 lambda!340180))))

(declare-fun lt!2345252 () Unit!157967)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1766 (Regex!16159 Regex!16159 List!64777) Unit!157967)

(assert (=> b!6223092 (= lt!2345252 (lemmaExistCutMatchRandMatchRSpecEquivalent!1766 (regOne!32830 r!7292) (regTwo!32830 r!7292) s!2326))))

(assert (=> b!6223092 (= lt!2345248 (Exists!3229 lambda!340179))))

(declare-datatypes ((tuple2!66276 0))(
  ( (tuple2!66277 (_1!36441 List!64777) (_2!36441 List!64777)) )
))
(declare-datatypes ((Option!16050 0))(
  ( (None!16049) (Some!16049 (v!52195 tuple2!66276)) )
))
(declare-fun isDefined!12753 (Option!16050) Bool)

(declare-fun findConcatSeparation!2464 (Regex!16159 Regex!16159 List!64777 List!64777 List!64777) Option!16050)

(assert (=> b!6223092 (= lt!2345248 (isDefined!12753 (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) Nil!64653 s!2326 s!2326)))))

(declare-fun lt!2345231 () Unit!157967)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2228 (Regex!16159 Regex!16159 List!64777) Unit!157967)

(assert (=> b!6223092 (= lt!2345231 (lemmaFindConcatSeparationEquivalentToExists!2228 (regOne!32830 r!7292) (regTwo!32830 r!7292) s!2326))))

(declare-fun b!6223093 () Bool)

(assert (=> b!6223093 (= e!3788001 (inv!83644 lt!2345243))))

(declare-fun setNonEmpty!42278 () Bool)

(declare-fun setElem!42278 () Context!11086)

(declare-fun tp!1735946 () Bool)

(assert (=> setNonEmpty!42278 (= setRes!42278 (and tp!1735946 (inv!83644 setElem!42278) e!3787999))))

(declare-fun setRest!42278 () (InoxSet Context!11086))

(assert (=> setNonEmpty!42278 (= z!1189 ((_ map or) (store ((as const (Array Context!11086 Bool)) false) setElem!42278 true) setRest!42278))))

(declare-fun b!6223094 () Bool)

(declare-fun tp!1735945 () Bool)

(declare-fun tp!1735939 () Bool)

(assert (=> b!6223094 (= e!3788008 (and tp!1735945 tp!1735939))))

(declare-fun b!6223095 () Bool)

(declare-fun res!2571973 () Bool)

(assert (=> b!6223095 (=> res!2571973 e!3788007)))

(declare-fun isEmpty!36663 (List!64776) Bool)

(assert (=> b!6223095 (= res!2571973 (isEmpty!36663 (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223096 () Bool)

(declare-fun tp!1735938 () Bool)

(declare-fun tp!1735940 () Bool)

(assert (=> b!6223096 (= e!3788008 (and tp!1735938 tp!1735940))))

(declare-fun b!6223097 () Bool)

(declare-fun tp!1735937 () Bool)

(assert (=> b!6223097 (= e!3788008 tp!1735937)))

(assert (=> b!6223098 (= e!3788007 e!3788009)))

(declare-fun res!2571972 () Bool)

(assert (=> b!6223098 (=> res!2571972 e!3788009)))

(assert (=> b!6223098 (= res!2571972 (or (and ((_ is ElementMatch!16159) (regOne!32830 r!7292)) (= (c!1124503 (regOne!32830 r!7292)) (h!71101 s!2326))) ((_ is Union!16159) (regOne!32830 r!7292)) (not ((_ is Concat!25004) (regOne!32830 r!7292)))))))

(declare-fun lt!2345245 () Unit!157967)

(assert (=> b!6223098 (= lt!2345245 e!3788004)))

(declare-fun c!1124502 () Bool)

(assert (=> b!6223098 (= c!1124502 (nullable!6152 (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(assert (=> b!6223098 (= (flatMap!1664 z!1189 lambda!340181) (derivationStepZipperUp!1333 (h!71102 zl!343) (h!71101 s!2326)))))

(declare-fun lt!2345253 () Unit!157967)

(assert (=> b!6223098 (= lt!2345253 (lemmaFlatMapOnSingletonSet!1190 z!1189 (h!71102 zl!343) lambda!340181))))

(assert (=> b!6223098 (= lt!2345247 (derivationStepZipperUp!1333 lt!2345243 (h!71101 s!2326)))))

(assert (=> b!6223098 (= lt!2345249 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (h!71102 zl!343))) lt!2345243 (h!71101 s!2326)))))

(assert (=> b!6223098 (= lt!2345243 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun lt!2345233 () (InoxSet Context!11086))

(assert (=> b!6223098 (= lt!2345233 (derivationStepZipperUp!1333 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))) (h!71101 s!2326)))))

(declare-fun b!6223099 () Bool)

(assert (=> b!6223099 (= e!3788000 (matchZipper!2171 lt!2345241 (t!378311 s!2326)))))

(declare-fun b!6223100 () Bool)

(assert (=> b!6223100 (= e!3787997 e!3788011)))

(declare-fun res!2571959 () Bool)

(assert (=> b!6223100 (=> res!2571959 e!3788011)))

(declare-fun lt!2345237 () (InoxSet Context!11086))

(declare-fun derivationStepZipper!2125 ((InoxSet Context!11086) C!32588) (InoxSet Context!11086))

(assert (=> b!6223100 (= res!2571959 (not (= (derivationStepZipper!2125 lt!2345237 (h!71101 s!2326)) ((_ map or) lt!2345250 (derivationStepZipperUp!1333 lt!2345242 (h!71101 s!2326))))))))

(declare-fun lt!2345235 () Context!11086)

(assert (=> b!6223100 (= (flatMap!1664 lt!2345237 lambda!340181) (derivationStepZipperUp!1333 lt!2345235 (h!71101 s!2326)))))

(declare-fun lt!2345234 () Unit!157967)

(assert (=> b!6223100 (= lt!2345234 (lemmaFlatMapOnSingletonSet!1190 lt!2345237 lt!2345235 lambda!340181))))

(declare-fun lt!2345236 () (InoxSet Context!11086))

(assert (=> b!6223100 (= lt!2345236 (derivationStepZipperUp!1333 lt!2345235 (h!71101 s!2326)))))

(assert (=> b!6223100 (= lt!2345238 (store ((as const (Array Context!11086 Bool)) false) lt!2345242 true))))

(assert (=> b!6223100 (= lt!2345237 (store ((as const (Array Context!11086 Bool)) false) lt!2345235 true))))

(assert (=> b!6223100 (= lt!2345235 (Context!11087 (Cons!64652 (regOne!32830 (regOne!32830 r!7292)) lt!2345240)))))

(declare-fun b!6223101 () Bool)

(declare-fun tp_is_empty!41571 () Bool)

(declare-fun tp!1735944 () Bool)

(assert (=> b!6223101 (= e!3788010 (and tp_is_empty!41571 tp!1735944))))

(declare-fun setIsEmpty!42278 () Bool)

(assert (=> setIsEmpty!42278 setRes!42278))

(declare-fun b!6223102 () Bool)

(assert (=> b!6223102 (= e!3788008 tp_is_empty!41571)))

(assert (= (and start!620236 res!2571968) b!6223088))

(assert (= (and b!6223088 res!2571975) b!6223078))

(assert (= (and b!6223078 res!2571958) b!6223076))

(assert (= (and b!6223076 (not res!2571976)) b!6223084))

(assert (= (and b!6223084 (not res!2571961)) b!6223089))

(assert (= (and b!6223089 (not res!2571960)) b!6223083))

(assert (= (and b!6223083 (not res!2571969)) b!6223080))

(assert (= (and b!6223080 (not res!2571962)) b!6223082))

(assert (= (and b!6223082 (not res!2571957)) b!6223092))

(assert (= (and b!6223092 (not res!2571965)) b!6223095))

(assert (= (and b!6223095 (not res!2571973)) b!6223098))

(assert (= (and b!6223098 c!1124502) b!6223087))

(assert (= (and b!6223098 (not c!1124502)) b!6223075))

(assert (= (and b!6223087 (not res!2571963)) b!6223074))

(assert (= (and b!6223098 (not res!2571972)) b!6223079))

(assert (= (and b!6223079 (not res!2571967)) b!6223091))

(assert (= (and b!6223091 (not res!2571970)) b!6223086))

(assert (= (and b!6223086 (not res!2571964)) b!6223099))

(assert (= (and b!6223086 res!2571974) b!6223077))

(assert (= (and b!6223086 (not res!2571966)) b!6223100))

(assert (= (and b!6223100 (not res!2571959)) b!6223081))

(assert (= (and b!6223081 (not res!2571971)) b!6223093))

(assert (= (and start!620236 ((_ is ElementMatch!16159) r!7292)) b!6223102))

(assert (= (and start!620236 ((_ is Concat!25004) r!7292)) b!6223094))

(assert (= (and start!620236 ((_ is Star!16159) r!7292)) b!6223097))

(assert (= (and start!620236 ((_ is Union!16159) r!7292)) b!6223096))

(assert (= (and start!620236 condSetEmpty!42278) setIsEmpty!42278))

(assert (= (and start!620236 (not condSetEmpty!42278)) setNonEmpty!42278))

(assert (= setNonEmpty!42278 b!6223073))

(assert (= b!6223085 b!6223090))

(assert (= (and start!620236 ((_ is Cons!64654) zl!343)) b!6223085))

(assert (= (and start!620236 ((_ is Cons!64653) s!2326)) b!6223101))

(declare-fun m!7050522 () Bool)

(assert (=> b!6223087 m!7050522))

(declare-fun m!7050524 () Bool)

(assert (=> b!6223087 m!7050524))

(declare-fun m!7050526 () Bool)

(assert (=> b!6223087 m!7050526))

(declare-fun m!7050528 () Bool)

(assert (=> b!6223091 m!7050528))

(declare-fun m!7050530 () Bool)

(assert (=> b!6223091 m!7050530))

(declare-fun m!7050532 () Bool)

(assert (=> b!6223089 m!7050532))

(assert (=> b!6223086 m!7050524))

(declare-fun m!7050534 () Bool)

(assert (=> b!6223086 m!7050534))

(declare-fun m!7050536 () Bool)

(assert (=> b!6223086 m!7050536))

(declare-fun m!7050538 () Bool)

(assert (=> b!6223086 m!7050538))

(declare-fun m!7050540 () Bool)

(assert (=> start!620236 m!7050540))

(declare-fun m!7050542 () Bool)

(assert (=> b!6223093 m!7050542))

(declare-fun m!7050544 () Bool)

(assert (=> b!6223092 m!7050544))

(declare-fun m!7050546 () Bool)

(assert (=> b!6223092 m!7050546))

(declare-fun m!7050548 () Bool)

(assert (=> b!6223092 m!7050548))

(declare-fun m!7050550 () Bool)

(assert (=> b!6223092 m!7050550))

(assert (=> b!6223092 m!7050544))

(declare-fun m!7050552 () Bool)

(assert (=> b!6223092 m!7050552))

(assert (=> b!6223092 m!7050546))

(declare-fun m!7050554 () Bool)

(assert (=> b!6223092 m!7050554))

(declare-fun m!7050556 () Bool)

(assert (=> b!6223077 m!7050556))

(declare-fun m!7050558 () Bool)

(assert (=> b!6223085 m!7050558))

(declare-fun m!7050560 () Bool)

(assert (=> b!6223095 m!7050560))

(assert (=> b!6223099 m!7050556))

(declare-fun m!7050562 () Bool)

(assert (=> b!6223076 m!7050562))

(declare-fun m!7050564 () Bool)

(assert (=> b!6223076 m!7050564))

(declare-fun m!7050566 () Bool)

(assert (=> b!6223076 m!7050566))

(declare-fun m!7050568 () Bool)

(assert (=> b!6223088 m!7050568))

(declare-fun m!7050570 () Bool)

(assert (=> b!6223084 m!7050570))

(declare-fun m!7050572 () Bool)

(assert (=> b!6223081 m!7050572))

(declare-fun m!7050574 () Bool)

(assert (=> b!6223081 m!7050574))

(declare-fun m!7050576 () Bool)

(assert (=> b!6223081 m!7050576))

(declare-fun m!7050578 () Bool)

(assert (=> b!6223081 m!7050578))

(declare-fun m!7050580 () Bool)

(assert (=> setNonEmpty!42278 m!7050580))

(declare-fun m!7050582 () Bool)

(assert (=> b!6223098 m!7050582))

(declare-fun m!7050584 () Bool)

(assert (=> b!6223098 m!7050584))

(declare-fun m!7050586 () Bool)

(assert (=> b!6223098 m!7050586))

(declare-fun m!7050588 () Bool)

(assert (=> b!6223098 m!7050588))

(declare-fun m!7050590 () Bool)

(assert (=> b!6223098 m!7050590))

(declare-fun m!7050592 () Bool)

(assert (=> b!6223098 m!7050592))

(declare-fun m!7050594 () Bool)

(assert (=> b!6223098 m!7050594))

(declare-fun m!7050596 () Bool)

(assert (=> b!6223078 m!7050596))

(declare-fun m!7050598 () Bool)

(assert (=> b!6223080 m!7050598))

(assert (=> b!6223080 m!7050598))

(declare-fun m!7050600 () Bool)

(assert (=> b!6223080 m!7050600))

(declare-fun m!7050602 () Bool)

(assert (=> b!6223100 m!7050602))

(declare-fun m!7050604 () Bool)

(assert (=> b!6223100 m!7050604))

(declare-fun m!7050606 () Bool)

(assert (=> b!6223100 m!7050606))

(declare-fun m!7050608 () Bool)

(assert (=> b!6223100 m!7050608))

(declare-fun m!7050610 () Bool)

(assert (=> b!6223100 m!7050610))

(assert (=> b!6223100 m!7050576))

(declare-fun m!7050612 () Bool)

(assert (=> b!6223100 m!7050612))

(declare-fun m!7050614 () Bool)

(assert (=> b!6223074 m!7050614))

(declare-fun m!7050616 () Bool)

(assert (=> b!6223079 m!7050616))

(check-sat (not b!6223098) (not b!6223077) (not b!6223091) (not b!6223081) (not setNonEmpty!42278) (not b!6223084) (not b!6223074) (not b!6223073) (not b!6223076) (not b!6223088) tp_is_empty!41571 (not b!6223101) (not b!6223080) (not b!6223078) (not start!620236) (not b!6223094) (not b!6223079) (not b!6223096) (not b!6223085) (not b!6223090) (not b!6223099) (not b!6223087) (not b!6223092) (not b!6223093) (not b!6223089) (not b!6223100) (not b!6223095) (not b!6223097) (not b!6223086))
(check-sat)
(get-model)

(declare-fun d!1950853 () Bool)

(declare-fun c!1124615 () Bool)

(declare-fun isEmpty!36666 (List!64777) Bool)

(assert (=> d!1950853 (= c!1124615 (isEmpty!36666 (t!378311 s!2326)))))

(declare-fun e!3788232 () Bool)

(assert (=> d!1950853 (= (matchZipper!2171 lt!2345247 (t!378311 s!2326)) e!3788232)))

(declare-fun b!6223499 () Bool)

(declare-fun nullableZipper!1933 ((InoxSet Context!11086)) Bool)

(assert (=> b!6223499 (= e!3788232 (nullableZipper!1933 lt!2345247))))

(declare-fun b!6223500 () Bool)

(declare-fun head!12826 (List!64777) C!32588)

(declare-fun tail!11911 (List!64777) List!64777)

(assert (=> b!6223500 (= e!3788232 (matchZipper!2171 (derivationStepZipper!2125 lt!2345247 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))))))

(assert (= (and d!1950853 c!1124615) b!6223499))

(assert (= (and d!1950853 (not c!1124615)) b!6223500))

(declare-fun m!7050876 () Bool)

(assert (=> d!1950853 m!7050876))

(declare-fun m!7050878 () Bool)

(assert (=> b!6223499 m!7050878))

(declare-fun m!7050880 () Bool)

(assert (=> b!6223500 m!7050880))

(assert (=> b!6223500 m!7050880))

(declare-fun m!7050882 () Bool)

(assert (=> b!6223500 m!7050882))

(declare-fun m!7050884 () Bool)

(assert (=> b!6223500 m!7050884))

(assert (=> b!6223500 m!7050882))

(assert (=> b!6223500 m!7050884))

(declare-fun m!7050886 () Bool)

(assert (=> b!6223500 m!7050886))

(assert (=> b!6223074 d!1950853))

(declare-fun d!1950859 () Bool)

(assert (=> d!1950859 (= (isEmpty!36662 (t!378312 zl!343)) ((_ is Nil!64654) (t!378312 zl!343)))))

(assert (=> b!6223084 d!1950859))

(declare-fun b!6223519 () Bool)

(declare-fun e!3788253 () Bool)

(declare-fun e!3788247 () Bool)

(assert (=> b!6223519 (= e!3788253 e!3788247)))

(declare-fun c!1124620 () Bool)

(assert (=> b!6223519 (= c!1124620 ((_ is Star!16159) r!7292))))

(declare-fun bm!522535 () Bool)

(declare-fun call!522541 () Bool)

(declare-fun call!522542 () Bool)

(assert (=> bm!522535 (= call!522541 call!522542)))

(declare-fun b!6223520 () Bool)

(declare-fun e!3788248 () Bool)

(assert (=> b!6223520 (= e!3788248 call!522541)))

(declare-fun b!6223521 () Bool)

(declare-fun e!3788251 () Bool)

(assert (=> b!6223521 (= e!3788251 call!522542)))

(declare-fun b!6223523 () Bool)

(declare-fun e!3788250 () Bool)

(assert (=> b!6223523 (= e!3788250 call!522541)))

(declare-fun b!6223524 () Bool)

(declare-fun e!3788249 () Bool)

(assert (=> b!6223524 (= e!3788247 e!3788249)))

(declare-fun c!1124621 () Bool)

(assert (=> b!6223524 (= c!1124621 ((_ is Union!16159) r!7292))))

(declare-fun b!6223525 () Bool)

(assert (=> b!6223525 (= e!3788247 e!3788251)))

(declare-fun res!2572105 () Bool)

(assert (=> b!6223525 (= res!2572105 (not (nullable!6152 (reg!16488 r!7292))))))

(assert (=> b!6223525 (=> (not res!2572105) (not e!3788251))))

(declare-fun bm!522536 () Bool)

(declare-fun call!522540 () Bool)

(assert (=> bm!522536 (= call!522540 (validRegex!7895 (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))))))

(declare-fun bm!522537 () Bool)

(assert (=> bm!522537 (= call!522542 (validRegex!7895 (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))))))

(declare-fun b!6223526 () Bool)

(declare-fun e!3788252 () Bool)

(assert (=> b!6223526 (= e!3788252 e!3788250)))

(declare-fun res!2572107 () Bool)

(assert (=> b!6223526 (=> (not res!2572107) (not e!3788250))))

(assert (=> b!6223526 (= res!2572107 call!522540)))

(declare-fun b!6223527 () Bool)

(declare-fun res!2572106 () Bool)

(assert (=> b!6223527 (=> (not res!2572106) (not e!3788248))))

(assert (=> b!6223527 (= res!2572106 call!522540)))

(assert (=> b!6223527 (= e!3788249 e!3788248)))

(declare-fun d!1950861 () Bool)

(declare-fun res!2572103 () Bool)

(assert (=> d!1950861 (=> res!2572103 e!3788253)))

(assert (=> d!1950861 (= res!2572103 ((_ is ElementMatch!16159) r!7292))))

(assert (=> d!1950861 (= (validRegex!7895 r!7292) e!3788253)))

(declare-fun b!6223522 () Bool)

(declare-fun res!2572104 () Bool)

(assert (=> b!6223522 (=> res!2572104 e!3788252)))

(assert (=> b!6223522 (= res!2572104 (not ((_ is Concat!25004) r!7292)))))

(assert (=> b!6223522 (= e!3788249 e!3788252)))

(assert (= (and d!1950861 (not res!2572103)) b!6223519))

(assert (= (and b!6223519 c!1124620) b!6223525))

(assert (= (and b!6223519 (not c!1124620)) b!6223524))

(assert (= (and b!6223525 res!2572105) b!6223521))

(assert (= (and b!6223524 c!1124621) b!6223527))

(assert (= (and b!6223524 (not c!1124621)) b!6223522))

(assert (= (and b!6223527 res!2572106) b!6223520))

(assert (= (and b!6223522 (not res!2572104)) b!6223526))

(assert (= (and b!6223526 res!2572107) b!6223523))

(assert (= (or b!6223520 b!6223523) bm!522535))

(assert (= (or b!6223527 b!6223526) bm!522536))

(assert (= (or b!6223521 bm!522535) bm!522537))

(declare-fun m!7050888 () Bool)

(assert (=> b!6223525 m!7050888))

(declare-fun m!7050890 () Bool)

(assert (=> bm!522536 m!7050890))

(declare-fun m!7050892 () Bool)

(assert (=> bm!522537 m!7050892))

(assert (=> start!620236 d!1950861))

(declare-fun d!1950863 () Bool)

(declare-fun lambda!340216 () Int)

(declare-fun forall!15273 (List!64776 Int) Bool)

(assert (=> d!1950863 (= (inv!83644 setElem!42278) (forall!15273 (exprs!6043 setElem!42278) lambda!340216))))

(declare-fun bs!1543203 () Bool)

(assert (= bs!1543203 d!1950863))

(declare-fun m!7050894 () Bool)

(assert (=> bs!1543203 m!7050894))

(assert (=> setNonEmpty!42278 d!1950863))

(declare-fun bs!1543204 () Bool)

(declare-fun d!1950865 () Bool)

(assert (= bs!1543204 (and d!1950865 d!1950863)))

(declare-fun lambda!340217 () Int)

(assert (=> bs!1543204 (= lambda!340217 lambda!340216)))

(assert (=> d!1950865 (= (inv!83644 lt!2345243) (forall!15273 (exprs!6043 lt!2345243) lambda!340217))))

(declare-fun bs!1543205 () Bool)

(assert (= bs!1543205 d!1950865))

(declare-fun m!7050896 () Bool)

(assert (=> bs!1543205 m!7050896))

(assert (=> b!6223093 d!1950865))

(declare-fun b!6223546 () Bool)

(declare-fun e!3788267 () Bool)

(assert (=> b!6223546 (= e!3788267 (matchR!8342 (regTwo!32830 r!7292) s!2326))))

(declare-fun d!1950867 () Bool)

(declare-fun e!3788265 () Bool)

(assert (=> d!1950867 e!3788265))

(declare-fun res!2572121 () Bool)

(assert (=> d!1950867 (=> res!2572121 e!3788265)))

(declare-fun e!3788266 () Bool)

(assert (=> d!1950867 (= res!2572121 e!3788266)))

(declare-fun res!2572120 () Bool)

(assert (=> d!1950867 (=> (not res!2572120) (not e!3788266))))

(declare-fun lt!2345308 () Option!16050)

(assert (=> d!1950867 (= res!2572120 (isDefined!12753 lt!2345308))))

(declare-fun e!3788264 () Option!16050)

(assert (=> d!1950867 (= lt!2345308 e!3788264)))

(declare-fun c!1124627 () Bool)

(assert (=> d!1950867 (= c!1124627 e!3788267)))

(declare-fun res!2572122 () Bool)

(assert (=> d!1950867 (=> (not res!2572122) (not e!3788267))))

(assert (=> d!1950867 (= res!2572122 (matchR!8342 (regOne!32830 r!7292) Nil!64653))))

(assert (=> d!1950867 (validRegex!7895 (regOne!32830 r!7292))))

(assert (=> d!1950867 (= (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) Nil!64653 s!2326 s!2326) lt!2345308)))

(declare-fun b!6223547 () Bool)

(declare-fun res!2572118 () Bool)

(assert (=> b!6223547 (=> (not res!2572118) (not e!3788266))))

(declare-fun get!22332 (Option!16050) tuple2!66276)

(assert (=> b!6223547 (= res!2572118 (matchR!8342 (regOne!32830 r!7292) (_1!36441 (get!22332 lt!2345308))))))

(declare-fun b!6223548 () Bool)

(assert (=> b!6223548 (= e!3788264 (Some!16049 (tuple2!66277 Nil!64653 s!2326)))))

(declare-fun b!6223549 () Bool)

(assert (=> b!6223549 (= e!3788265 (not (isDefined!12753 lt!2345308)))))

(declare-fun b!6223550 () Bool)

(declare-fun lt!2345306 () Unit!157967)

(declare-fun lt!2345307 () Unit!157967)

(assert (=> b!6223550 (= lt!2345306 lt!2345307)))

(declare-fun ++!14237 (List!64777 List!64777) List!64777)

(assert (=> b!6223550 (= (++!14237 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (t!378311 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2332 (List!64777 C!32588 List!64777 List!64777) Unit!157967)

(assert (=> b!6223550 (= lt!2345307 (lemmaMoveElementToOtherListKeepsConcatEq!2332 Nil!64653 (h!71101 s!2326) (t!378311 s!2326) s!2326))))

(declare-fun e!3788268 () Option!16050)

(assert (=> b!6223550 (= e!3788268 (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (t!378311 s!2326) s!2326))))

(declare-fun b!6223551 () Bool)

(assert (=> b!6223551 (= e!3788264 e!3788268)))

(declare-fun c!1124626 () Bool)

(assert (=> b!6223551 (= c!1124626 ((_ is Nil!64653) s!2326))))

(declare-fun b!6223552 () Bool)

(declare-fun res!2572119 () Bool)

(assert (=> b!6223552 (=> (not res!2572119) (not e!3788266))))

(assert (=> b!6223552 (= res!2572119 (matchR!8342 (regTwo!32830 r!7292) (_2!36441 (get!22332 lt!2345308))))))

(declare-fun b!6223553 () Bool)

(assert (=> b!6223553 (= e!3788268 None!16049)))

(declare-fun b!6223554 () Bool)

(assert (=> b!6223554 (= e!3788266 (= (++!14237 (_1!36441 (get!22332 lt!2345308)) (_2!36441 (get!22332 lt!2345308))) s!2326))))

(assert (= (and d!1950867 res!2572122) b!6223546))

(assert (= (and d!1950867 c!1124627) b!6223548))

(assert (= (and d!1950867 (not c!1124627)) b!6223551))

(assert (= (and b!6223551 c!1124626) b!6223553))

(assert (= (and b!6223551 (not c!1124626)) b!6223550))

(assert (= (and d!1950867 res!2572120) b!6223547))

(assert (= (and b!6223547 res!2572118) b!6223552))

(assert (= (and b!6223552 res!2572119) b!6223554))

(assert (= (and d!1950867 (not res!2572121)) b!6223549))

(declare-fun m!7050898 () Bool)

(assert (=> b!6223554 m!7050898))

(declare-fun m!7050900 () Bool)

(assert (=> b!6223554 m!7050900))

(declare-fun m!7050902 () Bool)

(assert (=> d!1950867 m!7050902))

(declare-fun m!7050904 () Bool)

(assert (=> d!1950867 m!7050904))

(declare-fun m!7050906 () Bool)

(assert (=> d!1950867 m!7050906))

(declare-fun m!7050908 () Bool)

(assert (=> b!6223546 m!7050908))

(assert (=> b!6223547 m!7050898))

(declare-fun m!7050910 () Bool)

(assert (=> b!6223547 m!7050910))

(assert (=> b!6223549 m!7050902))

(declare-fun m!7050912 () Bool)

(assert (=> b!6223550 m!7050912))

(assert (=> b!6223550 m!7050912))

(declare-fun m!7050914 () Bool)

(assert (=> b!6223550 m!7050914))

(declare-fun m!7050916 () Bool)

(assert (=> b!6223550 m!7050916))

(assert (=> b!6223550 m!7050912))

(declare-fun m!7050918 () Bool)

(assert (=> b!6223550 m!7050918))

(assert (=> b!6223552 m!7050898))

(declare-fun m!7050920 () Bool)

(assert (=> b!6223552 m!7050920))

(assert (=> b!6223092 d!1950867))

(declare-fun d!1950869 () Bool)

(declare-fun choose!46249 (Int) Bool)

(assert (=> d!1950869 (= (Exists!3229 lambda!340179) (choose!46249 lambda!340179))))

(declare-fun bs!1543206 () Bool)

(assert (= bs!1543206 d!1950869))

(declare-fun m!7050922 () Bool)

(assert (=> bs!1543206 m!7050922))

(assert (=> b!6223092 d!1950869))

(declare-fun bs!1543207 () Bool)

(declare-fun d!1950871 () Bool)

(assert (= bs!1543207 (and d!1950871 b!6223092)))

(declare-fun lambda!340222 () Int)

(assert (=> bs!1543207 (= lambda!340222 lambda!340179)))

(assert (=> bs!1543207 (not (= lambda!340222 lambda!340180))))

(assert (=> d!1950871 true))

(assert (=> d!1950871 true))

(assert (=> d!1950871 true))

(declare-fun lambda!340223 () Int)

(assert (=> bs!1543207 (not (= lambda!340223 lambda!340179))))

(assert (=> bs!1543207 (= lambda!340223 lambda!340180)))

(declare-fun bs!1543208 () Bool)

(assert (= bs!1543208 d!1950871))

(assert (=> bs!1543208 (not (= lambda!340223 lambda!340222))))

(assert (=> d!1950871 true))

(assert (=> d!1950871 true))

(assert (=> d!1950871 true))

(assert (=> d!1950871 (= (Exists!3229 lambda!340222) (Exists!3229 lambda!340223))))

(declare-fun lt!2345311 () Unit!157967)

(declare-fun choose!46250 (Regex!16159 Regex!16159 List!64777) Unit!157967)

(assert (=> d!1950871 (= lt!2345311 (choose!46250 (regOne!32830 r!7292) (regTwo!32830 r!7292) s!2326))))

(assert (=> d!1950871 (validRegex!7895 (regOne!32830 r!7292))))

(assert (=> d!1950871 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1766 (regOne!32830 r!7292) (regTwo!32830 r!7292) s!2326) lt!2345311)))

(declare-fun m!7050924 () Bool)

(assert (=> bs!1543208 m!7050924))

(declare-fun m!7050926 () Bool)

(assert (=> bs!1543208 m!7050926))

(declare-fun m!7050928 () Bool)

(assert (=> bs!1543208 m!7050928))

(assert (=> bs!1543208 m!7050906))

(assert (=> b!6223092 d!1950871))

(declare-fun d!1950873 () Bool)

(declare-fun isEmpty!36667 (Option!16050) Bool)

(assert (=> d!1950873 (= (isDefined!12753 (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) Nil!64653 s!2326 s!2326)) (not (isEmpty!36667 (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) Nil!64653 s!2326 s!2326))))))

(declare-fun bs!1543209 () Bool)

(assert (= bs!1543209 d!1950873))

(assert (=> bs!1543209 m!7050546))

(declare-fun m!7050930 () Bool)

(assert (=> bs!1543209 m!7050930))

(assert (=> b!6223092 d!1950873))

(declare-fun bs!1543210 () Bool)

(declare-fun d!1950875 () Bool)

(assert (= bs!1543210 (and d!1950875 b!6223092)))

(declare-fun lambda!340226 () Int)

(assert (=> bs!1543210 (= lambda!340226 lambda!340179)))

(assert (=> bs!1543210 (not (= lambda!340226 lambda!340180))))

(declare-fun bs!1543211 () Bool)

(assert (= bs!1543211 (and d!1950875 d!1950871)))

(assert (=> bs!1543211 (= lambda!340226 lambda!340222)))

(assert (=> bs!1543211 (not (= lambda!340226 lambda!340223))))

(assert (=> d!1950875 true))

(assert (=> d!1950875 true))

(assert (=> d!1950875 true))

(assert (=> d!1950875 (= (isDefined!12753 (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) Nil!64653 s!2326 s!2326)) (Exists!3229 lambda!340226))))

(declare-fun lt!2345314 () Unit!157967)

(declare-fun choose!46251 (Regex!16159 Regex!16159 List!64777) Unit!157967)

(assert (=> d!1950875 (= lt!2345314 (choose!46251 (regOne!32830 r!7292) (regTwo!32830 r!7292) s!2326))))

(assert (=> d!1950875 (validRegex!7895 (regOne!32830 r!7292))))

(assert (=> d!1950875 (= (lemmaFindConcatSeparationEquivalentToExists!2228 (regOne!32830 r!7292) (regTwo!32830 r!7292) s!2326) lt!2345314)))

(declare-fun bs!1543212 () Bool)

(assert (= bs!1543212 d!1950875))

(assert (=> bs!1543212 m!7050546))

(declare-fun m!7050932 () Bool)

(assert (=> bs!1543212 m!7050932))

(declare-fun m!7050934 () Bool)

(assert (=> bs!1543212 m!7050934))

(assert (=> bs!1543212 m!7050906))

(assert (=> bs!1543212 m!7050546))

(assert (=> bs!1543212 m!7050548))

(assert (=> b!6223092 d!1950875))

(declare-fun d!1950877 () Bool)

(assert (=> d!1950877 (= (Exists!3229 lambda!340180) (choose!46249 lambda!340180))))

(declare-fun bs!1543213 () Bool)

(assert (= bs!1543213 d!1950877))

(declare-fun m!7050936 () Bool)

(assert (=> bs!1543213 m!7050936))

(assert (=> b!6223092 d!1950877))

(declare-fun d!1950879 () Bool)

(declare-fun nullableFct!2108 (Regex!16159) Bool)

(assert (=> d!1950879 (= (nullable!6152 (regTwo!32830 (regOne!32830 r!7292))) (nullableFct!2108 (regTwo!32830 (regOne!32830 r!7292))))))

(declare-fun bs!1543214 () Bool)

(assert (= bs!1543214 d!1950879))

(declare-fun m!7050938 () Bool)

(assert (=> bs!1543214 m!7050938))

(assert (=> b!6223081 d!1950879))

(declare-fun d!1950881 () Bool)

(declare-fun choose!46252 ((InoxSet Context!11086) Int) (InoxSet Context!11086))

(assert (=> d!1950881 (= (flatMap!1664 lt!2345238 lambda!340181) (choose!46252 lt!2345238 lambda!340181))))

(declare-fun bs!1543215 () Bool)

(assert (= bs!1543215 d!1950881))

(declare-fun m!7050940 () Bool)

(assert (=> bs!1543215 m!7050940))

(assert (=> b!6223081 d!1950881))

(declare-fun b!6223577 () Bool)

(declare-fun e!3788283 () (InoxSet Context!11086))

(declare-fun e!3788282 () (InoxSet Context!11086))

(assert (=> b!6223577 (= e!3788283 e!3788282)))

(declare-fun c!1124633 () Bool)

(assert (=> b!6223577 (= c!1124633 ((_ is Cons!64652) (exprs!6043 lt!2345242)))))

(declare-fun b!6223578 () Bool)

(assert (=> b!6223578 (= e!3788282 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1950883 () Bool)

(declare-fun c!1124632 () Bool)

(declare-fun e!3788281 () Bool)

(assert (=> d!1950883 (= c!1124632 e!3788281)))

(declare-fun res!2572137 () Bool)

(assert (=> d!1950883 (=> (not res!2572137) (not e!3788281))))

(assert (=> d!1950883 (= res!2572137 ((_ is Cons!64652) (exprs!6043 lt!2345242)))))

(assert (=> d!1950883 (= (derivationStepZipperUp!1333 lt!2345242 (h!71101 s!2326)) e!3788283)))

(declare-fun bm!522540 () Bool)

(declare-fun call!522545 () (InoxSet Context!11086))

(assert (=> bm!522540 (= call!522545 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 lt!2345242)) (Context!11087 (t!378310 (exprs!6043 lt!2345242))) (h!71101 s!2326)))))

(declare-fun b!6223579 () Bool)

(assert (=> b!6223579 (= e!3788281 (nullable!6152 (h!71100 (exprs!6043 lt!2345242))))))

(declare-fun b!6223580 () Bool)

(assert (=> b!6223580 (= e!3788282 call!522545)))

(declare-fun b!6223581 () Bool)

(assert (=> b!6223581 (= e!3788283 ((_ map or) call!522545 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 lt!2345242))) (h!71101 s!2326))))))

(assert (= (and d!1950883 res!2572137) b!6223579))

(assert (= (and d!1950883 c!1124632) b!6223581))

(assert (= (and d!1950883 (not c!1124632)) b!6223577))

(assert (= (and b!6223577 c!1124633) b!6223580))

(assert (= (and b!6223577 (not c!1124633)) b!6223578))

(assert (= (or b!6223581 b!6223580) bm!522540))

(declare-fun m!7050942 () Bool)

(assert (=> bm!522540 m!7050942))

(declare-fun m!7050944 () Bool)

(assert (=> b!6223579 m!7050944))

(declare-fun m!7050946 () Bool)

(assert (=> b!6223581 m!7050946))

(assert (=> b!6223081 d!1950883))

(declare-fun d!1950885 () Bool)

(declare-fun dynLambda!25511 (Int Context!11086) (InoxSet Context!11086))

(assert (=> d!1950885 (= (flatMap!1664 lt!2345238 lambda!340181) (dynLambda!25511 lambda!340181 lt!2345242))))

(declare-fun lt!2345317 () Unit!157967)

(declare-fun choose!46253 ((InoxSet Context!11086) Context!11086 Int) Unit!157967)

(assert (=> d!1950885 (= lt!2345317 (choose!46253 lt!2345238 lt!2345242 lambda!340181))))

(assert (=> d!1950885 (= lt!2345238 (store ((as const (Array Context!11086 Bool)) false) lt!2345242 true))))

(assert (=> d!1950885 (= (lemmaFlatMapOnSingletonSet!1190 lt!2345238 lt!2345242 lambda!340181) lt!2345317)))

(declare-fun b_lambda!236613 () Bool)

(assert (=> (not b_lambda!236613) (not d!1950885)))

(declare-fun bs!1543216 () Bool)

(assert (= bs!1543216 d!1950885))

(assert (=> bs!1543216 m!7050574))

(declare-fun m!7050948 () Bool)

(assert (=> bs!1543216 m!7050948))

(declare-fun m!7050950 () Bool)

(assert (=> bs!1543216 m!7050950))

(assert (=> bs!1543216 m!7050610))

(assert (=> b!6223081 d!1950885))

(declare-fun bm!522553 () Bool)

(declare-fun call!522561 () (InoxSet Context!11086))

(declare-fun call!522559 () (InoxSet Context!11086))

(assert (=> bm!522553 (= call!522561 call!522559)))

(declare-fun b!6223604 () Bool)

(declare-fun e!3788298 () (InoxSet Context!11086))

(assert (=> b!6223604 (= e!3788298 call!522561)))

(declare-fun b!6223605 () Bool)

(declare-fun c!1124644 () Bool)

(declare-fun e!3788297 () Bool)

(assert (=> b!6223605 (= c!1124644 e!3788297)))

(declare-fun res!2572140 () Bool)

(assert (=> b!6223605 (=> (not res!2572140) (not e!3788297))))

(assert (=> b!6223605 (= res!2572140 ((_ is Concat!25004) (regTwo!32830 (regOne!32830 r!7292))))))

(declare-fun e!3788299 () (InoxSet Context!11086))

(declare-fun e!3788296 () (InoxSet Context!11086))

(assert (=> b!6223605 (= e!3788299 e!3788296)))

(declare-fun b!6223606 () Bool)

(declare-fun e!3788300 () (InoxSet Context!11086))

(assert (=> b!6223606 (= e!3788300 call!522561)))

(declare-fun b!6223607 () Bool)

(declare-fun e!3788301 () (InoxSet Context!11086))

(assert (=> b!6223607 (= e!3788301 (store ((as const (Array Context!11086 Bool)) false) lt!2345243 true))))

(declare-fun bm!522554 () Bool)

(declare-fun call!522563 () (InoxSet Context!11086))

(assert (=> bm!522554 (= call!522559 call!522563)))

(declare-fun c!1124645 () Bool)

(declare-fun bm!522555 () Bool)

(declare-fun call!522558 () List!64776)

(declare-fun c!1124648 () Bool)

(assert (=> bm!522555 (= call!522563 (derivationStepZipperDown!1407 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292)))))) (ite (or c!1124648 c!1124644) lt!2345243 (Context!11087 call!522558)) (h!71101 s!2326)))))

(declare-fun b!6223608 () Bool)

(declare-fun call!522562 () (InoxSet Context!11086))

(assert (=> b!6223608 (= e!3788299 ((_ map or) call!522562 call!522563))))

(declare-fun d!1950887 () Bool)

(declare-fun c!1124646 () Bool)

(assert (=> d!1950887 (= c!1124646 (and ((_ is ElementMatch!16159) (regTwo!32830 (regOne!32830 r!7292))) (= (c!1124503 (regTwo!32830 (regOne!32830 r!7292))) (h!71101 s!2326))))))

(assert (=> d!1950887 (= (derivationStepZipperDown!1407 (regTwo!32830 (regOne!32830 r!7292)) lt!2345243 (h!71101 s!2326)) e!3788301)))

(declare-fun call!522560 () List!64776)

(declare-fun bm!522556 () Bool)

(assert (=> bm!522556 (= call!522562 (derivationStepZipperDown!1407 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))) (ite c!1124648 lt!2345243 (Context!11087 call!522560)) (h!71101 s!2326)))))

(declare-fun bm!522557 () Bool)

(assert (=> bm!522557 (= call!522558 call!522560)))

(declare-fun bm!522558 () Bool)

(declare-fun $colon$colon!2028 (List!64776 Regex!16159) List!64776)

(assert (=> bm!522558 (= call!522560 ($colon$colon!2028 (exprs!6043 lt!2345243) (ite (or c!1124644 c!1124645) (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (regTwo!32830 (regOne!32830 r!7292)))))))

(declare-fun b!6223609 () Bool)

(declare-fun c!1124647 () Bool)

(assert (=> b!6223609 (= c!1124647 ((_ is Star!16159) (regTwo!32830 (regOne!32830 r!7292))))))

(assert (=> b!6223609 (= e!3788298 e!3788300)))

(declare-fun b!6223610 () Bool)

(assert (=> b!6223610 (= e!3788301 e!3788299)))

(assert (=> b!6223610 (= c!1124648 ((_ is Union!16159) (regTwo!32830 (regOne!32830 r!7292))))))

(declare-fun b!6223611 () Bool)

(assert (=> b!6223611 (= e!3788297 (nullable!6152 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))))))

(declare-fun b!6223612 () Bool)

(assert (=> b!6223612 (= e!3788300 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6223613 () Bool)

(assert (=> b!6223613 (= e!3788296 e!3788298)))

(assert (=> b!6223613 (= c!1124645 ((_ is Concat!25004) (regTwo!32830 (regOne!32830 r!7292))))))

(declare-fun b!6223614 () Bool)

(assert (=> b!6223614 (= e!3788296 ((_ map or) call!522562 call!522559))))

(assert (= (and d!1950887 c!1124646) b!6223607))

(assert (= (and d!1950887 (not c!1124646)) b!6223610))

(assert (= (and b!6223610 c!1124648) b!6223608))

(assert (= (and b!6223610 (not c!1124648)) b!6223605))

(assert (= (and b!6223605 res!2572140) b!6223611))

(assert (= (and b!6223605 c!1124644) b!6223614))

(assert (= (and b!6223605 (not c!1124644)) b!6223613))

(assert (= (and b!6223613 c!1124645) b!6223604))

(assert (= (and b!6223613 (not c!1124645)) b!6223609))

(assert (= (and b!6223609 c!1124647) b!6223606))

(assert (= (and b!6223609 (not c!1124647)) b!6223612))

(assert (= (or b!6223604 b!6223606) bm!522557))

(assert (= (or b!6223604 b!6223606) bm!522553))

(assert (= (or b!6223614 bm!522557) bm!522558))

(assert (= (or b!6223614 bm!522553) bm!522554))

(assert (= (or b!6223608 bm!522554) bm!522555))

(assert (= (or b!6223608 b!6223614) bm!522556))

(declare-fun m!7050952 () Bool)

(assert (=> b!6223611 m!7050952))

(declare-fun m!7050954 () Bool)

(assert (=> bm!522556 m!7050954))

(declare-fun m!7050956 () Bool)

(assert (=> bm!522558 m!7050956))

(declare-fun m!7050958 () Bool)

(assert (=> bm!522555 m!7050958))

(declare-fun m!7050960 () Bool)

(assert (=> b!6223607 m!7050960))

(assert (=> b!6223091 d!1950887))

(declare-fun bm!522559 () Bool)

(declare-fun call!522567 () (InoxSet Context!11086))

(declare-fun call!522565 () (InoxSet Context!11086))

(assert (=> bm!522559 (= call!522567 call!522565)))

(declare-fun b!6223615 () Bool)

(declare-fun e!3788304 () (InoxSet Context!11086))

(assert (=> b!6223615 (= e!3788304 call!522567)))

(declare-fun b!6223616 () Bool)

(declare-fun c!1124649 () Bool)

(declare-fun e!3788303 () Bool)

(assert (=> b!6223616 (= c!1124649 e!3788303)))

(declare-fun res!2572141 () Bool)

(assert (=> b!6223616 (=> (not res!2572141) (not e!3788303))))

(assert (=> b!6223616 (= res!2572141 ((_ is Concat!25004) (regOne!32830 (regOne!32830 r!7292))))))

(declare-fun e!3788305 () (InoxSet Context!11086))

(declare-fun e!3788302 () (InoxSet Context!11086))

(assert (=> b!6223616 (= e!3788305 e!3788302)))

(declare-fun b!6223617 () Bool)

(declare-fun e!3788306 () (InoxSet Context!11086))

(assert (=> b!6223617 (= e!3788306 call!522567)))

(declare-fun b!6223618 () Bool)

(declare-fun e!3788307 () (InoxSet Context!11086))

(assert (=> b!6223618 (= e!3788307 (store ((as const (Array Context!11086 Bool)) false) lt!2345242 true))))

(declare-fun bm!522560 () Bool)

(declare-fun call!522569 () (InoxSet Context!11086))

(assert (=> bm!522560 (= call!522565 call!522569)))

(declare-fun c!1124650 () Bool)

(declare-fun bm!522561 () Bool)

(declare-fun c!1124653 () Bool)

(declare-fun call!522564 () List!64776)

(assert (=> bm!522561 (= call!522569 (derivationStepZipperDown!1407 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292)))))) (ite (or c!1124653 c!1124649) lt!2345242 (Context!11087 call!522564)) (h!71101 s!2326)))))

(declare-fun b!6223619 () Bool)

(declare-fun call!522568 () (InoxSet Context!11086))

(assert (=> b!6223619 (= e!3788305 ((_ map or) call!522568 call!522569))))

(declare-fun d!1950889 () Bool)

(declare-fun c!1124651 () Bool)

(assert (=> d!1950889 (= c!1124651 (and ((_ is ElementMatch!16159) (regOne!32830 (regOne!32830 r!7292))) (= (c!1124503 (regOne!32830 (regOne!32830 r!7292))) (h!71101 s!2326))))))

(assert (=> d!1950889 (= (derivationStepZipperDown!1407 (regOne!32830 (regOne!32830 r!7292)) lt!2345242 (h!71101 s!2326)) e!3788307)))

(declare-fun bm!522562 () Bool)

(declare-fun call!522566 () List!64776)

(assert (=> bm!522562 (= call!522568 (derivationStepZipperDown!1407 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))) (ite c!1124653 lt!2345242 (Context!11087 call!522566)) (h!71101 s!2326)))))

(declare-fun bm!522563 () Bool)

(assert (=> bm!522563 (= call!522564 call!522566)))

(declare-fun bm!522564 () Bool)

(assert (=> bm!522564 (= call!522566 ($colon$colon!2028 (exprs!6043 lt!2345242) (ite (or c!1124649 c!1124650) (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 r!7292)))))))

(declare-fun b!6223620 () Bool)

(declare-fun c!1124652 () Bool)

(assert (=> b!6223620 (= c!1124652 ((_ is Star!16159) (regOne!32830 (regOne!32830 r!7292))))))

(assert (=> b!6223620 (= e!3788304 e!3788306)))

(declare-fun b!6223621 () Bool)

(assert (=> b!6223621 (= e!3788307 e!3788305)))

(assert (=> b!6223621 (= c!1124653 ((_ is Union!16159) (regOne!32830 (regOne!32830 r!7292))))))

(declare-fun b!6223622 () Bool)

(assert (=> b!6223622 (= e!3788303 (nullable!6152 (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))))))

(declare-fun b!6223623 () Bool)

(assert (=> b!6223623 (= e!3788306 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6223624 () Bool)

(assert (=> b!6223624 (= e!3788302 e!3788304)))

(assert (=> b!6223624 (= c!1124650 ((_ is Concat!25004) (regOne!32830 (regOne!32830 r!7292))))))

(declare-fun b!6223625 () Bool)

(assert (=> b!6223625 (= e!3788302 ((_ map or) call!522568 call!522565))))

(assert (= (and d!1950889 c!1124651) b!6223618))

(assert (= (and d!1950889 (not c!1124651)) b!6223621))

(assert (= (and b!6223621 c!1124653) b!6223619))

(assert (= (and b!6223621 (not c!1124653)) b!6223616))

(assert (= (and b!6223616 res!2572141) b!6223622))

(assert (= (and b!6223616 c!1124649) b!6223625))

(assert (= (and b!6223616 (not c!1124649)) b!6223624))

(assert (= (and b!6223624 c!1124650) b!6223615))

(assert (= (and b!6223624 (not c!1124650)) b!6223620))

(assert (= (and b!6223620 c!1124652) b!6223617))

(assert (= (and b!6223620 (not c!1124652)) b!6223623))

(assert (= (or b!6223615 b!6223617) bm!522563))

(assert (= (or b!6223615 b!6223617) bm!522559))

(assert (= (or b!6223625 bm!522563) bm!522564))

(assert (= (or b!6223625 bm!522559) bm!522560))

(assert (= (or b!6223619 bm!522560) bm!522561))

(assert (= (or b!6223619 b!6223625) bm!522562))

(declare-fun m!7050962 () Bool)

(assert (=> b!6223622 m!7050962))

(declare-fun m!7050964 () Bool)

(assert (=> bm!522562 m!7050964))

(declare-fun m!7050966 () Bool)

(assert (=> bm!522564 m!7050966))

(declare-fun m!7050968 () Bool)

(assert (=> bm!522561 m!7050968))

(assert (=> b!6223618 m!7050610))

(assert (=> b!6223091 d!1950889))

(declare-fun bs!1543217 () Bool)

(declare-fun d!1950891 () Bool)

(assert (= bs!1543217 (and d!1950891 d!1950863)))

(declare-fun lambda!340229 () Int)

(assert (=> bs!1543217 (= lambda!340229 lambda!340216)))

(declare-fun bs!1543218 () Bool)

(assert (= bs!1543218 (and d!1950891 d!1950865)))

(assert (=> bs!1543218 (= lambda!340229 lambda!340217)))

(declare-fun b!6223646 () Bool)

(declare-fun e!3788323 () Regex!16159)

(assert (=> b!6223646 (= e!3788323 EmptyLang!16159)))

(declare-fun b!6223647 () Bool)

(declare-fun e!3788325 () Bool)

(declare-fun e!3788322 () Bool)

(assert (=> b!6223647 (= e!3788325 e!3788322)))

(declare-fun c!1124662 () Bool)

(declare-fun tail!11912 (List!64776) List!64776)

(assert (=> b!6223647 (= c!1124662 (isEmpty!36663 (tail!11912 (unfocusZipperList!1580 zl!343))))))

(declare-fun b!6223649 () Bool)

(declare-fun e!3788320 () Regex!16159)

(assert (=> b!6223649 (= e!3788320 (h!71100 (unfocusZipperList!1580 zl!343)))))

(declare-fun b!6223650 () Bool)

(declare-fun e!3788321 () Bool)

(assert (=> b!6223650 (= e!3788321 (isEmpty!36663 (t!378310 (unfocusZipperList!1580 zl!343))))))

(declare-fun b!6223651 () Bool)

(declare-fun e!3788324 () Bool)

(assert (=> b!6223651 (= e!3788324 e!3788325)))

(declare-fun c!1124665 () Bool)

(assert (=> b!6223651 (= c!1124665 (isEmpty!36663 (unfocusZipperList!1580 zl!343)))))

(declare-fun b!6223652 () Bool)

(assert (=> b!6223652 (= e!3788320 e!3788323)))

(declare-fun c!1124664 () Bool)

(assert (=> b!6223652 (= c!1124664 ((_ is Cons!64652) (unfocusZipperList!1580 zl!343)))))

(declare-fun b!6223653 () Bool)

(declare-fun lt!2345320 () Regex!16159)

(declare-fun isUnion!1008 (Regex!16159) Bool)

(assert (=> b!6223653 (= e!3788322 (isUnion!1008 lt!2345320))))

(declare-fun b!6223654 () Bool)

(declare-fun head!12827 (List!64776) Regex!16159)

(assert (=> b!6223654 (= e!3788322 (= lt!2345320 (head!12827 (unfocusZipperList!1580 zl!343))))))

(declare-fun b!6223655 () Bool)

(assert (=> b!6223655 (= e!3788323 (Union!16159 (h!71100 (unfocusZipperList!1580 zl!343)) (generalisedUnion!2003 (t!378310 (unfocusZipperList!1580 zl!343)))))))

(assert (=> d!1950891 e!3788324))

(declare-fun res!2572147 () Bool)

(assert (=> d!1950891 (=> (not res!2572147) (not e!3788324))))

(assert (=> d!1950891 (= res!2572147 (validRegex!7895 lt!2345320))))

(assert (=> d!1950891 (= lt!2345320 e!3788320)))

(declare-fun c!1124663 () Bool)

(assert (=> d!1950891 (= c!1124663 e!3788321)))

(declare-fun res!2572146 () Bool)

(assert (=> d!1950891 (=> (not res!2572146) (not e!3788321))))

(assert (=> d!1950891 (= res!2572146 ((_ is Cons!64652) (unfocusZipperList!1580 zl!343)))))

(assert (=> d!1950891 (forall!15273 (unfocusZipperList!1580 zl!343) lambda!340229)))

(assert (=> d!1950891 (= (generalisedUnion!2003 (unfocusZipperList!1580 zl!343)) lt!2345320)))

(declare-fun b!6223648 () Bool)

(declare-fun isEmptyLang!1578 (Regex!16159) Bool)

(assert (=> b!6223648 (= e!3788325 (isEmptyLang!1578 lt!2345320))))

(assert (= (and d!1950891 res!2572146) b!6223650))

(assert (= (and d!1950891 c!1124663) b!6223649))

(assert (= (and d!1950891 (not c!1124663)) b!6223652))

(assert (= (and b!6223652 c!1124664) b!6223655))

(assert (= (and b!6223652 (not c!1124664)) b!6223646))

(assert (= (and d!1950891 res!2572147) b!6223651))

(assert (= (and b!6223651 c!1124665) b!6223648))

(assert (= (and b!6223651 (not c!1124665)) b!6223647))

(assert (= (and b!6223647 c!1124662) b!6223654))

(assert (= (and b!6223647 (not c!1124662)) b!6223653))

(assert (=> b!6223654 m!7050598))

(declare-fun m!7050970 () Bool)

(assert (=> b!6223654 m!7050970))

(declare-fun m!7050972 () Bool)

(assert (=> b!6223653 m!7050972))

(declare-fun m!7050974 () Bool)

(assert (=> b!6223650 m!7050974))

(declare-fun m!7050976 () Bool)

(assert (=> b!6223655 m!7050976))

(assert (=> b!6223651 m!7050598))

(declare-fun m!7050978 () Bool)

(assert (=> b!6223651 m!7050978))

(declare-fun m!7050980 () Bool)

(assert (=> d!1950891 m!7050980))

(assert (=> d!1950891 m!7050598))

(declare-fun m!7050982 () Bool)

(assert (=> d!1950891 m!7050982))

(declare-fun m!7050984 () Bool)

(assert (=> b!6223648 m!7050984))

(assert (=> b!6223647 m!7050598))

(declare-fun m!7050986 () Bool)

(assert (=> b!6223647 m!7050986))

(assert (=> b!6223647 m!7050986))

(declare-fun m!7050988 () Bool)

(assert (=> b!6223647 m!7050988))

(assert (=> b!6223080 d!1950891))

(declare-fun bs!1543219 () Bool)

(declare-fun d!1950893 () Bool)

(assert (= bs!1543219 (and d!1950893 d!1950863)))

(declare-fun lambda!340232 () Int)

(assert (=> bs!1543219 (= lambda!340232 lambda!340216)))

(declare-fun bs!1543220 () Bool)

(assert (= bs!1543220 (and d!1950893 d!1950865)))

(assert (=> bs!1543220 (= lambda!340232 lambda!340217)))

(declare-fun bs!1543221 () Bool)

(assert (= bs!1543221 (and d!1950893 d!1950891)))

(assert (=> bs!1543221 (= lambda!340232 lambda!340229)))

(declare-fun lt!2345323 () List!64776)

(assert (=> d!1950893 (forall!15273 lt!2345323 lambda!340232)))

(declare-fun e!3788328 () List!64776)

(assert (=> d!1950893 (= lt!2345323 e!3788328)))

(declare-fun c!1124668 () Bool)

(assert (=> d!1950893 (= c!1124668 ((_ is Cons!64654) zl!343))))

(assert (=> d!1950893 (= (unfocusZipperList!1580 zl!343) lt!2345323)))

(declare-fun b!6223660 () Bool)

(assert (=> b!6223660 (= e!3788328 (Cons!64652 (generalisedConcat!1756 (exprs!6043 (h!71102 zl!343))) (unfocusZipperList!1580 (t!378312 zl!343))))))

(declare-fun b!6223661 () Bool)

(assert (=> b!6223661 (= e!3788328 Nil!64652)))

(assert (= (and d!1950893 c!1124668) b!6223660))

(assert (= (and d!1950893 (not c!1124668)) b!6223661))

(declare-fun m!7050990 () Bool)

(assert (=> d!1950893 m!7050990))

(assert (=> b!6223660 m!7050532))

(declare-fun m!7050992 () Bool)

(assert (=> b!6223660 m!7050992))

(assert (=> b!6223080 d!1950893))

(declare-fun bs!1543222 () Bool)

(declare-fun d!1950895 () Bool)

(assert (= bs!1543222 (and d!1950895 b!6223098)))

(declare-fun lambda!340235 () Int)

(assert (=> bs!1543222 (= lambda!340235 lambda!340181)))

(assert (=> d!1950895 true))

(assert (=> d!1950895 (= (derivationStepZipper!2125 lt!2345237 (h!71101 s!2326)) (flatMap!1664 lt!2345237 lambda!340235))))

(declare-fun bs!1543223 () Bool)

(assert (= bs!1543223 d!1950895))

(declare-fun m!7050994 () Bool)

(assert (=> bs!1543223 m!7050994))

(assert (=> b!6223100 d!1950895))

(assert (=> b!6223100 d!1950883))

(declare-fun d!1950897 () Bool)

(assert (=> d!1950897 (= (flatMap!1664 lt!2345237 lambda!340181) (choose!46252 lt!2345237 lambda!340181))))

(declare-fun bs!1543224 () Bool)

(assert (= bs!1543224 d!1950897))

(declare-fun m!7050996 () Bool)

(assert (=> bs!1543224 m!7050996))

(assert (=> b!6223100 d!1950897))

(declare-fun b!6223664 () Bool)

(declare-fun e!3788331 () (InoxSet Context!11086))

(declare-fun e!3788330 () (InoxSet Context!11086))

(assert (=> b!6223664 (= e!3788331 e!3788330)))

(declare-fun c!1124672 () Bool)

(assert (=> b!6223664 (= c!1124672 ((_ is Cons!64652) (exprs!6043 lt!2345235)))))

(declare-fun b!6223665 () Bool)

(assert (=> b!6223665 (= e!3788330 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1950899 () Bool)

(declare-fun c!1124671 () Bool)

(declare-fun e!3788329 () Bool)

(assert (=> d!1950899 (= c!1124671 e!3788329)))

(declare-fun res!2572148 () Bool)

(assert (=> d!1950899 (=> (not res!2572148) (not e!3788329))))

(assert (=> d!1950899 (= res!2572148 ((_ is Cons!64652) (exprs!6043 lt!2345235)))))

(assert (=> d!1950899 (= (derivationStepZipperUp!1333 lt!2345235 (h!71101 s!2326)) e!3788331)))

(declare-fun bm!522565 () Bool)

(declare-fun call!522570 () (InoxSet Context!11086))

(assert (=> bm!522565 (= call!522570 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 lt!2345235)) (Context!11087 (t!378310 (exprs!6043 lt!2345235))) (h!71101 s!2326)))))

(declare-fun b!6223666 () Bool)

(assert (=> b!6223666 (= e!3788329 (nullable!6152 (h!71100 (exprs!6043 lt!2345235))))))

(declare-fun b!6223667 () Bool)

(assert (=> b!6223667 (= e!3788330 call!522570)))

(declare-fun b!6223668 () Bool)

(assert (=> b!6223668 (= e!3788331 ((_ map or) call!522570 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 lt!2345235))) (h!71101 s!2326))))))

(assert (= (and d!1950899 res!2572148) b!6223666))

(assert (= (and d!1950899 c!1124671) b!6223668))

(assert (= (and d!1950899 (not c!1124671)) b!6223664))

(assert (= (and b!6223664 c!1124672) b!6223667))

(assert (= (and b!6223664 (not c!1124672)) b!6223665))

(assert (= (or b!6223668 b!6223667) bm!522565))

(declare-fun m!7050998 () Bool)

(assert (=> bm!522565 m!7050998))

(declare-fun m!7051000 () Bool)

(assert (=> b!6223666 m!7051000))

(declare-fun m!7051002 () Bool)

(assert (=> b!6223668 m!7051002))

(assert (=> b!6223100 d!1950899))

(declare-fun d!1950901 () Bool)

(assert (=> d!1950901 (= (flatMap!1664 lt!2345237 lambda!340181) (dynLambda!25511 lambda!340181 lt!2345235))))

(declare-fun lt!2345324 () Unit!157967)

(assert (=> d!1950901 (= lt!2345324 (choose!46253 lt!2345237 lt!2345235 lambda!340181))))

(assert (=> d!1950901 (= lt!2345237 (store ((as const (Array Context!11086 Bool)) false) lt!2345235 true))))

(assert (=> d!1950901 (= (lemmaFlatMapOnSingletonSet!1190 lt!2345237 lt!2345235 lambda!340181) lt!2345324)))

(declare-fun b_lambda!236615 () Bool)

(assert (=> (not b_lambda!236615) (not d!1950901)))

(declare-fun bs!1543225 () Bool)

(assert (= bs!1543225 d!1950901))

(assert (=> bs!1543225 m!7050612))

(declare-fun m!7051004 () Bool)

(assert (=> bs!1543225 m!7051004))

(declare-fun m!7051006 () Bool)

(assert (=> bs!1543225 m!7051006))

(assert (=> bs!1543225 m!7050604))

(assert (=> b!6223100 d!1950901))

(declare-fun d!1950903 () Bool)

(assert (=> d!1950903 (= (nullable!6152 (regOne!32830 (regOne!32830 r!7292))) (nullableFct!2108 (regOne!32830 (regOne!32830 r!7292))))))

(declare-fun bs!1543226 () Bool)

(assert (= bs!1543226 d!1950903))

(declare-fun m!7051008 () Bool)

(assert (=> bs!1543226 m!7051008))

(assert (=> b!6223079 d!1950903))

(declare-fun d!1950905 () Bool)

(declare-fun c!1124673 () Bool)

(assert (=> d!1950905 (= c!1124673 (isEmpty!36666 (t!378311 s!2326)))))

(declare-fun e!3788332 () Bool)

(assert (=> d!1950905 (= (matchZipper!2171 lt!2345241 (t!378311 s!2326)) e!3788332)))

(declare-fun b!6223669 () Bool)

(assert (=> b!6223669 (= e!3788332 (nullableZipper!1933 lt!2345241))))

(declare-fun b!6223670 () Bool)

(assert (=> b!6223670 (= e!3788332 (matchZipper!2171 (derivationStepZipper!2125 lt!2345241 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))))))

(assert (= (and d!1950905 c!1124673) b!6223669))

(assert (= (and d!1950905 (not c!1124673)) b!6223670))

(assert (=> d!1950905 m!7050876))

(declare-fun m!7051010 () Bool)

(assert (=> b!6223669 m!7051010))

(assert (=> b!6223670 m!7050880))

(assert (=> b!6223670 m!7050880))

(declare-fun m!7051012 () Bool)

(assert (=> b!6223670 m!7051012))

(assert (=> b!6223670 m!7050884))

(assert (=> b!6223670 m!7051012))

(assert (=> b!6223670 m!7050884))

(declare-fun m!7051014 () Bool)

(assert (=> b!6223670 m!7051014))

(assert (=> b!6223099 d!1950905))

(declare-fun bs!1543227 () Bool)

(declare-fun d!1950907 () Bool)

(assert (= bs!1543227 (and d!1950907 d!1950863)))

(declare-fun lambda!340238 () Int)

(assert (=> bs!1543227 (= lambda!340238 lambda!340216)))

(declare-fun bs!1543228 () Bool)

(assert (= bs!1543228 (and d!1950907 d!1950865)))

(assert (=> bs!1543228 (= lambda!340238 lambda!340217)))

(declare-fun bs!1543229 () Bool)

(assert (= bs!1543229 (and d!1950907 d!1950891)))

(assert (=> bs!1543229 (= lambda!340238 lambda!340229)))

(declare-fun bs!1543230 () Bool)

(assert (= bs!1543230 (and d!1950907 d!1950893)))

(assert (=> bs!1543230 (= lambda!340238 lambda!340232)))

(declare-fun b!6223691 () Bool)

(declare-fun e!3788350 () Regex!16159)

(assert (=> b!6223691 (= e!3788350 EmptyExpr!16159)))

(declare-fun b!6223692 () Bool)

(declare-fun e!3788345 () Bool)

(declare-fun e!3788349 () Bool)

(assert (=> b!6223692 (= e!3788345 e!3788349)))

(declare-fun c!1124684 () Bool)

(assert (=> b!6223692 (= c!1124684 (isEmpty!36663 (tail!11912 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223693 () Bool)

(declare-fun lt!2345327 () Regex!16159)

(declare-fun isConcat!1092 (Regex!16159) Bool)

(assert (=> b!6223693 (= e!3788349 (isConcat!1092 lt!2345327))))

(declare-fun b!6223694 () Bool)

(declare-fun e!3788346 () Regex!16159)

(assert (=> b!6223694 (= e!3788346 (h!71100 (exprs!6043 (h!71102 zl!343))))))

(declare-fun e!3788347 () Bool)

(assert (=> d!1950907 e!3788347))

(declare-fun res!2572153 () Bool)

(assert (=> d!1950907 (=> (not res!2572153) (not e!3788347))))

(assert (=> d!1950907 (= res!2572153 (validRegex!7895 lt!2345327))))

(assert (=> d!1950907 (= lt!2345327 e!3788346)))

(declare-fun c!1124683 () Bool)

(declare-fun e!3788348 () Bool)

(assert (=> d!1950907 (= c!1124683 e!3788348)))

(declare-fun res!2572154 () Bool)

(assert (=> d!1950907 (=> (not res!2572154) (not e!3788348))))

(assert (=> d!1950907 (= res!2572154 ((_ is Cons!64652) (exprs!6043 (h!71102 zl!343))))))

(assert (=> d!1950907 (forall!15273 (exprs!6043 (h!71102 zl!343)) lambda!340238)))

(assert (=> d!1950907 (= (generalisedConcat!1756 (exprs!6043 (h!71102 zl!343))) lt!2345327)))

(declare-fun b!6223695 () Bool)

(assert (=> b!6223695 (= e!3788347 e!3788345)))

(declare-fun c!1124682 () Bool)

(assert (=> b!6223695 (= c!1124682 (isEmpty!36663 (exprs!6043 (h!71102 zl!343))))))

(declare-fun b!6223696 () Bool)

(assert (=> b!6223696 (= e!3788346 e!3788350)))

(declare-fun c!1124685 () Bool)

(assert (=> b!6223696 (= c!1124685 ((_ is Cons!64652) (exprs!6043 (h!71102 zl!343))))))

(declare-fun b!6223697 () Bool)

(assert (=> b!6223697 (= e!3788349 (= lt!2345327 (head!12827 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223698 () Bool)

(assert (=> b!6223698 (= e!3788348 (isEmpty!36663 (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223699 () Bool)

(declare-fun isEmptyExpr!1569 (Regex!16159) Bool)

(assert (=> b!6223699 (= e!3788345 (isEmptyExpr!1569 lt!2345327))))

(declare-fun b!6223700 () Bool)

(assert (=> b!6223700 (= e!3788350 (Concat!25004 (h!71100 (exprs!6043 (h!71102 zl!343))) (generalisedConcat!1756 (t!378310 (exprs!6043 (h!71102 zl!343))))))))

(assert (= (and d!1950907 res!2572154) b!6223698))

(assert (= (and d!1950907 c!1124683) b!6223694))

(assert (= (and d!1950907 (not c!1124683)) b!6223696))

(assert (= (and b!6223696 c!1124685) b!6223700))

(assert (= (and b!6223696 (not c!1124685)) b!6223691))

(assert (= (and d!1950907 res!2572153) b!6223695))

(assert (= (and b!6223695 c!1124682) b!6223699))

(assert (= (and b!6223695 (not c!1124682)) b!6223692))

(assert (= (and b!6223692 c!1124684) b!6223697))

(assert (= (and b!6223692 (not c!1124684)) b!6223693))

(declare-fun m!7051016 () Bool)

(assert (=> b!6223697 m!7051016))

(declare-fun m!7051018 () Bool)

(assert (=> b!6223692 m!7051018))

(assert (=> b!6223692 m!7051018))

(declare-fun m!7051020 () Bool)

(assert (=> b!6223692 m!7051020))

(declare-fun m!7051022 () Bool)

(assert (=> b!6223695 m!7051022))

(declare-fun m!7051024 () Bool)

(assert (=> b!6223699 m!7051024))

(declare-fun m!7051026 () Bool)

(assert (=> d!1950907 m!7051026))

(declare-fun m!7051028 () Bool)

(assert (=> d!1950907 m!7051028))

(declare-fun m!7051030 () Bool)

(assert (=> b!6223700 m!7051030))

(declare-fun m!7051032 () Bool)

(assert (=> b!6223693 m!7051032))

(assert (=> b!6223698 m!7050560))

(assert (=> b!6223089 d!1950907))

(declare-fun d!1950909 () Bool)

(declare-fun lt!2345330 () Regex!16159)

(assert (=> d!1950909 (validRegex!7895 lt!2345330)))

(assert (=> d!1950909 (= lt!2345330 (generalisedUnion!2003 (unfocusZipperList!1580 zl!343)))))

(assert (=> d!1950909 (= (unfocusZipper!1901 zl!343) lt!2345330)))

(declare-fun bs!1543231 () Bool)

(assert (= bs!1543231 d!1950909))

(declare-fun m!7051034 () Bool)

(assert (=> bs!1543231 m!7051034))

(assert (=> bs!1543231 m!7050598))

(assert (=> bs!1543231 m!7050598))

(assert (=> bs!1543231 m!7050600))

(assert (=> b!6223078 d!1950909))

(declare-fun b!6223701 () Bool)

(declare-fun e!3788353 () (InoxSet Context!11086))

(declare-fun e!3788352 () (InoxSet Context!11086))

(assert (=> b!6223701 (= e!3788353 e!3788352)))

(declare-fun c!1124687 () Bool)

(assert (=> b!6223701 (= c!1124687 ((_ is Cons!64652) (exprs!6043 lt!2345243)))))

(declare-fun b!6223702 () Bool)

(assert (=> b!6223702 (= e!3788352 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1950911 () Bool)

(declare-fun c!1124686 () Bool)

(declare-fun e!3788351 () Bool)

(assert (=> d!1950911 (= c!1124686 e!3788351)))

(declare-fun res!2572155 () Bool)

(assert (=> d!1950911 (=> (not res!2572155) (not e!3788351))))

(assert (=> d!1950911 (= res!2572155 ((_ is Cons!64652) (exprs!6043 lt!2345243)))))

(assert (=> d!1950911 (= (derivationStepZipperUp!1333 lt!2345243 (h!71101 s!2326)) e!3788353)))

(declare-fun bm!522566 () Bool)

(declare-fun call!522571 () (InoxSet Context!11086))

(assert (=> bm!522566 (= call!522571 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 lt!2345243)) (Context!11087 (t!378310 (exprs!6043 lt!2345243))) (h!71101 s!2326)))))

(declare-fun b!6223703 () Bool)

(assert (=> b!6223703 (= e!3788351 (nullable!6152 (h!71100 (exprs!6043 lt!2345243))))))

(declare-fun b!6223704 () Bool)

(assert (=> b!6223704 (= e!3788352 call!522571)))

(declare-fun b!6223705 () Bool)

(assert (=> b!6223705 (= e!3788353 ((_ map or) call!522571 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 lt!2345243))) (h!71101 s!2326))))))

(assert (= (and d!1950911 res!2572155) b!6223703))

(assert (= (and d!1950911 c!1124686) b!6223705))

(assert (= (and d!1950911 (not c!1124686)) b!6223701))

(assert (= (and b!6223701 c!1124687) b!6223704))

(assert (= (and b!6223701 (not c!1124687)) b!6223702))

(assert (= (or b!6223705 b!6223704) bm!522566))

(declare-fun m!7051036 () Bool)

(assert (=> bm!522566 m!7051036))

(declare-fun m!7051038 () Bool)

(assert (=> b!6223703 m!7051038))

(declare-fun m!7051040 () Bool)

(assert (=> b!6223705 m!7051040))

(assert (=> b!6223098 d!1950911))

(declare-fun bm!522567 () Bool)

(declare-fun call!522575 () (InoxSet Context!11086))

(declare-fun call!522573 () (InoxSet Context!11086))

(assert (=> bm!522567 (= call!522575 call!522573)))

(declare-fun b!6223706 () Bool)

(declare-fun e!3788356 () (InoxSet Context!11086))

(assert (=> b!6223706 (= e!3788356 call!522575)))

(declare-fun b!6223707 () Bool)

(declare-fun c!1124688 () Bool)

(declare-fun e!3788355 () Bool)

(assert (=> b!6223707 (= c!1124688 e!3788355)))

(declare-fun res!2572156 () Bool)

(assert (=> b!6223707 (=> (not res!2572156) (not e!3788355))))

(assert (=> b!6223707 (= res!2572156 ((_ is Concat!25004) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun e!3788357 () (InoxSet Context!11086))

(declare-fun e!3788354 () (InoxSet Context!11086))

(assert (=> b!6223707 (= e!3788357 e!3788354)))

(declare-fun b!6223708 () Bool)

(declare-fun e!3788358 () (InoxSet Context!11086))

(assert (=> b!6223708 (= e!3788358 call!522575)))

(declare-fun b!6223709 () Bool)

(declare-fun e!3788359 () (InoxSet Context!11086))

(assert (=> b!6223709 (= e!3788359 (store ((as const (Array Context!11086 Bool)) false) lt!2345243 true))))

(declare-fun bm!522568 () Bool)

(declare-fun call!522577 () (InoxSet Context!11086))

(assert (=> bm!522568 (= call!522573 call!522577)))

(declare-fun call!522572 () List!64776)

(declare-fun c!1124692 () Bool)

(declare-fun c!1124689 () Bool)

(declare-fun bm!522569 () Bool)

(assert (=> bm!522569 (= call!522577 (derivationStepZipperDown!1407 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343))))))) (ite (or c!1124692 c!1124688) lt!2345243 (Context!11087 call!522572)) (h!71101 s!2326)))))

(declare-fun b!6223710 () Bool)

(declare-fun call!522576 () (InoxSet Context!11086))

(assert (=> b!6223710 (= e!3788357 ((_ map or) call!522576 call!522577))))

(declare-fun d!1950913 () Bool)

(declare-fun c!1124690 () Bool)

(assert (=> d!1950913 (= c!1124690 (and ((_ is ElementMatch!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))) (= (c!1124503 (h!71100 (exprs!6043 (h!71102 zl!343)))) (h!71101 s!2326))))))

(assert (=> d!1950913 (= (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (h!71102 zl!343))) lt!2345243 (h!71101 s!2326)) e!3788359)))

(declare-fun bm!522570 () Bool)

(declare-fun call!522574 () List!64776)

(assert (=> bm!522570 (= call!522576 (derivationStepZipperDown!1407 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))) (ite c!1124692 lt!2345243 (Context!11087 call!522574)) (h!71101 s!2326)))))

(declare-fun bm!522571 () Bool)

(assert (=> bm!522571 (= call!522572 call!522574)))

(declare-fun bm!522572 () Bool)

(assert (=> bm!522572 (= call!522574 ($colon$colon!2028 (exprs!6043 lt!2345243) (ite (or c!1124688 c!1124689) (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (h!71100 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun b!6223711 () Bool)

(declare-fun c!1124691 () Bool)

(assert (=> b!6223711 (= c!1124691 ((_ is Star!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(assert (=> b!6223711 (= e!3788356 e!3788358)))

(declare-fun b!6223712 () Bool)

(assert (=> b!6223712 (= e!3788359 e!3788357)))

(assert (=> b!6223712 (= c!1124692 ((_ is Union!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223713 () Bool)

(assert (=> b!6223713 (= e!3788355 (nullable!6152 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun b!6223714 () Bool)

(assert (=> b!6223714 (= e!3788358 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6223715 () Bool)

(assert (=> b!6223715 (= e!3788354 e!3788356)))

(assert (=> b!6223715 (= c!1124689 ((_ is Concat!25004) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223716 () Bool)

(assert (=> b!6223716 (= e!3788354 ((_ map or) call!522576 call!522573))))

(assert (= (and d!1950913 c!1124690) b!6223709))

(assert (= (and d!1950913 (not c!1124690)) b!6223712))

(assert (= (and b!6223712 c!1124692) b!6223710))

(assert (= (and b!6223712 (not c!1124692)) b!6223707))

(assert (= (and b!6223707 res!2572156) b!6223713))

(assert (= (and b!6223707 c!1124688) b!6223716))

(assert (= (and b!6223707 (not c!1124688)) b!6223715))

(assert (= (and b!6223715 c!1124689) b!6223706))

(assert (= (and b!6223715 (not c!1124689)) b!6223711))

(assert (= (and b!6223711 c!1124691) b!6223708))

(assert (= (and b!6223711 (not c!1124691)) b!6223714))

(assert (= (or b!6223706 b!6223708) bm!522571))

(assert (= (or b!6223706 b!6223708) bm!522567))

(assert (= (or b!6223716 bm!522571) bm!522572))

(assert (= (or b!6223716 bm!522567) bm!522568))

(assert (= (or b!6223710 bm!522568) bm!522569))

(assert (= (or b!6223710 b!6223716) bm!522570))

(declare-fun m!7051042 () Bool)

(assert (=> b!6223713 m!7051042))

(declare-fun m!7051044 () Bool)

(assert (=> bm!522570 m!7051044))

(declare-fun m!7051046 () Bool)

(assert (=> bm!522572 m!7051046))

(declare-fun m!7051048 () Bool)

(assert (=> bm!522569 m!7051048))

(assert (=> b!6223709 m!7050960))

(assert (=> b!6223098 d!1950913))

(declare-fun d!1950915 () Bool)

(assert (=> d!1950915 (= (nullable!6152 (h!71100 (exprs!6043 (h!71102 zl!343)))) (nullableFct!2108 (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun bs!1543232 () Bool)

(assert (= bs!1543232 d!1950915))

(declare-fun m!7051050 () Bool)

(assert (=> bs!1543232 m!7051050))

(assert (=> b!6223098 d!1950915))

(declare-fun b!6223717 () Bool)

(declare-fun e!3788362 () (InoxSet Context!11086))

(declare-fun e!3788361 () (InoxSet Context!11086))

(assert (=> b!6223717 (= e!3788362 e!3788361)))

(declare-fun c!1124694 () Bool)

(assert (=> b!6223717 (= c!1124694 ((_ is Cons!64652) (exprs!6043 (h!71102 zl!343))))))

(declare-fun b!6223718 () Bool)

(assert (=> b!6223718 (= e!3788361 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1950917 () Bool)

(declare-fun c!1124693 () Bool)

(declare-fun e!3788360 () Bool)

(assert (=> d!1950917 (= c!1124693 e!3788360)))

(declare-fun res!2572157 () Bool)

(assert (=> d!1950917 (=> (not res!2572157) (not e!3788360))))

(assert (=> d!1950917 (= res!2572157 ((_ is Cons!64652) (exprs!6043 (h!71102 zl!343))))))

(assert (=> d!1950917 (= (derivationStepZipperUp!1333 (h!71102 zl!343) (h!71101 s!2326)) e!3788362)))

(declare-fun bm!522573 () Bool)

(declare-fun call!522578 () (InoxSet Context!11086))

(assert (=> bm!522573 (= call!522578 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (h!71102 zl!343))) (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))) (h!71101 s!2326)))))

(declare-fun b!6223719 () Bool)

(assert (=> b!6223719 (= e!3788360 (nullable!6152 (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223720 () Bool)

(assert (=> b!6223720 (= e!3788361 call!522578)))

(declare-fun b!6223721 () Bool)

(assert (=> b!6223721 (= e!3788362 ((_ map or) call!522578 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))) (h!71101 s!2326))))))

(assert (= (and d!1950917 res!2572157) b!6223719))

(assert (= (and d!1950917 c!1124693) b!6223721))

(assert (= (and d!1950917 (not c!1124693)) b!6223717))

(assert (= (and b!6223717 c!1124694) b!6223720))

(assert (= (and b!6223717 (not c!1124694)) b!6223718))

(assert (= (or b!6223721 b!6223720) bm!522573))

(declare-fun m!7051052 () Bool)

(assert (=> bm!522573 m!7051052))

(assert (=> b!6223719 m!7050590))

(declare-fun m!7051054 () Bool)

(assert (=> b!6223721 m!7051054))

(assert (=> b!6223098 d!1950917))

(declare-fun d!1950919 () Bool)

(assert (=> d!1950919 (= (flatMap!1664 z!1189 lambda!340181) (dynLambda!25511 lambda!340181 (h!71102 zl!343)))))

(declare-fun lt!2345331 () Unit!157967)

(assert (=> d!1950919 (= lt!2345331 (choose!46253 z!1189 (h!71102 zl!343) lambda!340181))))

(assert (=> d!1950919 (= z!1189 (store ((as const (Array Context!11086 Bool)) false) (h!71102 zl!343) true))))

(assert (=> d!1950919 (= (lemmaFlatMapOnSingletonSet!1190 z!1189 (h!71102 zl!343) lambda!340181) lt!2345331)))

(declare-fun b_lambda!236617 () Bool)

(assert (=> (not b_lambda!236617) (not d!1950919)))

(declare-fun bs!1543233 () Bool)

(assert (= bs!1543233 d!1950919))

(assert (=> bs!1543233 m!7050588))

(declare-fun m!7051056 () Bool)

(assert (=> bs!1543233 m!7051056))

(declare-fun m!7051058 () Bool)

(assert (=> bs!1543233 m!7051058))

(declare-fun m!7051060 () Bool)

(assert (=> bs!1543233 m!7051060))

(assert (=> b!6223098 d!1950919))

(declare-fun d!1950921 () Bool)

(assert (=> d!1950921 (= (flatMap!1664 z!1189 lambda!340181) (choose!46252 z!1189 lambda!340181))))

(declare-fun bs!1543234 () Bool)

(assert (= bs!1543234 d!1950921))

(declare-fun m!7051062 () Bool)

(assert (=> bs!1543234 m!7051062))

(assert (=> b!6223098 d!1950921))

(declare-fun b!6223722 () Bool)

(declare-fun e!3788365 () (InoxSet Context!11086))

(declare-fun e!3788364 () (InoxSet Context!11086))

(assert (=> b!6223722 (= e!3788365 e!3788364)))

(declare-fun c!1124696 () Bool)

(assert (=> b!6223722 (= c!1124696 ((_ is Cons!64652) (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))))

(declare-fun b!6223723 () Bool)

(assert (=> b!6223723 (= e!3788364 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1950923 () Bool)

(declare-fun c!1124695 () Bool)

(declare-fun e!3788363 () Bool)

(assert (=> d!1950923 (= c!1124695 e!3788363)))

(declare-fun res!2572158 () Bool)

(assert (=> d!1950923 (=> (not res!2572158) (not e!3788363))))

(assert (=> d!1950923 (= res!2572158 ((_ is Cons!64652) (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))))

(assert (=> d!1950923 (= (derivationStepZipperUp!1333 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))) (h!71101 s!2326)) e!3788365)))

(declare-fun bm!522574 () Bool)

(declare-fun call!522579 () (InoxSet Context!11086))

(assert (=> bm!522574 (= call!522579 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (h!71101 s!2326)))))

(declare-fun b!6223724 () Bool)

(assert (=> b!6223724 (= e!3788363 (nullable!6152 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))))

(declare-fun b!6223725 () Bool)

(assert (=> b!6223725 (= e!3788364 call!522579)))

(declare-fun b!6223726 () Bool)

(assert (=> b!6223726 (= e!3788365 ((_ map or) call!522579 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (h!71101 s!2326))))))

(assert (= (and d!1950923 res!2572158) b!6223724))

(assert (= (and d!1950923 c!1124695) b!6223726))

(assert (= (and d!1950923 (not c!1124695)) b!6223722))

(assert (= (and b!6223722 c!1124696) b!6223725))

(assert (= (and b!6223722 (not c!1124696)) b!6223723))

(assert (= (or b!6223726 b!6223725) bm!522574))

(declare-fun m!7051064 () Bool)

(assert (=> bm!522574 m!7051064))

(declare-fun m!7051066 () Bool)

(assert (=> b!6223724 m!7051066))

(declare-fun m!7051068 () Bool)

(assert (=> b!6223726 m!7051068))

(assert (=> b!6223098 d!1950923))

(declare-fun d!1950925 () Bool)

(declare-fun e!3788368 () Bool)

(assert (=> d!1950925 e!3788368))

(declare-fun res!2572161 () Bool)

(assert (=> d!1950925 (=> (not res!2572161) (not e!3788368))))

(declare-fun lt!2345334 () List!64778)

(declare-fun noDuplicate!1997 (List!64778) Bool)

(assert (=> d!1950925 (= res!2572161 (noDuplicate!1997 lt!2345334))))

(declare-fun choose!46254 ((InoxSet Context!11086)) List!64778)

(assert (=> d!1950925 (= lt!2345334 (choose!46254 z!1189))))

(assert (=> d!1950925 (= (toList!9943 z!1189) lt!2345334)))

(declare-fun b!6223729 () Bool)

(declare-fun content!12112 (List!64778) (InoxSet Context!11086))

(assert (=> b!6223729 (= e!3788368 (= (content!12112 lt!2345334) z!1189))))

(assert (= (and d!1950925 res!2572161) b!6223729))

(declare-fun m!7051070 () Bool)

(assert (=> d!1950925 m!7051070))

(declare-fun m!7051072 () Bool)

(assert (=> d!1950925 m!7051072))

(declare-fun m!7051074 () Bool)

(assert (=> b!6223729 m!7051074))

(assert (=> b!6223088 d!1950925))

(assert (=> b!6223077 d!1950905))

(declare-fun d!1950927 () Bool)

(declare-fun e!3788371 () Bool)

(assert (=> d!1950927 (= (matchZipper!2171 ((_ map or) lt!2345249 lt!2345247) (t!378311 s!2326)) e!3788371)))

(declare-fun res!2572164 () Bool)

(assert (=> d!1950927 (=> res!2572164 e!3788371)))

(assert (=> d!1950927 (= res!2572164 (matchZipper!2171 lt!2345249 (t!378311 s!2326)))))

(declare-fun lt!2345337 () Unit!157967)

(declare-fun choose!46255 ((InoxSet Context!11086) (InoxSet Context!11086) List!64777) Unit!157967)

(assert (=> d!1950927 (= lt!2345337 (choose!46255 lt!2345249 lt!2345247 (t!378311 s!2326)))))

(assert (=> d!1950927 (= (lemmaZipperConcatMatchesSameAsBothZippers!990 lt!2345249 lt!2345247 (t!378311 s!2326)) lt!2345337)))

(declare-fun b!6223732 () Bool)

(assert (=> b!6223732 (= e!3788371 (matchZipper!2171 lt!2345247 (t!378311 s!2326)))))

(assert (= (and d!1950927 (not res!2572164)) b!6223732))

(assert (=> d!1950927 m!7050526))

(assert (=> d!1950927 m!7050524))

(declare-fun m!7051076 () Bool)

(assert (=> d!1950927 m!7051076))

(assert (=> b!6223732 m!7050614))

(assert (=> b!6223087 d!1950927))

(declare-fun d!1950929 () Bool)

(declare-fun c!1124697 () Bool)

(assert (=> d!1950929 (= c!1124697 (isEmpty!36666 (t!378311 s!2326)))))

(declare-fun e!3788372 () Bool)

(assert (=> d!1950929 (= (matchZipper!2171 lt!2345249 (t!378311 s!2326)) e!3788372)))

(declare-fun b!6223733 () Bool)

(assert (=> b!6223733 (= e!3788372 (nullableZipper!1933 lt!2345249))))

(declare-fun b!6223734 () Bool)

(assert (=> b!6223734 (= e!3788372 (matchZipper!2171 (derivationStepZipper!2125 lt!2345249 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))))))

(assert (= (and d!1950929 c!1124697) b!6223733))

(assert (= (and d!1950929 (not c!1124697)) b!6223734))

(assert (=> d!1950929 m!7050876))

(declare-fun m!7051078 () Bool)

(assert (=> b!6223733 m!7051078))

(assert (=> b!6223734 m!7050880))

(assert (=> b!6223734 m!7050880))

(declare-fun m!7051080 () Bool)

(assert (=> b!6223734 m!7051080))

(assert (=> b!6223734 m!7050884))

(assert (=> b!6223734 m!7051080))

(assert (=> b!6223734 m!7050884))

(declare-fun m!7051082 () Bool)

(assert (=> b!6223734 m!7051082))

(assert (=> b!6223087 d!1950929))

(declare-fun d!1950931 () Bool)

(declare-fun c!1124698 () Bool)

(assert (=> d!1950931 (= c!1124698 (isEmpty!36666 (t!378311 s!2326)))))

(declare-fun e!3788373 () Bool)

(assert (=> d!1950931 (= (matchZipper!2171 ((_ map or) lt!2345249 lt!2345247) (t!378311 s!2326)) e!3788373)))

(declare-fun b!6223735 () Bool)

(assert (=> b!6223735 (= e!3788373 (nullableZipper!1933 ((_ map or) lt!2345249 lt!2345247)))))

(declare-fun b!6223736 () Bool)

(assert (=> b!6223736 (= e!3788373 (matchZipper!2171 (derivationStepZipper!2125 ((_ map or) lt!2345249 lt!2345247) (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))))))

(assert (= (and d!1950931 c!1124698) b!6223735))

(assert (= (and d!1950931 (not c!1124698)) b!6223736))

(assert (=> d!1950931 m!7050876))

(declare-fun m!7051084 () Bool)

(assert (=> b!6223735 m!7051084))

(assert (=> b!6223736 m!7050880))

(assert (=> b!6223736 m!7050880))

(declare-fun m!7051086 () Bool)

(assert (=> b!6223736 m!7051086))

(assert (=> b!6223736 m!7050884))

(assert (=> b!6223736 m!7051086))

(assert (=> b!6223736 m!7050884))

(declare-fun m!7051088 () Bool)

(assert (=> b!6223736 m!7051088))

(assert (=> b!6223087 d!1950931))

(declare-fun bs!1543235 () Bool)

(declare-fun b!6223775 () Bool)

(assert (= bs!1543235 (and b!6223775 b!6223092)))

(declare-fun lambda!340243 () Int)

(assert (=> bs!1543235 (not (= lambda!340243 lambda!340179))))

(declare-fun bs!1543236 () Bool)

(assert (= bs!1543236 (and b!6223775 d!1950875)))

(assert (=> bs!1543236 (not (= lambda!340243 lambda!340226))))

(declare-fun bs!1543237 () Bool)

(assert (= bs!1543237 (and b!6223775 d!1950871)))

(assert (=> bs!1543237 (not (= lambda!340243 lambda!340223))))

(assert (=> bs!1543237 (not (= lambda!340243 lambda!340222))))

(assert (=> bs!1543235 (not (= lambda!340243 lambda!340180))))

(assert (=> b!6223775 true))

(assert (=> b!6223775 true))

(declare-fun bs!1543238 () Bool)

(declare-fun b!6223771 () Bool)

(assert (= bs!1543238 (and b!6223771 b!6223092)))

(declare-fun lambda!340244 () Int)

(assert (=> bs!1543238 (not (= lambda!340244 lambda!340179))))

(declare-fun bs!1543239 () Bool)

(assert (= bs!1543239 (and b!6223771 d!1950875)))

(assert (=> bs!1543239 (not (= lambda!340244 lambda!340226))))

(declare-fun bs!1543240 () Bool)

(assert (= bs!1543240 (and b!6223771 b!6223775)))

(assert (=> bs!1543240 (not (= lambda!340244 lambda!340243))))

(declare-fun bs!1543241 () Bool)

(assert (= bs!1543241 (and b!6223771 d!1950871)))

(assert (=> bs!1543241 (= lambda!340244 lambda!340223)))

(assert (=> bs!1543241 (not (= lambda!340244 lambda!340222))))

(assert (=> bs!1543238 (= lambda!340244 lambda!340180)))

(assert (=> b!6223771 true))

(assert (=> b!6223771 true))

(declare-fun d!1950933 () Bool)

(declare-fun c!1124710 () Bool)

(assert (=> d!1950933 (= c!1124710 ((_ is EmptyExpr!16159) r!7292))))

(declare-fun e!3788392 () Bool)

(assert (=> d!1950933 (= (matchRSpec!3260 r!7292 s!2326) e!3788392)))

(declare-fun b!6223769 () Bool)

(declare-fun res!2572181 () Bool)

(declare-fun e!3788396 () Bool)

(assert (=> b!6223769 (=> res!2572181 e!3788396)))

(declare-fun call!522584 () Bool)

(assert (=> b!6223769 (= res!2572181 call!522584)))

(declare-fun e!3788398 () Bool)

(assert (=> b!6223769 (= e!3788398 e!3788396)))

(declare-fun b!6223770 () Bool)

(declare-fun e!3788397 () Bool)

(assert (=> b!6223770 (= e!3788397 (matchRSpec!3260 (regTwo!32831 r!7292) s!2326))))

(declare-fun call!522585 () Bool)

(assert (=> b!6223771 (= e!3788398 call!522585)))

(declare-fun bm!522579 () Bool)

(assert (=> bm!522579 (= call!522584 (isEmpty!36666 s!2326))))

(declare-fun bm!522580 () Bool)

(declare-fun c!1124709 () Bool)

(assert (=> bm!522580 (= call!522585 (Exists!3229 (ite c!1124709 lambda!340243 lambda!340244)))))

(declare-fun b!6223772 () Bool)

(declare-fun c!1124708 () Bool)

(assert (=> b!6223772 (= c!1124708 ((_ is ElementMatch!16159) r!7292))))

(declare-fun e!3788395 () Bool)

(declare-fun e!3788394 () Bool)

(assert (=> b!6223772 (= e!3788395 e!3788394)))

(declare-fun b!6223773 () Bool)

(declare-fun e!3788393 () Bool)

(assert (=> b!6223773 (= e!3788393 e!3788397)))

(declare-fun res!2572182 () Bool)

(assert (=> b!6223773 (= res!2572182 (matchRSpec!3260 (regOne!32831 r!7292) s!2326))))

(assert (=> b!6223773 (=> res!2572182 e!3788397)))

(declare-fun b!6223774 () Bool)

(declare-fun c!1124707 () Bool)

(assert (=> b!6223774 (= c!1124707 ((_ is Union!16159) r!7292))))

(assert (=> b!6223774 (= e!3788394 e!3788393)))

(assert (=> b!6223775 (= e!3788396 call!522585)))

(declare-fun b!6223776 () Bool)

(assert (=> b!6223776 (= e!3788392 call!522584)))

(declare-fun b!6223777 () Bool)

(assert (=> b!6223777 (= e!3788392 e!3788395)))

(declare-fun res!2572183 () Bool)

(assert (=> b!6223777 (= res!2572183 (not ((_ is EmptyLang!16159) r!7292)))))

(assert (=> b!6223777 (=> (not res!2572183) (not e!3788395))))

(declare-fun b!6223778 () Bool)

(assert (=> b!6223778 (= e!3788394 (= s!2326 (Cons!64653 (c!1124503 r!7292) Nil!64653)))))

(declare-fun b!6223779 () Bool)

(assert (=> b!6223779 (= e!3788393 e!3788398)))

(assert (=> b!6223779 (= c!1124709 ((_ is Star!16159) r!7292))))

(assert (= (and d!1950933 c!1124710) b!6223776))

(assert (= (and d!1950933 (not c!1124710)) b!6223777))

(assert (= (and b!6223777 res!2572183) b!6223772))

(assert (= (and b!6223772 c!1124708) b!6223778))

(assert (= (and b!6223772 (not c!1124708)) b!6223774))

(assert (= (and b!6223774 c!1124707) b!6223773))

(assert (= (and b!6223774 (not c!1124707)) b!6223779))

(assert (= (and b!6223773 (not res!2572182)) b!6223770))

(assert (= (and b!6223779 c!1124709) b!6223769))

(assert (= (and b!6223779 (not c!1124709)) b!6223771))

(assert (= (and b!6223769 (not res!2572181)) b!6223775))

(assert (= (or b!6223775 b!6223771) bm!522580))

(assert (= (or b!6223776 b!6223769) bm!522579))

(declare-fun m!7051090 () Bool)

(assert (=> b!6223770 m!7051090))

(declare-fun m!7051092 () Bool)

(assert (=> bm!522579 m!7051092))

(declare-fun m!7051094 () Bool)

(assert (=> bm!522580 m!7051094))

(declare-fun m!7051096 () Bool)

(assert (=> b!6223773 m!7051096))

(assert (=> b!6223076 d!1950933))

(declare-fun b!6223808 () Bool)

(declare-fun e!3788418 () Bool)

(assert (=> b!6223808 (= e!3788418 (= (head!12826 s!2326) (c!1124503 r!7292)))))

(declare-fun bm!522583 () Bool)

(declare-fun call!522588 () Bool)

(assert (=> bm!522583 (= call!522588 (isEmpty!36666 s!2326))))

(declare-fun b!6223809 () Bool)

(declare-fun res!2572202 () Bool)

(declare-fun e!3788417 () Bool)

(assert (=> b!6223809 (=> res!2572202 e!3788417)))

(assert (=> b!6223809 (= res!2572202 e!3788418)))

(declare-fun res!2572205 () Bool)

(assert (=> b!6223809 (=> (not res!2572205) (not e!3788418))))

(declare-fun lt!2345340 () Bool)

(assert (=> b!6223809 (= res!2572205 lt!2345340)))

(declare-fun b!6223810 () Bool)

(declare-fun e!3788415 () Bool)

(declare-fun e!3788413 () Bool)

(assert (=> b!6223810 (= e!3788415 e!3788413)))

(declare-fun c!1124717 () Bool)

(assert (=> b!6223810 (= c!1124717 ((_ is EmptyLang!16159) r!7292))))

(declare-fun b!6223811 () Bool)

(declare-fun res!2572204 () Bool)

(assert (=> b!6223811 (=> (not res!2572204) (not e!3788418))))

(assert (=> b!6223811 (= res!2572204 (not call!522588))))

(declare-fun b!6223812 () Bool)

(assert (=> b!6223812 (= e!3788413 (not lt!2345340))))

(declare-fun d!1950935 () Bool)

(assert (=> d!1950935 e!3788415))

(declare-fun c!1124719 () Bool)

(assert (=> d!1950935 (= c!1124719 ((_ is EmptyExpr!16159) r!7292))))

(declare-fun e!3788416 () Bool)

(assert (=> d!1950935 (= lt!2345340 e!3788416)))

(declare-fun c!1124718 () Bool)

(assert (=> d!1950935 (= c!1124718 (isEmpty!36666 s!2326))))

(assert (=> d!1950935 (validRegex!7895 r!7292)))

(assert (=> d!1950935 (= (matchR!8342 r!7292 s!2326) lt!2345340)))

(declare-fun b!6223813 () Bool)

(declare-fun e!3788414 () Bool)

(assert (=> b!6223813 (= e!3788417 e!3788414)))

(declare-fun res!2572207 () Bool)

(assert (=> b!6223813 (=> (not res!2572207) (not e!3788414))))

(assert (=> b!6223813 (= res!2572207 (not lt!2345340))))

(declare-fun b!6223814 () Bool)

(assert (=> b!6223814 (= e!3788415 (= lt!2345340 call!522588))))

(declare-fun b!6223815 () Bool)

(declare-fun e!3788419 () Bool)

(assert (=> b!6223815 (= e!3788414 e!3788419)))

(declare-fun res!2572203 () Bool)

(assert (=> b!6223815 (=> res!2572203 e!3788419)))

(assert (=> b!6223815 (= res!2572203 call!522588)))

(declare-fun b!6223816 () Bool)

(declare-fun res!2572201 () Bool)

(assert (=> b!6223816 (=> res!2572201 e!3788417)))

(assert (=> b!6223816 (= res!2572201 (not ((_ is ElementMatch!16159) r!7292)))))

(assert (=> b!6223816 (= e!3788413 e!3788417)))

(declare-fun b!6223817 () Bool)

(assert (=> b!6223817 (= e!3788419 (not (= (head!12826 s!2326) (c!1124503 r!7292))))))

(declare-fun b!6223818 () Bool)

(declare-fun res!2572206 () Bool)

(assert (=> b!6223818 (=> res!2572206 e!3788419)))

(assert (=> b!6223818 (= res!2572206 (not (isEmpty!36666 (tail!11911 s!2326))))))

(declare-fun b!6223819 () Bool)

(declare-fun derivativeStep!4872 (Regex!16159 C!32588) Regex!16159)

(assert (=> b!6223819 (= e!3788416 (matchR!8342 (derivativeStep!4872 r!7292 (head!12826 s!2326)) (tail!11911 s!2326)))))

(declare-fun b!6223820 () Bool)

(assert (=> b!6223820 (= e!3788416 (nullable!6152 r!7292))))

(declare-fun b!6223821 () Bool)

(declare-fun res!2572200 () Bool)

(assert (=> b!6223821 (=> (not res!2572200) (not e!3788418))))

(assert (=> b!6223821 (= res!2572200 (isEmpty!36666 (tail!11911 s!2326)))))

(assert (= (and d!1950935 c!1124718) b!6223820))

(assert (= (and d!1950935 (not c!1124718)) b!6223819))

(assert (= (and d!1950935 c!1124719) b!6223814))

(assert (= (and d!1950935 (not c!1124719)) b!6223810))

(assert (= (and b!6223810 c!1124717) b!6223812))

(assert (= (and b!6223810 (not c!1124717)) b!6223816))

(assert (= (and b!6223816 (not res!2572201)) b!6223809))

(assert (= (and b!6223809 res!2572205) b!6223811))

(assert (= (and b!6223811 res!2572204) b!6223821))

(assert (= (and b!6223821 res!2572200) b!6223808))

(assert (= (and b!6223809 (not res!2572202)) b!6223813))

(assert (= (and b!6223813 res!2572207) b!6223815))

(assert (= (and b!6223815 (not res!2572203)) b!6223818))

(assert (= (and b!6223818 (not res!2572206)) b!6223817))

(assert (= (or b!6223814 b!6223811 b!6223815) bm!522583))

(declare-fun m!7051098 () Bool)

(assert (=> b!6223819 m!7051098))

(assert (=> b!6223819 m!7051098))

(declare-fun m!7051100 () Bool)

(assert (=> b!6223819 m!7051100))

(declare-fun m!7051102 () Bool)

(assert (=> b!6223819 m!7051102))

(assert (=> b!6223819 m!7051100))

(assert (=> b!6223819 m!7051102))

(declare-fun m!7051104 () Bool)

(assert (=> b!6223819 m!7051104))

(assert (=> bm!522583 m!7051092))

(declare-fun m!7051106 () Bool)

(assert (=> b!6223820 m!7051106))

(assert (=> b!6223817 m!7051098))

(assert (=> b!6223821 m!7051102))

(assert (=> b!6223821 m!7051102))

(declare-fun m!7051108 () Bool)

(assert (=> b!6223821 m!7051108))

(assert (=> b!6223808 m!7051098))

(assert (=> d!1950935 m!7051092))

(assert (=> d!1950935 m!7050540))

(assert (=> b!6223818 m!7051102))

(assert (=> b!6223818 m!7051102))

(assert (=> b!6223818 m!7051108))

(assert (=> b!6223076 d!1950935))

(declare-fun d!1950937 () Bool)

(assert (=> d!1950937 (= (matchR!8342 r!7292 s!2326) (matchRSpec!3260 r!7292 s!2326))))

(declare-fun lt!2345343 () Unit!157967)

(declare-fun choose!46256 (Regex!16159 List!64777) Unit!157967)

(assert (=> d!1950937 (= lt!2345343 (choose!46256 r!7292 s!2326))))

(assert (=> d!1950937 (validRegex!7895 r!7292)))

(assert (=> d!1950937 (= (mainMatchTheorem!3260 r!7292 s!2326) lt!2345343)))

(declare-fun bs!1543242 () Bool)

(assert (= bs!1543242 d!1950937))

(assert (=> bs!1543242 m!7050564))

(assert (=> bs!1543242 m!7050562))

(declare-fun m!7051110 () Bool)

(assert (=> bs!1543242 m!7051110))

(assert (=> bs!1543242 m!7050540))

(assert (=> b!6223076 d!1950937))

(assert (=> b!6223086 d!1950929))

(declare-fun d!1950939 () Bool)

(declare-fun c!1124720 () Bool)

(assert (=> d!1950939 (= c!1124720 (isEmpty!36666 (t!378311 s!2326)))))

(declare-fun e!3788420 () Bool)

(assert (=> d!1950939 (= (matchZipper!2171 lt!2345232 (t!378311 s!2326)) e!3788420)))

(declare-fun b!6223822 () Bool)

(assert (=> b!6223822 (= e!3788420 (nullableZipper!1933 lt!2345232))))

(declare-fun b!6223823 () Bool)

(assert (=> b!6223823 (= e!3788420 (matchZipper!2171 (derivationStepZipper!2125 lt!2345232 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))))))

(assert (= (and d!1950939 c!1124720) b!6223822))

(assert (= (and d!1950939 (not c!1124720)) b!6223823))

(assert (=> d!1950939 m!7050876))

(declare-fun m!7051112 () Bool)

(assert (=> b!6223822 m!7051112))

(assert (=> b!6223823 m!7050880))

(assert (=> b!6223823 m!7050880))

(declare-fun m!7051114 () Bool)

(assert (=> b!6223823 m!7051114))

(assert (=> b!6223823 m!7050884))

(assert (=> b!6223823 m!7051114))

(assert (=> b!6223823 m!7050884))

(declare-fun m!7051116 () Bool)

(assert (=> b!6223823 m!7051116))

(assert (=> b!6223086 d!1950939))

(declare-fun d!1950941 () Bool)

(declare-fun c!1124721 () Bool)

(assert (=> d!1950941 (= c!1124721 (isEmpty!36666 (t!378311 s!2326)))))

(declare-fun e!3788421 () Bool)

(assert (=> d!1950941 (= (matchZipper!2171 lt!2345250 (t!378311 s!2326)) e!3788421)))

(declare-fun b!6223824 () Bool)

(assert (=> b!6223824 (= e!3788421 (nullableZipper!1933 lt!2345250))))

(declare-fun b!6223825 () Bool)

(assert (=> b!6223825 (= e!3788421 (matchZipper!2171 (derivationStepZipper!2125 lt!2345250 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))))))

(assert (= (and d!1950941 c!1124721) b!6223824))

(assert (= (and d!1950941 (not c!1124721)) b!6223825))

(assert (=> d!1950941 m!7050876))

(declare-fun m!7051118 () Bool)

(assert (=> b!6223824 m!7051118))

(assert (=> b!6223825 m!7050880))

(assert (=> b!6223825 m!7050880))

(declare-fun m!7051120 () Bool)

(assert (=> b!6223825 m!7051120))

(assert (=> b!6223825 m!7050884))

(assert (=> b!6223825 m!7051120))

(assert (=> b!6223825 m!7050884))

(declare-fun m!7051122 () Bool)

(assert (=> b!6223825 m!7051122))

(assert (=> b!6223086 d!1950941))

(declare-fun d!1950943 () Bool)

(declare-fun e!3788422 () Bool)

(assert (=> d!1950943 (= (matchZipper!2171 ((_ map or) lt!2345250 lt!2345241) (t!378311 s!2326)) e!3788422)))

(declare-fun res!2572208 () Bool)

(assert (=> d!1950943 (=> res!2572208 e!3788422)))

(assert (=> d!1950943 (= res!2572208 (matchZipper!2171 lt!2345250 (t!378311 s!2326)))))

(declare-fun lt!2345344 () Unit!157967)

(assert (=> d!1950943 (= lt!2345344 (choose!46255 lt!2345250 lt!2345241 (t!378311 s!2326)))))

(assert (=> d!1950943 (= (lemmaZipperConcatMatchesSameAsBothZippers!990 lt!2345250 lt!2345241 (t!378311 s!2326)) lt!2345344)))

(declare-fun b!6223826 () Bool)

(assert (=> b!6223826 (= e!3788422 (matchZipper!2171 lt!2345241 (t!378311 s!2326)))))

(assert (= (and d!1950943 (not res!2572208)) b!6223826))

(declare-fun m!7051124 () Bool)

(assert (=> d!1950943 m!7051124))

(assert (=> d!1950943 m!7050536))

(declare-fun m!7051126 () Bool)

(assert (=> d!1950943 m!7051126))

(assert (=> b!6223826 m!7050556))

(assert (=> b!6223086 d!1950943))

(declare-fun d!1950945 () Bool)

(assert (=> d!1950945 (= (isEmpty!36663 (t!378310 (exprs!6043 (h!71102 zl!343)))) ((_ is Nil!64652) (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(assert (=> b!6223095 d!1950945))

(declare-fun bs!1543243 () Bool)

(declare-fun d!1950947 () Bool)

(assert (= bs!1543243 (and d!1950947 d!1950907)))

(declare-fun lambda!340245 () Int)

(assert (=> bs!1543243 (= lambda!340245 lambda!340238)))

(declare-fun bs!1543244 () Bool)

(assert (= bs!1543244 (and d!1950947 d!1950865)))

(assert (=> bs!1543244 (= lambda!340245 lambda!340217)))

(declare-fun bs!1543245 () Bool)

(assert (= bs!1543245 (and d!1950947 d!1950893)))

(assert (=> bs!1543245 (= lambda!340245 lambda!340232)))

(declare-fun bs!1543246 () Bool)

(assert (= bs!1543246 (and d!1950947 d!1950891)))

(assert (=> bs!1543246 (= lambda!340245 lambda!340229)))

(declare-fun bs!1543247 () Bool)

(assert (= bs!1543247 (and d!1950947 d!1950863)))

(assert (=> bs!1543247 (= lambda!340245 lambda!340216)))

(assert (=> d!1950947 (= (inv!83644 (h!71102 zl!343)) (forall!15273 (exprs!6043 (h!71102 zl!343)) lambda!340245))))

(declare-fun bs!1543248 () Bool)

(assert (= bs!1543248 d!1950947))

(declare-fun m!7051128 () Bool)

(assert (=> bs!1543248 m!7051128))

(assert (=> b!6223085 d!1950947))

(declare-fun b!6223831 () Bool)

(declare-fun e!3788425 () Bool)

(declare-fun tp!1736009 () Bool)

(declare-fun tp!1736010 () Bool)

(assert (=> b!6223831 (= e!3788425 (and tp!1736009 tp!1736010))))

(assert (=> b!6223090 (= tp!1735942 e!3788425)))

(assert (= (and b!6223090 ((_ is Cons!64652) (exprs!6043 (h!71102 zl!343)))) b!6223831))

(declare-fun e!3788428 () Bool)

(assert (=> b!6223094 (= tp!1735945 e!3788428)))

(declare-fun b!6223843 () Bool)

(declare-fun tp!1736023 () Bool)

(declare-fun tp!1736022 () Bool)

(assert (=> b!6223843 (= e!3788428 (and tp!1736023 tp!1736022))))

(declare-fun b!6223842 () Bool)

(assert (=> b!6223842 (= e!3788428 tp_is_empty!41571)))

(declare-fun b!6223844 () Bool)

(declare-fun tp!1736024 () Bool)

(assert (=> b!6223844 (= e!3788428 tp!1736024)))

(declare-fun b!6223845 () Bool)

(declare-fun tp!1736021 () Bool)

(declare-fun tp!1736025 () Bool)

(assert (=> b!6223845 (= e!3788428 (and tp!1736021 tp!1736025))))

(assert (= (and b!6223094 ((_ is ElementMatch!16159) (regOne!32830 r!7292))) b!6223842))

(assert (= (and b!6223094 ((_ is Concat!25004) (regOne!32830 r!7292))) b!6223843))

(assert (= (and b!6223094 ((_ is Star!16159) (regOne!32830 r!7292))) b!6223844))

(assert (= (and b!6223094 ((_ is Union!16159) (regOne!32830 r!7292))) b!6223845))

(declare-fun e!3788429 () Bool)

(assert (=> b!6223094 (= tp!1735939 e!3788429)))

(declare-fun b!6223847 () Bool)

(declare-fun tp!1736028 () Bool)

(declare-fun tp!1736027 () Bool)

(assert (=> b!6223847 (= e!3788429 (and tp!1736028 tp!1736027))))

(declare-fun b!6223846 () Bool)

(assert (=> b!6223846 (= e!3788429 tp_is_empty!41571)))

(declare-fun b!6223848 () Bool)

(declare-fun tp!1736029 () Bool)

(assert (=> b!6223848 (= e!3788429 tp!1736029)))

(declare-fun b!6223849 () Bool)

(declare-fun tp!1736026 () Bool)

(declare-fun tp!1736030 () Bool)

(assert (=> b!6223849 (= e!3788429 (and tp!1736026 tp!1736030))))

(assert (= (and b!6223094 ((_ is ElementMatch!16159) (regTwo!32830 r!7292))) b!6223846))

(assert (= (and b!6223094 ((_ is Concat!25004) (regTwo!32830 r!7292))) b!6223847))

(assert (= (and b!6223094 ((_ is Star!16159) (regTwo!32830 r!7292))) b!6223848))

(assert (= (and b!6223094 ((_ is Union!16159) (regTwo!32830 r!7292))) b!6223849))

(declare-fun b!6223850 () Bool)

(declare-fun e!3788430 () Bool)

(declare-fun tp!1736031 () Bool)

(declare-fun tp!1736032 () Bool)

(assert (=> b!6223850 (= e!3788430 (and tp!1736031 tp!1736032))))

(assert (=> b!6223073 (= tp!1735943 e!3788430)))

(assert (= (and b!6223073 ((_ is Cons!64652) (exprs!6043 setElem!42278))) b!6223850))

(declare-fun condSetEmpty!42284 () Bool)

(assert (=> setNonEmpty!42278 (= condSetEmpty!42284 (= setRest!42278 ((as const (Array Context!11086 Bool)) false)))))

(declare-fun setRes!42284 () Bool)

(assert (=> setNonEmpty!42278 (= tp!1735946 setRes!42284)))

(declare-fun setIsEmpty!42284 () Bool)

(assert (=> setIsEmpty!42284 setRes!42284))

(declare-fun e!3788433 () Bool)

(declare-fun setElem!42284 () Context!11086)

(declare-fun setNonEmpty!42284 () Bool)

(declare-fun tp!1736037 () Bool)

(assert (=> setNonEmpty!42284 (= setRes!42284 (and tp!1736037 (inv!83644 setElem!42284) e!3788433))))

(declare-fun setRest!42284 () (InoxSet Context!11086))

(assert (=> setNonEmpty!42284 (= setRest!42278 ((_ map or) (store ((as const (Array Context!11086 Bool)) false) setElem!42284 true) setRest!42284))))

(declare-fun b!6223855 () Bool)

(declare-fun tp!1736038 () Bool)

(assert (=> b!6223855 (= e!3788433 tp!1736038)))

(assert (= (and setNonEmpty!42278 condSetEmpty!42284) setIsEmpty!42284))

(assert (= (and setNonEmpty!42278 (not condSetEmpty!42284)) setNonEmpty!42284))

(assert (= setNonEmpty!42284 b!6223855))

(declare-fun m!7051130 () Bool)

(assert (=> setNonEmpty!42284 m!7051130))

(declare-fun e!3788434 () Bool)

(assert (=> b!6223097 (= tp!1735937 e!3788434)))

(declare-fun b!6223857 () Bool)

(declare-fun tp!1736041 () Bool)

(declare-fun tp!1736040 () Bool)

(assert (=> b!6223857 (= e!3788434 (and tp!1736041 tp!1736040))))

(declare-fun b!6223856 () Bool)

(assert (=> b!6223856 (= e!3788434 tp_is_empty!41571)))

(declare-fun b!6223858 () Bool)

(declare-fun tp!1736042 () Bool)

(assert (=> b!6223858 (= e!3788434 tp!1736042)))

(declare-fun b!6223859 () Bool)

(declare-fun tp!1736039 () Bool)

(declare-fun tp!1736043 () Bool)

(assert (=> b!6223859 (= e!3788434 (and tp!1736039 tp!1736043))))

(assert (= (and b!6223097 ((_ is ElementMatch!16159) (reg!16488 r!7292))) b!6223856))

(assert (= (and b!6223097 ((_ is Concat!25004) (reg!16488 r!7292))) b!6223857))

(assert (= (and b!6223097 ((_ is Star!16159) (reg!16488 r!7292))) b!6223858))

(assert (= (and b!6223097 ((_ is Union!16159) (reg!16488 r!7292))) b!6223859))

(declare-fun e!3788435 () Bool)

(assert (=> b!6223096 (= tp!1735938 e!3788435)))

(declare-fun b!6223861 () Bool)

(declare-fun tp!1736046 () Bool)

(declare-fun tp!1736045 () Bool)

(assert (=> b!6223861 (= e!3788435 (and tp!1736046 tp!1736045))))

(declare-fun b!6223860 () Bool)

(assert (=> b!6223860 (= e!3788435 tp_is_empty!41571)))

(declare-fun b!6223862 () Bool)

(declare-fun tp!1736047 () Bool)

(assert (=> b!6223862 (= e!3788435 tp!1736047)))

(declare-fun b!6223863 () Bool)

(declare-fun tp!1736044 () Bool)

(declare-fun tp!1736048 () Bool)

(assert (=> b!6223863 (= e!3788435 (and tp!1736044 tp!1736048))))

(assert (= (and b!6223096 ((_ is ElementMatch!16159) (regOne!32831 r!7292))) b!6223860))

(assert (= (and b!6223096 ((_ is Concat!25004) (regOne!32831 r!7292))) b!6223861))

(assert (= (and b!6223096 ((_ is Star!16159) (regOne!32831 r!7292))) b!6223862))

(assert (= (and b!6223096 ((_ is Union!16159) (regOne!32831 r!7292))) b!6223863))

(declare-fun e!3788436 () Bool)

(assert (=> b!6223096 (= tp!1735940 e!3788436)))

(declare-fun b!6223865 () Bool)

(declare-fun tp!1736051 () Bool)

(declare-fun tp!1736050 () Bool)

(assert (=> b!6223865 (= e!3788436 (and tp!1736051 tp!1736050))))

(declare-fun b!6223864 () Bool)

(assert (=> b!6223864 (= e!3788436 tp_is_empty!41571)))

(declare-fun b!6223866 () Bool)

(declare-fun tp!1736052 () Bool)

(assert (=> b!6223866 (= e!3788436 tp!1736052)))

(declare-fun b!6223867 () Bool)

(declare-fun tp!1736049 () Bool)

(declare-fun tp!1736053 () Bool)

(assert (=> b!6223867 (= e!3788436 (and tp!1736049 tp!1736053))))

(assert (= (and b!6223096 ((_ is ElementMatch!16159) (regTwo!32831 r!7292))) b!6223864))

(assert (= (and b!6223096 ((_ is Concat!25004) (regTwo!32831 r!7292))) b!6223865))

(assert (= (and b!6223096 ((_ is Star!16159) (regTwo!32831 r!7292))) b!6223866))

(assert (= (and b!6223096 ((_ is Union!16159) (regTwo!32831 r!7292))) b!6223867))

(declare-fun b!6223872 () Bool)

(declare-fun e!3788439 () Bool)

(declare-fun tp!1736056 () Bool)

(assert (=> b!6223872 (= e!3788439 (and tp_is_empty!41571 tp!1736056))))

(assert (=> b!6223101 (= tp!1735944 e!3788439)))

(assert (= (and b!6223101 ((_ is Cons!64653) (t!378311 s!2326))) b!6223872))

(declare-fun b!6223880 () Bool)

(declare-fun e!3788445 () Bool)

(declare-fun tp!1736061 () Bool)

(assert (=> b!6223880 (= e!3788445 tp!1736061)))

(declare-fun tp!1736062 () Bool)

(declare-fun b!6223879 () Bool)

(declare-fun e!3788444 () Bool)

(assert (=> b!6223879 (= e!3788444 (and (inv!83644 (h!71102 (t!378312 zl!343))) e!3788445 tp!1736062))))

(assert (=> b!6223085 (= tp!1735941 e!3788444)))

(assert (= b!6223879 b!6223880))

(assert (= (and b!6223085 ((_ is Cons!64654) (t!378312 zl!343))) b!6223879))

(declare-fun m!7051132 () Bool)

(assert (=> b!6223879 m!7051132))

(declare-fun b_lambda!236619 () Bool)

(assert (= b_lambda!236613 (or b!6223098 b_lambda!236619)))

(declare-fun bs!1543249 () Bool)

(declare-fun d!1950949 () Bool)

(assert (= bs!1543249 (and d!1950949 b!6223098)))

(assert (=> bs!1543249 (= (dynLambda!25511 lambda!340181 lt!2345242) (derivationStepZipperUp!1333 lt!2345242 (h!71101 s!2326)))))

(assert (=> bs!1543249 m!7050576))

(assert (=> d!1950885 d!1950949))

(declare-fun b_lambda!236621 () Bool)

(assert (= b_lambda!236615 (or b!6223098 b_lambda!236621)))

(declare-fun bs!1543250 () Bool)

(declare-fun d!1950951 () Bool)

(assert (= bs!1543250 (and d!1950951 b!6223098)))

(assert (=> bs!1543250 (= (dynLambda!25511 lambda!340181 lt!2345235) (derivationStepZipperUp!1333 lt!2345235 (h!71101 s!2326)))))

(assert (=> bs!1543250 m!7050602))

(assert (=> d!1950901 d!1950951))

(declare-fun b_lambda!236623 () Bool)

(assert (= b_lambda!236617 (or b!6223098 b_lambda!236623)))

(declare-fun bs!1543251 () Bool)

(declare-fun d!1950953 () Bool)

(assert (= bs!1543251 (and d!1950953 b!6223098)))

(assert (=> bs!1543251 (= (dynLambda!25511 lambda!340181 (h!71102 zl!343)) (derivationStepZipperUp!1333 (h!71102 zl!343) (h!71101 s!2326)))))

(assert (=> bs!1543251 m!7050584))

(assert (=> d!1950919 d!1950953))

(check-sat (not bm!522537) (not b!6223857) (not b!6223822) (not bm!522555) (not b!6223547) (not b!6223719) (not d!1950907) (not b!6223867) (not bm!522556) (not b!6223845) (not b!6223721) (not bm!522566) (not b!6223700) (not b!6223855) (not b!6223697) (not d!1950863) (not b!6223824) (not b!6223713) (not b!6223866) (not d!1950903) (not d!1950891) (not bm!522569) (not d!1950901) (not b!6223650) (not b!6223729) (not b!6223554) (not b!6223579) (not d!1950885) (not d!1950895) (not b!6223863) (not b!6223817) (not b!6223819) (not d!1950865) (not d!1950935) (not d!1950941) (not b!6223693) (not b!6223552) (not b!6223647) (not d!1950915) (not bs!1543251) (not b!6223808) (not b!6223734) (not setNonEmpty!42284) (not bs!1543249) (not d!1950947) (not b!6223622) (not bm!522536) (not d!1950877) (not bm!522558) (not b!6223736) (not bm!522540) (not bm!522561) (not b!6223879) (not b!6223733) (not d!1950909) (not b!6223844) (not b!6223858) (not d!1950897) (not bm!522579) (not b!6223703) (not b!6223859) (not bm!522565) (not d!1950905) (not d!1950867) (not b!6223847) (not b!6223651) (not b!6223525) (not d!1950893) (not bm!522564) (not d!1950879) (not b!6223692) (not b!6223698) (not b!6223499) (not b!6223880) (not d!1950869) (not b_lambda!236619) (not d!1950873) (not d!1950943) (not b!6223848) (not d!1950925) (not b!6223705) (not b!6223843) (not d!1950931) (not d!1950921) (not d!1950875) (not b!6223670) (not b!6223826) (not d!1950927) (not d!1950939) (not b!6223611) (not b!6223818) (not b!6223546) (not b!6223549) (not b!6223695) (not b!6223862) (not b!6223668) (not d!1950937) (not b!6223821) (not b!6223850) (not b_lambda!236623) (not b!6223726) (not d!1950871) (not b!6223820) (not b!6223732) (not d!1950881) (not bm!522572) (not bm!522562) (not b!6223666) (not b!6223831) (not b!6223849) (not b!6223648) (not d!1950929) (not b_lambda!236621) (not b!6223581) (not b!6223654) (not bm!522573) (not b!6223825) (not b!6223872) (not b!6223865) (not b!6223773) (not bm!522583) (not bs!1543250) (not bm!522574) (not b!6223660) (not b!6223655) (not bm!522580) (not d!1950853) (not b!6223653) (not b!6223724) (not b!6223669) tp_is_empty!41571 (not b!6223699) (not b!6223550) (not b!6223861) (not b!6223735) (not d!1950919) (not bm!522570) (not b!6223500) (not b!6223770) (not b!6223823))
(check-sat)
(get-model)

(declare-fun d!1950955 () Bool)

(declare-fun res!2572213 () Bool)

(declare-fun e!3788450 () Bool)

(assert (=> d!1950955 (=> res!2572213 e!3788450)))

(assert (=> d!1950955 (= res!2572213 ((_ is Nil!64652) (exprs!6043 lt!2345243)))))

(assert (=> d!1950955 (= (forall!15273 (exprs!6043 lt!2345243) lambda!340217) e!3788450)))

(declare-fun b!6223885 () Bool)

(declare-fun e!3788451 () Bool)

(assert (=> b!6223885 (= e!3788450 e!3788451)))

(declare-fun res!2572214 () Bool)

(assert (=> b!6223885 (=> (not res!2572214) (not e!3788451))))

(declare-fun dynLambda!25512 (Int Regex!16159) Bool)

(assert (=> b!6223885 (= res!2572214 (dynLambda!25512 lambda!340217 (h!71100 (exprs!6043 lt!2345243))))))

(declare-fun b!6223886 () Bool)

(assert (=> b!6223886 (= e!3788451 (forall!15273 (t!378310 (exprs!6043 lt!2345243)) lambda!340217))))

(assert (= (and d!1950955 (not res!2572213)) b!6223885))

(assert (= (and b!6223885 res!2572214) b!6223886))

(declare-fun b_lambda!236625 () Bool)

(assert (=> (not b_lambda!236625) (not b!6223885)))

(declare-fun m!7051134 () Bool)

(assert (=> b!6223885 m!7051134))

(declare-fun m!7051136 () Bool)

(assert (=> b!6223886 m!7051136))

(assert (=> d!1950865 d!1950955))

(declare-fun d!1950957 () Bool)

(declare-fun c!1124722 () Bool)

(assert (=> d!1950957 (= c!1124722 (isEmpty!36666 (tail!11911 (t!378311 s!2326))))))

(declare-fun e!3788452 () Bool)

(assert (=> d!1950957 (= (matchZipper!2171 (derivationStepZipper!2125 lt!2345232 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))) e!3788452)))

(declare-fun b!6223887 () Bool)

(assert (=> b!6223887 (= e!3788452 (nullableZipper!1933 (derivationStepZipper!2125 lt!2345232 (head!12826 (t!378311 s!2326)))))))

(declare-fun b!6223888 () Bool)

(assert (=> b!6223888 (= e!3788452 (matchZipper!2171 (derivationStepZipper!2125 (derivationStepZipper!2125 lt!2345232 (head!12826 (t!378311 s!2326))) (head!12826 (tail!11911 (t!378311 s!2326)))) (tail!11911 (tail!11911 (t!378311 s!2326)))))))

(assert (= (and d!1950957 c!1124722) b!6223887))

(assert (= (and d!1950957 (not c!1124722)) b!6223888))

(assert (=> d!1950957 m!7050884))

(declare-fun m!7051138 () Bool)

(assert (=> d!1950957 m!7051138))

(assert (=> b!6223887 m!7051114))

(declare-fun m!7051140 () Bool)

(assert (=> b!6223887 m!7051140))

(assert (=> b!6223888 m!7050884))

(declare-fun m!7051142 () Bool)

(assert (=> b!6223888 m!7051142))

(assert (=> b!6223888 m!7051114))

(assert (=> b!6223888 m!7051142))

(declare-fun m!7051144 () Bool)

(assert (=> b!6223888 m!7051144))

(assert (=> b!6223888 m!7050884))

(declare-fun m!7051146 () Bool)

(assert (=> b!6223888 m!7051146))

(assert (=> b!6223888 m!7051144))

(assert (=> b!6223888 m!7051146))

(declare-fun m!7051148 () Bool)

(assert (=> b!6223888 m!7051148))

(assert (=> b!6223823 d!1950957))

(declare-fun bs!1543252 () Bool)

(declare-fun d!1950959 () Bool)

(assert (= bs!1543252 (and d!1950959 b!6223098)))

(declare-fun lambda!340246 () Int)

(assert (=> bs!1543252 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340246 lambda!340181))))

(declare-fun bs!1543253 () Bool)

(assert (= bs!1543253 (and d!1950959 d!1950895)))

(assert (=> bs!1543253 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340246 lambda!340235))))

(assert (=> d!1950959 true))

(assert (=> d!1950959 (= (derivationStepZipper!2125 lt!2345232 (head!12826 (t!378311 s!2326))) (flatMap!1664 lt!2345232 lambda!340246))))

(declare-fun bs!1543254 () Bool)

(assert (= bs!1543254 d!1950959))

(declare-fun m!7051150 () Bool)

(assert (=> bs!1543254 m!7051150))

(assert (=> b!6223823 d!1950959))

(declare-fun d!1950961 () Bool)

(assert (=> d!1950961 (= (head!12826 (t!378311 s!2326)) (h!71101 (t!378311 s!2326)))))

(assert (=> b!6223823 d!1950961))

(declare-fun d!1950963 () Bool)

(assert (=> d!1950963 (= (tail!11911 (t!378311 s!2326)) (t!378311 (t!378311 s!2326)))))

(assert (=> b!6223823 d!1950963))

(declare-fun d!1950965 () Bool)

(assert (=> d!1950965 (= (isEmpty!36666 (t!378311 s!2326)) ((_ is Nil!64653) (t!378311 s!2326)))))

(assert (=> d!1950939 d!1950965))

(declare-fun d!1950967 () Bool)

(declare-fun c!1124725 () Bool)

(assert (=> d!1950967 (= c!1124725 ((_ is Nil!64654) lt!2345334))))

(declare-fun e!3788455 () (InoxSet Context!11086))

(assert (=> d!1950967 (= (content!12112 lt!2345334) e!3788455)))

(declare-fun b!6223893 () Bool)

(assert (=> b!6223893 (= e!3788455 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6223894 () Bool)

(assert (=> b!6223894 (= e!3788455 ((_ map or) (store ((as const (Array Context!11086 Bool)) false) (h!71102 lt!2345334) true) (content!12112 (t!378312 lt!2345334))))))

(assert (= (and d!1950967 c!1124725) b!6223893))

(assert (= (and d!1950967 (not c!1124725)) b!6223894))

(declare-fun m!7051152 () Bool)

(assert (=> b!6223894 m!7051152))

(declare-fun m!7051154 () Bool)

(assert (=> b!6223894 m!7051154))

(assert (=> b!6223729 d!1950967))

(declare-fun b!6223895 () Bool)

(declare-fun e!3788458 () (InoxSet Context!11086))

(declare-fun e!3788457 () (InoxSet Context!11086))

(assert (=> b!6223895 (= e!3788458 e!3788457)))

(declare-fun c!1124727 () Bool)

(assert (=> b!6223895 (= c!1124727 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345243))))))))

(declare-fun b!6223896 () Bool)

(assert (=> b!6223896 (= e!3788457 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1950969 () Bool)

(declare-fun c!1124726 () Bool)

(declare-fun e!3788456 () Bool)

(assert (=> d!1950969 (= c!1124726 e!3788456)))

(declare-fun res!2572215 () Bool)

(assert (=> d!1950969 (=> (not res!2572215) (not e!3788456))))

(assert (=> d!1950969 (= res!2572215 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345243))))))))

(assert (=> d!1950969 (= (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 lt!2345243))) (h!71101 s!2326)) e!3788458)))

(declare-fun bm!522584 () Bool)

(declare-fun call!522589 () (InoxSet Context!11086))

(assert (=> bm!522584 (= call!522589 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345243))))) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345243)))))) (h!71101 s!2326)))))

(declare-fun b!6223897 () Bool)

(assert (=> b!6223897 (= e!3788456 (nullable!6152 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345243)))))))))

(declare-fun b!6223898 () Bool)

(assert (=> b!6223898 (= e!3788457 call!522589)))

(declare-fun b!6223899 () Bool)

(assert (=> b!6223899 (= e!3788458 ((_ map or) call!522589 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345243)))))) (h!71101 s!2326))))))

(assert (= (and d!1950969 res!2572215) b!6223897))

(assert (= (and d!1950969 c!1124726) b!6223899))

(assert (= (and d!1950969 (not c!1124726)) b!6223895))

(assert (= (and b!6223895 c!1124727) b!6223898))

(assert (= (and b!6223895 (not c!1124727)) b!6223896))

(assert (= (or b!6223899 b!6223898) bm!522584))

(declare-fun m!7051156 () Bool)

(assert (=> bm!522584 m!7051156))

(declare-fun m!7051158 () Bool)

(assert (=> b!6223897 m!7051158))

(declare-fun m!7051160 () Bool)

(assert (=> b!6223899 m!7051160))

(assert (=> b!6223705 d!1950969))

(declare-fun bs!1543255 () Bool)

(declare-fun d!1950971 () Bool)

(assert (= bs!1543255 (and d!1950971 d!1950947)))

(declare-fun lambda!340247 () Int)

(assert (=> bs!1543255 (= lambda!340247 lambda!340245)))

(declare-fun bs!1543256 () Bool)

(assert (= bs!1543256 (and d!1950971 d!1950907)))

(assert (=> bs!1543256 (= lambda!340247 lambda!340238)))

(declare-fun bs!1543257 () Bool)

(assert (= bs!1543257 (and d!1950971 d!1950865)))

(assert (=> bs!1543257 (= lambda!340247 lambda!340217)))

(declare-fun bs!1543258 () Bool)

(assert (= bs!1543258 (and d!1950971 d!1950893)))

(assert (=> bs!1543258 (= lambda!340247 lambda!340232)))

(declare-fun bs!1543259 () Bool)

(assert (= bs!1543259 (and d!1950971 d!1950891)))

(assert (=> bs!1543259 (= lambda!340247 lambda!340229)))

(declare-fun bs!1543260 () Bool)

(assert (= bs!1543260 (and d!1950971 d!1950863)))

(assert (=> bs!1543260 (= lambda!340247 lambda!340216)))

(assert (=> d!1950971 (= (inv!83644 setElem!42284) (forall!15273 (exprs!6043 setElem!42284) lambda!340247))))

(declare-fun bs!1543261 () Bool)

(assert (= bs!1543261 d!1950971))

(declare-fun m!7051162 () Bool)

(assert (=> bs!1543261 m!7051162))

(assert (=> setNonEmpty!42284 d!1950971))

(declare-fun d!1950973 () Bool)

(assert (=> d!1950973 (= (nullable!6152 (h!71100 (exprs!6043 lt!2345242))) (nullableFct!2108 (h!71100 (exprs!6043 lt!2345242))))))

(declare-fun bs!1543262 () Bool)

(assert (= bs!1543262 d!1950973))

(declare-fun m!7051164 () Bool)

(assert (=> bs!1543262 m!7051164))

(assert (=> b!6223579 d!1950973))

(declare-fun d!1950975 () Bool)

(assert (=> d!1950975 (= (nullable!6152 (reg!16488 r!7292)) (nullableFct!2108 (reg!16488 r!7292)))))

(declare-fun bs!1543263 () Bool)

(assert (= bs!1543263 d!1950975))

(declare-fun m!7051166 () Bool)

(assert (=> bs!1543263 m!7051166))

(assert (=> b!6223525 d!1950975))

(declare-fun d!1950977 () Bool)

(assert (=> d!1950977 (= (nullable!6152 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (nullableFct!2108 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))))

(declare-fun bs!1543264 () Bool)

(assert (= bs!1543264 d!1950977))

(declare-fun m!7051168 () Bool)

(assert (=> bs!1543264 m!7051168))

(assert (=> b!6223724 d!1950977))

(declare-fun d!1950979 () Bool)

(assert (=> d!1950979 (= (head!12827 (unfocusZipperList!1580 zl!343)) (h!71100 (unfocusZipperList!1580 zl!343)))))

(assert (=> b!6223654 d!1950979))

(assert (=> d!1950853 d!1950965))

(declare-fun d!1950981 () Bool)

(assert (=> d!1950981 (= ($colon$colon!2028 (exprs!6043 lt!2345243) (ite (or c!1124688 c!1124689) (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (h!71100 (exprs!6043 (h!71102 zl!343))))) (Cons!64652 (ite (or c!1124688 c!1124689) (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (h!71100 (exprs!6043 (h!71102 zl!343)))) (exprs!6043 lt!2345243)))))

(assert (=> bm!522572 d!1950981))

(declare-fun d!1950983 () Bool)

(assert (=> d!1950983 (= (head!12826 s!2326) (h!71101 s!2326))))

(assert (=> b!6223817 d!1950983))

(declare-fun d!1950985 () Bool)

(declare-fun c!1124728 () Bool)

(assert (=> d!1950985 (= c!1124728 (isEmpty!36666 (tail!11911 (t!378311 s!2326))))))

(declare-fun e!3788459 () Bool)

(assert (=> d!1950985 (= (matchZipper!2171 (derivationStepZipper!2125 lt!2345249 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))) e!3788459)))

(declare-fun b!6223900 () Bool)

(assert (=> b!6223900 (= e!3788459 (nullableZipper!1933 (derivationStepZipper!2125 lt!2345249 (head!12826 (t!378311 s!2326)))))))

(declare-fun b!6223901 () Bool)

(assert (=> b!6223901 (= e!3788459 (matchZipper!2171 (derivationStepZipper!2125 (derivationStepZipper!2125 lt!2345249 (head!12826 (t!378311 s!2326))) (head!12826 (tail!11911 (t!378311 s!2326)))) (tail!11911 (tail!11911 (t!378311 s!2326)))))))

(assert (= (and d!1950985 c!1124728) b!6223900))

(assert (= (and d!1950985 (not c!1124728)) b!6223901))

(assert (=> d!1950985 m!7050884))

(assert (=> d!1950985 m!7051138))

(assert (=> b!6223900 m!7051080))

(declare-fun m!7051170 () Bool)

(assert (=> b!6223900 m!7051170))

(assert (=> b!6223901 m!7050884))

(assert (=> b!6223901 m!7051142))

(assert (=> b!6223901 m!7051080))

(assert (=> b!6223901 m!7051142))

(declare-fun m!7051172 () Bool)

(assert (=> b!6223901 m!7051172))

(assert (=> b!6223901 m!7050884))

(assert (=> b!6223901 m!7051146))

(assert (=> b!6223901 m!7051172))

(assert (=> b!6223901 m!7051146))

(declare-fun m!7051174 () Bool)

(assert (=> b!6223901 m!7051174))

(assert (=> b!6223734 d!1950985))

(declare-fun bs!1543265 () Bool)

(declare-fun d!1950987 () Bool)

(assert (= bs!1543265 (and d!1950987 b!6223098)))

(declare-fun lambda!340248 () Int)

(assert (=> bs!1543265 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340248 lambda!340181))))

(declare-fun bs!1543266 () Bool)

(assert (= bs!1543266 (and d!1950987 d!1950895)))

(assert (=> bs!1543266 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340248 lambda!340235))))

(declare-fun bs!1543267 () Bool)

(assert (= bs!1543267 (and d!1950987 d!1950959)))

(assert (=> bs!1543267 (= lambda!340248 lambda!340246)))

(assert (=> d!1950987 true))

(assert (=> d!1950987 (= (derivationStepZipper!2125 lt!2345249 (head!12826 (t!378311 s!2326))) (flatMap!1664 lt!2345249 lambda!340248))))

(declare-fun bs!1543268 () Bool)

(assert (= bs!1543268 d!1950987))

(declare-fun m!7051176 () Bool)

(assert (=> bs!1543268 m!7051176))

(assert (=> b!6223734 d!1950987))

(assert (=> b!6223734 d!1950961))

(assert (=> b!6223734 d!1950963))

(declare-fun d!1950989 () Bool)

(declare-fun c!1124729 () Bool)

(assert (=> d!1950989 (= c!1124729 (isEmpty!36666 (tail!11911 (t!378311 s!2326))))))

(declare-fun e!3788460 () Bool)

(assert (=> d!1950989 (= (matchZipper!2171 (derivationStepZipper!2125 lt!2345241 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))) e!3788460)))

(declare-fun b!6223902 () Bool)

(assert (=> b!6223902 (= e!3788460 (nullableZipper!1933 (derivationStepZipper!2125 lt!2345241 (head!12826 (t!378311 s!2326)))))))

(declare-fun b!6223903 () Bool)

(assert (=> b!6223903 (= e!3788460 (matchZipper!2171 (derivationStepZipper!2125 (derivationStepZipper!2125 lt!2345241 (head!12826 (t!378311 s!2326))) (head!12826 (tail!11911 (t!378311 s!2326)))) (tail!11911 (tail!11911 (t!378311 s!2326)))))))

(assert (= (and d!1950989 c!1124729) b!6223902))

(assert (= (and d!1950989 (not c!1124729)) b!6223903))

(assert (=> d!1950989 m!7050884))

(assert (=> d!1950989 m!7051138))

(assert (=> b!6223902 m!7051012))

(declare-fun m!7051178 () Bool)

(assert (=> b!6223902 m!7051178))

(assert (=> b!6223903 m!7050884))

(assert (=> b!6223903 m!7051142))

(assert (=> b!6223903 m!7051012))

(assert (=> b!6223903 m!7051142))

(declare-fun m!7051180 () Bool)

(assert (=> b!6223903 m!7051180))

(assert (=> b!6223903 m!7050884))

(assert (=> b!6223903 m!7051146))

(assert (=> b!6223903 m!7051180))

(assert (=> b!6223903 m!7051146))

(declare-fun m!7051182 () Bool)

(assert (=> b!6223903 m!7051182))

(assert (=> b!6223670 d!1950989))

(declare-fun bs!1543269 () Bool)

(declare-fun d!1950991 () Bool)

(assert (= bs!1543269 (and d!1950991 b!6223098)))

(declare-fun lambda!340249 () Int)

(assert (=> bs!1543269 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340249 lambda!340181))))

(declare-fun bs!1543270 () Bool)

(assert (= bs!1543270 (and d!1950991 d!1950895)))

(assert (=> bs!1543270 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340249 lambda!340235))))

(declare-fun bs!1543271 () Bool)

(assert (= bs!1543271 (and d!1950991 d!1950959)))

(assert (=> bs!1543271 (= lambda!340249 lambda!340246)))

(declare-fun bs!1543272 () Bool)

(assert (= bs!1543272 (and d!1950991 d!1950987)))

(assert (=> bs!1543272 (= lambda!340249 lambda!340248)))

(assert (=> d!1950991 true))

(assert (=> d!1950991 (= (derivationStepZipper!2125 lt!2345241 (head!12826 (t!378311 s!2326))) (flatMap!1664 lt!2345241 lambda!340249))))

(declare-fun bs!1543273 () Bool)

(assert (= bs!1543273 d!1950991))

(declare-fun m!7051184 () Bool)

(assert (=> bs!1543273 m!7051184))

(assert (=> b!6223670 d!1950991))

(assert (=> b!6223670 d!1950961))

(assert (=> b!6223670 d!1950963))

(assert (=> b!6223698 d!1950945))

(assert (=> d!1950941 d!1950965))

(declare-fun d!1950993 () Bool)

(assert (=> d!1950993 (= (flatMap!1664 lt!2345237 lambda!340235) (choose!46252 lt!2345237 lambda!340235))))

(declare-fun bs!1543274 () Bool)

(assert (= bs!1543274 d!1950993))

(declare-fun m!7051186 () Bool)

(assert (=> bs!1543274 m!7051186))

(assert (=> d!1950895 d!1950993))

(declare-fun bm!522585 () Bool)

(declare-fun call!522593 () (InoxSet Context!11086))

(declare-fun call!522591 () (InoxSet Context!11086))

(assert (=> bm!522585 (= call!522593 call!522591)))

(declare-fun b!6223904 () Bool)

(declare-fun e!3788463 () (InoxSet Context!11086))

(assert (=> b!6223904 (= e!3788463 call!522593)))

(declare-fun b!6223905 () Bool)

(declare-fun c!1124730 () Bool)

(declare-fun e!3788462 () Bool)

(assert (=> b!6223905 (= c!1124730 e!3788462)))

(declare-fun res!2572216 () Bool)

(assert (=> b!6223905 (=> (not res!2572216) (not e!3788462))))

(assert (=> b!6223905 (= res!2572216 ((_ is Concat!25004) (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))))

(declare-fun e!3788464 () (InoxSet Context!11086))

(declare-fun e!3788461 () (InoxSet Context!11086))

(assert (=> b!6223905 (= e!3788464 e!3788461)))

(declare-fun b!6223906 () Bool)

(declare-fun e!3788465 () (InoxSet Context!11086))

(assert (=> b!6223906 (= e!3788465 call!522593)))

(declare-fun e!3788466 () (InoxSet Context!11086))

(declare-fun b!6223907 () Bool)

(assert (=> b!6223907 (= e!3788466 (store ((as const (Array Context!11086 Bool)) false) (ite (or c!1124692 c!1124688) lt!2345243 (Context!11087 call!522572)) true))))

(declare-fun bm!522586 () Bool)

(declare-fun call!522595 () (InoxSet Context!11086))

(assert (=> bm!522586 (= call!522591 call!522595)))

(declare-fun c!1124731 () Bool)

(declare-fun bm!522587 () Bool)

(declare-fun call!522590 () List!64776)

(declare-fun c!1124734 () Bool)

(assert (=> bm!522587 (= call!522595 (derivationStepZipperDown!1407 (ite c!1124734 (regTwo!32831 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))) (ite c!1124730 (regTwo!32830 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))) (ite c!1124731 (regOne!32830 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))) (reg!16488 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343))))))))))) (ite (or c!1124734 c!1124730) (ite (or c!1124692 c!1124688) lt!2345243 (Context!11087 call!522572)) (Context!11087 call!522590)) (h!71101 s!2326)))))

(declare-fun b!6223908 () Bool)

(declare-fun call!522594 () (InoxSet Context!11086))

(assert (=> b!6223908 (= e!3788464 ((_ map or) call!522594 call!522595))))

(declare-fun d!1950995 () Bool)

(declare-fun c!1124732 () Bool)

(assert (=> d!1950995 (= c!1124732 (and ((_ is ElementMatch!16159) (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))) (= (c!1124503 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))) (h!71101 s!2326))))))

(assert (=> d!1950995 (= (derivationStepZipperDown!1407 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343))))))) (ite (or c!1124692 c!1124688) lt!2345243 (Context!11087 call!522572)) (h!71101 s!2326)) e!3788466)))

(declare-fun bm!522588 () Bool)

(declare-fun call!522592 () List!64776)

(assert (=> bm!522588 (= call!522594 (derivationStepZipperDown!1407 (ite c!1124734 (regOne!32831 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))) (regOne!32830 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343))))))))) (ite c!1124734 (ite (or c!1124692 c!1124688) lt!2345243 (Context!11087 call!522572)) (Context!11087 call!522592)) (h!71101 s!2326)))))

(declare-fun bm!522589 () Bool)

(assert (=> bm!522589 (= call!522590 call!522592)))

(declare-fun bm!522590 () Bool)

(assert (=> bm!522590 (= call!522592 ($colon$colon!2028 (exprs!6043 (ite (or c!1124692 c!1124688) lt!2345243 (Context!11087 call!522572))) (ite (or c!1124730 c!1124731) (regTwo!32830 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))) (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343))))))))))))

(declare-fun b!6223909 () Bool)

(declare-fun c!1124733 () Bool)

(assert (=> b!6223909 (= c!1124733 ((_ is Star!16159) (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))))

(assert (=> b!6223909 (= e!3788463 e!3788465)))

(declare-fun b!6223910 () Bool)

(assert (=> b!6223910 (= e!3788466 e!3788464)))

(assert (=> b!6223910 (= c!1124734 ((_ is Union!16159) (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))))

(declare-fun b!6223911 () Bool)

(assert (=> b!6223911 (= e!3788462 (nullable!6152 (regOne!32830 (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343))))))))))))

(declare-fun b!6223912 () Bool)

(assert (=> b!6223912 (= e!3788465 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6223913 () Bool)

(assert (=> b!6223913 (= e!3788461 e!3788463)))

(assert (=> b!6223913 (= c!1124731 ((_ is Concat!25004) (ite c!1124692 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124688 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124689 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))))

(declare-fun b!6223914 () Bool)

(assert (=> b!6223914 (= e!3788461 ((_ map or) call!522594 call!522591))))

(assert (= (and d!1950995 c!1124732) b!6223907))

(assert (= (and d!1950995 (not c!1124732)) b!6223910))

(assert (= (and b!6223910 c!1124734) b!6223908))

(assert (= (and b!6223910 (not c!1124734)) b!6223905))

(assert (= (and b!6223905 res!2572216) b!6223911))

(assert (= (and b!6223905 c!1124730) b!6223914))

(assert (= (and b!6223905 (not c!1124730)) b!6223913))

(assert (= (and b!6223913 c!1124731) b!6223904))

(assert (= (and b!6223913 (not c!1124731)) b!6223909))

(assert (= (and b!6223909 c!1124733) b!6223906))

(assert (= (and b!6223909 (not c!1124733)) b!6223912))

(assert (= (or b!6223904 b!6223906) bm!522589))

(assert (= (or b!6223904 b!6223906) bm!522585))

(assert (= (or b!6223914 bm!522589) bm!522590))

(assert (= (or b!6223914 bm!522585) bm!522586))

(assert (= (or b!6223908 bm!522586) bm!522587))

(assert (= (or b!6223908 b!6223914) bm!522588))

(declare-fun m!7051188 () Bool)

(assert (=> b!6223911 m!7051188))

(declare-fun m!7051190 () Bool)

(assert (=> bm!522588 m!7051190))

(declare-fun m!7051192 () Bool)

(assert (=> bm!522590 m!7051192))

(declare-fun m!7051194 () Bool)

(assert (=> bm!522587 m!7051194))

(declare-fun m!7051196 () Bool)

(assert (=> b!6223907 m!7051196))

(assert (=> bm!522569 d!1950995))

(declare-fun d!1950997 () Bool)

(declare-fun res!2572217 () Bool)

(declare-fun e!3788467 () Bool)

(assert (=> d!1950997 (=> res!2572217 e!3788467)))

(assert (=> d!1950997 (= res!2572217 ((_ is Nil!64652) (exprs!6043 setElem!42278)))))

(assert (=> d!1950997 (= (forall!15273 (exprs!6043 setElem!42278) lambda!340216) e!3788467)))

(declare-fun b!6223915 () Bool)

(declare-fun e!3788468 () Bool)

(assert (=> b!6223915 (= e!3788467 e!3788468)))

(declare-fun res!2572218 () Bool)

(assert (=> b!6223915 (=> (not res!2572218) (not e!3788468))))

(assert (=> b!6223915 (= res!2572218 (dynLambda!25512 lambda!340216 (h!71100 (exprs!6043 setElem!42278))))))

(declare-fun b!6223916 () Bool)

(assert (=> b!6223916 (= e!3788468 (forall!15273 (t!378310 (exprs!6043 setElem!42278)) lambda!340216))))

(assert (= (and d!1950997 (not res!2572217)) b!6223915))

(assert (= (and b!6223915 res!2572218) b!6223916))

(declare-fun b_lambda!236627 () Bool)

(assert (=> (not b_lambda!236627) (not b!6223915)))

(declare-fun m!7051198 () Bool)

(assert (=> b!6223915 m!7051198))

(declare-fun m!7051200 () Bool)

(assert (=> b!6223916 m!7051200))

(assert (=> d!1950863 d!1950997))

(declare-fun bm!522591 () Bool)

(declare-fun call!522599 () (InoxSet Context!11086))

(declare-fun call!522597 () (InoxSet Context!11086))

(assert (=> bm!522591 (= call!522599 call!522597)))

(declare-fun b!6223917 () Bool)

(declare-fun e!3788471 () (InoxSet Context!11086))

(assert (=> b!6223917 (= e!3788471 call!522599)))

(declare-fun b!6223918 () Bool)

(declare-fun c!1124735 () Bool)

(declare-fun e!3788470 () Bool)

(assert (=> b!6223918 (= c!1124735 e!3788470)))

(declare-fun res!2572219 () Bool)

(assert (=> b!6223918 (=> (not res!2572219) (not e!3788470))))

(assert (=> b!6223918 (= res!2572219 ((_ is Concat!25004) (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))))))

(declare-fun e!3788472 () (InoxSet Context!11086))

(declare-fun e!3788469 () (InoxSet Context!11086))

(assert (=> b!6223918 (= e!3788472 e!3788469)))

(declare-fun b!6223919 () Bool)

(declare-fun e!3788473 () (InoxSet Context!11086))

(assert (=> b!6223919 (= e!3788473 call!522599)))

(declare-fun e!3788474 () (InoxSet Context!11086))

(declare-fun b!6223920 () Bool)

(assert (=> b!6223920 (= e!3788474 (store ((as const (Array Context!11086 Bool)) false) (ite c!1124653 lt!2345242 (Context!11087 call!522566)) true))))

(declare-fun bm!522592 () Bool)

(declare-fun call!522601 () (InoxSet Context!11086))

(assert (=> bm!522592 (= call!522597 call!522601)))

(declare-fun c!1124736 () Bool)

(declare-fun call!522596 () List!64776)

(declare-fun bm!522593 () Bool)

(declare-fun c!1124739 () Bool)

(assert (=> bm!522593 (= call!522601 (derivationStepZipperDown!1407 (ite c!1124739 (regTwo!32831 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))) (ite c!1124735 (regTwo!32830 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))) (ite c!1124736 (regOne!32830 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))) (reg!16488 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))))))) (ite (or c!1124739 c!1124735) (ite c!1124653 lt!2345242 (Context!11087 call!522566)) (Context!11087 call!522596)) (h!71101 s!2326)))))

(declare-fun b!6223921 () Bool)

(declare-fun call!522600 () (InoxSet Context!11086))

(assert (=> b!6223921 (= e!3788472 ((_ map or) call!522600 call!522601))))

(declare-fun d!1950999 () Bool)

(declare-fun c!1124737 () Bool)

(assert (=> d!1950999 (= c!1124737 (and ((_ is ElementMatch!16159) (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))) (= (c!1124503 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))) (h!71101 s!2326))))))

(assert (=> d!1950999 (= (derivationStepZipperDown!1407 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))) (ite c!1124653 lt!2345242 (Context!11087 call!522566)) (h!71101 s!2326)) e!3788474)))

(declare-fun call!522598 () List!64776)

(declare-fun bm!522594 () Bool)

(assert (=> bm!522594 (= call!522600 (derivationStepZipperDown!1407 (ite c!1124739 (regOne!32831 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))) (regOne!32830 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))))) (ite c!1124739 (ite c!1124653 lt!2345242 (Context!11087 call!522566)) (Context!11087 call!522598)) (h!71101 s!2326)))))

(declare-fun bm!522595 () Bool)

(assert (=> bm!522595 (= call!522596 call!522598)))

(declare-fun bm!522596 () Bool)

(assert (=> bm!522596 (= call!522598 ($colon$colon!2028 (exprs!6043 (ite c!1124653 lt!2345242 (Context!11087 call!522566))) (ite (or c!1124735 c!1124736) (regTwo!32830 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))) (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))))))))

(declare-fun b!6223922 () Bool)

(declare-fun c!1124738 () Bool)

(assert (=> b!6223922 (= c!1124738 ((_ is Star!16159) (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))))))

(assert (=> b!6223922 (= e!3788471 e!3788473)))

(declare-fun b!6223923 () Bool)

(assert (=> b!6223923 (= e!3788474 e!3788472)))

(assert (=> b!6223923 (= c!1124739 ((_ is Union!16159) (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6223924 () Bool)

(assert (=> b!6223924 (= e!3788470 (nullable!6152 (regOne!32830 (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))))))))

(declare-fun b!6223925 () Bool)

(assert (=> b!6223925 (= e!3788473 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6223926 () Bool)

(assert (=> b!6223926 (= e!3788469 e!3788471)))

(assert (=> b!6223926 (= c!1124736 ((_ is Concat!25004) (ite c!1124653 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6223927 () Bool)

(assert (=> b!6223927 (= e!3788469 ((_ map or) call!522600 call!522597))))

(assert (= (and d!1950999 c!1124737) b!6223920))

(assert (= (and d!1950999 (not c!1124737)) b!6223923))

(assert (= (and b!6223923 c!1124739) b!6223921))

(assert (= (and b!6223923 (not c!1124739)) b!6223918))

(assert (= (and b!6223918 res!2572219) b!6223924))

(assert (= (and b!6223918 c!1124735) b!6223927))

(assert (= (and b!6223918 (not c!1124735)) b!6223926))

(assert (= (and b!6223926 c!1124736) b!6223917))

(assert (= (and b!6223926 (not c!1124736)) b!6223922))

(assert (= (and b!6223922 c!1124738) b!6223919))

(assert (= (and b!6223922 (not c!1124738)) b!6223925))

(assert (= (or b!6223917 b!6223919) bm!522595))

(assert (= (or b!6223917 b!6223919) bm!522591))

(assert (= (or b!6223927 bm!522595) bm!522596))

(assert (= (or b!6223927 bm!522591) bm!522592))

(assert (= (or b!6223921 bm!522592) bm!522593))

(assert (= (or b!6223921 b!6223927) bm!522594))

(declare-fun m!7051202 () Bool)

(assert (=> b!6223924 m!7051202))

(declare-fun m!7051204 () Bool)

(assert (=> bm!522594 m!7051204))

(declare-fun m!7051206 () Bool)

(assert (=> bm!522596 m!7051206))

(declare-fun m!7051208 () Bool)

(assert (=> bm!522593 m!7051208))

(declare-fun m!7051210 () Bool)

(assert (=> b!6223920 m!7051210))

(assert (=> bm!522562 d!1950999))

(assert (=> d!1950929 d!1950965))

(assert (=> d!1950927 d!1950931))

(assert (=> d!1950927 d!1950929))

(declare-fun e!3788477 () Bool)

(declare-fun d!1951001 () Bool)

(assert (=> d!1951001 (= (matchZipper!2171 ((_ map or) lt!2345249 lt!2345247) (t!378311 s!2326)) e!3788477)))

(declare-fun res!2572222 () Bool)

(assert (=> d!1951001 (=> res!2572222 e!3788477)))

(assert (=> d!1951001 (= res!2572222 (matchZipper!2171 lt!2345249 (t!378311 s!2326)))))

(assert (=> d!1951001 true))

(declare-fun _$48!1911 () Unit!157967)

(assert (=> d!1951001 (= (choose!46255 lt!2345249 lt!2345247 (t!378311 s!2326)) _$48!1911)))

(declare-fun b!6223930 () Bool)

(assert (=> b!6223930 (= e!3788477 (matchZipper!2171 lt!2345247 (t!378311 s!2326)))))

(assert (= (and d!1951001 (not res!2572222)) b!6223930))

(assert (=> d!1951001 m!7050526))

(assert (=> d!1951001 m!7050524))

(assert (=> b!6223930 m!7050614))

(assert (=> d!1950927 d!1951001))

(declare-fun d!1951003 () Bool)

(assert (=> d!1951003 (= (nullable!6152 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))) (nullableFct!2108 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))))))

(declare-fun bs!1543275 () Bool)

(assert (= bs!1543275 d!1951003))

(declare-fun m!7051212 () Bool)

(assert (=> bs!1543275 m!7051212))

(assert (=> b!6223611 d!1951003))

(assert (=> d!1950905 d!1950965))

(declare-fun bs!1543276 () Bool)

(declare-fun d!1951005 () Bool)

(assert (= bs!1543276 (and d!1951005 d!1950971)))

(declare-fun lambda!340250 () Int)

(assert (=> bs!1543276 (= lambda!340250 lambda!340247)))

(declare-fun bs!1543277 () Bool)

(assert (= bs!1543277 (and d!1951005 d!1950947)))

(assert (=> bs!1543277 (= lambda!340250 lambda!340245)))

(declare-fun bs!1543278 () Bool)

(assert (= bs!1543278 (and d!1951005 d!1950907)))

(assert (=> bs!1543278 (= lambda!340250 lambda!340238)))

(declare-fun bs!1543279 () Bool)

(assert (= bs!1543279 (and d!1951005 d!1950865)))

(assert (=> bs!1543279 (= lambda!340250 lambda!340217)))

(declare-fun bs!1543280 () Bool)

(assert (= bs!1543280 (and d!1951005 d!1950893)))

(assert (=> bs!1543280 (= lambda!340250 lambda!340232)))

(declare-fun bs!1543281 () Bool)

(assert (= bs!1543281 (and d!1951005 d!1950891)))

(assert (=> bs!1543281 (= lambda!340250 lambda!340229)))

(declare-fun bs!1543282 () Bool)

(assert (= bs!1543282 (and d!1951005 d!1950863)))

(assert (=> bs!1543282 (= lambda!340250 lambda!340216)))

(assert (=> d!1951005 (= (inv!83644 (h!71102 (t!378312 zl!343))) (forall!15273 (exprs!6043 (h!71102 (t!378312 zl!343))) lambda!340250))))

(declare-fun bs!1543283 () Bool)

(assert (= bs!1543283 d!1951005))

(declare-fun m!7051214 () Bool)

(assert (=> bs!1543283 m!7051214))

(assert (=> b!6223879 d!1951005))

(declare-fun d!1951007 () Bool)

(assert (=> d!1951007 (= (nullable!6152 (h!71100 (exprs!6043 lt!2345235))) (nullableFct!2108 (h!71100 (exprs!6043 lt!2345235))))))

(declare-fun bs!1543284 () Bool)

(assert (= bs!1543284 d!1951007))

(declare-fun m!7051216 () Bool)

(assert (=> bs!1543284 m!7051216))

(assert (=> b!6223666 d!1951007))

(declare-fun b!6223931 () Bool)

(declare-fun e!3788480 () (InoxSet Context!11086))

(declare-fun e!3788479 () (InoxSet Context!11086))

(assert (=> b!6223931 (= e!3788480 e!3788479)))

(declare-fun c!1124741 () Bool)

(assert (=> b!6223931 (= c!1124741 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))))))))

(declare-fun b!6223932 () Bool)

(assert (=> b!6223932 (= e!3788479 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1951009 () Bool)

(declare-fun c!1124740 () Bool)

(declare-fun e!3788478 () Bool)

(assert (=> d!1951009 (= c!1124740 e!3788478)))

(declare-fun res!2572223 () Bool)

(assert (=> d!1951009 (=> (not res!2572223) (not e!3788478))))

(assert (=> d!1951009 (= res!2572223 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))))))))

(assert (=> d!1951009 (= (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))) (h!71101 s!2326)) e!3788480)))

(declare-fun bm!522597 () Bool)

(declare-fun call!522602 () (InoxSet Context!11086))

(assert (=> bm!522597 (= call!522602 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))))) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343))))))) (h!71101 s!2326)))))

(declare-fun b!6223933 () Bool)

(assert (=> b!6223933 (= e!3788478 (nullable!6152 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343))))))))))

(declare-fun b!6223934 () Bool)

(assert (=> b!6223934 (= e!3788479 call!522602)))

(declare-fun b!6223935 () Bool)

(assert (=> b!6223935 (= e!3788480 ((_ map or) call!522602 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343))))))) (h!71101 s!2326))))))

(assert (= (and d!1951009 res!2572223) b!6223933))

(assert (= (and d!1951009 c!1124740) b!6223935))

(assert (= (and d!1951009 (not c!1124740)) b!6223931))

(assert (= (and b!6223931 c!1124741) b!6223934))

(assert (= (and b!6223931 (not c!1124741)) b!6223932))

(assert (= (or b!6223935 b!6223934) bm!522597))

(declare-fun m!7051218 () Bool)

(assert (=> bm!522597 m!7051218))

(declare-fun m!7051220 () Bool)

(assert (=> b!6223933 m!7051220))

(declare-fun m!7051222 () Bool)

(assert (=> b!6223935 m!7051222))

(assert (=> b!6223721 d!1951009))

(declare-fun d!1951011 () Bool)

(assert (=> d!1951011 (= (isDefined!12753 lt!2345308) (not (isEmpty!36667 lt!2345308)))))

(declare-fun bs!1543285 () Bool)

(assert (= bs!1543285 d!1951011))

(declare-fun m!7051224 () Bool)

(assert (=> bs!1543285 m!7051224))

(assert (=> b!6223549 d!1951011))

(declare-fun d!1951013 () Bool)

(assert (=> d!1951013 (= (isEmpty!36666 s!2326) ((_ is Nil!64653) s!2326))))

(assert (=> bm!522579 d!1951013))

(assert (=> b!6223732 d!1950853))

(declare-fun d!1951015 () Bool)

(declare-fun lambda!340253 () Int)

(declare-fun exists!2492 ((InoxSet Context!11086) Int) Bool)

(assert (=> d!1951015 (= (nullableZipper!1933 lt!2345232) (exists!2492 lt!2345232 lambda!340253))))

(declare-fun bs!1543286 () Bool)

(assert (= bs!1543286 d!1951015))

(declare-fun m!7051226 () Bool)

(assert (=> bs!1543286 m!7051226))

(assert (=> b!6223822 d!1951015))

(declare-fun b!6223950 () Bool)

(declare-fun e!3788493 () Bool)

(declare-fun call!522607 () Bool)

(assert (=> b!6223950 (= e!3788493 call!522607)))

(declare-fun bm!522602 () Bool)

(declare-fun c!1124746 () Bool)

(assert (=> bm!522602 (= call!522607 (nullable!6152 (ite c!1124746 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6223951 () Bool)

(declare-fun e!3788497 () Bool)

(declare-fun e!3788495 () Bool)

(assert (=> b!6223951 (= e!3788497 e!3788495)))

(declare-fun res!2572238 () Bool)

(declare-fun call!522608 () Bool)

(assert (=> b!6223951 (= res!2572238 call!522608)))

(assert (=> b!6223951 (=> (not res!2572238) (not e!3788495))))

(declare-fun b!6223952 () Bool)

(declare-fun e!3788494 () Bool)

(declare-fun e!3788498 () Bool)

(assert (=> b!6223952 (= e!3788494 e!3788498)))

(declare-fun res!2572234 () Bool)

(assert (=> b!6223952 (=> (not res!2572234) (not e!3788498))))

(assert (=> b!6223952 (= res!2572234 (and (not ((_ is EmptyLang!16159) (regTwo!32830 (regOne!32830 r!7292)))) (not ((_ is ElementMatch!16159) (regTwo!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6223953 () Bool)

(assert (=> b!6223953 (= e!3788495 call!522607)))

(declare-fun b!6223954 () Bool)

(assert (=> b!6223954 (= e!3788497 e!3788493)))

(declare-fun res!2572235 () Bool)

(assert (=> b!6223954 (= res!2572235 call!522608)))

(assert (=> b!6223954 (=> res!2572235 e!3788493)))

(declare-fun b!6223955 () Bool)

(declare-fun e!3788496 () Bool)

(assert (=> b!6223955 (= e!3788498 e!3788496)))

(declare-fun res!2572237 () Bool)

(assert (=> b!6223955 (=> res!2572237 e!3788496)))

(assert (=> b!6223955 (= res!2572237 ((_ is Star!16159) (regTwo!32830 (regOne!32830 r!7292))))))

(declare-fun d!1951017 () Bool)

(declare-fun res!2572236 () Bool)

(assert (=> d!1951017 (=> res!2572236 e!3788494)))

(assert (=> d!1951017 (= res!2572236 ((_ is EmptyExpr!16159) (regTwo!32830 (regOne!32830 r!7292))))))

(assert (=> d!1951017 (= (nullableFct!2108 (regTwo!32830 (regOne!32830 r!7292))) e!3788494)))

(declare-fun b!6223956 () Bool)

(assert (=> b!6223956 (= e!3788496 e!3788497)))

(assert (=> b!6223956 (= c!1124746 ((_ is Union!16159) (regTwo!32830 (regOne!32830 r!7292))))))

(declare-fun bm!522603 () Bool)

(assert (=> bm!522603 (= call!522608 (nullable!6152 (ite c!1124746 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))))))

(assert (= (and d!1951017 (not res!2572236)) b!6223952))

(assert (= (and b!6223952 res!2572234) b!6223955))

(assert (= (and b!6223955 (not res!2572237)) b!6223956))

(assert (= (and b!6223956 c!1124746) b!6223954))

(assert (= (and b!6223956 (not c!1124746)) b!6223951))

(assert (= (and b!6223954 (not res!2572235)) b!6223950))

(assert (= (and b!6223951 res!2572238) b!6223953))

(assert (= (or b!6223950 b!6223953) bm!522602))

(assert (= (or b!6223954 b!6223951) bm!522603))

(declare-fun m!7051228 () Bool)

(assert (=> bm!522602 m!7051228))

(declare-fun m!7051230 () Bool)

(assert (=> bm!522603 m!7051230))

(assert (=> d!1950879 d!1951017))

(declare-fun d!1951019 () Bool)

(declare-fun c!1124747 () Bool)

(assert (=> d!1951019 (= c!1124747 (isEmpty!36666 (tail!11911 (t!378311 s!2326))))))

(declare-fun e!3788499 () Bool)

(assert (=> d!1951019 (= (matchZipper!2171 (derivationStepZipper!2125 ((_ map or) lt!2345249 lt!2345247) (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))) e!3788499)))

(declare-fun b!6223957 () Bool)

(assert (=> b!6223957 (= e!3788499 (nullableZipper!1933 (derivationStepZipper!2125 ((_ map or) lt!2345249 lt!2345247) (head!12826 (t!378311 s!2326)))))))

(declare-fun b!6223958 () Bool)

(assert (=> b!6223958 (= e!3788499 (matchZipper!2171 (derivationStepZipper!2125 (derivationStepZipper!2125 ((_ map or) lt!2345249 lt!2345247) (head!12826 (t!378311 s!2326))) (head!12826 (tail!11911 (t!378311 s!2326)))) (tail!11911 (tail!11911 (t!378311 s!2326)))))))

(assert (= (and d!1951019 c!1124747) b!6223957))

(assert (= (and d!1951019 (not c!1124747)) b!6223958))

(assert (=> d!1951019 m!7050884))

(assert (=> d!1951019 m!7051138))

(assert (=> b!6223957 m!7051086))

(declare-fun m!7051232 () Bool)

(assert (=> b!6223957 m!7051232))

(assert (=> b!6223958 m!7050884))

(assert (=> b!6223958 m!7051142))

(assert (=> b!6223958 m!7051086))

(assert (=> b!6223958 m!7051142))

(declare-fun m!7051234 () Bool)

(assert (=> b!6223958 m!7051234))

(assert (=> b!6223958 m!7050884))

(assert (=> b!6223958 m!7051146))

(assert (=> b!6223958 m!7051234))

(assert (=> b!6223958 m!7051146))

(declare-fun m!7051236 () Bool)

(assert (=> b!6223958 m!7051236))

(assert (=> b!6223736 d!1951019))

(declare-fun bs!1543287 () Bool)

(declare-fun d!1951021 () Bool)

(assert (= bs!1543287 (and d!1951021 d!1950991)))

(declare-fun lambda!340254 () Int)

(assert (=> bs!1543287 (= lambda!340254 lambda!340249)))

(declare-fun bs!1543288 () Bool)

(assert (= bs!1543288 (and d!1951021 d!1950959)))

(assert (=> bs!1543288 (= lambda!340254 lambda!340246)))

(declare-fun bs!1543289 () Bool)

(assert (= bs!1543289 (and d!1951021 b!6223098)))

(assert (=> bs!1543289 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340254 lambda!340181))))

(declare-fun bs!1543290 () Bool)

(assert (= bs!1543290 (and d!1951021 d!1950895)))

(assert (=> bs!1543290 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340254 lambda!340235))))

(declare-fun bs!1543291 () Bool)

(assert (= bs!1543291 (and d!1951021 d!1950987)))

(assert (=> bs!1543291 (= lambda!340254 lambda!340248)))

(assert (=> d!1951021 true))

(assert (=> d!1951021 (= (derivationStepZipper!2125 ((_ map or) lt!2345249 lt!2345247) (head!12826 (t!378311 s!2326))) (flatMap!1664 ((_ map or) lt!2345249 lt!2345247) lambda!340254))))

(declare-fun bs!1543292 () Bool)

(assert (= bs!1543292 d!1951021))

(declare-fun m!7051238 () Bool)

(assert (=> bs!1543292 m!7051238))

(assert (=> b!6223736 d!1951021))

(assert (=> b!6223736 d!1950961))

(assert (=> b!6223736 d!1950963))

(declare-fun d!1951023 () Bool)

(declare-fun c!1124748 () Bool)

(assert (=> d!1951023 (= c!1124748 (isEmpty!36666 (t!378311 s!2326)))))

(declare-fun e!3788500 () Bool)

(assert (=> d!1951023 (= (matchZipper!2171 ((_ map or) lt!2345250 lt!2345241) (t!378311 s!2326)) e!3788500)))

(declare-fun b!6223959 () Bool)

(assert (=> b!6223959 (= e!3788500 (nullableZipper!1933 ((_ map or) lt!2345250 lt!2345241)))))

(declare-fun b!6223960 () Bool)

(assert (=> b!6223960 (= e!3788500 (matchZipper!2171 (derivationStepZipper!2125 ((_ map or) lt!2345250 lt!2345241) (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))))))

(assert (= (and d!1951023 c!1124748) b!6223959))

(assert (= (and d!1951023 (not c!1124748)) b!6223960))

(assert (=> d!1951023 m!7050876))

(declare-fun m!7051240 () Bool)

(assert (=> b!6223959 m!7051240))

(assert (=> b!6223960 m!7050880))

(assert (=> b!6223960 m!7050880))

(declare-fun m!7051242 () Bool)

(assert (=> b!6223960 m!7051242))

(assert (=> b!6223960 m!7050884))

(assert (=> b!6223960 m!7051242))

(assert (=> b!6223960 m!7050884))

(declare-fun m!7051244 () Bool)

(assert (=> b!6223960 m!7051244))

(assert (=> d!1950943 d!1951023))

(assert (=> d!1950943 d!1950941))

(declare-fun e!3788501 () Bool)

(declare-fun d!1951025 () Bool)

(assert (=> d!1951025 (= (matchZipper!2171 ((_ map or) lt!2345250 lt!2345241) (t!378311 s!2326)) e!3788501)))

(declare-fun res!2572239 () Bool)

(assert (=> d!1951025 (=> res!2572239 e!3788501)))

(assert (=> d!1951025 (= res!2572239 (matchZipper!2171 lt!2345250 (t!378311 s!2326)))))

(assert (=> d!1951025 true))

(declare-fun _$48!1912 () Unit!157967)

(assert (=> d!1951025 (= (choose!46255 lt!2345250 lt!2345241 (t!378311 s!2326)) _$48!1912)))

(declare-fun b!6223961 () Bool)

(assert (=> b!6223961 (= e!3788501 (matchZipper!2171 lt!2345241 (t!378311 s!2326)))))

(assert (= (and d!1951025 (not res!2572239)) b!6223961))

(assert (=> d!1951025 m!7051124))

(assert (=> d!1951025 m!7050536))

(assert (=> b!6223961 m!7050556))

(assert (=> d!1950943 d!1951025))

(assert (=> d!1950875 d!1950867))

(declare-fun b!6223962 () Bool)

(declare-fun e!3788508 () Bool)

(declare-fun e!3788502 () Bool)

(assert (=> b!6223962 (= e!3788508 e!3788502)))

(declare-fun c!1124749 () Bool)

(assert (=> b!6223962 (= c!1124749 ((_ is Star!16159) (regOne!32830 r!7292)))))

(declare-fun bm!522604 () Bool)

(declare-fun call!522610 () Bool)

(declare-fun call!522611 () Bool)

(assert (=> bm!522604 (= call!522610 call!522611)))

(declare-fun b!6223963 () Bool)

(declare-fun e!3788503 () Bool)

(assert (=> b!6223963 (= e!3788503 call!522610)))

(declare-fun b!6223964 () Bool)

(declare-fun e!3788506 () Bool)

(assert (=> b!6223964 (= e!3788506 call!522611)))

(declare-fun b!6223966 () Bool)

(declare-fun e!3788505 () Bool)

(assert (=> b!6223966 (= e!3788505 call!522610)))

(declare-fun b!6223967 () Bool)

(declare-fun e!3788504 () Bool)

(assert (=> b!6223967 (= e!3788502 e!3788504)))

(declare-fun c!1124750 () Bool)

(assert (=> b!6223967 (= c!1124750 ((_ is Union!16159) (regOne!32830 r!7292)))))

(declare-fun b!6223968 () Bool)

(assert (=> b!6223968 (= e!3788502 e!3788506)))

(declare-fun res!2572242 () Bool)

(assert (=> b!6223968 (= res!2572242 (not (nullable!6152 (reg!16488 (regOne!32830 r!7292)))))))

(assert (=> b!6223968 (=> (not res!2572242) (not e!3788506))))

(declare-fun bm!522605 () Bool)

(declare-fun call!522609 () Bool)

(assert (=> bm!522605 (= call!522609 (validRegex!7895 (ite c!1124750 (regOne!32831 (regOne!32830 r!7292)) (regOne!32830 (regOne!32830 r!7292)))))))

(declare-fun bm!522606 () Bool)

(assert (=> bm!522606 (= call!522611 (validRegex!7895 (ite c!1124749 (reg!16488 (regOne!32830 r!7292)) (ite c!1124750 (regTwo!32831 (regOne!32830 r!7292)) (regTwo!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6223969 () Bool)

(declare-fun e!3788507 () Bool)

(assert (=> b!6223969 (= e!3788507 e!3788505)))

(declare-fun res!2572244 () Bool)

(assert (=> b!6223969 (=> (not res!2572244) (not e!3788505))))

(assert (=> b!6223969 (= res!2572244 call!522609)))

(declare-fun b!6223970 () Bool)

(declare-fun res!2572243 () Bool)

(assert (=> b!6223970 (=> (not res!2572243) (not e!3788503))))

(assert (=> b!6223970 (= res!2572243 call!522609)))

(assert (=> b!6223970 (= e!3788504 e!3788503)))

(declare-fun d!1951027 () Bool)

(declare-fun res!2572240 () Bool)

(assert (=> d!1951027 (=> res!2572240 e!3788508)))

(assert (=> d!1951027 (= res!2572240 ((_ is ElementMatch!16159) (regOne!32830 r!7292)))))

(assert (=> d!1951027 (= (validRegex!7895 (regOne!32830 r!7292)) e!3788508)))

(declare-fun b!6223965 () Bool)

(declare-fun res!2572241 () Bool)

(assert (=> b!6223965 (=> res!2572241 e!3788507)))

(assert (=> b!6223965 (= res!2572241 (not ((_ is Concat!25004) (regOne!32830 r!7292))))))

(assert (=> b!6223965 (= e!3788504 e!3788507)))

(assert (= (and d!1951027 (not res!2572240)) b!6223962))

(assert (= (and b!6223962 c!1124749) b!6223968))

(assert (= (and b!6223962 (not c!1124749)) b!6223967))

(assert (= (and b!6223968 res!2572242) b!6223964))

(assert (= (and b!6223967 c!1124750) b!6223970))

(assert (= (and b!6223967 (not c!1124750)) b!6223965))

(assert (= (and b!6223970 res!2572243) b!6223963))

(assert (= (and b!6223965 (not res!2572241)) b!6223969))

(assert (= (and b!6223969 res!2572244) b!6223966))

(assert (= (or b!6223963 b!6223966) bm!522604))

(assert (= (or b!6223970 b!6223969) bm!522605))

(assert (= (or b!6223964 bm!522604) bm!522606))

(declare-fun m!7051246 () Bool)

(assert (=> b!6223968 m!7051246))

(declare-fun m!7051248 () Bool)

(assert (=> bm!522605 m!7051248))

(declare-fun m!7051250 () Bool)

(assert (=> bm!522606 m!7051250))

(assert (=> d!1950875 d!1951027))

(assert (=> d!1950875 d!1950873))

(declare-fun d!1951029 () Bool)

(assert (=> d!1951029 (= (Exists!3229 lambda!340226) (choose!46249 lambda!340226))))

(declare-fun bs!1543293 () Bool)

(assert (= bs!1543293 d!1951029))

(declare-fun m!7051252 () Bool)

(assert (=> bs!1543293 m!7051252))

(assert (=> d!1950875 d!1951029))

(declare-fun bs!1543294 () Bool)

(declare-fun d!1951031 () Bool)

(assert (= bs!1543294 (and d!1951031 b!6223092)))

(declare-fun lambda!340257 () Int)

(assert (=> bs!1543294 (= lambda!340257 lambda!340179)))

(declare-fun bs!1543295 () Bool)

(assert (= bs!1543295 (and d!1951031 d!1950875)))

(assert (=> bs!1543295 (= lambda!340257 lambda!340226)))

(declare-fun bs!1543296 () Bool)

(assert (= bs!1543296 (and d!1951031 b!6223775)))

(assert (=> bs!1543296 (not (= lambda!340257 lambda!340243))))

(declare-fun bs!1543297 () Bool)

(assert (= bs!1543297 (and d!1951031 b!6223771)))

(assert (=> bs!1543297 (not (= lambda!340257 lambda!340244))))

(declare-fun bs!1543298 () Bool)

(assert (= bs!1543298 (and d!1951031 d!1950871)))

(assert (=> bs!1543298 (not (= lambda!340257 lambda!340223))))

(assert (=> bs!1543298 (= lambda!340257 lambda!340222)))

(assert (=> bs!1543294 (not (= lambda!340257 lambda!340180))))

(assert (=> d!1951031 true))

(assert (=> d!1951031 true))

(assert (=> d!1951031 true))

(assert (=> d!1951031 (= (isDefined!12753 (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) Nil!64653 s!2326 s!2326)) (Exists!3229 lambda!340257))))

(assert (=> d!1951031 true))

(declare-fun _$89!2398 () Unit!157967)

(assert (=> d!1951031 (= (choose!46251 (regOne!32830 r!7292) (regTwo!32830 r!7292) s!2326) _$89!2398)))

(declare-fun bs!1543299 () Bool)

(assert (= bs!1543299 d!1951031))

(assert (=> bs!1543299 m!7050546))

(assert (=> bs!1543299 m!7050546))

(assert (=> bs!1543299 m!7050548))

(declare-fun m!7051254 () Bool)

(assert (=> bs!1543299 m!7051254))

(assert (=> d!1950875 d!1951031))

(assert (=> bm!522583 d!1951013))

(assert (=> bs!1543249 d!1950883))

(assert (=> d!1950931 d!1950965))

(declare-fun b!6223975 () Bool)

(declare-fun e!3788517 () Bool)

(declare-fun e!3788511 () Bool)

(assert (=> b!6223975 (= e!3788517 e!3788511)))

(declare-fun c!1124751 () Bool)

(assert (=> b!6223975 (= c!1124751 ((_ is Star!16159) lt!2345327))))

(declare-fun bm!522607 () Bool)

(declare-fun call!522613 () Bool)

(declare-fun call!522614 () Bool)

(assert (=> bm!522607 (= call!522613 call!522614)))

(declare-fun b!6223976 () Bool)

(declare-fun e!3788512 () Bool)

(assert (=> b!6223976 (= e!3788512 call!522613)))

(declare-fun b!6223977 () Bool)

(declare-fun e!3788515 () Bool)

(assert (=> b!6223977 (= e!3788515 call!522614)))

(declare-fun b!6223979 () Bool)

(declare-fun e!3788514 () Bool)

(assert (=> b!6223979 (= e!3788514 call!522613)))

(declare-fun b!6223980 () Bool)

(declare-fun e!3788513 () Bool)

(assert (=> b!6223980 (= e!3788511 e!3788513)))

(declare-fun c!1124752 () Bool)

(assert (=> b!6223980 (= c!1124752 ((_ is Union!16159) lt!2345327))))

(declare-fun b!6223981 () Bool)

(assert (=> b!6223981 (= e!3788511 e!3788515)))

(declare-fun res!2572251 () Bool)

(assert (=> b!6223981 (= res!2572251 (not (nullable!6152 (reg!16488 lt!2345327))))))

(assert (=> b!6223981 (=> (not res!2572251) (not e!3788515))))

(declare-fun bm!522608 () Bool)

(declare-fun call!522612 () Bool)

(assert (=> bm!522608 (= call!522612 (validRegex!7895 (ite c!1124752 (regOne!32831 lt!2345327) (regOne!32830 lt!2345327))))))

(declare-fun bm!522609 () Bool)

(assert (=> bm!522609 (= call!522614 (validRegex!7895 (ite c!1124751 (reg!16488 lt!2345327) (ite c!1124752 (regTwo!32831 lt!2345327) (regTwo!32830 lt!2345327)))))))

(declare-fun b!6223982 () Bool)

(declare-fun e!3788516 () Bool)

(assert (=> b!6223982 (= e!3788516 e!3788514)))

(declare-fun res!2572253 () Bool)

(assert (=> b!6223982 (=> (not res!2572253) (not e!3788514))))

(assert (=> b!6223982 (= res!2572253 call!522612)))

(declare-fun b!6223983 () Bool)

(declare-fun res!2572252 () Bool)

(assert (=> b!6223983 (=> (not res!2572252) (not e!3788512))))

(assert (=> b!6223983 (= res!2572252 call!522612)))

(assert (=> b!6223983 (= e!3788513 e!3788512)))

(declare-fun d!1951033 () Bool)

(declare-fun res!2572249 () Bool)

(assert (=> d!1951033 (=> res!2572249 e!3788517)))

(assert (=> d!1951033 (= res!2572249 ((_ is ElementMatch!16159) lt!2345327))))

(assert (=> d!1951033 (= (validRegex!7895 lt!2345327) e!3788517)))

(declare-fun b!6223978 () Bool)

(declare-fun res!2572250 () Bool)

(assert (=> b!6223978 (=> res!2572250 e!3788516)))

(assert (=> b!6223978 (= res!2572250 (not ((_ is Concat!25004) lt!2345327)))))

(assert (=> b!6223978 (= e!3788513 e!3788516)))

(assert (= (and d!1951033 (not res!2572249)) b!6223975))

(assert (= (and b!6223975 c!1124751) b!6223981))

(assert (= (and b!6223975 (not c!1124751)) b!6223980))

(assert (= (and b!6223981 res!2572251) b!6223977))

(assert (= (and b!6223980 c!1124752) b!6223983))

(assert (= (and b!6223980 (not c!1124752)) b!6223978))

(assert (= (and b!6223983 res!2572252) b!6223976))

(assert (= (and b!6223978 (not res!2572250)) b!6223982))

(assert (= (and b!6223982 res!2572253) b!6223979))

(assert (= (or b!6223976 b!6223979) bm!522607))

(assert (= (or b!6223983 b!6223982) bm!522608))

(assert (= (or b!6223977 bm!522607) bm!522609))

(declare-fun m!7051256 () Bool)

(assert (=> b!6223981 m!7051256))

(declare-fun m!7051258 () Bool)

(assert (=> bm!522608 m!7051258))

(declare-fun m!7051260 () Bool)

(assert (=> bm!522609 m!7051260))

(assert (=> d!1950907 d!1951033))

(declare-fun d!1951035 () Bool)

(declare-fun res!2572254 () Bool)

(declare-fun e!3788518 () Bool)

(assert (=> d!1951035 (=> res!2572254 e!3788518)))

(assert (=> d!1951035 (= res!2572254 ((_ is Nil!64652) (exprs!6043 (h!71102 zl!343))))))

(assert (=> d!1951035 (= (forall!15273 (exprs!6043 (h!71102 zl!343)) lambda!340238) e!3788518)))

(declare-fun b!6223984 () Bool)

(declare-fun e!3788519 () Bool)

(assert (=> b!6223984 (= e!3788518 e!3788519)))

(declare-fun res!2572255 () Bool)

(assert (=> b!6223984 (=> (not res!2572255) (not e!3788519))))

(assert (=> b!6223984 (= res!2572255 (dynLambda!25512 lambda!340238 (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6223985 () Bool)

(assert (=> b!6223985 (= e!3788519 (forall!15273 (t!378310 (exprs!6043 (h!71102 zl!343))) lambda!340238))))

(assert (= (and d!1951035 (not res!2572254)) b!6223984))

(assert (= (and b!6223984 res!2572255) b!6223985))

(declare-fun b_lambda!236629 () Bool)

(assert (=> (not b_lambda!236629) (not b!6223984)))

(declare-fun m!7051262 () Bool)

(assert (=> b!6223984 m!7051262))

(declare-fun m!7051264 () Bool)

(assert (=> b!6223985 m!7051264))

(assert (=> d!1950907 d!1951035))

(declare-fun bm!522610 () Bool)

(declare-fun call!522618 () (InoxSet Context!11086))

(declare-fun call!522616 () (InoxSet Context!11086))

(assert (=> bm!522610 (= call!522618 call!522616)))

(declare-fun b!6223986 () Bool)

(declare-fun e!3788522 () (InoxSet Context!11086))

(assert (=> b!6223986 (= e!3788522 call!522618)))

(declare-fun b!6223987 () Bool)

(declare-fun c!1124753 () Bool)

(declare-fun e!3788521 () Bool)

(assert (=> b!6223987 (= c!1124753 e!3788521)))

(declare-fun res!2572256 () Bool)

(assert (=> b!6223987 (=> (not res!2572256) (not e!3788521))))

(assert (=> b!6223987 (= res!2572256 ((_ is Concat!25004) (h!71100 (exprs!6043 lt!2345242))))))

(declare-fun e!3788523 () (InoxSet Context!11086))

(declare-fun e!3788520 () (InoxSet Context!11086))

(assert (=> b!6223987 (= e!3788523 e!3788520)))

(declare-fun b!6223988 () Bool)

(declare-fun e!3788524 () (InoxSet Context!11086))

(assert (=> b!6223988 (= e!3788524 call!522618)))

(declare-fun b!6223989 () Bool)

(declare-fun e!3788525 () (InoxSet Context!11086))

(assert (=> b!6223989 (= e!3788525 (store ((as const (Array Context!11086 Bool)) false) (Context!11087 (t!378310 (exprs!6043 lt!2345242))) true))))

(declare-fun bm!522611 () Bool)

(declare-fun call!522620 () (InoxSet Context!11086))

(assert (=> bm!522611 (= call!522616 call!522620)))

(declare-fun bm!522612 () Bool)

(declare-fun c!1124757 () Bool)

(declare-fun c!1124754 () Bool)

(declare-fun call!522615 () List!64776)

(assert (=> bm!522612 (= call!522620 (derivationStepZipperDown!1407 (ite c!1124757 (regTwo!32831 (h!71100 (exprs!6043 lt!2345242))) (ite c!1124753 (regTwo!32830 (h!71100 (exprs!6043 lt!2345242))) (ite c!1124754 (regOne!32830 (h!71100 (exprs!6043 lt!2345242))) (reg!16488 (h!71100 (exprs!6043 lt!2345242)))))) (ite (or c!1124757 c!1124753) (Context!11087 (t!378310 (exprs!6043 lt!2345242))) (Context!11087 call!522615)) (h!71101 s!2326)))))

(declare-fun b!6223990 () Bool)

(declare-fun call!522619 () (InoxSet Context!11086))

(assert (=> b!6223990 (= e!3788523 ((_ map or) call!522619 call!522620))))

(declare-fun d!1951037 () Bool)

(declare-fun c!1124755 () Bool)

(assert (=> d!1951037 (= c!1124755 (and ((_ is ElementMatch!16159) (h!71100 (exprs!6043 lt!2345242))) (= (c!1124503 (h!71100 (exprs!6043 lt!2345242))) (h!71101 s!2326))))))

(assert (=> d!1951037 (= (derivationStepZipperDown!1407 (h!71100 (exprs!6043 lt!2345242)) (Context!11087 (t!378310 (exprs!6043 lt!2345242))) (h!71101 s!2326)) e!3788525)))

(declare-fun call!522617 () List!64776)

(declare-fun bm!522613 () Bool)

(assert (=> bm!522613 (= call!522619 (derivationStepZipperDown!1407 (ite c!1124757 (regOne!32831 (h!71100 (exprs!6043 lt!2345242))) (regOne!32830 (h!71100 (exprs!6043 lt!2345242)))) (ite c!1124757 (Context!11087 (t!378310 (exprs!6043 lt!2345242))) (Context!11087 call!522617)) (h!71101 s!2326)))))

(declare-fun bm!522614 () Bool)

(assert (=> bm!522614 (= call!522615 call!522617)))

(declare-fun bm!522615 () Bool)

(assert (=> bm!522615 (= call!522617 ($colon$colon!2028 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345242)))) (ite (or c!1124753 c!1124754) (regTwo!32830 (h!71100 (exprs!6043 lt!2345242))) (h!71100 (exprs!6043 lt!2345242)))))))

(declare-fun b!6223991 () Bool)

(declare-fun c!1124756 () Bool)

(assert (=> b!6223991 (= c!1124756 ((_ is Star!16159) (h!71100 (exprs!6043 lt!2345242))))))

(assert (=> b!6223991 (= e!3788522 e!3788524)))

(declare-fun b!6223992 () Bool)

(assert (=> b!6223992 (= e!3788525 e!3788523)))

(assert (=> b!6223992 (= c!1124757 ((_ is Union!16159) (h!71100 (exprs!6043 lt!2345242))))))

(declare-fun b!6223993 () Bool)

(assert (=> b!6223993 (= e!3788521 (nullable!6152 (regOne!32830 (h!71100 (exprs!6043 lt!2345242)))))))

(declare-fun b!6223994 () Bool)

(assert (=> b!6223994 (= e!3788524 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6223995 () Bool)

(assert (=> b!6223995 (= e!3788520 e!3788522)))

(assert (=> b!6223995 (= c!1124754 ((_ is Concat!25004) (h!71100 (exprs!6043 lt!2345242))))))

(declare-fun b!6223996 () Bool)

(assert (=> b!6223996 (= e!3788520 ((_ map or) call!522619 call!522616))))

(assert (= (and d!1951037 c!1124755) b!6223989))

(assert (= (and d!1951037 (not c!1124755)) b!6223992))

(assert (= (and b!6223992 c!1124757) b!6223990))

(assert (= (and b!6223992 (not c!1124757)) b!6223987))

(assert (= (and b!6223987 res!2572256) b!6223993))

(assert (= (and b!6223987 c!1124753) b!6223996))

(assert (= (and b!6223987 (not c!1124753)) b!6223995))

(assert (= (and b!6223995 c!1124754) b!6223986))

(assert (= (and b!6223995 (not c!1124754)) b!6223991))

(assert (= (and b!6223991 c!1124756) b!6223988))

(assert (= (and b!6223991 (not c!1124756)) b!6223994))

(assert (= (or b!6223986 b!6223988) bm!522614))

(assert (= (or b!6223986 b!6223988) bm!522610))

(assert (= (or b!6223996 bm!522614) bm!522615))

(assert (= (or b!6223996 bm!522610) bm!522611))

(assert (= (or b!6223990 bm!522611) bm!522612))

(assert (= (or b!6223990 b!6223996) bm!522613))

(declare-fun m!7051266 () Bool)

(assert (=> b!6223993 m!7051266))

(declare-fun m!7051268 () Bool)

(assert (=> bm!522613 m!7051268))

(declare-fun m!7051270 () Bool)

(assert (=> bm!522615 m!7051270))

(declare-fun m!7051272 () Bool)

(assert (=> bm!522612 m!7051272))

(declare-fun m!7051274 () Bool)

(assert (=> b!6223989 m!7051274))

(assert (=> bm!522540 d!1951037))

(declare-fun bm!522616 () Bool)

(declare-fun call!522624 () (InoxSet Context!11086))

(declare-fun call!522622 () (InoxSet Context!11086))

(assert (=> bm!522616 (= call!522624 call!522622)))

(declare-fun b!6223997 () Bool)

(declare-fun e!3788528 () (InoxSet Context!11086))

(assert (=> b!6223997 (= e!3788528 call!522624)))

(declare-fun b!6223998 () Bool)

(declare-fun c!1124758 () Bool)

(declare-fun e!3788527 () Bool)

(assert (=> b!6223998 (= c!1124758 e!3788527)))

(declare-fun res!2572257 () Bool)

(assert (=> b!6223998 (=> (not res!2572257) (not e!3788527))))

(assert (=> b!6223998 (= res!2572257 ((_ is Concat!25004) (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))))

(declare-fun e!3788529 () (InoxSet Context!11086))

(declare-fun e!3788526 () (InoxSet Context!11086))

(assert (=> b!6223998 (= e!3788529 e!3788526)))

(declare-fun b!6223999 () Bool)

(declare-fun e!3788530 () (InoxSet Context!11086))

(assert (=> b!6223999 (= e!3788530 call!522624)))

(declare-fun b!6224000 () Bool)

(declare-fun e!3788531 () (InoxSet Context!11086))

(assert (=> b!6224000 (= e!3788531 (store ((as const (Array Context!11086 Bool)) false) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) true))))

(declare-fun bm!522617 () Bool)

(declare-fun call!522626 () (InoxSet Context!11086))

(assert (=> bm!522617 (= call!522622 call!522626)))

(declare-fun c!1124759 () Bool)

(declare-fun c!1124762 () Bool)

(declare-fun bm!522618 () Bool)

(declare-fun call!522621 () List!64776)

(assert (=> bm!522618 (= call!522626 (derivationStepZipperDown!1407 (ite c!1124762 (regTwo!32831 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (ite c!1124758 (regTwo!32830 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (ite c!1124759 (regOne!32830 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (reg!16488 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))))) (ite (or c!1124762 c!1124758) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (Context!11087 call!522621)) (h!71101 s!2326)))))

(declare-fun b!6224001 () Bool)

(declare-fun call!522625 () (InoxSet Context!11086))

(assert (=> b!6224001 (= e!3788529 ((_ map or) call!522625 call!522626))))

(declare-fun d!1951039 () Bool)

(declare-fun c!1124760 () Bool)

(assert (=> d!1951039 (= c!1124760 (and ((_ is ElementMatch!16159) (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (= (c!1124503 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (h!71101 s!2326))))))

(assert (=> d!1951039 (= (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (h!71101 s!2326)) e!3788531)))

(declare-fun call!522623 () List!64776)

(declare-fun bm!522619 () Bool)

(assert (=> bm!522619 (= call!522625 (derivationStepZipperDown!1407 (ite c!1124762 (regOne!32831 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (regOne!32830 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))) (ite c!1124762 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (Context!11087 call!522623)) (h!71101 s!2326)))))

(declare-fun bm!522620 () Bool)

(assert (=> bm!522620 (= call!522621 call!522623)))

(declare-fun bm!522621 () Bool)

(assert (=> bm!522621 (= call!522623 ($colon$colon!2028 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))) (ite (or c!1124758 c!1124759) (regTwo!32830 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))))))

(declare-fun b!6224002 () Bool)

(declare-fun c!1124761 () Bool)

(assert (=> b!6224002 (= c!1124761 ((_ is Star!16159) (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))))

(assert (=> b!6224002 (= e!3788528 e!3788530)))

(declare-fun b!6224003 () Bool)

(assert (=> b!6224003 (= e!3788531 e!3788529)))

(assert (=> b!6224003 (= c!1124762 ((_ is Union!16159) (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))))

(declare-fun b!6224004 () Bool)

(assert (=> b!6224004 (= e!3788527 (nullable!6152 (regOne!32830 (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))))))

(declare-fun b!6224005 () Bool)

(assert (=> b!6224005 (= e!3788530 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6224006 () Bool)

(assert (=> b!6224006 (= e!3788526 e!3788528)))

(assert (=> b!6224006 (= c!1124759 ((_ is Concat!25004) (h!71100 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))))

(declare-fun b!6224007 () Bool)

(assert (=> b!6224007 (= e!3788526 ((_ map or) call!522625 call!522622))))

(assert (= (and d!1951039 c!1124760) b!6224000))

(assert (= (and d!1951039 (not c!1124760)) b!6224003))

(assert (= (and b!6224003 c!1124762) b!6224001))

(assert (= (and b!6224003 (not c!1124762)) b!6223998))

(assert (= (and b!6223998 res!2572257) b!6224004))

(assert (= (and b!6223998 c!1124758) b!6224007))

(assert (= (and b!6223998 (not c!1124758)) b!6224006))

(assert (= (and b!6224006 c!1124759) b!6223997))

(assert (= (and b!6224006 (not c!1124759)) b!6224002))

(assert (= (and b!6224002 c!1124761) b!6223999))

(assert (= (and b!6224002 (not c!1124761)) b!6224005))

(assert (= (or b!6223997 b!6223999) bm!522620))

(assert (= (or b!6223997 b!6223999) bm!522616))

(assert (= (or b!6224007 bm!522620) bm!522621))

(assert (= (or b!6224007 bm!522616) bm!522617))

(assert (= (or b!6224001 bm!522617) bm!522618))

(assert (= (or b!6224001 b!6224007) bm!522619))

(declare-fun m!7051276 () Bool)

(assert (=> b!6224004 m!7051276))

(declare-fun m!7051278 () Bool)

(assert (=> bm!522619 m!7051278))

(declare-fun m!7051280 () Bool)

(assert (=> bm!522621 m!7051280))

(declare-fun m!7051282 () Bool)

(assert (=> bm!522618 m!7051282))

(declare-fun m!7051284 () Bool)

(assert (=> b!6224000 m!7051284))

(assert (=> bm!522574 d!1951039))

(declare-fun d!1951041 () Bool)

(declare-fun c!1124763 () Bool)

(assert (=> d!1951041 (= c!1124763 (isEmpty!36666 (tail!11911 (t!378311 s!2326))))))

(declare-fun e!3788532 () Bool)

(assert (=> d!1951041 (= (matchZipper!2171 (derivationStepZipper!2125 lt!2345250 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))) e!3788532)))

(declare-fun b!6224008 () Bool)

(assert (=> b!6224008 (= e!3788532 (nullableZipper!1933 (derivationStepZipper!2125 lt!2345250 (head!12826 (t!378311 s!2326)))))))

(declare-fun b!6224009 () Bool)

(assert (=> b!6224009 (= e!3788532 (matchZipper!2171 (derivationStepZipper!2125 (derivationStepZipper!2125 lt!2345250 (head!12826 (t!378311 s!2326))) (head!12826 (tail!11911 (t!378311 s!2326)))) (tail!11911 (tail!11911 (t!378311 s!2326)))))))

(assert (= (and d!1951041 c!1124763) b!6224008))

(assert (= (and d!1951041 (not c!1124763)) b!6224009))

(assert (=> d!1951041 m!7050884))

(assert (=> d!1951041 m!7051138))

(assert (=> b!6224008 m!7051120))

(declare-fun m!7051286 () Bool)

(assert (=> b!6224008 m!7051286))

(assert (=> b!6224009 m!7050884))

(assert (=> b!6224009 m!7051142))

(assert (=> b!6224009 m!7051120))

(assert (=> b!6224009 m!7051142))

(declare-fun m!7051288 () Bool)

(assert (=> b!6224009 m!7051288))

(assert (=> b!6224009 m!7050884))

(assert (=> b!6224009 m!7051146))

(assert (=> b!6224009 m!7051288))

(assert (=> b!6224009 m!7051146))

(declare-fun m!7051290 () Bool)

(assert (=> b!6224009 m!7051290))

(assert (=> b!6223825 d!1951041))

(declare-fun bs!1543300 () Bool)

(declare-fun d!1951043 () Bool)

(assert (= bs!1543300 (and d!1951043 d!1951021)))

(declare-fun lambda!340258 () Int)

(assert (=> bs!1543300 (= lambda!340258 lambda!340254)))

(declare-fun bs!1543301 () Bool)

(assert (= bs!1543301 (and d!1951043 d!1950991)))

(assert (=> bs!1543301 (= lambda!340258 lambda!340249)))

(declare-fun bs!1543302 () Bool)

(assert (= bs!1543302 (and d!1951043 d!1950959)))

(assert (=> bs!1543302 (= lambda!340258 lambda!340246)))

(declare-fun bs!1543303 () Bool)

(assert (= bs!1543303 (and d!1951043 b!6223098)))

(assert (=> bs!1543303 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340258 lambda!340181))))

(declare-fun bs!1543304 () Bool)

(assert (= bs!1543304 (and d!1951043 d!1950895)))

(assert (=> bs!1543304 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340258 lambda!340235))))

(declare-fun bs!1543305 () Bool)

(assert (= bs!1543305 (and d!1951043 d!1950987)))

(assert (=> bs!1543305 (= lambda!340258 lambda!340248)))

(assert (=> d!1951043 true))

(assert (=> d!1951043 (= (derivationStepZipper!2125 lt!2345250 (head!12826 (t!378311 s!2326))) (flatMap!1664 lt!2345250 lambda!340258))))

(declare-fun bs!1543306 () Bool)

(assert (= bs!1543306 d!1951043))

(declare-fun m!7051292 () Bool)

(assert (=> bs!1543306 m!7051292))

(assert (=> b!6223825 d!1951043))

(assert (=> b!6223825 d!1950961))

(assert (=> b!6223825 d!1950963))

(declare-fun d!1951045 () Bool)

(assert (=> d!1951045 (= (isEmpty!36667 (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) Nil!64653 s!2326 s!2326)) (not ((_ is Some!16049) (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) Nil!64653 s!2326 s!2326))))))

(assert (=> d!1950873 d!1951045))

(declare-fun d!1951047 () Bool)

(assert (=> d!1951047 (= (isUnion!1008 lt!2345320) ((_ is Union!16159) lt!2345320))))

(assert (=> b!6223653 d!1951047))

(declare-fun d!1951049 () Bool)

(assert (=> d!1951049 (= (isEmpty!36666 (tail!11911 s!2326)) ((_ is Nil!64653) (tail!11911 s!2326)))))

(assert (=> b!6223821 d!1951049))

(declare-fun d!1951051 () Bool)

(assert (=> d!1951051 (= (tail!11911 s!2326) (t!378311 s!2326))))

(assert (=> b!6223821 d!1951051))

(declare-fun bs!1543307 () Bool)

(declare-fun d!1951053 () Bool)

(assert (= bs!1543307 (and d!1951053 d!1951015)))

(declare-fun lambda!340259 () Int)

(assert (=> bs!1543307 (= lambda!340259 lambda!340253)))

(assert (=> d!1951053 (= (nullableZipper!1933 lt!2345241) (exists!2492 lt!2345241 lambda!340259))))

(declare-fun bs!1543308 () Bool)

(assert (= bs!1543308 d!1951053))

(declare-fun m!7051294 () Bool)

(assert (=> bs!1543308 m!7051294))

(assert (=> b!6223669 d!1951053))

(declare-fun bs!1543309 () Bool)

(declare-fun d!1951055 () Bool)

(assert (= bs!1543309 (and d!1951055 d!1951015)))

(declare-fun lambda!340260 () Int)

(assert (=> bs!1543309 (= lambda!340260 lambda!340253)))

(declare-fun bs!1543310 () Bool)

(assert (= bs!1543310 (and d!1951055 d!1951053)))

(assert (=> bs!1543310 (= lambda!340260 lambda!340259)))

(assert (=> d!1951055 (= (nullableZipper!1933 lt!2345250) (exists!2492 lt!2345250 lambda!340260))))

(declare-fun bs!1543311 () Bool)

(assert (= bs!1543311 d!1951055))

(declare-fun m!7051296 () Bool)

(assert (=> bs!1543311 m!7051296))

(assert (=> b!6223824 d!1951055))

(assert (=> d!1950935 d!1951013))

(assert (=> d!1950935 d!1950861))

(declare-fun d!1951057 () Bool)

(assert (=> d!1951057 (= (head!12827 (exprs!6043 (h!71102 zl!343))) (h!71100 (exprs!6043 (h!71102 zl!343))))))

(assert (=> b!6223697 d!1951057))

(assert (=> d!1950867 d!1951011))

(declare-fun b!6224010 () Bool)

(declare-fun e!3788538 () Bool)

(assert (=> b!6224010 (= e!3788538 (= (head!12826 Nil!64653) (c!1124503 (regOne!32830 r!7292))))))

(declare-fun bm!522622 () Bool)

(declare-fun call!522627 () Bool)

(assert (=> bm!522622 (= call!522627 (isEmpty!36666 Nil!64653))))

(declare-fun b!6224011 () Bool)

(declare-fun res!2572260 () Bool)

(declare-fun e!3788537 () Bool)

(assert (=> b!6224011 (=> res!2572260 e!3788537)))

(assert (=> b!6224011 (= res!2572260 e!3788538)))

(declare-fun res!2572263 () Bool)

(assert (=> b!6224011 (=> (not res!2572263) (not e!3788538))))

(declare-fun lt!2345345 () Bool)

(assert (=> b!6224011 (= res!2572263 lt!2345345)))

(declare-fun b!6224012 () Bool)

(declare-fun e!3788535 () Bool)

(declare-fun e!3788533 () Bool)

(assert (=> b!6224012 (= e!3788535 e!3788533)))

(declare-fun c!1124764 () Bool)

(assert (=> b!6224012 (= c!1124764 ((_ is EmptyLang!16159) (regOne!32830 r!7292)))))

(declare-fun b!6224013 () Bool)

(declare-fun res!2572262 () Bool)

(assert (=> b!6224013 (=> (not res!2572262) (not e!3788538))))

(assert (=> b!6224013 (= res!2572262 (not call!522627))))

(declare-fun b!6224014 () Bool)

(assert (=> b!6224014 (= e!3788533 (not lt!2345345))))

(declare-fun d!1951059 () Bool)

(assert (=> d!1951059 e!3788535))

(declare-fun c!1124766 () Bool)

(assert (=> d!1951059 (= c!1124766 ((_ is EmptyExpr!16159) (regOne!32830 r!7292)))))

(declare-fun e!3788536 () Bool)

(assert (=> d!1951059 (= lt!2345345 e!3788536)))

(declare-fun c!1124765 () Bool)

(assert (=> d!1951059 (= c!1124765 (isEmpty!36666 Nil!64653))))

(assert (=> d!1951059 (validRegex!7895 (regOne!32830 r!7292))))

(assert (=> d!1951059 (= (matchR!8342 (regOne!32830 r!7292) Nil!64653) lt!2345345)))

(declare-fun b!6224015 () Bool)

(declare-fun e!3788534 () Bool)

(assert (=> b!6224015 (= e!3788537 e!3788534)))

(declare-fun res!2572265 () Bool)

(assert (=> b!6224015 (=> (not res!2572265) (not e!3788534))))

(assert (=> b!6224015 (= res!2572265 (not lt!2345345))))

(declare-fun b!6224016 () Bool)

(assert (=> b!6224016 (= e!3788535 (= lt!2345345 call!522627))))

(declare-fun b!6224017 () Bool)

(declare-fun e!3788539 () Bool)

(assert (=> b!6224017 (= e!3788534 e!3788539)))

(declare-fun res!2572261 () Bool)

(assert (=> b!6224017 (=> res!2572261 e!3788539)))

(assert (=> b!6224017 (= res!2572261 call!522627)))

(declare-fun b!6224018 () Bool)

(declare-fun res!2572259 () Bool)

(assert (=> b!6224018 (=> res!2572259 e!3788537)))

(assert (=> b!6224018 (= res!2572259 (not ((_ is ElementMatch!16159) (regOne!32830 r!7292))))))

(assert (=> b!6224018 (= e!3788533 e!3788537)))

(declare-fun b!6224019 () Bool)

(assert (=> b!6224019 (= e!3788539 (not (= (head!12826 Nil!64653) (c!1124503 (regOne!32830 r!7292)))))))

(declare-fun b!6224020 () Bool)

(declare-fun res!2572264 () Bool)

(assert (=> b!6224020 (=> res!2572264 e!3788539)))

(assert (=> b!6224020 (= res!2572264 (not (isEmpty!36666 (tail!11911 Nil!64653))))))

(declare-fun b!6224021 () Bool)

(assert (=> b!6224021 (= e!3788536 (matchR!8342 (derivativeStep!4872 (regOne!32830 r!7292) (head!12826 Nil!64653)) (tail!11911 Nil!64653)))))

(declare-fun b!6224022 () Bool)

(assert (=> b!6224022 (= e!3788536 (nullable!6152 (regOne!32830 r!7292)))))

(declare-fun b!6224023 () Bool)

(declare-fun res!2572258 () Bool)

(assert (=> b!6224023 (=> (not res!2572258) (not e!3788538))))

(assert (=> b!6224023 (= res!2572258 (isEmpty!36666 (tail!11911 Nil!64653)))))

(assert (= (and d!1951059 c!1124765) b!6224022))

(assert (= (and d!1951059 (not c!1124765)) b!6224021))

(assert (= (and d!1951059 c!1124766) b!6224016))

(assert (= (and d!1951059 (not c!1124766)) b!6224012))

(assert (= (and b!6224012 c!1124764) b!6224014))

(assert (= (and b!6224012 (not c!1124764)) b!6224018))

(assert (= (and b!6224018 (not res!2572259)) b!6224011))

(assert (= (and b!6224011 res!2572263) b!6224013))

(assert (= (and b!6224013 res!2572262) b!6224023))

(assert (= (and b!6224023 res!2572258) b!6224010))

(assert (= (and b!6224011 (not res!2572260)) b!6224015))

(assert (= (and b!6224015 res!2572265) b!6224017))

(assert (= (and b!6224017 (not res!2572261)) b!6224020))

(assert (= (and b!6224020 (not res!2572264)) b!6224019))

(assert (= (or b!6224016 b!6224013 b!6224017) bm!522622))

(declare-fun m!7051298 () Bool)

(assert (=> b!6224021 m!7051298))

(assert (=> b!6224021 m!7051298))

(declare-fun m!7051300 () Bool)

(assert (=> b!6224021 m!7051300))

(declare-fun m!7051302 () Bool)

(assert (=> b!6224021 m!7051302))

(assert (=> b!6224021 m!7051300))

(assert (=> b!6224021 m!7051302))

(declare-fun m!7051304 () Bool)

(assert (=> b!6224021 m!7051304))

(declare-fun m!7051306 () Bool)

(assert (=> bm!522622 m!7051306))

(declare-fun m!7051308 () Bool)

(assert (=> b!6224022 m!7051308))

(assert (=> b!6224019 m!7051298))

(assert (=> b!6224023 m!7051302))

(assert (=> b!6224023 m!7051302))

(declare-fun m!7051310 () Bool)

(assert (=> b!6224023 m!7051310))

(assert (=> b!6224010 m!7051298))

(assert (=> d!1951059 m!7051306))

(assert (=> d!1951059 m!7050906))

(assert (=> b!6224020 m!7051302))

(assert (=> b!6224020 m!7051302))

(assert (=> b!6224020 m!7051310))

(assert (=> d!1950867 d!1951059))

(assert (=> d!1950867 d!1951027))

(declare-fun d!1951061 () Bool)

(assert (=> d!1951061 true))

(declare-fun setRes!42287 () Bool)

(assert (=> d!1951061 setRes!42287))

(declare-fun condSetEmpty!42287 () Bool)

(declare-fun res!2572268 () (InoxSet Context!11086))

(assert (=> d!1951061 (= condSetEmpty!42287 (= res!2572268 ((as const (Array Context!11086 Bool)) false)))))

(assert (=> d!1951061 (= (choose!46252 lt!2345238 lambda!340181) res!2572268)))

(declare-fun setIsEmpty!42287 () Bool)

(assert (=> setIsEmpty!42287 setRes!42287))

(declare-fun setElem!42287 () Context!11086)

(declare-fun e!3788542 () Bool)

(declare-fun setNonEmpty!42287 () Bool)

(declare-fun tp!1736068 () Bool)

(assert (=> setNonEmpty!42287 (= setRes!42287 (and tp!1736068 (inv!83644 setElem!42287) e!3788542))))

(declare-fun setRest!42287 () (InoxSet Context!11086))

(assert (=> setNonEmpty!42287 (= res!2572268 ((_ map or) (store ((as const (Array Context!11086 Bool)) false) setElem!42287 true) setRest!42287))))

(declare-fun b!6224026 () Bool)

(declare-fun tp!1736067 () Bool)

(assert (=> b!6224026 (= e!3788542 tp!1736067)))

(assert (= (and d!1951061 condSetEmpty!42287) setIsEmpty!42287))

(assert (= (and d!1951061 (not condSetEmpty!42287)) setNonEmpty!42287))

(assert (= setNonEmpty!42287 b!6224026))

(declare-fun m!7051312 () Bool)

(assert (=> setNonEmpty!42287 m!7051312))

(assert (=> d!1950881 d!1951061))

(declare-fun bs!1543312 () Bool)

(declare-fun d!1951063 () Bool)

(assert (= bs!1543312 (and d!1951063 d!1951015)))

(declare-fun lambda!340261 () Int)

(assert (=> bs!1543312 (= lambda!340261 lambda!340253)))

(declare-fun bs!1543313 () Bool)

(assert (= bs!1543313 (and d!1951063 d!1951053)))

(assert (=> bs!1543313 (= lambda!340261 lambda!340259)))

(declare-fun bs!1543314 () Bool)

(assert (= bs!1543314 (and d!1951063 d!1951055)))

(assert (=> bs!1543314 (= lambda!340261 lambda!340260)))

(assert (=> d!1951063 (= (nullableZipper!1933 lt!2345249) (exists!2492 lt!2345249 lambda!340261))))

(declare-fun bs!1543315 () Bool)

(assert (= bs!1543315 d!1951063))

(declare-fun m!7051314 () Bool)

(assert (=> bs!1543315 m!7051314))

(assert (=> b!6223733 d!1951063))

(declare-fun b!6224027 () Bool)

(declare-fun e!3788548 () Bool)

(assert (=> b!6224027 (= e!3788548 (= (head!12826 (_2!36441 (get!22332 lt!2345308))) (c!1124503 (regTwo!32830 r!7292))))))

(declare-fun bm!522623 () Bool)

(declare-fun call!522628 () Bool)

(assert (=> bm!522623 (= call!522628 (isEmpty!36666 (_2!36441 (get!22332 lt!2345308))))))

(declare-fun b!6224028 () Bool)

(declare-fun res!2572271 () Bool)

(declare-fun e!3788547 () Bool)

(assert (=> b!6224028 (=> res!2572271 e!3788547)))

(assert (=> b!6224028 (= res!2572271 e!3788548)))

(declare-fun res!2572274 () Bool)

(assert (=> b!6224028 (=> (not res!2572274) (not e!3788548))))

(declare-fun lt!2345346 () Bool)

(assert (=> b!6224028 (= res!2572274 lt!2345346)))

(declare-fun b!6224029 () Bool)

(declare-fun e!3788545 () Bool)

(declare-fun e!3788543 () Bool)

(assert (=> b!6224029 (= e!3788545 e!3788543)))

(declare-fun c!1124767 () Bool)

(assert (=> b!6224029 (= c!1124767 ((_ is EmptyLang!16159) (regTwo!32830 r!7292)))))

(declare-fun b!6224030 () Bool)

(declare-fun res!2572273 () Bool)

(assert (=> b!6224030 (=> (not res!2572273) (not e!3788548))))

(assert (=> b!6224030 (= res!2572273 (not call!522628))))

(declare-fun b!6224031 () Bool)

(assert (=> b!6224031 (= e!3788543 (not lt!2345346))))

(declare-fun d!1951065 () Bool)

(assert (=> d!1951065 e!3788545))

(declare-fun c!1124769 () Bool)

(assert (=> d!1951065 (= c!1124769 ((_ is EmptyExpr!16159) (regTwo!32830 r!7292)))))

(declare-fun e!3788546 () Bool)

(assert (=> d!1951065 (= lt!2345346 e!3788546)))

(declare-fun c!1124768 () Bool)

(assert (=> d!1951065 (= c!1124768 (isEmpty!36666 (_2!36441 (get!22332 lt!2345308))))))

(assert (=> d!1951065 (validRegex!7895 (regTwo!32830 r!7292))))

(assert (=> d!1951065 (= (matchR!8342 (regTwo!32830 r!7292) (_2!36441 (get!22332 lt!2345308))) lt!2345346)))

(declare-fun b!6224032 () Bool)

(declare-fun e!3788544 () Bool)

(assert (=> b!6224032 (= e!3788547 e!3788544)))

(declare-fun res!2572276 () Bool)

(assert (=> b!6224032 (=> (not res!2572276) (not e!3788544))))

(assert (=> b!6224032 (= res!2572276 (not lt!2345346))))

(declare-fun b!6224033 () Bool)

(assert (=> b!6224033 (= e!3788545 (= lt!2345346 call!522628))))

(declare-fun b!6224034 () Bool)

(declare-fun e!3788549 () Bool)

(assert (=> b!6224034 (= e!3788544 e!3788549)))

(declare-fun res!2572272 () Bool)

(assert (=> b!6224034 (=> res!2572272 e!3788549)))

(assert (=> b!6224034 (= res!2572272 call!522628)))

(declare-fun b!6224035 () Bool)

(declare-fun res!2572270 () Bool)

(assert (=> b!6224035 (=> res!2572270 e!3788547)))

(assert (=> b!6224035 (= res!2572270 (not ((_ is ElementMatch!16159) (regTwo!32830 r!7292))))))

(assert (=> b!6224035 (= e!3788543 e!3788547)))

(declare-fun b!6224036 () Bool)

(assert (=> b!6224036 (= e!3788549 (not (= (head!12826 (_2!36441 (get!22332 lt!2345308))) (c!1124503 (regTwo!32830 r!7292)))))))

(declare-fun b!6224037 () Bool)

(declare-fun res!2572275 () Bool)

(assert (=> b!6224037 (=> res!2572275 e!3788549)))

(assert (=> b!6224037 (= res!2572275 (not (isEmpty!36666 (tail!11911 (_2!36441 (get!22332 lt!2345308))))))))

(declare-fun b!6224038 () Bool)

(assert (=> b!6224038 (= e!3788546 (matchR!8342 (derivativeStep!4872 (regTwo!32830 r!7292) (head!12826 (_2!36441 (get!22332 lt!2345308)))) (tail!11911 (_2!36441 (get!22332 lt!2345308)))))))

(declare-fun b!6224039 () Bool)

(assert (=> b!6224039 (= e!3788546 (nullable!6152 (regTwo!32830 r!7292)))))

(declare-fun b!6224040 () Bool)

(declare-fun res!2572269 () Bool)

(assert (=> b!6224040 (=> (not res!2572269) (not e!3788548))))

(assert (=> b!6224040 (= res!2572269 (isEmpty!36666 (tail!11911 (_2!36441 (get!22332 lt!2345308)))))))

(assert (= (and d!1951065 c!1124768) b!6224039))

(assert (= (and d!1951065 (not c!1124768)) b!6224038))

(assert (= (and d!1951065 c!1124769) b!6224033))

(assert (= (and d!1951065 (not c!1124769)) b!6224029))

(assert (= (and b!6224029 c!1124767) b!6224031))

(assert (= (and b!6224029 (not c!1124767)) b!6224035))

(assert (= (and b!6224035 (not res!2572270)) b!6224028))

(assert (= (and b!6224028 res!2572274) b!6224030))

(assert (= (and b!6224030 res!2572273) b!6224040))

(assert (= (and b!6224040 res!2572269) b!6224027))

(assert (= (and b!6224028 (not res!2572271)) b!6224032))

(assert (= (and b!6224032 res!2572276) b!6224034))

(assert (= (and b!6224034 (not res!2572272)) b!6224037))

(assert (= (and b!6224037 (not res!2572275)) b!6224036))

(assert (= (or b!6224033 b!6224030 b!6224034) bm!522623))

(declare-fun m!7051316 () Bool)

(assert (=> b!6224038 m!7051316))

(assert (=> b!6224038 m!7051316))

(declare-fun m!7051318 () Bool)

(assert (=> b!6224038 m!7051318))

(declare-fun m!7051320 () Bool)

(assert (=> b!6224038 m!7051320))

(assert (=> b!6224038 m!7051318))

(assert (=> b!6224038 m!7051320))

(declare-fun m!7051322 () Bool)

(assert (=> b!6224038 m!7051322))

(declare-fun m!7051324 () Bool)

(assert (=> bm!522623 m!7051324))

(declare-fun m!7051326 () Bool)

(assert (=> b!6224039 m!7051326))

(assert (=> b!6224036 m!7051316))

(assert (=> b!6224040 m!7051320))

(assert (=> b!6224040 m!7051320))

(declare-fun m!7051328 () Bool)

(assert (=> b!6224040 m!7051328))

(assert (=> b!6224027 m!7051316))

(assert (=> d!1951065 m!7051324))

(declare-fun m!7051330 () Bool)

(assert (=> d!1951065 m!7051330))

(assert (=> b!6224037 m!7051320))

(assert (=> b!6224037 m!7051320))

(assert (=> b!6224037 m!7051328))

(assert (=> b!6223552 d!1951065))

(declare-fun d!1951067 () Bool)

(assert (=> d!1951067 (= (get!22332 lt!2345308) (v!52195 lt!2345308))))

(assert (=> b!6223552 d!1951067))

(declare-fun d!1951069 () Bool)

(assert (=> d!1951069 (= (isEmptyLang!1578 lt!2345320) ((_ is EmptyLang!16159) lt!2345320))))

(assert (=> b!6223648 d!1951069))

(declare-fun bs!1543316 () Bool)

(declare-fun b!6224047 () Bool)

(assert (= bs!1543316 (and b!6224047 b!6223092)))

(declare-fun lambda!340262 () Int)

(assert (=> bs!1543316 (not (= lambda!340262 lambda!340179))))

(declare-fun bs!1543317 () Bool)

(assert (= bs!1543317 (and b!6224047 d!1950875)))

(assert (=> bs!1543317 (not (= lambda!340262 lambda!340226))))

(declare-fun bs!1543318 () Bool)

(assert (= bs!1543318 (and b!6224047 d!1951031)))

(assert (=> bs!1543318 (not (= lambda!340262 lambda!340257))))

(declare-fun bs!1543319 () Bool)

(assert (= bs!1543319 (and b!6224047 b!6223775)))

(assert (=> bs!1543319 (= (and (= (reg!16488 (regOne!32831 r!7292)) (reg!16488 r!7292)) (= (regOne!32831 r!7292) r!7292)) (= lambda!340262 lambda!340243))))

(declare-fun bs!1543320 () Bool)

(assert (= bs!1543320 (and b!6224047 b!6223771)))

(assert (=> bs!1543320 (not (= lambda!340262 lambda!340244))))

(declare-fun bs!1543321 () Bool)

(assert (= bs!1543321 (and b!6224047 d!1950871)))

(assert (=> bs!1543321 (not (= lambda!340262 lambda!340223))))

(assert (=> bs!1543321 (not (= lambda!340262 lambda!340222))))

(assert (=> bs!1543316 (not (= lambda!340262 lambda!340180))))

(assert (=> b!6224047 true))

(assert (=> b!6224047 true))

(declare-fun bs!1543322 () Bool)

(declare-fun b!6224043 () Bool)

(assert (= bs!1543322 (and b!6224043 b!6224047)))

(declare-fun lambda!340263 () Int)

(assert (=> bs!1543322 (not (= lambda!340263 lambda!340262))))

(declare-fun bs!1543323 () Bool)

(assert (= bs!1543323 (and b!6224043 b!6223092)))

(assert (=> bs!1543323 (not (= lambda!340263 lambda!340179))))

(declare-fun bs!1543324 () Bool)

(assert (= bs!1543324 (and b!6224043 d!1950875)))

(assert (=> bs!1543324 (not (= lambda!340263 lambda!340226))))

(declare-fun bs!1543325 () Bool)

(assert (= bs!1543325 (and b!6224043 d!1951031)))

(assert (=> bs!1543325 (not (= lambda!340263 lambda!340257))))

(declare-fun bs!1543326 () Bool)

(assert (= bs!1543326 (and b!6224043 b!6223775)))

(assert (=> bs!1543326 (not (= lambda!340263 lambda!340243))))

(declare-fun bs!1543327 () Bool)

(assert (= bs!1543327 (and b!6224043 b!6223771)))

(assert (=> bs!1543327 (= (and (= (regOne!32830 (regOne!32831 r!7292)) (regOne!32830 r!7292)) (= (regTwo!32830 (regOne!32831 r!7292)) (regTwo!32830 r!7292))) (= lambda!340263 lambda!340244))))

(declare-fun bs!1543328 () Bool)

(assert (= bs!1543328 (and b!6224043 d!1950871)))

(assert (=> bs!1543328 (= (and (= (regOne!32830 (regOne!32831 r!7292)) (regOne!32830 r!7292)) (= (regTwo!32830 (regOne!32831 r!7292)) (regTwo!32830 r!7292))) (= lambda!340263 lambda!340223))))

(assert (=> bs!1543328 (not (= lambda!340263 lambda!340222))))

(assert (=> bs!1543323 (= (and (= (regOne!32830 (regOne!32831 r!7292)) (regOne!32830 r!7292)) (= (regTwo!32830 (regOne!32831 r!7292)) (regTwo!32830 r!7292))) (= lambda!340263 lambda!340180))))

(assert (=> b!6224043 true))

(assert (=> b!6224043 true))

(declare-fun d!1951071 () Bool)

(declare-fun c!1124773 () Bool)

(assert (=> d!1951071 (= c!1124773 ((_ is EmptyExpr!16159) (regOne!32831 r!7292)))))

(declare-fun e!3788550 () Bool)

(assert (=> d!1951071 (= (matchRSpec!3260 (regOne!32831 r!7292) s!2326) e!3788550)))

(declare-fun b!6224041 () Bool)

(declare-fun res!2572277 () Bool)

(declare-fun e!3788554 () Bool)

(assert (=> b!6224041 (=> res!2572277 e!3788554)))

(declare-fun call!522629 () Bool)

(assert (=> b!6224041 (= res!2572277 call!522629)))

(declare-fun e!3788556 () Bool)

(assert (=> b!6224041 (= e!3788556 e!3788554)))

(declare-fun b!6224042 () Bool)

(declare-fun e!3788555 () Bool)

(assert (=> b!6224042 (= e!3788555 (matchRSpec!3260 (regTwo!32831 (regOne!32831 r!7292)) s!2326))))

(declare-fun call!522630 () Bool)

(assert (=> b!6224043 (= e!3788556 call!522630)))

(declare-fun bm!522624 () Bool)

(assert (=> bm!522624 (= call!522629 (isEmpty!36666 s!2326))))

(declare-fun c!1124772 () Bool)

(declare-fun bm!522625 () Bool)

(assert (=> bm!522625 (= call!522630 (Exists!3229 (ite c!1124772 lambda!340262 lambda!340263)))))

(declare-fun b!6224044 () Bool)

(declare-fun c!1124771 () Bool)

(assert (=> b!6224044 (= c!1124771 ((_ is ElementMatch!16159) (regOne!32831 r!7292)))))

(declare-fun e!3788553 () Bool)

(declare-fun e!3788552 () Bool)

(assert (=> b!6224044 (= e!3788553 e!3788552)))

(declare-fun b!6224045 () Bool)

(declare-fun e!3788551 () Bool)

(assert (=> b!6224045 (= e!3788551 e!3788555)))

(declare-fun res!2572278 () Bool)

(assert (=> b!6224045 (= res!2572278 (matchRSpec!3260 (regOne!32831 (regOne!32831 r!7292)) s!2326))))

(assert (=> b!6224045 (=> res!2572278 e!3788555)))

(declare-fun b!6224046 () Bool)

(declare-fun c!1124770 () Bool)

(assert (=> b!6224046 (= c!1124770 ((_ is Union!16159) (regOne!32831 r!7292)))))

(assert (=> b!6224046 (= e!3788552 e!3788551)))

(assert (=> b!6224047 (= e!3788554 call!522630)))

(declare-fun b!6224048 () Bool)

(assert (=> b!6224048 (= e!3788550 call!522629)))

(declare-fun b!6224049 () Bool)

(assert (=> b!6224049 (= e!3788550 e!3788553)))

(declare-fun res!2572279 () Bool)

(assert (=> b!6224049 (= res!2572279 (not ((_ is EmptyLang!16159) (regOne!32831 r!7292))))))

(assert (=> b!6224049 (=> (not res!2572279) (not e!3788553))))

(declare-fun b!6224050 () Bool)

(assert (=> b!6224050 (= e!3788552 (= s!2326 (Cons!64653 (c!1124503 (regOne!32831 r!7292)) Nil!64653)))))

(declare-fun b!6224051 () Bool)

(assert (=> b!6224051 (= e!3788551 e!3788556)))

(assert (=> b!6224051 (= c!1124772 ((_ is Star!16159) (regOne!32831 r!7292)))))

(assert (= (and d!1951071 c!1124773) b!6224048))

(assert (= (and d!1951071 (not c!1124773)) b!6224049))

(assert (= (and b!6224049 res!2572279) b!6224044))

(assert (= (and b!6224044 c!1124771) b!6224050))

(assert (= (and b!6224044 (not c!1124771)) b!6224046))

(assert (= (and b!6224046 c!1124770) b!6224045))

(assert (= (and b!6224046 (not c!1124770)) b!6224051))

(assert (= (and b!6224045 (not res!2572278)) b!6224042))

(assert (= (and b!6224051 c!1124772) b!6224041))

(assert (= (and b!6224051 (not c!1124772)) b!6224043))

(assert (= (and b!6224041 (not res!2572277)) b!6224047))

(assert (= (or b!6224047 b!6224043) bm!522625))

(assert (= (or b!6224048 b!6224041) bm!522624))

(declare-fun m!7051332 () Bool)

(assert (=> b!6224042 m!7051332))

(assert (=> bm!522624 m!7051092))

(declare-fun m!7051334 () Bool)

(assert (=> bm!522625 m!7051334))

(declare-fun m!7051336 () Bool)

(assert (=> b!6224045 m!7051336))

(assert (=> b!6223773 d!1951071))

(declare-fun b!6224052 () Bool)

(declare-fun e!3788557 () Bool)

(declare-fun call!522631 () Bool)

(assert (=> b!6224052 (= e!3788557 call!522631)))

(declare-fun bm!522626 () Bool)

(declare-fun c!1124774 () Bool)

(assert (=> bm!522626 (= call!522631 (nullable!6152 (ite c!1124774 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))

(declare-fun b!6224053 () Bool)

(declare-fun e!3788561 () Bool)

(declare-fun e!3788559 () Bool)

(assert (=> b!6224053 (= e!3788561 e!3788559)))

(declare-fun res!2572284 () Bool)

(declare-fun call!522632 () Bool)

(assert (=> b!6224053 (= res!2572284 call!522632)))

(assert (=> b!6224053 (=> (not res!2572284) (not e!3788559))))

(declare-fun b!6224054 () Bool)

(declare-fun e!3788558 () Bool)

(declare-fun e!3788562 () Bool)

(assert (=> b!6224054 (= e!3788558 e!3788562)))

(declare-fun res!2572280 () Bool)

(assert (=> b!6224054 (=> (not res!2572280) (not e!3788562))))

(assert (=> b!6224054 (= res!2572280 (and (not ((_ is EmptyLang!16159) (h!71100 (exprs!6043 (h!71102 zl!343))))) (not ((_ is ElementMatch!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))))))))

(declare-fun b!6224055 () Bool)

(assert (=> b!6224055 (= e!3788559 call!522631)))

(declare-fun b!6224056 () Bool)

(assert (=> b!6224056 (= e!3788561 e!3788557)))

(declare-fun res!2572281 () Bool)

(assert (=> b!6224056 (= res!2572281 call!522632)))

(assert (=> b!6224056 (=> res!2572281 e!3788557)))

(declare-fun b!6224057 () Bool)

(declare-fun e!3788560 () Bool)

(assert (=> b!6224057 (= e!3788562 e!3788560)))

(declare-fun res!2572283 () Bool)

(assert (=> b!6224057 (=> res!2572283 e!3788560)))

(assert (=> b!6224057 (= res!2572283 ((_ is Star!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun d!1951073 () Bool)

(declare-fun res!2572282 () Bool)

(assert (=> d!1951073 (=> res!2572282 e!3788558)))

(assert (=> d!1951073 (= res!2572282 ((_ is EmptyExpr!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(assert (=> d!1951073 (= (nullableFct!2108 (h!71100 (exprs!6043 (h!71102 zl!343)))) e!3788558)))

(declare-fun b!6224058 () Bool)

(assert (=> b!6224058 (= e!3788560 e!3788561)))

(assert (=> b!6224058 (= c!1124774 ((_ is Union!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun bm!522627 () Bool)

(assert (=> bm!522627 (= call!522632 (nullable!6152 (ite c!1124774 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))

(assert (= (and d!1951073 (not res!2572282)) b!6224054))

(assert (= (and b!6224054 res!2572280) b!6224057))

(assert (= (and b!6224057 (not res!2572283)) b!6224058))

(assert (= (and b!6224058 c!1124774) b!6224056))

(assert (= (and b!6224058 (not c!1124774)) b!6224053))

(assert (= (and b!6224056 (not res!2572281)) b!6224052))

(assert (= (and b!6224053 res!2572284) b!6224055))

(assert (= (or b!6224052 b!6224055) bm!522626))

(assert (= (or b!6224056 b!6224053) bm!522627))

(declare-fun m!7051338 () Bool)

(assert (=> bm!522626 m!7051338))

(declare-fun m!7051340 () Bool)

(assert (=> bm!522627 m!7051340))

(assert (=> d!1950915 d!1951073))

(declare-fun d!1951075 () Bool)

(assert (=> d!1951075 (= (isConcat!1092 lt!2345327) ((_ is Concat!25004) lt!2345327))))

(assert (=> b!6223693 d!1951075))

(declare-fun bm!522628 () Bool)

(declare-fun call!522636 () (InoxSet Context!11086))

(declare-fun call!522634 () (InoxSet Context!11086))

(assert (=> bm!522628 (= call!522636 call!522634)))

(declare-fun b!6224059 () Bool)

(declare-fun e!3788565 () (InoxSet Context!11086))

(assert (=> b!6224059 (= e!3788565 call!522636)))

(declare-fun b!6224060 () Bool)

(declare-fun c!1124775 () Bool)

(declare-fun e!3788564 () Bool)

(assert (=> b!6224060 (= c!1124775 e!3788564)))

(declare-fun res!2572285 () Bool)

(assert (=> b!6224060 (=> (not res!2572285) (not e!3788564))))

(assert (=> b!6224060 (= res!2572285 ((_ is Concat!25004) (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))))))

(declare-fun e!3788566 () (InoxSet Context!11086))

(declare-fun e!3788563 () (InoxSet Context!11086))

(assert (=> b!6224060 (= e!3788566 e!3788563)))

(declare-fun b!6224061 () Bool)

(declare-fun e!3788567 () (InoxSet Context!11086))

(assert (=> b!6224061 (= e!3788567 call!522636)))

(declare-fun e!3788568 () (InoxSet Context!11086))

(declare-fun b!6224062 () Bool)

(assert (=> b!6224062 (= e!3788568 (store ((as const (Array Context!11086 Bool)) false) (ite c!1124648 lt!2345243 (Context!11087 call!522560)) true))))

(declare-fun bm!522629 () Bool)

(declare-fun call!522638 () (InoxSet Context!11086))

(assert (=> bm!522629 (= call!522634 call!522638)))

(declare-fun c!1124776 () Bool)

(declare-fun bm!522630 () Bool)

(declare-fun c!1124779 () Bool)

(declare-fun call!522633 () List!64776)

(assert (=> bm!522630 (= call!522638 (derivationStepZipperDown!1407 (ite c!1124779 (regTwo!32831 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))) (ite c!1124775 (regTwo!32830 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))) (ite c!1124776 (regOne!32830 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))) (reg!16488 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))))))) (ite (or c!1124779 c!1124775) (ite c!1124648 lt!2345243 (Context!11087 call!522560)) (Context!11087 call!522633)) (h!71101 s!2326)))))

(declare-fun b!6224063 () Bool)

(declare-fun call!522637 () (InoxSet Context!11086))

(assert (=> b!6224063 (= e!3788566 ((_ map or) call!522637 call!522638))))

(declare-fun c!1124777 () Bool)

(declare-fun d!1951077 () Bool)

(assert (=> d!1951077 (= c!1124777 (and ((_ is ElementMatch!16159) (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))) (= (c!1124503 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))) (h!71101 s!2326))))))

(assert (=> d!1951077 (= (derivationStepZipperDown!1407 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))) (ite c!1124648 lt!2345243 (Context!11087 call!522560)) (h!71101 s!2326)) e!3788568)))

(declare-fun call!522635 () List!64776)

(declare-fun bm!522631 () Bool)

(assert (=> bm!522631 (= call!522637 (derivationStepZipperDown!1407 (ite c!1124779 (regOne!32831 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))) (regOne!32830 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))))) (ite c!1124779 (ite c!1124648 lt!2345243 (Context!11087 call!522560)) (Context!11087 call!522635)) (h!71101 s!2326)))))

(declare-fun bm!522632 () Bool)

(assert (=> bm!522632 (= call!522633 call!522635)))

(declare-fun bm!522633 () Bool)

(assert (=> bm!522633 (= call!522635 ($colon$colon!2028 (exprs!6043 (ite c!1124648 lt!2345243 (Context!11087 call!522560))) (ite (or c!1124775 c!1124776) (regTwo!32830 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))) (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))))))))

(declare-fun b!6224064 () Bool)

(declare-fun c!1124778 () Bool)

(assert (=> b!6224064 (= c!1124778 ((_ is Star!16159) (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))))))

(assert (=> b!6224064 (= e!3788565 e!3788567)))

(declare-fun b!6224065 () Bool)

(assert (=> b!6224065 (= e!3788568 e!3788566)))

(assert (=> b!6224065 (= c!1124779 ((_ is Union!16159) (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6224066 () Bool)

(assert (=> b!6224066 (= e!3788564 (nullable!6152 (regOne!32830 (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292)))))))))

(declare-fun b!6224067 () Bool)

(assert (=> b!6224067 (= e!3788567 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6224068 () Bool)

(assert (=> b!6224068 (= e!3788563 e!3788565)))

(assert (=> b!6224068 (= c!1124776 ((_ is Concat!25004) (ite c!1124648 (regOne!32831 (regTwo!32830 (regOne!32830 r!7292))) (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6224069 () Bool)

(assert (=> b!6224069 (= e!3788563 ((_ map or) call!522637 call!522634))))

(assert (= (and d!1951077 c!1124777) b!6224062))

(assert (= (and d!1951077 (not c!1124777)) b!6224065))

(assert (= (and b!6224065 c!1124779) b!6224063))

(assert (= (and b!6224065 (not c!1124779)) b!6224060))

(assert (= (and b!6224060 res!2572285) b!6224066))

(assert (= (and b!6224060 c!1124775) b!6224069))

(assert (= (and b!6224060 (not c!1124775)) b!6224068))

(assert (= (and b!6224068 c!1124776) b!6224059))

(assert (= (and b!6224068 (not c!1124776)) b!6224064))

(assert (= (and b!6224064 c!1124778) b!6224061))

(assert (= (and b!6224064 (not c!1124778)) b!6224067))

(assert (= (or b!6224059 b!6224061) bm!522632))

(assert (= (or b!6224059 b!6224061) bm!522628))

(assert (= (or b!6224069 bm!522632) bm!522633))

(assert (= (or b!6224069 bm!522628) bm!522629))

(assert (= (or b!6224063 bm!522629) bm!522630))

(assert (= (or b!6224063 b!6224069) bm!522631))

(declare-fun m!7051342 () Bool)

(assert (=> b!6224066 m!7051342))

(declare-fun m!7051344 () Bool)

(assert (=> bm!522631 m!7051344))

(declare-fun m!7051346 () Bool)

(assert (=> bm!522633 m!7051346))

(declare-fun m!7051348 () Bool)

(assert (=> bm!522630 m!7051348))

(declare-fun m!7051350 () Bool)

(assert (=> b!6224062 m!7051350))

(assert (=> bm!522556 d!1951077))

(declare-fun b!6224070 () Bool)

(declare-fun e!3788569 () Bool)

(declare-fun call!522639 () Bool)

(assert (=> b!6224070 (= e!3788569 call!522639)))

(declare-fun bm!522634 () Bool)

(declare-fun c!1124780 () Bool)

(assert (=> bm!522634 (= call!522639 (nullable!6152 (ite c!1124780 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6224071 () Bool)

(declare-fun e!3788573 () Bool)

(declare-fun e!3788571 () Bool)

(assert (=> b!6224071 (= e!3788573 e!3788571)))

(declare-fun res!2572290 () Bool)

(declare-fun call!522640 () Bool)

(assert (=> b!6224071 (= res!2572290 call!522640)))

(assert (=> b!6224071 (=> (not res!2572290) (not e!3788571))))

(declare-fun b!6224072 () Bool)

(declare-fun e!3788570 () Bool)

(declare-fun e!3788574 () Bool)

(assert (=> b!6224072 (= e!3788570 e!3788574)))

(declare-fun res!2572286 () Bool)

(assert (=> b!6224072 (=> (not res!2572286) (not e!3788574))))

(assert (=> b!6224072 (= res!2572286 (and (not ((_ is EmptyLang!16159) (regOne!32830 (regOne!32830 r!7292)))) (not ((_ is ElementMatch!16159) (regOne!32830 (regOne!32830 r!7292))))))))

(declare-fun b!6224073 () Bool)

(assert (=> b!6224073 (= e!3788571 call!522639)))

(declare-fun b!6224074 () Bool)

(assert (=> b!6224074 (= e!3788573 e!3788569)))

(declare-fun res!2572287 () Bool)

(assert (=> b!6224074 (= res!2572287 call!522640)))

(assert (=> b!6224074 (=> res!2572287 e!3788569)))

(declare-fun b!6224075 () Bool)

(declare-fun e!3788572 () Bool)

(assert (=> b!6224075 (= e!3788574 e!3788572)))

(declare-fun res!2572289 () Bool)

(assert (=> b!6224075 (=> res!2572289 e!3788572)))

(assert (=> b!6224075 (= res!2572289 ((_ is Star!16159) (regOne!32830 (regOne!32830 r!7292))))))

(declare-fun d!1951079 () Bool)

(declare-fun res!2572288 () Bool)

(assert (=> d!1951079 (=> res!2572288 e!3788570)))

(assert (=> d!1951079 (= res!2572288 ((_ is EmptyExpr!16159) (regOne!32830 (regOne!32830 r!7292))))))

(assert (=> d!1951079 (= (nullableFct!2108 (regOne!32830 (regOne!32830 r!7292))) e!3788570)))

(declare-fun b!6224076 () Bool)

(assert (=> b!6224076 (= e!3788572 e!3788573)))

(assert (=> b!6224076 (= c!1124780 ((_ is Union!16159) (regOne!32830 (regOne!32830 r!7292))))))

(declare-fun bm!522635 () Bool)

(assert (=> bm!522635 (= call!522640 (nullable!6152 (ite c!1124780 (regOne!32831 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 (regOne!32830 r!7292))))))))

(assert (= (and d!1951079 (not res!2572288)) b!6224072))

(assert (= (and b!6224072 res!2572286) b!6224075))

(assert (= (and b!6224075 (not res!2572289)) b!6224076))

(assert (= (and b!6224076 c!1124780) b!6224074))

(assert (= (and b!6224076 (not c!1124780)) b!6224071))

(assert (= (and b!6224074 (not res!2572287)) b!6224070))

(assert (= (and b!6224071 res!2572290) b!6224073))

(assert (= (or b!6224070 b!6224073) bm!522634))

(assert (= (or b!6224074 b!6224071) bm!522635))

(declare-fun m!7051352 () Bool)

(assert (=> bm!522634 m!7051352))

(declare-fun m!7051354 () Bool)

(assert (=> bm!522635 m!7051354))

(assert (=> d!1950903 d!1951079))

(declare-fun bm!522636 () Bool)

(declare-fun call!522644 () (InoxSet Context!11086))

(declare-fun call!522642 () (InoxSet Context!11086))

(assert (=> bm!522636 (= call!522644 call!522642)))

(declare-fun b!6224077 () Bool)

(declare-fun e!3788577 () (InoxSet Context!11086))

(assert (=> b!6224077 (= e!3788577 call!522644)))

(declare-fun b!6224078 () Bool)

(declare-fun c!1124781 () Bool)

(declare-fun e!3788576 () Bool)

(assert (=> b!6224078 (= c!1124781 e!3788576)))

(declare-fun res!2572291 () Bool)

(assert (=> b!6224078 (=> (not res!2572291) (not e!3788576))))

(assert (=> b!6224078 (= res!2572291 ((_ is Concat!25004) (h!71100 (exprs!6043 lt!2345235))))))

(declare-fun e!3788578 () (InoxSet Context!11086))

(declare-fun e!3788575 () (InoxSet Context!11086))

(assert (=> b!6224078 (= e!3788578 e!3788575)))

(declare-fun b!6224079 () Bool)

(declare-fun e!3788579 () (InoxSet Context!11086))

(assert (=> b!6224079 (= e!3788579 call!522644)))

(declare-fun b!6224080 () Bool)

(declare-fun e!3788580 () (InoxSet Context!11086))

(assert (=> b!6224080 (= e!3788580 (store ((as const (Array Context!11086 Bool)) false) (Context!11087 (t!378310 (exprs!6043 lt!2345235))) true))))

(declare-fun bm!522637 () Bool)

(declare-fun call!522646 () (InoxSet Context!11086))

(assert (=> bm!522637 (= call!522642 call!522646)))

(declare-fun c!1124782 () Bool)

(declare-fun c!1124785 () Bool)

(declare-fun call!522641 () List!64776)

(declare-fun bm!522638 () Bool)

(assert (=> bm!522638 (= call!522646 (derivationStepZipperDown!1407 (ite c!1124785 (regTwo!32831 (h!71100 (exprs!6043 lt!2345235))) (ite c!1124781 (regTwo!32830 (h!71100 (exprs!6043 lt!2345235))) (ite c!1124782 (regOne!32830 (h!71100 (exprs!6043 lt!2345235))) (reg!16488 (h!71100 (exprs!6043 lt!2345235)))))) (ite (or c!1124785 c!1124781) (Context!11087 (t!378310 (exprs!6043 lt!2345235))) (Context!11087 call!522641)) (h!71101 s!2326)))))

(declare-fun b!6224081 () Bool)

(declare-fun call!522645 () (InoxSet Context!11086))

(assert (=> b!6224081 (= e!3788578 ((_ map or) call!522645 call!522646))))

(declare-fun d!1951081 () Bool)

(declare-fun c!1124783 () Bool)

(assert (=> d!1951081 (= c!1124783 (and ((_ is ElementMatch!16159) (h!71100 (exprs!6043 lt!2345235))) (= (c!1124503 (h!71100 (exprs!6043 lt!2345235))) (h!71101 s!2326))))))

(assert (=> d!1951081 (= (derivationStepZipperDown!1407 (h!71100 (exprs!6043 lt!2345235)) (Context!11087 (t!378310 (exprs!6043 lt!2345235))) (h!71101 s!2326)) e!3788580)))

(declare-fun call!522643 () List!64776)

(declare-fun bm!522639 () Bool)

(assert (=> bm!522639 (= call!522645 (derivationStepZipperDown!1407 (ite c!1124785 (regOne!32831 (h!71100 (exprs!6043 lt!2345235))) (regOne!32830 (h!71100 (exprs!6043 lt!2345235)))) (ite c!1124785 (Context!11087 (t!378310 (exprs!6043 lt!2345235))) (Context!11087 call!522643)) (h!71101 s!2326)))))

(declare-fun bm!522640 () Bool)

(assert (=> bm!522640 (= call!522641 call!522643)))

(declare-fun bm!522641 () Bool)

(assert (=> bm!522641 (= call!522643 ($colon$colon!2028 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345235)))) (ite (or c!1124781 c!1124782) (regTwo!32830 (h!71100 (exprs!6043 lt!2345235))) (h!71100 (exprs!6043 lt!2345235)))))))

(declare-fun b!6224082 () Bool)

(declare-fun c!1124784 () Bool)

(assert (=> b!6224082 (= c!1124784 ((_ is Star!16159) (h!71100 (exprs!6043 lt!2345235))))))

(assert (=> b!6224082 (= e!3788577 e!3788579)))

(declare-fun b!6224083 () Bool)

(assert (=> b!6224083 (= e!3788580 e!3788578)))

(assert (=> b!6224083 (= c!1124785 ((_ is Union!16159) (h!71100 (exprs!6043 lt!2345235))))))

(declare-fun b!6224084 () Bool)

(assert (=> b!6224084 (= e!3788576 (nullable!6152 (regOne!32830 (h!71100 (exprs!6043 lt!2345235)))))))

(declare-fun b!6224085 () Bool)

(assert (=> b!6224085 (= e!3788579 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6224086 () Bool)

(assert (=> b!6224086 (= e!3788575 e!3788577)))

(assert (=> b!6224086 (= c!1124782 ((_ is Concat!25004) (h!71100 (exprs!6043 lt!2345235))))))

(declare-fun b!6224087 () Bool)

(assert (=> b!6224087 (= e!3788575 ((_ map or) call!522645 call!522642))))

(assert (= (and d!1951081 c!1124783) b!6224080))

(assert (= (and d!1951081 (not c!1124783)) b!6224083))

(assert (= (and b!6224083 c!1124785) b!6224081))

(assert (= (and b!6224083 (not c!1124785)) b!6224078))

(assert (= (and b!6224078 res!2572291) b!6224084))

(assert (= (and b!6224078 c!1124781) b!6224087))

(assert (= (and b!6224078 (not c!1124781)) b!6224086))

(assert (= (and b!6224086 c!1124782) b!6224077))

(assert (= (and b!6224086 (not c!1124782)) b!6224082))

(assert (= (and b!6224082 c!1124784) b!6224079))

(assert (= (and b!6224082 (not c!1124784)) b!6224085))

(assert (= (or b!6224077 b!6224079) bm!522640))

(assert (= (or b!6224077 b!6224079) bm!522636))

(assert (= (or b!6224087 bm!522640) bm!522641))

(assert (= (or b!6224087 bm!522636) bm!522637))

(assert (= (or b!6224081 bm!522637) bm!522638))

(assert (= (or b!6224081 b!6224087) bm!522639))

(declare-fun m!7051356 () Bool)

(assert (=> b!6224084 m!7051356))

(declare-fun m!7051358 () Bool)

(assert (=> bm!522639 m!7051358))

(declare-fun m!7051360 () Bool)

(assert (=> bm!522641 m!7051360))

(declare-fun m!7051362 () Bool)

(assert (=> bm!522638 m!7051362))

(declare-fun m!7051364 () Bool)

(assert (=> b!6224080 m!7051364))

(assert (=> bm!522565 d!1951081))

(assert (=> b!6223826 d!1950905))

(assert (=> b!6223808 d!1950983))

(assert (=> bs!1543250 d!1950899))

(assert (=> b!6223719 d!1950915))

(declare-fun bs!1543329 () Bool)

(declare-fun d!1951083 () Bool)

(assert (= bs!1543329 (and d!1951083 d!1951015)))

(declare-fun lambda!340264 () Int)

(assert (=> bs!1543329 (= lambda!340264 lambda!340253)))

(declare-fun bs!1543330 () Bool)

(assert (= bs!1543330 (and d!1951083 d!1951053)))

(assert (=> bs!1543330 (= lambda!340264 lambda!340259)))

(declare-fun bs!1543331 () Bool)

(assert (= bs!1543331 (and d!1951083 d!1951055)))

(assert (=> bs!1543331 (= lambda!340264 lambda!340260)))

(declare-fun bs!1543332 () Bool)

(assert (= bs!1543332 (and d!1951083 d!1951063)))

(assert (=> bs!1543332 (= lambda!340264 lambda!340261)))

(assert (=> d!1951083 (= (nullableZipper!1933 ((_ map or) lt!2345249 lt!2345247)) (exists!2492 ((_ map or) lt!2345249 lt!2345247) lambda!340264))))

(declare-fun bs!1543333 () Bool)

(assert (= bs!1543333 d!1951083))

(declare-fun m!7051366 () Bool)

(assert (=> bs!1543333 m!7051366))

(assert (=> b!6223735 d!1951083))

(declare-fun b!6224088 () Bool)

(declare-fun e!3788583 () (InoxSet Context!11086))

(declare-fun e!3788582 () (InoxSet Context!11086))

(assert (=> b!6224088 (= e!3788583 e!3788582)))

(declare-fun c!1124787 () Bool)

(assert (=> b!6224088 (= c!1124787 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345242))))))))

(declare-fun b!6224089 () Bool)

(assert (=> b!6224089 (= e!3788582 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1951085 () Bool)

(declare-fun c!1124786 () Bool)

(declare-fun e!3788581 () Bool)

(assert (=> d!1951085 (= c!1124786 e!3788581)))

(declare-fun res!2572292 () Bool)

(assert (=> d!1951085 (=> (not res!2572292) (not e!3788581))))

(assert (=> d!1951085 (= res!2572292 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345242))))))))

(assert (=> d!1951085 (= (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 lt!2345242))) (h!71101 s!2326)) e!3788583)))

(declare-fun bm!522642 () Bool)

(declare-fun call!522647 () (InoxSet Context!11086))

(assert (=> bm!522642 (= call!522647 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345242))))) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345242)))))) (h!71101 s!2326)))))

(declare-fun b!6224090 () Bool)

(assert (=> b!6224090 (= e!3788581 (nullable!6152 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345242)))))))))

(declare-fun b!6224091 () Bool)

(assert (=> b!6224091 (= e!3788582 call!522647)))

(declare-fun b!6224092 () Bool)

(assert (=> b!6224092 (= e!3788583 ((_ map or) call!522647 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345242)))))) (h!71101 s!2326))))))

(assert (= (and d!1951085 res!2572292) b!6224090))

(assert (= (and d!1951085 c!1124786) b!6224092))

(assert (= (and d!1951085 (not c!1124786)) b!6224088))

(assert (= (and b!6224088 c!1124787) b!6224091))

(assert (= (and b!6224088 (not c!1124787)) b!6224089))

(assert (= (or b!6224092 b!6224091) bm!522642))

(declare-fun m!7051368 () Bool)

(assert (=> bm!522642 m!7051368))

(declare-fun m!7051370 () Bool)

(assert (=> b!6224090 m!7051370))

(declare-fun m!7051372 () Bool)

(assert (=> b!6224092 m!7051372))

(assert (=> b!6223581 d!1951085))

(declare-fun b!6224093 () Bool)

(declare-fun e!3788586 () (InoxSet Context!11086))

(declare-fun e!3788585 () (InoxSet Context!11086))

(assert (=> b!6224093 (= e!3788586 e!3788585)))

(declare-fun c!1124789 () Bool)

(assert (=> b!6224093 (= c!1124789 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))))))

(declare-fun b!6224094 () Bool)

(assert (=> b!6224094 (= e!3788585 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1951087 () Bool)

(declare-fun c!1124788 () Bool)

(declare-fun e!3788584 () Bool)

(assert (=> d!1951087 (= c!1124788 e!3788584)))

(declare-fun res!2572293 () Bool)

(assert (=> d!1951087 (=> (not res!2572293) (not e!3788584))))

(assert (=> d!1951087 (= res!2572293 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))))))

(assert (=> d!1951087 (= (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))) (h!71101 s!2326)) e!3788586)))

(declare-fun bm!522643 () Bool)

(declare-fun call!522648 () (InoxSet Context!11086))

(assert (=> bm!522643 (= call!522648 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343)))))))))) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))))) (h!71101 s!2326)))))

(declare-fun b!6224095 () Bool)

(assert (=> b!6224095 (= e!3788584 (nullable!6152 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))))))))

(declare-fun b!6224096 () Bool)

(assert (=> b!6224096 (= e!3788585 call!522648)))

(declare-fun b!6224097 () Bool)

(assert (=> b!6224097 (= e!3788586 ((_ map or) call!522648 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (Cons!64652 (h!71100 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))))))) (h!71101 s!2326))))))

(assert (= (and d!1951087 res!2572293) b!6224095))

(assert (= (and d!1951087 c!1124788) b!6224097))

(assert (= (and d!1951087 (not c!1124788)) b!6224093))

(assert (= (and b!6224093 c!1124789) b!6224096))

(assert (= (and b!6224093 (not c!1124789)) b!6224094))

(assert (= (or b!6224097 b!6224096) bm!522643))

(declare-fun m!7051374 () Bool)

(assert (=> bm!522643 m!7051374))

(declare-fun m!7051376 () Bool)

(assert (=> b!6224095 m!7051376))

(declare-fun m!7051378 () Bool)

(assert (=> b!6224097 m!7051378))

(assert (=> b!6223726 d!1951087))

(declare-fun d!1951089 () Bool)

(assert (=> d!1951089 true))

(assert (=> d!1951089 true))

(declare-fun res!2572296 () Bool)

(assert (=> d!1951089 (= (choose!46249 lambda!340180) res!2572296)))

(assert (=> d!1950877 d!1951089))

(declare-fun b!6224098 () Bool)

(declare-fun e!3788593 () Bool)

(declare-fun e!3788587 () Bool)

(assert (=> b!6224098 (= e!3788593 e!3788587)))

(declare-fun c!1124790 () Bool)

(assert (=> b!6224098 (= c!1124790 ((_ is Star!16159) (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))))))

(declare-fun bm!522644 () Bool)

(declare-fun call!522650 () Bool)

(declare-fun call!522651 () Bool)

(assert (=> bm!522644 (= call!522650 call!522651)))

(declare-fun b!6224099 () Bool)

(declare-fun e!3788588 () Bool)

(assert (=> b!6224099 (= e!3788588 call!522650)))

(declare-fun b!6224100 () Bool)

(declare-fun e!3788591 () Bool)

(assert (=> b!6224100 (= e!3788591 call!522651)))

(declare-fun b!6224102 () Bool)

(declare-fun e!3788590 () Bool)

(assert (=> b!6224102 (= e!3788590 call!522650)))

(declare-fun b!6224103 () Bool)

(declare-fun e!3788589 () Bool)

(assert (=> b!6224103 (= e!3788587 e!3788589)))

(declare-fun c!1124791 () Bool)

(assert (=> b!6224103 (= c!1124791 ((_ is Union!16159) (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))))))

(declare-fun b!6224104 () Bool)

(assert (=> b!6224104 (= e!3788587 e!3788591)))

(declare-fun res!2572299 () Bool)

(assert (=> b!6224104 (= res!2572299 (not (nullable!6152 (reg!16488 (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))))))))

(assert (=> b!6224104 (=> (not res!2572299) (not e!3788591))))

(declare-fun bm!522645 () Bool)

(declare-fun call!522649 () Bool)

(assert (=> bm!522645 (= call!522649 (validRegex!7895 (ite c!1124791 (regOne!32831 (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))) (regOne!32830 (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))))))))

(declare-fun bm!522646 () Bool)

(assert (=> bm!522646 (= call!522651 (validRegex!7895 (ite c!1124790 (reg!16488 (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))) (ite c!1124791 (regTwo!32831 (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))) (regTwo!32830 (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292))))))))))

(declare-fun b!6224105 () Bool)

(declare-fun e!3788592 () Bool)

(assert (=> b!6224105 (= e!3788592 e!3788590)))

(declare-fun res!2572301 () Bool)

(assert (=> b!6224105 (=> (not res!2572301) (not e!3788590))))

(assert (=> b!6224105 (= res!2572301 call!522649)))

(declare-fun b!6224106 () Bool)

(declare-fun res!2572300 () Bool)

(assert (=> b!6224106 (=> (not res!2572300) (not e!3788588))))

(assert (=> b!6224106 (= res!2572300 call!522649)))

(assert (=> b!6224106 (= e!3788589 e!3788588)))

(declare-fun d!1951091 () Bool)

(declare-fun res!2572297 () Bool)

(assert (=> d!1951091 (=> res!2572297 e!3788593)))

(assert (=> d!1951091 (= res!2572297 ((_ is ElementMatch!16159) (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))))))

(assert (=> d!1951091 (= (validRegex!7895 (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292)))) e!3788593)))

(declare-fun b!6224101 () Bool)

(declare-fun res!2572298 () Bool)

(assert (=> b!6224101 (=> res!2572298 e!3788592)))

(assert (=> b!6224101 (= res!2572298 (not ((_ is Concat!25004) (ite c!1124620 (reg!16488 r!7292) (ite c!1124621 (regTwo!32831 r!7292) (regTwo!32830 r!7292))))))))

(assert (=> b!6224101 (= e!3788589 e!3788592)))

(assert (= (and d!1951091 (not res!2572297)) b!6224098))

(assert (= (and b!6224098 c!1124790) b!6224104))

(assert (= (and b!6224098 (not c!1124790)) b!6224103))

(assert (= (and b!6224104 res!2572299) b!6224100))

(assert (= (and b!6224103 c!1124791) b!6224106))

(assert (= (and b!6224103 (not c!1124791)) b!6224101))

(assert (= (and b!6224106 res!2572300) b!6224099))

(assert (= (and b!6224101 (not res!2572298)) b!6224105))

(assert (= (and b!6224105 res!2572301) b!6224102))

(assert (= (or b!6224099 b!6224102) bm!522644))

(assert (= (or b!6224106 b!6224105) bm!522645))

(assert (= (or b!6224100 bm!522644) bm!522646))

(declare-fun m!7051380 () Bool)

(assert (=> b!6224104 m!7051380))

(declare-fun m!7051382 () Bool)

(assert (=> bm!522645 m!7051382))

(declare-fun m!7051384 () Bool)

(assert (=> bm!522646 m!7051384))

(assert (=> bm!522537 d!1951091))

(declare-fun d!1951093 () Bool)

(assert (=> d!1951093 (= (nullable!6152 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))) (nullableFct!2108 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun bs!1543334 () Bool)

(assert (= bs!1543334 d!1951093))

(declare-fun m!7051386 () Bool)

(assert (=> bs!1543334 m!7051386))

(assert (=> b!6223713 d!1951093))

(declare-fun d!1951095 () Bool)

(assert (=> d!1951095 (= (nullable!6152 (h!71100 (exprs!6043 lt!2345243))) (nullableFct!2108 (h!71100 (exprs!6043 lt!2345243))))))

(declare-fun bs!1543335 () Bool)

(assert (= bs!1543335 d!1951095))

(declare-fun m!7051388 () Bool)

(assert (=> bs!1543335 m!7051388))

(assert (=> b!6223703 d!1951095))

(declare-fun d!1951097 () Bool)

(declare-fun c!1124792 () Bool)

(assert (=> d!1951097 (= c!1124792 (isEmpty!36666 (tail!11911 (t!378311 s!2326))))))

(declare-fun e!3788594 () Bool)

(assert (=> d!1951097 (= (matchZipper!2171 (derivationStepZipper!2125 lt!2345247 (head!12826 (t!378311 s!2326))) (tail!11911 (t!378311 s!2326))) e!3788594)))

(declare-fun b!6224107 () Bool)

(assert (=> b!6224107 (= e!3788594 (nullableZipper!1933 (derivationStepZipper!2125 lt!2345247 (head!12826 (t!378311 s!2326)))))))

(declare-fun b!6224108 () Bool)

(assert (=> b!6224108 (= e!3788594 (matchZipper!2171 (derivationStepZipper!2125 (derivationStepZipper!2125 lt!2345247 (head!12826 (t!378311 s!2326))) (head!12826 (tail!11911 (t!378311 s!2326)))) (tail!11911 (tail!11911 (t!378311 s!2326)))))))

(assert (= (and d!1951097 c!1124792) b!6224107))

(assert (= (and d!1951097 (not c!1124792)) b!6224108))

(assert (=> d!1951097 m!7050884))

(assert (=> d!1951097 m!7051138))

(assert (=> b!6224107 m!7050882))

(declare-fun m!7051390 () Bool)

(assert (=> b!6224107 m!7051390))

(assert (=> b!6224108 m!7050884))

(assert (=> b!6224108 m!7051142))

(assert (=> b!6224108 m!7050882))

(assert (=> b!6224108 m!7051142))

(declare-fun m!7051392 () Bool)

(assert (=> b!6224108 m!7051392))

(assert (=> b!6224108 m!7050884))

(assert (=> b!6224108 m!7051146))

(assert (=> b!6224108 m!7051392))

(assert (=> b!6224108 m!7051146))

(declare-fun m!7051394 () Bool)

(assert (=> b!6224108 m!7051394))

(assert (=> b!6223500 d!1951097))

(declare-fun bs!1543336 () Bool)

(declare-fun d!1951099 () Bool)

(assert (= bs!1543336 (and d!1951099 d!1951021)))

(declare-fun lambda!340265 () Int)

(assert (=> bs!1543336 (= lambda!340265 lambda!340254)))

(declare-fun bs!1543337 () Bool)

(assert (= bs!1543337 (and d!1951099 d!1950991)))

(assert (=> bs!1543337 (= lambda!340265 lambda!340249)))

(declare-fun bs!1543338 () Bool)

(assert (= bs!1543338 (and d!1951099 d!1950959)))

(assert (=> bs!1543338 (= lambda!340265 lambda!340246)))

(declare-fun bs!1543339 () Bool)

(assert (= bs!1543339 (and d!1951099 d!1951043)))

(assert (=> bs!1543339 (= lambda!340265 lambda!340258)))

(declare-fun bs!1543340 () Bool)

(assert (= bs!1543340 (and d!1951099 b!6223098)))

(assert (=> bs!1543340 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340265 lambda!340181))))

(declare-fun bs!1543341 () Bool)

(assert (= bs!1543341 (and d!1951099 d!1950895)))

(assert (=> bs!1543341 (= (= (head!12826 (t!378311 s!2326)) (h!71101 s!2326)) (= lambda!340265 lambda!340235))))

(declare-fun bs!1543342 () Bool)

(assert (= bs!1543342 (and d!1951099 d!1950987)))

(assert (=> bs!1543342 (= lambda!340265 lambda!340248)))

(assert (=> d!1951099 true))

(assert (=> d!1951099 (= (derivationStepZipper!2125 lt!2345247 (head!12826 (t!378311 s!2326))) (flatMap!1664 lt!2345247 lambda!340265))))

(declare-fun bs!1543343 () Bool)

(assert (= bs!1543343 d!1951099))

(declare-fun m!7051396 () Bool)

(assert (=> bs!1543343 m!7051396))

(assert (=> b!6223500 d!1951099))

(assert (=> b!6223500 d!1950961))

(assert (=> b!6223500 d!1950963))

(declare-fun d!1951101 () Bool)

(assert (=> d!1951101 (= (nullable!6152 r!7292) (nullableFct!2108 r!7292))))

(declare-fun bs!1543344 () Bool)

(assert (= bs!1543344 d!1951101))

(declare-fun m!7051398 () Bool)

(assert (=> bs!1543344 m!7051398))

(assert (=> b!6223820 d!1951101))

(declare-fun bs!1543345 () Bool)

(declare-fun d!1951103 () Bool)

(assert (= bs!1543345 (and d!1951103 d!1950971)))

(declare-fun lambda!340266 () Int)

(assert (=> bs!1543345 (= lambda!340266 lambda!340247)))

(declare-fun bs!1543346 () Bool)

(assert (= bs!1543346 (and d!1951103 d!1950947)))

(assert (=> bs!1543346 (= lambda!340266 lambda!340245)))

(declare-fun bs!1543347 () Bool)

(assert (= bs!1543347 (and d!1951103 d!1951005)))

(assert (=> bs!1543347 (= lambda!340266 lambda!340250)))

(declare-fun bs!1543348 () Bool)

(assert (= bs!1543348 (and d!1951103 d!1950907)))

(assert (=> bs!1543348 (= lambda!340266 lambda!340238)))

(declare-fun bs!1543349 () Bool)

(assert (= bs!1543349 (and d!1951103 d!1950865)))

(assert (=> bs!1543349 (= lambda!340266 lambda!340217)))

(declare-fun bs!1543350 () Bool)

(assert (= bs!1543350 (and d!1951103 d!1950893)))

(assert (=> bs!1543350 (= lambda!340266 lambda!340232)))

(declare-fun bs!1543351 () Bool)

(assert (= bs!1543351 (and d!1951103 d!1950891)))

(assert (=> bs!1543351 (= lambda!340266 lambda!340229)))

(declare-fun bs!1543352 () Bool)

(assert (= bs!1543352 (and d!1951103 d!1950863)))

(assert (=> bs!1543352 (= lambda!340266 lambda!340216)))

(declare-fun b!6224109 () Bool)

(declare-fun e!3788600 () Regex!16159)

(assert (=> b!6224109 (= e!3788600 EmptyExpr!16159)))

(declare-fun b!6224110 () Bool)

(declare-fun e!3788595 () Bool)

(declare-fun e!3788599 () Bool)

(assert (=> b!6224110 (= e!3788595 e!3788599)))

(declare-fun c!1124795 () Bool)

(assert (=> b!6224110 (= c!1124795 (isEmpty!36663 (tail!11912 (t!378310 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun b!6224111 () Bool)

(declare-fun lt!2345347 () Regex!16159)

(assert (=> b!6224111 (= e!3788599 (isConcat!1092 lt!2345347))))

(declare-fun b!6224112 () Bool)

(declare-fun e!3788596 () Regex!16159)

(assert (=> b!6224112 (= e!3788596 (h!71100 (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun e!3788597 () Bool)

(assert (=> d!1951103 e!3788597))

(declare-fun res!2572302 () Bool)

(assert (=> d!1951103 (=> (not res!2572302) (not e!3788597))))

(assert (=> d!1951103 (= res!2572302 (validRegex!7895 lt!2345347))))

(assert (=> d!1951103 (= lt!2345347 e!3788596)))

(declare-fun c!1124794 () Bool)

(declare-fun e!3788598 () Bool)

(assert (=> d!1951103 (= c!1124794 e!3788598)))

(declare-fun res!2572303 () Bool)

(assert (=> d!1951103 (=> (not res!2572303) (not e!3788598))))

(assert (=> d!1951103 (= res!2572303 ((_ is Cons!64652) (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(assert (=> d!1951103 (forall!15273 (t!378310 (exprs!6043 (h!71102 zl!343))) lambda!340266)))

(assert (=> d!1951103 (= (generalisedConcat!1756 (t!378310 (exprs!6043 (h!71102 zl!343)))) lt!2345347)))

(declare-fun b!6224113 () Bool)

(assert (=> b!6224113 (= e!3788597 e!3788595)))

(declare-fun c!1124793 () Bool)

(assert (=> b!6224113 (= c!1124793 (isEmpty!36663 (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6224114 () Bool)

(assert (=> b!6224114 (= e!3788596 e!3788600)))

(declare-fun c!1124796 () Bool)

(assert (=> b!6224114 (= c!1124796 ((_ is Cons!64652) (t!378310 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6224115 () Bool)

(assert (=> b!6224115 (= e!3788599 (= lt!2345347 (head!12827 (t!378310 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun b!6224116 () Bool)

(assert (=> b!6224116 (= e!3788598 (isEmpty!36663 (t!378310 (t!378310 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun b!6224117 () Bool)

(assert (=> b!6224117 (= e!3788595 (isEmptyExpr!1569 lt!2345347))))

(declare-fun b!6224118 () Bool)

(assert (=> b!6224118 (= e!3788600 (Concat!25004 (h!71100 (t!378310 (exprs!6043 (h!71102 zl!343)))) (generalisedConcat!1756 (t!378310 (t!378310 (exprs!6043 (h!71102 zl!343)))))))))

(assert (= (and d!1951103 res!2572303) b!6224116))

(assert (= (and d!1951103 c!1124794) b!6224112))

(assert (= (and d!1951103 (not c!1124794)) b!6224114))

(assert (= (and b!6224114 c!1124796) b!6224118))

(assert (= (and b!6224114 (not c!1124796)) b!6224109))

(assert (= (and d!1951103 res!2572302) b!6224113))

(assert (= (and b!6224113 c!1124793) b!6224117))

(assert (= (and b!6224113 (not c!1124793)) b!6224110))

(assert (= (and b!6224110 c!1124795) b!6224115))

(assert (= (and b!6224110 (not c!1124795)) b!6224111))

(declare-fun m!7051400 () Bool)

(assert (=> b!6224115 m!7051400))

(declare-fun m!7051402 () Bool)

(assert (=> b!6224110 m!7051402))

(assert (=> b!6224110 m!7051402))

(declare-fun m!7051404 () Bool)

(assert (=> b!6224110 m!7051404))

(assert (=> b!6224113 m!7050560))

(declare-fun m!7051406 () Bool)

(assert (=> b!6224117 m!7051406))

(declare-fun m!7051408 () Bool)

(assert (=> d!1951103 m!7051408))

(declare-fun m!7051410 () Bool)

(assert (=> d!1951103 m!7051410))

(declare-fun m!7051412 () Bool)

(assert (=> b!6224118 m!7051412))

(declare-fun m!7051414 () Bool)

(assert (=> b!6224111 m!7051414))

(declare-fun m!7051416 () Bool)

(assert (=> b!6224116 m!7051416))

(assert (=> b!6223700 d!1951103))

(declare-fun bm!522647 () Bool)

(declare-fun call!522655 () (InoxSet Context!11086))

(declare-fun call!522653 () (InoxSet Context!11086))

(assert (=> bm!522647 (= call!522655 call!522653)))

(declare-fun b!6224119 () Bool)

(declare-fun e!3788603 () (InoxSet Context!11086))

(assert (=> b!6224119 (= e!3788603 call!522655)))

(declare-fun b!6224120 () Bool)

(declare-fun c!1124797 () Bool)

(declare-fun e!3788602 () Bool)

(assert (=> b!6224120 (= c!1124797 e!3788602)))

(declare-fun res!2572304 () Bool)

(assert (=> b!6224120 (=> (not res!2572304) (not e!3788602))))

(assert (=> b!6224120 (= res!2572304 ((_ is Concat!25004) (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))

(declare-fun e!3788604 () (InoxSet Context!11086))

(declare-fun e!3788601 () (InoxSet Context!11086))

(assert (=> b!6224120 (= e!3788604 e!3788601)))

(declare-fun b!6224121 () Bool)

(declare-fun e!3788605 () (InoxSet Context!11086))

(assert (=> b!6224121 (= e!3788605 call!522655)))

(declare-fun b!6224122 () Bool)

(declare-fun e!3788606 () (InoxSet Context!11086))

(assert (=> b!6224122 (= e!3788606 (store ((as const (Array Context!11086 Bool)) false) (ite c!1124692 lt!2345243 (Context!11087 call!522574)) true))))

(declare-fun bm!522648 () Bool)

(declare-fun call!522657 () (InoxSet Context!11086))

(assert (=> bm!522648 (= call!522653 call!522657)))

(declare-fun c!1124798 () Bool)

(declare-fun c!1124801 () Bool)

(declare-fun call!522652 () List!64776)

(declare-fun bm!522649 () Bool)

(assert (=> bm!522649 (= call!522657 (derivationStepZipperDown!1407 (ite c!1124801 (regTwo!32831 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))) (ite c!1124797 (regTwo!32830 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))) (ite c!1124798 (regOne!32830 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))) (reg!16488 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))))))) (ite (or c!1124801 c!1124797) (ite c!1124692 lt!2345243 (Context!11087 call!522574)) (Context!11087 call!522652)) (h!71101 s!2326)))))

(declare-fun b!6224123 () Bool)

(declare-fun call!522656 () (InoxSet Context!11086))

(assert (=> b!6224123 (= e!3788604 ((_ map or) call!522656 call!522657))))

(declare-fun c!1124799 () Bool)

(declare-fun d!1951105 () Bool)

(assert (=> d!1951105 (= c!1124799 (and ((_ is ElementMatch!16159) (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))) (= (c!1124503 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))) (h!71101 s!2326))))))

(assert (=> d!1951105 (= (derivationStepZipperDown!1407 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))) (ite c!1124692 lt!2345243 (Context!11087 call!522574)) (h!71101 s!2326)) e!3788606)))

(declare-fun bm!522650 () Bool)

(declare-fun call!522654 () List!64776)

(assert (=> bm!522650 (= call!522656 (derivationStepZipperDown!1407 (ite c!1124801 (regOne!32831 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))) (regOne!32830 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))))) (ite c!1124801 (ite c!1124692 lt!2345243 (Context!11087 call!522574)) (Context!11087 call!522654)) (h!71101 s!2326)))))

(declare-fun bm!522651 () Bool)

(assert (=> bm!522651 (= call!522652 call!522654)))

(declare-fun bm!522652 () Bool)

(assert (=> bm!522652 (= call!522654 ($colon$colon!2028 (exprs!6043 (ite c!1124692 lt!2345243 (Context!11087 call!522574))) (ite (or c!1124797 c!1124798) (regTwo!32830 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))) (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))))))))

(declare-fun b!6224124 () Bool)

(declare-fun c!1124800 () Bool)

(assert (=> b!6224124 (= c!1124800 ((_ is Star!16159) (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))

(assert (=> b!6224124 (= e!3788603 e!3788605)))

(declare-fun b!6224125 () Bool)

(assert (=> b!6224125 (= e!3788606 e!3788604)))

(assert (=> b!6224125 (= c!1124801 ((_ is Union!16159) (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))

(declare-fun b!6224126 () Bool)

(assert (=> b!6224126 (= e!3788602 (nullable!6152 (regOne!32830 (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))))))))

(declare-fun b!6224127 () Bool)

(assert (=> b!6224127 (= e!3788605 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6224128 () Bool)

(assert (=> b!6224128 (= e!3788601 e!3788603)))

(assert (=> b!6224128 (= c!1124798 ((_ is Concat!25004) (ite c!1124692 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))))))))

(declare-fun b!6224129 () Bool)

(assert (=> b!6224129 (= e!3788601 ((_ map or) call!522656 call!522653))))

(assert (= (and d!1951105 c!1124799) b!6224122))

(assert (= (and d!1951105 (not c!1124799)) b!6224125))

(assert (= (and b!6224125 c!1124801) b!6224123))

(assert (= (and b!6224125 (not c!1124801)) b!6224120))

(assert (= (and b!6224120 res!2572304) b!6224126))

(assert (= (and b!6224120 c!1124797) b!6224129))

(assert (= (and b!6224120 (not c!1124797)) b!6224128))

(assert (= (and b!6224128 c!1124798) b!6224119))

(assert (= (and b!6224128 (not c!1124798)) b!6224124))

(assert (= (and b!6224124 c!1124800) b!6224121))

(assert (= (and b!6224124 (not c!1124800)) b!6224127))

(assert (= (or b!6224119 b!6224121) bm!522651))

(assert (= (or b!6224119 b!6224121) bm!522647))

(assert (= (or b!6224129 bm!522651) bm!522652))

(assert (= (or b!6224129 bm!522647) bm!522648))

(assert (= (or b!6224123 bm!522648) bm!522649))

(assert (= (or b!6224123 b!6224129) bm!522650))

(declare-fun m!7051418 () Bool)

(assert (=> b!6224126 m!7051418))

(declare-fun m!7051420 () Bool)

(assert (=> bm!522650 m!7051420))

(declare-fun m!7051422 () Bool)

(assert (=> bm!522652 m!7051422))

(declare-fun m!7051424 () Bool)

(assert (=> bm!522649 m!7051424))

(declare-fun m!7051426 () Bool)

(assert (=> b!6224122 m!7051426))

(assert (=> bm!522570 d!1951105))

(declare-fun b!6224130 () Bool)

(declare-fun e!3788612 () Bool)

(assert (=> b!6224130 (= e!3788612 (= (head!12826 (tail!11911 s!2326)) (c!1124503 (derivativeStep!4872 r!7292 (head!12826 s!2326)))))))

(declare-fun bm!522653 () Bool)

(declare-fun call!522658 () Bool)

(assert (=> bm!522653 (= call!522658 (isEmpty!36666 (tail!11911 s!2326)))))

(declare-fun b!6224131 () Bool)

(declare-fun res!2572307 () Bool)

(declare-fun e!3788611 () Bool)

(assert (=> b!6224131 (=> res!2572307 e!3788611)))

(assert (=> b!6224131 (= res!2572307 e!3788612)))

(declare-fun res!2572310 () Bool)

(assert (=> b!6224131 (=> (not res!2572310) (not e!3788612))))

(declare-fun lt!2345348 () Bool)

(assert (=> b!6224131 (= res!2572310 lt!2345348)))

(declare-fun b!6224132 () Bool)

(declare-fun e!3788609 () Bool)

(declare-fun e!3788607 () Bool)

(assert (=> b!6224132 (= e!3788609 e!3788607)))

(declare-fun c!1124802 () Bool)

(assert (=> b!6224132 (= c!1124802 ((_ is EmptyLang!16159) (derivativeStep!4872 r!7292 (head!12826 s!2326))))))

(declare-fun b!6224133 () Bool)

(declare-fun res!2572309 () Bool)

(assert (=> b!6224133 (=> (not res!2572309) (not e!3788612))))

(assert (=> b!6224133 (= res!2572309 (not call!522658))))

(declare-fun b!6224134 () Bool)

(assert (=> b!6224134 (= e!3788607 (not lt!2345348))))

(declare-fun d!1951107 () Bool)

(assert (=> d!1951107 e!3788609))

(declare-fun c!1124804 () Bool)

(assert (=> d!1951107 (= c!1124804 ((_ is EmptyExpr!16159) (derivativeStep!4872 r!7292 (head!12826 s!2326))))))

(declare-fun e!3788610 () Bool)

(assert (=> d!1951107 (= lt!2345348 e!3788610)))

(declare-fun c!1124803 () Bool)

(assert (=> d!1951107 (= c!1124803 (isEmpty!36666 (tail!11911 s!2326)))))

(assert (=> d!1951107 (validRegex!7895 (derivativeStep!4872 r!7292 (head!12826 s!2326)))))

(assert (=> d!1951107 (= (matchR!8342 (derivativeStep!4872 r!7292 (head!12826 s!2326)) (tail!11911 s!2326)) lt!2345348)))

(declare-fun b!6224135 () Bool)

(declare-fun e!3788608 () Bool)

(assert (=> b!6224135 (= e!3788611 e!3788608)))

(declare-fun res!2572312 () Bool)

(assert (=> b!6224135 (=> (not res!2572312) (not e!3788608))))

(assert (=> b!6224135 (= res!2572312 (not lt!2345348))))

(declare-fun b!6224136 () Bool)

(assert (=> b!6224136 (= e!3788609 (= lt!2345348 call!522658))))

(declare-fun b!6224137 () Bool)

(declare-fun e!3788613 () Bool)

(assert (=> b!6224137 (= e!3788608 e!3788613)))

(declare-fun res!2572308 () Bool)

(assert (=> b!6224137 (=> res!2572308 e!3788613)))

(assert (=> b!6224137 (= res!2572308 call!522658)))

(declare-fun b!6224138 () Bool)

(declare-fun res!2572306 () Bool)

(assert (=> b!6224138 (=> res!2572306 e!3788611)))

(assert (=> b!6224138 (= res!2572306 (not ((_ is ElementMatch!16159) (derivativeStep!4872 r!7292 (head!12826 s!2326)))))))

(assert (=> b!6224138 (= e!3788607 e!3788611)))

(declare-fun b!6224139 () Bool)

(assert (=> b!6224139 (= e!3788613 (not (= (head!12826 (tail!11911 s!2326)) (c!1124503 (derivativeStep!4872 r!7292 (head!12826 s!2326))))))))

(declare-fun b!6224140 () Bool)

(declare-fun res!2572311 () Bool)

(assert (=> b!6224140 (=> res!2572311 e!3788613)))

(assert (=> b!6224140 (= res!2572311 (not (isEmpty!36666 (tail!11911 (tail!11911 s!2326)))))))

(declare-fun b!6224141 () Bool)

(assert (=> b!6224141 (= e!3788610 (matchR!8342 (derivativeStep!4872 (derivativeStep!4872 r!7292 (head!12826 s!2326)) (head!12826 (tail!11911 s!2326))) (tail!11911 (tail!11911 s!2326))))))

(declare-fun b!6224142 () Bool)

(assert (=> b!6224142 (= e!3788610 (nullable!6152 (derivativeStep!4872 r!7292 (head!12826 s!2326))))))

(declare-fun b!6224143 () Bool)

(declare-fun res!2572305 () Bool)

(assert (=> b!6224143 (=> (not res!2572305) (not e!3788612))))

(assert (=> b!6224143 (= res!2572305 (isEmpty!36666 (tail!11911 (tail!11911 s!2326))))))

(assert (= (and d!1951107 c!1124803) b!6224142))

(assert (= (and d!1951107 (not c!1124803)) b!6224141))

(assert (= (and d!1951107 c!1124804) b!6224136))

(assert (= (and d!1951107 (not c!1124804)) b!6224132))

(assert (= (and b!6224132 c!1124802) b!6224134))

(assert (= (and b!6224132 (not c!1124802)) b!6224138))

(assert (= (and b!6224138 (not res!2572306)) b!6224131))

(assert (= (and b!6224131 res!2572310) b!6224133))

(assert (= (and b!6224133 res!2572309) b!6224143))

(assert (= (and b!6224143 res!2572305) b!6224130))

(assert (= (and b!6224131 (not res!2572307)) b!6224135))

(assert (= (and b!6224135 res!2572312) b!6224137))

(assert (= (and b!6224137 (not res!2572308)) b!6224140))

(assert (= (and b!6224140 (not res!2572311)) b!6224139))

(assert (= (or b!6224136 b!6224133 b!6224137) bm!522653))

(assert (=> b!6224141 m!7051102))

(declare-fun m!7051428 () Bool)

(assert (=> b!6224141 m!7051428))

(assert (=> b!6224141 m!7051100))

(assert (=> b!6224141 m!7051428))

(declare-fun m!7051430 () Bool)

(assert (=> b!6224141 m!7051430))

(assert (=> b!6224141 m!7051102))

(declare-fun m!7051432 () Bool)

(assert (=> b!6224141 m!7051432))

(assert (=> b!6224141 m!7051430))

(assert (=> b!6224141 m!7051432))

(declare-fun m!7051434 () Bool)

(assert (=> b!6224141 m!7051434))

(assert (=> bm!522653 m!7051102))

(assert (=> bm!522653 m!7051108))

(assert (=> b!6224142 m!7051100))

(declare-fun m!7051436 () Bool)

(assert (=> b!6224142 m!7051436))

(assert (=> b!6224139 m!7051102))

(assert (=> b!6224139 m!7051428))

(assert (=> b!6224143 m!7051102))

(assert (=> b!6224143 m!7051432))

(assert (=> b!6224143 m!7051432))

(declare-fun m!7051438 () Bool)

(assert (=> b!6224143 m!7051438))

(assert (=> b!6224130 m!7051102))

(assert (=> b!6224130 m!7051428))

(assert (=> d!1951107 m!7051102))

(assert (=> d!1951107 m!7051108))

(assert (=> d!1951107 m!7051100))

(declare-fun m!7051440 () Bool)

(assert (=> d!1951107 m!7051440))

(assert (=> b!6224140 m!7051102))

(assert (=> b!6224140 m!7051432))

(assert (=> b!6224140 m!7051432))

(assert (=> b!6224140 m!7051438))

(assert (=> b!6223819 d!1951107))

(declare-fun d!1951109 () Bool)

(declare-fun lt!2345351 () Regex!16159)

(assert (=> d!1951109 (validRegex!7895 lt!2345351)))

(declare-fun e!3788628 () Regex!16159)

(assert (=> d!1951109 (= lt!2345351 e!3788628)))

(declare-fun c!1124818 () Bool)

(assert (=> d!1951109 (= c!1124818 (or ((_ is EmptyExpr!16159) r!7292) ((_ is EmptyLang!16159) r!7292)))))

(assert (=> d!1951109 (validRegex!7895 r!7292)))

(assert (=> d!1951109 (= (derivativeStep!4872 r!7292 (head!12826 s!2326)) lt!2345351)))

(declare-fun b!6224164 () Bool)

(declare-fun e!3788625 () Regex!16159)

(assert (=> b!6224164 (= e!3788625 (ite (= (head!12826 s!2326) (c!1124503 r!7292)) EmptyExpr!16159 EmptyLang!16159))))

(declare-fun bm!522662 () Bool)

(declare-fun c!1124815 () Bool)

(declare-fun c!1124819 () Bool)

(declare-fun call!522670 () Regex!16159)

(assert (=> bm!522662 (= call!522670 (derivativeStep!4872 (ite c!1124815 (regTwo!32831 r!7292) (ite c!1124819 (regTwo!32830 r!7292) (regOne!32830 r!7292))) (head!12826 s!2326)))))

(declare-fun bm!522663 () Bool)

(declare-fun call!522669 () Regex!16159)

(declare-fun c!1124817 () Bool)

(assert (=> bm!522663 (= call!522669 (derivativeStep!4872 (ite c!1124815 (regOne!32831 r!7292) (ite c!1124817 (reg!16488 r!7292) (regOne!32830 r!7292))) (head!12826 s!2326)))))

(declare-fun b!6224165 () Bool)

(declare-fun e!3788626 () Regex!16159)

(assert (=> b!6224165 (= e!3788626 (Union!16159 call!522669 call!522670))))

(declare-fun b!6224166 () Bool)

(assert (=> b!6224166 (= e!3788628 e!3788625)))

(declare-fun c!1124816 () Bool)

(assert (=> b!6224166 (= c!1124816 ((_ is ElementMatch!16159) r!7292))))

(declare-fun b!6224167 () Bool)

(assert (=> b!6224167 (= c!1124819 (nullable!6152 (regOne!32830 r!7292)))))

(declare-fun e!3788627 () Regex!16159)

(declare-fun e!3788624 () Regex!16159)

(assert (=> b!6224167 (= e!3788627 e!3788624)))

(declare-fun b!6224168 () Bool)

(assert (=> b!6224168 (= e!3788626 e!3788627)))

(assert (=> b!6224168 (= c!1124817 ((_ is Star!16159) r!7292))))

(declare-fun call!522667 () Regex!16159)

(declare-fun call!522668 () Regex!16159)

(declare-fun b!6224169 () Bool)

(assert (=> b!6224169 (= e!3788624 (Union!16159 (Concat!25004 call!522668 (regTwo!32830 r!7292)) call!522667))))

(declare-fun bm!522664 () Bool)

(assert (=> bm!522664 (= call!522667 call!522670)))

(declare-fun b!6224170 () Bool)

(assert (=> b!6224170 (= e!3788628 EmptyLang!16159)))

(declare-fun b!6224171 () Bool)

(assert (=> b!6224171 (= e!3788627 (Concat!25004 call!522668 r!7292))))

(declare-fun b!6224172 () Bool)

(assert (=> b!6224172 (= e!3788624 (Union!16159 (Concat!25004 call!522667 (regTwo!32830 r!7292)) EmptyLang!16159))))

(declare-fun b!6224173 () Bool)

(assert (=> b!6224173 (= c!1124815 ((_ is Union!16159) r!7292))))

(assert (=> b!6224173 (= e!3788625 e!3788626)))

(declare-fun bm!522665 () Bool)

(assert (=> bm!522665 (= call!522668 call!522669)))

(assert (= (and d!1951109 c!1124818) b!6224170))

(assert (= (and d!1951109 (not c!1124818)) b!6224166))

(assert (= (and b!6224166 c!1124816) b!6224164))

(assert (= (and b!6224166 (not c!1124816)) b!6224173))

(assert (= (and b!6224173 c!1124815) b!6224165))

(assert (= (and b!6224173 (not c!1124815)) b!6224168))

(assert (= (and b!6224168 c!1124817) b!6224171))

(assert (= (and b!6224168 (not c!1124817)) b!6224167))

(assert (= (and b!6224167 c!1124819) b!6224169))

(assert (= (and b!6224167 (not c!1124819)) b!6224172))

(assert (= (or b!6224169 b!6224172) bm!522664))

(assert (= (or b!6224171 b!6224169) bm!522665))

(assert (= (or b!6224165 bm!522664) bm!522662))

(assert (= (or b!6224165 bm!522665) bm!522663))

(declare-fun m!7051442 () Bool)

(assert (=> d!1951109 m!7051442))

(assert (=> d!1951109 m!7050540))

(assert (=> bm!522662 m!7051098))

(declare-fun m!7051444 () Bool)

(assert (=> bm!522662 m!7051444))

(assert (=> bm!522663 m!7051098))

(declare-fun m!7051446 () Bool)

(assert (=> bm!522663 m!7051446))

(assert (=> b!6224167 m!7051308))

(assert (=> b!6223819 d!1951109))

(assert (=> b!6223819 d!1950983))

(assert (=> b!6223819 d!1951051))

(declare-fun d!1951111 () Bool)

(assert (=> d!1951111 (= (isEmpty!36663 (unfocusZipperList!1580 zl!343)) ((_ is Nil!64652) (unfocusZipperList!1580 zl!343)))))

(assert (=> b!6223651 d!1951111))

(assert (=> d!1950919 d!1950921))

(declare-fun d!1951113 () Bool)

(assert (=> d!1951113 (= (flatMap!1664 z!1189 lambda!340181) (dynLambda!25511 lambda!340181 (h!71102 zl!343)))))

(assert (=> d!1951113 true))

(declare-fun _$13!3265 () Unit!157967)

(assert (=> d!1951113 (= (choose!46253 z!1189 (h!71102 zl!343) lambda!340181) _$13!3265)))

(declare-fun b_lambda!236631 () Bool)

(assert (=> (not b_lambda!236631) (not d!1951113)))

(declare-fun bs!1543353 () Bool)

(assert (= bs!1543353 d!1951113))

(assert (=> bs!1543353 m!7050588))

(assert (=> bs!1543353 m!7051056))

(assert (=> d!1950919 d!1951113))

(declare-fun d!1951115 () Bool)

(assert (=> d!1951115 (= ($colon$colon!2028 (exprs!6043 lt!2345242) (ite (or c!1124649 c!1124650) (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 r!7292)))) (Cons!64652 (ite (or c!1124649 c!1124650) (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (regOne!32830 (regOne!32830 r!7292))) (exprs!6043 lt!2345242)))))

(assert (=> bm!522564 d!1951115))

(declare-fun d!1951117 () Bool)

(assert (=> d!1951117 (= (isEmpty!36663 (tail!11912 (unfocusZipperList!1580 zl!343))) ((_ is Nil!64652) (tail!11912 (unfocusZipperList!1580 zl!343))))))

(assert (=> b!6223647 d!1951117))

(declare-fun d!1951119 () Bool)

(assert (=> d!1951119 (= (tail!11912 (unfocusZipperList!1580 zl!343)) (t!378310 (unfocusZipperList!1580 zl!343)))))

(assert (=> b!6223647 d!1951119))

(assert (=> d!1950885 d!1950881))

(declare-fun d!1951121 () Bool)

(assert (=> d!1951121 (= (flatMap!1664 lt!2345238 lambda!340181) (dynLambda!25511 lambda!340181 lt!2345242))))

(assert (=> d!1951121 true))

(declare-fun _$13!3266 () Unit!157967)

(assert (=> d!1951121 (= (choose!46253 lt!2345238 lt!2345242 lambda!340181) _$13!3266)))

(declare-fun b_lambda!236633 () Bool)

(assert (=> (not b_lambda!236633) (not d!1951121)))

(declare-fun bs!1543354 () Bool)

(assert (= bs!1543354 d!1951121))

(assert (=> bs!1543354 m!7050574))

(assert (=> bs!1543354 m!7050948))

(assert (=> d!1950885 d!1951121))

(declare-fun d!1951123 () Bool)

(declare-fun res!2572317 () Bool)

(declare-fun e!3788633 () Bool)

(assert (=> d!1951123 (=> res!2572317 e!3788633)))

(assert (=> d!1951123 (= res!2572317 ((_ is Nil!64654) lt!2345334))))

(assert (=> d!1951123 (= (noDuplicate!1997 lt!2345334) e!3788633)))

(declare-fun b!6224178 () Bool)

(declare-fun e!3788634 () Bool)

(assert (=> b!6224178 (= e!3788633 e!3788634)))

(declare-fun res!2572318 () Bool)

(assert (=> b!6224178 (=> (not res!2572318) (not e!3788634))))

(declare-fun contains!20099 (List!64778 Context!11086) Bool)

(assert (=> b!6224178 (= res!2572318 (not (contains!20099 (t!378312 lt!2345334) (h!71102 lt!2345334))))))

(declare-fun b!6224179 () Bool)

(assert (=> b!6224179 (= e!3788634 (noDuplicate!1997 (t!378312 lt!2345334)))))

(assert (= (and d!1951123 (not res!2572317)) b!6224178))

(assert (= (and b!6224178 res!2572318) b!6224179))

(declare-fun m!7051448 () Bool)

(assert (=> b!6224178 m!7051448))

(declare-fun m!7051450 () Bool)

(assert (=> b!6224179 m!7051450))

(assert (=> d!1950925 d!1951123))

(declare-fun d!1951125 () Bool)

(declare-fun e!3788642 () Bool)

(assert (=> d!1951125 e!3788642))

(declare-fun res!2572324 () Bool)

(assert (=> d!1951125 (=> (not res!2572324) (not e!3788642))))

(declare-fun res!2572323 () List!64778)

(assert (=> d!1951125 (= res!2572324 (noDuplicate!1997 res!2572323))))

(declare-fun e!3788641 () Bool)

(assert (=> d!1951125 e!3788641))

(assert (=> d!1951125 (= (choose!46254 z!1189) res!2572323)))

(declare-fun b!6224187 () Bool)

(declare-fun e!3788643 () Bool)

(declare-fun tp!1736073 () Bool)

(assert (=> b!6224187 (= e!3788643 tp!1736073)))

(declare-fun tp!1736074 () Bool)

(declare-fun b!6224186 () Bool)

(assert (=> b!6224186 (= e!3788641 (and (inv!83644 (h!71102 res!2572323)) e!3788643 tp!1736074))))

(declare-fun b!6224188 () Bool)

(assert (=> b!6224188 (= e!3788642 (= (content!12112 res!2572323) z!1189))))

(assert (= b!6224186 b!6224187))

(assert (= (and d!1951125 ((_ is Cons!64654) res!2572323)) b!6224186))

(assert (= (and d!1951125 res!2572324) b!6224188))

(declare-fun m!7051452 () Bool)

(assert (=> d!1951125 m!7051452))

(declare-fun m!7051454 () Bool)

(assert (=> b!6224186 m!7051454))

(declare-fun m!7051456 () Bool)

(assert (=> b!6224188 m!7051456))

(assert (=> d!1950925 d!1951125))

(declare-fun b!6224189 () Bool)

(declare-fun e!3788646 () (InoxSet Context!11086))

(declare-fun e!3788645 () (InoxSet Context!11086))

(assert (=> b!6224189 (= e!3788646 e!3788645)))

(declare-fun c!1124821 () Bool)

(assert (=> b!6224189 (= c!1124821 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345235))))))))

(declare-fun b!6224190 () Bool)

(assert (=> b!6224190 (= e!3788645 ((as const (Array Context!11086 Bool)) false))))

(declare-fun d!1951127 () Bool)

(declare-fun c!1124820 () Bool)

(declare-fun e!3788644 () Bool)

(assert (=> d!1951127 (= c!1124820 e!3788644)))

(declare-fun res!2572325 () Bool)

(assert (=> d!1951127 (=> (not res!2572325) (not e!3788644))))

(assert (=> d!1951127 (= res!2572325 ((_ is Cons!64652) (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345235))))))))

(assert (=> d!1951127 (= (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 lt!2345235))) (h!71101 s!2326)) e!3788646)))

(declare-fun bm!522666 () Bool)

(declare-fun call!522671 () (InoxSet Context!11086))

(assert (=> bm!522666 (= call!522671 (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345235))))) (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345235)))))) (h!71101 s!2326)))))

(declare-fun b!6224191 () Bool)

(assert (=> b!6224191 (= e!3788644 (nullable!6152 (h!71100 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345235)))))))))

(declare-fun b!6224192 () Bool)

(assert (=> b!6224192 (= e!3788645 call!522671)))

(declare-fun b!6224193 () Bool)

(assert (=> b!6224193 (= e!3788646 ((_ map or) call!522671 (derivationStepZipperUp!1333 (Context!11087 (t!378310 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345235)))))) (h!71101 s!2326))))))

(assert (= (and d!1951127 res!2572325) b!6224191))

(assert (= (and d!1951127 c!1124820) b!6224193))

(assert (= (and d!1951127 (not c!1124820)) b!6224189))

(assert (= (and b!6224189 c!1124821) b!6224192))

(assert (= (and b!6224189 (not c!1124821)) b!6224190))

(assert (= (or b!6224193 b!6224192) bm!522666))

(declare-fun m!7051458 () Bool)

(assert (=> bm!522666 m!7051458))

(declare-fun m!7051460 () Bool)

(assert (=> b!6224191 m!7051460))

(declare-fun m!7051462 () Bool)

(assert (=> b!6224193 m!7051462))

(assert (=> b!6223668 d!1951127))

(declare-fun d!1951129 () Bool)

(assert (=> d!1951129 (= (isEmpty!36663 (tail!11912 (exprs!6043 (h!71102 zl!343)))) ((_ is Nil!64652) (tail!11912 (exprs!6043 (h!71102 zl!343)))))))

(assert (=> b!6223692 d!1951129))

(declare-fun d!1951131 () Bool)

(assert (=> d!1951131 (= (tail!11912 (exprs!6043 (h!71102 zl!343))) (t!378310 (exprs!6043 (h!71102 zl!343))))))

(assert (=> b!6223692 d!1951131))

(declare-fun bm!522667 () Bool)

(declare-fun call!522675 () (InoxSet Context!11086))

(declare-fun call!522673 () (InoxSet Context!11086))

(assert (=> bm!522667 (= call!522675 call!522673)))

(declare-fun b!6224194 () Bool)

(declare-fun e!3788649 () (InoxSet Context!11086))

(assert (=> b!6224194 (= e!3788649 call!522675)))

(declare-fun b!6224195 () Bool)

(declare-fun c!1124822 () Bool)

(declare-fun e!3788648 () Bool)

(assert (=> b!6224195 (= c!1124822 e!3788648)))

(declare-fun res!2572326 () Bool)

(assert (=> b!6224195 (=> (not res!2572326) (not e!3788648))))

(assert (=> b!6224195 (= res!2572326 ((_ is Concat!25004) (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))))))

(declare-fun e!3788650 () (InoxSet Context!11086))

(declare-fun e!3788647 () (InoxSet Context!11086))

(assert (=> b!6224195 (= e!3788650 e!3788647)))

(declare-fun b!6224196 () Bool)

(declare-fun e!3788651 () (InoxSet Context!11086))

(assert (=> b!6224196 (= e!3788651 call!522675)))

(declare-fun b!6224197 () Bool)

(declare-fun e!3788652 () (InoxSet Context!11086))

(assert (=> b!6224197 (= e!3788652 (store ((as const (Array Context!11086 Bool)) false) (ite (or c!1124653 c!1124649) lt!2345242 (Context!11087 call!522564)) true))))

(declare-fun bm!522668 () Bool)

(declare-fun call!522677 () (InoxSet Context!11086))

(assert (=> bm!522668 (= call!522673 call!522677)))

(declare-fun call!522672 () List!64776)

(declare-fun bm!522669 () Bool)

(declare-fun c!1124823 () Bool)

(declare-fun c!1124826 () Bool)

(assert (=> bm!522669 (= call!522677 (derivationStepZipperDown!1407 (ite c!1124826 (regTwo!32831 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))) (ite c!1124822 (regTwo!32830 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))) (ite c!1124823 (regOne!32830 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))) (reg!16488 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292)))))))))) (ite (or c!1124826 c!1124822) (ite (or c!1124653 c!1124649) lt!2345242 (Context!11087 call!522564)) (Context!11087 call!522672)) (h!71101 s!2326)))))

(declare-fun b!6224198 () Bool)

(declare-fun call!522676 () (InoxSet Context!11086))

(assert (=> b!6224198 (= e!3788650 ((_ map or) call!522676 call!522677))))

(declare-fun d!1951133 () Bool)

(declare-fun c!1124824 () Bool)

(assert (=> d!1951133 (= c!1124824 (and ((_ is ElementMatch!16159) (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))) (= (c!1124503 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))) (h!71101 s!2326))))))

(assert (=> d!1951133 (= (derivationStepZipperDown!1407 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292)))))) (ite (or c!1124653 c!1124649) lt!2345242 (Context!11087 call!522564)) (h!71101 s!2326)) e!3788652)))

(declare-fun bm!522670 () Bool)

(declare-fun call!522674 () List!64776)

(assert (=> bm!522670 (= call!522676 (derivationStepZipperDown!1407 (ite c!1124826 (regOne!32831 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))) (regOne!32830 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292)))))))) (ite c!1124826 (ite (or c!1124653 c!1124649) lt!2345242 (Context!11087 call!522564)) (Context!11087 call!522674)) (h!71101 s!2326)))))

(declare-fun bm!522671 () Bool)

(assert (=> bm!522671 (= call!522672 call!522674)))

(declare-fun bm!522672 () Bool)

(assert (=> bm!522672 (= call!522674 ($colon$colon!2028 (exprs!6043 (ite (or c!1124653 c!1124649) lt!2345242 (Context!11087 call!522564))) (ite (or c!1124822 c!1124823) (regTwo!32830 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))) (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292)))))))))))

(declare-fun c!1124825 () Bool)

(declare-fun b!6224199 () Bool)

(assert (=> b!6224199 (= c!1124825 ((_ is Star!16159) (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))))))

(assert (=> b!6224199 (= e!3788649 e!3788651)))

(declare-fun b!6224200 () Bool)

(assert (=> b!6224200 (= e!3788652 e!3788650)))

(assert (=> b!6224200 (= c!1124826 ((_ is Union!16159) (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))))))

(declare-fun b!6224201 () Bool)

(assert (=> b!6224201 (= e!3788648 (nullable!6152 (regOne!32830 (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292)))))))))))

(declare-fun b!6224202 () Bool)

(assert (=> b!6224202 (= e!3788651 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6224203 () Bool)

(assert (=> b!6224203 (= e!3788647 e!3788649)))

(assert (=> b!6224203 (= c!1124823 ((_ is Concat!25004) (ite c!1124653 (regTwo!32831 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124649 (regTwo!32830 (regOne!32830 (regOne!32830 r!7292))) (ite c!1124650 (regOne!32830 (regOne!32830 (regOne!32830 r!7292))) (reg!16488 (regOne!32830 (regOne!32830 r!7292))))))))))

(declare-fun b!6224204 () Bool)

(assert (=> b!6224204 (= e!3788647 ((_ map or) call!522676 call!522673))))

(assert (= (and d!1951133 c!1124824) b!6224197))

(assert (= (and d!1951133 (not c!1124824)) b!6224200))

(assert (= (and b!6224200 c!1124826) b!6224198))

(assert (= (and b!6224200 (not c!1124826)) b!6224195))

(assert (= (and b!6224195 res!2572326) b!6224201))

(assert (= (and b!6224195 c!1124822) b!6224204))

(assert (= (and b!6224195 (not c!1124822)) b!6224203))

(assert (= (and b!6224203 c!1124823) b!6224194))

(assert (= (and b!6224203 (not c!1124823)) b!6224199))

(assert (= (and b!6224199 c!1124825) b!6224196))

(assert (= (and b!6224199 (not c!1124825)) b!6224202))

(assert (= (or b!6224194 b!6224196) bm!522671))

(assert (= (or b!6224194 b!6224196) bm!522667))

(assert (= (or b!6224204 bm!522671) bm!522672))

(assert (= (or b!6224204 bm!522667) bm!522668))

(assert (= (or b!6224198 bm!522668) bm!522669))

(assert (= (or b!6224198 b!6224204) bm!522670))

(declare-fun m!7051464 () Bool)

(assert (=> b!6224201 m!7051464))

(declare-fun m!7051466 () Bool)

(assert (=> bm!522670 m!7051466))

(declare-fun m!7051468 () Bool)

(assert (=> bm!522672 m!7051468))

(declare-fun m!7051470 () Bool)

(assert (=> bm!522669 m!7051470))

(declare-fun m!7051472 () Bool)

(assert (=> b!6224197 m!7051472))

(assert (=> bm!522561 d!1951133))

(declare-fun b!6224205 () Bool)

(declare-fun e!3788658 () Bool)

(assert (=> b!6224205 (= e!3788658 (= (head!12826 (_1!36441 (get!22332 lt!2345308))) (c!1124503 (regOne!32830 r!7292))))))

(declare-fun bm!522673 () Bool)

(declare-fun call!522678 () Bool)

(assert (=> bm!522673 (= call!522678 (isEmpty!36666 (_1!36441 (get!22332 lt!2345308))))))

(declare-fun b!6224206 () Bool)

(declare-fun res!2572329 () Bool)

(declare-fun e!3788657 () Bool)

(assert (=> b!6224206 (=> res!2572329 e!3788657)))

(assert (=> b!6224206 (= res!2572329 e!3788658)))

(declare-fun res!2572332 () Bool)

(assert (=> b!6224206 (=> (not res!2572332) (not e!3788658))))

(declare-fun lt!2345352 () Bool)

(assert (=> b!6224206 (= res!2572332 lt!2345352)))

(declare-fun b!6224207 () Bool)

(declare-fun e!3788655 () Bool)

(declare-fun e!3788653 () Bool)

(assert (=> b!6224207 (= e!3788655 e!3788653)))

(declare-fun c!1124827 () Bool)

(assert (=> b!6224207 (= c!1124827 ((_ is EmptyLang!16159) (regOne!32830 r!7292)))))

(declare-fun b!6224208 () Bool)

(declare-fun res!2572331 () Bool)

(assert (=> b!6224208 (=> (not res!2572331) (not e!3788658))))

(assert (=> b!6224208 (= res!2572331 (not call!522678))))

(declare-fun b!6224209 () Bool)

(assert (=> b!6224209 (= e!3788653 (not lt!2345352))))

(declare-fun d!1951135 () Bool)

(assert (=> d!1951135 e!3788655))

(declare-fun c!1124829 () Bool)

(assert (=> d!1951135 (= c!1124829 ((_ is EmptyExpr!16159) (regOne!32830 r!7292)))))

(declare-fun e!3788656 () Bool)

(assert (=> d!1951135 (= lt!2345352 e!3788656)))

(declare-fun c!1124828 () Bool)

(assert (=> d!1951135 (= c!1124828 (isEmpty!36666 (_1!36441 (get!22332 lt!2345308))))))

(assert (=> d!1951135 (validRegex!7895 (regOne!32830 r!7292))))

(assert (=> d!1951135 (= (matchR!8342 (regOne!32830 r!7292) (_1!36441 (get!22332 lt!2345308))) lt!2345352)))

(declare-fun b!6224210 () Bool)

(declare-fun e!3788654 () Bool)

(assert (=> b!6224210 (= e!3788657 e!3788654)))

(declare-fun res!2572334 () Bool)

(assert (=> b!6224210 (=> (not res!2572334) (not e!3788654))))

(assert (=> b!6224210 (= res!2572334 (not lt!2345352))))

(declare-fun b!6224211 () Bool)

(assert (=> b!6224211 (= e!3788655 (= lt!2345352 call!522678))))

(declare-fun b!6224212 () Bool)

(declare-fun e!3788659 () Bool)

(assert (=> b!6224212 (= e!3788654 e!3788659)))

(declare-fun res!2572330 () Bool)

(assert (=> b!6224212 (=> res!2572330 e!3788659)))

(assert (=> b!6224212 (= res!2572330 call!522678)))

(declare-fun b!6224213 () Bool)

(declare-fun res!2572328 () Bool)

(assert (=> b!6224213 (=> res!2572328 e!3788657)))

(assert (=> b!6224213 (= res!2572328 (not ((_ is ElementMatch!16159) (regOne!32830 r!7292))))))

(assert (=> b!6224213 (= e!3788653 e!3788657)))

(declare-fun b!6224214 () Bool)

(assert (=> b!6224214 (= e!3788659 (not (= (head!12826 (_1!36441 (get!22332 lt!2345308))) (c!1124503 (regOne!32830 r!7292)))))))

(declare-fun b!6224215 () Bool)

(declare-fun res!2572333 () Bool)

(assert (=> b!6224215 (=> res!2572333 e!3788659)))

(assert (=> b!6224215 (= res!2572333 (not (isEmpty!36666 (tail!11911 (_1!36441 (get!22332 lt!2345308))))))))

(declare-fun b!6224216 () Bool)

(assert (=> b!6224216 (= e!3788656 (matchR!8342 (derivativeStep!4872 (regOne!32830 r!7292) (head!12826 (_1!36441 (get!22332 lt!2345308)))) (tail!11911 (_1!36441 (get!22332 lt!2345308)))))))

(declare-fun b!6224217 () Bool)

(assert (=> b!6224217 (= e!3788656 (nullable!6152 (regOne!32830 r!7292)))))

(declare-fun b!6224218 () Bool)

(declare-fun res!2572327 () Bool)

(assert (=> b!6224218 (=> (not res!2572327) (not e!3788658))))

(assert (=> b!6224218 (= res!2572327 (isEmpty!36666 (tail!11911 (_1!36441 (get!22332 lt!2345308)))))))

(assert (= (and d!1951135 c!1124828) b!6224217))

(assert (= (and d!1951135 (not c!1124828)) b!6224216))

(assert (= (and d!1951135 c!1124829) b!6224211))

(assert (= (and d!1951135 (not c!1124829)) b!6224207))

(assert (= (and b!6224207 c!1124827) b!6224209))

(assert (= (and b!6224207 (not c!1124827)) b!6224213))

(assert (= (and b!6224213 (not res!2572328)) b!6224206))

(assert (= (and b!6224206 res!2572332) b!6224208))

(assert (= (and b!6224208 res!2572331) b!6224218))

(assert (= (and b!6224218 res!2572327) b!6224205))

(assert (= (and b!6224206 (not res!2572329)) b!6224210))

(assert (= (and b!6224210 res!2572334) b!6224212))

(assert (= (and b!6224212 (not res!2572330)) b!6224215))

(assert (= (and b!6224215 (not res!2572333)) b!6224214))

(assert (= (or b!6224211 b!6224208 b!6224212) bm!522673))

(declare-fun m!7051474 () Bool)

(assert (=> b!6224216 m!7051474))

(assert (=> b!6224216 m!7051474))

(declare-fun m!7051476 () Bool)

(assert (=> b!6224216 m!7051476))

(declare-fun m!7051478 () Bool)

(assert (=> b!6224216 m!7051478))

(assert (=> b!6224216 m!7051476))

(assert (=> b!6224216 m!7051478))

(declare-fun m!7051480 () Bool)

(assert (=> b!6224216 m!7051480))

(declare-fun m!7051482 () Bool)

(assert (=> bm!522673 m!7051482))

(assert (=> b!6224217 m!7051308))

(assert (=> b!6224214 m!7051474))

(assert (=> b!6224218 m!7051478))

(assert (=> b!6224218 m!7051478))

(declare-fun m!7051484 () Bool)

(assert (=> b!6224218 m!7051484))

(assert (=> b!6224205 m!7051474))

(assert (=> d!1951135 m!7051482))

(assert (=> d!1951135 m!7050906))

(assert (=> b!6224215 m!7051478))

(assert (=> b!6224215 m!7051478))

(assert (=> b!6224215 m!7051484))

(assert (=> b!6223547 d!1951135))

(assert (=> b!6223547 d!1951067))

(declare-fun bs!1543355 () Bool)

(declare-fun b!6224225 () Bool)

(assert (= bs!1543355 (and b!6224225 b!6224047)))

(declare-fun lambda!340267 () Int)

(assert (=> bs!1543355 (= (and (= (reg!16488 (regTwo!32831 r!7292)) (reg!16488 (regOne!32831 r!7292))) (= (regTwo!32831 r!7292) (regOne!32831 r!7292))) (= lambda!340267 lambda!340262))))

(declare-fun bs!1543356 () Bool)

(assert (= bs!1543356 (and b!6224225 b!6223092)))

(assert (=> bs!1543356 (not (= lambda!340267 lambda!340179))))

(declare-fun bs!1543357 () Bool)

(assert (= bs!1543357 (and b!6224225 d!1950875)))

(assert (=> bs!1543357 (not (= lambda!340267 lambda!340226))))

(declare-fun bs!1543358 () Bool)

(assert (= bs!1543358 (and b!6224225 b!6224043)))

(assert (=> bs!1543358 (not (= lambda!340267 lambda!340263))))

(declare-fun bs!1543359 () Bool)

(assert (= bs!1543359 (and b!6224225 d!1951031)))

(assert (=> bs!1543359 (not (= lambda!340267 lambda!340257))))

(declare-fun bs!1543360 () Bool)

(assert (= bs!1543360 (and b!6224225 b!6223775)))

(assert (=> bs!1543360 (= (and (= (reg!16488 (regTwo!32831 r!7292)) (reg!16488 r!7292)) (= (regTwo!32831 r!7292) r!7292)) (= lambda!340267 lambda!340243))))

(declare-fun bs!1543361 () Bool)

(assert (= bs!1543361 (and b!6224225 b!6223771)))

(assert (=> bs!1543361 (not (= lambda!340267 lambda!340244))))

(declare-fun bs!1543362 () Bool)

(assert (= bs!1543362 (and b!6224225 d!1950871)))

(assert (=> bs!1543362 (not (= lambda!340267 lambda!340223))))

(assert (=> bs!1543362 (not (= lambda!340267 lambda!340222))))

(assert (=> bs!1543356 (not (= lambda!340267 lambda!340180))))

(assert (=> b!6224225 true))

(assert (=> b!6224225 true))

(declare-fun bs!1543363 () Bool)

(declare-fun b!6224221 () Bool)

(assert (= bs!1543363 (and b!6224221 b!6224047)))

(declare-fun lambda!340268 () Int)

(assert (=> bs!1543363 (not (= lambda!340268 lambda!340262))))

(declare-fun bs!1543364 () Bool)

(assert (= bs!1543364 (and b!6224221 b!6223092)))

(assert (=> bs!1543364 (not (= lambda!340268 lambda!340179))))

(declare-fun bs!1543365 () Bool)

(assert (= bs!1543365 (and b!6224221 d!1950875)))

(assert (=> bs!1543365 (not (= lambda!340268 lambda!340226))))

(declare-fun bs!1543366 () Bool)

(assert (= bs!1543366 (and b!6224221 b!6224043)))

(assert (=> bs!1543366 (= (and (= (regOne!32830 (regTwo!32831 r!7292)) (regOne!32830 (regOne!32831 r!7292))) (= (regTwo!32830 (regTwo!32831 r!7292)) (regTwo!32830 (regOne!32831 r!7292)))) (= lambda!340268 lambda!340263))))

(declare-fun bs!1543367 () Bool)

(assert (= bs!1543367 (and b!6224221 b!6224225)))

(assert (=> bs!1543367 (not (= lambda!340268 lambda!340267))))

(declare-fun bs!1543368 () Bool)

(assert (= bs!1543368 (and b!6224221 d!1951031)))

(assert (=> bs!1543368 (not (= lambda!340268 lambda!340257))))

(declare-fun bs!1543369 () Bool)

(assert (= bs!1543369 (and b!6224221 b!6223775)))

(assert (=> bs!1543369 (not (= lambda!340268 lambda!340243))))

(declare-fun bs!1543370 () Bool)

(assert (= bs!1543370 (and b!6224221 b!6223771)))

(assert (=> bs!1543370 (= (and (= (regOne!32830 (regTwo!32831 r!7292)) (regOne!32830 r!7292)) (= (regTwo!32830 (regTwo!32831 r!7292)) (regTwo!32830 r!7292))) (= lambda!340268 lambda!340244))))

(declare-fun bs!1543371 () Bool)

(assert (= bs!1543371 (and b!6224221 d!1950871)))

(assert (=> bs!1543371 (= (and (= (regOne!32830 (regTwo!32831 r!7292)) (regOne!32830 r!7292)) (= (regTwo!32830 (regTwo!32831 r!7292)) (regTwo!32830 r!7292))) (= lambda!340268 lambda!340223))))

(assert (=> bs!1543371 (not (= lambda!340268 lambda!340222))))

(assert (=> bs!1543364 (= (and (= (regOne!32830 (regTwo!32831 r!7292)) (regOne!32830 r!7292)) (= (regTwo!32830 (regTwo!32831 r!7292)) (regTwo!32830 r!7292))) (= lambda!340268 lambda!340180))))

(assert (=> b!6224221 true))

(assert (=> b!6224221 true))

(declare-fun d!1951137 () Bool)

(declare-fun c!1124833 () Bool)

(assert (=> d!1951137 (= c!1124833 ((_ is EmptyExpr!16159) (regTwo!32831 r!7292)))))

(declare-fun e!3788660 () Bool)

(assert (=> d!1951137 (= (matchRSpec!3260 (regTwo!32831 r!7292) s!2326) e!3788660)))

(declare-fun b!6224219 () Bool)

(declare-fun res!2572335 () Bool)

(declare-fun e!3788664 () Bool)

(assert (=> b!6224219 (=> res!2572335 e!3788664)))

(declare-fun call!522679 () Bool)

(assert (=> b!6224219 (= res!2572335 call!522679)))

(declare-fun e!3788666 () Bool)

(assert (=> b!6224219 (= e!3788666 e!3788664)))

(declare-fun b!6224220 () Bool)

(declare-fun e!3788665 () Bool)

(assert (=> b!6224220 (= e!3788665 (matchRSpec!3260 (regTwo!32831 (regTwo!32831 r!7292)) s!2326))))

(declare-fun call!522680 () Bool)

(assert (=> b!6224221 (= e!3788666 call!522680)))

(declare-fun bm!522674 () Bool)

(assert (=> bm!522674 (= call!522679 (isEmpty!36666 s!2326))))

(declare-fun c!1124832 () Bool)

(declare-fun bm!522675 () Bool)

(assert (=> bm!522675 (= call!522680 (Exists!3229 (ite c!1124832 lambda!340267 lambda!340268)))))

(declare-fun b!6224222 () Bool)

(declare-fun c!1124831 () Bool)

(assert (=> b!6224222 (= c!1124831 ((_ is ElementMatch!16159) (regTwo!32831 r!7292)))))

(declare-fun e!3788663 () Bool)

(declare-fun e!3788662 () Bool)

(assert (=> b!6224222 (= e!3788663 e!3788662)))

(declare-fun b!6224223 () Bool)

(declare-fun e!3788661 () Bool)

(assert (=> b!6224223 (= e!3788661 e!3788665)))

(declare-fun res!2572336 () Bool)

(assert (=> b!6224223 (= res!2572336 (matchRSpec!3260 (regOne!32831 (regTwo!32831 r!7292)) s!2326))))

(assert (=> b!6224223 (=> res!2572336 e!3788665)))

(declare-fun b!6224224 () Bool)

(declare-fun c!1124830 () Bool)

(assert (=> b!6224224 (= c!1124830 ((_ is Union!16159) (regTwo!32831 r!7292)))))

(assert (=> b!6224224 (= e!3788662 e!3788661)))

(assert (=> b!6224225 (= e!3788664 call!522680)))

(declare-fun b!6224226 () Bool)

(assert (=> b!6224226 (= e!3788660 call!522679)))

(declare-fun b!6224227 () Bool)

(assert (=> b!6224227 (= e!3788660 e!3788663)))

(declare-fun res!2572337 () Bool)

(assert (=> b!6224227 (= res!2572337 (not ((_ is EmptyLang!16159) (regTwo!32831 r!7292))))))

(assert (=> b!6224227 (=> (not res!2572337) (not e!3788663))))

(declare-fun b!6224228 () Bool)

(assert (=> b!6224228 (= e!3788662 (= s!2326 (Cons!64653 (c!1124503 (regTwo!32831 r!7292)) Nil!64653)))))

(declare-fun b!6224229 () Bool)

(assert (=> b!6224229 (= e!3788661 e!3788666)))

(assert (=> b!6224229 (= c!1124832 ((_ is Star!16159) (regTwo!32831 r!7292)))))

(assert (= (and d!1951137 c!1124833) b!6224226))

(assert (= (and d!1951137 (not c!1124833)) b!6224227))

(assert (= (and b!6224227 res!2572337) b!6224222))

(assert (= (and b!6224222 c!1124831) b!6224228))

(assert (= (and b!6224222 (not c!1124831)) b!6224224))

(assert (= (and b!6224224 c!1124830) b!6224223))

(assert (= (and b!6224224 (not c!1124830)) b!6224229))

(assert (= (and b!6224223 (not res!2572336)) b!6224220))

(assert (= (and b!6224229 c!1124832) b!6224219))

(assert (= (and b!6224229 (not c!1124832)) b!6224221))

(assert (= (and b!6224219 (not res!2572335)) b!6224225))

(assert (= (or b!6224225 b!6224221) bm!522675))

(assert (= (or b!6224226 b!6224219) bm!522674))

(declare-fun m!7051498 () Bool)

(assert (=> b!6224220 m!7051498))

(assert (=> bm!522674 m!7051092))

(declare-fun m!7051500 () Bool)

(assert (=> bm!522675 m!7051500))

(declare-fun m!7051504 () Bool)

(assert (=> b!6224223 m!7051504))

(assert (=> b!6223770 d!1951137))

(declare-fun d!1951143 () Bool)

(assert (=> d!1951143 (= (Exists!3229 lambda!340222) (choose!46249 lambda!340222))))

(declare-fun bs!1543372 () Bool)

(assert (= bs!1543372 d!1951143))

(declare-fun m!7051508 () Bool)

(assert (=> bs!1543372 m!7051508))

(assert (=> d!1950871 d!1951143))

(declare-fun d!1951147 () Bool)

(assert (=> d!1951147 (= (Exists!3229 lambda!340223) (choose!46249 lambda!340223))))

(declare-fun bs!1543374 () Bool)

(assert (= bs!1543374 d!1951147))

(declare-fun m!7051512 () Bool)

(assert (=> bs!1543374 m!7051512))

(assert (=> d!1950871 d!1951147))

(declare-fun bs!1543375 () Bool)

(declare-fun d!1951149 () Bool)

(assert (= bs!1543375 (and d!1951149 b!6224047)))

(declare-fun lambda!340273 () Int)

(assert (=> bs!1543375 (not (= lambda!340273 lambda!340262))))

(declare-fun bs!1543376 () Bool)

(assert (= bs!1543376 (and d!1951149 b!6223092)))

(assert (=> bs!1543376 (= lambda!340273 lambda!340179)))

(declare-fun bs!1543377 () Bool)

(assert (= bs!1543377 (and d!1951149 d!1950875)))

(assert (=> bs!1543377 (= lambda!340273 lambda!340226)))

(declare-fun bs!1543378 () Bool)

(assert (= bs!1543378 (and d!1951149 b!6224043)))

(assert (=> bs!1543378 (not (= lambda!340273 lambda!340263))))

(declare-fun bs!1543379 () Bool)

(assert (= bs!1543379 (and d!1951149 d!1951031)))

(assert (=> bs!1543379 (= lambda!340273 lambda!340257)))

(declare-fun bs!1543380 () Bool)

(assert (= bs!1543380 (and d!1951149 b!6223775)))

(assert (=> bs!1543380 (not (= lambda!340273 lambda!340243))))

(declare-fun bs!1543381 () Bool)

(assert (= bs!1543381 (and d!1951149 b!6224221)))

(assert (=> bs!1543381 (not (= lambda!340273 lambda!340268))))

(declare-fun bs!1543382 () Bool)

(assert (= bs!1543382 (and d!1951149 b!6224225)))

(assert (=> bs!1543382 (not (= lambda!340273 lambda!340267))))

(declare-fun bs!1543383 () Bool)

(assert (= bs!1543383 (and d!1951149 b!6223771)))

(assert (=> bs!1543383 (not (= lambda!340273 lambda!340244))))

(declare-fun bs!1543384 () Bool)

(assert (= bs!1543384 (and d!1951149 d!1950871)))

(assert (=> bs!1543384 (not (= lambda!340273 lambda!340223))))

(assert (=> bs!1543384 (= lambda!340273 lambda!340222)))

(assert (=> bs!1543376 (not (= lambda!340273 lambda!340180))))

(assert (=> d!1951149 true))

(assert (=> d!1951149 true))

(assert (=> d!1951149 true))

(declare-fun lambda!340274 () Int)

(assert (=> bs!1543375 (not (= lambda!340274 lambda!340262))))

(assert (=> bs!1543376 (not (= lambda!340274 lambda!340179))))

(assert (=> bs!1543377 (not (= lambda!340274 lambda!340226))))

(declare-fun bs!1543385 () Bool)

(assert (= bs!1543385 d!1951149))

(assert (=> bs!1543385 (not (= lambda!340274 lambda!340273))))

(assert (=> bs!1543378 (= (and (= (regOne!32830 r!7292) (regOne!32830 (regOne!32831 r!7292))) (= (regTwo!32830 r!7292) (regTwo!32830 (regOne!32831 r!7292)))) (= lambda!340274 lambda!340263))))

(assert (=> bs!1543379 (not (= lambda!340274 lambda!340257))))

(assert (=> bs!1543380 (not (= lambda!340274 lambda!340243))))

(assert (=> bs!1543381 (= (and (= (regOne!32830 r!7292) (regOne!32830 (regTwo!32831 r!7292))) (= (regTwo!32830 r!7292) (regTwo!32830 (regTwo!32831 r!7292)))) (= lambda!340274 lambda!340268))))

(assert (=> bs!1543382 (not (= lambda!340274 lambda!340267))))

(assert (=> bs!1543383 (= lambda!340274 lambda!340244)))

(assert (=> bs!1543384 (= lambda!340274 lambda!340223)))

(assert (=> bs!1543384 (not (= lambda!340274 lambda!340222))))

(assert (=> bs!1543376 (= lambda!340274 lambda!340180)))

(assert (=> d!1951149 true))

(assert (=> d!1951149 true))

(assert (=> d!1951149 true))

(assert (=> d!1951149 (= (Exists!3229 lambda!340273) (Exists!3229 lambda!340274))))

(assert (=> d!1951149 true))

(declare-fun _$90!2022 () Unit!157967)

(assert (=> d!1951149 (= (choose!46250 (regOne!32830 r!7292) (regTwo!32830 r!7292) s!2326) _$90!2022)))

(declare-fun m!7051548 () Bool)

(assert (=> bs!1543385 m!7051548))

(declare-fun m!7051550 () Bool)

(assert (=> bs!1543385 m!7051550))

(assert (=> d!1950871 d!1951149))

(assert (=> d!1950871 d!1951027))

(declare-fun bm!522704 () Bool)

(declare-fun call!522712 () (InoxSet Context!11086))

(declare-fun call!522710 () (InoxSet Context!11086))

(assert (=> bm!522704 (= call!522712 call!522710)))

(declare-fun b!6224305 () Bool)

(declare-fun e!3788711 () (InoxSet Context!11086))

(assert (=> b!6224305 (= e!3788711 call!522712)))

(declare-fun b!6224306 () Bool)

(declare-fun c!1124859 () Bool)

(declare-fun e!3788710 () Bool)

(assert (=> b!6224306 (= c!1124859 e!3788710)))

(declare-fun res!2572363 () Bool)

(assert (=> b!6224306 (=> (not res!2572363) (not e!3788710))))

(assert (=> b!6224306 (= res!2572363 ((_ is Concat!25004) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun e!3788712 () (InoxSet Context!11086))

(declare-fun e!3788709 () (InoxSet Context!11086))

(assert (=> b!6224306 (= e!3788712 e!3788709)))

(declare-fun b!6224307 () Bool)

(declare-fun e!3788713 () (InoxSet Context!11086))

(assert (=> b!6224307 (= e!3788713 call!522712)))

(declare-fun b!6224308 () Bool)

(declare-fun e!3788714 () (InoxSet Context!11086))

(assert (=> b!6224308 (= e!3788714 (store ((as const (Array Context!11086 Bool)) false) (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))) true))))

(declare-fun bm!522705 () Bool)

(declare-fun call!522714 () (InoxSet Context!11086))

(assert (=> bm!522705 (= call!522710 call!522714)))

(declare-fun call!522709 () List!64776)

(declare-fun c!1124863 () Bool)

(declare-fun bm!522706 () Bool)

(declare-fun c!1124860 () Bool)

(assert (=> bm!522706 (= call!522714 (derivationStepZipperDown!1407 (ite c!1124863 (regTwo!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124859 (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (ite c!1124860 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (reg!16488 (h!71100 (exprs!6043 (h!71102 zl!343))))))) (ite (or c!1124863 c!1124859) (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))) (Context!11087 call!522709)) (h!71101 s!2326)))))

(declare-fun b!6224309 () Bool)

(declare-fun call!522713 () (InoxSet Context!11086))

(assert (=> b!6224309 (= e!3788712 ((_ map or) call!522713 call!522714))))

(declare-fun d!1951163 () Bool)

(declare-fun c!1124861 () Bool)

(assert (=> d!1951163 (= c!1124861 (and ((_ is ElementMatch!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))) (= (c!1124503 (h!71100 (exprs!6043 (h!71102 zl!343)))) (h!71101 s!2326))))))

(assert (=> d!1951163 (= (derivationStepZipperDown!1407 (h!71100 (exprs!6043 (h!71102 zl!343))) (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))) (h!71101 s!2326)) e!3788714)))

(declare-fun bm!522707 () Bool)

(declare-fun call!522711 () List!64776)

(assert (=> bm!522707 (= call!522713 (derivationStepZipperDown!1407 (ite c!1124863 (regOne!32831 (h!71100 (exprs!6043 (h!71102 zl!343)))) (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))) (ite c!1124863 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343)))) (Context!11087 call!522711)) (h!71101 s!2326)))))

(declare-fun bm!522708 () Bool)

(assert (=> bm!522708 (= call!522709 call!522711)))

(declare-fun bm!522709 () Bool)

(assert (=> bm!522709 (= call!522711 ($colon$colon!2028 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 (h!71102 zl!343))))) (ite (or c!1124859 c!1124860) (regTwo!32830 (h!71100 (exprs!6043 (h!71102 zl!343)))) (h!71100 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun b!6224310 () Bool)

(declare-fun c!1124862 () Bool)

(assert (=> b!6224310 (= c!1124862 ((_ is Star!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(assert (=> b!6224310 (= e!3788711 e!3788713)))

(declare-fun b!6224311 () Bool)

(assert (=> b!6224311 (= e!3788714 e!3788712)))

(assert (=> b!6224311 (= c!1124863 ((_ is Union!16159) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6224312 () Bool)

(assert (=> b!6224312 (= e!3788710 (nullable!6152 (regOne!32830 (h!71100 (exprs!6043 (h!71102 zl!343))))))))

(declare-fun b!6224313 () Bool)

(assert (=> b!6224313 (= e!3788713 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6224314 () Bool)

(assert (=> b!6224314 (= e!3788709 e!3788711)))

(assert (=> b!6224314 (= c!1124860 ((_ is Concat!25004) (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6224315 () Bool)

(assert (=> b!6224315 (= e!3788709 ((_ map or) call!522713 call!522710))))

(assert (= (and d!1951163 c!1124861) b!6224308))

(assert (= (and d!1951163 (not c!1124861)) b!6224311))

(assert (= (and b!6224311 c!1124863) b!6224309))

(assert (= (and b!6224311 (not c!1124863)) b!6224306))

(assert (= (and b!6224306 res!2572363) b!6224312))

(assert (= (and b!6224306 c!1124859) b!6224315))

(assert (= (and b!6224306 (not c!1124859)) b!6224314))

(assert (= (and b!6224314 c!1124860) b!6224305))

(assert (= (and b!6224314 (not c!1124860)) b!6224310))

(assert (= (and b!6224310 c!1124862) b!6224307))

(assert (= (and b!6224310 (not c!1124862)) b!6224313))

(assert (= (or b!6224305 b!6224307) bm!522708))

(assert (= (or b!6224305 b!6224307) bm!522704))

(assert (= (or b!6224315 bm!522708) bm!522709))

(assert (= (or b!6224315 bm!522704) bm!522705))

(assert (= (or b!6224309 bm!522705) bm!522706))

(assert (= (or b!6224309 b!6224315) bm!522707))

(assert (=> b!6224312 m!7051042))

(declare-fun m!7051556 () Bool)

(assert (=> bm!522707 m!7051556))

(declare-fun m!7051560 () Bool)

(assert (=> bm!522709 m!7051560))

(declare-fun m!7051562 () Bool)

(assert (=> bm!522706 m!7051562))

(declare-fun m!7051566 () Bool)

(assert (=> b!6224308 m!7051566))

(assert (=> bm!522573 d!1951163))

(declare-fun b!6224316 () Bool)

(declare-fun e!3788720 () Bool)

(assert (=> b!6224316 (= e!3788720 (= (head!12826 s!2326) (c!1124503 (regTwo!32830 r!7292))))))

(declare-fun bm!522710 () Bool)

(declare-fun call!522715 () Bool)

(assert (=> bm!522710 (= call!522715 (isEmpty!36666 s!2326))))

(declare-fun b!6224317 () Bool)

(declare-fun res!2572366 () Bool)

(declare-fun e!3788719 () Bool)

(assert (=> b!6224317 (=> res!2572366 e!3788719)))

(assert (=> b!6224317 (= res!2572366 e!3788720)))

(declare-fun res!2572369 () Bool)

(assert (=> b!6224317 (=> (not res!2572369) (not e!3788720))))

(declare-fun lt!2345354 () Bool)

(assert (=> b!6224317 (= res!2572369 lt!2345354)))

(declare-fun b!6224318 () Bool)

(declare-fun e!3788717 () Bool)

(declare-fun e!3788715 () Bool)

(assert (=> b!6224318 (= e!3788717 e!3788715)))

(declare-fun c!1124864 () Bool)

(assert (=> b!6224318 (= c!1124864 ((_ is EmptyLang!16159) (regTwo!32830 r!7292)))))

(declare-fun b!6224319 () Bool)

(declare-fun res!2572368 () Bool)

(assert (=> b!6224319 (=> (not res!2572368) (not e!3788720))))

(assert (=> b!6224319 (= res!2572368 (not call!522715))))

(declare-fun b!6224320 () Bool)

(assert (=> b!6224320 (= e!3788715 (not lt!2345354))))

(declare-fun d!1951165 () Bool)

(assert (=> d!1951165 e!3788717))

(declare-fun c!1124866 () Bool)

(assert (=> d!1951165 (= c!1124866 ((_ is EmptyExpr!16159) (regTwo!32830 r!7292)))))

(declare-fun e!3788718 () Bool)

(assert (=> d!1951165 (= lt!2345354 e!3788718)))

(declare-fun c!1124865 () Bool)

(assert (=> d!1951165 (= c!1124865 (isEmpty!36666 s!2326))))

(assert (=> d!1951165 (validRegex!7895 (regTwo!32830 r!7292))))

(assert (=> d!1951165 (= (matchR!8342 (regTwo!32830 r!7292) s!2326) lt!2345354)))

(declare-fun b!6224321 () Bool)

(declare-fun e!3788716 () Bool)

(assert (=> b!6224321 (= e!3788719 e!3788716)))

(declare-fun res!2572371 () Bool)

(assert (=> b!6224321 (=> (not res!2572371) (not e!3788716))))

(assert (=> b!6224321 (= res!2572371 (not lt!2345354))))

(declare-fun b!6224322 () Bool)

(assert (=> b!6224322 (= e!3788717 (= lt!2345354 call!522715))))

(declare-fun b!6224323 () Bool)

(declare-fun e!3788721 () Bool)

(assert (=> b!6224323 (= e!3788716 e!3788721)))

(declare-fun res!2572367 () Bool)

(assert (=> b!6224323 (=> res!2572367 e!3788721)))

(assert (=> b!6224323 (= res!2572367 call!522715)))

(declare-fun b!6224324 () Bool)

(declare-fun res!2572365 () Bool)

(assert (=> b!6224324 (=> res!2572365 e!3788719)))

(assert (=> b!6224324 (= res!2572365 (not ((_ is ElementMatch!16159) (regTwo!32830 r!7292))))))

(assert (=> b!6224324 (= e!3788715 e!3788719)))

(declare-fun b!6224325 () Bool)

(assert (=> b!6224325 (= e!3788721 (not (= (head!12826 s!2326) (c!1124503 (regTwo!32830 r!7292)))))))

(declare-fun b!6224326 () Bool)

(declare-fun res!2572370 () Bool)

(assert (=> b!6224326 (=> res!2572370 e!3788721)))

(assert (=> b!6224326 (= res!2572370 (not (isEmpty!36666 (tail!11911 s!2326))))))

(declare-fun b!6224327 () Bool)

(assert (=> b!6224327 (= e!3788718 (matchR!8342 (derivativeStep!4872 (regTwo!32830 r!7292) (head!12826 s!2326)) (tail!11911 s!2326)))))

(declare-fun b!6224328 () Bool)

(assert (=> b!6224328 (= e!3788718 (nullable!6152 (regTwo!32830 r!7292)))))

(declare-fun b!6224329 () Bool)

(declare-fun res!2572364 () Bool)

(assert (=> b!6224329 (=> (not res!2572364) (not e!3788720))))

(assert (=> b!6224329 (= res!2572364 (isEmpty!36666 (tail!11911 s!2326)))))

(assert (= (and d!1951165 c!1124865) b!6224328))

(assert (= (and d!1951165 (not c!1124865)) b!6224327))

(assert (= (and d!1951165 c!1124866) b!6224322))

(assert (= (and d!1951165 (not c!1124866)) b!6224318))

(assert (= (and b!6224318 c!1124864) b!6224320))

(assert (= (and b!6224318 (not c!1124864)) b!6224324))

(assert (= (and b!6224324 (not res!2572365)) b!6224317))

(assert (= (and b!6224317 res!2572369) b!6224319))

(assert (= (and b!6224319 res!2572368) b!6224329))

(assert (= (and b!6224329 res!2572364) b!6224316))

(assert (= (and b!6224317 (not res!2572366)) b!6224321))

(assert (= (and b!6224321 res!2572371) b!6224323))

(assert (= (and b!6224323 (not res!2572367)) b!6224326))

(assert (= (and b!6224326 (not res!2572370)) b!6224325))

(assert (= (or b!6224322 b!6224319 b!6224323) bm!522710))

(assert (=> b!6224327 m!7051098))

(assert (=> b!6224327 m!7051098))

(declare-fun m!7051570 () Bool)

(assert (=> b!6224327 m!7051570))

(assert (=> b!6224327 m!7051102))

(assert (=> b!6224327 m!7051570))

(assert (=> b!6224327 m!7051102))

(declare-fun m!7051572 () Bool)

(assert (=> b!6224327 m!7051572))

(assert (=> bm!522710 m!7051092))

(assert (=> b!6224328 m!7051326))

(assert (=> b!6224325 m!7051098))

(assert (=> b!6224329 m!7051102))

(assert (=> b!6224329 m!7051102))

(assert (=> b!6224329 m!7051108))

(assert (=> b!6224316 m!7051098))

(assert (=> d!1951165 m!7051092))

(assert (=> d!1951165 m!7051330))

(assert (=> b!6224326 m!7051102))

(assert (=> b!6224326 m!7051102))

(assert (=> b!6224326 m!7051108))

(assert (=> b!6223546 d!1951165))

(declare-fun bm!522711 () Bool)

(declare-fun call!522719 () (InoxSet Context!11086))

(declare-fun call!522717 () (InoxSet Context!11086))

(assert (=> bm!522711 (= call!522719 call!522717)))

(declare-fun b!6224330 () Bool)

(declare-fun e!3788724 () (InoxSet Context!11086))

(assert (=> b!6224330 (= e!3788724 call!522719)))

(declare-fun b!6224331 () Bool)

(declare-fun c!1124867 () Bool)

(declare-fun e!3788723 () Bool)

(assert (=> b!6224331 (= c!1124867 e!3788723)))

(declare-fun res!2572372 () Bool)

(assert (=> b!6224331 (=> (not res!2572372) (not e!3788723))))

(assert (=> b!6224331 (= res!2572372 ((_ is Concat!25004) (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))))))

(declare-fun e!3788725 () (InoxSet Context!11086))

(declare-fun e!3788722 () (InoxSet Context!11086))

(assert (=> b!6224331 (= e!3788725 e!3788722)))

(declare-fun b!6224332 () Bool)

(declare-fun e!3788726 () (InoxSet Context!11086))

(assert (=> b!6224332 (= e!3788726 call!522719)))

(declare-fun e!3788727 () (InoxSet Context!11086))

(declare-fun b!6224333 () Bool)

(assert (=> b!6224333 (= e!3788727 (store ((as const (Array Context!11086 Bool)) false) (ite (or c!1124648 c!1124644) lt!2345243 (Context!11087 call!522558)) true))))

(declare-fun bm!522712 () Bool)

(declare-fun call!522721 () (InoxSet Context!11086))

(assert (=> bm!522712 (= call!522717 call!522721)))

(declare-fun bm!522713 () Bool)

(declare-fun c!1124868 () Bool)

(declare-fun c!1124871 () Bool)

(declare-fun call!522716 () List!64776)

(assert (=> bm!522713 (= call!522721 (derivationStepZipperDown!1407 (ite c!1124871 (regTwo!32831 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))) (ite c!1124867 (regTwo!32830 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))) (ite c!1124868 (regOne!32830 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))) (reg!16488 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292)))))))))) (ite (or c!1124871 c!1124867) (ite (or c!1124648 c!1124644) lt!2345243 (Context!11087 call!522558)) (Context!11087 call!522716)) (h!71101 s!2326)))))

(declare-fun b!6224334 () Bool)

(declare-fun call!522720 () (InoxSet Context!11086))

(assert (=> b!6224334 (= e!3788725 ((_ map or) call!522720 call!522721))))

(declare-fun d!1951169 () Bool)

(declare-fun c!1124869 () Bool)

(assert (=> d!1951169 (= c!1124869 (and ((_ is ElementMatch!16159) (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))) (= (c!1124503 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))) (h!71101 s!2326))))))

(assert (=> d!1951169 (= (derivationStepZipperDown!1407 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292)))))) (ite (or c!1124648 c!1124644) lt!2345243 (Context!11087 call!522558)) (h!71101 s!2326)) e!3788727)))

(declare-fun bm!522714 () Bool)

(declare-fun call!522718 () List!64776)

(assert (=> bm!522714 (= call!522720 (derivationStepZipperDown!1407 (ite c!1124871 (regOne!32831 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))) (regOne!32830 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292)))))))) (ite c!1124871 (ite (or c!1124648 c!1124644) lt!2345243 (Context!11087 call!522558)) (Context!11087 call!522718)) (h!71101 s!2326)))))

(declare-fun bm!522715 () Bool)

(assert (=> bm!522715 (= call!522716 call!522718)))

(declare-fun bm!522716 () Bool)

(assert (=> bm!522716 (= call!522718 ($colon$colon!2028 (exprs!6043 (ite (or c!1124648 c!1124644) lt!2345243 (Context!11087 call!522558))) (ite (or c!1124867 c!1124868) (regTwo!32830 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))) (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292)))))))))))

(declare-fun b!6224335 () Bool)

(declare-fun c!1124870 () Bool)

(assert (=> b!6224335 (= c!1124870 ((_ is Star!16159) (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))))))

(assert (=> b!6224335 (= e!3788724 e!3788726)))

(declare-fun b!6224336 () Bool)

(assert (=> b!6224336 (= e!3788727 e!3788725)))

(assert (=> b!6224336 (= c!1124871 ((_ is Union!16159) (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))))))

(declare-fun b!6224337 () Bool)

(assert (=> b!6224337 (= e!3788723 (nullable!6152 (regOne!32830 (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292)))))))))))

(declare-fun b!6224338 () Bool)

(assert (=> b!6224338 (= e!3788726 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6224339 () Bool)

(assert (=> b!6224339 (= e!3788722 e!3788724)))

(assert (=> b!6224339 (= c!1124868 ((_ is Concat!25004) (ite c!1124648 (regTwo!32831 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124644 (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (ite c!1124645 (regOne!32830 (regTwo!32830 (regOne!32830 r!7292))) (reg!16488 (regTwo!32830 (regOne!32830 r!7292))))))))))

(declare-fun b!6224340 () Bool)

(assert (=> b!6224340 (= e!3788722 ((_ map or) call!522720 call!522717))))

(assert (= (and d!1951169 c!1124869) b!6224333))

(assert (= (and d!1951169 (not c!1124869)) b!6224336))

(assert (= (and b!6224336 c!1124871) b!6224334))

(assert (= (and b!6224336 (not c!1124871)) b!6224331))

(assert (= (and b!6224331 res!2572372) b!6224337))

(assert (= (and b!6224331 c!1124867) b!6224340))

(assert (= (and b!6224331 (not c!1124867)) b!6224339))

(assert (= (and b!6224339 c!1124868) b!6224330))

(assert (= (and b!6224339 (not c!1124868)) b!6224335))

(assert (= (and b!6224335 c!1124870) b!6224332))

(assert (= (and b!6224335 (not c!1124870)) b!6224338))

(assert (= (or b!6224330 b!6224332) bm!522715))

(assert (= (or b!6224330 b!6224332) bm!522711))

(assert (= (or b!6224340 bm!522715) bm!522716))

(assert (= (or b!6224340 bm!522711) bm!522712))

(assert (= (or b!6224334 bm!522712) bm!522713))

(assert (= (or b!6224334 b!6224340) bm!522714))

(declare-fun m!7051574 () Bool)

(assert (=> b!6224337 m!7051574))

(declare-fun m!7051576 () Bool)

(assert (=> bm!522714 m!7051576))

(declare-fun m!7051578 () Bool)

(assert (=> bm!522716 m!7051578))

(declare-fun m!7051580 () Bool)

(assert (=> bm!522713 m!7051580))

(declare-fun m!7051582 () Bool)

(assert (=> b!6224333 m!7051582))

(assert (=> bm!522555 d!1951169))

(declare-fun d!1951173 () Bool)

(assert (=> d!1951173 true))

(declare-fun setRes!42288 () Bool)

(assert (=> d!1951173 setRes!42288))

(declare-fun condSetEmpty!42288 () Bool)

(declare-fun res!2572373 () (InoxSet Context!11086))

(assert (=> d!1951173 (= condSetEmpty!42288 (= res!2572373 ((as const (Array Context!11086 Bool)) false)))))

(assert (=> d!1951173 (= (choose!46252 z!1189 lambda!340181) res!2572373)))

(declare-fun setIsEmpty!42288 () Bool)

(assert (=> setIsEmpty!42288 setRes!42288))

(declare-fun tp!1736076 () Bool)

(declare-fun setElem!42288 () Context!11086)

(declare-fun setNonEmpty!42288 () Bool)

(declare-fun e!3788728 () Bool)

(assert (=> setNonEmpty!42288 (= setRes!42288 (and tp!1736076 (inv!83644 setElem!42288) e!3788728))))

(declare-fun setRest!42288 () (InoxSet Context!11086))

(assert (=> setNonEmpty!42288 (= res!2572373 ((_ map or) (store ((as const (Array Context!11086 Bool)) false) setElem!42288 true) setRest!42288))))

(declare-fun b!6224341 () Bool)

(declare-fun tp!1736075 () Bool)

(assert (=> b!6224341 (= e!3788728 tp!1736075)))

(assert (= (and d!1951173 condSetEmpty!42288) setIsEmpty!42288))

(assert (= (and d!1951173 (not condSetEmpty!42288)) setNonEmpty!42288))

(assert (= setNonEmpty!42288 b!6224341))

(declare-fun m!7051584 () Bool)

(assert (=> setNonEmpty!42288 m!7051584))

(assert (=> d!1950921 d!1951173))

(assert (=> b!6223660 d!1950907))

(declare-fun bs!1543387 () Bool)

(declare-fun d!1951175 () Bool)

(assert (= bs!1543387 (and d!1951175 d!1950971)))

(declare-fun lambda!340275 () Int)

(assert (=> bs!1543387 (= lambda!340275 lambda!340247)))

(declare-fun bs!1543388 () Bool)

(assert (= bs!1543388 (and d!1951175 d!1950947)))

(assert (=> bs!1543388 (= lambda!340275 lambda!340245)))

(declare-fun bs!1543389 () Bool)

(assert (= bs!1543389 (and d!1951175 d!1951005)))

(assert (=> bs!1543389 (= lambda!340275 lambda!340250)))

(declare-fun bs!1543390 () Bool)

(assert (= bs!1543390 (and d!1951175 d!1950907)))

(assert (=> bs!1543390 (= lambda!340275 lambda!340238)))

(declare-fun bs!1543391 () Bool)

(assert (= bs!1543391 (and d!1951175 d!1950865)))

(assert (=> bs!1543391 (= lambda!340275 lambda!340217)))

(declare-fun bs!1543392 () Bool)

(assert (= bs!1543392 (and d!1951175 d!1950893)))

(assert (=> bs!1543392 (= lambda!340275 lambda!340232)))

(declare-fun bs!1543393 () Bool)

(assert (= bs!1543393 (and d!1951175 d!1950891)))

(assert (=> bs!1543393 (= lambda!340275 lambda!340229)))

(declare-fun bs!1543394 () Bool)

(assert (= bs!1543394 (and d!1951175 d!1951103)))

(assert (=> bs!1543394 (= lambda!340275 lambda!340266)))

(declare-fun bs!1543395 () Bool)

(assert (= bs!1543395 (and d!1951175 d!1950863)))

(assert (=> bs!1543395 (= lambda!340275 lambda!340216)))

(declare-fun lt!2345355 () List!64776)

(assert (=> d!1951175 (forall!15273 lt!2345355 lambda!340275)))

(declare-fun e!3788729 () List!64776)

(assert (=> d!1951175 (= lt!2345355 e!3788729)))

(declare-fun c!1124872 () Bool)

(assert (=> d!1951175 (= c!1124872 ((_ is Cons!64654) (t!378312 zl!343)))))

(assert (=> d!1951175 (= (unfocusZipperList!1580 (t!378312 zl!343)) lt!2345355)))

(declare-fun b!6224342 () Bool)

(assert (=> b!6224342 (= e!3788729 (Cons!64652 (generalisedConcat!1756 (exprs!6043 (h!71102 (t!378312 zl!343)))) (unfocusZipperList!1580 (t!378312 (t!378312 zl!343)))))))

(declare-fun b!6224343 () Bool)

(assert (=> b!6224343 (= e!3788729 Nil!64652)))

(assert (= (and d!1951175 c!1124872) b!6224342))

(assert (= (and d!1951175 (not c!1124872)) b!6224343))

(declare-fun m!7051586 () Bool)

(assert (=> d!1951175 m!7051586))

(declare-fun m!7051588 () Bool)

(assert (=> b!6224342 m!7051588))

(declare-fun m!7051590 () Bool)

(assert (=> b!6224342 m!7051590))

(assert (=> b!6223660 d!1951175))

(declare-fun d!1951177 () Bool)

(declare-fun res!2572374 () Bool)

(declare-fun e!3788730 () Bool)

(assert (=> d!1951177 (=> res!2572374 e!3788730)))

(assert (=> d!1951177 (= res!2572374 ((_ is Nil!64652) lt!2345323))))

(assert (=> d!1951177 (= (forall!15273 lt!2345323 lambda!340232) e!3788730)))

(declare-fun b!6224344 () Bool)

(declare-fun e!3788731 () Bool)

(assert (=> b!6224344 (= e!3788730 e!3788731)))

(declare-fun res!2572375 () Bool)

(assert (=> b!6224344 (=> (not res!2572375) (not e!3788731))))

(assert (=> b!6224344 (= res!2572375 (dynLambda!25512 lambda!340232 (h!71100 lt!2345323)))))

(declare-fun b!6224345 () Bool)

(assert (=> b!6224345 (= e!3788731 (forall!15273 (t!378310 lt!2345323) lambda!340232))))

(assert (= (and d!1951177 (not res!2572374)) b!6224344))

(assert (= (and b!6224344 res!2572375) b!6224345))

(declare-fun b_lambda!236637 () Bool)

(assert (=> (not b_lambda!236637) (not b!6224344)))

(declare-fun m!7051592 () Bool)

(assert (=> b!6224344 m!7051592))

(declare-fun m!7051594 () Bool)

(assert (=> b!6224345 m!7051594))

(assert (=> d!1950893 d!1951177))

(declare-fun b!6224346 () Bool)

(declare-fun e!3788738 () Bool)

(declare-fun e!3788732 () Bool)

(assert (=> b!6224346 (= e!3788738 e!3788732)))

(declare-fun c!1124873 () Bool)

(assert (=> b!6224346 (= c!1124873 ((_ is Star!16159) lt!2345330))))

(declare-fun bm!522717 () Bool)

(declare-fun call!522723 () Bool)

(declare-fun call!522724 () Bool)

(assert (=> bm!522717 (= call!522723 call!522724)))

(declare-fun b!6224347 () Bool)

(declare-fun e!3788733 () Bool)

(assert (=> b!6224347 (= e!3788733 call!522723)))

(declare-fun b!6224348 () Bool)

(declare-fun e!3788736 () Bool)

(assert (=> b!6224348 (= e!3788736 call!522724)))

(declare-fun b!6224350 () Bool)

(declare-fun e!3788735 () Bool)

(assert (=> b!6224350 (= e!3788735 call!522723)))

(declare-fun b!6224351 () Bool)

(declare-fun e!3788734 () Bool)

(assert (=> b!6224351 (= e!3788732 e!3788734)))

(declare-fun c!1124876 () Bool)

(assert (=> b!6224351 (= c!1124876 ((_ is Union!16159) lt!2345330))))

(declare-fun b!6224352 () Bool)

(assert (=> b!6224352 (= e!3788732 e!3788736)))

(declare-fun res!2572378 () Bool)

(assert (=> b!6224352 (= res!2572378 (not (nullable!6152 (reg!16488 lt!2345330))))))

(assert (=> b!6224352 (=> (not res!2572378) (not e!3788736))))

(declare-fun bm!522718 () Bool)

(declare-fun call!522722 () Bool)

(assert (=> bm!522718 (= call!522722 (validRegex!7895 (ite c!1124876 (regOne!32831 lt!2345330) (regOne!32830 lt!2345330))))))

(declare-fun bm!522719 () Bool)

(assert (=> bm!522719 (= call!522724 (validRegex!7895 (ite c!1124873 (reg!16488 lt!2345330) (ite c!1124876 (regTwo!32831 lt!2345330) (regTwo!32830 lt!2345330)))))))

(declare-fun b!6224353 () Bool)

(declare-fun e!3788737 () Bool)

(assert (=> b!6224353 (= e!3788737 e!3788735)))

(declare-fun res!2572380 () Bool)

(assert (=> b!6224353 (=> (not res!2572380) (not e!3788735))))

(assert (=> b!6224353 (= res!2572380 call!522722)))

(declare-fun b!6224354 () Bool)

(declare-fun res!2572379 () Bool)

(assert (=> b!6224354 (=> (not res!2572379) (not e!3788733))))

(assert (=> b!6224354 (= res!2572379 call!522722)))

(assert (=> b!6224354 (= e!3788734 e!3788733)))

(declare-fun d!1951179 () Bool)

(declare-fun res!2572376 () Bool)

(assert (=> d!1951179 (=> res!2572376 e!3788738)))

(assert (=> d!1951179 (= res!2572376 ((_ is ElementMatch!16159) lt!2345330))))

(assert (=> d!1951179 (= (validRegex!7895 lt!2345330) e!3788738)))

(declare-fun b!6224349 () Bool)

(declare-fun res!2572377 () Bool)

(assert (=> b!6224349 (=> res!2572377 e!3788737)))

(assert (=> b!6224349 (= res!2572377 (not ((_ is Concat!25004) lt!2345330)))))

(assert (=> b!6224349 (= e!3788734 e!3788737)))

(assert (= (and d!1951179 (not res!2572376)) b!6224346))

(assert (= (and b!6224346 c!1124873) b!6224352))

(assert (= (and b!6224346 (not c!1124873)) b!6224351))

(assert (= (and b!6224352 res!2572378) b!6224348))

(assert (= (and b!6224351 c!1124876) b!6224354))

(assert (= (and b!6224351 (not c!1124876)) b!6224349))

(assert (= (and b!6224354 res!2572379) b!6224347))

(assert (= (and b!6224349 (not res!2572377)) b!6224353))

(assert (= (and b!6224353 res!2572380) b!6224350))

(assert (= (or b!6224347 b!6224350) bm!522717))

(assert (= (or b!6224354 b!6224353) bm!522718))

(assert (= (or b!6224348 bm!522717) bm!522719))

(declare-fun m!7051596 () Bool)

(assert (=> b!6224352 m!7051596))

(declare-fun m!7051598 () Bool)

(assert (=> bm!522718 m!7051598))

(declare-fun m!7051600 () Bool)

(assert (=> bm!522719 m!7051600))

(assert (=> d!1950909 d!1951179))

(assert (=> d!1950909 d!1950891))

(assert (=> d!1950909 d!1950893))

(declare-fun b!6224355 () Bool)

(declare-fun e!3788745 () Bool)

(declare-fun e!3788739 () Bool)

(assert (=> b!6224355 (= e!3788745 e!3788739)))

(declare-fun c!1124877 () Bool)

(assert (=> b!6224355 (= c!1124877 ((_ is Star!16159) (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))))))

(declare-fun bm!522720 () Bool)

(declare-fun call!522726 () Bool)

(declare-fun call!522727 () Bool)

(assert (=> bm!522720 (= call!522726 call!522727)))

(declare-fun b!6224356 () Bool)

(declare-fun e!3788740 () Bool)

(assert (=> b!6224356 (= e!3788740 call!522726)))

(declare-fun b!6224357 () Bool)

(declare-fun e!3788743 () Bool)

(assert (=> b!6224357 (= e!3788743 call!522727)))

(declare-fun b!6224359 () Bool)

(declare-fun e!3788742 () Bool)

(assert (=> b!6224359 (= e!3788742 call!522726)))

(declare-fun b!6224360 () Bool)

(declare-fun e!3788741 () Bool)

(assert (=> b!6224360 (= e!3788739 e!3788741)))

(declare-fun c!1124878 () Bool)

(assert (=> b!6224360 (= c!1124878 ((_ is Union!16159) (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))))))

(declare-fun b!6224361 () Bool)

(assert (=> b!6224361 (= e!3788739 e!3788743)))

(declare-fun res!2572383 () Bool)

(assert (=> b!6224361 (= res!2572383 (not (nullable!6152 (reg!16488 (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))))))))

(assert (=> b!6224361 (=> (not res!2572383) (not e!3788743))))

(declare-fun call!522725 () Bool)

(declare-fun bm!522721 () Bool)

(assert (=> bm!522721 (= call!522725 (validRegex!7895 (ite c!1124878 (regOne!32831 (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))) (regOne!32830 (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))))))))

(declare-fun bm!522722 () Bool)

(assert (=> bm!522722 (= call!522727 (validRegex!7895 (ite c!1124877 (reg!16488 (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))) (ite c!1124878 (regTwo!32831 (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))) (regTwo!32830 (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292)))))))))

(declare-fun b!6224362 () Bool)

(declare-fun e!3788744 () Bool)

(assert (=> b!6224362 (= e!3788744 e!3788742)))

(declare-fun res!2572385 () Bool)

(assert (=> b!6224362 (=> (not res!2572385) (not e!3788742))))

(assert (=> b!6224362 (= res!2572385 call!522725)))

(declare-fun b!6224363 () Bool)

(declare-fun res!2572384 () Bool)

(assert (=> b!6224363 (=> (not res!2572384) (not e!3788740))))

(assert (=> b!6224363 (= res!2572384 call!522725)))

(assert (=> b!6224363 (= e!3788741 e!3788740)))

(declare-fun d!1951181 () Bool)

(declare-fun res!2572381 () Bool)

(assert (=> d!1951181 (=> res!2572381 e!3788745)))

(assert (=> d!1951181 (= res!2572381 ((_ is ElementMatch!16159) (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))))))

(assert (=> d!1951181 (= (validRegex!7895 (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292))) e!3788745)))

(declare-fun b!6224358 () Bool)

(declare-fun res!2572382 () Bool)

(assert (=> b!6224358 (=> res!2572382 e!3788744)))

(assert (=> b!6224358 (= res!2572382 (not ((_ is Concat!25004) (ite c!1124621 (regOne!32831 r!7292) (regOne!32830 r!7292)))))))

(assert (=> b!6224358 (= e!3788741 e!3788744)))

(assert (= (and d!1951181 (not res!2572381)) b!6224355))

(assert (= (and b!6224355 c!1124877) b!6224361))

(assert (= (and b!6224355 (not c!1124877)) b!6224360))

(assert (= (and b!6224361 res!2572383) b!6224357))

(assert (= (and b!6224360 c!1124878) b!6224363))

(assert (= (and b!6224360 (not c!1124878)) b!6224358))

(assert (= (and b!6224363 res!2572384) b!6224356))

(assert (= (and b!6224358 (not res!2572382)) b!6224362))

(assert (= (and b!6224362 res!2572385) b!6224359))

(assert (= (or b!6224356 b!6224359) bm!522720))

(assert (= (or b!6224363 b!6224362) bm!522721))

(assert (= (or b!6224357 bm!522720) bm!522722))

(declare-fun m!7051602 () Bool)

(assert (=> b!6224361 m!7051602))

(declare-fun m!7051604 () Bool)

(assert (=> bm!522721 m!7051604))

(declare-fun m!7051606 () Bool)

(assert (=> bm!522722 m!7051606))

(assert (=> bm!522536 d!1951181))

(declare-fun d!1951183 () Bool)

(assert (=> d!1951183 true))

(assert (=> d!1951183 true))

(declare-fun res!2572386 () Bool)

(assert (=> d!1951183 (= (choose!46249 lambda!340179) res!2572386)))

(assert (=> d!1950869 d!1951183))

(declare-fun bs!1543396 () Bool)

(declare-fun d!1951185 () Bool)

(assert (= bs!1543396 (and d!1951185 d!1951015)))

(declare-fun lambda!340279 () Int)

(assert (=> bs!1543396 (= lambda!340279 lambda!340253)))

(declare-fun bs!1543398 () Bool)

(assert (= bs!1543398 (and d!1951185 d!1951055)))

(assert (=> bs!1543398 (= lambda!340279 lambda!340260)))

(declare-fun bs!1543399 () Bool)

(assert (= bs!1543399 (and d!1951185 d!1951063)))

(assert (=> bs!1543399 (= lambda!340279 lambda!340261)))

(declare-fun bs!1543400 () Bool)

(assert (= bs!1543400 (and d!1951185 d!1951083)))

(assert (=> bs!1543400 (= lambda!340279 lambda!340264)))

(declare-fun bs!1543401 () Bool)

(assert (= bs!1543401 (and d!1951185 d!1951053)))

(assert (=> bs!1543401 (= lambda!340279 lambda!340259)))

(assert (=> d!1951185 (= (nullableZipper!1933 lt!2345247) (exists!2492 lt!2345247 lambda!340279))))

(declare-fun bs!1543404 () Bool)

(assert (= bs!1543404 d!1951185))

(declare-fun m!7051612 () Bool)

(assert (=> bs!1543404 m!7051612))

(assert (=> b!6223499 d!1951185))

(declare-fun bs!1543405 () Bool)

(declare-fun d!1951193 () Bool)

(assert (= bs!1543405 (and d!1951193 d!1950971)))

(declare-fun lambda!340280 () Int)

(assert (=> bs!1543405 (= lambda!340280 lambda!340247)))

(declare-fun bs!1543406 () Bool)

(assert (= bs!1543406 (and d!1951193 d!1950947)))

(assert (=> bs!1543406 (= lambda!340280 lambda!340245)))

(declare-fun bs!1543407 () Bool)

(assert (= bs!1543407 (and d!1951193 d!1951005)))

(assert (=> bs!1543407 (= lambda!340280 lambda!340250)))

(declare-fun bs!1543408 () Bool)

(assert (= bs!1543408 (and d!1951193 d!1950907)))

(assert (=> bs!1543408 (= lambda!340280 lambda!340238)))

(declare-fun bs!1543409 () Bool)

(assert (= bs!1543409 (and d!1951193 d!1950865)))

(assert (=> bs!1543409 (= lambda!340280 lambda!340217)))

(declare-fun bs!1543410 () Bool)

(assert (= bs!1543410 (and d!1951193 d!1950893)))

(assert (=> bs!1543410 (= lambda!340280 lambda!340232)))

(declare-fun bs!1543411 () Bool)

(assert (= bs!1543411 (and d!1951193 d!1951175)))

(assert (=> bs!1543411 (= lambda!340280 lambda!340275)))

(declare-fun bs!1543412 () Bool)

(assert (= bs!1543412 (and d!1951193 d!1950891)))

(assert (=> bs!1543412 (= lambda!340280 lambda!340229)))

(declare-fun bs!1543413 () Bool)

(assert (= bs!1543413 (and d!1951193 d!1951103)))

(assert (=> bs!1543413 (= lambda!340280 lambda!340266)))

(declare-fun bs!1543414 () Bool)

(assert (= bs!1543414 (and d!1951193 d!1950863)))

(assert (=> bs!1543414 (= lambda!340280 lambda!340216)))

(declare-fun b!6224364 () Bool)

(declare-fun e!3788749 () Regex!16159)

(assert (=> b!6224364 (= e!3788749 EmptyLang!16159)))

(declare-fun b!6224365 () Bool)

(declare-fun e!3788751 () Bool)

(declare-fun e!3788748 () Bool)

(assert (=> b!6224365 (= e!3788751 e!3788748)))

(declare-fun c!1124879 () Bool)

(assert (=> b!6224365 (= c!1124879 (isEmpty!36663 (tail!11912 (t!378310 (unfocusZipperList!1580 zl!343)))))))

(declare-fun b!6224367 () Bool)

(declare-fun e!3788746 () Regex!16159)

(assert (=> b!6224367 (= e!3788746 (h!71100 (t!378310 (unfocusZipperList!1580 zl!343))))))

(declare-fun b!6224368 () Bool)

(declare-fun e!3788747 () Bool)

(assert (=> b!6224368 (= e!3788747 (isEmpty!36663 (t!378310 (t!378310 (unfocusZipperList!1580 zl!343)))))))

(declare-fun b!6224369 () Bool)

(declare-fun e!3788750 () Bool)

(assert (=> b!6224369 (= e!3788750 e!3788751)))

(declare-fun c!1124882 () Bool)

(assert (=> b!6224369 (= c!1124882 (isEmpty!36663 (t!378310 (unfocusZipperList!1580 zl!343))))))

(declare-fun b!6224370 () Bool)

(assert (=> b!6224370 (= e!3788746 e!3788749)))

(declare-fun c!1124881 () Bool)

(assert (=> b!6224370 (= c!1124881 ((_ is Cons!64652) (t!378310 (unfocusZipperList!1580 zl!343))))))

(declare-fun b!6224371 () Bool)

(declare-fun lt!2345356 () Regex!16159)

(assert (=> b!6224371 (= e!3788748 (isUnion!1008 lt!2345356))))

(declare-fun b!6224372 () Bool)

(assert (=> b!6224372 (= e!3788748 (= lt!2345356 (head!12827 (t!378310 (unfocusZipperList!1580 zl!343)))))))

(declare-fun b!6224373 () Bool)

(assert (=> b!6224373 (= e!3788749 (Union!16159 (h!71100 (t!378310 (unfocusZipperList!1580 zl!343))) (generalisedUnion!2003 (t!378310 (t!378310 (unfocusZipperList!1580 zl!343))))))))

(assert (=> d!1951193 e!3788750))

(declare-fun res!2572388 () Bool)

(assert (=> d!1951193 (=> (not res!2572388) (not e!3788750))))

(assert (=> d!1951193 (= res!2572388 (validRegex!7895 lt!2345356))))

(assert (=> d!1951193 (= lt!2345356 e!3788746)))

(declare-fun c!1124880 () Bool)

(assert (=> d!1951193 (= c!1124880 e!3788747)))

(declare-fun res!2572387 () Bool)

(assert (=> d!1951193 (=> (not res!2572387) (not e!3788747))))

(assert (=> d!1951193 (= res!2572387 ((_ is Cons!64652) (t!378310 (unfocusZipperList!1580 zl!343))))))

(assert (=> d!1951193 (forall!15273 (t!378310 (unfocusZipperList!1580 zl!343)) lambda!340280)))

(assert (=> d!1951193 (= (generalisedUnion!2003 (t!378310 (unfocusZipperList!1580 zl!343))) lt!2345356)))

(declare-fun b!6224366 () Bool)

(assert (=> b!6224366 (= e!3788751 (isEmptyLang!1578 lt!2345356))))

(assert (= (and d!1951193 res!2572387) b!6224368))

(assert (= (and d!1951193 c!1124880) b!6224367))

(assert (= (and d!1951193 (not c!1124880)) b!6224370))

(assert (= (and b!6224370 c!1124881) b!6224373))

(assert (= (and b!6224370 (not c!1124881)) b!6224364))

(assert (= (and d!1951193 res!2572388) b!6224369))

(assert (= (and b!6224369 c!1124882) b!6224366))

(assert (= (and b!6224369 (not c!1124882)) b!6224365))

(assert (= (and b!6224365 c!1124879) b!6224372))

(assert (= (and b!6224365 (not c!1124879)) b!6224371))

(declare-fun m!7051616 () Bool)

(assert (=> b!6224372 m!7051616))

(declare-fun m!7051618 () Bool)

(assert (=> b!6224371 m!7051618))

(declare-fun m!7051620 () Bool)

(assert (=> b!6224368 m!7051620))

(declare-fun m!7051622 () Bool)

(assert (=> b!6224373 m!7051622))

(assert (=> b!6224369 m!7050974))

(declare-fun m!7051624 () Bool)

(assert (=> d!1951193 m!7051624))

(declare-fun m!7051626 () Bool)

(assert (=> d!1951193 m!7051626))

(declare-fun m!7051628 () Bool)

(assert (=> b!6224366 m!7051628))

(declare-fun m!7051630 () Bool)

(assert (=> b!6224365 m!7051630))

(assert (=> b!6224365 m!7051630))

(declare-fun m!7051632 () Bool)

(assert (=> b!6224365 m!7051632))

(assert (=> b!6223655 d!1951193))

(declare-fun bm!522723 () Bool)

(declare-fun call!522731 () (InoxSet Context!11086))

(declare-fun call!522729 () (InoxSet Context!11086))

(assert (=> bm!522723 (= call!522731 call!522729)))

(declare-fun b!6224374 () Bool)

(declare-fun e!3788754 () (InoxSet Context!11086))

(assert (=> b!6224374 (= e!3788754 call!522731)))

(declare-fun b!6224375 () Bool)

(declare-fun c!1124883 () Bool)

(declare-fun e!3788753 () Bool)

(assert (=> b!6224375 (= c!1124883 e!3788753)))

(declare-fun res!2572389 () Bool)

(assert (=> b!6224375 (=> (not res!2572389) (not e!3788753))))

(assert (=> b!6224375 (= res!2572389 ((_ is Concat!25004) (h!71100 (exprs!6043 lt!2345243))))))

(declare-fun e!3788755 () (InoxSet Context!11086))

(declare-fun e!3788752 () (InoxSet Context!11086))

(assert (=> b!6224375 (= e!3788755 e!3788752)))

(declare-fun b!6224376 () Bool)

(declare-fun e!3788756 () (InoxSet Context!11086))

(assert (=> b!6224376 (= e!3788756 call!522731)))

(declare-fun b!6224377 () Bool)

(declare-fun e!3788757 () (InoxSet Context!11086))

(assert (=> b!6224377 (= e!3788757 (store ((as const (Array Context!11086 Bool)) false) (Context!11087 (t!378310 (exprs!6043 lt!2345243))) true))))

(declare-fun bm!522724 () Bool)

(declare-fun call!522733 () (InoxSet Context!11086))

(assert (=> bm!522724 (= call!522729 call!522733)))

(declare-fun c!1124884 () Bool)

(declare-fun c!1124887 () Bool)

(declare-fun bm!522725 () Bool)

(declare-fun call!522728 () List!64776)

(assert (=> bm!522725 (= call!522733 (derivationStepZipperDown!1407 (ite c!1124887 (regTwo!32831 (h!71100 (exprs!6043 lt!2345243))) (ite c!1124883 (regTwo!32830 (h!71100 (exprs!6043 lt!2345243))) (ite c!1124884 (regOne!32830 (h!71100 (exprs!6043 lt!2345243))) (reg!16488 (h!71100 (exprs!6043 lt!2345243)))))) (ite (or c!1124887 c!1124883) (Context!11087 (t!378310 (exprs!6043 lt!2345243))) (Context!11087 call!522728)) (h!71101 s!2326)))))

(declare-fun b!6224378 () Bool)

(declare-fun call!522732 () (InoxSet Context!11086))

(assert (=> b!6224378 (= e!3788755 ((_ map or) call!522732 call!522733))))

(declare-fun d!1951195 () Bool)

(declare-fun c!1124885 () Bool)

(assert (=> d!1951195 (= c!1124885 (and ((_ is ElementMatch!16159) (h!71100 (exprs!6043 lt!2345243))) (= (c!1124503 (h!71100 (exprs!6043 lt!2345243))) (h!71101 s!2326))))))

(assert (=> d!1951195 (= (derivationStepZipperDown!1407 (h!71100 (exprs!6043 lt!2345243)) (Context!11087 (t!378310 (exprs!6043 lt!2345243))) (h!71101 s!2326)) e!3788757)))

(declare-fun call!522730 () List!64776)

(declare-fun bm!522726 () Bool)

(assert (=> bm!522726 (= call!522732 (derivationStepZipperDown!1407 (ite c!1124887 (regOne!32831 (h!71100 (exprs!6043 lt!2345243))) (regOne!32830 (h!71100 (exprs!6043 lt!2345243)))) (ite c!1124887 (Context!11087 (t!378310 (exprs!6043 lt!2345243))) (Context!11087 call!522730)) (h!71101 s!2326)))))

(declare-fun bm!522727 () Bool)

(assert (=> bm!522727 (= call!522728 call!522730)))

(declare-fun bm!522728 () Bool)

(assert (=> bm!522728 (= call!522730 ($colon$colon!2028 (exprs!6043 (Context!11087 (t!378310 (exprs!6043 lt!2345243)))) (ite (or c!1124883 c!1124884) (regTwo!32830 (h!71100 (exprs!6043 lt!2345243))) (h!71100 (exprs!6043 lt!2345243)))))))

(declare-fun b!6224379 () Bool)

(declare-fun c!1124886 () Bool)

(assert (=> b!6224379 (= c!1124886 ((_ is Star!16159) (h!71100 (exprs!6043 lt!2345243))))))

(assert (=> b!6224379 (= e!3788754 e!3788756)))

(declare-fun b!6224380 () Bool)

(assert (=> b!6224380 (= e!3788757 e!3788755)))

(assert (=> b!6224380 (= c!1124887 ((_ is Union!16159) (h!71100 (exprs!6043 lt!2345243))))))

(declare-fun b!6224381 () Bool)

(assert (=> b!6224381 (= e!3788753 (nullable!6152 (regOne!32830 (h!71100 (exprs!6043 lt!2345243)))))))

(declare-fun b!6224382 () Bool)

(assert (=> b!6224382 (= e!3788756 ((as const (Array Context!11086 Bool)) false))))

(declare-fun b!6224383 () Bool)

(assert (=> b!6224383 (= e!3788752 e!3788754)))

(assert (=> b!6224383 (= c!1124884 ((_ is Concat!25004) (h!71100 (exprs!6043 lt!2345243))))))

(declare-fun b!6224384 () Bool)

(assert (=> b!6224384 (= e!3788752 ((_ map or) call!522732 call!522729))))

(assert (= (and d!1951195 c!1124885) b!6224377))

(assert (= (and d!1951195 (not c!1124885)) b!6224380))

(assert (= (and b!6224380 c!1124887) b!6224378))

(assert (= (and b!6224380 (not c!1124887)) b!6224375))

(assert (= (and b!6224375 res!2572389) b!6224381))

(assert (= (and b!6224375 c!1124883) b!6224384))

(assert (= (and b!6224375 (not c!1124883)) b!6224383))

(assert (= (and b!6224383 c!1124884) b!6224374))

(assert (= (and b!6224383 (not c!1124884)) b!6224379))

(assert (= (and b!6224379 c!1124886) b!6224376))

(assert (= (and b!6224379 (not c!1124886)) b!6224382))

(assert (= (or b!6224374 b!6224376) bm!522727))

(assert (= (or b!6224374 b!6224376) bm!522723))

(assert (= (or b!6224384 bm!522727) bm!522728))

(assert (= (or b!6224384 bm!522723) bm!522724))

(assert (= (or b!6224378 bm!522724) bm!522725))

(assert (= (or b!6224378 b!6224384) bm!522726))

(declare-fun m!7051634 () Bool)

(assert (=> b!6224381 m!7051634))

(declare-fun m!7051636 () Bool)

(assert (=> bm!522726 m!7051636))

(declare-fun m!7051638 () Bool)

(assert (=> bm!522728 m!7051638))

(declare-fun m!7051640 () Bool)

(assert (=> bm!522725 m!7051640))

(declare-fun m!7051642 () Bool)

(assert (=> b!6224377 m!7051642))

(assert (=> bm!522566 d!1951195))

(declare-fun d!1951197 () Bool)

(declare-fun res!2572390 () Bool)

(declare-fun e!3788758 () Bool)

(assert (=> d!1951197 (=> res!2572390 e!3788758)))

(assert (=> d!1951197 (= res!2572390 ((_ is Nil!64652) (exprs!6043 (h!71102 zl!343))))))

(assert (=> d!1951197 (= (forall!15273 (exprs!6043 (h!71102 zl!343)) lambda!340245) e!3788758)))

(declare-fun b!6224385 () Bool)

(declare-fun e!3788759 () Bool)

(assert (=> b!6224385 (= e!3788758 e!3788759)))

(declare-fun res!2572391 () Bool)

(assert (=> b!6224385 (=> (not res!2572391) (not e!3788759))))

(assert (=> b!6224385 (= res!2572391 (dynLambda!25512 lambda!340245 (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun b!6224386 () Bool)

(assert (=> b!6224386 (= e!3788759 (forall!15273 (t!378310 (exprs!6043 (h!71102 zl!343))) lambda!340245))))

(assert (= (and d!1951197 (not res!2572390)) b!6224385))

(assert (= (and b!6224385 res!2572391) b!6224386))

(declare-fun b_lambda!236639 () Bool)

(assert (=> (not b_lambda!236639) (not b!6224385)))

(declare-fun m!7051644 () Bool)

(assert (=> b!6224385 m!7051644))

(declare-fun m!7051646 () Bool)

(assert (=> b!6224386 m!7051646))

(assert (=> d!1950947 d!1951197))

(assert (=> d!1950901 d!1950897))

(declare-fun d!1951199 () Bool)

(assert (=> d!1951199 (= (flatMap!1664 lt!2345237 lambda!340181) (dynLambda!25511 lambda!340181 lt!2345235))))

(assert (=> d!1951199 true))

(declare-fun _$13!3270 () Unit!157967)

(assert (=> d!1951199 (= (choose!46253 lt!2345237 lt!2345235 lambda!340181) _$13!3270)))

(declare-fun b_lambda!236641 () Bool)

(assert (=> (not b_lambda!236641) (not d!1951199)))

(declare-fun bs!1543415 () Bool)

(assert (= bs!1543415 d!1951199))

(assert (=> bs!1543415 m!7050612))

(assert (=> bs!1543415 m!7051004))

(assert (=> d!1950901 d!1951199))

(declare-fun d!1951201 () Bool)

(assert (=> d!1951201 (= (nullable!6152 (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))) (nullableFct!2108 (regOne!32830 (regOne!32830 (regOne!32830 r!7292)))))))

(declare-fun bs!1543416 () Bool)

(assert (= bs!1543416 d!1951201))

(declare-fun m!7051648 () Bool)

(assert (=> bs!1543416 m!7051648))

(assert (=> b!6223622 d!1951201))

(assert (=> b!6223818 d!1951049))

(assert (=> b!6223818 d!1951051))

(declare-fun d!1951203 () Bool)

(assert (=> d!1951203 (= (isEmpty!36663 (t!378310 (unfocusZipperList!1580 zl!343))) ((_ is Nil!64652) (t!378310 (unfocusZipperList!1580 zl!343))))))

(assert (=> b!6223650 d!1951203))

(declare-fun d!1951205 () Bool)

(assert (=> d!1951205 (= (isEmptyExpr!1569 lt!2345327) ((_ is EmptyExpr!16159) lt!2345327))))

(assert (=> b!6223699 d!1951205))

(declare-fun d!1951207 () Bool)

(assert (=> d!1951207 true))

(declare-fun setRes!42289 () Bool)

(assert (=> d!1951207 setRes!42289))

(declare-fun condSetEmpty!42289 () Bool)

(declare-fun res!2572392 () (InoxSet Context!11086))

(assert (=> d!1951207 (= condSetEmpty!42289 (= res!2572392 ((as const (Array Context!11086 Bool)) false)))))

(assert (=> d!1951207 (= (choose!46252 lt!2345237 lambda!340181) res!2572392)))

(declare-fun setIsEmpty!42289 () Bool)

(assert (=> setIsEmpty!42289 setRes!42289))

(declare-fun tp!1736078 () Bool)

(declare-fun setElem!42289 () Context!11086)

(declare-fun e!3788760 () Bool)

(declare-fun setNonEmpty!42289 () Bool)

(assert (=> setNonEmpty!42289 (= setRes!42289 (and tp!1736078 (inv!83644 setElem!42289) e!3788760))))

(declare-fun setRest!42289 () (InoxSet Context!11086))

(assert (=> setNonEmpty!42289 (= res!2572392 ((_ map or) (store ((as const (Array Context!11086 Bool)) false) setElem!42289 true) setRest!42289))))

(declare-fun b!6224387 () Bool)

(declare-fun tp!1736077 () Bool)

(assert (=> b!6224387 (= e!3788760 tp!1736077)))

(assert (= (and d!1951207 condSetEmpty!42289) setIsEmpty!42289))

(assert (= (and d!1951207 (not condSetEmpty!42289)) setNonEmpty!42289))

(assert (= setNonEmpty!42289 b!6224387))

(declare-fun m!7051650 () Bool)

(assert (=> setNonEmpty!42289 m!7051650))

(assert (=> d!1950897 d!1951207))

(declare-fun d!1951209 () Bool)

(declare-fun e!3788767 () Bool)

(assert (=> d!1951209 e!3788767))

(declare-fun res!2572402 () Bool)

(assert (=> d!1951209 (=> (not res!2572402) (not e!3788767))))

(declare-fun lt!2345359 () List!64777)

(declare-fun content!12114 (List!64777) (InoxSet C!32588))

(assert (=> d!1951209 (= res!2572402 (= (content!12114 lt!2345359) ((_ map or) (content!12114 (_1!36441 (get!22332 lt!2345308))) (content!12114 (_2!36441 (get!22332 lt!2345308))))))))

(declare-fun e!3788768 () List!64777)

(assert (=> d!1951209 (= lt!2345359 e!3788768)))

(declare-fun c!1124890 () Bool)

(assert (=> d!1951209 (= c!1124890 ((_ is Nil!64653) (_1!36441 (get!22332 lt!2345308))))))

(assert (=> d!1951209 (= (++!14237 (_1!36441 (get!22332 lt!2345308)) (_2!36441 (get!22332 lt!2345308))) lt!2345359)))

(declare-fun b!6224403 () Bool)

(assert (=> b!6224403 (= e!3788767 (or (not (= (_2!36441 (get!22332 lt!2345308)) Nil!64653)) (= lt!2345359 (_1!36441 (get!22332 lt!2345308)))))))

(declare-fun b!6224401 () Bool)

(assert (=> b!6224401 (= e!3788768 (Cons!64653 (h!71101 (_1!36441 (get!22332 lt!2345308))) (++!14237 (t!378311 (_1!36441 (get!22332 lt!2345308))) (_2!36441 (get!22332 lt!2345308)))))))

(declare-fun b!6224402 () Bool)

(declare-fun res!2572401 () Bool)

(assert (=> b!6224402 (=> (not res!2572401) (not e!3788767))))

(declare-fun size!40286 (List!64777) Int)

(assert (=> b!6224402 (= res!2572401 (= (size!40286 lt!2345359) (+ (size!40286 (_1!36441 (get!22332 lt!2345308))) (size!40286 (_2!36441 (get!22332 lt!2345308))))))))

(declare-fun b!6224400 () Bool)

(assert (=> b!6224400 (= e!3788768 (_2!36441 (get!22332 lt!2345308)))))

(assert (= (and d!1951209 c!1124890) b!6224400))

(assert (= (and d!1951209 (not c!1124890)) b!6224401))

(assert (= (and d!1951209 res!2572402) b!6224402))

(assert (= (and b!6224402 res!2572401) b!6224403))

(declare-fun m!7051652 () Bool)

(assert (=> d!1951209 m!7051652))

(declare-fun m!7051654 () Bool)

(assert (=> d!1951209 m!7051654))

(declare-fun m!7051656 () Bool)

(assert (=> d!1951209 m!7051656))

(declare-fun m!7051658 () Bool)

(assert (=> b!6224401 m!7051658))

(declare-fun m!7051660 () Bool)

(assert (=> b!6224402 m!7051660))

(declare-fun m!7051662 () Bool)

(assert (=> b!6224402 m!7051662))

(declare-fun m!7051664 () Bool)

(assert (=> b!6224402 m!7051664))

(assert (=> b!6223554 d!1951209))

(assert (=> b!6223554 d!1951067))

(declare-fun d!1951211 () Bool)

(assert (=> d!1951211 (= (isEmpty!36663 (exprs!6043 (h!71102 zl!343))) ((_ is Nil!64652) (exprs!6043 (h!71102 zl!343))))))

(assert (=> b!6223695 d!1951211))

(declare-fun d!1951213 () Bool)

(assert (=> d!1951213 (= (Exists!3229 (ite c!1124709 lambda!340243 lambda!340244)) (choose!46249 (ite c!1124709 lambda!340243 lambda!340244)))))

(declare-fun bs!1543417 () Bool)

(assert (= bs!1543417 d!1951213))

(declare-fun m!7051666 () Bool)

(assert (=> bs!1543417 m!7051666))

(assert (=> bm!522580 d!1951213))

(assert (=> d!1950937 d!1950935))

(assert (=> d!1950937 d!1950933))

(declare-fun d!1951215 () Bool)

(assert (=> d!1951215 (= (matchR!8342 r!7292 s!2326) (matchRSpec!3260 r!7292 s!2326))))

(assert (=> d!1951215 true))

(declare-fun _$88!4844 () Unit!157967)

(assert (=> d!1951215 (= (choose!46256 r!7292 s!2326) _$88!4844)))

(declare-fun bs!1543418 () Bool)

(assert (= bs!1543418 d!1951215))

(assert (=> bs!1543418 m!7050564))

(assert (=> bs!1543418 m!7050562))

(assert (=> d!1950937 d!1951215))

(assert (=> d!1950937 d!1950861))

(declare-fun d!1951217 () Bool)

(declare-fun e!3788771 () Bool)

(assert (=> d!1951217 e!3788771))

(declare-fun res!2572408 () Bool)

(assert (=> d!1951217 (=> (not res!2572408) (not e!3788771))))

(declare-fun lt!2345360 () List!64777)

(assert (=> d!1951217 (= res!2572408 (= (content!12114 lt!2345360) ((_ map or) (content!12114 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653))) (content!12114 (t!378311 s!2326)))))))

(declare-fun e!3788772 () List!64777)

(assert (=> d!1951217 (= lt!2345360 e!3788772)))

(declare-fun c!1124891 () Bool)

(assert (=> d!1951217 (= c!1124891 ((_ is Nil!64653) (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653))))))

(assert (=> d!1951217 (= (++!14237 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (t!378311 s!2326)) lt!2345360)))

(declare-fun b!6224411 () Bool)

(assert (=> b!6224411 (= e!3788771 (or (not (= (t!378311 s!2326) Nil!64653)) (= lt!2345360 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)))))))

(declare-fun b!6224409 () Bool)

(assert (=> b!6224409 (= e!3788772 (Cons!64653 (h!71101 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653))) (++!14237 (t!378311 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653))) (t!378311 s!2326))))))

(declare-fun b!6224410 () Bool)

(declare-fun res!2572407 () Bool)

(assert (=> b!6224410 (=> (not res!2572407) (not e!3788771))))

(assert (=> b!6224410 (= res!2572407 (= (size!40286 lt!2345360) (+ (size!40286 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653))) (size!40286 (t!378311 s!2326)))))))

(declare-fun b!6224408 () Bool)

(assert (=> b!6224408 (= e!3788772 (t!378311 s!2326))))

(assert (= (and d!1951217 c!1124891) b!6224408))

(assert (= (and d!1951217 (not c!1124891)) b!6224409))

(assert (= (and d!1951217 res!2572408) b!6224410))

(assert (= (and b!6224410 res!2572407) b!6224411))

(declare-fun m!7051668 () Bool)

(assert (=> d!1951217 m!7051668))

(assert (=> d!1951217 m!7050912))

(declare-fun m!7051670 () Bool)

(assert (=> d!1951217 m!7051670))

(declare-fun m!7051672 () Bool)

(assert (=> d!1951217 m!7051672))

(declare-fun m!7051674 () Bool)

(assert (=> b!6224409 m!7051674))

(declare-fun m!7051676 () Bool)

(assert (=> b!6224410 m!7051676))

(assert (=> b!6224410 m!7050912))

(declare-fun m!7051678 () Bool)

(assert (=> b!6224410 m!7051678))

(declare-fun m!7051680 () Bool)

(assert (=> b!6224410 m!7051680))

(assert (=> b!6223550 d!1951217))

(declare-fun d!1951219 () Bool)

(declare-fun e!3788773 () Bool)

(assert (=> d!1951219 e!3788773))

(declare-fun res!2572410 () Bool)

(assert (=> d!1951219 (=> (not res!2572410) (not e!3788773))))

(declare-fun lt!2345361 () List!64777)

(assert (=> d!1951219 (= res!2572410 (= (content!12114 lt!2345361) ((_ map or) (content!12114 Nil!64653) (content!12114 (Cons!64653 (h!71101 s!2326) Nil!64653)))))))

(declare-fun e!3788774 () List!64777)

(assert (=> d!1951219 (= lt!2345361 e!3788774)))

(declare-fun c!1124892 () Bool)

(assert (=> d!1951219 (= c!1124892 ((_ is Nil!64653) Nil!64653))))

(assert (=> d!1951219 (= (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) lt!2345361)))

(declare-fun b!6224415 () Bool)

(assert (=> b!6224415 (= e!3788773 (or (not (= (Cons!64653 (h!71101 s!2326) Nil!64653) Nil!64653)) (= lt!2345361 Nil!64653)))))

(declare-fun b!6224413 () Bool)

(assert (=> b!6224413 (= e!3788774 (Cons!64653 (h!71101 Nil!64653) (++!14237 (t!378311 Nil!64653) (Cons!64653 (h!71101 s!2326) Nil!64653))))))

(declare-fun b!6224414 () Bool)

(declare-fun res!2572409 () Bool)

(assert (=> b!6224414 (=> (not res!2572409) (not e!3788773))))

(assert (=> b!6224414 (= res!2572409 (= (size!40286 lt!2345361) (+ (size!40286 Nil!64653) (size!40286 (Cons!64653 (h!71101 s!2326) Nil!64653)))))))

(declare-fun b!6224412 () Bool)

(assert (=> b!6224412 (= e!3788774 (Cons!64653 (h!71101 s!2326) Nil!64653))))

(assert (= (and d!1951219 c!1124892) b!6224412))

(assert (= (and d!1951219 (not c!1124892)) b!6224413))

(assert (= (and d!1951219 res!2572410) b!6224414))

(assert (= (and b!6224414 res!2572409) b!6224415))

(declare-fun m!7051682 () Bool)

(assert (=> d!1951219 m!7051682))

(declare-fun m!7051684 () Bool)

(assert (=> d!1951219 m!7051684))

(declare-fun m!7051686 () Bool)

(assert (=> d!1951219 m!7051686))

(declare-fun m!7051688 () Bool)

(assert (=> b!6224413 m!7051688))

(declare-fun m!7051690 () Bool)

(assert (=> b!6224414 m!7051690))

(declare-fun m!7051692 () Bool)

(assert (=> b!6224414 m!7051692))

(declare-fun m!7051694 () Bool)

(assert (=> b!6224414 m!7051694))

(assert (=> b!6223550 d!1951219))

(declare-fun d!1951221 () Bool)

(assert (=> d!1951221 (= (++!14237 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (t!378311 s!2326)) s!2326)))

(declare-fun lt!2345364 () Unit!157967)

(declare-fun choose!46258 (List!64777 C!32588 List!64777 List!64777) Unit!157967)

(assert (=> d!1951221 (= lt!2345364 (choose!46258 Nil!64653 (h!71101 s!2326) (t!378311 s!2326) s!2326))))

(assert (=> d!1951221 (= (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) (t!378311 s!2326))) s!2326)))

(assert (=> d!1951221 (= (lemmaMoveElementToOtherListKeepsConcatEq!2332 Nil!64653 (h!71101 s!2326) (t!378311 s!2326) s!2326) lt!2345364)))

(declare-fun bs!1543424 () Bool)

(assert (= bs!1543424 d!1951221))

(assert (=> bs!1543424 m!7050912))

(assert (=> bs!1543424 m!7050912))

(assert (=> bs!1543424 m!7050914))

(declare-fun m!7051696 () Bool)

(assert (=> bs!1543424 m!7051696))

(declare-fun m!7051698 () Bool)

(assert (=> bs!1543424 m!7051698))

(assert (=> b!6223550 d!1951221))

(declare-fun b!6224416 () Bool)

(declare-fun e!3788778 () Bool)

(assert (=> b!6224416 (= e!3788778 (matchR!8342 (regTwo!32830 r!7292) (t!378311 s!2326)))))

(declare-fun d!1951223 () Bool)

(declare-fun e!3788776 () Bool)

(assert (=> d!1951223 e!3788776))

(declare-fun res!2572414 () Bool)

(assert (=> d!1951223 (=> res!2572414 e!3788776)))

(declare-fun e!3788777 () Bool)

(assert (=> d!1951223 (= res!2572414 e!3788777)))

(declare-fun res!2572413 () Bool)

(assert (=> d!1951223 (=> (not res!2572413) (not e!3788777))))

(declare-fun lt!2345367 () Option!16050)

(assert (=> d!1951223 (= res!2572413 (isDefined!12753 lt!2345367))))

(declare-fun e!3788775 () Option!16050)

(assert (=> d!1951223 (= lt!2345367 e!3788775)))

(declare-fun c!1124894 () Bool)

(assert (=> d!1951223 (= c!1124894 e!3788778)))

(declare-fun res!2572415 () Bool)

(assert (=> d!1951223 (=> (not res!2572415) (not e!3788778))))

(assert (=> d!1951223 (= res!2572415 (matchR!8342 (regOne!32830 r!7292) (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653))))))

(assert (=> d!1951223 (validRegex!7895 (regOne!32830 r!7292))))

(assert (=> d!1951223 (= (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (t!378311 s!2326) s!2326) lt!2345367)))

(declare-fun b!6224417 () Bool)

(declare-fun res!2572411 () Bool)

(assert (=> b!6224417 (=> (not res!2572411) (not e!3788777))))

(assert (=> b!6224417 (= res!2572411 (matchR!8342 (regOne!32830 r!7292) (_1!36441 (get!22332 lt!2345367))))))

(declare-fun b!6224418 () Bool)

(assert (=> b!6224418 (= e!3788775 (Some!16049 (tuple2!66277 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (t!378311 s!2326))))))

(declare-fun b!6224419 () Bool)

(assert (=> b!6224419 (= e!3788776 (not (isDefined!12753 lt!2345367)))))

(declare-fun b!6224420 () Bool)

(declare-fun lt!2345365 () Unit!157967)

(declare-fun lt!2345366 () Unit!157967)

(assert (=> b!6224420 (= lt!2345365 lt!2345366)))

(assert (=> b!6224420 (= (++!14237 (++!14237 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (Cons!64653 (h!71101 (t!378311 s!2326)) Nil!64653)) (t!378311 (t!378311 s!2326))) s!2326)))

(assert (=> b!6224420 (= lt!2345366 (lemmaMoveElementToOtherListKeepsConcatEq!2332 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (h!71101 (t!378311 s!2326)) (t!378311 (t!378311 s!2326)) s!2326))))

(declare-fun e!3788779 () Option!16050)

(assert (=> b!6224420 (= e!3788779 (findConcatSeparation!2464 (regOne!32830 r!7292) (regTwo!32830 r!7292) (++!14237 (++!14237 Nil!64653 (Cons!64653 (h!71101 s!2326) Nil!64653)) (Cons!64653 (h!71101 (t!378311 s!2326)) Nil!64653)) (t!378311 (t!378311 s!2326)) s!2326))))

(declare-fun b!6224421 () Bool)

(assert (=> b!6224421 (= e!3788775 e!3788779)))

(declare-fun c!1124893 () Bool)

(assert (=> b!6224421 (= c!1124893 ((_ is Nil!64653) (t!378311 s!2326)))))

(declare-fun b!6224422 () Bool)

(declare-fun res!2572412 () Bool)

(assert (=> b!6224422 (=> (not res!2572412) (not e!3788777))))

(assert (=> b!6224422 (= res!2572412 (matchR!8342 (regTwo!32830 r!7292) (_2!36441 (get!22332 lt!2345367))))))

(declare-fun b!6224423 () Bool)

(assert (=> b!6224423 (= e!3788779 None!16049)))

(declare-fun b!6224424 () Bool)

(assert (=> b!6224424 (= e!3788777 (= (++!14237 (_1!36441 (get!22332 lt!2345367)) (_2!36441 (get!22332 lt!2345367))) s!2326))))

(assert (= (and d!1951223 res!2572415) b!6224416))

(assert (= (and d!1951223 c!1124894) b!6224418))

(assert (= (and d!1951223 (not c!1124894)) b!6224421))

(assert (= (and b!6224421 c!1124893) b!6224423))

(assert (= (and b!6224421 (not c!1124893)) b!6224420))

(assert (= (and d!1951223 res!2572413) b!6224417))

(assert (= (and b!6224417 res!2572411) b!6224422))

(assert (= (and b!6224422 res!2572412) b!6224424))

(assert (= (and d!1951223 (not res!2572414)) b!6224419))

(declare-fun m!7051700 () Bool)

(assert (=> b!6224424 m!7051700))

(declare-fun m!7051702 () Bool)

(assert (=> b!6224424 m!7051702))

(declare-fun m!7051704 () Bool)

(assert (=> d!1951223 m!7051704))

(assert (=> d!1951223 m!7050912))

(declare-fun m!7051706 () Bool)

(assert (=> d!1951223 m!7051706))

(assert (=> d!1951223 m!7050906))

(declare-fun m!7051708 () Bool)

(assert (=> b!6224416 m!7051708))

(assert (=> b!6224417 m!7051700))

(declare-fun m!7051710 () Bool)

(assert (=> b!6224417 m!7051710))

(assert (=> b!6224419 m!7051704))

(assert (=> b!6224420 m!7050912))

(declare-fun m!7051712 () Bool)

(assert (=> b!6224420 m!7051712))

(assert (=> b!6224420 m!7051712))

(declare-fun m!7051714 () Bool)

(assert (=> b!6224420 m!7051714))

(assert (=> b!6224420 m!7050912))

(declare-fun m!7051716 () Bool)

(assert (=> b!6224420 m!7051716))

(assert (=> b!6224420 m!7051712))

(declare-fun m!7051718 () Bool)

(assert (=> b!6224420 m!7051718))

(assert (=> b!6224422 m!7051700))

(declare-fun m!7051720 () Bool)

(assert (=> b!6224422 m!7051720))

(assert (=> b!6223550 d!1951223))

(assert (=> bs!1543251 d!1950917))

(declare-fun d!1951225 () Bool)

(assert (=> d!1951225 (= ($colon$colon!2028 (exprs!6043 lt!2345243) (ite (or c!1124644 c!1124645) (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (regTwo!32830 (regOne!32830 r!7292)))) (Cons!64652 (ite (or c!1124644 c!1124645) (regTwo!32830 (regTwo!32830 (regOne!32830 r!7292))) (regTwo!32830 (regOne!32830 r!7292))) (exprs!6043 lt!2345243)))))

(assert (=> bm!522558 d!1951225))

(declare-fun b!6224425 () Bool)

(declare-fun e!3788786 () Bool)

(declare-fun e!3788780 () Bool)

(assert (=> b!6224425 (= e!3788786 e!3788780)))

(declare-fun c!1124895 () Bool)

(assert (=> b!6224425 (= c!1124895 ((_ is Star!16159) lt!2345320))))

(declare-fun bm!522729 () Bool)

(declare-fun call!522735 () Bool)

(declare-fun call!522736 () Bool)

(assert (=> bm!522729 (= call!522735 call!522736)))

(declare-fun b!6224426 () Bool)

(declare-fun e!3788781 () Bool)

(assert (=> b!6224426 (= e!3788781 call!522735)))

(declare-fun b!6224427 () Bool)

(declare-fun e!3788784 () Bool)

(assert (=> b!6224427 (= e!3788784 call!522736)))

(declare-fun b!6224429 () Bool)

(declare-fun e!3788783 () Bool)

(assert (=> b!6224429 (= e!3788783 call!522735)))

(declare-fun b!6224430 () Bool)

(declare-fun e!3788782 () Bool)

(assert (=> b!6224430 (= e!3788780 e!3788782)))

(declare-fun c!1124896 () Bool)

(assert (=> b!6224430 (= c!1124896 ((_ is Union!16159) lt!2345320))))

(declare-fun b!6224431 () Bool)

(assert (=> b!6224431 (= e!3788780 e!3788784)))

(declare-fun res!2572418 () Bool)

(assert (=> b!6224431 (= res!2572418 (not (nullable!6152 (reg!16488 lt!2345320))))))

(assert (=> b!6224431 (=> (not res!2572418) (not e!3788784))))

(declare-fun bm!522730 () Bool)

(declare-fun call!522734 () Bool)

(assert (=> bm!522730 (= call!522734 (validRegex!7895 (ite c!1124896 (regOne!32831 lt!2345320) (regOne!32830 lt!2345320))))))

(declare-fun bm!522731 () Bool)

(assert (=> bm!522731 (= call!522736 (validRegex!7895 (ite c!1124895 (reg!16488 lt!2345320) (ite c!1124896 (regTwo!32831 lt!2345320) (regTwo!32830 lt!2345320)))))))

(declare-fun b!6224432 () Bool)

(declare-fun e!3788785 () Bool)

(assert (=> b!6224432 (= e!3788785 e!3788783)))

(declare-fun res!2572420 () Bool)

(assert (=> b!6224432 (=> (not res!2572420) (not e!3788783))))

(assert (=> b!6224432 (= res!2572420 call!522734)))

(declare-fun b!6224433 () Bool)

(declare-fun res!2572419 () Bool)

(assert (=> b!6224433 (=> (not res!2572419) (not e!3788781))))

(assert (=> b!6224433 (= res!2572419 call!522734)))

(assert (=> b!6224433 (= e!3788782 e!3788781)))

(declare-fun d!1951227 () Bool)

(declare-fun res!2572416 () Bool)

(assert (=> d!1951227 (=> res!2572416 e!3788786)))

(assert (=> d!1951227 (= res!2572416 ((_ is ElementMatch!16159) lt!2345320))))

(assert (=> d!1951227 (= (validRegex!7895 lt!2345320) e!3788786)))

(declare-fun b!6224428 () Bool)

(declare-fun res!2572417 () Bool)

(assert (=> b!6224428 (=> res!2572417 e!3788785)))

(assert (=> b!6224428 (= res!2572417 (not ((_ is Concat!25004) lt!2345320)))))

(assert (=> b!6224428 (= e!3788782 e!3788785)))

(assert (= (and d!1951227 (not res!2572416)) b!6224425))

(assert (= (and b!6224425 c!1124895) b!6224431))

(assert (= (and b!6224425 (not c!1124895)) b!6224430))

(assert (= (and b!6224431 res!2572418) b!6224427))

(assert (= (and b!6224430 c!1124896) b!6224433))

(assert (= (and b!6224430 (not c!1124896)) b!6224428))

(assert (= (and b!6224433 res!2572419) b!6224426))

(assert (= (and b!6224428 (not res!2572417)) b!6224432))

(assert (= (and b!6224432 res!2572420) b!6224429))

(assert (= (or b!6224426 b!6224429) bm!522729))

(assert (= (or b!6224433 b!6224432) bm!522730))

(assert (= (or b!6224427 bm!522729) bm!522731))

(declare-fun m!7051722 () Bool)

(assert (=> b!6224431 m!7051722))

(declare-fun m!7051724 () Bool)

(assert (=> bm!522730 m!7051724))

(declare-fun m!7051726 () Bool)

(assert (=> bm!522731 m!7051726))

(assert (=> d!1950891 d!1951227))

(declare-fun d!1951229 () Bool)

(declare-fun res!2572421 () Bool)

(declare-fun e!3788787 () Bool)

(assert (=> d!1951229 (=> res!2572421 e!3788787)))

(assert (=> d!1951229 (= res!2572421 ((_ is Nil!64652) (unfocusZipperList!1580 zl!343)))))

(assert (=> d!1951229 (= (forall!15273 (unfocusZipperList!1580 zl!343) lambda!340229) e!3788787)))

(declare-fun b!6224434 () Bool)

(declare-fun e!3788788 () Bool)

(assert (=> b!6224434 (= e!3788787 e!3788788)))

(declare-fun res!2572422 () Bool)

(assert (=> b!6224434 (=> (not res!2572422) (not e!3788788))))

(assert (=> b!6224434 (= res!2572422 (dynLambda!25512 lambda!340229 (h!71100 (unfocusZipperList!1580 zl!343))))))

(declare-fun b!6224435 () Bool)

(assert (=> b!6224435 (= e!3788788 (forall!15273 (t!378310 (unfocusZipperList!1580 zl!343)) lambda!340229))))

(assert (= (and d!1951229 (not res!2572421)) b!6224434))

(assert (= (and b!6224434 res!2572422) b!6224435))

(declare-fun b_lambda!236643 () Bool)

(assert (=> (not b_lambda!236643) (not b!6224434)))

(declare-fun m!7051732 () Bool)

(assert (=> b!6224434 m!7051732))

(declare-fun m!7051734 () Bool)

(assert (=> b!6224435 m!7051734))

(assert (=> d!1950891 d!1951229))

(declare-fun b!6224445 () Bool)

(declare-fun e!3788796 () Bool)

(declare-fun tp!1736079 () Bool)

(declare-fun tp!1736080 () Bool)

(assert (=> b!6224445 (= e!3788796 (and tp!1736079 tp!1736080))))

(assert (=> b!6223855 (= tp!1736038 e!3788796)))

(assert (= (and b!6223855 ((_ is Cons!64652) (exprs!6043 setElem!42284))) b!6224445))

(declare-fun e!3788797 () Bool)

(assert (=> b!6223862 (= tp!1736047 e!3788797)))

(declare-fun b!6224447 () Bool)

(declare-fun tp!1736083 () Bool)

(declare-fun tp!1736082 () Bool)

(assert (=> b!6224447 (= e!3788797 (and tp!1736083 tp!1736082))))

(declare-fun b!6224446 () Bool)

(assert (=> b!6224446 (= e!3788797 tp_is_empty!41571)))

(declare-fun b!6224448 () Bool)

(declare-fun tp!1736084 () Bool)

(assert (=> b!6224448 (= e!3788797 tp!1736084)))

(declare-fun b!6224449 () Bool)

(declare-fun tp!1736081 () Bool)

(declare-fun tp!1736085 () Bool)

(assert (=> b!6224449 (= e!3788797 (and tp!1736081 tp!1736085))))

(assert (= (and b!6223862 ((_ is ElementMatch!16159) (reg!16488 (regOne!32831 r!7292)))) b!6224446))

(assert (= (and b!6223862 ((_ is Concat!25004) (reg!16488 (regOne!32831 r!7292)))) b!6224447))

(assert (= (and b!6223862 ((_ is Star!16159) (reg!16488 (regOne!32831 r!7292)))) b!6224448))

(assert (= (and b!6223862 ((_ is Union!16159) (reg!16488 (regOne!32831 r!7292)))) b!6224449))

(declare-fun e!3788798 () Bool)

(assert (=> b!6223831 (= tp!1736009 e!3788798)))

(declare-fun b!6224451 () Bool)

(declare-fun tp!1736088 () Bool)

(declare-fun tp!1736087 () Bool)

(assert (=> b!6224451 (= e!3788798 (and tp!1736088 tp!1736087))))

(declare-fun b!6224450 () Bool)

(assert (=> b!6224450 (= e!3788798 tp_is_empty!41571)))

(declare-fun b!6224452 () Bool)

(declare-fun tp!1736089 () Bool)

(assert (=> b!6224452 (= e!3788798 tp!1736089)))

(declare-fun b!6224453 () Bool)

(declare-fun tp!1736086 () Bool)

(declare-fun tp!1736090 () Bool)

(assert (=> b!6224453 (= e!3788798 (and tp!1736086 tp!1736090))))

(assert (= (and b!6223831 ((_ is ElementMatch!16159) (h!71100 (exprs!6043 (h!71102 zl!343))))) b!6224450))

(assert (= (and b!6223831 ((_ is Concat!25004) (h!71100 (exprs!6043 (h!71102 zl!343))))) b!6224451))

(assert (= (and b!6223831 ((_ is Star!16159) (h!71100 (exprs!6043 (h!71102 zl!343))))) b!6224452))

(assert (= (and b!6223831 ((_ is Union!16159) (h!71100 (exprs!6043 (h!71102 zl!343))))) b!6224453))

(declare-fun b!6224454 () Bool)

(declare-fun e!3788799 () Bool)

(declare-fun tp!1736091 () Bool)

(declare-fun tp!1736092 () Bool)

(assert (=> b!6224454 (= e!3788799 (and tp!1736091 tp!1736092))))

(assert (=> b!6223831 (= tp!1736010 e!3788799)))

(assert (= (and b!6223831 ((_ is Cons!64652) (t!378310 (exprs!6043 (h!71102 zl!343))))) b!6224454))

(declare-fun e!3788800 () Bool)

(assert (=> b!6223848 (= tp!1736029 e!3788800)))

(declare-fun b!6224456 () Bool)

(declare-fun tp!1736095 () Bool)

(declare-fun tp!1736094 () Bool)

(assert (=> b!6224456 (= e!3788800 (and tp!1736095 tp!1736094))))

(declare-fun b!6224455 () Bool)

(assert (=> b!6224455 (= e!3788800 tp_is_empty!41571)))

(declare-fun b!6224457 () Bool)

(declare-fun tp!1736096 () Bool)

(assert (=> b!6224457 (= e!3788800 tp!1736096)))

(declare-fun b!6224458 () Bool)

(declare-fun tp!1736093 () Bool)

(declare-fun tp!1736097 () Bool)

(assert (=> b!6224458 (= e!3788800 (and tp!1736093 tp!1736097))))

(assert (= (and b!6223848 ((_ is ElementMatch!16159) (reg!16488 (regTwo!32830 r!7292)))) b!6224455))

(assert (= (and b!6223848 ((_ is Concat!25004) (reg!16488 (regTwo!32830 r!7292)))) b!6224456))

(assert (= (and b!6223848 ((_ is Star!16159) (reg!16488 (regTwo!32830 r!7292)))) b!6224457))

(assert (= (and b!6223848 ((_ is Union!16159) (reg!16488 (regTwo!32830 r!7292)))) b!6224458))

(declare-fun e!3788801 () Bool)

(assert (=> b!6223863 (= tp!1736044 e!3788801)))

(declare-fun b!6224460 () Bool)

(declare-fun tp!1736100 () Bool)

(declare-fun tp!1736099 () Bool)

(assert (=> b!6224460 (= e!3788801 (and tp!1736100 tp!1736099))))

(declare-fun b!6224459 () Bool)

(assert (=> b!6224459 (= e!3788801 tp_is_empty!41571)))

(declare-fun b!6224461 () Bool)

(declare-fun tp!1736101 () Bool)

(assert (=> b!6224461 (= e!3788801 tp!1736101)))

(declare-fun b!6224462 () Bool)

(declare-fun tp!1736098 () Bool)

(declare-fun tp!1736102 () Bool)

(assert (=> b!6224462 (= e!3788801 (and tp!1736098 tp!1736102))))

(assert (= (and b!6223863 ((_ is ElementMatch!16159) (regOne!32831 (regOne!32831 r!7292)))) b!6224459))

(assert (= (and b!6223863 ((_ is Concat!25004) (regOne!32831 (regOne!32831 r!7292)))) b!6224460))

(assert (= (and b!6223863 ((_ is Star!16159) (regOne!32831 (regOne!32831 r!7292)))) b!6224461))

(assert (= (and b!6223863 ((_ is Union!16159) (regOne!32831 (regOne!32831 r!7292)))) b!6224462))

(declare-fun e!3788802 () Bool)

(assert (=> b!6223863 (= tp!1736048 e!3788802)))

(declare-fun b!6224464 () Bool)

(declare-fun tp!1736105 () Bool)

(declare-fun tp!1736104 () Bool)

(assert (=> b!6224464 (= e!3788802 (and tp!1736105 tp!1736104))))

(declare-fun b!6224463 () Bool)

(assert (=> b!6224463 (= e!3788802 tp_is_empty!41571)))

(declare-fun b!6224465 () Bool)

(declare-fun tp!1736106 () Bool)

(assert (=> b!6224465 (= e!3788802 tp!1736106)))

(declare-fun b!6224466 () Bool)

(declare-fun tp!1736103 () Bool)

(declare-fun tp!1736107 () Bool)

(assert (=> b!6224466 (= e!3788802 (and tp!1736103 tp!1736107))))

(assert (= (and b!6223863 ((_ is ElementMatch!16159) (regTwo!32831 (regOne!32831 r!7292)))) b!6224463))

(assert (= (and b!6223863 ((_ is Concat!25004) (regTwo!32831 (regOne!32831 r!7292)))) b!6224464))

(assert (= (and b!6223863 ((_ is Star!16159) (regTwo!32831 (regOne!32831 r!7292)))) b!6224465))

(assert (= (and b!6223863 ((_ is Union!16159) (regTwo!32831 (regOne!32831 r!7292)))) b!6224466))

(declare-fun e!3788803 () Bool)

(assert (=> b!6223847 (= tp!1736028 e!3788803)))

(declare-fun b!6224468 () Bool)

(declare-fun tp!1736110 () Bool)

(declare-fun tp!1736109 () Bool)

(assert (=> b!6224468 (= e!3788803 (and tp!1736110 tp!1736109))))

(declare-fun b!6224467 () Bool)

(assert (=> b!6224467 (= e!3788803 tp_is_empty!41571)))

(declare-fun b!6224469 () Bool)

(declare-fun tp!1736111 () Bool)

(assert (=> b!6224469 (= e!3788803 tp!1736111)))

(declare-fun b!6224470 () Bool)

(declare-fun tp!1736108 () Bool)

(declare-fun tp!1736112 () Bool)

(assert (=> b!6224470 (= e!3788803 (and tp!1736108 tp!1736112))))

(assert (= (and b!6223847 ((_ is ElementMatch!16159) (regOne!32830 (regTwo!32830 r!7292)))) b!6224467))

(assert (= (and b!6223847 ((_ is Concat!25004) (regOne!32830 (regTwo!32830 r!7292)))) b!6224468))

(assert (= (and b!6223847 ((_ is Star!16159) (regOne!32830 (regTwo!32830 r!7292)))) b!6224469))

(assert (= (and b!6223847 ((_ is Union!16159) (regOne!32830 (regTwo!32830 r!7292)))) b!6224470))

(declare-fun e!3788804 () Bool)

(assert (=> b!6223847 (= tp!1736027 e!3788804)))

(declare-fun b!6224472 () Bool)

(declare-fun tp!1736115 () Bool)

(declare-fun tp!1736114 () Bool)

(assert (=> b!6224472 (= e!3788804 (and tp!1736115 tp!1736114))))

(declare-fun b!6224471 () Bool)

(assert (=> b!6224471 (= e!3788804 tp_is_empty!41571)))

(declare-fun b!6224473 () Bool)

(declare-fun tp!1736116 () Bool)

(assert (=> b!6224473 (= e!3788804 tp!1736116)))

(declare-fun b!6224474 () Bool)

(declare-fun tp!1736113 () Bool)

(declare-fun tp!1736117 () Bool)

(assert (=> b!6224474 (= e!3788804 (and tp!1736113 tp!1736117))))

(assert (= (and b!6223847 ((_ is ElementMatch!16159) (regTwo!32830 (regTwo!32830 r!7292)))) b!6224471))

(assert (= (and b!6223847 ((_ is Concat!25004) (regTwo!32830 (regTwo!32830 r!7292)))) b!6224472))

(assert (= (and b!6223847 ((_ is Star!16159) (regTwo!32830 (regTwo!32830 r!7292)))) b!6224473))

(assert (= (and b!6223847 ((_ is Union!16159) (regTwo!32830 (regTwo!32830 r!7292)))) b!6224474))

(declare-fun condSetEmpty!42290 () Bool)

(assert (=> setNonEmpty!42284 (= condSetEmpty!42290 (= setRest!42284 ((as const (Array Context!11086 Bool)) false)))))

(declare-fun setRes!42290 () Bool)

(assert (=> setNonEmpty!42284 (= tp!1736037 setRes!42290)))

(declare-fun setIsEmpty!42290 () Bool)

(assert (=> setIsEmpty!42290 setRes!42290))

(declare-fun tp!1736118 () Bool)

(declare-fun setElem!42290 () Context!11086)

(declare-fun setNonEmpty!42290 () Bool)

(declare-fun e!3788805 () Bool)

(assert (=> setNonEmpty!42290 (= setRes!42290 (and tp!1736118 (inv!83644 setElem!42290) e!3788805))))

(declare-fun setRest!42290 () (InoxSet Context!11086))

(assert (=> setNonEmpty!42290 (= setRest!42284 ((_ map or) (store ((as const (Array Context!11086 Bool)) false) setElem!42290 true) setRest!42290))))

(declare-fun b!6224475 () Bool)

(declare-fun tp!1736119 () Bool)

(assert (=> b!6224475 (= e!3788805 tp!1736119)))

(assert (= (and setNonEmpty!42284 condSetEmpty!42290) setIsEmpty!42290))

(assert (= (and setNonEmpty!42284 (not condSetEmpty!42290)) setNonEmpty!42290))

(assert (= setNonEmpty!42290 b!6224475))

(declare-fun m!7051742 () Bool)

(assert (=> setNonEmpty!42290 m!7051742))

(declare-fun e!3788806 () Bool)

(assert (=> b!6223861 (= tp!1736046 e!3788806)))

(declare-fun b!6224477 () Bool)

(declare-fun tp!1736122 () Bool)

(declare-fun tp!1736121 () Bool)

(assert (=> b!6224477 (= e!3788806 (and tp!1736122 tp!1736121))))

(declare-fun b!6224476 () Bool)

(assert (=> b!6224476 (= e!3788806 tp_is_empty!41571)))

(declare-fun b!6224478 () Bool)

(declare-fun tp!1736123 () Bool)

(assert (=> b!6224478 (= e!3788806 tp!1736123)))

(declare-fun b!6224479 () Bool)

(declare-fun tp!1736120 () Bool)

(declare-fun tp!1736124 () Bool)

(assert (=> b!6224479 (= e!3788806 (and tp!1736120 tp!1736124))))

(assert (= (and b!6223861 ((_ is ElementMatch!16159) (regOne!32830 (regOne!32831 r!7292)))) b!6224476))

(assert (= (and b!6223861 ((_ is Concat!25004) (regOne!32830 (regOne!32831 r!7292)))) b!6224477))

(assert (= (and b!6223861 ((_ is Star!16159) (regOne!32830 (regOne!32831 r!7292)))) b!6224478))

(assert (= (and b!6223861 ((_ is Union!16159) (regOne!32830 (regOne!32831 r!7292)))) b!6224479))

(declare-fun e!3788807 () Bool)

(assert (=> b!6223861 (= tp!1736045 e!3788807)))

(declare-fun b!6224481 () Bool)

(declare-fun tp!1736127 () Bool)

(declare-fun tp!1736126 () Bool)

(assert (=> b!6224481 (= e!3788807 (and tp!1736127 tp!1736126))))

(declare-fun b!6224480 () Bool)

(assert (=> b!6224480 (= e!3788807 tp_is_empty!41571)))

(declare-fun b!6224482 () Bool)

(declare-fun tp!1736128 () Bool)

(assert (=> b!6224482 (= e!3788807 tp!1736128)))

(declare-fun b!6224483 () Bool)

(declare-fun tp!1736125 () Bool)

(declare-fun tp!1736129 () Bool)

(assert (=> b!6224483 (= e!3788807 (and tp!1736125 tp!1736129))))

(assert (= (and b!6223861 ((_ is ElementMatch!16159) (regTwo!32830 (regOne!32831 r!7292)))) b!6224480))

(assert (= (and b!6223861 ((_ is Concat!25004) (regTwo!32830 (regOne!32831 r!7292)))) b!6224481))

(assert (= (and b!6223861 ((_ is Star!16159) (regTwo!32830 (regOne!32831 r!7292)))) b!6224482))

(assert (= (and b!6223861 ((_ is Union!16159) (regTwo!32830 (regOne!32831 r!7292)))) b!6224483))

(declare-fun e!3788808 () Bool)

(assert (=> b!6223844 (= tp!1736024 e!3788808)))

(declare-fun b!6224485 () Bool)

(declare-fun tp!1736132 () Bool)

(declare-fun tp!1736131 () Bool)

(assert (=> b!6224485 (= e!3788808 (and tp!1736132 tp!1736131))))

(declare-fun b!6224484 () Bool)

(assert (=> b!6224484 (= e!3788808 tp_is_empty!41571)))

(declare-fun b!6224486 () Bool)

(declare-fun tp!1736133 () Bool)

(assert (=> b!6224486 (= e!3788808 tp!1736133)))

(declare-fun b!6224487 () Bool)

(declare-fun tp!1736130 () Bool)

(declare-fun tp!1736134 () Bool)

(assert (=> b!6224487 (= e!3788808 (and tp!1736130 tp!1736134))))

(assert (= (and b!6223844 ((_ is ElementMatch!16159) (reg!16488 (regOne!32830 r!7292)))) b!6224484))

(assert (= (and b!6223844 ((_ is Concat!25004) (reg!16488 (regOne!32830 r!7292)))) b!6224485))

(assert (= (and b!6223844 ((_ is Star!16159) (reg!16488 (regOne!32830 r!7292)))) b!6224486))

(assert (= (and b!6223844 ((_ is Union!16159) (reg!16488 (regOne!32830 r!7292)))) b!6224487))

(declare-fun e!3788809 () Bool)

(assert (=> b!6223845 (= tp!1736021 e!3788809)))

(declare-fun b!6224489 () Bool)

(declare-fun tp!1736137 () Bool)

(declare-fun tp!1736136 () Bool)

(assert (=> b!6224489 (= e!3788809 (and tp!1736137 tp!1736136))))

(declare-fun b!6224488 () Bool)

(assert (=> b!6224488 (= e!3788809 tp_is_empty!41571)))

(declare-fun b!6224490 () Bool)

(declare-fun tp!1736138 () Bool)

(assert (=> b!6224490 (= e!3788809 tp!1736138)))

(declare-fun b!6224491 () Bool)

(declare-fun tp!1736135 () Bool)

(declare-fun tp!1736139 () Bool)

(assert (=> b!6224491 (= e!3788809 (and tp!1736135 tp!1736139))))

(assert (= (and b!6223845 ((_ is ElementMatch!16159) (regOne!32831 (regOne!32830 r!7292)))) b!6224488))

(assert (= (and b!6223845 ((_ is Concat!25004) (regOne!32831 (regOne!32830 r!7292)))) b!6224489))

(assert (= (and b!6223845 ((_ is Star!16159) (regOne!32831 (regOne!32830 r!7292)))) b!6224490))

(assert (= (and b!6223845 ((_ is Union!16159) (regOne!32831 (regOne!32830 r!7292)))) b!6224491))

(declare-fun e!3788810 () Bool)

(assert (=> b!6223845 (= tp!1736025 e!3788810)))

(declare-fun b!6224493 () Bool)

(declare-fun tp!1736142 () Bool)

(declare-fun tp!1736141 () Bool)

(assert (=> b!6224493 (= e!3788810 (and tp!1736142 tp!1736141))))

(declare-fun b!6224492 () Bool)

(assert (=> b!6224492 (= e!3788810 tp_is_empty!41571)))

(declare-fun b!6224494 () Bool)

(declare-fun tp!1736143 () Bool)

(assert (=> b!6224494 (= e!3788810 tp!1736143)))

(declare-fun b!6224495 () Bool)

(declare-fun tp!1736140 () Bool)

(declare-fun tp!1736144 () Bool)

(assert (=> b!6224495 (= e!3788810 (and tp!1736140 tp!1736144))))

(assert (= (and b!6223845 ((_ is ElementMatch!16159) (regTwo!32831 (regOne!32830 r!7292)))) b!6224492))

(assert (= (and b!6223845 ((_ is Concat!25004) (regTwo!32831 (regOne!32830 r!7292)))) b!6224493))

(assert (= (and b!6223845 ((_ is Star!16159) (regTwo!32831 (regOne!32830 r!7292)))) b!6224494))

(assert (= (and b!6223845 ((_ is Union!16159) (regTwo!32831 (regOne!32830 r!7292)))) b!6224495))

(declare-fun e!3788811 () Bool)

(assert (=> b!6223858 (= tp!1736042 e!3788811)))

(declare-fun b!6224497 () Bool)

(declare-fun tp!1736147 () Bool)

(declare-fun tp!1736146 () Bool)

(assert (=> b!6224497 (= e!3788811 (and tp!1736147 tp!1736146))))

(declare-fun b!6224496 () Bool)

(assert (=> b!6224496 (= e!3788811 tp_is_empty!41571)))

(declare-fun b!6224498 () Bool)

(declare-fun tp!1736148 () Bool)

(assert (=> b!6224498 (= e!3788811 tp!1736148)))

(declare-fun b!6224499 () Bool)

(declare-fun tp!1736145 () Bool)

(declare-fun tp!1736149 () Bool)

(assert (=> b!6224499 (= e!3788811 (and tp!1736145 tp!1736149))))

(assert (= (and b!6223858 ((_ is ElementMatch!16159) (reg!16488 (reg!16488 r!7292)))) b!6224496))

(assert (= (and b!6223858 ((_ is Concat!25004) (reg!16488 (reg!16488 r!7292)))) b!6224497))

(assert (= (and b!6223858 ((_ is Star!16159) (reg!16488 (reg!16488 r!7292)))) b!6224498))

(assert (= (and b!6223858 ((_ is Union!16159) (reg!16488 (reg!16488 r!7292)))) b!6224499))

(declare-fun e!3788819 () Bool)

(assert (=> b!6223867 (= tp!1736049 e!3788819)))

(declare-fun b!6224504 () Bool)

(declare-fun tp!1736152 () Bool)

(declare-fun tp!1736151 () Bool)

(assert (=> b!6224504 (= e!3788819 (and tp!1736152 tp!1736151))))

(declare-fun b!6224502 () Bool)

(assert (=> b!6224502 (= e!3788819 tp_is_empty!41571)))

(declare-fun b!6224506 () Bool)

(declare-fun tp!1736153 () Bool)

(assert (=> b!6224506 (= e!3788819 tp!1736153)))

(declare-fun b!6224508 () Bool)

(declare-fun tp!1736150 () Bool)

(declare-fun tp!1736154 () Bool)

(assert (=> b!6224508 (= e!3788819 (and tp!1736150 tp!1736154))))

(assert (= (and b!6223867 ((_ is ElementMatch!16159) (regOne!32831 (regTwo!32831 r!7292)))) b!6224502))

(assert (= (and b!6223867 ((_ is Concat!25004) (regOne!32831 (regTwo!32831 r!7292)))) b!6224504))

(assert (= (and b!6223867 ((_ is Star!16159) (regOne!32831 (regTwo!32831 r!7292)))) b!6224506))

(assert (= (and b!6223867 ((_ is Union!16159) (regOne!32831 (regTwo!32831 r!7292)))) b!6224508))

(declare-fun e!3788820 () Bool)

(assert (=> b!6223867 (= tp!1736053 e!3788820)))

(declare-fun b!6224519 () Bool)

(declare-fun tp!1736157 () Bool)

(declare-fun tp!1736156 () Bool)

(assert (=> b!6224519 (= e!3788820 (and tp!1736157 tp!1736156))))

(declare-fun b!6224518 () Bool)

(assert (=> b!6224518 (= e!3788820 tp_is_empty!41571)))

(declare-fun b!6224520 () Bool)

(declare-fun tp!1736158 () Bool)

(assert (=> b!6224520 (= e!3788820 tp!1736158)))

(declare-fun b!6224521 () Bool)

(declare-fun tp!1736155 () Bool)

(declare-fun tp!1736159 () Bool)

(assert (=> b!6224521 (= e!3788820 (and tp!1736155 tp!1736159))))

(assert (= (and b!6223867 ((_ is ElementMatch!16159) (regTwo!32831 (regTwo!32831 r!7292)))) b!6224518))

(assert (= (and b!6223867 ((_ is Concat!25004) (regTwo!32831 (regTwo!32831 r!7292)))) b!6224519))

(assert (= (and b!6223867 ((_ is Star!16159) (regTwo!32831 (regTwo!32831 r!7292)))) b!6224520))

(assert (= (and b!6223867 ((_ is Union!16159) (regTwo!32831 (regTwo!32831 r!7292)))) b!6224521))

(declare-fun e!3788821 () Bool)

(assert (=> b!6223857 (= tp!1736041 e!3788821)))

(declare-fun b!6224523 () Bool)

(declare-fun tp!1736162 () Bool)

(declare-fun tp!1736161 () Bool)

(assert (=> b!6224523 (= e!3788821 (and tp!1736162 tp!1736161))))

(declare-fun b!6224522 () Bool)

(assert (=> b!6224522 (= e!3788821 tp_is_empty!41571)))

(declare-fun b!6224524 () Bool)

(declare-fun tp!1736163 () Bool)

(assert (=> b!6224524 (= e!3788821 tp!1736163)))

(declare-fun b!6224525 () Bool)

(declare-fun tp!1736160 () Bool)

(declare-fun tp!1736164 () Bool)

(assert (=> b!6224525 (= e!3788821 (and tp!1736160 tp!1736164))))

(assert (= (and b!6223857 ((_ is ElementMatch!16159) (regOne!32830 (reg!16488 r!7292)))) b!6224522))

(assert (= (and b!6223857 ((_ is Concat!25004) (regOne!32830 (reg!16488 r!7292)))) b!6224523))

(assert (= (and b!6223857 ((_ is Star!16159) (regOne!32830 (reg!16488 r!7292)))) b!6224524))

(assert (= (and b!6223857 ((_ is Union!16159) (regOne!32830 (reg!16488 r!7292)))) b!6224525))

(declare-fun e!3788822 () Bool)

(assert (=> b!6223857 (= tp!1736040 e!3788822)))

(declare-fun b!6224527 () Bool)

(declare-fun tp!1736167 () Bool)

(declare-fun tp!1736166 () Bool)

(assert (=> b!6224527 (= e!3788822 (and tp!1736167 tp!1736166))))

(declare-fun b!6224526 () Bool)

(assert (=> b!6224526 (= e!3788822 tp_is_empty!41571)))

(declare-fun b!6224528 () Bool)

(declare-fun tp!1736168 () Bool)

(assert (=> b!6224528 (= e!3788822 tp!1736168)))

(declare-fun b!6224529 () Bool)

(declare-fun tp!1736165 () Bool)

(declare-fun tp!1736169 () Bool)

(assert (=> b!6224529 (= e!3788822 (and tp!1736165 tp!1736169))))

(assert (= (and b!6223857 ((_ is ElementMatch!16159) (regTwo!32830 (reg!16488 r!7292)))) b!6224526))

(assert (= (and b!6223857 ((_ is Concat!25004) (regTwo!32830 (reg!16488 r!7292)))) b!6224527))

(assert (= (and b!6223857 ((_ is Star!16159) (regTwo!32830 (reg!16488 r!7292)))) b!6224528))

(assert (= (and b!6223857 ((_ is Union!16159) (regTwo!32830 (reg!16488 r!7292)))) b!6224529))

(declare-fun e!3788823 () Bool)

(assert (=> b!6223859 (= tp!1736039 e!3788823)))

(declare-fun b!6224531 () Bool)

(declare-fun tp!1736172 () Bool)

(declare-fun tp!1736171 () Bool)

(assert (=> b!6224531 (= e!3788823 (and tp!1736172 tp!1736171))))

(declare-fun b!6224530 () Bool)

(assert (=> b!6224530 (= e!3788823 tp_is_empty!41571)))

(declare-fun b!6224532 () Bool)

(declare-fun tp!1736173 () Bool)

(assert (=> b!6224532 (= e!3788823 tp!1736173)))

(declare-fun b!6224533 () Bool)

(declare-fun tp!1736170 () Bool)

(declare-fun tp!1736174 () Bool)

(assert (=> b!6224533 (= e!3788823 (and tp!1736170 tp!1736174))))

(assert (= (and b!6223859 ((_ is ElementMatch!16159) (regOne!32831 (reg!16488 r!7292)))) b!6224530))

(assert (= (and b!6223859 ((_ is Concat!25004) (regOne!32831 (reg!16488 r!7292)))) b!6224531))

(assert (= (and b!6223859 ((_ is Star!16159) (regOne!32831 (reg!16488 r!7292)))) b!6224532))

(assert (= (and b!6223859 ((_ is Union!16159) (regOne!32831 (reg!16488 r!7292)))) b!6224533))

(declare-fun e!3788824 () Bool)

(assert (=> b!6223859 (= tp!1736043 e!3788824)))

(declare-fun b!6224535 () Bool)

(declare-fun tp!1736177 () Bool)

(declare-fun tp!1736176 () Bool)

(assert (=> b!6224535 (= e!3788824 (and tp!1736177 tp!1736176))))

(declare-fun b!6224534 () Bool)

(assert (=> b!6224534 (= e!3788824 tp_is_empty!41571)))

(declare-fun b!6224536 () Bool)

(declare-fun tp!1736178 () Bool)

(assert (=> b!6224536 (= e!3788824 tp!1736178)))

(declare-fun b!6224537 () Bool)

(declare-fun tp!1736175 () Bool)

(declare-fun tp!1736179 () Bool)

(assert (=> b!6224537 (= e!3788824 (and tp!1736175 tp!1736179))))

(assert (= (and b!6223859 ((_ is ElementMatch!16159) (regTwo!32831 (reg!16488 r!7292)))) b!6224534))

(assert (= (and b!6223859 ((_ is Concat!25004) (regTwo!32831 (reg!16488 r!7292)))) b!6224535))

(assert (= (and b!6223859 ((_ is Star!16159) (regTwo!32831 (reg!16488 r!7292)))) b!6224536))

(assert (= (and b!6223859 ((_ is Union!16159) (regTwo!32831 (reg!16488 r!7292)))) b!6224537))

(declare-fun e!3788825 () Bool)

(assert (=> b!6223843 (= tp!1736023 e!3788825)))

(declare-fun b!6224539 () Bool)

(declare-fun tp!1736182 () Bool)

(declare-fun tp!1736181 () Bool)

(assert (=> b!6224539 (= e!3788825 (and tp!1736182 tp!1736181))))

(declare-fun b!6224538 () Bool)

(assert (=> b!6224538 (= e!3788825 tp_is_empty!41571)))

(declare-fun b!6224540 () Bool)

(declare-fun tp!1736183 () Bool)

(assert (=> b!6224540 (= e!3788825 tp!1736183)))

(declare-fun b!6224541 () Bool)

(declare-fun tp!1736180 () Bool)

(declare-fun tp!1736184 () Bool)

(assert (=> b!6224541 (= e!3788825 (and tp!1736180 tp!1736184))))

(assert (= (and b!6223843 ((_ is ElementMatch!16159) (regOne!32830 (regOne!32830 r!7292)))) b!6224538))

(assert (= (and b!6223843 ((_ is Concat!25004) (regOne!32830 (regOne!32830 r!7292)))) b!6224539))

(assert (= (and b!6223843 ((_ is Star!16159) (regOne!32830 (regOne!32830 r!7292)))) b!6224540))

(assert (= (and b!6223843 ((_ is Union!16159) (regOne!32830 (regOne!32830 r!7292)))) b!6224541))

(declare-fun e!3788826 () Bool)

(assert (=> b!6223843 (= tp!1736022 e!3788826)))

(declare-fun b!6224543 () Bool)

(declare-fun tp!1736187 () Bool)

(declare-fun tp!1736186 () Bool)

(assert (=> b!6224543 (= e!3788826 (and tp!1736187 tp!1736186))))

(declare-fun b!6224542 () Bool)

(assert (=> b!6224542 (= e!3788826 tp_is_empty!41571)))

(declare-fun b!6224544 () Bool)

(declare-fun tp!1736188 () Bool)

(assert (=> b!6224544 (= e!3788826 tp!1736188)))

(declare-fun b!6224545 () Bool)

(declare-fun tp!1736185 () Bool)

(declare-fun tp!1736189 () Bool)

(assert (=> b!6224545 (= e!3788826 (and tp!1736185 tp!1736189))))

(assert (= (and b!6223843 ((_ is ElementMatch!16159) (regTwo!32830 (regOne!32830 r!7292)))) b!6224542))

(assert (= (and b!6223843 ((_ is Concat!25004) (regTwo!32830 (regOne!32830 r!7292)))) b!6224543))

(assert (= (and b!6223843 ((_ is Star!16159) (regTwo!32830 (regOne!32830 r!7292)))) b!6224544))

(assert (= (and b!6223843 ((_ is Union!16159) (regTwo!32830 (regOne!32830 r!7292)))) b!6224545))

(declare-fun e!3788827 () Bool)

(assert (=> b!6223866 (= tp!1736052 e!3788827)))

(declare-fun b!6224547 () Bool)

(declare-fun tp!1736192 () Bool)

(declare-fun tp!1736191 () Bool)

(assert (=> b!6224547 (= e!3788827 (and tp!1736192 tp!1736191))))

(declare-fun b!6224546 () Bool)

(assert (=> b!6224546 (= e!3788827 tp_is_empty!41571)))

(declare-fun b!6224548 () Bool)

(declare-fun tp!1736193 () Bool)

(assert (=> b!6224548 (= e!3788827 tp!1736193)))

(declare-fun b!6224549 () Bool)

(declare-fun tp!1736190 () Bool)

(declare-fun tp!1736194 () Bool)

(assert (=> b!6224549 (= e!3788827 (and tp!1736190 tp!1736194))))

(assert (= (and b!6223866 ((_ is ElementMatch!16159) (reg!16488 (regTwo!32831 r!7292)))) b!6224546))

(assert (= (and b!6223866 ((_ is Concat!25004) (reg!16488 (regTwo!32831 r!7292)))) b!6224547))

(assert (= (and b!6223866 ((_ is Star!16159) (reg!16488 (regTwo!32831 r!7292)))) b!6224548))

(assert (= (and b!6223866 ((_ is Union!16159) (reg!16488 (regTwo!32831 r!7292)))) b!6224549))

(declare-fun e!3788828 () Bool)

(assert (=> b!6223865 (= tp!1736051 e!3788828)))

(declare-fun b!6224551 () Bool)

(declare-fun tp!1736197 () Bool)

(declare-fun tp!1736196 () Bool)

(assert (=> b!6224551 (= e!3788828 (and tp!1736197 tp!1736196))))

(declare-fun b!6224550 () Bool)

(assert (=> b!6224550 (= e!3788828 tp_is_empty!41571)))

(declare-fun b!6224552 () Bool)

(declare-fun tp!1736198 () Bool)

(assert (=> b!6224552 (= e!3788828 tp!1736198)))

(declare-fun b!6224553 () Bool)

(declare-fun tp!1736195 () Bool)

(declare-fun tp!1736199 () Bool)

(assert (=> b!6224553 (= e!3788828 (and tp!1736195 tp!1736199))))

(assert (= (and b!6223865 ((_ is ElementMatch!16159) (regOne!32830 (regTwo!32831 r!7292)))) b!6224550))

(assert (= (and b!6223865 ((_ is Concat!25004) (regOne!32830 (regTwo!32831 r!7292)))) b!6224551))

(assert (= (and b!6223865 ((_ is Star!16159) (regOne!32830 (regTwo!32831 r!7292)))) b!6224552))

(assert (= (and b!6223865 ((_ is Union!16159) (regOne!32830 (regTwo!32831 r!7292)))) b!6224553))

(declare-fun e!3788829 () Bool)

(assert (=> b!6223865 (= tp!1736050 e!3788829)))

(declare-fun b!6224555 () Bool)

(declare-fun tp!1736202 () Bool)

(declare-fun tp!1736201 () Bool)

(assert (=> b!6224555 (= e!3788829 (and tp!1736202 tp!1736201))))

(declare-fun b!6224554 () Bool)

(assert (=> b!6224554 (= e!3788829 tp_is_empty!41571)))

(declare-fun b!6224556 () Bool)

(declare-fun tp!1736203 () Bool)

(assert (=> b!6224556 (= e!3788829 tp!1736203)))

(declare-fun b!6224557 () Bool)

(declare-fun tp!1736200 () Bool)

(declare-fun tp!1736204 () Bool)

(assert (=> b!6224557 (= e!3788829 (and tp!1736200 tp!1736204))))

(assert (= (and b!6223865 ((_ is ElementMatch!16159) (regTwo!32830 (regTwo!32831 r!7292)))) b!6224554))

(assert (= (and b!6223865 ((_ is Concat!25004) (regTwo!32830 (regTwo!32831 r!7292)))) b!6224555))

(assert (= (and b!6223865 ((_ is Star!16159) (regTwo!32830 (regTwo!32831 r!7292)))) b!6224556))

(assert (= (and b!6223865 ((_ is Union!16159) (regTwo!32830 (regTwo!32831 r!7292)))) b!6224557))

(declare-fun b!6224558 () Bool)

(declare-fun e!3788830 () Bool)

(declare-fun tp!1736205 () Bool)

(declare-fun tp!1736206 () Bool)

(assert (=> b!6224558 (= e!3788830 (and tp!1736205 tp!1736206))))

(assert (=> b!6223880 (= tp!1736061 e!3788830)))

(assert (= (and b!6223880 ((_ is Cons!64652) (exprs!6043 (h!71102 (t!378312 zl!343))))) b!6224558))

(declare-fun e!3788831 () Bool)

(assert (=> b!6223850 (= tp!1736031 e!3788831)))

(declare-fun b!6224560 () Bool)

(declare-fun tp!1736209 () Bool)

(declare-fun tp!1736208 () Bool)

(assert (=> b!6224560 (= e!3788831 (and tp!1736209 tp!1736208))))

(declare-fun b!6224559 () Bool)

(assert (=> b!6224559 (= e!3788831 tp_is_empty!41571)))

(declare-fun b!6224561 () Bool)

(declare-fun tp!1736210 () Bool)

(assert (=> b!6224561 (= e!3788831 tp!1736210)))

(declare-fun b!6224562 () Bool)

(declare-fun tp!1736207 () Bool)

(declare-fun tp!1736211 () Bool)

(assert (=> b!6224562 (= e!3788831 (and tp!1736207 tp!1736211))))

(assert (= (and b!6223850 ((_ is ElementMatch!16159) (h!71100 (exprs!6043 setElem!42278)))) b!6224559))

(assert (= (and b!6223850 ((_ is Concat!25004) (h!71100 (exprs!6043 setElem!42278)))) b!6224560))

(assert (= (and b!6223850 ((_ is Star!16159) (h!71100 (exprs!6043 setElem!42278)))) b!6224561))

(assert (= (and b!6223850 ((_ is Union!16159) (h!71100 (exprs!6043 setElem!42278)))) b!6224562))

(declare-fun b!6224563 () Bool)

(declare-fun e!3788832 () Bool)

(declare-fun tp!1736212 () Bool)

(declare-fun tp!1736213 () Bool)

(assert (=> b!6224563 (= e!3788832 (and tp!1736212 tp!1736213))))

(assert (=> b!6223850 (= tp!1736032 e!3788832)))

(assert (= (and b!6223850 ((_ is Cons!64652) (t!378310 (exprs!6043 setElem!42278)))) b!6224563))

(declare-fun b!6224565 () Bool)

(declare-fun e!3788834 () Bool)

(declare-fun tp!1736214 () Bool)

(assert (=> b!6224565 (= e!3788834 tp!1736214)))

(declare-fun b!6224564 () Bool)

(declare-fun e!3788833 () Bool)

(declare-fun tp!1736215 () Bool)

(assert (=> b!6224564 (= e!3788833 (and (inv!83644 (h!71102 (t!378312 (t!378312 zl!343)))) e!3788834 tp!1736215))))

(assert (=> b!6223879 (= tp!1736062 e!3788833)))

(assert (= b!6224564 b!6224565))

(assert (= (and b!6223879 ((_ is Cons!64654) (t!378312 (t!378312 zl!343)))) b!6224564))

(declare-fun m!7051760 () Bool)

(assert (=> b!6224564 m!7051760))

(declare-fun e!3788835 () Bool)

(assert (=> b!6223849 (= tp!1736026 e!3788835)))

(declare-fun b!6224567 () Bool)

(declare-fun tp!1736218 () Bool)

(declare-fun tp!1736217 () Bool)

(assert (=> b!6224567 (= e!3788835 (and tp!1736218 tp!1736217))))

(declare-fun b!6224566 () Bool)

(assert (=> b!6224566 (= e!3788835 tp_is_empty!41571)))

(declare-fun b!6224568 () Bool)

(declare-fun tp!1736219 () Bool)

(assert (=> b!6224568 (= e!3788835 tp!1736219)))

(declare-fun b!6224569 () Bool)

(declare-fun tp!1736216 () Bool)

(declare-fun tp!1736220 () Bool)

(assert (=> b!6224569 (= e!3788835 (and tp!1736216 tp!1736220))))

(assert (= (and b!6223849 ((_ is ElementMatch!16159) (regOne!32831 (regTwo!32830 r!7292)))) b!6224566))

(assert (= (and b!6223849 ((_ is Concat!25004) (regOne!32831 (regTwo!32830 r!7292)))) b!6224567))

(assert (= (and b!6223849 ((_ is Star!16159) (regOne!32831 (regTwo!32830 r!7292)))) b!6224568))

(assert (= (and b!6223849 ((_ is Union!16159) (regOne!32831 (regTwo!32830 r!7292)))) b!6224569))

(declare-fun e!3788836 () Bool)

(assert (=> b!6223849 (= tp!1736030 e!3788836)))

(declare-fun b!6224571 () Bool)

(declare-fun tp!1736223 () Bool)

(declare-fun tp!1736222 () Bool)

(assert (=> b!6224571 (= e!3788836 (and tp!1736223 tp!1736222))))

(declare-fun b!6224570 () Bool)

(assert (=> b!6224570 (= e!3788836 tp_is_empty!41571)))

(declare-fun b!6224572 () Bool)

(declare-fun tp!1736224 () Bool)

(assert (=> b!6224572 (= e!3788836 tp!1736224)))

(declare-fun b!6224573 () Bool)

(declare-fun tp!1736221 () Bool)

(declare-fun tp!1736225 () Bool)

(assert (=> b!6224573 (= e!3788836 (and tp!1736221 tp!1736225))))

(assert (= (and b!6223849 ((_ is ElementMatch!16159) (regTwo!32831 (regTwo!32830 r!7292)))) b!6224570))

(assert (= (and b!6223849 ((_ is Concat!25004) (regTwo!32831 (regTwo!32830 r!7292)))) b!6224571))

(assert (= (and b!6223849 ((_ is Star!16159) (regTwo!32831 (regTwo!32830 r!7292)))) b!6224572))

(assert (= (and b!6223849 ((_ is Union!16159) (regTwo!32831 (regTwo!32830 r!7292)))) b!6224573))

(declare-fun b!6224574 () Bool)

(declare-fun e!3788837 () Bool)

(declare-fun tp!1736226 () Bool)

(assert (=> b!6224574 (= e!3788837 (and tp_is_empty!41571 tp!1736226))))

(assert (=> b!6223872 (= tp!1736056 e!3788837)))

(assert (= (and b!6223872 ((_ is Cons!64653) (t!378311 (t!378311 s!2326)))) b!6224574))

(declare-fun b_lambda!236645 () Bool)

(assert (= b_lambda!236629 (or d!1950907 b_lambda!236645)))

(declare-fun bs!1543428 () Bool)

(declare-fun d!1951247 () Bool)

(assert (= bs!1543428 (and d!1951247 d!1950907)))

(assert (=> bs!1543428 (= (dynLambda!25512 lambda!340238 (h!71100 (exprs!6043 (h!71102 zl!343)))) (validRegex!7895 (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(declare-fun m!7051762 () Bool)

(assert (=> bs!1543428 m!7051762))

(assert (=> b!6223984 d!1951247))

(declare-fun b_lambda!236647 () Bool)

(assert (= b_lambda!236631 (or b!6223098 b_lambda!236647)))

(assert (=> d!1951113 d!1950953))

(declare-fun b_lambda!236649 () Bool)

(assert (= b_lambda!236627 (or d!1950863 b_lambda!236649)))

(declare-fun bs!1543429 () Bool)

(declare-fun d!1951251 () Bool)

(assert (= bs!1543429 (and d!1951251 d!1950863)))

(assert (=> bs!1543429 (= (dynLambda!25512 lambda!340216 (h!71100 (exprs!6043 setElem!42278))) (validRegex!7895 (h!71100 (exprs!6043 setElem!42278))))))

(declare-fun m!7051764 () Bool)

(assert (=> bs!1543429 m!7051764))

(assert (=> b!6223915 d!1951251))

(declare-fun b_lambda!236651 () Bool)

(assert (= b_lambda!236633 (or b!6223098 b_lambda!236651)))

(assert (=> d!1951121 d!1950949))

(declare-fun b_lambda!236653 () Bool)

(assert (= b_lambda!236639 (or d!1950947 b_lambda!236653)))

(declare-fun bs!1543430 () Bool)

(declare-fun d!1951253 () Bool)

(assert (= bs!1543430 (and d!1951253 d!1950947)))

(assert (=> bs!1543430 (= (dynLambda!25512 lambda!340245 (h!71100 (exprs!6043 (h!71102 zl!343)))) (validRegex!7895 (h!71100 (exprs!6043 (h!71102 zl!343)))))))

(assert (=> bs!1543430 m!7051762))

(assert (=> b!6224385 d!1951253))

(declare-fun b_lambda!236655 () Bool)

(assert (= b_lambda!236641 (or b!6223098 b_lambda!236655)))

(assert (=> d!1951199 d!1950951))

(declare-fun b_lambda!236657 () Bool)

(assert (= b_lambda!236643 (or d!1950891 b_lambda!236657)))

(declare-fun bs!1543431 () Bool)

(declare-fun d!1951255 () Bool)

(assert (= bs!1543431 (and d!1951255 d!1950891)))

(assert (=> bs!1543431 (= (dynLambda!25512 lambda!340229 (h!71100 (unfocusZipperList!1580 zl!343))) (validRegex!7895 (h!71100 (unfocusZipperList!1580 zl!343))))))

(declare-fun m!7051766 () Bool)

(assert (=> bs!1543431 m!7051766))

(assert (=> b!6224434 d!1951255))

(declare-fun b_lambda!236659 () Bool)

(assert (= b_lambda!236637 (or d!1950893 b_lambda!236659)))

(declare-fun bs!1543432 () Bool)

(declare-fun d!1951257 () Bool)

(assert (= bs!1543432 (and d!1951257 d!1950893)))

(assert (=> bs!1543432 (= (dynLambda!25512 lambda!340232 (h!71100 lt!2345323)) (validRegex!7895 (h!71100 lt!2345323)))))

(declare-fun m!7051768 () Bool)

(assert (=> bs!1543432 m!7051768))

(assert (=> b!6224344 d!1951257))

(declare-fun b_lambda!236661 () Bool)

(assert (= b_lambda!236625 (or d!1950865 b_lambda!236661)))

(declare-fun bs!1543433 () Bool)

(declare-fun d!1951259 () Bool)

(assert (= bs!1543433 (and d!1951259 d!1950865)))

(assert (=> bs!1543433 (= (dynLambda!25512 lambda!340217 (h!71100 (exprs!6043 lt!2345243))) (validRegex!7895 (h!71100 (exprs!6043 lt!2345243))))))

(declare-fun m!7051770 () Bool)

(assert (=> bs!1543433 m!7051770))

(assert (=> b!6223885 d!1951259))

(check-sat (not bm!522731) (not bm!522618) (not bs!1543429) (not d!1951041) (not d!1951135) (not b!6224545) (not bm!522621) (not bm!522670) (not bm!522613) (not b!6224470) (not bm!522662) (not bm!522710) (not b!6224497) (not bm!522706) (not bm!522590) (not b!6224447) (not bm!522594) (not bm!522619) (not d!1951023) (not b!6224435) (not b!6224482) (not b!6224178) (not bm!522707) (not b!6224424) (not b!6224205) (not b!6223968) (not bs!1543432) (not d!1951029) (not b!6224004) (not b!6223911) (not d!1951107) (not b!6224557) (not b!6224533) (not b!6224504) (not bm!522643) (not b!6224337) (not b!6224564) (not b!6224066) (not b!6224487) (not b!6224361) (not bm!522650) (not bm!522615) (not bm!522726) (not b!6224092) (not d!1951025) (not b_lambda!236651) (not b!6223961) (not b!6224010) (not bs!1543430) (not bm!522638) (not b!6223900) (not b!6224328) (not b!6224571) (not d!1950971) (not b!6224481) (not b!6224553) (not bm!522714) (not d!1951003) (not b!6224326) (not b_lambda!236661) (not b!6224113) (not b!6224107) (not setNonEmpty!42289) (not b!6224531) (not bm!522630) (not d!1951099) (not bs!1543433) (not d!1950973) (not b!6224371) (not d!1951053) (not b!6224409) (not d!1951149) (not bm!522674) (not bm!522642) (not bm!522718) (not bm!522725) (not b!6224535) (not d!1951093) (not bm!522666) (not b!6224431) (not bm!522722) (not d!1951103) (not d!1951095) (not b!6224401) (not b!6224562) (not b!6224402) (not d!1951007) (not b!6224478) (not bm!522596) (not b!6224525) (not bm!522603) (not b!6224461) (not setNonEmpty!42290) (not bm!522672) (not d!1951031) (not b!6224023) (not d!1951021) (not b!6224567) (not d!1951193) (not d!1951011) (not b!6223993) (not b!6223899) (not bm!522588) (not b!6224414) (not bm!522730) (not setNonEmpty!42287) (not b!6223894) (not setNonEmpty!42288) (not b!6223897) (not b!6223935) (not b!6224020) (not b!6224448) (not b!6224568) (not b!6224523) (not b_lambda!236649) (not b!6224548) (not b!6224493) (not b!6224520) (not b!6224452) (not bm!522669) (not b!6224417) (not d!1951063) (not b!6224365) (not b!6224549) (not b!6224468) (not b!6224465) (not b!6224572) (not b!6224193) (not b!6223901) (not b!6224115) (not b!6224027) (not bm!522652) (not b!6224218) (not bm!522623) (not b!6224543) (not b!6224141) (not b!6224201) (not b!6224454) (not b!6223916) (not bm!522649) (not b!6224191) (not b!6224422) (not b!6224090) (not b!6224008) (not b!6224544) (not d!1951005) (not d!1951019) (not b!6224110) (not b!6223960) (not b!6224536) (not b_lambda!236657) (not b!6224352) (not b!6224560) (not b!6224021) (not b!6224552) (not b!6224019) (not bm!522673) (not b!6224506) (not b!6224498) (not bm!522675) (not b!6224381) (not d!1951059) (not b!6224556) (not b!6224329) (not b!6224179) (not b!6224220) (not b_lambda!236645) (not b!6224188) (not b!6224373) (not b!6224472) (not bm!522605) (not d!1950975) (not d!1951147) (not b_lambda!236619) (not bm!522622) (not d!1951101) (not bm!522624) (not b!6224477) (not b!6224494) (not b!6224312) (not b!6224540) (not bm!522713) (not b!6224345) (not b!6224387) (not d!1951201) (not bm!522716) (not b!6224458) (not b!6224130) (not d!1951083) (not b!6224104) (not b!6224528) (not b!6224490) (not b!6224187) (not b!6224453) (not d!1951219) (not bm!522728) (not b!6223887) (not b!6224565) (not d!1951113) (not b!6223886) (not d!1951015) (not b!6224460) (not bm!522608) (not d!1951221) (not b!6224469) (not b!6224451) (not bm!522584) (not bm!522639) (not b!6224420) (not d!1950985) (not b!6224547) (not b!6224036) (not b!6224555) (not d!1950987) (not bm!522606) (not d!1951185) (not b!6224449) (not d!1951121) (not b!6223957) (not b!6223888) (not d!1951215) (not b_lambda!236647) (not b!6224214) (not b!6224524) (not d!1950959) (not b!6224095) (not b!6224038) (not bm!522609) (not b_lambda!236655) (not b!6224040) (not b!6224215) (not bs!1543428) (not b!6223958) (not b!6224561) (not b!6224551) (not d!1950991) (not bm!522663) (not d!1951001) (not bm!522645) (not b!6224084) (not d!1951175) (not bm!522587) (not bm!522635) (not b!6224413) (not bm!522633) (not d!1951213) (not d!1950957) (not d!1951109) (not bm!522602) (not b!6224485) (not b!6224479) (not b!6224372) (not d!1951143) (not b!6224140) (not b!6224186) (not d!1951217) (not b!6224368) (not b!6223959) (not b_lambda!236623) (not b!6224529) (not b_lambda!236659) (not bm!522721) (not b_lambda!236653) (not b!6223981) (not b!6224483) (not b!6224475) (not b!6224022) (not b!6224117) (not b!6224341) (not b!6223985) (not b!6224167) (not b!6224126) (not d!1951055) (not b!6224369) (not b!6224217) (not bm!522612) (not d!1951065) (not b!6224139) (not b!6224045) (not d!1951199) (not b!6224342) (not bs!1543431) (not b!6224026) (not bm!522625) (not b!6224316) (not bm!522719) (not b!6224410) (not b!6224009) (not b!6224489) (not b!6224366) (not b!6223902) (not b!6224569) (not b!6223930) (not b!6224416) (not b!6224457) (not b!6224042) (not b_lambda!236621) (not bm!522593) (not b!6224486) (not bm!522626) (not b!6224519) (not b!6224462) (not b!6224508) (not b!6224532) (not d!1950989) (not d!1951125) (not b!6224097) (not b!6224419) (not b!6224223) (not b!6224116) (not b!6223903) (not b!6224539) (not b!6224473) (not b!6224537) (not b!6224118) (not b!6224466) (not b!6224573) (not b!6224541) (not d!1951209) (not bm!522627) (not d!1950993) (not b!6224527) (not d!1951043) (not b!6224495) (not b!6224464) (not b!6224216) (not d!1950977) (not bm!522646) (not b!6224456) (not b!6224039) (not b!6223924) (not b!6224574) tp_is_empty!41571 (not bm!522641) (not d!1951223) (not b!6224499) (not bm!522653) (not d!1951165) (not b!6224386) (not b!6224108) (not b!6224491) (not b!6224111) (not b!6224521) (not b!6224563) (not b!6223933) (not b!6224327) (not b!6224474) (not b!6224143) (not b!6224445) (not bm!522597) (not b!6224558) (not bm!522634) (not bm!522631) (not b!6224142) (not b!6224325) (not d!1951097) (not b!6224037) (not bm!522709))
(check-sat)
