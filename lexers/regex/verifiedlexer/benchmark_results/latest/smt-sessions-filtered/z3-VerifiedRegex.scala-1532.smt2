; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80538 () Bool)

(assert start!80538)

(declare-fun b!893940 () Bool)

(declare-fun e!585401 () Bool)

(declare-fun tp_is_empty!4289 () Bool)

(assert (=> b!893940 (= e!585401 tp_is_empty!4289)))

(declare-fun b!893941 () Bool)

(declare-fun e!585402 () Bool)

(declare-fun e!585398 () Bool)

(assert (=> b!893941 (= e!585402 (not e!585398))))

(declare-fun res!406332 () Bool)

(assert (=> b!893941 (=> res!406332 e!585398)))

(declare-fun lt!332950 () Bool)

(declare-datatypes ((C!5216 0))(
  ( (C!5217 (val!2856 Int)) )
))
(declare-datatypes ((Regex!2323 0))(
  ( (ElementMatch!2323 (c!144766 C!5216)) (Concat!4156 (regOne!5158 Regex!2323) (regTwo!5158 Regex!2323)) (EmptyExpr!2323) (Star!2323 (reg!2652 Regex!2323)) (EmptyLang!2323) (Union!2323 (regOne!5159 Regex!2323) (regTwo!5159 Regex!2323)) )
))
(declare-fun r!15766 () Regex!2323)

(get-info :version)

(assert (=> b!893941 (= res!406332 (or (not lt!332950) (and ((_ is Concat!4156) r!15766) ((_ is EmptyExpr!2323) (regOne!5158 r!15766))) (and ((_ is Concat!4156) r!15766) ((_ is EmptyExpr!2323) (regTwo!5158 r!15766))) ((_ is Concat!4156) r!15766) (not ((_ is Union!2323) r!15766))))))

(declare-datatypes ((List!9553 0))(
  ( (Nil!9537) (Cons!9537 (h!14938 C!5216) (t!100599 List!9553)) )
))
(declare-fun s!10566 () List!9553)

(declare-fun matchRSpec!124 (Regex!2323 List!9553) Bool)

(assert (=> b!893941 (= lt!332950 (matchRSpec!124 r!15766 s!10566))))

(declare-fun matchR!861 (Regex!2323 List!9553) Bool)

(assert (=> b!893941 (= lt!332950 (matchR!861 r!15766 s!10566))))

(declare-datatypes ((Unit!14225 0))(
  ( (Unit!14226) )
))
(declare-fun lt!332957 () Unit!14225)

(declare-fun mainMatchTheorem!124 (Regex!2323 List!9553) Unit!14225)

(assert (=> b!893941 (= lt!332957 (mainMatchTheorem!124 r!15766 s!10566))))

(declare-fun res!406335 () Bool)

(assert (=> start!80538 (=> (not res!406335) (not e!585402))))

(declare-fun validRegex!792 (Regex!2323) Bool)

(assert (=> start!80538 (= res!406335 (validRegex!792 r!15766))))

(assert (=> start!80538 e!585402))

(assert (=> start!80538 e!585401))

(declare-fun e!585400 () Bool)

(assert (=> start!80538 e!585400))

(declare-fun b!893942 () Bool)

(declare-fun tp!281083 () Bool)

(declare-fun tp!281088 () Bool)

(assert (=> b!893942 (= e!585401 (and tp!281083 tp!281088))))

(declare-fun b!893943 () Bool)

(declare-fun tp!281085 () Bool)

(assert (=> b!893943 (= e!585401 tp!281085)))

(declare-fun b!893944 () Bool)

(declare-fun tp!281086 () Bool)

(assert (=> b!893944 (= e!585400 (and tp_is_empty!4289 tp!281086))))

(declare-fun b!893945 () Bool)

(declare-fun e!585403 () Bool)

(declare-fun e!585397 () Bool)

(assert (=> b!893945 (= e!585403 e!585397)))

(declare-fun res!406333 () Bool)

(assert (=> b!893945 (=> res!406333 e!585397)))

(declare-fun lt!332955 () Bool)

(assert (=> b!893945 (= res!406333 (not lt!332955))))

(declare-fun lt!332952 () Bool)

(assert (=> b!893945 (= lt!332952 lt!332955)))

(declare-fun lt!332951 () Regex!2323)

(assert (=> b!893945 (= lt!332955 (matchR!861 lt!332951 s!10566))))

(assert (=> b!893945 (= lt!332952 (matchR!861 (regTwo!5159 r!15766) s!10566))))

(declare-fun removeUselessConcat!58 (Regex!2323) Regex!2323)

(assert (=> b!893945 (= lt!332951 (removeUselessConcat!58 (regTwo!5159 r!15766)))))

(declare-fun lt!332958 () Unit!14225)

(declare-fun lemmaRemoveUselessConcatSound!52 (Regex!2323 List!9553) Unit!14225)

(assert (=> b!893945 (= lt!332958 (lemmaRemoveUselessConcatSound!52 (regTwo!5159 r!15766) s!10566))))

(declare-fun b!893946 () Bool)

(assert (=> b!893946 (= e!585398 e!585403)))

(declare-fun res!406334 () Bool)

(assert (=> b!893946 (=> res!406334 e!585403)))

(declare-fun lt!332954 () Bool)

(assert (=> b!893946 (= res!406334 lt!332954)))

(declare-fun e!585399 () Bool)

(assert (=> b!893946 e!585399))

(declare-fun res!406336 () Bool)

(assert (=> b!893946 (=> res!406336 e!585399)))

(assert (=> b!893946 (= res!406336 lt!332954)))

(assert (=> b!893946 (= lt!332954 (matchR!861 (regOne!5159 r!15766) s!10566))))

(declare-fun lt!332953 () Unit!14225)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!34 (Regex!2323 Regex!2323 List!9553) Unit!14225)

(assert (=> b!893946 (= lt!332953 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!34 (regOne!5159 r!15766) (regTwo!5159 r!15766) s!10566))))

(declare-fun b!893947 () Bool)

(assert (=> b!893947 (= e!585397 true)))

(declare-fun lt!332956 () Regex!2323)

(assert (=> b!893947 (matchR!861 (Union!2323 lt!332951 lt!332956) s!10566)))

(declare-fun lt!332959 () Unit!14225)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!10 (Regex!2323 Regex!2323 List!9553) Unit!14225)

(assert (=> b!893947 (= lt!332959 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!10 lt!332951 lt!332956 s!10566))))

(assert (=> b!893947 (= lt!332956 (removeUselessConcat!58 (regOne!5159 r!15766)))))

(declare-fun b!893948 () Bool)

(assert (=> b!893948 (= e!585399 (matchR!861 (regTwo!5159 r!15766) s!10566))))

(declare-fun b!893949 () Bool)

(declare-fun tp!281084 () Bool)

(declare-fun tp!281087 () Bool)

(assert (=> b!893949 (= e!585401 (and tp!281084 tp!281087))))

(assert (= (and start!80538 res!406335) b!893941))

(assert (= (and b!893941 (not res!406332)) b!893946))

(assert (= (and b!893946 (not res!406336)) b!893948))

(assert (= (and b!893946 (not res!406334)) b!893945))

(assert (= (and b!893945 (not res!406333)) b!893947))

(assert (= (and start!80538 ((_ is ElementMatch!2323) r!15766)) b!893940))

(assert (= (and start!80538 ((_ is Concat!4156) r!15766)) b!893949))

(assert (= (and start!80538 ((_ is Star!2323) r!15766)) b!893943))

(assert (= (and start!80538 ((_ is Union!2323) r!15766)) b!893942))

(assert (= (and start!80538 ((_ is Cons!9537) s!10566)) b!893944))

(declare-fun m!1135087 () Bool)

(assert (=> b!893947 m!1135087))

(declare-fun m!1135089 () Bool)

(assert (=> b!893947 m!1135089))

(declare-fun m!1135091 () Bool)

(assert (=> b!893947 m!1135091))

(declare-fun m!1135093 () Bool)

(assert (=> b!893945 m!1135093))

(declare-fun m!1135095 () Bool)

(assert (=> b!893945 m!1135095))

(declare-fun m!1135097 () Bool)

(assert (=> b!893945 m!1135097))

(declare-fun m!1135099 () Bool)

(assert (=> b!893945 m!1135099))

(declare-fun m!1135101 () Bool)

(assert (=> b!893941 m!1135101))

(declare-fun m!1135103 () Bool)

(assert (=> b!893941 m!1135103))

(declare-fun m!1135105 () Bool)

(assert (=> b!893941 m!1135105))

(assert (=> b!893948 m!1135095))

(declare-fun m!1135107 () Bool)

(assert (=> start!80538 m!1135107))

(declare-fun m!1135109 () Bool)

(assert (=> b!893946 m!1135109))

(declare-fun m!1135111 () Bool)

(assert (=> b!893946 m!1135111))

(check-sat (not b!893942) (not b!893941) (not b!893945) (not b!893947) (not b!893949) (not b!893944) (not b!893948) tp_is_empty!4289 (not start!80538) (not b!893943) (not b!893946))
(check-sat)
