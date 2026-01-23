; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732148 () Bool)

(assert start!732148)

(declare-fun b!7583836 () Bool)

(declare-fun e!4513663 () Bool)

(declare-fun tp_is_empty!50541 () Bool)

(declare-fun tp!2210138 () Bool)

(assert (=> b!7583836 (= e!4513663 (and tp_is_empty!50541 tp!2210138))))

(declare-fun b!7583837 () Bool)

(declare-fun res!3038072 () Bool)

(declare-fun e!4513665 () Bool)

(assert (=> b!7583837 (=> (not res!3038072) (not e!4513665))))

(declare-datatypes ((C!40512 0))(
  ( (C!40513 (val!30696 Int)) )
))
(declare-datatypes ((Regex!20093 0))(
  ( (ElementMatch!20093 (c!1398842 C!40512)) (Concat!28938 (regOne!40698 Regex!20093) (regTwo!40698 Regex!20093)) (EmptyExpr!20093) (Star!20093 (reg!20422 Regex!20093)) (EmptyLang!20093) (Union!20093 (regOne!40699 Regex!20093) (regTwo!40699 Regex!20093)) )
))
(declare-fun r!22341 () Regex!20093)

(declare-fun lostCause!1869 (Regex!20093) Bool)

(assert (=> b!7583837 (= res!3038072 (lostCause!1869 r!22341))))

(declare-fun b!7583838 () Bool)

(declare-fun e!4513664 () Bool)

(declare-fun tp!2210137 () Bool)

(declare-fun tp!2210141 () Bool)

(assert (=> b!7583838 (= e!4513664 (and tp!2210137 tp!2210141))))

(declare-fun b!7583839 () Bool)

(declare-fun res!3038074 () Bool)

(assert (=> b!7583839 (=> (not res!3038074) (not e!4513665))))

(declare-datatypes ((List!72976 0))(
  ( (Nil!72852) (Cons!72852 (h!79300 C!40512) (t!387711 List!72976)) )
))
(declare-fun s!13436 () List!72976)

(declare-fun isEmpty!41527 (List!72976) Bool)

(assert (=> b!7583839 (= res!3038074 (not (isEmpty!41527 s!13436)))))

(declare-fun b!7583840 () Bool)

(declare-fun lt!2652837 () Bool)

(get-info :version)

(assert (=> b!7583840 (= e!4513665 (not (or ((_ is EmptyLang!20093) r!22341) ((_ is EmptyExpr!20093) r!22341) ((_ is ElementMatch!20093) r!22341) ((_ is Union!20093) r!22341) (not ((_ is Star!20093) r!22341)) (not lt!2652837))))))

(declare-fun matchRSpec!4406 (Regex!20093 List!72976) Bool)

(assert (=> b!7583840 (= lt!2652837 (matchRSpec!4406 r!22341 s!13436))))

(declare-fun matchR!9685 (Regex!20093 List!72976) Bool)

(assert (=> b!7583840 (= lt!2652837 (matchR!9685 r!22341 s!13436))))

(declare-datatypes ((Unit!167142 0))(
  ( (Unit!167143) )
))
(declare-fun lt!2652838 () Unit!167142)

(declare-fun mainMatchTheorem!4400 (Regex!20093 List!72976) Unit!167142)

(assert (=> b!7583840 (= lt!2652838 (mainMatchTheorem!4400 r!22341 s!13436))))

(declare-fun b!7583841 () Bool)

(declare-fun tp!2210139 () Bool)

(declare-fun tp!2210140 () Bool)

(assert (=> b!7583841 (= e!4513664 (and tp!2210139 tp!2210140))))

(declare-fun res!3038073 () Bool)

(assert (=> start!732148 (=> (not res!3038073) (not e!4513665))))

(declare-fun validRegex!10521 (Regex!20093) Bool)

(assert (=> start!732148 (= res!3038073 (validRegex!10521 r!22341))))

(assert (=> start!732148 e!4513665))

(assert (=> start!732148 e!4513664))

(assert (=> start!732148 e!4513663))

(declare-fun b!7583842 () Bool)

(declare-fun tp!2210136 () Bool)

(assert (=> b!7583842 (= e!4513664 tp!2210136)))

(declare-fun b!7583843 () Bool)

(assert (=> b!7583843 (= e!4513664 tp_is_empty!50541)))

(assert (= (and start!732148 res!3038073) b!7583837))

(assert (= (and b!7583837 res!3038072) b!7583839))

(assert (= (and b!7583839 res!3038074) b!7583840))

(assert (= (and start!732148 ((_ is ElementMatch!20093) r!22341)) b!7583843))

(assert (= (and start!732148 ((_ is Concat!28938) r!22341)) b!7583838))

(assert (= (and start!732148 ((_ is Star!20093) r!22341)) b!7583842))

(assert (= (and start!732148 ((_ is Union!20093) r!22341)) b!7583841))

(assert (= (and start!732148 ((_ is Cons!72852) s!13436)) b!7583836))

(declare-fun m!8136810 () Bool)

(assert (=> b!7583837 m!8136810))

(declare-fun m!8136812 () Bool)

(assert (=> b!7583839 m!8136812))

(declare-fun m!8136814 () Bool)

(assert (=> b!7583840 m!8136814))

(declare-fun m!8136816 () Bool)

(assert (=> b!7583840 m!8136816))

(declare-fun m!8136818 () Bool)

(assert (=> b!7583840 m!8136818))

(declare-fun m!8136820 () Bool)

(assert (=> start!732148 m!8136820))

(check-sat (not b!7583837) (not b!7583836) (not b!7583838) (not b!7583839) (not b!7583840) (not b!7583842) (not b!7583841) (not start!732148) tp_is_empty!50541)
(check-sat)
(get-model)

(declare-fun b!7584030 () Bool)

(assert (=> b!7584030 true))

(assert (=> b!7584030 true))

(declare-fun bs!1941148 () Bool)

(declare-fun b!7584034 () Bool)

(assert (= bs!1941148 (and b!7584034 b!7584030)))

(declare-fun lambda!467021 () Int)

(declare-fun lambda!467020 () Int)

(assert (=> bs!1941148 (not (= lambda!467021 lambda!467020))))

(assert (=> b!7584034 true))

(assert (=> b!7584034 true))

(declare-fun b!7584027 () Bool)

(declare-fun c!1398879 () Bool)

(assert (=> b!7584027 (= c!1398879 ((_ is ElementMatch!20093) r!22341))))

(declare-fun e!4513767 () Bool)

(declare-fun e!4513761 () Bool)

(assert (=> b!7584027 (= e!4513767 e!4513761)))

(declare-fun b!7584028 () Bool)

(declare-fun res!3038150 () Bool)

(declare-fun e!4513763 () Bool)

(assert (=> b!7584028 (=> res!3038150 e!4513763)))

(declare-fun call!695452 () Bool)

(assert (=> b!7584028 (= res!3038150 call!695452)))

(declare-fun e!4513765 () Bool)

(assert (=> b!7584028 (= e!4513765 e!4513763)))

(declare-fun d!2318742 () Bool)

(declare-fun c!1398881 () Bool)

(assert (=> d!2318742 (= c!1398881 ((_ is EmptyExpr!20093) r!22341))))

(declare-fun e!4513762 () Bool)

(assert (=> d!2318742 (= (matchRSpec!4406 r!22341 s!13436) e!4513762)))

(declare-fun b!7584029 () Bool)

(declare-fun c!1398878 () Bool)

(assert (=> b!7584029 (= c!1398878 ((_ is Union!20093) r!22341))))

(declare-fun e!4513766 () Bool)

(assert (=> b!7584029 (= e!4513761 e!4513766)))

(declare-fun call!695451 () Bool)

(assert (=> b!7584030 (= e!4513763 call!695451)))

(declare-fun bm!695446 () Bool)

(declare-fun c!1398880 () Bool)

(declare-fun Exists!4325 (Int) Bool)

(assert (=> bm!695446 (= call!695451 (Exists!4325 (ite c!1398880 lambda!467020 lambda!467021)))))

(declare-fun b!7584031 () Bool)

(assert (=> b!7584031 (= e!4513766 e!4513765)))

(assert (=> b!7584031 (= c!1398880 ((_ is Star!20093) r!22341))))

(declare-fun b!7584032 () Bool)

(assert (=> b!7584032 (= e!4513762 call!695452)))

(declare-fun b!7584033 () Bool)

(assert (=> b!7584033 (= e!4513762 e!4513767)))

(declare-fun res!3038151 () Bool)

(assert (=> b!7584033 (= res!3038151 (not ((_ is EmptyLang!20093) r!22341)))))

(assert (=> b!7584033 (=> (not res!3038151) (not e!4513767))))

(assert (=> b!7584034 (= e!4513765 call!695451)))

(declare-fun b!7584035 () Bool)

(assert (=> b!7584035 (= e!4513761 (= s!13436 (Cons!72852 (c!1398842 r!22341) Nil!72852)))))

(declare-fun bm!695447 () Bool)

(assert (=> bm!695447 (= call!695452 (isEmpty!41527 s!13436))))

(declare-fun b!7584036 () Bool)

(declare-fun e!4513764 () Bool)

(assert (=> b!7584036 (= e!4513764 (matchRSpec!4406 (regTwo!40699 r!22341) s!13436))))

(declare-fun b!7584037 () Bool)

(assert (=> b!7584037 (= e!4513766 e!4513764)))

(declare-fun res!3038149 () Bool)

(assert (=> b!7584037 (= res!3038149 (matchRSpec!4406 (regOne!40699 r!22341) s!13436))))

(assert (=> b!7584037 (=> res!3038149 e!4513764)))

(assert (= (and d!2318742 c!1398881) b!7584032))

(assert (= (and d!2318742 (not c!1398881)) b!7584033))

(assert (= (and b!7584033 res!3038151) b!7584027))

(assert (= (and b!7584027 c!1398879) b!7584035))

(assert (= (and b!7584027 (not c!1398879)) b!7584029))

(assert (= (and b!7584029 c!1398878) b!7584037))

(assert (= (and b!7584029 (not c!1398878)) b!7584031))

(assert (= (and b!7584037 (not res!3038149)) b!7584036))

(assert (= (and b!7584031 c!1398880) b!7584028))

(assert (= (and b!7584031 (not c!1398880)) b!7584034))

(assert (= (and b!7584028 (not res!3038150)) b!7584030))

(assert (= (or b!7584030 b!7584034) bm!695446))

(assert (= (or b!7584032 b!7584028) bm!695447))

(declare-fun m!8136850 () Bool)

(assert (=> bm!695446 m!8136850))

(assert (=> bm!695447 m!8136812))

(declare-fun m!8136852 () Bool)

(assert (=> b!7584036 m!8136852))

(declare-fun m!8136854 () Bool)

(assert (=> b!7584037 m!8136854))

(assert (=> b!7583840 d!2318742))

(declare-fun b!7584070 () Bool)

(declare-fun res!3038171 () Bool)

(declare-fun e!4513782 () Bool)

(assert (=> b!7584070 (=> (not res!3038171) (not e!4513782))))

(declare-fun call!695455 () Bool)

(assert (=> b!7584070 (= res!3038171 (not call!695455))))

(declare-fun d!2318756 () Bool)

(declare-fun e!4513784 () Bool)

(assert (=> d!2318756 e!4513784))

(declare-fun c!1398888 () Bool)

(assert (=> d!2318756 (= c!1398888 ((_ is EmptyExpr!20093) r!22341))))

(declare-fun lt!2652847 () Bool)

(declare-fun e!4513785 () Bool)

(assert (=> d!2318756 (= lt!2652847 e!4513785)))

(declare-fun c!1398889 () Bool)

(assert (=> d!2318756 (= c!1398889 (isEmpty!41527 s!13436))))

(assert (=> d!2318756 (validRegex!10521 r!22341)))

(assert (=> d!2318756 (= (matchR!9685 r!22341 s!13436) lt!2652847)))

(declare-fun b!7584071 () Bool)

(declare-fun res!3038173 () Bool)

(assert (=> b!7584071 (=> (not res!3038173) (not e!4513782))))

(declare-fun tail!15151 (List!72976) List!72976)

(assert (=> b!7584071 (= res!3038173 (isEmpty!41527 (tail!15151 s!13436)))))

(declare-fun b!7584072 () Bool)

(assert (=> b!7584072 (= e!4513784 (= lt!2652847 call!695455))))

(declare-fun b!7584073 () Bool)

(declare-fun e!4513787 () Bool)

(assert (=> b!7584073 (= e!4513784 e!4513787)))

(declare-fun c!1398890 () Bool)

(assert (=> b!7584073 (= c!1398890 ((_ is EmptyLang!20093) r!22341))))

(declare-fun b!7584074 () Bool)

(declare-fun e!4513788 () Bool)

(declare-fun e!4513786 () Bool)

(assert (=> b!7584074 (= e!4513788 e!4513786)))

(declare-fun res!3038175 () Bool)

(assert (=> b!7584074 (=> (not res!3038175) (not e!4513786))))

(assert (=> b!7584074 (= res!3038175 (not lt!2652847))))

(declare-fun b!7584075 () Bool)

(declare-fun res!3038170 () Bool)

(assert (=> b!7584075 (=> res!3038170 e!4513788)))

(assert (=> b!7584075 (= res!3038170 e!4513782)))

(declare-fun res!3038172 () Bool)

(assert (=> b!7584075 (=> (not res!3038172) (not e!4513782))))

(assert (=> b!7584075 (= res!3038172 lt!2652847)))

(declare-fun b!7584076 () Bool)

(declare-fun res!3038169 () Bool)

(declare-fun e!4513783 () Bool)

(assert (=> b!7584076 (=> res!3038169 e!4513783)))

(assert (=> b!7584076 (= res!3038169 (not (isEmpty!41527 (tail!15151 s!13436))))))

(declare-fun b!7584077 () Bool)

(declare-fun head!15611 (List!72976) C!40512)

(assert (=> b!7584077 (= e!4513782 (= (head!15611 s!13436) (c!1398842 r!22341)))))

(declare-fun b!7584078 () Bool)

(declare-fun res!3038174 () Bool)

(assert (=> b!7584078 (=> res!3038174 e!4513788)))

(assert (=> b!7584078 (= res!3038174 (not ((_ is ElementMatch!20093) r!22341)))))

(assert (=> b!7584078 (= e!4513787 e!4513788)))

(declare-fun b!7584079 () Bool)

(assert (=> b!7584079 (= e!4513786 e!4513783)))

(declare-fun res!3038168 () Bool)

(assert (=> b!7584079 (=> res!3038168 e!4513783)))

(assert (=> b!7584079 (= res!3038168 call!695455)))

(declare-fun b!7584080 () Bool)

(declare-fun nullable!8784 (Regex!20093) Bool)

(assert (=> b!7584080 (= e!4513785 (nullable!8784 r!22341))))

(declare-fun bm!695450 () Bool)

(assert (=> bm!695450 (= call!695455 (isEmpty!41527 s!13436))))

(declare-fun b!7584081 () Bool)

(declare-fun derivativeStep!5811 (Regex!20093 C!40512) Regex!20093)

(assert (=> b!7584081 (= e!4513785 (matchR!9685 (derivativeStep!5811 r!22341 (head!15611 s!13436)) (tail!15151 s!13436)))))

(declare-fun b!7584082 () Bool)

(assert (=> b!7584082 (= e!4513787 (not lt!2652847))))

(declare-fun b!7584083 () Bool)

(assert (=> b!7584083 (= e!4513783 (not (= (head!15611 s!13436) (c!1398842 r!22341))))))

(assert (= (and d!2318756 c!1398889) b!7584080))

(assert (= (and d!2318756 (not c!1398889)) b!7584081))

(assert (= (and d!2318756 c!1398888) b!7584072))

(assert (= (and d!2318756 (not c!1398888)) b!7584073))

(assert (= (and b!7584073 c!1398890) b!7584082))

(assert (= (and b!7584073 (not c!1398890)) b!7584078))

(assert (= (and b!7584078 (not res!3038174)) b!7584075))

(assert (= (and b!7584075 res!3038172) b!7584070))

(assert (= (and b!7584070 res!3038171) b!7584071))

(assert (= (and b!7584071 res!3038173) b!7584077))

(assert (= (and b!7584075 (not res!3038170)) b!7584074))

(assert (= (and b!7584074 res!3038175) b!7584079))

(assert (= (and b!7584079 (not res!3038168)) b!7584076))

(assert (= (and b!7584076 (not res!3038169)) b!7584083))

(assert (= (or b!7584072 b!7584070 b!7584079) bm!695450))

(assert (=> bm!695450 m!8136812))

(declare-fun m!8136856 () Bool)

(assert (=> b!7584071 m!8136856))

(assert (=> b!7584071 m!8136856))

(declare-fun m!8136858 () Bool)

(assert (=> b!7584071 m!8136858))

(declare-fun m!8136860 () Bool)

(assert (=> b!7584083 m!8136860))

(declare-fun m!8136862 () Bool)

(assert (=> b!7584080 m!8136862))

(assert (=> b!7584076 m!8136856))

(assert (=> b!7584076 m!8136856))

(assert (=> b!7584076 m!8136858))

(assert (=> b!7584081 m!8136860))

(assert (=> b!7584081 m!8136860))

(declare-fun m!8136864 () Bool)

(assert (=> b!7584081 m!8136864))

(assert (=> b!7584081 m!8136856))

(assert (=> b!7584081 m!8136864))

(assert (=> b!7584081 m!8136856))

(declare-fun m!8136866 () Bool)

(assert (=> b!7584081 m!8136866))

(assert (=> b!7584077 m!8136860))

(assert (=> d!2318756 m!8136812))

(assert (=> d!2318756 m!8136820))

(assert (=> b!7583840 d!2318756))

(declare-fun d!2318758 () Bool)

(assert (=> d!2318758 (= (matchR!9685 r!22341 s!13436) (matchRSpec!4406 r!22341 s!13436))))

(declare-fun lt!2652850 () Unit!167142)

(declare-fun choose!58630 (Regex!20093 List!72976) Unit!167142)

(assert (=> d!2318758 (= lt!2652850 (choose!58630 r!22341 s!13436))))

(assert (=> d!2318758 (validRegex!10521 r!22341)))

(assert (=> d!2318758 (= (mainMatchTheorem!4400 r!22341 s!13436) lt!2652850)))

(declare-fun bs!1941149 () Bool)

(assert (= bs!1941149 d!2318758))

(assert (=> bs!1941149 m!8136816))

(assert (=> bs!1941149 m!8136814))

(declare-fun m!8136868 () Bool)

(assert (=> bs!1941149 m!8136868))

(assert (=> bs!1941149 m!8136820))

(assert (=> b!7583840 d!2318758))

(declare-fun d!2318760 () Bool)

(assert (=> d!2318760 (= (isEmpty!41527 s!13436) ((_ is Nil!72852) s!13436))))

(assert (=> b!7583839 d!2318760))

(declare-fun b!7584102 () Bool)

(declare-fun e!4513804 () Bool)

(declare-fun call!695463 () Bool)

(assert (=> b!7584102 (= e!4513804 call!695463)))

(declare-fun d!2318762 () Bool)

(declare-fun res!3038188 () Bool)

(declare-fun e!4513805 () Bool)

(assert (=> d!2318762 (=> res!3038188 e!4513805)))

(assert (=> d!2318762 (= res!3038188 ((_ is ElementMatch!20093) r!22341))))

(assert (=> d!2318762 (= (validRegex!10521 r!22341) e!4513805)))

(declare-fun b!7584103 () Bool)

(declare-fun e!4513806 () Bool)

(declare-fun e!4513809 () Bool)

(assert (=> b!7584103 (= e!4513806 e!4513809)))

(declare-fun c!1398895 () Bool)

(assert (=> b!7584103 (= c!1398895 ((_ is Union!20093) r!22341))))

(declare-fun bm!695457 () Bool)

(declare-fun call!695464 () Bool)

(assert (=> bm!695457 (= call!695464 call!695463)))

(declare-fun b!7584104 () Bool)

(assert (=> b!7584104 (= e!4513806 e!4513804)))

(declare-fun res!3038190 () Bool)

(assert (=> b!7584104 (= res!3038190 (not (nullable!8784 (reg!20422 r!22341))))))

(assert (=> b!7584104 (=> (not res!3038190) (not e!4513804))))

(declare-fun b!7584105 () Bool)

(declare-fun e!4513803 () Bool)

(declare-fun e!4513808 () Bool)

(assert (=> b!7584105 (= e!4513803 e!4513808)))

(declare-fun res!3038187 () Bool)

(assert (=> b!7584105 (=> (not res!3038187) (not e!4513808))))

(assert (=> b!7584105 (= res!3038187 call!695464)))

(declare-fun b!7584106 () Bool)

(assert (=> b!7584106 (= e!4513805 e!4513806)))

(declare-fun c!1398896 () Bool)

(assert (=> b!7584106 (= c!1398896 ((_ is Star!20093) r!22341))))

(declare-fun b!7584107 () Bool)

(declare-fun res!3038186 () Bool)

(declare-fun e!4513807 () Bool)

(assert (=> b!7584107 (=> (not res!3038186) (not e!4513807))))

(declare-fun call!695462 () Bool)

(assert (=> b!7584107 (= res!3038186 call!695462)))

(assert (=> b!7584107 (= e!4513809 e!4513807)))

(declare-fun bm!695458 () Bool)

(assert (=> bm!695458 (= call!695463 (validRegex!10521 (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))))))

(declare-fun b!7584108 () Bool)

(declare-fun res!3038189 () Bool)

(assert (=> b!7584108 (=> res!3038189 e!4513803)))

(assert (=> b!7584108 (= res!3038189 (not ((_ is Concat!28938) r!22341)))))

(assert (=> b!7584108 (= e!4513809 e!4513803)))

(declare-fun b!7584109 () Bool)

(assert (=> b!7584109 (= e!4513808 call!695462)))

(declare-fun b!7584110 () Bool)

(assert (=> b!7584110 (= e!4513807 call!695464)))

(declare-fun bm!695459 () Bool)

(assert (=> bm!695459 (= call!695462 (validRegex!10521 (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))))))

(assert (= (and d!2318762 (not res!3038188)) b!7584106))

(assert (= (and b!7584106 c!1398896) b!7584104))

(assert (= (and b!7584106 (not c!1398896)) b!7584103))

(assert (= (and b!7584104 res!3038190) b!7584102))

(assert (= (and b!7584103 c!1398895) b!7584107))

(assert (= (and b!7584103 (not c!1398895)) b!7584108))

(assert (= (and b!7584107 res!3038186) b!7584110))

(assert (= (and b!7584108 (not res!3038189)) b!7584105))

(assert (= (and b!7584105 res!3038187) b!7584109))

(assert (= (or b!7584110 b!7584105) bm!695457))

(assert (= (or b!7584107 b!7584109) bm!695459))

(assert (= (or b!7584102 bm!695457) bm!695458))

(declare-fun m!8136870 () Bool)

(assert (=> b!7584104 m!8136870))

(declare-fun m!8136872 () Bool)

(assert (=> bm!695458 m!8136872))

(declare-fun m!8136874 () Bool)

(assert (=> bm!695459 m!8136874))

(assert (=> start!732148 d!2318762))

(declare-fun d!2318764 () Bool)

(declare-fun lostCauseFct!520 (Regex!20093) Bool)

(assert (=> d!2318764 (= (lostCause!1869 r!22341) (lostCauseFct!520 r!22341))))

(declare-fun bs!1941150 () Bool)

(assert (= bs!1941150 d!2318764))

(declare-fun m!8136876 () Bool)

(assert (=> bs!1941150 m!8136876))

(assert (=> b!7583837 d!2318764))

(declare-fun b!7584122 () Bool)

(declare-fun e!4513812 () Bool)

(declare-fun tp!2210190 () Bool)

(declare-fun tp!2210194 () Bool)

(assert (=> b!7584122 (= e!4513812 (and tp!2210190 tp!2210194))))

(declare-fun b!7584123 () Bool)

(declare-fun tp!2210192 () Bool)

(assert (=> b!7584123 (= e!4513812 tp!2210192)))

(declare-fun b!7584124 () Bool)

(declare-fun tp!2210193 () Bool)

(declare-fun tp!2210191 () Bool)

(assert (=> b!7584124 (= e!4513812 (and tp!2210193 tp!2210191))))

(assert (=> b!7583838 (= tp!2210137 e!4513812)))

(declare-fun b!7584121 () Bool)

(assert (=> b!7584121 (= e!4513812 tp_is_empty!50541)))

(assert (= (and b!7583838 ((_ is ElementMatch!20093) (regOne!40698 r!22341))) b!7584121))

(assert (= (and b!7583838 ((_ is Concat!28938) (regOne!40698 r!22341))) b!7584122))

(assert (= (and b!7583838 ((_ is Star!20093) (regOne!40698 r!22341))) b!7584123))

(assert (= (and b!7583838 ((_ is Union!20093) (regOne!40698 r!22341))) b!7584124))

(declare-fun b!7584126 () Bool)

(declare-fun e!4513813 () Bool)

(declare-fun tp!2210195 () Bool)

(declare-fun tp!2210199 () Bool)

(assert (=> b!7584126 (= e!4513813 (and tp!2210195 tp!2210199))))

(declare-fun b!7584127 () Bool)

(declare-fun tp!2210197 () Bool)

(assert (=> b!7584127 (= e!4513813 tp!2210197)))

(declare-fun b!7584128 () Bool)

(declare-fun tp!2210198 () Bool)

(declare-fun tp!2210196 () Bool)

(assert (=> b!7584128 (= e!4513813 (and tp!2210198 tp!2210196))))

(assert (=> b!7583838 (= tp!2210141 e!4513813)))

(declare-fun b!7584125 () Bool)

(assert (=> b!7584125 (= e!4513813 tp_is_empty!50541)))

(assert (= (and b!7583838 ((_ is ElementMatch!20093) (regTwo!40698 r!22341))) b!7584125))

(assert (= (and b!7583838 ((_ is Concat!28938) (regTwo!40698 r!22341))) b!7584126))

(assert (= (and b!7583838 ((_ is Star!20093) (regTwo!40698 r!22341))) b!7584127))

(assert (= (and b!7583838 ((_ is Union!20093) (regTwo!40698 r!22341))) b!7584128))

(declare-fun b!7584133 () Bool)

(declare-fun e!4513816 () Bool)

(declare-fun tp!2210202 () Bool)

(assert (=> b!7584133 (= e!4513816 (and tp_is_empty!50541 tp!2210202))))

(assert (=> b!7583836 (= tp!2210138 e!4513816)))

(assert (= (and b!7583836 ((_ is Cons!72852) (t!387711 s!13436))) b!7584133))

(declare-fun b!7584135 () Bool)

(declare-fun e!4513817 () Bool)

(declare-fun tp!2210203 () Bool)

(declare-fun tp!2210207 () Bool)

(assert (=> b!7584135 (= e!4513817 (and tp!2210203 tp!2210207))))

(declare-fun b!7584136 () Bool)

(declare-fun tp!2210205 () Bool)

(assert (=> b!7584136 (= e!4513817 tp!2210205)))

(declare-fun b!7584137 () Bool)

(declare-fun tp!2210206 () Bool)

(declare-fun tp!2210204 () Bool)

(assert (=> b!7584137 (= e!4513817 (and tp!2210206 tp!2210204))))

(assert (=> b!7583841 (= tp!2210139 e!4513817)))

(declare-fun b!7584134 () Bool)

(assert (=> b!7584134 (= e!4513817 tp_is_empty!50541)))

(assert (= (and b!7583841 ((_ is ElementMatch!20093) (regOne!40699 r!22341))) b!7584134))

(assert (= (and b!7583841 ((_ is Concat!28938) (regOne!40699 r!22341))) b!7584135))

(assert (= (and b!7583841 ((_ is Star!20093) (regOne!40699 r!22341))) b!7584136))

(assert (= (and b!7583841 ((_ is Union!20093) (regOne!40699 r!22341))) b!7584137))

(declare-fun b!7584139 () Bool)

(declare-fun e!4513818 () Bool)

(declare-fun tp!2210208 () Bool)

(declare-fun tp!2210212 () Bool)

(assert (=> b!7584139 (= e!4513818 (and tp!2210208 tp!2210212))))

(declare-fun b!7584140 () Bool)

(declare-fun tp!2210210 () Bool)

(assert (=> b!7584140 (= e!4513818 tp!2210210)))

(declare-fun b!7584141 () Bool)

(declare-fun tp!2210211 () Bool)

(declare-fun tp!2210209 () Bool)

(assert (=> b!7584141 (= e!4513818 (and tp!2210211 tp!2210209))))

(assert (=> b!7583841 (= tp!2210140 e!4513818)))

(declare-fun b!7584138 () Bool)

(assert (=> b!7584138 (= e!4513818 tp_is_empty!50541)))

(assert (= (and b!7583841 ((_ is ElementMatch!20093) (regTwo!40699 r!22341))) b!7584138))

(assert (= (and b!7583841 ((_ is Concat!28938) (regTwo!40699 r!22341))) b!7584139))

(assert (= (and b!7583841 ((_ is Star!20093) (regTwo!40699 r!22341))) b!7584140))

(assert (= (and b!7583841 ((_ is Union!20093) (regTwo!40699 r!22341))) b!7584141))

(declare-fun b!7584143 () Bool)

(declare-fun e!4513819 () Bool)

(declare-fun tp!2210213 () Bool)

(declare-fun tp!2210217 () Bool)

(assert (=> b!7584143 (= e!4513819 (and tp!2210213 tp!2210217))))

(declare-fun b!7584144 () Bool)

(declare-fun tp!2210215 () Bool)

(assert (=> b!7584144 (= e!4513819 tp!2210215)))

(declare-fun b!7584145 () Bool)

(declare-fun tp!2210216 () Bool)

(declare-fun tp!2210214 () Bool)

(assert (=> b!7584145 (= e!4513819 (and tp!2210216 tp!2210214))))

(assert (=> b!7583842 (= tp!2210136 e!4513819)))

(declare-fun b!7584142 () Bool)

(assert (=> b!7584142 (= e!4513819 tp_is_empty!50541)))

(assert (= (and b!7583842 ((_ is ElementMatch!20093) (reg!20422 r!22341))) b!7584142))

(assert (= (and b!7583842 ((_ is Concat!28938) (reg!20422 r!22341))) b!7584143))

(assert (= (and b!7583842 ((_ is Star!20093) (reg!20422 r!22341))) b!7584144))

(assert (= (and b!7583842 ((_ is Union!20093) (reg!20422 r!22341))) b!7584145))

(check-sat (not b!7584128) (not b!7584140) (not b!7584141) (not b!7584036) (not d!2318764) (not b!7584127) (not b!7584143) (not b!7584136) (not b!7584126) (not b!7584133) (not d!2318756) (not b!7584145) (not bm!695458) (not bm!695450) (not bm!695459) (not b!7584124) (not b!7584080) (not b!7584081) (not b!7584071) (not b!7584104) (not b!7584037) (not b!7584076) (not bm!695446) (not b!7584077) (not b!7584137) (not b!7584123) (not b!7584135) (not bm!695447) tp_is_empty!50541 (not d!2318758) (not b!7584122) (not b!7584139) (not b!7584083) (not b!7584144))
(check-sat)
(get-model)

(declare-fun d!2318792 () Bool)

(assert (=> d!2318792 (= (isEmpty!41527 (tail!15151 s!13436)) ((_ is Nil!72852) (tail!15151 s!13436)))))

(assert (=> b!7584076 d!2318792))

(declare-fun d!2318794 () Bool)

(assert (=> d!2318794 (= (tail!15151 s!13436) (t!387711 s!13436))))

(assert (=> b!7584076 d!2318794))

(declare-fun b!7584256 () Bool)

(declare-fun e!4513895 () Bool)

(declare-fun e!4513897 () Bool)

(assert (=> b!7584256 (= e!4513895 e!4513897)))

(declare-fun res!3038235 () Bool)

(declare-fun call!695495 () Bool)

(assert (=> b!7584256 (= res!3038235 call!695495)))

(assert (=> b!7584256 (=> res!3038235 e!4513897)))

(declare-fun b!7584257 () Bool)

(declare-fun e!4513898 () Bool)

(declare-fun e!4513896 () Bool)

(assert (=> b!7584257 (= e!4513898 e!4513896)))

(declare-fun res!3038239 () Bool)

(assert (=> b!7584257 (=> (not res!3038239) (not e!4513896))))

(assert (=> b!7584257 (= res!3038239 (and (not ((_ is ElementMatch!20093) r!22341)) (not ((_ is Star!20093) r!22341))))))

(declare-fun b!7584258 () Bool)

(declare-fun e!4513893 () Bool)

(assert (=> b!7584258 (= e!4513895 e!4513893)))

(declare-fun res!3038238 () Bool)

(assert (=> b!7584258 (= res!3038238 call!695495)))

(assert (=> b!7584258 (=> (not res!3038238) (not e!4513893))))

(declare-fun b!7584259 () Bool)

(assert (=> b!7584259 (= e!4513896 e!4513895)))

(declare-fun c!1398930 () Bool)

(assert (=> b!7584259 (= c!1398930 ((_ is Union!20093) r!22341))))

(declare-fun b!7584260 () Bool)

(declare-fun call!695496 () Bool)

(assert (=> b!7584260 (= e!4513893 call!695496)))

(declare-fun d!2318796 () Bool)

(declare-fun lt!2652860 () Bool)

(declare-datatypes ((Option!17302 0))(
  ( (None!17301) (Some!17301 (v!54436 List!72976)) )
))
(declare-fun isEmpty!41529 (Option!17302) Bool)

(declare-fun getLanguageWitness!1121 (Regex!20093) Option!17302)

(assert (=> d!2318796 (= lt!2652860 (isEmpty!41529 (getLanguageWitness!1121 r!22341)))))

(declare-fun e!4513894 () Bool)

(assert (=> d!2318796 (= lt!2652860 e!4513894)))

(declare-fun res!3038236 () Bool)

(assert (=> d!2318796 (=> (not res!3038236) (not e!4513894))))

(assert (=> d!2318796 (= res!3038236 (not ((_ is EmptyExpr!20093) r!22341)))))

(assert (=> d!2318796 (= (lostCauseFct!520 r!22341) lt!2652860)))

(declare-fun b!7584261 () Bool)

(assert (=> b!7584261 (= e!4513897 call!695496)))

(declare-fun b!7584262 () Bool)

(assert (=> b!7584262 (= e!4513894 e!4513898)))

(declare-fun res!3038237 () Bool)

(assert (=> b!7584262 (=> res!3038237 e!4513898)))

(assert (=> b!7584262 (= res!3038237 ((_ is EmptyLang!20093) r!22341))))

(declare-fun bm!695490 () Bool)

(assert (=> bm!695490 (= call!695495 (lostCause!1869 (ite c!1398930 (regOne!40699 r!22341) (regOne!40698 r!22341))))))

(declare-fun bm!695491 () Bool)

(assert (=> bm!695491 (= call!695496 (lostCause!1869 (ite c!1398930 (regTwo!40699 r!22341) (regTwo!40698 r!22341))))))

(assert (= (and d!2318796 res!3038236) b!7584262))

(assert (= (and b!7584262 (not res!3038237)) b!7584257))

(assert (= (and b!7584257 res!3038239) b!7584259))

(assert (= (and b!7584259 c!1398930) b!7584258))

(assert (= (and b!7584259 (not c!1398930)) b!7584256))

(assert (= (and b!7584258 res!3038238) b!7584260))

(assert (= (and b!7584256 (not res!3038235)) b!7584261))

(assert (= (or b!7584260 b!7584261) bm!695491))

(assert (= (or b!7584258 b!7584256) bm!695490))

(declare-fun m!8136932 () Bool)

(assert (=> d!2318796 m!8136932))

(assert (=> d!2318796 m!8136932))

(declare-fun m!8136934 () Bool)

(assert (=> d!2318796 m!8136934))

(declare-fun m!8136936 () Bool)

(assert (=> bm!695490 m!8136936))

(declare-fun m!8136938 () Bool)

(assert (=> bm!695491 m!8136938))

(assert (=> d!2318764 d!2318796))

(assert (=> d!2318756 d!2318760))

(assert (=> d!2318756 d!2318762))

(assert (=> d!2318758 d!2318756))

(assert (=> d!2318758 d!2318742))

(declare-fun d!2318800 () Bool)

(assert (=> d!2318800 (= (matchR!9685 r!22341 s!13436) (matchRSpec!4406 r!22341 s!13436))))

(assert (=> d!2318800 true))

(declare-fun _$88!5810 () Unit!167142)

(assert (=> d!2318800 (= (choose!58630 r!22341 s!13436) _$88!5810)))

(declare-fun bs!1941169 () Bool)

(assert (= bs!1941169 d!2318800))

(assert (=> bs!1941169 m!8136816))

(assert (=> bs!1941169 m!8136814))

(assert (=> d!2318758 d!2318800))

(assert (=> d!2318758 d!2318762))

(declare-fun d!2318802 () Bool)

(assert (=> d!2318802 (= (head!15611 s!13436) (h!79300 s!13436))))

(assert (=> b!7584077 d!2318802))

(assert (=> b!7584083 d!2318802))

(declare-fun d!2318804 () Bool)

(declare-fun choose!58631 (Int) Bool)

(assert (=> d!2318804 (= (Exists!4325 (ite c!1398880 lambda!467020 lambda!467021)) (choose!58631 (ite c!1398880 lambda!467020 lambda!467021)))))

(declare-fun bs!1941170 () Bool)

(assert (= bs!1941170 d!2318804))

(declare-fun m!8136946 () Bool)

(assert (=> bs!1941170 m!8136946))

(assert (=> bm!695446 d!2318804))

(declare-fun b!7584332 () Bool)

(declare-fun e!4513922 () Bool)

(declare-fun call!695501 () Bool)

(assert (=> b!7584332 (= e!4513922 call!695501)))

(declare-fun d!2318806 () Bool)

(declare-fun res!3038247 () Bool)

(declare-fun e!4513923 () Bool)

(assert (=> d!2318806 (=> res!3038247 e!4513923)))

(assert (=> d!2318806 (= res!3038247 ((_ is ElementMatch!20093) (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))))))

(assert (=> d!2318806 (= (validRegex!10521 (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))) e!4513923)))

(declare-fun b!7584333 () Bool)

(declare-fun e!4513924 () Bool)

(declare-fun e!4513927 () Bool)

(assert (=> b!7584333 (= e!4513924 e!4513927)))

(declare-fun c!1398933 () Bool)

(assert (=> b!7584333 (= c!1398933 ((_ is Union!20093) (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))))))

(declare-fun bm!695495 () Bool)

(declare-fun call!695502 () Bool)

(assert (=> bm!695495 (= call!695502 call!695501)))

(declare-fun b!7584334 () Bool)

(assert (=> b!7584334 (= e!4513924 e!4513922)))

(declare-fun res!3038249 () Bool)

(assert (=> b!7584334 (= res!3038249 (not (nullable!8784 (reg!20422 (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))))))))

(assert (=> b!7584334 (=> (not res!3038249) (not e!4513922))))

(declare-fun b!7584335 () Bool)

(declare-fun e!4513920 () Bool)

(declare-fun e!4513926 () Bool)

(assert (=> b!7584335 (= e!4513920 e!4513926)))

(declare-fun res!3038246 () Bool)

(assert (=> b!7584335 (=> (not res!3038246) (not e!4513926))))

(assert (=> b!7584335 (= res!3038246 call!695502)))

(declare-fun b!7584336 () Bool)

(assert (=> b!7584336 (= e!4513923 e!4513924)))

(declare-fun c!1398934 () Bool)

(assert (=> b!7584336 (= c!1398934 ((_ is Star!20093) (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))))))

(declare-fun b!7584337 () Bool)

(declare-fun res!3038245 () Bool)

(declare-fun e!4513925 () Bool)

(assert (=> b!7584337 (=> (not res!3038245) (not e!4513925))))

(declare-fun call!695500 () Bool)

(assert (=> b!7584337 (= res!3038245 call!695500)))

(assert (=> b!7584337 (= e!4513927 e!4513925)))

(declare-fun bm!695496 () Bool)

(assert (=> bm!695496 (= call!695501 (validRegex!10521 (ite c!1398934 (reg!20422 (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))) (ite c!1398933 (regTwo!40699 (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))) (regOne!40698 (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341))))))))))

(declare-fun b!7584338 () Bool)

(declare-fun res!3038248 () Bool)

(assert (=> b!7584338 (=> res!3038248 e!4513920)))

(assert (=> b!7584338 (= res!3038248 (not ((_ is Concat!28938) (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341))))))))

(assert (=> b!7584338 (= e!4513927 e!4513920)))

(declare-fun b!7584339 () Bool)

(assert (=> b!7584339 (= e!4513926 call!695500)))

(declare-fun b!7584340 () Bool)

(assert (=> b!7584340 (= e!4513925 call!695502)))

(declare-fun bm!695497 () Bool)

(assert (=> bm!695497 (= call!695500 (validRegex!10521 (ite c!1398933 (regOne!40699 (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))) (regTwo!40698 (ite c!1398896 (reg!20422 r!22341) (ite c!1398895 (regTwo!40699 r!22341) (regOne!40698 r!22341)))))))))

(assert (= (and d!2318806 (not res!3038247)) b!7584336))

(assert (= (and b!7584336 c!1398934) b!7584334))

(assert (= (and b!7584336 (not c!1398934)) b!7584333))

(assert (= (and b!7584334 res!3038249) b!7584332))

(assert (= (and b!7584333 c!1398933) b!7584337))

(assert (= (and b!7584333 (not c!1398933)) b!7584338))

(assert (= (and b!7584337 res!3038245) b!7584340))

(assert (= (and b!7584338 (not res!3038248)) b!7584335))

(assert (= (and b!7584335 res!3038246) b!7584339))

(assert (= (or b!7584340 b!7584335) bm!695495))

(assert (= (or b!7584337 b!7584339) bm!695497))

(assert (= (or b!7584332 bm!695495) bm!695496))

(declare-fun m!8136948 () Bool)

(assert (=> b!7584334 m!8136948))

(declare-fun m!8136950 () Bool)

(assert (=> bm!695496 m!8136950))

(declare-fun m!8136952 () Bool)

(assert (=> bm!695497 m!8136952))

(assert (=> bm!695458 d!2318806))

(declare-fun bs!1941171 () Bool)

(declare-fun b!7584361 () Bool)

(assert (= bs!1941171 (and b!7584361 b!7584030)))

(declare-fun lambda!467026 () Int)

(assert (=> bs!1941171 (= (and (= (reg!20422 (regTwo!40699 r!22341)) (reg!20422 r!22341)) (= (regTwo!40699 r!22341) r!22341)) (= lambda!467026 lambda!467020))))

(declare-fun bs!1941172 () Bool)

(assert (= bs!1941172 (and b!7584361 b!7584034)))

(assert (=> bs!1941172 (not (= lambda!467026 lambda!467021))))

(assert (=> b!7584361 true))

(assert (=> b!7584361 true))

(declare-fun bs!1941173 () Bool)

(declare-fun b!7584365 () Bool)

(assert (= bs!1941173 (and b!7584365 b!7584030)))

(declare-fun lambda!467027 () Int)

(assert (=> bs!1941173 (not (= lambda!467027 lambda!467020))))

(declare-fun bs!1941174 () Bool)

(assert (= bs!1941174 (and b!7584365 b!7584034)))

(assert (=> bs!1941174 (= (and (= (regOne!40698 (regTwo!40699 r!22341)) (regOne!40698 r!22341)) (= (regTwo!40698 (regTwo!40699 r!22341)) (regTwo!40698 r!22341))) (= lambda!467027 lambda!467021))))

(declare-fun bs!1941175 () Bool)

(assert (= bs!1941175 (and b!7584365 b!7584361)))

(assert (=> bs!1941175 (not (= lambda!467027 lambda!467026))))

(assert (=> b!7584365 true))

(assert (=> b!7584365 true))

(declare-fun b!7584358 () Bool)

(declare-fun c!1398936 () Bool)

(assert (=> b!7584358 (= c!1398936 ((_ is ElementMatch!20093) (regTwo!40699 r!22341)))))

(declare-fun e!4513939 () Bool)

(declare-fun e!4513932 () Bool)

(assert (=> b!7584358 (= e!4513939 e!4513932)))

(declare-fun b!7584359 () Bool)

(declare-fun res!3038251 () Bool)

(declare-fun e!4513934 () Bool)

(assert (=> b!7584359 (=> res!3038251 e!4513934)))

(declare-fun call!695504 () Bool)

(assert (=> b!7584359 (= res!3038251 call!695504)))

(declare-fun e!4513937 () Bool)

(assert (=> b!7584359 (= e!4513937 e!4513934)))

(declare-fun d!2318808 () Bool)

(declare-fun c!1398938 () Bool)

(assert (=> d!2318808 (= c!1398938 ((_ is EmptyExpr!20093) (regTwo!40699 r!22341)))))

(declare-fun e!4513933 () Bool)

(assert (=> d!2318808 (= (matchRSpec!4406 (regTwo!40699 r!22341) s!13436) e!4513933)))

(declare-fun b!7584360 () Bool)

(declare-fun c!1398935 () Bool)

(assert (=> b!7584360 (= c!1398935 ((_ is Union!20093) (regTwo!40699 r!22341)))))

(declare-fun e!4513938 () Bool)

(assert (=> b!7584360 (= e!4513932 e!4513938)))

(declare-fun call!695503 () Bool)

(assert (=> b!7584361 (= e!4513934 call!695503)))

(declare-fun bm!695498 () Bool)

(declare-fun c!1398937 () Bool)

(assert (=> bm!695498 (= call!695503 (Exists!4325 (ite c!1398937 lambda!467026 lambda!467027)))))

(declare-fun b!7584362 () Bool)

(assert (=> b!7584362 (= e!4513938 e!4513937)))

(assert (=> b!7584362 (= c!1398937 ((_ is Star!20093) (regTwo!40699 r!22341)))))

(declare-fun b!7584363 () Bool)

(assert (=> b!7584363 (= e!4513933 call!695504)))

(declare-fun b!7584364 () Bool)

(assert (=> b!7584364 (= e!4513933 e!4513939)))

(declare-fun res!3038252 () Bool)

(assert (=> b!7584364 (= res!3038252 (not ((_ is EmptyLang!20093) (regTwo!40699 r!22341))))))

(assert (=> b!7584364 (=> (not res!3038252) (not e!4513939))))

(assert (=> b!7584365 (= e!4513937 call!695503)))

(declare-fun b!7584366 () Bool)

(assert (=> b!7584366 (= e!4513932 (= s!13436 (Cons!72852 (c!1398842 (regTwo!40699 r!22341)) Nil!72852)))))

(declare-fun bm!695499 () Bool)

(assert (=> bm!695499 (= call!695504 (isEmpty!41527 s!13436))))

(declare-fun b!7584367 () Bool)

(declare-fun e!4513935 () Bool)

(assert (=> b!7584367 (= e!4513935 (matchRSpec!4406 (regTwo!40699 (regTwo!40699 r!22341)) s!13436))))

(declare-fun b!7584368 () Bool)

(assert (=> b!7584368 (= e!4513938 e!4513935)))

(declare-fun res!3038250 () Bool)

(assert (=> b!7584368 (= res!3038250 (matchRSpec!4406 (regOne!40699 (regTwo!40699 r!22341)) s!13436))))

(assert (=> b!7584368 (=> res!3038250 e!4513935)))

(assert (= (and d!2318808 c!1398938) b!7584363))

(assert (= (and d!2318808 (not c!1398938)) b!7584364))

(assert (= (and b!7584364 res!3038252) b!7584358))

(assert (= (and b!7584358 c!1398936) b!7584366))

(assert (= (and b!7584358 (not c!1398936)) b!7584360))

(assert (= (and b!7584360 c!1398935) b!7584368))

(assert (= (and b!7584360 (not c!1398935)) b!7584362))

(assert (= (and b!7584368 (not res!3038250)) b!7584367))

(assert (= (and b!7584362 c!1398937) b!7584359))

(assert (= (and b!7584362 (not c!1398937)) b!7584365))

(assert (= (and b!7584359 (not res!3038251)) b!7584361))

(assert (= (or b!7584361 b!7584365) bm!695498))

(assert (= (or b!7584363 b!7584359) bm!695499))

(declare-fun m!8136954 () Bool)

(assert (=> bm!695498 m!8136954))

(assert (=> bm!695499 m!8136812))

(declare-fun m!8136956 () Bool)

(assert (=> b!7584367 m!8136956))

(declare-fun m!8136958 () Bool)

(assert (=> b!7584368 m!8136958))

(assert (=> b!7584036 d!2318808))

(assert (=> b!7584071 d!2318792))

(assert (=> b!7584071 d!2318794))

(declare-fun d!2318810 () Bool)

(declare-fun nullableFct!3498 (Regex!20093) Bool)

(assert (=> d!2318810 (= (nullable!8784 (reg!20422 r!22341)) (nullableFct!3498 (reg!20422 r!22341)))))

(declare-fun bs!1941176 () Bool)

(assert (= bs!1941176 d!2318810))

(declare-fun m!8136960 () Bool)

(assert (=> bs!1941176 m!8136960))

(assert (=> b!7584104 d!2318810))

(assert (=> bm!695447 d!2318760))

(assert (=> bm!695450 d!2318760))

(declare-fun bs!1941177 () Bool)

(declare-fun b!7584396 () Bool)

(assert (= bs!1941177 (and b!7584396 b!7584030)))

(declare-fun lambda!467028 () Int)

(assert (=> bs!1941177 (= (and (= (reg!20422 (regOne!40699 r!22341)) (reg!20422 r!22341)) (= (regOne!40699 r!22341) r!22341)) (= lambda!467028 lambda!467020))))

(declare-fun bs!1941178 () Bool)

(assert (= bs!1941178 (and b!7584396 b!7584034)))

(assert (=> bs!1941178 (not (= lambda!467028 lambda!467021))))

(declare-fun bs!1941179 () Bool)

(assert (= bs!1941179 (and b!7584396 b!7584361)))

(assert (=> bs!1941179 (= (and (= (reg!20422 (regOne!40699 r!22341)) (reg!20422 (regTwo!40699 r!22341))) (= (regOne!40699 r!22341) (regTwo!40699 r!22341))) (= lambda!467028 lambda!467026))))

(declare-fun bs!1941180 () Bool)

(assert (= bs!1941180 (and b!7584396 b!7584365)))

(assert (=> bs!1941180 (not (= lambda!467028 lambda!467027))))

(assert (=> b!7584396 true))

(assert (=> b!7584396 true))

(declare-fun bs!1941181 () Bool)

(declare-fun b!7584400 () Bool)

(assert (= bs!1941181 (and b!7584400 b!7584365)))

(declare-fun lambda!467029 () Int)

(assert (=> bs!1941181 (= (and (= (regOne!40698 (regOne!40699 r!22341)) (regOne!40698 (regTwo!40699 r!22341))) (= (regTwo!40698 (regOne!40699 r!22341)) (regTwo!40698 (regTwo!40699 r!22341)))) (= lambda!467029 lambda!467027))))

(declare-fun bs!1941182 () Bool)

(assert (= bs!1941182 (and b!7584400 b!7584034)))

(assert (=> bs!1941182 (= (and (= (regOne!40698 (regOne!40699 r!22341)) (regOne!40698 r!22341)) (= (regTwo!40698 (regOne!40699 r!22341)) (regTwo!40698 r!22341))) (= lambda!467029 lambda!467021))))

(declare-fun bs!1941183 () Bool)

(assert (= bs!1941183 (and b!7584400 b!7584030)))

(assert (=> bs!1941183 (not (= lambda!467029 lambda!467020))))

(declare-fun bs!1941184 () Bool)

(assert (= bs!1941184 (and b!7584400 b!7584396)))

(assert (=> bs!1941184 (not (= lambda!467029 lambda!467028))))

(declare-fun bs!1941185 () Bool)

(assert (= bs!1941185 (and b!7584400 b!7584361)))

(assert (=> bs!1941185 (not (= lambda!467029 lambda!467026))))

(assert (=> b!7584400 true))

(assert (=> b!7584400 true))

(declare-fun b!7584393 () Bool)

(declare-fun c!1398940 () Bool)

(assert (=> b!7584393 (= c!1398940 ((_ is ElementMatch!20093) (regOne!40699 r!22341)))))

(declare-fun e!4513952 () Bool)

(declare-fun e!4513946 () Bool)

(assert (=> b!7584393 (= e!4513952 e!4513946)))

(declare-fun b!7584394 () Bool)

(declare-fun res!3038254 () Bool)

(declare-fun e!4513948 () Bool)

(assert (=> b!7584394 (=> res!3038254 e!4513948)))

(declare-fun call!695506 () Bool)

(assert (=> b!7584394 (= res!3038254 call!695506)))

(declare-fun e!4513950 () Bool)

(assert (=> b!7584394 (= e!4513950 e!4513948)))

(declare-fun d!2318812 () Bool)

(declare-fun c!1398942 () Bool)

(assert (=> d!2318812 (= c!1398942 ((_ is EmptyExpr!20093) (regOne!40699 r!22341)))))

(declare-fun e!4513947 () Bool)

(assert (=> d!2318812 (= (matchRSpec!4406 (regOne!40699 r!22341) s!13436) e!4513947)))

(declare-fun b!7584395 () Bool)

(declare-fun c!1398939 () Bool)

(assert (=> b!7584395 (= c!1398939 ((_ is Union!20093) (regOne!40699 r!22341)))))

(declare-fun e!4513951 () Bool)

(assert (=> b!7584395 (= e!4513946 e!4513951)))

(declare-fun call!695505 () Bool)

(assert (=> b!7584396 (= e!4513948 call!695505)))

(declare-fun bm!695500 () Bool)

(declare-fun c!1398941 () Bool)

(assert (=> bm!695500 (= call!695505 (Exists!4325 (ite c!1398941 lambda!467028 lambda!467029)))))

(declare-fun b!7584397 () Bool)

(assert (=> b!7584397 (= e!4513951 e!4513950)))

(assert (=> b!7584397 (= c!1398941 ((_ is Star!20093) (regOne!40699 r!22341)))))

(declare-fun b!7584398 () Bool)

(assert (=> b!7584398 (= e!4513947 call!695506)))

(declare-fun b!7584399 () Bool)

(assert (=> b!7584399 (= e!4513947 e!4513952)))

(declare-fun res!3038255 () Bool)

(assert (=> b!7584399 (= res!3038255 (not ((_ is EmptyLang!20093) (regOne!40699 r!22341))))))

(assert (=> b!7584399 (=> (not res!3038255) (not e!4513952))))

(assert (=> b!7584400 (= e!4513950 call!695505)))

(declare-fun b!7584401 () Bool)

(assert (=> b!7584401 (= e!4513946 (= s!13436 (Cons!72852 (c!1398842 (regOne!40699 r!22341)) Nil!72852)))))

(declare-fun bm!695501 () Bool)

(assert (=> bm!695501 (= call!695506 (isEmpty!41527 s!13436))))

(declare-fun b!7584402 () Bool)

(declare-fun e!4513949 () Bool)

(assert (=> b!7584402 (= e!4513949 (matchRSpec!4406 (regTwo!40699 (regOne!40699 r!22341)) s!13436))))

(declare-fun b!7584403 () Bool)

(assert (=> b!7584403 (= e!4513951 e!4513949)))

(declare-fun res!3038253 () Bool)

(assert (=> b!7584403 (= res!3038253 (matchRSpec!4406 (regOne!40699 (regOne!40699 r!22341)) s!13436))))

(assert (=> b!7584403 (=> res!3038253 e!4513949)))

(assert (= (and d!2318812 c!1398942) b!7584398))

(assert (= (and d!2318812 (not c!1398942)) b!7584399))

(assert (= (and b!7584399 res!3038255) b!7584393))

(assert (= (and b!7584393 c!1398940) b!7584401))

(assert (= (and b!7584393 (not c!1398940)) b!7584395))

(assert (= (and b!7584395 c!1398939) b!7584403))

(assert (= (and b!7584395 (not c!1398939)) b!7584397))

(assert (= (and b!7584403 (not res!3038253)) b!7584402))

(assert (= (and b!7584397 c!1398941) b!7584394))

(assert (= (and b!7584397 (not c!1398941)) b!7584400))

(assert (= (and b!7584394 (not res!3038254)) b!7584396))

(assert (= (or b!7584396 b!7584400) bm!695500))

(assert (= (or b!7584398 b!7584394) bm!695501))

(declare-fun m!8136962 () Bool)

(assert (=> bm!695500 m!8136962))

(assert (=> bm!695501 m!8136812))

(declare-fun m!8136964 () Bool)

(assert (=> b!7584402 m!8136964))

(declare-fun m!8136966 () Bool)

(assert (=> b!7584403 m!8136966))

(assert (=> b!7584037 d!2318812))

(declare-fun b!7584404 () Bool)

(declare-fun res!3038259 () Bool)

(declare-fun e!4513953 () Bool)

(assert (=> b!7584404 (=> (not res!3038259) (not e!4513953))))

(declare-fun call!695507 () Bool)

(assert (=> b!7584404 (= res!3038259 (not call!695507))))

(declare-fun d!2318814 () Bool)

(declare-fun e!4513955 () Bool)

(assert (=> d!2318814 e!4513955))

(declare-fun c!1398943 () Bool)

(assert (=> d!2318814 (= c!1398943 ((_ is EmptyExpr!20093) (derivativeStep!5811 r!22341 (head!15611 s!13436))))))

(declare-fun lt!2652861 () Bool)

(declare-fun e!4513956 () Bool)

(assert (=> d!2318814 (= lt!2652861 e!4513956)))

(declare-fun c!1398944 () Bool)

(assert (=> d!2318814 (= c!1398944 (isEmpty!41527 (tail!15151 s!13436)))))

(assert (=> d!2318814 (validRegex!10521 (derivativeStep!5811 r!22341 (head!15611 s!13436)))))

(assert (=> d!2318814 (= (matchR!9685 (derivativeStep!5811 r!22341 (head!15611 s!13436)) (tail!15151 s!13436)) lt!2652861)))

(declare-fun b!7584405 () Bool)

(declare-fun res!3038261 () Bool)

(assert (=> b!7584405 (=> (not res!3038261) (not e!4513953))))

(assert (=> b!7584405 (= res!3038261 (isEmpty!41527 (tail!15151 (tail!15151 s!13436))))))

(declare-fun b!7584406 () Bool)

(assert (=> b!7584406 (= e!4513955 (= lt!2652861 call!695507))))

(declare-fun b!7584407 () Bool)

(declare-fun e!4513958 () Bool)

(assert (=> b!7584407 (= e!4513955 e!4513958)))

(declare-fun c!1398945 () Bool)

(assert (=> b!7584407 (= c!1398945 ((_ is EmptyLang!20093) (derivativeStep!5811 r!22341 (head!15611 s!13436))))))

(declare-fun b!7584408 () Bool)

(declare-fun e!4513959 () Bool)

(declare-fun e!4513957 () Bool)

(assert (=> b!7584408 (= e!4513959 e!4513957)))

(declare-fun res!3038263 () Bool)

(assert (=> b!7584408 (=> (not res!3038263) (not e!4513957))))

(assert (=> b!7584408 (= res!3038263 (not lt!2652861))))

(declare-fun b!7584409 () Bool)

(declare-fun res!3038258 () Bool)

(assert (=> b!7584409 (=> res!3038258 e!4513959)))

(assert (=> b!7584409 (= res!3038258 e!4513953)))

(declare-fun res!3038260 () Bool)

(assert (=> b!7584409 (=> (not res!3038260) (not e!4513953))))

(assert (=> b!7584409 (= res!3038260 lt!2652861)))

(declare-fun b!7584410 () Bool)

(declare-fun res!3038257 () Bool)

(declare-fun e!4513954 () Bool)

(assert (=> b!7584410 (=> res!3038257 e!4513954)))

(assert (=> b!7584410 (= res!3038257 (not (isEmpty!41527 (tail!15151 (tail!15151 s!13436)))))))

(declare-fun b!7584411 () Bool)

(assert (=> b!7584411 (= e!4513953 (= (head!15611 (tail!15151 s!13436)) (c!1398842 (derivativeStep!5811 r!22341 (head!15611 s!13436)))))))

(declare-fun b!7584412 () Bool)

(declare-fun res!3038262 () Bool)

(assert (=> b!7584412 (=> res!3038262 e!4513959)))

(assert (=> b!7584412 (= res!3038262 (not ((_ is ElementMatch!20093) (derivativeStep!5811 r!22341 (head!15611 s!13436)))))))

(assert (=> b!7584412 (= e!4513958 e!4513959)))

(declare-fun b!7584413 () Bool)

(assert (=> b!7584413 (= e!4513957 e!4513954)))

(declare-fun res!3038256 () Bool)

(assert (=> b!7584413 (=> res!3038256 e!4513954)))

(assert (=> b!7584413 (= res!3038256 call!695507)))

(declare-fun b!7584414 () Bool)

(assert (=> b!7584414 (= e!4513956 (nullable!8784 (derivativeStep!5811 r!22341 (head!15611 s!13436))))))

(declare-fun bm!695502 () Bool)

(assert (=> bm!695502 (= call!695507 (isEmpty!41527 (tail!15151 s!13436)))))

(declare-fun b!7584415 () Bool)

(assert (=> b!7584415 (= e!4513956 (matchR!9685 (derivativeStep!5811 (derivativeStep!5811 r!22341 (head!15611 s!13436)) (head!15611 (tail!15151 s!13436))) (tail!15151 (tail!15151 s!13436))))))

(declare-fun b!7584416 () Bool)

(assert (=> b!7584416 (= e!4513958 (not lt!2652861))))

(declare-fun b!7584417 () Bool)

(assert (=> b!7584417 (= e!4513954 (not (= (head!15611 (tail!15151 s!13436)) (c!1398842 (derivativeStep!5811 r!22341 (head!15611 s!13436))))))))

(assert (= (and d!2318814 c!1398944) b!7584414))

(assert (= (and d!2318814 (not c!1398944)) b!7584415))

(assert (= (and d!2318814 c!1398943) b!7584406))

(assert (= (and d!2318814 (not c!1398943)) b!7584407))

(assert (= (and b!7584407 c!1398945) b!7584416))

(assert (= (and b!7584407 (not c!1398945)) b!7584412))

(assert (= (and b!7584412 (not res!3038262)) b!7584409))

(assert (= (and b!7584409 res!3038260) b!7584404))

(assert (= (and b!7584404 res!3038259) b!7584405))

(assert (= (and b!7584405 res!3038261) b!7584411))

(assert (= (and b!7584409 (not res!3038258)) b!7584408))

(assert (= (and b!7584408 res!3038263) b!7584413))

(assert (= (and b!7584413 (not res!3038256)) b!7584410))

(assert (= (and b!7584410 (not res!3038257)) b!7584417))

(assert (= (or b!7584406 b!7584404 b!7584413) bm!695502))

(assert (=> bm!695502 m!8136856))

(assert (=> bm!695502 m!8136858))

(assert (=> b!7584405 m!8136856))

(declare-fun m!8136968 () Bool)

(assert (=> b!7584405 m!8136968))

(assert (=> b!7584405 m!8136968))

(declare-fun m!8136970 () Bool)

(assert (=> b!7584405 m!8136970))

(assert (=> b!7584417 m!8136856))

(declare-fun m!8136972 () Bool)

(assert (=> b!7584417 m!8136972))

(assert (=> b!7584414 m!8136864))

(declare-fun m!8136974 () Bool)

(assert (=> b!7584414 m!8136974))

(assert (=> b!7584410 m!8136856))

(assert (=> b!7584410 m!8136968))

(assert (=> b!7584410 m!8136968))

(assert (=> b!7584410 m!8136970))

(assert (=> b!7584415 m!8136856))

(assert (=> b!7584415 m!8136972))

(assert (=> b!7584415 m!8136864))

(assert (=> b!7584415 m!8136972))

(declare-fun m!8136976 () Bool)

(assert (=> b!7584415 m!8136976))

(assert (=> b!7584415 m!8136856))

(assert (=> b!7584415 m!8136968))

(assert (=> b!7584415 m!8136976))

(assert (=> b!7584415 m!8136968))

(declare-fun m!8136978 () Bool)

(assert (=> b!7584415 m!8136978))

(assert (=> b!7584411 m!8136856))

(assert (=> b!7584411 m!8136972))

(assert (=> d!2318814 m!8136856))

(assert (=> d!2318814 m!8136858))

(assert (=> d!2318814 m!8136864))

(declare-fun m!8136980 () Bool)

(assert (=> d!2318814 m!8136980))

(assert (=> b!7584081 d!2318814))

(declare-fun b!7584438 () Bool)

(declare-fun e!4513971 () Regex!20093)

(declare-fun e!4513973 () Regex!20093)

(assert (=> b!7584438 (= e!4513971 e!4513973)))

(declare-fun c!1398956 () Bool)

(assert (=> b!7584438 (= c!1398956 ((_ is Star!20093) r!22341))))

(declare-fun c!1398959 () Bool)

(declare-fun c!1398957 () Bool)

(declare-fun bm!695511 () Bool)

(declare-fun call!695516 () Regex!20093)

(assert (=> bm!695511 (= call!695516 (derivativeStep!5811 (ite c!1398957 (regTwo!40699 r!22341) (ite c!1398956 (reg!20422 r!22341) (ite c!1398959 (regTwo!40698 r!22341) (regOne!40698 r!22341)))) (head!15611 s!13436)))))

(declare-fun b!7584439 () Bool)

(assert (=> b!7584439 (= c!1398957 ((_ is Union!20093) r!22341))))

(declare-fun e!4513972 () Regex!20093)

(assert (=> b!7584439 (= e!4513972 e!4513971)))

(declare-fun call!695517 () Regex!20093)

(declare-fun e!4513974 () Regex!20093)

(declare-fun b!7584440 () Bool)

(declare-fun call!695518 () Regex!20093)

(assert (=> b!7584440 (= e!4513974 (Union!20093 (Concat!28938 call!695517 (regTwo!40698 r!22341)) call!695518))))

(declare-fun bm!695512 () Bool)

(declare-fun call!695519 () Regex!20093)

(assert (=> bm!695512 (= call!695518 call!695519)))

(declare-fun d!2318816 () Bool)

(declare-fun lt!2652864 () Regex!20093)

(assert (=> d!2318816 (validRegex!10521 lt!2652864)))

(declare-fun e!4513970 () Regex!20093)

(assert (=> d!2318816 (= lt!2652864 e!4513970)))

(declare-fun c!1398958 () Bool)

(assert (=> d!2318816 (= c!1398958 (or ((_ is EmptyExpr!20093) r!22341) ((_ is EmptyLang!20093) r!22341)))))

(assert (=> d!2318816 (validRegex!10521 r!22341)))

(assert (=> d!2318816 (= (derivativeStep!5811 r!22341 (head!15611 s!13436)) lt!2652864)))

(declare-fun bm!695513 () Bool)

(assert (=> bm!695513 (= call!695517 (derivativeStep!5811 (ite c!1398957 (regOne!40699 r!22341) (regOne!40698 r!22341)) (head!15611 s!13436)))))

(declare-fun bm!695514 () Bool)

(assert (=> bm!695514 (= call!695519 call!695516)))

(declare-fun b!7584441 () Bool)

(assert (=> b!7584441 (= e!4513972 (ite (= (head!15611 s!13436) (c!1398842 r!22341)) EmptyExpr!20093 EmptyLang!20093))))

(declare-fun b!7584442 () Bool)

(assert (=> b!7584442 (= e!4513970 EmptyLang!20093)))

(declare-fun b!7584443 () Bool)

(assert (=> b!7584443 (= e!4513974 (Union!20093 (Concat!28938 call!695518 (regTwo!40698 r!22341)) EmptyLang!20093))))

(declare-fun b!7584444 () Bool)

(assert (=> b!7584444 (= e!4513970 e!4513972)))

(declare-fun c!1398960 () Bool)

(assert (=> b!7584444 (= c!1398960 ((_ is ElementMatch!20093) r!22341))))

(declare-fun b!7584445 () Bool)

(assert (=> b!7584445 (= e!4513973 (Concat!28938 call!695519 r!22341))))

(declare-fun b!7584446 () Bool)

(assert (=> b!7584446 (= c!1398959 (nullable!8784 (regOne!40698 r!22341)))))

(assert (=> b!7584446 (= e!4513973 e!4513974)))

(declare-fun b!7584447 () Bool)

(assert (=> b!7584447 (= e!4513971 (Union!20093 call!695517 call!695516))))

(assert (= (and d!2318816 c!1398958) b!7584442))

(assert (= (and d!2318816 (not c!1398958)) b!7584444))

(assert (= (and b!7584444 c!1398960) b!7584441))

(assert (= (and b!7584444 (not c!1398960)) b!7584439))

(assert (= (and b!7584439 c!1398957) b!7584447))

(assert (= (and b!7584439 (not c!1398957)) b!7584438))

(assert (= (and b!7584438 c!1398956) b!7584445))

(assert (= (and b!7584438 (not c!1398956)) b!7584446))

(assert (= (and b!7584446 c!1398959) b!7584440))

(assert (= (and b!7584446 (not c!1398959)) b!7584443))

(assert (= (or b!7584440 b!7584443) bm!695512))

(assert (= (or b!7584445 bm!695512) bm!695514))

(assert (= (or b!7584447 bm!695514) bm!695511))

(assert (= (or b!7584447 b!7584440) bm!695513))

(assert (=> bm!695511 m!8136860))

(declare-fun m!8136982 () Bool)

(assert (=> bm!695511 m!8136982))

(declare-fun m!8136984 () Bool)

(assert (=> d!2318816 m!8136984))

(assert (=> d!2318816 m!8136820))

(assert (=> bm!695513 m!8136860))

(declare-fun m!8136986 () Bool)

(assert (=> bm!695513 m!8136986))

(declare-fun m!8136988 () Bool)

(assert (=> b!7584446 m!8136988))

(assert (=> b!7584081 d!2318816))

(assert (=> b!7584081 d!2318802))

(assert (=> b!7584081 d!2318794))

(declare-fun b!7584448 () Bool)

(declare-fun e!4513976 () Bool)

(declare-fun call!695521 () Bool)

(assert (=> b!7584448 (= e!4513976 call!695521)))

(declare-fun d!2318818 () Bool)

(declare-fun res!3038266 () Bool)

(declare-fun e!4513977 () Bool)

(assert (=> d!2318818 (=> res!3038266 e!4513977)))

(assert (=> d!2318818 (= res!3038266 ((_ is ElementMatch!20093) (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))))))

(assert (=> d!2318818 (= (validRegex!10521 (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))) e!4513977)))

(declare-fun b!7584449 () Bool)

(declare-fun e!4513978 () Bool)

(declare-fun e!4513981 () Bool)

(assert (=> b!7584449 (= e!4513978 e!4513981)))

(declare-fun c!1398961 () Bool)

(assert (=> b!7584449 (= c!1398961 ((_ is Union!20093) (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))))))

(declare-fun bm!695515 () Bool)

(declare-fun call!695522 () Bool)

(assert (=> bm!695515 (= call!695522 call!695521)))

(declare-fun b!7584450 () Bool)

(assert (=> b!7584450 (= e!4513978 e!4513976)))

(declare-fun res!3038268 () Bool)

(assert (=> b!7584450 (= res!3038268 (not (nullable!8784 (reg!20422 (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))))))))

(assert (=> b!7584450 (=> (not res!3038268) (not e!4513976))))

(declare-fun b!7584451 () Bool)

(declare-fun e!4513975 () Bool)

(declare-fun e!4513980 () Bool)

(assert (=> b!7584451 (= e!4513975 e!4513980)))

(declare-fun res!3038265 () Bool)

(assert (=> b!7584451 (=> (not res!3038265) (not e!4513980))))

(assert (=> b!7584451 (= res!3038265 call!695522)))

(declare-fun b!7584452 () Bool)

(assert (=> b!7584452 (= e!4513977 e!4513978)))

(declare-fun c!1398962 () Bool)

(assert (=> b!7584452 (= c!1398962 ((_ is Star!20093) (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))))))

(declare-fun b!7584453 () Bool)

(declare-fun res!3038264 () Bool)

(declare-fun e!4513979 () Bool)

(assert (=> b!7584453 (=> (not res!3038264) (not e!4513979))))

(declare-fun call!695520 () Bool)

(assert (=> b!7584453 (= res!3038264 call!695520)))

(assert (=> b!7584453 (= e!4513981 e!4513979)))

(declare-fun bm!695516 () Bool)

(assert (=> bm!695516 (= call!695521 (validRegex!10521 (ite c!1398962 (reg!20422 (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))) (ite c!1398961 (regTwo!40699 (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))) (regOne!40698 (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341)))))))))

(declare-fun b!7584454 () Bool)

(declare-fun res!3038267 () Bool)

(assert (=> b!7584454 (=> res!3038267 e!4513975)))

(assert (=> b!7584454 (= res!3038267 (not ((_ is Concat!28938) (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341)))))))

(assert (=> b!7584454 (= e!4513981 e!4513975)))

(declare-fun b!7584455 () Bool)

(assert (=> b!7584455 (= e!4513980 call!695520)))

(declare-fun b!7584456 () Bool)

(assert (=> b!7584456 (= e!4513979 call!695522)))

(declare-fun bm!695517 () Bool)

(assert (=> bm!695517 (= call!695520 (validRegex!10521 (ite c!1398961 (regOne!40699 (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))) (regTwo!40698 (ite c!1398895 (regOne!40699 r!22341) (regTwo!40698 r!22341))))))))

(assert (= (and d!2318818 (not res!3038266)) b!7584452))

(assert (= (and b!7584452 c!1398962) b!7584450))

(assert (= (and b!7584452 (not c!1398962)) b!7584449))

(assert (= (and b!7584450 res!3038268) b!7584448))

(assert (= (and b!7584449 c!1398961) b!7584453))

(assert (= (and b!7584449 (not c!1398961)) b!7584454))

(assert (= (and b!7584453 res!3038264) b!7584456))

(assert (= (and b!7584454 (not res!3038267)) b!7584451))

(assert (= (and b!7584451 res!3038265) b!7584455))

(assert (= (or b!7584456 b!7584451) bm!695515))

(assert (= (or b!7584453 b!7584455) bm!695517))

(assert (= (or b!7584448 bm!695515) bm!695516))

(declare-fun m!8136990 () Bool)

(assert (=> b!7584450 m!8136990))

(declare-fun m!8136992 () Bool)

(assert (=> bm!695516 m!8136992))

(declare-fun m!8136994 () Bool)

(assert (=> bm!695517 m!8136994))

(assert (=> bm!695459 d!2318818))

(declare-fun d!2318820 () Bool)

(assert (=> d!2318820 (= (nullable!8784 r!22341) (nullableFct!3498 r!22341))))

(declare-fun bs!1941186 () Bool)

(assert (= bs!1941186 d!2318820))

(declare-fun m!8136996 () Bool)

(assert (=> bs!1941186 m!8136996))

(assert (=> b!7584080 d!2318820))

(declare-fun b!7584458 () Bool)

(declare-fun e!4513982 () Bool)

(declare-fun tp!2210344 () Bool)

(declare-fun tp!2210348 () Bool)

(assert (=> b!7584458 (= e!4513982 (and tp!2210344 tp!2210348))))

(declare-fun b!7584459 () Bool)

(declare-fun tp!2210346 () Bool)

(assert (=> b!7584459 (= e!4513982 tp!2210346)))

(declare-fun b!7584460 () Bool)

(declare-fun tp!2210347 () Bool)

(declare-fun tp!2210345 () Bool)

(assert (=> b!7584460 (= e!4513982 (and tp!2210347 tp!2210345))))

(assert (=> b!7584139 (= tp!2210208 e!4513982)))

(declare-fun b!7584457 () Bool)

(assert (=> b!7584457 (= e!4513982 tp_is_empty!50541)))

(assert (= (and b!7584139 ((_ is ElementMatch!20093) (regOne!40698 (regTwo!40699 r!22341)))) b!7584457))

(assert (= (and b!7584139 ((_ is Concat!28938) (regOne!40698 (regTwo!40699 r!22341)))) b!7584458))

(assert (= (and b!7584139 ((_ is Star!20093) (regOne!40698 (regTwo!40699 r!22341)))) b!7584459))

(assert (= (and b!7584139 ((_ is Union!20093) (regOne!40698 (regTwo!40699 r!22341)))) b!7584460))

(declare-fun b!7584462 () Bool)

(declare-fun e!4513983 () Bool)

(declare-fun tp!2210349 () Bool)

(declare-fun tp!2210353 () Bool)

(assert (=> b!7584462 (= e!4513983 (and tp!2210349 tp!2210353))))

(declare-fun b!7584463 () Bool)

(declare-fun tp!2210351 () Bool)

(assert (=> b!7584463 (= e!4513983 tp!2210351)))

(declare-fun b!7584464 () Bool)

(declare-fun tp!2210352 () Bool)

(declare-fun tp!2210350 () Bool)

(assert (=> b!7584464 (= e!4513983 (and tp!2210352 tp!2210350))))

(assert (=> b!7584139 (= tp!2210212 e!4513983)))

(declare-fun b!7584461 () Bool)

(assert (=> b!7584461 (= e!4513983 tp_is_empty!50541)))

(assert (= (and b!7584139 ((_ is ElementMatch!20093) (regTwo!40698 (regTwo!40699 r!22341)))) b!7584461))

(assert (= (and b!7584139 ((_ is Concat!28938) (regTwo!40698 (regTwo!40699 r!22341)))) b!7584462))

(assert (= (and b!7584139 ((_ is Star!20093) (regTwo!40698 (regTwo!40699 r!22341)))) b!7584463))

(assert (= (and b!7584139 ((_ is Union!20093) (regTwo!40698 (regTwo!40699 r!22341)))) b!7584464))

(declare-fun b!7584466 () Bool)

(declare-fun e!4513984 () Bool)

(declare-fun tp!2210354 () Bool)

(declare-fun tp!2210358 () Bool)

(assert (=> b!7584466 (= e!4513984 (and tp!2210354 tp!2210358))))

(declare-fun b!7584467 () Bool)

(declare-fun tp!2210356 () Bool)

(assert (=> b!7584467 (= e!4513984 tp!2210356)))

(declare-fun b!7584468 () Bool)

(declare-fun tp!2210357 () Bool)

(declare-fun tp!2210355 () Bool)

(assert (=> b!7584468 (= e!4513984 (and tp!2210357 tp!2210355))))

(assert (=> b!7584144 (= tp!2210215 e!4513984)))

(declare-fun b!7584465 () Bool)

(assert (=> b!7584465 (= e!4513984 tp_is_empty!50541)))

(assert (= (and b!7584144 ((_ is ElementMatch!20093) (reg!20422 (reg!20422 r!22341)))) b!7584465))

(assert (= (and b!7584144 ((_ is Concat!28938) (reg!20422 (reg!20422 r!22341)))) b!7584466))

(assert (= (and b!7584144 ((_ is Star!20093) (reg!20422 (reg!20422 r!22341)))) b!7584467))

(assert (= (and b!7584144 ((_ is Union!20093) (reg!20422 (reg!20422 r!22341)))) b!7584468))

(declare-fun b!7584470 () Bool)

(declare-fun e!4513985 () Bool)

(declare-fun tp!2210359 () Bool)

(declare-fun tp!2210363 () Bool)

(assert (=> b!7584470 (= e!4513985 (and tp!2210359 tp!2210363))))

(declare-fun b!7584471 () Bool)

(declare-fun tp!2210361 () Bool)

(assert (=> b!7584471 (= e!4513985 tp!2210361)))

(declare-fun b!7584472 () Bool)

(declare-fun tp!2210362 () Bool)

(declare-fun tp!2210360 () Bool)

(assert (=> b!7584472 (= e!4513985 (and tp!2210362 tp!2210360))))

(assert (=> b!7584143 (= tp!2210213 e!4513985)))

(declare-fun b!7584469 () Bool)

(assert (=> b!7584469 (= e!4513985 tp_is_empty!50541)))

(assert (= (and b!7584143 ((_ is ElementMatch!20093) (regOne!40698 (reg!20422 r!22341)))) b!7584469))

(assert (= (and b!7584143 ((_ is Concat!28938) (regOne!40698 (reg!20422 r!22341)))) b!7584470))

(assert (= (and b!7584143 ((_ is Star!20093) (regOne!40698 (reg!20422 r!22341)))) b!7584471))

(assert (= (and b!7584143 ((_ is Union!20093) (regOne!40698 (reg!20422 r!22341)))) b!7584472))

(declare-fun b!7584474 () Bool)

(declare-fun e!4513986 () Bool)

(declare-fun tp!2210364 () Bool)

(declare-fun tp!2210368 () Bool)

(assert (=> b!7584474 (= e!4513986 (and tp!2210364 tp!2210368))))

(declare-fun b!7584475 () Bool)

(declare-fun tp!2210366 () Bool)

(assert (=> b!7584475 (= e!4513986 tp!2210366)))

(declare-fun b!7584476 () Bool)

(declare-fun tp!2210367 () Bool)

(declare-fun tp!2210365 () Bool)

(assert (=> b!7584476 (= e!4513986 (and tp!2210367 tp!2210365))))

(assert (=> b!7584143 (= tp!2210217 e!4513986)))

(declare-fun b!7584473 () Bool)

(assert (=> b!7584473 (= e!4513986 tp_is_empty!50541)))

(assert (= (and b!7584143 ((_ is ElementMatch!20093) (regTwo!40698 (reg!20422 r!22341)))) b!7584473))

(assert (= (and b!7584143 ((_ is Concat!28938) (regTwo!40698 (reg!20422 r!22341)))) b!7584474))

(assert (= (and b!7584143 ((_ is Star!20093) (regTwo!40698 (reg!20422 r!22341)))) b!7584475))

(assert (= (and b!7584143 ((_ is Union!20093) (regTwo!40698 (reg!20422 r!22341)))) b!7584476))

(declare-fun b!7584478 () Bool)

(declare-fun e!4513987 () Bool)

(declare-fun tp!2210369 () Bool)

(declare-fun tp!2210373 () Bool)

(assert (=> b!7584478 (= e!4513987 (and tp!2210369 tp!2210373))))

(declare-fun b!7584479 () Bool)

(declare-fun tp!2210371 () Bool)

(assert (=> b!7584479 (= e!4513987 tp!2210371)))

(declare-fun b!7584480 () Bool)

(declare-fun tp!2210372 () Bool)

(declare-fun tp!2210370 () Bool)

(assert (=> b!7584480 (= e!4513987 (and tp!2210372 tp!2210370))))

(assert (=> b!7584124 (= tp!2210193 e!4513987)))

(declare-fun b!7584477 () Bool)

(assert (=> b!7584477 (= e!4513987 tp_is_empty!50541)))

(assert (= (and b!7584124 ((_ is ElementMatch!20093) (regOne!40699 (regOne!40698 r!22341)))) b!7584477))

(assert (= (and b!7584124 ((_ is Concat!28938) (regOne!40699 (regOne!40698 r!22341)))) b!7584478))

(assert (= (and b!7584124 ((_ is Star!20093) (regOne!40699 (regOne!40698 r!22341)))) b!7584479))

(assert (= (and b!7584124 ((_ is Union!20093) (regOne!40699 (regOne!40698 r!22341)))) b!7584480))

(declare-fun b!7584482 () Bool)

(declare-fun e!4513988 () Bool)

(declare-fun tp!2210374 () Bool)

(declare-fun tp!2210378 () Bool)

(assert (=> b!7584482 (= e!4513988 (and tp!2210374 tp!2210378))))

(declare-fun b!7584483 () Bool)

(declare-fun tp!2210376 () Bool)

(assert (=> b!7584483 (= e!4513988 tp!2210376)))

(declare-fun b!7584484 () Bool)

(declare-fun tp!2210377 () Bool)

(declare-fun tp!2210375 () Bool)

(assert (=> b!7584484 (= e!4513988 (and tp!2210377 tp!2210375))))

(assert (=> b!7584124 (= tp!2210191 e!4513988)))

(declare-fun b!7584481 () Bool)

(assert (=> b!7584481 (= e!4513988 tp_is_empty!50541)))

(assert (= (and b!7584124 ((_ is ElementMatch!20093) (regTwo!40699 (regOne!40698 r!22341)))) b!7584481))

(assert (= (and b!7584124 ((_ is Concat!28938) (regTwo!40699 (regOne!40698 r!22341)))) b!7584482))

(assert (= (and b!7584124 ((_ is Star!20093) (regTwo!40699 (regOne!40698 r!22341)))) b!7584483))

(assert (= (and b!7584124 ((_ is Union!20093) (regTwo!40699 (regOne!40698 r!22341)))) b!7584484))

(declare-fun b!7584486 () Bool)

(declare-fun e!4513989 () Bool)

(declare-fun tp!2210379 () Bool)

(declare-fun tp!2210383 () Bool)

(assert (=> b!7584486 (= e!4513989 (and tp!2210379 tp!2210383))))

(declare-fun b!7584487 () Bool)

(declare-fun tp!2210381 () Bool)

(assert (=> b!7584487 (= e!4513989 tp!2210381)))

(declare-fun b!7584488 () Bool)

(declare-fun tp!2210382 () Bool)

(declare-fun tp!2210380 () Bool)

(assert (=> b!7584488 (= e!4513989 (and tp!2210382 tp!2210380))))

(assert (=> b!7584145 (= tp!2210216 e!4513989)))

(declare-fun b!7584485 () Bool)

(assert (=> b!7584485 (= e!4513989 tp_is_empty!50541)))

(assert (= (and b!7584145 ((_ is ElementMatch!20093) (regOne!40699 (reg!20422 r!22341)))) b!7584485))

(assert (= (and b!7584145 ((_ is Concat!28938) (regOne!40699 (reg!20422 r!22341)))) b!7584486))

(assert (= (and b!7584145 ((_ is Star!20093) (regOne!40699 (reg!20422 r!22341)))) b!7584487))

(assert (= (and b!7584145 ((_ is Union!20093) (regOne!40699 (reg!20422 r!22341)))) b!7584488))

(declare-fun b!7584490 () Bool)

(declare-fun e!4513990 () Bool)

(declare-fun tp!2210384 () Bool)

(declare-fun tp!2210388 () Bool)

(assert (=> b!7584490 (= e!4513990 (and tp!2210384 tp!2210388))))

(declare-fun b!7584491 () Bool)

(declare-fun tp!2210386 () Bool)

(assert (=> b!7584491 (= e!4513990 tp!2210386)))

(declare-fun b!7584492 () Bool)

(declare-fun tp!2210387 () Bool)

(declare-fun tp!2210385 () Bool)

(assert (=> b!7584492 (= e!4513990 (and tp!2210387 tp!2210385))))

(assert (=> b!7584145 (= tp!2210214 e!4513990)))

(declare-fun b!7584489 () Bool)

(assert (=> b!7584489 (= e!4513990 tp_is_empty!50541)))

(assert (= (and b!7584145 ((_ is ElementMatch!20093) (regTwo!40699 (reg!20422 r!22341)))) b!7584489))

(assert (= (and b!7584145 ((_ is Concat!28938) (regTwo!40699 (reg!20422 r!22341)))) b!7584490))

(assert (= (and b!7584145 ((_ is Star!20093) (regTwo!40699 (reg!20422 r!22341)))) b!7584491))

(assert (= (and b!7584145 ((_ is Union!20093) (regTwo!40699 (reg!20422 r!22341)))) b!7584492))

(declare-fun b!7584494 () Bool)

(declare-fun e!4513991 () Bool)

(declare-fun tp!2210389 () Bool)

(declare-fun tp!2210393 () Bool)

(assert (=> b!7584494 (= e!4513991 (and tp!2210389 tp!2210393))))

(declare-fun b!7584495 () Bool)

(declare-fun tp!2210391 () Bool)

(assert (=> b!7584495 (= e!4513991 tp!2210391)))

(declare-fun b!7584496 () Bool)

(declare-fun tp!2210392 () Bool)

(declare-fun tp!2210390 () Bool)

(assert (=> b!7584496 (= e!4513991 (and tp!2210392 tp!2210390))))

(assert (=> b!7584136 (= tp!2210205 e!4513991)))

(declare-fun b!7584493 () Bool)

(assert (=> b!7584493 (= e!4513991 tp_is_empty!50541)))

(assert (= (and b!7584136 ((_ is ElementMatch!20093) (reg!20422 (regOne!40699 r!22341)))) b!7584493))

(assert (= (and b!7584136 ((_ is Concat!28938) (reg!20422 (regOne!40699 r!22341)))) b!7584494))

(assert (= (and b!7584136 ((_ is Star!20093) (reg!20422 (regOne!40699 r!22341)))) b!7584495))

(assert (= (and b!7584136 ((_ is Union!20093) (reg!20422 (regOne!40699 r!22341)))) b!7584496))

(declare-fun b!7584498 () Bool)

(declare-fun e!4513992 () Bool)

(declare-fun tp!2210394 () Bool)

(declare-fun tp!2210398 () Bool)

(assert (=> b!7584498 (= e!4513992 (and tp!2210394 tp!2210398))))

(declare-fun b!7584499 () Bool)

(declare-fun tp!2210396 () Bool)

(assert (=> b!7584499 (= e!4513992 tp!2210396)))

(declare-fun b!7584500 () Bool)

(declare-fun tp!2210397 () Bool)

(declare-fun tp!2210395 () Bool)

(assert (=> b!7584500 (= e!4513992 (and tp!2210397 tp!2210395))))

(assert (=> b!7584135 (= tp!2210203 e!4513992)))

(declare-fun b!7584497 () Bool)

(assert (=> b!7584497 (= e!4513992 tp_is_empty!50541)))

(assert (= (and b!7584135 ((_ is ElementMatch!20093) (regOne!40698 (regOne!40699 r!22341)))) b!7584497))

(assert (= (and b!7584135 ((_ is Concat!28938) (regOne!40698 (regOne!40699 r!22341)))) b!7584498))

(assert (= (and b!7584135 ((_ is Star!20093) (regOne!40698 (regOne!40699 r!22341)))) b!7584499))

(assert (= (and b!7584135 ((_ is Union!20093) (regOne!40698 (regOne!40699 r!22341)))) b!7584500))

(declare-fun b!7584502 () Bool)

(declare-fun e!4513993 () Bool)

(declare-fun tp!2210399 () Bool)

(declare-fun tp!2210403 () Bool)

(assert (=> b!7584502 (= e!4513993 (and tp!2210399 tp!2210403))))

(declare-fun b!7584503 () Bool)

(declare-fun tp!2210401 () Bool)

(assert (=> b!7584503 (= e!4513993 tp!2210401)))

(declare-fun b!7584504 () Bool)

(declare-fun tp!2210402 () Bool)

(declare-fun tp!2210400 () Bool)

(assert (=> b!7584504 (= e!4513993 (and tp!2210402 tp!2210400))))

(assert (=> b!7584135 (= tp!2210207 e!4513993)))

(declare-fun b!7584501 () Bool)

(assert (=> b!7584501 (= e!4513993 tp_is_empty!50541)))

(assert (= (and b!7584135 ((_ is ElementMatch!20093) (regTwo!40698 (regOne!40699 r!22341)))) b!7584501))

(assert (= (and b!7584135 ((_ is Concat!28938) (regTwo!40698 (regOne!40699 r!22341)))) b!7584502))

(assert (= (and b!7584135 ((_ is Star!20093) (regTwo!40698 (regOne!40699 r!22341)))) b!7584503))

(assert (= (and b!7584135 ((_ is Union!20093) (regTwo!40698 (regOne!40699 r!22341)))) b!7584504))

(declare-fun b!7584506 () Bool)

(declare-fun e!4513994 () Bool)

(declare-fun tp!2210404 () Bool)

(declare-fun tp!2210408 () Bool)

(assert (=> b!7584506 (= e!4513994 (and tp!2210404 tp!2210408))))

(declare-fun b!7584507 () Bool)

(declare-fun tp!2210406 () Bool)

(assert (=> b!7584507 (= e!4513994 tp!2210406)))

(declare-fun b!7584508 () Bool)

(declare-fun tp!2210407 () Bool)

(declare-fun tp!2210405 () Bool)

(assert (=> b!7584508 (= e!4513994 (and tp!2210407 tp!2210405))))

(assert (=> b!7584140 (= tp!2210210 e!4513994)))

(declare-fun b!7584505 () Bool)

(assert (=> b!7584505 (= e!4513994 tp_is_empty!50541)))

(assert (= (and b!7584140 ((_ is ElementMatch!20093) (reg!20422 (regTwo!40699 r!22341)))) b!7584505))

(assert (= (and b!7584140 ((_ is Concat!28938) (reg!20422 (regTwo!40699 r!22341)))) b!7584506))

(assert (= (and b!7584140 ((_ is Star!20093) (reg!20422 (regTwo!40699 r!22341)))) b!7584507))

(assert (= (and b!7584140 ((_ is Union!20093) (reg!20422 (regTwo!40699 r!22341)))) b!7584508))

(declare-fun b!7584510 () Bool)

(declare-fun e!4513995 () Bool)

(declare-fun tp!2210409 () Bool)

(declare-fun tp!2210413 () Bool)

(assert (=> b!7584510 (= e!4513995 (and tp!2210409 tp!2210413))))

(declare-fun b!7584511 () Bool)

(declare-fun tp!2210411 () Bool)

(assert (=> b!7584511 (= e!4513995 tp!2210411)))

(declare-fun b!7584512 () Bool)

(declare-fun tp!2210412 () Bool)

(declare-fun tp!2210410 () Bool)

(assert (=> b!7584512 (= e!4513995 (and tp!2210412 tp!2210410))))

(assert (=> b!7584122 (= tp!2210190 e!4513995)))

(declare-fun b!7584509 () Bool)

(assert (=> b!7584509 (= e!4513995 tp_is_empty!50541)))

(assert (= (and b!7584122 ((_ is ElementMatch!20093) (regOne!40698 (regOne!40698 r!22341)))) b!7584509))

(assert (= (and b!7584122 ((_ is Concat!28938) (regOne!40698 (regOne!40698 r!22341)))) b!7584510))

(assert (= (and b!7584122 ((_ is Star!20093) (regOne!40698 (regOne!40698 r!22341)))) b!7584511))

(assert (= (and b!7584122 ((_ is Union!20093) (regOne!40698 (regOne!40698 r!22341)))) b!7584512))

(declare-fun b!7584514 () Bool)

(declare-fun e!4513996 () Bool)

(declare-fun tp!2210414 () Bool)

(declare-fun tp!2210418 () Bool)

(assert (=> b!7584514 (= e!4513996 (and tp!2210414 tp!2210418))))

(declare-fun b!7584515 () Bool)

(declare-fun tp!2210416 () Bool)

(assert (=> b!7584515 (= e!4513996 tp!2210416)))

(declare-fun b!7584516 () Bool)

(declare-fun tp!2210417 () Bool)

(declare-fun tp!2210415 () Bool)

(assert (=> b!7584516 (= e!4513996 (and tp!2210417 tp!2210415))))

(assert (=> b!7584122 (= tp!2210194 e!4513996)))

(declare-fun b!7584513 () Bool)

(assert (=> b!7584513 (= e!4513996 tp_is_empty!50541)))

(assert (= (and b!7584122 ((_ is ElementMatch!20093) (regTwo!40698 (regOne!40698 r!22341)))) b!7584513))

(assert (= (and b!7584122 ((_ is Concat!28938) (regTwo!40698 (regOne!40698 r!22341)))) b!7584514))

(assert (= (and b!7584122 ((_ is Star!20093) (regTwo!40698 (regOne!40698 r!22341)))) b!7584515))

(assert (= (and b!7584122 ((_ is Union!20093) (regTwo!40698 (regOne!40698 r!22341)))) b!7584516))

(declare-fun b!7584518 () Bool)

(declare-fun e!4513997 () Bool)

(declare-fun tp!2210419 () Bool)

(declare-fun tp!2210423 () Bool)

(assert (=> b!7584518 (= e!4513997 (and tp!2210419 tp!2210423))))

(declare-fun b!7584519 () Bool)

(declare-fun tp!2210421 () Bool)

(assert (=> b!7584519 (= e!4513997 tp!2210421)))

(declare-fun b!7584520 () Bool)

(declare-fun tp!2210422 () Bool)

(declare-fun tp!2210420 () Bool)

(assert (=> b!7584520 (= e!4513997 (and tp!2210422 tp!2210420))))

(assert (=> b!7584126 (= tp!2210195 e!4513997)))

(declare-fun b!7584517 () Bool)

(assert (=> b!7584517 (= e!4513997 tp_is_empty!50541)))

(assert (= (and b!7584126 ((_ is ElementMatch!20093) (regOne!40698 (regTwo!40698 r!22341)))) b!7584517))

(assert (= (and b!7584126 ((_ is Concat!28938) (regOne!40698 (regTwo!40698 r!22341)))) b!7584518))

(assert (= (and b!7584126 ((_ is Star!20093) (regOne!40698 (regTwo!40698 r!22341)))) b!7584519))

(assert (= (and b!7584126 ((_ is Union!20093) (regOne!40698 (regTwo!40698 r!22341)))) b!7584520))

(declare-fun b!7584522 () Bool)

(declare-fun e!4513998 () Bool)

(declare-fun tp!2210424 () Bool)

(declare-fun tp!2210428 () Bool)

(assert (=> b!7584522 (= e!4513998 (and tp!2210424 tp!2210428))))

(declare-fun b!7584523 () Bool)

(declare-fun tp!2210426 () Bool)

(assert (=> b!7584523 (= e!4513998 tp!2210426)))

(declare-fun b!7584524 () Bool)

(declare-fun tp!2210427 () Bool)

(declare-fun tp!2210425 () Bool)

(assert (=> b!7584524 (= e!4513998 (and tp!2210427 tp!2210425))))

(assert (=> b!7584126 (= tp!2210199 e!4513998)))

(declare-fun b!7584521 () Bool)

(assert (=> b!7584521 (= e!4513998 tp_is_empty!50541)))

(assert (= (and b!7584126 ((_ is ElementMatch!20093) (regTwo!40698 (regTwo!40698 r!22341)))) b!7584521))

(assert (= (and b!7584126 ((_ is Concat!28938) (regTwo!40698 (regTwo!40698 r!22341)))) b!7584522))

(assert (= (and b!7584126 ((_ is Star!20093) (regTwo!40698 (regTwo!40698 r!22341)))) b!7584523))

(assert (= (and b!7584126 ((_ is Union!20093) (regTwo!40698 (regTwo!40698 r!22341)))) b!7584524))

(declare-fun b!7584526 () Bool)

(declare-fun e!4513999 () Bool)

(declare-fun tp!2210429 () Bool)

(declare-fun tp!2210433 () Bool)

(assert (=> b!7584526 (= e!4513999 (and tp!2210429 tp!2210433))))

(declare-fun b!7584527 () Bool)

(declare-fun tp!2210431 () Bool)

(assert (=> b!7584527 (= e!4513999 tp!2210431)))

(declare-fun b!7584528 () Bool)

(declare-fun tp!2210432 () Bool)

(declare-fun tp!2210430 () Bool)

(assert (=> b!7584528 (= e!4513999 (and tp!2210432 tp!2210430))))

(assert (=> b!7584123 (= tp!2210192 e!4513999)))

(declare-fun b!7584525 () Bool)

(assert (=> b!7584525 (= e!4513999 tp_is_empty!50541)))

(assert (= (and b!7584123 ((_ is ElementMatch!20093) (reg!20422 (regOne!40698 r!22341)))) b!7584525))

(assert (= (and b!7584123 ((_ is Concat!28938) (reg!20422 (regOne!40698 r!22341)))) b!7584526))

(assert (= (and b!7584123 ((_ is Star!20093) (reg!20422 (regOne!40698 r!22341)))) b!7584527))

(assert (= (and b!7584123 ((_ is Union!20093) (reg!20422 (regOne!40698 r!22341)))) b!7584528))

(declare-fun b!7584530 () Bool)

(declare-fun e!4514000 () Bool)

(declare-fun tp!2210434 () Bool)

(declare-fun tp!2210438 () Bool)

(assert (=> b!7584530 (= e!4514000 (and tp!2210434 tp!2210438))))

(declare-fun b!7584531 () Bool)

(declare-fun tp!2210436 () Bool)

(assert (=> b!7584531 (= e!4514000 tp!2210436)))

(declare-fun b!7584532 () Bool)

(declare-fun tp!2210437 () Bool)

(declare-fun tp!2210435 () Bool)

(assert (=> b!7584532 (= e!4514000 (and tp!2210437 tp!2210435))))

(assert (=> b!7584128 (= tp!2210198 e!4514000)))

(declare-fun b!7584529 () Bool)

(assert (=> b!7584529 (= e!4514000 tp_is_empty!50541)))

(assert (= (and b!7584128 ((_ is ElementMatch!20093) (regOne!40699 (regTwo!40698 r!22341)))) b!7584529))

(assert (= (and b!7584128 ((_ is Concat!28938) (regOne!40699 (regTwo!40698 r!22341)))) b!7584530))

(assert (= (and b!7584128 ((_ is Star!20093) (regOne!40699 (regTwo!40698 r!22341)))) b!7584531))

(assert (= (and b!7584128 ((_ is Union!20093) (regOne!40699 (regTwo!40698 r!22341)))) b!7584532))

(declare-fun b!7584534 () Bool)

(declare-fun e!4514001 () Bool)

(declare-fun tp!2210439 () Bool)

(declare-fun tp!2210443 () Bool)

(assert (=> b!7584534 (= e!4514001 (and tp!2210439 tp!2210443))))

(declare-fun b!7584535 () Bool)

(declare-fun tp!2210441 () Bool)

(assert (=> b!7584535 (= e!4514001 tp!2210441)))

(declare-fun b!7584536 () Bool)

(declare-fun tp!2210442 () Bool)

(declare-fun tp!2210440 () Bool)

(assert (=> b!7584536 (= e!4514001 (and tp!2210442 tp!2210440))))

(assert (=> b!7584128 (= tp!2210196 e!4514001)))

(declare-fun b!7584533 () Bool)

(assert (=> b!7584533 (= e!4514001 tp_is_empty!50541)))

(assert (= (and b!7584128 ((_ is ElementMatch!20093) (regTwo!40699 (regTwo!40698 r!22341)))) b!7584533))

(assert (= (and b!7584128 ((_ is Concat!28938) (regTwo!40699 (regTwo!40698 r!22341)))) b!7584534))

(assert (= (and b!7584128 ((_ is Star!20093) (regTwo!40699 (regTwo!40698 r!22341)))) b!7584535))

(assert (= (and b!7584128 ((_ is Union!20093) (regTwo!40699 (regTwo!40698 r!22341)))) b!7584536))

(declare-fun b!7584538 () Bool)

(declare-fun e!4514002 () Bool)

(declare-fun tp!2210444 () Bool)

(declare-fun tp!2210448 () Bool)

(assert (=> b!7584538 (= e!4514002 (and tp!2210444 tp!2210448))))

(declare-fun b!7584539 () Bool)

(declare-fun tp!2210446 () Bool)

(assert (=> b!7584539 (= e!4514002 tp!2210446)))

(declare-fun b!7584540 () Bool)

(declare-fun tp!2210447 () Bool)

(declare-fun tp!2210445 () Bool)

(assert (=> b!7584540 (= e!4514002 (and tp!2210447 tp!2210445))))

(assert (=> b!7584127 (= tp!2210197 e!4514002)))

(declare-fun b!7584537 () Bool)

(assert (=> b!7584537 (= e!4514002 tp_is_empty!50541)))

(assert (= (and b!7584127 ((_ is ElementMatch!20093) (reg!20422 (regTwo!40698 r!22341)))) b!7584537))

(assert (= (and b!7584127 ((_ is Concat!28938) (reg!20422 (regTwo!40698 r!22341)))) b!7584538))

(assert (= (and b!7584127 ((_ is Star!20093) (reg!20422 (regTwo!40698 r!22341)))) b!7584539))

(assert (= (and b!7584127 ((_ is Union!20093) (reg!20422 (regTwo!40698 r!22341)))) b!7584540))

(declare-fun b!7584542 () Bool)

(declare-fun e!4514003 () Bool)

(declare-fun tp!2210449 () Bool)

(declare-fun tp!2210453 () Bool)

(assert (=> b!7584542 (= e!4514003 (and tp!2210449 tp!2210453))))

(declare-fun b!7584543 () Bool)

(declare-fun tp!2210451 () Bool)

(assert (=> b!7584543 (= e!4514003 tp!2210451)))

(declare-fun b!7584544 () Bool)

(declare-fun tp!2210452 () Bool)

(declare-fun tp!2210450 () Bool)

(assert (=> b!7584544 (= e!4514003 (and tp!2210452 tp!2210450))))

(assert (=> b!7584137 (= tp!2210206 e!4514003)))

(declare-fun b!7584541 () Bool)

(assert (=> b!7584541 (= e!4514003 tp_is_empty!50541)))

(assert (= (and b!7584137 ((_ is ElementMatch!20093) (regOne!40699 (regOne!40699 r!22341)))) b!7584541))

(assert (= (and b!7584137 ((_ is Concat!28938) (regOne!40699 (regOne!40699 r!22341)))) b!7584542))

(assert (= (and b!7584137 ((_ is Star!20093) (regOne!40699 (regOne!40699 r!22341)))) b!7584543))

(assert (= (and b!7584137 ((_ is Union!20093) (regOne!40699 (regOne!40699 r!22341)))) b!7584544))

(declare-fun b!7584546 () Bool)

(declare-fun e!4514004 () Bool)

(declare-fun tp!2210454 () Bool)

(declare-fun tp!2210458 () Bool)

(assert (=> b!7584546 (= e!4514004 (and tp!2210454 tp!2210458))))

(declare-fun b!7584547 () Bool)

(declare-fun tp!2210456 () Bool)

(assert (=> b!7584547 (= e!4514004 tp!2210456)))

(declare-fun b!7584548 () Bool)

(declare-fun tp!2210457 () Bool)

(declare-fun tp!2210455 () Bool)

(assert (=> b!7584548 (= e!4514004 (and tp!2210457 tp!2210455))))

(assert (=> b!7584137 (= tp!2210204 e!4514004)))

(declare-fun b!7584545 () Bool)

(assert (=> b!7584545 (= e!4514004 tp_is_empty!50541)))

(assert (= (and b!7584137 ((_ is ElementMatch!20093) (regTwo!40699 (regOne!40699 r!22341)))) b!7584545))

(assert (= (and b!7584137 ((_ is Concat!28938) (regTwo!40699 (regOne!40699 r!22341)))) b!7584546))

(assert (= (and b!7584137 ((_ is Star!20093) (regTwo!40699 (regOne!40699 r!22341)))) b!7584547))

(assert (= (and b!7584137 ((_ is Union!20093) (regTwo!40699 (regOne!40699 r!22341)))) b!7584548))

(declare-fun b!7584550 () Bool)

(declare-fun e!4514005 () Bool)

(declare-fun tp!2210459 () Bool)

(declare-fun tp!2210463 () Bool)

(assert (=> b!7584550 (= e!4514005 (and tp!2210459 tp!2210463))))

(declare-fun b!7584551 () Bool)

(declare-fun tp!2210461 () Bool)

(assert (=> b!7584551 (= e!4514005 tp!2210461)))

(declare-fun b!7584552 () Bool)

(declare-fun tp!2210462 () Bool)

(declare-fun tp!2210460 () Bool)

(assert (=> b!7584552 (= e!4514005 (and tp!2210462 tp!2210460))))

(assert (=> b!7584141 (= tp!2210211 e!4514005)))

(declare-fun b!7584549 () Bool)

(assert (=> b!7584549 (= e!4514005 tp_is_empty!50541)))

(assert (= (and b!7584141 ((_ is ElementMatch!20093) (regOne!40699 (regTwo!40699 r!22341)))) b!7584549))

(assert (= (and b!7584141 ((_ is Concat!28938) (regOne!40699 (regTwo!40699 r!22341)))) b!7584550))

(assert (= (and b!7584141 ((_ is Star!20093) (regOne!40699 (regTwo!40699 r!22341)))) b!7584551))

(assert (= (and b!7584141 ((_ is Union!20093) (regOne!40699 (regTwo!40699 r!22341)))) b!7584552))

(declare-fun b!7584554 () Bool)

(declare-fun e!4514006 () Bool)

(declare-fun tp!2210464 () Bool)

(declare-fun tp!2210468 () Bool)

(assert (=> b!7584554 (= e!4514006 (and tp!2210464 tp!2210468))))

(declare-fun b!7584555 () Bool)

(declare-fun tp!2210466 () Bool)

(assert (=> b!7584555 (= e!4514006 tp!2210466)))

(declare-fun b!7584556 () Bool)

(declare-fun tp!2210467 () Bool)

(declare-fun tp!2210465 () Bool)

(assert (=> b!7584556 (= e!4514006 (and tp!2210467 tp!2210465))))

(assert (=> b!7584141 (= tp!2210209 e!4514006)))

(declare-fun b!7584553 () Bool)

(assert (=> b!7584553 (= e!4514006 tp_is_empty!50541)))

(assert (= (and b!7584141 ((_ is ElementMatch!20093) (regTwo!40699 (regTwo!40699 r!22341)))) b!7584553))

(assert (= (and b!7584141 ((_ is Concat!28938) (regTwo!40699 (regTwo!40699 r!22341)))) b!7584554))

(assert (= (and b!7584141 ((_ is Star!20093) (regTwo!40699 (regTwo!40699 r!22341)))) b!7584555))

(assert (= (and b!7584141 ((_ is Union!20093) (regTwo!40699 (regTwo!40699 r!22341)))) b!7584556))

(declare-fun b!7584557 () Bool)

(declare-fun e!4514007 () Bool)

(declare-fun tp!2210469 () Bool)

(assert (=> b!7584557 (= e!4514007 (and tp_is_empty!50541 tp!2210469))))

(assert (=> b!7584133 (= tp!2210202 e!4514007)))

(assert (= (and b!7584133 ((_ is Cons!72852) (t!387711 (t!387711 s!13436)))) b!7584557))

(check-sat (not b!7584532) (not bm!695502) (not b!7584450) (not b!7584410) (not b!7584458) (not bm!695501) (not d!2318804) (not b!7584495) (not d!2318796) (not b!7584490) (not d!2318810) (not bm!695496) (not b!7584475) (not b!7584526) (not b!7584535) (not b!7584472) (not b!7584520) (not d!2318814) (not b!7584484) (not b!7584478) (not b!7584522) (not b!7584474) (not b!7584494) (not b!7584551) (not d!2318816) (not b!7584415) (not b!7584466) (not bm!695497) (not b!7584508) (not b!7584523) (not b!7584491) (not b!7584411) (not b!7584552) (not b!7584547) (not b!7584463) (not bm!695513) (not b!7584528) (not b!7584550) (not b!7584548) (not b!7584514) (not b!7584480) (not b!7584405) (not b!7584446) (not bm!695516) (not b!7584414) (not b!7584510) (not b!7584536) (not bm!695499) (not b!7584555) (not b!7584470) (not b!7584471) (not b!7584534) (not b!7584417) (not b!7584462) (not b!7584507) (not b!7584486) (not b!7584519) (not b!7584367) (not b!7584498) (not b!7584368) (not b!7584402) (not b!7584540) (not b!7584524) (not b!7584518) (not b!7584476) (not d!2318800) (not bm!695490) (not b!7584503) (not bm!695498) (not bm!695491) (not b!7584502) (not b!7584543) (not b!7584467) (not b!7584504) (not b!7584556) (not b!7584527) (not b!7584554) (not b!7584492) (not b!7584546) (not b!7584512) (not b!7584403) (not d!2318820) (not bm!695500) (not b!7584468) (not b!7584544) (not b!7584464) (not b!7584530) (not bm!695517) (not b!7584557) (not b!7584487) (not b!7584542) (not b!7584496) (not b!7584499) (not b!7584538) (not b!7584334) (not b!7584500) (not b!7584531) (not b!7584515) tp_is_empty!50541 (not b!7584511) (not bm!695511) (not b!7584506) (not b!7584488) (not b!7584482) (not b!7584483) (not b!7584516) (not b!7584460) (not b!7584539) (not b!7584479) (not b!7584459))
(check-sat)
