; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243516 () Bool)

(assert start!243516)

(declare-fun b!2492719 () Bool)

(declare-fun res!1054524 () Bool)

(declare-fun e!1582062 () Bool)

(assert (=> b!2492719 (=> (not res!1054524) (not e!1582062))))

(declare-datatypes ((C!14860 0))(
  ( (C!14861 (val!9082 Int)) )
))
(declare-datatypes ((Regex!7351 0))(
  ( (ElementMatch!7351 (c!396287 C!14860)) (Concat!12047 (regOne!15214 Regex!7351) (regTwo!15214 Regex!7351)) (EmptyExpr!7351) (Star!7351 (reg!7680 Regex!7351)) (EmptyLang!7351) (Union!7351 (regOne!15215 Regex!7351) (regTwo!15215 Regex!7351)) )
))
(declare-fun r!27340 () Regex!7351)

(get-info :version)

(assert (=> b!2492719 (= res!1054524 (and (not ((_ is EmptyExpr!7351) r!27340)) (not ((_ is EmptyLang!7351) r!27340)) (not ((_ is ElementMatch!7351) r!27340)) (not ((_ is Union!7351) r!27340)) ((_ is Star!7351) r!27340)))))

(declare-fun b!2492720 () Bool)

(declare-fun res!1054525 () Bool)

(assert (=> b!2492720 (=> (not res!1054525) (not e!1582062))))

(declare-datatypes ((List!29416 0))(
  ( (Nil!29316) (Cons!29316 (h!34736 C!14860) (t!211115 List!29416)) )
))
(declare-fun tl!4068 () List!29416)

(declare-fun c!14016 () C!14860)

(declare-fun nullable!2268 (Regex!7351) Bool)

(declare-fun derivative!46 (Regex!7351 List!29416) Regex!7351)

(declare-fun derivativeStep!1920 (Regex!7351 C!14860) Regex!7351)

(assert (=> b!2492720 (= res!1054525 (nullable!2268 (derivative!46 (derivativeStep!1920 r!27340 c!14016) tl!4068)))))

(declare-fun b!2492721 () Bool)

(declare-fun e!1582063 () Bool)

(declare-fun tp_is_empty!12557 () Bool)

(assert (=> b!2492721 (= e!1582063 tp_is_empty!12557)))

(declare-fun b!2492722 () Bool)

(declare-fun e!1582064 () Bool)

(declare-fun tp!798388 () Bool)

(assert (=> b!2492722 (= e!1582064 (and tp_is_empty!12557 tp!798388))))

(declare-fun res!1054526 () Bool)

(assert (=> start!243516 (=> (not res!1054526) (not e!1582062))))

(declare-fun validRegex!2977 (Regex!7351) Bool)

(assert (=> start!243516 (= res!1054526 (validRegex!2977 r!27340))))

(assert (=> start!243516 e!1582062))

(assert (=> start!243516 e!1582063))

(assert (=> start!243516 tp_is_empty!12557))

(assert (=> start!243516 e!1582064))

(declare-fun b!2492723 () Bool)

(declare-fun tp!798387 () Bool)

(declare-fun tp!798389 () Bool)

(assert (=> b!2492723 (= e!1582063 (and tp!798387 tp!798389))))

(declare-fun b!2492724 () Bool)

(assert (=> b!2492724 (= e!1582062 (not (validRegex!2977 (reg!7680 r!27340))))))

(declare-fun b!2492725 () Bool)

(declare-fun tp!798386 () Bool)

(assert (=> b!2492725 (= e!1582063 tp!798386)))

(declare-fun b!2492726 () Bool)

(declare-fun tp!798385 () Bool)

(declare-fun tp!798390 () Bool)

(assert (=> b!2492726 (= e!1582063 (and tp!798385 tp!798390))))

(assert (= (and start!243516 res!1054526) b!2492720))

(assert (= (and b!2492720 res!1054525) b!2492719))

(assert (= (and b!2492719 res!1054524) b!2492724))

(assert (= (and start!243516 ((_ is ElementMatch!7351) r!27340)) b!2492721))

(assert (= (and start!243516 ((_ is Concat!12047) r!27340)) b!2492726))

(assert (= (and start!243516 ((_ is Star!7351) r!27340)) b!2492725))

(assert (= (and start!243516 ((_ is Union!7351) r!27340)) b!2492723))

(assert (= (and start!243516 ((_ is Cons!29316) tl!4068)) b!2492722))

(declare-fun m!2858851 () Bool)

(assert (=> b!2492720 m!2858851))

(assert (=> b!2492720 m!2858851))

(declare-fun m!2858853 () Bool)

(assert (=> b!2492720 m!2858853))

(assert (=> b!2492720 m!2858853))

(declare-fun m!2858855 () Bool)

(assert (=> b!2492720 m!2858855))

(declare-fun m!2858857 () Bool)

(assert (=> start!243516 m!2858857))

(declare-fun m!2858859 () Bool)

(assert (=> b!2492724 m!2858859))

(check-sat (not start!243516) tp_is_empty!12557 (not b!2492725) (not b!2492724) (not b!2492720) (not b!2492722) (not b!2492723) (not b!2492726))
(check-sat)
(get-model)

(declare-fun bm!153377 () Bool)

(declare-fun call!153383 () Bool)

(declare-fun c!396297 () Bool)

(assert (=> bm!153377 (= call!153383 (validRegex!2977 (ite c!396297 (regTwo!15215 r!27340) (regOne!15214 r!27340))))))

(declare-fun b!2492763 () Bool)

(declare-fun e!1582095 () Bool)

(declare-fun e!1582094 () Bool)

(assert (=> b!2492763 (= e!1582095 e!1582094)))

(declare-fun res!1054551 () Bool)

(assert (=> b!2492763 (= res!1054551 (not (nullable!2268 (reg!7680 r!27340))))))

(assert (=> b!2492763 (=> (not res!1054551) (not e!1582094))))

(declare-fun b!2492764 () Bool)

(declare-fun res!1054550 () Bool)

(declare-fun e!1582098 () Bool)

(assert (=> b!2492764 (=> res!1054550 e!1582098)))

(assert (=> b!2492764 (= res!1054550 (not ((_ is Concat!12047) r!27340)))))

(declare-fun e!1582096 () Bool)

(assert (=> b!2492764 (= e!1582096 e!1582098)))

(declare-fun b!2492765 () Bool)

(declare-fun e!1582097 () Bool)

(assert (=> b!2492765 (= e!1582097 call!153383)))

(declare-fun b!2492766 () Bool)

(declare-fun call!153382 () Bool)

(assert (=> b!2492766 (= e!1582094 call!153382)))

(declare-fun c!396296 () Bool)

(declare-fun bm!153378 () Bool)

(assert (=> bm!153378 (= call!153382 (validRegex!2977 (ite c!396296 (reg!7680 r!27340) (ite c!396297 (regOne!15215 r!27340) (regTwo!15214 r!27340)))))))

(declare-fun b!2492767 () Bool)

(assert (=> b!2492767 (= e!1582095 e!1582096)))

(assert (=> b!2492767 (= c!396297 ((_ is Union!7351) r!27340))))

(declare-fun b!2492768 () Bool)

(declare-fun e!1582093 () Bool)

(assert (=> b!2492768 (= e!1582098 e!1582093)))

(declare-fun res!1054548 () Bool)

(assert (=> b!2492768 (=> (not res!1054548) (not e!1582093))))

(assert (=> b!2492768 (= res!1054548 call!153383)))

(declare-fun bm!153379 () Bool)

(declare-fun call!153384 () Bool)

(assert (=> bm!153379 (= call!153384 call!153382)))

(declare-fun b!2492769 () Bool)

(declare-fun res!1054547 () Bool)

(assert (=> b!2492769 (=> (not res!1054547) (not e!1582097))))

(assert (=> b!2492769 (= res!1054547 call!153384)))

(assert (=> b!2492769 (= e!1582096 e!1582097)))

(declare-fun b!2492770 () Bool)

(declare-fun e!1582099 () Bool)

(assert (=> b!2492770 (= e!1582099 e!1582095)))

(assert (=> b!2492770 (= c!396296 ((_ is Star!7351) r!27340))))

(declare-fun b!2492771 () Bool)

(assert (=> b!2492771 (= e!1582093 call!153384)))

(declare-fun d!714553 () Bool)

(declare-fun res!1054549 () Bool)

(assert (=> d!714553 (=> res!1054549 e!1582099)))

(assert (=> d!714553 (= res!1054549 ((_ is ElementMatch!7351) r!27340))))

(assert (=> d!714553 (= (validRegex!2977 r!27340) e!1582099)))

(assert (= (and d!714553 (not res!1054549)) b!2492770))

(assert (= (and b!2492770 c!396296) b!2492763))

(assert (= (and b!2492770 (not c!396296)) b!2492767))

(assert (= (and b!2492763 res!1054551) b!2492766))

(assert (= (and b!2492767 c!396297) b!2492769))

(assert (= (and b!2492767 (not c!396297)) b!2492764))

(assert (= (and b!2492769 res!1054547) b!2492765))

(assert (= (and b!2492764 (not res!1054550)) b!2492768))

(assert (= (and b!2492768 res!1054548) b!2492771))

(assert (= (or b!2492769 b!2492771) bm!153379))

(assert (= (or b!2492765 b!2492768) bm!153377))

(assert (= (or b!2492766 bm!153379) bm!153378))

(declare-fun m!2858861 () Bool)

(assert (=> bm!153377 m!2858861))

(declare-fun m!2858863 () Bool)

(assert (=> b!2492763 m!2858863))

(declare-fun m!2858865 () Bool)

(assert (=> bm!153378 m!2858865))

(assert (=> start!243516 d!714553))

(declare-fun d!714557 () Bool)

(declare-fun nullableFct!560 (Regex!7351) Bool)

(assert (=> d!714557 (= (nullable!2268 (derivative!46 (derivativeStep!1920 r!27340 c!14016) tl!4068)) (nullableFct!560 (derivative!46 (derivativeStep!1920 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468396 () Bool)

(assert (= bs!468396 d!714557))

(assert (=> bs!468396 m!2858853))

(declare-fun m!2858873 () Bool)

(assert (=> bs!468396 m!2858873))

(assert (=> b!2492720 d!714557))

(declare-fun d!714561 () Bool)

(declare-fun lt!894085 () Regex!7351)

(assert (=> d!714561 (validRegex!2977 lt!894085)))

(declare-fun e!1582111 () Regex!7351)

(assert (=> d!714561 (= lt!894085 e!1582111)))

(declare-fun c!396304 () Bool)

(assert (=> d!714561 (= c!396304 ((_ is Cons!29316) tl!4068))))

(assert (=> d!714561 (validRegex!2977 (derivativeStep!1920 r!27340 c!14016))))

(assert (=> d!714561 (= (derivative!46 (derivativeStep!1920 r!27340 c!14016) tl!4068) lt!894085)))

(declare-fun b!2492789 () Bool)

(assert (=> b!2492789 (= e!1582111 (derivative!46 (derivativeStep!1920 (derivativeStep!1920 r!27340 c!14016) (h!34736 tl!4068)) (t!211115 tl!4068)))))

(declare-fun b!2492790 () Bool)

(assert (=> b!2492790 (= e!1582111 (derivativeStep!1920 r!27340 c!14016))))

(assert (= (and d!714561 c!396304) b!2492789))

(assert (= (and d!714561 (not c!396304)) b!2492790))

(declare-fun m!2858877 () Bool)

(assert (=> d!714561 m!2858877))

(assert (=> d!714561 m!2858851))

(declare-fun m!2858883 () Bool)

(assert (=> d!714561 m!2858883))

(assert (=> b!2492789 m!2858851))

(declare-fun m!2858887 () Bool)

(assert (=> b!2492789 m!2858887))

(assert (=> b!2492789 m!2858887))

(declare-fun m!2858891 () Bool)

(assert (=> b!2492789 m!2858891))

(assert (=> b!2492720 d!714561))

(declare-fun b!2492836 () Bool)

(declare-fun c!396333 () Bool)

(assert (=> b!2492836 (= c!396333 ((_ is Union!7351) r!27340))))

(declare-fun e!1582134 () Regex!7351)

(declare-fun e!1582138 () Regex!7351)

(assert (=> b!2492836 (= e!1582134 e!1582138)))

(declare-fun d!714567 () Bool)

(declare-fun lt!894092 () Regex!7351)

(assert (=> d!714567 (validRegex!2977 lt!894092)))

(declare-fun e!1582140 () Regex!7351)

(assert (=> d!714567 (= lt!894092 e!1582140)))

(declare-fun c!396335 () Bool)

(assert (=> d!714567 (= c!396335 (or ((_ is EmptyExpr!7351) r!27340) ((_ is EmptyLang!7351) r!27340)))))

(assert (=> d!714567 (validRegex!2977 r!27340)))

(assert (=> d!714567 (= (derivativeStep!1920 r!27340 c!14016) lt!894092)))

(declare-fun b!2492838 () Bool)

(assert (=> b!2492838 (= e!1582140 e!1582134)))

(declare-fun c!396331 () Bool)

(assert (=> b!2492838 (= c!396331 ((_ is ElementMatch!7351) r!27340))))

(declare-fun b!2492840 () Bool)

(declare-fun e!1582136 () Regex!7351)

(assert (=> b!2492840 (= e!1582138 e!1582136)))

(declare-fun c!396334 () Bool)

(assert (=> b!2492840 (= c!396334 ((_ is Star!7351) r!27340))))

(declare-fun call!153407 () Regex!7351)

(declare-fun call!153411 () Regex!7351)

(declare-fun e!1582142 () Regex!7351)

(declare-fun b!2492841 () Bool)

(assert (=> b!2492841 (= e!1582142 (Union!7351 (Concat!12047 call!153407 (regTwo!15214 r!27340)) call!153411))))

(declare-fun bm!153402 () Bool)

(declare-fun call!153406 () Regex!7351)

(assert (=> bm!153402 (= call!153407 call!153406)))

(declare-fun bm!153403 () Bool)

(assert (=> bm!153403 (= call!153411 (derivativeStep!1920 (ite c!396333 (regOne!15215 r!27340) (regTwo!15214 r!27340)) c!14016))))

(declare-fun b!2492845 () Bool)

(declare-fun call!153410 () Regex!7351)

(assert (=> b!2492845 (= e!1582138 (Union!7351 call!153411 call!153410))))

(declare-fun b!2492846 () Bool)

(assert (=> b!2492846 (= e!1582140 EmptyLang!7351)))

(declare-fun bm!153404 () Bool)

(assert (=> bm!153404 (= call!153410 (derivativeStep!1920 (ite c!396333 (regTwo!15215 r!27340) (ite c!396334 (reg!7680 r!27340) (regOne!15214 r!27340))) c!14016))))

(declare-fun b!2492849 () Bool)

(assert (=> b!2492849 (= e!1582136 (Concat!12047 call!153406 r!27340))))

(declare-fun b!2492850 () Bool)

(assert (=> b!2492850 (= e!1582142 (Union!7351 (Concat!12047 call!153407 (regTwo!15214 r!27340)) EmptyLang!7351))))

(declare-fun b!2492851 () Bool)

(declare-fun c!396328 () Bool)

(assert (=> b!2492851 (= c!396328 (nullable!2268 (regOne!15214 r!27340)))))

(assert (=> b!2492851 (= e!1582136 e!1582142)))

(declare-fun bm!153406 () Bool)

(assert (=> bm!153406 (= call!153406 call!153410)))

(declare-fun b!2492852 () Bool)

(assert (=> b!2492852 (= e!1582134 (ite (= c!14016 (c!396287 r!27340)) EmptyExpr!7351 EmptyLang!7351))))

(assert (= (and d!714567 c!396335) b!2492846))

(assert (= (and d!714567 (not c!396335)) b!2492838))

(assert (= (and b!2492838 c!396331) b!2492852))

(assert (= (and b!2492838 (not c!396331)) b!2492836))

(assert (= (and b!2492836 c!396333) b!2492845))

(assert (= (and b!2492836 (not c!396333)) b!2492840))

(assert (= (and b!2492840 c!396334) b!2492849))

(assert (= (and b!2492840 (not c!396334)) b!2492851))

(assert (= (and b!2492851 c!396328) b!2492841))

(assert (= (and b!2492851 (not c!396328)) b!2492850))

(assert (= (or b!2492841 b!2492850) bm!153402))

(assert (= (or b!2492849 bm!153402) bm!153406))

(assert (= (or b!2492845 bm!153406) bm!153404))

(assert (= (or b!2492845 b!2492841) bm!153403))

(declare-fun m!2858893 () Bool)

(assert (=> d!714567 m!2858893))

(assert (=> d!714567 m!2858857))

(declare-fun m!2858899 () Bool)

(assert (=> bm!153403 m!2858899))

(declare-fun m!2858903 () Bool)

(assert (=> bm!153404 m!2858903))

(declare-fun m!2858907 () Bool)

(assert (=> b!2492851 m!2858907))

(assert (=> b!2492720 d!714567))

(declare-fun bm!153410 () Bool)

(declare-fun call!153416 () Bool)

(declare-fun c!396339 () Bool)

(assert (=> bm!153410 (= call!153416 (validRegex!2977 (ite c!396339 (regTwo!15215 (reg!7680 r!27340)) (regOne!15214 (reg!7680 r!27340)))))))

(declare-fun b!2492862 () Bool)

(declare-fun e!1582152 () Bool)

(declare-fun e!1582151 () Bool)

(assert (=> b!2492862 (= e!1582152 e!1582151)))

(declare-fun res!1054566 () Bool)

(assert (=> b!2492862 (= res!1054566 (not (nullable!2268 (reg!7680 (reg!7680 r!27340)))))))

(assert (=> b!2492862 (=> (not res!1054566) (not e!1582151))))

(declare-fun b!2492863 () Bool)

(declare-fun res!1054565 () Bool)

(declare-fun e!1582155 () Bool)

(assert (=> b!2492863 (=> res!1054565 e!1582155)))

(assert (=> b!2492863 (= res!1054565 (not ((_ is Concat!12047) (reg!7680 r!27340))))))

(declare-fun e!1582153 () Bool)

(assert (=> b!2492863 (= e!1582153 e!1582155)))

(declare-fun b!2492864 () Bool)

(declare-fun e!1582154 () Bool)

(assert (=> b!2492864 (= e!1582154 call!153416)))

(declare-fun b!2492865 () Bool)

(declare-fun call!153415 () Bool)

(assert (=> b!2492865 (= e!1582151 call!153415)))

(declare-fun c!396338 () Bool)

(declare-fun bm!153411 () Bool)

(assert (=> bm!153411 (= call!153415 (validRegex!2977 (ite c!396338 (reg!7680 (reg!7680 r!27340)) (ite c!396339 (regOne!15215 (reg!7680 r!27340)) (regTwo!15214 (reg!7680 r!27340))))))))

(declare-fun b!2492866 () Bool)

(assert (=> b!2492866 (= e!1582152 e!1582153)))

(assert (=> b!2492866 (= c!396339 ((_ is Union!7351) (reg!7680 r!27340)))))

(declare-fun b!2492867 () Bool)

(declare-fun e!1582150 () Bool)

(assert (=> b!2492867 (= e!1582155 e!1582150)))

(declare-fun res!1054563 () Bool)

(assert (=> b!2492867 (=> (not res!1054563) (not e!1582150))))

(assert (=> b!2492867 (= res!1054563 call!153416)))

(declare-fun bm!153412 () Bool)

(declare-fun call!153417 () Bool)

(assert (=> bm!153412 (= call!153417 call!153415)))

(declare-fun b!2492868 () Bool)

(declare-fun res!1054562 () Bool)

(assert (=> b!2492868 (=> (not res!1054562) (not e!1582154))))

(assert (=> b!2492868 (= res!1054562 call!153417)))

(assert (=> b!2492868 (= e!1582153 e!1582154)))

(declare-fun b!2492869 () Bool)

(declare-fun e!1582156 () Bool)

(assert (=> b!2492869 (= e!1582156 e!1582152)))

(assert (=> b!2492869 (= c!396338 ((_ is Star!7351) (reg!7680 r!27340)))))

(declare-fun b!2492870 () Bool)

(assert (=> b!2492870 (= e!1582150 call!153417)))

(declare-fun d!714571 () Bool)

(declare-fun res!1054564 () Bool)

(assert (=> d!714571 (=> res!1054564 e!1582156)))

(assert (=> d!714571 (= res!1054564 ((_ is ElementMatch!7351) (reg!7680 r!27340)))))

(assert (=> d!714571 (= (validRegex!2977 (reg!7680 r!27340)) e!1582156)))

(assert (= (and d!714571 (not res!1054564)) b!2492869))

(assert (= (and b!2492869 c!396338) b!2492862))

(assert (= (and b!2492869 (not c!396338)) b!2492866))

(assert (= (and b!2492862 res!1054566) b!2492865))

(assert (= (and b!2492866 c!396339) b!2492868))

(assert (= (and b!2492866 (not c!396339)) b!2492863))

(assert (= (and b!2492868 res!1054562) b!2492864))

(assert (= (and b!2492863 (not res!1054565)) b!2492867))

(assert (= (and b!2492867 res!1054563) b!2492870))

(assert (= (or b!2492868 b!2492870) bm!153412))

(assert (= (or b!2492864 b!2492867) bm!153410))

(assert (= (or b!2492865 bm!153412) bm!153411))

(declare-fun m!2858911 () Bool)

(assert (=> bm!153410 m!2858911))

(declare-fun m!2858915 () Bool)

(assert (=> b!2492862 m!2858915))

(declare-fun m!2858919 () Bool)

(assert (=> bm!153411 m!2858919))

(assert (=> b!2492724 d!714571))

(declare-fun b!2492898 () Bool)

(declare-fun e!1582164 () Bool)

(declare-fun tp!798418 () Bool)

(assert (=> b!2492898 (= e!1582164 tp!798418)))

(declare-fun b!2492897 () Bool)

(declare-fun tp!798416 () Bool)

(declare-fun tp!798415 () Bool)

(assert (=> b!2492897 (= e!1582164 (and tp!798416 tp!798415))))

(assert (=> b!2492723 (= tp!798387 e!1582164)))

(declare-fun b!2492896 () Bool)

(assert (=> b!2492896 (= e!1582164 tp_is_empty!12557)))

(declare-fun b!2492899 () Bool)

(declare-fun tp!798417 () Bool)

(declare-fun tp!798414 () Bool)

(assert (=> b!2492899 (= e!1582164 (and tp!798417 tp!798414))))

(assert (= (and b!2492723 ((_ is ElementMatch!7351) (regOne!15215 r!27340))) b!2492896))

(assert (= (and b!2492723 ((_ is Concat!12047) (regOne!15215 r!27340))) b!2492897))

(assert (= (and b!2492723 ((_ is Star!7351) (regOne!15215 r!27340))) b!2492898))

(assert (= (and b!2492723 ((_ is Union!7351) (regOne!15215 r!27340))) b!2492899))

(declare-fun b!2492902 () Bool)

(declare-fun e!1582165 () Bool)

(declare-fun tp!798423 () Bool)

(assert (=> b!2492902 (= e!1582165 tp!798423)))

(declare-fun b!2492901 () Bool)

(declare-fun tp!798421 () Bool)

(declare-fun tp!798420 () Bool)

(assert (=> b!2492901 (= e!1582165 (and tp!798421 tp!798420))))

(assert (=> b!2492723 (= tp!798389 e!1582165)))

(declare-fun b!2492900 () Bool)

(assert (=> b!2492900 (= e!1582165 tp_is_empty!12557)))

(declare-fun b!2492903 () Bool)

(declare-fun tp!798422 () Bool)

(declare-fun tp!798419 () Bool)

(assert (=> b!2492903 (= e!1582165 (and tp!798422 tp!798419))))

(assert (= (and b!2492723 ((_ is ElementMatch!7351) (regTwo!15215 r!27340))) b!2492900))

(assert (= (and b!2492723 ((_ is Concat!12047) (regTwo!15215 r!27340))) b!2492901))

(assert (= (and b!2492723 ((_ is Star!7351) (regTwo!15215 r!27340))) b!2492902))

(assert (= (and b!2492723 ((_ is Union!7351) (regTwo!15215 r!27340))) b!2492903))

(declare-fun b!2492916 () Bool)

(declare-fun e!1582170 () Bool)

(declare-fun tp!798436 () Bool)

(assert (=> b!2492916 (= e!1582170 (and tp_is_empty!12557 tp!798436))))

(assert (=> b!2492722 (= tp!798388 e!1582170)))

(assert (= (and b!2492722 ((_ is Cons!29316) (t!211115 tl!4068))) b!2492916))

(declare-fun b!2492923 () Bool)

(declare-fun e!1582172 () Bool)

(declare-fun tp!798446 () Bool)

(assert (=> b!2492923 (= e!1582172 tp!798446)))

(declare-fun b!2492922 () Bool)

(declare-fun tp!798444 () Bool)

(declare-fun tp!798443 () Bool)

(assert (=> b!2492922 (= e!1582172 (and tp!798444 tp!798443))))

(assert (=> b!2492726 (= tp!798385 e!1582172)))

(declare-fun b!2492921 () Bool)

(assert (=> b!2492921 (= e!1582172 tp_is_empty!12557)))

(declare-fun b!2492924 () Bool)

(declare-fun tp!798445 () Bool)

(declare-fun tp!798442 () Bool)

(assert (=> b!2492924 (= e!1582172 (and tp!798445 tp!798442))))

(assert (= (and b!2492726 ((_ is ElementMatch!7351) (regOne!15214 r!27340))) b!2492921))

(assert (= (and b!2492726 ((_ is Concat!12047) (regOne!15214 r!27340))) b!2492922))

(assert (= (and b!2492726 ((_ is Star!7351) (regOne!15214 r!27340))) b!2492923))

(assert (= (and b!2492726 ((_ is Union!7351) (regOne!15214 r!27340))) b!2492924))

(declare-fun b!2492931 () Bool)

(declare-fun e!1582174 () Bool)

(declare-fun tp!798456 () Bool)

(assert (=> b!2492931 (= e!1582174 tp!798456)))

(declare-fun b!2492930 () Bool)

(declare-fun tp!798454 () Bool)

(declare-fun tp!798453 () Bool)

(assert (=> b!2492930 (= e!1582174 (and tp!798454 tp!798453))))

(assert (=> b!2492726 (= tp!798390 e!1582174)))

(declare-fun b!2492929 () Bool)

(assert (=> b!2492929 (= e!1582174 tp_is_empty!12557)))

(declare-fun b!2492932 () Bool)

(declare-fun tp!798455 () Bool)

(declare-fun tp!798452 () Bool)

(assert (=> b!2492932 (= e!1582174 (and tp!798455 tp!798452))))

(assert (= (and b!2492726 ((_ is ElementMatch!7351) (regTwo!15214 r!27340))) b!2492929))

(assert (= (and b!2492726 ((_ is Concat!12047) (regTwo!15214 r!27340))) b!2492930))

(assert (= (and b!2492726 ((_ is Star!7351) (regTwo!15214 r!27340))) b!2492931))

(assert (= (and b!2492726 ((_ is Union!7351) (regTwo!15214 r!27340))) b!2492932))

(declare-fun b!2492939 () Bool)

(declare-fun e!1582176 () Bool)

(declare-fun tp!798466 () Bool)

(assert (=> b!2492939 (= e!1582176 tp!798466)))

(declare-fun b!2492938 () Bool)

(declare-fun tp!798464 () Bool)

(declare-fun tp!798463 () Bool)

(assert (=> b!2492938 (= e!1582176 (and tp!798464 tp!798463))))

(assert (=> b!2492725 (= tp!798386 e!1582176)))

(declare-fun b!2492937 () Bool)

(assert (=> b!2492937 (= e!1582176 tp_is_empty!12557)))

(declare-fun b!2492940 () Bool)

(declare-fun tp!798465 () Bool)

(declare-fun tp!798462 () Bool)

(assert (=> b!2492940 (= e!1582176 (and tp!798465 tp!798462))))

(assert (= (and b!2492725 ((_ is ElementMatch!7351) (reg!7680 r!27340))) b!2492937))

(assert (= (and b!2492725 ((_ is Concat!12047) (reg!7680 r!27340))) b!2492938))

(assert (= (and b!2492725 ((_ is Star!7351) (reg!7680 r!27340))) b!2492939))

(assert (= (and b!2492725 ((_ is Union!7351) (reg!7680 r!27340))) b!2492940))

(check-sat (not b!2492789) (not b!2492898) (not b!2492940) (not b!2492923) (not b!2492939) (not b!2492932) (not bm!153410) (not b!2492901) (not d!714561) (not d!714567) (not bm!153411) (not b!2492916) (not b!2492899) (not b!2492851) (not bm!153403) (not b!2492903) (not bm!153378) (not b!2492930) (not b!2492922) (not bm!153404) (not b!2492924) tp_is_empty!12557 (not b!2492902) (not bm!153377) (not b!2492931) (not d!714557) (not b!2492938) (not b!2492862) (not b!2492897) (not b!2492763))
(check-sat)
