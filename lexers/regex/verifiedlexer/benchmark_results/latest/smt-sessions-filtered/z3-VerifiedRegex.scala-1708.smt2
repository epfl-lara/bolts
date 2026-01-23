; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85702 () Bool)

(assert start!85702)

(declare-fun b!962449 () Bool)

(assert (=> b!962449 true))

(assert (=> b!962449 true))

(assert (=> b!962449 true))

(declare-fun lambda!33636 () Int)

(declare-fun lambda!33635 () Int)

(assert (=> b!962449 (not (= lambda!33636 lambda!33635))))

(assert (=> b!962449 true))

(assert (=> b!962449 true))

(assert (=> b!962449 true))

(declare-fun bs!241037 () Bool)

(declare-fun b!962443 () Bool)

(assert (= bs!241037 (and b!962443 b!962449)))

(declare-datatypes ((C!5920 0))(
  ( (C!5921 (val!3208 Int)) )
))
(declare-datatypes ((Regex!2675 0))(
  ( (ElementMatch!2675 (c!156758 C!5920)) (Concat!4508 (regOne!5862 Regex!2675) (regTwo!5862 Regex!2675)) (EmptyExpr!2675) (Star!2675 (reg!3004 Regex!2675)) (EmptyLang!2675) (Union!2675 (regOne!5863 Regex!2675) (regTwo!5863 Regex!2675)) )
))
(declare-fun lt!347074 () Regex!2675)

(declare-fun lambda!33637 () Int)

(declare-fun r!15766 () Regex!2675)

(declare-fun lt!347081 () Regex!2675)

(declare-fun lt!347078 () Regex!2675)

(assert (=> bs!241037 (= (and (= lt!347074 (reg!3004 r!15766)) (= lt!347081 lt!347078)) (= lambda!33637 lambda!33635))))

(assert (=> bs!241037 (not (= lambda!33637 lambda!33636))))

(assert (=> b!962443 true))

(assert (=> b!962443 true))

(assert (=> b!962443 true))

(declare-fun lambda!33638 () Int)

(assert (=> bs!241037 (not (= lambda!33638 lambda!33635))))

(assert (=> bs!241037 (= (and (= lt!347074 (reg!3004 r!15766)) (= lt!347081 lt!347078)) (= lambda!33638 lambda!33636))))

(assert (=> b!962443 (not (= lambda!33638 lambda!33637))))

(assert (=> b!962443 true))

(assert (=> b!962443 true))

(assert (=> b!962443 true))

(declare-fun b!962442 () Bool)

(declare-fun res!437444 () Bool)

(declare-fun e!621507 () Bool)

(assert (=> b!962442 (=> res!437444 e!621507)))

(declare-fun lt!347077 () Bool)

(assert (=> b!962442 (= res!437444 (not lt!347077))))

(declare-fun e!621509 () Bool)

(assert (=> b!962443 (= e!621509 e!621507)))

(declare-fun res!437441 () Bool)

(assert (=> b!962443 (=> res!437441 e!621507)))

(declare-datatypes ((List!9905 0))(
  ( (Nil!9889) (Cons!9889 (h!15290 C!5920) (t!100951 List!9905)) )
))
(declare-fun s!10566 () List!9905)

(declare-fun isEmpty!6185 (List!9905) Bool)

(assert (=> b!962443 (= res!437441 (isEmpty!6185 s!10566))))

(declare-fun Exists!418 (Int) Bool)

(assert (=> b!962443 (= (Exists!418 lambda!33637) (Exists!418 lambda!33638))))

(declare-datatypes ((Unit!15005 0))(
  ( (Unit!15006) )
))
(declare-fun lt!347080 () Unit!15005)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!136 (Regex!2675 List!9905) Unit!15005)

(assert (=> b!962443 (= lt!347080 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!136 lt!347074 s!10566))))

(assert (=> b!962443 (= lt!347077 (Exists!418 lambda!33637))))

(declare-datatypes ((tuple2!11228 0))(
  ( (tuple2!11229 (_1!6440 List!9905) (_2!6440 List!9905)) )
))
(declare-datatypes ((Option!2256 0))(
  ( (None!2255) (Some!2255 (v!19672 tuple2!11228)) )
))
(declare-fun lt!347075 () Option!2256)

(declare-fun isDefined!1898 (Option!2256) Bool)

(assert (=> b!962443 (= lt!347077 (isDefined!1898 lt!347075))))

(declare-fun findConcatSeparation!362 (Regex!2675 Regex!2675 List!9905 List!9905 List!9905) Option!2256)

(assert (=> b!962443 (= lt!347075 (findConcatSeparation!362 lt!347074 lt!347081 Nil!9889 s!10566 s!10566))))

(declare-fun lt!347084 () Unit!15005)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!362 (Regex!2675 Regex!2675 List!9905) Unit!15005)

(assert (=> b!962443 (= lt!347084 (lemmaFindConcatSeparationEquivalentToExists!362 lt!347074 lt!347081 s!10566))))

(declare-fun matchRSpec!476 (Regex!2675 List!9905) Bool)

(assert (=> b!962443 (matchRSpec!476 lt!347081 s!10566)))

(declare-fun lt!347079 () Unit!15005)

(declare-fun mainMatchTheorem!476 (Regex!2675 List!9905) Unit!15005)

(assert (=> b!962443 (= lt!347079 (mainMatchTheorem!476 lt!347081 s!10566))))

(declare-fun b!962444 () Bool)

(declare-fun e!621511 () Bool)

(declare-fun tp!295775 () Bool)

(assert (=> b!962444 (= e!621511 tp!295775)))

(declare-fun b!962445 () Bool)

(declare-fun e!621508 () Bool)

(declare-fun e!621506 () Bool)

(assert (=> b!962445 (= e!621508 (not e!621506))))

(declare-fun res!437443 () Bool)

(assert (=> b!962445 (=> res!437443 e!621506)))

(declare-fun lt!347083 () Bool)

(get-info :version)

(assert (=> b!962445 (= res!437443 (or lt!347083 (and ((_ is Concat!4508) r!15766) ((_ is EmptyExpr!2675) (regOne!5862 r!15766))) (and ((_ is Concat!4508) r!15766) ((_ is EmptyExpr!2675) (regTwo!5862 r!15766))) ((_ is Concat!4508) r!15766) ((_ is Union!2675) r!15766) (not ((_ is Star!2675) r!15766))))))

(assert (=> b!962445 (= lt!347083 (matchRSpec!476 r!15766 s!10566))))

(declare-fun matchR!1213 (Regex!2675 List!9905) Bool)

(assert (=> b!962445 (= lt!347083 (matchR!1213 r!15766 s!10566))))

(declare-fun lt!347085 () Unit!15005)

(assert (=> b!962445 (= lt!347085 (mainMatchTheorem!476 r!15766 s!10566))))

(declare-fun b!962446 () Bool)

(declare-fun tp_is_empty!4993 () Bool)

(assert (=> b!962446 (= e!621511 tp_is_empty!4993)))

(declare-fun b!962447 () Bool)

(declare-fun tp!295780 () Bool)

(declare-fun tp!295778 () Bool)

(assert (=> b!962447 (= e!621511 (and tp!295780 tp!295778))))

(declare-fun res!437442 () Bool)

(assert (=> start!85702 (=> (not res!437442) (not e!621508))))

(declare-fun validRegex!1144 (Regex!2675) Bool)

(assert (=> start!85702 (= res!437442 (validRegex!1144 r!15766))))

(assert (=> start!85702 e!621508))

(assert (=> start!85702 e!621511))

(declare-fun e!621510 () Bool)

(assert (=> start!85702 e!621510))

(declare-fun b!962448 () Bool)

(declare-fun get!3377 (Option!2256) tuple2!11228)

(assert (=> b!962448 (= e!621507 (matchR!1213 lt!347074 (_1!6440 (get!3377 lt!347075))))))

(assert (=> b!962449 (= e!621506 e!621509)))

(declare-fun res!437440 () Bool)

(assert (=> b!962449 (=> res!437440 e!621509)))

(assert (=> b!962449 (= res!437440 (not (matchR!1213 lt!347081 s!10566)))))

(assert (=> b!962449 (= lt!347081 (Star!2675 lt!347074))))

(declare-fun removeUselessConcat!322 (Regex!2675) Regex!2675)

(assert (=> b!962449 (= lt!347074 (removeUselessConcat!322 (reg!3004 r!15766)))))

(assert (=> b!962449 (= (Exists!418 lambda!33635) (Exists!418 lambda!33636))))

(declare-fun lt!347082 () Unit!15005)

(assert (=> b!962449 (= lt!347082 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!136 (reg!3004 r!15766) s!10566))))

(assert (=> b!962449 (= (isDefined!1898 (findConcatSeparation!362 (reg!3004 r!15766) lt!347078 Nil!9889 s!10566 s!10566)) (Exists!418 lambda!33635))))

(declare-fun lt!347076 () Unit!15005)

(assert (=> b!962449 (= lt!347076 (lemmaFindConcatSeparationEquivalentToExists!362 (reg!3004 r!15766) lt!347078 s!10566))))

(assert (=> b!962449 (= lt!347078 (Star!2675 (reg!3004 r!15766)))))

(declare-fun b!962450 () Bool)

(declare-fun tp!295776 () Bool)

(assert (=> b!962450 (= e!621510 (and tp_is_empty!4993 tp!295776))))

(declare-fun b!962451 () Bool)

(declare-fun tp!295777 () Bool)

(declare-fun tp!295779 () Bool)

(assert (=> b!962451 (= e!621511 (and tp!295777 tp!295779))))

(assert (= (and start!85702 res!437442) b!962445))

(assert (= (and b!962445 (not res!437443)) b!962449))

(assert (= (and b!962449 (not res!437440)) b!962443))

(assert (= (and b!962443 (not res!437441)) b!962442))

(assert (= (and b!962442 (not res!437444)) b!962448))

(assert (= (and start!85702 ((_ is ElementMatch!2675) r!15766)) b!962446))

(assert (= (and start!85702 ((_ is Concat!4508) r!15766)) b!962447))

(assert (= (and start!85702 ((_ is Star!2675) r!15766)) b!962444))

(assert (= (and start!85702 ((_ is Union!2675) r!15766)) b!962451))

(assert (= (and start!85702 ((_ is Cons!9889) s!10566)) b!962450))

(declare-fun m!1169955 () Bool)

(assert (=> b!962443 m!1169955))

(declare-fun m!1169957 () Bool)

(assert (=> b!962443 m!1169957))

(declare-fun m!1169959 () Bool)

(assert (=> b!962443 m!1169959))

(declare-fun m!1169961 () Bool)

(assert (=> b!962443 m!1169961))

(declare-fun m!1169963 () Bool)

(assert (=> b!962443 m!1169963))

(declare-fun m!1169965 () Bool)

(assert (=> b!962443 m!1169965))

(assert (=> b!962443 m!1169965))

(declare-fun m!1169967 () Bool)

(assert (=> b!962443 m!1169967))

(declare-fun m!1169969 () Bool)

(assert (=> b!962443 m!1169969))

(declare-fun m!1169971 () Bool)

(assert (=> b!962443 m!1169971))

(declare-fun m!1169973 () Bool)

(assert (=> b!962445 m!1169973))

(declare-fun m!1169975 () Bool)

(assert (=> b!962445 m!1169975))

(declare-fun m!1169977 () Bool)

(assert (=> b!962445 m!1169977))

(declare-fun m!1169979 () Bool)

(assert (=> start!85702 m!1169979))

(declare-fun m!1169981 () Bool)

(assert (=> b!962448 m!1169981))

(declare-fun m!1169983 () Bool)

(assert (=> b!962448 m!1169983))

(declare-fun m!1169985 () Bool)

(assert (=> b!962449 m!1169985))

(declare-fun m!1169987 () Bool)

(assert (=> b!962449 m!1169987))

(declare-fun m!1169989 () Bool)

(assert (=> b!962449 m!1169989))

(declare-fun m!1169991 () Bool)

(assert (=> b!962449 m!1169991))

(declare-fun m!1169993 () Bool)

(assert (=> b!962449 m!1169993))

(declare-fun m!1169995 () Bool)

(assert (=> b!962449 m!1169995))

(declare-fun m!1169997 () Bool)

(assert (=> b!962449 m!1169997))

(assert (=> b!962449 m!1169987))

(declare-fun m!1169999 () Bool)

(assert (=> b!962449 m!1169999))

(assert (=> b!962449 m!1169989))

(check-sat tp_is_empty!4993 (not b!962443) (not b!962444) (not start!85702) (not b!962445) (not b!962451) (not b!962450) (not b!962449) (not b!962448) (not b!962447))
(check-sat)
(get-model)

(declare-fun bm!60720 () Bool)

(declare-fun call!60725 () Bool)

(assert (=> bm!60720 (= call!60725 (isEmpty!6185 (_1!6440 (get!3377 lt!347075))))))

(declare-fun b!962587 () Bool)

(declare-fun res!437517 () Bool)

(declare-fun e!621580 () Bool)

(assert (=> b!962587 (=> (not res!437517) (not e!621580))))

(assert (=> b!962587 (= res!437517 (not call!60725))))

(declare-fun b!962588 () Bool)

(declare-fun head!1768 (List!9905) C!5920)

(assert (=> b!962588 (= e!621580 (= (head!1768 (_1!6440 (get!3377 lt!347075))) (c!156758 lt!347074)))))

(declare-fun b!962589 () Bool)

(declare-fun res!437515 () Bool)

(declare-fun e!621578 () Bool)

(assert (=> b!962589 (=> res!437515 e!621578)))

(declare-fun tail!1330 (List!9905) List!9905)

(assert (=> b!962589 (= res!437515 (not (isEmpty!6185 (tail!1330 (_1!6440 (get!3377 lt!347075))))))))

(declare-fun b!962590 () Bool)

(declare-fun res!437511 () Bool)

(assert (=> b!962590 (=> (not res!437511) (not e!621580))))

(assert (=> b!962590 (= res!437511 (isEmpty!6185 (tail!1330 (_1!6440 (get!3377 lt!347075)))))))

(declare-fun b!962591 () Bool)

(declare-fun e!621581 () Bool)

(declare-fun nullable!807 (Regex!2675) Bool)

(assert (=> b!962591 (= e!621581 (nullable!807 lt!347074))))

(declare-fun b!962592 () Bool)

(declare-fun e!621584 () Bool)

(assert (=> b!962592 (= e!621584 e!621578)))

(declare-fun res!437516 () Bool)

(assert (=> b!962592 (=> res!437516 e!621578)))

(assert (=> b!962592 (= res!437516 call!60725)))

(declare-fun b!962593 () Bool)

(assert (=> b!962593 (= e!621578 (not (= (head!1768 (_1!6440 (get!3377 lt!347075))) (c!156758 lt!347074))))))

(declare-fun b!962594 () Bool)

(declare-fun res!437510 () Bool)

(declare-fun e!621583 () Bool)

(assert (=> b!962594 (=> res!437510 e!621583)))

(assert (=> b!962594 (= res!437510 (not ((_ is ElementMatch!2675) lt!347074)))))

(declare-fun e!621582 () Bool)

(assert (=> b!962594 (= e!621582 e!621583)))

(declare-fun b!962596 () Bool)

(declare-fun derivativeStep!615 (Regex!2675 C!5920) Regex!2675)

(assert (=> b!962596 (= e!621581 (matchR!1213 (derivativeStep!615 lt!347074 (head!1768 (_1!6440 (get!3377 lt!347075)))) (tail!1330 (_1!6440 (get!3377 lt!347075)))))))

(declare-fun b!962597 () Bool)

(declare-fun res!437512 () Bool)

(assert (=> b!962597 (=> res!437512 e!621583)))

(assert (=> b!962597 (= res!437512 e!621580)))

(declare-fun res!437513 () Bool)

(assert (=> b!962597 (=> (not res!437513) (not e!621580))))

(declare-fun lt!347101 () Bool)

(assert (=> b!962597 (= res!437513 lt!347101)))

(declare-fun b!962598 () Bool)

(assert (=> b!962598 (= e!621582 (not lt!347101))))

(declare-fun b!962595 () Bool)

(declare-fun e!621579 () Bool)

(assert (=> b!962595 (= e!621579 e!621582)))

(declare-fun c!156793 () Bool)

(assert (=> b!962595 (= c!156793 ((_ is EmptyLang!2675) lt!347074))))

(declare-fun d!285323 () Bool)

(assert (=> d!285323 e!621579))

(declare-fun c!156792 () Bool)

(assert (=> d!285323 (= c!156792 ((_ is EmptyExpr!2675) lt!347074))))

(assert (=> d!285323 (= lt!347101 e!621581)))

(declare-fun c!156794 () Bool)

(assert (=> d!285323 (= c!156794 (isEmpty!6185 (_1!6440 (get!3377 lt!347075))))))

(assert (=> d!285323 (validRegex!1144 lt!347074)))

(assert (=> d!285323 (= (matchR!1213 lt!347074 (_1!6440 (get!3377 lt!347075))) lt!347101)))

(declare-fun b!962599 () Bool)

(assert (=> b!962599 (= e!621579 (= lt!347101 call!60725))))

(declare-fun b!962600 () Bool)

(assert (=> b!962600 (= e!621583 e!621584)))

(declare-fun res!437514 () Bool)

(assert (=> b!962600 (=> (not res!437514) (not e!621584))))

(assert (=> b!962600 (= res!437514 (not lt!347101))))

(assert (= (and d!285323 c!156794) b!962591))

(assert (= (and d!285323 (not c!156794)) b!962596))

(assert (= (and d!285323 c!156792) b!962599))

(assert (= (and d!285323 (not c!156792)) b!962595))

(assert (= (and b!962595 c!156793) b!962598))

(assert (= (and b!962595 (not c!156793)) b!962594))

(assert (= (and b!962594 (not res!437510)) b!962597))

(assert (= (and b!962597 res!437513) b!962587))

(assert (= (and b!962587 res!437517) b!962590))

(assert (= (and b!962590 res!437511) b!962588))

(assert (= (and b!962597 (not res!437512)) b!962600))

(assert (= (and b!962600 res!437514) b!962592))

(assert (= (and b!962592 (not res!437516)) b!962589))

(assert (= (and b!962589 (not res!437515)) b!962593))

(assert (= (or b!962599 b!962587 b!962592) bm!60720))

(declare-fun m!1170059 () Bool)

(assert (=> b!962591 m!1170059))

(declare-fun m!1170061 () Bool)

(assert (=> b!962593 m!1170061))

(assert (=> b!962588 m!1170061))

(declare-fun m!1170063 () Bool)

(assert (=> d!285323 m!1170063))

(declare-fun m!1170065 () Bool)

(assert (=> d!285323 m!1170065))

(declare-fun m!1170067 () Bool)

(assert (=> b!962590 m!1170067))

(assert (=> b!962590 m!1170067))

(declare-fun m!1170069 () Bool)

(assert (=> b!962590 m!1170069))

(assert (=> bm!60720 m!1170063))

(assert (=> b!962596 m!1170061))

(assert (=> b!962596 m!1170061))

(declare-fun m!1170071 () Bool)

(assert (=> b!962596 m!1170071))

(assert (=> b!962596 m!1170067))

(assert (=> b!962596 m!1170071))

(assert (=> b!962596 m!1170067))

(declare-fun m!1170073 () Bool)

(assert (=> b!962596 m!1170073))

(assert (=> b!962589 m!1170067))

(assert (=> b!962589 m!1170067))

(assert (=> b!962589 m!1170069))

(assert (=> b!962448 d!285323))

(declare-fun d!285335 () Bool)

(assert (=> d!285335 (= (get!3377 lt!347075) (v!19672 lt!347075))))

(assert (=> b!962448 d!285335))

(declare-fun b!962673 () Bool)

(declare-fun e!621635 () Bool)

(declare-fun e!621639 () Bool)

(assert (=> b!962673 (= e!621635 e!621639)))

(declare-fun c!156812 () Bool)

(assert (=> b!962673 (= c!156812 ((_ is Star!2675) r!15766))))

(declare-fun b!962674 () Bool)

(declare-fun e!621638 () Bool)

(declare-fun e!621637 () Bool)

(assert (=> b!962674 (= e!621638 e!621637)))

(declare-fun res!437560 () Bool)

(assert (=> b!962674 (=> (not res!437560) (not e!621637))))

(declare-fun call!60741 () Bool)

(assert (=> b!962674 (= res!437560 call!60741)))

(declare-fun b!962675 () Bool)

(declare-fun res!437562 () Bool)

(assert (=> b!962675 (=> res!437562 e!621638)))

(assert (=> b!962675 (= res!437562 (not ((_ is Concat!4508) r!15766)))))

(declare-fun e!621640 () Bool)

(assert (=> b!962675 (= e!621640 e!621638)))

(declare-fun d!285337 () Bool)

(declare-fun res!437559 () Bool)

(assert (=> d!285337 (=> res!437559 e!621635)))

(assert (=> d!285337 (= res!437559 ((_ is ElementMatch!2675) r!15766))))

(assert (=> d!285337 (= (validRegex!1144 r!15766) e!621635)))

(declare-fun bm!60736 () Bool)

(declare-fun c!156811 () Bool)

(assert (=> bm!60736 (= call!60741 (validRegex!1144 (ite c!156811 (regOne!5863 r!15766) (regOne!5862 r!15766))))))

(declare-fun b!962676 () Bool)

(declare-fun res!437558 () Bool)

(declare-fun e!621641 () Bool)

(assert (=> b!962676 (=> (not res!437558) (not e!621641))))

(assert (=> b!962676 (= res!437558 call!60741)))

(assert (=> b!962676 (= e!621640 e!621641)))

(declare-fun b!962677 () Bool)

(declare-fun e!621636 () Bool)

(declare-fun call!60743 () Bool)

(assert (=> b!962677 (= e!621636 call!60743)))

(declare-fun b!962678 () Bool)

(declare-fun call!60742 () Bool)

(assert (=> b!962678 (= e!621641 call!60742)))

(declare-fun b!962679 () Bool)

(assert (=> b!962679 (= e!621639 e!621640)))

(assert (=> b!962679 (= c!156811 ((_ is Union!2675) r!15766))))

(declare-fun bm!60737 () Bool)

(assert (=> bm!60737 (= call!60742 call!60743)))

(declare-fun b!962680 () Bool)

(assert (=> b!962680 (= e!621637 call!60742)))

(declare-fun bm!60738 () Bool)

(assert (=> bm!60738 (= call!60743 (validRegex!1144 (ite c!156812 (reg!3004 r!15766) (ite c!156811 (regTwo!5863 r!15766) (regTwo!5862 r!15766)))))))

(declare-fun b!962681 () Bool)

(assert (=> b!962681 (= e!621639 e!621636)))

(declare-fun res!437561 () Bool)

(assert (=> b!962681 (= res!437561 (not (nullable!807 (reg!3004 r!15766))))))

(assert (=> b!962681 (=> (not res!437561) (not e!621636))))

(assert (= (and d!285337 (not res!437559)) b!962673))

(assert (= (and b!962673 c!156812) b!962681))

(assert (= (and b!962673 (not c!156812)) b!962679))

(assert (= (and b!962681 res!437561) b!962677))

(assert (= (and b!962679 c!156811) b!962676))

(assert (= (and b!962679 (not c!156811)) b!962675))

(assert (= (and b!962676 res!437558) b!962678))

(assert (= (and b!962675 (not res!437562)) b!962674))

(assert (= (and b!962674 res!437560) b!962680))

(assert (= (or b!962678 b!962680) bm!60737))

(assert (= (or b!962676 b!962674) bm!60736))

(assert (= (or b!962677 bm!60737) bm!60738))

(declare-fun m!1170101 () Bool)

(assert (=> bm!60736 m!1170101))

(declare-fun m!1170103 () Bool)

(assert (=> bm!60738 m!1170103))

(declare-fun m!1170105 () Bool)

(assert (=> b!962681 m!1170105))

(assert (=> start!85702 d!285337))

(declare-fun bm!60739 () Bool)

(declare-fun call!60744 () Bool)

(assert (=> bm!60739 (= call!60744 (isEmpty!6185 s!10566))))

(declare-fun b!962682 () Bool)

(declare-fun res!437570 () Bool)

(declare-fun e!621644 () Bool)

(assert (=> b!962682 (=> (not res!437570) (not e!621644))))

(assert (=> b!962682 (= res!437570 (not call!60744))))

(declare-fun b!962683 () Bool)

(assert (=> b!962683 (= e!621644 (= (head!1768 s!10566) (c!156758 lt!347081)))))

(declare-fun b!962684 () Bool)

(declare-fun res!437568 () Bool)

(declare-fun e!621642 () Bool)

(assert (=> b!962684 (=> res!437568 e!621642)))

(assert (=> b!962684 (= res!437568 (not (isEmpty!6185 (tail!1330 s!10566))))))

(declare-fun b!962685 () Bool)

(declare-fun res!437564 () Bool)

(assert (=> b!962685 (=> (not res!437564) (not e!621644))))

(assert (=> b!962685 (= res!437564 (isEmpty!6185 (tail!1330 s!10566)))))

(declare-fun b!962686 () Bool)

(declare-fun e!621645 () Bool)

(assert (=> b!962686 (= e!621645 (nullable!807 lt!347081))))

(declare-fun b!962687 () Bool)

(declare-fun e!621648 () Bool)

(assert (=> b!962687 (= e!621648 e!621642)))

(declare-fun res!437569 () Bool)

(assert (=> b!962687 (=> res!437569 e!621642)))

(assert (=> b!962687 (= res!437569 call!60744)))

(declare-fun b!962688 () Bool)

(assert (=> b!962688 (= e!621642 (not (= (head!1768 s!10566) (c!156758 lt!347081))))))

(declare-fun b!962689 () Bool)

(declare-fun res!437563 () Bool)

(declare-fun e!621647 () Bool)

(assert (=> b!962689 (=> res!437563 e!621647)))

(assert (=> b!962689 (= res!437563 (not ((_ is ElementMatch!2675) lt!347081)))))

(declare-fun e!621646 () Bool)

(assert (=> b!962689 (= e!621646 e!621647)))

(declare-fun b!962691 () Bool)

(assert (=> b!962691 (= e!621645 (matchR!1213 (derivativeStep!615 lt!347081 (head!1768 s!10566)) (tail!1330 s!10566)))))

(declare-fun b!962692 () Bool)

(declare-fun res!437565 () Bool)

(assert (=> b!962692 (=> res!437565 e!621647)))

(assert (=> b!962692 (= res!437565 e!621644)))

(declare-fun res!437566 () Bool)

(assert (=> b!962692 (=> (not res!437566) (not e!621644))))

(declare-fun lt!347111 () Bool)

(assert (=> b!962692 (= res!437566 lt!347111)))

(declare-fun b!962693 () Bool)

(assert (=> b!962693 (= e!621646 (not lt!347111))))

(declare-fun b!962690 () Bool)

(declare-fun e!621643 () Bool)

(assert (=> b!962690 (= e!621643 e!621646)))

(declare-fun c!156814 () Bool)

(assert (=> b!962690 (= c!156814 ((_ is EmptyLang!2675) lt!347081))))

(declare-fun d!285343 () Bool)

(assert (=> d!285343 e!621643))

(declare-fun c!156813 () Bool)

(assert (=> d!285343 (= c!156813 ((_ is EmptyExpr!2675) lt!347081))))

(assert (=> d!285343 (= lt!347111 e!621645)))

(declare-fun c!156815 () Bool)

(assert (=> d!285343 (= c!156815 (isEmpty!6185 s!10566))))

(assert (=> d!285343 (validRegex!1144 lt!347081)))

(assert (=> d!285343 (= (matchR!1213 lt!347081 s!10566) lt!347111)))

(declare-fun b!962694 () Bool)

(assert (=> b!962694 (= e!621643 (= lt!347111 call!60744))))

(declare-fun b!962695 () Bool)

(assert (=> b!962695 (= e!621647 e!621648)))

(declare-fun res!437567 () Bool)

(assert (=> b!962695 (=> (not res!437567) (not e!621648))))

(assert (=> b!962695 (= res!437567 (not lt!347111))))

(assert (= (and d!285343 c!156815) b!962686))

(assert (= (and d!285343 (not c!156815)) b!962691))

(assert (= (and d!285343 c!156813) b!962694))

(assert (= (and d!285343 (not c!156813)) b!962690))

(assert (= (and b!962690 c!156814) b!962693))

(assert (= (and b!962690 (not c!156814)) b!962689))

(assert (= (and b!962689 (not res!437563)) b!962692))

(assert (= (and b!962692 res!437566) b!962682))

(assert (= (and b!962682 res!437570) b!962685))

(assert (= (and b!962685 res!437564) b!962683))

(assert (= (and b!962692 (not res!437565)) b!962695))

(assert (= (and b!962695 res!437567) b!962687))

(assert (= (and b!962687 (not res!437569)) b!962684))

(assert (= (and b!962684 (not res!437568)) b!962688))

(assert (= (or b!962694 b!962682 b!962687) bm!60739))

(declare-fun m!1170107 () Bool)

(assert (=> b!962686 m!1170107))

(declare-fun m!1170109 () Bool)

(assert (=> b!962688 m!1170109))

(assert (=> b!962683 m!1170109))

(assert (=> d!285343 m!1169969))

(declare-fun m!1170111 () Bool)

(assert (=> d!285343 m!1170111))

(declare-fun m!1170113 () Bool)

(assert (=> b!962685 m!1170113))

(assert (=> b!962685 m!1170113))

(declare-fun m!1170115 () Bool)

(assert (=> b!962685 m!1170115))

(assert (=> bm!60739 m!1169969))

(assert (=> b!962691 m!1170109))

(assert (=> b!962691 m!1170109))

(declare-fun m!1170117 () Bool)

(assert (=> b!962691 m!1170117))

(assert (=> b!962691 m!1170113))

(assert (=> b!962691 m!1170117))

(assert (=> b!962691 m!1170113))

(declare-fun m!1170119 () Bool)

(assert (=> b!962691 m!1170119))

(assert (=> b!962684 m!1170113))

(assert (=> b!962684 m!1170113))

(assert (=> b!962684 m!1170115))

(assert (=> b!962449 d!285343))

(declare-fun b!962795 () Bool)

(declare-fun e!621706 () Regex!2675)

(declare-fun call!60768 () Regex!2675)

(assert (=> b!962795 (= e!621706 (Star!2675 call!60768))))

(declare-fun c!156849 () Bool)

(declare-fun c!156848 () Bool)

(declare-fun c!156851 () Bool)

(declare-fun c!156850 () Bool)

(declare-fun call!60767 () Regex!2675)

(declare-fun bm!60759 () Bool)

(assert (=> bm!60759 (= call!60767 (removeUselessConcat!322 (ite c!156850 (regTwo!5862 (reg!3004 r!15766)) (ite (or c!156848 c!156849) (regOne!5862 (reg!3004 r!15766)) (ite c!156851 (regTwo!5863 (reg!3004 r!15766)) (reg!3004 (reg!3004 r!15766)))))))))

(declare-fun b!962796 () Bool)

(declare-fun e!621705 () Regex!2675)

(declare-fun e!621708 () Regex!2675)

(assert (=> b!962796 (= e!621705 e!621708)))

(assert (=> b!962796 (= c!156851 ((_ is Union!2675) (reg!3004 r!15766)))))

(declare-fun b!962797 () Bool)

(declare-fun e!621710 () Regex!2675)

(declare-fun call!60766 () Regex!2675)

(assert (=> b!962797 (= e!621710 call!60766)))

(declare-fun b!962798 () Bool)

(declare-fun call!60764 () Regex!2675)

(assert (=> b!962798 (= e!621708 (Union!2675 call!60764 call!60768))))

(declare-fun b!962799 () Bool)

(declare-fun e!621707 () Regex!2675)

(assert (=> b!962799 (= e!621707 call!60767)))

(declare-fun bm!60760 () Bool)

(declare-fun call!60765 () Regex!2675)

(assert (=> bm!60760 (= call!60768 call!60765)))

(declare-fun b!962800 () Bool)

(assert (=> b!962800 (= e!621705 (Concat!4508 call!60765 call!60764))))

(declare-fun b!962801 () Bool)

(assert (=> b!962801 (= e!621707 e!621710)))

(assert (=> b!962801 (= c!156848 (and ((_ is Concat!4508) (reg!3004 r!15766)) ((_ is EmptyExpr!2675) (regTwo!5862 (reg!3004 r!15766)))))))

(declare-fun d!285345 () Bool)

(declare-fun e!621709 () Bool)

(assert (=> d!285345 e!621709))

(declare-fun res!437608 () Bool)

(assert (=> d!285345 (=> (not res!437608) (not e!621709))))

(declare-fun lt!347123 () Regex!2675)

(assert (=> d!285345 (= res!437608 (validRegex!1144 lt!347123))))

(assert (=> d!285345 (= lt!347123 e!621707)))

(assert (=> d!285345 (= c!156850 (and ((_ is Concat!4508) (reg!3004 r!15766)) ((_ is EmptyExpr!2675) (regOne!5862 (reg!3004 r!15766)))))))

(assert (=> d!285345 (validRegex!1144 (reg!3004 r!15766))))

(assert (=> d!285345 (= (removeUselessConcat!322 (reg!3004 r!15766)) lt!347123)))

(declare-fun bm!60761 () Bool)

(assert (=> bm!60761 (= call!60766 call!60767)))

(declare-fun bm!60762 () Bool)

(assert (=> bm!60762 (= call!60764 (removeUselessConcat!322 (ite c!156849 (regTwo!5862 (reg!3004 r!15766)) (regOne!5863 (reg!3004 r!15766)))))))

(declare-fun b!962802 () Bool)

(assert (=> b!962802 (= e!621709 (= (nullable!807 lt!347123) (nullable!807 (reg!3004 r!15766))))))

(declare-fun b!962803 () Bool)

(assert (=> b!962803 (= c!156849 ((_ is Concat!4508) (reg!3004 r!15766)))))

(assert (=> b!962803 (= e!621710 e!621705)))

(declare-fun b!962804 () Bool)

(assert (=> b!962804 (= e!621706 (reg!3004 r!15766))))

(declare-fun b!962805 () Bool)

(declare-fun c!156847 () Bool)

(assert (=> b!962805 (= c!156847 ((_ is Star!2675) (reg!3004 r!15766)))))

(assert (=> b!962805 (= e!621708 e!621706)))

(declare-fun bm!60763 () Bool)

(assert (=> bm!60763 (= call!60765 call!60766)))

(assert (= (and d!285345 c!156850) b!962799))

(assert (= (and d!285345 (not c!156850)) b!962801))

(assert (= (and b!962801 c!156848) b!962797))

(assert (= (and b!962801 (not c!156848)) b!962803))

(assert (= (and b!962803 c!156849) b!962800))

(assert (= (and b!962803 (not c!156849)) b!962796))

(assert (= (and b!962796 c!156851) b!962798))

(assert (= (and b!962796 (not c!156851)) b!962805))

(assert (= (and b!962805 c!156847) b!962795))

(assert (= (and b!962805 (not c!156847)) b!962804))

(assert (= (or b!962798 b!962795) bm!60760))

(assert (= (or b!962800 b!962798) bm!60762))

(assert (= (or b!962800 bm!60760) bm!60763))

(assert (= (or b!962797 bm!60763) bm!60761))

(assert (= (or b!962799 bm!60761) bm!60759))

(assert (= (and d!285345 res!437608) b!962802))

(declare-fun m!1170165 () Bool)

(assert (=> bm!60759 m!1170165))

(declare-fun m!1170167 () Bool)

(assert (=> d!285345 m!1170167))

(declare-fun m!1170169 () Bool)

(assert (=> d!285345 m!1170169))

(declare-fun m!1170171 () Bool)

(assert (=> bm!60762 m!1170171))

(declare-fun m!1170173 () Bool)

(assert (=> b!962802 m!1170173))

(assert (=> b!962802 m!1170105))

(assert (=> b!962449 d!285345))

(declare-fun d!285365 () Bool)

(declare-fun choose!6067 (Int) Bool)

(assert (=> d!285365 (= (Exists!418 lambda!33635) (choose!6067 lambda!33635))))

(declare-fun bs!241091 () Bool)

(assert (= bs!241091 d!285365))

(declare-fun m!1170175 () Bool)

(assert (=> bs!241091 m!1170175))

(assert (=> b!962449 d!285365))

(declare-fun bs!241095 () Bool)

(declare-fun d!285367 () Bool)

(assert (= bs!241095 (and d!285367 b!962449)))

(declare-fun lambda!33661 () Int)

(assert (=> bs!241095 (= lambda!33661 lambda!33635)))

(assert (=> bs!241095 (not (= lambda!33661 lambda!33636))))

(declare-fun bs!241096 () Bool)

(assert (= bs!241096 (and d!285367 b!962443)))

(assert (=> bs!241096 (= (and (= (reg!3004 r!15766) lt!347074) (= lt!347078 lt!347081)) (= lambda!33661 lambda!33637))))

(assert (=> bs!241096 (not (= lambda!33661 lambda!33638))))

(assert (=> d!285367 true))

(assert (=> d!285367 true))

(assert (=> d!285367 true))

(assert (=> d!285367 (= (isDefined!1898 (findConcatSeparation!362 (reg!3004 r!15766) lt!347078 Nil!9889 s!10566 s!10566)) (Exists!418 lambda!33661))))

(declare-fun lt!347127 () Unit!15005)

(declare-fun choose!6068 (Regex!2675 Regex!2675 List!9905) Unit!15005)

(assert (=> d!285367 (= lt!347127 (choose!6068 (reg!3004 r!15766) lt!347078 s!10566))))

(assert (=> d!285367 (validRegex!1144 (reg!3004 r!15766))))

(assert (=> d!285367 (= (lemmaFindConcatSeparationEquivalentToExists!362 (reg!3004 r!15766) lt!347078 s!10566) lt!347127)))

(declare-fun bs!241097 () Bool)

(assert (= bs!241097 d!285367))

(declare-fun m!1170187 () Bool)

(assert (=> bs!241097 m!1170187))

(assert (=> bs!241097 m!1169989))

(declare-fun m!1170189 () Bool)

(assert (=> bs!241097 m!1170189))

(assert (=> bs!241097 m!1169989))

(assert (=> bs!241097 m!1169991))

(assert (=> bs!241097 m!1170169))

(assert (=> b!962449 d!285367))

(declare-fun bs!241098 () Bool)

(declare-fun d!285373 () Bool)

(assert (= bs!241098 (and d!285373 d!285367)))

(declare-fun lambda!33666 () Int)

(assert (=> bs!241098 (= (= (Star!2675 (reg!3004 r!15766)) lt!347078) (= lambda!33666 lambda!33661))))

(declare-fun bs!241099 () Bool)

(assert (= bs!241099 (and d!285373 b!962449)))

(assert (=> bs!241099 (= (= (Star!2675 (reg!3004 r!15766)) lt!347078) (= lambda!33666 lambda!33635))))

(assert (=> bs!241099 (not (= lambda!33666 lambda!33636))))

(declare-fun bs!241100 () Bool)

(assert (= bs!241100 (and d!285373 b!962443)))

(assert (=> bs!241100 (= (and (= (reg!3004 r!15766) lt!347074) (= (Star!2675 (reg!3004 r!15766)) lt!347081)) (= lambda!33666 lambda!33637))))

(assert (=> bs!241100 (not (= lambda!33666 lambda!33638))))

(assert (=> d!285373 true))

(assert (=> d!285373 true))

(declare-fun lambda!33667 () Int)

(assert (=> bs!241098 (not (= lambda!33667 lambda!33661))))

(assert (=> bs!241099 (not (= lambda!33667 lambda!33635))))

(declare-fun bs!241101 () Bool)

(assert (= bs!241101 d!285373))

(assert (=> bs!241101 (not (= lambda!33667 lambda!33666))))

(assert (=> bs!241099 (= (= (Star!2675 (reg!3004 r!15766)) lt!347078) (= lambda!33667 lambda!33636))))

(assert (=> bs!241100 (not (= lambda!33667 lambda!33637))))

(assert (=> bs!241100 (= (and (= (reg!3004 r!15766) lt!347074) (= (Star!2675 (reg!3004 r!15766)) lt!347081)) (= lambda!33667 lambda!33638))))

(assert (=> d!285373 true))

(assert (=> d!285373 true))

(assert (=> d!285373 (= (Exists!418 lambda!33666) (Exists!418 lambda!33667))))

(declare-fun lt!347130 () Unit!15005)

(declare-fun choose!6069 (Regex!2675 List!9905) Unit!15005)

(assert (=> d!285373 (= lt!347130 (choose!6069 (reg!3004 r!15766) s!10566))))

(assert (=> d!285373 (validRegex!1144 (reg!3004 r!15766))))

(assert (=> d!285373 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!136 (reg!3004 r!15766) s!10566) lt!347130)))

(declare-fun m!1170191 () Bool)

(assert (=> bs!241101 m!1170191))

(declare-fun m!1170193 () Bool)

(assert (=> bs!241101 m!1170193))

(declare-fun m!1170195 () Bool)

(assert (=> bs!241101 m!1170195))

(assert (=> bs!241101 m!1170169))

(assert (=> b!962449 d!285373))

(declare-fun d!285375 () Bool)

(assert (=> d!285375 (= (Exists!418 lambda!33636) (choose!6067 lambda!33636))))

(declare-fun bs!241102 () Bool)

(assert (= bs!241102 d!285375))

(declare-fun m!1170197 () Bool)

(assert (=> bs!241102 m!1170197))

(assert (=> b!962449 d!285375))

(declare-fun b!962873 () Bool)

(declare-fun res!437636 () Bool)

(declare-fun e!621738 () Bool)

(assert (=> b!962873 (=> (not res!437636) (not e!621738))))

(declare-fun lt!347138 () Option!2256)

(assert (=> b!962873 (= res!437636 (matchR!1213 (reg!3004 r!15766) (_1!6440 (get!3377 lt!347138))))))

(declare-fun b!962874 () Bool)

(declare-fun e!621741 () Option!2256)

(assert (=> b!962874 (= e!621741 None!2255)))

(declare-fun b!962875 () Bool)

(declare-fun e!621737 () Option!2256)

(assert (=> b!962875 (= e!621737 (Some!2255 (tuple2!11229 Nil!9889 s!10566)))))

(declare-fun b!962876 () Bool)

(declare-fun lt!347139 () Unit!15005)

(declare-fun lt!347137 () Unit!15005)

(assert (=> b!962876 (= lt!347139 lt!347137)))

(declare-fun ++!2665 (List!9905 List!9905) List!9905)

(assert (=> b!962876 (= (++!2665 (++!2665 Nil!9889 (Cons!9889 (h!15290 s!10566) Nil!9889)) (t!100951 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!270 (List!9905 C!5920 List!9905 List!9905) Unit!15005)

(assert (=> b!962876 (= lt!347137 (lemmaMoveElementToOtherListKeepsConcatEq!270 Nil!9889 (h!15290 s!10566) (t!100951 s!10566) s!10566))))

(assert (=> b!962876 (= e!621741 (findConcatSeparation!362 (reg!3004 r!15766) lt!347078 (++!2665 Nil!9889 (Cons!9889 (h!15290 s!10566) Nil!9889)) (t!100951 s!10566) s!10566))))

(declare-fun b!962877 () Bool)

(assert (=> b!962877 (= e!621737 e!621741)))

(declare-fun c!156857 () Bool)

(assert (=> b!962877 (= c!156857 ((_ is Nil!9889) s!10566))))

(declare-fun b!962878 () Bool)

(declare-fun e!621740 () Bool)

(assert (=> b!962878 (= e!621740 (matchR!1213 lt!347078 s!10566))))

(declare-fun b!962880 () Bool)

(assert (=> b!962880 (= e!621738 (= (++!2665 (_1!6440 (get!3377 lt!347138)) (_2!6440 (get!3377 lt!347138))) s!10566))))

(declare-fun b!962881 () Bool)

(declare-fun res!437634 () Bool)

(assert (=> b!962881 (=> (not res!437634) (not e!621738))))

(assert (=> b!962881 (= res!437634 (matchR!1213 lt!347078 (_2!6440 (get!3377 lt!347138))))))

(declare-fun b!962879 () Bool)

(declare-fun e!621739 () Bool)

(assert (=> b!962879 (= e!621739 (not (isDefined!1898 lt!347138)))))

(declare-fun d!285377 () Bool)

(assert (=> d!285377 e!621739))

(declare-fun res!437633 () Bool)

(assert (=> d!285377 (=> res!437633 e!621739)))

(assert (=> d!285377 (= res!437633 e!621738)))

(declare-fun res!437635 () Bool)

(assert (=> d!285377 (=> (not res!437635) (not e!621738))))

(assert (=> d!285377 (= res!437635 (isDefined!1898 lt!347138))))

(assert (=> d!285377 (= lt!347138 e!621737)))

(declare-fun c!156856 () Bool)

(assert (=> d!285377 (= c!156856 e!621740)))

(declare-fun res!437637 () Bool)

(assert (=> d!285377 (=> (not res!437637) (not e!621740))))

(assert (=> d!285377 (= res!437637 (matchR!1213 (reg!3004 r!15766) Nil!9889))))

(assert (=> d!285377 (validRegex!1144 (reg!3004 r!15766))))

(assert (=> d!285377 (= (findConcatSeparation!362 (reg!3004 r!15766) lt!347078 Nil!9889 s!10566 s!10566) lt!347138)))

(assert (= (and d!285377 res!437637) b!962878))

(assert (= (and d!285377 c!156856) b!962875))

(assert (= (and d!285377 (not c!156856)) b!962877))

(assert (= (and b!962877 c!156857) b!962874))

(assert (= (and b!962877 (not c!156857)) b!962876))

(assert (= (and d!285377 res!437635) b!962873))

(assert (= (and b!962873 res!437636) b!962881))

(assert (= (and b!962881 res!437634) b!962880))

(assert (= (and d!285377 (not res!437633)) b!962879))

(declare-fun m!1170199 () Bool)

(assert (=> b!962880 m!1170199))

(declare-fun m!1170201 () Bool)

(assert (=> b!962880 m!1170201))

(declare-fun m!1170203 () Bool)

(assert (=> b!962878 m!1170203))

(assert (=> b!962881 m!1170199))

(declare-fun m!1170205 () Bool)

(assert (=> b!962881 m!1170205))

(declare-fun m!1170207 () Bool)

(assert (=> d!285377 m!1170207))

(declare-fun m!1170209 () Bool)

(assert (=> d!285377 m!1170209))

(assert (=> d!285377 m!1170169))

(assert (=> b!962879 m!1170207))

(declare-fun m!1170211 () Bool)

(assert (=> b!962876 m!1170211))

(assert (=> b!962876 m!1170211))

(declare-fun m!1170213 () Bool)

(assert (=> b!962876 m!1170213))

(declare-fun m!1170215 () Bool)

(assert (=> b!962876 m!1170215))

(assert (=> b!962876 m!1170211))

(declare-fun m!1170217 () Bool)

(assert (=> b!962876 m!1170217))

(assert (=> b!962873 m!1170199))

(declare-fun m!1170219 () Bool)

(assert (=> b!962873 m!1170219))

(assert (=> b!962449 d!285377))

(declare-fun d!285379 () Bool)

(declare-fun isEmpty!6187 (Option!2256) Bool)

(assert (=> d!285379 (= (isDefined!1898 (findConcatSeparation!362 (reg!3004 r!15766) lt!347078 Nil!9889 s!10566 s!10566)) (not (isEmpty!6187 (findConcatSeparation!362 (reg!3004 r!15766) lt!347078 Nil!9889 s!10566 s!10566))))))

(declare-fun bs!241103 () Bool)

(assert (= bs!241103 d!285379))

(assert (=> bs!241103 m!1169989))

(declare-fun m!1170221 () Bool)

(assert (=> bs!241103 m!1170221))

(assert (=> b!962449 d!285379))

(declare-fun bs!241104 () Bool)

(declare-fun d!285381 () Bool)

(assert (= bs!241104 (and d!285381 d!285367)))

(declare-fun lambda!33668 () Int)

(assert (=> bs!241104 (= (and (= lt!347074 (reg!3004 r!15766)) (= (Star!2675 lt!347074) lt!347078)) (= lambda!33668 lambda!33661))))

(declare-fun bs!241105 () Bool)

(assert (= bs!241105 (and d!285381 b!962449)))

(assert (=> bs!241105 (= (and (= lt!347074 (reg!3004 r!15766)) (= (Star!2675 lt!347074) lt!347078)) (= lambda!33668 lambda!33635))))

(declare-fun bs!241106 () Bool)

(assert (= bs!241106 (and d!285381 d!285373)))

(assert (=> bs!241106 (not (= lambda!33668 lambda!33667))))

(assert (=> bs!241106 (= (and (= lt!347074 (reg!3004 r!15766)) (= (Star!2675 lt!347074) (Star!2675 (reg!3004 r!15766)))) (= lambda!33668 lambda!33666))))

(assert (=> bs!241105 (not (= lambda!33668 lambda!33636))))

(declare-fun bs!241107 () Bool)

(assert (= bs!241107 (and d!285381 b!962443)))

(assert (=> bs!241107 (= (= (Star!2675 lt!347074) lt!347081) (= lambda!33668 lambda!33637))))

(assert (=> bs!241107 (not (= lambda!33668 lambda!33638))))

(assert (=> d!285381 true))

(assert (=> d!285381 true))

(declare-fun lambda!33669 () Int)

(assert (=> bs!241104 (not (= lambda!33669 lambda!33661))))

(assert (=> bs!241105 (not (= lambda!33669 lambda!33635))))

(assert (=> bs!241106 (not (= lambda!33669 lambda!33666))))

(assert (=> bs!241105 (= (and (= lt!347074 (reg!3004 r!15766)) (= (Star!2675 lt!347074) lt!347078)) (= lambda!33669 lambda!33636))))

(assert (=> bs!241106 (= (and (= lt!347074 (reg!3004 r!15766)) (= (Star!2675 lt!347074) (Star!2675 (reg!3004 r!15766)))) (= lambda!33669 lambda!33667))))

(declare-fun bs!241108 () Bool)

(assert (= bs!241108 d!285381))

(assert (=> bs!241108 (not (= lambda!33669 lambda!33668))))

(assert (=> bs!241107 (not (= lambda!33669 lambda!33637))))

(assert (=> bs!241107 (= (= (Star!2675 lt!347074) lt!347081) (= lambda!33669 lambda!33638))))

(assert (=> d!285381 true))

(assert (=> d!285381 true))

(assert (=> d!285381 (= (Exists!418 lambda!33668) (Exists!418 lambda!33669))))

(declare-fun lt!347140 () Unit!15005)

(assert (=> d!285381 (= lt!347140 (choose!6069 lt!347074 s!10566))))

(assert (=> d!285381 (validRegex!1144 lt!347074)))

(assert (=> d!285381 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!136 lt!347074 s!10566) lt!347140)))

(declare-fun m!1170223 () Bool)

(assert (=> bs!241108 m!1170223))

(declare-fun m!1170225 () Bool)

(assert (=> bs!241108 m!1170225))

(declare-fun m!1170227 () Bool)

(assert (=> bs!241108 m!1170227))

(assert (=> bs!241108 m!1170065))

(assert (=> b!962443 d!285381))

(declare-fun d!285383 () Bool)

(assert (=> d!285383 (= (isEmpty!6185 s!10566) ((_ is Nil!9889) s!10566))))

(assert (=> b!962443 d!285383))

(declare-fun d!285385 () Bool)

(assert (=> d!285385 (= (isDefined!1898 lt!347075) (not (isEmpty!6187 lt!347075)))))

(declare-fun bs!241109 () Bool)

(assert (= bs!241109 d!285385))

(declare-fun m!1170229 () Bool)

(assert (=> bs!241109 m!1170229))

(assert (=> b!962443 d!285385))

(declare-fun bs!241110 () Bool)

(declare-fun b!962922 () Bool)

(assert (= bs!241110 (and b!962922 d!285367)))

(declare-fun lambda!33674 () Int)

(assert (=> bs!241110 (not (= lambda!33674 lambda!33661))))

(declare-fun bs!241111 () Bool)

(assert (= bs!241111 (and b!962922 b!962449)))

(assert (=> bs!241111 (not (= lambda!33674 lambda!33635))))

(declare-fun bs!241112 () Bool)

(assert (= bs!241112 (and b!962922 d!285381)))

(assert (=> bs!241112 (= (and (= (reg!3004 lt!347081) lt!347074) (= lt!347081 (Star!2675 lt!347074))) (= lambda!33674 lambda!33669))))

(declare-fun bs!241113 () Bool)

(assert (= bs!241113 (and b!962922 d!285373)))

(assert (=> bs!241113 (not (= lambda!33674 lambda!33666))))

(assert (=> bs!241111 (= (and (= (reg!3004 lt!347081) (reg!3004 r!15766)) (= lt!347081 lt!347078)) (= lambda!33674 lambda!33636))))

(assert (=> bs!241113 (= (and (= (reg!3004 lt!347081) (reg!3004 r!15766)) (= lt!347081 (Star!2675 (reg!3004 r!15766)))) (= lambda!33674 lambda!33667))))

(assert (=> bs!241112 (not (= lambda!33674 lambda!33668))))

(declare-fun bs!241114 () Bool)

(assert (= bs!241114 (and b!962922 b!962443)))

(assert (=> bs!241114 (not (= lambda!33674 lambda!33637))))

(assert (=> bs!241114 (= (= (reg!3004 lt!347081) lt!347074) (= lambda!33674 lambda!33638))))

(assert (=> b!962922 true))

(assert (=> b!962922 true))

(declare-fun bs!241115 () Bool)

(declare-fun b!962918 () Bool)

(assert (= bs!241115 (and b!962918 d!285367)))

(declare-fun lambda!33675 () Int)

(assert (=> bs!241115 (not (= lambda!33675 lambda!33661))))

(declare-fun bs!241116 () Bool)

(assert (= bs!241116 (and b!962918 b!962449)))

(assert (=> bs!241116 (not (= lambda!33675 lambda!33635))))

(declare-fun bs!241117 () Bool)

(assert (= bs!241117 (and b!962918 b!962922)))

(assert (=> bs!241117 (not (= lambda!33675 lambda!33674))))

(declare-fun bs!241118 () Bool)

(assert (= bs!241118 (and b!962918 d!285381)))

(assert (=> bs!241118 (not (= lambda!33675 lambda!33669))))

(declare-fun bs!241119 () Bool)

(assert (= bs!241119 (and b!962918 d!285373)))

(assert (=> bs!241119 (not (= lambda!33675 lambda!33666))))

(assert (=> bs!241116 (not (= lambda!33675 lambda!33636))))

(assert (=> bs!241119 (not (= lambda!33675 lambda!33667))))

(assert (=> bs!241118 (not (= lambda!33675 lambda!33668))))

(declare-fun bs!241120 () Bool)

(assert (= bs!241120 (and b!962918 b!962443)))

(assert (=> bs!241120 (not (= lambda!33675 lambda!33637))))

(assert (=> bs!241120 (not (= lambda!33675 lambda!33638))))

(assert (=> b!962918 true))

(assert (=> b!962918 true))

(declare-fun b!962914 () Bool)

(declare-fun e!621765 () Bool)

(declare-fun e!621764 () Bool)

(assert (=> b!962914 (= e!621765 e!621764)))

(declare-fun res!437654 () Bool)

(assert (=> b!962914 (= res!437654 (not ((_ is EmptyLang!2675) lt!347081)))))

(assert (=> b!962914 (=> (not res!437654) (not e!621764))))

(declare-fun b!962915 () Bool)

(declare-fun res!437655 () Bool)

(declare-fun e!621766 () Bool)

(assert (=> b!962915 (=> res!437655 e!621766)))

(declare-fun call!60773 () Bool)

(assert (=> b!962915 (= res!437655 call!60773)))

(declare-fun e!621760 () Bool)

(assert (=> b!962915 (= e!621760 e!621766)))

(declare-fun bm!60768 () Bool)

(declare-fun call!60774 () Bool)

(declare-fun c!156868 () Bool)

(assert (=> bm!60768 (= call!60774 (Exists!418 (ite c!156868 lambda!33674 lambda!33675)))))

(declare-fun b!962916 () Bool)

(declare-fun c!156869 () Bool)

(assert (=> b!962916 (= c!156869 ((_ is ElementMatch!2675) lt!347081))))

(declare-fun e!621762 () Bool)

(assert (=> b!962916 (= e!621764 e!621762)))

(declare-fun b!962917 () Bool)

(assert (=> b!962917 (= e!621762 (= s!10566 (Cons!9889 (c!156758 lt!347081) Nil!9889)))))

(assert (=> b!962918 (= e!621760 call!60774)))

(declare-fun d!285387 () Bool)

(declare-fun c!156867 () Bool)

(assert (=> d!285387 (= c!156867 ((_ is EmptyExpr!2675) lt!347081))))

(assert (=> d!285387 (= (matchRSpec!476 lt!347081 s!10566) e!621765)))

(declare-fun b!962919 () Bool)

(declare-fun c!156866 () Bool)

(assert (=> b!962919 (= c!156866 ((_ is Union!2675) lt!347081))))

(declare-fun e!621763 () Bool)

(assert (=> b!962919 (= e!621762 e!621763)))

(declare-fun b!962920 () Bool)

(declare-fun e!621761 () Bool)

(assert (=> b!962920 (= e!621761 (matchRSpec!476 (regTwo!5863 lt!347081) s!10566))))

(declare-fun b!962921 () Bool)

(assert (=> b!962921 (= e!621763 e!621761)))

(declare-fun res!437656 () Bool)

(assert (=> b!962921 (= res!437656 (matchRSpec!476 (regOne!5863 lt!347081) s!10566))))

(assert (=> b!962921 (=> res!437656 e!621761)))

(declare-fun bm!60769 () Bool)

(assert (=> bm!60769 (= call!60773 (isEmpty!6185 s!10566))))

(assert (=> b!962922 (= e!621766 call!60774)))

(declare-fun b!962923 () Bool)

(assert (=> b!962923 (= e!621765 call!60773)))

(declare-fun b!962924 () Bool)

(assert (=> b!962924 (= e!621763 e!621760)))

(assert (=> b!962924 (= c!156868 ((_ is Star!2675) lt!347081))))

(assert (= (and d!285387 c!156867) b!962923))

(assert (= (and d!285387 (not c!156867)) b!962914))

(assert (= (and b!962914 res!437654) b!962916))

(assert (= (and b!962916 c!156869) b!962917))

(assert (= (and b!962916 (not c!156869)) b!962919))

(assert (= (and b!962919 c!156866) b!962921))

(assert (= (and b!962919 (not c!156866)) b!962924))

(assert (= (and b!962921 (not res!437656)) b!962920))

(assert (= (and b!962924 c!156868) b!962915))

(assert (= (and b!962924 (not c!156868)) b!962918))

(assert (= (and b!962915 (not res!437655)) b!962922))

(assert (= (or b!962922 b!962918) bm!60768))

(assert (= (or b!962923 b!962915) bm!60769))

(declare-fun m!1170231 () Bool)

(assert (=> bm!60768 m!1170231))

(declare-fun m!1170233 () Bool)

(assert (=> b!962920 m!1170233))

(declare-fun m!1170235 () Bool)

(assert (=> b!962921 m!1170235))

(assert (=> bm!60769 m!1169969))

(assert (=> b!962443 d!285387))

(declare-fun b!962925 () Bool)

(declare-fun res!437660 () Bool)

(declare-fun e!621768 () Bool)

(assert (=> b!962925 (=> (not res!437660) (not e!621768))))

(declare-fun lt!347142 () Option!2256)

(assert (=> b!962925 (= res!437660 (matchR!1213 lt!347074 (_1!6440 (get!3377 lt!347142))))))

(declare-fun b!962926 () Bool)

(declare-fun e!621771 () Option!2256)

(assert (=> b!962926 (= e!621771 None!2255)))

(declare-fun b!962927 () Bool)

(declare-fun e!621767 () Option!2256)

(assert (=> b!962927 (= e!621767 (Some!2255 (tuple2!11229 Nil!9889 s!10566)))))

(declare-fun b!962928 () Bool)

(declare-fun lt!347143 () Unit!15005)

(declare-fun lt!347141 () Unit!15005)

(assert (=> b!962928 (= lt!347143 lt!347141)))

(assert (=> b!962928 (= (++!2665 (++!2665 Nil!9889 (Cons!9889 (h!15290 s!10566) Nil!9889)) (t!100951 s!10566)) s!10566)))

(assert (=> b!962928 (= lt!347141 (lemmaMoveElementToOtherListKeepsConcatEq!270 Nil!9889 (h!15290 s!10566) (t!100951 s!10566) s!10566))))

(assert (=> b!962928 (= e!621771 (findConcatSeparation!362 lt!347074 lt!347081 (++!2665 Nil!9889 (Cons!9889 (h!15290 s!10566) Nil!9889)) (t!100951 s!10566) s!10566))))

(declare-fun b!962929 () Bool)

(assert (=> b!962929 (= e!621767 e!621771)))

(declare-fun c!156871 () Bool)

(assert (=> b!962929 (= c!156871 ((_ is Nil!9889) s!10566))))

(declare-fun b!962930 () Bool)

(declare-fun e!621770 () Bool)

(assert (=> b!962930 (= e!621770 (matchR!1213 lt!347081 s!10566))))

(declare-fun b!962932 () Bool)

(assert (=> b!962932 (= e!621768 (= (++!2665 (_1!6440 (get!3377 lt!347142)) (_2!6440 (get!3377 lt!347142))) s!10566))))

(declare-fun b!962933 () Bool)

(declare-fun res!437658 () Bool)

(assert (=> b!962933 (=> (not res!437658) (not e!621768))))

(assert (=> b!962933 (= res!437658 (matchR!1213 lt!347081 (_2!6440 (get!3377 lt!347142))))))

(declare-fun b!962931 () Bool)

(declare-fun e!621769 () Bool)

(assert (=> b!962931 (= e!621769 (not (isDefined!1898 lt!347142)))))

(declare-fun d!285389 () Bool)

(assert (=> d!285389 e!621769))

(declare-fun res!437657 () Bool)

(assert (=> d!285389 (=> res!437657 e!621769)))

(assert (=> d!285389 (= res!437657 e!621768)))

(declare-fun res!437659 () Bool)

(assert (=> d!285389 (=> (not res!437659) (not e!621768))))

(assert (=> d!285389 (= res!437659 (isDefined!1898 lt!347142))))

(assert (=> d!285389 (= lt!347142 e!621767)))

(declare-fun c!156870 () Bool)

(assert (=> d!285389 (= c!156870 e!621770)))

(declare-fun res!437661 () Bool)

(assert (=> d!285389 (=> (not res!437661) (not e!621770))))

(assert (=> d!285389 (= res!437661 (matchR!1213 lt!347074 Nil!9889))))

(assert (=> d!285389 (validRegex!1144 lt!347074)))

(assert (=> d!285389 (= (findConcatSeparation!362 lt!347074 lt!347081 Nil!9889 s!10566 s!10566) lt!347142)))

(assert (= (and d!285389 res!437661) b!962930))

(assert (= (and d!285389 c!156870) b!962927))

(assert (= (and d!285389 (not c!156870)) b!962929))

(assert (= (and b!962929 c!156871) b!962926))

(assert (= (and b!962929 (not c!156871)) b!962928))

(assert (= (and d!285389 res!437659) b!962925))

(assert (= (and b!962925 res!437660) b!962933))

(assert (= (and b!962933 res!437658) b!962932))

(assert (= (and d!285389 (not res!437657)) b!962931))

(declare-fun m!1170237 () Bool)

(assert (=> b!962932 m!1170237))

(declare-fun m!1170239 () Bool)

(assert (=> b!962932 m!1170239))

(assert (=> b!962930 m!1169985))

(assert (=> b!962933 m!1170237))

(declare-fun m!1170241 () Bool)

(assert (=> b!962933 m!1170241))

(declare-fun m!1170243 () Bool)

(assert (=> d!285389 m!1170243))

(declare-fun m!1170245 () Bool)

(assert (=> d!285389 m!1170245))

(assert (=> d!285389 m!1170065))

(assert (=> b!962931 m!1170243))

(assert (=> b!962928 m!1170211))

(assert (=> b!962928 m!1170211))

(assert (=> b!962928 m!1170213))

(assert (=> b!962928 m!1170215))

(assert (=> b!962928 m!1170211))

(declare-fun m!1170247 () Bool)

(assert (=> b!962928 m!1170247))

(assert (=> b!962925 m!1170237))

(declare-fun m!1170249 () Bool)

(assert (=> b!962925 m!1170249))

(assert (=> b!962443 d!285389))

(declare-fun bs!241121 () Bool)

(declare-fun d!285391 () Bool)

(assert (= bs!241121 (and d!285391 d!285367)))

(declare-fun lambda!33676 () Int)

(assert (=> bs!241121 (= (and (= lt!347074 (reg!3004 r!15766)) (= lt!347081 lt!347078)) (= lambda!33676 lambda!33661))))

(declare-fun bs!241122 () Bool)

(assert (= bs!241122 (and d!285391 b!962449)))

(assert (=> bs!241122 (= (and (= lt!347074 (reg!3004 r!15766)) (= lt!347081 lt!347078)) (= lambda!33676 lambda!33635))))

(declare-fun bs!241123 () Bool)

(assert (= bs!241123 (and d!285391 b!962922)))

(assert (=> bs!241123 (not (= lambda!33676 lambda!33674))))

(declare-fun bs!241124 () Bool)

(assert (= bs!241124 (and d!285391 d!285381)))

(assert (=> bs!241124 (not (= lambda!33676 lambda!33669))))

(declare-fun bs!241125 () Bool)

(assert (= bs!241125 (and d!285391 b!962918)))

(assert (=> bs!241125 (not (= lambda!33676 lambda!33675))))

(declare-fun bs!241126 () Bool)

(assert (= bs!241126 (and d!285391 d!285373)))

(assert (=> bs!241126 (= (and (= lt!347074 (reg!3004 r!15766)) (= lt!347081 (Star!2675 (reg!3004 r!15766)))) (= lambda!33676 lambda!33666))))

(assert (=> bs!241122 (not (= lambda!33676 lambda!33636))))

(assert (=> bs!241126 (not (= lambda!33676 lambda!33667))))

(assert (=> bs!241124 (= (= lt!347081 (Star!2675 lt!347074)) (= lambda!33676 lambda!33668))))

(declare-fun bs!241127 () Bool)

(assert (= bs!241127 (and d!285391 b!962443)))

(assert (=> bs!241127 (= lambda!33676 lambda!33637)))

(assert (=> bs!241127 (not (= lambda!33676 lambda!33638))))

(assert (=> d!285391 true))

(assert (=> d!285391 true))

(assert (=> d!285391 true))

(assert (=> d!285391 (= (isDefined!1898 (findConcatSeparation!362 lt!347074 lt!347081 Nil!9889 s!10566 s!10566)) (Exists!418 lambda!33676))))

(declare-fun lt!347144 () Unit!15005)

(assert (=> d!285391 (= lt!347144 (choose!6068 lt!347074 lt!347081 s!10566))))

(assert (=> d!285391 (validRegex!1144 lt!347074)))

(assert (=> d!285391 (= (lemmaFindConcatSeparationEquivalentToExists!362 lt!347074 lt!347081 s!10566) lt!347144)))

(declare-fun bs!241128 () Bool)

(assert (= bs!241128 d!285391))

(declare-fun m!1170251 () Bool)

(assert (=> bs!241128 m!1170251))

(assert (=> bs!241128 m!1169961))

(declare-fun m!1170253 () Bool)

(assert (=> bs!241128 m!1170253))

(assert (=> bs!241128 m!1169961))

(declare-fun m!1170255 () Bool)

(assert (=> bs!241128 m!1170255))

(assert (=> bs!241128 m!1170065))

(assert (=> b!962443 d!285391))

(declare-fun d!285393 () Bool)

(assert (=> d!285393 (= (Exists!418 lambda!33638) (choose!6067 lambda!33638))))

(declare-fun bs!241129 () Bool)

(assert (= bs!241129 d!285393))

(declare-fun m!1170257 () Bool)

(assert (=> bs!241129 m!1170257))

(assert (=> b!962443 d!285393))

(declare-fun d!285395 () Bool)

(assert (=> d!285395 (= (Exists!418 lambda!33637) (choose!6067 lambda!33637))))

(declare-fun bs!241130 () Bool)

(assert (= bs!241130 d!285395))

(declare-fun m!1170259 () Bool)

(assert (=> bs!241130 m!1170259))

(assert (=> b!962443 d!285395))

(declare-fun d!285397 () Bool)

(assert (=> d!285397 (= (matchR!1213 lt!347081 s!10566) (matchRSpec!476 lt!347081 s!10566))))

(declare-fun lt!347147 () Unit!15005)

(declare-fun choose!6070 (Regex!2675 List!9905) Unit!15005)

(assert (=> d!285397 (= lt!347147 (choose!6070 lt!347081 s!10566))))

(assert (=> d!285397 (validRegex!1144 lt!347081)))

(assert (=> d!285397 (= (mainMatchTheorem!476 lt!347081 s!10566) lt!347147)))

(declare-fun bs!241131 () Bool)

(assert (= bs!241131 d!285397))

(assert (=> bs!241131 m!1169985))

(assert (=> bs!241131 m!1169959))

(declare-fun m!1170261 () Bool)

(assert (=> bs!241131 m!1170261))

(assert (=> bs!241131 m!1170111))

(assert (=> b!962443 d!285397))

(declare-fun bs!241132 () Bool)

(declare-fun b!962942 () Bool)

(assert (= bs!241132 (and b!962942 d!285367)))

(declare-fun lambda!33677 () Int)

(assert (=> bs!241132 (not (= lambda!33677 lambda!33661))))

(declare-fun bs!241133 () Bool)

(assert (= bs!241133 (and b!962942 b!962449)))

(assert (=> bs!241133 (not (= lambda!33677 lambda!33635))))

(declare-fun bs!241134 () Bool)

(assert (= bs!241134 (and b!962942 b!962922)))

(assert (=> bs!241134 (= (and (= (reg!3004 r!15766) (reg!3004 lt!347081)) (= r!15766 lt!347081)) (= lambda!33677 lambda!33674))))

(declare-fun bs!241135 () Bool)

(assert (= bs!241135 (and b!962942 d!285381)))

(assert (=> bs!241135 (= (and (= (reg!3004 r!15766) lt!347074) (= r!15766 (Star!2675 lt!347074))) (= lambda!33677 lambda!33669))))

(declare-fun bs!241136 () Bool)

(assert (= bs!241136 (and b!962942 b!962918)))

(assert (=> bs!241136 (not (= lambda!33677 lambda!33675))))

(declare-fun bs!241137 () Bool)

(assert (= bs!241137 (and b!962942 d!285373)))

(assert (=> bs!241137 (not (= lambda!33677 lambda!33666))))

(declare-fun bs!241138 () Bool)

(assert (= bs!241138 (and b!962942 d!285391)))

(assert (=> bs!241138 (not (= lambda!33677 lambda!33676))))

(assert (=> bs!241133 (= (= r!15766 lt!347078) (= lambda!33677 lambda!33636))))

(assert (=> bs!241137 (= (= r!15766 (Star!2675 (reg!3004 r!15766))) (= lambda!33677 lambda!33667))))

(assert (=> bs!241135 (not (= lambda!33677 lambda!33668))))

(declare-fun bs!241139 () Bool)

(assert (= bs!241139 (and b!962942 b!962443)))

(assert (=> bs!241139 (not (= lambda!33677 lambda!33637))))

(assert (=> bs!241139 (= (and (= (reg!3004 r!15766) lt!347074) (= r!15766 lt!347081)) (= lambda!33677 lambda!33638))))

(assert (=> b!962942 true))

(assert (=> b!962942 true))

(declare-fun bs!241140 () Bool)

(declare-fun b!962938 () Bool)

(assert (= bs!241140 (and b!962938 d!285367)))

(declare-fun lambda!33678 () Int)

(assert (=> bs!241140 (not (= lambda!33678 lambda!33661))))

(declare-fun bs!241141 () Bool)

(assert (= bs!241141 (and b!962938 b!962449)))

(assert (=> bs!241141 (not (= lambda!33678 lambda!33635))))

(declare-fun bs!241142 () Bool)

(assert (= bs!241142 (and b!962938 b!962922)))

(assert (=> bs!241142 (not (= lambda!33678 lambda!33674))))

(declare-fun bs!241143 () Bool)

(assert (= bs!241143 (and b!962938 d!285381)))

(assert (=> bs!241143 (not (= lambda!33678 lambda!33669))))

(declare-fun bs!241144 () Bool)

(assert (= bs!241144 (and b!962938 b!962942)))

(assert (=> bs!241144 (not (= lambda!33678 lambda!33677))))

(declare-fun bs!241145 () Bool)

(assert (= bs!241145 (and b!962938 b!962918)))

(assert (=> bs!241145 (= (and (= (regOne!5862 r!15766) (regOne!5862 lt!347081)) (= (regTwo!5862 r!15766) (regTwo!5862 lt!347081))) (= lambda!33678 lambda!33675))))

(declare-fun bs!241146 () Bool)

(assert (= bs!241146 (and b!962938 d!285373)))

(assert (=> bs!241146 (not (= lambda!33678 lambda!33666))))

(declare-fun bs!241147 () Bool)

(assert (= bs!241147 (and b!962938 d!285391)))

(assert (=> bs!241147 (not (= lambda!33678 lambda!33676))))

(assert (=> bs!241141 (not (= lambda!33678 lambda!33636))))

(assert (=> bs!241146 (not (= lambda!33678 lambda!33667))))

(assert (=> bs!241143 (not (= lambda!33678 lambda!33668))))

(declare-fun bs!241148 () Bool)

(assert (= bs!241148 (and b!962938 b!962443)))

(assert (=> bs!241148 (not (= lambda!33678 lambda!33637))))

(assert (=> bs!241148 (not (= lambda!33678 lambda!33638))))

(assert (=> b!962938 true))

(assert (=> b!962938 true))

(declare-fun b!962934 () Bool)

(declare-fun e!621777 () Bool)

(declare-fun e!621776 () Bool)

(assert (=> b!962934 (= e!621777 e!621776)))

(declare-fun res!437662 () Bool)

(assert (=> b!962934 (= res!437662 (not ((_ is EmptyLang!2675) r!15766)))))

(assert (=> b!962934 (=> (not res!437662) (not e!621776))))

(declare-fun b!962935 () Bool)

(declare-fun res!437663 () Bool)

(declare-fun e!621778 () Bool)

(assert (=> b!962935 (=> res!437663 e!621778)))

(declare-fun call!60775 () Bool)

(assert (=> b!962935 (= res!437663 call!60775)))

(declare-fun e!621772 () Bool)

(assert (=> b!962935 (= e!621772 e!621778)))

(declare-fun bm!60770 () Bool)

(declare-fun call!60776 () Bool)

(declare-fun c!156874 () Bool)

(assert (=> bm!60770 (= call!60776 (Exists!418 (ite c!156874 lambda!33677 lambda!33678)))))

(declare-fun b!962936 () Bool)

(declare-fun c!156875 () Bool)

(assert (=> b!962936 (= c!156875 ((_ is ElementMatch!2675) r!15766))))

(declare-fun e!621774 () Bool)

(assert (=> b!962936 (= e!621776 e!621774)))

(declare-fun b!962937 () Bool)

(assert (=> b!962937 (= e!621774 (= s!10566 (Cons!9889 (c!156758 r!15766) Nil!9889)))))

(assert (=> b!962938 (= e!621772 call!60776)))

(declare-fun d!285399 () Bool)

(declare-fun c!156873 () Bool)

(assert (=> d!285399 (= c!156873 ((_ is EmptyExpr!2675) r!15766))))

(assert (=> d!285399 (= (matchRSpec!476 r!15766 s!10566) e!621777)))

(declare-fun b!962939 () Bool)

(declare-fun c!156872 () Bool)

(assert (=> b!962939 (= c!156872 ((_ is Union!2675) r!15766))))

(declare-fun e!621775 () Bool)

(assert (=> b!962939 (= e!621774 e!621775)))

(declare-fun b!962940 () Bool)

(declare-fun e!621773 () Bool)

(assert (=> b!962940 (= e!621773 (matchRSpec!476 (regTwo!5863 r!15766) s!10566))))

(declare-fun b!962941 () Bool)

(assert (=> b!962941 (= e!621775 e!621773)))

(declare-fun res!437664 () Bool)

(assert (=> b!962941 (= res!437664 (matchRSpec!476 (regOne!5863 r!15766) s!10566))))

(assert (=> b!962941 (=> res!437664 e!621773)))

(declare-fun bm!60771 () Bool)

(assert (=> bm!60771 (= call!60775 (isEmpty!6185 s!10566))))

(assert (=> b!962942 (= e!621778 call!60776)))

(declare-fun b!962943 () Bool)

(assert (=> b!962943 (= e!621777 call!60775)))

(declare-fun b!962944 () Bool)

(assert (=> b!962944 (= e!621775 e!621772)))

(assert (=> b!962944 (= c!156874 ((_ is Star!2675) r!15766))))

(assert (= (and d!285399 c!156873) b!962943))

(assert (= (and d!285399 (not c!156873)) b!962934))

(assert (= (and b!962934 res!437662) b!962936))

(assert (= (and b!962936 c!156875) b!962937))

(assert (= (and b!962936 (not c!156875)) b!962939))

(assert (= (and b!962939 c!156872) b!962941))

(assert (= (and b!962939 (not c!156872)) b!962944))

(assert (= (and b!962941 (not res!437664)) b!962940))

(assert (= (and b!962944 c!156874) b!962935))

(assert (= (and b!962944 (not c!156874)) b!962938))

(assert (= (and b!962935 (not res!437663)) b!962942))

(assert (= (or b!962942 b!962938) bm!60770))

(assert (= (or b!962943 b!962935) bm!60771))

(declare-fun m!1170263 () Bool)

(assert (=> bm!60770 m!1170263))

(declare-fun m!1170265 () Bool)

(assert (=> b!962940 m!1170265))

(declare-fun m!1170267 () Bool)

(assert (=> b!962941 m!1170267))

(assert (=> bm!60771 m!1169969))

(assert (=> b!962445 d!285399))

(declare-fun bm!60772 () Bool)

(declare-fun call!60777 () Bool)

(assert (=> bm!60772 (= call!60777 (isEmpty!6185 s!10566))))

(declare-fun b!962945 () Bool)

(declare-fun res!437672 () Bool)

(declare-fun e!621781 () Bool)

(assert (=> b!962945 (=> (not res!437672) (not e!621781))))

(assert (=> b!962945 (= res!437672 (not call!60777))))

(declare-fun b!962946 () Bool)

(assert (=> b!962946 (= e!621781 (= (head!1768 s!10566) (c!156758 r!15766)))))

(declare-fun b!962947 () Bool)

(declare-fun res!437670 () Bool)

(declare-fun e!621779 () Bool)

(assert (=> b!962947 (=> res!437670 e!621779)))

(assert (=> b!962947 (= res!437670 (not (isEmpty!6185 (tail!1330 s!10566))))))

(declare-fun b!962948 () Bool)

(declare-fun res!437666 () Bool)

(assert (=> b!962948 (=> (not res!437666) (not e!621781))))

(assert (=> b!962948 (= res!437666 (isEmpty!6185 (tail!1330 s!10566)))))

(declare-fun b!962949 () Bool)

(declare-fun e!621782 () Bool)

(assert (=> b!962949 (= e!621782 (nullable!807 r!15766))))

(declare-fun b!962950 () Bool)

(declare-fun e!621785 () Bool)

(assert (=> b!962950 (= e!621785 e!621779)))

(declare-fun res!437671 () Bool)

(assert (=> b!962950 (=> res!437671 e!621779)))

(assert (=> b!962950 (= res!437671 call!60777)))

(declare-fun b!962951 () Bool)

(assert (=> b!962951 (= e!621779 (not (= (head!1768 s!10566) (c!156758 r!15766))))))

(declare-fun b!962952 () Bool)

(declare-fun res!437665 () Bool)

(declare-fun e!621784 () Bool)

(assert (=> b!962952 (=> res!437665 e!621784)))

(assert (=> b!962952 (= res!437665 (not ((_ is ElementMatch!2675) r!15766)))))

(declare-fun e!621783 () Bool)

(assert (=> b!962952 (= e!621783 e!621784)))

(declare-fun b!962954 () Bool)

(assert (=> b!962954 (= e!621782 (matchR!1213 (derivativeStep!615 r!15766 (head!1768 s!10566)) (tail!1330 s!10566)))))

(declare-fun b!962955 () Bool)

(declare-fun res!437667 () Bool)

(assert (=> b!962955 (=> res!437667 e!621784)))

(assert (=> b!962955 (= res!437667 e!621781)))

(declare-fun res!437668 () Bool)

(assert (=> b!962955 (=> (not res!437668) (not e!621781))))

(declare-fun lt!347148 () Bool)

(assert (=> b!962955 (= res!437668 lt!347148)))

(declare-fun b!962956 () Bool)

(assert (=> b!962956 (= e!621783 (not lt!347148))))

(declare-fun b!962953 () Bool)

(declare-fun e!621780 () Bool)

(assert (=> b!962953 (= e!621780 e!621783)))

(declare-fun c!156877 () Bool)

(assert (=> b!962953 (= c!156877 ((_ is EmptyLang!2675) r!15766))))

(declare-fun d!285401 () Bool)

(assert (=> d!285401 e!621780))

(declare-fun c!156876 () Bool)

(assert (=> d!285401 (= c!156876 ((_ is EmptyExpr!2675) r!15766))))

(assert (=> d!285401 (= lt!347148 e!621782)))

(declare-fun c!156878 () Bool)

(assert (=> d!285401 (= c!156878 (isEmpty!6185 s!10566))))

(assert (=> d!285401 (validRegex!1144 r!15766)))

(assert (=> d!285401 (= (matchR!1213 r!15766 s!10566) lt!347148)))

(declare-fun b!962957 () Bool)

(assert (=> b!962957 (= e!621780 (= lt!347148 call!60777))))

(declare-fun b!962958 () Bool)

(assert (=> b!962958 (= e!621784 e!621785)))

(declare-fun res!437669 () Bool)

(assert (=> b!962958 (=> (not res!437669) (not e!621785))))

(assert (=> b!962958 (= res!437669 (not lt!347148))))

(assert (= (and d!285401 c!156878) b!962949))

(assert (= (and d!285401 (not c!156878)) b!962954))

(assert (= (and d!285401 c!156876) b!962957))

(assert (= (and d!285401 (not c!156876)) b!962953))

(assert (= (and b!962953 c!156877) b!962956))

(assert (= (and b!962953 (not c!156877)) b!962952))

(assert (= (and b!962952 (not res!437665)) b!962955))

(assert (= (and b!962955 res!437668) b!962945))

(assert (= (and b!962945 res!437672) b!962948))

(assert (= (and b!962948 res!437666) b!962946))

(assert (= (and b!962955 (not res!437667)) b!962958))

(assert (= (and b!962958 res!437669) b!962950))

(assert (= (and b!962950 (not res!437671)) b!962947))

(assert (= (and b!962947 (not res!437670)) b!962951))

(assert (= (or b!962957 b!962945 b!962950) bm!60772))

(declare-fun m!1170269 () Bool)

(assert (=> b!962949 m!1170269))

(assert (=> b!962951 m!1170109))

(assert (=> b!962946 m!1170109))

(assert (=> d!285401 m!1169969))

(assert (=> d!285401 m!1169979))

(assert (=> b!962948 m!1170113))

(assert (=> b!962948 m!1170113))

(assert (=> b!962948 m!1170115))

(assert (=> bm!60772 m!1169969))

(assert (=> b!962954 m!1170109))

(assert (=> b!962954 m!1170109))

(declare-fun m!1170271 () Bool)

(assert (=> b!962954 m!1170271))

(assert (=> b!962954 m!1170113))

(assert (=> b!962954 m!1170271))

(assert (=> b!962954 m!1170113))

(declare-fun m!1170273 () Bool)

(assert (=> b!962954 m!1170273))

(assert (=> b!962947 m!1170113))

(assert (=> b!962947 m!1170113))

(assert (=> b!962947 m!1170115))

(assert (=> b!962445 d!285401))

(declare-fun d!285403 () Bool)

(assert (=> d!285403 (= (matchR!1213 r!15766 s!10566) (matchRSpec!476 r!15766 s!10566))))

(declare-fun lt!347149 () Unit!15005)

(assert (=> d!285403 (= lt!347149 (choose!6070 r!15766 s!10566))))

(assert (=> d!285403 (validRegex!1144 r!15766)))

(assert (=> d!285403 (= (mainMatchTheorem!476 r!15766 s!10566) lt!347149)))

(declare-fun bs!241149 () Bool)

(assert (= bs!241149 d!285403))

(assert (=> bs!241149 m!1169975))

(assert (=> bs!241149 m!1169973))

(declare-fun m!1170275 () Bool)

(assert (=> bs!241149 m!1170275))

(assert (=> bs!241149 m!1169979))

(assert (=> b!962445 d!285403))

(declare-fun b!962972 () Bool)

(declare-fun e!621788 () Bool)

(declare-fun tp!295830 () Bool)

(declare-fun tp!295829 () Bool)

(assert (=> b!962972 (= e!621788 (and tp!295830 tp!295829))))

(declare-fun b!962971 () Bool)

(declare-fun tp!295833 () Bool)

(assert (=> b!962971 (= e!621788 tp!295833)))

(assert (=> b!962451 (= tp!295777 e!621788)))

(declare-fun b!962970 () Bool)

(declare-fun tp!295831 () Bool)

(declare-fun tp!295832 () Bool)

(assert (=> b!962970 (= e!621788 (and tp!295831 tp!295832))))

(declare-fun b!962969 () Bool)

(assert (=> b!962969 (= e!621788 tp_is_empty!4993)))

(assert (= (and b!962451 ((_ is ElementMatch!2675) (regOne!5863 r!15766))) b!962969))

(assert (= (and b!962451 ((_ is Concat!4508) (regOne!5863 r!15766))) b!962970))

(assert (= (and b!962451 ((_ is Star!2675) (regOne!5863 r!15766))) b!962971))

(assert (= (and b!962451 ((_ is Union!2675) (regOne!5863 r!15766))) b!962972))

(declare-fun b!962976 () Bool)

(declare-fun e!621789 () Bool)

(declare-fun tp!295835 () Bool)

(declare-fun tp!295834 () Bool)

(assert (=> b!962976 (= e!621789 (and tp!295835 tp!295834))))

(declare-fun b!962975 () Bool)

(declare-fun tp!295838 () Bool)

(assert (=> b!962975 (= e!621789 tp!295838)))

(assert (=> b!962451 (= tp!295779 e!621789)))

(declare-fun b!962974 () Bool)

(declare-fun tp!295836 () Bool)

(declare-fun tp!295837 () Bool)

(assert (=> b!962974 (= e!621789 (and tp!295836 tp!295837))))

(declare-fun b!962973 () Bool)

(assert (=> b!962973 (= e!621789 tp_is_empty!4993)))

(assert (= (and b!962451 ((_ is ElementMatch!2675) (regTwo!5863 r!15766))) b!962973))

(assert (= (and b!962451 ((_ is Concat!4508) (regTwo!5863 r!15766))) b!962974))

(assert (= (and b!962451 ((_ is Star!2675) (regTwo!5863 r!15766))) b!962975))

(assert (= (and b!962451 ((_ is Union!2675) (regTwo!5863 r!15766))) b!962976))

(declare-fun b!962980 () Bool)

(declare-fun e!621790 () Bool)

(declare-fun tp!295840 () Bool)

(declare-fun tp!295839 () Bool)

(assert (=> b!962980 (= e!621790 (and tp!295840 tp!295839))))

(declare-fun b!962979 () Bool)

(declare-fun tp!295843 () Bool)

(assert (=> b!962979 (= e!621790 tp!295843)))

(assert (=> b!962447 (= tp!295780 e!621790)))

(declare-fun b!962978 () Bool)

(declare-fun tp!295841 () Bool)

(declare-fun tp!295842 () Bool)

(assert (=> b!962978 (= e!621790 (and tp!295841 tp!295842))))

(declare-fun b!962977 () Bool)

(assert (=> b!962977 (= e!621790 tp_is_empty!4993)))

(assert (= (and b!962447 ((_ is ElementMatch!2675) (regOne!5862 r!15766))) b!962977))

(assert (= (and b!962447 ((_ is Concat!4508) (regOne!5862 r!15766))) b!962978))

(assert (= (and b!962447 ((_ is Star!2675) (regOne!5862 r!15766))) b!962979))

(assert (= (and b!962447 ((_ is Union!2675) (regOne!5862 r!15766))) b!962980))

(declare-fun b!962984 () Bool)

(declare-fun e!621791 () Bool)

(declare-fun tp!295845 () Bool)

(declare-fun tp!295844 () Bool)

(assert (=> b!962984 (= e!621791 (and tp!295845 tp!295844))))

(declare-fun b!962983 () Bool)

(declare-fun tp!295848 () Bool)

(assert (=> b!962983 (= e!621791 tp!295848)))

(assert (=> b!962447 (= tp!295778 e!621791)))

(declare-fun b!962982 () Bool)

(declare-fun tp!295846 () Bool)

(declare-fun tp!295847 () Bool)

(assert (=> b!962982 (= e!621791 (and tp!295846 tp!295847))))

(declare-fun b!962981 () Bool)

(assert (=> b!962981 (= e!621791 tp_is_empty!4993)))

(assert (= (and b!962447 ((_ is ElementMatch!2675) (regTwo!5862 r!15766))) b!962981))

(assert (= (and b!962447 ((_ is Concat!4508) (regTwo!5862 r!15766))) b!962982))

(assert (= (and b!962447 ((_ is Star!2675) (regTwo!5862 r!15766))) b!962983))

(assert (= (and b!962447 ((_ is Union!2675) (regTwo!5862 r!15766))) b!962984))

(declare-fun b!962988 () Bool)

(declare-fun e!621792 () Bool)

(declare-fun tp!295850 () Bool)

(declare-fun tp!295849 () Bool)

(assert (=> b!962988 (= e!621792 (and tp!295850 tp!295849))))

(declare-fun b!962987 () Bool)

(declare-fun tp!295853 () Bool)

(assert (=> b!962987 (= e!621792 tp!295853)))

(assert (=> b!962444 (= tp!295775 e!621792)))

(declare-fun b!962986 () Bool)

(declare-fun tp!295851 () Bool)

(declare-fun tp!295852 () Bool)

(assert (=> b!962986 (= e!621792 (and tp!295851 tp!295852))))

(declare-fun b!962985 () Bool)

(assert (=> b!962985 (= e!621792 tp_is_empty!4993)))

(assert (= (and b!962444 ((_ is ElementMatch!2675) (reg!3004 r!15766))) b!962985))

(assert (= (and b!962444 ((_ is Concat!4508) (reg!3004 r!15766))) b!962986))

(assert (= (and b!962444 ((_ is Star!2675) (reg!3004 r!15766))) b!962987))

(assert (= (and b!962444 ((_ is Union!2675) (reg!3004 r!15766))) b!962988))

(declare-fun b!962993 () Bool)

(declare-fun e!621795 () Bool)

(declare-fun tp!295856 () Bool)

(assert (=> b!962993 (= e!621795 (and tp_is_empty!4993 tp!295856))))

(assert (=> b!962450 (= tp!295776 e!621795)))

(assert (= (and b!962450 ((_ is Cons!9889) (t!100951 s!10566))) b!962993))

(check-sat (not b!962951) (not b!962988) (not d!285377) (not b!962930) (not b!962979) (not bm!60768) (not b!962932) (not b!962879) (not b!962947) (not b!962975) (not b!962949) tp_is_empty!4993 (not d!285367) (not b!962590) (not d!285397) (not b!962974) (not b!962691) (not d!285391) (not bm!60759) (not bm!60739) (not b!962954) (not b!962972) (not b!962802) (not b!962588) (not d!285395) (not b!962593) (not d!285373) (not d!285343) (not d!285323) (not b!962683) (not b!962921) (not b!962684) (not b!962946) (not bm!60770) (not b!962686) (not b!962970) (not d!285379) (not b!962589) (not d!285381) (not d!285345) (not b!962928) (not d!285403) (not b!962987) (not b!962984) (not b!962881) (not d!285393) (not b!962948) (not bm!60736) (not bm!60720) (not bm!60738) (not bm!60769) (not b!962596) (not b!962982) (not b!962880) (not bm!60771) (not b!962925) (not d!285385) (not b!962878) (not bm!60762) (not b!962681) (not b!962978) (not b!962688) (not b!962976) (not d!285401) (not b!962983) (not b!962873) (not d!285375) (not b!962980) (not b!962933) (not d!285365) (not b!962986) (not b!962993) (not b!962920) (not b!962941) (not b!962876) (not b!962685) (not b!962940) (not d!285389) (not b!962591) (not b!962931) (not b!962971) (not bm!60772))
(check-sat)
