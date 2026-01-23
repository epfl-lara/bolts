; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740634 () Bool)

(assert start!740634)

(declare-fun b!7782739 () Bool)

(declare-fun e!4610005 () Bool)

(declare-fun tp!2287873 () Bool)

(assert (=> b!7782739 (= e!4610005 tp!2287873)))

(declare-fun b!7782740 () Bool)

(declare-fun e!4610001 () Bool)

(declare-fun tp_is_empty!52037 () Bool)

(assert (=> b!7782740 (= e!4610001 tp_is_empty!52037)))

(declare-fun b!7782741 () Bool)

(declare-fun res!3102237 () Bool)

(declare-fun e!4610003 () Bool)

(assert (=> b!7782741 (=> (not res!3102237) (not e!4610003))))

(declare-datatypes ((C!42008 0))(
  ( (C!42009 (val!31444 Int)) )
))
(declare-datatypes ((Regex!20841 0))(
  ( (ElementMatch!20841 (c!1433914 C!42008)) (Concat!29686 (regOne!42194 Regex!20841) (regTwo!42194 Regex!20841)) (EmptyExpr!20841) (Star!20841 (reg!21170 Regex!20841)) (EmptyLang!20841) (Union!20841 (regOne!42195 Regex!20841) (regTwo!42195 Regex!20841)) )
))
(declare-fun r2!6217 () Regex!20841)

(declare-fun validRegex!11255 (Regex!20841) Bool)

(assert (=> b!7782741 (= res!3102237 (validRegex!11255 r2!6217))))

(declare-fun b!7782742 () Bool)

(declare-fun res!3102240 () Bool)

(declare-fun e!4610004 () Bool)

(assert (=> b!7782742 (=> (not res!3102240) (not e!4610004))))

(declare-datatypes ((List!73680 0))(
  ( (Nil!73556) (Cons!73556 (h!80004 C!42008) (t!388415 List!73680)) )
))
(declare-fun s!14292 () List!73680)

(get-info :version)

(assert (=> b!7782742 (= res!3102240 ((_ is Cons!73556) s!14292))))

(declare-fun b!7782743 () Bool)

(declare-fun lt!2673250 () Regex!20841)

(declare-fun matchR!10301 (Regex!20841 List!73680) Bool)

(declare-fun derivativeStep!6178 (Regex!20841 C!42008) Regex!20841)

(assert (=> b!7782743 (= e!4610004 (not (matchR!10301 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (t!388415 s!14292))))))

(declare-fun b!7782744 () Bool)

(assert (=> b!7782744 (= e!4610005 tp_is_empty!52037)))

(declare-fun b!7782745 () Bool)

(declare-fun tp!2287869 () Bool)

(declare-fun tp!2287868 () Bool)

(assert (=> b!7782745 (= e!4610005 (and tp!2287869 tp!2287868))))

(declare-fun b!7782746 () Bool)

(declare-fun tp!2287872 () Bool)

(declare-fun tp!2287875 () Bool)

(assert (=> b!7782746 (= e!4610005 (and tp!2287872 tp!2287875))))

(declare-fun b!7782747 () Bool)

(assert (=> b!7782747 (= e!4610003 e!4610004)))

(declare-fun res!3102239 () Bool)

(assert (=> b!7782747 (=> (not res!3102239) (not e!4610004))))

(assert (=> b!7782747 (= res!3102239 (matchR!10301 lt!2673250 s!14292))))

(declare-fun r1!6279 () Regex!20841)

(assert (=> b!7782747 (= lt!2673250 (Concat!29686 r1!6279 r2!6217))))

(declare-fun b!7782748 () Bool)

(declare-fun tp!2287876 () Bool)

(assert (=> b!7782748 (= e!4610001 tp!2287876)))

(declare-fun b!7782749 () Bool)

(declare-fun tp!2287867 () Bool)

(declare-fun tp!2287874 () Bool)

(assert (=> b!7782749 (= e!4610001 (and tp!2287867 tp!2287874))))

(declare-fun b!7782750 () Bool)

(declare-fun tp!2287870 () Bool)

(declare-fun tp!2287871 () Bool)

(assert (=> b!7782750 (= e!4610001 (and tp!2287870 tp!2287871))))

(declare-fun res!3102238 () Bool)

(assert (=> start!740634 (=> (not res!3102238) (not e!4610003))))

(assert (=> start!740634 (= res!3102238 (validRegex!11255 r1!6279))))

(assert (=> start!740634 e!4610003))

(assert (=> start!740634 e!4610001))

(assert (=> start!740634 e!4610005))

(declare-fun e!4610002 () Bool)

(assert (=> start!740634 e!4610002))

(declare-fun b!7782751 () Bool)

(declare-fun tp!2287877 () Bool)

(assert (=> b!7782751 (= e!4610002 (and tp_is_empty!52037 tp!2287877))))

(assert (= (and start!740634 res!3102238) b!7782741))

(assert (= (and b!7782741 res!3102237) b!7782747))

(assert (= (and b!7782747 res!3102239) b!7782742))

(assert (= (and b!7782742 res!3102240) b!7782743))

(assert (= (and start!740634 ((_ is ElementMatch!20841) r1!6279)) b!7782740))

(assert (= (and start!740634 ((_ is Concat!29686) r1!6279)) b!7782749))

(assert (= (and start!740634 ((_ is Star!20841) r1!6279)) b!7782748))

(assert (= (and start!740634 ((_ is Union!20841) r1!6279)) b!7782750))

(assert (= (and start!740634 ((_ is ElementMatch!20841) r2!6217)) b!7782744))

(assert (= (and start!740634 ((_ is Concat!29686) r2!6217)) b!7782746))

(assert (= (and start!740634 ((_ is Star!20841) r2!6217)) b!7782739))

(assert (= (and start!740634 ((_ is Union!20841) r2!6217)) b!7782745))

(assert (= (and start!740634 ((_ is Cons!73556) s!14292)) b!7782751))

(declare-fun m!8229800 () Bool)

(assert (=> b!7782741 m!8229800))

(declare-fun m!8229802 () Bool)

(assert (=> b!7782743 m!8229802))

(assert (=> b!7782743 m!8229802))

(declare-fun m!8229804 () Bool)

(assert (=> b!7782743 m!8229804))

(declare-fun m!8229806 () Bool)

(assert (=> b!7782747 m!8229806))

(declare-fun m!8229808 () Bool)

(assert (=> start!740634 m!8229808))

(check-sat (not b!7782751) (not b!7782750) (not b!7782745) (not b!7782741) (not b!7782739) (not b!7782748) (not b!7782743) (not b!7782746) (not b!7782747) (not start!740634) tp_is_empty!52037 (not b!7782749))
(check-sat)
(get-model)

(declare-fun bm!721326 () Bool)

(declare-fun call!721333 () Bool)

(declare-fun c!1433924 () Bool)

(assert (=> bm!721326 (= call!721333 (validRegex!11255 (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))))))

(declare-fun b!7782788 () Bool)

(declare-fun e!4610039 () Bool)

(assert (=> b!7782788 (= e!4610039 call!721333)))

(declare-fun b!7782789 () Bool)

(declare-fun e!4610035 () Bool)

(declare-fun e!4610040 () Bool)

(assert (=> b!7782789 (= e!4610035 e!4610040)))

(declare-fun res!3102261 () Bool)

(assert (=> b!7782789 (=> (not res!3102261) (not e!4610040))))

(declare-fun call!721332 () Bool)

(assert (=> b!7782789 (= res!3102261 call!721332)))

(declare-fun bm!721327 () Bool)

(declare-fun c!1433923 () Bool)

(declare-fun call!721331 () Bool)

(assert (=> bm!721327 (= call!721331 (validRegex!11255 (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))))))

(declare-fun b!7782790 () Bool)

(declare-fun e!4610034 () Bool)

(assert (=> b!7782790 (= e!4610034 call!721331)))

(declare-fun b!7782791 () Bool)

(declare-fun e!4610038 () Bool)

(declare-fun e!4610036 () Bool)

(assert (=> b!7782791 (= e!4610038 e!4610036)))

(assert (=> b!7782791 (= c!1433923 ((_ is Star!20841) r2!6217))))

(declare-fun b!7782793 () Bool)

(declare-fun e!4610037 () Bool)

(assert (=> b!7782793 (= e!4610036 e!4610037)))

(assert (=> b!7782793 (= c!1433924 ((_ is Union!20841) r2!6217))))

(declare-fun bm!721328 () Bool)

(assert (=> bm!721328 (= call!721332 call!721331)))

(declare-fun b!7782794 () Bool)

(declare-fun res!3102262 () Bool)

(assert (=> b!7782794 (=> (not res!3102262) (not e!4610039))))

(assert (=> b!7782794 (= res!3102262 call!721332)))

(assert (=> b!7782794 (= e!4610037 e!4610039)))

(declare-fun b!7782795 () Bool)

(declare-fun res!3102265 () Bool)

(assert (=> b!7782795 (=> res!3102265 e!4610035)))

(assert (=> b!7782795 (= res!3102265 (not ((_ is Concat!29686) r2!6217)))))

(assert (=> b!7782795 (= e!4610037 e!4610035)))

(declare-fun b!7782796 () Bool)

(assert (=> b!7782796 (= e!4610036 e!4610034)))

(declare-fun res!3102264 () Bool)

(declare-fun nullable!9224 (Regex!20841) Bool)

(assert (=> b!7782796 (= res!3102264 (not (nullable!9224 (reg!21170 r2!6217))))))

(assert (=> b!7782796 (=> (not res!3102264) (not e!4610034))))

(declare-fun b!7782792 () Bool)

(assert (=> b!7782792 (= e!4610040 call!721333)))

(declare-fun d!2345276 () Bool)

(declare-fun res!3102263 () Bool)

(assert (=> d!2345276 (=> res!3102263 e!4610038)))

(assert (=> d!2345276 (= res!3102263 ((_ is ElementMatch!20841) r2!6217))))

(assert (=> d!2345276 (= (validRegex!11255 r2!6217) e!4610038)))

(assert (= (and d!2345276 (not res!3102263)) b!7782791))

(assert (= (and b!7782791 c!1433923) b!7782796))

(assert (= (and b!7782791 (not c!1433923)) b!7782793))

(assert (= (and b!7782796 res!3102264) b!7782790))

(assert (= (and b!7782793 c!1433924) b!7782794))

(assert (= (and b!7782793 (not c!1433924)) b!7782795))

(assert (= (and b!7782794 res!3102262) b!7782788))

(assert (= (and b!7782795 (not res!3102265)) b!7782789))

(assert (= (and b!7782789 res!3102261) b!7782792))

(assert (= (or b!7782794 b!7782789) bm!721328))

(assert (= (or b!7782788 b!7782792) bm!721326))

(assert (= (or b!7782790 bm!721328) bm!721327))

(declare-fun m!8229810 () Bool)

(assert (=> bm!721326 m!8229810))

(declare-fun m!8229812 () Bool)

(assert (=> bm!721327 m!8229812))

(declare-fun m!8229814 () Bool)

(assert (=> b!7782796 m!8229814))

(assert (=> b!7782741 d!2345276))

(declare-fun b!7782862 () Bool)

(declare-fun e!4610077 () Bool)

(declare-fun e!4610081 () Bool)

(assert (=> b!7782862 (= e!4610077 e!4610081)))

(declare-fun c!1433939 () Bool)

(assert (=> b!7782862 (= c!1433939 ((_ is EmptyLang!20841) lt!2673250))))

(declare-fun b!7782863 () Bool)

(declare-fun res!3102306 () Bool)

(declare-fun e!4610078 () Bool)

(assert (=> b!7782863 (=> res!3102306 e!4610078)))

(declare-fun isEmpty!42192 (List!73680) Bool)

(declare-fun tail!15460 (List!73680) List!73680)

(assert (=> b!7782863 (= res!3102306 (not (isEmpty!42192 (tail!15460 s!14292))))))

(declare-fun b!7782864 () Bool)

(declare-fun res!3102307 () Bool)

(declare-fun e!4610080 () Bool)

(assert (=> b!7782864 (=> (not res!3102307) (not e!4610080))))

(declare-fun call!721341 () Bool)

(assert (=> b!7782864 (= res!3102307 (not call!721341))))

(declare-fun b!7782865 () Bool)

(declare-fun e!4610079 () Bool)

(assert (=> b!7782865 (= e!4610079 e!4610078)))

(declare-fun res!3102310 () Bool)

(assert (=> b!7782865 (=> res!3102310 e!4610078)))

(assert (=> b!7782865 (= res!3102310 call!721341)))

(declare-fun b!7782866 () Bool)

(declare-fun head!15919 (List!73680) C!42008)

(assert (=> b!7782866 (= e!4610078 (not (= (head!15919 s!14292) (c!1433914 lt!2673250))))))

(declare-fun b!7782867 () Bool)

(declare-fun res!3102309 () Bool)

(declare-fun e!4610082 () Bool)

(assert (=> b!7782867 (=> res!3102309 e!4610082)))

(assert (=> b!7782867 (= res!3102309 (not ((_ is ElementMatch!20841) lt!2673250)))))

(assert (=> b!7782867 (= e!4610081 e!4610082)))

(declare-fun b!7782868 () Bool)

(assert (=> b!7782868 (= e!4610080 (= (head!15919 s!14292) (c!1433914 lt!2673250)))))

(declare-fun b!7782870 () Bool)

(declare-fun res!3102303 () Bool)

(assert (=> b!7782870 (=> (not res!3102303) (not e!4610080))))

(assert (=> b!7782870 (= res!3102303 (isEmpty!42192 (tail!15460 s!14292)))))

(declare-fun b!7782871 () Bool)

(assert (=> b!7782871 (= e!4610082 e!4610079)))

(declare-fun res!3102308 () Bool)

(assert (=> b!7782871 (=> (not res!3102308) (not e!4610079))))

(declare-fun lt!2673255 () Bool)

(assert (=> b!7782871 (= res!3102308 (not lt!2673255))))

(declare-fun b!7782872 () Bool)

(declare-fun e!4610076 () Bool)

(assert (=> b!7782872 (= e!4610076 (nullable!9224 lt!2673250))))

(declare-fun bm!721336 () Bool)

(assert (=> bm!721336 (= call!721341 (isEmpty!42192 s!14292))))

(declare-fun b!7782873 () Bool)

(assert (=> b!7782873 (= e!4610076 (matchR!10301 (derivativeStep!6178 lt!2673250 (head!15919 s!14292)) (tail!15460 s!14292)))))

(declare-fun b!7782869 () Bool)

(assert (=> b!7782869 (= e!4610081 (not lt!2673255))))

(declare-fun d!2345280 () Bool)

(assert (=> d!2345280 e!4610077))

(declare-fun c!1433941 () Bool)

(assert (=> d!2345280 (= c!1433941 ((_ is EmptyExpr!20841) lt!2673250))))

(assert (=> d!2345280 (= lt!2673255 e!4610076)))

(declare-fun c!1433940 () Bool)

(assert (=> d!2345280 (= c!1433940 (isEmpty!42192 s!14292))))

(assert (=> d!2345280 (validRegex!11255 lt!2673250)))

(assert (=> d!2345280 (= (matchR!10301 lt!2673250 s!14292) lt!2673255)))

(declare-fun b!7782874 () Bool)

(assert (=> b!7782874 (= e!4610077 (= lt!2673255 call!721341))))

(declare-fun b!7782875 () Bool)

(declare-fun res!3102305 () Bool)

(assert (=> b!7782875 (=> res!3102305 e!4610082)))

(assert (=> b!7782875 (= res!3102305 e!4610080)))

(declare-fun res!3102304 () Bool)

(assert (=> b!7782875 (=> (not res!3102304) (not e!4610080))))

(assert (=> b!7782875 (= res!3102304 lt!2673255)))

(assert (= (and d!2345280 c!1433940) b!7782872))

(assert (= (and d!2345280 (not c!1433940)) b!7782873))

(assert (= (and d!2345280 c!1433941) b!7782874))

(assert (= (and d!2345280 (not c!1433941)) b!7782862))

(assert (= (and b!7782862 c!1433939) b!7782869))

(assert (= (and b!7782862 (not c!1433939)) b!7782867))

(assert (= (and b!7782867 (not res!3102309)) b!7782875))

(assert (= (and b!7782875 res!3102304) b!7782864))

(assert (= (and b!7782864 res!3102307) b!7782870))

(assert (= (and b!7782870 res!3102303) b!7782868))

(assert (= (and b!7782875 (not res!3102305)) b!7782871))

(assert (= (and b!7782871 res!3102308) b!7782865))

(assert (= (and b!7782865 (not res!3102310)) b!7782863))

(assert (= (and b!7782863 (not res!3102306)) b!7782866))

(assert (= (or b!7782874 b!7782864 b!7782865) bm!721336))

(declare-fun m!8229822 () Bool)

(assert (=> b!7782863 m!8229822))

(assert (=> b!7782863 m!8229822))

(declare-fun m!8229824 () Bool)

(assert (=> b!7782863 m!8229824))

(declare-fun m!8229826 () Bool)

(assert (=> b!7782872 m!8229826))

(assert (=> b!7782870 m!8229822))

(assert (=> b!7782870 m!8229822))

(assert (=> b!7782870 m!8229824))

(declare-fun m!8229828 () Bool)

(assert (=> bm!721336 m!8229828))

(declare-fun m!8229830 () Bool)

(assert (=> b!7782866 m!8229830))

(assert (=> d!2345280 m!8229828))

(declare-fun m!8229832 () Bool)

(assert (=> d!2345280 m!8229832))

(assert (=> b!7782868 m!8229830))

(assert (=> b!7782873 m!8229830))

(assert (=> b!7782873 m!8229830))

(declare-fun m!8229834 () Bool)

(assert (=> b!7782873 m!8229834))

(assert (=> b!7782873 m!8229822))

(assert (=> b!7782873 m!8229834))

(assert (=> b!7782873 m!8229822))

(declare-fun m!8229836 () Bool)

(assert (=> b!7782873 m!8229836))

(assert (=> b!7782747 d!2345280))

(declare-fun bm!721337 () Bool)

(declare-fun call!721344 () Bool)

(declare-fun c!1433943 () Bool)

(assert (=> bm!721337 (= call!721344 (validRegex!11255 (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))))))

(declare-fun b!7782876 () Bool)

(declare-fun e!4610088 () Bool)

(assert (=> b!7782876 (= e!4610088 call!721344)))

(declare-fun b!7782877 () Bool)

(declare-fun e!4610084 () Bool)

(declare-fun e!4610089 () Bool)

(assert (=> b!7782877 (= e!4610084 e!4610089)))

(declare-fun res!3102311 () Bool)

(assert (=> b!7782877 (=> (not res!3102311) (not e!4610089))))

(declare-fun call!721343 () Bool)

(assert (=> b!7782877 (= res!3102311 call!721343)))

(declare-fun c!1433942 () Bool)

(declare-fun call!721342 () Bool)

(declare-fun bm!721338 () Bool)

(assert (=> bm!721338 (= call!721342 (validRegex!11255 (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))))))

(declare-fun b!7782878 () Bool)

(declare-fun e!4610083 () Bool)

(assert (=> b!7782878 (= e!4610083 call!721342)))

(declare-fun b!7782879 () Bool)

(declare-fun e!4610087 () Bool)

(declare-fun e!4610085 () Bool)

(assert (=> b!7782879 (= e!4610087 e!4610085)))

(assert (=> b!7782879 (= c!1433942 ((_ is Star!20841) r1!6279))))

(declare-fun b!7782881 () Bool)

(declare-fun e!4610086 () Bool)

(assert (=> b!7782881 (= e!4610085 e!4610086)))

(assert (=> b!7782881 (= c!1433943 ((_ is Union!20841) r1!6279))))

(declare-fun bm!721339 () Bool)

(assert (=> bm!721339 (= call!721343 call!721342)))

(declare-fun b!7782882 () Bool)

(declare-fun res!3102312 () Bool)

(assert (=> b!7782882 (=> (not res!3102312) (not e!4610088))))

(assert (=> b!7782882 (= res!3102312 call!721343)))

(assert (=> b!7782882 (= e!4610086 e!4610088)))

(declare-fun b!7782883 () Bool)

(declare-fun res!3102315 () Bool)

(assert (=> b!7782883 (=> res!3102315 e!4610084)))

(assert (=> b!7782883 (= res!3102315 (not ((_ is Concat!29686) r1!6279)))))

(assert (=> b!7782883 (= e!4610086 e!4610084)))

(declare-fun b!7782884 () Bool)

(assert (=> b!7782884 (= e!4610085 e!4610083)))

(declare-fun res!3102314 () Bool)

(assert (=> b!7782884 (= res!3102314 (not (nullable!9224 (reg!21170 r1!6279))))))

(assert (=> b!7782884 (=> (not res!3102314) (not e!4610083))))

(declare-fun b!7782880 () Bool)

(assert (=> b!7782880 (= e!4610089 call!721344)))

(declare-fun d!2345284 () Bool)

(declare-fun res!3102313 () Bool)

(assert (=> d!2345284 (=> res!3102313 e!4610087)))

(assert (=> d!2345284 (= res!3102313 ((_ is ElementMatch!20841) r1!6279))))

(assert (=> d!2345284 (= (validRegex!11255 r1!6279) e!4610087)))

(assert (= (and d!2345284 (not res!3102313)) b!7782879))

(assert (= (and b!7782879 c!1433942) b!7782884))

(assert (= (and b!7782879 (not c!1433942)) b!7782881))

(assert (= (and b!7782884 res!3102314) b!7782878))

(assert (= (and b!7782881 c!1433943) b!7782882))

(assert (= (and b!7782881 (not c!1433943)) b!7782883))

(assert (= (and b!7782882 res!3102312) b!7782876))

(assert (= (and b!7782883 (not res!3102315)) b!7782877))

(assert (= (and b!7782877 res!3102311) b!7782880))

(assert (= (or b!7782882 b!7782877) bm!721339))

(assert (= (or b!7782876 b!7782880) bm!721337))

(assert (= (or b!7782878 bm!721339) bm!721338))

(declare-fun m!8229838 () Bool)

(assert (=> bm!721337 m!8229838))

(declare-fun m!8229840 () Bool)

(assert (=> bm!721338 m!8229840))

(declare-fun m!8229842 () Bool)

(assert (=> b!7782884 m!8229842))

(assert (=> start!740634 d!2345284))

(declare-fun b!7782885 () Bool)

(declare-fun e!4610091 () Bool)

(declare-fun e!4610095 () Bool)

(assert (=> b!7782885 (= e!4610091 e!4610095)))

(declare-fun c!1433944 () Bool)

(assert (=> b!7782885 (= c!1433944 ((_ is EmptyLang!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun b!7782886 () Bool)

(declare-fun res!3102319 () Bool)

(declare-fun e!4610092 () Bool)

(assert (=> b!7782886 (=> res!3102319 e!4610092)))

(assert (=> b!7782886 (= res!3102319 (not (isEmpty!42192 (tail!15460 (t!388415 s!14292)))))))

(declare-fun b!7782887 () Bool)

(declare-fun res!3102320 () Bool)

(declare-fun e!4610094 () Bool)

(assert (=> b!7782887 (=> (not res!3102320) (not e!4610094))))

(declare-fun call!721345 () Bool)

(assert (=> b!7782887 (= res!3102320 (not call!721345))))

(declare-fun b!7782888 () Bool)

(declare-fun e!4610093 () Bool)

(assert (=> b!7782888 (= e!4610093 e!4610092)))

(declare-fun res!3102323 () Bool)

(assert (=> b!7782888 (=> res!3102323 e!4610092)))

(assert (=> b!7782888 (= res!3102323 call!721345)))

(declare-fun b!7782889 () Bool)

(assert (=> b!7782889 (= e!4610092 (not (= (head!15919 (t!388415 s!14292)) (c!1433914 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))))

(declare-fun b!7782890 () Bool)

(declare-fun res!3102322 () Bool)

(declare-fun e!4610096 () Bool)

(assert (=> b!7782890 (=> res!3102322 e!4610096)))

(assert (=> b!7782890 (= res!3102322 (not ((_ is ElementMatch!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))))

(assert (=> b!7782890 (= e!4610095 e!4610096)))

(declare-fun b!7782891 () Bool)

(assert (=> b!7782891 (= e!4610094 (= (head!15919 (t!388415 s!14292)) (c!1433914 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))))

(declare-fun b!7782893 () Bool)

(declare-fun res!3102316 () Bool)

(assert (=> b!7782893 (=> (not res!3102316) (not e!4610094))))

(assert (=> b!7782893 (= res!3102316 (isEmpty!42192 (tail!15460 (t!388415 s!14292))))))

(declare-fun b!7782894 () Bool)

(assert (=> b!7782894 (= e!4610096 e!4610093)))

(declare-fun res!3102321 () Bool)

(assert (=> b!7782894 (=> (not res!3102321) (not e!4610093))))

(declare-fun lt!2673256 () Bool)

(assert (=> b!7782894 (= res!3102321 (not lt!2673256))))

(declare-fun b!7782895 () Bool)

(declare-fun e!4610090 () Bool)

(assert (=> b!7782895 (= e!4610090 (nullable!9224 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun bm!721340 () Bool)

(assert (=> bm!721340 (= call!721345 (isEmpty!42192 (t!388415 s!14292)))))

(declare-fun b!7782896 () Bool)

(assert (=> b!7782896 (= e!4610090 (matchR!10301 (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292))) (tail!15460 (t!388415 s!14292))))))

(declare-fun b!7782892 () Bool)

(assert (=> b!7782892 (= e!4610095 (not lt!2673256))))

(declare-fun d!2345286 () Bool)

(assert (=> d!2345286 e!4610091))

(declare-fun c!1433946 () Bool)

(assert (=> d!2345286 (= c!1433946 ((_ is EmptyExpr!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(assert (=> d!2345286 (= lt!2673256 e!4610090)))

(declare-fun c!1433945 () Bool)

(assert (=> d!2345286 (= c!1433945 (isEmpty!42192 (t!388415 s!14292)))))

(assert (=> d!2345286 (validRegex!11255 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))

(assert (=> d!2345286 (= (matchR!10301 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (t!388415 s!14292)) lt!2673256)))

(declare-fun b!7782897 () Bool)

(assert (=> b!7782897 (= e!4610091 (= lt!2673256 call!721345))))

(declare-fun b!7782898 () Bool)

(declare-fun res!3102318 () Bool)

(assert (=> b!7782898 (=> res!3102318 e!4610096)))

(assert (=> b!7782898 (= res!3102318 e!4610094)))

(declare-fun res!3102317 () Bool)

(assert (=> b!7782898 (=> (not res!3102317) (not e!4610094))))

(assert (=> b!7782898 (= res!3102317 lt!2673256)))

(assert (= (and d!2345286 c!1433945) b!7782895))

(assert (= (and d!2345286 (not c!1433945)) b!7782896))

(assert (= (and d!2345286 c!1433946) b!7782897))

(assert (= (and d!2345286 (not c!1433946)) b!7782885))

(assert (= (and b!7782885 c!1433944) b!7782892))

(assert (= (and b!7782885 (not c!1433944)) b!7782890))

(assert (= (and b!7782890 (not res!3102322)) b!7782898))

(assert (= (and b!7782898 res!3102317) b!7782887))

(assert (= (and b!7782887 res!3102320) b!7782893))

(assert (= (and b!7782893 res!3102316) b!7782891))

(assert (= (and b!7782898 (not res!3102318)) b!7782894))

(assert (= (and b!7782894 res!3102321) b!7782888))

(assert (= (and b!7782888 (not res!3102323)) b!7782886))

(assert (= (and b!7782886 (not res!3102319)) b!7782889))

(assert (= (or b!7782897 b!7782887 b!7782888) bm!721340))

(declare-fun m!8229844 () Bool)

(assert (=> b!7782886 m!8229844))

(assert (=> b!7782886 m!8229844))

(declare-fun m!8229846 () Bool)

(assert (=> b!7782886 m!8229846))

(assert (=> b!7782895 m!8229802))

(declare-fun m!8229848 () Bool)

(assert (=> b!7782895 m!8229848))

(assert (=> b!7782893 m!8229844))

(assert (=> b!7782893 m!8229844))

(assert (=> b!7782893 m!8229846))

(declare-fun m!8229850 () Bool)

(assert (=> bm!721340 m!8229850))

(declare-fun m!8229852 () Bool)

(assert (=> b!7782889 m!8229852))

(assert (=> d!2345286 m!8229850))

(assert (=> d!2345286 m!8229802))

(declare-fun m!8229854 () Bool)

(assert (=> d!2345286 m!8229854))

(assert (=> b!7782891 m!8229852))

(assert (=> b!7782896 m!8229852))

(assert (=> b!7782896 m!8229802))

(assert (=> b!7782896 m!8229852))

(declare-fun m!8229856 () Bool)

(assert (=> b!7782896 m!8229856))

(assert (=> b!7782896 m!8229844))

(assert (=> b!7782896 m!8229856))

(assert (=> b!7782896 m!8229844))

(declare-fun m!8229858 () Bool)

(assert (=> b!7782896 m!8229858))

(assert (=> b!7782743 d!2345286))

(declare-fun d!2345288 () Bool)

(declare-fun lt!2673261 () Regex!20841)

(assert (=> d!2345288 (validRegex!11255 lt!2673261)))

(declare-fun e!4610128 () Regex!20841)

(assert (=> d!2345288 (= lt!2673261 e!4610128)))

(declare-fun c!1433965 () Bool)

(assert (=> d!2345288 (= c!1433965 (or ((_ is EmptyExpr!20841) lt!2673250) ((_ is EmptyLang!20841) lt!2673250)))))

(assert (=> d!2345288 (validRegex!11255 lt!2673250)))

(assert (=> d!2345288 (= (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) lt!2673261)))

(declare-fun call!721362 () Regex!20841)

(declare-fun bm!721354 () Bool)

(declare-fun c!1433969 () Bool)

(assert (=> bm!721354 (= call!721362 (derivativeStep!6178 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)) (h!80004 s!14292)))))

(declare-fun bm!721355 () Bool)

(declare-fun call!721359 () Regex!20841)

(declare-fun call!721360 () Regex!20841)

(assert (=> bm!721355 (= call!721359 call!721360)))

(declare-fun b!7782956 () Bool)

(declare-fun e!4610130 () Regex!20841)

(assert (=> b!7782956 (= e!4610128 e!4610130)))

(declare-fun c!1433966 () Bool)

(assert (=> b!7782956 (= c!1433966 ((_ is ElementMatch!20841) lt!2673250))))

(declare-fun bm!721356 () Bool)

(declare-fun call!721361 () Regex!20841)

(assert (=> bm!721356 (= call!721361 call!721359)))

(declare-fun b!7782957 () Bool)

(assert (=> b!7782957 (= c!1433969 ((_ is Union!20841) lt!2673250))))

(declare-fun e!4610132 () Regex!20841)

(assert (=> b!7782957 (= e!4610130 e!4610132)))

(declare-fun b!7782958 () Bool)

(assert (=> b!7782958 (= e!4610132 (Union!20841 call!721362 call!721360))))

(declare-fun b!7782959 () Bool)

(assert (=> b!7782959 (= e!4610130 (ite (= (h!80004 s!14292) (c!1433914 lt!2673250)) EmptyExpr!20841 EmptyLang!20841))))

(declare-fun b!7782960 () Bool)

(declare-fun e!4610131 () Regex!20841)

(assert (=> b!7782960 (= e!4610132 e!4610131)))

(declare-fun c!1433967 () Bool)

(assert (=> b!7782960 (= c!1433967 ((_ is Star!20841) lt!2673250))))

(declare-fun b!7782961 () Bool)

(assert (=> b!7782961 (= e!4610128 EmptyLang!20841)))

(declare-fun b!7782962 () Bool)

(declare-fun c!1433968 () Bool)

(assert (=> b!7782962 (= c!1433968 (nullable!9224 (regOne!42194 lt!2673250)))))

(declare-fun e!4610129 () Regex!20841)

(assert (=> b!7782962 (= e!4610131 e!4610129)))

(declare-fun bm!721357 () Bool)

(assert (=> bm!721357 (= call!721360 (derivativeStep!6178 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))) (h!80004 s!14292)))))

(declare-fun b!7782963 () Bool)

(assert (=> b!7782963 (= e!4610129 (Union!20841 (Concat!29686 call!721362 (regTwo!42194 lt!2673250)) call!721361))))

(declare-fun b!7782964 () Bool)

(assert (=> b!7782964 (= e!4610131 (Concat!29686 call!721359 lt!2673250))))

(declare-fun b!7782965 () Bool)

(assert (=> b!7782965 (= e!4610129 (Union!20841 (Concat!29686 call!721361 (regTwo!42194 lt!2673250)) EmptyLang!20841))))

(assert (= (and d!2345288 c!1433965) b!7782961))

(assert (= (and d!2345288 (not c!1433965)) b!7782956))

(assert (= (and b!7782956 c!1433966) b!7782959))

(assert (= (and b!7782956 (not c!1433966)) b!7782957))

(assert (= (and b!7782957 c!1433969) b!7782958))

(assert (= (and b!7782957 (not c!1433969)) b!7782960))

(assert (= (and b!7782960 c!1433967) b!7782964))

(assert (= (and b!7782960 (not c!1433967)) b!7782962))

(assert (= (and b!7782962 c!1433968) b!7782963))

(assert (= (and b!7782962 (not c!1433968)) b!7782965))

(assert (= (or b!7782963 b!7782965) bm!721356))

(assert (= (or b!7782964 bm!721356) bm!721355))

(assert (= (or b!7782958 bm!721355) bm!721357))

(assert (= (or b!7782958 b!7782963) bm!721354))

(declare-fun m!8229898 () Bool)

(assert (=> d!2345288 m!8229898))

(assert (=> d!2345288 m!8229832))

(declare-fun m!8229900 () Bool)

(assert (=> bm!721354 m!8229900))

(declare-fun m!8229902 () Bool)

(assert (=> b!7782962 m!8229902))

(declare-fun m!8229904 () Bool)

(assert (=> bm!721357 m!8229904))

(assert (=> b!7782743 d!2345288))

(declare-fun b!7782998 () Bool)

(declare-fun e!4610145 () Bool)

(declare-fun tp!2287891 () Bool)

(assert (=> b!7782998 (= e!4610145 tp!2287891)))

(declare-fun b!7782999 () Bool)

(declare-fun tp!2287888 () Bool)

(declare-fun tp!2287889 () Bool)

(assert (=> b!7782999 (= e!4610145 (and tp!2287888 tp!2287889))))

(declare-fun b!7782996 () Bool)

(assert (=> b!7782996 (= e!4610145 tp_is_empty!52037)))

(assert (=> b!7782745 (= tp!2287869 e!4610145)))

(declare-fun b!7782997 () Bool)

(declare-fun tp!2287892 () Bool)

(declare-fun tp!2287890 () Bool)

(assert (=> b!7782997 (= e!4610145 (and tp!2287892 tp!2287890))))

(assert (= (and b!7782745 ((_ is ElementMatch!20841) (regOne!42195 r2!6217))) b!7782996))

(assert (= (and b!7782745 ((_ is Concat!29686) (regOne!42195 r2!6217))) b!7782997))

(assert (= (and b!7782745 ((_ is Star!20841) (regOne!42195 r2!6217))) b!7782998))

(assert (= (and b!7782745 ((_ is Union!20841) (regOne!42195 r2!6217))) b!7782999))

(declare-fun b!7783002 () Bool)

(declare-fun e!4610146 () Bool)

(declare-fun tp!2287896 () Bool)

(assert (=> b!7783002 (= e!4610146 tp!2287896)))

(declare-fun b!7783003 () Bool)

(declare-fun tp!2287893 () Bool)

(declare-fun tp!2287894 () Bool)

(assert (=> b!7783003 (= e!4610146 (and tp!2287893 tp!2287894))))

(declare-fun b!7783000 () Bool)

(assert (=> b!7783000 (= e!4610146 tp_is_empty!52037)))

(assert (=> b!7782745 (= tp!2287868 e!4610146)))

(declare-fun b!7783001 () Bool)

(declare-fun tp!2287897 () Bool)

(declare-fun tp!2287895 () Bool)

(assert (=> b!7783001 (= e!4610146 (and tp!2287897 tp!2287895))))

(assert (= (and b!7782745 ((_ is ElementMatch!20841) (regTwo!42195 r2!6217))) b!7783000))

(assert (= (and b!7782745 ((_ is Concat!29686) (regTwo!42195 r2!6217))) b!7783001))

(assert (= (and b!7782745 ((_ is Star!20841) (regTwo!42195 r2!6217))) b!7783002))

(assert (= (and b!7782745 ((_ is Union!20841) (regTwo!42195 r2!6217))) b!7783003))

(declare-fun b!7783006 () Bool)

(declare-fun e!4610147 () Bool)

(declare-fun tp!2287901 () Bool)

(assert (=> b!7783006 (= e!4610147 tp!2287901)))

(declare-fun b!7783007 () Bool)

(declare-fun tp!2287898 () Bool)

(declare-fun tp!2287899 () Bool)

(assert (=> b!7783007 (= e!4610147 (and tp!2287898 tp!2287899))))

(declare-fun b!7783004 () Bool)

(assert (=> b!7783004 (= e!4610147 tp_is_empty!52037)))

(assert (=> b!7782750 (= tp!2287870 e!4610147)))

(declare-fun b!7783005 () Bool)

(declare-fun tp!2287902 () Bool)

(declare-fun tp!2287900 () Bool)

(assert (=> b!7783005 (= e!4610147 (and tp!2287902 tp!2287900))))

(assert (= (and b!7782750 ((_ is ElementMatch!20841) (regOne!42195 r1!6279))) b!7783004))

(assert (= (and b!7782750 ((_ is Concat!29686) (regOne!42195 r1!6279))) b!7783005))

(assert (= (and b!7782750 ((_ is Star!20841) (regOne!42195 r1!6279))) b!7783006))

(assert (= (and b!7782750 ((_ is Union!20841) (regOne!42195 r1!6279))) b!7783007))

(declare-fun b!7783010 () Bool)

(declare-fun e!4610148 () Bool)

(declare-fun tp!2287906 () Bool)

(assert (=> b!7783010 (= e!4610148 tp!2287906)))

(declare-fun b!7783011 () Bool)

(declare-fun tp!2287903 () Bool)

(declare-fun tp!2287904 () Bool)

(assert (=> b!7783011 (= e!4610148 (and tp!2287903 tp!2287904))))

(declare-fun b!7783008 () Bool)

(assert (=> b!7783008 (= e!4610148 tp_is_empty!52037)))

(assert (=> b!7782750 (= tp!2287871 e!4610148)))

(declare-fun b!7783009 () Bool)

(declare-fun tp!2287907 () Bool)

(declare-fun tp!2287905 () Bool)

(assert (=> b!7783009 (= e!4610148 (and tp!2287907 tp!2287905))))

(assert (= (and b!7782750 ((_ is ElementMatch!20841) (regTwo!42195 r1!6279))) b!7783008))

(assert (= (and b!7782750 ((_ is Concat!29686) (regTwo!42195 r1!6279))) b!7783009))

(assert (= (and b!7782750 ((_ is Star!20841) (regTwo!42195 r1!6279))) b!7783010))

(assert (= (and b!7782750 ((_ is Union!20841) (regTwo!42195 r1!6279))) b!7783011))

(declare-fun b!7783014 () Bool)

(declare-fun e!4610149 () Bool)

(declare-fun tp!2287911 () Bool)

(assert (=> b!7783014 (= e!4610149 tp!2287911)))

(declare-fun b!7783015 () Bool)

(declare-fun tp!2287908 () Bool)

(declare-fun tp!2287909 () Bool)

(assert (=> b!7783015 (= e!4610149 (and tp!2287908 tp!2287909))))

(declare-fun b!7783012 () Bool)

(assert (=> b!7783012 (= e!4610149 tp_is_empty!52037)))

(assert (=> b!7782739 (= tp!2287873 e!4610149)))

(declare-fun b!7783013 () Bool)

(declare-fun tp!2287912 () Bool)

(declare-fun tp!2287910 () Bool)

(assert (=> b!7783013 (= e!4610149 (and tp!2287912 tp!2287910))))

(assert (= (and b!7782739 ((_ is ElementMatch!20841) (reg!21170 r2!6217))) b!7783012))

(assert (= (and b!7782739 ((_ is Concat!29686) (reg!21170 r2!6217))) b!7783013))

(assert (= (and b!7782739 ((_ is Star!20841) (reg!21170 r2!6217))) b!7783014))

(assert (= (and b!7782739 ((_ is Union!20841) (reg!21170 r2!6217))) b!7783015))

(declare-fun b!7783018 () Bool)

(declare-fun e!4610150 () Bool)

(declare-fun tp!2287916 () Bool)

(assert (=> b!7783018 (= e!4610150 tp!2287916)))

(declare-fun b!7783019 () Bool)

(declare-fun tp!2287913 () Bool)

(declare-fun tp!2287914 () Bool)

(assert (=> b!7783019 (= e!4610150 (and tp!2287913 tp!2287914))))

(declare-fun b!7783016 () Bool)

(assert (=> b!7783016 (= e!4610150 tp_is_empty!52037)))

(assert (=> b!7782746 (= tp!2287872 e!4610150)))

(declare-fun b!7783017 () Bool)

(declare-fun tp!2287917 () Bool)

(declare-fun tp!2287915 () Bool)

(assert (=> b!7783017 (= e!4610150 (and tp!2287917 tp!2287915))))

(assert (= (and b!7782746 ((_ is ElementMatch!20841) (regOne!42194 r2!6217))) b!7783016))

(assert (= (and b!7782746 ((_ is Concat!29686) (regOne!42194 r2!6217))) b!7783017))

(assert (= (and b!7782746 ((_ is Star!20841) (regOne!42194 r2!6217))) b!7783018))

(assert (= (and b!7782746 ((_ is Union!20841) (regOne!42194 r2!6217))) b!7783019))

(declare-fun b!7783022 () Bool)

(declare-fun e!4610151 () Bool)

(declare-fun tp!2287921 () Bool)

(assert (=> b!7783022 (= e!4610151 tp!2287921)))

(declare-fun b!7783023 () Bool)

(declare-fun tp!2287918 () Bool)

(declare-fun tp!2287919 () Bool)

(assert (=> b!7783023 (= e!4610151 (and tp!2287918 tp!2287919))))

(declare-fun b!7783020 () Bool)

(assert (=> b!7783020 (= e!4610151 tp_is_empty!52037)))

(assert (=> b!7782746 (= tp!2287875 e!4610151)))

(declare-fun b!7783021 () Bool)

(declare-fun tp!2287922 () Bool)

(declare-fun tp!2287920 () Bool)

(assert (=> b!7783021 (= e!4610151 (and tp!2287922 tp!2287920))))

(assert (= (and b!7782746 ((_ is ElementMatch!20841) (regTwo!42194 r2!6217))) b!7783020))

(assert (= (and b!7782746 ((_ is Concat!29686) (regTwo!42194 r2!6217))) b!7783021))

(assert (= (and b!7782746 ((_ is Star!20841) (regTwo!42194 r2!6217))) b!7783022))

(assert (= (and b!7782746 ((_ is Union!20841) (regTwo!42194 r2!6217))) b!7783023))

(declare-fun b!7783028 () Bool)

(declare-fun e!4610154 () Bool)

(declare-fun tp!2287925 () Bool)

(assert (=> b!7783028 (= e!4610154 (and tp_is_empty!52037 tp!2287925))))

(assert (=> b!7782751 (= tp!2287877 e!4610154)))

(assert (= (and b!7782751 ((_ is Cons!73556) (t!388415 s!14292))) b!7783028))

(declare-fun b!7783031 () Bool)

(declare-fun e!4610155 () Bool)

(declare-fun tp!2287929 () Bool)

(assert (=> b!7783031 (= e!4610155 tp!2287929)))

(declare-fun b!7783032 () Bool)

(declare-fun tp!2287926 () Bool)

(declare-fun tp!2287927 () Bool)

(assert (=> b!7783032 (= e!4610155 (and tp!2287926 tp!2287927))))

(declare-fun b!7783029 () Bool)

(assert (=> b!7783029 (= e!4610155 tp_is_empty!52037)))

(assert (=> b!7782748 (= tp!2287876 e!4610155)))

(declare-fun b!7783030 () Bool)

(declare-fun tp!2287930 () Bool)

(declare-fun tp!2287928 () Bool)

(assert (=> b!7783030 (= e!4610155 (and tp!2287930 tp!2287928))))

(assert (= (and b!7782748 ((_ is ElementMatch!20841) (reg!21170 r1!6279))) b!7783029))

(assert (= (and b!7782748 ((_ is Concat!29686) (reg!21170 r1!6279))) b!7783030))

(assert (= (and b!7782748 ((_ is Star!20841) (reg!21170 r1!6279))) b!7783031))

(assert (= (and b!7782748 ((_ is Union!20841) (reg!21170 r1!6279))) b!7783032))

(declare-fun b!7783035 () Bool)

(declare-fun e!4610156 () Bool)

(declare-fun tp!2287934 () Bool)

(assert (=> b!7783035 (= e!4610156 tp!2287934)))

(declare-fun b!7783036 () Bool)

(declare-fun tp!2287931 () Bool)

(declare-fun tp!2287932 () Bool)

(assert (=> b!7783036 (= e!4610156 (and tp!2287931 tp!2287932))))

(declare-fun b!7783033 () Bool)

(assert (=> b!7783033 (= e!4610156 tp_is_empty!52037)))

(assert (=> b!7782749 (= tp!2287867 e!4610156)))

(declare-fun b!7783034 () Bool)

(declare-fun tp!2287935 () Bool)

(declare-fun tp!2287933 () Bool)

(assert (=> b!7783034 (= e!4610156 (and tp!2287935 tp!2287933))))

(assert (= (and b!7782749 ((_ is ElementMatch!20841) (regOne!42194 r1!6279))) b!7783033))

(assert (= (and b!7782749 ((_ is Concat!29686) (regOne!42194 r1!6279))) b!7783034))

(assert (= (and b!7782749 ((_ is Star!20841) (regOne!42194 r1!6279))) b!7783035))

(assert (= (and b!7782749 ((_ is Union!20841) (regOne!42194 r1!6279))) b!7783036))

(declare-fun b!7783039 () Bool)

(declare-fun e!4610157 () Bool)

(declare-fun tp!2287939 () Bool)

(assert (=> b!7783039 (= e!4610157 tp!2287939)))

(declare-fun b!7783040 () Bool)

(declare-fun tp!2287936 () Bool)

(declare-fun tp!2287937 () Bool)

(assert (=> b!7783040 (= e!4610157 (and tp!2287936 tp!2287937))))

(declare-fun b!7783037 () Bool)

(assert (=> b!7783037 (= e!4610157 tp_is_empty!52037)))

(assert (=> b!7782749 (= tp!2287874 e!4610157)))

(declare-fun b!7783038 () Bool)

(declare-fun tp!2287940 () Bool)

(declare-fun tp!2287938 () Bool)

(assert (=> b!7783038 (= e!4610157 (and tp!2287940 tp!2287938))))

(assert (= (and b!7782749 ((_ is ElementMatch!20841) (regTwo!42194 r1!6279))) b!7783037))

(assert (= (and b!7782749 ((_ is Concat!29686) (regTwo!42194 r1!6279))) b!7783038))

(assert (= (and b!7782749 ((_ is Star!20841) (regTwo!42194 r1!6279))) b!7783039))

(assert (= (and b!7782749 ((_ is Union!20841) (regTwo!42194 r1!6279))) b!7783040))

(check-sat (not b!7783017) (not b!7783001) (not b!7782997) (not b!7782873) (not b!7783019) (not b!7783009) (not b!7783014) (not b!7783032) tp_is_empty!52037 (not b!7783022) (not b!7782872) (not bm!721327) (not b!7782884) (not b!7783035) (not b!7783030) (not bm!721340) (not b!7783038) (not b!7782866) (not b!7782891) (not b!7782893) (not b!7783018) (not bm!721357) (not d!2345280) (not d!2345288) (not b!7783010) (not b!7783036) (not b!7783003) (not b!7782870) (not b!7783015) (not b!7782998) (not b!7783028) (not b!7782886) (not d!2345286) (not b!7783002) (not b!7783011) (not b!7783021) (not bm!721338) (not bm!721354) (not bm!721326) (not b!7782889) (not bm!721337) (not b!7783031) (not b!7782863) (not b!7783023) (not b!7782962) (not b!7782895) (not b!7783040) (not b!7782796) (not b!7783005) (not b!7783013) (not b!7783034) (not b!7782896) (not b!7783006) (not bm!721336) (not b!7783007) (not b!7782999) (not b!7782868) (not b!7783039))
(check-sat)
(get-model)

(declare-fun d!2345296 () Bool)

(declare-fun lt!2673265 () Regex!20841)

(assert (=> d!2345296 (validRegex!11255 lt!2673265)))

(declare-fun e!4610178 () Regex!20841)

(assert (=> d!2345296 (= lt!2673265 e!4610178)))

(declare-fun c!1433985 () Bool)

(assert (=> d!2345296 (= c!1433985 (or ((_ is EmptyExpr!20841) (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))) ((_ is EmptyLang!20841) (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))))))

(assert (=> d!2345296 (validRegex!11255 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))))

(assert (=> d!2345296 (= (derivativeStep!6178 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)) (h!80004 s!14292)) lt!2673265)))

(declare-fun c!1433989 () Bool)

(declare-fun call!721378 () Regex!20841)

(declare-fun bm!721370 () Bool)

(assert (=> bm!721370 (= call!721378 (derivativeStep!6178 (ite c!1433989 (regOne!42195 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))) (regOne!42194 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))) (h!80004 s!14292)))))

(declare-fun bm!721371 () Bool)

(declare-fun call!721375 () Regex!20841)

(declare-fun call!721376 () Regex!20841)

(assert (=> bm!721371 (= call!721375 call!721376)))

(declare-fun b!7783106 () Bool)

(declare-fun e!4610180 () Regex!20841)

(assert (=> b!7783106 (= e!4610178 e!4610180)))

(declare-fun c!1433986 () Bool)

(assert (=> b!7783106 (= c!1433986 ((_ is ElementMatch!20841) (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))))))

(declare-fun bm!721372 () Bool)

(declare-fun call!721377 () Regex!20841)

(assert (=> bm!721372 (= call!721377 call!721375)))

(declare-fun b!7783107 () Bool)

(assert (=> b!7783107 (= c!1433989 ((_ is Union!20841) (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))))))

(declare-fun e!4610182 () Regex!20841)

(assert (=> b!7783107 (= e!4610180 e!4610182)))

(declare-fun b!7783108 () Bool)

(assert (=> b!7783108 (= e!4610182 (Union!20841 call!721378 call!721376))))

(declare-fun b!7783109 () Bool)

(assert (=> b!7783109 (= e!4610180 (ite (= (h!80004 s!14292) (c!1433914 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))) EmptyExpr!20841 EmptyLang!20841))))

(declare-fun b!7783110 () Bool)

(declare-fun e!4610181 () Regex!20841)

(assert (=> b!7783110 (= e!4610182 e!4610181)))

(declare-fun c!1433987 () Bool)

(assert (=> b!7783110 (= c!1433987 ((_ is Star!20841) (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))))))

(declare-fun b!7783111 () Bool)

(assert (=> b!7783111 (= e!4610178 EmptyLang!20841)))

(declare-fun b!7783112 () Bool)

(declare-fun c!1433988 () Bool)

(assert (=> b!7783112 (= c!1433988 (nullable!9224 (regOne!42194 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))))))

(declare-fun e!4610179 () Regex!20841)

(assert (=> b!7783112 (= e!4610181 e!4610179)))

(declare-fun bm!721373 () Bool)

(assert (=> bm!721373 (= call!721376 (derivativeStep!6178 (ite c!1433989 (regTwo!42195 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))) (ite c!1433987 (reg!21170 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))) (ite c!1433988 (regTwo!42194 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))) (regOne!42194 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))))) (h!80004 s!14292)))))

(declare-fun b!7783113 () Bool)

(assert (=> b!7783113 (= e!4610179 (Union!20841 (Concat!29686 call!721378 (regTwo!42194 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))) call!721377))))

(declare-fun b!7783114 () Bool)

(assert (=> b!7783114 (= e!4610181 (Concat!29686 call!721375 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250))))))

(declare-fun b!7783115 () Bool)

(assert (=> b!7783115 (= e!4610179 (Union!20841 (Concat!29686 call!721377 (regTwo!42194 (ite c!1433969 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))) EmptyLang!20841))))

(assert (= (and d!2345296 c!1433985) b!7783111))

(assert (= (and d!2345296 (not c!1433985)) b!7783106))

(assert (= (and b!7783106 c!1433986) b!7783109))

(assert (= (and b!7783106 (not c!1433986)) b!7783107))

(assert (= (and b!7783107 c!1433989) b!7783108))

(assert (= (and b!7783107 (not c!1433989)) b!7783110))

(assert (= (and b!7783110 c!1433987) b!7783114))

(assert (= (and b!7783110 (not c!1433987)) b!7783112))

(assert (= (and b!7783112 c!1433988) b!7783113))

(assert (= (and b!7783112 (not c!1433988)) b!7783115))

(assert (= (or b!7783113 b!7783115) bm!721372))

(assert (= (or b!7783114 bm!721372) bm!721371))

(assert (= (or b!7783108 bm!721371) bm!721373))

(assert (= (or b!7783108 b!7783113) bm!721370))

(declare-fun m!8229914 () Bool)

(assert (=> d!2345296 m!8229914))

(declare-fun m!8229916 () Bool)

(assert (=> d!2345296 m!8229916))

(declare-fun m!8229918 () Bool)

(assert (=> bm!721370 m!8229918))

(declare-fun m!8229920 () Bool)

(assert (=> b!7783112 m!8229920))

(declare-fun m!8229922 () Bool)

(assert (=> bm!721373 m!8229922))

(assert (=> bm!721354 d!2345296))

(declare-fun d!2345298 () Bool)

(assert (=> d!2345298 (= (isEmpty!42192 (tail!15460 s!14292)) ((_ is Nil!73556) (tail!15460 s!14292)))))

(assert (=> b!7782863 d!2345298))

(declare-fun d!2345300 () Bool)

(assert (=> d!2345300 (= (tail!15460 s!14292) (t!388415 s!14292))))

(assert (=> b!7782863 d!2345300))

(declare-fun d!2345302 () Bool)

(declare-fun nullableFct!3609 (Regex!20841) Bool)

(assert (=> d!2345302 (= (nullable!9224 (reg!21170 r2!6217)) (nullableFct!3609 (reg!21170 r2!6217)))))

(declare-fun bs!1966258 () Bool)

(assert (= bs!1966258 d!2345302))

(declare-fun m!8229924 () Bool)

(assert (=> bs!1966258 m!8229924))

(assert (=> b!7782796 d!2345302))

(declare-fun d!2345304 () Bool)

(assert (=> d!2345304 (= (isEmpty!42192 s!14292) ((_ is Nil!73556) s!14292))))

(assert (=> d!2345280 d!2345304))

(declare-fun bm!721374 () Bool)

(declare-fun call!721381 () Bool)

(declare-fun c!1433991 () Bool)

(assert (=> bm!721374 (= call!721381 (validRegex!11255 (ite c!1433991 (regTwo!42195 lt!2673250) (regTwo!42194 lt!2673250))))))

(declare-fun b!7783116 () Bool)

(declare-fun e!4610188 () Bool)

(assert (=> b!7783116 (= e!4610188 call!721381)))

(declare-fun b!7783117 () Bool)

(declare-fun e!4610184 () Bool)

(declare-fun e!4610189 () Bool)

(assert (=> b!7783117 (= e!4610184 e!4610189)))

(declare-fun res!3102345 () Bool)

(assert (=> b!7783117 (=> (not res!3102345) (not e!4610189))))

(declare-fun call!721380 () Bool)

(assert (=> b!7783117 (= res!3102345 call!721380)))

(declare-fun call!721379 () Bool)

(declare-fun c!1433990 () Bool)

(declare-fun bm!721375 () Bool)

(assert (=> bm!721375 (= call!721379 (validRegex!11255 (ite c!1433990 (reg!21170 lt!2673250) (ite c!1433991 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)))))))

(declare-fun b!7783118 () Bool)

(declare-fun e!4610183 () Bool)

(assert (=> b!7783118 (= e!4610183 call!721379)))

(declare-fun b!7783119 () Bool)

(declare-fun e!4610187 () Bool)

(declare-fun e!4610185 () Bool)

(assert (=> b!7783119 (= e!4610187 e!4610185)))

(assert (=> b!7783119 (= c!1433990 ((_ is Star!20841) lt!2673250))))

(declare-fun b!7783121 () Bool)

(declare-fun e!4610186 () Bool)

(assert (=> b!7783121 (= e!4610185 e!4610186)))

(assert (=> b!7783121 (= c!1433991 ((_ is Union!20841) lt!2673250))))

(declare-fun bm!721376 () Bool)

(assert (=> bm!721376 (= call!721380 call!721379)))

(declare-fun b!7783122 () Bool)

(declare-fun res!3102346 () Bool)

(assert (=> b!7783122 (=> (not res!3102346) (not e!4610188))))

(assert (=> b!7783122 (= res!3102346 call!721380)))

(assert (=> b!7783122 (= e!4610186 e!4610188)))

(declare-fun b!7783123 () Bool)

(declare-fun res!3102349 () Bool)

(assert (=> b!7783123 (=> res!3102349 e!4610184)))

(assert (=> b!7783123 (= res!3102349 (not ((_ is Concat!29686) lt!2673250)))))

(assert (=> b!7783123 (= e!4610186 e!4610184)))

(declare-fun b!7783124 () Bool)

(assert (=> b!7783124 (= e!4610185 e!4610183)))

(declare-fun res!3102348 () Bool)

(assert (=> b!7783124 (= res!3102348 (not (nullable!9224 (reg!21170 lt!2673250))))))

(assert (=> b!7783124 (=> (not res!3102348) (not e!4610183))))

(declare-fun b!7783120 () Bool)

(assert (=> b!7783120 (= e!4610189 call!721381)))

(declare-fun d!2345306 () Bool)

(declare-fun res!3102347 () Bool)

(assert (=> d!2345306 (=> res!3102347 e!4610187)))

(assert (=> d!2345306 (= res!3102347 ((_ is ElementMatch!20841) lt!2673250))))

(assert (=> d!2345306 (= (validRegex!11255 lt!2673250) e!4610187)))

(assert (= (and d!2345306 (not res!3102347)) b!7783119))

(assert (= (and b!7783119 c!1433990) b!7783124))

(assert (= (and b!7783119 (not c!1433990)) b!7783121))

(assert (= (and b!7783124 res!3102348) b!7783118))

(assert (= (and b!7783121 c!1433991) b!7783122))

(assert (= (and b!7783121 (not c!1433991)) b!7783123))

(assert (= (and b!7783122 res!3102346) b!7783116))

(assert (= (and b!7783123 (not res!3102349)) b!7783117))

(assert (= (and b!7783117 res!3102345) b!7783120))

(assert (= (or b!7783122 b!7783117) bm!721376))

(assert (= (or b!7783116 b!7783120) bm!721374))

(assert (= (or b!7783118 bm!721376) bm!721375))

(declare-fun m!8229926 () Bool)

(assert (=> bm!721374 m!8229926))

(declare-fun m!8229928 () Bool)

(assert (=> bm!721375 m!8229928))

(declare-fun m!8229930 () Bool)

(assert (=> b!7783124 m!8229930))

(assert (=> d!2345280 d!2345306))

(declare-fun call!721384 () Bool)

(declare-fun c!1433993 () Bool)

(declare-fun bm!721377 () Bool)

(assert (=> bm!721377 (= call!721384 (validRegex!11255 (ite c!1433993 (regTwo!42195 (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))) (regTwo!42194 (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))))))))

(declare-fun b!7783125 () Bool)

(declare-fun e!4610195 () Bool)

(assert (=> b!7783125 (= e!4610195 call!721384)))

(declare-fun b!7783126 () Bool)

(declare-fun e!4610191 () Bool)

(declare-fun e!4610196 () Bool)

(assert (=> b!7783126 (= e!4610191 e!4610196)))

(declare-fun res!3102350 () Bool)

(assert (=> b!7783126 (=> (not res!3102350) (not e!4610196))))

(declare-fun call!721383 () Bool)

(assert (=> b!7783126 (= res!3102350 call!721383)))

(declare-fun bm!721378 () Bool)

(declare-fun call!721382 () Bool)

(declare-fun c!1433992 () Bool)

(assert (=> bm!721378 (= call!721382 (validRegex!11255 (ite c!1433992 (reg!21170 (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))) (ite c!1433993 (regOne!42195 (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))) (regOne!42194 (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279)))))))))

(declare-fun b!7783127 () Bool)

(declare-fun e!4610190 () Bool)

(assert (=> b!7783127 (= e!4610190 call!721382)))

(declare-fun b!7783128 () Bool)

(declare-fun e!4610194 () Bool)

(declare-fun e!4610192 () Bool)

(assert (=> b!7783128 (= e!4610194 e!4610192)))

(assert (=> b!7783128 (= c!1433992 ((_ is Star!20841) (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))))))

(declare-fun b!7783130 () Bool)

(declare-fun e!4610193 () Bool)

(assert (=> b!7783130 (= e!4610192 e!4610193)))

(assert (=> b!7783130 (= c!1433993 ((_ is Union!20841) (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))))))

(declare-fun bm!721379 () Bool)

(assert (=> bm!721379 (= call!721383 call!721382)))

(declare-fun b!7783131 () Bool)

(declare-fun res!3102351 () Bool)

(assert (=> b!7783131 (=> (not res!3102351) (not e!4610195))))

(assert (=> b!7783131 (= res!3102351 call!721383)))

(assert (=> b!7783131 (= e!4610193 e!4610195)))

(declare-fun b!7783132 () Bool)

(declare-fun res!3102354 () Bool)

(assert (=> b!7783132 (=> res!3102354 e!4610191)))

(assert (=> b!7783132 (= res!3102354 (not ((_ is Concat!29686) (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279)))))))

(assert (=> b!7783132 (= e!4610193 e!4610191)))

(declare-fun b!7783133 () Bool)

(assert (=> b!7783133 (= e!4610192 e!4610190)))

(declare-fun res!3102353 () Bool)

(assert (=> b!7783133 (= res!3102353 (not (nullable!9224 (reg!21170 (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))))))))

(assert (=> b!7783133 (=> (not res!3102353) (not e!4610190))))

(declare-fun b!7783129 () Bool)

(assert (=> b!7783129 (= e!4610196 call!721384)))

(declare-fun d!2345308 () Bool)

(declare-fun res!3102352 () Bool)

(assert (=> d!2345308 (=> res!3102352 e!4610194)))

(assert (=> d!2345308 (= res!3102352 ((_ is ElementMatch!20841) (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))))))

(assert (=> d!2345308 (= (validRegex!11255 (ite c!1433943 (regTwo!42195 r1!6279) (regTwo!42194 r1!6279))) e!4610194)))

(assert (= (and d!2345308 (not res!3102352)) b!7783128))

(assert (= (and b!7783128 c!1433992) b!7783133))

(assert (= (and b!7783128 (not c!1433992)) b!7783130))

(assert (= (and b!7783133 res!3102353) b!7783127))

(assert (= (and b!7783130 c!1433993) b!7783131))

(assert (= (and b!7783130 (not c!1433993)) b!7783132))

(assert (= (and b!7783131 res!3102351) b!7783125))

(assert (= (and b!7783132 (not res!3102354)) b!7783126))

(assert (= (and b!7783126 res!3102350) b!7783129))

(assert (= (or b!7783131 b!7783126) bm!721379))

(assert (= (or b!7783125 b!7783129) bm!721377))

(assert (= (or b!7783127 bm!721379) bm!721378))

(declare-fun m!8229932 () Bool)

(assert (=> bm!721377 m!8229932))

(declare-fun m!8229934 () Bool)

(assert (=> bm!721378 m!8229934))

(declare-fun m!8229936 () Bool)

(assert (=> b!7783133 m!8229936))

(assert (=> bm!721337 d!2345308))

(declare-fun d!2345310 () Bool)

(assert (=> d!2345310 (= (head!15919 (t!388415 s!14292)) (h!80004 (t!388415 s!14292)))))

(assert (=> b!7782889 d!2345310))

(assert (=> b!7782870 d!2345298))

(assert (=> b!7782870 d!2345300))

(declare-fun d!2345312 () Bool)

(assert (=> d!2345312 (= (head!15919 s!14292) (h!80004 s!14292))))

(assert (=> b!7782866 d!2345312))

(declare-fun d!2345314 () Bool)

(assert (=> d!2345314 (= (isEmpty!42192 (tail!15460 (t!388415 s!14292))) ((_ is Nil!73556) (tail!15460 (t!388415 s!14292))))))

(assert (=> b!7782886 d!2345314))

(declare-fun d!2345316 () Bool)

(assert (=> d!2345316 (= (tail!15460 (t!388415 s!14292)) (t!388415 (t!388415 s!14292)))))

(assert (=> b!7782886 d!2345316))

(assert (=> b!7782868 d!2345312))

(declare-fun d!2345318 () Bool)

(assert (=> d!2345318 (= (isEmpty!42192 (t!388415 s!14292)) ((_ is Nil!73556) (t!388415 s!14292)))))

(assert (=> d!2345286 d!2345318))

(declare-fun call!721387 () Bool)

(declare-fun c!1433995 () Bool)

(declare-fun bm!721380 () Bool)

(assert (=> bm!721380 (= call!721387 (validRegex!11255 (ite c!1433995 (regTwo!42195 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) (regTwo!42194 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))))

(declare-fun b!7783134 () Bool)

(declare-fun e!4610202 () Bool)

(assert (=> b!7783134 (= e!4610202 call!721387)))

(declare-fun b!7783135 () Bool)

(declare-fun e!4610198 () Bool)

(declare-fun e!4610203 () Bool)

(assert (=> b!7783135 (= e!4610198 e!4610203)))

(declare-fun res!3102355 () Bool)

(assert (=> b!7783135 (=> (not res!3102355) (not e!4610203))))

(declare-fun call!721386 () Bool)

(assert (=> b!7783135 (= res!3102355 call!721386)))

(declare-fun c!1433994 () Bool)

(declare-fun bm!721381 () Bool)

(declare-fun call!721385 () Bool)

(assert (=> bm!721381 (= call!721385 (validRegex!11255 (ite c!1433994 (reg!21170 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) (ite c!1433995 (regOne!42195 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) (regOne!42194 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))))))

(declare-fun b!7783136 () Bool)

(declare-fun e!4610197 () Bool)

(assert (=> b!7783136 (= e!4610197 call!721385)))

(declare-fun b!7783137 () Bool)

(declare-fun e!4610201 () Bool)

(declare-fun e!4610199 () Bool)

(assert (=> b!7783137 (= e!4610201 e!4610199)))

(assert (=> b!7783137 (= c!1433994 ((_ is Star!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun b!7783139 () Bool)

(declare-fun e!4610200 () Bool)

(assert (=> b!7783139 (= e!4610199 e!4610200)))

(assert (=> b!7783139 (= c!1433995 ((_ is Union!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun bm!721382 () Bool)

(assert (=> bm!721382 (= call!721386 call!721385)))

(declare-fun b!7783140 () Bool)

(declare-fun res!3102356 () Bool)

(assert (=> b!7783140 (=> (not res!3102356) (not e!4610202))))

(assert (=> b!7783140 (= res!3102356 call!721386)))

(assert (=> b!7783140 (= e!4610200 e!4610202)))

(declare-fun b!7783141 () Bool)

(declare-fun res!3102359 () Bool)

(assert (=> b!7783141 (=> res!3102359 e!4610198)))

(assert (=> b!7783141 (= res!3102359 (not ((_ is Concat!29686) (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))))

(assert (=> b!7783141 (= e!4610200 e!4610198)))

(declare-fun b!7783142 () Bool)

(assert (=> b!7783142 (= e!4610199 e!4610197)))

(declare-fun res!3102358 () Bool)

(assert (=> b!7783142 (= res!3102358 (not (nullable!9224 (reg!21170 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))))

(assert (=> b!7783142 (=> (not res!3102358) (not e!4610197))))

(declare-fun b!7783138 () Bool)

(assert (=> b!7783138 (= e!4610203 call!721387)))

(declare-fun d!2345320 () Bool)

(declare-fun res!3102357 () Bool)

(assert (=> d!2345320 (=> res!3102357 e!4610201)))

(assert (=> d!2345320 (= res!3102357 ((_ is ElementMatch!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(assert (=> d!2345320 (= (validRegex!11255 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) e!4610201)))

(assert (= (and d!2345320 (not res!3102357)) b!7783137))

(assert (= (and b!7783137 c!1433994) b!7783142))

(assert (= (and b!7783137 (not c!1433994)) b!7783139))

(assert (= (and b!7783142 res!3102358) b!7783136))

(assert (= (and b!7783139 c!1433995) b!7783140))

(assert (= (and b!7783139 (not c!1433995)) b!7783141))

(assert (= (and b!7783140 res!3102356) b!7783134))

(assert (= (and b!7783141 (not res!3102359)) b!7783135))

(assert (= (and b!7783135 res!3102355) b!7783138))

(assert (= (or b!7783140 b!7783135) bm!721382))

(assert (= (or b!7783134 b!7783138) bm!721380))

(assert (= (or b!7783136 bm!721382) bm!721381))

(declare-fun m!8229938 () Bool)

(assert (=> bm!721380 m!8229938))

(declare-fun m!8229940 () Bool)

(assert (=> bm!721381 m!8229940))

(declare-fun m!8229942 () Bool)

(assert (=> b!7783142 m!8229942))

(assert (=> d!2345286 d!2345320))

(declare-fun c!1433997 () Bool)

(declare-fun bm!721383 () Bool)

(declare-fun call!721390 () Bool)

(assert (=> bm!721383 (= call!721390 (validRegex!11255 (ite c!1433997 (regTwo!42195 (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))) (regTwo!42194 (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))))))))

(declare-fun b!7783143 () Bool)

(declare-fun e!4610209 () Bool)

(assert (=> b!7783143 (= e!4610209 call!721390)))

(declare-fun b!7783144 () Bool)

(declare-fun e!4610205 () Bool)

(declare-fun e!4610210 () Bool)

(assert (=> b!7783144 (= e!4610205 e!4610210)))

(declare-fun res!3102360 () Bool)

(assert (=> b!7783144 (=> (not res!3102360) (not e!4610210))))

(declare-fun call!721389 () Bool)

(assert (=> b!7783144 (= res!3102360 call!721389)))

(declare-fun c!1433996 () Bool)

(declare-fun call!721388 () Bool)

(declare-fun bm!721384 () Bool)

(assert (=> bm!721384 (= call!721388 (validRegex!11255 (ite c!1433996 (reg!21170 (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))) (ite c!1433997 (regOne!42195 (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))) (regOne!42194 (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217))))))))))

(declare-fun b!7783145 () Bool)

(declare-fun e!4610204 () Bool)

(assert (=> b!7783145 (= e!4610204 call!721388)))

(declare-fun b!7783146 () Bool)

(declare-fun e!4610208 () Bool)

(declare-fun e!4610206 () Bool)

(assert (=> b!7783146 (= e!4610208 e!4610206)))

(assert (=> b!7783146 (= c!1433996 ((_ is Star!20841) (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))))))

(declare-fun b!7783148 () Bool)

(declare-fun e!4610207 () Bool)

(assert (=> b!7783148 (= e!4610206 e!4610207)))

(assert (=> b!7783148 (= c!1433997 ((_ is Union!20841) (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))))))

(declare-fun bm!721385 () Bool)

(assert (=> bm!721385 (= call!721389 call!721388)))

(declare-fun b!7783149 () Bool)

(declare-fun res!3102361 () Bool)

(assert (=> b!7783149 (=> (not res!3102361) (not e!4610209))))

(assert (=> b!7783149 (= res!3102361 call!721389)))

(assert (=> b!7783149 (= e!4610207 e!4610209)))

(declare-fun b!7783150 () Bool)

(declare-fun res!3102364 () Bool)

(assert (=> b!7783150 (=> res!3102364 e!4610205)))

(assert (=> b!7783150 (= res!3102364 (not ((_ is Concat!29686) (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217))))))))

(assert (=> b!7783150 (= e!4610207 e!4610205)))

(declare-fun b!7783151 () Bool)

(assert (=> b!7783151 (= e!4610206 e!4610204)))

(declare-fun res!3102363 () Bool)

(assert (=> b!7783151 (= res!3102363 (not (nullable!9224 (reg!21170 (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))))))))

(assert (=> b!7783151 (=> (not res!3102363) (not e!4610204))))

(declare-fun b!7783147 () Bool)

(assert (=> b!7783147 (= e!4610210 call!721390)))

(declare-fun d!2345322 () Bool)

(declare-fun res!3102362 () Bool)

(assert (=> d!2345322 (=> res!3102362 e!4610208)))

(assert (=> d!2345322 (= res!3102362 ((_ is ElementMatch!20841) (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))))))

(assert (=> d!2345322 (= (validRegex!11255 (ite c!1433923 (reg!21170 r2!6217) (ite c!1433924 (regOne!42195 r2!6217) (regOne!42194 r2!6217)))) e!4610208)))

(assert (= (and d!2345322 (not res!3102362)) b!7783146))

(assert (= (and b!7783146 c!1433996) b!7783151))

(assert (= (and b!7783146 (not c!1433996)) b!7783148))

(assert (= (and b!7783151 res!3102363) b!7783145))

(assert (= (and b!7783148 c!1433997) b!7783149))

(assert (= (and b!7783148 (not c!1433997)) b!7783150))

(assert (= (and b!7783149 res!3102361) b!7783143))

(assert (= (and b!7783150 (not res!3102364)) b!7783144))

(assert (= (and b!7783144 res!3102360) b!7783147))

(assert (= (or b!7783149 b!7783144) bm!721385))

(assert (= (or b!7783143 b!7783147) bm!721383))

(assert (= (or b!7783145 bm!721385) bm!721384))

(declare-fun m!8229944 () Bool)

(assert (=> bm!721383 m!8229944))

(declare-fun m!8229946 () Bool)

(assert (=> bm!721384 m!8229946))

(declare-fun m!8229948 () Bool)

(assert (=> b!7783151 m!8229948))

(assert (=> bm!721327 d!2345322))

(assert (=> b!7782893 d!2345314))

(assert (=> b!7782893 d!2345316))

(declare-fun d!2345324 () Bool)

(declare-fun lt!2673266 () Regex!20841)

(assert (=> d!2345324 (validRegex!11255 lt!2673266)))

(declare-fun e!4610211 () Regex!20841)

(assert (=> d!2345324 (= lt!2673266 e!4610211)))

(declare-fun c!1433998 () Bool)

(assert (=> d!2345324 (= c!1433998 (or ((_ is EmptyExpr!20841) (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))) ((_ is EmptyLang!20841) (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))))))))

(assert (=> d!2345324 (validRegex!11255 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))))))

(assert (=> d!2345324 (= (derivativeStep!6178 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))) (h!80004 s!14292)) lt!2673266)))

(declare-fun call!721394 () Regex!20841)

(declare-fun c!1434002 () Bool)

(declare-fun bm!721386 () Bool)

(assert (=> bm!721386 (= call!721394 (derivativeStep!6178 (ite c!1434002 (regOne!42195 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))) (regOne!42194 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))))) (h!80004 s!14292)))))

(declare-fun bm!721387 () Bool)

(declare-fun call!721391 () Regex!20841)

(declare-fun call!721392 () Regex!20841)

(assert (=> bm!721387 (= call!721391 call!721392)))

(declare-fun b!7783152 () Bool)

(declare-fun e!4610213 () Regex!20841)

(assert (=> b!7783152 (= e!4610211 e!4610213)))

(declare-fun c!1433999 () Bool)

(assert (=> b!7783152 (= c!1433999 ((_ is ElementMatch!20841) (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))))))

(declare-fun bm!721388 () Bool)

(declare-fun call!721393 () Regex!20841)

(assert (=> bm!721388 (= call!721393 call!721391)))

(declare-fun b!7783153 () Bool)

(assert (=> b!7783153 (= c!1434002 ((_ is Union!20841) (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))))))

(declare-fun e!4610215 () Regex!20841)

(assert (=> b!7783153 (= e!4610213 e!4610215)))

(declare-fun b!7783154 () Bool)

(assert (=> b!7783154 (= e!4610215 (Union!20841 call!721394 call!721392))))

(declare-fun b!7783155 () Bool)

(assert (=> b!7783155 (= e!4610213 (ite (= (h!80004 s!14292) (c!1433914 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))))) EmptyExpr!20841 EmptyLang!20841))))

(declare-fun b!7783156 () Bool)

(declare-fun e!4610214 () Regex!20841)

(assert (=> b!7783156 (= e!4610215 e!4610214)))

(declare-fun c!1434000 () Bool)

(assert (=> b!7783156 (= c!1434000 ((_ is Star!20841) (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))))))

(declare-fun b!7783157 () Bool)

(assert (=> b!7783157 (= e!4610211 EmptyLang!20841)))

(declare-fun b!7783158 () Bool)

(declare-fun c!1434001 () Bool)

(assert (=> b!7783158 (= c!1434001 (nullable!9224 (regOne!42194 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))))))))

(declare-fun e!4610212 () Regex!20841)

(assert (=> b!7783158 (= e!4610214 e!4610212)))

(declare-fun bm!721389 () Bool)

(assert (=> bm!721389 (= call!721392 (derivativeStep!6178 (ite c!1434002 (regTwo!42195 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))) (ite c!1434000 (reg!21170 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))) (ite c!1434001 (regTwo!42194 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))) (regOne!42194 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))))))) (h!80004 s!14292)))))

(declare-fun b!7783159 () Bool)

(assert (=> b!7783159 (= e!4610212 (Union!20841 (Concat!29686 call!721394 (regTwo!42194 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))))) call!721393))))

(declare-fun b!7783160 () Bool)

(assert (=> b!7783160 (= e!4610214 (Concat!29686 call!721391 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250))))))))

(declare-fun b!7783161 () Bool)

(assert (=> b!7783161 (= e!4610212 (Union!20841 (Concat!29686 call!721393 (regTwo!42194 (ite c!1433969 (regTwo!42195 lt!2673250) (ite c!1433967 (reg!21170 lt!2673250) (ite c!1433968 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))))) EmptyLang!20841))))

(assert (= (and d!2345324 c!1433998) b!7783157))

(assert (= (and d!2345324 (not c!1433998)) b!7783152))

(assert (= (and b!7783152 c!1433999) b!7783155))

(assert (= (and b!7783152 (not c!1433999)) b!7783153))

(assert (= (and b!7783153 c!1434002) b!7783154))

(assert (= (and b!7783153 (not c!1434002)) b!7783156))

(assert (= (and b!7783156 c!1434000) b!7783160))

(assert (= (and b!7783156 (not c!1434000)) b!7783158))

(assert (= (and b!7783158 c!1434001) b!7783159))

(assert (= (and b!7783158 (not c!1434001)) b!7783161))

(assert (= (or b!7783159 b!7783161) bm!721388))

(assert (= (or b!7783160 bm!721388) bm!721387))

(assert (= (or b!7783154 bm!721387) bm!721389))

(assert (= (or b!7783154 b!7783159) bm!721386))

(declare-fun m!8229950 () Bool)

(assert (=> d!2345324 m!8229950))

(declare-fun m!8229952 () Bool)

(assert (=> d!2345324 m!8229952))

(declare-fun m!8229954 () Bool)

(assert (=> bm!721386 m!8229954))

(declare-fun m!8229956 () Bool)

(assert (=> b!7783158 m!8229956))

(declare-fun m!8229958 () Bool)

(assert (=> bm!721389 m!8229958))

(assert (=> bm!721357 d!2345324))

(declare-fun b!7783162 () Bool)

(declare-fun e!4610217 () Bool)

(declare-fun e!4610221 () Bool)

(assert (=> b!7783162 (= e!4610217 e!4610221)))

(declare-fun c!1434003 () Bool)

(assert (=> b!7783162 (= c!1434003 ((_ is EmptyLang!20841) (derivativeStep!6178 lt!2673250 (head!15919 s!14292))))))

(declare-fun b!7783163 () Bool)

(declare-fun res!3102368 () Bool)

(declare-fun e!4610218 () Bool)

(assert (=> b!7783163 (=> res!3102368 e!4610218)))

(assert (=> b!7783163 (= res!3102368 (not (isEmpty!42192 (tail!15460 (tail!15460 s!14292)))))))

(declare-fun b!7783164 () Bool)

(declare-fun res!3102369 () Bool)

(declare-fun e!4610220 () Bool)

(assert (=> b!7783164 (=> (not res!3102369) (not e!4610220))))

(declare-fun call!721395 () Bool)

(assert (=> b!7783164 (= res!3102369 (not call!721395))))

(declare-fun b!7783165 () Bool)

(declare-fun e!4610219 () Bool)

(assert (=> b!7783165 (= e!4610219 e!4610218)))

(declare-fun res!3102372 () Bool)

(assert (=> b!7783165 (=> res!3102372 e!4610218)))

(assert (=> b!7783165 (= res!3102372 call!721395)))

(declare-fun b!7783166 () Bool)

(assert (=> b!7783166 (= e!4610218 (not (= (head!15919 (tail!15460 s!14292)) (c!1433914 (derivativeStep!6178 lt!2673250 (head!15919 s!14292))))))))

(declare-fun b!7783167 () Bool)

(declare-fun res!3102371 () Bool)

(declare-fun e!4610222 () Bool)

(assert (=> b!7783167 (=> res!3102371 e!4610222)))

(assert (=> b!7783167 (= res!3102371 (not ((_ is ElementMatch!20841) (derivativeStep!6178 lt!2673250 (head!15919 s!14292)))))))

(assert (=> b!7783167 (= e!4610221 e!4610222)))

(declare-fun b!7783168 () Bool)

(assert (=> b!7783168 (= e!4610220 (= (head!15919 (tail!15460 s!14292)) (c!1433914 (derivativeStep!6178 lt!2673250 (head!15919 s!14292)))))))

(declare-fun b!7783170 () Bool)

(declare-fun res!3102365 () Bool)

(assert (=> b!7783170 (=> (not res!3102365) (not e!4610220))))

(assert (=> b!7783170 (= res!3102365 (isEmpty!42192 (tail!15460 (tail!15460 s!14292))))))

(declare-fun b!7783171 () Bool)

(assert (=> b!7783171 (= e!4610222 e!4610219)))

(declare-fun res!3102370 () Bool)

(assert (=> b!7783171 (=> (not res!3102370) (not e!4610219))))

(declare-fun lt!2673267 () Bool)

(assert (=> b!7783171 (= res!3102370 (not lt!2673267))))

(declare-fun b!7783172 () Bool)

(declare-fun e!4610216 () Bool)

(assert (=> b!7783172 (= e!4610216 (nullable!9224 (derivativeStep!6178 lt!2673250 (head!15919 s!14292))))))

(declare-fun bm!721390 () Bool)

(assert (=> bm!721390 (= call!721395 (isEmpty!42192 (tail!15460 s!14292)))))

(declare-fun b!7783173 () Bool)

(assert (=> b!7783173 (= e!4610216 (matchR!10301 (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (head!15919 s!14292)) (head!15919 (tail!15460 s!14292))) (tail!15460 (tail!15460 s!14292))))))

(declare-fun b!7783169 () Bool)

(assert (=> b!7783169 (= e!4610221 (not lt!2673267))))

(declare-fun d!2345326 () Bool)

(assert (=> d!2345326 e!4610217))

(declare-fun c!1434005 () Bool)

(assert (=> d!2345326 (= c!1434005 ((_ is EmptyExpr!20841) (derivativeStep!6178 lt!2673250 (head!15919 s!14292))))))

(assert (=> d!2345326 (= lt!2673267 e!4610216)))

(declare-fun c!1434004 () Bool)

(assert (=> d!2345326 (= c!1434004 (isEmpty!42192 (tail!15460 s!14292)))))

(assert (=> d!2345326 (validRegex!11255 (derivativeStep!6178 lt!2673250 (head!15919 s!14292)))))

(assert (=> d!2345326 (= (matchR!10301 (derivativeStep!6178 lt!2673250 (head!15919 s!14292)) (tail!15460 s!14292)) lt!2673267)))

(declare-fun b!7783174 () Bool)

(assert (=> b!7783174 (= e!4610217 (= lt!2673267 call!721395))))

(declare-fun b!7783175 () Bool)

(declare-fun res!3102367 () Bool)

(assert (=> b!7783175 (=> res!3102367 e!4610222)))

(assert (=> b!7783175 (= res!3102367 e!4610220)))

(declare-fun res!3102366 () Bool)

(assert (=> b!7783175 (=> (not res!3102366) (not e!4610220))))

(assert (=> b!7783175 (= res!3102366 lt!2673267)))

(assert (= (and d!2345326 c!1434004) b!7783172))

(assert (= (and d!2345326 (not c!1434004)) b!7783173))

(assert (= (and d!2345326 c!1434005) b!7783174))

(assert (= (and d!2345326 (not c!1434005)) b!7783162))

(assert (= (and b!7783162 c!1434003) b!7783169))

(assert (= (and b!7783162 (not c!1434003)) b!7783167))

(assert (= (and b!7783167 (not res!3102371)) b!7783175))

(assert (= (and b!7783175 res!3102366) b!7783164))

(assert (= (and b!7783164 res!3102369) b!7783170))

(assert (= (and b!7783170 res!3102365) b!7783168))

(assert (= (and b!7783175 (not res!3102367)) b!7783171))

(assert (= (and b!7783171 res!3102370) b!7783165))

(assert (= (and b!7783165 (not res!3102372)) b!7783163))

(assert (= (and b!7783163 (not res!3102368)) b!7783166))

(assert (= (or b!7783174 b!7783164 b!7783165) bm!721390))

(assert (=> b!7783163 m!8229822))

(declare-fun m!8229960 () Bool)

(assert (=> b!7783163 m!8229960))

(assert (=> b!7783163 m!8229960))

(declare-fun m!8229962 () Bool)

(assert (=> b!7783163 m!8229962))

(assert (=> b!7783172 m!8229834))

(declare-fun m!8229964 () Bool)

(assert (=> b!7783172 m!8229964))

(assert (=> b!7783170 m!8229822))

(assert (=> b!7783170 m!8229960))

(assert (=> b!7783170 m!8229960))

(assert (=> b!7783170 m!8229962))

(assert (=> bm!721390 m!8229822))

(assert (=> bm!721390 m!8229824))

(assert (=> b!7783166 m!8229822))

(declare-fun m!8229966 () Bool)

(assert (=> b!7783166 m!8229966))

(assert (=> d!2345326 m!8229822))

(assert (=> d!2345326 m!8229824))

(assert (=> d!2345326 m!8229834))

(declare-fun m!8229968 () Bool)

(assert (=> d!2345326 m!8229968))

(assert (=> b!7783168 m!8229822))

(assert (=> b!7783168 m!8229966))

(assert (=> b!7783173 m!8229822))

(assert (=> b!7783173 m!8229966))

(assert (=> b!7783173 m!8229834))

(assert (=> b!7783173 m!8229966))

(declare-fun m!8229970 () Bool)

(assert (=> b!7783173 m!8229970))

(assert (=> b!7783173 m!8229822))

(assert (=> b!7783173 m!8229960))

(assert (=> b!7783173 m!8229970))

(assert (=> b!7783173 m!8229960))

(declare-fun m!8229972 () Bool)

(assert (=> b!7783173 m!8229972))

(assert (=> b!7782873 d!2345326))

(declare-fun d!2345328 () Bool)

(declare-fun lt!2673268 () Regex!20841)

(assert (=> d!2345328 (validRegex!11255 lt!2673268)))

(declare-fun e!4610223 () Regex!20841)

(assert (=> d!2345328 (= lt!2673268 e!4610223)))

(declare-fun c!1434006 () Bool)

(assert (=> d!2345328 (= c!1434006 (or ((_ is EmptyExpr!20841) lt!2673250) ((_ is EmptyLang!20841) lt!2673250)))))

(assert (=> d!2345328 (validRegex!11255 lt!2673250)))

(assert (=> d!2345328 (= (derivativeStep!6178 lt!2673250 (head!15919 s!14292)) lt!2673268)))

(declare-fun c!1434010 () Bool)

(declare-fun bm!721391 () Bool)

(declare-fun call!721399 () Regex!20841)

(assert (=> bm!721391 (= call!721399 (derivativeStep!6178 (ite c!1434010 (regOne!42195 lt!2673250) (regOne!42194 lt!2673250)) (head!15919 s!14292)))))

(declare-fun bm!721392 () Bool)

(declare-fun call!721396 () Regex!20841)

(declare-fun call!721397 () Regex!20841)

(assert (=> bm!721392 (= call!721396 call!721397)))

(declare-fun b!7783176 () Bool)

(declare-fun e!4610225 () Regex!20841)

(assert (=> b!7783176 (= e!4610223 e!4610225)))

(declare-fun c!1434007 () Bool)

(assert (=> b!7783176 (= c!1434007 ((_ is ElementMatch!20841) lt!2673250))))

(declare-fun bm!721393 () Bool)

(declare-fun call!721398 () Regex!20841)

(assert (=> bm!721393 (= call!721398 call!721396)))

(declare-fun b!7783177 () Bool)

(assert (=> b!7783177 (= c!1434010 ((_ is Union!20841) lt!2673250))))

(declare-fun e!4610227 () Regex!20841)

(assert (=> b!7783177 (= e!4610225 e!4610227)))

(declare-fun b!7783178 () Bool)

(assert (=> b!7783178 (= e!4610227 (Union!20841 call!721399 call!721397))))

(declare-fun b!7783179 () Bool)

(assert (=> b!7783179 (= e!4610225 (ite (= (head!15919 s!14292) (c!1433914 lt!2673250)) EmptyExpr!20841 EmptyLang!20841))))

(declare-fun b!7783180 () Bool)

(declare-fun e!4610226 () Regex!20841)

(assert (=> b!7783180 (= e!4610227 e!4610226)))

(declare-fun c!1434008 () Bool)

(assert (=> b!7783180 (= c!1434008 ((_ is Star!20841) lt!2673250))))

(declare-fun b!7783181 () Bool)

(assert (=> b!7783181 (= e!4610223 EmptyLang!20841)))

(declare-fun b!7783182 () Bool)

(declare-fun c!1434009 () Bool)

(assert (=> b!7783182 (= c!1434009 (nullable!9224 (regOne!42194 lt!2673250)))))

(declare-fun e!4610224 () Regex!20841)

(assert (=> b!7783182 (= e!4610226 e!4610224)))

(declare-fun bm!721394 () Bool)

(assert (=> bm!721394 (= call!721397 (derivativeStep!6178 (ite c!1434010 (regTwo!42195 lt!2673250) (ite c!1434008 (reg!21170 lt!2673250) (ite c!1434009 (regTwo!42194 lt!2673250) (regOne!42194 lt!2673250)))) (head!15919 s!14292)))))

(declare-fun b!7783183 () Bool)

(assert (=> b!7783183 (= e!4610224 (Union!20841 (Concat!29686 call!721399 (regTwo!42194 lt!2673250)) call!721398))))

(declare-fun b!7783184 () Bool)

(assert (=> b!7783184 (= e!4610226 (Concat!29686 call!721396 lt!2673250))))

(declare-fun b!7783185 () Bool)

(assert (=> b!7783185 (= e!4610224 (Union!20841 (Concat!29686 call!721398 (regTwo!42194 lt!2673250)) EmptyLang!20841))))

(assert (= (and d!2345328 c!1434006) b!7783181))

(assert (= (and d!2345328 (not c!1434006)) b!7783176))

(assert (= (and b!7783176 c!1434007) b!7783179))

(assert (= (and b!7783176 (not c!1434007)) b!7783177))

(assert (= (and b!7783177 c!1434010) b!7783178))

(assert (= (and b!7783177 (not c!1434010)) b!7783180))

(assert (= (and b!7783180 c!1434008) b!7783184))

(assert (= (and b!7783180 (not c!1434008)) b!7783182))

(assert (= (and b!7783182 c!1434009) b!7783183))

(assert (= (and b!7783182 (not c!1434009)) b!7783185))

(assert (= (or b!7783183 b!7783185) bm!721393))

(assert (= (or b!7783184 bm!721393) bm!721392))

(assert (= (or b!7783178 bm!721392) bm!721394))

(assert (= (or b!7783178 b!7783183) bm!721391))

(declare-fun m!8229974 () Bool)

(assert (=> d!2345328 m!8229974))

(assert (=> d!2345328 m!8229832))

(assert (=> bm!721391 m!8229830))

(declare-fun m!8229976 () Bool)

(assert (=> bm!721391 m!8229976))

(assert (=> b!7783182 m!8229902))

(assert (=> bm!721394 m!8229830))

(declare-fun m!8229978 () Bool)

(assert (=> bm!721394 m!8229978))

(assert (=> b!7782873 d!2345328))

(assert (=> b!7782873 d!2345312))

(assert (=> b!7782873 d!2345300))

(declare-fun c!1434012 () Bool)

(declare-fun bm!721395 () Bool)

(declare-fun call!721402 () Bool)

(assert (=> bm!721395 (= call!721402 (validRegex!11255 (ite c!1434012 (regTwo!42195 (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))) (regTwo!42194 (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))))))))

(declare-fun b!7783186 () Bool)

(declare-fun e!4610233 () Bool)

(assert (=> b!7783186 (= e!4610233 call!721402)))

(declare-fun b!7783187 () Bool)

(declare-fun e!4610229 () Bool)

(declare-fun e!4610234 () Bool)

(assert (=> b!7783187 (= e!4610229 e!4610234)))

(declare-fun res!3102373 () Bool)

(assert (=> b!7783187 (=> (not res!3102373) (not e!4610234))))

(declare-fun call!721401 () Bool)

(assert (=> b!7783187 (= res!3102373 call!721401)))

(declare-fun call!721400 () Bool)

(declare-fun bm!721396 () Bool)

(declare-fun c!1434011 () Bool)

(assert (=> bm!721396 (= call!721400 (validRegex!11255 (ite c!1434011 (reg!21170 (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))) (ite c!1434012 (regOne!42195 (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))) (regOne!42194 (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217)))))))))

(declare-fun b!7783188 () Bool)

(declare-fun e!4610228 () Bool)

(assert (=> b!7783188 (= e!4610228 call!721400)))

(declare-fun b!7783189 () Bool)

(declare-fun e!4610232 () Bool)

(declare-fun e!4610230 () Bool)

(assert (=> b!7783189 (= e!4610232 e!4610230)))

(assert (=> b!7783189 (= c!1434011 ((_ is Star!20841) (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))))))

(declare-fun b!7783191 () Bool)

(declare-fun e!4610231 () Bool)

(assert (=> b!7783191 (= e!4610230 e!4610231)))

(assert (=> b!7783191 (= c!1434012 ((_ is Union!20841) (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))))))

(declare-fun bm!721397 () Bool)

(assert (=> bm!721397 (= call!721401 call!721400)))

(declare-fun b!7783192 () Bool)

(declare-fun res!3102374 () Bool)

(assert (=> b!7783192 (=> (not res!3102374) (not e!4610233))))

(assert (=> b!7783192 (= res!3102374 call!721401)))

(assert (=> b!7783192 (= e!4610231 e!4610233)))

(declare-fun b!7783193 () Bool)

(declare-fun res!3102377 () Bool)

(assert (=> b!7783193 (=> res!3102377 e!4610229)))

(assert (=> b!7783193 (= res!3102377 (not ((_ is Concat!29686) (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217)))))))

(assert (=> b!7783193 (= e!4610231 e!4610229)))

(declare-fun b!7783194 () Bool)

(assert (=> b!7783194 (= e!4610230 e!4610228)))

(declare-fun res!3102376 () Bool)

(assert (=> b!7783194 (= res!3102376 (not (nullable!9224 (reg!21170 (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))))))))

(assert (=> b!7783194 (=> (not res!3102376) (not e!4610228))))

(declare-fun b!7783190 () Bool)

(assert (=> b!7783190 (= e!4610234 call!721402)))

(declare-fun d!2345330 () Bool)

(declare-fun res!3102375 () Bool)

(assert (=> d!2345330 (=> res!3102375 e!4610232)))

(assert (=> d!2345330 (= res!3102375 ((_ is ElementMatch!20841) (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))))))

(assert (=> d!2345330 (= (validRegex!11255 (ite c!1433924 (regTwo!42195 r2!6217) (regTwo!42194 r2!6217))) e!4610232)))

(assert (= (and d!2345330 (not res!3102375)) b!7783189))

(assert (= (and b!7783189 c!1434011) b!7783194))

(assert (= (and b!7783189 (not c!1434011)) b!7783191))

(assert (= (and b!7783194 res!3102376) b!7783188))

(assert (= (and b!7783191 c!1434012) b!7783192))

(assert (= (and b!7783191 (not c!1434012)) b!7783193))

(assert (= (and b!7783192 res!3102374) b!7783186))

(assert (= (and b!7783193 (not res!3102377)) b!7783187))

(assert (= (and b!7783187 res!3102373) b!7783190))

(assert (= (or b!7783192 b!7783187) bm!721397))

(assert (= (or b!7783186 b!7783190) bm!721395))

(assert (= (or b!7783188 bm!721397) bm!721396))

(declare-fun m!8229980 () Bool)

(assert (=> bm!721395 m!8229980))

(declare-fun m!8229982 () Bool)

(assert (=> bm!721396 m!8229982))

(declare-fun m!8229984 () Bool)

(assert (=> b!7783194 m!8229984))

(assert (=> bm!721326 d!2345330))

(declare-fun d!2345332 () Bool)

(assert (=> d!2345332 (= (nullable!9224 lt!2673250) (nullableFct!3609 lt!2673250))))

(declare-fun bs!1966259 () Bool)

(assert (= bs!1966259 d!2345332))

(declare-fun m!8229986 () Bool)

(assert (=> bs!1966259 m!8229986))

(assert (=> b!7782872 d!2345332))

(assert (=> bm!721336 d!2345304))

(declare-fun call!721405 () Bool)

(declare-fun c!1434014 () Bool)

(declare-fun bm!721398 () Bool)

(assert (=> bm!721398 (= call!721405 (validRegex!11255 (ite c!1434014 (regTwo!42195 (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))) (regTwo!42194 (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))))))))

(declare-fun b!7783195 () Bool)

(declare-fun e!4610240 () Bool)

(assert (=> b!7783195 (= e!4610240 call!721405)))

(declare-fun b!7783196 () Bool)

(declare-fun e!4610236 () Bool)

(declare-fun e!4610241 () Bool)

(assert (=> b!7783196 (= e!4610236 e!4610241)))

(declare-fun res!3102378 () Bool)

(assert (=> b!7783196 (=> (not res!3102378) (not e!4610241))))

(declare-fun call!721404 () Bool)

(assert (=> b!7783196 (= res!3102378 call!721404)))

(declare-fun call!721403 () Bool)

(declare-fun bm!721399 () Bool)

(declare-fun c!1434013 () Bool)

(assert (=> bm!721399 (= call!721403 (validRegex!11255 (ite c!1434013 (reg!21170 (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))) (ite c!1434014 (regOne!42195 (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))) (regOne!42194 (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279))))))))))

(declare-fun b!7783197 () Bool)

(declare-fun e!4610235 () Bool)

(assert (=> b!7783197 (= e!4610235 call!721403)))

(declare-fun b!7783198 () Bool)

(declare-fun e!4610239 () Bool)

(declare-fun e!4610237 () Bool)

(assert (=> b!7783198 (= e!4610239 e!4610237)))

(assert (=> b!7783198 (= c!1434013 ((_ is Star!20841) (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))))))

(declare-fun b!7783200 () Bool)

(declare-fun e!4610238 () Bool)

(assert (=> b!7783200 (= e!4610237 e!4610238)))

(assert (=> b!7783200 (= c!1434014 ((_ is Union!20841) (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))))))

(declare-fun bm!721400 () Bool)

(assert (=> bm!721400 (= call!721404 call!721403)))

(declare-fun b!7783201 () Bool)

(declare-fun res!3102379 () Bool)

(assert (=> b!7783201 (=> (not res!3102379) (not e!4610240))))

(assert (=> b!7783201 (= res!3102379 call!721404)))

(assert (=> b!7783201 (= e!4610238 e!4610240)))

(declare-fun b!7783202 () Bool)

(declare-fun res!3102382 () Bool)

(assert (=> b!7783202 (=> res!3102382 e!4610236)))

(assert (=> b!7783202 (= res!3102382 (not ((_ is Concat!29686) (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279))))))))

(assert (=> b!7783202 (= e!4610238 e!4610236)))

(declare-fun b!7783203 () Bool)

(assert (=> b!7783203 (= e!4610237 e!4610235)))

(declare-fun res!3102381 () Bool)

(assert (=> b!7783203 (= res!3102381 (not (nullable!9224 (reg!21170 (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))))))))

(assert (=> b!7783203 (=> (not res!3102381) (not e!4610235))))

(declare-fun b!7783199 () Bool)

(assert (=> b!7783199 (= e!4610241 call!721405)))

(declare-fun d!2345334 () Bool)

(declare-fun res!3102380 () Bool)

(assert (=> d!2345334 (=> res!3102380 e!4610239)))

(assert (=> d!2345334 (= res!3102380 ((_ is ElementMatch!20841) (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))))))

(assert (=> d!2345334 (= (validRegex!11255 (ite c!1433942 (reg!21170 r1!6279) (ite c!1433943 (regOne!42195 r1!6279) (regOne!42194 r1!6279)))) e!4610239)))

(assert (= (and d!2345334 (not res!3102380)) b!7783198))

(assert (= (and b!7783198 c!1434013) b!7783203))

(assert (= (and b!7783198 (not c!1434013)) b!7783200))

(assert (= (and b!7783203 res!3102381) b!7783197))

(assert (= (and b!7783200 c!1434014) b!7783201))

(assert (= (and b!7783200 (not c!1434014)) b!7783202))

(assert (= (and b!7783201 res!3102379) b!7783195))

(assert (= (and b!7783202 (not res!3102382)) b!7783196))

(assert (= (and b!7783196 res!3102378) b!7783199))

(assert (= (or b!7783201 b!7783196) bm!721400))

(assert (= (or b!7783195 b!7783199) bm!721398))

(assert (= (or b!7783197 bm!721400) bm!721399))

(declare-fun m!8229988 () Bool)

(assert (=> bm!721398 m!8229988))

(declare-fun m!8229990 () Bool)

(assert (=> bm!721399 m!8229990))

(declare-fun m!8229992 () Bool)

(assert (=> b!7783203 m!8229992))

(assert (=> bm!721338 d!2345334))

(assert (=> b!7782891 d!2345310))

(declare-fun d!2345336 () Bool)

(assert (=> d!2345336 (= (nullable!9224 (regOne!42194 lt!2673250)) (nullableFct!3609 (regOne!42194 lt!2673250)))))

(declare-fun bs!1966260 () Bool)

(assert (= bs!1966260 d!2345336))

(declare-fun m!8229994 () Bool)

(assert (=> bs!1966260 m!8229994))

(assert (=> b!7782962 d!2345336))

(declare-fun d!2345338 () Bool)

(assert (=> d!2345338 (= (nullable!9224 (reg!21170 r1!6279)) (nullableFct!3609 (reg!21170 r1!6279)))))

(declare-fun bs!1966261 () Bool)

(assert (= bs!1966261 d!2345338))

(declare-fun m!8229996 () Bool)

(assert (=> bs!1966261 m!8229996))

(assert (=> b!7782884 d!2345338))

(declare-fun bm!721401 () Bool)

(declare-fun call!721408 () Bool)

(declare-fun c!1434016 () Bool)

(assert (=> bm!721401 (= call!721408 (validRegex!11255 (ite c!1434016 (regTwo!42195 lt!2673261) (regTwo!42194 lt!2673261))))))

(declare-fun b!7783204 () Bool)

(declare-fun e!4610247 () Bool)

(assert (=> b!7783204 (= e!4610247 call!721408)))

(declare-fun b!7783205 () Bool)

(declare-fun e!4610243 () Bool)

(declare-fun e!4610248 () Bool)

(assert (=> b!7783205 (= e!4610243 e!4610248)))

(declare-fun res!3102383 () Bool)

(assert (=> b!7783205 (=> (not res!3102383) (not e!4610248))))

(declare-fun call!721407 () Bool)

(assert (=> b!7783205 (= res!3102383 call!721407)))

(declare-fun bm!721402 () Bool)

(declare-fun c!1434015 () Bool)

(declare-fun call!721406 () Bool)

(assert (=> bm!721402 (= call!721406 (validRegex!11255 (ite c!1434015 (reg!21170 lt!2673261) (ite c!1434016 (regOne!42195 lt!2673261) (regOne!42194 lt!2673261)))))))

(declare-fun b!7783206 () Bool)

(declare-fun e!4610242 () Bool)

(assert (=> b!7783206 (= e!4610242 call!721406)))

(declare-fun b!7783207 () Bool)

(declare-fun e!4610246 () Bool)

(declare-fun e!4610244 () Bool)

(assert (=> b!7783207 (= e!4610246 e!4610244)))

(assert (=> b!7783207 (= c!1434015 ((_ is Star!20841) lt!2673261))))

(declare-fun b!7783209 () Bool)

(declare-fun e!4610245 () Bool)

(assert (=> b!7783209 (= e!4610244 e!4610245)))

(assert (=> b!7783209 (= c!1434016 ((_ is Union!20841) lt!2673261))))

(declare-fun bm!721403 () Bool)

(assert (=> bm!721403 (= call!721407 call!721406)))

(declare-fun b!7783210 () Bool)

(declare-fun res!3102384 () Bool)

(assert (=> b!7783210 (=> (not res!3102384) (not e!4610247))))

(assert (=> b!7783210 (= res!3102384 call!721407)))

(assert (=> b!7783210 (= e!4610245 e!4610247)))

(declare-fun b!7783211 () Bool)

(declare-fun res!3102387 () Bool)

(assert (=> b!7783211 (=> res!3102387 e!4610243)))

(assert (=> b!7783211 (= res!3102387 (not ((_ is Concat!29686) lt!2673261)))))

(assert (=> b!7783211 (= e!4610245 e!4610243)))

(declare-fun b!7783212 () Bool)

(assert (=> b!7783212 (= e!4610244 e!4610242)))

(declare-fun res!3102386 () Bool)

(assert (=> b!7783212 (= res!3102386 (not (nullable!9224 (reg!21170 lt!2673261))))))

(assert (=> b!7783212 (=> (not res!3102386) (not e!4610242))))

(declare-fun b!7783208 () Bool)

(assert (=> b!7783208 (= e!4610248 call!721408)))

(declare-fun d!2345340 () Bool)

(declare-fun res!3102385 () Bool)

(assert (=> d!2345340 (=> res!3102385 e!4610246)))

(assert (=> d!2345340 (= res!3102385 ((_ is ElementMatch!20841) lt!2673261))))

(assert (=> d!2345340 (= (validRegex!11255 lt!2673261) e!4610246)))

(assert (= (and d!2345340 (not res!3102385)) b!7783207))

(assert (= (and b!7783207 c!1434015) b!7783212))

(assert (= (and b!7783207 (not c!1434015)) b!7783209))

(assert (= (and b!7783212 res!3102386) b!7783206))

(assert (= (and b!7783209 c!1434016) b!7783210))

(assert (= (and b!7783209 (not c!1434016)) b!7783211))

(assert (= (and b!7783210 res!3102384) b!7783204))

(assert (= (and b!7783211 (not res!3102387)) b!7783205))

(assert (= (and b!7783205 res!3102383) b!7783208))

(assert (= (or b!7783210 b!7783205) bm!721403))

(assert (= (or b!7783204 b!7783208) bm!721401))

(assert (= (or b!7783206 bm!721403) bm!721402))

(declare-fun m!8229998 () Bool)

(assert (=> bm!721401 m!8229998))

(declare-fun m!8230000 () Bool)

(assert (=> bm!721402 m!8230000))

(declare-fun m!8230002 () Bool)

(assert (=> b!7783212 m!8230002))

(assert (=> d!2345288 d!2345340))

(assert (=> d!2345288 d!2345306))

(declare-fun d!2345342 () Bool)

(assert (=> d!2345342 (= (nullable!9224 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) (nullableFct!3609 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun bs!1966262 () Bool)

(assert (= bs!1966262 d!2345342))

(assert (=> bs!1966262 m!8229802))

(declare-fun m!8230004 () Bool)

(assert (=> bs!1966262 m!8230004))

(assert (=> b!7782895 d!2345342))

(declare-fun b!7783213 () Bool)

(declare-fun e!4610250 () Bool)

(declare-fun e!4610254 () Bool)

(assert (=> b!7783213 (= e!4610250 e!4610254)))

(declare-fun c!1434017 () Bool)

(assert (=> b!7783213 (= c!1434017 ((_ is EmptyLang!20841) (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292)))))))

(declare-fun b!7783214 () Bool)

(declare-fun res!3102391 () Bool)

(declare-fun e!4610251 () Bool)

(assert (=> b!7783214 (=> res!3102391 e!4610251)))

(assert (=> b!7783214 (= res!3102391 (not (isEmpty!42192 (tail!15460 (tail!15460 (t!388415 s!14292))))))))

(declare-fun b!7783215 () Bool)

(declare-fun res!3102392 () Bool)

(declare-fun e!4610253 () Bool)

(assert (=> b!7783215 (=> (not res!3102392) (not e!4610253))))

(declare-fun call!721409 () Bool)

(assert (=> b!7783215 (= res!3102392 (not call!721409))))

(declare-fun b!7783216 () Bool)

(declare-fun e!4610252 () Bool)

(assert (=> b!7783216 (= e!4610252 e!4610251)))

(declare-fun res!3102395 () Bool)

(assert (=> b!7783216 (=> res!3102395 e!4610251)))

(assert (=> b!7783216 (= res!3102395 call!721409)))

(declare-fun b!7783217 () Bool)

(assert (=> b!7783217 (= e!4610251 (not (= (head!15919 (tail!15460 (t!388415 s!14292))) (c!1433914 (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292)))))))))

(declare-fun b!7783218 () Bool)

(declare-fun res!3102394 () Bool)

(declare-fun e!4610255 () Bool)

(assert (=> b!7783218 (=> res!3102394 e!4610255)))

(assert (=> b!7783218 (= res!3102394 (not ((_ is ElementMatch!20841) (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292))))))))

(assert (=> b!7783218 (= e!4610254 e!4610255)))

(declare-fun b!7783219 () Bool)

(assert (=> b!7783219 (= e!4610253 (= (head!15919 (tail!15460 (t!388415 s!14292))) (c!1433914 (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292))))))))

(declare-fun b!7783221 () Bool)

(declare-fun res!3102388 () Bool)

(assert (=> b!7783221 (=> (not res!3102388) (not e!4610253))))

(assert (=> b!7783221 (= res!3102388 (isEmpty!42192 (tail!15460 (tail!15460 (t!388415 s!14292)))))))

(declare-fun b!7783222 () Bool)

(assert (=> b!7783222 (= e!4610255 e!4610252)))

(declare-fun res!3102393 () Bool)

(assert (=> b!7783222 (=> (not res!3102393) (not e!4610252))))

(declare-fun lt!2673269 () Bool)

(assert (=> b!7783222 (= res!3102393 (not lt!2673269))))

(declare-fun b!7783223 () Bool)

(declare-fun e!4610249 () Bool)

(assert (=> b!7783223 (= e!4610249 (nullable!9224 (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292)))))))

(declare-fun bm!721404 () Bool)

(assert (=> bm!721404 (= call!721409 (isEmpty!42192 (tail!15460 (t!388415 s!14292))))))

(declare-fun b!7783224 () Bool)

(assert (=> b!7783224 (= e!4610249 (matchR!10301 (derivativeStep!6178 (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292))) (head!15919 (tail!15460 (t!388415 s!14292)))) (tail!15460 (tail!15460 (t!388415 s!14292)))))))

(declare-fun b!7783220 () Bool)

(assert (=> b!7783220 (= e!4610254 (not lt!2673269))))

(declare-fun d!2345344 () Bool)

(assert (=> d!2345344 e!4610250))

(declare-fun c!1434019 () Bool)

(assert (=> d!2345344 (= c!1434019 ((_ is EmptyExpr!20841) (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292)))))))

(assert (=> d!2345344 (= lt!2673269 e!4610249)))

(declare-fun c!1434018 () Bool)

(assert (=> d!2345344 (= c!1434018 (isEmpty!42192 (tail!15460 (t!388415 s!14292))))))

(assert (=> d!2345344 (validRegex!11255 (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292))))))

(assert (=> d!2345344 (= (matchR!10301 (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292))) (tail!15460 (t!388415 s!14292))) lt!2673269)))

(declare-fun b!7783225 () Bool)

(assert (=> b!7783225 (= e!4610250 (= lt!2673269 call!721409))))

(declare-fun b!7783226 () Bool)

(declare-fun res!3102390 () Bool)

(assert (=> b!7783226 (=> res!3102390 e!4610255)))

(assert (=> b!7783226 (= res!3102390 e!4610253)))

(declare-fun res!3102389 () Bool)

(assert (=> b!7783226 (=> (not res!3102389) (not e!4610253))))

(assert (=> b!7783226 (= res!3102389 lt!2673269)))

(assert (= (and d!2345344 c!1434018) b!7783223))

(assert (= (and d!2345344 (not c!1434018)) b!7783224))

(assert (= (and d!2345344 c!1434019) b!7783225))

(assert (= (and d!2345344 (not c!1434019)) b!7783213))

(assert (= (and b!7783213 c!1434017) b!7783220))

(assert (= (and b!7783213 (not c!1434017)) b!7783218))

(assert (= (and b!7783218 (not res!3102394)) b!7783226))

(assert (= (and b!7783226 res!3102389) b!7783215))

(assert (= (and b!7783215 res!3102392) b!7783221))

(assert (= (and b!7783221 res!3102388) b!7783219))

(assert (= (and b!7783226 (not res!3102390)) b!7783222))

(assert (= (and b!7783222 res!3102393) b!7783216))

(assert (= (and b!7783216 (not res!3102395)) b!7783214))

(assert (= (and b!7783214 (not res!3102391)) b!7783217))

(assert (= (or b!7783225 b!7783215 b!7783216) bm!721404))

(assert (=> b!7783214 m!8229844))

(declare-fun m!8230006 () Bool)

(assert (=> b!7783214 m!8230006))

(assert (=> b!7783214 m!8230006))

(declare-fun m!8230008 () Bool)

(assert (=> b!7783214 m!8230008))

(assert (=> b!7783223 m!8229856))

(declare-fun m!8230010 () Bool)

(assert (=> b!7783223 m!8230010))

(assert (=> b!7783221 m!8229844))

(assert (=> b!7783221 m!8230006))

(assert (=> b!7783221 m!8230006))

(assert (=> b!7783221 m!8230008))

(assert (=> bm!721404 m!8229844))

(assert (=> bm!721404 m!8229846))

(assert (=> b!7783217 m!8229844))

(declare-fun m!8230012 () Bool)

(assert (=> b!7783217 m!8230012))

(assert (=> d!2345344 m!8229844))

(assert (=> d!2345344 m!8229846))

(assert (=> d!2345344 m!8229856))

(declare-fun m!8230014 () Bool)

(assert (=> d!2345344 m!8230014))

(assert (=> b!7783219 m!8229844))

(assert (=> b!7783219 m!8230012))

(assert (=> b!7783224 m!8229844))

(assert (=> b!7783224 m!8230012))

(assert (=> b!7783224 m!8229856))

(assert (=> b!7783224 m!8230012))

(declare-fun m!8230016 () Bool)

(assert (=> b!7783224 m!8230016))

(assert (=> b!7783224 m!8229844))

(assert (=> b!7783224 m!8230006))

(assert (=> b!7783224 m!8230016))

(assert (=> b!7783224 m!8230006))

(declare-fun m!8230018 () Bool)

(assert (=> b!7783224 m!8230018))

(assert (=> b!7782896 d!2345344))

(declare-fun d!2345346 () Bool)

(declare-fun lt!2673270 () Regex!20841)

(assert (=> d!2345346 (validRegex!11255 lt!2673270)))

(declare-fun e!4610256 () Regex!20841)

(assert (=> d!2345346 (= lt!2673270 e!4610256)))

(declare-fun c!1434020 () Bool)

(assert (=> d!2345346 (= c!1434020 (or ((_ is EmptyExpr!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) ((_ is EmptyLang!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))))

(assert (=> d!2345346 (validRegex!11255 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))

(assert (=> d!2345346 (= (derivativeStep!6178 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)) (head!15919 (t!388415 s!14292))) lt!2673270)))

(declare-fun c!1434024 () Bool)

(declare-fun call!721413 () Regex!20841)

(declare-fun bm!721405 () Bool)

(assert (=> bm!721405 (= call!721413 (derivativeStep!6178 (ite c!1434024 (regOne!42195 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) (regOne!42194 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))) (head!15919 (t!388415 s!14292))))))

(declare-fun bm!721406 () Bool)

(declare-fun call!721410 () Regex!20841)

(declare-fun call!721411 () Regex!20841)

(assert (=> bm!721406 (= call!721410 call!721411)))

(declare-fun b!7783227 () Bool)

(declare-fun e!4610258 () Regex!20841)

(assert (=> b!7783227 (= e!4610256 e!4610258)))

(declare-fun c!1434021 () Bool)

(assert (=> b!7783227 (= c!1434021 ((_ is ElementMatch!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun bm!721407 () Bool)

(declare-fun call!721412 () Regex!20841)

(assert (=> bm!721407 (= call!721412 call!721410)))

(declare-fun b!7783228 () Bool)

(assert (=> b!7783228 (= c!1434024 ((_ is Union!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun e!4610260 () Regex!20841)

(assert (=> b!7783228 (= e!4610258 e!4610260)))

(declare-fun b!7783229 () Bool)

(assert (=> b!7783229 (= e!4610260 (Union!20841 call!721413 call!721411))))

(declare-fun b!7783230 () Bool)

(assert (=> b!7783230 (= e!4610258 (ite (= (head!15919 (t!388415 s!14292)) (c!1433914 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))) EmptyExpr!20841 EmptyLang!20841))))

(declare-fun b!7783231 () Bool)

(declare-fun e!4610259 () Regex!20841)

(assert (=> b!7783231 (= e!4610260 e!4610259)))

(declare-fun c!1434022 () Bool)

(assert (=> b!7783231 (= c!1434022 ((_ is Star!20841) (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun b!7783232 () Bool)

(assert (=> b!7783232 (= e!4610256 EmptyLang!20841)))

(declare-fun b!7783233 () Bool)

(declare-fun c!1434023 () Bool)

(assert (=> b!7783233 (= c!1434023 (nullable!9224 (regOne!42194 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))))

(declare-fun e!4610257 () Regex!20841)

(assert (=> b!7783233 (= e!4610259 e!4610257)))

(declare-fun bm!721408 () Bool)

(assert (=> bm!721408 (= call!721411 (derivativeStep!6178 (ite c!1434024 (regTwo!42195 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) (ite c!1434022 (reg!21170 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) (ite c!1434023 (regTwo!42194 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))) (regOne!42194 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))))) (head!15919 (t!388415 s!14292))))))

(declare-fun b!7783234 () Bool)

(assert (=> b!7783234 (= e!4610257 (Union!20841 (Concat!29686 call!721413 (regTwo!42194 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))) call!721412))))

(declare-fun b!7783235 () Bool)

(assert (=> b!7783235 (= e!4610259 (Concat!29686 call!721410 (derivativeStep!6178 lt!2673250 (h!80004 s!14292))))))

(declare-fun b!7783236 () Bool)

(assert (=> b!7783236 (= e!4610257 (Union!20841 (Concat!29686 call!721412 (regTwo!42194 (derivativeStep!6178 lt!2673250 (h!80004 s!14292)))) EmptyLang!20841))))

(assert (= (and d!2345346 c!1434020) b!7783232))

(assert (= (and d!2345346 (not c!1434020)) b!7783227))

(assert (= (and b!7783227 c!1434021) b!7783230))

(assert (= (and b!7783227 (not c!1434021)) b!7783228))

(assert (= (and b!7783228 c!1434024) b!7783229))

(assert (= (and b!7783228 (not c!1434024)) b!7783231))

(assert (= (and b!7783231 c!1434022) b!7783235))

(assert (= (and b!7783231 (not c!1434022)) b!7783233))

(assert (= (and b!7783233 c!1434023) b!7783234))

(assert (= (and b!7783233 (not c!1434023)) b!7783236))

(assert (= (or b!7783234 b!7783236) bm!721407))

(assert (= (or b!7783235 bm!721407) bm!721406))

(assert (= (or b!7783229 bm!721406) bm!721408))

(assert (= (or b!7783229 b!7783234) bm!721405))

(declare-fun m!8230020 () Bool)

(assert (=> d!2345346 m!8230020))

(assert (=> d!2345346 m!8229802))

(assert (=> d!2345346 m!8229854))

(assert (=> bm!721405 m!8229852))

(declare-fun m!8230022 () Bool)

(assert (=> bm!721405 m!8230022))

(declare-fun m!8230024 () Bool)

(assert (=> b!7783233 m!8230024))

(assert (=> bm!721408 m!8229852))

(declare-fun m!8230026 () Bool)

(assert (=> bm!721408 m!8230026))

(assert (=> b!7782896 d!2345346))

(assert (=> b!7782896 d!2345310))

(assert (=> b!7782896 d!2345316))

(assert (=> bm!721340 d!2345318))

(declare-fun b!7783239 () Bool)

(declare-fun e!4610261 () Bool)

(declare-fun tp!2288007 () Bool)

(assert (=> b!7783239 (= e!4610261 tp!2288007)))

(declare-fun b!7783240 () Bool)

(declare-fun tp!2288004 () Bool)

(declare-fun tp!2288005 () Bool)

(assert (=> b!7783240 (= e!4610261 (and tp!2288004 tp!2288005))))

(declare-fun b!7783237 () Bool)

(assert (=> b!7783237 (= e!4610261 tp_is_empty!52037)))

(assert (=> b!7782999 (= tp!2287888 e!4610261)))

(declare-fun b!7783238 () Bool)

(declare-fun tp!2288008 () Bool)

(declare-fun tp!2288006 () Bool)

(assert (=> b!7783238 (= e!4610261 (and tp!2288008 tp!2288006))))

(assert (= (and b!7782999 ((_ is ElementMatch!20841) (regOne!42195 (regOne!42195 r2!6217)))) b!7783237))

(assert (= (and b!7782999 ((_ is Concat!29686) (regOne!42195 (regOne!42195 r2!6217)))) b!7783238))

(assert (= (and b!7782999 ((_ is Star!20841) (regOne!42195 (regOne!42195 r2!6217)))) b!7783239))

(assert (= (and b!7782999 ((_ is Union!20841) (regOne!42195 (regOne!42195 r2!6217)))) b!7783240))

(declare-fun b!7783243 () Bool)

(declare-fun e!4610262 () Bool)

(declare-fun tp!2288012 () Bool)

(assert (=> b!7783243 (= e!4610262 tp!2288012)))

(declare-fun b!7783244 () Bool)

(declare-fun tp!2288009 () Bool)

(declare-fun tp!2288010 () Bool)

(assert (=> b!7783244 (= e!4610262 (and tp!2288009 tp!2288010))))

(declare-fun b!7783241 () Bool)

(assert (=> b!7783241 (= e!4610262 tp_is_empty!52037)))

(assert (=> b!7782999 (= tp!2287889 e!4610262)))

(declare-fun b!7783242 () Bool)

(declare-fun tp!2288013 () Bool)

(declare-fun tp!2288011 () Bool)

(assert (=> b!7783242 (= e!4610262 (and tp!2288013 tp!2288011))))

(assert (= (and b!7782999 ((_ is ElementMatch!20841) (regTwo!42195 (regOne!42195 r2!6217)))) b!7783241))

(assert (= (and b!7782999 ((_ is Concat!29686) (regTwo!42195 (regOne!42195 r2!6217)))) b!7783242))

(assert (= (and b!7782999 ((_ is Star!20841) (regTwo!42195 (regOne!42195 r2!6217)))) b!7783243))

(assert (= (and b!7782999 ((_ is Union!20841) (regTwo!42195 (regOne!42195 r2!6217)))) b!7783244))

(declare-fun b!7783247 () Bool)

(declare-fun e!4610263 () Bool)

(declare-fun tp!2288017 () Bool)

(assert (=> b!7783247 (= e!4610263 tp!2288017)))

(declare-fun b!7783248 () Bool)

(declare-fun tp!2288014 () Bool)

(declare-fun tp!2288015 () Bool)

(assert (=> b!7783248 (= e!4610263 (and tp!2288014 tp!2288015))))

(declare-fun b!7783245 () Bool)

(assert (=> b!7783245 (= e!4610263 tp_is_empty!52037)))

(assert (=> b!7782998 (= tp!2287891 e!4610263)))

(declare-fun b!7783246 () Bool)

(declare-fun tp!2288018 () Bool)

(declare-fun tp!2288016 () Bool)

(assert (=> b!7783246 (= e!4610263 (and tp!2288018 tp!2288016))))

(assert (= (and b!7782998 ((_ is ElementMatch!20841) (reg!21170 (regOne!42195 r2!6217)))) b!7783245))

(assert (= (and b!7782998 ((_ is Concat!29686) (reg!21170 (regOne!42195 r2!6217)))) b!7783246))

(assert (= (and b!7782998 ((_ is Star!20841) (reg!21170 (regOne!42195 r2!6217)))) b!7783247))

(assert (= (and b!7782998 ((_ is Union!20841) (reg!21170 (regOne!42195 r2!6217)))) b!7783248))

(declare-fun b!7783251 () Bool)

(declare-fun e!4610264 () Bool)

(declare-fun tp!2288022 () Bool)

(assert (=> b!7783251 (= e!4610264 tp!2288022)))

(declare-fun b!7783252 () Bool)

(declare-fun tp!2288019 () Bool)

(declare-fun tp!2288020 () Bool)

(assert (=> b!7783252 (= e!4610264 (and tp!2288019 tp!2288020))))

(declare-fun b!7783249 () Bool)

(assert (=> b!7783249 (= e!4610264 tp_is_empty!52037)))

(assert (=> b!7783035 (= tp!2287934 e!4610264)))

(declare-fun b!7783250 () Bool)

(declare-fun tp!2288023 () Bool)

(declare-fun tp!2288021 () Bool)

(assert (=> b!7783250 (= e!4610264 (and tp!2288023 tp!2288021))))

(assert (= (and b!7783035 ((_ is ElementMatch!20841) (reg!21170 (regOne!42194 r1!6279)))) b!7783249))

(assert (= (and b!7783035 ((_ is Concat!29686) (reg!21170 (regOne!42194 r1!6279)))) b!7783250))

(assert (= (and b!7783035 ((_ is Star!20841) (reg!21170 (regOne!42194 r1!6279)))) b!7783251))

(assert (= (and b!7783035 ((_ is Union!20841) (reg!21170 (regOne!42194 r1!6279)))) b!7783252))

(declare-fun b!7783255 () Bool)

(declare-fun e!4610265 () Bool)

(declare-fun tp!2288027 () Bool)

(assert (=> b!7783255 (= e!4610265 tp!2288027)))

(declare-fun b!7783256 () Bool)

(declare-fun tp!2288024 () Bool)

(declare-fun tp!2288025 () Bool)

(assert (=> b!7783256 (= e!4610265 (and tp!2288024 tp!2288025))))

(declare-fun b!7783253 () Bool)

(assert (=> b!7783253 (= e!4610265 tp_is_empty!52037)))

(assert (=> b!7783013 (= tp!2287912 e!4610265)))

(declare-fun b!7783254 () Bool)

(declare-fun tp!2288028 () Bool)

(declare-fun tp!2288026 () Bool)

(assert (=> b!7783254 (= e!4610265 (and tp!2288028 tp!2288026))))

(assert (= (and b!7783013 ((_ is ElementMatch!20841) (regOne!42194 (reg!21170 r2!6217)))) b!7783253))

(assert (= (and b!7783013 ((_ is Concat!29686) (regOne!42194 (reg!21170 r2!6217)))) b!7783254))

(assert (= (and b!7783013 ((_ is Star!20841) (regOne!42194 (reg!21170 r2!6217)))) b!7783255))

(assert (= (and b!7783013 ((_ is Union!20841) (regOne!42194 (reg!21170 r2!6217)))) b!7783256))

(declare-fun b!7783259 () Bool)

(declare-fun e!4610266 () Bool)

(declare-fun tp!2288032 () Bool)

(assert (=> b!7783259 (= e!4610266 tp!2288032)))

(declare-fun b!7783260 () Bool)

(declare-fun tp!2288029 () Bool)

(declare-fun tp!2288030 () Bool)

(assert (=> b!7783260 (= e!4610266 (and tp!2288029 tp!2288030))))

(declare-fun b!7783257 () Bool)

(assert (=> b!7783257 (= e!4610266 tp_is_empty!52037)))

(assert (=> b!7783013 (= tp!2287910 e!4610266)))

(declare-fun b!7783258 () Bool)

(declare-fun tp!2288033 () Bool)

(declare-fun tp!2288031 () Bool)

(assert (=> b!7783258 (= e!4610266 (and tp!2288033 tp!2288031))))

(assert (= (and b!7783013 ((_ is ElementMatch!20841) (regTwo!42194 (reg!21170 r2!6217)))) b!7783257))

(assert (= (and b!7783013 ((_ is Concat!29686) (regTwo!42194 (reg!21170 r2!6217)))) b!7783258))

(assert (= (and b!7783013 ((_ is Star!20841) (regTwo!42194 (reg!21170 r2!6217)))) b!7783259))

(assert (= (and b!7783013 ((_ is Union!20841) (regTwo!42194 (reg!21170 r2!6217)))) b!7783260))

(declare-fun b!7783263 () Bool)

(declare-fun e!4610267 () Bool)

(declare-fun tp!2288037 () Bool)

(assert (=> b!7783263 (= e!4610267 tp!2288037)))

(declare-fun b!7783264 () Bool)

(declare-fun tp!2288034 () Bool)

(declare-fun tp!2288035 () Bool)

(assert (=> b!7783264 (= e!4610267 (and tp!2288034 tp!2288035))))

(declare-fun b!7783261 () Bool)

(assert (=> b!7783261 (= e!4610267 tp_is_empty!52037)))

(assert (=> b!7783015 (= tp!2287908 e!4610267)))

(declare-fun b!7783262 () Bool)

(declare-fun tp!2288038 () Bool)

(declare-fun tp!2288036 () Bool)

(assert (=> b!7783262 (= e!4610267 (and tp!2288038 tp!2288036))))

(assert (= (and b!7783015 ((_ is ElementMatch!20841) (regOne!42195 (reg!21170 r2!6217)))) b!7783261))

(assert (= (and b!7783015 ((_ is Concat!29686) (regOne!42195 (reg!21170 r2!6217)))) b!7783262))

(assert (= (and b!7783015 ((_ is Star!20841) (regOne!42195 (reg!21170 r2!6217)))) b!7783263))

(assert (= (and b!7783015 ((_ is Union!20841) (regOne!42195 (reg!21170 r2!6217)))) b!7783264))

(declare-fun b!7783267 () Bool)

(declare-fun e!4610268 () Bool)

(declare-fun tp!2288042 () Bool)

(assert (=> b!7783267 (= e!4610268 tp!2288042)))

(declare-fun b!7783268 () Bool)

(declare-fun tp!2288039 () Bool)

(declare-fun tp!2288040 () Bool)

(assert (=> b!7783268 (= e!4610268 (and tp!2288039 tp!2288040))))

(declare-fun b!7783265 () Bool)

(assert (=> b!7783265 (= e!4610268 tp_is_empty!52037)))

(assert (=> b!7783015 (= tp!2287909 e!4610268)))

(declare-fun b!7783266 () Bool)

(declare-fun tp!2288043 () Bool)

(declare-fun tp!2288041 () Bool)

(assert (=> b!7783266 (= e!4610268 (and tp!2288043 tp!2288041))))

(assert (= (and b!7783015 ((_ is ElementMatch!20841) (regTwo!42195 (reg!21170 r2!6217)))) b!7783265))

(assert (= (and b!7783015 ((_ is Concat!29686) (regTwo!42195 (reg!21170 r2!6217)))) b!7783266))

(assert (= (and b!7783015 ((_ is Star!20841) (regTwo!42195 (reg!21170 r2!6217)))) b!7783267))

(assert (= (and b!7783015 ((_ is Union!20841) (regTwo!42195 (reg!21170 r2!6217)))) b!7783268))

(declare-fun b!7783271 () Bool)

(declare-fun e!4610269 () Bool)

(declare-fun tp!2288047 () Bool)

(assert (=> b!7783271 (= e!4610269 tp!2288047)))

(declare-fun b!7783272 () Bool)

(declare-fun tp!2288044 () Bool)

(declare-fun tp!2288045 () Bool)

(assert (=> b!7783272 (= e!4610269 (and tp!2288044 tp!2288045))))

(declare-fun b!7783269 () Bool)

(assert (=> b!7783269 (= e!4610269 tp_is_empty!52037)))

(assert (=> b!7783036 (= tp!2287931 e!4610269)))

(declare-fun b!7783270 () Bool)

(declare-fun tp!2288048 () Bool)

(declare-fun tp!2288046 () Bool)

(assert (=> b!7783270 (= e!4610269 (and tp!2288048 tp!2288046))))

(assert (= (and b!7783036 ((_ is ElementMatch!20841) (regOne!42195 (regOne!42194 r1!6279)))) b!7783269))

(assert (= (and b!7783036 ((_ is Concat!29686) (regOne!42195 (regOne!42194 r1!6279)))) b!7783270))

(assert (= (and b!7783036 ((_ is Star!20841) (regOne!42195 (regOne!42194 r1!6279)))) b!7783271))

(assert (= (and b!7783036 ((_ is Union!20841) (regOne!42195 (regOne!42194 r1!6279)))) b!7783272))

(declare-fun b!7783275 () Bool)

(declare-fun e!4610270 () Bool)

(declare-fun tp!2288052 () Bool)

(assert (=> b!7783275 (= e!4610270 tp!2288052)))

(declare-fun b!7783276 () Bool)

(declare-fun tp!2288049 () Bool)

(declare-fun tp!2288050 () Bool)

(assert (=> b!7783276 (= e!4610270 (and tp!2288049 tp!2288050))))

(declare-fun b!7783273 () Bool)

(assert (=> b!7783273 (= e!4610270 tp_is_empty!52037)))

(assert (=> b!7783036 (= tp!2287932 e!4610270)))

(declare-fun b!7783274 () Bool)

(declare-fun tp!2288053 () Bool)

(declare-fun tp!2288051 () Bool)

(assert (=> b!7783274 (= e!4610270 (and tp!2288053 tp!2288051))))

(assert (= (and b!7783036 ((_ is ElementMatch!20841) (regTwo!42195 (regOne!42194 r1!6279)))) b!7783273))

(assert (= (and b!7783036 ((_ is Concat!29686) (regTwo!42195 (regOne!42194 r1!6279)))) b!7783274))

(assert (= (and b!7783036 ((_ is Star!20841) (regTwo!42195 (regOne!42194 r1!6279)))) b!7783275))

(assert (= (and b!7783036 ((_ is Union!20841) (regTwo!42195 (regOne!42194 r1!6279)))) b!7783276))

(declare-fun b!7783279 () Bool)

(declare-fun e!4610271 () Bool)

(declare-fun tp!2288057 () Bool)

(assert (=> b!7783279 (= e!4610271 tp!2288057)))

(declare-fun b!7783280 () Bool)

(declare-fun tp!2288054 () Bool)

(declare-fun tp!2288055 () Bool)

(assert (=> b!7783280 (= e!4610271 (and tp!2288054 tp!2288055))))

(declare-fun b!7783277 () Bool)

(assert (=> b!7783277 (= e!4610271 tp_is_empty!52037)))

(assert (=> b!7783014 (= tp!2287911 e!4610271)))

(declare-fun b!7783278 () Bool)

(declare-fun tp!2288058 () Bool)

(declare-fun tp!2288056 () Bool)

(assert (=> b!7783278 (= e!4610271 (and tp!2288058 tp!2288056))))

(assert (= (and b!7783014 ((_ is ElementMatch!20841) (reg!21170 (reg!21170 r2!6217)))) b!7783277))

(assert (= (and b!7783014 ((_ is Concat!29686) (reg!21170 (reg!21170 r2!6217)))) b!7783278))

(assert (= (and b!7783014 ((_ is Star!20841) (reg!21170 (reg!21170 r2!6217)))) b!7783279))

(assert (= (and b!7783014 ((_ is Union!20841) (reg!21170 (reg!21170 r2!6217)))) b!7783280))

(declare-fun b!7783283 () Bool)

(declare-fun e!4610272 () Bool)

(declare-fun tp!2288062 () Bool)

(assert (=> b!7783283 (= e!4610272 tp!2288062)))

(declare-fun b!7783284 () Bool)

(declare-fun tp!2288059 () Bool)

(declare-fun tp!2288060 () Bool)

(assert (=> b!7783284 (= e!4610272 (and tp!2288059 tp!2288060))))

(declare-fun b!7783281 () Bool)

(assert (=> b!7783281 (= e!4610272 tp_is_empty!52037)))

(assert (=> b!7783005 (= tp!2287902 e!4610272)))

(declare-fun b!7783282 () Bool)

(declare-fun tp!2288063 () Bool)

(declare-fun tp!2288061 () Bool)

(assert (=> b!7783282 (= e!4610272 (and tp!2288063 tp!2288061))))

(assert (= (and b!7783005 ((_ is ElementMatch!20841) (regOne!42194 (regOne!42195 r1!6279)))) b!7783281))

(assert (= (and b!7783005 ((_ is Concat!29686) (regOne!42194 (regOne!42195 r1!6279)))) b!7783282))

(assert (= (and b!7783005 ((_ is Star!20841) (regOne!42194 (regOne!42195 r1!6279)))) b!7783283))

(assert (= (and b!7783005 ((_ is Union!20841) (regOne!42194 (regOne!42195 r1!6279)))) b!7783284))

(declare-fun b!7783287 () Bool)

(declare-fun e!4610273 () Bool)

(declare-fun tp!2288067 () Bool)

(assert (=> b!7783287 (= e!4610273 tp!2288067)))

(declare-fun b!7783288 () Bool)

(declare-fun tp!2288064 () Bool)

(declare-fun tp!2288065 () Bool)

(assert (=> b!7783288 (= e!4610273 (and tp!2288064 tp!2288065))))

(declare-fun b!7783285 () Bool)

(assert (=> b!7783285 (= e!4610273 tp_is_empty!52037)))

(assert (=> b!7783005 (= tp!2287900 e!4610273)))

(declare-fun b!7783286 () Bool)

(declare-fun tp!2288068 () Bool)

(declare-fun tp!2288066 () Bool)

(assert (=> b!7783286 (= e!4610273 (and tp!2288068 tp!2288066))))

(assert (= (and b!7783005 ((_ is ElementMatch!20841) (regTwo!42194 (regOne!42195 r1!6279)))) b!7783285))

(assert (= (and b!7783005 ((_ is Concat!29686) (regTwo!42194 (regOne!42195 r1!6279)))) b!7783286))

(assert (= (and b!7783005 ((_ is Star!20841) (regTwo!42194 (regOne!42195 r1!6279)))) b!7783287))

(assert (= (and b!7783005 ((_ is Union!20841) (regTwo!42194 (regOne!42195 r1!6279)))) b!7783288))

(declare-fun b!7783291 () Bool)

(declare-fun e!4610274 () Bool)

(declare-fun tp!2288072 () Bool)

(assert (=> b!7783291 (= e!4610274 tp!2288072)))

(declare-fun b!7783292 () Bool)

(declare-fun tp!2288069 () Bool)

(declare-fun tp!2288070 () Bool)

(assert (=> b!7783292 (= e!4610274 (and tp!2288069 tp!2288070))))

(declare-fun b!7783289 () Bool)

(assert (=> b!7783289 (= e!4610274 tp_is_empty!52037)))

(assert (=> b!7783034 (= tp!2287935 e!4610274)))

(declare-fun b!7783290 () Bool)

(declare-fun tp!2288073 () Bool)

(declare-fun tp!2288071 () Bool)

(assert (=> b!7783290 (= e!4610274 (and tp!2288073 tp!2288071))))

(assert (= (and b!7783034 ((_ is ElementMatch!20841) (regOne!42194 (regOne!42194 r1!6279)))) b!7783289))

(assert (= (and b!7783034 ((_ is Concat!29686) (regOne!42194 (regOne!42194 r1!6279)))) b!7783290))

(assert (= (and b!7783034 ((_ is Star!20841) (regOne!42194 (regOne!42194 r1!6279)))) b!7783291))

(assert (= (and b!7783034 ((_ is Union!20841) (regOne!42194 (regOne!42194 r1!6279)))) b!7783292))

(declare-fun b!7783295 () Bool)

(declare-fun e!4610275 () Bool)

(declare-fun tp!2288077 () Bool)

(assert (=> b!7783295 (= e!4610275 tp!2288077)))

(declare-fun b!7783296 () Bool)

(declare-fun tp!2288074 () Bool)

(declare-fun tp!2288075 () Bool)

(assert (=> b!7783296 (= e!4610275 (and tp!2288074 tp!2288075))))

(declare-fun b!7783293 () Bool)

(assert (=> b!7783293 (= e!4610275 tp_is_empty!52037)))

(assert (=> b!7783034 (= tp!2287933 e!4610275)))

(declare-fun b!7783294 () Bool)

(declare-fun tp!2288078 () Bool)

(declare-fun tp!2288076 () Bool)

(assert (=> b!7783294 (= e!4610275 (and tp!2288078 tp!2288076))))

(assert (= (and b!7783034 ((_ is ElementMatch!20841) (regTwo!42194 (regOne!42194 r1!6279)))) b!7783293))

(assert (= (and b!7783034 ((_ is Concat!29686) (regTwo!42194 (regOne!42194 r1!6279)))) b!7783294))

(assert (= (and b!7783034 ((_ is Star!20841) (regTwo!42194 (regOne!42194 r1!6279)))) b!7783295))

(assert (= (and b!7783034 ((_ is Union!20841) (regTwo!42194 (regOne!42194 r1!6279)))) b!7783296))

(declare-fun b!7783299 () Bool)

(declare-fun e!4610276 () Bool)

(declare-fun tp!2288082 () Bool)

(assert (=> b!7783299 (= e!4610276 tp!2288082)))

(declare-fun b!7783300 () Bool)

(declare-fun tp!2288079 () Bool)

(declare-fun tp!2288080 () Bool)

(assert (=> b!7783300 (= e!4610276 (and tp!2288079 tp!2288080))))

(declare-fun b!7783297 () Bool)

(assert (=> b!7783297 (= e!4610276 tp_is_empty!52037)))

(assert (=> b!7782997 (= tp!2287892 e!4610276)))

(declare-fun b!7783298 () Bool)

(declare-fun tp!2288083 () Bool)

(declare-fun tp!2288081 () Bool)

(assert (=> b!7783298 (= e!4610276 (and tp!2288083 tp!2288081))))

(assert (= (and b!7782997 ((_ is ElementMatch!20841) (regOne!42194 (regOne!42195 r2!6217)))) b!7783297))

(assert (= (and b!7782997 ((_ is Concat!29686) (regOne!42194 (regOne!42195 r2!6217)))) b!7783298))

(assert (= (and b!7782997 ((_ is Star!20841) (regOne!42194 (regOne!42195 r2!6217)))) b!7783299))

(assert (= (and b!7782997 ((_ is Union!20841) (regOne!42194 (regOne!42195 r2!6217)))) b!7783300))

(declare-fun b!7783303 () Bool)

(declare-fun e!4610277 () Bool)

(declare-fun tp!2288087 () Bool)

(assert (=> b!7783303 (= e!4610277 tp!2288087)))

(declare-fun b!7783304 () Bool)

(declare-fun tp!2288084 () Bool)

(declare-fun tp!2288085 () Bool)

(assert (=> b!7783304 (= e!4610277 (and tp!2288084 tp!2288085))))

(declare-fun b!7783301 () Bool)

(assert (=> b!7783301 (= e!4610277 tp_is_empty!52037)))

(assert (=> b!7782997 (= tp!2287890 e!4610277)))

(declare-fun b!7783302 () Bool)

(declare-fun tp!2288088 () Bool)

(declare-fun tp!2288086 () Bool)

(assert (=> b!7783302 (= e!4610277 (and tp!2288088 tp!2288086))))

(assert (= (and b!7782997 ((_ is ElementMatch!20841) (regTwo!42194 (regOne!42195 r2!6217)))) b!7783301))

(assert (= (and b!7782997 ((_ is Concat!29686) (regTwo!42194 (regOne!42195 r2!6217)))) b!7783302))

(assert (= (and b!7782997 ((_ is Star!20841) (regTwo!42194 (regOne!42195 r2!6217)))) b!7783303))

(assert (= (and b!7782997 ((_ is Union!20841) (regTwo!42194 (regOne!42195 r2!6217)))) b!7783304))

(declare-fun b!7783307 () Bool)

(declare-fun e!4610278 () Bool)

(declare-fun tp!2288092 () Bool)

(assert (=> b!7783307 (= e!4610278 tp!2288092)))

(declare-fun b!7783308 () Bool)

(declare-fun tp!2288089 () Bool)

(declare-fun tp!2288090 () Bool)

(assert (=> b!7783308 (= e!4610278 (and tp!2288089 tp!2288090))))

(declare-fun b!7783305 () Bool)

(assert (=> b!7783305 (= e!4610278 tp_is_empty!52037)))

(assert (=> b!7783007 (= tp!2287898 e!4610278)))

(declare-fun b!7783306 () Bool)

(declare-fun tp!2288093 () Bool)

(declare-fun tp!2288091 () Bool)

(assert (=> b!7783306 (= e!4610278 (and tp!2288093 tp!2288091))))

(assert (= (and b!7783007 ((_ is ElementMatch!20841) (regOne!42195 (regOne!42195 r1!6279)))) b!7783305))

(assert (= (and b!7783007 ((_ is Concat!29686) (regOne!42195 (regOne!42195 r1!6279)))) b!7783306))

(assert (= (and b!7783007 ((_ is Star!20841) (regOne!42195 (regOne!42195 r1!6279)))) b!7783307))

(assert (= (and b!7783007 ((_ is Union!20841) (regOne!42195 (regOne!42195 r1!6279)))) b!7783308))

(declare-fun b!7783311 () Bool)

(declare-fun e!4610279 () Bool)

(declare-fun tp!2288097 () Bool)

(assert (=> b!7783311 (= e!4610279 tp!2288097)))

(declare-fun b!7783312 () Bool)

(declare-fun tp!2288094 () Bool)

(declare-fun tp!2288095 () Bool)

(assert (=> b!7783312 (= e!4610279 (and tp!2288094 tp!2288095))))

(declare-fun b!7783309 () Bool)

(assert (=> b!7783309 (= e!4610279 tp_is_empty!52037)))

(assert (=> b!7783007 (= tp!2287899 e!4610279)))

(declare-fun b!7783310 () Bool)

(declare-fun tp!2288098 () Bool)

(declare-fun tp!2288096 () Bool)

(assert (=> b!7783310 (= e!4610279 (and tp!2288098 tp!2288096))))

(assert (= (and b!7783007 ((_ is ElementMatch!20841) (regTwo!42195 (regOne!42195 r1!6279)))) b!7783309))

(assert (= (and b!7783007 ((_ is Concat!29686) (regTwo!42195 (regOne!42195 r1!6279)))) b!7783310))

(assert (= (and b!7783007 ((_ is Star!20841) (regTwo!42195 (regOne!42195 r1!6279)))) b!7783311))

(assert (= (and b!7783007 ((_ is Union!20841) (regTwo!42195 (regOne!42195 r1!6279)))) b!7783312))

(declare-fun b!7783313 () Bool)

(declare-fun e!4610280 () Bool)

(declare-fun tp!2288099 () Bool)

(assert (=> b!7783313 (= e!4610280 (and tp_is_empty!52037 tp!2288099))))

(assert (=> b!7783028 (= tp!2287925 e!4610280)))

(assert (= (and b!7783028 ((_ is Cons!73556) (t!388415 (t!388415 s!14292)))) b!7783313))

(declare-fun b!7783316 () Bool)

(declare-fun e!4610281 () Bool)

(declare-fun tp!2288103 () Bool)

(assert (=> b!7783316 (= e!4610281 tp!2288103)))

(declare-fun b!7783317 () Bool)

(declare-fun tp!2288100 () Bool)

(declare-fun tp!2288101 () Bool)

(assert (=> b!7783317 (= e!4610281 (and tp!2288100 tp!2288101))))

(declare-fun b!7783314 () Bool)

(assert (=> b!7783314 (= e!4610281 tp_is_empty!52037)))

(assert (=> b!7783006 (= tp!2287901 e!4610281)))

(declare-fun b!7783315 () Bool)

(declare-fun tp!2288104 () Bool)

(declare-fun tp!2288102 () Bool)

(assert (=> b!7783315 (= e!4610281 (and tp!2288104 tp!2288102))))

(assert (= (and b!7783006 ((_ is ElementMatch!20841) (reg!21170 (regOne!42195 r1!6279)))) b!7783314))

(assert (= (and b!7783006 ((_ is Concat!29686) (reg!21170 (regOne!42195 r1!6279)))) b!7783315))

(assert (= (and b!7783006 ((_ is Star!20841) (reg!21170 (regOne!42195 r1!6279)))) b!7783316))

(assert (= (and b!7783006 ((_ is Union!20841) (reg!21170 (regOne!42195 r1!6279)))) b!7783317))

(declare-fun b!7783320 () Bool)

(declare-fun e!4610282 () Bool)

(declare-fun tp!2288108 () Bool)

(assert (=> b!7783320 (= e!4610282 tp!2288108)))

(declare-fun b!7783321 () Bool)

(declare-fun tp!2288105 () Bool)

(declare-fun tp!2288106 () Bool)

(assert (=> b!7783321 (= e!4610282 (and tp!2288105 tp!2288106))))

(declare-fun b!7783318 () Bool)

(assert (=> b!7783318 (= e!4610282 tp_is_empty!52037)))

(assert (=> b!7783021 (= tp!2287922 e!4610282)))

(declare-fun b!7783319 () Bool)

(declare-fun tp!2288109 () Bool)

(declare-fun tp!2288107 () Bool)

(assert (=> b!7783319 (= e!4610282 (and tp!2288109 tp!2288107))))

(assert (= (and b!7783021 ((_ is ElementMatch!20841) (regOne!42194 (regTwo!42194 r2!6217)))) b!7783318))

(assert (= (and b!7783021 ((_ is Concat!29686) (regOne!42194 (regTwo!42194 r2!6217)))) b!7783319))

(assert (= (and b!7783021 ((_ is Star!20841) (regOne!42194 (regTwo!42194 r2!6217)))) b!7783320))

(assert (= (and b!7783021 ((_ is Union!20841) (regOne!42194 (regTwo!42194 r2!6217)))) b!7783321))

(declare-fun b!7783324 () Bool)

(declare-fun e!4610283 () Bool)

(declare-fun tp!2288113 () Bool)

(assert (=> b!7783324 (= e!4610283 tp!2288113)))

(declare-fun b!7783325 () Bool)

(declare-fun tp!2288110 () Bool)

(declare-fun tp!2288111 () Bool)

(assert (=> b!7783325 (= e!4610283 (and tp!2288110 tp!2288111))))

(declare-fun b!7783322 () Bool)

(assert (=> b!7783322 (= e!4610283 tp_is_empty!52037)))

(assert (=> b!7783021 (= tp!2287920 e!4610283)))

(declare-fun b!7783323 () Bool)

(declare-fun tp!2288114 () Bool)

(declare-fun tp!2288112 () Bool)

(assert (=> b!7783323 (= e!4610283 (and tp!2288114 tp!2288112))))

(assert (= (and b!7783021 ((_ is ElementMatch!20841) (regTwo!42194 (regTwo!42194 r2!6217)))) b!7783322))

(assert (= (and b!7783021 ((_ is Concat!29686) (regTwo!42194 (regTwo!42194 r2!6217)))) b!7783323))

(assert (= (and b!7783021 ((_ is Star!20841) (regTwo!42194 (regTwo!42194 r2!6217)))) b!7783324))

(assert (= (and b!7783021 ((_ is Union!20841) (regTwo!42194 (regTwo!42194 r2!6217)))) b!7783325))

(declare-fun b!7783328 () Bool)

(declare-fun e!4610284 () Bool)

(declare-fun tp!2288118 () Bool)

(assert (=> b!7783328 (= e!4610284 tp!2288118)))

(declare-fun b!7783329 () Bool)

(declare-fun tp!2288115 () Bool)

(declare-fun tp!2288116 () Bool)

(assert (=> b!7783329 (= e!4610284 (and tp!2288115 tp!2288116))))

(declare-fun b!7783326 () Bool)

(assert (=> b!7783326 (= e!4610284 tp_is_empty!52037)))

(assert (=> b!7783023 (= tp!2287918 e!4610284)))

(declare-fun b!7783327 () Bool)

(declare-fun tp!2288119 () Bool)

(declare-fun tp!2288117 () Bool)

(assert (=> b!7783327 (= e!4610284 (and tp!2288119 tp!2288117))))

(assert (= (and b!7783023 ((_ is ElementMatch!20841) (regOne!42195 (regTwo!42194 r2!6217)))) b!7783326))

(assert (= (and b!7783023 ((_ is Concat!29686) (regOne!42195 (regTwo!42194 r2!6217)))) b!7783327))

(assert (= (and b!7783023 ((_ is Star!20841) (regOne!42195 (regTwo!42194 r2!6217)))) b!7783328))

(assert (= (and b!7783023 ((_ is Union!20841) (regOne!42195 (regTwo!42194 r2!6217)))) b!7783329))

(declare-fun b!7783332 () Bool)

(declare-fun e!4610285 () Bool)

(declare-fun tp!2288123 () Bool)

(assert (=> b!7783332 (= e!4610285 tp!2288123)))

(declare-fun b!7783333 () Bool)

(declare-fun tp!2288120 () Bool)

(declare-fun tp!2288121 () Bool)

(assert (=> b!7783333 (= e!4610285 (and tp!2288120 tp!2288121))))

(declare-fun b!7783330 () Bool)

(assert (=> b!7783330 (= e!4610285 tp_is_empty!52037)))

(assert (=> b!7783023 (= tp!2287919 e!4610285)))

(declare-fun b!7783331 () Bool)

(declare-fun tp!2288124 () Bool)

(declare-fun tp!2288122 () Bool)

(assert (=> b!7783331 (= e!4610285 (and tp!2288124 tp!2288122))))

(assert (= (and b!7783023 ((_ is ElementMatch!20841) (regTwo!42195 (regTwo!42194 r2!6217)))) b!7783330))

(assert (= (and b!7783023 ((_ is Concat!29686) (regTwo!42195 (regTwo!42194 r2!6217)))) b!7783331))

(assert (= (and b!7783023 ((_ is Star!20841) (regTwo!42195 (regTwo!42194 r2!6217)))) b!7783332))

(assert (= (and b!7783023 ((_ is Union!20841) (regTwo!42195 (regTwo!42194 r2!6217)))) b!7783333))

(declare-fun b!7783336 () Bool)

(declare-fun e!4610286 () Bool)

(declare-fun tp!2288128 () Bool)

(assert (=> b!7783336 (= e!4610286 tp!2288128)))

(declare-fun b!7783337 () Bool)

(declare-fun tp!2288125 () Bool)

(declare-fun tp!2288126 () Bool)

(assert (=> b!7783337 (= e!4610286 (and tp!2288125 tp!2288126))))

(declare-fun b!7783334 () Bool)

(assert (=> b!7783334 (= e!4610286 tp_is_empty!52037)))

(assert (=> b!7783022 (= tp!2287921 e!4610286)))

(declare-fun b!7783335 () Bool)

(declare-fun tp!2288129 () Bool)

(declare-fun tp!2288127 () Bool)

(assert (=> b!7783335 (= e!4610286 (and tp!2288129 tp!2288127))))

(assert (= (and b!7783022 ((_ is ElementMatch!20841) (reg!21170 (regTwo!42194 r2!6217)))) b!7783334))

(assert (= (and b!7783022 ((_ is Concat!29686) (reg!21170 (regTwo!42194 r2!6217)))) b!7783335))

(assert (= (and b!7783022 ((_ is Star!20841) (reg!21170 (regTwo!42194 r2!6217)))) b!7783336))

(assert (= (and b!7783022 ((_ is Union!20841) (reg!21170 (regTwo!42194 r2!6217)))) b!7783337))

(declare-fun b!7783340 () Bool)

(declare-fun e!4610287 () Bool)

(declare-fun tp!2288133 () Bool)

(assert (=> b!7783340 (= e!4610287 tp!2288133)))

(declare-fun b!7783341 () Bool)

(declare-fun tp!2288130 () Bool)

(declare-fun tp!2288131 () Bool)

(assert (=> b!7783341 (= e!4610287 (and tp!2288130 tp!2288131))))

(declare-fun b!7783338 () Bool)

(assert (=> b!7783338 (= e!4610287 tp_is_empty!52037)))

(assert (=> b!7783040 (= tp!2287936 e!4610287)))

(declare-fun b!7783339 () Bool)

(declare-fun tp!2288134 () Bool)

(declare-fun tp!2288132 () Bool)

(assert (=> b!7783339 (= e!4610287 (and tp!2288134 tp!2288132))))

(assert (= (and b!7783040 ((_ is ElementMatch!20841) (regOne!42195 (regTwo!42194 r1!6279)))) b!7783338))

(assert (= (and b!7783040 ((_ is Concat!29686) (regOne!42195 (regTwo!42194 r1!6279)))) b!7783339))

(assert (= (and b!7783040 ((_ is Star!20841) (regOne!42195 (regTwo!42194 r1!6279)))) b!7783340))

(assert (= (and b!7783040 ((_ is Union!20841) (regOne!42195 (regTwo!42194 r1!6279)))) b!7783341))

(declare-fun b!7783344 () Bool)

(declare-fun e!4610288 () Bool)

(declare-fun tp!2288138 () Bool)

(assert (=> b!7783344 (= e!4610288 tp!2288138)))

(declare-fun b!7783345 () Bool)

(declare-fun tp!2288135 () Bool)

(declare-fun tp!2288136 () Bool)

(assert (=> b!7783345 (= e!4610288 (and tp!2288135 tp!2288136))))

(declare-fun b!7783342 () Bool)

(assert (=> b!7783342 (= e!4610288 tp_is_empty!52037)))

(assert (=> b!7783040 (= tp!2287937 e!4610288)))

(declare-fun b!7783343 () Bool)

(declare-fun tp!2288139 () Bool)

(declare-fun tp!2288137 () Bool)

(assert (=> b!7783343 (= e!4610288 (and tp!2288139 tp!2288137))))

(assert (= (and b!7783040 ((_ is ElementMatch!20841) (regTwo!42195 (regTwo!42194 r1!6279)))) b!7783342))

(assert (= (and b!7783040 ((_ is Concat!29686) (regTwo!42195 (regTwo!42194 r1!6279)))) b!7783343))

(assert (= (and b!7783040 ((_ is Star!20841) (regTwo!42195 (regTwo!42194 r1!6279)))) b!7783344))

(assert (= (and b!7783040 ((_ is Union!20841) (regTwo!42195 (regTwo!42194 r1!6279)))) b!7783345))

(declare-fun b!7783348 () Bool)

(declare-fun e!4610289 () Bool)

(declare-fun tp!2288143 () Bool)

(assert (=> b!7783348 (= e!4610289 tp!2288143)))

(declare-fun b!7783349 () Bool)

(declare-fun tp!2288140 () Bool)

(declare-fun tp!2288141 () Bool)

(assert (=> b!7783349 (= e!4610289 (and tp!2288140 tp!2288141))))

(declare-fun b!7783346 () Bool)

(assert (=> b!7783346 (= e!4610289 tp_is_empty!52037)))

(assert (=> b!7783031 (= tp!2287929 e!4610289)))

(declare-fun b!7783347 () Bool)

(declare-fun tp!2288144 () Bool)

(declare-fun tp!2288142 () Bool)

(assert (=> b!7783347 (= e!4610289 (and tp!2288144 tp!2288142))))

(assert (= (and b!7783031 ((_ is ElementMatch!20841) (reg!21170 (reg!21170 r1!6279)))) b!7783346))

(assert (= (and b!7783031 ((_ is Concat!29686) (reg!21170 (reg!21170 r1!6279)))) b!7783347))

(assert (= (and b!7783031 ((_ is Star!20841) (reg!21170 (reg!21170 r1!6279)))) b!7783348))

(assert (= (and b!7783031 ((_ is Union!20841) (reg!21170 (reg!21170 r1!6279)))) b!7783349))

(declare-fun b!7783352 () Bool)

(declare-fun e!4610290 () Bool)

(declare-fun tp!2288148 () Bool)

(assert (=> b!7783352 (= e!4610290 tp!2288148)))

(declare-fun b!7783353 () Bool)

(declare-fun tp!2288145 () Bool)

(declare-fun tp!2288146 () Bool)

(assert (=> b!7783353 (= e!4610290 (and tp!2288145 tp!2288146))))

(declare-fun b!7783350 () Bool)

(assert (=> b!7783350 (= e!4610290 tp_is_empty!52037)))

(assert (=> b!7783009 (= tp!2287907 e!4610290)))

(declare-fun b!7783351 () Bool)

(declare-fun tp!2288149 () Bool)

(declare-fun tp!2288147 () Bool)

(assert (=> b!7783351 (= e!4610290 (and tp!2288149 tp!2288147))))

(assert (= (and b!7783009 ((_ is ElementMatch!20841) (regOne!42194 (regTwo!42195 r1!6279)))) b!7783350))

(assert (= (and b!7783009 ((_ is Concat!29686) (regOne!42194 (regTwo!42195 r1!6279)))) b!7783351))

(assert (= (and b!7783009 ((_ is Star!20841) (regOne!42194 (regTwo!42195 r1!6279)))) b!7783352))

(assert (= (and b!7783009 ((_ is Union!20841) (regOne!42194 (regTwo!42195 r1!6279)))) b!7783353))

(declare-fun b!7783356 () Bool)

(declare-fun e!4610291 () Bool)

(declare-fun tp!2288153 () Bool)

(assert (=> b!7783356 (= e!4610291 tp!2288153)))

(declare-fun b!7783357 () Bool)

(declare-fun tp!2288150 () Bool)

(declare-fun tp!2288151 () Bool)

(assert (=> b!7783357 (= e!4610291 (and tp!2288150 tp!2288151))))

(declare-fun b!7783354 () Bool)

(assert (=> b!7783354 (= e!4610291 tp_is_empty!52037)))

(assert (=> b!7783009 (= tp!2287905 e!4610291)))

(declare-fun b!7783355 () Bool)

(declare-fun tp!2288154 () Bool)

(declare-fun tp!2288152 () Bool)

(assert (=> b!7783355 (= e!4610291 (and tp!2288154 tp!2288152))))

(assert (= (and b!7783009 ((_ is ElementMatch!20841) (regTwo!42194 (regTwo!42195 r1!6279)))) b!7783354))

(assert (= (and b!7783009 ((_ is Concat!29686) (regTwo!42194 (regTwo!42195 r1!6279)))) b!7783355))

(assert (= (and b!7783009 ((_ is Star!20841) (regTwo!42194 (regTwo!42195 r1!6279)))) b!7783356))

(assert (= (and b!7783009 ((_ is Union!20841) (regTwo!42194 (regTwo!42195 r1!6279)))) b!7783357))

(declare-fun b!7783360 () Bool)

(declare-fun e!4610292 () Bool)

(declare-fun tp!2288158 () Bool)

(assert (=> b!7783360 (= e!4610292 tp!2288158)))

(declare-fun b!7783361 () Bool)

(declare-fun tp!2288155 () Bool)

(declare-fun tp!2288156 () Bool)

(assert (=> b!7783361 (= e!4610292 (and tp!2288155 tp!2288156))))

(declare-fun b!7783358 () Bool)

(assert (=> b!7783358 (= e!4610292 tp_is_empty!52037)))

(assert (=> b!7783030 (= tp!2287930 e!4610292)))

(declare-fun b!7783359 () Bool)

(declare-fun tp!2288159 () Bool)

(declare-fun tp!2288157 () Bool)

(assert (=> b!7783359 (= e!4610292 (and tp!2288159 tp!2288157))))

(assert (= (and b!7783030 ((_ is ElementMatch!20841) (regOne!42194 (reg!21170 r1!6279)))) b!7783358))

(assert (= (and b!7783030 ((_ is Concat!29686) (regOne!42194 (reg!21170 r1!6279)))) b!7783359))

(assert (= (and b!7783030 ((_ is Star!20841) (regOne!42194 (reg!21170 r1!6279)))) b!7783360))

(assert (= (and b!7783030 ((_ is Union!20841) (regOne!42194 (reg!21170 r1!6279)))) b!7783361))

(declare-fun b!7783364 () Bool)

(declare-fun e!4610293 () Bool)

(declare-fun tp!2288163 () Bool)

(assert (=> b!7783364 (= e!4610293 tp!2288163)))

(declare-fun b!7783365 () Bool)

(declare-fun tp!2288160 () Bool)

(declare-fun tp!2288161 () Bool)

(assert (=> b!7783365 (= e!4610293 (and tp!2288160 tp!2288161))))

(declare-fun b!7783362 () Bool)

(assert (=> b!7783362 (= e!4610293 tp_is_empty!52037)))

(assert (=> b!7783030 (= tp!2287928 e!4610293)))

(declare-fun b!7783363 () Bool)

(declare-fun tp!2288164 () Bool)

(declare-fun tp!2288162 () Bool)

(assert (=> b!7783363 (= e!4610293 (and tp!2288164 tp!2288162))))

(assert (= (and b!7783030 ((_ is ElementMatch!20841) (regTwo!42194 (reg!21170 r1!6279)))) b!7783362))

(assert (= (and b!7783030 ((_ is Concat!29686) (regTwo!42194 (reg!21170 r1!6279)))) b!7783363))

(assert (= (and b!7783030 ((_ is Star!20841) (regTwo!42194 (reg!21170 r1!6279)))) b!7783364))

(assert (= (and b!7783030 ((_ is Union!20841) (regTwo!42194 (reg!21170 r1!6279)))) b!7783365))

(declare-fun b!7783368 () Bool)

(declare-fun e!4610294 () Bool)

(declare-fun tp!2288168 () Bool)

(assert (=> b!7783368 (= e!4610294 tp!2288168)))

(declare-fun b!7783369 () Bool)

(declare-fun tp!2288165 () Bool)

(declare-fun tp!2288166 () Bool)

(assert (=> b!7783369 (= e!4610294 (and tp!2288165 tp!2288166))))

(declare-fun b!7783366 () Bool)

(assert (=> b!7783366 (= e!4610294 tp_is_empty!52037)))

(assert (=> b!7783003 (= tp!2287893 e!4610294)))

(declare-fun b!7783367 () Bool)

(declare-fun tp!2288169 () Bool)

(declare-fun tp!2288167 () Bool)

(assert (=> b!7783367 (= e!4610294 (and tp!2288169 tp!2288167))))

(assert (= (and b!7783003 ((_ is ElementMatch!20841) (regOne!42195 (regTwo!42195 r2!6217)))) b!7783366))

(assert (= (and b!7783003 ((_ is Concat!29686) (regOne!42195 (regTwo!42195 r2!6217)))) b!7783367))

(assert (= (and b!7783003 ((_ is Star!20841) (regOne!42195 (regTwo!42195 r2!6217)))) b!7783368))

(assert (= (and b!7783003 ((_ is Union!20841) (regOne!42195 (regTwo!42195 r2!6217)))) b!7783369))

(declare-fun b!7783372 () Bool)

(declare-fun e!4610295 () Bool)

(declare-fun tp!2288173 () Bool)

(assert (=> b!7783372 (= e!4610295 tp!2288173)))

(declare-fun b!7783373 () Bool)

(declare-fun tp!2288170 () Bool)

(declare-fun tp!2288171 () Bool)

(assert (=> b!7783373 (= e!4610295 (and tp!2288170 tp!2288171))))

(declare-fun b!7783370 () Bool)

(assert (=> b!7783370 (= e!4610295 tp_is_empty!52037)))

(assert (=> b!7783003 (= tp!2287894 e!4610295)))

(declare-fun b!7783371 () Bool)

(declare-fun tp!2288174 () Bool)

(declare-fun tp!2288172 () Bool)

(assert (=> b!7783371 (= e!4610295 (and tp!2288174 tp!2288172))))

(assert (= (and b!7783003 ((_ is ElementMatch!20841) (regTwo!42195 (regTwo!42195 r2!6217)))) b!7783370))

(assert (= (and b!7783003 ((_ is Concat!29686) (regTwo!42195 (regTwo!42195 r2!6217)))) b!7783371))

(assert (= (and b!7783003 ((_ is Star!20841) (regTwo!42195 (regTwo!42195 r2!6217)))) b!7783372))

(assert (= (and b!7783003 ((_ is Union!20841) (regTwo!42195 (regTwo!42195 r2!6217)))) b!7783373))

(declare-fun b!7783376 () Bool)

(declare-fun e!4610296 () Bool)

(declare-fun tp!2288178 () Bool)

(assert (=> b!7783376 (= e!4610296 tp!2288178)))

(declare-fun b!7783377 () Bool)

(declare-fun tp!2288175 () Bool)

(declare-fun tp!2288176 () Bool)

(assert (=> b!7783377 (= e!4610296 (and tp!2288175 tp!2288176))))

(declare-fun b!7783374 () Bool)

(assert (=> b!7783374 (= e!4610296 tp_is_empty!52037)))

(assert (=> b!7783032 (= tp!2287926 e!4610296)))

(declare-fun b!7783375 () Bool)

(declare-fun tp!2288179 () Bool)

(declare-fun tp!2288177 () Bool)

(assert (=> b!7783375 (= e!4610296 (and tp!2288179 tp!2288177))))

(assert (= (and b!7783032 ((_ is ElementMatch!20841) (regOne!42195 (reg!21170 r1!6279)))) b!7783374))

(assert (= (and b!7783032 ((_ is Concat!29686) (regOne!42195 (reg!21170 r1!6279)))) b!7783375))

(assert (= (and b!7783032 ((_ is Star!20841) (regOne!42195 (reg!21170 r1!6279)))) b!7783376))

(assert (= (and b!7783032 ((_ is Union!20841) (regOne!42195 (reg!21170 r1!6279)))) b!7783377))

(declare-fun b!7783380 () Bool)

(declare-fun e!4610297 () Bool)

(declare-fun tp!2288183 () Bool)

(assert (=> b!7783380 (= e!4610297 tp!2288183)))

(declare-fun b!7783381 () Bool)

(declare-fun tp!2288180 () Bool)

(declare-fun tp!2288181 () Bool)

(assert (=> b!7783381 (= e!4610297 (and tp!2288180 tp!2288181))))

(declare-fun b!7783378 () Bool)

(assert (=> b!7783378 (= e!4610297 tp_is_empty!52037)))

(assert (=> b!7783032 (= tp!2287927 e!4610297)))

(declare-fun b!7783379 () Bool)

(declare-fun tp!2288184 () Bool)

(declare-fun tp!2288182 () Bool)

(assert (=> b!7783379 (= e!4610297 (and tp!2288184 tp!2288182))))

(assert (= (and b!7783032 ((_ is ElementMatch!20841) (regTwo!42195 (reg!21170 r1!6279)))) b!7783378))

(assert (= (and b!7783032 ((_ is Concat!29686) (regTwo!42195 (reg!21170 r1!6279)))) b!7783379))

(assert (= (and b!7783032 ((_ is Star!20841) (regTwo!42195 (reg!21170 r1!6279)))) b!7783380))

(assert (= (and b!7783032 ((_ is Union!20841) (regTwo!42195 (reg!21170 r1!6279)))) b!7783381))

(declare-fun b!7783384 () Bool)

(declare-fun e!4610298 () Bool)

(declare-fun tp!2288188 () Bool)

(assert (=> b!7783384 (= e!4610298 tp!2288188)))

(declare-fun b!7783385 () Bool)

(declare-fun tp!2288185 () Bool)

(declare-fun tp!2288186 () Bool)

(assert (=> b!7783385 (= e!4610298 (and tp!2288185 tp!2288186))))

(declare-fun b!7783382 () Bool)

(assert (=> b!7783382 (= e!4610298 tp_is_empty!52037)))

(assert (=> b!7783010 (= tp!2287906 e!4610298)))

(declare-fun b!7783383 () Bool)

(declare-fun tp!2288189 () Bool)

(declare-fun tp!2288187 () Bool)

(assert (=> b!7783383 (= e!4610298 (and tp!2288189 tp!2288187))))

(assert (= (and b!7783010 ((_ is ElementMatch!20841) (reg!21170 (regTwo!42195 r1!6279)))) b!7783382))

(assert (= (and b!7783010 ((_ is Concat!29686) (reg!21170 (regTwo!42195 r1!6279)))) b!7783383))

(assert (= (and b!7783010 ((_ is Star!20841) (reg!21170 (regTwo!42195 r1!6279)))) b!7783384))

(assert (= (and b!7783010 ((_ is Union!20841) (reg!21170 (regTwo!42195 r1!6279)))) b!7783385))

(declare-fun b!7783388 () Bool)

(declare-fun e!4610299 () Bool)

(declare-fun tp!2288193 () Bool)

(assert (=> b!7783388 (= e!4610299 tp!2288193)))

(declare-fun b!7783389 () Bool)

(declare-fun tp!2288190 () Bool)

(declare-fun tp!2288191 () Bool)

(assert (=> b!7783389 (= e!4610299 (and tp!2288190 tp!2288191))))

(declare-fun b!7783386 () Bool)

(assert (=> b!7783386 (= e!4610299 tp_is_empty!52037)))

(assert (=> b!7783017 (= tp!2287917 e!4610299)))

(declare-fun b!7783387 () Bool)

(declare-fun tp!2288194 () Bool)

(declare-fun tp!2288192 () Bool)

(assert (=> b!7783387 (= e!4610299 (and tp!2288194 tp!2288192))))

(assert (= (and b!7783017 ((_ is ElementMatch!20841) (regOne!42194 (regOne!42194 r2!6217)))) b!7783386))

(assert (= (and b!7783017 ((_ is Concat!29686) (regOne!42194 (regOne!42194 r2!6217)))) b!7783387))

(assert (= (and b!7783017 ((_ is Star!20841) (regOne!42194 (regOne!42194 r2!6217)))) b!7783388))

(assert (= (and b!7783017 ((_ is Union!20841) (regOne!42194 (regOne!42194 r2!6217)))) b!7783389))

(declare-fun b!7783392 () Bool)

(declare-fun e!4610300 () Bool)

(declare-fun tp!2288198 () Bool)

(assert (=> b!7783392 (= e!4610300 tp!2288198)))

(declare-fun b!7783393 () Bool)

(declare-fun tp!2288195 () Bool)

(declare-fun tp!2288196 () Bool)

(assert (=> b!7783393 (= e!4610300 (and tp!2288195 tp!2288196))))

(declare-fun b!7783390 () Bool)

(assert (=> b!7783390 (= e!4610300 tp_is_empty!52037)))

(assert (=> b!7783017 (= tp!2287915 e!4610300)))

(declare-fun b!7783391 () Bool)

(declare-fun tp!2288199 () Bool)

(declare-fun tp!2288197 () Bool)

(assert (=> b!7783391 (= e!4610300 (and tp!2288199 tp!2288197))))

(assert (= (and b!7783017 ((_ is ElementMatch!20841) (regTwo!42194 (regOne!42194 r2!6217)))) b!7783390))

(assert (= (and b!7783017 ((_ is Concat!29686) (regTwo!42194 (regOne!42194 r2!6217)))) b!7783391))

(assert (= (and b!7783017 ((_ is Star!20841) (regTwo!42194 (regOne!42194 r2!6217)))) b!7783392))

(assert (= (and b!7783017 ((_ is Union!20841) (regTwo!42194 (regOne!42194 r2!6217)))) b!7783393))

(declare-fun b!7783396 () Bool)

(declare-fun e!4610301 () Bool)

(declare-fun tp!2288203 () Bool)

(assert (=> b!7783396 (= e!4610301 tp!2288203)))

(declare-fun b!7783397 () Bool)

(declare-fun tp!2288200 () Bool)

(declare-fun tp!2288201 () Bool)

(assert (=> b!7783397 (= e!4610301 (and tp!2288200 tp!2288201))))

(declare-fun b!7783394 () Bool)

(assert (=> b!7783394 (= e!4610301 tp_is_empty!52037)))

(assert (=> b!7783001 (= tp!2287897 e!4610301)))

(declare-fun b!7783395 () Bool)

(declare-fun tp!2288204 () Bool)

(declare-fun tp!2288202 () Bool)

(assert (=> b!7783395 (= e!4610301 (and tp!2288204 tp!2288202))))

(assert (= (and b!7783001 ((_ is ElementMatch!20841) (regOne!42194 (regTwo!42195 r2!6217)))) b!7783394))

(assert (= (and b!7783001 ((_ is Concat!29686) (regOne!42194 (regTwo!42195 r2!6217)))) b!7783395))

(assert (= (and b!7783001 ((_ is Star!20841) (regOne!42194 (regTwo!42195 r2!6217)))) b!7783396))

(assert (= (and b!7783001 ((_ is Union!20841) (regOne!42194 (regTwo!42195 r2!6217)))) b!7783397))

(declare-fun b!7783400 () Bool)

(declare-fun e!4610302 () Bool)

(declare-fun tp!2288208 () Bool)

(assert (=> b!7783400 (= e!4610302 tp!2288208)))

(declare-fun b!7783401 () Bool)

(declare-fun tp!2288205 () Bool)

(declare-fun tp!2288206 () Bool)

(assert (=> b!7783401 (= e!4610302 (and tp!2288205 tp!2288206))))

(declare-fun b!7783398 () Bool)

(assert (=> b!7783398 (= e!4610302 tp_is_empty!52037)))

(assert (=> b!7783001 (= tp!2287895 e!4610302)))

(declare-fun b!7783399 () Bool)

(declare-fun tp!2288209 () Bool)

(declare-fun tp!2288207 () Bool)

(assert (=> b!7783399 (= e!4610302 (and tp!2288209 tp!2288207))))

(assert (= (and b!7783001 ((_ is ElementMatch!20841) (regTwo!42194 (regTwo!42195 r2!6217)))) b!7783398))

(assert (= (and b!7783001 ((_ is Concat!29686) (regTwo!42194 (regTwo!42195 r2!6217)))) b!7783399))

(assert (= (and b!7783001 ((_ is Star!20841) (regTwo!42194 (regTwo!42195 r2!6217)))) b!7783400))

(assert (= (and b!7783001 ((_ is Union!20841) (regTwo!42194 (regTwo!42195 r2!6217)))) b!7783401))

(declare-fun b!7783404 () Bool)

(declare-fun e!4610303 () Bool)

(declare-fun tp!2288213 () Bool)

(assert (=> b!7783404 (= e!4610303 tp!2288213)))

(declare-fun b!7783405 () Bool)

(declare-fun tp!2288210 () Bool)

(declare-fun tp!2288211 () Bool)

(assert (=> b!7783405 (= e!4610303 (and tp!2288210 tp!2288211))))

(declare-fun b!7783402 () Bool)

(assert (=> b!7783402 (= e!4610303 tp_is_empty!52037)))

(assert (=> b!7783002 (= tp!2287896 e!4610303)))

(declare-fun b!7783403 () Bool)

(declare-fun tp!2288214 () Bool)

(declare-fun tp!2288212 () Bool)

(assert (=> b!7783403 (= e!4610303 (and tp!2288214 tp!2288212))))

(assert (= (and b!7783002 ((_ is ElementMatch!20841) (reg!21170 (regTwo!42195 r2!6217)))) b!7783402))

(assert (= (and b!7783002 ((_ is Concat!29686) (reg!21170 (regTwo!42195 r2!6217)))) b!7783403))

(assert (= (and b!7783002 ((_ is Star!20841) (reg!21170 (regTwo!42195 r2!6217)))) b!7783404))

(assert (= (and b!7783002 ((_ is Union!20841) (reg!21170 (regTwo!42195 r2!6217)))) b!7783405))

(declare-fun b!7783408 () Bool)

(declare-fun e!4610304 () Bool)

(declare-fun tp!2288218 () Bool)

(assert (=> b!7783408 (= e!4610304 tp!2288218)))

(declare-fun b!7783409 () Bool)

(declare-fun tp!2288215 () Bool)

(declare-fun tp!2288216 () Bool)

(assert (=> b!7783409 (= e!4610304 (and tp!2288215 tp!2288216))))

(declare-fun b!7783406 () Bool)

(assert (=> b!7783406 (= e!4610304 tp_is_empty!52037)))

(assert (=> b!7783039 (= tp!2287939 e!4610304)))

(declare-fun b!7783407 () Bool)

(declare-fun tp!2288219 () Bool)

(declare-fun tp!2288217 () Bool)

(assert (=> b!7783407 (= e!4610304 (and tp!2288219 tp!2288217))))

(assert (= (and b!7783039 ((_ is ElementMatch!20841) (reg!21170 (regTwo!42194 r1!6279)))) b!7783406))

(assert (= (and b!7783039 ((_ is Concat!29686) (reg!21170 (regTwo!42194 r1!6279)))) b!7783407))

(assert (= (and b!7783039 ((_ is Star!20841) (reg!21170 (regTwo!42194 r1!6279)))) b!7783408))

(assert (= (and b!7783039 ((_ is Union!20841) (reg!21170 (regTwo!42194 r1!6279)))) b!7783409))

(declare-fun b!7783412 () Bool)

(declare-fun e!4610305 () Bool)

(declare-fun tp!2288223 () Bool)

(assert (=> b!7783412 (= e!4610305 tp!2288223)))

(declare-fun b!7783413 () Bool)

(declare-fun tp!2288220 () Bool)

(declare-fun tp!2288221 () Bool)

(assert (=> b!7783413 (= e!4610305 (and tp!2288220 tp!2288221))))

(declare-fun b!7783410 () Bool)

(assert (=> b!7783410 (= e!4610305 tp_is_empty!52037)))

(assert (=> b!7783038 (= tp!2287940 e!4610305)))

(declare-fun b!7783411 () Bool)

(declare-fun tp!2288224 () Bool)

(declare-fun tp!2288222 () Bool)

(assert (=> b!7783411 (= e!4610305 (and tp!2288224 tp!2288222))))

(assert (= (and b!7783038 ((_ is ElementMatch!20841) (regOne!42194 (regTwo!42194 r1!6279)))) b!7783410))

(assert (= (and b!7783038 ((_ is Concat!29686) (regOne!42194 (regTwo!42194 r1!6279)))) b!7783411))

(assert (= (and b!7783038 ((_ is Star!20841) (regOne!42194 (regTwo!42194 r1!6279)))) b!7783412))

(assert (= (and b!7783038 ((_ is Union!20841) (regOne!42194 (regTwo!42194 r1!6279)))) b!7783413))

(declare-fun b!7783416 () Bool)

(declare-fun e!4610306 () Bool)

(declare-fun tp!2288228 () Bool)

(assert (=> b!7783416 (= e!4610306 tp!2288228)))

(declare-fun b!7783417 () Bool)

(declare-fun tp!2288225 () Bool)

(declare-fun tp!2288226 () Bool)

(assert (=> b!7783417 (= e!4610306 (and tp!2288225 tp!2288226))))

(declare-fun b!7783414 () Bool)

(assert (=> b!7783414 (= e!4610306 tp_is_empty!52037)))

(assert (=> b!7783038 (= tp!2287938 e!4610306)))

(declare-fun b!7783415 () Bool)

(declare-fun tp!2288229 () Bool)

(declare-fun tp!2288227 () Bool)

(assert (=> b!7783415 (= e!4610306 (and tp!2288229 tp!2288227))))

(assert (= (and b!7783038 ((_ is ElementMatch!20841) (regTwo!42194 (regTwo!42194 r1!6279)))) b!7783414))

(assert (= (and b!7783038 ((_ is Concat!29686) (regTwo!42194 (regTwo!42194 r1!6279)))) b!7783415))

(assert (= (and b!7783038 ((_ is Star!20841) (regTwo!42194 (regTwo!42194 r1!6279)))) b!7783416))

(assert (= (and b!7783038 ((_ is Union!20841) (regTwo!42194 (regTwo!42194 r1!6279)))) b!7783417))

(declare-fun b!7783420 () Bool)

(declare-fun e!4610307 () Bool)

(declare-fun tp!2288233 () Bool)

(assert (=> b!7783420 (= e!4610307 tp!2288233)))

(declare-fun b!7783421 () Bool)

(declare-fun tp!2288230 () Bool)

(declare-fun tp!2288231 () Bool)

(assert (=> b!7783421 (= e!4610307 (and tp!2288230 tp!2288231))))

(declare-fun b!7783418 () Bool)

(assert (=> b!7783418 (= e!4610307 tp_is_empty!52037)))

(assert (=> b!7783019 (= tp!2287913 e!4610307)))

(declare-fun b!7783419 () Bool)

(declare-fun tp!2288234 () Bool)

(declare-fun tp!2288232 () Bool)

(assert (=> b!7783419 (= e!4610307 (and tp!2288234 tp!2288232))))

(assert (= (and b!7783019 ((_ is ElementMatch!20841) (regOne!42195 (regOne!42194 r2!6217)))) b!7783418))

(assert (= (and b!7783019 ((_ is Concat!29686) (regOne!42195 (regOne!42194 r2!6217)))) b!7783419))

(assert (= (and b!7783019 ((_ is Star!20841) (regOne!42195 (regOne!42194 r2!6217)))) b!7783420))

(assert (= (and b!7783019 ((_ is Union!20841) (regOne!42195 (regOne!42194 r2!6217)))) b!7783421))

(declare-fun b!7783424 () Bool)

(declare-fun e!4610308 () Bool)

(declare-fun tp!2288238 () Bool)

(assert (=> b!7783424 (= e!4610308 tp!2288238)))

(declare-fun b!7783425 () Bool)

(declare-fun tp!2288235 () Bool)

(declare-fun tp!2288236 () Bool)

(assert (=> b!7783425 (= e!4610308 (and tp!2288235 tp!2288236))))

(declare-fun b!7783422 () Bool)

(assert (=> b!7783422 (= e!4610308 tp_is_empty!52037)))

(assert (=> b!7783019 (= tp!2287914 e!4610308)))

(declare-fun b!7783423 () Bool)

(declare-fun tp!2288239 () Bool)

(declare-fun tp!2288237 () Bool)

(assert (=> b!7783423 (= e!4610308 (and tp!2288239 tp!2288237))))

(assert (= (and b!7783019 ((_ is ElementMatch!20841) (regTwo!42195 (regOne!42194 r2!6217)))) b!7783422))

(assert (= (and b!7783019 ((_ is Concat!29686) (regTwo!42195 (regOne!42194 r2!6217)))) b!7783423))

(assert (= (and b!7783019 ((_ is Star!20841) (regTwo!42195 (regOne!42194 r2!6217)))) b!7783424))

(assert (= (and b!7783019 ((_ is Union!20841) (regTwo!42195 (regOne!42194 r2!6217)))) b!7783425))

(declare-fun b!7783428 () Bool)

(declare-fun e!4610309 () Bool)

(declare-fun tp!2288243 () Bool)

(assert (=> b!7783428 (= e!4610309 tp!2288243)))

(declare-fun b!7783429 () Bool)

(declare-fun tp!2288240 () Bool)

(declare-fun tp!2288241 () Bool)

(assert (=> b!7783429 (= e!4610309 (and tp!2288240 tp!2288241))))

(declare-fun b!7783426 () Bool)

(assert (=> b!7783426 (= e!4610309 tp_is_empty!52037)))

(assert (=> b!7783018 (= tp!2287916 e!4610309)))

(declare-fun b!7783427 () Bool)

(declare-fun tp!2288244 () Bool)

(declare-fun tp!2288242 () Bool)

(assert (=> b!7783427 (= e!4610309 (and tp!2288244 tp!2288242))))

(assert (= (and b!7783018 ((_ is ElementMatch!20841) (reg!21170 (regOne!42194 r2!6217)))) b!7783426))

(assert (= (and b!7783018 ((_ is Concat!29686) (reg!21170 (regOne!42194 r2!6217)))) b!7783427))

(assert (= (and b!7783018 ((_ is Star!20841) (reg!21170 (regOne!42194 r2!6217)))) b!7783428))

(assert (= (and b!7783018 ((_ is Union!20841) (reg!21170 (regOne!42194 r2!6217)))) b!7783429))

(declare-fun b!7783432 () Bool)

(declare-fun e!4610310 () Bool)

(declare-fun tp!2288248 () Bool)

(assert (=> b!7783432 (= e!4610310 tp!2288248)))

(declare-fun b!7783433 () Bool)

(declare-fun tp!2288245 () Bool)

(declare-fun tp!2288246 () Bool)

(assert (=> b!7783433 (= e!4610310 (and tp!2288245 tp!2288246))))

(declare-fun b!7783430 () Bool)

(assert (=> b!7783430 (= e!4610310 tp_is_empty!52037)))

(assert (=> b!7783011 (= tp!2287903 e!4610310)))

(declare-fun b!7783431 () Bool)

(declare-fun tp!2288249 () Bool)

(declare-fun tp!2288247 () Bool)

(assert (=> b!7783431 (= e!4610310 (and tp!2288249 tp!2288247))))

(assert (= (and b!7783011 ((_ is ElementMatch!20841) (regOne!42195 (regTwo!42195 r1!6279)))) b!7783430))

(assert (= (and b!7783011 ((_ is Concat!29686) (regOne!42195 (regTwo!42195 r1!6279)))) b!7783431))

(assert (= (and b!7783011 ((_ is Star!20841) (regOne!42195 (regTwo!42195 r1!6279)))) b!7783432))

(assert (= (and b!7783011 ((_ is Union!20841) (regOne!42195 (regTwo!42195 r1!6279)))) b!7783433))

(declare-fun b!7783436 () Bool)

(declare-fun e!4610311 () Bool)

(declare-fun tp!2288253 () Bool)

(assert (=> b!7783436 (= e!4610311 tp!2288253)))

(declare-fun b!7783437 () Bool)

(declare-fun tp!2288250 () Bool)

(declare-fun tp!2288251 () Bool)

(assert (=> b!7783437 (= e!4610311 (and tp!2288250 tp!2288251))))

(declare-fun b!7783434 () Bool)

(assert (=> b!7783434 (= e!4610311 tp_is_empty!52037)))

(assert (=> b!7783011 (= tp!2287904 e!4610311)))

(declare-fun b!7783435 () Bool)

(declare-fun tp!2288254 () Bool)

(declare-fun tp!2288252 () Bool)

(assert (=> b!7783435 (= e!4610311 (and tp!2288254 tp!2288252))))

(assert (= (and b!7783011 ((_ is ElementMatch!20841) (regTwo!42195 (regTwo!42195 r1!6279)))) b!7783434))

(assert (= (and b!7783011 ((_ is Concat!29686) (regTwo!42195 (regTwo!42195 r1!6279)))) b!7783435))

(assert (= (and b!7783011 ((_ is Star!20841) (regTwo!42195 (regTwo!42195 r1!6279)))) b!7783436))

(assert (= (and b!7783011 ((_ is Union!20841) (regTwo!42195 (regTwo!42195 r1!6279)))) b!7783437))

(check-sat (not d!2345332) (not b!7783408) (not b!7783431) (not b!7783270) (not b!7783364) (not b!7783170) (not b!7783372) (not b!7783340) (not b!7783312) (not d!2345328) (not b!7783263) (not b!7783427) (not b!7783299) (not b!7783360) (not b!7783363) (not b!7783296) (not b!7783344) (not bm!721377) (not b!7783379) (not b!7783112) (not b!7783407) (not b!7783359) (not d!2345326) (not b!7783381) (not b!7783331) (not b!7783343) (not b!7783194) (not bm!721408) (not bm!721395) (not b!7783367) (not b!7783424) (not b!7783214) (not b!7783375) (not b!7783286) (not b!7783355) (not bm!721402) (not b!7783376) (not b!7783242) (not b!7783151) (not b!7783287) (not b!7783412) (not b!7783302) (not bm!721401) (not b!7783239) (not b!7783238) (not bm!721375) (not b!7783411) (not b!7783317) (not b!7783221) (not b!7783357) (not b!7783203) (not b!7783173) (not b!7783351) (not b!7783282) (not b!7783243) (not b!7783292) (not b!7783333) (not bm!721384) (not b!7783246) (not b!7783368) (not b!7783339) (not b!7783252) (not b!7783332) (not b!7783272) (not bm!721380) (not d!2345342) (not b!7783274) (not b!7783319) (not b!7783328) (not b!7783219) (not b!7783321) (not b!7783397) (not bm!721374) (not b!7783337) (not b!7783172) (not b!7783284) (not b!7783323) (not b!7783405) (not b!7783356) (not b!7783163) (not b!7783400) (not b!7783291) (not b!7783345) (not bm!721390) (not b!7783377) (not b!7783311) (not b!7783308) (not b!7783423) (not b!7783341) (not b!7783300) (not b!7783325) (not b!7783396) (not b!7783256) (not b!7783429) (not b!7783266) (not b!7783258) (not bm!721399) (not b!7783401) (not b!7783166) (not b!7783435) (not bm!721404) (not b!7783353) (not d!2345296) (not b!7783259) (not bm!721381) (not b!7783294) (not b!7783389) (not b!7783380) (not b!7783212) (not b!7783409) (not b!7783329) (not b!7783417) (not b!7783310) (not bm!721391) (not d!2345324) (not b!7783303) (not b!7783392) (not b!7783413) (not b!7783276) (not b!7783264) (not b!7783142) (not bm!721370) (not b!7783387) (not b!7783158) (not bm!721398) (not b!7783254) (not b!7783421) (not b!7783316) (not d!2345346) (not bm!721378) (not b!7783262) (not b!7783369) (not b!7783361) (not b!7783391) (not b!7783280) (not b!7783327) (not bm!721405) (not b!7783250) (not b!7783349) (not b!7783260) (not b!7783419) (not b!7783347) (not bm!721386) (not b!7783371) (not b!7783320) (not d!2345302) (not b!7783432) (not d!2345336) (not b!7783271) (not b!7783365) (not b!7783233) (not b!7783428) (not b!7783267) (not b!7783383) (not b!7783244) (not b!7783315) (not b!7783306) (not b!7783437) (not b!7783290) (not b!7783182) (not b!7783352) (not bm!721373) (not bm!721396) (not b!7783433) (not b!7783248) (not d!2345344) (not b!7783278) (not b!7783295) (not b!7783247) (not b!7783223) (not b!7783251) (not b!7783388) (not b!7783133) (not b!7783348) (not b!7783373) (not b!7783279) (not b!7783420) (not b!7783307) (not b!7783283) (not b!7783304) (not b!7783288) (not b!7783385) (not b!7783313) (not b!7783268) (not b!7783335) (not bm!721383) (not b!7783399) (not b!7783336) (not b!7783275) (not b!7783298) (not b!7783415) (not b!7783168) (not b!7783416) (not b!7783217) (not b!7783436) (not b!7783393) (not b!7783395) (not bm!721394) (not b!7783403) tp_is_empty!52037 (not b!7783425) (not bm!721389) (not b!7783255) (not b!7783324) (not b!7783404) (not b!7783240) (not b!7783224) (not b!7783384) (not d!2345338) (not b!7783124))
(check-sat)
