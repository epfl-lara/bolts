; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288240 () Bool)

(assert start!288240)

(declare-fun b!2982955 () Bool)

(assert (=> b!2982955 true))

(assert (=> b!2982955 true))

(assert (=> b!2982955 true))

(declare-fun lambda!111300 () Int)

(declare-fun lambda!111299 () Int)

(assert (=> b!2982955 (not (= lambda!111300 lambda!111299))))

(assert (=> b!2982955 true))

(assert (=> b!2982955 true))

(assert (=> b!2982955 true))

(declare-fun b!2982947 () Bool)

(declare-datatypes ((Unit!49011 0))(
  ( (Unit!49012) )
))
(declare-fun e!1875891 () Unit!49011)

(declare-fun Unit!49013 () Unit!49011)

(assert (=> b!2982947 (= e!1875891 Unit!49013)))

(declare-fun b!2982948 () Bool)

(declare-fun e!1875886 () Bool)

(declare-fun e!1875882 () Bool)

(assert (=> b!2982948 (= e!1875886 e!1875882)))

(declare-fun res!1230180 () Bool)

(assert (=> b!2982948 (=> res!1230180 e!1875882)))

(declare-datatypes ((C!18808 0))(
  ( (C!18809 (val!11440 Int)) )
))
(declare-datatypes ((Regex!9311 0))(
  ( (ElementMatch!9311 (c!490019 C!18808)) (Concat!14632 (regOne!19134 Regex!9311) (regTwo!19134 Regex!9311)) (EmptyExpr!9311) (Star!9311 (reg!9640 Regex!9311)) (EmptyLang!9311) (Union!9311 (regOne!19135 Regex!9311) (regTwo!19135 Regex!9311)) )
))
(declare-fun lt!1038624 () Regex!9311)

(declare-datatypes ((List!35176 0))(
  ( (Nil!35052) (Cons!35052 (h!40472 C!18808) (t!234241 List!35176)) )
))
(declare-datatypes ((tuple2!33960 0))(
  ( (tuple2!33961 (_1!20112 List!35176) (_2!20112 List!35176)) )
))
(declare-fun lt!1038627 () tuple2!33960)

(declare-fun matchR!4193 (Regex!9311 List!35176) Bool)

(assert (=> b!2982948 (= res!1230180 (not (matchR!4193 lt!1038624 (_1!20112 lt!1038627))))))

(declare-datatypes ((Option!6712 0))(
  ( (None!6711) (Some!6711 (v!34845 tuple2!33960)) )
))
(declare-fun lt!1038630 () Option!6712)

(declare-fun get!10835 (Option!6712) tuple2!33960)

(assert (=> b!2982948 (= lt!1038627 (get!10835 lt!1038630))))

(declare-fun b!2982949 () Bool)

(declare-fun lt!1038636 () Regex!9311)

(declare-fun validRegex!4044 (Regex!9311) Bool)

(assert (=> b!2982949 (= e!1875882 (validRegex!4044 lt!1038636))))

(declare-fun simplify!312 (Regex!9311) Regex!9311)

(assert (=> b!2982949 (= (matchR!4193 lt!1038636 (_2!20112 lt!1038627)) (matchR!4193 (simplify!312 lt!1038636) (_2!20112 lt!1038627)))))

(declare-fun lt!1038633 () Unit!49011)

(declare-fun lemmaSimplifySound!176 (Regex!9311 List!35176) Unit!49011)

(assert (=> b!2982949 (= lt!1038633 (lemmaSimplifySound!176 lt!1038636 (_2!20112 lt!1038627)))))

(declare-fun r!17423 () Regex!9311)

(assert (=> b!2982949 (= lt!1038636 (Star!9311 (reg!9640 r!17423)))))

(declare-fun lt!1038625 () Unit!49011)

(assert (=> b!2982949 (= lt!1038625 e!1875891)))

(declare-fun c!490018 () Bool)

(declare-fun s!11993 () List!35176)

(declare-fun size!26483 (List!35176) Int)

(assert (=> b!2982949 (= c!490018 (= (size!26483 (_2!20112 lt!1038627)) (size!26483 s!11993)))))

(assert (=> b!2982949 (matchR!4193 (reg!9640 r!17423) (_1!20112 lt!1038627))))

(declare-fun lt!1038629 () Unit!49011)

(assert (=> b!2982949 (= lt!1038629 (lemmaSimplifySound!176 (reg!9640 r!17423) (_1!20112 lt!1038627)))))

(declare-fun b!2982950 () Bool)

(declare-fun Unit!49014 () Unit!49011)

(assert (=> b!2982950 (= e!1875891 Unit!49014)))

(declare-fun lt!1038631 () Unit!49011)

(declare-fun mainMatchTheorem!1448 (Regex!9311 List!35176) Unit!49011)

(assert (=> b!2982950 (= lt!1038631 (mainMatchTheorem!1448 (reg!9640 r!17423) (_1!20112 lt!1038627)))))

(assert (=> b!2982950 false))

(declare-fun b!2982951 () Bool)

(declare-fun e!1875889 () Bool)

(declare-fun tp!949376 () Bool)

(declare-fun tp!949378 () Bool)

(assert (=> b!2982951 (= e!1875889 (and tp!949376 tp!949378))))

(declare-fun res!1230178 () Bool)

(declare-fun e!1875883 () Bool)

(assert (=> start!288240 (=> (not res!1230178) (not e!1875883))))

(assert (=> start!288240 (= res!1230178 (validRegex!4044 r!17423))))

(assert (=> start!288240 e!1875883))

(assert (=> start!288240 e!1875889))

(declare-fun e!1875888 () Bool)

(assert (=> start!288240 e!1875888))

(declare-fun b!2982952 () Bool)

(declare-fun e!1875885 () Bool)

(declare-fun e!1875884 () Bool)

(assert (=> b!2982952 (= e!1875885 e!1875884)))

(declare-fun res!1230173 () Bool)

(assert (=> b!2982952 (=> res!1230173 e!1875884)))

(declare-fun isEmptyLang!425 (Regex!9311) Bool)

(assert (=> b!2982952 (= res!1230173 (isEmptyLang!425 lt!1038624))))

(assert (=> b!2982952 (= lt!1038624 (simplify!312 (reg!9640 r!17423)))))

(declare-fun b!2982953 () Bool)

(declare-fun e!1875887 () Bool)

(declare-fun e!1875890 () Bool)

(assert (=> b!2982953 (= e!1875887 e!1875890)))

(declare-fun res!1230174 () Bool)

(assert (=> b!2982953 (=> res!1230174 e!1875890)))

(declare-fun isEmpty!19313 (List!35176) Bool)

(assert (=> b!2982953 (= res!1230174 (isEmpty!19313 s!11993))))

(declare-fun lt!1038634 () Regex!9311)

(declare-fun matchRSpec!1448 (Regex!9311 List!35176) Bool)

(assert (=> b!2982953 (matchRSpec!1448 lt!1038634 s!11993)))

(declare-fun lt!1038632 () Unit!49011)

(assert (=> b!2982953 (= lt!1038632 (mainMatchTheorem!1448 lt!1038634 s!11993))))

(declare-fun b!2982954 () Bool)

(declare-fun tp_is_empty!16185 () Bool)

(declare-fun tp!949377 () Bool)

(assert (=> b!2982954 (= e!1875888 (and tp_is_empty!16185 tp!949377))))

(assert (=> b!2982955 (= e!1875890 e!1875886)))

(declare-fun res!1230175 () Bool)

(assert (=> b!2982955 (=> res!1230175 e!1875886)))

(declare-fun lt!1038623 () Bool)

(assert (=> b!2982955 (= res!1230175 (not lt!1038623))))

(declare-fun Exists!1591 (Int) Bool)

(assert (=> b!2982955 (= (Exists!1591 lambda!111299) (Exists!1591 lambda!111300))))

(declare-fun lt!1038628 () Unit!49011)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!276 (Regex!9311 List!35176) Unit!49011)

(assert (=> b!2982955 (= lt!1038628 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!276 lt!1038624 s!11993))))

(assert (=> b!2982955 (= lt!1038623 (Exists!1591 lambda!111299))))

(declare-fun isDefined!5263 (Option!6712) Bool)

(assert (=> b!2982955 (= lt!1038623 (isDefined!5263 lt!1038630))))

(declare-fun findConcatSeparation!1106 (Regex!9311 Regex!9311 List!35176 List!35176 List!35176) Option!6712)

(assert (=> b!2982955 (= lt!1038630 (findConcatSeparation!1106 lt!1038624 lt!1038634 Nil!35052 s!11993 s!11993))))

(declare-fun lt!1038635 () Unit!49011)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!884 (Regex!9311 Regex!9311 List!35176) Unit!49011)

(assert (=> b!2982955 (= lt!1038635 (lemmaFindConcatSeparationEquivalentToExists!884 lt!1038624 lt!1038634 s!11993))))

(declare-fun b!2982956 () Bool)

(assert (=> b!2982956 (= e!1875889 tp_is_empty!16185)))

(declare-fun b!2982957 () Bool)

(declare-fun tp!949379 () Bool)

(assert (=> b!2982957 (= e!1875889 tp!949379)))

(declare-fun b!2982958 () Bool)

(declare-fun tp!949380 () Bool)

(declare-fun tp!949381 () Bool)

(assert (=> b!2982958 (= e!1875889 (and tp!949380 tp!949381))))

(declare-fun b!2982959 () Bool)

(assert (=> b!2982959 (= e!1875883 (not e!1875885))))

(declare-fun res!1230179 () Bool)

(assert (=> b!2982959 (=> res!1230179 e!1875885)))

(declare-fun lt!1038622 () Bool)

(get-info :version)

(assert (=> b!2982959 (= res!1230179 (or lt!1038622 ((_ is Concat!14632) r!17423) ((_ is Union!9311) r!17423) (not ((_ is Star!9311) r!17423))))))

(assert (=> b!2982959 (= lt!1038622 (matchRSpec!1448 r!17423 s!11993))))

(assert (=> b!2982959 (= lt!1038622 (matchR!4193 r!17423 s!11993))))

(declare-fun lt!1038626 () Unit!49011)

(assert (=> b!2982959 (= lt!1038626 (mainMatchTheorem!1448 r!17423 s!11993))))

(declare-fun b!2982960 () Bool)

(declare-fun res!1230177 () Bool)

(assert (=> b!2982960 (=> res!1230177 e!1875882)))

(assert (=> b!2982960 (= res!1230177 (not (matchR!4193 lt!1038634 (_2!20112 lt!1038627))))))

(declare-fun b!2982961 () Bool)

(assert (=> b!2982961 (= e!1875884 e!1875887)))

(declare-fun res!1230176 () Bool)

(assert (=> b!2982961 (=> res!1230176 e!1875887)))

(assert (=> b!2982961 (= res!1230176 (not (matchR!4193 lt!1038634 s!11993)))))

(assert (=> b!2982961 (= lt!1038634 (Star!9311 lt!1038624))))

(assert (= (and start!288240 res!1230178) b!2982959))

(assert (= (and b!2982959 (not res!1230179)) b!2982952))

(assert (= (and b!2982952 (not res!1230173)) b!2982961))

(assert (= (and b!2982961 (not res!1230176)) b!2982953))

(assert (= (and b!2982953 (not res!1230174)) b!2982955))

(assert (= (and b!2982955 (not res!1230175)) b!2982948))

(assert (= (and b!2982948 (not res!1230180)) b!2982960))

(assert (= (and b!2982960 (not res!1230177)) b!2982949))

(assert (= (and b!2982949 c!490018) b!2982950))

(assert (= (and b!2982949 (not c!490018)) b!2982947))

(assert (= (and start!288240 ((_ is ElementMatch!9311) r!17423)) b!2982956))

(assert (= (and start!288240 ((_ is Concat!14632) r!17423)) b!2982958))

(assert (= (and start!288240 ((_ is Star!9311) r!17423)) b!2982957))

(assert (= (and start!288240 ((_ is Union!9311) r!17423)) b!2982951))

(assert (= (and start!288240 ((_ is Cons!35052) s!11993)) b!2982954))

(declare-fun m!3343251 () Bool)

(assert (=> b!2982948 m!3343251))

(declare-fun m!3343253 () Bool)

(assert (=> b!2982948 m!3343253))

(declare-fun m!3343255 () Bool)

(assert (=> b!2982953 m!3343255))

(declare-fun m!3343257 () Bool)

(assert (=> b!2982953 m!3343257))

(declare-fun m!3343259 () Bool)

(assert (=> b!2982953 m!3343259))

(declare-fun m!3343261 () Bool)

(assert (=> b!2982960 m!3343261))

(declare-fun m!3343263 () Bool)

(assert (=> start!288240 m!3343263))

(declare-fun m!3343265 () Bool)

(assert (=> b!2982961 m!3343265))

(declare-fun m!3343267 () Bool)

(assert (=> b!2982959 m!3343267))

(declare-fun m!3343269 () Bool)

(assert (=> b!2982959 m!3343269))

(declare-fun m!3343271 () Bool)

(assert (=> b!2982959 m!3343271))

(declare-fun m!3343273 () Bool)

(assert (=> b!2982952 m!3343273))

(declare-fun m!3343275 () Bool)

(assert (=> b!2982952 m!3343275))

(declare-fun m!3343277 () Bool)

(assert (=> b!2982950 m!3343277))

(declare-fun m!3343279 () Bool)

(assert (=> b!2982949 m!3343279))

(declare-fun m!3343281 () Bool)

(assert (=> b!2982949 m!3343281))

(declare-fun m!3343283 () Bool)

(assert (=> b!2982949 m!3343283))

(declare-fun m!3343285 () Bool)

(assert (=> b!2982949 m!3343285))

(declare-fun m!3343287 () Bool)

(assert (=> b!2982949 m!3343287))

(declare-fun m!3343289 () Bool)

(assert (=> b!2982949 m!3343289))

(declare-fun m!3343291 () Bool)

(assert (=> b!2982949 m!3343291))

(declare-fun m!3343293 () Bool)

(assert (=> b!2982949 m!3343293))

(assert (=> b!2982949 m!3343289))

(declare-fun m!3343295 () Bool)

(assert (=> b!2982949 m!3343295))

(declare-fun m!3343297 () Bool)

(assert (=> b!2982955 m!3343297))

(declare-fun m!3343299 () Bool)

(assert (=> b!2982955 m!3343299))

(declare-fun m!3343301 () Bool)

(assert (=> b!2982955 m!3343301))

(declare-fun m!3343303 () Bool)

(assert (=> b!2982955 m!3343303))

(declare-fun m!3343305 () Bool)

(assert (=> b!2982955 m!3343305))

(assert (=> b!2982955 m!3343305))

(declare-fun m!3343307 () Bool)

(assert (=> b!2982955 m!3343307))

(check-sat tp_is_empty!16185 (not b!2982949) (not b!2982951) (not b!2982955) (not b!2982952) (not b!2982960) (not b!2982953) (not start!288240) (not b!2982961) (not b!2982959) (not b!2982954) (not b!2982958) (not b!2982957) (not b!2982950) (not b!2982948))
(check-sat)
