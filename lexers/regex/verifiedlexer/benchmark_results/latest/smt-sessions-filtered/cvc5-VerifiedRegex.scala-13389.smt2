; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725276 () Bool)

(assert start!725276)

(declare-fun b!7492825 () Bool)

(assert (=> b!7492825 true))

(assert (=> b!7492825 true))

(assert (=> b!7492825 true))

(declare-fun b!7492818 () Bool)

(declare-fun e!4467895 () Bool)

(declare-fun e!4467891 () Bool)

(assert (=> b!7492818 (= e!4467895 (not e!4467891))))

(declare-fun res!3005603 () Bool)

(assert (=> b!7492818 (=> res!3005603 e!4467891)))

(declare-fun lt!2629955 () Bool)

(assert (=> b!7492818 (= res!3005603 lt!2629955)))

(declare-datatypes ((C!39554 0))(
  ( (C!39555 (val!30175 Int)) )
))
(declare-datatypes ((Regex!19640 0))(
  ( (ElementMatch!19640 (c!1383485 C!39554)) (Concat!28485 (regOne!39792 Regex!19640) (regTwo!39792 Regex!19640)) (EmptyExpr!19640) (Star!19640 (reg!19969 Regex!19640)) (EmptyLang!19640) (Union!19640 (regOne!39793 Regex!19640) (regTwo!39793 Regex!19640)) )
))
(declare-fun lt!2629956 () Regex!19640)

(declare-datatypes ((List!72354 0))(
  ( (Nil!72230) (Cons!72230 (h!78678 C!39554) (t!386923 List!72354)) )
))
(declare-fun s!13591 () List!72354)

(declare-fun matchR!9402 (Regex!19640 List!72354) Bool)

(declare-fun matchRSpec!4317 (Regex!19640 List!72354) Bool)

(assert (=> b!7492818 (= (matchR!9402 lt!2629956 s!13591) (matchRSpec!4317 lt!2629956 s!13591))))

(declare-datatypes ((Unit!166111 0))(
  ( (Unit!166112) )
))
(declare-fun lt!2629958 () Unit!166111)

(declare-fun mainMatchTheorem!4311 (Regex!19640 List!72354) Unit!166111)

(assert (=> b!7492818 (= lt!2629958 (mainMatchTheorem!4311 lt!2629956 s!13591))))

(declare-fun lt!2629959 () Regex!19640)

(assert (=> b!7492818 (= lt!2629955 (matchRSpec!4317 lt!2629959 s!13591))))

(assert (=> b!7492818 (= lt!2629955 (matchR!9402 lt!2629959 s!13591))))

(declare-fun lt!2629954 () Unit!166111)

(assert (=> b!7492818 (= lt!2629954 (mainMatchTheorem!4311 lt!2629959 s!13591))))

(declare-fun r2!5783 () Regex!19640)

(declare-fun rTail!78 () Regex!19640)

(declare-fun r1!5845 () Regex!19640)

(assert (=> b!7492818 (= lt!2629956 (Union!19640 (Concat!28485 r1!5845 rTail!78) (Concat!28485 r2!5783 rTail!78)))))

(declare-fun lt!2629960 () Regex!19640)

(assert (=> b!7492818 (= lt!2629959 (Concat!28485 lt!2629960 rTail!78))))

(assert (=> b!7492818 (= lt!2629960 (Union!19640 r1!5845 r2!5783))))

(declare-fun b!7492819 () Bool)

(declare-fun e!4467893 () Bool)

(declare-fun tp_is_empty!49569 () Bool)

(assert (=> b!7492819 (= e!4467893 tp_is_empty!49569)))

(declare-fun b!7492820 () Bool)

(declare-fun tp!2174925 () Bool)

(declare-fun tp!2174924 () Bool)

(assert (=> b!7492820 (= e!4467893 (and tp!2174925 tp!2174924))))

(declare-fun b!7492821 () Bool)

(declare-fun res!3005604 () Bool)

(assert (=> b!7492821 (=> (not res!3005604) (not e!4467895))))

(declare-fun validRegex!10154 (Regex!19640) Bool)

(assert (=> b!7492821 (= res!3005604 (validRegex!10154 rTail!78))))

(declare-fun b!7492822 () Bool)

(declare-fun e!4467896 () Bool)

(declare-fun tp!2174910 () Bool)

(assert (=> b!7492822 (= e!4467896 tp!2174910)))

(declare-fun res!3005602 () Bool)

(assert (=> start!725276 (=> (not res!3005602) (not e!4467895))))

(assert (=> start!725276 (= res!3005602 (validRegex!10154 r1!5845))))

(assert (=> start!725276 e!4467895))

(assert (=> start!725276 e!4467893))

(assert (=> start!725276 e!4467896))

(declare-fun e!4467894 () Bool)

(assert (=> start!725276 e!4467894))

(declare-fun e!4467892 () Bool)

(assert (=> start!725276 e!4467892))

(declare-fun b!7492823 () Bool)

(declare-fun tp!2174922 () Bool)

(declare-fun tp!2174911 () Bool)

(assert (=> b!7492823 (= e!4467896 (and tp!2174922 tp!2174911))))

(declare-fun b!7492824 () Bool)

(declare-fun res!3005601 () Bool)

(assert (=> b!7492824 (=> (not res!3005601) (not e!4467895))))

(assert (=> b!7492824 (= res!3005601 (validRegex!10154 r2!5783))))

(assert (=> b!7492825 (= e!4467891 (validRegex!10154 lt!2629960))))

(declare-fun lambda!464242 () Int)

(declare-datatypes ((tuple2!68714 0))(
  ( (tuple2!68715 (_1!37660 List!72354) (_2!37660 List!72354)) )
))
(declare-datatypes ((Option!17189 0))(
  ( (None!17188) (Some!17188 (v!54317 tuple2!68714)) )
))
(declare-fun isDefined!13878 (Option!17189) Bool)

(declare-fun findConcatSeparation!3311 (Regex!19640 Regex!19640 List!72354 List!72354 List!72354) Option!17189)

(declare-fun Exists!4257 (Int) Bool)

(assert (=> b!7492825 (= (isDefined!13878 (findConcatSeparation!3311 lt!2629960 rTail!78 Nil!72230 s!13591 s!13591)) (Exists!4257 lambda!464242))))

(declare-fun lt!2629957 () Unit!166111)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3069 (Regex!19640 Regex!19640 List!72354) Unit!166111)

(assert (=> b!7492825 (= lt!2629957 (lemmaFindConcatSeparationEquivalentToExists!3069 lt!2629960 rTail!78 s!13591))))

(declare-fun b!7492826 () Bool)

(declare-fun tp!2174919 () Bool)

(declare-fun tp!2174918 () Bool)

(assert (=> b!7492826 (= e!4467896 (and tp!2174919 tp!2174918))))

(declare-fun b!7492827 () Bool)

(declare-fun tp!2174921 () Bool)

(assert (=> b!7492827 (= e!4467892 (and tp_is_empty!49569 tp!2174921))))

(declare-fun b!7492828 () Bool)

(declare-fun tp!2174915 () Bool)

(assert (=> b!7492828 (= e!4467893 tp!2174915)))

(declare-fun b!7492829 () Bool)

(declare-fun tp!2174914 () Bool)

(declare-fun tp!2174912 () Bool)

(assert (=> b!7492829 (= e!4467894 (and tp!2174914 tp!2174912))))

(declare-fun b!7492830 () Bool)

(declare-fun tp!2174917 () Bool)

(declare-fun tp!2174913 () Bool)

(assert (=> b!7492830 (= e!4467893 (and tp!2174917 tp!2174913))))

(declare-fun b!7492831 () Bool)

(assert (=> b!7492831 (= e!4467896 tp_is_empty!49569)))

(declare-fun b!7492832 () Bool)

(declare-fun tp!2174916 () Bool)

(assert (=> b!7492832 (= e!4467894 tp!2174916)))

(declare-fun b!7492833 () Bool)

(declare-fun tp!2174920 () Bool)

(declare-fun tp!2174923 () Bool)

(assert (=> b!7492833 (= e!4467894 (and tp!2174920 tp!2174923))))

(declare-fun b!7492834 () Bool)

(assert (=> b!7492834 (= e!4467894 tp_is_empty!49569)))

(assert (= (and start!725276 res!3005602) b!7492824))

(assert (= (and b!7492824 res!3005601) b!7492821))

(assert (= (and b!7492821 res!3005604) b!7492818))

(assert (= (and b!7492818 (not res!3005603)) b!7492825))

(assert (= (and start!725276 (is-ElementMatch!19640 r1!5845)) b!7492819))

(assert (= (and start!725276 (is-Concat!28485 r1!5845)) b!7492830))

(assert (= (and start!725276 (is-Star!19640 r1!5845)) b!7492828))

(assert (= (and start!725276 (is-Union!19640 r1!5845)) b!7492820))

(assert (= (and start!725276 (is-ElementMatch!19640 r2!5783)) b!7492831))

(assert (= (and start!725276 (is-Concat!28485 r2!5783)) b!7492823))

(assert (= (and start!725276 (is-Star!19640 r2!5783)) b!7492822))

(assert (= (and start!725276 (is-Union!19640 r2!5783)) b!7492826))

(assert (= (and start!725276 (is-ElementMatch!19640 rTail!78)) b!7492834))

(assert (= (and start!725276 (is-Concat!28485 rTail!78)) b!7492833))

(assert (= (and start!725276 (is-Star!19640 rTail!78)) b!7492832))

(assert (= (and start!725276 (is-Union!19640 rTail!78)) b!7492829))

(assert (= (and start!725276 (is-Cons!72230 s!13591)) b!7492827))

(declare-fun m!8078364 () Bool)

(assert (=> b!7492824 m!8078364))

(declare-fun m!8078366 () Bool)

(assert (=> b!7492821 m!8078366))

(declare-fun m!8078368 () Bool)

(assert (=> start!725276 m!8078368))

(declare-fun m!8078370 () Bool)

(assert (=> b!7492818 m!8078370))

(declare-fun m!8078372 () Bool)

(assert (=> b!7492818 m!8078372))

(declare-fun m!8078374 () Bool)

(assert (=> b!7492818 m!8078374))

(declare-fun m!8078376 () Bool)

(assert (=> b!7492818 m!8078376))

(declare-fun m!8078378 () Bool)

(assert (=> b!7492818 m!8078378))

(declare-fun m!8078380 () Bool)

(assert (=> b!7492818 m!8078380))

(declare-fun m!8078382 () Bool)

(assert (=> b!7492825 m!8078382))

(assert (=> b!7492825 m!8078382))

(declare-fun m!8078384 () Bool)

(assert (=> b!7492825 m!8078384))

(declare-fun m!8078386 () Bool)

(assert (=> b!7492825 m!8078386))

(declare-fun m!8078388 () Bool)

(assert (=> b!7492825 m!8078388))

(declare-fun m!8078390 () Bool)

(assert (=> b!7492825 m!8078390))

(push 1)

(assert (not b!7492824))

(assert (not b!7492820))

(assert (not start!725276))

(assert (not b!7492829))

(assert (not b!7492830))

(assert (not b!7492821))

(assert (not b!7492818))

(assert (not b!7492826))

(assert (not b!7492822))

(assert (not b!7492833))

(assert (not b!7492827))

(assert (not b!7492825))

(assert tp_is_empty!49569)

(assert (not b!7492832))

(assert (not b!7492828))

(assert (not b!7492823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2301446 () Bool)

(assert (=> d!2301446 (= (matchR!9402 lt!2629956 s!13591) (matchRSpec!4317 lt!2629956 s!13591))))

(declare-fun lt!2629984 () Unit!166111)

(declare-fun choose!57914 (Regex!19640 List!72354) Unit!166111)

(assert (=> d!2301446 (= lt!2629984 (choose!57914 lt!2629956 s!13591))))

(assert (=> d!2301446 (validRegex!10154 lt!2629956)))

(assert (=> d!2301446 (= (mainMatchTheorem!4311 lt!2629956 s!13591) lt!2629984)))

(declare-fun bs!1935410 () Bool)

(assert (= bs!1935410 d!2301446))

(assert (=> bs!1935410 m!8078370))

(assert (=> bs!1935410 m!8078376))

(declare-fun m!8078420 () Bool)

(assert (=> bs!1935410 m!8078420))

(declare-fun m!8078422 () Bool)

(assert (=> bs!1935410 m!8078422))

(assert (=> b!7492818 d!2301446))

(declare-fun d!2301448 () Bool)

(assert (=> d!2301448 (= (matchR!9402 lt!2629959 s!13591) (matchRSpec!4317 lt!2629959 s!13591))))

(declare-fun lt!2629985 () Unit!166111)

(assert (=> d!2301448 (= lt!2629985 (choose!57914 lt!2629959 s!13591))))

(assert (=> d!2301448 (validRegex!10154 lt!2629959)))

(assert (=> d!2301448 (= (mainMatchTheorem!4311 lt!2629959 s!13591) lt!2629985)))

(declare-fun bs!1935411 () Bool)

(assert (= bs!1935411 d!2301448))

(assert (=> bs!1935411 m!8078380))

(assert (=> bs!1935411 m!8078372))

(declare-fun m!8078424 () Bool)

(assert (=> bs!1935411 m!8078424))

(declare-fun m!8078426 () Bool)

(assert (=> bs!1935411 m!8078426))

(assert (=> b!7492818 d!2301448))

(declare-fun b!7492926 () Bool)

(declare-fun e!4467932 () Bool)

(declare-fun head!15373 (List!72354) C!39554)

(assert (=> b!7492926 (= e!4467932 (= (head!15373 s!13591) (c!1383485 lt!2629956)))))

(declare-fun b!7492927 () Bool)

(declare-fun res!3005642 () Bool)

(declare-fun e!4467934 () Bool)

(assert (=> b!7492927 (=> res!3005642 e!4467934)))

(declare-fun isEmpty!41257 (List!72354) Bool)

(declare-fun tail!14942 (List!72354) List!72354)

(assert (=> b!7492927 (= res!3005642 (not (isEmpty!41257 (tail!14942 s!13591))))))

(declare-fun b!7492928 () Bool)

(declare-fun res!3005637 () Bool)

(declare-fun e!4467935 () Bool)

(assert (=> b!7492928 (=> res!3005637 e!4467935)))

(assert (=> b!7492928 (= res!3005637 e!4467932)))

(declare-fun res!3005643 () Bool)

(assert (=> b!7492928 (=> (not res!3005643) (not e!4467932))))

(declare-fun lt!2629988 () Bool)

(assert (=> b!7492928 (= res!3005643 lt!2629988)))

(declare-fun b!7492929 () Bool)

(declare-fun e!4467937 () Bool)

(assert (=> b!7492929 (= e!4467935 e!4467937)))

(declare-fun res!3005644 () Bool)

(assert (=> b!7492929 (=> (not res!3005644) (not e!4467937))))

(assert (=> b!7492929 (= res!3005644 (not lt!2629988))))

(declare-fun d!2301450 () Bool)

(declare-fun e!4467933 () Bool)

(assert (=> d!2301450 e!4467933))

(declare-fun c!1383495 () Bool)

(assert (=> d!2301450 (= c!1383495 (is-EmptyExpr!19640 lt!2629956))))

(declare-fun e!4467931 () Bool)

(assert (=> d!2301450 (= lt!2629988 e!4467931)))

(declare-fun c!1383494 () Bool)

(assert (=> d!2301450 (= c!1383494 (isEmpty!41257 s!13591))))

(assert (=> d!2301450 (validRegex!10154 lt!2629956)))

(assert (=> d!2301450 (= (matchR!9402 lt!2629956 s!13591) lt!2629988)))

(declare-fun b!7492930 () Bool)

(declare-fun derivativeStep!5633 (Regex!19640 C!39554) Regex!19640)

(assert (=> b!7492930 (= e!4467931 (matchR!9402 (derivativeStep!5633 lt!2629956 (head!15373 s!13591)) (tail!14942 s!13591)))))

(declare-fun b!7492931 () Bool)

(assert (=> b!7492931 (= e!4467937 e!4467934)))

(declare-fun res!3005638 () Bool)

(assert (=> b!7492931 (=> res!3005638 e!4467934)))

(declare-fun call!687853 () Bool)

(assert (=> b!7492931 (= res!3005638 call!687853)))

(declare-fun b!7492932 () Bool)

(declare-fun nullable!8576 (Regex!19640) Bool)

(assert (=> b!7492932 (= e!4467931 (nullable!8576 lt!2629956))))

(declare-fun b!7492933 () Bool)

(assert (=> b!7492933 (= e!4467934 (not (= (head!15373 s!13591) (c!1383485 lt!2629956))))))

(declare-fun b!7492934 () Bool)

(assert (=> b!7492934 (= e!4467933 (= lt!2629988 call!687853))))

(declare-fun b!7492935 () Bool)

(declare-fun e!4467936 () Bool)

(assert (=> b!7492935 (= e!4467933 e!4467936)))

(declare-fun c!1383493 () Bool)

(assert (=> b!7492935 (= c!1383493 (is-EmptyLang!19640 lt!2629956))))

(declare-fun b!7492936 () Bool)

(declare-fun res!3005641 () Bool)

(assert (=> b!7492936 (=> res!3005641 e!4467935)))

(assert (=> b!7492936 (= res!3005641 (not (is-ElementMatch!19640 lt!2629956)))))

(assert (=> b!7492936 (= e!4467936 e!4467935)))

(declare-fun b!7492937 () Bool)

(declare-fun res!3005640 () Bool)

(assert (=> b!7492937 (=> (not res!3005640) (not e!4467932))))

(assert (=> b!7492937 (= res!3005640 (isEmpty!41257 (tail!14942 s!13591)))))

(declare-fun b!7492938 () Bool)

(declare-fun res!3005639 () Bool)

(assert (=> b!7492938 (=> (not res!3005639) (not e!4467932))))

(assert (=> b!7492938 (= res!3005639 (not call!687853))))

(declare-fun bm!687848 () Bool)

(assert (=> bm!687848 (= call!687853 (isEmpty!41257 s!13591))))

(declare-fun b!7492939 () Bool)

(assert (=> b!7492939 (= e!4467936 (not lt!2629988))))

(assert (= (and d!2301450 c!1383494) b!7492932))

(assert (= (and d!2301450 (not c!1383494)) b!7492930))

(assert (= (and d!2301450 c!1383495) b!7492934))

(assert (= (and d!2301450 (not c!1383495)) b!7492935))

(assert (= (and b!7492935 c!1383493) b!7492939))

(assert (= (and b!7492935 (not c!1383493)) b!7492936))

(assert (= (and b!7492936 (not res!3005641)) b!7492928))

(assert (= (and b!7492928 res!3005643) b!7492938))

(assert (= (and b!7492938 res!3005639) b!7492937))

(assert (= (and b!7492937 res!3005640) b!7492926))

(assert (= (and b!7492928 (not res!3005637)) b!7492929))

(assert (= (and b!7492929 res!3005644) b!7492931))

(assert (= (and b!7492931 (not res!3005638)) b!7492927))

(assert (= (and b!7492927 (not res!3005642)) b!7492933))

(assert (= (or b!7492934 b!7492931 b!7492938) bm!687848))

(declare-fun m!8078430 () Bool)

(assert (=> b!7492927 m!8078430))

(assert (=> b!7492927 m!8078430))

(declare-fun m!8078432 () Bool)

(assert (=> b!7492927 m!8078432))

(declare-fun m!8078434 () Bool)

(assert (=> b!7492930 m!8078434))

(assert (=> b!7492930 m!8078434))

(declare-fun m!8078436 () Bool)

(assert (=> b!7492930 m!8078436))

(assert (=> b!7492930 m!8078430))

(assert (=> b!7492930 m!8078436))

(assert (=> b!7492930 m!8078430))

(declare-fun m!8078438 () Bool)

(assert (=> b!7492930 m!8078438))

(assert (=> b!7492933 m!8078434))

(assert (=> b!7492937 m!8078430))

(assert (=> b!7492937 m!8078430))

(assert (=> b!7492937 m!8078432))

(declare-fun m!8078440 () Bool)

(assert (=> b!7492932 m!8078440))

(declare-fun m!8078442 () Bool)

(assert (=> bm!687848 m!8078442))

(assert (=> d!2301450 m!8078442))

(assert (=> d!2301450 m!8078422))

(assert (=> b!7492926 m!8078434))

(assert (=> b!7492818 d!2301450))

(declare-fun bs!1935413 () Bool)

(declare-fun b!7492993 () Bool)

(assert (= bs!1935413 (and b!7492993 b!7492825)))

(declare-fun lambda!464250 () Int)

(assert (=> bs!1935413 (not (= lambda!464250 lambda!464242))))

(assert (=> b!7492993 true))

(assert (=> b!7492993 true))

(declare-fun bs!1935414 () Bool)

(declare-fun b!7492991 () Bool)

(assert (= bs!1935414 (and b!7492991 b!7492825)))

(declare-fun lambda!464251 () Int)

(assert (=> bs!1935414 (not (= lambda!464251 lambda!464242))))

(declare-fun bs!1935415 () Bool)

(assert (= bs!1935415 (and b!7492991 b!7492993)))

(assert (=> bs!1935415 (not (= lambda!464251 lambda!464250))))

(assert (=> b!7492991 true))

(assert (=> b!7492991 true))

(declare-fun b!7492990 () Bool)

(declare-fun e!4467967 () Bool)

(declare-fun e!4467971 () Bool)

(assert (=> b!7492990 (= e!4467967 e!4467971)))

(declare-fun res!3005673 () Bool)

(assert (=> b!7492990 (= res!3005673 (not (is-EmptyLang!19640 lt!2629959)))))

(assert (=> b!7492990 (=> (not res!3005673) (not e!4467971))))

(declare-fun e!4467966 () Bool)

(declare-fun call!687858 () Bool)

(assert (=> b!7492991 (= e!4467966 call!687858)))

(declare-fun b!7492992 () Bool)

(declare-fun e!4467968 () Bool)

(assert (=> b!7492992 (= e!4467968 (matchRSpec!4317 (regTwo!39793 lt!2629959) s!13591))))

(declare-fun e!4467970 () Bool)

(assert (=> b!7492993 (= e!4467970 call!687858)))

(declare-fun bm!687853 () Bool)

(declare-fun call!687859 () Bool)

(assert (=> bm!687853 (= call!687859 (isEmpty!41257 s!13591))))

(declare-fun b!7492994 () Bool)

(declare-fun c!1383508 () Bool)

(assert (=> b!7492994 (= c!1383508 (is-ElementMatch!19640 lt!2629959))))

(declare-fun e!4467969 () Bool)

(assert (=> b!7492994 (= e!4467971 e!4467969)))

(declare-fun b!7492995 () Bool)

(declare-fun res!3005671 () Bool)

(assert (=> b!7492995 (=> res!3005671 e!4467970)))

(assert (=> b!7492995 (= res!3005671 call!687859)))

(assert (=> b!7492995 (= e!4467966 e!4467970)))

(declare-fun b!7492996 () Bool)

(declare-fun e!4467972 () Bool)

(assert (=> b!7492996 (= e!4467972 e!4467966)))

(declare-fun c!1383510 () Bool)

(assert (=> b!7492996 (= c!1383510 (is-Star!19640 lt!2629959))))

(declare-fun bm!687854 () Bool)

(assert (=> bm!687854 (= call!687858 (Exists!4257 (ite c!1383510 lambda!464250 lambda!464251)))))

(declare-fun b!7492997 () Bool)

(assert (=> b!7492997 (= e!4467967 call!687859)))

(declare-fun b!7492998 () Bool)

(assert (=> b!7492998 (= e!4467969 (= s!13591 (Cons!72230 (c!1383485 lt!2629959) Nil!72230)))))

(declare-fun b!7492999 () Bool)

(assert (=> b!7492999 (= e!4467972 e!4467968)))

(declare-fun res!3005672 () Bool)

(assert (=> b!7492999 (= res!3005672 (matchRSpec!4317 (regOne!39793 lt!2629959) s!13591))))

(assert (=> b!7492999 (=> res!3005672 e!4467968)))

(declare-fun b!7493000 () Bool)

(declare-fun c!1383509 () Bool)

(assert (=> b!7493000 (= c!1383509 (is-Union!19640 lt!2629959))))

(assert (=> b!7493000 (= e!4467969 e!4467972)))

(declare-fun d!2301456 () Bool)

(declare-fun c!1383511 () Bool)

(assert (=> d!2301456 (= c!1383511 (is-EmptyExpr!19640 lt!2629959))))

(assert (=> d!2301456 (= (matchRSpec!4317 lt!2629959 s!13591) e!4467967)))

(assert (= (and d!2301456 c!1383511) b!7492997))

(assert (= (and d!2301456 (not c!1383511)) b!7492990))

(assert (= (and b!7492990 res!3005673) b!7492994))

(assert (= (and b!7492994 c!1383508) b!7492998))

(assert (= (and b!7492994 (not c!1383508)) b!7493000))

(assert (= (and b!7493000 c!1383509) b!7492999))

(assert (= (and b!7493000 (not c!1383509)) b!7492996))

(assert (= (and b!7492999 (not res!3005672)) b!7492992))

(assert (= (and b!7492996 c!1383510) b!7492995))

(assert (= (and b!7492996 (not c!1383510)) b!7492991))

(assert (= (and b!7492995 (not res!3005671)) b!7492993))

(assert (= (or b!7492993 b!7492991) bm!687854))

(assert (= (or b!7492997 b!7492995) bm!687853))

(declare-fun m!8078444 () Bool)

(assert (=> b!7492992 m!8078444))

(assert (=> bm!687853 m!8078442))

(declare-fun m!8078446 () Bool)

(assert (=> bm!687854 m!8078446))

(declare-fun m!8078448 () Bool)

(assert (=> b!7492999 m!8078448))

(assert (=> b!7492818 d!2301456))

(declare-fun b!7493001 () Bool)

(declare-fun e!4467974 () Bool)

(assert (=> b!7493001 (= e!4467974 (= (head!15373 s!13591) (c!1383485 lt!2629959)))))

(declare-fun b!7493002 () Bool)

(declare-fun res!3005679 () Bool)

(declare-fun e!4467976 () Bool)

(assert (=> b!7493002 (=> res!3005679 e!4467976)))

(assert (=> b!7493002 (= res!3005679 (not (isEmpty!41257 (tail!14942 s!13591))))))

(declare-fun b!7493003 () Bool)

(declare-fun res!3005674 () Bool)

(declare-fun e!4467977 () Bool)

(assert (=> b!7493003 (=> res!3005674 e!4467977)))

(assert (=> b!7493003 (= res!3005674 e!4467974)))

(declare-fun res!3005680 () Bool)

(assert (=> b!7493003 (=> (not res!3005680) (not e!4467974))))

(declare-fun lt!2629995 () Bool)

(assert (=> b!7493003 (= res!3005680 lt!2629995)))

(declare-fun b!7493004 () Bool)

(declare-fun e!4467979 () Bool)

(assert (=> b!7493004 (= e!4467977 e!4467979)))

(declare-fun res!3005681 () Bool)

(assert (=> b!7493004 (=> (not res!3005681) (not e!4467979))))

(assert (=> b!7493004 (= res!3005681 (not lt!2629995))))

(declare-fun d!2301458 () Bool)

(declare-fun e!4467975 () Bool)

(assert (=> d!2301458 e!4467975))

(declare-fun c!1383514 () Bool)

(assert (=> d!2301458 (= c!1383514 (is-EmptyExpr!19640 lt!2629959))))

(declare-fun e!4467973 () Bool)

(assert (=> d!2301458 (= lt!2629995 e!4467973)))

(declare-fun c!1383513 () Bool)

(assert (=> d!2301458 (= c!1383513 (isEmpty!41257 s!13591))))

(assert (=> d!2301458 (validRegex!10154 lt!2629959)))

(assert (=> d!2301458 (= (matchR!9402 lt!2629959 s!13591) lt!2629995)))

(declare-fun b!7493005 () Bool)

(assert (=> b!7493005 (= e!4467973 (matchR!9402 (derivativeStep!5633 lt!2629959 (head!15373 s!13591)) (tail!14942 s!13591)))))

(declare-fun b!7493006 () Bool)

(assert (=> b!7493006 (= e!4467979 e!4467976)))

(declare-fun res!3005675 () Bool)

(assert (=> b!7493006 (=> res!3005675 e!4467976)))

(declare-fun call!687860 () Bool)

(assert (=> b!7493006 (= res!3005675 call!687860)))

(declare-fun b!7493007 () Bool)

(assert (=> b!7493007 (= e!4467973 (nullable!8576 lt!2629959))))

(declare-fun b!7493008 () Bool)

(assert (=> b!7493008 (= e!4467976 (not (= (head!15373 s!13591) (c!1383485 lt!2629959))))))

(declare-fun b!7493009 () Bool)

(assert (=> b!7493009 (= e!4467975 (= lt!2629995 call!687860))))

(declare-fun b!7493010 () Bool)

(declare-fun e!4467978 () Bool)

(assert (=> b!7493010 (= e!4467975 e!4467978)))

(declare-fun c!1383512 () Bool)

(assert (=> b!7493010 (= c!1383512 (is-EmptyLang!19640 lt!2629959))))

(declare-fun b!7493011 () Bool)

(declare-fun res!3005678 () Bool)

(assert (=> b!7493011 (=> res!3005678 e!4467977)))

(assert (=> b!7493011 (= res!3005678 (not (is-ElementMatch!19640 lt!2629959)))))

(assert (=> b!7493011 (= e!4467978 e!4467977)))

(declare-fun b!7493012 () Bool)

(declare-fun res!3005677 () Bool)

(assert (=> b!7493012 (=> (not res!3005677) (not e!4467974))))

(assert (=> b!7493012 (= res!3005677 (isEmpty!41257 (tail!14942 s!13591)))))

(declare-fun b!7493013 () Bool)

(declare-fun res!3005676 () Bool)

(assert (=> b!7493013 (=> (not res!3005676) (not e!4467974))))

(assert (=> b!7493013 (= res!3005676 (not call!687860))))

(declare-fun bm!687855 () Bool)

(assert (=> bm!687855 (= call!687860 (isEmpty!41257 s!13591))))

(declare-fun b!7493014 () Bool)

(assert (=> b!7493014 (= e!4467978 (not lt!2629995))))

(assert (= (and d!2301458 c!1383513) b!7493007))

(assert (= (and d!2301458 (not c!1383513)) b!7493005))

(assert (= (and d!2301458 c!1383514) b!7493009))

(assert (= (and d!2301458 (not c!1383514)) b!7493010))

(assert (= (and b!7493010 c!1383512) b!7493014))

(assert (= (and b!7493010 (not c!1383512)) b!7493011))

(assert (= (and b!7493011 (not res!3005678)) b!7493003))

(assert (= (and b!7493003 res!3005680) b!7493013))

(assert (= (and b!7493013 res!3005676) b!7493012))

(assert (= (and b!7493012 res!3005677) b!7493001))

(assert (= (and b!7493003 (not res!3005674)) b!7493004))

(assert (= (and b!7493004 res!3005681) b!7493006))

(assert (= (and b!7493006 (not res!3005675)) b!7493002))

(assert (= (and b!7493002 (not res!3005679)) b!7493008))

(assert (= (or b!7493009 b!7493006 b!7493013) bm!687855))

(assert (=> b!7493002 m!8078430))

(assert (=> b!7493002 m!8078430))

(assert (=> b!7493002 m!8078432))

(assert (=> b!7493005 m!8078434))

(assert (=> b!7493005 m!8078434))

(declare-fun m!8078450 () Bool)

(assert (=> b!7493005 m!8078450))

(assert (=> b!7493005 m!8078430))

(assert (=> b!7493005 m!8078450))

(assert (=> b!7493005 m!8078430))

(declare-fun m!8078452 () Bool)

(assert (=> b!7493005 m!8078452))

(assert (=> b!7493008 m!8078434))

(assert (=> b!7493012 m!8078430))

(assert (=> b!7493012 m!8078430))

(assert (=> b!7493012 m!8078432))

(declare-fun m!8078454 () Bool)

(assert (=> b!7493007 m!8078454))

(assert (=> bm!687855 m!8078442))

(assert (=> d!2301458 m!8078442))

(assert (=> d!2301458 m!8078426))

(assert (=> b!7493001 m!8078434))

(assert (=> b!7492818 d!2301458))

(declare-fun bs!1935416 () Bool)

(declare-fun b!7493018 () Bool)

(assert (= bs!1935416 (and b!7493018 b!7492825)))

(declare-fun lambda!464252 () Int)

(assert (=> bs!1935416 (not (= lambda!464252 lambda!464242))))

(declare-fun bs!1935417 () Bool)

(assert (= bs!1935417 (and b!7493018 b!7492993)))

(assert (=> bs!1935417 (= (and (= (reg!19969 lt!2629956) (reg!19969 lt!2629959)) (= lt!2629956 lt!2629959)) (= lambda!464252 lambda!464250))))

(declare-fun bs!1935418 () Bool)

(assert (= bs!1935418 (and b!7493018 b!7492991)))

(assert (=> bs!1935418 (not (= lambda!464252 lambda!464251))))

(assert (=> b!7493018 true))

(assert (=> b!7493018 true))

(declare-fun bs!1935419 () Bool)

(declare-fun b!7493016 () Bool)

(assert (= bs!1935419 (and b!7493016 b!7492825)))

(declare-fun lambda!464253 () Int)

(assert (=> bs!1935419 (not (= lambda!464253 lambda!464242))))

(declare-fun bs!1935420 () Bool)

(assert (= bs!1935420 (and b!7493016 b!7492993)))

(assert (=> bs!1935420 (not (= lambda!464253 lambda!464250))))

(declare-fun bs!1935421 () Bool)

(assert (= bs!1935421 (and b!7493016 b!7492991)))

(assert (=> bs!1935421 (= (and (= (regOne!39792 lt!2629956) (regOne!39792 lt!2629959)) (= (regTwo!39792 lt!2629956) (regTwo!39792 lt!2629959))) (= lambda!464253 lambda!464251))))

(declare-fun bs!1935422 () Bool)

(assert (= bs!1935422 (and b!7493016 b!7493018)))

(assert (=> bs!1935422 (not (= lambda!464253 lambda!464252))))

(assert (=> b!7493016 true))

(assert (=> b!7493016 true))

(declare-fun b!7493015 () Bool)

(declare-fun e!4467981 () Bool)

(declare-fun e!4467985 () Bool)

(assert (=> b!7493015 (= e!4467981 e!4467985)))

(declare-fun res!3005684 () Bool)

(assert (=> b!7493015 (= res!3005684 (not (is-EmptyLang!19640 lt!2629956)))))

(assert (=> b!7493015 (=> (not res!3005684) (not e!4467985))))

(declare-fun e!4467980 () Bool)

(declare-fun call!687861 () Bool)

(assert (=> b!7493016 (= e!4467980 call!687861)))

(declare-fun b!7493017 () Bool)

(declare-fun e!4467982 () Bool)

(assert (=> b!7493017 (= e!4467982 (matchRSpec!4317 (regTwo!39793 lt!2629956) s!13591))))

(declare-fun e!4467984 () Bool)

(assert (=> b!7493018 (= e!4467984 call!687861)))

(declare-fun bm!687856 () Bool)

(declare-fun call!687862 () Bool)

(assert (=> bm!687856 (= call!687862 (isEmpty!41257 s!13591))))

(declare-fun b!7493019 () Bool)

(declare-fun c!1383515 () Bool)

(assert (=> b!7493019 (= c!1383515 (is-ElementMatch!19640 lt!2629956))))

(declare-fun e!4467983 () Bool)

(assert (=> b!7493019 (= e!4467985 e!4467983)))

(declare-fun b!7493020 () Bool)

(declare-fun res!3005682 () Bool)

(assert (=> b!7493020 (=> res!3005682 e!4467984)))

(assert (=> b!7493020 (= res!3005682 call!687862)))

(assert (=> b!7493020 (= e!4467980 e!4467984)))

(declare-fun b!7493021 () Bool)

(declare-fun e!4467986 () Bool)

(assert (=> b!7493021 (= e!4467986 e!4467980)))

(declare-fun c!1383517 () Bool)

(assert (=> b!7493021 (= c!1383517 (is-Star!19640 lt!2629956))))

(declare-fun bm!687857 () Bool)

(assert (=> bm!687857 (= call!687861 (Exists!4257 (ite c!1383517 lambda!464252 lambda!464253)))))

(declare-fun b!7493022 () Bool)

(assert (=> b!7493022 (= e!4467981 call!687862)))

(declare-fun b!7493023 () Bool)

(assert (=> b!7493023 (= e!4467983 (= s!13591 (Cons!72230 (c!1383485 lt!2629956) Nil!72230)))))

(declare-fun b!7493024 () Bool)

(assert (=> b!7493024 (= e!4467986 e!4467982)))

(declare-fun res!3005683 () Bool)

(assert (=> b!7493024 (= res!3005683 (matchRSpec!4317 (regOne!39793 lt!2629956) s!13591))))

(assert (=> b!7493024 (=> res!3005683 e!4467982)))

(declare-fun b!7493025 () Bool)

(declare-fun c!1383516 () Bool)

(assert (=> b!7493025 (= c!1383516 (is-Union!19640 lt!2629956))))

(assert (=> b!7493025 (= e!4467983 e!4467986)))

(declare-fun d!2301460 () Bool)

(declare-fun c!1383518 () Bool)

(assert (=> d!2301460 (= c!1383518 (is-EmptyExpr!19640 lt!2629956))))

(assert (=> d!2301460 (= (matchRSpec!4317 lt!2629956 s!13591) e!4467981)))

(assert (= (and d!2301460 c!1383518) b!7493022))

(assert (= (and d!2301460 (not c!1383518)) b!7493015))

(assert (= (and b!7493015 res!3005684) b!7493019))

(assert (= (and b!7493019 c!1383515) b!7493023))

(assert (= (and b!7493019 (not c!1383515)) b!7493025))

(assert (= (and b!7493025 c!1383516) b!7493024))

(assert (= (and b!7493025 (not c!1383516)) b!7493021))

(assert (= (and b!7493024 (not res!3005683)) b!7493017))

(assert (= (and b!7493021 c!1383517) b!7493020))

(assert (= (and b!7493021 (not c!1383517)) b!7493016))

(assert (= (and b!7493020 (not res!3005682)) b!7493018))

(assert (= (or b!7493018 b!7493016) bm!687857))

(assert (= (or b!7493022 b!7493020) bm!687856))

(declare-fun m!8078456 () Bool)

(assert (=> b!7493017 m!8078456))

(assert (=> bm!687856 m!8078442))

(declare-fun m!8078458 () Bool)

(assert (=> bm!687857 m!8078458))

(declare-fun m!8078460 () Bool)

(assert (=> b!7493024 m!8078460))

(assert (=> b!7492818 d!2301460))

(declare-fun d!2301462 () Bool)

(declare-fun res!3005704 () Bool)

(declare-fun e!4468009 () Bool)

(assert (=> d!2301462 (=> res!3005704 e!4468009)))

(assert (=> d!2301462 (= res!3005704 (is-ElementMatch!19640 lt!2629960))))

(assert (=> d!2301462 (= (validRegex!10154 lt!2629960) e!4468009)))

(declare-fun bm!687864 () Bool)

(declare-fun call!687869 () Bool)

(declare-fun c!1383525 () Bool)

(assert (=> bm!687864 (= call!687869 (validRegex!10154 (ite c!1383525 (regTwo!39793 lt!2629960) (regTwo!39792 lt!2629960))))))

(declare-fun b!7493053 () Bool)

(declare-fun e!4468006 () Bool)

(assert (=> b!7493053 (= e!4468006 call!687869)))

(declare-fun b!7493054 () Bool)

(declare-fun res!3005702 () Bool)

(declare-fun e!4468010 () Bool)

(assert (=> b!7493054 (=> res!3005702 e!4468010)))

(assert (=> b!7493054 (= res!3005702 (not (is-Concat!28485 lt!2629960)))))

(declare-fun e!4468011 () Bool)

(assert (=> b!7493054 (= e!4468011 e!4468010)))

(declare-fun b!7493055 () Bool)

(assert (=> b!7493055 (= e!4468010 e!4468006)))

(declare-fun res!3005700 () Bool)

(assert (=> b!7493055 (=> (not res!3005700) (not e!4468006))))

(declare-fun call!687871 () Bool)

(assert (=> b!7493055 (= res!3005700 call!687871)))

(declare-fun b!7493056 () Bool)

(declare-fun res!3005703 () Bool)

(declare-fun e!4468007 () Bool)

(assert (=> b!7493056 (=> (not res!3005703) (not e!4468007))))

(assert (=> b!7493056 (= res!3005703 call!687871)))

(assert (=> b!7493056 (= e!4468011 e!4468007)))

(declare-fun bm!687865 () Bool)

(declare-fun c!1383526 () Bool)

(declare-fun call!687870 () Bool)

(assert (=> bm!687865 (= call!687870 (validRegex!10154 (ite c!1383526 (reg!19969 lt!2629960) (ite c!1383525 (regOne!39793 lt!2629960) (regOne!39792 lt!2629960)))))))

(declare-fun b!7493057 () Bool)

(declare-fun e!4468012 () Bool)

(declare-fun e!4468008 () Bool)

(assert (=> b!7493057 (= e!4468012 e!4468008)))

(declare-fun res!3005701 () Bool)

(assert (=> b!7493057 (= res!3005701 (not (nullable!8576 (reg!19969 lt!2629960))))))

(assert (=> b!7493057 (=> (not res!3005701) (not e!4468008))))

(declare-fun b!7493058 () Bool)

(assert (=> b!7493058 (= e!4468009 e!4468012)))

(assert (=> b!7493058 (= c!1383526 (is-Star!19640 lt!2629960))))

(declare-fun b!7493059 () Bool)

(assert (=> b!7493059 (= e!4468012 e!4468011)))

(assert (=> b!7493059 (= c!1383525 (is-Union!19640 lt!2629960))))

(declare-fun b!7493060 () Bool)

(assert (=> b!7493060 (= e!4468007 call!687869)))

(declare-fun bm!687866 () Bool)

(assert (=> bm!687866 (= call!687871 call!687870)))

(declare-fun b!7493061 () Bool)

(assert (=> b!7493061 (= e!4468008 call!687870)))

(assert (= (and d!2301462 (not res!3005704)) b!7493058))

(assert (= (and b!7493058 c!1383526) b!7493057))

(assert (= (and b!7493058 (not c!1383526)) b!7493059))

(assert (= (and b!7493057 res!3005701) b!7493061))

(assert (= (and b!7493059 c!1383525) b!7493056))

(assert (= (and b!7493059 (not c!1383525)) b!7493054))

(assert (= (and b!7493056 res!3005703) b!7493060))

(assert (= (and b!7493054 (not res!3005702)) b!7493055))

(assert (= (and b!7493055 res!3005700) b!7493053))

(assert (= (or b!7493060 b!7493053) bm!687864))

(assert (= (or b!7493056 b!7493055) bm!687866))

(assert (= (or b!7493061 bm!687866) bm!687865))

(declare-fun m!8078486 () Bool)

(assert (=> bm!687864 m!8078486))

(declare-fun m!8078488 () Bool)

(assert (=> bm!687865 m!8078488))

(declare-fun m!8078490 () Bool)

(assert (=> b!7493057 m!8078490))

(assert (=> b!7492825 d!2301462))

(declare-fun d!2301468 () Bool)

(declare-fun isEmpty!41258 (Option!17189) Bool)

(assert (=> d!2301468 (= (isDefined!13878 (findConcatSeparation!3311 lt!2629960 rTail!78 Nil!72230 s!13591 s!13591)) (not (isEmpty!41258 (findConcatSeparation!3311 lt!2629960 rTail!78 Nil!72230 s!13591 s!13591))))))

(declare-fun bs!1935424 () Bool)

(assert (= bs!1935424 d!2301468))

(assert (=> bs!1935424 m!8078382))

(declare-fun m!8078492 () Bool)

(assert (=> bs!1935424 m!8078492))

(assert (=> b!7492825 d!2301468))

(declare-fun bs!1935425 () Bool)

(declare-fun d!2301470 () Bool)

(assert (= bs!1935425 (and d!2301470 b!7493016)))

(declare-fun lambda!464258 () Int)

(assert (=> bs!1935425 (not (= lambda!464258 lambda!464253))))

(declare-fun bs!1935426 () Bool)

(assert (= bs!1935426 (and d!2301470 b!7492825)))

(assert (=> bs!1935426 (= lambda!464258 lambda!464242)))

(declare-fun bs!1935427 () Bool)

(assert (= bs!1935427 (and d!2301470 b!7492991)))

(assert (=> bs!1935427 (not (= lambda!464258 lambda!464251))))

(declare-fun bs!1935428 () Bool)

(assert (= bs!1935428 (and d!2301470 b!7493018)))

(assert (=> bs!1935428 (not (= lambda!464258 lambda!464252))))

(declare-fun bs!1935429 () Bool)

(assert (= bs!1935429 (and d!2301470 b!7492993)))

(assert (=> bs!1935429 (not (= lambda!464258 lambda!464250))))

(assert (=> d!2301470 true))

(assert (=> d!2301470 true))

(assert (=> d!2301470 true))

(assert (=> d!2301470 (= (isDefined!13878 (findConcatSeparation!3311 lt!2629960 rTail!78 Nil!72230 s!13591 s!13591)) (Exists!4257 lambda!464258))))

(declare-fun lt!2630003 () Unit!166111)

(declare-fun choose!57915 (Regex!19640 Regex!19640 List!72354) Unit!166111)

(assert (=> d!2301470 (= lt!2630003 (choose!57915 lt!2629960 rTail!78 s!13591))))

(assert (=> d!2301470 (validRegex!10154 lt!2629960)))

(assert (=> d!2301470 (= (lemmaFindConcatSeparationEquivalentToExists!3069 lt!2629960 rTail!78 s!13591) lt!2630003)))

(declare-fun bs!1935430 () Bool)

(assert (= bs!1935430 d!2301470))

(declare-fun m!8078494 () Bool)

(assert (=> bs!1935430 m!8078494))

(assert (=> bs!1935430 m!8078390))

(assert (=> bs!1935430 m!8078382))

(assert (=> bs!1935430 m!8078382))

(assert (=> bs!1935430 m!8078384))

(declare-fun m!8078496 () Bool)

(assert (=> bs!1935430 m!8078496))

(assert (=> b!7492825 d!2301470))

(declare-fun b!7493106 () Bool)

(declare-fun e!4468045 () Option!17189)

(assert (=> b!7493106 (= e!4468045 (Some!17188 (tuple2!68715 Nil!72230 s!13591)))))

(declare-fun b!7493107 () Bool)

(declare-fun e!4468043 () Bool)

(declare-fun lt!2630012 () Option!17189)

(declare-fun ++!17246 (List!72354 List!72354) List!72354)

(declare-fun get!25316 (Option!17189) tuple2!68714)

(assert (=> b!7493107 (= e!4468043 (= (++!17246 (_1!37660 (get!25316 lt!2630012)) (_2!37660 (get!25316 lt!2630012))) s!13591))))

(declare-fun b!7493108 () Bool)

(declare-fun res!3005734 () Bool)

(assert (=> b!7493108 (=> (not res!3005734) (not e!4468043))))

(assert (=> b!7493108 (= res!3005734 (matchR!9402 lt!2629960 (_1!37660 (get!25316 lt!2630012))))))

(declare-fun b!7493109 () Bool)

(declare-fun lt!2630013 () Unit!166111)

(declare-fun lt!2630011 () Unit!166111)

(assert (=> b!7493109 (= lt!2630013 lt!2630011)))

(assert (=> b!7493109 (= (++!17246 (++!17246 Nil!72230 (Cons!72230 (h!78678 s!13591) Nil!72230)) (t!386923 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3120 (List!72354 C!39554 List!72354 List!72354) Unit!166111)

(assert (=> b!7493109 (= lt!2630011 (lemmaMoveElementToOtherListKeepsConcatEq!3120 Nil!72230 (h!78678 s!13591) (t!386923 s!13591) s!13591))))

(declare-fun e!4468041 () Option!17189)

(assert (=> b!7493109 (= e!4468041 (findConcatSeparation!3311 lt!2629960 rTail!78 (++!17246 Nil!72230 (Cons!72230 (h!78678 s!13591) Nil!72230)) (t!386923 s!13591) s!13591))))

(declare-fun b!7493110 () Bool)

(declare-fun e!4468042 () Bool)

(assert (=> b!7493110 (= e!4468042 (matchR!9402 rTail!78 s!13591))))

(declare-fun b!7493111 () Bool)

(assert (=> b!7493111 (= e!4468045 e!4468041)))

(declare-fun c!1383535 () Bool)

(assert (=> b!7493111 (= c!1383535 (is-Nil!72230 s!13591))))

(declare-fun b!7493112 () Bool)

(declare-fun e!4468044 () Bool)

(assert (=> b!7493112 (= e!4468044 (not (isDefined!13878 lt!2630012)))))

(declare-fun b!7493113 () Bool)

(declare-fun res!3005735 () Bool)

(assert (=> b!7493113 (=> (not res!3005735) (not e!4468043))))

(assert (=> b!7493113 (= res!3005735 (matchR!9402 rTail!78 (_2!37660 (get!25316 lt!2630012))))))

(declare-fun d!2301472 () Bool)

(assert (=> d!2301472 e!4468044))

(declare-fun res!3005736 () Bool)

(assert (=> d!2301472 (=> res!3005736 e!4468044)))

(assert (=> d!2301472 (= res!3005736 e!4468043)))

(declare-fun res!3005737 () Bool)

(assert (=> d!2301472 (=> (not res!3005737) (not e!4468043))))

(assert (=> d!2301472 (= res!3005737 (isDefined!13878 lt!2630012))))

(assert (=> d!2301472 (= lt!2630012 e!4468045)))

(declare-fun c!1383536 () Bool)

(assert (=> d!2301472 (= c!1383536 e!4468042)))

(declare-fun res!3005733 () Bool)

(assert (=> d!2301472 (=> (not res!3005733) (not e!4468042))))

(assert (=> d!2301472 (= res!3005733 (matchR!9402 lt!2629960 Nil!72230))))

(assert (=> d!2301472 (validRegex!10154 lt!2629960)))

(assert (=> d!2301472 (= (findConcatSeparation!3311 lt!2629960 rTail!78 Nil!72230 s!13591 s!13591) lt!2630012)))

(declare-fun b!7493114 () Bool)

(assert (=> b!7493114 (= e!4468041 None!17188)))

(assert (= (and d!2301472 res!3005733) b!7493110))

(assert (= (and d!2301472 c!1383536) b!7493106))

(assert (= (and d!2301472 (not c!1383536)) b!7493111))

(assert (= (and b!7493111 c!1383535) b!7493114))

(assert (= (and b!7493111 (not c!1383535)) b!7493109))

(assert (= (and d!2301472 res!3005737) b!7493108))

(assert (= (and b!7493108 res!3005734) b!7493113))

(assert (= (and b!7493113 res!3005735) b!7493107))

(assert (= (and d!2301472 (not res!3005736)) b!7493112))

(declare-fun m!8078502 () Bool)

(assert (=> b!7493108 m!8078502))

(declare-fun m!8078504 () Bool)

(assert (=> b!7493108 m!8078504))

(declare-fun m!8078506 () Bool)

(assert (=> b!7493109 m!8078506))

(assert (=> b!7493109 m!8078506))

(declare-fun m!8078508 () Bool)

(assert (=> b!7493109 m!8078508))

(declare-fun m!8078510 () Bool)

(assert (=> b!7493109 m!8078510))

(assert (=> b!7493109 m!8078506))

(declare-fun m!8078512 () Bool)

(assert (=> b!7493109 m!8078512))

(declare-fun m!8078514 () Bool)

(assert (=> d!2301472 m!8078514))

(declare-fun m!8078516 () Bool)

(assert (=> d!2301472 m!8078516))

(assert (=> d!2301472 m!8078390))

(assert (=> b!7493107 m!8078502))

(declare-fun m!8078518 () Bool)

(assert (=> b!7493107 m!8078518))

(assert (=> b!7493112 m!8078514))

(declare-fun m!8078520 () Bool)

(assert (=> b!7493110 m!8078520))

(assert (=> b!7493113 m!8078502))

(declare-fun m!8078522 () Bool)

(assert (=> b!7493113 m!8078522))

(assert (=> b!7492825 d!2301472))

(declare-fun d!2301476 () Bool)

(declare-fun choose!57916 (Int) Bool)

(assert (=> d!2301476 (= (Exists!4257 lambda!464242) (choose!57916 lambda!464242))))

(declare-fun bs!1935433 () Bool)

(assert (= bs!1935433 d!2301476))

(declare-fun m!8078524 () Bool)

(assert (=> bs!1935433 m!8078524))

(assert (=> b!7492825 d!2301476))

(declare-fun d!2301478 () Bool)

(declare-fun res!3005747 () Bool)

(declare-fun e!4468056 () Bool)

(assert (=> d!2301478 (=> res!3005747 e!4468056)))

(assert (=> d!2301478 (= res!3005747 (is-ElementMatch!19640 r2!5783))))

(assert (=> d!2301478 (= (validRegex!10154 r2!5783) e!4468056)))

(declare-fun bm!687876 () Bool)

(declare-fun call!687881 () Bool)

(declare-fun c!1383539 () Bool)

(assert (=> bm!687876 (= call!687881 (validRegex!10154 (ite c!1383539 (regTwo!39793 r2!5783) (regTwo!39792 r2!5783))))))

(declare-fun b!7493124 () Bool)

(declare-fun e!4468053 () Bool)

(assert (=> b!7493124 (= e!4468053 call!687881)))

(declare-fun b!7493125 () Bool)

(declare-fun res!3005745 () Bool)

(declare-fun e!4468057 () Bool)

(assert (=> b!7493125 (=> res!3005745 e!4468057)))

(assert (=> b!7493125 (= res!3005745 (not (is-Concat!28485 r2!5783)))))

(declare-fun e!4468058 () Bool)

(assert (=> b!7493125 (= e!4468058 e!4468057)))

(declare-fun b!7493126 () Bool)

(assert (=> b!7493126 (= e!4468057 e!4468053)))

(declare-fun res!3005743 () Bool)

(assert (=> b!7493126 (=> (not res!3005743) (not e!4468053))))

(declare-fun call!687883 () Bool)

(assert (=> b!7493126 (= res!3005743 call!687883)))

(declare-fun b!7493127 () Bool)

(declare-fun res!3005746 () Bool)

(declare-fun e!4468054 () Bool)

(assert (=> b!7493127 (=> (not res!3005746) (not e!4468054))))

(assert (=> b!7493127 (= res!3005746 call!687883)))

(assert (=> b!7493127 (= e!4468058 e!4468054)))

(declare-fun bm!687877 () Bool)

(declare-fun c!1383540 () Bool)

(declare-fun call!687882 () Bool)

(assert (=> bm!687877 (= call!687882 (validRegex!10154 (ite c!1383540 (reg!19969 r2!5783) (ite c!1383539 (regOne!39793 r2!5783) (regOne!39792 r2!5783)))))))

(declare-fun b!7493128 () Bool)

(declare-fun e!4468059 () Bool)

(declare-fun e!4468055 () Bool)

(assert (=> b!7493128 (= e!4468059 e!4468055)))

(declare-fun res!3005744 () Bool)

(assert (=> b!7493128 (= res!3005744 (not (nullable!8576 (reg!19969 r2!5783))))))

(assert (=> b!7493128 (=> (not res!3005744) (not e!4468055))))

(declare-fun b!7493129 () Bool)

(assert (=> b!7493129 (= e!4468056 e!4468059)))

(assert (=> b!7493129 (= c!1383540 (is-Star!19640 r2!5783))))

(declare-fun b!7493130 () Bool)

(assert (=> b!7493130 (= e!4468059 e!4468058)))

(assert (=> b!7493130 (= c!1383539 (is-Union!19640 r2!5783))))

(declare-fun b!7493131 () Bool)

(assert (=> b!7493131 (= e!4468054 call!687881)))

(declare-fun bm!687878 () Bool)

(assert (=> bm!687878 (= call!687883 call!687882)))

(declare-fun b!7493132 () Bool)

(assert (=> b!7493132 (= e!4468055 call!687882)))

(assert (= (and d!2301478 (not res!3005747)) b!7493129))

(assert (= (and b!7493129 c!1383540) b!7493128))

(assert (= (and b!7493129 (not c!1383540)) b!7493130))

(assert (= (and b!7493128 res!3005744) b!7493132))

(assert (= (and b!7493130 c!1383539) b!7493127))

(assert (= (and b!7493130 (not c!1383539)) b!7493125))

(assert (= (and b!7493127 res!3005746) b!7493131))

(assert (= (and b!7493125 (not res!3005745)) b!7493126))

(assert (= (and b!7493126 res!3005743) b!7493124))

(assert (= (or b!7493131 b!7493124) bm!687876))

(assert (= (or b!7493127 b!7493126) bm!687878))

(assert (= (or b!7493132 bm!687878) bm!687877))

(declare-fun m!8078532 () Bool)

(assert (=> bm!687876 m!8078532))

(declare-fun m!8078534 () Bool)

(assert (=> bm!687877 m!8078534))

(declare-fun m!8078536 () Bool)

(assert (=> b!7493128 m!8078536))

(assert (=> b!7492824 d!2301478))

(declare-fun d!2301482 () Bool)

(declare-fun res!3005757 () Bool)

(declare-fun e!4468070 () Bool)

(assert (=> d!2301482 (=> res!3005757 e!4468070)))

(assert (=> d!2301482 (= res!3005757 (is-ElementMatch!19640 r1!5845))))

(assert (=> d!2301482 (= (validRegex!10154 r1!5845) e!4468070)))

(declare-fun bm!687882 () Bool)

(declare-fun call!687887 () Bool)

(declare-fun c!1383543 () Bool)

(assert (=> bm!687882 (= call!687887 (validRegex!10154 (ite c!1383543 (regTwo!39793 r1!5845) (regTwo!39792 r1!5845))))))

(declare-fun b!7493142 () Bool)

(declare-fun e!4468067 () Bool)

(assert (=> b!7493142 (= e!4468067 call!687887)))

(declare-fun b!7493143 () Bool)

(declare-fun res!3005755 () Bool)

(declare-fun e!4468071 () Bool)

(assert (=> b!7493143 (=> res!3005755 e!4468071)))

(assert (=> b!7493143 (= res!3005755 (not (is-Concat!28485 r1!5845)))))

(declare-fun e!4468072 () Bool)

(assert (=> b!7493143 (= e!4468072 e!4468071)))

(declare-fun b!7493144 () Bool)

(assert (=> b!7493144 (= e!4468071 e!4468067)))

(declare-fun res!3005753 () Bool)

(assert (=> b!7493144 (=> (not res!3005753) (not e!4468067))))

(declare-fun call!687889 () Bool)

(assert (=> b!7493144 (= res!3005753 call!687889)))

(declare-fun b!7493145 () Bool)

(declare-fun res!3005756 () Bool)

(declare-fun e!4468068 () Bool)

(assert (=> b!7493145 (=> (not res!3005756) (not e!4468068))))

(assert (=> b!7493145 (= res!3005756 call!687889)))

(assert (=> b!7493145 (= e!4468072 e!4468068)))

(declare-fun c!1383544 () Bool)

(declare-fun bm!687883 () Bool)

(declare-fun call!687888 () Bool)

(assert (=> bm!687883 (= call!687888 (validRegex!10154 (ite c!1383544 (reg!19969 r1!5845) (ite c!1383543 (regOne!39793 r1!5845) (regOne!39792 r1!5845)))))))

(declare-fun b!7493146 () Bool)

(declare-fun e!4468073 () Bool)

(declare-fun e!4468069 () Bool)

(assert (=> b!7493146 (= e!4468073 e!4468069)))

(declare-fun res!3005754 () Bool)

(assert (=> b!7493146 (= res!3005754 (not (nullable!8576 (reg!19969 r1!5845))))))

(assert (=> b!7493146 (=> (not res!3005754) (not e!4468069))))

(declare-fun b!7493147 () Bool)

(assert (=> b!7493147 (= e!4468070 e!4468073)))

(assert (=> b!7493147 (= c!1383544 (is-Star!19640 r1!5845))))

(declare-fun b!7493148 () Bool)

(assert (=> b!7493148 (= e!4468073 e!4468072)))

(assert (=> b!7493148 (= c!1383543 (is-Union!19640 r1!5845))))

(declare-fun b!7493149 () Bool)

(assert (=> b!7493149 (= e!4468068 call!687887)))

(declare-fun bm!687884 () Bool)

(assert (=> bm!687884 (= call!687889 call!687888)))

(declare-fun b!7493150 () Bool)

(assert (=> b!7493150 (= e!4468069 call!687888)))

(assert (= (and d!2301482 (not res!3005757)) b!7493147))

(assert (= (and b!7493147 c!1383544) b!7493146))

(assert (= (and b!7493147 (not c!1383544)) b!7493148))

(assert (= (and b!7493146 res!3005754) b!7493150))

(assert (= (and b!7493148 c!1383543) b!7493145))

(assert (= (and b!7493148 (not c!1383543)) b!7493143))

(assert (= (and b!7493145 res!3005756) b!7493149))

(assert (= (and b!7493143 (not res!3005755)) b!7493144))

(assert (= (and b!7493144 res!3005753) b!7493142))

(assert (= (or b!7493149 b!7493142) bm!687882))

(assert (= (or b!7493145 b!7493144) bm!687884))

(assert (= (or b!7493150 bm!687884) bm!687883))

(declare-fun m!8078538 () Bool)

(assert (=> bm!687882 m!8078538))

(declare-fun m!8078540 () Bool)

(assert (=> bm!687883 m!8078540))

(declare-fun m!8078542 () Bool)

(assert (=> b!7493146 m!8078542))

(assert (=> start!725276 d!2301482))

(declare-fun d!2301484 () Bool)

(declare-fun res!3005762 () Bool)

(declare-fun e!4468077 () Bool)

(assert (=> d!2301484 (=> res!3005762 e!4468077)))

(assert (=> d!2301484 (= res!3005762 (is-ElementMatch!19640 rTail!78))))

(assert (=> d!2301484 (= (validRegex!10154 rTail!78) e!4468077)))

(declare-fun bm!687885 () Bool)

(declare-fun call!687890 () Bool)

(declare-fun c!1383545 () Bool)

(assert (=> bm!687885 (= call!687890 (validRegex!10154 (ite c!1383545 (regTwo!39793 rTail!78) (regTwo!39792 rTail!78))))))

(declare-fun b!7493151 () Bool)

(declare-fun e!4468074 () Bool)

(assert (=> b!7493151 (= e!4468074 call!687890)))

(declare-fun b!7493152 () Bool)

(declare-fun res!3005760 () Bool)

(declare-fun e!4468078 () Bool)

(assert (=> b!7493152 (=> res!3005760 e!4468078)))

(assert (=> b!7493152 (= res!3005760 (not (is-Concat!28485 rTail!78)))))

(declare-fun e!4468079 () Bool)

(assert (=> b!7493152 (= e!4468079 e!4468078)))

(declare-fun b!7493153 () Bool)

(assert (=> b!7493153 (= e!4468078 e!4468074)))

(declare-fun res!3005758 () Bool)

(assert (=> b!7493153 (=> (not res!3005758) (not e!4468074))))

(declare-fun call!687892 () Bool)

(assert (=> b!7493153 (= res!3005758 call!687892)))

(declare-fun b!7493154 () Bool)

(declare-fun res!3005761 () Bool)

(declare-fun e!4468075 () Bool)

(assert (=> b!7493154 (=> (not res!3005761) (not e!4468075))))

(assert (=> b!7493154 (= res!3005761 call!687892)))

(assert (=> b!7493154 (= e!4468079 e!4468075)))

(declare-fun c!1383546 () Bool)

(declare-fun call!687891 () Bool)

(declare-fun bm!687886 () Bool)

(assert (=> bm!687886 (= call!687891 (validRegex!10154 (ite c!1383546 (reg!19969 rTail!78) (ite c!1383545 (regOne!39793 rTail!78) (regOne!39792 rTail!78)))))))

(declare-fun b!7493155 () Bool)

(declare-fun e!4468080 () Bool)

(declare-fun e!4468076 () Bool)

(assert (=> b!7493155 (= e!4468080 e!4468076)))

(declare-fun res!3005759 () Bool)

(assert (=> b!7493155 (= res!3005759 (not (nullable!8576 (reg!19969 rTail!78))))))

(assert (=> b!7493155 (=> (not res!3005759) (not e!4468076))))

(declare-fun b!7493156 () Bool)

(assert (=> b!7493156 (= e!4468077 e!4468080)))

(assert (=> b!7493156 (= c!1383546 (is-Star!19640 rTail!78))))

(declare-fun b!7493157 () Bool)

(assert (=> b!7493157 (= e!4468080 e!4468079)))

(assert (=> b!7493157 (= c!1383545 (is-Union!19640 rTail!78))))

(declare-fun b!7493158 () Bool)

(assert (=> b!7493158 (= e!4468075 call!687890)))

(declare-fun bm!687887 () Bool)

(assert (=> bm!687887 (= call!687892 call!687891)))

(declare-fun b!7493159 () Bool)

(assert (=> b!7493159 (= e!4468076 call!687891)))

(assert (= (and d!2301484 (not res!3005762)) b!7493156))

(assert (= (and b!7493156 c!1383546) b!7493155))

(assert (= (and b!7493156 (not c!1383546)) b!7493157))

(assert (= (and b!7493155 res!3005759) b!7493159))

(assert (= (and b!7493157 c!1383545) b!7493154))

(assert (= (and b!7493157 (not c!1383545)) b!7493152))

(assert (= (and b!7493154 res!3005761) b!7493158))

(assert (= (and b!7493152 (not res!3005760)) b!7493153))

(assert (= (and b!7493153 res!3005758) b!7493151))

(assert (= (or b!7493158 b!7493151) bm!687885))

(assert (= (or b!7493154 b!7493153) bm!687887))

(assert (= (or b!7493159 bm!687887) bm!687886))

(declare-fun m!8078550 () Bool)

(assert (=> bm!687885 m!8078550))

(declare-fun m!8078552 () Bool)

(assert (=> bm!687886 m!8078552))

(declare-fun m!8078554 () Bool)

(assert (=> b!7493155 m!8078554))

(assert (=> b!7492821 d!2301484))

(declare-fun b!7493179 () Bool)

(declare-fun e!4468090 () Bool)

(assert (=> b!7493179 (= e!4468090 tp_is_empty!49569)))

(declare-fun b!7493182 () Bool)

(declare-fun tp!2174986 () Bool)

(declare-fun tp!2174988 () Bool)

(assert (=> b!7493182 (= e!4468090 (and tp!2174986 tp!2174988))))

(declare-fun b!7493180 () Bool)

(declare-fun tp!2174985 () Bool)

(declare-fun tp!2174987 () Bool)

(assert (=> b!7493180 (= e!4468090 (and tp!2174985 tp!2174987))))

(declare-fun b!7493181 () Bool)

(declare-fun tp!2174984 () Bool)

(assert (=> b!7493181 (= e!4468090 tp!2174984)))

(assert (=> b!7492829 (= tp!2174914 e!4468090)))

(assert (= (and b!7492829 (is-ElementMatch!19640 (regOne!39793 rTail!78))) b!7493179))

(assert (= (and b!7492829 (is-Concat!28485 (regOne!39793 rTail!78))) b!7493180))

(assert (= (and b!7492829 (is-Star!19640 (regOne!39793 rTail!78))) b!7493181))

(assert (= (and b!7492829 (is-Union!19640 (regOne!39793 rTail!78))) b!7493182))

(declare-fun b!7493183 () Bool)

(declare-fun e!4468091 () Bool)

(assert (=> b!7493183 (= e!4468091 tp_is_empty!49569)))

(declare-fun b!7493186 () Bool)

(declare-fun tp!2174991 () Bool)

(declare-fun tp!2174993 () Bool)

(assert (=> b!7493186 (= e!4468091 (and tp!2174991 tp!2174993))))

(declare-fun b!7493184 () Bool)

(declare-fun tp!2174990 () Bool)

(declare-fun tp!2174992 () Bool)

(assert (=> b!7493184 (= e!4468091 (and tp!2174990 tp!2174992))))

(declare-fun b!7493185 () Bool)

(declare-fun tp!2174989 () Bool)

(assert (=> b!7493185 (= e!4468091 tp!2174989)))

(assert (=> b!7492829 (= tp!2174912 e!4468091)))

(assert (= (and b!7492829 (is-ElementMatch!19640 (regTwo!39793 rTail!78))) b!7493183))

(assert (= (and b!7492829 (is-Concat!28485 (regTwo!39793 rTail!78))) b!7493184))

(assert (= (and b!7492829 (is-Star!19640 (regTwo!39793 rTail!78))) b!7493185))

(assert (= (and b!7492829 (is-Union!19640 (regTwo!39793 rTail!78))) b!7493186))

(declare-fun b!7493187 () Bool)

(declare-fun e!4468092 () Bool)

(assert (=> b!7493187 (= e!4468092 tp_is_empty!49569)))

(declare-fun b!7493190 () Bool)

(declare-fun tp!2174996 () Bool)

(declare-fun tp!2174998 () Bool)

(assert (=> b!7493190 (= e!4468092 (and tp!2174996 tp!2174998))))

(declare-fun b!7493188 () Bool)

(declare-fun tp!2174995 () Bool)

(declare-fun tp!2174997 () Bool)

(assert (=> b!7493188 (= e!4468092 (and tp!2174995 tp!2174997))))

(declare-fun b!7493189 () Bool)

(declare-fun tp!2174994 () Bool)

(assert (=> b!7493189 (= e!4468092 tp!2174994)))

(assert (=> b!7492823 (= tp!2174922 e!4468092)))

(assert (= (and b!7492823 (is-ElementMatch!19640 (regOne!39792 r2!5783))) b!7493187))

(assert (= (and b!7492823 (is-Concat!28485 (regOne!39792 r2!5783))) b!7493188))

(assert (= (and b!7492823 (is-Star!19640 (regOne!39792 r2!5783))) b!7493189))

(assert (= (and b!7492823 (is-Union!19640 (regOne!39792 r2!5783))) b!7493190))

(declare-fun b!7493191 () Bool)

(declare-fun e!4468093 () Bool)

(assert (=> b!7493191 (= e!4468093 tp_is_empty!49569)))

(declare-fun b!7493194 () Bool)

(declare-fun tp!2175001 () Bool)

(declare-fun tp!2175003 () Bool)

(assert (=> b!7493194 (= e!4468093 (and tp!2175001 tp!2175003))))

(declare-fun b!7493192 () Bool)

(declare-fun tp!2175000 () Bool)

(declare-fun tp!2175002 () Bool)

(assert (=> b!7493192 (= e!4468093 (and tp!2175000 tp!2175002))))

(declare-fun b!7493193 () Bool)

(declare-fun tp!2174999 () Bool)

(assert (=> b!7493193 (= e!4468093 tp!2174999)))

(assert (=> b!7492823 (= tp!2174911 e!4468093)))

(assert (= (and b!7492823 (is-ElementMatch!19640 (regTwo!39792 r2!5783))) b!7493191))

(assert (= (and b!7492823 (is-Concat!28485 (regTwo!39792 r2!5783))) b!7493192))

(assert (= (and b!7492823 (is-Star!19640 (regTwo!39792 r2!5783))) b!7493193))

(assert (= (and b!7492823 (is-Union!19640 (regTwo!39792 r2!5783))) b!7493194))

(declare-fun b!7493195 () Bool)

(declare-fun e!4468094 () Bool)

(assert (=> b!7493195 (= e!4468094 tp_is_empty!49569)))

(declare-fun b!7493198 () Bool)

(declare-fun tp!2175006 () Bool)

(declare-fun tp!2175008 () Bool)

(assert (=> b!7493198 (= e!4468094 (and tp!2175006 tp!2175008))))

(declare-fun b!7493196 () Bool)

(declare-fun tp!2175005 () Bool)

(declare-fun tp!2175007 () Bool)

(assert (=> b!7493196 (= e!4468094 (and tp!2175005 tp!2175007))))

(declare-fun b!7493197 () Bool)

(declare-fun tp!2175004 () Bool)

(assert (=> b!7493197 (= e!4468094 tp!2175004)))

(assert (=> b!7492828 (= tp!2174915 e!4468094)))

(assert (= (and b!7492828 (is-ElementMatch!19640 (reg!19969 r1!5845))) b!7493195))

(assert (= (and b!7492828 (is-Concat!28485 (reg!19969 r1!5845))) b!7493196))

(assert (= (and b!7492828 (is-Star!19640 (reg!19969 r1!5845))) b!7493197))

(assert (= (and b!7492828 (is-Union!19640 (reg!19969 r1!5845))) b!7493198))

(declare-fun b!7493199 () Bool)

(declare-fun e!4468095 () Bool)

(assert (=> b!7493199 (= e!4468095 tp_is_empty!49569)))

(declare-fun b!7493202 () Bool)

(declare-fun tp!2175011 () Bool)

(declare-fun tp!2175013 () Bool)

(assert (=> b!7493202 (= e!4468095 (and tp!2175011 tp!2175013))))

(declare-fun b!7493200 () Bool)

(declare-fun tp!2175010 () Bool)

(declare-fun tp!2175012 () Bool)

(assert (=> b!7493200 (= e!4468095 (and tp!2175010 tp!2175012))))

(declare-fun b!7493201 () Bool)

(declare-fun tp!2175009 () Bool)

(assert (=> b!7493201 (= e!4468095 tp!2175009)))

(assert (=> b!7492830 (= tp!2174917 e!4468095)))

(assert (= (and b!7492830 (is-ElementMatch!19640 (regOne!39792 r1!5845))) b!7493199))

(assert (= (and b!7492830 (is-Concat!28485 (regOne!39792 r1!5845))) b!7493200))

(assert (= (and b!7492830 (is-Star!19640 (regOne!39792 r1!5845))) b!7493201))

(assert (= (and b!7492830 (is-Union!19640 (regOne!39792 r1!5845))) b!7493202))

(declare-fun b!7493203 () Bool)

(declare-fun e!4468096 () Bool)

(assert (=> b!7493203 (= e!4468096 tp_is_empty!49569)))

(declare-fun b!7493206 () Bool)

(declare-fun tp!2175016 () Bool)

(declare-fun tp!2175018 () Bool)

(assert (=> b!7493206 (= e!4468096 (and tp!2175016 tp!2175018))))

(declare-fun b!7493204 () Bool)

(declare-fun tp!2175015 () Bool)

(declare-fun tp!2175017 () Bool)

(assert (=> b!7493204 (= e!4468096 (and tp!2175015 tp!2175017))))

(declare-fun b!7493205 () Bool)

(declare-fun tp!2175014 () Bool)

(assert (=> b!7493205 (= e!4468096 tp!2175014)))

(assert (=> b!7492830 (= tp!2174913 e!4468096)))

(assert (= (and b!7492830 (is-ElementMatch!19640 (regTwo!39792 r1!5845))) b!7493203))

(assert (= (and b!7492830 (is-Concat!28485 (regTwo!39792 r1!5845))) b!7493204))

(assert (= (and b!7492830 (is-Star!19640 (regTwo!39792 r1!5845))) b!7493205))

(assert (= (and b!7492830 (is-Union!19640 (regTwo!39792 r1!5845))) b!7493206))

(declare-fun b!7493207 () Bool)

(declare-fun e!4468097 () Bool)

(assert (=> b!7493207 (= e!4468097 tp_is_empty!49569)))

(declare-fun b!7493210 () Bool)

(declare-fun tp!2175021 () Bool)

(declare-fun tp!2175023 () Bool)

(assert (=> b!7493210 (= e!4468097 (and tp!2175021 tp!2175023))))

(declare-fun b!7493208 () Bool)

(declare-fun tp!2175020 () Bool)

(declare-fun tp!2175022 () Bool)

(assert (=> b!7493208 (= e!4468097 (and tp!2175020 tp!2175022))))

(declare-fun b!7493209 () Bool)

(declare-fun tp!2175019 () Bool)

(assert (=> b!7493209 (= e!4468097 tp!2175019)))

(assert (=> b!7492826 (= tp!2174919 e!4468097)))

(assert (= (and b!7492826 (is-ElementMatch!19640 (regOne!39793 r2!5783))) b!7493207))

(assert (= (and b!7492826 (is-Concat!28485 (regOne!39793 r2!5783))) b!7493208))

(assert (= (and b!7492826 (is-Star!19640 (regOne!39793 r2!5783))) b!7493209))

(assert (= (and b!7492826 (is-Union!19640 (regOne!39793 r2!5783))) b!7493210))

(declare-fun b!7493211 () Bool)

(declare-fun e!4468098 () Bool)

(assert (=> b!7493211 (= e!4468098 tp_is_empty!49569)))

(declare-fun b!7493214 () Bool)

(declare-fun tp!2175026 () Bool)

(declare-fun tp!2175028 () Bool)

(assert (=> b!7493214 (= e!4468098 (and tp!2175026 tp!2175028))))

(declare-fun b!7493212 () Bool)

(declare-fun tp!2175025 () Bool)

(declare-fun tp!2175027 () Bool)

(assert (=> b!7493212 (= e!4468098 (and tp!2175025 tp!2175027))))

(declare-fun b!7493213 () Bool)

(declare-fun tp!2175024 () Bool)

(assert (=> b!7493213 (= e!4468098 tp!2175024)))

(assert (=> b!7492826 (= tp!2174918 e!4468098)))

(assert (= (and b!7492826 (is-ElementMatch!19640 (regTwo!39793 r2!5783))) b!7493211))

(assert (= (and b!7492826 (is-Concat!28485 (regTwo!39793 r2!5783))) b!7493212))

(assert (= (and b!7492826 (is-Star!19640 (regTwo!39793 r2!5783))) b!7493213))

(assert (= (and b!7492826 (is-Union!19640 (regTwo!39793 r2!5783))) b!7493214))

(declare-fun b!7493215 () Bool)

(declare-fun e!4468099 () Bool)

(assert (=> b!7493215 (= e!4468099 tp_is_empty!49569)))

(declare-fun b!7493218 () Bool)

(declare-fun tp!2175031 () Bool)

(declare-fun tp!2175033 () Bool)

(assert (=> b!7493218 (= e!4468099 (and tp!2175031 tp!2175033))))

(declare-fun b!7493216 () Bool)

(declare-fun tp!2175030 () Bool)

(declare-fun tp!2175032 () Bool)

(assert (=> b!7493216 (= e!4468099 (and tp!2175030 tp!2175032))))

(declare-fun b!7493217 () Bool)

(declare-fun tp!2175029 () Bool)

(assert (=> b!7493217 (= e!4468099 tp!2175029)))

(assert (=> b!7492820 (= tp!2174925 e!4468099)))

(assert (= (and b!7492820 (is-ElementMatch!19640 (regOne!39793 r1!5845))) b!7493215))

(assert (= (and b!7492820 (is-Concat!28485 (regOne!39793 r1!5845))) b!7493216))

(assert (= (and b!7492820 (is-Star!19640 (regOne!39793 r1!5845))) b!7493217))

(assert (= (and b!7492820 (is-Union!19640 (regOne!39793 r1!5845))) b!7493218))

(declare-fun b!7493219 () Bool)

(declare-fun e!4468100 () Bool)

(assert (=> b!7493219 (= e!4468100 tp_is_empty!49569)))

(declare-fun b!7493222 () Bool)

(declare-fun tp!2175036 () Bool)

(declare-fun tp!2175038 () Bool)

(assert (=> b!7493222 (= e!4468100 (and tp!2175036 tp!2175038))))

(declare-fun b!7493220 () Bool)

(declare-fun tp!2175035 () Bool)

(declare-fun tp!2175037 () Bool)

(assert (=> b!7493220 (= e!4468100 (and tp!2175035 tp!2175037))))

(declare-fun b!7493221 () Bool)

(declare-fun tp!2175034 () Bool)

(assert (=> b!7493221 (= e!4468100 tp!2175034)))

(assert (=> b!7492820 (= tp!2174924 e!4468100)))

(assert (= (and b!7492820 (is-ElementMatch!19640 (regTwo!39793 r1!5845))) b!7493219))

(assert (= (and b!7492820 (is-Concat!28485 (regTwo!39793 r1!5845))) b!7493220))

(assert (= (and b!7492820 (is-Star!19640 (regTwo!39793 r1!5845))) b!7493221))

(assert (= (and b!7492820 (is-Union!19640 (regTwo!39793 r1!5845))) b!7493222))

(declare-fun b!7493223 () Bool)

(declare-fun e!4468101 () Bool)

(assert (=> b!7493223 (= e!4468101 tp_is_empty!49569)))

(declare-fun b!7493226 () Bool)

(declare-fun tp!2175041 () Bool)

(declare-fun tp!2175043 () Bool)

(assert (=> b!7493226 (= e!4468101 (and tp!2175041 tp!2175043))))

(declare-fun b!7493224 () Bool)

(declare-fun tp!2175040 () Bool)

(declare-fun tp!2175042 () Bool)

(assert (=> b!7493224 (= e!4468101 (and tp!2175040 tp!2175042))))

(declare-fun b!7493225 () Bool)

(declare-fun tp!2175039 () Bool)

(assert (=> b!7493225 (= e!4468101 tp!2175039)))

(assert (=> b!7492833 (= tp!2174920 e!4468101)))

(assert (= (and b!7492833 (is-ElementMatch!19640 (regOne!39792 rTail!78))) b!7493223))

(assert (= (and b!7492833 (is-Concat!28485 (regOne!39792 rTail!78))) b!7493224))

(assert (= (and b!7492833 (is-Star!19640 (regOne!39792 rTail!78))) b!7493225))

(assert (= (and b!7492833 (is-Union!19640 (regOne!39792 rTail!78))) b!7493226))

(declare-fun b!7493227 () Bool)

(declare-fun e!4468102 () Bool)

(assert (=> b!7493227 (= e!4468102 tp_is_empty!49569)))

(declare-fun b!7493230 () Bool)

(declare-fun tp!2175046 () Bool)

(declare-fun tp!2175048 () Bool)

(assert (=> b!7493230 (= e!4468102 (and tp!2175046 tp!2175048))))

(declare-fun b!7493228 () Bool)

(declare-fun tp!2175045 () Bool)

(declare-fun tp!2175047 () Bool)

(assert (=> b!7493228 (= e!4468102 (and tp!2175045 tp!2175047))))

(declare-fun b!7493229 () Bool)

(declare-fun tp!2175044 () Bool)

(assert (=> b!7493229 (= e!4468102 tp!2175044)))

(assert (=> b!7492833 (= tp!2174923 e!4468102)))

(assert (= (and b!7492833 (is-ElementMatch!19640 (regTwo!39792 rTail!78))) b!7493227))

(assert (= (and b!7492833 (is-Concat!28485 (regTwo!39792 rTail!78))) b!7493228))

(assert (= (and b!7492833 (is-Star!19640 (regTwo!39792 rTail!78))) b!7493229))

(assert (= (and b!7492833 (is-Union!19640 (regTwo!39792 rTail!78))) b!7493230))

(declare-fun b!7493231 () Bool)

(declare-fun e!4468103 () Bool)

(assert (=> b!7493231 (= e!4468103 tp_is_empty!49569)))

(declare-fun b!7493234 () Bool)

(declare-fun tp!2175051 () Bool)

(declare-fun tp!2175053 () Bool)

(assert (=> b!7493234 (= e!4468103 (and tp!2175051 tp!2175053))))

(declare-fun b!7493232 () Bool)

(declare-fun tp!2175050 () Bool)

(declare-fun tp!2175052 () Bool)

(assert (=> b!7493232 (= e!4468103 (and tp!2175050 tp!2175052))))

(declare-fun b!7493233 () Bool)

(declare-fun tp!2175049 () Bool)

(assert (=> b!7493233 (= e!4468103 tp!2175049)))

(assert (=> b!7492822 (= tp!2174910 e!4468103)))

(assert (= (and b!7492822 (is-ElementMatch!19640 (reg!19969 r2!5783))) b!7493231))

(assert (= (and b!7492822 (is-Concat!28485 (reg!19969 r2!5783))) b!7493232))

(assert (= (and b!7492822 (is-Star!19640 (reg!19969 r2!5783))) b!7493233))

(assert (= (and b!7492822 (is-Union!19640 (reg!19969 r2!5783))) b!7493234))

(declare-fun b!7493239 () Bool)

(declare-fun e!4468106 () Bool)

(declare-fun tp!2175056 () Bool)

(assert (=> b!7493239 (= e!4468106 (and tp_is_empty!49569 tp!2175056))))

(assert (=> b!7492827 (= tp!2174921 e!4468106)))

(assert (= (and b!7492827 (is-Cons!72230 (t!386923 s!13591))) b!7493239))

(declare-fun b!7493240 () Bool)

(declare-fun e!4468107 () Bool)

(assert (=> b!7493240 (= e!4468107 tp_is_empty!49569)))

(declare-fun b!7493243 () Bool)

(declare-fun tp!2175059 () Bool)

(declare-fun tp!2175061 () Bool)

(assert (=> b!7493243 (= e!4468107 (and tp!2175059 tp!2175061))))

(declare-fun b!7493241 () Bool)

(declare-fun tp!2175058 () Bool)

(declare-fun tp!2175060 () Bool)

(assert (=> b!7493241 (= e!4468107 (and tp!2175058 tp!2175060))))

(declare-fun b!7493242 () Bool)

(declare-fun tp!2175057 () Bool)

(assert (=> b!7493242 (= e!4468107 tp!2175057)))

(assert (=> b!7492832 (= tp!2174916 e!4468107)))

(assert (= (and b!7492832 (is-ElementMatch!19640 (reg!19969 rTail!78))) b!7493240))

(assert (= (and b!7492832 (is-Concat!28485 (reg!19969 rTail!78))) b!7493241))

(assert (= (and b!7492832 (is-Star!19640 (reg!19969 rTail!78))) b!7493242))

(assert (= (and b!7492832 (is-Union!19640 (reg!19969 rTail!78))) b!7493243))

(push 1)

(assert (not b!7493201))

(assert (not d!2301450))

(assert (not bm!687883))

(assert (not b!7493232))

(assert (not b!7493234))

(assert (not b!7493180))

(assert (not b!7493242))

(assert (not b!7493110))

(assert (not d!2301472))

(assert (not b!7493243))

(assert (not b!7493233))

(assert (not bm!687877))

(assert (not b!7493230))

(assert (not b!7493208))

(assert (not b!7493107))

(assert (not b!7493204))

(assert (not bm!687857))

(assert (not b!7493005))

(assert (not b!7493112))

(assert (not b!7493239))

(assert (not d!2301468))

(assert (not bm!687886))

(assert (not b!7492926))

(assert (not b!7493212))

(assert (not b!7493198))

(assert (not b!7493210))

(assert (not b!7493224))

(assert (not b!7493228))

(assert (not b!7492927))

(assert (not b!7493184))

(assert (not b!7492937))

(assert (not b!7493196))

(assert (not bm!687885))

(assert (not bm!687855))

(assert (not b!7493205))

(assert (not b!7493113))

(assert (not bm!687876))

(assert (not b!7493190))

(assert (not b!7493108))

(assert (not b!7493109))

(assert (not b!7493008))

(assert (not b!7492992))

(assert (not b!7493226))

(assert (not d!2301448))

(assert (not b!7493220))

(assert (not b!7493188))

(assert (not b!7493217))

(assert (not b!7492932))

(assert (not b!7493222))

(assert (not b!7493189))

(assert (not b!7493024))

(assert (not b!7493214))

(assert (not bm!687856))

(assert (not b!7493007))

(assert (not b!7493241))

(assert (not d!2301476))

(assert (not bm!687848))

(assert (not b!7493225))

(assert (not b!7493202))

(assert (not b!7493193))

(assert (not bm!687865))

(assert (not b!7493213))

(assert (not b!7493216))

(assert (not b!7492930))

(assert (not b!7493001))

(assert (not bm!687854))

(assert (not b!7493181))

(assert (not b!7493194))

(assert (not b!7493128))

(assert (not b!7493017))

(assert (not b!7493002))

(assert (not d!2301458))

(assert tp_is_empty!49569)

(assert (not b!7493182))

(assert (not b!7493057))

(assert (not b!7493146))

(assert (not bm!687882))

(assert (not b!7493206))

(assert (not b!7493218))

(assert (not b!7493221))

(assert (not b!7492933))

(assert (not bm!687853))

(assert (not b!7493185))

(assert (not b!7493200))

(assert (not b!7493209))

(assert (not b!7493155))

(assert (not b!7493229))

(assert (not b!7493192))

(assert (not bm!687864))

(assert (not b!7492999))

(assert (not d!2301446))

(assert (not b!7493186))

(assert (not b!7493197))

(assert (not d!2301470))

(assert (not b!7493012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

