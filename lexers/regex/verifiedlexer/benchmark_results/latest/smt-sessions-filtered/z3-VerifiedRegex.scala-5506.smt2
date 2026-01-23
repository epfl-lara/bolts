; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277918 () Bool)

(assert start!277918)

(declare-fun res!1186217 () Bool)

(declare-fun e!1807925 () Bool)

(assert (=> start!277918 (=> (not res!1186217) (not e!1807925))))

(declare-datatypes ((C!17316 0))(
  ( (C!17317 (val!10692 Int)) )
))
(declare-datatypes ((Regex!8567 0))(
  ( (ElementMatch!8567 (c!459926 C!17316)) (Concat!13888 (regOne!17646 Regex!8567) (regTwo!17646 Regex!8567)) (EmptyExpr!8567) (Star!8567 (reg!8896 Regex!8567)) (EmptyLang!8567) (Union!8567 (regOne!17647 Regex!8567) (regTwo!17647 Regex!8567)) )
))
(declare-fun r!23423 () Regex!8567)

(declare-fun validRegex!3437 (Regex!8567) Bool)

(assert (=> start!277918 (= res!1186217 (validRegex!3437 r!23423))))

(assert (=> start!277918 e!1807925))

(declare-fun e!1807926 () Bool)

(assert (=> start!277918 e!1807926))

(declare-fun e!1807924 () Bool)

(assert (=> start!277918 e!1807924))

(declare-fun b!2853645 () Bool)

(declare-fun res!1186218 () Bool)

(assert (=> b!2853645 (=> (not res!1186218) (not e!1807925))))

(declare-datatypes ((List!34164 0))(
  ( (Nil!34040) (Cons!34040 (h!39460 C!17316) (t!233195 List!34164)) )
))
(declare-fun prefix!1470 () List!34164)

(declare-fun prefixMatch!875 (Regex!8567 List!34164) Bool)

(assert (=> b!2853645 (= res!1186218 (prefixMatch!875 r!23423 prefix!1470))))

(declare-fun b!2853646 () Bool)

(declare-datatypes ((Option!6304 0))(
  ( (None!6303) (Some!6303 (v!34425 List!34164)) )
))
(declare-fun isDefined!4947 (Option!6304) Bool)

(declare-fun getLanguageWitness!235 (Regex!8567) Option!6304)

(assert (=> b!2853646 (= e!1807925 (not (isDefined!4947 (getLanguageWitness!235 r!23423))))))

(declare-fun b!2853647 () Bool)

(declare-fun tp_is_empty!14871 () Bool)

(declare-fun tp!917300 () Bool)

(assert (=> b!2853647 (= e!1807924 (and tp_is_empty!14871 tp!917300))))

(declare-fun b!2853648 () Bool)

(declare-fun tp!917304 () Bool)

(declare-fun tp!917302 () Bool)

(assert (=> b!2853648 (= e!1807926 (and tp!917304 tp!917302))))

(declare-fun b!2853649 () Bool)

(declare-fun tp!917301 () Bool)

(declare-fun tp!917303 () Bool)

(assert (=> b!2853649 (= e!1807926 (and tp!917301 tp!917303))))

(declare-fun b!2853650 () Bool)

(declare-fun res!1186216 () Bool)

(assert (=> b!2853650 (=> (not res!1186216) (not e!1807925))))

(get-info :version)

(assert (=> b!2853650 (= res!1186216 ((_ is Nil!34040) prefix!1470))))

(declare-fun b!2853651 () Bool)

(declare-fun tp!917299 () Bool)

(assert (=> b!2853651 (= e!1807926 tp!917299)))

(declare-fun b!2853652 () Bool)

(assert (=> b!2853652 (= e!1807926 tp_is_empty!14871)))

(assert (= (and start!277918 res!1186217) b!2853645))

(assert (= (and b!2853645 res!1186218) b!2853650))

(assert (= (and b!2853650 res!1186216) b!2853646))

(assert (= (and start!277918 ((_ is ElementMatch!8567) r!23423)) b!2853652))

(assert (= (and start!277918 ((_ is Concat!13888) r!23423)) b!2853649))

(assert (= (and start!277918 ((_ is Star!8567) r!23423)) b!2853651))

(assert (= (and start!277918 ((_ is Union!8567) r!23423)) b!2853648))

(assert (= (and start!277918 ((_ is Cons!34040) prefix!1470)) b!2853647))

(declare-fun m!3278117 () Bool)

(assert (=> start!277918 m!3278117))

(declare-fun m!3278119 () Bool)

(assert (=> b!2853645 m!3278119))

(declare-fun m!3278121 () Bool)

(assert (=> b!2853646 m!3278121))

(assert (=> b!2853646 m!3278121))

(declare-fun m!3278123 () Bool)

(assert (=> b!2853646 m!3278123))

(check-sat (not b!2853645) (not b!2853651) (not start!277918) tp_is_empty!14871 (not b!2853646) (not b!2853647) (not b!2853648) (not b!2853649))
(check-sat)
(get-model)

(declare-fun call!183777 () Bool)

(declare-fun bm!183770 () Bool)

(declare-fun c!459931 () Bool)

(declare-fun c!459932 () Bool)

(assert (=> bm!183770 (= call!183777 (validRegex!3437 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))

(declare-fun b!2853672 () Bool)

(declare-fun e!1807947 () Bool)

(declare-fun e!1807943 () Bool)

(assert (=> b!2853672 (= e!1807947 e!1807943)))

(assert (=> b!2853672 (= c!459931 ((_ is Union!8567) r!23423))))

(declare-fun b!2853673 () Bool)

(declare-fun e!1807942 () Bool)

(assert (=> b!2853673 (= e!1807942 call!183777)))

(declare-fun b!2853674 () Bool)

(declare-fun res!1186229 () Bool)

(declare-fun e!1807946 () Bool)

(assert (=> b!2853674 (=> res!1186229 e!1807946)))

(assert (=> b!2853674 (= res!1186229 (not ((_ is Concat!13888) r!23423)))))

(assert (=> b!2853674 (= e!1807943 e!1807946)))

(declare-fun bm!183771 () Bool)

(declare-fun call!183775 () Bool)

(assert (=> bm!183771 (= call!183775 call!183777)))

(declare-fun b!2853671 () Bool)

(declare-fun res!1186231 () Bool)

(declare-fun e!1807945 () Bool)

(assert (=> b!2853671 (=> (not res!1186231) (not e!1807945))))

(declare-fun call!183776 () Bool)

(assert (=> b!2853671 (= res!1186231 call!183776)))

(assert (=> b!2853671 (= e!1807943 e!1807945)))

(declare-fun d!826251 () Bool)

(declare-fun res!1186233 () Bool)

(declare-fun e!1807941 () Bool)

(assert (=> d!826251 (=> res!1186233 e!1807941)))

(assert (=> d!826251 (= res!1186233 ((_ is ElementMatch!8567) r!23423))))

(assert (=> d!826251 (= (validRegex!3437 r!23423) e!1807941)))

(declare-fun b!2853675 () Bool)

(declare-fun e!1807944 () Bool)

(assert (=> b!2853675 (= e!1807946 e!1807944)))

(declare-fun res!1186232 () Bool)

(assert (=> b!2853675 (=> (not res!1186232) (not e!1807944))))

(assert (=> b!2853675 (= res!1186232 call!183776)))

(declare-fun b!2853676 () Bool)

(assert (=> b!2853676 (= e!1807945 call!183775)))

(declare-fun bm!183772 () Bool)

(assert (=> bm!183772 (= call!183776 (validRegex!3437 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))

(declare-fun b!2853677 () Bool)

(assert (=> b!2853677 (= e!1807947 e!1807942)))

(declare-fun res!1186230 () Bool)

(declare-fun nullable!2641 (Regex!8567) Bool)

(assert (=> b!2853677 (= res!1186230 (not (nullable!2641 (reg!8896 r!23423))))))

(assert (=> b!2853677 (=> (not res!1186230) (not e!1807942))))

(declare-fun b!2853678 () Bool)

(assert (=> b!2853678 (= e!1807941 e!1807947)))

(assert (=> b!2853678 (= c!459932 ((_ is Star!8567) r!23423))))

(declare-fun b!2853679 () Bool)

(assert (=> b!2853679 (= e!1807944 call!183775)))

(assert (= (and d!826251 (not res!1186233)) b!2853678))

(assert (= (and b!2853678 c!459932) b!2853677))

(assert (= (and b!2853678 (not c!459932)) b!2853672))

(assert (= (and b!2853677 res!1186230) b!2853673))

(assert (= (and b!2853672 c!459931) b!2853671))

(assert (= (and b!2853672 (not c!459931)) b!2853674))

(assert (= (and b!2853671 res!1186231) b!2853676))

(assert (= (and b!2853674 (not res!1186229)) b!2853675))

(assert (= (and b!2853675 res!1186232) b!2853679))

(assert (= (or b!2853676 b!2853679) bm!183771))

(assert (= (or b!2853671 b!2853675) bm!183772))

(assert (= (or b!2853673 bm!183771) bm!183770))

(declare-fun m!3278125 () Bool)

(assert (=> bm!183770 m!3278125))

(declare-fun m!3278129 () Bool)

(assert (=> bm!183772 m!3278129))

(declare-fun m!3278131 () Bool)

(assert (=> b!2853677 m!3278131))

(assert (=> start!277918 d!826251))

(declare-fun d!826257 () Bool)

(declare-fun c!459935 () Bool)

(declare-fun isEmpty!18592 (List!34164) Bool)

(assert (=> d!826257 (= c!459935 (isEmpty!18592 prefix!1470))))

(declare-fun e!1807950 () Bool)

(assert (=> d!826257 (= (prefixMatch!875 r!23423 prefix!1470) e!1807950)))

(declare-fun b!2853684 () Bool)

(declare-fun lostCause!740 (Regex!8567) Bool)

(assert (=> b!2853684 (= e!1807950 (not (lostCause!740 r!23423)))))

(declare-fun b!2853685 () Bool)

(declare-fun derivativeStep!2265 (Regex!8567 C!17316) Regex!8567)

(declare-fun head!6269 (List!34164) C!17316)

(declare-fun tail!4494 (List!34164) List!34164)

(assert (=> b!2853685 (= e!1807950 (prefixMatch!875 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)) (tail!4494 prefix!1470)))))

(assert (= (and d!826257 c!459935) b!2853684))

(assert (= (and d!826257 (not c!459935)) b!2853685))

(declare-fun m!3278133 () Bool)

(assert (=> d!826257 m!3278133))

(declare-fun m!3278135 () Bool)

(assert (=> b!2853684 m!3278135))

(declare-fun m!3278137 () Bool)

(assert (=> b!2853685 m!3278137))

(assert (=> b!2853685 m!3278137))

(declare-fun m!3278139 () Bool)

(assert (=> b!2853685 m!3278139))

(declare-fun m!3278141 () Bool)

(assert (=> b!2853685 m!3278141))

(assert (=> b!2853685 m!3278139))

(assert (=> b!2853685 m!3278141))

(declare-fun m!3278143 () Bool)

(assert (=> b!2853685 m!3278143))

(assert (=> b!2853645 d!826257))

(declare-fun d!826259 () Bool)

(declare-fun isEmpty!18593 (Option!6304) Bool)

(assert (=> d!826259 (= (isDefined!4947 (getLanguageWitness!235 r!23423)) (not (isEmpty!18593 (getLanguageWitness!235 r!23423))))))

(declare-fun bs!520230 () Bool)

(assert (= bs!520230 d!826259))

(assert (=> bs!520230 m!3278121))

(declare-fun m!3278145 () Bool)

(assert (=> bs!520230 m!3278145))

(assert (=> b!2853646 d!826259))

(declare-fun b!2853750 () Bool)

(declare-fun e!1807983 () Option!6304)

(assert (=> b!2853750 (= e!1807983 (Some!6303 Nil!34040))))

(declare-fun b!2853751 () Bool)

(declare-fun e!1807985 () Option!6304)

(declare-fun e!1807988 () Option!6304)

(assert (=> b!2853751 (= e!1807985 e!1807988)))

(declare-fun lt!1013811 () Option!6304)

(declare-fun call!183786 () Option!6304)

(assert (=> b!2853751 (= lt!1013811 call!183786)))

(declare-fun c!459973 () Bool)

(assert (=> b!2853751 (= c!459973 ((_ is Some!6303) lt!1013811))))

(declare-fun d!826261 () Bool)

(declare-fun c!459971 () Bool)

(assert (=> d!826261 (= c!459971 ((_ is EmptyExpr!8567) r!23423))))

(assert (=> d!826261 (= (getLanguageWitness!235 r!23423) e!1807983)))

(declare-fun b!2853752 () Bool)

(declare-fun e!1807987 () Option!6304)

(assert (=> b!2853752 (= e!1807987 None!6303)))

(declare-fun b!2853753 () Bool)

(declare-fun c!459975 () Bool)

(declare-fun lt!1013810 () Option!6304)

(assert (=> b!2853753 (= c!459975 ((_ is Some!6303) lt!1013810))))

(assert (=> b!2853753 (= lt!1013810 call!183786)))

(declare-fun e!1807986 () Option!6304)

(declare-fun e!1807990 () Option!6304)

(assert (=> b!2853753 (= e!1807986 e!1807990)))

(declare-fun b!2853754 () Bool)

(assert (=> b!2853754 (= e!1807990 None!6303)))

(declare-fun b!2853755 () Bool)

(declare-fun c!459968 () Bool)

(assert (=> b!2853755 (= c!459968 ((_ is Union!8567) r!23423))))

(declare-fun e!1807989 () Option!6304)

(assert (=> b!2853755 (= e!1807989 e!1807985)))

(declare-fun b!2853756 () Bool)

(assert (=> b!2853756 (= e!1807986 None!6303)))

(declare-fun bm!183781 () Bool)

(declare-fun call!183787 () Option!6304)

(assert (=> bm!183781 (= call!183787 (getLanguageWitness!235 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))

(declare-fun b!2853757 () Bool)

(declare-fun c!459974 () Bool)

(assert (=> b!2853757 (= c!459974 ((_ is ElementMatch!8567) r!23423))))

(declare-fun e!1807984 () Option!6304)

(assert (=> b!2853757 (= e!1807987 e!1807984)))

(declare-fun b!2853758 () Bool)

(assert (=> b!2853758 (= e!1807984 (Some!6303 (Cons!34040 (c!459926 r!23423) Nil!34040)))))

(declare-fun b!2853759 () Bool)

(declare-fun lt!1013812 () Option!6304)

(declare-fun ++!8128 (List!34164 List!34164) List!34164)

(assert (=> b!2853759 (= e!1807990 (Some!6303 (++!8128 (v!34425 lt!1013812) (v!34425 lt!1013810))))))

(declare-fun bm!183782 () Bool)

(assert (=> bm!183782 (= call!183786 (getLanguageWitness!235 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))

(declare-fun b!2853760 () Bool)

(assert (=> b!2853760 (= e!1807984 e!1807989)))

(declare-fun c!459972 () Bool)

(assert (=> b!2853760 (= c!459972 ((_ is Star!8567) r!23423))))

(declare-fun b!2853761 () Bool)

(assert (=> b!2853761 (= e!1807985 e!1807986)))

(assert (=> b!2853761 (= lt!1013812 call!183787)))

(declare-fun c!459970 () Bool)

(assert (=> b!2853761 (= c!459970 ((_ is Some!6303) lt!1013812))))

(declare-fun b!2853762 () Bool)

(assert (=> b!2853762 (= e!1807989 (Some!6303 Nil!34040))))

(declare-fun b!2853763 () Bool)

(assert (=> b!2853763 (= e!1807988 call!183787)))

(declare-fun b!2853764 () Bool)

(assert (=> b!2853764 (= e!1807988 lt!1013811)))

(declare-fun b!2853765 () Bool)

(assert (=> b!2853765 (= e!1807983 e!1807987)))

(declare-fun c!459969 () Bool)

(assert (=> b!2853765 (= c!459969 ((_ is EmptyLang!8567) r!23423))))

(assert (= (and d!826261 c!459971) b!2853750))

(assert (= (and d!826261 (not c!459971)) b!2853765))

(assert (= (and b!2853765 c!459969) b!2853752))

(assert (= (and b!2853765 (not c!459969)) b!2853757))

(assert (= (and b!2853757 c!459974) b!2853758))

(assert (= (and b!2853757 (not c!459974)) b!2853760))

(assert (= (and b!2853760 c!459972) b!2853762))

(assert (= (and b!2853760 (not c!459972)) b!2853755))

(assert (= (and b!2853755 c!459968) b!2853751))

(assert (= (and b!2853755 (not c!459968)) b!2853761))

(assert (= (and b!2853751 c!459973) b!2853764))

(assert (= (and b!2853751 (not c!459973)) b!2853763))

(assert (= (and b!2853761 c!459970) b!2853753))

(assert (= (and b!2853761 (not c!459970)) b!2853756))

(assert (= (and b!2853753 c!459975) b!2853759))

(assert (= (and b!2853753 (not c!459975)) b!2853754))

(assert (= (or b!2853751 b!2853753) bm!183782))

(assert (= (or b!2853763 b!2853761) bm!183781))

(declare-fun m!3278147 () Bool)

(assert (=> bm!183781 m!3278147))

(declare-fun m!3278149 () Bool)

(assert (=> b!2853759 m!3278149))

(declare-fun m!3278151 () Bool)

(assert (=> bm!183782 m!3278151))

(assert (=> b!2853646 d!826261))

(declare-fun b!2853770 () Bool)

(declare-fun e!1807993 () Bool)

(declare-fun tp!917307 () Bool)

(assert (=> b!2853770 (= e!1807993 (and tp_is_empty!14871 tp!917307))))

(assert (=> b!2853647 (= tp!917300 e!1807993)))

(assert (= (and b!2853647 ((_ is Cons!34040) (t!233195 prefix!1470))) b!2853770))

(declare-fun b!2853784 () Bool)

(declare-fun e!1807996 () Bool)

(declare-fun tp!917322 () Bool)

(declare-fun tp!917320 () Bool)

(assert (=> b!2853784 (= e!1807996 (and tp!917322 tp!917320))))

(declare-fun b!2853781 () Bool)

(assert (=> b!2853781 (= e!1807996 tp_is_empty!14871)))

(declare-fun b!2853783 () Bool)

(declare-fun tp!917318 () Bool)

(assert (=> b!2853783 (= e!1807996 tp!917318)))

(declare-fun b!2853782 () Bool)

(declare-fun tp!917321 () Bool)

(declare-fun tp!917319 () Bool)

(assert (=> b!2853782 (= e!1807996 (and tp!917321 tp!917319))))

(assert (=> b!2853649 (= tp!917301 e!1807996)))

(assert (= (and b!2853649 ((_ is ElementMatch!8567) (regOne!17646 r!23423))) b!2853781))

(assert (= (and b!2853649 ((_ is Concat!13888) (regOne!17646 r!23423))) b!2853782))

(assert (= (and b!2853649 ((_ is Star!8567) (regOne!17646 r!23423))) b!2853783))

(assert (= (and b!2853649 ((_ is Union!8567) (regOne!17646 r!23423))) b!2853784))

(declare-fun b!2853788 () Bool)

(declare-fun e!1807997 () Bool)

(declare-fun tp!917327 () Bool)

(declare-fun tp!917325 () Bool)

(assert (=> b!2853788 (= e!1807997 (and tp!917327 tp!917325))))

(declare-fun b!2853785 () Bool)

(assert (=> b!2853785 (= e!1807997 tp_is_empty!14871)))

(declare-fun b!2853787 () Bool)

(declare-fun tp!917323 () Bool)

(assert (=> b!2853787 (= e!1807997 tp!917323)))

(declare-fun b!2853786 () Bool)

(declare-fun tp!917326 () Bool)

(declare-fun tp!917324 () Bool)

(assert (=> b!2853786 (= e!1807997 (and tp!917326 tp!917324))))

(assert (=> b!2853649 (= tp!917303 e!1807997)))

(assert (= (and b!2853649 ((_ is ElementMatch!8567) (regTwo!17646 r!23423))) b!2853785))

(assert (= (and b!2853649 ((_ is Concat!13888) (regTwo!17646 r!23423))) b!2853786))

(assert (= (and b!2853649 ((_ is Star!8567) (regTwo!17646 r!23423))) b!2853787))

(assert (= (and b!2853649 ((_ is Union!8567) (regTwo!17646 r!23423))) b!2853788))

(declare-fun b!2853792 () Bool)

(declare-fun e!1807998 () Bool)

(declare-fun tp!917332 () Bool)

(declare-fun tp!917330 () Bool)

(assert (=> b!2853792 (= e!1807998 (and tp!917332 tp!917330))))

(declare-fun b!2853789 () Bool)

(assert (=> b!2853789 (= e!1807998 tp_is_empty!14871)))

(declare-fun b!2853791 () Bool)

(declare-fun tp!917328 () Bool)

(assert (=> b!2853791 (= e!1807998 tp!917328)))

(declare-fun b!2853790 () Bool)

(declare-fun tp!917331 () Bool)

(declare-fun tp!917329 () Bool)

(assert (=> b!2853790 (= e!1807998 (and tp!917331 tp!917329))))

(assert (=> b!2853648 (= tp!917304 e!1807998)))

(assert (= (and b!2853648 ((_ is ElementMatch!8567) (regOne!17647 r!23423))) b!2853789))

(assert (= (and b!2853648 ((_ is Concat!13888) (regOne!17647 r!23423))) b!2853790))

(assert (= (and b!2853648 ((_ is Star!8567) (regOne!17647 r!23423))) b!2853791))

(assert (= (and b!2853648 ((_ is Union!8567) (regOne!17647 r!23423))) b!2853792))

(declare-fun b!2853796 () Bool)

(declare-fun e!1807999 () Bool)

(declare-fun tp!917337 () Bool)

(declare-fun tp!917335 () Bool)

(assert (=> b!2853796 (= e!1807999 (and tp!917337 tp!917335))))

(declare-fun b!2853793 () Bool)

(assert (=> b!2853793 (= e!1807999 tp_is_empty!14871)))

(declare-fun b!2853795 () Bool)

(declare-fun tp!917333 () Bool)

(assert (=> b!2853795 (= e!1807999 tp!917333)))

(declare-fun b!2853794 () Bool)

(declare-fun tp!917336 () Bool)

(declare-fun tp!917334 () Bool)

(assert (=> b!2853794 (= e!1807999 (and tp!917336 tp!917334))))

(assert (=> b!2853648 (= tp!917302 e!1807999)))

(assert (= (and b!2853648 ((_ is ElementMatch!8567) (regTwo!17647 r!23423))) b!2853793))

(assert (= (and b!2853648 ((_ is Concat!13888) (regTwo!17647 r!23423))) b!2853794))

(assert (= (and b!2853648 ((_ is Star!8567) (regTwo!17647 r!23423))) b!2853795))

(assert (= (and b!2853648 ((_ is Union!8567) (regTwo!17647 r!23423))) b!2853796))

(declare-fun b!2853800 () Bool)

(declare-fun e!1808000 () Bool)

(declare-fun tp!917342 () Bool)

(declare-fun tp!917340 () Bool)

(assert (=> b!2853800 (= e!1808000 (and tp!917342 tp!917340))))

(declare-fun b!2853797 () Bool)

(assert (=> b!2853797 (= e!1808000 tp_is_empty!14871)))

(declare-fun b!2853799 () Bool)

(declare-fun tp!917338 () Bool)

(assert (=> b!2853799 (= e!1808000 tp!917338)))

(declare-fun b!2853798 () Bool)

(declare-fun tp!917341 () Bool)

(declare-fun tp!917339 () Bool)

(assert (=> b!2853798 (= e!1808000 (and tp!917341 tp!917339))))

(assert (=> b!2853651 (= tp!917299 e!1808000)))

(assert (= (and b!2853651 ((_ is ElementMatch!8567) (reg!8896 r!23423))) b!2853797))

(assert (= (and b!2853651 ((_ is Concat!13888) (reg!8896 r!23423))) b!2853798))

(assert (= (and b!2853651 ((_ is Star!8567) (reg!8896 r!23423))) b!2853799))

(assert (= (and b!2853651 ((_ is Union!8567) (reg!8896 r!23423))) b!2853800))

(check-sat (not bm!183772) (not b!2853787) (not b!2853770) (not b!2853800) (not bm!183782) (not b!2853759) (not b!2853791) (not b!2853786) (not b!2853799) (not b!2853798) (not b!2853783) (not d!826257) (not b!2853677) (not bm!183770) (not b!2853792) (not b!2853796) (not b!2853794) (not b!2853782) (not b!2853788) (not b!2853790) (not bm!183781) (not b!2853685) (not d!826259) (not b!2853795) (not b!2853784) tp_is_empty!14871 (not b!2853684))
(check-sat)
(get-model)

(declare-fun d!826267 () Bool)

(assert (=> d!826267 (= (isEmpty!18593 (getLanguageWitness!235 r!23423)) (not ((_ is Some!6303) (getLanguageWitness!235 r!23423))))))

(assert (=> d!826259 d!826267))

(declare-fun d!826269 () Bool)

(declare-fun e!1808047 () Bool)

(assert (=> d!826269 e!1808047))

(declare-fun res!1186253 () Bool)

(assert (=> d!826269 (=> (not res!1186253) (not e!1808047))))

(declare-fun lt!1013818 () List!34164)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4666 (List!34164) (InoxSet C!17316))

(assert (=> d!826269 (= res!1186253 (= (content!4666 lt!1013818) ((_ map or) (content!4666 (v!34425 lt!1013812)) (content!4666 (v!34425 lt!1013810)))))))

(declare-fun e!1808048 () List!34164)

(assert (=> d!826269 (= lt!1013818 e!1808048)))

(declare-fun c!459995 () Bool)

(assert (=> d!826269 (= c!459995 ((_ is Nil!34040) (v!34425 lt!1013812)))))

(assert (=> d!826269 (= (++!8128 (v!34425 lt!1013812) (v!34425 lt!1013810)) lt!1013818)))

(declare-fun b!2853894 () Bool)

(assert (=> b!2853894 (= e!1808048 (Cons!34040 (h!39460 (v!34425 lt!1013812)) (++!8128 (t!233195 (v!34425 lt!1013812)) (v!34425 lt!1013810))))))

(declare-fun b!2853895 () Bool)

(declare-fun res!1186254 () Bool)

(assert (=> b!2853895 (=> (not res!1186254) (not e!1808047))))

(declare-fun size!26271 (List!34164) Int)

(assert (=> b!2853895 (= res!1186254 (= (size!26271 lt!1013818) (+ (size!26271 (v!34425 lt!1013812)) (size!26271 (v!34425 lt!1013810)))))))

(declare-fun b!2853896 () Bool)

(assert (=> b!2853896 (= e!1808047 (or (not (= (v!34425 lt!1013810) Nil!34040)) (= lt!1013818 (v!34425 lt!1013812))))))

(declare-fun b!2853893 () Bool)

(assert (=> b!2853893 (= e!1808048 (v!34425 lt!1013810))))

(assert (= (and d!826269 c!459995) b!2853893))

(assert (= (and d!826269 (not c!459995)) b!2853894))

(assert (= (and d!826269 res!1186253) b!2853895))

(assert (= (and b!2853895 res!1186254) b!2853896))

(declare-fun m!3278177 () Bool)

(assert (=> d!826269 m!3278177))

(declare-fun m!3278179 () Bool)

(assert (=> d!826269 m!3278179))

(declare-fun m!3278181 () Bool)

(assert (=> d!826269 m!3278181))

(declare-fun m!3278183 () Bool)

(assert (=> b!2853894 m!3278183))

(declare-fun m!3278185 () Bool)

(assert (=> b!2853895 m!3278185))

(declare-fun m!3278187 () Bool)

(assert (=> b!2853895 m!3278187))

(declare-fun m!3278189 () Bool)

(assert (=> b!2853895 m!3278189))

(assert (=> b!2853759 d!826269))

(declare-fun d!826271 () Bool)

(declare-fun lostCauseFct!215 (Regex!8567) Bool)

(assert (=> d!826271 (= (lostCause!740 r!23423) (lostCauseFct!215 r!23423))))

(declare-fun bs!520231 () Bool)

(assert (= bs!520231 d!826271))

(declare-fun m!3278191 () Bool)

(assert (=> bs!520231 m!3278191))

(assert (=> b!2853684 d!826271))

(declare-fun c!459996 () Bool)

(declare-fun bm!183794 () Bool)

(declare-fun call!183801 () Bool)

(declare-fun c!459997 () Bool)

(assert (=> bm!183794 (= call!183801 (validRegex!3437 (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))))

(declare-fun b!2853898 () Bool)

(declare-fun e!1808055 () Bool)

(declare-fun e!1808051 () Bool)

(assert (=> b!2853898 (= e!1808055 e!1808051)))

(assert (=> b!2853898 (= c!459996 ((_ is Union!8567) (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))

(declare-fun b!2853899 () Bool)

(declare-fun e!1808050 () Bool)

(assert (=> b!2853899 (= e!1808050 call!183801)))

(declare-fun b!2853900 () Bool)

(declare-fun res!1186255 () Bool)

(declare-fun e!1808054 () Bool)

(assert (=> b!2853900 (=> res!1186255 e!1808054)))

(assert (=> b!2853900 (= res!1186255 (not ((_ is Concat!13888) (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))

(assert (=> b!2853900 (= e!1808051 e!1808054)))

(declare-fun bm!183795 () Bool)

(declare-fun call!183799 () Bool)

(assert (=> bm!183795 (= call!183799 call!183801)))

(declare-fun b!2853897 () Bool)

(declare-fun res!1186257 () Bool)

(declare-fun e!1808053 () Bool)

(assert (=> b!2853897 (=> (not res!1186257) (not e!1808053))))

(declare-fun call!183800 () Bool)

(assert (=> b!2853897 (= res!1186257 call!183800)))

(assert (=> b!2853897 (= e!1808051 e!1808053)))

(declare-fun d!826273 () Bool)

(declare-fun res!1186259 () Bool)

(declare-fun e!1808049 () Bool)

(assert (=> d!826273 (=> res!1186259 e!1808049)))

(assert (=> d!826273 (= res!1186259 ((_ is ElementMatch!8567) (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))

(assert (=> d!826273 (= (validRegex!3437 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) e!1808049)))

(declare-fun b!2853901 () Bool)

(declare-fun e!1808052 () Bool)

(assert (=> b!2853901 (= e!1808054 e!1808052)))

(declare-fun res!1186258 () Bool)

(assert (=> b!2853901 (=> (not res!1186258) (not e!1808052))))

(assert (=> b!2853901 (= res!1186258 call!183800)))

(declare-fun b!2853902 () Bool)

(assert (=> b!2853902 (= e!1808053 call!183799)))

(declare-fun bm!183796 () Bool)

(assert (=> bm!183796 (= call!183800 (validRegex!3437 (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))

(declare-fun b!2853903 () Bool)

(assert (=> b!2853903 (= e!1808055 e!1808050)))

(declare-fun res!1186256 () Bool)

(assert (=> b!2853903 (= res!1186256 (not (nullable!2641 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))

(assert (=> b!2853903 (=> (not res!1186256) (not e!1808050))))

(declare-fun b!2853904 () Bool)

(assert (=> b!2853904 (= e!1808049 e!1808055)))

(assert (=> b!2853904 (= c!459997 ((_ is Star!8567) (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))

(declare-fun b!2853905 () Bool)

(assert (=> b!2853905 (= e!1808052 call!183799)))

(assert (= (and d!826273 (not res!1186259)) b!2853904))

(assert (= (and b!2853904 c!459997) b!2853903))

(assert (= (and b!2853904 (not c!459997)) b!2853898))

(assert (= (and b!2853903 res!1186256) b!2853899))

(assert (= (and b!2853898 c!459996) b!2853897))

(assert (= (and b!2853898 (not c!459996)) b!2853900))

(assert (= (and b!2853897 res!1186257) b!2853902))

(assert (= (and b!2853900 (not res!1186255)) b!2853901))

(assert (= (and b!2853901 res!1186258) b!2853905))

(assert (= (or b!2853902 b!2853905) bm!183795))

(assert (= (or b!2853897 b!2853901) bm!183796))

(assert (= (or b!2853899 bm!183795) bm!183794))

(declare-fun m!3278193 () Bool)

(assert (=> bm!183794 m!3278193))

(declare-fun m!3278195 () Bool)

(assert (=> bm!183796 m!3278195))

(declare-fun m!3278197 () Bool)

(assert (=> b!2853903 m!3278197))

(assert (=> bm!183770 d!826273))

(declare-fun b!2853906 () Bool)

(declare-fun e!1808056 () Option!6304)

(assert (=> b!2853906 (= e!1808056 (Some!6303 Nil!34040))))

(declare-fun b!2853907 () Bool)

(declare-fun e!1808058 () Option!6304)

(declare-fun e!1808061 () Option!6304)

(assert (=> b!2853907 (= e!1808058 e!1808061)))

(declare-fun lt!1013820 () Option!6304)

(declare-fun call!183802 () Option!6304)

(assert (=> b!2853907 (= lt!1013820 call!183802)))

(declare-fun c!460003 () Bool)

(assert (=> b!2853907 (= c!460003 ((_ is Some!6303) lt!1013820))))

(declare-fun d!826275 () Bool)

(declare-fun c!460001 () Bool)

(assert (=> d!826275 (= c!460001 ((_ is EmptyExpr!8567) (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))

(assert (=> d!826275 (= (getLanguageWitness!235 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) e!1808056)))

(declare-fun b!2853908 () Bool)

(declare-fun e!1808060 () Option!6304)

(assert (=> b!2853908 (= e!1808060 None!6303)))

(declare-fun b!2853909 () Bool)

(declare-fun c!460005 () Bool)

(declare-fun lt!1013819 () Option!6304)

(assert (=> b!2853909 (= c!460005 ((_ is Some!6303) lt!1013819))))

(assert (=> b!2853909 (= lt!1013819 call!183802)))

(declare-fun e!1808059 () Option!6304)

(declare-fun e!1808063 () Option!6304)

(assert (=> b!2853909 (= e!1808059 e!1808063)))

(declare-fun b!2853910 () Bool)

(assert (=> b!2853910 (= e!1808063 None!6303)))

(declare-fun b!2853911 () Bool)

(declare-fun c!459998 () Bool)

(assert (=> b!2853911 (= c!459998 ((_ is Union!8567) (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))

(declare-fun e!1808062 () Option!6304)

(assert (=> b!2853911 (= e!1808062 e!1808058)))

(declare-fun b!2853912 () Bool)

(assert (=> b!2853912 (= e!1808059 None!6303)))

(declare-fun call!183803 () Option!6304)

(declare-fun bm!183797 () Bool)

(assert (=> bm!183797 (= call!183803 (getLanguageWitness!235 (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun b!2853913 () Bool)

(declare-fun c!460004 () Bool)

(assert (=> b!2853913 (= c!460004 ((_ is ElementMatch!8567) (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))

(declare-fun e!1808057 () Option!6304)

(assert (=> b!2853913 (= e!1808060 e!1808057)))

(declare-fun b!2853914 () Bool)

(assert (=> b!2853914 (= e!1808057 (Some!6303 (Cons!34040 (c!459926 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) Nil!34040)))))

(declare-fun b!2853915 () Bool)

(declare-fun lt!1013821 () Option!6304)

(assert (=> b!2853915 (= e!1808063 (Some!6303 (++!8128 (v!34425 lt!1013821) (v!34425 lt!1013819))))))

(declare-fun bm!183798 () Bool)

(assert (=> bm!183798 (= call!183802 (getLanguageWitness!235 (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun b!2853916 () Bool)

(assert (=> b!2853916 (= e!1808057 e!1808062)))

(declare-fun c!460002 () Bool)

(assert (=> b!2853916 (= c!460002 ((_ is Star!8567) (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))

(declare-fun b!2853917 () Bool)

(assert (=> b!2853917 (= e!1808058 e!1808059)))

(assert (=> b!2853917 (= lt!1013821 call!183803)))

(declare-fun c!460000 () Bool)

(assert (=> b!2853917 (= c!460000 ((_ is Some!6303) lt!1013821))))

(declare-fun b!2853918 () Bool)

(assert (=> b!2853918 (= e!1808062 (Some!6303 Nil!34040))))

(declare-fun b!2853919 () Bool)

(assert (=> b!2853919 (= e!1808061 call!183803)))

(declare-fun b!2853920 () Bool)

(assert (=> b!2853920 (= e!1808061 lt!1013820)))

(declare-fun b!2853921 () Bool)

(assert (=> b!2853921 (= e!1808056 e!1808060)))

(declare-fun c!459999 () Bool)

(assert (=> b!2853921 (= c!459999 ((_ is EmptyLang!8567) (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))

(assert (= (and d!826275 c!460001) b!2853906))

(assert (= (and d!826275 (not c!460001)) b!2853921))

(assert (= (and b!2853921 c!459999) b!2853908))

(assert (= (and b!2853921 (not c!459999)) b!2853913))

(assert (= (and b!2853913 c!460004) b!2853914))

(assert (= (and b!2853913 (not c!460004)) b!2853916))

(assert (= (and b!2853916 c!460002) b!2853918))

(assert (= (and b!2853916 (not c!460002)) b!2853911))

(assert (= (and b!2853911 c!459998) b!2853907))

(assert (= (and b!2853911 (not c!459998)) b!2853917))

(assert (= (and b!2853907 c!460003) b!2853920))

(assert (= (and b!2853907 (not c!460003)) b!2853919))

(assert (= (and b!2853917 c!460000) b!2853909))

(assert (= (and b!2853917 (not c!460000)) b!2853912))

(assert (= (and b!2853909 c!460005) b!2853915))

(assert (= (and b!2853909 (not c!460005)) b!2853910))

(assert (= (or b!2853907 b!2853909) bm!183798))

(assert (= (or b!2853919 b!2853917) bm!183797))

(declare-fun m!3278199 () Bool)

(assert (=> bm!183797 m!3278199))

(declare-fun m!3278201 () Bool)

(assert (=> b!2853915 m!3278201))

(declare-fun m!3278203 () Bool)

(assert (=> bm!183798 m!3278203))

(assert (=> bm!183782 d!826275))

(declare-fun d!826277 () Bool)

(declare-fun c!460006 () Bool)

(assert (=> d!826277 (= c!460006 (isEmpty!18592 (tail!4494 prefix!1470)))))

(declare-fun e!1808064 () Bool)

(assert (=> d!826277 (= (prefixMatch!875 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)) (tail!4494 prefix!1470)) e!1808064)))

(declare-fun b!2853922 () Bool)

(assert (=> b!2853922 (= e!1808064 (not (lostCause!740 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)))))))

(declare-fun b!2853923 () Bool)

(assert (=> b!2853923 (= e!1808064 (prefixMatch!875 (derivativeStep!2265 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)) (head!6269 (tail!4494 prefix!1470))) (tail!4494 (tail!4494 prefix!1470))))))

(assert (= (and d!826277 c!460006) b!2853922))

(assert (= (and d!826277 (not c!460006)) b!2853923))

(assert (=> d!826277 m!3278141))

(declare-fun m!3278205 () Bool)

(assert (=> d!826277 m!3278205))

(assert (=> b!2853922 m!3278139))

(declare-fun m!3278207 () Bool)

(assert (=> b!2853922 m!3278207))

(assert (=> b!2853923 m!3278141))

(declare-fun m!3278209 () Bool)

(assert (=> b!2853923 m!3278209))

(assert (=> b!2853923 m!3278139))

(assert (=> b!2853923 m!3278209))

(declare-fun m!3278211 () Bool)

(assert (=> b!2853923 m!3278211))

(assert (=> b!2853923 m!3278141))

(declare-fun m!3278213 () Bool)

(assert (=> b!2853923 m!3278213))

(assert (=> b!2853923 m!3278211))

(assert (=> b!2853923 m!3278213))

(declare-fun m!3278215 () Bool)

(assert (=> b!2853923 m!3278215))

(assert (=> b!2853685 d!826277))

(declare-fun b!2853944 () Bool)

(declare-fun e!1808079 () Regex!8567)

(assert (=> b!2853944 (= e!1808079 EmptyLang!8567)))

(declare-fun b!2853945 () Bool)

(declare-fun e!1808076 () Regex!8567)

(declare-fun call!183813 () Regex!8567)

(declare-fun call!183814 () Regex!8567)

(assert (=> b!2853945 (= e!1808076 (Union!8567 (Concat!13888 call!183813 (regTwo!17646 r!23423)) call!183814))))

(declare-fun c!460018 () Bool)

(declare-fun bm!183807 () Bool)

(declare-fun c!460019 () Bool)

(declare-fun call!183812 () Regex!8567)

(assert (=> bm!183807 (= call!183812 (derivativeStep!2265 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423))) (head!6269 prefix!1470)))))

(declare-fun b!2853946 () Bool)

(declare-fun c!460017 () Bool)

(assert (=> b!2853946 (= c!460017 (nullable!2641 (regOne!17646 r!23423)))))

(declare-fun e!1808078 () Regex!8567)

(assert (=> b!2853946 (= e!1808078 e!1808076)))

(declare-fun b!2853947 () Bool)

(declare-fun e!1808075 () Regex!8567)

(assert (=> b!2853947 (= e!1808079 e!1808075)))

(declare-fun c!460021 () Bool)

(assert (=> b!2853947 (= c!460021 ((_ is ElementMatch!8567) r!23423))))

(declare-fun b!2853948 () Bool)

(declare-fun e!1808077 () Regex!8567)

(assert (=> b!2853948 (= e!1808077 e!1808078)))

(assert (=> b!2853948 (= c!460019 ((_ is Star!8567) r!23423))))

(declare-fun b!2853949 () Bool)

(assert (=> b!2853949 (= e!1808078 (Concat!13888 call!183813 r!23423))))

(declare-fun bm!183809 () Bool)

(declare-fun call!183815 () Regex!8567)

(assert (=> bm!183809 (= call!183814 call!183815)))

(declare-fun b!2853950 () Bool)

(assert (=> b!2853950 (= e!1808076 (Union!8567 (Concat!13888 call!183814 (regTwo!17646 r!23423)) EmptyLang!8567))))

(declare-fun b!2853951 () Bool)

(assert (=> b!2853951 (= e!1808075 (ite (= (head!6269 prefix!1470) (c!459926 r!23423)) EmptyExpr!8567 EmptyLang!8567))))

(declare-fun bm!183808 () Bool)

(assert (=> bm!183808 (= call!183813 call!183812)))

(declare-fun d!826279 () Bool)

(declare-fun lt!1013824 () Regex!8567)

(assert (=> d!826279 (validRegex!3437 lt!1013824)))

(assert (=> d!826279 (= lt!1013824 e!1808079)))

(declare-fun c!460020 () Bool)

(assert (=> d!826279 (= c!460020 (or ((_ is EmptyExpr!8567) r!23423) ((_ is EmptyLang!8567) r!23423)))))

(assert (=> d!826279 (validRegex!3437 r!23423)))

(assert (=> d!826279 (= (derivativeStep!2265 r!23423 (head!6269 prefix!1470)) lt!1013824)))

(declare-fun b!2853952 () Bool)

(assert (=> b!2853952 (= c!460018 ((_ is Union!8567) r!23423))))

(assert (=> b!2853952 (= e!1808075 e!1808077)))

(declare-fun bm!183810 () Bool)

(assert (=> bm!183810 (= call!183815 (derivativeStep!2265 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423))) (head!6269 prefix!1470)))))

(declare-fun b!2853953 () Bool)

(assert (=> b!2853953 (= e!1808077 (Union!8567 call!183815 call!183812))))

(assert (= (and d!826279 c!460020) b!2853944))

(assert (= (and d!826279 (not c!460020)) b!2853947))

(assert (= (and b!2853947 c!460021) b!2853951))

(assert (= (and b!2853947 (not c!460021)) b!2853952))

(assert (= (and b!2853952 c!460018) b!2853953))

(assert (= (and b!2853952 (not c!460018)) b!2853948))

(assert (= (and b!2853948 c!460019) b!2853949))

(assert (= (and b!2853948 (not c!460019)) b!2853946))

(assert (= (and b!2853946 c!460017) b!2853945))

(assert (= (and b!2853946 (not c!460017)) b!2853950))

(assert (= (or b!2853945 b!2853950) bm!183809))

(assert (= (or b!2853949 b!2853945) bm!183808))

(assert (= (or b!2853953 bm!183808) bm!183807))

(assert (= (or b!2853953 bm!183809) bm!183810))

(assert (=> bm!183807 m!3278137))

(declare-fun m!3278217 () Bool)

(assert (=> bm!183807 m!3278217))

(declare-fun m!3278219 () Bool)

(assert (=> b!2853946 m!3278219))

(declare-fun m!3278221 () Bool)

(assert (=> d!826279 m!3278221))

(assert (=> d!826279 m!3278117))

(assert (=> bm!183810 m!3278137))

(declare-fun m!3278223 () Bool)

(assert (=> bm!183810 m!3278223))

(assert (=> b!2853685 d!826279))

(declare-fun d!826281 () Bool)

(assert (=> d!826281 (= (head!6269 prefix!1470) (h!39460 prefix!1470))))

(assert (=> b!2853685 d!826281))

(declare-fun d!826283 () Bool)

(assert (=> d!826283 (= (tail!4494 prefix!1470) (t!233195 prefix!1470))))

(assert (=> b!2853685 d!826283))

(declare-fun d!826285 () Bool)

(assert (=> d!826285 (= (isEmpty!18592 prefix!1470) ((_ is Nil!34040) prefix!1470))))

(assert (=> d!826257 d!826285))

(declare-fun call!183818 () Bool)

(declare-fun bm!183811 () Bool)

(declare-fun c!460023 () Bool)

(declare-fun c!460022 () Bool)

(assert (=> bm!183811 (= call!183818 (validRegex!3437 (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))))

(declare-fun b!2853955 () Bool)

(declare-fun e!1808086 () Bool)

(declare-fun e!1808082 () Bool)

(assert (=> b!2853955 (= e!1808086 e!1808082)))

(assert (=> b!2853955 (= c!460022 ((_ is Union!8567) (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))

(declare-fun b!2853956 () Bool)

(declare-fun e!1808081 () Bool)

(assert (=> b!2853956 (= e!1808081 call!183818)))

(declare-fun b!2853957 () Bool)

(declare-fun res!1186260 () Bool)

(declare-fun e!1808085 () Bool)

(assert (=> b!2853957 (=> res!1186260 e!1808085)))

(assert (=> b!2853957 (= res!1186260 (not ((_ is Concat!13888) (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))

(assert (=> b!2853957 (= e!1808082 e!1808085)))

(declare-fun bm!183812 () Bool)

(declare-fun call!183816 () Bool)

(assert (=> bm!183812 (= call!183816 call!183818)))

(declare-fun b!2853954 () Bool)

(declare-fun res!1186262 () Bool)

(declare-fun e!1808084 () Bool)

(assert (=> b!2853954 (=> (not res!1186262) (not e!1808084))))

(declare-fun call!183817 () Bool)

(assert (=> b!2853954 (= res!1186262 call!183817)))

(assert (=> b!2853954 (= e!1808082 e!1808084)))

(declare-fun d!826287 () Bool)

(declare-fun res!1186264 () Bool)

(declare-fun e!1808080 () Bool)

(assert (=> d!826287 (=> res!1186264 e!1808080)))

(assert (=> d!826287 (= res!1186264 ((_ is ElementMatch!8567) (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))

(assert (=> d!826287 (= (validRegex!3437 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) e!1808080)))

(declare-fun b!2853958 () Bool)

(declare-fun e!1808083 () Bool)

(assert (=> b!2853958 (= e!1808085 e!1808083)))

(declare-fun res!1186263 () Bool)

(assert (=> b!2853958 (=> (not res!1186263) (not e!1808083))))

(assert (=> b!2853958 (= res!1186263 call!183817)))

(declare-fun b!2853959 () Bool)

(assert (=> b!2853959 (= e!1808084 call!183816)))

(declare-fun bm!183813 () Bool)

(assert (=> bm!183813 (= call!183817 (validRegex!3437 (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun b!2853960 () Bool)

(assert (=> b!2853960 (= e!1808086 e!1808081)))

(declare-fun res!1186261 () Bool)

(assert (=> b!2853960 (= res!1186261 (not (nullable!2641 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))

(assert (=> b!2853960 (=> (not res!1186261) (not e!1808081))))

(declare-fun b!2853961 () Bool)

(assert (=> b!2853961 (= e!1808080 e!1808086)))

(assert (=> b!2853961 (= c!460023 ((_ is Star!8567) (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))

(declare-fun b!2853962 () Bool)

(assert (=> b!2853962 (= e!1808083 call!183816)))

(assert (= (and d!826287 (not res!1186264)) b!2853961))

(assert (= (and b!2853961 c!460023) b!2853960))

(assert (= (and b!2853961 (not c!460023)) b!2853955))

(assert (= (and b!2853960 res!1186261) b!2853956))

(assert (= (and b!2853955 c!460022) b!2853954))

(assert (= (and b!2853955 (not c!460022)) b!2853957))

(assert (= (and b!2853954 res!1186262) b!2853959))

(assert (= (and b!2853957 (not res!1186260)) b!2853958))

(assert (= (and b!2853958 res!1186263) b!2853962))

(assert (= (or b!2853959 b!2853962) bm!183812))

(assert (= (or b!2853954 b!2853958) bm!183813))

(assert (= (or b!2853956 bm!183812) bm!183811))

(declare-fun m!3278225 () Bool)

(assert (=> bm!183811 m!3278225))

(declare-fun m!3278227 () Bool)

(assert (=> bm!183813 m!3278227))

(declare-fun m!3278229 () Bool)

(assert (=> b!2853960 m!3278229))

(assert (=> bm!183772 d!826287))

(declare-fun b!2853963 () Bool)

(declare-fun e!1808087 () Option!6304)

(assert (=> b!2853963 (= e!1808087 (Some!6303 Nil!34040))))

(declare-fun b!2853964 () Bool)

(declare-fun e!1808089 () Option!6304)

(declare-fun e!1808092 () Option!6304)

(assert (=> b!2853964 (= e!1808089 e!1808092)))

(declare-fun lt!1013826 () Option!6304)

(declare-fun call!183819 () Option!6304)

(assert (=> b!2853964 (= lt!1013826 call!183819)))

(declare-fun c!460029 () Bool)

(assert (=> b!2853964 (= c!460029 ((_ is Some!6303) lt!1013826))))

(declare-fun d!826289 () Bool)

(declare-fun c!460027 () Bool)

(assert (=> d!826289 (= c!460027 ((_ is EmptyExpr!8567) (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))

(assert (=> d!826289 (= (getLanguageWitness!235 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) e!1808087)))

(declare-fun b!2853965 () Bool)

(declare-fun e!1808091 () Option!6304)

(assert (=> b!2853965 (= e!1808091 None!6303)))

(declare-fun b!2853966 () Bool)

(declare-fun c!460031 () Bool)

(declare-fun lt!1013825 () Option!6304)

(assert (=> b!2853966 (= c!460031 ((_ is Some!6303) lt!1013825))))

(assert (=> b!2853966 (= lt!1013825 call!183819)))

(declare-fun e!1808090 () Option!6304)

(declare-fun e!1808094 () Option!6304)

(assert (=> b!2853966 (= e!1808090 e!1808094)))

(declare-fun b!2853967 () Bool)

(assert (=> b!2853967 (= e!1808094 None!6303)))

(declare-fun b!2853968 () Bool)

(declare-fun c!460024 () Bool)

(assert (=> b!2853968 (= c!460024 ((_ is Union!8567) (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))

(declare-fun e!1808093 () Option!6304)

(assert (=> b!2853968 (= e!1808093 e!1808089)))

(declare-fun b!2853969 () Bool)

(assert (=> b!2853969 (= e!1808090 None!6303)))

(declare-fun bm!183814 () Bool)

(declare-fun call!183820 () Option!6304)

(assert (=> bm!183814 (= call!183820 (getLanguageWitness!235 (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun b!2853970 () Bool)

(declare-fun c!460030 () Bool)

(assert (=> b!2853970 (= c!460030 ((_ is ElementMatch!8567) (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))

(declare-fun e!1808088 () Option!6304)

(assert (=> b!2853970 (= e!1808091 e!1808088)))

(declare-fun b!2853971 () Bool)

(assert (=> b!2853971 (= e!1808088 (Some!6303 (Cons!34040 (c!459926 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) Nil!34040)))))

(declare-fun b!2853972 () Bool)

(declare-fun lt!1013827 () Option!6304)

(assert (=> b!2853972 (= e!1808094 (Some!6303 (++!8128 (v!34425 lt!1013827) (v!34425 lt!1013825))))))

(declare-fun bm!183815 () Bool)

(assert (=> bm!183815 (= call!183819 (getLanguageWitness!235 (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun b!2853973 () Bool)

(assert (=> b!2853973 (= e!1808088 e!1808093)))

(declare-fun c!460028 () Bool)

(assert (=> b!2853973 (= c!460028 ((_ is Star!8567) (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))

(declare-fun b!2853974 () Bool)

(assert (=> b!2853974 (= e!1808089 e!1808090)))

(assert (=> b!2853974 (= lt!1013827 call!183820)))

(declare-fun c!460026 () Bool)

(assert (=> b!2853974 (= c!460026 ((_ is Some!6303) lt!1013827))))

(declare-fun b!2853975 () Bool)

(assert (=> b!2853975 (= e!1808093 (Some!6303 Nil!34040))))

(declare-fun b!2853976 () Bool)

(assert (=> b!2853976 (= e!1808092 call!183820)))

(declare-fun b!2853977 () Bool)

(assert (=> b!2853977 (= e!1808092 lt!1013826)))

(declare-fun b!2853978 () Bool)

(assert (=> b!2853978 (= e!1808087 e!1808091)))

(declare-fun c!460025 () Bool)

(assert (=> b!2853978 (= c!460025 ((_ is EmptyLang!8567) (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))

(assert (= (and d!826289 c!460027) b!2853963))

(assert (= (and d!826289 (not c!460027)) b!2853978))

(assert (= (and b!2853978 c!460025) b!2853965))

(assert (= (and b!2853978 (not c!460025)) b!2853970))

(assert (= (and b!2853970 c!460030) b!2853971))

(assert (= (and b!2853970 (not c!460030)) b!2853973))

(assert (= (and b!2853973 c!460028) b!2853975))

(assert (= (and b!2853973 (not c!460028)) b!2853968))

(assert (= (and b!2853968 c!460024) b!2853964))

(assert (= (and b!2853968 (not c!460024)) b!2853974))

(assert (= (and b!2853964 c!460029) b!2853977))

(assert (= (and b!2853964 (not c!460029)) b!2853976))

(assert (= (and b!2853974 c!460026) b!2853966))

(assert (= (and b!2853974 (not c!460026)) b!2853969))

(assert (= (and b!2853966 c!460031) b!2853972))

(assert (= (and b!2853966 (not c!460031)) b!2853967))

(assert (= (or b!2853964 b!2853966) bm!183815))

(assert (= (or b!2853976 b!2853974) bm!183814))

(declare-fun m!3278231 () Bool)

(assert (=> bm!183814 m!3278231))

(declare-fun m!3278233 () Bool)

(assert (=> b!2853972 m!3278233))

(declare-fun m!3278235 () Bool)

(assert (=> bm!183815 m!3278235))

(assert (=> bm!183781 d!826289))

(declare-fun d!826291 () Bool)

(declare-fun nullableFct!799 (Regex!8567) Bool)

(assert (=> d!826291 (= (nullable!2641 (reg!8896 r!23423)) (nullableFct!799 (reg!8896 r!23423)))))

(declare-fun bs!520232 () Bool)

(assert (= bs!520232 d!826291))

(declare-fun m!3278237 () Bool)

(assert (=> bs!520232 m!3278237))

(assert (=> b!2853677 d!826291))

(declare-fun b!2853982 () Bool)

(declare-fun e!1808095 () Bool)

(declare-fun tp!917385 () Bool)

(declare-fun tp!917383 () Bool)

(assert (=> b!2853982 (= e!1808095 (and tp!917385 tp!917383))))

(declare-fun b!2853979 () Bool)

(assert (=> b!2853979 (= e!1808095 tp_is_empty!14871)))

(declare-fun b!2853981 () Bool)

(declare-fun tp!917381 () Bool)

(assert (=> b!2853981 (= e!1808095 tp!917381)))

(declare-fun b!2853980 () Bool)

(declare-fun tp!917384 () Bool)

(declare-fun tp!917382 () Bool)

(assert (=> b!2853980 (= e!1808095 (and tp!917384 tp!917382))))

(assert (=> b!2853798 (= tp!917341 e!1808095)))

(assert (= (and b!2853798 ((_ is ElementMatch!8567) (regOne!17646 (reg!8896 r!23423)))) b!2853979))

(assert (= (and b!2853798 ((_ is Concat!13888) (regOne!17646 (reg!8896 r!23423)))) b!2853980))

(assert (= (and b!2853798 ((_ is Star!8567) (regOne!17646 (reg!8896 r!23423)))) b!2853981))

(assert (= (and b!2853798 ((_ is Union!8567) (regOne!17646 (reg!8896 r!23423)))) b!2853982))

(declare-fun b!2853986 () Bool)

(declare-fun e!1808096 () Bool)

(declare-fun tp!917390 () Bool)

(declare-fun tp!917388 () Bool)

(assert (=> b!2853986 (= e!1808096 (and tp!917390 tp!917388))))

(declare-fun b!2853983 () Bool)

(assert (=> b!2853983 (= e!1808096 tp_is_empty!14871)))

(declare-fun b!2853985 () Bool)

(declare-fun tp!917386 () Bool)

(assert (=> b!2853985 (= e!1808096 tp!917386)))

(declare-fun b!2853984 () Bool)

(declare-fun tp!917389 () Bool)

(declare-fun tp!917387 () Bool)

(assert (=> b!2853984 (= e!1808096 (and tp!917389 tp!917387))))

(assert (=> b!2853798 (= tp!917339 e!1808096)))

(assert (= (and b!2853798 ((_ is ElementMatch!8567) (regTwo!17646 (reg!8896 r!23423)))) b!2853983))

(assert (= (and b!2853798 ((_ is Concat!13888) (regTwo!17646 (reg!8896 r!23423)))) b!2853984))

(assert (= (and b!2853798 ((_ is Star!8567) (regTwo!17646 (reg!8896 r!23423)))) b!2853985))

(assert (= (and b!2853798 ((_ is Union!8567) (regTwo!17646 (reg!8896 r!23423)))) b!2853986))

(declare-fun b!2853990 () Bool)

(declare-fun e!1808097 () Bool)

(declare-fun tp!917395 () Bool)

(declare-fun tp!917393 () Bool)

(assert (=> b!2853990 (= e!1808097 (and tp!917395 tp!917393))))

(declare-fun b!2853987 () Bool)

(assert (=> b!2853987 (= e!1808097 tp_is_empty!14871)))

(declare-fun b!2853989 () Bool)

(declare-fun tp!917391 () Bool)

(assert (=> b!2853989 (= e!1808097 tp!917391)))

(declare-fun b!2853988 () Bool)

(declare-fun tp!917394 () Bool)

(declare-fun tp!917392 () Bool)

(assert (=> b!2853988 (= e!1808097 (and tp!917394 tp!917392))))

(assert (=> b!2853790 (= tp!917331 e!1808097)))

(assert (= (and b!2853790 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17647 r!23423)))) b!2853987))

(assert (= (and b!2853790 ((_ is Concat!13888) (regOne!17646 (regOne!17647 r!23423)))) b!2853988))

(assert (= (and b!2853790 ((_ is Star!8567) (regOne!17646 (regOne!17647 r!23423)))) b!2853989))

(assert (= (and b!2853790 ((_ is Union!8567) (regOne!17646 (regOne!17647 r!23423)))) b!2853990))

(declare-fun b!2853994 () Bool)

(declare-fun e!1808098 () Bool)

(declare-fun tp!917400 () Bool)

(declare-fun tp!917398 () Bool)

(assert (=> b!2853994 (= e!1808098 (and tp!917400 tp!917398))))

(declare-fun b!2853991 () Bool)

(assert (=> b!2853991 (= e!1808098 tp_is_empty!14871)))

(declare-fun b!2853993 () Bool)

(declare-fun tp!917396 () Bool)

(assert (=> b!2853993 (= e!1808098 tp!917396)))

(declare-fun b!2853992 () Bool)

(declare-fun tp!917399 () Bool)

(declare-fun tp!917397 () Bool)

(assert (=> b!2853992 (= e!1808098 (and tp!917399 tp!917397))))

(assert (=> b!2853790 (= tp!917329 e!1808098)))

(assert (= (and b!2853790 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17647 r!23423)))) b!2853991))

(assert (= (and b!2853790 ((_ is Concat!13888) (regTwo!17646 (regOne!17647 r!23423)))) b!2853992))

(assert (= (and b!2853790 ((_ is Star!8567) (regTwo!17646 (regOne!17647 r!23423)))) b!2853993))

(assert (= (and b!2853790 ((_ is Union!8567) (regTwo!17646 (regOne!17647 r!23423)))) b!2853994))

(declare-fun b!2853998 () Bool)

(declare-fun e!1808099 () Bool)

(declare-fun tp!917405 () Bool)

(declare-fun tp!917403 () Bool)

(assert (=> b!2853998 (= e!1808099 (and tp!917405 tp!917403))))

(declare-fun b!2853995 () Bool)

(assert (=> b!2853995 (= e!1808099 tp_is_empty!14871)))

(declare-fun b!2853997 () Bool)

(declare-fun tp!917401 () Bool)

(assert (=> b!2853997 (= e!1808099 tp!917401)))

(declare-fun b!2853996 () Bool)

(declare-fun tp!917404 () Bool)

(declare-fun tp!917402 () Bool)

(assert (=> b!2853996 (= e!1808099 (and tp!917404 tp!917402))))

(assert (=> b!2853799 (= tp!917338 e!1808099)))

(assert (= (and b!2853799 ((_ is ElementMatch!8567) (reg!8896 (reg!8896 r!23423)))) b!2853995))

(assert (= (and b!2853799 ((_ is Concat!13888) (reg!8896 (reg!8896 r!23423)))) b!2853996))

(assert (= (and b!2853799 ((_ is Star!8567) (reg!8896 (reg!8896 r!23423)))) b!2853997))

(assert (= (and b!2853799 ((_ is Union!8567) (reg!8896 (reg!8896 r!23423)))) b!2853998))

(declare-fun b!2854002 () Bool)

(declare-fun e!1808100 () Bool)

(declare-fun tp!917410 () Bool)

(declare-fun tp!917408 () Bool)

(assert (=> b!2854002 (= e!1808100 (and tp!917410 tp!917408))))

(declare-fun b!2853999 () Bool)

(assert (=> b!2853999 (= e!1808100 tp_is_empty!14871)))

(declare-fun b!2854001 () Bool)

(declare-fun tp!917406 () Bool)

(assert (=> b!2854001 (= e!1808100 tp!917406)))

(declare-fun b!2854000 () Bool)

(declare-fun tp!917409 () Bool)

(declare-fun tp!917407 () Bool)

(assert (=> b!2854000 (= e!1808100 (and tp!917409 tp!917407))))

(assert (=> b!2853794 (= tp!917336 e!1808100)))

(assert (= (and b!2853794 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17647 r!23423)))) b!2853999))

(assert (= (and b!2853794 ((_ is Concat!13888) (regOne!17646 (regTwo!17647 r!23423)))) b!2854000))

(assert (= (and b!2853794 ((_ is Star!8567) (regOne!17646 (regTwo!17647 r!23423)))) b!2854001))

(assert (= (and b!2853794 ((_ is Union!8567) (regOne!17646 (regTwo!17647 r!23423)))) b!2854002))

(declare-fun b!2854006 () Bool)

(declare-fun e!1808101 () Bool)

(declare-fun tp!917415 () Bool)

(declare-fun tp!917413 () Bool)

(assert (=> b!2854006 (= e!1808101 (and tp!917415 tp!917413))))

(declare-fun b!2854003 () Bool)

(assert (=> b!2854003 (= e!1808101 tp_is_empty!14871)))

(declare-fun b!2854005 () Bool)

(declare-fun tp!917411 () Bool)

(assert (=> b!2854005 (= e!1808101 tp!917411)))

(declare-fun b!2854004 () Bool)

(declare-fun tp!917414 () Bool)

(declare-fun tp!917412 () Bool)

(assert (=> b!2854004 (= e!1808101 (and tp!917414 tp!917412))))

(assert (=> b!2853794 (= tp!917334 e!1808101)))

(assert (= (and b!2853794 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17647 r!23423)))) b!2854003))

(assert (= (and b!2853794 ((_ is Concat!13888) (regTwo!17646 (regTwo!17647 r!23423)))) b!2854004))

(assert (= (and b!2853794 ((_ is Star!8567) (regTwo!17646 (regTwo!17647 r!23423)))) b!2854005))

(assert (= (and b!2853794 ((_ is Union!8567) (regTwo!17646 (regTwo!17647 r!23423)))) b!2854006))

(declare-fun b!2854007 () Bool)

(declare-fun e!1808102 () Bool)

(declare-fun tp!917416 () Bool)

(assert (=> b!2854007 (= e!1808102 (and tp_is_empty!14871 tp!917416))))

(assert (=> b!2853770 (= tp!917307 e!1808102)))

(assert (= (and b!2853770 ((_ is Cons!34040) (t!233195 (t!233195 prefix!1470)))) b!2854007))

(declare-fun b!2854011 () Bool)

(declare-fun e!1808103 () Bool)

(declare-fun tp!917421 () Bool)

(declare-fun tp!917419 () Bool)

(assert (=> b!2854011 (= e!1808103 (and tp!917421 tp!917419))))

(declare-fun b!2854008 () Bool)

(assert (=> b!2854008 (= e!1808103 tp_is_empty!14871)))

(declare-fun b!2854010 () Bool)

(declare-fun tp!917417 () Bool)

(assert (=> b!2854010 (= e!1808103 tp!917417)))

(declare-fun b!2854009 () Bool)

(declare-fun tp!917420 () Bool)

(declare-fun tp!917418 () Bool)

(assert (=> b!2854009 (= e!1808103 (and tp!917420 tp!917418))))

(assert (=> b!2853796 (= tp!917337 e!1808103)))

(assert (= (and b!2853796 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17647 r!23423)))) b!2854008))

(assert (= (and b!2853796 ((_ is Concat!13888) (regOne!17647 (regTwo!17647 r!23423)))) b!2854009))

(assert (= (and b!2853796 ((_ is Star!8567) (regOne!17647 (regTwo!17647 r!23423)))) b!2854010))

(assert (= (and b!2853796 ((_ is Union!8567) (regOne!17647 (regTwo!17647 r!23423)))) b!2854011))

(declare-fun b!2854015 () Bool)

(declare-fun e!1808104 () Bool)

(declare-fun tp!917426 () Bool)

(declare-fun tp!917424 () Bool)

(assert (=> b!2854015 (= e!1808104 (and tp!917426 tp!917424))))

(declare-fun b!2854012 () Bool)

(assert (=> b!2854012 (= e!1808104 tp_is_empty!14871)))

(declare-fun b!2854014 () Bool)

(declare-fun tp!917422 () Bool)

(assert (=> b!2854014 (= e!1808104 tp!917422)))

(declare-fun b!2854013 () Bool)

(declare-fun tp!917425 () Bool)

(declare-fun tp!917423 () Bool)

(assert (=> b!2854013 (= e!1808104 (and tp!917425 tp!917423))))

(assert (=> b!2853796 (= tp!917335 e!1808104)))

(assert (= (and b!2853796 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17647 r!23423)))) b!2854012))

(assert (= (and b!2853796 ((_ is Concat!13888) (regTwo!17647 (regTwo!17647 r!23423)))) b!2854013))

(assert (= (and b!2853796 ((_ is Star!8567) (regTwo!17647 (regTwo!17647 r!23423)))) b!2854014))

(assert (= (and b!2853796 ((_ is Union!8567) (regTwo!17647 (regTwo!17647 r!23423)))) b!2854015))

(declare-fun b!2854019 () Bool)

(declare-fun e!1808105 () Bool)

(declare-fun tp!917431 () Bool)

(declare-fun tp!917429 () Bool)

(assert (=> b!2854019 (= e!1808105 (and tp!917431 tp!917429))))

(declare-fun b!2854016 () Bool)

(assert (=> b!2854016 (= e!1808105 tp_is_empty!14871)))

(declare-fun b!2854018 () Bool)

(declare-fun tp!917427 () Bool)

(assert (=> b!2854018 (= e!1808105 tp!917427)))

(declare-fun b!2854017 () Bool)

(declare-fun tp!917430 () Bool)

(declare-fun tp!917428 () Bool)

(assert (=> b!2854017 (= e!1808105 (and tp!917430 tp!917428))))

(assert (=> b!2853782 (= tp!917321 e!1808105)))

(assert (= (and b!2853782 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17646 r!23423)))) b!2854016))

(assert (= (and b!2853782 ((_ is Concat!13888) (regOne!17646 (regOne!17646 r!23423)))) b!2854017))

(assert (= (and b!2853782 ((_ is Star!8567) (regOne!17646 (regOne!17646 r!23423)))) b!2854018))

(assert (= (and b!2853782 ((_ is Union!8567) (regOne!17646 (regOne!17646 r!23423)))) b!2854019))

(declare-fun b!2854023 () Bool)

(declare-fun e!1808106 () Bool)

(declare-fun tp!917436 () Bool)

(declare-fun tp!917434 () Bool)

(assert (=> b!2854023 (= e!1808106 (and tp!917436 tp!917434))))

(declare-fun b!2854020 () Bool)

(assert (=> b!2854020 (= e!1808106 tp_is_empty!14871)))

(declare-fun b!2854022 () Bool)

(declare-fun tp!917432 () Bool)

(assert (=> b!2854022 (= e!1808106 tp!917432)))

(declare-fun b!2854021 () Bool)

(declare-fun tp!917435 () Bool)

(declare-fun tp!917433 () Bool)

(assert (=> b!2854021 (= e!1808106 (and tp!917435 tp!917433))))

(assert (=> b!2853782 (= tp!917319 e!1808106)))

(assert (= (and b!2853782 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17646 r!23423)))) b!2854020))

(assert (= (and b!2853782 ((_ is Concat!13888) (regTwo!17646 (regOne!17646 r!23423)))) b!2854021))

(assert (= (and b!2853782 ((_ is Star!8567) (regTwo!17646 (regOne!17646 r!23423)))) b!2854022))

(assert (= (and b!2853782 ((_ is Union!8567) (regTwo!17646 (regOne!17646 r!23423)))) b!2854023))

(declare-fun b!2854027 () Bool)

(declare-fun e!1808107 () Bool)

(declare-fun tp!917441 () Bool)

(declare-fun tp!917439 () Bool)

(assert (=> b!2854027 (= e!1808107 (and tp!917441 tp!917439))))

(declare-fun b!2854024 () Bool)

(assert (=> b!2854024 (= e!1808107 tp_is_empty!14871)))

(declare-fun b!2854026 () Bool)

(declare-fun tp!917437 () Bool)

(assert (=> b!2854026 (= e!1808107 tp!917437)))

(declare-fun b!2854025 () Bool)

(declare-fun tp!917440 () Bool)

(declare-fun tp!917438 () Bool)

(assert (=> b!2854025 (= e!1808107 (and tp!917440 tp!917438))))

(assert (=> b!2853791 (= tp!917328 e!1808107)))

(assert (= (and b!2853791 ((_ is ElementMatch!8567) (reg!8896 (regOne!17647 r!23423)))) b!2854024))

(assert (= (and b!2853791 ((_ is Concat!13888) (reg!8896 (regOne!17647 r!23423)))) b!2854025))

(assert (= (and b!2853791 ((_ is Star!8567) (reg!8896 (regOne!17647 r!23423)))) b!2854026))

(assert (= (and b!2853791 ((_ is Union!8567) (reg!8896 (regOne!17647 r!23423)))) b!2854027))

(declare-fun b!2854031 () Bool)

(declare-fun e!1808108 () Bool)

(declare-fun tp!917446 () Bool)

(declare-fun tp!917444 () Bool)

(assert (=> b!2854031 (= e!1808108 (and tp!917446 tp!917444))))

(declare-fun b!2854028 () Bool)

(assert (=> b!2854028 (= e!1808108 tp_is_empty!14871)))

(declare-fun b!2854030 () Bool)

(declare-fun tp!917442 () Bool)

(assert (=> b!2854030 (= e!1808108 tp!917442)))

(declare-fun b!2854029 () Bool)

(declare-fun tp!917445 () Bool)

(declare-fun tp!917443 () Bool)

(assert (=> b!2854029 (= e!1808108 (and tp!917445 tp!917443))))

(assert (=> b!2853800 (= tp!917342 e!1808108)))

(assert (= (and b!2853800 ((_ is ElementMatch!8567) (regOne!17647 (reg!8896 r!23423)))) b!2854028))

(assert (= (and b!2853800 ((_ is Concat!13888) (regOne!17647 (reg!8896 r!23423)))) b!2854029))

(assert (= (and b!2853800 ((_ is Star!8567) (regOne!17647 (reg!8896 r!23423)))) b!2854030))

(assert (= (and b!2853800 ((_ is Union!8567) (regOne!17647 (reg!8896 r!23423)))) b!2854031))

(declare-fun b!2854035 () Bool)

(declare-fun e!1808109 () Bool)

(declare-fun tp!917451 () Bool)

(declare-fun tp!917449 () Bool)

(assert (=> b!2854035 (= e!1808109 (and tp!917451 tp!917449))))

(declare-fun b!2854032 () Bool)

(assert (=> b!2854032 (= e!1808109 tp_is_empty!14871)))

(declare-fun b!2854034 () Bool)

(declare-fun tp!917447 () Bool)

(assert (=> b!2854034 (= e!1808109 tp!917447)))

(declare-fun b!2854033 () Bool)

(declare-fun tp!917450 () Bool)

(declare-fun tp!917448 () Bool)

(assert (=> b!2854033 (= e!1808109 (and tp!917450 tp!917448))))

(assert (=> b!2853800 (= tp!917340 e!1808109)))

(assert (= (and b!2853800 ((_ is ElementMatch!8567) (regTwo!17647 (reg!8896 r!23423)))) b!2854032))

(assert (= (and b!2853800 ((_ is Concat!13888) (regTwo!17647 (reg!8896 r!23423)))) b!2854033))

(assert (= (and b!2853800 ((_ is Star!8567) (regTwo!17647 (reg!8896 r!23423)))) b!2854034))

(assert (= (and b!2853800 ((_ is Union!8567) (regTwo!17647 (reg!8896 r!23423)))) b!2854035))

(declare-fun b!2854039 () Bool)

(declare-fun e!1808110 () Bool)

(declare-fun tp!917456 () Bool)

(declare-fun tp!917454 () Bool)

(assert (=> b!2854039 (= e!1808110 (and tp!917456 tp!917454))))

(declare-fun b!2854036 () Bool)

(assert (=> b!2854036 (= e!1808110 tp_is_empty!14871)))

(declare-fun b!2854038 () Bool)

(declare-fun tp!917452 () Bool)

(assert (=> b!2854038 (= e!1808110 tp!917452)))

(declare-fun b!2854037 () Bool)

(declare-fun tp!917455 () Bool)

(declare-fun tp!917453 () Bool)

(assert (=> b!2854037 (= e!1808110 (and tp!917455 tp!917453))))

(assert (=> b!2853786 (= tp!917326 e!1808110)))

(assert (= (and b!2853786 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17646 r!23423)))) b!2854036))

(assert (= (and b!2853786 ((_ is Concat!13888) (regOne!17646 (regTwo!17646 r!23423)))) b!2854037))

(assert (= (and b!2853786 ((_ is Star!8567) (regOne!17646 (regTwo!17646 r!23423)))) b!2854038))

(assert (= (and b!2853786 ((_ is Union!8567) (regOne!17646 (regTwo!17646 r!23423)))) b!2854039))

(declare-fun b!2854043 () Bool)

(declare-fun e!1808111 () Bool)

(declare-fun tp!917461 () Bool)

(declare-fun tp!917459 () Bool)

(assert (=> b!2854043 (= e!1808111 (and tp!917461 tp!917459))))

(declare-fun b!2854040 () Bool)

(assert (=> b!2854040 (= e!1808111 tp_is_empty!14871)))

(declare-fun b!2854042 () Bool)

(declare-fun tp!917457 () Bool)

(assert (=> b!2854042 (= e!1808111 tp!917457)))

(declare-fun b!2854041 () Bool)

(declare-fun tp!917460 () Bool)

(declare-fun tp!917458 () Bool)

(assert (=> b!2854041 (= e!1808111 (and tp!917460 tp!917458))))

(assert (=> b!2853786 (= tp!917324 e!1808111)))

(assert (= (and b!2853786 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17646 r!23423)))) b!2854040))

(assert (= (and b!2853786 ((_ is Concat!13888) (regTwo!17646 (regTwo!17646 r!23423)))) b!2854041))

(assert (= (and b!2853786 ((_ is Star!8567) (regTwo!17646 (regTwo!17646 r!23423)))) b!2854042))

(assert (= (and b!2853786 ((_ is Union!8567) (regTwo!17646 (regTwo!17646 r!23423)))) b!2854043))

(declare-fun b!2854047 () Bool)

(declare-fun e!1808112 () Bool)

(declare-fun tp!917466 () Bool)

(declare-fun tp!917464 () Bool)

(assert (=> b!2854047 (= e!1808112 (and tp!917466 tp!917464))))

(declare-fun b!2854044 () Bool)

(assert (=> b!2854044 (= e!1808112 tp_is_empty!14871)))

(declare-fun b!2854046 () Bool)

(declare-fun tp!917462 () Bool)

(assert (=> b!2854046 (= e!1808112 tp!917462)))

(declare-fun b!2854045 () Bool)

(declare-fun tp!917465 () Bool)

(declare-fun tp!917463 () Bool)

(assert (=> b!2854045 (= e!1808112 (and tp!917465 tp!917463))))

(assert (=> b!2853795 (= tp!917333 e!1808112)))

(assert (= (and b!2853795 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17647 r!23423)))) b!2854044))

(assert (= (and b!2853795 ((_ is Concat!13888) (reg!8896 (regTwo!17647 r!23423)))) b!2854045))

(assert (= (and b!2853795 ((_ is Star!8567) (reg!8896 (regTwo!17647 r!23423)))) b!2854046))

(assert (= (and b!2853795 ((_ is Union!8567) (reg!8896 (regTwo!17647 r!23423)))) b!2854047))

(declare-fun b!2854051 () Bool)

(declare-fun e!1808113 () Bool)

(declare-fun tp!917471 () Bool)

(declare-fun tp!917469 () Bool)

(assert (=> b!2854051 (= e!1808113 (and tp!917471 tp!917469))))

(declare-fun b!2854048 () Bool)

(assert (=> b!2854048 (= e!1808113 tp_is_empty!14871)))

(declare-fun b!2854050 () Bool)

(declare-fun tp!917467 () Bool)

(assert (=> b!2854050 (= e!1808113 tp!917467)))

(declare-fun b!2854049 () Bool)

(declare-fun tp!917470 () Bool)

(declare-fun tp!917468 () Bool)

(assert (=> b!2854049 (= e!1808113 (and tp!917470 tp!917468))))

(assert (=> b!2853788 (= tp!917327 e!1808113)))

(assert (= (and b!2853788 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17646 r!23423)))) b!2854048))

(assert (= (and b!2853788 ((_ is Concat!13888) (regOne!17647 (regTwo!17646 r!23423)))) b!2854049))

(assert (= (and b!2853788 ((_ is Star!8567) (regOne!17647 (regTwo!17646 r!23423)))) b!2854050))

(assert (= (and b!2853788 ((_ is Union!8567) (regOne!17647 (regTwo!17646 r!23423)))) b!2854051))

(declare-fun b!2854055 () Bool)

(declare-fun e!1808114 () Bool)

(declare-fun tp!917476 () Bool)

(declare-fun tp!917474 () Bool)

(assert (=> b!2854055 (= e!1808114 (and tp!917476 tp!917474))))

(declare-fun b!2854052 () Bool)

(assert (=> b!2854052 (= e!1808114 tp_is_empty!14871)))

(declare-fun b!2854054 () Bool)

(declare-fun tp!917472 () Bool)

(assert (=> b!2854054 (= e!1808114 tp!917472)))

(declare-fun b!2854053 () Bool)

(declare-fun tp!917475 () Bool)

(declare-fun tp!917473 () Bool)

(assert (=> b!2854053 (= e!1808114 (and tp!917475 tp!917473))))

(assert (=> b!2853788 (= tp!917325 e!1808114)))

(assert (= (and b!2853788 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17646 r!23423)))) b!2854052))

(assert (= (and b!2853788 ((_ is Concat!13888) (regTwo!17647 (regTwo!17646 r!23423)))) b!2854053))

(assert (= (and b!2853788 ((_ is Star!8567) (regTwo!17647 (regTwo!17646 r!23423)))) b!2854054))

(assert (= (and b!2853788 ((_ is Union!8567) (regTwo!17647 (regTwo!17646 r!23423)))) b!2854055))

(declare-fun b!2854059 () Bool)

(declare-fun e!1808115 () Bool)

(declare-fun tp!917481 () Bool)

(declare-fun tp!917479 () Bool)

(assert (=> b!2854059 (= e!1808115 (and tp!917481 tp!917479))))

(declare-fun b!2854056 () Bool)

(assert (=> b!2854056 (= e!1808115 tp_is_empty!14871)))

(declare-fun b!2854058 () Bool)

(declare-fun tp!917477 () Bool)

(assert (=> b!2854058 (= e!1808115 tp!917477)))

(declare-fun b!2854057 () Bool)

(declare-fun tp!917480 () Bool)

(declare-fun tp!917478 () Bool)

(assert (=> b!2854057 (= e!1808115 (and tp!917480 tp!917478))))

(assert (=> b!2853783 (= tp!917318 e!1808115)))

(assert (= (and b!2853783 ((_ is ElementMatch!8567) (reg!8896 (regOne!17646 r!23423)))) b!2854056))

(assert (= (and b!2853783 ((_ is Concat!13888) (reg!8896 (regOne!17646 r!23423)))) b!2854057))

(assert (= (and b!2853783 ((_ is Star!8567) (reg!8896 (regOne!17646 r!23423)))) b!2854058))

(assert (= (and b!2853783 ((_ is Union!8567) (reg!8896 (regOne!17646 r!23423)))) b!2854059))

(declare-fun b!2854063 () Bool)

(declare-fun e!1808116 () Bool)

(declare-fun tp!917486 () Bool)

(declare-fun tp!917484 () Bool)

(assert (=> b!2854063 (= e!1808116 (and tp!917486 tp!917484))))

(declare-fun b!2854060 () Bool)

(assert (=> b!2854060 (= e!1808116 tp_is_empty!14871)))

(declare-fun b!2854062 () Bool)

(declare-fun tp!917482 () Bool)

(assert (=> b!2854062 (= e!1808116 tp!917482)))

(declare-fun b!2854061 () Bool)

(declare-fun tp!917485 () Bool)

(declare-fun tp!917483 () Bool)

(assert (=> b!2854061 (= e!1808116 (and tp!917485 tp!917483))))

(assert (=> b!2853792 (= tp!917332 e!1808116)))

(assert (= (and b!2853792 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17647 r!23423)))) b!2854060))

(assert (= (and b!2853792 ((_ is Concat!13888) (regOne!17647 (regOne!17647 r!23423)))) b!2854061))

(assert (= (and b!2853792 ((_ is Star!8567) (regOne!17647 (regOne!17647 r!23423)))) b!2854062))

(assert (= (and b!2853792 ((_ is Union!8567) (regOne!17647 (regOne!17647 r!23423)))) b!2854063))

(declare-fun b!2854067 () Bool)

(declare-fun e!1808117 () Bool)

(declare-fun tp!917491 () Bool)

(declare-fun tp!917489 () Bool)

(assert (=> b!2854067 (= e!1808117 (and tp!917491 tp!917489))))

(declare-fun b!2854064 () Bool)

(assert (=> b!2854064 (= e!1808117 tp_is_empty!14871)))

(declare-fun b!2854066 () Bool)

(declare-fun tp!917487 () Bool)

(assert (=> b!2854066 (= e!1808117 tp!917487)))

(declare-fun b!2854065 () Bool)

(declare-fun tp!917490 () Bool)

(declare-fun tp!917488 () Bool)

(assert (=> b!2854065 (= e!1808117 (and tp!917490 tp!917488))))

(assert (=> b!2853792 (= tp!917330 e!1808117)))

(assert (= (and b!2853792 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17647 r!23423)))) b!2854064))

(assert (= (and b!2853792 ((_ is Concat!13888) (regTwo!17647 (regOne!17647 r!23423)))) b!2854065))

(assert (= (and b!2853792 ((_ is Star!8567) (regTwo!17647 (regOne!17647 r!23423)))) b!2854066))

(assert (= (and b!2853792 ((_ is Union!8567) (regTwo!17647 (regOne!17647 r!23423)))) b!2854067))

(declare-fun b!2854071 () Bool)

(declare-fun e!1808118 () Bool)

(declare-fun tp!917496 () Bool)

(declare-fun tp!917494 () Bool)

(assert (=> b!2854071 (= e!1808118 (and tp!917496 tp!917494))))

(declare-fun b!2854068 () Bool)

(assert (=> b!2854068 (= e!1808118 tp_is_empty!14871)))

(declare-fun b!2854070 () Bool)

(declare-fun tp!917492 () Bool)

(assert (=> b!2854070 (= e!1808118 tp!917492)))

(declare-fun b!2854069 () Bool)

(declare-fun tp!917495 () Bool)

(declare-fun tp!917493 () Bool)

(assert (=> b!2854069 (= e!1808118 (and tp!917495 tp!917493))))

(assert (=> b!2853787 (= tp!917323 e!1808118)))

(assert (= (and b!2853787 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17646 r!23423)))) b!2854068))

(assert (= (and b!2853787 ((_ is Concat!13888) (reg!8896 (regTwo!17646 r!23423)))) b!2854069))

(assert (= (and b!2853787 ((_ is Star!8567) (reg!8896 (regTwo!17646 r!23423)))) b!2854070))

(assert (= (and b!2853787 ((_ is Union!8567) (reg!8896 (regTwo!17646 r!23423)))) b!2854071))

(declare-fun b!2854075 () Bool)

(declare-fun e!1808119 () Bool)

(declare-fun tp!917501 () Bool)

(declare-fun tp!917499 () Bool)

(assert (=> b!2854075 (= e!1808119 (and tp!917501 tp!917499))))

(declare-fun b!2854072 () Bool)

(assert (=> b!2854072 (= e!1808119 tp_is_empty!14871)))

(declare-fun b!2854074 () Bool)

(declare-fun tp!917497 () Bool)

(assert (=> b!2854074 (= e!1808119 tp!917497)))

(declare-fun b!2854073 () Bool)

(declare-fun tp!917500 () Bool)

(declare-fun tp!917498 () Bool)

(assert (=> b!2854073 (= e!1808119 (and tp!917500 tp!917498))))

(assert (=> b!2853784 (= tp!917322 e!1808119)))

(assert (= (and b!2853784 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17646 r!23423)))) b!2854072))

(assert (= (and b!2853784 ((_ is Concat!13888) (regOne!17647 (regOne!17646 r!23423)))) b!2854073))

(assert (= (and b!2853784 ((_ is Star!8567) (regOne!17647 (regOne!17646 r!23423)))) b!2854074))

(assert (= (and b!2853784 ((_ is Union!8567) (regOne!17647 (regOne!17646 r!23423)))) b!2854075))

(declare-fun b!2854079 () Bool)

(declare-fun e!1808120 () Bool)

(declare-fun tp!917506 () Bool)

(declare-fun tp!917504 () Bool)

(assert (=> b!2854079 (= e!1808120 (and tp!917506 tp!917504))))

(declare-fun b!2854076 () Bool)

(assert (=> b!2854076 (= e!1808120 tp_is_empty!14871)))

(declare-fun b!2854078 () Bool)

(declare-fun tp!917502 () Bool)

(assert (=> b!2854078 (= e!1808120 tp!917502)))

(declare-fun b!2854077 () Bool)

(declare-fun tp!917505 () Bool)

(declare-fun tp!917503 () Bool)

(assert (=> b!2854077 (= e!1808120 (and tp!917505 tp!917503))))

(assert (=> b!2853784 (= tp!917320 e!1808120)))

(assert (= (and b!2853784 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17646 r!23423)))) b!2854076))

(assert (= (and b!2853784 ((_ is Concat!13888) (regTwo!17647 (regOne!17646 r!23423)))) b!2854077))

(assert (= (and b!2853784 ((_ is Star!8567) (regTwo!17647 (regOne!17646 r!23423)))) b!2854078))

(assert (= (and b!2853784 ((_ is Union!8567) (regTwo!17647 (regOne!17646 r!23423)))) b!2854079))

(check-sat (not b!2854030) (not b!2854075) (not b!2853984) (not bm!183794) (not b!2853989) (not b!2853980) (not b!2854054) (not b!2854051) (not bm!183811) (not b!2854066) (not b!2854058) (not b!2854035) (not b!2854045) (not b!2854009) (not b!2854065) (not bm!183797) (not b!2854011) (not b!2854046) (not b!2854039) (not b!2854031) (not b!2854010) (not b!2853895) (not b!2853992) (not b!2853988) (not b!2854015) (not b!2853923) (not bm!183807) (not b!2854001) (not b!2854047) (not b!2854033) (not b!2853996) (not b!2854029) (not b!2854013) (not b!2854002) (not b!2854014) (not bm!183815) (not b!2854037) (not b!2854000) (not b!2853903) (not b!2854074) (not b!2853972) (not b!2854062) (not d!826277) (not b!2854041) (not b!2854019) (not bm!183814) (not b!2854038) (not b!2854007) (not b!2854053) (not b!2854077) (not b!2854042) (not b!2853997) (not b!2853922) (not b!2853960) (not bm!183810) (not b!2853990) (not d!826271) (not b!2853986) (not b!2853985) (not b!2854034) (not b!2854078) (not bm!183813) tp_is_empty!14871 (not b!2853993) (not d!826279) (not b!2854004) (not b!2854063) (not b!2854006) (not b!2854059) (not b!2854073) (not b!2854043) (not b!2853994) (not b!2854005) (not b!2854023) (not b!2854057) (not b!2854061) (not b!2853894) (not b!2854049) (not b!2854025) (not b!2854079) (not b!2854027) (not b!2854018) (not b!2854069) (not b!2854070) (not b!2853982) (not b!2853981) (not bm!183798) (not b!2854067) (not b!2853998) (not b!2854022) (not b!2854050) (not d!826269) (not b!2853946) (not b!2854071) (not bm!183796) (not b!2854017) (not b!2854021) (not b!2854055) (not b!2854026) (not b!2853915) (not d!826291))
(check-sat)
(get-model)

(declare-fun b!2854275 () Bool)

(declare-fun e!1808199 () Option!6304)

(assert (=> b!2854275 (= e!1808199 (Some!6303 Nil!34040))))

(declare-fun b!2854276 () Bool)

(declare-fun e!1808201 () Option!6304)

(declare-fun e!1808204 () Option!6304)

(assert (=> b!2854276 (= e!1808201 e!1808204)))

(declare-fun lt!1013841 () Option!6304)

(declare-fun call!183843 () Option!6304)

(assert (=> b!2854276 (= lt!1013841 call!183843)))

(declare-fun c!460076 () Bool)

(assert (=> b!2854276 (= c!460076 ((_ is Some!6303) lt!1013841))))

(declare-fun c!460074 () Bool)

(declare-fun d!826319 () Bool)

(assert (=> d!826319 (= c!460074 ((_ is EmptyExpr!8567) (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(assert (=> d!826319 (= (getLanguageWitness!235 (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))) e!1808199)))

(declare-fun b!2854277 () Bool)

(declare-fun e!1808203 () Option!6304)

(assert (=> b!2854277 (= e!1808203 None!6303)))

(declare-fun b!2854278 () Bool)

(declare-fun c!460078 () Bool)

(declare-fun lt!1013840 () Option!6304)

(assert (=> b!2854278 (= c!460078 ((_ is Some!6303) lt!1013840))))

(assert (=> b!2854278 (= lt!1013840 call!183843)))

(declare-fun e!1808202 () Option!6304)

(declare-fun e!1808206 () Option!6304)

(assert (=> b!2854278 (= e!1808202 e!1808206)))

(declare-fun b!2854279 () Bool)

(assert (=> b!2854279 (= e!1808206 None!6303)))

(declare-fun c!460071 () Bool)

(declare-fun b!2854280 () Bool)

(assert (=> b!2854280 (= c!460071 ((_ is Union!8567) (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun e!1808205 () Option!6304)

(assert (=> b!2854280 (= e!1808205 e!1808201)))

(declare-fun b!2854281 () Bool)

(assert (=> b!2854281 (= e!1808202 None!6303)))

(declare-fun bm!183838 () Bool)

(declare-fun call!183844 () Option!6304)

(assert (=> bm!183838 (= call!183844 (getLanguageWitness!235 (ite c!460071 (regTwo!17647 (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))) (regOne!17646 (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))))

(declare-fun b!2854282 () Bool)

(declare-fun c!460077 () Bool)

(assert (=> b!2854282 (= c!460077 ((_ is ElementMatch!8567) (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun e!1808200 () Option!6304)

(assert (=> b!2854282 (= e!1808203 e!1808200)))

(declare-fun b!2854283 () Bool)

(assert (=> b!2854283 (= e!1808200 (Some!6303 (Cons!34040 (c!459926 (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))) Nil!34040)))))

(declare-fun b!2854284 () Bool)

(declare-fun lt!1013842 () Option!6304)

(assert (=> b!2854284 (= e!1808206 (Some!6303 (++!8128 (v!34425 lt!1013842) (v!34425 lt!1013840))))))

(declare-fun bm!183839 () Bool)

(assert (=> bm!183839 (= call!183843 (getLanguageWitness!235 (ite c!460071 (regOne!17647 (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))) (regTwo!17646 (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))))

(declare-fun b!2854285 () Bool)

(assert (=> b!2854285 (= e!1808200 e!1808205)))

(declare-fun c!460075 () Bool)

(assert (=> b!2854285 (= c!460075 ((_ is Star!8567) (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun b!2854286 () Bool)

(assert (=> b!2854286 (= e!1808201 e!1808202)))

(assert (=> b!2854286 (= lt!1013842 call!183844)))

(declare-fun c!460073 () Bool)

(assert (=> b!2854286 (= c!460073 ((_ is Some!6303) lt!1013842))))

(declare-fun b!2854287 () Bool)

(assert (=> b!2854287 (= e!1808205 (Some!6303 Nil!34040))))

(declare-fun b!2854288 () Bool)

(assert (=> b!2854288 (= e!1808204 call!183844)))

(declare-fun b!2854289 () Bool)

(assert (=> b!2854289 (= e!1808204 lt!1013841)))

(declare-fun b!2854290 () Bool)

(assert (=> b!2854290 (= e!1808199 e!1808203)))

(declare-fun c!460072 () Bool)

(assert (=> b!2854290 (= c!460072 ((_ is EmptyLang!8567) (ite c!460024 (regOne!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(assert (= (and d!826319 c!460074) b!2854275))

(assert (= (and d!826319 (not c!460074)) b!2854290))

(assert (= (and b!2854290 c!460072) b!2854277))

(assert (= (and b!2854290 (not c!460072)) b!2854282))

(assert (= (and b!2854282 c!460077) b!2854283))

(assert (= (and b!2854282 (not c!460077)) b!2854285))

(assert (= (and b!2854285 c!460075) b!2854287))

(assert (= (and b!2854285 (not c!460075)) b!2854280))

(assert (= (and b!2854280 c!460071) b!2854276))

(assert (= (and b!2854280 (not c!460071)) b!2854286))

(assert (= (and b!2854276 c!460076) b!2854289))

(assert (= (and b!2854276 (not c!460076)) b!2854288))

(assert (= (and b!2854286 c!460073) b!2854278))

(assert (= (and b!2854286 (not c!460073)) b!2854281))

(assert (= (and b!2854278 c!460078) b!2854284))

(assert (= (and b!2854278 (not c!460078)) b!2854279))

(assert (= (or b!2854276 b!2854278) bm!183839))

(assert (= (or b!2854288 b!2854286) bm!183838))

(declare-fun m!3278301 () Bool)

(assert (=> bm!183838 m!3278301))

(declare-fun m!3278303 () Bool)

(assert (=> b!2854284 m!3278303))

(declare-fun m!3278305 () Bool)

(assert (=> bm!183839 m!3278305))

(assert (=> bm!183815 d!826319))

(declare-fun d!826321 () Bool)

(assert (=> d!826321 (= (nullable!2641 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))) (nullableFct!799 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))

(declare-fun bs!520235 () Bool)

(assert (= bs!520235 d!826321))

(declare-fun m!3278307 () Bool)

(assert (=> bs!520235 m!3278307))

(assert (=> b!2853960 d!826321))

(declare-fun b!2854305 () Bool)

(declare-fun e!1808223 () Bool)

(declare-fun e!1808222 () Bool)

(assert (=> b!2854305 (= e!1808223 e!1808222)))

(declare-fun c!460081 () Bool)

(assert (=> b!2854305 (= c!460081 ((_ is Union!8567) r!23423))))

(declare-fun b!2854306 () Bool)

(declare-fun e!1808221 () Bool)

(declare-fun e!1808220 () Bool)

(assert (=> b!2854306 (= e!1808221 e!1808220)))

(declare-fun res!1186291 () Bool)

(assert (=> b!2854306 (=> res!1186291 e!1808220)))

(assert (=> b!2854306 (= res!1186291 ((_ is EmptyLang!8567) r!23423))))

(declare-fun b!2854307 () Bool)

(declare-fun e!1808219 () Bool)

(assert (=> b!2854307 (= e!1808222 e!1808219)))

(declare-fun res!1186293 () Bool)

(declare-fun call!183849 () Bool)

(assert (=> b!2854307 (= res!1186293 call!183849)))

(assert (=> b!2854307 (=> res!1186293 e!1808219)))

(declare-fun b!2854308 () Bool)

(assert (=> b!2854308 (= e!1808220 e!1808223)))

(declare-fun res!1186295 () Bool)

(assert (=> b!2854308 (=> (not res!1186295) (not e!1808223))))

(assert (=> b!2854308 (= res!1186295 (and (not ((_ is ElementMatch!8567) r!23423)) (not ((_ is Star!8567) r!23423))))))

(declare-fun d!826323 () Bool)

(declare-fun lt!1013845 () Bool)

(assert (=> d!826323 (= lt!1013845 (isEmpty!18593 (getLanguageWitness!235 r!23423)))))

(assert (=> d!826323 (= lt!1013845 e!1808221)))

(declare-fun res!1186294 () Bool)

(assert (=> d!826323 (=> (not res!1186294) (not e!1808221))))

(assert (=> d!826323 (= res!1186294 (not ((_ is EmptyExpr!8567) r!23423)))))

(assert (=> d!826323 (= (lostCauseFct!215 r!23423) lt!1013845)))

(declare-fun b!2854309 () Bool)

(declare-fun e!1808224 () Bool)

(declare-fun call!183850 () Bool)

(assert (=> b!2854309 (= e!1808224 call!183850)))

(declare-fun bm!183844 () Bool)

(assert (=> bm!183844 (= call!183849 (lostCause!740 (ite c!460081 (regOne!17647 r!23423) (regOne!17646 r!23423))))))

(declare-fun b!2854310 () Bool)

(assert (=> b!2854310 (= e!1808219 call!183850)))

(declare-fun b!2854311 () Bool)

(assert (=> b!2854311 (= e!1808222 e!1808224)))

(declare-fun res!1186292 () Bool)

(assert (=> b!2854311 (= res!1186292 call!183849)))

(assert (=> b!2854311 (=> (not res!1186292) (not e!1808224))))

(declare-fun bm!183845 () Bool)

(assert (=> bm!183845 (= call!183850 (lostCause!740 (ite c!460081 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))

(assert (= (and d!826323 res!1186294) b!2854306))

(assert (= (and b!2854306 (not res!1186291)) b!2854308))

(assert (= (and b!2854308 res!1186295) b!2854305))

(assert (= (and b!2854305 c!460081) b!2854311))

(assert (= (and b!2854305 (not c!460081)) b!2854307))

(assert (= (and b!2854311 res!1186292) b!2854309))

(assert (= (and b!2854307 (not res!1186293)) b!2854310))

(assert (= (or b!2854311 b!2854307) bm!183844))

(assert (= (or b!2854309 b!2854310) bm!183845))

(assert (=> d!826323 m!3278121))

(assert (=> d!826323 m!3278121))

(assert (=> d!826323 m!3278145))

(declare-fun m!3278309 () Bool)

(assert (=> bm!183844 m!3278309))

(declare-fun m!3278311 () Bool)

(assert (=> bm!183845 m!3278311))

(assert (=> d!826271 d!826323))

(declare-fun b!2854312 () Bool)

(declare-fun e!1808229 () Regex!8567)

(assert (=> b!2854312 (= e!1808229 EmptyLang!8567)))

(declare-fun e!1808226 () Regex!8567)

(declare-fun b!2854313 () Bool)

(declare-fun call!183853 () Regex!8567)

(declare-fun call!183852 () Regex!8567)

(assert (=> b!2854313 (= e!1808226 (Union!8567 (Concat!13888 call!183852 (regTwo!17646 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423))))) call!183853))))

(declare-fun c!460084 () Bool)

(declare-fun c!460083 () Bool)

(declare-fun bm!183846 () Bool)

(declare-fun call!183851 () Regex!8567)

(assert (=> bm!183846 (= call!183851 (derivativeStep!2265 (ite c!460083 (regTwo!17647 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))) (ite c!460084 (reg!8896 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))) (regOne!17646 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))))) (head!6269 prefix!1470)))))

(declare-fun c!460082 () Bool)

(declare-fun b!2854314 () Bool)

(assert (=> b!2854314 (= c!460082 (nullable!2641 (regOne!17646 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423))))))))

(declare-fun e!1808228 () Regex!8567)

(assert (=> b!2854314 (= e!1808228 e!1808226)))

(declare-fun b!2854315 () Bool)

(declare-fun e!1808225 () Regex!8567)

(assert (=> b!2854315 (= e!1808229 e!1808225)))

(declare-fun c!460086 () Bool)

(assert (=> b!2854315 (= c!460086 ((_ is ElementMatch!8567) (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))))))

(declare-fun b!2854316 () Bool)

(declare-fun e!1808227 () Regex!8567)

(assert (=> b!2854316 (= e!1808227 e!1808228)))

(assert (=> b!2854316 (= c!460084 ((_ is Star!8567) (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))))))

(declare-fun b!2854317 () Bool)

(assert (=> b!2854317 (= e!1808228 (Concat!13888 call!183852 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))))))

(declare-fun bm!183848 () Bool)

(declare-fun call!183854 () Regex!8567)

(assert (=> bm!183848 (= call!183853 call!183854)))

(declare-fun b!2854318 () Bool)

(assert (=> b!2854318 (= e!1808226 (Union!8567 (Concat!13888 call!183853 (regTwo!17646 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423))))) EmptyLang!8567))))

(declare-fun b!2854319 () Bool)

(assert (=> b!2854319 (= e!1808225 (ite (= (head!6269 prefix!1470) (c!459926 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423))))) EmptyExpr!8567 EmptyLang!8567))))

(declare-fun bm!183847 () Bool)

(assert (=> bm!183847 (= call!183852 call!183851)))

(declare-fun d!826325 () Bool)

(declare-fun lt!1013846 () Regex!8567)

(assert (=> d!826325 (validRegex!3437 lt!1013846)))

(assert (=> d!826325 (= lt!1013846 e!1808229)))

(declare-fun c!460085 () Bool)

(assert (=> d!826325 (= c!460085 (or ((_ is EmptyExpr!8567) (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))) ((_ is EmptyLang!8567) (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423))))))))

(assert (=> d!826325 (validRegex!3437 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423))))))

(assert (=> d!826325 (= (derivativeStep!2265 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423))) (head!6269 prefix!1470)) lt!1013846)))

(declare-fun b!2854320 () Bool)

(assert (=> b!2854320 (= c!460083 ((_ is Union!8567) (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))))))

(assert (=> b!2854320 (= e!1808225 e!1808227)))

(declare-fun bm!183849 () Bool)

(assert (=> bm!183849 (= call!183854 (derivativeStep!2265 (ite c!460083 (regOne!17647 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))) (ite c!460082 (regTwo!17646 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))) (regOne!17646 (ite c!460018 (regTwo!17647 r!23423) (ite c!460019 (reg!8896 r!23423) (regOne!17646 r!23423)))))) (head!6269 prefix!1470)))))

(declare-fun b!2854321 () Bool)

(assert (=> b!2854321 (= e!1808227 (Union!8567 call!183854 call!183851))))

(assert (= (and d!826325 c!460085) b!2854312))

(assert (= (and d!826325 (not c!460085)) b!2854315))

(assert (= (and b!2854315 c!460086) b!2854319))

(assert (= (and b!2854315 (not c!460086)) b!2854320))

(assert (= (and b!2854320 c!460083) b!2854321))

(assert (= (and b!2854320 (not c!460083)) b!2854316))

(assert (= (and b!2854316 c!460084) b!2854317))

(assert (= (and b!2854316 (not c!460084)) b!2854314))

(assert (= (and b!2854314 c!460082) b!2854313))

(assert (= (and b!2854314 (not c!460082)) b!2854318))

(assert (= (or b!2854313 b!2854318) bm!183848))

(assert (= (or b!2854317 b!2854313) bm!183847))

(assert (= (or b!2854321 bm!183847) bm!183846))

(assert (= (or b!2854321 bm!183848) bm!183849))

(assert (=> bm!183846 m!3278137))

(declare-fun m!3278313 () Bool)

(assert (=> bm!183846 m!3278313))

(declare-fun m!3278315 () Bool)

(assert (=> b!2854314 m!3278315))

(declare-fun m!3278317 () Bool)

(assert (=> d!826325 m!3278317))

(declare-fun m!3278319 () Bool)

(assert (=> d!826325 m!3278319))

(assert (=> bm!183849 m!3278137))

(declare-fun m!3278321 () Bool)

(assert (=> bm!183849 m!3278321))

(assert (=> bm!183807 d!826325))

(declare-fun d!826327 () Bool)

(assert (=> d!826327 (= (nullable!2641 (regOne!17646 r!23423)) (nullableFct!799 (regOne!17646 r!23423)))))

(declare-fun bs!520236 () Bool)

(assert (= bs!520236 d!826327))

(declare-fun m!3278323 () Bool)

(assert (=> bs!520236 m!3278323))

(assert (=> b!2853946 d!826327))

(declare-fun d!826329 () Bool)

(declare-fun e!1808230 () Bool)

(assert (=> d!826329 e!1808230))

(declare-fun res!1186296 () Bool)

(assert (=> d!826329 (=> (not res!1186296) (not e!1808230))))

(declare-fun lt!1013847 () List!34164)

(assert (=> d!826329 (= res!1186296 (= (content!4666 lt!1013847) ((_ map or) (content!4666 (t!233195 (v!34425 lt!1013812))) (content!4666 (v!34425 lt!1013810)))))))

(declare-fun e!1808231 () List!34164)

(assert (=> d!826329 (= lt!1013847 e!1808231)))

(declare-fun c!460087 () Bool)

(assert (=> d!826329 (= c!460087 ((_ is Nil!34040) (t!233195 (v!34425 lt!1013812))))))

(assert (=> d!826329 (= (++!8128 (t!233195 (v!34425 lt!1013812)) (v!34425 lt!1013810)) lt!1013847)))

(declare-fun b!2854323 () Bool)

(assert (=> b!2854323 (= e!1808231 (Cons!34040 (h!39460 (t!233195 (v!34425 lt!1013812))) (++!8128 (t!233195 (t!233195 (v!34425 lt!1013812))) (v!34425 lt!1013810))))))

(declare-fun b!2854324 () Bool)

(declare-fun res!1186297 () Bool)

(assert (=> b!2854324 (=> (not res!1186297) (not e!1808230))))

(assert (=> b!2854324 (= res!1186297 (= (size!26271 lt!1013847) (+ (size!26271 (t!233195 (v!34425 lt!1013812))) (size!26271 (v!34425 lt!1013810)))))))

(declare-fun b!2854325 () Bool)

(assert (=> b!2854325 (= e!1808230 (or (not (= (v!34425 lt!1013810) Nil!34040)) (= lt!1013847 (t!233195 (v!34425 lt!1013812)))))))

(declare-fun b!2854322 () Bool)

(assert (=> b!2854322 (= e!1808231 (v!34425 lt!1013810))))

(assert (= (and d!826329 c!460087) b!2854322))

(assert (= (and d!826329 (not c!460087)) b!2854323))

(assert (= (and d!826329 res!1186296) b!2854324))

(assert (= (and b!2854324 res!1186297) b!2854325))

(declare-fun m!3278325 () Bool)

(assert (=> d!826329 m!3278325))

(declare-fun m!3278327 () Bool)

(assert (=> d!826329 m!3278327))

(assert (=> d!826329 m!3278181))

(declare-fun m!3278329 () Bool)

(assert (=> b!2854323 m!3278329))

(declare-fun m!3278331 () Bool)

(assert (=> b!2854324 m!3278331))

(declare-fun m!3278333 () Bool)

(assert (=> b!2854324 m!3278333))

(assert (=> b!2854324 m!3278189))

(assert (=> b!2853894 d!826329))

(declare-fun c!460088 () Bool)

(declare-fun call!183857 () Bool)

(declare-fun c!460089 () Bool)

(declare-fun bm!183850 () Bool)

(assert (=> bm!183850 (= call!183857 (validRegex!3437 (ite c!460089 (reg!8896 lt!1013824) (ite c!460088 (regTwo!17647 lt!1013824) (regTwo!17646 lt!1013824)))))))

(declare-fun b!2854327 () Bool)

(declare-fun e!1808238 () Bool)

(declare-fun e!1808234 () Bool)

(assert (=> b!2854327 (= e!1808238 e!1808234)))

(assert (=> b!2854327 (= c!460088 ((_ is Union!8567) lt!1013824))))

(declare-fun b!2854328 () Bool)

(declare-fun e!1808233 () Bool)

(assert (=> b!2854328 (= e!1808233 call!183857)))

(declare-fun b!2854329 () Bool)

(declare-fun res!1186298 () Bool)

(declare-fun e!1808237 () Bool)

(assert (=> b!2854329 (=> res!1186298 e!1808237)))

(assert (=> b!2854329 (= res!1186298 (not ((_ is Concat!13888) lt!1013824)))))

(assert (=> b!2854329 (= e!1808234 e!1808237)))

(declare-fun bm!183851 () Bool)

(declare-fun call!183855 () Bool)

(assert (=> bm!183851 (= call!183855 call!183857)))

(declare-fun b!2854326 () Bool)

(declare-fun res!1186300 () Bool)

(declare-fun e!1808236 () Bool)

(assert (=> b!2854326 (=> (not res!1186300) (not e!1808236))))

(declare-fun call!183856 () Bool)

(assert (=> b!2854326 (= res!1186300 call!183856)))

(assert (=> b!2854326 (= e!1808234 e!1808236)))

(declare-fun d!826331 () Bool)

(declare-fun res!1186302 () Bool)

(declare-fun e!1808232 () Bool)

(assert (=> d!826331 (=> res!1186302 e!1808232)))

(assert (=> d!826331 (= res!1186302 ((_ is ElementMatch!8567) lt!1013824))))

(assert (=> d!826331 (= (validRegex!3437 lt!1013824) e!1808232)))

(declare-fun b!2854330 () Bool)

(declare-fun e!1808235 () Bool)

(assert (=> b!2854330 (= e!1808237 e!1808235)))

(declare-fun res!1186301 () Bool)

(assert (=> b!2854330 (=> (not res!1186301) (not e!1808235))))

(assert (=> b!2854330 (= res!1186301 call!183856)))

(declare-fun b!2854331 () Bool)

(assert (=> b!2854331 (= e!1808236 call!183855)))

(declare-fun bm!183852 () Bool)

(assert (=> bm!183852 (= call!183856 (validRegex!3437 (ite c!460088 (regOne!17647 lt!1013824) (regOne!17646 lt!1013824))))))

(declare-fun b!2854332 () Bool)

(assert (=> b!2854332 (= e!1808238 e!1808233)))

(declare-fun res!1186299 () Bool)

(assert (=> b!2854332 (= res!1186299 (not (nullable!2641 (reg!8896 lt!1013824))))))

(assert (=> b!2854332 (=> (not res!1186299) (not e!1808233))))

(declare-fun b!2854333 () Bool)

(assert (=> b!2854333 (= e!1808232 e!1808238)))

(assert (=> b!2854333 (= c!460089 ((_ is Star!8567) lt!1013824))))

(declare-fun b!2854334 () Bool)

(assert (=> b!2854334 (= e!1808235 call!183855)))

(assert (= (and d!826331 (not res!1186302)) b!2854333))

(assert (= (and b!2854333 c!460089) b!2854332))

(assert (= (and b!2854333 (not c!460089)) b!2854327))

(assert (= (and b!2854332 res!1186299) b!2854328))

(assert (= (and b!2854327 c!460088) b!2854326))

(assert (= (and b!2854327 (not c!460088)) b!2854329))

(assert (= (and b!2854326 res!1186300) b!2854331))

(assert (= (and b!2854329 (not res!1186298)) b!2854330))

(assert (= (and b!2854330 res!1186301) b!2854334))

(assert (= (or b!2854331 b!2854334) bm!183851))

(assert (= (or b!2854326 b!2854330) bm!183852))

(assert (= (or b!2854328 bm!183851) bm!183850))

(declare-fun m!3278335 () Bool)

(assert (=> bm!183850 m!3278335))

(declare-fun m!3278337 () Bool)

(assert (=> bm!183852 m!3278337))

(declare-fun m!3278339 () Bool)

(assert (=> b!2854332 m!3278339))

(assert (=> d!826279 d!826331))

(assert (=> d!826279 d!826251))

(declare-fun d!826333 () Bool)

(declare-fun lt!1013850 () Int)

(assert (=> d!826333 (>= lt!1013850 0)))

(declare-fun e!1808241 () Int)

(assert (=> d!826333 (= lt!1013850 e!1808241)))

(declare-fun c!460092 () Bool)

(assert (=> d!826333 (= c!460092 ((_ is Nil!34040) lt!1013818))))

(assert (=> d!826333 (= (size!26271 lt!1013818) lt!1013850)))

(declare-fun b!2854339 () Bool)

(assert (=> b!2854339 (= e!1808241 0)))

(declare-fun b!2854340 () Bool)

(assert (=> b!2854340 (= e!1808241 (+ 1 (size!26271 (t!233195 lt!1013818))))))

(assert (= (and d!826333 c!460092) b!2854339))

(assert (= (and d!826333 (not c!460092)) b!2854340))

(declare-fun m!3278341 () Bool)

(assert (=> b!2854340 m!3278341))

(assert (=> b!2853895 d!826333))

(declare-fun d!826335 () Bool)

(declare-fun lt!1013851 () Int)

(assert (=> d!826335 (>= lt!1013851 0)))

(declare-fun e!1808242 () Int)

(assert (=> d!826335 (= lt!1013851 e!1808242)))

(declare-fun c!460093 () Bool)

(assert (=> d!826335 (= c!460093 ((_ is Nil!34040) (v!34425 lt!1013812)))))

(assert (=> d!826335 (= (size!26271 (v!34425 lt!1013812)) lt!1013851)))

(declare-fun b!2854341 () Bool)

(assert (=> b!2854341 (= e!1808242 0)))

(declare-fun b!2854342 () Bool)

(assert (=> b!2854342 (= e!1808242 (+ 1 (size!26271 (t!233195 (v!34425 lt!1013812)))))))

(assert (= (and d!826335 c!460093) b!2854341))

(assert (= (and d!826335 (not c!460093)) b!2854342))

(assert (=> b!2854342 m!3278333))

(assert (=> b!2853895 d!826335))

(declare-fun d!826337 () Bool)

(declare-fun lt!1013852 () Int)

(assert (=> d!826337 (>= lt!1013852 0)))

(declare-fun e!1808243 () Int)

(assert (=> d!826337 (= lt!1013852 e!1808243)))

(declare-fun c!460094 () Bool)

(assert (=> d!826337 (= c!460094 ((_ is Nil!34040) (v!34425 lt!1013810)))))

(assert (=> d!826337 (= (size!26271 (v!34425 lt!1013810)) lt!1013852)))

(declare-fun b!2854343 () Bool)

(assert (=> b!2854343 (= e!1808243 0)))

(declare-fun b!2854344 () Bool)

(assert (=> b!2854344 (= e!1808243 (+ 1 (size!26271 (t!233195 (v!34425 lt!1013810)))))))

(assert (= (and d!826337 c!460094) b!2854343))

(assert (= (and d!826337 (not c!460094)) b!2854344))

(declare-fun m!3278343 () Bool)

(assert (=> b!2854344 m!3278343))

(assert (=> b!2853895 d!826337))

(declare-fun d!826339 () Bool)

(assert (=> d!826339 (= (isEmpty!18592 (tail!4494 prefix!1470)) ((_ is Nil!34040) (tail!4494 prefix!1470)))))

(assert (=> d!826277 d!826339))

(declare-fun call!183860 () Bool)

(declare-fun bm!183853 () Bool)

(declare-fun c!460096 () Bool)

(declare-fun c!460095 () Bool)

(assert (=> bm!183853 (= call!183860 (validRegex!3437 (ite c!460096 (reg!8896 (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))) (ite c!460095 (regTwo!17647 (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))) (regTwo!17646 (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))))))

(declare-fun b!2854346 () Bool)

(declare-fun e!1808250 () Bool)

(declare-fun e!1808246 () Bool)

(assert (=> b!2854346 (= e!1808250 e!1808246)))

(assert (=> b!2854346 (= c!460095 ((_ is Union!8567) (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))))

(declare-fun b!2854347 () Bool)

(declare-fun e!1808245 () Bool)

(assert (=> b!2854347 (= e!1808245 call!183860)))

(declare-fun b!2854348 () Bool)

(declare-fun res!1186303 () Bool)

(declare-fun e!1808249 () Bool)

(assert (=> b!2854348 (=> res!1186303 e!1808249)))

(assert (=> b!2854348 (= res!1186303 (not ((_ is Concat!13888) (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))))

(assert (=> b!2854348 (= e!1808246 e!1808249)))

(declare-fun bm!183854 () Bool)

(declare-fun call!183858 () Bool)

(assert (=> bm!183854 (= call!183858 call!183860)))

(declare-fun b!2854345 () Bool)

(declare-fun res!1186305 () Bool)

(declare-fun e!1808248 () Bool)

(assert (=> b!2854345 (=> (not res!1186305) (not e!1808248))))

(declare-fun call!183859 () Bool)

(assert (=> b!2854345 (= res!1186305 call!183859)))

(assert (=> b!2854345 (= e!1808246 e!1808248)))

(declare-fun d!826341 () Bool)

(declare-fun res!1186307 () Bool)

(declare-fun e!1808244 () Bool)

(assert (=> d!826341 (=> res!1186307 e!1808244)))

(assert (=> d!826341 (= res!1186307 ((_ is ElementMatch!8567) (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))))

(assert (=> d!826341 (= (validRegex!3437 (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))) e!1808244)))

(declare-fun b!2854349 () Bool)

(declare-fun e!1808247 () Bool)

(assert (=> b!2854349 (= e!1808249 e!1808247)))

(declare-fun res!1186306 () Bool)

(assert (=> b!2854349 (=> (not res!1186306) (not e!1808247))))

(assert (=> b!2854349 (= res!1186306 call!183859)))

(declare-fun b!2854350 () Bool)

(assert (=> b!2854350 (= e!1808248 call!183858)))

(declare-fun bm!183855 () Bool)

(assert (=> bm!183855 (= call!183859 (validRegex!3437 (ite c!460095 (regOne!17647 (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))) (regOne!17646 (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))))))

(declare-fun b!2854351 () Bool)

(assert (=> b!2854351 (= e!1808250 e!1808245)))

(declare-fun res!1186304 () Bool)

(assert (=> b!2854351 (= res!1186304 (not (nullable!2641 (reg!8896 (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))))))

(assert (=> b!2854351 (=> (not res!1186304) (not e!1808245))))

(declare-fun b!2854352 () Bool)

(assert (=> b!2854352 (= e!1808244 e!1808250)))

(assert (=> b!2854352 (= c!460096 ((_ is Star!8567) (ite c!459997 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (ite c!459996 (regTwo!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regTwo!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))))

(declare-fun b!2854353 () Bool)

(assert (=> b!2854353 (= e!1808247 call!183858)))

(assert (= (and d!826341 (not res!1186307)) b!2854352))

(assert (= (and b!2854352 c!460096) b!2854351))

(assert (= (and b!2854352 (not c!460096)) b!2854346))

(assert (= (and b!2854351 res!1186304) b!2854347))

(assert (= (and b!2854346 c!460095) b!2854345))

(assert (= (and b!2854346 (not c!460095)) b!2854348))

(assert (= (and b!2854345 res!1186305) b!2854350))

(assert (= (and b!2854348 (not res!1186303)) b!2854349))

(assert (= (and b!2854349 res!1186306) b!2854353))

(assert (= (or b!2854350 b!2854353) bm!183854))

(assert (= (or b!2854345 b!2854349) bm!183855))

(assert (= (or b!2854347 bm!183854) bm!183853))

(declare-fun m!3278345 () Bool)

(assert (=> bm!183853 m!3278345))

(declare-fun m!3278347 () Bool)

(assert (=> bm!183855 m!3278347))

(declare-fun m!3278349 () Bool)

(assert (=> b!2854351 m!3278349))

(assert (=> bm!183794 d!826341))

(declare-fun b!2854354 () Bool)

(declare-fun e!1808255 () Regex!8567)

(assert (=> b!2854354 (= e!1808255 EmptyLang!8567)))

(declare-fun b!2854355 () Bool)

(declare-fun call!183863 () Regex!8567)

(declare-fun call!183862 () Regex!8567)

(declare-fun e!1808252 () Regex!8567)

(assert (=> b!2854355 (= e!1808252 (Union!8567 (Concat!13888 call!183862 (regTwo!17646 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423))))) call!183863))))

(declare-fun c!460099 () Bool)

(declare-fun c!460098 () Bool)

(declare-fun call!183861 () Regex!8567)

(declare-fun bm!183856 () Bool)

(assert (=> bm!183856 (= call!183861 (derivativeStep!2265 (ite c!460098 (regTwo!17647 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))) (ite c!460099 (reg!8896 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))) (regOne!17646 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))))) (head!6269 prefix!1470)))))

(declare-fun b!2854356 () Bool)

(declare-fun c!460097 () Bool)

(assert (=> b!2854356 (= c!460097 (nullable!2641 (regOne!17646 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423))))))))

(declare-fun e!1808254 () Regex!8567)

(assert (=> b!2854356 (= e!1808254 e!1808252)))

(declare-fun b!2854357 () Bool)

(declare-fun e!1808251 () Regex!8567)

(assert (=> b!2854357 (= e!1808255 e!1808251)))

(declare-fun c!460101 () Bool)

(assert (=> b!2854357 (= c!460101 ((_ is ElementMatch!8567) (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))))))

(declare-fun b!2854358 () Bool)

(declare-fun e!1808253 () Regex!8567)

(assert (=> b!2854358 (= e!1808253 e!1808254)))

(assert (=> b!2854358 (= c!460099 ((_ is Star!8567) (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))))))

(declare-fun b!2854359 () Bool)

(assert (=> b!2854359 (= e!1808254 (Concat!13888 call!183862 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))))))

(declare-fun bm!183858 () Bool)

(declare-fun call!183864 () Regex!8567)

(assert (=> bm!183858 (= call!183863 call!183864)))

(declare-fun b!2854360 () Bool)

(assert (=> b!2854360 (= e!1808252 (Union!8567 (Concat!13888 call!183863 (regTwo!17646 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423))))) EmptyLang!8567))))

(declare-fun b!2854361 () Bool)

(assert (=> b!2854361 (= e!1808251 (ite (= (head!6269 prefix!1470) (c!459926 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423))))) EmptyExpr!8567 EmptyLang!8567))))

(declare-fun bm!183857 () Bool)

(assert (=> bm!183857 (= call!183862 call!183861)))

(declare-fun d!826343 () Bool)

(declare-fun lt!1013853 () Regex!8567)

(assert (=> d!826343 (validRegex!3437 lt!1013853)))

(assert (=> d!826343 (= lt!1013853 e!1808255)))

(declare-fun c!460100 () Bool)

(assert (=> d!826343 (= c!460100 (or ((_ is EmptyExpr!8567) (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))) ((_ is EmptyLang!8567) (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423))))))))

(assert (=> d!826343 (validRegex!3437 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423))))))

(assert (=> d!826343 (= (derivativeStep!2265 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423))) (head!6269 prefix!1470)) lt!1013853)))

(declare-fun b!2854362 () Bool)

(assert (=> b!2854362 (= c!460098 ((_ is Union!8567) (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))))))

(assert (=> b!2854362 (= e!1808251 e!1808253)))

(declare-fun bm!183859 () Bool)

(assert (=> bm!183859 (= call!183864 (derivativeStep!2265 (ite c!460098 (regOne!17647 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))) (ite c!460097 (regTwo!17646 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))) (regOne!17646 (ite c!460018 (regOne!17647 r!23423) (ite c!460017 (regTwo!17646 r!23423) (regOne!17646 r!23423)))))) (head!6269 prefix!1470)))))

(declare-fun b!2854363 () Bool)

(assert (=> b!2854363 (= e!1808253 (Union!8567 call!183864 call!183861))))

(assert (= (and d!826343 c!460100) b!2854354))

(assert (= (and d!826343 (not c!460100)) b!2854357))

(assert (= (and b!2854357 c!460101) b!2854361))

(assert (= (and b!2854357 (not c!460101)) b!2854362))

(assert (= (and b!2854362 c!460098) b!2854363))

(assert (= (and b!2854362 (not c!460098)) b!2854358))

(assert (= (and b!2854358 c!460099) b!2854359))

(assert (= (and b!2854358 (not c!460099)) b!2854356))

(assert (= (and b!2854356 c!460097) b!2854355))

(assert (= (and b!2854356 (not c!460097)) b!2854360))

(assert (= (or b!2854355 b!2854360) bm!183858))

(assert (= (or b!2854359 b!2854355) bm!183857))

(assert (= (or b!2854363 bm!183857) bm!183856))

(assert (= (or b!2854363 bm!183858) bm!183859))

(assert (=> bm!183856 m!3278137))

(declare-fun m!3278351 () Bool)

(assert (=> bm!183856 m!3278351))

(declare-fun m!3278353 () Bool)

(assert (=> b!2854356 m!3278353))

(declare-fun m!3278355 () Bool)

(assert (=> d!826343 m!3278355))

(declare-fun m!3278357 () Bool)

(assert (=> d!826343 m!3278357))

(assert (=> bm!183859 m!3278137))

(declare-fun m!3278359 () Bool)

(assert (=> bm!183859 m!3278359))

(assert (=> bm!183810 d!826343))

(declare-fun d!826345 () Bool)

(declare-fun c!460102 () Bool)

(assert (=> d!826345 (= c!460102 (isEmpty!18592 (tail!4494 (tail!4494 prefix!1470))))))

(declare-fun e!1808256 () Bool)

(assert (=> d!826345 (= (prefixMatch!875 (derivativeStep!2265 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)) (head!6269 (tail!4494 prefix!1470))) (tail!4494 (tail!4494 prefix!1470))) e!1808256)))

(declare-fun b!2854364 () Bool)

(assert (=> b!2854364 (= e!1808256 (not (lostCause!740 (derivativeStep!2265 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)) (head!6269 (tail!4494 prefix!1470))))))))

(declare-fun b!2854365 () Bool)

(assert (=> b!2854365 (= e!1808256 (prefixMatch!875 (derivativeStep!2265 (derivativeStep!2265 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)) (head!6269 (tail!4494 prefix!1470))) (head!6269 (tail!4494 (tail!4494 prefix!1470)))) (tail!4494 (tail!4494 (tail!4494 prefix!1470)))))))

(assert (= (and d!826345 c!460102) b!2854364))

(assert (= (and d!826345 (not c!460102)) b!2854365))

(assert (=> d!826345 m!3278213))

(declare-fun m!3278361 () Bool)

(assert (=> d!826345 m!3278361))

(assert (=> b!2854364 m!3278211))

(declare-fun m!3278363 () Bool)

(assert (=> b!2854364 m!3278363))

(assert (=> b!2854365 m!3278213))

(declare-fun m!3278365 () Bool)

(assert (=> b!2854365 m!3278365))

(assert (=> b!2854365 m!3278211))

(assert (=> b!2854365 m!3278365))

(declare-fun m!3278367 () Bool)

(assert (=> b!2854365 m!3278367))

(assert (=> b!2854365 m!3278213))

(declare-fun m!3278369 () Bool)

(assert (=> b!2854365 m!3278369))

(assert (=> b!2854365 m!3278367))

(assert (=> b!2854365 m!3278369))

(declare-fun m!3278371 () Bool)

(assert (=> b!2854365 m!3278371))

(assert (=> b!2853923 d!826345))

(declare-fun b!2854366 () Bool)

(declare-fun e!1808261 () Regex!8567)

(assert (=> b!2854366 (= e!1808261 EmptyLang!8567)))

(declare-fun e!1808258 () Regex!8567)

(declare-fun call!183867 () Regex!8567)

(declare-fun b!2854367 () Bool)

(declare-fun call!183866 () Regex!8567)

(assert (=> b!2854367 (= e!1808258 (Union!8567 (Concat!13888 call!183866 (regTwo!17646 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)))) call!183867))))

(declare-fun c!460105 () Bool)

(declare-fun bm!183860 () Bool)

(declare-fun call!183865 () Regex!8567)

(declare-fun c!460104 () Bool)

(assert (=> bm!183860 (= call!183865 (derivativeStep!2265 (ite c!460104 (regTwo!17647 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))) (ite c!460105 (reg!8896 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))) (regOne!17646 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))))) (head!6269 (tail!4494 prefix!1470))))))

(declare-fun b!2854368 () Bool)

(declare-fun c!460103 () Bool)

(assert (=> b!2854368 (= c!460103 (nullable!2641 (regOne!17646 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)))))))

(declare-fun e!1808260 () Regex!8567)

(assert (=> b!2854368 (= e!1808260 e!1808258)))

(declare-fun b!2854369 () Bool)

(declare-fun e!1808257 () Regex!8567)

(assert (=> b!2854369 (= e!1808261 e!1808257)))

(declare-fun c!460107 () Bool)

(assert (=> b!2854369 (= c!460107 ((_ is ElementMatch!8567) (derivativeStep!2265 r!23423 (head!6269 prefix!1470))))))

(declare-fun b!2854370 () Bool)

(declare-fun e!1808259 () Regex!8567)

(assert (=> b!2854370 (= e!1808259 e!1808260)))

(assert (=> b!2854370 (= c!460105 ((_ is Star!8567) (derivativeStep!2265 r!23423 (head!6269 prefix!1470))))))

(declare-fun b!2854371 () Bool)

(assert (=> b!2854371 (= e!1808260 (Concat!13888 call!183866 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))))))

(declare-fun bm!183862 () Bool)

(declare-fun call!183868 () Regex!8567)

(assert (=> bm!183862 (= call!183867 call!183868)))

(declare-fun b!2854372 () Bool)

(assert (=> b!2854372 (= e!1808258 (Union!8567 (Concat!13888 call!183867 (regTwo!17646 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)))) EmptyLang!8567))))

(declare-fun b!2854373 () Bool)

(assert (=> b!2854373 (= e!1808257 (ite (= (head!6269 (tail!4494 prefix!1470)) (c!459926 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)))) EmptyExpr!8567 EmptyLang!8567))))

(declare-fun bm!183861 () Bool)

(assert (=> bm!183861 (= call!183866 call!183865)))

(declare-fun d!826347 () Bool)

(declare-fun lt!1013854 () Regex!8567)

(assert (=> d!826347 (validRegex!3437 lt!1013854)))

(assert (=> d!826347 (= lt!1013854 e!1808261)))

(declare-fun c!460106 () Bool)

(assert (=> d!826347 (= c!460106 (or ((_ is EmptyExpr!8567) (derivativeStep!2265 r!23423 (head!6269 prefix!1470))) ((_ is EmptyLang!8567) (derivativeStep!2265 r!23423 (head!6269 prefix!1470)))))))

(assert (=> d!826347 (validRegex!3437 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)))))

(assert (=> d!826347 (= (derivativeStep!2265 (derivativeStep!2265 r!23423 (head!6269 prefix!1470)) (head!6269 (tail!4494 prefix!1470))) lt!1013854)))

(declare-fun b!2854374 () Bool)

(assert (=> b!2854374 (= c!460104 ((_ is Union!8567) (derivativeStep!2265 r!23423 (head!6269 prefix!1470))))))

(assert (=> b!2854374 (= e!1808257 e!1808259)))

(declare-fun bm!183863 () Bool)

(assert (=> bm!183863 (= call!183868 (derivativeStep!2265 (ite c!460104 (regOne!17647 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))) (ite c!460103 (regTwo!17646 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))) (regOne!17646 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))))) (head!6269 (tail!4494 prefix!1470))))))

(declare-fun b!2854375 () Bool)

(assert (=> b!2854375 (= e!1808259 (Union!8567 call!183868 call!183865))))

(assert (= (and d!826347 c!460106) b!2854366))

(assert (= (and d!826347 (not c!460106)) b!2854369))

(assert (= (and b!2854369 c!460107) b!2854373))

(assert (= (and b!2854369 (not c!460107)) b!2854374))

(assert (= (and b!2854374 c!460104) b!2854375))

(assert (= (and b!2854374 (not c!460104)) b!2854370))

(assert (= (and b!2854370 c!460105) b!2854371))

(assert (= (and b!2854370 (not c!460105)) b!2854368))

(assert (= (and b!2854368 c!460103) b!2854367))

(assert (= (and b!2854368 (not c!460103)) b!2854372))

(assert (= (or b!2854367 b!2854372) bm!183862))

(assert (= (or b!2854371 b!2854367) bm!183861))

(assert (= (or b!2854375 bm!183861) bm!183860))

(assert (= (or b!2854375 bm!183862) bm!183863))

(assert (=> bm!183860 m!3278209))

(declare-fun m!3278373 () Bool)

(assert (=> bm!183860 m!3278373))

(declare-fun m!3278375 () Bool)

(assert (=> b!2854368 m!3278375))

(declare-fun m!3278377 () Bool)

(assert (=> d!826347 m!3278377))

(assert (=> d!826347 m!3278139))

(declare-fun m!3278379 () Bool)

(assert (=> d!826347 m!3278379))

(assert (=> bm!183863 m!3278209))

(declare-fun m!3278381 () Bool)

(assert (=> bm!183863 m!3278381))

(assert (=> b!2853923 d!826347))

(declare-fun d!826349 () Bool)

(assert (=> d!826349 (= (head!6269 (tail!4494 prefix!1470)) (h!39460 (tail!4494 prefix!1470)))))

(assert (=> b!2853923 d!826349))

(declare-fun d!826351 () Bool)

(assert (=> d!826351 (= (tail!4494 (tail!4494 prefix!1470)) (t!233195 (tail!4494 prefix!1470)))))

(assert (=> b!2853923 d!826351))

(declare-fun d!826353 () Bool)

(assert (=> d!826353 (= (lostCause!740 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))) (lostCauseFct!215 (derivativeStep!2265 r!23423 (head!6269 prefix!1470))))))

(declare-fun bs!520237 () Bool)

(assert (= bs!520237 d!826353))

(assert (=> bs!520237 m!3278139))

(declare-fun m!3278383 () Bool)

(assert (=> bs!520237 m!3278383))

(assert (=> b!2853922 d!826353))

(declare-fun b!2854376 () Bool)

(declare-fun e!1808262 () Option!6304)

(assert (=> b!2854376 (= e!1808262 (Some!6303 Nil!34040))))

(declare-fun b!2854377 () Bool)

(declare-fun e!1808264 () Option!6304)

(declare-fun e!1808267 () Option!6304)

(assert (=> b!2854377 (= e!1808264 e!1808267)))

(declare-fun lt!1013856 () Option!6304)

(declare-fun call!183869 () Option!6304)

(assert (=> b!2854377 (= lt!1013856 call!183869)))

(declare-fun c!460113 () Bool)

(assert (=> b!2854377 (= c!460113 ((_ is Some!6303) lt!1013856))))

(declare-fun c!460111 () Bool)

(declare-fun d!826355 () Bool)

(assert (=> d!826355 (= c!460111 ((_ is EmptyExpr!8567) (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(assert (=> d!826355 (= (getLanguageWitness!235 (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))) e!1808262)))

(declare-fun b!2854378 () Bool)

(declare-fun e!1808266 () Option!6304)

(assert (=> b!2854378 (= e!1808266 None!6303)))

(declare-fun b!2854379 () Bool)

(declare-fun c!460115 () Bool)

(declare-fun lt!1013855 () Option!6304)

(assert (=> b!2854379 (= c!460115 ((_ is Some!6303) lt!1013855))))

(assert (=> b!2854379 (= lt!1013855 call!183869)))

(declare-fun e!1808265 () Option!6304)

(declare-fun e!1808269 () Option!6304)

(assert (=> b!2854379 (= e!1808265 e!1808269)))

(declare-fun b!2854380 () Bool)

(assert (=> b!2854380 (= e!1808269 None!6303)))

(declare-fun c!460108 () Bool)

(declare-fun b!2854381 () Bool)

(assert (=> b!2854381 (= c!460108 ((_ is Union!8567) (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun e!1808268 () Option!6304)

(assert (=> b!2854381 (= e!1808268 e!1808264)))

(declare-fun b!2854382 () Bool)

(assert (=> b!2854382 (= e!1808265 None!6303)))

(declare-fun call!183870 () Option!6304)

(declare-fun bm!183864 () Bool)

(assert (=> bm!183864 (= call!183870 (getLanguageWitness!235 (ite c!460108 (regTwo!17647 (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))) (regOne!17646 (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))))

(declare-fun b!2854383 () Bool)

(declare-fun c!460114 () Bool)

(assert (=> b!2854383 (= c!460114 ((_ is ElementMatch!8567) (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun e!1808263 () Option!6304)

(assert (=> b!2854383 (= e!1808266 e!1808263)))

(declare-fun b!2854384 () Bool)

(assert (=> b!2854384 (= e!1808263 (Some!6303 (Cons!34040 (c!459926 (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))) Nil!34040)))))

(declare-fun b!2854385 () Bool)

(declare-fun lt!1013857 () Option!6304)

(assert (=> b!2854385 (= e!1808269 (Some!6303 (++!8128 (v!34425 lt!1013857) (v!34425 lt!1013855))))))

(declare-fun bm!183865 () Bool)

(assert (=> bm!183865 (= call!183869 (getLanguageWitness!235 (ite c!460108 (regOne!17647 (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))) (regTwo!17646 (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))))

(declare-fun b!2854386 () Bool)

(assert (=> b!2854386 (= e!1808263 e!1808268)))

(declare-fun c!460112 () Bool)

(assert (=> b!2854386 (= c!460112 ((_ is Star!8567) (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun b!2854387 () Bool)

(assert (=> b!2854387 (= e!1808264 e!1808265)))

(assert (=> b!2854387 (= lt!1013857 call!183870)))

(declare-fun c!460110 () Bool)

(assert (=> b!2854387 (= c!460110 ((_ is Some!6303) lt!1013857))))

(declare-fun b!2854388 () Bool)

(assert (=> b!2854388 (= e!1808268 (Some!6303 Nil!34040))))

(declare-fun b!2854389 () Bool)

(assert (=> b!2854389 (= e!1808267 call!183870)))

(declare-fun b!2854390 () Bool)

(assert (=> b!2854390 (= e!1808267 lt!1013856)))

(declare-fun b!2854391 () Bool)

(assert (=> b!2854391 (= e!1808262 e!1808266)))

(declare-fun c!460109 () Bool)

(assert (=> b!2854391 (= c!460109 ((_ is EmptyLang!8567) (ite c!459998 (regTwo!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regOne!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(assert (= (and d!826355 c!460111) b!2854376))

(assert (= (and d!826355 (not c!460111)) b!2854391))

(assert (= (and b!2854391 c!460109) b!2854378))

(assert (= (and b!2854391 (not c!460109)) b!2854383))

(assert (= (and b!2854383 c!460114) b!2854384))

(assert (= (and b!2854383 (not c!460114)) b!2854386))

(assert (= (and b!2854386 c!460112) b!2854388))

(assert (= (and b!2854386 (not c!460112)) b!2854381))

(assert (= (and b!2854381 c!460108) b!2854377))

(assert (= (and b!2854381 (not c!460108)) b!2854387))

(assert (= (and b!2854377 c!460113) b!2854390))

(assert (= (and b!2854377 (not c!460113)) b!2854389))

(assert (= (and b!2854387 c!460110) b!2854379))

(assert (= (and b!2854387 (not c!460110)) b!2854382))

(assert (= (and b!2854379 c!460115) b!2854385))

(assert (= (and b!2854379 (not c!460115)) b!2854380))

(assert (= (or b!2854377 b!2854379) bm!183865))

(assert (= (or b!2854389 b!2854387) bm!183864))

(declare-fun m!3278385 () Bool)

(assert (=> bm!183864 m!3278385))

(declare-fun m!3278387 () Bool)

(assert (=> b!2854385 m!3278387))

(declare-fun m!3278389 () Bool)

(assert (=> bm!183865 m!3278389))

(assert (=> bm!183797 d!826355))

(declare-fun c!460116 () Bool)

(declare-fun bm!183866 () Bool)

(declare-fun call!183873 () Bool)

(declare-fun c!460117 () Bool)

(assert (=> bm!183866 (= call!183873 (validRegex!3437 (ite c!460117 (reg!8896 (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))) (ite c!460116 (regTwo!17647 (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))) (regTwo!17646 (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))))))

(declare-fun b!2854393 () Bool)

(declare-fun e!1808276 () Bool)

(declare-fun e!1808272 () Bool)

(assert (=> b!2854393 (= e!1808276 e!1808272)))

(assert (=> b!2854393 (= c!460116 ((_ is Union!8567) (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))))

(declare-fun b!2854394 () Bool)

(declare-fun e!1808271 () Bool)

(assert (=> b!2854394 (= e!1808271 call!183873)))

(declare-fun b!2854395 () Bool)

(declare-fun res!1186308 () Bool)

(declare-fun e!1808275 () Bool)

(assert (=> b!2854395 (=> res!1186308 e!1808275)))

(assert (=> b!2854395 (= res!1186308 (not ((_ is Concat!13888) (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))))

(assert (=> b!2854395 (= e!1808272 e!1808275)))

(declare-fun bm!183867 () Bool)

(declare-fun call!183871 () Bool)

(assert (=> bm!183867 (= call!183871 call!183873)))

(declare-fun b!2854392 () Bool)

(declare-fun res!1186310 () Bool)

(declare-fun e!1808274 () Bool)

(assert (=> b!2854392 (=> (not res!1186310) (not e!1808274))))

(declare-fun call!183872 () Bool)

(assert (=> b!2854392 (= res!1186310 call!183872)))

(assert (=> b!2854392 (= e!1808272 e!1808274)))

(declare-fun d!826357 () Bool)

(declare-fun res!1186312 () Bool)

(declare-fun e!1808270 () Bool)

(assert (=> d!826357 (=> res!1186312 e!1808270)))

(assert (=> d!826357 (= res!1186312 ((_ is ElementMatch!8567) (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))))

(assert (=> d!826357 (= (validRegex!3437 (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))) e!1808270)))

(declare-fun b!2854396 () Bool)

(declare-fun e!1808273 () Bool)

(assert (=> b!2854396 (= e!1808275 e!1808273)))

(declare-fun res!1186311 () Bool)

(assert (=> b!2854396 (=> (not res!1186311) (not e!1808273))))

(assert (=> b!2854396 (= res!1186311 call!183872)))

(declare-fun b!2854397 () Bool)

(assert (=> b!2854397 (= e!1808274 call!183871)))

(declare-fun bm!183868 () Bool)

(assert (=> bm!183868 (= call!183872 (validRegex!3437 (ite c!460116 (regOne!17647 (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))) (regOne!17646 (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))))))

(declare-fun b!2854398 () Bool)

(assert (=> b!2854398 (= e!1808276 e!1808271)))

(declare-fun res!1186309 () Bool)

(assert (=> b!2854398 (= res!1186309 (not (nullable!2641 (reg!8896 (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))))))

(assert (=> b!2854398 (=> (not res!1186309) (not e!1808271))))

(declare-fun b!2854399 () Bool)

(assert (=> b!2854399 (= e!1808270 e!1808276)))

(assert (=> b!2854399 (= c!460117 ((_ is Star!8567) (ite c!460023 (reg!8896 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (ite c!460022 (regTwo!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regTwo!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))))

(declare-fun b!2854400 () Bool)

(assert (=> b!2854400 (= e!1808273 call!183871)))

(assert (= (and d!826357 (not res!1186312)) b!2854399))

(assert (= (and b!2854399 c!460117) b!2854398))

(assert (= (and b!2854399 (not c!460117)) b!2854393))

(assert (= (and b!2854398 res!1186309) b!2854394))

(assert (= (and b!2854393 c!460116) b!2854392))

(assert (= (and b!2854393 (not c!460116)) b!2854395))

(assert (= (and b!2854392 res!1186310) b!2854397))

(assert (= (and b!2854395 (not res!1186308)) b!2854396))

(assert (= (and b!2854396 res!1186311) b!2854400))

(assert (= (or b!2854397 b!2854400) bm!183867))

(assert (= (or b!2854392 b!2854396) bm!183868))

(assert (= (or b!2854394 bm!183867) bm!183866))

(declare-fun m!3278391 () Bool)

(assert (=> bm!183866 m!3278391))

(declare-fun m!3278393 () Bool)

(assert (=> bm!183868 m!3278393))

(declare-fun m!3278395 () Bool)

(assert (=> b!2854398 m!3278395))

(assert (=> bm!183811 d!826357))

(declare-fun d!826359 () Bool)

(declare-fun e!1808277 () Bool)

(assert (=> d!826359 e!1808277))

(declare-fun res!1186313 () Bool)

(assert (=> d!826359 (=> (not res!1186313) (not e!1808277))))

(declare-fun lt!1013858 () List!34164)

(assert (=> d!826359 (= res!1186313 (= (content!4666 lt!1013858) ((_ map or) (content!4666 (v!34425 lt!1013821)) (content!4666 (v!34425 lt!1013819)))))))

(declare-fun e!1808278 () List!34164)

(assert (=> d!826359 (= lt!1013858 e!1808278)))

(declare-fun c!460118 () Bool)

(assert (=> d!826359 (= c!460118 ((_ is Nil!34040) (v!34425 lt!1013821)))))

(assert (=> d!826359 (= (++!8128 (v!34425 lt!1013821) (v!34425 lt!1013819)) lt!1013858)))

(declare-fun b!2854402 () Bool)

(assert (=> b!2854402 (= e!1808278 (Cons!34040 (h!39460 (v!34425 lt!1013821)) (++!8128 (t!233195 (v!34425 lt!1013821)) (v!34425 lt!1013819))))))

(declare-fun b!2854403 () Bool)

(declare-fun res!1186314 () Bool)

(assert (=> b!2854403 (=> (not res!1186314) (not e!1808277))))

(assert (=> b!2854403 (= res!1186314 (= (size!26271 lt!1013858) (+ (size!26271 (v!34425 lt!1013821)) (size!26271 (v!34425 lt!1013819)))))))

(declare-fun b!2854404 () Bool)

(assert (=> b!2854404 (= e!1808277 (or (not (= (v!34425 lt!1013819) Nil!34040)) (= lt!1013858 (v!34425 lt!1013821))))))

(declare-fun b!2854401 () Bool)

(assert (=> b!2854401 (= e!1808278 (v!34425 lt!1013819))))

(assert (= (and d!826359 c!460118) b!2854401))

(assert (= (and d!826359 (not c!460118)) b!2854402))

(assert (= (and d!826359 res!1186313) b!2854403))

(assert (= (and b!2854403 res!1186314) b!2854404))

(declare-fun m!3278397 () Bool)

(assert (=> d!826359 m!3278397))

(declare-fun m!3278399 () Bool)

(assert (=> d!826359 m!3278399))

(declare-fun m!3278401 () Bool)

(assert (=> d!826359 m!3278401))

(declare-fun m!3278403 () Bool)

(assert (=> b!2854402 m!3278403))

(declare-fun m!3278405 () Bool)

(assert (=> b!2854403 m!3278405))

(declare-fun m!3278407 () Bool)

(assert (=> b!2854403 m!3278407))

(declare-fun m!3278409 () Bool)

(assert (=> b!2854403 m!3278409))

(assert (=> b!2853915 d!826359))

(declare-fun c!460119 () Bool)

(declare-fun c!460120 () Bool)

(declare-fun call!183876 () Bool)

(declare-fun bm!183869 () Bool)

(assert (=> bm!183869 (= call!183876 (validRegex!3437 (ite c!460120 (reg!8896 (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))) (ite c!460119 (regTwo!17647 (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))) (regTwo!17646 (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))))))

(declare-fun b!2854406 () Bool)

(declare-fun e!1808285 () Bool)

(declare-fun e!1808281 () Bool)

(assert (=> b!2854406 (= e!1808285 e!1808281)))

(assert (=> b!2854406 (= c!460119 ((_ is Union!8567) (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))

(declare-fun b!2854407 () Bool)

(declare-fun e!1808280 () Bool)

(assert (=> b!2854407 (= e!1808280 call!183876)))

(declare-fun b!2854408 () Bool)

(declare-fun res!1186315 () Bool)

(declare-fun e!1808284 () Bool)

(assert (=> b!2854408 (=> res!1186315 e!1808284)))

(assert (=> b!2854408 (= res!1186315 (not ((_ is Concat!13888) (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))))

(assert (=> b!2854408 (= e!1808281 e!1808284)))

(declare-fun bm!183870 () Bool)

(declare-fun call!183874 () Bool)

(assert (=> bm!183870 (= call!183874 call!183876)))

(declare-fun b!2854405 () Bool)

(declare-fun res!1186317 () Bool)

(declare-fun e!1808283 () Bool)

(assert (=> b!2854405 (=> (not res!1186317) (not e!1808283))))

(declare-fun call!183875 () Bool)

(assert (=> b!2854405 (= res!1186317 call!183875)))

(assert (=> b!2854405 (= e!1808281 e!1808283)))

(declare-fun d!826361 () Bool)

(declare-fun res!1186319 () Bool)

(declare-fun e!1808279 () Bool)

(assert (=> d!826361 (=> res!1186319 e!1808279)))

(assert (=> d!826361 (= res!1186319 ((_ is ElementMatch!8567) (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))

(assert (=> d!826361 (= (validRegex!3437 (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))) e!1808279)))

(declare-fun b!2854409 () Bool)

(declare-fun e!1808282 () Bool)

(assert (=> b!2854409 (= e!1808284 e!1808282)))

(declare-fun res!1186318 () Bool)

(assert (=> b!2854409 (=> (not res!1186318) (not e!1808282))))

(assert (=> b!2854409 (= res!1186318 call!183875)))

(declare-fun b!2854410 () Bool)

(assert (=> b!2854410 (= e!1808283 call!183874)))

(declare-fun bm!183871 () Bool)

(assert (=> bm!183871 (= call!183875 (validRegex!3437 (ite c!460119 (regOne!17647 (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))) (regOne!17646 (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))))

(declare-fun b!2854411 () Bool)

(assert (=> b!2854411 (= e!1808285 e!1808280)))

(declare-fun res!1186316 () Bool)

(assert (=> b!2854411 (= res!1186316 (not (nullable!2641 (reg!8896 (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))))

(assert (=> b!2854411 (=> (not res!1186316) (not e!1808280))))

(declare-fun b!2854412 () Bool)

(assert (=> b!2854412 (= e!1808279 e!1808285)))

(assert (=> b!2854412 (= c!460120 ((_ is Star!8567) (ite c!459996 (regOne!17647 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))) (regOne!17646 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423)))))))))

(declare-fun b!2854413 () Bool)

(assert (=> b!2854413 (= e!1808282 call!183874)))

(assert (= (and d!826361 (not res!1186319)) b!2854412))

(assert (= (and b!2854412 c!460120) b!2854411))

(assert (= (and b!2854412 (not c!460120)) b!2854406))

(assert (= (and b!2854411 res!1186316) b!2854407))

(assert (= (and b!2854406 c!460119) b!2854405))

(assert (= (and b!2854406 (not c!460119)) b!2854408))

(assert (= (and b!2854405 res!1186317) b!2854410))

(assert (= (and b!2854408 (not res!1186315)) b!2854409))

(assert (= (and b!2854409 res!1186318) b!2854413))

(assert (= (or b!2854410 b!2854413) bm!183870))

(assert (= (or b!2854405 b!2854409) bm!183871))

(assert (= (or b!2854407 bm!183870) bm!183869))

(declare-fun m!3278411 () Bool)

(assert (=> bm!183869 m!3278411))

(declare-fun m!3278413 () Bool)

(assert (=> bm!183871 m!3278413))

(declare-fun m!3278415 () Bool)

(assert (=> b!2854411 m!3278415))

(assert (=> bm!183796 d!826361))

(declare-fun d!826363 () Bool)

(declare-fun res!1186331 () Bool)

(declare-fun e!1808300 () Bool)

(assert (=> d!826363 (=> res!1186331 e!1808300)))

(assert (=> d!826363 (= res!1186331 ((_ is EmptyExpr!8567) (reg!8896 r!23423)))))

(assert (=> d!826363 (= (nullableFct!799 (reg!8896 r!23423)) e!1808300)))

(declare-fun b!2854428 () Bool)

(declare-fun e!1808302 () Bool)

(declare-fun e!1808301 () Bool)

(assert (=> b!2854428 (= e!1808302 e!1808301)))

(declare-fun c!460123 () Bool)

(assert (=> b!2854428 (= c!460123 ((_ is Union!8567) (reg!8896 r!23423)))))

(declare-fun b!2854429 () Bool)

(declare-fun e!1808298 () Bool)

(declare-fun call!183882 () Bool)

(assert (=> b!2854429 (= e!1808298 call!183882)))

(declare-fun bm!183876 () Bool)

(declare-fun call!183881 () Bool)

(assert (=> bm!183876 (= call!183881 (nullable!2641 (ite c!460123 (regOne!17647 (reg!8896 r!23423)) (regTwo!17646 (reg!8896 r!23423)))))))

(declare-fun bm!183877 () Bool)

(assert (=> bm!183877 (= call!183882 (nullable!2641 (ite c!460123 (regTwo!17647 (reg!8896 r!23423)) (regOne!17646 (reg!8896 r!23423)))))))

(declare-fun b!2854430 () Bool)

(assert (=> b!2854430 (= e!1808301 e!1808298)))

(declare-fun res!1186334 () Bool)

(assert (=> b!2854430 (= res!1186334 call!183881)))

(assert (=> b!2854430 (=> res!1186334 e!1808298)))

(declare-fun b!2854431 () Bool)

(declare-fun e!1808303 () Bool)

(assert (=> b!2854431 (= e!1808303 call!183881)))

(declare-fun b!2854432 () Bool)

(declare-fun e!1808299 () Bool)

(assert (=> b!2854432 (= e!1808300 e!1808299)))

(declare-fun res!1186332 () Bool)

(assert (=> b!2854432 (=> (not res!1186332) (not e!1808299))))

(assert (=> b!2854432 (= res!1186332 (and (not ((_ is EmptyLang!8567) (reg!8896 r!23423))) (not ((_ is ElementMatch!8567) (reg!8896 r!23423)))))))

(declare-fun b!2854433 () Bool)

(assert (=> b!2854433 (= e!1808299 e!1808302)))

(declare-fun res!1186333 () Bool)

(assert (=> b!2854433 (=> res!1186333 e!1808302)))

(assert (=> b!2854433 (= res!1186333 ((_ is Star!8567) (reg!8896 r!23423)))))

(declare-fun b!2854434 () Bool)

(assert (=> b!2854434 (= e!1808301 e!1808303)))

(declare-fun res!1186330 () Bool)

(assert (=> b!2854434 (= res!1186330 call!183882)))

(assert (=> b!2854434 (=> (not res!1186330) (not e!1808303))))

(assert (= (and d!826363 (not res!1186331)) b!2854432))

(assert (= (and b!2854432 res!1186332) b!2854433))

(assert (= (and b!2854433 (not res!1186333)) b!2854428))

(assert (= (and b!2854428 c!460123) b!2854430))

(assert (= (and b!2854428 (not c!460123)) b!2854434))

(assert (= (and b!2854430 (not res!1186334)) b!2854429))

(assert (= (and b!2854434 res!1186330) b!2854431))

(assert (= (or b!2854429 b!2854434) bm!183877))

(assert (= (or b!2854430 b!2854431) bm!183876))

(declare-fun m!3278417 () Bool)

(assert (=> bm!183876 m!3278417))

(declare-fun m!3278419 () Bool)

(assert (=> bm!183877 m!3278419))

(assert (=> d!826291 d!826363))

(declare-fun d!826365 () Bool)

(declare-fun c!460126 () Bool)

(assert (=> d!826365 (= c!460126 ((_ is Nil!34040) lt!1013818))))

(declare-fun e!1808306 () (InoxSet C!17316))

(assert (=> d!826365 (= (content!4666 lt!1013818) e!1808306)))

(declare-fun b!2854439 () Bool)

(assert (=> b!2854439 (= e!1808306 ((as const (Array C!17316 Bool)) false))))

(declare-fun b!2854440 () Bool)

(assert (=> b!2854440 (= e!1808306 ((_ map or) (store ((as const (Array C!17316 Bool)) false) (h!39460 lt!1013818) true) (content!4666 (t!233195 lt!1013818))))))

(assert (= (and d!826365 c!460126) b!2854439))

(assert (= (and d!826365 (not c!460126)) b!2854440))

(declare-fun m!3278421 () Bool)

(assert (=> b!2854440 m!3278421))

(declare-fun m!3278423 () Bool)

(assert (=> b!2854440 m!3278423))

(assert (=> d!826269 d!826365))

(declare-fun d!826367 () Bool)

(declare-fun c!460127 () Bool)

(assert (=> d!826367 (= c!460127 ((_ is Nil!34040) (v!34425 lt!1013812)))))

(declare-fun e!1808307 () (InoxSet C!17316))

(assert (=> d!826367 (= (content!4666 (v!34425 lt!1013812)) e!1808307)))

(declare-fun b!2854441 () Bool)

(assert (=> b!2854441 (= e!1808307 ((as const (Array C!17316 Bool)) false))))

(declare-fun b!2854442 () Bool)

(assert (=> b!2854442 (= e!1808307 ((_ map or) (store ((as const (Array C!17316 Bool)) false) (h!39460 (v!34425 lt!1013812)) true) (content!4666 (t!233195 (v!34425 lt!1013812)))))))

(assert (= (and d!826367 c!460127) b!2854441))

(assert (= (and d!826367 (not c!460127)) b!2854442))

(declare-fun m!3278425 () Bool)

(assert (=> b!2854442 m!3278425))

(assert (=> b!2854442 m!3278327))

(assert (=> d!826269 d!826367))

(declare-fun d!826369 () Bool)

(declare-fun c!460128 () Bool)

(assert (=> d!826369 (= c!460128 ((_ is Nil!34040) (v!34425 lt!1013810)))))

(declare-fun e!1808308 () (InoxSet C!17316))

(assert (=> d!826369 (= (content!4666 (v!34425 lt!1013810)) e!1808308)))

(declare-fun b!2854443 () Bool)

(assert (=> b!2854443 (= e!1808308 ((as const (Array C!17316 Bool)) false))))

(declare-fun b!2854444 () Bool)

(assert (=> b!2854444 (= e!1808308 ((_ map or) (store ((as const (Array C!17316 Bool)) false) (h!39460 (v!34425 lt!1013810)) true) (content!4666 (t!233195 (v!34425 lt!1013810)))))))

(assert (= (and d!826369 c!460128) b!2854443))

(assert (= (and d!826369 (not c!460128)) b!2854444))

(declare-fun m!3278427 () Bool)

(assert (=> b!2854444 m!3278427))

(declare-fun m!3278429 () Bool)

(assert (=> b!2854444 m!3278429))

(assert (=> d!826269 d!826369))

(declare-fun d!826371 () Bool)

(assert (=> d!826371 (= (nullable!2641 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))) (nullableFct!799 (reg!8896 (ite c!459932 (reg!8896 r!23423) (ite c!459931 (regTwo!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun bs!520238 () Bool)

(assert (= bs!520238 d!826371))

(declare-fun m!3278431 () Bool)

(assert (=> bs!520238 m!3278431))

(assert (=> b!2853903 d!826371))

(declare-fun b!2854445 () Bool)

(declare-fun e!1808309 () Option!6304)

(assert (=> b!2854445 (= e!1808309 (Some!6303 Nil!34040))))

(declare-fun b!2854446 () Bool)

(declare-fun e!1808311 () Option!6304)

(declare-fun e!1808314 () Option!6304)

(assert (=> b!2854446 (= e!1808311 e!1808314)))

(declare-fun lt!1013860 () Option!6304)

(declare-fun call!183883 () Option!6304)

(assert (=> b!2854446 (= lt!1013860 call!183883)))

(declare-fun c!460134 () Bool)

(assert (=> b!2854446 (= c!460134 ((_ is Some!6303) lt!1013860))))

(declare-fun d!826373 () Bool)

(declare-fun c!460132 () Bool)

(assert (=> d!826373 (= c!460132 ((_ is EmptyExpr!8567) (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(assert (=> d!826373 (= (getLanguageWitness!235 (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))) e!1808309)))

(declare-fun b!2854447 () Bool)

(declare-fun e!1808313 () Option!6304)

(assert (=> b!2854447 (= e!1808313 None!6303)))

(declare-fun b!2854448 () Bool)

(declare-fun c!460136 () Bool)

(declare-fun lt!1013859 () Option!6304)

(assert (=> b!2854448 (= c!460136 ((_ is Some!6303) lt!1013859))))

(assert (=> b!2854448 (= lt!1013859 call!183883)))

(declare-fun e!1808312 () Option!6304)

(declare-fun e!1808316 () Option!6304)

(assert (=> b!2854448 (= e!1808312 e!1808316)))

(declare-fun b!2854449 () Bool)

(assert (=> b!2854449 (= e!1808316 None!6303)))

(declare-fun c!460129 () Bool)

(declare-fun b!2854450 () Bool)

(assert (=> b!2854450 (= c!460129 ((_ is Union!8567) (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun e!1808315 () Option!6304)

(assert (=> b!2854450 (= e!1808315 e!1808311)))

(declare-fun b!2854451 () Bool)

(assert (=> b!2854451 (= e!1808312 None!6303)))

(declare-fun bm!183878 () Bool)

(declare-fun call!183884 () Option!6304)

(assert (=> bm!183878 (= call!183884 (getLanguageWitness!235 (ite c!460129 (regTwo!17647 (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))) (regOne!17646 (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))))

(declare-fun c!460135 () Bool)

(declare-fun b!2854452 () Bool)

(assert (=> b!2854452 (= c!460135 ((_ is ElementMatch!8567) (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun e!1808310 () Option!6304)

(assert (=> b!2854452 (= e!1808313 e!1808310)))

(declare-fun b!2854453 () Bool)

(assert (=> b!2854453 (= e!1808310 (Some!6303 (Cons!34040 (c!459926 (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))) Nil!34040)))))

(declare-fun b!2854454 () Bool)

(declare-fun lt!1013861 () Option!6304)

(assert (=> b!2854454 (= e!1808316 (Some!6303 (++!8128 (v!34425 lt!1013861) (v!34425 lt!1013859))))))

(declare-fun bm!183879 () Bool)

(assert (=> bm!183879 (= call!183883 (getLanguageWitness!235 (ite c!460129 (regOne!17647 (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))) (regTwo!17646 (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))))

(declare-fun b!2854455 () Bool)

(assert (=> b!2854455 (= e!1808310 e!1808315)))

(declare-fun c!460133 () Bool)

(assert (=> b!2854455 (= c!460133 ((_ is Star!8567) (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(declare-fun b!2854456 () Bool)

(assert (=> b!2854456 (= e!1808311 e!1808312)))

(assert (=> b!2854456 (= lt!1013861 call!183884)))

(declare-fun c!460131 () Bool)

(assert (=> b!2854456 (= c!460131 ((_ is Some!6303) lt!1013861))))

(declare-fun b!2854457 () Bool)

(assert (=> b!2854457 (= e!1808315 (Some!6303 Nil!34040))))

(declare-fun b!2854458 () Bool)

(assert (=> b!2854458 (= e!1808314 call!183884)))

(declare-fun b!2854459 () Bool)

(assert (=> b!2854459 (= e!1808314 lt!1013860)))

(declare-fun b!2854460 () Bool)

(assert (=> b!2854460 (= e!1808309 e!1808313)))

(declare-fun c!460130 () Bool)

(assert (=> b!2854460 (= c!460130 ((_ is EmptyLang!8567) (ite c!459998 (regOne!17647 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))) (regTwo!17646 (ite c!459968 (regOne!17647 r!23423) (regTwo!17646 r!23423))))))))

(assert (= (and d!826373 c!460132) b!2854445))

(assert (= (and d!826373 (not c!460132)) b!2854460))

(assert (= (and b!2854460 c!460130) b!2854447))

(assert (= (and b!2854460 (not c!460130)) b!2854452))

(assert (= (and b!2854452 c!460135) b!2854453))

(assert (= (and b!2854452 (not c!460135)) b!2854455))

(assert (= (and b!2854455 c!460133) b!2854457))

(assert (= (and b!2854455 (not c!460133)) b!2854450))

(assert (= (and b!2854450 c!460129) b!2854446))

(assert (= (and b!2854450 (not c!460129)) b!2854456))

(assert (= (and b!2854446 c!460134) b!2854459))

(assert (= (and b!2854446 (not c!460134)) b!2854458))

(assert (= (and b!2854456 c!460131) b!2854448))

(assert (= (and b!2854456 (not c!460131)) b!2854451))

(assert (= (and b!2854448 c!460136) b!2854454))

(assert (= (and b!2854448 (not c!460136)) b!2854449))

(assert (= (or b!2854446 b!2854448) bm!183879))

(assert (= (or b!2854458 b!2854456) bm!183878))

(declare-fun m!3278433 () Bool)

(assert (=> bm!183878 m!3278433))

(declare-fun m!3278435 () Bool)

(assert (=> b!2854454 m!3278435))

(declare-fun m!3278437 () Bool)

(assert (=> bm!183879 m!3278437))

(assert (=> bm!183798 d!826373))

(declare-fun b!2854461 () Bool)

(declare-fun e!1808317 () Option!6304)

(assert (=> b!2854461 (= e!1808317 (Some!6303 Nil!34040))))

(declare-fun b!2854462 () Bool)

(declare-fun e!1808319 () Option!6304)

(declare-fun e!1808322 () Option!6304)

(assert (=> b!2854462 (= e!1808319 e!1808322)))

(declare-fun lt!1013863 () Option!6304)

(declare-fun call!183885 () Option!6304)

(assert (=> b!2854462 (= lt!1013863 call!183885)))

(declare-fun c!460142 () Bool)

(assert (=> b!2854462 (= c!460142 ((_ is Some!6303) lt!1013863))))

(declare-fun d!826375 () Bool)

(declare-fun c!460140 () Bool)

(assert (=> d!826375 (= c!460140 ((_ is EmptyExpr!8567) (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(assert (=> d!826375 (= (getLanguageWitness!235 (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))) e!1808317)))

(declare-fun b!2854463 () Bool)

(declare-fun e!1808321 () Option!6304)

(assert (=> b!2854463 (= e!1808321 None!6303)))

(declare-fun b!2854464 () Bool)

(declare-fun c!460144 () Bool)

(declare-fun lt!1013862 () Option!6304)

(assert (=> b!2854464 (= c!460144 ((_ is Some!6303) lt!1013862))))

(assert (=> b!2854464 (= lt!1013862 call!183885)))

(declare-fun e!1808320 () Option!6304)

(declare-fun e!1808324 () Option!6304)

(assert (=> b!2854464 (= e!1808320 e!1808324)))

(declare-fun b!2854465 () Bool)

(assert (=> b!2854465 (= e!1808324 None!6303)))

(declare-fun c!460137 () Bool)

(declare-fun b!2854466 () Bool)

(assert (=> b!2854466 (= c!460137 ((_ is Union!8567) (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun e!1808323 () Option!6304)

(assert (=> b!2854466 (= e!1808323 e!1808319)))

(declare-fun b!2854467 () Bool)

(assert (=> b!2854467 (= e!1808320 None!6303)))

(declare-fun call!183886 () Option!6304)

(declare-fun bm!183880 () Bool)

(assert (=> bm!183880 (= call!183886 (getLanguageWitness!235 (ite c!460137 (regTwo!17647 (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))) (regOne!17646 (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))))

(declare-fun b!2854468 () Bool)

(declare-fun c!460143 () Bool)

(assert (=> b!2854468 (= c!460143 ((_ is ElementMatch!8567) (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun e!1808318 () Option!6304)

(assert (=> b!2854468 (= e!1808321 e!1808318)))

(declare-fun b!2854469 () Bool)

(assert (=> b!2854469 (= e!1808318 (Some!6303 (Cons!34040 (c!459926 (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))) Nil!34040)))))

(declare-fun b!2854470 () Bool)

(declare-fun lt!1013864 () Option!6304)

(assert (=> b!2854470 (= e!1808324 (Some!6303 (++!8128 (v!34425 lt!1013864) (v!34425 lt!1013862))))))

(declare-fun bm!183881 () Bool)

(assert (=> bm!183881 (= call!183885 (getLanguageWitness!235 (ite c!460137 (regOne!17647 (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))) (regTwo!17646 (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))))

(declare-fun b!2854471 () Bool)

(assert (=> b!2854471 (= e!1808318 e!1808323)))

(declare-fun c!460141 () Bool)

(assert (=> b!2854471 (= c!460141 ((_ is Star!8567) (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun b!2854472 () Bool)

(assert (=> b!2854472 (= e!1808319 e!1808320)))

(assert (=> b!2854472 (= lt!1013864 call!183886)))

(declare-fun c!460139 () Bool)

(assert (=> b!2854472 (= c!460139 ((_ is Some!6303) lt!1013864))))

(declare-fun b!2854473 () Bool)

(assert (=> b!2854473 (= e!1808323 (Some!6303 Nil!34040))))

(declare-fun b!2854474 () Bool)

(assert (=> b!2854474 (= e!1808322 call!183886)))

(declare-fun b!2854475 () Bool)

(assert (=> b!2854475 (= e!1808322 lt!1013863)))

(declare-fun b!2854476 () Bool)

(assert (=> b!2854476 (= e!1808317 e!1808321)))

(declare-fun c!460138 () Bool)

(assert (=> b!2854476 (= c!460138 ((_ is EmptyLang!8567) (ite c!460024 (regTwo!17647 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459968 (regTwo!17647 r!23423) (regOne!17646 r!23423))))))))

(assert (= (and d!826375 c!460140) b!2854461))

(assert (= (and d!826375 (not c!460140)) b!2854476))

(assert (= (and b!2854476 c!460138) b!2854463))

(assert (= (and b!2854476 (not c!460138)) b!2854468))

(assert (= (and b!2854468 c!460143) b!2854469))

(assert (= (and b!2854468 (not c!460143)) b!2854471))

(assert (= (and b!2854471 c!460141) b!2854473))

(assert (= (and b!2854471 (not c!460141)) b!2854466))

(assert (= (and b!2854466 c!460137) b!2854462))

(assert (= (and b!2854466 (not c!460137)) b!2854472))

(assert (= (and b!2854462 c!460142) b!2854475))

(assert (= (and b!2854462 (not c!460142)) b!2854474))

(assert (= (and b!2854472 c!460139) b!2854464))

(assert (= (and b!2854472 (not c!460139)) b!2854467))

(assert (= (and b!2854464 c!460144) b!2854470))

(assert (= (and b!2854464 (not c!460144)) b!2854465))

(assert (= (or b!2854462 b!2854464) bm!183881))

(assert (= (or b!2854474 b!2854472) bm!183880))

(declare-fun m!3278439 () Bool)

(assert (=> bm!183880 m!3278439))

(declare-fun m!3278441 () Bool)

(assert (=> b!2854470 m!3278441))

(declare-fun m!3278443 () Bool)

(assert (=> bm!183881 m!3278443))

(assert (=> bm!183814 d!826375))

(declare-fun bm!183882 () Bool)

(declare-fun c!460146 () Bool)

(declare-fun c!460145 () Bool)

(declare-fun call!183889 () Bool)

(assert (=> bm!183882 (= call!183889 (validRegex!3437 (ite c!460146 (reg!8896 (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))) (ite c!460145 (regTwo!17647 (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))) (regTwo!17646 (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))))))

(declare-fun b!2854478 () Bool)

(declare-fun e!1808331 () Bool)

(declare-fun e!1808327 () Bool)

(assert (=> b!2854478 (= e!1808331 e!1808327)))

(assert (=> b!2854478 (= c!460145 ((_ is Union!8567) (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun b!2854479 () Bool)

(declare-fun e!1808326 () Bool)

(assert (=> b!2854479 (= e!1808326 call!183889)))

(declare-fun b!2854480 () Bool)

(declare-fun res!1186335 () Bool)

(declare-fun e!1808330 () Bool)

(assert (=> b!2854480 (=> res!1186335 e!1808330)))

(assert (=> b!2854480 (= res!1186335 (not ((_ is Concat!13888) (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423)))))))))

(assert (=> b!2854480 (= e!1808327 e!1808330)))

(declare-fun bm!183883 () Bool)

(declare-fun call!183887 () Bool)

(assert (=> bm!183883 (= call!183887 call!183889)))

(declare-fun b!2854477 () Bool)

(declare-fun res!1186337 () Bool)

(declare-fun e!1808329 () Bool)

(assert (=> b!2854477 (=> (not res!1186337) (not e!1808329))))

(declare-fun call!183888 () Bool)

(assert (=> b!2854477 (= res!1186337 call!183888)))

(assert (=> b!2854477 (= e!1808327 e!1808329)))

(declare-fun d!826377 () Bool)

(declare-fun res!1186339 () Bool)

(declare-fun e!1808325 () Bool)

(assert (=> d!826377 (=> res!1186339 e!1808325)))

(assert (=> d!826377 (= res!1186339 ((_ is ElementMatch!8567) (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))

(assert (=> d!826377 (= (validRegex!3437 (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))) e!1808325)))

(declare-fun b!2854481 () Bool)

(declare-fun e!1808328 () Bool)

(assert (=> b!2854481 (= e!1808330 e!1808328)))

(declare-fun res!1186338 () Bool)

(assert (=> b!2854481 (=> (not res!1186338) (not e!1808328))))

(assert (=> b!2854481 (= res!1186338 call!183888)))

(declare-fun b!2854482 () Bool)

(assert (=> b!2854482 (= e!1808329 call!183887)))

(declare-fun bm!183884 () Bool)

(assert (=> bm!183884 (= call!183888 (validRegex!3437 (ite c!460145 (regOne!17647 (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))) (regOne!17646 (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))))

(declare-fun b!2854483 () Bool)

(assert (=> b!2854483 (= e!1808331 e!1808326)))

(declare-fun res!1186336 () Bool)

(assert (=> b!2854483 (= res!1186336 (not (nullable!2641 (reg!8896 (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))))

(assert (=> b!2854483 (=> (not res!1186336) (not e!1808326))))

(declare-fun b!2854484 () Bool)

(assert (=> b!2854484 (= e!1808325 e!1808331)))

(assert (=> b!2854484 (= c!460146 ((_ is Star!8567) (ite c!460022 (regOne!17647 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))) (regOne!17646 (ite c!459931 (regOne!17647 r!23423) (regOne!17646 r!23423))))))))

(declare-fun b!2854485 () Bool)

(assert (=> b!2854485 (= e!1808328 call!183887)))

(assert (= (and d!826377 (not res!1186339)) b!2854484))

(assert (= (and b!2854484 c!460146) b!2854483))

(assert (= (and b!2854484 (not c!460146)) b!2854478))

(assert (= (and b!2854483 res!1186336) b!2854479))

(assert (= (and b!2854478 c!460145) b!2854477))

(assert (= (and b!2854478 (not c!460145)) b!2854480))

(assert (= (and b!2854477 res!1186337) b!2854482))

(assert (= (and b!2854480 (not res!1186335)) b!2854481))

(assert (= (and b!2854481 res!1186338) b!2854485))

(assert (= (or b!2854482 b!2854485) bm!183883))

(assert (= (or b!2854477 b!2854481) bm!183884))

(assert (= (or b!2854479 bm!183883) bm!183882))

(declare-fun m!3278445 () Bool)

(assert (=> bm!183882 m!3278445))

(declare-fun m!3278447 () Bool)

(assert (=> bm!183884 m!3278447))

(declare-fun m!3278449 () Bool)

(assert (=> b!2854483 m!3278449))

(assert (=> bm!183813 d!826377))

(declare-fun d!826379 () Bool)

(declare-fun e!1808332 () Bool)

(assert (=> d!826379 e!1808332))

(declare-fun res!1186340 () Bool)

(assert (=> d!826379 (=> (not res!1186340) (not e!1808332))))

(declare-fun lt!1013865 () List!34164)

(assert (=> d!826379 (= res!1186340 (= (content!4666 lt!1013865) ((_ map or) (content!4666 (v!34425 lt!1013827)) (content!4666 (v!34425 lt!1013825)))))))

(declare-fun e!1808333 () List!34164)

(assert (=> d!826379 (= lt!1013865 e!1808333)))

(declare-fun c!460147 () Bool)

(assert (=> d!826379 (= c!460147 ((_ is Nil!34040) (v!34425 lt!1013827)))))

(assert (=> d!826379 (= (++!8128 (v!34425 lt!1013827) (v!34425 lt!1013825)) lt!1013865)))

(declare-fun b!2854487 () Bool)

(assert (=> b!2854487 (= e!1808333 (Cons!34040 (h!39460 (v!34425 lt!1013827)) (++!8128 (t!233195 (v!34425 lt!1013827)) (v!34425 lt!1013825))))))

(declare-fun b!2854488 () Bool)

(declare-fun res!1186341 () Bool)

(assert (=> b!2854488 (=> (not res!1186341) (not e!1808332))))

(assert (=> b!2854488 (= res!1186341 (= (size!26271 lt!1013865) (+ (size!26271 (v!34425 lt!1013827)) (size!26271 (v!34425 lt!1013825)))))))

(declare-fun b!2854489 () Bool)

(assert (=> b!2854489 (= e!1808332 (or (not (= (v!34425 lt!1013825) Nil!34040)) (= lt!1013865 (v!34425 lt!1013827))))))

(declare-fun b!2854486 () Bool)

(assert (=> b!2854486 (= e!1808333 (v!34425 lt!1013825))))

(assert (= (and d!826379 c!460147) b!2854486))

(assert (= (and d!826379 (not c!460147)) b!2854487))

(assert (= (and d!826379 res!1186340) b!2854488))

(assert (= (and b!2854488 res!1186341) b!2854489))

(declare-fun m!3278451 () Bool)

(assert (=> d!826379 m!3278451))

(declare-fun m!3278453 () Bool)

(assert (=> d!826379 m!3278453))

(declare-fun m!3278455 () Bool)

(assert (=> d!826379 m!3278455))

(declare-fun m!3278457 () Bool)

(assert (=> b!2854487 m!3278457))

(declare-fun m!3278459 () Bool)

(assert (=> b!2854488 m!3278459))

(declare-fun m!3278461 () Bool)

(assert (=> b!2854488 m!3278461))

(declare-fun m!3278463 () Bool)

(assert (=> b!2854488 m!3278463))

(assert (=> b!2853972 d!826379))

(declare-fun b!2854493 () Bool)

(declare-fun e!1808334 () Bool)

(declare-fun tp!917637 () Bool)

(declare-fun tp!917635 () Bool)

(assert (=> b!2854493 (= e!1808334 (and tp!917637 tp!917635))))

(declare-fun b!2854490 () Bool)

(assert (=> b!2854490 (= e!1808334 tp_is_empty!14871)))

(declare-fun b!2854492 () Bool)

(declare-fun tp!917633 () Bool)

(assert (=> b!2854492 (= e!1808334 tp!917633)))

(declare-fun b!2854491 () Bool)

(declare-fun tp!917636 () Bool)

(declare-fun tp!917634 () Bool)

(assert (=> b!2854491 (= e!1808334 (and tp!917636 tp!917634))))

(assert (=> b!2854046 (= tp!917462 e!1808334)))

(assert (= (and b!2854046 ((_ is ElementMatch!8567) (reg!8896 (reg!8896 (regTwo!17647 r!23423))))) b!2854490))

(assert (= (and b!2854046 ((_ is Concat!13888) (reg!8896 (reg!8896 (regTwo!17647 r!23423))))) b!2854491))

(assert (= (and b!2854046 ((_ is Star!8567) (reg!8896 (reg!8896 (regTwo!17647 r!23423))))) b!2854492))

(assert (= (and b!2854046 ((_ is Union!8567) (reg!8896 (reg!8896 (regTwo!17647 r!23423))))) b!2854493))

(declare-fun b!2854497 () Bool)

(declare-fun e!1808335 () Bool)

(declare-fun tp!917642 () Bool)

(declare-fun tp!917640 () Bool)

(assert (=> b!2854497 (= e!1808335 (and tp!917642 tp!917640))))

(declare-fun b!2854494 () Bool)

(assert (=> b!2854494 (= e!1808335 tp_is_empty!14871)))

(declare-fun b!2854496 () Bool)

(declare-fun tp!917638 () Bool)

(assert (=> b!2854496 (= e!1808335 tp!917638)))

(declare-fun b!2854495 () Bool)

(declare-fun tp!917641 () Bool)

(declare-fun tp!917639 () Bool)

(assert (=> b!2854495 (= e!1808335 (and tp!917641 tp!917639))))

(assert (=> b!2854037 (= tp!917455 e!1808335)))

(assert (= (and b!2854037 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17646 (regTwo!17646 r!23423))))) b!2854494))

(assert (= (and b!2854037 ((_ is Concat!13888) (regOne!17646 (regOne!17646 (regTwo!17646 r!23423))))) b!2854495))

(assert (= (and b!2854037 ((_ is Star!8567) (regOne!17646 (regOne!17646 (regTwo!17646 r!23423))))) b!2854496))

(assert (= (and b!2854037 ((_ is Union!8567) (regOne!17646 (regOne!17646 (regTwo!17646 r!23423))))) b!2854497))

(declare-fun b!2854501 () Bool)

(declare-fun e!1808336 () Bool)

(declare-fun tp!917647 () Bool)

(declare-fun tp!917645 () Bool)

(assert (=> b!2854501 (= e!1808336 (and tp!917647 tp!917645))))

(declare-fun b!2854498 () Bool)

(assert (=> b!2854498 (= e!1808336 tp_is_empty!14871)))

(declare-fun b!2854500 () Bool)

(declare-fun tp!917643 () Bool)

(assert (=> b!2854500 (= e!1808336 tp!917643)))

(declare-fun b!2854499 () Bool)

(declare-fun tp!917646 () Bool)

(declare-fun tp!917644 () Bool)

(assert (=> b!2854499 (= e!1808336 (and tp!917646 tp!917644))))

(assert (=> b!2854037 (= tp!917453 e!1808336)))

(assert (= (and b!2854037 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17646 (regTwo!17646 r!23423))))) b!2854498))

(assert (= (and b!2854037 ((_ is Concat!13888) (regTwo!17646 (regOne!17646 (regTwo!17646 r!23423))))) b!2854499))

(assert (= (and b!2854037 ((_ is Star!8567) (regTwo!17646 (regOne!17646 (regTwo!17646 r!23423))))) b!2854500))

(assert (= (and b!2854037 ((_ is Union!8567) (regTwo!17646 (regOne!17646 (regTwo!17646 r!23423))))) b!2854501))

(declare-fun b!2854505 () Bool)

(declare-fun e!1808337 () Bool)

(declare-fun tp!917652 () Bool)

(declare-fun tp!917650 () Bool)

(assert (=> b!2854505 (= e!1808337 (and tp!917652 tp!917650))))

(declare-fun b!2854502 () Bool)

(assert (=> b!2854502 (= e!1808337 tp_is_empty!14871)))

(declare-fun b!2854504 () Bool)

(declare-fun tp!917648 () Bool)

(assert (=> b!2854504 (= e!1808337 tp!917648)))

(declare-fun b!2854503 () Bool)

(declare-fun tp!917651 () Bool)

(declare-fun tp!917649 () Bool)

(assert (=> b!2854503 (= e!1808337 (and tp!917651 tp!917649))))

(assert (=> b!2854055 (= tp!917476 e!1808337)))

(assert (= (and b!2854055 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854502))

(assert (= (and b!2854055 ((_ is Concat!13888) (regOne!17647 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854503))

(assert (= (and b!2854055 ((_ is Star!8567) (regOne!17647 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854504))

(assert (= (and b!2854055 ((_ is Union!8567) (regOne!17647 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854505))

(declare-fun b!2854509 () Bool)

(declare-fun e!1808338 () Bool)

(declare-fun tp!917657 () Bool)

(declare-fun tp!917655 () Bool)

(assert (=> b!2854509 (= e!1808338 (and tp!917657 tp!917655))))

(declare-fun b!2854506 () Bool)

(assert (=> b!2854506 (= e!1808338 tp_is_empty!14871)))

(declare-fun b!2854508 () Bool)

(declare-fun tp!917653 () Bool)

(assert (=> b!2854508 (= e!1808338 tp!917653)))

(declare-fun b!2854507 () Bool)

(declare-fun tp!917656 () Bool)

(declare-fun tp!917654 () Bool)

(assert (=> b!2854507 (= e!1808338 (and tp!917656 tp!917654))))

(assert (=> b!2854055 (= tp!917474 e!1808338)))

(assert (= (and b!2854055 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854506))

(assert (= (and b!2854055 ((_ is Concat!13888) (regTwo!17647 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854507))

(assert (= (and b!2854055 ((_ is Star!8567) (regTwo!17647 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854508))

(assert (= (and b!2854055 ((_ is Union!8567) (regTwo!17647 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854509))

(declare-fun b!2854513 () Bool)

(declare-fun e!1808339 () Bool)

(declare-fun tp!917662 () Bool)

(declare-fun tp!917660 () Bool)

(assert (=> b!2854513 (= e!1808339 (and tp!917662 tp!917660))))

(declare-fun b!2854510 () Bool)

(assert (=> b!2854510 (= e!1808339 tp_is_empty!14871)))

(declare-fun b!2854512 () Bool)

(declare-fun tp!917658 () Bool)

(assert (=> b!2854512 (= e!1808339 tp!917658)))

(declare-fun b!2854511 () Bool)

(declare-fun tp!917661 () Bool)

(declare-fun tp!917659 () Bool)

(assert (=> b!2854511 (= e!1808339 (and tp!917661 tp!917659))))

(assert (=> b!2854030 (= tp!917442 e!1808339)))

(assert (= (and b!2854030 ((_ is ElementMatch!8567) (reg!8896 (regOne!17647 (reg!8896 r!23423))))) b!2854510))

(assert (= (and b!2854030 ((_ is Concat!13888) (reg!8896 (regOne!17647 (reg!8896 r!23423))))) b!2854511))

(assert (= (and b!2854030 ((_ is Star!8567) (reg!8896 (regOne!17647 (reg!8896 r!23423))))) b!2854512))

(assert (= (and b!2854030 ((_ is Union!8567) (reg!8896 (regOne!17647 (reg!8896 r!23423))))) b!2854513))

(declare-fun b!2854517 () Bool)

(declare-fun e!1808340 () Bool)

(declare-fun tp!917667 () Bool)

(declare-fun tp!917665 () Bool)

(assert (=> b!2854517 (= e!1808340 (and tp!917667 tp!917665))))

(declare-fun b!2854514 () Bool)

(assert (=> b!2854514 (= e!1808340 tp_is_empty!14871)))

(declare-fun b!2854516 () Bool)

(declare-fun tp!917663 () Bool)

(assert (=> b!2854516 (= e!1808340 tp!917663)))

(declare-fun b!2854515 () Bool)

(declare-fun tp!917666 () Bool)

(declare-fun tp!917664 () Bool)

(assert (=> b!2854515 (= e!1808340 (and tp!917666 tp!917664))))

(assert (=> b!2854021 (= tp!917435 e!1808340)))

(assert (= (and b!2854021 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17646 (regOne!17646 r!23423))))) b!2854514))

(assert (= (and b!2854021 ((_ is Concat!13888) (regOne!17646 (regTwo!17646 (regOne!17646 r!23423))))) b!2854515))

(assert (= (and b!2854021 ((_ is Star!8567) (regOne!17646 (regTwo!17646 (regOne!17646 r!23423))))) b!2854516))

(assert (= (and b!2854021 ((_ is Union!8567) (regOne!17646 (regTwo!17646 (regOne!17646 r!23423))))) b!2854517))

(declare-fun b!2854521 () Bool)

(declare-fun e!1808341 () Bool)

(declare-fun tp!917672 () Bool)

(declare-fun tp!917670 () Bool)

(assert (=> b!2854521 (= e!1808341 (and tp!917672 tp!917670))))

(declare-fun b!2854518 () Bool)

(assert (=> b!2854518 (= e!1808341 tp_is_empty!14871)))

(declare-fun b!2854520 () Bool)

(declare-fun tp!917668 () Bool)

(assert (=> b!2854520 (= e!1808341 tp!917668)))

(declare-fun b!2854519 () Bool)

(declare-fun tp!917671 () Bool)

(declare-fun tp!917669 () Bool)

(assert (=> b!2854519 (= e!1808341 (and tp!917671 tp!917669))))

(assert (=> b!2854021 (= tp!917433 e!1808341)))

(assert (= (and b!2854021 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17646 (regOne!17646 r!23423))))) b!2854518))

(assert (= (and b!2854021 ((_ is Concat!13888) (regTwo!17646 (regTwo!17646 (regOne!17646 r!23423))))) b!2854519))

(assert (= (and b!2854021 ((_ is Star!8567) (regTwo!17646 (regTwo!17646 (regOne!17646 r!23423))))) b!2854520))

(assert (= (and b!2854021 ((_ is Union!8567) (regTwo!17646 (regTwo!17646 (regOne!17646 r!23423))))) b!2854521))

(declare-fun b!2854525 () Bool)

(declare-fun e!1808342 () Bool)

(declare-fun tp!917677 () Bool)

(declare-fun tp!917675 () Bool)

(assert (=> b!2854525 (= e!1808342 (and tp!917677 tp!917675))))

(declare-fun b!2854522 () Bool)

(assert (=> b!2854522 (= e!1808342 tp_is_empty!14871)))

(declare-fun b!2854524 () Bool)

(declare-fun tp!917673 () Bool)

(assert (=> b!2854524 (= e!1808342 tp!917673)))

(declare-fun b!2854523 () Bool)

(declare-fun tp!917676 () Bool)

(declare-fun tp!917674 () Bool)

(assert (=> b!2854523 (= e!1808342 (and tp!917676 tp!917674))))

(assert (=> b!2854039 (= tp!917456 e!1808342)))

(assert (= (and b!2854039 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17646 (regTwo!17646 r!23423))))) b!2854522))

(assert (= (and b!2854039 ((_ is Concat!13888) (regOne!17647 (regOne!17646 (regTwo!17646 r!23423))))) b!2854523))

(assert (= (and b!2854039 ((_ is Star!8567) (regOne!17647 (regOne!17646 (regTwo!17646 r!23423))))) b!2854524))

(assert (= (and b!2854039 ((_ is Union!8567) (regOne!17647 (regOne!17646 (regTwo!17646 r!23423))))) b!2854525))

(declare-fun b!2854529 () Bool)

(declare-fun e!1808343 () Bool)

(declare-fun tp!917682 () Bool)

(declare-fun tp!917680 () Bool)

(assert (=> b!2854529 (= e!1808343 (and tp!917682 tp!917680))))

(declare-fun b!2854526 () Bool)

(assert (=> b!2854526 (= e!1808343 tp_is_empty!14871)))

(declare-fun b!2854528 () Bool)

(declare-fun tp!917678 () Bool)

(assert (=> b!2854528 (= e!1808343 tp!917678)))

(declare-fun b!2854527 () Bool)

(declare-fun tp!917681 () Bool)

(declare-fun tp!917679 () Bool)

(assert (=> b!2854527 (= e!1808343 (and tp!917681 tp!917679))))

(assert (=> b!2854039 (= tp!917454 e!1808343)))

(assert (= (and b!2854039 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17646 (regTwo!17646 r!23423))))) b!2854526))

(assert (= (and b!2854039 ((_ is Concat!13888) (regTwo!17647 (regOne!17646 (regTwo!17646 r!23423))))) b!2854527))

(assert (= (and b!2854039 ((_ is Star!8567) (regTwo!17647 (regOne!17646 (regTwo!17646 r!23423))))) b!2854528))

(assert (= (and b!2854039 ((_ is Union!8567) (regTwo!17647 (regOne!17646 (regTwo!17646 r!23423))))) b!2854529))

(declare-fun b!2854533 () Bool)

(declare-fun e!1808344 () Bool)

(declare-fun tp!917687 () Bool)

(declare-fun tp!917685 () Bool)

(assert (=> b!2854533 (= e!1808344 (and tp!917687 tp!917685))))

(declare-fun b!2854530 () Bool)

(assert (=> b!2854530 (= e!1808344 tp_is_empty!14871)))

(declare-fun b!2854532 () Bool)

(declare-fun tp!917683 () Bool)

(assert (=> b!2854532 (= e!1808344 tp!917683)))

(declare-fun b!2854531 () Bool)

(declare-fun tp!917686 () Bool)

(declare-fun tp!917684 () Bool)

(assert (=> b!2854531 (= e!1808344 (and tp!917686 tp!917684))))

(assert (=> b!2853996 (= tp!917404 e!1808344)))

(assert (= (and b!2853996 ((_ is ElementMatch!8567) (regOne!17646 (reg!8896 (reg!8896 r!23423))))) b!2854530))

(assert (= (and b!2853996 ((_ is Concat!13888) (regOne!17646 (reg!8896 (reg!8896 r!23423))))) b!2854531))

(assert (= (and b!2853996 ((_ is Star!8567) (regOne!17646 (reg!8896 (reg!8896 r!23423))))) b!2854532))

(assert (= (and b!2853996 ((_ is Union!8567) (regOne!17646 (reg!8896 (reg!8896 r!23423))))) b!2854533))

(declare-fun b!2854537 () Bool)

(declare-fun e!1808345 () Bool)

(declare-fun tp!917692 () Bool)

(declare-fun tp!917690 () Bool)

(assert (=> b!2854537 (= e!1808345 (and tp!917692 tp!917690))))

(declare-fun b!2854534 () Bool)

(assert (=> b!2854534 (= e!1808345 tp_is_empty!14871)))

(declare-fun b!2854536 () Bool)

(declare-fun tp!917688 () Bool)

(assert (=> b!2854536 (= e!1808345 tp!917688)))

(declare-fun b!2854535 () Bool)

(declare-fun tp!917691 () Bool)

(declare-fun tp!917689 () Bool)

(assert (=> b!2854535 (= e!1808345 (and tp!917691 tp!917689))))

(assert (=> b!2853996 (= tp!917402 e!1808345)))

(assert (= (and b!2853996 ((_ is ElementMatch!8567) (regTwo!17646 (reg!8896 (reg!8896 r!23423))))) b!2854534))

(assert (= (and b!2853996 ((_ is Concat!13888) (regTwo!17646 (reg!8896 (reg!8896 r!23423))))) b!2854535))

(assert (= (and b!2853996 ((_ is Star!8567) (regTwo!17646 (reg!8896 (reg!8896 r!23423))))) b!2854536))

(assert (= (and b!2853996 ((_ is Union!8567) (regTwo!17646 (reg!8896 (reg!8896 r!23423))))) b!2854537))

(declare-fun b!2854541 () Bool)

(declare-fun e!1808346 () Bool)

(declare-fun tp!917697 () Bool)

(declare-fun tp!917695 () Bool)

(assert (=> b!2854541 (= e!1808346 (and tp!917697 tp!917695))))

(declare-fun b!2854538 () Bool)

(assert (=> b!2854538 (= e!1808346 tp_is_empty!14871)))

(declare-fun b!2854540 () Bool)

(declare-fun tp!917693 () Bool)

(assert (=> b!2854540 (= e!1808346 tp!917693)))

(declare-fun b!2854539 () Bool)

(declare-fun tp!917696 () Bool)

(declare-fun tp!917694 () Bool)

(assert (=> b!2854539 (= e!1808346 (and tp!917696 tp!917694))))

(assert (=> b!2854005 (= tp!917411 e!1808346)))

(assert (= (and b!2854005 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854538))

(assert (= (and b!2854005 ((_ is Concat!13888) (reg!8896 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854539))

(assert (= (and b!2854005 ((_ is Star!8567) (reg!8896 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854540))

(assert (= (and b!2854005 ((_ is Union!8567) (reg!8896 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854541))

(declare-fun b!2854545 () Bool)

(declare-fun e!1808347 () Bool)

(declare-fun tp!917702 () Bool)

(declare-fun tp!917700 () Bool)

(assert (=> b!2854545 (= e!1808347 (and tp!917702 tp!917700))))

(declare-fun b!2854542 () Bool)

(assert (=> b!2854542 (= e!1808347 tp_is_empty!14871)))

(declare-fun b!2854544 () Bool)

(declare-fun tp!917698 () Bool)

(assert (=> b!2854544 (= e!1808347 tp!917698)))

(declare-fun b!2854543 () Bool)

(declare-fun tp!917701 () Bool)

(declare-fun tp!917699 () Bool)

(assert (=> b!2854543 (= e!1808347 (and tp!917701 tp!917699))))

(assert (=> b!2854014 (= tp!917422 e!1808347)))

(assert (= (and b!2854014 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854542))

(assert (= (and b!2854014 ((_ is Concat!13888) (reg!8896 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854543))

(assert (= (and b!2854014 ((_ is Star!8567) (reg!8896 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854544))

(assert (= (and b!2854014 ((_ is Union!8567) (reg!8896 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854545))

(declare-fun b!2854549 () Bool)

(declare-fun e!1808348 () Bool)

(declare-fun tp!917707 () Bool)

(declare-fun tp!917705 () Bool)

(assert (=> b!2854549 (= e!1808348 (and tp!917707 tp!917705))))

(declare-fun b!2854546 () Bool)

(assert (=> b!2854546 (= e!1808348 tp_is_empty!14871)))

(declare-fun b!2854548 () Bool)

(declare-fun tp!917703 () Bool)

(assert (=> b!2854548 (= e!1808348 tp!917703)))

(declare-fun b!2854547 () Bool)

(declare-fun tp!917706 () Bool)

(declare-fun tp!917704 () Bool)

(assert (=> b!2854547 (= e!1808348 (and tp!917706 tp!917704))))

(assert (=> b!2854073 (= tp!917500 e!1808348)))

(assert (= (and b!2854073 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17647 (regOne!17646 r!23423))))) b!2854546))

(assert (= (and b!2854073 ((_ is Concat!13888) (regOne!17646 (regOne!17647 (regOne!17646 r!23423))))) b!2854547))

(assert (= (and b!2854073 ((_ is Star!8567) (regOne!17646 (regOne!17647 (regOne!17646 r!23423))))) b!2854548))

(assert (= (and b!2854073 ((_ is Union!8567) (regOne!17646 (regOne!17647 (regOne!17646 r!23423))))) b!2854549))

(declare-fun b!2854553 () Bool)

(declare-fun e!1808349 () Bool)

(declare-fun tp!917712 () Bool)

(declare-fun tp!917710 () Bool)

(assert (=> b!2854553 (= e!1808349 (and tp!917712 tp!917710))))

(declare-fun b!2854550 () Bool)

(assert (=> b!2854550 (= e!1808349 tp_is_empty!14871)))

(declare-fun b!2854552 () Bool)

(declare-fun tp!917708 () Bool)

(assert (=> b!2854552 (= e!1808349 tp!917708)))

(declare-fun b!2854551 () Bool)

(declare-fun tp!917711 () Bool)

(declare-fun tp!917709 () Bool)

(assert (=> b!2854551 (= e!1808349 (and tp!917711 tp!917709))))

(assert (=> b!2854073 (= tp!917498 e!1808349)))

(assert (= (and b!2854073 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17647 (regOne!17646 r!23423))))) b!2854550))

(assert (= (and b!2854073 ((_ is Concat!13888) (regTwo!17646 (regOne!17647 (regOne!17646 r!23423))))) b!2854551))

(assert (= (and b!2854073 ((_ is Star!8567) (regTwo!17646 (regOne!17647 (regOne!17646 r!23423))))) b!2854552))

(assert (= (and b!2854073 ((_ is Union!8567) (regTwo!17646 (regOne!17647 (regOne!17646 r!23423))))) b!2854553))

(declare-fun b!2854557 () Bool)

(declare-fun e!1808350 () Bool)

(declare-fun tp!917717 () Bool)

(declare-fun tp!917715 () Bool)

(assert (=> b!2854557 (= e!1808350 (and tp!917717 tp!917715))))

(declare-fun b!2854554 () Bool)

(assert (=> b!2854554 (= e!1808350 tp_is_empty!14871)))

(declare-fun b!2854556 () Bool)

(declare-fun tp!917713 () Bool)

(assert (=> b!2854556 (= e!1808350 tp!917713)))

(declare-fun b!2854555 () Bool)

(declare-fun tp!917716 () Bool)

(declare-fun tp!917714 () Bool)

(assert (=> b!2854555 (= e!1808350 (and tp!917716 tp!917714))))

(assert (=> b!2854023 (= tp!917436 e!1808350)))

(assert (= (and b!2854023 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17646 (regOne!17646 r!23423))))) b!2854554))

(assert (= (and b!2854023 ((_ is Concat!13888) (regOne!17647 (regTwo!17646 (regOne!17646 r!23423))))) b!2854555))

(assert (= (and b!2854023 ((_ is Star!8567) (regOne!17647 (regTwo!17646 (regOne!17646 r!23423))))) b!2854556))

(assert (= (and b!2854023 ((_ is Union!8567) (regOne!17647 (regTwo!17646 (regOne!17646 r!23423))))) b!2854557))

(declare-fun b!2854561 () Bool)

(declare-fun e!1808351 () Bool)

(declare-fun tp!917722 () Bool)

(declare-fun tp!917720 () Bool)

(assert (=> b!2854561 (= e!1808351 (and tp!917722 tp!917720))))

(declare-fun b!2854558 () Bool)

(assert (=> b!2854558 (= e!1808351 tp_is_empty!14871)))

(declare-fun b!2854560 () Bool)

(declare-fun tp!917718 () Bool)

(assert (=> b!2854560 (= e!1808351 tp!917718)))

(declare-fun b!2854559 () Bool)

(declare-fun tp!917721 () Bool)

(declare-fun tp!917719 () Bool)

(assert (=> b!2854559 (= e!1808351 (and tp!917721 tp!917719))))

(assert (=> b!2854023 (= tp!917434 e!1808351)))

(assert (= (and b!2854023 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17646 (regOne!17646 r!23423))))) b!2854558))

(assert (= (and b!2854023 ((_ is Concat!13888) (regTwo!17647 (regTwo!17646 (regOne!17646 r!23423))))) b!2854559))

(assert (= (and b!2854023 ((_ is Star!8567) (regTwo!17647 (regTwo!17646 (regOne!17646 r!23423))))) b!2854560))

(assert (= (and b!2854023 ((_ is Union!8567) (regTwo!17647 (regTwo!17646 (regOne!17646 r!23423))))) b!2854561))

(declare-fun b!2854565 () Bool)

(declare-fun e!1808352 () Bool)

(declare-fun tp!917727 () Bool)

(declare-fun tp!917725 () Bool)

(assert (=> b!2854565 (= e!1808352 (and tp!917727 tp!917725))))

(declare-fun b!2854562 () Bool)

(assert (=> b!2854562 (= e!1808352 tp_is_empty!14871)))

(declare-fun b!2854564 () Bool)

(declare-fun tp!917723 () Bool)

(assert (=> b!2854564 (= e!1808352 tp!917723)))

(declare-fun b!2854563 () Bool)

(declare-fun tp!917726 () Bool)

(declare-fun tp!917724 () Bool)

(assert (=> b!2854563 (= e!1808352 (and tp!917726 tp!917724))))

(assert (=> b!2853980 (= tp!917384 e!1808352)))

(assert (= (and b!2853980 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17646 (reg!8896 r!23423))))) b!2854562))

(assert (= (and b!2853980 ((_ is Concat!13888) (regOne!17646 (regOne!17646 (reg!8896 r!23423))))) b!2854563))

(assert (= (and b!2853980 ((_ is Star!8567) (regOne!17646 (regOne!17646 (reg!8896 r!23423))))) b!2854564))

(assert (= (and b!2853980 ((_ is Union!8567) (regOne!17646 (regOne!17646 (reg!8896 r!23423))))) b!2854565))

(declare-fun b!2854569 () Bool)

(declare-fun e!1808353 () Bool)

(declare-fun tp!917732 () Bool)

(declare-fun tp!917730 () Bool)

(assert (=> b!2854569 (= e!1808353 (and tp!917732 tp!917730))))

(declare-fun b!2854566 () Bool)

(assert (=> b!2854566 (= e!1808353 tp_is_empty!14871)))

(declare-fun b!2854568 () Bool)

(declare-fun tp!917728 () Bool)

(assert (=> b!2854568 (= e!1808353 tp!917728)))

(declare-fun b!2854567 () Bool)

(declare-fun tp!917731 () Bool)

(declare-fun tp!917729 () Bool)

(assert (=> b!2854567 (= e!1808353 (and tp!917731 tp!917729))))

(assert (=> b!2853980 (= tp!917382 e!1808353)))

(assert (= (and b!2853980 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17646 (reg!8896 r!23423))))) b!2854566))

(assert (= (and b!2853980 ((_ is Concat!13888) (regTwo!17646 (regOne!17646 (reg!8896 r!23423))))) b!2854567))

(assert (= (and b!2853980 ((_ is Star!8567) (regTwo!17646 (regOne!17646 (reg!8896 r!23423))))) b!2854568))

(assert (= (and b!2853980 ((_ is Union!8567) (regTwo!17646 (regOne!17646 (reg!8896 r!23423))))) b!2854569))

(declare-fun b!2854573 () Bool)

(declare-fun e!1808354 () Bool)

(declare-fun tp!917737 () Bool)

(declare-fun tp!917735 () Bool)

(assert (=> b!2854573 (= e!1808354 (and tp!917737 tp!917735))))

(declare-fun b!2854570 () Bool)

(assert (=> b!2854570 (= e!1808354 tp_is_empty!14871)))

(declare-fun b!2854572 () Bool)

(declare-fun tp!917733 () Bool)

(assert (=> b!2854572 (= e!1808354 tp!917733)))

(declare-fun b!2854571 () Bool)

(declare-fun tp!917736 () Bool)

(declare-fun tp!917734 () Bool)

(assert (=> b!2854571 (= e!1808354 (and tp!917736 tp!917734))))

(assert (=> b!2854075 (= tp!917501 e!1808354)))

(assert (= (and b!2854075 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17647 (regOne!17646 r!23423))))) b!2854570))

(assert (= (and b!2854075 ((_ is Concat!13888) (regOne!17647 (regOne!17647 (regOne!17646 r!23423))))) b!2854571))

(assert (= (and b!2854075 ((_ is Star!8567) (regOne!17647 (regOne!17647 (regOne!17646 r!23423))))) b!2854572))

(assert (= (and b!2854075 ((_ is Union!8567) (regOne!17647 (regOne!17647 (regOne!17646 r!23423))))) b!2854573))

(declare-fun b!2854577 () Bool)

(declare-fun e!1808355 () Bool)

(declare-fun tp!917742 () Bool)

(declare-fun tp!917740 () Bool)

(assert (=> b!2854577 (= e!1808355 (and tp!917742 tp!917740))))

(declare-fun b!2854574 () Bool)

(assert (=> b!2854574 (= e!1808355 tp_is_empty!14871)))

(declare-fun b!2854576 () Bool)

(declare-fun tp!917738 () Bool)

(assert (=> b!2854576 (= e!1808355 tp!917738)))

(declare-fun b!2854575 () Bool)

(declare-fun tp!917741 () Bool)

(declare-fun tp!917739 () Bool)

(assert (=> b!2854575 (= e!1808355 (and tp!917741 tp!917739))))

(assert (=> b!2854075 (= tp!917499 e!1808355)))

(assert (= (and b!2854075 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17647 (regOne!17646 r!23423))))) b!2854574))

(assert (= (and b!2854075 ((_ is Concat!13888) (regTwo!17647 (regOne!17647 (regOne!17646 r!23423))))) b!2854575))

(assert (= (and b!2854075 ((_ is Star!8567) (regTwo!17647 (regOne!17647 (regOne!17646 r!23423))))) b!2854576))

(assert (= (and b!2854075 ((_ is Union!8567) (regTwo!17647 (regOne!17647 (regOne!17646 r!23423))))) b!2854577))

(declare-fun b!2854581 () Bool)

(declare-fun e!1808356 () Bool)

(declare-fun tp!917747 () Bool)

(declare-fun tp!917745 () Bool)

(assert (=> b!2854581 (= e!1808356 (and tp!917747 tp!917745))))

(declare-fun b!2854578 () Bool)

(assert (=> b!2854578 (= e!1808356 tp_is_empty!14871)))

(declare-fun b!2854580 () Bool)

(declare-fun tp!917743 () Bool)

(assert (=> b!2854580 (= e!1808356 tp!917743)))

(declare-fun b!2854579 () Bool)

(declare-fun tp!917746 () Bool)

(declare-fun tp!917744 () Bool)

(assert (=> b!2854579 (= e!1808356 (and tp!917746 tp!917744))))

(assert (=> b!2853998 (= tp!917405 e!1808356)))

(assert (= (and b!2853998 ((_ is ElementMatch!8567) (regOne!17647 (reg!8896 (reg!8896 r!23423))))) b!2854578))

(assert (= (and b!2853998 ((_ is Concat!13888) (regOne!17647 (reg!8896 (reg!8896 r!23423))))) b!2854579))

(assert (= (and b!2853998 ((_ is Star!8567) (regOne!17647 (reg!8896 (reg!8896 r!23423))))) b!2854580))

(assert (= (and b!2853998 ((_ is Union!8567) (regOne!17647 (reg!8896 (reg!8896 r!23423))))) b!2854581))

(declare-fun b!2854585 () Bool)

(declare-fun e!1808357 () Bool)

(declare-fun tp!917752 () Bool)

(declare-fun tp!917750 () Bool)

(assert (=> b!2854585 (= e!1808357 (and tp!917752 tp!917750))))

(declare-fun b!2854582 () Bool)

(assert (=> b!2854582 (= e!1808357 tp_is_empty!14871)))

(declare-fun b!2854584 () Bool)

(declare-fun tp!917748 () Bool)

(assert (=> b!2854584 (= e!1808357 tp!917748)))

(declare-fun b!2854583 () Bool)

(declare-fun tp!917751 () Bool)

(declare-fun tp!917749 () Bool)

(assert (=> b!2854583 (= e!1808357 (and tp!917751 tp!917749))))

(assert (=> b!2853998 (= tp!917403 e!1808357)))

(assert (= (and b!2853998 ((_ is ElementMatch!8567) (regTwo!17647 (reg!8896 (reg!8896 r!23423))))) b!2854582))

(assert (= (and b!2853998 ((_ is Concat!13888) (regTwo!17647 (reg!8896 (reg!8896 r!23423))))) b!2854583))

(assert (= (and b!2853998 ((_ is Star!8567) (regTwo!17647 (reg!8896 (reg!8896 r!23423))))) b!2854584))

(assert (= (and b!2853998 ((_ is Union!8567) (regTwo!17647 (reg!8896 (reg!8896 r!23423))))) b!2854585))

(declare-fun b!2854589 () Bool)

(declare-fun e!1808358 () Bool)

(declare-fun tp!917757 () Bool)

(declare-fun tp!917755 () Bool)

(assert (=> b!2854589 (= e!1808358 (and tp!917757 tp!917755))))

(declare-fun b!2854586 () Bool)

(assert (=> b!2854586 (= e!1808358 tp_is_empty!14871)))

(declare-fun b!2854588 () Bool)

(declare-fun tp!917753 () Bool)

(assert (=> b!2854588 (= e!1808358 tp!917753)))

(declare-fun b!2854587 () Bool)

(declare-fun tp!917756 () Bool)

(declare-fun tp!917754 () Bool)

(assert (=> b!2854587 (= e!1808358 (and tp!917756 tp!917754))))

(assert (=> b!2853989 (= tp!917391 e!1808358)))

(assert (= (and b!2853989 ((_ is ElementMatch!8567) (reg!8896 (regOne!17646 (regOne!17647 r!23423))))) b!2854586))

(assert (= (and b!2853989 ((_ is Concat!13888) (reg!8896 (regOne!17646 (regOne!17647 r!23423))))) b!2854587))

(assert (= (and b!2853989 ((_ is Star!8567) (reg!8896 (regOne!17646 (regOne!17647 r!23423))))) b!2854588))

(assert (= (and b!2853989 ((_ is Union!8567) (reg!8896 (regOne!17646 (regOne!17647 r!23423))))) b!2854589))

(declare-fun b!2854593 () Bool)

(declare-fun e!1808359 () Bool)

(declare-fun tp!917762 () Bool)

(declare-fun tp!917760 () Bool)

(assert (=> b!2854593 (= e!1808359 (and tp!917762 tp!917760))))

(declare-fun b!2854590 () Bool)

(assert (=> b!2854590 (= e!1808359 tp_is_empty!14871)))

(declare-fun b!2854592 () Bool)

(declare-fun tp!917758 () Bool)

(assert (=> b!2854592 (= e!1808359 tp!917758)))

(declare-fun b!2854591 () Bool)

(declare-fun tp!917761 () Bool)

(declare-fun tp!917759 () Bool)

(assert (=> b!2854591 (= e!1808359 (and tp!917761 tp!917759))))

(assert (=> b!2854066 (= tp!917487 e!1808359)))

(assert (= (and b!2854066 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17647 (regOne!17647 r!23423))))) b!2854590))

(assert (= (and b!2854066 ((_ is Concat!13888) (reg!8896 (regTwo!17647 (regOne!17647 r!23423))))) b!2854591))

(assert (= (and b!2854066 ((_ is Star!8567) (reg!8896 (regTwo!17647 (regOne!17647 r!23423))))) b!2854592))

(assert (= (and b!2854066 ((_ is Union!8567) (reg!8896 (regTwo!17647 (regOne!17647 r!23423))))) b!2854593))

(declare-fun b!2854597 () Bool)

(declare-fun e!1808360 () Bool)

(declare-fun tp!917767 () Bool)

(declare-fun tp!917765 () Bool)

(assert (=> b!2854597 (= e!1808360 (and tp!917767 tp!917765))))

(declare-fun b!2854594 () Bool)

(assert (=> b!2854594 (= e!1808360 tp_is_empty!14871)))

(declare-fun b!2854596 () Bool)

(declare-fun tp!917763 () Bool)

(assert (=> b!2854596 (= e!1808360 tp!917763)))

(declare-fun b!2854595 () Bool)

(declare-fun tp!917766 () Bool)

(declare-fun tp!917764 () Bool)

(assert (=> b!2854595 (= e!1808360 (and tp!917766 tp!917764))))

(assert (=> b!2854057 (= tp!917480 e!1808360)))

(assert (= (and b!2854057 ((_ is ElementMatch!8567) (regOne!17646 (reg!8896 (regOne!17646 r!23423))))) b!2854594))

(assert (= (and b!2854057 ((_ is Concat!13888) (regOne!17646 (reg!8896 (regOne!17646 r!23423))))) b!2854595))

(assert (= (and b!2854057 ((_ is Star!8567) (regOne!17646 (reg!8896 (regOne!17646 r!23423))))) b!2854596))

(assert (= (and b!2854057 ((_ is Union!8567) (regOne!17646 (reg!8896 (regOne!17646 r!23423))))) b!2854597))

(declare-fun b!2854601 () Bool)

(declare-fun e!1808361 () Bool)

(declare-fun tp!917772 () Bool)

(declare-fun tp!917770 () Bool)

(assert (=> b!2854601 (= e!1808361 (and tp!917772 tp!917770))))

(declare-fun b!2854598 () Bool)

(assert (=> b!2854598 (= e!1808361 tp_is_empty!14871)))

(declare-fun b!2854600 () Bool)

(declare-fun tp!917768 () Bool)

(assert (=> b!2854600 (= e!1808361 tp!917768)))

(declare-fun b!2854599 () Bool)

(declare-fun tp!917771 () Bool)

(declare-fun tp!917769 () Bool)

(assert (=> b!2854599 (= e!1808361 (and tp!917771 tp!917769))))

(assert (=> b!2854057 (= tp!917478 e!1808361)))

(assert (= (and b!2854057 ((_ is ElementMatch!8567) (regTwo!17646 (reg!8896 (regOne!17646 r!23423))))) b!2854598))

(assert (= (and b!2854057 ((_ is Concat!13888) (regTwo!17646 (reg!8896 (regOne!17646 r!23423))))) b!2854599))

(assert (= (and b!2854057 ((_ is Star!8567) (regTwo!17646 (reg!8896 (regOne!17646 r!23423))))) b!2854600))

(assert (= (and b!2854057 ((_ is Union!8567) (regTwo!17646 (reg!8896 (regOne!17646 r!23423))))) b!2854601))

(declare-fun b!2854602 () Bool)

(declare-fun e!1808362 () Bool)

(declare-fun tp!917773 () Bool)

(assert (=> b!2854602 (= e!1808362 (and tp_is_empty!14871 tp!917773))))

(assert (=> b!2854007 (= tp!917416 e!1808362)))

(assert (= (and b!2854007 ((_ is Cons!34040) (t!233195 (t!233195 (t!233195 prefix!1470))))) b!2854602))

(declare-fun b!2854606 () Bool)

(declare-fun e!1808363 () Bool)

(declare-fun tp!917778 () Bool)

(declare-fun tp!917776 () Bool)

(assert (=> b!2854606 (= e!1808363 (and tp!917778 tp!917776))))

(declare-fun b!2854603 () Bool)

(assert (=> b!2854603 (= e!1808363 tp_is_empty!14871)))

(declare-fun b!2854605 () Bool)

(declare-fun tp!917774 () Bool)

(assert (=> b!2854605 (= e!1808363 tp!917774)))

(declare-fun b!2854604 () Bool)

(declare-fun tp!917777 () Bool)

(declare-fun tp!917775 () Bool)

(assert (=> b!2854604 (= e!1808363 (and tp!917777 tp!917775))))

(assert (=> b!2854059 (= tp!917481 e!1808363)))

(assert (= (and b!2854059 ((_ is ElementMatch!8567) (regOne!17647 (reg!8896 (regOne!17646 r!23423))))) b!2854603))

(assert (= (and b!2854059 ((_ is Concat!13888) (regOne!17647 (reg!8896 (regOne!17646 r!23423))))) b!2854604))

(assert (= (and b!2854059 ((_ is Star!8567) (regOne!17647 (reg!8896 (regOne!17646 r!23423))))) b!2854605))

(assert (= (and b!2854059 ((_ is Union!8567) (regOne!17647 (reg!8896 (regOne!17646 r!23423))))) b!2854606))

(declare-fun b!2854610 () Bool)

(declare-fun e!1808364 () Bool)

(declare-fun tp!917783 () Bool)

(declare-fun tp!917781 () Bool)

(assert (=> b!2854610 (= e!1808364 (and tp!917783 tp!917781))))

(declare-fun b!2854607 () Bool)

(assert (=> b!2854607 (= e!1808364 tp_is_empty!14871)))

(declare-fun b!2854609 () Bool)

(declare-fun tp!917779 () Bool)

(assert (=> b!2854609 (= e!1808364 tp!917779)))

(declare-fun b!2854608 () Bool)

(declare-fun tp!917782 () Bool)

(declare-fun tp!917780 () Bool)

(assert (=> b!2854608 (= e!1808364 (and tp!917782 tp!917780))))

(assert (=> b!2854059 (= tp!917479 e!1808364)))

(assert (= (and b!2854059 ((_ is ElementMatch!8567) (regTwo!17647 (reg!8896 (regOne!17646 r!23423))))) b!2854607))

(assert (= (and b!2854059 ((_ is Concat!13888) (regTwo!17647 (reg!8896 (regOne!17646 r!23423))))) b!2854608))

(assert (= (and b!2854059 ((_ is Star!8567) (regTwo!17647 (reg!8896 (regOne!17646 r!23423))))) b!2854609))

(assert (= (and b!2854059 ((_ is Union!8567) (regTwo!17647 (reg!8896 (regOne!17646 r!23423))))) b!2854610))

(declare-fun b!2854614 () Bool)

(declare-fun e!1808365 () Bool)

(declare-fun tp!917788 () Bool)

(declare-fun tp!917786 () Bool)

(assert (=> b!2854614 (= e!1808365 (and tp!917788 tp!917786))))

(declare-fun b!2854611 () Bool)

(assert (=> b!2854611 (= e!1808365 tp_is_empty!14871)))

(declare-fun b!2854613 () Bool)

(declare-fun tp!917784 () Bool)

(assert (=> b!2854613 (= e!1808365 tp!917784)))

(declare-fun b!2854612 () Bool)

(declare-fun tp!917787 () Bool)

(declare-fun tp!917785 () Bool)

(assert (=> b!2854612 (= e!1808365 (and tp!917787 tp!917785))))

(assert (=> b!2853982 (= tp!917385 e!1808365)))

(assert (= (and b!2853982 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17646 (reg!8896 r!23423))))) b!2854611))

(assert (= (and b!2853982 ((_ is Concat!13888) (regOne!17647 (regOne!17646 (reg!8896 r!23423))))) b!2854612))

(assert (= (and b!2853982 ((_ is Star!8567) (regOne!17647 (regOne!17646 (reg!8896 r!23423))))) b!2854613))

(assert (= (and b!2853982 ((_ is Union!8567) (regOne!17647 (regOne!17646 (reg!8896 r!23423))))) b!2854614))

(declare-fun b!2854618 () Bool)

(declare-fun e!1808366 () Bool)

(declare-fun tp!917793 () Bool)

(declare-fun tp!917791 () Bool)

(assert (=> b!2854618 (= e!1808366 (and tp!917793 tp!917791))))

(declare-fun b!2854615 () Bool)

(assert (=> b!2854615 (= e!1808366 tp_is_empty!14871)))

(declare-fun b!2854617 () Bool)

(declare-fun tp!917789 () Bool)

(assert (=> b!2854617 (= e!1808366 tp!917789)))

(declare-fun b!2854616 () Bool)

(declare-fun tp!917792 () Bool)

(declare-fun tp!917790 () Bool)

(assert (=> b!2854616 (= e!1808366 (and tp!917792 tp!917790))))

(assert (=> b!2853982 (= tp!917383 e!1808366)))

(assert (= (and b!2853982 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17646 (reg!8896 r!23423))))) b!2854615))

(assert (= (and b!2853982 ((_ is Concat!13888) (regTwo!17647 (regOne!17646 (reg!8896 r!23423))))) b!2854616))

(assert (= (and b!2853982 ((_ is Star!8567) (regTwo!17647 (regOne!17646 (reg!8896 r!23423))))) b!2854617))

(assert (= (and b!2853982 ((_ is Union!8567) (regTwo!17647 (regOne!17646 (reg!8896 r!23423))))) b!2854618))

(declare-fun b!2854622 () Bool)

(declare-fun e!1808367 () Bool)

(declare-fun tp!917798 () Bool)

(declare-fun tp!917796 () Bool)

(assert (=> b!2854622 (= e!1808367 (and tp!917798 tp!917796))))

(declare-fun b!2854619 () Bool)

(assert (=> b!2854619 (= e!1808367 tp_is_empty!14871)))

(declare-fun b!2854621 () Bool)

(declare-fun tp!917794 () Bool)

(assert (=> b!2854621 (= e!1808367 tp!917794)))

(declare-fun b!2854620 () Bool)

(declare-fun tp!917797 () Bool)

(declare-fun tp!917795 () Bool)

(assert (=> b!2854620 (= e!1808367 (and tp!917797 tp!917795))))

(assert (=> b!2854051 (= tp!917471 e!1808367)))

(assert (= (and b!2854051 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17647 (regTwo!17646 r!23423))))) b!2854619))

(assert (= (and b!2854051 ((_ is Concat!13888) (regOne!17647 (regOne!17647 (regTwo!17646 r!23423))))) b!2854620))

(assert (= (and b!2854051 ((_ is Star!8567) (regOne!17647 (regOne!17647 (regTwo!17646 r!23423))))) b!2854621))

(assert (= (and b!2854051 ((_ is Union!8567) (regOne!17647 (regOne!17647 (regTwo!17646 r!23423))))) b!2854622))

(declare-fun b!2854626 () Bool)

(declare-fun e!1808368 () Bool)

(declare-fun tp!917803 () Bool)

(declare-fun tp!917801 () Bool)

(assert (=> b!2854626 (= e!1808368 (and tp!917803 tp!917801))))

(declare-fun b!2854623 () Bool)

(assert (=> b!2854623 (= e!1808368 tp_is_empty!14871)))

(declare-fun b!2854625 () Bool)

(declare-fun tp!917799 () Bool)

(assert (=> b!2854625 (= e!1808368 tp!917799)))

(declare-fun b!2854624 () Bool)

(declare-fun tp!917802 () Bool)

(declare-fun tp!917800 () Bool)

(assert (=> b!2854624 (= e!1808368 (and tp!917802 tp!917800))))

(assert (=> b!2854051 (= tp!917469 e!1808368)))

(assert (= (and b!2854051 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17647 (regTwo!17646 r!23423))))) b!2854623))

(assert (= (and b!2854051 ((_ is Concat!13888) (regTwo!17647 (regOne!17647 (regTwo!17646 r!23423))))) b!2854624))

(assert (= (and b!2854051 ((_ is Star!8567) (regTwo!17647 (regOne!17647 (regTwo!17646 r!23423))))) b!2854625))

(assert (= (and b!2854051 ((_ is Union!8567) (regTwo!17647 (regOne!17647 (regTwo!17646 r!23423))))) b!2854626))

(declare-fun b!2854630 () Bool)

(declare-fun e!1808369 () Bool)

(declare-fun tp!917808 () Bool)

(declare-fun tp!917806 () Bool)

(assert (=> b!2854630 (= e!1808369 (and tp!917808 tp!917806))))

(declare-fun b!2854627 () Bool)

(assert (=> b!2854627 (= e!1808369 tp_is_empty!14871)))

(declare-fun b!2854629 () Bool)

(declare-fun tp!917804 () Bool)

(assert (=> b!2854629 (= e!1808369 tp!917804)))

(declare-fun b!2854628 () Bool)

(declare-fun tp!917807 () Bool)

(declare-fun tp!917805 () Bool)

(assert (=> b!2854628 (= e!1808369 (and tp!917807 tp!917805))))

(assert (=> b!2854042 (= tp!917457 e!1808369)))

(assert (= (and b!2854042 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854627))

(assert (= (and b!2854042 ((_ is Concat!13888) (reg!8896 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854628))

(assert (= (and b!2854042 ((_ is Star!8567) (reg!8896 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854629))

(assert (= (and b!2854042 ((_ is Union!8567) (reg!8896 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854630))

(declare-fun b!2854634 () Bool)

(declare-fun e!1808370 () Bool)

(declare-fun tp!917813 () Bool)

(declare-fun tp!917811 () Bool)

(assert (=> b!2854634 (= e!1808370 (and tp!917813 tp!917811))))

(declare-fun b!2854631 () Bool)

(assert (=> b!2854631 (= e!1808370 tp_is_empty!14871)))

(declare-fun b!2854633 () Bool)

(declare-fun tp!917809 () Bool)

(assert (=> b!2854633 (= e!1808370 tp!917809)))

(declare-fun b!2854632 () Bool)

(declare-fun tp!917812 () Bool)

(declare-fun tp!917810 () Bool)

(assert (=> b!2854632 (= e!1808370 (and tp!917812 tp!917810))))

(assert (=> b!2854033 (= tp!917450 e!1808370)))

(assert (= (and b!2854033 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17647 (reg!8896 r!23423))))) b!2854631))

(assert (= (and b!2854033 ((_ is Concat!13888) (regOne!17646 (regTwo!17647 (reg!8896 r!23423))))) b!2854632))

(assert (= (and b!2854033 ((_ is Star!8567) (regOne!17646 (regTwo!17647 (reg!8896 r!23423))))) b!2854633))

(assert (= (and b!2854033 ((_ is Union!8567) (regOne!17646 (regTwo!17647 (reg!8896 r!23423))))) b!2854634))

(declare-fun b!2854638 () Bool)

(declare-fun e!1808371 () Bool)

(declare-fun tp!917818 () Bool)

(declare-fun tp!917816 () Bool)

(assert (=> b!2854638 (= e!1808371 (and tp!917818 tp!917816))))

(declare-fun b!2854635 () Bool)

(assert (=> b!2854635 (= e!1808371 tp_is_empty!14871)))

(declare-fun b!2854637 () Bool)

(declare-fun tp!917814 () Bool)

(assert (=> b!2854637 (= e!1808371 tp!917814)))

(declare-fun b!2854636 () Bool)

(declare-fun tp!917817 () Bool)

(declare-fun tp!917815 () Bool)

(assert (=> b!2854636 (= e!1808371 (and tp!917817 tp!917815))))

(assert (=> b!2854033 (= tp!917448 e!1808371)))

(assert (= (and b!2854033 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17647 (reg!8896 r!23423))))) b!2854635))

(assert (= (and b!2854033 ((_ is Concat!13888) (regTwo!17646 (regTwo!17647 (reg!8896 r!23423))))) b!2854636))

(assert (= (and b!2854033 ((_ is Star!8567) (regTwo!17646 (regTwo!17647 (reg!8896 r!23423))))) b!2854637))

(assert (= (and b!2854033 ((_ is Union!8567) (regTwo!17646 (regTwo!17647 (reg!8896 r!23423))))) b!2854638))

(declare-fun b!2854642 () Bool)

(declare-fun e!1808372 () Bool)

(declare-fun tp!917823 () Bool)

(declare-fun tp!917821 () Bool)

(assert (=> b!2854642 (= e!1808372 (and tp!917823 tp!917821))))

(declare-fun b!2854639 () Bool)

(assert (=> b!2854639 (= e!1808372 tp_is_empty!14871)))

(declare-fun b!2854641 () Bool)

(declare-fun tp!917819 () Bool)

(assert (=> b!2854641 (= e!1808372 tp!917819)))

(declare-fun b!2854640 () Bool)

(declare-fun tp!917822 () Bool)

(declare-fun tp!917820 () Bool)

(assert (=> b!2854640 (= e!1808372 (and tp!917822 tp!917820))))

(assert (=> b!2854035 (= tp!917451 e!1808372)))

(assert (= (and b!2854035 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17647 (reg!8896 r!23423))))) b!2854639))

(assert (= (and b!2854035 ((_ is Concat!13888) (regOne!17647 (regTwo!17647 (reg!8896 r!23423))))) b!2854640))

(assert (= (and b!2854035 ((_ is Star!8567) (regOne!17647 (regTwo!17647 (reg!8896 r!23423))))) b!2854641))

(assert (= (and b!2854035 ((_ is Union!8567) (regOne!17647 (regTwo!17647 (reg!8896 r!23423))))) b!2854642))

(declare-fun b!2854646 () Bool)

(declare-fun e!1808373 () Bool)

(declare-fun tp!917828 () Bool)

(declare-fun tp!917826 () Bool)

(assert (=> b!2854646 (= e!1808373 (and tp!917828 tp!917826))))

(declare-fun b!2854643 () Bool)

(assert (=> b!2854643 (= e!1808373 tp_is_empty!14871)))

(declare-fun b!2854645 () Bool)

(declare-fun tp!917824 () Bool)

(assert (=> b!2854645 (= e!1808373 tp!917824)))

(declare-fun b!2854644 () Bool)

(declare-fun tp!917827 () Bool)

(declare-fun tp!917825 () Bool)

(assert (=> b!2854644 (= e!1808373 (and tp!917827 tp!917825))))

(assert (=> b!2854035 (= tp!917449 e!1808373)))

(assert (= (and b!2854035 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17647 (reg!8896 r!23423))))) b!2854643))

(assert (= (and b!2854035 ((_ is Concat!13888) (regTwo!17647 (regTwo!17647 (reg!8896 r!23423))))) b!2854644))

(assert (= (and b!2854035 ((_ is Star!8567) (regTwo!17647 (regTwo!17647 (reg!8896 r!23423))))) b!2854645))

(assert (= (and b!2854035 ((_ is Union!8567) (regTwo!17647 (regTwo!17647 (reg!8896 r!23423))))) b!2854646))

(declare-fun b!2854650 () Bool)

(declare-fun e!1808374 () Bool)

(declare-fun tp!917833 () Bool)

(declare-fun tp!917831 () Bool)

(assert (=> b!2854650 (= e!1808374 (and tp!917833 tp!917831))))

(declare-fun b!2854647 () Bool)

(assert (=> b!2854647 (= e!1808374 tp_is_empty!14871)))

(declare-fun b!2854649 () Bool)

(declare-fun tp!917829 () Bool)

(assert (=> b!2854649 (= e!1808374 tp!917829)))

(declare-fun b!2854648 () Bool)

(declare-fun tp!917832 () Bool)

(declare-fun tp!917830 () Bool)

(assert (=> b!2854648 (= e!1808374 (and tp!917832 tp!917830))))

(assert (=> b!2854001 (= tp!917406 e!1808374)))

(assert (= (and b!2854001 ((_ is ElementMatch!8567) (reg!8896 (regOne!17646 (regTwo!17647 r!23423))))) b!2854647))

(assert (= (and b!2854001 ((_ is Concat!13888) (reg!8896 (regOne!17646 (regTwo!17647 r!23423))))) b!2854648))

(assert (= (and b!2854001 ((_ is Star!8567) (reg!8896 (regOne!17646 (regTwo!17647 r!23423))))) b!2854649))

(assert (= (and b!2854001 ((_ is Union!8567) (reg!8896 (regOne!17646 (regTwo!17647 r!23423))))) b!2854650))

(declare-fun b!2854654 () Bool)

(declare-fun e!1808375 () Bool)

(declare-fun tp!917838 () Bool)

(declare-fun tp!917836 () Bool)

(assert (=> b!2854654 (= e!1808375 (and tp!917838 tp!917836))))

(declare-fun b!2854651 () Bool)

(assert (=> b!2854651 (= e!1808375 tp_is_empty!14871)))

(declare-fun b!2854653 () Bool)

(declare-fun tp!917834 () Bool)

(assert (=> b!2854653 (= e!1808375 tp!917834)))

(declare-fun b!2854652 () Bool)

(declare-fun tp!917837 () Bool)

(declare-fun tp!917835 () Bool)

(assert (=> b!2854652 (= e!1808375 (and tp!917837 tp!917835))))

(assert (=> b!2854026 (= tp!917437 e!1808375)))

(assert (= (and b!2854026 ((_ is ElementMatch!8567) (reg!8896 (reg!8896 (regOne!17647 r!23423))))) b!2854651))

(assert (= (and b!2854026 ((_ is Concat!13888) (reg!8896 (reg!8896 (regOne!17647 r!23423))))) b!2854652))

(assert (= (and b!2854026 ((_ is Star!8567) (reg!8896 (reg!8896 (regOne!17647 r!23423))))) b!2854653))

(assert (= (and b!2854026 ((_ is Union!8567) (reg!8896 (reg!8896 (regOne!17647 r!23423))))) b!2854654))

(declare-fun b!2854658 () Bool)

(declare-fun e!1808376 () Bool)

(declare-fun tp!917843 () Bool)

(declare-fun tp!917841 () Bool)

(assert (=> b!2854658 (= e!1808376 (and tp!917843 tp!917841))))

(declare-fun b!2854655 () Bool)

(assert (=> b!2854655 (= e!1808376 tp_is_empty!14871)))

(declare-fun b!2854657 () Bool)

(declare-fun tp!917839 () Bool)

(assert (=> b!2854657 (= e!1808376 tp!917839)))

(declare-fun b!2854656 () Bool)

(declare-fun tp!917842 () Bool)

(declare-fun tp!917840 () Bool)

(assert (=> b!2854656 (= e!1808376 (and tp!917842 tp!917840))))

(assert (=> b!2854017 (= tp!917430 e!1808376)))

(assert (= (and b!2854017 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17646 (regOne!17646 r!23423))))) b!2854655))

(assert (= (and b!2854017 ((_ is Concat!13888) (regOne!17646 (regOne!17646 (regOne!17646 r!23423))))) b!2854656))

(assert (= (and b!2854017 ((_ is Star!8567) (regOne!17646 (regOne!17646 (regOne!17646 r!23423))))) b!2854657))

(assert (= (and b!2854017 ((_ is Union!8567) (regOne!17646 (regOne!17646 (regOne!17646 r!23423))))) b!2854658))

(declare-fun b!2854662 () Bool)

(declare-fun e!1808377 () Bool)

(declare-fun tp!917848 () Bool)

(declare-fun tp!917846 () Bool)

(assert (=> b!2854662 (= e!1808377 (and tp!917848 tp!917846))))

(declare-fun b!2854659 () Bool)

(assert (=> b!2854659 (= e!1808377 tp_is_empty!14871)))

(declare-fun b!2854661 () Bool)

(declare-fun tp!917844 () Bool)

(assert (=> b!2854661 (= e!1808377 tp!917844)))

(declare-fun b!2854660 () Bool)

(declare-fun tp!917847 () Bool)

(declare-fun tp!917845 () Bool)

(assert (=> b!2854660 (= e!1808377 (and tp!917847 tp!917845))))

(assert (=> b!2854017 (= tp!917428 e!1808377)))

(assert (= (and b!2854017 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17646 (regOne!17646 r!23423))))) b!2854659))

(assert (= (and b!2854017 ((_ is Concat!13888) (regTwo!17646 (regOne!17646 (regOne!17646 r!23423))))) b!2854660))

(assert (= (and b!2854017 ((_ is Star!8567) (regTwo!17646 (regOne!17646 (regOne!17646 r!23423))))) b!2854661))

(assert (= (and b!2854017 ((_ is Union!8567) (regTwo!17646 (regOne!17646 (regOne!17646 r!23423))))) b!2854662))

(declare-fun b!2854666 () Bool)

(declare-fun e!1808378 () Bool)

(declare-fun tp!917853 () Bool)

(declare-fun tp!917851 () Bool)

(assert (=> b!2854666 (= e!1808378 (and tp!917853 tp!917851))))

(declare-fun b!2854663 () Bool)

(assert (=> b!2854663 (= e!1808378 tp_is_empty!14871)))

(declare-fun b!2854665 () Bool)

(declare-fun tp!917849 () Bool)

(assert (=> b!2854665 (= e!1808378 tp!917849)))

(declare-fun b!2854664 () Bool)

(declare-fun tp!917852 () Bool)

(declare-fun tp!917850 () Bool)

(assert (=> b!2854664 (= e!1808378 (and tp!917852 tp!917850))))

(assert (=> b!2854078 (= tp!917502 e!1808378)))

(assert (= (and b!2854078 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17647 (regOne!17646 r!23423))))) b!2854663))

(assert (= (and b!2854078 ((_ is Concat!13888) (reg!8896 (regTwo!17647 (regOne!17646 r!23423))))) b!2854664))

(assert (= (and b!2854078 ((_ is Star!8567) (reg!8896 (regTwo!17647 (regOne!17646 r!23423))))) b!2854665))

(assert (= (and b!2854078 ((_ is Union!8567) (reg!8896 (regTwo!17647 (regOne!17646 r!23423))))) b!2854666))

(declare-fun b!2854670 () Bool)

(declare-fun e!1808379 () Bool)

(declare-fun tp!917858 () Bool)

(declare-fun tp!917856 () Bool)

(assert (=> b!2854670 (= e!1808379 (and tp!917858 tp!917856))))

(declare-fun b!2854667 () Bool)

(assert (=> b!2854667 (= e!1808379 tp_is_empty!14871)))

(declare-fun b!2854669 () Bool)

(declare-fun tp!917854 () Bool)

(assert (=> b!2854669 (= e!1808379 tp!917854)))

(declare-fun b!2854668 () Bool)

(declare-fun tp!917857 () Bool)

(declare-fun tp!917855 () Bool)

(assert (=> b!2854668 (= e!1808379 (and tp!917857 tp!917855))))

(assert (=> b!2854069 (= tp!917495 e!1808379)))

(assert (= (and b!2854069 ((_ is ElementMatch!8567) (regOne!17646 (reg!8896 (regTwo!17646 r!23423))))) b!2854667))

(assert (= (and b!2854069 ((_ is Concat!13888) (regOne!17646 (reg!8896 (regTwo!17646 r!23423))))) b!2854668))

(assert (= (and b!2854069 ((_ is Star!8567) (regOne!17646 (reg!8896 (regTwo!17646 r!23423))))) b!2854669))

(assert (= (and b!2854069 ((_ is Union!8567) (regOne!17646 (reg!8896 (regTwo!17646 r!23423))))) b!2854670))

(declare-fun b!2854674 () Bool)

(declare-fun e!1808380 () Bool)

(declare-fun tp!917863 () Bool)

(declare-fun tp!917861 () Bool)

(assert (=> b!2854674 (= e!1808380 (and tp!917863 tp!917861))))

(declare-fun b!2854671 () Bool)

(assert (=> b!2854671 (= e!1808380 tp_is_empty!14871)))

(declare-fun b!2854673 () Bool)

(declare-fun tp!917859 () Bool)

(assert (=> b!2854673 (= e!1808380 tp!917859)))

(declare-fun b!2854672 () Bool)

(declare-fun tp!917862 () Bool)

(declare-fun tp!917860 () Bool)

(assert (=> b!2854672 (= e!1808380 (and tp!917862 tp!917860))))

(assert (=> b!2854069 (= tp!917493 e!1808380)))

(assert (= (and b!2854069 ((_ is ElementMatch!8567) (regTwo!17646 (reg!8896 (regTwo!17646 r!23423))))) b!2854671))

(assert (= (and b!2854069 ((_ is Concat!13888) (regTwo!17646 (reg!8896 (regTwo!17646 r!23423))))) b!2854672))

(assert (= (and b!2854069 ((_ is Star!8567) (regTwo!17646 (reg!8896 (regTwo!17646 r!23423))))) b!2854673))

(assert (= (and b!2854069 ((_ is Union!8567) (regTwo!17646 (reg!8896 (regTwo!17646 r!23423))))) b!2854674))

(declare-fun b!2854678 () Bool)

(declare-fun e!1808381 () Bool)

(declare-fun tp!917868 () Bool)

(declare-fun tp!917866 () Bool)

(assert (=> b!2854678 (= e!1808381 (and tp!917868 tp!917866))))

(declare-fun b!2854675 () Bool)

(assert (=> b!2854675 (= e!1808381 tp_is_empty!14871)))

(declare-fun b!2854677 () Bool)

(declare-fun tp!917864 () Bool)

(assert (=> b!2854677 (= e!1808381 tp!917864)))

(declare-fun b!2854676 () Bool)

(declare-fun tp!917867 () Bool)

(declare-fun tp!917865 () Bool)

(assert (=> b!2854676 (= e!1808381 (and tp!917867 tp!917865))))

(assert (=> b!2854019 (= tp!917431 e!1808381)))

(assert (= (and b!2854019 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17646 (regOne!17646 r!23423))))) b!2854675))

(assert (= (and b!2854019 ((_ is Concat!13888) (regOne!17647 (regOne!17646 (regOne!17646 r!23423))))) b!2854676))

(assert (= (and b!2854019 ((_ is Star!8567) (regOne!17647 (regOne!17646 (regOne!17646 r!23423))))) b!2854677))

(assert (= (and b!2854019 ((_ is Union!8567) (regOne!17647 (regOne!17646 (regOne!17646 r!23423))))) b!2854678))

(declare-fun b!2854682 () Bool)

(declare-fun e!1808382 () Bool)

(declare-fun tp!917873 () Bool)

(declare-fun tp!917871 () Bool)

(assert (=> b!2854682 (= e!1808382 (and tp!917873 tp!917871))))

(declare-fun b!2854679 () Bool)

(assert (=> b!2854679 (= e!1808382 tp_is_empty!14871)))

(declare-fun b!2854681 () Bool)

(declare-fun tp!917869 () Bool)

(assert (=> b!2854681 (= e!1808382 tp!917869)))

(declare-fun b!2854680 () Bool)

(declare-fun tp!917872 () Bool)

(declare-fun tp!917870 () Bool)

(assert (=> b!2854680 (= e!1808382 (and tp!917872 tp!917870))))

(assert (=> b!2854019 (= tp!917429 e!1808382)))

(assert (= (and b!2854019 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17646 (regOne!17646 r!23423))))) b!2854679))

(assert (= (and b!2854019 ((_ is Concat!13888) (regTwo!17647 (regOne!17646 (regOne!17646 r!23423))))) b!2854680))

(assert (= (and b!2854019 ((_ is Star!8567) (regTwo!17647 (regOne!17646 (regOne!17646 r!23423))))) b!2854681))

(assert (= (and b!2854019 ((_ is Union!8567) (regTwo!17647 (regOne!17646 (regOne!17646 r!23423))))) b!2854682))

(declare-fun b!2854686 () Bool)

(declare-fun e!1808383 () Bool)

(declare-fun tp!917878 () Bool)

(declare-fun tp!917876 () Bool)

(assert (=> b!2854686 (= e!1808383 (and tp!917878 tp!917876))))

(declare-fun b!2854683 () Bool)

(assert (=> b!2854683 (= e!1808383 tp_is_empty!14871)))

(declare-fun b!2854685 () Bool)

(declare-fun tp!917874 () Bool)

(assert (=> b!2854685 (= e!1808383 tp!917874)))

(declare-fun b!2854684 () Bool)

(declare-fun tp!917877 () Bool)

(declare-fun tp!917875 () Bool)

(assert (=> b!2854684 (= e!1808383 (and tp!917877 tp!917875))))

(assert (=> b!2853992 (= tp!917399 e!1808383)))

(assert (= (and b!2853992 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17646 (regOne!17647 r!23423))))) b!2854683))

(assert (= (and b!2853992 ((_ is Concat!13888) (regOne!17646 (regTwo!17646 (regOne!17647 r!23423))))) b!2854684))

(assert (= (and b!2853992 ((_ is Star!8567) (regOne!17646 (regTwo!17646 (regOne!17647 r!23423))))) b!2854685))

(assert (= (and b!2853992 ((_ is Union!8567) (regOne!17646 (regTwo!17646 (regOne!17647 r!23423))))) b!2854686))

(declare-fun b!2854690 () Bool)

(declare-fun e!1808384 () Bool)

(declare-fun tp!917883 () Bool)

(declare-fun tp!917881 () Bool)

(assert (=> b!2854690 (= e!1808384 (and tp!917883 tp!917881))))

(declare-fun b!2854687 () Bool)

(assert (=> b!2854687 (= e!1808384 tp_is_empty!14871)))

(declare-fun b!2854689 () Bool)

(declare-fun tp!917879 () Bool)

(assert (=> b!2854689 (= e!1808384 tp!917879)))

(declare-fun b!2854688 () Bool)

(declare-fun tp!917882 () Bool)

(declare-fun tp!917880 () Bool)

(assert (=> b!2854688 (= e!1808384 (and tp!917882 tp!917880))))

(assert (=> b!2853992 (= tp!917397 e!1808384)))

(assert (= (and b!2853992 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17646 (regOne!17647 r!23423))))) b!2854687))

(assert (= (and b!2853992 ((_ is Concat!13888) (regTwo!17646 (regTwo!17646 (regOne!17647 r!23423))))) b!2854688))

(assert (= (and b!2853992 ((_ is Star!8567) (regTwo!17646 (regTwo!17646 (regOne!17647 r!23423))))) b!2854689))

(assert (= (and b!2853992 ((_ is Union!8567) (regTwo!17646 (regTwo!17646 (regOne!17647 r!23423))))) b!2854690))

(declare-fun b!2854694 () Bool)

(declare-fun e!1808385 () Bool)

(declare-fun tp!917888 () Bool)

(declare-fun tp!917886 () Bool)

(assert (=> b!2854694 (= e!1808385 (and tp!917888 tp!917886))))

(declare-fun b!2854691 () Bool)

(assert (=> b!2854691 (= e!1808385 tp_is_empty!14871)))

(declare-fun b!2854693 () Bool)

(declare-fun tp!917884 () Bool)

(assert (=> b!2854693 (= e!1808385 tp!917884)))

(declare-fun b!2854692 () Bool)

(declare-fun tp!917887 () Bool)

(declare-fun tp!917885 () Bool)

(assert (=> b!2854692 (= e!1808385 (and tp!917887 tp!917885))))

(assert (=> b!2853994 (= tp!917400 e!1808385)))

(assert (= (and b!2853994 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17646 (regOne!17647 r!23423))))) b!2854691))

(assert (= (and b!2853994 ((_ is Concat!13888) (regOne!17647 (regTwo!17646 (regOne!17647 r!23423))))) b!2854692))

(assert (= (and b!2853994 ((_ is Star!8567) (regOne!17647 (regTwo!17646 (regOne!17647 r!23423))))) b!2854693))

(assert (= (and b!2853994 ((_ is Union!8567) (regOne!17647 (regTwo!17646 (regOne!17647 r!23423))))) b!2854694))

(declare-fun b!2854698 () Bool)

(declare-fun e!1808386 () Bool)

(declare-fun tp!917893 () Bool)

(declare-fun tp!917891 () Bool)

(assert (=> b!2854698 (= e!1808386 (and tp!917893 tp!917891))))

(declare-fun b!2854695 () Bool)

(assert (=> b!2854695 (= e!1808386 tp_is_empty!14871)))

(declare-fun b!2854697 () Bool)

(declare-fun tp!917889 () Bool)

(assert (=> b!2854697 (= e!1808386 tp!917889)))

(declare-fun b!2854696 () Bool)

(declare-fun tp!917892 () Bool)

(declare-fun tp!917890 () Bool)

(assert (=> b!2854696 (= e!1808386 (and tp!917892 tp!917890))))

(assert (=> b!2853994 (= tp!917398 e!1808386)))

(assert (= (and b!2853994 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17646 (regOne!17647 r!23423))))) b!2854695))

(assert (= (and b!2853994 ((_ is Concat!13888) (regTwo!17647 (regTwo!17646 (regOne!17647 r!23423))))) b!2854696))

(assert (= (and b!2853994 ((_ is Star!8567) (regTwo!17647 (regTwo!17646 (regOne!17647 r!23423))))) b!2854697))

(assert (= (and b!2853994 ((_ is Union!8567) (regTwo!17647 (regTwo!17646 (regOne!17647 r!23423))))) b!2854698))

(declare-fun b!2854702 () Bool)

(declare-fun e!1808387 () Bool)

(declare-fun tp!917898 () Bool)

(declare-fun tp!917896 () Bool)

(assert (=> b!2854702 (= e!1808387 (and tp!917898 tp!917896))))

(declare-fun b!2854699 () Bool)

(assert (=> b!2854699 (= e!1808387 tp_is_empty!14871)))

(declare-fun b!2854701 () Bool)

(declare-fun tp!917894 () Bool)

(assert (=> b!2854701 (= e!1808387 tp!917894)))

(declare-fun b!2854700 () Bool)

(declare-fun tp!917897 () Bool)

(declare-fun tp!917895 () Bool)

(assert (=> b!2854700 (= e!1808387 (and tp!917897 tp!917895))))

(assert (=> b!2853985 (= tp!917386 e!1808387)))

(assert (= (and b!2853985 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17646 (reg!8896 r!23423))))) b!2854699))

(assert (= (and b!2853985 ((_ is Concat!13888) (reg!8896 (regTwo!17646 (reg!8896 r!23423))))) b!2854700))

(assert (= (and b!2853985 ((_ is Star!8567) (reg!8896 (regTwo!17646 (reg!8896 r!23423))))) b!2854701))

(assert (= (and b!2853985 ((_ is Union!8567) (reg!8896 (regTwo!17646 (reg!8896 r!23423))))) b!2854702))

(declare-fun b!2854706 () Bool)

(declare-fun e!1808388 () Bool)

(declare-fun tp!917903 () Bool)

(declare-fun tp!917901 () Bool)

(assert (=> b!2854706 (= e!1808388 (and tp!917903 tp!917901))))

(declare-fun b!2854703 () Bool)

(assert (=> b!2854703 (= e!1808388 tp_is_empty!14871)))

(declare-fun b!2854705 () Bool)

(declare-fun tp!917899 () Bool)

(assert (=> b!2854705 (= e!1808388 tp!917899)))

(declare-fun b!2854704 () Bool)

(declare-fun tp!917902 () Bool)

(declare-fun tp!917900 () Bool)

(assert (=> b!2854704 (= e!1808388 (and tp!917902 tp!917900))))

(assert (=> b!2854010 (= tp!917417 e!1808388)))

(assert (= (and b!2854010 ((_ is ElementMatch!8567) (reg!8896 (regOne!17647 (regTwo!17647 r!23423))))) b!2854703))

(assert (= (and b!2854010 ((_ is Concat!13888) (reg!8896 (regOne!17647 (regTwo!17647 r!23423))))) b!2854704))

(assert (= (and b!2854010 ((_ is Star!8567) (reg!8896 (regOne!17647 (regTwo!17647 r!23423))))) b!2854705))

(assert (= (and b!2854010 ((_ is Union!8567) (reg!8896 (regOne!17647 (regTwo!17647 r!23423))))) b!2854706))

(declare-fun b!2854710 () Bool)

(declare-fun e!1808389 () Bool)

(declare-fun tp!917908 () Bool)

(declare-fun tp!917906 () Bool)

(assert (=> b!2854710 (= e!1808389 (and tp!917908 tp!917906))))

(declare-fun b!2854707 () Bool)

(assert (=> b!2854707 (= e!1808389 tp_is_empty!14871)))

(declare-fun b!2854709 () Bool)

(declare-fun tp!917904 () Bool)

(assert (=> b!2854709 (= e!1808389 tp!917904)))

(declare-fun b!2854708 () Bool)

(declare-fun tp!917907 () Bool)

(declare-fun tp!917905 () Bool)

(assert (=> b!2854708 (= e!1808389 (and tp!917907 tp!917905))))

(assert (=> b!2854062 (= tp!917482 e!1808389)))

(assert (= (and b!2854062 ((_ is ElementMatch!8567) (reg!8896 (regOne!17647 (regOne!17647 r!23423))))) b!2854707))

(assert (= (and b!2854062 ((_ is Concat!13888) (reg!8896 (regOne!17647 (regOne!17647 r!23423))))) b!2854708))

(assert (= (and b!2854062 ((_ is Star!8567) (reg!8896 (regOne!17647 (regOne!17647 r!23423))))) b!2854709))

(assert (= (and b!2854062 ((_ is Union!8567) (reg!8896 (regOne!17647 (regOne!17647 r!23423))))) b!2854710))

(declare-fun b!2854714 () Bool)

(declare-fun e!1808390 () Bool)

(declare-fun tp!917913 () Bool)

(declare-fun tp!917911 () Bool)

(assert (=> b!2854714 (= e!1808390 (and tp!917913 tp!917911))))

(declare-fun b!2854711 () Bool)

(assert (=> b!2854711 (= e!1808390 tp_is_empty!14871)))

(declare-fun b!2854713 () Bool)

(declare-fun tp!917909 () Bool)

(assert (=> b!2854713 (= e!1808390 tp!917909)))

(declare-fun b!2854712 () Bool)

(declare-fun tp!917912 () Bool)

(declare-fun tp!917910 () Bool)

(assert (=> b!2854712 (= e!1808390 (and tp!917912 tp!917910))))

(assert (=> b!2854053 (= tp!917475 e!1808390)))

(assert (= (and b!2854053 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854711))

(assert (= (and b!2854053 ((_ is Concat!13888) (regOne!17646 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854712))

(assert (= (and b!2854053 ((_ is Star!8567) (regOne!17646 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854713))

(assert (= (and b!2854053 ((_ is Union!8567) (regOne!17646 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854714))

(declare-fun b!2854718 () Bool)

(declare-fun e!1808391 () Bool)

(declare-fun tp!917918 () Bool)

(declare-fun tp!917916 () Bool)

(assert (=> b!2854718 (= e!1808391 (and tp!917918 tp!917916))))

(declare-fun b!2854715 () Bool)

(assert (=> b!2854715 (= e!1808391 tp_is_empty!14871)))

(declare-fun b!2854717 () Bool)

(declare-fun tp!917914 () Bool)

(assert (=> b!2854717 (= e!1808391 tp!917914)))

(declare-fun b!2854716 () Bool)

(declare-fun tp!917917 () Bool)

(declare-fun tp!917915 () Bool)

(assert (=> b!2854716 (= e!1808391 (and tp!917917 tp!917915))))

(assert (=> b!2854053 (= tp!917473 e!1808391)))

(assert (= (and b!2854053 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854715))

(assert (= (and b!2854053 ((_ is Concat!13888) (regTwo!17646 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854716))

(assert (= (and b!2854053 ((_ is Star!8567) (regTwo!17646 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854717))

(assert (= (and b!2854053 ((_ is Union!8567) (regTwo!17646 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854718))

(declare-fun b!2854722 () Bool)

(declare-fun e!1808392 () Bool)

(declare-fun tp!917923 () Bool)

(declare-fun tp!917921 () Bool)

(assert (=> b!2854722 (= e!1808392 (and tp!917923 tp!917921))))

(declare-fun b!2854719 () Bool)

(assert (=> b!2854719 (= e!1808392 tp_is_empty!14871)))

(declare-fun b!2854721 () Bool)

(declare-fun tp!917919 () Bool)

(assert (=> b!2854721 (= e!1808392 tp!917919)))

(declare-fun b!2854720 () Bool)

(declare-fun tp!917922 () Bool)

(declare-fun tp!917920 () Bool)

(assert (=> b!2854720 (= e!1808392 (and tp!917922 tp!917920))))

(assert (=> b!2854071 (= tp!917496 e!1808392)))

(assert (= (and b!2854071 ((_ is ElementMatch!8567) (regOne!17647 (reg!8896 (regTwo!17646 r!23423))))) b!2854719))

(assert (= (and b!2854071 ((_ is Concat!13888) (regOne!17647 (reg!8896 (regTwo!17646 r!23423))))) b!2854720))

(assert (= (and b!2854071 ((_ is Star!8567) (regOne!17647 (reg!8896 (regTwo!17646 r!23423))))) b!2854721))

(assert (= (and b!2854071 ((_ is Union!8567) (regOne!17647 (reg!8896 (regTwo!17646 r!23423))))) b!2854722))

(declare-fun b!2854726 () Bool)

(declare-fun e!1808393 () Bool)

(declare-fun tp!917928 () Bool)

(declare-fun tp!917926 () Bool)

(assert (=> b!2854726 (= e!1808393 (and tp!917928 tp!917926))))

(declare-fun b!2854723 () Bool)

(assert (=> b!2854723 (= e!1808393 tp_is_empty!14871)))

(declare-fun b!2854725 () Bool)

(declare-fun tp!917924 () Bool)

(assert (=> b!2854725 (= e!1808393 tp!917924)))

(declare-fun b!2854724 () Bool)

(declare-fun tp!917927 () Bool)

(declare-fun tp!917925 () Bool)

(assert (=> b!2854724 (= e!1808393 (and tp!917927 tp!917925))))

(assert (=> b!2854071 (= tp!917494 e!1808393)))

(assert (= (and b!2854071 ((_ is ElementMatch!8567) (regTwo!17647 (reg!8896 (regTwo!17646 r!23423))))) b!2854723))

(assert (= (and b!2854071 ((_ is Concat!13888) (regTwo!17647 (reg!8896 (regTwo!17646 r!23423))))) b!2854724))

(assert (= (and b!2854071 ((_ is Star!8567) (regTwo!17647 (reg!8896 (regTwo!17646 r!23423))))) b!2854725))

(assert (= (and b!2854071 ((_ is Union!8567) (regTwo!17647 (reg!8896 (regTwo!17646 r!23423))))) b!2854726))

(declare-fun b!2854730 () Bool)

(declare-fun e!1808394 () Bool)

(declare-fun tp!917933 () Bool)

(declare-fun tp!917931 () Bool)

(assert (=> b!2854730 (= e!1808394 (and tp!917933 tp!917931))))

(declare-fun b!2854727 () Bool)

(assert (=> b!2854727 (= e!1808394 tp_is_empty!14871)))

(declare-fun b!2854729 () Bool)

(declare-fun tp!917929 () Bool)

(assert (=> b!2854729 (= e!1808394 tp!917929)))

(declare-fun b!2854728 () Bool)

(declare-fun tp!917932 () Bool)

(declare-fun tp!917930 () Bool)

(assert (=> b!2854728 (= e!1808394 (and tp!917932 tp!917930))))

(assert (=> b!2854038 (= tp!917452 e!1808394)))

(assert (= (and b!2854038 ((_ is ElementMatch!8567) (reg!8896 (regOne!17646 (regTwo!17646 r!23423))))) b!2854727))

(assert (= (and b!2854038 ((_ is Concat!13888) (reg!8896 (regOne!17646 (regTwo!17646 r!23423))))) b!2854728))

(assert (= (and b!2854038 ((_ is Star!8567) (reg!8896 (regOne!17646 (regTwo!17646 r!23423))))) b!2854729))

(assert (= (and b!2854038 ((_ is Union!8567) (reg!8896 (regOne!17646 (regTwo!17646 r!23423))))) b!2854730))

(declare-fun b!2854734 () Bool)

(declare-fun e!1808395 () Bool)

(declare-fun tp!917938 () Bool)

(declare-fun tp!917936 () Bool)

(assert (=> b!2854734 (= e!1808395 (and tp!917938 tp!917936))))

(declare-fun b!2854731 () Bool)

(assert (=> b!2854731 (= e!1808395 tp_is_empty!14871)))

(declare-fun b!2854733 () Bool)

(declare-fun tp!917934 () Bool)

(assert (=> b!2854733 (= e!1808395 tp!917934)))

(declare-fun b!2854732 () Bool)

(declare-fun tp!917937 () Bool)

(declare-fun tp!917935 () Bool)

(assert (=> b!2854732 (= e!1808395 (and tp!917937 tp!917935))))

(assert (=> b!2854029 (= tp!917445 e!1808395)))

(assert (= (and b!2854029 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17647 (reg!8896 r!23423))))) b!2854731))

(assert (= (and b!2854029 ((_ is Concat!13888) (regOne!17646 (regOne!17647 (reg!8896 r!23423))))) b!2854732))

(assert (= (and b!2854029 ((_ is Star!8567) (regOne!17646 (regOne!17647 (reg!8896 r!23423))))) b!2854733))

(assert (= (and b!2854029 ((_ is Union!8567) (regOne!17646 (regOne!17647 (reg!8896 r!23423))))) b!2854734))

(declare-fun b!2854738 () Bool)

(declare-fun e!1808396 () Bool)

(declare-fun tp!917943 () Bool)

(declare-fun tp!917941 () Bool)

(assert (=> b!2854738 (= e!1808396 (and tp!917943 tp!917941))))

(declare-fun b!2854735 () Bool)

(assert (=> b!2854735 (= e!1808396 tp_is_empty!14871)))

(declare-fun b!2854737 () Bool)

(declare-fun tp!917939 () Bool)

(assert (=> b!2854737 (= e!1808396 tp!917939)))

(declare-fun b!2854736 () Bool)

(declare-fun tp!917942 () Bool)

(declare-fun tp!917940 () Bool)

(assert (=> b!2854736 (= e!1808396 (and tp!917942 tp!917940))))

(assert (=> b!2854029 (= tp!917443 e!1808396)))

(assert (= (and b!2854029 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17647 (reg!8896 r!23423))))) b!2854735))

(assert (= (and b!2854029 ((_ is Concat!13888) (regTwo!17646 (regOne!17647 (reg!8896 r!23423))))) b!2854736))

(assert (= (and b!2854029 ((_ is Star!8567) (regTwo!17646 (regOne!17647 (reg!8896 r!23423))))) b!2854737))

(assert (= (and b!2854029 ((_ is Union!8567) (regTwo!17646 (regOne!17647 (reg!8896 r!23423))))) b!2854738))

(declare-fun b!2854742 () Bool)

(declare-fun e!1808397 () Bool)

(declare-fun tp!917948 () Bool)

(declare-fun tp!917946 () Bool)

(assert (=> b!2854742 (= e!1808397 (and tp!917948 tp!917946))))

(declare-fun b!2854739 () Bool)

(assert (=> b!2854739 (= e!1808397 tp_is_empty!14871)))

(declare-fun b!2854741 () Bool)

(declare-fun tp!917944 () Bool)

(assert (=> b!2854741 (= e!1808397 tp!917944)))

(declare-fun b!2854740 () Bool)

(declare-fun tp!917947 () Bool)

(declare-fun tp!917945 () Bool)

(assert (=> b!2854740 (= e!1808397 (and tp!917947 tp!917945))))

(assert (=> b!2854047 (= tp!917466 e!1808397)))

(assert (= (and b!2854047 ((_ is ElementMatch!8567) (regOne!17647 (reg!8896 (regTwo!17647 r!23423))))) b!2854739))

(assert (= (and b!2854047 ((_ is Concat!13888) (regOne!17647 (reg!8896 (regTwo!17647 r!23423))))) b!2854740))

(assert (= (and b!2854047 ((_ is Star!8567) (regOne!17647 (reg!8896 (regTwo!17647 r!23423))))) b!2854741))

(assert (= (and b!2854047 ((_ is Union!8567) (regOne!17647 (reg!8896 (regTwo!17647 r!23423))))) b!2854742))

(declare-fun b!2854746 () Bool)

(declare-fun e!1808398 () Bool)

(declare-fun tp!917953 () Bool)

(declare-fun tp!917951 () Bool)

(assert (=> b!2854746 (= e!1808398 (and tp!917953 tp!917951))))

(declare-fun b!2854743 () Bool)

(assert (=> b!2854743 (= e!1808398 tp_is_empty!14871)))

(declare-fun b!2854745 () Bool)

(declare-fun tp!917949 () Bool)

(assert (=> b!2854745 (= e!1808398 tp!917949)))

(declare-fun b!2854744 () Bool)

(declare-fun tp!917952 () Bool)

(declare-fun tp!917950 () Bool)

(assert (=> b!2854744 (= e!1808398 (and tp!917952 tp!917950))))

(assert (=> b!2854047 (= tp!917464 e!1808398)))

(assert (= (and b!2854047 ((_ is ElementMatch!8567) (regTwo!17647 (reg!8896 (regTwo!17647 r!23423))))) b!2854743))

(assert (= (and b!2854047 ((_ is Concat!13888) (regTwo!17647 (reg!8896 (regTwo!17647 r!23423))))) b!2854744))

(assert (= (and b!2854047 ((_ is Star!8567) (regTwo!17647 (reg!8896 (regTwo!17647 r!23423))))) b!2854745))

(assert (= (and b!2854047 ((_ is Union!8567) (regTwo!17647 (reg!8896 (regTwo!17647 r!23423))))) b!2854746))

(declare-fun b!2854750 () Bool)

(declare-fun e!1808399 () Bool)

(declare-fun tp!917958 () Bool)

(declare-fun tp!917956 () Bool)

(assert (=> b!2854750 (= e!1808399 (and tp!917958 tp!917956))))

(declare-fun b!2854747 () Bool)

(assert (=> b!2854747 (= e!1808399 tp_is_empty!14871)))

(declare-fun b!2854749 () Bool)

(declare-fun tp!917954 () Bool)

(assert (=> b!2854749 (= e!1808399 tp!917954)))

(declare-fun b!2854748 () Bool)

(declare-fun tp!917957 () Bool)

(declare-fun tp!917955 () Bool)

(assert (=> b!2854748 (= e!1808399 (and tp!917957 tp!917955))))

(assert (=> b!2854004 (= tp!917414 e!1808399)))

(assert (= (and b!2854004 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854747))

(assert (= (and b!2854004 ((_ is Concat!13888) (regOne!17646 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854748))

(assert (= (and b!2854004 ((_ is Star!8567) (regOne!17646 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854749))

(assert (= (and b!2854004 ((_ is Union!8567) (regOne!17646 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854750))

(declare-fun b!2854754 () Bool)

(declare-fun e!1808400 () Bool)

(declare-fun tp!917963 () Bool)

(declare-fun tp!917961 () Bool)

(assert (=> b!2854754 (= e!1808400 (and tp!917963 tp!917961))))

(declare-fun b!2854751 () Bool)

(assert (=> b!2854751 (= e!1808400 tp_is_empty!14871)))

(declare-fun b!2854753 () Bool)

(declare-fun tp!917959 () Bool)

(assert (=> b!2854753 (= e!1808400 tp!917959)))

(declare-fun b!2854752 () Bool)

(declare-fun tp!917962 () Bool)

(declare-fun tp!917960 () Bool)

(assert (=> b!2854752 (= e!1808400 (and tp!917962 tp!917960))))

(assert (=> b!2854004 (= tp!917412 e!1808400)))

(assert (= (and b!2854004 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854751))

(assert (= (and b!2854004 ((_ is Concat!13888) (regTwo!17646 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854752))

(assert (= (and b!2854004 ((_ is Star!8567) (regTwo!17646 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854753))

(assert (= (and b!2854004 ((_ is Union!8567) (regTwo!17646 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854754))

(declare-fun b!2854758 () Bool)

(declare-fun e!1808401 () Bool)

(declare-fun tp!917968 () Bool)

(declare-fun tp!917966 () Bool)

(assert (=> b!2854758 (= e!1808401 (and tp!917968 tp!917966))))

(declare-fun b!2854755 () Bool)

(assert (=> b!2854755 (= e!1808401 tp_is_empty!14871)))

(declare-fun b!2854757 () Bool)

(declare-fun tp!917964 () Bool)

(assert (=> b!2854757 (= e!1808401 tp!917964)))

(declare-fun b!2854756 () Bool)

(declare-fun tp!917967 () Bool)

(declare-fun tp!917965 () Bool)

(assert (=> b!2854756 (= e!1808401 (and tp!917967 tp!917965))))

(assert (=> b!2854022 (= tp!917432 e!1808401)))

(assert (= (and b!2854022 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17646 (regOne!17646 r!23423))))) b!2854755))

(assert (= (and b!2854022 ((_ is Concat!13888) (reg!8896 (regTwo!17646 (regOne!17646 r!23423))))) b!2854756))

(assert (= (and b!2854022 ((_ is Star!8567) (reg!8896 (regTwo!17646 (regOne!17646 r!23423))))) b!2854757))

(assert (= (and b!2854022 ((_ is Union!8567) (reg!8896 (regTwo!17646 (regOne!17646 r!23423))))) b!2854758))

(declare-fun b!2854762 () Bool)

(declare-fun e!1808402 () Bool)

(declare-fun tp!917973 () Bool)

(declare-fun tp!917971 () Bool)

(assert (=> b!2854762 (= e!1808402 (and tp!917973 tp!917971))))

(declare-fun b!2854759 () Bool)

(assert (=> b!2854759 (= e!1808402 tp_is_empty!14871)))

(declare-fun b!2854761 () Bool)

(declare-fun tp!917969 () Bool)

(assert (=> b!2854761 (= e!1808402 tp!917969)))

(declare-fun b!2854760 () Bool)

(declare-fun tp!917972 () Bool)

(declare-fun tp!917970 () Bool)

(assert (=> b!2854760 (= e!1808402 (and tp!917972 tp!917970))))

(assert (=> b!2854013 (= tp!917425 e!1808402)))

(assert (= (and b!2854013 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854759))

(assert (= (and b!2854013 ((_ is Concat!13888) (regOne!17646 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854760))

(assert (= (and b!2854013 ((_ is Star!8567) (regOne!17646 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854761))

(assert (= (and b!2854013 ((_ is Union!8567) (regOne!17646 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854762))

(declare-fun b!2854766 () Bool)

(declare-fun e!1808403 () Bool)

(declare-fun tp!917978 () Bool)

(declare-fun tp!917976 () Bool)

(assert (=> b!2854766 (= e!1808403 (and tp!917978 tp!917976))))

(declare-fun b!2854763 () Bool)

(assert (=> b!2854763 (= e!1808403 tp_is_empty!14871)))

(declare-fun b!2854765 () Bool)

(declare-fun tp!917974 () Bool)

(assert (=> b!2854765 (= e!1808403 tp!917974)))

(declare-fun b!2854764 () Bool)

(declare-fun tp!917977 () Bool)

(declare-fun tp!917975 () Bool)

(assert (=> b!2854764 (= e!1808403 (and tp!917977 tp!917975))))

(assert (=> b!2854013 (= tp!917423 e!1808403)))

(assert (= (and b!2854013 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854763))

(assert (= (and b!2854013 ((_ is Concat!13888) (regTwo!17646 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854764))

(assert (= (and b!2854013 ((_ is Star!8567) (regTwo!17646 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854765))

(assert (= (and b!2854013 ((_ is Union!8567) (regTwo!17646 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854766))

(declare-fun b!2854770 () Bool)

(declare-fun e!1808404 () Bool)

(declare-fun tp!917983 () Bool)

(declare-fun tp!917981 () Bool)

(assert (=> b!2854770 (= e!1808404 (and tp!917983 tp!917981))))

(declare-fun b!2854767 () Bool)

(assert (=> b!2854767 (= e!1808404 tp_is_empty!14871)))

(declare-fun b!2854769 () Bool)

(declare-fun tp!917979 () Bool)

(assert (=> b!2854769 (= e!1808404 tp!917979)))

(declare-fun b!2854768 () Bool)

(declare-fun tp!917982 () Bool)

(declare-fun tp!917980 () Bool)

(assert (=> b!2854768 (= e!1808404 (and tp!917982 tp!917980))))

(assert (=> b!2854031 (= tp!917446 e!1808404)))

(assert (= (and b!2854031 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17647 (reg!8896 r!23423))))) b!2854767))

(assert (= (and b!2854031 ((_ is Concat!13888) (regOne!17647 (regOne!17647 (reg!8896 r!23423))))) b!2854768))

(assert (= (and b!2854031 ((_ is Star!8567) (regOne!17647 (regOne!17647 (reg!8896 r!23423))))) b!2854769))

(assert (= (and b!2854031 ((_ is Union!8567) (regOne!17647 (regOne!17647 (reg!8896 r!23423))))) b!2854770))

(declare-fun b!2854774 () Bool)

(declare-fun e!1808405 () Bool)

(declare-fun tp!917988 () Bool)

(declare-fun tp!917986 () Bool)

(assert (=> b!2854774 (= e!1808405 (and tp!917988 tp!917986))))

(declare-fun b!2854771 () Bool)

(assert (=> b!2854771 (= e!1808405 tp_is_empty!14871)))

(declare-fun b!2854773 () Bool)

(declare-fun tp!917984 () Bool)

(assert (=> b!2854773 (= e!1808405 tp!917984)))

(declare-fun b!2854772 () Bool)

(declare-fun tp!917987 () Bool)

(declare-fun tp!917985 () Bool)

(assert (=> b!2854772 (= e!1808405 (and tp!917987 tp!917985))))

(assert (=> b!2854031 (= tp!917444 e!1808405)))

(assert (= (and b!2854031 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17647 (reg!8896 r!23423))))) b!2854771))

(assert (= (and b!2854031 ((_ is Concat!13888) (regTwo!17647 (regOne!17647 (reg!8896 r!23423))))) b!2854772))

(assert (= (and b!2854031 ((_ is Star!8567) (regTwo!17647 (regOne!17647 (reg!8896 r!23423))))) b!2854773))

(assert (= (and b!2854031 ((_ is Union!8567) (regTwo!17647 (regOne!17647 (reg!8896 r!23423))))) b!2854774))

(declare-fun b!2854778 () Bool)

(declare-fun e!1808406 () Bool)

(declare-fun tp!917993 () Bool)

(declare-fun tp!917991 () Bool)

(assert (=> b!2854778 (= e!1808406 (and tp!917993 tp!917991))))

(declare-fun b!2854775 () Bool)

(assert (=> b!2854775 (= e!1808406 tp_is_empty!14871)))

(declare-fun b!2854777 () Bool)

(declare-fun tp!917989 () Bool)

(assert (=> b!2854777 (= e!1808406 tp!917989)))

(declare-fun b!2854776 () Bool)

(declare-fun tp!917992 () Bool)

(declare-fun tp!917990 () Bool)

(assert (=> b!2854776 (= e!1808406 (and tp!917992 tp!917990))))

(assert (=> b!2853988 (= tp!917394 e!1808406)))

(assert (= (and b!2853988 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17646 (regOne!17647 r!23423))))) b!2854775))

(assert (= (and b!2853988 ((_ is Concat!13888) (regOne!17646 (regOne!17646 (regOne!17647 r!23423))))) b!2854776))

(assert (= (and b!2853988 ((_ is Star!8567) (regOne!17646 (regOne!17646 (regOne!17647 r!23423))))) b!2854777))

(assert (= (and b!2853988 ((_ is Union!8567) (regOne!17646 (regOne!17646 (regOne!17647 r!23423))))) b!2854778))

(declare-fun b!2854782 () Bool)

(declare-fun e!1808407 () Bool)

(declare-fun tp!917998 () Bool)

(declare-fun tp!917996 () Bool)

(assert (=> b!2854782 (= e!1808407 (and tp!917998 tp!917996))))

(declare-fun b!2854779 () Bool)

(assert (=> b!2854779 (= e!1808407 tp_is_empty!14871)))

(declare-fun b!2854781 () Bool)

(declare-fun tp!917994 () Bool)

(assert (=> b!2854781 (= e!1808407 tp!917994)))

(declare-fun b!2854780 () Bool)

(declare-fun tp!917997 () Bool)

(declare-fun tp!917995 () Bool)

(assert (=> b!2854780 (= e!1808407 (and tp!917997 tp!917995))))

(assert (=> b!2853988 (= tp!917392 e!1808407)))

(assert (= (and b!2853988 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17646 (regOne!17647 r!23423))))) b!2854779))

(assert (= (and b!2853988 ((_ is Concat!13888) (regTwo!17646 (regOne!17646 (regOne!17647 r!23423))))) b!2854780))

(assert (= (and b!2853988 ((_ is Star!8567) (regTwo!17646 (regOne!17646 (regOne!17647 r!23423))))) b!2854781))

(assert (= (and b!2853988 ((_ is Union!8567) (regTwo!17646 (regOne!17646 (regOne!17647 r!23423))))) b!2854782))

(declare-fun b!2854786 () Bool)

(declare-fun e!1808408 () Bool)

(declare-fun tp!918003 () Bool)

(declare-fun tp!918001 () Bool)

(assert (=> b!2854786 (= e!1808408 (and tp!918003 tp!918001))))

(declare-fun b!2854783 () Bool)

(assert (=> b!2854783 (= e!1808408 tp_is_empty!14871)))

(declare-fun b!2854785 () Bool)

(declare-fun tp!917999 () Bool)

(assert (=> b!2854785 (= e!1808408 tp!917999)))

(declare-fun b!2854784 () Bool)

(declare-fun tp!918002 () Bool)

(declare-fun tp!918000 () Bool)

(assert (=> b!2854784 (= e!1808408 (and tp!918002 tp!918000))))

(assert (=> b!2854006 (= tp!917415 e!1808408)))

(assert (= (and b!2854006 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854783))

(assert (= (and b!2854006 ((_ is Concat!13888) (regOne!17647 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854784))

(assert (= (and b!2854006 ((_ is Star!8567) (regOne!17647 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854785))

(assert (= (and b!2854006 ((_ is Union!8567) (regOne!17647 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854786))

(declare-fun b!2854790 () Bool)

(declare-fun e!1808409 () Bool)

(declare-fun tp!918008 () Bool)

(declare-fun tp!918006 () Bool)

(assert (=> b!2854790 (= e!1808409 (and tp!918008 tp!918006))))

(declare-fun b!2854787 () Bool)

(assert (=> b!2854787 (= e!1808409 tp_is_empty!14871)))

(declare-fun b!2854789 () Bool)

(declare-fun tp!918004 () Bool)

(assert (=> b!2854789 (= e!1808409 tp!918004)))

(declare-fun b!2854788 () Bool)

(declare-fun tp!918007 () Bool)

(declare-fun tp!918005 () Bool)

(assert (=> b!2854788 (= e!1808409 (and tp!918007 tp!918005))))

(assert (=> b!2854006 (= tp!917413 e!1808409)))

(assert (= (and b!2854006 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854787))

(assert (= (and b!2854006 ((_ is Concat!13888) (regTwo!17647 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854788))

(assert (= (and b!2854006 ((_ is Star!8567) (regTwo!17647 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854789))

(assert (= (and b!2854006 ((_ is Union!8567) (regTwo!17647 (regTwo!17646 (regTwo!17647 r!23423))))) b!2854790))

(declare-fun b!2854794 () Bool)

(declare-fun e!1808410 () Bool)

(declare-fun tp!918013 () Bool)

(declare-fun tp!918011 () Bool)

(assert (=> b!2854794 (= e!1808410 (and tp!918013 tp!918011))))

(declare-fun b!2854791 () Bool)

(assert (=> b!2854791 (= e!1808410 tp_is_empty!14871)))

(declare-fun b!2854793 () Bool)

(declare-fun tp!918009 () Bool)

(assert (=> b!2854793 (= e!1808410 tp!918009)))

(declare-fun b!2854792 () Bool)

(declare-fun tp!918012 () Bool)

(declare-fun tp!918010 () Bool)

(assert (=> b!2854792 (= e!1808410 (and tp!918012 tp!918010))))

(assert (=> b!2853997 (= tp!917401 e!1808410)))

(assert (= (and b!2853997 ((_ is ElementMatch!8567) (reg!8896 (reg!8896 (reg!8896 r!23423))))) b!2854791))

(assert (= (and b!2853997 ((_ is Concat!13888) (reg!8896 (reg!8896 (reg!8896 r!23423))))) b!2854792))

(assert (= (and b!2853997 ((_ is Star!8567) (reg!8896 (reg!8896 (reg!8896 r!23423))))) b!2854793))

(assert (= (and b!2853997 ((_ is Union!8567) (reg!8896 (reg!8896 (reg!8896 r!23423))))) b!2854794))

(declare-fun b!2854798 () Bool)

(declare-fun e!1808411 () Bool)

(declare-fun tp!918018 () Bool)

(declare-fun tp!918016 () Bool)

(assert (=> b!2854798 (= e!1808411 (and tp!918018 tp!918016))))

(declare-fun b!2854795 () Bool)

(assert (=> b!2854795 (= e!1808411 tp_is_empty!14871)))

(declare-fun b!2854797 () Bool)

(declare-fun tp!918014 () Bool)

(assert (=> b!2854797 (= e!1808411 tp!918014)))

(declare-fun b!2854796 () Bool)

(declare-fun tp!918017 () Bool)

(declare-fun tp!918015 () Bool)

(assert (=> b!2854796 (= e!1808411 (and tp!918017 tp!918015))))

(assert (=> b!2854074 (= tp!917497 e!1808411)))

(assert (= (and b!2854074 ((_ is ElementMatch!8567) (reg!8896 (regOne!17647 (regOne!17646 r!23423))))) b!2854795))

(assert (= (and b!2854074 ((_ is Concat!13888) (reg!8896 (regOne!17647 (regOne!17646 r!23423))))) b!2854796))

(assert (= (and b!2854074 ((_ is Star!8567) (reg!8896 (regOne!17647 (regOne!17646 r!23423))))) b!2854797))

(assert (= (and b!2854074 ((_ is Union!8567) (reg!8896 (regOne!17647 (regOne!17646 r!23423))))) b!2854798))

(declare-fun b!2854802 () Bool)

(declare-fun e!1808412 () Bool)

(declare-fun tp!918023 () Bool)

(declare-fun tp!918021 () Bool)

(assert (=> b!2854802 (= e!1808412 (and tp!918023 tp!918021))))

(declare-fun b!2854799 () Bool)

(assert (=> b!2854799 (= e!1808412 tp_is_empty!14871)))

(declare-fun b!2854801 () Bool)

(declare-fun tp!918019 () Bool)

(assert (=> b!2854801 (= e!1808412 tp!918019)))

(declare-fun b!2854800 () Bool)

(declare-fun tp!918022 () Bool)

(declare-fun tp!918020 () Bool)

(assert (=> b!2854800 (= e!1808412 (and tp!918022 tp!918020))))

(assert (=> b!2854065 (= tp!917490 e!1808412)))

(assert (= (and b!2854065 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17647 (regOne!17647 r!23423))))) b!2854799))

(assert (= (and b!2854065 ((_ is Concat!13888) (regOne!17646 (regTwo!17647 (regOne!17647 r!23423))))) b!2854800))

(assert (= (and b!2854065 ((_ is Star!8567) (regOne!17646 (regTwo!17647 (regOne!17647 r!23423))))) b!2854801))

(assert (= (and b!2854065 ((_ is Union!8567) (regOne!17646 (regTwo!17647 (regOne!17647 r!23423))))) b!2854802))

(declare-fun b!2854806 () Bool)

(declare-fun e!1808413 () Bool)

(declare-fun tp!918028 () Bool)

(declare-fun tp!918026 () Bool)

(assert (=> b!2854806 (= e!1808413 (and tp!918028 tp!918026))))

(declare-fun b!2854803 () Bool)

(assert (=> b!2854803 (= e!1808413 tp_is_empty!14871)))

(declare-fun b!2854805 () Bool)

(declare-fun tp!918024 () Bool)

(assert (=> b!2854805 (= e!1808413 tp!918024)))

(declare-fun b!2854804 () Bool)

(declare-fun tp!918027 () Bool)

(declare-fun tp!918025 () Bool)

(assert (=> b!2854804 (= e!1808413 (and tp!918027 tp!918025))))

(assert (=> b!2854065 (= tp!917488 e!1808413)))

(assert (= (and b!2854065 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17647 (regOne!17647 r!23423))))) b!2854803))

(assert (= (and b!2854065 ((_ is Concat!13888) (regTwo!17646 (regTwo!17647 (regOne!17647 r!23423))))) b!2854804))

(assert (= (and b!2854065 ((_ is Star!8567) (regTwo!17646 (regTwo!17647 (regOne!17647 r!23423))))) b!2854805))

(assert (= (and b!2854065 ((_ is Union!8567) (regTwo!17646 (regTwo!17647 (regOne!17647 r!23423))))) b!2854806))

(declare-fun b!2854810 () Bool)

(declare-fun e!1808414 () Bool)

(declare-fun tp!918033 () Bool)

(declare-fun tp!918031 () Bool)

(assert (=> b!2854810 (= e!1808414 (and tp!918033 tp!918031))))

(declare-fun b!2854807 () Bool)

(assert (=> b!2854807 (= e!1808414 tp_is_empty!14871)))

(declare-fun b!2854809 () Bool)

(declare-fun tp!918029 () Bool)

(assert (=> b!2854809 (= e!1808414 tp!918029)))

(declare-fun b!2854808 () Bool)

(declare-fun tp!918032 () Bool)

(declare-fun tp!918030 () Bool)

(assert (=> b!2854808 (= e!1808414 (and tp!918032 tp!918030))))

(assert (=> b!2854015 (= tp!917426 e!1808414)))

(assert (= (and b!2854015 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854807))

(assert (= (and b!2854015 ((_ is Concat!13888) (regOne!17647 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854808))

(assert (= (and b!2854015 ((_ is Star!8567) (regOne!17647 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854809))

(assert (= (and b!2854015 ((_ is Union!8567) (regOne!17647 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854810))

(declare-fun b!2854814 () Bool)

(declare-fun e!1808415 () Bool)

(declare-fun tp!918038 () Bool)

(declare-fun tp!918036 () Bool)

(assert (=> b!2854814 (= e!1808415 (and tp!918038 tp!918036))))

(declare-fun b!2854811 () Bool)

(assert (=> b!2854811 (= e!1808415 tp_is_empty!14871)))

(declare-fun b!2854813 () Bool)

(declare-fun tp!918034 () Bool)

(assert (=> b!2854813 (= e!1808415 tp!918034)))

(declare-fun b!2854812 () Bool)

(declare-fun tp!918037 () Bool)

(declare-fun tp!918035 () Bool)

(assert (=> b!2854812 (= e!1808415 (and tp!918037 tp!918035))))

(assert (=> b!2854015 (= tp!917424 e!1808415)))

(assert (= (and b!2854015 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854811))

(assert (= (and b!2854015 ((_ is Concat!13888) (regTwo!17647 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854812))

(assert (= (and b!2854015 ((_ is Star!8567) (regTwo!17647 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854813))

(assert (= (and b!2854015 ((_ is Union!8567) (regTwo!17647 (regTwo!17647 (regTwo!17647 r!23423))))) b!2854814))

(declare-fun b!2854818 () Bool)

(declare-fun e!1808416 () Bool)

(declare-fun tp!918043 () Bool)

(declare-fun tp!918041 () Bool)

(assert (=> b!2854818 (= e!1808416 (and tp!918043 tp!918041))))

(declare-fun b!2854815 () Bool)

(assert (=> b!2854815 (= e!1808416 tp_is_empty!14871)))

(declare-fun b!2854817 () Bool)

(declare-fun tp!918039 () Bool)

(assert (=> b!2854817 (= e!1808416 tp!918039)))

(declare-fun b!2854816 () Bool)

(declare-fun tp!918042 () Bool)

(declare-fun tp!918040 () Bool)

(assert (=> b!2854816 (= e!1808416 (and tp!918042 tp!918040))))

(assert (=> b!2854067 (= tp!917491 e!1808416)))

(assert (= (and b!2854067 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17647 (regOne!17647 r!23423))))) b!2854815))

(assert (= (and b!2854067 ((_ is Concat!13888) (regOne!17647 (regTwo!17647 (regOne!17647 r!23423))))) b!2854816))

(assert (= (and b!2854067 ((_ is Star!8567) (regOne!17647 (regTwo!17647 (regOne!17647 r!23423))))) b!2854817))

(assert (= (and b!2854067 ((_ is Union!8567) (regOne!17647 (regTwo!17647 (regOne!17647 r!23423))))) b!2854818))

(declare-fun b!2854822 () Bool)

(declare-fun e!1808417 () Bool)

(declare-fun tp!918048 () Bool)

(declare-fun tp!918046 () Bool)

(assert (=> b!2854822 (= e!1808417 (and tp!918048 tp!918046))))

(declare-fun b!2854819 () Bool)

(assert (=> b!2854819 (= e!1808417 tp_is_empty!14871)))

(declare-fun b!2854821 () Bool)

(declare-fun tp!918044 () Bool)

(assert (=> b!2854821 (= e!1808417 tp!918044)))

(declare-fun b!2854820 () Bool)

(declare-fun tp!918047 () Bool)

(declare-fun tp!918045 () Bool)

(assert (=> b!2854820 (= e!1808417 (and tp!918047 tp!918045))))

(assert (=> b!2854067 (= tp!917489 e!1808417)))

(assert (= (and b!2854067 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17647 (regOne!17647 r!23423))))) b!2854819))

(assert (= (and b!2854067 ((_ is Concat!13888) (regTwo!17647 (regTwo!17647 (regOne!17647 r!23423))))) b!2854820))

(assert (= (and b!2854067 ((_ is Star!8567) (regTwo!17647 (regTwo!17647 (regOne!17647 r!23423))))) b!2854821))

(assert (= (and b!2854067 ((_ is Union!8567) (regTwo!17647 (regTwo!17647 (regOne!17647 r!23423))))) b!2854822))

(declare-fun b!2854826 () Bool)

(declare-fun e!1808418 () Bool)

(declare-fun tp!918053 () Bool)

(declare-fun tp!918051 () Bool)

(assert (=> b!2854826 (= e!1808418 (and tp!918053 tp!918051))))

(declare-fun b!2854823 () Bool)

(assert (=> b!2854823 (= e!1808418 tp_is_empty!14871)))

(declare-fun b!2854825 () Bool)

(declare-fun tp!918049 () Bool)

(assert (=> b!2854825 (= e!1808418 tp!918049)))

(declare-fun b!2854824 () Bool)

(declare-fun tp!918052 () Bool)

(declare-fun tp!918050 () Bool)

(assert (=> b!2854824 (= e!1808418 (and tp!918052 tp!918050))))

(assert (=> b!2853990 (= tp!917395 e!1808418)))

(assert (= (and b!2853990 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17646 (regOne!17647 r!23423))))) b!2854823))

(assert (= (and b!2853990 ((_ is Concat!13888) (regOne!17647 (regOne!17646 (regOne!17647 r!23423))))) b!2854824))

(assert (= (and b!2853990 ((_ is Star!8567) (regOne!17647 (regOne!17646 (regOne!17647 r!23423))))) b!2854825))

(assert (= (and b!2853990 ((_ is Union!8567) (regOne!17647 (regOne!17646 (regOne!17647 r!23423))))) b!2854826))

(declare-fun b!2854830 () Bool)

(declare-fun e!1808419 () Bool)

(declare-fun tp!918058 () Bool)

(declare-fun tp!918056 () Bool)

(assert (=> b!2854830 (= e!1808419 (and tp!918058 tp!918056))))

(declare-fun b!2854827 () Bool)

(assert (=> b!2854827 (= e!1808419 tp_is_empty!14871)))

(declare-fun b!2854829 () Bool)

(declare-fun tp!918054 () Bool)

(assert (=> b!2854829 (= e!1808419 tp!918054)))

(declare-fun b!2854828 () Bool)

(declare-fun tp!918057 () Bool)

(declare-fun tp!918055 () Bool)

(assert (=> b!2854828 (= e!1808419 (and tp!918057 tp!918055))))

(assert (=> b!2853990 (= tp!917393 e!1808419)))

(assert (= (and b!2853990 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17646 (regOne!17647 r!23423))))) b!2854827))

(assert (= (and b!2853990 ((_ is Concat!13888) (regTwo!17647 (regOne!17646 (regOne!17647 r!23423))))) b!2854828))

(assert (= (and b!2853990 ((_ is Star!8567) (regTwo!17647 (regOne!17646 (regOne!17647 r!23423))))) b!2854829))

(assert (= (and b!2853990 ((_ is Union!8567) (regTwo!17647 (regOne!17646 (regOne!17647 r!23423))))) b!2854830))

(declare-fun b!2854834 () Bool)

(declare-fun e!1808420 () Bool)

(declare-fun tp!918063 () Bool)

(declare-fun tp!918061 () Bool)

(assert (=> b!2854834 (= e!1808420 (and tp!918063 tp!918061))))

(declare-fun b!2854831 () Bool)

(assert (=> b!2854831 (= e!1808420 tp_is_empty!14871)))

(declare-fun b!2854833 () Bool)

(declare-fun tp!918059 () Bool)

(assert (=> b!2854833 (= e!1808420 tp!918059)))

(declare-fun b!2854832 () Bool)

(declare-fun tp!918062 () Bool)

(declare-fun tp!918060 () Bool)

(assert (=> b!2854832 (= e!1808420 (and tp!918062 tp!918060))))

(assert (=> b!2853981 (= tp!917381 e!1808420)))

(assert (= (and b!2853981 ((_ is ElementMatch!8567) (reg!8896 (regOne!17646 (reg!8896 r!23423))))) b!2854831))

(assert (= (and b!2853981 ((_ is Concat!13888) (reg!8896 (regOne!17646 (reg!8896 r!23423))))) b!2854832))

(assert (= (and b!2853981 ((_ is Star!8567) (reg!8896 (regOne!17646 (reg!8896 r!23423))))) b!2854833))

(assert (= (and b!2853981 ((_ is Union!8567) (reg!8896 (regOne!17646 (reg!8896 r!23423))))) b!2854834))

(declare-fun b!2854838 () Bool)

(declare-fun e!1808421 () Bool)

(declare-fun tp!918068 () Bool)

(declare-fun tp!918066 () Bool)

(assert (=> b!2854838 (= e!1808421 (and tp!918068 tp!918066))))

(declare-fun b!2854835 () Bool)

(assert (=> b!2854835 (= e!1808421 tp_is_empty!14871)))

(declare-fun b!2854837 () Bool)

(declare-fun tp!918064 () Bool)

(assert (=> b!2854837 (= e!1808421 tp!918064)))

(declare-fun b!2854836 () Bool)

(declare-fun tp!918067 () Bool)

(declare-fun tp!918065 () Bool)

(assert (=> b!2854836 (= e!1808421 (and tp!918067 tp!918065))))

(assert (=> b!2854058 (= tp!917477 e!1808421)))

(assert (= (and b!2854058 ((_ is ElementMatch!8567) (reg!8896 (reg!8896 (regOne!17646 r!23423))))) b!2854835))

(assert (= (and b!2854058 ((_ is Concat!13888) (reg!8896 (reg!8896 (regOne!17646 r!23423))))) b!2854836))

(assert (= (and b!2854058 ((_ is Star!8567) (reg!8896 (reg!8896 (regOne!17646 r!23423))))) b!2854837))

(assert (= (and b!2854058 ((_ is Union!8567) (reg!8896 (reg!8896 (regOne!17646 r!23423))))) b!2854838))

(declare-fun b!2854842 () Bool)

(declare-fun e!1808422 () Bool)

(declare-fun tp!918073 () Bool)

(declare-fun tp!918071 () Bool)

(assert (=> b!2854842 (= e!1808422 (and tp!918073 tp!918071))))

(declare-fun b!2854839 () Bool)

(assert (=> b!2854839 (= e!1808422 tp_is_empty!14871)))

(declare-fun b!2854841 () Bool)

(declare-fun tp!918069 () Bool)

(assert (=> b!2854841 (= e!1808422 tp!918069)))

(declare-fun b!2854840 () Bool)

(declare-fun tp!918072 () Bool)

(declare-fun tp!918070 () Bool)

(assert (=> b!2854840 (= e!1808422 (and tp!918072 tp!918070))))

(assert (=> b!2854049 (= tp!917470 e!1808422)))

(assert (= (and b!2854049 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17647 (regTwo!17646 r!23423))))) b!2854839))

(assert (= (and b!2854049 ((_ is Concat!13888) (regOne!17646 (regOne!17647 (regTwo!17646 r!23423))))) b!2854840))

(assert (= (and b!2854049 ((_ is Star!8567) (regOne!17646 (regOne!17647 (regTwo!17646 r!23423))))) b!2854841))

(assert (= (and b!2854049 ((_ is Union!8567) (regOne!17646 (regOne!17647 (regTwo!17646 r!23423))))) b!2854842))

(declare-fun b!2854846 () Bool)

(declare-fun e!1808423 () Bool)

(declare-fun tp!918078 () Bool)

(declare-fun tp!918076 () Bool)

(assert (=> b!2854846 (= e!1808423 (and tp!918078 tp!918076))))

(declare-fun b!2854843 () Bool)

(assert (=> b!2854843 (= e!1808423 tp_is_empty!14871)))

(declare-fun b!2854845 () Bool)

(declare-fun tp!918074 () Bool)

(assert (=> b!2854845 (= e!1808423 tp!918074)))

(declare-fun b!2854844 () Bool)

(declare-fun tp!918077 () Bool)

(declare-fun tp!918075 () Bool)

(assert (=> b!2854844 (= e!1808423 (and tp!918077 tp!918075))))

(assert (=> b!2854049 (= tp!917468 e!1808423)))

(assert (= (and b!2854049 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17647 (regTwo!17646 r!23423))))) b!2854843))

(assert (= (and b!2854049 ((_ is Concat!13888) (regTwo!17646 (regOne!17647 (regTwo!17646 r!23423))))) b!2854844))

(assert (= (and b!2854049 ((_ is Star!8567) (regTwo!17646 (regOne!17647 (regTwo!17646 r!23423))))) b!2854845))

(assert (= (and b!2854049 ((_ is Union!8567) (regTwo!17646 (regOne!17647 (regTwo!17646 r!23423))))) b!2854846))

(declare-fun b!2854850 () Bool)

(declare-fun e!1808424 () Bool)

(declare-fun tp!918083 () Bool)

(declare-fun tp!918081 () Bool)

(assert (=> b!2854850 (= e!1808424 (and tp!918083 tp!918081))))

(declare-fun b!2854847 () Bool)

(assert (=> b!2854847 (= e!1808424 tp_is_empty!14871)))

(declare-fun b!2854849 () Bool)

(declare-fun tp!918079 () Bool)

(assert (=> b!2854849 (= e!1808424 tp!918079)))

(declare-fun b!2854848 () Bool)

(declare-fun tp!918082 () Bool)

(declare-fun tp!918080 () Bool)

(assert (=> b!2854848 (= e!1808424 (and tp!918082 tp!918080))))

(assert (=> b!2854050 (= tp!917467 e!1808424)))

(assert (= (and b!2854050 ((_ is ElementMatch!8567) (reg!8896 (regOne!17647 (regTwo!17646 r!23423))))) b!2854847))

(assert (= (and b!2854050 ((_ is Concat!13888) (reg!8896 (regOne!17647 (regTwo!17646 r!23423))))) b!2854848))

(assert (= (and b!2854050 ((_ is Star!8567) (reg!8896 (regOne!17647 (regTwo!17646 r!23423))))) b!2854849))

(assert (= (and b!2854050 ((_ is Union!8567) (reg!8896 (regOne!17647 (regTwo!17646 r!23423))))) b!2854850))

(declare-fun b!2854854 () Bool)

(declare-fun e!1808425 () Bool)

(declare-fun tp!918088 () Bool)

(declare-fun tp!918086 () Bool)

(assert (=> b!2854854 (= e!1808425 (and tp!918088 tp!918086))))

(declare-fun b!2854851 () Bool)

(assert (=> b!2854851 (= e!1808425 tp_is_empty!14871)))

(declare-fun b!2854853 () Bool)

(declare-fun tp!918084 () Bool)

(assert (=> b!2854853 (= e!1808425 tp!918084)))

(declare-fun b!2854852 () Bool)

(declare-fun tp!918087 () Bool)

(declare-fun tp!918085 () Bool)

(assert (=> b!2854852 (= e!1808425 (and tp!918087 tp!918085))))

(assert (=> b!2854041 (= tp!917460 e!1808425)))

(assert (= (and b!2854041 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854851))

(assert (= (and b!2854041 ((_ is Concat!13888) (regOne!17646 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854852))

(assert (= (and b!2854041 ((_ is Star!8567) (regOne!17646 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854853))

(assert (= (and b!2854041 ((_ is Union!8567) (regOne!17646 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854854))

(declare-fun b!2854858 () Bool)

(declare-fun e!1808426 () Bool)

(declare-fun tp!918093 () Bool)

(declare-fun tp!918091 () Bool)

(assert (=> b!2854858 (= e!1808426 (and tp!918093 tp!918091))))

(declare-fun b!2854855 () Bool)

(assert (=> b!2854855 (= e!1808426 tp_is_empty!14871)))

(declare-fun b!2854857 () Bool)

(declare-fun tp!918089 () Bool)

(assert (=> b!2854857 (= e!1808426 tp!918089)))

(declare-fun b!2854856 () Bool)

(declare-fun tp!918092 () Bool)

(declare-fun tp!918090 () Bool)

(assert (=> b!2854856 (= e!1808426 (and tp!918092 tp!918090))))

(assert (=> b!2854041 (= tp!917458 e!1808426)))

(assert (= (and b!2854041 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854855))

(assert (= (and b!2854041 ((_ is Concat!13888) (regTwo!17646 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854856))

(assert (= (and b!2854041 ((_ is Star!8567) (regTwo!17646 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854857))

(assert (= (and b!2854041 ((_ is Union!8567) (regTwo!17646 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854858))

(declare-fun b!2854862 () Bool)

(declare-fun e!1808427 () Bool)

(declare-fun tp!918098 () Bool)

(declare-fun tp!918096 () Bool)

(assert (=> b!2854862 (= e!1808427 (and tp!918098 tp!918096))))

(declare-fun b!2854859 () Bool)

(assert (=> b!2854859 (= e!1808427 tp_is_empty!14871)))

(declare-fun b!2854861 () Bool)

(declare-fun tp!918094 () Bool)

(assert (=> b!2854861 (= e!1808427 tp!918094)))

(declare-fun b!2854860 () Bool)

(declare-fun tp!918097 () Bool)

(declare-fun tp!918095 () Bool)

(assert (=> b!2854860 (= e!1808427 (and tp!918097 tp!918095))))

(assert (=> b!2854043 (= tp!917461 e!1808427)))

(assert (= (and b!2854043 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854859))

(assert (= (and b!2854043 ((_ is Concat!13888) (regOne!17647 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854860))

(assert (= (and b!2854043 ((_ is Star!8567) (regOne!17647 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854861))

(assert (= (and b!2854043 ((_ is Union!8567) (regOne!17647 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854862))

(declare-fun b!2854866 () Bool)

(declare-fun e!1808428 () Bool)

(declare-fun tp!918103 () Bool)

(declare-fun tp!918101 () Bool)

(assert (=> b!2854866 (= e!1808428 (and tp!918103 tp!918101))))

(declare-fun b!2854863 () Bool)

(assert (=> b!2854863 (= e!1808428 tp_is_empty!14871)))

(declare-fun b!2854865 () Bool)

(declare-fun tp!918099 () Bool)

(assert (=> b!2854865 (= e!1808428 tp!918099)))

(declare-fun b!2854864 () Bool)

(declare-fun tp!918102 () Bool)

(declare-fun tp!918100 () Bool)

(assert (=> b!2854864 (= e!1808428 (and tp!918102 tp!918100))))

(assert (=> b!2854043 (= tp!917459 e!1808428)))

(assert (= (and b!2854043 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854863))

(assert (= (and b!2854043 ((_ is Concat!13888) (regTwo!17647 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854864))

(assert (= (and b!2854043 ((_ is Star!8567) (regTwo!17647 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854865))

(assert (= (and b!2854043 ((_ is Union!8567) (regTwo!17647 (regTwo!17646 (regTwo!17646 r!23423))))) b!2854866))

(declare-fun b!2854870 () Bool)

(declare-fun e!1808429 () Bool)

(declare-fun tp!918108 () Bool)

(declare-fun tp!918106 () Bool)

(assert (=> b!2854870 (= e!1808429 (and tp!918108 tp!918106))))

(declare-fun b!2854867 () Bool)

(assert (=> b!2854867 (= e!1808429 tp_is_empty!14871)))

(declare-fun b!2854869 () Bool)

(declare-fun tp!918104 () Bool)

(assert (=> b!2854869 (= e!1808429 tp!918104)))

(declare-fun b!2854868 () Bool)

(declare-fun tp!918107 () Bool)

(declare-fun tp!918105 () Bool)

(assert (=> b!2854868 (= e!1808429 (and tp!918107 tp!918105))))

(assert (=> b!2854034 (= tp!917447 e!1808429)))

(assert (= (and b!2854034 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17647 (reg!8896 r!23423))))) b!2854867))

(assert (= (and b!2854034 ((_ is Concat!13888) (reg!8896 (regTwo!17647 (reg!8896 r!23423))))) b!2854868))

(assert (= (and b!2854034 ((_ is Star!8567) (reg!8896 (regTwo!17647 (reg!8896 r!23423))))) b!2854869))

(assert (= (and b!2854034 ((_ is Union!8567) (reg!8896 (regTwo!17647 (reg!8896 r!23423))))) b!2854870))

(declare-fun b!2854874 () Bool)

(declare-fun e!1808430 () Bool)

(declare-fun tp!918113 () Bool)

(declare-fun tp!918111 () Bool)

(assert (=> b!2854874 (= e!1808430 (and tp!918113 tp!918111))))

(declare-fun b!2854871 () Bool)

(assert (=> b!2854871 (= e!1808430 tp_is_empty!14871)))

(declare-fun b!2854873 () Bool)

(declare-fun tp!918109 () Bool)

(assert (=> b!2854873 (= e!1808430 tp!918109)))

(declare-fun b!2854872 () Bool)

(declare-fun tp!918112 () Bool)

(declare-fun tp!918110 () Bool)

(assert (=> b!2854872 (= e!1808430 (and tp!918112 tp!918110))))

(assert (=> b!2854025 (= tp!917440 e!1808430)))

(assert (= (and b!2854025 ((_ is ElementMatch!8567) (regOne!17646 (reg!8896 (regOne!17647 r!23423))))) b!2854871))

(assert (= (and b!2854025 ((_ is Concat!13888) (regOne!17646 (reg!8896 (regOne!17647 r!23423))))) b!2854872))

(assert (= (and b!2854025 ((_ is Star!8567) (regOne!17646 (reg!8896 (regOne!17647 r!23423))))) b!2854873))

(assert (= (and b!2854025 ((_ is Union!8567) (regOne!17646 (reg!8896 (regOne!17647 r!23423))))) b!2854874))

(declare-fun b!2854878 () Bool)

(declare-fun e!1808431 () Bool)

(declare-fun tp!918118 () Bool)

(declare-fun tp!918116 () Bool)

(assert (=> b!2854878 (= e!1808431 (and tp!918118 tp!918116))))

(declare-fun b!2854875 () Bool)

(assert (=> b!2854875 (= e!1808431 tp_is_empty!14871)))

(declare-fun b!2854877 () Bool)

(declare-fun tp!918114 () Bool)

(assert (=> b!2854877 (= e!1808431 tp!918114)))

(declare-fun b!2854876 () Bool)

(declare-fun tp!918117 () Bool)

(declare-fun tp!918115 () Bool)

(assert (=> b!2854876 (= e!1808431 (and tp!918117 tp!918115))))

(assert (=> b!2854025 (= tp!917438 e!1808431)))

(assert (= (and b!2854025 ((_ is ElementMatch!8567) (regTwo!17646 (reg!8896 (regOne!17647 r!23423))))) b!2854875))

(assert (= (and b!2854025 ((_ is Concat!13888) (regTwo!17646 (reg!8896 (regOne!17647 r!23423))))) b!2854876))

(assert (= (and b!2854025 ((_ is Star!8567) (regTwo!17646 (reg!8896 (regOne!17647 r!23423))))) b!2854877))

(assert (= (and b!2854025 ((_ is Union!8567) (regTwo!17646 (reg!8896 (regOne!17647 r!23423))))) b!2854878))

(declare-fun b!2854882 () Bool)

(declare-fun e!1808432 () Bool)

(declare-fun tp!918123 () Bool)

(declare-fun tp!918121 () Bool)

(assert (=> b!2854882 (= e!1808432 (and tp!918123 tp!918121))))

(declare-fun b!2854879 () Bool)

(assert (=> b!2854879 (= e!1808432 tp_is_empty!14871)))

(declare-fun b!2854881 () Bool)

(declare-fun tp!918119 () Bool)

(assert (=> b!2854881 (= e!1808432 tp!918119)))

(declare-fun b!2854880 () Bool)

(declare-fun tp!918122 () Bool)

(declare-fun tp!918120 () Bool)

(assert (=> b!2854880 (= e!1808432 (and tp!918122 tp!918120))))

(assert (=> b!2854077 (= tp!917505 e!1808432)))

(assert (= (and b!2854077 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17647 (regOne!17646 r!23423))))) b!2854879))

(assert (= (and b!2854077 ((_ is Concat!13888) (regOne!17646 (regTwo!17647 (regOne!17646 r!23423))))) b!2854880))

(assert (= (and b!2854077 ((_ is Star!8567) (regOne!17646 (regTwo!17647 (regOne!17646 r!23423))))) b!2854881))

(assert (= (and b!2854077 ((_ is Union!8567) (regOne!17646 (regTwo!17647 (regOne!17646 r!23423))))) b!2854882))

(declare-fun b!2854886 () Bool)

(declare-fun e!1808433 () Bool)

(declare-fun tp!918128 () Bool)

(declare-fun tp!918126 () Bool)

(assert (=> b!2854886 (= e!1808433 (and tp!918128 tp!918126))))

(declare-fun b!2854883 () Bool)

(assert (=> b!2854883 (= e!1808433 tp_is_empty!14871)))

(declare-fun b!2854885 () Bool)

(declare-fun tp!918124 () Bool)

(assert (=> b!2854885 (= e!1808433 tp!918124)))

(declare-fun b!2854884 () Bool)

(declare-fun tp!918127 () Bool)

(declare-fun tp!918125 () Bool)

(assert (=> b!2854884 (= e!1808433 (and tp!918127 tp!918125))))

(assert (=> b!2854077 (= tp!917503 e!1808433)))

(assert (= (and b!2854077 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17647 (regOne!17646 r!23423))))) b!2854883))

(assert (= (and b!2854077 ((_ is Concat!13888) (regTwo!17646 (regTwo!17647 (regOne!17646 r!23423))))) b!2854884))

(assert (= (and b!2854077 ((_ is Star!8567) (regTwo!17646 (regTwo!17647 (regOne!17646 r!23423))))) b!2854885))

(assert (= (and b!2854077 ((_ is Union!8567) (regTwo!17646 (regTwo!17647 (regOne!17646 r!23423))))) b!2854886))

(declare-fun b!2854890 () Bool)

(declare-fun e!1808434 () Bool)

(declare-fun tp!918133 () Bool)

(declare-fun tp!918131 () Bool)

(assert (=> b!2854890 (= e!1808434 (and tp!918133 tp!918131))))

(declare-fun b!2854887 () Bool)

(assert (=> b!2854887 (= e!1808434 tp_is_empty!14871)))

(declare-fun b!2854889 () Bool)

(declare-fun tp!918129 () Bool)

(assert (=> b!2854889 (= e!1808434 tp!918129)))

(declare-fun b!2854888 () Bool)

(declare-fun tp!918132 () Bool)

(declare-fun tp!918130 () Bool)

(assert (=> b!2854888 (= e!1808434 (and tp!918132 tp!918130))))

(assert (=> b!2854027 (= tp!917441 e!1808434)))

(assert (= (and b!2854027 ((_ is ElementMatch!8567) (regOne!17647 (reg!8896 (regOne!17647 r!23423))))) b!2854887))

(assert (= (and b!2854027 ((_ is Concat!13888) (regOne!17647 (reg!8896 (regOne!17647 r!23423))))) b!2854888))

(assert (= (and b!2854027 ((_ is Star!8567) (regOne!17647 (reg!8896 (regOne!17647 r!23423))))) b!2854889))

(assert (= (and b!2854027 ((_ is Union!8567) (regOne!17647 (reg!8896 (regOne!17647 r!23423))))) b!2854890))

(declare-fun b!2854894 () Bool)

(declare-fun e!1808435 () Bool)

(declare-fun tp!918138 () Bool)

(declare-fun tp!918136 () Bool)

(assert (=> b!2854894 (= e!1808435 (and tp!918138 tp!918136))))

(declare-fun b!2854891 () Bool)

(assert (=> b!2854891 (= e!1808435 tp_is_empty!14871)))

(declare-fun b!2854893 () Bool)

(declare-fun tp!918134 () Bool)

(assert (=> b!2854893 (= e!1808435 tp!918134)))

(declare-fun b!2854892 () Bool)

(declare-fun tp!918137 () Bool)

(declare-fun tp!918135 () Bool)

(assert (=> b!2854892 (= e!1808435 (and tp!918137 tp!918135))))

(assert (=> b!2854027 (= tp!917439 e!1808435)))

(assert (= (and b!2854027 ((_ is ElementMatch!8567) (regTwo!17647 (reg!8896 (regOne!17647 r!23423))))) b!2854891))

(assert (= (and b!2854027 ((_ is Concat!13888) (regTwo!17647 (reg!8896 (regOne!17647 r!23423))))) b!2854892))

(assert (= (and b!2854027 ((_ is Star!8567) (regTwo!17647 (reg!8896 (regOne!17647 r!23423))))) b!2854893))

(assert (= (and b!2854027 ((_ is Union!8567) (regTwo!17647 (reg!8896 (regOne!17647 r!23423))))) b!2854894))

(declare-fun b!2854898 () Bool)

(declare-fun e!1808436 () Bool)

(declare-fun tp!918143 () Bool)

(declare-fun tp!918141 () Bool)

(assert (=> b!2854898 (= e!1808436 (and tp!918143 tp!918141))))

(declare-fun b!2854895 () Bool)

(assert (=> b!2854895 (= e!1808436 tp_is_empty!14871)))

(declare-fun b!2854897 () Bool)

(declare-fun tp!918139 () Bool)

(assert (=> b!2854897 (= e!1808436 tp!918139)))

(declare-fun b!2854896 () Bool)

(declare-fun tp!918142 () Bool)

(declare-fun tp!918140 () Bool)

(assert (=> b!2854896 (= e!1808436 (and tp!918142 tp!918140))))

(assert (=> b!2854000 (= tp!917409 e!1808436)))

(assert (= (and b!2854000 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17646 (regTwo!17647 r!23423))))) b!2854895))

(assert (= (and b!2854000 ((_ is Concat!13888) (regOne!17646 (regOne!17646 (regTwo!17647 r!23423))))) b!2854896))

(assert (= (and b!2854000 ((_ is Star!8567) (regOne!17646 (regOne!17646 (regTwo!17647 r!23423))))) b!2854897))

(assert (= (and b!2854000 ((_ is Union!8567) (regOne!17646 (regOne!17646 (regTwo!17647 r!23423))))) b!2854898))

(declare-fun b!2854902 () Bool)

(declare-fun e!1808437 () Bool)

(declare-fun tp!918148 () Bool)

(declare-fun tp!918146 () Bool)

(assert (=> b!2854902 (= e!1808437 (and tp!918148 tp!918146))))

(declare-fun b!2854899 () Bool)

(assert (=> b!2854899 (= e!1808437 tp_is_empty!14871)))

(declare-fun b!2854901 () Bool)

(declare-fun tp!918144 () Bool)

(assert (=> b!2854901 (= e!1808437 tp!918144)))

(declare-fun b!2854900 () Bool)

(declare-fun tp!918147 () Bool)

(declare-fun tp!918145 () Bool)

(assert (=> b!2854900 (= e!1808437 (and tp!918147 tp!918145))))

(assert (=> b!2854000 (= tp!917407 e!1808437)))

(assert (= (and b!2854000 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17646 (regTwo!17647 r!23423))))) b!2854899))

(assert (= (and b!2854000 ((_ is Concat!13888) (regTwo!17646 (regOne!17646 (regTwo!17647 r!23423))))) b!2854900))

(assert (= (and b!2854000 ((_ is Star!8567) (regTwo!17646 (regOne!17646 (regTwo!17647 r!23423))))) b!2854901))

(assert (= (and b!2854000 ((_ is Union!8567) (regTwo!17646 (regOne!17646 (regTwo!17647 r!23423))))) b!2854902))

(declare-fun b!2854906 () Bool)

(declare-fun e!1808438 () Bool)

(declare-fun tp!918153 () Bool)

(declare-fun tp!918151 () Bool)

(assert (=> b!2854906 (= e!1808438 (and tp!918153 tp!918151))))

(declare-fun b!2854903 () Bool)

(assert (=> b!2854903 (= e!1808438 tp_is_empty!14871)))

(declare-fun b!2854905 () Bool)

(declare-fun tp!918149 () Bool)

(assert (=> b!2854905 (= e!1808438 tp!918149)))

(declare-fun b!2854904 () Bool)

(declare-fun tp!918152 () Bool)

(declare-fun tp!918150 () Bool)

(assert (=> b!2854904 (= e!1808438 (and tp!918152 tp!918150))))

(assert (=> b!2854002 (= tp!917410 e!1808438)))

(assert (= (and b!2854002 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17646 (regTwo!17647 r!23423))))) b!2854903))

(assert (= (and b!2854002 ((_ is Concat!13888) (regOne!17647 (regOne!17646 (regTwo!17647 r!23423))))) b!2854904))

(assert (= (and b!2854002 ((_ is Star!8567) (regOne!17647 (regOne!17646 (regTwo!17647 r!23423))))) b!2854905))

(assert (= (and b!2854002 ((_ is Union!8567) (regOne!17647 (regOne!17646 (regTwo!17647 r!23423))))) b!2854906))

(declare-fun b!2854910 () Bool)

(declare-fun e!1808439 () Bool)

(declare-fun tp!918158 () Bool)

(declare-fun tp!918156 () Bool)

(assert (=> b!2854910 (= e!1808439 (and tp!918158 tp!918156))))

(declare-fun b!2854907 () Bool)

(assert (=> b!2854907 (= e!1808439 tp_is_empty!14871)))

(declare-fun b!2854909 () Bool)

(declare-fun tp!918154 () Bool)

(assert (=> b!2854909 (= e!1808439 tp!918154)))

(declare-fun b!2854908 () Bool)

(declare-fun tp!918157 () Bool)

(declare-fun tp!918155 () Bool)

(assert (=> b!2854908 (= e!1808439 (and tp!918157 tp!918155))))

(assert (=> b!2854002 (= tp!917408 e!1808439)))

(assert (= (and b!2854002 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17646 (regTwo!17647 r!23423))))) b!2854907))

(assert (= (and b!2854002 ((_ is Concat!13888) (regTwo!17647 (regOne!17646 (regTwo!17647 r!23423))))) b!2854908))

(assert (= (and b!2854002 ((_ is Star!8567) (regTwo!17647 (regOne!17646 (regTwo!17647 r!23423))))) b!2854909))

(assert (= (and b!2854002 ((_ is Union!8567) (regTwo!17647 (regOne!17646 (regTwo!17647 r!23423))))) b!2854910))

(declare-fun b!2854914 () Bool)

(declare-fun e!1808440 () Bool)

(declare-fun tp!918163 () Bool)

(declare-fun tp!918161 () Bool)

(assert (=> b!2854914 (= e!1808440 (and tp!918163 tp!918161))))

(declare-fun b!2854911 () Bool)

(assert (=> b!2854911 (= e!1808440 tp_is_empty!14871)))

(declare-fun b!2854913 () Bool)

(declare-fun tp!918159 () Bool)

(assert (=> b!2854913 (= e!1808440 tp!918159)))

(declare-fun b!2854912 () Bool)

(declare-fun tp!918162 () Bool)

(declare-fun tp!918160 () Bool)

(assert (=> b!2854912 (= e!1808440 (and tp!918162 tp!918160))))

(assert (=> b!2853993 (= tp!917396 e!1808440)))

(assert (= (and b!2853993 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17646 (regOne!17647 r!23423))))) b!2854911))

(assert (= (and b!2853993 ((_ is Concat!13888) (reg!8896 (regTwo!17646 (regOne!17647 r!23423))))) b!2854912))

(assert (= (and b!2853993 ((_ is Star!8567) (reg!8896 (regTwo!17646 (regOne!17647 r!23423))))) b!2854913))

(assert (= (and b!2853993 ((_ is Union!8567) (reg!8896 (regTwo!17646 (regOne!17647 r!23423))))) b!2854914))

(declare-fun b!2854918 () Bool)

(declare-fun e!1808441 () Bool)

(declare-fun tp!918168 () Bool)

(declare-fun tp!918166 () Bool)

(assert (=> b!2854918 (= e!1808441 (and tp!918168 tp!918166))))

(declare-fun b!2854915 () Bool)

(assert (=> b!2854915 (= e!1808441 tp_is_empty!14871)))

(declare-fun b!2854917 () Bool)

(declare-fun tp!918164 () Bool)

(assert (=> b!2854917 (= e!1808441 tp!918164)))

(declare-fun b!2854916 () Bool)

(declare-fun tp!918167 () Bool)

(declare-fun tp!918165 () Bool)

(assert (=> b!2854916 (= e!1808441 (and tp!918167 tp!918165))))

(assert (=> b!2854018 (= tp!917427 e!1808441)))

(assert (= (and b!2854018 ((_ is ElementMatch!8567) (reg!8896 (regOne!17646 (regOne!17646 r!23423))))) b!2854915))

(assert (= (and b!2854018 ((_ is Concat!13888) (reg!8896 (regOne!17646 (regOne!17646 r!23423))))) b!2854916))

(assert (= (and b!2854018 ((_ is Star!8567) (reg!8896 (regOne!17646 (regOne!17646 r!23423))))) b!2854917))

(assert (= (and b!2854018 ((_ is Union!8567) (reg!8896 (regOne!17646 (regOne!17646 r!23423))))) b!2854918))

(declare-fun b!2854922 () Bool)

(declare-fun e!1808442 () Bool)

(declare-fun tp!918173 () Bool)

(declare-fun tp!918171 () Bool)

(assert (=> b!2854922 (= e!1808442 (and tp!918173 tp!918171))))

(declare-fun b!2854919 () Bool)

(assert (=> b!2854919 (= e!1808442 tp_is_empty!14871)))

(declare-fun b!2854921 () Bool)

(declare-fun tp!918169 () Bool)

(assert (=> b!2854921 (= e!1808442 tp!918169)))

(declare-fun b!2854920 () Bool)

(declare-fun tp!918172 () Bool)

(declare-fun tp!918170 () Bool)

(assert (=> b!2854920 (= e!1808442 (and tp!918172 tp!918170))))

(assert (=> b!2854009 (= tp!917420 e!1808442)))

(assert (= (and b!2854009 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17647 (regTwo!17647 r!23423))))) b!2854919))

(assert (= (and b!2854009 ((_ is Concat!13888) (regOne!17646 (regOne!17647 (regTwo!17647 r!23423))))) b!2854920))

(assert (= (and b!2854009 ((_ is Star!8567) (regOne!17646 (regOne!17647 (regTwo!17647 r!23423))))) b!2854921))

(assert (= (and b!2854009 ((_ is Union!8567) (regOne!17646 (regOne!17647 (regTwo!17647 r!23423))))) b!2854922))

(declare-fun b!2854926 () Bool)

(declare-fun e!1808443 () Bool)

(declare-fun tp!918178 () Bool)

(declare-fun tp!918176 () Bool)

(assert (=> b!2854926 (= e!1808443 (and tp!918178 tp!918176))))

(declare-fun b!2854923 () Bool)

(assert (=> b!2854923 (= e!1808443 tp_is_empty!14871)))

(declare-fun b!2854925 () Bool)

(declare-fun tp!918174 () Bool)

(assert (=> b!2854925 (= e!1808443 tp!918174)))

(declare-fun b!2854924 () Bool)

(declare-fun tp!918177 () Bool)

(declare-fun tp!918175 () Bool)

(assert (=> b!2854924 (= e!1808443 (and tp!918177 tp!918175))))

(assert (=> b!2854009 (= tp!917418 e!1808443)))

(assert (= (and b!2854009 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17647 (regTwo!17647 r!23423))))) b!2854923))

(assert (= (and b!2854009 ((_ is Concat!13888) (regTwo!17646 (regOne!17647 (regTwo!17647 r!23423))))) b!2854924))

(assert (= (and b!2854009 ((_ is Star!8567) (regTwo!17646 (regOne!17647 (regTwo!17647 r!23423))))) b!2854925))

(assert (= (and b!2854009 ((_ is Union!8567) (regTwo!17646 (regOne!17647 (regTwo!17647 r!23423))))) b!2854926))

(declare-fun b!2854930 () Bool)

(declare-fun e!1808444 () Bool)

(declare-fun tp!918183 () Bool)

(declare-fun tp!918181 () Bool)

(assert (=> b!2854930 (= e!1808444 (and tp!918183 tp!918181))))

(declare-fun b!2854927 () Bool)

(assert (=> b!2854927 (= e!1808444 tp_is_empty!14871)))

(declare-fun b!2854929 () Bool)

(declare-fun tp!918179 () Bool)

(assert (=> b!2854929 (= e!1808444 tp!918179)))

(declare-fun b!2854928 () Bool)

(declare-fun tp!918182 () Bool)

(declare-fun tp!918180 () Bool)

(assert (=> b!2854928 (= e!1808444 (and tp!918182 tp!918180))))

(assert (=> b!2854070 (= tp!917492 e!1808444)))

(assert (= (and b!2854070 ((_ is ElementMatch!8567) (reg!8896 (reg!8896 (regTwo!17646 r!23423))))) b!2854927))

(assert (= (and b!2854070 ((_ is Concat!13888) (reg!8896 (reg!8896 (regTwo!17646 r!23423))))) b!2854928))

(assert (= (and b!2854070 ((_ is Star!8567) (reg!8896 (reg!8896 (regTwo!17646 r!23423))))) b!2854929))

(assert (= (and b!2854070 ((_ is Union!8567) (reg!8896 (reg!8896 (regTwo!17646 r!23423))))) b!2854930))

(declare-fun b!2854934 () Bool)

(declare-fun e!1808445 () Bool)

(declare-fun tp!918188 () Bool)

(declare-fun tp!918186 () Bool)

(assert (=> b!2854934 (= e!1808445 (and tp!918188 tp!918186))))

(declare-fun b!2854931 () Bool)

(assert (=> b!2854931 (= e!1808445 tp_is_empty!14871)))

(declare-fun b!2854933 () Bool)

(declare-fun tp!918184 () Bool)

(assert (=> b!2854933 (= e!1808445 tp!918184)))

(declare-fun b!2854932 () Bool)

(declare-fun tp!918187 () Bool)

(declare-fun tp!918185 () Bool)

(assert (=> b!2854932 (= e!1808445 (and tp!918187 tp!918185))))

(assert (=> b!2854061 (= tp!917485 e!1808445)))

(assert (= (and b!2854061 ((_ is ElementMatch!8567) (regOne!17646 (regOne!17647 (regOne!17647 r!23423))))) b!2854931))

(assert (= (and b!2854061 ((_ is Concat!13888) (regOne!17646 (regOne!17647 (regOne!17647 r!23423))))) b!2854932))

(assert (= (and b!2854061 ((_ is Star!8567) (regOne!17646 (regOne!17647 (regOne!17647 r!23423))))) b!2854933))

(assert (= (and b!2854061 ((_ is Union!8567) (regOne!17646 (regOne!17647 (regOne!17647 r!23423))))) b!2854934))

(declare-fun b!2854938 () Bool)

(declare-fun e!1808446 () Bool)

(declare-fun tp!918193 () Bool)

(declare-fun tp!918191 () Bool)

(assert (=> b!2854938 (= e!1808446 (and tp!918193 tp!918191))))

(declare-fun b!2854935 () Bool)

(assert (=> b!2854935 (= e!1808446 tp_is_empty!14871)))

(declare-fun b!2854937 () Bool)

(declare-fun tp!918189 () Bool)

(assert (=> b!2854937 (= e!1808446 tp!918189)))

(declare-fun b!2854936 () Bool)

(declare-fun tp!918192 () Bool)

(declare-fun tp!918190 () Bool)

(assert (=> b!2854936 (= e!1808446 (and tp!918192 tp!918190))))

(assert (=> b!2854061 (= tp!917483 e!1808446)))

(assert (= (and b!2854061 ((_ is ElementMatch!8567) (regTwo!17646 (regOne!17647 (regOne!17647 r!23423))))) b!2854935))

(assert (= (and b!2854061 ((_ is Concat!13888) (regTwo!17646 (regOne!17647 (regOne!17647 r!23423))))) b!2854936))

(assert (= (and b!2854061 ((_ is Star!8567) (regTwo!17646 (regOne!17647 (regOne!17647 r!23423))))) b!2854937))

(assert (= (and b!2854061 ((_ is Union!8567) (regTwo!17646 (regOne!17647 (regOne!17647 r!23423))))) b!2854938))

(declare-fun b!2854942 () Bool)

(declare-fun e!1808447 () Bool)

(declare-fun tp!918198 () Bool)

(declare-fun tp!918196 () Bool)

(assert (=> b!2854942 (= e!1808447 (and tp!918198 tp!918196))))

(declare-fun b!2854939 () Bool)

(assert (=> b!2854939 (= e!1808447 tp_is_empty!14871)))

(declare-fun b!2854941 () Bool)

(declare-fun tp!918194 () Bool)

(assert (=> b!2854941 (= e!1808447 tp!918194)))

(declare-fun b!2854940 () Bool)

(declare-fun tp!918197 () Bool)

(declare-fun tp!918195 () Bool)

(assert (=> b!2854940 (= e!1808447 (and tp!918197 tp!918195))))

(assert (=> b!2854011 (= tp!917421 e!1808447)))

(assert (= (and b!2854011 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17647 (regTwo!17647 r!23423))))) b!2854939))

(assert (= (and b!2854011 ((_ is Concat!13888) (regOne!17647 (regOne!17647 (regTwo!17647 r!23423))))) b!2854940))

(assert (= (and b!2854011 ((_ is Star!8567) (regOne!17647 (regOne!17647 (regTwo!17647 r!23423))))) b!2854941))

(assert (= (and b!2854011 ((_ is Union!8567) (regOne!17647 (regOne!17647 (regTwo!17647 r!23423))))) b!2854942))

(declare-fun b!2854946 () Bool)

(declare-fun e!1808448 () Bool)

(declare-fun tp!918203 () Bool)

(declare-fun tp!918201 () Bool)

(assert (=> b!2854946 (= e!1808448 (and tp!918203 tp!918201))))

(declare-fun b!2854943 () Bool)

(assert (=> b!2854943 (= e!1808448 tp_is_empty!14871)))

(declare-fun b!2854945 () Bool)

(declare-fun tp!918199 () Bool)

(assert (=> b!2854945 (= e!1808448 tp!918199)))

(declare-fun b!2854944 () Bool)

(declare-fun tp!918202 () Bool)

(declare-fun tp!918200 () Bool)

(assert (=> b!2854944 (= e!1808448 (and tp!918202 tp!918200))))

(assert (=> b!2854011 (= tp!917419 e!1808448)))

(assert (= (and b!2854011 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17647 (regTwo!17647 r!23423))))) b!2854943))

(assert (= (and b!2854011 ((_ is Concat!13888) (regTwo!17647 (regOne!17647 (regTwo!17647 r!23423))))) b!2854944))

(assert (= (and b!2854011 ((_ is Star!8567) (regTwo!17647 (regOne!17647 (regTwo!17647 r!23423))))) b!2854945))

(assert (= (and b!2854011 ((_ is Union!8567) (regTwo!17647 (regOne!17647 (regTwo!17647 r!23423))))) b!2854946))

(declare-fun b!2854950 () Bool)

(declare-fun e!1808449 () Bool)

(declare-fun tp!918208 () Bool)

(declare-fun tp!918206 () Bool)

(assert (=> b!2854950 (= e!1808449 (and tp!918208 tp!918206))))

(declare-fun b!2854947 () Bool)

(assert (=> b!2854947 (= e!1808449 tp_is_empty!14871)))

(declare-fun b!2854949 () Bool)

(declare-fun tp!918204 () Bool)

(assert (=> b!2854949 (= e!1808449 tp!918204)))

(declare-fun b!2854948 () Bool)

(declare-fun tp!918207 () Bool)

(declare-fun tp!918205 () Bool)

(assert (=> b!2854948 (= e!1808449 (and tp!918207 tp!918205))))

(assert (=> b!2853984 (= tp!917389 e!1808449)))

(assert (= (and b!2853984 ((_ is ElementMatch!8567) (regOne!17646 (regTwo!17646 (reg!8896 r!23423))))) b!2854947))

(assert (= (and b!2853984 ((_ is Concat!13888) (regOne!17646 (regTwo!17646 (reg!8896 r!23423))))) b!2854948))

(assert (= (and b!2853984 ((_ is Star!8567) (regOne!17646 (regTwo!17646 (reg!8896 r!23423))))) b!2854949))

(assert (= (and b!2853984 ((_ is Union!8567) (regOne!17646 (regTwo!17646 (reg!8896 r!23423))))) b!2854950))

(declare-fun b!2854954 () Bool)

(declare-fun e!1808450 () Bool)

(declare-fun tp!918213 () Bool)

(declare-fun tp!918211 () Bool)

(assert (=> b!2854954 (= e!1808450 (and tp!918213 tp!918211))))

(declare-fun b!2854951 () Bool)

(assert (=> b!2854951 (= e!1808450 tp_is_empty!14871)))

(declare-fun b!2854953 () Bool)

(declare-fun tp!918209 () Bool)

(assert (=> b!2854953 (= e!1808450 tp!918209)))

(declare-fun b!2854952 () Bool)

(declare-fun tp!918212 () Bool)

(declare-fun tp!918210 () Bool)

(assert (=> b!2854952 (= e!1808450 (and tp!918212 tp!918210))))

(assert (=> b!2853984 (= tp!917387 e!1808450)))

(assert (= (and b!2853984 ((_ is ElementMatch!8567) (regTwo!17646 (regTwo!17646 (reg!8896 r!23423))))) b!2854951))

(assert (= (and b!2853984 ((_ is Concat!13888) (regTwo!17646 (regTwo!17646 (reg!8896 r!23423))))) b!2854952))

(assert (= (and b!2853984 ((_ is Star!8567) (regTwo!17646 (regTwo!17646 (reg!8896 r!23423))))) b!2854953))

(assert (= (and b!2853984 ((_ is Union!8567) (regTwo!17646 (regTwo!17646 (reg!8896 r!23423))))) b!2854954))

(declare-fun b!2854958 () Bool)

(declare-fun e!1808451 () Bool)

(declare-fun tp!918218 () Bool)

(declare-fun tp!918216 () Bool)

(assert (=> b!2854958 (= e!1808451 (and tp!918218 tp!918216))))

(declare-fun b!2854955 () Bool)

(assert (=> b!2854955 (= e!1808451 tp_is_empty!14871)))

(declare-fun b!2854957 () Bool)

(declare-fun tp!918214 () Bool)

(assert (=> b!2854957 (= e!1808451 tp!918214)))

(declare-fun b!2854956 () Bool)

(declare-fun tp!918217 () Bool)

(declare-fun tp!918215 () Bool)

(assert (=> b!2854956 (= e!1808451 (and tp!918217 tp!918215))))

(assert (=> b!2854079 (= tp!917506 e!1808451)))

(assert (= (and b!2854079 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17647 (regOne!17646 r!23423))))) b!2854955))

(assert (= (and b!2854079 ((_ is Concat!13888) (regOne!17647 (regTwo!17647 (regOne!17646 r!23423))))) b!2854956))

(assert (= (and b!2854079 ((_ is Star!8567) (regOne!17647 (regTwo!17647 (regOne!17646 r!23423))))) b!2854957))

(assert (= (and b!2854079 ((_ is Union!8567) (regOne!17647 (regTwo!17647 (regOne!17646 r!23423))))) b!2854958))

(declare-fun b!2854962 () Bool)

(declare-fun e!1808452 () Bool)

(declare-fun tp!918223 () Bool)

(declare-fun tp!918221 () Bool)

(assert (=> b!2854962 (= e!1808452 (and tp!918223 tp!918221))))

(declare-fun b!2854959 () Bool)

(assert (=> b!2854959 (= e!1808452 tp_is_empty!14871)))

(declare-fun b!2854961 () Bool)

(declare-fun tp!918219 () Bool)

(assert (=> b!2854961 (= e!1808452 tp!918219)))

(declare-fun b!2854960 () Bool)

(declare-fun tp!918222 () Bool)

(declare-fun tp!918220 () Bool)

(assert (=> b!2854960 (= e!1808452 (and tp!918222 tp!918220))))

(assert (=> b!2854079 (= tp!917504 e!1808452)))

(assert (= (and b!2854079 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17647 (regOne!17646 r!23423))))) b!2854959))

(assert (= (and b!2854079 ((_ is Concat!13888) (regTwo!17647 (regTwo!17647 (regOne!17646 r!23423))))) b!2854960))

(assert (= (and b!2854079 ((_ is Star!8567) (regTwo!17647 (regTwo!17647 (regOne!17646 r!23423))))) b!2854961))

(assert (= (and b!2854079 ((_ is Union!8567) (regTwo!17647 (regTwo!17647 (regOne!17646 r!23423))))) b!2854962))

(declare-fun b!2854966 () Bool)

(declare-fun e!1808453 () Bool)

(declare-fun tp!918228 () Bool)

(declare-fun tp!918226 () Bool)

(assert (=> b!2854966 (= e!1808453 (and tp!918228 tp!918226))))

(declare-fun b!2854963 () Bool)

(assert (=> b!2854963 (= e!1808453 tp_is_empty!14871)))

(declare-fun b!2854965 () Bool)

(declare-fun tp!918224 () Bool)

(assert (=> b!2854965 (= e!1808453 tp!918224)))

(declare-fun b!2854964 () Bool)

(declare-fun tp!918227 () Bool)

(declare-fun tp!918225 () Bool)

(assert (=> b!2854964 (= e!1808453 (and tp!918227 tp!918225))))

(assert (=> b!2853986 (= tp!917390 e!1808453)))

(assert (= (and b!2853986 ((_ is ElementMatch!8567) (regOne!17647 (regTwo!17646 (reg!8896 r!23423))))) b!2854963))

(assert (= (and b!2853986 ((_ is Concat!13888) (regOne!17647 (regTwo!17646 (reg!8896 r!23423))))) b!2854964))

(assert (= (and b!2853986 ((_ is Star!8567) (regOne!17647 (regTwo!17646 (reg!8896 r!23423))))) b!2854965))

(assert (= (and b!2853986 ((_ is Union!8567) (regOne!17647 (regTwo!17646 (reg!8896 r!23423))))) b!2854966))

(declare-fun b!2854970 () Bool)

(declare-fun e!1808454 () Bool)

(declare-fun tp!918233 () Bool)

(declare-fun tp!918231 () Bool)

(assert (=> b!2854970 (= e!1808454 (and tp!918233 tp!918231))))

(declare-fun b!2854967 () Bool)

(assert (=> b!2854967 (= e!1808454 tp_is_empty!14871)))

(declare-fun b!2854969 () Bool)

(declare-fun tp!918229 () Bool)

(assert (=> b!2854969 (= e!1808454 tp!918229)))

(declare-fun b!2854968 () Bool)

(declare-fun tp!918232 () Bool)

(declare-fun tp!918230 () Bool)

(assert (=> b!2854968 (= e!1808454 (and tp!918232 tp!918230))))

(assert (=> b!2853986 (= tp!917388 e!1808454)))

(assert (= (and b!2853986 ((_ is ElementMatch!8567) (regTwo!17647 (regTwo!17646 (reg!8896 r!23423))))) b!2854967))

(assert (= (and b!2853986 ((_ is Concat!13888) (regTwo!17647 (regTwo!17646 (reg!8896 r!23423))))) b!2854968))

(assert (= (and b!2853986 ((_ is Star!8567) (regTwo!17647 (regTwo!17646 (reg!8896 r!23423))))) b!2854969))

(assert (= (and b!2853986 ((_ is Union!8567) (regTwo!17647 (regTwo!17646 (reg!8896 r!23423))))) b!2854970))

(declare-fun b!2854974 () Bool)

(declare-fun e!1808455 () Bool)

(declare-fun tp!918238 () Bool)

(declare-fun tp!918236 () Bool)

(assert (=> b!2854974 (= e!1808455 (and tp!918238 tp!918236))))

(declare-fun b!2854971 () Bool)

(assert (=> b!2854971 (= e!1808455 tp_is_empty!14871)))

(declare-fun b!2854973 () Bool)

(declare-fun tp!918234 () Bool)

(assert (=> b!2854973 (= e!1808455 tp!918234)))

(declare-fun b!2854972 () Bool)

(declare-fun tp!918237 () Bool)

(declare-fun tp!918235 () Bool)

(assert (=> b!2854972 (= e!1808455 (and tp!918237 tp!918235))))

(assert (=> b!2854054 (= tp!917472 e!1808455)))

(assert (= (and b!2854054 ((_ is ElementMatch!8567) (reg!8896 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854971))

(assert (= (and b!2854054 ((_ is Concat!13888) (reg!8896 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854972))

(assert (= (and b!2854054 ((_ is Star!8567) (reg!8896 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854973))

(assert (= (and b!2854054 ((_ is Union!8567) (reg!8896 (regTwo!17647 (regTwo!17646 r!23423))))) b!2854974))

(declare-fun b!2854978 () Bool)

(declare-fun e!1808456 () Bool)

(declare-fun tp!918243 () Bool)

(declare-fun tp!918241 () Bool)

(assert (=> b!2854978 (= e!1808456 (and tp!918243 tp!918241))))

(declare-fun b!2854975 () Bool)

(assert (=> b!2854975 (= e!1808456 tp_is_empty!14871)))

(declare-fun b!2854977 () Bool)

(declare-fun tp!918239 () Bool)

(assert (=> b!2854977 (= e!1808456 tp!918239)))

(declare-fun b!2854976 () Bool)

(declare-fun tp!918242 () Bool)

(declare-fun tp!918240 () Bool)

(assert (=> b!2854976 (= e!1808456 (and tp!918242 tp!918240))))

(assert (=> b!2854045 (= tp!917465 e!1808456)))

(assert (= (and b!2854045 ((_ is ElementMatch!8567) (regOne!17646 (reg!8896 (regTwo!17647 r!23423))))) b!2854975))

(assert (= (and b!2854045 ((_ is Concat!13888) (regOne!17646 (reg!8896 (regTwo!17647 r!23423))))) b!2854976))

(assert (= (and b!2854045 ((_ is Star!8567) (regOne!17646 (reg!8896 (regTwo!17647 r!23423))))) b!2854977))

(assert (= (and b!2854045 ((_ is Union!8567) (regOne!17646 (reg!8896 (regTwo!17647 r!23423))))) b!2854978))

(declare-fun b!2854982 () Bool)

(declare-fun e!1808457 () Bool)

(declare-fun tp!918248 () Bool)

(declare-fun tp!918246 () Bool)

(assert (=> b!2854982 (= e!1808457 (and tp!918248 tp!918246))))

(declare-fun b!2854979 () Bool)

(assert (=> b!2854979 (= e!1808457 tp_is_empty!14871)))

(declare-fun b!2854981 () Bool)

(declare-fun tp!918244 () Bool)

(assert (=> b!2854981 (= e!1808457 tp!918244)))

(declare-fun b!2854980 () Bool)

(declare-fun tp!918247 () Bool)

(declare-fun tp!918245 () Bool)

(assert (=> b!2854980 (= e!1808457 (and tp!918247 tp!918245))))

(assert (=> b!2854045 (= tp!917463 e!1808457)))

(assert (= (and b!2854045 ((_ is ElementMatch!8567) (regTwo!17646 (reg!8896 (regTwo!17647 r!23423))))) b!2854979))

(assert (= (and b!2854045 ((_ is Concat!13888) (regTwo!17646 (reg!8896 (regTwo!17647 r!23423))))) b!2854980))

(assert (= (and b!2854045 ((_ is Star!8567) (regTwo!17646 (reg!8896 (regTwo!17647 r!23423))))) b!2854981))

(assert (= (and b!2854045 ((_ is Union!8567) (regTwo!17646 (reg!8896 (regTwo!17647 r!23423))))) b!2854982))

(declare-fun b!2854986 () Bool)

(declare-fun e!1808458 () Bool)

(declare-fun tp!918253 () Bool)

(declare-fun tp!918251 () Bool)

(assert (=> b!2854986 (= e!1808458 (and tp!918253 tp!918251))))

(declare-fun b!2854983 () Bool)

(assert (=> b!2854983 (= e!1808458 tp_is_empty!14871)))

(declare-fun b!2854985 () Bool)

(declare-fun tp!918249 () Bool)

(assert (=> b!2854985 (= e!1808458 tp!918249)))

(declare-fun b!2854984 () Bool)

(declare-fun tp!918252 () Bool)

(declare-fun tp!918250 () Bool)

(assert (=> b!2854984 (= e!1808458 (and tp!918252 tp!918250))))

(assert (=> b!2854063 (= tp!917486 e!1808458)))

(assert (= (and b!2854063 ((_ is ElementMatch!8567) (regOne!17647 (regOne!17647 (regOne!17647 r!23423))))) b!2854983))

(assert (= (and b!2854063 ((_ is Concat!13888) (regOne!17647 (regOne!17647 (regOne!17647 r!23423))))) b!2854984))

(assert (= (and b!2854063 ((_ is Star!8567) (regOne!17647 (regOne!17647 (regOne!17647 r!23423))))) b!2854985))

(assert (= (and b!2854063 ((_ is Union!8567) (regOne!17647 (regOne!17647 (regOne!17647 r!23423))))) b!2854986))

(declare-fun b!2854990 () Bool)

(declare-fun e!1808459 () Bool)

(declare-fun tp!918258 () Bool)

(declare-fun tp!918256 () Bool)

(assert (=> b!2854990 (= e!1808459 (and tp!918258 tp!918256))))

(declare-fun b!2854987 () Bool)

(assert (=> b!2854987 (= e!1808459 tp_is_empty!14871)))

(declare-fun b!2854989 () Bool)

(declare-fun tp!918254 () Bool)

(assert (=> b!2854989 (= e!1808459 tp!918254)))

(declare-fun b!2854988 () Bool)

(declare-fun tp!918257 () Bool)

(declare-fun tp!918255 () Bool)

(assert (=> b!2854988 (= e!1808459 (and tp!918257 tp!918255))))

(assert (=> b!2854063 (= tp!917484 e!1808459)))

(assert (= (and b!2854063 ((_ is ElementMatch!8567) (regTwo!17647 (regOne!17647 (regOne!17647 r!23423))))) b!2854987))

(assert (= (and b!2854063 ((_ is Concat!13888) (regTwo!17647 (regOne!17647 (regOne!17647 r!23423))))) b!2854988))

(assert (= (and b!2854063 ((_ is Star!8567) (regTwo!17647 (regOne!17647 (regOne!17647 r!23423))))) b!2854989))

(assert (= (and b!2854063 ((_ is Union!8567) (regTwo!17647 (regOne!17647 (regOne!17647 r!23423))))) b!2854990))

(check-sat (not b!2854733) (not b!2854540) (not b!2854692) (not bm!183878) (not b!2854772) (not bm!183866) (not bm!183881) (not b!2854697) (not b!2854910) (not b!2854738) (not b!2854745) (not bm!183855) (not b!2854757) (not d!826359) (not b!2854324) (not b!2854741) (not bm!183844) (not b!2854817) (not b!2854706) (not b!2854610) (not b!2854710) (not b!2854917) (not b!2854825) (not b!2854613) (not b!2854732) (not b!2854944) (not b!2854491) (not d!826371) (not b!2854632) (not b!2854356) (not d!826327) (not b!2854508) (not b!2854495) (not b!2854784) (not b!2854937) (not b!2854596) (not b!2854926) (not b!2854949) (not b!2854470) (not d!826325) (not b!2854559) (not b!2854830) (not b!2854634) (not b!2854936) (not b!2854981) (not b!2854493) (not b!2854764) (not b!2854780) (not b!2854957) (not b!2854754) (not b!2854669) (not b!2854579) (not b!2854487) (not b!2854528) (not b!2854789) (not b!2854483) (not b!2854748) (not b!2854990) (not b!2854517) (not b!2854756) (not b!2854557) (not b!2854700) (not b!2854814) (not b!2854905) (not b!2854770) (not b!2854808) (not b!2854928) (not b!2854989) (not b!2854664) (not b!2854648) (not b!2854614) (not b!2854555) (not b!2854773) (not b!2854701) (not b!2854874) (not b!2854744) (not b!2854806) (not b!2854646) (not b!2854889) (not bm!183879) (not b!2854332) (not b!2854584) (not b!2854906) (not b!2854872) (not bm!183876) (not b!2854842) (not b!2854612) (not b!2854509) (not b!2854628) (not b!2854893) (not b!2854925) (not b!2854728) (not b!2854696) (not b!2854444) (not b!2854549) (not b!2854342) (not b!2854785) (not b!2854620) (not b!2854650) (not b!2854724) (not b!2854561) (not b!2854861) (not b!2854969) (not b!2854970) (not b!2854985) (not b!2854821) (not b!2854868) (not b!2854668) (not b!2854758) (not bm!183845) (not b!2854597) (not b!2854662) (not d!826329) (not b!2854777) (not b!2854507) (not b!2854572) (not bm!183846) (not b!2854583) (not b!2854953) (not b!2854513) (not d!826353) (not b!2854633) (not b!2854581) (not b!2854797) (not b!2854790) (not b!2854351) (not b!2854637) (not b!2854888) (not b!2854818) (not b!2854588) (not b!2854854) (not b!2854982) (not b!2854849) (not b!2854661) (not b!2854626) (not b!2854802) (not b!2854524) (not b!2854890) (not b!2854730) (not b!2854698) (not b!2854753) (not b!2854860) (not b!2854966) (not b!2854548) (not b!2854912) (not b!2854962) (not b!2854881) (not b!2854804) (not d!826347) (not b!2854442) (not bm!183849) (not b!2854813) (not b!2854314) (not b!2854913) (not b!2854580) (not b!2854642) (not b!2854752) (not b!2854736) (not b!2854672) (not b!2854865) (not b!2854809) (not b!2854678) (not b!2854776) (not b!2854873) (not b!2854618) (not b!2854364) (not b!2854822) (not b!2854894) (not b!2854653) (not b!2854674) (not b!2854900) (not bm!183868) (not b!2854323) (not b!2854609) (not b!2854563) (not b!2854344) (not b!2854812) (not b!2854654) (not d!826343) (not b!2854902) (not b!2854916) (not b!2854492) (not b!2854593) (not b!2854571) (not b!2854836) (not b!2854645) (not b!2854552) (not b!2854714) (not b!2854740) (not b!2854933) (not b!2854677) (not b!2854960) (not b!2854986) (not b!2854742) (not b!2854762) (not bm!183877) (not b!2854801) (not b!2854750) (not b!2854621) (not b!2854521) (not b!2854838) (not b!2854908) (not b!2854805) (not b!2854726) (not b!2854761) (not b!2854589) (not b!2854844) (not b!2854988) (not bm!183856) (not b!2854934) (not b!2854624) (not bm!183838) (not b!2854984) (not b!2854440) (not d!826323) (not bm!183884) (not b!2854862) (not b!2854682) (not b!2854709) (not b!2854529) (not b!2854665) (not b!2854544) (not b!2854841) (not b!2854630) (not b!2854834) (not b!2854884) (not b!2854617) (not b!2854864) (not bm!183839) (not b!2854543) (not b!2854488) (not b!2854608) (not b!2854684) (not b!2854837) (not bm!183865) (not b!2854725) (not b!2854922) (not bm!183864) (not b!2854601) (not b!2854625) tp_is_empty!14871 (not b!2854746) (not b!2854602) (not b!2854954) (not b!2854403) (not b!2854644) (not b!2854958) (not b!2854856) (not b!2854535) (not b!2854800) (not b!2854973) (not b!2854689) (not b!2854940) (not b!2854622) (not b!2854681) (not b!2854840) (not b!2854638) (not b!2854501) (not b!2854729) (not b!2854720) (not b!2854577) (not b!2854365) (not b!2854965) (not b!2854721) (not b!2854824) (not b!2854769) (not b!2854553) (not b!2854652) (not b!2854737) (not bm!183880) (not b!2854897) (not b!2854686) (not b!2854717) (not b!2854685) (not b!2854870) (not b!2854820) (not b!2854978) (not b!2854670) (not b!2854810) (not b!2854892) (not b!2854704) (not bm!183859) (not b!2854782) (not b!2854778) (not b!2854749) (not b!2854794) (not b!2854712) (not b!2854573) (not b!2854909) (not b!2854705) (not b!2854961) (not b!2854523) (not b!2854929) (not b!2854952) (not b!2854945) (not b!2854974) (not b!2854858) (not b!2854896) (not b!2854368) (not b!2854950) (not b!2854656) (not b!2854537) (not b!2854938) (not b!2854500) (not b!2854533) (not b!2854828) (not b!2854846) (not b!2854904) (not b!2854541) (not b!2854980) (not b!2854853) (not b!2854921) (not b!2854606) (not b!2854503) (not b!2854592) (not b!2854781) (not b!2854536) (not b!2854531) (not b!2854713) (not b!2854718) (not b!2854886) (not b!2854411) (not b!2854560) (not b!2854898) (not b!2854525) (not b!2854774) (not b!2854768) (not b!2854977) (not b!2854942) (not b!2854565) (not b!2854688) (not b!2854636) (not b!2854766) (not b!2854693) (not b!2854901) (not b!2854576) (not b!2854845) (not b!2854587) (not b!2854657) (not b!2854734) (not bm!183863) (not d!826379) (not b!2854792) (not b!2854575) (not b!2854499) (not b!2854556) (not b!2854649) (not b!2854629) (not b!2854569) (not b!2854676) (not b!2854722) (not b!2854920) (not b!2854716) (not bm!183852) (not b!2854702) (not b!2854340) (not b!2854918) (not bm!183871) (not b!2854760) (not b!2854972) (not b!2854660) (not b!2854666) (not b!2854932) (not b!2854852) (not b!2854284) (not b!2854545) (not b!2854551) (not b!2854833) (not b!2854512) (not b!2854658) (not b!2854877) (not b!2854519) (not b!2854976) (not b!2854454) (not b!2854527) (not bm!183850) (not b!2854600) (not b!2854786) (not bm!183860) (not bm!183869) (not b!2854599) (not b!2854496) (not b!2854604) (not b!2854564) (not b!2854616) (not b!2854829) (not b!2854765) (not bm!183882) (not b!2854567) (not b!2854497) (not b!2854585) (not b!2854788) (not b!2854504) (not b!2854826) (not b!2854869) (not b!2854516) (not b!2854924) (not b!2854796) (not b!2854694) (not b!2854539) (not b!2854591) (not b!2854848) (not b!2854885) (not b!2854876) (not b!2854708) (not b!2854914) (not b!2854793) (not bm!183853) (not b!2854515) (not b!2854673) (not b!2854956) (not b!2854640) (not b!2854680) (not b!2854402) (not b!2854878) (not b!2854882) (not b!2854547) (not b!2854866) (not b!2854511) (not d!826345) (not b!2854641) (not b!2854857) (not b!2854941) (not b!2854398) (not b!2854946) (not b!2854595) (not b!2854850) (not b!2854385) (not b!2854832) (not b!2854532) (not b!2854968) (not b!2854568) (not b!2854505) (not b!2854930) (not b!2854690) (not d!826321) (not b!2854816) (not b!2854520) (not b!2854964) (not b!2854948) (not b!2854605) (not b!2854798) (not b!2854880))
(check-sat)
