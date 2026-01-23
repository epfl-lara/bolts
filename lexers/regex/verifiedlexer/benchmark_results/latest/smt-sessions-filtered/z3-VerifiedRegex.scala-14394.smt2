; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750300 () Bool)

(assert start!750300)

(declare-fun b!7950935 () Bool)

(declare-datatypes ((Unit!169840 0))(
  ( (Unit!169841) )
))
(declare-fun e!4690235 () Unit!169840)

(declare-fun Unit!169842 () Unit!169840)

(assert (=> b!7950935 (= e!4690235 Unit!169842)))

(declare-fun b!7950936 () Bool)

(declare-fun e!4690236 () Bool)

(declare-fun tp!2366350 () Bool)

(assert (=> b!7950936 (= e!4690236 tp!2366350)))

(declare-fun b!7950937 () Bool)

(declare-fun e!4690241 () Bool)

(declare-fun tp!2366354 () Bool)

(declare-fun tp!2366358 () Bool)

(assert (=> b!7950937 (= e!4690241 (and tp!2366354 tp!2366358))))

(declare-fun b!7950938 () Bool)

(declare-fun e!4690239 () Bool)

(declare-fun e!4690237 () Bool)

(assert (=> b!7950938 (= e!4690239 e!4690237)))

(declare-fun res!3152959 () Bool)

(assert (=> b!7950938 (=> res!3152959 e!4690237)))

(declare-datatypes ((C!43276 0))(
  ( (C!43277 (val!32186 Int)) )
))
(declare-datatypes ((Regex!21469 0))(
  ( (ElementMatch!21469 (c!1460376 C!43276)) (Concat!30468 (regOne!43450 Regex!21469) (regTwo!43450 Regex!21469)) (EmptyExpr!21469) (Star!21469 (reg!21798 Regex!21469)) (EmptyLang!21469) (Union!21469 (regOne!43451 Regex!21469) (regTwo!43451 Regex!21469)) )
))
(declare-fun r!24602 () Regex!21469)

(declare-fun nullable!9570 (Regex!21469) Bool)

(assert (=> b!7950938 (= res!3152959 (not (nullable!9570 r!24602)))))

(declare-datatypes ((List!74698 0))(
  ( (Nil!74574) (Cons!74574 (h!81022 C!43276) (t!390441 List!74698)) )
))
(declare-fun lt!2700114 () List!74698)

(declare-fun input!7927 () List!74698)

(declare-fun isPrefix!6569 (List!74698 List!74698) Bool)

(assert (=> b!7950938 (isPrefix!6569 lt!2700114 input!7927)))

(declare-fun lt!2700116 () Unit!169840)

(declare-fun testedP!447 () List!74698)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1296 (List!74698 List!74698) Unit!169840)

(assert (=> b!7950938 (= lt!2700116 (lemmaAddHeadSuffixToPrefixStillPrefix!1296 testedP!447 input!7927))))

(declare-fun lt!2700115 () C!43276)

(declare-fun ++!18339 (List!74698 List!74698) List!74698)

(assert (=> b!7950938 (= lt!2700114 (++!18339 testedP!447 (Cons!74574 lt!2700115 Nil!74574)))))

(declare-fun lt!2700108 () List!74698)

(declare-fun head!16221 (List!74698) C!43276)

(assert (=> b!7950938 (= lt!2700115 (head!16221 lt!2700108))))

(declare-fun b!7950939 () Bool)

(declare-fun e!4690240 () Bool)

(declare-fun tp_is_empty!53481 () Bool)

(declare-fun tp!2366356 () Bool)

(assert (=> b!7950939 (= e!4690240 (and tp_is_empty!53481 tp!2366356))))

(declare-fun b!7950940 () Bool)

(declare-fun e!4690243 () Bool)

(assert (=> b!7950940 (= e!4690243 (not e!4690239))))

(declare-fun res!3152958 () Bool)

(assert (=> b!7950940 (=> res!3152958 e!4690239)))

(declare-fun lt!2700112 () Int)

(declare-fun lt!2700107 () Int)

(assert (=> b!7950940 (= res!3152958 (>= lt!2700112 lt!2700107))))

(declare-fun lt!2700117 () Unit!169840)

(assert (=> b!7950940 (= lt!2700117 e!4690235)))

(declare-fun c!1460375 () Bool)

(assert (=> b!7950940 (= c!1460375 (= lt!2700112 lt!2700107))))

(assert (=> b!7950940 (<= lt!2700112 lt!2700107)))

(declare-fun lt!2700109 () Unit!169840)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1086 (List!74698 List!74698) Unit!169840)

(assert (=> b!7950940 (= lt!2700109 (lemmaIsPrefixThenSmallerEqSize!1086 testedP!447 input!7927))))

(declare-fun b!7950941 () Bool)

(declare-fun res!3152960 () Bool)

(assert (=> b!7950941 (=> (not res!3152960) (not e!4690243))))

(assert (=> b!7950941 (= res!3152960 (not (= testedP!447 input!7927)))))

(declare-fun b!7950942 () Bool)

(declare-fun Unit!169843 () Unit!169840)

(assert (=> b!7950942 (= e!4690235 Unit!169843)))

(declare-fun lt!2700111 () Unit!169840)

(declare-fun lemmaIsPrefixRefl!4037 (List!74698 List!74698) Unit!169840)

(assert (=> b!7950942 (= lt!2700111 (lemmaIsPrefixRefl!4037 input!7927 input!7927))))

(assert (=> b!7950942 (isPrefix!6569 input!7927 input!7927)))

(declare-fun lt!2700110 () Unit!169840)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1617 (List!74698 List!74698 List!74698) Unit!169840)

(assert (=> b!7950942 (= lt!2700110 (lemmaIsPrefixSameLengthThenSameList!1617 input!7927 testedP!447 input!7927))))

(assert (=> b!7950942 false))

(declare-fun b!7950943 () Bool)

(declare-fun e!4690242 () Bool)

(assert (=> b!7950943 (= e!4690242 e!4690243)))

(declare-fun res!3152964 () Bool)

(assert (=> b!7950943 (=> (not res!3152964) (not e!4690243))))

(declare-fun isEmpty!42873 (List!74698) Bool)

(declare-datatypes ((tuple2!70600 0))(
  ( (tuple2!70601 (_1!38603 List!74698) (_2!38603 List!74698)) )
))
(declare-fun findLongestMatchInner!2250 (Regex!21469 List!74698 Int List!74698 List!74698 Int) tuple2!70600)

(assert (=> b!7950943 (= res!3152964 (not (isEmpty!42873 (_1!38603 (findLongestMatchInner!2250 r!24602 testedP!447 lt!2700112 lt!2700108 input!7927 lt!2700107)))))))

(declare-fun size!43405 (List!74698) Int)

(assert (=> b!7950943 (= lt!2700107 (size!43405 input!7927))))

(declare-fun getSuffix!3772 (List!74698 List!74698) List!74698)

(assert (=> b!7950943 (= lt!2700108 (getSuffix!3772 input!7927 testedP!447))))

(assert (=> b!7950943 (= lt!2700112 (size!43405 testedP!447))))

(declare-fun b!7950944 () Bool)

(assert (=> b!7950944 (= e!4690236 tp_is_empty!53481)))

(declare-fun res!3152962 () Bool)

(assert (=> start!750300 (=> (not res!3152962) (not e!4690242))))

(declare-fun baseR!116 () Regex!21469)

(declare-fun validRegex!11773 (Regex!21469) Bool)

(assert (=> start!750300 (= res!3152962 (validRegex!11773 baseR!116))))

(assert (=> start!750300 e!4690242))

(assert (=> start!750300 e!4690241))

(assert (=> start!750300 e!4690240))

(declare-fun e!4690238 () Bool)

(assert (=> start!750300 e!4690238))

(assert (=> start!750300 e!4690236))

(declare-fun b!7950934 () Bool)

(declare-fun res!3152961 () Bool)

(assert (=> b!7950934 (=> (not res!3152961) (not e!4690242))))

(declare-fun derivative!655 (Regex!21469 List!74698) Regex!21469)

(assert (=> b!7950934 (= res!3152961 (= (derivative!655 baseR!116 testedP!447) r!24602))))

(declare-fun b!7950945 () Bool)

(assert (=> b!7950945 (= e!4690237 (>= lt!2700107 lt!2700112))))

(declare-fun lt!2700113 () Regex!21469)

(declare-fun derivativeStep!6497 (Regex!21469 C!43276) Regex!21469)

(assert (=> b!7950945 (= lt!2700113 (derivativeStep!6497 r!24602 lt!2700115))))

(declare-fun b!7950946 () Bool)

(declare-fun tp!2366357 () Bool)

(assert (=> b!7950946 (= e!4690241 tp!2366357)))

(declare-fun b!7950947 () Bool)

(declare-fun tp!2366347 () Bool)

(declare-fun tp!2366349 () Bool)

(assert (=> b!7950947 (= e!4690241 (and tp!2366347 tp!2366349))))

(declare-fun b!7950948 () Bool)

(declare-fun tp!2366355 () Bool)

(declare-fun tp!2366352 () Bool)

(assert (=> b!7950948 (= e!4690236 (and tp!2366355 tp!2366352))))

(declare-fun b!7950949 () Bool)

(assert (=> b!7950949 (= e!4690241 tp_is_empty!53481)))

(declare-fun b!7950950 () Bool)

(declare-fun tp!2366348 () Bool)

(declare-fun tp!2366351 () Bool)

(assert (=> b!7950950 (= e!4690236 (and tp!2366348 tp!2366351))))

(declare-fun b!7950951 () Bool)

(declare-fun tp!2366353 () Bool)

(assert (=> b!7950951 (= e!4690238 (and tp_is_empty!53481 tp!2366353))))

(declare-fun b!7950952 () Bool)

(declare-fun res!3152963 () Bool)

(assert (=> b!7950952 (=> (not res!3152963) (not e!4690242))))

(assert (=> b!7950952 (= res!3152963 (isPrefix!6569 testedP!447 input!7927))))

(assert (= (and start!750300 res!3152962) b!7950952))

(assert (= (and b!7950952 res!3152963) b!7950934))

(assert (= (and b!7950934 res!3152961) b!7950943))

(assert (= (and b!7950943 res!3152964) b!7950941))

(assert (= (and b!7950941 res!3152960) b!7950940))

(assert (= (and b!7950940 c!1460375) b!7950942))

(assert (= (and b!7950940 (not c!1460375)) b!7950935))

(assert (= (and b!7950940 (not res!3152958)) b!7950938))

(assert (= (and b!7950938 (not res!3152959)) b!7950945))

(get-info :version)

(assert (= (and start!750300 ((_ is ElementMatch!21469) baseR!116)) b!7950949))

(assert (= (and start!750300 ((_ is Concat!30468) baseR!116)) b!7950947))

(assert (= (and start!750300 ((_ is Star!21469) baseR!116)) b!7950946))

(assert (= (and start!750300 ((_ is Union!21469) baseR!116)) b!7950937))

(assert (= (and start!750300 ((_ is Cons!74574) testedP!447)) b!7950939))

(assert (= (and start!750300 ((_ is Cons!74574) input!7927)) b!7950951))

(assert (= (and start!750300 ((_ is ElementMatch!21469) r!24602)) b!7950944))

(assert (= (and start!750300 ((_ is Concat!30468) r!24602)) b!7950948))

(assert (= (and start!750300 ((_ is Star!21469) r!24602)) b!7950936))

(assert (= (and start!750300 ((_ is Union!21469) r!24602)) b!7950950))

(declare-fun m!8335150 () Bool)

(assert (=> b!7950942 m!8335150))

(declare-fun m!8335152 () Bool)

(assert (=> b!7950942 m!8335152))

(declare-fun m!8335154 () Bool)

(assert (=> b!7950942 m!8335154))

(declare-fun m!8335156 () Bool)

(assert (=> b!7950934 m!8335156))

(declare-fun m!8335158 () Bool)

(assert (=> b!7950938 m!8335158))

(declare-fun m!8335160 () Bool)

(assert (=> b!7950938 m!8335160))

(declare-fun m!8335162 () Bool)

(assert (=> b!7950938 m!8335162))

(declare-fun m!8335164 () Bool)

(assert (=> b!7950938 m!8335164))

(declare-fun m!8335166 () Bool)

(assert (=> b!7950938 m!8335166))

(declare-fun m!8335168 () Bool)

(assert (=> start!750300 m!8335168))

(declare-fun m!8335170 () Bool)

(assert (=> b!7950945 m!8335170))

(declare-fun m!8335172 () Bool)

(assert (=> b!7950940 m!8335172))

(declare-fun m!8335174 () Bool)

(assert (=> b!7950952 m!8335174))

(declare-fun m!8335176 () Bool)

(assert (=> b!7950943 m!8335176))

(declare-fun m!8335178 () Bool)

(assert (=> b!7950943 m!8335178))

(declare-fun m!8335180 () Bool)

(assert (=> b!7950943 m!8335180))

(declare-fun m!8335182 () Bool)

(assert (=> b!7950943 m!8335182))

(declare-fun m!8335184 () Bool)

(assert (=> b!7950943 m!8335184))

(check-sat (not b!7950940) (not b!7950946) (not b!7950948) (not b!7950952) (not b!7950942) (not b!7950950) (not b!7950947) (not b!7950938) (not b!7950945) (not b!7950951) (not b!7950939) (not b!7950943) (not b!7950934) (not b!7950936) (not b!7950937) tp_is_empty!53481 (not start!750300))
(check-sat)
