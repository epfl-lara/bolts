; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89148 () Bool)

(assert start!89148)

(declare-fun b!1024110 () Bool)

(assert (=> b!1024110 true))

(assert (=> b!1024110 true))

(declare-fun lambda!36490 () Int)

(declare-fun lambda!36489 () Int)

(assert (=> b!1024110 (not (= lambda!36490 lambda!36489))))

(assert (=> b!1024110 true))

(assert (=> b!1024110 true))

(declare-fun e!653627 () Bool)

(declare-fun e!653622 () Bool)

(assert (=> b!1024110 (= e!653627 e!653622)))

(declare-fun res!460129 () Bool)

(assert (=> b!1024110 (=> res!460129 e!653622)))

(declare-datatypes ((C!6230 0))(
  ( (C!6231 (val!3363 Int)) )
))
(declare-datatypes ((List!10060 0))(
  ( (Nil!10044) (Cons!10044 (h!15445 C!6230) (t!101106 List!10060)) )
))
(declare-fun s!10566 () List!10060)

(declare-fun isEmpty!6407 (List!10060) Bool)

(assert (=> b!1024110 (= res!460129 (isEmpty!6407 s!10566))))

(declare-fun Exists!559 (Int) Bool)

(assert (=> b!1024110 (= (Exists!559 lambda!36489) (Exists!559 lambda!36490))))

(declare-datatypes ((Unit!15335 0))(
  ( (Unit!15336) )
))
(declare-fun lt!354874 () Unit!15335)

(declare-datatypes ((Regex!2830 0))(
  ( (ElementMatch!2830 (c!169787 C!6230)) (Concat!4663 (regOne!6172 Regex!2830) (regTwo!6172 Regex!2830)) (EmptyExpr!2830) (Star!2830 (reg!3159 Regex!2830)) (EmptyLang!2830) (Union!2830 (regOne!6173 Regex!2830) (regTwo!6173 Regex!2830)) )
))
(declare-fun r!15766 () Regex!2830)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!261 (Regex!2830 Regex!2830 List!10060) Unit!15335)

(assert (=> b!1024110 (= lt!354874 (lemmaExistCutMatchRandMatchRSpecEquivalent!261 EmptyExpr!2830 (regTwo!6172 r!15766) s!10566))))

(declare-fun lt!354867 () Bool)

(assert (=> b!1024110 (= lt!354867 (Exists!559 lambda!36489))))

(declare-datatypes ((tuple2!11442 0))(
  ( (tuple2!11443 (_1!6547 List!10060) (_2!6547 List!10060)) )
))
(declare-datatypes ((Option!2363 0))(
  ( (None!2362) (Some!2362 (v!19779 tuple2!11442)) )
))
(declare-fun lt!354873 () Option!2363)

(declare-fun isDefined!2005 (Option!2363) Bool)

(assert (=> b!1024110 (= lt!354867 (isDefined!2005 lt!354873))))

(declare-fun findConcatSeparation!469 (Regex!2830 Regex!2830 List!10060 List!10060 List!10060) Option!2363)

(assert (=> b!1024110 (= lt!354873 (findConcatSeparation!469 EmptyExpr!2830 (regTwo!6172 r!15766) Nil!10044 s!10566 s!10566))))

(declare-fun lt!354870 () Unit!15335)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!469 (Regex!2830 Regex!2830 List!10060) Unit!15335)

(assert (=> b!1024110 (= lt!354870 (lemmaFindConcatSeparationEquivalentToExists!469 EmptyExpr!2830 (regTwo!6172 r!15766) s!10566))))

(declare-fun b!1024111 () Bool)

(declare-fun e!653626 () Bool)

(assert (=> b!1024111 (= e!653622 e!653626)))

(declare-fun res!460132 () Bool)

(assert (=> b!1024111 (=> res!460132 e!653626)))

(declare-fun lt!354869 () Bool)

(declare-fun lt!354865 () Bool)

(assert (=> b!1024111 (= res!460132 (or (not lt!354869) (not lt!354865)))))

(assert (=> b!1024111 (= lt!354865 lt!354869)))

(declare-fun lt!354864 () Regex!2830)

(declare-fun matchR!1366 (Regex!2830 List!10060) Bool)

(assert (=> b!1024111 (= lt!354869 (matchR!1366 lt!354864 s!10566))))

(assert (=> b!1024111 (= lt!354865 (matchR!1366 (regTwo!6172 r!15766) s!10566))))

(declare-fun removeUselessConcat!399 (Regex!2830) Regex!2830)

(assert (=> b!1024111 (= lt!354864 (removeUselessConcat!399 (regTwo!6172 r!15766)))))

(declare-fun lt!354866 () Unit!15335)

(declare-fun lemmaRemoveUselessConcatSound!239 (Regex!2830 List!10060) Unit!15335)

(assert (=> b!1024111 (= lt!354866 (lemmaRemoveUselessConcatSound!239 (regTwo!6172 r!15766) s!10566))))

(declare-fun b!1024112 () Bool)

(declare-fun e!653623 () Bool)

(assert (=> b!1024112 (= e!653623 (not e!653627))))

(declare-fun res!460130 () Bool)

(assert (=> b!1024112 (=> res!460130 e!653627)))

(declare-fun lt!354868 () Bool)

(assert (=> b!1024112 (= res!460130 (or lt!354868 (not (is-Concat!4663 r!15766)) (not (is-EmptyExpr!2830 (regOne!6172 r!15766)))))))

(declare-fun matchRSpec!629 (Regex!2830 List!10060) Bool)

(assert (=> b!1024112 (= lt!354868 (matchRSpec!629 r!15766 s!10566))))

(assert (=> b!1024112 (= lt!354868 (matchR!1366 r!15766 s!10566))))

(declare-fun lt!354871 () Unit!15335)

(declare-fun mainMatchTheorem!629 (Regex!2830 List!10060) Unit!15335)

(assert (=> b!1024112 (= lt!354871 (mainMatchTheorem!629 r!15766 s!10566))))

(declare-fun b!1024113 () Bool)

(assert (=> b!1024113 (= e!653626 false)))

(assert (=> b!1024113 lt!354867))

(declare-fun lt!354872 () Unit!15335)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!5 (Regex!2830 Regex!2830 List!10060 List!10060 List!10060 List!10060 List!10060) Unit!15335)

(assert (=> b!1024113 (= lt!354872 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!5 EmptyExpr!2830 (regTwo!6172 r!15766) Nil!10044 s!10566 s!10566 Nil!10044 s!10566))))

(declare-fun b!1024114 () Bool)

(declare-fun e!653625 () Bool)

(declare-fun tp!310885 () Bool)

(assert (=> b!1024114 (= e!653625 tp!310885)))

(declare-fun b!1024115 () Bool)

(declare-fun res!460131 () Bool)

(assert (=> b!1024115 (=> res!460131 e!653622)))

(declare-fun isEmpty!6408 (Option!2363) Bool)

(assert (=> b!1024115 (= res!460131 (not (isEmpty!6408 lt!354873)))))

(declare-fun b!1024116 () Bool)

(declare-fun tp!310881 () Bool)

(declare-fun tp!310882 () Bool)

(assert (=> b!1024116 (= e!653625 (and tp!310881 tp!310882))))

(declare-fun res!460133 () Bool)

(assert (=> start!89148 (=> (not res!460133) (not e!653623))))

(declare-fun validRegex!1299 (Regex!2830) Bool)

(assert (=> start!89148 (= res!460133 (validRegex!1299 r!15766))))

(assert (=> start!89148 e!653623))

(assert (=> start!89148 e!653625))

(declare-fun e!653624 () Bool)

(assert (=> start!89148 e!653624))

(declare-fun b!1024117 () Bool)

(declare-fun tp!310884 () Bool)

(declare-fun tp!310883 () Bool)

(assert (=> b!1024117 (= e!653625 (and tp!310884 tp!310883))))

(declare-fun b!1024118 () Bool)

(declare-fun tp_is_empty!5303 () Bool)

(assert (=> b!1024118 (= e!653625 tp_is_empty!5303)))

(declare-fun b!1024119 () Bool)

(declare-fun tp!310886 () Bool)

(assert (=> b!1024119 (= e!653624 (and tp_is_empty!5303 tp!310886))))

(assert (= (and start!89148 res!460133) b!1024112))

(assert (= (and b!1024112 (not res!460130)) b!1024110))

(assert (= (and b!1024110 (not res!460129)) b!1024115))

(assert (= (and b!1024115 (not res!460131)) b!1024111))

(assert (= (and b!1024111 (not res!460132)) b!1024113))

(assert (= (and start!89148 (is-ElementMatch!2830 r!15766)) b!1024118))

(assert (= (and start!89148 (is-Concat!4663 r!15766)) b!1024116))

(assert (= (and start!89148 (is-Star!2830 r!15766)) b!1024114))

(assert (= (and start!89148 (is-Union!2830 r!15766)) b!1024117))

(assert (= (and start!89148 (is-Cons!10044 s!10566)) b!1024119))

(declare-fun m!1201625 () Bool)

(assert (=> b!1024110 m!1201625))

(declare-fun m!1201627 () Bool)

(assert (=> b!1024110 m!1201627))

(declare-fun m!1201629 () Bool)

(assert (=> b!1024110 m!1201629))

(declare-fun m!1201631 () Bool)

(assert (=> b!1024110 m!1201631))

(assert (=> b!1024110 m!1201625))

(declare-fun m!1201633 () Bool)

(assert (=> b!1024110 m!1201633))

(declare-fun m!1201635 () Bool)

(assert (=> b!1024110 m!1201635))

(declare-fun m!1201637 () Bool)

(assert (=> b!1024110 m!1201637))

(declare-fun m!1201639 () Bool)

(assert (=> b!1024111 m!1201639))

(declare-fun m!1201641 () Bool)

(assert (=> b!1024111 m!1201641))

(declare-fun m!1201643 () Bool)

(assert (=> b!1024111 m!1201643))

(declare-fun m!1201645 () Bool)

(assert (=> b!1024111 m!1201645))

(declare-fun m!1201647 () Bool)

(assert (=> b!1024113 m!1201647))

(declare-fun m!1201649 () Bool)

(assert (=> b!1024112 m!1201649))

(declare-fun m!1201651 () Bool)

(assert (=> b!1024112 m!1201651))

(declare-fun m!1201653 () Bool)

(assert (=> b!1024112 m!1201653))

(declare-fun m!1201655 () Bool)

(assert (=> b!1024115 m!1201655))

(declare-fun m!1201657 () Bool)

(assert (=> start!89148 m!1201657))

(push 1)

(assert (not b!1024119))

(assert (not b!1024116))

(assert tp_is_empty!5303)

(assert (not b!1024114))

(assert (not b!1024113))

(assert (not b!1024117))

(assert (not b!1024111))

(assert (not start!89148))

(assert (not b!1024110))

(assert (not b!1024112))

(assert (not b!1024115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!294899 () Bool)

(declare-fun choose!6488 (Int) Bool)

(assert (=> d!294899 (= (Exists!559 lambda!36489) (choose!6488 lambda!36489))))

(declare-fun bs!246926 () Bool)

(assert (= bs!246926 d!294899))

(declare-fun m!1201693 () Bool)

(assert (=> bs!246926 m!1201693))

(assert (=> b!1024110 d!294899))

(declare-fun d!294901 () Bool)

(assert (=> d!294901 (= (isEmpty!6407 s!10566) (is-Nil!10044 s!10566))))

(assert (=> b!1024110 d!294901))

(declare-fun b!1024188 () Bool)

(declare-fun res!460173 () Bool)

(declare-fun e!653665 () Bool)

(assert (=> b!1024188 (=> (not res!460173) (not e!653665))))

(declare-fun lt!354915 () Option!2363)

(declare-fun get!3545 (Option!2363) tuple2!11442)

(assert (=> b!1024188 (= res!460173 (matchR!1366 EmptyExpr!2830 (_1!6547 (get!3545 lt!354915))))))

(declare-fun b!1024189 () Bool)

(declare-fun res!460175 () Bool)

(assert (=> b!1024189 (=> (not res!460175) (not e!653665))))

(assert (=> b!1024189 (= res!460175 (matchR!1366 (regTwo!6172 r!15766) (_2!6547 (get!3545 lt!354915))))))

(declare-fun b!1024190 () Bool)

(declare-fun e!653666 () Bool)

(assert (=> b!1024190 (= e!653666 (matchR!1366 (regTwo!6172 r!15766) s!10566))))

(declare-fun d!294903 () Bool)

(declare-fun e!653664 () Bool)

(assert (=> d!294903 e!653664))

(declare-fun res!460171 () Bool)

(assert (=> d!294903 (=> res!460171 e!653664)))

(assert (=> d!294903 (= res!460171 e!653665)))

(declare-fun res!460172 () Bool)

(assert (=> d!294903 (=> (not res!460172) (not e!653665))))

(assert (=> d!294903 (= res!460172 (isDefined!2005 lt!354915))))

(declare-fun e!653663 () Option!2363)

(assert (=> d!294903 (= lt!354915 e!653663)))

(declare-fun c!169793 () Bool)

(assert (=> d!294903 (= c!169793 e!653666)))

(declare-fun res!460174 () Bool)

(assert (=> d!294903 (=> (not res!460174) (not e!653666))))

(assert (=> d!294903 (= res!460174 (matchR!1366 EmptyExpr!2830 Nil!10044))))

(assert (=> d!294903 (validRegex!1299 EmptyExpr!2830)))

(assert (=> d!294903 (= (findConcatSeparation!469 EmptyExpr!2830 (regTwo!6172 r!15766) Nil!10044 s!10566 s!10566) lt!354915)))

(declare-fun b!1024191 () Bool)

(declare-fun ++!2748 (List!10060 List!10060) List!10060)

(assert (=> b!1024191 (= e!653665 (= (++!2748 (_1!6547 (get!3545 lt!354915)) (_2!6547 (get!3545 lt!354915))) s!10566))))

(declare-fun b!1024192 () Bool)

(declare-fun e!653662 () Option!2363)

(assert (=> b!1024192 (= e!653662 None!2362)))

(declare-fun b!1024193 () Bool)

(assert (=> b!1024193 (= e!653664 (not (isDefined!2005 lt!354915)))))

(declare-fun b!1024194 () Bool)

(declare-fun lt!354916 () Unit!15335)

(declare-fun lt!354914 () Unit!15335)

(assert (=> b!1024194 (= lt!354916 lt!354914)))

(assert (=> b!1024194 (= (++!2748 (++!2748 Nil!10044 (Cons!10044 (h!15445 s!10566) Nil!10044)) (t!101106 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!345 (List!10060 C!6230 List!10060 List!10060) Unit!15335)

(assert (=> b!1024194 (= lt!354914 (lemmaMoveElementToOtherListKeepsConcatEq!345 Nil!10044 (h!15445 s!10566) (t!101106 s!10566) s!10566))))

(assert (=> b!1024194 (= e!653662 (findConcatSeparation!469 EmptyExpr!2830 (regTwo!6172 r!15766) (++!2748 Nil!10044 (Cons!10044 (h!15445 s!10566) Nil!10044)) (t!101106 s!10566) s!10566))))

(declare-fun b!1024195 () Bool)

(assert (=> b!1024195 (= e!653663 e!653662)))

(declare-fun c!169794 () Bool)

(assert (=> b!1024195 (= c!169794 (is-Nil!10044 s!10566))))

(declare-fun b!1024196 () Bool)

(assert (=> b!1024196 (= e!653663 (Some!2362 (tuple2!11443 Nil!10044 s!10566)))))

(assert (= (and d!294903 res!460174) b!1024190))

(assert (= (and d!294903 c!169793) b!1024196))

(assert (= (and d!294903 (not c!169793)) b!1024195))

(assert (= (and b!1024195 c!169794) b!1024192))

(assert (= (and b!1024195 (not c!169794)) b!1024194))

(assert (= (and d!294903 res!460172) b!1024188))

(assert (= (and b!1024188 res!460173) b!1024189))

(assert (= (and b!1024189 res!460175) b!1024191))

(assert (= (and d!294903 (not res!460171)) b!1024193))

(declare-fun m!1201695 () Bool)

(assert (=> b!1024194 m!1201695))

(assert (=> b!1024194 m!1201695))

(declare-fun m!1201697 () Bool)

(assert (=> b!1024194 m!1201697))

(declare-fun m!1201699 () Bool)

(assert (=> b!1024194 m!1201699))

(assert (=> b!1024194 m!1201695))

(declare-fun m!1201701 () Bool)

(assert (=> b!1024194 m!1201701))

(declare-fun m!1201703 () Bool)

(assert (=> d!294903 m!1201703))

(declare-fun m!1201705 () Bool)

(assert (=> d!294903 m!1201705))

(declare-fun m!1201707 () Bool)

(assert (=> d!294903 m!1201707))

(assert (=> b!1024190 m!1201641))

(declare-fun m!1201709 () Bool)

(assert (=> b!1024191 m!1201709))

(declare-fun m!1201711 () Bool)

(assert (=> b!1024191 m!1201711))

(assert (=> b!1024193 m!1201703))

(assert (=> b!1024189 m!1201709))

(declare-fun m!1201713 () Bool)

(assert (=> b!1024189 m!1201713))

(assert (=> b!1024188 m!1201709))

(declare-fun m!1201715 () Bool)

(assert (=> b!1024188 m!1201715))

(assert (=> b!1024110 d!294903))

(declare-fun bs!246928 () Bool)

(declare-fun d!294909 () Bool)

(assert (= bs!246928 (and d!294909 b!1024110)))

(declare-fun lambda!36501 () Int)

(assert (=> bs!246928 (= lambda!36501 lambda!36489)))

(assert (=> bs!246928 (not (= lambda!36501 lambda!36490))))

(assert (=> d!294909 true))

(assert (=> d!294909 true))

(assert (=> d!294909 true))

(assert (=> d!294909 (= (isDefined!2005 (findConcatSeparation!469 EmptyExpr!2830 (regTwo!6172 r!15766) Nil!10044 s!10566 s!10566)) (Exists!559 lambda!36501))))

(declare-fun lt!354922 () Unit!15335)

(declare-fun choose!6489 (Regex!2830 Regex!2830 List!10060) Unit!15335)

(assert (=> d!294909 (= lt!354922 (choose!6489 EmptyExpr!2830 (regTwo!6172 r!15766) s!10566))))

(assert (=> d!294909 (validRegex!1299 EmptyExpr!2830)))

(assert (=> d!294909 (= (lemmaFindConcatSeparationEquivalentToExists!469 EmptyExpr!2830 (regTwo!6172 r!15766) s!10566) lt!354922)))

(declare-fun bs!246929 () Bool)

(assert (= bs!246929 d!294909))

(declare-fun m!1201723 () Bool)

(assert (=> bs!246929 m!1201723))

(assert (=> bs!246929 m!1201637))

(declare-fun m!1201725 () Bool)

(assert (=> bs!246929 m!1201725))

(assert (=> bs!246929 m!1201707))

(assert (=> bs!246929 m!1201637))

(declare-fun m!1201727 () Bool)

(assert (=> bs!246929 m!1201727))

(assert (=> b!1024110 d!294909))

(declare-fun bs!246930 () Bool)

(declare-fun d!294913 () Bool)

(assert (= bs!246930 (and d!294913 b!1024110)))

(declare-fun lambda!36506 () Int)

(assert (=> bs!246930 (= lambda!36506 lambda!36489)))

(assert (=> bs!246930 (not (= lambda!36506 lambda!36490))))

(declare-fun bs!246931 () Bool)

(assert (= bs!246931 (and d!294913 d!294909)))

(assert (=> bs!246931 (= lambda!36506 lambda!36501)))

(assert (=> d!294913 true))

(assert (=> d!294913 true))

(assert (=> d!294913 true))

(declare-fun lambda!36507 () Int)

(assert (=> bs!246930 (not (= lambda!36507 lambda!36489))))

(assert (=> bs!246930 (= lambda!36507 lambda!36490)))

(assert (=> bs!246931 (not (= lambda!36507 lambda!36501))))

(declare-fun bs!246932 () Bool)

(assert (= bs!246932 d!294913))

(assert (=> bs!246932 (not (= lambda!36507 lambda!36506))))

(assert (=> d!294913 true))

(assert (=> d!294913 true))

(assert (=> d!294913 true))

(assert (=> d!294913 (= (Exists!559 lambda!36506) (Exists!559 lambda!36507))))

(declare-fun lt!354925 () Unit!15335)

(declare-fun choose!6490 (Regex!2830 Regex!2830 List!10060) Unit!15335)

(assert (=> d!294913 (= lt!354925 (choose!6490 EmptyExpr!2830 (regTwo!6172 r!15766) s!10566))))

(assert (=> d!294913 (validRegex!1299 EmptyExpr!2830)))

(assert (=> d!294913 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!261 EmptyExpr!2830 (regTwo!6172 r!15766) s!10566) lt!354925)))

(declare-fun m!1201735 () Bool)

(assert (=> bs!246932 m!1201735))

(declare-fun m!1201737 () Bool)

(assert (=> bs!246932 m!1201737))

(declare-fun m!1201739 () Bool)

(assert (=> bs!246932 m!1201739))

(assert (=> bs!246932 m!1201707))

(assert (=> b!1024110 d!294913))

(declare-fun d!294919 () Bool)

(assert (=> d!294919 (= (Exists!559 lambda!36490) (choose!6488 lambda!36490))))

(declare-fun bs!246933 () Bool)

(assert (= bs!246933 d!294919))

(declare-fun m!1201741 () Bool)

(assert (=> bs!246933 m!1201741))

(assert (=> b!1024110 d!294919))

(declare-fun d!294921 () Bool)

(assert (=> d!294921 (= (isDefined!2005 lt!354873) (not (isEmpty!6408 lt!354873)))))

(declare-fun bs!246934 () Bool)

(assert (= bs!246934 d!294921))

(assert (=> bs!246934 m!1201655))

(assert (=> b!1024110 d!294921))

(declare-fun d!294923 () Bool)

(assert (=> d!294923 (= (isEmpty!6408 lt!354873) (not (is-Some!2362 lt!354873)))))

(assert (=> b!1024115 d!294923))

(declare-fun b!1024264 () Bool)

(declare-fun res!460223 () Bool)

(declare-fun e!653714 () Bool)

(assert (=> b!1024264 (=> (not res!460223) (not e!653714))))

(declare-fun call!70275 () Bool)

(assert (=> b!1024264 (= res!460223 (not call!70275))))

(declare-fun b!1024265 () Bool)

(declare-fun res!460222 () Bool)

(declare-fun e!653713 () Bool)

(assert (=> b!1024265 (=> res!460222 e!653713)))

(assert (=> b!1024265 (= res!460222 (not (is-ElementMatch!2830 lt!354864)))))

(declare-fun e!653709 () Bool)

(assert (=> b!1024265 (= e!653709 e!653713)))

(declare-fun d!294925 () Bool)

(declare-fun e!653708 () Bool)

(assert (=> d!294925 e!653708))

(declare-fun c!169809 () Bool)

(assert (=> d!294925 (= c!169809 (is-EmptyExpr!2830 lt!354864))))

(declare-fun lt!354928 () Bool)

(declare-fun e!653711 () Bool)

(assert (=> d!294925 (= lt!354928 e!653711)))

(declare-fun c!169808 () Bool)

(assert (=> d!294925 (= c!169808 (isEmpty!6407 s!10566))))

(assert (=> d!294925 (validRegex!1299 lt!354864)))

(assert (=> d!294925 (= (matchR!1366 lt!354864 s!10566) lt!354928)))

(declare-fun b!1024266 () Bool)

(declare-fun head!1887 (List!10060) C!6230)

(assert (=> b!1024266 (= e!653714 (= (head!1887 s!10566) (c!169787 lt!354864)))))

(declare-fun b!1024267 () Bool)

(declare-fun e!653712 () Bool)

(assert (=> b!1024267 (= e!653713 e!653712)))

(declare-fun res!460220 () Bool)

(assert (=> b!1024267 (=> (not res!460220) (not e!653712))))

(assert (=> b!1024267 (= res!460220 (not lt!354928))))

(declare-fun b!1024268 () Bool)

(assert (=> b!1024268 (= e!653708 (= lt!354928 call!70275))))

(declare-fun b!1024269 () Bool)

(declare-fun e!653710 () Bool)

(assert (=> b!1024269 (= e!653710 (not (= (head!1887 s!10566) (c!169787 lt!354864))))))

(declare-fun b!1024270 () Bool)

(declare-fun res!460225 () Bool)

(assert (=> b!1024270 (=> res!460225 e!653713)))

(assert (=> b!1024270 (= res!460225 e!653714)))

(declare-fun res!460221 () Bool)

(assert (=> b!1024270 (=> (not res!460221) (not e!653714))))

(assert (=> b!1024270 (= res!460221 lt!354928)))

(declare-fun b!1024271 () Bool)

(assert (=> b!1024271 (= e!653708 e!653709)))

(declare-fun c!169807 () Bool)

(assert (=> b!1024271 (= c!169807 (is-EmptyLang!2830 lt!354864))))

(declare-fun b!1024272 () Bool)

(declare-fun derivativeStep!733 (Regex!2830 C!6230) Regex!2830)

(declare-fun tail!1449 (List!10060) List!10060)

(assert (=> b!1024272 (= e!653711 (matchR!1366 (derivativeStep!733 lt!354864 (head!1887 s!10566)) (tail!1449 s!10566)))))

(declare-fun b!1024273 () Bool)

(declare-fun res!460224 () Bool)

(assert (=> b!1024273 (=> res!460224 e!653710)))

(assert (=> b!1024273 (= res!460224 (not (isEmpty!6407 (tail!1449 s!10566))))))

(declare-fun b!1024274 () Bool)

(assert (=> b!1024274 (= e!653712 e!653710)))

(declare-fun res!460226 () Bool)

(assert (=> b!1024274 (=> res!460226 e!653710)))

(assert (=> b!1024274 (= res!460226 call!70275)))

(declare-fun b!1024275 () Bool)

(declare-fun res!460219 () Bool)

(assert (=> b!1024275 (=> (not res!460219) (not e!653714))))

(assert (=> b!1024275 (= res!460219 (isEmpty!6407 (tail!1449 s!10566)))))

(declare-fun b!1024276 () Bool)

(assert (=> b!1024276 (= e!653709 (not lt!354928))))

(declare-fun bm!70270 () Bool)

(assert (=> bm!70270 (= call!70275 (isEmpty!6407 s!10566))))

(declare-fun b!1024277 () Bool)

(declare-fun nullable!931 (Regex!2830) Bool)

(assert (=> b!1024277 (= e!653711 (nullable!931 lt!354864))))

(assert (= (and d!294925 c!169808) b!1024277))

(assert (= (and d!294925 (not c!169808)) b!1024272))

(assert (= (and d!294925 c!169809) b!1024268))

(assert (= (and d!294925 (not c!169809)) b!1024271))

(assert (= (and b!1024271 c!169807) b!1024276))

(assert (= (and b!1024271 (not c!169807)) b!1024265))

(assert (= (and b!1024265 (not res!460222)) b!1024270))

(assert (= (and b!1024270 res!460221) b!1024264))

(assert (= (and b!1024264 res!460223) b!1024275))

(assert (= (and b!1024275 res!460219) b!1024266))

(assert (= (and b!1024270 (not res!460225)) b!1024267))

(assert (= (and b!1024267 res!460220) b!1024274))

(assert (= (and b!1024274 (not res!460226)) b!1024273))

(assert (= (and b!1024273 (not res!460224)) b!1024269))

(assert (= (or b!1024268 b!1024264 b!1024274) bm!70270))

(assert (=> d!294925 m!1201633))

(declare-fun m!1201743 () Bool)

(assert (=> d!294925 m!1201743))

(declare-fun m!1201745 () Bool)

(assert (=> b!1024272 m!1201745))

(assert (=> b!1024272 m!1201745))

(declare-fun m!1201747 () Bool)

(assert (=> b!1024272 m!1201747))

(declare-fun m!1201749 () Bool)

(assert (=> b!1024272 m!1201749))

(assert (=> b!1024272 m!1201747))

(assert (=> b!1024272 m!1201749))

(declare-fun m!1201751 () Bool)

(assert (=> b!1024272 m!1201751))

(assert (=> b!1024273 m!1201749))

(assert (=> b!1024273 m!1201749))

(declare-fun m!1201753 () Bool)

(assert (=> b!1024273 m!1201753))

(declare-fun m!1201755 () Bool)

(assert (=> b!1024277 m!1201755))

(assert (=> b!1024266 m!1201745))

(assert (=> bm!70270 m!1201633))

(assert (=> b!1024275 m!1201749))

(assert (=> b!1024275 m!1201749))

(assert (=> b!1024275 m!1201753))

(assert (=> b!1024269 m!1201745))

(assert (=> b!1024111 d!294925))

(declare-fun b!1024278 () Bool)

(declare-fun res!460231 () Bool)

(declare-fun e!653721 () Bool)

(assert (=> b!1024278 (=> (not res!460231) (not e!653721))))

(declare-fun call!70276 () Bool)

(assert (=> b!1024278 (= res!460231 (not call!70276))))

(declare-fun b!1024279 () Bool)

(declare-fun res!460230 () Bool)

(declare-fun e!653720 () Bool)

(assert (=> b!1024279 (=> res!460230 e!653720)))

(assert (=> b!1024279 (= res!460230 (not (is-ElementMatch!2830 (regTwo!6172 r!15766))))))

(declare-fun e!653716 () Bool)

(assert (=> b!1024279 (= e!653716 e!653720)))

(declare-fun d!294927 () Bool)

(declare-fun e!653715 () Bool)

(assert (=> d!294927 e!653715))

(declare-fun c!169812 () Bool)

(assert (=> d!294927 (= c!169812 (is-EmptyExpr!2830 (regTwo!6172 r!15766)))))

(declare-fun lt!354929 () Bool)

(declare-fun e!653718 () Bool)

(assert (=> d!294927 (= lt!354929 e!653718)))

(declare-fun c!169811 () Bool)

(assert (=> d!294927 (= c!169811 (isEmpty!6407 s!10566))))

(assert (=> d!294927 (validRegex!1299 (regTwo!6172 r!15766))))

(assert (=> d!294927 (= (matchR!1366 (regTwo!6172 r!15766) s!10566) lt!354929)))

(declare-fun b!1024280 () Bool)

(assert (=> b!1024280 (= e!653721 (= (head!1887 s!10566) (c!169787 (regTwo!6172 r!15766))))))

(declare-fun b!1024281 () Bool)

(declare-fun e!653719 () Bool)

(assert (=> b!1024281 (= e!653720 e!653719)))

(declare-fun res!460228 () Bool)

(assert (=> b!1024281 (=> (not res!460228) (not e!653719))))

(assert (=> b!1024281 (= res!460228 (not lt!354929))))

(declare-fun b!1024282 () Bool)

(assert (=> b!1024282 (= e!653715 (= lt!354929 call!70276))))

(declare-fun b!1024283 () Bool)

(declare-fun e!653717 () Bool)

(assert (=> b!1024283 (= e!653717 (not (= (head!1887 s!10566) (c!169787 (regTwo!6172 r!15766)))))))

(declare-fun b!1024284 () Bool)

(declare-fun res!460233 () Bool)

(assert (=> b!1024284 (=> res!460233 e!653720)))

(assert (=> b!1024284 (= res!460233 e!653721)))

(declare-fun res!460229 () Bool)

(assert (=> b!1024284 (=> (not res!460229) (not e!653721))))

(assert (=> b!1024284 (= res!460229 lt!354929)))

(declare-fun b!1024285 () Bool)

(assert (=> b!1024285 (= e!653715 e!653716)))

(declare-fun c!169810 () Bool)

(assert (=> b!1024285 (= c!169810 (is-EmptyLang!2830 (regTwo!6172 r!15766)))))

(declare-fun b!1024286 () Bool)

(assert (=> b!1024286 (= e!653718 (matchR!1366 (derivativeStep!733 (regTwo!6172 r!15766) (head!1887 s!10566)) (tail!1449 s!10566)))))

(declare-fun b!1024287 () Bool)

(declare-fun res!460232 () Bool)

(assert (=> b!1024287 (=> res!460232 e!653717)))

(assert (=> b!1024287 (= res!460232 (not (isEmpty!6407 (tail!1449 s!10566))))))

(declare-fun b!1024288 () Bool)

(assert (=> b!1024288 (= e!653719 e!653717)))

(declare-fun res!460234 () Bool)

(assert (=> b!1024288 (=> res!460234 e!653717)))

(assert (=> b!1024288 (= res!460234 call!70276)))

(declare-fun b!1024289 () Bool)

(declare-fun res!460227 () Bool)

(assert (=> b!1024289 (=> (not res!460227) (not e!653721))))

(assert (=> b!1024289 (= res!460227 (isEmpty!6407 (tail!1449 s!10566)))))

(declare-fun b!1024290 () Bool)

(assert (=> b!1024290 (= e!653716 (not lt!354929))))

(declare-fun bm!70271 () Bool)

(assert (=> bm!70271 (= call!70276 (isEmpty!6407 s!10566))))

(declare-fun b!1024291 () Bool)

(assert (=> b!1024291 (= e!653718 (nullable!931 (regTwo!6172 r!15766)))))

(assert (= (and d!294927 c!169811) b!1024291))

(assert (= (and d!294927 (not c!169811)) b!1024286))

(assert (= (and d!294927 c!169812) b!1024282))

(assert (= (and d!294927 (not c!169812)) b!1024285))

(assert (= (and b!1024285 c!169810) b!1024290))

(assert (= (and b!1024285 (not c!169810)) b!1024279))

(assert (= (and b!1024279 (not res!460230)) b!1024284))

(assert (= (and b!1024284 res!460229) b!1024278))

(assert (= (and b!1024278 res!460231) b!1024289))

(assert (= (and b!1024289 res!460227) b!1024280))

(assert (= (and b!1024284 (not res!460233)) b!1024281))

(assert (= (and b!1024281 res!460228) b!1024288))

(assert (= (and b!1024288 (not res!460234)) b!1024287))

(assert (= (and b!1024287 (not res!460232)) b!1024283))

(assert (= (or b!1024282 b!1024278 b!1024288) bm!70271))

(assert (=> d!294927 m!1201633))

(declare-fun m!1201757 () Bool)

(assert (=> d!294927 m!1201757))

(assert (=> b!1024286 m!1201745))

(assert (=> b!1024286 m!1201745))

(declare-fun m!1201759 () Bool)

(assert (=> b!1024286 m!1201759))

(assert (=> b!1024286 m!1201749))

(assert (=> b!1024286 m!1201759))

(assert (=> b!1024286 m!1201749))

(declare-fun m!1201761 () Bool)

(assert (=> b!1024286 m!1201761))

(assert (=> b!1024287 m!1201749))

(assert (=> b!1024287 m!1201749))

(assert (=> b!1024287 m!1201753))

(declare-fun m!1201763 () Bool)

(assert (=> b!1024291 m!1201763))

(assert (=> b!1024280 m!1201745))

(assert (=> bm!70271 m!1201633))

(assert (=> b!1024289 m!1201749))

(assert (=> b!1024289 m!1201749))

(assert (=> b!1024289 m!1201753))

(assert (=> b!1024283 m!1201745))

(assert (=> b!1024111 d!294927))

(declare-fun b!1024324 () Bool)

(declare-fun c!169830 () Bool)

(assert (=> b!1024324 (= c!169830 (is-Star!2830 (regTwo!6172 r!15766)))))

(declare-fun e!653740 () Regex!2830)

(declare-fun e!653741 () Regex!2830)

(assert (=> b!1024324 (= e!653740 e!653741)))

(declare-fun b!1024325 () Bool)

(assert (=> b!1024325 (= e!653741 (regTwo!6172 r!15766))))

(declare-fun bm!70282 () Bool)

(declare-fun call!70288 () Regex!2830)

(declare-fun call!70289 () Regex!2830)

(assert (=> bm!70282 (= call!70288 call!70289)))

(declare-fun b!1024326 () Bool)

(declare-fun e!653743 () Regex!2830)

(declare-fun call!70287 () Regex!2830)

(assert (=> b!1024326 (= e!653743 (Concat!4663 call!70287 call!70288))))

(declare-fun b!1024327 () Bool)

(declare-fun call!70291 () Regex!2830)

(assert (=> b!1024327 (= e!653740 (Union!2830 call!70287 call!70291))))

(declare-fun b!1024328 () Bool)

(declare-fun e!653744 () Regex!2830)

(declare-fun call!70290 () Regex!2830)

(assert (=> b!1024328 (= e!653744 call!70290)))

(declare-fun b!1024329 () Bool)

(declare-fun c!169827 () Bool)

(assert (=> b!1024329 (= c!169827 (is-Concat!4663 (regTwo!6172 r!15766)))))

(declare-fun e!653745 () Regex!2830)

(assert (=> b!1024329 (= e!653745 e!653743)))

(declare-fun bm!70283 () Bool)

(assert (=> bm!70283 (= call!70287 call!70290)))

(declare-fun b!1024331 () Bool)

(assert (=> b!1024331 (= e!653744 e!653745)))

(declare-fun c!169829 () Bool)

(assert (=> b!1024331 (= c!169829 (and (is-Concat!4663 (regTwo!6172 r!15766)) (is-EmptyExpr!2830 (regTwo!6172 (regTwo!6172 r!15766)))))))

(declare-fun b!1024332 () Bool)

(assert (=> b!1024332 (= e!653745 call!70289)))

(declare-fun b!1024333 () Bool)

(assert (=> b!1024333 (= e!653741 (Star!2830 call!70291))))

(declare-fun bm!70284 () Bool)

(declare-fun c!169831 () Bool)

(assert (=> bm!70284 (= call!70290 (removeUselessConcat!399 (ite c!169831 (regTwo!6172 (regTwo!6172 r!15766)) (ite c!169827 (regOne!6172 (regTwo!6172 r!15766)) (regOne!6173 (regTwo!6172 r!15766))))))))

(declare-fun bm!70285 () Bool)

(assert (=> bm!70285 (= call!70291 call!70288)))

(declare-fun b!1024334 () Bool)

(assert (=> b!1024334 (= e!653743 e!653740)))

(declare-fun c!169828 () Bool)

(assert (=> b!1024334 (= c!169828 (is-Union!2830 (regTwo!6172 r!15766)))))

(declare-fun bm!70286 () Bool)

(assert (=> bm!70286 (= call!70289 (removeUselessConcat!399 (ite c!169829 (regOne!6172 (regTwo!6172 r!15766)) (ite c!169827 (regTwo!6172 (regTwo!6172 r!15766)) (ite c!169828 (regTwo!6173 (regTwo!6172 r!15766)) (reg!3159 (regTwo!6172 r!15766)))))))))

(declare-fun b!1024330 () Bool)

(declare-fun e!653742 () Bool)

(declare-fun lt!354938 () Regex!2830)

(assert (=> b!1024330 (= e!653742 (= (nullable!931 lt!354938) (nullable!931 (regTwo!6172 r!15766))))))

(declare-fun d!294929 () Bool)

(assert (=> d!294929 e!653742))

(declare-fun res!460239 () Bool)

(assert (=> d!294929 (=> (not res!460239) (not e!653742))))

(assert (=> d!294929 (= res!460239 (validRegex!1299 lt!354938))))

(assert (=> d!294929 (= lt!354938 e!653744)))

(assert (=> d!294929 (= c!169831 (and (is-Concat!4663 (regTwo!6172 r!15766)) (is-EmptyExpr!2830 (regOne!6172 (regTwo!6172 r!15766)))))))

(assert (=> d!294929 (validRegex!1299 (regTwo!6172 r!15766))))

(assert (=> d!294929 (= (removeUselessConcat!399 (regTwo!6172 r!15766)) lt!354938)))

(assert (= (and d!294929 c!169831) b!1024328))

(assert (= (and d!294929 (not c!169831)) b!1024331))

(assert (= (and b!1024331 c!169829) b!1024332))

(assert (= (and b!1024331 (not c!169829)) b!1024329))

(assert (= (and b!1024329 c!169827) b!1024326))

(assert (= (and b!1024329 (not c!169827)) b!1024334))

(assert (= (and b!1024334 c!169828) b!1024327))

(assert (= (and b!1024334 (not c!169828)) b!1024324))

(assert (= (and b!1024324 c!169830) b!1024333))

(assert (= (and b!1024324 (not c!169830)) b!1024325))

(assert (= (or b!1024327 b!1024333) bm!70285))

(assert (= (or b!1024326 bm!70285) bm!70282))

(assert (= (or b!1024326 b!1024327) bm!70283))

(assert (= (or b!1024332 bm!70282) bm!70286))

(assert (= (or b!1024328 bm!70283) bm!70284))

(assert (= (and d!294929 res!460239) b!1024330))

(declare-fun m!1201765 () Bool)

(assert (=> bm!70284 m!1201765))

(declare-fun m!1201767 () Bool)

(assert (=> bm!70286 m!1201767))

(declare-fun m!1201769 () Bool)

(assert (=> b!1024330 m!1201769))

(assert (=> b!1024330 m!1201763))

(declare-fun m!1201771 () Bool)

(assert (=> d!294929 m!1201771))

(assert (=> d!294929 m!1201757))

(assert (=> b!1024111 d!294929))

(declare-fun d!294931 () Bool)

(assert (=> d!294931 (= (matchR!1366 (regTwo!6172 r!15766) s!10566) (matchR!1366 (removeUselessConcat!399 (regTwo!6172 r!15766)) s!10566))))

(declare-fun lt!354941 () Unit!15335)

(declare-fun choose!6491 (Regex!2830 List!10060) Unit!15335)

(assert (=> d!294931 (= lt!354941 (choose!6491 (regTwo!6172 r!15766) s!10566))))

(assert (=> d!294931 (validRegex!1299 (regTwo!6172 r!15766))))

(assert (=> d!294931 (= (lemmaRemoveUselessConcatSound!239 (regTwo!6172 r!15766) s!10566) lt!354941)))

(declare-fun bs!246935 () Bool)

(assert (= bs!246935 d!294931))

(declare-fun m!1201773 () Bool)

(assert (=> bs!246935 m!1201773))

(assert (=> bs!246935 m!1201641))

(assert (=> bs!246935 m!1201643))

(declare-fun m!1201775 () Bool)

(assert (=> bs!246935 m!1201775))

(assert (=> bs!246935 m!1201757))

(assert (=> bs!246935 m!1201643))

(assert (=> b!1024111 d!294931))

(declare-fun bs!246936 () Bool)

(declare-fun b!1024389 () Bool)

(assert (= bs!246936 (and b!1024389 d!294913)))

(declare-fun lambda!36512 () Int)

(assert (=> bs!246936 (not (= lambda!36512 lambda!36507))))

(declare-fun bs!246937 () Bool)

(assert (= bs!246937 (and b!1024389 b!1024110)))

(assert (=> bs!246937 (not (= lambda!36512 lambda!36489))))

(assert (=> bs!246936 (not (= lambda!36512 lambda!36506))))

(assert (=> bs!246937 (not (= lambda!36512 lambda!36490))))

(declare-fun bs!246938 () Bool)

(assert (= bs!246938 (and b!1024389 d!294909)))

(assert (=> bs!246938 (not (= lambda!36512 lambda!36501))))

(assert (=> b!1024389 true))

(assert (=> b!1024389 true))

(declare-fun bs!246939 () Bool)

(declare-fun b!1024384 () Bool)

(assert (= bs!246939 (and b!1024384 d!294913)))

(declare-fun lambda!36513 () Int)

(assert (=> bs!246939 (= (= (regOne!6172 r!15766) EmptyExpr!2830) (= lambda!36513 lambda!36507))))

(declare-fun bs!246940 () Bool)

(assert (= bs!246940 (and b!1024384 b!1024110)))

(assert (=> bs!246940 (not (= lambda!36513 lambda!36489))))

(assert (=> bs!246939 (not (= lambda!36513 lambda!36506))))

(declare-fun bs!246941 () Bool)

(assert (= bs!246941 (and b!1024384 b!1024389)))

(assert (=> bs!246941 (not (= lambda!36513 lambda!36512))))

(assert (=> bs!246940 (= (= (regOne!6172 r!15766) EmptyExpr!2830) (= lambda!36513 lambda!36490))))

(declare-fun bs!246942 () Bool)

(assert (= bs!246942 (and b!1024384 d!294909)))

(assert (=> bs!246942 (not (= lambda!36513 lambda!36501))))

(assert (=> b!1024384 true))

(assert (=> b!1024384 true))

(declare-fun e!653774 () Bool)

(declare-fun call!70297 () Bool)

(assert (=> b!1024384 (= e!653774 call!70297)))

(declare-fun d!294933 () Bool)

(declare-fun c!169845 () Bool)

(assert (=> d!294933 (= c!169845 (is-EmptyExpr!2830 r!15766))))

(declare-fun e!653773 () Bool)

(assert (=> d!294933 (= (matchRSpec!629 r!15766 s!10566) e!653773)))

(declare-fun b!1024385 () Bool)

(declare-fun e!653779 () Bool)

(assert (=> b!1024385 (= e!653779 (matchRSpec!629 (regTwo!6173 r!15766) s!10566))))

(declare-fun b!1024386 () Bool)

(declare-fun c!169843 () Bool)

(assert (=> b!1024386 (= c!169843 (is-ElementMatch!2830 r!15766))))

(declare-fun e!653778 () Bool)

(declare-fun e!653777 () Bool)

(assert (=> b!1024386 (= e!653778 e!653777)))

(declare-fun b!1024387 () Bool)

(declare-fun call!70296 () Bool)

(assert (=> b!1024387 (= e!653773 call!70296)))

(declare-fun b!1024388 () Bool)

(declare-fun res!460271 () Bool)

(declare-fun e!653775 () Bool)

(assert (=> b!1024388 (=> res!460271 e!653775)))

(assert (=> b!1024388 (= res!460271 call!70296)))

(assert (=> b!1024388 (= e!653774 e!653775)))

(assert (=> b!1024389 (= e!653775 call!70297)))

(declare-fun b!1024390 () Bool)

(assert (=> b!1024390 (= e!653777 (= s!10566 (Cons!10044 (c!169787 r!15766) Nil!10044)))))

(declare-fun bm!70291 () Bool)

(assert (=> bm!70291 (= call!70296 (isEmpty!6407 s!10566))))

(declare-fun b!1024391 () Bool)

(declare-fun c!169842 () Bool)

(assert (=> b!1024391 (= c!169842 (is-Union!2830 r!15766))))

(declare-fun e!653776 () Bool)

(assert (=> b!1024391 (= e!653777 e!653776)))

(declare-fun b!1024392 () Bool)

(assert (=> b!1024392 (= e!653776 e!653779)))

(declare-fun res!460270 () Bool)

(assert (=> b!1024392 (= res!460270 (matchRSpec!629 (regOne!6173 r!15766) s!10566))))

(assert (=> b!1024392 (=> res!460270 e!653779)))

(declare-fun b!1024393 () Bool)

(assert (=> b!1024393 (= e!653773 e!653778)))

(declare-fun res!460269 () Bool)

(assert (=> b!1024393 (= res!460269 (not (is-EmptyLang!2830 r!15766)))))

(assert (=> b!1024393 (=> (not res!460269) (not e!653778))))

(declare-fun b!1024394 () Bool)

(assert (=> b!1024394 (= e!653776 e!653774)))

(declare-fun c!169844 () Bool)

(assert (=> b!1024394 (= c!169844 (is-Star!2830 r!15766))))

(declare-fun bm!70292 () Bool)

(assert (=> bm!70292 (= call!70297 (Exists!559 (ite c!169844 lambda!36512 lambda!36513)))))

(assert (= (and d!294933 c!169845) b!1024387))

(assert (= (and d!294933 (not c!169845)) b!1024393))

(assert (= (and b!1024393 res!460269) b!1024386))

(assert (= (and b!1024386 c!169843) b!1024390))

(assert (= (and b!1024386 (not c!169843)) b!1024391))

(assert (= (and b!1024391 c!169842) b!1024392))

(assert (= (and b!1024391 (not c!169842)) b!1024394))

(assert (= (and b!1024392 (not res!460270)) b!1024385))

(assert (= (and b!1024394 c!169844) b!1024388))

(assert (= (and b!1024394 (not c!169844)) b!1024384))

(assert (= (and b!1024388 (not res!460271)) b!1024389))

(assert (= (or b!1024389 b!1024384) bm!70292))

(assert (= (or b!1024387 b!1024388) bm!70291))

(declare-fun m!1201797 () Bool)

(assert (=> b!1024385 m!1201797))

(assert (=> bm!70291 m!1201633))

(declare-fun m!1201799 () Bool)

(assert (=> b!1024392 m!1201799))

(declare-fun m!1201801 () Bool)

(assert (=> bm!70292 m!1201801))

(assert (=> b!1024112 d!294933))

(declare-fun b!1024395 () Bool)

(declare-fun res!460276 () Bool)

(declare-fun e!653786 () Bool)

(assert (=> b!1024395 (=> (not res!460276) (not e!653786))))

(declare-fun call!70298 () Bool)

(assert (=> b!1024395 (= res!460276 (not call!70298))))

(declare-fun b!1024396 () Bool)

(declare-fun res!460275 () Bool)

(declare-fun e!653785 () Bool)

(assert (=> b!1024396 (=> res!460275 e!653785)))

(assert (=> b!1024396 (= res!460275 (not (is-ElementMatch!2830 r!15766)))))

(declare-fun e!653781 () Bool)

(assert (=> b!1024396 (= e!653781 e!653785)))

(declare-fun d!294937 () Bool)

(declare-fun e!653780 () Bool)

(assert (=> d!294937 e!653780))

(declare-fun c!169848 () Bool)

(assert (=> d!294937 (= c!169848 (is-EmptyExpr!2830 r!15766))))

(declare-fun lt!354945 () Bool)

(declare-fun e!653783 () Bool)

(assert (=> d!294937 (= lt!354945 e!653783)))

(declare-fun c!169847 () Bool)

(assert (=> d!294937 (= c!169847 (isEmpty!6407 s!10566))))

(assert (=> d!294937 (validRegex!1299 r!15766)))

(assert (=> d!294937 (= (matchR!1366 r!15766 s!10566) lt!354945)))

(declare-fun b!1024397 () Bool)

(assert (=> b!1024397 (= e!653786 (= (head!1887 s!10566) (c!169787 r!15766)))))

(declare-fun b!1024398 () Bool)

(declare-fun e!653784 () Bool)

(assert (=> b!1024398 (= e!653785 e!653784)))

(declare-fun res!460273 () Bool)

(assert (=> b!1024398 (=> (not res!460273) (not e!653784))))

(assert (=> b!1024398 (= res!460273 (not lt!354945))))

(declare-fun b!1024399 () Bool)

(assert (=> b!1024399 (= e!653780 (= lt!354945 call!70298))))

(declare-fun b!1024400 () Bool)

(declare-fun e!653782 () Bool)

(assert (=> b!1024400 (= e!653782 (not (= (head!1887 s!10566) (c!169787 r!15766))))))

(declare-fun b!1024401 () Bool)

(declare-fun res!460278 () Bool)

(assert (=> b!1024401 (=> res!460278 e!653785)))

(assert (=> b!1024401 (= res!460278 e!653786)))

(declare-fun res!460274 () Bool)

(assert (=> b!1024401 (=> (not res!460274) (not e!653786))))

(assert (=> b!1024401 (= res!460274 lt!354945)))

(declare-fun b!1024402 () Bool)

(assert (=> b!1024402 (= e!653780 e!653781)))

(declare-fun c!169846 () Bool)

(assert (=> b!1024402 (= c!169846 (is-EmptyLang!2830 r!15766))))

(declare-fun b!1024403 () Bool)

(assert (=> b!1024403 (= e!653783 (matchR!1366 (derivativeStep!733 r!15766 (head!1887 s!10566)) (tail!1449 s!10566)))))

(declare-fun b!1024404 () Bool)

(declare-fun res!460277 () Bool)

(assert (=> b!1024404 (=> res!460277 e!653782)))

(assert (=> b!1024404 (= res!460277 (not (isEmpty!6407 (tail!1449 s!10566))))))

(declare-fun b!1024405 () Bool)

(assert (=> b!1024405 (= e!653784 e!653782)))

(declare-fun res!460279 () Bool)

(assert (=> b!1024405 (=> res!460279 e!653782)))

(assert (=> b!1024405 (= res!460279 call!70298)))

(declare-fun b!1024406 () Bool)

(declare-fun res!460272 () Bool)

(assert (=> b!1024406 (=> (not res!460272) (not e!653786))))

(assert (=> b!1024406 (= res!460272 (isEmpty!6407 (tail!1449 s!10566)))))

(declare-fun b!1024407 () Bool)

(assert (=> b!1024407 (= e!653781 (not lt!354945))))

(declare-fun bm!70293 () Bool)

(assert (=> bm!70293 (= call!70298 (isEmpty!6407 s!10566))))

(declare-fun b!1024408 () Bool)

(assert (=> b!1024408 (= e!653783 (nullable!931 r!15766))))

(assert (= (and d!294937 c!169847) b!1024408))

(assert (= (and d!294937 (not c!169847)) b!1024403))

(assert (= (and d!294937 c!169848) b!1024399))

(assert (= (and d!294937 (not c!169848)) b!1024402))

(assert (= (and b!1024402 c!169846) b!1024407))

(assert (= (and b!1024402 (not c!169846)) b!1024396))

(assert (= (and b!1024396 (not res!460275)) b!1024401))

(assert (= (and b!1024401 res!460274) b!1024395))

(assert (= (and b!1024395 res!460276) b!1024406))

(assert (= (and b!1024406 res!460272) b!1024397))

(assert (= (and b!1024401 (not res!460278)) b!1024398))

(assert (= (and b!1024398 res!460273) b!1024405))

(assert (= (and b!1024405 (not res!460279)) b!1024404))

(assert (= (and b!1024404 (not res!460277)) b!1024400))

(assert (= (or b!1024399 b!1024395 b!1024405) bm!70293))

(assert (=> d!294937 m!1201633))

(assert (=> d!294937 m!1201657))

(assert (=> b!1024403 m!1201745))

(assert (=> b!1024403 m!1201745))

(declare-fun m!1201803 () Bool)

(assert (=> b!1024403 m!1201803))

(assert (=> b!1024403 m!1201749))

(assert (=> b!1024403 m!1201803))

(assert (=> b!1024403 m!1201749))

(declare-fun m!1201805 () Bool)

(assert (=> b!1024403 m!1201805))

(assert (=> b!1024404 m!1201749))

(assert (=> b!1024404 m!1201749))

(assert (=> b!1024404 m!1201753))

(declare-fun m!1201807 () Bool)

(assert (=> b!1024408 m!1201807))

(assert (=> b!1024397 m!1201745))

(assert (=> bm!70293 m!1201633))

(assert (=> b!1024406 m!1201749))

(assert (=> b!1024406 m!1201749))

(assert (=> b!1024406 m!1201753))

(assert (=> b!1024400 m!1201745))

(assert (=> b!1024112 d!294937))

(declare-fun d!294939 () Bool)

(assert (=> d!294939 (= (matchR!1366 r!15766 s!10566) (matchRSpec!629 r!15766 s!10566))))

(declare-fun lt!354948 () Unit!15335)

(declare-fun choose!6492 (Regex!2830 List!10060) Unit!15335)

(assert (=> d!294939 (= lt!354948 (choose!6492 r!15766 s!10566))))

(assert (=> d!294939 (validRegex!1299 r!15766)))

(assert (=> d!294939 (= (mainMatchTheorem!629 r!15766 s!10566) lt!354948)))

(declare-fun bs!246943 () Bool)

(assert (= bs!246943 d!294939))

(assert (=> bs!246943 m!1201651))

(assert (=> bs!246943 m!1201649))

(declare-fun m!1201809 () Bool)

(assert (=> bs!246943 m!1201809))

(assert (=> bs!246943 m!1201657))

(assert (=> b!1024112 d!294939))

(declare-fun b!1024431 () Bool)

(declare-fun e!653809 () Bool)

(declare-fun e!653806 () Bool)

(assert (=> b!1024431 (= e!653809 e!653806)))

(declare-fun c!169854 () Bool)

(assert (=> b!1024431 (= c!169854 (is-Star!2830 r!15766))))

(declare-fun bm!70300 () Bool)

(declare-fun call!70306 () Bool)

(declare-fun c!169853 () Bool)

(assert (=> bm!70300 (= call!70306 (validRegex!1299 (ite c!169853 (regTwo!6173 r!15766) (regTwo!6172 r!15766))))))

(declare-fun b!1024432 () Bool)

(declare-fun res!460294 () Bool)

(declare-fun e!653803 () Bool)

(assert (=> b!1024432 (=> res!460294 e!653803)))

(assert (=> b!1024432 (= res!460294 (not (is-Concat!4663 r!15766)))))

(declare-fun e!653805 () Bool)

(assert (=> b!1024432 (= e!653805 e!653803)))

(declare-fun b!1024433 () Bool)

(declare-fun res!460297 () Bool)

(declare-fun e!653807 () Bool)

(assert (=> b!1024433 (=> (not res!460297) (not e!653807))))

(declare-fun call!70307 () Bool)

(assert (=> b!1024433 (= res!460297 call!70307)))

(assert (=> b!1024433 (= e!653805 e!653807)))

(declare-fun b!1024434 () Bool)

(assert (=> b!1024434 (= e!653807 call!70306)))

(declare-fun b!1024435 () Bool)

(declare-fun e!653808 () Bool)

(assert (=> b!1024435 (= e!653806 e!653808)))

(declare-fun res!460298 () Bool)

(assert (=> b!1024435 (= res!460298 (not (nullable!931 (reg!3159 r!15766))))))

(assert (=> b!1024435 (=> (not res!460298) (not e!653808))))

(declare-fun bm!70301 () Bool)

(declare-fun call!70305 () Bool)

(assert (=> bm!70301 (= call!70307 call!70305)))

(declare-fun b!1024437 () Bool)

(assert (=> b!1024437 (= e!653808 call!70305)))

(declare-fun b!1024438 () Bool)

(declare-fun e!653804 () Bool)

(assert (=> b!1024438 (= e!653804 call!70306)))

(declare-fun bm!70302 () Bool)

(assert (=> bm!70302 (= call!70305 (validRegex!1299 (ite c!169854 (reg!3159 r!15766) (ite c!169853 (regOne!6173 r!15766) (regOne!6172 r!15766)))))))

(declare-fun b!1024439 () Bool)

(assert (=> b!1024439 (= e!653806 e!653805)))

(assert (=> b!1024439 (= c!169853 (is-Union!2830 r!15766))))

(declare-fun b!1024436 () Bool)

(assert (=> b!1024436 (= e!653803 e!653804)))

(declare-fun res!460295 () Bool)

(assert (=> b!1024436 (=> (not res!460295) (not e!653804))))

(assert (=> b!1024436 (= res!460295 call!70307)))

(declare-fun d!294941 () Bool)

(declare-fun res!460296 () Bool)

(assert (=> d!294941 (=> res!460296 e!653809)))

(assert (=> d!294941 (= res!460296 (is-ElementMatch!2830 r!15766))))

(assert (=> d!294941 (= (validRegex!1299 r!15766) e!653809)))

(assert (= (and d!294941 (not res!460296)) b!1024431))

(assert (= (and b!1024431 c!169854) b!1024435))

(assert (= (and b!1024431 (not c!169854)) b!1024439))

(assert (= (and b!1024435 res!460298) b!1024437))

(assert (= (and b!1024439 c!169853) b!1024433))

(assert (= (and b!1024439 (not c!169853)) b!1024432))

(assert (= (and b!1024433 res!460297) b!1024434))

(assert (= (and b!1024432 (not res!460294)) b!1024436))

(assert (= (and b!1024436 res!460295) b!1024438))

(assert (= (or b!1024434 b!1024438) bm!70300))

(assert (= (or b!1024433 b!1024436) bm!70301))

(assert (= (or b!1024437 bm!70301) bm!70302))

(declare-fun m!1201811 () Bool)

(assert (=> bm!70300 m!1201811))

(declare-fun m!1201813 () Bool)

(assert (=> b!1024435 m!1201813))

(declare-fun m!1201815 () Bool)

(assert (=> bm!70302 m!1201815))

(assert (=> start!89148 d!294941))

(declare-fun d!294943 () Bool)

(assert (=> d!294943 (isDefined!2005 (findConcatSeparation!469 EmptyExpr!2830 (regTwo!6172 r!15766) Nil!10044 s!10566 s!10566))))

(declare-fun lt!354953 () Unit!15335)

(declare-fun choose!6494 (Regex!2830 Regex!2830 List!10060 List!10060 List!10060 List!10060 List!10060) Unit!15335)

(assert (=> d!294943 (= lt!354953 (choose!6494 EmptyExpr!2830 (regTwo!6172 r!15766) Nil!10044 s!10566 s!10566 Nil!10044 s!10566))))

(assert (=> d!294943 (validRegex!1299 EmptyExpr!2830)))

(assert (=> d!294943 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!5 EmptyExpr!2830 (regTwo!6172 r!15766) Nil!10044 s!10566 s!10566 Nil!10044 s!10566) lt!354953)))

(declare-fun bs!246944 () Bool)

(assert (= bs!246944 d!294943))

(assert (=> bs!246944 m!1201637))

(assert (=> bs!246944 m!1201637))

(assert (=> bs!246944 m!1201725))

(declare-fun m!1201817 () Bool)

(assert (=> bs!246944 m!1201817))

(assert (=> bs!246944 m!1201707))

(assert (=> b!1024113 d!294943))

(declare-fun b!1024454 () Bool)

(declare-fun e!653814 () Bool)

(assert (=> b!1024454 (= e!653814 tp_is_empty!5303)))

(declare-fun b!1024456 () Bool)

(declare-fun tp!310916 () Bool)

(assert (=> b!1024456 (= e!653814 tp!310916)))

(assert (=> b!1024116 (= tp!310881 e!653814)))

(declare-fun b!1024455 () Bool)

(declare-fun tp!310918 () Bool)

(declare-fun tp!310919 () Bool)

(assert (=> b!1024455 (= e!653814 (and tp!310918 tp!310919))))

(declare-fun b!1024457 () Bool)

(declare-fun tp!310917 () Bool)

(declare-fun tp!310915 () Bool)

(assert (=> b!1024457 (= e!653814 (and tp!310917 tp!310915))))

(assert (= (and b!1024116 (is-ElementMatch!2830 (regOne!6172 r!15766))) b!1024454))

(assert (= (and b!1024116 (is-Concat!4663 (regOne!6172 r!15766))) b!1024455))

(assert (= (and b!1024116 (is-Star!2830 (regOne!6172 r!15766))) b!1024456))

(assert (= (and b!1024116 (is-Union!2830 (regOne!6172 r!15766))) b!1024457))

(declare-fun b!1024458 () Bool)

(declare-fun e!653815 () Bool)

(assert (=> b!1024458 (= e!653815 tp_is_empty!5303)))

(declare-fun b!1024460 () Bool)

(declare-fun tp!310921 () Bool)

(assert (=> b!1024460 (= e!653815 tp!310921)))

(assert (=> b!1024116 (= tp!310882 e!653815)))

(declare-fun b!1024459 () Bool)

(declare-fun tp!310923 () Bool)

(declare-fun tp!310924 () Bool)

(assert (=> b!1024459 (= e!653815 (and tp!310923 tp!310924))))

(declare-fun b!1024461 () Bool)

(declare-fun tp!310922 () Bool)

(declare-fun tp!310920 () Bool)

(assert (=> b!1024461 (= e!653815 (and tp!310922 tp!310920))))

(assert (= (and b!1024116 (is-ElementMatch!2830 (regTwo!6172 r!15766))) b!1024458))

(assert (= (and b!1024116 (is-Concat!4663 (regTwo!6172 r!15766))) b!1024459))

(assert (= (and b!1024116 (is-Star!2830 (regTwo!6172 r!15766))) b!1024460))

(assert (= (and b!1024116 (is-Union!2830 (regTwo!6172 r!15766))) b!1024461))

(declare-fun b!1024462 () Bool)

(declare-fun e!653816 () Bool)

(assert (=> b!1024462 (= e!653816 tp_is_empty!5303)))

(declare-fun b!1024464 () Bool)

(declare-fun tp!310926 () Bool)

(assert (=> b!1024464 (= e!653816 tp!310926)))

(assert (=> b!1024117 (= tp!310884 e!653816)))

(declare-fun b!1024463 () Bool)

(declare-fun tp!310928 () Bool)

(declare-fun tp!310929 () Bool)

(assert (=> b!1024463 (= e!653816 (and tp!310928 tp!310929))))

(declare-fun b!1024465 () Bool)

(declare-fun tp!310927 () Bool)

(declare-fun tp!310925 () Bool)

(assert (=> b!1024465 (= e!653816 (and tp!310927 tp!310925))))

(assert (= (and b!1024117 (is-ElementMatch!2830 (regOne!6173 r!15766))) b!1024462))

(assert (= (and b!1024117 (is-Concat!4663 (regOne!6173 r!15766))) b!1024463))

(assert (= (and b!1024117 (is-Star!2830 (regOne!6173 r!15766))) b!1024464))

(assert (= (and b!1024117 (is-Union!2830 (regOne!6173 r!15766))) b!1024465))

(declare-fun b!1024466 () Bool)

(declare-fun e!653817 () Bool)

(assert (=> b!1024466 (= e!653817 tp_is_empty!5303)))

(declare-fun b!1024468 () Bool)

(declare-fun tp!310931 () Bool)

(assert (=> b!1024468 (= e!653817 tp!310931)))

(assert (=> b!1024117 (= tp!310883 e!653817)))

(declare-fun b!1024467 () Bool)

(declare-fun tp!310933 () Bool)

(declare-fun tp!310934 () Bool)

(assert (=> b!1024467 (= e!653817 (and tp!310933 tp!310934))))

(declare-fun b!1024469 () Bool)

(declare-fun tp!310932 () Bool)

(declare-fun tp!310930 () Bool)

(assert (=> b!1024469 (= e!653817 (and tp!310932 tp!310930))))

(assert (= (and b!1024117 (is-ElementMatch!2830 (regTwo!6173 r!15766))) b!1024466))

(assert (= (and b!1024117 (is-Concat!4663 (regTwo!6173 r!15766))) b!1024467))

(assert (= (and b!1024117 (is-Star!2830 (regTwo!6173 r!15766))) b!1024468))

(assert (= (and b!1024117 (is-Union!2830 (regTwo!6173 r!15766))) b!1024469))

(declare-fun b!1024470 () Bool)

(declare-fun e!653818 () Bool)

(assert (=> b!1024470 (= e!653818 tp_is_empty!5303)))

(declare-fun b!1024472 () Bool)

(declare-fun tp!310936 () Bool)

(assert (=> b!1024472 (= e!653818 tp!310936)))

(assert (=> b!1024114 (= tp!310885 e!653818)))

(declare-fun b!1024471 () Bool)

(declare-fun tp!310938 () Bool)

(declare-fun tp!310939 () Bool)

(assert (=> b!1024471 (= e!653818 (and tp!310938 tp!310939))))

(declare-fun b!1024473 () Bool)

(declare-fun tp!310937 () Bool)

(declare-fun tp!310935 () Bool)

(assert (=> b!1024473 (= e!653818 (and tp!310937 tp!310935))))

(assert (= (and b!1024114 (is-ElementMatch!2830 (reg!3159 r!15766))) b!1024470))

(assert (= (and b!1024114 (is-Concat!4663 (reg!3159 r!15766))) b!1024471))

(assert (= (and b!1024114 (is-Star!2830 (reg!3159 r!15766))) b!1024472))

(assert (= (and b!1024114 (is-Union!2830 (reg!3159 r!15766))) b!1024473))

(declare-fun b!1024478 () Bool)

(declare-fun e!653821 () Bool)

(declare-fun tp!310942 () Bool)

(assert (=> b!1024478 (= e!653821 (and tp_is_empty!5303 tp!310942))))

(assert (=> b!1024119 (= tp!310886 e!653821)))

(assert (= (and b!1024119 (is-Cons!10044 (t!101106 s!10566))) b!1024478))

(push 1)

(assert (not b!1024471))

(assert (not b!1024392))

(assert (not d!294921))

(assert (not b!1024191))

(assert (not b!1024478))

(assert (not b!1024403))

(assert (not b!1024472))

(assert (not b!1024194))

(assert (not b!1024457))

(assert (not b!1024397))

(assert (not b!1024468))

(assert (not d!294929))

(assert (not b!1024404))

(assert (not b!1024280))

(assert (not b!1024469))

(assert (not d!294927))

(assert (not b!1024465))

(assert (not b!1024467))

(assert (not b!1024456))

(assert (not d!294931))

(assert (not d!294903))

(assert (not b!1024189))

(assert (not b!1024459))

(assert (not b!1024269))

(assert (not d!294919))

(assert (not b!1024435))

(assert (not bm!70302))

(assert (not bm!70286))

(assert (not b!1024286))

(assert (not d!294925))

(assert (not d!294939))

(assert (not d!294913))

(assert (not bm!70271))

(assert (not b!1024188))

(assert (not b!1024275))

(assert (not bm!70270))

(assert (not bm!70300))

(assert (not b!1024291))

(assert (not b!1024408))

(assert (not b!1024330))

(assert (not b!1024190))

(assert (not bm!70291))

(assert (not b!1024461))

(assert tp_is_empty!5303)

(assert (not b!1024460))

(assert (not bm!70292))

(assert (not d!294943))

(assert (not d!294899))

(assert (not b!1024385))

(assert (not b!1024473))

(assert (not b!1024193))

(assert (not b!1024287))

(assert (not b!1024464))

(assert (not b!1024277))

(assert (not d!294909))

(assert (not b!1024273))

(assert (not b!1024455))

(assert (not b!1024463))

(assert (not d!294937))

(assert (not b!1024289))

(assert (not b!1024266))

(assert (not b!1024400))

(assert (not bm!70284))

(assert (not b!1024283))

(assert (not b!1024406))

(assert (not bm!70293))

(assert (not b!1024272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

