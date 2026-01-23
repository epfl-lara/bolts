; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743474 () Bool)

(assert start!743474)

(declare-fun b!7857670 () Bool)

(declare-fun e!4644056 () Bool)

(declare-fun tp!2327941 () Bool)

(declare-fun tp!2327947 () Bool)

(assert (=> b!7857670 (= e!4644056 (and tp!2327941 tp!2327947))))

(declare-fun b!7857671 () Bool)

(declare-fun e!4644055 () Bool)

(declare-datatypes ((C!42532 0))(
  ( (C!42533 (val!31728 Int)) )
))
(declare-datatypes ((Regex!21103 0))(
  ( (ElementMatch!21103 (c!1444141 C!42532)) (Concat!29948 (regOne!42718 Regex!21103) (regTwo!42718 Regex!21103)) (EmptyExpr!21103) (Star!21103 (reg!21432 Regex!21103)) (EmptyLang!21103) (Union!21103 (regOne!42719 Regex!21103) (regTwo!42719 Regex!21103)) )
))
(declare-fun r1!6227 () Regex!21103)

(declare-fun nullable!9375 (Regex!21103) Bool)

(assert (=> b!7857671 (= e!4644055 (not (nullable!9375 r1!6227)))))

(declare-fun b!7857672 () Bool)

(declare-fun tp!2327948 () Bool)

(declare-fun tp!2327940 () Bool)

(assert (=> b!7857672 (= e!4644056 (and tp!2327948 tp!2327940))))

(declare-fun b!7857674 () Bool)

(declare-fun e!4644053 () Bool)

(declare-fun tp!2327937 () Bool)

(declare-fun tp!2327942 () Bool)

(assert (=> b!7857674 (= e!4644053 (and tp!2327937 tp!2327942))))

(declare-fun b!7857675 () Bool)

(declare-fun res!3123994 () Bool)

(assert (=> b!7857675 (=> (not res!3123994) (not e!4644055))))

(declare-fun r2!6165 () Regex!21103)

(declare-fun validRegex!11513 (Regex!21103) Bool)

(assert (=> b!7857675 (= res!3123994 (validRegex!11513 r2!6165))))

(declare-fun b!7857676 () Bool)

(declare-fun res!3123995 () Bool)

(assert (=> b!7857676 (=> (not res!3123995) (not e!4644055))))

(declare-datatypes ((List!73962 0))(
  ( (Nil!73838) (Cons!73838 (h!80286 C!42532) (t!388697 List!73962)) )
))
(declare-fun s1!4084 () List!73962)

(declare-fun matchR!10539 (Regex!21103 List!73962) Bool)

(assert (=> b!7857676 (= res!3123995 (matchR!10539 r1!6227 s1!4084))))

(declare-fun b!7857677 () Bool)

(declare-fun tp!2327938 () Bool)

(assert (=> b!7857677 (= e!4644053 tp!2327938)))

(declare-fun b!7857678 () Bool)

(declare-fun tp_is_empty!52605 () Bool)

(assert (=> b!7857678 (= e!4644056 tp_is_empty!52605)))

(declare-fun b!7857679 () Bool)

(declare-fun res!3123998 () Bool)

(assert (=> b!7857679 (=> (not res!3123998) (not e!4644055))))

(declare-fun s2!3706 () List!73962)

(assert (=> b!7857679 (= res!3123998 (matchR!10539 r2!6165 s2!3706))))

(declare-fun b!7857680 () Bool)

(declare-fun tp!2327946 () Bool)

(declare-fun tp!2327945 () Bool)

(assert (=> b!7857680 (= e!4644053 (and tp!2327946 tp!2327945))))

(declare-fun b!7857673 () Bool)

(declare-fun e!4644057 () Bool)

(declare-fun tp!2327943 () Bool)

(assert (=> b!7857673 (= e!4644057 (and tp_is_empty!52605 tp!2327943))))

(declare-fun res!3123996 () Bool)

(assert (=> start!743474 (=> (not res!3123996) (not e!4644055))))

(assert (=> start!743474 (= res!3123996 (validRegex!11513 r1!6227))))

(assert (=> start!743474 e!4644055))

(assert (=> start!743474 e!4644056))

(assert (=> start!743474 e!4644053))

(assert (=> start!743474 e!4644057))

(declare-fun e!4644054 () Bool)

(assert (=> start!743474 e!4644054))

(declare-fun b!7857681 () Bool)

(declare-fun tp!2327944 () Bool)

(assert (=> b!7857681 (= e!4644054 (and tp_is_empty!52605 tp!2327944))))

(declare-fun b!7857682 () Bool)

(declare-fun res!3123997 () Bool)

(assert (=> b!7857682 (=> (not res!3123997) (not e!4644055))))

(get-info :version)

(assert (=> b!7857682 (= res!3123997 (not ((_ is Cons!73838) s1!4084)))))

(declare-fun b!7857683 () Bool)

(declare-fun tp!2327939 () Bool)

(assert (=> b!7857683 (= e!4644056 tp!2327939)))

(declare-fun b!7857684 () Bool)

(assert (=> b!7857684 (= e!4644053 tp_is_empty!52605)))

(assert (= (and start!743474 res!3123996) b!7857675))

(assert (= (and b!7857675 res!3123994) b!7857676))

(assert (= (and b!7857676 res!3123995) b!7857679))

(assert (= (and b!7857679 res!3123998) b!7857682))

(assert (= (and b!7857682 res!3123997) b!7857671))

(assert (= (and start!743474 ((_ is ElementMatch!21103) r1!6227)) b!7857678))

(assert (= (and start!743474 ((_ is Concat!29948) r1!6227)) b!7857670))

(assert (= (and start!743474 ((_ is Star!21103) r1!6227)) b!7857683))

(assert (= (and start!743474 ((_ is Union!21103) r1!6227)) b!7857672))

(assert (= (and start!743474 ((_ is ElementMatch!21103) r2!6165)) b!7857684))

(assert (= (and start!743474 ((_ is Concat!29948) r2!6165)) b!7857680))

(assert (= (and start!743474 ((_ is Star!21103) r2!6165)) b!7857677))

(assert (= (and start!743474 ((_ is Union!21103) r2!6165)) b!7857674))

(assert (= (and start!743474 ((_ is Cons!73838) s1!4084)) b!7857673))

(assert (= (and start!743474 ((_ is Cons!73838) s2!3706)) b!7857681))

(declare-fun m!8261170 () Bool)

(assert (=> b!7857671 m!8261170))

(declare-fun m!8261172 () Bool)

(assert (=> b!7857679 m!8261172))

(declare-fun m!8261174 () Bool)

(assert (=> start!743474 m!8261174))

(declare-fun m!8261176 () Bool)

(assert (=> b!7857676 m!8261176))

(declare-fun m!8261178 () Bool)

(assert (=> b!7857675 m!8261178))

(check-sat (not b!7857670) (not b!7857680) (not b!7857676) (not b!7857671) (not b!7857675) (not b!7857673) (not start!743474) (not b!7857674) (not b!7857672) tp_is_empty!52605 (not b!7857681) (not b!7857679) (not b!7857683) (not b!7857677))
(check-sat)
(get-model)

(declare-fun call!728492 () Bool)

(declare-fun c!1444146 () Bool)

(declare-fun bm!728486 () Bool)

(declare-fun c!1444147 () Bool)

(assert (=> bm!728486 (= call!728492 (validRegex!11513 (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))))))

(declare-fun bm!728487 () Bool)

(declare-fun call!728491 () Bool)

(assert (=> bm!728487 (= call!728491 (validRegex!11513 (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))))))

(declare-fun b!7857703 () Bool)

(declare-fun e!4644073 () Bool)

(declare-fun e!4644074 () Bool)

(assert (=> b!7857703 (= e!4644073 e!4644074)))

(declare-fun res!3124009 () Bool)

(assert (=> b!7857703 (= res!3124009 (not (nullable!9375 (reg!21432 r1!6227))))))

(assert (=> b!7857703 (=> (not res!3124009) (not e!4644074))))

(declare-fun b!7857704 () Bool)

(declare-fun e!4644078 () Bool)

(declare-fun e!4644075 () Bool)

(assert (=> b!7857704 (= e!4644078 e!4644075)))

(declare-fun res!3124010 () Bool)

(assert (=> b!7857704 (=> (not res!3124010) (not e!4644075))))

(assert (=> b!7857704 (= res!3124010 call!728491)))

(declare-fun b!7857705 () Bool)

(assert (=> b!7857705 (= e!4644074 call!728492)))

(declare-fun b!7857706 () Bool)

(declare-fun res!3124013 () Bool)

(declare-fun e!4644077 () Bool)

(assert (=> b!7857706 (=> (not res!3124013) (not e!4644077))))

(declare-fun call!728493 () Bool)

(assert (=> b!7857706 (= res!3124013 call!728493)))

(declare-fun e!4644076 () Bool)

(assert (=> b!7857706 (= e!4644076 e!4644077)))

(declare-fun bm!728488 () Bool)

(assert (=> bm!728488 (= call!728493 call!728492)))

(declare-fun b!7857707 () Bool)

(assert (=> b!7857707 (= e!4644075 call!728493)))

(declare-fun d!2354166 () Bool)

(declare-fun res!3124012 () Bool)

(declare-fun e!4644072 () Bool)

(assert (=> d!2354166 (=> res!3124012 e!4644072)))

(assert (=> d!2354166 (= res!3124012 ((_ is ElementMatch!21103) r1!6227))))

(assert (=> d!2354166 (= (validRegex!11513 r1!6227) e!4644072)))

(declare-fun b!7857708 () Bool)

(assert (=> b!7857708 (= e!4644072 e!4644073)))

(assert (=> b!7857708 (= c!1444146 ((_ is Star!21103) r1!6227))))

(declare-fun b!7857709 () Bool)

(assert (=> b!7857709 (= e!4644073 e!4644076)))

(assert (=> b!7857709 (= c!1444147 ((_ is Union!21103) r1!6227))))

(declare-fun b!7857710 () Bool)

(assert (=> b!7857710 (= e!4644077 call!728491)))

(declare-fun b!7857711 () Bool)

(declare-fun res!3124011 () Bool)

(assert (=> b!7857711 (=> res!3124011 e!4644078)))

(assert (=> b!7857711 (= res!3124011 (not ((_ is Concat!29948) r1!6227)))))

(assert (=> b!7857711 (= e!4644076 e!4644078)))

(assert (= (and d!2354166 (not res!3124012)) b!7857708))

(assert (= (and b!7857708 c!1444146) b!7857703))

(assert (= (and b!7857708 (not c!1444146)) b!7857709))

(assert (= (and b!7857703 res!3124009) b!7857705))

(assert (= (and b!7857709 c!1444147) b!7857706))

(assert (= (and b!7857709 (not c!1444147)) b!7857711))

(assert (= (and b!7857706 res!3124013) b!7857710))

(assert (= (and b!7857711 (not res!3124011)) b!7857704))

(assert (= (and b!7857704 res!3124010) b!7857707))

(assert (= (or b!7857706 b!7857707) bm!728488))

(assert (= (or b!7857710 b!7857704) bm!728487))

(assert (= (or b!7857705 bm!728488) bm!728486))

(declare-fun m!8261180 () Bool)

(assert (=> bm!728486 m!8261180))

(declare-fun m!8261182 () Bool)

(assert (=> bm!728487 m!8261182))

(declare-fun m!8261184 () Bool)

(assert (=> b!7857703 m!8261184))

(assert (=> start!743474 d!2354166))

(declare-fun b!7857758 () Bool)

(declare-fun e!4644113 () Bool)

(declare-fun lt!2680152 () Bool)

(declare-fun call!728502 () Bool)

(assert (=> b!7857758 (= e!4644113 (= lt!2680152 call!728502))))

(declare-fun b!7857759 () Bool)

(declare-fun res!3124040 () Bool)

(declare-fun e!4644110 () Bool)

(assert (=> b!7857759 (=> res!3124040 e!4644110)))

(declare-fun e!4644111 () Bool)

(assert (=> b!7857759 (= res!3124040 e!4644111)))

(declare-fun res!3124045 () Bool)

(assert (=> b!7857759 (=> (not res!3124045) (not e!4644111))))

(assert (=> b!7857759 (= res!3124045 lt!2680152)))

(declare-fun b!7857760 () Bool)

(declare-fun res!3124041 () Bool)

(declare-fun e!4644108 () Bool)

(assert (=> b!7857760 (=> res!3124041 e!4644108)))

(declare-fun isEmpty!42346 (List!73962) Bool)

(declare-fun tail!15600 (List!73962) List!73962)

(assert (=> b!7857760 (= res!3124041 (not (isEmpty!42346 (tail!15600 s2!3706))))))

(declare-fun b!7857761 () Bool)

(declare-fun res!3124042 () Bool)

(assert (=> b!7857761 (=> (not res!3124042) (not e!4644111))))

(assert (=> b!7857761 (= res!3124042 (not call!728502))))

(declare-fun b!7857762 () Bool)

(declare-fun head!16057 (List!73962) C!42532)

(assert (=> b!7857762 (= e!4644111 (= (head!16057 s2!3706) (c!1444141 r2!6165)))))

(declare-fun bm!728497 () Bool)

(assert (=> bm!728497 (= call!728502 (isEmpty!42346 s2!3706))))

(declare-fun b!7857763 () Bool)

(declare-fun e!4644107 () Bool)

(assert (=> b!7857763 (= e!4644110 e!4644107)))

(declare-fun res!3124047 () Bool)

(assert (=> b!7857763 (=> (not res!3124047) (not e!4644107))))

(assert (=> b!7857763 (= res!3124047 (not lt!2680152))))

(declare-fun b!7857764 () Bool)

(assert (=> b!7857764 (= e!4644108 (not (= (head!16057 s2!3706) (c!1444141 r2!6165))))))

(declare-fun b!7857765 () Bool)

(declare-fun e!4644109 () Bool)

(declare-fun derivativeStep!6337 (Regex!21103 C!42532) Regex!21103)

(assert (=> b!7857765 (= e!4644109 (matchR!10539 (derivativeStep!6337 r2!6165 (head!16057 s2!3706)) (tail!15600 s2!3706)))))

(declare-fun b!7857766 () Bool)

(declare-fun e!4644112 () Bool)

(assert (=> b!7857766 (= e!4644113 e!4644112)))

(declare-fun c!1444160 () Bool)

(assert (=> b!7857766 (= c!1444160 ((_ is EmptyLang!21103) r2!6165))))

(declare-fun b!7857767 () Bool)

(declare-fun res!3124046 () Bool)

(assert (=> b!7857767 (=> (not res!3124046) (not e!4644111))))

(assert (=> b!7857767 (= res!3124046 (isEmpty!42346 (tail!15600 s2!3706)))))

(declare-fun d!2354168 () Bool)

(assert (=> d!2354168 e!4644113))

(declare-fun c!1444159 () Bool)

(assert (=> d!2354168 (= c!1444159 ((_ is EmptyExpr!21103) r2!6165))))

(assert (=> d!2354168 (= lt!2680152 e!4644109)))

(declare-fun c!1444158 () Bool)

(assert (=> d!2354168 (= c!1444158 (isEmpty!42346 s2!3706))))

(assert (=> d!2354168 (validRegex!11513 r2!6165)))

(assert (=> d!2354168 (= (matchR!10539 r2!6165 s2!3706) lt!2680152)))

(declare-fun b!7857768 () Bool)

(assert (=> b!7857768 (= e!4644112 (not lt!2680152))))

(declare-fun b!7857769 () Bool)

(assert (=> b!7857769 (= e!4644107 e!4644108)))

(declare-fun res!3124044 () Bool)

(assert (=> b!7857769 (=> res!3124044 e!4644108)))

(assert (=> b!7857769 (= res!3124044 call!728502)))

(declare-fun b!7857770 () Bool)

(assert (=> b!7857770 (= e!4644109 (nullable!9375 r2!6165))))

(declare-fun b!7857771 () Bool)

(declare-fun res!3124043 () Bool)

(assert (=> b!7857771 (=> res!3124043 e!4644110)))

(assert (=> b!7857771 (= res!3124043 (not ((_ is ElementMatch!21103) r2!6165)))))

(assert (=> b!7857771 (= e!4644112 e!4644110)))

(assert (= (and d!2354168 c!1444158) b!7857770))

(assert (= (and d!2354168 (not c!1444158)) b!7857765))

(assert (= (and d!2354168 c!1444159) b!7857758))

(assert (= (and d!2354168 (not c!1444159)) b!7857766))

(assert (= (and b!7857766 c!1444160) b!7857768))

(assert (= (and b!7857766 (not c!1444160)) b!7857771))

(assert (= (and b!7857771 (not res!3124043)) b!7857759))

(assert (= (and b!7857759 res!3124045) b!7857761))

(assert (= (and b!7857761 res!3124042) b!7857767))

(assert (= (and b!7857767 res!3124046) b!7857762))

(assert (= (and b!7857759 (not res!3124040)) b!7857763))

(assert (= (and b!7857763 res!3124047) b!7857769))

(assert (= (and b!7857769 (not res!3124044)) b!7857760))

(assert (= (and b!7857760 (not res!3124041)) b!7857764))

(assert (= (or b!7857758 b!7857761 b!7857769) bm!728497))

(declare-fun m!8261186 () Bool)

(assert (=> b!7857762 m!8261186))

(declare-fun m!8261188 () Bool)

(assert (=> bm!728497 m!8261188))

(declare-fun m!8261190 () Bool)

(assert (=> b!7857770 m!8261190))

(assert (=> d!2354168 m!8261188))

(assert (=> d!2354168 m!8261178))

(declare-fun m!8261192 () Bool)

(assert (=> b!7857767 m!8261192))

(assert (=> b!7857767 m!8261192))

(declare-fun m!8261194 () Bool)

(assert (=> b!7857767 m!8261194))

(assert (=> b!7857764 m!8261186))

(assert (=> b!7857760 m!8261192))

(assert (=> b!7857760 m!8261192))

(assert (=> b!7857760 m!8261194))

(assert (=> b!7857765 m!8261186))

(assert (=> b!7857765 m!8261186))

(declare-fun m!8261196 () Bool)

(assert (=> b!7857765 m!8261196))

(assert (=> b!7857765 m!8261192))

(assert (=> b!7857765 m!8261196))

(assert (=> b!7857765 m!8261192))

(declare-fun m!8261198 () Bool)

(assert (=> b!7857765 m!8261198))

(assert (=> b!7857679 d!2354168))

(declare-fun c!1444162 () Bool)

(declare-fun call!728504 () Bool)

(declare-fun c!1444161 () Bool)

(declare-fun bm!728498 () Bool)

(assert (=> bm!728498 (= call!728504 (validRegex!11513 (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))))))

(declare-fun bm!728499 () Bool)

(declare-fun call!728503 () Bool)

(assert (=> bm!728499 (= call!728503 (validRegex!11513 (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))))))

(declare-fun b!7857772 () Bool)

(declare-fun e!4644115 () Bool)

(declare-fun e!4644116 () Bool)

(assert (=> b!7857772 (= e!4644115 e!4644116)))

(declare-fun res!3124048 () Bool)

(assert (=> b!7857772 (= res!3124048 (not (nullable!9375 (reg!21432 r2!6165))))))

(assert (=> b!7857772 (=> (not res!3124048) (not e!4644116))))

(declare-fun b!7857773 () Bool)

(declare-fun e!4644120 () Bool)

(declare-fun e!4644117 () Bool)

(assert (=> b!7857773 (= e!4644120 e!4644117)))

(declare-fun res!3124049 () Bool)

(assert (=> b!7857773 (=> (not res!3124049) (not e!4644117))))

(assert (=> b!7857773 (= res!3124049 call!728503)))

(declare-fun b!7857774 () Bool)

(assert (=> b!7857774 (= e!4644116 call!728504)))

(declare-fun b!7857775 () Bool)

(declare-fun res!3124052 () Bool)

(declare-fun e!4644119 () Bool)

(assert (=> b!7857775 (=> (not res!3124052) (not e!4644119))))

(declare-fun call!728505 () Bool)

(assert (=> b!7857775 (= res!3124052 call!728505)))

(declare-fun e!4644118 () Bool)

(assert (=> b!7857775 (= e!4644118 e!4644119)))

(declare-fun bm!728500 () Bool)

(assert (=> bm!728500 (= call!728505 call!728504)))

(declare-fun b!7857776 () Bool)

(assert (=> b!7857776 (= e!4644117 call!728505)))

(declare-fun d!2354172 () Bool)

(declare-fun res!3124051 () Bool)

(declare-fun e!4644114 () Bool)

(assert (=> d!2354172 (=> res!3124051 e!4644114)))

(assert (=> d!2354172 (= res!3124051 ((_ is ElementMatch!21103) r2!6165))))

(assert (=> d!2354172 (= (validRegex!11513 r2!6165) e!4644114)))

(declare-fun b!7857777 () Bool)

(assert (=> b!7857777 (= e!4644114 e!4644115)))

(assert (=> b!7857777 (= c!1444161 ((_ is Star!21103) r2!6165))))

(declare-fun b!7857778 () Bool)

(assert (=> b!7857778 (= e!4644115 e!4644118)))

(assert (=> b!7857778 (= c!1444162 ((_ is Union!21103) r2!6165))))

(declare-fun b!7857779 () Bool)

(assert (=> b!7857779 (= e!4644119 call!728503)))

(declare-fun b!7857780 () Bool)

(declare-fun res!3124050 () Bool)

(assert (=> b!7857780 (=> res!3124050 e!4644120)))

(assert (=> b!7857780 (= res!3124050 (not ((_ is Concat!29948) r2!6165)))))

(assert (=> b!7857780 (= e!4644118 e!4644120)))

(assert (= (and d!2354172 (not res!3124051)) b!7857777))

(assert (= (and b!7857777 c!1444161) b!7857772))

(assert (= (and b!7857777 (not c!1444161)) b!7857778))

(assert (= (and b!7857772 res!3124048) b!7857774))

(assert (= (and b!7857778 c!1444162) b!7857775))

(assert (= (and b!7857778 (not c!1444162)) b!7857780))

(assert (= (and b!7857775 res!3124052) b!7857779))

(assert (= (and b!7857780 (not res!3124050)) b!7857773))

(assert (= (and b!7857773 res!3124049) b!7857776))

(assert (= (or b!7857775 b!7857776) bm!728500))

(assert (= (or b!7857779 b!7857773) bm!728499))

(assert (= (or b!7857774 bm!728500) bm!728498))

(declare-fun m!8261200 () Bool)

(assert (=> bm!728498 m!8261200))

(declare-fun m!8261202 () Bool)

(assert (=> bm!728499 m!8261202))

(declare-fun m!8261204 () Bool)

(assert (=> b!7857772 m!8261204))

(assert (=> b!7857675 d!2354172))

(declare-fun b!7857781 () Bool)

(declare-fun e!4644127 () Bool)

(declare-fun lt!2680153 () Bool)

(declare-fun call!728506 () Bool)

(assert (=> b!7857781 (= e!4644127 (= lt!2680153 call!728506))))

(declare-fun b!7857782 () Bool)

(declare-fun res!3124053 () Bool)

(declare-fun e!4644124 () Bool)

(assert (=> b!7857782 (=> res!3124053 e!4644124)))

(declare-fun e!4644125 () Bool)

(assert (=> b!7857782 (= res!3124053 e!4644125)))

(declare-fun res!3124058 () Bool)

(assert (=> b!7857782 (=> (not res!3124058) (not e!4644125))))

(assert (=> b!7857782 (= res!3124058 lt!2680153)))

(declare-fun b!7857783 () Bool)

(declare-fun res!3124054 () Bool)

(declare-fun e!4644122 () Bool)

(assert (=> b!7857783 (=> res!3124054 e!4644122)))

(assert (=> b!7857783 (= res!3124054 (not (isEmpty!42346 (tail!15600 s1!4084))))))

(declare-fun b!7857784 () Bool)

(declare-fun res!3124055 () Bool)

(assert (=> b!7857784 (=> (not res!3124055) (not e!4644125))))

(assert (=> b!7857784 (= res!3124055 (not call!728506))))

(declare-fun b!7857785 () Bool)

(assert (=> b!7857785 (= e!4644125 (= (head!16057 s1!4084) (c!1444141 r1!6227)))))

(declare-fun bm!728501 () Bool)

(assert (=> bm!728501 (= call!728506 (isEmpty!42346 s1!4084))))

(declare-fun b!7857786 () Bool)

(declare-fun e!4644121 () Bool)

(assert (=> b!7857786 (= e!4644124 e!4644121)))

(declare-fun res!3124060 () Bool)

(assert (=> b!7857786 (=> (not res!3124060) (not e!4644121))))

(assert (=> b!7857786 (= res!3124060 (not lt!2680153))))

(declare-fun b!7857787 () Bool)

(assert (=> b!7857787 (= e!4644122 (not (= (head!16057 s1!4084) (c!1444141 r1!6227))))))

(declare-fun b!7857788 () Bool)

(declare-fun e!4644123 () Bool)

(assert (=> b!7857788 (= e!4644123 (matchR!10539 (derivativeStep!6337 r1!6227 (head!16057 s1!4084)) (tail!15600 s1!4084)))))

(declare-fun b!7857789 () Bool)

(declare-fun e!4644126 () Bool)

(assert (=> b!7857789 (= e!4644127 e!4644126)))

(declare-fun c!1444165 () Bool)

(assert (=> b!7857789 (= c!1444165 ((_ is EmptyLang!21103) r1!6227))))

(declare-fun b!7857790 () Bool)

(declare-fun res!3124059 () Bool)

(assert (=> b!7857790 (=> (not res!3124059) (not e!4644125))))

(assert (=> b!7857790 (= res!3124059 (isEmpty!42346 (tail!15600 s1!4084)))))

(declare-fun d!2354174 () Bool)

(assert (=> d!2354174 e!4644127))

(declare-fun c!1444164 () Bool)

(assert (=> d!2354174 (= c!1444164 ((_ is EmptyExpr!21103) r1!6227))))

(assert (=> d!2354174 (= lt!2680153 e!4644123)))

(declare-fun c!1444163 () Bool)

(assert (=> d!2354174 (= c!1444163 (isEmpty!42346 s1!4084))))

(assert (=> d!2354174 (validRegex!11513 r1!6227)))

(assert (=> d!2354174 (= (matchR!10539 r1!6227 s1!4084) lt!2680153)))

(declare-fun b!7857791 () Bool)

(assert (=> b!7857791 (= e!4644126 (not lt!2680153))))

(declare-fun b!7857792 () Bool)

(assert (=> b!7857792 (= e!4644121 e!4644122)))

(declare-fun res!3124057 () Bool)

(assert (=> b!7857792 (=> res!3124057 e!4644122)))

(assert (=> b!7857792 (= res!3124057 call!728506)))

(declare-fun b!7857793 () Bool)

(assert (=> b!7857793 (= e!4644123 (nullable!9375 r1!6227))))

(declare-fun b!7857794 () Bool)

(declare-fun res!3124056 () Bool)

(assert (=> b!7857794 (=> res!3124056 e!4644124)))

(assert (=> b!7857794 (= res!3124056 (not ((_ is ElementMatch!21103) r1!6227)))))

(assert (=> b!7857794 (= e!4644126 e!4644124)))

(assert (= (and d!2354174 c!1444163) b!7857793))

(assert (= (and d!2354174 (not c!1444163)) b!7857788))

(assert (= (and d!2354174 c!1444164) b!7857781))

(assert (= (and d!2354174 (not c!1444164)) b!7857789))

(assert (= (and b!7857789 c!1444165) b!7857791))

(assert (= (and b!7857789 (not c!1444165)) b!7857794))

(assert (= (and b!7857794 (not res!3124056)) b!7857782))

(assert (= (and b!7857782 res!3124058) b!7857784))

(assert (= (and b!7857784 res!3124055) b!7857790))

(assert (= (and b!7857790 res!3124059) b!7857785))

(assert (= (and b!7857782 (not res!3124053)) b!7857786))

(assert (= (and b!7857786 res!3124060) b!7857792))

(assert (= (and b!7857792 (not res!3124057)) b!7857783))

(assert (= (and b!7857783 (not res!3124054)) b!7857787))

(assert (= (or b!7857781 b!7857784 b!7857792) bm!728501))

(declare-fun m!8261206 () Bool)

(assert (=> b!7857785 m!8261206))

(declare-fun m!8261208 () Bool)

(assert (=> bm!728501 m!8261208))

(assert (=> b!7857793 m!8261170))

(assert (=> d!2354174 m!8261208))

(assert (=> d!2354174 m!8261174))

(declare-fun m!8261210 () Bool)

(assert (=> b!7857790 m!8261210))

(assert (=> b!7857790 m!8261210))

(declare-fun m!8261212 () Bool)

(assert (=> b!7857790 m!8261212))

(assert (=> b!7857787 m!8261206))

(assert (=> b!7857783 m!8261210))

(assert (=> b!7857783 m!8261210))

(assert (=> b!7857783 m!8261212))

(assert (=> b!7857788 m!8261206))

(assert (=> b!7857788 m!8261206))

(declare-fun m!8261214 () Bool)

(assert (=> b!7857788 m!8261214))

(assert (=> b!7857788 m!8261210))

(assert (=> b!7857788 m!8261214))

(assert (=> b!7857788 m!8261210))

(declare-fun m!8261216 () Bool)

(assert (=> b!7857788 m!8261216))

(assert (=> b!7857676 d!2354174))

(declare-fun d!2354176 () Bool)

(declare-fun nullableFct!3699 (Regex!21103) Bool)

(assert (=> d!2354176 (= (nullable!9375 r1!6227) (nullableFct!3699 r1!6227))))

(declare-fun bs!1967157 () Bool)

(assert (= bs!1967157 d!2354176))

(declare-fun m!8261218 () Bool)

(assert (=> bs!1967157 m!8261218))

(assert (=> b!7857671 d!2354176))

(declare-fun b!7857814 () Bool)

(declare-fun e!4644137 () Bool)

(assert (=> b!7857814 (= e!4644137 tp_is_empty!52605)))

(declare-fun b!7857815 () Bool)

(declare-fun tp!2327961 () Bool)

(declare-fun tp!2327962 () Bool)

(assert (=> b!7857815 (= e!4644137 (and tp!2327961 tp!2327962))))

(assert (=> b!7857683 (= tp!2327939 e!4644137)))

(declare-fun b!7857816 () Bool)

(declare-fun tp!2327963 () Bool)

(assert (=> b!7857816 (= e!4644137 tp!2327963)))

(declare-fun b!7857817 () Bool)

(declare-fun tp!2327959 () Bool)

(declare-fun tp!2327960 () Bool)

(assert (=> b!7857817 (= e!4644137 (and tp!2327959 tp!2327960))))

(assert (= (and b!7857683 ((_ is ElementMatch!21103) (reg!21432 r1!6227))) b!7857814))

(assert (= (and b!7857683 ((_ is Concat!29948) (reg!21432 r1!6227))) b!7857815))

(assert (= (and b!7857683 ((_ is Star!21103) (reg!21432 r1!6227))) b!7857816))

(assert (= (and b!7857683 ((_ is Union!21103) (reg!21432 r1!6227))) b!7857817))

(declare-fun b!7857822 () Bool)

(declare-fun e!4644140 () Bool)

(declare-fun tp!2327966 () Bool)

(assert (=> b!7857822 (= e!4644140 (and tp_is_empty!52605 tp!2327966))))

(assert (=> b!7857673 (= tp!2327943 e!4644140)))

(assert (= (and b!7857673 ((_ is Cons!73838) (t!388697 s1!4084))) b!7857822))

(declare-fun b!7857823 () Bool)

(declare-fun e!4644141 () Bool)

(assert (=> b!7857823 (= e!4644141 tp_is_empty!52605)))

(declare-fun b!7857824 () Bool)

(declare-fun tp!2327969 () Bool)

(declare-fun tp!2327970 () Bool)

(assert (=> b!7857824 (= e!4644141 (and tp!2327969 tp!2327970))))

(assert (=> b!7857674 (= tp!2327937 e!4644141)))

(declare-fun b!7857825 () Bool)

(declare-fun tp!2327971 () Bool)

(assert (=> b!7857825 (= e!4644141 tp!2327971)))

(declare-fun b!7857826 () Bool)

(declare-fun tp!2327967 () Bool)

(declare-fun tp!2327968 () Bool)

(assert (=> b!7857826 (= e!4644141 (and tp!2327967 tp!2327968))))

(assert (= (and b!7857674 ((_ is ElementMatch!21103) (regOne!42719 r2!6165))) b!7857823))

(assert (= (and b!7857674 ((_ is Concat!29948) (regOne!42719 r2!6165))) b!7857824))

(assert (= (and b!7857674 ((_ is Star!21103) (regOne!42719 r2!6165))) b!7857825))

(assert (= (and b!7857674 ((_ is Union!21103) (regOne!42719 r2!6165))) b!7857826))

(declare-fun b!7857827 () Bool)

(declare-fun e!4644142 () Bool)

(assert (=> b!7857827 (= e!4644142 tp_is_empty!52605)))

(declare-fun b!7857828 () Bool)

(declare-fun tp!2327974 () Bool)

(declare-fun tp!2327975 () Bool)

(assert (=> b!7857828 (= e!4644142 (and tp!2327974 tp!2327975))))

(assert (=> b!7857674 (= tp!2327942 e!4644142)))

(declare-fun b!7857829 () Bool)

(declare-fun tp!2327976 () Bool)

(assert (=> b!7857829 (= e!4644142 tp!2327976)))

(declare-fun b!7857830 () Bool)

(declare-fun tp!2327972 () Bool)

(declare-fun tp!2327973 () Bool)

(assert (=> b!7857830 (= e!4644142 (and tp!2327972 tp!2327973))))

(assert (= (and b!7857674 ((_ is ElementMatch!21103) (regTwo!42719 r2!6165))) b!7857827))

(assert (= (and b!7857674 ((_ is Concat!29948) (regTwo!42719 r2!6165))) b!7857828))

(assert (= (and b!7857674 ((_ is Star!21103) (regTwo!42719 r2!6165))) b!7857829))

(assert (= (and b!7857674 ((_ is Union!21103) (regTwo!42719 r2!6165))) b!7857830))

(declare-fun b!7857831 () Bool)

(declare-fun e!4644143 () Bool)

(assert (=> b!7857831 (= e!4644143 tp_is_empty!52605)))

(declare-fun b!7857832 () Bool)

(declare-fun tp!2327979 () Bool)

(declare-fun tp!2327980 () Bool)

(assert (=> b!7857832 (= e!4644143 (and tp!2327979 tp!2327980))))

(assert (=> b!7857680 (= tp!2327946 e!4644143)))

(declare-fun b!7857833 () Bool)

(declare-fun tp!2327981 () Bool)

(assert (=> b!7857833 (= e!4644143 tp!2327981)))

(declare-fun b!7857834 () Bool)

(declare-fun tp!2327977 () Bool)

(declare-fun tp!2327978 () Bool)

(assert (=> b!7857834 (= e!4644143 (and tp!2327977 tp!2327978))))

(assert (= (and b!7857680 ((_ is ElementMatch!21103) (regOne!42718 r2!6165))) b!7857831))

(assert (= (and b!7857680 ((_ is Concat!29948) (regOne!42718 r2!6165))) b!7857832))

(assert (= (and b!7857680 ((_ is Star!21103) (regOne!42718 r2!6165))) b!7857833))

(assert (= (and b!7857680 ((_ is Union!21103) (regOne!42718 r2!6165))) b!7857834))

(declare-fun b!7857835 () Bool)

(declare-fun e!4644144 () Bool)

(assert (=> b!7857835 (= e!4644144 tp_is_empty!52605)))

(declare-fun b!7857836 () Bool)

(declare-fun tp!2327984 () Bool)

(declare-fun tp!2327985 () Bool)

(assert (=> b!7857836 (= e!4644144 (and tp!2327984 tp!2327985))))

(assert (=> b!7857680 (= tp!2327945 e!4644144)))

(declare-fun b!7857837 () Bool)

(declare-fun tp!2327986 () Bool)

(assert (=> b!7857837 (= e!4644144 tp!2327986)))

(declare-fun b!7857838 () Bool)

(declare-fun tp!2327982 () Bool)

(declare-fun tp!2327983 () Bool)

(assert (=> b!7857838 (= e!4644144 (and tp!2327982 tp!2327983))))

(assert (= (and b!7857680 ((_ is ElementMatch!21103) (regTwo!42718 r2!6165))) b!7857835))

(assert (= (and b!7857680 ((_ is Concat!29948) (regTwo!42718 r2!6165))) b!7857836))

(assert (= (and b!7857680 ((_ is Star!21103) (regTwo!42718 r2!6165))) b!7857837))

(assert (= (and b!7857680 ((_ is Union!21103) (regTwo!42718 r2!6165))) b!7857838))

(declare-fun b!7857843 () Bool)

(declare-fun e!4644152 () Bool)

(assert (=> b!7857843 (= e!4644152 tp_is_empty!52605)))

(declare-fun b!7857844 () Bool)

(declare-fun tp!2327989 () Bool)

(declare-fun tp!2327990 () Bool)

(assert (=> b!7857844 (= e!4644152 (and tp!2327989 tp!2327990))))

(assert (=> b!7857670 (= tp!2327941 e!4644152)))

(declare-fun b!7857846 () Bool)

(declare-fun tp!2327991 () Bool)

(assert (=> b!7857846 (= e!4644152 tp!2327991)))

(declare-fun b!7857848 () Bool)

(declare-fun tp!2327987 () Bool)

(declare-fun tp!2327988 () Bool)

(assert (=> b!7857848 (= e!4644152 (and tp!2327987 tp!2327988))))

(assert (= (and b!7857670 ((_ is ElementMatch!21103) (regOne!42718 r1!6227))) b!7857843))

(assert (= (and b!7857670 ((_ is Concat!29948) (regOne!42718 r1!6227))) b!7857844))

(assert (= (and b!7857670 ((_ is Star!21103) (regOne!42718 r1!6227))) b!7857846))

(assert (= (and b!7857670 ((_ is Union!21103) (regOne!42718 r1!6227))) b!7857848))

(declare-fun b!7857852 () Bool)

(declare-fun e!4644153 () Bool)

(assert (=> b!7857852 (= e!4644153 tp_is_empty!52605)))

(declare-fun b!7857853 () Bool)

(declare-fun tp!2327994 () Bool)

(declare-fun tp!2327995 () Bool)

(assert (=> b!7857853 (= e!4644153 (and tp!2327994 tp!2327995))))

(assert (=> b!7857670 (= tp!2327947 e!4644153)))

(declare-fun b!7857854 () Bool)

(declare-fun tp!2327996 () Bool)

(assert (=> b!7857854 (= e!4644153 tp!2327996)))

(declare-fun b!7857855 () Bool)

(declare-fun tp!2327992 () Bool)

(declare-fun tp!2327993 () Bool)

(assert (=> b!7857855 (= e!4644153 (and tp!2327992 tp!2327993))))

(assert (= (and b!7857670 ((_ is ElementMatch!21103) (regTwo!42718 r1!6227))) b!7857852))

(assert (= (and b!7857670 ((_ is Concat!29948) (regTwo!42718 r1!6227))) b!7857853))

(assert (= (and b!7857670 ((_ is Star!21103) (regTwo!42718 r1!6227))) b!7857854))

(assert (= (and b!7857670 ((_ is Union!21103) (regTwo!42718 r1!6227))) b!7857855))

(declare-fun b!7857856 () Bool)

(declare-fun e!4644154 () Bool)

(declare-fun tp!2327997 () Bool)

(assert (=> b!7857856 (= e!4644154 (and tp_is_empty!52605 tp!2327997))))

(assert (=> b!7857681 (= tp!2327944 e!4644154)))

(assert (= (and b!7857681 ((_ is Cons!73838) (t!388697 s2!3706))) b!7857856))

(declare-fun b!7857857 () Bool)

(declare-fun e!4644155 () Bool)

(assert (=> b!7857857 (= e!4644155 tp_is_empty!52605)))

(declare-fun b!7857858 () Bool)

(declare-fun tp!2328000 () Bool)

(declare-fun tp!2328001 () Bool)

(assert (=> b!7857858 (= e!4644155 (and tp!2328000 tp!2328001))))

(assert (=> b!7857677 (= tp!2327938 e!4644155)))

(declare-fun b!7857859 () Bool)

(declare-fun tp!2328002 () Bool)

(assert (=> b!7857859 (= e!4644155 tp!2328002)))

(declare-fun b!7857860 () Bool)

(declare-fun tp!2327998 () Bool)

(declare-fun tp!2327999 () Bool)

(assert (=> b!7857860 (= e!4644155 (and tp!2327998 tp!2327999))))

(assert (= (and b!7857677 ((_ is ElementMatch!21103) (reg!21432 r2!6165))) b!7857857))

(assert (= (and b!7857677 ((_ is Concat!29948) (reg!21432 r2!6165))) b!7857858))

(assert (= (and b!7857677 ((_ is Star!21103) (reg!21432 r2!6165))) b!7857859))

(assert (= (and b!7857677 ((_ is Union!21103) (reg!21432 r2!6165))) b!7857860))

(declare-fun b!7857861 () Bool)

(declare-fun e!4644156 () Bool)

(assert (=> b!7857861 (= e!4644156 tp_is_empty!52605)))

(declare-fun b!7857862 () Bool)

(declare-fun tp!2328005 () Bool)

(declare-fun tp!2328006 () Bool)

(assert (=> b!7857862 (= e!4644156 (and tp!2328005 tp!2328006))))

(assert (=> b!7857672 (= tp!2327948 e!4644156)))

(declare-fun b!7857863 () Bool)

(declare-fun tp!2328007 () Bool)

(assert (=> b!7857863 (= e!4644156 tp!2328007)))

(declare-fun b!7857864 () Bool)

(declare-fun tp!2328003 () Bool)

(declare-fun tp!2328004 () Bool)

(assert (=> b!7857864 (= e!4644156 (and tp!2328003 tp!2328004))))

(assert (= (and b!7857672 ((_ is ElementMatch!21103) (regOne!42719 r1!6227))) b!7857861))

(assert (= (and b!7857672 ((_ is Concat!29948) (regOne!42719 r1!6227))) b!7857862))

(assert (= (and b!7857672 ((_ is Star!21103) (regOne!42719 r1!6227))) b!7857863))

(assert (= (and b!7857672 ((_ is Union!21103) (regOne!42719 r1!6227))) b!7857864))

(declare-fun b!7857865 () Bool)

(declare-fun e!4644157 () Bool)

(assert (=> b!7857865 (= e!4644157 tp_is_empty!52605)))

(declare-fun b!7857866 () Bool)

(declare-fun tp!2328010 () Bool)

(declare-fun tp!2328011 () Bool)

(assert (=> b!7857866 (= e!4644157 (and tp!2328010 tp!2328011))))

(assert (=> b!7857672 (= tp!2327940 e!4644157)))

(declare-fun b!7857867 () Bool)

(declare-fun tp!2328012 () Bool)

(assert (=> b!7857867 (= e!4644157 tp!2328012)))

(declare-fun b!7857868 () Bool)

(declare-fun tp!2328008 () Bool)

(declare-fun tp!2328009 () Bool)

(assert (=> b!7857868 (= e!4644157 (and tp!2328008 tp!2328009))))

(assert (= (and b!7857672 ((_ is ElementMatch!21103) (regTwo!42719 r1!6227))) b!7857865))

(assert (= (and b!7857672 ((_ is Concat!29948) (regTwo!42719 r1!6227))) b!7857866))

(assert (= (and b!7857672 ((_ is Star!21103) (regTwo!42719 r1!6227))) b!7857867))

(assert (= (and b!7857672 ((_ is Union!21103) (regTwo!42719 r1!6227))) b!7857868))

(check-sat (not b!7857836) (not bm!728499) (not b!7857846) (not bm!728487) (not b!7857824) (not b!7857829) (not b!7857793) (not b!7857832) (not b!7857856) (not b!7857867) (not b!7857858) (not b!7857855) (not b!7857826) (not b!7857844) (not b!7857783) (not d!2354174) (not d!2354168) (not b!7857830) (not b!7857762) (not b!7857837) (not b!7857816) (not b!7857848) (not b!7857770) (not bm!728497) (not b!7857864) (not b!7857868) (not b!7857764) (not b!7857833) (not b!7857859) (not b!7857790) tp_is_empty!52605 (not b!7857703) (not b!7857862) (not b!7857838) (not bm!728498) (not bm!728486) (not b!7857860) (not b!7857853) (not b!7857815) (not b!7857788) (not b!7857822) (not b!7857866) (not b!7857767) (not d!2354176) (not b!7857828) (not b!7857863) (not b!7857854) (not b!7857760) (not b!7857765) (not b!7857817) (not b!7857834) (not b!7857785) (not b!7857825) (not bm!728501) (not b!7857772) (not b!7857787))
(check-sat)
(get-model)

(declare-fun bm!728512 () Bool)

(declare-fun call!728518 () Bool)

(declare-fun c!1444183 () Bool)

(declare-fun c!1444182 () Bool)

(assert (=> bm!728512 (= call!728518 (validRegex!11513 (ite c!1444182 (reg!21432 (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))) (ite c!1444183 (regOne!42719 (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))) (regTwo!42718 (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165))))))))))

(declare-fun call!728517 () Bool)

(declare-fun bm!728513 () Bool)

(assert (=> bm!728513 (= call!728517 (validRegex!11513 (ite c!1444183 (regTwo!42719 (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))) (regOne!42718 (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))))))))

(declare-fun b!7857981 () Bool)

(declare-fun e!4644203 () Bool)

(declare-fun e!4644204 () Bool)

(assert (=> b!7857981 (= e!4644203 e!4644204)))

(declare-fun res!3124103 () Bool)

(assert (=> b!7857981 (= res!3124103 (not (nullable!9375 (reg!21432 (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))))))))

(assert (=> b!7857981 (=> (not res!3124103) (not e!4644204))))

(declare-fun b!7857982 () Bool)

(declare-fun e!4644208 () Bool)

(declare-fun e!4644205 () Bool)

(assert (=> b!7857982 (= e!4644208 e!4644205)))

(declare-fun res!3124104 () Bool)

(assert (=> b!7857982 (=> (not res!3124104) (not e!4644205))))

(assert (=> b!7857982 (= res!3124104 call!728517)))

(declare-fun b!7857983 () Bool)

(assert (=> b!7857983 (= e!4644204 call!728518)))

(declare-fun b!7857984 () Bool)

(declare-fun res!3124107 () Bool)

(declare-fun e!4644207 () Bool)

(assert (=> b!7857984 (=> (not res!3124107) (not e!4644207))))

(declare-fun call!728519 () Bool)

(assert (=> b!7857984 (= res!3124107 call!728519)))

(declare-fun e!4644206 () Bool)

(assert (=> b!7857984 (= e!4644206 e!4644207)))

(declare-fun bm!728514 () Bool)

(assert (=> bm!728514 (= call!728519 call!728518)))

(declare-fun b!7857985 () Bool)

(assert (=> b!7857985 (= e!4644205 call!728519)))

(declare-fun d!2354186 () Bool)

(declare-fun res!3124106 () Bool)

(declare-fun e!4644202 () Bool)

(assert (=> d!2354186 (=> res!3124106 e!4644202)))

(assert (=> d!2354186 (= res!3124106 ((_ is ElementMatch!21103) (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))))))

(assert (=> d!2354186 (= (validRegex!11513 (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))) e!4644202)))

(declare-fun b!7857986 () Bool)

(assert (=> b!7857986 (= e!4644202 e!4644203)))

(assert (=> b!7857986 (= c!1444182 ((_ is Star!21103) (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))))))

(declare-fun b!7857987 () Bool)

(assert (=> b!7857987 (= e!4644203 e!4644206)))

(assert (=> b!7857987 (= c!1444183 ((_ is Union!21103) (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165)))))))

(declare-fun b!7857988 () Bool)

(assert (=> b!7857988 (= e!4644207 call!728517)))

(declare-fun b!7857989 () Bool)

(declare-fun res!3124105 () Bool)

(assert (=> b!7857989 (=> res!3124105 e!4644208)))

(assert (=> b!7857989 (= res!3124105 (not ((_ is Concat!29948) (ite c!1444161 (reg!21432 r2!6165) (ite c!1444162 (regOne!42719 r2!6165) (regTwo!42718 r2!6165))))))))

(assert (=> b!7857989 (= e!4644206 e!4644208)))

(assert (= (and d!2354186 (not res!3124106)) b!7857986))

(assert (= (and b!7857986 c!1444182) b!7857981))

(assert (= (and b!7857986 (not c!1444182)) b!7857987))

(assert (= (and b!7857981 res!3124103) b!7857983))

(assert (= (and b!7857987 c!1444183) b!7857984))

(assert (= (and b!7857987 (not c!1444183)) b!7857989))

(assert (= (and b!7857984 res!3124107) b!7857988))

(assert (= (and b!7857989 (not res!3124105)) b!7857982))

(assert (= (and b!7857982 res!3124104) b!7857985))

(assert (= (or b!7857984 b!7857985) bm!728514))

(assert (= (or b!7857988 b!7857982) bm!728513))

(assert (= (or b!7857983 bm!728514) bm!728512))

(declare-fun m!8261260 () Bool)

(assert (=> bm!728512 m!8261260))

(declare-fun m!8261262 () Bool)

(assert (=> bm!728513 m!8261262))

(declare-fun m!8261264 () Bool)

(assert (=> b!7857981 m!8261264))

(assert (=> bm!728498 d!2354186))

(assert (=> b!7857793 d!2354176))

(declare-fun d!2354188 () Bool)

(assert (=> d!2354188 (= (isEmpty!42346 s2!3706) ((_ is Nil!73838) s2!3706))))

(assert (=> bm!728497 d!2354188))

(declare-fun d!2354190 () Bool)

(assert (=> d!2354190 (= (nullable!9375 (reg!21432 r1!6227)) (nullableFct!3699 (reg!21432 r1!6227)))))

(declare-fun bs!1967159 () Bool)

(assert (= bs!1967159 d!2354190))

(declare-fun m!8261266 () Bool)

(assert (=> bs!1967159 m!8261266))

(assert (=> b!7857703 d!2354190))

(declare-fun d!2354192 () Bool)

(assert (=> d!2354192 (= (isEmpty!42346 (tail!15600 s1!4084)) ((_ is Nil!73838) (tail!15600 s1!4084)))))

(assert (=> b!7857783 d!2354192))

(declare-fun d!2354194 () Bool)

(assert (=> d!2354194 (= (tail!15600 s1!4084) (t!388697 s1!4084))))

(assert (=> b!7857783 d!2354194))

(declare-fun d!2354196 () Bool)

(assert (=> d!2354196 (= (head!16057 s2!3706) (h!80286 s2!3706))))

(assert (=> b!7857762 d!2354196))

(declare-fun d!2354198 () Bool)

(assert (=> d!2354198 (= (isEmpty!42346 s1!4084) ((_ is Nil!73838) s1!4084))))

(assert (=> d!2354174 d!2354198))

(assert (=> d!2354174 d!2354166))

(declare-fun d!2354200 () Bool)

(assert (=> d!2354200 (= (nullable!9375 r2!6165) (nullableFct!3699 r2!6165))))

(declare-fun bs!1967160 () Bool)

(assert (= bs!1967160 d!2354200))

(declare-fun m!8261268 () Bool)

(assert (=> bs!1967160 m!8261268))

(assert (=> b!7857770 d!2354200))

(assert (=> b!7857790 d!2354192))

(assert (=> b!7857790 d!2354194))

(declare-fun d!2354202 () Bool)

(assert (=> d!2354202 (= (isEmpty!42346 (tail!15600 s2!3706)) ((_ is Nil!73838) (tail!15600 s2!3706)))))

(assert (=> b!7857760 d!2354202))

(declare-fun d!2354204 () Bool)

(assert (=> d!2354204 (= (tail!15600 s2!3706) (t!388697 s2!3706))))

(assert (=> b!7857760 d!2354204))

(declare-fun b!7857990 () Bool)

(declare-fun e!4644215 () Bool)

(declare-fun lt!2680158 () Bool)

(declare-fun call!728520 () Bool)

(assert (=> b!7857990 (= e!4644215 (= lt!2680158 call!728520))))

(declare-fun b!7857991 () Bool)

(declare-fun res!3124108 () Bool)

(declare-fun e!4644212 () Bool)

(assert (=> b!7857991 (=> res!3124108 e!4644212)))

(declare-fun e!4644213 () Bool)

(assert (=> b!7857991 (= res!3124108 e!4644213)))

(declare-fun res!3124113 () Bool)

(assert (=> b!7857991 (=> (not res!3124113) (not e!4644213))))

(assert (=> b!7857991 (= res!3124113 lt!2680158)))

(declare-fun b!7857992 () Bool)

(declare-fun res!3124109 () Bool)

(declare-fun e!4644210 () Bool)

(assert (=> b!7857992 (=> res!3124109 e!4644210)))

(assert (=> b!7857992 (= res!3124109 (not (isEmpty!42346 (tail!15600 (tail!15600 s1!4084)))))))

(declare-fun b!7857993 () Bool)

(declare-fun res!3124110 () Bool)

(assert (=> b!7857993 (=> (not res!3124110) (not e!4644213))))

(assert (=> b!7857993 (= res!3124110 (not call!728520))))

(declare-fun b!7857994 () Bool)

(assert (=> b!7857994 (= e!4644213 (= (head!16057 (tail!15600 s1!4084)) (c!1444141 (derivativeStep!6337 r1!6227 (head!16057 s1!4084)))))))

(declare-fun bm!728515 () Bool)

(assert (=> bm!728515 (= call!728520 (isEmpty!42346 (tail!15600 s1!4084)))))

(declare-fun b!7857995 () Bool)

(declare-fun e!4644209 () Bool)

(assert (=> b!7857995 (= e!4644212 e!4644209)))

(declare-fun res!3124115 () Bool)

(assert (=> b!7857995 (=> (not res!3124115) (not e!4644209))))

(assert (=> b!7857995 (= res!3124115 (not lt!2680158))))

(declare-fun b!7857996 () Bool)

(assert (=> b!7857996 (= e!4644210 (not (= (head!16057 (tail!15600 s1!4084)) (c!1444141 (derivativeStep!6337 r1!6227 (head!16057 s1!4084))))))))

(declare-fun b!7857997 () Bool)

(declare-fun e!4644211 () Bool)

(assert (=> b!7857997 (= e!4644211 (matchR!10539 (derivativeStep!6337 (derivativeStep!6337 r1!6227 (head!16057 s1!4084)) (head!16057 (tail!15600 s1!4084))) (tail!15600 (tail!15600 s1!4084))))))

(declare-fun b!7857998 () Bool)

(declare-fun e!4644214 () Bool)

(assert (=> b!7857998 (= e!4644215 e!4644214)))

(declare-fun c!1444186 () Bool)

(assert (=> b!7857998 (= c!1444186 ((_ is EmptyLang!21103) (derivativeStep!6337 r1!6227 (head!16057 s1!4084))))))

(declare-fun b!7857999 () Bool)

(declare-fun res!3124114 () Bool)

(assert (=> b!7857999 (=> (not res!3124114) (not e!4644213))))

(assert (=> b!7857999 (= res!3124114 (isEmpty!42346 (tail!15600 (tail!15600 s1!4084))))))

(declare-fun d!2354206 () Bool)

(assert (=> d!2354206 e!4644215))

(declare-fun c!1444185 () Bool)

(assert (=> d!2354206 (= c!1444185 ((_ is EmptyExpr!21103) (derivativeStep!6337 r1!6227 (head!16057 s1!4084))))))

(assert (=> d!2354206 (= lt!2680158 e!4644211)))

(declare-fun c!1444184 () Bool)

(assert (=> d!2354206 (= c!1444184 (isEmpty!42346 (tail!15600 s1!4084)))))

(assert (=> d!2354206 (validRegex!11513 (derivativeStep!6337 r1!6227 (head!16057 s1!4084)))))

(assert (=> d!2354206 (= (matchR!10539 (derivativeStep!6337 r1!6227 (head!16057 s1!4084)) (tail!15600 s1!4084)) lt!2680158)))

(declare-fun b!7858000 () Bool)

(assert (=> b!7858000 (= e!4644214 (not lt!2680158))))

(declare-fun b!7858001 () Bool)

(assert (=> b!7858001 (= e!4644209 e!4644210)))

(declare-fun res!3124112 () Bool)

(assert (=> b!7858001 (=> res!3124112 e!4644210)))

(assert (=> b!7858001 (= res!3124112 call!728520)))

(declare-fun b!7858002 () Bool)

(assert (=> b!7858002 (= e!4644211 (nullable!9375 (derivativeStep!6337 r1!6227 (head!16057 s1!4084))))))

(declare-fun b!7858003 () Bool)

(declare-fun res!3124111 () Bool)

(assert (=> b!7858003 (=> res!3124111 e!4644212)))

(assert (=> b!7858003 (= res!3124111 (not ((_ is ElementMatch!21103) (derivativeStep!6337 r1!6227 (head!16057 s1!4084)))))))

(assert (=> b!7858003 (= e!4644214 e!4644212)))

(assert (= (and d!2354206 c!1444184) b!7858002))

(assert (= (and d!2354206 (not c!1444184)) b!7857997))

(assert (= (and d!2354206 c!1444185) b!7857990))

(assert (= (and d!2354206 (not c!1444185)) b!7857998))

(assert (= (and b!7857998 c!1444186) b!7858000))

(assert (= (and b!7857998 (not c!1444186)) b!7858003))

(assert (= (and b!7858003 (not res!3124111)) b!7857991))

(assert (= (and b!7857991 res!3124113) b!7857993))

(assert (= (and b!7857993 res!3124110) b!7857999))

(assert (= (and b!7857999 res!3124114) b!7857994))

(assert (= (and b!7857991 (not res!3124108)) b!7857995))

(assert (= (and b!7857995 res!3124115) b!7858001))

(assert (= (and b!7858001 (not res!3124112)) b!7857992))

(assert (= (and b!7857992 (not res!3124109)) b!7857996))

(assert (= (or b!7857990 b!7857993 b!7858001) bm!728515))

(assert (=> b!7857994 m!8261210))

(declare-fun m!8261270 () Bool)

(assert (=> b!7857994 m!8261270))

(assert (=> bm!728515 m!8261210))

(assert (=> bm!728515 m!8261212))

(assert (=> b!7858002 m!8261214))

(declare-fun m!8261272 () Bool)

(assert (=> b!7858002 m!8261272))

(assert (=> d!2354206 m!8261210))

(assert (=> d!2354206 m!8261212))

(assert (=> d!2354206 m!8261214))

(declare-fun m!8261274 () Bool)

(assert (=> d!2354206 m!8261274))

(assert (=> b!7857999 m!8261210))

(declare-fun m!8261276 () Bool)

(assert (=> b!7857999 m!8261276))

(assert (=> b!7857999 m!8261276))

(declare-fun m!8261278 () Bool)

(assert (=> b!7857999 m!8261278))

(assert (=> b!7857996 m!8261210))

(assert (=> b!7857996 m!8261270))

(assert (=> b!7857992 m!8261210))

(assert (=> b!7857992 m!8261276))

(assert (=> b!7857992 m!8261276))

(assert (=> b!7857992 m!8261278))

(assert (=> b!7857997 m!8261210))

(assert (=> b!7857997 m!8261270))

(assert (=> b!7857997 m!8261214))

(assert (=> b!7857997 m!8261270))

(declare-fun m!8261280 () Bool)

(assert (=> b!7857997 m!8261280))

(assert (=> b!7857997 m!8261210))

(assert (=> b!7857997 m!8261276))

(assert (=> b!7857997 m!8261280))

(assert (=> b!7857997 m!8261276))

(declare-fun m!8261282 () Bool)

(assert (=> b!7857997 m!8261282))

(assert (=> b!7857788 d!2354206))

(declare-fun b!7858024 () Bool)

(declare-fun e!4644230 () Regex!21103)

(assert (=> b!7858024 (= e!4644230 EmptyLang!21103)))

(declare-fun bm!728524 () Bool)

(declare-fun call!728532 () Regex!21103)

(declare-fun c!1444199 () Bool)

(declare-fun c!1444197 () Bool)

(assert (=> bm!728524 (= call!728532 (derivativeStep!6337 (ite c!1444199 (regOne!42719 r1!6227) (ite c!1444197 (regTwo!42718 r1!6227) (regOne!42718 r1!6227))) (head!16057 s1!4084)))))

(declare-fun bm!728526 () Bool)

(declare-fun call!728529 () Regex!21103)

(assert (=> bm!728526 (= call!728529 call!728532)))

(declare-fun e!4644229 () Regex!21103)

(declare-fun call!728530 () Regex!21103)

(declare-fun b!7858025 () Bool)

(assert (=> b!7858025 (= e!4644229 (Union!21103 (Concat!29948 call!728530 (regTwo!42718 r1!6227)) call!728529))))

(declare-fun b!7858026 () Bool)

(assert (=> b!7858026 (= c!1444197 (nullable!9375 (regOne!42718 r1!6227)))))

(declare-fun e!4644228 () Regex!21103)

(assert (=> b!7858026 (= e!4644228 e!4644229)))

(declare-fun b!7858027 () Bool)

(declare-fun e!4644226 () Regex!21103)

(declare-fun call!728531 () Regex!21103)

(assert (=> b!7858027 (= e!4644226 (Union!21103 call!728532 call!728531))))

(declare-fun b!7858028 () Bool)

(assert (=> b!7858028 (= e!4644229 (Union!21103 (Concat!29948 call!728529 (regTwo!42718 r1!6227)) EmptyLang!21103))))

(declare-fun b!7858029 () Bool)

(assert (=> b!7858029 (= c!1444199 ((_ is Union!21103) r1!6227))))

(declare-fun e!4644227 () Regex!21103)

(assert (=> b!7858029 (= e!4644227 e!4644226)))

(declare-fun c!1444198 () Bool)

(declare-fun bm!728525 () Bool)

(assert (=> bm!728525 (= call!728531 (derivativeStep!6337 (ite c!1444199 (regTwo!42719 r1!6227) (ite c!1444198 (reg!21432 r1!6227) (regOne!42718 r1!6227))) (head!16057 s1!4084)))))

(declare-fun d!2354208 () Bool)

(declare-fun lt!2680161 () Regex!21103)

(assert (=> d!2354208 (validRegex!11513 lt!2680161)))

(assert (=> d!2354208 (= lt!2680161 e!4644230)))

(declare-fun c!1444201 () Bool)

(assert (=> d!2354208 (= c!1444201 (or ((_ is EmptyExpr!21103) r1!6227) ((_ is EmptyLang!21103) r1!6227)))))

(assert (=> d!2354208 (validRegex!11513 r1!6227)))

(assert (=> d!2354208 (= (derivativeStep!6337 r1!6227 (head!16057 s1!4084)) lt!2680161)))

(declare-fun b!7858030 () Bool)

(assert (=> b!7858030 (= e!4644227 (ite (= (head!16057 s1!4084) (c!1444141 r1!6227)) EmptyExpr!21103 EmptyLang!21103))))

(declare-fun b!7858031 () Bool)

(assert (=> b!7858031 (= e!4644228 (Concat!29948 call!728530 r1!6227))))

(declare-fun b!7858032 () Bool)

(assert (=> b!7858032 (= e!4644226 e!4644228)))

(assert (=> b!7858032 (= c!1444198 ((_ is Star!21103) r1!6227))))

(declare-fun bm!728527 () Bool)

(assert (=> bm!728527 (= call!728530 call!728531)))

(declare-fun b!7858033 () Bool)

(assert (=> b!7858033 (= e!4644230 e!4644227)))

(declare-fun c!1444200 () Bool)

(assert (=> b!7858033 (= c!1444200 ((_ is ElementMatch!21103) r1!6227))))

(assert (= (and d!2354208 c!1444201) b!7858024))

(assert (= (and d!2354208 (not c!1444201)) b!7858033))

(assert (= (and b!7858033 c!1444200) b!7858030))

(assert (= (and b!7858033 (not c!1444200)) b!7858029))

(assert (= (and b!7858029 c!1444199) b!7858027))

(assert (= (and b!7858029 (not c!1444199)) b!7858032))

(assert (= (and b!7858032 c!1444198) b!7858031))

(assert (= (and b!7858032 (not c!1444198)) b!7858026))

(assert (= (and b!7858026 c!1444197) b!7858025))

(assert (= (and b!7858026 (not c!1444197)) b!7858028))

(assert (= (or b!7858025 b!7858028) bm!728526))

(assert (= (or b!7858031 b!7858025) bm!728527))

(assert (= (or b!7858027 bm!728527) bm!728525))

(assert (= (or b!7858027 bm!728526) bm!728524))

(assert (=> bm!728524 m!8261206))

(declare-fun m!8261284 () Bool)

(assert (=> bm!728524 m!8261284))

(declare-fun m!8261286 () Bool)

(assert (=> b!7858026 m!8261286))

(assert (=> bm!728525 m!8261206))

(declare-fun m!8261288 () Bool)

(assert (=> bm!728525 m!8261288))

(declare-fun m!8261290 () Bool)

(assert (=> d!2354208 m!8261290))

(assert (=> d!2354208 m!8261174))

(assert (=> b!7857788 d!2354208))

(declare-fun d!2354210 () Bool)

(assert (=> d!2354210 (= (head!16057 s1!4084) (h!80286 s1!4084))))

(assert (=> b!7857788 d!2354210))

(assert (=> b!7857788 d!2354194))

(assert (=> b!7857767 d!2354202))

(assert (=> b!7857767 d!2354204))

(assert (=> b!7857787 d!2354210))

(declare-fun d!2354212 () Bool)

(declare-fun res!3124129 () Bool)

(declare-fun e!4644247 () Bool)

(assert (=> d!2354212 (=> res!3124129 e!4644247)))

(assert (=> d!2354212 (= res!3124129 ((_ is EmptyExpr!21103) r1!6227))))

(assert (=> d!2354212 (= (nullableFct!3699 r1!6227) e!4644247)))

(declare-fun b!7858048 () Bool)

(declare-fun e!4644243 () Bool)

(declare-fun call!728538 () Bool)

(assert (=> b!7858048 (= e!4644243 call!728538)))

(declare-fun b!7858049 () Bool)

(declare-fun e!4644248 () Bool)

(assert (=> b!7858049 (= e!4644248 call!728538)))

(declare-fun bm!728532 () Bool)

(declare-fun c!1444204 () Bool)

(assert (=> bm!728532 (= call!728538 (nullable!9375 (ite c!1444204 (regTwo!42719 r1!6227) (regTwo!42718 r1!6227))))))

(declare-fun bm!728533 () Bool)

(declare-fun call!728537 () Bool)

(assert (=> bm!728533 (= call!728537 (nullable!9375 (ite c!1444204 (regOne!42719 r1!6227) (regOne!42718 r1!6227))))))

(declare-fun b!7858050 () Bool)

(declare-fun e!4644244 () Bool)

(assert (=> b!7858050 (= e!4644244 e!4644243)))

(declare-fun res!3124127 () Bool)

(assert (=> b!7858050 (= res!3124127 call!728537)))

(assert (=> b!7858050 (=> res!3124127 e!4644243)))

(declare-fun b!7858051 () Bool)

(assert (=> b!7858051 (= e!4644244 e!4644248)))

(declare-fun res!3124130 () Bool)

(assert (=> b!7858051 (= res!3124130 call!728537)))

(assert (=> b!7858051 (=> (not res!3124130) (not e!4644248))))

(declare-fun b!7858052 () Bool)

(declare-fun e!4644246 () Bool)

(declare-fun e!4644245 () Bool)

(assert (=> b!7858052 (= e!4644246 e!4644245)))

(declare-fun res!3124126 () Bool)

(assert (=> b!7858052 (=> res!3124126 e!4644245)))

(assert (=> b!7858052 (= res!3124126 ((_ is Star!21103) r1!6227))))

(declare-fun b!7858053 () Bool)

(assert (=> b!7858053 (= e!4644247 e!4644246)))

(declare-fun res!3124128 () Bool)

(assert (=> b!7858053 (=> (not res!3124128) (not e!4644246))))

(assert (=> b!7858053 (= res!3124128 (and (not ((_ is EmptyLang!21103) r1!6227)) (not ((_ is ElementMatch!21103) r1!6227))))))

(declare-fun b!7858054 () Bool)

(assert (=> b!7858054 (= e!4644245 e!4644244)))

(assert (=> b!7858054 (= c!1444204 ((_ is Union!21103) r1!6227))))

(assert (= (and d!2354212 (not res!3124129)) b!7858053))

(assert (= (and b!7858053 res!3124128) b!7858052))

(assert (= (and b!7858052 (not res!3124126)) b!7858054))

(assert (= (and b!7858054 c!1444204) b!7858050))

(assert (= (and b!7858054 (not c!1444204)) b!7858051))

(assert (= (and b!7858050 (not res!3124127)) b!7858048))

(assert (= (and b!7858051 res!3124130) b!7858049))

(assert (= (or b!7858048 b!7858049) bm!728532))

(assert (= (or b!7858050 b!7858051) bm!728533))

(declare-fun m!8261292 () Bool)

(assert (=> bm!728532 m!8261292))

(declare-fun m!8261294 () Bool)

(assert (=> bm!728533 m!8261294))

(assert (=> d!2354176 d!2354212))

(assert (=> d!2354168 d!2354188))

(assert (=> d!2354168 d!2354172))

(declare-fun b!7858055 () Bool)

(declare-fun e!4644255 () Bool)

(declare-fun lt!2680162 () Bool)

(declare-fun call!728539 () Bool)

(assert (=> b!7858055 (= e!4644255 (= lt!2680162 call!728539))))

(declare-fun b!7858056 () Bool)

(declare-fun res!3124131 () Bool)

(declare-fun e!4644252 () Bool)

(assert (=> b!7858056 (=> res!3124131 e!4644252)))

(declare-fun e!4644253 () Bool)

(assert (=> b!7858056 (= res!3124131 e!4644253)))

(declare-fun res!3124136 () Bool)

(assert (=> b!7858056 (=> (not res!3124136) (not e!4644253))))

(assert (=> b!7858056 (= res!3124136 lt!2680162)))

(declare-fun b!7858057 () Bool)

(declare-fun res!3124132 () Bool)

(declare-fun e!4644250 () Bool)

(assert (=> b!7858057 (=> res!3124132 e!4644250)))

(assert (=> b!7858057 (= res!3124132 (not (isEmpty!42346 (tail!15600 (tail!15600 s2!3706)))))))

(declare-fun b!7858058 () Bool)

(declare-fun res!3124133 () Bool)

(assert (=> b!7858058 (=> (not res!3124133) (not e!4644253))))

(assert (=> b!7858058 (= res!3124133 (not call!728539))))

(declare-fun b!7858059 () Bool)

(assert (=> b!7858059 (= e!4644253 (= (head!16057 (tail!15600 s2!3706)) (c!1444141 (derivativeStep!6337 r2!6165 (head!16057 s2!3706)))))))

(declare-fun bm!728534 () Bool)

(assert (=> bm!728534 (= call!728539 (isEmpty!42346 (tail!15600 s2!3706)))))

(declare-fun b!7858060 () Bool)

(declare-fun e!4644249 () Bool)

(assert (=> b!7858060 (= e!4644252 e!4644249)))

(declare-fun res!3124138 () Bool)

(assert (=> b!7858060 (=> (not res!3124138) (not e!4644249))))

(assert (=> b!7858060 (= res!3124138 (not lt!2680162))))

(declare-fun b!7858061 () Bool)

(assert (=> b!7858061 (= e!4644250 (not (= (head!16057 (tail!15600 s2!3706)) (c!1444141 (derivativeStep!6337 r2!6165 (head!16057 s2!3706))))))))

(declare-fun b!7858062 () Bool)

(declare-fun e!4644251 () Bool)

(assert (=> b!7858062 (= e!4644251 (matchR!10539 (derivativeStep!6337 (derivativeStep!6337 r2!6165 (head!16057 s2!3706)) (head!16057 (tail!15600 s2!3706))) (tail!15600 (tail!15600 s2!3706))))))

(declare-fun b!7858063 () Bool)

(declare-fun e!4644254 () Bool)

(assert (=> b!7858063 (= e!4644255 e!4644254)))

(declare-fun c!1444207 () Bool)

(assert (=> b!7858063 (= c!1444207 ((_ is EmptyLang!21103) (derivativeStep!6337 r2!6165 (head!16057 s2!3706))))))

(declare-fun b!7858064 () Bool)

(declare-fun res!3124137 () Bool)

(assert (=> b!7858064 (=> (not res!3124137) (not e!4644253))))

(assert (=> b!7858064 (= res!3124137 (isEmpty!42346 (tail!15600 (tail!15600 s2!3706))))))

(declare-fun d!2354214 () Bool)

(assert (=> d!2354214 e!4644255))

(declare-fun c!1444206 () Bool)

(assert (=> d!2354214 (= c!1444206 ((_ is EmptyExpr!21103) (derivativeStep!6337 r2!6165 (head!16057 s2!3706))))))

(assert (=> d!2354214 (= lt!2680162 e!4644251)))

(declare-fun c!1444205 () Bool)

(assert (=> d!2354214 (= c!1444205 (isEmpty!42346 (tail!15600 s2!3706)))))

(assert (=> d!2354214 (validRegex!11513 (derivativeStep!6337 r2!6165 (head!16057 s2!3706)))))

(assert (=> d!2354214 (= (matchR!10539 (derivativeStep!6337 r2!6165 (head!16057 s2!3706)) (tail!15600 s2!3706)) lt!2680162)))

(declare-fun b!7858065 () Bool)

(assert (=> b!7858065 (= e!4644254 (not lt!2680162))))

(declare-fun b!7858066 () Bool)

(assert (=> b!7858066 (= e!4644249 e!4644250)))

(declare-fun res!3124135 () Bool)

(assert (=> b!7858066 (=> res!3124135 e!4644250)))

(assert (=> b!7858066 (= res!3124135 call!728539)))

(declare-fun b!7858067 () Bool)

(assert (=> b!7858067 (= e!4644251 (nullable!9375 (derivativeStep!6337 r2!6165 (head!16057 s2!3706))))))

(declare-fun b!7858068 () Bool)

(declare-fun res!3124134 () Bool)

(assert (=> b!7858068 (=> res!3124134 e!4644252)))

(assert (=> b!7858068 (= res!3124134 (not ((_ is ElementMatch!21103) (derivativeStep!6337 r2!6165 (head!16057 s2!3706)))))))

(assert (=> b!7858068 (= e!4644254 e!4644252)))

(assert (= (and d!2354214 c!1444205) b!7858067))

(assert (= (and d!2354214 (not c!1444205)) b!7858062))

(assert (= (and d!2354214 c!1444206) b!7858055))

(assert (= (and d!2354214 (not c!1444206)) b!7858063))

(assert (= (and b!7858063 c!1444207) b!7858065))

(assert (= (and b!7858063 (not c!1444207)) b!7858068))

(assert (= (and b!7858068 (not res!3124134)) b!7858056))

(assert (= (and b!7858056 res!3124136) b!7858058))

(assert (= (and b!7858058 res!3124133) b!7858064))

(assert (= (and b!7858064 res!3124137) b!7858059))

(assert (= (and b!7858056 (not res!3124131)) b!7858060))

(assert (= (and b!7858060 res!3124138) b!7858066))

(assert (= (and b!7858066 (not res!3124135)) b!7858057))

(assert (= (and b!7858057 (not res!3124132)) b!7858061))

(assert (= (or b!7858055 b!7858058 b!7858066) bm!728534))

(assert (=> b!7858059 m!8261192))

(declare-fun m!8261296 () Bool)

(assert (=> b!7858059 m!8261296))

(assert (=> bm!728534 m!8261192))

(assert (=> bm!728534 m!8261194))

(assert (=> b!7858067 m!8261196))

(declare-fun m!8261298 () Bool)

(assert (=> b!7858067 m!8261298))

(assert (=> d!2354214 m!8261192))

(assert (=> d!2354214 m!8261194))

(assert (=> d!2354214 m!8261196))

(declare-fun m!8261300 () Bool)

(assert (=> d!2354214 m!8261300))

(assert (=> b!7858064 m!8261192))

(declare-fun m!8261302 () Bool)

(assert (=> b!7858064 m!8261302))

(assert (=> b!7858064 m!8261302))

(declare-fun m!8261304 () Bool)

(assert (=> b!7858064 m!8261304))

(assert (=> b!7858061 m!8261192))

(assert (=> b!7858061 m!8261296))

(assert (=> b!7858057 m!8261192))

(assert (=> b!7858057 m!8261302))

(assert (=> b!7858057 m!8261302))

(assert (=> b!7858057 m!8261304))

(assert (=> b!7858062 m!8261192))

(assert (=> b!7858062 m!8261296))

(assert (=> b!7858062 m!8261196))

(assert (=> b!7858062 m!8261296))

(declare-fun m!8261306 () Bool)

(assert (=> b!7858062 m!8261306))

(assert (=> b!7858062 m!8261192))

(assert (=> b!7858062 m!8261302))

(assert (=> b!7858062 m!8261306))

(assert (=> b!7858062 m!8261302))

(declare-fun m!8261308 () Bool)

(assert (=> b!7858062 m!8261308))

(assert (=> b!7857765 d!2354214))

(declare-fun b!7858069 () Bool)

(declare-fun e!4644260 () Regex!21103)

(assert (=> b!7858069 (= e!4644260 EmptyLang!21103)))

(declare-fun call!728543 () Regex!21103)

(declare-fun bm!728535 () Bool)

(declare-fun c!1444210 () Bool)

(declare-fun c!1444208 () Bool)

(assert (=> bm!728535 (= call!728543 (derivativeStep!6337 (ite c!1444210 (regOne!42719 r2!6165) (ite c!1444208 (regTwo!42718 r2!6165) (regOne!42718 r2!6165))) (head!16057 s2!3706)))))

(declare-fun bm!728537 () Bool)

(declare-fun call!728540 () Regex!21103)

(assert (=> bm!728537 (= call!728540 call!728543)))

(declare-fun call!728541 () Regex!21103)

(declare-fun b!7858070 () Bool)

(declare-fun e!4644259 () Regex!21103)

(assert (=> b!7858070 (= e!4644259 (Union!21103 (Concat!29948 call!728541 (regTwo!42718 r2!6165)) call!728540))))

(declare-fun b!7858071 () Bool)

(assert (=> b!7858071 (= c!1444208 (nullable!9375 (regOne!42718 r2!6165)))))

(declare-fun e!4644258 () Regex!21103)

(assert (=> b!7858071 (= e!4644258 e!4644259)))

(declare-fun b!7858072 () Bool)

(declare-fun e!4644256 () Regex!21103)

(declare-fun call!728542 () Regex!21103)

(assert (=> b!7858072 (= e!4644256 (Union!21103 call!728543 call!728542))))

(declare-fun b!7858073 () Bool)

(assert (=> b!7858073 (= e!4644259 (Union!21103 (Concat!29948 call!728540 (regTwo!42718 r2!6165)) EmptyLang!21103))))

(declare-fun b!7858074 () Bool)

(assert (=> b!7858074 (= c!1444210 ((_ is Union!21103) r2!6165))))

(declare-fun e!4644257 () Regex!21103)

(assert (=> b!7858074 (= e!4644257 e!4644256)))

(declare-fun c!1444209 () Bool)

(declare-fun bm!728536 () Bool)

(assert (=> bm!728536 (= call!728542 (derivativeStep!6337 (ite c!1444210 (regTwo!42719 r2!6165) (ite c!1444209 (reg!21432 r2!6165) (regOne!42718 r2!6165))) (head!16057 s2!3706)))))

(declare-fun d!2354216 () Bool)

(declare-fun lt!2680163 () Regex!21103)

(assert (=> d!2354216 (validRegex!11513 lt!2680163)))

(assert (=> d!2354216 (= lt!2680163 e!4644260)))

(declare-fun c!1444212 () Bool)

(assert (=> d!2354216 (= c!1444212 (or ((_ is EmptyExpr!21103) r2!6165) ((_ is EmptyLang!21103) r2!6165)))))

(assert (=> d!2354216 (validRegex!11513 r2!6165)))

(assert (=> d!2354216 (= (derivativeStep!6337 r2!6165 (head!16057 s2!3706)) lt!2680163)))

(declare-fun b!7858075 () Bool)

(assert (=> b!7858075 (= e!4644257 (ite (= (head!16057 s2!3706) (c!1444141 r2!6165)) EmptyExpr!21103 EmptyLang!21103))))

(declare-fun b!7858076 () Bool)

(assert (=> b!7858076 (= e!4644258 (Concat!29948 call!728541 r2!6165))))

(declare-fun b!7858077 () Bool)

(assert (=> b!7858077 (= e!4644256 e!4644258)))

(assert (=> b!7858077 (= c!1444209 ((_ is Star!21103) r2!6165))))

(declare-fun bm!728538 () Bool)

(assert (=> bm!728538 (= call!728541 call!728542)))

(declare-fun b!7858078 () Bool)

(assert (=> b!7858078 (= e!4644260 e!4644257)))

(declare-fun c!1444211 () Bool)

(assert (=> b!7858078 (= c!1444211 ((_ is ElementMatch!21103) r2!6165))))

(assert (= (and d!2354216 c!1444212) b!7858069))

(assert (= (and d!2354216 (not c!1444212)) b!7858078))

(assert (= (and b!7858078 c!1444211) b!7858075))

(assert (= (and b!7858078 (not c!1444211)) b!7858074))

(assert (= (and b!7858074 c!1444210) b!7858072))

(assert (= (and b!7858074 (not c!1444210)) b!7858077))

(assert (= (and b!7858077 c!1444209) b!7858076))

(assert (= (and b!7858077 (not c!1444209)) b!7858071))

(assert (= (and b!7858071 c!1444208) b!7858070))

(assert (= (and b!7858071 (not c!1444208)) b!7858073))

(assert (= (or b!7858070 b!7858073) bm!728537))

(assert (= (or b!7858076 b!7858070) bm!728538))

(assert (= (or b!7858072 bm!728538) bm!728536))

(assert (= (or b!7858072 bm!728537) bm!728535))

(assert (=> bm!728535 m!8261186))

(declare-fun m!8261310 () Bool)

(assert (=> bm!728535 m!8261310))

(declare-fun m!8261312 () Bool)

(assert (=> b!7858071 m!8261312))

(assert (=> bm!728536 m!8261186))

(declare-fun m!8261314 () Bool)

(assert (=> bm!728536 m!8261314))

(declare-fun m!8261316 () Bool)

(assert (=> d!2354216 m!8261316))

(assert (=> d!2354216 m!8261178))

(assert (=> b!7857765 d!2354216))

(assert (=> b!7857765 d!2354196))

(assert (=> b!7857765 d!2354204))

(assert (=> bm!728501 d!2354198))

(declare-fun d!2354218 () Bool)

(assert (=> d!2354218 (= (nullable!9375 (reg!21432 r2!6165)) (nullableFct!3699 (reg!21432 r2!6165)))))

(declare-fun bs!1967161 () Bool)

(assert (= bs!1967161 d!2354218))

(declare-fun m!8261318 () Bool)

(assert (=> bs!1967161 m!8261318))

(assert (=> b!7857772 d!2354218))

(assert (=> b!7857764 d!2354196))

(declare-fun call!728545 () Bool)

(declare-fun c!1444213 () Bool)

(declare-fun c!1444214 () Bool)

(declare-fun bm!728539 () Bool)

(assert (=> bm!728539 (= call!728545 (validRegex!11513 (ite c!1444213 (reg!21432 (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))) (ite c!1444214 (regOne!42719 (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))) (regTwo!42718 (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227))))))))))

(declare-fun call!728544 () Bool)

(declare-fun bm!728540 () Bool)

(assert (=> bm!728540 (= call!728544 (validRegex!11513 (ite c!1444214 (regTwo!42719 (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))) (regOne!42718 (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))))))))

(declare-fun b!7858079 () Bool)

(declare-fun e!4644262 () Bool)

(declare-fun e!4644263 () Bool)

(assert (=> b!7858079 (= e!4644262 e!4644263)))

(declare-fun res!3124139 () Bool)

(assert (=> b!7858079 (= res!3124139 (not (nullable!9375 (reg!21432 (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))))))))

(assert (=> b!7858079 (=> (not res!3124139) (not e!4644263))))

(declare-fun b!7858080 () Bool)

(declare-fun e!4644267 () Bool)

(declare-fun e!4644264 () Bool)

(assert (=> b!7858080 (= e!4644267 e!4644264)))

(declare-fun res!3124140 () Bool)

(assert (=> b!7858080 (=> (not res!3124140) (not e!4644264))))

(assert (=> b!7858080 (= res!3124140 call!728544)))

(declare-fun b!7858081 () Bool)

(assert (=> b!7858081 (= e!4644263 call!728545)))

(declare-fun b!7858082 () Bool)

(declare-fun res!3124143 () Bool)

(declare-fun e!4644266 () Bool)

(assert (=> b!7858082 (=> (not res!3124143) (not e!4644266))))

(declare-fun call!728546 () Bool)

(assert (=> b!7858082 (= res!3124143 call!728546)))

(declare-fun e!4644265 () Bool)

(assert (=> b!7858082 (= e!4644265 e!4644266)))

(declare-fun bm!728541 () Bool)

(assert (=> bm!728541 (= call!728546 call!728545)))

(declare-fun b!7858083 () Bool)

(assert (=> b!7858083 (= e!4644264 call!728546)))

(declare-fun d!2354220 () Bool)

(declare-fun res!3124142 () Bool)

(declare-fun e!4644261 () Bool)

(assert (=> d!2354220 (=> res!3124142 e!4644261)))

(assert (=> d!2354220 (= res!3124142 ((_ is ElementMatch!21103) (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))))))

(assert (=> d!2354220 (= (validRegex!11513 (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))) e!4644261)))

(declare-fun b!7858084 () Bool)

(assert (=> b!7858084 (= e!4644261 e!4644262)))

(assert (=> b!7858084 (= c!1444213 ((_ is Star!21103) (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))))))

(declare-fun b!7858085 () Bool)

(assert (=> b!7858085 (= e!4644262 e!4644265)))

(assert (=> b!7858085 (= c!1444214 ((_ is Union!21103) (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227)))))))

(declare-fun b!7858086 () Bool)

(assert (=> b!7858086 (= e!4644266 call!728544)))

(declare-fun b!7858087 () Bool)

(declare-fun res!3124141 () Bool)

(assert (=> b!7858087 (=> res!3124141 e!4644267)))

(assert (=> b!7858087 (= res!3124141 (not ((_ is Concat!29948) (ite c!1444146 (reg!21432 r1!6227) (ite c!1444147 (regOne!42719 r1!6227) (regTwo!42718 r1!6227))))))))

(assert (=> b!7858087 (= e!4644265 e!4644267)))

(assert (= (and d!2354220 (not res!3124142)) b!7858084))

(assert (= (and b!7858084 c!1444213) b!7858079))

(assert (= (and b!7858084 (not c!1444213)) b!7858085))

(assert (= (and b!7858079 res!3124139) b!7858081))

(assert (= (and b!7858085 c!1444214) b!7858082))

(assert (= (and b!7858085 (not c!1444214)) b!7858087))

(assert (= (and b!7858082 res!3124143) b!7858086))

(assert (= (and b!7858087 (not res!3124141)) b!7858080))

(assert (= (and b!7858080 res!3124140) b!7858083))

(assert (= (or b!7858082 b!7858083) bm!728541))

(assert (= (or b!7858086 b!7858080) bm!728540))

(assert (= (or b!7858081 bm!728541) bm!728539))

(declare-fun m!8261320 () Bool)

(assert (=> bm!728539 m!8261320))

(declare-fun m!8261322 () Bool)

(assert (=> bm!728540 m!8261322))

(declare-fun m!8261324 () Bool)

(assert (=> b!7858079 m!8261324))

(assert (=> bm!728486 d!2354220))

(assert (=> b!7857785 d!2354210))

(declare-fun c!1444215 () Bool)

(declare-fun c!1444216 () Bool)

(declare-fun call!728548 () Bool)

(declare-fun bm!728542 () Bool)

(assert (=> bm!728542 (= call!728548 (validRegex!11513 (ite c!1444215 (reg!21432 (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))) (ite c!1444216 (regOne!42719 (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))) (regTwo!42718 (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165)))))))))

(declare-fun call!728547 () Bool)

(declare-fun bm!728543 () Bool)

(assert (=> bm!728543 (= call!728547 (validRegex!11513 (ite c!1444216 (regTwo!42719 (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))) (regOne!42718 (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))))))))

(declare-fun b!7858088 () Bool)

(declare-fun e!4644269 () Bool)

(declare-fun e!4644270 () Bool)

(assert (=> b!7858088 (= e!4644269 e!4644270)))

(declare-fun res!3124144 () Bool)

(assert (=> b!7858088 (= res!3124144 (not (nullable!9375 (reg!21432 (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))))))))

(assert (=> b!7858088 (=> (not res!3124144) (not e!4644270))))

(declare-fun b!7858089 () Bool)

(declare-fun e!4644274 () Bool)

(declare-fun e!4644271 () Bool)

(assert (=> b!7858089 (= e!4644274 e!4644271)))

(declare-fun res!3124145 () Bool)

(assert (=> b!7858089 (=> (not res!3124145) (not e!4644271))))

(assert (=> b!7858089 (= res!3124145 call!728547)))

(declare-fun b!7858090 () Bool)

(assert (=> b!7858090 (= e!4644270 call!728548)))

(declare-fun b!7858091 () Bool)

(declare-fun res!3124148 () Bool)

(declare-fun e!4644273 () Bool)

(assert (=> b!7858091 (=> (not res!3124148) (not e!4644273))))

(declare-fun call!728549 () Bool)

(assert (=> b!7858091 (= res!3124148 call!728549)))

(declare-fun e!4644272 () Bool)

(assert (=> b!7858091 (= e!4644272 e!4644273)))

(declare-fun bm!728544 () Bool)

(assert (=> bm!728544 (= call!728549 call!728548)))

(declare-fun b!7858092 () Bool)

(assert (=> b!7858092 (= e!4644271 call!728549)))

(declare-fun d!2354222 () Bool)

(declare-fun res!3124147 () Bool)

(declare-fun e!4644268 () Bool)

(assert (=> d!2354222 (=> res!3124147 e!4644268)))

(assert (=> d!2354222 (= res!3124147 ((_ is ElementMatch!21103) (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))))))

(assert (=> d!2354222 (= (validRegex!11513 (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))) e!4644268)))

(declare-fun b!7858093 () Bool)

(assert (=> b!7858093 (= e!4644268 e!4644269)))

(assert (=> b!7858093 (= c!1444215 ((_ is Star!21103) (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))))))

(declare-fun b!7858094 () Bool)

(assert (=> b!7858094 (= e!4644269 e!4644272)))

(assert (=> b!7858094 (= c!1444216 ((_ is Union!21103) (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165))))))

(declare-fun b!7858095 () Bool)

(assert (=> b!7858095 (= e!4644273 call!728547)))

(declare-fun b!7858096 () Bool)

(declare-fun res!3124146 () Bool)

(assert (=> b!7858096 (=> res!3124146 e!4644274)))

(assert (=> b!7858096 (= res!3124146 (not ((_ is Concat!29948) (ite c!1444162 (regTwo!42719 r2!6165) (regOne!42718 r2!6165)))))))

(assert (=> b!7858096 (= e!4644272 e!4644274)))

(assert (= (and d!2354222 (not res!3124147)) b!7858093))

(assert (= (and b!7858093 c!1444215) b!7858088))

(assert (= (and b!7858093 (not c!1444215)) b!7858094))

(assert (= (and b!7858088 res!3124144) b!7858090))

(assert (= (and b!7858094 c!1444216) b!7858091))

(assert (= (and b!7858094 (not c!1444216)) b!7858096))

(assert (= (and b!7858091 res!3124148) b!7858095))

(assert (= (and b!7858096 (not res!3124146)) b!7858089))

(assert (= (and b!7858089 res!3124145) b!7858092))

(assert (= (or b!7858091 b!7858092) bm!728544))

(assert (= (or b!7858095 b!7858089) bm!728543))

(assert (= (or b!7858090 bm!728544) bm!728542))

(declare-fun m!8261326 () Bool)

(assert (=> bm!728542 m!8261326))

(declare-fun m!8261328 () Bool)

(assert (=> bm!728543 m!8261328))

(declare-fun m!8261330 () Bool)

(assert (=> b!7858088 m!8261330))

(assert (=> bm!728499 d!2354222))

(declare-fun c!1444218 () Bool)

(declare-fun call!728551 () Bool)

(declare-fun bm!728545 () Bool)

(declare-fun c!1444217 () Bool)

(assert (=> bm!728545 (= call!728551 (validRegex!11513 (ite c!1444217 (reg!21432 (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))) (ite c!1444218 (regOne!42719 (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))) (regTwo!42718 (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227)))))))))

(declare-fun bm!728546 () Bool)

(declare-fun call!728550 () Bool)

(assert (=> bm!728546 (= call!728550 (validRegex!11513 (ite c!1444218 (regTwo!42719 (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))) (regOne!42718 (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))))))))

(declare-fun b!7858097 () Bool)

(declare-fun e!4644276 () Bool)

(declare-fun e!4644277 () Bool)

(assert (=> b!7858097 (= e!4644276 e!4644277)))

(declare-fun res!3124149 () Bool)

(assert (=> b!7858097 (= res!3124149 (not (nullable!9375 (reg!21432 (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))))))))

(assert (=> b!7858097 (=> (not res!3124149) (not e!4644277))))

(declare-fun b!7858098 () Bool)

(declare-fun e!4644281 () Bool)

(declare-fun e!4644278 () Bool)

(assert (=> b!7858098 (= e!4644281 e!4644278)))

(declare-fun res!3124150 () Bool)

(assert (=> b!7858098 (=> (not res!3124150) (not e!4644278))))

(assert (=> b!7858098 (= res!3124150 call!728550)))

(declare-fun b!7858099 () Bool)

(assert (=> b!7858099 (= e!4644277 call!728551)))

(declare-fun b!7858100 () Bool)

(declare-fun res!3124153 () Bool)

(declare-fun e!4644280 () Bool)

(assert (=> b!7858100 (=> (not res!3124153) (not e!4644280))))

(declare-fun call!728552 () Bool)

(assert (=> b!7858100 (= res!3124153 call!728552)))

(declare-fun e!4644279 () Bool)

(assert (=> b!7858100 (= e!4644279 e!4644280)))

(declare-fun bm!728547 () Bool)

(assert (=> bm!728547 (= call!728552 call!728551)))

(declare-fun b!7858101 () Bool)

(assert (=> b!7858101 (= e!4644278 call!728552)))

(declare-fun d!2354224 () Bool)

(declare-fun res!3124152 () Bool)

(declare-fun e!4644275 () Bool)

(assert (=> d!2354224 (=> res!3124152 e!4644275)))

(assert (=> d!2354224 (= res!3124152 ((_ is ElementMatch!21103) (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))))))

(assert (=> d!2354224 (= (validRegex!11513 (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))) e!4644275)))

(declare-fun b!7858102 () Bool)

(assert (=> b!7858102 (= e!4644275 e!4644276)))

(assert (=> b!7858102 (= c!1444217 ((_ is Star!21103) (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))))))

(declare-fun b!7858103 () Bool)

(assert (=> b!7858103 (= e!4644276 e!4644279)))

(assert (=> b!7858103 (= c!1444218 ((_ is Union!21103) (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227))))))

(declare-fun b!7858104 () Bool)

(assert (=> b!7858104 (= e!4644280 call!728550)))

(declare-fun b!7858105 () Bool)

(declare-fun res!3124151 () Bool)

(assert (=> b!7858105 (=> res!3124151 e!4644281)))

(assert (=> b!7858105 (= res!3124151 (not ((_ is Concat!29948) (ite c!1444147 (regTwo!42719 r1!6227) (regOne!42718 r1!6227)))))))

(assert (=> b!7858105 (= e!4644279 e!4644281)))

(assert (= (and d!2354224 (not res!3124152)) b!7858102))

(assert (= (and b!7858102 c!1444217) b!7858097))

(assert (= (and b!7858102 (not c!1444217)) b!7858103))

(assert (= (and b!7858097 res!3124149) b!7858099))

(assert (= (and b!7858103 c!1444218) b!7858100))

(assert (= (and b!7858103 (not c!1444218)) b!7858105))

(assert (= (and b!7858100 res!3124153) b!7858104))

(assert (= (and b!7858105 (not res!3124151)) b!7858098))

(assert (= (and b!7858098 res!3124150) b!7858101))

(assert (= (or b!7858100 b!7858101) bm!728547))

(assert (= (or b!7858104 b!7858098) bm!728546))

(assert (= (or b!7858099 bm!728547) bm!728545))

(declare-fun m!8261332 () Bool)

(assert (=> bm!728545 m!8261332))

(declare-fun m!8261334 () Bool)

(assert (=> bm!728546 m!8261334))

(declare-fun m!8261336 () Bool)

(assert (=> b!7858097 m!8261336))

(assert (=> bm!728487 d!2354224))

(declare-fun b!7858106 () Bool)

(declare-fun e!4644282 () Bool)

(assert (=> b!7858106 (= e!4644282 tp_is_empty!52605)))

(declare-fun b!7858107 () Bool)

(declare-fun tp!2328079 () Bool)

(declare-fun tp!2328080 () Bool)

(assert (=> b!7858107 (= e!4644282 (and tp!2328079 tp!2328080))))

(assert (=> b!7857824 (= tp!2327969 e!4644282)))

(declare-fun b!7858108 () Bool)

(declare-fun tp!2328081 () Bool)

(assert (=> b!7858108 (= e!4644282 tp!2328081)))

(declare-fun b!7858109 () Bool)

(declare-fun tp!2328077 () Bool)

(declare-fun tp!2328078 () Bool)

(assert (=> b!7858109 (= e!4644282 (and tp!2328077 tp!2328078))))

(assert (= (and b!7857824 ((_ is ElementMatch!21103) (regOne!42718 (regOne!42719 r2!6165)))) b!7858106))

(assert (= (and b!7857824 ((_ is Concat!29948) (regOne!42718 (regOne!42719 r2!6165)))) b!7858107))

(assert (= (and b!7857824 ((_ is Star!21103) (regOne!42718 (regOne!42719 r2!6165)))) b!7858108))

(assert (= (and b!7857824 ((_ is Union!21103) (regOne!42718 (regOne!42719 r2!6165)))) b!7858109))

(declare-fun b!7858110 () Bool)

(declare-fun e!4644283 () Bool)

(assert (=> b!7858110 (= e!4644283 tp_is_empty!52605)))

(declare-fun b!7858111 () Bool)

(declare-fun tp!2328084 () Bool)

(declare-fun tp!2328085 () Bool)

(assert (=> b!7858111 (= e!4644283 (and tp!2328084 tp!2328085))))

(assert (=> b!7857824 (= tp!2327970 e!4644283)))

(declare-fun b!7858112 () Bool)

(declare-fun tp!2328086 () Bool)

(assert (=> b!7858112 (= e!4644283 tp!2328086)))

(declare-fun b!7858113 () Bool)

(declare-fun tp!2328082 () Bool)

(declare-fun tp!2328083 () Bool)

(assert (=> b!7858113 (= e!4644283 (and tp!2328082 tp!2328083))))

(assert (= (and b!7857824 ((_ is ElementMatch!21103) (regTwo!42718 (regOne!42719 r2!6165)))) b!7858110))

(assert (= (and b!7857824 ((_ is Concat!29948) (regTwo!42718 (regOne!42719 r2!6165)))) b!7858111))

(assert (= (and b!7857824 ((_ is Star!21103) (regTwo!42718 (regOne!42719 r2!6165)))) b!7858112))

(assert (= (and b!7857824 ((_ is Union!21103) (regTwo!42718 (regOne!42719 r2!6165)))) b!7858113))

(declare-fun b!7858114 () Bool)

(declare-fun e!4644284 () Bool)

(assert (=> b!7858114 (= e!4644284 tp_is_empty!52605)))

(declare-fun b!7858115 () Bool)

(declare-fun tp!2328089 () Bool)

(declare-fun tp!2328090 () Bool)

(assert (=> b!7858115 (= e!4644284 (and tp!2328089 tp!2328090))))

(assert (=> b!7857864 (= tp!2328003 e!4644284)))

(declare-fun b!7858116 () Bool)

(declare-fun tp!2328091 () Bool)

(assert (=> b!7858116 (= e!4644284 tp!2328091)))

(declare-fun b!7858117 () Bool)

(declare-fun tp!2328087 () Bool)

(declare-fun tp!2328088 () Bool)

(assert (=> b!7858117 (= e!4644284 (and tp!2328087 tp!2328088))))

(assert (= (and b!7857864 ((_ is ElementMatch!21103) (regOne!42719 (regOne!42719 r1!6227)))) b!7858114))

(assert (= (and b!7857864 ((_ is Concat!29948) (regOne!42719 (regOne!42719 r1!6227)))) b!7858115))

(assert (= (and b!7857864 ((_ is Star!21103) (regOne!42719 (regOne!42719 r1!6227)))) b!7858116))

(assert (= (and b!7857864 ((_ is Union!21103) (regOne!42719 (regOne!42719 r1!6227)))) b!7858117))

(declare-fun b!7858118 () Bool)

(declare-fun e!4644285 () Bool)

(assert (=> b!7858118 (= e!4644285 tp_is_empty!52605)))

(declare-fun b!7858119 () Bool)

(declare-fun tp!2328094 () Bool)

(declare-fun tp!2328095 () Bool)

(assert (=> b!7858119 (= e!4644285 (and tp!2328094 tp!2328095))))

(assert (=> b!7857864 (= tp!2328004 e!4644285)))

(declare-fun b!7858120 () Bool)

(declare-fun tp!2328096 () Bool)

(assert (=> b!7858120 (= e!4644285 tp!2328096)))

(declare-fun b!7858121 () Bool)

(declare-fun tp!2328092 () Bool)

(declare-fun tp!2328093 () Bool)

(assert (=> b!7858121 (= e!4644285 (and tp!2328092 tp!2328093))))

(assert (= (and b!7857864 ((_ is ElementMatch!21103) (regTwo!42719 (regOne!42719 r1!6227)))) b!7858118))

(assert (= (and b!7857864 ((_ is Concat!29948) (regTwo!42719 (regOne!42719 r1!6227)))) b!7858119))

(assert (= (and b!7857864 ((_ is Star!21103) (regTwo!42719 (regOne!42719 r1!6227)))) b!7858120))

(assert (= (and b!7857864 ((_ is Union!21103) (regTwo!42719 (regOne!42719 r1!6227)))) b!7858121))

(declare-fun b!7858122 () Bool)

(declare-fun e!4644286 () Bool)

(assert (=> b!7858122 (= e!4644286 tp_is_empty!52605)))

(declare-fun b!7858123 () Bool)

(declare-fun tp!2328099 () Bool)

(declare-fun tp!2328100 () Bool)

(assert (=> b!7858123 (= e!4644286 (and tp!2328099 tp!2328100))))

(assert (=> b!7857863 (= tp!2328007 e!4644286)))

(declare-fun b!7858124 () Bool)

(declare-fun tp!2328101 () Bool)

(assert (=> b!7858124 (= e!4644286 tp!2328101)))

(declare-fun b!7858125 () Bool)

(declare-fun tp!2328097 () Bool)

(declare-fun tp!2328098 () Bool)

(assert (=> b!7858125 (= e!4644286 (and tp!2328097 tp!2328098))))

(assert (= (and b!7857863 ((_ is ElementMatch!21103) (reg!21432 (regOne!42719 r1!6227)))) b!7858122))

(assert (= (and b!7857863 ((_ is Concat!29948) (reg!21432 (regOne!42719 r1!6227)))) b!7858123))

(assert (= (and b!7857863 ((_ is Star!21103) (reg!21432 (regOne!42719 r1!6227)))) b!7858124))

(assert (= (and b!7857863 ((_ is Union!21103) (reg!21432 (regOne!42719 r1!6227)))) b!7858125))

(declare-fun b!7858126 () Bool)

(declare-fun e!4644287 () Bool)

(assert (=> b!7858126 (= e!4644287 tp_is_empty!52605)))

(declare-fun b!7858127 () Bool)

(declare-fun tp!2328104 () Bool)

(declare-fun tp!2328105 () Bool)

(assert (=> b!7858127 (= e!4644287 (and tp!2328104 tp!2328105))))

(assert (=> b!7857834 (= tp!2327977 e!4644287)))

(declare-fun b!7858128 () Bool)

(declare-fun tp!2328106 () Bool)

(assert (=> b!7858128 (= e!4644287 tp!2328106)))

(declare-fun b!7858129 () Bool)

(declare-fun tp!2328102 () Bool)

(declare-fun tp!2328103 () Bool)

(assert (=> b!7858129 (= e!4644287 (and tp!2328102 tp!2328103))))

(assert (= (and b!7857834 ((_ is ElementMatch!21103) (regOne!42719 (regOne!42718 r2!6165)))) b!7858126))

(assert (= (and b!7857834 ((_ is Concat!29948) (regOne!42719 (regOne!42718 r2!6165)))) b!7858127))

(assert (= (and b!7857834 ((_ is Star!21103) (regOne!42719 (regOne!42718 r2!6165)))) b!7858128))

(assert (= (and b!7857834 ((_ is Union!21103) (regOne!42719 (regOne!42718 r2!6165)))) b!7858129))

(declare-fun b!7858130 () Bool)

(declare-fun e!4644288 () Bool)

(assert (=> b!7858130 (= e!4644288 tp_is_empty!52605)))

(declare-fun b!7858131 () Bool)

(declare-fun tp!2328109 () Bool)

(declare-fun tp!2328110 () Bool)

(assert (=> b!7858131 (= e!4644288 (and tp!2328109 tp!2328110))))

(assert (=> b!7857834 (= tp!2327978 e!4644288)))

(declare-fun b!7858132 () Bool)

(declare-fun tp!2328111 () Bool)

(assert (=> b!7858132 (= e!4644288 tp!2328111)))

(declare-fun b!7858133 () Bool)

(declare-fun tp!2328107 () Bool)

(declare-fun tp!2328108 () Bool)

(assert (=> b!7858133 (= e!4644288 (and tp!2328107 tp!2328108))))

(assert (= (and b!7857834 ((_ is ElementMatch!21103) (regTwo!42719 (regOne!42718 r2!6165)))) b!7858130))

(assert (= (and b!7857834 ((_ is Concat!29948) (regTwo!42719 (regOne!42718 r2!6165)))) b!7858131))

(assert (= (and b!7857834 ((_ is Star!21103) (regTwo!42719 (regOne!42718 r2!6165)))) b!7858132))

(assert (= (and b!7857834 ((_ is Union!21103) (regTwo!42719 (regOne!42718 r2!6165)))) b!7858133))

(declare-fun b!7858134 () Bool)

(declare-fun e!4644289 () Bool)

(assert (=> b!7858134 (= e!4644289 tp_is_empty!52605)))

(declare-fun b!7858135 () Bool)

(declare-fun tp!2328114 () Bool)

(declare-fun tp!2328115 () Bool)

(assert (=> b!7858135 (= e!4644289 (and tp!2328114 tp!2328115))))

(assert (=> b!7857855 (= tp!2327992 e!4644289)))

(declare-fun b!7858136 () Bool)

(declare-fun tp!2328116 () Bool)

(assert (=> b!7858136 (= e!4644289 tp!2328116)))

(declare-fun b!7858137 () Bool)

(declare-fun tp!2328112 () Bool)

(declare-fun tp!2328113 () Bool)

(assert (=> b!7858137 (= e!4644289 (and tp!2328112 tp!2328113))))

(assert (= (and b!7857855 ((_ is ElementMatch!21103) (regOne!42719 (regTwo!42718 r1!6227)))) b!7858134))

(assert (= (and b!7857855 ((_ is Concat!29948) (regOne!42719 (regTwo!42718 r1!6227)))) b!7858135))

(assert (= (and b!7857855 ((_ is Star!21103) (regOne!42719 (regTwo!42718 r1!6227)))) b!7858136))

(assert (= (and b!7857855 ((_ is Union!21103) (regOne!42719 (regTwo!42718 r1!6227)))) b!7858137))

(declare-fun b!7858138 () Bool)

(declare-fun e!4644290 () Bool)

(assert (=> b!7858138 (= e!4644290 tp_is_empty!52605)))

(declare-fun b!7858139 () Bool)

(declare-fun tp!2328119 () Bool)

(declare-fun tp!2328120 () Bool)

(assert (=> b!7858139 (= e!4644290 (and tp!2328119 tp!2328120))))

(assert (=> b!7857855 (= tp!2327993 e!4644290)))

(declare-fun b!7858140 () Bool)

(declare-fun tp!2328121 () Bool)

(assert (=> b!7858140 (= e!4644290 tp!2328121)))

(declare-fun b!7858141 () Bool)

(declare-fun tp!2328117 () Bool)

(declare-fun tp!2328118 () Bool)

(assert (=> b!7858141 (= e!4644290 (and tp!2328117 tp!2328118))))

(assert (= (and b!7857855 ((_ is ElementMatch!21103) (regTwo!42719 (regTwo!42718 r1!6227)))) b!7858138))

(assert (= (and b!7857855 ((_ is Concat!29948) (regTwo!42719 (regTwo!42718 r1!6227)))) b!7858139))

(assert (= (and b!7857855 ((_ is Star!21103) (regTwo!42719 (regTwo!42718 r1!6227)))) b!7858140))

(assert (= (and b!7857855 ((_ is Union!21103) (regTwo!42719 (regTwo!42718 r1!6227)))) b!7858141))

(declare-fun b!7858142 () Bool)

(declare-fun e!4644291 () Bool)

(assert (=> b!7858142 (= e!4644291 tp_is_empty!52605)))

(declare-fun b!7858143 () Bool)

(declare-fun tp!2328124 () Bool)

(declare-fun tp!2328125 () Bool)

(assert (=> b!7858143 (= e!4644291 (and tp!2328124 tp!2328125))))

(assert (=> b!7857862 (= tp!2328005 e!4644291)))

(declare-fun b!7858144 () Bool)

(declare-fun tp!2328126 () Bool)

(assert (=> b!7858144 (= e!4644291 tp!2328126)))

(declare-fun b!7858145 () Bool)

(declare-fun tp!2328122 () Bool)

(declare-fun tp!2328123 () Bool)

(assert (=> b!7858145 (= e!4644291 (and tp!2328122 tp!2328123))))

(assert (= (and b!7857862 ((_ is ElementMatch!21103) (regOne!42718 (regOne!42719 r1!6227)))) b!7858142))

(assert (= (and b!7857862 ((_ is Concat!29948) (regOne!42718 (regOne!42719 r1!6227)))) b!7858143))

(assert (= (and b!7857862 ((_ is Star!21103) (regOne!42718 (regOne!42719 r1!6227)))) b!7858144))

(assert (= (and b!7857862 ((_ is Union!21103) (regOne!42718 (regOne!42719 r1!6227)))) b!7858145))

(declare-fun b!7858146 () Bool)

(declare-fun e!4644292 () Bool)

(assert (=> b!7858146 (= e!4644292 tp_is_empty!52605)))

(declare-fun b!7858147 () Bool)

(declare-fun tp!2328129 () Bool)

(declare-fun tp!2328130 () Bool)

(assert (=> b!7858147 (= e!4644292 (and tp!2328129 tp!2328130))))

(assert (=> b!7857862 (= tp!2328006 e!4644292)))

(declare-fun b!7858148 () Bool)

(declare-fun tp!2328131 () Bool)

(assert (=> b!7858148 (= e!4644292 tp!2328131)))

(declare-fun b!7858149 () Bool)

(declare-fun tp!2328127 () Bool)

(declare-fun tp!2328128 () Bool)

(assert (=> b!7858149 (= e!4644292 (and tp!2328127 tp!2328128))))

(assert (= (and b!7857862 ((_ is ElementMatch!21103) (regTwo!42718 (regOne!42719 r1!6227)))) b!7858146))

(assert (= (and b!7857862 ((_ is Concat!29948) (regTwo!42718 (regOne!42719 r1!6227)))) b!7858147))

(assert (= (and b!7857862 ((_ is Star!21103) (regTwo!42718 (regOne!42719 r1!6227)))) b!7858148))

(assert (= (and b!7857862 ((_ is Union!21103) (regTwo!42718 (regOne!42719 r1!6227)))) b!7858149))

(declare-fun b!7858150 () Bool)

(declare-fun e!4644293 () Bool)

(assert (=> b!7858150 (= e!4644293 tp_is_empty!52605)))

(declare-fun b!7858151 () Bool)

(declare-fun tp!2328134 () Bool)

(declare-fun tp!2328135 () Bool)

(assert (=> b!7858151 (= e!4644293 (and tp!2328134 tp!2328135))))

(assert (=> b!7857833 (= tp!2327981 e!4644293)))

(declare-fun b!7858152 () Bool)

(declare-fun tp!2328136 () Bool)

(assert (=> b!7858152 (= e!4644293 tp!2328136)))

(declare-fun b!7858153 () Bool)

(declare-fun tp!2328132 () Bool)

(declare-fun tp!2328133 () Bool)

(assert (=> b!7858153 (= e!4644293 (and tp!2328132 tp!2328133))))

(assert (= (and b!7857833 ((_ is ElementMatch!21103) (reg!21432 (regOne!42718 r2!6165)))) b!7858150))

(assert (= (and b!7857833 ((_ is Concat!29948) (reg!21432 (regOne!42718 r2!6165)))) b!7858151))

(assert (= (and b!7857833 ((_ is Star!21103) (reg!21432 (regOne!42718 r2!6165)))) b!7858152))

(assert (= (and b!7857833 ((_ is Union!21103) (reg!21432 (regOne!42718 r2!6165)))) b!7858153))

(declare-fun b!7858154 () Bool)

(declare-fun e!4644294 () Bool)

(assert (=> b!7858154 (= e!4644294 tp_is_empty!52605)))

(declare-fun b!7858155 () Bool)

(declare-fun tp!2328139 () Bool)

(declare-fun tp!2328140 () Bool)

(assert (=> b!7858155 (= e!4644294 (and tp!2328139 tp!2328140))))

(assert (=> b!7857854 (= tp!2327996 e!4644294)))

(declare-fun b!7858156 () Bool)

(declare-fun tp!2328141 () Bool)

(assert (=> b!7858156 (= e!4644294 tp!2328141)))

(declare-fun b!7858157 () Bool)

(declare-fun tp!2328137 () Bool)

(declare-fun tp!2328138 () Bool)

(assert (=> b!7858157 (= e!4644294 (and tp!2328137 tp!2328138))))

(assert (= (and b!7857854 ((_ is ElementMatch!21103) (reg!21432 (regTwo!42718 r1!6227)))) b!7858154))

(assert (= (and b!7857854 ((_ is Concat!29948) (reg!21432 (regTwo!42718 r1!6227)))) b!7858155))

(assert (= (and b!7857854 ((_ is Star!21103) (reg!21432 (regTwo!42718 r1!6227)))) b!7858156))

(assert (= (and b!7857854 ((_ is Union!21103) (reg!21432 (regTwo!42718 r1!6227)))) b!7858157))

(declare-fun b!7858158 () Bool)

(declare-fun e!4644295 () Bool)

(assert (=> b!7858158 (= e!4644295 tp_is_empty!52605)))

(declare-fun b!7858159 () Bool)

(declare-fun tp!2328144 () Bool)

(declare-fun tp!2328145 () Bool)

(assert (=> b!7858159 (= e!4644295 (and tp!2328144 tp!2328145))))

(assert (=> b!7857826 (= tp!2327967 e!4644295)))

(declare-fun b!7858160 () Bool)

(declare-fun tp!2328146 () Bool)

(assert (=> b!7858160 (= e!4644295 tp!2328146)))

(declare-fun b!7858161 () Bool)

(declare-fun tp!2328142 () Bool)

(declare-fun tp!2328143 () Bool)

(assert (=> b!7858161 (= e!4644295 (and tp!2328142 tp!2328143))))

(assert (= (and b!7857826 ((_ is ElementMatch!21103) (regOne!42719 (regOne!42719 r2!6165)))) b!7858158))

(assert (= (and b!7857826 ((_ is Concat!29948) (regOne!42719 (regOne!42719 r2!6165)))) b!7858159))

(assert (= (and b!7857826 ((_ is Star!21103) (regOne!42719 (regOne!42719 r2!6165)))) b!7858160))

(assert (= (and b!7857826 ((_ is Union!21103) (regOne!42719 (regOne!42719 r2!6165)))) b!7858161))

(declare-fun b!7858162 () Bool)

(declare-fun e!4644296 () Bool)

(assert (=> b!7858162 (= e!4644296 tp_is_empty!52605)))

(declare-fun b!7858163 () Bool)

(declare-fun tp!2328149 () Bool)

(declare-fun tp!2328150 () Bool)

(assert (=> b!7858163 (= e!4644296 (and tp!2328149 tp!2328150))))

(assert (=> b!7857826 (= tp!2327968 e!4644296)))

(declare-fun b!7858164 () Bool)

(declare-fun tp!2328151 () Bool)

(assert (=> b!7858164 (= e!4644296 tp!2328151)))

(declare-fun b!7858165 () Bool)

(declare-fun tp!2328147 () Bool)

(declare-fun tp!2328148 () Bool)

(assert (=> b!7858165 (= e!4644296 (and tp!2328147 tp!2328148))))

(assert (= (and b!7857826 ((_ is ElementMatch!21103) (regTwo!42719 (regOne!42719 r2!6165)))) b!7858162))

(assert (= (and b!7857826 ((_ is Concat!29948) (regTwo!42719 (regOne!42719 r2!6165)))) b!7858163))

(assert (= (and b!7857826 ((_ is Star!21103) (regTwo!42719 (regOne!42719 r2!6165)))) b!7858164))

(assert (= (and b!7857826 ((_ is Union!21103) (regTwo!42719 (regOne!42719 r2!6165)))) b!7858165))

(declare-fun b!7858166 () Bool)

(declare-fun e!4644297 () Bool)

(assert (=> b!7858166 (= e!4644297 tp_is_empty!52605)))

(declare-fun b!7858167 () Bool)

(declare-fun tp!2328154 () Bool)

(declare-fun tp!2328155 () Bool)

(assert (=> b!7858167 (= e!4644297 (and tp!2328154 tp!2328155))))

(assert (=> b!7857832 (= tp!2327979 e!4644297)))

(declare-fun b!7858168 () Bool)

(declare-fun tp!2328156 () Bool)

(assert (=> b!7858168 (= e!4644297 tp!2328156)))

(declare-fun b!7858169 () Bool)

(declare-fun tp!2328152 () Bool)

(declare-fun tp!2328153 () Bool)

(assert (=> b!7858169 (= e!4644297 (and tp!2328152 tp!2328153))))

(assert (= (and b!7857832 ((_ is ElementMatch!21103) (regOne!42718 (regOne!42718 r2!6165)))) b!7858166))

(assert (= (and b!7857832 ((_ is Concat!29948) (regOne!42718 (regOne!42718 r2!6165)))) b!7858167))

(assert (= (and b!7857832 ((_ is Star!21103) (regOne!42718 (regOne!42718 r2!6165)))) b!7858168))

(assert (= (and b!7857832 ((_ is Union!21103) (regOne!42718 (regOne!42718 r2!6165)))) b!7858169))

(declare-fun b!7858170 () Bool)

(declare-fun e!4644298 () Bool)

(assert (=> b!7858170 (= e!4644298 tp_is_empty!52605)))

(declare-fun b!7858171 () Bool)

(declare-fun tp!2328159 () Bool)

(declare-fun tp!2328160 () Bool)

(assert (=> b!7858171 (= e!4644298 (and tp!2328159 tp!2328160))))

(assert (=> b!7857832 (= tp!2327980 e!4644298)))

(declare-fun b!7858172 () Bool)

(declare-fun tp!2328161 () Bool)

(assert (=> b!7858172 (= e!4644298 tp!2328161)))

(declare-fun b!7858173 () Bool)

(declare-fun tp!2328157 () Bool)

(declare-fun tp!2328158 () Bool)

(assert (=> b!7858173 (= e!4644298 (and tp!2328157 tp!2328158))))

(assert (= (and b!7857832 ((_ is ElementMatch!21103) (regTwo!42718 (regOne!42718 r2!6165)))) b!7858170))

(assert (= (and b!7857832 ((_ is Concat!29948) (regTwo!42718 (regOne!42718 r2!6165)))) b!7858171))

(assert (= (and b!7857832 ((_ is Star!21103) (regTwo!42718 (regOne!42718 r2!6165)))) b!7858172))

(assert (= (and b!7857832 ((_ is Union!21103) (regTwo!42718 (regOne!42718 r2!6165)))) b!7858173))

(declare-fun b!7858174 () Bool)

(declare-fun e!4644299 () Bool)

(assert (=> b!7858174 (= e!4644299 tp_is_empty!52605)))

(declare-fun b!7858175 () Bool)

(declare-fun tp!2328164 () Bool)

(declare-fun tp!2328165 () Bool)

(assert (=> b!7858175 (= e!4644299 (and tp!2328164 tp!2328165))))

(assert (=> b!7857853 (= tp!2327994 e!4644299)))

(declare-fun b!7858176 () Bool)

(declare-fun tp!2328166 () Bool)

(assert (=> b!7858176 (= e!4644299 tp!2328166)))

(declare-fun b!7858177 () Bool)

(declare-fun tp!2328162 () Bool)

(declare-fun tp!2328163 () Bool)

(assert (=> b!7858177 (= e!4644299 (and tp!2328162 tp!2328163))))

(assert (= (and b!7857853 ((_ is ElementMatch!21103) (regOne!42718 (regTwo!42718 r1!6227)))) b!7858174))

(assert (= (and b!7857853 ((_ is Concat!29948) (regOne!42718 (regTwo!42718 r1!6227)))) b!7858175))

(assert (= (and b!7857853 ((_ is Star!21103) (regOne!42718 (regTwo!42718 r1!6227)))) b!7858176))

(assert (= (and b!7857853 ((_ is Union!21103) (regOne!42718 (regTwo!42718 r1!6227)))) b!7858177))

(declare-fun b!7858178 () Bool)

(declare-fun e!4644300 () Bool)

(assert (=> b!7858178 (= e!4644300 tp_is_empty!52605)))

(declare-fun b!7858179 () Bool)

(declare-fun tp!2328169 () Bool)

(declare-fun tp!2328170 () Bool)

(assert (=> b!7858179 (= e!4644300 (and tp!2328169 tp!2328170))))

(assert (=> b!7857853 (= tp!2327995 e!4644300)))

(declare-fun b!7858180 () Bool)

(declare-fun tp!2328171 () Bool)

(assert (=> b!7858180 (= e!4644300 tp!2328171)))

(declare-fun b!7858181 () Bool)

(declare-fun tp!2328167 () Bool)

(declare-fun tp!2328168 () Bool)

(assert (=> b!7858181 (= e!4644300 (and tp!2328167 tp!2328168))))

(assert (= (and b!7857853 ((_ is ElementMatch!21103) (regTwo!42718 (regTwo!42718 r1!6227)))) b!7858178))

(assert (= (and b!7857853 ((_ is Concat!29948) (regTwo!42718 (regTwo!42718 r1!6227)))) b!7858179))

(assert (= (and b!7857853 ((_ is Star!21103) (regTwo!42718 (regTwo!42718 r1!6227)))) b!7858180))

(assert (= (and b!7857853 ((_ is Union!21103) (regTwo!42718 (regTwo!42718 r1!6227)))) b!7858181))

(declare-fun b!7858182 () Bool)

(declare-fun e!4644301 () Bool)

(assert (=> b!7858182 (= e!4644301 tp_is_empty!52605)))

(declare-fun b!7858183 () Bool)

(declare-fun tp!2328174 () Bool)

(declare-fun tp!2328175 () Bool)

(assert (=> b!7858183 (= e!4644301 (and tp!2328174 tp!2328175))))

(assert (=> b!7857825 (= tp!2327971 e!4644301)))

(declare-fun b!7858184 () Bool)

(declare-fun tp!2328176 () Bool)

(assert (=> b!7858184 (= e!4644301 tp!2328176)))

(declare-fun b!7858185 () Bool)

(declare-fun tp!2328172 () Bool)

(declare-fun tp!2328173 () Bool)

(assert (=> b!7858185 (= e!4644301 (and tp!2328172 tp!2328173))))

(assert (= (and b!7857825 ((_ is ElementMatch!21103) (reg!21432 (regOne!42719 r2!6165)))) b!7858182))

(assert (= (and b!7857825 ((_ is Concat!29948) (reg!21432 (regOne!42719 r2!6165)))) b!7858183))

(assert (= (and b!7857825 ((_ is Star!21103) (reg!21432 (regOne!42719 r2!6165)))) b!7858184))

(assert (= (and b!7857825 ((_ is Union!21103) (reg!21432 (regOne!42719 r2!6165)))) b!7858185))

(declare-fun b!7858186 () Bool)

(declare-fun e!4644302 () Bool)

(assert (=> b!7858186 (= e!4644302 tp_is_empty!52605)))

(declare-fun b!7858187 () Bool)

(declare-fun tp!2328179 () Bool)

(declare-fun tp!2328180 () Bool)

(assert (=> b!7858187 (= e!4644302 (and tp!2328179 tp!2328180))))

(assert (=> b!7857848 (= tp!2327987 e!4644302)))

(declare-fun b!7858188 () Bool)

(declare-fun tp!2328181 () Bool)

(assert (=> b!7858188 (= e!4644302 tp!2328181)))

(declare-fun b!7858189 () Bool)

(declare-fun tp!2328177 () Bool)

(declare-fun tp!2328178 () Bool)

(assert (=> b!7858189 (= e!4644302 (and tp!2328177 tp!2328178))))

(assert (= (and b!7857848 ((_ is ElementMatch!21103) (regOne!42719 (regOne!42718 r1!6227)))) b!7858186))

(assert (= (and b!7857848 ((_ is Concat!29948) (regOne!42719 (regOne!42718 r1!6227)))) b!7858187))

(assert (= (and b!7857848 ((_ is Star!21103) (regOne!42719 (regOne!42718 r1!6227)))) b!7858188))

(assert (= (and b!7857848 ((_ is Union!21103) (regOne!42719 (regOne!42718 r1!6227)))) b!7858189))

(declare-fun b!7858190 () Bool)

(declare-fun e!4644303 () Bool)

(assert (=> b!7858190 (= e!4644303 tp_is_empty!52605)))

(declare-fun b!7858191 () Bool)

(declare-fun tp!2328184 () Bool)

(declare-fun tp!2328185 () Bool)

(assert (=> b!7858191 (= e!4644303 (and tp!2328184 tp!2328185))))

(assert (=> b!7857848 (= tp!2327988 e!4644303)))

(declare-fun b!7858192 () Bool)

(declare-fun tp!2328186 () Bool)

(assert (=> b!7858192 (= e!4644303 tp!2328186)))

(declare-fun b!7858193 () Bool)

(declare-fun tp!2328182 () Bool)

(declare-fun tp!2328183 () Bool)

(assert (=> b!7858193 (= e!4644303 (and tp!2328182 tp!2328183))))

(assert (= (and b!7857848 ((_ is ElementMatch!21103) (regTwo!42719 (regOne!42718 r1!6227)))) b!7858190))

(assert (= (and b!7857848 ((_ is Concat!29948) (regTwo!42719 (regOne!42718 r1!6227)))) b!7858191))

(assert (= (and b!7857848 ((_ is Star!21103) (regTwo!42719 (regOne!42718 r1!6227)))) b!7858192))

(assert (= (and b!7857848 ((_ is Union!21103) (regTwo!42719 (regOne!42718 r1!6227)))) b!7858193))

(declare-fun b!7858194 () Bool)

(declare-fun e!4644304 () Bool)

(assert (=> b!7858194 (= e!4644304 tp_is_empty!52605)))

(declare-fun b!7858195 () Bool)

(declare-fun tp!2328189 () Bool)

(declare-fun tp!2328190 () Bool)

(assert (=> b!7858195 (= e!4644304 (and tp!2328189 tp!2328190))))

(assert (=> b!7857846 (= tp!2327991 e!4644304)))

(declare-fun b!7858196 () Bool)

(declare-fun tp!2328191 () Bool)

(assert (=> b!7858196 (= e!4644304 tp!2328191)))

(declare-fun b!7858197 () Bool)

(declare-fun tp!2328187 () Bool)

(declare-fun tp!2328188 () Bool)

(assert (=> b!7858197 (= e!4644304 (and tp!2328187 tp!2328188))))

(assert (= (and b!7857846 ((_ is ElementMatch!21103) (reg!21432 (regOne!42718 r1!6227)))) b!7858194))

(assert (= (and b!7857846 ((_ is Concat!29948) (reg!21432 (regOne!42718 r1!6227)))) b!7858195))

(assert (= (and b!7857846 ((_ is Star!21103) (reg!21432 (regOne!42718 r1!6227)))) b!7858196))

(assert (= (and b!7857846 ((_ is Union!21103) (reg!21432 (regOne!42718 r1!6227)))) b!7858197))

(declare-fun b!7858198 () Bool)

(declare-fun e!4644305 () Bool)

(assert (=> b!7858198 (= e!4644305 tp_is_empty!52605)))

(declare-fun b!7858199 () Bool)

(declare-fun tp!2328194 () Bool)

(declare-fun tp!2328195 () Bool)

(assert (=> b!7858199 (= e!4644305 (and tp!2328194 tp!2328195))))

(assert (=> b!7857844 (= tp!2327989 e!4644305)))

(declare-fun b!7858200 () Bool)

(declare-fun tp!2328196 () Bool)

(assert (=> b!7858200 (= e!4644305 tp!2328196)))

(declare-fun b!7858201 () Bool)

(declare-fun tp!2328192 () Bool)

(declare-fun tp!2328193 () Bool)

(assert (=> b!7858201 (= e!4644305 (and tp!2328192 tp!2328193))))

(assert (= (and b!7857844 ((_ is ElementMatch!21103) (regOne!42718 (regOne!42718 r1!6227)))) b!7858198))

(assert (= (and b!7857844 ((_ is Concat!29948) (regOne!42718 (regOne!42718 r1!6227)))) b!7858199))

(assert (= (and b!7857844 ((_ is Star!21103) (regOne!42718 (regOne!42718 r1!6227)))) b!7858200))

(assert (= (and b!7857844 ((_ is Union!21103) (regOne!42718 (regOne!42718 r1!6227)))) b!7858201))

(declare-fun b!7858202 () Bool)

(declare-fun e!4644306 () Bool)

(assert (=> b!7858202 (= e!4644306 tp_is_empty!52605)))

(declare-fun b!7858203 () Bool)

(declare-fun tp!2328199 () Bool)

(declare-fun tp!2328200 () Bool)

(assert (=> b!7858203 (= e!4644306 (and tp!2328199 tp!2328200))))

(assert (=> b!7857844 (= tp!2327990 e!4644306)))

(declare-fun b!7858204 () Bool)

(declare-fun tp!2328201 () Bool)

(assert (=> b!7858204 (= e!4644306 tp!2328201)))

(declare-fun b!7858205 () Bool)

(declare-fun tp!2328197 () Bool)

(declare-fun tp!2328198 () Bool)

(assert (=> b!7858205 (= e!4644306 (and tp!2328197 tp!2328198))))

(assert (= (and b!7857844 ((_ is ElementMatch!21103) (regTwo!42718 (regOne!42718 r1!6227)))) b!7858202))

(assert (= (and b!7857844 ((_ is Concat!29948) (regTwo!42718 (regOne!42718 r1!6227)))) b!7858203))

(assert (= (and b!7857844 ((_ is Star!21103) (regTwo!42718 (regOne!42718 r1!6227)))) b!7858204))

(assert (= (and b!7857844 ((_ is Union!21103) (regTwo!42718 (regOne!42718 r1!6227)))) b!7858205))

(declare-fun b!7858206 () Bool)

(declare-fun e!4644307 () Bool)

(declare-fun tp!2328202 () Bool)

(assert (=> b!7858206 (= e!4644307 (and tp_is_empty!52605 tp!2328202))))

(assert (=> b!7857856 (= tp!2327997 e!4644307)))

(assert (= (and b!7857856 ((_ is Cons!73838) (t!388697 (t!388697 s2!3706)))) b!7858206))

(declare-fun b!7858207 () Bool)

(declare-fun e!4644308 () Bool)

(assert (=> b!7858207 (= e!4644308 tp_is_empty!52605)))

(declare-fun b!7858208 () Bool)

(declare-fun tp!2328205 () Bool)

(declare-fun tp!2328206 () Bool)

(assert (=> b!7858208 (= e!4644308 (and tp!2328205 tp!2328206))))

(assert (=> b!7857860 (= tp!2327998 e!4644308)))

(declare-fun b!7858209 () Bool)

(declare-fun tp!2328207 () Bool)

(assert (=> b!7858209 (= e!4644308 tp!2328207)))

(declare-fun b!7858210 () Bool)

(declare-fun tp!2328203 () Bool)

(declare-fun tp!2328204 () Bool)

(assert (=> b!7858210 (= e!4644308 (and tp!2328203 tp!2328204))))

(assert (= (and b!7857860 ((_ is ElementMatch!21103) (regOne!42719 (reg!21432 r2!6165)))) b!7858207))

(assert (= (and b!7857860 ((_ is Concat!29948) (regOne!42719 (reg!21432 r2!6165)))) b!7858208))

(assert (= (and b!7857860 ((_ is Star!21103) (regOne!42719 (reg!21432 r2!6165)))) b!7858209))

(assert (= (and b!7857860 ((_ is Union!21103) (regOne!42719 (reg!21432 r2!6165)))) b!7858210))

(declare-fun b!7858211 () Bool)

(declare-fun e!4644309 () Bool)

(assert (=> b!7858211 (= e!4644309 tp_is_empty!52605)))

(declare-fun b!7858212 () Bool)

(declare-fun tp!2328210 () Bool)

(declare-fun tp!2328211 () Bool)

(assert (=> b!7858212 (= e!4644309 (and tp!2328210 tp!2328211))))

(assert (=> b!7857860 (= tp!2327999 e!4644309)))

(declare-fun b!7858213 () Bool)

(declare-fun tp!2328212 () Bool)

(assert (=> b!7858213 (= e!4644309 tp!2328212)))

(declare-fun b!7858214 () Bool)

(declare-fun tp!2328208 () Bool)

(declare-fun tp!2328209 () Bool)

(assert (=> b!7858214 (= e!4644309 (and tp!2328208 tp!2328209))))

(assert (= (and b!7857860 ((_ is ElementMatch!21103) (regTwo!42719 (reg!21432 r2!6165)))) b!7858211))

(assert (= (and b!7857860 ((_ is Concat!29948) (regTwo!42719 (reg!21432 r2!6165)))) b!7858212))

(assert (= (and b!7857860 ((_ is Star!21103) (regTwo!42719 (reg!21432 r2!6165)))) b!7858213))

(assert (= (and b!7857860 ((_ is Union!21103) (regTwo!42719 (reg!21432 r2!6165)))) b!7858214))

(declare-fun b!7858215 () Bool)

(declare-fun e!4644310 () Bool)

(assert (=> b!7858215 (= e!4644310 tp_is_empty!52605)))

(declare-fun b!7858216 () Bool)

(declare-fun tp!2328215 () Bool)

(declare-fun tp!2328216 () Bool)

(assert (=> b!7858216 (= e!4644310 (and tp!2328215 tp!2328216))))

(assert (=> b!7857817 (= tp!2327959 e!4644310)))

(declare-fun b!7858217 () Bool)

(declare-fun tp!2328217 () Bool)

(assert (=> b!7858217 (= e!4644310 tp!2328217)))

(declare-fun b!7858218 () Bool)

(declare-fun tp!2328213 () Bool)

(declare-fun tp!2328214 () Bool)

(assert (=> b!7858218 (= e!4644310 (and tp!2328213 tp!2328214))))

(assert (= (and b!7857817 ((_ is ElementMatch!21103) (regOne!42719 (reg!21432 r1!6227)))) b!7858215))

(assert (= (and b!7857817 ((_ is Concat!29948) (regOne!42719 (reg!21432 r1!6227)))) b!7858216))

(assert (= (and b!7857817 ((_ is Star!21103) (regOne!42719 (reg!21432 r1!6227)))) b!7858217))

(assert (= (and b!7857817 ((_ is Union!21103) (regOne!42719 (reg!21432 r1!6227)))) b!7858218))

(declare-fun b!7858219 () Bool)

(declare-fun e!4644311 () Bool)

(assert (=> b!7858219 (= e!4644311 tp_is_empty!52605)))

(declare-fun b!7858220 () Bool)

(declare-fun tp!2328220 () Bool)

(declare-fun tp!2328221 () Bool)

(assert (=> b!7858220 (= e!4644311 (and tp!2328220 tp!2328221))))

(assert (=> b!7857817 (= tp!2327960 e!4644311)))

(declare-fun b!7858221 () Bool)

(declare-fun tp!2328222 () Bool)

(assert (=> b!7858221 (= e!4644311 tp!2328222)))

(declare-fun b!7858222 () Bool)

(declare-fun tp!2328218 () Bool)

(declare-fun tp!2328219 () Bool)

(assert (=> b!7858222 (= e!4644311 (and tp!2328218 tp!2328219))))

(assert (= (and b!7857817 ((_ is ElementMatch!21103) (regTwo!42719 (reg!21432 r1!6227)))) b!7858219))

(assert (= (and b!7857817 ((_ is Concat!29948) (regTwo!42719 (reg!21432 r1!6227)))) b!7858220))

(assert (= (and b!7857817 ((_ is Star!21103) (regTwo!42719 (reg!21432 r1!6227)))) b!7858221))

(assert (= (and b!7857817 ((_ is Union!21103) (regTwo!42719 (reg!21432 r1!6227)))) b!7858222))

(declare-fun b!7858223 () Bool)

(declare-fun e!4644312 () Bool)

(assert (=> b!7858223 (= e!4644312 tp_is_empty!52605)))

(declare-fun b!7858224 () Bool)

(declare-fun tp!2328225 () Bool)

(declare-fun tp!2328226 () Bool)

(assert (=> b!7858224 (= e!4644312 (and tp!2328225 tp!2328226))))

(assert (=> b!7857859 (= tp!2328002 e!4644312)))

(declare-fun b!7858225 () Bool)

(declare-fun tp!2328227 () Bool)

(assert (=> b!7858225 (= e!4644312 tp!2328227)))

(declare-fun b!7858226 () Bool)

(declare-fun tp!2328223 () Bool)

(declare-fun tp!2328224 () Bool)

(assert (=> b!7858226 (= e!4644312 (and tp!2328223 tp!2328224))))

(assert (= (and b!7857859 ((_ is ElementMatch!21103) (reg!21432 (reg!21432 r2!6165)))) b!7858223))

(assert (= (and b!7857859 ((_ is Concat!29948) (reg!21432 (reg!21432 r2!6165)))) b!7858224))

(assert (= (and b!7857859 ((_ is Star!21103) (reg!21432 (reg!21432 r2!6165)))) b!7858225))

(assert (= (and b!7857859 ((_ is Union!21103) (reg!21432 (reg!21432 r2!6165)))) b!7858226))

(declare-fun b!7858227 () Bool)

(declare-fun e!4644313 () Bool)

(assert (=> b!7858227 (= e!4644313 tp_is_empty!52605)))

(declare-fun b!7858228 () Bool)

(declare-fun tp!2328230 () Bool)

(declare-fun tp!2328231 () Bool)

(assert (=> b!7858228 (= e!4644313 (and tp!2328230 tp!2328231))))

(assert (=> b!7857868 (= tp!2328008 e!4644313)))

(declare-fun b!7858229 () Bool)

(declare-fun tp!2328232 () Bool)

(assert (=> b!7858229 (= e!4644313 tp!2328232)))

(declare-fun b!7858230 () Bool)

(declare-fun tp!2328228 () Bool)

(declare-fun tp!2328229 () Bool)

(assert (=> b!7858230 (= e!4644313 (and tp!2328228 tp!2328229))))

(assert (= (and b!7857868 ((_ is ElementMatch!21103) (regOne!42719 (regTwo!42719 r1!6227)))) b!7858227))

(assert (= (and b!7857868 ((_ is Concat!29948) (regOne!42719 (regTwo!42719 r1!6227)))) b!7858228))

(assert (= (and b!7857868 ((_ is Star!21103) (regOne!42719 (regTwo!42719 r1!6227)))) b!7858229))

(assert (= (and b!7857868 ((_ is Union!21103) (regOne!42719 (regTwo!42719 r1!6227)))) b!7858230))

(declare-fun b!7858231 () Bool)

(declare-fun e!4644314 () Bool)

(assert (=> b!7858231 (= e!4644314 tp_is_empty!52605)))

(declare-fun b!7858232 () Bool)

(declare-fun tp!2328235 () Bool)

(declare-fun tp!2328236 () Bool)

(assert (=> b!7858232 (= e!4644314 (and tp!2328235 tp!2328236))))

(assert (=> b!7857868 (= tp!2328009 e!4644314)))

(declare-fun b!7858233 () Bool)

(declare-fun tp!2328237 () Bool)

(assert (=> b!7858233 (= e!4644314 tp!2328237)))

(declare-fun b!7858234 () Bool)

(declare-fun tp!2328233 () Bool)

(declare-fun tp!2328234 () Bool)

(assert (=> b!7858234 (= e!4644314 (and tp!2328233 tp!2328234))))

(assert (= (and b!7857868 ((_ is ElementMatch!21103) (regTwo!42719 (regTwo!42719 r1!6227)))) b!7858231))

(assert (= (and b!7857868 ((_ is Concat!29948) (regTwo!42719 (regTwo!42719 r1!6227)))) b!7858232))

(assert (= (and b!7857868 ((_ is Star!21103) (regTwo!42719 (regTwo!42719 r1!6227)))) b!7858233))

(assert (= (and b!7857868 ((_ is Union!21103) (regTwo!42719 (regTwo!42719 r1!6227)))) b!7858234))

(declare-fun b!7858235 () Bool)

(declare-fun e!4644315 () Bool)

(assert (=> b!7858235 (= e!4644315 tp_is_empty!52605)))

(declare-fun b!7858236 () Bool)

(declare-fun tp!2328240 () Bool)

(declare-fun tp!2328241 () Bool)

(assert (=> b!7858236 (= e!4644315 (and tp!2328240 tp!2328241))))

(assert (=> b!7857830 (= tp!2327972 e!4644315)))

(declare-fun b!7858237 () Bool)

(declare-fun tp!2328242 () Bool)

(assert (=> b!7858237 (= e!4644315 tp!2328242)))

(declare-fun b!7858238 () Bool)

(declare-fun tp!2328238 () Bool)

(declare-fun tp!2328239 () Bool)

(assert (=> b!7858238 (= e!4644315 (and tp!2328238 tp!2328239))))

(assert (= (and b!7857830 ((_ is ElementMatch!21103) (regOne!42719 (regTwo!42719 r2!6165)))) b!7858235))

(assert (= (and b!7857830 ((_ is Concat!29948) (regOne!42719 (regTwo!42719 r2!6165)))) b!7858236))

(assert (= (and b!7857830 ((_ is Star!21103) (regOne!42719 (regTwo!42719 r2!6165)))) b!7858237))

(assert (= (and b!7857830 ((_ is Union!21103) (regOne!42719 (regTwo!42719 r2!6165)))) b!7858238))

(declare-fun b!7858239 () Bool)

(declare-fun e!4644316 () Bool)

(assert (=> b!7858239 (= e!4644316 tp_is_empty!52605)))

(declare-fun b!7858240 () Bool)

(declare-fun tp!2328245 () Bool)

(declare-fun tp!2328246 () Bool)

(assert (=> b!7858240 (= e!4644316 (and tp!2328245 tp!2328246))))

(assert (=> b!7857830 (= tp!2327973 e!4644316)))

(declare-fun b!7858241 () Bool)

(declare-fun tp!2328247 () Bool)

(assert (=> b!7858241 (= e!4644316 tp!2328247)))

(declare-fun b!7858242 () Bool)

(declare-fun tp!2328243 () Bool)

(declare-fun tp!2328244 () Bool)

(assert (=> b!7858242 (= e!4644316 (and tp!2328243 tp!2328244))))

(assert (= (and b!7857830 ((_ is ElementMatch!21103) (regTwo!42719 (regTwo!42719 r2!6165)))) b!7858239))

(assert (= (and b!7857830 ((_ is Concat!29948) (regTwo!42719 (regTwo!42719 r2!6165)))) b!7858240))

(assert (= (and b!7857830 ((_ is Star!21103) (regTwo!42719 (regTwo!42719 r2!6165)))) b!7858241))

(assert (= (and b!7857830 ((_ is Union!21103) (regTwo!42719 (regTwo!42719 r2!6165)))) b!7858242))

(declare-fun b!7858243 () Bool)

(declare-fun e!4644317 () Bool)

(assert (=> b!7858243 (= e!4644317 tp_is_empty!52605)))

(declare-fun b!7858244 () Bool)

(declare-fun tp!2328250 () Bool)

(declare-fun tp!2328251 () Bool)

(assert (=> b!7858244 (= e!4644317 (and tp!2328250 tp!2328251))))

(assert (=> b!7857816 (= tp!2327963 e!4644317)))

(declare-fun b!7858245 () Bool)

(declare-fun tp!2328252 () Bool)

(assert (=> b!7858245 (= e!4644317 tp!2328252)))

(declare-fun b!7858246 () Bool)

(declare-fun tp!2328248 () Bool)

(declare-fun tp!2328249 () Bool)

(assert (=> b!7858246 (= e!4644317 (and tp!2328248 tp!2328249))))

(assert (= (and b!7857816 ((_ is ElementMatch!21103) (reg!21432 (reg!21432 r1!6227)))) b!7858243))

(assert (= (and b!7857816 ((_ is Concat!29948) (reg!21432 (reg!21432 r1!6227)))) b!7858244))

(assert (= (and b!7857816 ((_ is Star!21103) (reg!21432 (reg!21432 r1!6227)))) b!7858245))

(assert (= (and b!7857816 ((_ is Union!21103) (reg!21432 (reg!21432 r1!6227)))) b!7858246))

(declare-fun b!7858247 () Bool)

(declare-fun e!4644318 () Bool)

(assert (=> b!7858247 (= e!4644318 tp_is_empty!52605)))

(declare-fun b!7858248 () Bool)

(declare-fun tp!2328255 () Bool)

(declare-fun tp!2328256 () Bool)

(assert (=> b!7858248 (= e!4644318 (and tp!2328255 tp!2328256))))

(assert (=> b!7857858 (= tp!2328000 e!4644318)))

(declare-fun b!7858249 () Bool)

(declare-fun tp!2328257 () Bool)

(assert (=> b!7858249 (= e!4644318 tp!2328257)))

(declare-fun b!7858250 () Bool)

(declare-fun tp!2328253 () Bool)

(declare-fun tp!2328254 () Bool)

(assert (=> b!7858250 (= e!4644318 (and tp!2328253 tp!2328254))))

(assert (= (and b!7857858 ((_ is ElementMatch!21103) (regOne!42718 (reg!21432 r2!6165)))) b!7858247))

(assert (= (and b!7857858 ((_ is Concat!29948) (regOne!42718 (reg!21432 r2!6165)))) b!7858248))

(assert (= (and b!7857858 ((_ is Star!21103) (regOne!42718 (reg!21432 r2!6165)))) b!7858249))

(assert (= (and b!7857858 ((_ is Union!21103) (regOne!42718 (reg!21432 r2!6165)))) b!7858250))

(declare-fun b!7858251 () Bool)

(declare-fun e!4644319 () Bool)

(assert (=> b!7858251 (= e!4644319 tp_is_empty!52605)))

(declare-fun b!7858252 () Bool)

(declare-fun tp!2328260 () Bool)

(declare-fun tp!2328261 () Bool)

(assert (=> b!7858252 (= e!4644319 (and tp!2328260 tp!2328261))))

(assert (=> b!7857858 (= tp!2328001 e!4644319)))

(declare-fun b!7858253 () Bool)

(declare-fun tp!2328262 () Bool)

(assert (=> b!7858253 (= e!4644319 tp!2328262)))

(declare-fun b!7858254 () Bool)

(declare-fun tp!2328258 () Bool)

(declare-fun tp!2328259 () Bool)

(assert (=> b!7858254 (= e!4644319 (and tp!2328258 tp!2328259))))

(assert (= (and b!7857858 ((_ is ElementMatch!21103) (regTwo!42718 (reg!21432 r2!6165)))) b!7858251))

(assert (= (and b!7857858 ((_ is Concat!29948) (regTwo!42718 (reg!21432 r2!6165)))) b!7858252))

(assert (= (and b!7857858 ((_ is Star!21103) (regTwo!42718 (reg!21432 r2!6165)))) b!7858253))

(assert (= (and b!7857858 ((_ is Union!21103) (regTwo!42718 (reg!21432 r2!6165)))) b!7858254))

(declare-fun b!7858255 () Bool)

(declare-fun e!4644320 () Bool)

(assert (=> b!7858255 (= e!4644320 tp_is_empty!52605)))

(declare-fun b!7858256 () Bool)

(declare-fun tp!2328265 () Bool)

(declare-fun tp!2328266 () Bool)

(assert (=> b!7858256 (= e!4644320 (and tp!2328265 tp!2328266))))

(assert (=> b!7857867 (= tp!2328012 e!4644320)))

(declare-fun b!7858257 () Bool)

(declare-fun tp!2328267 () Bool)

(assert (=> b!7858257 (= e!4644320 tp!2328267)))

(declare-fun b!7858258 () Bool)

(declare-fun tp!2328263 () Bool)

(declare-fun tp!2328264 () Bool)

(assert (=> b!7858258 (= e!4644320 (and tp!2328263 tp!2328264))))

(assert (= (and b!7857867 ((_ is ElementMatch!21103) (reg!21432 (regTwo!42719 r1!6227)))) b!7858255))

(assert (= (and b!7857867 ((_ is Concat!29948) (reg!21432 (regTwo!42719 r1!6227)))) b!7858256))

(assert (= (and b!7857867 ((_ is Star!21103) (reg!21432 (regTwo!42719 r1!6227)))) b!7858257))

(assert (= (and b!7857867 ((_ is Union!21103) (reg!21432 (regTwo!42719 r1!6227)))) b!7858258))

(declare-fun b!7858259 () Bool)

(declare-fun e!4644321 () Bool)

(assert (=> b!7858259 (= e!4644321 tp_is_empty!52605)))

(declare-fun b!7858260 () Bool)

(declare-fun tp!2328270 () Bool)

(declare-fun tp!2328271 () Bool)

(assert (=> b!7858260 (= e!4644321 (and tp!2328270 tp!2328271))))

(assert (=> b!7857829 (= tp!2327976 e!4644321)))

(declare-fun b!7858261 () Bool)

(declare-fun tp!2328272 () Bool)

(assert (=> b!7858261 (= e!4644321 tp!2328272)))

(declare-fun b!7858262 () Bool)

(declare-fun tp!2328268 () Bool)

(declare-fun tp!2328269 () Bool)

(assert (=> b!7858262 (= e!4644321 (and tp!2328268 tp!2328269))))

(assert (= (and b!7857829 ((_ is ElementMatch!21103) (reg!21432 (regTwo!42719 r2!6165)))) b!7858259))

(assert (= (and b!7857829 ((_ is Concat!29948) (reg!21432 (regTwo!42719 r2!6165)))) b!7858260))

(assert (= (and b!7857829 ((_ is Star!21103) (reg!21432 (regTwo!42719 r2!6165)))) b!7858261))

(assert (= (and b!7857829 ((_ is Union!21103) (reg!21432 (regTwo!42719 r2!6165)))) b!7858262))

(declare-fun b!7858263 () Bool)

(declare-fun e!4644322 () Bool)

(assert (=> b!7858263 (= e!4644322 tp_is_empty!52605)))

(declare-fun b!7858264 () Bool)

(declare-fun tp!2328275 () Bool)

(declare-fun tp!2328276 () Bool)

(assert (=> b!7858264 (= e!4644322 (and tp!2328275 tp!2328276))))

(assert (=> b!7857838 (= tp!2327982 e!4644322)))

(declare-fun b!7858265 () Bool)

(declare-fun tp!2328277 () Bool)

(assert (=> b!7858265 (= e!4644322 tp!2328277)))

(declare-fun b!7858266 () Bool)

(declare-fun tp!2328273 () Bool)

(declare-fun tp!2328274 () Bool)

(assert (=> b!7858266 (= e!4644322 (and tp!2328273 tp!2328274))))

(assert (= (and b!7857838 ((_ is ElementMatch!21103) (regOne!42719 (regTwo!42718 r2!6165)))) b!7858263))

(assert (= (and b!7857838 ((_ is Concat!29948) (regOne!42719 (regTwo!42718 r2!6165)))) b!7858264))

(assert (= (and b!7857838 ((_ is Star!21103) (regOne!42719 (regTwo!42718 r2!6165)))) b!7858265))

(assert (= (and b!7857838 ((_ is Union!21103) (regOne!42719 (regTwo!42718 r2!6165)))) b!7858266))

(declare-fun b!7858267 () Bool)

(declare-fun e!4644323 () Bool)

(assert (=> b!7858267 (= e!4644323 tp_is_empty!52605)))

(declare-fun b!7858268 () Bool)

(declare-fun tp!2328280 () Bool)

(declare-fun tp!2328281 () Bool)

(assert (=> b!7858268 (= e!4644323 (and tp!2328280 tp!2328281))))

(assert (=> b!7857838 (= tp!2327983 e!4644323)))

(declare-fun b!7858269 () Bool)

(declare-fun tp!2328282 () Bool)

(assert (=> b!7858269 (= e!4644323 tp!2328282)))

(declare-fun b!7858270 () Bool)

(declare-fun tp!2328278 () Bool)

(declare-fun tp!2328279 () Bool)

(assert (=> b!7858270 (= e!4644323 (and tp!2328278 tp!2328279))))

(assert (= (and b!7857838 ((_ is ElementMatch!21103) (regTwo!42719 (regTwo!42718 r2!6165)))) b!7858267))

(assert (= (and b!7857838 ((_ is Concat!29948) (regTwo!42719 (regTwo!42718 r2!6165)))) b!7858268))

(assert (= (and b!7857838 ((_ is Star!21103) (regTwo!42719 (regTwo!42718 r2!6165)))) b!7858269))

(assert (= (and b!7857838 ((_ is Union!21103) (regTwo!42719 (regTwo!42718 r2!6165)))) b!7858270))

(declare-fun b!7858271 () Bool)

(declare-fun e!4644324 () Bool)

(assert (=> b!7858271 (= e!4644324 tp_is_empty!52605)))

(declare-fun b!7858272 () Bool)

(declare-fun tp!2328285 () Bool)

(declare-fun tp!2328286 () Bool)

(assert (=> b!7858272 (= e!4644324 (and tp!2328285 tp!2328286))))

(assert (=> b!7857815 (= tp!2327961 e!4644324)))

(declare-fun b!7858273 () Bool)

(declare-fun tp!2328287 () Bool)

(assert (=> b!7858273 (= e!4644324 tp!2328287)))

(declare-fun b!7858274 () Bool)

(declare-fun tp!2328283 () Bool)

(declare-fun tp!2328284 () Bool)

(assert (=> b!7858274 (= e!4644324 (and tp!2328283 tp!2328284))))

(assert (= (and b!7857815 ((_ is ElementMatch!21103) (regOne!42718 (reg!21432 r1!6227)))) b!7858271))

(assert (= (and b!7857815 ((_ is Concat!29948) (regOne!42718 (reg!21432 r1!6227)))) b!7858272))

(assert (= (and b!7857815 ((_ is Star!21103) (regOne!42718 (reg!21432 r1!6227)))) b!7858273))

(assert (= (and b!7857815 ((_ is Union!21103) (regOne!42718 (reg!21432 r1!6227)))) b!7858274))

(declare-fun b!7858275 () Bool)

(declare-fun e!4644325 () Bool)

(assert (=> b!7858275 (= e!4644325 tp_is_empty!52605)))

(declare-fun b!7858276 () Bool)

(declare-fun tp!2328290 () Bool)

(declare-fun tp!2328291 () Bool)

(assert (=> b!7858276 (= e!4644325 (and tp!2328290 tp!2328291))))

(assert (=> b!7857815 (= tp!2327962 e!4644325)))

(declare-fun b!7858277 () Bool)

(declare-fun tp!2328292 () Bool)

(assert (=> b!7858277 (= e!4644325 tp!2328292)))

(declare-fun b!7858278 () Bool)

(declare-fun tp!2328288 () Bool)

(declare-fun tp!2328289 () Bool)

(assert (=> b!7858278 (= e!4644325 (and tp!2328288 tp!2328289))))

(assert (= (and b!7857815 ((_ is ElementMatch!21103) (regTwo!42718 (reg!21432 r1!6227)))) b!7858275))

(assert (= (and b!7857815 ((_ is Concat!29948) (regTwo!42718 (reg!21432 r1!6227)))) b!7858276))

(assert (= (and b!7857815 ((_ is Star!21103) (regTwo!42718 (reg!21432 r1!6227)))) b!7858277))

(assert (= (and b!7857815 ((_ is Union!21103) (regTwo!42718 (reg!21432 r1!6227)))) b!7858278))

(declare-fun b!7858279 () Bool)

(declare-fun e!4644326 () Bool)

(declare-fun tp!2328293 () Bool)

(assert (=> b!7858279 (= e!4644326 (and tp_is_empty!52605 tp!2328293))))

(assert (=> b!7857822 (= tp!2327966 e!4644326)))

(assert (= (and b!7857822 ((_ is Cons!73838) (t!388697 (t!388697 s1!4084)))) b!7858279))

(declare-fun b!7858280 () Bool)

(declare-fun e!4644327 () Bool)

(assert (=> b!7858280 (= e!4644327 tp_is_empty!52605)))

(declare-fun b!7858281 () Bool)

(declare-fun tp!2328296 () Bool)

(declare-fun tp!2328297 () Bool)

(assert (=> b!7858281 (= e!4644327 (and tp!2328296 tp!2328297))))

(assert (=> b!7857866 (= tp!2328010 e!4644327)))

(declare-fun b!7858282 () Bool)

(declare-fun tp!2328298 () Bool)

(assert (=> b!7858282 (= e!4644327 tp!2328298)))

(declare-fun b!7858283 () Bool)

(declare-fun tp!2328294 () Bool)

(declare-fun tp!2328295 () Bool)

(assert (=> b!7858283 (= e!4644327 (and tp!2328294 tp!2328295))))

(assert (= (and b!7857866 ((_ is ElementMatch!21103) (regOne!42718 (regTwo!42719 r1!6227)))) b!7858280))

(assert (= (and b!7857866 ((_ is Concat!29948) (regOne!42718 (regTwo!42719 r1!6227)))) b!7858281))

(assert (= (and b!7857866 ((_ is Star!21103) (regOne!42718 (regTwo!42719 r1!6227)))) b!7858282))

(assert (= (and b!7857866 ((_ is Union!21103) (regOne!42718 (regTwo!42719 r1!6227)))) b!7858283))

(declare-fun b!7858284 () Bool)

(declare-fun e!4644328 () Bool)

(assert (=> b!7858284 (= e!4644328 tp_is_empty!52605)))

(declare-fun b!7858285 () Bool)

(declare-fun tp!2328301 () Bool)

(declare-fun tp!2328302 () Bool)

(assert (=> b!7858285 (= e!4644328 (and tp!2328301 tp!2328302))))

(assert (=> b!7857866 (= tp!2328011 e!4644328)))

(declare-fun b!7858286 () Bool)

(declare-fun tp!2328303 () Bool)

(assert (=> b!7858286 (= e!4644328 tp!2328303)))

(declare-fun b!7858287 () Bool)

(declare-fun tp!2328299 () Bool)

(declare-fun tp!2328300 () Bool)

(assert (=> b!7858287 (= e!4644328 (and tp!2328299 tp!2328300))))

(assert (= (and b!7857866 ((_ is ElementMatch!21103) (regTwo!42718 (regTwo!42719 r1!6227)))) b!7858284))

(assert (= (and b!7857866 ((_ is Concat!29948) (regTwo!42718 (regTwo!42719 r1!6227)))) b!7858285))

(assert (= (and b!7857866 ((_ is Star!21103) (regTwo!42718 (regTwo!42719 r1!6227)))) b!7858286))

(assert (= (and b!7857866 ((_ is Union!21103) (regTwo!42718 (regTwo!42719 r1!6227)))) b!7858287))

(declare-fun b!7858288 () Bool)

(declare-fun e!4644329 () Bool)

(assert (=> b!7858288 (= e!4644329 tp_is_empty!52605)))

(declare-fun b!7858289 () Bool)

(declare-fun tp!2328306 () Bool)

(declare-fun tp!2328307 () Bool)

(assert (=> b!7858289 (= e!4644329 (and tp!2328306 tp!2328307))))

(assert (=> b!7857828 (= tp!2327974 e!4644329)))

(declare-fun b!7858290 () Bool)

(declare-fun tp!2328308 () Bool)

(assert (=> b!7858290 (= e!4644329 tp!2328308)))

(declare-fun b!7858291 () Bool)

(declare-fun tp!2328304 () Bool)

(declare-fun tp!2328305 () Bool)

(assert (=> b!7858291 (= e!4644329 (and tp!2328304 tp!2328305))))

(assert (= (and b!7857828 ((_ is ElementMatch!21103) (regOne!42718 (regTwo!42719 r2!6165)))) b!7858288))

(assert (= (and b!7857828 ((_ is Concat!29948) (regOne!42718 (regTwo!42719 r2!6165)))) b!7858289))

(assert (= (and b!7857828 ((_ is Star!21103) (regOne!42718 (regTwo!42719 r2!6165)))) b!7858290))

(assert (= (and b!7857828 ((_ is Union!21103) (regOne!42718 (regTwo!42719 r2!6165)))) b!7858291))

(declare-fun b!7858292 () Bool)

(declare-fun e!4644330 () Bool)

(assert (=> b!7858292 (= e!4644330 tp_is_empty!52605)))

(declare-fun b!7858293 () Bool)

(declare-fun tp!2328311 () Bool)

(declare-fun tp!2328312 () Bool)

(assert (=> b!7858293 (= e!4644330 (and tp!2328311 tp!2328312))))

(assert (=> b!7857828 (= tp!2327975 e!4644330)))

(declare-fun b!7858294 () Bool)

(declare-fun tp!2328313 () Bool)

(assert (=> b!7858294 (= e!4644330 tp!2328313)))

(declare-fun b!7858295 () Bool)

(declare-fun tp!2328309 () Bool)

(declare-fun tp!2328310 () Bool)

(assert (=> b!7858295 (= e!4644330 (and tp!2328309 tp!2328310))))

(assert (= (and b!7857828 ((_ is ElementMatch!21103) (regTwo!42718 (regTwo!42719 r2!6165)))) b!7858292))

(assert (= (and b!7857828 ((_ is Concat!29948) (regTwo!42718 (regTwo!42719 r2!6165)))) b!7858293))

(assert (= (and b!7857828 ((_ is Star!21103) (regTwo!42718 (regTwo!42719 r2!6165)))) b!7858294))

(assert (= (and b!7857828 ((_ is Union!21103) (regTwo!42718 (regTwo!42719 r2!6165)))) b!7858295))

(declare-fun b!7858296 () Bool)

(declare-fun e!4644331 () Bool)

(assert (=> b!7858296 (= e!4644331 tp_is_empty!52605)))

(declare-fun b!7858297 () Bool)

(declare-fun tp!2328316 () Bool)

(declare-fun tp!2328317 () Bool)

(assert (=> b!7858297 (= e!4644331 (and tp!2328316 tp!2328317))))

(assert (=> b!7857837 (= tp!2327986 e!4644331)))

(declare-fun b!7858298 () Bool)

(declare-fun tp!2328318 () Bool)

(assert (=> b!7858298 (= e!4644331 tp!2328318)))

(declare-fun b!7858299 () Bool)

(declare-fun tp!2328314 () Bool)

(declare-fun tp!2328315 () Bool)

(assert (=> b!7858299 (= e!4644331 (and tp!2328314 tp!2328315))))

(assert (= (and b!7857837 ((_ is ElementMatch!21103) (reg!21432 (regTwo!42718 r2!6165)))) b!7858296))

(assert (= (and b!7857837 ((_ is Concat!29948) (reg!21432 (regTwo!42718 r2!6165)))) b!7858297))

(assert (= (and b!7857837 ((_ is Star!21103) (reg!21432 (regTwo!42718 r2!6165)))) b!7858298))

(assert (= (and b!7857837 ((_ is Union!21103) (reg!21432 (regTwo!42718 r2!6165)))) b!7858299))

(declare-fun b!7858300 () Bool)

(declare-fun e!4644332 () Bool)

(assert (=> b!7858300 (= e!4644332 tp_is_empty!52605)))

(declare-fun b!7858301 () Bool)

(declare-fun tp!2328321 () Bool)

(declare-fun tp!2328322 () Bool)

(assert (=> b!7858301 (= e!4644332 (and tp!2328321 tp!2328322))))

(assert (=> b!7857836 (= tp!2327984 e!4644332)))

(declare-fun b!7858302 () Bool)

(declare-fun tp!2328323 () Bool)

(assert (=> b!7858302 (= e!4644332 tp!2328323)))

(declare-fun b!7858303 () Bool)

(declare-fun tp!2328319 () Bool)

(declare-fun tp!2328320 () Bool)

(assert (=> b!7858303 (= e!4644332 (and tp!2328319 tp!2328320))))

(assert (= (and b!7857836 ((_ is ElementMatch!21103) (regOne!42718 (regTwo!42718 r2!6165)))) b!7858300))

(assert (= (and b!7857836 ((_ is Concat!29948) (regOne!42718 (regTwo!42718 r2!6165)))) b!7858301))

(assert (= (and b!7857836 ((_ is Star!21103) (regOne!42718 (regTwo!42718 r2!6165)))) b!7858302))

(assert (= (and b!7857836 ((_ is Union!21103) (regOne!42718 (regTwo!42718 r2!6165)))) b!7858303))

(declare-fun b!7858304 () Bool)

(declare-fun e!4644333 () Bool)

(assert (=> b!7858304 (= e!4644333 tp_is_empty!52605)))

(declare-fun b!7858305 () Bool)

(declare-fun tp!2328326 () Bool)

(declare-fun tp!2328327 () Bool)

(assert (=> b!7858305 (= e!4644333 (and tp!2328326 tp!2328327))))

(assert (=> b!7857836 (= tp!2327985 e!4644333)))

(declare-fun b!7858306 () Bool)

(declare-fun tp!2328328 () Bool)

(assert (=> b!7858306 (= e!4644333 tp!2328328)))

(declare-fun b!7858307 () Bool)

(declare-fun tp!2328324 () Bool)

(declare-fun tp!2328325 () Bool)

(assert (=> b!7858307 (= e!4644333 (and tp!2328324 tp!2328325))))

(assert (= (and b!7857836 ((_ is ElementMatch!21103) (regTwo!42718 (regTwo!42718 r2!6165)))) b!7858304))

(assert (= (and b!7857836 ((_ is Concat!29948) (regTwo!42718 (regTwo!42718 r2!6165)))) b!7858305))

(assert (= (and b!7857836 ((_ is Star!21103) (regTwo!42718 (regTwo!42718 r2!6165)))) b!7858306))

(assert (= (and b!7857836 ((_ is Union!21103) (regTwo!42718 (regTwo!42718 r2!6165)))) b!7858307))

(check-sat (not b!7858205) (not b!7858175) (not b!7858059) (not b!7858256) (not b!7858290) (not b!7858109) (not b!7858281) (not b!7858283) (not b!7858120) (not b!7858148) (not b!7858181) (not bm!728539) (not b!7858249) (not b!7858245) (not b!7858197) (not b!7858172) (not b!7858242) (not b!7858270) (not bm!728535) (not b!7858116) (not b!7858208) (not b!7858159) (not b!7858200) (not b!7858244) (not b!7857981) (not b!7858264) (not b!7858193) (not b!7858220) (not b!7858273) (not b!7858185) (not b!7858282) (not b!7858252) (not b!7858298) (not b!7858128) (not b!7858157) (not b!7858067) (not d!2354214) (not b!7858151) (not b!7858168) (not bm!728515) (not b!7858265) (not b!7858225) (not b!7858260) (not b!7858169) (not b!7858179) (not b!7858088) (not b!7858111) (not bm!728543) (not b!7858303) (not b!7858214) (not b!7858108) (not b!7858152) (not b!7858206) (not b!7857999) (not b!7858262) (not d!2354190) (not b!7858160) (not b!7858097) (not b!7858189) (not b!7858212) (not b!7858278) (not b!7858297) (not b!7858218) (not b!7858119) (not b!7858213) (not b!7858079) (not bm!728525) (not b!7858115) (not b!7858164) (not b!7858224) (not b!7858141) (not b!7858112) (not bm!728540) (not b!7858291) (not b!7858196) (not b!7858195) (not b!7858145) (not b!7858266) (not b!7858135) (not d!2354206) (not bm!728536) (not b!7858129) (not b!7858286) (not b!7858279) (not b!7858221) (not b!7858107) (not b!7858062) (not b!7857996) (not b!7858226) (not b!7858061) (not b!7858307) (not bm!728532) (not b!7858064) (not b!7858187) tp_is_empty!52605 (not b!7858277) (not b!7858140) (not b!7858144) (not b!7858201) (not b!7858237) (not b!7858026) (not b!7858121) (not b!7858002) (not b!7858246) (not b!7858250) (not b!7858156) (not b!7858272) (not b!7858253) (not b!7858165) (not b!7858254) (not b!7858248) (not b!7858301) (not b!7857994) (not b!7858184) (not b!7858209) (not b!7858276) (not b!7858137) (not b!7857997) (not b!7858294) (not b!7858071) (not b!7858261) (not b!7858180) (not b!7858124) (not bm!728542) (not b!7858188) (not b!7858302) (not bm!728545) (not b!7858230) (not b!7858293) (not b!7858269) (not b!7858285) (not bm!728534) (not b!7858305) (not b!7858222) (not b!7858268) (not d!2354216) (not bm!728512) (not b!7858133) (not b!7858274) (not b!7858153) (not b!7858241) (not b!7858228) (not b!7858295) (not b!7858204) (not b!7858210) (not d!2354200) (not b!7858057) (not b!7858199) (not b!7858167) (not b!7858127) (not d!2354208) (not b!7858257) (not b!7858139) (not b!7858163) (not b!7858136) (not b!7858299) (not b!7858233) (not bm!728524) (not bm!728546) (not b!7858258) (not b!7858232) (not b!7858287) (not b!7857992) (not b!7858147) (not bm!728513) (not b!7858306) (not b!7858192) (not bm!728533) (not b!7858176) (not b!7858183) (not b!7858177) (not b!7858125) (not b!7858234) (not b!7858229) (not b!7858238) (not b!7858173) (not b!7858171) (not b!7858203) (not b!7858143) (not b!7858191) (not b!7858113) (not b!7858236) (not b!7858131) (not b!7858216) (not b!7858161) (not b!7858289) (not b!7858155) (not b!7858123) (not d!2354218) (not b!7858149) (not b!7858240) (not b!7858132) (not b!7858117) (not b!7858217))
(check-sat)
