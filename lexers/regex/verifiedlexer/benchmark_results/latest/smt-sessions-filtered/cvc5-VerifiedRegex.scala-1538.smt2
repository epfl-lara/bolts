; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80596 () Bool)

(assert start!80596)

(declare-fun b!894926 () Bool)

(assert (=> b!894926 true))

(assert (=> b!894926 true))

(assert (=> b!894926 true))

(declare-fun lambda!27652 () Int)

(declare-fun lambda!27651 () Int)

(assert (=> b!894926 (not (= lambda!27652 lambda!27651))))

(assert (=> b!894926 true))

(assert (=> b!894926 true))

(assert (=> b!894926 true))

(declare-fun e!585949 () Bool)

(declare-fun e!585951 () Bool)

(assert (=> b!894926 (= e!585949 e!585951)))

(declare-fun res!406769 () Bool)

(assert (=> b!894926 (=> res!406769 e!585951)))

(declare-datatypes ((C!5238 0))(
  ( (C!5239 (val!2867 Int)) )
))
(declare-datatypes ((List!9564 0))(
  ( (Nil!9548) (Cons!9548 (h!14949 C!5238) (t!100610 List!9564)) )
))
(declare-fun s!10566 () List!9564)

(declare-fun isEmpty!5736 (List!9564) Bool)

(assert (=> b!894926 (= res!406769 (not (isEmpty!5736 s!10566)))))

(declare-fun Exists!111 (Int) Bool)

(assert (=> b!894926 (= (Exists!111 lambda!27651) (Exists!111 lambda!27652))))

(declare-datatypes ((Unit!14247 0))(
  ( (Unit!14248) )
))
(declare-fun lt!333222 () Unit!14247)

(declare-datatypes ((Regex!2334 0))(
  ( (ElementMatch!2334 (c!144923 C!5238)) (Concat!4167 (regOne!5180 Regex!2334) (regTwo!5180 Regex!2334)) (EmptyExpr!2334) (Star!2334 (reg!2663 Regex!2334)) (EmptyLang!2334) (Union!2334 (regOne!5181 Regex!2334) (regTwo!5181 Regex!2334)) )
))
(declare-fun r!15766 () Regex!2334)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!3 (Regex!2334 List!9564) Unit!14247)

(assert (=> b!894926 (= lt!333222 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!3 (reg!2663 r!15766) s!10566))))

(declare-fun lt!333220 () Regex!2334)

(declare-datatypes ((tuple2!10670 0))(
  ( (tuple2!10671 (_1!6161 List!9564) (_2!6161 List!9564)) )
))
(declare-datatypes ((Option!1977 0))(
  ( (None!1976) (Some!1976 (v!19393 tuple2!10670)) )
))
(declare-fun isDefined!1619 (Option!1977) Bool)

(declare-fun findConcatSeparation!83 (Regex!2334 Regex!2334 List!9564 List!9564 List!9564) Option!1977)

(assert (=> b!894926 (= (isDefined!1619 (findConcatSeparation!83 (reg!2663 r!15766) lt!333220 Nil!9548 s!10566 s!10566)) (Exists!111 lambda!27651))))

(declare-fun lt!333219 () Unit!14247)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!83 (Regex!2334 Regex!2334 List!9564) Unit!14247)

(assert (=> b!894926 (= lt!333219 (lemmaFindConcatSeparationEquivalentToExists!83 (reg!2663 r!15766) lt!333220 s!10566))))

(assert (=> b!894926 (= lt!333220 (Star!2334 (reg!2663 r!15766)))))

(declare-fun b!894927 () Bool)

(declare-fun e!585948 () Bool)

(declare-fun tp!281360 () Bool)

(declare-fun tp!281357 () Bool)

(assert (=> b!894927 (= e!585948 (and tp!281360 tp!281357))))

(declare-fun b!894928 () Bool)

(declare-fun validRegex!803 (Regex!2334) Bool)

(declare-fun removeUselessConcat!63 (Regex!2334) Regex!2334)

(assert (=> b!894928 (= e!585951 (validRegex!803 (removeUselessConcat!63 r!15766)))))

(declare-fun b!894929 () Bool)

(declare-fun tp!281362 () Bool)

(declare-fun tp!281358 () Bool)

(assert (=> b!894929 (= e!585948 (and tp!281362 tp!281358))))

(declare-fun res!406767 () Bool)

(declare-fun e!585952 () Bool)

(assert (=> start!80596 (=> (not res!406767) (not e!585952))))

(assert (=> start!80596 (= res!406767 (validRegex!803 r!15766))))

(assert (=> start!80596 e!585952))

(assert (=> start!80596 e!585948))

(declare-fun e!585950 () Bool)

(assert (=> start!80596 e!585950))

(declare-fun b!894930 () Bool)

(declare-fun tp!281361 () Bool)

(assert (=> b!894930 (= e!585948 tp!281361)))

(declare-fun b!894931 () Bool)

(assert (=> b!894931 (= e!585952 (not e!585949))))

(declare-fun res!406768 () Bool)

(assert (=> b!894931 (=> res!406768 e!585949)))

(declare-fun lt!333218 () Bool)

(assert (=> b!894931 (= res!406768 (or (not lt!333218) (and (is-Concat!4167 r!15766) (is-EmptyExpr!2334 (regOne!5180 r!15766))) (and (is-Concat!4167 r!15766) (is-EmptyExpr!2334 (regTwo!5180 r!15766))) (is-Concat!4167 r!15766) (is-Union!2334 r!15766) (not (is-Star!2334 r!15766))))))

(declare-fun matchRSpec!135 (Regex!2334 List!9564) Bool)

(assert (=> b!894931 (= lt!333218 (matchRSpec!135 r!15766 s!10566))))

(declare-fun matchR!872 (Regex!2334 List!9564) Bool)

(assert (=> b!894931 (= lt!333218 (matchR!872 r!15766 s!10566))))

(declare-fun lt!333221 () Unit!14247)

(declare-fun mainMatchTheorem!135 (Regex!2334 List!9564) Unit!14247)

(assert (=> b!894931 (= lt!333221 (mainMatchTheorem!135 r!15766 s!10566))))

(declare-fun b!894932 () Bool)

(declare-fun tp_is_empty!4311 () Bool)

(declare-fun tp!281359 () Bool)

(assert (=> b!894932 (= e!585950 (and tp_is_empty!4311 tp!281359))))

(declare-fun b!894933 () Bool)

(assert (=> b!894933 (= e!585948 tp_is_empty!4311)))

(assert (= (and start!80596 res!406767) b!894931))

(assert (= (and b!894931 (not res!406768)) b!894926))

(assert (= (and b!894926 (not res!406769)) b!894928))

(assert (= (and start!80596 (is-ElementMatch!2334 r!15766)) b!894933))

(assert (= (and start!80596 (is-Concat!4167 r!15766)) b!894927))

(assert (= (and start!80596 (is-Star!2334 r!15766)) b!894930))

(assert (= (and start!80596 (is-Union!2334 r!15766)) b!894929))

(assert (= (and start!80596 (is-Cons!9548 s!10566)) b!894932))

(declare-fun m!1135581 () Bool)

(assert (=> b!894926 m!1135581))

(declare-fun m!1135583 () Bool)

(assert (=> b!894926 m!1135583))

(declare-fun m!1135585 () Bool)

(assert (=> b!894926 m!1135585))

(declare-fun m!1135587 () Bool)

(assert (=> b!894926 m!1135587))

(declare-fun m!1135589 () Bool)

(assert (=> b!894926 m!1135589))

(assert (=> b!894926 m!1135581))

(declare-fun m!1135591 () Bool)

(assert (=> b!894926 m!1135591))

(declare-fun m!1135593 () Bool)

(assert (=> b!894926 m!1135593))

(assert (=> b!894926 m!1135587))

(declare-fun m!1135595 () Bool)

(assert (=> b!894928 m!1135595))

(assert (=> b!894928 m!1135595))

(declare-fun m!1135597 () Bool)

(assert (=> b!894928 m!1135597))

(declare-fun m!1135599 () Bool)

(assert (=> start!80596 m!1135599))

(declare-fun m!1135601 () Bool)

(assert (=> b!894931 m!1135601))

(declare-fun m!1135603 () Bool)

(assert (=> b!894931 m!1135603))

(declare-fun m!1135605 () Bool)

(assert (=> b!894931 m!1135605))

(push 1)

(assert (not start!80596))

(assert tp_is_empty!4311)

(assert (not b!894928))

(assert (not b!894932))

(assert (not b!894929))

(assert (not b!894927))

(assert (not b!894931))

(assert (not b!894926))

(assert (not b!894930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!277695 () Bool)

(assert (=> d!277695 (= (isEmpty!5736 s!10566) (is-Nil!9548 s!10566))))

(assert (=> b!894926 d!277695))

(declare-fun bs!234895 () Bool)

(declare-fun d!277697 () Bool)

(assert (= bs!234895 (and d!277697 b!894926)))

(declare-fun lambda!27665 () Int)

(assert (=> bs!234895 (= (= (Star!2334 (reg!2663 r!15766)) lt!333220) (= lambda!27665 lambda!27651))))

(assert (=> bs!234895 (not (= lambda!27665 lambda!27652))))

(assert (=> d!277697 true))

(assert (=> d!277697 true))

(declare-fun lambda!27666 () Int)

(assert (=> bs!234895 (not (= lambda!27666 lambda!27651))))

(assert (=> bs!234895 (= (= (Star!2334 (reg!2663 r!15766)) lt!333220) (= lambda!27666 lambda!27652))))

(declare-fun bs!234896 () Bool)

(assert (= bs!234896 d!277697))

(assert (=> bs!234896 (not (= lambda!27666 lambda!27665))))

(assert (=> d!277697 true))

(assert (=> d!277697 true))

(assert (=> d!277697 (= (Exists!111 lambda!27665) (Exists!111 lambda!27666))))

(declare-fun lt!333240 () Unit!14247)

(declare-fun choose!5366 (Regex!2334 List!9564) Unit!14247)

(assert (=> d!277697 (= lt!333240 (choose!5366 (reg!2663 r!15766) s!10566))))

(assert (=> d!277697 (validRegex!803 (reg!2663 r!15766))))

(assert (=> d!277697 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!3 (reg!2663 r!15766) s!10566) lt!333240)))

(declare-fun m!1135633 () Bool)

(assert (=> bs!234896 m!1135633))

(declare-fun m!1135635 () Bool)

(assert (=> bs!234896 m!1135635))

(declare-fun m!1135637 () Bool)

(assert (=> bs!234896 m!1135637))

(declare-fun m!1135639 () Bool)

(assert (=> bs!234896 m!1135639))

(assert (=> b!894926 d!277697))

(declare-fun d!277701 () Bool)

(declare-fun choose!5367 (Int) Bool)

(assert (=> d!277701 (= (Exists!111 lambda!27652) (choose!5367 lambda!27652))))

(declare-fun bs!234897 () Bool)

(assert (= bs!234897 d!277701))

(declare-fun m!1135641 () Bool)

(assert (=> bs!234897 m!1135641))

(assert (=> b!894926 d!277701))

(declare-fun d!277703 () Bool)

(declare-fun isEmpty!5738 (Option!1977) Bool)

(assert (=> d!277703 (= (isDefined!1619 (findConcatSeparation!83 (reg!2663 r!15766) lt!333220 Nil!9548 s!10566 s!10566)) (not (isEmpty!5738 (findConcatSeparation!83 (reg!2663 r!15766) lt!333220 Nil!9548 s!10566 s!10566))))))

(declare-fun bs!234898 () Bool)

(assert (= bs!234898 d!277703))

(assert (=> bs!234898 m!1135581))

(declare-fun m!1135643 () Bool)

(assert (=> bs!234898 m!1135643))

(assert (=> b!894926 d!277703))

(declare-fun b!895036 () Bool)

(declare-fun e!586007 () Bool)

(assert (=> b!895036 (= e!586007 (matchR!872 lt!333220 s!10566))))

(declare-fun b!895037 () Bool)

(declare-fun res!406826 () Bool)

(declare-fun e!586004 () Bool)

(assert (=> b!895037 (=> (not res!406826) (not e!586004))))

(declare-fun lt!333249 () Option!1977)

(declare-fun get!3005 (Option!1977) tuple2!10670)

(assert (=> b!895037 (= res!406826 (matchR!872 (reg!2663 r!15766) (_1!6161 (get!3005 lt!333249))))))

(declare-fun b!895038 () Bool)

(declare-fun e!586008 () Option!1977)

(declare-fun e!586005 () Option!1977)

(assert (=> b!895038 (= e!586008 e!586005)))

(declare-fun c!144937 () Bool)

(assert (=> b!895038 (= c!144937 (is-Nil!9548 s!10566))))

(declare-fun b!895039 () Bool)

(assert (=> b!895039 (= e!586008 (Some!1976 (tuple2!10671 Nil!9548 s!10566)))))

(declare-fun b!895040 () Bool)

(assert (=> b!895040 (= e!586005 None!1976)))

(declare-fun d!277705 () Bool)

(declare-fun e!586006 () Bool)

(assert (=> d!277705 e!586006))

(declare-fun res!406828 () Bool)

(assert (=> d!277705 (=> res!406828 e!586006)))

(assert (=> d!277705 (= res!406828 e!586004)))

(declare-fun res!406825 () Bool)

(assert (=> d!277705 (=> (not res!406825) (not e!586004))))

(assert (=> d!277705 (= res!406825 (isDefined!1619 lt!333249))))

(assert (=> d!277705 (= lt!333249 e!586008)))

(declare-fun c!144938 () Bool)

(assert (=> d!277705 (= c!144938 e!586007)))

(declare-fun res!406827 () Bool)

(assert (=> d!277705 (=> (not res!406827) (not e!586007))))

(assert (=> d!277705 (= res!406827 (matchR!872 (reg!2663 r!15766) Nil!9548))))

(assert (=> d!277705 (validRegex!803 (reg!2663 r!15766))))

(assert (=> d!277705 (= (findConcatSeparation!83 (reg!2663 r!15766) lt!333220 Nil!9548 s!10566 s!10566) lt!333249)))

(declare-fun b!895041 () Bool)

(declare-fun lt!333247 () Unit!14247)

(declare-fun lt!333248 () Unit!14247)

(assert (=> b!895041 (= lt!333247 lt!333248)))

(declare-fun ++!2487 (List!9564 List!9564) List!9564)

(assert (=> b!895041 (= (++!2487 (++!2487 Nil!9548 (Cons!9548 (h!14949 s!10566) Nil!9548)) (t!100610 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!113 (List!9564 C!5238 List!9564 List!9564) Unit!14247)

(assert (=> b!895041 (= lt!333248 (lemmaMoveElementToOtherListKeepsConcatEq!113 Nil!9548 (h!14949 s!10566) (t!100610 s!10566) s!10566))))

(assert (=> b!895041 (= e!586005 (findConcatSeparation!83 (reg!2663 r!15766) lt!333220 (++!2487 Nil!9548 (Cons!9548 (h!14949 s!10566) Nil!9548)) (t!100610 s!10566) s!10566))))

(declare-fun b!895042 () Bool)

(declare-fun res!406829 () Bool)

(assert (=> b!895042 (=> (not res!406829) (not e!586004))))

(assert (=> b!895042 (= res!406829 (matchR!872 lt!333220 (_2!6161 (get!3005 lt!333249))))))

(declare-fun b!895043 () Bool)

(assert (=> b!895043 (= e!586004 (= (++!2487 (_1!6161 (get!3005 lt!333249)) (_2!6161 (get!3005 lt!333249))) s!10566))))

(declare-fun b!895044 () Bool)

(assert (=> b!895044 (= e!586006 (not (isDefined!1619 lt!333249)))))

(assert (= (and d!277705 res!406827) b!895036))

(assert (= (and d!277705 c!144938) b!895039))

(assert (= (and d!277705 (not c!144938)) b!895038))

(assert (= (and b!895038 c!144937) b!895040))

(assert (= (and b!895038 (not c!144937)) b!895041))

(assert (= (and d!277705 res!406825) b!895037))

(assert (= (and b!895037 res!406826) b!895042))

(assert (= (and b!895042 res!406829) b!895043))

(assert (= (and d!277705 (not res!406828)) b!895044))

(declare-fun m!1135645 () Bool)

(assert (=> d!277705 m!1135645))

(declare-fun m!1135647 () Bool)

(assert (=> d!277705 m!1135647))

(assert (=> d!277705 m!1135639))

(assert (=> b!895044 m!1135645))

(declare-fun m!1135649 () Bool)

(assert (=> b!895036 m!1135649))

(declare-fun m!1135651 () Bool)

(assert (=> b!895043 m!1135651))

(declare-fun m!1135653 () Bool)

(assert (=> b!895043 m!1135653))

(assert (=> b!895037 m!1135651))

(declare-fun m!1135655 () Bool)

(assert (=> b!895037 m!1135655))

(declare-fun m!1135657 () Bool)

(assert (=> b!895041 m!1135657))

(assert (=> b!895041 m!1135657))

(declare-fun m!1135659 () Bool)

(assert (=> b!895041 m!1135659))

(declare-fun m!1135661 () Bool)

(assert (=> b!895041 m!1135661))

(assert (=> b!895041 m!1135657))

(declare-fun m!1135663 () Bool)

(assert (=> b!895041 m!1135663))

(assert (=> b!895042 m!1135651))

(declare-fun m!1135665 () Bool)

(assert (=> b!895042 m!1135665))

(assert (=> b!894926 d!277705))

(declare-fun d!277707 () Bool)

(assert (=> d!277707 (= (Exists!111 lambda!27651) (choose!5367 lambda!27651))))

(declare-fun bs!234899 () Bool)

(assert (= bs!234899 d!277707))

(declare-fun m!1135667 () Bool)

(assert (=> bs!234899 m!1135667))

(assert (=> b!894926 d!277707))

(declare-fun bs!234900 () Bool)

(declare-fun d!277709 () Bool)

(assert (= bs!234900 (and d!277709 b!894926)))

(declare-fun lambda!27673 () Int)

(assert (=> bs!234900 (= lambda!27673 lambda!27651)))

(assert (=> bs!234900 (not (= lambda!27673 lambda!27652))))

(declare-fun bs!234901 () Bool)

(assert (= bs!234901 (and d!277709 d!277697)))

(assert (=> bs!234901 (= (= lt!333220 (Star!2334 (reg!2663 r!15766))) (= lambda!27673 lambda!27665))))

(assert (=> bs!234901 (not (= lambda!27673 lambda!27666))))

(assert (=> d!277709 true))

(assert (=> d!277709 true))

(assert (=> d!277709 true))

(assert (=> d!277709 (= (isDefined!1619 (findConcatSeparation!83 (reg!2663 r!15766) lt!333220 Nil!9548 s!10566 s!10566)) (Exists!111 lambda!27673))))

(declare-fun lt!333252 () Unit!14247)

(declare-fun choose!5368 (Regex!2334 Regex!2334 List!9564) Unit!14247)

(assert (=> d!277709 (= lt!333252 (choose!5368 (reg!2663 r!15766) lt!333220 s!10566))))

(assert (=> d!277709 (validRegex!803 (reg!2663 r!15766))))

(assert (=> d!277709 (= (lemmaFindConcatSeparationEquivalentToExists!83 (reg!2663 r!15766) lt!333220 s!10566) lt!333252)))

(declare-fun bs!234902 () Bool)

(assert (= bs!234902 d!277709))

(declare-fun m!1135669 () Bool)

(assert (=> bs!234902 m!1135669))

(assert (=> bs!234902 m!1135581))

(assert (=> bs!234902 m!1135591))

(assert (=> bs!234902 m!1135639))

(assert (=> bs!234902 m!1135581))

(declare-fun m!1135671 () Bool)

(assert (=> bs!234902 m!1135671))

(assert (=> b!894926 d!277709))

(declare-fun bs!234906 () Bool)

(declare-fun b!895096 () Bool)

(assert (= bs!234906 (and b!895096 d!277697)))

(declare-fun lambda!27680 () Int)

(assert (=> bs!234906 (= (= r!15766 (Star!2334 (reg!2663 r!15766))) (= lambda!27680 lambda!27666))))

(declare-fun bs!234907 () Bool)

(assert (= bs!234907 (and b!895096 b!894926)))

(assert (=> bs!234907 (= (= r!15766 lt!333220) (= lambda!27680 lambda!27652))))

(assert (=> bs!234906 (not (= lambda!27680 lambda!27665))))

(declare-fun bs!234908 () Bool)

(assert (= bs!234908 (and b!895096 d!277709)))

(assert (=> bs!234908 (not (= lambda!27680 lambda!27673))))

(assert (=> bs!234907 (not (= lambda!27680 lambda!27651))))

(assert (=> b!895096 true))

(assert (=> b!895096 true))

(declare-fun bs!234909 () Bool)

(declare-fun b!895097 () Bool)

(assert (= bs!234909 (and b!895097 d!277697)))

(declare-fun lambda!27681 () Int)

(assert (=> bs!234909 (not (= lambda!27681 lambda!27666))))

(declare-fun bs!234910 () Bool)

(assert (= bs!234910 (and b!895097 b!894926)))

(assert (=> bs!234910 (not (= lambda!27681 lambda!27652))))

(declare-fun bs!234911 () Bool)

(assert (= bs!234911 (and b!895097 b!895096)))

(assert (=> bs!234911 (not (= lambda!27681 lambda!27680))))

(assert (=> bs!234909 (not (= lambda!27681 lambda!27665))))

(declare-fun bs!234912 () Bool)

(assert (= bs!234912 (and b!895097 d!277709)))

(assert (=> bs!234912 (not (= lambda!27681 lambda!27673))))

(assert (=> bs!234910 (not (= lambda!27681 lambda!27651))))

(assert (=> b!895097 true))

(assert (=> b!895097 true))

(declare-fun e!586043 () Bool)

(declare-fun call!53143 () Bool)

(assert (=> b!895096 (= e!586043 call!53143)))

(declare-fun bm!53137 () Bool)

(declare-fun c!144953 () Bool)

(assert (=> bm!53137 (= call!53143 (Exists!111 (ite c!144953 lambda!27680 lambda!27681)))))

(declare-fun e!586041 () Bool)

(assert (=> b!895097 (= e!586041 call!53143)))

(declare-fun b!895098 () Bool)

(declare-fun res!406859 () Bool)

(assert (=> b!895098 (=> res!406859 e!586043)))

(declare-fun call!53142 () Bool)

(assert (=> b!895098 (= res!406859 call!53142)))

(assert (=> b!895098 (= e!586041 e!586043)))

(declare-fun b!895099 () Bool)

(declare-fun e!586038 () Bool)

(declare-fun e!586040 () Bool)

(assert (=> b!895099 (= e!586038 e!586040)))

(declare-fun res!406858 () Bool)

(assert (=> b!895099 (= res!406858 (matchRSpec!135 (regOne!5181 r!15766) s!10566))))

(assert (=> b!895099 (=> res!406858 e!586040)))

(declare-fun b!895100 () Bool)

(declare-fun c!144951 () Bool)

(assert (=> b!895100 (= c!144951 (is-Union!2334 r!15766))))

(declare-fun e!586044 () Bool)

(assert (=> b!895100 (= e!586044 e!586038)))

(declare-fun b!895101 () Bool)

(declare-fun e!586039 () Bool)

(assert (=> b!895101 (= e!586039 call!53142)))

(declare-fun b!895102 () Bool)

(declare-fun c!144952 () Bool)

(assert (=> b!895102 (= c!144952 (is-ElementMatch!2334 r!15766))))

(declare-fun e!586042 () Bool)

(assert (=> b!895102 (= e!586042 e!586044)))

(declare-fun b!895103 () Bool)

(assert (=> b!895103 (= e!586039 e!586042)))

(declare-fun res!406857 () Bool)

(assert (=> b!895103 (= res!406857 (not (is-EmptyLang!2334 r!15766)))))

(assert (=> b!895103 (=> (not res!406857) (not e!586042))))

(declare-fun b!895104 () Bool)

(assert (=> b!895104 (= e!586040 (matchRSpec!135 (regTwo!5181 r!15766) s!10566))))

(declare-fun bm!53138 () Bool)

(assert (=> bm!53138 (= call!53142 (isEmpty!5736 s!10566))))

(declare-fun d!277711 () Bool)

(declare-fun c!144954 () Bool)

(assert (=> d!277711 (= c!144954 (is-EmptyExpr!2334 r!15766))))

(assert (=> d!277711 (= (matchRSpec!135 r!15766 s!10566) e!586039)))

(declare-fun b!895105 () Bool)

(assert (=> b!895105 (= e!586044 (= s!10566 (Cons!9548 (c!144923 r!15766) Nil!9548)))))

(declare-fun b!895106 () Bool)

(assert (=> b!895106 (= e!586038 e!586041)))

(assert (=> b!895106 (= c!144953 (is-Star!2334 r!15766))))

(assert (= (and d!277711 c!144954) b!895101))

(assert (= (and d!277711 (not c!144954)) b!895103))

(assert (= (and b!895103 res!406857) b!895102))

(assert (= (and b!895102 c!144952) b!895105))

(assert (= (and b!895102 (not c!144952)) b!895100))

(assert (= (and b!895100 c!144951) b!895099))

(assert (= (and b!895100 (not c!144951)) b!895106))

(assert (= (and b!895099 (not res!406858)) b!895104))

(assert (= (and b!895106 c!144953) b!895098))

(assert (= (and b!895106 (not c!144953)) b!895097))

(assert (= (and b!895098 (not res!406859)) b!895096))

(assert (= (or b!895096 b!895097) bm!53137))

(assert (= (or b!895101 b!895098) bm!53138))

(declare-fun m!1135679 () Bool)

(assert (=> bm!53137 m!1135679))

(declare-fun m!1135681 () Bool)

(assert (=> b!895099 m!1135681))

(declare-fun m!1135683 () Bool)

(assert (=> b!895104 m!1135683))

(assert (=> bm!53138 m!1135585))

(assert (=> b!894931 d!277711))

(declare-fun b!895159 () Bool)

(declare-fun e!586076 () Bool)

(declare-fun head!1579 (List!9564) C!5238)

(assert (=> b!895159 (= e!586076 (not (= (head!1579 s!10566) (c!144923 r!15766))))))

(declare-fun b!895160 () Bool)

(declare-fun e!586073 () Bool)

(declare-fun derivativeStep!426 (Regex!2334 C!5238) Regex!2334)

(declare-fun tail!1141 (List!9564) List!9564)

(assert (=> b!895160 (= e!586073 (matchR!872 (derivativeStep!426 r!15766 (head!1579 s!10566)) (tail!1141 s!10566)))))

(declare-fun b!895161 () Bool)

(declare-fun e!586071 () Bool)

(declare-fun lt!333257 () Bool)

(declare-fun call!53146 () Bool)

(assert (=> b!895161 (= e!586071 (= lt!333257 call!53146))))

(declare-fun b!895162 () Bool)

(declare-fun nullable!614 (Regex!2334) Bool)

(assert (=> b!895162 (= e!586073 (nullable!614 r!15766))))

(declare-fun b!895164 () Bool)

(declare-fun res!406892 () Bool)

(assert (=> b!895164 (=> res!406892 e!586076)))

(assert (=> b!895164 (= res!406892 (not (isEmpty!5736 (tail!1141 s!10566))))))

(declare-fun b!895165 () Bool)

(declare-fun e!586074 () Bool)

(declare-fun e!586072 () Bool)

(assert (=> b!895165 (= e!586074 e!586072)))

(declare-fun res!406891 () Bool)

(assert (=> b!895165 (=> (not res!406891) (not e!586072))))

(assert (=> b!895165 (= res!406891 (not lt!333257))))

(declare-fun b!895166 () Bool)

(assert (=> b!895166 (= e!586072 e!586076)))

(declare-fun res!406888 () Bool)

(assert (=> b!895166 (=> res!406888 e!586076)))

(assert (=> b!895166 (= res!406888 call!53146)))

(declare-fun b!895167 () Bool)

(declare-fun e!586075 () Bool)

(assert (=> b!895167 (= e!586075 (not lt!333257))))

(declare-fun b!895168 () Bool)

(declare-fun res!406894 () Bool)

(declare-fun e!586077 () Bool)

(assert (=> b!895168 (=> (not res!406894) (not e!586077))))

(assert (=> b!895168 (= res!406894 (not call!53146))))

(declare-fun bm!53141 () Bool)

(assert (=> bm!53141 (= call!53146 (isEmpty!5736 s!10566))))

(declare-fun b!895163 () Bool)

(declare-fun res!406893 () Bool)

(assert (=> b!895163 (=> res!406893 e!586074)))

(assert (=> b!895163 (= res!406893 (not (is-ElementMatch!2334 r!15766)))))

(assert (=> b!895163 (= e!586075 e!586074)))

(declare-fun d!277715 () Bool)

(assert (=> d!277715 e!586071))

(declare-fun c!144969 () Bool)

(assert (=> d!277715 (= c!144969 (is-EmptyExpr!2334 r!15766))))

(assert (=> d!277715 (= lt!333257 e!586073)))

(declare-fun c!144967 () Bool)

(assert (=> d!277715 (= c!144967 (isEmpty!5736 s!10566))))

(assert (=> d!277715 (validRegex!803 r!15766)))

(assert (=> d!277715 (= (matchR!872 r!15766 s!10566) lt!333257)))

(declare-fun b!895169 () Bool)

(assert (=> b!895169 (= e!586071 e!586075)))

(declare-fun c!144968 () Bool)

(assert (=> b!895169 (= c!144968 (is-EmptyLang!2334 r!15766))))

(declare-fun b!895170 () Bool)

(assert (=> b!895170 (= e!586077 (= (head!1579 s!10566) (c!144923 r!15766)))))

(declare-fun b!895171 () Bool)

(declare-fun res!406889 () Bool)

(assert (=> b!895171 (=> res!406889 e!586074)))

(assert (=> b!895171 (= res!406889 e!586077)))

(declare-fun res!406895 () Bool)

(assert (=> b!895171 (=> (not res!406895) (not e!586077))))

(assert (=> b!895171 (= res!406895 lt!333257)))

(declare-fun b!895172 () Bool)

(declare-fun res!406890 () Bool)

(assert (=> b!895172 (=> (not res!406890) (not e!586077))))

(assert (=> b!895172 (= res!406890 (isEmpty!5736 (tail!1141 s!10566)))))

(assert (= (and d!277715 c!144967) b!895162))

(assert (= (and d!277715 (not c!144967)) b!895160))

(assert (= (and d!277715 c!144969) b!895161))

(assert (= (and d!277715 (not c!144969)) b!895169))

(assert (= (and b!895169 c!144968) b!895167))

(assert (= (and b!895169 (not c!144968)) b!895163))

(assert (= (and b!895163 (not res!406893)) b!895171))

(assert (= (and b!895171 res!406895) b!895168))

(assert (= (and b!895168 res!406894) b!895172))

(assert (= (and b!895172 res!406890) b!895170))

(assert (= (and b!895171 (not res!406889)) b!895165))

(assert (= (and b!895165 res!406891) b!895166))

(assert (= (and b!895166 (not res!406888)) b!895164))

(assert (= (and b!895164 (not res!406892)) b!895159))

(assert (= (or b!895161 b!895168 b!895166) bm!53141))

(declare-fun m!1135685 () Bool)

(assert (=> b!895162 m!1135685))

(declare-fun m!1135687 () Bool)

(assert (=> b!895170 m!1135687))

(assert (=> d!277715 m!1135585))

(assert (=> d!277715 m!1135599))

(declare-fun m!1135689 () Bool)

(assert (=> b!895172 m!1135689))

(assert (=> b!895172 m!1135689))

(declare-fun m!1135691 () Bool)

(assert (=> b!895172 m!1135691))

(assert (=> bm!53141 m!1135585))

(assert (=> b!895159 m!1135687))

(assert (=> b!895164 m!1135689))

(assert (=> b!895164 m!1135689))

(assert (=> b!895164 m!1135691))

(assert (=> b!895160 m!1135687))

(assert (=> b!895160 m!1135687))

(declare-fun m!1135693 () Bool)

(assert (=> b!895160 m!1135693))

(assert (=> b!895160 m!1135689))

(assert (=> b!895160 m!1135693))

(assert (=> b!895160 m!1135689))

(declare-fun m!1135695 () Bool)

(assert (=> b!895160 m!1135695))

(assert (=> b!894931 d!277715))

(declare-fun d!277717 () Bool)

(assert (=> d!277717 (= (matchR!872 r!15766 s!10566) (matchRSpec!135 r!15766 s!10566))))

(declare-fun lt!333260 () Unit!14247)

(declare-fun choose!5369 (Regex!2334 List!9564) Unit!14247)

(assert (=> d!277717 (= lt!333260 (choose!5369 r!15766 s!10566))))

(assert (=> d!277717 (validRegex!803 r!15766)))

(assert (=> d!277717 (= (mainMatchTheorem!135 r!15766 s!10566) lt!333260)))

(declare-fun bs!234913 () Bool)

(assert (= bs!234913 d!277717))

(assert (=> bs!234913 m!1135603))

(assert (=> bs!234913 m!1135601))

(declare-fun m!1135697 () Bool)

(assert (=> bs!234913 m!1135697))

(assert (=> bs!234913 m!1135599))

(assert (=> b!894931 d!277717))

(declare-fun b!895195 () Bool)

(declare-fun e!586097 () Bool)

(declare-fun e!586096 () Bool)

(assert (=> b!895195 (= e!586097 e!586096)))

(declare-fun res!406914 () Bool)

(assert (=> b!895195 (=> (not res!406914) (not e!586096))))

(declare-fun call!53157 () Bool)

(assert (=> b!895195 (= res!406914 call!53157)))

(declare-fun b!895196 () Bool)

(declare-fun res!406913 () Bool)

(assert (=> b!895196 (=> res!406913 e!586097)))

(assert (=> b!895196 (= res!406913 (not (is-Concat!4167 r!15766)))))

(declare-fun e!586100 () Bool)

(assert (=> b!895196 (= e!586100 e!586097)))

(declare-fun b!895197 () Bool)

(declare-fun res!406910 () Bool)

(declare-fun e!586094 () Bool)

(assert (=> b!895197 (=> (not res!406910) (not e!586094))))

(assert (=> b!895197 (= res!406910 call!53157)))

(assert (=> b!895197 (= e!586100 e!586094)))

(declare-fun bm!53150 () Bool)

(declare-fun call!53156 () Bool)

(declare-fun c!144975 () Bool)

(assert (=> bm!53150 (= call!53156 (validRegex!803 (ite c!144975 (regTwo!5181 r!15766) (regTwo!5180 r!15766))))))

(declare-fun b!895198 () Bool)

(declare-fun e!586095 () Bool)

(assert (=> b!895198 (= e!586095 e!586100)))

(assert (=> b!895198 (= c!144975 (is-Union!2334 r!15766))))

(declare-fun call!53155 () Bool)

(declare-fun bm!53151 () Bool)

(declare-fun c!144974 () Bool)

(assert (=> bm!53151 (= call!53155 (validRegex!803 (ite c!144974 (reg!2663 r!15766) (ite c!144975 (regOne!5181 r!15766) (regOne!5180 r!15766)))))))

(declare-fun b!895199 () Bool)

(declare-fun e!586099 () Bool)

(assert (=> b!895199 (= e!586095 e!586099)))

(declare-fun res!406911 () Bool)

(assert (=> b!895199 (= res!406911 (not (nullable!614 (reg!2663 r!15766))))))

(assert (=> b!895199 (=> (not res!406911) (not e!586099))))

(declare-fun b!895200 () Bool)

(assert (=> b!895200 (= e!586096 call!53156)))

(declare-fun d!277719 () Bool)

(declare-fun res!406912 () Bool)

(declare-fun e!586098 () Bool)

(assert (=> d!277719 (=> res!406912 e!586098)))

(assert (=> d!277719 (= res!406912 (is-ElementMatch!2334 r!15766))))

(assert (=> d!277719 (= (validRegex!803 r!15766) e!586098)))

(declare-fun b!895201 () Bool)

(assert (=> b!895201 (= e!586094 call!53156)))

(declare-fun b!895202 () Bool)

(assert (=> b!895202 (= e!586099 call!53155)))

(declare-fun b!895203 () Bool)

(assert (=> b!895203 (= e!586098 e!586095)))

(assert (=> b!895203 (= c!144974 (is-Star!2334 r!15766))))

(declare-fun bm!53152 () Bool)

(assert (=> bm!53152 (= call!53157 call!53155)))

(assert (= (and d!277719 (not res!406912)) b!895203))

(assert (= (and b!895203 c!144974) b!895199))

(assert (= (and b!895203 (not c!144974)) b!895198))

(assert (= (and b!895199 res!406911) b!895202))

(assert (= (and b!895198 c!144975) b!895197))

(assert (= (and b!895198 (not c!144975)) b!895196))

(assert (= (and b!895197 res!406910) b!895201))

(assert (= (and b!895196 (not res!406913)) b!895195))

(assert (= (and b!895195 res!406914) b!895200))

(assert (= (or b!895201 b!895200) bm!53150))

(assert (= (or b!895197 b!895195) bm!53152))

(assert (= (or b!895202 bm!53152) bm!53151))

(declare-fun m!1135699 () Bool)

(assert (=> bm!53150 m!1135699))

(declare-fun m!1135701 () Bool)

(assert (=> bm!53151 m!1135701))

(declare-fun m!1135703 () Bool)

(assert (=> b!895199 m!1135703))

(assert (=> start!80596 d!277719))

(declare-fun b!895204 () Bool)

(declare-fun e!586104 () Bool)

(declare-fun e!586103 () Bool)

(assert (=> b!895204 (= e!586104 e!586103)))

(declare-fun res!406919 () Bool)

(assert (=> b!895204 (=> (not res!406919) (not e!586103))))

(declare-fun call!53160 () Bool)

(assert (=> b!895204 (= res!406919 call!53160)))

(declare-fun b!895205 () Bool)

(declare-fun res!406918 () Bool)

(assert (=> b!895205 (=> res!406918 e!586104)))

(assert (=> b!895205 (= res!406918 (not (is-Concat!4167 (removeUselessConcat!63 r!15766))))))

(declare-fun e!586107 () Bool)

(assert (=> b!895205 (= e!586107 e!586104)))

(declare-fun b!895206 () Bool)

(declare-fun res!406915 () Bool)

(declare-fun e!586101 () Bool)

(assert (=> b!895206 (=> (not res!406915) (not e!586101))))

(assert (=> b!895206 (= res!406915 call!53160)))

(assert (=> b!895206 (= e!586107 e!586101)))

(declare-fun bm!53153 () Bool)

(declare-fun call!53159 () Bool)

(declare-fun c!144977 () Bool)

(assert (=> bm!53153 (= call!53159 (validRegex!803 (ite c!144977 (regTwo!5181 (removeUselessConcat!63 r!15766)) (regTwo!5180 (removeUselessConcat!63 r!15766)))))))

(declare-fun b!895207 () Bool)

(declare-fun e!586102 () Bool)

(assert (=> b!895207 (= e!586102 e!586107)))

(assert (=> b!895207 (= c!144977 (is-Union!2334 (removeUselessConcat!63 r!15766)))))

(declare-fun call!53158 () Bool)

(declare-fun bm!53154 () Bool)

(declare-fun c!144976 () Bool)

(assert (=> bm!53154 (= call!53158 (validRegex!803 (ite c!144976 (reg!2663 (removeUselessConcat!63 r!15766)) (ite c!144977 (regOne!5181 (removeUselessConcat!63 r!15766)) (regOne!5180 (removeUselessConcat!63 r!15766))))))))

(declare-fun b!895208 () Bool)

(declare-fun e!586106 () Bool)

(assert (=> b!895208 (= e!586102 e!586106)))

(declare-fun res!406916 () Bool)

(assert (=> b!895208 (= res!406916 (not (nullable!614 (reg!2663 (removeUselessConcat!63 r!15766)))))))

(assert (=> b!895208 (=> (not res!406916) (not e!586106))))

(declare-fun b!895209 () Bool)

(assert (=> b!895209 (= e!586103 call!53159)))

(declare-fun d!277721 () Bool)

(declare-fun res!406917 () Bool)

(declare-fun e!586105 () Bool)

(assert (=> d!277721 (=> res!406917 e!586105)))

(assert (=> d!277721 (= res!406917 (is-ElementMatch!2334 (removeUselessConcat!63 r!15766)))))

(assert (=> d!277721 (= (validRegex!803 (removeUselessConcat!63 r!15766)) e!586105)))

(declare-fun b!895210 () Bool)

(assert (=> b!895210 (= e!586101 call!53159)))

(declare-fun b!895211 () Bool)

(assert (=> b!895211 (= e!586106 call!53158)))

(declare-fun b!895212 () Bool)

(assert (=> b!895212 (= e!586105 e!586102)))

(assert (=> b!895212 (= c!144976 (is-Star!2334 (removeUselessConcat!63 r!15766)))))

(declare-fun bm!53155 () Bool)

(assert (=> bm!53155 (= call!53160 call!53158)))

(assert (= (and d!277721 (not res!406917)) b!895212))

(assert (= (and b!895212 c!144976) b!895208))

(assert (= (and b!895212 (not c!144976)) b!895207))

(assert (= (and b!895208 res!406916) b!895211))

(assert (= (and b!895207 c!144977) b!895206))

(assert (= (and b!895207 (not c!144977)) b!895205))

(assert (= (and b!895206 res!406915) b!895210))

(assert (= (and b!895205 (not res!406918)) b!895204))

(assert (= (and b!895204 res!406919) b!895209))

(assert (= (or b!895210 b!895209) bm!53153))

(assert (= (or b!895206 b!895204) bm!53155))

(assert (= (or b!895211 bm!53155) bm!53154))

(declare-fun m!1135705 () Bool)

(assert (=> bm!53153 m!1135705))

(declare-fun m!1135707 () Bool)

(assert (=> bm!53154 m!1135707))

(declare-fun m!1135709 () Bool)

(assert (=> b!895208 m!1135709))

(assert (=> b!894928 d!277721))

(declare-fun b!895249 () Bool)

(declare-fun c!144991 () Bool)

(assert (=> b!895249 (= c!144991 (is-Concat!4167 r!15766))))

(declare-fun e!586129 () Regex!2334)

(declare-fun e!586131 () Regex!2334)

(assert (=> b!895249 (= e!586129 e!586131)))

(declare-fun b!895250 () Bool)

(declare-fun e!586128 () Regex!2334)

(declare-fun call!53174 () Regex!2334)

(declare-fun call!53176 () Regex!2334)

(assert (=> b!895250 (= e!586128 (Union!2334 call!53174 call!53176))))

(declare-fun b!895251 () Bool)

(declare-fun e!586130 () Regex!2334)

(declare-fun call!53172 () Regex!2334)

(assert (=> b!895251 (= e!586130 call!53172)))

(declare-fun b!895252 () Bool)

(declare-fun call!53175 () Regex!2334)

(assert (=> b!895252 (= e!586129 call!53175)))

(declare-fun b!895253 () Bool)

(assert (=> b!895253 (= e!586131 e!586128)))

(declare-fun c!144995 () Bool)

(assert (=> b!895253 (= c!144995 (is-Union!2334 r!15766))))

(declare-fun bm!53167 () Bool)

(declare-fun c!144993 () Bool)

(assert (=> bm!53167 (= call!53172 (removeUselessConcat!63 (ite (or c!144993 c!144991) (regTwo!5180 r!15766) (ite c!144995 (regTwo!5181 r!15766) (reg!2663 r!15766)))))))

(declare-fun b!895254 () Bool)

(declare-fun e!586127 () Regex!2334)

(assert (=> b!895254 (= e!586127 (Star!2334 call!53176))))

(declare-fun bm!53168 () Bool)

(declare-fun call!53173 () Regex!2334)

(assert (=> bm!53168 (= call!53176 call!53173)))

(declare-fun b!895255 () Bool)

(declare-fun e!586132 () Bool)

(declare-fun lt!333264 () Regex!2334)

(assert (=> b!895255 (= e!586132 (= (nullable!614 lt!333264) (nullable!614 r!15766)))))

(declare-fun bm!53169 () Bool)

(assert (=> bm!53169 (= call!53174 call!53175)))

(declare-fun b!895256 () Bool)

(assert (=> b!895256 (= e!586130 e!586129)))

(declare-fun c!144992 () Bool)

(assert (=> b!895256 (= c!144992 (and (is-Concat!4167 r!15766) (is-EmptyExpr!2334 (regTwo!5180 r!15766))))))

(declare-fun b!895257 () Bool)

(assert (=> b!895257 (= e!586131 (Concat!4167 call!53174 call!53173))))

(declare-fun bm!53170 () Bool)

(assert (=> bm!53170 (= call!53175 (removeUselessConcat!63 (ite (or c!144992 c!144991) (regOne!5180 r!15766) (regOne!5181 r!15766))))))

(declare-fun b!895258 () Bool)

(declare-fun c!144994 () Bool)

(assert (=> b!895258 (= c!144994 (is-Star!2334 r!15766))))

(assert (=> b!895258 (= e!586128 e!586127)))

(declare-fun d!277723 () Bool)

(assert (=> d!277723 e!586132))

(declare-fun res!406930 () Bool)

(assert (=> d!277723 (=> (not res!406930) (not e!586132))))

(assert (=> d!277723 (= res!406930 (validRegex!803 lt!333264))))

(assert (=> d!277723 (= lt!333264 e!586130)))

(assert (=> d!277723 (= c!144993 (and (is-Concat!4167 r!15766) (is-EmptyExpr!2334 (regOne!5180 r!15766))))))

(assert (=> d!277723 (validRegex!803 r!15766)))

(assert (=> d!277723 (= (removeUselessConcat!63 r!15766) lt!333264)))

(declare-fun bm!53171 () Bool)

(assert (=> bm!53171 (= call!53173 call!53172)))

(declare-fun b!895259 () Bool)

(assert (=> b!895259 (= e!586127 r!15766)))

(assert (= (and d!277723 c!144993) b!895251))

(assert (= (and d!277723 (not c!144993)) b!895256))

(assert (= (and b!895256 c!144992) b!895252))

(assert (= (and b!895256 (not c!144992)) b!895249))

(assert (= (and b!895249 c!144991) b!895257))

(assert (= (and b!895249 (not c!144991)) b!895253))

(assert (= (and b!895253 c!144995) b!895250))

(assert (= (and b!895253 (not c!144995)) b!895258))

(assert (= (and b!895258 c!144994) b!895254))

(assert (= (and b!895258 (not c!144994)) b!895259))

(assert (= (or b!895250 b!895254) bm!53168))

(assert (= (or b!895257 bm!53168) bm!53171))

(assert (= (or b!895257 b!895250) bm!53169))

(assert (= (or b!895252 bm!53169) bm!53170))

(assert (= (or b!895251 bm!53171) bm!53167))

(assert (= (and d!277723 res!406930) b!895255))

(declare-fun m!1135723 () Bool)

(assert (=> bm!53167 m!1135723))

(declare-fun m!1135725 () Bool)

(assert (=> b!895255 m!1135725))

(assert (=> b!895255 m!1135685))

(declare-fun m!1135727 () Bool)

(assert (=> bm!53170 m!1135727))

(declare-fun m!1135729 () Bool)

(assert (=> d!277723 m!1135729))

(assert (=> d!277723 m!1135599))

(assert (=> b!894928 d!277723))

(declare-fun b!895264 () Bool)

(declare-fun e!586135 () Bool)

(declare-fun tp!281383 () Bool)

(assert (=> b!895264 (= e!586135 (and tp_is_empty!4311 tp!281383))))

(assert (=> b!894932 (= tp!281359 e!586135)))

(assert (= (and b!894932 (is-Cons!9548 (t!100610 s!10566))) b!895264))

(declare-fun b!895278 () Bool)

(declare-fun e!586138 () Bool)

(declare-fun tp!281394 () Bool)

(declare-fun tp!281395 () Bool)

(assert (=> b!895278 (= e!586138 (and tp!281394 tp!281395))))

(declare-fun b!895277 () Bool)

(declare-fun tp!281396 () Bool)

(assert (=> b!895277 (= e!586138 tp!281396)))

(declare-fun b!895275 () Bool)

(assert (=> b!895275 (= e!586138 tp_is_empty!4311)))

(assert (=> b!894927 (= tp!281360 e!586138)))

(declare-fun b!895276 () Bool)

(declare-fun tp!281398 () Bool)

(declare-fun tp!281397 () Bool)

(assert (=> b!895276 (= e!586138 (and tp!281398 tp!281397))))

(assert (= (and b!894927 (is-ElementMatch!2334 (regOne!5180 r!15766))) b!895275))

(assert (= (and b!894927 (is-Concat!4167 (regOne!5180 r!15766))) b!895276))

(assert (= (and b!894927 (is-Star!2334 (regOne!5180 r!15766))) b!895277))

(assert (= (and b!894927 (is-Union!2334 (regOne!5180 r!15766))) b!895278))

(declare-fun b!895282 () Bool)

(declare-fun e!586139 () Bool)

(declare-fun tp!281399 () Bool)

(declare-fun tp!281400 () Bool)

(assert (=> b!895282 (= e!586139 (and tp!281399 tp!281400))))

(declare-fun b!895281 () Bool)

(declare-fun tp!281401 () Bool)

(assert (=> b!895281 (= e!586139 tp!281401)))

(declare-fun b!895279 () Bool)

(assert (=> b!895279 (= e!586139 tp_is_empty!4311)))

(assert (=> b!894927 (= tp!281357 e!586139)))

(declare-fun b!895280 () Bool)

(declare-fun tp!281403 () Bool)

(declare-fun tp!281402 () Bool)

(assert (=> b!895280 (= e!586139 (and tp!281403 tp!281402))))

(assert (= (and b!894927 (is-ElementMatch!2334 (regTwo!5180 r!15766))) b!895279))

(assert (= (and b!894927 (is-Concat!4167 (regTwo!5180 r!15766))) b!895280))

(assert (= (and b!894927 (is-Star!2334 (regTwo!5180 r!15766))) b!895281))

(assert (= (and b!894927 (is-Union!2334 (regTwo!5180 r!15766))) b!895282))

(declare-fun b!895286 () Bool)

(declare-fun e!586140 () Bool)

(declare-fun tp!281404 () Bool)

(declare-fun tp!281405 () Bool)

(assert (=> b!895286 (= e!586140 (and tp!281404 tp!281405))))

(declare-fun b!895285 () Bool)

(declare-fun tp!281406 () Bool)

(assert (=> b!895285 (= e!586140 tp!281406)))

(declare-fun b!895283 () Bool)

(assert (=> b!895283 (= e!586140 tp_is_empty!4311)))

(assert (=> b!894930 (= tp!281361 e!586140)))

(declare-fun b!895284 () Bool)

(declare-fun tp!281408 () Bool)

(declare-fun tp!281407 () Bool)

(assert (=> b!895284 (= e!586140 (and tp!281408 tp!281407))))

(assert (= (and b!894930 (is-ElementMatch!2334 (reg!2663 r!15766))) b!895283))

(assert (= (and b!894930 (is-Concat!4167 (reg!2663 r!15766))) b!895284))

(assert (= (and b!894930 (is-Star!2334 (reg!2663 r!15766))) b!895285))

(assert (= (and b!894930 (is-Union!2334 (reg!2663 r!15766))) b!895286))

(declare-fun b!895290 () Bool)

(declare-fun e!586141 () Bool)

(declare-fun tp!281409 () Bool)

(declare-fun tp!281410 () Bool)

(assert (=> b!895290 (= e!586141 (and tp!281409 tp!281410))))

(declare-fun b!895289 () Bool)

(declare-fun tp!281411 () Bool)

(assert (=> b!895289 (= e!586141 tp!281411)))

(declare-fun b!895287 () Bool)

(assert (=> b!895287 (= e!586141 tp_is_empty!4311)))

(assert (=> b!894929 (= tp!281362 e!586141)))

(declare-fun b!895288 () Bool)

(declare-fun tp!281413 () Bool)

(declare-fun tp!281412 () Bool)

(assert (=> b!895288 (= e!586141 (and tp!281413 tp!281412))))

(assert (= (and b!894929 (is-ElementMatch!2334 (regOne!5181 r!15766))) b!895287))

(assert (= (and b!894929 (is-Concat!4167 (regOne!5181 r!15766))) b!895288))

(assert (= (and b!894929 (is-Star!2334 (regOne!5181 r!15766))) b!895289))

(assert (= (and b!894929 (is-Union!2334 (regOne!5181 r!15766))) b!895290))

(declare-fun b!895294 () Bool)

(declare-fun e!586142 () Bool)

(declare-fun tp!281414 () Bool)

(declare-fun tp!281415 () Bool)

(assert (=> b!895294 (= e!586142 (and tp!281414 tp!281415))))

(declare-fun b!895293 () Bool)

(declare-fun tp!281416 () Bool)

(assert (=> b!895293 (= e!586142 tp!281416)))

(declare-fun b!895291 () Bool)

(assert (=> b!895291 (= e!586142 tp_is_empty!4311)))

(assert (=> b!894929 (= tp!281358 e!586142)))

(declare-fun b!895292 () Bool)

(declare-fun tp!281418 () Bool)

(declare-fun tp!281417 () Bool)

(assert (=> b!895292 (= e!586142 (and tp!281418 tp!281417))))

(assert (= (and b!894929 (is-ElementMatch!2334 (regTwo!5181 r!15766))) b!895291))

(assert (= (and b!894929 (is-Concat!4167 (regTwo!5181 r!15766))) b!895292))

(assert (= (and b!894929 (is-Star!2334 (regTwo!5181 r!15766))) b!895293))

(assert (= (and b!894929 (is-Union!2334 (regTwo!5181 r!15766))) b!895294))

(push 1)

(assert (not bm!53151))

(assert (not bm!53138))

(assert (not b!895289))

(assert (not b!895104))

(assert (not d!277715))

(assert (not b!895172))

(assert (not d!277707))

(assert (not b!895208))

(assert (not b!895037))

(assert (not d!277703))

(assert (not b!895292))

(assert (not b!895159))

(assert (not b!895041))

(assert (not b!895043))

(assert (not b!895160))

(assert (not b!895282))

(assert (not b!895281))

(assert (not b!895170))

(assert (not b!895264))

(assert (not bm!53141))

(assert (not bm!53170))

(assert (not d!277697))

(assert (not d!277723))

(assert (not b!895162))

(assert (not b!895294))

(assert (not b!895099))

(assert (not bm!53137))

(assert (not b!895164))

(assert (not b!895290))

(assert (not bm!53150))

(assert (not d!277717))

(assert (not b!895277))

(assert (not b!895255))

(assert (not bm!53154))

(assert (not b!895285))

(assert (not b!895042))

(assert (not d!277709))

(assert (not d!277705))

(assert tp_is_empty!4311)

(assert (not bm!53167))

(assert (not b!895044))

(assert (not d!277701))

(assert (not b!895293))

(assert (not bm!53153))

(assert (not b!895036))

(assert (not b!895288))

(assert (not b!895286))

(assert (not b!895276))

(assert (not b!895199))

(assert (not b!895280))

(assert (not b!895284))

(assert (not b!895278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

