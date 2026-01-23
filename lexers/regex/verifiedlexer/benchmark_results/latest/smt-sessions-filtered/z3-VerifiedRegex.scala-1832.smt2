; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91230 () Bool)

(assert start!91230)

(declare-fun b!1061866 () Bool)

(declare-fun e!673805 () Bool)

(declare-fun e!673807 () Bool)

(assert (=> b!1061866 (= e!673805 (not e!673807))))

(declare-fun res!474491 () Bool)

(assert (=> b!1061866 (=> res!474491 e!673807)))

(declare-fun lt!359969 () Bool)

(declare-datatypes ((C!6416 0))(
  ( (C!6417 (val!3456 Int)) )
))
(declare-datatypes ((Regex!2923 0))(
  ( (ElementMatch!2923 (c!177994 C!6416)) (Concat!4756 (regOne!6358 Regex!2923) (regTwo!6358 Regex!2923)) (EmptyExpr!2923) (Star!2923 (reg!3252 Regex!2923)) (EmptyLang!2923) (Union!2923 (regOne!6359 Regex!2923) (regTwo!6359 Regex!2923)) )
))
(declare-fun r!15766 () Regex!2923)

(get-info :version)

(assert (=> b!1061866 (= res!474491 (or lt!359969 (and ((_ is Concat!4756) r!15766) ((_ is EmptyExpr!2923) (regOne!6358 r!15766))) (and ((_ is Concat!4756) r!15766) ((_ is EmptyExpr!2923) (regTwo!6358 r!15766))) ((_ is Concat!4756) r!15766) (not ((_ is Union!2923) r!15766))))))

(declare-datatypes ((List!10153 0))(
  ( (Nil!10137) (Cons!10137 (h!15538 C!6416) (t!101199 List!10153)) )
))
(declare-fun s!10566 () List!10153)

(declare-fun matchRSpec!722 (Regex!2923 List!10153) Bool)

(assert (=> b!1061866 (= lt!359969 (matchRSpec!722 r!15766 s!10566))))

(declare-fun matchR!1459 (Regex!2923 List!10153) Bool)

(assert (=> b!1061866 (= lt!359969 (matchR!1459 r!15766 s!10566))))

(declare-datatypes ((Unit!15521 0))(
  ( (Unit!15522) )
))
(declare-fun lt!359968 () Unit!15521)

(declare-fun mainMatchTheorem!722 (Regex!2923 List!10153) Unit!15521)

(assert (=> b!1061866 (= lt!359968 (mainMatchTheorem!722 r!15766 s!10566))))

(declare-fun res!474492 () Bool)

(assert (=> start!91230 (=> (not res!474492) (not e!673805))))

(declare-fun validRegex!1392 (Regex!2923) Bool)

(assert (=> start!91230 (= res!474492 (validRegex!1392 r!15766))))

(assert (=> start!91230 e!673805))

(declare-fun e!673804 () Bool)

(assert (=> start!91230 e!673804))

(declare-fun e!673806 () Bool)

(assert (=> start!91230 e!673806))

(declare-fun b!1061867 () Bool)

(declare-fun tp!318931 () Bool)

(declare-fun tp!318936 () Bool)

(assert (=> b!1061867 (= e!673804 (and tp!318931 tp!318936))))

(declare-fun b!1061868 () Bool)

(declare-fun tp_is_empty!5489 () Bool)

(declare-fun tp!318935 () Bool)

(assert (=> b!1061868 (= e!673806 (and tp_is_empty!5489 tp!318935))))

(declare-fun b!1061869 () Bool)

(declare-fun tp!318934 () Bool)

(assert (=> b!1061869 (= e!673804 tp!318934)))

(declare-fun b!1061870 () Bool)

(declare-fun removeUselessConcat!472 (Regex!2923) Regex!2923)

(assert (=> b!1061870 (= e!673807 (not (matchR!1459 (removeUselessConcat!472 r!15766) s!10566)))))

(declare-fun b!1061871 () Bool)

(declare-fun tp!318933 () Bool)

(declare-fun tp!318932 () Bool)

(assert (=> b!1061871 (= e!673804 (and tp!318933 tp!318932))))

(declare-fun b!1061872 () Bool)

(assert (=> b!1061872 (= e!673804 tp_is_empty!5489)))

(declare-fun b!1061873 () Bool)

(declare-fun res!474490 () Bool)

(assert (=> b!1061873 (=> res!474490 e!673807)))

(assert (=> b!1061873 (= res!474490 (matchR!1459 (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766))) s!10566))))

(assert (= (and start!91230 res!474492) b!1061866))

(assert (= (and b!1061866 (not res!474491)) b!1061873))

(assert (= (and b!1061873 (not res!474490)) b!1061870))

(assert (= (and start!91230 ((_ is ElementMatch!2923) r!15766)) b!1061872))

(assert (= (and start!91230 ((_ is Concat!4756) r!15766)) b!1061871))

(assert (= (and start!91230 ((_ is Star!2923) r!15766)) b!1061869))

(assert (= (and start!91230 ((_ is Union!2923) r!15766)) b!1061867))

(assert (= (and start!91230 ((_ is Cons!10137) s!10566)) b!1061868))

(declare-fun m!1221437 () Bool)

(assert (=> b!1061866 m!1221437))

(declare-fun m!1221439 () Bool)

(assert (=> b!1061866 m!1221439))

(declare-fun m!1221441 () Bool)

(assert (=> b!1061866 m!1221441))

(declare-fun m!1221443 () Bool)

(assert (=> start!91230 m!1221443))

(declare-fun m!1221445 () Bool)

(assert (=> b!1061870 m!1221445))

(assert (=> b!1061870 m!1221445))

(declare-fun m!1221447 () Bool)

(assert (=> b!1061870 m!1221447))

(declare-fun m!1221449 () Bool)

(assert (=> b!1061873 m!1221449))

(declare-fun m!1221451 () Bool)

(assert (=> b!1061873 m!1221451))

(declare-fun m!1221453 () Bool)

(assert (=> b!1061873 m!1221453))

(check-sat (not b!1061873) (not b!1061866) (not b!1061869) (not b!1061868) (not b!1061871) tp_is_empty!5489 (not b!1061867) (not start!91230) (not b!1061870))
(check-sat)
(get-model)

(declare-fun b!1061924 () Bool)

(declare-fun res!474520 () Bool)

(declare-fun e!673838 () Bool)

(assert (=> b!1061924 (=> res!474520 e!673838)))

(declare-fun e!673840 () Bool)

(assert (=> b!1061924 (= res!474520 e!673840)))

(declare-fun res!474518 () Bool)

(assert (=> b!1061924 (=> (not res!474518) (not e!673840))))

(declare-fun lt!359972 () Bool)

(assert (=> b!1061924 (= res!474518 lt!359972)))

(declare-fun b!1061925 () Bool)

(declare-fun res!474517 () Bool)

(assert (=> b!1061925 (=> res!474517 e!673838)))

(assert (=> b!1061925 (= res!474517 (not ((_ is ElementMatch!2923) (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766))))))))

(declare-fun e!673841 () Bool)

(assert (=> b!1061925 (= e!673841 e!673838)))

(declare-fun bm!76405 () Bool)

(declare-fun call!76410 () Bool)

(declare-fun isEmpty!6553 (List!10153) Bool)

(assert (=> bm!76405 (= call!76410 (isEmpty!6553 s!10566))))

(declare-fun b!1061926 () Bool)

(declare-fun e!673836 () Bool)

(declare-fun head!1968 (List!10153) C!6416)

(assert (=> b!1061926 (= e!673836 (not (= (head!1968 s!10566) (c!177994 (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766)))))))))

(declare-fun b!1061927 () Bool)

(declare-fun res!474516 () Bool)

(assert (=> b!1061927 (=> (not res!474516) (not e!673840))))

(declare-fun tail!1530 (List!10153) List!10153)

(assert (=> b!1061927 (= res!474516 (isEmpty!6553 (tail!1530 s!10566)))))

(declare-fun b!1061928 () Bool)

(declare-fun e!673839 () Bool)

(assert (=> b!1061928 (= e!673839 e!673836)))

(declare-fun res!474519 () Bool)

(assert (=> b!1061928 (=> res!474519 e!673836)))

(assert (=> b!1061928 (= res!474519 call!76410)))

(declare-fun b!1061929 () Bool)

(declare-fun res!474522 () Bool)

(assert (=> b!1061929 (=> (not res!474522) (not e!673840))))

(assert (=> b!1061929 (= res!474522 (not call!76410))))

(declare-fun d!300745 () Bool)

(declare-fun e!673837 () Bool)

(assert (=> d!300745 e!673837))

(declare-fun c!178009 () Bool)

(assert (=> d!300745 (= c!178009 ((_ is EmptyExpr!2923) (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766)))))))

(declare-fun e!673842 () Bool)

(assert (=> d!300745 (= lt!359972 e!673842)))

(declare-fun c!178010 () Bool)

(assert (=> d!300745 (= c!178010 (isEmpty!6553 s!10566))))

(assert (=> d!300745 (validRegex!1392 (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766))))))

(assert (=> d!300745 (= (matchR!1459 (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766))) s!10566) lt!359972)))

(declare-fun b!1061930 () Bool)

(declare-fun res!474515 () Bool)

(assert (=> b!1061930 (=> res!474515 e!673836)))

(assert (=> b!1061930 (= res!474515 (not (isEmpty!6553 (tail!1530 s!10566))))))

(declare-fun b!1061931 () Bool)

(assert (=> b!1061931 (= e!673838 e!673839)))

(declare-fun res!474521 () Bool)

(assert (=> b!1061931 (=> (not res!474521) (not e!673839))))

(assert (=> b!1061931 (= res!474521 (not lt!359972))))

(declare-fun b!1061932 () Bool)

(declare-fun nullable!1013 (Regex!2923) Bool)

(assert (=> b!1061932 (= e!673842 (nullable!1013 (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766)))))))

(declare-fun b!1061933 () Bool)

(assert (=> b!1061933 (= e!673837 e!673841)))

(declare-fun c!178011 () Bool)

(assert (=> b!1061933 (= c!178011 ((_ is EmptyLang!2923) (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766)))))))

(declare-fun b!1061934 () Bool)

(assert (=> b!1061934 (= e!673841 (not lt!359972))))

(declare-fun b!1061935 () Bool)

(assert (=> b!1061935 (= e!673837 (= lt!359972 call!76410))))

(declare-fun b!1061936 () Bool)

(declare-fun derivativeStep!813 (Regex!2923 C!6416) Regex!2923)

(assert (=> b!1061936 (= e!673842 (matchR!1459 (derivativeStep!813 (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766))) (head!1968 s!10566)) (tail!1530 s!10566)))))

(declare-fun b!1061937 () Bool)

(assert (=> b!1061937 (= e!673840 (= (head!1968 s!10566) (c!177994 (Union!2923 (removeUselessConcat!472 (regOne!6359 r!15766)) (removeUselessConcat!472 (regTwo!6359 r!15766))))))))

(assert (= (and d!300745 c!178010) b!1061932))

(assert (= (and d!300745 (not c!178010)) b!1061936))

(assert (= (and d!300745 c!178009) b!1061935))

(assert (= (and d!300745 (not c!178009)) b!1061933))

(assert (= (and b!1061933 c!178011) b!1061934))

(assert (= (and b!1061933 (not c!178011)) b!1061925))

(assert (= (and b!1061925 (not res!474517)) b!1061924))

(assert (= (and b!1061924 res!474518) b!1061929))

(assert (= (and b!1061929 res!474522) b!1061927))

(assert (= (and b!1061927 res!474516) b!1061937))

(assert (= (and b!1061924 (not res!474520)) b!1061931))

(assert (= (and b!1061931 res!474521) b!1061928))

(assert (= (and b!1061928 (not res!474519)) b!1061930))

(assert (= (and b!1061930 (not res!474515)) b!1061926))

(assert (= (or b!1061935 b!1061928 b!1061929) bm!76405))

(declare-fun m!1221455 () Bool)

(assert (=> b!1061927 m!1221455))

(assert (=> b!1061927 m!1221455))

(declare-fun m!1221457 () Bool)

(assert (=> b!1061927 m!1221457))

(declare-fun m!1221459 () Bool)

(assert (=> b!1061936 m!1221459))

(assert (=> b!1061936 m!1221459))

(declare-fun m!1221461 () Bool)

(assert (=> b!1061936 m!1221461))

(assert (=> b!1061936 m!1221455))

(assert (=> b!1061936 m!1221461))

(assert (=> b!1061936 m!1221455))

(declare-fun m!1221463 () Bool)

(assert (=> b!1061936 m!1221463))

(assert (=> b!1061930 m!1221455))

(assert (=> b!1061930 m!1221455))

(assert (=> b!1061930 m!1221457))

(declare-fun m!1221465 () Bool)

(assert (=> b!1061932 m!1221465))

(assert (=> b!1061937 m!1221459))

(declare-fun m!1221467 () Bool)

(assert (=> d!300745 m!1221467))

(declare-fun m!1221469 () Bool)

(assert (=> d!300745 m!1221469))

(assert (=> b!1061926 m!1221459))

(assert (=> bm!76405 m!1221467))

(assert (=> b!1061873 d!300745))

(declare-fun b!1061960 () Bool)

(declare-fun e!673855 () Regex!2923)

(declare-fun call!76422 () Regex!2923)

(assert (=> b!1061960 (= e!673855 (Star!2923 call!76422))))

(declare-fun d!300749 () Bool)

(declare-fun e!673856 () Bool)

(assert (=> d!300749 e!673856))

(declare-fun res!474525 () Bool)

(assert (=> d!300749 (=> (not res!474525) (not e!673856))))

(declare-fun lt!359975 () Regex!2923)

(assert (=> d!300749 (= res!474525 (validRegex!1392 lt!359975))))

(declare-fun e!673860 () Regex!2923)

(assert (=> d!300749 (= lt!359975 e!673860)))

(declare-fun c!178022 () Bool)

(assert (=> d!300749 (= c!178022 (and ((_ is Concat!4756) (regOne!6359 r!15766)) ((_ is EmptyExpr!2923) (regOne!6358 (regOne!6359 r!15766)))))))

(assert (=> d!300749 (validRegex!1392 (regOne!6359 r!15766))))

(assert (=> d!300749 (= (removeUselessConcat!472 (regOne!6359 r!15766)) lt!359975)))

(declare-fun b!1061961 () Bool)

(declare-fun e!673859 () Regex!2923)

(assert (=> b!1061961 (= e!673860 e!673859)))

(declare-fun c!178026 () Bool)

(assert (=> b!1061961 (= c!178026 (and ((_ is Concat!4756) (regOne!6359 r!15766)) ((_ is EmptyExpr!2923) (regTwo!6358 (regOne!6359 r!15766)))))))

(declare-fun b!1061962 () Bool)

(declare-fun e!673857 () Regex!2923)

(declare-fun call!76425 () Regex!2923)

(assert (=> b!1061962 (= e!673857 (Union!2923 call!76425 call!76422))))

(declare-fun b!1061963 () Bool)

(declare-fun e!673858 () Regex!2923)

(declare-fun call!76423 () Regex!2923)

(assert (=> b!1061963 (= e!673858 (Concat!4756 call!76423 call!76425))))

(declare-fun bm!76416 () Bool)

(assert (=> bm!76416 (= call!76422 call!76423)))

(declare-fun b!1061964 () Bool)

(declare-fun c!178024 () Bool)

(assert (=> b!1061964 (= c!178024 ((_ is Star!2923) (regOne!6359 r!15766)))))

(assert (=> b!1061964 (= e!673857 e!673855)))

(declare-fun bm!76417 () Bool)

(declare-fun call!76424 () Regex!2923)

(assert (=> bm!76417 (= call!76423 call!76424)))

(declare-fun b!1061965 () Bool)

(declare-fun call!76421 () Regex!2923)

(assert (=> b!1061965 (= e!673859 call!76421)))

(declare-fun bm!76418 () Bool)

(declare-fun c!178023 () Bool)

(assert (=> bm!76418 (= call!76421 (removeUselessConcat!472 (ite c!178026 (regOne!6358 (regOne!6359 r!15766)) (ite c!178023 (regTwo!6358 (regOne!6359 r!15766)) (regOne!6359 (regOne!6359 r!15766))))))))

(declare-fun b!1061966 () Bool)

(assert (=> b!1061966 (= e!673855 (regOne!6359 r!15766))))

(declare-fun b!1061967 () Bool)

(assert (=> b!1061967 (= e!673856 (= (nullable!1013 lt!359975) (nullable!1013 (regOne!6359 r!15766))))))

(declare-fun b!1061968 () Bool)

(assert (=> b!1061968 (= e!673860 call!76424)))

(declare-fun b!1061969 () Bool)

(assert (=> b!1061969 (= c!178023 ((_ is Concat!4756) (regOne!6359 r!15766)))))

(assert (=> b!1061969 (= e!673859 e!673858)))

(declare-fun bm!76419 () Bool)

(declare-fun c!178025 () Bool)

(assert (=> bm!76419 (= call!76424 (removeUselessConcat!472 (ite c!178022 (regTwo!6358 (regOne!6359 r!15766)) (ite c!178023 (regOne!6358 (regOne!6359 r!15766)) (ite c!178025 (regTwo!6359 (regOne!6359 r!15766)) (reg!3252 (regOne!6359 r!15766)))))))))

(declare-fun b!1061970 () Bool)

(assert (=> b!1061970 (= e!673858 e!673857)))

(assert (=> b!1061970 (= c!178025 ((_ is Union!2923) (regOne!6359 r!15766)))))

(declare-fun bm!76420 () Bool)

(assert (=> bm!76420 (= call!76425 call!76421)))

(assert (= (and d!300749 c!178022) b!1061968))

(assert (= (and d!300749 (not c!178022)) b!1061961))

(assert (= (and b!1061961 c!178026) b!1061965))

(assert (= (and b!1061961 (not c!178026)) b!1061969))

(assert (= (and b!1061969 c!178023) b!1061963))

(assert (= (and b!1061969 (not c!178023)) b!1061970))

(assert (= (and b!1061970 c!178025) b!1061962))

(assert (= (and b!1061970 (not c!178025)) b!1061964))

(assert (= (and b!1061964 c!178024) b!1061960))

(assert (= (and b!1061964 (not c!178024)) b!1061966))

(assert (= (or b!1061962 b!1061960) bm!76416))

(assert (= (or b!1061963 b!1061962) bm!76420))

(assert (= (or b!1061963 bm!76416) bm!76417))

(assert (= (or b!1061965 bm!76420) bm!76418))

(assert (= (or b!1061968 bm!76417) bm!76419))

(assert (= (and d!300749 res!474525) b!1061967))

(declare-fun m!1221471 () Bool)

(assert (=> d!300749 m!1221471))

(declare-fun m!1221473 () Bool)

(assert (=> d!300749 m!1221473))

(declare-fun m!1221475 () Bool)

(assert (=> bm!76418 m!1221475))

(declare-fun m!1221477 () Bool)

(assert (=> b!1061967 m!1221477))

(declare-fun m!1221479 () Bool)

(assert (=> b!1061967 m!1221479))

(declare-fun m!1221481 () Bool)

(assert (=> bm!76419 m!1221481))

(assert (=> b!1061873 d!300749))

(declare-fun b!1061971 () Bool)

(declare-fun e!673861 () Regex!2923)

(declare-fun call!76427 () Regex!2923)

(assert (=> b!1061971 (= e!673861 (Star!2923 call!76427))))

(declare-fun d!300751 () Bool)

(declare-fun e!673862 () Bool)

(assert (=> d!300751 e!673862))

(declare-fun res!474526 () Bool)

(assert (=> d!300751 (=> (not res!474526) (not e!673862))))

(declare-fun lt!359976 () Regex!2923)

(assert (=> d!300751 (= res!474526 (validRegex!1392 lt!359976))))

(declare-fun e!673866 () Regex!2923)

(assert (=> d!300751 (= lt!359976 e!673866)))

(declare-fun c!178027 () Bool)

(assert (=> d!300751 (= c!178027 (and ((_ is Concat!4756) (regTwo!6359 r!15766)) ((_ is EmptyExpr!2923) (regOne!6358 (regTwo!6359 r!15766)))))))

(assert (=> d!300751 (validRegex!1392 (regTwo!6359 r!15766))))

(assert (=> d!300751 (= (removeUselessConcat!472 (regTwo!6359 r!15766)) lt!359976)))

(declare-fun b!1061972 () Bool)

(declare-fun e!673865 () Regex!2923)

(assert (=> b!1061972 (= e!673866 e!673865)))

(declare-fun c!178031 () Bool)

(assert (=> b!1061972 (= c!178031 (and ((_ is Concat!4756) (regTwo!6359 r!15766)) ((_ is EmptyExpr!2923) (regTwo!6358 (regTwo!6359 r!15766)))))))

(declare-fun b!1061973 () Bool)

(declare-fun e!673863 () Regex!2923)

(declare-fun call!76430 () Regex!2923)

(assert (=> b!1061973 (= e!673863 (Union!2923 call!76430 call!76427))))

(declare-fun b!1061974 () Bool)

(declare-fun e!673864 () Regex!2923)

(declare-fun call!76428 () Regex!2923)

(assert (=> b!1061974 (= e!673864 (Concat!4756 call!76428 call!76430))))

(declare-fun bm!76421 () Bool)

(assert (=> bm!76421 (= call!76427 call!76428)))

(declare-fun b!1061975 () Bool)

(declare-fun c!178029 () Bool)

(assert (=> b!1061975 (= c!178029 ((_ is Star!2923) (regTwo!6359 r!15766)))))

(assert (=> b!1061975 (= e!673863 e!673861)))

(declare-fun bm!76422 () Bool)

(declare-fun call!76429 () Regex!2923)

(assert (=> bm!76422 (= call!76428 call!76429)))

(declare-fun b!1061976 () Bool)

(declare-fun call!76426 () Regex!2923)

(assert (=> b!1061976 (= e!673865 call!76426)))

(declare-fun bm!76423 () Bool)

(declare-fun c!178028 () Bool)

(assert (=> bm!76423 (= call!76426 (removeUselessConcat!472 (ite c!178031 (regOne!6358 (regTwo!6359 r!15766)) (ite c!178028 (regTwo!6358 (regTwo!6359 r!15766)) (regOne!6359 (regTwo!6359 r!15766))))))))

(declare-fun b!1061977 () Bool)

(assert (=> b!1061977 (= e!673861 (regTwo!6359 r!15766))))

(declare-fun b!1061978 () Bool)

(assert (=> b!1061978 (= e!673862 (= (nullable!1013 lt!359976) (nullable!1013 (regTwo!6359 r!15766))))))

(declare-fun b!1061979 () Bool)

(assert (=> b!1061979 (= e!673866 call!76429)))

(declare-fun b!1061980 () Bool)

(assert (=> b!1061980 (= c!178028 ((_ is Concat!4756) (regTwo!6359 r!15766)))))

(assert (=> b!1061980 (= e!673865 e!673864)))

(declare-fun c!178030 () Bool)

(declare-fun bm!76424 () Bool)

(assert (=> bm!76424 (= call!76429 (removeUselessConcat!472 (ite c!178027 (regTwo!6358 (regTwo!6359 r!15766)) (ite c!178028 (regOne!6358 (regTwo!6359 r!15766)) (ite c!178030 (regTwo!6359 (regTwo!6359 r!15766)) (reg!3252 (regTwo!6359 r!15766)))))))))

(declare-fun b!1061981 () Bool)

(assert (=> b!1061981 (= e!673864 e!673863)))

(assert (=> b!1061981 (= c!178030 ((_ is Union!2923) (regTwo!6359 r!15766)))))

(declare-fun bm!76425 () Bool)

(assert (=> bm!76425 (= call!76430 call!76426)))

(assert (= (and d!300751 c!178027) b!1061979))

(assert (= (and d!300751 (not c!178027)) b!1061972))

(assert (= (and b!1061972 c!178031) b!1061976))

(assert (= (and b!1061972 (not c!178031)) b!1061980))

(assert (= (and b!1061980 c!178028) b!1061974))

(assert (= (and b!1061980 (not c!178028)) b!1061981))

(assert (= (and b!1061981 c!178030) b!1061973))

(assert (= (and b!1061981 (not c!178030)) b!1061975))

(assert (= (and b!1061975 c!178029) b!1061971))

(assert (= (and b!1061975 (not c!178029)) b!1061977))

(assert (= (or b!1061973 b!1061971) bm!76421))

(assert (= (or b!1061974 b!1061973) bm!76425))

(assert (= (or b!1061974 bm!76421) bm!76422))

(assert (= (or b!1061976 bm!76425) bm!76423))

(assert (= (or b!1061979 bm!76422) bm!76424))

(assert (= (and d!300751 res!474526) b!1061978))

(declare-fun m!1221483 () Bool)

(assert (=> d!300751 m!1221483))

(declare-fun m!1221485 () Bool)

(assert (=> d!300751 m!1221485))

(declare-fun m!1221487 () Bool)

(assert (=> bm!76423 m!1221487))

(declare-fun m!1221489 () Bool)

(assert (=> b!1061978 m!1221489))

(declare-fun m!1221491 () Bool)

(assert (=> b!1061978 m!1221491))

(declare-fun m!1221493 () Bool)

(assert (=> bm!76424 m!1221493))

(assert (=> b!1061873 d!300751))

(declare-fun b!1062227 () Bool)

(assert (=> b!1062227 true))

(assert (=> b!1062227 true))

(declare-fun bs!251862 () Bool)

(declare-fun b!1062228 () Bool)

(assert (= bs!251862 (and b!1062228 b!1062227)))

(declare-fun lambda!38360 () Int)

(declare-fun lambda!38359 () Int)

(assert (=> bs!251862 (not (= lambda!38360 lambda!38359))))

(assert (=> b!1062228 true))

(assert (=> b!1062228 true))

(declare-fun b!1062226 () Bool)

(declare-fun c!178090 () Bool)

(assert (=> b!1062226 (= c!178090 ((_ is Union!2923) r!15766))))

(declare-fun e!673995 () Bool)

(declare-fun e!673994 () Bool)

(assert (=> b!1062226 (= e!673995 e!673994)))

(declare-fun e!673997 () Bool)

(declare-fun call!76481 () Bool)

(assert (=> b!1062227 (= e!673997 call!76481)))

(declare-fun bm!76475 () Bool)

(declare-fun call!76480 () Bool)

(assert (=> bm!76475 (= call!76480 (isEmpty!6553 s!10566))))

(declare-fun e!673993 () Bool)

(assert (=> b!1062228 (= e!673993 call!76481)))

(declare-fun d!300753 () Bool)

(declare-fun c!178091 () Bool)

(assert (=> d!300753 (= c!178091 ((_ is EmptyExpr!2923) r!15766))))

(declare-fun e!673996 () Bool)

(assert (=> d!300753 (= (matchRSpec!722 r!15766 s!10566) e!673996)))

(declare-fun b!1062229 () Bool)

(assert (=> b!1062229 (= e!673994 e!673993)))

(declare-fun c!178093 () Bool)

(assert (=> b!1062229 (= c!178093 ((_ is Star!2923) r!15766))))

(declare-fun b!1062230 () Bool)

(declare-fun e!673998 () Bool)

(assert (=> b!1062230 (= e!673994 e!673998)))

(declare-fun res!474616 () Bool)

(assert (=> b!1062230 (= res!474616 (matchRSpec!722 (regOne!6359 r!15766) s!10566))))

(assert (=> b!1062230 (=> res!474616 e!673998)))

(declare-fun b!1062231 () Bool)

(declare-fun res!474618 () Bool)

(assert (=> b!1062231 (=> res!474618 e!673997)))

(assert (=> b!1062231 (= res!474618 call!76480)))

(assert (=> b!1062231 (= e!673993 e!673997)))

(declare-fun b!1062232 () Bool)

(assert (=> b!1062232 (= e!673996 call!76480)))

(declare-fun b!1062233 () Bool)

(assert (=> b!1062233 (= e!673995 (= s!10566 (Cons!10137 (c!177994 r!15766) Nil!10137)))))

(declare-fun b!1062234 () Bool)

(declare-fun c!178092 () Bool)

(assert (=> b!1062234 (= c!178092 ((_ is ElementMatch!2923) r!15766))))

(declare-fun e!673992 () Bool)

(assert (=> b!1062234 (= e!673992 e!673995)))

(declare-fun b!1062235 () Bool)

(assert (=> b!1062235 (= e!673998 (matchRSpec!722 (regTwo!6359 r!15766) s!10566))))

(declare-fun bm!76476 () Bool)

(declare-fun Exists!648 (Int) Bool)

(assert (=> bm!76476 (= call!76481 (Exists!648 (ite c!178093 lambda!38359 lambda!38360)))))

(declare-fun b!1062236 () Bool)

(assert (=> b!1062236 (= e!673996 e!673992)))

(declare-fun res!474617 () Bool)

(assert (=> b!1062236 (= res!474617 (not ((_ is EmptyLang!2923) r!15766)))))

(assert (=> b!1062236 (=> (not res!474617) (not e!673992))))

(assert (= (and d!300753 c!178091) b!1062232))

(assert (= (and d!300753 (not c!178091)) b!1062236))

(assert (= (and b!1062236 res!474617) b!1062234))

(assert (= (and b!1062234 c!178092) b!1062233))

(assert (= (and b!1062234 (not c!178092)) b!1062226))

(assert (= (and b!1062226 c!178090) b!1062230))

(assert (= (and b!1062226 (not c!178090)) b!1062229))

(assert (= (and b!1062230 (not res!474616)) b!1062235))

(assert (= (and b!1062229 c!178093) b!1062231))

(assert (= (and b!1062229 (not c!178093)) b!1062228))

(assert (= (and b!1062231 (not res!474618)) b!1062227))

(assert (= (or b!1062227 b!1062228) bm!76476))

(assert (= (or b!1062232 b!1062231) bm!76475))

(assert (=> bm!76475 m!1221467))

(declare-fun m!1221571 () Bool)

(assert (=> b!1062230 m!1221571))

(declare-fun m!1221573 () Bool)

(assert (=> b!1062235 m!1221573))

(declare-fun m!1221575 () Bool)

(assert (=> bm!76476 m!1221575))

(assert (=> b!1061866 d!300753))

(declare-fun b!1062241 () Bool)

(declare-fun res!474624 () Bool)

(declare-fun e!674001 () Bool)

(assert (=> b!1062241 (=> res!474624 e!674001)))

(declare-fun e!674003 () Bool)

(assert (=> b!1062241 (= res!474624 e!674003)))

(declare-fun res!474622 () Bool)

(assert (=> b!1062241 (=> (not res!474622) (not e!674003))))

(declare-fun lt!359990 () Bool)

(assert (=> b!1062241 (= res!474622 lt!359990)))

(declare-fun b!1062242 () Bool)

(declare-fun res!474621 () Bool)

(assert (=> b!1062242 (=> res!474621 e!674001)))

(assert (=> b!1062242 (= res!474621 (not ((_ is ElementMatch!2923) r!15766)))))

(declare-fun e!674004 () Bool)

(assert (=> b!1062242 (= e!674004 e!674001)))

(declare-fun bm!76477 () Bool)

(declare-fun call!76482 () Bool)

(assert (=> bm!76477 (= call!76482 (isEmpty!6553 s!10566))))

(declare-fun b!1062243 () Bool)

(declare-fun e!673999 () Bool)

(assert (=> b!1062243 (= e!673999 (not (= (head!1968 s!10566) (c!177994 r!15766))))))

(declare-fun b!1062244 () Bool)

(declare-fun res!474620 () Bool)

(assert (=> b!1062244 (=> (not res!474620) (not e!674003))))

(assert (=> b!1062244 (= res!474620 (isEmpty!6553 (tail!1530 s!10566)))))

(declare-fun b!1062245 () Bool)

(declare-fun e!674002 () Bool)

(assert (=> b!1062245 (= e!674002 e!673999)))

(declare-fun res!474623 () Bool)

(assert (=> b!1062245 (=> res!474623 e!673999)))

(assert (=> b!1062245 (= res!474623 call!76482)))

(declare-fun b!1062246 () Bool)

(declare-fun res!474626 () Bool)

(assert (=> b!1062246 (=> (not res!474626) (not e!674003))))

(assert (=> b!1062246 (= res!474626 (not call!76482))))

(declare-fun d!300771 () Bool)

(declare-fun e!674000 () Bool)

(assert (=> d!300771 e!674000))

(declare-fun c!178094 () Bool)

(assert (=> d!300771 (= c!178094 ((_ is EmptyExpr!2923) r!15766))))

(declare-fun e!674005 () Bool)

(assert (=> d!300771 (= lt!359990 e!674005)))

(declare-fun c!178095 () Bool)

(assert (=> d!300771 (= c!178095 (isEmpty!6553 s!10566))))

(assert (=> d!300771 (validRegex!1392 r!15766)))

(assert (=> d!300771 (= (matchR!1459 r!15766 s!10566) lt!359990)))

(declare-fun b!1062247 () Bool)

(declare-fun res!474619 () Bool)

(assert (=> b!1062247 (=> res!474619 e!673999)))

(assert (=> b!1062247 (= res!474619 (not (isEmpty!6553 (tail!1530 s!10566))))))

(declare-fun b!1062248 () Bool)

(assert (=> b!1062248 (= e!674001 e!674002)))

(declare-fun res!474625 () Bool)

(assert (=> b!1062248 (=> (not res!474625) (not e!674002))))

(assert (=> b!1062248 (= res!474625 (not lt!359990))))

(declare-fun b!1062249 () Bool)

(assert (=> b!1062249 (= e!674005 (nullable!1013 r!15766))))

(declare-fun b!1062250 () Bool)

(assert (=> b!1062250 (= e!674000 e!674004)))

(declare-fun c!178096 () Bool)

(assert (=> b!1062250 (= c!178096 ((_ is EmptyLang!2923) r!15766))))

(declare-fun b!1062251 () Bool)

(assert (=> b!1062251 (= e!674004 (not lt!359990))))

(declare-fun b!1062252 () Bool)

(assert (=> b!1062252 (= e!674000 (= lt!359990 call!76482))))

(declare-fun b!1062253 () Bool)

(assert (=> b!1062253 (= e!674005 (matchR!1459 (derivativeStep!813 r!15766 (head!1968 s!10566)) (tail!1530 s!10566)))))

(declare-fun b!1062254 () Bool)

(assert (=> b!1062254 (= e!674003 (= (head!1968 s!10566) (c!177994 r!15766)))))

(assert (= (and d!300771 c!178095) b!1062249))

(assert (= (and d!300771 (not c!178095)) b!1062253))

(assert (= (and d!300771 c!178094) b!1062252))

(assert (= (and d!300771 (not c!178094)) b!1062250))

(assert (= (and b!1062250 c!178096) b!1062251))

(assert (= (and b!1062250 (not c!178096)) b!1062242))

(assert (= (and b!1062242 (not res!474621)) b!1062241))

(assert (= (and b!1062241 res!474622) b!1062246))

(assert (= (and b!1062246 res!474626) b!1062244))

(assert (= (and b!1062244 res!474620) b!1062254))

(assert (= (and b!1062241 (not res!474624)) b!1062248))

(assert (= (and b!1062248 res!474625) b!1062245))

(assert (= (and b!1062245 (not res!474623)) b!1062247))

(assert (= (and b!1062247 (not res!474619)) b!1062243))

(assert (= (or b!1062252 b!1062245 b!1062246) bm!76477))

(assert (=> b!1062244 m!1221455))

(assert (=> b!1062244 m!1221455))

(assert (=> b!1062244 m!1221457))

(assert (=> b!1062253 m!1221459))

(assert (=> b!1062253 m!1221459))

(declare-fun m!1221577 () Bool)

(assert (=> b!1062253 m!1221577))

(assert (=> b!1062253 m!1221455))

(assert (=> b!1062253 m!1221577))

(assert (=> b!1062253 m!1221455))

(declare-fun m!1221579 () Bool)

(assert (=> b!1062253 m!1221579))

(assert (=> b!1062247 m!1221455))

(assert (=> b!1062247 m!1221455))

(assert (=> b!1062247 m!1221457))

(declare-fun m!1221581 () Bool)

(assert (=> b!1062249 m!1221581))

(assert (=> b!1062254 m!1221459))

(assert (=> d!300771 m!1221467))

(assert (=> d!300771 m!1221443))

(assert (=> b!1062243 m!1221459))

(assert (=> bm!76477 m!1221467))

(assert (=> b!1061866 d!300771))

(declare-fun d!300773 () Bool)

(assert (=> d!300773 (= (matchR!1459 r!15766 s!10566) (matchRSpec!722 r!15766 s!10566))))

(declare-fun lt!359993 () Unit!15521)

(declare-fun choose!6767 (Regex!2923 List!10153) Unit!15521)

(assert (=> d!300773 (= lt!359993 (choose!6767 r!15766 s!10566))))

(assert (=> d!300773 (validRegex!1392 r!15766)))

(assert (=> d!300773 (= (mainMatchTheorem!722 r!15766 s!10566) lt!359993)))

(declare-fun bs!251863 () Bool)

(assert (= bs!251863 d!300773))

(assert (=> bs!251863 m!1221439))

(assert (=> bs!251863 m!1221437))

(declare-fun m!1221583 () Bool)

(assert (=> bs!251863 m!1221583))

(assert (=> bs!251863 m!1221443))

(assert (=> b!1061866 d!300773))

(declare-fun b!1062273 () Bool)

(declare-fun res!474637 () Bool)

(declare-fun e!674020 () Bool)

(assert (=> b!1062273 (=> (not res!474637) (not e!674020))))

(declare-fun call!76490 () Bool)

(assert (=> b!1062273 (= res!474637 call!76490)))

(declare-fun e!674024 () Bool)

(assert (=> b!1062273 (= e!674024 e!674020)))

(declare-fun b!1062274 () Bool)

(declare-fun e!674026 () Bool)

(declare-fun e!674023 () Bool)

(assert (=> b!1062274 (= e!674026 e!674023)))

(declare-fun res!474639 () Bool)

(assert (=> b!1062274 (= res!474639 (not (nullable!1013 (reg!3252 r!15766))))))

(assert (=> b!1062274 (=> (not res!474639) (not e!674023))))

(declare-fun b!1062275 () Bool)

(declare-fun e!674025 () Bool)

(declare-fun call!76489 () Bool)

(assert (=> b!1062275 (= e!674025 call!76489)))

(declare-fun bm!76484 () Bool)

(declare-fun call!76491 () Bool)

(assert (=> bm!76484 (= call!76490 call!76491)))

(declare-fun bm!76485 () Bool)

(declare-fun c!178101 () Bool)

(assert (=> bm!76485 (= call!76489 (validRegex!1392 (ite c!178101 (regTwo!6359 r!15766) (regTwo!6358 r!15766))))))

(declare-fun b!1062276 () Bool)

(declare-fun res!474641 () Bool)

(declare-fun e!674022 () Bool)

(assert (=> b!1062276 (=> res!474641 e!674022)))

(assert (=> b!1062276 (= res!474641 (not ((_ is Concat!4756) r!15766)))))

(assert (=> b!1062276 (= e!674024 e!674022)))

(declare-fun c!178102 () Bool)

(declare-fun bm!76486 () Bool)

(assert (=> bm!76486 (= call!76491 (validRegex!1392 (ite c!178102 (reg!3252 r!15766) (ite c!178101 (regOne!6359 r!15766) (regOne!6358 r!15766)))))))

(declare-fun b!1062277 () Bool)

(declare-fun e!674021 () Bool)

(assert (=> b!1062277 (= e!674021 e!674026)))

(assert (=> b!1062277 (= c!178102 ((_ is Star!2923) r!15766))))

(declare-fun b!1062278 () Bool)

(assert (=> b!1062278 (= e!674026 e!674024)))

(assert (=> b!1062278 (= c!178101 ((_ is Union!2923) r!15766))))

(declare-fun d!300775 () Bool)

(declare-fun res!474640 () Bool)

(assert (=> d!300775 (=> res!474640 e!674021)))

(assert (=> d!300775 (= res!474640 ((_ is ElementMatch!2923) r!15766))))

(assert (=> d!300775 (= (validRegex!1392 r!15766) e!674021)))

(declare-fun b!1062279 () Bool)

(assert (=> b!1062279 (= e!674023 call!76491)))

(declare-fun b!1062280 () Bool)

(assert (=> b!1062280 (= e!674022 e!674025)))

(declare-fun res!474638 () Bool)

(assert (=> b!1062280 (=> (not res!474638) (not e!674025))))

(assert (=> b!1062280 (= res!474638 call!76490)))

(declare-fun b!1062281 () Bool)

(assert (=> b!1062281 (= e!674020 call!76489)))

(assert (= (and d!300775 (not res!474640)) b!1062277))

(assert (= (and b!1062277 c!178102) b!1062274))

(assert (= (and b!1062277 (not c!178102)) b!1062278))

(assert (= (and b!1062274 res!474639) b!1062279))

(assert (= (and b!1062278 c!178101) b!1062273))

(assert (= (and b!1062278 (not c!178101)) b!1062276))

(assert (= (and b!1062273 res!474637) b!1062281))

(assert (= (and b!1062276 (not res!474641)) b!1062280))

(assert (= (and b!1062280 res!474638) b!1062275))

(assert (= (or b!1062281 b!1062275) bm!76485))

(assert (= (or b!1062273 b!1062280) bm!76484))

(assert (= (or b!1062279 bm!76484) bm!76486))

(declare-fun m!1221585 () Bool)

(assert (=> b!1062274 m!1221585))

(declare-fun m!1221587 () Bool)

(assert (=> bm!76485 m!1221587))

(declare-fun m!1221589 () Bool)

(assert (=> bm!76486 m!1221589))

(assert (=> start!91230 d!300775))

(declare-fun b!1062282 () Bool)

(declare-fun res!474647 () Bool)

(declare-fun e!674029 () Bool)

(assert (=> b!1062282 (=> res!474647 e!674029)))

(declare-fun e!674031 () Bool)

(assert (=> b!1062282 (= res!474647 e!674031)))

(declare-fun res!474645 () Bool)

(assert (=> b!1062282 (=> (not res!474645) (not e!674031))))

(declare-fun lt!359994 () Bool)

(assert (=> b!1062282 (= res!474645 lt!359994)))

(declare-fun b!1062283 () Bool)

(declare-fun res!474644 () Bool)

(assert (=> b!1062283 (=> res!474644 e!674029)))

(assert (=> b!1062283 (= res!474644 (not ((_ is ElementMatch!2923) (removeUselessConcat!472 r!15766))))))

(declare-fun e!674032 () Bool)

(assert (=> b!1062283 (= e!674032 e!674029)))

(declare-fun bm!76487 () Bool)

(declare-fun call!76492 () Bool)

(assert (=> bm!76487 (= call!76492 (isEmpty!6553 s!10566))))

(declare-fun b!1062284 () Bool)

(declare-fun e!674027 () Bool)

(assert (=> b!1062284 (= e!674027 (not (= (head!1968 s!10566) (c!177994 (removeUselessConcat!472 r!15766)))))))

(declare-fun b!1062285 () Bool)

(declare-fun res!474643 () Bool)

(assert (=> b!1062285 (=> (not res!474643) (not e!674031))))

(assert (=> b!1062285 (= res!474643 (isEmpty!6553 (tail!1530 s!10566)))))

(declare-fun b!1062286 () Bool)

(declare-fun e!674030 () Bool)

(assert (=> b!1062286 (= e!674030 e!674027)))

(declare-fun res!474646 () Bool)

(assert (=> b!1062286 (=> res!474646 e!674027)))

(assert (=> b!1062286 (= res!474646 call!76492)))

(declare-fun b!1062287 () Bool)

(declare-fun res!474649 () Bool)

(assert (=> b!1062287 (=> (not res!474649) (not e!674031))))

(assert (=> b!1062287 (= res!474649 (not call!76492))))

(declare-fun d!300777 () Bool)

(declare-fun e!674028 () Bool)

(assert (=> d!300777 e!674028))

(declare-fun c!178103 () Bool)

(assert (=> d!300777 (= c!178103 ((_ is EmptyExpr!2923) (removeUselessConcat!472 r!15766)))))

(declare-fun e!674033 () Bool)

(assert (=> d!300777 (= lt!359994 e!674033)))

(declare-fun c!178104 () Bool)

(assert (=> d!300777 (= c!178104 (isEmpty!6553 s!10566))))

(assert (=> d!300777 (validRegex!1392 (removeUselessConcat!472 r!15766))))

(assert (=> d!300777 (= (matchR!1459 (removeUselessConcat!472 r!15766) s!10566) lt!359994)))

(declare-fun b!1062288 () Bool)

(declare-fun res!474642 () Bool)

(assert (=> b!1062288 (=> res!474642 e!674027)))

(assert (=> b!1062288 (= res!474642 (not (isEmpty!6553 (tail!1530 s!10566))))))

(declare-fun b!1062289 () Bool)

(assert (=> b!1062289 (= e!674029 e!674030)))

(declare-fun res!474648 () Bool)

(assert (=> b!1062289 (=> (not res!474648) (not e!674030))))

(assert (=> b!1062289 (= res!474648 (not lt!359994))))

(declare-fun b!1062290 () Bool)

(assert (=> b!1062290 (= e!674033 (nullable!1013 (removeUselessConcat!472 r!15766)))))

(declare-fun b!1062291 () Bool)

(assert (=> b!1062291 (= e!674028 e!674032)))

(declare-fun c!178105 () Bool)

(assert (=> b!1062291 (= c!178105 ((_ is EmptyLang!2923) (removeUselessConcat!472 r!15766)))))

(declare-fun b!1062292 () Bool)

(assert (=> b!1062292 (= e!674032 (not lt!359994))))

(declare-fun b!1062293 () Bool)

(assert (=> b!1062293 (= e!674028 (= lt!359994 call!76492))))

(declare-fun b!1062294 () Bool)

(assert (=> b!1062294 (= e!674033 (matchR!1459 (derivativeStep!813 (removeUselessConcat!472 r!15766) (head!1968 s!10566)) (tail!1530 s!10566)))))

(declare-fun b!1062295 () Bool)

(assert (=> b!1062295 (= e!674031 (= (head!1968 s!10566) (c!177994 (removeUselessConcat!472 r!15766))))))

(assert (= (and d!300777 c!178104) b!1062290))

(assert (= (and d!300777 (not c!178104)) b!1062294))

(assert (= (and d!300777 c!178103) b!1062293))

(assert (= (and d!300777 (not c!178103)) b!1062291))

(assert (= (and b!1062291 c!178105) b!1062292))

(assert (= (and b!1062291 (not c!178105)) b!1062283))

(assert (= (and b!1062283 (not res!474644)) b!1062282))

(assert (= (and b!1062282 res!474645) b!1062287))

(assert (= (and b!1062287 res!474649) b!1062285))

(assert (= (and b!1062285 res!474643) b!1062295))

(assert (= (and b!1062282 (not res!474647)) b!1062289))

(assert (= (and b!1062289 res!474648) b!1062286))

(assert (= (and b!1062286 (not res!474646)) b!1062288))

(assert (= (and b!1062288 (not res!474642)) b!1062284))

(assert (= (or b!1062293 b!1062286 b!1062287) bm!76487))

(assert (=> b!1062285 m!1221455))

(assert (=> b!1062285 m!1221455))

(assert (=> b!1062285 m!1221457))

(assert (=> b!1062294 m!1221459))

(assert (=> b!1062294 m!1221445))

(assert (=> b!1062294 m!1221459))

(declare-fun m!1221591 () Bool)

(assert (=> b!1062294 m!1221591))

(assert (=> b!1062294 m!1221455))

(assert (=> b!1062294 m!1221591))

(assert (=> b!1062294 m!1221455))

(declare-fun m!1221593 () Bool)

(assert (=> b!1062294 m!1221593))

(assert (=> b!1062288 m!1221455))

(assert (=> b!1062288 m!1221455))

(assert (=> b!1062288 m!1221457))

(assert (=> b!1062290 m!1221445))

(declare-fun m!1221595 () Bool)

(assert (=> b!1062290 m!1221595))

(assert (=> b!1062295 m!1221459))

(assert (=> d!300777 m!1221467))

(assert (=> d!300777 m!1221445))

(declare-fun m!1221597 () Bool)

(assert (=> d!300777 m!1221597))

(assert (=> b!1062284 m!1221459))

(assert (=> bm!76487 m!1221467))

(assert (=> b!1061870 d!300777))

(declare-fun b!1062296 () Bool)

(declare-fun e!674034 () Regex!2923)

(declare-fun call!76494 () Regex!2923)

(assert (=> b!1062296 (= e!674034 (Star!2923 call!76494))))

(declare-fun d!300779 () Bool)

(declare-fun e!674035 () Bool)

(assert (=> d!300779 e!674035))

(declare-fun res!474650 () Bool)

(assert (=> d!300779 (=> (not res!474650) (not e!674035))))

(declare-fun lt!359995 () Regex!2923)

(assert (=> d!300779 (= res!474650 (validRegex!1392 lt!359995))))

(declare-fun e!674039 () Regex!2923)

(assert (=> d!300779 (= lt!359995 e!674039)))

(declare-fun c!178106 () Bool)

(assert (=> d!300779 (= c!178106 (and ((_ is Concat!4756) r!15766) ((_ is EmptyExpr!2923) (regOne!6358 r!15766))))))

(assert (=> d!300779 (validRegex!1392 r!15766)))

(assert (=> d!300779 (= (removeUselessConcat!472 r!15766) lt!359995)))

(declare-fun b!1062297 () Bool)

(declare-fun e!674038 () Regex!2923)

(assert (=> b!1062297 (= e!674039 e!674038)))

(declare-fun c!178110 () Bool)

(assert (=> b!1062297 (= c!178110 (and ((_ is Concat!4756) r!15766) ((_ is EmptyExpr!2923) (regTwo!6358 r!15766))))))

(declare-fun b!1062298 () Bool)

(declare-fun e!674036 () Regex!2923)

(declare-fun call!76497 () Regex!2923)

(assert (=> b!1062298 (= e!674036 (Union!2923 call!76497 call!76494))))

(declare-fun b!1062299 () Bool)

(declare-fun e!674037 () Regex!2923)

(declare-fun call!76495 () Regex!2923)

(assert (=> b!1062299 (= e!674037 (Concat!4756 call!76495 call!76497))))

(declare-fun bm!76488 () Bool)

(assert (=> bm!76488 (= call!76494 call!76495)))

(declare-fun b!1062300 () Bool)

(declare-fun c!178108 () Bool)

(assert (=> b!1062300 (= c!178108 ((_ is Star!2923) r!15766))))

(assert (=> b!1062300 (= e!674036 e!674034)))

(declare-fun bm!76489 () Bool)

(declare-fun call!76496 () Regex!2923)

(assert (=> bm!76489 (= call!76495 call!76496)))

(declare-fun b!1062301 () Bool)

(declare-fun call!76493 () Regex!2923)

(assert (=> b!1062301 (= e!674038 call!76493)))

(declare-fun bm!76490 () Bool)

(declare-fun c!178107 () Bool)

(assert (=> bm!76490 (= call!76493 (removeUselessConcat!472 (ite c!178110 (regOne!6358 r!15766) (ite c!178107 (regTwo!6358 r!15766) (regOne!6359 r!15766)))))))

(declare-fun b!1062302 () Bool)

(assert (=> b!1062302 (= e!674034 r!15766)))

(declare-fun b!1062303 () Bool)

(assert (=> b!1062303 (= e!674035 (= (nullable!1013 lt!359995) (nullable!1013 r!15766)))))

(declare-fun b!1062304 () Bool)

(assert (=> b!1062304 (= e!674039 call!76496)))

(declare-fun b!1062305 () Bool)

(assert (=> b!1062305 (= c!178107 ((_ is Concat!4756) r!15766))))

(assert (=> b!1062305 (= e!674038 e!674037)))

(declare-fun bm!76491 () Bool)

(declare-fun c!178109 () Bool)

(assert (=> bm!76491 (= call!76496 (removeUselessConcat!472 (ite c!178106 (regTwo!6358 r!15766) (ite c!178107 (regOne!6358 r!15766) (ite c!178109 (regTwo!6359 r!15766) (reg!3252 r!15766))))))))

(declare-fun b!1062306 () Bool)

(assert (=> b!1062306 (= e!674037 e!674036)))

(assert (=> b!1062306 (= c!178109 ((_ is Union!2923) r!15766))))

(declare-fun bm!76492 () Bool)

(assert (=> bm!76492 (= call!76497 call!76493)))

(assert (= (and d!300779 c!178106) b!1062304))

(assert (= (and d!300779 (not c!178106)) b!1062297))

(assert (= (and b!1062297 c!178110) b!1062301))

(assert (= (and b!1062297 (not c!178110)) b!1062305))

(assert (= (and b!1062305 c!178107) b!1062299))

(assert (= (and b!1062305 (not c!178107)) b!1062306))

(assert (= (and b!1062306 c!178109) b!1062298))

(assert (= (and b!1062306 (not c!178109)) b!1062300))

(assert (= (and b!1062300 c!178108) b!1062296))

(assert (= (and b!1062300 (not c!178108)) b!1062302))

(assert (= (or b!1062298 b!1062296) bm!76488))

(assert (= (or b!1062299 b!1062298) bm!76492))

(assert (= (or b!1062299 bm!76488) bm!76489))

(assert (= (or b!1062301 bm!76492) bm!76490))

(assert (= (or b!1062304 bm!76489) bm!76491))

(assert (= (and d!300779 res!474650) b!1062303))

(declare-fun m!1221599 () Bool)

(assert (=> d!300779 m!1221599))

(assert (=> d!300779 m!1221443))

(declare-fun m!1221601 () Bool)

(assert (=> bm!76490 m!1221601))

(declare-fun m!1221603 () Bool)

(assert (=> b!1062303 m!1221603))

(assert (=> b!1062303 m!1221581))

(declare-fun m!1221605 () Bool)

(assert (=> bm!76491 m!1221605))

(assert (=> b!1061870 d!300779))

(declare-fun e!674042 () Bool)

(assert (=> b!1061867 (= tp!318931 e!674042)))

(declare-fun b!1062320 () Bool)

(declare-fun tp!318988 () Bool)

(declare-fun tp!318985 () Bool)

(assert (=> b!1062320 (= e!674042 (and tp!318988 tp!318985))))

(declare-fun b!1062318 () Bool)

(declare-fun tp!318989 () Bool)

(declare-fun tp!318987 () Bool)

(assert (=> b!1062318 (= e!674042 (and tp!318989 tp!318987))))

(declare-fun b!1062317 () Bool)

(assert (=> b!1062317 (= e!674042 tp_is_empty!5489)))

(declare-fun b!1062319 () Bool)

(declare-fun tp!318986 () Bool)

(assert (=> b!1062319 (= e!674042 tp!318986)))

(assert (= (and b!1061867 ((_ is ElementMatch!2923) (regOne!6359 r!15766))) b!1062317))

(assert (= (and b!1061867 ((_ is Concat!4756) (regOne!6359 r!15766))) b!1062318))

(assert (= (and b!1061867 ((_ is Star!2923) (regOne!6359 r!15766))) b!1062319))

(assert (= (and b!1061867 ((_ is Union!2923) (regOne!6359 r!15766))) b!1062320))

(declare-fun e!674043 () Bool)

(assert (=> b!1061867 (= tp!318936 e!674043)))

(declare-fun b!1062324 () Bool)

(declare-fun tp!318993 () Bool)

(declare-fun tp!318990 () Bool)

(assert (=> b!1062324 (= e!674043 (and tp!318993 tp!318990))))

(declare-fun b!1062322 () Bool)

(declare-fun tp!318994 () Bool)

(declare-fun tp!318992 () Bool)

(assert (=> b!1062322 (= e!674043 (and tp!318994 tp!318992))))

(declare-fun b!1062321 () Bool)

(assert (=> b!1062321 (= e!674043 tp_is_empty!5489)))

(declare-fun b!1062323 () Bool)

(declare-fun tp!318991 () Bool)

(assert (=> b!1062323 (= e!674043 tp!318991)))

(assert (= (and b!1061867 ((_ is ElementMatch!2923) (regTwo!6359 r!15766))) b!1062321))

(assert (= (and b!1061867 ((_ is Concat!4756) (regTwo!6359 r!15766))) b!1062322))

(assert (= (and b!1061867 ((_ is Star!2923) (regTwo!6359 r!15766))) b!1062323))

(assert (= (and b!1061867 ((_ is Union!2923) (regTwo!6359 r!15766))) b!1062324))

(declare-fun e!674044 () Bool)

(assert (=> b!1061871 (= tp!318933 e!674044)))

(declare-fun b!1062328 () Bool)

(declare-fun tp!318998 () Bool)

(declare-fun tp!318995 () Bool)

(assert (=> b!1062328 (= e!674044 (and tp!318998 tp!318995))))

(declare-fun b!1062326 () Bool)

(declare-fun tp!318999 () Bool)

(declare-fun tp!318997 () Bool)

(assert (=> b!1062326 (= e!674044 (and tp!318999 tp!318997))))

(declare-fun b!1062325 () Bool)

(assert (=> b!1062325 (= e!674044 tp_is_empty!5489)))

(declare-fun b!1062327 () Bool)

(declare-fun tp!318996 () Bool)

(assert (=> b!1062327 (= e!674044 tp!318996)))

(assert (= (and b!1061871 ((_ is ElementMatch!2923) (regOne!6358 r!15766))) b!1062325))

(assert (= (and b!1061871 ((_ is Concat!4756) (regOne!6358 r!15766))) b!1062326))

(assert (= (and b!1061871 ((_ is Star!2923) (regOne!6358 r!15766))) b!1062327))

(assert (= (and b!1061871 ((_ is Union!2923) (regOne!6358 r!15766))) b!1062328))

(declare-fun e!674045 () Bool)

(assert (=> b!1061871 (= tp!318932 e!674045)))

(declare-fun b!1062332 () Bool)

(declare-fun tp!319003 () Bool)

(declare-fun tp!319000 () Bool)

(assert (=> b!1062332 (= e!674045 (and tp!319003 tp!319000))))

(declare-fun b!1062330 () Bool)

(declare-fun tp!319004 () Bool)

(declare-fun tp!319002 () Bool)

(assert (=> b!1062330 (= e!674045 (and tp!319004 tp!319002))))

(declare-fun b!1062329 () Bool)

(assert (=> b!1062329 (= e!674045 tp_is_empty!5489)))

(declare-fun b!1062331 () Bool)

(declare-fun tp!319001 () Bool)

(assert (=> b!1062331 (= e!674045 tp!319001)))

(assert (= (and b!1061871 ((_ is ElementMatch!2923) (regTwo!6358 r!15766))) b!1062329))

(assert (= (and b!1061871 ((_ is Concat!4756) (regTwo!6358 r!15766))) b!1062330))

(assert (= (and b!1061871 ((_ is Star!2923) (regTwo!6358 r!15766))) b!1062331))

(assert (= (and b!1061871 ((_ is Union!2923) (regTwo!6358 r!15766))) b!1062332))

(declare-fun e!674046 () Bool)

(assert (=> b!1061869 (= tp!318934 e!674046)))

(declare-fun b!1062336 () Bool)

(declare-fun tp!319008 () Bool)

(declare-fun tp!319005 () Bool)

(assert (=> b!1062336 (= e!674046 (and tp!319008 tp!319005))))

(declare-fun b!1062334 () Bool)

(declare-fun tp!319009 () Bool)

(declare-fun tp!319007 () Bool)

(assert (=> b!1062334 (= e!674046 (and tp!319009 tp!319007))))

(declare-fun b!1062333 () Bool)

(assert (=> b!1062333 (= e!674046 tp_is_empty!5489)))

(declare-fun b!1062335 () Bool)

(declare-fun tp!319006 () Bool)

(assert (=> b!1062335 (= e!674046 tp!319006)))

(assert (= (and b!1061869 ((_ is ElementMatch!2923) (reg!3252 r!15766))) b!1062333))

(assert (= (and b!1061869 ((_ is Concat!4756) (reg!3252 r!15766))) b!1062334))

(assert (= (and b!1061869 ((_ is Star!2923) (reg!3252 r!15766))) b!1062335))

(assert (= (and b!1061869 ((_ is Union!2923) (reg!3252 r!15766))) b!1062336))

(declare-fun b!1062341 () Bool)

(declare-fun e!674049 () Bool)

(declare-fun tp!319012 () Bool)

(assert (=> b!1062341 (= e!674049 (and tp_is_empty!5489 tp!319012))))

(assert (=> b!1061868 (= tp!318935 e!674049)))

(assert (= (and b!1061868 ((_ is Cons!10137) (t!101199 s!10566))) b!1062341))

(check-sat (not b!1061926) (not b!1062341) (not b!1062336) (not b!1062331) (not bm!76490) (not b!1062244) (not b!1062254) (not b!1062330) (not b!1062324) (not b!1062247) (not b!1062249) (not b!1061937) (not bm!76418) (not b!1062322) (not d!300771) (not d!300773) (not b!1062320) (not b!1062318) (not b!1061936) (not bm!76424) (not b!1061978) (not bm!76491) (not b!1061967) (not b!1062253) (not bm!76423) (not d!300749) (not b!1062235) (not bm!76419) (not bm!76476) (not bm!76485) (not bm!76475) (not b!1062319) (not b!1062243) (not b!1062285) (not b!1062288) (not b!1062295) (not d!300777) (not bm!76477) (not b!1062327) (not bm!76487) (not bm!76486) (not b!1062328) (not b!1062326) (not b!1062230) (not b!1062334) tp_is_empty!5489 (not b!1061930) (not b!1061932) (not b!1061927) (not b!1062335) (not b!1062290) (not bm!76405) (not b!1062323) (not b!1062294) (not b!1062284) (not d!300779) (not b!1062303) (not b!1062332) (not d!300745) (not b!1062274) (not d!300751))
(check-sat)
