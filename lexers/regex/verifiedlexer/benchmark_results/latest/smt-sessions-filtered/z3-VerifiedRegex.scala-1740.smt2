; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87066 () Bool)

(assert start!87066)

(declare-fun b!981925 () Bool)

(assert (=> b!981925 true))

(assert (=> b!981925 true))

(declare-fun res!445569 () Bool)

(declare-fun e!631640 () Bool)

(assert (=> start!87066 (=> (not res!445569) (not e!631640))))

(declare-datatypes ((C!6048 0))(
  ( (C!6049 (val!3272 Int)) )
))
(declare-datatypes ((Regex!2739 0))(
  ( (ElementMatch!2739 (c!160576 C!6048)) (Concat!4572 (regOne!5990 Regex!2739) (regTwo!5990 Regex!2739)) (EmptyExpr!2739) (Star!2739 (reg!3068 Regex!2739)) (EmptyLang!2739) (Union!2739 (regOne!5991 Regex!2739) (regTwo!5991 Regex!2739)) )
))
(declare-fun r!15766 () Regex!2739)

(declare-fun validRegex!1208 (Regex!2739) Bool)

(assert (=> start!87066 (= res!445569 (validRegex!1208 r!15766))))

(assert (=> start!87066 e!631640))

(declare-fun e!631639 () Bool)

(assert (=> start!87066 e!631639))

(declare-fun e!631641 () Bool)

(assert (=> start!87066 e!631641))

(declare-fun b!981921 () Bool)

(declare-fun tp!300012 () Bool)

(assert (=> b!981921 (= e!631639 tp!300012)))

(declare-fun b!981922 () Bool)

(declare-fun tp!300011 () Bool)

(declare-fun tp!300015 () Bool)

(assert (=> b!981922 (= e!631639 (and tp!300011 tp!300015))))

(declare-fun b!981923 () Bool)

(declare-fun tp!300014 () Bool)

(declare-fun tp!300016 () Bool)

(assert (=> b!981923 (= e!631639 (and tp!300014 tp!300016))))

(declare-fun b!981924 () Bool)

(declare-fun tp_is_empty!5121 () Bool)

(assert (=> b!981924 (= e!631639 tp_is_empty!5121)))

(declare-fun e!631638 () Bool)

(assert (=> b!981925 (= e!631638 (validRegex!1208 (regOne!5990 r!15766)))))

(declare-datatypes ((List!9969 0))(
  ( (Nil!9953) (Cons!9953 (h!15354 C!6048) (t!101015 List!9969)) )
))
(declare-fun s!10566 () List!9969)

(declare-fun lambda!34982 () Int)

(declare-datatypes ((tuple2!11324 0))(
  ( (tuple2!11325 (_1!6488 List!9969) (_2!6488 List!9969)) )
))
(declare-datatypes ((Option!2304 0))(
  ( (None!2303) (Some!2303 (v!19720 tuple2!11324)) )
))
(declare-fun isDefined!1946 (Option!2304) Bool)

(declare-fun findConcatSeparation!410 (Regex!2739 Regex!2739 List!9969 List!9969 List!9969) Option!2304)

(declare-fun Exists!476 (Int) Bool)

(assert (=> b!981925 (= (isDefined!1946 (findConcatSeparation!410 (regOne!5990 r!15766) (regTwo!5990 r!15766) Nil!9953 s!10566 s!10566)) (Exists!476 lambda!34982))))

(declare-datatypes ((Unit!15137 0))(
  ( (Unit!15138) )
))
(declare-fun lt!350113 () Unit!15137)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!410 (Regex!2739 Regex!2739 List!9969) Unit!15137)

(assert (=> b!981925 (= lt!350113 (lemmaFindConcatSeparationEquivalentToExists!410 (regOne!5990 r!15766) (regTwo!5990 r!15766) s!10566))))

(declare-fun b!981926 () Bool)

(declare-fun tp!300013 () Bool)

(assert (=> b!981926 (= e!631641 (and tp_is_empty!5121 tp!300013))))

(declare-fun b!981927 () Bool)

(assert (=> b!981927 (= e!631640 (not e!631638))))

(declare-fun res!445570 () Bool)

(assert (=> b!981927 (=> res!445570 e!631638)))

(declare-fun lt!350114 () Bool)

(get-info :version)

(assert (=> b!981927 (= res!445570 (or (not lt!350114) (and ((_ is Concat!4572) r!15766) ((_ is EmptyExpr!2739) (regOne!5990 r!15766))) (and ((_ is Concat!4572) r!15766) ((_ is EmptyExpr!2739) (regTwo!5990 r!15766))) (not ((_ is Concat!4572) r!15766))))))

(declare-fun matchRSpec!538 (Regex!2739 List!9969) Bool)

(assert (=> b!981927 (= lt!350114 (matchRSpec!538 r!15766 s!10566))))

(declare-fun matchR!1275 (Regex!2739 List!9969) Bool)

(assert (=> b!981927 (= lt!350114 (matchR!1275 r!15766 s!10566))))

(declare-fun lt!350115 () Unit!15137)

(declare-fun mainMatchTheorem!538 (Regex!2739 List!9969) Unit!15137)

(assert (=> b!981927 (= lt!350115 (mainMatchTheorem!538 r!15766 s!10566))))

(assert (= (and start!87066 res!445569) b!981927))

(assert (= (and b!981927 (not res!445570)) b!981925))

(assert (= (and start!87066 ((_ is ElementMatch!2739) r!15766)) b!981924))

(assert (= (and start!87066 ((_ is Concat!4572) r!15766)) b!981923))

(assert (= (and start!87066 ((_ is Star!2739) r!15766)) b!981921))

(assert (= (and start!87066 ((_ is Union!2739) r!15766)) b!981922))

(assert (= (and start!87066 ((_ is Cons!9953) s!10566)) b!981926))

(declare-fun m!1180559 () Bool)

(assert (=> start!87066 m!1180559))

(declare-fun m!1180561 () Bool)

(assert (=> b!981925 m!1180561))

(declare-fun m!1180563 () Bool)

(assert (=> b!981925 m!1180563))

(declare-fun m!1180565 () Bool)

(assert (=> b!981925 m!1180565))

(declare-fun m!1180567 () Bool)

(assert (=> b!981925 m!1180567))

(declare-fun m!1180569 () Bool)

(assert (=> b!981925 m!1180569))

(assert (=> b!981925 m!1180561))

(declare-fun m!1180571 () Bool)

(assert (=> b!981927 m!1180571))

(declare-fun m!1180573 () Bool)

(assert (=> b!981927 m!1180573))

(declare-fun m!1180575 () Bool)

(assert (=> b!981927 m!1180575))

(check-sat (not b!981921) (not b!981922) (not b!981927) (not b!981925) (not b!981923) (not start!87066) (not b!981926) tp_is_empty!5121)
(check-sat)
(get-model)

(declare-fun b!981977 () Bool)

(declare-fun e!631679 () Bool)

(declare-fun e!631681 () Bool)

(assert (=> b!981977 (= e!631679 e!631681)))

(declare-fun res!445599 () Bool)

(assert (=> b!981977 (=> (not res!445599) (not e!631681))))

(declare-fun call!63189 () Bool)

(assert (=> b!981977 (= res!445599 call!63189)))

(declare-fun bm!63184 () Bool)

(declare-fun call!63190 () Bool)

(declare-fun c!160587 () Bool)

(assert (=> bm!63184 (= call!63190 (validRegex!1208 (ite c!160587 (regTwo!5991 (regOne!5990 r!15766)) (regTwo!5990 (regOne!5990 r!15766)))))))

(declare-fun b!981978 () Bool)

(declare-fun e!631683 () Bool)

(declare-fun e!631682 () Bool)

(assert (=> b!981978 (= e!631683 e!631682)))

(declare-fun c!160588 () Bool)

(assert (=> b!981978 (= c!160588 ((_ is Star!2739) (regOne!5990 r!15766)))))

(declare-fun b!981979 () Bool)

(declare-fun e!631678 () Bool)

(assert (=> b!981979 (= e!631678 call!63190)))

(declare-fun b!981980 () Bool)

(declare-fun res!445597 () Bool)

(assert (=> b!981980 (=> (not res!445597) (not e!631678))))

(assert (=> b!981980 (= res!445597 call!63189)))

(declare-fun e!631680 () Bool)

(assert (=> b!981980 (= e!631680 e!631678)))

(declare-fun call!63191 () Bool)

(declare-fun bm!63185 () Bool)

(assert (=> bm!63185 (= call!63191 (validRegex!1208 (ite c!160588 (reg!3068 (regOne!5990 r!15766)) (ite c!160587 (regOne!5991 (regOne!5990 r!15766)) (regOne!5990 (regOne!5990 r!15766))))))))

(declare-fun b!981981 () Bool)

(assert (=> b!981981 (= e!631681 call!63190)))

(declare-fun b!981983 () Bool)

(declare-fun e!631677 () Bool)

(assert (=> b!981983 (= e!631677 call!63191)))

(declare-fun b!981984 () Bool)

(assert (=> b!981984 (= e!631682 e!631680)))

(assert (=> b!981984 (= c!160587 ((_ is Union!2739) (regOne!5990 r!15766)))))

(declare-fun bm!63186 () Bool)

(assert (=> bm!63186 (= call!63189 call!63191)))

(declare-fun b!981985 () Bool)

(declare-fun res!445598 () Bool)

(assert (=> b!981985 (=> res!445598 e!631679)))

(assert (=> b!981985 (= res!445598 (not ((_ is Concat!4572) (regOne!5990 r!15766))))))

(assert (=> b!981985 (= e!631680 e!631679)))

(declare-fun b!981982 () Bool)

(assert (=> b!981982 (= e!631682 e!631677)))

(declare-fun res!445600 () Bool)

(declare-fun nullable!855 (Regex!2739) Bool)

(assert (=> b!981982 (= res!445600 (not (nullable!855 (reg!3068 (regOne!5990 r!15766)))))))

(assert (=> b!981982 (=> (not res!445600) (not e!631677))))

(declare-fun d!288355 () Bool)

(declare-fun res!445596 () Bool)

(assert (=> d!288355 (=> res!445596 e!631683)))

(assert (=> d!288355 (= res!445596 ((_ is ElementMatch!2739) (regOne!5990 r!15766)))))

(assert (=> d!288355 (= (validRegex!1208 (regOne!5990 r!15766)) e!631683)))

(assert (= (and d!288355 (not res!445596)) b!981978))

(assert (= (and b!981978 c!160588) b!981982))

(assert (= (and b!981978 (not c!160588)) b!981984))

(assert (= (and b!981982 res!445600) b!981983))

(assert (= (and b!981984 c!160587) b!981980))

(assert (= (and b!981984 (not c!160587)) b!981985))

(assert (= (and b!981980 res!445597) b!981979))

(assert (= (and b!981985 (not res!445598)) b!981977))

(assert (= (and b!981977 res!445599) b!981981))

(assert (= (or b!981979 b!981981) bm!63184))

(assert (= (or b!981980 b!981977) bm!63186))

(assert (= (or b!981983 bm!63186) bm!63185))

(declare-fun m!1180583 () Bool)

(assert (=> bm!63184 m!1180583))

(declare-fun m!1180585 () Bool)

(assert (=> bm!63185 m!1180585))

(declare-fun m!1180587 () Bool)

(assert (=> b!981982 m!1180587))

(assert (=> b!981925 d!288355))

(declare-fun d!288359 () Bool)

(declare-fun isEmpty!6276 (Option!2304) Bool)

(assert (=> d!288359 (= (isDefined!1946 (findConcatSeparation!410 (regOne!5990 r!15766) (regTwo!5990 r!15766) Nil!9953 s!10566 s!10566)) (not (isEmpty!6276 (findConcatSeparation!410 (regOne!5990 r!15766) (regTwo!5990 r!15766) Nil!9953 s!10566 s!10566))))))

(declare-fun bs!243950 () Bool)

(assert (= bs!243950 d!288359))

(assert (=> bs!243950 m!1180561))

(declare-fun m!1180589 () Bool)

(assert (=> bs!243950 m!1180589))

(assert (=> b!981925 d!288359))

(declare-fun bs!243951 () Bool)

(declare-fun d!288361 () Bool)

(assert (= bs!243951 (and d!288361 b!981925)))

(declare-fun lambda!34989 () Int)

(assert (=> bs!243951 (= lambda!34989 lambda!34982)))

(assert (=> d!288361 true))

(assert (=> d!288361 true))

(assert (=> d!288361 true))

(assert (=> d!288361 (= (isDefined!1946 (findConcatSeparation!410 (regOne!5990 r!15766) (regTwo!5990 r!15766) Nil!9953 s!10566 s!10566)) (Exists!476 lambda!34989))))

(declare-fun lt!350118 () Unit!15137)

(declare-fun choose!6224 (Regex!2739 Regex!2739 List!9969) Unit!15137)

(assert (=> d!288361 (= lt!350118 (choose!6224 (regOne!5990 r!15766) (regTwo!5990 r!15766) s!10566))))

(assert (=> d!288361 (validRegex!1208 (regOne!5990 r!15766))))

(assert (=> d!288361 (= (lemmaFindConcatSeparationEquivalentToExists!410 (regOne!5990 r!15766) (regTwo!5990 r!15766) s!10566) lt!350118)))

(declare-fun bs!243952 () Bool)

(assert (= bs!243952 d!288361))

(declare-fun m!1180591 () Bool)

(assert (=> bs!243952 m!1180591))

(declare-fun m!1180593 () Bool)

(assert (=> bs!243952 m!1180593))

(assert (=> bs!243952 m!1180561))

(assert (=> bs!243952 m!1180565))

(assert (=> bs!243952 m!1180561))

(assert (=> bs!243952 m!1180563))

(assert (=> b!981925 d!288361))

(declare-fun b!982079 () Bool)

(declare-fun e!631735 () Option!2304)

(assert (=> b!982079 (= e!631735 None!2303)))

(declare-fun d!288363 () Bool)

(declare-fun e!631738 () Bool)

(assert (=> d!288363 e!631738))

(declare-fun res!445653 () Bool)

(assert (=> d!288363 (=> res!445653 e!631738)))

(declare-fun e!631736 () Bool)

(assert (=> d!288363 (= res!445653 e!631736)))

(declare-fun res!445650 () Bool)

(assert (=> d!288363 (=> (not res!445650) (not e!631736))))

(declare-fun lt!350127 () Option!2304)

(assert (=> d!288363 (= res!445650 (isDefined!1946 lt!350127))))

(declare-fun e!631739 () Option!2304)

(assert (=> d!288363 (= lt!350127 e!631739)))

(declare-fun c!160612 () Bool)

(declare-fun e!631737 () Bool)

(assert (=> d!288363 (= c!160612 e!631737)))

(declare-fun res!445652 () Bool)

(assert (=> d!288363 (=> (not res!445652) (not e!631737))))

(assert (=> d!288363 (= res!445652 (matchR!1275 (regOne!5990 r!15766) Nil!9953))))

(assert (=> d!288363 (validRegex!1208 (regOne!5990 r!15766))))

(assert (=> d!288363 (= (findConcatSeparation!410 (regOne!5990 r!15766) (regTwo!5990 r!15766) Nil!9953 s!10566 s!10566) lt!350127)))

(declare-fun b!982080 () Bool)

(assert (=> b!982080 (= e!631737 (matchR!1275 (regTwo!5990 r!15766) s!10566))))

(declare-fun b!982081 () Bool)

(declare-fun lt!350128 () Unit!15137)

(declare-fun lt!350129 () Unit!15137)

(assert (=> b!982081 (= lt!350128 lt!350129)))

(declare-fun ++!2701 (List!9969 List!9969) List!9969)

(assert (=> b!982081 (= (++!2701 (++!2701 Nil!9953 (Cons!9953 (h!15354 s!10566) Nil!9953)) (t!101015 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!302 (List!9969 C!6048 List!9969 List!9969) Unit!15137)

(assert (=> b!982081 (= lt!350129 (lemmaMoveElementToOtherListKeepsConcatEq!302 Nil!9953 (h!15354 s!10566) (t!101015 s!10566) s!10566))))

(assert (=> b!982081 (= e!631735 (findConcatSeparation!410 (regOne!5990 r!15766) (regTwo!5990 r!15766) (++!2701 Nil!9953 (Cons!9953 (h!15354 s!10566) Nil!9953)) (t!101015 s!10566) s!10566))))

(declare-fun b!982082 () Bool)

(declare-fun res!445651 () Bool)

(assert (=> b!982082 (=> (not res!445651) (not e!631736))))

(declare-fun get!3451 (Option!2304) tuple2!11324)

(assert (=> b!982082 (= res!445651 (matchR!1275 (regOne!5990 r!15766) (_1!6488 (get!3451 lt!350127))))))

(declare-fun b!982083 () Bool)

(assert (=> b!982083 (= e!631738 (not (isDefined!1946 lt!350127)))))

(declare-fun b!982084 () Bool)

(assert (=> b!982084 (= e!631739 e!631735)))

(declare-fun c!160611 () Bool)

(assert (=> b!982084 (= c!160611 ((_ is Nil!9953) s!10566))))

(declare-fun b!982085 () Bool)

(assert (=> b!982085 (= e!631736 (= (++!2701 (_1!6488 (get!3451 lt!350127)) (_2!6488 (get!3451 lt!350127))) s!10566))))

(declare-fun b!982086 () Bool)

(declare-fun res!445654 () Bool)

(assert (=> b!982086 (=> (not res!445654) (not e!631736))))

(assert (=> b!982086 (= res!445654 (matchR!1275 (regTwo!5990 r!15766) (_2!6488 (get!3451 lt!350127))))))

(declare-fun b!982087 () Bool)

(assert (=> b!982087 (= e!631739 (Some!2303 (tuple2!11325 Nil!9953 s!10566)))))

(assert (= (and d!288363 res!445652) b!982080))

(assert (= (and d!288363 c!160612) b!982087))

(assert (= (and d!288363 (not c!160612)) b!982084))

(assert (= (and b!982084 c!160611) b!982079))

(assert (= (and b!982084 (not c!160611)) b!982081))

(assert (= (and d!288363 res!445650) b!982082))

(assert (= (and b!982082 res!445651) b!982086))

(assert (= (and b!982086 res!445654) b!982085))

(assert (= (and d!288363 (not res!445653)) b!982083))

(declare-fun m!1180603 () Bool)

(assert (=> b!982085 m!1180603))

(declare-fun m!1180605 () Bool)

(assert (=> b!982085 m!1180605))

(assert (=> b!982082 m!1180603))

(declare-fun m!1180607 () Bool)

(assert (=> b!982082 m!1180607))

(declare-fun m!1180609 () Bool)

(assert (=> d!288363 m!1180609))

(declare-fun m!1180611 () Bool)

(assert (=> d!288363 m!1180611))

(assert (=> d!288363 m!1180565))

(assert (=> b!982083 m!1180609))

(assert (=> b!982086 m!1180603))

(declare-fun m!1180613 () Bool)

(assert (=> b!982086 m!1180613))

(declare-fun m!1180615 () Bool)

(assert (=> b!982081 m!1180615))

(assert (=> b!982081 m!1180615))

(declare-fun m!1180617 () Bool)

(assert (=> b!982081 m!1180617))

(declare-fun m!1180619 () Bool)

(assert (=> b!982081 m!1180619))

(assert (=> b!982081 m!1180615))

(declare-fun m!1180621 () Bool)

(assert (=> b!982081 m!1180621))

(declare-fun m!1180623 () Bool)

(assert (=> b!982080 m!1180623))

(assert (=> b!981925 d!288363))

(declare-fun d!288367 () Bool)

(declare-fun choose!6225 (Int) Bool)

(assert (=> d!288367 (= (Exists!476 lambda!34982) (choose!6225 lambda!34982))))

(declare-fun bs!243956 () Bool)

(assert (= bs!243956 d!288367))

(declare-fun m!1180625 () Bool)

(assert (=> bs!243956 m!1180625))

(assert (=> b!981925 d!288367))

(declare-fun b!982102 () Bool)

(declare-fun e!631749 () Bool)

(declare-fun e!631751 () Bool)

(assert (=> b!982102 (= e!631749 e!631751)))

(declare-fun res!445666 () Bool)

(assert (=> b!982102 (=> (not res!445666) (not e!631751))))

(declare-fun call!63201 () Bool)

(assert (=> b!982102 (= res!445666 call!63201)))

(declare-fun bm!63196 () Bool)

(declare-fun call!63202 () Bool)

(declare-fun c!160616 () Bool)

(assert (=> bm!63196 (= call!63202 (validRegex!1208 (ite c!160616 (regTwo!5991 r!15766) (regTwo!5990 r!15766))))))

(declare-fun b!982103 () Bool)

(declare-fun e!631753 () Bool)

(declare-fun e!631752 () Bool)

(assert (=> b!982103 (= e!631753 e!631752)))

(declare-fun c!160617 () Bool)

(assert (=> b!982103 (= c!160617 ((_ is Star!2739) r!15766))))

(declare-fun b!982104 () Bool)

(declare-fun e!631748 () Bool)

(assert (=> b!982104 (= e!631748 call!63202)))

(declare-fun b!982105 () Bool)

(declare-fun res!445664 () Bool)

(assert (=> b!982105 (=> (not res!445664) (not e!631748))))

(assert (=> b!982105 (= res!445664 call!63201)))

(declare-fun e!631750 () Bool)

(assert (=> b!982105 (= e!631750 e!631748)))

(declare-fun bm!63197 () Bool)

(declare-fun call!63203 () Bool)

(assert (=> bm!63197 (= call!63203 (validRegex!1208 (ite c!160617 (reg!3068 r!15766) (ite c!160616 (regOne!5991 r!15766) (regOne!5990 r!15766)))))))

(declare-fun b!982106 () Bool)

(assert (=> b!982106 (= e!631751 call!63202)))

(declare-fun b!982108 () Bool)

(declare-fun e!631747 () Bool)

(assert (=> b!982108 (= e!631747 call!63203)))

(declare-fun b!982109 () Bool)

(assert (=> b!982109 (= e!631752 e!631750)))

(assert (=> b!982109 (= c!160616 ((_ is Union!2739) r!15766))))

(declare-fun bm!63198 () Bool)

(assert (=> bm!63198 (= call!63201 call!63203)))

(declare-fun b!982110 () Bool)

(declare-fun res!445665 () Bool)

(assert (=> b!982110 (=> res!445665 e!631749)))

(assert (=> b!982110 (= res!445665 (not ((_ is Concat!4572) r!15766)))))

(assert (=> b!982110 (= e!631750 e!631749)))

(declare-fun b!982107 () Bool)

(assert (=> b!982107 (= e!631752 e!631747)))

(declare-fun res!445667 () Bool)

(assert (=> b!982107 (= res!445667 (not (nullable!855 (reg!3068 r!15766))))))

(assert (=> b!982107 (=> (not res!445667) (not e!631747))))

(declare-fun d!288369 () Bool)

(declare-fun res!445663 () Bool)

(assert (=> d!288369 (=> res!445663 e!631753)))

(assert (=> d!288369 (= res!445663 ((_ is ElementMatch!2739) r!15766))))

(assert (=> d!288369 (= (validRegex!1208 r!15766) e!631753)))

(assert (= (and d!288369 (not res!445663)) b!982103))

(assert (= (and b!982103 c!160617) b!982107))

(assert (= (and b!982103 (not c!160617)) b!982109))

(assert (= (and b!982107 res!445667) b!982108))

(assert (= (and b!982109 c!160616) b!982105))

(assert (= (and b!982109 (not c!160616)) b!982110))

(assert (= (and b!982105 res!445664) b!982104))

(assert (= (and b!982110 (not res!445665)) b!982102))

(assert (= (and b!982102 res!445666) b!982106))

(assert (= (or b!982104 b!982106) bm!63196))

(assert (= (or b!982105 b!982102) bm!63198))

(assert (= (or b!982108 bm!63198) bm!63197))

(declare-fun m!1180633 () Bool)

(assert (=> bm!63196 m!1180633))

(declare-fun m!1180637 () Bool)

(assert (=> bm!63197 m!1180637))

(declare-fun m!1180641 () Bool)

(assert (=> b!982107 m!1180641))

(assert (=> start!87066 d!288369))

(declare-fun bs!243963 () Bool)

(declare-fun b!982153 () Bool)

(assert (= bs!243963 (and b!982153 b!981925)))

(declare-fun lambda!34999 () Int)

(assert (=> bs!243963 (not (= lambda!34999 lambda!34982))))

(declare-fun bs!243964 () Bool)

(assert (= bs!243964 (and b!982153 d!288361)))

(assert (=> bs!243964 (not (= lambda!34999 lambda!34989))))

(assert (=> b!982153 true))

(assert (=> b!982153 true))

(declare-fun bs!243965 () Bool)

(declare-fun b!982151 () Bool)

(assert (= bs!243965 (and b!982151 b!981925)))

(declare-fun lambda!35000 () Int)

(assert (=> bs!243965 (not (= lambda!35000 lambda!34982))))

(declare-fun bs!243966 () Bool)

(assert (= bs!243966 (and b!982151 d!288361)))

(assert (=> bs!243966 (not (= lambda!35000 lambda!34989))))

(declare-fun bs!243967 () Bool)

(assert (= bs!243967 (and b!982151 b!982153)))

(assert (=> bs!243967 (not (= lambda!35000 lambda!34999))))

(assert (=> b!982151 true))

(assert (=> b!982151 true))

(declare-fun b!982147 () Bool)

(declare-fun res!445690 () Bool)

(declare-fun e!631778 () Bool)

(assert (=> b!982147 (=> res!445690 e!631778)))

(declare-fun call!63208 () Bool)

(assert (=> b!982147 (= res!445690 call!63208)))

(declare-fun e!631779 () Bool)

(assert (=> b!982147 (= e!631779 e!631778)))

(declare-fun b!982148 () Bool)

(declare-fun e!631774 () Bool)

(assert (=> b!982148 (= e!631774 e!631779)))

(declare-fun c!160627 () Bool)

(assert (=> b!982148 (= c!160627 ((_ is Star!2739) r!15766))))

(declare-fun call!63209 () Bool)

(declare-fun bm!63203 () Bool)

(assert (=> bm!63203 (= call!63209 (Exists!476 (ite c!160627 lambda!34999 lambda!35000)))))

(declare-fun b!982149 () Bool)

(declare-fun e!631780 () Bool)

(assert (=> b!982149 (= e!631780 (= s!10566 (Cons!9953 (c!160576 r!15766) Nil!9953)))))

(declare-fun b!982150 () Bool)

(declare-fun e!631777 () Bool)

(declare-fun e!631776 () Bool)

(assert (=> b!982150 (= e!631777 e!631776)))

(declare-fun res!445688 () Bool)

(assert (=> b!982150 (= res!445688 (not ((_ is EmptyLang!2739) r!15766)))))

(assert (=> b!982150 (=> (not res!445688) (not e!631776))))

(assert (=> b!982151 (= e!631779 call!63209)))

(declare-fun b!982152 () Bool)

(declare-fun e!631775 () Bool)

(assert (=> b!982152 (= e!631774 e!631775)))

(declare-fun res!445689 () Bool)

(assert (=> b!982152 (= res!445689 (matchRSpec!538 (regOne!5991 r!15766) s!10566))))

(assert (=> b!982152 (=> res!445689 e!631775)))

(declare-fun bm!63204 () Bool)

(declare-fun isEmpty!6279 (List!9969) Bool)

(assert (=> bm!63204 (= call!63208 (isEmpty!6279 s!10566))))

(declare-fun b!982154 () Bool)

(declare-fun c!160626 () Bool)

(assert (=> b!982154 (= c!160626 ((_ is ElementMatch!2739) r!15766))))

(assert (=> b!982154 (= e!631776 e!631780)))

(declare-fun b!982155 () Bool)

(assert (=> b!982155 (= e!631777 call!63208)))

(declare-fun b!982156 () Bool)

(assert (=> b!982156 (= e!631775 (matchRSpec!538 (regTwo!5991 r!15766) s!10566))))

(declare-fun b!982157 () Bool)

(declare-fun c!160628 () Bool)

(assert (=> b!982157 (= c!160628 ((_ is Union!2739) r!15766))))

(assert (=> b!982157 (= e!631780 e!631774)))

(declare-fun d!288371 () Bool)

(declare-fun c!160629 () Bool)

(assert (=> d!288371 (= c!160629 ((_ is EmptyExpr!2739) r!15766))))

(assert (=> d!288371 (= (matchRSpec!538 r!15766 s!10566) e!631777)))

(assert (=> b!982153 (= e!631778 call!63209)))

(assert (= (and d!288371 c!160629) b!982155))

(assert (= (and d!288371 (not c!160629)) b!982150))

(assert (= (and b!982150 res!445688) b!982154))

(assert (= (and b!982154 c!160626) b!982149))

(assert (= (and b!982154 (not c!160626)) b!982157))

(assert (= (and b!982157 c!160628) b!982152))

(assert (= (and b!982157 (not c!160628)) b!982148))

(assert (= (and b!982152 (not res!445689)) b!982156))

(assert (= (and b!982148 c!160627) b!982147))

(assert (= (and b!982148 (not c!160627)) b!982151))

(assert (= (and b!982147 (not res!445690)) b!982153))

(assert (= (or b!982153 b!982151) bm!63203))

(assert (= (or b!982155 b!982147) bm!63204))

(declare-fun m!1180653 () Bool)

(assert (=> bm!63203 m!1180653))

(declare-fun m!1180655 () Bool)

(assert (=> b!982152 m!1180655))

(declare-fun m!1180657 () Bool)

(assert (=> bm!63204 m!1180657))

(declare-fun m!1180659 () Bool)

(assert (=> b!982156 m!1180659))

(assert (=> b!981927 d!288371))

(declare-fun b!982213 () Bool)

(declare-fun e!631816 () Bool)

(declare-fun head!1814 (List!9969) C!6048)

(assert (=> b!982213 (= e!631816 (not (= (head!1814 s!10566) (c!160576 r!15766))))))

(declare-fun b!982214 () Bool)

(declare-fun res!445726 () Bool)

(declare-fun e!631811 () Bool)

(assert (=> b!982214 (=> (not res!445726) (not e!631811))))

(declare-fun tail!1376 (List!9969) List!9969)

(assert (=> b!982214 (= res!445726 (isEmpty!6279 (tail!1376 s!10566)))))

(declare-fun b!982215 () Bool)

(declare-fun res!445723 () Bool)

(declare-fun e!631812 () Bool)

(assert (=> b!982215 (=> res!445723 e!631812)))

(assert (=> b!982215 (= res!445723 e!631811)))

(declare-fun res!445728 () Bool)

(assert (=> b!982215 (=> (not res!445728) (not e!631811))))

(declare-fun lt!350148 () Bool)

(assert (=> b!982215 (= res!445728 lt!350148)))

(declare-fun b!982216 () Bool)

(declare-fun e!631810 () Bool)

(assert (=> b!982216 (= e!631810 (not lt!350148))))

(declare-fun b!982217 () Bool)

(declare-fun e!631815 () Bool)

(declare-fun call!63212 () Bool)

(assert (=> b!982217 (= e!631815 (= lt!350148 call!63212))))

(declare-fun b!982218 () Bool)

(declare-fun res!445729 () Bool)

(assert (=> b!982218 (=> res!445729 e!631816)))

(assert (=> b!982218 (= res!445729 (not (isEmpty!6279 (tail!1376 s!10566))))))

(declare-fun b!982219 () Bool)

(declare-fun e!631814 () Bool)

(assert (=> b!982219 (= e!631814 e!631816)))

(declare-fun res!445727 () Bool)

(assert (=> b!982219 (=> res!445727 e!631816)))

(assert (=> b!982219 (= res!445727 call!63212)))

(declare-fun b!982220 () Bool)

(declare-fun res!445722 () Bool)

(assert (=> b!982220 (=> (not res!445722) (not e!631811))))

(assert (=> b!982220 (= res!445722 (not call!63212))))

(declare-fun b!982221 () Bool)

(declare-fun e!631813 () Bool)

(assert (=> b!982221 (= e!631813 (nullable!855 r!15766))))

(declare-fun bm!63207 () Bool)

(assert (=> bm!63207 (= call!63212 (isEmpty!6279 s!10566))))

(declare-fun b!982222 () Bool)

(declare-fun derivativeStep!661 (Regex!2739 C!6048) Regex!2739)

(assert (=> b!982222 (= e!631813 (matchR!1275 (derivativeStep!661 r!15766 (head!1814 s!10566)) (tail!1376 s!10566)))))

(declare-fun d!288381 () Bool)

(assert (=> d!288381 e!631815))

(declare-fun c!160642 () Bool)

(assert (=> d!288381 (= c!160642 ((_ is EmptyExpr!2739) r!15766))))

(assert (=> d!288381 (= lt!350148 e!631813)))

(declare-fun c!160644 () Bool)

(assert (=> d!288381 (= c!160644 (isEmpty!6279 s!10566))))

(assert (=> d!288381 (validRegex!1208 r!15766)))

(assert (=> d!288381 (= (matchR!1275 r!15766 s!10566) lt!350148)))

(declare-fun b!982223 () Bool)

(assert (=> b!982223 (= e!631811 (= (head!1814 s!10566) (c!160576 r!15766)))))

(declare-fun b!982224 () Bool)

(assert (=> b!982224 (= e!631815 e!631810)))

(declare-fun c!160643 () Bool)

(assert (=> b!982224 (= c!160643 ((_ is EmptyLang!2739) r!15766))))

(declare-fun b!982225 () Bool)

(declare-fun res!445724 () Bool)

(assert (=> b!982225 (=> res!445724 e!631812)))

(assert (=> b!982225 (= res!445724 (not ((_ is ElementMatch!2739) r!15766)))))

(assert (=> b!982225 (= e!631810 e!631812)))

(declare-fun b!982226 () Bool)

(assert (=> b!982226 (= e!631812 e!631814)))

(declare-fun res!445725 () Bool)

(assert (=> b!982226 (=> (not res!445725) (not e!631814))))

(assert (=> b!982226 (= res!445725 (not lt!350148))))

(assert (= (and d!288381 c!160644) b!982221))

(assert (= (and d!288381 (not c!160644)) b!982222))

(assert (= (and d!288381 c!160642) b!982217))

(assert (= (and d!288381 (not c!160642)) b!982224))

(assert (= (and b!982224 c!160643) b!982216))

(assert (= (and b!982224 (not c!160643)) b!982225))

(assert (= (and b!982225 (not res!445724)) b!982215))

(assert (= (and b!982215 res!445728) b!982220))

(assert (= (and b!982220 res!445722) b!982214))

(assert (= (and b!982214 res!445726) b!982223))

(assert (= (and b!982215 (not res!445723)) b!982226))

(assert (= (and b!982226 res!445725) b!982219))

(assert (= (and b!982219 (not res!445727)) b!982218))

(assert (= (and b!982218 (not res!445729)) b!982213))

(assert (= (or b!982217 b!982219 b!982220) bm!63207))

(declare-fun m!1180661 () Bool)

(assert (=> b!982222 m!1180661))

(assert (=> b!982222 m!1180661))

(declare-fun m!1180665 () Bool)

(assert (=> b!982222 m!1180665))

(declare-fun m!1180669 () Bool)

(assert (=> b!982222 m!1180669))

(assert (=> b!982222 m!1180665))

(assert (=> b!982222 m!1180669))

(declare-fun m!1180675 () Bool)

(assert (=> b!982222 m!1180675))

(assert (=> b!982213 m!1180661))

(assert (=> b!982214 m!1180669))

(assert (=> b!982214 m!1180669))

(declare-fun m!1180679 () Bool)

(assert (=> b!982214 m!1180679))

(assert (=> b!982218 m!1180669))

(assert (=> b!982218 m!1180669))

(assert (=> b!982218 m!1180679))

(assert (=> d!288381 m!1180657))

(assert (=> d!288381 m!1180559))

(assert (=> bm!63207 m!1180657))

(declare-fun m!1180683 () Bool)

(assert (=> b!982221 m!1180683))

(assert (=> b!982223 m!1180661))

(assert (=> b!981927 d!288381))

(declare-fun d!288383 () Bool)

(assert (=> d!288383 (= (matchR!1275 r!15766 s!10566) (matchRSpec!538 r!15766 s!10566))))

(declare-fun lt!350151 () Unit!15137)

(declare-fun choose!6228 (Regex!2739 List!9969) Unit!15137)

(assert (=> d!288383 (= lt!350151 (choose!6228 r!15766 s!10566))))

(assert (=> d!288383 (validRegex!1208 r!15766)))

(assert (=> d!288383 (= (mainMatchTheorem!538 r!15766 s!10566) lt!350151)))

(declare-fun bs!243969 () Bool)

(assert (= bs!243969 d!288383))

(assert (=> bs!243969 m!1180573))

(assert (=> bs!243969 m!1180571))

(declare-fun m!1180703 () Bool)

(assert (=> bs!243969 m!1180703))

(assert (=> bs!243969 m!1180559))

(assert (=> b!981927 d!288383))

(declare-fun e!631836 () Bool)

(assert (=> b!981923 (= tp!300014 e!631836)))

(declare-fun b!982282 () Bool)

(declare-fun tp!300068 () Bool)

(declare-fun tp!300069 () Bool)

(assert (=> b!982282 (= e!631836 (and tp!300068 tp!300069))))

(declare-fun b!982281 () Bool)

(assert (=> b!982281 (= e!631836 tp_is_empty!5121)))

(declare-fun b!982283 () Bool)

(declare-fun tp!300066 () Bool)

(assert (=> b!982283 (= e!631836 tp!300066)))

(declare-fun b!982284 () Bool)

(declare-fun tp!300065 () Bool)

(declare-fun tp!300067 () Bool)

(assert (=> b!982284 (= e!631836 (and tp!300065 tp!300067))))

(assert (= (and b!981923 ((_ is ElementMatch!2739) (regOne!5990 r!15766))) b!982281))

(assert (= (and b!981923 ((_ is Concat!4572) (regOne!5990 r!15766))) b!982282))

(assert (= (and b!981923 ((_ is Star!2739) (regOne!5990 r!15766))) b!982283))

(assert (= (and b!981923 ((_ is Union!2739) (regOne!5990 r!15766))) b!982284))

(declare-fun e!631837 () Bool)

(assert (=> b!981923 (= tp!300016 e!631837)))

(declare-fun b!982286 () Bool)

(declare-fun tp!300073 () Bool)

(declare-fun tp!300074 () Bool)

(assert (=> b!982286 (= e!631837 (and tp!300073 tp!300074))))

(declare-fun b!982285 () Bool)

(assert (=> b!982285 (= e!631837 tp_is_empty!5121)))

(declare-fun b!982287 () Bool)

(declare-fun tp!300071 () Bool)

(assert (=> b!982287 (= e!631837 tp!300071)))

(declare-fun b!982288 () Bool)

(declare-fun tp!300070 () Bool)

(declare-fun tp!300072 () Bool)

(assert (=> b!982288 (= e!631837 (and tp!300070 tp!300072))))

(assert (= (and b!981923 ((_ is ElementMatch!2739) (regTwo!5990 r!15766))) b!982285))

(assert (= (and b!981923 ((_ is Concat!4572) (regTwo!5990 r!15766))) b!982286))

(assert (= (and b!981923 ((_ is Star!2739) (regTwo!5990 r!15766))) b!982287))

(assert (= (and b!981923 ((_ is Union!2739) (regTwo!5990 r!15766))) b!982288))

(declare-fun e!631838 () Bool)

(assert (=> b!981922 (= tp!300011 e!631838)))

(declare-fun b!982290 () Bool)

(declare-fun tp!300078 () Bool)

(declare-fun tp!300079 () Bool)

(assert (=> b!982290 (= e!631838 (and tp!300078 tp!300079))))

(declare-fun b!982289 () Bool)

(assert (=> b!982289 (= e!631838 tp_is_empty!5121)))

(declare-fun b!982291 () Bool)

(declare-fun tp!300076 () Bool)

(assert (=> b!982291 (= e!631838 tp!300076)))

(declare-fun b!982292 () Bool)

(declare-fun tp!300075 () Bool)

(declare-fun tp!300077 () Bool)

(assert (=> b!982292 (= e!631838 (and tp!300075 tp!300077))))

(assert (= (and b!981922 ((_ is ElementMatch!2739) (regOne!5991 r!15766))) b!982289))

(assert (= (and b!981922 ((_ is Concat!4572) (regOne!5991 r!15766))) b!982290))

(assert (= (and b!981922 ((_ is Star!2739) (regOne!5991 r!15766))) b!982291))

(assert (= (and b!981922 ((_ is Union!2739) (regOne!5991 r!15766))) b!982292))

(declare-fun e!631839 () Bool)

(assert (=> b!981922 (= tp!300015 e!631839)))

(declare-fun b!982294 () Bool)

(declare-fun tp!300083 () Bool)

(declare-fun tp!300084 () Bool)

(assert (=> b!982294 (= e!631839 (and tp!300083 tp!300084))))

(declare-fun b!982293 () Bool)

(assert (=> b!982293 (= e!631839 tp_is_empty!5121)))

(declare-fun b!982295 () Bool)

(declare-fun tp!300081 () Bool)

(assert (=> b!982295 (= e!631839 tp!300081)))

(declare-fun b!982296 () Bool)

(declare-fun tp!300080 () Bool)

(declare-fun tp!300082 () Bool)

(assert (=> b!982296 (= e!631839 (and tp!300080 tp!300082))))

(assert (= (and b!981922 ((_ is ElementMatch!2739) (regTwo!5991 r!15766))) b!982293))

(assert (= (and b!981922 ((_ is Concat!4572) (regTwo!5991 r!15766))) b!982294))

(assert (= (and b!981922 ((_ is Star!2739) (regTwo!5991 r!15766))) b!982295))

(assert (= (and b!981922 ((_ is Union!2739) (regTwo!5991 r!15766))) b!982296))

(declare-fun b!982301 () Bool)

(declare-fun e!631842 () Bool)

(declare-fun tp!300087 () Bool)

(assert (=> b!982301 (= e!631842 (and tp_is_empty!5121 tp!300087))))

(assert (=> b!981926 (= tp!300013 e!631842)))

(assert (= (and b!981926 ((_ is Cons!9953) (t!101015 s!10566))) b!982301))

(declare-fun e!631843 () Bool)

(assert (=> b!981921 (= tp!300012 e!631843)))

(declare-fun b!982303 () Bool)

(declare-fun tp!300091 () Bool)

(declare-fun tp!300092 () Bool)

(assert (=> b!982303 (= e!631843 (and tp!300091 tp!300092))))

(declare-fun b!982302 () Bool)

(assert (=> b!982302 (= e!631843 tp_is_empty!5121)))

(declare-fun b!982304 () Bool)

(declare-fun tp!300089 () Bool)

(assert (=> b!982304 (= e!631843 tp!300089)))

(declare-fun b!982305 () Bool)

(declare-fun tp!300088 () Bool)

(declare-fun tp!300090 () Bool)

(assert (=> b!982305 (= e!631843 (and tp!300088 tp!300090))))

(assert (= (and b!981921 ((_ is ElementMatch!2739) (reg!3068 r!15766))) b!982302))

(assert (= (and b!981921 ((_ is Concat!4572) (reg!3068 r!15766))) b!982303))

(assert (= (and b!981921 ((_ is Star!2739) (reg!3068 r!15766))) b!982304))

(assert (= (and b!981921 ((_ is Union!2739) (reg!3068 r!15766))) b!982305))

(check-sat (not b!982085) (not b!982287) (not b!982086) (not b!982082) (not bm!63196) (not d!288361) (not b!982284) (not b!982213) (not d!288383) (not b!982292) (not b!982081) (not d!288367) (not bm!63197) (not b!982301) (not b!982282) (not b!982283) (not d!288363) (not b!982304) (not b!982223) (not b!982218) (not bm!63204) (not b!982156) (not bm!63203) (not b!982291) (not b!982295) (not b!981982) (not b!982294) (not b!982222) (not bm!63185) (not bm!63184) (not b!982296) (not b!982290) (not b!982152) (not b!982305) (not b!982303) (not b!982221) (not d!288381) (not b!982286) (not b!982080) (not d!288359) (not b!982214) (not b!982083) (not bm!63207) (not b!982288) (not b!982107) tp_is_empty!5121)
(check-sat)
