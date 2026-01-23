; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73978 () Bool)

(assert start!73978)

(declare-fun b!829887 () Bool)

(declare-fun res!381173 () Bool)

(declare-fun e!546878 () Bool)

(assert (=> b!829887 (=> (not res!381173) (not e!546878))))

(declare-datatypes ((C!4716 0))(
  ( (C!4717 (val!2606 Int)) )
))
(declare-datatypes ((Regex!2073 0))(
  ( (ElementMatch!2073 (c!135074 C!4716)) (Concat!3804 (regOne!4658 Regex!2073) (regTwo!4658 Regex!2073)) (EmptyExpr!2073) (Star!2073 (reg!2402 Regex!2073)) (EmptyLang!2073) (Union!2073 (regOne!4659 Regex!2073) (regTwo!4659 Regex!2073)) )
))
(declare-fun r!27177 () Regex!2073)

(declare-fun c!13916 () C!4716)

(declare-datatypes ((List!8899 0))(
  ( (Nil!8883) (Cons!8883 (h!14284 C!4716) (t!93191 List!8899)) )
))
(declare-fun contains!1664 (List!8899 C!4716) Bool)

(declare-fun firstChars!44 (Regex!2073) List!8899)

(assert (=> b!829887 (= res!381173 (contains!1664 (firstChars!44 r!27177) c!13916))))

(declare-fun b!829888 () Bool)

(declare-fun validRegex!626 (Regex!2073) Bool)

(assert (=> b!829888 (= e!546878 (not (validRegex!626 (regOne!4658 r!27177))))))

(declare-fun b!829889 () Bool)

(declare-fun e!546879 () Bool)

(declare-fun tp!259814 () Bool)

(declare-fun tp!259812 () Bool)

(assert (=> b!829889 (= e!546879 (and tp!259814 tp!259812))))

(declare-fun b!829890 () Bool)

(declare-fun tp!259810 () Bool)

(assert (=> b!829890 (= e!546879 tp!259810)))

(declare-fun b!829891 () Bool)

(declare-fun tp_is_empty!3869 () Bool)

(assert (=> b!829891 (= e!546879 tp_is_empty!3869)))

(declare-fun b!829892 () Bool)

(declare-fun tp!259813 () Bool)

(declare-fun tp!259811 () Bool)

(assert (=> b!829892 (= e!546879 (and tp!259813 tp!259811))))

(declare-fun b!829893 () Bool)

(declare-fun res!381174 () Bool)

(assert (=> b!829893 (=> (not res!381174) (not e!546878))))

(get-info :version)

(assert (=> b!829893 (= res!381174 (and (not ((_ is EmptyExpr!2073) r!27177)) (not ((_ is EmptyLang!2073) r!27177)) (not ((_ is ElementMatch!2073) r!27177)) (not ((_ is Star!2073) r!27177)) (not ((_ is Union!2073) r!27177))))))

(declare-fun res!381171 () Bool)

(assert (=> start!73978 (=> (not res!381171) (not e!546878))))

(assert (=> start!73978 (= res!381171 (validRegex!626 r!27177))))

(assert (=> start!73978 e!546878))

(assert (=> start!73978 e!546879))

(assert (=> start!73978 tp_is_empty!3869))

(declare-fun b!829894 () Bool)

(declare-fun res!381175 () Bool)

(assert (=> b!829894 (=> (not res!381175) (not e!546878))))

(assert (=> b!829894 (= res!381175 (contains!1664 (firstChars!44 (regOne!4658 r!27177)) c!13916))))

(declare-fun b!829895 () Bool)

(declare-fun res!381172 () Bool)

(assert (=> b!829895 (=> (not res!381172) (not e!546878))))

(declare-fun nullable!524 (Regex!2073) Bool)

(assert (=> b!829895 (= res!381172 (nullable!524 (regOne!4658 r!27177)))))

(assert (= (and start!73978 res!381171) b!829887))

(assert (= (and b!829887 res!381173) b!829893))

(assert (= (and b!829893 res!381174) b!829895))

(assert (= (and b!829895 res!381172) b!829894))

(assert (= (and b!829894 res!381175) b!829888))

(assert (= (and start!73978 ((_ is ElementMatch!2073) r!27177)) b!829891))

(assert (= (and start!73978 ((_ is Concat!3804) r!27177)) b!829892))

(assert (= (and start!73978 ((_ is Star!2073) r!27177)) b!829890))

(assert (= (and start!73978 ((_ is Union!2073) r!27177)) b!829889))

(declare-fun m!1067183 () Bool)

(assert (=> b!829887 m!1067183))

(assert (=> b!829887 m!1067183))

(declare-fun m!1067185 () Bool)

(assert (=> b!829887 m!1067185))

(declare-fun m!1067187 () Bool)

(assert (=> b!829894 m!1067187))

(assert (=> b!829894 m!1067187))

(declare-fun m!1067189 () Bool)

(assert (=> b!829894 m!1067189))

(declare-fun m!1067191 () Bool)

(assert (=> start!73978 m!1067191))

(declare-fun m!1067193 () Bool)

(assert (=> b!829895 m!1067193))

(declare-fun m!1067195 () Bool)

(assert (=> b!829888 m!1067195))

(check-sat (not b!829888) (not start!73978) (not b!829890) tp_is_empty!3869 (not b!829892) (not b!829887) (not b!829894) (not b!829889) (not b!829895))
(check-sat)
(get-model)

(declare-fun d!260018 () Bool)

(declare-fun lt!317682 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1311 (List!8899) (InoxSet C!4716))

(assert (=> d!260018 (= lt!317682 (select (content!1311 (firstChars!44 r!27177)) c!13916))))

(declare-fun e!546898 () Bool)

(assert (=> d!260018 (= lt!317682 e!546898)))

(declare-fun res!381191 () Bool)

(assert (=> d!260018 (=> (not res!381191) (not e!546898))))

(assert (=> d!260018 (= res!381191 ((_ is Cons!8883) (firstChars!44 r!27177)))))

(assert (=> d!260018 (= (contains!1664 (firstChars!44 r!27177) c!13916) lt!317682)))

(declare-fun b!829918 () Bool)

(declare-fun e!546899 () Bool)

(assert (=> b!829918 (= e!546898 e!546899)))

(declare-fun res!381190 () Bool)

(assert (=> b!829918 (=> res!381190 e!546899)))

(assert (=> b!829918 (= res!381190 (= (h!14284 (firstChars!44 r!27177)) c!13916))))

(declare-fun b!829919 () Bool)

(assert (=> b!829919 (= e!546899 (contains!1664 (t!93191 (firstChars!44 r!27177)) c!13916))))

(assert (= (and d!260018 res!381191) b!829918))

(assert (= (and b!829918 (not res!381190)) b!829919))

(assert (=> d!260018 m!1067183))

(declare-fun m!1067197 () Bool)

(assert (=> d!260018 m!1067197))

(declare-fun m!1067199 () Bool)

(assert (=> d!260018 m!1067199))

(declare-fun m!1067201 () Bool)

(assert (=> b!829919 m!1067201))

(assert (=> b!829887 d!260018))

(declare-fun bm!48775 () Bool)

(declare-fun call!48780 () List!8899)

(declare-fun c!135093 () Bool)

(assert (=> bm!48775 (= call!48780 (firstChars!44 (ite c!135093 (regTwo!4659 r!27177) (regOne!4658 r!27177))))))

(declare-fun b!829962 () Bool)

(declare-fun e!546930 () List!8899)

(declare-fun call!48783 () List!8899)

(assert (=> b!829962 (= e!546930 call!48783)))

(declare-fun d!260020 () Bool)

(declare-fun c!135096 () Bool)

(assert (=> d!260020 (= c!135096 (or ((_ is EmptyExpr!2073) r!27177) ((_ is EmptyLang!2073) r!27177)))))

(declare-fun e!546929 () List!8899)

(assert (=> d!260020 (= (firstChars!44 r!27177) e!546929)))

(declare-fun b!829963 () Bool)

(declare-fun e!546931 () List!8899)

(assert (=> b!829963 (= e!546930 e!546931)))

(assert (=> b!829963 (= c!135093 ((_ is Union!2073) r!27177))))

(declare-fun b!829964 () Bool)

(declare-fun e!546932 () List!8899)

(assert (=> b!829964 (= e!546932 (Cons!8883 (c!135074 r!27177) Nil!8883))))

(declare-fun b!829965 () Bool)

(declare-fun e!546928 () List!8899)

(declare-fun call!48782 () List!8899)

(assert (=> b!829965 (= e!546928 call!48782)))

(declare-fun b!829966 () Bool)

(declare-fun c!135094 () Bool)

(assert (=> b!829966 (= c!135094 ((_ is Star!2073) r!27177))))

(assert (=> b!829966 (= e!546932 e!546930)))

(declare-fun b!829967 () Bool)

(declare-fun call!48784 () List!8899)

(assert (=> b!829967 (= e!546928 call!48784)))

(declare-fun bm!48776 () Bool)

(declare-fun call!48781 () List!8899)

(assert (=> bm!48776 (= call!48781 call!48783)))

(declare-fun b!829968 () Bool)

(assert (=> b!829968 (= e!546929 Nil!8883)))

(declare-fun b!829969 () Bool)

(declare-fun c!135095 () Bool)

(assert (=> b!829969 (= c!135095 (nullable!524 (regOne!4658 r!27177)))))

(assert (=> b!829969 (= e!546931 e!546928)))

(declare-fun b!829970 () Bool)

(assert (=> b!829970 (= e!546929 e!546932)))

(declare-fun c!135097 () Bool)

(assert (=> b!829970 (= c!135097 ((_ is ElementMatch!2073) r!27177))))

(declare-fun b!829971 () Bool)

(assert (=> b!829971 (= e!546931 call!48784)))

(declare-fun bm!48777 () Bool)

(declare-fun ++!2299 (List!8899 List!8899) List!8899)

(assert (=> bm!48777 (= call!48784 (++!2299 (ite c!135093 call!48781 call!48782) (ite c!135093 call!48780 call!48781)))))

(declare-fun bm!48778 () Bool)

(assert (=> bm!48778 (= call!48783 (firstChars!44 (ite c!135094 (reg!2402 r!27177) (ite c!135093 (regOne!4659 r!27177) (regTwo!4658 r!27177)))))))

(declare-fun bm!48779 () Bool)

(assert (=> bm!48779 (= call!48782 call!48780)))

(assert (= (and d!260020 c!135096) b!829968))

(assert (= (and d!260020 (not c!135096)) b!829970))

(assert (= (and b!829970 c!135097) b!829964))

(assert (= (and b!829970 (not c!135097)) b!829966))

(assert (= (and b!829966 c!135094) b!829962))

(assert (= (and b!829966 (not c!135094)) b!829963))

(assert (= (and b!829963 c!135093) b!829971))

(assert (= (and b!829963 (not c!135093)) b!829969))

(assert (= (and b!829969 c!135095) b!829967))

(assert (= (and b!829969 (not c!135095)) b!829965))

(assert (= (or b!829967 b!829965) bm!48779))

(assert (= (or b!829971 bm!48779) bm!48775))

(assert (= (or b!829971 b!829967) bm!48776))

(assert (= (or b!829971 b!829967) bm!48777))

(assert (= (or b!829962 bm!48776) bm!48778))

(declare-fun m!1067217 () Bool)

(assert (=> bm!48775 m!1067217))

(assert (=> b!829969 m!1067193))

(declare-fun m!1067219 () Bool)

(assert (=> bm!48777 m!1067219))

(declare-fun m!1067221 () Bool)

(assert (=> bm!48778 m!1067221))

(assert (=> b!829887 d!260020))

(declare-fun d!260028 () Bool)

(declare-fun nullableFct!161 (Regex!2073) Bool)

(assert (=> d!260028 (= (nullable!524 (regOne!4658 r!27177)) (nullableFct!161 (regOne!4658 r!27177)))))

(declare-fun bs!229641 () Bool)

(assert (= bs!229641 d!260028))

(declare-fun m!1067229 () Bool)

(assert (=> bs!229641 m!1067229))

(assert (=> b!829895 d!260028))

(declare-fun bm!48796 () Bool)

(declare-fun call!48802 () Bool)

(declare-fun call!48801 () Bool)

(assert (=> bm!48796 (= call!48802 call!48801)))

(declare-fun b!830012 () Bool)

(declare-fun e!546964 () Bool)

(assert (=> b!830012 (= e!546964 call!48802)))

(declare-fun c!135113 () Bool)

(declare-fun c!135112 () Bool)

(declare-fun bm!48797 () Bool)

(assert (=> bm!48797 (= call!48801 (validRegex!626 (ite c!135113 (reg!2402 (regOne!4658 r!27177)) (ite c!135112 (regTwo!4659 (regOne!4658 r!27177)) (regOne!4658 (regOne!4658 r!27177))))))))

(declare-fun b!830013 () Bool)

(declare-fun e!546959 () Bool)

(declare-fun e!546962 () Bool)

(assert (=> b!830013 (= e!546959 e!546962)))

(assert (=> b!830013 (= c!135113 ((_ is Star!2073) (regOne!4658 r!27177)))))

(declare-fun bm!48798 () Bool)

(declare-fun call!48803 () Bool)

(assert (=> bm!48798 (= call!48803 (validRegex!626 (ite c!135112 (regOne!4659 (regOne!4658 r!27177)) (regTwo!4658 (regOne!4658 r!27177)))))))

(declare-fun b!830014 () Bool)

(declare-fun e!546961 () Bool)

(assert (=> b!830014 (= e!546961 call!48803)))

(declare-fun b!830015 () Bool)

(declare-fun e!546960 () Bool)

(assert (=> b!830015 (= e!546960 e!546961)))

(declare-fun res!381221 () Bool)

(assert (=> b!830015 (=> (not res!381221) (not e!546961))))

(assert (=> b!830015 (= res!381221 call!48802)))

(declare-fun b!830017 () Bool)

(declare-fun e!546963 () Bool)

(assert (=> b!830017 (= e!546963 call!48801)))

(declare-fun b!830018 () Bool)

(declare-fun e!546965 () Bool)

(assert (=> b!830018 (= e!546962 e!546965)))

(assert (=> b!830018 (= c!135112 ((_ is Union!2073) (regOne!4658 r!27177)))))

(declare-fun b!830019 () Bool)

(declare-fun res!381219 () Bool)

(assert (=> b!830019 (=> res!381219 e!546960)))

(assert (=> b!830019 (= res!381219 (not ((_ is Concat!3804) (regOne!4658 r!27177))))))

(assert (=> b!830019 (= e!546965 e!546960)))

(declare-fun b!830020 () Bool)

(assert (=> b!830020 (= e!546962 e!546963)))

(declare-fun res!381220 () Bool)

(assert (=> b!830020 (= res!381220 (not (nullable!524 (reg!2402 (regOne!4658 r!27177)))))))

(assert (=> b!830020 (=> (not res!381220) (not e!546963))))

(declare-fun d!260032 () Bool)

(declare-fun res!381218 () Bool)

(assert (=> d!260032 (=> res!381218 e!546959)))

(assert (=> d!260032 (= res!381218 ((_ is ElementMatch!2073) (regOne!4658 r!27177)))))

(assert (=> d!260032 (= (validRegex!626 (regOne!4658 r!27177)) e!546959)))

(declare-fun b!830016 () Bool)

(declare-fun res!381222 () Bool)

(assert (=> b!830016 (=> (not res!381222) (not e!546964))))

(assert (=> b!830016 (= res!381222 call!48803)))

(assert (=> b!830016 (= e!546965 e!546964)))

(assert (= (and d!260032 (not res!381218)) b!830013))

(assert (= (and b!830013 c!135113) b!830020))

(assert (= (and b!830013 (not c!135113)) b!830018))

(assert (= (and b!830020 res!381220) b!830017))

(assert (= (and b!830018 c!135112) b!830016))

(assert (= (and b!830018 (not c!135112)) b!830019))

(assert (= (and b!830016 res!381222) b!830012))

(assert (= (and b!830019 (not res!381219)) b!830015))

(assert (= (and b!830015 res!381221) b!830014))

(assert (= (or b!830016 b!830014) bm!48798))

(assert (= (or b!830012 b!830015) bm!48796))

(assert (= (or b!830017 bm!48796) bm!48797))

(declare-fun m!1067231 () Bool)

(assert (=> bm!48797 m!1067231))

(declare-fun m!1067233 () Bool)

(assert (=> bm!48798 m!1067233))

(declare-fun m!1067235 () Bool)

(assert (=> b!830020 m!1067235))

(assert (=> b!829888 d!260032))

(declare-fun d!260034 () Bool)

(declare-fun lt!317686 () Bool)

(assert (=> d!260034 (= lt!317686 (select (content!1311 (firstChars!44 (regOne!4658 r!27177))) c!13916))))

(declare-fun e!546966 () Bool)

(assert (=> d!260034 (= lt!317686 e!546966)))

(declare-fun res!381224 () Bool)

(assert (=> d!260034 (=> (not res!381224) (not e!546966))))

(assert (=> d!260034 (= res!381224 ((_ is Cons!8883) (firstChars!44 (regOne!4658 r!27177))))))

(assert (=> d!260034 (= (contains!1664 (firstChars!44 (regOne!4658 r!27177)) c!13916) lt!317686)))

(declare-fun b!830021 () Bool)

(declare-fun e!546967 () Bool)

(assert (=> b!830021 (= e!546966 e!546967)))

(declare-fun res!381223 () Bool)

(assert (=> b!830021 (=> res!381223 e!546967)))

(assert (=> b!830021 (= res!381223 (= (h!14284 (firstChars!44 (regOne!4658 r!27177))) c!13916))))

(declare-fun b!830022 () Bool)

(assert (=> b!830022 (= e!546967 (contains!1664 (t!93191 (firstChars!44 (regOne!4658 r!27177))) c!13916))))

(assert (= (and d!260034 res!381224) b!830021))

(assert (= (and b!830021 (not res!381223)) b!830022))

(assert (=> d!260034 m!1067187))

(declare-fun m!1067237 () Bool)

(assert (=> d!260034 m!1067237))

(declare-fun m!1067239 () Bool)

(assert (=> d!260034 m!1067239))

(declare-fun m!1067241 () Bool)

(assert (=> b!830022 m!1067241))

(assert (=> b!829894 d!260034))

(declare-fun bm!48799 () Bool)

(declare-fun call!48804 () List!8899)

(declare-fun c!135114 () Bool)

(assert (=> bm!48799 (= call!48804 (firstChars!44 (ite c!135114 (regTwo!4659 (regOne!4658 r!27177)) (regOne!4658 (regOne!4658 r!27177)))))))

(declare-fun b!830023 () Bool)

(declare-fun e!546970 () List!8899)

(declare-fun call!48807 () List!8899)

(assert (=> b!830023 (= e!546970 call!48807)))

(declare-fun d!260036 () Bool)

(declare-fun c!135117 () Bool)

(assert (=> d!260036 (= c!135117 (or ((_ is EmptyExpr!2073) (regOne!4658 r!27177)) ((_ is EmptyLang!2073) (regOne!4658 r!27177))))))

(declare-fun e!546969 () List!8899)

(assert (=> d!260036 (= (firstChars!44 (regOne!4658 r!27177)) e!546969)))

(declare-fun b!830024 () Bool)

(declare-fun e!546971 () List!8899)

(assert (=> b!830024 (= e!546970 e!546971)))

(assert (=> b!830024 (= c!135114 ((_ is Union!2073) (regOne!4658 r!27177)))))

(declare-fun b!830025 () Bool)

(declare-fun e!546972 () List!8899)

(assert (=> b!830025 (= e!546972 (Cons!8883 (c!135074 (regOne!4658 r!27177)) Nil!8883))))

(declare-fun b!830026 () Bool)

(declare-fun e!546968 () List!8899)

(declare-fun call!48806 () List!8899)

(assert (=> b!830026 (= e!546968 call!48806)))

(declare-fun b!830027 () Bool)

(declare-fun c!135115 () Bool)

(assert (=> b!830027 (= c!135115 ((_ is Star!2073) (regOne!4658 r!27177)))))

(assert (=> b!830027 (= e!546972 e!546970)))

(declare-fun b!830028 () Bool)

(declare-fun call!48808 () List!8899)

(assert (=> b!830028 (= e!546968 call!48808)))

(declare-fun bm!48800 () Bool)

(declare-fun call!48805 () List!8899)

(assert (=> bm!48800 (= call!48805 call!48807)))

(declare-fun b!830029 () Bool)

(assert (=> b!830029 (= e!546969 Nil!8883)))

(declare-fun b!830030 () Bool)

(declare-fun c!135116 () Bool)

(assert (=> b!830030 (= c!135116 (nullable!524 (regOne!4658 (regOne!4658 r!27177))))))

(assert (=> b!830030 (= e!546971 e!546968)))

(declare-fun b!830031 () Bool)

(assert (=> b!830031 (= e!546969 e!546972)))

(declare-fun c!135118 () Bool)

(assert (=> b!830031 (= c!135118 ((_ is ElementMatch!2073) (regOne!4658 r!27177)))))

(declare-fun b!830032 () Bool)

(assert (=> b!830032 (= e!546971 call!48808)))

(declare-fun bm!48801 () Bool)

(assert (=> bm!48801 (= call!48808 (++!2299 (ite c!135114 call!48805 call!48806) (ite c!135114 call!48804 call!48805)))))

(declare-fun bm!48802 () Bool)

(assert (=> bm!48802 (= call!48807 (firstChars!44 (ite c!135115 (reg!2402 (regOne!4658 r!27177)) (ite c!135114 (regOne!4659 (regOne!4658 r!27177)) (regTwo!4658 (regOne!4658 r!27177))))))))

(declare-fun bm!48803 () Bool)

(assert (=> bm!48803 (= call!48806 call!48804)))

(assert (= (and d!260036 c!135117) b!830029))

(assert (= (and d!260036 (not c!135117)) b!830031))

(assert (= (and b!830031 c!135118) b!830025))

(assert (= (and b!830031 (not c!135118)) b!830027))

(assert (= (and b!830027 c!135115) b!830023))

(assert (= (and b!830027 (not c!135115)) b!830024))

(assert (= (and b!830024 c!135114) b!830032))

(assert (= (and b!830024 (not c!135114)) b!830030))

(assert (= (and b!830030 c!135116) b!830028))

(assert (= (and b!830030 (not c!135116)) b!830026))

(assert (= (or b!830028 b!830026) bm!48803))

(assert (= (or b!830032 bm!48803) bm!48799))

(assert (= (or b!830032 b!830028) bm!48800))

(assert (= (or b!830032 b!830028) bm!48801))

(assert (= (or b!830023 bm!48800) bm!48802))

(declare-fun m!1067243 () Bool)

(assert (=> bm!48799 m!1067243))

(declare-fun m!1067245 () Bool)

(assert (=> b!830030 m!1067245))

(declare-fun m!1067247 () Bool)

(assert (=> bm!48801 m!1067247))

(declare-fun m!1067249 () Bool)

(assert (=> bm!48802 m!1067249))

(assert (=> b!829894 d!260036))

(declare-fun bm!48804 () Bool)

(declare-fun call!48810 () Bool)

(declare-fun call!48809 () Bool)

(assert (=> bm!48804 (= call!48810 call!48809)))

(declare-fun b!830033 () Bool)

(declare-fun e!546978 () Bool)

(assert (=> b!830033 (= e!546978 call!48810)))

(declare-fun c!135120 () Bool)

(declare-fun bm!48805 () Bool)

(declare-fun c!135119 () Bool)

(assert (=> bm!48805 (= call!48809 (validRegex!626 (ite c!135120 (reg!2402 r!27177) (ite c!135119 (regTwo!4659 r!27177) (regOne!4658 r!27177)))))))

(declare-fun b!830034 () Bool)

(declare-fun e!546973 () Bool)

(declare-fun e!546976 () Bool)

(assert (=> b!830034 (= e!546973 e!546976)))

(assert (=> b!830034 (= c!135120 ((_ is Star!2073) r!27177))))

(declare-fun bm!48806 () Bool)

(declare-fun call!48811 () Bool)

(assert (=> bm!48806 (= call!48811 (validRegex!626 (ite c!135119 (regOne!4659 r!27177) (regTwo!4658 r!27177))))))

(declare-fun b!830035 () Bool)

(declare-fun e!546975 () Bool)

(assert (=> b!830035 (= e!546975 call!48811)))

(declare-fun b!830036 () Bool)

(declare-fun e!546974 () Bool)

(assert (=> b!830036 (= e!546974 e!546975)))

(declare-fun res!381228 () Bool)

(assert (=> b!830036 (=> (not res!381228) (not e!546975))))

(assert (=> b!830036 (= res!381228 call!48810)))

(declare-fun b!830038 () Bool)

(declare-fun e!546977 () Bool)

(assert (=> b!830038 (= e!546977 call!48809)))

(declare-fun b!830039 () Bool)

(declare-fun e!546979 () Bool)

(assert (=> b!830039 (= e!546976 e!546979)))

(assert (=> b!830039 (= c!135119 ((_ is Union!2073) r!27177))))

(declare-fun b!830040 () Bool)

(declare-fun res!381226 () Bool)

(assert (=> b!830040 (=> res!381226 e!546974)))

(assert (=> b!830040 (= res!381226 (not ((_ is Concat!3804) r!27177)))))

(assert (=> b!830040 (= e!546979 e!546974)))

(declare-fun b!830041 () Bool)

(assert (=> b!830041 (= e!546976 e!546977)))

(declare-fun res!381227 () Bool)

(assert (=> b!830041 (= res!381227 (not (nullable!524 (reg!2402 r!27177))))))

(assert (=> b!830041 (=> (not res!381227) (not e!546977))))

(declare-fun d!260038 () Bool)

(declare-fun res!381225 () Bool)

(assert (=> d!260038 (=> res!381225 e!546973)))

(assert (=> d!260038 (= res!381225 ((_ is ElementMatch!2073) r!27177))))

(assert (=> d!260038 (= (validRegex!626 r!27177) e!546973)))

(declare-fun b!830037 () Bool)

(declare-fun res!381229 () Bool)

(assert (=> b!830037 (=> (not res!381229) (not e!546978))))

(assert (=> b!830037 (= res!381229 call!48811)))

(assert (=> b!830037 (= e!546979 e!546978)))

(assert (= (and d!260038 (not res!381225)) b!830034))

(assert (= (and b!830034 c!135120) b!830041))

(assert (= (and b!830034 (not c!135120)) b!830039))

(assert (= (and b!830041 res!381227) b!830038))

(assert (= (and b!830039 c!135119) b!830037))

(assert (= (and b!830039 (not c!135119)) b!830040))

(assert (= (and b!830037 res!381229) b!830033))

(assert (= (and b!830040 (not res!381226)) b!830036))

(assert (= (and b!830036 res!381228) b!830035))

(assert (= (or b!830037 b!830035) bm!48806))

(assert (= (or b!830033 b!830036) bm!48804))

(assert (= (or b!830038 bm!48804) bm!48805))

(declare-fun m!1067251 () Bool)

(assert (=> bm!48805 m!1067251))

(declare-fun m!1067253 () Bool)

(assert (=> bm!48806 m!1067253))

(declare-fun m!1067255 () Bool)

(assert (=> b!830041 m!1067255))

(assert (=> start!73978 d!260038))

(declare-fun b!830065 () Bool)

(declare-fun e!546987 () Bool)

(declare-fun tp!259828 () Bool)

(declare-fun tp!259826 () Bool)

(assert (=> b!830065 (= e!546987 (and tp!259828 tp!259826))))

(assert (=> b!829892 (= tp!259813 e!546987)))

(declare-fun b!830063 () Bool)

(declare-fun tp!259827 () Bool)

(declare-fun tp!259829 () Bool)

(assert (=> b!830063 (= e!546987 (and tp!259827 tp!259829))))

(declare-fun b!830062 () Bool)

(assert (=> b!830062 (= e!546987 tp_is_empty!3869)))

(declare-fun b!830064 () Bool)

(declare-fun tp!259825 () Bool)

(assert (=> b!830064 (= e!546987 tp!259825)))

(assert (= (and b!829892 ((_ is ElementMatch!2073) (regOne!4658 r!27177))) b!830062))

(assert (= (and b!829892 ((_ is Concat!3804) (regOne!4658 r!27177))) b!830063))

(assert (= (and b!829892 ((_ is Star!2073) (regOne!4658 r!27177))) b!830064))

(assert (= (and b!829892 ((_ is Union!2073) (regOne!4658 r!27177))) b!830065))

(declare-fun b!830069 () Bool)

(declare-fun e!546988 () Bool)

(declare-fun tp!259833 () Bool)

(declare-fun tp!259831 () Bool)

(assert (=> b!830069 (= e!546988 (and tp!259833 tp!259831))))

(assert (=> b!829892 (= tp!259811 e!546988)))

(declare-fun b!830067 () Bool)

(declare-fun tp!259832 () Bool)

(declare-fun tp!259834 () Bool)

(assert (=> b!830067 (= e!546988 (and tp!259832 tp!259834))))

(declare-fun b!830066 () Bool)

(assert (=> b!830066 (= e!546988 tp_is_empty!3869)))

(declare-fun b!830068 () Bool)

(declare-fun tp!259830 () Bool)

(assert (=> b!830068 (= e!546988 tp!259830)))

(assert (= (and b!829892 ((_ is ElementMatch!2073) (regTwo!4658 r!27177))) b!830066))

(assert (= (and b!829892 ((_ is Concat!3804) (regTwo!4658 r!27177))) b!830067))

(assert (= (and b!829892 ((_ is Star!2073) (regTwo!4658 r!27177))) b!830068))

(assert (= (and b!829892 ((_ is Union!2073) (regTwo!4658 r!27177))) b!830069))

(declare-fun b!830073 () Bool)

(declare-fun e!546989 () Bool)

(declare-fun tp!259838 () Bool)

(declare-fun tp!259836 () Bool)

(assert (=> b!830073 (= e!546989 (and tp!259838 tp!259836))))

(assert (=> b!829889 (= tp!259814 e!546989)))

(declare-fun b!830071 () Bool)

(declare-fun tp!259837 () Bool)

(declare-fun tp!259839 () Bool)

(assert (=> b!830071 (= e!546989 (and tp!259837 tp!259839))))

(declare-fun b!830070 () Bool)

(assert (=> b!830070 (= e!546989 tp_is_empty!3869)))

(declare-fun b!830072 () Bool)

(declare-fun tp!259835 () Bool)

(assert (=> b!830072 (= e!546989 tp!259835)))

(assert (= (and b!829889 ((_ is ElementMatch!2073) (regOne!4659 r!27177))) b!830070))

(assert (= (and b!829889 ((_ is Concat!3804) (regOne!4659 r!27177))) b!830071))

(assert (= (and b!829889 ((_ is Star!2073) (regOne!4659 r!27177))) b!830072))

(assert (= (and b!829889 ((_ is Union!2073) (regOne!4659 r!27177))) b!830073))

(declare-fun b!830077 () Bool)

(declare-fun e!546990 () Bool)

(declare-fun tp!259843 () Bool)

(declare-fun tp!259841 () Bool)

(assert (=> b!830077 (= e!546990 (and tp!259843 tp!259841))))

(assert (=> b!829889 (= tp!259812 e!546990)))

(declare-fun b!830075 () Bool)

(declare-fun tp!259842 () Bool)

(declare-fun tp!259844 () Bool)

(assert (=> b!830075 (= e!546990 (and tp!259842 tp!259844))))

(declare-fun b!830074 () Bool)

(assert (=> b!830074 (= e!546990 tp_is_empty!3869)))

(declare-fun b!830076 () Bool)

(declare-fun tp!259840 () Bool)

(assert (=> b!830076 (= e!546990 tp!259840)))

(assert (= (and b!829889 ((_ is ElementMatch!2073) (regTwo!4659 r!27177))) b!830074))

(assert (= (and b!829889 ((_ is Concat!3804) (regTwo!4659 r!27177))) b!830075))

(assert (= (and b!829889 ((_ is Star!2073) (regTwo!4659 r!27177))) b!830076))

(assert (= (and b!829889 ((_ is Union!2073) (regTwo!4659 r!27177))) b!830077))

(declare-fun b!830083 () Bool)

(declare-fun e!546993 () Bool)

(declare-fun tp!259848 () Bool)

(declare-fun tp!259846 () Bool)

(assert (=> b!830083 (= e!546993 (and tp!259848 tp!259846))))

(assert (=> b!829890 (= tp!259810 e!546993)))

(declare-fun b!830081 () Bool)

(declare-fun tp!259847 () Bool)

(declare-fun tp!259849 () Bool)

(assert (=> b!830081 (= e!546993 (and tp!259847 tp!259849))))

(declare-fun b!830080 () Bool)

(assert (=> b!830080 (= e!546993 tp_is_empty!3869)))

(declare-fun b!830082 () Bool)

(declare-fun tp!259845 () Bool)

(assert (=> b!830082 (= e!546993 tp!259845)))

(assert (= (and b!829890 ((_ is ElementMatch!2073) (reg!2402 r!27177))) b!830080))

(assert (= (and b!829890 ((_ is Concat!3804) (reg!2402 r!27177))) b!830081))

(assert (= (and b!829890 ((_ is Star!2073) (reg!2402 r!27177))) b!830082))

(assert (= (and b!829890 ((_ is Union!2073) (reg!2402 r!27177))) b!830083))

(check-sat (not bm!48802) tp_is_empty!3869 (not b!830083) (not bm!48799) (not b!830071) (not b!830082) (not b!830076) (not bm!48805) (not b!830030) (not d!260018) (not b!830077) (not bm!48777) (not b!829919) (not bm!48798) (not b!830022) (not bm!48801) (not bm!48775) (not b!830067) (not b!830081) (not b!830075) (not bm!48806) (not b!830063) (not d!260028) (not b!830072) (not b!830069) (not bm!48797) (not d!260034) (not b!830064) (not b!830073) (not b!830068) (not b!829969) (not b!830020) (not bm!48778) (not b!830065) (not b!830041))
(check-sat)
