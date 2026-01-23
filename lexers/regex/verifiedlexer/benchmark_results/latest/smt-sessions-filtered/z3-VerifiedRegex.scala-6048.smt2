; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295820 () Bool)

(assert start!295820)

(declare-fun b!3137716 () Bool)

(declare-fun e!1957634 () Bool)

(declare-fun tp_is_empty!16857 () Bool)

(assert (=> b!3137716 (= e!1957634 tp_is_empty!16857)))

(declare-fun b!3137717 () Bool)

(declare-fun tp!982091 () Bool)

(assert (=> b!3137717 (= e!1957634 tp!982091)))

(declare-fun b!3137718 () Bool)

(declare-fun e!1957635 () Bool)

(declare-datatypes ((C!19480 0))(
  ( (C!19481 (val!11776 Int)) )
))
(declare-datatypes ((Regex!9647 0))(
  ( (ElementMatch!9647 (c!527365 C!19480)) (Concat!14968 (regOne!19806 Regex!9647) (regTwo!19806 Regex!9647)) (EmptyExpr!9647) (Star!9647 (reg!9976 Regex!9647)) (EmptyLang!9647) (Union!9647 (regOne!19807 Regex!9647) (regTwo!19807 Regex!9647)) )
))
(declare-fun r!17345 () Regex!9647)

(declare-fun validRegex!4380 (Regex!9647) Bool)

(assert (=> b!3137718 (= e!1957635 (not (validRegex!4380 (reg!9976 r!17345))))))

(declare-fun b!3137719 () Bool)

(declare-fun res!1282135 () Bool)

(assert (=> b!3137719 (=> (not res!1282135) (not e!1957635))))

(get-info :version)

(assert (=> b!3137719 (= res!1282135 (and (not ((_ is EmptyLang!9647) r!17345)) (not ((_ is ElementMatch!9647) r!17345)) (not ((_ is EmptyExpr!9647) r!17345)) ((_ is Star!9647) r!17345)))))

(declare-fun b!3137720 () Bool)

(declare-fun tp!982092 () Bool)

(declare-fun tp!982093 () Bool)

(assert (=> b!3137720 (= e!1957634 (and tp!982092 tp!982093))))

(declare-fun b!3137721 () Bool)

(declare-fun tp!982095 () Bool)

(declare-fun tp!982094 () Bool)

(assert (=> b!3137721 (= e!1957634 (and tp!982095 tp!982094))))

(declare-fun res!1282136 () Bool)

(assert (=> start!295820 (=> (not res!1282136) (not e!1957635))))

(assert (=> start!295820 (= res!1282136 (validRegex!4380 r!17345))))

(assert (=> start!295820 e!1957635))

(assert (=> start!295820 e!1957634))

(assert (= (and start!295820 res!1282136) b!3137719))

(assert (= (and b!3137719 res!1282135) b!3137718))

(assert (= (and start!295820 ((_ is ElementMatch!9647) r!17345)) b!3137716))

(assert (= (and start!295820 ((_ is Concat!14968) r!17345)) b!3137720))

(assert (= (and start!295820 ((_ is Star!9647) r!17345)) b!3137717))

(assert (= (and start!295820 ((_ is Union!9647) r!17345)) b!3137721))

(declare-fun m!3417233 () Bool)

(assert (=> b!3137718 m!3417233))

(declare-fun m!3417235 () Bool)

(assert (=> start!295820 m!3417235))

(check-sat (not b!3137718) tp_is_empty!16857 (not start!295820) (not b!3137721) (not b!3137717) (not b!3137720))
(check-sat)
(get-model)

(declare-fun b!3137776 () Bool)

(declare-fun e!1957681 () Bool)

(declare-fun e!1957680 () Bool)

(assert (=> b!3137776 (= e!1957681 e!1957680)))

(declare-fun res!1282170 () Bool)

(declare-fun nullable!3280 (Regex!9647) Bool)

(assert (=> b!3137776 (= res!1282170 (not (nullable!3280 (reg!9976 r!17345))))))

(assert (=> b!3137776 (=> (not res!1282170) (not e!1957680))))

(declare-fun bm!225038 () Bool)

(declare-fun call!225044 () Bool)

(declare-fun call!225045 () Bool)

(assert (=> bm!225038 (= call!225044 call!225045)))

(declare-fun b!3137777 () Bool)

(assert (=> b!3137777 (= e!1957680 call!225045)))

(declare-fun b!3137778 () Bool)

(declare-fun e!1957683 () Bool)

(assert (=> b!3137778 (= e!1957683 call!225044)))

(declare-fun bm!225039 () Bool)

(declare-fun c!527378 () Bool)

(declare-fun c!527379 () Bool)

(assert (=> bm!225039 (= call!225045 (validRegex!4380 (ite c!527379 (reg!9976 r!17345) (ite c!527378 (regOne!19807 r!17345) (regTwo!19806 r!17345)))))))

(declare-fun d!865509 () Bool)

(declare-fun res!1282171 () Bool)

(declare-fun e!1957678 () Bool)

(assert (=> d!865509 (=> res!1282171 e!1957678)))

(assert (=> d!865509 (= res!1282171 ((_ is ElementMatch!9647) r!17345))))

(assert (=> d!865509 (= (validRegex!4380 r!17345) e!1957678)))

(declare-fun b!3137779 () Bool)

(declare-fun res!1282168 () Bool)

(declare-fun e!1957684 () Bool)

(assert (=> b!3137779 (=> (not res!1282168) (not e!1957684))))

(assert (=> b!3137779 (= res!1282168 call!225044)))

(declare-fun e!1957682 () Bool)

(assert (=> b!3137779 (= e!1957682 e!1957684)))

(declare-fun b!3137780 () Bool)

(assert (=> b!3137780 (= e!1957678 e!1957681)))

(assert (=> b!3137780 (= c!527379 ((_ is Star!9647) r!17345))))

(declare-fun b!3137781 () Bool)

(declare-fun res!1282167 () Bool)

(declare-fun e!1957679 () Bool)

(assert (=> b!3137781 (=> res!1282167 e!1957679)))

(assert (=> b!3137781 (= res!1282167 (not ((_ is Concat!14968) r!17345)))))

(assert (=> b!3137781 (= e!1957682 e!1957679)))

(declare-fun b!3137782 () Bool)

(declare-fun call!225043 () Bool)

(assert (=> b!3137782 (= e!1957684 call!225043)))

(declare-fun b!3137783 () Bool)

(assert (=> b!3137783 (= e!1957679 e!1957683)))

(declare-fun res!1282169 () Bool)

(assert (=> b!3137783 (=> (not res!1282169) (not e!1957683))))

(assert (=> b!3137783 (= res!1282169 call!225043)))

(declare-fun b!3137784 () Bool)

(assert (=> b!3137784 (= e!1957681 e!1957682)))

(assert (=> b!3137784 (= c!527378 ((_ is Union!9647) r!17345))))

(declare-fun bm!225040 () Bool)

(assert (=> bm!225040 (= call!225043 (validRegex!4380 (ite c!527378 (regTwo!19807 r!17345) (regOne!19806 r!17345))))))

(assert (= (and d!865509 (not res!1282171)) b!3137780))

(assert (= (and b!3137780 c!527379) b!3137776))

(assert (= (and b!3137780 (not c!527379)) b!3137784))

(assert (= (and b!3137776 res!1282170) b!3137777))

(assert (= (and b!3137784 c!527378) b!3137779))

(assert (= (and b!3137784 (not c!527378)) b!3137781))

(assert (= (and b!3137779 res!1282168) b!3137782))

(assert (= (and b!3137781 (not res!1282167)) b!3137783))

(assert (= (and b!3137783 res!1282169) b!3137778))

(assert (= (or b!3137782 b!3137783) bm!225040))

(assert (= (or b!3137779 b!3137778) bm!225038))

(assert (= (or b!3137777 bm!225038) bm!225039))

(declare-fun m!3417249 () Bool)

(assert (=> b!3137776 m!3417249))

(declare-fun m!3417251 () Bool)

(assert (=> bm!225039 m!3417251))

(declare-fun m!3417253 () Bool)

(assert (=> bm!225040 m!3417253))

(assert (=> start!295820 d!865509))

(declare-fun b!3137795 () Bool)

(declare-fun e!1957690 () Bool)

(declare-fun e!1957689 () Bool)

(assert (=> b!3137795 (= e!1957690 e!1957689)))

(declare-fun res!1282175 () Bool)

(assert (=> b!3137795 (= res!1282175 (not (nullable!3280 (reg!9976 (reg!9976 r!17345)))))))

(assert (=> b!3137795 (=> (not res!1282175) (not e!1957689))))

(declare-fun bm!225041 () Bool)

(declare-fun call!225047 () Bool)

(declare-fun call!225048 () Bool)

(assert (=> bm!225041 (= call!225047 call!225048)))

(declare-fun b!3137796 () Bool)

(assert (=> b!3137796 (= e!1957689 call!225048)))

(declare-fun b!3137797 () Bool)

(declare-fun e!1957692 () Bool)

(assert (=> b!3137797 (= e!1957692 call!225047)))

(declare-fun c!527380 () Bool)

(declare-fun c!527381 () Bool)

(declare-fun bm!225042 () Bool)

(assert (=> bm!225042 (= call!225048 (validRegex!4380 (ite c!527381 (reg!9976 (reg!9976 r!17345)) (ite c!527380 (regOne!19807 (reg!9976 r!17345)) (regTwo!19806 (reg!9976 r!17345))))))))

(declare-fun d!865513 () Bool)

(declare-fun res!1282176 () Bool)

(declare-fun e!1957687 () Bool)

(assert (=> d!865513 (=> res!1282176 e!1957687)))

(assert (=> d!865513 (= res!1282176 ((_ is ElementMatch!9647) (reg!9976 r!17345)))))

(assert (=> d!865513 (= (validRegex!4380 (reg!9976 r!17345)) e!1957687)))

(declare-fun b!3137798 () Bool)

(declare-fun res!1282173 () Bool)

(declare-fun e!1957693 () Bool)

(assert (=> b!3137798 (=> (not res!1282173) (not e!1957693))))

(assert (=> b!3137798 (= res!1282173 call!225047)))

(declare-fun e!1957691 () Bool)

(assert (=> b!3137798 (= e!1957691 e!1957693)))

(declare-fun b!3137799 () Bool)

(assert (=> b!3137799 (= e!1957687 e!1957690)))

(assert (=> b!3137799 (= c!527381 ((_ is Star!9647) (reg!9976 r!17345)))))

(declare-fun b!3137800 () Bool)

(declare-fun res!1282172 () Bool)

(declare-fun e!1957688 () Bool)

(assert (=> b!3137800 (=> res!1282172 e!1957688)))

(assert (=> b!3137800 (= res!1282172 (not ((_ is Concat!14968) (reg!9976 r!17345))))))

(assert (=> b!3137800 (= e!1957691 e!1957688)))

(declare-fun b!3137801 () Bool)

(declare-fun call!225046 () Bool)

(assert (=> b!3137801 (= e!1957693 call!225046)))

(declare-fun b!3137802 () Bool)

(assert (=> b!3137802 (= e!1957688 e!1957692)))

(declare-fun res!1282174 () Bool)

(assert (=> b!3137802 (=> (not res!1282174) (not e!1957692))))

(assert (=> b!3137802 (= res!1282174 call!225046)))

(declare-fun b!3137803 () Bool)

(assert (=> b!3137803 (= e!1957690 e!1957691)))

(assert (=> b!3137803 (= c!527380 ((_ is Union!9647) (reg!9976 r!17345)))))

(declare-fun bm!225043 () Bool)

(assert (=> bm!225043 (= call!225046 (validRegex!4380 (ite c!527380 (regTwo!19807 (reg!9976 r!17345)) (regOne!19806 (reg!9976 r!17345)))))))

(assert (= (and d!865513 (not res!1282176)) b!3137799))

(assert (= (and b!3137799 c!527381) b!3137795))

(assert (= (and b!3137799 (not c!527381)) b!3137803))

(assert (= (and b!3137795 res!1282175) b!3137796))

(assert (= (and b!3137803 c!527380) b!3137798))

(assert (= (and b!3137803 (not c!527380)) b!3137800))

(assert (= (and b!3137798 res!1282173) b!3137801))

(assert (= (and b!3137800 (not res!1282172)) b!3137802))

(assert (= (and b!3137802 res!1282174) b!3137797))

(assert (= (or b!3137801 b!3137802) bm!225043))

(assert (= (or b!3137798 b!3137797) bm!225041))

(assert (= (or b!3137796 bm!225041) bm!225042))

(declare-fun m!3417255 () Bool)

(assert (=> b!3137795 m!3417255))

(declare-fun m!3417257 () Bool)

(assert (=> bm!225042 m!3417257))

(declare-fun m!3417259 () Bool)

(assert (=> bm!225043 m!3417259))

(assert (=> b!3137718 d!865513))

(declare-fun e!1957701 () Bool)

(assert (=> b!3137717 (= tp!982091 e!1957701)))

(declare-fun b!3137834 () Bool)

(assert (=> b!3137834 (= e!1957701 tp_is_empty!16857)))

(declare-fun b!3137835 () Bool)

(declare-fun tp!982144 () Bool)

(declare-fun tp!982141 () Bool)

(assert (=> b!3137835 (= e!1957701 (and tp!982144 tp!982141))))

(declare-fun b!3137837 () Bool)

(declare-fun tp!982142 () Bool)

(declare-fun tp!982145 () Bool)

(assert (=> b!3137837 (= e!1957701 (and tp!982142 tp!982145))))

(declare-fun b!3137836 () Bool)

(declare-fun tp!982143 () Bool)

(assert (=> b!3137836 (= e!1957701 tp!982143)))

(assert (= (and b!3137717 ((_ is ElementMatch!9647) (reg!9976 r!17345))) b!3137834))

(assert (= (and b!3137717 ((_ is Concat!14968) (reg!9976 r!17345))) b!3137835))

(assert (= (and b!3137717 ((_ is Star!9647) (reg!9976 r!17345))) b!3137836))

(assert (= (and b!3137717 ((_ is Union!9647) (reg!9976 r!17345))) b!3137837))

(declare-fun e!1957702 () Bool)

(assert (=> b!3137720 (= tp!982092 e!1957702)))

(declare-fun b!3137838 () Bool)

(assert (=> b!3137838 (= e!1957702 tp_is_empty!16857)))

(declare-fun b!3137839 () Bool)

(declare-fun tp!982149 () Bool)

(declare-fun tp!982146 () Bool)

(assert (=> b!3137839 (= e!1957702 (and tp!982149 tp!982146))))

(declare-fun b!3137841 () Bool)

(declare-fun tp!982147 () Bool)

(declare-fun tp!982150 () Bool)

(assert (=> b!3137841 (= e!1957702 (and tp!982147 tp!982150))))

(declare-fun b!3137840 () Bool)

(declare-fun tp!982148 () Bool)

(assert (=> b!3137840 (= e!1957702 tp!982148)))

(assert (= (and b!3137720 ((_ is ElementMatch!9647) (regOne!19806 r!17345))) b!3137838))

(assert (= (and b!3137720 ((_ is Concat!14968) (regOne!19806 r!17345))) b!3137839))

(assert (= (and b!3137720 ((_ is Star!9647) (regOne!19806 r!17345))) b!3137840))

(assert (= (and b!3137720 ((_ is Union!9647) (regOne!19806 r!17345))) b!3137841))

(declare-fun e!1957703 () Bool)

(assert (=> b!3137720 (= tp!982093 e!1957703)))

(declare-fun b!3137842 () Bool)

(assert (=> b!3137842 (= e!1957703 tp_is_empty!16857)))

(declare-fun b!3137843 () Bool)

(declare-fun tp!982154 () Bool)

(declare-fun tp!982151 () Bool)

(assert (=> b!3137843 (= e!1957703 (and tp!982154 tp!982151))))

(declare-fun b!3137845 () Bool)

(declare-fun tp!982152 () Bool)

(declare-fun tp!982155 () Bool)

(assert (=> b!3137845 (= e!1957703 (and tp!982152 tp!982155))))

(declare-fun b!3137844 () Bool)

(declare-fun tp!982153 () Bool)

(assert (=> b!3137844 (= e!1957703 tp!982153)))

(assert (= (and b!3137720 ((_ is ElementMatch!9647) (regTwo!19806 r!17345))) b!3137842))

(assert (= (and b!3137720 ((_ is Concat!14968) (regTwo!19806 r!17345))) b!3137843))

(assert (= (and b!3137720 ((_ is Star!9647) (regTwo!19806 r!17345))) b!3137844))

(assert (= (and b!3137720 ((_ is Union!9647) (regTwo!19806 r!17345))) b!3137845))

(declare-fun e!1957704 () Bool)

(assert (=> b!3137721 (= tp!982095 e!1957704)))

(declare-fun b!3137846 () Bool)

(assert (=> b!3137846 (= e!1957704 tp_is_empty!16857)))

(declare-fun b!3137847 () Bool)

(declare-fun tp!982159 () Bool)

(declare-fun tp!982156 () Bool)

(assert (=> b!3137847 (= e!1957704 (and tp!982159 tp!982156))))

(declare-fun b!3137849 () Bool)

(declare-fun tp!982157 () Bool)

(declare-fun tp!982160 () Bool)

(assert (=> b!3137849 (= e!1957704 (and tp!982157 tp!982160))))

(declare-fun b!3137848 () Bool)

(declare-fun tp!982158 () Bool)

(assert (=> b!3137848 (= e!1957704 tp!982158)))

(assert (= (and b!3137721 ((_ is ElementMatch!9647) (regOne!19807 r!17345))) b!3137846))

(assert (= (and b!3137721 ((_ is Concat!14968) (regOne!19807 r!17345))) b!3137847))

(assert (= (and b!3137721 ((_ is Star!9647) (regOne!19807 r!17345))) b!3137848))

(assert (= (and b!3137721 ((_ is Union!9647) (regOne!19807 r!17345))) b!3137849))

(declare-fun e!1957705 () Bool)

(assert (=> b!3137721 (= tp!982094 e!1957705)))

(declare-fun b!3137850 () Bool)

(assert (=> b!3137850 (= e!1957705 tp_is_empty!16857)))

(declare-fun b!3137851 () Bool)

(declare-fun tp!982164 () Bool)

(declare-fun tp!982161 () Bool)

(assert (=> b!3137851 (= e!1957705 (and tp!982164 tp!982161))))

(declare-fun b!3137853 () Bool)

(declare-fun tp!982162 () Bool)

(declare-fun tp!982165 () Bool)

(assert (=> b!3137853 (= e!1957705 (and tp!982162 tp!982165))))

(declare-fun b!3137852 () Bool)

(declare-fun tp!982163 () Bool)

(assert (=> b!3137852 (= e!1957705 tp!982163)))

(assert (= (and b!3137721 ((_ is ElementMatch!9647) (regTwo!19807 r!17345))) b!3137850))

(assert (= (and b!3137721 ((_ is Concat!14968) (regTwo!19807 r!17345))) b!3137851))

(assert (= (and b!3137721 ((_ is Star!9647) (regTwo!19807 r!17345))) b!3137852))

(assert (= (and b!3137721 ((_ is Union!9647) (regTwo!19807 r!17345))) b!3137853))

(check-sat (not b!3137849) (not b!3137844) (not b!3137836) tp_is_empty!16857 (not b!3137837) (not b!3137843) (not bm!225042) (not b!3137848) (not bm!225040) (not bm!225039) (not b!3137839) (not b!3137795) (not b!3137840) (not b!3137841) (not b!3137776) (not bm!225043) (not b!3137847) (not b!3137851) (not b!3137845) (not b!3137853) (not b!3137835) (not b!3137852))
(check-sat)
