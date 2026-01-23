; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741810 () Bool)

(assert start!741810)

(declare-fun b!7811823 () Bool)

(declare-fun res!3110787 () Bool)

(declare-fun e!4623402 () Bool)

(assert (=> b!7811823 (=> (not res!3110787) (not e!4623402))))

(declare-datatypes ((C!42152 0))(
  ( (C!42153 (val!31516 Int)) )
))
(declare-datatypes ((Regex!20913 0))(
  ( (ElementMatch!20913 (c!1438342 C!42152)) (Concat!29758 (regOne!42338 Regex!20913) (regTwo!42338 Regex!20913)) (EmptyExpr!20913) (Star!20913 (reg!21242 Regex!20913)) (EmptyLang!20913) (Union!20913 (regOne!42339 Regex!20913) (regTwo!42339 Regex!20913)) )
))
(declare-fun lt!2675897 () Regex!20913)

(declare-fun validRegex!11327 (Regex!20913) Bool)

(assert (=> b!7811823 (= res!3110787 (validRegex!11327 lt!2675897))))

(declare-fun b!7811825 () Bool)

(declare-fun e!4623400 () Bool)

(assert (=> b!7811825 (= e!4623400 e!4623402)))

(declare-fun res!3110785 () Bool)

(assert (=> b!7811825 (=> (not res!3110785) (not e!4623402))))

(declare-fun lt!2675898 () Regex!20913)

(assert (=> b!7811825 (= res!3110785 (validRegex!11327 lt!2675898))))

(declare-fun r2!6144 () Regex!20913)

(declare-datatypes ((List!73750 0))(
  ( (Nil!73626) (Cons!73626 (h!80074 C!42152) (t!388485 List!73750)) )
))
(declare-fun s!14225 () List!73750)

(declare-fun derivativeStep!6244 (Regex!20913 C!42152) Regex!20913)

(assert (=> b!7811825 (= lt!2675897 (derivativeStep!6244 r2!6144 (h!80074 s!14225)))))

(declare-fun r1!6206 () Regex!20913)

(assert (=> b!7811825 (= lt!2675898 (derivativeStep!6244 r1!6206 (h!80074 s!14225)))))

(declare-fun b!7811826 () Bool)

(declare-fun e!4623399 () Bool)

(declare-fun tp!2302286 () Bool)

(declare-fun tp!2302278 () Bool)

(assert (=> b!7811826 (= e!4623399 (and tp!2302286 tp!2302278))))

(declare-fun b!7811827 () Bool)

(declare-fun matchR!10371 (Regex!20913 List!73750) Bool)

(assert (=> b!7811827 (= e!4623402 (not (matchR!10371 (Union!20913 lt!2675898 lt!2675897) (t!388485 s!14225))))))

(declare-fun b!7811828 () Bool)

(declare-fun res!3110783 () Bool)

(assert (=> b!7811828 (=> (not res!3110783) (not e!4623400))))

(assert (=> b!7811828 (= res!3110783 (validRegex!11327 r2!6144))))

(declare-fun b!7811829 () Bool)

(declare-fun e!4623401 () Bool)

(declare-fun tp_is_empty!52181 () Bool)

(assert (=> b!7811829 (= e!4623401 tp_is_empty!52181)))

(declare-fun b!7811830 () Bool)

(declare-fun res!3110786 () Bool)

(assert (=> b!7811830 (=> (not res!3110786) (not e!4623400))))

(get-info :version)

(assert (=> b!7811830 (= res!3110786 ((_ is Cons!73626) s!14225))))

(declare-fun b!7811831 () Bool)

(declare-fun tp!2302280 () Bool)

(declare-fun tp!2302284 () Bool)

(assert (=> b!7811831 (= e!4623401 (and tp!2302280 tp!2302284))))

(declare-fun b!7811832 () Bool)

(declare-fun tp!2302277 () Bool)

(declare-fun tp!2302279 () Bool)

(assert (=> b!7811832 (= e!4623401 (and tp!2302277 tp!2302279))))

(declare-fun b!7811833 () Bool)

(assert (=> b!7811833 (= e!4623399 tp_is_empty!52181)))

(declare-fun b!7811834 () Bool)

(declare-fun tp!2302287 () Bool)

(assert (=> b!7811834 (= e!4623401 tp!2302287)))

(declare-fun b!7811835 () Bool)

(declare-fun e!4623403 () Bool)

(declare-fun tp!2302282 () Bool)

(assert (=> b!7811835 (= e!4623403 (and tp_is_empty!52181 tp!2302282))))

(declare-fun b!7811836 () Bool)

(declare-fun tp!2302281 () Bool)

(assert (=> b!7811836 (= e!4623399 tp!2302281)))

(declare-fun b!7811837 () Bool)

(declare-fun tp!2302285 () Bool)

(declare-fun tp!2302283 () Bool)

(assert (=> b!7811837 (= e!4623399 (and tp!2302285 tp!2302283))))

(declare-fun res!3110788 () Bool)

(assert (=> start!741810 (=> (not res!3110788) (not e!4623400))))

(assert (=> start!741810 (= res!3110788 (validRegex!11327 r1!6206))))

(assert (=> start!741810 e!4623400))

(assert (=> start!741810 e!4623401))

(assert (=> start!741810 e!4623399))

(assert (=> start!741810 e!4623403))

(declare-fun b!7811824 () Bool)

(declare-fun res!3110784 () Bool)

(assert (=> b!7811824 (=> (not res!3110784) (not e!4623400))))

(assert (=> b!7811824 (= res!3110784 (matchR!10371 (Union!20913 r1!6206 r2!6144) s!14225))))

(assert (= (and start!741810 res!3110788) b!7811828))

(assert (= (and b!7811828 res!3110783) b!7811824))

(assert (= (and b!7811824 res!3110784) b!7811830))

(assert (= (and b!7811830 res!3110786) b!7811825))

(assert (= (and b!7811825 res!3110785) b!7811823))

(assert (= (and b!7811823 res!3110787) b!7811827))

(assert (= (and start!741810 ((_ is ElementMatch!20913) r1!6206)) b!7811829))

(assert (= (and start!741810 ((_ is Concat!29758) r1!6206)) b!7811831))

(assert (= (and start!741810 ((_ is Star!20913) r1!6206)) b!7811834))

(assert (= (and start!741810 ((_ is Union!20913) r1!6206)) b!7811832))

(assert (= (and start!741810 ((_ is ElementMatch!20913) r2!6144)) b!7811833))

(assert (= (and start!741810 ((_ is Concat!29758) r2!6144)) b!7811826))

(assert (= (and start!741810 ((_ is Star!20913) r2!6144)) b!7811836))

(assert (= (and start!741810 ((_ is Union!20913) r2!6144)) b!7811837))

(assert (= (and start!741810 ((_ is Cons!73626) s!14225)) b!7811835))

(declare-fun m!8242170 () Bool)

(assert (=> b!7811828 m!8242170))

(declare-fun m!8242172 () Bool)

(assert (=> b!7811827 m!8242172))

(declare-fun m!8242174 () Bool)

(assert (=> start!741810 m!8242174))

(declare-fun m!8242176 () Bool)

(assert (=> b!7811825 m!8242176))

(declare-fun m!8242178 () Bool)

(assert (=> b!7811825 m!8242178))

(declare-fun m!8242180 () Bool)

(assert (=> b!7811825 m!8242180))

(declare-fun m!8242182 () Bool)

(assert (=> b!7811824 m!8242182))

(declare-fun m!8242184 () Bool)

(assert (=> b!7811823 m!8242184))

(check-sat (not start!741810) (not b!7811827) (not b!7811823) (not b!7811824) (not b!7811831) (not b!7811834) (not b!7811826) tp_is_empty!52181 (not b!7811832) (not b!7811836) (not b!7811837) (not b!7811835) (not b!7811828) (not b!7811825))
(check-sat)
(get-model)

(declare-fun b!7811884 () Bool)

(declare-fun res!3110819 () Bool)

(declare-fun e!4623433 () Bool)

(assert (=> b!7811884 (=> res!3110819 e!4623433)))

(assert (=> b!7811884 (= res!3110819 (not ((_ is ElementMatch!20913) (Union!20913 lt!2675898 lt!2675897))))))

(declare-fun e!4623436 () Bool)

(assert (=> b!7811884 (= e!4623436 e!4623433)))

(declare-fun e!4623432 () Bool)

(declare-fun b!7811885 () Bool)

(declare-fun head!15973 (List!73750) C!42152)

(declare-fun tail!15514 (List!73750) List!73750)

(assert (=> b!7811885 (= e!4623432 (matchR!10371 (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225))) (tail!15514 (t!388485 s!14225))))))

(declare-fun b!7811886 () Bool)

(declare-fun e!4623434 () Bool)

(declare-fun lt!2675901 () Bool)

(declare-fun call!724603 () Bool)

(assert (=> b!7811886 (= e!4623434 (= lt!2675901 call!724603))))

(declare-fun b!7811887 () Bool)

(declare-fun res!3110821 () Bool)

(assert (=> b!7811887 (=> res!3110821 e!4623433)))

(declare-fun e!4623438 () Bool)

(assert (=> b!7811887 (= res!3110821 e!4623438)))

(declare-fun res!3110818 () Bool)

(assert (=> b!7811887 (=> (not res!3110818) (not e!4623438))))

(assert (=> b!7811887 (= res!3110818 lt!2675901)))

(declare-fun b!7811888 () Bool)

(declare-fun res!3110822 () Bool)

(assert (=> b!7811888 (=> (not res!3110822) (not e!4623438))))

(assert (=> b!7811888 (= res!3110822 (not call!724603))))

(declare-fun b!7811889 () Bool)

(assert (=> b!7811889 (= e!4623438 (= (head!15973 (t!388485 s!14225)) (c!1438342 (Union!20913 lt!2675898 lt!2675897))))))

(declare-fun b!7811890 () Bool)

(declare-fun e!4623437 () Bool)

(assert (=> b!7811890 (= e!4623433 e!4623437)))

(declare-fun res!3110815 () Bool)

(assert (=> b!7811890 (=> (not res!3110815) (not e!4623437))))

(assert (=> b!7811890 (= res!3110815 (not lt!2675901))))

(declare-fun e!4623435 () Bool)

(declare-fun b!7811891 () Bool)

(assert (=> b!7811891 (= e!4623435 (not (= (head!15973 (t!388485 s!14225)) (c!1438342 (Union!20913 lt!2675898 lt!2675897)))))))

(declare-fun b!7811892 () Bool)

(declare-fun res!3110817 () Bool)

(assert (=> b!7811892 (=> res!3110817 e!4623435)))

(declare-fun isEmpty!42272 (List!73750) Bool)

(assert (=> b!7811892 (= res!3110817 (not (isEmpty!42272 (tail!15514 (t!388485 s!14225)))))))

(declare-fun b!7811893 () Bool)

(declare-fun nullable!9284 (Regex!20913) Bool)

(assert (=> b!7811893 (= e!4623432 (nullable!9284 (Union!20913 lt!2675898 lt!2675897)))))

(declare-fun b!7811894 () Bool)

(assert (=> b!7811894 (= e!4623434 e!4623436)))

(declare-fun c!1438353 () Bool)

(assert (=> b!7811894 (= c!1438353 ((_ is EmptyLang!20913) (Union!20913 lt!2675898 lt!2675897)))))

(declare-fun b!7811895 () Bool)

(assert (=> b!7811895 (= e!4623436 (not lt!2675901))))

(declare-fun b!7811896 () Bool)

(assert (=> b!7811896 (= e!4623437 e!4623435)))

(declare-fun res!3110816 () Bool)

(assert (=> b!7811896 (=> res!3110816 e!4623435)))

(assert (=> b!7811896 (= res!3110816 call!724603)))

(declare-fun b!7811897 () Bool)

(declare-fun res!3110820 () Bool)

(assert (=> b!7811897 (=> (not res!3110820) (not e!4623438))))

(assert (=> b!7811897 (= res!3110820 (isEmpty!42272 (tail!15514 (t!388485 s!14225))))))

(declare-fun bm!724596 () Bool)

(assert (=> bm!724596 (= call!724603 (isEmpty!42272 (t!388485 s!14225)))))

(declare-fun d!2348776 () Bool)

(assert (=> d!2348776 e!4623434))

(declare-fun c!1438354 () Bool)

(assert (=> d!2348776 (= c!1438354 ((_ is EmptyExpr!20913) (Union!20913 lt!2675898 lt!2675897)))))

(assert (=> d!2348776 (= lt!2675901 e!4623432)))

(declare-fun c!1438355 () Bool)

(assert (=> d!2348776 (= c!1438355 (isEmpty!42272 (t!388485 s!14225)))))

(assert (=> d!2348776 (validRegex!11327 (Union!20913 lt!2675898 lt!2675897))))

(assert (=> d!2348776 (= (matchR!10371 (Union!20913 lt!2675898 lt!2675897) (t!388485 s!14225)) lt!2675901)))

(assert (= (and d!2348776 c!1438355) b!7811893))

(assert (= (and d!2348776 (not c!1438355)) b!7811885))

(assert (= (and d!2348776 c!1438354) b!7811886))

(assert (= (and d!2348776 (not c!1438354)) b!7811894))

(assert (= (and b!7811894 c!1438353) b!7811895))

(assert (= (and b!7811894 (not c!1438353)) b!7811884))

(assert (= (and b!7811884 (not res!3110819)) b!7811887))

(assert (= (and b!7811887 res!3110818) b!7811888))

(assert (= (and b!7811888 res!3110822) b!7811897))

(assert (= (and b!7811897 res!3110820) b!7811889))

(assert (= (and b!7811887 (not res!3110821)) b!7811890))

(assert (= (and b!7811890 res!3110815) b!7811896))

(assert (= (and b!7811896 (not res!3110816)) b!7811892))

(assert (= (and b!7811892 (not res!3110817)) b!7811891))

(assert (= (or b!7811886 b!7811888 b!7811896) bm!724596))

(declare-fun m!8242186 () Bool)

(assert (=> b!7811892 m!8242186))

(assert (=> b!7811892 m!8242186))

(declare-fun m!8242188 () Bool)

(assert (=> b!7811892 m!8242188))

(assert (=> b!7811897 m!8242186))

(assert (=> b!7811897 m!8242186))

(assert (=> b!7811897 m!8242188))

(declare-fun m!8242190 () Bool)

(assert (=> b!7811893 m!8242190))

(declare-fun m!8242192 () Bool)

(assert (=> d!2348776 m!8242192))

(declare-fun m!8242194 () Bool)

(assert (=> d!2348776 m!8242194))

(declare-fun m!8242196 () Bool)

(assert (=> b!7811889 m!8242196))

(assert (=> b!7811891 m!8242196))

(assert (=> bm!724596 m!8242192))

(assert (=> b!7811885 m!8242196))

(assert (=> b!7811885 m!8242196))

(declare-fun m!8242198 () Bool)

(assert (=> b!7811885 m!8242198))

(assert (=> b!7811885 m!8242186))

(assert (=> b!7811885 m!8242198))

(assert (=> b!7811885 m!8242186))

(declare-fun m!8242200 () Bool)

(assert (=> b!7811885 m!8242200))

(assert (=> b!7811827 d!2348776))

(declare-fun b!7811925 () Bool)

(declare-fun res!3110838 () Bool)

(declare-fun e!4623465 () Bool)

(assert (=> b!7811925 (=> (not res!3110838) (not e!4623465))))

(declare-fun call!724617 () Bool)

(assert (=> b!7811925 (= res!3110838 call!724617)))

(declare-fun e!4623466 () Bool)

(assert (=> b!7811925 (= e!4623466 e!4623465)))

(declare-fun bm!724612 () Bool)

(declare-fun call!724618 () Bool)

(declare-fun call!724619 () Bool)

(assert (=> bm!724612 (= call!724618 call!724619)))

(declare-fun b!7811926 () Bool)

(declare-fun res!3110842 () Bool)

(declare-fun e!4623460 () Bool)

(assert (=> b!7811926 (=> res!3110842 e!4623460)))

(assert (=> b!7811926 (= res!3110842 (not ((_ is Concat!29758) lt!2675897)))))

(assert (=> b!7811926 (= e!4623466 e!4623460)))

(declare-fun d!2348780 () Bool)

(declare-fun res!3110840 () Bool)

(declare-fun e!4623462 () Bool)

(assert (=> d!2348780 (=> res!3110840 e!4623462)))

(assert (=> d!2348780 (= res!3110840 ((_ is ElementMatch!20913) lt!2675897))))

(assert (=> d!2348780 (= (validRegex!11327 lt!2675897) e!4623462)))

(declare-fun b!7811927 () Bool)

(assert (=> b!7811927 (= e!4623465 call!724618)))

(declare-fun b!7811928 () Bool)

(declare-fun e!4623463 () Bool)

(assert (=> b!7811928 (= e!4623463 call!724619)))

(declare-fun b!7811929 () Bool)

(declare-fun e!4623464 () Bool)

(assert (=> b!7811929 (= e!4623464 call!724618)))

(declare-fun b!7811930 () Bool)

(declare-fun e!4623461 () Bool)

(assert (=> b!7811930 (= e!4623462 e!4623461)))

(declare-fun c!1438363 () Bool)

(assert (=> b!7811930 (= c!1438363 ((_ is Star!20913) lt!2675897))))

(declare-fun bm!724613 () Bool)

(declare-fun c!1438362 () Bool)

(assert (=> bm!724613 (= call!724617 (validRegex!11327 (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))))))

(declare-fun b!7811931 () Bool)

(assert (=> b!7811931 (= e!4623461 e!4623463)))

(declare-fun res!3110841 () Bool)

(assert (=> b!7811931 (= res!3110841 (not (nullable!9284 (reg!21242 lt!2675897))))))

(assert (=> b!7811931 (=> (not res!3110841) (not e!4623463))))

(declare-fun b!7811932 () Bool)

(assert (=> b!7811932 (= e!4623461 e!4623466)))

(assert (=> b!7811932 (= c!1438362 ((_ is Union!20913) lt!2675897))))

(declare-fun b!7811933 () Bool)

(assert (=> b!7811933 (= e!4623460 e!4623464)))

(declare-fun res!3110839 () Bool)

(assert (=> b!7811933 (=> (not res!3110839) (not e!4623464))))

(assert (=> b!7811933 (= res!3110839 call!724617)))

(declare-fun bm!724614 () Bool)

(assert (=> bm!724614 (= call!724619 (validRegex!11327 (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))))))

(assert (= (and d!2348780 (not res!3110840)) b!7811930))

(assert (= (and b!7811930 c!1438363) b!7811931))

(assert (= (and b!7811930 (not c!1438363)) b!7811932))

(assert (= (and b!7811931 res!3110841) b!7811928))

(assert (= (and b!7811932 c!1438362) b!7811925))

(assert (= (and b!7811932 (not c!1438362)) b!7811926))

(assert (= (and b!7811925 res!3110838) b!7811927))

(assert (= (and b!7811926 (not res!3110842)) b!7811933))

(assert (= (and b!7811933 res!3110839) b!7811929))

(assert (= (or b!7811925 b!7811933) bm!724613))

(assert (= (or b!7811927 b!7811929) bm!724612))

(assert (= (or b!7811928 bm!724612) bm!724614))

(declare-fun m!8242202 () Bool)

(assert (=> bm!724613 m!8242202))

(declare-fun m!8242204 () Bool)

(assert (=> b!7811931 m!8242204))

(declare-fun m!8242206 () Bool)

(assert (=> bm!724614 m!8242206))

(assert (=> b!7811823 d!2348780))

(declare-fun b!7811934 () Bool)

(declare-fun res!3110843 () Bool)

(declare-fun e!4623472 () Bool)

(assert (=> b!7811934 (=> (not res!3110843) (not e!4623472))))

(declare-fun call!724620 () Bool)

(assert (=> b!7811934 (= res!3110843 call!724620)))

(declare-fun e!4623473 () Bool)

(assert (=> b!7811934 (= e!4623473 e!4623472)))

(declare-fun bm!724615 () Bool)

(declare-fun call!724621 () Bool)

(declare-fun call!724622 () Bool)

(assert (=> bm!724615 (= call!724621 call!724622)))

(declare-fun b!7811935 () Bool)

(declare-fun res!3110847 () Bool)

(declare-fun e!4623467 () Bool)

(assert (=> b!7811935 (=> res!3110847 e!4623467)))

(assert (=> b!7811935 (= res!3110847 (not ((_ is Concat!29758) r2!6144)))))

(assert (=> b!7811935 (= e!4623473 e!4623467)))

(declare-fun d!2348782 () Bool)

(declare-fun res!3110845 () Bool)

(declare-fun e!4623469 () Bool)

(assert (=> d!2348782 (=> res!3110845 e!4623469)))

(assert (=> d!2348782 (= res!3110845 ((_ is ElementMatch!20913) r2!6144))))

(assert (=> d!2348782 (= (validRegex!11327 r2!6144) e!4623469)))

(declare-fun b!7811936 () Bool)

(assert (=> b!7811936 (= e!4623472 call!724621)))

(declare-fun b!7811937 () Bool)

(declare-fun e!4623470 () Bool)

(assert (=> b!7811937 (= e!4623470 call!724622)))

(declare-fun b!7811938 () Bool)

(declare-fun e!4623471 () Bool)

(assert (=> b!7811938 (= e!4623471 call!724621)))

(declare-fun b!7811939 () Bool)

(declare-fun e!4623468 () Bool)

(assert (=> b!7811939 (= e!4623469 e!4623468)))

(declare-fun c!1438365 () Bool)

(assert (=> b!7811939 (= c!1438365 ((_ is Star!20913) r2!6144))))

(declare-fun bm!724616 () Bool)

(declare-fun c!1438364 () Bool)

(assert (=> bm!724616 (= call!724620 (validRegex!11327 (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))))))

(declare-fun b!7811940 () Bool)

(assert (=> b!7811940 (= e!4623468 e!4623470)))

(declare-fun res!3110846 () Bool)

(assert (=> b!7811940 (= res!3110846 (not (nullable!9284 (reg!21242 r2!6144))))))

(assert (=> b!7811940 (=> (not res!3110846) (not e!4623470))))

(declare-fun b!7811941 () Bool)

(assert (=> b!7811941 (= e!4623468 e!4623473)))

(assert (=> b!7811941 (= c!1438364 ((_ is Union!20913) r2!6144))))

(declare-fun b!7811942 () Bool)

(assert (=> b!7811942 (= e!4623467 e!4623471)))

(declare-fun res!3110844 () Bool)

(assert (=> b!7811942 (=> (not res!3110844) (not e!4623471))))

(assert (=> b!7811942 (= res!3110844 call!724620)))

(declare-fun bm!724617 () Bool)

(assert (=> bm!724617 (= call!724622 (validRegex!11327 (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))))))

(assert (= (and d!2348782 (not res!3110845)) b!7811939))

(assert (= (and b!7811939 c!1438365) b!7811940))

(assert (= (and b!7811939 (not c!1438365)) b!7811941))

(assert (= (and b!7811940 res!3110846) b!7811937))

(assert (= (and b!7811941 c!1438364) b!7811934))

(assert (= (and b!7811941 (not c!1438364)) b!7811935))

(assert (= (and b!7811934 res!3110843) b!7811936))

(assert (= (and b!7811935 (not res!3110847)) b!7811942))

(assert (= (and b!7811942 res!3110844) b!7811938))

(assert (= (or b!7811934 b!7811942) bm!724616))

(assert (= (or b!7811936 b!7811938) bm!724615))

(assert (= (or b!7811937 bm!724615) bm!724617))

(declare-fun m!8242214 () Bool)

(assert (=> bm!724616 m!8242214))

(declare-fun m!8242216 () Bool)

(assert (=> b!7811940 m!8242216))

(declare-fun m!8242218 () Bool)

(assert (=> bm!724617 m!8242218))

(assert (=> b!7811828 d!2348782))

(declare-fun b!7811943 () Bool)

(declare-fun res!3110848 () Bool)

(declare-fun e!4623479 () Bool)

(assert (=> b!7811943 (=> (not res!3110848) (not e!4623479))))

(declare-fun call!724623 () Bool)

(assert (=> b!7811943 (= res!3110848 call!724623)))

(declare-fun e!4623480 () Bool)

(assert (=> b!7811943 (= e!4623480 e!4623479)))

(declare-fun bm!724618 () Bool)

(declare-fun call!724624 () Bool)

(declare-fun call!724625 () Bool)

(assert (=> bm!724618 (= call!724624 call!724625)))

(declare-fun b!7811944 () Bool)

(declare-fun res!3110852 () Bool)

(declare-fun e!4623474 () Bool)

(assert (=> b!7811944 (=> res!3110852 e!4623474)))

(assert (=> b!7811944 (= res!3110852 (not ((_ is Concat!29758) lt!2675898)))))

(assert (=> b!7811944 (= e!4623480 e!4623474)))

(declare-fun d!2348786 () Bool)

(declare-fun res!3110850 () Bool)

(declare-fun e!4623476 () Bool)

(assert (=> d!2348786 (=> res!3110850 e!4623476)))

(assert (=> d!2348786 (= res!3110850 ((_ is ElementMatch!20913) lt!2675898))))

(assert (=> d!2348786 (= (validRegex!11327 lt!2675898) e!4623476)))

(declare-fun b!7811945 () Bool)

(assert (=> b!7811945 (= e!4623479 call!724624)))

(declare-fun b!7811946 () Bool)

(declare-fun e!4623477 () Bool)

(assert (=> b!7811946 (= e!4623477 call!724625)))

(declare-fun b!7811947 () Bool)

(declare-fun e!4623478 () Bool)

(assert (=> b!7811947 (= e!4623478 call!724624)))

(declare-fun b!7811948 () Bool)

(declare-fun e!4623475 () Bool)

(assert (=> b!7811948 (= e!4623476 e!4623475)))

(declare-fun c!1438367 () Bool)

(assert (=> b!7811948 (= c!1438367 ((_ is Star!20913) lt!2675898))))

(declare-fun bm!724619 () Bool)

(declare-fun c!1438366 () Bool)

(assert (=> bm!724619 (= call!724623 (validRegex!11327 (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))))))

(declare-fun b!7811949 () Bool)

(assert (=> b!7811949 (= e!4623475 e!4623477)))

(declare-fun res!3110851 () Bool)

(assert (=> b!7811949 (= res!3110851 (not (nullable!9284 (reg!21242 lt!2675898))))))

(assert (=> b!7811949 (=> (not res!3110851) (not e!4623477))))

(declare-fun b!7811950 () Bool)

(assert (=> b!7811950 (= e!4623475 e!4623480)))

(assert (=> b!7811950 (= c!1438366 ((_ is Union!20913) lt!2675898))))

(declare-fun b!7811951 () Bool)

(assert (=> b!7811951 (= e!4623474 e!4623478)))

(declare-fun res!3110849 () Bool)

(assert (=> b!7811951 (=> (not res!3110849) (not e!4623478))))

(assert (=> b!7811951 (= res!3110849 call!724623)))

(declare-fun bm!724620 () Bool)

(assert (=> bm!724620 (= call!724625 (validRegex!11327 (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))))))

(assert (= (and d!2348786 (not res!3110850)) b!7811948))

(assert (= (and b!7811948 c!1438367) b!7811949))

(assert (= (and b!7811948 (not c!1438367)) b!7811950))

(assert (= (and b!7811949 res!3110851) b!7811946))

(assert (= (and b!7811950 c!1438366) b!7811943))

(assert (= (and b!7811950 (not c!1438366)) b!7811944))

(assert (= (and b!7811943 res!3110848) b!7811945))

(assert (= (and b!7811944 (not res!3110852)) b!7811951))

(assert (= (and b!7811951 res!3110849) b!7811947))

(assert (= (or b!7811943 b!7811951) bm!724619))

(assert (= (or b!7811945 b!7811947) bm!724618))

(assert (= (or b!7811946 bm!724618) bm!724620))

(declare-fun m!8242220 () Bool)

(assert (=> bm!724619 m!8242220))

(declare-fun m!8242222 () Bool)

(assert (=> b!7811949 m!8242222))

(declare-fun m!8242224 () Bool)

(assert (=> bm!724620 m!8242224))

(assert (=> b!7811825 d!2348786))

(declare-fun b!7811976 () Bool)

(declare-fun e!4623494 () Regex!20913)

(declare-fun call!724634 () Regex!20913)

(declare-fun call!724635 () Regex!20913)

(assert (=> b!7811976 (= e!4623494 (Union!20913 call!724634 call!724635))))

(declare-fun bm!724629 () Bool)

(declare-fun call!724636 () Regex!20913)

(assert (=> bm!724629 (= call!724636 call!724634)))

(declare-fun b!7811977 () Bool)

(declare-fun e!4623495 () Regex!20913)

(assert (=> b!7811977 (= e!4623495 (ite (= (h!80074 s!14225) (c!1438342 r2!6144)) EmptyExpr!20913 EmptyLang!20913))))

(declare-fun b!7811978 () Bool)

(declare-fun c!1438384 () Bool)

(assert (=> b!7811978 (= c!1438384 (nullable!9284 (regOne!42338 r2!6144)))))

(declare-fun e!4623493 () Regex!20913)

(declare-fun e!4623496 () Regex!20913)

(assert (=> b!7811978 (= e!4623493 e!4623496)))

(declare-fun call!724637 () Regex!20913)

(declare-fun b!7811979 () Bool)

(assert (=> b!7811979 (= e!4623496 (Union!20913 (Concat!29758 call!724637 (regTwo!42338 r2!6144)) call!724636))))

(declare-fun c!1438383 () Bool)

(declare-fun bm!724630 () Bool)

(assert (=> bm!724630 (= call!724634 (derivativeStep!6244 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144))) (h!80074 s!14225)))))

(declare-fun b!7811980 () Bool)

(assert (=> b!7811980 (= e!4623494 e!4623493)))

(declare-fun c!1438381 () Bool)

(assert (=> b!7811980 (= c!1438381 ((_ is Star!20913) r2!6144))))

(declare-fun b!7811981 () Bool)

(assert (=> b!7811981 (= e!4623496 (Union!20913 (Concat!29758 call!724636 (regTwo!42338 r2!6144)) EmptyLang!20913))))

(declare-fun d!2348788 () Bool)

(declare-fun lt!2675906 () Regex!20913)

(assert (=> d!2348788 (validRegex!11327 lt!2675906)))

(declare-fun e!4623497 () Regex!20913)

(assert (=> d!2348788 (= lt!2675906 e!4623497)))

(declare-fun c!1438380 () Bool)

(assert (=> d!2348788 (= c!1438380 (or ((_ is EmptyExpr!20913) r2!6144) ((_ is EmptyLang!20913) r2!6144)))))

(assert (=> d!2348788 (validRegex!11327 r2!6144)))

(assert (=> d!2348788 (= (derivativeStep!6244 r2!6144 (h!80074 s!14225)) lt!2675906)))

(declare-fun b!7811982 () Bool)

(assert (=> b!7811982 (= e!4623497 e!4623495)))

(declare-fun c!1438382 () Bool)

(assert (=> b!7811982 (= c!1438382 ((_ is ElementMatch!20913) r2!6144))))

(declare-fun b!7811983 () Bool)

(assert (=> b!7811983 (= c!1438383 ((_ is Union!20913) r2!6144))))

(assert (=> b!7811983 (= e!4623495 e!4623494)))

(declare-fun bm!724631 () Bool)

(assert (=> bm!724631 (= call!724635 (derivativeStep!6244 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144))) (h!80074 s!14225)))))

(declare-fun b!7811984 () Bool)

(assert (=> b!7811984 (= e!4623497 EmptyLang!20913)))

(declare-fun b!7811985 () Bool)

(assert (=> b!7811985 (= e!4623493 (Concat!29758 call!724637 r2!6144))))

(declare-fun bm!724632 () Bool)

(assert (=> bm!724632 (= call!724637 call!724635)))

(assert (= (and d!2348788 c!1438380) b!7811984))

(assert (= (and d!2348788 (not c!1438380)) b!7811982))

(assert (= (and b!7811982 c!1438382) b!7811977))

(assert (= (and b!7811982 (not c!1438382)) b!7811983))

(assert (= (and b!7811983 c!1438383) b!7811976))

(assert (= (and b!7811983 (not c!1438383)) b!7811980))

(assert (= (and b!7811980 c!1438381) b!7811985))

(assert (= (and b!7811980 (not c!1438381)) b!7811978))

(assert (= (and b!7811978 c!1438384) b!7811979))

(assert (= (and b!7811978 (not c!1438384)) b!7811981))

(assert (= (or b!7811979 b!7811981) bm!724629))

(assert (= (or b!7811985 b!7811979) bm!724632))

(assert (= (or b!7811976 bm!724632) bm!724631))

(assert (= (or b!7811976 bm!724629) bm!724630))

(declare-fun m!8242226 () Bool)

(assert (=> b!7811978 m!8242226))

(declare-fun m!8242228 () Bool)

(assert (=> bm!724630 m!8242228))

(declare-fun m!8242230 () Bool)

(assert (=> d!2348788 m!8242230))

(assert (=> d!2348788 m!8242170))

(declare-fun m!8242232 () Bool)

(assert (=> bm!724631 m!8242232))

(assert (=> b!7811825 d!2348788))

(declare-fun b!7811994 () Bool)

(declare-fun e!4623503 () Regex!20913)

(declare-fun call!724638 () Regex!20913)

(declare-fun call!724639 () Regex!20913)

(assert (=> b!7811994 (= e!4623503 (Union!20913 call!724638 call!724639))))

(declare-fun bm!724633 () Bool)

(declare-fun call!724640 () Regex!20913)

(assert (=> bm!724633 (= call!724640 call!724638)))

(declare-fun b!7811995 () Bool)

(declare-fun e!4623504 () Regex!20913)

(assert (=> b!7811995 (= e!4623504 (ite (= (h!80074 s!14225) (c!1438342 r1!6206)) EmptyExpr!20913 EmptyLang!20913))))

(declare-fun b!7811996 () Bool)

(declare-fun c!1438393 () Bool)

(assert (=> b!7811996 (= c!1438393 (nullable!9284 (regOne!42338 r1!6206)))))

(declare-fun e!4623502 () Regex!20913)

(declare-fun e!4623505 () Regex!20913)

(assert (=> b!7811996 (= e!4623502 e!4623505)))

(declare-fun call!724641 () Regex!20913)

(declare-fun b!7811997 () Bool)

(assert (=> b!7811997 (= e!4623505 (Union!20913 (Concat!29758 call!724641 (regTwo!42338 r1!6206)) call!724640))))

(declare-fun bm!724634 () Bool)

(declare-fun c!1438392 () Bool)

(assert (=> bm!724634 (= call!724638 (derivativeStep!6244 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206))) (h!80074 s!14225)))))

(declare-fun b!7811998 () Bool)

(assert (=> b!7811998 (= e!4623503 e!4623502)))

(declare-fun c!1438390 () Bool)

(assert (=> b!7811998 (= c!1438390 ((_ is Star!20913) r1!6206))))

(declare-fun b!7811999 () Bool)

(assert (=> b!7811999 (= e!4623505 (Union!20913 (Concat!29758 call!724640 (regTwo!42338 r1!6206)) EmptyLang!20913))))

(declare-fun d!2348790 () Bool)

(declare-fun lt!2675907 () Regex!20913)

(assert (=> d!2348790 (validRegex!11327 lt!2675907)))

(declare-fun e!4623506 () Regex!20913)

(assert (=> d!2348790 (= lt!2675907 e!4623506)))

(declare-fun c!1438389 () Bool)

(assert (=> d!2348790 (= c!1438389 (or ((_ is EmptyExpr!20913) r1!6206) ((_ is EmptyLang!20913) r1!6206)))))

(assert (=> d!2348790 (validRegex!11327 r1!6206)))

(assert (=> d!2348790 (= (derivativeStep!6244 r1!6206 (h!80074 s!14225)) lt!2675907)))

(declare-fun b!7812000 () Bool)

(assert (=> b!7812000 (= e!4623506 e!4623504)))

(declare-fun c!1438391 () Bool)

(assert (=> b!7812000 (= c!1438391 ((_ is ElementMatch!20913) r1!6206))))

(declare-fun b!7812001 () Bool)

(assert (=> b!7812001 (= c!1438392 ((_ is Union!20913) r1!6206))))

(assert (=> b!7812001 (= e!4623504 e!4623503)))

(declare-fun bm!724635 () Bool)

(assert (=> bm!724635 (= call!724639 (derivativeStep!6244 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206))) (h!80074 s!14225)))))

(declare-fun b!7812002 () Bool)

(assert (=> b!7812002 (= e!4623506 EmptyLang!20913)))

(declare-fun b!7812003 () Bool)

(assert (=> b!7812003 (= e!4623502 (Concat!29758 call!724641 r1!6206))))

(declare-fun bm!724636 () Bool)

(assert (=> bm!724636 (= call!724641 call!724639)))

(assert (= (and d!2348790 c!1438389) b!7812002))

(assert (= (and d!2348790 (not c!1438389)) b!7812000))

(assert (= (and b!7812000 c!1438391) b!7811995))

(assert (= (and b!7812000 (not c!1438391)) b!7812001))

(assert (= (and b!7812001 c!1438392) b!7811994))

(assert (= (and b!7812001 (not c!1438392)) b!7811998))

(assert (= (and b!7811998 c!1438390) b!7812003))

(assert (= (and b!7811998 (not c!1438390)) b!7811996))

(assert (= (and b!7811996 c!1438393) b!7811997))

(assert (= (and b!7811996 (not c!1438393)) b!7811999))

(assert (= (or b!7811997 b!7811999) bm!724633))

(assert (= (or b!7812003 b!7811997) bm!724636))

(assert (= (or b!7811994 bm!724636) bm!724635))

(assert (= (or b!7811994 bm!724633) bm!724634))

(declare-fun m!8242234 () Bool)

(assert (=> b!7811996 m!8242234))

(declare-fun m!8242236 () Bool)

(assert (=> bm!724634 m!8242236))

(declare-fun m!8242238 () Bool)

(assert (=> d!2348790 m!8242238))

(assert (=> d!2348790 m!8242174))

(declare-fun m!8242240 () Bool)

(assert (=> bm!724635 m!8242240))

(assert (=> b!7811825 d!2348790))

(declare-fun b!7812020 () Bool)

(declare-fun res!3110869 () Bool)

(declare-fun e!4623520 () Bool)

(assert (=> b!7812020 (=> (not res!3110869) (not e!4623520))))

(declare-fun call!724642 () Bool)

(assert (=> b!7812020 (= res!3110869 call!724642)))

(declare-fun e!4623521 () Bool)

(assert (=> b!7812020 (= e!4623521 e!4623520)))

(declare-fun bm!724637 () Bool)

(declare-fun call!724643 () Bool)

(declare-fun call!724644 () Bool)

(assert (=> bm!724637 (= call!724643 call!724644)))

(declare-fun b!7812021 () Bool)

(declare-fun res!3110873 () Bool)

(declare-fun e!4623515 () Bool)

(assert (=> b!7812021 (=> res!3110873 e!4623515)))

(assert (=> b!7812021 (= res!3110873 (not ((_ is Concat!29758) r1!6206)))))

(assert (=> b!7812021 (= e!4623521 e!4623515)))

(declare-fun d!2348792 () Bool)

(declare-fun res!3110871 () Bool)

(declare-fun e!4623517 () Bool)

(assert (=> d!2348792 (=> res!3110871 e!4623517)))

(assert (=> d!2348792 (= res!3110871 ((_ is ElementMatch!20913) r1!6206))))

(assert (=> d!2348792 (= (validRegex!11327 r1!6206) e!4623517)))

(declare-fun b!7812022 () Bool)

(assert (=> b!7812022 (= e!4623520 call!724643)))

(declare-fun b!7812023 () Bool)

(declare-fun e!4623518 () Bool)

(assert (=> b!7812023 (= e!4623518 call!724644)))

(declare-fun b!7812024 () Bool)

(declare-fun e!4623519 () Bool)

(assert (=> b!7812024 (= e!4623519 call!724643)))

(declare-fun b!7812025 () Bool)

(declare-fun e!4623516 () Bool)

(assert (=> b!7812025 (= e!4623517 e!4623516)))

(declare-fun c!1438395 () Bool)

(assert (=> b!7812025 (= c!1438395 ((_ is Star!20913) r1!6206))))

(declare-fun bm!724638 () Bool)

(declare-fun c!1438394 () Bool)

(assert (=> bm!724638 (= call!724642 (validRegex!11327 (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))))))

(declare-fun b!7812026 () Bool)

(assert (=> b!7812026 (= e!4623516 e!4623518)))

(declare-fun res!3110872 () Bool)

(assert (=> b!7812026 (= res!3110872 (not (nullable!9284 (reg!21242 r1!6206))))))

(assert (=> b!7812026 (=> (not res!3110872) (not e!4623518))))

(declare-fun b!7812027 () Bool)

(assert (=> b!7812027 (= e!4623516 e!4623521)))

(assert (=> b!7812027 (= c!1438394 ((_ is Union!20913) r1!6206))))

(declare-fun b!7812028 () Bool)

(assert (=> b!7812028 (= e!4623515 e!4623519)))

(declare-fun res!3110870 () Bool)

(assert (=> b!7812028 (=> (not res!3110870) (not e!4623519))))

(assert (=> b!7812028 (= res!3110870 call!724642)))

(declare-fun bm!724639 () Bool)

(assert (=> bm!724639 (= call!724644 (validRegex!11327 (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))))))

(assert (= (and d!2348792 (not res!3110871)) b!7812025))

(assert (= (and b!7812025 c!1438395) b!7812026))

(assert (= (and b!7812025 (not c!1438395)) b!7812027))

(assert (= (and b!7812026 res!3110872) b!7812023))

(assert (= (and b!7812027 c!1438394) b!7812020))

(assert (= (and b!7812027 (not c!1438394)) b!7812021))

(assert (= (and b!7812020 res!3110869) b!7812022))

(assert (= (and b!7812021 (not res!3110873)) b!7812028))

(assert (= (and b!7812028 res!3110870) b!7812024))

(assert (= (or b!7812020 b!7812028) bm!724638))

(assert (= (or b!7812022 b!7812024) bm!724637))

(assert (= (or b!7812023 bm!724637) bm!724639))

(declare-fun m!8242242 () Bool)

(assert (=> bm!724638 m!8242242))

(declare-fun m!8242244 () Bool)

(assert (=> b!7812026 m!8242244))

(declare-fun m!8242246 () Bool)

(assert (=> bm!724639 m!8242246))

(assert (=> start!741810 d!2348792))

(declare-fun b!7812029 () Bool)

(declare-fun res!3110878 () Bool)

(declare-fun e!4623523 () Bool)

(assert (=> b!7812029 (=> res!3110878 e!4623523)))

(assert (=> b!7812029 (= res!3110878 (not ((_ is ElementMatch!20913) (Union!20913 r1!6206 r2!6144))))))

(declare-fun e!4623526 () Bool)

(assert (=> b!7812029 (= e!4623526 e!4623523)))

(declare-fun b!7812030 () Bool)

(declare-fun e!4623522 () Bool)

(assert (=> b!7812030 (= e!4623522 (matchR!10371 (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225)) (tail!15514 s!14225)))))

(declare-fun b!7812031 () Bool)

(declare-fun e!4623524 () Bool)

(declare-fun lt!2675908 () Bool)

(declare-fun call!724645 () Bool)

(assert (=> b!7812031 (= e!4623524 (= lt!2675908 call!724645))))

(declare-fun b!7812032 () Bool)

(declare-fun res!3110880 () Bool)

(assert (=> b!7812032 (=> res!3110880 e!4623523)))

(declare-fun e!4623528 () Bool)

(assert (=> b!7812032 (= res!3110880 e!4623528)))

(declare-fun res!3110877 () Bool)

(assert (=> b!7812032 (=> (not res!3110877) (not e!4623528))))

(assert (=> b!7812032 (= res!3110877 lt!2675908)))

(declare-fun b!7812033 () Bool)

(declare-fun res!3110881 () Bool)

(assert (=> b!7812033 (=> (not res!3110881) (not e!4623528))))

(assert (=> b!7812033 (= res!3110881 (not call!724645))))

(declare-fun b!7812034 () Bool)

(assert (=> b!7812034 (= e!4623528 (= (head!15973 s!14225) (c!1438342 (Union!20913 r1!6206 r2!6144))))))

(declare-fun b!7812035 () Bool)

(declare-fun e!4623527 () Bool)

(assert (=> b!7812035 (= e!4623523 e!4623527)))

(declare-fun res!3110874 () Bool)

(assert (=> b!7812035 (=> (not res!3110874) (not e!4623527))))

(assert (=> b!7812035 (= res!3110874 (not lt!2675908))))

(declare-fun b!7812036 () Bool)

(declare-fun e!4623525 () Bool)

(assert (=> b!7812036 (= e!4623525 (not (= (head!15973 s!14225) (c!1438342 (Union!20913 r1!6206 r2!6144)))))))

(declare-fun b!7812037 () Bool)

(declare-fun res!3110876 () Bool)

(assert (=> b!7812037 (=> res!3110876 e!4623525)))

(assert (=> b!7812037 (= res!3110876 (not (isEmpty!42272 (tail!15514 s!14225))))))

(declare-fun b!7812038 () Bool)

(assert (=> b!7812038 (= e!4623522 (nullable!9284 (Union!20913 r1!6206 r2!6144)))))

(declare-fun b!7812039 () Bool)

(assert (=> b!7812039 (= e!4623524 e!4623526)))

(declare-fun c!1438396 () Bool)

(assert (=> b!7812039 (= c!1438396 ((_ is EmptyLang!20913) (Union!20913 r1!6206 r2!6144)))))

(declare-fun b!7812040 () Bool)

(assert (=> b!7812040 (= e!4623526 (not lt!2675908))))

(declare-fun b!7812041 () Bool)

(assert (=> b!7812041 (= e!4623527 e!4623525)))

(declare-fun res!3110875 () Bool)

(assert (=> b!7812041 (=> res!3110875 e!4623525)))

(assert (=> b!7812041 (= res!3110875 call!724645)))

(declare-fun b!7812042 () Bool)

(declare-fun res!3110879 () Bool)

(assert (=> b!7812042 (=> (not res!3110879) (not e!4623528))))

(assert (=> b!7812042 (= res!3110879 (isEmpty!42272 (tail!15514 s!14225)))))

(declare-fun bm!724640 () Bool)

(assert (=> bm!724640 (= call!724645 (isEmpty!42272 s!14225))))

(declare-fun d!2348794 () Bool)

(assert (=> d!2348794 e!4623524))

(declare-fun c!1438397 () Bool)

(assert (=> d!2348794 (= c!1438397 ((_ is EmptyExpr!20913) (Union!20913 r1!6206 r2!6144)))))

(assert (=> d!2348794 (= lt!2675908 e!4623522)))

(declare-fun c!1438398 () Bool)

(assert (=> d!2348794 (= c!1438398 (isEmpty!42272 s!14225))))

(assert (=> d!2348794 (validRegex!11327 (Union!20913 r1!6206 r2!6144))))

(assert (=> d!2348794 (= (matchR!10371 (Union!20913 r1!6206 r2!6144) s!14225) lt!2675908)))

(assert (= (and d!2348794 c!1438398) b!7812038))

(assert (= (and d!2348794 (not c!1438398)) b!7812030))

(assert (= (and d!2348794 c!1438397) b!7812031))

(assert (= (and d!2348794 (not c!1438397)) b!7812039))

(assert (= (and b!7812039 c!1438396) b!7812040))

(assert (= (and b!7812039 (not c!1438396)) b!7812029))

(assert (= (and b!7812029 (not res!3110878)) b!7812032))

(assert (= (and b!7812032 res!3110877) b!7812033))

(assert (= (and b!7812033 res!3110881) b!7812042))

(assert (= (and b!7812042 res!3110879) b!7812034))

(assert (= (and b!7812032 (not res!3110880)) b!7812035))

(assert (= (and b!7812035 res!3110874) b!7812041))

(assert (= (and b!7812041 (not res!3110875)) b!7812037))

(assert (= (and b!7812037 (not res!3110876)) b!7812036))

(assert (= (or b!7812031 b!7812033 b!7812041) bm!724640))

(declare-fun m!8242248 () Bool)

(assert (=> b!7812037 m!8242248))

(assert (=> b!7812037 m!8242248))

(declare-fun m!8242250 () Bool)

(assert (=> b!7812037 m!8242250))

(assert (=> b!7812042 m!8242248))

(assert (=> b!7812042 m!8242248))

(assert (=> b!7812042 m!8242250))

(declare-fun m!8242252 () Bool)

(assert (=> b!7812038 m!8242252))

(declare-fun m!8242254 () Bool)

(assert (=> d!2348794 m!8242254))

(declare-fun m!8242256 () Bool)

(assert (=> d!2348794 m!8242256))

(declare-fun m!8242258 () Bool)

(assert (=> b!7812034 m!8242258))

(assert (=> b!7812036 m!8242258))

(assert (=> bm!724640 m!8242254))

(assert (=> b!7812030 m!8242258))

(assert (=> b!7812030 m!8242258))

(declare-fun m!8242260 () Bool)

(assert (=> b!7812030 m!8242260))

(assert (=> b!7812030 m!8242248))

(assert (=> b!7812030 m!8242260))

(assert (=> b!7812030 m!8242248))

(declare-fun m!8242262 () Bool)

(assert (=> b!7812030 m!8242262))

(assert (=> b!7811824 d!2348794))

(declare-fun b!7812056 () Bool)

(declare-fun e!4623531 () Bool)

(declare-fun tp!2302301 () Bool)

(declare-fun tp!2302300 () Bool)

(assert (=> b!7812056 (= e!4623531 (and tp!2302301 tp!2302300))))

(assert (=> b!7811832 (= tp!2302277 e!4623531)))

(declare-fun b!7812055 () Bool)

(declare-fun tp!2302302 () Bool)

(assert (=> b!7812055 (= e!4623531 tp!2302302)))

(declare-fun b!7812053 () Bool)

(assert (=> b!7812053 (= e!4623531 tp_is_empty!52181)))

(declare-fun b!7812054 () Bool)

(declare-fun tp!2302299 () Bool)

(declare-fun tp!2302298 () Bool)

(assert (=> b!7812054 (= e!4623531 (and tp!2302299 tp!2302298))))

(assert (= (and b!7811832 ((_ is ElementMatch!20913) (regOne!42339 r1!6206))) b!7812053))

(assert (= (and b!7811832 ((_ is Concat!29758) (regOne!42339 r1!6206))) b!7812054))

(assert (= (and b!7811832 ((_ is Star!20913) (regOne!42339 r1!6206))) b!7812055))

(assert (= (and b!7811832 ((_ is Union!20913) (regOne!42339 r1!6206))) b!7812056))

(declare-fun b!7812060 () Bool)

(declare-fun e!4623532 () Bool)

(declare-fun tp!2302306 () Bool)

(declare-fun tp!2302305 () Bool)

(assert (=> b!7812060 (= e!4623532 (and tp!2302306 tp!2302305))))

(assert (=> b!7811832 (= tp!2302279 e!4623532)))

(declare-fun b!7812059 () Bool)

(declare-fun tp!2302307 () Bool)

(assert (=> b!7812059 (= e!4623532 tp!2302307)))

(declare-fun b!7812057 () Bool)

(assert (=> b!7812057 (= e!4623532 tp_is_empty!52181)))

(declare-fun b!7812058 () Bool)

(declare-fun tp!2302304 () Bool)

(declare-fun tp!2302303 () Bool)

(assert (=> b!7812058 (= e!4623532 (and tp!2302304 tp!2302303))))

(assert (= (and b!7811832 ((_ is ElementMatch!20913) (regTwo!42339 r1!6206))) b!7812057))

(assert (= (and b!7811832 ((_ is Concat!29758) (regTwo!42339 r1!6206))) b!7812058))

(assert (= (and b!7811832 ((_ is Star!20913) (regTwo!42339 r1!6206))) b!7812059))

(assert (= (and b!7811832 ((_ is Union!20913) (regTwo!42339 r1!6206))) b!7812060))

(declare-fun b!7812064 () Bool)

(declare-fun e!4623533 () Bool)

(declare-fun tp!2302311 () Bool)

(declare-fun tp!2302310 () Bool)

(assert (=> b!7812064 (= e!4623533 (and tp!2302311 tp!2302310))))

(assert (=> b!7811834 (= tp!2302287 e!4623533)))

(declare-fun b!7812063 () Bool)

(declare-fun tp!2302312 () Bool)

(assert (=> b!7812063 (= e!4623533 tp!2302312)))

(declare-fun b!7812061 () Bool)

(assert (=> b!7812061 (= e!4623533 tp_is_empty!52181)))

(declare-fun b!7812062 () Bool)

(declare-fun tp!2302309 () Bool)

(declare-fun tp!2302308 () Bool)

(assert (=> b!7812062 (= e!4623533 (and tp!2302309 tp!2302308))))

(assert (= (and b!7811834 ((_ is ElementMatch!20913) (reg!21242 r1!6206))) b!7812061))

(assert (= (and b!7811834 ((_ is Concat!29758) (reg!21242 r1!6206))) b!7812062))

(assert (= (and b!7811834 ((_ is Star!20913) (reg!21242 r1!6206))) b!7812063))

(assert (= (and b!7811834 ((_ is Union!20913) (reg!21242 r1!6206))) b!7812064))

(declare-fun b!7812069 () Bool)

(declare-fun e!4623536 () Bool)

(declare-fun tp!2302315 () Bool)

(assert (=> b!7812069 (= e!4623536 (and tp_is_empty!52181 tp!2302315))))

(assert (=> b!7811835 (= tp!2302282 e!4623536)))

(assert (= (and b!7811835 ((_ is Cons!73626) (t!388485 s!14225))) b!7812069))

(declare-fun b!7812073 () Bool)

(declare-fun e!4623537 () Bool)

(declare-fun tp!2302319 () Bool)

(declare-fun tp!2302318 () Bool)

(assert (=> b!7812073 (= e!4623537 (and tp!2302319 tp!2302318))))

(assert (=> b!7811837 (= tp!2302285 e!4623537)))

(declare-fun b!7812072 () Bool)

(declare-fun tp!2302320 () Bool)

(assert (=> b!7812072 (= e!4623537 tp!2302320)))

(declare-fun b!7812070 () Bool)

(assert (=> b!7812070 (= e!4623537 tp_is_empty!52181)))

(declare-fun b!7812071 () Bool)

(declare-fun tp!2302317 () Bool)

(declare-fun tp!2302316 () Bool)

(assert (=> b!7812071 (= e!4623537 (and tp!2302317 tp!2302316))))

(assert (= (and b!7811837 ((_ is ElementMatch!20913) (regOne!42339 r2!6144))) b!7812070))

(assert (= (and b!7811837 ((_ is Concat!29758) (regOne!42339 r2!6144))) b!7812071))

(assert (= (and b!7811837 ((_ is Star!20913) (regOne!42339 r2!6144))) b!7812072))

(assert (= (and b!7811837 ((_ is Union!20913) (regOne!42339 r2!6144))) b!7812073))

(declare-fun b!7812077 () Bool)

(declare-fun e!4623538 () Bool)

(declare-fun tp!2302324 () Bool)

(declare-fun tp!2302323 () Bool)

(assert (=> b!7812077 (= e!4623538 (and tp!2302324 tp!2302323))))

(assert (=> b!7811837 (= tp!2302283 e!4623538)))

(declare-fun b!7812076 () Bool)

(declare-fun tp!2302325 () Bool)

(assert (=> b!7812076 (= e!4623538 tp!2302325)))

(declare-fun b!7812074 () Bool)

(assert (=> b!7812074 (= e!4623538 tp_is_empty!52181)))

(declare-fun b!7812075 () Bool)

(declare-fun tp!2302322 () Bool)

(declare-fun tp!2302321 () Bool)

(assert (=> b!7812075 (= e!4623538 (and tp!2302322 tp!2302321))))

(assert (= (and b!7811837 ((_ is ElementMatch!20913) (regTwo!42339 r2!6144))) b!7812074))

(assert (= (and b!7811837 ((_ is Concat!29758) (regTwo!42339 r2!6144))) b!7812075))

(assert (= (and b!7811837 ((_ is Star!20913) (regTwo!42339 r2!6144))) b!7812076))

(assert (= (and b!7811837 ((_ is Union!20913) (regTwo!42339 r2!6144))) b!7812077))

(declare-fun b!7812081 () Bool)

(declare-fun e!4623539 () Bool)

(declare-fun tp!2302329 () Bool)

(declare-fun tp!2302328 () Bool)

(assert (=> b!7812081 (= e!4623539 (and tp!2302329 tp!2302328))))

(assert (=> b!7811826 (= tp!2302286 e!4623539)))

(declare-fun b!7812080 () Bool)

(declare-fun tp!2302330 () Bool)

(assert (=> b!7812080 (= e!4623539 tp!2302330)))

(declare-fun b!7812078 () Bool)

(assert (=> b!7812078 (= e!4623539 tp_is_empty!52181)))

(declare-fun b!7812079 () Bool)

(declare-fun tp!2302327 () Bool)

(declare-fun tp!2302326 () Bool)

(assert (=> b!7812079 (= e!4623539 (and tp!2302327 tp!2302326))))

(assert (= (and b!7811826 ((_ is ElementMatch!20913) (regOne!42338 r2!6144))) b!7812078))

(assert (= (and b!7811826 ((_ is Concat!29758) (regOne!42338 r2!6144))) b!7812079))

(assert (= (and b!7811826 ((_ is Star!20913) (regOne!42338 r2!6144))) b!7812080))

(assert (= (and b!7811826 ((_ is Union!20913) (regOne!42338 r2!6144))) b!7812081))

(declare-fun b!7812085 () Bool)

(declare-fun e!4623540 () Bool)

(declare-fun tp!2302334 () Bool)

(declare-fun tp!2302333 () Bool)

(assert (=> b!7812085 (= e!4623540 (and tp!2302334 tp!2302333))))

(assert (=> b!7811826 (= tp!2302278 e!4623540)))

(declare-fun b!7812084 () Bool)

(declare-fun tp!2302335 () Bool)

(assert (=> b!7812084 (= e!4623540 tp!2302335)))

(declare-fun b!7812082 () Bool)

(assert (=> b!7812082 (= e!4623540 tp_is_empty!52181)))

(declare-fun b!7812083 () Bool)

(declare-fun tp!2302332 () Bool)

(declare-fun tp!2302331 () Bool)

(assert (=> b!7812083 (= e!4623540 (and tp!2302332 tp!2302331))))

(assert (= (and b!7811826 ((_ is ElementMatch!20913) (regTwo!42338 r2!6144))) b!7812082))

(assert (= (and b!7811826 ((_ is Concat!29758) (regTwo!42338 r2!6144))) b!7812083))

(assert (= (and b!7811826 ((_ is Star!20913) (regTwo!42338 r2!6144))) b!7812084))

(assert (= (and b!7811826 ((_ is Union!20913) (regTwo!42338 r2!6144))) b!7812085))

(declare-fun b!7812089 () Bool)

(declare-fun e!4623541 () Bool)

(declare-fun tp!2302339 () Bool)

(declare-fun tp!2302338 () Bool)

(assert (=> b!7812089 (= e!4623541 (and tp!2302339 tp!2302338))))

(assert (=> b!7811831 (= tp!2302280 e!4623541)))

(declare-fun b!7812088 () Bool)

(declare-fun tp!2302340 () Bool)

(assert (=> b!7812088 (= e!4623541 tp!2302340)))

(declare-fun b!7812086 () Bool)

(assert (=> b!7812086 (= e!4623541 tp_is_empty!52181)))

(declare-fun b!7812087 () Bool)

(declare-fun tp!2302337 () Bool)

(declare-fun tp!2302336 () Bool)

(assert (=> b!7812087 (= e!4623541 (and tp!2302337 tp!2302336))))

(assert (= (and b!7811831 ((_ is ElementMatch!20913) (regOne!42338 r1!6206))) b!7812086))

(assert (= (and b!7811831 ((_ is Concat!29758) (regOne!42338 r1!6206))) b!7812087))

(assert (= (and b!7811831 ((_ is Star!20913) (regOne!42338 r1!6206))) b!7812088))

(assert (= (and b!7811831 ((_ is Union!20913) (regOne!42338 r1!6206))) b!7812089))

(declare-fun b!7812093 () Bool)

(declare-fun e!4623542 () Bool)

(declare-fun tp!2302344 () Bool)

(declare-fun tp!2302343 () Bool)

(assert (=> b!7812093 (= e!4623542 (and tp!2302344 tp!2302343))))

(assert (=> b!7811831 (= tp!2302284 e!4623542)))

(declare-fun b!7812092 () Bool)

(declare-fun tp!2302345 () Bool)

(assert (=> b!7812092 (= e!4623542 tp!2302345)))

(declare-fun b!7812090 () Bool)

(assert (=> b!7812090 (= e!4623542 tp_is_empty!52181)))

(declare-fun b!7812091 () Bool)

(declare-fun tp!2302342 () Bool)

(declare-fun tp!2302341 () Bool)

(assert (=> b!7812091 (= e!4623542 (and tp!2302342 tp!2302341))))

(assert (= (and b!7811831 ((_ is ElementMatch!20913) (regTwo!42338 r1!6206))) b!7812090))

(assert (= (and b!7811831 ((_ is Concat!29758) (regTwo!42338 r1!6206))) b!7812091))

(assert (= (and b!7811831 ((_ is Star!20913) (regTwo!42338 r1!6206))) b!7812092))

(assert (= (and b!7811831 ((_ is Union!20913) (regTwo!42338 r1!6206))) b!7812093))

(declare-fun b!7812097 () Bool)

(declare-fun e!4623543 () Bool)

(declare-fun tp!2302349 () Bool)

(declare-fun tp!2302348 () Bool)

(assert (=> b!7812097 (= e!4623543 (and tp!2302349 tp!2302348))))

(assert (=> b!7811836 (= tp!2302281 e!4623543)))

(declare-fun b!7812096 () Bool)

(declare-fun tp!2302350 () Bool)

(assert (=> b!7812096 (= e!4623543 tp!2302350)))

(declare-fun b!7812094 () Bool)

(assert (=> b!7812094 (= e!4623543 tp_is_empty!52181)))

(declare-fun b!7812095 () Bool)

(declare-fun tp!2302347 () Bool)

(declare-fun tp!2302346 () Bool)

(assert (=> b!7812095 (= e!4623543 (and tp!2302347 tp!2302346))))

(assert (= (and b!7811836 ((_ is ElementMatch!20913) (reg!21242 r2!6144))) b!7812094))

(assert (= (and b!7811836 ((_ is Concat!29758) (reg!21242 r2!6144))) b!7812095))

(assert (= (and b!7811836 ((_ is Star!20913) (reg!21242 r2!6144))) b!7812096))

(assert (= (and b!7811836 ((_ is Union!20913) (reg!21242 r2!6144))) b!7812097))

(check-sat (not b!7812037) (not bm!724635) (not bm!724630) (not b!7811885) (not bm!724640) (not b!7812058) (not b!7812055) (not b!7812075) (not b!7811996) (not bm!724614) (not bm!724617) (not b!7812087) (not b!7811891) (not d!2348776) (not b!7812092) (not b!7812085) (not bm!724638) (not b!7812056) (not b!7811949) (not b!7812030) (not bm!724631) (not b!7812095) (not b!7812026) (not b!7811889) (not b!7811931) (not b!7812069) (not b!7811893) (not bm!724634) (not b!7811978) (not b!7812084) (not bm!724596) (not b!7812079) (not b!7812054) (not b!7812081) (not b!7812034) (not b!7812036) (not bm!724619) (not d!2348788) (not b!7812083) (not b!7812064) (not b!7811897) (not b!7811940) (not bm!724613) (not b!7812089) (not b!7812063) (not b!7812059) (not b!7812060) (not bm!724616) (not b!7812093) (not b!7812071) (not b!7811892) (not bm!724639) (not b!7812076) (not b!7812042) (not b!7812091) (not b!7812097) (not bm!724620) tp_is_empty!52181 (not b!7812038) (not b!7812077) (not b!7812096) (not d!2348790) (not d!2348794) (not b!7812088) (not b!7812072) (not b!7812080) (not b!7812062) (not b!7812073))
(check-sat)
(get-model)

(declare-fun d!2348808 () Bool)

(assert (=> d!2348808 (= (isEmpty!42272 (tail!15514 (t!388485 s!14225))) ((_ is Nil!73626) (tail!15514 (t!388485 s!14225))))))

(assert (=> b!7811897 d!2348808))

(declare-fun d!2348810 () Bool)

(assert (=> d!2348810 (= (tail!15514 (t!388485 s!14225)) (t!388485 (t!388485 s!14225)))))

(assert (=> b!7811897 d!2348810))

(declare-fun d!2348812 () Bool)

(assert (=> d!2348812 (= (isEmpty!42272 s!14225) ((_ is Nil!73626) s!14225))))

(assert (=> bm!724640 d!2348812))

(declare-fun d!2348814 () Bool)

(assert (=> d!2348814 (= (head!15973 s!14225) (h!80074 s!14225))))

(assert (=> b!7812036 d!2348814))

(declare-fun b!7812248 () Bool)

(declare-fun res!3110913 () Bool)

(declare-fun e!4623619 () Bool)

(assert (=> b!7812248 (=> (not res!3110913) (not e!4623619))))

(declare-fun call!724675 () Bool)

(assert (=> b!7812248 (= res!3110913 call!724675)))

(declare-fun e!4623620 () Bool)

(assert (=> b!7812248 (= e!4623620 e!4623619)))

(declare-fun bm!724670 () Bool)

(declare-fun call!724676 () Bool)

(declare-fun call!724677 () Bool)

(assert (=> bm!724670 (= call!724676 call!724677)))

(declare-fun b!7812249 () Bool)

(declare-fun res!3110917 () Bool)

(declare-fun e!4623614 () Bool)

(assert (=> b!7812249 (=> res!3110917 e!4623614)))

(assert (=> b!7812249 (= res!3110917 (not ((_ is Concat!29758) (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897))))))))

(assert (=> b!7812249 (= e!4623620 e!4623614)))

(declare-fun d!2348816 () Bool)

(declare-fun res!3110915 () Bool)

(declare-fun e!4623616 () Bool)

(assert (=> d!2348816 (=> res!3110915 e!4623616)))

(assert (=> d!2348816 (= res!3110915 ((_ is ElementMatch!20913) (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))))))

(assert (=> d!2348816 (= (validRegex!11327 (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))) e!4623616)))

(declare-fun b!7812250 () Bool)

(assert (=> b!7812250 (= e!4623619 call!724676)))

(declare-fun b!7812251 () Bool)

(declare-fun e!4623617 () Bool)

(assert (=> b!7812251 (= e!4623617 call!724677)))

(declare-fun b!7812252 () Bool)

(declare-fun e!4623618 () Bool)

(assert (=> b!7812252 (= e!4623618 call!724676)))

(declare-fun b!7812253 () Bool)

(declare-fun e!4623615 () Bool)

(assert (=> b!7812253 (= e!4623616 e!4623615)))

(declare-fun c!1438432 () Bool)

(assert (=> b!7812253 (= c!1438432 ((_ is Star!20913) (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))))))

(declare-fun c!1438431 () Bool)

(declare-fun bm!724671 () Bool)

(assert (=> bm!724671 (= call!724675 (validRegex!11327 (ite c!1438431 (regOne!42339 (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))) (regOne!42338 (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))))))))

(declare-fun b!7812254 () Bool)

(assert (=> b!7812254 (= e!4623615 e!4623617)))

(declare-fun res!3110916 () Bool)

(assert (=> b!7812254 (= res!3110916 (not (nullable!9284 (reg!21242 (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))))))))

(assert (=> b!7812254 (=> (not res!3110916) (not e!4623617))))

(declare-fun b!7812255 () Bool)

(assert (=> b!7812255 (= e!4623615 e!4623620)))

(assert (=> b!7812255 (= c!1438431 ((_ is Union!20913) (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))))))

(declare-fun b!7812256 () Bool)

(assert (=> b!7812256 (= e!4623614 e!4623618)))

(declare-fun res!3110914 () Bool)

(assert (=> b!7812256 (=> (not res!3110914) (not e!4623618))))

(assert (=> b!7812256 (= res!3110914 call!724675)))

(declare-fun bm!724672 () Bool)

(assert (=> bm!724672 (= call!724677 (validRegex!11327 (ite c!1438432 (reg!21242 (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))) (ite c!1438431 (regTwo!42339 (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897)))) (regTwo!42338 (ite c!1438363 (reg!21242 lt!2675897) (ite c!1438362 (regTwo!42339 lt!2675897) (regTwo!42338 lt!2675897))))))))))

(assert (= (and d!2348816 (not res!3110915)) b!7812253))

(assert (= (and b!7812253 c!1438432) b!7812254))

(assert (= (and b!7812253 (not c!1438432)) b!7812255))

(assert (= (and b!7812254 res!3110916) b!7812251))

(assert (= (and b!7812255 c!1438431) b!7812248))

(assert (= (and b!7812255 (not c!1438431)) b!7812249))

(assert (= (and b!7812248 res!3110913) b!7812250))

(assert (= (and b!7812249 (not res!3110917)) b!7812256))

(assert (= (and b!7812256 res!3110914) b!7812252))

(assert (= (or b!7812248 b!7812256) bm!724671))

(assert (= (or b!7812250 b!7812252) bm!724670))

(assert (= (or b!7812251 bm!724670) bm!724672))

(declare-fun m!8242330 () Bool)

(assert (=> bm!724671 m!8242330))

(declare-fun m!8242332 () Bool)

(assert (=> b!7812254 m!8242332))

(declare-fun m!8242334 () Bool)

(assert (=> bm!724672 m!8242334))

(assert (=> bm!724614 d!2348816))

(declare-fun b!7812257 () Bool)

(declare-fun e!4623622 () Regex!20913)

(declare-fun call!724678 () Regex!20913)

(declare-fun call!724679 () Regex!20913)

(assert (=> b!7812257 (= e!4623622 (Union!20913 call!724678 call!724679))))

(declare-fun bm!724673 () Bool)

(declare-fun call!724680 () Regex!20913)

(assert (=> bm!724673 (= call!724680 call!724678)))

(declare-fun b!7812258 () Bool)

(declare-fun e!4623623 () Regex!20913)

(assert (=> b!7812258 (= e!4623623 (ite (= (h!80074 s!14225) (c!1438342 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144))))) EmptyExpr!20913 EmptyLang!20913))))

(declare-fun b!7812259 () Bool)

(declare-fun c!1438437 () Bool)

(assert (=> b!7812259 (= c!1438437 (nullable!9284 (regOne!42338 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144))))))))

(declare-fun e!4623621 () Regex!20913)

(declare-fun e!4623624 () Regex!20913)

(assert (=> b!7812259 (= e!4623621 e!4623624)))

(declare-fun call!724681 () Regex!20913)

(declare-fun b!7812260 () Bool)

(assert (=> b!7812260 (= e!4623624 (Union!20913 (Concat!29758 call!724681 (regTwo!42338 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144))))) call!724680))))

(declare-fun bm!724674 () Bool)

(declare-fun c!1438436 () Bool)

(assert (=> bm!724674 (= call!724678 (derivativeStep!6244 (ite c!1438436 (regOne!42339 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))) (ite c!1438437 (regTwo!42338 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))) (regOne!42338 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))))) (h!80074 s!14225)))))

(declare-fun b!7812261 () Bool)

(assert (=> b!7812261 (= e!4623622 e!4623621)))

(declare-fun c!1438434 () Bool)

(assert (=> b!7812261 (= c!1438434 ((_ is Star!20913) (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))))))

(declare-fun b!7812262 () Bool)

(assert (=> b!7812262 (= e!4623624 (Union!20913 (Concat!29758 call!724680 (regTwo!42338 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144))))) EmptyLang!20913))))

(declare-fun d!2348818 () Bool)

(declare-fun lt!2675915 () Regex!20913)

(assert (=> d!2348818 (validRegex!11327 lt!2675915)))

(declare-fun e!4623625 () Regex!20913)

(assert (=> d!2348818 (= lt!2675915 e!4623625)))

(declare-fun c!1438433 () Bool)

(assert (=> d!2348818 (= c!1438433 (or ((_ is EmptyExpr!20913) (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))) ((_ is EmptyLang!20913) (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144))))))))

(assert (=> d!2348818 (validRegex!11327 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144))))))

(assert (=> d!2348818 (= (derivativeStep!6244 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144))) (h!80074 s!14225)) lt!2675915)))

(declare-fun b!7812263 () Bool)

(assert (=> b!7812263 (= e!4623625 e!4623623)))

(declare-fun c!1438435 () Bool)

(assert (=> b!7812263 (= c!1438435 ((_ is ElementMatch!20913) (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))))))

(declare-fun b!7812264 () Bool)

(assert (=> b!7812264 (= c!1438436 ((_ is Union!20913) (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))))))

(assert (=> b!7812264 (= e!4623623 e!4623622)))

(declare-fun bm!724675 () Bool)

(assert (=> bm!724675 (= call!724679 (derivativeStep!6244 (ite c!1438436 (regTwo!42339 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))) (ite c!1438434 (reg!21242 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))) (regOne!42338 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))))) (h!80074 s!14225)))))

(declare-fun b!7812265 () Bool)

(assert (=> b!7812265 (= e!4623625 EmptyLang!20913)))

(declare-fun b!7812266 () Bool)

(assert (=> b!7812266 (= e!4623621 (Concat!29758 call!724681 (ite c!1438383 (regTwo!42339 r2!6144) (ite c!1438381 (reg!21242 r2!6144) (regOne!42338 r2!6144)))))))

(declare-fun bm!724676 () Bool)

(assert (=> bm!724676 (= call!724681 call!724679)))

(assert (= (and d!2348818 c!1438433) b!7812265))

(assert (= (and d!2348818 (not c!1438433)) b!7812263))

(assert (= (and b!7812263 c!1438435) b!7812258))

(assert (= (and b!7812263 (not c!1438435)) b!7812264))

(assert (= (and b!7812264 c!1438436) b!7812257))

(assert (= (and b!7812264 (not c!1438436)) b!7812261))

(assert (= (and b!7812261 c!1438434) b!7812266))

(assert (= (and b!7812261 (not c!1438434)) b!7812259))

(assert (= (and b!7812259 c!1438437) b!7812260))

(assert (= (and b!7812259 (not c!1438437)) b!7812262))

(assert (= (or b!7812260 b!7812262) bm!724673))

(assert (= (or b!7812266 b!7812260) bm!724676))

(assert (= (or b!7812257 bm!724676) bm!724675))

(assert (= (or b!7812257 bm!724673) bm!724674))

(declare-fun m!8242336 () Bool)

(assert (=> b!7812259 m!8242336))

(declare-fun m!8242338 () Bool)

(assert (=> bm!724674 m!8242338))

(declare-fun m!8242340 () Bool)

(assert (=> d!2348818 m!8242340))

(declare-fun m!8242342 () Bool)

(assert (=> d!2348818 m!8242342))

(declare-fun m!8242344 () Bool)

(assert (=> bm!724675 m!8242344))

(assert (=> bm!724631 d!2348818))

(assert (=> b!7812034 d!2348814))

(declare-fun b!7812267 () Bool)

(declare-fun e!4623627 () Regex!20913)

(declare-fun call!724682 () Regex!20913)

(declare-fun call!724683 () Regex!20913)

(assert (=> b!7812267 (= e!4623627 (Union!20913 call!724682 call!724683))))

(declare-fun bm!724677 () Bool)

(declare-fun call!724684 () Regex!20913)

(assert (=> bm!724677 (= call!724684 call!724682)))

(declare-fun e!4623628 () Regex!20913)

(declare-fun b!7812268 () Bool)

(assert (=> b!7812268 (= e!4623628 (ite (= (h!80074 s!14225) (c!1438342 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206))))) EmptyExpr!20913 EmptyLang!20913))))

(declare-fun c!1438442 () Bool)

(declare-fun b!7812269 () Bool)

(assert (=> b!7812269 (= c!1438442 (nullable!9284 (regOne!42338 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206))))))))

(declare-fun e!4623626 () Regex!20913)

(declare-fun e!4623629 () Regex!20913)

(assert (=> b!7812269 (= e!4623626 e!4623629)))

(declare-fun call!724685 () Regex!20913)

(declare-fun b!7812270 () Bool)

(assert (=> b!7812270 (= e!4623629 (Union!20913 (Concat!29758 call!724685 (regTwo!42338 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206))))) call!724684))))

(declare-fun c!1438441 () Bool)

(declare-fun bm!724678 () Bool)

(assert (=> bm!724678 (= call!724682 (derivativeStep!6244 (ite c!1438441 (regOne!42339 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))) (ite c!1438442 (regTwo!42338 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))) (regOne!42338 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))))) (h!80074 s!14225)))))

(declare-fun b!7812271 () Bool)

(assert (=> b!7812271 (= e!4623627 e!4623626)))

(declare-fun c!1438439 () Bool)

(assert (=> b!7812271 (= c!1438439 ((_ is Star!20913) (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))))))

(declare-fun b!7812272 () Bool)

(assert (=> b!7812272 (= e!4623629 (Union!20913 (Concat!29758 call!724684 (regTwo!42338 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206))))) EmptyLang!20913))))

(declare-fun d!2348820 () Bool)

(declare-fun lt!2675916 () Regex!20913)

(assert (=> d!2348820 (validRegex!11327 lt!2675916)))

(declare-fun e!4623630 () Regex!20913)

(assert (=> d!2348820 (= lt!2675916 e!4623630)))

(declare-fun c!1438438 () Bool)

(assert (=> d!2348820 (= c!1438438 (or ((_ is EmptyExpr!20913) (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))) ((_ is EmptyLang!20913) (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206))))))))

(assert (=> d!2348820 (validRegex!11327 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206))))))

(assert (=> d!2348820 (= (derivativeStep!6244 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206))) (h!80074 s!14225)) lt!2675916)))

(declare-fun b!7812273 () Bool)

(assert (=> b!7812273 (= e!4623630 e!4623628)))

(declare-fun c!1438440 () Bool)

(assert (=> b!7812273 (= c!1438440 ((_ is ElementMatch!20913) (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))))))

(declare-fun b!7812274 () Bool)

(assert (=> b!7812274 (= c!1438441 ((_ is Union!20913) (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))))))

(assert (=> b!7812274 (= e!4623628 e!4623627)))

(declare-fun bm!724679 () Bool)

(assert (=> bm!724679 (= call!724683 (derivativeStep!6244 (ite c!1438441 (regTwo!42339 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))) (ite c!1438439 (reg!21242 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))) (regOne!42338 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))))) (h!80074 s!14225)))))

(declare-fun b!7812275 () Bool)

(assert (=> b!7812275 (= e!4623630 EmptyLang!20913)))

(declare-fun b!7812276 () Bool)

(assert (=> b!7812276 (= e!4623626 (Concat!29758 call!724685 (ite c!1438392 (regOne!42339 r1!6206) (ite c!1438393 (regTwo!42338 r1!6206) (regOne!42338 r1!6206)))))))

(declare-fun bm!724680 () Bool)

(assert (=> bm!724680 (= call!724685 call!724683)))

(assert (= (and d!2348820 c!1438438) b!7812275))

(assert (= (and d!2348820 (not c!1438438)) b!7812273))

(assert (= (and b!7812273 c!1438440) b!7812268))

(assert (= (and b!7812273 (not c!1438440)) b!7812274))

(assert (= (and b!7812274 c!1438441) b!7812267))

(assert (= (and b!7812274 (not c!1438441)) b!7812271))

(assert (= (and b!7812271 c!1438439) b!7812276))

(assert (= (and b!7812271 (not c!1438439)) b!7812269))

(assert (= (and b!7812269 c!1438442) b!7812270))

(assert (= (and b!7812269 (not c!1438442)) b!7812272))

(assert (= (or b!7812270 b!7812272) bm!724677))

(assert (= (or b!7812276 b!7812270) bm!724680))

(assert (= (or b!7812267 bm!724680) bm!724679))

(assert (= (or b!7812267 bm!724677) bm!724678))

(declare-fun m!8242346 () Bool)

(assert (=> b!7812269 m!8242346))

(declare-fun m!8242348 () Bool)

(assert (=> bm!724678 m!8242348))

(declare-fun m!8242350 () Bool)

(assert (=> d!2348820 m!8242350))

(declare-fun m!8242352 () Bool)

(assert (=> d!2348820 m!8242352))

(declare-fun m!8242354 () Bool)

(assert (=> bm!724679 m!8242354))

(assert (=> bm!724634 d!2348820))

(declare-fun b!7812277 () Bool)

(declare-fun res!3110918 () Bool)

(declare-fun e!4623636 () Bool)

(assert (=> b!7812277 (=> (not res!3110918) (not e!4623636))))

(declare-fun call!724686 () Bool)

(assert (=> b!7812277 (= res!3110918 call!724686)))

(declare-fun e!4623637 () Bool)

(assert (=> b!7812277 (= e!4623637 e!4623636)))

(declare-fun bm!724681 () Bool)

(declare-fun call!724687 () Bool)

(declare-fun call!724688 () Bool)

(assert (=> bm!724681 (= call!724687 call!724688)))

(declare-fun b!7812278 () Bool)

(declare-fun res!3110922 () Bool)

(declare-fun e!4623631 () Bool)

(assert (=> b!7812278 (=> res!3110922 e!4623631)))

(assert (=> b!7812278 (= res!3110922 (not ((_ is Concat!29758) lt!2675907)))))

(assert (=> b!7812278 (= e!4623637 e!4623631)))

(declare-fun d!2348822 () Bool)

(declare-fun res!3110920 () Bool)

(declare-fun e!4623633 () Bool)

(assert (=> d!2348822 (=> res!3110920 e!4623633)))

(assert (=> d!2348822 (= res!3110920 ((_ is ElementMatch!20913) lt!2675907))))

(assert (=> d!2348822 (= (validRegex!11327 lt!2675907) e!4623633)))

(declare-fun b!7812279 () Bool)

(assert (=> b!7812279 (= e!4623636 call!724687)))

(declare-fun b!7812280 () Bool)

(declare-fun e!4623634 () Bool)

(assert (=> b!7812280 (= e!4623634 call!724688)))

(declare-fun b!7812281 () Bool)

(declare-fun e!4623635 () Bool)

(assert (=> b!7812281 (= e!4623635 call!724687)))

(declare-fun b!7812282 () Bool)

(declare-fun e!4623632 () Bool)

(assert (=> b!7812282 (= e!4623633 e!4623632)))

(declare-fun c!1438444 () Bool)

(assert (=> b!7812282 (= c!1438444 ((_ is Star!20913) lt!2675907))))

(declare-fun bm!724682 () Bool)

(declare-fun c!1438443 () Bool)

(assert (=> bm!724682 (= call!724686 (validRegex!11327 (ite c!1438443 (regOne!42339 lt!2675907) (regOne!42338 lt!2675907))))))

(declare-fun b!7812283 () Bool)

(assert (=> b!7812283 (= e!4623632 e!4623634)))

(declare-fun res!3110921 () Bool)

(assert (=> b!7812283 (= res!3110921 (not (nullable!9284 (reg!21242 lt!2675907))))))

(assert (=> b!7812283 (=> (not res!3110921) (not e!4623634))))

(declare-fun b!7812284 () Bool)

(assert (=> b!7812284 (= e!4623632 e!4623637)))

(assert (=> b!7812284 (= c!1438443 ((_ is Union!20913) lt!2675907))))

(declare-fun b!7812285 () Bool)

(assert (=> b!7812285 (= e!4623631 e!4623635)))

(declare-fun res!3110919 () Bool)

(assert (=> b!7812285 (=> (not res!3110919) (not e!4623635))))

(assert (=> b!7812285 (= res!3110919 call!724686)))

(declare-fun bm!724683 () Bool)

(assert (=> bm!724683 (= call!724688 (validRegex!11327 (ite c!1438444 (reg!21242 lt!2675907) (ite c!1438443 (regTwo!42339 lt!2675907) (regTwo!42338 lt!2675907)))))))

(assert (= (and d!2348822 (not res!3110920)) b!7812282))

(assert (= (and b!7812282 c!1438444) b!7812283))

(assert (= (and b!7812282 (not c!1438444)) b!7812284))

(assert (= (and b!7812283 res!3110921) b!7812280))

(assert (= (and b!7812284 c!1438443) b!7812277))

(assert (= (and b!7812284 (not c!1438443)) b!7812278))

(assert (= (and b!7812277 res!3110918) b!7812279))

(assert (= (and b!7812278 (not res!3110922)) b!7812285))

(assert (= (and b!7812285 res!3110919) b!7812281))

(assert (= (or b!7812277 b!7812285) bm!724682))

(assert (= (or b!7812279 b!7812281) bm!724681))

(assert (= (or b!7812280 bm!724681) bm!724683))

(declare-fun m!8242356 () Bool)

(assert (=> bm!724682 m!8242356))

(declare-fun m!8242358 () Bool)

(assert (=> b!7812283 m!8242358))

(declare-fun m!8242360 () Bool)

(assert (=> bm!724683 m!8242360))

(assert (=> d!2348790 d!2348822))

(assert (=> d!2348790 d!2348792))

(declare-fun b!7812286 () Bool)

(declare-fun res!3110923 () Bool)

(declare-fun e!4623643 () Bool)

(assert (=> b!7812286 (=> (not res!3110923) (not e!4623643))))

(declare-fun call!724689 () Bool)

(assert (=> b!7812286 (= res!3110923 call!724689)))

(declare-fun e!4623644 () Bool)

(assert (=> b!7812286 (= e!4623644 e!4623643)))

(declare-fun bm!724684 () Bool)

(declare-fun call!724690 () Bool)

(declare-fun call!724691 () Bool)

(assert (=> bm!724684 (= call!724690 call!724691)))

(declare-fun b!7812287 () Bool)

(declare-fun res!3110927 () Bool)

(declare-fun e!4623638 () Bool)

(assert (=> b!7812287 (=> res!3110927 e!4623638)))

(assert (=> b!7812287 (= res!3110927 (not ((_ is Concat!29758) (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206))))))))

(assert (=> b!7812287 (= e!4623644 e!4623638)))

(declare-fun d!2348824 () Bool)

(declare-fun res!3110925 () Bool)

(declare-fun e!4623640 () Bool)

(assert (=> d!2348824 (=> res!3110925 e!4623640)))

(assert (=> d!2348824 (= res!3110925 ((_ is ElementMatch!20913) (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))))))

(assert (=> d!2348824 (= (validRegex!11327 (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))) e!4623640)))

(declare-fun b!7812288 () Bool)

(assert (=> b!7812288 (= e!4623643 call!724690)))

(declare-fun b!7812289 () Bool)

(declare-fun e!4623641 () Bool)

(assert (=> b!7812289 (= e!4623641 call!724691)))

(declare-fun b!7812290 () Bool)

(declare-fun e!4623642 () Bool)

(assert (=> b!7812290 (= e!4623642 call!724690)))

(declare-fun b!7812291 () Bool)

(declare-fun e!4623639 () Bool)

(assert (=> b!7812291 (= e!4623640 e!4623639)))

(declare-fun c!1438446 () Bool)

(assert (=> b!7812291 (= c!1438446 ((_ is Star!20913) (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))))))

(declare-fun bm!724685 () Bool)

(declare-fun c!1438445 () Bool)

(assert (=> bm!724685 (= call!724689 (validRegex!11327 (ite c!1438445 (regOne!42339 (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))) (regOne!42338 (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))))))))

(declare-fun b!7812292 () Bool)

(assert (=> b!7812292 (= e!4623639 e!4623641)))

(declare-fun res!3110926 () Bool)

(assert (=> b!7812292 (= res!3110926 (not (nullable!9284 (reg!21242 (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))))))))

(assert (=> b!7812292 (=> (not res!3110926) (not e!4623641))))

(declare-fun b!7812293 () Bool)

(assert (=> b!7812293 (= e!4623639 e!4623644)))

(assert (=> b!7812293 (= c!1438445 ((_ is Union!20913) (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))))))

(declare-fun b!7812294 () Bool)

(assert (=> b!7812294 (= e!4623638 e!4623642)))

(declare-fun res!3110924 () Bool)

(assert (=> b!7812294 (=> (not res!3110924) (not e!4623642))))

(assert (=> b!7812294 (= res!3110924 call!724689)))

(declare-fun bm!724686 () Bool)

(assert (=> bm!724686 (= call!724691 (validRegex!11327 (ite c!1438446 (reg!21242 (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))) (ite c!1438445 (regTwo!42339 (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206)))) (regTwo!42338 (ite c!1438395 (reg!21242 r1!6206) (ite c!1438394 (regTwo!42339 r1!6206) (regTwo!42338 r1!6206))))))))))

(assert (= (and d!2348824 (not res!3110925)) b!7812291))

(assert (= (and b!7812291 c!1438446) b!7812292))

(assert (= (and b!7812291 (not c!1438446)) b!7812293))

(assert (= (and b!7812292 res!3110926) b!7812289))

(assert (= (and b!7812293 c!1438445) b!7812286))

(assert (= (and b!7812293 (not c!1438445)) b!7812287))

(assert (= (and b!7812286 res!3110923) b!7812288))

(assert (= (and b!7812287 (not res!3110927)) b!7812294))

(assert (= (and b!7812294 res!3110924) b!7812290))

(assert (= (or b!7812286 b!7812294) bm!724685))

(assert (= (or b!7812288 b!7812290) bm!724684))

(assert (= (or b!7812289 bm!724684) bm!724686))

(declare-fun m!8242362 () Bool)

(assert (=> bm!724685 m!8242362))

(declare-fun m!8242364 () Bool)

(assert (=> b!7812292 m!8242364))

(declare-fun m!8242366 () Bool)

(assert (=> bm!724686 m!8242366))

(assert (=> bm!724639 d!2348824))

(declare-fun b!7812295 () Bool)

(declare-fun res!3110928 () Bool)

(declare-fun e!4623650 () Bool)

(assert (=> b!7812295 (=> (not res!3110928) (not e!4623650))))

(declare-fun call!724692 () Bool)

(assert (=> b!7812295 (= res!3110928 call!724692)))

(declare-fun e!4623651 () Bool)

(assert (=> b!7812295 (= e!4623651 e!4623650)))

(declare-fun bm!724687 () Bool)

(declare-fun call!724693 () Bool)

(declare-fun call!724694 () Bool)

(assert (=> bm!724687 (= call!724693 call!724694)))

(declare-fun b!7812296 () Bool)

(declare-fun res!3110932 () Bool)

(declare-fun e!4623645 () Bool)

(assert (=> b!7812296 (=> res!3110932 e!4623645)))

(assert (=> b!7812296 (= res!3110932 (not ((_ is Concat!29758) lt!2675906)))))

(assert (=> b!7812296 (= e!4623651 e!4623645)))

(declare-fun d!2348826 () Bool)

(declare-fun res!3110930 () Bool)

(declare-fun e!4623647 () Bool)

(assert (=> d!2348826 (=> res!3110930 e!4623647)))

(assert (=> d!2348826 (= res!3110930 ((_ is ElementMatch!20913) lt!2675906))))

(assert (=> d!2348826 (= (validRegex!11327 lt!2675906) e!4623647)))

(declare-fun b!7812297 () Bool)

(assert (=> b!7812297 (= e!4623650 call!724693)))

(declare-fun b!7812298 () Bool)

(declare-fun e!4623648 () Bool)

(assert (=> b!7812298 (= e!4623648 call!724694)))

(declare-fun b!7812299 () Bool)

(declare-fun e!4623649 () Bool)

(assert (=> b!7812299 (= e!4623649 call!724693)))

(declare-fun b!7812300 () Bool)

(declare-fun e!4623646 () Bool)

(assert (=> b!7812300 (= e!4623647 e!4623646)))

(declare-fun c!1438448 () Bool)

(assert (=> b!7812300 (= c!1438448 ((_ is Star!20913) lt!2675906))))

(declare-fun bm!724688 () Bool)

(declare-fun c!1438447 () Bool)

(assert (=> bm!724688 (= call!724692 (validRegex!11327 (ite c!1438447 (regOne!42339 lt!2675906) (regOne!42338 lt!2675906))))))

(declare-fun b!7812301 () Bool)

(assert (=> b!7812301 (= e!4623646 e!4623648)))

(declare-fun res!3110931 () Bool)

(assert (=> b!7812301 (= res!3110931 (not (nullable!9284 (reg!21242 lt!2675906))))))

(assert (=> b!7812301 (=> (not res!3110931) (not e!4623648))))

(declare-fun b!7812302 () Bool)

(assert (=> b!7812302 (= e!4623646 e!4623651)))

(assert (=> b!7812302 (= c!1438447 ((_ is Union!20913) lt!2675906))))

(declare-fun b!7812303 () Bool)

(assert (=> b!7812303 (= e!4623645 e!4623649)))

(declare-fun res!3110929 () Bool)

(assert (=> b!7812303 (=> (not res!3110929) (not e!4623649))))

(assert (=> b!7812303 (= res!3110929 call!724692)))

(declare-fun bm!724689 () Bool)

(assert (=> bm!724689 (= call!724694 (validRegex!11327 (ite c!1438448 (reg!21242 lt!2675906) (ite c!1438447 (regTwo!42339 lt!2675906) (regTwo!42338 lt!2675906)))))))

(assert (= (and d!2348826 (not res!3110930)) b!7812300))

(assert (= (and b!7812300 c!1438448) b!7812301))

(assert (= (and b!7812300 (not c!1438448)) b!7812302))

(assert (= (and b!7812301 res!3110931) b!7812298))

(assert (= (and b!7812302 c!1438447) b!7812295))

(assert (= (and b!7812302 (not c!1438447)) b!7812296))

(assert (= (and b!7812295 res!3110928) b!7812297))

(assert (= (and b!7812296 (not res!3110932)) b!7812303))

(assert (= (and b!7812303 res!3110929) b!7812299))

(assert (= (or b!7812295 b!7812303) bm!724688))

(assert (= (or b!7812297 b!7812299) bm!724687))

(assert (= (or b!7812298 bm!724687) bm!724689))

(declare-fun m!8242368 () Bool)

(assert (=> bm!724688 m!8242368))

(declare-fun m!8242370 () Bool)

(assert (=> b!7812301 m!8242370))

(declare-fun m!8242372 () Bool)

(assert (=> bm!724689 m!8242372))

(assert (=> d!2348788 d!2348826))

(assert (=> d!2348788 d!2348782))

(declare-fun b!7812304 () Bool)

(declare-fun res!3110933 () Bool)

(declare-fun e!4623657 () Bool)

(assert (=> b!7812304 (=> (not res!3110933) (not e!4623657))))

(declare-fun call!724695 () Bool)

(assert (=> b!7812304 (= res!3110933 call!724695)))

(declare-fun e!4623658 () Bool)

(assert (=> b!7812304 (= e!4623658 e!4623657)))

(declare-fun bm!724690 () Bool)

(declare-fun call!724696 () Bool)

(declare-fun call!724697 () Bool)

(assert (=> bm!724690 (= call!724696 call!724697)))

(declare-fun b!7812305 () Bool)

(declare-fun res!3110937 () Bool)

(declare-fun e!4623652 () Bool)

(assert (=> b!7812305 (=> res!3110937 e!4623652)))

(assert (=> b!7812305 (= res!3110937 (not ((_ is Concat!29758) (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206)))))))

(assert (=> b!7812305 (= e!4623658 e!4623652)))

(declare-fun d!2348828 () Bool)

(declare-fun res!3110935 () Bool)

(declare-fun e!4623654 () Bool)

(assert (=> d!2348828 (=> res!3110935 e!4623654)))

(assert (=> d!2348828 (= res!3110935 ((_ is ElementMatch!20913) (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))))))

(assert (=> d!2348828 (= (validRegex!11327 (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))) e!4623654)))

(declare-fun b!7812306 () Bool)

(assert (=> b!7812306 (= e!4623657 call!724696)))

(declare-fun b!7812307 () Bool)

(declare-fun e!4623655 () Bool)

(assert (=> b!7812307 (= e!4623655 call!724697)))

(declare-fun b!7812308 () Bool)

(declare-fun e!4623656 () Bool)

(assert (=> b!7812308 (= e!4623656 call!724696)))

(declare-fun b!7812309 () Bool)

(declare-fun e!4623653 () Bool)

(assert (=> b!7812309 (= e!4623654 e!4623653)))

(declare-fun c!1438450 () Bool)

(assert (=> b!7812309 (= c!1438450 ((_ is Star!20913) (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))))))

(declare-fun c!1438449 () Bool)

(declare-fun bm!724691 () Bool)

(assert (=> bm!724691 (= call!724695 (validRegex!11327 (ite c!1438449 (regOne!42339 (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))) (regOne!42338 (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))))))))

(declare-fun b!7812310 () Bool)

(assert (=> b!7812310 (= e!4623653 e!4623655)))

(declare-fun res!3110936 () Bool)

(assert (=> b!7812310 (= res!3110936 (not (nullable!9284 (reg!21242 (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))))))))

(assert (=> b!7812310 (=> (not res!3110936) (not e!4623655))))

(declare-fun b!7812311 () Bool)

(assert (=> b!7812311 (= e!4623653 e!4623658)))

(assert (=> b!7812311 (= c!1438449 ((_ is Union!20913) (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))))))

(declare-fun b!7812312 () Bool)

(assert (=> b!7812312 (= e!4623652 e!4623656)))

(declare-fun res!3110934 () Bool)

(assert (=> b!7812312 (=> (not res!3110934) (not e!4623656))))

(assert (=> b!7812312 (= res!3110934 call!724695)))

(declare-fun bm!724692 () Bool)

(assert (=> bm!724692 (= call!724697 (validRegex!11327 (ite c!1438450 (reg!21242 (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))) (ite c!1438449 (regTwo!42339 (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206))) (regTwo!42338 (ite c!1438394 (regOne!42339 r1!6206) (regOne!42338 r1!6206)))))))))

(assert (= (and d!2348828 (not res!3110935)) b!7812309))

(assert (= (and b!7812309 c!1438450) b!7812310))

(assert (= (and b!7812309 (not c!1438450)) b!7812311))

(assert (= (and b!7812310 res!3110936) b!7812307))

(assert (= (and b!7812311 c!1438449) b!7812304))

(assert (= (and b!7812311 (not c!1438449)) b!7812305))

(assert (= (and b!7812304 res!3110933) b!7812306))

(assert (= (and b!7812305 (not res!3110937)) b!7812312))

(assert (= (and b!7812312 res!3110934) b!7812308))

(assert (= (or b!7812304 b!7812312) bm!724691))

(assert (= (or b!7812306 b!7812308) bm!724690))

(assert (= (or b!7812307 bm!724690) bm!724692))

(declare-fun m!8242374 () Bool)

(assert (=> bm!724691 m!8242374))

(declare-fun m!8242376 () Bool)

(assert (=> b!7812310 m!8242376))

(declare-fun m!8242378 () Bool)

(assert (=> bm!724692 m!8242378))

(assert (=> bm!724638 d!2348828))

(declare-fun d!2348830 () Bool)

(assert (=> d!2348830 (= (isEmpty!42272 (tail!15514 s!14225)) ((_ is Nil!73626) (tail!15514 s!14225)))))

(assert (=> b!7812037 d!2348830))

(declare-fun d!2348832 () Bool)

(assert (=> d!2348832 (= (tail!15514 s!14225) (t!388485 s!14225))))

(assert (=> b!7812037 d!2348832))

(declare-fun d!2348834 () Bool)

(declare-fun nullableFct!3657 (Regex!20913) Bool)

(assert (=> d!2348834 (= (nullable!9284 (reg!21242 r1!6206)) (nullableFct!3657 (reg!21242 r1!6206)))))

(declare-fun bs!1966632 () Bool)

(assert (= bs!1966632 d!2348834))

(declare-fun m!8242380 () Bool)

(assert (=> bs!1966632 m!8242380))

(assert (=> b!7812026 d!2348834))

(declare-fun d!2348836 () Bool)

(assert (=> d!2348836 (= (nullable!9284 (regOne!42338 r1!6206)) (nullableFct!3657 (regOne!42338 r1!6206)))))

(declare-fun bs!1966633 () Bool)

(assert (= bs!1966633 d!2348836))

(declare-fun m!8242382 () Bool)

(assert (=> bs!1966633 m!8242382))

(assert (=> b!7811996 d!2348836))

(declare-fun d!2348838 () Bool)

(assert (=> d!2348838 (= (nullable!9284 (Union!20913 r1!6206 r2!6144)) (nullableFct!3657 (Union!20913 r1!6206 r2!6144)))))

(declare-fun bs!1966634 () Bool)

(assert (= bs!1966634 d!2348838))

(declare-fun m!8242384 () Bool)

(assert (=> bs!1966634 m!8242384))

(assert (=> b!7812038 d!2348838))

(declare-fun d!2348840 () Bool)

(assert (=> d!2348840 (= (nullable!9284 (reg!21242 r2!6144)) (nullableFct!3657 (reg!21242 r2!6144)))))

(declare-fun bs!1966635 () Bool)

(assert (= bs!1966635 d!2348840))

(declare-fun m!8242386 () Bool)

(assert (=> bs!1966635 m!8242386))

(assert (=> b!7811940 d!2348840))

(declare-fun b!7812313 () Bool)

(declare-fun e!4623660 () Regex!20913)

(declare-fun call!724698 () Regex!20913)

(declare-fun call!724699 () Regex!20913)

(assert (=> b!7812313 (= e!4623660 (Union!20913 call!724698 call!724699))))

(declare-fun bm!724693 () Bool)

(declare-fun call!724700 () Regex!20913)

(assert (=> bm!724693 (= call!724700 call!724698)))

(declare-fun b!7812314 () Bool)

(declare-fun e!4623661 () Regex!20913)

(assert (=> b!7812314 (= e!4623661 (ite (= (h!80074 s!14225) (c!1438342 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206))))) EmptyExpr!20913 EmptyLang!20913))))

(declare-fun c!1438455 () Bool)

(declare-fun b!7812315 () Bool)

(assert (=> b!7812315 (= c!1438455 (nullable!9284 (regOne!42338 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206))))))))

(declare-fun e!4623659 () Regex!20913)

(declare-fun e!4623662 () Regex!20913)

(assert (=> b!7812315 (= e!4623659 e!4623662)))

(declare-fun call!724701 () Regex!20913)

(declare-fun b!7812316 () Bool)

(assert (=> b!7812316 (= e!4623662 (Union!20913 (Concat!29758 call!724701 (regTwo!42338 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206))))) call!724700))))

(declare-fun c!1438454 () Bool)

(declare-fun bm!724694 () Bool)

(assert (=> bm!724694 (= call!724698 (derivativeStep!6244 (ite c!1438454 (regOne!42339 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))) (ite c!1438455 (regTwo!42338 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))) (regOne!42338 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))))) (h!80074 s!14225)))))

(declare-fun b!7812317 () Bool)

(assert (=> b!7812317 (= e!4623660 e!4623659)))

(declare-fun c!1438452 () Bool)

(assert (=> b!7812317 (= c!1438452 ((_ is Star!20913) (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))))))

(declare-fun b!7812318 () Bool)

(assert (=> b!7812318 (= e!4623662 (Union!20913 (Concat!29758 call!724700 (regTwo!42338 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206))))) EmptyLang!20913))))

(declare-fun d!2348842 () Bool)

(declare-fun lt!2675917 () Regex!20913)

(assert (=> d!2348842 (validRegex!11327 lt!2675917)))

(declare-fun e!4623663 () Regex!20913)

(assert (=> d!2348842 (= lt!2675917 e!4623663)))

(declare-fun c!1438451 () Bool)

(assert (=> d!2348842 (= c!1438451 (or ((_ is EmptyExpr!20913) (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))) ((_ is EmptyLang!20913) (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206))))))))

(assert (=> d!2348842 (validRegex!11327 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206))))))

(assert (=> d!2348842 (= (derivativeStep!6244 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206))) (h!80074 s!14225)) lt!2675917)))

(declare-fun b!7812319 () Bool)

(assert (=> b!7812319 (= e!4623663 e!4623661)))

(declare-fun c!1438453 () Bool)

(assert (=> b!7812319 (= c!1438453 ((_ is ElementMatch!20913) (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))))))

(declare-fun b!7812320 () Bool)

(assert (=> b!7812320 (= c!1438454 ((_ is Union!20913) (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))))))

(assert (=> b!7812320 (= e!4623661 e!4623660)))

(declare-fun bm!724695 () Bool)

(assert (=> bm!724695 (= call!724699 (derivativeStep!6244 (ite c!1438454 (regTwo!42339 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))) (ite c!1438452 (reg!21242 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))) (regOne!42338 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))))) (h!80074 s!14225)))))

(declare-fun b!7812321 () Bool)

(assert (=> b!7812321 (= e!4623663 EmptyLang!20913)))

(declare-fun b!7812322 () Bool)

(assert (=> b!7812322 (= e!4623659 (Concat!29758 call!724701 (ite c!1438392 (regTwo!42339 r1!6206) (ite c!1438390 (reg!21242 r1!6206) (regOne!42338 r1!6206)))))))

(declare-fun bm!724696 () Bool)

(assert (=> bm!724696 (= call!724701 call!724699)))

(assert (= (and d!2348842 c!1438451) b!7812321))

(assert (= (and d!2348842 (not c!1438451)) b!7812319))

(assert (= (and b!7812319 c!1438453) b!7812314))

(assert (= (and b!7812319 (not c!1438453)) b!7812320))

(assert (= (and b!7812320 c!1438454) b!7812313))

(assert (= (and b!7812320 (not c!1438454)) b!7812317))

(assert (= (and b!7812317 c!1438452) b!7812322))

(assert (= (and b!7812317 (not c!1438452)) b!7812315))

(assert (= (and b!7812315 c!1438455) b!7812316))

(assert (= (and b!7812315 (not c!1438455)) b!7812318))

(assert (= (or b!7812316 b!7812318) bm!724693))

(assert (= (or b!7812322 b!7812316) bm!724696))

(assert (= (or b!7812313 bm!724696) bm!724695))

(assert (= (or b!7812313 bm!724693) bm!724694))

(declare-fun m!8242388 () Bool)

(assert (=> b!7812315 m!8242388))

(declare-fun m!8242390 () Bool)

(assert (=> bm!724694 m!8242390))

(declare-fun m!8242392 () Bool)

(assert (=> d!2348842 m!8242392))

(declare-fun m!8242394 () Bool)

(assert (=> d!2348842 m!8242394))

(declare-fun m!8242396 () Bool)

(assert (=> bm!724695 m!8242396))

(assert (=> bm!724635 d!2348842))

(declare-fun b!7812323 () Bool)

(declare-fun res!3110938 () Bool)

(declare-fun e!4623669 () Bool)

(assert (=> b!7812323 (=> (not res!3110938) (not e!4623669))))

(declare-fun call!724702 () Bool)

(assert (=> b!7812323 (= res!3110938 call!724702)))

(declare-fun e!4623670 () Bool)

(assert (=> b!7812323 (= e!4623670 e!4623669)))

(declare-fun bm!724697 () Bool)

(declare-fun call!724703 () Bool)

(declare-fun call!724704 () Bool)

(assert (=> bm!724697 (= call!724703 call!724704)))

(declare-fun b!7812324 () Bool)

(declare-fun res!3110942 () Bool)

(declare-fun e!4623664 () Bool)

(assert (=> b!7812324 (=> res!3110942 e!4623664)))

(assert (=> b!7812324 (= res!3110942 (not ((_ is Concat!29758) (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898)))))))

(assert (=> b!7812324 (= e!4623670 e!4623664)))

(declare-fun d!2348844 () Bool)

(declare-fun res!3110940 () Bool)

(declare-fun e!4623666 () Bool)

(assert (=> d!2348844 (=> res!3110940 e!4623666)))

(assert (=> d!2348844 (= res!3110940 ((_ is ElementMatch!20913) (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))))))

(assert (=> d!2348844 (= (validRegex!11327 (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))) e!4623666)))

(declare-fun b!7812325 () Bool)

(assert (=> b!7812325 (= e!4623669 call!724703)))

(declare-fun b!7812326 () Bool)

(declare-fun e!4623667 () Bool)

(assert (=> b!7812326 (= e!4623667 call!724704)))

(declare-fun b!7812327 () Bool)

(declare-fun e!4623668 () Bool)

(assert (=> b!7812327 (= e!4623668 call!724703)))

(declare-fun b!7812328 () Bool)

(declare-fun e!4623665 () Bool)

(assert (=> b!7812328 (= e!4623666 e!4623665)))

(declare-fun c!1438457 () Bool)

(assert (=> b!7812328 (= c!1438457 ((_ is Star!20913) (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))))))

(declare-fun c!1438456 () Bool)

(declare-fun bm!724698 () Bool)

(assert (=> bm!724698 (= call!724702 (validRegex!11327 (ite c!1438456 (regOne!42339 (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))) (regOne!42338 (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))))))))

(declare-fun b!7812329 () Bool)

(assert (=> b!7812329 (= e!4623665 e!4623667)))

(declare-fun res!3110941 () Bool)

(assert (=> b!7812329 (= res!3110941 (not (nullable!9284 (reg!21242 (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))))))))

(assert (=> b!7812329 (=> (not res!3110941) (not e!4623667))))

(declare-fun b!7812330 () Bool)

(assert (=> b!7812330 (= e!4623665 e!4623670)))

(assert (=> b!7812330 (= c!1438456 ((_ is Union!20913) (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))))))

(declare-fun b!7812331 () Bool)

(assert (=> b!7812331 (= e!4623664 e!4623668)))

(declare-fun res!3110939 () Bool)

(assert (=> b!7812331 (=> (not res!3110939) (not e!4623668))))

(assert (=> b!7812331 (= res!3110939 call!724702)))

(declare-fun bm!724699 () Bool)

(assert (=> bm!724699 (= call!724704 (validRegex!11327 (ite c!1438457 (reg!21242 (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))) (ite c!1438456 (regTwo!42339 (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898))) (regTwo!42338 (ite c!1438366 (regOne!42339 lt!2675898) (regOne!42338 lt!2675898)))))))))

(assert (= (and d!2348844 (not res!3110940)) b!7812328))

(assert (= (and b!7812328 c!1438457) b!7812329))

(assert (= (and b!7812328 (not c!1438457)) b!7812330))

(assert (= (and b!7812329 res!3110941) b!7812326))

(assert (= (and b!7812330 c!1438456) b!7812323))

(assert (= (and b!7812330 (not c!1438456)) b!7812324))

(assert (= (and b!7812323 res!3110938) b!7812325))

(assert (= (and b!7812324 (not res!3110942)) b!7812331))

(assert (= (and b!7812331 res!3110939) b!7812327))

(assert (= (or b!7812323 b!7812331) bm!724698))

(assert (= (or b!7812325 b!7812327) bm!724697))

(assert (= (or b!7812326 bm!724697) bm!724699))

(declare-fun m!8242398 () Bool)

(assert (=> bm!724698 m!8242398))

(declare-fun m!8242400 () Bool)

(assert (=> b!7812329 m!8242400))

(declare-fun m!8242402 () Bool)

(assert (=> bm!724699 m!8242402))

(assert (=> bm!724619 d!2348844))

(declare-fun d!2348846 () Bool)

(assert (=> d!2348846 (= (nullable!9284 (regOne!42338 r2!6144)) (nullableFct!3657 (regOne!42338 r2!6144)))))

(declare-fun bs!1966636 () Bool)

(assert (= bs!1966636 d!2348846))

(declare-fun m!8242404 () Bool)

(assert (=> bs!1966636 m!8242404))

(assert (=> b!7811978 d!2348846))

(assert (=> b!7812042 d!2348830))

(assert (=> b!7812042 d!2348832))

(declare-fun b!7812332 () Bool)

(declare-fun res!3110943 () Bool)

(declare-fun e!4623676 () Bool)

(assert (=> b!7812332 (=> (not res!3110943) (not e!4623676))))

(declare-fun call!724705 () Bool)

(assert (=> b!7812332 (= res!3110943 call!724705)))

(declare-fun e!4623677 () Bool)

(assert (=> b!7812332 (= e!4623677 e!4623676)))

(declare-fun bm!724700 () Bool)

(declare-fun call!724706 () Bool)

(declare-fun call!724707 () Bool)

(assert (=> bm!724700 (= call!724706 call!724707)))

(declare-fun b!7812333 () Bool)

(declare-fun res!3110947 () Bool)

(declare-fun e!4623671 () Bool)

(assert (=> b!7812333 (=> res!3110947 e!4623671)))

(assert (=> b!7812333 (= res!3110947 (not ((_ is Concat!29758) (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144)))))))

(assert (=> b!7812333 (= e!4623677 e!4623671)))

(declare-fun d!2348848 () Bool)

(declare-fun res!3110945 () Bool)

(declare-fun e!4623673 () Bool)

(assert (=> d!2348848 (=> res!3110945 e!4623673)))

(assert (=> d!2348848 (= res!3110945 ((_ is ElementMatch!20913) (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))))))

(assert (=> d!2348848 (= (validRegex!11327 (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))) e!4623673)))

(declare-fun b!7812334 () Bool)

(assert (=> b!7812334 (= e!4623676 call!724706)))

(declare-fun b!7812335 () Bool)

(declare-fun e!4623674 () Bool)

(assert (=> b!7812335 (= e!4623674 call!724707)))

(declare-fun b!7812336 () Bool)

(declare-fun e!4623675 () Bool)

(assert (=> b!7812336 (= e!4623675 call!724706)))

(declare-fun b!7812337 () Bool)

(declare-fun e!4623672 () Bool)

(assert (=> b!7812337 (= e!4623673 e!4623672)))

(declare-fun c!1438459 () Bool)

(assert (=> b!7812337 (= c!1438459 ((_ is Star!20913) (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))))))

(declare-fun bm!724701 () Bool)

(declare-fun c!1438458 () Bool)

(assert (=> bm!724701 (= call!724705 (validRegex!11327 (ite c!1438458 (regOne!42339 (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))) (regOne!42338 (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))))))))

(declare-fun b!7812338 () Bool)

(assert (=> b!7812338 (= e!4623672 e!4623674)))

(declare-fun res!3110946 () Bool)

(assert (=> b!7812338 (= res!3110946 (not (nullable!9284 (reg!21242 (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))))))))

(assert (=> b!7812338 (=> (not res!3110946) (not e!4623674))))

(declare-fun b!7812339 () Bool)

(assert (=> b!7812339 (= e!4623672 e!4623677)))

(assert (=> b!7812339 (= c!1438458 ((_ is Union!20913) (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))))))

(declare-fun b!7812340 () Bool)

(assert (=> b!7812340 (= e!4623671 e!4623675)))

(declare-fun res!3110944 () Bool)

(assert (=> b!7812340 (=> (not res!3110944) (not e!4623675))))

(assert (=> b!7812340 (= res!3110944 call!724705)))

(declare-fun bm!724702 () Bool)

(assert (=> bm!724702 (= call!724707 (validRegex!11327 (ite c!1438459 (reg!21242 (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))) (ite c!1438458 (regTwo!42339 (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144))) (regTwo!42338 (ite c!1438364 (regOne!42339 r2!6144) (regOne!42338 r2!6144)))))))))

(assert (= (and d!2348848 (not res!3110945)) b!7812337))

(assert (= (and b!7812337 c!1438459) b!7812338))

(assert (= (and b!7812337 (not c!1438459)) b!7812339))

(assert (= (and b!7812338 res!3110946) b!7812335))

(assert (= (and b!7812339 c!1438458) b!7812332))

(assert (= (and b!7812339 (not c!1438458)) b!7812333))

(assert (= (and b!7812332 res!3110943) b!7812334))

(assert (= (and b!7812333 (not res!3110947)) b!7812340))

(assert (= (and b!7812340 res!3110944) b!7812336))

(assert (= (or b!7812332 b!7812340) bm!724701))

(assert (= (or b!7812334 b!7812336) bm!724700))

(assert (= (or b!7812335 bm!724700) bm!724702))

(declare-fun m!8242406 () Bool)

(assert (=> bm!724701 m!8242406))

(declare-fun m!8242408 () Bool)

(assert (=> b!7812338 m!8242408))

(declare-fun m!8242410 () Bool)

(assert (=> bm!724702 m!8242410))

(assert (=> bm!724616 d!2348848))

(declare-fun b!7812341 () Bool)

(declare-fun res!3110952 () Bool)

(declare-fun e!4623679 () Bool)

(assert (=> b!7812341 (=> res!3110952 e!4623679)))

(assert (=> b!7812341 (= res!3110952 (not ((_ is ElementMatch!20913) (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225))))))))

(declare-fun e!4623682 () Bool)

(assert (=> b!7812341 (= e!4623682 e!4623679)))

(declare-fun e!4623678 () Bool)

(declare-fun b!7812342 () Bool)

(assert (=> b!7812342 (= e!4623678 (matchR!10371 (derivativeStep!6244 (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225))) (head!15973 (tail!15514 (t!388485 s!14225)))) (tail!15514 (tail!15514 (t!388485 s!14225)))))))

(declare-fun b!7812343 () Bool)

(declare-fun e!4623680 () Bool)

(declare-fun lt!2675918 () Bool)

(declare-fun call!724708 () Bool)

(assert (=> b!7812343 (= e!4623680 (= lt!2675918 call!724708))))

(declare-fun b!7812344 () Bool)

(declare-fun res!3110954 () Bool)

(assert (=> b!7812344 (=> res!3110954 e!4623679)))

(declare-fun e!4623684 () Bool)

(assert (=> b!7812344 (= res!3110954 e!4623684)))

(declare-fun res!3110951 () Bool)

(assert (=> b!7812344 (=> (not res!3110951) (not e!4623684))))

(assert (=> b!7812344 (= res!3110951 lt!2675918)))

(declare-fun b!7812345 () Bool)

(declare-fun res!3110955 () Bool)

(assert (=> b!7812345 (=> (not res!3110955) (not e!4623684))))

(assert (=> b!7812345 (= res!3110955 (not call!724708))))

(declare-fun b!7812346 () Bool)

(assert (=> b!7812346 (= e!4623684 (= (head!15973 (tail!15514 (t!388485 s!14225))) (c!1438342 (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225))))))))

(declare-fun b!7812347 () Bool)

(declare-fun e!4623683 () Bool)

(assert (=> b!7812347 (= e!4623679 e!4623683)))

(declare-fun res!3110948 () Bool)

(assert (=> b!7812347 (=> (not res!3110948) (not e!4623683))))

(assert (=> b!7812347 (= res!3110948 (not lt!2675918))))

(declare-fun b!7812348 () Bool)

(declare-fun e!4623681 () Bool)

(assert (=> b!7812348 (= e!4623681 (not (= (head!15973 (tail!15514 (t!388485 s!14225))) (c!1438342 (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225)))))))))

(declare-fun b!7812349 () Bool)

(declare-fun res!3110950 () Bool)

(assert (=> b!7812349 (=> res!3110950 e!4623681)))

(assert (=> b!7812349 (= res!3110950 (not (isEmpty!42272 (tail!15514 (tail!15514 (t!388485 s!14225))))))))

(declare-fun b!7812350 () Bool)

(assert (=> b!7812350 (= e!4623678 (nullable!9284 (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225)))))))

(declare-fun b!7812351 () Bool)

(assert (=> b!7812351 (= e!4623680 e!4623682)))

(declare-fun c!1438460 () Bool)

(assert (=> b!7812351 (= c!1438460 ((_ is EmptyLang!20913) (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225)))))))

(declare-fun b!7812352 () Bool)

(assert (=> b!7812352 (= e!4623682 (not lt!2675918))))

(declare-fun b!7812353 () Bool)

(assert (=> b!7812353 (= e!4623683 e!4623681)))

(declare-fun res!3110949 () Bool)

(assert (=> b!7812353 (=> res!3110949 e!4623681)))

(assert (=> b!7812353 (= res!3110949 call!724708)))

(declare-fun b!7812354 () Bool)

(declare-fun res!3110953 () Bool)

(assert (=> b!7812354 (=> (not res!3110953) (not e!4623684))))

(assert (=> b!7812354 (= res!3110953 (isEmpty!42272 (tail!15514 (tail!15514 (t!388485 s!14225)))))))

(declare-fun bm!724703 () Bool)

(assert (=> bm!724703 (= call!724708 (isEmpty!42272 (tail!15514 (t!388485 s!14225))))))

(declare-fun d!2348850 () Bool)

(assert (=> d!2348850 e!4623680))

(declare-fun c!1438461 () Bool)

(assert (=> d!2348850 (= c!1438461 ((_ is EmptyExpr!20913) (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225)))))))

(assert (=> d!2348850 (= lt!2675918 e!4623678)))

(declare-fun c!1438462 () Bool)

(assert (=> d!2348850 (= c!1438462 (isEmpty!42272 (tail!15514 (t!388485 s!14225))))))

(assert (=> d!2348850 (validRegex!11327 (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225))))))

(assert (=> d!2348850 (= (matchR!10371 (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225))) (tail!15514 (t!388485 s!14225))) lt!2675918)))

(assert (= (and d!2348850 c!1438462) b!7812350))

(assert (= (and d!2348850 (not c!1438462)) b!7812342))

(assert (= (and d!2348850 c!1438461) b!7812343))

(assert (= (and d!2348850 (not c!1438461)) b!7812351))

(assert (= (and b!7812351 c!1438460) b!7812352))

(assert (= (and b!7812351 (not c!1438460)) b!7812341))

(assert (= (and b!7812341 (not res!3110952)) b!7812344))

(assert (= (and b!7812344 res!3110951) b!7812345))

(assert (= (and b!7812345 res!3110955) b!7812354))

(assert (= (and b!7812354 res!3110953) b!7812346))

(assert (= (and b!7812344 (not res!3110954)) b!7812347))

(assert (= (and b!7812347 res!3110948) b!7812353))

(assert (= (and b!7812353 (not res!3110949)) b!7812349))

(assert (= (and b!7812349 (not res!3110950)) b!7812348))

(assert (= (or b!7812343 b!7812345 b!7812353) bm!724703))

(assert (=> b!7812349 m!8242186))

(declare-fun m!8242412 () Bool)

(assert (=> b!7812349 m!8242412))

(assert (=> b!7812349 m!8242412))

(declare-fun m!8242414 () Bool)

(assert (=> b!7812349 m!8242414))

(assert (=> b!7812354 m!8242186))

(assert (=> b!7812354 m!8242412))

(assert (=> b!7812354 m!8242412))

(assert (=> b!7812354 m!8242414))

(assert (=> b!7812350 m!8242198))

(declare-fun m!8242416 () Bool)

(assert (=> b!7812350 m!8242416))

(assert (=> d!2348850 m!8242186))

(assert (=> d!2348850 m!8242188))

(assert (=> d!2348850 m!8242198))

(declare-fun m!8242418 () Bool)

(assert (=> d!2348850 m!8242418))

(assert (=> b!7812346 m!8242186))

(declare-fun m!8242420 () Bool)

(assert (=> b!7812346 m!8242420))

(assert (=> b!7812348 m!8242186))

(assert (=> b!7812348 m!8242420))

(assert (=> bm!724703 m!8242186))

(assert (=> bm!724703 m!8242188))

(assert (=> b!7812342 m!8242186))

(assert (=> b!7812342 m!8242420))

(assert (=> b!7812342 m!8242198))

(assert (=> b!7812342 m!8242420))

(declare-fun m!8242422 () Bool)

(assert (=> b!7812342 m!8242422))

(assert (=> b!7812342 m!8242186))

(assert (=> b!7812342 m!8242412))

(assert (=> b!7812342 m!8242422))

(assert (=> b!7812342 m!8242412))

(declare-fun m!8242424 () Bool)

(assert (=> b!7812342 m!8242424))

(assert (=> b!7811885 d!2348850))

(declare-fun b!7812355 () Bool)

(declare-fun e!4623686 () Regex!20913)

(declare-fun call!724709 () Regex!20913)

(declare-fun call!724710 () Regex!20913)

(assert (=> b!7812355 (= e!4623686 (Union!20913 call!724709 call!724710))))

(declare-fun bm!724704 () Bool)

(declare-fun call!724711 () Regex!20913)

(assert (=> bm!724704 (= call!724711 call!724709)))

(declare-fun e!4623687 () Regex!20913)

(declare-fun b!7812356 () Bool)

(assert (=> b!7812356 (= e!4623687 (ite (= (head!15973 (t!388485 s!14225)) (c!1438342 (Union!20913 lt!2675898 lt!2675897))) EmptyExpr!20913 EmptyLang!20913))))

(declare-fun b!7812357 () Bool)

(declare-fun c!1438467 () Bool)

(assert (=> b!7812357 (= c!1438467 (nullable!9284 (regOne!42338 (Union!20913 lt!2675898 lt!2675897))))))

(declare-fun e!4623685 () Regex!20913)

(declare-fun e!4623688 () Regex!20913)

(assert (=> b!7812357 (= e!4623685 e!4623688)))

(declare-fun call!724712 () Regex!20913)

(declare-fun b!7812358 () Bool)

(assert (=> b!7812358 (= e!4623688 (Union!20913 (Concat!29758 call!724712 (regTwo!42338 (Union!20913 lt!2675898 lt!2675897))) call!724711))))

(declare-fun bm!724705 () Bool)

(declare-fun c!1438466 () Bool)

(assert (=> bm!724705 (= call!724709 (derivativeStep!6244 (ite c!1438466 (regOne!42339 (Union!20913 lt!2675898 lt!2675897)) (ite c!1438467 (regTwo!42338 (Union!20913 lt!2675898 lt!2675897)) (regOne!42338 (Union!20913 lt!2675898 lt!2675897)))) (head!15973 (t!388485 s!14225))))))

(declare-fun b!7812359 () Bool)

(assert (=> b!7812359 (= e!4623686 e!4623685)))

(declare-fun c!1438464 () Bool)

(assert (=> b!7812359 (= c!1438464 ((_ is Star!20913) (Union!20913 lt!2675898 lt!2675897)))))

(declare-fun b!7812360 () Bool)

(assert (=> b!7812360 (= e!4623688 (Union!20913 (Concat!29758 call!724711 (regTwo!42338 (Union!20913 lt!2675898 lt!2675897))) EmptyLang!20913))))

(declare-fun d!2348852 () Bool)

(declare-fun lt!2675919 () Regex!20913)

(assert (=> d!2348852 (validRegex!11327 lt!2675919)))

(declare-fun e!4623689 () Regex!20913)

(assert (=> d!2348852 (= lt!2675919 e!4623689)))

(declare-fun c!1438463 () Bool)

(assert (=> d!2348852 (= c!1438463 (or ((_ is EmptyExpr!20913) (Union!20913 lt!2675898 lt!2675897)) ((_ is EmptyLang!20913) (Union!20913 lt!2675898 lt!2675897))))))

(assert (=> d!2348852 (validRegex!11327 (Union!20913 lt!2675898 lt!2675897))))

(assert (=> d!2348852 (= (derivativeStep!6244 (Union!20913 lt!2675898 lt!2675897) (head!15973 (t!388485 s!14225))) lt!2675919)))

(declare-fun b!7812361 () Bool)

(assert (=> b!7812361 (= e!4623689 e!4623687)))

(declare-fun c!1438465 () Bool)

(assert (=> b!7812361 (= c!1438465 ((_ is ElementMatch!20913) (Union!20913 lt!2675898 lt!2675897)))))

(declare-fun b!7812362 () Bool)

(assert (=> b!7812362 (= c!1438466 ((_ is Union!20913) (Union!20913 lt!2675898 lt!2675897)))))

(assert (=> b!7812362 (= e!4623687 e!4623686)))

(declare-fun bm!724706 () Bool)

(assert (=> bm!724706 (= call!724710 (derivativeStep!6244 (ite c!1438466 (regTwo!42339 (Union!20913 lt!2675898 lt!2675897)) (ite c!1438464 (reg!21242 (Union!20913 lt!2675898 lt!2675897)) (regOne!42338 (Union!20913 lt!2675898 lt!2675897)))) (head!15973 (t!388485 s!14225))))))

(declare-fun b!7812363 () Bool)

(assert (=> b!7812363 (= e!4623689 EmptyLang!20913)))

(declare-fun b!7812364 () Bool)

(assert (=> b!7812364 (= e!4623685 (Concat!29758 call!724712 (Union!20913 lt!2675898 lt!2675897)))))

(declare-fun bm!724707 () Bool)

(assert (=> bm!724707 (= call!724712 call!724710)))

(assert (= (and d!2348852 c!1438463) b!7812363))

(assert (= (and d!2348852 (not c!1438463)) b!7812361))

(assert (= (and b!7812361 c!1438465) b!7812356))

(assert (= (and b!7812361 (not c!1438465)) b!7812362))

(assert (= (and b!7812362 c!1438466) b!7812355))

(assert (= (and b!7812362 (not c!1438466)) b!7812359))

(assert (= (and b!7812359 c!1438464) b!7812364))

(assert (= (and b!7812359 (not c!1438464)) b!7812357))

(assert (= (and b!7812357 c!1438467) b!7812358))

(assert (= (and b!7812357 (not c!1438467)) b!7812360))

(assert (= (or b!7812358 b!7812360) bm!724704))

(assert (= (or b!7812364 b!7812358) bm!724707))

(assert (= (or b!7812355 bm!724707) bm!724706))

(assert (= (or b!7812355 bm!724704) bm!724705))

(declare-fun m!8242426 () Bool)

(assert (=> b!7812357 m!8242426))

(assert (=> bm!724705 m!8242196))

(declare-fun m!8242428 () Bool)

(assert (=> bm!724705 m!8242428))

(declare-fun m!8242430 () Bool)

(assert (=> d!2348852 m!8242430))

(assert (=> d!2348852 m!8242194))

(assert (=> bm!724706 m!8242196))

(declare-fun m!8242432 () Bool)

(assert (=> bm!724706 m!8242432))

(assert (=> b!7811885 d!2348852))

(declare-fun d!2348854 () Bool)

(assert (=> d!2348854 (= (head!15973 (t!388485 s!14225)) (h!80074 (t!388485 s!14225)))))

(assert (=> b!7811885 d!2348854))

(assert (=> b!7811885 d!2348810))

(declare-fun d!2348856 () Bool)

(assert (=> d!2348856 (= (isEmpty!42272 (t!388485 s!14225)) ((_ is Nil!73626) (t!388485 s!14225)))))

(assert (=> d!2348776 d!2348856))

(declare-fun b!7812365 () Bool)

(declare-fun res!3110956 () Bool)

(declare-fun e!4623695 () Bool)

(assert (=> b!7812365 (=> (not res!3110956) (not e!4623695))))

(declare-fun call!724713 () Bool)

(assert (=> b!7812365 (= res!3110956 call!724713)))

(declare-fun e!4623696 () Bool)

(assert (=> b!7812365 (= e!4623696 e!4623695)))

(declare-fun bm!724708 () Bool)

(declare-fun call!724714 () Bool)

(declare-fun call!724715 () Bool)

(assert (=> bm!724708 (= call!724714 call!724715)))

(declare-fun b!7812366 () Bool)

(declare-fun res!3110960 () Bool)

(declare-fun e!4623690 () Bool)

(assert (=> b!7812366 (=> res!3110960 e!4623690)))

(assert (=> b!7812366 (= res!3110960 (not ((_ is Concat!29758) (Union!20913 lt!2675898 lt!2675897))))))

(assert (=> b!7812366 (= e!4623696 e!4623690)))

(declare-fun d!2348858 () Bool)

(declare-fun res!3110958 () Bool)

(declare-fun e!4623692 () Bool)

(assert (=> d!2348858 (=> res!3110958 e!4623692)))

(assert (=> d!2348858 (= res!3110958 ((_ is ElementMatch!20913) (Union!20913 lt!2675898 lt!2675897)))))

(assert (=> d!2348858 (= (validRegex!11327 (Union!20913 lt!2675898 lt!2675897)) e!4623692)))

(declare-fun b!7812367 () Bool)

(assert (=> b!7812367 (= e!4623695 call!724714)))

(declare-fun b!7812368 () Bool)

(declare-fun e!4623693 () Bool)

(assert (=> b!7812368 (= e!4623693 call!724715)))

(declare-fun b!7812369 () Bool)

(declare-fun e!4623694 () Bool)

(assert (=> b!7812369 (= e!4623694 call!724714)))

(declare-fun b!7812370 () Bool)

(declare-fun e!4623691 () Bool)

(assert (=> b!7812370 (= e!4623692 e!4623691)))

(declare-fun c!1438469 () Bool)

(assert (=> b!7812370 (= c!1438469 ((_ is Star!20913) (Union!20913 lt!2675898 lt!2675897)))))

(declare-fun c!1438468 () Bool)

(declare-fun bm!724709 () Bool)

(assert (=> bm!724709 (= call!724713 (validRegex!11327 (ite c!1438468 (regOne!42339 (Union!20913 lt!2675898 lt!2675897)) (regOne!42338 (Union!20913 lt!2675898 lt!2675897)))))))

(declare-fun b!7812371 () Bool)

(assert (=> b!7812371 (= e!4623691 e!4623693)))

(declare-fun res!3110959 () Bool)

(assert (=> b!7812371 (= res!3110959 (not (nullable!9284 (reg!21242 (Union!20913 lt!2675898 lt!2675897)))))))

(assert (=> b!7812371 (=> (not res!3110959) (not e!4623693))))

(declare-fun b!7812372 () Bool)

(assert (=> b!7812372 (= e!4623691 e!4623696)))

(assert (=> b!7812372 (= c!1438468 ((_ is Union!20913) (Union!20913 lt!2675898 lt!2675897)))))

(declare-fun b!7812373 () Bool)

(assert (=> b!7812373 (= e!4623690 e!4623694)))

(declare-fun res!3110957 () Bool)

(assert (=> b!7812373 (=> (not res!3110957) (not e!4623694))))

(assert (=> b!7812373 (= res!3110957 call!724713)))

(declare-fun bm!724710 () Bool)

(assert (=> bm!724710 (= call!724715 (validRegex!11327 (ite c!1438469 (reg!21242 (Union!20913 lt!2675898 lt!2675897)) (ite c!1438468 (regTwo!42339 (Union!20913 lt!2675898 lt!2675897)) (regTwo!42338 (Union!20913 lt!2675898 lt!2675897))))))))

(assert (= (and d!2348858 (not res!3110958)) b!7812370))

(assert (= (and b!7812370 c!1438469) b!7812371))

(assert (= (and b!7812370 (not c!1438469)) b!7812372))

(assert (= (and b!7812371 res!3110959) b!7812368))

(assert (= (and b!7812372 c!1438468) b!7812365))

(assert (= (and b!7812372 (not c!1438468)) b!7812366))

(assert (= (and b!7812365 res!3110956) b!7812367))

(assert (= (and b!7812366 (not res!3110960)) b!7812373))

(assert (= (and b!7812373 res!3110957) b!7812369))

(assert (= (or b!7812365 b!7812373) bm!724709))

(assert (= (or b!7812367 b!7812369) bm!724708))

(assert (= (or b!7812368 bm!724708) bm!724710))

(declare-fun m!8242434 () Bool)

(assert (=> bm!724709 m!8242434))

(declare-fun m!8242436 () Bool)

(assert (=> b!7812371 m!8242436))

(declare-fun m!8242438 () Bool)

(assert (=> bm!724710 m!8242438))

(assert (=> d!2348776 d!2348858))

(declare-fun b!7812374 () Bool)

(declare-fun res!3110961 () Bool)

(declare-fun e!4623702 () Bool)

(assert (=> b!7812374 (=> (not res!3110961) (not e!4623702))))

(declare-fun call!724716 () Bool)

(assert (=> b!7812374 (= res!3110961 call!724716)))

(declare-fun e!4623703 () Bool)

(assert (=> b!7812374 (= e!4623703 e!4623702)))

(declare-fun bm!724711 () Bool)

(declare-fun call!724717 () Bool)

(declare-fun call!724718 () Bool)

(assert (=> bm!724711 (= call!724717 call!724718)))

(declare-fun b!7812375 () Bool)

(declare-fun res!3110965 () Bool)

(declare-fun e!4623697 () Bool)

(assert (=> b!7812375 (=> res!3110965 e!4623697)))

(assert (=> b!7812375 (= res!3110965 (not ((_ is Concat!29758) (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898))))))))

(assert (=> b!7812375 (= e!4623703 e!4623697)))

(declare-fun d!2348860 () Bool)

(declare-fun res!3110963 () Bool)

(declare-fun e!4623699 () Bool)

(assert (=> d!2348860 (=> res!3110963 e!4623699)))

(assert (=> d!2348860 (= res!3110963 ((_ is ElementMatch!20913) (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))))))

(assert (=> d!2348860 (= (validRegex!11327 (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))) e!4623699)))

(declare-fun b!7812376 () Bool)

(assert (=> b!7812376 (= e!4623702 call!724717)))

(declare-fun b!7812377 () Bool)

(declare-fun e!4623700 () Bool)

(assert (=> b!7812377 (= e!4623700 call!724718)))

(declare-fun b!7812378 () Bool)

(declare-fun e!4623701 () Bool)

(assert (=> b!7812378 (= e!4623701 call!724717)))

(declare-fun b!7812379 () Bool)

(declare-fun e!4623698 () Bool)

(assert (=> b!7812379 (= e!4623699 e!4623698)))

(declare-fun c!1438471 () Bool)

(assert (=> b!7812379 (= c!1438471 ((_ is Star!20913) (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))))))

(declare-fun bm!724712 () Bool)

(declare-fun c!1438470 () Bool)

(assert (=> bm!724712 (= call!724716 (validRegex!11327 (ite c!1438470 (regOne!42339 (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))) (regOne!42338 (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))))))))

(declare-fun b!7812380 () Bool)

(assert (=> b!7812380 (= e!4623698 e!4623700)))

(declare-fun res!3110964 () Bool)

(assert (=> b!7812380 (= res!3110964 (not (nullable!9284 (reg!21242 (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))))))))

(assert (=> b!7812380 (=> (not res!3110964) (not e!4623700))))

(declare-fun b!7812381 () Bool)

(assert (=> b!7812381 (= e!4623698 e!4623703)))

(assert (=> b!7812381 (= c!1438470 ((_ is Union!20913) (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))))))

(declare-fun b!7812382 () Bool)

(assert (=> b!7812382 (= e!4623697 e!4623701)))

(declare-fun res!3110962 () Bool)

(assert (=> b!7812382 (=> (not res!3110962) (not e!4623701))))

(assert (=> b!7812382 (= res!3110962 call!724716)))

(declare-fun bm!724713 () Bool)

(assert (=> bm!724713 (= call!724718 (validRegex!11327 (ite c!1438471 (reg!21242 (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))) (ite c!1438470 (regTwo!42339 (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898)))) (regTwo!42338 (ite c!1438367 (reg!21242 lt!2675898) (ite c!1438366 (regTwo!42339 lt!2675898) (regTwo!42338 lt!2675898))))))))))

(assert (= (and d!2348860 (not res!3110963)) b!7812379))

(assert (= (and b!7812379 c!1438471) b!7812380))

(assert (= (and b!7812379 (not c!1438471)) b!7812381))

(assert (= (and b!7812380 res!3110964) b!7812377))

(assert (= (and b!7812381 c!1438470) b!7812374))

(assert (= (and b!7812381 (not c!1438470)) b!7812375))

(assert (= (and b!7812374 res!3110961) b!7812376))

(assert (= (and b!7812375 (not res!3110965)) b!7812382))

(assert (= (and b!7812382 res!3110962) b!7812378))

(assert (= (or b!7812374 b!7812382) bm!724712))

(assert (= (or b!7812376 b!7812378) bm!724711))

(assert (= (or b!7812377 bm!724711) bm!724713))

(declare-fun m!8242440 () Bool)

(assert (=> bm!724712 m!8242440))

(declare-fun m!8242442 () Bool)

(assert (=> b!7812380 m!8242442))

(declare-fun m!8242444 () Bool)

(assert (=> bm!724713 m!8242444))

(assert (=> bm!724620 d!2348860))

(declare-fun d!2348862 () Bool)

(assert (=> d!2348862 (= (nullable!9284 (reg!21242 lt!2675897)) (nullableFct!3657 (reg!21242 lt!2675897)))))

(declare-fun bs!1966637 () Bool)

(assert (= bs!1966637 d!2348862))

(declare-fun m!8242446 () Bool)

(assert (=> bs!1966637 m!8242446))

(assert (=> b!7811931 d!2348862))

(declare-fun b!7812383 () Bool)

(declare-fun res!3110966 () Bool)

(declare-fun e!4623709 () Bool)

(assert (=> b!7812383 (=> (not res!3110966) (not e!4623709))))

(declare-fun call!724719 () Bool)

(assert (=> b!7812383 (= res!3110966 call!724719)))

(declare-fun e!4623710 () Bool)

(assert (=> b!7812383 (= e!4623710 e!4623709)))

(declare-fun bm!724714 () Bool)

(declare-fun call!724720 () Bool)

(declare-fun call!724721 () Bool)

(assert (=> bm!724714 (= call!724720 call!724721)))

(declare-fun b!7812384 () Bool)

(declare-fun res!3110970 () Bool)

(declare-fun e!4623704 () Bool)

(assert (=> b!7812384 (=> res!3110970 e!4623704)))

(assert (=> b!7812384 (= res!3110970 (not ((_ is Concat!29758) (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897)))))))

(assert (=> b!7812384 (= e!4623710 e!4623704)))

(declare-fun d!2348864 () Bool)

(declare-fun res!3110968 () Bool)

(declare-fun e!4623706 () Bool)

(assert (=> d!2348864 (=> res!3110968 e!4623706)))

(assert (=> d!2348864 (= res!3110968 ((_ is ElementMatch!20913) (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))))))

(assert (=> d!2348864 (= (validRegex!11327 (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))) e!4623706)))

(declare-fun b!7812385 () Bool)

(assert (=> b!7812385 (= e!4623709 call!724720)))

(declare-fun b!7812386 () Bool)

(declare-fun e!4623707 () Bool)

(assert (=> b!7812386 (= e!4623707 call!724721)))

(declare-fun b!7812387 () Bool)

(declare-fun e!4623708 () Bool)

(assert (=> b!7812387 (= e!4623708 call!724720)))

(declare-fun b!7812388 () Bool)

(declare-fun e!4623705 () Bool)

(assert (=> b!7812388 (= e!4623706 e!4623705)))

(declare-fun c!1438473 () Bool)

(assert (=> b!7812388 (= c!1438473 ((_ is Star!20913) (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))))))

(declare-fun bm!724715 () Bool)

(declare-fun c!1438472 () Bool)

(assert (=> bm!724715 (= call!724719 (validRegex!11327 (ite c!1438472 (regOne!42339 (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))) (regOne!42338 (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))))))))

(declare-fun b!7812389 () Bool)

(assert (=> b!7812389 (= e!4623705 e!4623707)))

(declare-fun res!3110969 () Bool)

(assert (=> b!7812389 (= res!3110969 (not (nullable!9284 (reg!21242 (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))))))))

(assert (=> b!7812389 (=> (not res!3110969) (not e!4623707))))

(declare-fun b!7812390 () Bool)

(assert (=> b!7812390 (= e!4623705 e!4623710)))

(assert (=> b!7812390 (= c!1438472 ((_ is Union!20913) (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))))))

(declare-fun b!7812391 () Bool)

(assert (=> b!7812391 (= e!4623704 e!4623708)))

(declare-fun res!3110967 () Bool)

(assert (=> b!7812391 (=> (not res!3110967) (not e!4623708))))

(assert (=> b!7812391 (= res!3110967 call!724719)))

(declare-fun bm!724716 () Bool)

(assert (=> bm!724716 (= call!724721 (validRegex!11327 (ite c!1438473 (reg!21242 (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))) (ite c!1438472 (regTwo!42339 (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897))) (regTwo!42338 (ite c!1438362 (regOne!42339 lt!2675897) (regOne!42338 lt!2675897)))))))))

(assert (= (and d!2348864 (not res!3110968)) b!7812388))

(assert (= (and b!7812388 c!1438473) b!7812389))

(assert (= (and b!7812388 (not c!1438473)) b!7812390))

(assert (= (and b!7812389 res!3110969) b!7812386))

(assert (= (and b!7812390 c!1438472) b!7812383))

(assert (= (and b!7812390 (not c!1438472)) b!7812384))

(assert (= (and b!7812383 res!3110966) b!7812385))

(assert (= (and b!7812384 (not res!3110970)) b!7812391))

(assert (= (and b!7812391 res!3110967) b!7812387))

(assert (= (or b!7812383 b!7812391) bm!724715))

(assert (= (or b!7812385 b!7812387) bm!724714))

(assert (= (or b!7812386 bm!724714) bm!724716))

(declare-fun m!8242448 () Bool)

(assert (=> bm!724715 m!8242448))

(declare-fun m!8242450 () Bool)

(assert (=> b!7812389 m!8242450))

(declare-fun m!8242452 () Bool)

(assert (=> bm!724716 m!8242452))

(assert (=> bm!724613 d!2348864))

(declare-fun b!7812392 () Bool)

(declare-fun res!3110975 () Bool)

(declare-fun e!4623712 () Bool)

(assert (=> b!7812392 (=> res!3110975 e!4623712)))

(assert (=> b!7812392 (= res!3110975 (not ((_ is ElementMatch!20913) (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225)))))))

(declare-fun e!4623715 () Bool)

(assert (=> b!7812392 (= e!4623715 e!4623712)))

(declare-fun e!4623711 () Bool)

(declare-fun b!7812393 () Bool)

(assert (=> b!7812393 (= e!4623711 (matchR!10371 (derivativeStep!6244 (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225)) (head!15973 (tail!15514 s!14225))) (tail!15514 (tail!15514 s!14225))))))

(declare-fun b!7812394 () Bool)

(declare-fun e!4623713 () Bool)

(declare-fun lt!2675920 () Bool)

(declare-fun call!724722 () Bool)

(assert (=> b!7812394 (= e!4623713 (= lt!2675920 call!724722))))

(declare-fun b!7812395 () Bool)

(declare-fun res!3110977 () Bool)

(assert (=> b!7812395 (=> res!3110977 e!4623712)))

(declare-fun e!4623717 () Bool)

(assert (=> b!7812395 (= res!3110977 e!4623717)))

(declare-fun res!3110974 () Bool)

(assert (=> b!7812395 (=> (not res!3110974) (not e!4623717))))

(assert (=> b!7812395 (= res!3110974 lt!2675920)))

(declare-fun b!7812396 () Bool)

(declare-fun res!3110978 () Bool)

(assert (=> b!7812396 (=> (not res!3110978) (not e!4623717))))

(assert (=> b!7812396 (= res!3110978 (not call!724722))))

(declare-fun b!7812397 () Bool)

(assert (=> b!7812397 (= e!4623717 (= (head!15973 (tail!15514 s!14225)) (c!1438342 (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225)))))))

(declare-fun b!7812398 () Bool)

(declare-fun e!4623716 () Bool)

(assert (=> b!7812398 (= e!4623712 e!4623716)))

(declare-fun res!3110971 () Bool)

(assert (=> b!7812398 (=> (not res!3110971) (not e!4623716))))

(assert (=> b!7812398 (= res!3110971 (not lt!2675920))))

(declare-fun b!7812399 () Bool)

(declare-fun e!4623714 () Bool)

(assert (=> b!7812399 (= e!4623714 (not (= (head!15973 (tail!15514 s!14225)) (c!1438342 (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225))))))))

(declare-fun b!7812400 () Bool)

(declare-fun res!3110973 () Bool)

(assert (=> b!7812400 (=> res!3110973 e!4623714)))

(assert (=> b!7812400 (= res!3110973 (not (isEmpty!42272 (tail!15514 (tail!15514 s!14225)))))))

(declare-fun b!7812401 () Bool)

(assert (=> b!7812401 (= e!4623711 (nullable!9284 (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225))))))

(declare-fun b!7812402 () Bool)

(assert (=> b!7812402 (= e!4623713 e!4623715)))

(declare-fun c!1438474 () Bool)

(assert (=> b!7812402 (= c!1438474 ((_ is EmptyLang!20913) (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225))))))

(declare-fun b!7812403 () Bool)

(assert (=> b!7812403 (= e!4623715 (not lt!2675920))))

(declare-fun b!7812404 () Bool)

(assert (=> b!7812404 (= e!4623716 e!4623714)))

(declare-fun res!3110972 () Bool)

(assert (=> b!7812404 (=> res!3110972 e!4623714)))

(assert (=> b!7812404 (= res!3110972 call!724722)))

(declare-fun b!7812405 () Bool)

(declare-fun res!3110976 () Bool)

(assert (=> b!7812405 (=> (not res!3110976) (not e!4623717))))

(assert (=> b!7812405 (= res!3110976 (isEmpty!42272 (tail!15514 (tail!15514 s!14225))))))

(declare-fun bm!724717 () Bool)

(assert (=> bm!724717 (= call!724722 (isEmpty!42272 (tail!15514 s!14225)))))

(declare-fun d!2348866 () Bool)

(assert (=> d!2348866 e!4623713))

(declare-fun c!1438475 () Bool)

(assert (=> d!2348866 (= c!1438475 ((_ is EmptyExpr!20913) (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225))))))

(assert (=> d!2348866 (= lt!2675920 e!4623711)))

(declare-fun c!1438476 () Bool)

(assert (=> d!2348866 (= c!1438476 (isEmpty!42272 (tail!15514 s!14225)))))

(assert (=> d!2348866 (validRegex!11327 (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225)))))

(assert (=> d!2348866 (= (matchR!10371 (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225)) (tail!15514 s!14225)) lt!2675920)))

(assert (= (and d!2348866 c!1438476) b!7812401))

(assert (= (and d!2348866 (not c!1438476)) b!7812393))

(assert (= (and d!2348866 c!1438475) b!7812394))

(assert (= (and d!2348866 (not c!1438475)) b!7812402))

(assert (= (and b!7812402 c!1438474) b!7812403))

(assert (= (and b!7812402 (not c!1438474)) b!7812392))

(assert (= (and b!7812392 (not res!3110975)) b!7812395))

(assert (= (and b!7812395 res!3110974) b!7812396))

(assert (= (and b!7812396 res!3110978) b!7812405))

(assert (= (and b!7812405 res!3110976) b!7812397))

(assert (= (and b!7812395 (not res!3110977)) b!7812398))

(assert (= (and b!7812398 res!3110971) b!7812404))

(assert (= (and b!7812404 (not res!3110972)) b!7812400))

(assert (= (and b!7812400 (not res!3110973)) b!7812399))

(assert (= (or b!7812394 b!7812396 b!7812404) bm!724717))

(assert (=> b!7812400 m!8242248))

(declare-fun m!8242454 () Bool)

(assert (=> b!7812400 m!8242454))

(assert (=> b!7812400 m!8242454))

(declare-fun m!8242456 () Bool)

(assert (=> b!7812400 m!8242456))

(assert (=> b!7812405 m!8242248))

(assert (=> b!7812405 m!8242454))

(assert (=> b!7812405 m!8242454))

(assert (=> b!7812405 m!8242456))

(assert (=> b!7812401 m!8242260))

(declare-fun m!8242458 () Bool)

(assert (=> b!7812401 m!8242458))

(assert (=> d!2348866 m!8242248))

(assert (=> d!2348866 m!8242250))

(assert (=> d!2348866 m!8242260))

(declare-fun m!8242460 () Bool)

(assert (=> d!2348866 m!8242460))

(assert (=> b!7812397 m!8242248))

(declare-fun m!8242462 () Bool)

(assert (=> b!7812397 m!8242462))

(assert (=> b!7812399 m!8242248))

(assert (=> b!7812399 m!8242462))

(assert (=> bm!724717 m!8242248))

(assert (=> bm!724717 m!8242250))

(assert (=> b!7812393 m!8242248))

(assert (=> b!7812393 m!8242462))

(assert (=> b!7812393 m!8242260))

(assert (=> b!7812393 m!8242462))

(declare-fun m!8242464 () Bool)

(assert (=> b!7812393 m!8242464))

(assert (=> b!7812393 m!8242248))

(assert (=> b!7812393 m!8242454))

(assert (=> b!7812393 m!8242464))

(assert (=> b!7812393 m!8242454))

(declare-fun m!8242466 () Bool)

(assert (=> b!7812393 m!8242466))

(assert (=> b!7812030 d!2348866))

(declare-fun b!7812406 () Bool)

(declare-fun e!4623719 () Regex!20913)

(declare-fun call!724723 () Regex!20913)

(declare-fun call!724724 () Regex!20913)

(assert (=> b!7812406 (= e!4623719 (Union!20913 call!724723 call!724724))))

(declare-fun bm!724718 () Bool)

(declare-fun call!724725 () Regex!20913)

(assert (=> bm!724718 (= call!724725 call!724723)))

(declare-fun b!7812407 () Bool)

(declare-fun e!4623720 () Regex!20913)

(assert (=> b!7812407 (= e!4623720 (ite (= (head!15973 s!14225) (c!1438342 (Union!20913 r1!6206 r2!6144))) EmptyExpr!20913 EmptyLang!20913))))

(declare-fun b!7812408 () Bool)

(declare-fun c!1438481 () Bool)

(assert (=> b!7812408 (= c!1438481 (nullable!9284 (regOne!42338 (Union!20913 r1!6206 r2!6144))))))

(declare-fun e!4623718 () Regex!20913)

(declare-fun e!4623721 () Regex!20913)

(assert (=> b!7812408 (= e!4623718 e!4623721)))

(declare-fun call!724726 () Regex!20913)

(declare-fun b!7812409 () Bool)

(assert (=> b!7812409 (= e!4623721 (Union!20913 (Concat!29758 call!724726 (regTwo!42338 (Union!20913 r1!6206 r2!6144))) call!724725))))

(declare-fun bm!724719 () Bool)

(declare-fun c!1438480 () Bool)

(assert (=> bm!724719 (= call!724723 (derivativeStep!6244 (ite c!1438480 (regOne!42339 (Union!20913 r1!6206 r2!6144)) (ite c!1438481 (regTwo!42338 (Union!20913 r1!6206 r2!6144)) (regOne!42338 (Union!20913 r1!6206 r2!6144)))) (head!15973 s!14225)))))

(declare-fun b!7812410 () Bool)

(assert (=> b!7812410 (= e!4623719 e!4623718)))

(declare-fun c!1438478 () Bool)

(assert (=> b!7812410 (= c!1438478 ((_ is Star!20913) (Union!20913 r1!6206 r2!6144)))))

(declare-fun b!7812411 () Bool)

(assert (=> b!7812411 (= e!4623721 (Union!20913 (Concat!29758 call!724725 (regTwo!42338 (Union!20913 r1!6206 r2!6144))) EmptyLang!20913))))

(declare-fun d!2348868 () Bool)

(declare-fun lt!2675921 () Regex!20913)

(assert (=> d!2348868 (validRegex!11327 lt!2675921)))

(declare-fun e!4623722 () Regex!20913)

(assert (=> d!2348868 (= lt!2675921 e!4623722)))

(declare-fun c!1438477 () Bool)

(assert (=> d!2348868 (= c!1438477 (or ((_ is EmptyExpr!20913) (Union!20913 r1!6206 r2!6144)) ((_ is EmptyLang!20913) (Union!20913 r1!6206 r2!6144))))))

(assert (=> d!2348868 (validRegex!11327 (Union!20913 r1!6206 r2!6144))))

(assert (=> d!2348868 (= (derivativeStep!6244 (Union!20913 r1!6206 r2!6144) (head!15973 s!14225)) lt!2675921)))

(declare-fun b!7812412 () Bool)

(assert (=> b!7812412 (= e!4623722 e!4623720)))

(declare-fun c!1438479 () Bool)

(assert (=> b!7812412 (= c!1438479 ((_ is ElementMatch!20913) (Union!20913 r1!6206 r2!6144)))))

(declare-fun b!7812413 () Bool)

(assert (=> b!7812413 (= c!1438480 ((_ is Union!20913) (Union!20913 r1!6206 r2!6144)))))

(assert (=> b!7812413 (= e!4623720 e!4623719)))

(declare-fun bm!724720 () Bool)

(assert (=> bm!724720 (= call!724724 (derivativeStep!6244 (ite c!1438480 (regTwo!42339 (Union!20913 r1!6206 r2!6144)) (ite c!1438478 (reg!21242 (Union!20913 r1!6206 r2!6144)) (regOne!42338 (Union!20913 r1!6206 r2!6144)))) (head!15973 s!14225)))))

(declare-fun b!7812414 () Bool)

(assert (=> b!7812414 (= e!4623722 EmptyLang!20913)))

(declare-fun b!7812415 () Bool)

(assert (=> b!7812415 (= e!4623718 (Concat!29758 call!724726 (Union!20913 r1!6206 r2!6144)))))

(declare-fun bm!724721 () Bool)

(assert (=> bm!724721 (= call!724726 call!724724)))

(assert (= (and d!2348868 c!1438477) b!7812414))

(assert (= (and d!2348868 (not c!1438477)) b!7812412))

(assert (= (and b!7812412 c!1438479) b!7812407))

(assert (= (and b!7812412 (not c!1438479)) b!7812413))

(assert (= (and b!7812413 c!1438480) b!7812406))

(assert (= (and b!7812413 (not c!1438480)) b!7812410))

(assert (= (and b!7812410 c!1438478) b!7812415))

(assert (= (and b!7812410 (not c!1438478)) b!7812408))

(assert (= (and b!7812408 c!1438481) b!7812409))

(assert (= (and b!7812408 (not c!1438481)) b!7812411))

(assert (= (or b!7812409 b!7812411) bm!724718))

(assert (= (or b!7812415 b!7812409) bm!724721))

(assert (= (or b!7812406 bm!724721) bm!724720))

(assert (= (or b!7812406 bm!724718) bm!724719))

(declare-fun m!8242468 () Bool)

(assert (=> b!7812408 m!8242468))

(assert (=> bm!724719 m!8242258))

(declare-fun m!8242470 () Bool)

(assert (=> bm!724719 m!8242470))

(declare-fun m!8242472 () Bool)

(assert (=> d!2348868 m!8242472))

(assert (=> d!2348868 m!8242256))

(assert (=> bm!724720 m!8242258))

(declare-fun m!8242474 () Bool)

(assert (=> bm!724720 m!8242474))

(assert (=> b!7812030 d!2348868))

(assert (=> b!7812030 d!2348814))

(assert (=> b!7812030 d!2348832))

(assert (=> b!7811891 d!2348854))

(declare-fun d!2348870 () Bool)

(assert (=> d!2348870 (= (nullable!9284 (Union!20913 lt!2675898 lt!2675897)) (nullableFct!3657 (Union!20913 lt!2675898 lt!2675897)))))

(declare-fun bs!1966638 () Bool)

(assert (= bs!1966638 d!2348870))

(declare-fun m!8242476 () Bool)

(assert (=> bs!1966638 m!8242476))

(assert (=> b!7811893 d!2348870))

(assert (=> b!7811892 d!2348808))

(assert (=> b!7811892 d!2348810))

(assert (=> bm!724596 d!2348856))

(declare-fun b!7812416 () Bool)

(declare-fun res!3110979 () Bool)

(declare-fun e!4623728 () Bool)

(assert (=> b!7812416 (=> (not res!3110979) (not e!4623728))))

(declare-fun call!724727 () Bool)

(assert (=> b!7812416 (= res!3110979 call!724727)))

(declare-fun e!4623729 () Bool)

(assert (=> b!7812416 (= e!4623729 e!4623728)))

(declare-fun bm!724722 () Bool)

(declare-fun call!724728 () Bool)

(declare-fun call!724729 () Bool)

(assert (=> bm!724722 (= call!724728 call!724729)))

(declare-fun b!7812417 () Bool)

(declare-fun res!3110983 () Bool)

(declare-fun e!4623723 () Bool)

(assert (=> b!7812417 (=> res!3110983 e!4623723)))

(assert (=> b!7812417 (= res!3110983 (not ((_ is Concat!29758) (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144))))))))

(assert (=> b!7812417 (= e!4623729 e!4623723)))

(declare-fun d!2348872 () Bool)

(declare-fun res!3110981 () Bool)

(declare-fun e!4623725 () Bool)

(assert (=> d!2348872 (=> res!3110981 e!4623725)))

(assert (=> d!2348872 (= res!3110981 ((_ is ElementMatch!20913) (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))))))

(assert (=> d!2348872 (= (validRegex!11327 (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))) e!4623725)))

(declare-fun b!7812418 () Bool)

(assert (=> b!7812418 (= e!4623728 call!724728)))

(declare-fun b!7812419 () Bool)

(declare-fun e!4623726 () Bool)

(assert (=> b!7812419 (= e!4623726 call!724729)))

(declare-fun b!7812420 () Bool)

(declare-fun e!4623727 () Bool)

(assert (=> b!7812420 (= e!4623727 call!724728)))

(declare-fun b!7812421 () Bool)

(declare-fun e!4623724 () Bool)

(assert (=> b!7812421 (= e!4623725 e!4623724)))

(declare-fun c!1438483 () Bool)

(assert (=> b!7812421 (= c!1438483 ((_ is Star!20913) (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))))))

(declare-fun bm!724723 () Bool)

(declare-fun c!1438482 () Bool)

(assert (=> bm!724723 (= call!724727 (validRegex!11327 (ite c!1438482 (regOne!42339 (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))) (regOne!42338 (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))))))))

(declare-fun b!7812422 () Bool)

(assert (=> b!7812422 (= e!4623724 e!4623726)))

(declare-fun res!3110982 () Bool)

(assert (=> b!7812422 (= res!3110982 (not (nullable!9284 (reg!21242 (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))))))))

(assert (=> b!7812422 (=> (not res!3110982) (not e!4623726))))

(declare-fun b!7812423 () Bool)

(assert (=> b!7812423 (= e!4623724 e!4623729)))

(assert (=> b!7812423 (= c!1438482 ((_ is Union!20913) (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))))))

(declare-fun b!7812424 () Bool)

(assert (=> b!7812424 (= e!4623723 e!4623727)))

(declare-fun res!3110980 () Bool)

(assert (=> b!7812424 (=> (not res!3110980) (not e!4623727))))

(assert (=> b!7812424 (= res!3110980 call!724727)))

(declare-fun bm!724724 () Bool)

(assert (=> bm!724724 (= call!724729 (validRegex!11327 (ite c!1438483 (reg!21242 (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))) (ite c!1438482 (regTwo!42339 (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144)))) (regTwo!42338 (ite c!1438365 (reg!21242 r2!6144) (ite c!1438364 (regTwo!42339 r2!6144) (regTwo!42338 r2!6144))))))))))

(assert (= (and d!2348872 (not res!3110981)) b!7812421))

(assert (= (and b!7812421 c!1438483) b!7812422))

(assert (= (and b!7812421 (not c!1438483)) b!7812423))

(assert (= (and b!7812422 res!3110982) b!7812419))

(assert (= (and b!7812423 c!1438482) b!7812416))

(assert (= (and b!7812423 (not c!1438482)) b!7812417))

(assert (= (and b!7812416 res!3110979) b!7812418))

(assert (= (and b!7812417 (not res!3110983)) b!7812424))

(assert (= (and b!7812424 res!3110980) b!7812420))

(assert (= (or b!7812416 b!7812424) bm!724723))

(assert (= (or b!7812418 b!7812420) bm!724722))

(assert (= (or b!7812419 bm!724722) bm!724724))

(declare-fun m!8242478 () Bool)

(assert (=> bm!724723 m!8242478))

(declare-fun m!8242480 () Bool)

(assert (=> b!7812422 m!8242480))

(declare-fun m!8242482 () Bool)

(assert (=> bm!724724 m!8242482))

(assert (=> bm!724617 d!2348872))

(assert (=> b!7811889 d!2348854))

(declare-fun d!2348874 () Bool)

(assert (=> d!2348874 (= (nullable!9284 (reg!21242 lt!2675898)) (nullableFct!3657 (reg!21242 lt!2675898)))))

(declare-fun bs!1966639 () Bool)

(assert (= bs!1966639 d!2348874))

(declare-fun m!8242484 () Bool)

(assert (=> bs!1966639 m!8242484))

(assert (=> b!7811949 d!2348874))

(assert (=> d!2348794 d!2348812))

(declare-fun b!7812425 () Bool)

(declare-fun res!3110984 () Bool)

(declare-fun e!4623735 () Bool)

(assert (=> b!7812425 (=> (not res!3110984) (not e!4623735))))

(declare-fun call!724730 () Bool)

(assert (=> b!7812425 (= res!3110984 call!724730)))

(declare-fun e!4623736 () Bool)

(assert (=> b!7812425 (= e!4623736 e!4623735)))

(declare-fun bm!724725 () Bool)

(declare-fun call!724731 () Bool)

(declare-fun call!724732 () Bool)

(assert (=> bm!724725 (= call!724731 call!724732)))

(declare-fun b!7812426 () Bool)

(declare-fun res!3110988 () Bool)

(declare-fun e!4623730 () Bool)

(assert (=> b!7812426 (=> res!3110988 e!4623730)))

(assert (=> b!7812426 (= res!3110988 (not ((_ is Concat!29758) (Union!20913 r1!6206 r2!6144))))))

(assert (=> b!7812426 (= e!4623736 e!4623730)))

(declare-fun d!2348876 () Bool)

(declare-fun res!3110986 () Bool)

(declare-fun e!4623732 () Bool)

(assert (=> d!2348876 (=> res!3110986 e!4623732)))

(assert (=> d!2348876 (= res!3110986 ((_ is ElementMatch!20913) (Union!20913 r1!6206 r2!6144)))))

(assert (=> d!2348876 (= (validRegex!11327 (Union!20913 r1!6206 r2!6144)) e!4623732)))

(declare-fun b!7812427 () Bool)

(assert (=> b!7812427 (= e!4623735 call!724731)))

(declare-fun b!7812428 () Bool)

(declare-fun e!4623733 () Bool)

(assert (=> b!7812428 (= e!4623733 call!724732)))

(declare-fun b!7812429 () Bool)

(declare-fun e!4623734 () Bool)

(assert (=> b!7812429 (= e!4623734 call!724731)))

(declare-fun b!7812430 () Bool)

(declare-fun e!4623731 () Bool)

(assert (=> b!7812430 (= e!4623732 e!4623731)))

(declare-fun c!1438485 () Bool)

(assert (=> b!7812430 (= c!1438485 ((_ is Star!20913) (Union!20913 r1!6206 r2!6144)))))

(declare-fun bm!724726 () Bool)

(declare-fun c!1438484 () Bool)

(assert (=> bm!724726 (= call!724730 (validRegex!11327 (ite c!1438484 (regOne!42339 (Union!20913 r1!6206 r2!6144)) (regOne!42338 (Union!20913 r1!6206 r2!6144)))))))

(declare-fun b!7812431 () Bool)

(assert (=> b!7812431 (= e!4623731 e!4623733)))

(declare-fun res!3110987 () Bool)

(assert (=> b!7812431 (= res!3110987 (not (nullable!9284 (reg!21242 (Union!20913 r1!6206 r2!6144)))))))

(assert (=> b!7812431 (=> (not res!3110987) (not e!4623733))))

(declare-fun b!7812432 () Bool)

(assert (=> b!7812432 (= e!4623731 e!4623736)))

(assert (=> b!7812432 (= c!1438484 ((_ is Union!20913) (Union!20913 r1!6206 r2!6144)))))

(declare-fun b!7812433 () Bool)

(assert (=> b!7812433 (= e!4623730 e!4623734)))

(declare-fun res!3110985 () Bool)

(assert (=> b!7812433 (=> (not res!3110985) (not e!4623734))))

(assert (=> b!7812433 (= res!3110985 call!724730)))

(declare-fun bm!724727 () Bool)

(assert (=> bm!724727 (= call!724732 (validRegex!11327 (ite c!1438485 (reg!21242 (Union!20913 r1!6206 r2!6144)) (ite c!1438484 (regTwo!42339 (Union!20913 r1!6206 r2!6144)) (regTwo!42338 (Union!20913 r1!6206 r2!6144))))))))

(assert (= (and d!2348876 (not res!3110986)) b!7812430))

(assert (= (and b!7812430 c!1438485) b!7812431))

(assert (= (and b!7812430 (not c!1438485)) b!7812432))

(assert (= (and b!7812431 res!3110987) b!7812428))

(assert (= (and b!7812432 c!1438484) b!7812425))

(assert (= (and b!7812432 (not c!1438484)) b!7812426))

(assert (= (and b!7812425 res!3110984) b!7812427))

(assert (= (and b!7812426 (not res!3110988)) b!7812433))

(assert (= (and b!7812433 res!3110985) b!7812429))

(assert (= (or b!7812425 b!7812433) bm!724726))

(assert (= (or b!7812427 b!7812429) bm!724725))

(assert (= (or b!7812428 bm!724725) bm!724727))

(declare-fun m!8242486 () Bool)

(assert (=> bm!724726 m!8242486))

(declare-fun m!8242488 () Bool)

(assert (=> b!7812431 m!8242488))

(declare-fun m!8242490 () Bool)

(assert (=> bm!724727 m!8242490))

(assert (=> d!2348794 d!2348876))

(declare-fun b!7812434 () Bool)

(declare-fun e!4623738 () Regex!20913)

(declare-fun call!724733 () Regex!20913)

(declare-fun call!724734 () Regex!20913)

(assert (=> b!7812434 (= e!4623738 (Union!20913 call!724733 call!724734))))

(declare-fun bm!724728 () Bool)

(declare-fun call!724735 () Regex!20913)

(assert (=> bm!724728 (= call!724735 call!724733)))

(declare-fun b!7812435 () Bool)

(declare-fun e!4623739 () Regex!20913)

(assert (=> b!7812435 (= e!4623739 (ite (= (h!80074 s!14225) (c!1438342 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144))))) EmptyExpr!20913 EmptyLang!20913))))

(declare-fun b!7812436 () Bool)

(declare-fun c!1438490 () Bool)

(assert (=> b!7812436 (= c!1438490 (nullable!9284 (regOne!42338 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144))))))))

(declare-fun e!4623737 () Regex!20913)

(declare-fun e!4623740 () Regex!20913)

(assert (=> b!7812436 (= e!4623737 e!4623740)))

(declare-fun b!7812437 () Bool)

(declare-fun call!724736 () Regex!20913)

(assert (=> b!7812437 (= e!4623740 (Union!20913 (Concat!29758 call!724736 (regTwo!42338 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144))))) call!724735))))

(declare-fun bm!724729 () Bool)

(declare-fun c!1438489 () Bool)

(assert (=> bm!724729 (= call!724733 (derivativeStep!6244 (ite c!1438489 (regOne!42339 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))) (ite c!1438490 (regTwo!42338 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))) (regOne!42338 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))))) (h!80074 s!14225)))))

(declare-fun b!7812438 () Bool)

(assert (=> b!7812438 (= e!4623738 e!4623737)))

(declare-fun c!1438487 () Bool)

(assert (=> b!7812438 (= c!1438487 ((_ is Star!20913) (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))))))

(declare-fun b!7812439 () Bool)

(assert (=> b!7812439 (= e!4623740 (Union!20913 (Concat!29758 call!724735 (regTwo!42338 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144))))) EmptyLang!20913))))

(declare-fun d!2348878 () Bool)

(declare-fun lt!2675922 () Regex!20913)

(assert (=> d!2348878 (validRegex!11327 lt!2675922)))

(declare-fun e!4623741 () Regex!20913)

(assert (=> d!2348878 (= lt!2675922 e!4623741)))

(declare-fun c!1438486 () Bool)

(assert (=> d!2348878 (= c!1438486 (or ((_ is EmptyExpr!20913) (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))) ((_ is EmptyLang!20913) (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144))))))))

(assert (=> d!2348878 (validRegex!11327 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144))))))

(assert (=> d!2348878 (= (derivativeStep!6244 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144))) (h!80074 s!14225)) lt!2675922)))

(declare-fun b!7812440 () Bool)

(assert (=> b!7812440 (= e!4623741 e!4623739)))

(declare-fun c!1438488 () Bool)

(assert (=> b!7812440 (= c!1438488 ((_ is ElementMatch!20913) (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))))))

(declare-fun b!7812441 () Bool)

(assert (=> b!7812441 (= c!1438489 ((_ is Union!20913) (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))))))

(assert (=> b!7812441 (= e!4623739 e!4623738)))

(declare-fun bm!724730 () Bool)

(assert (=> bm!724730 (= call!724734 (derivativeStep!6244 (ite c!1438489 (regTwo!42339 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))) (ite c!1438487 (reg!21242 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))) (regOne!42338 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))))) (h!80074 s!14225)))))

(declare-fun b!7812442 () Bool)

(assert (=> b!7812442 (= e!4623741 EmptyLang!20913)))

(declare-fun b!7812443 () Bool)

(assert (=> b!7812443 (= e!4623737 (Concat!29758 call!724736 (ite c!1438383 (regOne!42339 r2!6144) (ite c!1438384 (regTwo!42338 r2!6144) (regOne!42338 r2!6144)))))))

(declare-fun bm!724731 () Bool)

(assert (=> bm!724731 (= call!724736 call!724734)))

(assert (= (and d!2348878 c!1438486) b!7812442))

(assert (= (and d!2348878 (not c!1438486)) b!7812440))

(assert (= (and b!7812440 c!1438488) b!7812435))

(assert (= (and b!7812440 (not c!1438488)) b!7812441))

(assert (= (and b!7812441 c!1438489) b!7812434))

(assert (= (and b!7812441 (not c!1438489)) b!7812438))

(assert (= (and b!7812438 c!1438487) b!7812443))

(assert (= (and b!7812438 (not c!1438487)) b!7812436))

(assert (= (and b!7812436 c!1438490) b!7812437))

(assert (= (and b!7812436 (not c!1438490)) b!7812439))

(assert (= (or b!7812437 b!7812439) bm!724728))

(assert (= (or b!7812443 b!7812437) bm!724731))

(assert (= (or b!7812434 bm!724731) bm!724730))

(assert (= (or b!7812434 bm!724728) bm!724729))

(declare-fun m!8242492 () Bool)

(assert (=> b!7812436 m!8242492))

(declare-fun m!8242494 () Bool)

(assert (=> bm!724729 m!8242494))

(declare-fun m!8242496 () Bool)

(assert (=> d!2348878 m!8242496))

(declare-fun m!8242498 () Bool)

(assert (=> d!2348878 m!8242498))

(declare-fun m!8242500 () Bool)

(assert (=> bm!724730 m!8242500))

(assert (=> bm!724630 d!2348878))

(declare-fun b!7812447 () Bool)

(declare-fun e!4623742 () Bool)

(declare-fun tp!2302417 () Bool)

(declare-fun tp!2302416 () Bool)

(assert (=> b!7812447 (= e!4623742 (and tp!2302417 tp!2302416))))

(assert (=> b!7812081 (= tp!2302329 e!4623742)))

(declare-fun b!7812446 () Bool)

(declare-fun tp!2302418 () Bool)

(assert (=> b!7812446 (= e!4623742 tp!2302418)))

(declare-fun b!7812444 () Bool)

(assert (=> b!7812444 (= e!4623742 tp_is_empty!52181)))

(declare-fun b!7812445 () Bool)

(declare-fun tp!2302415 () Bool)

(declare-fun tp!2302414 () Bool)

(assert (=> b!7812445 (= e!4623742 (and tp!2302415 tp!2302414))))

(assert (= (and b!7812081 ((_ is ElementMatch!20913) (regOne!42339 (regOne!42338 r2!6144)))) b!7812444))

(assert (= (and b!7812081 ((_ is Concat!29758) (regOne!42339 (regOne!42338 r2!6144)))) b!7812445))

(assert (= (and b!7812081 ((_ is Star!20913) (regOne!42339 (regOne!42338 r2!6144)))) b!7812446))

(assert (= (and b!7812081 ((_ is Union!20913) (regOne!42339 (regOne!42338 r2!6144)))) b!7812447))

(declare-fun b!7812451 () Bool)

(declare-fun e!4623743 () Bool)

(declare-fun tp!2302422 () Bool)

(declare-fun tp!2302421 () Bool)

(assert (=> b!7812451 (= e!4623743 (and tp!2302422 tp!2302421))))

(assert (=> b!7812081 (= tp!2302328 e!4623743)))

(declare-fun b!7812450 () Bool)

(declare-fun tp!2302423 () Bool)

(assert (=> b!7812450 (= e!4623743 tp!2302423)))

(declare-fun b!7812448 () Bool)

(assert (=> b!7812448 (= e!4623743 tp_is_empty!52181)))

(declare-fun b!7812449 () Bool)

(declare-fun tp!2302420 () Bool)

(declare-fun tp!2302419 () Bool)

(assert (=> b!7812449 (= e!4623743 (and tp!2302420 tp!2302419))))

(assert (= (and b!7812081 ((_ is ElementMatch!20913) (regTwo!42339 (regOne!42338 r2!6144)))) b!7812448))

(assert (= (and b!7812081 ((_ is Concat!29758) (regTwo!42339 (regOne!42338 r2!6144)))) b!7812449))

(assert (= (and b!7812081 ((_ is Star!20913) (regTwo!42339 (regOne!42338 r2!6144)))) b!7812450))

(assert (= (and b!7812081 ((_ is Union!20913) (regTwo!42339 (regOne!42338 r2!6144)))) b!7812451))

(declare-fun b!7812455 () Bool)

(declare-fun e!4623744 () Bool)

(declare-fun tp!2302427 () Bool)

(declare-fun tp!2302426 () Bool)

(assert (=> b!7812455 (= e!4623744 (and tp!2302427 tp!2302426))))

(assert (=> b!7812056 (= tp!2302301 e!4623744)))

(declare-fun b!7812454 () Bool)

(declare-fun tp!2302428 () Bool)

(assert (=> b!7812454 (= e!4623744 tp!2302428)))

(declare-fun b!7812452 () Bool)

(assert (=> b!7812452 (= e!4623744 tp_is_empty!52181)))

(declare-fun b!7812453 () Bool)

(declare-fun tp!2302425 () Bool)

(declare-fun tp!2302424 () Bool)

(assert (=> b!7812453 (= e!4623744 (and tp!2302425 tp!2302424))))

(assert (= (and b!7812056 ((_ is ElementMatch!20913) (regOne!42339 (regOne!42339 r1!6206)))) b!7812452))

(assert (= (and b!7812056 ((_ is Concat!29758) (regOne!42339 (regOne!42339 r1!6206)))) b!7812453))

(assert (= (and b!7812056 ((_ is Star!20913) (regOne!42339 (regOne!42339 r1!6206)))) b!7812454))

(assert (= (and b!7812056 ((_ is Union!20913) (regOne!42339 (regOne!42339 r1!6206)))) b!7812455))

(declare-fun b!7812459 () Bool)

(declare-fun e!4623745 () Bool)

(declare-fun tp!2302432 () Bool)

(declare-fun tp!2302431 () Bool)

(assert (=> b!7812459 (= e!4623745 (and tp!2302432 tp!2302431))))

(assert (=> b!7812056 (= tp!2302300 e!4623745)))

(declare-fun b!7812458 () Bool)

(declare-fun tp!2302433 () Bool)

(assert (=> b!7812458 (= e!4623745 tp!2302433)))

(declare-fun b!7812456 () Bool)

(assert (=> b!7812456 (= e!4623745 tp_is_empty!52181)))

(declare-fun b!7812457 () Bool)

(declare-fun tp!2302430 () Bool)

(declare-fun tp!2302429 () Bool)

(assert (=> b!7812457 (= e!4623745 (and tp!2302430 tp!2302429))))

(assert (= (and b!7812056 ((_ is ElementMatch!20913) (regTwo!42339 (regOne!42339 r1!6206)))) b!7812456))

(assert (= (and b!7812056 ((_ is Concat!29758) (regTwo!42339 (regOne!42339 r1!6206)))) b!7812457))

(assert (= (and b!7812056 ((_ is Star!20913) (regTwo!42339 (regOne!42339 r1!6206)))) b!7812458))

(assert (= (and b!7812056 ((_ is Union!20913) (regTwo!42339 (regOne!42339 r1!6206)))) b!7812459))

(declare-fun b!7812463 () Bool)

(declare-fun e!4623746 () Bool)

(declare-fun tp!2302437 () Bool)

(declare-fun tp!2302436 () Bool)

(assert (=> b!7812463 (= e!4623746 (and tp!2302437 tp!2302436))))

(assert (=> b!7812080 (= tp!2302330 e!4623746)))

(declare-fun b!7812462 () Bool)

(declare-fun tp!2302438 () Bool)

(assert (=> b!7812462 (= e!4623746 tp!2302438)))

(declare-fun b!7812460 () Bool)

(assert (=> b!7812460 (= e!4623746 tp_is_empty!52181)))

(declare-fun b!7812461 () Bool)

(declare-fun tp!2302435 () Bool)

(declare-fun tp!2302434 () Bool)

(assert (=> b!7812461 (= e!4623746 (and tp!2302435 tp!2302434))))

(assert (= (and b!7812080 ((_ is ElementMatch!20913) (reg!21242 (regOne!42338 r2!6144)))) b!7812460))

(assert (= (and b!7812080 ((_ is Concat!29758) (reg!21242 (regOne!42338 r2!6144)))) b!7812461))

(assert (= (and b!7812080 ((_ is Star!20913) (reg!21242 (regOne!42338 r2!6144)))) b!7812462))

(assert (= (and b!7812080 ((_ is Union!20913) (reg!21242 (regOne!42338 r2!6144)))) b!7812463))

(declare-fun b!7812467 () Bool)

(declare-fun e!4623747 () Bool)

(declare-fun tp!2302442 () Bool)

(declare-fun tp!2302441 () Bool)

(assert (=> b!7812467 (= e!4623747 (and tp!2302442 tp!2302441))))

(assert (=> b!7812071 (= tp!2302317 e!4623747)))

(declare-fun b!7812466 () Bool)

(declare-fun tp!2302443 () Bool)

(assert (=> b!7812466 (= e!4623747 tp!2302443)))

(declare-fun b!7812464 () Bool)

(assert (=> b!7812464 (= e!4623747 tp_is_empty!52181)))

(declare-fun b!7812465 () Bool)

(declare-fun tp!2302440 () Bool)

(declare-fun tp!2302439 () Bool)

(assert (=> b!7812465 (= e!4623747 (and tp!2302440 tp!2302439))))

(assert (= (and b!7812071 ((_ is ElementMatch!20913) (regOne!42338 (regOne!42339 r2!6144)))) b!7812464))

(assert (= (and b!7812071 ((_ is Concat!29758) (regOne!42338 (regOne!42339 r2!6144)))) b!7812465))

(assert (= (and b!7812071 ((_ is Star!20913) (regOne!42338 (regOne!42339 r2!6144)))) b!7812466))

(assert (= (and b!7812071 ((_ is Union!20913) (regOne!42338 (regOne!42339 r2!6144)))) b!7812467))

(declare-fun b!7812471 () Bool)

(declare-fun e!4623748 () Bool)

(declare-fun tp!2302447 () Bool)

(declare-fun tp!2302446 () Bool)

(assert (=> b!7812471 (= e!4623748 (and tp!2302447 tp!2302446))))

(assert (=> b!7812071 (= tp!2302316 e!4623748)))

(declare-fun b!7812470 () Bool)

(declare-fun tp!2302448 () Bool)

(assert (=> b!7812470 (= e!4623748 tp!2302448)))

(declare-fun b!7812468 () Bool)

(assert (=> b!7812468 (= e!4623748 tp_is_empty!52181)))

(declare-fun b!7812469 () Bool)

(declare-fun tp!2302445 () Bool)

(declare-fun tp!2302444 () Bool)

(assert (=> b!7812469 (= e!4623748 (and tp!2302445 tp!2302444))))

(assert (= (and b!7812071 ((_ is ElementMatch!20913) (regTwo!42338 (regOne!42339 r2!6144)))) b!7812468))

(assert (= (and b!7812071 ((_ is Concat!29758) (regTwo!42338 (regOne!42339 r2!6144)))) b!7812469))

(assert (= (and b!7812071 ((_ is Star!20913) (regTwo!42338 (regOne!42339 r2!6144)))) b!7812470))

(assert (= (and b!7812071 ((_ is Union!20913) (regTwo!42338 (regOne!42339 r2!6144)))) b!7812471))

(declare-fun b!7812475 () Bool)

(declare-fun e!4623749 () Bool)

(declare-fun tp!2302452 () Bool)

(declare-fun tp!2302451 () Bool)

(assert (=> b!7812475 (= e!4623749 (and tp!2302452 tp!2302451))))

(assert (=> b!7812073 (= tp!2302319 e!4623749)))

(declare-fun b!7812474 () Bool)

(declare-fun tp!2302453 () Bool)

(assert (=> b!7812474 (= e!4623749 tp!2302453)))

(declare-fun b!7812472 () Bool)

(assert (=> b!7812472 (= e!4623749 tp_is_empty!52181)))

(declare-fun b!7812473 () Bool)

(declare-fun tp!2302450 () Bool)

(declare-fun tp!2302449 () Bool)

(assert (=> b!7812473 (= e!4623749 (and tp!2302450 tp!2302449))))

(assert (= (and b!7812073 ((_ is ElementMatch!20913) (regOne!42339 (regOne!42339 r2!6144)))) b!7812472))

(assert (= (and b!7812073 ((_ is Concat!29758) (regOne!42339 (regOne!42339 r2!6144)))) b!7812473))

(assert (= (and b!7812073 ((_ is Star!20913) (regOne!42339 (regOne!42339 r2!6144)))) b!7812474))

(assert (= (and b!7812073 ((_ is Union!20913) (regOne!42339 (regOne!42339 r2!6144)))) b!7812475))

(declare-fun b!7812479 () Bool)

(declare-fun e!4623750 () Bool)

(declare-fun tp!2302457 () Bool)

(declare-fun tp!2302456 () Bool)

(assert (=> b!7812479 (= e!4623750 (and tp!2302457 tp!2302456))))

(assert (=> b!7812073 (= tp!2302318 e!4623750)))

(declare-fun b!7812478 () Bool)

(declare-fun tp!2302458 () Bool)

(assert (=> b!7812478 (= e!4623750 tp!2302458)))

(declare-fun b!7812476 () Bool)

(assert (=> b!7812476 (= e!4623750 tp_is_empty!52181)))

(declare-fun b!7812477 () Bool)

(declare-fun tp!2302455 () Bool)

(declare-fun tp!2302454 () Bool)

(assert (=> b!7812477 (= e!4623750 (and tp!2302455 tp!2302454))))

(assert (= (and b!7812073 ((_ is ElementMatch!20913) (regTwo!42339 (regOne!42339 r2!6144)))) b!7812476))

(assert (= (and b!7812073 ((_ is Concat!29758) (regTwo!42339 (regOne!42339 r2!6144)))) b!7812477))

(assert (= (and b!7812073 ((_ is Star!20913) (regTwo!42339 (regOne!42339 r2!6144)))) b!7812478))

(assert (= (and b!7812073 ((_ is Union!20913) (regTwo!42339 (regOne!42339 r2!6144)))) b!7812479))

(declare-fun b!7812483 () Bool)

(declare-fun e!4623751 () Bool)

(declare-fun tp!2302462 () Bool)

(declare-fun tp!2302461 () Bool)

(assert (=> b!7812483 (= e!4623751 (and tp!2302462 tp!2302461))))

(assert (=> b!7812072 (= tp!2302320 e!4623751)))

(declare-fun b!7812482 () Bool)

(declare-fun tp!2302463 () Bool)

(assert (=> b!7812482 (= e!4623751 tp!2302463)))

(declare-fun b!7812480 () Bool)

(assert (=> b!7812480 (= e!4623751 tp_is_empty!52181)))

(declare-fun b!7812481 () Bool)

(declare-fun tp!2302460 () Bool)

(declare-fun tp!2302459 () Bool)

(assert (=> b!7812481 (= e!4623751 (and tp!2302460 tp!2302459))))

(assert (= (and b!7812072 ((_ is ElementMatch!20913) (reg!21242 (regOne!42339 r2!6144)))) b!7812480))

(assert (= (and b!7812072 ((_ is Concat!29758) (reg!21242 (regOne!42339 r2!6144)))) b!7812481))

(assert (= (and b!7812072 ((_ is Star!20913) (reg!21242 (regOne!42339 r2!6144)))) b!7812482))

(assert (= (and b!7812072 ((_ is Union!20913) (reg!21242 (regOne!42339 r2!6144)))) b!7812483))

(declare-fun b!7812487 () Bool)

(declare-fun e!4623752 () Bool)

(declare-fun tp!2302467 () Bool)

(declare-fun tp!2302466 () Bool)

(assert (=> b!7812487 (= e!4623752 (and tp!2302467 tp!2302466))))

(assert (=> b!7812054 (= tp!2302299 e!4623752)))

(declare-fun b!7812486 () Bool)

(declare-fun tp!2302468 () Bool)

(assert (=> b!7812486 (= e!4623752 tp!2302468)))

(declare-fun b!7812484 () Bool)

(assert (=> b!7812484 (= e!4623752 tp_is_empty!52181)))

(declare-fun b!7812485 () Bool)

(declare-fun tp!2302465 () Bool)

(declare-fun tp!2302464 () Bool)

(assert (=> b!7812485 (= e!4623752 (and tp!2302465 tp!2302464))))

(assert (= (and b!7812054 ((_ is ElementMatch!20913) (regOne!42338 (regOne!42339 r1!6206)))) b!7812484))

(assert (= (and b!7812054 ((_ is Concat!29758) (regOne!42338 (regOne!42339 r1!6206)))) b!7812485))

(assert (= (and b!7812054 ((_ is Star!20913) (regOne!42338 (regOne!42339 r1!6206)))) b!7812486))

(assert (= (and b!7812054 ((_ is Union!20913) (regOne!42338 (regOne!42339 r1!6206)))) b!7812487))

(declare-fun b!7812491 () Bool)

(declare-fun e!4623753 () Bool)

(declare-fun tp!2302472 () Bool)

(declare-fun tp!2302471 () Bool)

(assert (=> b!7812491 (= e!4623753 (and tp!2302472 tp!2302471))))

(assert (=> b!7812054 (= tp!2302298 e!4623753)))

(declare-fun b!7812490 () Bool)

(declare-fun tp!2302473 () Bool)

(assert (=> b!7812490 (= e!4623753 tp!2302473)))

(declare-fun b!7812488 () Bool)

(assert (=> b!7812488 (= e!4623753 tp_is_empty!52181)))

(declare-fun b!7812489 () Bool)

(declare-fun tp!2302470 () Bool)

(declare-fun tp!2302469 () Bool)

(assert (=> b!7812489 (= e!4623753 (and tp!2302470 tp!2302469))))

(assert (= (and b!7812054 ((_ is ElementMatch!20913) (regTwo!42338 (regOne!42339 r1!6206)))) b!7812488))

(assert (= (and b!7812054 ((_ is Concat!29758) (regTwo!42338 (regOne!42339 r1!6206)))) b!7812489))

(assert (= (and b!7812054 ((_ is Star!20913) (regTwo!42338 (regOne!42339 r1!6206)))) b!7812490))

(assert (= (and b!7812054 ((_ is Union!20913) (regTwo!42338 (regOne!42339 r1!6206)))) b!7812491))

(declare-fun b!7812495 () Bool)

(declare-fun e!4623754 () Bool)

(declare-fun tp!2302477 () Bool)

(declare-fun tp!2302476 () Bool)

(assert (=> b!7812495 (= e!4623754 (and tp!2302477 tp!2302476))))

(assert (=> b!7812097 (= tp!2302349 e!4623754)))

(declare-fun b!7812494 () Bool)

(declare-fun tp!2302478 () Bool)

(assert (=> b!7812494 (= e!4623754 tp!2302478)))

(declare-fun b!7812492 () Bool)

(assert (=> b!7812492 (= e!4623754 tp_is_empty!52181)))

(declare-fun b!7812493 () Bool)

(declare-fun tp!2302475 () Bool)

(declare-fun tp!2302474 () Bool)

(assert (=> b!7812493 (= e!4623754 (and tp!2302475 tp!2302474))))

(assert (= (and b!7812097 ((_ is ElementMatch!20913) (regOne!42339 (reg!21242 r2!6144)))) b!7812492))

(assert (= (and b!7812097 ((_ is Concat!29758) (regOne!42339 (reg!21242 r2!6144)))) b!7812493))

(assert (= (and b!7812097 ((_ is Star!20913) (regOne!42339 (reg!21242 r2!6144)))) b!7812494))

(assert (= (and b!7812097 ((_ is Union!20913) (regOne!42339 (reg!21242 r2!6144)))) b!7812495))

(declare-fun b!7812499 () Bool)

(declare-fun e!4623755 () Bool)

(declare-fun tp!2302482 () Bool)

(declare-fun tp!2302481 () Bool)

(assert (=> b!7812499 (= e!4623755 (and tp!2302482 tp!2302481))))

(assert (=> b!7812097 (= tp!2302348 e!4623755)))

(declare-fun b!7812498 () Bool)

(declare-fun tp!2302483 () Bool)

(assert (=> b!7812498 (= e!4623755 tp!2302483)))

(declare-fun b!7812496 () Bool)

(assert (=> b!7812496 (= e!4623755 tp_is_empty!52181)))

(declare-fun b!7812497 () Bool)

(declare-fun tp!2302480 () Bool)

(declare-fun tp!2302479 () Bool)

(assert (=> b!7812497 (= e!4623755 (and tp!2302480 tp!2302479))))

(assert (= (and b!7812097 ((_ is ElementMatch!20913) (regTwo!42339 (reg!21242 r2!6144)))) b!7812496))

(assert (= (and b!7812097 ((_ is Concat!29758) (regTwo!42339 (reg!21242 r2!6144)))) b!7812497))

(assert (= (and b!7812097 ((_ is Star!20913) (regTwo!42339 (reg!21242 r2!6144)))) b!7812498))

(assert (= (and b!7812097 ((_ is Union!20913) (regTwo!42339 (reg!21242 r2!6144)))) b!7812499))

(declare-fun b!7812503 () Bool)

(declare-fun e!4623756 () Bool)

(declare-fun tp!2302487 () Bool)

(declare-fun tp!2302486 () Bool)

(assert (=> b!7812503 (= e!4623756 (and tp!2302487 tp!2302486))))

(assert (=> b!7812096 (= tp!2302350 e!4623756)))

(declare-fun b!7812502 () Bool)

(declare-fun tp!2302488 () Bool)

(assert (=> b!7812502 (= e!4623756 tp!2302488)))

(declare-fun b!7812500 () Bool)

(assert (=> b!7812500 (= e!4623756 tp_is_empty!52181)))

(declare-fun b!7812501 () Bool)

(declare-fun tp!2302485 () Bool)

(declare-fun tp!2302484 () Bool)

(assert (=> b!7812501 (= e!4623756 (and tp!2302485 tp!2302484))))

(assert (= (and b!7812096 ((_ is ElementMatch!20913) (reg!21242 (reg!21242 r2!6144)))) b!7812500))

(assert (= (and b!7812096 ((_ is Concat!29758) (reg!21242 (reg!21242 r2!6144)))) b!7812501))

(assert (= (and b!7812096 ((_ is Star!20913) (reg!21242 (reg!21242 r2!6144)))) b!7812502))

(assert (= (and b!7812096 ((_ is Union!20913) (reg!21242 (reg!21242 r2!6144)))) b!7812503))

(declare-fun b!7812507 () Bool)

(declare-fun e!4623757 () Bool)

(declare-fun tp!2302492 () Bool)

(declare-fun tp!2302491 () Bool)

(assert (=> b!7812507 (= e!4623757 (and tp!2302492 tp!2302491))))

(assert (=> b!7812063 (= tp!2302312 e!4623757)))

(declare-fun b!7812506 () Bool)

(declare-fun tp!2302493 () Bool)

(assert (=> b!7812506 (= e!4623757 tp!2302493)))

(declare-fun b!7812504 () Bool)

(assert (=> b!7812504 (= e!4623757 tp_is_empty!52181)))

(declare-fun b!7812505 () Bool)

(declare-fun tp!2302490 () Bool)

(declare-fun tp!2302489 () Bool)

(assert (=> b!7812505 (= e!4623757 (and tp!2302490 tp!2302489))))

(assert (= (and b!7812063 ((_ is ElementMatch!20913) (reg!21242 (reg!21242 r1!6206)))) b!7812504))

(assert (= (and b!7812063 ((_ is Concat!29758) (reg!21242 (reg!21242 r1!6206)))) b!7812505))

(assert (= (and b!7812063 ((_ is Star!20913) (reg!21242 (reg!21242 r1!6206)))) b!7812506))

(assert (= (and b!7812063 ((_ is Union!20913) (reg!21242 (reg!21242 r1!6206)))) b!7812507))

(declare-fun b!7812511 () Bool)

(declare-fun e!4623758 () Bool)

(declare-fun tp!2302497 () Bool)

(declare-fun tp!2302496 () Bool)

(assert (=> b!7812511 (= e!4623758 (and tp!2302497 tp!2302496))))

(assert (=> b!7812087 (= tp!2302337 e!4623758)))

(declare-fun b!7812510 () Bool)

(declare-fun tp!2302498 () Bool)

(assert (=> b!7812510 (= e!4623758 tp!2302498)))

(declare-fun b!7812508 () Bool)

(assert (=> b!7812508 (= e!4623758 tp_is_empty!52181)))

(declare-fun b!7812509 () Bool)

(declare-fun tp!2302495 () Bool)

(declare-fun tp!2302494 () Bool)

(assert (=> b!7812509 (= e!4623758 (and tp!2302495 tp!2302494))))

(assert (= (and b!7812087 ((_ is ElementMatch!20913) (regOne!42338 (regOne!42338 r1!6206)))) b!7812508))

(assert (= (and b!7812087 ((_ is Concat!29758) (regOne!42338 (regOne!42338 r1!6206)))) b!7812509))

(assert (= (and b!7812087 ((_ is Star!20913) (regOne!42338 (regOne!42338 r1!6206)))) b!7812510))

(assert (= (and b!7812087 ((_ is Union!20913) (regOne!42338 (regOne!42338 r1!6206)))) b!7812511))

(declare-fun b!7812515 () Bool)

(declare-fun e!4623759 () Bool)

(declare-fun tp!2302502 () Bool)

(declare-fun tp!2302501 () Bool)

(assert (=> b!7812515 (= e!4623759 (and tp!2302502 tp!2302501))))

(assert (=> b!7812087 (= tp!2302336 e!4623759)))

(declare-fun b!7812514 () Bool)

(declare-fun tp!2302503 () Bool)

(assert (=> b!7812514 (= e!4623759 tp!2302503)))

(declare-fun b!7812512 () Bool)

(assert (=> b!7812512 (= e!4623759 tp_is_empty!52181)))

(declare-fun b!7812513 () Bool)

(declare-fun tp!2302500 () Bool)

(declare-fun tp!2302499 () Bool)

(assert (=> b!7812513 (= e!4623759 (and tp!2302500 tp!2302499))))

(assert (= (and b!7812087 ((_ is ElementMatch!20913) (regTwo!42338 (regOne!42338 r1!6206)))) b!7812512))

(assert (= (and b!7812087 ((_ is Concat!29758) (regTwo!42338 (regOne!42338 r1!6206)))) b!7812513))

(assert (= (and b!7812087 ((_ is Star!20913) (regTwo!42338 (regOne!42338 r1!6206)))) b!7812514))

(assert (= (and b!7812087 ((_ is Union!20913) (regTwo!42338 (regOne!42338 r1!6206)))) b!7812515))

(declare-fun b!7812519 () Bool)

(declare-fun e!4623760 () Bool)

(declare-fun tp!2302507 () Bool)

(declare-fun tp!2302506 () Bool)

(assert (=> b!7812519 (= e!4623760 (and tp!2302507 tp!2302506))))

(assert (=> b!7812089 (= tp!2302339 e!4623760)))

(declare-fun b!7812518 () Bool)

(declare-fun tp!2302508 () Bool)

(assert (=> b!7812518 (= e!4623760 tp!2302508)))

(declare-fun b!7812516 () Bool)

(assert (=> b!7812516 (= e!4623760 tp_is_empty!52181)))

(declare-fun b!7812517 () Bool)

(declare-fun tp!2302505 () Bool)

(declare-fun tp!2302504 () Bool)

(assert (=> b!7812517 (= e!4623760 (and tp!2302505 tp!2302504))))

(assert (= (and b!7812089 ((_ is ElementMatch!20913) (regOne!42339 (regOne!42338 r1!6206)))) b!7812516))

(assert (= (and b!7812089 ((_ is Concat!29758) (regOne!42339 (regOne!42338 r1!6206)))) b!7812517))

(assert (= (and b!7812089 ((_ is Star!20913) (regOne!42339 (regOne!42338 r1!6206)))) b!7812518))

(assert (= (and b!7812089 ((_ is Union!20913) (regOne!42339 (regOne!42338 r1!6206)))) b!7812519))

(declare-fun b!7812523 () Bool)

(declare-fun e!4623761 () Bool)

(declare-fun tp!2302512 () Bool)

(declare-fun tp!2302511 () Bool)

(assert (=> b!7812523 (= e!4623761 (and tp!2302512 tp!2302511))))

(assert (=> b!7812089 (= tp!2302338 e!4623761)))

(declare-fun b!7812522 () Bool)

(declare-fun tp!2302513 () Bool)

(assert (=> b!7812522 (= e!4623761 tp!2302513)))

(declare-fun b!7812520 () Bool)

(assert (=> b!7812520 (= e!4623761 tp_is_empty!52181)))

(declare-fun b!7812521 () Bool)

(declare-fun tp!2302510 () Bool)

(declare-fun tp!2302509 () Bool)

(assert (=> b!7812521 (= e!4623761 (and tp!2302510 tp!2302509))))

(assert (= (and b!7812089 ((_ is ElementMatch!20913) (regTwo!42339 (regOne!42338 r1!6206)))) b!7812520))

(assert (= (and b!7812089 ((_ is Concat!29758) (regTwo!42339 (regOne!42338 r1!6206)))) b!7812521))

(assert (= (and b!7812089 ((_ is Star!20913) (regTwo!42339 (regOne!42338 r1!6206)))) b!7812522))

(assert (= (and b!7812089 ((_ is Union!20913) (regTwo!42339 (regOne!42338 r1!6206)))) b!7812523))

(declare-fun b!7812527 () Bool)

(declare-fun e!4623762 () Bool)

(declare-fun tp!2302517 () Bool)

(declare-fun tp!2302516 () Bool)

(assert (=> b!7812527 (= e!4623762 (and tp!2302517 tp!2302516))))

(assert (=> b!7812064 (= tp!2302311 e!4623762)))

(declare-fun b!7812526 () Bool)

(declare-fun tp!2302518 () Bool)

(assert (=> b!7812526 (= e!4623762 tp!2302518)))

(declare-fun b!7812524 () Bool)

(assert (=> b!7812524 (= e!4623762 tp_is_empty!52181)))

(declare-fun b!7812525 () Bool)

(declare-fun tp!2302515 () Bool)

(declare-fun tp!2302514 () Bool)

(assert (=> b!7812525 (= e!4623762 (and tp!2302515 tp!2302514))))

(assert (= (and b!7812064 ((_ is ElementMatch!20913) (regOne!42339 (reg!21242 r1!6206)))) b!7812524))

(assert (= (and b!7812064 ((_ is Concat!29758) (regOne!42339 (reg!21242 r1!6206)))) b!7812525))

(assert (= (and b!7812064 ((_ is Star!20913) (regOne!42339 (reg!21242 r1!6206)))) b!7812526))

(assert (= (and b!7812064 ((_ is Union!20913) (regOne!42339 (reg!21242 r1!6206)))) b!7812527))

(declare-fun b!7812531 () Bool)

(declare-fun e!4623763 () Bool)

(declare-fun tp!2302522 () Bool)

(declare-fun tp!2302521 () Bool)

(assert (=> b!7812531 (= e!4623763 (and tp!2302522 tp!2302521))))

(assert (=> b!7812064 (= tp!2302310 e!4623763)))

(declare-fun b!7812530 () Bool)

(declare-fun tp!2302523 () Bool)

(assert (=> b!7812530 (= e!4623763 tp!2302523)))

(declare-fun b!7812528 () Bool)

(assert (=> b!7812528 (= e!4623763 tp_is_empty!52181)))

(declare-fun b!7812529 () Bool)

(declare-fun tp!2302520 () Bool)

(declare-fun tp!2302519 () Bool)

(assert (=> b!7812529 (= e!4623763 (and tp!2302520 tp!2302519))))

(assert (= (and b!7812064 ((_ is ElementMatch!20913) (regTwo!42339 (reg!21242 r1!6206)))) b!7812528))

(assert (= (and b!7812064 ((_ is Concat!29758) (regTwo!42339 (reg!21242 r1!6206)))) b!7812529))

(assert (= (and b!7812064 ((_ is Star!20913) (regTwo!42339 (reg!21242 r1!6206)))) b!7812530))

(assert (= (and b!7812064 ((_ is Union!20913) (regTwo!42339 (reg!21242 r1!6206)))) b!7812531))

(declare-fun b!7812535 () Bool)

(declare-fun e!4623764 () Bool)

(declare-fun tp!2302527 () Bool)

(declare-fun tp!2302526 () Bool)

(assert (=> b!7812535 (= e!4623764 (and tp!2302527 tp!2302526))))

(assert (=> b!7812088 (= tp!2302340 e!4623764)))

(declare-fun b!7812534 () Bool)

(declare-fun tp!2302528 () Bool)

(assert (=> b!7812534 (= e!4623764 tp!2302528)))

(declare-fun b!7812532 () Bool)

(assert (=> b!7812532 (= e!4623764 tp_is_empty!52181)))

(declare-fun b!7812533 () Bool)

(declare-fun tp!2302525 () Bool)

(declare-fun tp!2302524 () Bool)

(assert (=> b!7812533 (= e!4623764 (and tp!2302525 tp!2302524))))

(assert (= (and b!7812088 ((_ is ElementMatch!20913) (reg!21242 (regOne!42338 r1!6206)))) b!7812532))

(assert (= (and b!7812088 ((_ is Concat!29758) (reg!21242 (regOne!42338 r1!6206)))) b!7812533))

(assert (= (and b!7812088 ((_ is Star!20913) (reg!21242 (regOne!42338 r1!6206)))) b!7812534))

(assert (= (and b!7812088 ((_ is Union!20913) (reg!21242 (regOne!42338 r1!6206)))) b!7812535))

(declare-fun b!7812539 () Bool)

(declare-fun e!4623765 () Bool)

(declare-fun tp!2302532 () Bool)

(declare-fun tp!2302531 () Bool)

(assert (=> b!7812539 (= e!4623765 (and tp!2302532 tp!2302531))))

(assert (=> b!7812079 (= tp!2302327 e!4623765)))

(declare-fun b!7812538 () Bool)

(declare-fun tp!2302533 () Bool)

(assert (=> b!7812538 (= e!4623765 tp!2302533)))

(declare-fun b!7812536 () Bool)

(assert (=> b!7812536 (= e!4623765 tp_is_empty!52181)))

(declare-fun b!7812537 () Bool)

(declare-fun tp!2302530 () Bool)

(declare-fun tp!2302529 () Bool)

(assert (=> b!7812537 (= e!4623765 (and tp!2302530 tp!2302529))))

(assert (= (and b!7812079 ((_ is ElementMatch!20913) (regOne!42338 (regOne!42338 r2!6144)))) b!7812536))

(assert (= (and b!7812079 ((_ is Concat!29758) (regOne!42338 (regOne!42338 r2!6144)))) b!7812537))

(assert (= (and b!7812079 ((_ is Star!20913) (regOne!42338 (regOne!42338 r2!6144)))) b!7812538))

(assert (= (and b!7812079 ((_ is Union!20913) (regOne!42338 (regOne!42338 r2!6144)))) b!7812539))

(declare-fun b!7812543 () Bool)

(declare-fun e!4623766 () Bool)

(declare-fun tp!2302537 () Bool)

(declare-fun tp!2302536 () Bool)

(assert (=> b!7812543 (= e!4623766 (and tp!2302537 tp!2302536))))

(assert (=> b!7812079 (= tp!2302326 e!4623766)))

(declare-fun b!7812542 () Bool)

(declare-fun tp!2302538 () Bool)

(assert (=> b!7812542 (= e!4623766 tp!2302538)))

(declare-fun b!7812540 () Bool)

(assert (=> b!7812540 (= e!4623766 tp_is_empty!52181)))

(declare-fun b!7812541 () Bool)

(declare-fun tp!2302535 () Bool)

(declare-fun tp!2302534 () Bool)

(assert (=> b!7812541 (= e!4623766 (and tp!2302535 tp!2302534))))

(assert (= (and b!7812079 ((_ is ElementMatch!20913) (regTwo!42338 (regOne!42338 r2!6144)))) b!7812540))

(assert (= (and b!7812079 ((_ is Concat!29758) (regTwo!42338 (regOne!42338 r2!6144)))) b!7812541))

(assert (= (and b!7812079 ((_ is Star!20913) (regTwo!42338 (regOne!42338 r2!6144)))) b!7812542))

(assert (= (and b!7812079 ((_ is Union!20913) (regTwo!42338 (regOne!42338 r2!6144)))) b!7812543))

(declare-fun b!7812547 () Bool)

(declare-fun e!4623767 () Bool)

(declare-fun tp!2302542 () Bool)

(declare-fun tp!2302541 () Bool)

(assert (=> b!7812547 (= e!4623767 (and tp!2302542 tp!2302541))))

(assert (=> b!7812055 (= tp!2302302 e!4623767)))

(declare-fun b!7812546 () Bool)

(declare-fun tp!2302543 () Bool)

(assert (=> b!7812546 (= e!4623767 tp!2302543)))

(declare-fun b!7812544 () Bool)

(assert (=> b!7812544 (= e!4623767 tp_is_empty!52181)))

(declare-fun b!7812545 () Bool)

(declare-fun tp!2302540 () Bool)

(declare-fun tp!2302539 () Bool)

(assert (=> b!7812545 (= e!4623767 (and tp!2302540 tp!2302539))))

(assert (= (and b!7812055 ((_ is ElementMatch!20913) (reg!21242 (regOne!42339 r1!6206)))) b!7812544))

(assert (= (and b!7812055 ((_ is Concat!29758) (reg!21242 (regOne!42339 r1!6206)))) b!7812545))

(assert (= (and b!7812055 ((_ is Star!20913) (reg!21242 (regOne!42339 r1!6206)))) b!7812546))

(assert (= (and b!7812055 ((_ is Union!20913) (reg!21242 (regOne!42339 r1!6206)))) b!7812547))

(declare-fun b!7812551 () Bool)

(declare-fun e!4623768 () Bool)

(declare-fun tp!2302547 () Bool)

(declare-fun tp!2302546 () Bool)

(assert (=> b!7812551 (= e!4623768 (and tp!2302547 tp!2302546))))

(assert (=> b!7812091 (= tp!2302342 e!4623768)))

(declare-fun b!7812550 () Bool)

(declare-fun tp!2302548 () Bool)

(assert (=> b!7812550 (= e!4623768 tp!2302548)))

(declare-fun b!7812548 () Bool)

(assert (=> b!7812548 (= e!4623768 tp_is_empty!52181)))

(declare-fun b!7812549 () Bool)

(declare-fun tp!2302545 () Bool)

(declare-fun tp!2302544 () Bool)

(assert (=> b!7812549 (= e!4623768 (and tp!2302545 tp!2302544))))

(assert (= (and b!7812091 ((_ is ElementMatch!20913) (regOne!42338 (regTwo!42338 r1!6206)))) b!7812548))

(assert (= (and b!7812091 ((_ is Concat!29758) (regOne!42338 (regTwo!42338 r1!6206)))) b!7812549))

(assert (= (and b!7812091 ((_ is Star!20913) (regOne!42338 (regTwo!42338 r1!6206)))) b!7812550))

(assert (= (and b!7812091 ((_ is Union!20913) (regOne!42338 (regTwo!42338 r1!6206)))) b!7812551))

(declare-fun b!7812555 () Bool)

(declare-fun e!4623769 () Bool)

(declare-fun tp!2302552 () Bool)

(declare-fun tp!2302551 () Bool)

(assert (=> b!7812555 (= e!4623769 (and tp!2302552 tp!2302551))))

(assert (=> b!7812091 (= tp!2302341 e!4623769)))

(declare-fun b!7812554 () Bool)

(declare-fun tp!2302553 () Bool)

(assert (=> b!7812554 (= e!4623769 tp!2302553)))

(declare-fun b!7812552 () Bool)

(assert (=> b!7812552 (= e!4623769 tp_is_empty!52181)))

(declare-fun b!7812553 () Bool)

(declare-fun tp!2302550 () Bool)

(declare-fun tp!2302549 () Bool)

(assert (=> b!7812553 (= e!4623769 (and tp!2302550 tp!2302549))))

(assert (= (and b!7812091 ((_ is ElementMatch!20913) (regTwo!42338 (regTwo!42338 r1!6206)))) b!7812552))

(assert (= (and b!7812091 ((_ is Concat!29758) (regTwo!42338 (regTwo!42338 r1!6206)))) b!7812553))

(assert (= (and b!7812091 ((_ is Star!20913) (regTwo!42338 (regTwo!42338 r1!6206)))) b!7812554))

(assert (= (and b!7812091 ((_ is Union!20913) (regTwo!42338 (regTwo!42338 r1!6206)))) b!7812555))

(declare-fun b!7812559 () Bool)

(declare-fun e!4623770 () Bool)

(declare-fun tp!2302557 () Bool)

(declare-fun tp!2302556 () Bool)

(assert (=> b!7812559 (= e!4623770 (and tp!2302557 tp!2302556))))

(assert (=> b!7812076 (= tp!2302325 e!4623770)))

(declare-fun b!7812558 () Bool)

(declare-fun tp!2302558 () Bool)

(assert (=> b!7812558 (= e!4623770 tp!2302558)))

(declare-fun b!7812556 () Bool)

(assert (=> b!7812556 (= e!4623770 tp_is_empty!52181)))

(declare-fun b!7812557 () Bool)

(declare-fun tp!2302555 () Bool)

(declare-fun tp!2302554 () Bool)

(assert (=> b!7812557 (= e!4623770 (and tp!2302555 tp!2302554))))

(assert (= (and b!7812076 ((_ is ElementMatch!20913) (reg!21242 (regTwo!42339 r2!6144)))) b!7812556))

(assert (= (and b!7812076 ((_ is Concat!29758) (reg!21242 (regTwo!42339 r2!6144)))) b!7812557))

(assert (= (and b!7812076 ((_ is Star!20913) (reg!21242 (regTwo!42339 r2!6144)))) b!7812558))

(assert (= (and b!7812076 ((_ is Union!20913) (reg!21242 (regTwo!42339 r2!6144)))) b!7812559))

(declare-fun b!7812563 () Bool)

(declare-fun e!4623771 () Bool)

(declare-fun tp!2302562 () Bool)

(declare-fun tp!2302561 () Bool)

(assert (=> b!7812563 (= e!4623771 (and tp!2302562 tp!2302561))))

(assert (=> b!7812085 (= tp!2302334 e!4623771)))

(declare-fun b!7812562 () Bool)

(declare-fun tp!2302563 () Bool)

(assert (=> b!7812562 (= e!4623771 tp!2302563)))

(declare-fun b!7812560 () Bool)

(assert (=> b!7812560 (= e!4623771 tp_is_empty!52181)))

(declare-fun b!7812561 () Bool)

(declare-fun tp!2302560 () Bool)

(declare-fun tp!2302559 () Bool)

(assert (=> b!7812561 (= e!4623771 (and tp!2302560 tp!2302559))))

(assert (= (and b!7812085 ((_ is ElementMatch!20913) (regOne!42339 (regTwo!42338 r2!6144)))) b!7812560))

(assert (= (and b!7812085 ((_ is Concat!29758) (regOne!42339 (regTwo!42338 r2!6144)))) b!7812561))

(assert (= (and b!7812085 ((_ is Star!20913) (regOne!42339 (regTwo!42338 r2!6144)))) b!7812562))

(assert (= (and b!7812085 ((_ is Union!20913) (regOne!42339 (regTwo!42338 r2!6144)))) b!7812563))

(declare-fun b!7812567 () Bool)

(declare-fun e!4623772 () Bool)

(declare-fun tp!2302567 () Bool)

(declare-fun tp!2302566 () Bool)

(assert (=> b!7812567 (= e!4623772 (and tp!2302567 tp!2302566))))

(assert (=> b!7812085 (= tp!2302333 e!4623772)))

(declare-fun b!7812566 () Bool)

(declare-fun tp!2302568 () Bool)

(assert (=> b!7812566 (= e!4623772 tp!2302568)))

(declare-fun b!7812564 () Bool)

(assert (=> b!7812564 (= e!4623772 tp_is_empty!52181)))

(declare-fun b!7812565 () Bool)

(declare-fun tp!2302565 () Bool)

(declare-fun tp!2302564 () Bool)

(assert (=> b!7812565 (= e!4623772 (and tp!2302565 tp!2302564))))

(assert (= (and b!7812085 ((_ is ElementMatch!20913) (regTwo!42339 (regTwo!42338 r2!6144)))) b!7812564))

(assert (= (and b!7812085 ((_ is Concat!29758) (regTwo!42339 (regTwo!42338 r2!6144)))) b!7812565))

(assert (= (and b!7812085 ((_ is Star!20913) (regTwo!42339 (regTwo!42338 r2!6144)))) b!7812566))

(assert (= (and b!7812085 ((_ is Union!20913) (regTwo!42339 (regTwo!42338 r2!6144)))) b!7812567))

(declare-fun b!7812571 () Bool)

(declare-fun e!4623773 () Bool)

(declare-fun tp!2302572 () Bool)

(declare-fun tp!2302571 () Bool)

(assert (=> b!7812571 (= e!4623773 (and tp!2302572 tp!2302571))))

(assert (=> b!7812077 (= tp!2302324 e!4623773)))

(declare-fun b!7812570 () Bool)

(declare-fun tp!2302573 () Bool)

(assert (=> b!7812570 (= e!4623773 tp!2302573)))

(declare-fun b!7812568 () Bool)

(assert (=> b!7812568 (= e!4623773 tp_is_empty!52181)))

(declare-fun b!7812569 () Bool)

(declare-fun tp!2302570 () Bool)

(declare-fun tp!2302569 () Bool)

(assert (=> b!7812569 (= e!4623773 (and tp!2302570 tp!2302569))))

(assert (= (and b!7812077 ((_ is ElementMatch!20913) (regOne!42339 (regTwo!42339 r2!6144)))) b!7812568))

(assert (= (and b!7812077 ((_ is Concat!29758) (regOne!42339 (regTwo!42339 r2!6144)))) b!7812569))

(assert (= (and b!7812077 ((_ is Star!20913) (regOne!42339 (regTwo!42339 r2!6144)))) b!7812570))

(assert (= (and b!7812077 ((_ is Union!20913) (regOne!42339 (regTwo!42339 r2!6144)))) b!7812571))

(declare-fun b!7812575 () Bool)

(declare-fun e!4623774 () Bool)

(declare-fun tp!2302577 () Bool)

(declare-fun tp!2302576 () Bool)

(assert (=> b!7812575 (= e!4623774 (and tp!2302577 tp!2302576))))

(assert (=> b!7812077 (= tp!2302323 e!4623774)))

(declare-fun b!7812574 () Bool)

(declare-fun tp!2302578 () Bool)

(assert (=> b!7812574 (= e!4623774 tp!2302578)))

(declare-fun b!7812572 () Bool)

(assert (=> b!7812572 (= e!4623774 tp_is_empty!52181)))

(declare-fun b!7812573 () Bool)

(declare-fun tp!2302575 () Bool)

(declare-fun tp!2302574 () Bool)

(assert (=> b!7812573 (= e!4623774 (and tp!2302575 tp!2302574))))

(assert (= (and b!7812077 ((_ is ElementMatch!20913) (regTwo!42339 (regTwo!42339 r2!6144)))) b!7812572))

(assert (= (and b!7812077 ((_ is Concat!29758) (regTwo!42339 (regTwo!42339 r2!6144)))) b!7812573))

(assert (= (and b!7812077 ((_ is Star!20913) (regTwo!42339 (regTwo!42339 r2!6144)))) b!7812574))

(assert (= (and b!7812077 ((_ is Union!20913) (regTwo!42339 (regTwo!42339 r2!6144)))) b!7812575))

(declare-fun b!7812579 () Bool)

(declare-fun e!4623775 () Bool)

(declare-fun tp!2302582 () Bool)

(declare-fun tp!2302581 () Bool)

(assert (=> b!7812579 (= e!4623775 (and tp!2302582 tp!2302581))))

(assert (=> b!7812092 (= tp!2302345 e!4623775)))

(declare-fun b!7812578 () Bool)

(declare-fun tp!2302583 () Bool)

(assert (=> b!7812578 (= e!4623775 tp!2302583)))

(declare-fun b!7812576 () Bool)

(assert (=> b!7812576 (= e!4623775 tp_is_empty!52181)))

(declare-fun b!7812577 () Bool)

(declare-fun tp!2302580 () Bool)

(declare-fun tp!2302579 () Bool)

(assert (=> b!7812577 (= e!4623775 (and tp!2302580 tp!2302579))))

(assert (= (and b!7812092 ((_ is ElementMatch!20913) (reg!21242 (regTwo!42338 r1!6206)))) b!7812576))

(assert (= (and b!7812092 ((_ is Concat!29758) (reg!21242 (regTwo!42338 r1!6206)))) b!7812577))

(assert (= (and b!7812092 ((_ is Star!20913) (reg!21242 (regTwo!42338 r1!6206)))) b!7812578))

(assert (= (and b!7812092 ((_ is Union!20913) (reg!21242 (regTwo!42338 r1!6206)))) b!7812579))

(declare-fun b!7812583 () Bool)

(declare-fun e!4623776 () Bool)

(declare-fun tp!2302587 () Bool)

(declare-fun tp!2302586 () Bool)

(assert (=> b!7812583 (= e!4623776 (and tp!2302587 tp!2302586))))

(assert (=> b!7812059 (= tp!2302307 e!4623776)))

(declare-fun b!7812582 () Bool)

(declare-fun tp!2302588 () Bool)

(assert (=> b!7812582 (= e!4623776 tp!2302588)))

(declare-fun b!7812580 () Bool)

(assert (=> b!7812580 (= e!4623776 tp_is_empty!52181)))

(declare-fun b!7812581 () Bool)

(declare-fun tp!2302585 () Bool)

(declare-fun tp!2302584 () Bool)

(assert (=> b!7812581 (= e!4623776 (and tp!2302585 tp!2302584))))

(assert (= (and b!7812059 ((_ is ElementMatch!20913) (reg!21242 (regTwo!42339 r1!6206)))) b!7812580))

(assert (= (and b!7812059 ((_ is Concat!29758) (reg!21242 (regTwo!42339 r1!6206)))) b!7812581))

(assert (= (and b!7812059 ((_ is Star!20913) (reg!21242 (regTwo!42339 r1!6206)))) b!7812582))

(assert (= (and b!7812059 ((_ is Union!20913) (reg!21242 (regTwo!42339 r1!6206)))) b!7812583))

(declare-fun b!7812587 () Bool)

(declare-fun e!4623777 () Bool)

(declare-fun tp!2302592 () Bool)

(declare-fun tp!2302591 () Bool)

(assert (=> b!7812587 (= e!4623777 (and tp!2302592 tp!2302591))))

(assert (=> b!7812083 (= tp!2302332 e!4623777)))

(declare-fun b!7812586 () Bool)

(declare-fun tp!2302593 () Bool)

(assert (=> b!7812586 (= e!4623777 tp!2302593)))

(declare-fun b!7812584 () Bool)

(assert (=> b!7812584 (= e!4623777 tp_is_empty!52181)))

(declare-fun b!7812585 () Bool)

(declare-fun tp!2302590 () Bool)

(declare-fun tp!2302589 () Bool)

(assert (=> b!7812585 (= e!4623777 (and tp!2302590 tp!2302589))))

(assert (= (and b!7812083 ((_ is ElementMatch!20913) (regOne!42338 (regTwo!42338 r2!6144)))) b!7812584))

(assert (= (and b!7812083 ((_ is Concat!29758) (regOne!42338 (regTwo!42338 r2!6144)))) b!7812585))

(assert (= (and b!7812083 ((_ is Star!20913) (regOne!42338 (regTwo!42338 r2!6144)))) b!7812586))

(assert (= (and b!7812083 ((_ is Union!20913) (regOne!42338 (regTwo!42338 r2!6144)))) b!7812587))

(declare-fun b!7812591 () Bool)

(declare-fun e!4623778 () Bool)

(declare-fun tp!2302597 () Bool)

(declare-fun tp!2302596 () Bool)

(assert (=> b!7812591 (= e!4623778 (and tp!2302597 tp!2302596))))

(assert (=> b!7812083 (= tp!2302331 e!4623778)))

(declare-fun b!7812590 () Bool)

(declare-fun tp!2302598 () Bool)

(assert (=> b!7812590 (= e!4623778 tp!2302598)))

(declare-fun b!7812588 () Bool)

(assert (=> b!7812588 (= e!4623778 tp_is_empty!52181)))

(declare-fun b!7812589 () Bool)

(declare-fun tp!2302595 () Bool)

(declare-fun tp!2302594 () Bool)

(assert (=> b!7812589 (= e!4623778 (and tp!2302595 tp!2302594))))

(assert (= (and b!7812083 ((_ is ElementMatch!20913) (regTwo!42338 (regTwo!42338 r2!6144)))) b!7812588))

(assert (= (and b!7812083 ((_ is Concat!29758) (regTwo!42338 (regTwo!42338 r2!6144)))) b!7812589))

(assert (= (and b!7812083 ((_ is Star!20913) (regTwo!42338 (regTwo!42338 r2!6144)))) b!7812590))

(assert (= (and b!7812083 ((_ is Union!20913) (regTwo!42338 (regTwo!42338 r2!6144)))) b!7812591))

(declare-fun b!7812595 () Bool)

(declare-fun e!4623779 () Bool)

(declare-fun tp!2302602 () Bool)

(declare-fun tp!2302601 () Bool)

(assert (=> b!7812595 (= e!4623779 (and tp!2302602 tp!2302601))))

(assert (=> b!7812058 (= tp!2302304 e!4623779)))

(declare-fun b!7812594 () Bool)

(declare-fun tp!2302603 () Bool)

(assert (=> b!7812594 (= e!4623779 tp!2302603)))

(declare-fun b!7812592 () Bool)

(assert (=> b!7812592 (= e!4623779 tp_is_empty!52181)))

(declare-fun b!7812593 () Bool)

(declare-fun tp!2302600 () Bool)

(declare-fun tp!2302599 () Bool)

(assert (=> b!7812593 (= e!4623779 (and tp!2302600 tp!2302599))))

(assert (= (and b!7812058 ((_ is ElementMatch!20913) (regOne!42338 (regTwo!42339 r1!6206)))) b!7812592))

(assert (= (and b!7812058 ((_ is Concat!29758) (regOne!42338 (regTwo!42339 r1!6206)))) b!7812593))

(assert (= (and b!7812058 ((_ is Star!20913) (regOne!42338 (regTwo!42339 r1!6206)))) b!7812594))

(assert (= (and b!7812058 ((_ is Union!20913) (regOne!42338 (regTwo!42339 r1!6206)))) b!7812595))

(declare-fun b!7812599 () Bool)

(declare-fun e!4623780 () Bool)

(declare-fun tp!2302607 () Bool)

(declare-fun tp!2302606 () Bool)

(assert (=> b!7812599 (= e!4623780 (and tp!2302607 tp!2302606))))

(assert (=> b!7812058 (= tp!2302303 e!4623780)))

(declare-fun b!7812598 () Bool)

(declare-fun tp!2302608 () Bool)

(assert (=> b!7812598 (= e!4623780 tp!2302608)))

(declare-fun b!7812596 () Bool)

(assert (=> b!7812596 (= e!4623780 tp_is_empty!52181)))

(declare-fun b!7812597 () Bool)

(declare-fun tp!2302605 () Bool)

(declare-fun tp!2302604 () Bool)

(assert (=> b!7812597 (= e!4623780 (and tp!2302605 tp!2302604))))

(assert (= (and b!7812058 ((_ is ElementMatch!20913) (regTwo!42338 (regTwo!42339 r1!6206)))) b!7812596))

(assert (= (and b!7812058 ((_ is Concat!29758) (regTwo!42338 (regTwo!42339 r1!6206)))) b!7812597))

(assert (= (and b!7812058 ((_ is Star!20913) (regTwo!42338 (regTwo!42339 r1!6206)))) b!7812598))

(assert (= (and b!7812058 ((_ is Union!20913) (regTwo!42338 (regTwo!42339 r1!6206)))) b!7812599))

(declare-fun b!7812603 () Bool)

(declare-fun e!4623781 () Bool)

(declare-fun tp!2302612 () Bool)

(declare-fun tp!2302611 () Bool)

(assert (=> b!7812603 (= e!4623781 (and tp!2302612 tp!2302611))))

(assert (=> b!7812060 (= tp!2302306 e!4623781)))

(declare-fun b!7812602 () Bool)

(declare-fun tp!2302613 () Bool)

(assert (=> b!7812602 (= e!4623781 tp!2302613)))

(declare-fun b!7812600 () Bool)

(assert (=> b!7812600 (= e!4623781 tp_is_empty!52181)))

(declare-fun b!7812601 () Bool)

(declare-fun tp!2302610 () Bool)

(declare-fun tp!2302609 () Bool)

(assert (=> b!7812601 (= e!4623781 (and tp!2302610 tp!2302609))))

(assert (= (and b!7812060 ((_ is ElementMatch!20913) (regOne!42339 (regTwo!42339 r1!6206)))) b!7812600))

(assert (= (and b!7812060 ((_ is Concat!29758) (regOne!42339 (regTwo!42339 r1!6206)))) b!7812601))

(assert (= (and b!7812060 ((_ is Star!20913) (regOne!42339 (regTwo!42339 r1!6206)))) b!7812602))

(assert (= (and b!7812060 ((_ is Union!20913) (regOne!42339 (regTwo!42339 r1!6206)))) b!7812603))

(declare-fun b!7812607 () Bool)

(declare-fun e!4623782 () Bool)

(declare-fun tp!2302617 () Bool)

(declare-fun tp!2302616 () Bool)

(assert (=> b!7812607 (= e!4623782 (and tp!2302617 tp!2302616))))

(assert (=> b!7812060 (= tp!2302305 e!4623782)))

(declare-fun b!7812606 () Bool)

(declare-fun tp!2302618 () Bool)

(assert (=> b!7812606 (= e!4623782 tp!2302618)))

(declare-fun b!7812604 () Bool)

(assert (=> b!7812604 (= e!4623782 tp_is_empty!52181)))

(declare-fun b!7812605 () Bool)

(declare-fun tp!2302615 () Bool)

(declare-fun tp!2302614 () Bool)

(assert (=> b!7812605 (= e!4623782 (and tp!2302615 tp!2302614))))

(assert (= (and b!7812060 ((_ is ElementMatch!20913) (regTwo!42339 (regTwo!42339 r1!6206)))) b!7812604))

(assert (= (and b!7812060 ((_ is Concat!29758) (regTwo!42339 (regTwo!42339 r1!6206)))) b!7812605))

(assert (= (and b!7812060 ((_ is Star!20913) (regTwo!42339 (regTwo!42339 r1!6206)))) b!7812606))

(assert (= (and b!7812060 ((_ is Union!20913) (regTwo!42339 (regTwo!42339 r1!6206)))) b!7812607))

(declare-fun b!7812611 () Bool)

(declare-fun e!4623783 () Bool)

(declare-fun tp!2302622 () Bool)

(declare-fun tp!2302621 () Bool)

(assert (=> b!7812611 (= e!4623783 (and tp!2302622 tp!2302621))))

(assert (=> b!7812084 (= tp!2302335 e!4623783)))

(declare-fun b!7812610 () Bool)

(declare-fun tp!2302623 () Bool)

(assert (=> b!7812610 (= e!4623783 tp!2302623)))

(declare-fun b!7812608 () Bool)

(assert (=> b!7812608 (= e!4623783 tp_is_empty!52181)))

(declare-fun b!7812609 () Bool)

(declare-fun tp!2302620 () Bool)

(declare-fun tp!2302619 () Bool)

(assert (=> b!7812609 (= e!4623783 (and tp!2302620 tp!2302619))))

(assert (= (and b!7812084 ((_ is ElementMatch!20913) (reg!21242 (regTwo!42338 r2!6144)))) b!7812608))

(assert (= (and b!7812084 ((_ is Concat!29758) (reg!21242 (regTwo!42338 r2!6144)))) b!7812609))

(assert (= (and b!7812084 ((_ is Star!20913) (reg!21242 (regTwo!42338 r2!6144)))) b!7812610))

(assert (= (and b!7812084 ((_ is Union!20913) (reg!21242 (regTwo!42338 r2!6144)))) b!7812611))

(declare-fun b!7812615 () Bool)

(declare-fun e!4623784 () Bool)

(declare-fun tp!2302627 () Bool)

(declare-fun tp!2302626 () Bool)

(assert (=> b!7812615 (= e!4623784 (and tp!2302627 tp!2302626))))

(assert (=> b!7812075 (= tp!2302322 e!4623784)))

(declare-fun b!7812614 () Bool)

(declare-fun tp!2302628 () Bool)

(assert (=> b!7812614 (= e!4623784 tp!2302628)))

(declare-fun b!7812612 () Bool)

(assert (=> b!7812612 (= e!4623784 tp_is_empty!52181)))

(declare-fun b!7812613 () Bool)

(declare-fun tp!2302625 () Bool)

(declare-fun tp!2302624 () Bool)

(assert (=> b!7812613 (= e!4623784 (and tp!2302625 tp!2302624))))

(assert (= (and b!7812075 ((_ is ElementMatch!20913) (regOne!42338 (regTwo!42339 r2!6144)))) b!7812612))

(assert (= (and b!7812075 ((_ is Concat!29758) (regOne!42338 (regTwo!42339 r2!6144)))) b!7812613))

(assert (= (and b!7812075 ((_ is Star!20913) (regOne!42338 (regTwo!42339 r2!6144)))) b!7812614))

(assert (= (and b!7812075 ((_ is Union!20913) (regOne!42338 (regTwo!42339 r2!6144)))) b!7812615))

(declare-fun b!7812619 () Bool)

(declare-fun e!4623785 () Bool)

(declare-fun tp!2302632 () Bool)

(declare-fun tp!2302631 () Bool)

(assert (=> b!7812619 (= e!4623785 (and tp!2302632 tp!2302631))))

(assert (=> b!7812075 (= tp!2302321 e!4623785)))

(declare-fun b!7812618 () Bool)

(declare-fun tp!2302633 () Bool)

(assert (=> b!7812618 (= e!4623785 tp!2302633)))

(declare-fun b!7812616 () Bool)

(assert (=> b!7812616 (= e!4623785 tp_is_empty!52181)))

(declare-fun b!7812617 () Bool)

(declare-fun tp!2302630 () Bool)

(declare-fun tp!2302629 () Bool)

(assert (=> b!7812617 (= e!4623785 (and tp!2302630 tp!2302629))))

(assert (= (and b!7812075 ((_ is ElementMatch!20913) (regTwo!42338 (regTwo!42339 r2!6144)))) b!7812616))

(assert (= (and b!7812075 ((_ is Concat!29758) (regTwo!42338 (regTwo!42339 r2!6144)))) b!7812617))

(assert (= (and b!7812075 ((_ is Star!20913) (regTwo!42338 (regTwo!42339 r2!6144)))) b!7812618))

(assert (= (and b!7812075 ((_ is Union!20913) (regTwo!42338 (regTwo!42339 r2!6144)))) b!7812619))

(declare-fun b!7812623 () Bool)

(declare-fun e!4623786 () Bool)

(declare-fun tp!2302637 () Bool)

(declare-fun tp!2302636 () Bool)

(assert (=> b!7812623 (= e!4623786 (and tp!2302637 tp!2302636))))

(assert (=> b!7812093 (= tp!2302344 e!4623786)))

(declare-fun b!7812622 () Bool)

(declare-fun tp!2302638 () Bool)

(assert (=> b!7812622 (= e!4623786 tp!2302638)))

(declare-fun b!7812620 () Bool)

(assert (=> b!7812620 (= e!4623786 tp_is_empty!52181)))

(declare-fun b!7812621 () Bool)

(declare-fun tp!2302635 () Bool)

(declare-fun tp!2302634 () Bool)

(assert (=> b!7812621 (= e!4623786 (and tp!2302635 tp!2302634))))

(assert (= (and b!7812093 ((_ is ElementMatch!20913) (regOne!42339 (regTwo!42338 r1!6206)))) b!7812620))

(assert (= (and b!7812093 ((_ is Concat!29758) (regOne!42339 (regTwo!42338 r1!6206)))) b!7812621))

(assert (= (and b!7812093 ((_ is Star!20913) (regOne!42339 (regTwo!42338 r1!6206)))) b!7812622))

(assert (= (and b!7812093 ((_ is Union!20913) (regOne!42339 (regTwo!42338 r1!6206)))) b!7812623))

(declare-fun b!7812627 () Bool)

(declare-fun e!4623787 () Bool)

(declare-fun tp!2302642 () Bool)

(declare-fun tp!2302641 () Bool)

(assert (=> b!7812627 (= e!4623787 (and tp!2302642 tp!2302641))))

(assert (=> b!7812093 (= tp!2302343 e!4623787)))

(declare-fun b!7812626 () Bool)

(declare-fun tp!2302643 () Bool)

(assert (=> b!7812626 (= e!4623787 tp!2302643)))

(declare-fun b!7812624 () Bool)

(assert (=> b!7812624 (= e!4623787 tp_is_empty!52181)))

(declare-fun b!7812625 () Bool)

(declare-fun tp!2302640 () Bool)

(declare-fun tp!2302639 () Bool)

(assert (=> b!7812625 (= e!4623787 (and tp!2302640 tp!2302639))))

(assert (= (and b!7812093 ((_ is ElementMatch!20913) (regTwo!42339 (regTwo!42338 r1!6206)))) b!7812624))

(assert (= (and b!7812093 ((_ is Concat!29758) (regTwo!42339 (regTwo!42338 r1!6206)))) b!7812625))

(assert (= (and b!7812093 ((_ is Star!20913) (regTwo!42339 (regTwo!42338 r1!6206)))) b!7812626))

(assert (= (and b!7812093 ((_ is Union!20913) (regTwo!42339 (regTwo!42338 r1!6206)))) b!7812627))

(declare-fun b!7812631 () Bool)

(declare-fun e!4623788 () Bool)

(declare-fun tp!2302647 () Bool)

(declare-fun tp!2302646 () Bool)

(assert (=> b!7812631 (= e!4623788 (and tp!2302647 tp!2302646))))

(assert (=> b!7812062 (= tp!2302309 e!4623788)))

(declare-fun b!7812630 () Bool)

(declare-fun tp!2302648 () Bool)

(assert (=> b!7812630 (= e!4623788 tp!2302648)))

(declare-fun b!7812628 () Bool)

(assert (=> b!7812628 (= e!4623788 tp_is_empty!52181)))

(declare-fun b!7812629 () Bool)

(declare-fun tp!2302645 () Bool)

(declare-fun tp!2302644 () Bool)

(assert (=> b!7812629 (= e!4623788 (and tp!2302645 tp!2302644))))

(assert (= (and b!7812062 ((_ is ElementMatch!20913) (regOne!42338 (reg!21242 r1!6206)))) b!7812628))

(assert (= (and b!7812062 ((_ is Concat!29758) (regOne!42338 (reg!21242 r1!6206)))) b!7812629))

(assert (= (and b!7812062 ((_ is Star!20913) (regOne!42338 (reg!21242 r1!6206)))) b!7812630))

(assert (= (and b!7812062 ((_ is Union!20913) (regOne!42338 (reg!21242 r1!6206)))) b!7812631))

(declare-fun b!7812635 () Bool)

(declare-fun e!4623789 () Bool)

(declare-fun tp!2302652 () Bool)

(declare-fun tp!2302651 () Bool)

(assert (=> b!7812635 (= e!4623789 (and tp!2302652 tp!2302651))))

(assert (=> b!7812062 (= tp!2302308 e!4623789)))

(declare-fun b!7812634 () Bool)

(declare-fun tp!2302653 () Bool)

(assert (=> b!7812634 (= e!4623789 tp!2302653)))

(declare-fun b!7812632 () Bool)

(assert (=> b!7812632 (= e!4623789 tp_is_empty!52181)))

(declare-fun b!7812633 () Bool)

(declare-fun tp!2302650 () Bool)

(declare-fun tp!2302649 () Bool)

(assert (=> b!7812633 (= e!4623789 (and tp!2302650 tp!2302649))))

(assert (= (and b!7812062 ((_ is ElementMatch!20913) (regTwo!42338 (reg!21242 r1!6206)))) b!7812632))

(assert (= (and b!7812062 ((_ is Concat!29758) (regTwo!42338 (reg!21242 r1!6206)))) b!7812633))

(assert (= (and b!7812062 ((_ is Star!20913) (regTwo!42338 (reg!21242 r1!6206)))) b!7812634))

(assert (= (and b!7812062 ((_ is Union!20913) (regTwo!42338 (reg!21242 r1!6206)))) b!7812635))

(declare-fun b!7812639 () Bool)

(declare-fun e!4623790 () Bool)

(declare-fun tp!2302657 () Bool)

(declare-fun tp!2302656 () Bool)

(assert (=> b!7812639 (= e!4623790 (and tp!2302657 tp!2302656))))

(assert (=> b!7812095 (= tp!2302347 e!4623790)))

(declare-fun b!7812638 () Bool)

(declare-fun tp!2302658 () Bool)

(assert (=> b!7812638 (= e!4623790 tp!2302658)))

(declare-fun b!7812636 () Bool)

(assert (=> b!7812636 (= e!4623790 tp_is_empty!52181)))

(declare-fun b!7812637 () Bool)

(declare-fun tp!2302655 () Bool)

(declare-fun tp!2302654 () Bool)

(assert (=> b!7812637 (= e!4623790 (and tp!2302655 tp!2302654))))

(assert (= (and b!7812095 ((_ is ElementMatch!20913) (regOne!42338 (reg!21242 r2!6144)))) b!7812636))

(assert (= (and b!7812095 ((_ is Concat!29758) (regOne!42338 (reg!21242 r2!6144)))) b!7812637))

(assert (= (and b!7812095 ((_ is Star!20913) (regOne!42338 (reg!21242 r2!6144)))) b!7812638))

(assert (= (and b!7812095 ((_ is Union!20913) (regOne!42338 (reg!21242 r2!6144)))) b!7812639))

(declare-fun b!7812643 () Bool)

(declare-fun e!4623791 () Bool)

(declare-fun tp!2302662 () Bool)

(declare-fun tp!2302661 () Bool)

(assert (=> b!7812643 (= e!4623791 (and tp!2302662 tp!2302661))))

(assert (=> b!7812095 (= tp!2302346 e!4623791)))

(declare-fun b!7812642 () Bool)

(declare-fun tp!2302663 () Bool)

(assert (=> b!7812642 (= e!4623791 tp!2302663)))

(declare-fun b!7812640 () Bool)

(assert (=> b!7812640 (= e!4623791 tp_is_empty!52181)))

(declare-fun b!7812641 () Bool)

(declare-fun tp!2302660 () Bool)

(declare-fun tp!2302659 () Bool)

(assert (=> b!7812641 (= e!4623791 (and tp!2302660 tp!2302659))))

(assert (= (and b!7812095 ((_ is ElementMatch!20913) (regTwo!42338 (reg!21242 r2!6144)))) b!7812640))

(assert (= (and b!7812095 ((_ is Concat!29758) (regTwo!42338 (reg!21242 r2!6144)))) b!7812641))

(assert (= (and b!7812095 ((_ is Star!20913) (regTwo!42338 (reg!21242 r2!6144)))) b!7812642))

(assert (= (and b!7812095 ((_ is Union!20913) (regTwo!42338 (reg!21242 r2!6144)))) b!7812643))

(declare-fun b!7812644 () Bool)

(declare-fun e!4623792 () Bool)

(declare-fun tp!2302664 () Bool)

(assert (=> b!7812644 (= e!4623792 (and tp_is_empty!52181 tp!2302664))))

(assert (=> b!7812069 (= tp!2302315 e!4623792)))

(assert (= (and b!7812069 ((_ is Cons!73626) (t!388485 (t!388485 s!14225)))) b!7812644))

(check-sat (not b!7812469) (not b!7812502) (not b!7812609) (not bm!724694) (not b!7812631) (not b!7812478) (not b!7812586) (not b!7812569) (not d!2348846) (not b!7812575) (not b!7812349) (not b!7812475) (not bm!724719) (not b!7812259) (not bm!724720) (not b!7812545) (not b!7812531) (not b!7812543) (not b!7812546) (not b!7812625) (not b!7812644) (not b!7812518) (not b!7812491) (not b!7812493) (not b!7812566) (not b!7812579) (not b!7812601) (not bm!724691) (not d!2348838) (not bm!724682) (not b!7812598) (not b!7812555) (not b!7812573) (not bm!724705) (not b!7812639) (not b!7812357) (not d!2348862) (not d!2348834) (not b!7812461) (not b!7812408) (not b!7812583) (not bm!724703) (not b!7812466) (not b!7812497) (not b!7812431) (not b!7812350) (not b!7812503) (not b!7812522) (not b!7812499) (not b!7812541) (not b!7812567) (not b!7812539) (not b!7812495) (not b!7812594) (not bm!724710) (not d!2348878) (not bm!724692) (not d!2348820) (not b!7812405) (not d!2348842) (not b!7812606) (not b!7812571) (not d!2348874) (not b!7812626) (not b!7812630) (not b!7812459) (not b!7812607) (not b!7812481) (not b!7812537) (not bm!724715) (not b!7812634) (not b!7812467) (not bm!724698) (not b!7812622) (not b!7812399) (not b!7812533) (not b!7812513) (not b!7812254) (not b!7812627) (not b!7812450) (not bm!724717) (not b!7812542) (not b!7812559) (not bm!724688) (not bm!724726) (not d!2348840) (not b!7812447) (not b!7812635) (not b!7812397) (not b!7812638) (not b!7812614) (not b!7812643) (not bm!724695) (not b!7812454) (not bm!724712) (not b!7812529) (not b!7812486) (not b!7812619) (not b!7812453) (not b!7812400) (not b!7812589) (not b!7812590) (not b!7812517) (not b!7812389) (not b!7812301) (not b!7812501) (not b!7812561) (not b!7812455) (not b!7812558) (not b!7812487) (not b!7812342) (not b!7812602) (not b!7812610) (not bm!724730) (not b!7812482) (not d!2348850) (not b!7812514) (not b!7812565) (not b!7812557) (not b!7812547) (not bm!724671) (not b!7812470) (not b!7812462) (not d!2348868) (not b!7812551) (not b!7812593) (not b!7812550) (not bm!724675) (not b!7812315) (not b!7812603) (not b!7812521) (not b!7812574) (not b!7812526) (not b!7812554) (not b!7812515) (not b!7812292) (not b!7812494) (not b!7812449) (not b!7812498) (not bm!724679) (not bm!724701) (not b!7812562) (not b!7812507) (not bm!724699) (not b!7812623) (not b!7812621) (not b!7812458) (not b!7812618) (not b!7812463) (not bm!724706) (not b!7812585) (not b!7812591) (not bm!724672) (not b!7812269) (not b!7812582) (not b!7812642) (not b!7812329) (not bm!724678) (not b!7812519) (not b!7812485) (not b!7812354) (not b!7812535) (not b!7812310) (not b!7812595) (not bm!724727) (not d!2348818) (not b!7812422) (not b!7812465) (not b!7812338) (not b!7812509) (not b!7812605) (not d!2348866) (not b!7812505) (not b!7812451) (not b!7812510) (not b!7812611) (not b!7812629) (not b!7812445) (not bm!724689) (not b!7812599) (not b!7812570) (not b!7812283) (not b!7812393) (not bm!724723) (not b!7812525) (not b!7812474) (not b!7812637) (not b!7812490) (not b!7812578) (not b!7812483) (not b!7812617) (not b!7812446) (not b!7812530) (not b!7812597) (not b!7812553) (not b!7812615) (not bm!724686) (not b!7812371) (not b!7812489) (not bm!724724) (not d!2348836) (not b!7812436) (not b!7812538) (not b!7812380) (not bm!724709) (not b!7812581) (not b!7812523) (not bm!724685) (not b!7812587) tp_is_empty!52181 (not bm!724674) (not bm!724702) (not b!7812563) (not b!7812527) (not b!7812479) (not b!7812457) (not b!7812613) (not b!7812633) (not bm!724713) (not b!7812511) (not b!7812473) (not b!7812348) (not b!7812577) (not bm!724729) (not b!7812506) (not d!2348852) (not b!7812641) (not b!7812346) (not b!7812549) (not bm!724716) (not b!7812534) (not bm!724683) (not d!2348870) (not b!7812401) (not b!7812477) (not b!7812471))
(check-sat)
