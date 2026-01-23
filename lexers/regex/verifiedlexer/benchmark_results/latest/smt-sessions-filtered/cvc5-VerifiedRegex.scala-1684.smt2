; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84908 () Bool)

(assert start!84908)

(declare-fun b!952921 () Bool)

(assert (=> b!952921 true))

(assert (=> b!952921 true))

(declare-fun lambda!32822 () Int)

(declare-fun lambda!32821 () Int)

(assert (=> b!952921 (not (= lambda!32822 lambda!32821))))

(assert (=> b!952921 true))

(assert (=> b!952921 true))

(declare-fun b!952914 () Bool)

(declare-fun e!616577 () Bool)

(declare-datatypes ((C!5822 0))(
  ( (C!5823 (val!3159 Int)) )
))
(declare-datatypes ((Regex!2626 0))(
  ( (ElementMatch!2626 (c!155165 C!5822)) (Concat!4459 (regOne!5764 Regex!2626) (regTwo!5764 Regex!2626)) (EmptyExpr!2626) (Star!2626 (reg!2955 Regex!2626)) (EmptyLang!2626) (Union!2626 (regOne!5765 Regex!2626) (regTwo!5765 Regex!2626)) )
))
(declare-fun r!15766 () Regex!2626)

(declare-datatypes ((List!9856 0))(
  ( (Nil!9840) (Cons!9840 (h!15241 C!5822) (t!100902 List!9856)) )
))
(declare-datatypes ((tuple2!11146 0))(
  ( (tuple2!11147 (_1!6399 List!9856) (_2!6399 List!9856)) )
))
(declare-fun lt!344851 () tuple2!11146)

(declare-fun matchR!1164 (Regex!2626 List!9856) Bool)

(assert (=> b!952914 (= e!616577 (matchR!1164 (regTwo!5764 r!15766) (_2!6399 lt!344851)))))

(declare-fun b!952915 () Bool)

(declare-fun e!616579 () Bool)

(assert (=> b!952915 (= e!616579 e!616577)))

(declare-fun res!433003 () Bool)

(assert (=> b!952915 (=> res!433003 e!616577)))

(assert (=> b!952915 (= res!433003 (not (matchR!1164 (regOne!5764 r!15766) (_1!6399 lt!344851))))))

(declare-datatypes ((Option!2215 0))(
  ( (None!2214) (Some!2214 (v!19631 tuple2!11146)) )
))
(declare-fun lt!344849 () Option!2215)

(declare-fun get!3317 (Option!2215) tuple2!11146)

(assert (=> b!952915 (= lt!344851 (get!3317 lt!344849))))

(declare-fun res!433006 () Bool)

(declare-fun e!616581 () Bool)

(assert (=> start!84908 (=> (not res!433006) (not e!616581))))

(declare-fun validRegex!1095 (Regex!2626) Bool)

(assert (=> start!84908 (= res!433006 (validRegex!1095 r!15766))))

(assert (=> start!84908 e!616581))

(declare-fun e!616580 () Bool)

(assert (=> start!84908 e!616580))

(declare-fun e!616578 () Bool)

(assert (=> start!84908 e!616578))

(declare-fun b!952916 () Bool)

(declare-fun tp!293653 () Bool)

(declare-fun tp!293656 () Bool)

(assert (=> b!952916 (= e!616580 (and tp!293653 tp!293656))))

(declare-fun b!952917 () Bool)

(declare-fun tp_is_empty!4895 () Bool)

(declare-fun tp!293658 () Bool)

(assert (=> b!952917 (= e!616578 (and tp_is_empty!4895 tp!293658))))

(declare-fun b!952918 () Bool)

(assert (=> b!952918 (= e!616580 tp_is_empty!4895)))

(declare-fun b!952919 () Bool)

(declare-fun tp!293657 () Bool)

(declare-fun tp!293655 () Bool)

(assert (=> b!952919 (= e!616580 (and tp!293657 tp!293655))))

(declare-fun b!952920 () Bool)

(declare-fun e!616576 () Bool)

(assert (=> b!952920 (= e!616581 (not e!616576))))

(declare-fun res!433004 () Bool)

(assert (=> b!952920 (=> res!433004 e!616576)))

(declare-fun lt!344852 () Bool)

(assert (=> b!952920 (= res!433004 (or (not lt!344852) (and (is-Concat!4459 r!15766) (is-EmptyExpr!2626 (regOne!5764 r!15766))) (and (is-Concat!4459 r!15766) (is-EmptyExpr!2626 (regTwo!5764 r!15766))) (not (is-Concat!4459 r!15766))))))

(declare-fun s!10566 () List!9856)

(declare-fun matchRSpec!427 (Regex!2626 List!9856) Bool)

(assert (=> b!952920 (= lt!344852 (matchRSpec!427 r!15766 s!10566))))

(assert (=> b!952920 (= lt!344852 (matchR!1164 r!15766 s!10566))))

(declare-datatypes ((Unit!14895 0))(
  ( (Unit!14896) )
))
(declare-fun lt!344848 () Unit!14895)

(declare-fun mainMatchTheorem!427 (Regex!2626 List!9856) Unit!14895)

(assert (=> b!952920 (= lt!344848 (mainMatchTheorem!427 r!15766 s!10566))))

(assert (=> b!952921 (= e!616576 e!616579)))

(declare-fun res!433005 () Bool)

(assert (=> b!952921 (=> res!433005 e!616579)))

(declare-fun isEmpty!6115 (List!9856) Bool)

(assert (=> b!952921 (= res!433005 (isEmpty!6115 s!10566))))

(declare-fun Exists!377 (Int) Bool)

(assert (=> b!952921 (= (Exists!377 lambda!32821) (Exists!377 lambda!32822))))

(declare-fun lt!344850 () Unit!14895)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!197 (Regex!2626 Regex!2626 List!9856) Unit!14895)

(assert (=> b!952921 (= lt!344850 (lemmaExistCutMatchRandMatchRSpecEquivalent!197 (regOne!5764 r!15766) (regTwo!5764 r!15766) s!10566))))

(declare-fun isDefined!1857 (Option!2215) Bool)

(assert (=> b!952921 (= (isDefined!1857 lt!344849) (Exists!377 lambda!32821))))

(declare-fun findConcatSeparation!321 (Regex!2626 Regex!2626 List!9856 List!9856 List!9856) Option!2215)

(assert (=> b!952921 (= lt!344849 (findConcatSeparation!321 (regOne!5764 r!15766) (regTwo!5764 r!15766) Nil!9840 s!10566 s!10566))))

(declare-fun lt!344853 () Unit!14895)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!321 (Regex!2626 Regex!2626 List!9856) Unit!14895)

(assert (=> b!952921 (= lt!344853 (lemmaFindConcatSeparationEquivalentToExists!321 (regOne!5764 r!15766) (regTwo!5764 r!15766) s!10566))))

(declare-fun b!952922 () Bool)

(declare-fun tp!293654 () Bool)

(assert (=> b!952922 (= e!616580 tp!293654)))

(assert (= (and start!84908 res!433006) b!952920))

(assert (= (and b!952920 (not res!433004)) b!952921))

(assert (= (and b!952921 (not res!433005)) b!952915))

(assert (= (and b!952915 (not res!433003)) b!952914))

(assert (= (and start!84908 (is-ElementMatch!2626 r!15766)) b!952918))

(assert (= (and start!84908 (is-Concat!4459 r!15766)) b!952919))

(assert (= (and start!84908 (is-Star!2626 r!15766)) b!952922))

(assert (= (and start!84908 (is-Union!2626 r!15766)) b!952916))

(assert (= (and start!84908 (is-Cons!9840 s!10566)) b!952917))

(declare-fun m!1164805 () Bool)

(assert (=> b!952920 m!1164805))

(declare-fun m!1164807 () Bool)

(assert (=> b!952920 m!1164807))

(declare-fun m!1164809 () Bool)

(assert (=> b!952920 m!1164809))

(declare-fun m!1164811 () Bool)

(assert (=> start!84908 m!1164811))

(declare-fun m!1164813 () Bool)

(assert (=> b!952915 m!1164813))

(declare-fun m!1164815 () Bool)

(assert (=> b!952915 m!1164815))

(declare-fun m!1164817 () Bool)

(assert (=> b!952914 m!1164817))

(declare-fun m!1164819 () Bool)

(assert (=> b!952921 m!1164819))

(declare-fun m!1164821 () Bool)

(assert (=> b!952921 m!1164821))

(declare-fun m!1164823 () Bool)

(assert (=> b!952921 m!1164823))

(declare-fun m!1164825 () Bool)

(assert (=> b!952921 m!1164825))

(assert (=> b!952921 m!1164821))

(declare-fun m!1164827 () Bool)

(assert (=> b!952921 m!1164827))

(declare-fun m!1164829 () Bool)

(assert (=> b!952921 m!1164829))

(declare-fun m!1164831 () Bool)

(assert (=> b!952921 m!1164831))

(push 1)

(assert (not b!952920))

(assert (not b!952921))

(assert (not b!952916))

(assert (not b!952914))

(assert (not b!952922))

(assert tp_is_empty!4895)

(assert (not b!952919))

(assert (not b!952917))

(assert (not b!952915))

(assert (not start!84908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!952998 () Bool)

(declare-fun e!616620 () Bool)

(declare-fun e!616624 () Bool)

(assert (=> b!952998 (= e!616620 e!616624)))

(declare-fun res!433047 () Bool)

(assert (=> b!952998 (=> res!433047 e!616624)))

(declare-fun call!59822 () Bool)

(assert (=> b!952998 (= res!433047 call!59822)))

(declare-fun b!952999 () Bool)

(declare-fun head!1743 (List!9856) C!5822)

(assert (=> b!952999 (= e!616624 (not (= (head!1743 (_2!6399 lt!344851)) (c!155165 (regTwo!5764 r!15766)))))))

(declare-fun b!953000 () Bool)

(declare-fun res!433053 () Bool)

(declare-fun e!616622 () Bool)

(assert (=> b!953000 (=> res!433053 e!616622)))

(assert (=> b!953000 (= res!433053 (not (is-ElementMatch!2626 (regTwo!5764 r!15766))))))

(declare-fun e!616625 () Bool)

(assert (=> b!953000 (= e!616625 e!616622)))

(declare-fun b!953001 () Bool)

(declare-fun res!433051 () Bool)

(declare-fun e!616621 () Bool)

(assert (=> b!953001 (=> (not res!433051) (not e!616621))))

(assert (=> b!953001 (= res!433051 (not call!59822))))

(declare-fun b!953002 () Bool)

(declare-fun e!616623 () Bool)

(declare-fun lt!344874 () Bool)

(assert (=> b!953002 (= e!616623 (= lt!344874 call!59822))))

(declare-fun b!953003 () Bool)

(assert (=> b!953003 (= e!616623 e!616625)))

(declare-fun c!155173 () Bool)

(assert (=> b!953003 (= c!155173 (is-EmptyLang!2626 (regTwo!5764 r!15766)))))

(declare-fun bm!59817 () Bool)

(assert (=> bm!59817 (= call!59822 (isEmpty!6115 (_2!6399 lt!344851)))))

(declare-fun d!284113 () Bool)

(assert (=> d!284113 e!616623))

(declare-fun c!155174 () Bool)

(assert (=> d!284113 (= c!155174 (is-EmptyExpr!2626 (regTwo!5764 r!15766)))))

(declare-fun e!616626 () Bool)

(assert (=> d!284113 (= lt!344874 e!616626)))

(declare-fun c!155175 () Bool)

(assert (=> d!284113 (= c!155175 (isEmpty!6115 (_2!6399 lt!344851)))))

(assert (=> d!284113 (validRegex!1095 (regTwo!5764 r!15766))))

(assert (=> d!284113 (= (matchR!1164 (regTwo!5764 r!15766) (_2!6399 lt!344851)) lt!344874)))

(declare-fun b!953004 () Bool)

(declare-fun nullable!781 (Regex!2626) Bool)

(assert (=> b!953004 (= e!616626 (nullable!781 (regTwo!5764 r!15766)))))

(declare-fun b!953005 () Bool)

(declare-fun res!433054 () Bool)

(assert (=> b!953005 (=> res!433054 e!616624)))

(declare-fun tail!1305 (List!9856) List!9856)

(assert (=> b!953005 (= res!433054 (not (isEmpty!6115 (tail!1305 (_2!6399 lt!344851)))))))

(declare-fun b!953006 () Bool)

(assert (=> b!953006 (= e!616625 (not lt!344874))))

(declare-fun b!953007 () Bool)

(declare-fun derivativeStep!590 (Regex!2626 C!5822) Regex!2626)

(assert (=> b!953007 (= e!616626 (matchR!1164 (derivativeStep!590 (regTwo!5764 r!15766) (head!1743 (_2!6399 lt!344851))) (tail!1305 (_2!6399 lt!344851))))))

(declare-fun b!953008 () Bool)

(declare-fun res!433049 () Bool)

(assert (=> b!953008 (=> (not res!433049) (not e!616621))))

(assert (=> b!953008 (= res!433049 (isEmpty!6115 (tail!1305 (_2!6399 lt!344851))))))

(declare-fun b!953009 () Bool)

(declare-fun res!433048 () Bool)

(assert (=> b!953009 (=> res!433048 e!616622)))

(assert (=> b!953009 (= res!433048 e!616621)))

(declare-fun res!433052 () Bool)

(assert (=> b!953009 (=> (not res!433052) (not e!616621))))

(assert (=> b!953009 (= res!433052 lt!344874)))

(declare-fun b!953010 () Bool)

(assert (=> b!953010 (= e!616621 (= (head!1743 (_2!6399 lt!344851)) (c!155165 (regTwo!5764 r!15766))))))

(declare-fun b!953011 () Bool)

(assert (=> b!953011 (= e!616622 e!616620)))

(declare-fun res!433050 () Bool)

(assert (=> b!953011 (=> (not res!433050) (not e!616620))))

(assert (=> b!953011 (= res!433050 (not lt!344874))))

(assert (= (and d!284113 c!155175) b!953004))

(assert (= (and d!284113 (not c!155175)) b!953007))

(assert (= (and d!284113 c!155174) b!953002))

(assert (= (and d!284113 (not c!155174)) b!953003))

(assert (= (and b!953003 c!155173) b!953006))

(assert (= (and b!953003 (not c!155173)) b!953000))

(assert (= (and b!953000 (not res!433053)) b!953009))

(assert (= (and b!953009 res!433052) b!953001))

(assert (= (and b!953001 res!433051) b!953008))

(assert (= (and b!953008 res!433049) b!953010))

(assert (= (and b!953009 (not res!433048)) b!953011))

(assert (= (and b!953011 res!433050) b!952998))

(assert (= (and b!952998 (not res!433047)) b!953005))

(assert (= (and b!953005 (not res!433054)) b!952999))

(assert (= (or b!953002 b!952998 b!953001) bm!59817))

(declare-fun m!1164861 () Bool)

(assert (=> b!953005 m!1164861))

(assert (=> b!953005 m!1164861))

(declare-fun m!1164863 () Bool)

(assert (=> b!953005 m!1164863))

(declare-fun m!1164865 () Bool)

(assert (=> d!284113 m!1164865))

(declare-fun m!1164867 () Bool)

(assert (=> d!284113 m!1164867))

(declare-fun m!1164869 () Bool)

(assert (=> b!953010 m!1164869))

(declare-fun m!1164871 () Bool)

(assert (=> b!953004 m!1164871))

(assert (=> b!953007 m!1164869))

(assert (=> b!953007 m!1164869))

(declare-fun m!1164873 () Bool)

(assert (=> b!953007 m!1164873))

(assert (=> b!953007 m!1164861))

(assert (=> b!953007 m!1164873))

(assert (=> b!953007 m!1164861))

(declare-fun m!1164875 () Bool)

(assert (=> b!953007 m!1164875))

(assert (=> b!952999 m!1164869))

(assert (=> bm!59817 m!1164865))

(assert (=> b!953008 m!1164861))

(assert (=> b!953008 m!1164861))

(assert (=> b!953008 m!1164863))

(assert (=> b!952914 d!284113))

(declare-fun d!284115 () Bool)

(declare-fun choose!5955 (Int) Bool)

(assert (=> d!284115 (= (Exists!377 lambda!32821) (choose!5955 lambda!32821))))

(declare-fun bs!240246 () Bool)

(assert (= bs!240246 d!284115))

(declare-fun m!1164877 () Bool)

(assert (=> bs!240246 m!1164877))

(assert (=> b!952921 d!284115))

(declare-fun d!284117 () Bool)

(assert (=> d!284117 (= (isEmpty!6115 s!10566) (is-Nil!9840 s!10566))))

(assert (=> b!952921 d!284117))

(declare-fun d!284119 () Bool)

(assert (=> d!284119 (= (Exists!377 lambda!32822) (choose!5955 lambda!32822))))

(declare-fun bs!240247 () Bool)

(assert (= bs!240247 d!284119))

(declare-fun m!1164879 () Bool)

(assert (=> bs!240247 m!1164879))

(assert (=> b!952921 d!284119))

(declare-fun bs!240250 () Bool)

(declare-fun d!284121 () Bool)

(assert (= bs!240250 (and d!284121 b!952921)))

(declare-fun lambda!32833 () Int)

(assert (=> bs!240250 (= lambda!32833 lambda!32821)))

(assert (=> bs!240250 (not (= lambda!32833 lambda!32822))))

(assert (=> d!284121 true))

(assert (=> d!284121 true))

(assert (=> d!284121 true))

(assert (=> d!284121 (= (isDefined!1857 (findConcatSeparation!321 (regOne!5764 r!15766) (regTwo!5764 r!15766) Nil!9840 s!10566 s!10566)) (Exists!377 lambda!32833))))

(declare-fun lt!344877 () Unit!14895)

(declare-fun choose!5956 (Regex!2626 Regex!2626 List!9856) Unit!14895)

(assert (=> d!284121 (= lt!344877 (choose!5956 (regOne!5764 r!15766) (regTwo!5764 r!15766) s!10566))))

(assert (=> d!284121 (validRegex!1095 (regOne!5764 r!15766))))

(assert (=> d!284121 (= (lemmaFindConcatSeparationEquivalentToExists!321 (regOne!5764 r!15766) (regTwo!5764 r!15766) s!10566) lt!344877)))

(declare-fun bs!240251 () Bool)

(assert (= bs!240251 d!284121))

(assert (=> bs!240251 m!1164831))

(declare-fun m!1164885 () Bool)

(assert (=> bs!240251 m!1164885))

(assert (=> bs!240251 m!1164831))

(declare-fun m!1164887 () Bool)

(assert (=> bs!240251 m!1164887))

(declare-fun m!1164889 () Bool)

(assert (=> bs!240251 m!1164889))

(declare-fun m!1164891 () Bool)

(assert (=> bs!240251 m!1164891))

(assert (=> b!952921 d!284121))

(declare-fun bs!240252 () Bool)

(declare-fun d!284131 () Bool)

(assert (= bs!240252 (and d!284131 b!952921)))

(declare-fun lambda!32838 () Int)

(assert (=> bs!240252 (= lambda!32838 lambda!32821)))

(assert (=> bs!240252 (not (= lambda!32838 lambda!32822))))

(declare-fun bs!240253 () Bool)

(assert (= bs!240253 (and d!284131 d!284121)))

(assert (=> bs!240253 (= lambda!32838 lambda!32833)))

(assert (=> d!284131 true))

(assert (=> d!284131 true))

(assert (=> d!284131 true))

(declare-fun lambda!32840 () Int)

(assert (=> bs!240252 (not (= lambda!32840 lambda!32821))))

(assert (=> bs!240252 (= lambda!32840 lambda!32822)))

(assert (=> bs!240253 (not (= lambda!32840 lambda!32833))))

(declare-fun bs!240254 () Bool)

(assert (= bs!240254 d!284131))

(assert (=> bs!240254 (not (= lambda!32840 lambda!32838))))

(assert (=> d!284131 true))

(assert (=> d!284131 true))

(assert (=> d!284131 true))

(assert (=> d!284131 (= (Exists!377 lambda!32838) (Exists!377 lambda!32840))))

(declare-fun lt!344882 () Unit!14895)

(declare-fun choose!5957 (Regex!2626 Regex!2626 List!9856) Unit!14895)

(assert (=> d!284131 (= lt!344882 (choose!5957 (regOne!5764 r!15766) (regTwo!5764 r!15766) s!10566))))

(assert (=> d!284131 (validRegex!1095 (regOne!5764 r!15766))))

(assert (=> d!284131 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!197 (regOne!5764 r!15766) (regTwo!5764 r!15766) s!10566) lt!344882)))

(declare-fun m!1164893 () Bool)

(assert (=> bs!240254 m!1164893))

(declare-fun m!1164895 () Bool)

(assert (=> bs!240254 m!1164895))

(declare-fun m!1164897 () Bool)

(assert (=> bs!240254 m!1164897))

(assert (=> bs!240254 m!1164891))

(assert (=> b!952921 d!284131))

(declare-fun d!284133 () Bool)

(declare-fun isEmpty!6117 (Option!2215) Bool)

(assert (=> d!284133 (= (isDefined!1857 lt!344849) (not (isEmpty!6117 lt!344849)))))

(declare-fun bs!240255 () Bool)

(assert (= bs!240255 d!284133))

(declare-fun m!1164899 () Bool)

(assert (=> bs!240255 m!1164899))

(assert (=> b!952921 d!284133))

(declare-fun b!953046 () Bool)

(declare-fun e!616645 () Option!2215)

(declare-fun e!616647 () Option!2215)

(assert (=> b!953046 (= e!616645 e!616647)))

(declare-fun c!155181 () Bool)

(assert (=> b!953046 (= c!155181 (is-Nil!9840 s!10566))))

(declare-fun b!953047 () Bool)

(declare-fun lt!344890 () Unit!14895)

(declare-fun lt!344892 () Unit!14895)

(assert (=> b!953047 (= lt!344890 lt!344892)))

(declare-fun ++!2636 (List!9856 List!9856) List!9856)

(assert (=> b!953047 (= (++!2636 (++!2636 Nil!9840 (Cons!9840 (h!15241 s!10566) Nil!9840)) (t!100902 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!245 (List!9856 C!5822 List!9856 List!9856) Unit!14895)

(assert (=> b!953047 (= lt!344892 (lemmaMoveElementToOtherListKeepsConcatEq!245 Nil!9840 (h!15241 s!10566) (t!100902 s!10566) s!10566))))

(assert (=> b!953047 (= e!616647 (findConcatSeparation!321 (regOne!5764 r!15766) (regTwo!5764 r!15766) (++!2636 Nil!9840 (Cons!9840 (h!15241 s!10566) Nil!9840)) (t!100902 s!10566) s!10566))))

(declare-fun b!953048 () Bool)

(declare-fun e!616646 () Bool)

(declare-fun lt!344891 () Option!2215)

(assert (=> b!953048 (= e!616646 (= (++!2636 (_1!6399 (get!3317 lt!344891)) (_2!6399 (get!3317 lt!344891))) s!10566))))

(declare-fun d!284135 () Bool)

(declare-fun e!616649 () Bool)

(assert (=> d!284135 e!616649))

(declare-fun res!433085 () Bool)

(assert (=> d!284135 (=> res!433085 e!616649)))

(assert (=> d!284135 (= res!433085 e!616646)))

(declare-fun res!433082 () Bool)

(assert (=> d!284135 (=> (not res!433082) (not e!616646))))

(assert (=> d!284135 (= res!433082 (isDefined!1857 lt!344891))))

(assert (=> d!284135 (= lt!344891 e!616645)))

(declare-fun c!155180 () Bool)

(declare-fun e!616648 () Bool)

(assert (=> d!284135 (= c!155180 e!616648)))

(declare-fun res!433081 () Bool)

(assert (=> d!284135 (=> (not res!433081) (not e!616648))))

(assert (=> d!284135 (= res!433081 (matchR!1164 (regOne!5764 r!15766) Nil!9840))))

(assert (=> d!284135 (validRegex!1095 (regOne!5764 r!15766))))

(assert (=> d!284135 (= (findConcatSeparation!321 (regOne!5764 r!15766) (regTwo!5764 r!15766) Nil!9840 s!10566 s!10566) lt!344891)))

(declare-fun b!953049 () Bool)

(assert (=> b!953049 (= e!616649 (not (isDefined!1857 lt!344891)))))

(declare-fun b!953050 () Bool)

(assert (=> b!953050 (= e!616647 None!2214)))

(declare-fun b!953051 () Bool)

(assert (=> b!953051 (= e!616648 (matchR!1164 (regTwo!5764 r!15766) s!10566))))

(declare-fun b!953052 () Bool)

(declare-fun res!433084 () Bool)

(assert (=> b!953052 (=> (not res!433084) (not e!616646))))

(assert (=> b!953052 (= res!433084 (matchR!1164 (regOne!5764 r!15766) (_1!6399 (get!3317 lt!344891))))))

(declare-fun b!953053 () Bool)

(declare-fun res!433083 () Bool)

(assert (=> b!953053 (=> (not res!433083) (not e!616646))))

(assert (=> b!953053 (= res!433083 (matchR!1164 (regTwo!5764 r!15766) (_2!6399 (get!3317 lt!344891))))))

(declare-fun b!953054 () Bool)

(assert (=> b!953054 (= e!616645 (Some!2214 (tuple2!11147 Nil!9840 s!10566)))))

(assert (= (and d!284135 res!433081) b!953051))

(assert (= (and d!284135 c!155180) b!953054))

(assert (= (and d!284135 (not c!155180)) b!953046))

(assert (= (and b!953046 c!155181) b!953050))

(assert (= (and b!953046 (not c!155181)) b!953047))

(assert (= (and d!284135 res!433082) b!953052))

(assert (= (and b!953052 res!433084) b!953053))

(assert (= (and b!953053 res!433083) b!953048))

(assert (= (and d!284135 (not res!433085)) b!953049))

(declare-fun m!1164909 () Bool)

(assert (=> b!953052 m!1164909))

(declare-fun m!1164911 () Bool)

(assert (=> b!953052 m!1164911))

(declare-fun m!1164913 () Bool)

(assert (=> b!953051 m!1164913))

(assert (=> b!953053 m!1164909))

(declare-fun m!1164915 () Bool)

(assert (=> b!953053 m!1164915))

(declare-fun m!1164917 () Bool)

(assert (=> b!953049 m!1164917))

(assert (=> b!953048 m!1164909))

(declare-fun m!1164919 () Bool)

(assert (=> b!953048 m!1164919))

(assert (=> d!284135 m!1164917))

(declare-fun m!1164921 () Bool)

(assert (=> d!284135 m!1164921))

(assert (=> d!284135 m!1164891))

(declare-fun m!1164923 () Bool)

(assert (=> b!953047 m!1164923))

(assert (=> b!953047 m!1164923))

(declare-fun m!1164925 () Bool)

(assert (=> b!953047 m!1164925))

(declare-fun m!1164927 () Bool)

(assert (=> b!953047 m!1164927))

(assert (=> b!953047 m!1164923))

(declare-fun m!1164929 () Bool)

(assert (=> b!953047 m!1164929))

(assert (=> b!952921 d!284135))

(declare-fun b!953055 () Bool)

(declare-fun e!616650 () Bool)

(declare-fun e!616654 () Bool)

(assert (=> b!953055 (= e!616650 e!616654)))

(declare-fun res!433086 () Bool)

(assert (=> b!953055 (=> res!433086 e!616654)))

(declare-fun call!59823 () Bool)

(assert (=> b!953055 (= res!433086 call!59823)))

(declare-fun b!953056 () Bool)

(assert (=> b!953056 (= e!616654 (not (= (head!1743 (_1!6399 lt!344851)) (c!155165 (regOne!5764 r!15766)))))))

(declare-fun b!953057 () Bool)

(declare-fun res!433092 () Bool)

(declare-fun e!616652 () Bool)

(assert (=> b!953057 (=> res!433092 e!616652)))

(assert (=> b!953057 (= res!433092 (not (is-ElementMatch!2626 (regOne!5764 r!15766))))))

(declare-fun e!616655 () Bool)

(assert (=> b!953057 (= e!616655 e!616652)))

(declare-fun b!953058 () Bool)

(declare-fun res!433090 () Bool)

(declare-fun e!616651 () Bool)

(assert (=> b!953058 (=> (not res!433090) (not e!616651))))

(assert (=> b!953058 (= res!433090 (not call!59823))))

(declare-fun b!953059 () Bool)

(declare-fun e!616653 () Bool)

(declare-fun lt!344893 () Bool)

(assert (=> b!953059 (= e!616653 (= lt!344893 call!59823))))

(declare-fun b!953060 () Bool)

(assert (=> b!953060 (= e!616653 e!616655)))

(declare-fun c!155182 () Bool)

(assert (=> b!953060 (= c!155182 (is-EmptyLang!2626 (regOne!5764 r!15766)))))

(declare-fun bm!59818 () Bool)

(assert (=> bm!59818 (= call!59823 (isEmpty!6115 (_1!6399 lt!344851)))))

(declare-fun d!284139 () Bool)

(assert (=> d!284139 e!616653))

(declare-fun c!155183 () Bool)

(assert (=> d!284139 (= c!155183 (is-EmptyExpr!2626 (regOne!5764 r!15766)))))

(declare-fun e!616656 () Bool)

(assert (=> d!284139 (= lt!344893 e!616656)))

(declare-fun c!155184 () Bool)

(assert (=> d!284139 (= c!155184 (isEmpty!6115 (_1!6399 lt!344851)))))

(assert (=> d!284139 (validRegex!1095 (regOne!5764 r!15766))))

(assert (=> d!284139 (= (matchR!1164 (regOne!5764 r!15766) (_1!6399 lt!344851)) lt!344893)))

(declare-fun b!953061 () Bool)

(assert (=> b!953061 (= e!616656 (nullable!781 (regOne!5764 r!15766)))))

(declare-fun b!953062 () Bool)

(declare-fun res!433093 () Bool)

(assert (=> b!953062 (=> res!433093 e!616654)))

(assert (=> b!953062 (= res!433093 (not (isEmpty!6115 (tail!1305 (_1!6399 lt!344851)))))))

(declare-fun b!953063 () Bool)

(assert (=> b!953063 (= e!616655 (not lt!344893))))

(declare-fun b!953064 () Bool)

(assert (=> b!953064 (= e!616656 (matchR!1164 (derivativeStep!590 (regOne!5764 r!15766) (head!1743 (_1!6399 lt!344851))) (tail!1305 (_1!6399 lt!344851))))))

(declare-fun b!953065 () Bool)

(declare-fun res!433088 () Bool)

(assert (=> b!953065 (=> (not res!433088) (not e!616651))))

(assert (=> b!953065 (= res!433088 (isEmpty!6115 (tail!1305 (_1!6399 lt!344851))))))

(declare-fun b!953066 () Bool)

(declare-fun res!433087 () Bool)

(assert (=> b!953066 (=> res!433087 e!616652)))

(assert (=> b!953066 (= res!433087 e!616651)))

(declare-fun res!433091 () Bool)

(assert (=> b!953066 (=> (not res!433091) (not e!616651))))

(assert (=> b!953066 (= res!433091 lt!344893)))

(declare-fun b!953067 () Bool)

(assert (=> b!953067 (= e!616651 (= (head!1743 (_1!6399 lt!344851)) (c!155165 (regOne!5764 r!15766))))))

(declare-fun b!953068 () Bool)

(assert (=> b!953068 (= e!616652 e!616650)))

(declare-fun res!433089 () Bool)

(assert (=> b!953068 (=> (not res!433089) (not e!616650))))

(assert (=> b!953068 (= res!433089 (not lt!344893))))

(assert (= (and d!284139 c!155184) b!953061))

(assert (= (and d!284139 (not c!155184)) b!953064))

(assert (= (and d!284139 c!155183) b!953059))

(assert (= (and d!284139 (not c!155183)) b!953060))

(assert (= (and b!953060 c!155182) b!953063))

(assert (= (and b!953060 (not c!155182)) b!953057))

(assert (= (and b!953057 (not res!433092)) b!953066))

(assert (= (and b!953066 res!433091) b!953058))

(assert (= (and b!953058 res!433090) b!953065))

(assert (= (and b!953065 res!433088) b!953067))

(assert (= (and b!953066 (not res!433087)) b!953068))

(assert (= (and b!953068 res!433089) b!953055))

(assert (= (and b!953055 (not res!433086)) b!953062))

(assert (= (and b!953062 (not res!433093)) b!953056))

(assert (= (or b!953059 b!953055 b!953058) bm!59818))

(declare-fun m!1164931 () Bool)

(assert (=> b!953062 m!1164931))

(assert (=> b!953062 m!1164931))

(declare-fun m!1164933 () Bool)

(assert (=> b!953062 m!1164933))

(declare-fun m!1164935 () Bool)

(assert (=> d!284139 m!1164935))

(assert (=> d!284139 m!1164891))

(declare-fun m!1164937 () Bool)

(assert (=> b!953067 m!1164937))

(declare-fun m!1164939 () Bool)

(assert (=> b!953061 m!1164939))

(assert (=> b!953064 m!1164937))

(assert (=> b!953064 m!1164937))

(declare-fun m!1164941 () Bool)

(assert (=> b!953064 m!1164941))

(assert (=> b!953064 m!1164931))

(assert (=> b!953064 m!1164941))

(assert (=> b!953064 m!1164931))

(declare-fun m!1164943 () Bool)

(assert (=> b!953064 m!1164943))

(assert (=> b!953056 m!1164937))

(assert (=> bm!59818 m!1164935))

(assert (=> b!953065 m!1164931))

(assert (=> b!953065 m!1164931))

(assert (=> b!953065 m!1164933))

(assert (=> b!952915 d!284139))

(declare-fun d!284141 () Bool)

(assert (=> d!284141 (= (get!3317 lt!344849) (v!19631 lt!344849))))

(assert (=> b!952915 d!284141))

(declare-fun bs!240258 () Bool)

(declare-fun b!953120 () Bool)

(assert (= bs!240258 (and b!953120 d!284131)))

(declare-fun lambda!32847 () Int)

(assert (=> bs!240258 (not (= lambda!32847 lambda!32840))))

(declare-fun bs!240259 () Bool)

(assert (= bs!240259 (and b!953120 d!284121)))

(assert (=> bs!240259 (not (= lambda!32847 lambda!32833))))

(declare-fun bs!240260 () Bool)

(assert (= bs!240260 (and b!953120 b!952921)))

(assert (=> bs!240260 (not (= lambda!32847 lambda!32821))))

(assert (=> bs!240258 (not (= lambda!32847 lambda!32838))))

(assert (=> bs!240260 (not (= lambda!32847 lambda!32822))))

(assert (=> b!953120 true))

(assert (=> b!953120 true))

(declare-fun bs!240261 () Bool)

(declare-fun b!953121 () Bool)

(assert (= bs!240261 (and b!953121 d!284131)))

(declare-fun lambda!32848 () Int)

(assert (=> bs!240261 (= lambda!32848 lambda!32840)))

(declare-fun bs!240262 () Bool)

(assert (= bs!240262 (and b!953121 d!284121)))

(assert (=> bs!240262 (not (= lambda!32848 lambda!32833))))

(declare-fun bs!240263 () Bool)

(assert (= bs!240263 (and b!953121 b!952921)))

(assert (=> bs!240263 (not (= lambda!32848 lambda!32821))))

(declare-fun bs!240264 () Bool)

(assert (= bs!240264 (and b!953121 b!953120)))

(assert (=> bs!240264 (not (= lambda!32848 lambda!32847))))

(assert (=> bs!240261 (not (= lambda!32848 lambda!32838))))

(assert (=> bs!240263 (= lambda!32848 lambda!32822)))

(assert (=> b!953121 true))

(assert (=> b!953121 true))

(declare-fun b!953119 () Bool)

(declare-fun e!616689 () Bool)

(assert (=> b!953119 (= e!616689 (matchRSpec!427 (regTwo!5765 r!15766) s!10566))))

(declare-fun e!616688 () Bool)

(declare-fun call!59828 () Bool)

(assert (=> b!953120 (= e!616688 call!59828)))

(declare-fun d!284143 () Bool)

(declare-fun c!155200 () Bool)

(assert (=> d!284143 (= c!155200 (is-EmptyExpr!2626 r!15766))))

(declare-fun e!616686 () Bool)

(assert (=> d!284143 (= (matchRSpec!427 r!15766 s!10566) e!616686)))

(declare-fun bm!59823 () Bool)

(declare-fun call!59829 () Bool)

(assert (=> bm!59823 (= call!59829 (isEmpty!6115 s!10566))))

(declare-fun e!616690 () Bool)

(assert (=> b!953121 (= e!616690 call!59828)))

(declare-fun b!953122 () Bool)

(declare-fun e!616687 () Bool)

(assert (=> b!953122 (= e!616687 (= s!10566 (Cons!9840 (c!155165 r!15766) Nil!9840)))))

(declare-fun b!953123 () Bool)

(declare-fun e!616685 () Bool)

(assert (=> b!953123 (= e!616685 e!616689)))

(declare-fun res!433120 () Bool)

(assert (=> b!953123 (= res!433120 (matchRSpec!427 (regOne!5765 r!15766) s!10566))))

(assert (=> b!953123 (=> res!433120 e!616689)))

(declare-fun c!155199 () Bool)

(declare-fun bm!59824 () Bool)

(assert (=> bm!59824 (= call!59828 (Exists!377 (ite c!155199 lambda!32847 lambda!32848)))))

(declare-fun b!953124 () Bool)

(declare-fun res!433122 () Bool)

(assert (=> b!953124 (=> res!433122 e!616688)))

(assert (=> b!953124 (= res!433122 call!59829)))

(assert (=> b!953124 (= e!616690 e!616688)))

(declare-fun b!953125 () Bool)

(declare-fun c!155197 () Bool)

(assert (=> b!953125 (= c!155197 (is-Union!2626 r!15766))))

(assert (=> b!953125 (= e!616687 e!616685)))

(declare-fun b!953126 () Bool)

(declare-fun e!616691 () Bool)

(assert (=> b!953126 (= e!616686 e!616691)))

(declare-fun res!433121 () Bool)

(assert (=> b!953126 (= res!433121 (not (is-EmptyLang!2626 r!15766)))))

(assert (=> b!953126 (=> (not res!433121) (not e!616691))))

(declare-fun b!953127 () Bool)

(assert (=> b!953127 (= e!616685 e!616690)))

(assert (=> b!953127 (= c!155199 (is-Star!2626 r!15766))))

(declare-fun b!953128 () Bool)

(assert (=> b!953128 (= e!616686 call!59829)))

(declare-fun b!953129 () Bool)

(declare-fun c!155198 () Bool)

(assert (=> b!953129 (= c!155198 (is-ElementMatch!2626 r!15766))))

(assert (=> b!953129 (= e!616691 e!616687)))

(assert (= (and d!284143 c!155200) b!953128))

(assert (= (and d!284143 (not c!155200)) b!953126))

(assert (= (and b!953126 res!433121) b!953129))

(assert (= (and b!953129 c!155198) b!953122))

(assert (= (and b!953129 (not c!155198)) b!953125))

(assert (= (and b!953125 c!155197) b!953123))

(assert (= (and b!953125 (not c!155197)) b!953127))

(assert (= (and b!953123 (not res!433120)) b!953119))

(assert (= (and b!953127 c!155199) b!953124))

(assert (= (and b!953127 (not c!155199)) b!953121))

(assert (= (and b!953124 (not res!433122)) b!953120))

(assert (= (or b!953120 b!953121) bm!59824))

(assert (= (or b!953128 b!953124) bm!59823))

(declare-fun m!1164945 () Bool)

(assert (=> b!953119 m!1164945))

(assert (=> bm!59823 m!1164825))

(declare-fun m!1164947 () Bool)

(assert (=> b!953123 m!1164947))

(declare-fun m!1164949 () Bool)

(assert (=> bm!59824 m!1164949))

(assert (=> b!952920 d!284143))

(declare-fun b!953130 () Bool)

(declare-fun e!616692 () Bool)

(declare-fun e!616696 () Bool)

(assert (=> b!953130 (= e!616692 e!616696)))

(declare-fun res!433123 () Bool)

(assert (=> b!953130 (=> res!433123 e!616696)))

(declare-fun call!59830 () Bool)

(assert (=> b!953130 (= res!433123 call!59830)))

(declare-fun b!953131 () Bool)

(assert (=> b!953131 (= e!616696 (not (= (head!1743 s!10566) (c!155165 r!15766))))))

(declare-fun b!953132 () Bool)

(declare-fun res!433129 () Bool)

(declare-fun e!616694 () Bool)

(assert (=> b!953132 (=> res!433129 e!616694)))

(assert (=> b!953132 (= res!433129 (not (is-ElementMatch!2626 r!15766)))))

(declare-fun e!616697 () Bool)

(assert (=> b!953132 (= e!616697 e!616694)))

(declare-fun b!953133 () Bool)

(declare-fun res!433127 () Bool)

(declare-fun e!616693 () Bool)

(assert (=> b!953133 (=> (not res!433127) (not e!616693))))

(assert (=> b!953133 (= res!433127 (not call!59830))))

(declare-fun b!953134 () Bool)

(declare-fun e!616695 () Bool)

(declare-fun lt!344900 () Bool)

(assert (=> b!953134 (= e!616695 (= lt!344900 call!59830))))

(declare-fun b!953135 () Bool)

(assert (=> b!953135 (= e!616695 e!616697)))

(declare-fun c!155201 () Bool)

(assert (=> b!953135 (= c!155201 (is-EmptyLang!2626 r!15766))))

(declare-fun bm!59825 () Bool)

(assert (=> bm!59825 (= call!59830 (isEmpty!6115 s!10566))))

(declare-fun d!284145 () Bool)

(assert (=> d!284145 e!616695))

(declare-fun c!155202 () Bool)

(assert (=> d!284145 (= c!155202 (is-EmptyExpr!2626 r!15766))))

(declare-fun e!616698 () Bool)

(assert (=> d!284145 (= lt!344900 e!616698)))

(declare-fun c!155203 () Bool)

(assert (=> d!284145 (= c!155203 (isEmpty!6115 s!10566))))

(assert (=> d!284145 (validRegex!1095 r!15766)))

(assert (=> d!284145 (= (matchR!1164 r!15766 s!10566) lt!344900)))

(declare-fun b!953136 () Bool)

(assert (=> b!953136 (= e!616698 (nullable!781 r!15766))))

(declare-fun b!953137 () Bool)

(declare-fun res!433130 () Bool)

(assert (=> b!953137 (=> res!433130 e!616696)))

(assert (=> b!953137 (= res!433130 (not (isEmpty!6115 (tail!1305 s!10566))))))

(declare-fun b!953138 () Bool)

(assert (=> b!953138 (= e!616697 (not lt!344900))))

(declare-fun b!953139 () Bool)

(assert (=> b!953139 (= e!616698 (matchR!1164 (derivativeStep!590 r!15766 (head!1743 s!10566)) (tail!1305 s!10566)))))

(declare-fun b!953140 () Bool)

(declare-fun res!433125 () Bool)

(assert (=> b!953140 (=> (not res!433125) (not e!616693))))

(assert (=> b!953140 (= res!433125 (isEmpty!6115 (tail!1305 s!10566)))))

(declare-fun b!953141 () Bool)

(declare-fun res!433124 () Bool)

(assert (=> b!953141 (=> res!433124 e!616694)))

(assert (=> b!953141 (= res!433124 e!616693)))

(declare-fun res!433128 () Bool)

(assert (=> b!953141 (=> (not res!433128) (not e!616693))))

(assert (=> b!953141 (= res!433128 lt!344900)))

(declare-fun b!953142 () Bool)

(assert (=> b!953142 (= e!616693 (= (head!1743 s!10566) (c!155165 r!15766)))))

(declare-fun b!953143 () Bool)

(assert (=> b!953143 (= e!616694 e!616692)))

(declare-fun res!433126 () Bool)

(assert (=> b!953143 (=> (not res!433126) (not e!616692))))

(assert (=> b!953143 (= res!433126 (not lt!344900))))

(assert (= (and d!284145 c!155203) b!953136))

(assert (= (and d!284145 (not c!155203)) b!953139))

(assert (= (and d!284145 c!155202) b!953134))

(assert (= (and d!284145 (not c!155202)) b!953135))

(assert (= (and b!953135 c!155201) b!953138))

(assert (= (and b!953135 (not c!155201)) b!953132))

(assert (= (and b!953132 (not res!433129)) b!953141))

(assert (= (and b!953141 res!433128) b!953133))

(assert (= (and b!953133 res!433127) b!953140))

(assert (= (and b!953140 res!433125) b!953142))

(assert (= (and b!953141 (not res!433124)) b!953143))

(assert (= (and b!953143 res!433126) b!953130))

(assert (= (and b!953130 (not res!433123)) b!953137))

(assert (= (and b!953137 (not res!433130)) b!953131))

(assert (= (or b!953134 b!953130 b!953133) bm!59825))

(declare-fun m!1164951 () Bool)

(assert (=> b!953137 m!1164951))

(assert (=> b!953137 m!1164951))

(declare-fun m!1164953 () Bool)

(assert (=> b!953137 m!1164953))

(assert (=> d!284145 m!1164825))

(assert (=> d!284145 m!1164811))

(declare-fun m!1164955 () Bool)

(assert (=> b!953142 m!1164955))

(declare-fun m!1164957 () Bool)

(assert (=> b!953136 m!1164957))

(assert (=> b!953139 m!1164955))

(assert (=> b!953139 m!1164955))

(declare-fun m!1164959 () Bool)

(assert (=> b!953139 m!1164959))

(assert (=> b!953139 m!1164951))

(assert (=> b!953139 m!1164959))

(assert (=> b!953139 m!1164951))

(declare-fun m!1164961 () Bool)

(assert (=> b!953139 m!1164961))

(assert (=> b!953131 m!1164955))

(assert (=> bm!59825 m!1164825))

(assert (=> b!953140 m!1164951))

(assert (=> b!953140 m!1164951))

(assert (=> b!953140 m!1164953))

(assert (=> b!952920 d!284145))

(declare-fun d!284147 () Bool)

(assert (=> d!284147 (= (matchR!1164 r!15766 s!10566) (matchRSpec!427 r!15766 s!10566))))

(declare-fun lt!344906 () Unit!14895)

(declare-fun choose!5958 (Regex!2626 List!9856) Unit!14895)

(assert (=> d!284147 (= lt!344906 (choose!5958 r!15766 s!10566))))

(assert (=> d!284147 (validRegex!1095 r!15766)))

(assert (=> d!284147 (= (mainMatchTheorem!427 r!15766 s!10566) lt!344906)))

(declare-fun bs!240265 () Bool)

(assert (= bs!240265 d!284147))

(assert (=> bs!240265 m!1164807))

(assert (=> bs!240265 m!1164805))

(declare-fun m!1164963 () Bool)

(assert (=> bs!240265 m!1164963))

(assert (=> bs!240265 m!1164811))

(assert (=> b!952920 d!284147))

(declare-fun bm!59832 () Bool)

(declare-fun call!59839 () Bool)

(declare-fun c!155210 () Bool)

(assert (=> bm!59832 (= call!59839 (validRegex!1095 (ite c!155210 (regTwo!5765 r!15766) (regTwo!5764 r!15766))))))

(declare-fun b!953171 () Bool)

(declare-fun res!433148 () Bool)

(declare-fun e!616724 () Bool)

(assert (=> b!953171 (=> (not res!433148) (not e!616724))))

(declare-fun call!59838 () Bool)

(assert (=> b!953171 (= res!433148 call!59838)))

(declare-fun e!616719 () Bool)

(assert (=> b!953171 (= e!616719 e!616724)))

(declare-fun b!953172 () Bool)

(declare-fun e!616721 () Bool)

(declare-fun call!59837 () Bool)

(assert (=> b!953172 (= e!616721 call!59837)))

(declare-fun b!953173 () Bool)

(declare-fun e!616720 () Bool)

(declare-fun e!616718 () Bool)

(assert (=> b!953173 (= e!616720 e!616718)))

(declare-fun c!155211 () Bool)

(assert (=> b!953173 (= c!155211 (is-Star!2626 r!15766))))

(declare-fun d!284149 () Bool)

(declare-fun res!433149 () Bool)

(assert (=> d!284149 (=> res!433149 e!616720)))

(assert (=> d!284149 (= res!433149 (is-ElementMatch!2626 r!15766))))

(assert (=> d!284149 (= (validRegex!1095 r!15766) e!616720)))

(declare-fun b!953174 () Bool)

(assert (=> b!953174 (= e!616718 e!616721)))

(declare-fun res!433146 () Bool)

(assert (=> b!953174 (= res!433146 (not (nullable!781 (reg!2955 r!15766))))))

(assert (=> b!953174 (=> (not res!433146) (not e!616721))))

(declare-fun b!953175 () Bool)

(assert (=> b!953175 (= e!616718 e!616719)))

(assert (=> b!953175 (= c!155210 (is-Union!2626 r!15766))))

(declare-fun b!953176 () Bool)

(declare-fun e!616723 () Bool)

(assert (=> b!953176 (= e!616723 call!59839)))

(declare-fun b!953177 () Bool)

(declare-fun e!616722 () Bool)

(assert (=> b!953177 (= e!616722 e!616723)))

(declare-fun res!433147 () Bool)

(assert (=> b!953177 (=> (not res!433147) (not e!616723))))

(assert (=> b!953177 (= res!433147 call!59838)))

(declare-fun bm!59833 () Bool)

(assert (=> bm!59833 (= call!59838 call!59837)))

(declare-fun bm!59834 () Bool)

(assert (=> bm!59834 (= call!59837 (validRegex!1095 (ite c!155211 (reg!2955 r!15766) (ite c!155210 (regOne!5765 r!15766) (regOne!5764 r!15766)))))))

(declare-fun b!953178 () Bool)

(assert (=> b!953178 (= e!616724 call!59839)))

(declare-fun b!953179 () Bool)

(declare-fun res!433150 () Bool)

(assert (=> b!953179 (=> res!433150 e!616722)))

(assert (=> b!953179 (= res!433150 (not (is-Concat!4459 r!15766)))))

(assert (=> b!953179 (= e!616719 e!616722)))

(assert (= (and d!284149 (not res!433149)) b!953173))

(assert (= (and b!953173 c!155211) b!953174))

(assert (= (and b!953173 (not c!155211)) b!953175))

(assert (= (and b!953174 res!433146) b!953172))

(assert (= (and b!953175 c!155210) b!953171))

(assert (= (and b!953175 (not c!155210)) b!953179))

(assert (= (and b!953171 res!433148) b!953178))

(assert (= (and b!953179 (not res!433150)) b!953177))

(assert (= (and b!953177 res!433147) b!953176))

(assert (= (or b!953178 b!953176) bm!59832))

(assert (= (or b!953171 b!953177) bm!59833))

(assert (= (or b!953172 bm!59833) bm!59834))

(declare-fun m!1164989 () Bool)

(assert (=> bm!59832 m!1164989))

(declare-fun m!1164991 () Bool)

(assert (=> b!953174 m!1164991))

(declare-fun m!1164993 () Bool)

(assert (=> bm!59834 m!1164993))

(assert (=> start!84908 d!284149))

(declare-fun b!953193 () Bool)

(declare-fun e!616727 () Bool)

(declare-fun tp!293688 () Bool)

(declare-fun tp!293690 () Bool)

(assert (=> b!953193 (= e!616727 (and tp!293688 tp!293690))))

(assert (=> b!952919 (= tp!293657 e!616727)))

(declare-fun b!953191 () Bool)

(declare-fun tp!293689 () Bool)

(declare-fun tp!293691 () Bool)

(assert (=> b!953191 (= e!616727 (and tp!293689 tp!293691))))

(declare-fun b!953190 () Bool)

(assert (=> b!953190 (= e!616727 tp_is_empty!4895)))

(declare-fun b!953192 () Bool)

(declare-fun tp!293687 () Bool)

(assert (=> b!953192 (= e!616727 tp!293687)))

(assert (= (and b!952919 (is-ElementMatch!2626 (regOne!5764 r!15766))) b!953190))

(assert (= (and b!952919 (is-Concat!4459 (regOne!5764 r!15766))) b!953191))

(assert (= (and b!952919 (is-Star!2626 (regOne!5764 r!15766))) b!953192))

(assert (= (and b!952919 (is-Union!2626 (regOne!5764 r!15766))) b!953193))

(declare-fun b!953197 () Bool)

(declare-fun e!616728 () Bool)

(declare-fun tp!293693 () Bool)

(declare-fun tp!293695 () Bool)

(assert (=> b!953197 (= e!616728 (and tp!293693 tp!293695))))

(assert (=> b!952919 (= tp!293655 e!616728)))

(declare-fun b!953195 () Bool)

(declare-fun tp!293694 () Bool)

(declare-fun tp!293696 () Bool)

(assert (=> b!953195 (= e!616728 (and tp!293694 tp!293696))))

(declare-fun b!953194 () Bool)

(assert (=> b!953194 (= e!616728 tp_is_empty!4895)))

(declare-fun b!953196 () Bool)

(declare-fun tp!293692 () Bool)

(assert (=> b!953196 (= e!616728 tp!293692)))

(assert (= (and b!952919 (is-ElementMatch!2626 (regTwo!5764 r!15766))) b!953194))

(assert (= (and b!952919 (is-Concat!4459 (regTwo!5764 r!15766))) b!953195))

(assert (= (and b!952919 (is-Star!2626 (regTwo!5764 r!15766))) b!953196))

(assert (= (and b!952919 (is-Union!2626 (regTwo!5764 r!15766))) b!953197))

(declare-fun b!953202 () Bool)

(declare-fun e!616731 () Bool)

(declare-fun tp!293699 () Bool)

(assert (=> b!953202 (= e!616731 (and tp_is_empty!4895 tp!293699))))

(assert (=> b!952917 (= tp!293658 e!616731)))

(assert (= (and b!952917 (is-Cons!9840 (t!100902 s!10566))) b!953202))

(declare-fun b!953206 () Bool)

(declare-fun e!616732 () Bool)

(declare-fun tp!293701 () Bool)

(declare-fun tp!293703 () Bool)

(assert (=> b!953206 (= e!616732 (and tp!293701 tp!293703))))

(assert (=> b!952922 (= tp!293654 e!616732)))

(declare-fun b!953204 () Bool)

(declare-fun tp!293702 () Bool)

(declare-fun tp!293704 () Bool)

(assert (=> b!953204 (= e!616732 (and tp!293702 tp!293704))))

(declare-fun b!953203 () Bool)

(assert (=> b!953203 (= e!616732 tp_is_empty!4895)))

(declare-fun b!953205 () Bool)

(declare-fun tp!293700 () Bool)

(assert (=> b!953205 (= e!616732 tp!293700)))

(assert (= (and b!952922 (is-ElementMatch!2626 (reg!2955 r!15766))) b!953203))

(assert (= (and b!952922 (is-Concat!4459 (reg!2955 r!15766))) b!953204))

(assert (= (and b!952922 (is-Star!2626 (reg!2955 r!15766))) b!953205))

(assert (= (and b!952922 (is-Union!2626 (reg!2955 r!15766))) b!953206))

(declare-fun b!953210 () Bool)

(declare-fun e!616733 () Bool)

(declare-fun tp!293706 () Bool)

(declare-fun tp!293708 () Bool)

(assert (=> b!953210 (= e!616733 (and tp!293706 tp!293708))))

(assert (=> b!952916 (= tp!293653 e!616733)))

(declare-fun b!953208 () Bool)

(declare-fun tp!293707 () Bool)

(declare-fun tp!293709 () Bool)

(assert (=> b!953208 (= e!616733 (and tp!293707 tp!293709))))

(declare-fun b!953207 () Bool)

(assert (=> b!953207 (= e!616733 tp_is_empty!4895)))

(declare-fun b!953209 () Bool)

(declare-fun tp!293705 () Bool)

(assert (=> b!953209 (= e!616733 tp!293705)))

(assert (= (and b!952916 (is-ElementMatch!2626 (regOne!5765 r!15766))) b!953207))

(assert (= (and b!952916 (is-Concat!4459 (regOne!5765 r!15766))) b!953208))

(assert (= (and b!952916 (is-Star!2626 (regOne!5765 r!15766))) b!953209))

(assert (= (and b!952916 (is-Union!2626 (regOne!5765 r!15766))) b!953210))

(declare-fun b!953214 () Bool)

(declare-fun e!616734 () Bool)

(declare-fun tp!293711 () Bool)

(declare-fun tp!293713 () Bool)

(assert (=> b!953214 (= e!616734 (and tp!293711 tp!293713))))

(assert (=> b!952916 (= tp!293656 e!616734)))

(declare-fun b!953212 () Bool)

(declare-fun tp!293712 () Bool)

(declare-fun tp!293714 () Bool)

(assert (=> b!953212 (= e!616734 (and tp!293712 tp!293714))))

(declare-fun b!953211 () Bool)

(assert (=> b!953211 (= e!616734 tp_is_empty!4895)))

(declare-fun b!953213 () Bool)

(declare-fun tp!293710 () Bool)

(assert (=> b!953213 (= e!616734 tp!293710)))

(assert (= (and b!952916 (is-ElementMatch!2626 (regTwo!5765 r!15766))) b!953211))

(assert (= (and b!952916 (is-Concat!4459 (regTwo!5765 r!15766))) b!953212))

(assert (= (and b!952916 (is-Star!2626 (regTwo!5765 r!15766))) b!953213))

(assert (= (and b!952916 (is-Union!2626 (regTwo!5765 r!15766))) b!953214))

(push 1)

(assert (not b!953140))

(assert (not bm!59832))

(assert (not b!953174))

(assert (not d!284113))

(assert (not bm!59825))

(assert (not b!953192))

(assert (not b!953004))

(assert (not b!953139))

(assert (not b!953065))

(assert (not b!953064))

(assert (not b!953214))

(assert (not b!953119))

(assert (not b!953205))

(assert (not d!284135))

(assert (not b!953136))

(assert (not b!953123))

(assert (not d!284131))

(assert (not bm!59817))

(assert (not b!953010))

(assert (not bm!59824))

(assert (not bm!59818))

(assert (not b!953056))

(assert (not b!953208))

(assert (not b!953204))

(assert (not b!953067))

(assert (not b!953209))

(assert (not b!953210))

(assert (not b!953062))

(assert (not b!953142))

(assert (not d!284139))

(assert (not d!284133))

(assert (not d!284147))

(assert (not b!953048))

(assert (not d!284121))

(assert (not b!953053))

(assert (not b!953131))

(assert (not b!953061))

(assert (not b!953212))

(assert (not b!953197))

(assert (not bm!59823))

(assert (not b!953051))

(assert (not b!953137))

(assert (not b!953005))

(assert (not b!953052))

(assert (not b!953202))

(assert (not b!953191))

(assert (not bm!59834))

(assert (not b!953195))

(assert (not d!284119))

(assert (not b!953196))

(assert (not b!953007))

(assert (not b!953047))

(assert (not b!953193))

(assert (not b!953213))

(assert (not b!953008))

(assert (not b!952999))

(assert (not d!284145))

(assert (not b!953206))

(assert (not d!284115))

(assert tp_is_empty!4895)

(assert (not b!953049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

