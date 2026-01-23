; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544804 () Bool)

(assert start!544804)

(declare-fun b!5146756 () Bool)

(declare-fun e!3209127 () Bool)

(declare-fun tp!1437827 () Bool)

(assert (=> b!5146756 (= e!3209127 tp!1437827)))

(declare-fun b!5146757 () Bool)

(declare-fun tp_is_empty!38127 () Bool)

(assert (=> b!5146757 (= e!3209127 tp_is_empty!38127)))

(declare-fun b!5146758 () Bool)

(declare-fun tp!1437825 () Bool)

(declare-fun tp!1437824 () Bool)

(assert (=> b!5146758 (= e!3209127 (and tp!1437825 tp!1437824))))

(declare-fun b!5146759 () Bool)

(declare-fun tp!1437823 () Bool)

(declare-fun tp!1437826 () Bool)

(assert (=> b!5146759 (= e!3209127 (and tp!1437823 tp!1437826))))

(declare-fun b!5146760 () Bool)

(declare-fun e!3209131 () Bool)

(declare-fun tp!1437822 () Bool)

(assert (=> b!5146760 (= e!3209131 tp!1437822)))

(declare-fun b!5146761 () Bool)

(declare-fun e!3209130 () Bool)

(declare-datatypes ((C!29244 0))(
  ( (C!29245 (val!24274 Int)) )
))
(declare-datatypes ((Regex!14489 0))(
  ( (ElementMatch!14489 (c!886108 C!29244)) (Concat!23334 (regOne!29490 Regex!14489) (regTwo!29490 Regex!14489)) (EmptyExpr!14489) (Star!14489 (reg!14818 Regex!14489)) (EmptyLang!14489) (Union!14489 (regOne!29491 Regex!14489) (regTwo!29491 Regex!14489)) )
))
(declare-fun expr!117 () Regex!14489)

(declare-fun validRegex!6344 (Regex!14489) Bool)

(assert (=> b!5146761 (= e!3209130 (validRegex!6344 (regOne!29490 expr!117)))))

(declare-fun b!5146762 () Bool)

(declare-fun e!3209129 () Bool)

(declare-datatypes ((List!59895 0))(
  ( (Nil!59771) (Cons!59771 (h!66219 Regex!14489) (t!372934 List!59895)) )
))
(declare-datatypes ((Context!7746 0))(
  ( (Context!7747 (exprs!4373 List!59895)) )
))
(declare-fun ctx!100 () Context!7746)

(declare-fun lostCause!1530 (Context!7746) Bool)

(assert (=> b!5146762 (= e!3209129 (lostCause!1530 ctx!100))))

(declare-fun b!5146763 () Bool)

(declare-fun res!2190819 () Bool)

(declare-fun e!3209128 () Bool)

(assert (=> b!5146763 (=> (not res!2190819) (not e!3209128))))

(declare-fun a!1296 () C!29244)

(get-info :version)

(assert (=> b!5146763 (= res!2190819 (and (or (not ((_ is ElementMatch!14489) expr!117)) (not (= (c!886108 expr!117) a!1296))) (not ((_ is Union!14489) expr!117)) ((_ is Concat!23334) expr!117)))))

(declare-fun b!5146764 () Bool)

(declare-fun res!2190820 () Bool)

(assert (=> b!5146764 (=> (not res!2190820) (not e!3209128))))

(assert (=> b!5146764 (= res!2190820 e!3209129)))

(declare-fun res!2190818 () Bool)

(assert (=> b!5146764 (=> res!2190818 e!3209129)))

(declare-fun lostCause!1531 (Regex!14489) Bool)

(assert (=> b!5146764 (= res!2190818 (lostCause!1531 expr!117))))

(declare-fun res!2190816 () Bool)

(assert (=> start!544804 (=> (not res!2190816) (not e!3209128))))

(assert (=> start!544804 (= res!2190816 (validRegex!6344 expr!117))))

(assert (=> start!544804 e!3209128))

(assert (=> start!544804 e!3209127))

(declare-fun inv!79403 (Context!7746) Bool)

(assert (=> start!544804 (and (inv!79403 ctx!100) e!3209131)))

(assert (=> start!544804 tp_is_empty!38127))

(declare-fun b!5146765 () Bool)

(assert (=> b!5146765 (= e!3209128 (not e!3209130))))

(declare-fun res!2190817 () Bool)

(assert (=> b!5146765 (=> res!2190817 e!3209130)))

(assert (=> b!5146765 (= res!2190817 (not (validRegex!6344 (regTwo!29490 expr!117))))))

(assert (=> b!5146765 (not (lostCause!1531 (regOne!29490 expr!117)))))

(declare-datatypes ((Unit!151181 0))(
  ( (Unit!151182) )
))
(declare-fun lt!2121104 () Unit!151181)

(declare-fun lemmaNullableThenNotLostCause!78 (Regex!14489) Unit!151181)

(assert (=> b!5146765 (= lt!2121104 (lemmaNullableThenNotLostCause!78 (regOne!29490 expr!117)))))

(declare-fun b!5146766 () Bool)

(declare-fun res!2190821 () Bool)

(assert (=> b!5146766 (=> (not res!2190821) (not e!3209128))))

(declare-fun nullable!4845 (Regex!14489) Bool)

(assert (=> b!5146766 (= res!2190821 (nullable!4845 (regOne!29490 expr!117)))))

(assert (= (and start!544804 res!2190816) b!5146764))

(assert (= (and b!5146764 (not res!2190818)) b!5146762))

(assert (= (and b!5146764 res!2190820) b!5146763))

(assert (= (and b!5146763 res!2190819) b!5146766))

(assert (= (and b!5146766 res!2190821) b!5146765))

(assert (= (and b!5146765 (not res!2190817)) b!5146761))

(assert (= (and start!544804 ((_ is ElementMatch!14489) expr!117)) b!5146757))

(assert (= (and start!544804 ((_ is Concat!23334) expr!117)) b!5146759))

(assert (= (and start!544804 ((_ is Star!14489) expr!117)) b!5146756))

(assert (= (and start!544804 ((_ is Union!14489) expr!117)) b!5146758))

(assert (= start!544804 b!5146760))

(declare-fun m!6206932 () Bool)

(assert (=> b!5146762 m!6206932))

(declare-fun m!6206934 () Bool)

(assert (=> b!5146765 m!6206934))

(declare-fun m!6206936 () Bool)

(assert (=> b!5146765 m!6206936))

(declare-fun m!6206938 () Bool)

(assert (=> b!5146765 m!6206938))

(declare-fun m!6206940 () Bool)

(assert (=> b!5146761 m!6206940))

(declare-fun m!6206942 () Bool)

(assert (=> b!5146766 m!6206942))

(declare-fun m!6206944 () Bool)

(assert (=> b!5146764 m!6206944))

(declare-fun m!6206946 () Bool)

(assert (=> start!544804 m!6206946))

(declare-fun m!6206948 () Bool)

(assert (=> start!544804 m!6206948))

(check-sat (not start!544804) (not b!5146756) (not b!5146765) (not b!5146766) (not b!5146764) (not b!5146761) (not b!5146759) tp_is_empty!38127 (not b!5146760) (not b!5146758) (not b!5146762))
(check-sat)
(get-model)

(declare-fun d!1663558 () Bool)

(declare-fun nullableFct!1326 (Regex!14489) Bool)

(assert (=> d!1663558 (= (nullable!4845 (regOne!29490 expr!117)) (nullableFct!1326 (regOne!29490 expr!117)))))

(declare-fun bs!1201304 () Bool)

(assert (= bs!1201304 d!1663558))

(declare-fun m!6206950 () Bool)

(assert (=> bs!1201304 m!6206950))

(assert (=> b!5146766 d!1663558))

(declare-fun bm!359826 () Bool)

(declare-fun c!886113 () Bool)

(declare-fun call!359832 () Bool)

(declare-fun c!886114 () Bool)

(assert (=> bm!359826 (= call!359832 (validRegex!6344 (ite c!886114 (reg!14818 (regOne!29490 expr!117)) (ite c!886113 (regTwo!29491 (regOne!29490 expr!117)) (regTwo!29490 (regOne!29490 expr!117))))))))

(declare-fun b!5146785 () Bool)

(declare-fun e!3209149 () Bool)

(declare-fun call!359831 () Bool)

(assert (=> b!5146785 (= e!3209149 call!359831)))

(declare-fun bm!359827 () Bool)

(declare-fun call!359833 () Bool)

(assert (=> bm!359827 (= call!359833 (validRegex!6344 (ite c!886113 (regOne!29491 (regOne!29490 expr!117)) (regOne!29490 (regOne!29490 expr!117)))))))

(declare-fun b!5146786 () Bool)

(declare-fun e!3209148 () Bool)

(assert (=> b!5146786 (= e!3209148 call!359831)))

(declare-fun d!1663560 () Bool)

(declare-fun res!2190833 () Bool)

(declare-fun e!3209151 () Bool)

(assert (=> d!1663560 (=> res!2190833 e!3209151)))

(assert (=> d!1663560 (= res!2190833 ((_ is ElementMatch!14489) (regOne!29490 expr!117)))))

(assert (=> d!1663560 (= (validRegex!6344 (regOne!29490 expr!117)) e!3209151)))

(declare-fun b!5146787 () Bool)

(declare-fun res!2190835 () Bool)

(assert (=> b!5146787 (=> (not res!2190835) (not e!3209149))))

(assert (=> b!5146787 (= res!2190835 call!359833)))

(declare-fun e!3209147 () Bool)

(assert (=> b!5146787 (= e!3209147 e!3209149)))

(declare-fun b!5146788 () Bool)

(declare-fun e!3209146 () Bool)

(assert (=> b!5146788 (= e!3209146 e!3209148)))

(declare-fun res!2190832 () Bool)

(assert (=> b!5146788 (=> (not res!2190832) (not e!3209148))))

(assert (=> b!5146788 (= res!2190832 call!359833)))

(declare-fun b!5146789 () Bool)

(declare-fun res!2190834 () Bool)

(assert (=> b!5146789 (=> res!2190834 e!3209146)))

(assert (=> b!5146789 (= res!2190834 (not ((_ is Concat!23334) (regOne!29490 expr!117))))))

(assert (=> b!5146789 (= e!3209147 e!3209146)))

(declare-fun b!5146790 () Bool)

(declare-fun e!3209150 () Bool)

(assert (=> b!5146790 (= e!3209150 e!3209147)))

(assert (=> b!5146790 (= c!886113 ((_ is Union!14489) (regOne!29490 expr!117)))))

(declare-fun b!5146791 () Bool)

(declare-fun e!3209152 () Bool)

(assert (=> b!5146791 (= e!3209152 call!359832)))

(declare-fun b!5146792 () Bool)

(assert (=> b!5146792 (= e!3209151 e!3209150)))

(assert (=> b!5146792 (= c!886114 ((_ is Star!14489) (regOne!29490 expr!117)))))

(declare-fun bm!359828 () Bool)

(assert (=> bm!359828 (= call!359831 call!359832)))

(declare-fun b!5146793 () Bool)

(assert (=> b!5146793 (= e!3209150 e!3209152)))

(declare-fun res!2190836 () Bool)

(assert (=> b!5146793 (= res!2190836 (not (nullable!4845 (reg!14818 (regOne!29490 expr!117)))))))

(assert (=> b!5146793 (=> (not res!2190836) (not e!3209152))))

(assert (= (and d!1663560 (not res!2190833)) b!5146792))

(assert (= (and b!5146792 c!886114) b!5146793))

(assert (= (and b!5146792 (not c!886114)) b!5146790))

(assert (= (and b!5146793 res!2190836) b!5146791))

(assert (= (and b!5146790 c!886113) b!5146787))

(assert (= (and b!5146790 (not c!886113)) b!5146789))

(assert (= (and b!5146787 res!2190835) b!5146785))

(assert (= (and b!5146789 (not res!2190834)) b!5146788))

(assert (= (and b!5146788 res!2190832) b!5146786))

(assert (= (or b!5146785 b!5146786) bm!359828))

(assert (= (or b!5146787 b!5146788) bm!359827))

(assert (= (or b!5146791 bm!359828) bm!359826))

(declare-fun m!6206952 () Bool)

(assert (=> bm!359826 m!6206952))

(declare-fun m!6206954 () Bool)

(assert (=> bm!359827 m!6206954))

(declare-fun m!6206956 () Bool)

(assert (=> b!5146793 m!6206956))

(assert (=> b!5146761 d!1663560))

(declare-fun bm!359829 () Bool)

(declare-fun call!359835 () Bool)

(declare-fun c!886115 () Bool)

(declare-fun c!886116 () Bool)

(assert (=> bm!359829 (= call!359835 (validRegex!6344 (ite c!886116 (reg!14818 (regTwo!29490 expr!117)) (ite c!886115 (regTwo!29491 (regTwo!29490 expr!117)) (regTwo!29490 (regTwo!29490 expr!117))))))))

(declare-fun b!5146794 () Bool)

(declare-fun e!3209156 () Bool)

(declare-fun call!359834 () Bool)

(assert (=> b!5146794 (= e!3209156 call!359834)))

(declare-fun bm!359830 () Bool)

(declare-fun call!359836 () Bool)

(assert (=> bm!359830 (= call!359836 (validRegex!6344 (ite c!886115 (regOne!29491 (regTwo!29490 expr!117)) (regOne!29490 (regTwo!29490 expr!117)))))))

(declare-fun b!5146795 () Bool)

(declare-fun e!3209155 () Bool)

(assert (=> b!5146795 (= e!3209155 call!359834)))

(declare-fun d!1663562 () Bool)

(declare-fun res!2190838 () Bool)

(declare-fun e!3209158 () Bool)

(assert (=> d!1663562 (=> res!2190838 e!3209158)))

(assert (=> d!1663562 (= res!2190838 ((_ is ElementMatch!14489) (regTwo!29490 expr!117)))))

(assert (=> d!1663562 (= (validRegex!6344 (regTwo!29490 expr!117)) e!3209158)))

(declare-fun b!5146796 () Bool)

(declare-fun res!2190840 () Bool)

(assert (=> b!5146796 (=> (not res!2190840) (not e!3209156))))

(assert (=> b!5146796 (= res!2190840 call!359836)))

(declare-fun e!3209154 () Bool)

(assert (=> b!5146796 (= e!3209154 e!3209156)))

(declare-fun b!5146797 () Bool)

(declare-fun e!3209153 () Bool)

(assert (=> b!5146797 (= e!3209153 e!3209155)))

(declare-fun res!2190837 () Bool)

(assert (=> b!5146797 (=> (not res!2190837) (not e!3209155))))

(assert (=> b!5146797 (= res!2190837 call!359836)))

(declare-fun b!5146798 () Bool)

(declare-fun res!2190839 () Bool)

(assert (=> b!5146798 (=> res!2190839 e!3209153)))

(assert (=> b!5146798 (= res!2190839 (not ((_ is Concat!23334) (regTwo!29490 expr!117))))))

(assert (=> b!5146798 (= e!3209154 e!3209153)))

(declare-fun b!5146799 () Bool)

(declare-fun e!3209157 () Bool)

(assert (=> b!5146799 (= e!3209157 e!3209154)))

(assert (=> b!5146799 (= c!886115 ((_ is Union!14489) (regTwo!29490 expr!117)))))

(declare-fun b!5146800 () Bool)

(declare-fun e!3209159 () Bool)

(assert (=> b!5146800 (= e!3209159 call!359835)))

(declare-fun b!5146801 () Bool)

(assert (=> b!5146801 (= e!3209158 e!3209157)))

(assert (=> b!5146801 (= c!886116 ((_ is Star!14489) (regTwo!29490 expr!117)))))

(declare-fun bm!359831 () Bool)

(assert (=> bm!359831 (= call!359834 call!359835)))

(declare-fun b!5146802 () Bool)

(assert (=> b!5146802 (= e!3209157 e!3209159)))

(declare-fun res!2190841 () Bool)

(assert (=> b!5146802 (= res!2190841 (not (nullable!4845 (reg!14818 (regTwo!29490 expr!117)))))))

(assert (=> b!5146802 (=> (not res!2190841) (not e!3209159))))

(assert (= (and d!1663562 (not res!2190838)) b!5146801))

(assert (= (and b!5146801 c!886116) b!5146802))

(assert (= (and b!5146801 (not c!886116)) b!5146799))

(assert (= (and b!5146802 res!2190841) b!5146800))

(assert (= (and b!5146799 c!886115) b!5146796))

(assert (= (and b!5146799 (not c!886115)) b!5146798))

(assert (= (and b!5146796 res!2190840) b!5146794))

(assert (= (and b!5146798 (not res!2190839)) b!5146797))

(assert (= (and b!5146797 res!2190837) b!5146795))

(assert (= (or b!5146794 b!5146795) bm!359831))

(assert (= (or b!5146796 b!5146797) bm!359830))

(assert (= (or b!5146800 bm!359831) bm!359829))

(declare-fun m!6206958 () Bool)

(assert (=> bm!359829 m!6206958))

(declare-fun m!6206960 () Bool)

(assert (=> bm!359830 m!6206960))

(declare-fun m!6206962 () Bool)

(assert (=> b!5146802 m!6206962))

(assert (=> b!5146765 d!1663562))

(declare-fun d!1663564 () Bool)

(declare-fun lostCauseFct!367 (Regex!14489) Bool)

(assert (=> d!1663564 (= (lostCause!1531 (regOne!29490 expr!117)) (lostCauseFct!367 (regOne!29490 expr!117)))))

(declare-fun bs!1201305 () Bool)

(assert (= bs!1201305 d!1663564))

(declare-fun m!6206964 () Bool)

(assert (=> bs!1201305 m!6206964))

(assert (=> b!5146765 d!1663564))

(declare-fun d!1663566 () Bool)

(assert (=> d!1663566 (not (lostCause!1531 (regOne!29490 expr!117)))))

(declare-fun lt!2121107 () Unit!151181)

(declare-fun choose!38079 (Regex!14489) Unit!151181)

(assert (=> d!1663566 (= lt!2121107 (choose!38079 (regOne!29490 expr!117)))))

(assert (=> d!1663566 (validRegex!6344 (regOne!29490 expr!117))))

(assert (=> d!1663566 (= (lemmaNullableThenNotLostCause!78 (regOne!29490 expr!117)) lt!2121107)))

(declare-fun bs!1201306 () Bool)

(assert (= bs!1201306 d!1663566))

(assert (=> bs!1201306 m!6206936))

(declare-fun m!6206966 () Bool)

(assert (=> bs!1201306 m!6206966))

(assert (=> bs!1201306 m!6206940))

(assert (=> b!5146765 d!1663566))

(declare-fun d!1663568 () Bool)

(assert (=> d!1663568 (= (lostCause!1531 expr!117) (lostCauseFct!367 expr!117))))

(declare-fun bs!1201307 () Bool)

(assert (= bs!1201307 d!1663568))

(declare-fun m!6206968 () Bool)

(assert (=> bs!1201307 m!6206968))

(assert (=> b!5146764 d!1663568))

(declare-fun d!1663570 () Bool)

(declare-fun lambda!256901 () Int)

(declare-fun exists!1818 (List!59895 Int) Bool)

(assert (=> d!1663570 (= (lostCause!1530 ctx!100) (exists!1818 (exprs!4373 ctx!100) lambda!256901))))

(declare-fun bs!1201308 () Bool)

(assert (= bs!1201308 d!1663570))

(declare-fun m!6206970 () Bool)

(assert (=> bs!1201308 m!6206970))

(assert (=> b!5146762 d!1663570))

(declare-fun c!886118 () Bool)

(declare-fun call!359838 () Bool)

(declare-fun c!886117 () Bool)

(declare-fun bm!359832 () Bool)

(assert (=> bm!359832 (= call!359838 (validRegex!6344 (ite c!886118 (reg!14818 expr!117) (ite c!886117 (regTwo!29491 expr!117) (regTwo!29490 expr!117)))))))

(declare-fun b!5146803 () Bool)

(declare-fun e!3209163 () Bool)

(declare-fun call!359837 () Bool)

(assert (=> b!5146803 (= e!3209163 call!359837)))

(declare-fun bm!359833 () Bool)

(declare-fun call!359839 () Bool)

(assert (=> bm!359833 (= call!359839 (validRegex!6344 (ite c!886117 (regOne!29491 expr!117) (regOne!29490 expr!117))))))

(declare-fun b!5146804 () Bool)

(declare-fun e!3209162 () Bool)

(assert (=> b!5146804 (= e!3209162 call!359837)))

(declare-fun d!1663572 () Bool)

(declare-fun res!2190843 () Bool)

(declare-fun e!3209165 () Bool)

(assert (=> d!1663572 (=> res!2190843 e!3209165)))

(assert (=> d!1663572 (= res!2190843 ((_ is ElementMatch!14489) expr!117))))

(assert (=> d!1663572 (= (validRegex!6344 expr!117) e!3209165)))

(declare-fun b!5146805 () Bool)

(declare-fun res!2190845 () Bool)

(assert (=> b!5146805 (=> (not res!2190845) (not e!3209163))))

(assert (=> b!5146805 (= res!2190845 call!359839)))

(declare-fun e!3209161 () Bool)

(assert (=> b!5146805 (= e!3209161 e!3209163)))

(declare-fun b!5146806 () Bool)

(declare-fun e!3209160 () Bool)

(assert (=> b!5146806 (= e!3209160 e!3209162)))

(declare-fun res!2190842 () Bool)

(assert (=> b!5146806 (=> (not res!2190842) (not e!3209162))))

(assert (=> b!5146806 (= res!2190842 call!359839)))

(declare-fun b!5146807 () Bool)

(declare-fun res!2190844 () Bool)

(assert (=> b!5146807 (=> res!2190844 e!3209160)))

(assert (=> b!5146807 (= res!2190844 (not ((_ is Concat!23334) expr!117)))))

(assert (=> b!5146807 (= e!3209161 e!3209160)))

(declare-fun b!5146808 () Bool)

(declare-fun e!3209164 () Bool)

(assert (=> b!5146808 (= e!3209164 e!3209161)))

(assert (=> b!5146808 (= c!886117 ((_ is Union!14489) expr!117))))

(declare-fun b!5146809 () Bool)

(declare-fun e!3209166 () Bool)

(assert (=> b!5146809 (= e!3209166 call!359838)))

(declare-fun b!5146810 () Bool)

(assert (=> b!5146810 (= e!3209165 e!3209164)))

(assert (=> b!5146810 (= c!886118 ((_ is Star!14489) expr!117))))

(declare-fun bm!359834 () Bool)

(assert (=> bm!359834 (= call!359837 call!359838)))

(declare-fun b!5146811 () Bool)

(assert (=> b!5146811 (= e!3209164 e!3209166)))

(declare-fun res!2190846 () Bool)

(assert (=> b!5146811 (= res!2190846 (not (nullable!4845 (reg!14818 expr!117))))))

(assert (=> b!5146811 (=> (not res!2190846) (not e!3209166))))

(assert (= (and d!1663572 (not res!2190843)) b!5146810))

(assert (= (and b!5146810 c!886118) b!5146811))

(assert (= (and b!5146810 (not c!886118)) b!5146808))

(assert (= (and b!5146811 res!2190846) b!5146809))

(assert (= (and b!5146808 c!886117) b!5146805))

(assert (= (and b!5146808 (not c!886117)) b!5146807))

(assert (= (and b!5146805 res!2190845) b!5146803))

(assert (= (and b!5146807 (not res!2190844)) b!5146806))

(assert (= (and b!5146806 res!2190842) b!5146804))

(assert (= (or b!5146803 b!5146804) bm!359834))

(assert (= (or b!5146805 b!5146806) bm!359833))

(assert (= (or b!5146809 bm!359834) bm!359832))

(declare-fun m!6206972 () Bool)

(assert (=> bm!359832 m!6206972))

(declare-fun m!6206974 () Bool)

(assert (=> bm!359833 m!6206974))

(declare-fun m!6206976 () Bool)

(assert (=> b!5146811 m!6206976))

(assert (=> start!544804 d!1663572))

(declare-fun bs!1201309 () Bool)

(declare-fun d!1663574 () Bool)

(assert (= bs!1201309 (and d!1663574 d!1663570)))

(declare-fun lambda!256904 () Int)

(assert (=> bs!1201309 (not (= lambda!256904 lambda!256901))))

(declare-fun forall!13962 (List!59895 Int) Bool)

(assert (=> d!1663574 (= (inv!79403 ctx!100) (forall!13962 (exprs!4373 ctx!100) lambda!256904))))

(declare-fun bs!1201310 () Bool)

(assert (= bs!1201310 d!1663574))

(declare-fun m!6206978 () Bool)

(assert (=> bs!1201310 m!6206978))

(assert (=> start!544804 d!1663574))

(declare-fun b!5146816 () Bool)

(declare-fun e!3209169 () Bool)

(declare-fun tp!1437832 () Bool)

(declare-fun tp!1437833 () Bool)

(assert (=> b!5146816 (= e!3209169 (and tp!1437832 tp!1437833))))

(assert (=> b!5146760 (= tp!1437822 e!3209169)))

(assert (= (and b!5146760 ((_ is Cons!59771) (exprs!4373 ctx!100))) b!5146816))

(declare-fun b!5146828 () Bool)

(declare-fun e!3209172 () Bool)

(declare-fun tp!1437845 () Bool)

(declare-fun tp!1437848 () Bool)

(assert (=> b!5146828 (= e!3209172 (and tp!1437845 tp!1437848))))

(declare-fun b!5146829 () Bool)

(declare-fun tp!1437847 () Bool)

(assert (=> b!5146829 (= e!3209172 tp!1437847)))

(assert (=> b!5146759 (= tp!1437823 e!3209172)))

(declare-fun b!5146830 () Bool)

(declare-fun tp!1437846 () Bool)

(declare-fun tp!1437844 () Bool)

(assert (=> b!5146830 (= e!3209172 (and tp!1437846 tp!1437844))))

(declare-fun b!5146827 () Bool)

(assert (=> b!5146827 (= e!3209172 tp_is_empty!38127)))

(assert (= (and b!5146759 ((_ is ElementMatch!14489) (regOne!29490 expr!117))) b!5146827))

(assert (= (and b!5146759 ((_ is Concat!23334) (regOne!29490 expr!117))) b!5146828))

(assert (= (and b!5146759 ((_ is Star!14489) (regOne!29490 expr!117))) b!5146829))

(assert (= (and b!5146759 ((_ is Union!14489) (regOne!29490 expr!117))) b!5146830))

(declare-fun b!5146832 () Bool)

(declare-fun e!3209173 () Bool)

(declare-fun tp!1437850 () Bool)

(declare-fun tp!1437853 () Bool)

(assert (=> b!5146832 (= e!3209173 (and tp!1437850 tp!1437853))))

(declare-fun b!5146833 () Bool)

(declare-fun tp!1437852 () Bool)

(assert (=> b!5146833 (= e!3209173 tp!1437852)))

(assert (=> b!5146759 (= tp!1437826 e!3209173)))

(declare-fun b!5146834 () Bool)

(declare-fun tp!1437851 () Bool)

(declare-fun tp!1437849 () Bool)

(assert (=> b!5146834 (= e!3209173 (and tp!1437851 tp!1437849))))

(declare-fun b!5146831 () Bool)

(assert (=> b!5146831 (= e!3209173 tp_is_empty!38127)))

(assert (= (and b!5146759 ((_ is ElementMatch!14489) (regTwo!29490 expr!117))) b!5146831))

(assert (= (and b!5146759 ((_ is Concat!23334) (regTwo!29490 expr!117))) b!5146832))

(assert (= (and b!5146759 ((_ is Star!14489) (regTwo!29490 expr!117))) b!5146833))

(assert (= (and b!5146759 ((_ is Union!14489) (regTwo!29490 expr!117))) b!5146834))

(declare-fun b!5146836 () Bool)

(declare-fun e!3209174 () Bool)

(declare-fun tp!1437855 () Bool)

(declare-fun tp!1437858 () Bool)

(assert (=> b!5146836 (= e!3209174 (and tp!1437855 tp!1437858))))

(declare-fun b!5146837 () Bool)

(declare-fun tp!1437857 () Bool)

(assert (=> b!5146837 (= e!3209174 tp!1437857)))

(assert (=> b!5146758 (= tp!1437825 e!3209174)))

(declare-fun b!5146838 () Bool)

(declare-fun tp!1437856 () Bool)

(declare-fun tp!1437854 () Bool)

(assert (=> b!5146838 (= e!3209174 (and tp!1437856 tp!1437854))))

(declare-fun b!5146835 () Bool)

(assert (=> b!5146835 (= e!3209174 tp_is_empty!38127)))

(assert (= (and b!5146758 ((_ is ElementMatch!14489) (regOne!29491 expr!117))) b!5146835))

(assert (= (and b!5146758 ((_ is Concat!23334) (regOne!29491 expr!117))) b!5146836))

(assert (= (and b!5146758 ((_ is Star!14489) (regOne!29491 expr!117))) b!5146837))

(assert (= (and b!5146758 ((_ is Union!14489) (regOne!29491 expr!117))) b!5146838))

(declare-fun b!5146840 () Bool)

(declare-fun e!3209175 () Bool)

(declare-fun tp!1437860 () Bool)

(declare-fun tp!1437863 () Bool)

(assert (=> b!5146840 (= e!3209175 (and tp!1437860 tp!1437863))))

(declare-fun b!5146841 () Bool)

(declare-fun tp!1437862 () Bool)

(assert (=> b!5146841 (= e!3209175 tp!1437862)))

(assert (=> b!5146758 (= tp!1437824 e!3209175)))

(declare-fun b!5146842 () Bool)

(declare-fun tp!1437861 () Bool)

(declare-fun tp!1437859 () Bool)

(assert (=> b!5146842 (= e!3209175 (and tp!1437861 tp!1437859))))

(declare-fun b!5146839 () Bool)

(assert (=> b!5146839 (= e!3209175 tp_is_empty!38127)))

(assert (= (and b!5146758 ((_ is ElementMatch!14489) (regTwo!29491 expr!117))) b!5146839))

(assert (= (and b!5146758 ((_ is Concat!23334) (regTwo!29491 expr!117))) b!5146840))

(assert (= (and b!5146758 ((_ is Star!14489) (regTwo!29491 expr!117))) b!5146841))

(assert (= (and b!5146758 ((_ is Union!14489) (regTwo!29491 expr!117))) b!5146842))

(declare-fun b!5146844 () Bool)

(declare-fun e!3209176 () Bool)

(declare-fun tp!1437865 () Bool)

(declare-fun tp!1437868 () Bool)

(assert (=> b!5146844 (= e!3209176 (and tp!1437865 tp!1437868))))

(declare-fun b!5146845 () Bool)

(declare-fun tp!1437867 () Bool)

(assert (=> b!5146845 (= e!3209176 tp!1437867)))

(assert (=> b!5146756 (= tp!1437827 e!3209176)))

(declare-fun b!5146846 () Bool)

(declare-fun tp!1437866 () Bool)

(declare-fun tp!1437864 () Bool)

(assert (=> b!5146846 (= e!3209176 (and tp!1437866 tp!1437864))))

(declare-fun b!5146843 () Bool)

(assert (=> b!5146843 (= e!3209176 tp_is_empty!38127)))

(assert (= (and b!5146756 ((_ is ElementMatch!14489) (reg!14818 expr!117))) b!5146843))

(assert (= (and b!5146756 ((_ is Concat!23334) (reg!14818 expr!117))) b!5146844))

(assert (= (and b!5146756 ((_ is Star!14489) (reg!14818 expr!117))) b!5146845))

(assert (= (and b!5146756 ((_ is Union!14489) (reg!14818 expr!117))) b!5146846))

(check-sat (not b!5146840) (not b!5146832) (not bm!359830) (not bm!359832) (not b!5146838) (not d!1663568) (not b!5146845) (not d!1663566) (not bm!359829) (not d!1663564) (not b!5146837) (not bm!359833) (not d!1663570) (not b!5146833) (not b!5146846) (not b!5146834) (not b!5146793) (not b!5146828) (not d!1663558) (not d!1663574) (not b!5146836) (not b!5146811) (not b!5146841) (not b!5146830) (not b!5146842) (not b!5146844) tp_is_empty!38127 (not bm!359826) (not b!5146829) (not b!5146816) (not bm!359827) (not b!5146802))
(check-sat)
