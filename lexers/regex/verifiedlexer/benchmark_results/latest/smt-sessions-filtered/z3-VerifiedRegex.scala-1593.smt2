; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82062 () Bool)

(assert start!82062)

(declare-fun b!912759 () Bool)

(assert (=> b!912759 true))

(assert (=> b!912759 true))

(declare-fun lambda!29208 () Int)

(declare-fun lambda!29207 () Int)

(assert (=> b!912759 (not (= lambda!29208 lambda!29207))))

(assert (=> b!912759 true))

(assert (=> b!912759 true))

(declare-fun b!912758 () Bool)

(declare-fun e!595208 () Bool)

(declare-datatypes ((C!5460 0))(
  ( (C!5461 (val!2978 Int)) )
))
(declare-datatypes ((Regex!2445 0))(
  ( (ElementMatch!2445 (c!147840 C!5460)) (Concat!4278 (regOne!5402 Regex!2445) (regTwo!5402 Regex!2445)) (EmptyExpr!2445) (Star!2445 (reg!2774 Regex!2445)) (EmptyLang!2445) (Union!2445 (regOne!5403 Regex!2445) (regTwo!5403 Regex!2445)) )
))
(declare-fun r!15766 () Regex!2445)

(declare-fun validRegex!914 (Regex!2445) Bool)

(declare-fun removeUselessConcat!124 (Regex!2445) Regex!2445)

(assert (=> b!912758 (= e!595208 (validRegex!914 (removeUselessConcat!124 r!15766)))))

(declare-fun res!415082 () Bool)

(declare-fun e!595207 () Bool)

(assert (=> start!82062 (=> (not res!415082) (not e!595207))))

(assert (=> start!82062 (= res!415082 (validRegex!914 r!15766))))

(assert (=> start!82062 e!595207))

(declare-fun e!595205 () Bool)

(assert (=> start!82062 e!595205))

(declare-fun e!595209 () Bool)

(assert (=> start!82062 e!595209))

(declare-fun e!595206 () Bool)

(assert (=> b!912759 (= e!595206 e!595208)))

(declare-fun res!415084 () Bool)

(assert (=> b!912759 (=> res!415084 e!595208)))

(declare-datatypes ((List!9675 0))(
  ( (Nil!9659) (Cons!9659 (h!15060 C!5460) (t!100721 List!9675)) )
))
(declare-fun s!10566 () List!9675)

(declare-fun isEmpty!5880 (List!9675) Bool)

(assert (=> b!912759 (= res!415084 (not (isEmpty!5880 s!10566)))))

(declare-fun Exists!216 (Int) Bool)

(assert (=> b!912759 (= (Exists!216 lambda!29207) (Exists!216 lambda!29208))))

(declare-datatypes ((Unit!14509 0))(
  ( (Unit!14510) )
))
(declare-fun lt!337054 () Unit!14509)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!128 (Regex!2445 Regex!2445 List!9675) Unit!14509)

(assert (=> b!912759 (= lt!337054 (lemmaExistCutMatchRandMatchRSpecEquivalent!128 (regOne!5402 r!15766) (regTwo!5402 r!15766) s!10566))))

(declare-datatypes ((tuple2!10876 0))(
  ( (tuple2!10877 (_1!6264 List!9675) (_2!6264 List!9675)) )
))
(declare-datatypes ((Option!2080 0))(
  ( (None!2079) (Some!2079 (v!19496 tuple2!10876)) )
))
(declare-fun isDefined!1722 (Option!2080) Bool)

(declare-fun findConcatSeparation!186 (Regex!2445 Regex!2445 List!9675 List!9675 List!9675) Option!2080)

(assert (=> b!912759 (= (isDefined!1722 (findConcatSeparation!186 (regOne!5402 r!15766) (regTwo!5402 r!15766) Nil!9659 s!10566 s!10566)) (Exists!216 lambda!29207))))

(declare-fun lt!337055 () Unit!14509)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!186 (Regex!2445 Regex!2445 List!9675) Unit!14509)

(assert (=> b!912759 (= lt!337055 (lemmaFindConcatSeparationEquivalentToExists!186 (regOne!5402 r!15766) (regTwo!5402 r!15766) s!10566))))

(declare-fun b!912760 () Bool)

(assert (=> b!912760 (= e!595207 (not e!595206))))

(declare-fun res!415083 () Bool)

(assert (=> b!912760 (=> res!415083 e!595206)))

(declare-fun lt!337052 () Bool)

(get-info :version)

(assert (=> b!912760 (= res!415083 (or lt!337052 (and ((_ is Concat!4278) r!15766) ((_ is EmptyExpr!2445) (regOne!5402 r!15766))) (and ((_ is Concat!4278) r!15766) ((_ is EmptyExpr!2445) (regTwo!5402 r!15766))) (not ((_ is Concat!4278) r!15766))))))

(declare-fun matchRSpec!246 (Regex!2445 List!9675) Bool)

(assert (=> b!912760 (= lt!337052 (matchRSpec!246 r!15766 s!10566))))

(declare-fun matchR!983 (Regex!2445 List!9675) Bool)

(assert (=> b!912760 (= lt!337052 (matchR!983 r!15766 s!10566))))

(declare-fun lt!337053 () Unit!14509)

(declare-fun mainMatchTheorem!246 (Regex!2445 List!9675) Unit!14509)

(assert (=> b!912760 (= lt!337053 (mainMatchTheorem!246 r!15766 s!10566))))

(declare-fun b!912761 () Bool)

(declare-fun tp!285334 () Bool)

(declare-fun tp!285332 () Bool)

(assert (=> b!912761 (= e!595205 (and tp!285334 tp!285332))))

(declare-fun b!912762 () Bool)

(declare-fun tp_is_empty!4533 () Bool)

(declare-fun tp!285335 () Bool)

(assert (=> b!912762 (= e!595209 (and tp_is_empty!4533 tp!285335))))

(declare-fun b!912763 () Bool)

(declare-fun tp!285333 () Bool)

(assert (=> b!912763 (= e!595205 tp!285333)))

(declare-fun b!912764 () Bool)

(assert (=> b!912764 (= e!595205 tp_is_empty!4533)))

(declare-fun b!912765 () Bool)

(declare-fun tp!285336 () Bool)

(declare-fun tp!285331 () Bool)

(assert (=> b!912765 (= e!595205 (and tp!285336 tp!285331))))

(assert (= (and start!82062 res!415082) b!912760))

(assert (= (and b!912760 (not res!415083)) b!912759))

(assert (= (and b!912759 (not res!415084)) b!912758))

(assert (= (and start!82062 ((_ is ElementMatch!2445) r!15766)) b!912764))

(assert (= (and start!82062 ((_ is Concat!4278) r!15766)) b!912765))

(assert (= (and start!82062 ((_ is Star!2445) r!15766)) b!912763))

(assert (= (and start!82062 ((_ is Union!2445) r!15766)) b!912761))

(assert (= (and start!82062 ((_ is Cons!9659) s!10566)) b!912762))

(declare-fun m!1144127 () Bool)

(assert (=> b!912758 m!1144127))

(assert (=> b!912758 m!1144127))

(declare-fun m!1144129 () Bool)

(assert (=> b!912758 m!1144129))

(declare-fun m!1144131 () Bool)

(assert (=> start!82062 m!1144131))

(declare-fun m!1144133 () Bool)

(assert (=> b!912759 m!1144133))

(declare-fun m!1144135 () Bool)

(assert (=> b!912759 m!1144135))

(declare-fun m!1144137 () Bool)

(assert (=> b!912759 m!1144137))

(declare-fun m!1144139 () Bool)

(assert (=> b!912759 m!1144139))

(declare-fun m!1144141 () Bool)

(assert (=> b!912759 m!1144141))

(declare-fun m!1144143 () Bool)

(assert (=> b!912759 m!1144143))

(assert (=> b!912759 m!1144133))

(declare-fun m!1144145 () Bool)

(assert (=> b!912759 m!1144145))

(assert (=> b!912759 m!1144137))

(declare-fun m!1144147 () Bool)

(assert (=> b!912760 m!1144147))

(declare-fun m!1144149 () Bool)

(assert (=> b!912760 m!1144149))

(declare-fun m!1144151 () Bool)

(assert (=> b!912760 m!1144151))

(check-sat (not b!912759) (not b!912763) (not b!912762) (not b!912761) tp_is_empty!4533 (not b!912765) (not b!912760) (not b!912758) (not start!82062))
(check-sat)
(get-model)

(declare-fun d!279470 () Bool)

(declare-fun res!415111 () Bool)

(declare-fun e!595251 () Bool)

(assert (=> d!279470 (=> res!415111 e!595251)))

(assert (=> d!279470 (= res!415111 ((_ is ElementMatch!2445) r!15766))))

(assert (=> d!279470 (= (validRegex!914 r!15766) e!595251)))

(declare-fun b!912815 () Bool)

(declare-fun res!415112 () Bool)

(declare-fun e!595248 () Bool)

(assert (=> b!912815 (=> (not res!415112) (not e!595248))))

(declare-fun call!54943 () Bool)

(assert (=> b!912815 (= res!415112 call!54943)))

(declare-fun e!595250 () Bool)

(assert (=> b!912815 (= e!595250 e!595248)))

(declare-fun b!912816 () Bool)

(declare-fun e!595247 () Bool)

(declare-fun call!54942 () Bool)

(assert (=> b!912816 (= e!595247 call!54942)))

(declare-fun c!147852 () Bool)

(declare-fun c!147851 () Bool)

(declare-fun bm!54936 () Bool)

(assert (=> bm!54936 (= call!54942 (validRegex!914 (ite c!147851 (reg!2774 r!15766) (ite c!147852 (regTwo!5403 r!15766) (regTwo!5402 r!15766)))))))

(declare-fun b!912817 () Bool)

(declare-fun e!595246 () Bool)

(assert (=> b!912817 (= e!595246 e!595250)))

(assert (=> b!912817 (= c!147852 ((_ is Union!2445) r!15766))))

(declare-fun bm!54937 () Bool)

(declare-fun call!54941 () Bool)

(assert (=> bm!54937 (= call!54941 call!54942)))

(declare-fun b!912818 () Bool)

(declare-fun e!595249 () Bool)

(assert (=> b!912818 (= e!595249 call!54941)))

(declare-fun b!912819 () Bool)

(declare-fun res!415113 () Bool)

(declare-fun e!595245 () Bool)

(assert (=> b!912819 (=> res!415113 e!595245)))

(assert (=> b!912819 (= res!415113 (not ((_ is Concat!4278) r!15766)))))

(assert (=> b!912819 (= e!595250 e!595245)))

(declare-fun b!912820 () Bool)

(assert (=> b!912820 (= e!595245 e!595249)))

(declare-fun res!415114 () Bool)

(assert (=> b!912820 (=> (not res!415114) (not e!595249))))

(assert (=> b!912820 (= res!415114 call!54943)))

(declare-fun b!912821 () Bool)

(assert (=> b!912821 (= e!595251 e!595246)))

(assert (=> b!912821 (= c!147851 ((_ is Star!2445) r!15766))))

(declare-fun b!912822 () Bool)

(assert (=> b!912822 (= e!595246 e!595247)))

(declare-fun res!415110 () Bool)

(declare-fun nullable!663 (Regex!2445) Bool)

(assert (=> b!912822 (= res!415110 (not (nullable!663 (reg!2774 r!15766))))))

(assert (=> b!912822 (=> (not res!415110) (not e!595247))))

(declare-fun bm!54938 () Bool)

(assert (=> bm!54938 (= call!54943 (validRegex!914 (ite c!147852 (regOne!5403 r!15766) (regOne!5402 r!15766))))))

(declare-fun b!912823 () Bool)

(assert (=> b!912823 (= e!595248 call!54941)))

(assert (= (and d!279470 (not res!415111)) b!912821))

(assert (= (and b!912821 c!147851) b!912822))

(assert (= (and b!912821 (not c!147851)) b!912817))

(assert (= (and b!912822 res!415110) b!912816))

(assert (= (and b!912817 c!147852) b!912815))

(assert (= (and b!912817 (not c!147852)) b!912819))

(assert (= (and b!912815 res!415112) b!912823))

(assert (= (and b!912819 (not res!415113)) b!912820))

(assert (= (and b!912820 res!415114) b!912818))

(assert (= (or b!912823 b!912818) bm!54937))

(assert (= (or b!912815 b!912820) bm!54938))

(assert (= (or b!912816 bm!54937) bm!54936))

(declare-fun m!1144165 () Bool)

(assert (=> bm!54936 m!1144165))

(declare-fun m!1144167 () Bool)

(assert (=> b!912822 m!1144167))

(declare-fun m!1144169 () Bool)

(assert (=> bm!54938 m!1144169))

(assert (=> start!82062 d!279470))

(declare-fun d!279480 () Bool)

(declare-fun res!415120 () Bool)

(declare-fun e!595260 () Bool)

(assert (=> d!279480 (=> res!415120 e!595260)))

(assert (=> d!279480 (= res!415120 ((_ is ElementMatch!2445) (removeUselessConcat!124 r!15766)))))

(assert (=> d!279480 (= (validRegex!914 (removeUselessConcat!124 r!15766)) e!595260)))

(declare-fun b!912828 () Bool)

(declare-fun res!415121 () Bool)

(declare-fun e!595257 () Bool)

(assert (=> b!912828 (=> (not res!415121) (not e!595257))))

(declare-fun call!54946 () Bool)

(assert (=> b!912828 (= res!415121 call!54946)))

(declare-fun e!595259 () Bool)

(assert (=> b!912828 (= e!595259 e!595257)))

(declare-fun b!912829 () Bool)

(declare-fun e!595256 () Bool)

(declare-fun call!54945 () Bool)

(assert (=> b!912829 (= e!595256 call!54945)))

(declare-fun c!147854 () Bool)

(declare-fun bm!54939 () Bool)

(declare-fun c!147853 () Bool)

(assert (=> bm!54939 (= call!54945 (validRegex!914 (ite c!147853 (reg!2774 (removeUselessConcat!124 r!15766)) (ite c!147854 (regTwo!5403 (removeUselessConcat!124 r!15766)) (regTwo!5402 (removeUselessConcat!124 r!15766))))))))

(declare-fun b!912830 () Bool)

(declare-fun e!595255 () Bool)

(assert (=> b!912830 (= e!595255 e!595259)))

(assert (=> b!912830 (= c!147854 ((_ is Union!2445) (removeUselessConcat!124 r!15766)))))

(declare-fun bm!54940 () Bool)

(declare-fun call!54944 () Bool)

(assert (=> bm!54940 (= call!54944 call!54945)))

(declare-fun b!912831 () Bool)

(declare-fun e!595258 () Bool)

(assert (=> b!912831 (= e!595258 call!54944)))

(declare-fun b!912832 () Bool)

(declare-fun res!415122 () Bool)

(declare-fun e!595254 () Bool)

(assert (=> b!912832 (=> res!415122 e!595254)))

(assert (=> b!912832 (= res!415122 (not ((_ is Concat!4278) (removeUselessConcat!124 r!15766))))))

(assert (=> b!912832 (= e!595259 e!595254)))

(declare-fun b!912833 () Bool)

(assert (=> b!912833 (= e!595254 e!595258)))

(declare-fun res!415123 () Bool)

(assert (=> b!912833 (=> (not res!415123) (not e!595258))))

(assert (=> b!912833 (= res!415123 call!54946)))

(declare-fun b!912834 () Bool)

(assert (=> b!912834 (= e!595260 e!595255)))

(assert (=> b!912834 (= c!147853 ((_ is Star!2445) (removeUselessConcat!124 r!15766)))))

(declare-fun b!912835 () Bool)

(assert (=> b!912835 (= e!595255 e!595256)))

(declare-fun res!415119 () Bool)

(assert (=> b!912835 (= res!415119 (not (nullable!663 (reg!2774 (removeUselessConcat!124 r!15766)))))))

(assert (=> b!912835 (=> (not res!415119) (not e!595256))))

(declare-fun bm!54941 () Bool)

(assert (=> bm!54941 (= call!54946 (validRegex!914 (ite c!147854 (regOne!5403 (removeUselessConcat!124 r!15766)) (regOne!5402 (removeUselessConcat!124 r!15766)))))))

(declare-fun b!912836 () Bool)

(assert (=> b!912836 (= e!595257 call!54944)))

(assert (= (and d!279480 (not res!415120)) b!912834))

(assert (= (and b!912834 c!147853) b!912835))

(assert (= (and b!912834 (not c!147853)) b!912830))

(assert (= (and b!912835 res!415119) b!912829))

(assert (= (and b!912830 c!147854) b!912828))

(assert (= (and b!912830 (not c!147854)) b!912832))

(assert (= (and b!912828 res!415121) b!912836))

(assert (= (and b!912832 (not res!415122)) b!912833))

(assert (= (and b!912833 res!415123) b!912831))

(assert (= (or b!912836 b!912831) bm!54940))

(assert (= (or b!912828 b!912833) bm!54941))

(assert (= (or b!912829 bm!54940) bm!54939))

(declare-fun m!1144171 () Bool)

(assert (=> bm!54939 m!1144171))

(declare-fun m!1144173 () Bool)

(assert (=> b!912835 m!1144173))

(declare-fun m!1144175 () Bool)

(assert (=> bm!54941 m!1144175))

(assert (=> b!912758 d!279480))

(declare-fun c!147868 () Bool)

(declare-fun call!54958 () Regex!2445)

(declare-fun bm!54952 () Bool)

(declare-fun c!147869 () Bool)

(assert (=> bm!54952 (= call!54958 (removeUselessConcat!124 (ite (or c!147869 c!147868) (regTwo!5402 r!15766) (regOne!5403 r!15766))))))

(declare-fun b!912859 () Bool)

(declare-fun e!595273 () Regex!2445)

(declare-fun call!54957 () Regex!2445)

(declare-fun call!54959 () Regex!2445)

(assert (=> b!912859 (= e!595273 (Union!2445 call!54957 call!54959))))

(declare-fun b!912860 () Bool)

(declare-fun e!595278 () Regex!2445)

(assert (=> b!912860 (= e!595278 r!15766)))

(declare-fun bm!54953 () Bool)

(declare-fun call!54960 () Regex!2445)

(declare-fun call!54961 () Regex!2445)

(assert (=> bm!54953 (= call!54960 call!54961)))

(declare-fun b!912861 () Bool)

(declare-fun e!595274 () Regex!2445)

(assert (=> b!912861 (= e!595274 e!595273)))

(declare-fun c!147866 () Bool)

(assert (=> b!912861 (= c!147866 ((_ is Union!2445) r!15766))))

(declare-fun b!912862 () Bool)

(assert (=> b!912862 (= e!595274 (Concat!4278 call!54960 call!54957))))

(declare-fun b!912863 () Bool)

(assert (=> b!912863 (= c!147868 ((_ is Concat!4278) r!15766))))

(declare-fun e!595275 () Regex!2445)

(assert (=> b!912863 (= e!595275 e!595274)))

(declare-fun b!912864 () Bool)

(declare-fun c!147865 () Bool)

(assert (=> b!912864 (= c!147865 ((_ is Star!2445) r!15766))))

(assert (=> b!912864 (= e!595273 e!595278)))

(declare-fun d!279482 () Bool)

(declare-fun e!595276 () Bool)

(assert (=> d!279482 e!595276))

(declare-fun res!415126 () Bool)

(assert (=> d!279482 (=> (not res!415126) (not e!595276))))

(declare-fun lt!337061 () Regex!2445)

(assert (=> d!279482 (= res!415126 (validRegex!914 lt!337061))))

(declare-fun e!595277 () Regex!2445)

(assert (=> d!279482 (= lt!337061 e!595277)))

(assert (=> d!279482 (= c!147869 (and ((_ is Concat!4278) r!15766) ((_ is EmptyExpr!2445) (regOne!5402 r!15766))))))

(assert (=> d!279482 (validRegex!914 r!15766)))

(assert (=> d!279482 (= (removeUselessConcat!124 r!15766) lt!337061)))

(declare-fun b!912865 () Bool)

(assert (=> b!912865 (= e!595276 (= (nullable!663 lt!337061) (nullable!663 r!15766)))))

(declare-fun b!912866 () Bool)

(assert (=> b!912866 (= e!595278 (Star!2445 call!54959))))

(declare-fun bm!54954 () Bool)

(declare-fun c!147867 () Bool)

(assert (=> bm!54954 (= call!54961 (removeUselessConcat!124 (ite (or c!147867 c!147868) (regOne!5402 r!15766) (ite c!147866 (regTwo!5403 r!15766) (reg!2774 r!15766)))))))

(declare-fun bm!54955 () Bool)

(assert (=> bm!54955 (= call!54959 call!54960)))

(declare-fun b!912867 () Bool)

(assert (=> b!912867 (= e!595277 e!595275)))

(assert (=> b!912867 (= c!147867 (and ((_ is Concat!4278) r!15766) ((_ is EmptyExpr!2445) (regTwo!5402 r!15766))))))

(declare-fun b!912868 () Bool)

(assert (=> b!912868 (= e!595275 call!54961)))

(declare-fun b!912869 () Bool)

(assert (=> b!912869 (= e!595277 call!54958)))

(declare-fun bm!54956 () Bool)

(assert (=> bm!54956 (= call!54957 call!54958)))

(assert (= (and d!279482 c!147869) b!912869))

(assert (= (and d!279482 (not c!147869)) b!912867))

(assert (= (and b!912867 c!147867) b!912868))

(assert (= (and b!912867 (not c!147867)) b!912863))

(assert (= (and b!912863 c!147868) b!912862))

(assert (= (and b!912863 (not c!147868)) b!912861))

(assert (= (and b!912861 c!147866) b!912859))

(assert (= (and b!912861 (not c!147866)) b!912864))

(assert (= (and b!912864 c!147865) b!912866))

(assert (= (and b!912864 (not c!147865)) b!912860))

(assert (= (or b!912859 b!912866) bm!54955))

(assert (= (or b!912862 b!912859) bm!54956))

(assert (= (or b!912862 bm!54955) bm!54953))

(assert (= (or b!912868 bm!54953) bm!54954))

(assert (= (or b!912869 bm!54956) bm!54952))

(assert (= (and d!279482 res!415126) b!912865))

(declare-fun m!1144183 () Bool)

(assert (=> bm!54952 m!1144183))

(declare-fun m!1144185 () Bool)

(assert (=> d!279482 m!1144185))

(assert (=> d!279482 m!1144131))

(declare-fun m!1144187 () Bool)

(assert (=> b!912865 m!1144187))

(declare-fun m!1144189 () Bool)

(assert (=> b!912865 m!1144189))

(declare-fun m!1144191 () Bool)

(assert (=> bm!54954 m!1144191))

(assert (=> b!912758 d!279482))

(declare-fun d!279486 () Bool)

(assert (=> d!279486 (= (isEmpty!5880 s!10566) ((_ is Nil!9659) s!10566))))

(assert (=> b!912759 d!279486))

(declare-fun d!279488 () Bool)

(declare-fun isEmpty!5882 (Option!2080) Bool)

(assert (=> d!279488 (= (isDefined!1722 (findConcatSeparation!186 (regOne!5402 r!15766) (regTwo!5402 r!15766) Nil!9659 s!10566 s!10566)) (not (isEmpty!5882 (findConcatSeparation!186 (regOne!5402 r!15766) (regTwo!5402 r!15766) Nil!9659 s!10566 s!10566))))))

(declare-fun bs!235861 () Bool)

(assert (= bs!235861 d!279488))

(assert (=> bs!235861 m!1144137))

(declare-fun m!1144193 () Bool)

(assert (=> bs!235861 m!1144193))

(assert (=> b!912759 d!279488))

(declare-fun d!279490 () Bool)

(declare-fun choose!5554 (Int) Bool)

(assert (=> d!279490 (= (Exists!216 lambda!29208) (choose!5554 lambda!29208))))

(declare-fun bs!235862 () Bool)

(assert (= bs!235862 d!279490))

(declare-fun m!1144195 () Bool)

(assert (=> bs!235862 m!1144195))

(assert (=> b!912759 d!279490))

(declare-fun bs!235863 () Bool)

(declare-fun d!279492 () Bool)

(assert (= bs!235863 (and d!279492 b!912759)))

(declare-fun lambda!29214 () Int)

(assert (=> bs!235863 (= lambda!29214 lambda!29207)))

(assert (=> bs!235863 (not (= lambda!29214 lambda!29208))))

(assert (=> d!279492 true))

(assert (=> d!279492 true))

(assert (=> d!279492 true))

(assert (=> d!279492 (= (isDefined!1722 (findConcatSeparation!186 (regOne!5402 r!15766) (regTwo!5402 r!15766) Nil!9659 s!10566 s!10566)) (Exists!216 lambda!29214))))

(declare-fun lt!337073 () Unit!14509)

(declare-fun choose!5555 (Regex!2445 Regex!2445 List!9675) Unit!14509)

(assert (=> d!279492 (= lt!337073 (choose!5555 (regOne!5402 r!15766) (regTwo!5402 r!15766) s!10566))))

(assert (=> d!279492 (validRegex!914 (regOne!5402 r!15766))))

(assert (=> d!279492 (= (lemmaFindConcatSeparationEquivalentToExists!186 (regOne!5402 r!15766) (regTwo!5402 r!15766) s!10566) lt!337073)))

(declare-fun bs!235864 () Bool)

(assert (= bs!235864 d!279492))

(declare-fun m!1144219 () Bool)

(assert (=> bs!235864 m!1144219))

(declare-fun m!1144221 () Bool)

(assert (=> bs!235864 m!1144221))

(assert (=> bs!235864 m!1144137))

(assert (=> bs!235864 m!1144139))

(assert (=> bs!235864 m!1144137))

(declare-fun m!1144223 () Bool)

(assert (=> bs!235864 m!1144223))

(assert (=> b!912759 d!279492))

(declare-fun b!912955 () Bool)

(declare-fun e!595327 () Bool)

(declare-fun lt!337083 () Option!2080)

(assert (=> b!912955 (= e!595327 (not (isDefined!1722 lt!337083)))))

(declare-fun b!912956 () Bool)

(declare-fun e!595328 () Option!2080)

(declare-fun e!595330 () Option!2080)

(assert (=> b!912956 (= e!595328 e!595330)))

(declare-fun c!147888 () Bool)

(assert (=> b!912956 (= c!147888 ((_ is Nil!9659) s!10566))))

(declare-fun b!912957 () Bool)

(assert (=> b!912957 (= e!595330 None!2079)))

(declare-fun d!279496 () Bool)

(assert (=> d!279496 e!595327))

(declare-fun res!415179 () Bool)

(assert (=> d!279496 (=> res!415179 e!595327)))

(declare-fun e!595329 () Bool)

(assert (=> d!279496 (= res!415179 e!595329)))

(declare-fun res!415180 () Bool)

(assert (=> d!279496 (=> (not res!415180) (not e!595329))))

(assert (=> d!279496 (= res!415180 (isDefined!1722 lt!337083))))

(assert (=> d!279496 (= lt!337083 e!595328)))

(declare-fun c!147889 () Bool)

(declare-fun e!595326 () Bool)

(assert (=> d!279496 (= c!147889 e!595326)))

(declare-fun res!415175 () Bool)

(assert (=> d!279496 (=> (not res!415175) (not e!595326))))

(assert (=> d!279496 (= res!415175 (matchR!983 (regOne!5402 r!15766) Nil!9659))))

(assert (=> d!279496 (validRegex!914 (regOne!5402 r!15766))))

(assert (=> d!279496 (= (findConcatSeparation!186 (regOne!5402 r!15766) (regTwo!5402 r!15766) Nil!9659 s!10566 s!10566) lt!337083)))

(declare-fun b!912958 () Bool)

(declare-fun ++!2543 (List!9675 List!9675) List!9675)

(declare-fun get!3121 (Option!2080) tuple2!10876)

(assert (=> b!912958 (= e!595329 (= (++!2543 (_1!6264 (get!3121 lt!337083)) (_2!6264 (get!3121 lt!337083))) s!10566))))

(declare-fun b!912959 () Bool)

(assert (=> b!912959 (= e!595328 (Some!2079 (tuple2!10877 Nil!9659 s!10566)))))

(declare-fun b!912960 () Bool)

(assert (=> b!912960 (= e!595326 (matchR!983 (regTwo!5402 r!15766) s!10566))))

(declare-fun b!912961 () Bool)

(declare-fun res!415174 () Bool)

(assert (=> b!912961 (=> (not res!415174) (not e!595329))))

(assert (=> b!912961 (= res!415174 (matchR!983 (regOne!5402 r!15766) (_1!6264 (get!3121 lt!337083))))))

(declare-fun b!912962 () Bool)

(declare-fun res!415178 () Bool)

(assert (=> b!912962 (=> (not res!415178) (not e!595329))))

(assert (=> b!912962 (= res!415178 (matchR!983 (regTwo!5402 r!15766) (_2!6264 (get!3121 lt!337083))))))

(declare-fun b!912963 () Bool)

(declare-fun lt!337084 () Unit!14509)

(declare-fun lt!337085 () Unit!14509)

(assert (=> b!912963 (= lt!337084 lt!337085)))

(assert (=> b!912963 (= (++!2543 (++!2543 Nil!9659 (Cons!9659 (h!15060 s!10566) Nil!9659)) (t!100721 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!158 (List!9675 C!5460 List!9675 List!9675) Unit!14509)

(assert (=> b!912963 (= lt!337085 (lemmaMoveElementToOtherListKeepsConcatEq!158 Nil!9659 (h!15060 s!10566) (t!100721 s!10566) s!10566))))

(assert (=> b!912963 (= e!595330 (findConcatSeparation!186 (regOne!5402 r!15766) (regTwo!5402 r!15766) (++!2543 Nil!9659 (Cons!9659 (h!15060 s!10566) Nil!9659)) (t!100721 s!10566) s!10566))))

(assert (= (and d!279496 res!415175) b!912960))

(assert (= (and d!279496 c!147889) b!912959))

(assert (= (and d!279496 (not c!147889)) b!912956))

(assert (= (and b!912956 c!147888) b!912957))

(assert (= (and b!912956 (not c!147888)) b!912963))

(assert (= (and d!279496 res!415180) b!912961))

(assert (= (and b!912961 res!415174) b!912962))

(assert (= (and b!912962 res!415178) b!912958))

(assert (= (and d!279496 (not res!415179)) b!912955))

(declare-fun m!1144231 () Bool)

(assert (=> b!912958 m!1144231))

(declare-fun m!1144233 () Bool)

(assert (=> b!912958 m!1144233))

(declare-fun m!1144235 () Bool)

(assert (=> b!912955 m!1144235))

(assert (=> b!912962 m!1144231))

(declare-fun m!1144237 () Bool)

(assert (=> b!912962 m!1144237))

(declare-fun m!1144239 () Bool)

(assert (=> b!912963 m!1144239))

(assert (=> b!912963 m!1144239))

(declare-fun m!1144241 () Bool)

(assert (=> b!912963 m!1144241))

(declare-fun m!1144243 () Bool)

(assert (=> b!912963 m!1144243))

(assert (=> b!912963 m!1144239))

(declare-fun m!1144245 () Bool)

(assert (=> b!912963 m!1144245))

(assert (=> b!912961 m!1144231))

(declare-fun m!1144247 () Bool)

(assert (=> b!912961 m!1144247))

(assert (=> d!279496 m!1144235))

(declare-fun m!1144249 () Bool)

(assert (=> d!279496 m!1144249))

(assert (=> d!279496 m!1144221))

(declare-fun m!1144251 () Bool)

(assert (=> b!912960 m!1144251))

(assert (=> b!912759 d!279496))

(declare-fun d!279500 () Bool)

(assert (=> d!279500 (= (Exists!216 lambda!29207) (choose!5554 lambda!29207))))

(declare-fun bs!235868 () Bool)

(assert (= bs!235868 d!279500))

(declare-fun m!1144253 () Bool)

(assert (=> bs!235868 m!1144253))

(assert (=> b!912759 d!279500))

(declare-fun bs!235876 () Bool)

(declare-fun d!279502 () Bool)

(assert (= bs!235876 (and d!279502 b!912759)))

(declare-fun lambda!29231 () Int)

(assert (=> bs!235876 (= lambda!29231 lambda!29207)))

(assert (=> bs!235876 (not (= lambda!29231 lambda!29208))))

(declare-fun bs!235877 () Bool)

(assert (= bs!235877 (and d!279502 d!279492)))

(assert (=> bs!235877 (= lambda!29231 lambda!29214)))

(assert (=> d!279502 true))

(assert (=> d!279502 true))

(assert (=> d!279502 true))

(declare-fun lambda!29232 () Int)

(assert (=> bs!235876 (not (= lambda!29232 lambda!29207))))

(assert (=> bs!235876 (= lambda!29232 lambda!29208)))

(assert (=> bs!235877 (not (= lambda!29232 lambda!29214))))

(declare-fun bs!235878 () Bool)

(assert (= bs!235878 d!279502))

(assert (=> bs!235878 (not (= lambda!29232 lambda!29231))))

(assert (=> d!279502 true))

(assert (=> d!279502 true))

(assert (=> d!279502 true))

(assert (=> d!279502 (= (Exists!216 lambda!29231) (Exists!216 lambda!29232))))

(declare-fun lt!337088 () Unit!14509)

(declare-fun choose!5556 (Regex!2445 Regex!2445 List!9675) Unit!14509)

(assert (=> d!279502 (= lt!337088 (choose!5556 (regOne!5402 r!15766) (regTwo!5402 r!15766) s!10566))))

(assert (=> d!279502 (validRegex!914 (regOne!5402 r!15766))))

(assert (=> d!279502 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!128 (regOne!5402 r!15766) (regTwo!5402 r!15766) s!10566) lt!337088)))

(declare-fun m!1144261 () Bool)

(assert (=> bs!235878 m!1144261))

(declare-fun m!1144263 () Bool)

(assert (=> bs!235878 m!1144263))

(declare-fun m!1144265 () Bool)

(assert (=> bs!235878 m!1144265))

(assert (=> bs!235878 m!1144221))

(assert (=> b!912759 d!279502))

(declare-fun bs!235880 () Bool)

(declare-fun b!913075 () Bool)

(assert (= bs!235880 (and b!913075 b!912759)))

(declare-fun lambda!29237 () Int)

(assert (=> bs!235880 (not (= lambda!29237 lambda!29207))))

(declare-fun bs!235881 () Bool)

(assert (= bs!235881 (and b!913075 d!279502)))

(assert (=> bs!235881 (not (= lambda!29237 lambda!29232))))

(assert (=> bs!235880 (not (= lambda!29237 lambda!29208))))

(declare-fun bs!235882 () Bool)

(assert (= bs!235882 (and b!913075 d!279492)))

(assert (=> bs!235882 (not (= lambda!29237 lambda!29214))))

(assert (=> bs!235881 (not (= lambda!29237 lambda!29231))))

(assert (=> b!913075 true))

(assert (=> b!913075 true))

(declare-fun bs!235883 () Bool)

(declare-fun b!913077 () Bool)

(assert (= bs!235883 (and b!913077 d!279502)))

(declare-fun lambda!29238 () Int)

(assert (=> bs!235883 (= lambda!29238 lambda!29232)))

(declare-fun bs!235884 () Bool)

(assert (= bs!235884 (and b!913077 b!912759)))

(assert (=> bs!235884 (= lambda!29238 lambda!29208)))

(declare-fun bs!235885 () Bool)

(assert (= bs!235885 (and b!913077 d!279492)))

(assert (=> bs!235885 (not (= lambda!29238 lambda!29214))))

(assert (=> bs!235883 (not (= lambda!29238 lambda!29231))))

(declare-fun bs!235886 () Bool)

(assert (= bs!235886 (and b!913077 b!913075)))

(assert (=> bs!235886 (not (= lambda!29238 lambda!29237))))

(assert (=> bs!235884 (not (= lambda!29238 lambda!29207))))

(assert (=> b!913077 true))

(assert (=> b!913077 true))

(declare-fun bm!54973 () Bool)

(declare-fun call!54978 () Bool)

(assert (=> bm!54973 (= call!54978 (isEmpty!5880 s!10566))))

(declare-fun b!913070 () Bool)

(declare-fun c!147916 () Bool)

(assert (=> b!913070 (= c!147916 ((_ is Union!2445) r!15766))))

(declare-fun e!595394 () Bool)

(declare-fun e!595391 () Bool)

(assert (=> b!913070 (= e!595394 e!595391)))

(declare-fun b!913071 () Bool)

(assert (=> b!913071 (= e!595394 (= s!10566 (Cons!9659 (c!147840 r!15766) Nil!9659)))))

(declare-fun b!913072 () Bool)

(declare-fun e!595393 () Bool)

(assert (=> b!913072 (= e!595393 call!54978)))

(declare-fun d!279506 () Bool)

(declare-fun c!147913 () Bool)

(assert (=> d!279506 (= c!147913 ((_ is EmptyExpr!2445) r!15766))))

(assert (=> d!279506 (= (matchRSpec!246 r!15766 s!10566) e!595393)))

(declare-fun b!913073 () Bool)

(declare-fun e!595396 () Bool)

(assert (=> b!913073 (= e!595393 e!595396)))

(declare-fun res!415242 () Bool)

(assert (=> b!913073 (= res!415242 (not ((_ is EmptyLang!2445) r!15766)))))

(assert (=> b!913073 (=> (not res!415242) (not e!595396))))

(declare-fun c!147915 () Bool)

(declare-fun call!54979 () Bool)

(declare-fun bm!54974 () Bool)

(assert (=> bm!54974 (= call!54979 (Exists!216 (ite c!147915 lambda!29237 lambda!29238)))))

(declare-fun b!913074 () Bool)

(declare-fun e!595392 () Bool)

(assert (=> b!913074 (= e!595391 e!595392)))

(assert (=> b!913074 (= c!147915 ((_ is Star!2445) r!15766))))

(declare-fun e!595395 () Bool)

(assert (=> b!913075 (= e!595395 call!54979)))

(declare-fun b!913076 () Bool)

(declare-fun e!595390 () Bool)

(assert (=> b!913076 (= e!595391 e!595390)))

(declare-fun res!415243 () Bool)

(assert (=> b!913076 (= res!415243 (matchRSpec!246 (regOne!5403 r!15766) s!10566))))

(assert (=> b!913076 (=> res!415243 e!595390)))

(assert (=> b!913077 (= e!595392 call!54979)))

(declare-fun b!913078 () Bool)

(assert (=> b!913078 (= e!595390 (matchRSpec!246 (regTwo!5403 r!15766) s!10566))))

(declare-fun b!913079 () Bool)

(declare-fun c!147914 () Bool)

(assert (=> b!913079 (= c!147914 ((_ is ElementMatch!2445) r!15766))))

(assert (=> b!913079 (= e!595396 e!595394)))

(declare-fun b!913080 () Bool)

(declare-fun res!415241 () Bool)

(assert (=> b!913080 (=> res!415241 e!595395)))

(assert (=> b!913080 (= res!415241 call!54978)))

(assert (=> b!913080 (= e!595392 e!595395)))

(assert (= (and d!279506 c!147913) b!913072))

(assert (= (and d!279506 (not c!147913)) b!913073))

(assert (= (and b!913073 res!415242) b!913079))

(assert (= (and b!913079 c!147914) b!913071))

(assert (= (and b!913079 (not c!147914)) b!913070))

(assert (= (and b!913070 c!147916) b!913076))

(assert (= (and b!913070 (not c!147916)) b!913074))

(assert (= (and b!913076 (not res!415243)) b!913078))

(assert (= (and b!913074 c!147915) b!913080))

(assert (= (and b!913074 (not c!147915)) b!913077))

(assert (= (and b!913080 (not res!415241)) b!913075))

(assert (= (or b!913075 b!913077) bm!54974))

(assert (= (or b!913072 b!913080) bm!54973))

(assert (=> bm!54973 m!1144143))

(declare-fun m!1144287 () Bool)

(assert (=> bm!54974 m!1144287))

(declare-fun m!1144289 () Bool)

(assert (=> b!913076 m!1144289))

(declare-fun m!1144291 () Bool)

(assert (=> b!913078 m!1144291))

(assert (=> b!912760 d!279506))

(declare-fun d!279514 () Bool)

(declare-fun e!595440 () Bool)

(assert (=> d!279514 e!595440))

(declare-fun c!147940 () Bool)

(assert (=> d!279514 (= c!147940 ((_ is EmptyExpr!2445) r!15766))))

(declare-fun lt!337100 () Bool)

(declare-fun e!595439 () Bool)

(assert (=> d!279514 (= lt!337100 e!595439)))

(declare-fun c!147939 () Bool)

(assert (=> d!279514 (= c!147939 (isEmpty!5880 s!10566))))

(assert (=> d!279514 (validRegex!914 r!15766)))

(assert (=> d!279514 (= (matchR!983 r!15766 s!10566) lt!337100)))

(declare-fun b!913177 () Bool)

(declare-fun res!415266 () Bool)

(declare-fun e!595445 () Bool)

(assert (=> b!913177 (=> res!415266 e!595445)))

(declare-fun e!595443 () Bool)

(assert (=> b!913177 (= res!415266 e!595443)))

(declare-fun res!415268 () Bool)

(assert (=> b!913177 (=> (not res!415268) (not e!595443))))

(assert (=> b!913177 (= res!415268 lt!337100)))

(declare-fun b!913178 () Bool)

(declare-fun call!54997 () Bool)

(assert (=> b!913178 (= e!595440 (= lt!337100 call!54997))))

(declare-fun b!913179 () Bool)

(assert (=> b!913179 (= e!595439 (nullable!663 r!15766))))

(declare-fun b!913180 () Bool)

(declare-fun res!415264 () Bool)

(assert (=> b!913180 (=> res!415264 e!595445)))

(assert (=> b!913180 (= res!415264 (not ((_ is ElementMatch!2445) r!15766)))))

(declare-fun e!595444 () Bool)

(assert (=> b!913180 (= e!595444 e!595445)))

(declare-fun b!913181 () Bool)

(declare-fun derivativeStep!473 (Regex!2445 C!5460) Regex!2445)

(declare-fun head!1626 (List!9675) C!5460)

(declare-fun tail!1188 (List!9675) List!9675)

(assert (=> b!913181 (= e!595439 (matchR!983 (derivativeStep!473 r!15766 (head!1626 s!10566)) (tail!1188 s!10566)))))

(declare-fun b!913182 () Bool)

(declare-fun res!415267 () Bool)

(assert (=> b!913182 (=> (not res!415267) (not e!595443))))

(assert (=> b!913182 (= res!415267 (isEmpty!5880 (tail!1188 s!10566)))))

(declare-fun b!913183 () Bool)

(declare-fun res!415265 () Bool)

(declare-fun e!595442 () Bool)

(assert (=> b!913183 (=> res!415265 e!595442)))

(assert (=> b!913183 (= res!415265 (not (isEmpty!5880 (tail!1188 s!10566))))))

(declare-fun bm!54992 () Bool)

(assert (=> bm!54992 (= call!54997 (isEmpty!5880 s!10566))))

(declare-fun b!913184 () Bool)

(assert (=> b!913184 (= e!595444 (not lt!337100))))

(declare-fun b!913185 () Bool)

(declare-fun e!595441 () Bool)

(assert (=> b!913185 (= e!595441 e!595442)))

(declare-fun res!415269 () Bool)

(assert (=> b!913185 (=> res!415269 e!595442)))

(assert (=> b!913185 (= res!415269 call!54997)))

(declare-fun b!913186 () Bool)

(assert (=> b!913186 (= e!595440 e!595444)))

(declare-fun c!147938 () Bool)

(assert (=> b!913186 (= c!147938 ((_ is EmptyLang!2445) r!15766))))

(declare-fun b!913187 () Bool)

(assert (=> b!913187 (= e!595443 (= (head!1626 s!10566) (c!147840 r!15766)))))

(declare-fun b!913188 () Bool)

(assert (=> b!913188 (= e!595442 (not (= (head!1626 s!10566) (c!147840 r!15766))))))

(declare-fun b!913189 () Bool)

(declare-fun res!415270 () Bool)

(assert (=> b!913189 (=> (not res!415270) (not e!595443))))

(assert (=> b!913189 (= res!415270 (not call!54997))))

(declare-fun b!913190 () Bool)

(assert (=> b!913190 (= e!595445 e!595441)))

(declare-fun res!415263 () Bool)

(assert (=> b!913190 (=> (not res!415263) (not e!595441))))

(assert (=> b!913190 (= res!415263 (not lt!337100))))

(assert (= (and d!279514 c!147939) b!913179))

(assert (= (and d!279514 (not c!147939)) b!913181))

(assert (= (and d!279514 c!147940) b!913178))

(assert (= (and d!279514 (not c!147940)) b!913186))

(assert (= (and b!913186 c!147938) b!913184))

(assert (= (and b!913186 (not c!147938)) b!913180))

(assert (= (and b!913180 (not res!415264)) b!913177))

(assert (= (and b!913177 res!415268) b!913189))

(assert (= (and b!913189 res!415270) b!913182))

(assert (= (and b!913182 res!415267) b!913187))

(assert (= (and b!913177 (not res!415266)) b!913190))

(assert (= (and b!913190 res!415263) b!913185))

(assert (= (and b!913185 (not res!415269)) b!913183))

(assert (= (and b!913183 (not res!415265)) b!913188))

(assert (= (or b!913178 b!913185 b!913189) bm!54992))

(declare-fun m!1144301 () Bool)

(assert (=> b!913182 m!1144301))

(assert (=> b!913182 m!1144301))

(declare-fun m!1144303 () Bool)

(assert (=> b!913182 m!1144303))

(assert (=> d!279514 m!1144143))

(assert (=> d!279514 m!1144131))

(declare-fun m!1144305 () Bool)

(assert (=> b!913187 m!1144305))

(assert (=> bm!54992 m!1144143))

(assert (=> b!913188 m!1144305))

(assert (=> b!913181 m!1144305))

(assert (=> b!913181 m!1144305))

(declare-fun m!1144307 () Bool)

(assert (=> b!913181 m!1144307))

(assert (=> b!913181 m!1144301))

(assert (=> b!913181 m!1144307))

(assert (=> b!913181 m!1144301))

(declare-fun m!1144309 () Bool)

(assert (=> b!913181 m!1144309))

(assert (=> b!913179 m!1144189))

(assert (=> b!913183 m!1144301))

(assert (=> b!913183 m!1144301))

(assert (=> b!913183 m!1144303))

(assert (=> b!912760 d!279514))

(declare-fun d!279516 () Bool)

(assert (=> d!279516 (= (matchR!983 r!15766 s!10566) (matchRSpec!246 r!15766 s!10566))))

(declare-fun lt!337103 () Unit!14509)

(declare-fun choose!5558 (Regex!2445 List!9675) Unit!14509)

(assert (=> d!279516 (= lt!337103 (choose!5558 r!15766 s!10566))))

(assert (=> d!279516 (validRegex!914 r!15766)))

(assert (=> d!279516 (= (mainMatchTheorem!246 r!15766 s!10566) lt!337103)))

(declare-fun bs!235887 () Bool)

(assert (= bs!235887 d!279516))

(assert (=> bs!235887 m!1144149))

(assert (=> bs!235887 m!1144147))

(declare-fun m!1144311 () Bool)

(assert (=> bs!235887 m!1144311))

(assert (=> bs!235887 m!1144131))

(assert (=> b!912760 d!279516))

(declare-fun b!913202 () Bool)

(declare-fun e!595448 () Bool)

(declare-fun tp!285389 () Bool)

(declare-fun tp!285387 () Bool)

(assert (=> b!913202 (= e!595448 (and tp!285389 tp!285387))))

(declare-fun b!913204 () Bool)

(declare-fun tp!285385 () Bool)

(declare-fun tp!285386 () Bool)

(assert (=> b!913204 (= e!595448 (and tp!285385 tp!285386))))

(declare-fun b!913203 () Bool)

(declare-fun tp!285388 () Bool)

(assert (=> b!913203 (= e!595448 tp!285388)))

(assert (=> b!912765 (= tp!285336 e!595448)))

(declare-fun b!913201 () Bool)

(assert (=> b!913201 (= e!595448 tp_is_empty!4533)))

(assert (= (and b!912765 ((_ is ElementMatch!2445) (regOne!5402 r!15766))) b!913201))

(assert (= (and b!912765 ((_ is Concat!4278) (regOne!5402 r!15766))) b!913202))

(assert (= (and b!912765 ((_ is Star!2445) (regOne!5402 r!15766))) b!913203))

(assert (= (and b!912765 ((_ is Union!2445) (regOne!5402 r!15766))) b!913204))

(declare-fun b!913206 () Bool)

(declare-fun e!595449 () Bool)

(declare-fun tp!285394 () Bool)

(declare-fun tp!285392 () Bool)

(assert (=> b!913206 (= e!595449 (and tp!285394 tp!285392))))

(declare-fun b!913208 () Bool)

(declare-fun tp!285390 () Bool)

(declare-fun tp!285391 () Bool)

(assert (=> b!913208 (= e!595449 (and tp!285390 tp!285391))))

(declare-fun b!913207 () Bool)

(declare-fun tp!285393 () Bool)

(assert (=> b!913207 (= e!595449 tp!285393)))

(assert (=> b!912765 (= tp!285331 e!595449)))

(declare-fun b!913205 () Bool)

(assert (=> b!913205 (= e!595449 tp_is_empty!4533)))

(assert (= (and b!912765 ((_ is ElementMatch!2445) (regTwo!5402 r!15766))) b!913205))

(assert (= (and b!912765 ((_ is Concat!4278) (regTwo!5402 r!15766))) b!913206))

(assert (= (and b!912765 ((_ is Star!2445) (regTwo!5402 r!15766))) b!913207))

(assert (= (and b!912765 ((_ is Union!2445) (regTwo!5402 r!15766))) b!913208))

(declare-fun b!913210 () Bool)

(declare-fun e!595450 () Bool)

(declare-fun tp!285399 () Bool)

(declare-fun tp!285397 () Bool)

(assert (=> b!913210 (= e!595450 (and tp!285399 tp!285397))))

(declare-fun b!913212 () Bool)

(declare-fun tp!285395 () Bool)

(declare-fun tp!285396 () Bool)

(assert (=> b!913212 (= e!595450 (and tp!285395 tp!285396))))

(declare-fun b!913211 () Bool)

(declare-fun tp!285398 () Bool)

(assert (=> b!913211 (= e!595450 tp!285398)))

(assert (=> b!912761 (= tp!285334 e!595450)))

(declare-fun b!913209 () Bool)

(assert (=> b!913209 (= e!595450 tp_is_empty!4533)))

(assert (= (and b!912761 ((_ is ElementMatch!2445) (regOne!5403 r!15766))) b!913209))

(assert (= (and b!912761 ((_ is Concat!4278) (regOne!5403 r!15766))) b!913210))

(assert (= (and b!912761 ((_ is Star!2445) (regOne!5403 r!15766))) b!913211))

(assert (= (and b!912761 ((_ is Union!2445) (regOne!5403 r!15766))) b!913212))

(declare-fun b!913214 () Bool)

(declare-fun e!595451 () Bool)

(declare-fun tp!285404 () Bool)

(declare-fun tp!285402 () Bool)

(assert (=> b!913214 (= e!595451 (and tp!285404 tp!285402))))

(declare-fun b!913216 () Bool)

(declare-fun tp!285400 () Bool)

(declare-fun tp!285401 () Bool)

(assert (=> b!913216 (= e!595451 (and tp!285400 tp!285401))))

(declare-fun b!913215 () Bool)

(declare-fun tp!285403 () Bool)

(assert (=> b!913215 (= e!595451 tp!285403)))

(assert (=> b!912761 (= tp!285332 e!595451)))

(declare-fun b!913213 () Bool)

(assert (=> b!913213 (= e!595451 tp_is_empty!4533)))

(assert (= (and b!912761 ((_ is ElementMatch!2445) (regTwo!5403 r!15766))) b!913213))

(assert (= (and b!912761 ((_ is Concat!4278) (regTwo!5403 r!15766))) b!913214))

(assert (= (and b!912761 ((_ is Star!2445) (regTwo!5403 r!15766))) b!913215))

(assert (= (and b!912761 ((_ is Union!2445) (regTwo!5403 r!15766))) b!913216))

(declare-fun b!913221 () Bool)

(declare-fun e!595454 () Bool)

(declare-fun tp!285407 () Bool)

(assert (=> b!913221 (= e!595454 (and tp_is_empty!4533 tp!285407))))

(assert (=> b!912762 (= tp!285335 e!595454)))

(assert (= (and b!912762 ((_ is Cons!9659) (t!100721 s!10566))) b!913221))

(declare-fun b!913223 () Bool)

(declare-fun e!595455 () Bool)

(declare-fun tp!285412 () Bool)

(declare-fun tp!285410 () Bool)

(assert (=> b!913223 (= e!595455 (and tp!285412 tp!285410))))

(declare-fun b!913225 () Bool)

(declare-fun tp!285408 () Bool)

(declare-fun tp!285409 () Bool)

(assert (=> b!913225 (= e!595455 (and tp!285408 tp!285409))))

(declare-fun b!913224 () Bool)

(declare-fun tp!285411 () Bool)

(assert (=> b!913224 (= e!595455 tp!285411)))

(assert (=> b!912763 (= tp!285333 e!595455)))

(declare-fun b!913222 () Bool)

(assert (=> b!913222 (= e!595455 tp_is_empty!4533)))

(assert (= (and b!912763 ((_ is ElementMatch!2445) (reg!2774 r!15766))) b!913222))

(assert (= (and b!912763 ((_ is Concat!4278) (reg!2774 r!15766))) b!913223))

(assert (= (and b!912763 ((_ is Star!2445) (reg!2774 r!15766))) b!913224))

(assert (= (and b!912763 ((_ is Union!2445) (reg!2774 r!15766))) b!913225))

(check-sat (not b!912865) (not b!913223) (not b!913207) (not b!913221) (not b!913203) (not b!912960) (not d!279496) (not b!912962) (not bm!54936) (not b!913215) (not bm!54939) (not bm!54938) (not d!279488) (not bm!54973) (not b!913183) (not b!913208) (not b!912958) (not d!279514) (not b!913188) (not b!913202) (not d!279516) (not bm!54954) (not b!913214) (not b!913179) (not d!279490) (not bm!54952) (not d!279492) (not bm!54992) (not b!913206) tp_is_empty!4533 (not b!913216) (not b!913181) (not b!913187) (not d!279482) (not b!913211) (not b!913224) (not d!279500) (not b!912835) (not b!912963) (not b!913204) (not b!913212) (not bm!54974) (not b!912955) (not b!913182) (not d!279502) (not b!913078) (not b!913225) (not b!913210) (not b!913076) (not b!912961) (not b!912822) (not bm!54941))
(check-sat)
