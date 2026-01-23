; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735782 () Bool)

(assert start!735782)

(declare-fun b!7645746 () Bool)

(declare-datatypes ((Unit!167932 0))(
  ( (Unit!167933) )
))
(declare-fun e!4544361 () Unit!167932)

(declare-fun Unit!167934 () Unit!167932)

(assert (=> b!7645746 (= e!4544361 Unit!167934)))

(declare-fun lt!2660976 () Unit!167932)

(declare-datatypes ((C!41258 0))(
  ( (C!41259 (val!31069 Int)) )
))
(declare-datatypes ((Regex!20466 0))(
  ( (ElementMatch!20466 (c!1408285 C!41258)) (Concat!29311 (regOne!41444 Regex!20466) (regTwo!41444 Regex!20466)) (EmptyExpr!20466) (Star!20466 (reg!20795 Regex!20466)) (EmptyLang!20466) (Union!20466 (regOne!41445 Regex!20466) (regTwo!41445 Regex!20466)) )
))
(declare-fun r!14126 () Regex!20466)

(declare-datatypes ((List!73317 0))(
  ( (Nil!73193) (Cons!73193 (h!79641 C!41258) (t!388052 List!73317)) )
))
(declare-fun s!9605 () List!73317)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!113 (Regex!20466 Regex!20466 List!73317) Unit!167932)

(assert (=> b!7645746 (= lt!2660976 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!113 (regOne!41445 r!14126) (regTwo!41445 r!14126) s!9605))))

(declare-fun res!3062425 () Bool)

(declare-fun matchR!9967 (Regex!20466 List!73317) Bool)

(assert (=> b!7645746 (= res!3062425 (matchR!9967 r!14126 s!9605))))

(declare-fun e!4544357 () Bool)

(assert (=> b!7645746 (=> (not res!3062425) (not e!4544357))))

(assert (=> b!7645746 e!4544357))

(declare-fun res!3062429 () Bool)

(declare-fun e!4544359 () Bool)

(assert (=> start!735782 (=> (not res!3062429) (not e!4544359))))

(declare-fun validRegex!10884 (Regex!20466) Bool)

(assert (=> start!735782 (= res!3062429 (validRegex!10884 r!14126))))

(assert (=> start!735782 e!4544359))

(declare-fun e!4544356 () Bool)

(assert (=> start!735782 e!4544356))

(declare-fun e!4544358 () Bool)

(assert (=> start!735782 e!4544358))

(declare-fun b!7645747 () Bool)

(declare-fun tp_is_empty!51287 () Bool)

(declare-fun tp!2231798 () Bool)

(assert (=> b!7645747 (= e!4544358 (and tp_is_empty!51287 tp!2231798))))

(declare-fun b!7645748 () Bool)

(assert (=> b!7645748 (= e!4544359 (not (validRegex!10884 (regTwo!41445 r!14126))))))

(declare-fun lt!2660980 () Bool)

(declare-fun matchRSpec!4575 (Regex!20466 List!73317) Bool)

(assert (=> b!7645748 (= lt!2660980 (matchRSpec!4575 (regOne!41445 r!14126) s!9605))))

(declare-fun lt!2660981 () Unit!167932)

(declare-fun mainMatchTheorem!4555 (Regex!20466 List!73317) Unit!167932)

(assert (=> b!7645748 (= lt!2660981 (mainMatchTheorem!4555 (regOne!41445 r!14126) s!9605))))

(declare-fun lt!2660977 () Unit!167932)

(declare-fun e!4544360 () Unit!167932)

(assert (=> b!7645748 (= lt!2660977 e!4544360)))

(declare-fun c!1408284 () Bool)

(assert (=> b!7645748 (= c!1408284 (matchR!9967 (regTwo!41445 r!14126) s!9605))))

(declare-fun lt!2660978 () Unit!167932)

(assert (=> b!7645748 (= lt!2660978 e!4544361)))

(declare-fun c!1408283 () Bool)

(assert (=> b!7645748 (= c!1408283 lt!2660980)))

(assert (=> b!7645748 (= lt!2660980 (matchR!9967 (regOne!41445 r!14126) s!9605))))

(declare-fun b!7645749 () Bool)

(assert (=> b!7645749 (= e!4544357 false)))

(declare-fun b!7645750 () Bool)

(declare-fun e!4544362 () Bool)

(assert (=> b!7645750 (= e!4544362 false)))

(declare-fun b!7645751 () Bool)

(declare-fun Unit!167935 () Unit!167932)

(assert (=> b!7645751 (= e!4544360 Unit!167935)))

(declare-fun b!7645752 () Bool)

(declare-fun Unit!167936 () Unit!167932)

(assert (=> b!7645752 (= e!4544361 Unit!167936)))

(declare-fun b!7645753 () Bool)

(declare-fun res!3062427 () Bool)

(assert (=> b!7645753 (=> (not res!3062427) (not e!4544359))))

(assert (=> b!7645753 (= res!3062427 (and (not (is-EmptyExpr!20466 r!14126)) (not (is-EmptyLang!20466 r!14126)) (not (is-ElementMatch!20466 r!14126)) (is-Union!20466 r!14126)))))

(declare-fun b!7645754 () Bool)

(declare-fun tp!2231801 () Bool)

(declare-fun tp!2231800 () Bool)

(assert (=> b!7645754 (= e!4544356 (and tp!2231801 tp!2231800))))

(declare-fun b!7645755 () Bool)

(assert (=> b!7645755 (= e!4544356 tp_is_empty!51287)))

(declare-fun b!7645756 () Bool)

(declare-fun tp!2231802 () Bool)

(declare-fun tp!2231803 () Bool)

(assert (=> b!7645756 (= e!4544356 (and tp!2231802 tp!2231803))))

(declare-fun b!7645757 () Bool)

(declare-fun res!3062426 () Bool)

(assert (=> b!7645757 (=> (not res!3062426) (not e!4544359))))

(assert (=> b!7645757 (= res!3062426 (not (matchR!9967 r!14126 s!9605)))))

(declare-fun b!7645758 () Bool)

(declare-fun Unit!167937 () Unit!167932)

(assert (=> b!7645758 (= e!4544360 Unit!167937)))

(declare-fun lt!2660979 () Unit!167932)

(assert (=> b!7645758 (= lt!2660979 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!113 (regTwo!41445 r!14126) (regOne!41445 r!14126) s!9605))))

(assert (=> b!7645758 (matchR!9967 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126)) s!9605)))

(declare-fun lt!2660975 () Unit!167932)

(declare-fun lemmaReversedUnionAcceptsSameString!41 (Regex!20466 Regex!20466 List!73317) Unit!167932)

(assert (=> b!7645758 (= lt!2660975 (lemmaReversedUnionAcceptsSameString!41 (regTwo!41445 r!14126) (regOne!41445 r!14126) s!9605))))

(declare-fun res!3062428 () Bool)

(assert (=> b!7645758 (= res!3062428 (matchR!9967 r!14126 s!9605))))

(assert (=> b!7645758 (=> (not res!3062428) (not e!4544362))))

(assert (=> b!7645758 e!4544362))

(declare-fun b!7645759 () Bool)

(declare-fun tp!2231799 () Bool)

(assert (=> b!7645759 (= e!4544356 tp!2231799)))

(assert (= (and start!735782 res!3062429) b!7645753))

(assert (= (and b!7645753 res!3062427) b!7645757))

(assert (= (and b!7645757 res!3062426) b!7645748))

(assert (= (and b!7645748 c!1408283) b!7645746))

(assert (= (and b!7645748 (not c!1408283)) b!7645752))

(assert (= (and b!7645746 res!3062425) b!7645749))

(assert (= (and b!7645748 c!1408284) b!7645758))

(assert (= (and b!7645748 (not c!1408284)) b!7645751))

(assert (= (and b!7645758 res!3062428) b!7645750))

(assert (= (and start!735782 (is-ElementMatch!20466 r!14126)) b!7645755))

(assert (= (and start!735782 (is-Concat!29311 r!14126)) b!7645754))

(assert (= (and start!735782 (is-Star!20466 r!14126)) b!7645759))

(assert (= (and start!735782 (is-Union!20466 r!14126)) b!7645756))

(assert (= (and start!735782 (is-Cons!73193 s!9605)) b!7645747))

(declare-fun m!8164514 () Bool)

(assert (=> b!7645746 m!8164514))

(declare-fun m!8164516 () Bool)

(assert (=> b!7645746 m!8164516))

(declare-fun m!8164518 () Bool)

(assert (=> start!735782 m!8164518))

(declare-fun m!8164520 () Bool)

(assert (=> b!7645758 m!8164520))

(declare-fun m!8164522 () Bool)

(assert (=> b!7645758 m!8164522))

(declare-fun m!8164524 () Bool)

(assert (=> b!7645758 m!8164524))

(assert (=> b!7645758 m!8164516))

(assert (=> b!7645757 m!8164516))

(declare-fun m!8164526 () Bool)

(assert (=> b!7645748 m!8164526))

(declare-fun m!8164528 () Bool)

(assert (=> b!7645748 m!8164528))

(declare-fun m!8164530 () Bool)

(assert (=> b!7645748 m!8164530))

(declare-fun m!8164532 () Bool)

(assert (=> b!7645748 m!8164532))

(declare-fun m!8164534 () Bool)

(assert (=> b!7645748 m!8164534))

(push 1)

(assert (not b!7645748))

(assert tp_is_empty!51287)

(assert (not b!7645756))

(assert (not b!7645758))

(assert (not start!735782))

(assert (not b!7645746))

(assert (not b!7645757))

(assert (not b!7645754))

(assert (not b!7645759))

(assert (not b!7645747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7645832 () Bool)

(declare-fun e!4544405 () Bool)

(declare-fun head!15737 (List!73317) C!41258)

(assert (=> b!7645832 (= e!4544405 (= (head!15737 s!9605) (c!1408285 (regTwo!41445 r!14126))))))

(declare-fun b!7645833 () Bool)

(declare-fun res!3062463 () Bool)

(declare-fun e!4544400 () Bool)

(assert (=> b!7645833 (=> res!3062463 e!4544400)))

(declare-fun isEmpty!41818 (List!73317) Bool)

(declare-fun tail!15277 (List!73317) List!73317)

(assert (=> b!7645833 (= res!3062463 (not (isEmpty!41818 (tail!15277 s!9605))))))

(declare-fun b!7645834 () Bool)

(declare-fun e!4544404 () Bool)

(assert (=> b!7645834 (= e!4544404 e!4544400)))

(declare-fun res!3062468 () Bool)

(assert (=> b!7645834 (=> res!3062468 e!4544400)))

(declare-fun call!701917 () Bool)

(assert (=> b!7645834 (= res!3062468 call!701917)))

(declare-fun d!2325537 () Bool)

(declare-fun e!4544402 () Bool)

(assert (=> d!2325537 e!4544402))

(declare-fun c!1408299 () Bool)

(assert (=> d!2325537 (= c!1408299 (is-EmptyExpr!20466 (regTwo!41445 r!14126)))))

(declare-fun lt!2661007 () Bool)

(declare-fun e!4544406 () Bool)

(assert (=> d!2325537 (= lt!2661007 e!4544406)))

(declare-fun c!1408301 () Bool)

(assert (=> d!2325537 (= c!1408301 (isEmpty!41818 s!9605))))

(assert (=> d!2325537 (validRegex!10884 (regTwo!41445 r!14126))))

(assert (=> d!2325537 (= (matchR!9967 (regTwo!41445 r!14126) s!9605) lt!2661007)))

(declare-fun b!7645835 () Bool)

(declare-fun e!4544401 () Bool)

(assert (=> b!7645835 (= e!4544401 (not lt!2661007))))

(declare-fun b!7645836 () Bool)

(declare-fun res!3062464 () Bool)

(assert (=> b!7645836 (=> (not res!3062464) (not e!4544405))))

(assert (=> b!7645836 (= res!3062464 (not call!701917))))

(declare-fun b!7645837 () Bool)

(declare-fun res!3062470 () Bool)

(assert (=> b!7645837 (=> (not res!3062470) (not e!4544405))))

(assert (=> b!7645837 (= res!3062470 (isEmpty!41818 (tail!15277 s!9605)))))

(declare-fun b!7645838 () Bool)

(declare-fun res!3062469 () Bool)

(declare-fun e!4544403 () Bool)

(assert (=> b!7645838 (=> res!3062469 e!4544403)))

(assert (=> b!7645838 (= res!3062469 (not (is-ElementMatch!20466 (regTwo!41445 r!14126))))))

(assert (=> b!7645838 (= e!4544401 e!4544403)))

(declare-fun b!7645839 () Bool)

(declare-fun derivativeStep!5937 (Regex!20466 C!41258) Regex!20466)

(assert (=> b!7645839 (= e!4544406 (matchR!9967 (derivativeStep!5937 (regTwo!41445 r!14126) (head!15737 s!9605)) (tail!15277 s!9605)))))

(declare-fun b!7645840 () Bool)

(assert (=> b!7645840 (= e!4544402 (= lt!2661007 call!701917))))

(declare-fun b!7645841 () Bool)

(assert (=> b!7645841 (= e!4544400 (not (= (head!15737 s!9605) (c!1408285 (regTwo!41445 r!14126)))))))

(declare-fun b!7645842 () Bool)

(assert (=> b!7645842 (= e!4544403 e!4544404)))

(declare-fun res!3062467 () Bool)

(assert (=> b!7645842 (=> (not res!3062467) (not e!4544404))))

(assert (=> b!7645842 (= res!3062467 (not lt!2661007))))

(declare-fun b!7645843 () Bool)

(declare-fun res!3062465 () Bool)

(assert (=> b!7645843 (=> res!3062465 e!4544403)))

(assert (=> b!7645843 (= res!3062465 e!4544405)))

(declare-fun res!3062466 () Bool)

(assert (=> b!7645843 (=> (not res!3062466) (not e!4544405))))

(assert (=> b!7645843 (= res!3062466 lt!2661007)))

(declare-fun b!7645844 () Bool)

(declare-fun nullable!8967 (Regex!20466) Bool)

(assert (=> b!7645844 (= e!4544406 (nullable!8967 (regTwo!41445 r!14126)))))

(declare-fun b!7645845 () Bool)

(assert (=> b!7645845 (= e!4544402 e!4544401)))

(declare-fun c!1408300 () Bool)

(assert (=> b!7645845 (= c!1408300 (is-EmptyLang!20466 (regTwo!41445 r!14126)))))

(declare-fun bm!701912 () Bool)

(assert (=> bm!701912 (= call!701917 (isEmpty!41818 s!9605))))

(assert (= (and d!2325537 c!1408301) b!7645844))

(assert (= (and d!2325537 (not c!1408301)) b!7645839))

(assert (= (and d!2325537 c!1408299) b!7645840))

(assert (= (and d!2325537 (not c!1408299)) b!7645845))

(assert (= (and b!7645845 c!1408300) b!7645835))

(assert (= (and b!7645845 (not c!1408300)) b!7645838))

(assert (= (and b!7645838 (not res!3062469)) b!7645843))

(assert (= (and b!7645843 res!3062466) b!7645836))

(assert (= (and b!7645836 res!3062464) b!7645837))

(assert (= (and b!7645837 res!3062470) b!7645832))

(assert (= (and b!7645843 (not res!3062465)) b!7645842))

(assert (= (and b!7645842 res!3062467) b!7645834))

(assert (= (and b!7645834 (not res!3062468)) b!7645833))

(assert (= (and b!7645833 (not res!3062463)) b!7645841))

(assert (= (or b!7645840 b!7645834 b!7645836) bm!701912))

(declare-fun m!8164558 () Bool)

(assert (=> b!7645841 m!8164558))

(declare-fun m!8164560 () Bool)

(assert (=> d!2325537 m!8164560))

(assert (=> d!2325537 m!8164528))

(assert (=> b!7645839 m!8164558))

(assert (=> b!7645839 m!8164558))

(declare-fun m!8164562 () Bool)

(assert (=> b!7645839 m!8164562))

(declare-fun m!8164564 () Bool)

(assert (=> b!7645839 m!8164564))

(assert (=> b!7645839 m!8164562))

(assert (=> b!7645839 m!8164564))

(declare-fun m!8164566 () Bool)

(assert (=> b!7645839 m!8164566))

(assert (=> b!7645833 m!8164564))

(assert (=> b!7645833 m!8164564))

(declare-fun m!8164568 () Bool)

(assert (=> b!7645833 m!8164568))

(assert (=> b!7645832 m!8164558))

(assert (=> b!7645837 m!8164564))

(assert (=> b!7645837 m!8164564))

(assert (=> b!7645837 m!8164568))

(assert (=> bm!701912 m!8164560))

(declare-fun m!8164570 () Bool)

(assert (=> b!7645844 m!8164570))

(assert (=> b!7645748 d!2325537))

(declare-fun b!7645961 () Bool)

(assert (=> b!7645961 true))

(assert (=> b!7645961 true))

(declare-fun bs!1944797 () Bool)

(declare-fun b!7645966 () Bool)

(assert (= bs!1944797 (and b!7645966 b!7645961)))

(declare-fun lambda!469697 () Int)

(declare-fun lambda!469696 () Int)

(assert (=> bs!1944797 (not (= lambda!469697 lambda!469696))))

(assert (=> b!7645966 true))

(assert (=> b!7645966 true))

(declare-fun b!7645957 () Bool)

(declare-fun res!3062527 () Bool)

(declare-fun e!4544472 () Bool)

(assert (=> b!7645957 (=> res!3062527 e!4544472)))

(declare-fun call!701927 () Bool)

(assert (=> b!7645957 (= res!3062527 call!701927)))

(declare-fun e!4544469 () Bool)

(assert (=> b!7645957 (= e!4544469 e!4544472)))

(declare-fun b!7645958 () Bool)

(declare-fun e!4544474 () Bool)

(assert (=> b!7645958 (= e!4544474 e!4544469)))

(declare-fun c!1408333 () Bool)

(assert (=> b!7645958 (= c!1408333 (is-Star!20466 (regOne!41445 r!14126)))))

(declare-fun b!7645959 () Bool)

(declare-fun e!4544471 () Bool)

(assert (=> b!7645959 (= e!4544471 (matchRSpec!4575 (regTwo!41445 (regOne!41445 r!14126)) s!9605))))

(declare-fun call!701926 () Bool)

(declare-fun bm!701921 () Bool)

(declare-fun Exists!4596 (Int) Bool)

(assert (=> bm!701921 (= call!701926 (Exists!4596 (ite c!1408333 lambda!469696 lambda!469697)))))

(assert (=> b!7645961 (= e!4544472 call!701926)))

(declare-fun b!7645962 () Bool)

(assert (=> b!7645962 (= e!4544474 e!4544471)))

(declare-fun res!3062528 () Bool)

(assert (=> b!7645962 (= res!3062528 (matchRSpec!4575 (regOne!41445 (regOne!41445 r!14126)) s!9605))))

(assert (=> b!7645962 (=> res!3062528 e!4544471)))

(declare-fun b!7645963 () Bool)

(declare-fun c!1408332 () Bool)

(assert (=> b!7645963 (= c!1408332 (is-ElementMatch!20466 (regOne!41445 r!14126)))))

(declare-fun e!4544470 () Bool)

(declare-fun e!4544468 () Bool)

(assert (=> b!7645963 (= e!4544470 e!4544468)))

(declare-fun b!7645964 () Bool)

(assert (=> b!7645964 (= e!4544468 (= s!9605 (Cons!73193 (c!1408285 (regOne!41445 r!14126)) Nil!73193)))))

(declare-fun b!7645960 () Bool)

(declare-fun e!4544473 () Bool)

(assert (=> b!7645960 (= e!4544473 call!701927)))

(declare-fun d!2325541 () Bool)

(declare-fun c!1408330 () Bool)

(assert (=> d!2325541 (= c!1408330 (is-EmptyExpr!20466 (regOne!41445 r!14126)))))

(assert (=> d!2325541 (= (matchRSpec!4575 (regOne!41445 r!14126) s!9605) e!4544473)))

(declare-fun bm!701922 () Bool)

(assert (=> bm!701922 (= call!701927 (isEmpty!41818 s!9605))))

(declare-fun b!7645965 () Bool)

(assert (=> b!7645965 (= e!4544473 e!4544470)))

(declare-fun res!3062526 () Bool)

(assert (=> b!7645965 (= res!3062526 (not (is-EmptyLang!20466 (regOne!41445 r!14126))))))

(assert (=> b!7645965 (=> (not res!3062526) (not e!4544470))))

(assert (=> b!7645966 (= e!4544469 call!701926)))

(declare-fun b!7645967 () Bool)

(declare-fun c!1408331 () Bool)

(assert (=> b!7645967 (= c!1408331 (is-Union!20466 (regOne!41445 r!14126)))))

(assert (=> b!7645967 (= e!4544468 e!4544474)))

(assert (= (and d!2325541 c!1408330) b!7645960))

(assert (= (and d!2325541 (not c!1408330)) b!7645965))

(assert (= (and b!7645965 res!3062526) b!7645963))

(assert (= (and b!7645963 c!1408332) b!7645964))

(assert (= (and b!7645963 (not c!1408332)) b!7645967))

(assert (= (and b!7645967 c!1408331) b!7645962))

(assert (= (and b!7645967 (not c!1408331)) b!7645958))

(assert (= (and b!7645962 (not res!3062528)) b!7645959))

(assert (= (and b!7645958 c!1408333) b!7645957))

(assert (= (and b!7645958 (not c!1408333)) b!7645966))

(assert (= (and b!7645957 (not res!3062527)) b!7645961))

(assert (= (or b!7645961 b!7645966) bm!701921))

(assert (= (or b!7645960 b!7645957) bm!701922))

(declare-fun m!8164598 () Bool)

(assert (=> b!7645959 m!8164598))

(declare-fun m!8164600 () Bool)

(assert (=> bm!701921 m!8164600))

(declare-fun m!8164602 () Bool)

(assert (=> b!7645962 m!8164602))

(assert (=> bm!701922 m!8164560))

(assert (=> b!7645748 d!2325541))

(declare-fun b!7645990 () Bool)

(declare-fun res!3062540 () Bool)

(declare-fun e!4544495 () Bool)

(assert (=> b!7645990 (=> res!3062540 e!4544495)))

(assert (=> b!7645990 (= res!3062540 (not (is-Concat!29311 (regTwo!41445 r!14126))))))

(declare-fun e!4544494 () Bool)

(assert (=> b!7645990 (= e!4544494 e!4544495)))

(declare-fun b!7645991 () Bool)

(declare-fun e!4544491 () Bool)

(declare-fun call!701936 () Bool)

(assert (=> b!7645991 (= e!4544491 call!701936)))

(declare-fun b!7645992 () Bool)

(declare-fun e!4544489 () Bool)

(declare-fun call!701935 () Bool)

(assert (=> b!7645992 (= e!4544489 call!701935)))

(declare-fun b!7645993 () Bool)

(declare-fun e!4544490 () Bool)

(assert (=> b!7645993 (= e!4544490 call!701935)))

(declare-fun b!7645994 () Bool)

(declare-fun e!4544492 () Bool)

(assert (=> b!7645994 (= e!4544492 e!4544494)))

(declare-fun c!1408339 () Bool)

(assert (=> b!7645994 (= c!1408339 (is-Union!20466 (regTwo!41445 r!14126)))))

(declare-fun d!2325549 () Bool)

(declare-fun res!3062539 () Bool)

(declare-fun e!4544493 () Bool)

(assert (=> d!2325549 (=> res!3062539 e!4544493)))

(assert (=> d!2325549 (= res!3062539 (is-ElementMatch!20466 (regTwo!41445 r!14126)))))

(assert (=> d!2325549 (= (validRegex!10884 (regTwo!41445 r!14126)) e!4544493)))

(declare-fun bm!701929 () Bool)

(declare-fun call!701934 () Bool)

(assert (=> bm!701929 (= call!701934 (validRegex!10884 (ite c!1408339 (regOne!41445 (regTwo!41445 r!14126)) (regOne!41444 (regTwo!41445 r!14126)))))))

(declare-fun b!7645995 () Bool)

(assert (=> b!7645995 (= e!4544492 e!4544491)))

(declare-fun res!3062542 () Bool)

(assert (=> b!7645995 (= res!3062542 (not (nullable!8967 (reg!20795 (regTwo!41445 r!14126)))))))

(assert (=> b!7645995 (=> (not res!3062542) (not e!4544491))))

(declare-fun b!7645996 () Bool)

(assert (=> b!7645996 (= e!4544493 e!4544492)))

(declare-fun c!1408338 () Bool)

(assert (=> b!7645996 (= c!1408338 (is-Star!20466 (regTwo!41445 r!14126)))))

(declare-fun bm!701930 () Bool)

(assert (=> bm!701930 (= call!701936 (validRegex!10884 (ite c!1408338 (reg!20795 (regTwo!41445 r!14126)) (ite c!1408339 (regTwo!41445 (regTwo!41445 r!14126)) (regTwo!41444 (regTwo!41445 r!14126))))))))

(declare-fun b!7645997 () Bool)

(declare-fun res!3062541 () Bool)

(assert (=> b!7645997 (=> (not res!3062541) (not e!4544490))))

(assert (=> b!7645997 (= res!3062541 call!701934)))

(assert (=> b!7645997 (= e!4544494 e!4544490)))

(declare-fun b!7645998 () Bool)

(assert (=> b!7645998 (= e!4544495 e!4544489)))

(declare-fun res!3062543 () Bool)

(assert (=> b!7645998 (=> (not res!3062543) (not e!4544489))))

(assert (=> b!7645998 (= res!3062543 call!701934)))

(declare-fun bm!701931 () Bool)

(assert (=> bm!701931 (= call!701935 call!701936)))

(assert (= (and d!2325549 (not res!3062539)) b!7645996))

(assert (= (and b!7645996 c!1408338) b!7645995))

(assert (= (and b!7645996 (not c!1408338)) b!7645994))

(assert (= (and b!7645995 res!3062542) b!7645991))

(assert (= (and b!7645994 c!1408339) b!7645997))

(assert (= (and b!7645994 (not c!1408339)) b!7645990))

(assert (= (and b!7645997 res!3062541) b!7645993))

(assert (= (and b!7645990 (not res!3062540)) b!7645998))

(assert (= (and b!7645998 res!3062543) b!7645992))

(assert (= (or b!7645997 b!7645998) bm!701929))

(assert (= (or b!7645993 b!7645992) bm!701931))

(assert (= (or b!7645991 bm!701931) bm!701930))

(declare-fun m!8164604 () Bool)

(assert (=> bm!701929 m!8164604))

(declare-fun m!8164606 () Bool)

(assert (=> b!7645995 m!8164606))

(declare-fun m!8164608 () Bool)

(assert (=> bm!701930 m!8164608))

(assert (=> b!7645748 d!2325549))

(declare-fun d!2325551 () Bool)

(assert (=> d!2325551 (= (matchR!9967 (regOne!41445 r!14126) s!9605) (matchRSpec!4575 (regOne!41445 r!14126) s!9605))))

(declare-fun lt!2661015 () Unit!167932)

(declare-fun choose!59034 (Regex!20466 List!73317) Unit!167932)

(assert (=> d!2325551 (= lt!2661015 (choose!59034 (regOne!41445 r!14126) s!9605))))

(assert (=> d!2325551 (validRegex!10884 (regOne!41445 r!14126))))

(assert (=> d!2325551 (= (mainMatchTheorem!4555 (regOne!41445 r!14126) s!9605) lt!2661015)))

(declare-fun bs!1944798 () Bool)

(assert (= bs!1944798 d!2325551))

(assert (=> bs!1944798 m!8164534))

(assert (=> bs!1944798 m!8164526))

(declare-fun m!8164610 () Bool)

(assert (=> bs!1944798 m!8164610))

(declare-fun m!8164612 () Bool)

(assert (=> bs!1944798 m!8164612))

(assert (=> b!7645748 d!2325551))

(declare-fun b!7645999 () Bool)

(declare-fun e!4544501 () Bool)

(assert (=> b!7645999 (= e!4544501 (= (head!15737 s!9605) (c!1408285 (regOne!41445 r!14126))))))

(declare-fun b!7646000 () Bool)

(declare-fun res!3062544 () Bool)

(declare-fun e!4544496 () Bool)

(assert (=> b!7646000 (=> res!3062544 e!4544496)))

(assert (=> b!7646000 (= res!3062544 (not (isEmpty!41818 (tail!15277 s!9605))))))

(declare-fun b!7646001 () Bool)

(declare-fun e!4544500 () Bool)

(assert (=> b!7646001 (= e!4544500 e!4544496)))

(declare-fun res!3062549 () Bool)

(assert (=> b!7646001 (=> res!3062549 e!4544496)))

(declare-fun call!701937 () Bool)

(assert (=> b!7646001 (= res!3062549 call!701937)))

(declare-fun d!2325553 () Bool)

(declare-fun e!4544498 () Bool)

(assert (=> d!2325553 e!4544498))

(declare-fun c!1408340 () Bool)

(assert (=> d!2325553 (= c!1408340 (is-EmptyExpr!20466 (regOne!41445 r!14126)))))

(declare-fun lt!2661016 () Bool)

(declare-fun e!4544502 () Bool)

(assert (=> d!2325553 (= lt!2661016 e!4544502)))

(declare-fun c!1408342 () Bool)

(assert (=> d!2325553 (= c!1408342 (isEmpty!41818 s!9605))))

(assert (=> d!2325553 (validRegex!10884 (regOne!41445 r!14126))))

(assert (=> d!2325553 (= (matchR!9967 (regOne!41445 r!14126) s!9605) lt!2661016)))

(declare-fun b!7646002 () Bool)

(declare-fun e!4544497 () Bool)

(assert (=> b!7646002 (= e!4544497 (not lt!2661016))))

(declare-fun b!7646003 () Bool)

(declare-fun res!3062545 () Bool)

(assert (=> b!7646003 (=> (not res!3062545) (not e!4544501))))

(assert (=> b!7646003 (= res!3062545 (not call!701937))))

(declare-fun b!7646004 () Bool)

(declare-fun res!3062551 () Bool)

(assert (=> b!7646004 (=> (not res!3062551) (not e!4544501))))

(assert (=> b!7646004 (= res!3062551 (isEmpty!41818 (tail!15277 s!9605)))))

(declare-fun b!7646005 () Bool)

(declare-fun res!3062550 () Bool)

(declare-fun e!4544499 () Bool)

(assert (=> b!7646005 (=> res!3062550 e!4544499)))

(assert (=> b!7646005 (= res!3062550 (not (is-ElementMatch!20466 (regOne!41445 r!14126))))))

(assert (=> b!7646005 (= e!4544497 e!4544499)))

(declare-fun b!7646006 () Bool)

(assert (=> b!7646006 (= e!4544502 (matchR!9967 (derivativeStep!5937 (regOne!41445 r!14126) (head!15737 s!9605)) (tail!15277 s!9605)))))

(declare-fun b!7646007 () Bool)

(assert (=> b!7646007 (= e!4544498 (= lt!2661016 call!701937))))

(declare-fun b!7646008 () Bool)

(assert (=> b!7646008 (= e!4544496 (not (= (head!15737 s!9605) (c!1408285 (regOne!41445 r!14126)))))))

(declare-fun b!7646009 () Bool)

(assert (=> b!7646009 (= e!4544499 e!4544500)))

(declare-fun res!3062548 () Bool)

(assert (=> b!7646009 (=> (not res!3062548) (not e!4544500))))

(assert (=> b!7646009 (= res!3062548 (not lt!2661016))))

(declare-fun b!7646010 () Bool)

(declare-fun res!3062546 () Bool)

(assert (=> b!7646010 (=> res!3062546 e!4544499)))

(assert (=> b!7646010 (= res!3062546 e!4544501)))

(declare-fun res!3062547 () Bool)

(assert (=> b!7646010 (=> (not res!3062547) (not e!4544501))))

(assert (=> b!7646010 (= res!3062547 lt!2661016)))

(declare-fun b!7646011 () Bool)

(assert (=> b!7646011 (= e!4544502 (nullable!8967 (regOne!41445 r!14126)))))

(declare-fun b!7646012 () Bool)

(assert (=> b!7646012 (= e!4544498 e!4544497)))

(declare-fun c!1408341 () Bool)

(assert (=> b!7646012 (= c!1408341 (is-EmptyLang!20466 (regOne!41445 r!14126)))))

(declare-fun bm!701932 () Bool)

(assert (=> bm!701932 (= call!701937 (isEmpty!41818 s!9605))))

(assert (= (and d!2325553 c!1408342) b!7646011))

(assert (= (and d!2325553 (not c!1408342)) b!7646006))

(assert (= (and d!2325553 c!1408340) b!7646007))

(assert (= (and d!2325553 (not c!1408340)) b!7646012))

(assert (= (and b!7646012 c!1408341) b!7646002))

(assert (= (and b!7646012 (not c!1408341)) b!7646005))

(assert (= (and b!7646005 (not res!3062550)) b!7646010))

(assert (= (and b!7646010 res!3062547) b!7646003))

(assert (= (and b!7646003 res!3062545) b!7646004))

(assert (= (and b!7646004 res!3062551) b!7645999))

(assert (= (and b!7646010 (not res!3062546)) b!7646009))

(assert (= (and b!7646009 res!3062548) b!7646001))

(assert (= (and b!7646001 (not res!3062549)) b!7646000))

(assert (= (and b!7646000 (not res!3062544)) b!7646008))

(assert (= (or b!7646007 b!7646001 b!7646003) bm!701932))

(assert (=> b!7646008 m!8164558))

(assert (=> d!2325553 m!8164560))

(assert (=> d!2325553 m!8164612))

(assert (=> b!7646006 m!8164558))

(assert (=> b!7646006 m!8164558))

(declare-fun m!8164614 () Bool)

(assert (=> b!7646006 m!8164614))

(assert (=> b!7646006 m!8164564))

(assert (=> b!7646006 m!8164614))

(assert (=> b!7646006 m!8164564))

(declare-fun m!8164616 () Bool)

(assert (=> b!7646006 m!8164616))

(assert (=> b!7646000 m!8164564))

(assert (=> b!7646000 m!8164564))

(assert (=> b!7646000 m!8164568))

(assert (=> b!7645999 m!8164558))

(assert (=> b!7646004 m!8164564))

(assert (=> b!7646004 m!8164564))

(assert (=> b!7646004 m!8164568))

(assert (=> bm!701932 m!8164560))

(declare-fun m!8164618 () Bool)

(assert (=> b!7646011 m!8164618))

(assert (=> b!7645748 d!2325553))

(declare-fun d!2325555 () Bool)

(assert (=> d!2325555 (matchR!9967 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126)) s!9605)))

(declare-fun lt!2661019 () Unit!167932)

(declare-fun choose!59035 (Regex!20466 Regex!20466 List!73317) Unit!167932)

(assert (=> d!2325555 (= lt!2661019 (choose!59035 (regTwo!41445 r!14126) (regOne!41445 r!14126) s!9605))))

(declare-fun e!4544505 () Bool)

(assert (=> d!2325555 e!4544505))

(declare-fun res!3062554 () Bool)

(assert (=> d!2325555 (=> (not res!3062554) (not e!4544505))))

(assert (=> d!2325555 (= res!3062554 (validRegex!10884 (regTwo!41445 r!14126)))))

(assert (=> d!2325555 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!113 (regTwo!41445 r!14126) (regOne!41445 r!14126) s!9605) lt!2661019)))

(declare-fun b!7646015 () Bool)

(assert (=> b!7646015 (= e!4544505 (validRegex!10884 (regOne!41445 r!14126)))))

(assert (= (and d!2325555 res!3062554) b!7646015))

(assert (=> d!2325555 m!8164522))

(declare-fun m!8164620 () Bool)

(assert (=> d!2325555 m!8164620))

(assert (=> d!2325555 m!8164528))

(assert (=> b!7646015 m!8164612))

(assert (=> b!7645758 d!2325555))

(declare-fun b!7646016 () Bool)

(declare-fun e!4544511 () Bool)

(assert (=> b!7646016 (= e!4544511 (= (head!15737 s!9605) (c!1408285 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126)))))))

(declare-fun b!7646017 () Bool)

(declare-fun res!3062555 () Bool)

(declare-fun e!4544506 () Bool)

(assert (=> b!7646017 (=> res!3062555 e!4544506)))

(assert (=> b!7646017 (= res!3062555 (not (isEmpty!41818 (tail!15277 s!9605))))))

(declare-fun b!7646018 () Bool)

(declare-fun e!4544510 () Bool)

(assert (=> b!7646018 (= e!4544510 e!4544506)))

(declare-fun res!3062560 () Bool)

(assert (=> b!7646018 (=> res!3062560 e!4544506)))

(declare-fun call!701938 () Bool)

(assert (=> b!7646018 (= res!3062560 call!701938)))

(declare-fun d!2325557 () Bool)

(declare-fun e!4544508 () Bool)

(assert (=> d!2325557 e!4544508))

(declare-fun c!1408343 () Bool)

(assert (=> d!2325557 (= c!1408343 (is-EmptyExpr!20466 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126))))))

(declare-fun lt!2661020 () Bool)

(declare-fun e!4544512 () Bool)

(assert (=> d!2325557 (= lt!2661020 e!4544512)))

(declare-fun c!1408345 () Bool)

(assert (=> d!2325557 (= c!1408345 (isEmpty!41818 s!9605))))

(assert (=> d!2325557 (validRegex!10884 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126)))))

(assert (=> d!2325557 (= (matchR!9967 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126)) s!9605) lt!2661020)))

(declare-fun b!7646019 () Bool)

(declare-fun e!4544507 () Bool)

(assert (=> b!7646019 (= e!4544507 (not lt!2661020))))

(declare-fun b!7646020 () Bool)

(declare-fun res!3062556 () Bool)

(assert (=> b!7646020 (=> (not res!3062556) (not e!4544511))))

(assert (=> b!7646020 (= res!3062556 (not call!701938))))

(declare-fun b!7646021 () Bool)

(declare-fun res!3062562 () Bool)

(assert (=> b!7646021 (=> (not res!3062562) (not e!4544511))))

(assert (=> b!7646021 (= res!3062562 (isEmpty!41818 (tail!15277 s!9605)))))

(declare-fun b!7646022 () Bool)

(declare-fun res!3062561 () Bool)

(declare-fun e!4544509 () Bool)

(assert (=> b!7646022 (=> res!3062561 e!4544509)))

(assert (=> b!7646022 (= res!3062561 (not (is-ElementMatch!20466 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126)))))))

(assert (=> b!7646022 (= e!4544507 e!4544509)))

(declare-fun b!7646023 () Bool)

(assert (=> b!7646023 (= e!4544512 (matchR!9967 (derivativeStep!5937 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126)) (head!15737 s!9605)) (tail!15277 s!9605)))))

(declare-fun b!7646024 () Bool)

(assert (=> b!7646024 (= e!4544508 (= lt!2661020 call!701938))))

(declare-fun b!7646025 () Bool)

(assert (=> b!7646025 (= e!4544506 (not (= (head!15737 s!9605) (c!1408285 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126))))))))

(declare-fun b!7646026 () Bool)

(assert (=> b!7646026 (= e!4544509 e!4544510)))

(declare-fun res!3062559 () Bool)

(assert (=> b!7646026 (=> (not res!3062559) (not e!4544510))))

(assert (=> b!7646026 (= res!3062559 (not lt!2661020))))

(declare-fun b!7646027 () Bool)

(declare-fun res!3062557 () Bool)

(assert (=> b!7646027 (=> res!3062557 e!4544509)))

(assert (=> b!7646027 (= res!3062557 e!4544511)))

(declare-fun res!3062558 () Bool)

(assert (=> b!7646027 (=> (not res!3062558) (not e!4544511))))

(assert (=> b!7646027 (= res!3062558 lt!2661020)))

(declare-fun b!7646028 () Bool)

(assert (=> b!7646028 (= e!4544512 (nullable!8967 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126))))))

(declare-fun b!7646029 () Bool)

(assert (=> b!7646029 (= e!4544508 e!4544507)))

(declare-fun c!1408344 () Bool)

(assert (=> b!7646029 (= c!1408344 (is-EmptyLang!20466 (Union!20466 (regTwo!41445 r!14126) (regOne!41445 r!14126))))))

(declare-fun bm!701933 () Bool)

(assert (=> bm!701933 (= call!701938 (isEmpty!41818 s!9605))))

(assert (= (and d!2325557 c!1408345) b!7646028))

(assert (= (and d!2325557 (not c!1408345)) b!7646023))

(assert (= (and d!2325557 c!1408343) b!7646024))

(assert (= (and d!2325557 (not c!1408343)) b!7646029))

(assert (= (and b!7646029 c!1408344) b!7646019))

(assert (= (and b!7646029 (not c!1408344)) b!7646022))

(assert (= (and b!7646022 (not res!3062561)) b!7646027))

(assert (= (and b!7646027 res!3062558) b!7646020))

(assert (= (and b!7646020 res!3062556) b!7646021))

(assert (= (and b!7646021 res!3062562) b!7646016))

(assert (= (and b!7646027 (not res!3062557)) b!7646026))

(assert (= (and b!7646026 res!3062559) b!7646018))

(assert (= (and b!7646018 (not res!3062560)) b!7646017))

(assert (= (and b!7646017 (not res!3062555)) b!7646025))

(assert (= (or b!7646024 b!7646018 b!7646020) bm!701933))

(assert (=> b!7646025 m!8164558))

(assert (=> d!2325557 m!8164560))

(declare-fun m!8164622 () Bool)

(assert (=> d!2325557 m!8164622))

(assert (=> b!7646023 m!8164558))

(assert (=> b!7646023 m!8164558))

(declare-fun m!8164624 () Bool)

(assert (=> b!7646023 m!8164624))

(assert (=> b!7646023 m!8164564))

(assert (=> b!7646023 m!8164624))

(assert (=> b!7646023 m!8164564))

(declare-fun m!8164626 () Bool)

(assert (=> b!7646023 m!8164626))

(assert (=> b!7646017 m!8164564))

(assert (=> b!7646017 m!8164564))

(assert (=> b!7646017 m!8164568))

(assert (=> b!7646016 m!8164558))

(assert (=> b!7646021 m!8164564))

(assert (=> b!7646021 m!8164564))

(assert (=> b!7646021 m!8164568))

(assert (=> bm!701933 m!8164560))

(declare-fun m!8164628 () Bool)

(assert (=> b!7646028 m!8164628))

(assert (=> b!7645758 d!2325557))

(declare-fun d!2325559 () Bool)

(assert (=> d!2325559 (matchR!9967 (Union!20466 (regOne!41445 r!14126) (regTwo!41445 r!14126)) s!9605)))

(declare-fun lt!2661023 () Unit!167932)

(declare-fun choose!59036 (Regex!20466 Regex!20466 List!73317) Unit!167932)

(assert (=> d!2325559 (= lt!2661023 (choose!59036 (regTwo!41445 r!14126) (regOne!41445 r!14126) s!9605))))

(declare-fun e!4544515 () Bool)

(assert (=> d!2325559 e!4544515))

(declare-fun res!3062565 () Bool)

(assert (=> d!2325559 (=> (not res!3062565) (not e!4544515))))

(assert (=> d!2325559 (= res!3062565 (validRegex!10884 (regTwo!41445 r!14126)))))

(assert (=> d!2325559 (= (lemmaReversedUnionAcceptsSameString!41 (regTwo!41445 r!14126) (regOne!41445 r!14126) s!9605) lt!2661023)))

(declare-fun b!7646032 () Bool)

(assert (=> b!7646032 (= e!4544515 (validRegex!10884 (regOne!41445 r!14126)))))

(assert (= (and d!2325559 res!3062565) b!7646032))

(declare-fun m!8164630 () Bool)

(assert (=> d!2325559 m!8164630))

(declare-fun m!8164632 () Bool)

(assert (=> d!2325559 m!8164632))

(assert (=> d!2325559 m!8164528))

(assert (=> b!7646032 m!8164612))

(assert (=> b!7645758 d!2325559))

(declare-fun b!7646033 () Bool)

(declare-fun e!4544521 () Bool)

(assert (=> b!7646033 (= e!4544521 (= (head!15737 s!9605) (c!1408285 r!14126)))))

(declare-fun b!7646034 () Bool)

(declare-fun res!3062566 () Bool)

(declare-fun e!4544516 () Bool)

(assert (=> b!7646034 (=> res!3062566 e!4544516)))

(assert (=> b!7646034 (= res!3062566 (not (isEmpty!41818 (tail!15277 s!9605))))))

(declare-fun b!7646035 () Bool)

(declare-fun e!4544520 () Bool)

(assert (=> b!7646035 (= e!4544520 e!4544516)))

(declare-fun res!3062571 () Bool)

(assert (=> b!7646035 (=> res!3062571 e!4544516)))

(declare-fun call!701939 () Bool)

(assert (=> b!7646035 (= res!3062571 call!701939)))

(declare-fun d!2325561 () Bool)

(declare-fun e!4544518 () Bool)

(assert (=> d!2325561 e!4544518))

(declare-fun c!1408346 () Bool)

(assert (=> d!2325561 (= c!1408346 (is-EmptyExpr!20466 r!14126))))

(declare-fun lt!2661024 () Bool)

(declare-fun e!4544522 () Bool)

(assert (=> d!2325561 (= lt!2661024 e!4544522)))

(declare-fun c!1408348 () Bool)

(assert (=> d!2325561 (= c!1408348 (isEmpty!41818 s!9605))))

(assert (=> d!2325561 (validRegex!10884 r!14126)))

(assert (=> d!2325561 (= (matchR!9967 r!14126 s!9605) lt!2661024)))

(declare-fun b!7646036 () Bool)

(declare-fun e!4544517 () Bool)

(assert (=> b!7646036 (= e!4544517 (not lt!2661024))))

(declare-fun b!7646037 () Bool)

(declare-fun res!3062567 () Bool)

(assert (=> b!7646037 (=> (not res!3062567) (not e!4544521))))

(assert (=> b!7646037 (= res!3062567 (not call!701939))))

(declare-fun b!7646038 () Bool)

(declare-fun res!3062573 () Bool)

(assert (=> b!7646038 (=> (not res!3062573) (not e!4544521))))

(assert (=> b!7646038 (= res!3062573 (isEmpty!41818 (tail!15277 s!9605)))))

(declare-fun b!7646039 () Bool)

(declare-fun res!3062572 () Bool)

(declare-fun e!4544519 () Bool)

(assert (=> b!7646039 (=> res!3062572 e!4544519)))

(assert (=> b!7646039 (= res!3062572 (not (is-ElementMatch!20466 r!14126)))))

(assert (=> b!7646039 (= e!4544517 e!4544519)))

(declare-fun b!7646040 () Bool)

(assert (=> b!7646040 (= e!4544522 (matchR!9967 (derivativeStep!5937 r!14126 (head!15737 s!9605)) (tail!15277 s!9605)))))

(declare-fun b!7646041 () Bool)

(assert (=> b!7646041 (= e!4544518 (= lt!2661024 call!701939))))

(declare-fun b!7646042 () Bool)

(assert (=> b!7646042 (= e!4544516 (not (= (head!15737 s!9605) (c!1408285 r!14126))))))

(declare-fun b!7646043 () Bool)

(assert (=> b!7646043 (= e!4544519 e!4544520)))

(declare-fun res!3062570 () Bool)

(assert (=> b!7646043 (=> (not res!3062570) (not e!4544520))))

(assert (=> b!7646043 (= res!3062570 (not lt!2661024))))

(declare-fun b!7646044 () Bool)

(declare-fun res!3062568 () Bool)

(assert (=> b!7646044 (=> res!3062568 e!4544519)))

(assert (=> b!7646044 (= res!3062568 e!4544521)))

(declare-fun res!3062569 () Bool)

(assert (=> b!7646044 (=> (not res!3062569) (not e!4544521))))

(assert (=> b!7646044 (= res!3062569 lt!2661024)))

(declare-fun b!7646045 () Bool)

(assert (=> b!7646045 (= e!4544522 (nullable!8967 r!14126))))

(declare-fun b!7646046 () Bool)

(assert (=> b!7646046 (= e!4544518 e!4544517)))

(declare-fun c!1408347 () Bool)

(assert (=> b!7646046 (= c!1408347 (is-EmptyLang!20466 r!14126))))

(declare-fun bm!701934 () Bool)

(assert (=> bm!701934 (= call!701939 (isEmpty!41818 s!9605))))

(assert (= (and d!2325561 c!1408348) b!7646045))

(assert (= (and d!2325561 (not c!1408348)) b!7646040))

(assert (= (and d!2325561 c!1408346) b!7646041))

(assert (= (and d!2325561 (not c!1408346)) b!7646046))

(assert (= (and b!7646046 c!1408347) b!7646036))

(assert (= (and b!7646046 (not c!1408347)) b!7646039))

(assert (= (and b!7646039 (not res!3062572)) b!7646044))

(assert (= (and b!7646044 res!3062569) b!7646037))

(assert (= (and b!7646037 res!3062567) b!7646038))

(assert (= (and b!7646038 res!3062573) b!7646033))

(assert (= (and b!7646044 (not res!3062568)) b!7646043))

(assert (= (and b!7646043 res!3062570) b!7646035))

(assert (= (and b!7646035 (not res!3062571)) b!7646034))

(assert (= (and b!7646034 (not res!3062566)) b!7646042))

(assert (= (or b!7646041 b!7646035 b!7646037) bm!701934))

(assert (=> b!7646042 m!8164558))

(assert (=> d!2325561 m!8164560))

(assert (=> d!2325561 m!8164518))

(assert (=> b!7646040 m!8164558))

(assert (=> b!7646040 m!8164558))

(declare-fun m!8164634 () Bool)

(assert (=> b!7646040 m!8164634))

(assert (=> b!7646040 m!8164564))

(assert (=> b!7646040 m!8164634))

(assert (=> b!7646040 m!8164564))

(declare-fun m!8164636 () Bool)

(assert (=> b!7646040 m!8164636))

(assert (=> b!7646034 m!8164564))

(assert (=> b!7646034 m!8164564))

(assert (=> b!7646034 m!8164568))

(assert (=> b!7646033 m!8164558))

(assert (=> b!7646038 m!8164564))

(assert (=> b!7646038 m!8164564))

(assert (=> b!7646038 m!8164568))

(assert (=> bm!701934 m!8164560))

(declare-fun m!8164638 () Bool)

(assert (=> b!7646045 m!8164638))

(assert (=> b!7645758 d!2325561))

(declare-fun b!7646047 () Bool)

(declare-fun res!3062575 () Bool)

(declare-fun e!4544529 () Bool)

(assert (=> b!7646047 (=> res!3062575 e!4544529)))

(assert (=> b!7646047 (= res!3062575 (not (is-Concat!29311 r!14126)))))

(declare-fun e!4544528 () Bool)

(assert (=> b!7646047 (= e!4544528 e!4544529)))

(declare-fun b!7646048 () Bool)

(declare-fun e!4544525 () Bool)

(declare-fun call!701942 () Bool)

(assert (=> b!7646048 (= e!4544525 call!701942)))

(declare-fun b!7646049 () Bool)

(declare-fun e!4544523 () Bool)

(declare-fun call!701941 () Bool)

(assert (=> b!7646049 (= e!4544523 call!701941)))

(declare-fun b!7646050 () Bool)

(declare-fun e!4544524 () Bool)

(assert (=> b!7646050 (= e!4544524 call!701941)))

(declare-fun b!7646051 () Bool)

(declare-fun e!4544526 () Bool)

(assert (=> b!7646051 (= e!4544526 e!4544528)))

(declare-fun c!1408350 () Bool)

(assert (=> b!7646051 (= c!1408350 (is-Union!20466 r!14126))))

(declare-fun d!2325563 () Bool)

(declare-fun res!3062574 () Bool)

(declare-fun e!4544527 () Bool)

(assert (=> d!2325563 (=> res!3062574 e!4544527)))

(assert (=> d!2325563 (= res!3062574 (is-ElementMatch!20466 r!14126))))

(assert (=> d!2325563 (= (validRegex!10884 r!14126) e!4544527)))

(declare-fun bm!701935 () Bool)

(declare-fun call!701940 () Bool)

(assert (=> bm!701935 (= call!701940 (validRegex!10884 (ite c!1408350 (regOne!41445 r!14126) (regOne!41444 r!14126))))))

(declare-fun b!7646052 () Bool)

(assert (=> b!7646052 (= e!4544526 e!4544525)))

(declare-fun res!3062577 () Bool)

(assert (=> b!7646052 (= res!3062577 (not (nullable!8967 (reg!20795 r!14126))))))

(assert (=> b!7646052 (=> (not res!3062577) (not e!4544525))))

(declare-fun b!7646053 () Bool)

(assert (=> b!7646053 (= e!4544527 e!4544526)))

(declare-fun c!1408349 () Bool)

(assert (=> b!7646053 (= c!1408349 (is-Star!20466 r!14126))))

(declare-fun bm!701936 () Bool)

(assert (=> bm!701936 (= call!701942 (validRegex!10884 (ite c!1408349 (reg!20795 r!14126) (ite c!1408350 (regTwo!41445 r!14126) (regTwo!41444 r!14126)))))))

(declare-fun b!7646054 () Bool)

(declare-fun res!3062576 () Bool)

(assert (=> b!7646054 (=> (not res!3062576) (not e!4544524))))

(assert (=> b!7646054 (= res!3062576 call!701940)))

(assert (=> b!7646054 (= e!4544528 e!4544524)))

(declare-fun b!7646055 () Bool)

(assert (=> b!7646055 (= e!4544529 e!4544523)))

(declare-fun res!3062578 () Bool)

(assert (=> b!7646055 (=> (not res!3062578) (not e!4544523))))

(assert (=> b!7646055 (= res!3062578 call!701940)))

(declare-fun bm!701937 () Bool)

(assert (=> bm!701937 (= call!701941 call!701942)))

(assert (= (and d!2325563 (not res!3062574)) b!7646053))

(assert (= (and b!7646053 c!1408349) b!7646052))

(assert (= (and b!7646053 (not c!1408349)) b!7646051))

(assert (= (and b!7646052 res!3062577) b!7646048))

(assert (= (and b!7646051 c!1408350) b!7646054))

(assert (= (and b!7646051 (not c!1408350)) b!7646047))

(assert (= (and b!7646054 res!3062576) b!7646050))

(assert (= (and b!7646047 (not res!3062575)) b!7646055))

(assert (= (and b!7646055 res!3062578) b!7646049))

(assert (= (or b!7646054 b!7646055) bm!701935))

(assert (= (or b!7646050 b!7646049) bm!701937))

(assert (= (or b!7646048 bm!701937) bm!701936))

(declare-fun m!8164640 () Bool)

(assert (=> bm!701935 m!8164640))

(declare-fun m!8164642 () Bool)

(assert (=> b!7646052 m!8164642))

(declare-fun m!8164644 () Bool)

(assert (=> bm!701936 m!8164644))

(assert (=> start!735782 d!2325563))

(declare-fun d!2325565 () Bool)

(assert (=> d!2325565 (matchR!9967 (Union!20466 (regOne!41445 r!14126) (regTwo!41445 r!14126)) s!9605)))

(declare-fun lt!2661025 () Unit!167932)

(assert (=> d!2325565 (= lt!2661025 (choose!59035 (regOne!41445 r!14126) (regTwo!41445 r!14126) s!9605))))

(declare-fun e!4544530 () Bool)

(assert (=> d!2325565 e!4544530))

(declare-fun res!3062579 () Bool)

(assert (=> d!2325565 (=> (not res!3062579) (not e!4544530))))

(assert (=> d!2325565 (= res!3062579 (validRegex!10884 (regOne!41445 r!14126)))))

(assert (=> d!2325565 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!113 (regOne!41445 r!14126) (regTwo!41445 r!14126) s!9605) lt!2661025)))

(declare-fun b!7646056 () Bool)

(assert (=> b!7646056 (= e!4544530 (validRegex!10884 (regTwo!41445 r!14126)))))

(assert (= (and d!2325565 res!3062579) b!7646056))

(assert (=> d!2325565 m!8164630))

(declare-fun m!8164646 () Bool)

(assert (=> d!2325565 m!8164646))

(assert (=> d!2325565 m!8164612))

(assert (=> b!7646056 m!8164528))

(assert (=> b!7645746 d!2325565))

(assert (=> b!7645746 d!2325561))

(assert (=> b!7645757 d!2325561))

(declare-fun e!4544533 () Bool)

(assert (=> b!7645759 (= tp!2231799 e!4544533)))

(declare-fun b!7646069 () Bool)

(declare-fun tp!2231832 () Bool)

(assert (=> b!7646069 (= e!4544533 tp!2231832)))

(declare-fun b!7646070 () Bool)

(declare-fun tp!2231834 () Bool)

(declare-fun tp!2231833 () Bool)

(assert (=> b!7646070 (= e!4544533 (and tp!2231834 tp!2231833))))

(declare-fun b!7646068 () Bool)

(declare-fun tp!2231835 () Bool)

(declare-fun tp!2231836 () Bool)

(assert (=> b!7646068 (= e!4544533 (and tp!2231835 tp!2231836))))

(declare-fun b!7646067 () Bool)

(assert (=> b!7646067 (= e!4544533 tp_is_empty!51287)))

(assert (= (and b!7645759 (is-ElementMatch!20466 (reg!20795 r!14126))) b!7646067))

(assert (= (and b!7645759 (is-Concat!29311 (reg!20795 r!14126))) b!7646068))

(assert (= (and b!7645759 (is-Star!20466 (reg!20795 r!14126))) b!7646069))

(assert (= (and b!7645759 (is-Union!20466 (reg!20795 r!14126))) b!7646070))

(declare-fun e!4544534 () Bool)

(assert (=> b!7645754 (= tp!2231801 e!4544534)))

(declare-fun b!7646073 () Bool)

(declare-fun tp!2231837 () Bool)

(assert (=> b!7646073 (= e!4544534 tp!2231837)))

(declare-fun b!7646074 () Bool)

(declare-fun tp!2231839 () Bool)

(declare-fun tp!2231838 () Bool)

(assert (=> b!7646074 (= e!4544534 (and tp!2231839 tp!2231838))))

(declare-fun b!7646072 () Bool)

(declare-fun tp!2231840 () Bool)

(declare-fun tp!2231841 () Bool)

(assert (=> b!7646072 (= e!4544534 (and tp!2231840 tp!2231841))))

(declare-fun b!7646071 () Bool)

(assert (=> b!7646071 (= e!4544534 tp_is_empty!51287)))

(assert (= (and b!7645754 (is-ElementMatch!20466 (regOne!41444 r!14126))) b!7646071))

(assert (= (and b!7645754 (is-Concat!29311 (regOne!41444 r!14126))) b!7646072))

(assert (= (and b!7645754 (is-Star!20466 (regOne!41444 r!14126))) b!7646073))

(assert (= (and b!7645754 (is-Union!20466 (regOne!41444 r!14126))) b!7646074))

(declare-fun e!4544535 () Bool)

(assert (=> b!7645754 (= tp!2231800 e!4544535)))

(declare-fun b!7646077 () Bool)

(declare-fun tp!2231842 () Bool)

(assert (=> b!7646077 (= e!4544535 tp!2231842)))

(declare-fun b!7646078 () Bool)

(declare-fun tp!2231844 () Bool)

(declare-fun tp!2231843 () Bool)

(assert (=> b!7646078 (= e!4544535 (and tp!2231844 tp!2231843))))

(declare-fun b!7646076 () Bool)

(declare-fun tp!2231845 () Bool)

(declare-fun tp!2231846 () Bool)

(assert (=> b!7646076 (= e!4544535 (and tp!2231845 tp!2231846))))

(declare-fun b!7646075 () Bool)

(assert (=> b!7646075 (= e!4544535 tp_is_empty!51287)))

(assert (= (and b!7645754 (is-ElementMatch!20466 (regTwo!41444 r!14126))) b!7646075))

(assert (= (and b!7645754 (is-Concat!29311 (regTwo!41444 r!14126))) b!7646076))

(assert (= (and b!7645754 (is-Star!20466 (regTwo!41444 r!14126))) b!7646077))

(assert (= (and b!7645754 (is-Union!20466 (regTwo!41444 r!14126))) b!7646078))

(declare-fun b!7646083 () Bool)

(declare-fun e!4544538 () Bool)

(declare-fun tp!2231849 () Bool)

(assert (=> b!7646083 (= e!4544538 (and tp_is_empty!51287 tp!2231849))))

(assert (=> b!7645747 (= tp!2231798 e!4544538)))

(assert (= (and b!7645747 (is-Cons!73193 (t!388052 s!9605))) b!7646083))

(declare-fun e!4544539 () Bool)

(assert (=> b!7645756 (= tp!2231802 e!4544539)))

(declare-fun b!7646086 () Bool)

(declare-fun tp!2231850 () Bool)

(assert (=> b!7646086 (= e!4544539 tp!2231850)))

(declare-fun b!7646087 () Bool)

(declare-fun tp!2231852 () Bool)

(declare-fun tp!2231851 () Bool)

(assert (=> b!7646087 (= e!4544539 (and tp!2231852 tp!2231851))))

(declare-fun b!7646085 () Bool)

(declare-fun tp!2231853 () Bool)

(declare-fun tp!2231854 () Bool)

(assert (=> b!7646085 (= e!4544539 (and tp!2231853 tp!2231854))))

(declare-fun b!7646084 () Bool)

(assert (=> b!7646084 (= e!4544539 tp_is_empty!51287)))

(assert (= (and b!7645756 (is-ElementMatch!20466 (regOne!41445 r!14126))) b!7646084))

(assert (= (and b!7645756 (is-Concat!29311 (regOne!41445 r!14126))) b!7646085))

(assert (= (and b!7645756 (is-Star!20466 (regOne!41445 r!14126))) b!7646086))

(assert (= (and b!7645756 (is-Union!20466 (regOne!41445 r!14126))) b!7646087))

(declare-fun e!4544540 () Bool)

(assert (=> b!7645756 (= tp!2231803 e!4544540)))

(declare-fun b!7646090 () Bool)

(declare-fun tp!2231855 () Bool)

(assert (=> b!7646090 (= e!4544540 tp!2231855)))

(declare-fun b!7646091 () Bool)

(declare-fun tp!2231857 () Bool)

(declare-fun tp!2231856 () Bool)

(assert (=> b!7646091 (= e!4544540 (and tp!2231857 tp!2231856))))

(declare-fun b!7646089 () Bool)

(declare-fun tp!2231858 () Bool)

(declare-fun tp!2231859 () Bool)

(assert (=> b!7646089 (= e!4544540 (and tp!2231858 tp!2231859))))

(declare-fun b!7646088 () Bool)

(assert (=> b!7646088 (= e!4544540 tp_is_empty!51287)))

(assert (= (and b!7645756 (is-ElementMatch!20466 (regTwo!41445 r!14126))) b!7646088))

(assert (= (and b!7645756 (is-Concat!29311 (regTwo!41445 r!14126))) b!7646089))

(assert (= (and b!7645756 (is-Star!20466 (regTwo!41445 r!14126))) b!7646090))

(assert (= (and b!7645756 (is-Union!20466 (regTwo!41445 r!14126))) b!7646091))

(push 1)

(assert (not b!7646087))

(assert (not b!7646086))

(assert (not b!7646004))

(assert (not b!7645844))

(assert (not b!7646006))

(assert (not bm!701922))

(assert (not b!7645999))

(assert (not d!2325537))

(assert (not b!7645832))

(assert (not b!7646038))

(assert (not d!2325551))

(assert (not b!7646011))

(assert (not d!2325557))

(assert (not b!7646015))

(assert (not b!7646033))

(assert (not d!2325561))

(assert (not b!7646068))

(assert (not b!7646083))

(assert (not b!7646008))

(assert (not b!7646021))

(assert (not bm!701930))

(assert (not d!2325559))

(assert (not b!7646034))

(assert (not b!7645833))

(assert (not b!7646040))

(assert (not bm!701936))

(assert (not bm!701934))

(assert tp_is_empty!51287)

(assert (not b!7646017))

(assert (not b!7646028))

(assert (not b!7646074))

(assert (not b!7646025))

(assert (not b!7645962))

(assert (not b!7646076))

(assert (not bm!701935))

(assert (not b!7645841))

(assert (not b!7646070))

(assert (not b!7645839))

(assert (not b!7646073))

(assert (not b!7646016))

(assert (not b!7646091))

(assert (not d!2325553))

(assert (not b!7646032))

(assert (not b!7646069))

(assert (not b!7646000))

(assert (not d!2325565))

(assert (not bm!701921))

(assert (not b!7646089))

(assert (not d!2325555))

(assert (not b!7646023))

(assert (not b!7646085))

(assert (not bm!701929))

(assert (not bm!701932))

(assert (not b!7646045))

(assert (not bm!701933))

(assert (not bm!701912))

(assert (not b!7646077))

(assert (not b!7646078))

(assert (not b!7646072))

(assert (not b!7646052))

(assert (not b!7646090))

(assert (not b!7646042))

(assert (not b!7645995))

(assert (not b!7645959))

(assert (not b!7645837))

(assert (not b!7646056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

