; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744784 () Bool)

(assert start!744784)

(declare-fun res!3132506 () Bool)

(declare-fun e!4660961 () Bool)

(assert (=> start!744784 (=> (not res!3132506) (not e!4660961))))

(declare-datatypes ((C!42784 0))(
  ( (C!42785 (val!31854 Int)) )
))
(declare-datatypes ((Regex!21229 0))(
  ( (ElementMatch!21229 (c!1449404 C!42784)) (Concat!30074 (regOne!42970 Regex!21229) (regTwo!42970 Regex!21229)) (EmptyExpr!21229) (Star!21229 (reg!21558 Regex!21229)) (EmptyLang!21229) (Union!21229 (regOne!42971 Regex!21229) (regTwo!42971 Regex!21229)) )
))
(declare-datatypes ((List!74097 0))(
  ( (Nil!73973) (Cons!73973 (h!80421 Regex!21229) (t!388832 List!74097)) )
))
(declare-datatypes ((Context!17090 0))(
  ( (Context!17091 (exprs!9045 List!74097)) )
))
(declare-datatypes ((List!74098 0))(
  ( (Nil!73974) (Cons!73974 (h!80422 Context!17090) (t!388833 List!74098)) )
))
(declare-fun zl!160 () List!74098)

(get-info :version)

(assert (=> start!744784 (= res!3132506 ((_ is Cons!73974) zl!160))))

(assert (=> start!744784 e!4660961))

(declare-fun e!4660960 () Bool)

(assert (=> start!744784 e!4660960))

(declare-fun b!7896786 () Bool)

(declare-fun ListPrimitiveSize!476 (List!74098) Int)

(assert (=> b!7896786 (= e!4660961 (>= (ListPrimitiveSize!476 (t!388833 zl!160)) (ListPrimitiveSize!476 zl!160)))))

(declare-fun lt!2681714 () Regex!21229)

(declare-fun generalisedConcat!2474 (List!74097) Regex!21229)

(assert (=> b!7896786 (= lt!2681714 (generalisedConcat!2474 (exprs!9045 (h!80422 zl!160))))))

(declare-fun b!7896788 () Bool)

(declare-fun e!4660962 () Bool)

(declare-fun tp!2352617 () Bool)

(assert (=> b!7896788 (= e!4660962 tp!2352617)))

(declare-fun b!7896787 () Bool)

(declare-fun tp!2352618 () Bool)

(declare-fun inv!94962 (Context!17090) Bool)

(assert (=> b!7896787 (= e!4660960 (and (inv!94962 (h!80422 zl!160)) e!4660962 tp!2352618))))

(assert (= (and start!744784 res!3132506) b!7896786))

(assert (= b!7896787 b!7896788))

(assert (= (and start!744784 ((_ is Cons!73974) zl!160)) b!7896787))

(declare-fun m!8272188 () Bool)

(assert (=> b!7896786 m!8272188))

(declare-fun m!8272190 () Bool)

(assert (=> b!7896786 m!8272190))

(declare-fun m!8272192 () Bool)

(assert (=> b!7896786 m!8272192))

(declare-fun m!8272194 () Bool)

(assert (=> b!7896787 m!8272194))

(check-sat (not b!7896787) (not b!7896786) (not b!7896788))
(check-sat)
(get-model)

(declare-fun d!2357495 () Bool)

(declare-fun lambda!472300 () Int)

(declare-fun forall!18428 (List!74097 Int) Bool)

(assert (=> d!2357495 (= (inv!94962 (h!80422 zl!160)) (forall!18428 (exprs!9045 (h!80422 zl!160)) lambda!472300))))

(declare-fun bs!1967778 () Bool)

(assert (= bs!1967778 d!2357495))

(declare-fun m!8272196 () Bool)

(assert (=> bs!1967778 m!8272196))

(assert (=> b!7896787 d!2357495))

(declare-fun d!2357497 () Bool)

(declare-fun lt!2681717 () Int)

(assert (=> d!2357497 (>= lt!2681717 0)))

(declare-fun e!4660965 () Int)

(assert (=> d!2357497 (= lt!2681717 e!4660965)))

(declare-fun c!1449407 () Bool)

(assert (=> d!2357497 (= c!1449407 ((_ is Nil!73974) (t!388833 zl!160)))))

(assert (=> d!2357497 (= (ListPrimitiveSize!476 (t!388833 zl!160)) lt!2681717)))

(declare-fun b!7896793 () Bool)

(assert (=> b!7896793 (= e!4660965 0)))

(declare-fun b!7896794 () Bool)

(assert (=> b!7896794 (= e!4660965 (+ 1 (ListPrimitiveSize!476 (t!388833 (t!388833 zl!160)))))))

(assert (= (and d!2357497 c!1449407) b!7896793))

(assert (= (and d!2357497 (not c!1449407)) b!7896794))

(declare-fun m!8272198 () Bool)

(assert (=> b!7896794 m!8272198))

(assert (=> b!7896786 d!2357497))

(declare-fun d!2357499 () Bool)

(declare-fun lt!2681718 () Int)

(assert (=> d!2357499 (>= lt!2681718 0)))

(declare-fun e!4660966 () Int)

(assert (=> d!2357499 (= lt!2681718 e!4660966)))

(declare-fun c!1449408 () Bool)

(assert (=> d!2357499 (= c!1449408 ((_ is Nil!73974) zl!160))))

(assert (=> d!2357499 (= (ListPrimitiveSize!476 zl!160) lt!2681718)))

(declare-fun b!7896795 () Bool)

(assert (=> b!7896795 (= e!4660966 0)))

(declare-fun b!7896796 () Bool)

(assert (=> b!7896796 (= e!4660966 (+ 1 (ListPrimitiveSize!476 (t!388833 zl!160))))))

(assert (= (and d!2357499 c!1449408) b!7896795))

(assert (= (and d!2357499 (not c!1449408)) b!7896796))

(assert (=> b!7896796 m!8272188))

(assert (=> b!7896786 d!2357499))

(declare-fun bs!1967779 () Bool)

(declare-fun d!2357501 () Bool)

(assert (= bs!1967779 (and d!2357501 d!2357495)))

(declare-fun lambda!472305 () Int)

(assert (=> bs!1967779 (= lambda!472305 lambda!472300)))

(declare-fun b!7896817 () Bool)

(declare-fun e!4660983 () Bool)

(declare-fun lt!2681721 () Regex!21229)

(declare-fun head!16131 (List!74097) Regex!21229)

(assert (=> b!7896817 (= e!4660983 (= lt!2681721 (head!16131 (exprs!9045 (h!80422 zl!160)))))))

(declare-fun b!7896818 () Bool)

(declare-fun e!4660980 () Bool)

(declare-fun e!4660982 () Bool)

(assert (=> b!7896818 (= e!4660980 e!4660982)))

(declare-fun c!1449418 () Bool)

(declare-fun isEmpty!42436 (List!74097) Bool)

(assert (=> b!7896818 (= c!1449418 (isEmpty!42436 (exprs!9045 (h!80422 zl!160))))))

(declare-fun b!7896819 () Bool)

(declare-fun e!4660984 () Regex!21229)

(declare-fun e!4660979 () Regex!21229)

(assert (=> b!7896819 (= e!4660984 e!4660979)))

(declare-fun c!1449420 () Bool)

(assert (=> b!7896819 (= c!1449420 ((_ is Cons!73973) (exprs!9045 (h!80422 zl!160))))))

(declare-fun b!7896820 () Bool)

(declare-fun isEmptyExpr!2101 (Regex!21229) Bool)

(assert (=> b!7896820 (= e!4660982 (isEmptyExpr!2101 lt!2681721))))

(declare-fun b!7896822 () Bool)

(assert (=> b!7896822 (= e!4660979 EmptyExpr!21229)))

(declare-fun b!7896823 () Bool)

(assert (=> b!7896823 (= e!4660984 (h!80421 (exprs!9045 (h!80422 zl!160))))))

(declare-fun b!7896824 () Bool)

(assert (=> b!7896824 (= e!4660982 e!4660983)))

(declare-fun c!1449417 () Bool)

(declare-fun tail!15675 (List!74097) List!74097)

(assert (=> b!7896824 (= c!1449417 (isEmpty!42436 (tail!15675 (exprs!9045 (h!80422 zl!160)))))))

(declare-fun b!7896825 () Bool)

(declare-fun isConcat!1623 (Regex!21229) Bool)

(assert (=> b!7896825 (= e!4660983 (isConcat!1623 lt!2681721))))

(declare-fun b!7896826 () Bool)

(declare-fun e!4660981 () Bool)

(assert (=> b!7896826 (= e!4660981 (isEmpty!42436 (t!388832 (exprs!9045 (h!80422 zl!160)))))))

(assert (=> d!2357501 e!4660980))

(declare-fun res!3132511 () Bool)

(assert (=> d!2357501 (=> (not res!3132511) (not e!4660980))))

(declare-fun validRegex!11634 (Regex!21229) Bool)

(assert (=> d!2357501 (= res!3132511 (validRegex!11634 lt!2681721))))

(assert (=> d!2357501 (= lt!2681721 e!4660984)))

(declare-fun c!1449419 () Bool)

(assert (=> d!2357501 (= c!1449419 e!4660981)))

(declare-fun res!3132512 () Bool)

(assert (=> d!2357501 (=> (not res!3132512) (not e!4660981))))

(assert (=> d!2357501 (= res!3132512 ((_ is Cons!73973) (exprs!9045 (h!80422 zl!160))))))

(assert (=> d!2357501 (forall!18428 (exprs!9045 (h!80422 zl!160)) lambda!472305)))

(assert (=> d!2357501 (= (generalisedConcat!2474 (exprs!9045 (h!80422 zl!160))) lt!2681721)))

(declare-fun b!7896821 () Bool)

(assert (=> b!7896821 (= e!4660979 (Concat!30074 (h!80421 (exprs!9045 (h!80422 zl!160))) (generalisedConcat!2474 (t!388832 (exprs!9045 (h!80422 zl!160))))))))

(assert (= (and d!2357501 res!3132512) b!7896826))

(assert (= (and d!2357501 c!1449419) b!7896823))

(assert (= (and d!2357501 (not c!1449419)) b!7896819))

(assert (= (and b!7896819 c!1449420) b!7896821))

(assert (= (and b!7896819 (not c!1449420)) b!7896822))

(assert (= (and d!2357501 res!3132511) b!7896818))

(assert (= (and b!7896818 c!1449418) b!7896820))

(assert (= (and b!7896818 (not c!1449418)) b!7896824))

(assert (= (and b!7896824 c!1449417) b!7896817))

(assert (= (and b!7896824 (not c!1449417)) b!7896825))

(declare-fun m!8272202 () Bool)

(assert (=> b!7896825 m!8272202))

(declare-fun m!8272204 () Bool)

(assert (=> b!7896824 m!8272204))

(assert (=> b!7896824 m!8272204))

(declare-fun m!8272206 () Bool)

(assert (=> b!7896824 m!8272206))

(declare-fun m!8272208 () Bool)

(assert (=> b!7896826 m!8272208))

(declare-fun m!8272210 () Bool)

(assert (=> b!7896818 m!8272210))

(declare-fun m!8272212 () Bool)

(assert (=> b!7896817 m!8272212))

(declare-fun m!8272214 () Bool)

(assert (=> d!2357501 m!8272214))

(declare-fun m!8272216 () Bool)

(assert (=> d!2357501 m!8272216))

(declare-fun m!8272218 () Bool)

(assert (=> b!7896821 m!8272218))

(declare-fun m!8272220 () Bool)

(assert (=> b!7896820 m!8272220))

(assert (=> b!7896786 d!2357501))

(declare-fun b!7896834 () Bool)

(declare-fun e!4660990 () Bool)

(declare-fun tp!2352623 () Bool)

(assert (=> b!7896834 (= e!4660990 tp!2352623)))

(declare-fun tp!2352624 () Bool)

(declare-fun b!7896833 () Bool)

(declare-fun e!4660989 () Bool)

(assert (=> b!7896833 (= e!4660989 (and (inv!94962 (h!80422 (t!388833 zl!160))) e!4660990 tp!2352624))))

(assert (=> b!7896787 (= tp!2352618 e!4660989)))

(assert (= b!7896833 b!7896834))

(assert (= (and b!7896787 ((_ is Cons!73974) (t!388833 zl!160))) b!7896833))

(declare-fun m!8272222 () Bool)

(assert (=> b!7896833 m!8272222))

(declare-fun b!7896839 () Bool)

(declare-fun e!4660993 () Bool)

(declare-fun tp!2352629 () Bool)

(declare-fun tp!2352630 () Bool)

(assert (=> b!7896839 (= e!4660993 (and tp!2352629 tp!2352630))))

(assert (=> b!7896788 (= tp!2352617 e!4660993)))

(assert (= (and b!7896788 ((_ is Cons!73973) (exprs!9045 (h!80422 zl!160)))) b!7896839))

(check-sat (not b!7896833) (not b!7896826) (not b!7896839) (not d!2357495) (not b!7896817) (not d!2357501) (not b!7896794) (not b!7896820) (not b!7896824) (not b!7896796) (not b!7896834) (not b!7896821) (not b!7896818) (not b!7896825))
(check-sat)
