; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81230 () Bool)

(assert start!81230)

(declare-fun b!902960 () Bool)

(assert (=> b!902960 true))

(assert (=> b!902960 true))

(assert (=> b!902960 true))

(declare-fun lambda!28310 () Int)

(declare-fun lambda!28309 () Int)

(assert (=> b!902960 (not (= lambda!28310 lambda!28309))))

(assert (=> b!902960 true))

(assert (=> b!902960 true))

(assert (=> b!902960 true))

(declare-fun b!902954 () Bool)

(declare-fun res!410629 () Bool)

(declare-fun e!590073 () Bool)

(assert (=> b!902954 (=> res!410629 e!590073)))

(declare-fun lt!335171 () Bool)

(assert (=> b!902954 (= res!410629 (not lt!335171))))

(declare-fun b!902955 () Bool)

(declare-datatypes ((Unit!14367 0))(
  ( (Unit!14368) )
))
(declare-fun e!590077 () Unit!14367)

(declare-fun Unit!14369 () Unit!14367)

(assert (=> b!902955 (= e!590077 Unit!14369)))

(declare-fun lt!335166 () Unit!14367)

(declare-datatypes ((C!5320 0))(
  ( (C!5321 (val!2908 Int)) )
))
(declare-datatypes ((Regex!2375 0))(
  ( (ElementMatch!2375 (c!146274 C!5320)) (Concat!4208 (regOne!5262 Regex!2375) (regTwo!5262 Regex!2375)) (EmptyExpr!2375) (Star!2375 (reg!2704 Regex!2375)) (EmptyLang!2375) (Union!2375 (regOne!5263 Regex!2375) (regTwo!5263 Regex!2375)) )
))
(declare-fun r!15766 () Regex!2375)

(declare-datatypes ((List!9605 0))(
  ( (Nil!9589) (Cons!9589 (h!14990 C!5320) (t!100651 List!9605)) )
))
(declare-datatypes ((tuple2!10752 0))(
  ( (tuple2!10753 (_1!6202 List!9605) (_2!6202 List!9605)) )
))
(declare-fun lt!335177 () tuple2!10752)

(declare-fun mainMatchTheorem!176 (Regex!2375 List!9605) Unit!14367)

(assert (=> b!902955 (= lt!335166 (mainMatchTheorem!176 (reg!2704 r!15766) (_1!6202 lt!335177)))))

(assert (=> b!902955 false))

(declare-fun b!902956 () Bool)

(declare-fun res!410632 () Bool)

(declare-fun e!590070 () Bool)

(assert (=> b!902956 (=> res!410632 e!590070)))

(declare-fun lt!335176 () Regex!2375)

(declare-fun matchR!913 (Regex!2375 List!9605) Bool)

(assert (=> b!902956 (= res!410632 (not (matchR!913 lt!335176 (_2!6202 lt!335177))))))

(declare-fun b!902957 () Bool)

(declare-fun res!410635 () Bool)

(declare-fun e!590074 () Bool)

(assert (=> b!902957 (=> res!410635 e!590074)))

(declare-fun lt!335175 () Regex!2375)

(declare-fun validRegex!844 (Regex!2375) Bool)

(assert (=> b!902957 (= res!410635 (not (validRegex!844 lt!335175)))))

(declare-fun b!902959 () Bool)

(declare-fun e!590076 () Bool)

(declare-fun tp_is_empty!4393 () Bool)

(declare-fun tp!282933 () Bool)

(assert (=> b!902959 (= e!590076 (and tp_is_empty!4393 tp!282933))))

(declare-fun e!590071 () Bool)

(assert (=> b!902960 (= e!590071 e!590073)))

(declare-fun res!410630 () Bool)

(assert (=> b!902960 (=> res!410630 e!590073)))

(declare-fun s!10566 () List!9605)

(declare-fun isEmpty!5796 (List!9605) Bool)

(assert (=> b!902960 (= res!410630 (isEmpty!5796 s!10566))))

(declare-fun Exists!152 (Int) Bool)

(assert (=> b!902960 (= (Exists!152 lambda!28309) (Exists!152 lambda!28310))))

(declare-fun lt!335168 () Unit!14367)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!44 (Regex!2375 List!9605) Unit!14367)

(assert (=> b!902960 (= lt!335168 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!44 (reg!2704 r!15766) s!10566))))

(assert (=> b!902960 (= lt!335171 (Exists!152 lambda!28309))))

(declare-datatypes ((Option!2018 0))(
  ( (None!2017) (Some!2017 (v!19434 tuple2!10752)) )
))
(declare-fun lt!335167 () Option!2018)

(declare-fun isDefined!1660 (Option!2018) Bool)

(assert (=> b!902960 (= lt!335171 (isDefined!1660 lt!335167))))

(declare-fun findConcatSeparation!124 (Regex!2375 Regex!2375 List!9605 List!9605 List!9605) Option!2018)

(assert (=> b!902960 (= lt!335167 (findConcatSeparation!124 (reg!2704 r!15766) lt!335176 Nil!9589 s!10566 s!10566))))

(declare-fun lt!335162 () Unit!14367)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!124 (Regex!2375 Regex!2375 List!9605) Unit!14367)

(assert (=> b!902960 (= lt!335162 (lemmaFindConcatSeparationEquivalentToExists!124 (reg!2704 r!15766) lt!335176 s!10566))))

(assert (=> b!902960 (= lt!335176 (Star!2375 (reg!2704 r!15766)))))

(declare-fun b!902961 () Bool)

(assert (=> b!902961 (= e!590073 e!590070)))

(declare-fun res!410631 () Bool)

(assert (=> b!902961 (=> res!410631 e!590070)))

(assert (=> b!902961 (= res!410631 (not (matchR!913 (reg!2704 r!15766) (_1!6202 lt!335177))))))

(declare-fun get!3061 (Option!2018) tuple2!10752)

(assert (=> b!902961 (= lt!335177 (get!3061 lt!335167))))

(declare-fun b!902962 () Bool)

(declare-fun res!410633 () Bool)

(assert (=> b!902962 (=> res!410633 e!590074)))

(assert (=> b!902962 (= res!410633 (not (matchR!913 lt!335175 (_2!6202 lt!335177))))))

(declare-fun b!902963 () Bool)

(declare-fun e!590075 () Bool)

(declare-fun tp!282931 () Bool)

(declare-fun tp!282934 () Bool)

(assert (=> b!902963 (= e!590075 (and tp!282931 tp!282934))))

(declare-fun b!902964 () Bool)

(declare-fun tp!282935 () Bool)

(declare-fun tp!282936 () Bool)

(assert (=> b!902964 (= e!590075 (and tp!282935 tp!282936))))

(declare-fun b!902965 () Bool)

(declare-fun Unit!14370 () Unit!14367)

(assert (=> b!902965 (= e!590077 Unit!14370)))

(declare-fun b!902966 () Bool)

(assert (=> b!902966 (= e!590075 tp_is_empty!4393)))

(declare-fun b!902958 () Bool)

(assert (=> b!902958 (= e!590070 e!590074)))

(declare-fun res!410634 () Bool)

(assert (=> b!902958 (=> res!410634 e!590074)))

(declare-fun lt!335174 () Regex!2375)

(assert (=> b!902958 (= res!410634 (not (= lt!335174 lt!335175)))))

(declare-fun lt!335164 () Regex!2375)

(assert (=> b!902958 (= lt!335175 (Star!2375 lt!335164))))

(assert (=> b!902958 (matchR!913 lt!335174 (_2!6202 lt!335177))))

(declare-fun removeUselessConcat!88 (Regex!2375) Regex!2375)

(assert (=> b!902958 (= lt!335174 (removeUselessConcat!88 lt!335176))))

(declare-fun lt!335169 () Unit!14367)

(declare-fun lemmaRemoveUselessConcatSound!80 (Regex!2375 List!9605) Unit!14367)

(assert (=> b!902958 (= lt!335169 (lemmaRemoveUselessConcatSound!80 lt!335176 (_2!6202 lt!335177)))))

(declare-fun lt!335172 () Unit!14367)

(assert (=> b!902958 (= lt!335172 e!590077)))

(declare-fun c!146273 () Bool)

(declare-fun size!7880 (List!9605) Int)

(assert (=> b!902958 (= c!146273 (= (size!7880 (_2!6202 lt!335177)) (size!7880 s!10566)))))

(assert (=> b!902958 (matchR!913 lt!335164 (_1!6202 lt!335177))))

(assert (=> b!902958 (= lt!335164 (removeUselessConcat!88 (reg!2704 r!15766)))))

(declare-fun lt!335173 () Unit!14367)

(assert (=> b!902958 (= lt!335173 (lemmaRemoveUselessConcatSound!80 (reg!2704 r!15766) (_1!6202 lt!335177)))))

(declare-fun res!410628 () Bool)

(declare-fun e!590072 () Bool)

(assert (=> start!81230 (=> (not res!410628) (not e!590072))))

(assert (=> start!81230 (= res!410628 (validRegex!844 r!15766))))

(assert (=> start!81230 e!590072))

(assert (=> start!81230 e!590075))

(assert (=> start!81230 e!590076))

(declare-fun b!902967 () Bool)

(assert (=> b!902967 (= e!590072 (not e!590071))))

(declare-fun res!410636 () Bool)

(assert (=> b!902967 (=> res!410636 e!590071)))

(declare-fun lt!335165 () Bool)

(get-info :version)

(assert (=> b!902967 (= res!410636 (or (not lt!335165) (and ((_ is Concat!4208) r!15766) ((_ is EmptyExpr!2375) (regOne!5262 r!15766))) (and ((_ is Concat!4208) r!15766) ((_ is EmptyExpr!2375) (regTwo!5262 r!15766))) ((_ is Concat!4208) r!15766) ((_ is Union!2375) r!15766) (not ((_ is Star!2375) r!15766))))))

(declare-fun matchRSpec!176 (Regex!2375 List!9605) Bool)

(assert (=> b!902967 (= lt!335165 (matchRSpec!176 r!15766 s!10566))))

(assert (=> b!902967 (= lt!335165 (matchR!913 r!15766 s!10566))))

(declare-fun lt!335163 () Unit!14367)

(assert (=> b!902967 (= lt!335163 (mainMatchTheorem!176 r!15766 s!10566))))

(declare-fun b!902968 () Bool)

(declare-fun tp!282932 () Bool)

(assert (=> b!902968 (= e!590075 tp!282932)))

(declare-fun b!902969 () Bool)

(assert (=> b!902969 (= e!590074 (validRegex!844 (removeUselessConcat!88 r!15766)))))

(declare-fun ++!2513 (List!9605 List!9605) List!9605)

(assert (=> b!902969 (matchR!913 lt!335175 (++!2513 (_1!6202 lt!335177) (_2!6202 lt!335177)))))

(declare-fun lt!335170 () Unit!14367)

(declare-fun lemmaStarApp!4 (Regex!2375 List!9605 List!9605) Unit!14367)

(assert (=> b!902969 (= lt!335170 (lemmaStarApp!4 lt!335164 (_1!6202 lt!335177) (_2!6202 lt!335177)))))

(assert (= (and start!81230 res!410628) b!902967))

(assert (= (and b!902967 (not res!410636)) b!902960))

(assert (= (and b!902960 (not res!410630)) b!902954))

(assert (= (and b!902954 (not res!410629)) b!902961))

(assert (= (and b!902961 (not res!410631)) b!902956))

(assert (= (and b!902956 (not res!410632)) b!902958))

(assert (= (and b!902958 c!146273) b!902955))

(assert (= (and b!902958 (not c!146273)) b!902965))

(assert (= (and b!902958 (not res!410634)) b!902962))

(assert (= (and b!902962 (not res!410633)) b!902957))

(assert (= (and b!902957 (not res!410635)) b!902969))

(assert (= (and start!81230 ((_ is ElementMatch!2375) r!15766)) b!902966))

(assert (= (and start!81230 ((_ is Concat!4208) r!15766)) b!902964))

(assert (= (and start!81230 ((_ is Star!2375) r!15766)) b!902968))

(assert (= (and start!81230 ((_ is Union!2375) r!15766)) b!902963))

(assert (= (and start!81230 ((_ is Cons!9589) s!10566)) b!902959))

(declare-fun m!1139709 () Bool)

(assert (=> b!902961 m!1139709))

(declare-fun m!1139711 () Bool)

(assert (=> b!902961 m!1139711))

(declare-fun m!1139713 () Bool)

(assert (=> b!902962 m!1139713))

(declare-fun m!1139715 () Bool)

(assert (=> b!902960 m!1139715))

(declare-fun m!1139717 () Bool)

(assert (=> b!902960 m!1139717))

(declare-fun m!1139719 () Bool)

(assert (=> b!902960 m!1139719))

(declare-fun m!1139721 () Bool)

(assert (=> b!902960 m!1139721))

(declare-fun m!1139723 () Bool)

(assert (=> b!902960 m!1139723))

(declare-fun m!1139725 () Bool)

(assert (=> b!902960 m!1139725))

(assert (=> b!902960 m!1139723))

(declare-fun m!1139727 () Bool)

(assert (=> b!902960 m!1139727))

(declare-fun m!1139729 () Bool)

(assert (=> b!902955 m!1139729))

(declare-fun m!1139731 () Bool)

(assert (=> b!902969 m!1139731))

(declare-fun m!1139733 () Bool)

(assert (=> b!902969 m!1139733))

(declare-fun m!1139735 () Bool)

(assert (=> b!902969 m!1139735))

(assert (=> b!902969 m!1139735))

(declare-fun m!1139737 () Bool)

(assert (=> b!902969 m!1139737))

(assert (=> b!902969 m!1139733))

(declare-fun m!1139739 () Bool)

(assert (=> b!902969 m!1139739))

(declare-fun m!1139741 () Bool)

(assert (=> b!902967 m!1139741))

(declare-fun m!1139743 () Bool)

(assert (=> b!902967 m!1139743))

(declare-fun m!1139745 () Bool)

(assert (=> b!902967 m!1139745))

(declare-fun m!1139747 () Bool)

(assert (=> b!902956 m!1139747))

(declare-fun m!1139749 () Bool)

(assert (=> b!902958 m!1139749))

(declare-fun m!1139751 () Bool)

(assert (=> b!902958 m!1139751))

(declare-fun m!1139753 () Bool)

(assert (=> b!902958 m!1139753))

(declare-fun m!1139755 () Bool)

(assert (=> b!902958 m!1139755))

(declare-fun m!1139757 () Bool)

(assert (=> b!902958 m!1139757))

(declare-fun m!1139759 () Bool)

(assert (=> b!902958 m!1139759))

(declare-fun m!1139761 () Bool)

(assert (=> b!902958 m!1139761))

(declare-fun m!1139763 () Bool)

(assert (=> b!902958 m!1139763))

(declare-fun m!1139765 () Bool)

(assert (=> b!902957 m!1139765))

(declare-fun m!1139767 () Bool)

(assert (=> start!81230 m!1139767))

(check-sat (not b!902969) (not b!902964) (not b!902956) (not b!902955) (not b!902958) (not start!81230) tp_is_empty!4393 (not b!902959) (not b!902967) (not b!902962) (not b!902961) (not b!902968) (not b!902960) (not b!902957) (not b!902963))
(check-sat)
