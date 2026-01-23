; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285258 () Bool)

(assert start!285258)

(declare-fun b!2934615 () Bool)

(assert (=> b!2934615 true))

(assert (=> b!2934615 true))

(assert (=> b!2934615 true))

(declare-fun lambda!109318 () Int)

(declare-fun lambda!109317 () Int)

(assert (=> b!2934615 (not (= lambda!109318 lambda!109317))))

(assert (=> b!2934615 true))

(assert (=> b!2934615 true))

(assert (=> b!2934615 true))

(declare-fun b!2934604 () Bool)

(declare-fun e!1850095 () Bool)

(declare-fun tp!939883 () Bool)

(assert (=> b!2934604 (= e!1850095 tp!939883)))

(declare-fun b!2934605 () Bool)

(declare-fun tp!939879 () Bool)

(declare-fun tp!939880 () Bool)

(assert (=> b!2934605 (= e!1850095 (and tp!939879 tp!939880))))

(declare-fun b!2934606 () Bool)

(declare-fun tp!939881 () Bool)

(declare-fun tp!939878 () Bool)

(assert (=> b!2934606 (= e!1850095 (and tp!939881 tp!939878))))

(declare-fun b!2934607 () Bool)

(declare-fun e!1850088 () Bool)

(declare-fun e!1850093 () Bool)

(assert (=> b!2934607 (= e!1850088 (not e!1850093))))

(declare-fun res!1211499 () Bool)

(assert (=> b!2934607 (=> res!1211499 e!1850093)))

(declare-fun lt!1028772 () Bool)

(declare-datatypes ((C!18310 0))(
  ( (C!18311 (val!11191 Int)) )
))
(declare-datatypes ((Regex!9062 0))(
  ( (ElementMatch!9062 (c!479451 C!18310)) (Concat!14383 (regOne!18636 Regex!9062) (regTwo!18636 Regex!9062)) (EmptyExpr!9062) (Star!9062 (reg!9391 Regex!9062)) (EmptyLang!9062) (Union!9062 (regOne!18637 Regex!9062) (regTwo!18637 Regex!9062)) )
))
(declare-fun r!17423 () Regex!9062)

(assert (=> b!2934607 (= res!1211499 (or (not lt!1028772) (is-Concat!14383 r!17423) (is-Union!9062 r!17423) (not (is-Star!9062 r!17423))))))

(declare-datatypes ((List!34927 0))(
  ( (Nil!34803) (Cons!34803 (h!40223 C!18310) (t!233992 List!34927)) )
))
(declare-fun s!11993 () List!34927)

(declare-fun matchRSpec!1199 (Regex!9062 List!34927) Bool)

(assert (=> b!2934607 (= lt!1028772 (matchRSpec!1199 r!17423 s!11993))))

(declare-fun matchR!3944 (Regex!9062 List!34927) Bool)

(assert (=> b!2934607 (= lt!1028772 (matchR!3944 r!17423 s!11993))))

(declare-datatypes ((Unit!48487 0))(
  ( (Unit!48488) )
))
(declare-fun lt!1028775 () Unit!48487)

(declare-fun mainMatchTheorem!1199 (Regex!9062 List!34927) Unit!48487)

(assert (=> b!2934607 (= lt!1028775 (mainMatchTheorem!1199 r!17423 s!11993))))

(declare-fun b!2934608 () Bool)

(declare-fun e!1850092 () Unit!48487)

(declare-fun Unit!48489 () Unit!48487)

(assert (=> b!2934608 (= e!1850092 Unit!48489)))

(declare-fun lt!1028778 () Unit!48487)

(declare-datatypes ((tuple2!33774 0))(
  ( (tuple2!33775 (_1!20019 List!34927) (_2!20019 List!34927)) )
))
(declare-fun lt!1028770 () tuple2!33774)

(assert (=> b!2934608 (= lt!1028778 (mainMatchTheorem!1199 (reg!9391 r!17423) (_1!20019 lt!1028770)))))

(assert (=> b!2934608 false))

(declare-fun b!2934609 () Bool)

(declare-fun tp_is_empty!15687 () Bool)

(assert (=> b!2934609 (= e!1850095 tp_is_empty!15687)))

(declare-fun b!2934611 () Bool)

(declare-fun res!1211501 () Bool)

(assert (=> b!2934611 (=> res!1211501 e!1850093)))

(declare-fun isEmpty!19062 (List!34927) Bool)

(assert (=> b!2934611 (= res!1211501 (isEmpty!19062 s!11993))))

(declare-fun b!2934612 () Bool)

(declare-fun res!1211506 () Bool)

(declare-fun e!1850090 () Bool)

(assert (=> b!2934612 (=> res!1211506 e!1850090)))

(declare-fun lt!1028776 () Regex!9062)

(assert (=> b!2934612 (= res!1211506 (not (matchR!3944 lt!1028776 (_2!20019 lt!1028770))))))

(declare-fun b!2934613 () Bool)

(declare-fun e!1850094 () Bool)

(assert (=> b!2934613 (= e!1850094 e!1850090)))

(declare-fun res!1211500 () Bool)

(assert (=> b!2934613 (=> res!1211500 e!1850090)))

(assert (=> b!2934613 (= res!1211500 (not (matchR!3944 (reg!9391 r!17423) (_1!20019 lt!1028770))))))

(declare-datatypes ((Option!6619 0))(
  ( (None!6618) (Some!6618 (v!34752 tuple2!33774)) )
))
(declare-fun lt!1028779 () Option!6619)

(declare-fun get!10642 (Option!6619) tuple2!33774)

(assert (=> b!2934613 (= lt!1028770 (get!10642 lt!1028779))))

(declare-fun b!2934614 () Bool)

(declare-fun e!1850091 () Bool)

(declare-fun tp!939882 () Bool)

(assert (=> b!2934614 (= e!1850091 (and tp_is_empty!15687 tp!939882))))

(assert (=> b!2934615 (= e!1850093 e!1850094)))

(declare-fun res!1211503 () Bool)

(assert (=> b!2934615 (=> res!1211503 e!1850094)))

(declare-fun lt!1028773 () Bool)

(assert (=> b!2934615 (= res!1211503 (not lt!1028773))))

(declare-fun Exists!1424 (Int) Bool)

(assert (=> b!2934615 (= (Exists!1424 lambda!109317) (Exists!1424 lambda!109318))))

(declare-fun lt!1028777 () Unit!48487)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!235 (Regex!9062 List!34927) Unit!48487)

(assert (=> b!2934615 (= lt!1028777 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!235 (reg!9391 r!17423) s!11993))))

(assert (=> b!2934615 (= lt!1028773 (Exists!1424 lambda!109317))))

(declare-fun isDefined!5170 (Option!6619) Bool)

(assert (=> b!2934615 (= lt!1028773 (isDefined!5170 lt!1028779))))

(declare-fun findConcatSeparation!1013 (Regex!9062 Regex!9062 List!34927 List!34927 List!34927) Option!6619)

(assert (=> b!2934615 (= lt!1028779 (findConcatSeparation!1013 (reg!9391 r!17423) lt!1028776 Nil!34803 s!11993 s!11993))))

(declare-fun lt!1028771 () Unit!48487)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!795 (Regex!9062 Regex!9062 List!34927) Unit!48487)

(assert (=> b!2934615 (= lt!1028771 (lemmaFindConcatSeparationEquivalentToExists!795 (reg!9391 r!17423) lt!1028776 s!11993))))

(assert (=> b!2934615 (= lt!1028776 (Star!9062 (reg!9391 r!17423)))))

(declare-fun b!2934616 () Bool)

(declare-fun e!1850089 () Bool)

(declare-fun validRegex!3795 (Regex!9062) Bool)

(assert (=> b!2934616 (= e!1850089 (validRegex!3795 (reg!9391 r!17423)))))

(declare-fun b!2934617 () Bool)

(declare-fun res!1211505 () Bool)

(assert (=> b!2934617 (=> res!1211505 e!1850089)))

(declare-fun lt!1028768 () Regex!9062)

(assert (=> b!2934617 (= res!1211505 (not (matchR!3944 lt!1028768 (_2!20019 lt!1028770))))))

(declare-fun b!2934618 () Bool)

(assert (=> b!2934618 (= e!1850090 e!1850089)))

(declare-fun res!1211502 () Bool)

(assert (=> b!2934618 (=> res!1211502 e!1850089)))

(declare-fun lt!1028780 () Regex!9062)

(assert (=> b!2934618 (= res!1211502 (not (= lt!1028780 lt!1028768)))))

(declare-fun lt!1028781 () Regex!9062)

(assert (=> b!2934618 (= lt!1028768 (Star!9062 lt!1028781))))

(assert (=> b!2934618 (matchR!3944 lt!1028780 (_2!20019 lt!1028770))))

(declare-fun simplify!69 (Regex!9062) Regex!9062)

(assert (=> b!2934618 (= lt!1028780 (simplify!69 lt!1028776))))

(declare-fun lt!1028769 () Unit!48487)

(declare-fun lemmaSimplifySound!65 (Regex!9062 List!34927) Unit!48487)

(assert (=> b!2934618 (= lt!1028769 (lemmaSimplifySound!65 lt!1028776 (_2!20019 lt!1028770)))))

(declare-fun lt!1028782 () Unit!48487)

(assert (=> b!2934618 (= lt!1028782 e!1850092)))

(declare-fun c!479450 () Bool)

(declare-fun size!26458 (List!34927) Int)

(assert (=> b!2934618 (= c!479450 (= (size!26458 (_2!20019 lt!1028770)) (size!26458 s!11993)))))

(assert (=> b!2934618 (matchR!3944 lt!1028781 (_1!20019 lt!1028770))))

(assert (=> b!2934618 (= lt!1028781 (simplify!69 (reg!9391 r!17423)))))

(declare-fun lt!1028774 () Unit!48487)

(assert (=> b!2934618 (= lt!1028774 (lemmaSimplifySound!65 (reg!9391 r!17423) (_1!20019 lt!1028770)))))

(declare-fun b!2934610 () Bool)

(declare-fun Unit!48490 () Unit!48487)

(assert (=> b!2934610 (= e!1850092 Unit!48490)))

(declare-fun res!1211504 () Bool)

(assert (=> start!285258 (=> (not res!1211504) (not e!1850088))))

(assert (=> start!285258 (= res!1211504 (validRegex!3795 r!17423))))

(assert (=> start!285258 e!1850088))

(assert (=> start!285258 e!1850095))

(assert (=> start!285258 e!1850091))

(assert (= (and start!285258 res!1211504) b!2934607))

(assert (= (and b!2934607 (not res!1211499)) b!2934611))

(assert (= (and b!2934611 (not res!1211501)) b!2934615))

(assert (= (and b!2934615 (not res!1211503)) b!2934613))

(assert (= (and b!2934613 (not res!1211500)) b!2934612))

(assert (= (and b!2934612 (not res!1211506)) b!2934618))

(assert (= (and b!2934618 c!479450) b!2934608))

(assert (= (and b!2934618 (not c!479450)) b!2934610))

(assert (= (and b!2934618 (not res!1211502)) b!2934617))

(assert (= (and b!2934617 (not res!1211505)) b!2934616))

(assert (= (and start!285258 (is-ElementMatch!9062 r!17423)) b!2934609))

(assert (= (and start!285258 (is-Concat!14383 r!17423)) b!2934605))

(assert (= (and start!285258 (is-Star!9062 r!17423)) b!2934604))

(assert (= (and start!285258 (is-Union!9062 r!17423)) b!2934606))

(assert (= (and start!285258 (is-Cons!34803 s!11993)) b!2934614))

(declare-fun m!3322929 () Bool)

(assert (=> b!2934618 m!3322929))

(declare-fun m!3322931 () Bool)

(assert (=> b!2934618 m!3322931))

(declare-fun m!3322933 () Bool)

(assert (=> b!2934618 m!3322933))

(declare-fun m!3322935 () Bool)

(assert (=> b!2934618 m!3322935))

(declare-fun m!3322937 () Bool)

(assert (=> b!2934618 m!3322937))

(declare-fun m!3322939 () Bool)

(assert (=> b!2934618 m!3322939))

(declare-fun m!3322941 () Bool)

(assert (=> b!2934618 m!3322941))

(declare-fun m!3322943 () Bool)

(assert (=> b!2934618 m!3322943))

(declare-fun m!3322945 () Bool)

(assert (=> b!2934612 m!3322945))

(declare-fun m!3322947 () Bool)

(assert (=> start!285258 m!3322947))

(declare-fun m!3322949 () Bool)

(assert (=> b!2934615 m!3322949))

(declare-fun m!3322951 () Bool)

(assert (=> b!2934615 m!3322951))

(declare-fun m!3322953 () Bool)

(assert (=> b!2934615 m!3322953))

(assert (=> b!2934615 m!3322953))

(declare-fun m!3322955 () Bool)

(assert (=> b!2934615 m!3322955))

(declare-fun m!3322957 () Bool)

(assert (=> b!2934615 m!3322957))

(declare-fun m!3322959 () Bool)

(assert (=> b!2934615 m!3322959))

(declare-fun m!3322961 () Bool)

(assert (=> b!2934617 m!3322961))

(declare-fun m!3322963 () Bool)

(assert (=> b!2934608 m!3322963))

(declare-fun m!3322965 () Bool)

(assert (=> b!2934611 m!3322965))

(declare-fun m!3322967 () Bool)

(assert (=> b!2934613 m!3322967))

(declare-fun m!3322969 () Bool)

(assert (=> b!2934613 m!3322969))

(declare-fun m!3322971 () Bool)

(assert (=> b!2934616 m!3322971))

(declare-fun m!3322973 () Bool)

(assert (=> b!2934607 m!3322973))

(declare-fun m!3322975 () Bool)

(assert (=> b!2934607 m!3322975))

(declare-fun m!3322977 () Bool)

(assert (=> b!2934607 m!3322977))

(push 1)

(assert (not b!2934614))

(assert (not b!2934615))

(assert (not b!2934604))

(assert (not b!2934608))

(assert (not b!2934611))

(assert (not b!2934618))

(assert (not b!2934607))

(assert (not b!2934612))

(assert (not b!2934606))

(assert (not b!2934605))

(assert (not start!285258))

(assert (not b!2934616))

(assert (not b!2934613))

(assert tp_is_empty!15687)

(assert (not b!2934617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!839739 () Bool)

(assert (=> d!839739 (= (matchR!3944 lt!1028776 (_2!20019 lt!1028770)) (matchR!3944 (simplify!69 lt!1028776) (_2!20019 lt!1028770)))))

(declare-fun lt!1028832 () Unit!48487)

(declare-fun choose!17361 (Regex!9062 List!34927) Unit!48487)

(assert (=> d!839739 (= lt!1028832 (choose!17361 lt!1028776 (_2!20019 lt!1028770)))))

(assert (=> d!839739 (validRegex!3795 lt!1028776)))

(assert (=> d!839739 (= (lemmaSimplifySound!65 lt!1028776 (_2!20019 lt!1028770)) lt!1028832)))

(declare-fun bs!525391 () Bool)

(assert (= bs!525391 d!839739))

(declare-fun m!3323035 () Bool)

(assert (=> bs!525391 m!3323035))

(assert (=> bs!525391 m!3322935))

(declare-fun m!3323037 () Bool)

(assert (=> bs!525391 m!3323037))

(assert (=> bs!525391 m!3322945))

(assert (=> bs!525391 m!3322935))

(declare-fun m!3323039 () Bool)

(assert (=> bs!525391 m!3323039))

(assert (=> b!2934618 d!839739))

(declare-fun c!479495 () Bool)

(declare-fun lt!1028852 () Regex!9062)

(declare-fun lt!1028850 () Regex!9062)

(declare-fun bm!192811 () Bool)

(declare-fun call!192816 () Bool)

(declare-fun isEmptyExpr!286 (Regex!9062) Bool)

(assert (=> bm!192811 (= call!192816 (isEmptyExpr!286 (ite c!479495 lt!1028850 lt!1028852)))))

(declare-fun b!2934797 () Bool)

(declare-fun e!1850194 () Regex!9062)

(assert (=> b!2934797 (= e!1850194 EmptyLang!9062)))

(declare-fun b!2934798 () Bool)

(declare-fun c!479503 () Bool)

(assert (=> b!2934798 (= c!479503 (is-EmptyExpr!9062 lt!1028776))))

(declare-fun e!1850202 () Regex!9062)

(declare-fun e!1850193 () Regex!9062)

(assert (=> b!2934798 (= e!1850202 e!1850193)))

(declare-fun b!2934799 () Bool)

(assert (=> b!2934799 (= e!1850194 e!1850202)))

(declare-fun c!479501 () Bool)

(assert (=> b!2934799 (= c!479501 (is-ElementMatch!9062 lt!1028776))))

(declare-fun bm!192812 () Bool)

(declare-fun call!192820 () Regex!9062)

(declare-fun c!479499 () Bool)

(assert (=> bm!192812 (= call!192820 (simplify!69 (ite c!479499 (regTwo!18637 lt!1028776) (regOne!18636 lt!1028776))))))

(declare-fun b!2934800 () Bool)

(declare-fun e!1850203 () Regex!9062)

(declare-fun e!1850195 () Regex!9062)

(assert (=> b!2934800 (= e!1850203 e!1850195)))

(declare-fun c!479493 () Bool)

(assert (=> b!2934800 (= c!479493 call!192816)))

(declare-fun b!2934801 () Bool)

(declare-fun c!479498 () Bool)

(declare-fun lt!1028849 () Regex!9062)

(assert (=> b!2934801 (= c!479498 (isEmptyExpr!286 lt!1028849))))

(declare-fun e!1850199 () Regex!9062)

(assert (=> b!2934801 (= e!1850199 e!1850203)))

(declare-fun b!2934802 () Bool)

(assert (=> b!2934802 (= e!1850203 lt!1028852)))

(declare-fun call!192817 () Bool)

(declare-fun bm!192813 () Bool)

(declare-fun lt!1028848 () Regex!9062)

(declare-fun isEmptyLang!201 (Regex!9062) Bool)

(assert (=> bm!192813 (= call!192817 (isEmptyLang!201 (ite c!479495 lt!1028850 (ite c!479499 lt!1028848 lt!1028852))))))

(declare-fun b!2934803 () Bool)

(assert (=> b!2934803 (= e!1850195 (Concat!14383 lt!1028849 lt!1028852))))

(declare-fun b!2934805 () Bool)

(declare-fun e!1850197 () Bool)

(declare-fun call!192819 () Bool)

(assert (=> b!2934805 (= e!1850197 call!192819)))

(declare-fun b!2934806 () Bool)

(assert (=> b!2934806 (= e!1850193 EmptyExpr!9062)))

(declare-fun b!2934807 () Bool)

(assert (=> b!2934807 (= c!479499 (is-Union!9062 lt!1028776))))

(declare-fun e!1850200 () Regex!9062)

(declare-fun e!1850201 () Regex!9062)

(assert (=> b!2934807 (= e!1850200 e!1850201)))

(declare-fun b!2934808 () Bool)

(declare-fun e!1850196 () Regex!9062)

(assert (=> b!2934808 (= e!1850196 (Star!9062 lt!1028850))))

(declare-fun b!2934809 () Bool)

(declare-fun e!1850204 () Regex!9062)

(assert (=> b!2934809 (= e!1850201 e!1850204)))

(declare-fun lt!1028853 () Regex!9062)

(declare-fun call!192818 () Regex!9062)

(assert (=> b!2934809 (= lt!1028853 call!192818)))

(assert (=> b!2934809 (= lt!1028848 call!192820)))

(declare-fun c!479497 () Bool)

(declare-fun call!192822 () Bool)

(assert (=> b!2934809 (= c!479497 call!192822)))

(declare-fun bm!192814 () Bool)

(assert (=> bm!192814 (= call!192822 (isEmptyLang!201 (ite c!479499 lt!1028853 lt!1028849)))))

(declare-fun b!2934810 () Bool)

(declare-fun e!1850205 () Regex!9062)

(assert (=> b!2934810 (= e!1850205 (Union!9062 lt!1028853 lt!1028848))))

(declare-fun call!192821 () Regex!9062)

(declare-fun bm!192815 () Bool)

(assert (=> bm!192815 (= call!192821 (simplify!69 (ite c!479495 (reg!9391 lt!1028776) (ite c!479499 (regOne!18637 lt!1028776) (regTwo!18636 lt!1028776)))))))

(declare-fun b!2934811 () Bool)

(assert (=> b!2934811 (= e!1850195 lt!1028849)))

(declare-fun b!2934812 () Bool)

(assert (=> b!2934812 (= e!1850196 EmptyExpr!9062)))

(declare-fun b!2934813 () Bool)

(assert (=> b!2934813 (= e!1850202 lt!1028776)))

(declare-fun b!2934814 () Bool)

(assert (=> b!2934814 (= e!1850201 e!1850199)))

(assert (=> b!2934814 (= lt!1028849 call!192820)))

(assert (=> b!2934814 (= lt!1028852 call!192818)))

(declare-fun res!1211582 () Bool)

(assert (=> b!2934814 (= res!1211582 call!192822)))

(assert (=> b!2934814 (=> res!1211582 e!1850197)))

(declare-fun c!479496 () Bool)

(assert (=> b!2934814 (= c!479496 e!1850197)))

(declare-fun b!2934815 () Bool)

(assert (=> b!2934815 (= e!1850199 EmptyLang!9062)))

(declare-fun b!2934816 () Bool)

(assert (=> b!2934816 (= e!1850205 lt!1028853)))

(declare-fun b!2934817 () Bool)

(declare-fun c!479494 () Bool)

(assert (=> b!2934817 (= c!479494 call!192819)))

(assert (=> b!2934817 (= e!1850204 e!1850205)))

(declare-fun b!2934818 () Bool)

(declare-fun c!479502 () Bool)

(declare-fun e!1850192 () Bool)

(assert (=> b!2934818 (= c!479502 e!1850192)))

(declare-fun res!1211584 () Bool)

(assert (=> b!2934818 (=> res!1211584 e!1850192)))

(assert (=> b!2934818 (= res!1211584 call!192817)))

(assert (=> b!2934818 (= lt!1028850 call!192821)))

(assert (=> b!2934818 (= e!1850200 e!1850196)))

(declare-fun b!2934819 () Bool)

(assert (=> b!2934819 (= e!1850193 e!1850200)))

(assert (=> b!2934819 (= c!479495 (is-Star!9062 lt!1028776))))

(declare-fun b!2934820 () Bool)

(assert (=> b!2934820 (= e!1850204 lt!1028848)))

(declare-fun bm!192816 () Bool)

(assert (=> bm!192816 (= call!192818 call!192821)))

(declare-fun d!839743 () Bool)

(declare-fun e!1850198 () Bool)

(assert (=> d!839743 e!1850198))

(declare-fun res!1211583 () Bool)

(assert (=> d!839743 (=> (not res!1211583) (not e!1850198))))

(declare-fun lt!1028851 () Regex!9062)

(assert (=> d!839743 (= res!1211583 (validRegex!3795 lt!1028851))))

(assert (=> d!839743 (= lt!1028851 e!1850194)))

(declare-fun c!479500 () Bool)

(assert (=> d!839743 (= c!479500 (is-EmptyLang!9062 lt!1028776))))

(assert (=> d!839743 (validRegex!3795 lt!1028776)))

(assert (=> d!839743 (= (simplify!69 lt!1028776) lt!1028851)))

(declare-fun b!2934804 () Bool)

(assert (=> b!2934804 (= e!1850192 call!192816)))

(declare-fun bm!192817 () Bool)

(assert (=> bm!192817 (= call!192819 call!192817)))

(declare-fun b!2934821 () Bool)

(declare-fun nullable!2856 (Regex!9062) Bool)

(assert (=> b!2934821 (= e!1850198 (= (nullable!2856 lt!1028851) (nullable!2856 lt!1028776)))))

(assert (= (and d!839743 c!479500) b!2934797))

(assert (= (and d!839743 (not c!479500)) b!2934799))

(assert (= (and b!2934799 c!479501) b!2934813))

(assert (= (and b!2934799 (not c!479501)) b!2934798))

(assert (= (and b!2934798 c!479503) b!2934806))

(assert (= (and b!2934798 (not c!479503)) b!2934819))

(assert (= (and b!2934819 c!479495) b!2934818))

(assert (= (and b!2934819 (not c!479495)) b!2934807))

(assert (= (and b!2934818 (not res!1211584)) b!2934804))

(assert (= (and b!2934818 c!479502) b!2934812))

(assert (= (and b!2934818 (not c!479502)) b!2934808))

(assert (= (and b!2934807 c!479499) b!2934809))

(assert (= (and b!2934807 (not c!479499)) b!2934814))

(assert (= (and b!2934809 c!479497) b!2934820))

(assert (= (and b!2934809 (not c!479497)) b!2934817))

(assert (= (and b!2934817 c!479494) b!2934816))

(assert (= (and b!2934817 (not c!479494)) b!2934810))

(assert (= (and b!2934814 (not res!1211582)) b!2934805))

(assert (= (and b!2934814 c!479496) b!2934815))

(assert (= (and b!2934814 (not c!479496)) b!2934801))

(assert (= (and b!2934801 c!479498) b!2934802))

(assert (= (and b!2934801 (not c!479498)) b!2934800))

(assert (= (and b!2934800 c!479493) b!2934811))

(assert (= (and b!2934800 (not c!479493)) b!2934803))

(assert (= (or b!2934809 b!2934814) bm!192816))

(assert (= (or b!2934809 b!2934814) bm!192812))

(assert (= (or b!2934809 b!2934814) bm!192814))

(assert (= (or b!2934817 b!2934805) bm!192817))

(assert (= (or b!2934804 b!2934800) bm!192811))

(assert (= (or b!2934818 bm!192816) bm!192815))

(assert (= (or b!2934818 bm!192817) bm!192813))

(assert (= (and d!839743 res!1211583) b!2934821))

(declare-fun m!3323043 () Bool)

(assert (=> b!2934821 m!3323043))

(declare-fun m!3323045 () Bool)

(assert (=> b!2934821 m!3323045))

(declare-fun m!3323047 () Bool)

(assert (=> bm!192815 m!3323047))

(declare-fun m!3323049 () Bool)

(assert (=> bm!192814 m!3323049))

(declare-fun m!3323051 () Bool)

(assert (=> bm!192813 m!3323051))

(declare-fun m!3323053 () Bool)

(assert (=> b!2934801 m!3323053))

(declare-fun m!3323055 () Bool)

(assert (=> d!839743 m!3323055))

(assert (=> d!839743 m!3323035))

(declare-fun m!3323057 () Bool)

(assert (=> bm!192812 m!3323057))

(declare-fun m!3323059 () Bool)

(assert (=> bm!192811 m!3323059))

(assert (=> b!2934618 d!839743))

(declare-fun d!839747 () Bool)

(assert (=> d!839747 (= (matchR!3944 (reg!9391 r!17423) (_1!20019 lt!1028770)) (matchR!3944 (simplify!69 (reg!9391 r!17423)) (_1!20019 lt!1028770)))))

(declare-fun lt!1028854 () Unit!48487)

(assert (=> d!839747 (= lt!1028854 (choose!17361 (reg!9391 r!17423) (_1!20019 lt!1028770)))))

(assert (=> d!839747 (validRegex!3795 (reg!9391 r!17423))))

(assert (=> d!839747 (= (lemmaSimplifySound!65 (reg!9391 r!17423) (_1!20019 lt!1028770)) lt!1028854)))

(declare-fun bs!525392 () Bool)

(assert (= bs!525392 d!839747))

(assert (=> bs!525392 m!3322971))

(assert (=> bs!525392 m!3322933))

(declare-fun m!3323061 () Bool)

(assert (=> bs!525392 m!3323061))

(assert (=> bs!525392 m!3322967))

(assert (=> bs!525392 m!3322933))

(declare-fun m!3323063 () Bool)

(assert (=> bs!525392 m!3323063))

(assert (=> b!2934618 d!839747))

(declare-fun b!2934864 () Bool)

(declare-fun e!1850230 () Bool)

(declare-fun head!6526 (List!34927) C!18310)

(assert (=> b!2934864 (= e!1850230 (= (head!6526 (_2!20019 lt!1028770)) (c!479451 lt!1028780)))))

(declare-fun b!2934865 () Bool)

(declare-fun e!1850232 () Bool)

(declare-fun e!1850233 () Bool)

(assert (=> b!2934865 (= e!1850232 e!1850233)))

(declare-fun c!479514 () Bool)

(assert (=> b!2934865 (= c!479514 (is-EmptyLang!9062 lt!1028780))))

(declare-fun b!2934866 () Bool)

(declare-fun res!1211614 () Bool)

(declare-fun e!1850228 () Bool)

(assert (=> b!2934866 (=> res!1211614 e!1850228)))

(declare-fun tail!4752 (List!34927) List!34927)

(assert (=> b!2934866 (= res!1211614 (not (isEmpty!19062 (tail!4752 (_2!20019 lt!1028770)))))))

(declare-fun b!2934867 () Bool)

(declare-fun e!1850229 () Bool)

(declare-fun derivativeStep!2467 (Regex!9062 C!18310) Regex!9062)

(assert (=> b!2934867 (= e!1850229 (matchR!3944 (derivativeStep!2467 lt!1028780 (head!6526 (_2!20019 lt!1028770))) (tail!4752 (_2!20019 lt!1028770))))))

(declare-fun b!2934868 () Bool)

(declare-fun e!1850227 () Bool)

(assert (=> b!2934868 (= e!1850227 e!1850228)))

(declare-fun res!1211613 () Bool)

(assert (=> b!2934868 (=> res!1211613 e!1850228)))

(declare-fun call!192826 () Bool)

(assert (=> b!2934868 (= res!1211613 call!192826)))

(declare-fun b!2934869 () Bool)

(declare-fun res!1211609 () Bool)

(assert (=> b!2934869 (=> (not res!1211609) (not e!1850230))))

(assert (=> b!2934869 (= res!1211609 (not call!192826))))

(declare-fun b!2934871 () Bool)

(assert (=> b!2934871 (= e!1850228 (not (= (head!6526 (_2!20019 lt!1028770)) (c!479451 lt!1028780))))))

(declare-fun b!2934872 () Bool)

(declare-fun lt!1028858 () Bool)

(assert (=> b!2934872 (= e!1850233 (not lt!1028858))))

(declare-fun b!2934873 () Bool)

(declare-fun res!1211615 () Bool)

(assert (=> b!2934873 (=> (not res!1211615) (not e!1850230))))

(assert (=> b!2934873 (= res!1211615 (isEmpty!19062 (tail!4752 (_2!20019 lt!1028770))))))

(declare-fun b!2934874 () Bool)

(assert (=> b!2934874 (= e!1850229 (nullable!2856 lt!1028780))))

(declare-fun b!2934875 () Bool)

(declare-fun res!1211611 () Bool)

(declare-fun e!1850231 () Bool)

(assert (=> b!2934875 (=> res!1211611 e!1850231)))

(assert (=> b!2934875 (= res!1211611 (not (is-ElementMatch!9062 lt!1028780)))))

(assert (=> b!2934875 (= e!1850233 e!1850231)))

(declare-fun b!2934876 () Bool)

(assert (=> b!2934876 (= e!1850232 (= lt!1028858 call!192826))))

(declare-fun d!839749 () Bool)

(assert (=> d!839749 e!1850232))

(declare-fun c!479515 () Bool)

(assert (=> d!839749 (= c!479515 (is-EmptyExpr!9062 lt!1028780))))

(assert (=> d!839749 (= lt!1028858 e!1850229)))

(declare-fun c!479513 () Bool)

(assert (=> d!839749 (= c!479513 (isEmpty!19062 (_2!20019 lt!1028770)))))

(assert (=> d!839749 (validRegex!3795 lt!1028780)))

(assert (=> d!839749 (= (matchR!3944 lt!1028780 (_2!20019 lt!1028770)) lt!1028858)))

(declare-fun b!2934870 () Bool)

(assert (=> b!2934870 (= e!1850231 e!1850227)))

(declare-fun res!1211616 () Bool)

(assert (=> b!2934870 (=> (not res!1211616) (not e!1850227))))

(assert (=> b!2934870 (= res!1211616 (not lt!1028858))))

(declare-fun b!2934877 () Bool)

(declare-fun res!1211610 () Bool)

(assert (=> b!2934877 (=> res!1211610 e!1850231)))

(assert (=> b!2934877 (= res!1211610 e!1850230)))

(declare-fun res!1211612 () Bool)

(assert (=> b!2934877 (=> (not res!1211612) (not e!1850230))))

(assert (=> b!2934877 (= res!1211612 lt!1028858)))

(declare-fun bm!192821 () Bool)

(assert (=> bm!192821 (= call!192826 (isEmpty!19062 (_2!20019 lt!1028770)))))

(assert (= (and d!839749 c!479513) b!2934874))

(assert (= (and d!839749 (not c!479513)) b!2934867))

(assert (= (and d!839749 c!479515) b!2934876))

(assert (= (and d!839749 (not c!479515)) b!2934865))

(assert (= (and b!2934865 c!479514) b!2934872))

(assert (= (and b!2934865 (not c!479514)) b!2934875))

(assert (= (and b!2934875 (not res!1211611)) b!2934877))

(assert (= (and b!2934877 res!1211612) b!2934869))

(assert (= (and b!2934869 res!1211609) b!2934873))

(assert (= (and b!2934873 res!1211615) b!2934864))

(assert (= (and b!2934877 (not res!1211610)) b!2934870))

(assert (= (and b!2934870 res!1211616) b!2934868))

(assert (= (and b!2934868 (not res!1211613)) b!2934866))

(assert (= (and b!2934866 (not res!1211614)) b!2934871))

(assert (= (or b!2934876 b!2934868 b!2934869) bm!192821))

(declare-fun m!3323081 () Bool)

(assert (=> d!839749 m!3323081))

(declare-fun m!3323083 () Bool)

(assert (=> d!839749 m!3323083))

(declare-fun m!3323085 () Bool)

(assert (=> b!2934864 m!3323085))

(assert (=> b!2934867 m!3323085))

(assert (=> b!2934867 m!3323085))

(declare-fun m!3323087 () Bool)

(assert (=> b!2934867 m!3323087))

(declare-fun m!3323089 () Bool)

(assert (=> b!2934867 m!3323089))

(assert (=> b!2934867 m!3323087))

(assert (=> b!2934867 m!3323089))

(declare-fun m!3323091 () Bool)

(assert (=> b!2934867 m!3323091))

(assert (=> b!2934866 m!3323089))

(assert (=> b!2934866 m!3323089))

(declare-fun m!3323093 () Bool)

(assert (=> b!2934866 m!3323093))

(assert (=> b!2934873 m!3323089))

(assert (=> b!2934873 m!3323089))

(assert (=> b!2934873 m!3323093))

(assert (=> bm!192821 m!3323081))

(assert (=> b!2934871 m!3323085))

(declare-fun m!3323095 () Bool)

(assert (=> b!2934874 m!3323095))

(assert (=> b!2934618 d!839749))

(declare-fun d!839753 () Bool)

(declare-fun lt!1028861 () Int)

(assert (=> d!839753 (>= lt!1028861 0)))

(declare-fun e!1850236 () Int)

(assert (=> d!839753 (= lt!1028861 e!1850236)))

(declare-fun c!479518 () Bool)

(assert (=> d!839753 (= c!479518 (is-Nil!34803 (_2!20019 lt!1028770)))))

(assert (=> d!839753 (= (size!26458 (_2!20019 lt!1028770)) lt!1028861)))

(declare-fun b!2934882 () Bool)

(assert (=> b!2934882 (= e!1850236 0)))

(declare-fun b!2934883 () Bool)

(assert (=> b!2934883 (= e!1850236 (+ 1 (size!26458 (t!233992 (_2!20019 lt!1028770)))))))

(assert (= (and d!839753 c!479518) b!2934882))

(assert (= (and d!839753 (not c!479518)) b!2934883))

(declare-fun m!3323097 () Bool)

(assert (=> b!2934883 m!3323097))

(assert (=> b!2934618 d!839753))

(declare-fun call!192827 () Bool)

(declare-fun lt!1028866 () Regex!9062)

(declare-fun bm!192822 () Bool)

(declare-fun c!479521 () Bool)

(declare-fun lt!1028864 () Regex!9062)

(assert (=> bm!192822 (= call!192827 (isEmptyExpr!286 (ite c!479521 lt!1028864 lt!1028866)))))

(declare-fun b!2934884 () Bool)

(declare-fun e!1850239 () Regex!9062)

(assert (=> b!2934884 (= e!1850239 EmptyLang!9062)))

(declare-fun b!2934885 () Bool)

(declare-fun c!479529 () Bool)

(assert (=> b!2934885 (= c!479529 (is-EmptyExpr!9062 (reg!9391 r!17423)))))

(declare-fun e!1850247 () Regex!9062)

(declare-fun e!1850238 () Regex!9062)

(assert (=> b!2934885 (= e!1850247 e!1850238)))

(declare-fun b!2934886 () Bool)

(assert (=> b!2934886 (= e!1850239 e!1850247)))

(declare-fun c!479527 () Bool)

(assert (=> b!2934886 (= c!479527 (is-ElementMatch!9062 (reg!9391 r!17423)))))

(declare-fun bm!192823 () Bool)

(declare-fun call!192831 () Regex!9062)

(declare-fun c!479525 () Bool)

(assert (=> bm!192823 (= call!192831 (simplify!69 (ite c!479525 (regTwo!18637 (reg!9391 r!17423)) (regOne!18636 (reg!9391 r!17423)))))))

(declare-fun b!2934887 () Bool)

(declare-fun e!1850248 () Regex!9062)

(declare-fun e!1850240 () Regex!9062)

(assert (=> b!2934887 (= e!1850248 e!1850240)))

(declare-fun c!479519 () Bool)

(assert (=> b!2934887 (= c!479519 call!192827)))

(declare-fun b!2934888 () Bool)

(declare-fun c!479524 () Bool)

(declare-fun lt!1028863 () Regex!9062)

(assert (=> b!2934888 (= c!479524 (isEmptyExpr!286 lt!1028863))))

(declare-fun e!1850244 () Regex!9062)

(assert (=> b!2934888 (= e!1850244 e!1850248)))

(declare-fun b!2934889 () Bool)

(assert (=> b!2934889 (= e!1850248 lt!1028866)))

(declare-fun call!192828 () Bool)

(declare-fun bm!192824 () Bool)

(declare-fun lt!1028862 () Regex!9062)

(assert (=> bm!192824 (= call!192828 (isEmptyLang!201 (ite c!479521 lt!1028864 (ite c!479525 lt!1028862 lt!1028866))))))

(declare-fun b!2934890 () Bool)

(assert (=> b!2934890 (= e!1850240 (Concat!14383 lt!1028863 lt!1028866))))

(declare-fun b!2934892 () Bool)

(declare-fun e!1850242 () Bool)

(declare-fun call!192830 () Bool)

(assert (=> b!2934892 (= e!1850242 call!192830)))

(declare-fun b!2934893 () Bool)

(assert (=> b!2934893 (= e!1850238 EmptyExpr!9062)))

(declare-fun b!2934894 () Bool)

(assert (=> b!2934894 (= c!479525 (is-Union!9062 (reg!9391 r!17423)))))

(declare-fun e!1850245 () Regex!9062)

(declare-fun e!1850246 () Regex!9062)

(assert (=> b!2934894 (= e!1850245 e!1850246)))

(declare-fun b!2934895 () Bool)

(declare-fun e!1850241 () Regex!9062)

(assert (=> b!2934895 (= e!1850241 (Star!9062 lt!1028864))))

(declare-fun b!2934896 () Bool)

(declare-fun e!1850249 () Regex!9062)

(assert (=> b!2934896 (= e!1850246 e!1850249)))

(declare-fun lt!1028867 () Regex!9062)

(declare-fun call!192829 () Regex!9062)

(assert (=> b!2934896 (= lt!1028867 call!192829)))

(assert (=> b!2934896 (= lt!1028862 call!192831)))

(declare-fun c!479523 () Bool)

(declare-fun call!192833 () Bool)

(assert (=> b!2934896 (= c!479523 call!192833)))

(declare-fun bm!192825 () Bool)

(assert (=> bm!192825 (= call!192833 (isEmptyLang!201 (ite c!479525 lt!1028867 lt!1028863)))))

(declare-fun b!2934897 () Bool)

(declare-fun e!1850250 () Regex!9062)

(assert (=> b!2934897 (= e!1850250 (Union!9062 lt!1028867 lt!1028862))))

(declare-fun bm!192826 () Bool)

(declare-fun call!192832 () Regex!9062)

(assert (=> bm!192826 (= call!192832 (simplify!69 (ite c!479521 (reg!9391 (reg!9391 r!17423)) (ite c!479525 (regOne!18637 (reg!9391 r!17423)) (regTwo!18636 (reg!9391 r!17423))))))))

(declare-fun b!2934898 () Bool)

(assert (=> b!2934898 (= e!1850240 lt!1028863)))

(declare-fun b!2934899 () Bool)

(assert (=> b!2934899 (= e!1850241 EmptyExpr!9062)))

(declare-fun b!2934900 () Bool)

(assert (=> b!2934900 (= e!1850247 (reg!9391 r!17423))))

(declare-fun b!2934901 () Bool)

(assert (=> b!2934901 (= e!1850246 e!1850244)))

(assert (=> b!2934901 (= lt!1028863 call!192831)))

(assert (=> b!2934901 (= lt!1028866 call!192829)))

(declare-fun res!1211617 () Bool)

(assert (=> b!2934901 (= res!1211617 call!192833)))

(assert (=> b!2934901 (=> res!1211617 e!1850242)))

(declare-fun c!479522 () Bool)

(assert (=> b!2934901 (= c!479522 e!1850242)))

(declare-fun b!2934902 () Bool)

(assert (=> b!2934902 (= e!1850244 EmptyLang!9062)))

(declare-fun b!2934903 () Bool)

(assert (=> b!2934903 (= e!1850250 lt!1028867)))

(declare-fun b!2934904 () Bool)

(declare-fun c!479520 () Bool)

(assert (=> b!2934904 (= c!479520 call!192830)))

(assert (=> b!2934904 (= e!1850249 e!1850250)))

(declare-fun b!2934905 () Bool)

(declare-fun c!479528 () Bool)

(declare-fun e!1850237 () Bool)

(assert (=> b!2934905 (= c!479528 e!1850237)))

(declare-fun res!1211619 () Bool)

(assert (=> b!2934905 (=> res!1211619 e!1850237)))

(assert (=> b!2934905 (= res!1211619 call!192828)))

(assert (=> b!2934905 (= lt!1028864 call!192832)))

(assert (=> b!2934905 (= e!1850245 e!1850241)))

(declare-fun b!2934906 () Bool)

(assert (=> b!2934906 (= e!1850238 e!1850245)))

(assert (=> b!2934906 (= c!479521 (is-Star!9062 (reg!9391 r!17423)))))

(declare-fun b!2934907 () Bool)

(assert (=> b!2934907 (= e!1850249 lt!1028862)))

(declare-fun bm!192827 () Bool)

(assert (=> bm!192827 (= call!192829 call!192832)))

(declare-fun d!839755 () Bool)

(declare-fun e!1850243 () Bool)

(assert (=> d!839755 e!1850243))

(declare-fun res!1211618 () Bool)

(assert (=> d!839755 (=> (not res!1211618) (not e!1850243))))

(declare-fun lt!1028865 () Regex!9062)

(assert (=> d!839755 (= res!1211618 (validRegex!3795 lt!1028865))))

(assert (=> d!839755 (= lt!1028865 e!1850239)))

(declare-fun c!479526 () Bool)

(assert (=> d!839755 (= c!479526 (is-EmptyLang!9062 (reg!9391 r!17423)))))

(assert (=> d!839755 (validRegex!3795 (reg!9391 r!17423))))

(assert (=> d!839755 (= (simplify!69 (reg!9391 r!17423)) lt!1028865)))

(declare-fun b!2934891 () Bool)

(assert (=> b!2934891 (= e!1850237 call!192827)))

(declare-fun bm!192828 () Bool)

(assert (=> bm!192828 (= call!192830 call!192828)))

(declare-fun b!2934908 () Bool)

(assert (=> b!2934908 (= e!1850243 (= (nullable!2856 lt!1028865) (nullable!2856 (reg!9391 r!17423))))))

(assert (= (and d!839755 c!479526) b!2934884))

(assert (= (and d!839755 (not c!479526)) b!2934886))

(assert (= (and b!2934886 c!479527) b!2934900))

(assert (= (and b!2934886 (not c!479527)) b!2934885))

(assert (= (and b!2934885 c!479529) b!2934893))

(assert (= (and b!2934885 (not c!479529)) b!2934906))

(assert (= (and b!2934906 c!479521) b!2934905))

(assert (= (and b!2934906 (not c!479521)) b!2934894))

(assert (= (and b!2934905 (not res!1211619)) b!2934891))

(assert (= (and b!2934905 c!479528) b!2934899))

(assert (= (and b!2934905 (not c!479528)) b!2934895))

(assert (= (and b!2934894 c!479525) b!2934896))

(assert (= (and b!2934894 (not c!479525)) b!2934901))

(assert (= (and b!2934896 c!479523) b!2934907))

(assert (= (and b!2934896 (not c!479523)) b!2934904))

(assert (= (and b!2934904 c!479520) b!2934903))

(assert (= (and b!2934904 (not c!479520)) b!2934897))

(assert (= (and b!2934901 (not res!1211617)) b!2934892))

(assert (= (and b!2934901 c!479522) b!2934902))

(assert (= (and b!2934901 (not c!479522)) b!2934888))

(assert (= (and b!2934888 c!479524) b!2934889))

(assert (= (and b!2934888 (not c!479524)) b!2934887))

(assert (= (and b!2934887 c!479519) b!2934898))

(assert (= (and b!2934887 (not c!479519)) b!2934890))

(assert (= (or b!2934896 b!2934901) bm!192827))

(assert (= (or b!2934896 b!2934901) bm!192823))

(assert (= (or b!2934896 b!2934901) bm!192825))

(assert (= (or b!2934904 b!2934892) bm!192828))

(assert (= (or b!2934891 b!2934887) bm!192822))

(assert (= (or b!2934905 bm!192827) bm!192826))

(assert (= (or b!2934905 bm!192828) bm!192824))

(assert (= (and d!839755 res!1211618) b!2934908))

(declare-fun m!3323099 () Bool)

(assert (=> b!2934908 m!3323099))

(declare-fun m!3323101 () Bool)

(assert (=> b!2934908 m!3323101))

(declare-fun m!3323103 () Bool)

(assert (=> bm!192826 m!3323103))

(declare-fun m!3323105 () Bool)

(assert (=> bm!192825 m!3323105))

(declare-fun m!3323107 () Bool)

(assert (=> bm!192824 m!3323107))

(declare-fun m!3323109 () Bool)

(assert (=> b!2934888 m!3323109))

(declare-fun m!3323111 () Bool)

(assert (=> d!839755 m!3323111))

(assert (=> d!839755 m!3322971))

(declare-fun m!3323113 () Bool)

(assert (=> bm!192823 m!3323113))

(declare-fun m!3323115 () Bool)

(assert (=> bm!192822 m!3323115))

(assert (=> b!2934618 d!839755))

(declare-fun d!839757 () Bool)

(declare-fun lt!1028868 () Int)

(assert (=> d!839757 (>= lt!1028868 0)))

(declare-fun e!1850251 () Int)

(assert (=> d!839757 (= lt!1028868 e!1850251)))

(declare-fun c!479530 () Bool)

(assert (=> d!839757 (= c!479530 (is-Nil!34803 s!11993))))

(assert (=> d!839757 (= (size!26458 s!11993) lt!1028868)))

(declare-fun b!2934909 () Bool)

(assert (=> b!2934909 (= e!1850251 0)))

(declare-fun b!2934910 () Bool)

(assert (=> b!2934910 (= e!1850251 (+ 1 (size!26458 (t!233992 s!11993))))))

(assert (= (and d!839757 c!479530) b!2934909))

(assert (= (and d!839757 (not c!479530)) b!2934910))

(declare-fun m!3323117 () Bool)

(assert (=> b!2934910 m!3323117))

(assert (=> b!2934618 d!839757))

(declare-fun b!2934911 () Bool)

(declare-fun e!1850255 () Bool)

(assert (=> b!2934911 (= e!1850255 (= (head!6526 (_1!20019 lt!1028770)) (c!479451 lt!1028781)))))

(declare-fun b!2934912 () Bool)

(declare-fun e!1850257 () Bool)

(declare-fun e!1850258 () Bool)

(assert (=> b!2934912 (= e!1850257 e!1850258)))

(declare-fun c!479532 () Bool)

(assert (=> b!2934912 (= c!479532 (is-EmptyLang!9062 lt!1028781))))

(declare-fun b!2934913 () Bool)

(declare-fun res!1211625 () Bool)

(declare-fun e!1850253 () Bool)

(assert (=> b!2934913 (=> res!1211625 e!1850253)))

(assert (=> b!2934913 (= res!1211625 (not (isEmpty!19062 (tail!4752 (_1!20019 lt!1028770)))))))

(declare-fun b!2934914 () Bool)

(declare-fun e!1850254 () Bool)

(assert (=> b!2934914 (= e!1850254 (matchR!3944 (derivativeStep!2467 lt!1028781 (head!6526 (_1!20019 lt!1028770))) (tail!4752 (_1!20019 lt!1028770))))))

(declare-fun b!2934915 () Bool)

(declare-fun e!1850252 () Bool)

(assert (=> b!2934915 (= e!1850252 e!1850253)))

(declare-fun res!1211624 () Bool)

(assert (=> b!2934915 (=> res!1211624 e!1850253)))

(declare-fun call!192834 () Bool)

(assert (=> b!2934915 (= res!1211624 call!192834)))

(declare-fun b!2934916 () Bool)

(declare-fun res!1211620 () Bool)

(assert (=> b!2934916 (=> (not res!1211620) (not e!1850255))))

(assert (=> b!2934916 (= res!1211620 (not call!192834))))

(declare-fun b!2934918 () Bool)

(assert (=> b!2934918 (= e!1850253 (not (= (head!6526 (_1!20019 lt!1028770)) (c!479451 lt!1028781))))))

(declare-fun b!2934919 () Bool)

(declare-fun lt!1028869 () Bool)

(assert (=> b!2934919 (= e!1850258 (not lt!1028869))))

(declare-fun b!2934920 () Bool)

(declare-fun res!1211626 () Bool)

(assert (=> b!2934920 (=> (not res!1211626) (not e!1850255))))

(assert (=> b!2934920 (= res!1211626 (isEmpty!19062 (tail!4752 (_1!20019 lt!1028770))))))

(declare-fun b!2934921 () Bool)

(assert (=> b!2934921 (= e!1850254 (nullable!2856 lt!1028781))))

(declare-fun b!2934922 () Bool)

(declare-fun res!1211622 () Bool)

(declare-fun e!1850256 () Bool)

(assert (=> b!2934922 (=> res!1211622 e!1850256)))

(assert (=> b!2934922 (= res!1211622 (not (is-ElementMatch!9062 lt!1028781)))))

(assert (=> b!2934922 (= e!1850258 e!1850256)))

(declare-fun b!2934923 () Bool)

(assert (=> b!2934923 (= e!1850257 (= lt!1028869 call!192834))))

(declare-fun d!839759 () Bool)

(assert (=> d!839759 e!1850257))

(declare-fun c!479533 () Bool)

(assert (=> d!839759 (= c!479533 (is-EmptyExpr!9062 lt!1028781))))

(assert (=> d!839759 (= lt!1028869 e!1850254)))

(declare-fun c!479531 () Bool)

(assert (=> d!839759 (= c!479531 (isEmpty!19062 (_1!20019 lt!1028770)))))

(assert (=> d!839759 (validRegex!3795 lt!1028781)))

(assert (=> d!839759 (= (matchR!3944 lt!1028781 (_1!20019 lt!1028770)) lt!1028869)))

(declare-fun b!2934917 () Bool)

(assert (=> b!2934917 (= e!1850256 e!1850252)))

(declare-fun res!1211627 () Bool)

(assert (=> b!2934917 (=> (not res!1211627) (not e!1850252))))

(assert (=> b!2934917 (= res!1211627 (not lt!1028869))))

(declare-fun b!2934924 () Bool)

(declare-fun res!1211621 () Bool)

(assert (=> b!2934924 (=> res!1211621 e!1850256)))

(assert (=> b!2934924 (= res!1211621 e!1850255)))

(declare-fun res!1211623 () Bool)

(assert (=> b!2934924 (=> (not res!1211623) (not e!1850255))))

(assert (=> b!2934924 (= res!1211623 lt!1028869)))

(declare-fun bm!192829 () Bool)

(assert (=> bm!192829 (= call!192834 (isEmpty!19062 (_1!20019 lt!1028770)))))

(assert (= (and d!839759 c!479531) b!2934921))

(assert (= (and d!839759 (not c!479531)) b!2934914))

(assert (= (and d!839759 c!479533) b!2934923))

(assert (= (and d!839759 (not c!479533)) b!2934912))

(assert (= (and b!2934912 c!479532) b!2934919))

(assert (= (and b!2934912 (not c!479532)) b!2934922))

(assert (= (and b!2934922 (not res!1211622)) b!2934924))

(assert (= (and b!2934924 res!1211623) b!2934916))

(assert (= (and b!2934916 res!1211620) b!2934920))

(assert (= (and b!2934920 res!1211626) b!2934911))

(assert (= (and b!2934924 (not res!1211621)) b!2934917))

(assert (= (and b!2934917 res!1211627) b!2934915))

(assert (= (and b!2934915 (not res!1211624)) b!2934913))

(assert (= (and b!2934913 (not res!1211625)) b!2934918))

(assert (= (or b!2934923 b!2934915 b!2934916) bm!192829))

(declare-fun m!3323119 () Bool)

(assert (=> d!839759 m!3323119))

(declare-fun m!3323121 () Bool)

(assert (=> d!839759 m!3323121))

(declare-fun m!3323123 () Bool)

(assert (=> b!2934911 m!3323123))

(assert (=> b!2934914 m!3323123))

(assert (=> b!2934914 m!3323123))

(declare-fun m!3323125 () Bool)

(assert (=> b!2934914 m!3323125))

(declare-fun m!3323127 () Bool)

(assert (=> b!2934914 m!3323127))

(assert (=> b!2934914 m!3323125))

(assert (=> b!2934914 m!3323127))

(declare-fun m!3323129 () Bool)

(assert (=> b!2934914 m!3323129))

(assert (=> b!2934913 m!3323127))

(assert (=> b!2934913 m!3323127))

(declare-fun m!3323131 () Bool)

(assert (=> b!2934913 m!3323131))

(assert (=> b!2934920 m!3323127))

(assert (=> b!2934920 m!3323127))

(assert (=> b!2934920 m!3323131))

(assert (=> bm!192829 m!3323119))

(assert (=> b!2934918 m!3323123))

(declare-fun m!3323133 () Bool)

(assert (=> b!2934921 m!3323133))

(assert (=> b!2934618 d!839759))

(declare-fun b!2934925 () Bool)

(declare-fun e!1850262 () Bool)

(assert (=> b!2934925 (= e!1850262 (= (head!6526 (_1!20019 lt!1028770)) (c!479451 (reg!9391 r!17423))))))

(declare-fun b!2934926 () Bool)

(declare-fun e!1850264 () Bool)

(declare-fun e!1850265 () Bool)

(assert (=> b!2934926 (= e!1850264 e!1850265)))

(declare-fun c!479535 () Bool)

(assert (=> b!2934926 (= c!479535 (is-EmptyLang!9062 (reg!9391 r!17423)))))

(declare-fun b!2934927 () Bool)

(declare-fun res!1211633 () Bool)

(declare-fun e!1850260 () Bool)

(assert (=> b!2934927 (=> res!1211633 e!1850260)))

(assert (=> b!2934927 (= res!1211633 (not (isEmpty!19062 (tail!4752 (_1!20019 lt!1028770)))))))

(declare-fun b!2934928 () Bool)

(declare-fun e!1850261 () Bool)

(assert (=> b!2934928 (= e!1850261 (matchR!3944 (derivativeStep!2467 (reg!9391 r!17423) (head!6526 (_1!20019 lt!1028770))) (tail!4752 (_1!20019 lt!1028770))))))

(declare-fun b!2934929 () Bool)

(declare-fun e!1850259 () Bool)

(assert (=> b!2934929 (= e!1850259 e!1850260)))

(declare-fun res!1211632 () Bool)

(assert (=> b!2934929 (=> res!1211632 e!1850260)))

(declare-fun call!192835 () Bool)

(assert (=> b!2934929 (= res!1211632 call!192835)))

(declare-fun b!2934930 () Bool)

(declare-fun res!1211628 () Bool)

(assert (=> b!2934930 (=> (not res!1211628) (not e!1850262))))

(assert (=> b!2934930 (= res!1211628 (not call!192835))))

(declare-fun b!2934932 () Bool)

(assert (=> b!2934932 (= e!1850260 (not (= (head!6526 (_1!20019 lt!1028770)) (c!479451 (reg!9391 r!17423)))))))

(declare-fun b!2934933 () Bool)

(declare-fun lt!1028870 () Bool)

(assert (=> b!2934933 (= e!1850265 (not lt!1028870))))

(declare-fun b!2934934 () Bool)

(declare-fun res!1211634 () Bool)

(assert (=> b!2934934 (=> (not res!1211634) (not e!1850262))))

(assert (=> b!2934934 (= res!1211634 (isEmpty!19062 (tail!4752 (_1!20019 lt!1028770))))))

(declare-fun b!2934935 () Bool)

(assert (=> b!2934935 (= e!1850261 (nullable!2856 (reg!9391 r!17423)))))

(declare-fun b!2934936 () Bool)

(declare-fun res!1211630 () Bool)

(declare-fun e!1850263 () Bool)

(assert (=> b!2934936 (=> res!1211630 e!1850263)))

(assert (=> b!2934936 (= res!1211630 (not (is-ElementMatch!9062 (reg!9391 r!17423))))))

(assert (=> b!2934936 (= e!1850265 e!1850263)))

(declare-fun b!2934937 () Bool)

(assert (=> b!2934937 (= e!1850264 (= lt!1028870 call!192835))))

(declare-fun d!839761 () Bool)

(assert (=> d!839761 e!1850264))

(declare-fun c!479536 () Bool)

(assert (=> d!839761 (= c!479536 (is-EmptyExpr!9062 (reg!9391 r!17423)))))

(assert (=> d!839761 (= lt!1028870 e!1850261)))

(declare-fun c!479534 () Bool)

(assert (=> d!839761 (= c!479534 (isEmpty!19062 (_1!20019 lt!1028770)))))

(assert (=> d!839761 (validRegex!3795 (reg!9391 r!17423))))

(assert (=> d!839761 (= (matchR!3944 (reg!9391 r!17423) (_1!20019 lt!1028770)) lt!1028870)))

(declare-fun b!2934931 () Bool)

(assert (=> b!2934931 (= e!1850263 e!1850259)))

(declare-fun res!1211635 () Bool)

(assert (=> b!2934931 (=> (not res!1211635) (not e!1850259))))

(assert (=> b!2934931 (= res!1211635 (not lt!1028870))))

(declare-fun b!2934938 () Bool)

(declare-fun res!1211629 () Bool)

(assert (=> b!2934938 (=> res!1211629 e!1850263)))

(assert (=> b!2934938 (= res!1211629 e!1850262)))

(declare-fun res!1211631 () Bool)

(assert (=> b!2934938 (=> (not res!1211631) (not e!1850262))))

(assert (=> b!2934938 (= res!1211631 lt!1028870)))

(declare-fun bm!192830 () Bool)

(assert (=> bm!192830 (= call!192835 (isEmpty!19062 (_1!20019 lt!1028770)))))

(assert (= (and d!839761 c!479534) b!2934935))

(assert (= (and d!839761 (not c!479534)) b!2934928))

(assert (= (and d!839761 c!479536) b!2934937))

(assert (= (and d!839761 (not c!479536)) b!2934926))

(assert (= (and b!2934926 c!479535) b!2934933))

(assert (= (and b!2934926 (not c!479535)) b!2934936))

(assert (= (and b!2934936 (not res!1211630)) b!2934938))

(assert (= (and b!2934938 res!1211631) b!2934930))

(assert (= (and b!2934930 res!1211628) b!2934934))

(assert (= (and b!2934934 res!1211634) b!2934925))

(assert (= (and b!2934938 (not res!1211629)) b!2934931))

(assert (= (and b!2934931 res!1211635) b!2934929))

(assert (= (and b!2934929 (not res!1211632)) b!2934927))

(assert (= (and b!2934927 (not res!1211633)) b!2934932))

(assert (= (or b!2934937 b!2934929 b!2934930) bm!192830))

(assert (=> d!839761 m!3323119))

(assert (=> d!839761 m!3322971))

(assert (=> b!2934925 m!3323123))

(assert (=> b!2934928 m!3323123))

(assert (=> b!2934928 m!3323123))

(declare-fun m!3323135 () Bool)

(assert (=> b!2934928 m!3323135))

(assert (=> b!2934928 m!3323127))

(assert (=> b!2934928 m!3323135))

(assert (=> b!2934928 m!3323127))

(declare-fun m!3323137 () Bool)

(assert (=> b!2934928 m!3323137))

(assert (=> b!2934927 m!3323127))

(assert (=> b!2934927 m!3323127))

(assert (=> b!2934927 m!3323131))

(assert (=> b!2934934 m!3323127))

(assert (=> b!2934934 m!3323127))

(assert (=> b!2934934 m!3323131))

(assert (=> bm!192830 m!3323119))

(assert (=> b!2934932 m!3323123))

(assert (=> b!2934935 m!3323101))

(assert (=> b!2934613 d!839761))

(declare-fun d!839763 () Bool)

(assert (=> d!839763 (= (get!10642 lt!1028779) (v!34752 lt!1028779))))

(assert (=> b!2934613 d!839763))

(declare-fun b!2934939 () Bool)

(declare-fun e!1850269 () Bool)

(assert (=> b!2934939 (= e!1850269 (= (head!6526 (_2!20019 lt!1028770)) (c!479451 lt!1028776)))))

(declare-fun b!2934940 () Bool)

(declare-fun e!1850271 () Bool)

(declare-fun e!1850272 () Bool)

(assert (=> b!2934940 (= e!1850271 e!1850272)))

(declare-fun c!479538 () Bool)

(assert (=> b!2934940 (= c!479538 (is-EmptyLang!9062 lt!1028776))))

(declare-fun b!2934941 () Bool)

(declare-fun res!1211641 () Bool)

(declare-fun e!1850267 () Bool)

(assert (=> b!2934941 (=> res!1211641 e!1850267)))

(assert (=> b!2934941 (= res!1211641 (not (isEmpty!19062 (tail!4752 (_2!20019 lt!1028770)))))))

(declare-fun b!2934942 () Bool)

(declare-fun e!1850268 () Bool)

(assert (=> b!2934942 (= e!1850268 (matchR!3944 (derivativeStep!2467 lt!1028776 (head!6526 (_2!20019 lt!1028770))) (tail!4752 (_2!20019 lt!1028770))))))

(declare-fun b!2934943 () Bool)

(declare-fun e!1850266 () Bool)

(assert (=> b!2934943 (= e!1850266 e!1850267)))

(declare-fun res!1211640 () Bool)

(assert (=> b!2934943 (=> res!1211640 e!1850267)))

(declare-fun call!192836 () Bool)

(assert (=> b!2934943 (= res!1211640 call!192836)))

(declare-fun b!2934944 () Bool)

(declare-fun res!1211636 () Bool)

(assert (=> b!2934944 (=> (not res!1211636) (not e!1850269))))

(assert (=> b!2934944 (= res!1211636 (not call!192836))))

(declare-fun b!2934946 () Bool)

(assert (=> b!2934946 (= e!1850267 (not (= (head!6526 (_2!20019 lt!1028770)) (c!479451 lt!1028776))))))

(declare-fun b!2934947 () Bool)

(declare-fun lt!1028871 () Bool)

(assert (=> b!2934947 (= e!1850272 (not lt!1028871))))

(declare-fun b!2934948 () Bool)

(declare-fun res!1211642 () Bool)

(assert (=> b!2934948 (=> (not res!1211642) (not e!1850269))))

(assert (=> b!2934948 (= res!1211642 (isEmpty!19062 (tail!4752 (_2!20019 lt!1028770))))))

(declare-fun b!2934949 () Bool)

(assert (=> b!2934949 (= e!1850268 (nullable!2856 lt!1028776))))

(declare-fun b!2934950 () Bool)

(declare-fun res!1211638 () Bool)

(declare-fun e!1850270 () Bool)

(assert (=> b!2934950 (=> res!1211638 e!1850270)))

(assert (=> b!2934950 (= res!1211638 (not (is-ElementMatch!9062 lt!1028776)))))

(assert (=> b!2934950 (= e!1850272 e!1850270)))

(declare-fun b!2934951 () Bool)

(assert (=> b!2934951 (= e!1850271 (= lt!1028871 call!192836))))

(declare-fun d!839765 () Bool)

(assert (=> d!839765 e!1850271))

(declare-fun c!479539 () Bool)

(assert (=> d!839765 (= c!479539 (is-EmptyExpr!9062 lt!1028776))))

(assert (=> d!839765 (= lt!1028871 e!1850268)))

(declare-fun c!479537 () Bool)

(assert (=> d!839765 (= c!479537 (isEmpty!19062 (_2!20019 lt!1028770)))))

(assert (=> d!839765 (validRegex!3795 lt!1028776)))

(assert (=> d!839765 (= (matchR!3944 lt!1028776 (_2!20019 lt!1028770)) lt!1028871)))

(declare-fun b!2934945 () Bool)

(assert (=> b!2934945 (= e!1850270 e!1850266)))

(declare-fun res!1211643 () Bool)

(assert (=> b!2934945 (=> (not res!1211643) (not e!1850266))))

(assert (=> b!2934945 (= res!1211643 (not lt!1028871))))

(declare-fun b!2934952 () Bool)

(declare-fun res!1211637 () Bool)

(assert (=> b!2934952 (=> res!1211637 e!1850270)))

(assert (=> b!2934952 (= res!1211637 e!1850269)))

(declare-fun res!1211639 () Bool)

(assert (=> b!2934952 (=> (not res!1211639) (not e!1850269))))

(assert (=> b!2934952 (= res!1211639 lt!1028871)))

(declare-fun bm!192831 () Bool)

(assert (=> bm!192831 (= call!192836 (isEmpty!19062 (_2!20019 lt!1028770)))))

(assert (= (and d!839765 c!479537) b!2934949))

(assert (= (and d!839765 (not c!479537)) b!2934942))

(assert (= (and d!839765 c!479539) b!2934951))

(assert (= (and d!839765 (not c!479539)) b!2934940))

(assert (= (and b!2934940 c!479538) b!2934947))

(assert (= (and b!2934940 (not c!479538)) b!2934950))

(assert (= (and b!2934950 (not res!1211638)) b!2934952))

(assert (= (and b!2934952 res!1211639) b!2934944))

(assert (= (and b!2934944 res!1211636) b!2934948))

(assert (= (and b!2934948 res!1211642) b!2934939))

(assert (= (and b!2934952 (not res!1211637)) b!2934945))

(assert (= (and b!2934945 res!1211643) b!2934943))

(assert (= (and b!2934943 (not res!1211640)) b!2934941))

(assert (= (and b!2934941 (not res!1211641)) b!2934946))

(assert (= (or b!2934951 b!2934943 b!2934944) bm!192831))

(assert (=> d!839765 m!3323081))

(assert (=> d!839765 m!3323035))

(assert (=> b!2934939 m!3323085))

(assert (=> b!2934942 m!3323085))

(assert (=> b!2934942 m!3323085))

(declare-fun m!3323139 () Bool)

(assert (=> b!2934942 m!3323139))

(assert (=> b!2934942 m!3323089))

(assert (=> b!2934942 m!3323139))

(assert (=> b!2934942 m!3323089))

(declare-fun m!3323141 () Bool)

(assert (=> b!2934942 m!3323141))

(assert (=> b!2934941 m!3323089))

(assert (=> b!2934941 m!3323089))

(assert (=> b!2934941 m!3323093))

(assert (=> b!2934948 m!3323089))

(assert (=> b!2934948 m!3323089))

(assert (=> b!2934948 m!3323093))

(assert (=> bm!192831 m!3323081))

(assert (=> b!2934946 m!3323085))

(assert (=> b!2934949 m!3323045))

(assert (=> b!2934612 d!839765))

(declare-fun bs!525393 () Bool)

(declare-fun b!2935040 () Bool)

(assert (= bs!525393 (and b!2935040 b!2934615)))

(declare-fun lambda!109331 () Int)

(assert (=> bs!525393 (not (= lambda!109331 lambda!109317))))

(assert (=> bs!525393 (= (= r!17423 lt!1028776) (= lambda!109331 lambda!109318))))

(assert (=> b!2935040 true))

(assert (=> b!2935040 true))

(declare-fun bs!525394 () Bool)

(declare-fun b!2935034 () Bool)

(assert (= bs!525394 (and b!2935034 b!2934615)))

(declare-fun lambda!109332 () Int)

(assert (=> bs!525394 (not (= lambda!109332 lambda!109317))))

(assert (=> bs!525394 (not (= lambda!109332 lambda!109318))))

(declare-fun bs!525395 () Bool)

(assert (= bs!525395 (and b!2935034 b!2935040)))

(assert (=> bs!525395 (not (= lambda!109332 lambda!109331))))

(assert (=> b!2935034 true))

(assert (=> b!2935034 true))

(declare-fun b!2935033 () Bool)

(declare-fun e!1850321 () Bool)

(declare-fun call!192849 () Bool)

(assert (=> b!2935033 (= e!1850321 call!192849)))

(declare-fun e!1850319 () Bool)

(declare-fun call!192850 () Bool)

(assert (=> b!2935034 (= e!1850319 call!192850)))

(declare-fun b!2935035 () Bool)

(declare-fun e!1850318 () Bool)

(assert (=> b!2935035 (= e!1850321 e!1850318)))

(declare-fun res!1211664 () Bool)

(assert (=> b!2935035 (= res!1211664 (not (is-EmptyLang!9062 r!17423)))))

(assert (=> b!2935035 (=> (not res!1211664) (not e!1850318))))

(declare-fun b!2935036 () Bool)

(declare-fun e!1850320 () Bool)

(assert (=> b!2935036 (= e!1850320 (matchRSpec!1199 (regTwo!18637 r!17423) s!11993))))

(declare-fun b!2935037 () Bool)

(declare-fun e!1850322 () Bool)

(assert (=> b!2935037 (= e!1850322 e!1850319)))

(declare-fun c!479571 () Bool)

(assert (=> b!2935037 (= c!479571 (is-Star!9062 r!17423))))

(declare-fun b!2935038 () Bool)

(assert (=> b!2935038 (= e!1850322 e!1850320)))

(declare-fun res!1211665 () Bool)

(assert (=> b!2935038 (= res!1211665 (matchRSpec!1199 (regOne!18637 r!17423) s!11993))))

(assert (=> b!2935038 (=> res!1211665 e!1850320)))

(declare-fun b!2935039 () Bool)

(declare-fun c!479570 () Bool)

(assert (=> b!2935039 (= c!479570 (is-ElementMatch!9062 r!17423))))

(declare-fun e!1850323 () Bool)

(assert (=> b!2935039 (= e!1850318 e!1850323)))

(declare-fun bm!192844 () Bool)

(assert (=> bm!192844 (= call!192849 (isEmpty!19062 s!11993))))

(declare-fun e!1850317 () Bool)

(assert (=> b!2935040 (= e!1850317 call!192850)))

(declare-fun b!2935041 () Bool)

(declare-fun c!479573 () Bool)

(assert (=> b!2935041 (= c!479573 (is-Union!9062 r!17423))))

(assert (=> b!2935041 (= e!1850323 e!1850322)))

(declare-fun b!2935042 () Bool)

(declare-fun res!1211666 () Bool)

(assert (=> b!2935042 (=> res!1211666 e!1850317)))

(assert (=> b!2935042 (= res!1211666 call!192849)))

(assert (=> b!2935042 (= e!1850319 e!1850317)))

(declare-fun b!2935043 () Bool)

(assert (=> b!2935043 (= e!1850323 (= s!11993 (Cons!34803 (c!479451 r!17423) Nil!34803)))))

(declare-fun d!839767 () Bool)

(declare-fun c!479572 () Bool)

(assert (=> d!839767 (= c!479572 (is-EmptyExpr!9062 r!17423))))

(assert (=> d!839767 (= (matchRSpec!1199 r!17423 s!11993) e!1850321)))

(declare-fun bm!192845 () Bool)

(assert (=> bm!192845 (= call!192850 (Exists!1424 (ite c!479571 lambda!109331 lambda!109332)))))

(assert (= (and d!839767 c!479572) b!2935033))

(assert (= (and d!839767 (not c!479572)) b!2935035))

(assert (= (and b!2935035 res!1211664) b!2935039))

(assert (= (and b!2935039 c!479570) b!2935043))

(assert (= (and b!2935039 (not c!479570)) b!2935041))

(assert (= (and b!2935041 c!479573) b!2935038))

(assert (= (and b!2935041 (not c!479573)) b!2935037))

(assert (= (and b!2935038 (not res!1211665)) b!2935036))

(assert (= (and b!2935037 c!479571) b!2935042))

(assert (= (and b!2935037 (not c!479571)) b!2935034))

(assert (= (and b!2935042 (not res!1211666)) b!2935040))

(assert (= (or b!2935040 b!2935034) bm!192845))

(assert (= (or b!2935033 b!2935042) bm!192844))

(declare-fun m!3323143 () Bool)

(assert (=> b!2935036 m!3323143))

(declare-fun m!3323145 () Bool)

(assert (=> b!2935038 m!3323145))

(assert (=> bm!192844 m!3322965))

(declare-fun m!3323147 () Bool)

(assert (=> bm!192845 m!3323147))

(assert (=> b!2934607 d!839767))

(declare-fun b!2935044 () Bool)

(declare-fun e!1850327 () Bool)

(assert (=> b!2935044 (= e!1850327 (= (head!6526 s!11993) (c!479451 r!17423)))))

(declare-fun b!2935045 () Bool)

(declare-fun e!1850329 () Bool)

(declare-fun e!1850330 () Bool)

(assert (=> b!2935045 (= e!1850329 e!1850330)))

(declare-fun c!479575 () Bool)

(assert (=> b!2935045 (= c!479575 (is-EmptyLang!9062 r!17423))))

(declare-fun b!2935046 () Bool)

(declare-fun res!1211672 () Bool)

(declare-fun e!1850325 () Bool)

(assert (=> b!2935046 (=> res!1211672 e!1850325)))

(assert (=> b!2935046 (= res!1211672 (not (isEmpty!19062 (tail!4752 s!11993))))))

(declare-fun b!2935047 () Bool)

(declare-fun e!1850326 () Bool)

(assert (=> b!2935047 (= e!1850326 (matchR!3944 (derivativeStep!2467 r!17423 (head!6526 s!11993)) (tail!4752 s!11993)))))

(declare-fun b!2935048 () Bool)

(declare-fun e!1850324 () Bool)

(assert (=> b!2935048 (= e!1850324 e!1850325)))

(declare-fun res!1211671 () Bool)

(assert (=> b!2935048 (=> res!1211671 e!1850325)))

(declare-fun call!192855 () Bool)

(assert (=> b!2935048 (= res!1211671 call!192855)))

(declare-fun b!2935049 () Bool)

(declare-fun res!1211667 () Bool)

(assert (=> b!2935049 (=> (not res!1211667) (not e!1850327))))

(assert (=> b!2935049 (= res!1211667 (not call!192855))))

(declare-fun b!2935051 () Bool)

(assert (=> b!2935051 (= e!1850325 (not (= (head!6526 s!11993) (c!479451 r!17423))))))

(declare-fun b!2935052 () Bool)

(declare-fun lt!1028884 () Bool)

(assert (=> b!2935052 (= e!1850330 (not lt!1028884))))

(declare-fun b!2935053 () Bool)

(declare-fun res!1211673 () Bool)

(assert (=> b!2935053 (=> (not res!1211673) (not e!1850327))))

(assert (=> b!2935053 (= res!1211673 (isEmpty!19062 (tail!4752 s!11993)))))

(declare-fun b!2935054 () Bool)

(assert (=> b!2935054 (= e!1850326 (nullable!2856 r!17423))))

(declare-fun b!2935055 () Bool)

(declare-fun res!1211669 () Bool)

(declare-fun e!1850328 () Bool)

(assert (=> b!2935055 (=> res!1211669 e!1850328)))

(assert (=> b!2935055 (= res!1211669 (not (is-ElementMatch!9062 r!17423)))))

(assert (=> b!2935055 (= e!1850330 e!1850328)))

(declare-fun b!2935056 () Bool)

(assert (=> b!2935056 (= e!1850329 (= lt!1028884 call!192855))))

(declare-fun d!839769 () Bool)

(assert (=> d!839769 e!1850329))

(declare-fun c!479576 () Bool)

(assert (=> d!839769 (= c!479576 (is-EmptyExpr!9062 r!17423))))

(assert (=> d!839769 (= lt!1028884 e!1850326)))

(declare-fun c!479574 () Bool)

(assert (=> d!839769 (= c!479574 (isEmpty!19062 s!11993))))

(assert (=> d!839769 (validRegex!3795 r!17423)))

(assert (=> d!839769 (= (matchR!3944 r!17423 s!11993) lt!1028884)))

(declare-fun b!2935050 () Bool)

(assert (=> b!2935050 (= e!1850328 e!1850324)))

(declare-fun res!1211674 () Bool)

(assert (=> b!2935050 (=> (not res!1211674) (not e!1850324))))

(assert (=> b!2935050 (= res!1211674 (not lt!1028884))))

(declare-fun b!2935057 () Bool)

(declare-fun res!1211668 () Bool)

(assert (=> b!2935057 (=> res!1211668 e!1850328)))

(assert (=> b!2935057 (= res!1211668 e!1850327)))

(declare-fun res!1211670 () Bool)

(assert (=> b!2935057 (=> (not res!1211670) (not e!1850327))))

(assert (=> b!2935057 (= res!1211670 lt!1028884)))

(declare-fun bm!192850 () Bool)

(assert (=> bm!192850 (= call!192855 (isEmpty!19062 s!11993))))

(assert (= (and d!839769 c!479574) b!2935054))

(assert (= (and d!839769 (not c!479574)) b!2935047))

(assert (= (and d!839769 c!479576) b!2935056))

(assert (= (and d!839769 (not c!479576)) b!2935045))

(assert (= (and b!2935045 c!479575) b!2935052))

(assert (= (and b!2935045 (not c!479575)) b!2935055))

(assert (= (and b!2935055 (not res!1211669)) b!2935057))

(assert (= (and b!2935057 res!1211670) b!2935049))

(assert (= (and b!2935049 res!1211667) b!2935053))

(assert (= (and b!2935053 res!1211673) b!2935044))

(assert (= (and b!2935057 (not res!1211668)) b!2935050))

(assert (= (and b!2935050 res!1211674) b!2935048))

(assert (= (and b!2935048 (not res!1211671)) b!2935046))

(assert (= (and b!2935046 (not res!1211672)) b!2935051))

(assert (= (or b!2935056 b!2935048 b!2935049) bm!192850))

(assert (=> d!839769 m!3322965))

(assert (=> d!839769 m!3322947))

(declare-fun m!3323149 () Bool)

(assert (=> b!2935044 m!3323149))

(assert (=> b!2935047 m!3323149))

(assert (=> b!2935047 m!3323149))

(declare-fun m!3323151 () Bool)

(assert (=> b!2935047 m!3323151))

(declare-fun m!3323153 () Bool)

(assert (=> b!2935047 m!3323153))

(assert (=> b!2935047 m!3323151))

(assert (=> b!2935047 m!3323153))

(declare-fun m!3323155 () Bool)

(assert (=> b!2935047 m!3323155))

(assert (=> b!2935046 m!3323153))

(assert (=> b!2935046 m!3323153))

(declare-fun m!3323157 () Bool)

(assert (=> b!2935046 m!3323157))

(assert (=> b!2935053 m!3323153))

(assert (=> b!2935053 m!3323153))

(assert (=> b!2935053 m!3323157))

(assert (=> bm!192850 m!3322965))

(assert (=> b!2935051 m!3323149))

(declare-fun m!3323159 () Bool)

(assert (=> b!2935054 m!3323159))

(assert (=> b!2934607 d!839769))

(declare-fun d!839771 () Bool)

(assert (=> d!839771 (= (matchR!3944 r!17423 s!11993) (matchRSpec!1199 r!17423 s!11993))))

(declare-fun lt!1028887 () Unit!48487)

(declare-fun choose!17362 (Regex!9062 List!34927) Unit!48487)

(assert (=> d!839771 (= lt!1028887 (choose!17362 r!17423 s!11993))))

(assert (=> d!839771 (validRegex!3795 r!17423)))

(assert (=> d!839771 (= (mainMatchTheorem!1199 r!17423 s!11993) lt!1028887)))

(declare-fun bs!525396 () Bool)

(assert (= bs!525396 d!839771))

(assert (=> bs!525396 m!3322975))

(assert (=> bs!525396 m!3322973))

(declare-fun m!3323161 () Bool)

(assert (=> bs!525396 m!3323161))

(assert (=> bs!525396 m!3322947))

(assert (=> b!2934607 d!839771))

(declare-fun d!839773 () Bool)

(assert (=> d!839773 (= (matchR!3944 (reg!9391 r!17423) (_1!20019 lt!1028770)) (matchRSpec!1199 (reg!9391 r!17423) (_1!20019 lt!1028770)))))

(declare-fun lt!1028888 () Unit!48487)

(assert (=> d!839773 (= lt!1028888 (choose!17362 (reg!9391 r!17423) (_1!20019 lt!1028770)))))

(assert (=> d!839773 (validRegex!3795 (reg!9391 r!17423))))

(assert (=> d!839773 (= (mainMatchTheorem!1199 (reg!9391 r!17423) (_1!20019 lt!1028770)) lt!1028888)))

(declare-fun bs!525397 () Bool)

(assert (= bs!525397 d!839773))

(assert (=> bs!525397 m!3322967))

(declare-fun m!3323163 () Bool)

(assert (=> bs!525397 m!3323163))

(declare-fun m!3323165 () Bool)

(assert (=> bs!525397 m!3323165))

(assert (=> bs!525397 m!3322971))

(assert (=> b!2934608 d!839773))

(declare-fun bs!525398 () Bool)

(declare-fun d!839775 () Bool)

(assert (= bs!525398 (and d!839775 b!2934615)))

(declare-fun lambda!109337 () Int)

(assert (=> bs!525398 (= (= (Star!9062 (reg!9391 r!17423)) lt!1028776) (= lambda!109337 lambda!109317))))

(assert (=> bs!525398 (not (= lambda!109337 lambda!109318))))

(declare-fun bs!525399 () Bool)

(assert (= bs!525399 (and d!839775 b!2935040)))

(assert (=> bs!525399 (not (= lambda!109337 lambda!109331))))

(declare-fun bs!525400 () Bool)

(assert (= bs!525400 (and d!839775 b!2935034)))

(assert (=> bs!525400 (not (= lambda!109337 lambda!109332))))

(assert (=> d!839775 true))

(assert (=> d!839775 true))

(declare-fun lambda!109338 () Int)

(assert (=> bs!525399 (= (= (Star!9062 (reg!9391 r!17423)) r!17423) (= lambda!109338 lambda!109331))))

(assert (=> bs!525398 (not (= lambda!109338 lambda!109317))))

(declare-fun bs!525401 () Bool)

(assert (= bs!525401 d!839775))

(assert (=> bs!525401 (not (= lambda!109338 lambda!109337))))

(assert (=> bs!525398 (= (= (Star!9062 (reg!9391 r!17423)) lt!1028776) (= lambda!109338 lambda!109318))))

(assert (=> bs!525400 (not (= lambda!109338 lambda!109332))))

(assert (=> d!839775 true))

(assert (=> d!839775 true))

(assert (=> d!839775 (= (Exists!1424 lambda!109337) (Exists!1424 lambda!109338))))

(declare-fun lt!1028891 () Unit!48487)

(declare-fun choose!17363 (Regex!9062 List!34927) Unit!48487)

(assert (=> d!839775 (= lt!1028891 (choose!17363 (reg!9391 r!17423) s!11993))))

(assert (=> d!839775 (validRegex!3795 (reg!9391 r!17423))))

(assert (=> d!839775 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!235 (reg!9391 r!17423) s!11993) lt!1028891)))

(declare-fun m!3323167 () Bool)

(assert (=> bs!525401 m!3323167))

(declare-fun m!3323169 () Bool)

(assert (=> bs!525401 m!3323169))

(declare-fun m!3323171 () Bool)

(assert (=> bs!525401 m!3323171))

(assert (=> bs!525401 m!3322971))

(assert (=> b!2934615 d!839775))

(declare-fun d!839777 () Bool)

(declare-fun choose!17364 (Int) Bool)

(assert (=> d!839777 (= (Exists!1424 lambda!109317) (choose!17364 lambda!109317))))

(declare-fun bs!525402 () Bool)

(assert (= bs!525402 d!839777))

(declare-fun m!3323173 () Bool)

(assert (=> bs!525402 m!3323173))

(assert (=> b!2934615 d!839777))

(declare-fun bs!525403 () Bool)

(declare-fun d!839779 () Bool)

(assert (= bs!525403 (and d!839779 b!2935040)))

(declare-fun lambda!109341 () Int)

(assert (=> bs!525403 (not (= lambda!109341 lambda!109331))))

(declare-fun bs!525404 () Bool)

(assert (= bs!525404 (and d!839779 d!839775)))

(assert (=> bs!525404 (not (= lambda!109341 lambda!109338))))

(declare-fun bs!525405 () Bool)

(assert (= bs!525405 (and d!839779 b!2934615)))

(assert (=> bs!525405 (= lambda!109341 lambda!109317)))

(assert (=> bs!525404 (= (= lt!1028776 (Star!9062 (reg!9391 r!17423))) (= lambda!109341 lambda!109337))))

(assert (=> bs!525405 (not (= lambda!109341 lambda!109318))))

(declare-fun bs!525406 () Bool)

(assert (= bs!525406 (and d!839779 b!2935034)))

(assert (=> bs!525406 (not (= lambda!109341 lambda!109332))))

(assert (=> d!839779 true))

(assert (=> d!839779 true))

(assert (=> d!839779 true))

(assert (=> d!839779 (= (isDefined!5170 (findConcatSeparation!1013 (reg!9391 r!17423) lt!1028776 Nil!34803 s!11993 s!11993)) (Exists!1424 lambda!109341))))

(declare-fun lt!1028906 () Unit!48487)

(declare-fun choose!17365 (Regex!9062 Regex!9062 List!34927) Unit!48487)

(assert (=> d!839779 (= lt!1028906 (choose!17365 (reg!9391 r!17423) lt!1028776 s!11993))))

(assert (=> d!839779 (validRegex!3795 (reg!9391 r!17423))))

(assert (=> d!839779 (= (lemmaFindConcatSeparationEquivalentToExists!795 (reg!9391 r!17423) lt!1028776 s!11993) lt!1028906)))

(declare-fun bs!525407 () Bool)

(assert (= bs!525407 d!839779))

(assert (=> bs!525407 m!3322959))

(declare-fun m!3323191 () Bool)

(assert (=> bs!525407 m!3323191))

(declare-fun m!3323193 () Bool)

(assert (=> bs!525407 m!3323193))

(assert (=> bs!525407 m!3322959))

(assert (=> bs!525407 m!3322971))

(declare-fun m!3323195 () Bool)

(assert (=> bs!525407 m!3323195))

(assert (=> b!2934615 d!839779))

(declare-fun d!839783 () Bool)

(assert (=> d!839783 (= (Exists!1424 lambda!109318) (choose!17364 lambda!109318))))

(declare-fun bs!525408 () Bool)

(assert (= bs!525408 d!839783))

(declare-fun m!3323197 () Bool)

(assert (=> bs!525408 m!3323197))

(assert (=> b!2934615 d!839783))

(declare-fun b!2935158 () Bool)

(declare-fun e!1850388 () Option!6619)

(assert (=> b!2935158 (= e!1850388 (Some!6618 (tuple2!33775 Nil!34803 s!11993)))))

(declare-fun b!2935160 () Bool)

(declare-fun res!1211715 () Bool)

(declare-fun e!1850389 () Bool)

(assert (=> b!2935160 (=> (not res!1211715) (not e!1850389))))

(declare-fun lt!1028921 () Option!6619)

(assert (=> b!2935160 (= res!1211715 (matchR!3944 (reg!9391 r!17423) (_1!20019 (get!10642 lt!1028921))))))

(declare-fun b!2935161 () Bool)

(declare-fun res!1211718 () Bool)

(assert (=> b!2935161 (=> (not res!1211718) (not e!1850389))))

(assert (=> b!2935161 (= res!1211718 (matchR!3944 lt!1028776 (_2!20019 (get!10642 lt!1028921))))))

(declare-fun b!2935162 () Bool)

(declare-fun e!1850386 () Bool)

(assert (=> b!2935162 (= e!1850386 (matchR!3944 lt!1028776 s!11993))))

(declare-fun b!2935163 () Bool)

(declare-fun lt!1028919 () Unit!48487)

(declare-fun lt!1028920 () Unit!48487)

(assert (=> b!2935163 (= lt!1028919 lt!1028920)))

(declare-fun ++!8308 (List!34927 List!34927) List!34927)

(assert (=> b!2935163 (= (++!8308 (++!8308 Nil!34803 (Cons!34803 (h!40223 s!11993) Nil!34803)) (t!233992 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!939 (List!34927 C!18310 List!34927 List!34927) Unit!48487)

(assert (=> b!2935163 (= lt!1028920 (lemmaMoveElementToOtherListKeepsConcatEq!939 Nil!34803 (h!40223 s!11993) (t!233992 s!11993) s!11993))))

(declare-fun e!1850385 () Option!6619)

(assert (=> b!2935163 (= e!1850385 (findConcatSeparation!1013 (reg!9391 r!17423) lt!1028776 (++!8308 Nil!34803 (Cons!34803 (h!40223 s!11993) Nil!34803)) (t!233992 s!11993) s!11993))))

(declare-fun b!2935159 () Bool)

(assert (=> b!2935159 (= e!1850389 (= (++!8308 (_1!20019 (get!10642 lt!1028921)) (_2!20019 (get!10642 lt!1028921))) s!11993))))

(declare-fun d!839785 () Bool)

(declare-fun e!1850387 () Bool)

(assert (=> d!839785 e!1850387))

(declare-fun res!1211719 () Bool)

(assert (=> d!839785 (=> res!1211719 e!1850387)))

(assert (=> d!839785 (= res!1211719 e!1850389)))

(declare-fun res!1211716 () Bool)

(assert (=> d!839785 (=> (not res!1211716) (not e!1850389))))

(assert (=> d!839785 (= res!1211716 (isDefined!5170 lt!1028921))))

(assert (=> d!839785 (= lt!1028921 e!1850388)))

(declare-fun c!479607 () Bool)

(assert (=> d!839785 (= c!479607 e!1850386)))

(declare-fun res!1211717 () Bool)

(assert (=> d!839785 (=> (not res!1211717) (not e!1850386))))

(assert (=> d!839785 (= res!1211717 (matchR!3944 (reg!9391 r!17423) Nil!34803))))

(assert (=> d!839785 (validRegex!3795 (reg!9391 r!17423))))

(assert (=> d!839785 (= (findConcatSeparation!1013 (reg!9391 r!17423) lt!1028776 Nil!34803 s!11993 s!11993) lt!1028921)))

(declare-fun b!2935164 () Bool)

(assert (=> b!2935164 (= e!1850387 (not (isDefined!5170 lt!1028921)))))

(declare-fun b!2935165 () Bool)

(assert (=> b!2935165 (= e!1850385 None!6618)))

(declare-fun b!2935166 () Bool)

(assert (=> b!2935166 (= e!1850388 e!1850385)))

(declare-fun c!479608 () Bool)

(assert (=> b!2935166 (= c!479608 (is-Nil!34803 s!11993))))

(assert (= (and d!839785 res!1211717) b!2935162))

(assert (= (and d!839785 c!479607) b!2935158))

(assert (= (and d!839785 (not c!479607)) b!2935166))

(assert (= (and b!2935166 c!479608) b!2935165))

(assert (= (and b!2935166 (not c!479608)) b!2935163))

(assert (= (and d!839785 res!1211716) b!2935160))

(assert (= (and b!2935160 res!1211715) b!2935161))

(assert (= (and b!2935161 res!1211718) b!2935159))

(assert (= (and d!839785 (not res!1211719)) b!2935164))

(declare-fun m!3323245 () Bool)

(assert (=> b!2935160 m!3323245))

(declare-fun m!3323247 () Bool)

(assert (=> b!2935160 m!3323247))

(assert (=> b!2935159 m!3323245))

(declare-fun m!3323249 () Bool)

(assert (=> b!2935159 m!3323249))

(assert (=> b!2935161 m!3323245))

(declare-fun m!3323251 () Bool)

(assert (=> b!2935161 m!3323251))

(declare-fun m!3323253 () Bool)

(assert (=> b!2935163 m!3323253))

(assert (=> b!2935163 m!3323253))

(declare-fun m!3323255 () Bool)

(assert (=> b!2935163 m!3323255))

(declare-fun m!3323257 () Bool)

(assert (=> b!2935163 m!3323257))

(assert (=> b!2935163 m!3323253))

(declare-fun m!3323259 () Bool)

(assert (=> b!2935163 m!3323259))

(declare-fun m!3323261 () Bool)

(assert (=> b!2935164 m!3323261))

(declare-fun m!3323263 () Bool)

(assert (=> b!2935162 m!3323263))

(assert (=> d!839785 m!3323261))

(declare-fun m!3323265 () Bool)

(assert (=> d!839785 m!3323265))

(assert (=> d!839785 m!3322971))

(assert (=> b!2934615 d!839785))

(declare-fun d!839797 () Bool)

(declare-fun isEmpty!19064 (Option!6619) Bool)

(assert (=> d!839797 (= (isDefined!5170 lt!1028779) (not (isEmpty!19064 lt!1028779)))))

(declare-fun bs!525411 () Bool)

(assert (= bs!525411 d!839797))

(declare-fun m!3323267 () Bool)

(assert (=> bs!525411 m!3323267))

(assert (=> b!2934615 d!839797))

(declare-fun b!2935185 () Bool)

(declare-fun e!1850408 () Bool)

(declare-fun e!1850404 () Bool)

(assert (=> b!2935185 (= e!1850408 e!1850404)))

(declare-fun c!479614 () Bool)

(assert (=> b!2935185 (= c!479614 (is-Star!9062 r!17423))))

(declare-fun b!2935186 () Bool)

(declare-fun e!1850410 () Bool)

(assert (=> b!2935186 (= e!1850404 e!1850410)))

(declare-fun c!479613 () Bool)

(assert (=> b!2935186 (= c!479613 (is-Union!9062 r!17423))))

(declare-fun b!2935187 () Bool)

(declare-fun e!1850405 () Bool)

(declare-fun call!192881 () Bool)

(assert (=> b!2935187 (= e!1850405 call!192881)))

(declare-fun bm!192874 () Bool)

(declare-fun call!192879 () Bool)

(declare-fun call!192880 () Bool)

(assert (=> bm!192874 (= call!192879 call!192880)))

(declare-fun b!2935188 () Bool)

(declare-fun e!1850406 () Bool)

(assert (=> b!2935188 (= e!1850406 call!192879)))

(declare-fun b!2935189 () Bool)

(declare-fun e!1850409 () Bool)

(assert (=> b!2935189 (= e!1850404 e!1850409)))

(declare-fun res!1211733 () Bool)

(assert (=> b!2935189 (= res!1211733 (not (nullable!2856 (reg!9391 r!17423))))))

(assert (=> b!2935189 (=> (not res!1211733) (not e!1850409))))

(declare-fun bm!192875 () Bool)

(assert (=> bm!192875 (= call!192880 (validRegex!3795 (ite c!479614 (reg!9391 r!17423) (ite c!479613 (regOne!18637 r!17423) (regTwo!18636 r!17423)))))))

(declare-fun b!2935190 () Bool)

(declare-fun res!1211731 () Bool)

(declare-fun e!1850407 () Bool)

(assert (=> b!2935190 (=> res!1211731 e!1850407)))

(assert (=> b!2935190 (= res!1211731 (not (is-Concat!14383 r!17423)))))

(assert (=> b!2935190 (= e!1850410 e!1850407)))

(declare-fun b!2935191 () Bool)

(assert (=> b!2935191 (= e!1850407 e!1850406)))

(declare-fun res!1211734 () Bool)

(assert (=> b!2935191 (=> (not res!1211734) (not e!1850406))))

(assert (=> b!2935191 (= res!1211734 call!192881)))

(declare-fun b!2935192 () Bool)

(declare-fun res!1211730 () Bool)

(assert (=> b!2935192 (=> (not res!1211730) (not e!1850405))))

(assert (=> b!2935192 (= res!1211730 call!192879)))

(assert (=> b!2935192 (= e!1850410 e!1850405)))

(declare-fun bm!192876 () Bool)

(assert (=> bm!192876 (= call!192881 (validRegex!3795 (ite c!479613 (regTwo!18637 r!17423) (regOne!18636 r!17423))))))

(declare-fun d!839799 () Bool)

(declare-fun res!1211732 () Bool)

(assert (=> d!839799 (=> res!1211732 e!1850408)))

(assert (=> d!839799 (= res!1211732 (is-ElementMatch!9062 r!17423))))

(assert (=> d!839799 (= (validRegex!3795 r!17423) e!1850408)))

(declare-fun b!2935193 () Bool)

(assert (=> b!2935193 (= e!1850409 call!192880)))

(assert (= (and d!839799 (not res!1211732)) b!2935185))

(assert (= (and b!2935185 c!479614) b!2935189))

(assert (= (and b!2935185 (not c!479614)) b!2935186))

(assert (= (and b!2935189 res!1211733) b!2935193))

(assert (= (and b!2935186 c!479613) b!2935192))

(assert (= (and b!2935186 (not c!479613)) b!2935190))

(assert (= (and b!2935192 res!1211730) b!2935187))

(assert (= (and b!2935190 (not res!1211731)) b!2935191))

(assert (= (and b!2935191 res!1211734) b!2935188))

(assert (= (or b!2935192 b!2935188) bm!192874))

(assert (= (or b!2935187 b!2935191) bm!192876))

(assert (= (or b!2935193 bm!192874) bm!192875))

(assert (=> b!2935189 m!3323101))

(declare-fun m!3323273 () Bool)

(assert (=> bm!192875 m!3323273))

(declare-fun m!3323275 () Bool)

(assert (=> bm!192876 m!3323275))

(assert (=> start!285258 d!839799))

(declare-fun b!2935208 () Bool)

(declare-fun e!1850421 () Bool)

(assert (=> b!2935208 (= e!1850421 (= (head!6526 (_2!20019 lt!1028770)) (c!479451 lt!1028768)))))

(declare-fun b!2935209 () Bool)

(declare-fun e!1850423 () Bool)

(declare-fun e!1850424 () Bool)

(assert (=> b!2935209 (= e!1850423 e!1850424)))

(declare-fun c!479619 () Bool)

(assert (=> b!2935209 (= c!479619 (is-EmptyLang!9062 lt!1028768))))

(declare-fun b!2935210 () Bool)

(declare-fun res!1211748 () Bool)

(declare-fun e!1850419 () Bool)

(assert (=> b!2935210 (=> res!1211748 e!1850419)))

(assert (=> b!2935210 (= res!1211748 (not (isEmpty!19062 (tail!4752 (_2!20019 lt!1028770)))))))

(declare-fun b!2935211 () Bool)

(declare-fun e!1850420 () Bool)

(assert (=> b!2935211 (= e!1850420 (matchR!3944 (derivativeStep!2467 lt!1028768 (head!6526 (_2!20019 lt!1028770))) (tail!4752 (_2!20019 lt!1028770))))))

(declare-fun b!2935212 () Bool)

(declare-fun e!1850418 () Bool)

(assert (=> b!2935212 (= e!1850418 e!1850419)))

(declare-fun res!1211747 () Bool)

(assert (=> b!2935212 (=> res!1211747 e!1850419)))

(declare-fun call!192883 () Bool)

(assert (=> b!2935212 (= res!1211747 call!192883)))

(declare-fun b!2935213 () Bool)

(declare-fun res!1211743 () Bool)

(assert (=> b!2935213 (=> (not res!1211743) (not e!1850421))))

(assert (=> b!2935213 (= res!1211743 (not call!192883))))

(declare-fun b!2935215 () Bool)

(assert (=> b!2935215 (= e!1850419 (not (= (head!6526 (_2!20019 lt!1028770)) (c!479451 lt!1028768))))))

(declare-fun b!2935216 () Bool)

(declare-fun lt!1028926 () Bool)

(assert (=> b!2935216 (= e!1850424 (not lt!1028926))))

(declare-fun b!2935217 () Bool)

(declare-fun res!1211749 () Bool)

(assert (=> b!2935217 (=> (not res!1211749) (not e!1850421))))

(assert (=> b!2935217 (= res!1211749 (isEmpty!19062 (tail!4752 (_2!20019 lt!1028770))))))

(declare-fun b!2935218 () Bool)

(assert (=> b!2935218 (= e!1850420 (nullable!2856 lt!1028768))))

(declare-fun b!2935219 () Bool)

(declare-fun res!1211745 () Bool)

(declare-fun e!1850422 () Bool)

(assert (=> b!2935219 (=> res!1211745 e!1850422)))

(assert (=> b!2935219 (= res!1211745 (not (is-ElementMatch!9062 lt!1028768)))))

(assert (=> b!2935219 (= e!1850424 e!1850422)))

(declare-fun b!2935220 () Bool)

(assert (=> b!2935220 (= e!1850423 (= lt!1028926 call!192883))))

(declare-fun d!839805 () Bool)

(assert (=> d!839805 e!1850423))

(declare-fun c!479620 () Bool)

(assert (=> d!839805 (= c!479620 (is-EmptyExpr!9062 lt!1028768))))

(assert (=> d!839805 (= lt!1028926 e!1850420)))

(declare-fun c!479618 () Bool)

(assert (=> d!839805 (= c!479618 (isEmpty!19062 (_2!20019 lt!1028770)))))

(assert (=> d!839805 (validRegex!3795 lt!1028768)))

(assert (=> d!839805 (= (matchR!3944 lt!1028768 (_2!20019 lt!1028770)) lt!1028926)))

(declare-fun b!2935214 () Bool)

(assert (=> b!2935214 (= e!1850422 e!1850418)))

(declare-fun res!1211750 () Bool)

(assert (=> b!2935214 (=> (not res!1211750) (not e!1850418))))

(assert (=> b!2935214 (= res!1211750 (not lt!1028926))))

(declare-fun b!2935221 () Bool)

(declare-fun res!1211744 () Bool)

(assert (=> b!2935221 (=> res!1211744 e!1850422)))

(assert (=> b!2935221 (= res!1211744 e!1850421)))

(declare-fun res!1211746 () Bool)

(assert (=> b!2935221 (=> (not res!1211746) (not e!1850421))))

(assert (=> b!2935221 (= res!1211746 lt!1028926)))

(declare-fun bm!192878 () Bool)

(assert (=> bm!192878 (= call!192883 (isEmpty!19062 (_2!20019 lt!1028770)))))

(assert (= (and d!839805 c!479618) b!2935218))

(assert (= (and d!839805 (not c!479618)) b!2935211))

(assert (= (and d!839805 c!479620) b!2935220))

(assert (= (and d!839805 (not c!479620)) b!2935209))

(assert (= (and b!2935209 c!479619) b!2935216))

(assert (= (and b!2935209 (not c!479619)) b!2935219))

(assert (= (and b!2935219 (not res!1211745)) b!2935221))

(assert (= (and b!2935221 res!1211746) b!2935213))

(assert (= (and b!2935213 res!1211743) b!2935217))

(assert (= (and b!2935217 res!1211749) b!2935208))

(assert (= (and b!2935221 (not res!1211744)) b!2935214))

(assert (= (and b!2935214 res!1211750) b!2935212))

(assert (= (and b!2935212 (not res!1211747)) b!2935210))

(assert (= (and b!2935210 (not res!1211748)) b!2935215))

(assert (= (or b!2935220 b!2935212 b!2935213) bm!192878))

(assert (=> d!839805 m!3323081))

(declare-fun m!3323277 () Bool)

(assert (=> d!839805 m!3323277))

(assert (=> b!2935208 m!3323085))

(assert (=> b!2935211 m!3323085))

(assert (=> b!2935211 m!3323085))

(declare-fun m!3323279 () Bool)

(assert (=> b!2935211 m!3323279))

(assert (=> b!2935211 m!3323089))

(assert (=> b!2935211 m!3323279))

(assert (=> b!2935211 m!3323089))

(declare-fun m!3323281 () Bool)

(assert (=> b!2935211 m!3323281))

(assert (=> b!2935210 m!3323089))

(assert (=> b!2935210 m!3323089))

(assert (=> b!2935210 m!3323093))

(assert (=> b!2935217 m!3323089))

(assert (=> b!2935217 m!3323089))

(assert (=> b!2935217 m!3323093))

(assert (=> bm!192878 m!3323081))

(assert (=> b!2935215 m!3323085))

(declare-fun m!3323283 () Bool)

(assert (=> b!2935218 m!3323283))

(assert (=> b!2934617 d!839805))

(declare-fun b!2935222 () Bool)

(declare-fun e!1850429 () Bool)

(declare-fun e!1850425 () Bool)

(assert (=> b!2935222 (= e!1850429 e!1850425)))

(declare-fun c!479622 () Bool)

(assert (=> b!2935222 (= c!479622 (is-Star!9062 (reg!9391 r!17423)))))

(declare-fun b!2935223 () Bool)

(declare-fun e!1850431 () Bool)

(assert (=> b!2935223 (= e!1850425 e!1850431)))

(declare-fun c!479621 () Bool)

(assert (=> b!2935223 (= c!479621 (is-Union!9062 (reg!9391 r!17423)))))

(declare-fun b!2935224 () Bool)

(declare-fun e!1850426 () Bool)

(declare-fun call!192886 () Bool)

(assert (=> b!2935224 (= e!1850426 call!192886)))

(declare-fun bm!192879 () Bool)

(declare-fun call!192884 () Bool)

(declare-fun call!192885 () Bool)

(assert (=> bm!192879 (= call!192884 call!192885)))

(declare-fun b!2935225 () Bool)

(declare-fun e!1850427 () Bool)

(assert (=> b!2935225 (= e!1850427 call!192884)))

(declare-fun b!2935226 () Bool)

(declare-fun e!1850430 () Bool)

(assert (=> b!2935226 (= e!1850425 e!1850430)))

(declare-fun res!1211754 () Bool)

(assert (=> b!2935226 (= res!1211754 (not (nullable!2856 (reg!9391 (reg!9391 r!17423)))))))

(assert (=> b!2935226 (=> (not res!1211754) (not e!1850430))))

(declare-fun bm!192880 () Bool)

(assert (=> bm!192880 (= call!192885 (validRegex!3795 (ite c!479622 (reg!9391 (reg!9391 r!17423)) (ite c!479621 (regOne!18637 (reg!9391 r!17423)) (regTwo!18636 (reg!9391 r!17423))))))))

(declare-fun b!2935227 () Bool)

(declare-fun res!1211752 () Bool)

(declare-fun e!1850428 () Bool)

(assert (=> b!2935227 (=> res!1211752 e!1850428)))

(assert (=> b!2935227 (= res!1211752 (not (is-Concat!14383 (reg!9391 r!17423))))))

(assert (=> b!2935227 (= e!1850431 e!1850428)))

(declare-fun b!2935228 () Bool)

(assert (=> b!2935228 (= e!1850428 e!1850427)))

(declare-fun res!1211755 () Bool)

(assert (=> b!2935228 (=> (not res!1211755) (not e!1850427))))

(assert (=> b!2935228 (= res!1211755 call!192886)))

(declare-fun b!2935229 () Bool)

(declare-fun res!1211751 () Bool)

(assert (=> b!2935229 (=> (not res!1211751) (not e!1850426))))

(assert (=> b!2935229 (= res!1211751 call!192884)))

(assert (=> b!2935229 (= e!1850431 e!1850426)))

(declare-fun bm!192881 () Bool)

(assert (=> bm!192881 (= call!192886 (validRegex!3795 (ite c!479621 (regTwo!18637 (reg!9391 r!17423)) (regOne!18636 (reg!9391 r!17423)))))))

(declare-fun d!839807 () Bool)

(declare-fun res!1211753 () Bool)

(assert (=> d!839807 (=> res!1211753 e!1850429)))

(assert (=> d!839807 (= res!1211753 (is-ElementMatch!9062 (reg!9391 r!17423)))))

(assert (=> d!839807 (= (validRegex!3795 (reg!9391 r!17423)) e!1850429)))

(declare-fun b!2935230 () Bool)

(assert (=> b!2935230 (= e!1850430 call!192885)))

(assert (= (and d!839807 (not res!1211753)) b!2935222))

(assert (= (and b!2935222 c!479622) b!2935226))

(assert (= (and b!2935222 (not c!479622)) b!2935223))

(assert (= (and b!2935226 res!1211754) b!2935230))

(assert (= (and b!2935223 c!479621) b!2935229))

(assert (= (and b!2935223 (not c!479621)) b!2935227))

(assert (= (and b!2935229 res!1211751) b!2935224))

(assert (= (and b!2935227 (not res!1211752)) b!2935228))

(assert (= (and b!2935228 res!1211755) b!2935225))

(assert (= (or b!2935229 b!2935225) bm!192879))

(assert (= (or b!2935224 b!2935228) bm!192881))

(assert (= (or b!2935230 bm!192879) bm!192880))

(declare-fun m!3323285 () Bool)

(assert (=> b!2935226 m!3323285))

(declare-fun m!3323287 () Bool)

(assert (=> bm!192880 m!3323287))

(declare-fun m!3323289 () Bool)

(assert (=> bm!192881 m!3323289))

(assert (=> b!2934616 d!839807))

(declare-fun d!839809 () Bool)

(assert (=> d!839809 (= (isEmpty!19062 s!11993) (is-Nil!34803 s!11993))))

(assert (=> b!2934611 d!839809))

(declare-fun b!2935235 () Bool)

(declare-fun e!1850434 () Bool)

(declare-fun tp!939904 () Bool)

(assert (=> b!2935235 (= e!1850434 (and tp_is_empty!15687 tp!939904))))

(assert (=> b!2934614 (= tp!939882 e!1850434)))

(assert (= (and b!2934614 (is-Cons!34803 (t!233992 s!11993))) b!2935235))

(declare-fun b!2935258 () Bool)

(declare-fun e!1850444 () Bool)

(declare-fun tp!939919 () Bool)

(declare-fun tp!939915 () Bool)

(assert (=> b!2935258 (= e!1850444 (and tp!939919 tp!939915))))

(declare-fun b!2935257 () Bool)

(declare-fun tp!939918 () Bool)

(assert (=> b!2935257 (= e!1850444 tp!939918)))

(declare-fun b!2935256 () Bool)

(declare-fun tp!939917 () Bool)

(declare-fun tp!939916 () Bool)

(assert (=> b!2935256 (= e!1850444 (and tp!939917 tp!939916))))

(declare-fun b!2935255 () Bool)

(assert (=> b!2935255 (= e!1850444 tp_is_empty!15687)))

(assert (=> b!2934605 (= tp!939879 e!1850444)))

(assert (= (and b!2934605 (is-ElementMatch!9062 (regOne!18636 r!17423))) b!2935255))

(assert (= (and b!2934605 (is-Concat!14383 (regOne!18636 r!17423))) b!2935256))

(assert (= (and b!2934605 (is-Star!9062 (regOne!18636 r!17423))) b!2935257))

(assert (= (and b!2934605 (is-Union!9062 (regOne!18636 r!17423))) b!2935258))

(declare-fun b!2935262 () Bool)

(declare-fun e!1850445 () Bool)

(declare-fun tp!939924 () Bool)

(declare-fun tp!939920 () Bool)

(assert (=> b!2935262 (= e!1850445 (and tp!939924 tp!939920))))

(declare-fun b!2935261 () Bool)

(declare-fun tp!939923 () Bool)

(assert (=> b!2935261 (= e!1850445 tp!939923)))

(declare-fun b!2935260 () Bool)

(declare-fun tp!939922 () Bool)

(declare-fun tp!939921 () Bool)

(assert (=> b!2935260 (= e!1850445 (and tp!939922 tp!939921))))

(declare-fun b!2935259 () Bool)

(assert (=> b!2935259 (= e!1850445 tp_is_empty!15687)))

(assert (=> b!2934605 (= tp!939880 e!1850445)))

(assert (= (and b!2934605 (is-ElementMatch!9062 (regTwo!18636 r!17423))) b!2935259))

(assert (= (and b!2934605 (is-Concat!14383 (regTwo!18636 r!17423))) b!2935260))

(assert (= (and b!2934605 (is-Star!9062 (regTwo!18636 r!17423))) b!2935261))

(assert (= (and b!2934605 (is-Union!9062 (regTwo!18636 r!17423))) b!2935262))

(declare-fun b!2935266 () Bool)

(declare-fun e!1850446 () Bool)

(declare-fun tp!939929 () Bool)

(declare-fun tp!939925 () Bool)

(assert (=> b!2935266 (= e!1850446 (and tp!939929 tp!939925))))

(declare-fun b!2935265 () Bool)

(declare-fun tp!939928 () Bool)

(assert (=> b!2935265 (= e!1850446 tp!939928)))

(declare-fun b!2935264 () Bool)

(declare-fun tp!939927 () Bool)

(declare-fun tp!939926 () Bool)

(assert (=> b!2935264 (= e!1850446 (and tp!939927 tp!939926))))

(declare-fun b!2935263 () Bool)

(assert (=> b!2935263 (= e!1850446 tp_is_empty!15687)))

(assert (=> b!2934604 (= tp!939883 e!1850446)))

(assert (= (and b!2934604 (is-ElementMatch!9062 (reg!9391 r!17423))) b!2935263))

(assert (= (and b!2934604 (is-Concat!14383 (reg!9391 r!17423))) b!2935264))

(assert (= (and b!2934604 (is-Star!9062 (reg!9391 r!17423))) b!2935265))

(assert (= (and b!2934604 (is-Union!9062 (reg!9391 r!17423))) b!2935266))

(declare-fun b!2935270 () Bool)

(declare-fun e!1850447 () Bool)

(declare-fun tp!939934 () Bool)

(declare-fun tp!939930 () Bool)

(assert (=> b!2935270 (= e!1850447 (and tp!939934 tp!939930))))

(declare-fun b!2935269 () Bool)

(declare-fun tp!939933 () Bool)

(assert (=> b!2935269 (= e!1850447 tp!939933)))

(declare-fun b!2935268 () Bool)

(declare-fun tp!939932 () Bool)

(declare-fun tp!939931 () Bool)

(assert (=> b!2935268 (= e!1850447 (and tp!939932 tp!939931))))

(declare-fun b!2935267 () Bool)

(assert (=> b!2935267 (= e!1850447 tp_is_empty!15687)))

(assert (=> b!2934606 (= tp!939881 e!1850447)))

(assert (= (and b!2934606 (is-ElementMatch!9062 (regOne!18637 r!17423))) b!2935267))

(assert (= (and b!2934606 (is-Concat!14383 (regOne!18637 r!17423))) b!2935268))

(assert (= (and b!2934606 (is-Star!9062 (regOne!18637 r!17423))) b!2935269))

(assert (= (and b!2934606 (is-Union!9062 (regOne!18637 r!17423))) b!2935270))

(declare-fun b!2935274 () Bool)

(declare-fun e!1850448 () Bool)

(declare-fun tp!939939 () Bool)

(declare-fun tp!939935 () Bool)

(assert (=> b!2935274 (= e!1850448 (and tp!939939 tp!939935))))

(declare-fun b!2935273 () Bool)

(declare-fun tp!939938 () Bool)

(assert (=> b!2935273 (= e!1850448 tp!939938)))

(declare-fun b!2935272 () Bool)

(declare-fun tp!939937 () Bool)

(declare-fun tp!939936 () Bool)

(assert (=> b!2935272 (= e!1850448 (and tp!939937 tp!939936))))

(declare-fun b!2935271 () Bool)

(assert (=> b!2935271 (= e!1850448 tp_is_empty!15687)))

(assert (=> b!2934606 (= tp!939878 e!1850448)))

(assert (= (and b!2934606 (is-ElementMatch!9062 (regTwo!18637 r!17423))) b!2935271))

(assert (= (and b!2934606 (is-Concat!14383 (regTwo!18637 r!17423))) b!2935272))

(assert (= (and b!2934606 (is-Star!9062 (regTwo!18637 r!17423))) b!2935273))

(assert (= (and b!2934606 (is-Union!9062 (regTwo!18637 r!17423))) b!2935274))

(push 1)

(assert (not d!839747))

(assert (not b!2935189))

(assert (not b!2935053))

(assert (not b!2935258))

(assert (not b!2934918))

(assert (not b!2935215))

(assert (not b!2934913))

(assert (not b!2934911))

(assert (not bm!192824))

(assert (not bm!192878))

(assert (not d!839775))

(assert (not b!2934941))

(assert (not d!839785))

(assert (not b!2935256))

(assert (not b!2934939))

(assert (not b!2935269))

(assert (not d!839771))

(assert (not bm!192821))

(assert (not b!2935046))

(assert (not d!839761))

(assert (not bm!192829))

(assert (not bm!192811))

(assert (not b!2934873))

(assert (not b!2935211))

(assert (not b!2934942))

(assert (not b!2934927))

(assert (not b!2934883))

(assert (not d!839797))

(assert (not bm!192830))

(assert (not b!2934864))

(assert (not b!2934821))

(assert (not d!839743))

(assert (not d!839773))

(assert (not b!2935164))

(assert (not b!2935161))

(assert (not b!2935163))

(assert (not b!2935038))

(assert (not b!2935210))

(assert (not b!2935273))

(assert (not bm!192814))

(assert (not d!839783))

(assert (not bm!192876))

(assert (not bm!192881))

(assert (not b!2934867))

(assert (not bm!192822))

(assert (not b!2934946))

(assert (not b!2935274))

(assert (not b!2934874))

(assert (not bm!192826))

(assert (not bm!192823))

(assert (not b!2934928))

(assert (not b!2935051))

(assert (not bm!192880))

(assert (not b!2935268))

(assert (not b!2935160))

(assert (not bm!192844))

(assert (not b!2934920))

(assert (not d!839769))

(assert (not b!2935272))

(assert (not bm!192812))

(assert (not bm!192875))

(assert (not d!839755))

(assert (not b!2934888))

(assert (not bm!192850))

(assert (not b!2934866))

(assert (not d!839759))

(assert (not b!2934934))

(assert (not b!2935265))

(assert (not b!2935217))

(assert (not b!2935047))

(assert (not b!2935218))

(assert (not b!2935054))

(assert (not b!2935235))

(assert (not d!839765))

(assert (not b!2934914))

(assert (not b!2934935))

(assert (not bm!192831))

(assert (not bm!192845))

(assert (not b!2934910))

(assert (not b!2934948))

(assert (not b!2935260))

(assert (not d!839749))

(assert (not d!839779))

(assert (not bm!192825))

(assert (not b!2934949))

(assert (not b!2934921))

(assert (not b!2935036))

(assert (not b!2934801))

(assert (not b!2935264))

(assert (not b!2935257))

(assert (not b!2935208))

(assert (not b!2935159))

(assert (not b!2934871))

(assert (not b!2935226))

(assert (not b!2935044))

(assert (not b!2935270))

(assert (not bm!192813))

(assert (not d!839777))

(assert tp_is_empty!15687)

(assert (not d!839805))

(assert (not d!839739))

(assert (not b!2935261))

(assert (not b!2935162))

(assert (not b!2934932))

(assert (not b!2935262))

(assert (not b!2934908))

(assert (not bm!192815))

(assert (not b!2935266))

(assert (not b!2934925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

