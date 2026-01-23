; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571598 () Bool)

(assert start!571598)

(declare-fun b!5457009 () Bool)

(assert (=> b!5457009 true))

(assert (=> b!5457009 true))

(declare-fun lambda!288843 () Int)

(declare-fun lambda!288842 () Int)

(assert (=> b!5457009 (not (= lambda!288843 lambda!288842))))

(assert (=> b!5457009 true))

(assert (=> b!5457009 true))

(declare-fun b!5457004 () Bool)

(assert (=> b!5457004 true))

(declare-fun bs!1262587 () Bool)

(declare-fun b!5457008 () Bool)

(assert (= bs!1262587 (and b!5457008 b!5457009)))

(declare-datatypes ((C!30840 0))(
  ( (C!30841 (val!25122 Int)) )
))
(declare-datatypes ((Regex!15285 0))(
  ( (ElementMatch!15285 (c!953215 C!30840)) (Concat!24130 (regOne!31082 Regex!15285) (regTwo!31082 Regex!15285)) (EmptyExpr!15285) (Star!15285 (reg!15614 Regex!15285)) (EmptyLang!15285) (Union!15285 (regOne!31083 Regex!15285) (regTwo!31083 Regex!15285)) )
))
(declare-fun r!7292 () Regex!15285)

(declare-fun lambda!288845 () Int)

(declare-fun lt!2228179 () Regex!15285)

(assert (=> bs!1262587 (= (and (= (regOne!31082 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228179 (regTwo!31082 r!7292))) (= lambda!288845 lambda!288842))))

(assert (=> bs!1262587 (not (= lambda!288845 lambda!288843))))

(assert (=> b!5457008 true))

(assert (=> b!5457008 true))

(assert (=> b!5457008 true))

(declare-fun lambda!288846 () Int)

(assert (=> bs!1262587 (not (= lambda!288846 lambda!288842))))

(assert (=> bs!1262587 (= (and (= (regOne!31082 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228179 (regTwo!31082 r!7292))) (= lambda!288846 lambda!288843))))

(assert (=> b!5457008 (not (= lambda!288846 lambda!288845))))

(assert (=> b!5457008 true))

(assert (=> b!5457008 true))

(assert (=> b!5457008 true))

(declare-fun lambda!288847 () Int)

(declare-fun lt!2228361 () Regex!15285)

(assert (=> bs!1262587 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228361 (regTwo!31082 r!7292))) (= lambda!288847 lambda!288842))))

(assert (=> bs!1262587 (not (= lambda!288847 lambda!288843))))

(assert (=> b!5457008 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228361 lt!2228179)) (= lambda!288847 lambda!288845))))

(assert (=> b!5457008 (not (= lambda!288847 lambda!288846))))

(assert (=> b!5457008 true))

(assert (=> b!5457008 true))

(assert (=> b!5457008 true))

(declare-fun lambda!288848 () Int)

(assert (=> b!5457008 (not (= lambda!288848 lambda!288847))))

(assert (=> bs!1262587 (not (= lambda!288848 lambda!288842))))

(assert (=> b!5457008 (not (= lambda!288848 lambda!288845))))

(assert (=> b!5457008 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228361 lt!2228179)) (= lambda!288848 lambda!288846))))

(assert (=> bs!1262587 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228361 (regTwo!31082 r!7292))) (= lambda!288848 lambda!288843))))

(assert (=> b!5457008 true))

(assert (=> b!5457008 true))

(assert (=> b!5457008 true))

(declare-fun bs!1262588 () Bool)

(declare-fun b!5456961 () Bool)

(assert (= bs!1262588 (and b!5456961 b!5457008)))

(declare-fun lambda!288849 () Int)

(declare-fun lt!2228281 () Regex!15285)

(assert (=> bs!1262588 (= (and (= (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228281 lt!2228361)) (= lambda!288849 lambda!288847))))

(declare-fun bs!1262589 () Bool)

(assert (= bs!1262589 (and b!5456961 b!5457009)))

(assert (=> bs!1262589 (= (and (= (regOne!31082 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228281 (regTwo!31082 r!7292))) (= lambda!288849 lambda!288842))))

(assert (=> bs!1262588 (not (= lambda!288849 lambda!288848))))

(assert (=> bs!1262588 (= (= lt!2228281 lt!2228179) (= lambda!288849 lambda!288845))))

(assert (=> bs!1262588 (not (= lambda!288849 lambda!288846))))

(assert (=> bs!1262589 (not (= lambda!288849 lambda!288843))))

(assert (=> b!5456961 true))

(assert (=> b!5456961 true))

(assert (=> b!5456961 true))

(declare-fun lambda!288850 () Int)

(assert (=> bs!1262588 (not (= lambda!288850 lambda!288847))))

(assert (=> bs!1262589 (not (= lambda!288850 lambda!288842))))

(assert (=> bs!1262588 (= (and (= (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228281 lt!2228361)) (= lambda!288850 lambda!288848))))

(assert (=> bs!1262588 (not (= lambda!288850 lambda!288845))))

(assert (=> bs!1262588 (= (= lt!2228281 lt!2228179) (= lambda!288850 lambda!288846))))

(assert (=> b!5456961 (not (= lambda!288850 lambda!288849))))

(assert (=> bs!1262589 (= (and (= (regOne!31082 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228281 (regTwo!31082 r!7292))) (= lambda!288850 lambda!288843))))

(assert (=> b!5456961 true))

(assert (=> b!5456961 true))

(assert (=> b!5456961 true))

(declare-fun lambda!288851 () Int)

(declare-fun lt!2228185 () Regex!15285)

(assert (=> bs!1262588 (= (= lt!2228185 lt!2228361) (= lambda!288851 lambda!288847))))

(assert (=> bs!1262589 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228185 (regTwo!31082 r!7292))) (= lambda!288851 lambda!288842))))

(assert (=> bs!1262588 (not (= lambda!288851 lambda!288848))))

(assert (=> bs!1262588 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228185 lt!2228179)) (= lambda!288851 lambda!288845))))

(assert (=> bs!1262588 (not (= lambda!288851 lambda!288846))))

(assert (=> b!5456961 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228185 lt!2228281)) (= lambda!288851 lambda!288849))))

(assert (=> b!5456961 (not (= lambda!288851 lambda!288850))))

(assert (=> bs!1262589 (not (= lambda!288851 lambda!288843))))

(assert (=> b!5456961 true))

(assert (=> b!5456961 true))

(assert (=> b!5456961 true))

(declare-fun lambda!288852 () Int)

(assert (=> bs!1262588 (not (= lambda!288852 lambda!288847))))

(assert (=> bs!1262589 (not (= lambda!288852 lambda!288842))))

(assert (=> b!5456961 (not (= lambda!288852 lambda!288851))))

(assert (=> bs!1262588 (= (= lt!2228185 lt!2228361) (= lambda!288852 lambda!288848))))

(assert (=> bs!1262588 (not (= lambda!288852 lambda!288845))))

(assert (=> bs!1262588 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228185 lt!2228179)) (= lambda!288852 lambda!288846))))

(assert (=> b!5456961 (not (= lambda!288852 lambda!288849))))

(assert (=> b!5456961 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228185 lt!2228281)) (= lambda!288852 lambda!288850))))

(assert (=> bs!1262589 (= (and (= (regTwo!31082 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228185 (regTwo!31082 r!7292))) (= lambda!288852 lambda!288843))))

(assert (=> b!5456961 true))

(assert (=> b!5456961 true))

(assert (=> b!5456961 true))

(declare-fun bs!1262590 () Bool)

(declare-fun b!5456966 () Bool)

(assert (= bs!1262590 (and b!5456966 b!5457008)))

(declare-fun lt!2228350 () Regex!15285)

(declare-fun lambda!288853 () Int)

(assert (=> bs!1262590 (= (and (= lt!2228350 (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228361)) (= lambda!288853 lambda!288847))))

(declare-fun bs!1262591 () Bool)

(assert (= bs!1262591 (and b!5456966 b!5457009)))

(assert (=> bs!1262591 (= (= lt!2228350 (regOne!31082 r!7292)) (= lambda!288853 lambda!288842))))

(declare-fun bs!1262592 () Bool)

(assert (= bs!1262592 (and b!5456966 b!5456961)))

(assert (=> bs!1262592 (= (and (= lt!2228350 (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228185)) (= lambda!288853 lambda!288851))))

(assert (=> bs!1262590 (not (= lambda!288853 lambda!288848))))

(assert (=> bs!1262590 (= (and (= lt!2228350 (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228179)) (= lambda!288853 lambda!288845))))

(assert (=> bs!1262592 (not (= lambda!288853 lambda!288852))))

(assert (=> bs!1262590 (not (= lambda!288853 lambda!288846))))

(assert (=> bs!1262592 (= (and (= lt!2228350 (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228281)) (= lambda!288853 lambda!288849))))

(assert (=> bs!1262592 (not (= lambda!288853 lambda!288850))))

(assert (=> bs!1262591 (not (= lambda!288853 lambda!288843))))

(assert (=> b!5456966 true))

(assert (=> b!5456966 true))

(assert (=> b!5456966 true))

(declare-fun lambda!288854 () Int)

(assert (=> bs!1262590 (not (= lambda!288854 lambda!288847))))

(assert (=> bs!1262591 (not (= lambda!288854 lambda!288842))))

(assert (=> bs!1262592 (not (= lambda!288854 lambda!288851))))

(assert (=> bs!1262590 (= (and (= lt!2228350 (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228361)) (= lambda!288854 lambda!288848))))

(assert (=> bs!1262590 (not (= lambda!288854 lambda!288845))))

(assert (=> bs!1262592 (= (and (= lt!2228350 (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228185)) (= lambda!288854 lambda!288852))))

(assert (=> bs!1262590 (= (and (= lt!2228350 (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228179)) (= lambda!288854 lambda!288846))))

(assert (=> b!5456966 (not (= lambda!288854 lambda!288853))))

(assert (=> bs!1262592 (not (= lambda!288854 lambda!288849))))

(assert (=> bs!1262592 (= (and (= lt!2228350 (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228281)) (= lambda!288854 lambda!288850))))

(assert (=> bs!1262591 (= (= lt!2228350 (regOne!31082 r!7292)) (= lambda!288854 lambda!288843))))

(assert (=> b!5456966 true))

(assert (=> b!5456966 true))

(assert (=> b!5456966 true))

(declare-fun bs!1262593 () Bool)

(declare-fun b!5456979 () Bool)

(assert (= bs!1262593 (and b!5456979 b!5457008)))

(declare-fun lambda!288855 () Int)

(declare-datatypes ((List!62154 0))(
  ( (Nil!62030) (Cons!62030 (h!68478 C!30840) (t!375383 List!62154)) )
))
(declare-datatypes ((tuple2!64968 0))(
  ( (tuple2!64969 (_1!35787 List!62154) (_2!35787 List!62154)) )
))
(declare-fun lt!2228239 () tuple2!64968)

(declare-fun s!2326 () List!62154)

(assert (=> bs!1262593 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228361)) (= lambda!288855 lambda!288847))))

(declare-fun bs!1262594 () Bool)

(assert (= bs!1262594 (and b!5456979 b!5457009)))

(assert (=> bs!1262594 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288855 lambda!288842))))

(declare-fun bs!1262595 () Bool)

(assert (= bs!1262595 (and b!5456979 b!5456961)))

(assert (=> bs!1262595 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228185)) (= lambda!288855 lambda!288851))))

(assert (=> bs!1262593 (not (= lambda!288855 lambda!288848))))

(assert (=> bs!1262593 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228179)) (= lambda!288855 lambda!288845))))

(assert (=> bs!1262595 (not (= lambda!288855 lambda!288852))))

(assert (=> bs!1262593 (not (= lambda!288855 lambda!288846))))

(declare-fun bs!1262596 () Bool)

(assert (= bs!1262596 (and b!5456979 b!5456966)))

(assert (=> bs!1262596 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228350) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288855 lambda!288853))))

(assert (=> bs!1262595 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228281)) (= lambda!288855 lambda!288849))))

(assert (=> bs!1262595 (not (= lambda!288855 lambda!288850))))

(assert (=> bs!1262594 (not (= lambda!288855 lambda!288843))))

(assert (=> bs!1262596 (not (= lambda!288855 lambda!288854))))

(assert (=> b!5456979 true))

(assert (=> b!5456979 true))

(assert (=> b!5456979 true))

(declare-fun lambda!288856 () Int)

(assert (=> bs!1262593 (not (= lambda!288856 lambda!288847))))

(assert (=> bs!1262595 (not (= lambda!288856 lambda!288851))))

(assert (=> bs!1262593 (not (= lambda!288856 lambda!288848))))

(assert (=> bs!1262593 (not (= lambda!288856 lambda!288845))))

(assert (=> bs!1262595 (not (= lambda!288856 lambda!288852))))

(assert (=> bs!1262593 (not (= lambda!288856 lambda!288846))))

(assert (=> bs!1262596 (not (= lambda!288856 lambda!288853))))

(assert (=> bs!1262595 (not (= lambda!288856 lambda!288849))))

(assert (=> bs!1262595 (not (= lambda!288856 lambda!288850))))

(assert (=> bs!1262594 (not (= lambda!288856 lambda!288843))))

(assert (=> bs!1262596 (not (= lambda!288856 lambda!288854))))

(assert (=> bs!1262594 (not (= lambda!288856 lambda!288842))))

(assert (=> b!5456979 (not (= lambda!288856 lambda!288855))))

(assert (=> b!5456979 true))

(assert (=> b!5456979 true))

(assert (=> b!5456979 true))

(declare-fun lambda!288857 () Int)

(assert (=> bs!1262593 (not (= lambda!288857 lambda!288847))))

(assert (=> bs!1262595 (not (= lambda!288857 lambda!288851))))

(assert (=> bs!1262593 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228361)) (= lambda!288857 lambda!288848))))

(assert (=> bs!1262595 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228185)) (= lambda!288857 lambda!288852))))

(assert (=> bs!1262593 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228179)) (= lambda!288857 lambda!288846))))

(assert (=> bs!1262596 (not (= lambda!288857 lambda!288853))))

(assert (=> bs!1262595 (not (= lambda!288857 lambda!288849))))

(assert (=> bs!1262595 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228281)) (= lambda!288857 lambda!288850))))

(assert (=> bs!1262594 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288857 lambda!288843))))

(assert (=> bs!1262596 (= (and (= (_1!35787 lt!2228239) s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228350) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288857 lambda!288854))))

(assert (=> bs!1262594 (not (= lambda!288857 lambda!288842))))

(assert (=> b!5456979 (not (= lambda!288857 lambda!288855))))

(assert (=> b!5456979 (not (= lambda!288857 lambda!288856))))

(assert (=> bs!1262593 (not (= lambda!288857 lambda!288845))))

(assert (=> b!5456979 true))

(assert (=> b!5456979 true))

(assert (=> b!5456979 true))

(declare-fun b!5456993 () Bool)

(assert (=> b!5456993 true))

(declare-fun bs!1262597 () Bool)

(assert (= bs!1262597 (and b!5456993 b!5456979)))

(declare-fun lambda!288860 () Int)

(declare-fun lambda!288858 () Int)

(assert (=> bs!1262597 (= lambda!288860 lambda!288858)))

(declare-fun lambda!288861 () Int)

(assert (=> bs!1262597 (not (= lambda!288861 lambda!288857))))

(declare-fun bs!1262598 () Bool)

(assert (= bs!1262598 (and b!5456993 b!5457008)))

(declare-fun lt!2228296 () Regex!15285)

(assert (=> bs!1262598 (= (and (= lt!2228296 (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228361)) (= lambda!288861 lambda!288847))))

(declare-fun bs!1262599 () Bool)

(assert (= bs!1262599 (and b!5456993 b!5456961)))

(assert (=> bs!1262599 (= (and (= lt!2228296 (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228185)) (= lambda!288861 lambda!288851))))

(assert (=> bs!1262598 (not (= lambda!288861 lambda!288848))))

(assert (=> bs!1262599 (not (= lambda!288861 lambda!288852))))

(assert (=> bs!1262598 (not (= lambda!288861 lambda!288846))))

(declare-fun bs!1262600 () Bool)

(assert (= bs!1262600 (and b!5456993 b!5456966)))

(assert (=> bs!1262600 (= (= lt!2228296 lt!2228350) (= lambda!288861 lambda!288853))))

(assert (=> bs!1262599 (= (and (= lt!2228296 (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228281)) (= lambda!288861 lambda!288849))))

(assert (=> bs!1262599 (not (= lambda!288861 lambda!288850))))

(declare-fun bs!1262601 () Bool)

(assert (= bs!1262601 (and b!5456993 b!5457009)))

(assert (=> bs!1262601 (not (= lambda!288861 lambda!288843))))

(assert (=> bs!1262600 (not (= lambda!288861 lambda!288854))))

(assert (=> bs!1262601 (= (= lt!2228296 (regOne!31082 r!7292)) (= lambda!288861 lambda!288842))))

(assert (=> bs!1262597 (= (and (= s!2326 (_1!35787 lt!2228239)) (= lt!2228296 (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288861 lambda!288855))))

(assert (=> bs!1262597 (not (= lambda!288861 lambda!288856))))

(assert (=> bs!1262598 (= (and (= lt!2228296 (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228179)) (= lambda!288861 lambda!288845))))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(declare-fun lambda!288862 () Int)

(assert (=> bs!1262597 (= (and (= s!2326 (_1!35787 lt!2228239)) (= lt!2228296 (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288862 lambda!288857))))

(assert (=> bs!1262598 (not (= lambda!288862 lambda!288847))))

(assert (=> bs!1262599 (not (= lambda!288862 lambda!288851))))

(assert (=> bs!1262598 (= (and (= lt!2228296 (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228361)) (= lambda!288862 lambda!288848))))

(assert (=> bs!1262599 (= (and (= lt!2228296 (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228185)) (= lambda!288862 lambda!288852))))

(assert (=> bs!1262598 (= (and (= lt!2228296 (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228179)) (= lambda!288862 lambda!288846))))

(assert (=> bs!1262600 (not (= lambda!288862 lambda!288853))))

(assert (=> bs!1262599 (not (= lambda!288862 lambda!288849))))

(assert (=> bs!1262599 (= (and (= lt!2228296 (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228281)) (= lambda!288862 lambda!288850))))

(assert (=> bs!1262601 (= (= lt!2228296 (regOne!31082 r!7292)) (= lambda!288862 lambda!288843))))

(assert (=> bs!1262601 (not (= lambda!288862 lambda!288842))))

(assert (=> bs!1262597 (not (= lambda!288862 lambda!288855))))

(assert (=> bs!1262597 (not (= lambda!288862 lambda!288856))))

(assert (=> bs!1262598 (not (= lambda!288862 lambda!288845))))

(assert (=> b!5456993 (not (= lambda!288862 lambda!288861))))

(assert (=> bs!1262600 (= (= lt!2228296 lt!2228350) (= lambda!288862 lambda!288854))))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(declare-fun lambda!288863 () Int)

(assert (=> bs!1262597 (not (= lambda!288863 lambda!288857))))

(declare-fun lt!2228245 () tuple2!64968)

(assert (=> bs!1262598 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228361)) (= lambda!288863 lambda!288847))))

(assert (=> bs!1262599 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228185)) (= lambda!288863 lambda!288851))))

(assert (=> bs!1262598 (not (= lambda!288863 lambda!288848))))

(assert (=> bs!1262599 (not (= lambda!288863 lambda!288852))))

(assert (=> bs!1262598 (not (= lambda!288863 lambda!288846))))

(assert (=> bs!1262600 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228350) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288863 lambda!288853))))

(assert (=> bs!1262599 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228281)) (= lambda!288863 lambda!288849))))

(assert (=> bs!1262599 (not (= lambda!288863 lambda!288850))))

(assert (=> bs!1262601 (not (= lambda!288863 lambda!288843))))

(assert (=> bs!1262601 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288863 lambda!288842))))

(assert (=> bs!1262597 (= (= (_1!35787 lt!2228245) (_1!35787 lt!2228239)) (= lambda!288863 lambda!288855))))

(assert (=> bs!1262597 (not (= lambda!288863 lambda!288856))))

(assert (=> bs!1262598 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228179)) (= lambda!288863 lambda!288845))))

(assert (=> b!5456993 (not (= lambda!288863 lambda!288862))))

(assert (=> b!5456993 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228296) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288863 lambda!288861))))

(assert (=> bs!1262600 (not (= lambda!288863 lambda!288854))))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(declare-fun lambda!288864 () Int)

(assert (=> bs!1262597 (= (= (_1!35787 lt!2228245) (_1!35787 lt!2228239)) (= lambda!288864 lambda!288857))))

(assert (=> bs!1262598 (not (= lambda!288864 lambda!288847))))

(assert (=> bs!1262599 (not (= lambda!288864 lambda!288851))))

(assert (=> bs!1262598 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228361)) (= lambda!288864 lambda!288848))))

(assert (=> bs!1262599 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228185)) (= lambda!288864 lambda!288852))))

(assert (=> bs!1262598 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228179)) (= lambda!288864 lambda!288846))))

(assert (=> bs!1262600 (not (= lambda!288864 lambda!288853))))

(assert (=> bs!1262599 (not (= lambda!288864 lambda!288849))))

(assert (=> bs!1262599 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228281)) (= lambda!288864 lambda!288850))))

(assert (=> bs!1262601 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288864 lambda!288843))))

(assert (=> b!5456993 (not (= lambda!288864 lambda!288863))))

(assert (=> bs!1262601 (not (= lambda!288864 lambda!288842))))

(assert (=> bs!1262597 (not (= lambda!288864 lambda!288855))))

(assert (=> bs!1262597 (not (= lambda!288864 lambda!288856))))

(assert (=> bs!1262598 (not (= lambda!288864 lambda!288845))))

(assert (=> b!5456993 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228296) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288864 lambda!288862))))

(assert (=> b!5456993 (not (= lambda!288864 lambda!288861))))

(assert (=> bs!1262600 (= (and (= (_1!35787 lt!2228245) s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228350) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288864 lambda!288854))))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(declare-fun lambda!288865 () Int)

(assert (=> bs!1262597 (not (= lambda!288865 lambda!288857))))

(assert (=> bs!1262598 (not (= lambda!288865 lambda!288847))))

(assert (=> bs!1262599 (not (= lambda!288865 lambda!288851))))

(assert (=> bs!1262598 (not (= lambda!288865 lambda!288848))))

(assert (=> b!5456993 (not (= lambda!288865 lambda!288864))))

(assert (=> bs!1262599 (not (= lambda!288865 lambda!288852))))

(assert (=> bs!1262598 (not (= lambda!288865 lambda!288846))))

(assert (=> bs!1262600 (not (= lambda!288865 lambda!288853))))

(assert (=> bs!1262599 (not (= lambda!288865 lambda!288849))))

(assert (=> bs!1262599 (not (= lambda!288865 lambda!288850))))

(assert (=> bs!1262601 (not (= lambda!288865 lambda!288843))))

(assert (=> b!5456993 (not (= lambda!288865 lambda!288863))))

(assert (=> bs!1262601 (not (= lambda!288865 lambda!288842))))

(assert (=> bs!1262597 (not (= lambda!288865 lambda!288855))))

(assert (=> bs!1262597 (= (= (_1!35787 lt!2228245) (_1!35787 lt!2228239)) (= lambda!288865 lambda!288856))))

(assert (=> bs!1262598 (not (= lambda!288865 lambda!288845))))

(assert (=> b!5456993 (not (= lambda!288865 lambda!288862))))

(assert (=> b!5456993 (not (= lambda!288865 lambda!288861))))

(assert (=> bs!1262600 (not (= lambda!288865 lambda!288854))))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(assert (=> b!5456993 true))

(declare-fun bs!1262602 () Bool)

(declare-fun b!5456970 () Bool)

(assert (= bs!1262602 (and b!5456970 b!5456979)))

(declare-fun lambda!288866 () Int)

(assert (=> bs!1262602 (not (= lambda!288866 lambda!288857))))

(declare-fun bs!1262603 () Bool)

(assert (= bs!1262603 (and b!5456970 b!5457008)))

(assert (=> bs!1262603 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228361)) (= lambda!288866 lambda!288847))))

(declare-fun bs!1262604 () Bool)

(assert (= bs!1262604 (and b!5456970 b!5456961)))

(assert (=> bs!1262604 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228185)) (= lambda!288866 lambda!288851))))

(assert (=> bs!1262603 (not (= lambda!288866 lambda!288848))))

(declare-fun bs!1262605 () Bool)

(assert (= bs!1262605 (and b!5456970 b!5456993)))

(assert (=> bs!1262605 (not (= lambda!288866 lambda!288864))))

(assert (=> bs!1262604 (not (= lambda!288866 lambda!288852))))

(assert (=> bs!1262603 (not (= lambda!288866 lambda!288846))))

(declare-fun bs!1262606 () Bool)

(assert (= bs!1262606 (and b!5456970 b!5456966)))

(assert (=> bs!1262606 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228350) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288866 lambda!288853))))

(assert (=> bs!1262604 (not (= lambda!288866 lambda!288850))))

(declare-fun bs!1262607 () Bool)

(assert (= bs!1262607 (and b!5456970 b!5457009)))

(assert (=> bs!1262607 (not (= lambda!288866 lambda!288843))))

(assert (=> bs!1262605 (= (= Nil!62030 (_1!35787 lt!2228245)) (= lambda!288866 lambda!288863))))

(assert (=> bs!1262607 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288866 lambda!288842))))

(assert (=> bs!1262602 (= (= Nil!62030 (_1!35787 lt!2228239)) (= lambda!288866 lambda!288855))))

(assert (=> bs!1262602 (not (= lambda!288866 lambda!288856))))

(assert (=> bs!1262603 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228179)) (= lambda!288866 lambda!288845))))

(assert (=> bs!1262605 (not (= lambda!288866 lambda!288862))))

(assert (=> bs!1262605 (not (= lambda!288866 lambda!288865))))

(assert (=> bs!1262604 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228281)) (= lambda!288866 lambda!288849))))

(assert (=> bs!1262605 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228296) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288866 lambda!288861))))

(assert (=> bs!1262606 (not (= lambda!288866 lambda!288854))))

(assert (=> b!5456970 true))

(assert (=> b!5456970 true))

(declare-fun lambda!288867 () Int)

(assert (=> bs!1262602 (= (= Nil!62030 (_1!35787 lt!2228239)) (= lambda!288867 lambda!288857))))

(assert (=> bs!1262603 (not (= lambda!288867 lambda!288847))))

(assert (=> bs!1262604 (not (= lambda!288867 lambda!288851))))

(assert (=> bs!1262603 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228361)) (= lambda!288867 lambda!288848))))

(assert (=> bs!1262605 (= (= Nil!62030 (_1!35787 lt!2228245)) (= lambda!288867 lambda!288864))))

(assert (=> bs!1262604 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228185)) (= lambda!288867 lambda!288852))))

(assert (=> bs!1262603 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228179)) (= lambda!288867 lambda!288846))))

(assert (=> bs!1262606 (not (= lambda!288867 lambda!288853))))

(assert (=> b!5456970 (not (= lambda!288867 lambda!288866))))

(assert (=> bs!1262604 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= lt!2228350 lt!2228281)) (= lambda!288867 lambda!288850))))

(assert (=> bs!1262607 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288867 lambda!288843))))

(assert (=> bs!1262605 (not (= lambda!288867 lambda!288863))))

(assert (=> bs!1262607 (not (= lambda!288867 lambda!288842))))

(assert (=> bs!1262602 (not (= lambda!288867 lambda!288855))))

(assert (=> bs!1262602 (not (= lambda!288867 lambda!288856))))

(assert (=> bs!1262603 (not (= lambda!288867 lambda!288845))))

(assert (=> bs!1262605 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228296) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288867 lambda!288862))))

(assert (=> bs!1262605 (not (= lambda!288867 lambda!288865))))

(assert (=> bs!1262604 (not (= lambda!288867 lambda!288849))))

(assert (=> bs!1262605 (not (= lambda!288867 lambda!288861))))

(assert (=> bs!1262606 (= (and (= Nil!62030 s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228350) (= lt!2228350 (regTwo!31082 r!7292))) (= lambda!288867 lambda!288854))))

(assert (=> b!5456970 true))

(assert (=> b!5456970 true))

(declare-fun lambda!288868 () Int)

(assert (=> bs!1262602 (not (= lambda!288868 lambda!288857))))

(assert (=> bs!1262603 (not (= lambda!288868 lambda!288847))))

(assert (=> bs!1262604 (not (= lambda!288868 lambda!288851))))

(assert (=> bs!1262603 (not (= lambda!288868 lambda!288848))))

(assert (=> b!5456970 (not (= lambda!288868 lambda!288867))))

(assert (=> bs!1262605 (not (= lambda!288868 lambda!288864))))

(assert (=> bs!1262604 (not (= lambda!288868 lambda!288852))))

(assert (=> bs!1262603 (not (= lambda!288868 lambda!288846))))

(assert (=> bs!1262606 (not (= lambda!288868 lambda!288853))))

(assert (=> b!5456970 (not (= lambda!288868 lambda!288866))))

(assert (=> bs!1262604 (not (= lambda!288868 lambda!288850))))

(assert (=> bs!1262607 (not (= lambda!288868 lambda!288843))))

(assert (=> bs!1262605 (not (= lambda!288868 lambda!288863))))

(assert (=> bs!1262607 (not (= lambda!288868 lambda!288842))))

(assert (=> bs!1262602 (not (= lambda!288868 lambda!288855))))

(assert (=> bs!1262602 (= (= Nil!62030 (_1!35787 lt!2228239)) (= lambda!288868 lambda!288856))))

(assert (=> bs!1262603 (not (= lambda!288868 lambda!288845))))

(assert (=> bs!1262605 (not (= lambda!288868 lambda!288862))))

(assert (=> bs!1262605 (= (= Nil!62030 (_1!35787 lt!2228245)) (= lambda!288868 lambda!288865))))

(assert (=> bs!1262604 (not (= lambda!288868 lambda!288849))))

(assert (=> bs!1262605 (not (= lambda!288868 lambda!288861))))

(assert (=> bs!1262606 (not (= lambda!288868 lambda!288854))))

(assert (=> b!5456970 true))

(assert (=> b!5456970 true))

(declare-fun bs!1262608 () Bool)

(declare-fun b!5456989 () Bool)

(assert (= bs!1262608 (and b!5456989 b!5456979)))

(declare-fun lambda!288869 () Int)

(assert (=> bs!1262608 (= lambda!288869 lambda!288858)))

(declare-fun bs!1262609 () Bool)

(assert (= bs!1262609 (and b!5456989 b!5456993)))

(assert (=> bs!1262609 (= lambda!288869 lambda!288860)))

(declare-fun bm!398841 () Bool)

(declare-datatypes ((Unit!154880 0))(
  ( (Unit!154881) )
))
(declare-fun call!398950 () Unit!154880)

(declare-fun call!399038 () Unit!154880)

(assert (=> bm!398841 (= call!398950 call!399038)))

(declare-fun call!399006 () Unit!154880)

(declare-datatypes ((List!62155 0))(
  ( (Nil!62031) (Cons!62031 (h!68479 Regex!15285) (t!375384 List!62155)) )
))
(declare-datatypes ((Context!9338 0))(
  ( (Context!9339 (exprs!5169 List!62155)) )
))
(declare-fun lt!2228337 () Context!9338)

(declare-fun c!953211 () Bool)

(declare-fun lambda!288844 () Int)

(declare-fun bm!398842 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2228168 () (InoxSet Context!9338))

(declare-fun lt!2228242 () (InoxSet Context!9338))

(declare-fun lemmaFlatMapOnSingletonSet!544 ((InoxSet Context!9338) Context!9338 Int) Unit!154880)

(assert (=> bm!398842 (= call!399006 (lemmaFlatMapOnSingletonSet!544 (ite c!953211 lt!2228242 lt!2228168) lt!2228337 (ite c!953211 lambda!288844 lambda!288844)))))

(declare-fun bm!398843 () Bool)

(declare-fun call!398850 () Unit!154880)

(declare-fun call!399022 () Unit!154880)

(assert (=> bm!398843 (= call!398850 call!399022)))

(declare-fun lt!2228160 () (InoxSet Context!9338))

(declare-fun lt!2228214 () Context!9338)

(declare-fun lt!2228173 () (InoxSet Context!9338))

(declare-fun c!953207 () Bool)

(declare-fun lt!2228313 () (InoxSet Context!9338))

(declare-fun lt!2228199 () (InoxSet Context!9338))

(declare-fun lt!2228258 () Context!9338)

(declare-fun c!953209 () Bool)

(declare-fun lt!2228309 () Context!9338)

(declare-fun bm!398844 () Bool)

(declare-fun c!953204 () Bool)

(declare-fun lt!2228253 () Context!9338)

(declare-fun call!398952 () Unit!154880)

(assert (=> bm!398844 (= call!398952 (lemmaFlatMapOnSingletonSet!544 (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953209 lt!2228160 lt!2228173))) (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 (ite c!953209 lt!2228214 lt!2228309))) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 (ite c!953209 lambda!288844 lambda!288844)))))))

(declare-fun b!5456945 () Bool)

(declare-fun e!3379398 () Bool)

(assert (=> b!5456945 (= e!3379398 false)))

(declare-fun bm!398845 () Bool)

(declare-fun call!399001 () Bool)

(declare-fun call!398864 () Bool)

(assert (=> bm!398845 (= call!399001 call!398864)))

(declare-fun bm!398846 () Bool)

(declare-fun call!398994 () Bool)

(declare-fun call!398849 () Bool)

(assert (=> bm!398846 (= call!398994 call!398849)))

(declare-fun bm!398847 () Bool)

(declare-fun call!399018 () Bool)

(declare-fun call!398879 () Bool)

(assert (=> bm!398847 (= call!399018 call!398879)))

(declare-fun bm!398848 () Bool)

(declare-fun call!398854 () Bool)

(declare-fun call!398924 () Bool)

(assert (=> bm!398848 (= call!398854 call!398924)))

(declare-fun bm!398849 () Bool)

(declare-fun call!398941 () Bool)

(declare-fun call!398962 () Bool)

(assert (=> bm!398849 (= call!398941 call!398962)))

(declare-fun b!5456946 () Bool)

(declare-fun e!3379405 () Bool)

(declare-fun lt!2228166 () (InoxSet Context!9338))

(declare-fun matchZipper!1529 ((InoxSet Context!9338) List!62154) Bool)

(assert (=> b!5456946 (= e!3379405 (matchZipper!1529 lt!2228166 (t!375383 s!2326)))))

(declare-fun b!5456947 () Bool)

(declare-fun e!3379414 () Unit!154880)

(declare-fun Unit!154882 () Unit!154880)

(assert (=> b!5456947 (= e!3379414 Unit!154882)))

(declare-fun lt!2228203 () (InoxSet Context!9338))

(assert (=> b!5456947 (= lt!2228203 (store ((as const (Array Context!9338 Bool)) false) lt!2228337 true))))

(declare-fun lt!2228197 () Regex!15285)

(declare-fun call!398910 () Regex!15285)

(assert (=> b!5456947 (= lt!2228197 call!398910)))

(declare-fun lt!2228293 () Unit!154880)

(declare-fun call!398862 () Unit!154880)

(assert (=> b!5456947 (= lt!2228293 call!398862)))

(declare-fun call!398868 () Bool)

(declare-fun call!398885 () Bool)

(assert (=> b!5456947 (= call!398868 call!398885)))

(declare-fun b!5456948 () Bool)

(declare-fun e!3379383 () Bool)

(declare-fun e!3379408 () Bool)

(assert (=> b!5456948 (= e!3379383 e!3379408)))

(declare-fun res!2324183 () Bool)

(assert (=> b!5456948 (=> res!2324183 e!3379408)))

(declare-fun lt!2228324 () Regex!15285)

(declare-fun regexDepth!201 (Regex!15285) Int)

(assert (=> b!5456948 (= res!2324183 (< (regexDepth!201 r!7292) (regexDepth!201 lt!2228324)))))

(declare-datatypes ((List!62156 0))(
  ( (Nil!62032) (Cons!62032 (h!68480 Context!9338) (t!375385 List!62156)) )
))
(declare-fun zl!343 () List!62156)

(declare-fun generalisedConcat!954 (List!62155) Regex!15285)

(assert (=> b!5456948 (= lt!2228324 (generalisedConcat!954 (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun bm!398850 () Bool)

(declare-fun call!398998 () Bool)

(declare-fun call!398937 () Bool)

(assert (=> bm!398850 (= call!398998 call!398937)))

(declare-fun b!5456949 () Bool)

(declare-fun c!953205 () Bool)

(get-info :version)

(assert (=> b!5456949 (= c!953205 ((_ is Star!15285) (regOne!31082 r!7292)))))

(declare-fun e!3379382 () Unit!154880)

(declare-fun e!3379389 () Unit!154880)

(assert (=> b!5456949 (= e!3379382 e!3379389)))

(declare-fun lt!2228164 () Context!9338)

(declare-fun call!398973 () (InoxSet Context!9338))

(declare-fun bm!398851 () Bool)

(declare-fun derivationStepZipperUp!657 (Context!9338 C!30840) (InoxSet Context!9338))

(assert (=> bm!398851 (= call!398973 (derivationStepZipperUp!657 (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 lt!2228164)) (h!68478 s!2326)))))

(declare-fun call!398881 () Regex!15285)

(declare-fun lt!2228250 () List!62155)

(declare-fun bm!398852 () Bool)

(assert (=> bm!398852 (= call!398881 (generalisedConcat!954 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun bm!398853 () Bool)

(declare-fun call!398859 () Bool)

(declare-fun call!399025 () Bool)

(assert (=> bm!398853 (= call!398859 call!399025)))

(declare-fun bm!398854 () Bool)

(declare-fun call!398974 () Unit!154880)

(declare-fun lt!2228360 () tuple2!64968)

(declare-fun lt!2228257 () Regex!15285)

(declare-fun lt!2228230 () tuple2!64968)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!252 (Regex!15285 Regex!15285 List!62154 List!62154) Unit!154880)

(assert (=> bm!398854 (= call!398974 (lemmaTwoRegexMatchThenConcatMatchesConcatString!252 (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292))) (ite c!953211 (regTwo!31082 r!7292) lt!2228257) (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228230)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230))))))

(declare-fun c!953206 () Bool)

(declare-fun call!398891 () Bool)

(declare-fun bm!398855 () Bool)

(declare-fun Exists!2466 (Int) Bool)

(assert (=> bm!398855 (= call!398891 (Exists!2466 (ite c!953211 lambda!288853 (ite c!953206 lambda!288861 lambda!288866))))))

(declare-fun call!398853 () Bool)

(declare-fun bm!398856 () Bool)

(assert (=> bm!398856 (= call!398853 (Exists!2466 (ite c!953207 lambda!288845 (ite c!953209 lambda!288852 (ite c!953211 lambda!288855 lambda!288863)))))))

(declare-fun bm!398857 () Bool)

(declare-fun call!398966 () Bool)

(declare-fun call!398996 () Bool)

(assert (=> bm!398857 (= call!398966 call!398996)))

(declare-fun bm!398858 () Bool)

(declare-fun call!398899 () Bool)

(declare-fun call!398929 () Bool)

(assert (=> bm!398858 (= call!398899 call!398929)))

(declare-fun b!5456950 () Bool)

(declare-fun res!2324177 () Bool)

(declare-fun e!3379401 () Bool)

(assert (=> b!5456950 (=> res!2324177 e!3379401)))

(declare-fun isEmpty!34015 (List!62156) Bool)

(assert (=> b!5456950 (= res!2324177 (not (isEmpty!34015 (t!375385 zl!343))))))

(declare-fun c!953203 () Bool)

(declare-fun lt!2228359 () Regex!15285)

(declare-fun lt!2228205 () Regex!15285)

(declare-fun lt!2228283 () Regex!15285)

(declare-fun lt!2228180 () List!62154)

(declare-fun c!953210 () Bool)

(declare-fun bm!398859 () Bool)

(declare-fun matchR!7470 (Regex!15285 List!62154) Bool)

(assert (=> bm!398859 (= call!398868 (matchR!7470 (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350)))))) (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030))))))))

(declare-fun lt!2228279 () (InoxSet Context!9338))

(declare-fun bm!398860 () Bool)

(declare-fun call!398904 () (InoxSet Context!9338))

(declare-fun lt!2228321 () (InoxSet Context!9338))

(declare-fun flatMap!1012 ((InoxSet Context!9338) Int) (InoxSet Context!9338))

(assert (=> bm!398860 (= call!398904 (flatMap!1012 (ite c!953204 lt!2228321 (ite c!953207 lt!2228313 (ite c!953209 lt!2228160 lt!2228279))) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 (ite c!953209 lambda!288844 lambda!288844)))))))

(declare-fun bm!398861 () Bool)

(declare-fun call!398995 () Bool)

(declare-fun call!399028 () Bool)

(assert (=> bm!398861 (= call!398995 call!399028)))

(declare-fun bm!398862 () Bool)

(declare-fun call!398931 () Bool)

(assert (=> bm!398862 (= call!398962 call!398931)))

(declare-fun bm!398863 () Bool)

(declare-fun call!399003 () Bool)

(assert (=> bm!398863 (= call!399003 call!398868)))

(declare-datatypes ((Option!15396 0))(
  ( (None!15395) (Some!15395 (v!51424 tuple2!64968)) )
))
(declare-fun lt!2228170 () Option!15396)

(declare-fun bm!398864 () Bool)

(declare-fun lt!2228304 () Option!15396)

(declare-fun call!398861 () tuple2!64968)

(declare-fun get!21392 (Option!15396) tuple2!64968)

(assert (=> bm!398864 (= call!398861 (get!21392 (ite c!953211 lt!2228304 lt!2228170)))))

(declare-fun bm!398865 () Bool)

(declare-fun lt!2228343 () Option!15396)

(declare-fun call!398914 () tuple2!64968)

(declare-fun lt!2228352 () Option!15396)

(assert (=> bm!398865 (= call!398914 (get!21392 (ite c!953211 lt!2228343 lt!2228352)))))

(declare-fun bm!398866 () Bool)

(declare-fun call!399052 () Unit!154880)

(declare-fun lt!2228186 () (InoxSet Context!9338))

(declare-fun lemmaEmptyZipperMatchesNothing!40 ((InoxSet Context!9338) List!62154) Unit!154880)

(assert (=> bm!398866 (= call!399052 (lemmaEmptyZipperMatchesNothing!40 lt!2228186 (t!375383 s!2326)))))

(declare-fun b!5456951 () Bool)

(declare-fun e!3379378 () Bool)

(declare-fun call!398939 () Bool)

(assert (=> b!5456951 (= e!3379378 call!398939)))

(declare-fun b!5456952 () Bool)

(declare-fun lt!2228295 () Bool)

(assert (=> b!5456952 (not lt!2228295)))

(declare-fun lt!2228251 () Unit!154880)

(declare-fun e!3379377 () Unit!154880)

(assert (=> b!5456952 (= lt!2228251 e!3379377)))

(declare-fun c!953212 () Bool)

(assert (=> b!5456952 (= c!953212 lt!2228295)))

(assert (=> b!5456952 (= lt!2228295 call!398941)))

(declare-fun e!3379384 () Unit!154880)

(declare-fun Unit!154883 () Unit!154880)

(assert (=> b!5456952 (= e!3379384 Unit!154883)))

(declare-fun call!398954 () Bool)

(declare-fun bm!398867 () Bool)

(assert (=> bm!398867 (= call!398954 (Exists!2466 (ite c!953207 lambda!288847 (ite c!953209 lambda!288849 (ite c!953211 lambda!288855 (ite c!953206 lambda!288862 lambda!288866))))))))

(declare-fun lt!2228191 () (InoxSet Context!9338))

(declare-fun call!399035 () (InoxSet Context!9338))

(declare-fun bm!398868 () Bool)

(assert (=> bm!398868 (= call!399035 (flatMap!1012 (ite c!953205 (ite c!953211 lt!2228242 lt!2228168) lt!2228191) (ite c!953205 (ite c!953211 lambda!288844 lambda!288844) lambda!288844)))))

(declare-fun b!5456953 () Bool)

(declare-fun e!3379410 () Bool)

(declare-fun lt!2228339 () Bool)

(assert (=> b!5456953 (= e!3379410 lt!2228339)))

(declare-fun lt!2228308 () List!62155)

(declare-fun bm!398869 () Bool)

(declare-fun z!1189 () (InoxSet Context!9338))

(declare-fun lt!2228274 () (InoxSet Context!9338))

(declare-fun c!953213 () Bool)

(declare-fun lt!2228212 () (InoxSet Context!9338))

(declare-fun lt!2228284 () List!62154)

(declare-fun call!399049 () List!62155)

(declare-fun lt!2228272 () (InoxSet Context!9338))

(declare-fun lt!2228346 () List!62154)

(assert (=> bm!398869 (= call!398924 (matchZipper!1529 (ite c!953204 lt!2228272 (ite c!953207 ((_ map or) lt!2228212 lt!2228274) (ite c!953205 (ite c!953211 (store ((as const (Array Context!9338 Bool)) false) (Context!9339 call!399049) true) (store ((as const (Array Context!9338 Bool)) false) (Context!9339 lt!2228308) true)) (ite c!953213 z!1189 lt!2228186)))) (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228284 lt!2228346) (ite c!953213 s!2326 (t!375383 s!2326))))))))

(declare-fun e!3379388 () Bool)

(declare-fun e!3379404 () Bool)

(declare-fun b!5456954 () Bool)

(declare-fun tp!1501938 () Bool)

(declare-fun inv!81459 (Context!9338) Bool)

(assert (=> b!5456954 (= e!3379404 (and (inv!81459 (h!68480 zl!343)) e!3379388 tp!1501938))))

(declare-fun bm!398870 () Bool)

(declare-fun call!399042 () Option!15396)

(declare-fun call!398894 () Option!15396)

(assert (=> bm!398870 (= call!399042 call!398894)))

(declare-fun b!5456955 () Bool)

(declare-fun e!3379393 () Bool)

(assert (=> b!5456955 e!3379393))

(declare-fun res!2324178 () Bool)

(assert (=> b!5456955 (=> (not res!2324178) (not e!3379393))))

(declare-fun call!398972 () Bool)

(declare-fun call!398911 () Bool)

(assert (=> b!5456955 (= res!2324178 (= call!398972 call!398911))))

(declare-fun lt!2228187 () Unit!154880)

(declare-fun call!398989 () Unit!154880)

(assert (=> b!5456955 (= lt!2228187 call!398989)))

(declare-fun lt!2228208 () Regex!15285)

(declare-fun call!398960 () Regex!15285)

(assert (=> b!5456955 (= lt!2228208 call!398960)))

(declare-fun call!399044 () Bool)

(assert (=> b!5456955 (= call!398962 call!399044)))

(declare-fun lt!2228335 () Unit!154880)

(declare-fun call!398878 () Unit!154880)

(assert (=> b!5456955 (= lt!2228335 call!398878)))

(declare-fun call!398863 () (InoxSet Context!9338))

(assert (=> b!5456955 (= call!399035 call!398863)))

(declare-fun lt!2228302 () Unit!154880)

(declare-fun call!398925 () Unit!154880)

(assert (=> b!5456955 (= lt!2228302 call!398925)))

(assert (=> b!5456955 (= lt!2228191 (store ((as const (Array Context!9338 Bool)) false) lt!2228337 true))))

(declare-fun call!398890 () Bool)

(declare-fun call!398855 () Bool)

(assert (=> b!5456955 (= call!398890 call!398855)))

(declare-fun lt!2228306 () Unit!154880)

(declare-fun call!398981 () Unit!154880)

(assert (=> b!5456955 (= lt!2228306 call!398981)))

(declare-fun call!398958 () Bool)

(declare-fun call!398932 () Bool)

(assert (=> b!5456955 (= call!398958 call!398932)))

(declare-fun lt!2228234 () Unit!154880)

(declare-fun call!398926 () Unit!154880)

(assert (=> b!5456955 (= lt!2228234 call!398926)))

(assert (=> b!5456955 (not call!398995)))

(declare-fun lt!2228322 () Unit!154880)

(assert (=> b!5456955 (= lt!2228322 call!399052)))

(declare-fun e!3379391 () Unit!154880)

(declare-fun Unit!154884 () Unit!154880)

(assert (=> b!5456955 (= e!3379391 Unit!154884)))

(declare-fun bm!398871 () Bool)

(declare-fun call!398893 () Bool)

(declare-fun call!398977 () Option!15396)

(declare-fun isDefined!12099 (Option!15396) Bool)

(assert (=> bm!398871 (= call!398893 (isDefined!12099 (ite c!953209 call!398977 (ite c!953211 lt!2228343 (ite c!953206 lt!2228170 call!399042)))))))

(declare-fun bm!398872 () Bool)

(assert (=> bm!398872 (= call!398939 (matchZipper!1529 (ite c!953204 lt!2228166 (ite c!953207 lt!2228274 (ite c!953205 (ite c!953211 lt!2228173 lt!2228279) lt!2228166))) (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228180 (_1!35787 lt!2228230)) (t!375383 s!2326)))))))

(declare-fun bm!398873 () Bool)

(declare-fun call!398851 () Bool)

(declare-fun call!399039 () Bool)

(assert (=> bm!398873 (= call!398851 call!399039)))

(declare-fun bm!398874 () Bool)

(declare-fun call!398883 () Bool)

(declare-fun call!399040 () Bool)

(assert (=> bm!398874 (= call!398883 call!399040)))

(declare-fun bm!398875 () Bool)

(declare-fun lt!2228227 () List!62154)

(declare-fun call!398955 () List!62154)

(declare-fun ++!13649 (List!62154 List!62154) List!62154)

(assert (=> bm!398875 (= call!398955 (++!13649 (ite c!953211 (_1!35787 lt!2228360) lt!2228227) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228245))))))

(declare-fun bm!398876 () Bool)

(assert (=> bm!398876 (= call!398972 call!398883)))

(declare-fun setNonEmpty!35707 () Bool)

(declare-fun e!3379376 () Bool)

(declare-fun setElem!35707 () Context!9338)

(declare-fun setRes!35707 () Bool)

(declare-fun tp!1501941 () Bool)

(assert (=> setNonEmpty!35707 (= setRes!35707 (and tp!1501941 (inv!81459 setElem!35707) e!3379376))))

(declare-fun setRest!35707 () (InoxSet Context!9338))

(assert (=> setNonEmpty!35707 (= z!1189 ((_ map or) (store ((as const (Array Context!9338 Bool)) false) setElem!35707 true) setRest!35707))))

(declare-fun call!398896 () Unit!154880)

(declare-fun bm!398877 () Bool)

(declare-fun lt!2228280 () Regex!15285)

(declare-fun mainMatchTheorem!2388 (Regex!15285 List!62154) Unit!154880)

(assert (=> bm!398877 (= call!398896 (mainMatchTheorem!2388 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 lt!2228280 (regTwo!31082 r!7292))))) s!2326))))

(declare-fun lt!2228206 () Regex!15285)

(declare-fun bm!398878 () Bool)

(declare-fun call!398886 () Bool)

(declare-fun lt!2228362 () Regex!15285)

(declare-fun matchRSpec!2388 (Regex!15285 List!62154) Bool)

(assert (=> bm!398878 (= call!398886 (matchRSpec!2388 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))) s!2326))))

(declare-fun bm!398879 () Bool)

(declare-fun call!398906 () Unit!154880)

(assert (=> bm!398879 (= call!398906 call!398952)))

(declare-fun bm!398880 () Bool)

(declare-fun call!399037 () Bool)

(assert (=> bm!398880 (= call!399037 call!399001)))

(declare-fun bm!398881 () Bool)

(declare-fun call!398873 () Unit!154880)

(declare-fun call!399026 () Unit!154880)

(assert (=> bm!398881 (= call!398873 call!399026)))

(declare-fun lt!2228286 () Option!15396)

(declare-fun call!398944 () Bool)

(declare-fun call!399030 () Option!15396)

(declare-fun bm!398882 () Bool)

(assert (=> bm!398882 (= call!398944 (isDefined!12099 (ite c!953207 call!399030 lt!2228286)))))

(declare-fun bm!398883 () Bool)

(assert (=> bm!398883 (= call!398894 call!398977)))

(declare-fun bm!398884 () Bool)

(declare-fun call!398867 () Regex!15285)

(assert (=> bm!398884 (= call!398867 call!398960)))

(declare-fun bm!398885 () Bool)

(declare-fun call!398865 () Unit!154880)

(assert (=> bm!398885 (= call!398865 call!398896)))

(declare-fun lt!2228224 () List!62155)

(declare-fun call!398848 () Regex!15285)

(declare-fun bm!398886 () Bool)

(declare-fun lt!2228265 () List!62155)

(declare-fun lt!2228344 () List!62155)

(assert (=> bm!398886 (= call!398848 (generalisedConcat!954 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224))))))

(declare-fun bm!398887 () Bool)

(declare-fun call!398860 () Unit!154880)

(declare-fun call!398888 () Unit!154880)

(assert (=> bm!398887 (= call!398860 call!398888)))

(declare-fun lt!2228229 () Regex!15285)

(declare-fun call!399012 () Bool)

(declare-fun bm!398888 () Bool)

(assert (=> bm!398888 (= call!399012 (matchR!7470 (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280))) s!2326))))

(declare-fun b!5456956 () Bool)

(declare-fun e!3379373 () Bool)

(declare-fun tp!1501937 () Bool)

(declare-fun tp!1501934 () Bool)

(assert (=> b!5456956 (= e!3379373 (and tp!1501937 tp!1501934))))

(declare-fun bm!398889 () Bool)

(declare-fun call!398999 () Bool)

(assert (=> bm!398889 (= call!398958 call!398999)))

(declare-fun bm!398890 () Bool)

(declare-fun call!399011 () Bool)

(assert (=> bm!398890 (= call!399011 (matchZipper!1529 (ite c!953204 lt!2228321 (ite c!953207 lt!2228212 (ite c!953205 (ite c!953211 (ite c!953210 z!1189 lt!2228279) (ite c!953206 lt!2228173 lt!2228168)) (ite c!953213 lt!2228191 z!1189)))) (ite c!953204 s!2326 (ite c!953207 (t!375383 s!2326) (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326)))))))

(declare-fun b!5456957 () Bool)

(declare-fun e!3379379 () Bool)

(assert (=> b!5456957 (= c!953207 e!3379379)))

(declare-fun res!2324204 () Bool)

(assert (=> b!5456957 (=> (not res!2324204) (not e!3379379))))

(assert (=> b!5456957 (= res!2324204 ((_ is Concat!24130) (regOne!31082 r!7292)))))

(declare-fun e!3379407 () Unit!154880)

(declare-fun e!3379395 () Unit!154880)

(assert (=> b!5456957 (= e!3379407 e!3379395)))

(declare-fun bm!398891 () Bool)

(declare-fun call!398967 () Bool)

(assert (=> bm!398891 (= call!398967 call!398891)))

(declare-fun lt!2228195 () List!62155)

(declare-fun lt!2228326 () List!62155)

(declare-fun bm!398892 () Bool)

(declare-fun call!398856 () Unit!154880)

(declare-fun lemmaConcatPreservesForall!252 (List!62155 List!62155 Int) Unit!154880)

(assert (=> bm!398892 (= call!398856 (lemmaConcatPreservesForall!252 lt!2228326 lt!2228195 (ite c!953211 lambda!288858 lambda!288860)))))

(declare-fun b!5456958 () Bool)

(declare-fun e!3379399 () Unit!154880)

(declare-fun Unit!154885 () Unit!154880)

(assert (=> b!5456958 (= e!3379399 Unit!154885)))

(declare-fun lt!2228301 () Unit!154880)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!522 ((InoxSet Context!9338) (InoxSet Context!9338) List!62154) Unit!154880)

(assert (=> b!5456958 (= lt!2228301 (lemmaZipperConcatMatchesSameAsBothZippers!522 lt!2228272 lt!2228166 (t!375383 s!2326)))))

(declare-fun res!2324199 () Bool)

(assert (=> b!5456958 (= res!2324199 call!398924)))

(assert (=> b!5456958 (=> res!2324199 e!3379378)))

(declare-fun call!398884 () Bool)

(assert (=> b!5456958 (= call!398884 e!3379378)))

(declare-fun bm!398893 () Bool)

(declare-fun call!398900 () Bool)

(assert (=> bm!398893 (= call!399040 call!398900)))

(declare-fun bm!398894 () Bool)

(declare-fun lt!2228345 () Context!9338)

(declare-fun theoremZipperRegexEquiv!565 ((InoxSet Context!9338) List!62156 Regex!15285 List!62154) Unit!154880)

(assert (=> bm!398894 (= call!398862 (theoremZipperRegexEquiv!565 (ite c!953203 lt!2228203 (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953211 lt!2228173 lt!2228279)))) (ite c!953203 (Cons!62032 lt!2228337 Nil!62032) (ite c!953204 (Cons!62032 lt!2228258 Nil!62032) (ite c!953207 (Cons!62032 lt!2228253 Nil!62032) (ite c!953211 (Cons!62032 lt!2228309 Nil!62032) (Cons!62032 lt!2228345 Nil!62032))))) (ite c!953203 lt!2228197 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953211 lt!2228257 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207) s!2326 (ite c!953211 lt!2228180 (_1!35787 lt!2228230))))))))

(declare-fun b!5456959 () Bool)

(declare-fun e!3379406 () Unit!154880)

(declare-fun Unit!154886 () Unit!154880)

(assert (=> b!5456959 (= e!3379406 Unit!154886)))

(declare-fun lt!2228202 () Unit!154880)

(assert (=> b!5456959 (= lt!2228202 (lemmaZipperConcatMatchesSameAsBothZippers!522 lt!2228186 lt!2228166 (t!375383 s!2326)))))

(declare-fun res!2324179 () Bool)

(assert (=> b!5456959 (= res!2324179 (matchZipper!1529 lt!2228186 (t!375383 s!2326)))))

(assert (=> b!5456959 (=> res!2324179 e!3379405)))

(assert (=> b!5456959 (= (matchZipper!1529 ((_ map or) lt!2228186 lt!2228166) (t!375383 s!2326)) e!3379405)))

(declare-fun call!398933 () Unit!154880)

(declare-fun bm!398895 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1120 (Regex!15285 Regex!15285 List!62154) Unit!154880)

(assert (=> bm!398895 (= call!398933 (lemmaExistCutMatchRandMatchRSpecEquivalent!1120 (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))))))

(declare-fun bm!398896 () Bool)

(declare-fun call!398997 () Unit!154880)

(assert (=> bm!398896 (= call!398997 call!398950)))

(declare-fun bm!398897 () Bool)

(declare-fun call!398908 () Bool)

(assert (=> bm!398897 (= call!398908 call!398954)))

(declare-fun bm!398898 () Bool)

(declare-fun findConcatSeparation!1810 (Regex!15285 Regex!15285 List!62154 List!62154 List!62154) Option!15396)

(assert (=> bm!398898 (= call!399030 (findConcatSeparation!1810 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite c!953211 lt!2228350 (ite c!953206 (regTwo!31082 r!7292) lt!2228350)))) Nil!62030 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030))) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))))))

(declare-fun b!5456960 () Bool)

(declare-fun tp!1501932 () Bool)

(assert (=> b!5456960 (= e!3379388 tp!1501932)))

(declare-fun bm!398899 () Bool)

(declare-fun call!399000 () Unit!154880)

(declare-fun call!398880 () Unit!154880)

(assert (=> bm!398899 (= call!399000 call!398880)))

(declare-fun bm!398900 () Bool)

(declare-fun lt!2228204 () (InoxSet Context!9338))

(declare-fun call!398988 () Bool)

(declare-fun lt!2228315 () (InoxSet Context!9338))

(assert (=> bm!398900 (= call!398988 (matchZipper!1529 (ite c!953204 ((_ map or) lt!2228204 lt!2228166) lt!2228315) (t!375383 s!2326)))))

(declare-fun bm!398901 () Bool)

(declare-fun call!398982 () Bool)

(assert (=> bm!398901 (= call!398996 call!398982)))

(declare-fun bm!398902 () Bool)

(declare-fun call!398984 () Unit!154880)

(assert (=> bm!398902 (= call!398984 call!399026)))

(declare-fun bm!398903 () Bool)

(assert (=> bm!398903 (= call!398890 call!399018)))

(declare-fun bm!398904 () Bool)

(declare-fun call!399031 () Bool)

(assert (=> bm!398904 (= call!399031 call!399018)))

(declare-fun bm!398905 () Bool)

(declare-fun call!398846 () Bool)

(declare-fun call!398897 () Bool)

(assert (=> bm!398905 (= call!398846 call!398897)))

(declare-fun e!3379390 () Bool)

(assert (=> b!5456961 e!3379390))

(declare-fun res!2324201 () Bool)

(assert (=> b!5456961 (=> (not res!2324201) (not e!3379390))))

(assert (=> b!5456961 (= res!2324201 (= call!398879 call!398883))))

(declare-fun lt!2228233 () Unit!154880)

(declare-fun call!398987 () Unit!154880)

(assert (=> b!5456961 (= lt!2228233 call!398987)))

(declare-fun call!398874 () Bool)

(declare-fun call!399016 () Bool)

(assert (=> b!5456961 (= call!398874 call!399016)))

(declare-fun lt!2228317 () Unit!154880)

(declare-fun call!398920 () Unit!154880)

(assert (=> b!5456961 (= lt!2228317 call!398920)))

(declare-fun call!398969 () Bool)

(assert (=> b!5456961 (= call!398969 call!399039)))

(declare-fun lt!2228194 () Unit!154880)

(declare-fun call!398870 () Unit!154880)

(assert (=> b!5456961 (= lt!2228194 call!398870)))

(declare-fun call!398913 () Regex!15285)

(assert (=> b!5456961 (= lt!2228185 call!398913)))

(declare-fun call!399041 () Bool)

(assert (=> b!5456961 (= call!399041 call!398846)))

(declare-fun lt!2228181 () Unit!154880)

(assert (=> b!5456961 (= lt!2228181 call!398880)))

(assert (=> b!5456961 (= call!398908 call!398982)))

(declare-fun lt!2228221 () Unit!154880)

(declare-fun call!398992 () Unit!154880)

(assert (=> b!5456961 (= lt!2228221 call!398992)))

(declare-fun call!399047 () Bool)

(assert (=> b!5456961 (= call!398893 call!399047)))

(declare-fun lt!2228348 () Unit!154880)

(assert (=> b!5456961 (= lt!2228348 call!398950)))

(declare-fun call!398898 () Regex!15285)

(assert (=> b!5456961 (= lt!2228281 call!398898)))

(declare-fun lt!2228319 () Bool)

(assert (=> b!5456961 (= lt!2228319 call!399001)))

(declare-fun lt!2228259 () Unit!154880)

(declare-fun call!398956 () Unit!154880)

(assert (=> b!5456961 (= lt!2228259 call!398956)))

(assert (=> b!5456961 (= lt!2228319 call!398931)))

(assert (=> b!5456961 (= lt!2228319 call!398849)))

(declare-fun lt!2228318 () Unit!154880)

(declare-fun call!398921 () Unit!154880)

(assert (=> b!5456961 (= lt!2228318 call!398921)))

(declare-fun call!398895 () Regex!15285)

(assert (=> b!5456961 (= lt!2228359 call!398895)))

(declare-fun call!398943 () (InoxSet Context!9338))

(declare-fun call!398942 () (InoxSet Context!9338))

(assert (=> b!5456961 (= call!398943 call!398942)))

(declare-fun lt!2228207 () Unit!154880)

(declare-fun call!399019 () Unit!154880)

(assert (=> b!5456961 (= lt!2228207 call!399019)))

(declare-fun lt!2228228 () (InoxSet Context!9338))

(assert (=> b!5456961 (= lt!2228228 call!398942)))

(assert (=> b!5456961 (= lt!2228160 (store ((as const (Array Context!9338 Bool)) false) lt!2228214 true))))

(assert (=> b!5456961 (= lt!2228214 (Context!9339 lt!2228224))))

(declare-fun lt!2228176 () List!62155)

(assert (=> b!5456961 (= lt!2228224 (Cons!62031 (regOne!31082 (regOne!31082 r!7292)) lt!2228176))))

(declare-fun lt!2228213 () (InoxSet Context!9338))

(declare-fun call!399002 () (InoxSet Context!9338))

(assert (=> b!5456961 (= lt!2228213 call!399002)))

(assert (=> b!5456961 (= lt!2228176 (Cons!62031 (regTwo!31082 (regOne!31082 r!7292)) (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun Unit!154887 () Unit!154880)

(assert (=> b!5456961 (= e!3379382 Unit!154887)))

(declare-fun b!5456962 () Bool)

(assert (=> b!5456962 (= e!3379389 e!3379391)))

(assert (=> b!5456962 (= c!953213 ((_ is EmptyExpr!15285) (regOne!31082 r!7292)))))

(declare-fun lt!2228240 () Regex!15285)

(declare-fun call!399027 () Bool)

(declare-fun bm!398906 () Bool)

(assert (=> bm!398906 (= call!399027 (matchRSpec!2388 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))) s!2326))))

(declare-fun b!5456963 () Bool)

(declare-fun e!3379380 () Bool)

(assert (=> b!5456963 (= e!3379408 e!3379380)))

(declare-fun res!2324194 () Bool)

(assert (=> b!5456963 (=> res!2324194 e!3379380)))

(declare-fun lt!2228172 () List!62156)

(declare-fun zipperDepth!186 (List!62156) Int)

(assert (=> b!5456963 (= res!2324194 (< (zipperDepth!186 zl!343) (zipperDepth!186 lt!2228172)))))

(assert (=> b!5456963 (= lt!2228172 (Cons!62032 lt!2228337 Nil!62032))))

(declare-fun bm!398907 () Bool)

(declare-fun call!399046 () (InoxSet Context!9338))

(assert (=> bm!398907 (= call!398943 call!399046)))

(declare-fun bm!398908 () Bool)

(assert (=> bm!398908 (= call!399022 call!398920)))

(declare-fun bm!398909 () Bool)

(declare-fun call!398938 () (InoxSet Context!9338))

(assert (=> bm!398909 (= call!398938 call!399035)))

(declare-fun bm!398910 () Bool)

(declare-fun call!398889 () Bool)

(assert (=> bm!398910 (= call!399044 call!398889)))

(declare-fun call!398887 () Bool)

(declare-fun bm!398911 () Bool)

(assert (=> bm!398911 (= call!398887 (matchR!7470 (ite c!953211 lt!2228280 lt!2228257) (ite c!953211 lt!2228284 (_2!35787 lt!2228230))))))

(declare-fun call!399045 () Unit!154880)

(declare-fun bm!398912 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!442 (Regex!15285 List!62154) Unit!154880)

(assert (=> bm!398912 (= call!399045 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!442 (reg!15614 (regOne!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))))))

(declare-fun lt!2228246 () List!62154)

(declare-fun bm!398913 () Bool)

(declare-fun call!398876 () List!62154)

(assert (=> bm!398913 (= call!398876 (++!13649 (ite c!953211 lt!2228246 (_1!35787 lt!2228230)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230))))))

(declare-fun call!398909 () Option!15396)

(declare-fun call!398927 () Bool)

(declare-fun bm!398914 () Bool)

(declare-fun call!399017 () Option!15396)

(assert (=> bm!398914 (= call!398927 (isDefined!12099 (ite c!953207 call!398909 (ite c!953209 call!399017 (ite c!953211 lt!2228304 lt!2228352)))))))

(declare-fun lt!2228177 () Context!9338)

(declare-fun lt!2228338 () Context!9338)

(declare-fun call!398901 () (InoxSet Context!9338))

(declare-fun bm!398915 () Bool)

(assert (=> bm!398915 (= call!398901 (derivationStepZipperUp!657 (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 (ite c!953205 lt!2228345 lt!2228337))) (h!68478 s!2326)))))

(declare-fun b!5456964 () Bool)

(declare-fun lt!2228347 () Bool)

(declare-fun call!399034 () Bool)

(assert (=> b!5456964 (= e!3379393 (= lt!2228347 call!399034))))

(declare-fun b!5456965 () Bool)

(declare-fun e!3379385 () Bool)

(assert (=> b!5456965 e!3379385))

(declare-fun res!2324197 () Bool)

(assert (=> b!5456965 (=> (not res!2324197) (not e!3379385))))

(declare-fun lt!2228269 () Bool)

(assert (=> b!5456965 (= res!2324197 (= lt!2228269 call!399027))))

(declare-fun lt!2228340 () Unit!154880)

(declare-fun call!398957 () Unit!154880)

(assert (=> b!5456965 (= lt!2228340 call!398957)))

(declare-fun lt!2228263 () Bool)

(declare-fun lt!2228328 () Regex!15285)

(assert (=> b!5456965 (= lt!2228263 (matchRSpec!2388 lt!2228328 s!2326))))

(declare-fun lt!2228267 () Unit!154880)

(declare-fun call!399050 () Unit!154880)

(assert (=> b!5456965 (= lt!2228267 call!399050)))

(assert (=> b!5456965 (= lt!2228269 lt!2228263)))

(declare-fun call!398940 () Bool)

(assert (=> b!5456965 (= lt!2228263 call!398940)))

(assert (=> b!5456965 (= lt!2228269 call!399012)))

(assert (=> b!5456965 (= lt!2228328 (Union!15285 (Concat!24130 (regOne!31083 (regOne!31082 r!7292)) (regTwo!31082 r!7292)) (Concat!24130 (regTwo!31083 (regOne!31082 r!7292)) (regTwo!31082 r!7292))))))

(assert (=> b!5456965 (= lt!2228229 (Concat!24130 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))

(declare-fun lt!2228188 () Unit!154880)

(declare-fun lemmaConcatDistributesInUnion!32 (Regex!15285 Regex!15285 Regex!15285 List!62154) Unit!154880)

(assert (=> b!5456965 (= lt!2228188 (lemmaConcatDistributesInUnion!32 (regOne!31083 (regOne!31082 r!7292)) (regTwo!31083 (regOne!31082 r!7292)) (regTwo!31082 r!7292) s!2326))))

(declare-fun lt!2228329 () Bool)

(declare-fun call!398975 () Bool)

(assert (=> b!5456965 (= lt!2228329 call!398975)))

(declare-fun lt!2228183 () Unit!154880)

(assert (=> b!5456965 (= lt!2228183 call!398896)))

(declare-fun lt!2228289 () Bool)

(assert (=> b!5456965 (= lt!2228289 call!398886)))

(declare-fun lt!2228171 () Unit!154880)

(assert (=> b!5456965 (= lt!2228171 (mainMatchTheorem!2388 lt!2228362 s!2326))))

(assert (=> b!5456965 (= lt!2228329 call!399011)))

(assert (=> b!5456965 (= lt!2228329 call!399003)))

(declare-fun lt!2228231 () Unit!154880)

(declare-fun call!398979 () Unit!154880)

(assert (=> b!5456965 (= lt!2228231 call!398979)))

(assert (=> b!5456965 (= lt!2228205 call!398881)))

(declare-fun call!398882 () Bool)

(assert (=> b!5456965 (= lt!2228289 call!398882)))

(assert (=> b!5456965 (= lt!2228289 call!398900)))

(declare-fun lt!2228226 () Unit!154880)

(assert (=> b!5456965 (= lt!2228226 call!398888)))

(assert (=> b!5456965 (= lt!2228362 call!398848)))

(declare-fun lt!2228232 () Unit!154880)

(assert (=> b!5456965 (= lt!2228232 e!3379399)))

(declare-fun c!953214 () Bool)

(declare-fun call!398953 () Bool)

(assert (=> b!5456965 (= c!953214 call!398953)))

(assert (=> b!5456965 (= call!398904 call!398901)))

(declare-fun lt!2228193 () Unit!154880)

(declare-fun call!399014 () Unit!154880)

(assert (=> b!5456965 (= lt!2228193 call!399014)))

(declare-fun lt!2228163 () (InoxSet Context!9338))

(assert (=> b!5456965 (= lt!2228163 call!398901)))

(declare-fun lt!2228159 () Unit!154880)

(declare-fun e!3379403 () Unit!154880)

(assert (=> b!5456965 (= lt!2228159 e!3379403)))

(declare-fun c!953202 () Bool)

(declare-fun nullable!5454 (Regex!15285) Bool)

(assert (=> b!5456965 (= c!953202 (nullable!5454 (regOne!31083 (regOne!31082 r!7292))))))

(declare-fun call!398945 () (InoxSet Context!9338))

(assert (=> b!5456965 (= call!398945 call!398973)))

(declare-fun lt!2228260 () Unit!154880)

(assert (=> b!5456965 (= lt!2228260 call!398952)))

(declare-fun lt!2228182 () (InoxSet Context!9338))

(assert (=> b!5456965 (= lt!2228182 call!398973)))

(assert (=> b!5456965 (= lt!2228321 (store ((as const (Array Context!9338 Bool)) false) lt!2228177 true))))

(assert (=> b!5456965 (= lt!2228177 (Context!9339 lt!2228250))))

(assert (=> b!5456965 (= lt!2228250 (Cons!62031 (regTwo!31083 (regOne!31082 r!7292)) (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(assert (=> b!5456965 (= lt!2228199 (store ((as const (Array Context!9338 Bool)) false) lt!2228258 true))))

(assert (=> b!5456965 (= lt!2228258 (Context!9339 lt!2228265))))

(assert (=> b!5456965 (= lt!2228265 (Cons!62031 (regOne!31083 (regOne!31082 r!7292)) (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun e!3379387 () Bool)

(assert (=> b!5456965 (= (matchZipper!1529 ((_ map or) lt!2228204 lt!2228272) (t!375383 s!2326)) e!3379387)))

(declare-fun res!2324200 () Bool)

(assert (=> b!5456965 (=> res!2324200 e!3379387)))

(declare-fun lt!2228248 () Bool)

(assert (=> b!5456965 (= res!2324200 lt!2228248)))

(declare-fun call!398877 () Bool)

(assert (=> b!5456965 (= lt!2228248 call!398877)))

(declare-fun lt!2228307 () Unit!154880)

(declare-fun call!399015 () Unit!154880)

(assert (=> b!5456965 (= lt!2228307 call!399015)))

(declare-fun call!398965 () (InoxSet Context!9338))

(assert (=> b!5456965 (= lt!2228272 call!398965)))

(declare-fun call!398935 () (InoxSet Context!9338))

(assert (=> b!5456965 (= lt!2228204 call!398935)))

(declare-fun Unit!154888 () Unit!154880)

(assert (=> b!5456965 (= e!3379407 Unit!154888)))

(declare-fun bm!398916 () Bool)

(assert (=> bm!398916 (= call!398937 call!399037)))

(declare-fun bm!398917 () Bool)

(declare-fun call!398970 () Bool)

(assert (=> bm!398917 (= call!398970 (Exists!2466 (ite c!953207 lambda!288846 (ite c!953209 lambda!288850 (ite c!953211 lambda!288854 (ite c!953206 lambda!288863 lambda!288868))))))))

(declare-fun bm!398918 () Bool)

(assert (=> bm!398918 (= call!398874 (Exists!2466 (ite c!953209 lambda!288851 (ite c!953211 lambda!288853 (ite c!953206 lambda!288864 lambda!288866)))))))

(declare-fun bm!398919 () Bool)

(declare-fun call!399004 () Unit!154880)

(assert (=> bm!398919 (= call!398981 call!399004)))

(declare-fun bm!398920 () Bool)

(declare-fun call!398905 () (InoxSet Context!9338))

(assert (=> bm!398920 (= call!398905 call!398901)))

(declare-fun bm!398921 () Bool)

(declare-fun call!399048 () Unit!154880)

(declare-fun call!399051 () Unit!154880)

(assert (=> bm!398921 (= call!399048 call!399051)))

(declare-fun bm!398922 () Bool)

(assert (=> bm!398922 (= call!398888 call!398862)))

(declare-fun bm!398923 () Bool)

(assert (=> bm!398923 (= call!398953 (nullable!5454 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))))))

(declare-fun bm!398924 () Bool)

(declare-fun call!399043 () Bool)

(assert (=> bm!398924 (= call!399041 call!399043)))

(declare-fun bm!398925 () Bool)

(declare-fun call!399009 () Unit!154880)

(assert (=> bm!398925 (= call!398987 call!399009)))

(declare-fun bm!398926 () Bool)

(assert (=> bm!398926 (= call!398926 call!399000)))

(declare-fun bm!398927 () Bool)

(assert (=> bm!398927 (= call!398969 call!398927)))

(declare-fun bm!398928 () Bool)

(declare-fun lemmaConcatAssociative!80 (Regex!15285 Regex!15285 Regex!15285 List!62154) Unit!154880)

(assert (=> bm!398928 (= call!399009 (lemmaConcatAssociative!80 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) lt!2228350) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (regTwo!31082 r!7292))) s!2326))))

(declare-fun bm!398929 () Bool)

(declare-fun call!398847 () Bool)

(declare-fun call!398964 () Bool)

(assert (=> bm!398929 (= call!398847 call!398964)))

(declare-fun bm!398930 () Bool)

(declare-fun call!399029 () (InoxSet Context!9338))

(assert (=> bm!398930 (= call!399029 call!398945)))

(declare-fun bm!398931 () Bool)

(assert (=> bm!398931 (= call!398929 call!398908)))

(declare-fun bm!398932 () Bool)

(assert (=> bm!398932 (= call!398999 (matchR!7470 (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292)) (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326)))))

(declare-fun bm!398933 () Bool)

(assert (=> bm!398933 (= call!398942 (derivationStepZipperUp!657 (ite c!953209 lt!2228214 lt!2228309) (h!68478 s!2326)))))

(declare-fun bm!398934 () Bool)

(declare-fun call!398858 () Bool)

(declare-fun call!398866 () Bool)

(assert (=> bm!398934 (= call!398858 call!398866)))

(assert (=> b!5456966 call!398941))

(declare-fun lt!2228323 () Unit!154880)

(declare-fun e!3379374 () Unit!154880)

(assert (=> b!5456966 (= lt!2228323 e!3379374)))

(declare-fun isEmpty!34016 (List!62154) Bool)

(assert (=> b!5456966 (= c!953210 (isEmpty!34016 (_1!35787 lt!2228239)))))

(assert (=> b!5456966 (= lt!2228239 call!398861)))

(assert (=> b!5456966 (= call!398891 call!398996)))

(declare-fun lt!2228218 () Unit!154880)

(assert (=> b!5456966 (= lt!2228218 call!399022)))

(declare-fun call!399020 () Bool)

(declare-fun call!399010 () Bool)

(assert (=> b!5456966 (= call!399020 call!399010)))

(declare-fun call!399021 () Option!15396)

(assert (=> b!5456966 (= lt!2228304 call!399021)))

(declare-fun lt!2228223 () Unit!154880)

(assert (=> b!5456966 (= lt!2228223 call!398997)))

(declare-fun Unit!154889 () Unit!154880)

(assert (=> b!5456966 (= e!3379384 Unit!154889)))

(declare-fun bm!398935 () Bool)

(declare-fun call!398946 () Bool)

(assert (=> bm!398935 (= call!398946 call!398940)))

(declare-fun bm!398936 () Bool)

(declare-fun call!398916 () Bool)

(assert (=> bm!398936 (= call!398849 call!398916)))

(declare-fun bm!398937 () Bool)

(assert (=> bm!398937 (= call!398855 call!399037)))

(declare-fun bm!398938 () Bool)

(declare-fun ++!13650 (List!62155 List!62155) List!62155)

(assert (=> bm!398938 (= call!399049 (++!13650 lt!2228326 lt!2228195))))

(declare-fun b!5456967 () Bool)

(declare-fun e!3379411 () Unit!154880)

(assert (=> b!5456967 (= e!3379377 e!3379411)))

(assert (=> b!5456967 (= c!953206 call!398866)))

(declare-fun b!5456968 () Bool)

(declare-fun res!2324175 () Bool)

(assert (=> b!5456968 (=> res!2324175 e!3379401)))

(assert (=> b!5456968 (= res!2324175 (not (= r!7292 (generalisedConcat!954 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5456969 () Bool)

(declare-fun tp!1501936 () Bool)

(assert (=> b!5456969 (= e!3379373 tp!1501936)))

(declare-fun bm!398939 () Bool)

(declare-fun call!399036 () Bool)

(assert (=> bm!398939 (= call!399036 call!398994)))

(declare-fun e!3379396 () Bool)

(assert (=> b!5456970 e!3379396))

(declare-fun res!2324185 () Bool)

(assert (=> b!5456970 (=> (not res!2324185) (not e!3379396))))

(declare-fun call!399033 () Bool)

(assert (=> b!5456970 (= res!2324185 call!399033)))

(declare-fun lt!2228266 () Unit!154880)

(assert (=> b!5456970 (= lt!2228266 call!399048)))

(assert (=> b!5456970 (= call!398899 call!398966)))

(declare-fun lt!2228311 () Unit!154880)

(declare-fun call!398949 () Unit!154880)

(assert (=> b!5456970 (= lt!2228311 call!398949)))

(declare-fun call!398922 () Bool)

(assert (=> b!5456970 (= call!398922 call!398847)))

(declare-fun lt!2228225 () Unit!154880)

(assert (=> b!5456970 (= lt!2228225 call!398850)))

(declare-fun call!398907 () Bool)

(assert (=> b!5456970 (= call!398907 call!398967)))

(declare-fun lt!2228215 () Unit!154880)

(declare-fun call!398993 () Unit!154880)

(assert (=> b!5456970 (= lt!2228215 call!398993)))

(declare-fun call!398869 () Bool)

(assert (=> b!5456970 (= call!398869 call!398998)))

(declare-fun lt!2228353 () Unit!154880)

(declare-fun call!398990 () Unit!154880)

(assert (=> b!5456970 (= lt!2228353 call!398990)))

(declare-fun call!398875 () Bool)

(declare-fun call!398976 () Bool)

(assert (=> b!5456970 (= call!398875 call!398976)))

(declare-fun lt!2228312 () Unit!154880)

(assert (=> b!5456970 (= lt!2228312 call!398984)))

(declare-fun lt!2228201 () Regex!15285)

(assert (=> b!5456970 (= lt!2228201 call!398867)))

(declare-fun call!398961 () (InoxSet Context!9338))

(assert (=> b!5456970 (= call!398938 call!398961)))

(declare-fun lt!2228175 () Unit!154880)

(assert (=> b!5456970 (= lt!2228175 call!399006)))

(assert (=> b!5456970 (= lt!2228168 (store ((as const (Array Context!9338 Bool)) false) lt!2228337 true))))

(declare-fun Unit!154890 () Unit!154880)

(assert (=> b!5456970 (= e!3379411 Unit!154890)))

(declare-fun bm!398940 () Bool)

(declare-fun call!398930 () Bool)

(assert (=> bm!398940 (= call!399039 call!398930)))

(declare-fun bm!398941 () Bool)

(assert (=> bm!398941 (= call!398992 call!398933)))

(declare-fun bm!398942 () Bool)

(declare-fun lt!2228162 () (InoxSet Context!9338))

(declare-fun lt!2228252 () (InoxSet Context!9338))

(assert (=> bm!398942 (= call!399014 (lemmaFlatMapOnSingletonSet!544 (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 lt!2228162)) (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 lt!2228164)) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 lambda!288844))))))

(declare-fun b!5456971 () Bool)

(declare-fun e!3379375 () Bool)

(assert (=> b!5456971 (= e!3379375 call!398988)))

(declare-fun bm!398943 () Bool)

(declare-fun call!398892 () Bool)

(assert (=> bm!398943 (= call!398892 call!399011)))

(declare-fun b!5456972 () Bool)

(declare-fun e!3379413 () Bool)

(assert (=> b!5456972 (= e!3379413 lt!2228339)))

(declare-fun b!5456973 () Bool)

(declare-fun e!3379394 () Bool)

(declare-fun call!399007 () Bool)

(assert (=> b!5456973 (= e!3379394 call!399007)))

(declare-fun bm!398944 () Bool)

(assert (=> bm!398944 (= call!399007 call!398859)))

(declare-fun b!5456974 () Bool)

(declare-fun Unit!154891 () Unit!154880)

(assert (=> b!5456974 (= e!3379406 Unit!154891)))

(declare-fun bm!398945 () Bool)

(declare-fun call!398986 () Unit!154880)

(assert (=> bm!398945 (= call!398986 call!398979)))

(declare-fun bm!398946 () Bool)

(assert (=> bm!398946 (= call!398979 (theoremZipperRegexEquiv!565 (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 (ite c!953209 lt!2228160 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228242 lt!2228279) (ite c!953206 lt!2228173 lt!2228168)) lt!2228191)))) (ite c!953204 (Cons!62032 lt!2228177 Nil!62032) (ite c!953207 (Cons!62032 lt!2228338 Nil!62032) (ite c!953209 (Cons!62032 lt!2228214 Nil!62032) (ite c!953205 (ite c!953211 (ite c!953210 (Cons!62032 lt!2228337 Nil!62032) (Cons!62032 lt!2228345 Nil!62032)) (ite c!953206 (Cons!62032 lt!2228309 Nil!62032) (Cons!62032 lt!2228337 Nil!62032))) (Cons!62032 lt!2228337 Nil!62032))))) (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228283 (reg!15614 (regOne!31082 r!7292))) (ite c!953206 lt!2228257 lt!2228201)) lt!2228208)))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326))))))

(declare-fun bm!398947 () Bool)

(assert (=> bm!398947 (= call!398922 call!399010)))

(declare-fun lt!2228198 () List!62154)

(declare-fun bm!398948 () Bool)

(assert (=> bm!398948 (= call!398875 (matchR!7470 (ite c!953206 lt!2228257 lt!2228201) (ite c!953206 lt!2228198 s!2326)))))

(declare-fun b!5456975 () Bool)

(declare-fun Unit!154892 () Unit!154880)

(assert (=> b!5456975 (= e!3379403 Unit!154892)))

(declare-fun bm!398949 () Bool)

(declare-fun call!398857 () Bool)

(assert (=> bm!398949 (= call!398857 call!398877)))

(declare-fun bm!398950 () Bool)

(assert (=> bm!398950 (= call!398878 call!399015)))

(declare-fun b!5456976 () Bool)

(assert (=> b!5456976 (= e!3379379 call!398953)))

(declare-fun b!5456977 () Bool)

(declare-fun Unit!154893 () Unit!154880)

(assert (=> b!5456977 (= e!3379389 Unit!154893)))

(assert (=> b!5456977 (= lt!2228350 (regOne!31082 r!7292))))

(assert (=> b!5456977 (= lt!2228195 (Cons!62031 lt!2228350 (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(assert (=> b!5456977 (= lt!2228164 (Context!9339 (Cons!62031 (reg!15614 (regOne!31082 r!7292)) lt!2228195)))))

(assert (=> b!5456977 (= lt!2228162 (store ((as const (Array Context!9338 Bool)) false) lt!2228164 true))))

(declare-fun lt!2228192 () (InoxSet Context!9338))

(declare-fun call!399013 () (InoxSet Context!9338))

(assert (=> b!5456977 (= lt!2228192 call!399013)))

(declare-fun lt!2228190 () Unit!154880)

(declare-fun call!398871 () Unit!154880)

(assert (=> b!5456977 (= lt!2228190 call!398871)))

(assert (=> b!5456977 (= call!399029 call!399013)))

(assert (=> b!5456977 (= lt!2228309 (Context!9339 lt!2228195))))

(declare-fun lt!2228363 () (InoxSet Context!9338))

(assert (=> b!5456977 (= lt!2228363 call!399002)))

(assert (=> b!5456977 (= lt!2228257 (Concat!24130 lt!2228350 (regTwo!31082 r!7292)))))

(assert (=> b!5456977 (= lt!2228280 (Concat!24130 (reg!15614 (regOne!31082 r!7292)) lt!2228257))))

(assert (=> b!5456977 (= lt!2228326 (Cons!62031 (reg!15614 (regOne!31082 r!7292)) Nil!62031))))

(assert (=> b!5456977 (= lt!2228345 (Context!9339 lt!2228326))))

(assert (=> b!5456977 (= lt!2228279 (store ((as const (Array Context!9338 Bool)) false) lt!2228345 true))))

(assert (=> b!5456977 (= lt!2228173 (store ((as const (Array Context!9338 Bool)) false) lt!2228309 true))))

(declare-fun lt!2228264 () (InoxSet Context!9338))

(assert (=> b!5456977 (= lt!2228264 call!398863)))

(declare-fun lt!2228216 () (InoxSet Context!9338))

(assert (=> b!5456977 (= lt!2228216 call!398942)))

(declare-fun lt!2228287 () Unit!154880)

(assert (=> b!5456977 (= lt!2228287 call!398925)))

(assert (=> b!5456977 (= call!398943 call!398863)))

(declare-fun lt!2228247 () Unit!154880)

(assert (=> b!5456977 (= lt!2228247 call!399019)))

(assert (=> b!5456977 (= (flatMap!1012 lt!2228173 lambda!288844) call!398942)))

(declare-fun lt!2228210 () Unit!154880)

(assert (=> b!5456977 (= lt!2228210 call!399004)))

(assert (=> b!5456977 (= lt!2228339 call!399041)))

(declare-fun res!2324198 () Bool)

(assert (=> b!5456977 (= res!2324198 (= lt!2228339 call!398846))))

(declare-fun e!3379400 () Bool)

(assert (=> b!5456977 (=> (not res!2324198) (not e!3379400))))

(assert (=> b!5456977 e!3379400))

(assert (=> b!5456977 (= c!953211 lt!2228347)))

(declare-fun lt!2228320 () Unit!154880)

(assert (=> b!5456977 (= lt!2228320 e!3379384)))

(assert (=> b!5456977 (= lt!2228347 call!398962)))

(declare-fun bm!398951 () Bool)

(assert (=> bm!398951 (= call!398940 (matchR!7470 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326))))))

(declare-fun b!5456978 () Bool)

(assert (=> b!5456978 (= e!3379396 false)))

(declare-fun bm!398952 () Bool)

(declare-fun call!398948 () Bool)

(assert (=> bm!398952 (= call!398932 call!398948)))

(declare-fun Unit!154894 () Unit!154880)

(assert (=> b!5456979 (= e!3379374 Unit!154894)))

(declare-fun lt!2228288 () Unit!154880)

(declare-fun call!398968 () Unit!154880)

(assert (=> b!5456979 (= lt!2228288 call!398968)))

(declare-fun call!398923 () Bool)

(assert (=> b!5456979 (= call!398923 call!398937)))

(declare-fun lt!2228327 () Unit!154880)

(declare-fun call!398947 () Unit!154880)

(assert (=> b!5456979 (= lt!2228327 call!398947)))

(assert (=> b!5456979 (= lt!2228343 call!398894)))

(declare-fun call!399024 () Bool)

(assert (=> b!5456979 (= call!399024 call!398964)))

(declare-fun lt!2228351 () Unit!154880)

(assert (=> b!5456979 (= lt!2228351 call!399045)))

(assert (=> b!5456979 (= call!398929 call!398851)))

(declare-fun lt!2228219 () Unit!154880)

(declare-fun call!399023 () Unit!154880)

(assert (=> b!5456979 (= lt!2228219 call!399023)))

(declare-fun call!398852 () Bool)

(declare-fun call!398963 () Bool)

(assert (=> b!5456979 (= call!398852 call!398963)))

(assert (=> b!5456979 (= lt!2228360 call!398914)))

(declare-fun lt!2228357 () Unit!154880)

(declare-fun call!398971 () Unit!154880)

(assert (=> b!5456979 (= lt!2228357 call!398971)))

(assert (=> b!5456979 (= lt!2228246 call!398955)))

(declare-fun call!399008 () List!62154)

(assert (=> b!5456979 (= lt!2228180 call!399008)))

(declare-fun lt!2228285 () List!62154)

(assert (=> b!5456979 (= lt!2228285 call!398876)))

(declare-fun call!398978 () List!62154)

(assert (=> b!5456979 (= lt!2228284 call!398978)))

(assert (=> b!5456979 (= lt!2228285 lt!2228284)))

(declare-fun lt!2228354 () Unit!154880)

(declare-fun call!398915 () Unit!154880)

(assert (=> b!5456979 (= lt!2228354 call!398915)))

(assert (=> b!5456979 call!399031))

(declare-fun lt!2228356 () Unit!154880)

(assert (=> b!5456979 (= lt!2228356 call!398974)))

(assert (=> b!5456979 call!399036))

(declare-fun lt!2228200 () Unit!154880)

(assert (=> b!5456979 (= lt!2228200 call!398873)))

(declare-fun call!399005 () Bool)

(assert (=> b!5456979 (= call!399005 call!399007)))

(declare-fun lt!2228178 () Unit!154880)

(declare-fun call!398902 () Unit!154880)

(assert (=> b!5456979 (= lt!2228178 call!398902)))

(declare-fun call!398985 () Bool)

(assert (=> b!5456979 call!398985))

(declare-fun lt!2228196 () Unit!154880)

(declare-fun call!398928 () Unit!154880)

(assert (=> b!5456979 (= lt!2228196 call!398928)))

(declare-fun lt!2228189 () Unit!154880)

(declare-fun call!398903 () Unit!154880)

(assert (=> b!5456979 (= lt!2228189 call!398903)))

(declare-fun call!398983 () Bool)

(assert (=> b!5456979 call!398983))

(declare-fun lt!2228330 () Unit!154880)

(assert (=> b!5456979 (= lt!2228330 call!399051)))

(declare-fun res!2324181 () Bool)

(assert (=> b!5456979 (= res!2324181 call!398887)))

(assert (=> b!5456979 (=> (not res!2324181) (not e!3379410))))

(assert (=> b!5456979 e!3379410))

(declare-fun lt!2228297 () Unit!154880)

(assert (=> b!5456979 (= lt!2228297 call!398856)))

(assert (=> b!5456979 call!398858))

(declare-fun bm!398953 () Bool)

(assert (=> bm!398953 (= call!398885 (matchZipper!1529 (ite c!953203 lt!2228203 (ite c!953204 z!1189 lt!2228252)) (ite c!953203 (t!375383 s!2326) s!2326)))))

(declare-fun bm!398954 () Bool)

(declare-fun lt!2228291 () tuple2!64968)

(declare-fun lt!2228256 () List!62154)

(assert (=> bm!398954 (= call!399008 (++!13649 (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228239) lt!2228256)))))

(declare-fun bm!398955 () Bool)

(assert (=> bm!398955 (= call!399017 call!398909)))

(declare-fun bm!398956 () Bool)

(declare-fun call!398872 () Unit!154880)

(assert (=> bm!398956 (= call!398880 call!398872)))

(declare-fun bm!398957 () Bool)

(assert (=> bm!398957 (= call!398877 (matchZipper!1529 (ite c!953204 lt!2228204 (ite (or c!953207 c!953209) z!1189 (ite (and c!953205 c!953211) (ite c!953210 lt!2228242 z!1189) lt!2228186))) (ite c!953204 (t!375383 s!2326) (ite (or c!953207 c!953209 (and c!953205 c!953211)) s!2326 (t!375383 s!2326)))))))

(declare-fun bm!398958 () Bool)

(assert (=> bm!398958 (= call!398978 (++!13649 (ite c!953211 (_1!35787 lt!2228360) (_2!35787 lt!2228291)) (ite c!953211 lt!2228180 (_2!35787 lt!2228245))))))

(declare-fun bm!398959 () Bool)

(declare-fun call!398951 () Bool)

(assert (=> bm!398959 (= call!398951 call!398884)))

(declare-fun bm!398960 () Bool)

(declare-fun call!398919 () (InoxSet Context!9338))

(assert (=> bm!398960 (= call!399002 call!398919)))

(declare-fun call!398980 () Unit!154880)

(declare-fun bm!398961 () Bool)

(assert (=> bm!398961 (= call!398980 (lemmaExistCutMatchRandMatchRSpecEquivalent!1120 (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)))))

(declare-fun bm!398962 () Bool)

(assert (=> bm!398962 (= call!398956 call!398865)))

(declare-fun bm!398963 () Bool)

(assert (=> bm!398963 (= call!399024 call!398893)))

(declare-fun bm!398964 () Bool)

(assert (=> bm!398964 (= call!398957 (mainMatchTheorem!2388 (ite c!953204 lt!2228229 lt!2228240) s!2326))))

(declare-fun bm!398965 () Bool)

(assert (=> bm!398965 (= call!398882 (matchZipper!1529 (ite c!953204 lt!2228199 lt!2228313) s!2326))))

(declare-fun bm!398966 () Bool)

(assert (=> bm!398966 (= call!398920 call!398980)))

(declare-fun bm!398967 () Bool)

(declare-fun call!398959 () Bool)

(assert (=> bm!398967 (= call!399047 call!398959)))

(declare-fun call!398934 () List!62154)

(declare-fun bm!398968 () Bool)

(assert (=> bm!398968 (= call!398900 (matchR!7470 (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208)))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326))))))

(declare-fun bm!398969 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1574 (Regex!15285 Regex!15285 List!62154) Unit!154880)

(assert (=> bm!398969 (= call!399038 (lemmaFindConcatSeparationEquivalentToExists!1574 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)))))

(declare-fun bm!398970 () Bool)

(assert (=> bm!398970 (= call!398923 call!398999)))

(declare-fun b!5456980 () Bool)

(declare-fun e!3379386 () Bool)

(declare-fun tp_is_empty!39823 () Bool)

(declare-fun tp!1501940 () Bool)

(assert (=> b!5456980 (= e!3379386 (and tp_is_empty!39823 tp!1501940))))

(declare-fun bm!398971 () Bool)

(assert (=> bm!398971 (= call!399021 call!399017)))

(declare-fun b!5456981 () Bool)

(declare-fun Unit!154895 () Unit!154880)

(assert (=> b!5456981 (= e!3379403 Unit!154895)))

(declare-fun lt!2228276 () Unit!154880)

(declare-fun call!398991 () Unit!154880)

(assert (=> b!5456981 (= lt!2228276 call!398991)))

(declare-fun res!2324176 () Bool)

(assert (=> b!5456981 (= res!2324176 lt!2228248)))

(declare-fun e!3379392 () Bool)

(assert (=> b!5456981 (=> res!2324176 e!3379392)))

(assert (=> b!5456981 (= call!398988 e!3379392)))

(declare-fun bm!398972 () Bool)

(assert (=> bm!398972 (= call!398945 (flatMap!1012 (ite c!953204 lt!2228199 (ite c!953207 lt!2228252 lt!2228162)) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 lambda!288844))))))

(declare-fun b!5456982 () Bool)

(declare-fun tp!1501939 () Bool)

(assert (=> b!5456982 (= e!3379376 tp!1501939)))

(declare-fun bm!398973 () Bool)

(assert (=> bm!398973 (= call!398907 call!399024)))

(declare-fun bm!398974 () Bool)

(assert (=> bm!398974 (= call!398949 call!399045)))

(declare-fun bm!398975 () Bool)

(assert (=> bm!398975 (= call!398977 call!399030)))

(declare-fun bm!398976 () Bool)

(assert (=> bm!398976 (= call!398897 call!398886)))

(declare-fun bm!398977 () Bool)

(assert (=> bm!398977 (= call!399051 (lemmaTwoRegexMatchThenConcatMatchesConcatString!252 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) lt!2228350) (ite c!953211 lt!2228257 (regTwo!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 Nil!62030)) (ite c!953211 lt!2228180 (ite c!953206 (_2!35787 lt!2228245) s!2326))))))

(declare-fun bm!398978 () Bool)

(assert (=> bm!398978 (= call!398968 call!399000)))

(declare-fun bm!398979 () Bool)

(declare-fun call!399032 () Bool)

(assert (=> bm!398979 (= call!398964 call!399032)))

(declare-fun bm!398980 () Bool)

(assert (=> bm!398980 (= call!398871 call!399014)))

(declare-fun res!2324196 () Bool)

(declare-fun e!3379402 () Bool)

(assert (=> start!571598 (=> (not res!2324196) (not e!3379402))))

(declare-fun validRegex!7021 (Regex!15285) Bool)

(assert (=> start!571598 (= res!2324196 (validRegex!7021 r!7292))))

(assert (=> start!571598 e!3379402))

(assert (=> start!571598 e!3379373))

(declare-fun condSetEmpty!35707 () Bool)

(assert (=> start!571598 (= condSetEmpty!35707 (= z!1189 ((as const (Array Context!9338 Bool)) false)))))

(assert (=> start!571598 setRes!35707))

(assert (=> start!571598 e!3379404))

(assert (=> start!571598 e!3379386))

(declare-fun b!5456983 () Bool)

(assert (=> b!5456983 (= e!3379392 call!398939)))

(declare-fun b!5456984 () Bool)

(declare-fun res!2324182 () Bool)

(assert (=> b!5456984 (=> res!2324182 e!3379401)))

(assert (=> b!5456984 (= res!2324182 (not ((_ is Cons!62031) (exprs!5169 (h!68480 zl!343)))))))

(declare-fun bm!398981 () Bool)

(assert (=> bm!398981 (= call!398961 (derivationStepZipperUp!657 lt!2228337 (h!68478 s!2326)))))

(declare-fun bm!398982 () Bool)

(declare-fun call!398936 () Bool)

(assert (=> bm!398982 (= call!399034 call!398936)))

(declare-fun bm!398983 () Bool)

(assert (=> bm!398983 (= call!398931 call!398951)))

(declare-fun setIsEmpty!35707 () Bool)

(assert (=> setIsEmpty!35707 setRes!35707))

(declare-fun bm!398984 () Bool)

(assert (=> bm!398984 (= call!398889 call!398939)))

(declare-fun bm!398985 () Bool)

(assert (=> bm!398985 (= call!398903 (lemmaConcatPreservesForall!252 lt!2228326 lt!2228195 (ite c!953211 lambda!288858 lambda!288860)))))

(declare-fun bm!398986 () Bool)

(assert (=> bm!398986 (= call!398869 call!398994)))

(declare-fun b!5456985 () Bool)

(declare-fun e!3379409 () Bool)

(assert (=> b!5456985 (= e!3379409 (= lt!2228347 call!398911))))

(declare-fun bm!398987 () Bool)

(assert (=> bm!398987 (= call!399019 call!398906)))

(declare-fun b!5456986 () Bool)

(assert (=> b!5456986 e!3379409))

(declare-fun res!2324202 () Bool)

(assert (=> b!5456986 (=> (not res!2324202) (not e!3379409))))

(assert (=> b!5456986 (= res!2324202 (= call!398890 call!398932))))

(declare-fun lt!2228282 () Unit!154880)

(assert (=> b!5456986 (= lt!2228282 call!398981)))

(assert (=> b!5456986 (= call!398958 call!398855)))

(declare-fun lt!2228261 () Unit!154880)

(assert (=> b!5456986 (= lt!2228261 call!398926)))

(assert (=> b!5456986 (not call!399034)))

(declare-fun lt!2228333 () Unit!154880)

(assert (=> b!5456986 (= lt!2228333 call!399052)))

(declare-fun Unit!154896 () Unit!154880)

(assert (=> b!5456986 (= e!3379391 Unit!154896)))

(declare-fun bm!398988 () Bool)

(declare-fun call!398917 () Bool)

(assert (=> bm!398988 (= call!398917 call!398885)))

(declare-fun bm!398989 () Bool)

(assert (=> bm!398989 (= call!398852 call!399016)))

(declare-fun bm!398990 () Bool)

(assert (=> bm!398990 (= call!399023 call!398992)))

(declare-fun lt!2228358 () List!62155)

(declare-fun bm!398991 () Bool)

(assert (=> bm!398991 (= call!398910 (generalisedConcat!954 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343))))))))))

(declare-fun bm!398992 () Bool)

(assert (=> bm!398992 (= call!398864 call!398975)))

(declare-fun bm!398993 () Bool)

(assert (=> bm!398993 (= call!398909 (findConcatSeparation!1810 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292)))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (ite c!953211 (regTwo!31082 r!7292) lt!2228350))) Nil!62030 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245)) (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))))))

(declare-fun b!5456987 () Bool)

(declare-fun res!2324173 () Bool)

(declare-fun e!3379412 () Bool)

(assert (=> b!5456987 (=> res!2324173 e!3379412)))

(declare-fun isEmpty!34017 (List!62155) Bool)

(assert (=> b!5456987 (= res!2324173 (isEmpty!34017 (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun b!5456988 () Bool)

(declare-fun res!2324189 () Bool)

(assert (=> b!5456988 (=> (not res!2324189) (not e!3379402))))

(declare-fun toList!9069 ((InoxSet Context!9338)) List!62156)

(assert (=> b!5456988 (= res!2324189 (= (toList!9069 z!1189) zl!343))))

(declare-fun bm!398994 () Bool)

(assert (=> bm!398994 (= call!399020 call!398969)))

(declare-fun forall!14588 (List!62155 Int) Bool)

(assert (=> b!5456989 (= e!3379380 (forall!14588 (t!375384 (exprs!5169 (h!68480 zl!343))) lambda!288869))))

(declare-fun lt!2228336 () (InoxSet Context!9338))

(assert (=> b!5456989 (= (matchR!7470 lt!2228324 s!2326) (matchZipper!1529 lt!2228336 s!2326))))

(declare-fun lt!2228241 () Unit!154880)

(assert (=> b!5456989 (= lt!2228241 (theoremZipperRegexEquiv!565 lt!2228336 lt!2228172 lt!2228324 s!2326))))

(declare-fun b!5456990 () Bool)

(assert (=> b!5456990 (= e!3379387 call!398924)))

(declare-fun b!5456991 () Bool)

(assert (=> b!5456991 (= e!3379385 (= lt!2228347 call!398917))))

(declare-fun bm!398995 () Bool)

(assert (=> bm!398995 (= call!398884 (matchZipper!1529 (ite c!953204 ((_ map or) lt!2228272 lt!2228166) (ite c!953207 ((_ map or) lt!2228212 lt!2228315) (ite c!953209 lt!2228160 (ite c!953205 z!1189 ((_ map or) lt!2228186 lt!2228166))))) (ite (or c!953204 c!953207) (t!375383 s!2326) (ite (or c!953209 c!953205) s!2326 (t!375383 s!2326)))))))

(declare-fun b!5456992 () Bool)

(declare-fun lt!2228273 () Bool)

(assert (=> b!5456992 (= e!3379400 (or (not lt!2228347) lt!2228273))))

(declare-fun bm!398996 () Bool)

(assert (=> bm!398996 (= call!398985 call!399044)))

(declare-fun bm!398997 () Bool)

(assert (=> bm!398997 (= call!398989 call!398921)))

(declare-fun bm!398998 () Bool)

(declare-fun call!398912 () Unit!154880)

(assert (=> bm!398998 (= call!398870 call!398912)))

(declare-fun bm!398999 () Bool)

(assert (=> bm!398999 (= call!399033 call!399005)))

(declare-fun bm!399000 () Bool)

(assert (=> bm!399000 (= call!399005 call!398972)))

(assert (=> b!5456993 e!3379398))

(declare-fun res!2324174 () Bool)

(assert (=> b!5456993 (=> (not res!2324174) (not e!3379398))))

(assert (=> b!5456993 (= res!2324174 call!398875)))

(declare-fun lt!2228355 () Unit!154880)

(assert (=> b!5456993 (= lt!2228355 call!399048)))

(assert (=> b!5456993 call!399033))

(declare-fun lt!2228237 () Unit!154880)

(assert (=> b!5456993 (= lt!2228237 call!398915)))

(assert (=> b!5456993 (= lt!2228198 call!399008)))

(assert (=> b!5456993 (= lt!2228198 call!398955)))

(assert (=> b!5456993 (= lt!2228256 call!398978)))

(assert (=> b!5456993 (= lt!2228227 call!398934)))

(declare-fun lt!2228167 () Unit!154880)

(assert (=> b!5456993 (= lt!2228167 call!398971)))

(assert (=> b!5456993 (= lt!2228291 call!398914)))

(assert (=> b!5456993 (= call!398852 call!398851)))

(declare-fun lt!2228222 () Unit!154880)

(assert (=> b!5456993 (= lt!2228222 call!398949)))

(assert (=> b!5456993 (= call!398963 call!398922)))

(declare-fun lt!2228277 () Unit!154880)

(assert (=> b!5456993 (= lt!2228277 call!399023)))

(assert (=> b!5456993 (= call!399020 call!398966)))

(assert (=> b!5456993 (= lt!2228352 call!399021)))

(declare-fun lt!2228305 () Unit!154880)

(assert (=> b!5456993 (= lt!2228305 call!398947)))

(assert (=> b!5456993 (= call!398923 call!398998)))

(declare-fun lt!2228184 () Unit!154880)

(assert (=> b!5456993 (= lt!2228184 call!398990)))

(assert (=> b!5456993 (= lt!2228245 (get!21392 lt!2228286))))

(assert (=> b!5456993 (= call!398967 call!398899)))

(declare-fun lt!2228255 () Unit!154880)

(assert (=> b!5456993 (= lt!2228255 call!398850)))

(assert (=> b!5456993 (= call!398944 call!398847)))

(assert (=> b!5456993 (= lt!2228286 call!399042)))

(declare-fun lt!2228290 () Unit!154880)

(assert (=> b!5456993 (= lt!2228290 call!398993)))

(assert (=> b!5456993 call!398948))

(declare-fun lt!2228341 () Unit!154880)

(assert (=> b!5456993 (= lt!2228341 call!398957)))

(assert (=> b!5456993 call!399031))

(assert (=> b!5456993 (= lt!2228240 (Concat!24130 lt!2228296 (regTwo!31082 r!7292)))))

(assert (=> b!5456993 (= lt!2228296 (Concat!24130 (reg!15614 (regOne!31082 r!7292)) lt!2228350))))

(declare-fun lt!2228331 () Unit!154880)

(assert (=> b!5456993 (= lt!2228331 call!398987)))

(assert (=> b!5456993 e!3379413))

(declare-fun res!2324193 () Bool)

(assert (=> b!5456993 (=> (not res!2324193) (not e!3379413))))

(assert (=> b!5456993 (= res!2324193 (matchR!7470 lt!2228280 lt!2228346))))

(declare-fun lt!2228254 () Unit!154880)

(assert (=> b!5456993 (= lt!2228254 call!398974)))

(assert (=> b!5456993 (= call!398887 call!398976)))

(declare-fun lt!2228271 () Unit!154880)

(assert (=> b!5456993 (= lt!2228271 call!398984)))

(assert (=> b!5456993 (= call!398869 call!398985)))

(declare-fun lt!2228244 () Unit!154880)

(assert (=> b!5456993 (= lt!2228244 call!398902)))

(assert (=> b!5456993 call!398983))

(assert (=> b!5456993 (= lt!2228346 call!398876)))

(assert (=> b!5456993 (= lt!2228308 call!399049)))

(declare-fun lt!2228217 () Unit!154880)

(assert (=> b!5456993 (= lt!2228217 call!398856)))

(declare-fun lt!2228316 () Unit!154880)

(assert (=> b!5456993 (= lt!2228316 call!398928)))

(assert (=> b!5456993 (= lt!2228230 call!398861)))

(assert (=> b!5456993 call!398907))

(declare-fun findConcatSeparationZippers!84 ((InoxSet Context!9338) (InoxSet Context!9338) List!62154 List!62154 List!62154) Option!15396)

(assert (=> b!5456993 (= lt!2228170 (findConcatSeparationZippers!84 lt!2228279 lt!2228173 Nil!62030 s!2326 s!2326))))

(declare-fun lt!2228262 () Unit!154880)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!84 ((InoxSet Context!9338) Context!9338 List!62154) Unit!154880)

(assert (=> b!5456993 (= lt!2228262 (lemmaConcatZipperMatchesStringThenFindConcatDefined!84 lt!2228279 lt!2228309 s!2326))))

(declare-fun lambda!288859 () Int)

(declare-fun map!14254 ((InoxSet Context!9338) Int) (InoxSet Context!9338))

(assert (=> b!5456993 (= (map!14254 lt!2228279 lambda!288859) (store ((as const (Array Context!9338 Bool)) false) (Context!9339 call!399049) true))))

(declare-fun lt!2228238 () Unit!154880)

(assert (=> b!5456993 (= lt!2228238 call!398903)))

(declare-fun lt!2228161 () Unit!154880)

(declare-fun lemmaMapOnSingletonSet!86 ((InoxSet Context!9338) Context!9338 Int) Unit!154880)

(assert (=> b!5456993 (= lt!2228161 (lemmaMapOnSingletonSet!86 lt!2228279 lt!2228345 lambda!288859))))

(declare-fun Unit!154897 () Unit!154880)

(assert (=> b!5456993 (= e!3379411 Unit!154897)))

(declare-fun bm!399001 () Bool)

(assert (=> bm!399001 (= call!398975 (matchRSpec!2388 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))))))

(declare-fun bm!399002 () Bool)

(assert (=> bm!399002 (= call!398991 (lemmaZipperConcatMatchesSameAsBothZippers!522 (ite c!953204 lt!2228204 lt!2228212) (ite c!953204 lt!2228166 lt!2228315) (t!375383 s!2326)))))

(declare-fun bm!399003 () Bool)

(assert (=> bm!399003 (= call!399028 call!398857)))

(declare-fun b!5456994 () Bool)

(assert (=> b!5456994 (= e!3379390 (= lt!2228347 call!399028))))

(declare-fun b!5456995 () Bool)

(declare-fun res!2324188 () Bool)

(assert (=> b!5456995 (=> (not res!2324188) (not e!3379402))))

(declare-fun unfocusZipper!1027 (List!62156) Regex!15285)

(assert (=> b!5456995 (= res!2324188 (= r!7292 (unfocusZipper!1027 zl!343)))))

(declare-fun bm!399004 () Bool)

(assert (=> bm!399004 (= call!398948 call!399027)))

(declare-fun b!5456996 () Bool)

(declare-fun Unit!154898 () Unit!154880)

(assert (=> b!5456996 (= e!3379377 Unit!154898)))

(declare-fun bm!399005 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!100 (Context!9338 Context!9338 List!62154 List!62154) Unit!154880)

(assert (=> bm!399005 (= call!398928 (lemmaConcatenateContextMatchesConcatOfStrings!100 lt!2228345 lt!2228309 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228230)) (ite c!953211 lt!2228180 (_2!35787 lt!2228230))))))

(declare-fun b!5456997 () Bool)

(assert (=> b!5456997 (= e!3379402 (not e!3379401))))

(declare-fun res!2324184 () Bool)

(assert (=> b!5456997 (=> res!2324184 e!3379401)))

(assert (=> b!5456997 (= res!2324184 (not ((_ is Cons!62032) zl!343)))))

(assert (=> b!5456997 (= lt!2228347 lt!2228273)))

(assert (=> b!5456997 (= lt!2228273 (matchRSpec!2388 r!7292 s!2326))))

(assert (=> b!5456997 (= lt!2228347 (matchR!7470 r!7292 s!2326))))

(declare-fun lt!2228268 () Unit!154880)

(assert (=> b!5456997 (= lt!2228268 (mainMatchTheorem!2388 r!7292 s!2326))))

(declare-fun b!5456998 () Bool)

(declare-fun tp!1501933 () Bool)

(declare-fun tp!1501935 () Bool)

(assert (=> b!5456998 (= e!3379373 (and tp!1501933 tp!1501935))))

(declare-fun bm!399006 () Bool)

(assert (=> bm!399006 (= call!399050 (mainMatchTheorem!2388 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (regOne!31082 r!7292))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))))))

(declare-fun bm!399007 () Bool)

(assert (=> bm!399007 (= call!398983 call!398936)))

(declare-fun bm!399008 () Bool)

(declare-fun derivationStepZipperDown!733 (Regex!15285 Context!9338 C!30840) (InoxSet Context!9338))

(assert (=> bm!399008 (= call!398965 (derivationStepZipperDown!733 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (ite c!953204 lt!2228337 lt!2228338) (h!68478 s!2326)))))

(declare-fun bm!399009 () Bool)

(assert (=> bm!399009 (= call!398895 call!398848)))

(declare-fun b!5456999 () Bool)

(assert (=> b!5456999 (= e!3379373 tp_is_empty!39823)))

(declare-fun b!5457000 () Bool)

(assert (=> b!5457000 (= e!3379395 e!3379382)))

(assert (=> b!5457000 (= c!953209 ((_ is Concat!24130) (regOne!31082 r!7292)))))

(declare-fun bm!399010 () Bool)

(assert (=> bm!399010 (= call!398921 call!398986)))

(declare-fun b!5457001 () Bool)

(declare-fun e!3379397 () Bool)

(assert (=> b!5457001 (= e!3379397 (= lt!2228347 call!398857))))

(declare-fun bm!399011 () Bool)

(assert (=> bm!399011 (= call!398936 call!398854)))

(declare-fun b!5457002 () Bool)

(declare-fun e!3379381 () Bool)

(assert (=> b!5457002 (= e!3379381 call!398889)))

(declare-fun bm!399012 () Bool)

(assert (=> bm!399012 (= call!398863 call!398905)))

(declare-fun bm!399013 () Bool)

(assert (=> bm!399013 (= call!399013 call!398973)))

(declare-fun b!5457003 () Bool)

(declare-fun res!2324190 () Bool)

(assert (=> b!5457003 (=> res!2324190 e!3379401)))

(declare-fun generalisedUnion!1214 (List!62155) Regex!15285)

(declare-fun unfocusZipperList!727 (List!62156) List!62155)

(assert (=> b!5457003 (= res!2324190 (not (= r!7292 (generalisedUnion!1214 (unfocusZipperList!727 zl!343)))))))

(declare-fun bm!399014 () Bool)

(assert (=> bm!399014 (= call!398934 (++!13649 (ite c!953206 (_1!35787 lt!2228291) Nil!62030) (ite c!953206 (_2!35787 lt!2228291) s!2326)))))

(declare-fun bm!399015 () Bool)

(assert (=> bm!399015 (= call!398960 call!398898)))

(declare-fun bm!399016 () Bool)

(assert (=> bm!399016 (= call!398872 call!399050)))

(assert (=> b!5457004 (= e!3379412 e!3379383)))

(declare-fun res!2324191 () Bool)

(assert (=> b!5457004 (=> res!2324191 e!3379383)))

(declare-fun derivationStepZipper!1504 ((InoxSet Context!9338) C!30840) (InoxSet Context!9338))

(assert (=> b!5457004 (= res!2324191 (not (= lt!2228166 (derivationStepZipper!1504 lt!2228336 (h!68478 s!2326)))))))

(assert (=> b!5457004 (= (flatMap!1012 lt!2228336 lambda!288844) (derivationStepZipperUp!657 lt!2228337 (h!68478 s!2326)))))

(declare-fun lt!2228235 () Unit!154880)

(assert (=> b!5457004 (= lt!2228235 (lemmaFlatMapOnSingletonSet!544 lt!2228336 lt!2228337 lambda!288844))))

(assert (=> b!5457004 (= lt!2228336 (store ((as const (Array Context!9338 Bool)) false) lt!2228337 true))))

(declare-fun lt!2228165 () Unit!154880)

(assert (=> b!5457004 (= lt!2228165 e!3379414)))

(assert (=> b!5457004 (= c!953203 (and ((_ is ElementMatch!15285) (regOne!31082 r!7292)) (= (c!953215 (regOne!31082 r!7292)) (h!68478 s!2326))))))

(declare-fun lt!2228220 () Unit!154880)

(assert (=> b!5457004 (= lt!2228220 e!3379406)))

(declare-fun c!953208 () Bool)

(assert (=> b!5457004 (= c!953208 (nullable!5454 (h!68479 (exprs!5169 (h!68480 zl!343)))))))

(assert (=> b!5457004 (= (flatMap!1012 z!1189 lambda!288844) (derivationStepZipperUp!657 (h!68480 zl!343) (h!68478 s!2326)))))

(declare-fun lt!2228310 () Unit!154880)

(assert (=> b!5457004 (= lt!2228310 (lemmaFlatMapOnSingletonSet!544 z!1189 (h!68480 zl!343) lambda!288844))))

(assert (=> b!5457004 (= lt!2228166 (derivationStepZipperUp!657 lt!2228337 (h!68478 s!2326)))))

(assert (=> b!5457004 (= lt!2228186 (derivationStepZipperDown!733 (h!68479 (exprs!5169 (h!68480 zl!343))) lt!2228337 (h!68478 s!2326)))))

(assert (=> b!5457004 (= lt!2228337 (Context!9339 (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun lt!2228298 () (InoxSet Context!9338))

(assert (=> b!5457004 (= lt!2228298 (derivationStepZipperUp!657 (Context!9339 (Cons!62031 (h!68479 (exprs!5169 (h!68480 zl!343))) (t!375384 (exprs!5169 (h!68480 zl!343))))) (h!68478 s!2326)))))

(declare-fun bm!399017 () Bool)

(assert (=> bm!399017 (= call!399046 call!398904)))

(declare-fun bm!399018 () Bool)

(assert (=> bm!399018 (= call!398916 call!399003)))

(declare-fun bm!399019 () Bool)

(assert (=> bm!399019 (= call!399016 call!398853)))

(declare-fun bm!399020 () Bool)

(assert (=> bm!399020 (= call!399025 call!398892)))

(declare-fun bm!399021 () Bool)

(assert (=> bm!399021 (= call!399032 (Exists!2466 (ite c!953207 lambda!288848 (ite c!953211 lambda!288855 (ite c!953206 lambda!288861 lambda!288867)))))))

(declare-fun bm!399022 () Bool)

(assert (=> bm!399022 (= call!398947 call!398870)))

(declare-fun bm!399023 () Bool)

(assert (=> bm!399023 (= call!398963 call!399047)))

(declare-fun bm!399024 () Bool)

(assert (=> bm!399024 (= call!398866 call!398995)))

(declare-fun bm!399025 () Bool)

(assert (=> bm!399025 (= call!399015 (lemmaZipperConcatMatchesSameAsBothZippers!522 (ite c!953204 lt!2228204 (ite c!953207 lt!2228212 lt!2228186)) (ite c!953204 lt!2228272 (ite c!953207 lt!2228274 lt!2228166)) (t!375383 s!2326)))))

(declare-fun b!5457005 () Bool)

(assert (=> b!5457005 (= e!3379414 e!3379407)))

(assert (=> b!5457005 (= c!953204 ((_ is Union!15285) (regOne!31082 r!7292)))))

(declare-fun bm!399026 () Bool)

(assert (=> bm!399026 (= call!398879 call!398946)))

(declare-fun bm!399027 () Bool)

(assert (=> bm!399027 (= call!398912 (lemmaFindConcatSeparationEquivalentToExists!1574 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))))))

(declare-fun bm!399028 () Bool)

(assert (=> bm!399028 (= call!398959 (Exists!2466 (ite c!953207 lambda!288847 (ite c!953209 lambda!288849 (ite c!953211 lambda!288857 lambda!288863)))))))

(declare-fun bm!399029 () Bool)

(assert (=> bm!399029 (= call!399043 call!399012)))

(declare-fun b!5457006 () Bool)

(declare-fun Unit!154899 () Unit!154880)

(assert (=> b!5457006 (= e!3379374 Unit!154899)))

(assert (=> b!5457006 (= lt!2228242 (store ((as const (Array Context!9338 Bool)) false) lt!2228337 true))))

(declare-fun lt!2228174 () Unit!154880)

(assert (=> b!5457006 (= lt!2228174 call!399006)))

(assert (=> b!5457006 (= call!398938 call!398961)))

(assert (=> b!5457006 (= lt!2228283 call!398867)))

(declare-fun lt!2228270 () Unit!154880)

(assert (=> b!5457006 (= lt!2228270 call!398873)))

(declare-fun res!2324203 () Bool)

(assert (=> b!5457006 (= res!2324203 (= call!399036 call!398858))))

(assert (=> b!5457006 (=> (not res!2324203) (not e!3379394))))

(assert (=> b!5457006 e!3379394))

(declare-fun bm!399030 () Bool)

(declare-fun call!398918 () Regex!15285)

(assert (=> bm!399030 (= call!398918 call!398910)))

(declare-fun bm!399031 () Bool)

(assert (=> bm!399031 (= call!398898 call!398918)))

(declare-fun bm!399032 () Bool)

(assert (=> bm!399032 (= call!398902 call!398860)))

(declare-fun bm!399033 () Bool)

(assert (=> bm!399033 (= call!398990 call!398968)))

(declare-fun b!5457007 () Bool)

(declare-fun res!2324192 () Bool)

(assert (=> b!5457007 (=> res!2324192 e!3379401)))

(assert (=> b!5457007 (= res!2324192 (or ((_ is EmptyExpr!15285) r!7292) ((_ is EmptyLang!15285) r!7292) ((_ is ElementMatch!15285) r!7292) ((_ is Union!15285) r!7292) (not ((_ is Concat!24130) r!7292))))))

(declare-fun Unit!154900 () Unit!154880)

(assert (=> b!5457008 (= e!3379395 Unit!154900)))

(assert (=> b!5457008 (= lt!2228358 (Cons!62031 (regTwo!31082 (regOne!31082 r!7292)) (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(assert (=> b!5457008 (= lt!2228338 (Context!9339 lt!2228358))))

(assert (=> b!5457008 (= lt!2228212 call!398965)))

(assert (=> b!5457008 (= lt!2228274 call!398919)))

(declare-fun lt!2228294 () Unit!154880)

(assert (=> b!5457008 (= lt!2228294 call!398878)))

(declare-fun lt!2228299 () Bool)

(assert (=> b!5457008 (= lt!2228299 call!398892)))

(declare-fun res!2324180 () Bool)

(assert (=> b!5457008 (= res!2324180 lt!2228299)))

(assert (=> b!5457008 (=> res!2324180 e!3379381)))

(assert (=> b!5457008 (= call!398854 e!3379381)))

(assert (=> b!5457008 (= lt!2228344 (Cons!62031 (regOne!31082 (regOne!31082 r!7292)) lt!2228358))))

(assert (=> b!5457008 (= lt!2228253 (Context!9339 lt!2228344))))

(assert (=> b!5457008 (= lt!2228313 (store ((as const (Array Context!9338 Bool)) false) lt!2228253 true))))

(assert (=> b!5457008 (= lt!2228252 (store ((as const (Array Context!9338 Bool)) false) lt!2228338 true))))

(declare-fun lt!2228349 () (InoxSet Context!9338))

(assert (=> b!5457008 (= lt!2228349 call!399013)))

(declare-fun lt!2228211 () Unit!154880)

(assert (=> b!5457008 (= lt!2228211 call!398906)))

(assert (=> b!5457008 (= call!399046 call!399013)))

(assert (=> b!5457008 (= lt!2228315 call!398905)))

(declare-fun lt!2228209 () Unit!154880)

(assert (=> b!5457008 (= lt!2228209 call!398871)))

(assert (=> b!5457008 (= call!399029 call!398905)))

(declare-fun lt!2228249 () Unit!154880)

(assert (=> b!5457008 (= lt!2228249 call!398991)))

(declare-fun res!2324195 () Bool)

(assert (=> b!5457008 (= res!2324195 lt!2228299)))

(assert (=> b!5457008 (=> res!2324195 e!3379375)))

(assert (=> b!5457008 (= call!398951 e!3379375)))

(assert (=> b!5457008 (= lt!2228206 call!398895)))

(declare-fun lt!2228236 () Unit!154880)

(assert (=> b!5457008 (= lt!2228236 call!398860)))

(declare-fun lt!2228334 () Bool)

(assert (=> b!5457008 (= lt!2228334 call!398946)))

(assert (=> b!5457008 (= lt!2228334 call!398882)))

(assert (=> b!5457008 (= lt!2228179 call!398918)))

(declare-fun lt!2228169 () Unit!154880)

(assert (=> b!5457008 (= lt!2228169 call!398986)))

(declare-fun lt!2228278 () Bool)

(assert (=> b!5457008 (= lt!2228278 call!399040)))

(assert (=> b!5457008 (= lt!2228278 call!398917)))

(declare-fun lt!2228342 () Unit!154880)

(assert (=> b!5457008 (= lt!2228342 call!398872)))

(assert (=> b!5457008 (= lt!2228334 call!398897)))

(declare-fun lt!2228243 () Unit!154880)

(assert (=> b!5457008 (= lt!2228243 call!399038)))

(assert (=> b!5457008 (= call!398944 call!398853)))

(declare-fun lt!2228303 () Unit!154880)

(assert (=> b!5457008 (= lt!2228303 call!398980)))

(assert (=> b!5457008 (= call!398930 call!398970)))

(declare-fun lt!2228292 () Unit!154880)

(assert (=> b!5457008 (= lt!2228292 call!398865)))

(assert (=> b!5457008 (= lt!2228278 call!398864)))

(assert (=> b!5457008 (= lt!2228361 call!398913)))

(declare-fun lt!2228300 () Unit!154880)

(assert (=> b!5457008 (= lt!2228300 call!398912)))

(assert (=> b!5457008 (= call!398927 call!398954)))

(declare-fun lt!2228158 () Unit!154880)

(assert (=> b!5457008 (= lt!2228158 call!398933)))

(assert (=> b!5457008 (= call!398959 call!399032)))

(declare-fun lt!2228332 () Unit!154880)

(assert (=> b!5457008 (= lt!2228332 call!399009)))

(declare-fun res!2324187 () Bool)

(assert (=> b!5457008 (= res!2324187 (= call!399043 call!398916))))

(assert (=> b!5457008 (=> (not res!2324187) (not e!3379397))))

(assert (=> b!5457008 e!3379397))

(assert (=> b!5457009 (= e!3379401 e!3379412)))

(declare-fun res!2324186 () Bool)

(assert (=> b!5457009 (=> res!2324186 e!3379412)))

(declare-fun lt!2228325 () Bool)

(assert (=> b!5457009 (= res!2324186 (or (not (= lt!2228347 lt!2228325)) ((_ is Nil!62030) s!2326)))))

(assert (=> b!5457009 (= (Exists!2466 lambda!288842) (Exists!2466 lambda!288843))))

(declare-fun lt!2228314 () Unit!154880)

(assert (=> b!5457009 (= lt!2228314 (lemmaExistCutMatchRandMatchRSpecEquivalent!1120 (regOne!31082 r!7292) (regTwo!31082 r!7292) s!2326))))

(assert (=> b!5457009 (= lt!2228325 (Exists!2466 lambda!288842))))

(assert (=> b!5457009 (= lt!2228325 (isDefined!12099 (findConcatSeparation!1810 (regOne!31082 r!7292) (regTwo!31082 r!7292) Nil!62030 s!2326 s!2326)))))

(declare-fun lt!2228275 () Unit!154880)

(assert (=> b!5457009 (= lt!2228275 (lemmaFindConcatSeparationEquivalentToExists!1574 (regOne!31082 r!7292) (regTwo!31082 r!7292) s!2326))))

(declare-fun bm!399034 () Bool)

(assert (=> bm!399034 (= call!398919 call!398935)))

(declare-fun b!5457010 () Bool)

(declare-fun Unit!154901 () Unit!154880)

(assert (=> b!5457010 (= e!3379399 Unit!154901)))

(declare-fun bm!399035 () Bool)

(assert (=> bm!399035 (= call!398982 call!398970)))

(declare-fun bm!399036 () Bool)

(assert (=> bm!399036 (= call!399010 call!398874)))

(declare-fun bm!399037 () Bool)

(assert (=> bm!399037 (= call!398913 call!398881)))

(declare-fun bm!399038 () Bool)

(assert (=> bm!399038 (= call!398911 call!399025)))

(declare-fun bm!399039 () Bool)

(assert (=> bm!399039 (= call!399004 call!398956)))

(declare-fun bm!399040 () Bool)

(assert (=> bm!399040 (= call!398976 call!398859)))

(declare-fun bm!399041 () Bool)

(assert (=> bm!399041 (= call!399026 call!398989)))

(declare-fun bm!399042 () Bool)

(assert (=> bm!399042 (= call!398930 (Exists!2466 (ite c!953207 lambda!288845 (ite c!953209 lambda!288851 (ite c!953211 lambda!288856 lambda!288865)))))))

(declare-fun bm!399043 () Bool)

(assert (=> bm!399043 (= call!398993 call!398997)))

(declare-fun bm!399044 () Bool)

(assert (=> bm!399044 (= call!398925 (lemmaFlatMapOnSingletonSet!544 (ite c!953205 lt!2228279 lt!2228191) (ite c!953205 lt!2228345 lt!2228337) (ite c!953205 lambda!288844 lambda!288844)))))

(declare-fun bm!399045 () Bool)

(declare-fun lemmaConcatAssociativity!2862 (List!62154 List!62154 List!62154) Unit!154880)

(assert (=> bm!399045 (= call!398971 (lemmaConcatAssociativity!2862 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228245))))))

(declare-fun bm!399046 () Bool)

(declare-fun lemmaStarApp!80 (Regex!15285 List!62154 List!62154) Unit!154880)

(assert (=> bm!399046 (= call!398915 (lemmaStarApp!80 (reg!15614 (regOne!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291))))))

(declare-fun bm!399047 () Bool)

(assert (=> bm!399047 (= call!398935 (derivationStepZipperDown!733 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (ite (or c!953204 c!953207) lt!2228337 (ite c!953209 (Context!9339 lt!2228176) lt!2228309)) (h!68478 s!2326)))))

(assert (= (and start!571598 res!2324196) b!5456988))

(assert (= (and b!5456988 res!2324189) b!5456995))

(assert (= (and b!5456995 res!2324188) b!5456997))

(assert (= (and b!5456997 (not res!2324184)) b!5456950))

(assert (= (and b!5456950 (not res!2324177)) b!5456968))

(assert (= (and b!5456968 (not res!2324175)) b!5456984))

(assert (= (and b!5456984 (not res!2324182)) b!5457003))

(assert (= (and b!5457003 (not res!2324190)) b!5457007))

(assert (= (and b!5457007 (not res!2324192)) b!5457009))

(assert (= (and b!5457009 (not res!2324186)) b!5456987))

(assert (= (and b!5456987 (not res!2324173)) b!5457004))

(assert (= (and b!5457004 c!953208) b!5456959))

(assert (= (and b!5457004 (not c!953208)) b!5456974))

(assert (= (and b!5456959 (not res!2324179)) b!5456946))

(assert (= (and b!5457004 c!953203) b!5456947))

(assert (= (and b!5457004 (not c!953203)) b!5457005))

(assert (= (and b!5457005 c!953204) b!5456965))

(assert (= (and b!5457005 (not c!953204)) b!5456957))

(assert (= (and b!5456965 (not res!2324200)) b!5456990))

(assert (= (and b!5456965 c!953202) b!5456981))

(assert (= (and b!5456965 (not c!953202)) b!5456975))

(assert (= (and b!5456981 (not res!2324176)) b!5456983))

(assert (= (and b!5456965 c!953214) b!5456958))

(assert (= (and b!5456965 (not c!953214)) b!5457010))

(assert (= (and b!5456958 (not res!2324199)) b!5456951))

(assert (= (and b!5456965 res!2324197) b!5456991))

(assert (= (and b!5456957 res!2324204) b!5456976))

(assert (= (and b!5456957 c!953207) b!5457008))

(assert (= (and b!5456957 (not c!953207)) b!5457000))

(assert (= (and b!5457008 (not res!2324180)) b!5457002))

(assert (= (and b!5457008 (not res!2324195)) b!5456971))

(assert (= (and b!5457008 res!2324187) b!5457001))

(assert (= (and b!5457000 c!953209) b!5456961))

(assert (= (and b!5457000 (not c!953209)) b!5456949))

(assert (= (and b!5456961 res!2324201) b!5456994))

(assert (= (and b!5456949 c!953205) b!5456977))

(assert (= (and b!5456949 (not c!953205)) b!5456962))

(assert (= (and b!5456977 res!2324198) b!5456992))

(assert (= (and b!5456977 c!953211) b!5456966))

(assert (= (and b!5456977 (not c!953211)) b!5456952))

(assert (= (and b!5456966 c!953210) b!5457006))

(assert (= (and b!5456966 (not c!953210)) b!5456979))

(assert (= (and b!5457006 res!2324203) b!5456973))

(assert (= (and b!5456979 res!2324181) b!5456953))

(assert (= (or b!5457006 b!5456979) bm!398939))

(assert (= (or b!5457006 b!5456979) bm!398881))

(assert (= (or b!5457006 b!5456979) bm!398934))

(assert (= (or b!5456973 b!5456979) bm!398944))

(assert (= (and b!5456952 c!953212) b!5456967))

(assert (= (and b!5456952 (not c!953212)) b!5456996))

(assert (= (and b!5456967 c!953206) b!5456993))

(assert (= (and b!5456967 (not c!953206)) b!5456970))

(assert (= (and b!5456993 res!2324193) b!5456972))

(assert (= (and b!5456993 res!2324174) b!5456945))

(assert (= (and b!5456970 res!2324185) b!5456978))

(assert (= (or b!5456993 b!5456970) bm!398857))

(assert (= (or b!5456993 b!5456970) bm!398947))

(assert (= (or b!5456993 b!5456970) bm!398986))

(assert (= (or b!5456993 b!5456970) bm!399014))

(assert (= (or b!5456993 b!5456970) bm!398858))

(assert (= (or b!5456993 b!5456970) bm!398902))

(assert (= (or b!5456993 b!5456970) bm!399040))

(assert (= (or b!5456993 b!5456970) bm!399033))

(assert (= (or b!5456993 b!5456970) bm!398891))

(assert (= (or b!5456993 b!5456970) bm!398948))

(assert (= (or b!5456993 b!5456970) bm!398974))

(assert (= (or b!5456993 b!5456970) bm!399043))

(assert (= (or b!5456993 b!5456970) bm!398870))

(assert (= (or b!5456993 b!5456970) bm!398850))

(assert (= (or b!5456993 b!5456970) bm!398929))

(assert (= (or b!5456993 b!5456970) bm!398921))

(assert (= (or b!5456993 b!5456970) bm!398843))

(assert (= (or b!5456993 b!5456970) bm!398999))

(assert (= (or b!5456993 b!5456970) bm!398973))

(assert (= (or b!5456966 bm!398857) bm!398901))

(assert (= (or b!5456979 bm!398870) bm!398883))

(assert (= (or b!5456979 b!5456993) bm!398854))

(assert (= (or b!5456979 b!5456993) bm!398913))

(assert (= (or b!5456979 bm!398850) bm!398916))

(assert (= (or b!5457006 b!5456970) bm!398909))

(assert (= (or bm!398881 bm!398902) bm!399041))

(assert (= (or b!5456979 b!5456993) bm!398985))

(assert (= (or b!5456979 b!5456993) bm!398954))

(assert (= (or bm!398944 bm!399040) bm!398853))

(assert (= (or b!5456979 b!5456993) bm!398990))

(assert (= (or b!5456979 b!5456993) bm!398892))

(assert (= (or b!5456979 b!5456993) bm!398904))

(assert (= (or b!5456979 bm!398921) bm!398977))

(assert (= (or b!5456979 bm!398929) bm!398979))

(assert (= (or b!5456979 bm!398974) bm!398912))

(assert (= (or b!5456966 b!5456952) bm!398849))

(assert (= (or b!5456979 b!5456993) bm!399046))

(assert (= (or b!5456966 b!5456993) bm!398994))

(assert (= (or b!5456979 bm!398858) bm!398931))

(assert (= (or b!5456966 bm!399043) bm!398896))

(assert (= (or b!5456979 bm!398973) bm!398963))

(assert (= (or b!5456979 bm!399033) bm!398978))

(assert (= (or b!5456979 b!5456993) bm!398989))

(assert (= (or b!5456966 bm!398891) bm!398855))

(assert (= (or b!5456966 b!5456993) bm!398971))

(assert (= (or b!5456966 b!5456993) bm!398864))

(assert (= (or b!5456966 bm!398843) bm!398908))

(assert (= (or b!5456979 b!5456993) bm!398958))

(assert (= (or b!5457006 b!5456970) bm!398981))

(assert (= (or b!5456979 b!5456993) bm!398970))

(assert (= (or b!5456979 b!5456993) bm!399032))

(assert (= (or b!5456979 b!5456993) bm!398996))

(assert (= (or bm!398934 b!5456967) bm!399024))

(assert (= (or b!5456966 bm!398947) bm!399036))

(assert (= (or b!5456979 b!5456993) bm!398865))

(assert (= (or b!5456979 b!5456993) bm!398911))

(assert (= (or b!5456979 bm!398999) bm!399000))

(assert (= (or b!5456979 b!5456993) bm!398873))

(assert (= (or b!5456979 b!5456993) bm!399005))

(assert (= (or b!5457006 b!5456970) bm!398842))

(assert (= (or b!5456979 b!5456993) bm!399023))

(assert (= (or b!5456979 b!5456993) bm!399045))

(assert (= (or b!5456979 b!5456993) bm!398875))

(assert (= (or bm!398939 bm!398986) bm!398846))

(assert (= (or b!5456979 b!5456993) bm!399022))

(assert (= (or b!5457006 b!5456970) bm!398884))

(assert (= (or b!5456979 b!5456993) bm!398938))

(assert (= (or b!5456979 b!5456993) bm!399007))

(assert (= (and b!5456962 c!953213) b!5456955))

(assert (= (and b!5456962 (not c!953213)) b!5456986))

(assert (= (and b!5456955 res!2324178) b!5456964))

(assert (= (and b!5456986 res!2324202) b!5456985))

(assert (= (or b!5456955 b!5456986) bm!398952))

(assert (= (or b!5456955 b!5456986) bm!398866))

(assert (= (or b!5456955 b!5456986) bm!398937))

(assert (= (or b!5456955 b!5456986) bm!398889))

(assert (= (or b!5456955 b!5456986) bm!398903))

(assert (= (or b!5456955 b!5456985) bm!399038))

(assert (= (or b!5456964 b!5456986) bm!398982))

(assert (= (or b!5456955 b!5456986) bm!398926))

(assert (= (or b!5456955 b!5456986) bm!398919))

(assert (= (or bm!398849 b!5456977 b!5456955) bm!398862))

(assert (= (or bm!398904 bm!398903) bm!398847))

(assert (= (or bm!399007 bm!398982) bm!399011))

(assert (= (or bm!398978 bm!398926) bm!398899))

(assert (= (or bm!399024 b!5456955) bm!398861))

(assert (= (or b!5456977 b!5456955) bm!399012))

(assert (= (or b!5456977 bm!398919) bm!399039))

(assert (= (or bm!398996 b!5456955) bm!398910))

(assert (= (or bm!399041 b!5456955) bm!398997))

(assert (= (or bm!398970 bm!398889) bm!398932))

(assert (= (or bm!398884 b!5456955) bm!399015))

(assert (= (or bm!399000 b!5456955) bm!398876))

(assert (= (or bm!398916 bm!398937) bm!398880))

(assert (= (or b!5456977 b!5456955) bm!399044))

(assert (= (or b!5456993 bm!398952) bm!399004))

(assert (= (or bm!398909 b!5456955) bm!398868))

(assert (= (or bm!398853 bm!399038) bm!399020))

(assert (= (or b!5456961 bm!398971) bm!398955))

(assert (= (or b!5456961 bm!398901) bm!399035))

(assert (= (or b!5456961 bm!398847) bm!399026))

(assert (= (or b!5456961 bm!399023) bm!398967))

(assert (= (or b!5456961 bm!398931) bm!398897))

(assert (= (or b!5456961 bm!398862) bm!398983))

(assert (= (or b!5456961 bm!398896) bm!398841))

(assert (= (or b!5456961 b!5456977) bm!398987))

(assert (= (or b!5456961 bm!399022) bm!398998))

(assert (= (or b!5456961 bm!398899) bm!398956))

(assert (= (or b!5456961 bm!398846) bm!398936))

(assert (= (or b!5456961 bm!399015) bm!399031))

(assert (= (or b!5456961 bm!399039) bm!398962))

(assert (= (or b!5456961 b!5456977) bm!398924))

(assert (= (or b!5456961 bm!398997) bm!399010))

(assert (= (or b!5456961 bm!398873) bm!398940))

(assert (= (or b!5456994 bm!398861) bm!399003))

(assert (= (or b!5456961 bm!398989) bm!399019))

(assert (= (or b!5456961 b!5456993) bm!398925))

(assert (= (or b!5456961 bm!399036) bm!398918))

(assert (= (or b!5456961 bm!398883) bm!398975))

(assert (= (or b!5456961 bm!398908) bm!398966))

(assert (= (or b!5456961 b!5456977) bm!398905))

(assert (= (or b!5456961 b!5456977) bm!398907))

(assert (= (or b!5456961 bm!398990) bm!398941))

(assert (= (or b!5456961 bm!398880) bm!398845))

(assert (= (or b!5456961 b!5456977) bm!398960))

(assert (= (or b!5456961 b!5456977) bm!398933))

(assert (= (or b!5456961 bm!398876) bm!398874))

(assert (= (or b!5456961 bm!398994) bm!398927))

(assert (= (or b!5456961 bm!398963) bm!398871))

(assert (= (or b!5457008 bm!399035) bm!398917))

(assert (= (or b!5457008 bm!398998) bm!399027))

(assert (= (or b!5457008 b!5456977) bm!399013))

(assert (= (or b!5457008 bm!399026) bm!398935))

(assert (= (or b!5457008 bm!398966) bm!398961))

(assert (= (or b!5457008 bm!398897) bm!398867))

(assert (= (or b!5457008 bm!398987) bm!398879))

(assert (= (or b!5457008 bm!398962) bm!398885))

(assert (= (or b!5457008 bm!398941) bm!398895))

(assert (= (or b!5457008 b!5456955) bm!398950))

(assert (= (or b!5457008 bm!399032) bm!398887))

(assert (= (or b!5457008 bm!398925) bm!398928))

(assert (= (or b!5457008 bm!398924) bm!399029))

(assert (= (or b!5457008 bm!398975) bm!398898))

(assert (= (or b!5457008 bm!399020) bm!398943))

(assert (= (or b!5457008 bm!398955) bm!398993))

(assert (= (or b!5457008 bm!399010) bm!398945))

(assert (= (or b!5457008 b!5456977) bm!398930))

(assert (= (or b!5457008 b!5456961) bm!399037))

(assert (= (or b!5457002 bm!398910) bm!398984))

(assert (= (or b!5457008 bm!398841) bm!398969))

(assert (= (or b!5457008 bm!398907) bm!399017))

(assert (= (or b!5457008 bm!399011) bm!398848))

(assert (= (or b!5457008 bm!398960) bm!399034))

(assert (= (or b!5457008 bm!399031) bm!399030))

(assert (= (or b!5457008 bm!399012) bm!398920))

(assert (= (or b!5457008 bm!398845) bm!398992))

(assert (= (or b!5457008 bm!398936) bm!399018))

(assert (= (or b!5457008 bm!398983) bm!398959))

(assert (= (or b!5457008 b!5456977) bm!398980))

(assert (= (or b!5457008 bm!398956) bm!399016))

(assert (= (or b!5457008 bm!398874) bm!398893))

(assert (= (or b!5457008 bm!398967) bm!399028))

(assert (= (or b!5457008 bm!398905) bm!398976))

(assert (= (or b!5457008 bm!398979) bm!399021))

(assert (= (or b!5457008 bm!398940) bm!399042))

(assert (= (or b!5457008 bm!399019) bm!398856))

(assert (= (or b!5457001 bm!399003) bm!398949))

(assert (= (or b!5457008 b!5456961) bm!399009))

(assert (= (or b!5457008 b!5456993) bm!398882))

(assert (= (or b!5457008 bm!398927) bm!398914))

(assert (= (or b!5456965 bm!398949) bm!398957))

(assert (= (or b!5456965 bm!399017) bm!398860))

(assert (= (or b!5456965 bm!398935) bm!398951))

(assert (= (or b!5456981 b!5457008) bm!399002))

(assert (= (or b!5456965 bm!399034) bm!399047))

(assert (= (or b!5456965 bm!399013) bm!398851))

(assert (= (or b!5456965 b!5457008) bm!399008))

(assert (= (or b!5456958 b!5456990 bm!398848) bm!398869))

(assert (= (or b!5456965 bm!398930) bm!398972))

(assert (= (or b!5456965 bm!399018) bm!398863))

(assert (= (or b!5456965 bm!399016) bm!399006))

(assert (= (or b!5456965 bm!399037) bm!398852))

(assert (= (or b!5456991 b!5457008) bm!398988))

(assert (= (or b!5456965 bm!399009) bm!398886))

(assert (= (or b!5456965 bm!398887) bm!398922))

(assert (= (or b!5456965 bm!398885) bm!398877))

(assert (= (or b!5456965 bm!398980) bm!398942))

(assert (= (or b!5456965 bm!398945) bm!398946))

(assert (= (or b!5456965 b!5456993) bm!398964))

(assert (= (or b!5456965 bm!399029) bm!398888))

(assert (= (or b!5456981 b!5456971) bm!398900))

(assert (= (or b!5456965 bm!399004) bm!398906))

(assert (= (or b!5456965 bm!398992) bm!399001))

(assert (= (or b!5456965 bm!398976) bm!398878))

(assert (= (or b!5456965 b!5456976) bm!398923))

(assert (= (or b!5456965 bm!398893) bm!398968))

(assert (= (or b!5456965 b!5457008) bm!398965))

(assert (= (or b!5456951 b!5456983 bm!398984) bm!398872))

(assert (= (or b!5456965 bm!398879) bm!398844))

(assert (= (or b!5456965 bm!398943) bm!398890))

(assert (= (or b!5456958 bm!398959) bm!398995))

(assert (= (or b!5456965 bm!398950) bm!399025))

(assert (= (or b!5456965 bm!398920) bm!398915))

(assert (= (or b!5456947 bm!398863) bm!398859))

(assert (= (or b!5456947 bm!399030) bm!398991))

(assert (= (or b!5456947 bm!398922) bm!398894))

(assert (= (or b!5456947 bm!398988) bm!398953))

(assert (= (and b!5457004 (not res!2324191)) b!5456948))

(assert (= (and b!5456948 (not res!2324183)) b!5456963))

(assert (= (and b!5456963 (not res!2324194)) b!5456989))

(assert (= (and start!571598 ((_ is ElementMatch!15285) r!7292)) b!5456999))

(assert (= (and start!571598 ((_ is Concat!24130) r!7292)) b!5456956))

(assert (= (and start!571598 ((_ is Star!15285) r!7292)) b!5456969))

(assert (= (and start!571598 ((_ is Union!15285) r!7292)) b!5456998))

(assert (= (and start!571598 condSetEmpty!35707) setIsEmpty!35707))

(assert (= (and start!571598 (not condSetEmpty!35707)) setNonEmpty!35707))

(assert (= setNonEmpty!35707 b!5456982))

(assert (= b!5456954 b!5456960))

(assert (= (and start!571598 ((_ is Cons!62032) zl!343)) b!5456954))

(assert (= (and start!571598 ((_ is Cons!62030) s!2326)) b!5456980))

(declare-fun m!6477646 () Bool)

(assert (=> bm!398972 m!6477646))

(declare-fun m!6477648 () Bool)

(assert (=> bm!398981 m!6477648))

(declare-fun m!6477650 () Bool)

(assert (=> bm!398951 m!6477650))

(declare-fun m!6477652 () Bool)

(assert (=> bm!398942 m!6477652))

(declare-fun m!6477654 () Bool)

(assert (=> bm!398954 m!6477654))

(declare-fun m!6477656 () Bool)

(assert (=> bm!398854 m!6477656))

(declare-fun m!6477658 () Bool)

(assert (=> bm!398933 m!6477658))

(declare-fun m!6477660 () Bool)

(assert (=> bm!398964 m!6477660))

(declare-fun m!6477662 () Bool)

(assert (=> bm!398969 m!6477662))

(declare-fun m!6477664 () Bool)

(assert (=> bm!398894 m!6477664))

(declare-fun m!6477666 () Bool)

(assert (=> bm!398886 m!6477666))

(declare-fun m!6477668 () Bool)

(assert (=> bm!398852 m!6477668))

(declare-fun m!6477670 () Bool)

(assert (=> bm!398918 m!6477670))

(declare-fun m!6477672 () Bool)

(assert (=> bm!398991 m!6477672))

(declare-fun m!6477674 () Bool)

(assert (=> b!5456959 m!6477674))

(declare-fun m!6477676 () Bool)

(assert (=> b!5456959 m!6477676))

(declare-fun m!6477678 () Bool)

(assert (=> b!5456959 m!6477678))

(declare-fun m!6477680 () Bool)

(assert (=> bm!398932 m!6477680))

(declare-fun m!6477682 () Bool)

(assert (=> bm!398865 m!6477682))

(declare-fun m!6477684 () Bool)

(assert (=> bm!398882 m!6477684))

(declare-fun m!6477686 () Bool)

(assert (=> bm!398875 m!6477686))

(declare-fun m!6477688 () Bool)

(assert (=> bm!398912 m!6477688))

(declare-fun m!6477690 () Bool)

(assert (=> bm!398851 m!6477690))

(declare-fun m!6477692 () Bool)

(assert (=> bm!398917 m!6477692))

(declare-fun m!6477694 () Bool)

(assert (=> bm!399014 m!6477694))

(declare-fun m!6477696 () Bool)

(assert (=> bm!398890 m!6477696))

(declare-fun m!6477698 () Bool)

(assert (=> bm!399042 m!6477698))

(declare-fun m!6477700 () Bool)

(assert (=> b!5457009 m!6477700))

(declare-fun m!6477702 () Bool)

(assert (=> b!5457009 m!6477702))

(declare-fun m!6477704 () Bool)

(assert (=> b!5457009 m!6477704))

(declare-fun m!6477706 () Bool)

(assert (=> b!5457009 m!6477706))

(declare-fun m!6477708 () Bool)

(assert (=> b!5457009 m!6477708))

(assert (=> b!5457009 m!6477700))

(assert (=> b!5457009 m!6477702))

(declare-fun m!6477710 () Bool)

(assert (=> b!5457009 m!6477710))

(declare-fun m!6477712 () Bool)

(assert (=> bm!398965 m!6477712))

(declare-fun m!6477714 () Bool)

(assert (=> bm!398855 m!6477714))

(declare-fun m!6477716 () Bool)

(assert (=> b!5456977 m!6477716))

(declare-fun m!6477718 () Bool)

(assert (=> b!5456977 m!6477718))

(declare-fun m!6477720 () Bool)

(assert (=> b!5456977 m!6477720))

(declare-fun m!6477722 () Bool)

(assert (=> b!5456977 m!6477722))

(declare-fun m!6477724 () Bool)

(assert (=> b!5457003 m!6477724))

(assert (=> b!5457003 m!6477724))

(declare-fun m!6477726 () Bool)

(assert (=> b!5457003 m!6477726))

(declare-fun m!6477728 () Bool)

(assert (=> b!5456970 m!6477728))

(declare-fun m!6477730 () Bool)

(assert (=> bm!398946 m!6477730))

(declare-fun m!6477732 () Bool)

(assert (=> bm!398993 m!6477732))

(declare-fun m!6477734 () Bool)

(assert (=> b!5456989 m!6477734))

(declare-fun m!6477736 () Bool)

(assert (=> b!5456989 m!6477736))

(declare-fun m!6477738 () Bool)

(assert (=> b!5456989 m!6477738))

(declare-fun m!6477740 () Bool)

(assert (=> b!5456989 m!6477740))

(declare-fun m!6477742 () Bool)

(assert (=> bm!398938 m!6477742))

(declare-fun m!6477744 () Bool)

(assert (=> bm!399021 m!6477744))

(declare-fun m!6477746 () Bool)

(assert (=> bm!398864 m!6477746))

(declare-fun m!6477748 () Bool)

(assert (=> bm!398859 m!6477748))

(declare-fun m!6477750 () Bool)

(assert (=> bm!399046 m!6477750))

(declare-fun m!6477752 () Bool)

(assert (=> b!5456993 m!6477752))

(declare-fun m!6477754 () Bool)

(assert (=> b!5456993 m!6477754))

(declare-fun m!6477756 () Bool)

(assert (=> b!5456993 m!6477756))

(declare-fun m!6477758 () Bool)

(assert (=> b!5456993 m!6477758))

(declare-fun m!6477760 () Bool)

(assert (=> b!5456993 m!6477760))

(declare-fun m!6477762 () Bool)

(assert (=> b!5456993 m!6477762))

(declare-fun m!6477764 () Bool)

(assert (=> b!5456993 m!6477764))

(declare-fun m!6477766 () Bool)

(assert (=> bm!398867 m!6477766))

(declare-fun m!6477768 () Bool)

(assert (=> bm!398948 m!6477768))

(assert (=> bm!398869 m!6477756))

(declare-fun m!6477770 () Bool)

(assert (=> bm!398869 m!6477770))

(declare-fun m!6477772 () Bool)

(assert (=> bm!398869 m!6477772))

(declare-fun m!6477774 () Bool)

(assert (=> bm!398995 m!6477774))

(declare-fun m!6477776 () Bool)

(assert (=> bm!398913 m!6477776))

(declare-fun m!6477778 () Bool)

(assert (=> bm!399002 m!6477778))

(declare-fun m!6477780 () Bool)

(assert (=> b!5457008 m!6477780))

(declare-fun m!6477782 () Bool)

(assert (=> b!5457008 m!6477782))

(declare-fun m!6477784 () Bool)

(assert (=> b!5456966 m!6477784))

(declare-fun m!6477786 () Bool)

(assert (=> b!5456965 m!6477786))

(declare-fun m!6477788 () Bool)

(assert (=> b!5456965 m!6477788))

(declare-fun m!6477790 () Bool)

(assert (=> b!5456965 m!6477790))

(declare-fun m!6477792 () Bool)

(assert (=> b!5456965 m!6477792))

(declare-fun m!6477794 () Bool)

(assert (=> b!5456965 m!6477794))

(declare-fun m!6477796 () Bool)

(assert (=> b!5456965 m!6477796))

(declare-fun m!6477798 () Bool)

(assert (=> b!5456965 m!6477798))

(declare-fun m!6477800 () Bool)

(assert (=> bm!398906 m!6477800))

(declare-fun m!6477802 () Bool)

(assert (=> b!5456954 m!6477802))

(declare-fun m!6477804 () Bool)

(assert (=> bm!399027 m!6477804))

(declare-fun m!6477806 () Bool)

(assert (=> bm!398900 m!6477806))

(declare-fun m!6477808 () Bool)

(assert (=> bm!398888 m!6477808))

(declare-fun m!6477810 () Bool)

(assert (=> bm!398868 m!6477810))

(declare-fun m!6477812 () Bool)

(assert (=> b!5456987 m!6477812))

(declare-fun m!6477814 () Bool)

(assert (=> start!571598 m!6477814))

(declare-fun m!6477816 () Bool)

(assert (=> b!5456995 m!6477816))

(declare-fun m!6477818 () Bool)

(assert (=> bm!399006 m!6477818))

(assert (=> b!5456955 m!6477728))

(declare-fun m!6477820 () Bool)

(assert (=> bm!398842 m!6477820))

(declare-fun m!6477822 () Bool)

(assert (=> b!5456948 m!6477822))

(declare-fun m!6477824 () Bool)

(assert (=> b!5456948 m!6477824))

(declare-fun m!6477826 () Bool)

(assert (=> b!5456948 m!6477826))

(declare-fun m!6477828 () Bool)

(assert (=> bm!398915 m!6477828))

(declare-fun m!6477830 () Bool)

(assert (=> b!5456963 m!6477830))

(declare-fun m!6477832 () Bool)

(assert (=> b!5456963 m!6477832))

(declare-fun m!6477834 () Bool)

(assert (=> bm!399045 m!6477834))

(declare-fun m!6477836 () Bool)

(assert (=> bm!398877 m!6477836))

(declare-fun m!6477838 () Bool)

(assert (=> bm!398923 m!6477838))

(declare-fun m!6477840 () Bool)

(assert (=> b!5456988 m!6477840))

(declare-fun m!6477842 () Bool)

(assert (=> bm!399047 m!6477842))

(declare-fun m!6477844 () Bool)

(assert (=> setNonEmpty!35707 m!6477844))

(declare-fun m!6477846 () Bool)

(assert (=> bm!398871 m!6477846))

(declare-fun m!6477848 () Bool)

(assert (=> bm!398958 m!6477848))

(declare-fun m!6477850 () Bool)

(assert (=> bm!398878 m!6477850))

(declare-fun m!6477852 () Bool)

(assert (=> bm!398892 m!6477852))

(declare-fun m!6477854 () Bool)

(assert (=> b!5456961 m!6477854))

(declare-fun m!6477856 () Bool)

(assert (=> b!5456946 m!6477856))

(declare-fun m!6477858 () Bool)

(assert (=> bm!398977 m!6477858))

(declare-fun m!6477860 () Bool)

(assert (=> bm!398953 m!6477860))

(declare-fun m!6477862 () Bool)

(assert (=> bm!398844 m!6477862))

(assert (=> b!5457006 m!6477728))

(declare-fun m!6477864 () Bool)

(assert (=> b!5456950 m!6477864))

(declare-fun m!6477866 () Bool)

(assert (=> b!5457004 m!6477866))

(declare-fun m!6477868 () Bool)

(assert (=> b!5457004 m!6477868))

(declare-fun m!6477870 () Bool)

(assert (=> b!5457004 m!6477870))

(declare-fun m!6477872 () Bool)

(assert (=> b!5457004 m!6477872))

(declare-fun m!6477874 () Bool)

(assert (=> b!5457004 m!6477874))

(declare-fun m!6477876 () Bool)

(assert (=> b!5457004 m!6477876))

(declare-fun m!6477878 () Bool)

(assert (=> b!5457004 m!6477878))

(declare-fun m!6477880 () Bool)

(assert (=> b!5457004 m!6477880))

(assert (=> b!5457004 m!6477728))

(assert (=> b!5457004 m!6477648))

(declare-fun m!6477882 () Bool)

(assert (=> b!5457004 m!6477882))

(declare-fun m!6477884 () Bool)

(assert (=> bm!398914 m!6477884))

(declare-fun m!6477886 () Bool)

(assert (=> bm!398928 m!6477886))

(declare-fun m!6477888 () Bool)

(assert (=> bm!399005 m!6477888))

(declare-fun m!6477890 () Bool)

(assert (=> bm!399008 m!6477890))

(declare-fun m!6477892 () Bool)

(assert (=> b!5456958 m!6477892))

(declare-fun m!6477894 () Bool)

(assert (=> bm!398866 m!6477894))

(declare-fun m!6477896 () Bool)

(assert (=> b!5456997 m!6477896))

(declare-fun m!6477898 () Bool)

(assert (=> b!5456997 m!6477898))

(declare-fun m!6477900 () Bool)

(assert (=> b!5456997 m!6477900))

(declare-fun m!6477902 () Bool)

(assert (=> bm!399001 m!6477902))

(declare-fun m!6477904 () Bool)

(assert (=> bm!398968 m!6477904))

(declare-fun m!6477906 () Bool)

(assert (=> bm!398911 m!6477906))

(declare-fun m!6477908 () Bool)

(assert (=> bm!399025 m!6477908))

(declare-fun m!6477910 () Bool)

(assert (=> bm!398898 m!6477910))

(declare-fun m!6477912 () Bool)

(assert (=> bm!398895 m!6477912))

(declare-fun m!6477914 () Bool)

(assert (=> bm!398872 m!6477914))

(declare-fun m!6477916 () Bool)

(assert (=> b!5456968 m!6477916))

(declare-fun m!6477918 () Bool)

(assert (=> bm!398860 m!6477918))

(assert (=> bm!398985 m!6477852))

(declare-fun m!6477920 () Bool)

(assert (=> bm!398856 m!6477920))

(declare-fun m!6477922 () Bool)

(assert (=> bm!399044 m!6477922))

(assert (=> b!5456947 m!6477728))

(declare-fun m!6477924 () Bool)

(assert (=> bm!399028 m!6477924))

(declare-fun m!6477926 () Bool)

(assert (=> bm!398961 m!6477926))

(declare-fun m!6477928 () Bool)

(assert (=> bm!398957 m!6477928))

(check-sat (not bm!398933) (not b!5457009) (not bm!398938) (not bm!399005) (not b!5456963) (not bm!399044) (not b!5456966) (not bm!398918) (not bm!398892) (not b!5456946) (not b!5456980) (not bm!398864) (not bm!398898) (not bm!398985) (not bm!398852) (not bm!398895) (not bm!399027) (not bm!398917) (not b!5456950) (not b!5456989) (not bm!398972) (not b!5457004) (not b!5457003) (not bm!398912) (not setNonEmpty!35707) (not bm!398888) (not bm!398953) (not bm!398911) (not bm!398906) (not bm!398948) (not bm!398965) (not b!5456977) (not bm!399025) (not b!5456998) (not bm!398942) (not bm!399002) (not bm!398900) (not bm!398859) (not bm!398969) (not bm!398977) (not bm!398844) (not bm!398890) tp_is_empty!39823 (not b!5456954) (not b!5456956) (not bm!398886) (not bm!398951) (not b!5456987) (not bm!398913) (not bm!399006) (not bm!398964) (not bm!399008) (not bm!398866) (not bm!398932) (not b!5456969) (not bm!398923) (not bm!398915) (not b!5456960) (not bm!398958) (not bm!398981) (not b!5456988) (not bm!398871) (not bm!398968) (not bm!399047) (not bm!398869) (not bm!399021) (not bm!398928) (not bm!398961) (not bm!398851) (not bm!398878) (not bm!398877) (not bm!398954) (not bm!398842) (not bm!398882) (not bm!399001) (not bm!398875) (not b!5456968) (not bm!398957) (not b!5456982) (not bm!398867) (not bm!398946) (not b!5456993) (not b!5456995) (not b!5456959) (not bm!398855) (not bm!398991) (not bm!398872) (not start!571598) (not bm!399014) (not b!5456965) (not bm!398894) (not bm!398993) (not b!5456948) (not bm!399028) (not bm!398914) (not bm!399045) (not bm!398865) (not bm!398856) (not bm!398860) (not bm!399042) (not bm!398995) (not bm!398854) (not b!5456997) (not bm!398868) (not bm!399046) (not b!5456958))
(check-sat)
(get-model)

(declare-fun d!1737244 () Bool)

(declare-fun c!953218 () Bool)

(assert (=> d!1737244 (= c!953218 (isEmpty!34016 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228180 (_1!35787 lt!2228230)) (t!375383 s!2326)))))))

(declare-fun e!3379417 () Bool)

(assert (=> d!1737244 (= (matchZipper!1529 (ite c!953204 lt!2228166 (ite c!953207 lt!2228274 (ite c!953205 (ite c!953211 lt!2228173 lt!2228279) lt!2228166))) (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228180 (_1!35787 lt!2228230)) (t!375383 s!2326)))) e!3379417)))

(declare-fun b!5457025 () Bool)

(declare-fun nullableZipper!1485 ((InoxSet Context!9338)) Bool)

(assert (=> b!5457025 (= e!3379417 (nullableZipper!1485 (ite c!953204 lt!2228166 (ite c!953207 lt!2228274 (ite c!953205 (ite c!953211 lt!2228173 lt!2228279) lt!2228166)))))))

(declare-fun b!5457026 () Bool)

(declare-fun head!11687 (List!62154) C!30840)

(declare-fun tail!10784 (List!62154) List!62154)

(assert (=> b!5457026 (= e!3379417 (matchZipper!1529 (derivationStepZipper!1504 (ite c!953204 lt!2228166 (ite c!953207 lt!2228274 (ite c!953205 (ite c!953211 lt!2228173 lt!2228279) lt!2228166))) (head!11687 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228180 (_1!35787 lt!2228230)) (t!375383 s!2326))))) (tail!10784 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228180 (_1!35787 lt!2228230)) (t!375383 s!2326))))))))

(assert (= (and d!1737244 c!953218) b!5457025))

(assert (= (and d!1737244 (not c!953218)) b!5457026))

(declare-fun m!6477930 () Bool)

(assert (=> d!1737244 m!6477930))

(declare-fun m!6477932 () Bool)

(assert (=> b!5457025 m!6477932))

(declare-fun m!6477934 () Bool)

(assert (=> b!5457026 m!6477934))

(assert (=> b!5457026 m!6477934))

(declare-fun m!6477936 () Bool)

(assert (=> b!5457026 m!6477936))

(declare-fun m!6477938 () Bool)

(assert (=> b!5457026 m!6477938))

(assert (=> b!5457026 m!6477936))

(assert (=> b!5457026 m!6477938))

(declare-fun m!6477940 () Bool)

(assert (=> b!5457026 m!6477940))

(assert (=> bm!398872 d!1737244))

(declare-fun d!1737246 () Bool)

(declare-fun dynLambda!24406 (Int Context!9338) Context!9338)

(assert (=> d!1737246 (= (map!14254 lt!2228279 lambda!288859) (store ((as const (Array Context!9338 Bool)) false) (dynLambda!24406 lambda!288859 lt!2228345) true))))

(declare-fun lt!2228366 () Unit!154880)

(declare-fun choose!41439 ((InoxSet Context!9338) Context!9338 Int) Unit!154880)

(assert (=> d!1737246 (= lt!2228366 (choose!41439 lt!2228279 lt!2228345 lambda!288859))))

(assert (=> d!1737246 (= lt!2228279 (store ((as const (Array Context!9338 Bool)) false) lt!2228345 true))))

(assert (=> d!1737246 (= (lemmaMapOnSingletonSet!86 lt!2228279 lt!2228345 lambda!288859) lt!2228366)))

(declare-fun b_lambda!207777 () Bool)

(assert (=> (not b_lambda!207777) (not d!1737246)))

(declare-fun bs!1262610 () Bool)

(assert (= bs!1262610 d!1737246))

(declare-fun m!6477942 () Bool)

(assert (=> bs!1262610 m!6477942))

(assert (=> bs!1262610 m!6477942))

(declare-fun m!6477944 () Bool)

(assert (=> bs!1262610 m!6477944))

(assert (=> bs!1262610 m!6477762))

(declare-fun m!6477946 () Bool)

(assert (=> bs!1262610 m!6477946))

(assert (=> bs!1262610 m!6477718))

(assert (=> b!5456993 d!1737246))

(declare-fun d!1737248 () Bool)

(assert (=> d!1737248 (isDefined!12099 (findConcatSeparationZippers!84 lt!2228279 (store ((as const (Array Context!9338 Bool)) false) lt!2228309 true) Nil!62030 s!2326 s!2326))))

(declare-fun lt!2228369 () Unit!154880)

(declare-fun choose!41440 ((InoxSet Context!9338) Context!9338 List!62154) Unit!154880)

(assert (=> d!1737248 (= lt!2228369 (choose!41440 lt!2228279 lt!2228309 s!2326))))

(declare-fun appendTo!77 ((InoxSet Context!9338) Context!9338) (InoxSet Context!9338))

(assert (=> d!1737248 (matchZipper!1529 (appendTo!77 lt!2228279 lt!2228309) s!2326)))

(assert (=> d!1737248 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!84 lt!2228279 lt!2228309 s!2326) lt!2228369)))

(declare-fun bs!1262611 () Bool)

(assert (= bs!1262611 d!1737248))

(declare-fun m!6477948 () Bool)

(assert (=> bs!1262611 m!6477948))

(declare-fun m!6477950 () Bool)

(assert (=> bs!1262611 m!6477950))

(assert (=> bs!1262611 m!6477720))

(declare-fun m!6477952 () Bool)

(assert (=> bs!1262611 m!6477952))

(assert (=> bs!1262611 m!6477948))

(declare-fun m!6477954 () Bool)

(assert (=> bs!1262611 m!6477954))

(assert (=> bs!1262611 m!6477720))

(assert (=> bs!1262611 m!6477952))

(declare-fun m!6477956 () Bool)

(assert (=> bs!1262611 m!6477956))

(assert (=> b!5456993 d!1737248))

(declare-fun b!5457045 () Bool)

(declare-fun res!2324217 () Bool)

(declare-fun e!3379431 () Bool)

(assert (=> b!5457045 (=> (not res!2324217) (not e!3379431))))

(declare-fun lt!2228378 () Option!15396)

(assert (=> b!5457045 (= res!2324217 (matchZipper!1529 lt!2228279 (_1!35787 (get!21392 lt!2228378))))))

(declare-fun d!1737250 () Bool)

(declare-fun e!3379430 () Bool)

(assert (=> d!1737250 e!3379430))

(declare-fun res!2324218 () Bool)

(assert (=> d!1737250 (=> res!2324218 e!3379430)))

(assert (=> d!1737250 (= res!2324218 e!3379431)))

(declare-fun res!2324216 () Bool)

(assert (=> d!1737250 (=> (not res!2324216) (not e!3379431))))

(assert (=> d!1737250 (= res!2324216 (isDefined!12099 lt!2228378))))

(declare-fun e!3379432 () Option!15396)

(assert (=> d!1737250 (= lt!2228378 e!3379432)))

(declare-fun c!953223 () Bool)

(declare-fun e!3379429 () Bool)

(assert (=> d!1737250 (= c!953223 e!3379429)))

(declare-fun res!2324220 () Bool)

(assert (=> d!1737250 (=> (not res!2324220) (not e!3379429))))

(assert (=> d!1737250 (= res!2324220 (matchZipper!1529 lt!2228279 Nil!62030))))

(assert (=> d!1737250 (= (++!13649 Nil!62030 s!2326) s!2326)))

(assert (=> d!1737250 (= (findConcatSeparationZippers!84 lt!2228279 lt!2228173 Nil!62030 s!2326 s!2326) lt!2228378)))

(declare-fun b!5457046 () Bool)

(declare-fun e!3379428 () Option!15396)

(assert (=> b!5457046 (= e!3379432 e!3379428)))

(declare-fun c!953224 () Bool)

(assert (=> b!5457046 (= c!953224 ((_ is Nil!62030) s!2326))))

(declare-fun b!5457047 () Bool)

(assert (=> b!5457047 (= e!3379432 (Some!15395 (tuple2!64969 Nil!62030 s!2326)))))

(declare-fun b!5457048 () Bool)

(assert (=> b!5457048 (= e!3379431 (= (++!13649 (_1!35787 (get!21392 lt!2228378)) (_2!35787 (get!21392 lt!2228378))) s!2326))))

(declare-fun b!5457049 () Bool)

(assert (=> b!5457049 (= e!3379430 (not (isDefined!12099 lt!2228378)))))

(declare-fun b!5457050 () Bool)

(declare-fun res!2324219 () Bool)

(assert (=> b!5457050 (=> (not res!2324219) (not e!3379431))))

(assert (=> b!5457050 (= res!2324219 (matchZipper!1529 lt!2228173 (_2!35787 (get!21392 lt!2228378))))))

(declare-fun b!5457051 () Bool)

(declare-fun lt!2228376 () Unit!154880)

(declare-fun lt!2228377 () Unit!154880)

(assert (=> b!5457051 (= lt!2228376 lt!2228377)))

(assert (=> b!5457051 (= (++!13649 (++!13649 Nil!62030 (Cons!62030 (h!68478 s!2326) Nil!62030)) (t!375383 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1880 (List!62154 C!30840 List!62154 List!62154) Unit!154880)

(assert (=> b!5457051 (= lt!2228377 (lemmaMoveElementToOtherListKeepsConcatEq!1880 Nil!62030 (h!68478 s!2326) (t!375383 s!2326) s!2326))))

(assert (=> b!5457051 (= e!3379428 (findConcatSeparationZippers!84 lt!2228279 lt!2228173 (++!13649 Nil!62030 (Cons!62030 (h!68478 s!2326) Nil!62030)) (t!375383 s!2326) s!2326))))

(declare-fun b!5457052 () Bool)

(assert (=> b!5457052 (= e!3379428 None!15395)))

(declare-fun b!5457053 () Bool)

(assert (=> b!5457053 (= e!3379429 (matchZipper!1529 lt!2228173 s!2326))))

(assert (= (and d!1737250 res!2324220) b!5457053))

(assert (= (and d!1737250 c!953223) b!5457047))

(assert (= (and d!1737250 (not c!953223)) b!5457046))

(assert (= (and b!5457046 c!953224) b!5457052))

(assert (= (and b!5457046 (not c!953224)) b!5457051))

(assert (= (and d!1737250 res!2324216) b!5457045))

(assert (= (and b!5457045 res!2324217) b!5457050))

(assert (= (and b!5457050 res!2324219) b!5457048))

(assert (= (and d!1737250 (not res!2324218)) b!5457049))

(declare-fun m!6477958 () Bool)

(assert (=> b!5457049 m!6477958))

(assert (=> d!1737250 m!6477958))

(declare-fun m!6477960 () Bool)

(assert (=> d!1737250 m!6477960))

(declare-fun m!6477962 () Bool)

(assert (=> d!1737250 m!6477962))

(declare-fun m!6477964 () Bool)

(assert (=> b!5457048 m!6477964))

(declare-fun m!6477966 () Bool)

(assert (=> b!5457048 m!6477966))

(assert (=> b!5457045 m!6477964))

(declare-fun m!6477968 () Bool)

(assert (=> b!5457045 m!6477968))

(declare-fun m!6477970 () Bool)

(assert (=> b!5457053 m!6477970))

(declare-fun m!6477972 () Bool)

(assert (=> b!5457051 m!6477972))

(assert (=> b!5457051 m!6477972))

(declare-fun m!6477974 () Bool)

(assert (=> b!5457051 m!6477974))

(declare-fun m!6477976 () Bool)

(assert (=> b!5457051 m!6477976))

(assert (=> b!5457051 m!6477972))

(declare-fun m!6477978 () Bool)

(assert (=> b!5457051 m!6477978))

(assert (=> b!5457050 m!6477964))

(declare-fun m!6477980 () Bool)

(assert (=> b!5457050 m!6477980))

(assert (=> b!5456993 d!1737250))

(declare-fun d!1737252 () Bool)

(declare-fun choose!41441 ((InoxSet Context!9338) Int) (InoxSet Context!9338))

(assert (=> d!1737252 (= (map!14254 lt!2228279 lambda!288859) (choose!41441 lt!2228279 lambda!288859))))

(declare-fun bs!1262612 () Bool)

(assert (= bs!1262612 d!1737252))

(declare-fun m!6477982 () Bool)

(assert (=> bs!1262612 m!6477982))

(assert (=> b!5456993 d!1737252))

(declare-fun b!5457082 () Bool)

(declare-fun res!2324237 () Bool)

(declare-fun e!3379452 () Bool)

(assert (=> b!5457082 (=> (not res!2324237) (not e!3379452))))

(assert (=> b!5457082 (= res!2324237 (isEmpty!34016 (tail!10784 lt!2228346)))))

(declare-fun b!5457083 () Bool)

(declare-fun e!3379451 () Bool)

(declare-fun e!3379448 () Bool)

(assert (=> b!5457083 (= e!3379451 e!3379448)))

(declare-fun c!953233 () Bool)

(assert (=> b!5457083 (= c!953233 ((_ is EmptyLang!15285) lt!2228280))))

(declare-fun b!5457084 () Bool)

(assert (=> b!5457084 (= e!3379452 (= (head!11687 lt!2228346) (c!953215 lt!2228280)))))

(declare-fun d!1737254 () Bool)

(assert (=> d!1737254 e!3379451))

(declare-fun c!953231 () Bool)

(assert (=> d!1737254 (= c!953231 ((_ is EmptyExpr!15285) lt!2228280))))

(declare-fun lt!2228381 () Bool)

(declare-fun e!3379449 () Bool)

(assert (=> d!1737254 (= lt!2228381 e!3379449)))

(declare-fun c!953232 () Bool)

(assert (=> d!1737254 (= c!953232 (isEmpty!34016 lt!2228346))))

(assert (=> d!1737254 (validRegex!7021 lt!2228280)))

(assert (=> d!1737254 (= (matchR!7470 lt!2228280 lt!2228346) lt!2228381)))

(declare-fun b!5457085 () Bool)

(declare-fun res!2324242 () Bool)

(declare-fun e!3379453 () Bool)

(assert (=> b!5457085 (=> res!2324242 e!3379453)))

(assert (=> b!5457085 (= res!2324242 e!3379452)))

(declare-fun res!2324240 () Bool)

(assert (=> b!5457085 (=> (not res!2324240) (not e!3379452))))

(assert (=> b!5457085 (= res!2324240 lt!2228381)))

(declare-fun b!5457086 () Bool)

(declare-fun e!3379450 () Bool)

(declare-fun e!3379447 () Bool)

(assert (=> b!5457086 (= e!3379450 e!3379447)))

(declare-fun res!2324244 () Bool)

(assert (=> b!5457086 (=> res!2324244 e!3379447)))

(declare-fun call!399055 () Bool)

(assert (=> b!5457086 (= res!2324244 call!399055)))

(declare-fun b!5457087 () Bool)

(declare-fun res!2324241 () Bool)

(assert (=> b!5457087 (=> res!2324241 e!3379447)))

(assert (=> b!5457087 (= res!2324241 (not (isEmpty!34016 (tail!10784 lt!2228346))))))

(declare-fun b!5457088 () Bool)

(assert (=> b!5457088 (= e!3379449 (nullable!5454 lt!2228280))))

(declare-fun bm!399050 () Bool)

(assert (=> bm!399050 (= call!399055 (isEmpty!34016 lt!2228346))))

(declare-fun b!5457089 () Bool)

(assert (=> b!5457089 (= e!3379447 (not (= (head!11687 lt!2228346) (c!953215 lt!2228280))))))

(declare-fun b!5457090 () Bool)

(assert (=> b!5457090 (= e!3379448 (not lt!2228381))))

(declare-fun b!5457091 () Bool)

(assert (=> b!5457091 (= e!3379453 e!3379450)))

(declare-fun res!2324243 () Bool)

(assert (=> b!5457091 (=> (not res!2324243) (not e!3379450))))

(assert (=> b!5457091 (= res!2324243 (not lt!2228381))))

(declare-fun b!5457092 () Bool)

(assert (=> b!5457092 (= e!3379451 (= lt!2228381 call!399055))))

(declare-fun b!5457093 () Bool)

(declare-fun res!2324239 () Bool)

(assert (=> b!5457093 (=> (not res!2324239) (not e!3379452))))

(assert (=> b!5457093 (= res!2324239 (not call!399055))))

(declare-fun b!5457094 () Bool)

(declare-fun res!2324238 () Bool)

(assert (=> b!5457094 (=> res!2324238 e!3379453)))

(assert (=> b!5457094 (= res!2324238 (not ((_ is ElementMatch!15285) lt!2228280)))))

(assert (=> b!5457094 (= e!3379448 e!3379453)))

(declare-fun b!5457095 () Bool)

(declare-fun derivativeStep!4306 (Regex!15285 C!30840) Regex!15285)

(assert (=> b!5457095 (= e!3379449 (matchR!7470 (derivativeStep!4306 lt!2228280 (head!11687 lt!2228346)) (tail!10784 lt!2228346)))))

(assert (= (and d!1737254 c!953232) b!5457088))

(assert (= (and d!1737254 (not c!953232)) b!5457095))

(assert (= (and d!1737254 c!953231) b!5457092))

(assert (= (and d!1737254 (not c!953231)) b!5457083))

(assert (= (and b!5457083 c!953233) b!5457090))

(assert (= (and b!5457083 (not c!953233)) b!5457094))

(assert (= (and b!5457094 (not res!2324238)) b!5457085))

(assert (= (and b!5457085 res!2324240) b!5457093))

(assert (= (and b!5457093 res!2324239) b!5457082))

(assert (= (and b!5457082 res!2324237) b!5457084))

(assert (= (and b!5457085 (not res!2324242)) b!5457091))

(assert (= (and b!5457091 res!2324243) b!5457086))

(assert (= (and b!5457086 (not res!2324244)) b!5457087))

(assert (= (and b!5457087 (not res!2324241)) b!5457089))

(assert (= (or b!5457092 b!5457093 b!5457086) bm!399050))

(declare-fun m!6477984 () Bool)

(assert (=> b!5457087 m!6477984))

(assert (=> b!5457087 m!6477984))

(declare-fun m!6477986 () Bool)

(assert (=> b!5457087 m!6477986))

(declare-fun m!6477988 () Bool)

(assert (=> b!5457084 m!6477988))

(declare-fun m!6477990 () Bool)

(assert (=> b!5457088 m!6477990))

(assert (=> b!5457095 m!6477988))

(assert (=> b!5457095 m!6477988))

(declare-fun m!6477992 () Bool)

(assert (=> b!5457095 m!6477992))

(assert (=> b!5457095 m!6477984))

(assert (=> b!5457095 m!6477992))

(assert (=> b!5457095 m!6477984))

(declare-fun m!6477994 () Bool)

(assert (=> b!5457095 m!6477994))

(declare-fun m!6477996 () Bool)

(assert (=> bm!399050 m!6477996))

(assert (=> b!5457089 m!6477988))

(assert (=> d!1737254 m!6477996))

(declare-fun m!6477998 () Bool)

(assert (=> d!1737254 m!6477998))

(assert (=> b!5457082 m!6477984))

(assert (=> b!5457082 m!6477984))

(assert (=> b!5457082 m!6477986))

(assert (=> b!5456993 d!1737254))

(declare-fun d!1737256 () Bool)

(assert (=> d!1737256 (= (get!21392 lt!2228286) (v!51424 lt!2228286))))

(assert (=> b!5456993 d!1737256))

(declare-fun bs!1262613 () Bool)

(declare-fun b!5457138 () Bool)

(assert (= bs!1262613 (and b!5457138 b!5456979)))

(declare-fun lambda!288874 () Int)

(assert (=> bs!1262613 (not (= lambda!288874 lambda!288857))))

(declare-fun bs!1262614 () Bool)

(assert (= bs!1262614 (and b!5457138 b!5457008)))

(assert (=> bs!1262614 (not (= lambda!288874 lambda!288847))))

(declare-fun bs!1262615 () Bool)

(assert (= bs!1262615 (and b!5457138 b!5456961)))

(assert (=> bs!1262615 (not (= lambda!288874 lambda!288851))))

(assert (=> bs!1262614 (not (= lambda!288874 lambda!288848))))

(declare-fun bs!1262616 () Bool)

(assert (= bs!1262616 (and b!5457138 b!5456970)))

(assert (=> bs!1262616 (not (= lambda!288874 lambda!288867))))

(declare-fun bs!1262617 () Bool)

(assert (= bs!1262617 (and b!5457138 b!5456993)))

(assert (=> bs!1262617 (not (= lambda!288874 lambda!288864))))

(assert (=> bs!1262615 (not (= lambda!288874 lambda!288852))))

(assert (=> bs!1262614 (not (= lambda!288874 lambda!288846))))

(declare-fun bs!1262618 () Bool)

(assert (= bs!1262618 (and b!5457138 b!5456966)))

(assert (=> bs!1262618 (not (= lambda!288874 lambda!288853))))

(assert (=> bs!1262616 (not (= lambda!288874 lambda!288866))))

(assert (=> bs!1262615 (not (= lambda!288874 lambda!288850))))

(declare-fun bs!1262619 () Bool)

(assert (= bs!1262619 (and b!5457138 b!5457009)))

(assert (=> bs!1262619 (not (= lambda!288874 lambda!288843))))

(assert (=> bs!1262617 (not (= lambda!288874 lambda!288863))))

(assert (=> bs!1262619 (not (= lambda!288874 lambda!288842))))

(assert (=> bs!1262613 (not (= lambda!288874 lambda!288855))))

(assert (=> bs!1262616 (= (and (= s!2326 Nil!62030) (= (reg!15614 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))) lt!2228350)) (= lambda!288874 lambda!288868))))

(assert (=> bs!1262613 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (reg!15614 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))) lt!2228350)) (= lambda!288874 lambda!288856))))

(assert (=> bs!1262614 (not (= lambda!288874 lambda!288845))))

(assert (=> bs!1262617 (not (= lambda!288874 lambda!288862))))

(assert (=> bs!1262617 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (reg!15614 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))) lt!2228350)) (= lambda!288874 lambda!288865))))

(assert (=> bs!1262615 (not (= lambda!288874 lambda!288849))))

(assert (=> bs!1262617 (not (= lambda!288874 lambda!288861))))

(assert (=> bs!1262618 (not (= lambda!288874 lambda!288854))))

(assert (=> b!5457138 true))

(assert (=> b!5457138 true))

(declare-fun bs!1262620 () Bool)

(declare-fun b!5457132 () Bool)

(assert (= bs!1262620 (and b!5457132 b!5456979)))

(declare-fun lambda!288875 () Int)

(assert (=> bs!1262620 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228350)) (= lambda!288875 lambda!288857))))

(declare-fun bs!1262621 () Bool)

(assert (= bs!1262621 (and b!5457132 b!5457008)))

(assert (=> bs!1262621 (not (= lambda!288875 lambda!288847))))

(declare-fun bs!1262622 () Bool)

(assert (= bs!1262622 (and b!5457132 b!5456961)))

(assert (=> bs!1262622 (not (= lambda!288875 lambda!288851))))

(declare-fun bs!1262623 () Bool)

(assert (= bs!1262623 (and b!5457132 b!5456970)))

(assert (=> bs!1262623 (= (and (= s!2326 Nil!62030) (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228350)) (= lambda!288875 lambda!288867))))

(declare-fun bs!1262624 () Bool)

(assert (= bs!1262624 (and b!5457132 b!5456993)))

(assert (=> bs!1262624 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228350)) (= lambda!288875 lambda!288864))))

(assert (=> bs!1262622 (= (and (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228185)) (= lambda!288875 lambda!288852))))

(assert (=> bs!1262621 (= (and (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228179)) (= lambda!288875 lambda!288846))))

(declare-fun bs!1262625 () Bool)

(assert (= bs!1262625 (and b!5457132 b!5456966)))

(assert (=> bs!1262625 (not (= lambda!288875 lambda!288853))))

(assert (=> bs!1262623 (not (= lambda!288875 lambda!288866))))

(assert (=> bs!1262622 (= (and (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228281)) (= lambda!288875 lambda!288850))))

(declare-fun bs!1262626 () Bool)

(assert (= bs!1262626 (and b!5457132 b!5457009)))

(assert (=> bs!1262626 (= (and (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (regOne!31082 r!7292)) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (regTwo!31082 r!7292))) (= lambda!288875 lambda!288843))))

(assert (=> bs!1262624 (not (= lambda!288875 lambda!288863))))

(assert (=> bs!1262626 (not (= lambda!288875 lambda!288842))))

(assert (=> bs!1262620 (not (= lambda!288875 lambda!288855))))

(assert (=> bs!1262623 (not (= lambda!288875 lambda!288868))))

(assert (=> bs!1262621 (= (and (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228361)) (= lambda!288875 lambda!288848))))

(declare-fun bs!1262627 () Bool)

(assert (= bs!1262627 (and b!5457132 b!5457138)))

(assert (=> bs!1262627 (not (= lambda!288875 lambda!288874))))

(assert (=> bs!1262620 (not (= lambda!288875 lambda!288856))))

(assert (=> bs!1262621 (not (= lambda!288875 lambda!288845))))

(assert (=> bs!1262624 (= (and (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228296) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (regTwo!31082 r!7292))) (= lambda!288875 lambda!288862))))

(assert (=> bs!1262624 (not (= lambda!288875 lambda!288865))))

(assert (=> bs!1262622 (not (= lambda!288875 lambda!288849))))

(assert (=> bs!1262624 (not (= lambda!288875 lambda!288861))))

(assert (=> bs!1262625 (= (and (= (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) lt!2228350) (= (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) (regTwo!31082 r!7292))) (= lambda!288875 lambda!288854))))

(assert (=> b!5457132 true))

(assert (=> b!5457132 true))

(declare-fun b!5457128 () Bool)

(declare-fun e!3379473 () Bool)

(declare-fun e!3379472 () Bool)

(assert (=> b!5457128 (= e!3379473 e!3379472)))

(declare-fun res!2324264 () Bool)

(assert (=> b!5457128 (= res!2324264 (not ((_ is EmptyLang!15285) (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))))))

(assert (=> b!5457128 (=> (not res!2324264) (not e!3379472))))

(declare-fun e!3379478 () Bool)

(declare-fun b!5457129 () Bool)

(assert (=> b!5457129 (= e!3379478 (= s!2326 (Cons!62030 (c!953215 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) Nil!62030)))))

(declare-fun bm!399055 () Bool)

(declare-fun call!399061 () Bool)

(assert (=> bm!399055 (= call!399061 (isEmpty!34016 s!2326))))

(declare-fun c!953245 () Bool)

(declare-fun b!5457130 () Bool)

(assert (=> b!5457130 (= c!953245 ((_ is ElementMatch!15285) (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))))

(assert (=> b!5457130 (= e!3379472 e!3379478)))

(declare-fun d!1737258 () Bool)

(declare-fun c!953244 () Bool)

(assert (=> d!1737258 (= c!953244 ((_ is EmptyExpr!15285) (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))))

(assert (=> d!1737258 (= (matchRSpec!2388 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))) s!2326) e!3379473)))

(declare-fun b!5457131 () Bool)

(declare-fun e!3379475 () Bool)

(declare-fun e!3379477 () Bool)

(assert (=> b!5457131 (= e!3379475 e!3379477)))

(declare-fun res!2324263 () Bool)

(assert (=> b!5457131 (= res!2324263 (matchRSpec!2388 (regOne!31083 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) s!2326))))

(assert (=> b!5457131 (=> res!2324263 e!3379477)))

(declare-fun e!3379474 () Bool)

(declare-fun call!399060 () Bool)

(assert (=> b!5457132 (= e!3379474 call!399060)))

(declare-fun b!5457133 () Bool)

(declare-fun res!2324262 () Bool)

(declare-fun e!3379476 () Bool)

(assert (=> b!5457133 (=> res!2324262 e!3379476)))

(assert (=> b!5457133 (= res!2324262 call!399061)))

(assert (=> b!5457133 (= e!3379474 e!3379476)))

(declare-fun b!5457134 () Bool)

(assert (=> b!5457134 (= e!3379475 e!3379474)))

(declare-fun c!953242 () Bool)

(assert (=> b!5457134 (= c!953242 ((_ is Star!15285) (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))))

(declare-fun bm!399056 () Bool)

(assert (=> bm!399056 (= call!399060 (Exists!2466 (ite c!953242 lambda!288874 lambda!288875)))))

(declare-fun b!5457135 () Bool)

(assert (=> b!5457135 (= e!3379473 call!399061)))

(declare-fun c!953243 () Bool)

(declare-fun b!5457136 () Bool)

(assert (=> b!5457136 (= c!953243 ((_ is Union!15285) (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))))

(assert (=> b!5457136 (= e!3379478 e!3379475)))

(declare-fun b!5457137 () Bool)

(assert (=> b!5457137 (= e!3379477 (matchRSpec!2388 (regTwo!31083 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))) s!2326))))

(assert (=> b!5457138 (= e!3379476 call!399060)))

(assert (= (and d!1737258 c!953244) b!5457135))

(assert (= (and d!1737258 (not c!953244)) b!5457128))

(assert (= (and b!5457128 res!2324264) b!5457130))

(assert (= (and b!5457130 c!953245) b!5457129))

(assert (= (and b!5457130 (not c!953245)) b!5457136))

(assert (= (and b!5457136 c!953243) b!5457131))

(assert (= (and b!5457136 (not c!953243)) b!5457134))

(assert (= (and b!5457131 (not res!2324263)) b!5457137))

(assert (= (and b!5457134 c!953242) b!5457133))

(assert (= (and b!5457134 (not c!953242)) b!5457132))

(assert (= (and b!5457133 (not res!2324262)) b!5457138))

(assert (= (or b!5457138 b!5457132) bm!399056))

(assert (= (or b!5457135 b!5457133) bm!399055))

(declare-fun m!6478000 () Bool)

(assert (=> bm!399055 m!6478000))

(declare-fun m!6478002 () Bool)

(assert (=> b!5457131 m!6478002))

(declare-fun m!6478004 () Bool)

(assert (=> bm!399056 m!6478004))

(declare-fun m!6478006 () Bool)

(assert (=> b!5457137 m!6478006))

(assert (=> bm!398906 d!1737258))

(declare-fun d!1737260 () Bool)

(assert (=> d!1737260 (= (isEmpty!34017 (t!375384 (exprs!5169 (h!68480 zl!343)))) ((_ is Nil!62031) (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(assert (=> b!5456987 d!1737260))

(declare-fun bs!1262628 () Bool)

(declare-fun d!1737262 () Bool)

(assert (= bs!1262628 (and d!1737262 b!5456979)))

(declare-fun lambda!288878 () Int)

(assert (=> bs!1262628 (= lambda!288878 lambda!288858)))

(declare-fun bs!1262629 () Bool)

(assert (= bs!1262629 (and d!1737262 b!5456993)))

(assert (=> bs!1262629 (= lambda!288878 lambda!288860)))

(declare-fun bs!1262630 () Bool)

(assert (= bs!1262630 (and d!1737262 b!5456989)))

(assert (=> bs!1262630 (= lambda!288878 lambda!288869)))

(assert (=> d!1737262 (matchZipper!1529 (store ((as const (Array Context!9338 Bool)) false) (Context!9339 (++!13650 (exprs!5169 lt!2228345) (exprs!5169 lt!2228309))) true) (++!13649 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228230)) (ite c!953211 lt!2228180 (_2!35787 lt!2228230))))))

(declare-fun lt!2228390 () Unit!154880)

(assert (=> d!1737262 (= lt!2228390 (lemmaConcatPreservesForall!252 (exprs!5169 lt!2228345) (exprs!5169 lt!2228309) lambda!288878))))

(declare-fun lt!2228389 () Unit!154880)

(declare-fun choose!41443 (Context!9338 Context!9338 List!62154 List!62154) Unit!154880)

(assert (=> d!1737262 (= lt!2228389 (choose!41443 lt!2228345 lt!2228309 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228230)) (ite c!953211 lt!2228180 (_2!35787 lt!2228230))))))

(assert (=> d!1737262 (matchZipper!1529 (store ((as const (Array Context!9338 Bool)) false) lt!2228345 true) (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228230)))))

(assert (=> d!1737262 (= (lemmaConcatenateContextMatchesConcatOfStrings!100 lt!2228345 lt!2228309 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228230)) (ite c!953211 lt!2228180 (_2!35787 lt!2228230))) lt!2228389)))

(declare-fun bs!1262631 () Bool)

(assert (= bs!1262631 d!1737262))

(declare-fun m!6478010 () Bool)

(assert (=> bs!1262631 m!6478010))

(declare-fun m!6478012 () Bool)

(assert (=> bs!1262631 m!6478012))

(assert (=> bs!1262631 m!6477718))

(declare-fun m!6478014 () Bool)

(assert (=> bs!1262631 m!6478014))

(assert (=> bs!1262631 m!6478012))

(assert (=> bs!1262631 m!6478010))

(declare-fun m!6478016 () Bool)

(assert (=> bs!1262631 m!6478016))

(declare-fun m!6478018 () Bool)

(assert (=> bs!1262631 m!6478018))

(assert (=> bs!1262631 m!6477718))

(declare-fun m!6478020 () Bool)

(assert (=> bs!1262631 m!6478020))

(declare-fun m!6478022 () Bool)

(assert (=> bs!1262631 m!6478022))

(assert (=> bm!399005 d!1737262))

(declare-fun e!3379490 () Bool)

(declare-fun b!5457161 () Bool)

(declare-fun lt!2228393 () List!62154)

(assert (=> b!5457161 (= e!3379490 (or (not (= (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230)) Nil!62030)) (= lt!2228393 (ite c!953211 lt!2228246 (_1!35787 lt!2228230)))))))

(declare-fun d!1737268 () Bool)

(assert (=> d!1737268 e!3379490))

(declare-fun res!2324272 () Bool)

(assert (=> d!1737268 (=> (not res!2324272) (not e!3379490))))

(declare-fun content!11166 (List!62154) (InoxSet C!30840))

(assert (=> d!1737268 (= res!2324272 (= (content!11166 lt!2228393) ((_ map or) (content!11166 (ite c!953211 lt!2228246 (_1!35787 lt!2228230))) (content!11166 (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230))))))))

(declare-fun e!3379491 () List!62154)

(assert (=> d!1737268 (= lt!2228393 e!3379491)))

(declare-fun c!953252 () Bool)

(assert (=> d!1737268 (= c!953252 ((_ is Nil!62030) (ite c!953211 lt!2228246 (_1!35787 lt!2228230))))))

(assert (=> d!1737268 (= (++!13649 (ite c!953211 lt!2228246 (_1!35787 lt!2228230)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230))) lt!2228393)))

(declare-fun b!5457158 () Bool)

(assert (=> b!5457158 (= e!3379491 (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230)))))

(declare-fun b!5457159 () Bool)

(assert (=> b!5457159 (= e!3379491 (Cons!62030 (h!68478 (ite c!953211 lt!2228246 (_1!35787 lt!2228230))) (++!13649 (t!375383 (ite c!953211 lt!2228246 (_1!35787 lt!2228230))) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230)))))))

(declare-fun b!5457160 () Bool)

(declare-fun res!2324273 () Bool)

(assert (=> b!5457160 (=> (not res!2324273) (not e!3379490))))

(declare-fun size!39901 (List!62154) Int)

(assert (=> b!5457160 (= res!2324273 (= (size!39901 lt!2228393) (+ (size!39901 (ite c!953211 lt!2228246 (_1!35787 lt!2228230))) (size!39901 (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230))))))))

(assert (= (and d!1737268 c!953252) b!5457158))

(assert (= (and d!1737268 (not c!953252)) b!5457159))

(assert (= (and d!1737268 res!2324272) b!5457160))

(assert (= (and b!5457160 res!2324273) b!5457161))

(declare-fun m!6478042 () Bool)

(assert (=> d!1737268 m!6478042))

(declare-fun m!6478044 () Bool)

(assert (=> d!1737268 m!6478044))

(declare-fun m!6478046 () Bool)

(assert (=> d!1737268 m!6478046))

(declare-fun m!6478048 () Bool)

(assert (=> b!5457159 m!6478048))

(declare-fun m!6478050 () Bool)

(assert (=> b!5457160 m!6478050))

(declare-fun m!6478052 () Bool)

(assert (=> b!5457160 m!6478052))

(declare-fun m!6478054 () Bool)

(assert (=> b!5457160 m!6478054))

(assert (=> bm!398913 d!1737268))

(declare-fun b!5457162 () Bool)

(declare-fun res!2324274 () Bool)

(declare-fun e!3379497 () Bool)

(assert (=> b!5457162 (=> (not res!2324274) (not e!3379497))))

(assert (=> b!5457162 (= res!2324274 (isEmpty!34016 (tail!10784 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326))))))

(declare-fun b!5457163 () Bool)

(declare-fun e!3379496 () Bool)

(declare-fun e!3379493 () Bool)

(assert (=> b!5457163 (= e!3379496 e!3379493)))

(declare-fun c!953255 () Bool)

(assert (=> b!5457163 (= c!953255 ((_ is EmptyLang!15285) (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292))))))

(declare-fun b!5457164 () Bool)

(assert (=> b!5457164 (= e!3379497 (= (head!11687 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326)) (c!953215 (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292)))))))

(declare-fun d!1737274 () Bool)

(assert (=> d!1737274 e!3379496))

(declare-fun c!953253 () Bool)

(assert (=> d!1737274 (= c!953253 ((_ is EmptyExpr!15285) (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292))))))

(declare-fun lt!2228394 () Bool)

(declare-fun e!3379494 () Bool)

(assert (=> d!1737274 (= lt!2228394 e!3379494)))

(declare-fun c!953254 () Bool)

(assert (=> d!1737274 (= c!953254 (isEmpty!34016 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326)))))

(assert (=> d!1737274 (validRegex!7021 (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292)))))

(assert (=> d!1737274 (= (matchR!7470 (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292)) (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326)) lt!2228394)))

(declare-fun b!5457165 () Bool)

(declare-fun res!2324279 () Bool)

(declare-fun e!3379498 () Bool)

(assert (=> b!5457165 (=> res!2324279 e!3379498)))

(assert (=> b!5457165 (= res!2324279 e!3379497)))

(declare-fun res!2324277 () Bool)

(assert (=> b!5457165 (=> (not res!2324277) (not e!3379497))))

(assert (=> b!5457165 (= res!2324277 lt!2228394)))

(declare-fun b!5457166 () Bool)

(declare-fun e!3379495 () Bool)

(declare-fun e!3379492 () Bool)

(assert (=> b!5457166 (= e!3379495 e!3379492)))

(declare-fun res!2324281 () Bool)

(assert (=> b!5457166 (=> res!2324281 e!3379492)))

(declare-fun call!399062 () Bool)

(assert (=> b!5457166 (= res!2324281 call!399062)))

(declare-fun b!5457167 () Bool)

(declare-fun res!2324278 () Bool)

(assert (=> b!5457167 (=> res!2324278 e!3379492)))

(assert (=> b!5457167 (= res!2324278 (not (isEmpty!34016 (tail!10784 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326)))))))

(declare-fun b!5457168 () Bool)

(assert (=> b!5457168 (= e!3379494 (nullable!5454 (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292))))))

(declare-fun bm!399057 () Bool)

(assert (=> bm!399057 (= call!399062 (isEmpty!34016 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326)))))

(declare-fun b!5457169 () Bool)

(assert (=> b!5457169 (= e!3379492 (not (= (head!11687 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326)) (c!953215 (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292))))))))

(declare-fun b!5457170 () Bool)

(assert (=> b!5457170 (= e!3379493 (not lt!2228394))))

(declare-fun b!5457171 () Bool)

(assert (=> b!5457171 (= e!3379498 e!3379495)))

(declare-fun res!2324280 () Bool)

(assert (=> b!5457171 (=> (not res!2324280) (not e!3379495))))

(assert (=> b!5457171 (= res!2324280 (not lt!2228394))))

(declare-fun b!5457172 () Bool)

(assert (=> b!5457172 (= e!3379496 (= lt!2228394 call!399062))))

(declare-fun b!5457173 () Bool)

(declare-fun res!2324276 () Bool)

(assert (=> b!5457173 (=> (not res!2324276) (not e!3379497))))

(assert (=> b!5457173 (= res!2324276 (not call!399062))))

(declare-fun b!5457174 () Bool)

(declare-fun res!2324275 () Bool)

(assert (=> b!5457174 (=> res!2324275 e!3379498)))

(assert (=> b!5457174 (= res!2324275 (not ((_ is ElementMatch!15285) (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292)))))))

(assert (=> b!5457174 (= e!3379493 e!3379498)))

(declare-fun b!5457175 () Bool)

(assert (=> b!5457175 (= e!3379494 (matchR!7470 (derivativeStep!4306 (ite c!953205 (ite c!953211 lt!2228350 lt!2228296) (regOne!31082 r!7292)) (head!11687 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326))) (tail!10784 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)) s!2326))))))

(assert (= (and d!1737274 c!953254) b!5457168))

(assert (= (and d!1737274 (not c!953254)) b!5457175))

(assert (= (and d!1737274 c!953253) b!5457172))

(assert (= (and d!1737274 (not c!953253)) b!5457163))

(assert (= (and b!5457163 c!953255) b!5457170))

(assert (= (and b!5457163 (not c!953255)) b!5457174))

(assert (= (and b!5457174 (not res!2324275)) b!5457165))

(assert (= (and b!5457165 res!2324277) b!5457173))

(assert (= (and b!5457173 res!2324276) b!5457162))

(assert (= (and b!5457162 res!2324274) b!5457164))

(assert (= (and b!5457165 (not res!2324279)) b!5457171))

(assert (= (and b!5457171 res!2324280) b!5457166))

(assert (= (and b!5457166 (not res!2324281)) b!5457167))

(assert (= (and b!5457167 (not res!2324278)) b!5457169))

(assert (= (or b!5457172 b!5457173 b!5457166) bm!399057))

(declare-fun m!6478056 () Bool)

(assert (=> b!5457167 m!6478056))

(assert (=> b!5457167 m!6478056))

(declare-fun m!6478058 () Bool)

(assert (=> b!5457167 m!6478058))

(declare-fun m!6478060 () Bool)

(assert (=> b!5457164 m!6478060))

(declare-fun m!6478062 () Bool)

(assert (=> b!5457168 m!6478062))

(assert (=> b!5457175 m!6478060))

(assert (=> b!5457175 m!6478060))

(declare-fun m!6478064 () Bool)

(assert (=> b!5457175 m!6478064))

(assert (=> b!5457175 m!6478056))

(assert (=> b!5457175 m!6478064))

(assert (=> b!5457175 m!6478056))

(declare-fun m!6478066 () Bool)

(assert (=> b!5457175 m!6478066))

(declare-fun m!6478068 () Bool)

(assert (=> bm!399057 m!6478068))

(assert (=> b!5457169 m!6478060))

(assert (=> d!1737274 m!6478068))

(declare-fun m!6478070 () Bool)

(assert (=> d!1737274 m!6478070))

(assert (=> b!5457162 m!6478056))

(assert (=> b!5457162 m!6478056))

(assert (=> b!5457162 m!6478058))

(assert (=> bm!398932 d!1737274))

(declare-fun d!1737276 () Bool)

(assert (=> d!1737276 (= (matchR!7470 (Concat!24130 (Concat!24130 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) lt!2228350)) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (regTwo!31082 r!7292)))) s!2326) (matchR!7470 (Concat!24130 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (Concat!24130 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) lt!2228350) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (regTwo!31082 r!7292))))) s!2326))))

(declare-fun lt!2228399 () Unit!154880)

(declare-fun choose!41445 (Regex!15285 Regex!15285 Regex!15285 List!62154) Unit!154880)

(assert (=> d!1737276 (= lt!2228399 (choose!41445 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) lt!2228350) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (regTwo!31082 r!7292))) s!2326))))

(declare-fun e!3379503 () Bool)

(assert (=> d!1737276 e!3379503))

(declare-fun res!2324290 () Bool)

(assert (=> d!1737276 (=> (not res!2324290) (not e!3379503))))

(assert (=> d!1737276 (= res!2324290 (validRegex!7021 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))))

(assert (=> d!1737276 (= (lemmaConcatAssociative!80 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) lt!2228350) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (regTwo!31082 r!7292))) s!2326) lt!2228399)))

(declare-fun b!5457184 () Bool)

(declare-fun res!2324291 () Bool)

(assert (=> b!5457184 (=> (not res!2324291) (not e!3379503))))

(assert (=> b!5457184 (= res!2324291 (validRegex!7021 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) lt!2228350)))))

(declare-fun b!5457185 () Bool)

(assert (=> b!5457185 (= e!3379503 (validRegex!7021 (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (regTwo!31082 r!7292)))))))

(assert (= (and d!1737276 res!2324290) b!5457184))

(assert (= (and b!5457184 res!2324291) b!5457185))

(declare-fun m!6478072 () Bool)

(assert (=> d!1737276 m!6478072))

(declare-fun m!6478074 () Bool)

(assert (=> d!1737276 m!6478074))

(declare-fun m!6478076 () Bool)

(assert (=> d!1737276 m!6478076))

(declare-fun m!6478078 () Bool)

(assert (=> d!1737276 m!6478078))

(declare-fun m!6478080 () Bool)

(assert (=> b!5457184 m!6478080))

(declare-fun m!6478082 () Bool)

(assert (=> b!5457185 m!6478082))

(assert (=> bm!398928 d!1737276))

(declare-fun d!1737278 () Bool)

(declare-fun choose!41446 ((InoxSet Context!9338) Int) (InoxSet Context!9338))

(assert (=> d!1737278 (= (flatMap!1012 (ite c!953204 lt!2228321 (ite c!953207 lt!2228313 (ite c!953209 lt!2228160 lt!2228279))) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 (ite c!953209 lambda!288844 lambda!288844)))) (choose!41446 (ite c!953204 lt!2228321 (ite c!953207 lt!2228313 (ite c!953209 lt!2228160 lt!2228279))) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 (ite c!953209 lambda!288844 lambda!288844)))))))

(declare-fun bs!1262632 () Bool)

(assert (= bs!1262632 d!1737278))

(declare-fun m!6478084 () Bool)

(assert (=> bs!1262632 m!6478084))

(assert (=> bm!398860 d!1737278))

(declare-fun d!1737280 () Bool)

(declare-fun c!953256 () Bool)

(assert (=> d!1737280 (= c!953256 (isEmpty!34016 s!2326))))

(declare-fun e!3379506 () Bool)

(assert (=> d!1737280 (= (matchZipper!1529 (ite c!953204 lt!2228199 lt!2228313) s!2326) e!3379506)))

(declare-fun b!5457192 () Bool)

(assert (=> b!5457192 (= e!3379506 (nullableZipper!1485 (ite c!953204 lt!2228199 lt!2228313)))))

(declare-fun b!5457193 () Bool)

(assert (=> b!5457193 (= e!3379506 (matchZipper!1529 (derivationStepZipper!1504 (ite c!953204 lt!2228199 lt!2228313) (head!11687 s!2326)) (tail!10784 s!2326)))))

(assert (= (and d!1737280 c!953256) b!5457192))

(assert (= (and d!1737280 (not c!953256)) b!5457193))

(assert (=> d!1737280 m!6478000))

(declare-fun m!6478086 () Bool)

(assert (=> b!5457192 m!6478086))

(declare-fun m!6478088 () Bool)

(assert (=> b!5457193 m!6478088))

(assert (=> b!5457193 m!6478088))

(declare-fun m!6478090 () Bool)

(assert (=> b!5457193 m!6478090))

(declare-fun m!6478092 () Bool)

(assert (=> b!5457193 m!6478092))

(assert (=> b!5457193 m!6478090))

(assert (=> b!5457193 m!6478092))

(declare-fun m!6478094 () Bool)

(assert (=> b!5457193 m!6478094))

(assert (=> bm!398965 d!1737280))

(declare-fun b!5457204 () Bool)

(declare-fun e!3379515 () (InoxSet Context!9338))

(declare-fun call!399065 () (InoxSet Context!9338))

(assert (=> b!5457204 (= e!3379515 call!399065)))

(declare-fun b!5457205 () Bool)

(declare-fun e!3379514 () (InoxSet Context!9338))

(assert (=> b!5457205 (= e!3379514 e!3379515)))

(declare-fun c!953262 () Bool)

(assert (=> b!5457205 (= c!953262 ((_ is Cons!62031) (exprs!5169 lt!2228337)))))

(declare-fun b!5457206 () Bool)

(assert (=> b!5457206 (= e!3379514 ((_ map or) call!399065 (derivationStepZipperUp!657 (Context!9339 (t!375384 (exprs!5169 lt!2228337))) (h!68478 s!2326))))))

(declare-fun b!5457207 () Bool)

(declare-fun e!3379513 () Bool)

(assert (=> b!5457207 (= e!3379513 (nullable!5454 (h!68479 (exprs!5169 lt!2228337))))))

(declare-fun b!5457208 () Bool)

(assert (=> b!5457208 (= e!3379515 ((as const (Array Context!9338 Bool)) false))))

(declare-fun d!1737282 () Bool)

(declare-fun c!953261 () Bool)

(assert (=> d!1737282 (= c!953261 e!3379513)))

(declare-fun res!2324300 () Bool)

(assert (=> d!1737282 (=> (not res!2324300) (not e!3379513))))

(assert (=> d!1737282 (= res!2324300 ((_ is Cons!62031) (exprs!5169 lt!2228337)))))

(assert (=> d!1737282 (= (derivationStepZipperUp!657 lt!2228337 (h!68478 s!2326)) e!3379514)))

(declare-fun bm!399060 () Bool)

(assert (=> bm!399060 (= call!399065 (derivationStepZipperDown!733 (h!68479 (exprs!5169 lt!2228337)) (Context!9339 (t!375384 (exprs!5169 lt!2228337))) (h!68478 s!2326)))))

(assert (= (and d!1737282 res!2324300) b!5457207))

(assert (= (and d!1737282 c!953261) b!5457206))

(assert (= (and d!1737282 (not c!953261)) b!5457205))

(assert (= (and b!5457205 c!953262) b!5457204))

(assert (= (and b!5457205 (not c!953262)) b!5457208))

(assert (= (or b!5457206 b!5457204) bm!399060))

(declare-fun m!6478096 () Bool)

(assert (=> b!5457206 m!6478096))

(declare-fun m!6478098 () Bool)

(assert (=> b!5457207 m!6478098))

(declare-fun m!6478100 () Bool)

(assert (=> bm!399060 m!6478100))

(assert (=> bm!398981 d!1737282))

(declare-fun d!1737284 () Bool)

(declare-fun c!953263 () Bool)

(assert (=> d!1737284 (= c!953263 (isEmpty!34016 (t!375383 s!2326)))))

(declare-fun e!3379516 () Bool)

(assert (=> d!1737284 (= (matchZipper!1529 (ite c!953204 ((_ map or) lt!2228204 lt!2228166) lt!2228315) (t!375383 s!2326)) e!3379516)))

(declare-fun b!5457209 () Bool)

(assert (=> b!5457209 (= e!3379516 (nullableZipper!1485 (ite c!953204 ((_ map or) lt!2228204 lt!2228166) lt!2228315)))))

(declare-fun b!5457210 () Bool)

(assert (=> b!5457210 (= e!3379516 (matchZipper!1529 (derivationStepZipper!1504 (ite c!953204 ((_ map or) lt!2228204 lt!2228166) lt!2228315) (head!11687 (t!375383 s!2326))) (tail!10784 (t!375383 s!2326))))))

(assert (= (and d!1737284 c!953263) b!5457209))

(assert (= (and d!1737284 (not c!953263)) b!5457210))

(declare-fun m!6478102 () Bool)

(assert (=> d!1737284 m!6478102))

(declare-fun m!6478104 () Bool)

(assert (=> b!5457209 m!6478104))

(declare-fun m!6478106 () Bool)

(assert (=> b!5457210 m!6478106))

(assert (=> b!5457210 m!6478106))

(declare-fun m!6478108 () Bool)

(assert (=> b!5457210 m!6478108))

(declare-fun m!6478110 () Bool)

(assert (=> b!5457210 m!6478110))

(assert (=> b!5457210 m!6478108))

(assert (=> b!5457210 m!6478110))

(declare-fun m!6478112 () Bool)

(assert (=> b!5457210 m!6478112))

(assert (=> bm!398900 d!1737284))

(declare-fun d!1737286 () Bool)

(declare-fun isEmpty!34018 (Option!15396) Bool)

(assert (=> d!1737286 (= (isDefined!12099 (ite c!953207 call!398909 (ite c!953209 call!399017 (ite c!953211 lt!2228304 lt!2228352)))) (not (isEmpty!34018 (ite c!953207 call!398909 (ite c!953209 call!399017 (ite c!953211 lt!2228304 lt!2228352))))))))

(declare-fun bs!1262640 () Bool)

(assert (= bs!1262640 d!1737286))

(declare-fun m!6478114 () Bool)

(assert (=> bs!1262640 m!6478114))

(assert (=> bm!398914 d!1737286))

(declare-fun b!5457211 () Bool)

(declare-fun e!3379519 () (InoxSet Context!9338))

(declare-fun call!399066 () (InoxSet Context!9338))

(assert (=> b!5457211 (= e!3379519 call!399066)))

(declare-fun b!5457212 () Bool)

(declare-fun e!3379518 () (InoxSet Context!9338))

(assert (=> b!5457212 (= e!3379518 e!3379519)))

(declare-fun c!953265 () Bool)

(assert (=> b!5457212 (= c!953265 ((_ is Cons!62031) (exprs!5169 (ite c!953209 lt!2228214 lt!2228309))))))

(declare-fun b!5457213 () Bool)

(assert (=> b!5457213 (= e!3379518 ((_ map or) call!399066 (derivationStepZipperUp!657 (Context!9339 (t!375384 (exprs!5169 (ite c!953209 lt!2228214 lt!2228309)))) (h!68478 s!2326))))))

(declare-fun e!3379517 () Bool)

(declare-fun b!5457214 () Bool)

(assert (=> b!5457214 (= e!3379517 (nullable!5454 (h!68479 (exprs!5169 (ite c!953209 lt!2228214 lt!2228309)))))))

(declare-fun b!5457215 () Bool)

(assert (=> b!5457215 (= e!3379519 ((as const (Array Context!9338 Bool)) false))))

(declare-fun d!1737288 () Bool)

(declare-fun c!953264 () Bool)

(assert (=> d!1737288 (= c!953264 e!3379517)))

(declare-fun res!2324301 () Bool)

(assert (=> d!1737288 (=> (not res!2324301) (not e!3379517))))

(assert (=> d!1737288 (= res!2324301 ((_ is Cons!62031) (exprs!5169 (ite c!953209 lt!2228214 lt!2228309))))))

(assert (=> d!1737288 (= (derivationStepZipperUp!657 (ite c!953209 lt!2228214 lt!2228309) (h!68478 s!2326)) e!3379518)))

(declare-fun bm!399061 () Bool)

(assert (=> bm!399061 (= call!399066 (derivationStepZipperDown!733 (h!68479 (exprs!5169 (ite c!953209 lt!2228214 lt!2228309))) (Context!9339 (t!375384 (exprs!5169 (ite c!953209 lt!2228214 lt!2228309)))) (h!68478 s!2326)))))

(assert (= (and d!1737288 res!2324301) b!5457214))

(assert (= (and d!1737288 c!953264) b!5457213))

(assert (= (and d!1737288 (not c!953264)) b!5457212))

(assert (= (and b!5457212 c!953265) b!5457211))

(assert (= (and b!5457212 (not c!953265)) b!5457215))

(assert (= (or b!5457213 b!5457211) bm!399061))

(declare-fun m!6478116 () Bool)

(assert (=> b!5457213 m!6478116))

(declare-fun m!6478118 () Bool)

(assert (=> b!5457214 m!6478118))

(declare-fun m!6478120 () Bool)

(assert (=> bm!399061 m!6478120))

(assert (=> bm!398933 d!1737288))

(declare-fun c!953282 () Bool)

(declare-fun c!953283 () Bool)

(declare-fun bm!399076 () Bool)

(declare-fun call!399083 () List!62155)

(declare-fun $colon$colon!1535 (List!62155 Regex!15285) List!62155)

(assert (=> bm!399076 (= call!399083 ($colon$colon!1535 (exprs!5169 (ite c!953204 lt!2228337 lt!2228338)) (ite (or c!953282 c!953283) (regTwo!31082 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))) (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))))))))

(declare-fun bm!399077 () Bool)

(declare-fun call!399085 () List!62155)

(assert (=> bm!399077 (= call!399085 call!399083)))

(declare-fun b!5457266 () Bool)

(declare-fun e!3379547 () (InoxSet Context!9338))

(declare-fun call!399084 () (InoxSet Context!9338))

(assert (=> b!5457266 (= e!3379547 call!399084)))

(declare-fun b!5457267 () Bool)

(declare-fun e!3379546 () (InoxSet Context!9338))

(declare-fun call!399082 () (InoxSet Context!9338))

(declare-fun call!399081 () (InoxSet Context!9338))

(assert (=> b!5457267 (= e!3379546 ((_ map or) call!399082 call!399081))))

(declare-fun b!5457268 () Bool)

(declare-fun e!3379548 () Bool)

(assert (=> b!5457268 (= c!953282 e!3379548)))

(declare-fun res!2324320 () Bool)

(assert (=> b!5457268 (=> (not res!2324320) (not e!3379548))))

(assert (=> b!5457268 (= res!2324320 ((_ is Concat!24130) (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))))))

(declare-fun e!3379549 () (InoxSet Context!9338))

(assert (=> b!5457268 (= e!3379546 e!3379549)))

(declare-fun b!5457269 () Bool)

(declare-fun e!3379550 () (InoxSet Context!9338))

(assert (=> b!5457269 (= e!3379550 call!399084)))

(declare-fun b!5457270 () Bool)

(assert (=> b!5457270 (= e!3379549 e!3379547)))

(assert (=> b!5457270 (= c!953283 ((_ is Concat!24130) (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))))))

(declare-fun d!1737290 () Bool)

(declare-fun c!953286 () Bool)

(assert (=> d!1737290 (= c!953286 (and ((_ is ElementMatch!15285) (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))) (= (c!953215 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))) (h!68478 s!2326))))))

(declare-fun e!3379551 () (InoxSet Context!9338))

(assert (=> d!1737290 (= (derivationStepZipperDown!733 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (ite c!953204 lt!2228337 lt!2228338) (h!68478 s!2326)) e!3379551)))

(declare-fun bm!399078 () Bool)

(declare-fun call!399086 () (InoxSet Context!9338))

(assert (=> bm!399078 (= call!399084 call!399086)))

(declare-fun c!953284 () Bool)

(declare-fun bm!399079 () Bool)

(assert (=> bm!399079 (= call!399081 (derivationStepZipperDown!733 (ite c!953284 (regTwo!31083 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))) (ite c!953282 (regTwo!31082 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))) (ite c!953283 (regOne!31082 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))) (reg!15614 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))))))) (ite (or c!953284 c!953282) (ite c!953204 lt!2228337 lt!2228338) (Context!9339 call!399085)) (h!68478 s!2326)))))

(declare-fun bm!399080 () Bool)

(assert (=> bm!399080 (= call!399082 (derivationStepZipperDown!733 (ite c!953284 (regOne!31083 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))) (regOne!31082 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))))) (ite c!953284 (ite c!953204 lt!2228337 lt!2228338) (Context!9339 call!399083)) (h!68478 s!2326)))))

(declare-fun b!5457271 () Bool)

(assert (=> b!5457271 (= e!3379550 ((as const (Array Context!9338 Bool)) false))))

(declare-fun b!5457272 () Bool)

(assert (=> b!5457272 (= e!3379548 (nullable!5454 (regOne!31082 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))))))))

(declare-fun bm!399081 () Bool)

(assert (=> bm!399081 (= call!399086 call!399081)))

(declare-fun b!5457273 () Bool)

(assert (=> b!5457273 (= e!3379549 ((_ map or) call!399082 call!399086))))

(declare-fun b!5457274 () Bool)

(assert (=> b!5457274 (= e!3379551 (store ((as const (Array Context!9338 Bool)) false) (ite c!953204 lt!2228337 lt!2228338) true))))

(declare-fun b!5457275 () Bool)

(declare-fun c!953285 () Bool)

(assert (=> b!5457275 (= c!953285 ((_ is Star!15285) (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))))))

(assert (=> b!5457275 (= e!3379547 e!3379550)))

(declare-fun b!5457276 () Bool)

(assert (=> b!5457276 (= e!3379551 e!3379546)))

(assert (=> b!5457276 (= c!953284 ((_ is Union!15285) (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))))))

(assert (= (and d!1737290 c!953286) b!5457274))

(assert (= (and d!1737290 (not c!953286)) b!5457276))

(assert (= (and b!5457276 c!953284) b!5457267))

(assert (= (and b!5457276 (not c!953284)) b!5457268))

(assert (= (and b!5457268 res!2324320) b!5457272))

(assert (= (and b!5457268 c!953282) b!5457273))

(assert (= (and b!5457268 (not c!953282)) b!5457270))

(assert (= (and b!5457270 c!953283) b!5457266))

(assert (= (and b!5457270 (not c!953283)) b!5457275))

(assert (= (and b!5457275 c!953285) b!5457269))

(assert (= (and b!5457275 (not c!953285)) b!5457271))

(assert (= (or b!5457266 b!5457269) bm!399077))

(assert (= (or b!5457266 b!5457269) bm!399078))

(assert (= (or b!5457273 bm!399077) bm!399076))

(assert (= (or b!5457273 bm!399078) bm!399081))

(assert (= (or b!5457267 bm!399081) bm!399079))

(assert (= (or b!5457267 b!5457273) bm!399080))

(declare-fun m!6478130 () Bool)

(assert (=> bm!399079 m!6478130))

(declare-fun m!6478132 () Bool)

(assert (=> b!5457274 m!6478132))

(declare-fun m!6478134 () Bool)

(assert (=> bm!399080 m!6478134))

(declare-fun m!6478136 () Bool)

(assert (=> b!5457272 m!6478136))

(declare-fun m!6478138 () Bool)

(assert (=> bm!399076 m!6478138))

(assert (=> bm!399008 d!1737290))

(declare-fun d!1737294 () Bool)

(assert (=> d!1737294 (= (get!21392 (ite c!953211 lt!2228343 lt!2228352)) (v!51424 (ite c!953211 lt!2228343 lt!2228352)))))

(assert (=> bm!398865 d!1737294))

(declare-fun b!5457291 () Bool)

(declare-fun res!2324329 () Bool)

(declare-fun e!3379564 () Bool)

(assert (=> b!5457291 (=> (not res!2324329) (not e!3379564))))

(assert (=> b!5457291 (= res!2324329 (isEmpty!34016 (tail!10784 s!2326)))))

(declare-fun b!5457292 () Bool)

(declare-fun e!3379563 () Bool)

(declare-fun e!3379560 () Bool)

(assert (=> b!5457292 (= e!3379563 e!3379560)))

(declare-fun c!953292 () Bool)

(assert (=> b!5457292 (= c!953292 ((_ is EmptyLang!15285) (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280)))))))

(declare-fun b!5457293 () Bool)

(assert (=> b!5457293 (= e!3379564 (= (head!11687 s!2326) (c!953215 (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280))))))))

(declare-fun d!1737296 () Bool)

(assert (=> d!1737296 e!3379563))

(declare-fun c!953290 () Bool)

(assert (=> d!1737296 (= c!953290 ((_ is EmptyExpr!15285) (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280)))))))

(declare-fun lt!2228404 () Bool)

(declare-fun e!3379561 () Bool)

(assert (=> d!1737296 (= lt!2228404 e!3379561)))

(declare-fun c!953291 () Bool)

(assert (=> d!1737296 (= c!953291 (isEmpty!34016 s!2326))))

(assert (=> d!1737296 (validRegex!7021 (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280))))))

(assert (=> d!1737296 (= (matchR!7470 (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280))) s!2326) lt!2228404)))

(declare-fun b!5457294 () Bool)

(declare-fun res!2324334 () Bool)

(declare-fun e!3379565 () Bool)

(assert (=> b!5457294 (=> res!2324334 e!3379565)))

(assert (=> b!5457294 (= res!2324334 e!3379564)))

(declare-fun res!2324332 () Bool)

(assert (=> b!5457294 (=> (not res!2324332) (not e!3379564))))

(assert (=> b!5457294 (= res!2324332 lt!2228404)))

(declare-fun b!5457295 () Bool)

(declare-fun e!3379562 () Bool)

(declare-fun e!3379559 () Bool)

(assert (=> b!5457295 (= e!3379562 e!3379559)))

(declare-fun res!2324336 () Bool)

(assert (=> b!5457295 (=> res!2324336 e!3379559)))

(declare-fun call!399088 () Bool)

(assert (=> b!5457295 (= res!2324336 call!399088)))

(declare-fun b!5457296 () Bool)

(declare-fun res!2324333 () Bool)

(assert (=> b!5457296 (=> res!2324333 e!3379559)))

(assert (=> b!5457296 (= res!2324333 (not (isEmpty!34016 (tail!10784 s!2326))))))

(declare-fun b!5457297 () Bool)

(assert (=> b!5457297 (= e!3379561 (nullable!5454 (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280)))))))

(declare-fun bm!399083 () Bool)

(assert (=> bm!399083 (= call!399088 (isEmpty!34016 s!2326))))

(declare-fun b!5457298 () Bool)

(assert (=> b!5457298 (= e!3379559 (not (= (head!11687 s!2326) (c!953215 (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280)))))))))

(declare-fun b!5457299 () Bool)

(assert (=> b!5457299 (= e!3379560 (not lt!2228404))))

(declare-fun b!5457300 () Bool)

(assert (=> b!5457300 (= e!3379565 e!3379562)))

(declare-fun res!2324335 () Bool)

(assert (=> b!5457300 (=> (not res!2324335) (not e!3379562))))

(assert (=> b!5457300 (= res!2324335 (not lt!2228404))))

(declare-fun b!5457301 () Bool)

(assert (=> b!5457301 (= e!3379563 (= lt!2228404 call!399088))))

(declare-fun b!5457302 () Bool)

(declare-fun res!2324331 () Bool)

(assert (=> b!5457302 (=> (not res!2324331) (not e!3379564))))

(assert (=> b!5457302 (= res!2324331 (not call!399088))))

(declare-fun b!5457303 () Bool)

(declare-fun res!2324330 () Bool)

(assert (=> b!5457303 (=> res!2324330 e!3379565)))

(assert (=> b!5457303 (= res!2324330 (not ((_ is ElementMatch!15285) (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280))))))))

(assert (=> b!5457303 (= e!3379560 e!3379565)))

(declare-fun b!5457304 () Bool)

(assert (=> b!5457304 (= e!3379561 (matchR!7470 (derivativeStep!4306 (ite c!953204 lt!2228229 (ite c!953207 (Concat!24130 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) lt!2228361) (ite c!953209 lt!2228281 lt!2228280))) (head!11687 s!2326)) (tail!10784 s!2326)))))

(assert (= (and d!1737296 c!953291) b!5457297))

(assert (= (and d!1737296 (not c!953291)) b!5457304))

(assert (= (and d!1737296 c!953290) b!5457301))

(assert (= (and d!1737296 (not c!953290)) b!5457292))

(assert (= (and b!5457292 c!953292) b!5457299))

(assert (= (and b!5457292 (not c!953292)) b!5457303))

(assert (= (and b!5457303 (not res!2324330)) b!5457294))

(assert (= (and b!5457294 res!2324332) b!5457302))

(assert (= (and b!5457302 res!2324331) b!5457291))

(assert (= (and b!5457291 res!2324329) b!5457293))

(assert (= (and b!5457294 (not res!2324334)) b!5457300))

(assert (= (and b!5457300 res!2324335) b!5457295))

(assert (= (and b!5457295 (not res!2324336)) b!5457296))

(assert (= (and b!5457296 (not res!2324333)) b!5457298))

(assert (= (or b!5457301 b!5457302 b!5457295) bm!399083))

(assert (=> b!5457296 m!6478092))

(assert (=> b!5457296 m!6478092))

(declare-fun m!6478140 () Bool)

(assert (=> b!5457296 m!6478140))

(assert (=> b!5457293 m!6478088))

(declare-fun m!6478144 () Bool)

(assert (=> b!5457297 m!6478144))

(assert (=> b!5457304 m!6478088))

(assert (=> b!5457304 m!6478088))

(declare-fun m!6478152 () Bool)

(assert (=> b!5457304 m!6478152))

(assert (=> b!5457304 m!6478092))

(assert (=> b!5457304 m!6478152))

(assert (=> b!5457304 m!6478092))

(declare-fun m!6478160 () Bool)

(assert (=> b!5457304 m!6478160))

(assert (=> bm!399083 m!6478000))

(assert (=> b!5457298 m!6478088))

(assert (=> d!1737296 m!6478000))

(declare-fun m!6478162 () Bool)

(assert (=> d!1737296 m!6478162))

(assert (=> b!5457291 m!6478092))

(assert (=> b!5457291 m!6478092))

(assert (=> b!5457291 m!6478140))

(assert (=> bm!398888 d!1737296))

(declare-fun bs!1262643 () Bool)

(declare-fun d!1737298 () Bool)

(assert (= bs!1262643 (and d!1737298 b!5456979)))

(declare-fun lambda!288887 () Int)

(assert (=> bs!1262643 (= lambda!288887 lambda!288858)))

(declare-fun bs!1262644 () Bool)

(assert (= bs!1262644 (and d!1737298 b!5456993)))

(assert (=> bs!1262644 (= lambda!288887 lambda!288860)))

(declare-fun bs!1262645 () Bool)

(assert (= bs!1262645 (and d!1737298 b!5456989)))

(assert (=> bs!1262645 (= lambda!288887 lambda!288869)))

(declare-fun bs!1262646 () Bool)

(assert (= bs!1262646 (and d!1737298 d!1737262)))

(assert (=> bs!1262646 (= lambda!288887 lambda!288878)))

(declare-fun b!5457340 () Bool)

(declare-fun e!3379592 () Bool)

(declare-fun lt!2228410 () Regex!15285)

(declare-fun isConcat!540 (Regex!15285) Bool)

(assert (=> b!5457340 (= e!3379592 (isConcat!540 lt!2228410))))

(declare-fun e!3379589 () Bool)

(assert (=> d!1737298 e!3379589))

(declare-fun res!2324345 () Bool)

(assert (=> d!1737298 (=> (not res!2324345) (not e!3379589))))

(assert (=> d!1737298 (= res!2324345 (validRegex!7021 lt!2228410))))

(declare-fun e!3379590 () Regex!15285)

(assert (=> d!1737298 (= lt!2228410 e!3379590)))

(declare-fun c!953310 () Bool)

(declare-fun e!3379588 () Bool)

(assert (=> d!1737298 (= c!953310 e!3379588)))

(declare-fun res!2324344 () Bool)

(assert (=> d!1737298 (=> (not res!2324344) (not e!3379588))))

(assert (=> d!1737298 (= res!2324344 ((_ is Cons!62031) (exprs!5169 (h!68480 zl!343))))))

(assert (=> d!1737298 (forall!14588 (exprs!5169 (h!68480 zl!343)) lambda!288887)))

(assert (=> d!1737298 (= (generalisedConcat!954 (exprs!5169 (h!68480 zl!343))) lt!2228410)))

(declare-fun b!5457341 () Bool)

(declare-fun e!3379591 () Bool)

(declare-fun isEmptyExpr!1017 (Regex!15285) Bool)

(assert (=> b!5457341 (= e!3379591 (isEmptyExpr!1017 lt!2228410))))

(declare-fun b!5457342 () Bool)

(declare-fun head!11689 (List!62155) Regex!15285)

(assert (=> b!5457342 (= e!3379592 (= lt!2228410 (head!11689 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun b!5457343 () Bool)

(assert (=> b!5457343 (= e!3379590 (h!68479 (exprs!5169 (h!68480 zl!343))))))

(declare-fun b!5457344 () Bool)

(declare-fun e!3379587 () Regex!15285)

(assert (=> b!5457344 (= e!3379590 e!3379587)))

(declare-fun c!953307 () Bool)

(assert (=> b!5457344 (= c!953307 ((_ is Cons!62031) (exprs!5169 (h!68480 zl!343))))))

(declare-fun b!5457345 () Bool)

(assert (=> b!5457345 (= e!3379591 e!3379592)))

(declare-fun c!953309 () Bool)

(declare-fun tail!10786 (List!62155) List!62155)

(assert (=> b!5457345 (= c!953309 (isEmpty!34017 (tail!10786 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun b!5457346 () Bool)

(assert (=> b!5457346 (= e!3379588 (isEmpty!34017 (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun b!5457347 () Bool)

(assert (=> b!5457347 (= e!3379587 (Concat!24130 (h!68479 (exprs!5169 (h!68480 zl!343))) (generalisedConcat!954 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5457348 () Bool)

(assert (=> b!5457348 (= e!3379589 e!3379591)))

(declare-fun c!953308 () Bool)

(assert (=> b!5457348 (= c!953308 (isEmpty!34017 (exprs!5169 (h!68480 zl!343))))))

(declare-fun b!5457349 () Bool)

(assert (=> b!5457349 (= e!3379587 EmptyExpr!15285)))

(assert (= (and d!1737298 res!2324344) b!5457346))

(assert (= (and d!1737298 c!953310) b!5457343))

(assert (= (and d!1737298 (not c!953310)) b!5457344))

(assert (= (and b!5457344 c!953307) b!5457347))

(assert (= (and b!5457344 (not c!953307)) b!5457349))

(assert (= (and d!1737298 res!2324345) b!5457348))

(assert (= (and b!5457348 c!953308) b!5457341))

(assert (= (and b!5457348 (not c!953308)) b!5457345))

(assert (= (and b!5457345 c!953309) b!5457342))

(assert (= (and b!5457345 (not c!953309)) b!5457340))

(declare-fun m!6478174 () Bool)

(assert (=> b!5457345 m!6478174))

(assert (=> b!5457345 m!6478174))

(declare-fun m!6478176 () Bool)

(assert (=> b!5457345 m!6478176))

(assert (=> b!5457347 m!6477826))

(declare-fun m!6478178 () Bool)

(assert (=> d!1737298 m!6478178))

(declare-fun m!6478180 () Bool)

(assert (=> d!1737298 m!6478180))

(declare-fun m!6478182 () Bool)

(assert (=> b!5457348 m!6478182))

(declare-fun m!6478184 () Bool)

(assert (=> b!5457340 m!6478184))

(declare-fun m!6478186 () Bool)

(assert (=> b!5457341 m!6478186))

(declare-fun m!6478188 () Bool)

(assert (=> b!5457342 m!6478188))

(assert (=> b!5457346 m!6477812))

(assert (=> b!5456968 d!1737298))

(declare-fun d!1737306 () Bool)

(assert (=> d!1737306 (matchR!7470 (Star!15285 (reg!15614 (regOne!31082 r!7292))) (++!13649 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291))))))

(declare-fun lt!2228416 () Unit!154880)

(declare-fun choose!41450 (Regex!15285 List!62154 List!62154) Unit!154880)

(assert (=> d!1737306 (= lt!2228416 (choose!41450 (reg!15614 (regOne!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291))))))

(assert (=> d!1737306 (validRegex!7021 (Star!15285 (reg!15614 (regOne!31082 r!7292))))))

(assert (=> d!1737306 (= (lemmaStarApp!80 (reg!15614 (regOne!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291))) lt!2228416)))

(declare-fun bs!1262649 () Bool)

(assert (= bs!1262649 d!1737306))

(declare-fun m!6478210 () Bool)

(assert (=> bs!1262649 m!6478210))

(assert (=> bs!1262649 m!6478210))

(declare-fun m!6478212 () Bool)

(assert (=> bs!1262649 m!6478212))

(declare-fun m!6478214 () Bool)

(assert (=> bs!1262649 m!6478214))

(declare-fun m!6478216 () Bool)

(assert (=> bs!1262649 m!6478216))

(assert (=> bm!399046 d!1737306))

(declare-fun bs!1262650 () Bool)

(declare-fun d!1737314 () Bool)

(assert (= bs!1262650 (and d!1737314 b!5456993)))

(declare-fun lambda!288890 () Int)

(assert (=> bs!1262650 (= lambda!288890 lambda!288860)))

(declare-fun bs!1262651 () Bool)

(assert (= bs!1262651 (and d!1737314 d!1737262)))

(assert (=> bs!1262651 (= lambda!288890 lambda!288878)))

(declare-fun bs!1262652 () Bool)

(assert (= bs!1262652 (and d!1737314 b!5456979)))

(assert (=> bs!1262652 (= lambda!288890 lambda!288858)))

(declare-fun bs!1262653 () Bool)

(assert (= bs!1262653 (and d!1737314 b!5456989)))

(assert (=> bs!1262653 (= lambda!288890 lambda!288869)))

(declare-fun bs!1262654 () Bool)

(assert (= bs!1262654 (and d!1737314 d!1737298)))

(assert (=> bs!1262654 (= lambda!288890 lambda!288887)))

(assert (=> d!1737314 (= (inv!81459 (h!68480 zl!343)) (forall!14588 (exprs!5169 (h!68480 zl!343)) lambda!288890))))

(declare-fun bs!1262655 () Bool)

(assert (= bs!1262655 d!1737314))

(declare-fun m!6478234 () Bool)

(assert (=> bs!1262655 m!6478234))

(assert (=> b!5456954 d!1737314))

(declare-fun d!1737318 () Bool)

(declare-fun choose!41451 (Int) Bool)

(assert (=> d!1737318 (= (Exists!2466 (ite c!953207 lambda!288845 (ite c!953209 lambda!288851 (ite c!953211 lambda!288856 lambda!288865)))) (choose!41451 (ite c!953207 lambda!288845 (ite c!953209 lambda!288851 (ite c!953211 lambda!288856 lambda!288865)))))))

(declare-fun bs!1262657 () Bool)

(assert (= bs!1262657 d!1737318))

(declare-fun m!6478238 () Bool)

(assert (=> bs!1262657 m!6478238))

(assert (=> bm!399042 d!1737318))

(declare-fun d!1737322 () Bool)

(assert (=> d!1737322 (= (Exists!2466 (ite c!953207 lambda!288847 (ite c!953209 lambda!288849 (ite c!953211 lambda!288855 (ite c!953206 lambda!288862 lambda!288866))))) (choose!41451 (ite c!953207 lambda!288847 (ite c!953209 lambda!288849 (ite c!953211 lambda!288855 (ite c!953206 lambda!288862 lambda!288866))))))))

(declare-fun bs!1262658 () Bool)

(assert (= bs!1262658 d!1737322))

(declare-fun m!6478240 () Bool)

(assert (=> bs!1262658 m!6478240))

(assert (=> bm!398867 d!1737322))

(declare-fun d!1737324 () Bool)

(assert (=> d!1737324 (= (flatMap!1012 lt!2228173 lambda!288844) (choose!41446 lt!2228173 lambda!288844))))

(declare-fun bs!1262659 () Bool)

(assert (= bs!1262659 d!1737324))

(declare-fun m!6478242 () Bool)

(assert (=> bs!1262659 m!6478242))

(assert (=> b!5456977 d!1737324))

(declare-fun bs!1262660 () Bool)

(declare-fun d!1737326 () Bool)

(assert (= bs!1262660 (and d!1737326 b!5456979)))

(declare-fun lambda!288893 () Int)

(assert (=> bs!1262660 (not (= lambda!288893 lambda!288857))))

(declare-fun bs!1262661 () Bool)

(assert (= bs!1262661 (and d!1737326 b!5457008)))

(assert (=> bs!1262661 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228361)) (= lambda!288893 lambda!288847))))

(declare-fun bs!1262662 () Bool)

(assert (= bs!1262662 (and d!1737326 b!5457132)))

(assert (=> bs!1262662 (not (= lambda!288893 lambda!288875))))

(declare-fun bs!1262663 () Bool)

(assert (= bs!1262663 (and d!1737326 b!5456961)))

(assert (=> bs!1262663 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228185)) (= lambda!288893 lambda!288851))))

(declare-fun bs!1262664 () Bool)

(assert (= bs!1262664 (and d!1737326 b!5456970)))

(assert (=> bs!1262664 (not (= lambda!288893 lambda!288867))))

(declare-fun bs!1262665 () Bool)

(assert (= bs!1262665 (and d!1737326 b!5456993)))

(assert (=> bs!1262665 (not (= lambda!288893 lambda!288864))))

(assert (=> bs!1262663 (not (= lambda!288893 lambda!288852))))

(assert (=> bs!1262661 (not (= lambda!288893 lambda!288846))))

(declare-fun bs!1262666 () Bool)

(assert (= bs!1262666 (and d!1737326 b!5456966)))

(assert (=> bs!1262666 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) lt!2228350) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288893 lambda!288853))))

(assert (=> bs!1262664 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) Nil!62030) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288893 lambda!288866))))

(assert (=> bs!1262663 (not (= lambda!288893 lambda!288850))))

(declare-fun bs!1262667 () Bool)

(assert (= bs!1262667 (and d!1737326 b!5457009)))

(assert (=> bs!1262667 (not (= lambda!288893 lambda!288843))))

(assert (=> bs!1262665 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (_1!35787 lt!2228245)) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288893 lambda!288863))))

(assert (=> bs!1262667 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288893 lambda!288842))))

(assert (=> bs!1262660 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (_1!35787 lt!2228239)) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288893 lambda!288855))))

(assert (=> bs!1262664 (not (= lambda!288893 lambda!288868))))

(assert (=> bs!1262661 (not (= lambda!288893 lambda!288848))))

(declare-fun bs!1262668 () Bool)

(assert (= bs!1262668 (and d!1737326 b!5457138)))

(assert (=> bs!1262668 (not (= lambda!288893 lambda!288874))))

(assert (=> bs!1262660 (not (= lambda!288893 lambda!288856))))

(assert (=> bs!1262661 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228179)) (= lambda!288893 lambda!288845))))

(assert (=> bs!1262665 (not (= lambda!288893 lambda!288862))))

(assert (=> bs!1262665 (not (= lambda!288893 lambda!288865))))

(assert (=> bs!1262663 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228281)) (= lambda!288893 lambda!288849))))

(assert (=> bs!1262665 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) lt!2228296) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288893 lambda!288861))))

(assert (=> bs!1262666 (not (= lambda!288893 lambda!288854))))

(assert (=> d!1737326 true))

(assert (=> d!1737326 true))

(assert (=> d!1737326 true))

(assert (=> d!1737326 (= (isDefined!12099 (findConcatSeparation!1810 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) Nil!62030 (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030))) (Exists!2466 lambda!288893))))

(declare-fun lt!2228423 () Unit!154880)

(declare-fun choose!41452 (Regex!15285 Regex!15285 List!62154) Unit!154880)

(assert (=> d!1737326 (= lt!2228423 (choose!41452 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)))))

(assert (=> d!1737326 (validRegex!7021 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))))))

(assert (=> d!1737326 (= (lemmaFindConcatSeparationEquivalentToExists!1574 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)) lt!2228423)))

(declare-fun bs!1262669 () Bool)

(assert (= bs!1262669 d!1737326))

(declare-fun m!6478258 () Bool)

(assert (=> bs!1262669 m!6478258))

(declare-fun m!6478260 () Bool)

(assert (=> bs!1262669 m!6478260))

(declare-fun m!6478262 () Bool)

(assert (=> bs!1262669 m!6478262))

(declare-fun m!6478264 () Bool)

(assert (=> bs!1262669 m!6478264))

(assert (=> bs!1262669 m!6478262))

(declare-fun m!6478266 () Bool)

(assert (=> bs!1262669 m!6478266))

(assert (=> bm!398969 d!1737326))

(declare-fun b!5457393 () Bool)

(declare-fun e!3379613 () Bool)

(declare-fun lt!2228426 () List!62154)

(assert (=> b!5457393 (= e!3379613 (or (not (= (ite c!953206 (_2!35787 lt!2228291) s!2326) Nil!62030)) (= lt!2228426 (ite c!953206 (_1!35787 lt!2228291) Nil!62030))))))

(declare-fun d!1737330 () Bool)

(assert (=> d!1737330 e!3379613))

(declare-fun res!2324372 () Bool)

(assert (=> d!1737330 (=> (not res!2324372) (not e!3379613))))

(assert (=> d!1737330 (= res!2324372 (= (content!11166 lt!2228426) ((_ map or) (content!11166 (ite c!953206 (_1!35787 lt!2228291) Nil!62030)) (content!11166 (ite c!953206 (_2!35787 lt!2228291) s!2326)))))))

(declare-fun e!3379614 () List!62154)

(assert (=> d!1737330 (= lt!2228426 e!3379614)))

(declare-fun c!953318 () Bool)

(assert (=> d!1737330 (= c!953318 ((_ is Nil!62030) (ite c!953206 (_1!35787 lt!2228291) Nil!62030)))))

(assert (=> d!1737330 (= (++!13649 (ite c!953206 (_1!35787 lt!2228291) Nil!62030) (ite c!953206 (_2!35787 lt!2228291) s!2326)) lt!2228426)))

(declare-fun b!5457390 () Bool)

(assert (=> b!5457390 (= e!3379614 (ite c!953206 (_2!35787 lt!2228291) s!2326))))

(declare-fun b!5457391 () Bool)

(assert (=> b!5457391 (= e!3379614 (Cons!62030 (h!68478 (ite c!953206 (_1!35787 lt!2228291) Nil!62030)) (++!13649 (t!375383 (ite c!953206 (_1!35787 lt!2228291) Nil!62030)) (ite c!953206 (_2!35787 lt!2228291) s!2326))))))

(declare-fun b!5457392 () Bool)

(declare-fun res!2324373 () Bool)

(assert (=> b!5457392 (=> (not res!2324373) (not e!3379613))))

(assert (=> b!5457392 (= res!2324373 (= (size!39901 lt!2228426) (+ (size!39901 (ite c!953206 (_1!35787 lt!2228291) Nil!62030)) (size!39901 (ite c!953206 (_2!35787 lt!2228291) s!2326)))))))

(assert (= (and d!1737330 c!953318) b!5457390))

(assert (= (and d!1737330 (not c!953318)) b!5457391))

(assert (= (and d!1737330 res!2324372) b!5457392))

(assert (= (and b!5457392 res!2324373) b!5457393))

(declare-fun m!6478268 () Bool)

(assert (=> d!1737330 m!6478268))

(declare-fun m!6478270 () Bool)

(assert (=> d!1737330 m!6478270))

(declare-fun m!6478272 () Bool)

(assert (=> d!1737330 m!6478272))

(declare-fun m!6478274 () Bool)

(assert (=> b!5457391 m!6478274))

(declare-fun m!6478276 () Bool)

(assert (=> b!5457392 m!6478276))

(declare-fun m!6478278 () Bool)

(assert (=> b!5457392 m!6478278))

(declare-fun m!6478280 () Bool)

(assert (=> b!5457392 m!6478280))

(assert (=> bm!399014 d!1737330))

(declare-fun d!1737332 () Bool)

(declare-fun nullableFct!1637 (Regex!15285) Bool)

(assert (=> d!1737332 (= (nullable!5454 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))) (nullableFct!1637 (ite c!953204 (regTwo!31083 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292)))))))

(declare-fun bs!1262670 () Bool)

(assert (= bs!1262670 d!1737332))

(declare-fun m!6478282 () Bool)

(assert (=> bs!1262670 m!6478282))

(assert (=> bm!398923 d!1737332))

(declare-fun d!1737334 () Bool)

(assert (=> d!1737334 (= (Exists!2466 (ite c!953207 lambda!288845 (ite c!953209 lambda!288852 (ite c!953211 lambda!288855 lambda!288863)))) (choose!41451 (ite c!953207 lambda!288845 (ite c!953209 lambda!288852 (ite c!953211 lambda!288855 lambda!288863)))))))

(declare-fun bs!1262671 () Bool)

(assert (= bs!1262671 d!1737334))

(declare-fun m!6478284 () Bool)

(assert (=> bs!1262671 m!6478284))

(assert (=> bm!398856 d!1737334))

(declare-fun d!1737336 () Bool)

(assert (=> d!1737336 (= (isDefined!12099 (ite c!953209 call!398977 (ite c!953211 lt!2228343 (ite c!953206 lt!2228170 call!399042)))) (not (isEmpty!34018 (ite c!953209 call!398977 (ite c!953211 lt!2228343 (ite c!953206 lt!2228170 call!399042))))))))

(declare-fun bs!1262672 () Bool)

(assert (= bs!1262672 d!1737336))

(declare-fun m!6478286 () Bool)

(assert (=> bs!1262672 m!6478286))

(assert (=> bm!398871 d!1737336))

(declare-fun c!953319 () Bool)

(declare-fun d!1737338 () Bool)

(assert (=> d!1737338 (= c!953319 (isEmpty!34016 (ite c!953204 s!2326 (ite c!953207 (t!375383 s!2326) (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326)))))))

(declare-fun e!3379615 () Bool)

(assert (=> d!1737338 (= (matchZipper!1529 (ite c!953204 lt!2228321 (ite c!953207 lt!2228212 (ite c!953205 (ite c!953211 (ite c!953210 z!1189 lt!2228279) (ite c!953206 lt!2228173 lt!2228168)) (ite c!953213 lt!2228191 z!1189)))) (ite c!953204 s!2326 (ite c!953207 (t!375383 s!2326) (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326)))) e!3379615)))

(declare-fun b!5457394 () Bool)

(assert (=> b!5457394 (= e!3379615 (nullableZipper!1485 (ite c!953204 lt!2228321 (ite c!953207 lt!2228212 (ite c!953205 (ite c!953211 (ite c!953210 z!1189 lt!2228279) (ite c!953206 lt!2228173 lt!2228168)) (ite c!953213 lt!2228191 z!1189))))))))

(declare-fun b!5457395 () Bool)

(assert (=> b!5457395 (= e!3379615 (matchZipper!1529 (derivationStepZipper!1504 (ite c!953204 lt!2228321 (ite c!953207 lt!2228212 (ite c!953205 (ite c!953211 (ite c!953210 z!1189 lt!2228279) (ite c!953206 lt!2228173 lt!2228168)) (ite c!953213 lt!2228191 z!1189)))) (head!11687 (ite c!953204 s!2326 (ite c!953207 (t!375383 s!2326) (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326))))) (tail!10784 (ite c!953204 s!2326 (ite c!953207 (t!375383 s!2326) (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326))))))))

(assert (= (and d!1737338 c!953319) b!5457394))

(assert (= (and d!1737338 (not c!953319)) b!5457395))

(declare-fun m!6478288 () Bool)

(assert (=> d!1737338 m!6478288))

(declare-fun m!6478290 () Bool)

(assert (=> b!5457394 m!6478290))

(declare-fun m!6478292 () Bool)

(assert (=> b!5457395 m!6478292))

(assert (=> b!5457395 m!6478292))

(declare-fun m!6478294 () Bool)

(assert (=> b!5457395 m!6478294))

(declare-fun m!6478296 () Bool)

(assert (=> b!5457395 m!6478296))

(assert (=> b!5457395 m!6478294))

(assert (=> b!5457395 m!6478296))

(declare-fun m!6478298 () Bool)

(assert (=> b!5457395 m!6478298))

(assert (=> bm!398890 d!1737338))

(declare-fun bs!1262682 () Bool)

(declare-fun d!1737340 () Bool)

(assert (= bs!1262682 (and d!1737340 b!5456979)))

(declare-fun lambda!288904 () Int)

(assert (=> bs!1262682 (not (= lambda!288904 lambda!288857))))

(declare-fun bs!1262683 () Bool)

(assert (= bs!1262683 (and d!1737340 b!5457008)))

(assert (=> bs!1262683 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228361)) (= lambda!288904 lambda!288847))))

(declare-fun bs!1262684 () Bool)

(assert (= bs!1262684 (and d!1737340 b!5457132)))

(assert (=> bs!1262684 (not (= lambda!288904 lambda!288875))))

(declare-fun bs!1262685 () Bool)

(assert (= bs!1262685 (and d!1737340 b!5456961)))

(assert (=> bs!1262685 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regTwo!31082 (regOne!31082 r!7292))) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228185)) (= lambda!288904 lambda!288851))))

(declare-fun bs!1262686 () Bool)

(assert (= bs!1262686 (and d!1737340 b!5456970)))

(assert (=> bs!1262686 (not (= lambda!288904 lambda!288867))))

(declare-fun bs!1262687 () Bool)

(assert (= bs!1262687 (and d!1737340 b!5456993)))

(assert (=> bs!1262687 (not (= lambda!288904 lambda!288864))))

(assert (=> bs!1262685 (not (= lambda!288904 lambda!288852))))

(assert (=> bs!1262683 (not (= lambda!288904 lambda!288846))))

(declare-fun bs!1262688 () Bool)

(assert (= bs!1262688 (and d!1737340 b!5456966)))

(assert (=> bs!1262688 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228350) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) (regTwo!31082 r!7292))) (= lambda!288904 lambda!288853))))

(assert (=> bs!1262686 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) Nil!62030) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228350)) (= lambda!288904 lambda!288866))))

(assert (=> bs!1262685 (not (= lambda!288904 lambda!288850))))

(declare-fun bs!1262689 () Bool)

(assert (= bs!1262689 (and d!1737340 b!5457009)))

(assert (=> bs!1262689 (not (= lambda!288904 lambda!288843))))

(assert (=> bs!1262687 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) (_1!35787 lt!2228245)) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228350)) (= lambda!288904 lambda!288863))))

(assert (=> bs!1262689 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 r!7292)) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) (regTwo!31082 r!7292))) (= lambda!288904 lambda!288842))))

(assert (=> bs!1262682 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) (_1!35787 lt!2228239)) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228350)) (= lambda!288904 lambda!288855))))

(assert (=> bs!1262686 (not (= lambda!288904 lambda!288868))))

(declare-fun bs!1262690 () Bool)

(assert (= bs!1262690 (and d!1737340 d!1737326)))

(assert (=> bs!1262690 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)) (= (reg!15614 (regOne!31082 r!7292)) (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))))) (= lambda!288904 lambda!288893))))

(assert (=> bs!1262683 (not (= lambda!288904 lambda!288848))))

(declare-fun bs!1262691 () Bool)

(assert (= bs!1262691 (and d!1737340 b!5457138)))

(assert (=> bs!1262691 (not (= lambda!288904 lambda!288874))))

(assert (=> bs!1262682 (not (= lambda!288904 lambda!288856))))

(assert (=> bs!1262683 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228179)) (= lambda!288904 lambda!288845))))

(assert (=> bs!1262687 (not (= lambda!288904 lambda!288862))))

(assert (=> bs!1262687 (not (= lambda!288904 lambda!288865))))

(assert (=> bs!1262685 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (regOne!31082 (regOne!31082 r!7292))) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228281)) (= lambda!288904 lambda!288849))))

(assert (=> bs!1262687 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326) (= (reg!15614 (regOne!31082 r!7292)) lt!2228296) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) (regTwo!31082 r!7292))) (= lambda!288904 lambda!288861))))

(assert (=> bs!1262688 (not (= lambda!288904 lambda!288854))))

(assert (=> d!1737340 true))

(assert (=> d!1737340 true))

(declare-fun lambda!288905 () Int)

(assert (=> bs!1262682 (not (= lambda!288905 lambda!288857))))

(assert (=> bs!1262683 (not (= lambda!288905 lambda!288847))))

(assert (=> bs!1262684 (not (= lambda!288905 lambda!288875))))

(assert (=> bs!1262685 (not (= lambda!288905 lambda!288851))))

(assert (=> bs!1262686 (not (= lambda!288905 lambda!288867))))

(assert (=> bs!1262687 (not (= lambda!288905 lambda!288864))))

(assert (=> bs!1262685 (not (= lambda!288905 lambda!288852))))

(assert (=> bs!1262683 (not (= lambda!288905 lambda!288846))))

(assert (=> bs!1262688 (not (= lambda!288905 lambda!288853))))

(assert (=> bs!1262686 (not (= lambda!288905 lambda!288866))))

(assert (=> bs!1262685 (not (= lambda!288905 lambda!288850))))

(assert (=> bs!1262689 (not (= lambda!288905 lambda!288843))))

(assert (=> bs!1262687 (not (= lambda!288905 lambda!288863))))

(assert (=> bs!1262689 (not (= lambda!288905 lambda!288842))))

(assert (=> bs!1262682 (not (= lambda!288905 lambda!288855))))

(declare-fun bs!1262692 () Bool)

(assert (= bs!1262692 d!1737340))

(assert (=> bs!1262692 (not (= lambda!288905 lambda!288904))))

(assert (=> bs!1262686 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) Nil!62030) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228350)) (= lambda!288905 lambda!288868))))

(assert (=> bs!1262690 (not (= lambda!288905 lambda!288893))))

(assert (=> bs!1262683 (not (= lambda!288905 lambda!288848))))

(assert (=> bs!1262691 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326) (= (reg!15614 (regOne!31082 r!7292)) (reg!15614 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= lambda!288905 lambda!288874))))

(assert (=> bs!1262682 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) (_1!35787 lt!2228239)) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228350)) (= lambda!288905 lambda!288856))))

(assert (=> bs!1262683 (not (= lambda!288905 lambda!288845))))

(assert (=> bs!1262687 (not (= lambda!288905 lambda!288862))))

(assert (=> bs!1262687 (= (and (= (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) (_1!35787 lt!2228245)) (= (Star!15285 (reg!15614 (regOne!31082 r!7292))) lt!2228350)) (= lambda!288905 lambda!288865))))

(assert (=> bs!1262685 (not (= lambda!288905 lambda!288849))))

(assert (=> bs!1262687 (not (= lambda!288905 lambda!288861))))

(assert (=> bs!1262688 (not (= lambda!288905 lambda!288854))))

(assert (=> d!1737340 true))

(assert (=> d!1737340 true))

(assert (=> d!1737340 (= (Exists!2466 lambda!288904) (Exists!2466 lambda!288905))))

(declare-fun lt!2228430 () Unit!154880)

(declare-fun choose!41456 (Regex!15285 List!62154) Unit!154880)

(assert (=> d!1737340 (= lt!2228430 (choose!41456 (reg!15614 (regOne!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))))))

(assert (=> d!1737340 (validRegex!7021 (reg!15614 (regOne!31082 r!7292)))))

(assert (=> d!1737340 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!442 (reg!15614 (regOne!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) lt!2228430)))

(declare-fun m!6478308 () Bool)

(assert (=> bs!1262692 m!6478308))

(declare-fun m!6478310 () Bool)

(assert (=> bs!1262692 m!6478310))

(declare-fun m!6478312 () Bool)

(assert (=> bs!1262692 m!6478312))

(declare-fun m!6478314 () Bool)

(assert (=> bs!1262692 m!6478314))

(assert (=> bm!398912 d!1737340))

(declare-fun bs!1262693 () Bool)

(declare-fun b!5457434 () Bool)

(assert (= bs!1262693 (and b!5457434 b!5456979)))

(declare-fun lambda!288906 () Int)

(assert (=> bs!1262693 (not (= lambda!288906 lambda!288857))))

(declare-fun bs!1262694 () Bool)

(assert (= bs!1262694 (and b!5457434 b!5457008)))

(assert (=> bs!1262694 (not (= lambda!288906 lambda!288847))))

(declare-fun bs!1262695 () Bool)

(assert (= bs!1262695 (and b!5457434 b!5457132)))

(assert (=> bs!1262695 (not (= lambda!288906 lambda!288875))))

(declare-fun bs!1262696 () Bool)

(assert (= bs!1262696 (and b!5457434 b!5456961)))

(assert (=> bs!1262696 (not (= lambda!288906 lambda!288851))))

(declare-fun bs!1262697 () Bool)

(assert (= bs!1262697 (and b!5457434 b!5456970)))

(assert (=> bs!1262697 (not (= lambda!288906 lambda!288867))))

(declare-fun bs!1262698 () Bool)

(assert (= bs!1262698 (and b!5457434 d!1737340)))

(assert (=> bs!1262698 (= (and (= s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (reg!15614 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))) (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!288906 lambda!288905))))

(declare-fun bs!1262699 () Bool)

(assert (= bs!1262699 (and b!5457434 b!5456993)))

(assert (=> bs!1262699 (not (= lambda!288906 lambda!288864))))

(assert (=> bs!1262696 (not (= lambda!288906 lambda!288852))))

(assert (=> bs!1262694 (not (= lambda!288906 lambda!288846))))

(declare-fun bs!1262700 () Bool)

(assert (= bs!1262700 (and b!5457434 b!5456966)))

(assert (=> bs!1262700 (not (= lambda!288906 lambda!288853))))

(assert (=> bs!1262697 (not (= lambda!288906 lambda!288866))))

(assert (=> bs!1262696 (not (= lambda!288906 lambda!288850))))

(declare-fun bs!1262701 () Bool)

(assert (= bs!1262701 (and b!5457434 b!5457009)))

(assert (=> bs!1262701 (not (= lambda!288906 lambda!288843))))

(assert (=> bs!1262699 (not (= lambda!288906 lambda!288863))))

(assert (=> bs!1262701 (not (= lambda!288906 lambda!288842))))

(assert (=> bs!1262693 (not (= lambda!288906 lambda!288855))))

(assert (=> bs!1262698 (not (= lambda!288906 lambda!288904))))

(assert (=> bs!1262697 (= (and (= s!2326 Nil!62030) (= (reg!15614 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))) lt!2228350)) (= lambda!288906 lambda!288868))))

(declare-fun bs!1262702 () Bool)

(assert (= bs!1262702 (and b!5457434 d!1737326)))

(assert (=> bs!1262702 (not (= lambda!288906 lambda!288893))))

(assert (=> bs!1262694 (not (= lambda!288906 lambda!288848))))

(declare-fun bs!1262703 () Bool)

(assert (= bs!1262703 (and b!5457434 b!5457138)))

(assert (=> bs!1262703 (= (and (= (reg!15614 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (reg!15614 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))) (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= lambda!288906 lambda!288874))))

(assert (=> bs!1262693 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (reg!15614 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))) lt!2228350)) (= lambda!288906 lambda!288856))))

(assert (=> bs!1262694 (not (= lambda!288906 lambda!288845))))

(assert (=> bs!1262699 (not (= lambda!288906 lambda!288862))))

(assert (=> bs!1262699 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (reg!15614 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))) lt!2228350)) (= lambda!288906 lambda!288865))))

(assert (=> bs!1262696 (not (= lambda!288906 lambda!288849))))

(assert (=> bs!1262699 (not (= lambda!288906 lambda!288861))))

(assert (=> bs!1262700 (not (= lambda!288906 lambda!288854))))

(assert (=> b!5457434 true))

(assert (=> b!5457434 true))

(declare-fun bs!1262704 () Bool)

(declare-fun b!5457428 () Bool)

(assert (= bs!1262704 (and b!5457428 b!5457434)))

(declare-fun lambda!288907 () Int)

(assert (=> bs!1262704 (not (= lambda!288907 lambda!288906))))

(declare-fun bs!1262705 () Bool)

(assert (= bs!1262705 (and b!5457428 b!5456979)))

(assert (=> bs!1262705 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228350)) (= lambda!288907 lambda!288857))))

(declare-fun bs!1262706 () Bool)

(assert (= bs!1262706 (and b!5457428 b!5457008)))

(assert (=> bs!1262706 (not (= lambda!288907 lambda!288847))))

(declare-fun bs!1262707 () Bool)

(assert (= bs!1262707 (and b!5457428 b!5457132)))

(assert (=> bs!1262707 (= (and (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))) (= lambda!288907 lambda!288875))))

(declare-fun bs!1262708 () Bool)

(assert (= bs!1262708 (and b!5457428 b!5456961)))

(assert (=> bs!1262708 (not (= lambda!288907 lambda!288851))))

(declare-fun bs!1262709 () Bool)

(assert (= bs!1262709 (and b!5457428 b!5456970)))

(assert (=> bs!1262709 (= (and (= s!2326 Nil!62030) (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228350)) (= lambda!288907 lambda!288867))))

(declare-fun bs!1262710 () Bool)

(assert (= bs!1262710 (and b!5457428 d!1737340)))

(assert (=> bs!1262710 (not (= lambda!288907 lambda!288905))))

(declare-fun bs!1262711 () Bool)

(assert (= bs!1262711 (and b!5457428 b!5456993)))

(assert (=> bs!1262711 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228350)) (= lambda!288907 lambda!288864))))

(assert (=> bs!1262708 (= (and (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228185)) (= lambda!288907 lambda!288852))))

(assert (=> bs!1262706 (= (and (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228179)) (= lambda!288907 lambda!288846))))

(declare-fun bs!1262712 () Bool)

(assert (= bs!1262712 (and b!5457428 b!5456966)))

(assert (=> bs!1262712 (not (= lambda!288907 lambda!288853))))

(assert (=> bs!1262709 (not (= lambda!288907 lambda!288866))))

(assert (=> bs!1262708 (= (and (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228281)) (= lambda!288907 lambda!288850))))

(declare-fun bs!1262713 () Bool)

(assert (= bs!1262713 (and b!5457428 b!5457009)))

(assert (=> bs!1262713 (= (and (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regOne!31082 r!7292)) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regTwo!31082 r!7292))) (= lambda!288907 lambda!288843))))

(assert (=> bs!1262711 (not (= lambda!288907 lambda!288863))))

(assert (=> bs!1262713 (not (= lambda!288907 lambda!288842))))

(assert (=> bs!1262705 (not (= lambda!288907 lambda!288855))))

(assert (=> bs!1262710 (not (= lambda!288907 lambda!288904))))

(assert (=> bs!1262709 (not (= lambda!288907 lambda!288868))))

(declare-fun bs!1262714 () Bool)

(assert (= bs!1262714 (and b!5457428 d!1737326)))

(assert (=> bs!1262714 (not (= lambda!288907 lambda!288893))))

(assert (=> bs!1262706 (= (and (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228361)) (= lambda!288907 lambda!288848))))

(declare-fun bs!1262715 () Bool)

(assert (= bs!1262715 (and b!5457428 b!5457138)))

(assert (=> bs!1262715 (not (= lambda!288907 lambda!288874))))

(assert (=> bs!1262705 (not (= lambda!288907 lambda!288856))))

(assert (=> bs!1262706 (not (= lambda!288907 lambda!288845))))

(assert (=> bs!1262711 (= (and (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228296) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regTwo!31082 r!7292))) (= lambda!288907 lambda!288862))))

(assert (=> bs!1262711 (not (= lambda!288907 lambda!288865))))

(assert (=> bs!1262708 (not (= lambda!288907 lambda!288849))))

(assert (=> bs!1262711 (not (= lambda!288907 lambda!288861))))

(assert (=> bs!1262712 (= (and (= (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) lt!2228350) (= (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) (regTwo!31082 r!7292))) (= lambda!288907 lambda!288854))))

(assert (=> b!5457428 true))

(assert (=> b!5457428 true))

(declare-fun b!5457424 () Bool)

(declare-fun e!3379631 () Bool)

(declare-fun e!3379630 () Bool)

(assert (=> b!5457424 (= e!3379631 e!3379630)))

(declare-fun res!2324396 () Bool)

(assert (=> b!5457424 (= res!2324396 (not ((_ is EmptyLang!15285) (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))))))

(assert (=> b!5457424 (=> (not res!2324396) (not e!3379630))))

(declare-fun b!5457425 () Bool)

(declare-fun e!3379636 () Bool)

(assert (=> b!5457425 (= e!3379636 (= s!2326 (Cons!62030 (c!953215 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) Nil!62030)))))

(declare-fun bm!399088 () Bool)

(declare-fun call!399094 () Bool)

(assert (=> bm!399088 (= call!399094 (isEmpty!34016 s!2326))))

(declare-fun b!5457426 () Bool)

(declare-fun c!953327 () Bool)

(assert (=> b!5457426 (= c!953327 ((_ is ElementMatch!15285) (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))))

(assert (=> b!5457426 (= e!3379630 e!3379636)))

(declare-fun d!1737346 () Bool)

(declare-fun c!953326 () Bool)

(assert (=> d!1737346 (= c!953326 ((_ is EmptyExpr!15285) (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))))

(assert (=> d!1737346 (= (matchRSpec!2388 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))) s!2326) e!3379631)))

(declare-fun b!5457427 () Bool)

(declare-fun e!3379633 () Bool)

(declare-fun e!3379635 () Bool)

(assert (=> b!5457427 (= e!3379633 e!3379635)))

(declare-fun res!2324395 () Bool)

(assert (=> b!5457427 (= res!2324395 (matchRSpec!2388 (regOne!31083 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) s!2326))))

(assert (=> b!5457427 (=> res!2324395 e!3379635)))

(declare-fun e!3379632 () Bool)

(declare-fun call!399093 () Bool)

(assert (=> b!5457428 (= e!3379632 call!399093)))

(declare-fun b!5457429 () Bool)

(declare-fun res!2324394 () Bool)

(declare-fun e!3379634 () Bool)

(assert (=> b!5457429 (=> res!2324394 e!3379634)))

(assert (=> b!5457429 (= res!2324394 call!399094)))

(assert (=> b!5457429 (= e!3379632 e!3379634)))

(declare-fun b!5457430 () Bool)

(assert (=> b!5457430 (= e!3379633 e!3379632)))

(declare-fun c!953324 () Bool)

(assert (=> b!5457430 (= c!953324 ((_ is Star!15285) (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))))

(declare-fun bm!399089 () Bool)

(assert (=> bm!399089 (= call!399093 (Exists!2466 (ite c!953324 lambda!288906 lambda!288907)))))

(declare-fun b!5457431 () Bool)

(assert (=> b!5457431 (= e!3379631 call!399094)))

(declare-fun b!5457432 () Bool)

(declare-fun c!953325 () Bool)

(assert (=> b!5457432 (= c!953325 ((_ is Union!15285) (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))))

(assert (=> b!5457432 (= e!3379636 e!3379633)))

(declare-fun b!5457433 () Bool)

(assert (=> b!5457433 (= e!3379635 (matchRSpec!2388 (regTwo!31083 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))) s!2326))))

(assert (=> b!5457434 (= e!3379634 call!399093)))

(assert (= (and d!1737346 c!953326) b!5457431))

(assert (= (and d!1737346 (not c!953326)) b!5457424))

(assert (= (and b!5457424 res!2324396) b!5457426))

(assert (= (and b!5457426 c!953327) b!5457425))

(assert (= (and b!5457426 (not c!953327)) b!5457432))

(assert (= (and b!5457432 c!953325) b!5457427))

(assert (= (and b!5457432 (not c!953325)) b!5457430))

(assert (= (and b!5457427 (not res!2324395)) b!5457433))

(assert (= (and b!5457430 c!953324) b!5457429))

(assert (= (and b!5457430 (not c!953324)) b!5457428))

(assert (= (and b!5457429 (not res!2324394)) b!5457434))

(assert (= (or b!5457434 b!5457428) bm!399089))

(assert (= (or b!5457431 b!5457429) bm!399088))

(assert (=> bm!399088 m!6478000))

(declare-fun m!6478340 () Bool)

(assert (=> b!5457427 m!6478340))

(declare-fun m!6478342 () Bool)

(assert (=> bm!399089 m!6478342))

(declare-fun m!6478344 () Bool)

(assert (=> b!5457433 m!6478344))

(assert (=> bm!398878 d!1737346))

(declare-fun bs!1262720 () Bool)

(declare-fun d!1737350 () Bool)

(assert (= bs!1262720 (and d!1737350 b!5457434)))

(declare-fun lambda!288912 () Int)

(assert (=> bs!1262720 (not (= lambda!288912 lambda!288906))))

(declare-fun bs!1262721 () Bool)

(assert (= bs!1262721 (and d!1737350 b!5456979)))

(assert (=> bs!1262721 (not (= lambda!288912 lambda!288857))))

(declare-fun bs!1262722 () Bool)

(assert (= bs!1262722 (and d!1737350 b!5457008)))

(assert (=> bs!1262722 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228361)) (= lambda!288912 lambda!288847))))

(declare-fun bs!1262723 () Bool)

(assert (= bs!1262723 (and d!1737350 b!5457132)))

(assert (=> bs!1262723 (not (= lambda!288912 lambda!288875))))

(declare-fun bs!1262724 () Bool)

(assert (= bs!1262724 (and d!1737350 b!5457428)))

(assert (=> bs!1262724 (not (= lambda!288912 lambda!288907))))

(declare-fun bs!1262725 () Bool)

(assert (= bs!1262725 (and d!1737350 b!5456961)))

(assert (=> bs!1262725 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228185)) (= lambda!288912 lambda!288851))))

(declare-fun bs!1262726 () Bool)

(assert (= bs!1262726 (and d!1737350 b!5456970)))

(assert (=> bs!1262726 (not (= lambda!288912 lambda!288867))))

(declare-fun bs!1262727 () Bool)

(assert (= bs!1262727 (and d!1737350 d!1737340)))

(assert (=> bs!1262727 (not (= lambda!288912 lambda!288905))))

(declare-fun bs!1262728 () Bool)

(assert (= bs!1262728 (and d!1737350 b!5456993)))

(assert (=> bs!1262728 (not (= lambda!288912 lambda!288864))))

(assert (=> bs!1262725 (not (= lambda!288912 lambda!288852))))

(assert (=> bs!1262722 (not (= lambda!288912 lambda!288846))))

(declare-fun bs!1262729 () Bool)

(assert (= bs!1262729 (and d!1737350 b!5456966)))

(assert (=> bs!1262729 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) lt!2228350) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!288912 lambda!288853))))

(assert (=> bs!1262726 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) Nil!62030) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228350)) (= lambda!288912 lambda!288866))))

(assert (=> bs!1262725 (not (= lambda!288912 lambda!288850))))

(declare-fun bs!1262730 () Bool)

(assert (= bs!1262730 (and d!1737350 b!5457009)))

(assert (=> bs!1262730 (not (= lambda!288912 lambda!288843))))

(assert (=> bs!1262728 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (_1!35787 lt!2228245)) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228350)) (= lambda!288912 lambda!288863))))

(assert (=> bs!1262730 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!288912 lambda!288842))))

(assert (=> bs!1262721 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (_1!35787 lt!2228239)) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228350)) (= lambda!288912 lambda!288855))))

(assert (=> bs!1262727 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!288912 lambda!288904))))

(assert (=> bs!1262726 (not (= lambda!288912 lambda!288868))))

(declare-fun bs!1262731 () Bool)

(assert (= bs!1262731 (and d!1737350 d!1737326)))

(assert (=> bs!1262731 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))))) (= lambda!288912 lambda!288893))))

(assert (=> bs!1262722 (not (= lambda!288912 lambda!288848))))

(declare-fun bs!1262732 () Bool)

(assert (= bs!1262732 (and d!1737350 b!5457138)))

(assert (=> bs!1262732 (not (= lambda!288912 lambda!288874))))

(assert (=> bs!1262721 (not (= lambda!288912 lambda!288856))))

(assert (=> bs!1262722 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228179)) (= lambda!288912 lambda!288845))))

(assert (=> bs!1262728 (not (= lambda!288912 lambda!288862))))

(assert (=> bs!1262728 (not (= lambda!288912 lambda!288865))))

(assert (=> bs!1262725 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228281)) (= lambda!288912 lambda!288849))))

(assert (=> bs!1262728 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) lt!2228296) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!288912 lambda!288861))))

(assert (=> bs!1262729 (not (= lambda!288912 lambda!288854))))

(assert (=> d!1737350 true))

(assert (=> d!1737350 true))

(assert (=> d!1737350 true))

(declare-fun lambda!288913 () Int)

(assert (=> bs!1262720 (not (= lambda!288913 lambda!288906))))

(assert (=> bs!1262721 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (_1!35787 lt!2228239)) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228350)) (= lambda!288913 lambda!288857))))

(assert (=> bs!1262722 (not (= lambda!288913 lambda!288847))))

(assert (=> bs!1262723 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))) (= lambda!288913 lambda!288875))))

(assert (=> bs!1262724 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))) (= lambda!288913 lambda!288907))))

(assert (=> bs!1262725 (not (= lambda!288913 lambda!288851))))

(assert (=> bs!1262726 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) Nil!62030) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228350)) (= lambda!288913 lambda!288867))))

(assert (=> bs!1262727 (not (= lambda!288913 lambda!288905))))

(assert (=> bs!1262728 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (_1!35787 lt!2228245)) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228350)) (= lambda!288913 lambda!288864))))

(assert (=> bs!1262725 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228185)) (= lambda!288913 lambda!288852))))

(assert (=> bs!1262722 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228179)) (= lambda!288913 lambda!288846))))

(declare-fun bs!1262733 () Bool)

(assert (= bs!1262733 d!1737350))

(assert (=> bs!1262733 (not (= lambda!288913 lambda!288912))))

(assert (=> bs!1262729 (not (= lambda!288913 lambda!288853))))

(assert (=> bs!1262726 (not (= lambda!288913 lambda!288866))))

(assert (=> bs!1262725 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228281)) (= lambda!288913 lambda!288850))))

(assert (=> bs!1262730 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!288913 lambda!288843))))

(assert (=> bs!1262728 (not (= lambda!288913 lambda!288863))))

(assert (=> bs!1262730 (not (= lambda!288913 lambda!288842))))

(assert (=> bs!1262721 (not (= lambda!288913 lambda!288855))))

(assert (=> bs!1262727 (not (= lambda!288913 lambda!288904))))

(assert (=> bs!1262726 (not (= lambda!288913 lambda!288868))))

(assert (=> bs!1262731 (not (= lambda!288913 lambda!288893))))

(assert (=> bs!1262722 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) lt!2228361)) (= lambda!288913 lambda!288848))))

(assert (=> bs!1262732 (not (= lambda!288913 lambda!288874))))

(assert (=> bs!1262721 (not (= lambda!288913 lambda!288856))))

(assert (=> bs!1262722 (not (= lambda!288913 lambda!288845))))

(assert (=> bs!1262728 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) lt!2228296) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!288913 lambda!288862))))

(assert (=> bs!1262728 (not (= lambda!288913 lambda!288865))))

(assert (=> bs!1262725 (not (= lambda!288913 lambda!288849))))

(assert (=> bs!1262728 (not (= lambda!288913 lambda!288861))))

(assert (=> bs!1262729 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) lt!2228350) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!288913 lambda!288854))))

(assert (=> d!1737350 true))

(assert (=> d!1737350 true))

(assert (=> d!1737350 true))

(assert (=> d!1737350 (= (Exists!2466 lambda!288912) (Exists!2466 lambda!288913))))

(declare-fun lt!2228452 () Unit!154880)

(declare-fun choose!41460 (Regex!15285 Regex!15285 List!62154) Unit!154880)

(assert (=> d!1737350 (= lt!2228452 (choose!41460 (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))))))

(assert (=> d!1737350 (validRegex!7021 (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))))

(assert (=> d!1737350 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1120 (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) lt!2228452)))

(declare-fun m!6478404 () Bool)

(assert (=> bs!1262733 m!6478404))

(declare-fun m!6478406 () Bool)

(assert (=> bs!1262733 m!6478406))

(declare-fun m!6478408 () Bool)

(assert (=> bs!1262733 m!6478408))

(declare-fun m!6478410 () Bool)

(assert (=> bs!1262733 m!6478410))

(assert (=> bm!398895 d!1737350))

(declare-fun b!5457535 () Bool)

(declare-fun e!3379702 () Option!15396)

(assert (=> b!5457535 (= e!3379702 None!15395)))

(declare-fun b!5457536 () Bool)

(declare-fun e!3379698 () Option!15396)

(assert (=> b!5457536 (= e!3379698 e!3379702)))

(declare-fun c!953351 () Bool)

(assert (=> b!5457536 (= c!953351 ((_ is Nil!62030) s!2326))))

(declare-fun b!5457537 () Bool)

(declare-fun lt!2228463 () Unit!154880)

(declare-fun lt!2228462 () Unit!154880)

(assert (=> b!5457537 (= lt!2228463 lt!2228462)))

(assert (=> b!5457537 (= (++!13649 (++!13649 Nil!62030 (Cons!62030 (h!68478 s!2326) Nil!62030)) (t!375383 s!2326)) s!2326)))

(assert (=> b!5457537 (= lt!2228462 (lemmaMoveElementToOtherListKeepsConcatEq!1880 Nil!62030 (h!68478 s!2326) (t!375383 s!2326) s!2326))))

(assert (=> b!5457537 (= e!3379702 (findConcatSeparation!1810 (regOne!31082 r!7292) (regTwo!31082 r!7292) (++!13649 Nil!62030 (Cons!62030 (h!68478 s!2326) Nil!62030)) (t!375383 s!2326) s!2326))))

(declare-fun b!5457538 () Bool)

(declare-fun e!3379701 () Bool)

(declare-fun lt!2228464 () Option!15396)

(assert (=> b!5457538 (= e!3379701 (= (++!13649 (_1!35787 (get!21392 lt!2228464)) (_2!35787 (get!21392 lt!2228464))) s!2326))))

(declare-fun b!5457539 () Bool)

(declare-fun res!2324453 () Bool)

(assert (=> b!5457539 (=> (not res!2324453) (not e!3379701))))

(assert (=> b!5457539 (= res!2324453 (matchR!7470 (regTwo!31082 r!7292) (_2!35787 (get!21392 lt!2228464))))))

(declare-fun d!1737366 () Bool)

(declare-fun e!3379699 () Bool)

(assert (=> d!1737366 e!3379699))

(declare-fun res!2324455 () Bool)

(assert (=> d!1737366 (=> res!2324455 e!3379699)))

(assert (=> d!1737366 (= res!2324455 e!3379701)))

(declare-fun res!2324454 () Bool)

(assert (=> d!1737366 (=> (not res!2324454) (not e!3379701))))

(assert (=> d!1737366 (= res!2324454 (isDefined!12099 lt!2228464))))

(assert (=> d!1737366 (= lt!2228464 e!3379698)))

(declare-fun c!953350 () Bool)

(declare-fun e!3379700 () Bool)

(assert (=> d!1737366 (= c!953350 e!3379700)))

(declare-fun res!2324456 () Bool)

(assert (=> d!1737366 (=> (not res!2324456) (not e!3379700))))

(assert (=> d!1737366 (= res!2324456 (matchR!7470 (regOne!31082 r!7292) Nil!62030))))

(assert (=> d!1737366 (validRegex!7021 (regOne!31082 r!7292))))

(assert (=> d!1737366 (= (findConcatSeparation!1810 (regOne!31082 r!7292) (regTwo!31082 r!7292) Nil!62030 s!2326 s!2326) lt!2228464)))

(declare-fun b!5457540 () Bool)

(assert (=> b!5457540 (= e!3379700 (matchR!7470 (regTwo!31082 r!7292) s!2326))))

(declare-fun b!5457541 () Bool)

(assert (=> b!5457541 (= e!3379698 (Some!15395 (tuple2!64969 Nil!62030 s!2326)))))

(declare-fun b!5457542 () Bool)

(assert (=> b!5457542 (= e!3379699 (not (isDefined!12099 lt!2228464)))))

(declare-fun b!5457543 () Bool)

(declare-fun res!2324457 () Bool)

(assert (=> b!5457543 (=> (not res!2324457) (not e!3379701))))

(assert (=> b!5457543 (= res!2324457 (matchR!7470 (regOne!31082 r!7292) (_1!35787 (get!21392 lt!2228464))))))

(assert (= (and d!1737366 res!2324456) b!5457540))

(assert (= (and d!1737366 c!953350) b!5457541))

(assert (= (and d!1737366 (not c!953350)) b!5457536))

(assert (= (and b!5457536 c!953351) b!5457535))

(assert (= (and b!5457536 (not c!953351)) b!5457537))

(assert (= (and d!1737366 res!2324454) b!5457543))

(assert (= (and b!5457543 res!2324457) b!5457539))

(assert (= (and b!5457539 res!2324453) b!5457538))

(assert (= (and d!1737366 (not res!2324455)) b!5457542))

(declare-fun m!6478422 () Bool)

(assert (=> b!5457543 m!6478422))

(declare-fun m!6478424 () Bool)

(assert (=> b!5457543 m!6478424))

(declare-fun m!6478426 () Bool)

(assert (=> b!5457540 m!6478426))

(assert (=> b!5457538 m!6478422))

(declare-fun m!6478428 () Bool)

(assert (=> b!5457538 m!6478428))

(declare-fun m!6478430 () Bool)

(assert (=> b!5457542 m!6478430))

(assert (=> d!1737366 m!6478430))

(declare-fun m!6478432 () Bool)

(assert (=> d!1737366 m!6478432))

(declare-fun m!6478434 () Bool)

(assert (=> d!1737366 m!6478434))

(assert (=> b!5457537 m!6477972))

(assert (=> b!5457537 m!6477972))

(assert (=> b!5457537 m!6477974))

(assert (=> b!5457537 m!6477976))

(assert (=> b!5457537 m!6477972))

(declare-fun m!6478436 () Bool)

(assert (=> b!5457537 m!6478436))

(assert (=> b!5457539 m!6478422))

(declare-fun m!6478438 () Bool)

(assert (=> b!5457539 m!6478438))

(assert (=> b!5457009 d!1737366))

(declare-fun d!1737372 () Bool)

(assert (=> d!1737372 (= (Exists!2466 lambda!288843) (choose!41451 lambda!288843))))

(declare-fun bs!1262736 () Bool)

(assert (= bs!1262736 d!1737372))

(declare-fun m!6478440 () Bool)

(assert (=> bs!1262736 m!6478440))

(assert (=> b!5457009 d!1737372))

(declare-fun d!1737374 () Bool)

(assert (=> d!1737374 (= (Exists!2466 lambda!288842) (choose!41451 lambda!288842))))

(declare-fun bs!1262737 () Bool)

(assert (= bs!1262737 d!1737374))

(declare-fun m!6478442 () Bool)

(assert (=> bs!1262737 m!6478442))

(assert (=> b!5457009 d!1737374))

(declare-fun bs!1262739 () Bool)

(declare-fun d!1737376 () Bool)

(assert (= bs!1262739 (and d!1737376 b!5457434)))

(declare-fun lambda!288919 () Int)

(assert (=> bs!1262739 (not (= lambda!288919 lambda!288906))))

(declare-fun bs!1262740 () Bool)

(assert (= bs!1262740 (and d!1737376 b!5456979)))

(assert (=> bs!1262740 (not (= lambda!288919 lambda!288857))))

(declare-fun bs!1262742 () Bool)

(assert (= bs!1262742 (and d!1737376 b!5457008)))

(assert (=> bs!1262742 (= (and (= (regOne!31082 r!7292) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228361)) (= lambda!288919 lambda!288847))))

(declare-fun bs!1262744 () Bool)

(assert (= bs!1262744 (and d!1737376 b!5457132)))

(assert (=> bs!1262744 (not (= lambda!288919 lambda!288875))))

(declare-fun bs!1262745 () Bool)

(assert (= bs!1262745 (and d!1737376 b!5457428)))

(assert (=> bs!1262745 (not (= lambda!288919 lambda!288907))))

(declare-fun bs!1262747 () Bool)

(assert (= bs!1262747 (and d!1737376 b!5456961)))

(assert (=> bs!1262747 (= (and (= (regOne!31082 r!7292) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228185)) (= lambda!288919 lambda!288851))))

(declare-fun bs!1262749 () Bool)

(assert (= bs!1262749 (and d!1737376 b!5456970)))

(assert (=> bs!1262749 (not (= lambda!288919 lambda!288867))))

(declare-fun bs!1262750 () Bool)

(assert (= bs!1262750 (and d!1737376 d!1737340)))

(assert (=> bs!1262750 (not (= lambda!288919 lambda!288905))))

(declare-fun bs!1262752 () Bool)

(assert (= bs!1262752 (and d!1737376 b!5456993)))

(assert (=> bs!1262752 (not (= lambda!288919 lambda!288864))))

(assert (=> bs!1262747 (not (= lambda!288919 lambda!288852))))

(assert (=> bs!1262742 (not (= lambda!288919 lambda!288846))))

(declare-fun bs!1262755 () Bool)

(assert (= bs!1262755 (and d!1737376 d!1737350)))

(assert (=> bs!1262755 (= (and (= s!2326 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) (= (regOne!31082 r!7292) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (regTwo!31082 r!7292) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!288919 lambda!288912))))

(declare-fun bs!1262756 () Bool)

(assert (= bs!1262756 (and d!1737376 b!5456966)))

(assert (=> bs!1262756 (= (= (regOne!31082 r!7292) lt!2228350) (= lambda!288919 lambda!288853))))

(assert (=> bs!1262749 (= (and (= s!2326 Nil!62030) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288919 lambda!288866))))

(assert (=> bs!1262747 (not (= lambda!288919 lambda!288850))))

(assert (=> bs!1262752 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288919 lambda!288863))))

(declare-fun bs!1262758 () Bool)

(assert (= bs!1262758 (and d!1737376 b!5457009)))

(assert (=> bs!1262758 (= lambda!288919 lambda!288842)))

(assert (=> bs!1262740 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288919 lambda!288855))))

(assert (=> bs!1262750 (= (and (= s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!288919 lambda!288904))))

(assert (=> bs!1262749 (not (= lambda!288919 lambda!288868))))

(declare-fun bs!1262759 () Bool)

(assert (= bs!1262759 (and d!1737376 d!1737326)))

(assert (=> bs!1262759 (= (and (= s!2326 (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)) (= (regOne!31082 r!7292) (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (= (regTwo!31082 r!7292) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))))) (= lambda!288919 lambda!288893))))

(assert (=> bs!1262742 (not (= lambda!288919 lambda!288848))))

(declare-fun bs!1262760 () Bool)

(assert (= bs!1262760 (and d!1737376 b!5457138)))

(assert (=> bs!1262760 (not (= lambda!288919 lambda!288874))))

(assert (=> bs!1262740 (not (= lambda!288919 lambda!288856))))

(assert (=> bs!1262742 (= (and (= (regOne!31082 r!7292) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228179)) (= lambda!288919 lambda!288845))))

(assert (=> bs!1262752 (not (= lambda!288919 lambda!288862))))

(assert (=> bs!1262752 (not (= lambda!288919 lambda!288865))))

(assert (=> bs!1262747 (= (and (= (regOne!31082 r!7292) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228281)) (= lambda!288919 lambda!288849))))

(assert (=> bs!1262758 (not (= lambda!288919 lambda!288843))))

(assert (=> bs!1262755 (not (= lambda!288919 lambda!288913))))

(assert (=> bs!1262752 (= (= (regOne!31082 r!7292) lt!2228296) (= lambda!288919 lambda!288861))))

(assert (=> bs!1262756 (not (= lambda!288919 lambda!288854))))

(assert (=> d!1737376 true))

(assert (=> d!1737376 true))

(assert (=> d!1737376 true))

(assert (=> d!1737376 (= (isDefined!12099 (findConcatSeparation!1810 (regOne!31082 r!7292) (regTwo!31082 r!7292) Nil!62030 s!2326 s!2326)) (Exists!2466 lambda!288919))))

(declare-fun lt!2228465 () Unit!154880)

(assert (=> d!1737376 (= lt!2228465 (choose!41452 (regOne!31082 r!7292) (regTwo!31082 r!7292) s!2326))))

(assert (=> d!1737376 (validRegex!7021 (regOne!31082 r!7292))))

(assert (=> d!1737376 (= (lemmaFindConcatSeparationEquivalentToExists!1574 (regOne!31082 r!7292) (regTwo!31082 r!7292) s!2326) lt!2228465)))

(declare-fun bs!1262761 () Bool)

(assert (= bs!1262761 d!1737376))

(assert (=> bs!1262761 m!6478434))

(declare-fun m!6478444 () Bool)

(assert (=> bs!1262761 m!6478444))

(assert (=> bs!1262761 m!6477702))

(declare-fun m!6478446 () Bool)

(assert (=> bs!1262761 m!6478446))

(assert (=> bs!1262761 m!6477702))

(assert (=> bs!1262761 m!6477704))

(assert (=> b!5457009 d!1737376))

(declare-fun bs!1262767 () Bool)

(declare-fun d!1737378 () Bool)

(assert (= bs!1262767 (and d!1737378 b!5457434)))

(declare-fun lambda!288921 () Int)

(assert (=> bs!1262767 (not (= lambda!288921 lambda!288906))))

(declare-fun bs!1262768 () Bool)

(assert (= bs!1262768 (and d!1737378 b!5456979)))

(assert (=> bs!1262768 (not (= lambda!288921 lambda!288857))))

(declare-fun bs!1262770 () Bool)

(assert (= bs!1262770 (and d!1737378 b!5457008)))

(assert (=> bs!1262770 (= (and (= (regOne!31082 r!7292) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228361)) (= lambda!288921 lambda!288847))))

(declare-fun bs!1262772 () Bool)

(assert (= bs!1262772 (and d!1737378 b!5457132)))

(assert (=> bs!1262772 (not (= lambda!288921 lambda!288875))))

(declare-fun bs!1262774 () Bool)

(assert (= bs!1262774 (and d!1737378 b!5457428)))

(assert (=> bs!1262774 (not (= lambda!288921 lambda!288907))))

(declare-fun bs!1262775 () Bool)

(assert (= bs!1262775 (and d!1737378 b!5456961)))

(assert (=> bs!1262775 (= (and (= (regOne!31082 r!7292) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228185)) (= lambda!288921 lambda!288851))))

(declare-fun bs!1262776 () Bool)

(assert (= bs!1262776 (and d!1737378 b!5456970)))

(assert (=> bs!1262776 (not (= lambda!288921 lambda!288867))))

(declare-fun bs!1262777 () Bool)

(assert (= bs!1262777 (and d!1737378 d!1737340)))

(assert (=> bs!1262777 (not (= lambda!288921 lambda!288905))))

(declare-fun bs!1262779 () Bool)

(assert (= bs!1262779 (and d!1737378 b!5456993)))

(assert (=> bs!1262779 (not (= lambda!288921 lambda!288864))))

(assert (=> bs!1262775 (not (= lambda!288921 lambda!288852))))

(assert (=> bs!1262770 (not (= lambda!288921 lambda!288846))))

(declare-fun bs!1262780 () Bool)

(assert (= bs!1262780 (and d!1737378 d!1737350)))

(assert (=> bs!1262780 (= (and (= s!2326 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) (= (regOne!31082 r!7292) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (regTwo!31082 r!7292) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!288921 lambda!288912))))

(declare-fun bs!1262781 () Bool)

(assert (= bs!1262781 (and d!1737378 b!5456966)))

(assert (=> bs!1262781 (= (= (regOne!31082 r!7292) lt!2228350) (= lambda!288921 lambda!288853))))

(assert (=> bs!1262776 (= (and (= s!2326 Nil!62030) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288921 lambda!288866))))

(assert (=> bs!1262775 (not (= lambda!288921 lambda!288850))))

(assert (=> bs!1262779 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288921 lambda!288863))))

(declare-fun bs!1262782 () Bool)

(assert (= bs!1262782 (and d!1737378 b!5457009)))

(assert (=> bs!1262782 (= lambda!288921 lambda!288842)))

(assert (=> bs!1262768 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288921 lambda!288855))))

(assert (=> bs!1262777 (= (and (= s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!288921 lambda!288904))))

(assert (=> bs!1262776 (not (= lambda!288921 lambda!288868))))

(declare-fun bs!1262784 () Bool)

(assert (= bs!1262784 (and d!1737378 d!1737326)))

(assert (=> bs!1262784 (= (and (= s!2326 (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)) (= (regOne!31082 r!7292) (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (= (regTwo!31082 r!7292) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))))) (= lambda!288921 lambda!288893))))

(assert (=> bs!1262770 (not (= lambda!288921 lambda!288848))))

(declare-fun bs!1262785 () Bool)

(assert (= bs!1262785 (and d!1737378 b!5457138)))

(assert (=> bs!1262785 (not (= lambda!288921 lambda!288874))))

(assert (=> bs!1262768 (not (= lambda!288921 lambda!288856))))

(assert (=> bs!1262770 (= (and (= (regOne!31082 r!7292) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228179)) (= lambda!288921 lambda!288845))))

(assert (=> bs!1262779 (not (= lambda!288921 lambda!288862))))

(declare-fun bs!1262786 () Bool)

(assert (= bs!1262786 (and d!1737378 d!1737376)))

(assert (=> bs!1262786 (= lambda!288921 lambda!288919)))

(assert (=> bs!1262779 (not (= lambda!288921 lambda!288865))))

(assert (=> bs!1262775 (= (and (= (regOne!31082 r!7292) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228281)) (= lambda!288921 lambda!288849))))

(assert (=> bs!1262782 (not (= lambda!288921 lambda!288843))))

(assert (=> bs!1262780 (not (= lambda!288921 lambda!288913))))

(assert (=> bs!1262779 (= (= (regOne!31082 r!7292) lt!2228296) (= lambda!288921 lambda!288861))))

(assert (=> bs!1262781 (not (= lambda!288921 lambda!288854))))

(assert (=> d!1737378 true))

(assert (=> d!1737378 true))

(assert (=> d!1737378 true))

(declare-fun lambda!288922 () Int)

(assert (=> bs!1262767 (not (= lambda!288922 lambda!288906))))

(assert (=> bs!1262768 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288922 lambda!288857))))

(assert (=> bs!1262770 (not (= lambda!288922 lambda!288847))))

(assert (=> bs!1262772 (= (and (= (regOne!31082 r!7292) (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (regTwo!31082 r!7292) (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))) (= lambda!288922 lambda!288875))))

(assert (=> bs!1262775 (not (= lambda!288922 lambda!288851))))

(assert (=> bs!1262776 (= (and (= s!2326 Nil!62030) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288922 lambda!288867))))

(assert (=> bs!1262777 (not (= lambda!288922 lambda!288905))))

(assert (=> bs!1262779 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288922 lambda!288864))))

(assert (=> bs!1262775 (= (and (= (regOne!31082 r!7292) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228185)) (= lambda!288922 lambda!288852))))

(assert (=> bs!1262770 (= (and (= (regOne!31082 r!7292) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228179)) (= lambda!288922 lambda!288846))))

(assert (=> bs!1262780 (not (= lambda!288922 lambda!288912))))

(assert (=> bs!1262781 (not (= lambda!288922 lambda!288853))))

(assert (=> bs!1262776 (not (= lambda!288922 lambda!288866))))

(assert (=> bs!1262775 (= (and (= (regOne!31082 r!7292) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228281)) (= lambda!288922 lambda!288850))))

(assert (=> bs!1262779 (not (= lambda!288922 lambda!288863))))

(declare-fun bs!1262788 () Bool)

(assert (= bs!1262788 d!1737378))

(assert (=> bs!1262788 (not (= lambda!288922 lambda!288921))))

(assert (=> bs!1262774 (= (and (= (regOne!31082 r!7292) (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= (regTwo!31082 r!7292) (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))) (= lambda!288922 lambda!288907))))

(assert (=> bs!1262782 (not (= lambda!288922 lambda!288842))))

(assert (=> bs!1262768 (not (= lambda!288922 lambda!288855))))

(assert (=> bs!1262777 (not (= lambda!288922 lambda!288904))))

(assert (=> bs!1262776 (not (= lambda!288922 lambda!288868))))

(assert (=> bs!1262784 (not (= lambda!288922 lambda!288893))))

(assert (=> bs!1262770 (= (and (= (regOne!31082 r!7292) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228361)) (= lambda!288922 lambda!288848))))

(assert (=> bs!1262785 (not (= lambda!288922 lambda!288874))))

(assert (=> bs!1262768 (not (= lambda!288922 lambda!288856))))

(assert (=> bs!1262770 (not (= lambda!288922 lambda!288845))))

(assert (=> bs!1262779 (= (= (regOne!31082 r!7292) lt!2228296) (= lambda!288922 lambda!288862))))

(assert (=> bs!1262786 (not (= lambda!288922 lambda!288919))))

(assert (=> bs!1262779 (not (= lambda!288922 lambda!288865))))

(assert (=> bs!1262775 (not (= lambda!288922 lambda!288849))))

(assert (=> bs!1262782 (= lambda!288922 lambda!288843)))

(assert (=> bs!1262780 (= (and (= s!2326 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) (= (regOne!31082 r!7292) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (regTwo!31082 r!7292) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!288922 lambda!288913))))

(assert (=> bs!1262779 (not (= lambda!288922 lambda!288861))))

(assert (=> bs!1262781 (= (= (regOne!31082 r!7292) lt!2228350) (= lambda!288922 lambda!288854))))

(assert (=> d!1737378 true))

(assert (=> d!1737378 true))

(assert (=> d!1737378 true))

(assert (=> d!1737378 (= (Exists!2466 lambda!288921) (Exists!2466 lambda!288922))))

(declare-fun lt!2228466 () Unit!154880)

(assert (=> d!1737378 (= lt!2228466 (choose!41460 (regOne!31082 r!7292) (regTwo!31082 r!7292) s!2326))))

(assert (=> d!1737378 (validRegex!7021 (regOne!31082 r!7292))))

(assert (=> d!1737378 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1120 (regOne!31082 r!7292) (regTwo!31082 r!7292) s!2326) lt!2228466)))

(declare-fun m!6478466 () Bool)

(assert (=> bs!1262788 m!6478466))

(declare-fun m!6478468 () Bool)

(assert (=> bs!1262788 m!6478468))

(declare-fun m!6478470 () Bool)

(assert (=> bs!1262788 m!6478470))

(assert (=> bs!1262788 m!6478434))

(assert (=> b!5457009 d!1737378))

(declare-fun d!1737386 () Bool)

(assert (=> d!1737386 (= (isDefined!12099 (findConcatSeparation!1810 (regOne!31082 r!7292) (regTwo!31082 r!7292) Nil!62030 s!2326 s!2326)) (not (isEmpty!34018 (findConcatSeparation!1810 (regOne!31082 r!7292) (regTwo!31082 r!7292) Nil!62030 s!2326 s!2326))))))

(declare-fun bs!1262793 () Bool)

(assert (= bs!1262793 d!1737386))

(assert (=> bs!1262793 m!6477702))

(declare-fun m!6478472 () Bool)

(assert (=> bs!1262793 m!6478472))

(assert (=> b!5457009 d!1737386))

(declare-fun d!1737388 () Bool)

(declare-fun dynLambda!24409 (Int Context!9338) (InoxSet Context!9338))

(assert (=> d!1737388 (= (flatMap!1012 (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953209 lt!2228160 lt!2228173))) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 (ite c!953209 lambda!288844 lambda!288844)))) (dynLambda!24409 (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 (ite c!953209 lambda!288844 lambda!288844))) (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 (ite c!953209 lt!2228214 lt!2228309)))))))

(declare-fun lt!2228473 () Unit!154880)

(declare-fun choose!41463 ((InoxSet Context!9338) Context!9338 Int) Unit!154880)

(assert (=> d!1737388 (= lt!2228473 (choose!41463 (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953209 lt!2228160 lt!2228173))) (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 (ite c!953209 lt!2228214 lt!2228309))) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 (ite c!953209 lambda!288844 lambda!288844)))))))

(assert (=> d!1737388 (= (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953209 lt!2228160 lt!2228173))) (store ((as const (Array Context!9338 Bool)) false) (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 (ite c!953209 lt!2228214 lt!2228309))) true))))

(assert (=> d!1737388 (= (lemmaFlatMapOnSingletonSet!544 (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953209 lt!2228160 lt!2228173))) (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 (ite c!953209 lt!2228214 lt!2228309))) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 (ite c!953209 lambda!288844 lambda!288844)))) lt!2228473)))

(declare-fun b_lambda!207783 () Bool)

(assert (=> (not b_lambda!207783) (not d!1737388)))

(declare-fun bs!1262802 () Bool)

(assert (= bs!1262802 d!1737388))

(declare-fun m!6478474 () Bool)

(assert (=> bs!1262802 m!6478474))

(declare-fun m!6478476 () Bool)

(assert (=> bs!1262802 m!6478476))

(declare-fun m!6478478 () Bool)

(assert (=> bs!1262802 m!6478478))

(declare-fun m!6478480 () Bool)

(assert (=> bs!1262802 m!6478480))

(assert (=> bm!398844 d!1737388))

(declare-fun b!5457555 () Bool)

(declare-fun res!2324461 () Bool)

(declare-fun e!3379715 () Bool)

(assert (=> b!5457555 (=> (not res!2324461) (not e!3379715))))

(assert (=> b!5457555 (= res!2324461 (isEmpty!34016 (tail!10784 (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030)))))))))

(declare-fun b!5457556 () Bool)

(declare-fun e!3379714 () Bool)

(declare-fun e!3379711 () Bool)

(assert (=> b!5457556 (= e!3379714 e!3379711)))

(declare-fun c!953358 () Bool)

(assert (=> b!5457556 (= c!953358 ((_ is EmptyLang!15285) (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350))))))))))

(declare-fun b!5457557 () Bool)

(assert (=> b!5457557 (= e!3379715 (= (head!11687 (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030))))) (c!953215 (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350)))))))))))

(declare-fun d!1737390 () Bool)

(assert (=> d!1737390 e!3379714))

(declare-fun c!953356 () Bool)

(assert (=> d!1737390 (= c!953356 ((_ is EmptyExpr!15285) (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350))))))))))

(declare-fun lt!2228474 () Bool)

(declare-fun e!3379712 () Bool)

(assert (=> d!1737390 (= lt!2228474 e!3379712)))

(declare-fun c!953357 () Bool)

(assert (=> d!1737390 (= c!953357 (isEmpty!34016 (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030))))))))

(assert (=> d!1737390 (validRegex!7021 (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350)))))))))

(assert (=> d!1737390 (= (matchR!7470 (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350)))))) (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030))))) lt!2228474)))

(declare-fun b!5457558 () Bool)

(declare-fun res!2324466 () Bool)

(declare-fun e!3379716 () Bool)

(assert (=> b!5457558 (=> res!2324466 e!3379716)))

(assert (=> b!5457558 (= res!2324466 e!3379715)))

(declare-fun res!2324464 () Bool)

(assert (=> b!5457558 (=> (not res!2324464) (not e!3379715))))

(assert (=> b!5457558 (= res!2324464 lt!2228474)))

(declare-fun b!5457559 () Bool)

(declare-fun e!3379713 () Bool)

(declare-fun e!3379710 () Bool)

(assert (=> b!5457559 (= e!3379713 e!3379710)))

(declare-fun res!2324468 () Bool)

(assert (=> b!5457559 (=> res!2324468 e!3379710)))

(declare-fun call!399110 () Bool)

(assert (=> b!5457559 (= res!2324468 call!399110)))

(declare-fun b!5457560 () Bool)

(declare-fun res!2324465 () Bool)

(assert (=> b!5457560 (=> res!2324465 e!3379710)))

(assert (=> b!5457560 (= res!2324465 (not (isEmpty!34016 (tail!10784 (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030))))))))))

(declare-fun b!5457561 () Bool)

(assert (=> b!5457561 (= e!3379712 (nullable!5454 (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350))))))))))

(declare-fun bm!399105 () Bool)

(assert (=> bm!399105 (= call!399110 (isEmpty!34016 (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030))))))))

(declare-fun b!5457562 () Bool)

(assert (=> b!5457562 (= e!3379710 (not (= (head!11687 (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030))))) (c!953215 (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350))))))))))))

(declare-fun b!5457563 () Bool)

(assert (=> b!5457563 (= e!3379711 (not lt!2228474))))

(declare-fun b!5457564 () Bool)

(assert (=> b!5457564 (= e!3379716 e!3379713)))

(declare-fun res!2324467 () Bool)

(assert (=> b!5457564 (=> (not res!2324467) (not e!3379713))))

(assert (=> b!5457564 (= res!2324467 (not lt!2228474))))

(declare-fun b!5457565 () Bool)

(assert (=> b!5457565 (= e!3379714 (= lt!2228474 call!399110))))

(declare-fun b!5457566 () Bool)

(declare-fun res!2324463 () Bool)

(assert (=> b!5457566 (=> (not res!2324463) (not e!3379715))))

(assert (=> b!5457566 (= res!2324463 (not call!399110))))

(declare-fun b!5457567 () Bool)

(declare-fun res!2324462 () Bool)

(assert (=> b!5457567 (=> res!2324462 e!3379716)))

(assert (=> b!5457567 (= res!2324462 (not ((_ is ElementMatch!15285) (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350)))))))))))

(assert (=> b!5457567 (= e!3379711 e!3379716)))

(declare-fun b!5457568 () Bool)

(assert (=> b!5457568 (= e!3379712 (matchR!7470 (derivativeStep!4306 (ite c!953203 lt!2228197 (ite c!953204 lt!2228205 (ite c!953207 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228361)) (ite c!953209 lt!2228359 (ite c!953211 (ite c!953210 lt!2228283 lt!2228257) (ite c!953206 (reg!15614 (regOne!31082 r!7292)) lt!2228350)))))) (head!11687 (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030)))))) (tail!10784 (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953211 (ite c!953210 s!2326 lt!2228180) (ite c!953206 (_1!35787 lt!2228230) Nil!62030)))))))))

(assert (= (and d!1737390 c!953357) b!5457561))

(assert (= (and d!1737390 (not c!953357)) b!5457568))

(assert (= (and d!1737390 c!953356) b!5457565))

(assert (= (and d!1737390 (not c!953356)) b!5457556))

(assert (= (and b!5457556 c!953358) b!5457563))

(assert (= (and b!5457556 (not c!953358)) b!5457567))

(assert (= (and b!5457567 (not res!2324462)) b!5457558))

(assert (= (and b!5457558 res!2324464) b!5457566))

(assert (= (and b!5457566 res!2324463) b!5457555))

(assert (= (and b!5457555 res!2324461) b!5457557))

(assert (= (and b!5457558 (not res!2324466)) b!5457564))

(assert (= (and b!5457564 res!2324467) b!5457559))

(assert (= (and b!5457559 (not res!2324468)) b!5457560))

(assert (= (and b!5457560 (not res!2324465)) b!5457562))

(assert (= (or b!5457565 b!5457566 b!5457559) bm!399105))

(declare-fun m!6478482 () Bool)

(assert (=> b!5457560 m!6478482))

(assert (=> b!5457560 m!6478482))

(declare-fun m!6478484 () Bool)

(assert (=> b!5457560 m!6478484))

(declare-fun m!6478486 () Bool)

(assert (=> b!5457557 m!6478486))

(declare-fun m!6478488 () Bool)

(assert (=> b!5457561 m!6478488))

(assert (=> b!5457568 m!6478486))

(assert (=> b!5457568 m!6478486))

(declare-fun m!6478490 () Bool)

(assert (=> b!5457568 m!6478490))

(assert (=> b!5457568 m!6478482))

(assert (=> b!5457568 m!6478490))

(assert (=> b!5457568 m!6478482))

(declare-fun m!6478492 () Bool)

(assert (=> b!5457568 m!6478492))

(declare-fun m!6478494 () Bool)

(assert (=> bm!399105 m!6478494))

(assert (=> b!5457562 m!6478486))

(assert (=> d!1737390 m!6478494))

(declare-fun m!6478496 () Bool)

(assert (=> d!1737390 m!6478496))

(assert (=> b!5457555 m!6478482))

(assert (=> b!5457555 m!6478482))

(assert (=> b!5457555 m!6478484))

(assert (=> bm!398859 d!1737390))

(declare-fun b!5457572 () Bool)

(declare-fun e!3379717 () Bool)

(declare-fun lt!2228475 () List!62154)

(assert (=> b!5457572 (= e!3379717 (or (not (= (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228245)) Nil!62030)) (= lt!2228475 (ite c!953211 (_1!35787 lt!2228360) lt!2228227))))))

(declare-fun d!1737392 () Bool)

(assert (=> d!1737392 e!3379717))

(declare-fun res!2324469 () Bool)

(assert (=> d!1737392 (=> (not res!2324469) (not e!3379717))))

(assert (=> d!1737392 (= res!2324469 (= (content!11166 lt!2228475) ((_ map or) (content!11166 (ite c!953211 (_1!35787 lt!2228360) lt!2228227)) (content!11166 (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228245))))))))

(declare-fun e!3379718 () List!62154)

(assert (=> d!1737392 (= lt!2228475 e!3379718)))

(declare-fun c!953359 () Bool)

(assert (=> d!1737392 (= c!953359 ((_ is Nil!62030) (ite c!953211 (_1!35787 lt!2228360) lt!2228227)))))

(assert (=> d!1737392 (= (++!13649 (ite c!953211 (_1!35787 lt!2228360) lt!2228227) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228245))) lt!2228475)))

(declare-fun b!5457569 () Bool)

(assert (=> b!5457569 (= e!3379718 (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228245)))))

(declare-fun b!5457570 () Bool)

(assert (=> b!5457570 (= e!3379718 (Cons!62030 (h!68478 (ite c!953211 (_1!35787 lt!2228360) lt!2228227)) (++!13649 (t!375383 (ite c!953211 (_1!35787 lt!2228360) lt!2228227)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228245)))))))

(declare-fun b!5457571 () Bool)

(declare-fun res!2324470 () Bool)

(assert (=> b!5457571 (=> (not res!2324470) (not e!3379717))))

(assert (=> b!5457571 (= res!2324470 (= (size!39901 lt!2228475) (+ (size!39901 (ite c!953211 (_1!35787 lt!2228360) lt!2228227)) (size!39901 (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228245))))))))

(assert (= (and d!1737392 c!953359) b!5457569))

(assert (= (and d!1737392 (not c!953359)) b!5457570))

(assert (= (and d!1737392 res!2324469) b!5457571))

(assert (= (and b!5457571 res!2324470) b!5457572))

(declare-fun m!6478498 () Bool)

(assert (=> d!1737392 m!6478498))

(declare-fun m!6478500 () Bool)

(assert (=> d!1737392 m!6478500))

(declare-fun m!6478502 () Bool)

(assert (=> d!1737392 m!6478502))

(declare-fun m!6478504 () Bool)

(assert (=> b!5457570 m!6478504))

(declare-fun m!6478506 () Bool)

(assert (=> b!5457571 m!6478506))

(declare-fun m!6478508 () Bool)

(assert (=> b!5457571 m!6478508))

(declare-fun m!6478510 () Bool)

(assert (=> b!5457571 m!6478510))

(assert (=> bm!398875 d!1737392))

(declare-fun e!3379721 () Bool)

(declare-fun d!1737394 () Bool)

(assert (=> d!1737394 (= (matchZipper!1529 ((_ map or) lt!2228272 lt!2228166) (t!375383 s!2326)) e!3379721)))

(declare-fun res!2324473 () Bool)

(assert (=> d!1737394 (=> res!2324473 e!3379721)))

(assert (=> d!1737394 (= res!2324473 (matchZipper!1529 lt!2228272 (t!375383 s!2326)))))

(declare-fun lt!2228479 () Unit!154880)

(declare-fun choose!41464 ((InoxSet Context!9338) (InoxSet Context!9338) List!62154) Unit!154880)

(assert (=> d!1737394 (= lt!2228479 (choose!41464 lt!2228272 lt!2228166 (t!375383 s!2326)))))

(assert (=> d!1737394 (= (lemmaZipperConcatMatchesSameAsBothZippers!522 lt!2228272 lt!2228166 (t!375383 s!2326)) lt!2228479)))

(declare-fun b!5457575 () Bool)

(assert (=> b!5457575 (= e!3379721 (matchZipper!1529 lt!2228166 (t!375383 s!2326)))))

(assert (= (and d!1737394 (not res!2324473)) b!5457575))

(declare-fun m!6478530 () Bool)

(assert (=> d!1737394 m!6478530))

(declare-fun m!6478532 () Bool)

(assert (=> d!1737394 m!6478532))

(declare-fun m!6478534 () Bool)

(assert (=> d!1737394 m!6478534))

(assert (=> b!5457575 m!6477856))

(assert (=> b!5456958 d!1737394))

(declare-fun d!1737408 () Bool)

(assert (=> d!1737408 (matchR!7470 (Concat!24130 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) lt!2228350) (ite c!953211 lt!2228257 (regTwo!31082 r!7292))) (++!13649 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 Nil!62030)) (ite c!953211 lt!2228180 (ite c!953206 (_2!35787 lt!2228245) s!2326))))))

(declare-fun lt!2228482 () Unit!154880)

(declare-fun choose!41465 (Regex!15285 Regex!15285 List!62154 List!62154) Unit!154880)

(assert (=> d!1737408 (= lt!2228482 (choose!41465 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) lt!2228350) (ite c!953211 lt!2228257 (regTwo!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 Nil!62030)) (ite c!953211 lt!2228180 (ite c!953206 (_2!35787 lt!2228245) s!2326))))))

(declare-fun e!3379736 () Bool)

(assert (=> d!1737408 e!3379736))

(declare-fun res!2324478 () Bool)

(assert (=> d!1737408 (=> (not res!2324478) (not e!3379736))))

(assert (=> d!1737408 (= res!2324478 (validRegex!7021 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) lt!2228350)))))

(assert (=> d!1737408 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!252 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) lt!2228350) (ite c!953211 lt!2228257 (regTwo!31082 r!7292)) (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 Nil!62030)) (ite c!953211 lt!2228180 (ite c!953206 (_2!35787 lt!2228245) s!2326))) lt!2228482)))

(declare-fun b!5457600 () Bool)

(assert (=> b!5457600 (= e!3379736 (validRegex!7021 (ite c!953211 lt!2228257 (regTwo!31082 r!7292))))))

(assert (= (and d!1737408 res!2324478) b!5457600))

(declare-fun m!6478536 () Bool)

(assert (=> d!1737408 m!6478536))

(assert (=> d!1737408 m!6478536))

(declare-fun m!6478538 () Bool)

(assert (=> d!1737408 m!6478538))

(declare-fun m!6478540 () Bool)

(assert (=> d!1737408 m!6478540))

(declare-fun m!6478542 () Bool)

(assert (=> d!1737408 m!6478542))

(declare-fun m!6478544 () Bool)

(assert (=> b!5457600 m!6478544))

(assert (=> bm!398977 d!1737408))

(declare-fun b!5457601 () Bool)

(declare-fun e!3379741 () Option!15396)

(assert (=> b!5457601 (= e!3379741 None!15395)))

(declare-fun b!5457602 () Bool)

(declare-fun e!3379737 () Option!15396)

(assert (=> b!5457602 (= e!3379737 e!3379741)))

(declare-fun c!953371 () Bool)

(assert (=> b!5457602 (= c!953371 ((_ is Nil!62030) (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))))))

(declare-fun b!5457603 () Bool)

(declare-fun lt!2228484 () Unit!154880)

(declare-fun lt!2228483 () Unit!154880)

(assert (=> b!5457603 (= lt!2228484 lt!2228483)))

(assert (=> b!5457603 (= (++!13649 (++!13649 Nil!62030 (Cons!62030 (h!68478 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))) Nil!62030)) (t!375383 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245)))) (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245)))))

(assert (=> b!5457603 (= lt!2228483 (lemmaMoveElementToOtherListKeepsConcatEq!1880 Nil!62030 (h!68478 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))) (t!375383 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))) (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))))))

(assert (=> b!5457603 (= e!3379741 (findConcatSeparation!1810 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292)))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (ite c!953211 (regTwo!31082 r!7292) lt!2228350))) (++!13649 Nil!62030 (Cons!62030 (h!68478 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))) Nil!62030)) (t!375383 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))) (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))))))

(declare-fun e!3379740 () Bool)

(declare-fun b!5457604 () Bool)

(declare-fun lt!2228485 () Option!15396)

(assert (=> b!5457604 (= e!3379740 (= (++!13649 (_1!35787 (get!21392 lt!2228485)) (_2!35787 (get!21392 lt!2228485))) (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))))))

(declare-fun b!5457605 () Bool)

(declare-fun res!2324479 () Bool)

(assert (=> b!5457605 (=> (not res!2324479) (not e!3379740))))

(assert (=> b!5457605 (= res!2324479 (matchR!7470 (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (ite c!953211 (regTwo!31082 r!7292) lt!2228350))) (_2!35787 (get!21392 lt!2228485))))))

(declare-fun d!1737410 () Bool)

(declare-fun e!3379738 () Bool)

(assert (=> d!1737410 e!3379738))

(declare-fun res!2324481 () Bool)

(assert (=> d!1737410 (=> res!2324481 e!3379738)))

(assert (=> d!1737410 (= res!2324481 e!3379740)))

(declare-fun res!2324480 () Bool)

(assert (=> d!1737410 (=> (not res!2324480) (not e!3379740))))

(assert (=> d!1737410 (= res!2324480 (isDefined!12099 lt!2228485))))

(assert (=> d!1737410 (= lt!2228485 e!3379737)))

(declare-fun c!953370 () Bool)

(declare-fun e!3379739 () Bool)

(assert (=> d!1737410 (= c!953370 e!3379739)))

(declare-fun res!2324482 () Bool)

(assert (=> d!1737410 (=> (not res!2324482) (not e!3379739))))

(assert (=> d!1737410 (= res!2324482 (matchR!7470 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292)))) Nil!62030))))

(assert (=> d!1737410 (validRegex!7021 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292)))))))

(assert (=> d!1737410 (= (findConcatSeparation!1810 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292)))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (ite c!953211 (regTwo!31082 r!7292) lt!2228350))) Nil!62030 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245)) (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))) lt!2228485)))

(declare-fun b!5457606 () Bool)

(assert (=> b!5457606 (= e!3379739 (matchR!7470 (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 (ite c!953211 (regTwo!31082 r!7292) lt!2228350))) (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245))))))

(declare-fun b!5457607 () Bool)

(assert (=> b!5457607 (= e!3379737 (Some!15395 (tuple2!64969 Nil!62030 (ite (or c!953207 c!953209 c!953211) s!2326 (_1!35787 lt!2228245)))))))

(declare-fun b!5457608 () Bool)

(assert (=> b!5457608 (= e!3379738 (not (isDefined!12099 lt!2228485)))))

(declare-fun b!5457609 () Bool)

(declare-fun res!2324483 () Bool)

(assert (=> b!5457609 (=> (not res!2324483) (not e!3379740))))

(assert (=> b!5457609 (= res!2324483 (matchR!7470 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292)))) (_1!35787 (get!21392 lt!2228485))))))

(assert (= (and d!1737410 res!2324482) b!5457606))

(assert (= (and d!1737410 c!953370) b!5457607))

(assert (= (and d!1737410 (not c!953370)) b!5457602))

(assert (= (and b!5457602 c!953371) b!5457601))

(assert (= (and b!5457602 (not c!953371)) b!5457603))

(assert (= (and d!1737410 res!2324480) b!5457609))

(assert (= (and b!5457609 res!2324483) b!5457605))

(assert (= (and b!5457605 res!2324479) b!5457604))

(assert (= (and d!1737410 (not res!2324481)) b!5457608))

(declare-fun m!6478546 () Bool)

(assert (=> b!5457609 m!6478546))

(declare-fun m!6478548 () Bool)

(assert (=> b!5457609 m!6478548))

(declare-fun m!6478550 () Bool)

(assert (=> b!5457606 m!6478550))

(assert (=> b!5457604 m!6478546))

(declare-fun m!6478552 () Bool)

(assert (=> b!5457604 m!6478552))

(declare-fun m!6478554 () Bool)

(assert (=> b!5457608 m!6478554))

(assert (=> d!1737410 m!6478554))

(declare-fun m!6478556 () Bool)

(assert (=> d!1737410 m!6478556))

(declare-fun m!6478558 () Bool)

(assert (=> d!1737410 m!6478558))

(declare-fun m!6478560 () Bool)

(assert (=> b!5457603 m!6478560))

(assert (=> b!5457603 m!6478560))

(declare-fun m!6478562 () Bool)

(assert (=> b!5457603 m!6478562))

(declare-fun m!6478564 () Bool)

(assert (=> b!5457603 m!6478564))

(assert (=> b!5457603 m!6478560))

(declare-fun m!6478566 () Bool)

(assert (=> b!5457603 m!6478566))

(assert (=> b!5457605 m!6478546))

(declare-fun m!6478568 () Bool)

(assert (=> b!5457605 m!6478568))

(assert (=> bm!398993 d!1737410))

(declare-fun d!1737412 () Bool)

(assert (=> d!1737412 (= (matchR!7470 lt!2228362 s!2326) (matchRSpec!2388 lt!2228362 s!2326))))

(declare-fun lt!2228488 () Unit!154880)

(declare-fun choose!41466 (Regex!15285 List!62154) Unit!154880)

(assert (=> d!1737412 (= lt!2228488 (choose!41466 lt!2228362 s!2326))))

(assert (=> d!1737412 (validRegex!7021 lt!2228362)))

(assert (=> d!1737412 (= (mainMatchTheorem!2388 lt!2228362 s!2326) lt!2228488)))

(declare-fun bs!1262808 () Bool)

(assert (= bs!1262808 d!1737412))

(declare-fun m!6478570 () Bool)

(assert (=> bs!1262808 m!6478570))

(declare-fun m!6478572 () Bool)

(assert (=> bs!1262808 m!6478572))

(declare-fun m!6478574 () Bool)

(assert (=> bs!1262808 m!6478574))

(declare-fun m!6478576 () Bool)

(assert (=> bs!1262808 m!6478576))

(assert (=> b!5456965 d!1737412))

(declare-fun d!1737414 () Bool)

(assert (=> d!1737414 (= (matchR!7470 (Concat!24130 (Union!15285 (regOne!31083 (regOne!31082 r!7292)) (regTwo!31083 (regOne!31082 r!7292))) (regTwo!31082 r!7292)) s!2326) (matchR!7470 (Union!15285 (Concat!24130 (regOne!31083 (regOne!31082 r!7292)) (regTwo!31082 r!7292)) (Concat!24130 (regTwo!31083 (regOne!31082 r!7292)) (regTwo!31082 r!7292))) s!2326))))

(declare-fun lt!2228492 () Unit!154880)

(declare-fun choose!41467 (Regex!15285 Regex!15285 Regex!15285 List!62154) Unit!154880)

(assert (=> d!1737414 (= lt!2228492 (choose!41467 (regOne!31083 (regOne!31082 r!7292)) (regTwo!31083 (regOne!31082 r!7292)) (regTwo!31082 r!7292) s!2326))))

(assert (=> d!1737414 (validRegex!7021 (regOne!31083 (regOne!31082 r!7292)))))

(assert (=> d!1737414 (= (lemmaConcatDistributesInUnion!32 (regOne!31083 (regOne!31082 r!7292)) (regTwo!31083 (regOne!31082 r!7292)) (regTwo!31082 r!7292) s!2326) lt!2228492)))

(declare-fun bs!1262809 () Bool)

(assert (= bs!1262809 d!1737414))

(declare-fun m!6478602 () Bool)

(assert (=> bs!1262809 m!6478602))

(declare-fun m!6478604 () Bool)

(assert (=> bs!1262809 m!6478604))

(declare-fun m!6478606 () Bool)

(assert (=> bs!1262809 m!6478606))

(declare-fun m!6478608 () Bool)

(assert (=> bs!1262809 m!6478608))

(assert (=> b!5456965 d!1737414))

(declare-fun bs!1262810 () Bool)

(declare-fun b!5457645 () Bool)

(assert (= bs!1262810 (and b!5457645 b!5457434)))

(declare-fun lambda!288925 () Int)

(assert (=> bs!1262810 (= (and (= (reg!15614 lt!2228328) (reg!15614 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= lt!2228328 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= lambda!288925 lambda!288906))))

(declare-fun bs!1262811 () Bool)

(assert (= bs!1262811 (and b!5457645 b!5456979)))

(assert (=> bs!1262811 (not (= lambda!288925 lambda!288857))))

(declare-fun bs!1262812 () Bool)

(assert (= bs!1262812 (and b!5457645 b!5457008)))

(assert (=> bs!1262812 (not (= lambda!288925 lambda!288847))))

(declare-fun bs!1262813 () Bool)

(assert (= bs!1262813 (and b!5457645 b!5457132)))

(assert (=> bs!1262813 (not (= lambda!288925 lambda!288875))))

(declare-fun bs!1262814 () Bool)

(assert (= bs!1262814 (and b!5457645 b!5456961)))

(assert (=> bs!1262814 (not (= lambda!288925 lambda!288851))))

(declare-fun bs!1262815 () Bool)

(assert (= bs!1262815 (and b!5457645 b!5456970)))

(assert (=> bs!1262815 (not (= lambda!288925 lambda!288867))))

(declare-fun bs!1262816 () Bool)

(assert (= bs!1262816 (and b!5457645 d!1737340)))

(assert (=> bs!1262816 (= (and (= s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (reg!15614 lt!2228328) (reg!15614 (regOne!31082 r!7292))) (= lt!2228328 (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!288925 lambda!288905))))

(declare-fun bs!1262817 () Bool)

(assert (= bs!1262817 (and b!5457645 b!5456993)))

(assert (=> bs!1262817 (not (= lambda!288925 lambda!288864))))

(assert (=> bs!1262814 (not (= lambda!288925 lambda!288852))))

(assert (=> bs!1262812 (not (= lambda!288925 lambda!288846))))

(declare-fun bs!1262818 () Bool)

(assert (= bs!1262818 (and b!5457645 d!1737350)))

(assert (=> bs!1262818 (not (= lambda!288925 lambda!288912))))

(declare-fun bs!1262819 () Bool)

(assert (= bs!1262819 (and b!5457645 b!5456966)))

(assert (=> bs!1262819 (not (= lambda!288925 lambda!288853))))

(assert (=> bs!1262815 (not (= lambda!288925 lambda!288866))))

(assert (=> bs!1262814 (not (= lambda!288925 lambda!288850))))

(assert (=> bs!1262817 (not (= lambda!288925 lambda!288863))))

(declare-fun bs!1262820 () Bool)

(assert (= bs!1262820 (and b!5457645 d!1737378)))

(assert (=> bs!1262820 (not (= lambda!288925 lambda!288922))))

(assert (=> bs!1262820 (not (= lambda!288925 lambda!288921))))

(declare-fun bs!1262821 () Bool)

(assert (= bs!1262821 (and b!5457645 b!5457428)))

(assert (=> bs!1262821 (not (= lambda!288925 lambda!288907))))

(declare-fun bs!1262822 () Bool)

(assert (= bs!1262822 (and b!5457645 b!5457009)))

(assert (=> bs!1262822 (not (= lambda!288925 lambda!288842))))

(assert (=> bs!1262811 (not (= lambda!288925 lambda!288855))))

(assert (=> bs!1262816 (not (= lambda!288925 lambda!288904))))

(assert (=> bs!1262815 (= (and (= s!2326 Nil!62030) (= (reg!15614 lt!2228328) (reg!15614 (regOne!31082 r!7292))) (= lt!2228328 lt!2228350)) (= lambda!288925 lambda!288868))))

(declare-fun bs!1262823 () Bool)

(assert (= bs!1262823 (and b!5457645 d!1737326)))

(assert (=> bs!1262823 (not (= lambda!288925 lambda!288893))))

(assert (=> bs!1262812 (not (= lambda!288925 lambda!288848))))

(declare-fun bs!1262824 () Bool)

(assert (= bs!1262824 (and b!5457645 b!5457138)))

(assert (=> bs!1262824 (= (and (= (reg!15614 lt!2228328) (reg!15614 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= lt!2228328 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= lambda!288925 lambda!288874))))

(assert (=> bs!1262811 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (reg!15614 lt!2228328) (reg!15614 (regOne!31082 r!7292))) (= lt!2228328 lt!2228350)) (= lambda!288925 lambda!288856))))

(assert (=> bs!1262812 (not (= lambda!288925 lambda!288845))))

(assert (=> bs!1262817 (not (= lambda!288925 lambda!288862))))

(declare-fun bs!1262825 () Bool)

(assert (= bs!1262825 (and b!5457645 d!1737376)))

(assert (=> bs!1262825 (not (= lambda!288925 lambda!288919))))

(assert (=> bs!1262817 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (reg!15614 lt!2228328) (reg!15614 (regOne!31082 r!7292))) (= lt!2228328 lt!2228350)) (= lambda!288925 lambda!288865))))

(assert (=> bs!1262814 (not (= lambda!288925 lambda!288849))))

(assert (=> bs!1262822 (not (= lambda!288925 lambda!288843))))

(assert (=> bs!1262818 (not (= lambda!288925 lambda!288913))))

(assert (=> bs!1262817 (not (= lambda!288925 lambda!288861))))

(assert (=> bs!1262819 (not (= lambda!288925 lambda!288854))))

(assert (=> b!5457645 true))

(assert (=> b!5457645 true))

(declare-fun bs!1262826 () Bool)

(declare-fun b!5457639 () Bool)

(assert (= bs!1262826 (and b!5457639 b!5457434)))

(declare-fun lambda!288926 () Int)

(assert (=> bs!1262826 (not (= lambda!288926 lambda!288906))))

(declare-fun bs!1262827 () Bool)

(assert (= bs!1262827 (and b!5457639 b!5456979)))

(assert (=> bs!1262827 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (regOne!31082 lt!2228328) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 lt!2228328) lt!2228350)) (= lambda!288926 lambda!288857))))

(declare-fun bs!1262828 () Bool)

(assert (= bs!1262828 (and b!5457639 b!5457008)))

(assert (=> bs!1262828 (not (= lambda!288926 lambda!288847))))

(declare-fun bs!1262829 () Bool)

(assert (= bs!1262829 (and b!5457639 b!5457132)))

(assert (=> bs!1262829 (= (and (= (regOne!31082 lt!2228328) (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (regTwo!31082 lt!2228328) (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))) (= lambda!288926 lambda!288875))))

(declare-fun bs!1262830 () Bool)

(assert (= bs!1262830 (and b!5457639 b!5456961)))

(assert (=> bs!1262830 (not (= lambda!288926 lambda!288851))))

(declare-fun bs!1262831 () Bool)

(assert (= bs!1262831 (and b!5457639 b!5456970)))

(assert (=> bs!1262831 (= (and (= s!2326 Nil!62030) (= (regOne!31082 lt!2228328) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 lt!2228328) lt!2228350)) (= lambda!288926 lambda!288867))))

(declare-fun bs!1262832 () Bool)

(assert (= bs!1262832 (and b!5457639 d!1737340)))

(assert (=> bs!1262832 (not (= lambda!288926 lambda!288905))))

(declare-fun bs!1262833 () Bool)

(assert (= bs!1262833 (and b!5457639 b!5456993)))

(assert (=> bs!1262833 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (regOne!31082 lt!2228328) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 lt!2228328) lt!2228350)) (= lambda!288926 lambda!288864))))

(assert (=> bs!1262830 (= (and (= (regOne!31082 lt!2228328) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 lt!2228328) lt!2228185)) (= lambda!288926 lambda!288852))))

(assert (=> bs!1262828 (= (and (= (regOne!31082 lt!2228328) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 lt!2228328) lt!2228179)) (= lambda!288926 lambda!288846))))

(declare-fun bs!1262834 () Bool)

(assert (= bs!1262834 (and b!5457639 d!1737350)))

(assert (=> bs!1262834 (not (= lambda!288926 lambda!288912))))

(declare-fun bs!1262835 () Bool)

(assert (= bs!1262835 (and b!5457639 b!5456966)))

(assert (=> bs!1262835 (not (= lambda!288926 lambda!288853))))

(assert (=> bs!1262831 (not (= lambda!288926 lambda!288866))))

(assert (=> bs!1262830 (= (and (= (regOne!31082 lt!2228328) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 lt!2228328) lt!2228281)) (= lambda!288926 lambda!288850))))

(assert (=> bs!1262833 (not (= lambda!288926 lambda!288863))))

(declare-fun bs!1262836 () Bool)

(assert (= bs!1262836 (and b!5457639 d!1737378)))

(assert (=> bs!1262836 (= (and (= (regOne!31082 lt!2228328) (regOne!31082 r!7292)) (= (regTwo!31082 lt!2228328) (regTwo!31082 r!7292))) (= lambda!288926 lambda!288922))))

(assert (=> bs!1262836 (not (= lambda!288926 lambda!288921))))

(declare-fun bs!1262837 () Bool)

(assert (= bs!1262837 (and b!5457639 b!5457428)))

(assert (=> bs!1262837 (= (and (= (regOne!31082 lt!2228328) (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= (regTwo!31082 lt!2228328) (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))) (= lambda!288926 lambda!288907))))

(declare-fun bs!1262838 () Bool)

(assert (= bs!1262838 (and b!5457639 b!5457009)))

(assert (=> bs!1262838 (not (= lambda!288926 lambda!288842))))

(assert (=> bs!1262827 (not (= lambda!288926 lambda!288855))))

(assert (=> bs!1262832 (not (= lambda!288926 lambda!288904))))

(assert (=> bs!1262831 (not (= lambda!288926 lambda!288868))))

(declare-fun bs!1262839 () Bool)

(assert (= bs!1262839 (and b!5457639 d!1737326)))

(assert (=> bs!1262839 (not (= lambda!288926 lambda!288893))))

(assert (=> bs!1262828 (= (and (= (regOne!31082 lt!2228328) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 lt!2228328) lt!2228361)) (= lambda!288926 lambda!288848))))

(declare-fun bs!1262840 () Bool)

(assert (= bs!1262840 (and b!5457639 b!5457138)))

(assert (=> bs!1262840 (not (= lambda!288926 lambda!288874))))

(declare-fun bs!1262841 () Bool)

(assert (= bs!1262841 (and b!5457639 b!5457645)))

(assert (=> bs!1262841 (not (= lambda!288926 lambda!288925))))

(assert (=> bs!1262827 (not (= lambda!288926 lambda!288856))))

(assert (=> bs!1262828 (not (= lambda!288926 lambda!288845))))

(assert (=> bs!1262833 (= (and (= (regOne!31082 lt!2228328) lt!2228296) (= (regTwo!31082 lt!2228328) (regTwo!31082 r!7292))) (= lambda!288926 lambda!288862))))

(declare-fun bs!1262842 () Bool)

(assert (= bs!1262842 (and b!5457639 d!1737376)))

(assert (=> bs!1262842 (not (= lambda!288926 lambda!288919))))

(assert (=> bs!1262833 (not (= lambda!288926 lambda!288865))))

(assert (=> bs!1262830 (not (= lambda!288926 lambda!288849))))

(assert (=> bs!1262838 (= (and (= (regOne!31082 lt!2228328) (regOne!31082 r!7292)) (= (regTwo!31082 lt!2228328) (regTwo!31082 r!7292))) (= lambda!288926 lambda!288843))))

(assert (=> bs!1262834 (= (and (= s!2326 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) (= (regOne!31082 lt!2228328) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (regTwo!31082 lt!2228328) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!288926 lambda!288913))))

(assert (=> bs!1262833 (not (= lambda!288926 lambda!288861))))

(assert (=> bs!1262835 (= (and (= (regOne!31082 lt!2228328) lt!2228350) (= (regTwo!31082 lt!2228328) (regTwo!31082 r!7292))) (= lambda!288926 lambda!288854))))

(assert (=> b!5457639 true))

(assert (=> b!5457639 true))

(declare-fun b!5457635 () Bool)

(declare-fun e!3379756 () Bool)

(declare-fun e!3379755 () Bool)

(assert (=> b!5457635 (= e!3379756 e!3379755)))

(declare-fun res!2324495 () Bool)

(assert (=> b!5457635 (= res!2324495 (not ((_ is EmptyLang!15285) lt!2228328)))))

(assert (=> b!5457635 (=> (not res!2324495) (not e!3379755))))

(declare-fun b!5457636 () Bool)

(declare-fun e!3379761 () Bool)

(assert (=> b!5457636 (= e!3379761 (= s!2326 (Cons!62030 (c!953215 lt!2228328) Nil!62030)))))

(declare-fun bm!399125 () Bool)

(declare-fun call!399131 () Bool)

(assert (=> bm!399125 (= call!399131 (isEmpty!34016 s!2326))))

(declare-fun b!5457637 () Bool)

(declare-fun c!953383 () Bool)

(assert (=> b!5457637 (= c!953383 ((_ is ElementMatch!15285) lt!2228328))))

(assert (=> b!5457637 (= e!3379755 e!3379761)))

(declare-fun d!1737420 () Bool)

(declare-fun c!953382 () Bool)

(assert (=> d!1737420 (= c!953382 ((_ is EmptyExpr!15285) lt!2228328))))

(assert (=> d!1737420 (= (matchRSpec!2388 lt!2228328 s!2326) e!3379756)))

(declare-fun b!5457638 () Bool)

(declare-fun e!3379758 () Bool)

(declare-fun e!3379760 () Bool)

(assert (=> b!5457638 (= e!3379758 e!3379760)))

(declare-fun res!2324494 () Bool)

(assert (=> b!5457638 (= res!2324494 (matchRSpec!2388 (regOne!31083 lt!2228328) s!2326))))

(assert (=> b!5457638 (=> res!2324494 e!3379760)))

(declare-fun e!3379757 () Bool)

(declare-fun call!399130 () Bool)

(assert (=> b!5457639 (= e!3379757 call!399130)))

(declare-fun b!5457640 () Bool)

(declare-fun res!2324493 () Bool)

(declare-fun e!3379759 () Bool)

(assert (=> b!5457640 (=> res!2324493 e!3379759)))

(assert (=> b!5457640 (= res!2324493 call!399131)))

(assert (=> b!5457640 (= e!3379757 e!3379759)))

(declare-fun b!5457641 () Bool)

(assert (=> b!5457641 (= e!3379758 e!3379757)))

(declare-fun c!953380 () Bool)

(assert (=> b!5457641 (= c!953380 ((_ is Star!15285) lt!2228328))))

(declare-fun bm!399126 () Bool)

(assert (=> bm!399126 (= call!399130 (Exists!2466 (ite c!953380 lambda!288925 lambda!288926)))))

(declare-fun b!5457642 () Bool)

(assert (=> b!5457642 (= e!3379756 call!399131)))

(declare-fun b!5457643 () Bool)

(declare-fun c!953381 () Bool)

(assert (=> b!5457643 (= c!953381 ((_ is Union!15285) lt!2228328))))

(assert (=> b!5457643 (= e!3379761 e!3379758)))

(declare-fun b!5457644 () Bool)

(assert (=> b!5457644 (= e!3379760 (matchRSpec!2388 (regTwo!31083 lt!2228328) s!2326))))

(assert (=> b!5457645 (= e!3379759 call!399130)))

(assert (= (and d!1737420 c!953382) b!5457642))

(assert (= (and d!1737420 (not c!953382)) b!5457635))

(assert (= (and b!5457635 res!2324495) b!5457637))

(assert (= (and b!5457637 c!953383) b!5457636))

(assert (= (and b!5457637 (not c!953383)) b!5457643))

(assert (= (and b!5457643 c!953381) b!5457638))

(assert (= (and b!5457643 (not c!953381)) b!5457641))

(assert (= (and b!5457638 (not res!2324494)) b!5457644))

(assert (= (and b!5457641 c!953380) b!5457640))

(assert (= (and b!5457641 (not c!953380)) b!5457639))

(assert (= (and b!5457640 (not res!2324493)) b!5457645))

(assert (= (or b!5457645 b!5457639) bm!399126))

(assert (= (or b!5457642 b!5457640) bm!399125))

(assert (=> bm!399125 m!6478000))

(declare-fun m!6478610 () Bool)

(assert (=> b!5457638 m!6478610))

(declare-fun m!6478612 () Bool)

(assert (=> bm!399126 m!6478612))

(declare-fun m!6478614 () Bool)

(assert (=> b!5457644 m!6478614))

(assert (=> b!5456965 d!1737420))

(declare-fun d!1737422 () Bool)

(declare-fun c!953388 () Bool)

(assert (=> d!1737422 (= c!953388 (isEmpty!34016 (t!375383 s!2326)))))

(declare-fun e!3379772 () Bool)

(assert (=> d!1737422 (= (matchZipper!1529 ((_ map or) lt!2228204 lt!2228272) (t!375383 s!2326)) e!3379772)))

(declare-fun b!5457664 () Bool)

(assert (=> b!5457664 (= e!3379772 (nullableZipper!1485 ((_ map or) lt!2228204 lt!2228272)))))

(declare-fun b!5457665 () Bool)

(assert (=> b!5457665 (= e!3379772 (matchZipper!1529 (derivationStepZipper!1504 ((_ map or) lt!2228204 lt!2228272) (head!11687 (t!375383 s!2326))) (tail!10784 (t!375383 s!2326))))))

(assert (= (and d!1737422 c!953388) b!5457664))

(assert (= (and d!1737422 (not c!953388)) b!5457665))

(assert (=> d!1737422 m!6478102))

(declare-fun m!6478616 () Bool)

(assert (=> b!5457664 m!6478616))

(assert (=> b!5457665 m!6478106))

(assert (=> b!5457665 m!6478106))

(declare-fun m!6478618 () Bool)

(assert (=> b!5457665 m!6478618))

(assert (=> b!5457665 m!6478110))

(assert (=> b!5457665 m!6478618))

(assert (=> b!5457665 m!6478110))

(declare-fun m!6478620 () Bool)

(assert (=> b!5457665 m!6478620))

(assert (=> b!5456965 d!1737422))

(declare-fun d!1737424 () Bool)

(assert (=> d!1737424 (= (nullable!5454 (regOne!31083 (regOne!31082 r!7292))) (nullableFct!1637 (regOne!31083 (regOne!31082 r!7292))))))

(declare-fun bs!1262843 () Bool)

(assert (= bs!1262843 d!1737424))

(declare-fun m!6478622 () Bool)

(assert (=> bs!1262843 m!6478622))

(assert (=> b!5456965 d!1737424))

(declare-fun b!5457666 () Bool)

(declare-fun res!2324506 () Bool)

(declare-fun e!3379778 () Bool)

(assert (=> b!5457666 (=> (not res!2324506) (not e!3379778))))

(assert (=> b!5457666 (= res!2324506 (isEmpty!34016 (tail!10784 (ite c!953206 lt!2228198 s!2326))))))

(declare-fun b!5457667 () Bool)

(declare-fun e!3379777 () Bool)

(declare-fun e!3379774 () Bool)

(assert (=> b!5457667 (= e!3379777 e!3379774)))

(declare-fun c!953391 () Bool)

(assert (=> b!5457667 (= c!953391 ((_ is EmptyLang!15285) (ite c!953206 lt!2228257 lt!2228201)))))

(declare-fun b!5457668 () Bool)

(assert (=> b!5457668 (= e!3379778 (= (head!11687 (ite c!953206 lt!2228198 s!2326)) (c!953215 (ite c!953206 lt!2228257 lt!2228201))))))

(declare-fun d!1737426 () Bool)

(assert (=> d!1737426 e!3379777))

(declare-fun c!953389 () Bool)

(assert (=> d!1737426 (= c!953389 ((_ is EmptyExpr!15285) (ite c!953206 lt!2228257 lt!2228201)))))

(declare-fun lt!2228499 () Bool)

(declare-fun e!3379775 () Bool)

(assert (=> d!1737426 (= lt!2228499 e!3379775)))

(declare-fun c!953390 () Bool)

(assert (=> d!1737426 (= c!953390 (isEmpty!34016 (ite c!953206 lt!2228198 s!2326)))))

(assert (=> d!1737426 (validRegex!7021 (ite c!953206 lt!2228257 lt!2228201))))

(assert (=> d!1737426 (= (matchR!7470 (ite c!953206 lt!2228257 lt!2228201) (ite c!953206 lt!2228198 s!2326)) lt!2228499)))

(declare-fun b!5457669 () Bool)

(declare-fun res!2324511 () Bool)

(declare-fun e!3379779 () Bool)

(assert (=> b!5457669 (=> res!2324511 e!3379779)))

(assert (=> b!5457669 (= res!2324511 e!3379778)))

(declare-fun res!2324509 () Bool)

(assert (=> b!5457669 (=> (not res!2324509) (not e!3379778))))

(assert (=> b!5457669 (= res!2324509 lt!2228499)))

(declare-fun b!5457670 () Bool)

(declare-fun e!3379776 () Bool)

(declare-fun e!3379773 () Bool)

(assert (=> b!5457670 (= e!3379776 e!3379773)))

(declare-fun res!2324513 () Bool)

(assert (=> b!5457670 (=> res!2324513 e!3379773)))

(declare-fun call!399132 () Bool)

(assert (=> b!5457670 (= res!2324513 call!399132)))

(declare-fun b!5457671 () Bool)

(declare-fun res!2324510 () Bool)

(assert (=> b!5457671 (=> res!2324510 e!3379773)))

(assert (=> b!5457671 (= res!2324510 (not (isEmpty!34016 (tail!10784 (ite c!953206 lt!2228198 s!2326)))))))

(declare-fun b!5457672 () Bool)

(assert (=> b!5457672 (= e!3379775 (nullable!5454 (ite c!953206 lt!2228257 lt!2228201)))))

(declare-fun bm!399127 () Bool)

(assert (=> bm!399127 (= call!399132 (isEmpty!34016 (ite c!953206 lt!2228198 s!2326)))))

(declare-fun b!5457673 () Bool)

(assert (=> b!5457673 (= e!3379773 (not (= (head!11687 (ite c!953206 lt!2228198 s!2326)) (c!953215 (ite c!953206 lt!2228257 lt!2228201)))))))

(declare-fun b!5457674 () Bool)

(assert (=> b!5457674 (= e!3379774 (not lt!2228499))))

(declare-fun b!5457675 () Bool)

(assert (=> b!5457675 (= e!3379779 e!3379776)))

(declare-fun res!2324512 () Bool)

(assert (=> b!5457675 (=> (not res!2324512) (not e!3379776))))

(assert (=> b!5457675 (= res!2324512 (not lt!2228499))))

(declare-fun b!5457676 () Bool)

(assert (=> b!5457676 (= e!3379777 (= lt!2228499 call!399132))))

(declare-fun b!5457677 () Bool)

(declare-fun res!2324508 () Bool)

(assert (=> b!5457677 (=> (not res!2324508) (not e!3379778))))

(assert (=> b!5457677 (= res!2324508 (not call!399132))))

(declare-fun b!5457678 () Bool)

(declare-fun res!2324507 () Bool)

(assert (=> b!5457678 (=> res!2324507 e!3379779)))

(assert (=> b!5457678 (= res!2324507 (not ((_ is ElementMatch!15285) (ite c!953206 lt!2228257 lt!2228201))))))

(assert (=> b!5457678 (= e!3379774 e!3379779)))

(declare-fun b!5457679 () Bool)

(assert (=> b!5457679 (= e!3379775 (matchR!7470 (derivativeStep!4306 (ite c!953206 lt!2228257 lt!2228201) (head!11687 (ite c!953206 lt!2228198 s!2326))) (tail!10784 (ite c!953206 lt!2228198 s!2326))))))

(assert (= (and d!1737426 c!953390) b!5457672))

(assert (= (and d!1737426 (not c!953390)) b!5457679))

(assert (= (and d!1737426 c!953389) b!5457676))

(assert (= (and d!1737426 (not c!953389)) b!5457667))

(assert (= (and b!5457667 c!953391) b!5457674))

(assert (= (and b!5457667 (not c!953391)) b!5457678))

(assert (= (and b!5457678 (not res!2324507)) b!5457669))

(assert (= (and b!5457669 res!2324509) b!5457677))

(assert (= (and b!5457677 res!2324508) b!5457666))

(assert (= (and b!5457666 res!2324506) b!5457668))

(assert (= (and b!5457669 (not res!2324511)) b!5457675))

(assert (= (and b!5457675 res!2324512) b!5457670))

(assert (= (and b!5457670 (not res!2324513)) b!5457671))

(assert (= (and b!5457671 (not res!2324510)) b!5457673))

(assert (= (or b!5457676 b!5457677 b!5457670) bm!399127))

(declare-fun m!6478624 () Bool)

(assert (=> b!5457671 m!6478624))

(assert (=> b!5457671 m!6478624))

(declare-fun m!6478626 () Bool)

(assert (=> b!5457671 m!6478626))

(declare-fun m!6478628 () Bool)

(assert (=> b!5457668 m!6478628))

(declare-fun m!6478630 () Bool)

(assert (=> b!5457672 m!6478630))

(assert (=> b!5457679 m!6478628))

(assert (=> b!5457679 m!6478628))

(declare-fun m!6478632 () Bool)

(assert (=> b!5457679 m!6478632))

(assert (=> b!5457679 m!6478624))

(assert (=> b!5457679 m!6478632))

(assert (=> b!5457679 m!6478624))

(declare-fun m!6478634 () Bool)

(assert (=> b!5457679 m!6478634))

(declare-fun m!6478636 () Bool)

(assert (=> bm!399127 m!6478636))

(assert (=> b!5457673 m!6478628))

(assert (=> d!1737426 m!6478636))

(declare-fun m!6478638 () Bool)

(assert (=> d!1737426 m!6478638))

(assert (=> b!5457666 m!6478624))

(assert (=> b!5457666 m!6478624))

(assert (=> b!5457666 m!6478626))

(assert (=> bm!398948 d!1737426))

(declare-fun call!399155 () Int)

(declare-fun bm!399144 () Bool)

(declare-fun c!953422 () Bool)

(declare-fun c!953421 () Bool)

(assert (=> bm!399144 (= call!399155 (regexDepth!201 (ite c!953421 (regTwo!31083 r!7292) (ite c!953422 (regOne!31082 r!7292) (reg!15614 r!7292)))))))

(declare-fun b!5457753 () Bool)

(declare-fun e!3379830 () Int)

(declare-fun call!399154 () Int)

(assert (=> b!5457753 (= e!3379830 (+ 1 call!399154))))

(declare-fun d!1737428 () Bool)

(declare-fun e!3379823 () Bool)

(assert (=> d!1737428 e!3379823))

(declare-fun res!2324539 () Bool)

(assert (=> d!1737428 (=> (not res!2324539) (not e!3379823))))

(declare-fun lt!2228510 () Int)

(assert (=> d!1737428 (= res!2324539 (> lt!2228510 0))))

(declare-fun e!3379829 () Int)

(assert (=> d!1737428 (= lt!2228510 e!3379829)))

(declare-fun c!953416 () Bool)

(assert (=> d!1737428 (= c!953416 ((_ is ElementMatch!15285) r!7292))))

(assert (=> d!1737428 (= (regexDepth!201 r!7292) lt!2228510)))

(declare-fun b!5457754 () Bool)

(declare-fun res!2324540 () Bool)

(declare-fun e!3379827 () Bool)

(assert (=> b!5457754 (=> (not res!2324540) (not e!3379827))))

(declare-fun call!399150 () Int)

(assert (=> b!5457754 (= res!2324540 (> lt!2228510 call!399150))))

(declare-fun e!3379824 () Bool)

(assert (=> b!5457754 (= e!3379824 e!3379827)))

(declare-fun b!5457755 () Bool)

(declare-fun c!953420 () Bool)

(assert (=> b!5457755 (= c!953420 ((_ is Star!15285) r!7292))))

(declare-fun e!3379822 () Bool)

(assert (=> b!5457755 (= e!3379824 e!3379822)))

(declare-fun bm!399145 () Bool)

(declare-fun call!399152 () Int)

(declare-fun call!399149 () Int)

(assert (=> bm!399145 (= call!399152 call!399149)))

(declare-fun bm!399146 () Bool)

(assert (=> bm!399146 (= call!399150 call!399155)))

(declare-fun b!5457756 () Bool)

(declare-fun e!3379828 () Int)

(assert (=> b!5457756 (= e!3379828 (+ 1 call!399154))))

(declare-fun bm!399147 () Bool)

(declare-fun call!399153 () Int)

(declare-fun c!953418 () Bool)

(assert (=> bm!399147 (= call!399153 (regexDepth!201 (ite c!953418 (regOne!31083 r!7292) (regTwo!31082 r!7292))))))

(declare-fun b!5457757 () Bool)

(declare-fun e!3379825 () Bool)

(declare-fun e!3379826 () Bool)

(assert (=> b!5457757 (= e!3379825 e!3379826)))

(declare-fun res!2324541 () Bool)

(declare-fun call!399151 () Int)

(assert (=> b!5457757 (= res!2324541 (> lt!2228510 call!399151))))

(assert (=> b!5457757 (=> (not res!2324541) (not e!3379826))))

(declare-fun b!5457758 () Bool)

(declare-fun e!3379821 () Int)

(assert (=> b!5457758 (= e!3379821 (+ 1 call!399149))))

(declare-fun bm!399148 () Bool)

(declare-fun c!953419 () Bool)

(assert (=> bm!399148 (= call!399149 (regexDepth!201 (ite c!953419 (reg!15614 r!7292) (ite c!953418 (regTwo!31083 r!7292) (regOne!31082 r!7292)))))))

(declare-fun b!5457759 () Bool)

(assert (=> b!5457759 (= c!953418 ((_ is Union!15285) r!7292))))

(assert (=> b!5457759 (= e!3379821 e!3379830)))

(declare-fun b!5457760 () Bool)

(assert (=> b!5457760 (= e!3379825 e!3379824)))

(assert (=> b!5457760 (= c!953422 ((_ is Concat!24130) r!7292))))

(declare-fun b!5457761 () Bool)

(assert (=> b!5457761 (= e!3379826 (> lt!2228510 call!399155))))

(declare-fun b!5457762 () Bool)

(assert (=> b!5457762 (= e!3379829 1)))

(declare-fun b!5457763 () Bool)

(assert (=> b!5457763 (= e!3379827 (> lt!2228510 call!399151))))

(declare-fun b!5457764 () Bool)

(assert (=> b!5457764 (= e!3379822 (= lt!2228510 1))))

(declare-fun b!5457765 () Bool)

(assert (=> b!5457765 (= e!3379829 e!3379821)))

(assert (=> b!5457765 (= c!953419 ((_ is Star!15285) r!7292))))

(declare-fun b!5457766 () Bool)

(assert (=> b!5457766 (= e!3379828 1)))

(declare-fun b!5457767 () Bool)

(assert (=> b!5457767 (= e!3379822 (> lt!2228510 call!399150))))

(declare-fun bm!399149 () Bool)

(assert (=> bm!399149 (= call!399151 (regexDepth!201 (ite c!953421 (regOne!31083 r!7292) (regTwo!31082 r!7292))))))

(declare-fun b!5457768 () Bool)

(assert (=> b!5457768 (= e!3379830 e!3379828)))

(declare-fun c!953417 () Bool)

(assert (=> b!5457768 (= c!953417 ((_ is Concat!24130) r!7292))))

(declare-fun bm!399150 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!399150 (= call!399154 (maxBigInt!0 (ite c!953418 call!399153 call!399152) (ite c!953418 call!399152 call!399153)))))

(declare-fun b!5457769 () Bool)

(assert (=> b!5457769 (= e!3379823 e!3379825)))

(assert (=> b!5457769 (= c!953421 ((_ is Union!15285) r!7292))))

(assert (= (and d!1737428 c!953416) b!5457762))

(assert (= (and d!1737428 (not c!953416)) b!5457765))

(assert (= (and b!5457765 c!953419) b!5457758))

(assert (= (and b!5457765 (not c!953419)) b!5457759))

(assert (= (and b!5457759 c!953418) b!5457753))

(assert (= (and b!5457759 (not c!953418)) b!5457768))

(assert (= (and b!5457768 c!953417) b!5457756))

(assert (= (and b!5457768 (not c!953417)) b!5457766))

(assert (= (or b!5457753 b!5457756) bm!399145))

(assert (= (or b!5457753 b!5457756) bm!399147))

(assert (= (or b!5457753 b!5457756) bm!399150))

(assert (= (or b!5457758 bm!399145) bm!399148))

(assert (= (and d!1737428 res!2324539) b!5457769))

(assert (= (and b!5457769 c!953421) b!5457757))

(assert (= (and b!5457769 (not c!953421)) b!5457760))

(assert (= (and b!5457757 res!2324541) b!5457761))

(assert (= (and b!5457760 c!953422) b!5457754))

(assert (= (and b!5457760 (not c!953422)) b!5457755))

(assert (= (and b!5457754 res!2324540) b!5457763))

(assert (= (and b!5457755 c!953420) b!5457767))

(assert (= (and b!5457755 (not c!953420)) b!5457764))

(assert (= (or b!5457754 b!5457767) bm!399146))

(assert (= (or b!5457761 bm!399146) bm!399144))

(assert (= (or b!5457757 b!5457763) bm!399149))

(declare-fun m!6478744 () Bool)

(assert (=> bm!399150 m!6478744))

(declare-fun m!6478746 () Bool)

(assert (=> bm!399144 m!6478746))

(declare-fun m!6478748 () Bool)

(assert (=> bm!399149 m!6478748))

(declare-fun m!6478750 () Bool)

(assert (=> bm!399148 m!6478750))

(declare-fun m!6478752 () Bool)

(assert (=> bm!399147 m!6478752))

(assert (=> b!5456948 d!1737428))

(declare-fun call!399162 () Int)

(declare-fun bm!399151 () Bool)

(declare-fun c!953429 () Bool)

(declare-fun c!953428 () Bool)

(assert (=> bm!399151 (= call!399162 (regexDepth!201 (ite c!953428 (regTwo!31083 lt!2228324) (ite c!953429 (regOne!31082 lt!2228324) (reg!15614 lt!2228324)))))))

(declare-fun b!5457772 () Bool)

(declare-fun e!3379842 () Int)

(declare-fun call!399161 () Int)

(assert (=> b!5457772 (= e!3379842 (+ 1 call!399161))))

(declare-fun d!1737448 () Bool)

(declare-fun e!3379835 () Bool)

(assert (=> d!1737448 e!3379835))

(declare-fun res!2324544 () Bool)

(assert (=> d!1737448 (=> (not res!2324544) (not e!3379835))))

(declare-fun lt!2228513 () Int)

(assert (=> d!1737448 (= res!2324544 (> lt!2228513 0))))

(declare-fun e!3379841 () Int)

(assert (=> d!1737448 (= lt!2228513 e!3379841)))

(declare-fun c!953423 () Bool)

(assert (=> d!1737448 (= c!953423 ((_ is ElementMatch!15285) lt!2228324))))

(assert (=> d!1737448 (= (regexDepth!201 lt!2228324) lt!2228513)))

(declare-fun b!5457773 () Bool)

(declare-fun res!2324545 () Bool)

(declare-fun e!3379839 () Bool)

(assert (=> b!5457773 (=> (not res!2324545) (not e!3379839))))

(declare-fun call!399157 () Int)

(assert (=> b!5457773 (= res!2324545 (> lt!2228513 call!399157))))

(declare-fun e!3379836 () Bool)

(assert (=> b!5457773 (= e!3379836 e!3379839)))

(declare-fun b!5457774 () Bool)

(declare-fun c!953427 () Bool)

(assert (=> b!5457774 (= c!953427 ((_ is Star!15285) lt!2228324))))

(declare-fun e!3379834 () Bool)

(assert (=> b!5457774 (= e!3379836 e!3379834)))

(declare-fun bm!399152 () Bool)

(declare-fun call!399159 () Int)

(declare-fun call!399156 () Int)

(assert (=> bm!399152 (= call!399159 call!399156)))

(declare-fun bm!399153 () Bool)

(assert (=> bm!399153 (= call!399157 call!399162)))

(declare-fun b!5457775 () Bool)

(declare-fun e!3379840 () Int)

(assert (=> b!5457775 (= e!3379840 (+ 1 call!399161))))

(declare-fun bm!399154 () Bool)

(declare-fun call!399160 () Int)

(declare-fun c!953425 () Bool)

(assert (=> bm!399154 (= call!399160 (regexDepth!201 (ite c!953425 (regOne!31083 lt!2228324) (regTwo!31082 lt!2228324))))))

(declare-fun b!5457776 () Bool)

(declare-fun e!3379837 () Bool)

(declare-fun e!3379838 () Bool)

(assert (=> b!5457776 (= e!3379837 e!3379838)))

(declare-fun res!2324546 () Bool)

(declare-fun call!399158 () Int)

(assert (=> b!5457776 (= res!2324546 (> lt!2228513 call!399158))))

(assert (=> b!5457776 (=> (not res!2324546) (not e!3379838))))

(declare-fun b!5457777 () Bool)

(declare-fun e!3379833 () Int)

(assert (=> b!5457777 (= e!3379833 (+ 1 call!399156))))

(declare-fun bm!399155 () Bool)

(declare-fun c!953426 () Bool)

(assert (=> bm!399155 (= call!399156 (regexDepth!201 (ite c!953426 (reg!15614 lt!2228324) (ite c!953425 (regTwo!31083 lt!2228324) (regOne!31082 lt!2228324)))))))

(declare-fun b!5457778 () Bool)

(assert (=> b!5457778 (= c!953425 ((_ is Union!15285) lt!2228324))))

(assert (=> b!5457778 (= e!3379833 e!3379842)))

(declare-fun b!5457779 () Bool)

(assert (=> b!5457779 (= e!3379837 e!3379836)))

(assert (=> b!5457779 (= c!953429 ((_ is Concat!24130) lt!2228324))))

(declare-fun b!5457780 () Bool)

(assert (=> b!5457780 (= e!3379838 (> lt!2228513 call!399162))))

(declare-fun b!5457781 () Bool)

(assert (=> b!5457781 (= e!3379841 1)))

(declare-fun b!5457782 () Bool)

(assert (=> b!5457782 (= e!3379839 (> lt!2228513 call!399158))))

(declare-fun b!5457783 () Bool)

(assert (=> b!5457783 (= e!3379834 (= lt!2228513 1))))

(declare-fun b!5457784 () Bool)

(assert (=> b!5457784 (= e!3379841 e!3379833)))

(assert (=> b!5457784 (= c!953426 ((_ is Star!15285) lt!2228324))))

(declare-fun b!5457785 () Bool)

(assert (=> b!5457785 (= e!3379840 1)))

(declare-fun b!5457786 () Bool)

(assert (=> b!5457786 (= e!3379834 (> lt!2228513 call!399157))))

(declare-fun bm!399156 () Bool)

(assert (=> bm!399156 (= call!399158 (regexDepth!201 (ite c!953428 (regOne!31083 lt!2228324) (regTwo!31082 lt!2228324))))))

(declare-fun b!5457787 () Bool)

(assert (=> b!5457787 (= e!3379842 e!3379840)))

(declare-fun c!953424 () Bool)

(assert (=> b!5457787 (= c!953424 ((_ is Concat!24130) lt!2228324))))

(declare-fun bm!399157 () Bool)

(assert (=> bm!399157 (= call!399161 (maxBigInt!0 (ite c!953425 call!399160 call!399159) (ite c!953425 call!399159 call!399160)))))

(declare-fun b!5457788 () Bool)

(assert (=> b!5457788 (= e!3379835 e!3379837)))

(assert (=> b!5457788 (= c!953428 ((_ is Union!15285) lt!2228324))))

(assert (= (and d!1737448 c!953423) b!5457781))

(assert (= (and d!1737448 (not c!953423)) b!5457784))

(assert (= (and b!5457784 c!953426) b!5457777))

(assert (= (and b!5457784 (not c!953426)) b!5457778))

(assert (= (and b!5457778 c!953425) b!5457772))

(assert (= (and b!5457778 (not c!953425)) b!5457787))

(assert (= (and b!5457787 c!953424) b!5457775))

(assert (= (and b!5457787 (not c!953424)) b!5457785))

(assert (= (or b!5457772 b!5457775) bm!399152))

(assert (= (or b!5457772 b!5457775) bm!399154))

(assert (= (or b!5457772 b!5457775) bm!399157))

(assert (= (or b!5457777 bm!399152) bm!399155))

(assert (= (and d!1737448 res!2324544) b!5457788))

(assert (= (and b!5457788 c!953428) b!5457776))

(assert (= (and b!5457788 (not c!953428)) b!5457779))

(assert (= (and b!5457776 res!2324546) b!5457780))

(assert (= (and b!5457779 c!953429) b!5457773))

(assert (= (and b!5457779 (not c!953429)) b!5457774))

(assert (= (and b!5457773 res!2324545) b!5457782))

(assert (= (and b!5457774 c!953427) b!5457786))

(assert (= (and b!5457774 (not c!953427)) b!5457783))

(assert (= (or b!5457773 b!5457786) bm!399153))

(assert (= (or b!5457780 bm!399153) bm!399151))

(assert (= (or b!5457776 b!5457782) bm!399156))

(declare-fun m!6478754 () Bool)

(assert (=> bm!399157 m!6478754))

(declare-fun m!6478756 () Bool)

(assert (=> bm!399151 m!6478756))

(declare-fun m!6478758 () Bool)

(assert (=> bm!399156 m!6478758))

(declare-fun m!6478760 () Bool)

(assert (=> bm!399155 m!6478760))

(declare-fun m!6478762 () Bool)

(assert (=> bm!399154 m!6478762))

(assert (=> b!5456948 d!1737448))

(declare-fun bs!1262849 () Bool)

(declare-fun d!1737450 () Bool)

(assert (= bs!1262849 (and d!1737450 d!1737314)))

(declare-fun lambda!288930 () Int)

(assert (=> bs!1262849 (= lambda!288930 lambda!288890)))

(declare-fun bs!1262851 () Bool)

(assert (= bs!1262851 (and d!1737450 b!5456993)))

(assert (=> bs!1262851 (= lambda!288930 lambda!288860)))

(declare-fun bs!1262852 () Bool)

(assert (= bs!1262852 (and d!1737450 d!1737262)))

(assert (=> bs!1262852 (= lambda!288930 lambda!288878)))

(declare-fun bs!1262853 () Bool)

(assert (= bs!1262853 (and d!1737450 b!5456979)))

(assert (=> bs!1262853 (= lambda!288930 lambda!288858)))

(declare-fun bs!1262854 () Bool)

(assert (= bs!1262854 (and d!1737450 b!5456989)))

(assert (=> bs!1262854 (= lambda!288930 lambda!288869)))

(declare-fun bs!1262855 () Bool)

(assert (= bs!1262855 (and d!1737450 d!1737298)))

(assert (=> bs!1262855 (= lambda!288930 lambda!288887)))

(declare-fun b!5457790 () Bool)

(declare-fun e!3379849 () Bool)

(declare-fun lt!2228515 () Regex!15285)

(assert (=> b!5457790 (= e!3379849 (isConcat!540 lt!2228515))))

(declare-fun e!3379846 () Bool)

(assert (=> d!1737450 e!3379846))

(declare-fun res!2324549 () Bool)

(assert (=> d!1737450 (=> (not res!2324549) (not e!3379846))))

(assert (=> d!1737450 (= res!2324549 (validRegex!7021 lt!2228515))))

(declare-fun e!3379847 () Regex!15285)

(assert (=> d!1737450 (= lt!2228515 e!3379847)))

(declare-fun c!953433 () Bool)

(declare-fun e!3379845 () Bool)

(assert (=> d!1737450 (= c!953433 e!3379845)))

(declare-fun res!2324548 () Bool)

(assert (=> d!1737450 (=> (not res!2324548) (not e!3379845))))

(assert (=> d!1737450 (= res!2324548 ((_ is Cons!62031) (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(assert (=> d!1737450 (forall!14588 (t!375384 (exprs!5169 (h!68480 zl!343))) lambda!288930)))

(assert (=> d!1737450 (= (generalisedConcat!954 (t!375384 (exprs!5169 (h!68480 zl!343)))) lt!2228515)))

(declare-fun b!5457791 () Bool)

(declare-fun e!3379848 () Bool)

(assert (=> b!5457791 (= e!3379848 (isEmptyExpr!1017 lt!2228515))))

(declare-fun b!5457792 () Bool)

(assert (=> b!5457792 (= e!3379849 (= lt!2228515 (head!11689 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5457793 () Bool)

(assert (=> b!5457793 (= e!3379847 (h!68479 (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun b!5457794 () Bool)

(declare-fun e!3379844 () Regex!15285)

(assert (=> b!5457794 (= e!3379847 e!3379844)))

(declare-fun c!953430 () Bool)

(assert (=> b!5457794 (= c!953430 ((_ is Cons!62031) (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun b!5457795 () Bool)

(assert (=> b!5457795 (= e!3379848 e!3379849)))

(declare-fun c!953432 () Bool)

(assert (=> b!5457795 (= c!953432 (isEmpty!34017 (tail!10786 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5457796 () Bool)

(assert (=> b!5457796 (= e!3379845 (isEmpty!34017 (t!375384 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5457797 () Bool)

(assert (=> b!5457797 (= e!3379844 (Concat!24130 (h!68479 (t!375384 (exprs!5169 (h!68480 zl!343)))) (generalisedConcat!954 (t!375384 (t!375384 (exprs!5169 (h!68480 zl!343)))))))))

(declare-fun b!5457798 () Bool)

(assert (=> b!5457798 (= e!3379846 e!3379848)))

(declare-fun c!953431 () Bool)

(assert (=> b!5457798 (= c!953431 (isEmpty!34017 (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun b!5457799 () Bool)

(assert (=> b!5457799 (= e!3379844 EmptyExpr!15285)))

(assert (= (and d!1737450 res!2324548) b!5457796))

(assert (= (and d!1737450 c!953433) b!5457793))

(assert (= (and d!1737450 (not c!953433)) b!5457794))

(assert (= (and b!5457794 c!953430) b!5457797))

(assert (= (and b!5457794 (not c!953430)) b!5457799))

(assert (= (and d!1737450 res!2324549) b!5457798))

(assert (= (and b!5457798 c!953431) b!5457791))

(assert (= (and b!5457798 (not c!953431)) b!5457795))

(assert (= (and b!5457795 c!953432) b!5457792))

(assert (= (and b!5457795 (not c!953432)) b!5457790))

(declare-fun m!6478790 () Bool)

(assert (=> b!5457795 m!6478790))

(assert (=> b!5457795 m!6478790))

(declare-fun m!6478792 () Bool)

(assert (=> b!5457795 m!6478792))

(declare-fun m!6478794 () Bool)

(assert (=> b!5457797 m!6478794))

(declare-fun m!6478796 () Bool)

(assert (=> d!1737450 m!6478796))

(declare-fun m!6478798 () Bool)

(assert (=> d!1737450 m!6478798))

(assert (=> b!5457798 m!6477812))

(declare-fun m!6478800 () Bool)

(assert (=> b!5457790 m!6478800))

(declare-fun m!6478802 () Bool)

(assert (=> b!5457791 m!6478802))

(declare-fun m!6478804 () Bool)

(assert (=> b!5457792 m!6478804))

(declare-fun m!6478806 () Bool)

(assert (=> b!5457796 m!6478806))

(assert (=> b!5456948 d!1737450))

(declare-fun d!1737460 () Bool)

(assert (=> d!1737460 (= (get!21392 (ite c!953211 lt!2228304 lt!2228170)) (v!51424 (ite c!953211 lt!2228304 lt!2228170)))))

(assert (=> bm!398864 d!1737460))

(declare-fun d!1737462 () Bool)

(assert (=> d!1737462 (= (matchR!7470 (ite c!953204 lt!2228229 lt!2228240) s!2326) (matchRSpec!2388 (ite c!953204 lt!2228229 lt!2228240) s!2326))))

(declare-fun lt!2228519 () Unit!154880)

(assert (=> d!1737462 (= lt!2228519 (choose!41466 (ite c!953204 lt!2228229 lt!2228240) s!2326))))

(assert (=> d!1737462 (validRegex!7021 (ite c!953204 lt!2228229 lt!2228240))))

(assert (=> d!1737462 (= (mainMatchTheorem!2388 (ite c!953204 lt!2228229 lt!2228240) s!2326) lt!2228519)))

(declare-fun bs!1262856 () Bool)

(assert (= bs!1262856 d!1737462))

(declare-fun m!6478818 () Bool)

(assert (=> bs!1262856 m!6478818))

(declare-fun m!6478820 () Bool)

(assert (=> bs!1262856 m!6478820))

(declare-fun m!6478822 () Bool)

(assert (=> bs!1262856 m!6478822))

(declare-fun m!6478824 () Bool)

(assert (=> bs!1262856 m!6478824))

(assert (=> bm!398964 d!1737462))

(declare-fun d!1737466 () Bool)

(assert (=> d!1737466 (= (++!13649 (++!13649 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291))) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228245))) (++!13649 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (++!13649 (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228245)))))))

(declare-fun lt!2228525 () Unit!154880)

(declare-fun choose!41470 (List!62154 List!62154 List!62154) Unit!154880)

(assert (=> d!1737466 (= lt!2228525 (choose!41470 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228245))))))

(assert (=> d!1737466 (= (lemmaConcatAssociativity!2862 (ite c!953211 (_1!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228360) (_2!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228245))) lt!2228525)))

(declare-fun bs!1262858 () Bool)

(assert (= bs!1262858 d!1737466))

(assert (=> bs!1262858 m!6478210))

(declare-fun m!6478832 () Bool)

(assert (=> bs!1262858 m!6478832))

(assert (=> bs!1262858 m!6478210))

(declare-fun m!6478836 () Bool)

(assert (=> bs!1262858 m!6478836))

(declare-fun m!6478838 () Bool)

(assert (=> bs!1262858 m!6478838))

(declare-fun m!6478840 () Bool)

(assert (=> bs!1262858 m!6478840))

(assert (=> bs!1262858 m!6478838))

(assert (=> bm!399045 d!1737466))

(declare-fun bs!1262859 () Bool)

(declare-fun d!1737470 () Bool)

(assert (= bs!1262859 (and d!1737470 d!1737314)))

(declare-fun lambda!288931 () Int)

(assert (=> bs!1262859 (= lambda!288931 lambda!288890)))

(declare-fun bs!1262860 () Bool)

(assert (= bs!1262860 (and d!1737470 b!5456993)))

(assert (=> bs!1262860 (= lambda!288931 lambda!288860)))

(declare-fun bs!1262861 () Bool)

(assert (= bs!1262861 (and d!1737470 d!1737262)))

(assert (=> bs!1262861 (= lambda!288931 lambda!288878)))

(declare-fun bs!1262862 () Bool)

(assert (= bs!1262862 (and d!1737470 d!1737450)))

(assert (=> bs!1262862 (= lambda!288931 lambda!288930)))

(declare-fun bs!1262863 () Bool)

(assert (= bs!1262863 (and d!1737470 b!5456979)))

(assert (=> bs!1262863 (= lambda!288931 lambda!288858)))

(declare-fun bs!1262864 () Bool)

(assert (= bs!1262864 (and d!1737470 b!5456989)))

(assert (=> bs!1262864 (= lambda!288931 lambda!288869)))

(declare-fun bs!1262865 () Bool)

(assert (= bs!1262865 (and d!1737470 d!1737298)))

(assert (=> bs!1262865 (= lambda!288931 lambda!288887)))

(declare-fun b!5457804 () Bool)

(declare-fun e!3379858 () Bool)

(declare-fun lt!2228526 () Regex!15285)

(assert (=> b!5457804 (= e!3379858 (isConcat!540 lt!2228526))))

(declare-fun e!3379855 () Bool)

(assert (=> d!1737470 e!3379855))

(declare-fun res!2324553 () Bool)

(assert (=> d!1737470 (=> (not res!2324553) (not e!3379855))))

(assert (=> d!1737470 (= res!2324553 (validRegex!7021 lt!2228526))))

(declare-fun e!3379856 () Regex!15285)

(assert (=> d!1737470 (= lt!2228526 e!3379856)))

(declare-fun c!953438 () Bool)

(declare-fun e!3379854 () Bool)

(assert (=> d!1737470 (= c!953438 e!3379854)))

(declare-fun res!2324552 () Bool)

(assert (=> d!1737470 (=> (not res!2324552) (not e!3379854))))

(assert (=> d!1737470 (= res!2324552 ((_ is Cons!62031) (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(assert (=> d!1737470 (forall!14588 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343)))) lambda!288931)))

(assert (=> d!1737470 (= (generalisedConcat!954 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343))))) lt!2228526)))

(declare-fun b!5457805 () Bool)

(declare-fun e!3379857 () Bool)

(assert (=> b!5457805 (= e!3379857 (isEmptyExpr!1017 lt!2228526))))

(declare-fun b!5457806 () Bool)

(assert (=> b!5457806 (= e!3379858 (= lt!2228526 (head!11689 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343)))))))))

(declare-fun b!5457807 () Bool)

(assert (=> b!5457807 (= e!3379856 (h!68479 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5457808 () Bool)

(declare-fun e!3379853 () Regex!15285)

(assert (=> b!5457808 (= e!3379856 e!3379853)))

(declare-fun c!953435 () Bool)

(assert (=> b!5457808 (= c!953435 ((_ is Cons!62031) (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5457809 () Bool)

(assert (=> b!5457809 (= e!3379857 e!3379858)))

(declare-fun c!953437 () Bool)

(assert (=> b!5457809 (= c!953437 (isEmpty!34017 (tail!10786 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343)))))))))

(declare-fun b!5457810 () Bool)

(assert (=> b!5457810 (= e!3379854 (isEmpty!34017 (t!375384 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343)))))))))

(declare-fun b!5457811 () Bool)

(assert (=> b!5457811 (= e!3379853 (Concat!24130 (h!68479 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343))))) (generalisedConcat!954 (t!375384 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343))))))))))

(declare-fun b!5457812 () Bool)

(assert (=> b!5457812 (= e!3379855 e!3379857)))

(declare-fun c!953436 () Bool)

(assert (=> b!5457812 (= c!953436 (isEmpty!34017 (ite c!953204 lt!2228250 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5457813 () Bool)

(assert (=> b!5457813 (= e!3379853 EmptyExpr!15285)))

(assert (= (and d!1737470 res!2324552) b!5457810))

(assert (= (and d!1737470 c!953438) b!5457807))

(assert (= (and d!1737470 (not c!953438)) b!5457808))

(assert (= (and b!5457808 c!953435) b!5457811))

(assert (= (and b!5457808 (not c!953435)) b!5457813))

(assert (= (and d!1737470 res!2324553) b!5457812))

(assert (= (and b!5457812 c!953436) b!5457805))

(assert (= (and b!5457812 (not c!953436)) b!5457809))

(assert (= (and b!5457809 c!953437) b!5457806))

(assert (= (and b!5457809 (not c!953437)) b!5457804))

(declare-fun m!6478842 () Bool)

(assert (=> b!5457809 m!6478842))

(assert (=> b!5457809 m!6478842))

(declare-fun m!6478844 () Bool)

(assert (=> b!5457809 m!6478844))

(declare-fun m!6478846 () Bool)

(assert (=> b!5457811 m!6478846))

(declare-fun m!6478848 () Bool)

(assert (=> d!1737470 m!6478848))

(declare-fun m!6478850 () Bool)

(assert (=> d!1737470 m!6478850))

(declare-fun m!6478852 () Bool)

(assert (=> b!5457812 m!6478852))

(declare-fun m!6478854 () Bool)

(assert (=> b!5457804 m!6478854))

(declare-fun m!6478856 () Bool)

(assert (=> b!5457805 m!6478856))

(declare-fun m!6478858 () Bool)

(assert (=> b!5457806 m!6478858))

(declare-fun m!6478860 () Bool)

(assert (=> b!5457810 m!6478860))

(assert (=> bm!398852 d!1737470))

(declare-fun d!1737472 () Bool)

(declare-fun c!953439 () Bool)

(assert (=> d!1737472 (= c!953439 (isEmpty!34016 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228284 lt!2228346) (ite c!953213 s!2326 (t!375383 s!2326))))))))

(declare-fun e!3379859 () Bool)

(assert (=> d!1737472 (= (matchZipper!1529 (ite c!953204 lt!2228272 (ite c!953207 ((_ map or) lt!2228212 lt!2228274) (ite c!953205 (ite c!953211 (store ((as const (Array Context!9338 Bool)) false) (Context!9339 call!399049) true) (store ((as const (Array Context!9338 Bool)) false) (Context!9339 lt!2228308) true)) (ite c!953213 z!1189 lt!2228186)))) (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228284 lt!2228346) (ite c!953213 s!2326 (t!375383 s!2326))))) e!3379859)))

(declare-fun b!5457814 () Bool)

(assert (=> b!5457814 (= e!3379859 (nullableZipper!1485 (ite c!953204 lt!2228272 (ite c!953207 ((_ map or) lt!2228212 lt!2228274) (ite c!953205 (ite c!953211 (store ((as const (Array Context!9338 Bool)) false) (Context!9339 call!399049) true) (store ((as const (Array Context!9338 Bool)) false) (Context!9339 lt!2228308) true)) (ite c!953213 z!1189 lt!2228186))))))))

(declare-fun b!5457815 () Bool)

(assert (=> b!5457815 (= e!3379859 (matchZipper!1529 (derivationStepZipper!1504 (ite c!953204 lt!2228272 (ite c!953207 ((_ map or) lt!2228212 lt!2228274) (ite c!953205 (ite c!953211 (store ((as const (Array Context!9338 Bool)) false) (Context!9339 call!399049) true) (store ((as const (Array Context!9338 Bool)) false) (Context!9339 lt!2228308) true)) (ite c!953213 z!1189 lt!2228186)))) (head!11687 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228284 lt!2228346) (ite c!953213 s!2326 (t!375383 s!2326)))))) (tail!10784 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite c!953205 (ite c!953211 lt!2228284 lt!2228346) (ite c!953213 s!2326 (t!375383 s!2326)))))))))

(assert (= (and d!1737472 c!953439) b!5457814))

(assert (= (and d!1737472 (not c!953439)) b!5457815))

(declare-fun m!6478862 () Bool)

(assert (=> d!1737472 m!6478862))

(declare-fun m!6478864 () Bool)

(assert (=> b!5457814 m!6478864))

(declare-fun m!6478866 () Bool)

(assert (=> b!5457815 m!6478866))

(assert (=> b!5457815 m!6478866))

(declare-fun m!6478868 () Bool)

(assert (=> b!5457815 m!6478868))

(declare-fun m!6478870 () Bool)

(assert (=> b!5457815 m!6478870))

(assert (=> b!5457815 m!6478868))

(assert (=> b!5457815 m!6478870))

(declare-fun m!6478872 () Bool)

(assert (=> b!5457815 m!6478872))

(assert (=> bm!398869 d!1737472))

(declare-fun b!5457816 () Bool)

(declare-fun res!2324554 () Bool)

(declare-fun e!3379865 () Bool)

(assert (=> b!5457816 (=> (not res!2324554) (not e!3379865))))

(assert (=> b!5457816 (= res!2324554 (isEmpty!34016 (tail!10784 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326)))))))

(declare-fun b!5457817 () Bool)

(declare-fun e!3379864 () Bool)

(declare-fun e!3379861 () Bool)

(assert (=> b!5457817 (= e!3379864 e!3379861)))

(declare-fun c!953442 () Bool)

(assert (=> b!5457817 (= c!953442 ((_ is EmptyLang!15285) (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208))))))))

(declare-fun b!5457818 () Bool)

(assert (=> b!5457818 (= e!3379865 (= (head!11687 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326))) (c!953215 (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208)))))))))

(declare-fun d!1737474 () Bool)

(assert (=> d!1737474 e!3379864))

(declare-fun c!953440 () Bool)

(assert (=> d!1737474 (= c!953440 ((_ is EmptyExpr!15285) (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208))))))))

(declare-fun lt!2228527 () Bool)

(declare-fun e!3379862 () Bool)

(assert (=> d!1737474 (= lt!2228527 e!3379862)))

(declare-fun c!953441 () Bool)

(assert (=> d!1737474 (= c!953441 (isEmpty!34016 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326))))))

(assert (=> d!1737474 (validRegex!7021 (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208)))))))

(assert (=> d!1737474 (= (matchR!7470 (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208)))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326))) lt!2228527)))

(declare-fun b!5457819 () Bool)

(declare-fun res!2324559 () Bool)

(declare-fun e!3379866 () Bool)

(assert (=> b!5457819 (=> res!2324559 e!3379866)))

(assert (=> b!5457819 (= res!2324559 e!3379865)))

(declare-fun res!2324557 () Bool)

(assert (=> b!5457819 (=> (not res!2324557) (not e!3379865))))

(assert (=> b!5457819 (= res!2324557 lt!2228527)))

(declare-fun b!5457820 () Bool)

(declare-fun e!3379863 () Bool)

(declare-fun e!3379860 () Bool)

(assert (=> b!5457820 (= e!3379863 e!3379860)))

(declare-fun res!2324561 () Bool)

(assert (=> b!5457820 (=> res!2324561 e!3379860)))

(declare-fun call!399163 () Bool)

(assert (=> b!5457820 (= res!2324561 call!399163)))

(declare-fun b!5457821 () Bool)

(declare-fun res!2324558 () Bool)

(assert (=> b!5457821 (=> res!2324558 e!3379860)))

(assert (=> b!5457821 (= res!2324558 (not (isEmpty!34016 (tail!10784 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326))))))))

(declare-fun b!5457822 () Bool)

(assert (=> b!5457822 (= e!3379862 (nullable!5454 (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208))))))))

(declare-fun bm!399158 () Bool)

(assert (=> bm!399158 (= call!399163 (isEmpty!34016 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326))))))

(declare-fun b!5457823 () Bool)

(assert (=> b!5457823 (= e!3379860 (not (= (head!11687 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326))) (c!953215 (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208))))))))))

(declare-fun b!5457824 () Bool)

(assert (=> b!5457824 (= e!3379861 (not lt!2228527))))

(declare-fun b!5457825 () Bool)

(assert (=> b!5457825 (= e!3379866 e!3379863)))

(declare-fun res!2324560 () Bool)

(assert (=> b!5457825 (=> (not res!2324560) (not e!3379863))))

(assert (=> b!5457825 (= res!2324560 (not lt!2228527))))

(declare-fun b!5457826 () Bool)

(assert (=> b!5457826 (= e!3379864 (= lt!2228527 call!399163))))

(declare-fun b!5457827 () Bool)

(declare-fun res!2324556 () Bool)

(assert (=> b!5457827 (=> (not res!2324556) (not e!3379865))))

(assert (=> b!5457827 (= res!2324556 (not call!399163))))

(declare-fun b!5457828 () Bool)

(declare-fun res!2324555 () Bool)

(assert (=> b!5457828 (=> res!2324555 e!3379866)))

(assert (=> b!5457828 (= res!2324555 (not ((_ is ElementMatch!15285) (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208)))))))))

(assert (=> b!5457828 (= e!3379861 e!3379866)))

(declare-fun b!5457829 () Bool)

(assert (=> b!5457829 (= e!3379862 (matchR!7470 (derivativeStep!4306 (ite c!953204 lt!2228362 (ite c!953207 lt!2228179 (ite c!953209 (Concat!24130 (regOne!31082 (regOne!31082 r!7292)) (Concat!24130 (regTwo!31082 (regOne!31082 r!7292)) lt!2228185)) (ite c!953205 (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228350 lt!2228257)) lt!2228208)))) (head!11687 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326)))) (tail!10784 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228360) (ite c!953206 lt!2228227 call!398934)) s!2326)))))))

(assert (= (and d!1737474 c!953441) b!5457822))

(assert (= (and d!1737474 (not c!953441)) b!5457829))

(assert (= (and d!1737474 c!953440) b!5457826))

(assert (= (and d!1737474 (not c!953440)) b!5457817))

(assert (= (and b!5457817 c!953442) b!5457824))

(assert (= (and b!5457817 (not c!953442)) b!5457828))

(assert (= (and b!5457828 (not res!2324555)) b!5457819))

(assert (= (and b!5457819 res!2324557) b!5457827))

(assert (= (and b!5457827 res!2324556) b!5457816))

(assert (= (and b!5457816 res!2324554) b!5457818))

(assert (= (and b!5457819 (not res!2324559)) b!5457825))

(assert (= (and b!5457825 res!2324560) b!5457820))

(assert (= (and b!5457820 (not res!2324561)) b!5457821))

(assert (= (and b!5457821 (not res!2324558)) b!5457823))

(assert (= (or b!5457826 b!5457827 b!5457820) bm!399158))

(declare-fun m!6478874 () Bool)

(assert (=> b!5457821 m!6478874))

(assert (=> b!5457821 m!6478874))

(declare-fun m!6478876 () Bool)

(assert (=> b!5457821 m!6478876))

(declare-fun m!6478878 () Bool)

(assert (=> b!5457818 m!6478878))

(declare-fun m!6478880 () Bool)

(assert (=> b!5457822 m!6478880))

(assert (=> b!5457829 m!6478878))

(assert (=> b!5457829 m!6478878))

(declare-fun m!6478882 () Bool)

(assert (=> b!5457829 m!6478882))

(assert (=> b!5457829 m!6478874))

(assert (=> b!5457829 m!6478882))

(assert (=> b!5457829 m!6478874))

(declare-fun m!6478884 () Bool)

(assert (=> b!5457829 m!6478884))

(declare-fun m!6478886 () Bool)

(assert (=> bm!399158 m!6478886))

(assert (=> b!5457823 m!6478878))

(assert (=> d!1737474 m!6478886))

(declare-fun m!6478888 () Bool)

(assert (=> d!1737474 m!6478888))

(assert (=> b!5457816 m!6478874))

(assert (=> b!5457816 m!6478874))

(assert (=> b!5457816 m!6478876))

(assert (=> bm!398968 d!1737474))

(declare-fun d!1737476 () Bool)

(assert (=> d!1737476 (= (flatMap!1012 (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 lt!2228162)) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 lambda!288844))) (dynLambda!24409 (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 lambda!288844)) (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 lt!2228164))))))

(declare-fun lt!2228530 () Unit!154880)

(assert (=> d!1737476 (= lt!2228530 (choose!41463 (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 lt!2228162)) (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 lt!2228164)) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 lambda!288844))))))

(assert (=> d!1737476 (= (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 lt!2228162)) (store ((as const (Array Context!9338 Bool)) false) (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 lt!2228164)) true))))

(assert (=> d!1737476 (= (lemmaFlatMapOnSingletonSet!544 (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 lt!2228162)) (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 lt!2228164)) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 lambda!288844))) lt!2228530)))

(declare-fun b_lambda!207789 () Bool)

(assert (=> (not b_lambda!207789) (not d!1737476)))

(declare-fun bs!1262866 () Bool)

(assert (= bs!1262866 d!1737476))

(declare-fun m!6478890 () Bool)

(assert (=> bs!1262866 m!6478890))

(declare-fun m!6478892 () Bool)

(assert (=> bs!1262866 m!6478892))

(declare-fun m!6478894 () Bool)

(assert (=> bs!1262866 m!6478894))

(declare-fun m!6478896 () Bool)

(assert (=> bs!1262866 m!6478896))

(assert (=> bm!398942 d!1737476))

(declare-fun e!3379879 () Bool)

(declare-fun lt!2228531 () List!62154)

(declare-fun b!5457853 () Bool)

(assert (=> b!5457853 (= e!3379879 (or (not (= (ite c!953211 (_2!35787 lt!2228239) lt!2228256) Nil!62030)) (= lt!2228531 (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228291)))))))

(declare-fun d!1737478 () Bool)

(assert (=> d!1737478 e!3379879))

(declare-fun res!2324566 () Bool)

(assert (=> d!1737478 (=> (not res!2324566) (not e!3379879))))

(assert (=> d!1737478 (= res!2324566 (= (content!11166 lt!2228531) ((_ map or) (content!11166 (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228291))) (content!11166 (ite c!953211 (_2!35787 lt!2228239) lt!2228256)))))))

(declare-fun e!3379880 () List!62154)

(assert (=> d!1737478 (= lt!2228531 e!3379880)))

(declare-fun c!953451 () Bool)

(assert (=> d!1737478 (= c!953451 ((_ is Nil!62030) (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228291))))))

(assert (=> d!1737478 (= (++!13649 (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228291)) (ite c!953211 (_2!35787 lt!2228239) lt!2228256)) lt!2228531)))

(declare-fun b!5457850 () Bool)

(assert (=> b!5457850 (= e!3379880 (ite c!953211 (_2!35787 lt!2228239) lt!2228256))))

(declare-fun b!5457851 () Bool)

(assert (=> b!5457851 (= e!3379880 (Cons!62030 (h!68478 (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228291))) (++!13649 (t!375383 (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228291))) (ite c!953211 (_2!35787 lt!2228239) lt!2228256))))))

(declare-fun b!5457852 () Bool)

(declare-fun res!2324567 () Bool)

(assert (=> b!5457852 (=> (not res!2324567) (not e!3379879))))

(assert (=> b!5457852 (= res!2324567 (= (size!39901 lt!2228531) (+ (size!39901 (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228291))) (size!39901 (ite c!953211 (_2!35787 lt!2228239) lt!2228256)))))))

(assert (= (and d!1737478 c!953451) b!5457850))

(assert (= (and d!1737478 (not c!953451)) b!5457851))

(assert (= (and d!1737478 res!2324566) b!5457852))

(assert (= (and b!5457852 res!2324567) b!5457853))

(declare-fun m!6478898 () Bool)

(assert (=> d!1737478 m!6478898))

(declare-fun m!6478900 () Bool)

(assert (=> d!1737478 m!6478900))

(declare-fun m!6478902 () Bool)

(assert (=> d!1737478 m!6478902))

(declare-fun m!6478904 () Bool)

(assert (=> b!5457851 m!6478904))

(declare-fun m!6478906 () Bool)

(assert (=> b!5457852 m!6478906))

(declare-fun m!6478908 () Bool)

(assert (=> b!5457852 m!6478908))

(declare-fun m!6478910 () Bool)

(assert (=> b!5457852 m!6478910))

(assert (=> bm!398954 d!1737478))

(declare-fun d!1737480 () Bool)

(assert (=> d!1737480 (= (isEmpty!34015 (t!375385 zl!343)) ((_ is Nil!62032) (t!375385 zl!343)))))

(assert (=> b!5456950 d!1737480))

(declare-fun d!1737482 () Bool)

(assert (=> d!1737482 (forall!14588 (++!13650 lt!2228326 lt!2228195) (ite c!953211 lambda!288858 lambda!288860))))

(declare-fun lt!2228535 () Unit!154880)

(declare-fun choose!41472 (List!62155 List!62155 Int) Unit!154880)

(assert (=> d!1737482 (= lt!2228535 (choose!41472 lt!2228326 lt!2228195 (ite c!953211 lambda!288858 lambda!288860)))))

(assert (=> d!1737482 (forall!14588 lt!2228326 (ite c!953211 lambda!288858 lambda!288860))))

(assert (=> d!1737482 (= (lemmaConcatPreservesForall!252 lt!2228326 lt!2228195 (ite c!953211 lambda!288858 lambda!288860)) lt!2228535)))

(declare-fun bs!1262871 () Bool)

(assert (= bs!1262871 d!1737482))

(assert (=> bs!1262871 m!6477742))

(assert (=> bs!1262871 m!6477742))

(declare-fun m!6478912 () Bool)

(assert (=> bs!1262871 m!6478912))

(declare-fun m!6478914 () Bool)

(assert (=> bs!1262871 m!6478914))

(declare-fun m!6478916 () Bool)

(assert (=> bs!1262871 m!6478916))

(assert (=> bm!398892 d!1737482))

(declare-fun d!1737484 () Bool)

(assert (=> d!1737484 (= (Exists!2466 (ite c!953211 lambda!288853 (ite c!953206 lambda!288861 lambda!288866))) (choose!41451 (ite c!953211 lambda!288853 (ite c!953206 lambda!288861 lambda!288866))))))

(declare-fun bs!1262872 () Bool)

(assert (= bs!1262872 d!1737484))

(declare-fun m!6478918 () Bool)

(assert (=> bs!1262872 m!6478918))

(assert (=> bm!398855 d!1737484))

(declare-fun d!1737486 () Bool)

(declare-fun e!3379887 () Bool)

(assert (=> d!1737486 (= (matchZipper!1529 ((_ map or) (ite c!953204 lt!2228204 lt!2228212) (ite c!953204 lt!2228166 lt!2228315)) (t!375383 s!2326)) e!3379887)))

(declare-fun res!2324570 () Bool)

(assert (=> d!1737486 (=> res!2324570 e!3379887)))

(assert (=> d!1737486 (= res!2324570 (matchZipper!1529 (ite c!953204 lt!2228204 lt!2228212) (t!375383 s!2326)))))

(declare-fun lt!2228536 () Unit!154880)

(assert (=> d!1737486 (= lt!2228536 (choose!41464 (ite c!953204 lt!2228204 lt!2228212) (ite c!953204 lt!2228166 lt!2228315) (t!375383 s!2326)))))

(assert (=> d!1737486 (= (lemmaZipperConcatMatchesSameAsBothZippers!522 (ite c!953204 lt!2228204 lt!2228212) (ite c!953204 lt!2228166 lt!2228315) (t!375383 s!2326)) lt!2228536)))

(declare-fun b!5457864 () Bool)

(assert (=> b!5457864 (= e!3379887 (matchZipper!1529 (ite c!953204 lt!2228166 lt!2228315) (t!375383 s!2326)))))

(assert (= (and d!1737486 (not res!2324570)) b!5457864))

(declare-fun m!6478940 () Bool)

(assert (=> d!1737486 m!6478940))

(declare-fun m!6478942 () Bool)

(assert (=> d!1737486 m!6478942))

(declare-fun m!6478944 () Bool)

(assert (=> d!1737486 m!6478944))

(declare-fun m!6478946 () Bool)

(assert (=> b!5457864 m!6478946))

(assert (=> bm!399002 d!1737486))

(declare-fun bs!1262889 () Bool)

(declare-fun d!1737490 () Bool)

(assert (= bs!1262889 (and d!1737490 d!1737314)))

(declare-fun lambda!288939 () Int)

(assert (=> bs!1262889 (= lambda!288939 lambda!288890)))

(declare-fun bs!1262891 () Bool)

(assert (= bs!1262891 (and d!1737490 b!5456993)))

(assert (=> bs!1262891 (= lambda!288939 lambda!288860)))

(declare-fun bs!1262892 () Bool)

(assert (= bs!1262892 (and d!1737490 d!1737262)))

(assert (=> bs!1262892 (= lambda!288939 lambda!288878)))

(declare-fun bs!1262893 () Bool)

(assert (= bs!1262893 (and d!1737490 d!1737450)))

(assert (=> bs!1262893 (= lambda!288939 lambda!288930)))

(declare-fun bs!1262895 () Bool)

(assert (= bs!1262895 (and d!1737490 d!1737470)))

(assert (=> bs!1262895 (= lambda!288939 lambda!288931)))

(declare-fun bs!1262896 () Bool)

(assert (= bs!1262896 (and d!1737490 b!5456979)))

(assert (=> bs!1262896 (= lambda!288939 lambda!288858)))

(declare-fun bs!1262898 () Bool)

(assert (= bs!1262898 (and d!1737490 b!5456989)))

(assert (=> bs!1262898 (= lambda!288939 lambda!288869)))

(declare-fun bs!1262899 () Bool)

(assert (= bs!1262899 (and d!1737490 d!1737298)))

(assert (=> bs!1262899 (= lambda!288939 lambda!288887)))

(declare-fun b!5457896 () Bool)

(declare-fun e!3379909 () Regex!15285)

(assert (=> b!5457896 (= e!3379909 (Union!15285 (h!68479 (unfocusZipperList!727 zl!343)) (generalisedUnion!1214 (t!375384 (unfocusZipperList!727 zl!343)))))))

(declare-fun b!5457897 () Bool)

(declare-fun e!3379908 () Bool)

(declare-fun lt!2228542 () Regex!15285)

(declare-fun isUnion!458 (Regex!15285) Bool)

(assert (=> b!5457897 (= e!3379908 (isUnion!458 lt!2228542))))

(declare-fun e!3379912 () Bool)

(assert (=> d!1737490 e!3379912))

(declare-fun res!2324579 () Bool)

(assert (=> d!1737490 (=> (not res!2324579) (not e!3379912))))

(assert (=> d!1737490 (= res!2324579 (validRegex!7021 lt!2228542))))

(declare-fun e!3379907 () Regex!15285)

(assert (=> d!1737490 (= lt!2228542 e!3379907)))

(declare-fun c!953469 () Bool)

(declare-fun e!3379911 () Bool)

(assert (=> d!1737490 (= c!953469 e!3379911)))

(declare-fun res!2324578 () Bool)

(assert (=> d!1737490 (=> (not res!2324578) (not e!3379911))))

(assert (=> d!1737490 (= res!2324578 ((_ is Cons!62031) (unfocusZipperList!727 zl!343)))))

(assert (=> d!1737490 (forall!14588 (unfocusZipperList!727 zl!343) lambda!288939)))

(assert (=> d!1737490 (= (generalisedUnion!1214 (unfocusZipperList!727 zl!343)) lt!2228542)))

(declare-fun b!5457898 () Bool)

(assert (=> b!5457898 (= e!3379907 e!3379909)))

(declare-fun c!953470 () Bool)

(assert (=> b!5457898 (= c!953470 ((_ is Cons!62031) (unfocusZipperList!727 zl!343)))))

(declare-fun b!5457899 () Bool)

(assert (=> b!5457899 (= e!3379907 (h!68479 (unfocusZipperList!727 zl!343)))))

(declare-fun b!5457900 () Bool)

(assert (=> b!5457900 (= e!3379911 (isEmpty!34017 (t!375384 (unfocusZipperList!727 zl!343))))))

(declare-fun b!5457901 () Bool)

(assert (=> b!5457901 (= e!3379908 (= lt!2228542 (head!11689 (unfocusZipperList!727 zl!343))))))

(declare-fun b!5457902 () Bool)

(assert (=> b!5457902 (= e!3379909 EmptyLang!15285)))

(declare-fun b!5457903 () Bool)

(declare-fun e!3379910 () Bool)

(assert (=> b!5457903 (= e!3379910 e!3379908)))

(declare-fun c!953471 () Bool)

(assert (=> b!5457903 (= c!953471 (isEmpty!34017 (tail!10786 (unfocusZipperList!727 zl!343))))))

(declare-fun b!5457904 () Bool)

(declare-fun isEmptyLang!1026 (Regex!15285) Bool)

(assert (=> b!5457904 (= e!3379910 (isEmptyLang!1026 lt!2228542))))

(declare-fun b!5457905 () Bool)

(assert (=> b!5457905 (= e!3379912 e!3379910)))

(declare-fun c!953468 () Bool)

(assert (=> b!5457905 (= c!953468 (isEmpty!34017 (unfocusZipperList!727 zl!343)))))

(assert (= (and d!1737490 res!2324578) b!5457900))

(assert (= (and d!1737490 c!953469) b!5457899))

(assert (= (and d!1737490 (not c!953469)) b!5457898))

(assert (= (and b!5457898 c!953470) b!5457896))

(assert (= (and b!5457898 (not c!953470)) b!5457902))

(assert (= (and d!1737490 res!2324579) b!5457905))

(assert (= (and b!5457905 c!953468) b!5457904))

(assert (= (and b!5457905 (not c!953468)) b!5457903))

(assert (= (and b!5457903 c!953471) b!5457901))

(assert (= (and b!5457903 (not c!953471)) b!5457897))

(declare-fun m!6478950 () Bool)

(assert (=> b!5457896 m!6478950))

(assert (=> b!5457901 m!6477724))

(declare-fun m!6478952 () Bool)

(assert (=> b!5457901 m!6478952))

(declare-fun m!6478954 () Bool)

(assert (=> b!5457897 m!6478954))

(declare-fun m!6478956 () Bool)

(assert (=> b!5457900 m!6478956))

(assert (=> b!5457903 m!6477724))

(declare-fun m!6478958 () Bool)

(assert (=> b!5457903 m!6478958))

(assert (=> b!5457903 m!6478958))

(declare-fun m!6478960 () Bool)

(assert (=> b!5457903 m!6478960))

(declare-fun m!6478962 () Bool)

(assert (=> d!1737490 m!6478962))

(assert (=> d!1737490 m!6477724))

(declare-fun m!6478964 () Bool)

(assert (=> d!1737490 m!6478964))

(assert (=> b!5457905 m!6477724))

(declare-fun m!6478966 () Bool)

(assert (=> b!5457905 m!6478966))

(declare-fun m!6478968 () Bool)

(assert (=> b!5457904 m!6478968))

(assert (=> b!5457003 d!1737490))

(declare-fun bs!1262908 () Bool)

(declare-fun d!1737494 () Bool)

(assert (= bs!1262908 (and d!1737494 d!1737314)))

(declare-fun lambda!288942 () Int)

(assert (=> bs!1262908 (= lambda!288942 lambda!288890)))

(declare-fun bs!1262909 () Bool)

(assert (= bs!1262909 (and d!1737494 b!5456993)))

(assert (=> bs!1262909 (= lambda!288942 lambda!288860)))

(declare-fun bs!1262910 () Bool)

(assert (= bs!1262910 (and d!1737494 d!1737262)))

(assert (=> bs!1262910 (= lambda!288942 lambda!288878)))

(declare-fun bs!1262911 () Bool)

(assert (= bs!1262911 (and d!1737494 d!1737450)))

(assert (=> bs!1262911 (= lambda!288942 lambda!288930)))

(declare-fun bs!1262912 () Bool)

(assert (= bs!1262912 (and d!1737494 d!1737470)))

(assert (=> bs!1262912 (= lambda!288942 lambda!288931)))

(declare-fun bs!1262913 () Bool)

(assert (= bs!1262913 (and d!1737494 b!5456989)))

(assert (=> bs!1262913 (= lambda!288942 lambda!288869)))

(declare-fun bs!1262914 () Bool)

(assert (= bs!1262914 (and d!1737494 d!1737298)))

(assert (=> bs!1262914 (= lambda!288942 lambda!288887)))

(declare-fun bs!1262915 () Bool)

(assert (= bs!1262915 (and d!1737494 b!5456979)))

(assert (=> bs!1262915 (= lambda!288942 lambda!288858)))

(declare-fun bs!1262916 () Bool)

(assert (= bs!1262916 (and d!1737494 d!1737490)))

(assert (=> bs!1262916 (= lambda!288942 lambda!288939)))

(declare-fun lt!2228545 () List!62155)

(assert (=> d!1737494 (forall!14588 lt!2228545 lambda!288942)))

(declare-fun e!3379915 () List!62155)

(assert (=> d!1737494 (= lt!2228545 e!3379915)))

(declare-fun c!953474 () Bool)

(assert (=> d!1737494 (= c!953474 ((_ is Cons!62032) zl!343))))

(assert (=> d!1737494 (= (unfocusZipperList!727 zl!343) lt!2228545)))

(declare-fun b!5457910 () Bool)

(assert (=> b!5457910 (= e!3379915 (Cons!62031 (generalisedConcat!954 (exprs!5169 (h!68480 zl!343))) (unfocusZipperList!727 (t!375385 zl!343))))))

(declare-fun b!5457911 () Bool)

(assert (=> b!5457911 (= e!3379915 Nil!62031)))

(assert (= (and d!1737494 c!953474) b!5457910))

(assert (= (and d!1737494 (not c!953474)) b!5457911))

(declare-fun m!6478980 () Bool)

(assert (=> d!1737494 m!6478980))

(assert (=> b!5457910 m!6477916))

(declare-fun m!6478982 () Bool)

(assert (=> b!5457910 m!6478982))

(assert (=> b!5457003 d!1737494))

(declare-fun d!1737502 () Bool)

(assert (=> d!1737502 (= (matchR!7470 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 lt!2228280 (regTwo!31082 r!7292))))) s!2326) (matchRSpec!2388 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 lt!2228280 (regTwo!31082 r!7292))))) s!2326))))

(declare-fun lt!2228546 () Unit!154880)

(assert (=> d!1737502 (= lt!2228546 (choose!41466 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 lt!2228280 (regTwo!31082 r!7292))))) s!2326))))

(assert (=> d!1737502 (validRegex!7021 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 lt!2228280 (regTwo!31082 r!7292))))))))

(assert (=> d!1737502 (= (mainMatchTheorem!2388 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 lt!2228280 (regTwo!31082 r!7292))))) s!2326) lt!2228546)))

(declare-fun bs!1262917 () Bool)

(assert (= bs!1262917 d!1737502))

(declare-fun m!6478984 () Bool)

(assert (=> bs!1262917 m!6478984))

(declare-fun m!6478986 () Bool)

(assert (=> bs!1262917 m!6478986))

(declare-fun m!6478988 () Bool)

(assert (=> bs!1262917 m!6478988))

(declare-fun m!6478990 () Bool)

(assert (=> bs!1262917 m!6478990))

(assert (=> bm!398877 d!1737502))

(declare-fun e!3379916 () Bool)

(declare-fun d!1737504 () Bool)

(assert (=> d!1737504 (= (matchZipper!1529 ((_ map or) lt!2228186 lt!2228166) (t!375383 s!2326)) e!3379916)))

(declare-fun res!2324580 () Bool)

(assert (=> d!1737504 (=> res!2324580 e!3379916)))

(assert (=> d!1737504 (= res!2324580 (matchZipper!1529 lt!2228186 (t!375383 s!2326)))))

(declare-fun lt!2228547 () Unit!154880)

(assert (=> d!1737504 (= lt!2228547 (choose!41464 lt!2228186 lt!2228166 (t!375383 s!2326)))))

(assert (=> d!1737504 (= (lemmaZipperConcatMatchesSameAsBothZippers!522 lt!2228186 lt!2228166 (t!375383 s!2326)) lt!2228547)))

(declare-fun b!5457912 () Bool)

(assert (=> b!5457912 (= e!3379916 (matchZipper!1529 lt!2228166 (t!375383 s!2326)))))

(assert (= (and d!1737504 (not res!2324580)) b!5457912))

(assert (=> d!1737504 m!6477678))

(assert (=> d!1737504 m!6477676))

(declare-fun m!6478992 () Bool)

(assert (=> d!1737504 m!6478992))

(assert (=> b!5457912 m!6477856))

(assert (=> b!5456959 d!1737504))

(declare-fun d!1737506 () Bool)

(declare-fun c!953475 () Bool)

(assert (=> d!1737506 (= c!953475 (isEmpty!34016 (t!375383 s!2326)))))

(declare-fun e!3379917 () Bool)

(assert (=> d!1737506 (= (matchZipper!1529 lt!2228186 (t!375383 s!2326)) e!3379917)))

(declare-fun b!5457913 () Bool)

(assert (=> b!5457913 (= e!3379917 (nullableZipper!1485 lt!2228186))))

(declare-fun b!5457914 () Bool)

(assert (=> b!5457914 (= e!3379917 (matchZipper!1529 (derivationStepZipper!1504 lt!2228186 (head!11687 (t!375383 s!2326))) (tail!10784 (t!375383 s!2326))))))

(assert (= (and d!1737506 c!953475) b!5457913))

(assert (= (and d!1737506 (not c!953475)) b!5457914))

(assert (=> d!1737506 m!6478102))

(declare-fun m!6478994 () Bool)

(assert (=> b!5457913 m!6478994))

(assert (=> b!5457914 m!6478106))

(assert (=> b!5457914 m!6478106))

(declare-fun m!6478996 () Bool)

(assert (=> b!5457914 m!6478996))

(assert (=> b!5457914 m!6478110))

(assert (=> b!5457914 m!6478996))

(assert (=> b!5457914 m!6478110))

(declare-fun m!6478998 () Bool)

(assert (=> b!5457914 m!6478998))

(assert (=> b!5456959 d!1737506))

(declare-fun d!1737508 () Bool)

(declare-fun c!953476 () Bool)

(assert (=> d!1737508 (= c!953476 (isEmpty!34016 (t!375383 s!2326)))))

(declare-fun e!3379918 () Bool)

(assert (=> d!1737508 (= (matchZipper!1529 ((_ map or) lt!2228186 lt!2228166) (t!375383 s!2326)) e!3379918)))

(declare-fun b!5457915 () Bool)

(assert (=> b!5457915 (= e!3379918 (nullableZipper!1485 ((_ map or) lt!2228186 lt!2228166)))))

(declare-fun b!5457916 () Bool)

(assert (=> b!5457916 (= e!3379918 (matchZipper!1529 (derivationStepZipper!1504 ((_ map or) lt!2228186 lt!2228166) (head!11687 (t!375383 s!2326))) (tail!10784 (t!375383 s!2326))))))

(assert (= (and d!1737508 c!953476) b!5457915))

(assert (= (and d!1737508 (not c!953476)) b!5457916))

(assert (=> d!1737508 m!6478102))

(declare-fun m!6479000 () Bool)

(assert (=> b!5457915 m!6479000))

(assert (=> b!5457916 m!6478106))

(assert (=> b!5457916 m!6478106))

(declare-fun m!6479002 () Bool)

(assert (=> b!5457916 m!6479002))

(assert (=> b!5457916 m!6478110))

(assert (=> b!5457916 m!6479002))

(assert (=> b!5457916 m!6478110))

(declare-fun m!6479004 () Bool)

(assert (=> b!5457916 m!6479004))

(assert (=> b!5456959 d!1737508))

(declare-fun b!5457917 () Bool)

(declare-fun res!2324581 () Bool)

(declare-fun e!3379924 () Bool)

(assert (=> b!5457917 (=> (not res!2324581) (not e!3379924))))

(assert (=> b!5457917 (= res!2324581 (isEmpty!34016 (tail!10784 (ite c!953211 lt!2228284 (_2!35787 lt!2228230)))))))

(declare-fun b!5457918 () Bool)

(declare-fun e!3379923 () Bool)

(declare-fun e!3379920 () Bool)

(assert (=> b!5457918 (= e!3379923 e!3379920)))

(declare-fun c!953479 () Bool)

(assert (=> b!5457918 (= c!953479 ((_ is EmptyLang!15285) (ite c!953211 lt!2228280 lt!2228257)))))

(declare-fun b!5457919 () Bool)

(assert (=> b!5457919 (= e!3379924 (= (head!11687 (ite c!953211 lt!2228284 (_2!35787 lt!2228230))) (c!953215 (ite c!953211 lt!2228280 lt!2228257))))))

(declare-fun d!1737510 () Bool)

(assert (=> d!1737510 e!3379923))

(declare-fun c!953477 () Bool)

(assert (=> d!1737510 (= c!953477 ((_ is EmptyExpr!15285) (ite c!953211 lt!2228280 lt!2228257)))))

(declare-fun lt!2228548 () Bool)

(declare-fun e!3379921 () Bool)

(assert (=> d!1737510 (= lt!2228548 e!3379921)))

(declare-fun c!953478 () Bool)

(assert (=> d!1737510 (= c!953478 (isEmpty!34016 (ite c!953211 lt!2228284 (_2!35787 lt!2228230))))))

(assert (=> d!1737510 (validRegex!7021 (ite c!953211 lt!2228280 lt!2228257))))

(assert (=> d!1737510 (= (matchR!7470 (ite c!953211 lt!2228280 lt!2228257) (ite c!953211 lt!2228284 (_2!35787 lt!2228230))) lt!2228548)))

(declare-fun b!5457920 () Bool)

(declare-fun res!2324586 () Bool)

(declare-fun e!3379925 () Bool)

(assert (=> b!5457920 (=> res!2324586 e!3379925)))

(assert (=> b!5457920 (= res!2324586 e!3379924)))

(declare-fun res!2324584 () Bool)

(assert (=> b!5457920 (=> (not res!2324584) (not e!3379924))))

(assert (=> b!5457920 (= res!2324584 lt!2228548)))

(declare-fun b!5457921 () Bool)

(declare-fun e!3379922 () Bool)

(declare-fun e!3379919 () Bool)

(assert (=> b!5457921 (= e!3379922 e!3379919)))

(declare-fun res!2324588 () Bool)

(assert (=> b!5457921 (=> res!2324588 e!3379919)))

(declare-fun call!399166 () Bool)

(assert (=> b!5457921 (= res!2324588 call!399166)))

(declare-fun b!5457922 () Bool)

(declare-fun res!2324585 () Bool)

(assert (=> b!5457922 (=> res!2324585 e!3379919)))

(assert (=> b!5457922 (= res!2324585 (not (isEmpty!34016 (tail!10784 (ite c!953211 lt!2228284 (_2!35787 lt!2228230))))))))

(declare-fun b!5457923 () Bool)

(assert (=> b!5457923 (= e!3379921 (nullable!5454 (ite c!953211 lt!2228280 lt!2228257)))))

(declare-fun bm!399161 () Bool)

(assert (=> bm!399161 (= call!399166 (isEmpty!34016 (ite c!953211 lt!2228284 (_2!35787 lt!2228230))))))

(declare-fun b!5457924 () Bool)

(assert (=> b!5457924 (= e!3379919 (not (= (head!11687 (ite c!953211 lt!2228284 (_2!35787 lt!2228230))) (c!953215 (ite c!953211 lt!2228280 lt!2228257)))))))

(declare-fun b!5457925 () Bool)

(assert (=> b!5457925 (= e!3379920 (not lt!2228548))))

(declare-fun b!5457926 () Bool)

(assert (=> b!5457926 (= e!3379925 e!3379922)))

(declare-fun res!2324587 () Bool)

(assert (=> b!5457926 (=> (not res!2324587) (not e!3379922))))

(assert (=> b!5457926 (= res!2324587 (not lt!2228548))))

(declare-fun b!5457927 () Bool)

(assert (=> b!5457927 (= e!3379923 (= lt!2228548 call!399166))))

(declare-fun b!5457928 () Bool)

(declare-fun res!2324583 () Bool)

(assert (=> b!5457928 (=> (not res!2324583) (not e!3379924))))

(assert (=> b!5457928 (= res!2324583 (not call!399166))))

(declare-fun b!5457929 () Bool)

(declare-fun res!2324582 () Bool)

(assert (=> b!5457929 (=> res!2324582 e!3379925)))

(assert (=> b!5457929 (= res!2324582 (not ((_ is ElementMatch!15285) (ite c!953211 lt!2228280 lt!2228257))))))

(assert (=> b!5457929 (= e!3379920 e!3379925)))

(declare-fun b!5457930 () Bool)

(assert (=> b!5457930 (= e!3379921 (matchR!7470 (derivativeStep!4306 (ite c!953211 lt!2228280 lt!2228257) (head!11687 (ite c!953211 lt!2228284 (_2!35787 lt!2228230)))) (tail!10784 (ite c!953211 lt!2228284 (_2!35787 lt!2228230)))))))

(assert (= (and d!1737510 c!953478) b!5457923))

(assert (= (and d!1737510 (not c!953478)) b!5457930))

(assert (= (and d!1737510 c!953477) b!5457927))

(assert (= (and d!1737510 (not c!953477)) b!5457918))

(assert (= (and b!5457918 c!953479) b!5457925))

(assert (= (and b!5457918 (not c!953479)) b!5457929))

(assert (= (and b!5457929 (not res!2324582)) b!5457920))

(assert (= (and b!5457920 res!2324584) b!5457928))

(assert (= (and b!5457928 res!2324583) b!5457917))

(assert (= (and b!5457917 res!2324581) b!5457919))

(assert (= (and b!5457920 (not res!2324586)) b!5457926))

(assert (= (and b!5457926 res!2324587) b!5457921))

(assert (= (and b!5457921 (not res!2324588)) b!5457922))

(assert (= (and b!5457922 (not res!2324585)) b!5457924))

(assert (= (or b!5457927 b!5457928 b!5457921) bm!399161))

(declare-fun m!6479006 () Bool)

(assert (=> b!5457922 m!6479006))

(assert (=> b!5457922 m!6479006))

(declare-fun m!6479008 () Bool)

(assert (=> b!5457922 m!6479008))

(declare-fun m!6479010 () Bool)

(assert (=> b!5457919 m!6479010))

(declare-fun m!6479012 () Bool)

(assert (=> b!5457923 m!6479012))

(assert (=> b!5457930 m!6479010))

(assert (=> b!5457930 m!6479010))

(declare-fun m!6479014 () Bool)

(assert (=> b!5457930 m!6479014))

(assert (=> b!5457930 m!6479006))

(assert (=> b!5457930 m!6479014))

(assert (=> b!5457930 m!6479006))

(declare-fun m!6479016 () Bool)

(assert (=> b!5457930 m!6479016))

(declare-fun m!6479018 () Bool)

(assert (=> bm!399161 m!6479018))

(assert (=> b!5457924 m!6479010))

(assert (=> d!1737510 m!6479018))

(declare-fun m!6479020 () Bool)

(assert (=> d!1737510 m!6479020))

(assert (=> b!5457917 m!6479006))

(assert (=> b!5457917 m!6479006))

(assert (=> b!5457917 m!6479008))

(assert (=> bm!398911 d!1737510))

(declare-fun bm!399162 () Bool)

(declare-fun c!953481 () Bool)

(declare-fun c!953480 () Bool)

(declare-fun call!399169 () List!62155)

(assert (=> bm!399162 (= call!399169 ($colon$colon!1535 (exprs!5169 lt!2228337) (ite (or c!953480 c!953481) (regTwo!31082 (h!68479 (exprs!5169 (h!68480 zl!343)))) (h!68479 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun bm!399163 () Bool)

(declare-fun call!399171 () List!62155)

(assert (=> bm!399163 (= call!399171 call!399169)))

(declare-fun b!5457931 () Bool)

(declare-fun e!3379927 () (InoxSet Context!9338))

(declare-fun call!399170 () (InoxSet Context!9338))

(assert (=> b!5457931 (= e!3379927 call!399170)))

(declare-fun b!5457932 () Bool)

(declare-fun e!3379926 () (InoxSet Context!9338))

(declare-fun call!399168 () (InoxSet Context!9338))

(declare-fun call!399167 () (InoxSet Context!9338))

(assert (=> b!5457932 (= e!3379926 ((_ map or) call!399168 call!399167))))

(declare-fun b!5457933 () Bool)

(declare-fun e!3379928 () Bool)

(assert (=> b!5457933 (= c!953480 e!3379928)))

(declare-fun res!2324589 () Bool)

(assert (=> b!5457933 (=> (not res!2324589) (not e!3379928))))

(assert (=> b!5457933 (= res!2324589 ((_ is Concat!24130) (h!68479 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun e!3379929 () (InoxSet Context!9338))

(assert (=> b!5457933 (= e!3379926 e!3379929)))

(declare-fun b!5457934 () Bool)

(declare-fun e!3379930 () (InoxSet Context!9338))

(assert (=> b!5457934 (= e!3379930 call!399170)))

(declare-fun b!5457935 () Bool)

(assert (=> b!5457935 (= e!3379929 e!3379927)))

(assert (=> b!5457935 (= c!953481 ((_ is Concat!24130) (h!68479 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun d!1737512 () Bool)

(declare-fun c!953484 () Bool)

(assert (=> d!1737512 (= c!953484 (and ((_ is ElementMatch!15285) (h!68479 (exprs!5169 (h!68480 zl!343)))) (= (c!953215 (h!68479 (exprs!5169 (h!68480 zl!343)))) (h!68478 s!2326))))))

(declare-fun e!3379931 () (InoxSet Context!9338))

(assert (=> d!1737512 (= (derivationStepZipperDown!733 (h!68479 (exprs!5169 (h!68480 zl!343))) lt!2228337 (h!68478 s!2326)) e!3379931)))

(declare-fun bm!399164 () Bool)

(declare-fun call!399172 () (InoxSet Context!9338))

(assert (=> bm!399164 (= call!399170 call!399172)))

(declare-fun bm!399165 () Bool)

(declare-fun c!953482 () Bool)

(assert (=> bm!399165 (= call!399167 (derivationStepZipperDown!733 (ite c!953482 (regTwo!31083 (h!68479 (exprs!5169 (h!68480 zl!343)))) (ite c!953480 (regTwo!31082 (h!68479 (exprs!5169 (h!68480 zl!343)))) (ite c!953481 (regOne!31082 (h!68479 (exprs!5169 (h!68480 zl!343)))) (reg!15614 (h!68479 (exprs!5169 (h!68480 zl!343))))))) (ite (or c!953482 c!953480) lt!2228337 (Context!9339 call!399171)) (h!68478 s!2326)))))

(declare-fun bm!399166 () Bool)

(assert (=> bm!399166 (= call!399168 (derivationStepZipperDown!733 (ite c!953482 (regOne!31083 (h!68479 (exprs!5169 (h!68480 zl!343)))) (regOne!31082 (h!68479 (exprs!5169 (h!68480 zl!343))))) (ite c!953482 lt!2228337 (Context!9339 call!399169)) (h!68478 s!2326)))))

(declare-fun b!5457936 () Bool)

(assert (=> b!5457936 (= e!3379930 ((as const (Array Context!9338 Bool)) false))))

(declare-fun b!5457937 () Bool)

(assert (=> b!5457937 (= e!3379928 (nullable!5454 (regOne!31082 (h!68479 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun bm!399167 () Bool)

(assert (=> bm!399167 (= call!399172 call!399167)))

(declare-fun b!5457938 () Bool)

(assert (=> b!5457938 (= e!3379929 ((_ map or) call!399168 call!399172))))

(declare-fun b!5457939 () Bool)

(assert (=> b!5457939 (= e!3379931 (store ((as const (Array Context!9338 Bool)) false) lt!2228337 true))))

(declare-fun b!5457940 () Bool)

(declare-fun c!953483 () Bool)

(assert (=> b!5457940 (= c!953483 ((_ is Star!15285) (h!68479 (exprs!5169 (h!68480 zl!343)))))))

(assert (=> b!5457940 (= e!3379927 e!3379930)))

(declare-fun b!5457941 () Bool)

(assert (=> b!5457941 (= e!3379931 e!3379926)))

(assert (=> b!5457941 (= c!953482 ((_ is Union!15285) (h!68479 (exprs!5169 (h!68480 zl!343)))))))

(assert (= (and d!1737512 c!953484) b!5457939))

(assert (= (and d!1737512 (not c!953484)) b!5457941))

(assert (= (and b!5457941 c!953482) b!5457932))

(assert (= (and b!5457941 (not c!953482)) b!5457933))

(assert (= (and b!5457933 res!2324589) b!5457937))

(assert (= (and b!5457933 c!953480) b!5457938))

(assert (= (and b!5457933 (not c!953480)) b!5457935))

(assert (= (and b!5457935 c!953481) b!5457931))

(assert (= (and b!5457935 (not c!953481)) b!5457940))

(assert (= (and b!5457940 c!953483) b!5457934))

(assert (= (and b!5457940 (not c!953483)) b!5457936))

(assert (= (or b!5457931 b!5457934) bm!399163))

(assert (= (or b!5457931 b!5457934) bm!399164))

(assert (= (or b!5457938 bm!399163) bm!399162))

(assert (= (or b!5457938 bm!399164) bm!399167))

(assert (= (or b!5457932 bm!399167) bm!399165))

(assert (= (or b!5457932 b!5457938) bm!399166))

(declare-fun m!6479022 () Bool)

(assert (=> bm!399165 m!6479022))

(assert (=> b!5457939 m!6477728))

(declare-fun m!6479024 () Bool)

(assert (=> bm!399166 m!6479024))

(declare-fun m!6479026 () Bool)

(assert (=> b!5457937 m!6479026))

(declare-fun m!6479028 () Bool)

(assert (=> bm!399162 m!6479028))

(assert (=> b!5457004 d!1737512))

(assert (=> b!5457004 d!1737282))

(declare-fun d!1737514 () Bool)

(assert (=> d!1737514 (= (nullable!5454 (h!68479 (exprs!5169 (h!68480 zl!343)))) (nullableFct!1637 (h!68479 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun bs!1262918 () Bool)

(assert (= bs!1262918 d!1737514))

(declare-fun m!6479030 () Bool)

(assert (=> bs!1262918 m!6479030))

(assert (=> b!5457004 d!1737514))

(declare-fun b!5457942 () Bool)

(declare-fun e!3379934 () (InoxSet Context!9338))

(declare-fun call!399173 () (InoxSet Context!9338))

(assert (=> b!5457942 (= e!3379934 call!399173)))

(declare-fun b!5457943 () Bool)

(declare-fun e!3379933 () (InoxSet Context!9338))

(assert (=> b!5457943 (= e!3379933 e!3379934)))

(declare-fun c!953486 () Bool)

(assert (=> b!5457943 (= c!953486 ((_ is Cons!62031) (exprs!5169 (Context!9339 (Cons!62031 (h!68479 (exprs!5169 (h!68480 zl!343))) (t!375384 (exprs!5169 (h!68480 zl!343))))))))))

(declare-fun b!5457944 () Bool)

(assert (=> b!5457944 (= e!3379933 ((_ map or) call!399173 (derivationStepZipperUp!657 (Context!9339 (t!375384 (exprs!5169 (Context!9339 (Cons!62031 (h!68479 (exprs!5169 (h!68480 zl!343))) (t!375384 (exprs!5169 (h!68480 zl!343)))))))) (h!68478 s!2326))))))

(declare-fun b!5457945 () Bool)

(declare-fun e!3379932 () Bool)

(assert (=> b!5457945 (= e!3379932 (nullable!5454 (h!68479 (exprs!5169 (Context!9339 (Cons!62031 (h!68479 (exprs!5169 (h!68480 zl!343))) (t!375384 (exprs!5169 (h!68480 zl!343)))))))))))

(declare-fun b!5457946 () Bool)

(assert (=> b!5457946 (= e!3379934 ((as const (Array Context!9338 Bool)) false))))

(declare-fun d!1737516 () Bool)

(declare-fun c!953485 () Bool)

(assert (=> d!1737516 (= c!953485 e!3379932)))

(declare-fun res!2324590 () Bool)

(assert (=> d!1737516 (=> (not res!2324590) (not e!3379932))))

(assert (=> d!1737516 (= res!2324590 ((_ is Cons!62031) (exprs!5169 (Context!9339 (Cons!62031 (h!68479 (exprs!5169 (h!68480 zl!343))) (t!375384 (exprs!5169 (h!68480 zl!343))))))))))

(assert (=> d!1737516 (= (derivationStepZipperUp!657 (Context!9339 (Cons!62031 (h!68479 (exprs!5169 (h!68480 zl!343))) (t!375384 (exprs!5169 (h!68480 zl!343))))) (h!68478 s!2326)) e!3379933)))

(declare-fun bm!399168 () Bool)

(assert (=> bm!399168 (= call!399173 (derivationStepZipperDown!733 (h!68479 (exprs!5169 (Context!9339 (Cons!62031 (h!68479 (exprs!5169 (h!68480 zl!343))) (t!375384 (exprs!5169 (h!68480 zl!343))))))) (Context!9339 (t!375384 (exprs!5169 (Context!9339 (Cons!62031 (h!68479 (exprs!5169 (h!68480 zl!343))) (t!375384 (exprs!5169 (h!68480 zl!343)))))))) (h!68478 s!2326)))))

(assert (= (and d!1737516 res!2324590) b!5457945))

(assert (= (and d!1737516 c!953485) b!5457944))

(assert (= (and d!1737516 (not c!953485)) b!5457943))

(assert (= (and b!5457943 c!953486) b!5457942))

(assert (= (and b!5457943 (not c!953486)) b!5457946))

(assert (= (or b!5457944 b!5457942) bm!399168))

(declare-fun m!6479032 () Bool)

(assert (=> b!5457944 m!6479032))

(declare-fun m!6479034 () Bool)

(assert (=> b!5457945 m!6479034))

(declare-fun m!6479036 () Bool)

(assert (=> bm!399168 m!6479036))

(assert (=> b!5457004 d!1737516))

(declare-fun d!1737518 () Bool)

(assert (=> d!1737518 (= (flatMap!1012 lt!2228336 lambda!288844) (dynLambda!24409 lambda!288844 lt!2228337))))

(declare-fun lt!2228553 () Unit!154880)

(assert (=> d!1737518 (= lt!2228553 (choose!41463 lt!2228336 lt!2228337 lambda!288844))))

(assert (=> d!1737518 (= lt!2228336 (store ((as const (Array Context!9338 Bool)) false) lt!2228337 true))))

(assert (=> d!1737518 (= (lemmaFlatMapOnSingletonSet!544 lt!2228336 lt!2228337 lambda!288844) lt!2228553)))

(declare-fun b_lambda!207791 () Bool)

(assert (=> (not b_lambda!207791) (not d!1737518)))

(declare-fun bs!1262919 () Bool)

(assert (= bs!1262919 d!1737518))

(assert (=> bs!1262919 m!6477878))

(declare-fun m!6479038 () Bool)

(assert (=> bs!1262919 m!6479038))

(declare-fun m!6479040 () Bool)

(assert (=> bs!1262919 m!6479040))

(assert (=> bs!1262919 m!6477728))

(assert (=> b!5457004 d!1737518))

(declare-fun d!1737520 () Bool)

(assert (=> d!1737520 (= (flatMap!1012 z!1189 lambda!288844) (choose!41446 z!1189 lambda!288844))))

(declare-fun bs!1262920 () Bool)

(assert (= bs!1262920 d!1737520))

(declare-fun m!6479042 () Bool)

(assert (=> bs!1262920 m!6479042))

(assert (=> b!5457004 d!1737520))

(declare-fun b!5457947 () Bool)

(declare-fun e!3379937 () (InoxSet Context!9338))

(declare-fun call!399174 () (InoxSet Context!9338))

(assert (=> b!5457947 (= e!3379937 call!399174)))

(declare-fun b!5457948 () Bool)

(declare-fun e!3379936 () (InoxSet Context!9338))

(assert (=> b!5457948 (= e!3379936 e!3379937)))

(declare-fun c!953488 () Bool)

(assert (=> b!5457948 (= c!953488 ((_ is Cons!62031) (exprs!5169 (h!68480 zl!343))))))

(declare-fun b!5457949 () Bool)

(assert (=> b!5457949 (= e!3379936 ((_ map or) call!399174 (derivationStepZipperUp!657 (Context!9339 (t!375384 (exprs!5169 (h!68480 zl!343)))) (h!68478 s!2326))))))

(declare-fun b!5457950 () Bool)

(declare-fun e!3379935 () Bool)

(assert (=> b!5457950 (= e!3379935 (nullable!5454 (h!68479 (exprs!5169 (h!68480 zl!343)))))))

(declare-fun b!5457951 () Bool)

(assert (=> b!5457951 (= e!3379937 ((as const (Array Context!9338 Bool)) false))))

(declare-fun d!1737522 () Bool)

(declare-fun c!953487 () Bool)

(assert (=> d!1737522 (= c!953487 e!3379935)))

(declare-fun res!2324591 () Bool)

(assert (=> d!1737522 (=> (not res!2324591) (not e!3379935))))

(assert (=> d!1737522 (= res!2324591 ((_ is Cons!62031) (exprs!5169 (h!68480 zl!343))))))

(assert (=> d!1737522 (= (derivationStepZipperUp!657 (h!68480 zl!343) (h!68478 s!2326)) e!3379936)))

(declare-fun bm!399169 () Bool)

(assert (=> bm!399169 (= call!399174 (derivationStepZipperDown!733 (h!68479 (exprs!5169 (h!68480 zl!343))) (Context!9339 (t!375384 (exprs!5169 (h!68480 zl!343)))) (h!68478 s!2326)))))

(assert (= (and d!1737522 res!2324591) b!5457950))

(assert (= (and d!1737522 c!953487) b!5457949))

(assert (= (and d!1737522 (not c!953487)) b!5457948))

(assert (= (and b!5457948 c!953488) b!5457947))

(assert (= (and b!5457948 (not c!953488)) b!5457951))

(assert (= (or b!5457949 b!5457947) bm!399169))

(declare-fun m!6479044 () Bool)

(assert (=> b!5457949 m!6479044))

(assert (=> b!5457950 m!6477874))

(declare-fun m!6479046 () Bool)

(assert (=> bm!399169 m!6479046))

(assert (=> b!5457004 d!1737522))

(declare-fun d!1737524 () Bool)

(assert (=> d!1737524 (= (flatMap!1012 lt!2228336 lambda!288844) (choose!41446 lt!2228336 lambda!288844))))

(declare-fun bs!1262924 () Bool)

(assert (= bs!1262924 d!1737524))

(declare-fun m!6479048 () Bool)

(assert (=> bs!1262924 m!6479048))

(assert (=> b!5457004 d!1737524))

(declare-fun d!1737526 () Bool)

(assert (=> d!1737526 (= (flatMap!1012 z!1189 lambda!288844) (dynLambda!24409 lambda!288844 (h!68480 zl!343)))))

(declare-fun lt!2228556 () Unit!154880)

(assert (=> d!1737526 (= lt!2228556 (choose!41463 z!1189 (h!68480 zl!343) lambda!288844))))

(assert (=> d!1737526 (= z!1189 (store ((as const (Array Context!9338 Bool)) false) (h!68480 zl!343) true))))

(assert (=> d!1737526 (= (lemmaFlatMapOnSingletonSet!544 z!1189 (h!68480 zl!343) lambda!288844) lt!2228556)))

(declare-fun b_lambda!207793 () Bool)

(assert (=> (not b_lambda!207793) (not d!1737526)))

(declare-fun bs!1262927 () Bool)

(assert (= bs!1262927 d!1737526))

(assert (=> bs!1262927 m!6477870))

(declare-fun m!6479050 () Bool)

(assert (=> bs!1262927 m!6479050))

(declare-fun m!6479052 () Bool)

(assert (=> bs!1262927 m!6479052))

(declare-fun m!6479054 () Bool)

(assert (=> bs!1262927 m!6479054))

(assert (=> b!5457004 d!1737526))

(declare-fun bs!1262929 () Bool)

(declare-fun d!1737528 () Bool)

(assert (= bs!1262929 (and d!1737528 b!5457004)))

(declare-fun lambda!288948 () Int)

(assert (=> bs!1262929 (= lambda!288948 lambda!288844)))

(assert (=> d!1737528 true))

(assert (=> d!1737528 (= (derivationStepZipper!1504 lt!2228336 (h!68478 s!2326)) (flatMap!1012 lt!2228336 lambda!288948))))

(declare-fun bs!1262930 () Bool)

(assert (= bs!1262930 d!1737528))

(declare-fun m!6479084 () Bool)

(assert (=> bs!1262930 m!6479084))

(assert (=> b!5457004 d!1737528))

(declare-fun b!5457971 () Bool)

(declare-fun lt!2228558 () List!62154)

(declare-fun e!3379945 () Bool)

(assert (=> b!5457971 (= e!3379945 (or (not (= (ite c!953211 lt!2228180 (_2!35787 lt!2228245)) Nil!62030)) (= lt!2228558 (ite c!953211 (_1!35787 lt!2228360) (_2!35787 lt!2228291)))))))

(declare-fun d!1737534 () Bool)

(assert (=> d!1737534 e!3379945))

(declare-fun res!2324600 () Bool)

(assert (=> d!1737534 (=> (not res!2324600) (not e!3379945))))

(assert (=> d!1737534 (= res!2324600 (= (content!11166 lt!2228558) ((_ map or) (content!11166 (ite c!953211 (_1!35787 lt!2228360) (_2!35787 lt!2228291))) (content!11166 (ite c!953211 lt!2228180 (_2!35787 lt!2228245))))))))

(declare-fun e!3379946 () List!62154)

(assert (=> d!1737534 (= lt!2228558 e!3379946)))

(declare-fun c!953494 () Bool)

(assert (=> d!1737534 (= c!953494 ((_ is Nil!62030) (ite c!953211 (_1!35787 lt!2228360) (_2!35787 lt!2228291))))))

(assert (=> d!1737534 (= (++!13649 (ite c!953211 (_1!35787 lt!2228360) (_2!35787 lt!2228291)) (ite c!953211 lt!2228180 (_2!35787 lt!2228245))) lt!2228558)))

(declare-fun b!5457968 () Bool)

(assert (=> b!5457968 (= e!3379946 (ite c!953211 lt!2228180 (_2!35787 lt!2228245)))))

(declare-fun b!5457969 () Bool)

(assert (=> b!5457969 (= e!3379946 (Cons!62030 (h!68478 (ite c!953211 (_1!35787 lt!2228360) (_2!35787 lt!2228291))) (++!13649 (t!375383 (ite c!953211 (_1!35787 lt!2228360) (_2!35787 lt!2228291))) (ite c!953211 lt!2228180 (_2!35787 lt!2228245)))))))

(declare-fun b!5457970 () Bool)

(declare-fun res!2324601 () Bool)

(assert (=> b!5457970 (=> (not res!2324601) (not e!3379945))))

(assert (=> b!5457970 (= res!2324601 (= (size!39901 lt!2228558) (+ (size!39901 (ite c!953211 (_1!35787 lt!2228360) (_2!35787 lt!2228291))) (size!39901 (ite c!953211 lt!2228180 (_2!35787 lt!2228245))))))))

(assert (= (and d!1737534 c!953494) b!5457968))

(assert (= (and d!1737534 (not c!953494)) b!5457969))

(assert (= (and d!1737534 res!2324600) b!5457970))

(assert (= (and b!5457970 res!2324601) b!5457971))

(declare-fun m!6479088 () Bool)

(assert (=> d!1737534 m!6479088))

(declare-fun m!6479090 () Bool)

(assert (=> d!1737534 m!6479090))

(declare-fun m!6479092 () Bool)

(assert (=> d!1737534 m!6479092))

(declare-fun m!6479094 () Bool)

(assert (=> b!5457969 m!6479094))

(declare-fun m!6479096 () Bool)

(assert (=> b!5457970 m!6479096))

(declare-fun m!6479098 () Bool)

(assert (=> b!5457970 m!6479098))

(declare-fun m!6479100 () Bool)

(assert (=> b!5457970 m!6479100))

(assert (=> bm!398958 d!1737534))

(declare-fun b!5457994 () Bool)

(declare-fun e!3379968 () Bool)

(declare-fun call!399183 () Bool)

(assert (=> b!5457994 (= e!3379968 call!399183)))

(declare-fun bm!399177 () Bool)

(declare-fun call!399182 () Bool)

(assert (=> bm!399177 (= call!399183 call!399182)))

(declare-fun b!5457995 () Bool)

(declare-fun e!3379964 () Bool)

(assert (=> b!5457995 (= e!3379964 call!399182)))

(declare-fun d!1737538 () Bool)

(declare-fun res!2324616 () Bool)

(declare-fun e!3379965 () Bool)

(assert (=> d!1737538 (=> res!2324616 e!3379965)))

(assert (=> d!1737538 (= res!2324616 ((_ is ElementMatch!15285) r!7292))))

(assert (=> d!1737538 (= (validRegex!7021 r!7292) e!3379965)))

(declare-fun bm!399178 () Bool)

(declare-fun call!399184 () Bool)

(declare-fun c!953499 () Bool)

(assert (=> bm!399178 (= call!399184 (validRegex!7021 (ite c!953499 (regOne!31083 r!7292) (regOne!31082 r!7292))))))

(declare-fun b!5457996 () Bool)

(declare-fun e!3379966 () Bool)

(assert (=> b!5457996 (= e!3379966 call!399183)))

(declare-fun b!5457997 () Bool)

(declare-fun e!3379969 () Bool)

(declare-fun e!3379963 () Bool)

(assert (=> b!5457997 (= e!3379969 e!3379963)))

(assert (=> b!5457997 (= c!953499 ((_ is Union!15285) r!7292))))

(declare-fun b!5457998 () Bool)

(declare-fun res!2324620 () Bool)

(declare-fun e!3379967 () Bool)

(assert (=> b!5457998 (=> res!2324620 e!3379967)))

(assert (=> b!5457998 (= res!2324620 (not ((_ is Concat!24130) r!7292)))))

(assert (=> b!5457998 (= e!3379963 e!3379967)))

(declare-fun bm!399179 () Bool)

(declare-fun c!953500 () Bool)

(assert (=> bm!399179 (= call!399182 (validRegex!7021 (ite c!953500 (reg!15614 r!7292) (ite c!953499 (regTwo!31083 r!7292) (regTwo!31082 r!7292)))))))

(declare-fun b!5457999 () Bool)

(declare-fun res!2324617 () Bool)

(assert (=> b!5457999 (=> (not res!2324617) (not e!3379968))))

(assert (=> b!5457999 (= res!2324617 call!399184)))

(assert (=> b!5457999 (= e!3379963 e!3379968)))

(declare-fun b!5458000 () Bool)

(assert (=> b!5458000 (= e!3379967 e!3379966)))

(declare-fun res!2324619 () Bool)

(assert (=> b!5458000 (=> (not res!2324619) (not e!3379966))))

(assert (=> b!5458000 (= res!2324619 call!399184)))

(declare-fun b!5458001 () Bool)

(assert (=> b!5458001 (= e!3379969 e!3379964)))

(declare-fun res!2324618 () Bool)

(assert (=> b!5458001 (= res!2324618 (not (nullable!5454 (reg!15614 r!7292))))))

(assert (=> b!5458001 (=> (not res!2324618) (not e!3379964))))

(declare-fun b!5458002 () Bool)

(assert (=> b!5458002 (= e!3379965 e!3379969)))

(assert (=> b!5458002 (= c!953500 ((_ is Star!15285) r!7292))))

(assert (= (and d!1737538 (not res!2324616)) b!5458002))

(assert (= (and b!5458002 c!953500) b!5458001))

(assert (= (and b!5458002 (not c!953500)) b!5457997))

(assert (= (and b!5458001 res!2324618) b!5457995))

(assert (= (and b!5457997 c!953499) b!5457999))

(assert (= (and b!5457997 (not c!953499)) b!5457998))

(assert (= (and b!5457999 res!2324617) b!5457994))

(assert (= (and b!5457998 (not res!2324620)) b!5458000))

(assert (= (and b!5458000 res!2324619) b!5457996))

(assert (= (or b!5457994 b!5457996) bm!399177))

(assert (= (or b!5457999 b!5458000) bm!399178))

(assert (= (or b!5457995 bm!399177) bm!399179))

(declare-fun m!6479102 () Bool)

(assert (=> bm!399178 m!6479102))

(declare-fun m!6479104 () Bool)

(assert (=> bm!399179 m!6479104))

(declare-fun m!6479106 () Bool)

(assert (=> b!5458001 m!6479106))

(assert (=> start!571598 d!1737538))

(declare-fun d!1737540 () Bool)

(assert (=> d!1737540 (= (isDefined!12099 (ite c!953207 call!399030 lt!2228286)) (not (isEmpty!34018 (ite c!953207 call!399030 lt!2228286))))))

(declare-fun bs!1262931 () Bool)

(assert (= bs!1262931 d!1737540))

(declare-fun m!6479108 () Bool)

(assert (=> bs!1262931 m!6479108))

(assert (=> bm!398882 d!1737540))

(declare-fun d!1737542 () Bool)

(declare-fun e!3379970 () Bool)

(assert (=> d!1737542 (= (matchZipper!1529 ((_ map or) (ite c!953204 lt!2228204 (ite c!953207 lt!2228212 lt!2228186)) (ite c!953204 lt!2228272 (ite c!953207 lt!2228274 lt!2228166))) (t!375383 s!2326)) e!3379970)))

(declare-fun res!2324621 () Bool)

(assert (=> d!1737542 (=> res!2324621 e!3379970)))

(assert (=> d!1737542 (= res!2324621 (matchZipper!1529 (ite c!953204 lt!2228204 (ite c!953207 lt!2228212 lt!2228186)) (t!375383 s!2326)))))

(declare-fun lt!2228561 () Unit!154880)

(assert (=> d!1737542 (= lt!2228561 (choose!41464 (ite c!953204 lt!2228204 (ite c!953207 lt!2228212 lt!2228186)) (ite c!953204 lt!2228272 (ite c!953207 lt!2228274 lt!2228166)) (t!375383 s!2326)))))

(assert (=> d!1737542 (= (lemmaZipperConcatMatchesSameAsBothZippers!522 (ite c!953204 lt!2228204 (ite c!953207 lt!2228212 lt!2228186)) (ite c!953204 lt!2228272 (ite c!953207 lt!2228274 lt!2228166)) (t!375383 s!2326)) lt!2228561)))

(declare-fun b!5458003 () Bool)

(assert (=> b!5458003 (= e!3379970 (matchZipper!1529 (ite c!953204 lt!2228272 (ite c!953207 lt!2228274 lt!2228166)) (t!375383 s!2326)))))

(assert (= (and d!1737542 (not res!2324621)) b!5458003))

(declare-fun m!6479110 () Bool)

(assert (=> d!1737542 m!6479110))

(declare-fun m!6479112 () Bool)

(assert (=> d!1737542 m!6479112))

(declare-fun m!6479114 () Bool)

(assert (=> d!1737542 m!6479114))

(declare-fun m!6479116 () Bool)

(assert (=> b!5458003 m!6479116))

(assert (=> bm!399025 d!1737542))

(declare-fun d!1737544 () Bool)

(declare-fun res!2324626 () Bool)

(declare-fun e!3379975 () Bool)

(assert (=> d!1737544 (=> res!2324626 e!3379975)))

(assert (=> d!1737544 (= res!2324626 ((_ is Nil!62031) (t!375384 (exprs!5169 (h!68480 zl!343)))))))

(assert (=> d!1737544 (= (forall!14588 (t!375384 (exprs!5169 (h!68480 zl!343))) lambda!288869) e!3379975)))

(declare-fun b!5458008 () Bool)

(declare-fun e!3379976 () Bool)

(assert (=> b!5458008 (= e!3379975 e!3379976)))

(declare-fun res!2324627 () Bool)

(assert (=> b!5458008 (=> (not res!2324627) (not e!3379976))))

(declare-fun dynLambda!24410 (Int Regex!15285) Bool)

(assert (=> b!5458008 (= res!2324627 (dynLambda!24410 lambda!288869 (h!68479 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun b!5458009 () Bool)

(assert (=> b!5458009 (= e!3379976 (forall!14588 (t!375384 (t!375384 (exprs!5169 (h!68480 zl!343)))) lambda!288869))))

(assert (= (and d!1737544 (not res!2324626)) b!5458008))

(assert (= (and b!5458008 res!2324627) b!5458009))

(declare-fun b_lambda!207795 () Bool)

(assert (=> (not b_lambda!207795) (not b!5458008)))

(declare-fun m!6479118 () Bool)

(assert (=> b!5458008 m!6479118))

(declare-fun m!6479120 () Bool)

(assert (=> b!5458009 m!6479120))

(assert (=> b!5456989 d!1737544))

(declare-fun b!5458010 () Bool)

(declare-fun res!2324628 () Bool)

(declare-fun e!3379982 () Bool)

(assert (=> b!5458010 (=> (not res!2324628) (not e!3379982))))

(assert (=> b!5458010 (= res!2324628 (isEmpty!34016 (tail!10784 s!2326)))))

(declare-fun b!5458011 () Bool)

(declare-fun e!3379981 () Bool)

(declare-fun e!3379978 () Bool)

(assert (=> b!5458011 (= e!3379981 e!3379978)))

(declare-fun c!953503 () Bool)

(assert (=> b!5458011 (= c!953503 ((_ is EmptyLang!15285) lt!2228324))))

(declare-fun b!5458012 () Bool)

(assert (=> b!5458012 (= e!3379982 (= (head!11687 s!2326) (c!953215 lt!2228324)))))

(declare-fun d!1737546 () Bool)

(assert (=> d!1737546 e!3379981))

(declare-fun c!953501 () Bool)

(assert (=> d!1737546 (= c!953501 ((_ is EmptyExpr!15285) lt!2228324))))

(declare-fun lt!2228563 () Bool)

(declare-fun e!3379979 () Bool)

(assert (=> d!1737546 (= lt!2228563 e!3379979)))

(declare-fun c!953502 () Bool)

(assert (=> d!1737546 (= c!953502 (isEmpty!34016 s!2326))))

(assert (=> d!1737546 (validRegex!7021 lt!2228324)))

(assert (=> d!1737546 (= (matchR!7470 lt!2228324 s!2326) lt!2228563)))

(declare-fun b!5458013 () Bool)

(declare-fun res!2324633 () Bool)

(declare-fun e!3379983 () Bool)

(assert (=> b!5458013 (=> res!2324633 e!3379983)))

(assert (=> b!5458013 (= res!2324633 e!3379982)))

(declare-fun res!2324631 () Bool)

(assert (=> b!5458013 (=> (not res!2324631) (not e!3379982))))

(assert (=> b!5458013 (= res!2324631 lt!2228563)))

(declare-fun b!5458014 () Bool)

(declare-fun e!3379980 () Bool)

(declare-fun e!3379977 () Bool)

(assert (=> b!5458014 (= e!3379980 e!3379977)))

(declare-fun res!2324635 () Bool)

(assert (=> b!5458014 (=> res!2324635 e!3379977)))

(declare-fun call!399185 () Bool)

(assert (=> b!5458014 (= res!2324635 call!399185)))

(declare-fun b!5458015 () Bool)

(declare-fun res!2324632 () Bool)

(assert (=> b!5458015 (=> res!2324632 e!3379977)))

(assert (=> b!5458015 (= res!2324632 (not (isEmpty!34016 (tail!10784 s!2326))))))

(declare-fun b!5458016 () Bool)

(assert (=> b!5458016 (= e!3379979 (nullable!5454 lt!2228324))))

(declare-fun bm!399180 () Bool)

(assert (=> bm!399180 (= call!399185 (isEmpty!34016 s!2326))))

(declare-fun b!5458017 () Bool)

(assert (=> b!5458017 (= e!3379977 (not (= (head!11687 s!2326) (c!953215 lt!2228324))))))

(declare-fun b!5458018 () Bool)

(assert (=> b!5458018 (= e!3379978 (not lt!2228563))))

(declare-fun b!5458019 () Bool)

(assert (=> b!5458019 (= e!3379983 e!3379980)))

(declare-fun res!2324634 () Bool)

(assert (=> b!5458019 (=> (not res!2324634) (not e!3379980))))

(assert (=> b!5458019 (= res!2324634 (not lt!2228563))))

(declare-fun b!5458020 () Bool)

(assert (=> b!5458020 (= e!3379981 (= lt!2228563 call!399185))))

(declare-fun b!5458021 () Bool)

(declare-fun res!2324630 () Bool)

(assert (=> b!5458021 (=> (not res!2324630) (not e!3379982))))

(assert (=> b!5458021 (= res!2324630 (not call!399185))))

(declare-fun b!5458022 () Bool)

(declare-fun res!2324629 () Bool)

(assert (=> b!5458022 (=> res!2324629 e!3379983)))

(assert (=> b!5458022 (= res!2324629 (not ((_ is ElementMatch!15285) lt!2228324)))))

(assert (=> b!5458022 (= e!3379978 e!3379983)))

(declare-fun b!5458023 () Bool)

(assert (=> b!5458023 (= e!3379979 (matchR!7470 (derivativeStep!4306 lt!2228324 (head!11687 s!2326)) (tail!10784 s!2326)))))

(assert (= (and d!1737546 c!953502) b!5458016))

(assert (= (and d!1737546 (not c!953502)) b!5458023))

(assert (= (and d!1737546 c!953501) b!5458020))

(assert (= (and d!1737546 (not c!953501)) b!5458011))

(assert (= (and b!5458011 c!953503) b!5458018))

(assert (= (and b!5458011 (not c!953503)) b!5458022))

(assert (= (and b!5458022 (not res!2324629)) b!5458013))

(assert (= (and b!5458013 res!2324631) b!5458021))

(assert (= (and b!5458021 res!2324630) b!5458010))

(assert (= (and b!5458010 res!2324628) b!5458012))

(assert (= (and b!5458013 (not res!2324633)) b!5458019))

(assert (= (and b!5458019 res!2324634) b!5458014))

(assert (= (and b!5458014 (not res!2324635)) b!5458015))

(assert (= (and b!5458015 (not res!2324632)) b!5458017))

(assert (= (or b!5458020 b!5458021 b!5458014) bm!399180))

(assert (=> b!5458015 m!6478092))

(assert (=> b!5458015 m!6478092))

(assert (=> b!5458015 m!6478140))

(assert (=> b!5458012 m!6478088))

(declare-fun m!6479122 () Bool)

(assert (=> b!5458016 m!6479122))

(assert (=> b!5458023 m!6478088))

(assert (=> b!5458023 m!6478088))

(declare-fun m!6479124 () Bool)

(assert (=> b!5458023 m!6479124))

(assert (=> b!5458023 m!6478092))

(assert (=> b!5458023 m!6479124))

(assert (=> b!5458023 m!6478092))

(declare-fun m!6479126 () Bool)

(assert (=> b!5458023 m!6479126))

(assert (=> bm!399180 m!6478000))

(assert (=> b!5458017 m!6478088))

(assert (=> d!1737546 m!6478000))

(declare-fun m!6479128 () Bool)

(assert (=> d!1737546 m!6479128))

(assert (=> b!5458010 m!6478092))

(assert (=> b!5458010 m!6478092))

(assert (=> b!5458010 m!6478140))

(assert (=> b!5456989 d!1737546))

(declare-fun d!1737548 () Bool)

(declare-fun c!953504 () Bool)

(assert (=> d!1737548 (= c!953504 (isEmpty!34016 s!2326))))

(declare-fun e!3379984 () Bool)

(assert (=> d!1737548 (= (matchZipper!1529 lt!2228336 s!2326) e!3379984)))

(declare-fun b!5458024 () Bool)

(assert (=> b!5458024 (= e!3379984 (nullableZipper!1485 lt!2228336))))

(declare-fun b!5458025 () Bool)

(assert (=> b!5458025 (= e!3379984 (matchZipper!1529 (derivationStepZipper!1504 lt!2228336 (head!11687 s!2326)) (tail!10784 s!2326)))))

(assert (= (and d!1737548 c!953504) b!5458024))

(assert (= (and d!1737548 (not c!953504)) b!5458025))

(assert (=> d!1737548 m!6478000))

(declare-fun m!6479130 () Bool)

(assert (=> b!5458024 m!6479130))

(assert (=> b!5458025 m!6478088))

(assert (=> b!5458025 m!6478088))

(declare-fun m!6479132 () Bool)

(assert (=> b!5458025 m!6479132))

(assert (=> b!5458025 m!6478092))

(assert (=> b!5458025 m!6479132))

(assert (=> b!5458025 m!6478092))

(declare-fun m!6479134 () Bool)

(assert (=> b!5458025 m!6479134))

(assert (=> b!5456989 d!1737548))

(declare-fun d!1737550 () Bool)

(assert (=> d!1737550 (= (matchR!7470 lt!2228324 s!2326) (matchZipper!1529 lt!2228336 s!2326))))

(declare-fun lt!2228566 () Unit!154880)

(declare-fun choose!41474 ((InoxSet Context!9338) List!62156 Regex!15285 List!62154) Unit!154880)

(assert (=> d!1737550 (= lt!2228566 (choose!41474 lt!2228336 lt!2228172 lt!2228324 s!2326))))

(assert (=> d!1737550 (validRegex!7021 lt!2228324)))

(assert (=> d!1737550 (= (theoremZipperRegexEquiv!565 lt!2228336 lt!2228172 lt!2228324 s!2326) lt!2228566)))

(declare-fun bs!1262949 () Bool)

(assert (= bs!1262949 d!1737550))

(assert (=> bs!1262949 m!6477736))

(assert (=> bs!1262949 m!6477738))

(declare-fun m!6479168 () Bool)

(assert (=> bs!1262949 m!6479168))

(assert (=> bs!1262949 m!6479128))

(assert (=> b!5456989 d!1737550))

(declare-fun d!1737562 () Bool)

(assert (=> d!1737562 (= (matchR!7470 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (regOne!31082 r!7292))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))) (matchRSpec!2388 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (regOne!31082 r!7292))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))))))

(declare-fun lt!2228567 () Unit!154880)

(assert (=> d!1737562 (= lt!2228567 (choose!41466 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (regOne!31082 r!7292))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))))))

(assert (=> d!1737562 (validRegex!7021 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (regOne!31082 r!7292))))))))

(assert (=> d!1737562 (= (mainMatchTheorem!2388 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (regOne!31082 r!7292))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))) lt!2228567)))

(declare-fun bs!1262950 () Bool)

(assert (= bs!1262950 d!1737562))

(declare-fun m!6479174 () Bool)

(assert (=> bs!1262950 m!6479174))

(declare-fun m!6479176 () Bool)

(assert (=> bs!1262950 m!6479176))

(declare-fun m!6479178 () Bool)

(assert (=> bs!1262950 m!6479178))

(declare-fun m!6479180 () Bool)

(assert (=> bs!1262950 m!6479180))

(assert (=> bm!399006 d!1737562))

(declare-fun d!1737566 () Bool)

(assert (=> d!1737566 (= (Exists!2466 (ite c!953207 lambda!288848 (ite c!953211 lambda!288855 (ite c!953206 lambda!288861 lambda!288867)))) (choose!41451 (ite c!953207 lambda!288848 (ite c!953211 lambda!288855 (ite c!953206 lambda!288861 lambda!288867)))))))

(declare-fun bs!1262951 () Bool)

(assert (= bs!1262951 d!1737566))

(declare-fun m!6479182 () Bool)

(assert (=> bs!1262951 m!6479182))

(assert (=> bm!399021 d!1737566))

(declare-fun d!1737568 () Bool)

(assert (=> d!1737568 (= (isEmpty!34016 (_1!35787 lt!2228239)) ((_ is Nil!62030) (_1!35787 lt!2228239)))))

(assert (=> b!5456966 d!1737568))

(declare-fun d!1737570 () Bool)

(assert (=> d!1737570 (= (Exists!2466 (ite c!953207 lambda!288847 (ite c!953209 lambda!288849 (ite c!953211 lambda!288857 lambda!288863)))) (choose!41451 (ite c!953207 lambda!288847 (ite c!953209 lambda!288849 (ite c!953211 lambda!288857 lambda!288863)))))))

(declare-fun bs!1262952 () Bool)

(assert (= bs!1262952 d!1737570))

(declare-fun m!6479198 () Bool)

(assert (=> bs!1262952 m!6479198))

(assert (=> bm!399028 d!1737570))

(declare-fun d!1737572 () Bool)

(assert (=> d!1737572 (= (Exists!2466 (ite c!953209 lambda!288851 (ite c!953211 lambda!288853 (ite c!953206 lambda!288864 lambda!288866)))) (choose!41451 (ite c!953209 lambda!288851 (ite c!953211 lambda!288853 (ite c!953206 lambda!288864 lambda!288866)))))))

(declare-fun bs!1262953 () Bool)

(assert (= bs!1262953 d!1737572))

(declare-fun m!6479202 () Bool)

(assert (=> bs!1262953 m!6479202))

(assert (=> bm!398918 d!1737572))

(declare-fun d!1737574 () Bool)

(declare-fun e!3380006 () Bool)

(assert (=> d!1737574 e!3380006))

(declare-fun res!2324650 () Bool)

(assert (=> d!1737574 (=> (not res!2324650) (not e!3380006))))

(declare-fun lt!2228571 () List!62155)

(declare-fun content!11168 (List!62155) (InoxSet Regex!15285))

(assert (=> d!1737574 (= res!2324650 (= (content!11168 lt!2228571) ((_ map or) (content!11168 lt!2228326) (content!11168 lt!2228195))))))

(declare-fun e!3380007 () List!62155)

(assert (=> d!1737574 (= lt!2228571 e!3380007)))

(declare-fun c!953518 () Bool)

(assert (=> d!1737574 (= c!953518 ((_ is Nil!62031) lt!2228326))))

(assert (=> d!1737574 (= (++!13650 lt!2228326 lt!2228195) lt!2228571)))

(declare-fun b!5458068 () Bool)

(declare-fun res!2324651 () Bool)

(assert (=> b!5458068 (=> (not res!2324651) (not e!3380006))))

(declare-fun size!39903 (List!62155) Int)

(assert (=> b!5458068 (= res!2324651 (= (size!39903 lt!2228571) (+ (size!39903 lt!2228326) (size!39903 lt!2228195))))))

(declare-fun b!5458066 () Bool)

(assert (=> b!5458066 (= e!3380007 lt!2228195)))

(declare-fun b!5458069 () Bool)

(assert (=> b!5458069 (= e!3380006 (or (not (= lt!2228195 Nil!62031)) (= lt!2228571 lt!2228326)))))

(declare-fun b!5458067 () Bool)

(assert (=> b!5458067 (= e!3380007 (Cons!62031 (h!68479 lt!2228326) (++!13650 (t!375384 lt!2228326) lt!2228195)))))

(assert (= (and d!1737574 c!953518) b!5458066))

(assert (= (and d!1737574 (not c!953518)) b!5458067))

(assert (= (and d!1737574 res!2324650) b!5458068))

(assert (= (and b!5458068 res!2324651) b!5458069))

(declare-fun m!6479204 () Bool)

(assert (=> d!1737574 m!6479204))

(declare-fun m!6479206 () Bool)

(assert (=> d!1737574 m!6479206))

(declare-fun m!6479208 () Bool)

(assert (=> d!1737574 m!6479208))

(declare-fun m!6479210 () Bool)

(assert (=> b!5458068 m!6479210))

(declare-fun m!6479212 () Bool)

(assert (=> b!5458068 m!6479212))

(declare-fun m!6479214 () Bool)

(assert (=> b!5458068 m!6479214))

(declare-fun m!6479216 () Bool)

(assert (=> b!5458067 m!6479216))

(assert (=> bm!398938 d!1737574))

(declare-fun d!1737578 () Bool)

(assert (=> d!1737578 (= (flatMap!1012 (ite c!953205 lt!2228279 lt!2228191) (ite c!953205 lambda!288844 lambda!288844)) (dynLambda!24409 (ite c!953205 lambda!288844 lambda!288844) (ite c!953205 lt!2228345 lt!2228337)))))

(declare-fun lt!2228572 () Unit!154880)

(assert (=> d!1737578 (= lt!2228572 (choose!41463 (ite c!953205 lt!2228279 lt!2228191) (ite c!953205 lt!2228345 lt!2228337) (ite c!953205 lambda!288844 lambda!288844)))))

(assert (=> d!1737578 (= (ite c!953205 lt!2228279 lt!2228191) (store ((as const (Array Context!9338 Bool)) false) (ite c!953205 lt!2228345 lt!2228337) true))))

(assert (=> d!1737578 (= (lemmaFlatMapOnSingletonSet!544 (ite c!953205 lt!2228279 lt!2228191) (ite c!953205 lt!2228345 lt!2228337) (ite c!953205 lambda!288844 lambda!288844)) lt!2228572)))

(declare-fun b_lambda!207797 () Bool)

(assert (=> (not b_lambda!207797) (not d!1737578)))

(declare-fun bs!1262954 () Bool)

(assert (= bs!1262954 d!1737578))

(declare-fun m!6479218 () Bool)

(assert (=> bs!1262954 m!6479218))

(declare-fun m!6479220 () Bool)

(assert (=> bs!1262954 m!6479220))

(declare-fun m!6479222 () Bool)

(assert (=> bs!1262954 m!6479222))

(declare-fun m!6479224 () Bool)

(assert (=> bs!1262954 m!6479224))

(assert (=> bm!399044 d!1737578))

(declare-fun b!5458070 () Bool)

(declare-fun e!3380010 () (InoxSet Context!9338))

(declare-fun call!399194 () (InoxSet Context!9338))

(assert (=> b!5458070 (= e!3380010 call!399194)))

(declare-fun b!5458071 () Bool)

(declare-fun e!3380009 () (InoxSet Context!9338))

(assert (=> b!5458071 (= e!3380009 e!3380010)))

(declare-fun c!953520 () Bool)

(assert (=> b!5458071 (= c!953520 ((_ is Cons!62031) (exprs!5169 (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 lt!2228164)))))))

(declare-fun b!5458072 () Bool)

(assert (=> b!5458072 (= e!3380009 ((_ map or) call!399194 (derivationStepZipperUp!657 (Context!9339 (t!375384 (exprs!5169 (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 lt!2228164))))) (h!68478 s!2326))))))

(declare-fun e!3380008 () Bool)

(declare-fun b!5458073 () Bool)

(assert (=> b!5458073 (= e!3380008 (nullable!5454 (h!68479 (exprs!5169 (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 lt!2228164))))))))

(declare-fun b!5458074 () Bool)

(assert (=> b!5458074 (= e!3380010 ((as const (Array Context!9338 Bool)) false))))

(declare-fun d!1737580 () Bool)

(declare-fun c!953519 () Bool)

(assert (=> d!1737580 (= c!953519 e!3380008)))

(declare-fun res!2324652 () Bool)

(assert (=> d!1737580 (=> (not res!2324652) (not e!3380008))))

(assert (=> d!1737580 (= res!2324652 ((_ is Cons!62031) (exprs!5169 (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 lt!2228164)))))))

(assert (=> d!1737580 (= (derivationStepZipperUp!657 (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 lt!2228164)) (h!68478 s!2326)) e!3380009)))

(declare-fun bm!399189 () Bool)

(assert (=> bm!399189 (= call!399194 (derivationStepZipperDown!733 (h!68479 (exprs!5169 (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 lt!2228164)))) (Context!9339 (t!375384 (exprs!5169 (ite c!953204 lt!2228258 (ite c!953207 lt!2228253 lt!2228164))))) (h!68478 s!2326)))))

(assert (= (and d!1737580 res!2324652) b!5458073))

(assert (= (and d!1737580 c!953519) b!5458072))

(assert (= (and d!1737580 (not c!953519)) b!5458071))

(assert (= (and b!5458071 c!953520) b!5458070))

(assert (= (and b!5458071 (not c!953520)) b!5458074))

(assert (= (or b!5458072 b!5458070) bm!399189))

(declare-fun m!6479226 () Bool)

(assert (=> b!5458072 m!6479226))

(declare-fun m!6479228 () Bool)

(assert (=> b!5458073 m!6479228))

(declare-fun m!6479230 () Bool)

(assert (=> bm!399189 m!6479230))

(assert (=> bm!398851 d!1737580))

(declare-fun bs!1262955 () Bool)

(declare-fun d!1737582 () Bool)

(assert (= bs!1262955 (and d!1737582 d!1737314)))

(declare-fun lambda!288954 () Int)

(assert (=> bs!1262955 (= lambda!288954 lambda!288890)))

(declare-fun bs!1262956 () Bool)

(assert (= bs!1262956 (and d!1737582 b!5456993)))

(assert (=> bs!1262956 (= lambda!288954 lambda!288860)))

(declare-fun bs!1262957 () Bool)

(assert (= bs!1262957 (and d!1737582 d!1737262)))

(assert (=> bs!1262957 (= lambda!288954 lambda!288878)))

(declare-fun bs!1262958 () Bool)

(assert (= bs!1262958 (and d!1737582 d!1737450)))

(assert (=> bs!1262958 (= lambda!288954 lambda!288930)))

(declare-fun bs!1262959 () Bool)

(assert (= bs!1262959 (and d!1737582 d!1737470)))

(assert (=> bs!1262959 (= lambda!288954 lambda!288931)))

(declare-fun bs!1262960 () Bool)

(assert (= bs!1262960 (and d!1737582 b!5456989)))

(assert (=> bs!1262960 (= lambda!288954 lambda!288869)))

(declare-fun bs!1262961 () Bool)

(assert (= bs!1262961 (and d!1737582 d!1737298)))

(assert (=> bs!1262961 (= lambda!288954 lambda!288887)))

(declare-fun bs!1262962 () Bool)

(assert (= bs!1262962 (and d!1737582 b!5456979)))

(assert (=> bs!1262962 (= lambda!288954 lambda!288858)))

(declare-fun bs!1262963 () Bool)

(assert (= bs!1262963 (and d!1737582 d!1737490)))

(assert (=> bs!1262963 (= lambda!288954 lambda!288939)))

(declare-fun bs!1262964 () Bool)

(assert (= bs!1262964 (and d!1737582 d!1737494)))

(assert (=> bs!1262964 (= lambda!288954 lambda!288942)))

(declare-fun b!5458079 () Bool)

(declare-fun e!3380018 () Bool)

(declare-fun lt!2228581 () Regex!15285)

(assert (=> b!5458079 (= e!3380018 (isConcat!540 lt!2228581))))

(declare-fun e!3380015 () Bool)

(assert (=> d!1737582 e!3380015))

(declare-fun res!2324654 () Bool)

(assert (=> d!1737582 (=> (not res!2324654) (not e!3380015))))

(assert (=> d!1737582 (= res!2324654 (validRegex!7021 lt!2228581))))

(declare-fun e!3380016 () Regex!15285)

(assert (=> d!1737582 (= lt!2228581 e!3380016)))

(declare-fun c!953528 () Bool)

(declare-fun e!3380014 () Bool)

(assert (=> d!1737582 (= c!953528 e!3380014)))

(declare-fun res!2324653 () Bool)

(assert (=> d!1737582 (=> (not res!2324653) (not e!3380014))))

(assert (=> d!1737582 (= res!2324653 ((_ is Cons!62031) (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224))))))

(assert (=> d!1737582 (forall!14588 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224)) lambda!288954)))

(assert (=> d!1737582 (= (generalisedConcat!954 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224))) lt!2228581)))

(declare-fun b!5458080 () Bool)

(declare-fun e!3380017 () Bool)

(assert (=> b!5458080 (= e!3380017 (isEmptyExpr!1017 lt!2228581))))

(declare-fun b!5458081 () Bool)

(assert (=> b!5458081 (= e!3380018 (= lt!2228581 (head!11689 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224)))))))

(declare-fun b!5458082 () Bool)

(assert (=> b!5458082 (= e!3380016 (h!68479 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224))))))

(declare-fun b!5458083 () Bool)

(declare-fun e!3380013 () Regex!15285)

(assert (=> b!5458083 (= e!3380016 e!3380013)))

(declare-fun c!953525 () Bool)

(assert (=> b!5458083 (= c!953525 ((_ is Cons!62031) (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224))))))

(declare-fun b!5458084 () Bool)

(assert (=> b!5458084 (= e!3380017 e!3380018)))

(declare-fun c!953527 () Bool)

(assert (=> b!5458084 (= c!953527 (isEmpty!34017 (tail!10786 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224)))))))

(declare-fun b!5458085 () Bool)

(assert (=> b!5458085 (= e!3380014 (isEmpty!34017 (t!375384 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224)))))))

(declare-fun b!5458086 () Bool)

(assert (=> b!5458086 (= e!3380013 (Concat!24130 (h!68479 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224))) (generalisedConcat!954 (t!375384 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224))))))))

(declare-fun b!5458087 () Bool)

(assert (=> b!5458087 (= e!3380015 e!3380017)))

(declare-fun c!953526 () Bool)

(assert (=> b!5458087 (= c!953526 (isEmpty!34017 (ite c!953204 lt!2228265 (ite c!953207 lt!2228344 lt!2228224))))))

(declare-fun b!5458088 () Bool)

(assert (=> b!5458088 (= e!3380013 EmptyExpr!15285)))

(assert (= (and d!1737582 res!2324653) b!5458085))

(assert (= (and d!1737582 c!953528) b!5458082))

(assert (= (and d!1737582 (not c!953528)) b!5458083))

(assert (= (and b!5458083 c!953525) b!5458086))

(assert (= (and b!5458083 (not c!953525)) b!5458088))

(assert (= (and d!1737582 res!2324654) b!5458087))

(assert (= (and b!5458087 c!953526) b!5458080))

(assert (= (and b!5458087 (not c!953526)) b!5458084))

(assert (= (and b!5458084 c!953527) b!5458081))

(assert (= (and b!5458084 (not c!953527)) b!5458079))

(declare-fun m!6479232 () Bool)

(assert (=> b!5458084 m!6479232))

(assert (=> b!5458084 m!6479232))

(declare-fun m!6479234 () Bool)

(assert (=> b!5458084 m!6479234))

(declare-fun m!6479236 () Bool)

(assert (=> b!5458086 m!6479236))

(declare-fun m!6479238 () Bool)

(assert (=> d!1737582 m!6479238))

(declare-fun m!6479240 () Bool)

(assert (=> d!1737582 m!6479240))

(declare-fun m!6479242 () Bool)

(assert (=> b!5458087 m!6479242))

(declare-fun m!6479244 () Bool)

(assert (=> b!5458079 m!6479244))

(declare-fun m!6479246 () Bool)

(assert (=> b!5458080 m!6479246))

(declare-fun m!6479248 () Bool)

(assert (=> b!5458081 m!6479248))

(declare-fun m!6479250 () Bool)

(assert (=> b!5458085 m!6479250))

(assert (=> bm!398886 d!1737582))

(declare-fun b!5458130 () Bool)

(assert (=> b!5458130 true))

(declare-fun bs!1262978 () Bool)

(declare-fun b!5458132 () Bool)

(assert (= bs!1262978 (and b!5458132 b!5458130)))

(declare-fun lt!2228604 () Int)

(declare-fun lambda!288973 () Int)

(declare-fun lambda!288974 () Int)

(declare-fun lt!2228603 () Int)

(assert (=> bs!1262978 (= (= lt!2228603 lt!2228604) (= lambda!288974 lambda!288973))))

(assert (=> b!5458132 true))

(declare-fun d!1737584 () Bool)

(declare-fun e!3380043 () Bool)

(assert (=> d!1737584 e!3380043))

(declare-fun res!2324672 () Bool)

(assert (=> d!1737584 (=> (not res!2324672) (not e!3380043))))

(assert (=> d!1737584 (= res!2324672 (>= lt!2228603 0))))

(declare-fun e!3380044 () Int)

(assert (=> d!1737584 (= lt!2228603 e!3380044)))

(declare-fun c!953550 () Bool)

(assert (=> d!1737584 (= c!953550 ((_ is Cons!62032) zl!343))))

(assert (=> d!1737584 (= (zipperDepth!186 zl!343) lt!2228603)))

(assert (=> b!5458130 (= e!3380044 lt!2228604)))

(declare-fun contextDepth!101 (Context!9338) Int)

(assert (=> b!5458130 (= lt!2228604 (maxBigInt!0 (contextDepth!101 (h!68480 zl!343)) (zipperDepth!186 (t!375385 zl!343))))))

(declare-fun lt!2228602 () Unit!154880)

(declare-fun lambda!288972 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!95 (List!62156 Int Int Int) Unit!154880)

(assert (=> b!5458130 (= lt!2228602 (lemmaForallContextDepthBiggerThanTransitive!95 (t!375385 zl!343) lt!2228604 (zipperDepth!186 (t!375385 zl!343)) lambda!288972))))

(declare-fun forall!14590 (List!62156 Int) Bool)

(assert (=> b!5458130 (forall!14590 (t!375385 zl!343) lambda!288973)))

(declare-fun lt!2228601 () Unit!154880)

(assert (=> b!5458130 (= lt!2228601 lt!2228602)))

(declare-fun b!5458131 () Bool)

(assert (=> b!5458131 (= e!3380044 0)))

(assert (=> b!5458132 (= e!3380043 (forall!14590 zl!343 lambda!288974))))

(assert (= (and d!1737584 c!953550) b!5458130))

(assert (= (and d!1737584 (not c!953550)) b!5458131))

(assert (= (and d!1737584 res!2324672) b!5458132))

(declare-fun m!6479322 () Bool)

(assert (=> b!5458130 m!6479322))

(declare-fun m!6479324 () Bool)

(assert (=> b!5458130 m!6479324))

(declare-fun m!6479326 () Bool)

(assert (=> b!5458130 m!6479326))

(declare-fun m!6479328 () Bool)

(assert (=> b!5458130 m!6479328))

(assert (=> b!5458130 m!6479322))

(assert (=> b!5458130 m!6479328))

(assert (=> b!5458130 m!6479322))

(declare-fun m!6479330 () Bool)

(assert (=> b!5458130 m!6479330))

(declare-fun m!6479332 () Bool)

(assert (=> b!5458132 m!6479332))

(assert (=> b!5456963 d!1737584))

(declare-fun bs!1262979 () Bool)

(declare-fun b!5458135 () Bool)

(assert (= bs!1262979 (and b!5458135 b!5458130)))

(declare-fun lambda!288975 () Int)

(assert (=> bs!1262979 (= lambda!288975 lambda!288972)))

(declare-fun lt!2228608 () Int)

(declare-fun lambda!288976 () Int)

(assert (=> bs!1262979 (= (= lt!2228608 lt!2228604) (= lambda!288976 lambda!288973))))

(declare-fun bs!1262980 () Bool)

(assert (= bs!1262980 (and b!5458135 b!5458132)))

(assert (=> bs!1262980 (= (= lt!2228608 lt!2228603) (= lambda!288976 lambda!288974))))

(assert (=> b!5458135 true))

(declare-fun bs!1262981 () Bool)

(declare-fun b!5458137 () Bool)

(assert (= bs!1262981 (and b!5458137 b!5458130)))

(declare-fun lt!2228607 () Int)

(declare-fun lambda!288977 () Int)

(assert (=> bs!1262981 (= (= lt!2228607 lt!2228604) (= lambda!288977 lambda!288973))))

(declare-fun bs!1262982 () Bool)

(assert (= bs!1262982 (and b!5458137 b!5458132)))

(assert (=> bs!1262982 (= (= lt!2228607 lt!2228603) (= lambda!288977 lambda!288974))))

(declare-fun bs!1262983 () Bool)

(assert (= bs!1262983 (and b!5458137 b!5458135)))

(assert (=> bs!1262983 (= (= lt!2228607 lt!2228608) (= lambda!288977 lambda!288976))))

(assert (=> b!5458137 true))

(declare-fun d!1737600 () Bool)

(declare-fun e!3380045 () Bool)

(assert (=> d!1737600 e!3380045))

(declare-fun res!2324673 () Bool)

(assert (=> d!1737600 (=> (not res!2324673) (not e!3380045))))

(assert (=> d!1737600 (= res!2324673 (>= lt!2228607 0))))

(declare-fun e!3380046 () Int)

(assert (=> d!1737600 (= lt!2228607 e!3380046)))

(declare-fun c!953551 () Bool)

(assert (=> d!1737600 (= c!953551 ((_ is Cons!62032) lt!2228172))))

(assert (=> d!1737600 (= (zipperDepth!186 lt!2228172) lt!2228607)))

(assert (=> b!5458135 (= e!3380046 lt!2228608)))

(assert (=> b!5458135 (= lt!2228608 (maxBigInt!0 (contextDepth!101 (h!68480 lt!2228172)) (zipperDepth!186 (t!375385 lt!2228172))))))

(declare-fun lt!2228606 () Unit!154880)

(assert (=> b!5458135 (= lt!2228606 (lemmaForallContextDepthBiggerThanTransitive!95 (t!375385 lt!2228172) lt!2228608 (zipperDepth!186 (t!375385 lt!2228172)) lambda!288975))))

(assert (=> b!5458135 (forall!14590 (t!375385 lt!2228172) lambda!288976)))

(declare-fun lt!2228605 () Unit!154880)

(assert (=> b!5458135 (= lt!2228605 lt!2228606)))

(declare-fun b!5458136 () Bool)

(assert (=> b!5458136 (= e!3380046 0)))

(assert (=> b!5458137 (= e!3380045 (forall!14590 lt!2228172 lambda!288977))))

(assert (= (and d!1737600 c!953551) b!5458135))

(assert (= (and d!1737600 (not c!953551)) b!5458136))

(assert (= (and d!1737600 res!2324673) b!5458137))

(declare-fun m!6479334 () Bool)

(assert (=> b!5458135 m!6479334))

(declare-fun m!6479336 () Bool)

(assert (=> b!5458135 m!6479336))

(declare-fun m!6479338 () Bool)

(assert (=> b!5458135 m!6479338))

(declare-fun m!6479340 () Bool)

(assert (=> b!5458135 m!6479340))

(assert (=> b!5458135 m!6479334))

(assert (=> b!5458135 m!6479340))

(assert (=> b!5458135 m!6479334))

(declare-fun m!6479342 () Bool)

(assert (=> b!5458135 m!6479342))

(declare-fun m!6479344 () Bool)

(assert (=> b!5458137 m!6479344))

(assert (=> b!5456963 d!1737600))

(declare-fun d!1737602 () Bool)

(declare-fun lt!2228613 () Regex!15285)

(assert (=> d!1737602 (validRegex!7021 lt!2228613)))

(assert (=> d!1737602 (= lt!2228613 (generalisedUnion!1214 (unfocusZipperList!727 zl!343)))))

(assert (=> d!1737602 (= (unfocusZipper!1027 zl!343) lt!2228613)))

(declare-fun bs!1262984 () Bool)

(assert (= bs!1262984 d!1737602))

(declare-fun m!6479346 () Bool)

(assert (=> bs!1262984 m!6479346))

(assert (=> bs!1262984 m!6477724))

(assert (=> bs!1262984 m!6477724))

(assert (=> bs!1262984 m!6477726))

(assert (=> b!5456995 d!1737602))

(declare-fun d!1737604 () Bool)

(assert (=> d!1737604 (= (flatMap!1012 (ite c!953211 lt!2228242 lt!2228168) (ite c!953211 lambda!288844 lambda!288844)) (dynLambda!24409 (ite c!953211 lambda!288844 lambda!288844) lt!2228337))))

(declare-fun lt!2228614 () Unit!154880)

(assert (=> d!1737604 (= lt!2228614 (choose!41463 (ite c!953211 lt!2228242 lt!2228168) lt!2228337 (ite c!953211 lambda!288844 lambda!288844)))))

(assert (=> d!1737604 (= (ite c!953211 lt!2228242 lt!2228168) (store ((as const (Array Context!9338 Bool)) false) lt!2228337 true))))

(assert (=> d!1737604 (= (lemmaFlatMapOnSingletonSet!544 (ite c!953211 lt!2228242 lt!2228168) lt!2228337 (ite c!953211 lambda!288844 lambda!288844)) lt!2228614)))

(declare-fun b_lambda!207799 () Bool)

(assert (=> (not b_lambda!207799) (not d!1737604)))

(declare-fun bs!1262985 () Bool)

(assert (= bs!1262985 d!1737604))

(declare-fun m!6479348 () Bool)

(assert (=> bs!1262985 m!6479348))

(declare-fun m!6479350 () Bool)

(assert (=> bs!1262985 m!6479350))

(declare-fun m!6479352 () Bool)

(assert (=> bs!1262985 m!6479352))

(assert (=> bs!1262985 m!6477728))

(assert (=> bm!398842 d!1737604))

(declare-fun bs!1262986 () Bool)

(declare-fun b!5458182 () Bool)

(assert (= bs!1262986 (and b!5458182 b!5457434)))

(declare-fun lambda!288978 () Int)

(assert (=> bs!1262986 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (reg!15614 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= lambda!288978 lambda!288906))))

(declare-fun bs!1262987 () Bool)

(assert (= bs!1262987 (and b!5458182 b!5456979)))

(assert (=> bs!1262987 (not (= lambda!288978 lambda!288857))))

(declare-fun bs!1262988 () Bool)

(assert (= bs!1262988 (and b!5458182 b!5457008)))

(assert (=> bs!1262988 (not (= lambda!288978 lambda!288847))))

(declare-fun bs!1262989 () Bool)

(assert (= bs!1262989 (and b!5458182 b!5457132)))

(assert (=> bs!1262989 (not (= lambda!288978 lambda!288875))))

(declare-fun bs!1262990 () Bool)

(assert (= bs!1262990 (and b!5458182 b!5456961)))

(assert (=> bs!1262990 (not (= lambda!288978 lambda!288851))))

(declare-fun bs!1262991 () Bool)

(assert (= bs!1262991 (and b!5458182 b!5456970)))

(assert (=> bs!1262991 (not (= lambda!288978 lambda!288867))))

(declare-fun bs!1262992 () Bool)

(assert (= bs!1262992 (and b!5458182 b!5457639)))

(assert (=> bs!1262992 (not (= lambda!288978 lambda!288926))))

(declare-fun bs!1262993 () Bool)

(assert (= bs!1262993 (and b!5458182 d!1737340)))

(assert (=> bs!1262993 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (reg!15614 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!288978 lambda!288905))))

(declare-fun bs!1262994 () Bool)

(assert (= bs!1262994 (and b!5458182 b!5456993)))

(assert (=> bs!1262994 (not (= lambda!288978 lambda!288864))))

(assert (=> bs!1262990 (not (= lambda!288978 lambda!288852))))

(assert (=> bs!1262988 (not (= lambda!288978 lambda!288846))))

(declare-fun bs!1262995 () Bool)

(assert (= bs!1262995 (and b!5458182 d!1737350)))

(assert (=> bs!1262995 (not (= lambda!288978 lambda!288912))))

(declare-fun bs!1262996 () Bool)

(assert (= bs!1262996 (and b!5458182 b!5456966)))

(assert (=> bs!1262996 (not (= lambda!288978 lambda!288853))))

(assert (=> bs!1262991 (not (= lambda!288978 lambda!288866))))

(assert (=> bs!1262990 (not (= lambda!288978 lambda!288850))))

(assert (=> bs!1262994 (not (= lambda!288978 lambda!288863))))

(declare-fun bs!1262997 () Bool)

(assert (= bs!1262997 (and b!5458182 d!1737378)))

(assert (=> bs!1262997 (not (= lambda!288978 lambda!288922))))

(assert (=> bs!1262997 (not (= lambda!288978 lambda!288921))))

(declare-fun bs!1262998 () Bool)

(assert (= bs!1262998 (and b!5458182 b!5457428)))

(assert (=> bs!1262998 (not (= lambda!288978 lambda!288907))))

(declare-fun bs!1262999 () Bool)

(assert (= bs!1262999 (and b!5458182 b!5457009)))

(assert (=> bs!1262999 (not (= lambda!288978 lambda!288842))))

(assert (=> bs!1262987 (not (= lambda!288978 lambda!288855))))

(assert (=> bs!1262993 (not (= lambda!288978 lambda!288904))))

(assert (=> bs!1262991 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) Nil!62030) (= (reg!15614 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) lt!2228350)) (= lambda!288978 lambda!288868))))

(declare-fun bs!1263000 () Bool)

(assert (= bs!1263000 (and b!5458182 d!1737326)))

(assert (=> bs!1263000 (not (= lambda!288978 lambda!288893))))

(assert (=> bs!1262988 (not (= lambda!288978 lambda!288848))))

(declare-fun bs!1263001 () Bool)

(assert (= bs!1263001 (and b!5458182 b!5457138)))

(assert (=> bs!1263001 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (reg!15614 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= lambda!288978 lambda!288874))))

(declare-fun bs!1263002 () Bool)

(assert (= bs!1263002 (and b!5458182 b!5457645)))

(assert (=> bs!1263002 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (reg!15614 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 lt!2228328)) (= (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) lt!2228328)) (= lambda!288978 lambda!288925))))

(assert (=> bs!1262987 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) (_1!35787 lt!2228239)) (= (reg!15614 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) lt!2228350)) (= lambda!288978 lambda!288856))))

(assert (=> bs!1262988 (not (= lambda!288978 lambda!288845))))

(assert (=> bs!1262994 (not (= lambda!288978 lambda!288862))))

(declare-fun bs!1263003 () Bool)

(assert (= bs!1263003 (and b!5458182 d!1737376)))

(assert (=> bs!1263003 (not (= lambda!288978 lambda!288919))))

(assert (=> bs!1262994 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) (_1!35787 lt!2228245)) (= (reg!15614 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) lt!2228350)) (= lambda!288978 lambda!288865))))

(assert (=> bs!1262990 (not (= lambda!288978 lambda!288849))))

(assert (=> bs!1262999 (not (= lambda!288978 lambda!288843))))

(assert (=> bs!1262995 (not (= lambda!288978 lambda!288913))))

(assert (=> bs!1262994 (not (= lambda!288978 lambda!288861))))

(assert (=> bs!1262996 (not (= lambda!288978 lambda!288854))))

(assert (=> b!5458182 true))

(assert (=> b!5458182 true))

(declare-fun bs!1263004 () Bool)

(declare-fun b!5458176 () Bool)

(assert (= bs!1263004 (and b!5458176 b!5457434)))

(declare-fun lambda!288979 () Int)

(assert (=> bs!1263004 (not (= lambda!288979 lambda!288906))))

(declare-fun bs!1263005 () Bool)

(assert (= bs!1263005 (and b!5458176 b!5456979)))

(assert (=> bs!1263005 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) (_1!35787 lt!2228239)) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228350)) (= lambda!288979 lambda!288857))))

(declare-fun bs!1263006 () Bool)

(assert (= bs!1263006 (and b!5458176 b!5457008)))

(assert (=> bs!1263006 (not (= lambda!288979 lambda!288847))))

(declare-fun bs!1263007 () Bool)

(assert (= bs!1263007 (and b!5458176 b!5457132)))

(assert (=> bs!1263007 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))) (= lambda!288979 lambda!288875))))

(declare-fun bs!1263008 () Bool)

(assert (= bs!1263008 (and b!5458176 b!5456961)))

(assert (=> bs!1263008 (not (= lambda!288979 lambda!288851))))

(declare-fun bs!1263009 () Bool)

(assert (= bs!1263009 (and b!5458176 b!5456970)))

(assert (=> bs!1263009 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) Nil!62030) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228350)) (= lambda!288979 lambda!288867))))

(declare-fun bs!1263010 () Bool)

(assert (= bs!1263010 (and b!5458176 b!5457639)))

(assert (=> bs!1263010 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regOne!31082 lt!2228328)) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 lt!2228328))) (= lambda!288979 lambda!288926))))

(declare-fun bs!1263011 () Bool)

(assert (= bs!1263011 (and b!5458176 d!1737340)))

(assert (=> bs!1263011 (not (= lambda!288979 lambda!288905))))

(declare-fun bs!1263012 () Bool)

(assert (= bs!1263012 (and b!5458176 b!5456993)))

(assert (=> bs!1263012 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) (_1!35787 lt!2228245)) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228350)) (= lambda!288979 lambda!288864))))

(assert (=> bs!1263008 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228185)) (= lambda!288979 lambda!288852))))

(assert (=> bs!1263006 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228179)) (= lambda!288979 lambda!288846))))

(declare-fun bs!1263016 () Bool)

(assert (= bs!1263016 (and b!5458176 d!1737350)))

(assert (=> bs!1263016 (not (= lambda!288979 lambda!288912))))

(declare-fun bs!1263019 () Bool)

(assert (= bs!1263019 (and b!5458176 b!5456966)))

(assert (=> bs!1263019 (not (= lambda!288979 lambda!288853))))

(assert (=> bs!1263009 (not (= lambda!288979 lambda!288866))))

(assert (=> bs!1263008 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228281)) (= lambda!288979 lambda!288850))))

(assert (=> bs!1263012 (not (= lambda!288979 lambda!288863))))

(declare-fun bs!1263022 () Bool)

(assert (= bs!1263022 (and b!5458176 d!1737378)))

(assert (=> bs!1263022 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regOne!31082 r!7292)) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 r!7292))) (= lambda!288979 lambda!288922))))

(assert (=> bs!1263022 (not (= lambda!288979 lambda!288921))))

(declare-fun bs!1263023 () Bool)

(assert (= bs!1263023 (and b!5458176 b!5457428)))

(assert (=> bs!1263023 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))) (= lambda!288979 lambda!288907))))

(declare-fun bs!1263024 () Bool)

(assert (= bs!1263024 (and b!5458176 b!5457009)))

(assert (=> bs!1263024 (not (= lambda!288979 lambda!288842))))

(assert (=> bs!1263005 (not (= lambda!288979 lambda!288855))))

(assert (=> bs!1263011 (not (= lambda!288979 lambda!288904))))

(assert (=> bs!1263009 (not (= lambda!288979 lambda!288868))))

(declare-fun bs!1263025 () Bool)

(assert (= bs!1263025 (and b!5458176 d!1737326)))

(assert (=> bs!1263025 (not (= lambda!288979 lambda!288893))))

(assert (=> bs!1263006 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228361)) (= lambda!288979 lambda!288848))))

(declare-fun bs!1263029 () Bool)

(assert (= bs!1263029 (and b!5458176 b!5457138)))

(assert (=> bs!1263029 (not (= lambda!288979 lambda!288874))))

(declare-fun bs!1263032 () Bool)

(assert (= bs!1263032 (and b!5458176 b!5457645)))

(assert (=> bs!1263032 (not (= lambda!288979 lambda!288925))))

(assert (=> bs!1263005 (not (= lambda!288979 lambda!288856))))

(assert (=> bs!1263006 (not (= lambda!288979 lambda!288845))))

(assert (=> bs!1263012 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228296) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 r!7292))) (= lambda!288979 lambda!288862))))

(declare-fun bs!1263036 () Bool)

(assert (= bs!1263036 (and b!5458176 d!1737376)))

(assert (=> bs!1263036 (not (= lambda!288979 lambda!288919))))

(assert (=> bs!1263012 (not (= lambda!288979 lambda!288865))))

(assert (=> bs!1263008 (not (= lambda!288979 lambda!288849))))

(assert (=> bs!1263024 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regOne!31082 r!7292)) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 r!7292))) (= lambda!288979 lambda!288843))))

(assert (=> bs!1263016 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!288979 lambda!288913))))

(declare-fun bs!1263037 () Bool)

(assert (= bs!1263037 (and b!5458176 b!5458182)))

(assert (=> bs!1263037 (not (= lambda!288979 lambda!288978))))

(assert (=> bs!1263012 (not (= lambda!288979 lambda!288861))))

(assert (=> bs!1263019 (= (and (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) s!2326) (= (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) lt!2228350) (= (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (regTwo!31082 r!7292))) (= lambda!288979 lambda!288854))))

(assert (=> b!5458176 true))

(assert (=> b!5458176 true))

(declare-fun b!5458172 () Bool)

(declare-fun e!3380068 () Bool)

(declare-fun e!3380067 () Bool)

(assert (=> b!5458172 (= e!3380068 e!3380067)))

(declare-fun res!2324682 () Bool)

(assert (=> b!5458172 (= res!2324682 (not ((_ is EmptyLang!15285) (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))))))))

(assert (=> b!5458172 (=> (not res!2324682) (not e!3380067))))

(declare-fun b!5458173 () Bool)

(declare-fun e!3380073 () Bool)

(assert (=> b!5458173 (= e!3380073 (= (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326)) (Cons!62030 (c!953215 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) Nil!62030)))))

(declare-fun bm!399199 () Bool)

(declare-fun call!399205 () Bool)

(assert (=> bm!399199 (= call!399205 (isEmpty!34016 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))))))

(declare-fun c!953569 () Bool)

(declare-fun b!5458174 () Bool)

(assert (=> b!5458174 (= c!953569 ((_ is ElementMatch!15285) (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))))))

(assert (=> b!5458174 (= e!3380067 e!3380073)))

(declare-fun d!1737606 () Bool)

(declare-fun c!953568 () Bool)

(assert (=> d!1737606 (= c!953568 ((_ is EmptyExpr!15285) (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))))))

(assert (=> d!1737606 (= (matchRSpec!2388 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))) e!3380068)))

(declare-fun b!5458175 () Bool)

(declare-fun e!3380070 () Bool)

(declare-fun e!3380072 () Bool)

(assert (=> b!5458175 (= e!3380070 e!3380072)))

(declare-fun res!2324681 () Bool)

(assert (=> b!5458175 (= res!2324681 (matchRSpec!2388 (regOne!31083 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))))))

(assert (=> b!5458175 (=> res!2324681 e!3380072)))

(declare-fun e!3380069 () Bool)

(declare-fun call!399204 () Bool)

(assert (=> b!5458176 (= e!3380069 call!399204)))

(declare-fun b!5458177 () Bool)

(declare-fun res!2324680 () Bool)

(declare-fun e!3380071 () Bool)

(assert (=> b!5458177 (=> res!2324680 e!3380071)))

(assert (=> b!5458177 (= res!2324680 call!399205)))

(assert (=> b!5458177 (= e!3380069 e!3380071)))

(declare-fun b!5458178 () Bool)

(assert (=> b!5458178 (= e!3380070 e!3380069)))

(declare-fun c!953566 () Bool)

(assert (=> b!5458178 (= c!953566 ((_ is Star!15285) (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))))))

(declare-fun bm!399200 () Bool)

(assert (=> bm!399200 (= call!399204 (Exists!2466 (ite c!953566 lambda!288978 lambda!288979)))))

(declare-fun b!5458179 () Bool)

(assert (=> b!5458179 (= e!3380068 call!399205)))

(declare-fun b!5458180 () Bool)

(declare-fun c!953567 () Bool)

(assert (=> b!5458180 (= c!953567 ((_ is Union!15285) (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))))))

(assert (=> b!5458180 (= e!3380073 e!3380070)))

(declare-fun b!5458181 () Bool)

(assert (=> b!5458181 (= e!3380072 (matchRSpec!2388 (regTwo!31083 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))))))

(assert (=> b!5458182 (= e!3380071 call!399204)))

(assert (= (and d!1737606 c!953568) b!5458179))

(assert (= (and d!1737606 (not c!953568)) b!5458172))

(assert (= (and b!5458172 res!2324682) b!5458174))

(assert (= (and b!5458174 c!953569) b!5458173))

(assert (= (and b!5458174 (not c!953569)) b!5458180))

(assert (= (and b!5458180 c!953567) b!5458175))

(assert (= (and b!5458180 (not c!953567)) b!5458178))

(assert (= (and b!5458175 (not res!2324681)) b!5458181))

(assert (= (and b!5458178 c!953566) b!5458177))

(assert (= (and b!5458178 (not c!953566)) b!5458176))

(assert (= (and b!5458177 (not res!2324680)) b!5458182))

(assert (= (or b!5458182 b!5458176) bm!399200))

(assert (= (or b!5458179 b!5458177) bm!399199))

(declare-fun m!6479420 () Bool)

(assert (=> bm!399199 m!6479420))

(declare-fun m!6479424 () Bool)

(assert (=> b!5458175 m!6479424))

(declare-fun m!6479426 () Bool)

(assert (=> bm!399200 m!6479426))

(declare-fun m!6479428 () Bool)

(assert (=> b!5458181 m!6479428))

(assert (=> bm!399001 d!1737606))

(declare-fun c!953594 () Bool)

(declare-fun call!399228 () List!62155)

(declare-fun c!953595 () Bool)

(declare-fun bm!399221 () Bool)

(assert (=> bm!399221 (= call!399228 ($colon$colon!1535 (exprs!5169 (ite (or c!953204 c!953207) lt!2228337 (ite c!953209 (Context!9339 lt!2228176) lt!2228309))) (ite (or c!953594 c!953595) (regTwo!31082 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))) (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))))))))

(declare-fun bm!399222 () Bool)

(declare-fun call!399230 () List!62155)

(assert (=> bm!399222 (= call!399230 call!399228)))

(declare-fun b!5458241 () Bool)

(declare-fun e!3380109 () (InoxSet Context!9338))

(declare-fun call!399229 () (InoxSet Context!9338))

(assert (=> b!5458241 (= e!3380109 call!399229)))

(declare-fun b!5458242 () Bool)

(declare-fun e!3380108 () (InoxSet Context!9338))

(declare-fun call!399227 () (InoxSet Context!9338))

(declare-fun call!399226 () (InoxSet Context!9338))

(assert (=> b!5458242 (= e!3380108 ((_ map or) call!399227 call!399226))))

(declare-fun b!5458243 () Bool)

(declare-fun e!3380110 () Bool)

(assert (=> b!5458243 (= c!953594 e!3380110)))

(declare-fun res!2324693 () Bool)

(assert (=> b!5458243 (=> (not res!2324693) (not e!3380110))))

(assert (=> b!5458243 (= res!2324693 ((_ is Concat!24130) (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))))))

(declare-fun e!3380111 () (InoxSet Context!9338))

(assert (=> b!5458243 (= e!3380108 e!3380111)))

(declare-fun b!5458244 () Bool)

(declare-fun e!3380112 () (InoxSet Context!9338))

(assert (=> b!5458244 (= e!3380112 call!399229)))

(declare-fun b!5458245 () Bool)

(assert (=> b!5458245 (= e!3380111 e!3380109)))

(assert (=> b!5458245 (= c!953595 ((_ is Concat!24130) (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))))))

(declare-fun d!1737620 () Bool)

(declare-fun c!953598 () Bool)

(assert (=> d!1737620 (= c!953598 (and ((_ is ElementMatch!15285) (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))) (= (c!953215 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))) (h!68478 s!2326))))))

(declare-fun e!3380113 () (InoxSet Context!9338))

(assert (=> d!1737620 (= (derivationStepZipperDown!733 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (ite (or c!953204 c!953207) lt!2228337 (ite c!953209 (Context!9339 lt!2228176) lt!2228309)) (h!68478 s!2326)) e!3380113)))

(declare-fun bm!399223 () Bool)

(declare-fun call!399231 () (InoxSet Context!9338))

(assert (=> bm!399223 (= call!399229 call!399231)))

(declare-fun c!953596 () Bool)

(declare-fun bm!399224 () Bool)

(assert (=> bm!399224 (= call!399226 (derivationStepZipperDown!733 (ite c!953596 (regTwo!31083 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))) (ite c!953594 (regTwo!31082 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))) (ite c!953595 (regOne!31082 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))) (reg!15614 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))))))) (ite (or c!953596 c!953594) (ite (or c!953204 c!953207) lt!2228337 (ite c!953209 (Context!9339 lt!2228176) lt!2228309)) (Context!9339 call!399230)) (h!68478 s!2326)))))

(declare-fun bm!399225 () Bool)

(assert (=> bm!399225 (= call!399227 (derivationStepZipperDown!733 (ite c!953596 (regOne!31083 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))))) (ite c!953596 (ite (or c!953204 c!953207) lt!2228337 (ite c!953209 (Context!9339 lt!2228176) lt!2228309)) (Context!9339 call!399228)) (h!68478 s!2326)))))

(declare-fun b!5458246 () Bool)

(assert (=> b!5458246 (= e!3380112 ((as const (Array Context!9338 Bool)) false))))

(declare-fun b!5458247 () Bool)

(assert (=> b!5458247 (= e!3380110 (nullable!5454 (regOne!31082 (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))))))))

(declare-fun bm!399226 () Bool)

(assert (=> bm!399226 (= call!399231 call!399226)))

(declare-fun b!5458248 () Bool)

(assert (=> b!5458248 (= e!3380111 ((_ map or) call!399227 call!399231))))

(declare-fun b!5458249 () Bool)

(assert (=> b!5458249 (= e!3380113 (store ((as const (Array Context!9338 Bool)) false) (ite (or c!953204 c!953207) lt!2228337 (ite c!953209 (Context!9339 lt!2228176) lt!2228309)) true))))

(declare-fun c!953597 () Bool)

(declare-fun b!5458250 () Bool)

(assert (=> b!5458250 (= c!953597 ((_ is Star!15285) (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))))))

(assert (=> b!5458250 (= e!3380109 e!3380112)))

(declare-fun b!5458251 () Bool)

(assert (=> b!5458251 (= e!3380113 e!3380108)))

(assert (=> b!5458251 (= c!953596 ((_ is Union!15285) (ite c!953204 (regOne!31083 (regOne!31082 r!7292)) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292)))))))))

(assert (= (and d!1737620 c!953598) b!5458249))

(assert (= (and d!1737620 (not c!953598)) b!5458251))

(assert (= (and b!5458251 c!953596) b!5458242))

(assert (= (and b!5458251 (not c!953596)) b!5458243))

(assert (= (and b!5458243 res!2324693) b!5458247))

(assert (= (and b!5458243 c!953594) b!5458248))

(assert (= (and b!5458243 (not c!953594)) b!5458245))

(assert (= (and b!5458245 c!953595) b!5458241))

(assert (= (and b!5458245 (not c!953595)) b!5458250))

(assert (= (and b!5458250 c!953597) b!5458244))

(assert (= (and b!5458250 (not c!953597)) b!5458246))

(assert (= (or b!5458241 b!5458244) bm!399222))

(assert (= (or b!5458241 b!5458244) bm!399223))

(assert (= (or b!5458248 bm!399222) bm!399221))

(assert (= (or b!5458248 bm!399223) bm!399226))

(assert (= (or b!5458242 bm!399226) bm!399224))

(assert (= (or b!5458242 b!5458248) bm!399225))

(declare-fun m!6479436 () Bool)

(assert (=> bm!399224 m!6479436))

(declare-fun m!6479438 () Bool)

(assert (=> b!5458249 m!6479438))

(declare-fun m!6479440 () Bool)

(assert (=> bm!399225 m!6479440))

(declare-fun m!6479442 () Bool)

(assert (=> b!5458247 m!6479442))

(declare-fun m!6479444 () Bool)

(assert (=> bm!399221 m!6479444))

(assert (=> bm!399047 d!1737620))

(declare-fun d!1737624 () Bool)

(assert (=> d!1737624 (matchR!7470 (Concat!24130 (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292))) (ite c!953211 (regTwo!31082 r!7292) lt!2228257)) (++!13649 (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228230)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230))))))

(declare-fun lt!2228619 () Unit!154880)

(assert (=> d!1737624 (= lt!2228619 (choose!41465 (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292))) (ite c!953211 (regTwo!31082 r!7292) lt!2228257) (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228230)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230))))))

(declare-fun e!3380114 () Bool)

(assert (=> d!1737624 e!3380114))

(declare-fun res!2324694 () Bool)

(assert (=> d!1737624 (=> (not res!2324694) (not e!3380114))))

(assert (=> d!1737624 (= res!2324694 (validRegex!7021 (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292)))))))

(assert (=> d!1737624 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!252 (ite c!953211 lt!2228350 (reg!15614 (regOne!31082 r!7292))) (ite c!953211 (regTwo!31082 r!7292) lt!2228257) (ite c!953211 (_2!35787 lt!2228360) (_1!35787 lt!2228230)) (ite c!953211 (_2!35787 lt!2228239) (_2!35787 lt!2228230))) lt!2228619)))

(declare-fun b!5458252 () Bool)

(assert (=> b!5458252 (= e!3380114 (validRegex!7021 (ite c!953211 (regTwo!31082 r!7292) lt!2228257)))))

(assert (= (and d!1737624 res!2324694) b!5458252))

(declare-fun m!6479446 () Bool)

(assert (=> d!1737624 m!6479446))

(assert (=> d!1737624 m!6479446))

(declare-fun m!6479448 () Bool)

(assert (=> d!1737624 m!6479448))

(declare-fun m!6479450 () Bool)

(assert (=> d!1737624 m!6479450))

(declare-fun m!6479452 () Bool)

(assert (=> d!1737624 m!6479452))

(declare-fun m!6479454 () Bool)

(assert (=> b!5458252 m!6479454))

(assert (=> bm!398854 d!1737624))

(declare-fun d!1737626 () Bool)

(declare-fun c!953599 () Bool)

(assert (=> d!1737626 (= c!953599 (isEmpty!34016 (ite c!953203 (t!375383 s!2326) s!2326)))))

(declare-fun e!3380115 () Bool)

(assert (=> d!1737626 (= (matchZipper!1529 (ite c!953203 lt!2228203 (ite c!953204 z!1189 lt!2228252)) (ite c!953203 (t!375383 s!2326) s!2326)) e!3380115)))

(declare-fun b!5458253 () Bool)

(assert (=> b!5458253 (= e!3380115 (nullableZipper!1485 (ite c!953203 lt!2228203 (ite c!953204 z!1189 lt!2228252))))))

(declare-fun b!5458254 () Bool)

(assert (=> b!5458254 (= e!3380115 (matchZipper!1529 (derivationStepZipper!1504 (ite c!953203 lt!2228203 (ite c!953204 z!1189 lt!2228252)) (head!11687 (ite c!953203 (t!375383 s!2326) s!2326))) (tail!10784 (ite c!953203 (t!375383 s!2326) s!2326))))))

(assert (= (and d!1737626 c!953599) b!5458253))

(assert (= (and d!1737626 (not c!953599)) b!5458254))

(declare-fun m!6479456 () Bool)

(assert (=> d!1737626 m!6479456))

(declare-fun m!6479458 () Bool)

(assert (=> b!5458253 m!6479458))

(declare-fun m!6479460 () Bool)

(assert (=> b!5458254 m!6479460))

(assert (=> b!5458254 m!6479460))

(declare-fun m!6479462 () Bool)

(assert (=> b!5458254 m!6479462))

(declare-fun m!6479464 () Bool)

(assert (=> b!5458254 m!6479464))

(assert (=> b!5458254 m!6479462))

(assert (=> b!5458254 m!6479464))

(declare-fun m!6479466 () Bool)

(assert (=> b!5458254 m!6479466))

(assert (=> bm!398953 d!1737626))

(declare-fun d!1737628 () Bool)

(assert (=> d!1737628 (= (flatMap!1012 (ite c!953204 lt!2228199 (ite c!953207 lt!2228252 lt!2228162)) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 lambda!288844))) (choose!41446 (ite c!953204 lt!2228199 (ite c!953207 lt!2228252 lt!2228162)) (ite c!953204 lambda!288844 (ite c!953207 lambda!288844 lambda!288844))))))

(declare-fun bs!1263039 () Bool)

(assert (= bs!1263039 d!1737628))

(declare-fun m!6479468 () Bool)

(assert (=> bs!1263039 m!6479468))

(assert (=> bm!398972 d!1737628))

(declare-fun bs!1263040 () Bool)

(declare-fun b!5458265 () Bool)

(assert (= bs!1263040 (and b!5458265 b!5457434)))

(declare-fun lambda!288982 () Int)

(assert (=> bs!1263040 (= (and (= (reg!15614 r!7292) (reg!15614 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= r!7292 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= lambda!288982 lambda!288906))))

(declare-fun bs!1263041 () Bool)

(assert (= bs!1263041 (and b!5458265 b!5456979)))

(assert (=> bs!1263041 (not (= lambda!288982 lambda!288857))))

(declare-fun bs!1263042 () Bool)

(assert (= bs!1263042 (and b!5458265 b!5457008)))

(assert (=> bs!1263042 (not (= lambda!288982 lambda!288847))))

(declare-fun bs!1263043 () Bool)

(assert (= bs!1263043 (and b!5458265 b!5457132)))

(assert (=> bs!1263043 (not (= lambda!288982 lambda!288875))))

(declare-fun bs!1263044 () Bool)

(assert (= bs!1263044 (and b!5458265 b!5456961)))

(assert (=> bs!1263044 (not (= lambda!288982 lambda!288851))))

(declare-fun bs!1263045 () Bool)

(assert (= bs!1263045 (and b!5458265 b!5456970)))

(assert (=> bs!1263045 (not (= lambda!288982 lambda!288867))))

(declare-fun bs!1263046 () Bool)

(assert (= bs!1263046 (and b!5458265 b!5457639)))

(assert (=> bs!1263046 (not (= lambda!288982 lambda!288926))))

(declare-fun bs!1263047 () Bool)

(assert (= bs!1263047 (and b!5458265 d!1737340)))

(assert (=> bs!1263047 (= (and (= s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (reg!15614 r!7292) (reg!15614 (regOne!31082 r!7292))) (= r!7292 (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!288982 lambda!288905))))

(declare-fun bs!1263048 () Bool)

(assert (= bs!1263048 (and b!5458265 b!5456993)))

(assert (=> bs!1263048 (not (= lambda!288982 lambda!288864))))

(assert (=> bs!1263042 (not (= lambda!288982 lambda!288846))))

(declare-fun bs!1263049 () Bool)

(assert (= bs!1263049 (and b!5458265 d!1737350)))

(assert (=> bs!1263049 (not (= lambda!288982 lambda!288912))))

(declare-fun bs!1263050 () Bool)

(assert (= bs!1263050 (and b!5458265 b!5456966)))

(assert (=> bs!1263050 (not (= lambda!288982 lambda!288853))))

(assert (=> bs!1263045 (not (= lambda!288982 lambda!288866))))

(assert (=> bs!1263044 (not (= lambda!288982 lambda!288850))))

(assert (=> bs!1263048 (not (= lambda!288982 lambda!288863))))

(declare-fun bs!1263051 () Bool)

(assert (= bs!1263051 (and b!5458265 d!1737378)))

(assert (=> bs!1263051 (not (= lambda!288982 lambda!288922))))

(assert (=> bs!1263051 (not (= lambda!288982 lambda!288921))))

(declare-fun bs!1263052 () Bool)

(assert (= bs!1263052 (and b!5458265 b!5457428)))

(assert (=> bs!1263052 (not (= lambda!288982 lambda!288907))))

(declare-fun bs!1263053 () Bool)

(assert (= bs!1263053 (and b!5458265 b!5457009)))

(assert (=> bs!1263053 (not (= lambda!288982 lambda!288842))))

(assert (=> bs!1263041 (not (= lambda!288982 lambda!288855))))

(assert (=> bs!1263047 (not (= lambda!288982 lambda!288904))))

(assert (=> bs!1263045 (= (and (= s!2326 Nil!62030) (= (reg!15614 r!7292) (reg!15614 (regOne!31082 r!7292))) (= r!7292 lt!2228350)) (= lambda!288982 lambda!288868))))

(declare-fun bs!1263054 () Bool)

(assert (= bs!1263054 (and b!5458265 d!1737326)))

(assert (=> bs!1263054 (not (= lambda!288982 lambda!288893))))

(assert (=> bs!1263042 (not (= lambda!288982 lambda!288848))))

(declare-fun bs!1263055 () Bool)

(assert (= bs!1263055 (and b!5458265 b!5457138)))

(assert (=> bs!1263055 (= (and (= (reg!15614 r!7292) (reg!15614 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= r!7292 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= lambda!288982 lambda!288874))))

(declare-fun bs!1263056 () Bool)

(assert (= bs!1263056 (and b!5458265 b!5457645)))

(assert (=> bs!1263056 (= (and (= (reg!15614 r!7292) (reg!15614 lt!2228328)) (= r!7292 lt!2228328)) (= lambda!288982 lambda!288925))))

(assert (=> bs!1263041 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (reg!15614 r!7292) (reg!15614 (regOne!31082 r!7292))) (= r!7292 lt!2228350)) (= lambda!288982 lambda!288856))))

(assert (=> bs!1263042 (not (= lambda!288982 lambda!288845))))

(assert (=> bs!1263048 (not (= lambda!288982 lambda!288862))))

(declare-fun bs!1263057 () Bool)

(assert (= bs!1263057 (and b!5458265 b!5458176)))

(assert (=> bs!1263057 (not (= lambda!288982 lambda!288979))))

(assert (=> bs!1263044 (not (= lambda!288982 lambda!288852))))

(declare-fun bs!1263058 () Bool)

(assert (= bs!1263058 (and b!5458265 d!1737376)))

(assert (=> bs!1263058 (not (= lambda!288982 lambda!288919))))

(assert (=> bs!1263048 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (reg!15614 r!7292) (reg!15614 (regOne!31082 r!7292))) (= r!7292 lt!2228350)) (= lambda!288982 lambda!288865))))

(assert (=> bs!1263044 (not (= lambda!288982 lambda!288849))))

(assert (=> bs!1263053 (not (= lambda!288982 lambda!288843))))

(assert (=> bs!1263049 (not (= lambda!288982 lambda!288913))))

(declare-fun bs!1263059 () Bool)

(assert (= bs!1263059 (and b!5458265 b!5458182)))

(assert (=> bs!1263059 (= (and (= s!2326 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))) (= (reg!15614 r!7292) (reg!15614 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))))) (= r!7292 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))))) (= lambda!288982 lambda!288978))))

(assert (=> bs!1263048 (not (= lambda!288982 lambda!288861))))

(assert (=> bs!1263050 (not (= lambda!288982 lambda!288854))))

(assert (=> b!5458265 true))

(assert (=> b!5458265 true))

(declare-fun bs!1263069 () Bool)

(declare-fun b!5458259 () Bool)

(assert (= bs!1263069 (and b!5458259 b!5457434)))

(declare-fun lambda!288986 () Int)

(assert (=> bs!1263069 (not (= lambda!288986 lambda!288906))))

(declare-fun bs!1263070 () Bool)

(assert (= bs!1263070 (and b!5458259 b!5456979)))

(assert (=> bs!1263070 (= (and (= s!2326 (_1!35787 lt!2228239)) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288986 lambda!288857))))

(declare-fun bs!1263071 () Bool)

(assert (= bs!1263071 (and b!5458259 b!5457008)))

(assert (=> bs!1263071 (not (= lambda!288986 lambda!288847))))

(declare-fun bs!1263072 () Bool)

(assert (= bs!1263072 (and b!5458259 b!5457132)))

(assert (=> bs!1263072 (= (and (= (regOne!31082 r!7292) (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (regTwo!31082 r!7292) (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))) (= lambda!288986 lambda!288875))))

(declare-fun bs!1263073 () Bool)

(assert (= bs!1263073 (and b!5458259 b!5456961)))

(assert (=> bs!1263073 (not (= lambda!288986 lambda!288851))))

(declare-fun bs!1263074 () Bool)

(assert (= bs!1263074 (and b!5458259 b!5456970)))

(assert (=> bs!1263074 (= (and (= s!2326 Nil!62030) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288986 lambda!288867))))

(declare-fun bs!1263075 () Bool)

(assert (= bs!1263075 (and b!5458259 b!5457639)))

(assert (=> bs!1263075 (= (and (= (regOne!31082 r!7292) (regOne!31082 lt!2228328)) (= (regTwo!31082 r!7292) (regTwo!31082 lt!2228328))) (= lambda!288986 lambda!288926))))

(declare-fun bs!1263076 () Bool)

(assert (= bs!1263076 (and b!5458259 d!1737340)))

(assert (=> bs!1263076 (not (= lambda!288986 lambda!288905))))

(declare-fun bs!1263077 () Bool)

(assert (= bs!1263077 (and b!5458259 b!5456993)))

(assert (=> bs!1263077 (= (and (= s!2326 (_1!35787 lt!2228245)) (= (regOne!31082 r!7292) (reg!15614 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228350)) (= lambda!288986 lambda!288864))))

(assert (=> bs!1263071 (= (and (= (regOne!31082 r!7292) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228179)) (= lambda!288986 lambda!288846))))

(declare-fun bs!1263078 () Bool)

(assert (= bs!1263078 (and b!5458259 d!1737350)))

(assert (=> bs!1263078 (not (= lambda!288986 lambda!288912))))

(declare-fun bs!1263079 () Bool)

(assert (= bs!1263079 (and b!5458259 b!5456966)))

(assert (=> bs!1263079 (not (= lambda!288986 lambda!288853))))

(assert (=> bs!1263074 (not (= lambda!288986 lambda!288866))))

(assert (=> bs!1263073 (= (and (= (regOne!31082 r!7292) (regOne!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228281)) (= lambda!288986 lambda!288850))))

(assert (=> bs!1263077 (not (= lambda!288986 lambda!288863))))

(declare-fun bs!1263080 () Bool)

(assert (= bs!1263080 (and b!5458259 d!1737378)))

(assert (=> bs!1263080 (= lambda!288986 lambda!288922)))

(assert (=> bs!1263080 (not (= lambda!288986 lambda!288921))))

(declare-fun bs!1263081 () Bool)

(assert (= bs!1263081 (and b!5458259 b!5457428)))

(assert (=> bs!1263081 (= (and (= (regOne!31082 r!7292) (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= (regTwo!31082 r!7292) (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))) (= lambda!288986 lambda!288907))))

(declare-fun bs!1263082 () Bool)

(assert (= bs!1263082 (and b!5458259 b!5457009)))

(assert (=> bs!1263082 (not (= lambda!288986 lambda!288842))))

(assert (=> bs!1263070 (not (= lambda!288986 lambda!288855))))

(assert (=> bs!1263076 (not (= lambda!288986 lambda!288904))))

(assert (=> bs!1263074 (not (= lambda!288986 lambda!288868))))

(declare-fun bs!1263083 () Bool)

(assert (= bs!1263083 (and b!5458259 d!1737326)))

(assert (=> bs!1263083 (not (= lambda!288986 lambda!288893))))

(assert (=> bs!1263071 (= (and (= (regOne!31082 r!7292) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228361)) (= lambda!288986 lambda!288848))))

(declare-fun bs!1263084 () Bool)

(assert (= bs!1263084 (and b!5458259 b!5457138)))

(assert (=> bs!1263084 (not (= lambda!288986 lambda!288874))))

(declare-fun bs!1263085 () Bool)

(assert (= bs!1263085 (and b!5458259 b!5457645)))

(assert (=> bs!1263085 (not (= lambda!288986 lambda!288925))))

(assert (=> bs!1263070 (not (= lambda!288986 lambda!288856))))

(assert (=> bs!1263071 (not (= lambda!288986 lambda!288845))))

(assert (=> bs!1263077 (= (= (regOne!31082 r!7292) lt!2228296) (= lambda!288986 lambda!288862))))

(declare-fun bs!1263086 () Bool)

(assert (= bs!1263086 (and b!5458259 b!5458176)))

(assert (=> bs!1263086 (= (and (= s!2326 (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))) (= (regOne!31082 r!7292) (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))))) (= (regTwo!31082 r!7292) (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))))) (= lambda!288986 lambda!288979))))

(declare-fun bs!1263087 () Bool)

(assert (= bs!1263087 (and b!5458259 b!5458265)))

(assert (=> bs!1263087 (not (= lambda!288986 lambda!288982))))

(assert (=> bs!1263073 (= (and (= (regOne!31082 r!7292) (regTwo!31082 (regOne!31082 r!7292))) (= (regTwo!31082 r!7292) lt!2228185)) (= lambda!288986 lambda!288852))))

(declare-fun bs!1263088 () Bool)

(assert (= bs!1263088 (and b!5458259 d!1737376)))

(assert (=> bs!1263088 (not (= lambda!288986 lambda!288919))))

(assert (=> bs!1263077 (not (= lambda!288986 lambda!288865))))

(assert (=> bs!1263073 (not (= lambda!288986 lambda!288849))))

(assert (=> bs!1263082 (= lambda!288986 lambda!288843)))

(assert (=> bs!1263078 (= (and (= s!2326 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) (= (regOne!31082 r!7292) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (regTwo!31082 r!7292) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!288986 lambda!288913))))

(declare-fun bs!1263089 () Bool)

(assert (= bs!1263089 (and b!5458259 b!5458182)))

(assert (=> bs!1263089 (not (= lambda!288986 lambda!288978))))

(assert (=> bs!1263077 (not (= lambda!288986 lambda!288861))))

(assert (=> bs!1263079 (= (= (regOne!31082 r!7292) lt!2228350) (= lambda!288986 lambda!288854))))

(assert (=> b!5458259 true))

(assert (=> b!5458259 true))

(declare-fun b!5458255 () Bool)

(declare-fun e!3380117 () Bool)

(declare-fun e!3380116 () Bool)

(assert (=> b!5458255 (= e!3380117 e!3380116)))

(declare-fun res!2324697 () Bool)

(assert (=> b!5458255 (= res!2324697 (not ((_ is EmptyLang!15285) r!7292)))))

(assert (=> b!5458255 (=> (not res!2324697) (not e!3380116))))

(declare-fun b!5458256 () Bool)

(declare-fun e!3380122 () Bool)

(assert (=> b!5458256 (= e!3380122 (= s!2326 (Cons!62030 (c!953215 r!7292) Nil!62030)))))

(declare-fun bm!399227 () Bool)

(declare-fun call!399233 () Bool)

(assert (=> bm!399227 (= call!399233 (isEmpty!34016 s!2326))))

(declare-fun b!5458257 () Bool)

(declare-fun c!953603 () Bool)

(assert (=> b!5458257 (= c!953603 ((_ is ElementMatch!15285) r!7292))))

(assert (=> b!5458257 (= e!3380116 e!3380122)))

(declare-fun d!1737630 () Bool)

(declare-fun c!953602 () Bool)

(assert (=> d!1737630 (= c!953602 ((_ is EmptyExpr!15285) r!7292))))

(assert (=> d!1737630 (= (matchRSpec!2388 r!7292 s!2326) e!3380117)))

(declare-fun b!5458258 () Bool)

(declare-fun e!3380119 () Bool)

(declare-fun e!3380121 () Bool)

(assert (=> b!5458258 (= e!3380119 e!3380121)))

(declare-fun res!2324696 () Bool)

(assert (=> b!5458258 (= res!2324696 (matchRSpec!2388 (regOne!31083 r!7292) s!2326))))

(assert (=> b!5458258 (=> res!2324696 e!3380121)))

(declare-fun e!3380118 () Bool)

(declare-fun call!399232 () Bool)

(assert (=> b!5458259 (= e!3380118 call!399232)))

(declare-fun b!5458260 () Bool)

(declare-fun res!2324695 () Bool)

(declare-fun e!3380120 () Bool)

(assert (=> b!5458260 (=> res!2324695 e!3380120)))

(assert (=> b!5458260 (= res!2324695 call!399233)))

(assert (=> b!5458260 (= e!3380118 e!3380120)))

(declare-fun b!5458261 () Bool)

(assert (=> b!5458261 (= e!3380119 e!3380118)))

(declare-fun c!953600 () Bool)

(assert (=> b!5458261 (= c!953600 ((_ is Star!15285) r!7292))))

(declare-fun bm!399228 () Bool)

(assert (=> bm!399228 (= call!399232 (Exists!2466 (ite c!953600 lambda!288982 lambda!288986)))))

(declare-fun b!5458262 () Bool)

(assert (=> b!5458262 (= e!3380117 call!399233)))

(declare-fun b!5458263 () Bool)

(declare-fun c!953601 () Bool)

(assert (=> b!5458263 (= c!953601 ((_ is Union!15285) r!7292))))

(assert (=> b!5458263 (= e!3380122 e!3380119)))

(declare-fun b!5458264 () Bool)

(assert (=> b!5458264 (= e!3380121 (matchRSpec!2388 (regTwo!31083 r!7292) s!2326))))

(assert (=> b!5458265 (= e!3380120 call!399232)))

(assert (= (and d!1737630 c!953602) b!5458262))

(assert (= (and d!1737630 (not c!953602)) b!5458255))

(assert (= (and b!5458255 res!2324697) b!5458257))

(assert (= (and b!5458257 c!953603) b!5458256))

(assert (= (and b!5458257 (not c!953603)) b!5458263))

(assert (= (and b!5458263 c!953601) b!5458258))

(assert (= (and b!5458263 (not c!953601)) b!5458261))

(assert (= (and b!5458258 (not res!2324696)) b!5458264))

(assert (= (and b!5458261 c!953600) b!5458260))

(assert (= (and b!5458261 (not c!953600)) b!5458259))

(assert (= (and b!5458260 (not res!2324695)) b!5458265))

(assert (= (or b!5458265 b!5458259) bm!399228))

(assert (= (or b!5458262 b!5458260) bm!399227))

(assert (=> bm!399227 m!6478000))

(declare-fun m!6479490 () Bool)

(assert (=> b!5458258 m!6479490))

(declare-fun m!6479492 () Bool)

(assert (=> bm!399228 m!6479492))

(declare-fun m!6479494 () Bool)

(assert (=> b!5458264 m!6479494))

(assert (=> b!5456997 d!1737630))

(declare-fun b!5458302 () Bool)

(declare-fun res!2324704 () Bool)

(declare-fun e!3380149 () Bool)

(assert (=> b!5458302 (=> (not res!2324704) (not e!3380149))))

(assert (=> b!5458302 (= res!2324704 (isEmpty!34016 (tail!10784 s!2326)))))

(declare-fun b!5458303 () Bool)

(declare-fun e!3380148 () Bool)

(declare-fun e!3380145 () Bool)

(assert (=> b!5458303 (= e!3380148 e!3380145)))

(declare-fun c!953621 () Bool)

(assert (=> b!5458303 (= c!953621 ((_ is EmptyLang!15285) r!7292))))

(declare-fun b!5458304 () Bool)

(assert (=> b!5458304 (= e!3380149 (= (head!11687 s!2326) (c!953215 r!7292)))))

(declare-fun d!1737634 () Bool)

(assert (=> d!1737634 e!3380148))

(declare-fun c!953619 () Bool)

(assert (=> d!1737634 (= c!953619 ((_ is EmptyExpr!15285) r!7292))))

(declare-fun lt!2228626 () Bool)

(declare-fun e!3380146 () Bool)

(assert (=> d!1737634 (= lt!2228626 e!3380146)))

(declare-fun c!953620 () Bool)

(assert (=> d!1737634 (= c!953620 (isEmpty!34016 s!2326))))

(assert (=> d!1737634 (validRegex!7021 r!7292)))

(assert (=> d!1737634 (= (matchR!7470 r!7292 s!2326) lt!2228626)))

(declare-fun b!5458305 () Bool)

(declare-fun res!2324709 () Bool)

(declare-fun e!3380150 () Bool)

(assert (=> b!5458305 (=> res!2324709 e!3380150)))

(assert (=> b!5458305 (= res!2324709 e!3380149)))

(declare-fun res!2324707 () Bool)

(assert (=> b!5458305 (=> (not res!2324707) (not e!3380149))))

(assert (=> b!5458305 (= res!2324707 lt!2228626)))

(declare-fun b!5458306 () Bool)

(declare-fun e!3380147 () Bool)

(declare-fun e!3380144 () Bool)

(assert (=> b!5458306 (= e!3380147 e!3380144)))

(declare-fun res!2324711 () Bool)

(assert (=> b!5458306 (=> res!2324711 e!3380144)))

(declare-fun call!399234 () Bool)

(assert (=> b!5458306 (= res!2324711 call!399234)))

(declare-fun b!5458307 () Bool)

(declare-fun res!2324708 () Bool)

(assert (=> b!5458307 (=> res!2324708 e!3380144)))

(assert (=> b!5458307 (= res!2324708 (not (isEmpty!34016 (tail!10784 s!2326))))))

(declare-fun b!5458308 () Bool)

(assert (=> b!5458308 (= e!3380146 (nullable!5454 r!7292))))

(declare-fun bm!399229 () Bool)

(assert (=> bm!399229 (= call!399234 (isEmpty!34016 s!2326))))

(declare-fun b!5458309 () Bool)

(assert (=> b!5458309 (= e!3380144 (not (= (head!11687 s!2326) (c!953215 r!7292))))))

(declare-fun b!5458310 () Bool)

(assert (=> b!5458310 (= e!3380145 (not lt!2228626))))

(declare-fun b!5458311 () Bool)

(assert (=> b!5458311 (= e!3380150 e!3380147)))

(declare-fun res!2324710 () Bool)

(assert (=> b!5458311 (=> (not res!2324710) (not e!3380147))))

(assert (=> b!5458311 (= res!2324710 (not lt!2228626))))

(declare-fun b!5458312 () Bool)

(assert (=> b!5458312 (= e!3380148 (= lt!2228626 call!399234))))

(declare-fun b!5458313 () Bool)

(declare-fun res!2324706 () Bool)

(assert (=> b!5458313 (=> (not res!2324706) (not e!3380149))))

(assert (=> b!5458313 (= res!2324706 (not call!399234))))

(declare-fun b!5458314 () Bool)

(declare-fun res!2324705 () Bool)

(assert (=> b!5458314 (=> res!2324705 e!3380150)))

(assert (=> b!5458314 (= res!2324705 (not ((_ is ElementMatch!15285) r!7292)))))

(assert (=> b!5458314 (= e!3380145 e!3380150)))

(declare-fun b!5458315 () Bool)

(assert (=> b!5458315 (= e!3380146 (matchR!7470 (derivativeStep!4306 r!7292 (head!11687 s!2326)) (tail!10784 s!2326)))))

(assert (= (and d!1737634 c!953620) b!5458308))

(assert (= (and d!1737634 (not c!953620)) b!5458315))

(assert (= (and d!1737634 c!953619) b!5458312))

(assert (= (and d!1737634 (not c!953619)) b!5458303))

(assert (= (and b!5458303 c!953621) b!5458310))

(assert (= (and b!5458303 (not c!953621)) b!5458314))

(assert (= (and b!5458314 (not res!2324705)) b!5458305))

(assert (= (and b!5458305 res!2324707) b!5458313))

(assert (= (and b!5458313 res!2324706) b!5458302))

(assert (= (and b!5458302 res!2324704) b!5458304))

(assert (= (and b!5458305 (not res!2324709)) b!5458311))

(assert (= (and b!5458311 res!2324710) b!5458306))

(assert (= (and b!5458306 (not res!2324711)) b!5458307))

(assert (= (and b!5458307 (not res!2324708)) b!5458309))

(assert (= (or b!5458312 b!5458313 b!5458306) bm!399229))

(assert (=> b!5458307 m!6478092))

(assert (=> b!5458307 m!6478092))

(assert (=> b!5458307 m!6478140))

(assert (=> b!5458304 m!6478088))

(declare-fun m!6479500 () Bool)

(assert (=> b!5458308 m!6479500))

(assert (=> b!5458315 m!6478088))

(assert (=> b!5458315 m!6478088))

(declare-fun m!6479502 () Bool)

(assert (=> b!5458315 m!6479502))

(assert (=> b!5458315 m!6478092))

(assert (=> b!5458315 m!6479502))

(assert (=> b!5458315 m!6478092))

(declare-fun m!6479504 () Bool)

(assert (=> b!5458315 m!6479504))

(assert (=> bm!399229 m!6478000))

(assert (=> b!5458309 m!6478088))

(assert (=> d!1737634 m!6478000))

(assert (=> d!1737634 m!6477814))

(assert (=> b!5458302 m!6478092))

(assert (=> b!5458302 m!6478092))

(assert (=> b!5458302 m!6478140))

(assert (=> b!5456997 d!1737634))

(declare-fun d!1737638 () Bool)

(assert (=> d!1737638 (= (matchR!7470 r!7292 s!2326) (matchRSpec!2388 r!7292 s!2326))))

(declare-fun lt!2228627 () Unit!154880)

(assert (=> d!1737638 (= lt!2228627 (choose!41466 r!7292 s!2326))))

(assert (=> d!1737638 (validRegex!7021 r!7292)))

(assert (=> d!1737638 (= (mainMatchTheorem!2388 r!7292 s!2326) lt!2228627)))

(declare-fun bs!1263100 () Bool)

(assert (= bs!1263100 d!1737638))

(assert (=> bs!1263100 m!6477898))

(assert (=> bs!1263100 m!6477896))

(declare-fun m!6479506 () Bool)

(assert (=> bs!1263100 m!6479506))

(assert (=> bs!1263100 m!6477814))

(assert (=> b!5456997 d!1737638))

(declare-fun bs!1263106 () Bool)

(declare-fun d!1737640 () Bool)

(assert (= bs!1263106 (and d!1737640 b!5457434)))

(declare-fun lambda!288991 () Int)

(assert (=> bs!1263106 (not (= lambda!288991 lambda!288906))))

(declare-fun bs!1263108 () Bool)

(assert (= bs!1263108 (and d!1737640 b!5456979)))

(assert (=> bs!1263108 (not (= lambda!288991 lambda!288857))))

(declare-fun bs!1263110 () Bool)

(assert (= bs!1263110 (and d!1737640 b!5457008)))

(assert (=> bs!1263110 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228361)) (= lambda!288991 lambda!288847))))

(declare-fun bs!1263112 () Bool)

(assert (= bs!1263112 (and d!1737640 b!5457132)))

(assert (=> bs!1263112 (not (= lambda!288991 lambda!288875))))

(declare-fun bs!1263113 () Bool)

(assert (= bs!1263113 (and d!1737640 b!5456961)))

(assert (=> bs!1263113 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228185)) (= lambda!288991 lambda!288851))))

(declare-fun bs!1263114 () Bool)

(assert (= bs!1263114 (and d!1737640 b!5456970)))

(assert (=> bs!1263114 (not (= lambda!288991 lambda!288867))))

(declare-fun bs!1263115 () Bool)

(assert (= bs!1263115 (and d!1737640 b!5457639)))

(assert (=> bs!1263115 (not (= lambda!288991 lambda!288926))))

(declare-fun bs!1263117 () Bool)

(assert (= bs!1263117 (and d!1737640 d!1737340)))

(assert (=> bs!1263117 (not (= lambda!288991 lambda!288905))))

(assert (=> bs!1263110 (not (= lambda!288991 lambda!288846))))

(declare-fun bs!1263118 () Bool)

(assert (= bs!1263118 (and d!1737640 d!1737350)))

(assert (=> bs!1263118 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!288991 lambda!288912))))

(declare-fun bs!1263120 () Bool)

(assert (= bs!1263120 (and d!1737640 b!5456966)))

(assert (=> bs!1263120 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) lt!2228350) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288991 lambda!288853))))

(assert (=> bs!1263114 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) Nil!62030) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288991 lambda!288866))))

(assert (=> bs!1263113 (not (= lambda!288991 lambda!288850))))

(declare-fun bs!1263123 () Bool)

(assert (= bs!1263123 (and d!1737640 b!5456993)))

(assert (=> bs!1263123 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (_1!35787 lt!2228245)) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288991 lambda!288863))))

(declare-fun bs!1263124 () Bool)

(assert (= bs!1263124 (and d!1737640 d!1737378)))

(assert (=> bs!1263124 (not (= lambda!288991 lambda!288922))))

(assert (=> bs!1263124 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288991 lambda!288921))))

(declare-fun bs!1263126 () Bool)

(assert (= bs!1263126 (and d!1737640 b!5457428)))

(assert (=> bs!1263126 (not (= lambda!288991 lambda!288907))))

(declare-fun bs!1263127 () Bool)

(assert (= bs!1263127 (and d!1737640 b!5457009)))

(assert (=> bs!1263127 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288991 lambda!288842))))

(assert (=> bs!1263108 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (_1!35787 lt!2228239)) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288991 lambda!288855))))

(assert (=> bs!1263117 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!288991 lambda!288904))))

(assert (=> bs!1263114 (not (= lambda!288991 lambda!288868))))

(declare-fun bs!1263129 () Bool)

(assert (= bs!1263129 (and d!1737640 d!1737326)))

(assert (=> bs!1263129 (= (and (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))))) (= lambda!288991 lambda!288893))))

(assert (=> bs!1263110 (not (= lambda!288991 lambda!288848))))

(declare-fun bs!1263131 () Bool)

(assert (= bs!1263131 (and d!1737640 b!5457138)))

(assert (=> bs!1263131 (not (= lambda!288991 lambda!288874))))

(declare-fun bs!1263132 () Bool)

(assert (= bs!1263132 (and d!1737640 b!5457645)))

(assert (=> bs!1263132 (not (= lambda!288991 lambda!288925))))

(declare-fun bs!1263133 () Bool)

(assert (= bs!1263133 (and d!1737640 b!5458259)))

(assert (=> bs!1263133 (not (= lambda!288991 lambda!288986))))

(assert (=> bs!1263123 (not (= lambda!288991 lambda!288864))))

(assert (=> bs!1263108 (not (= lambda!288991 lambda!288856))))

(assert (=> bs!1263110 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228179)) (= lambda!288991 lambda!288845))))

(assert (=> bs!1263123 (not (= lambda!288991 lambda!288862))))

(declare-fun bs!1263134 () Bool)

(assert (= bs!1263134 (and d!1737640 b!5458176)))

(assert (=> bs!1263134 (not (= lambda!288991 lambda!288979))))

(declare-fun bs!1263135 () Bool)

(assert (= bs!1263135 (and d!1737640 b!5458265)))

(assert (=> bs!1263135 (not (= lambda!288991 lambda!288982))))

(assert (=> bs!1263113 (not (= lambda!288991 lambda!288852))))

(declare-fun bs!1263136 () Bool)

(assert (= bs!1263136 (and d!1737640 d!1737376)))

(assert (=> bs!1263136 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288991 lambda!288919))))

(assert (=> bs!1263123 (not (= lambda!288991 lambda!288865))))

(assert (=> bs!1263113 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228281)) (= lambda!288991 lambda!288849))))

(assert (=> bs!1263127 (not (= lambda!288991 lambda!288843))))

(assert (=> bs!1263118 (not (= lambda!288991 lambda!288913))))

(declare-fun bs!1263141 () Bool)

(assert (= bs!1263141 (and d!1737640 b!5458182)))

(assert (=> bs!1263141 (not (= lambda!288991 lambda!288978))))

(assert (=> bs!1263123 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) lt!2228296) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288991 lambda!288861))))

(assert (=> bs!1263120 (not (= lambda!288991 lambda!288854))))

(assert (=> d!1737640 true))

(assert (=> d!1737640 true))

(assert (=> d!1737640 true))

(declare-fun lambda!288993 () Int)

(assert (=> bs!1263106 (not (= lambda!288993 lambda!288906))))

(assert (=> bs!1263108 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (_1!35787 lt!2228239)) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288993 lambda!288857))))

(assert (=> bs!1263110 (not (= lambda!288993 lambda!288847))))

(assert (=> bs!1263112 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292)))))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 (ite c!953204 lt!2228229 (ite c!953205 lt!2228240 (ite c!953213 (regOne!31082 r!7292) (regTwo!31082 r!7292))))))) (= lambda!288993 lambda!288875))))

(assert (=> bs!1263113 (not (= lambda!288993 lambda!288851))))

(assert (=> bs!1263114 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) Nil!62030) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288993 lambda!288867))))

(assert (=> bs!1263115 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 lt!2228328)) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 lt!2228328))) (= lambda!288993 lambda!288926))))

(assert (=> bs!1263117 (not (= lambda!288993 lambda!288905))))

(assert (=> bs!1263110 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228179)) (= lambda!288993 lambda!288846))))

(assert (=> bs!1263118 (not (= lambda!288993 lambda!288912))))

(assert (=> bs!1263120 (not (= lambda!288993 lambda!288853))))

(assert (=> bs!1263114 (not (= lambda!288993 lambda!288866))))

(assert (=> bs!1263113 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228281)) (= lambda!288993 lambda!288850))))

(assert (=> bs!1263123 (not (= lambda!288993 lambda!288863))))

(assert (=> bs!1263124 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288993 lambda!288922))))

(assert (=> bs!1263124 (not (= lambda!288993 lambda!288921))))

(assert (=> bs!1263126 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280))))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953209 lt!2228281 lt!2228280)))))) (= lambda!288993 lambda!288907))))

(assert (=> bs!1263127 (not (= lambda!288993 lambda!288842))))

(assert (=> bs!1263108 (not (= lambda!288993 lambda!288855))))

(assert (=> bs!1263117 (not (= lambda!288993 lambda!288904))))

(assert (=> bs!1263114 (not (= lambda!288993 lambda!288868))))

(assert (=> bs!1263129 (not (= lambda!288993 lambda!288893))))

(assert (=> bs!1263110 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228361)) (= lambda!288993 lambda!288848))))

(assert (=> bs!1263131 (not (= lambda!288993 lambda!288874))))

(assert (=> bs!1263132 (not (= lambda!288993 lambda!288925))))

(assert (=> bs!1263133 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288993 lambda!288986))))

(assert (=> bs!1263123 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (_1!35787 lt!2228245)) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228350)) (= lambda!288993 lambda!288864))))

(assert (=> bs!1263108 (not (= lambda!288993 lambda!288856))))

(assert (=> bs!1263110 (not (= lambda!288993 lambda!288845))))

(assert (=> bs!1263123 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) lt!2228296) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288993 lambda!288862))))

(declare-fun bs!1263154 () Bool)

(assert (= bs!1263154 d!1737640))

(assert (=> bs!1263154 (not (= lambda!288993 lambda!288991))))

(assert (=> bs!1263134 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030)) s!2326))) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292)))))))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 lt!2228350)) (ite c!953213 (regTwo!31082 r!7292) (regOne!31082 r!7292))))))))) (= lambda!288993 lambda!288979))))

(assert (=> bs!1263135 (not (= lambda!288993 lambda!288982))))

(assert (=> bs!1263113 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) lt!2228185)) (= lambda!288993 lambda!288852))))

(assert (=> bs!1263136 (not (= lambda!288993 lambda!288919))))

(assert (=> bs!1263123 (not (= lambda!288993 lambda!288865))))

(assert (=> bs!1263113 (not (= lambda!288993 lambda!288849))))

(assert (=> bs!1263127 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288993 lambda!288843))))

(assert (=> bs!1263118 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!288993 lambda!288913))))

(assert (=> bs!1263141 (not (= lambda!288993 lambda!288978))))

(assert (=> bs!1263123 (not (= lambda!288993 lambda!288861))))

(assert (=> bs!1263120 (= (and (= (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030) s!2326) (= (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) lt!2228350) (= (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (regTwo!31082 r!7292))) (= lambda!288993 lambda!288854))))

(assert (=> d!1737640 true))

(assert (=> d!1737640 true))

(assert (=> d!1737640 true))

(assert (=> d!1737640 (= (Exists!2466 lambda!288991) (Exists!2466 lambda!288993))))

(declare-fun lt!2228628 () Unit!154880)

(assert (=> d!1737640 (= lt!2228628 (choose!41460 (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)))))

(assert (=> d!1737640 (validRegex!7021 (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))))))

(assert (=> d!1737640 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1120 (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)) lt!2228628)))

(declare-fun m!6479528 () Bool)

(assert (=> bs!1263154 m!6479528))

(declare-fun m!6479530 () Bool)

(assert (=> bs!1263154 m!6479530))

(declare-fun m!6479532 () Bool)

(assert (=> bs!1263154 m!6479532))

(declare-fun m!6479534 () Bool)

(assert (=> bs!1263154 m!6479534))

(assert (=> bm!398961 d!1737640))

(declare-fun d!1737646 () Bool)

(declare-fun e!3380168 () Bool)

(assert (=> d!1737646 e!3380168))

(declare-fun res!2324720 () Bool)

(assert (=> d!1737646 (=> (not res!2324720) (not e!3380168))))

(declare-fun lt!2228631 () List!62156)

(declare-fun noDuplicate!1435 (List!62156) Bool)

(assert (=> d!1737646 (= res!2324720 (noDuplicate!1435 lt!2228631))))

(declare-fun choose!41475 ((InoxSet Context!9338)) List!62156)

(assert (=> d!1737646 (= lt!2228631 (choose!41475 z!1189))))

(assert (=> d!1737646 (= (toList!9069 z!1189) lt!2228631)))

(declare-fun b!5458342 () Bool)

(declare-fun content!11169 (List!62156) (InoxSet Context!9338))

(assert (=> b!5458342 (= e!3380168 (= (content!11169 lt!2228631) z!1189))))

(assert (= (and d!1737646 res!2324720) b!5458342))

(declare-fun m!6479536 () Bool)

(assert (=> d!1737646 m!6479536))

(declare-fun m!6479538 () Bool)

(assert (=> d!1737646 m!6479538))

(declare-fun m!6479540 () Bool)

(assert (=> b!5458342 m!6479540))

(assert (=> b!5456988 d!1737646))

(declare-fun c!953631 () Bool)

(declare-fun d!1737648 () Bool)

(assert (=> d!1737648 (= c!953631 (isEmpty!34016 (ite c!953204 (t!375383 s!2326) (ite (or c!953207 c!953209 (and c!953205 c!953211)) s!2326 (t!375383 s!2326)))))))

(declare-fun e!3380169 () Bool)

(assert (=> d!1737648 (= (matchZipper!1529 (ite c!953204 lt!2228204 (ite (or c!953207 c!953209) z!1189 (ite (and c!953205 c!953211) (ite c!953210 lt!2228242 z!1189) lt!2228186))) (ite c!953204 (t!375383 s!2326) (ite (or c!953207 c!953209 (and c!953205 c!953211)) s!2326 (t!375383 s!2326)))) e!3380169)))

(declare-fun b!5458343 () Bool)

(assert (=> b!5458343 (= e!3380169 (nullableZipper!1485 (ite c!953204 lt!2228204 (ite (or c!953207 c!953209) z!1189 (ite (and c!953205 c!953211) (ite c!953210 lt!2228242 z!1189) lt!2228186)))))))

(declare-fun b!5458344 () Bool)

(assert (=> b!5458344 (= e!3380169 (matchZipper!1529 (derivationStepZipper!1504 (ite c!953204 lt!2228204 (ite (or c!953207 c!953209) z!1189 (ite (and c!953205 c!953211) (ite c!953210 lt!2228242 z!1189) lt!2228186))) (head!11687 (ite c!953204 (t!375383 s!2326) (ite (or c!953207 c!953209 (and c!953205 c!953211)) s!2326 (t!375383 s!2326))))) (tail!10784 (ite c!953204 (t!375383 s!2326) (ite (or c!953207 c!953209 (and c!953205 c!953211)) s!2326 (t!375383 s!2326))))))))

(assert (= (and d!1737648 c!953631) b!5458343))

(assert (= (and d!1737648 (not c!953631)) b!5458344))

(declare-fun m!6479542 () Bool)

(assert (=> d!1737648 m!6479542))

(declare-fun m!6479544 () Bool)

(assert (=> b!5458343 m!6479544))

(declare-fun m!6479546 () Bool)

(assert (=> b!5458344 m!6479546))

(assert (=> b!5458344 m!6479546))

(declare-fun m!6479548 () Bool)

(assert (=> b!5458344 m!6479548))

(declare-fun m!6479550 () Bool)

(assert (=> b!5458344 m!6479550))

(assert (=> b!5458344 m!6479548))

(assert (=> b!5458344 m!6479550))

(declare-fun m!6479552 () Bool)

(assert (=> b!5458344 m!6479552))

(assert (=> bm!398957 d!1737648))

(declare-fun bs!1263172 () Bool)

(declare-fun d!1737650 () Bool)

(assert (= bs!1263172 (and d!1737650 d!1737314)))

(declare-fun lambda!288995 () Int)

(assert (=> bs!1263172 (= lambda!288995 lambda!288890)))

(declare-fun bs!1263173 () Bool)

(assert (= bs!1263173 (and d!1737650 b!5456993)))

(assert (=> bs!1263173 (= lambda!288995 lambda!288860)))

(declare-fun bs!1263174 () Bool)

(assert (= bs!1263174 (and d!1737650 d!1737582)))

(assert (=> bs!1263174 (= lambda!288995 lambda!288954)))

(declare-fun bs!1263175 () Bool)

(assert (= bs!1263175 (and d!1737650 d!1737262)))

(assert (=> bs!1263175 (= lambda!288995 lambda!288878)))

(declare-fun bs!1263176 () Bool)

(assert (= bs!1263176 (and d!1737650 d!1737450)))

(assert (=> bs!1263176 (= lambda!288995 lambda!288930)))

(declare-fun bs!1263177 () Bool)

(assert (= bs!1263177 (and d!1737650 d!1737470)))

(assert (=> bs!1263177 (= lambda!288995 lambda!288931)))

(declare-fun bs!1263178 () Bool)

(assert (= bs!1263178 (and d!1737650 b!5456989)))

(assert (=> bs!1263178 (= lambda!288995 lambda!288869)))

(declare-fun bs!1263179 () Bool)

(assert (= bs!1263179 (and d!1737650 d!1737298)))

(assert (=> bs!1263179 (= lambda!288995 lambda!288887)))

(declare-fun bs!1263180 () Bool)

(assert (= bs!1263180 (and d!1737650 b!5456979)))

(assert (=> bs!1263180 (= lambda!288995 lambda!288858)))

(declare-fun bs!1263181 () Bool)

(assert (= bs!1263181 (and d!1737650 d!1737490)))

(assert (=> bs!1263181 (= lambda!288995 lambda!288939)))

(declare-fun bs!1263182 () Bool)

(assert (= bs!1263182 (and d!1737650 d!1737494)))

(assert (=> bs!1263182 (= lambda!288995 lambda!288942)))

(declare-fun b!5458345 () Bool)

(declare-fun e!3380175 () Bool)

(declare-fun lt!2228632 () Regex!15285)

(assert (=> b!5458345 (= e!3380175 (isConcat!540 lt!2228632))))

(declare-fun e!3380172 () Bool)

(assert (=> d!1737650 e!3380172))

(declare-fun res!2324722 () Bool)

(assert (=> d!1737650 (=> (not res!2324722) (not e!3380172))))

(assert (=> d!1737650 (= res!2324722 (validRegex!7021 lt!2228632))))

(declare-fun e!3380173 () Regex!15285)

(assert (=> d!1737650 (= lt!2228632 e!3380173)))

(declare-fun c!953635 () Bool)

(declare-fun e!3380171 () Bool)

(assert (=> d!1737650 (= c!953635 e!3380171)))

(declare-fun res!2324721 () Bool)

(assert (=> d!1737650 (=> (not res!2324721) (not e!3380171))))

(assert (=> d!1737650 (= res!2324721 ((_ is Cons!62031) (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343))))))))))

(assert (=> d!1737650 (forall!14588 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343)))))) lambda!288995)))

(assert (=> d!1737650 (= (generalisedConcat!954 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343))))))) lt!2228632)))

(declare-fun b!5458346 () Bool)

(declare-fun e!3380174 () Bool)

(assert (=> b!5458346 (= e!3380174 (isEmptyExpr!1017 lt!2228632))))

(declare-fun b!5458347 () Bool)

(assert (=> b!5458347 (= e!3380175 (= lt!2228632 (head!11689 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343)))))))))))

(declare-fun b!5458348 () Bool)

(assert (=> b!5458348 (= e!3380173 (h!68479 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343))))))))))

(declare-fun b!5458349 () Bool)

(declare-fun e!3380170 () Regex!15285)

(assert (=> b!5458349 (= e!3380173 e!3380170)))

(declare-fun c!953632 () Bool)

(assert (=> b!5458349 (= c!953632 ((_ is Cons!62031) (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343))))))))))

(declare-fun b!5458350 () Bool)

(assert (=> b!5458350 (= e!3380174 e!3380175)))

(declare-fun c!953634 () Bool)

(assert (=> b!5458350 (= c!953634 (isEmpty!34017 (tail!10786 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343)))))))))))

(declare-fun b!5458351 () Bool)

(assert (=> b!5458351 (= e!3380171 (isEmpty!34017 (t!375384 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343)))))))))))

(declare-fun b!5458352 () Bool)

(assert (=> b!5458352 (= e!3380170 (Concat!24130 (h!68479 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343))))))) (generalisedConcat!954 (t!375384 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343))))))))))))

(declare-fun b!5458353 () Bool)

(assert (=> b!5458353 (= e!3380172 e!3380174)))

(declare-fun c!953633 () Bool)

(assert (=> b!5458353 (= c!953633 (isEmpty!34017 (ite c!953203 (t!375384 (exprs!5169 (h!68480 zl!343))) (ite c!953207 lt!2228358 (ite c!953209 lt!2228176 (t!375384 (exprs!5169 (h!68480 zl!343))))))))))

(declare-fun b!5458354 () Bool)

(assert (=> b!5458354 (= e!3380170 EmptyExpr!15285)))

(assert (= (and d!1737650 res!2324721) b!5458351))

(assert (= (and d!1737650 c!953635) b!5458348))

(assert (= (and d!1737650 (not c!953635)) b!5458349))

(assert (= (and b!5458349 c!953632) b!5458352))

(assert (= (and b!5458349 (not c!953632)) b!5458354))

(assert (= (and d!1737650 res!2324722) b!5458353))

(assert (= (and b!5458353 c!953633) b!5458346))

(assert (= (and b!5458353 (not c!953633)) b!5458350))

(assert (= (and b!5458350 c!953634) b!5458347))

(assert (= (and b!5458350 (not c!953634)) b!5458345))

(declare-fun m!6479554 () Bool)

(assert (=> b!5458350 m!6479554))

(assert (=> b!5458350 m!6479554))

(declare-fun m!6479556 () Bool)

(assert (=> b!5458350 m!6479556))

(declare-fun m!6479558 () Bool)

(assert (=> b!5458352 m!6479558))

(declare-fun m!6479560 () Bool)

(assert (=> d!1737650 m!6479560))

(declare-fun m!6479562 () Bool)

(assert (=> d!1737650 m!6479562))

(declare-fun m!6479564 () Bool)

(assert (=> b!5458353 m!6479564))

(declare-fun m!6479566 () Bool)

(assert (=> b!5458345 m!6479566))

(declare-fun m!6479568 () Bool)

(assert (=> b!5458346 m!6479568))

(declare-fun m!6479570 () Bool)

(assert (=> b!5458347 m!6479570))

(declare-fun m!6479572 () Bool)

(assert (=> b!5458351 m!6479572))

(assert (=> bm!398991 d!1737650))

(declare-fun bs!1263190 () Bool)

(declare-fun d!1737652 () Bool)

(assert (= bs!1263190 (and d!1737652 b!5456993)))

(declare-fun lambda!288997 () Int)

(assert (=> bs!1263190 (= lambda!288997 lambda!288860)))

(declare-fun bs!1263191 () Bool)

(assert (= bs!1263191 (and d!1737652 d!1737582)))

(assert (=> bs!1263191 (= lambda!288997 lambda!288954)))

(declare-fun bs!1263192 () Bool)

(assert (= bs!1263192 (and d!1737652 d!1737262)))

(assert (=> bs!1263192 (= lambda!288997 lambda!288878)))

(declare-fun bs!1263194 () Bool)

(assert (= bs!1263194 (and d!1737652 d!1737450)))

(assert (=> bs!1263194 (= lambda!288997 lambda!288930)))

(declare-fun bs!1263195 () Bool)

(assert (= bs!1263195 (and d!1737652 d!1737470)))

(assert (=> bs!1263195 (= lambda!288997 lambda!288931)))

(declare-fun bs!1263196 () Bool)

(assert (= bs!1263196 (and d!1737652 b!5456989)))

(assert (=> bs!1263196 (= lambda!288997 lambda!288869)))

(declare-fun bs!1263197 () Bool)

(assert (= bs!1263197 (and d!1737652 d!1737298)))

(assert (=> bs!1263197 (= lambda!288997 lambda!288887)))

(declare-fun bs!1263199 () Bool)

(assert (= bs!1263199 (and d!1737652 d!1737650)))

(assert (=> bs!1263199 (= lambda!288997 lambda!288995)))

(declare-fun bs!1263201 () Bool)

(assert (= bs!1263201 (and d!1737652 d!1737314)))

(assert (=> bs!1263201 (= lambda!288997 lambda!288890)))

(declare-fun bs!1263202 () Bool)

(assert (= bs!1263202 (and d!1737652 b!5456979)))

(assert (=> bs!1263202 (= lambda!288997 lambda!288858)))

(declare-fun bs!1263203 () Bool)

(assert (= bs!1263203 (and d!1737652 d!1737490)))

(assert (=> bs!1263203 (= lambda!288997 lambda!288939)))

(declare-fun bs!1263205 () Bool)

(assert (= bs!1263205 (and d!1737652 d!1737494)))

(assert (=> bs!1263205 (= lambda!288997 lambda!288942)))

(assert (=> d!1737652 (= (inv!81459 setElem!35707) (forall!14588 (exprs!5169 setElem!35707) lambda!288997))))

(declare-fun bs!1263206 () Bool)

(assert (= bs!1263206 d!1737652))

(declare-fun m!6479574 () Bool)

(assert (=> bs!1263206 m!6479574))

(assert (=> setNonEmpty!35707 d!1737652))

(declare-fun d!1737654 () Bool)

(assert (=> d!1737654 (= (matchR!7470 (ite c!953203 lt!2228197 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953211 lt!2228257 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207) s!2326 (ite c!953211 lt!2228180 (_1!35787 lt!2228230))))) (matchZipper!1529 (ite c!953203 lt!2228203 (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953211 lt!2228173 lt!2228279)))) (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207) s!2326 (ite c!953211 lt!2228180 (_1!35787 lt!2228230))))))))

(declare-fun lt!2228633 () Unit!154880)

(assert (=> d!1737654 (= lt!2228633 (choose!41474 (ite c!953203 lt!2228203 (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953211 lt!2228173 lt!2228279)))) (ite c!953203 (Cons!62032 lt!2228337 Nil!62032) (ite c!953204 (Cons!62032 lt!2228258 Nil!62032) (ite c!953207 (Cons!62032 lt!2228253 Nil!62032) (ite c!953211 (Cons!62032 lt!2228309 Nil!62032) (Cons!62032 lt!2228345 Nil!62032))))) (ite c!953203 lt!2228197 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953211 lt!2228257 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207) s!2326 (ite c!953211 lt!2228180 (_1!35787 lt!2228230))))))))

(assert (=> d!1737654 (validRegex!7021 (ite c!953203 lt!2228197 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953211 lt!2228257 (reg!15614 (regOne!31082 r!7292)))))))))

(assert (=> d!1737654 (= (theoremZipperRegexEquiv!565 (ite c!953203 lt!2228203 (ite c!953204 lt!2228199 (ite c!953207 lt!2228313 (ite c!953211 lt!2228173 lt!2228279)))) (ite c!953203 (Cons!62032 lt!2228337 Nil!62032) (ite c!953204 (Cons!62032 lt!2228258 Nil!62032) (ite c!953207 (Cons!62032 lt!2228253 Nil!62032) (ite c!953211 (Cons!62032 lt!2228309 Nil!62032) (Cons!62032 lt!2228345 Nil!62032))))) (ite c!953203 lt!2228197 (ite c!953204 lt!2228362 (ite c!953207 lt!2228206 (ite c!953211 lt!2228257 (reg!15614 (regOne!31082 r!7292)))))) (ite c!953203 (t!375383 s!2326) (ite (or c!953204 c!953207) s!2326 (ite c!953211 lt!2228180 (_1!35787 lt!2228230))))) lt!2228633)))

(declare-fun bs!1263212 () Bool)

(assert (= bs!1263212 d!1737654))

(declare-fun m!6479576 () Bool)

(assert (=> bs!1263212 m!6479576))

(declare-fun m!6479578 () Bool)

(assert (=> bs!1263212 m!6479578))

(declare-fun m!6479580 () Bool)

(assert (=> bs!1263212 m!6479580))

(declare-fun m!6479582 () Bool)

(assert (=> bs!1263212 m!6479582))

(assert (=> bm!398894 d!1737654))

(declare-fun d!1737656 () Bool)

(declare-fun c!953636 () Bool)

(assert (=> d!1737656 (= c!953636 (isEmpty!34016 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite (or c!953209 c!953205) s!2326 (t!375383 s!2326)))))))

(declare-fun e!3380176 () Bool)

(assert (=> d!1737656 (= (matchZipper!1529 (ite c!953204 ((_ map or) lt!2228272 lt!2228166) (ite c!953207 ((_ map or) lt!2228212 lt!2228315) (ite c!953209 lt!2228160 (ite c!953205 z!1189 ((_ map or) lt!2228186 lt!2228166))))) (ite (or c!953204 c!953207) (t!375383 s!2326) (ite (or c!953209 c!953205) s!2326 (t!375383 s!2326)))) e!3380176)))

(declare-fun b!5458355 () Bool)

(assert (=> b!5458355 (= e!3380176 (nullableZipper!1485 (ite c!953204 ((_ map or) lt!2228272 lt!2228166) (ite c!953207 ((_ map or) lt!2228212 lt!2228315) (ite c!953209 lt!2228160 (ite c!953205 z!1189 ((_ map or) lt!2228186 lt!2228166)))))))))

(declare-fun b!5458356 () Bool)

(assert (=> b!5458356 (= e!3380176 (matchZipper!1529 (derivationStepZipper!1504 (ite c!953204 ((_ map or) lt!2228272 lt!2228166) (ite c!953207 ((_ map or) lt!2228212 lt!2228315) (ite c!953209 lt!2228160 (ite c!953205 z!1189 ((_ map or) lt!2228186 lt!2228166))))) (head!11687 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite (or c!953209 c!953205) s!2326 (t!375383 s!2326))))) (tail!10784 (ite (or c!953204 c!953207) (t!375383 s!2326) (ite (or c!953209 c!953205) s!2326 (t!375383 s!2326))))))))

(assert (= (and d!1737656 c!953636) b!5458355))

(assert (= (and d!1737656 (not c!953636)) b!5458356))

(declare-fun m!6479584 () Bool)

(assert (=> d!1737656 m!6479584))

(declare-fun m!6479586 () Bool)

(assert (=> b!5458355 m!6479586))

(declare-fun m!6479588 () Bool)

(assert (=> b!5458356 m!6479588))

(assert (=> b!5458356 m!6479588))

(declare-fun m!6479590 () Bool)

(assert (=> b!5458356 m!6479590))

(declare-fun m!6479592 () Bool)

(assert (=> b!5458356 m!6479592))

(assert (=> b!5458356 m!6479590))

(assert (=> b!5458356 m!6479592))

(declare-fun m!6479594 () Bool)

(assert (=> b!5458356 m!6479594))

(assert (=> bm!398995 d!1737656))

(declare-fun d!1737658 () Bool)

(declare-fun c!953637 () Bool)

(assert (=> d!1737658 (= c!953637 (isEmpty!34016 (t!375383 s!2326)))))

(declare-fun e!3380177 () Bool)

(assert (=> d!1737658 (= (matchZipper!1529 lt!2228166 (t!375383 s!2326)) e!3380177)))

(declare-fun b!5458357 () Bool)

(assert (=> b!5458357 (= e!3380177 (nullableZipper!1485 lt!2228166))))

(declare-fun b!5458358 () Bool)

(assert (=> b!5458358 (= e!3380177 (matchZipper!1529 (derivationStepZipper!1504 lt!2228166 (head!11687 (t!375383 s!2326))) (tail!10784 (t!375383 s!2326))))))

(assert (= (and d!1737658 c!953637) b!5458357))

(assert (= (and d!1737658 (not c!953637)) b!5458358))

(assert (=> d!1737658 m!6478102))

(declare-fun m!6479596 () Bool)

(assert (=> b!5458357 m!6479596))

(assert (=> b!5458358 m!6478106))

(assert (=> b!5458358 m!6478106))

(declare-fun m!6479598 () Bool)

(assert (=> b!5458358 m!6479598))

(assert (=> b!5458358 m!6478110))

(assert (=> b!5458358 m!6479598))

(assert (=> b!5458358 m!6478110))

(declare-fun m!6479600 () Bool)

(assert (=> b!5458358 m!6479600))

(assert (=> b!5456946 d!1737658))

(declare-fun d!1737660 () Bool)

(assert (=> d!1737660 (= (matchR!7470 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228283 (reg!15614 (regOne!31082 r!7292))) (ite c!953206 lt!2228257 lt!2228201)) lt!2228208)))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326))) (matchZipper!1529 (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 (ite c!953209 lt!2228160 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228242 lt!2228279) (ite c!953206 lt!2228173 lt!2228168)) lt!2228191)))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326))))))

(declare-fun lt!2228634 () Unit!154880)

(assert (=> d!1737660 (= lt!2228634 (choose!41474 (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 (ite c!953209 lt!2228160 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228242 lt!2228279) (ite c!953206 lt!2228173 lt!2228168)) lt!2228191)))) (ite c!953204 (Cons!62032 lt!2228177 Nil!62032) (ite c!953207 (Cons!62032 lt!2228338 Nil!62032) (ite c!953209 (Cons!62032 lt!2228214 Nil!62032) (ite c!953205 (ite c!953211 (ite c!953210 (Cons!62032 lt!2228337 Nil!62032) (Cons!62032 lt!2228345 Nil!62032)) (ite c!953206 (Cons!62032 lt!2228309 Nil!62032) (Cons!62032 lt!2228337 Nil!62032))) (Cons!62032 lt!2228337 Nil!62032))))) (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228283 (reg!15614 (regOne!31082 r!7292))) (ite c!953206 lt!2228257 lt!2228201)) lt!2228208)))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326))))))

(assert (=> d!1737660 (validRegex!7021 (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228283 (reg!15614 (regOne!31082 r!7292))) (ite c!953206 lt!2228257 lt!2228201)) lt!2228208)))))))

(assert (=> d!1737660 (= (theoremZipperRegexEquiv!565 (ite c!953204 lt!2228321 (ite c!953207 lt!2228252 (ite c!953209 lt!2228160 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228242 lt!2228279) (ite c!953206 lt!2228173 lt!2228168)) lt!2228191)))) (ite c!953204 (Cons!62032 lt!2228177 Nil!62032) (ite c!953207 (Cons!62032 lt!2228338 Nil!62032) (ite c!953209 (Cons!62032 lt!2228214 Nil!62032) (ite c!953205 (ite c!953211 (ite c!953210 (Cons!62032 lt!2228337 Nil!62032) (Cons!62032 lt!2228345 Nil!62032)) (ite c!953206 (Cons!62032 lt!2228309 Nil!62032) (Cons!62032 lt!2228337 Nil!62032))) (Cons!62032 lt!2228337 Nil!62032))))) (ite c!953204 lt!2228205 (ite c!953207 lt!2228179 (ite c!953209 lt!2228359 (ite c!953205 (ite c!953211 (ite c!953210 lt!2228283 (reg!15614 (regOne!31082 r!7292))) (ite c!953206 lt!2228257 lt!2228201)) lt!2228208)))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite c!953205 (ite c!953211 (ite c!953210 s!2326 (_1!35787 lt!2228360)) (ite c!953206 (_2!35787 lt!2228230) s!2326)) s!2326))) lt!2228634)))

(declare-fun bs!1263215 () Bool)

(assert (= bs!1263215 d!1737660))

(declare-fun m!6479608 () Bool)

(assert (=> bs!1263215 m!6479608))

(declare-fun m!6479610 () Bool)

(assert (=> bs!1263215 m!6479610))

(declare-fun m!6479612 () Bool)

(assert (=> bs!1263215 m!6479612))

(declare-fun m!6479614 () Bool)

(assert (=> bs!1263215 m!6479614))

(assert (=> bm!398946 d!1737660))

(declare-fun d!1737664 () Bool)

(assert (=> d!1737664 (not (matchZipper!1529 lt!2228186 (t!375383 s!2326)))))

(declare-fun lt!2228642 () Unit!154880)

(declare-fun choose!41476 ((InoxSet Context!9338) List!62154) Unit!154880)

(assert (=> d!1737664 (= lt!2228642 (choose!41476 lt!2228186 (t!375383 s!2326)))))

(assert (=> d!1737664 (= lt!2228186 ((as const (Array Context!9338 Bool)) false))))

(assert (=> d!1737664 (= (lemmaEmptyZipperMatchesNothing!40 lt!2228186 (t!375383 s!2326)) lt!2228642)))

(declare-fun bs!1263217 () Bool)

(assert (= bs!1263217 d!1737664))

(assert (=> bs!1263217 m!6477676))

(declare-fun m!6479656 () Bool)

(assert (=> bs!1263217 m!6479656))

(assert (=> bm!398866 d!1737664))

(declare-fun b!5458384 () Bool)

(declare-fun e!3380195 () Option!15396)

(assert (=> b!5458384 (= e!3380195 None!15395)))

(declare-fun b!5458385 () Bool)

(declare-fun e!3380191 () Option!15396)

(assert (=> b!5458385 (= e!3380191 e!3380195)))

(declare-fun c!953645 () Bool)

(assert (=> b!5458385 (= c!953645 ((_ is Nil!62030) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))))))

(declare-fun b!5458386 () Bool)

(declare-fun lt!2228645 () Unit!154880)

(declare-fun lt!2228644 () Unit!154880)

(assert (=> b!5458386 (= lt!2228645 lt!2228644)))

(assert (=> b!5458386 (= (++!13649 (++!13649 Nil!62030 (Cons!62030 (h!68478 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))) Nil!62030)) (t!375383 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030))))) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030))))))

(assert (=> b!5458386 (= lt!2228644 (lemmaMoveElementToOtherListKeepsConcatEq!1880 Nil!62030 (h!68478 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))) (t!375383 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))))))

(assert (=> b!5458386 (= e!3380195 (findConcatSeparation!1810 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite c!953211 lt!2228350 (ite c!953206 (regTwo!31082 r!7292) lt!2228350)))) (++!13649 Nil!62030 (Cons!62030 (h!68478 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))) Nil!62030)) (t!375383 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))))))

(declare-fun lt!2228646 () Option!15396)

(declare-fun b!5458387 () Bool)

(declare-fun e!3380194 () Bool)

(assert (=> b!5458387 (= e!3380194 (= (++!13649 (_1!35787 (get!21392 lt!2228646)) (_2!35787 (get!21392 lt!2228646))) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))))))

(declare-fun b!5458388 () Bool)

(declare-fun res!2324736 () Bool)

(assert (=> b!5458388 (=> (not res!2324736) (not e!3380194))))

(assert (=> b!5458388 (= res!2324736 (matchR!7470 (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite c!953211 lt!2228350 (ite c!953206 (regTwo!31082 r!7292) lt!2228350)))) (_2!35787 (get!21392 lt!2228646))))))

(declare-fun d!1737676 () Bool)

(declare-fun e!3380192 () Bool)

(assert (=> d!1737676 e!3380192))

(declare-fun res!2324738 () Bool)

(assert (=> d!1737676 (=> res!2324738 e!3380192)))

(assert (=> d!1737676 (= res!2324738 e!3380194)))

(declare-fun res!2324737 () Bool)

(assert (=> d!1737676 (=> (not res!2324737) (not e!3380194))))

(assert (=> d!1737676 (= res!2324737 (isDefined!12099 lt!2228646))))

(assert (=> d!1737676 (= lt!2228646 e!3380191)))

(declare-fun c!953644 () Bool)

(declare-fun e!3380193 () Bool)

(assert (=> d!1737676 (= c!953644 e!3380193)))

(declare-fun res!2324739 () Bool)

(assert (=> d!1737676 (=> (not res!2324739) (not e!3380193))))

(assert (=> d!1737676 (= res!2324739 (matchR!7470 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) Nil!62030))))

(assert (=> d!1737676 (validRegex!7021 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))))))

(assert (=> d!1737676 (= (findConcatSeparation!1810 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite c!953211 lt!2228350 (ite c!953206 (regTwo!31082 r!7292) lt!2228350)))) Nil!62030 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030))) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))) lt!2228646)))

(declare-fun b!5458389 () Bool)

(assert (=> b!5458389 (= e!3380193 (matchR!7470 (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite c!953211 lt!2228350 (ite c!953206 (regTwo!31082 r!7292) lt!2228350)))) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030)))))))

(declare-fun b!5458390 () Bool)

(assert (=> b!5458390 (= e!3380191 (Some!15395 (tuple2!64969 Nil!62030 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 s!2326 Nil!62030))))))))

(declare-fun b!5458391 () Bool)

(assert (=> b!5458391 (= e!3380192 (not (isDefined!12099 lt!2228646)))))

(declare-fun b!5458392 () Bool)

(declare-fun res!2324740 () Bool)

(assert (=> b!5458392 (=> (not res!2324740) (not e!3380194))))

(assert (=> b!5458392 (= res!2324740 (matchR!7470 (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 (reg!15614 (regOne!31082 r!7292)) (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))) (_1!35787 (get!21392 lt!2228646))))))

(assert (= (and d!1737676 res!2324739) b!5458389))

(assert (= (and d!1737676 c!953644) b!5458390))

(assert (= (and d!1737676 (not c!953644)) b!5458385))

(assert (= (and b!5458385 c!953645) b!5458384))

(assert (= (and b!5458385 (not c!953645)) b!5458386))

(assert (= (and d!1737676 res!2324737) b!5458392))

(assert (= (and b!5458392 res!2324740) b!5458388))

(assert (= (and b!5458388 res!2324736) b!5458387))

(assert (= (and d!1737676 (not res!2324738)) b!5458391))

(declare-fun m!6479660 () Bool)

(assert (=> b!5458392 m!6479660))

(declare-fun m!6479662 () Bool)

(assert (=> b!5458392 m!6479662))

(declare-fun m!6479664 () Bool)

(assert (=> b!5458389 m!6479664))

(assert (=> b!5458387 m!6479660))

(declare-fun m!6479666 () Bool)

(assert (=> b!5458387 m!6479666))

(declare-fun m!6479668 () Bool)

(assert (=> b!5458391 m!6479668))

(assert (=> d!1737676 m!6479668))

(declare-fun m!6479670 () Bool)

(assert (=> d!1737676 m!6479670))

(declare-fun m!6479672 () Bool)

(assert (=> d!1737676 m!6479672))

(declare-fun m!6479674 () Bool)

(assert (=> b!5458386 m!6479674))

(assert (=> b!5458386 m!6479674))

(declare-fun m!6479676 () Bool)

(assert (=> b!5458386 m!6479676))

(declare-fun m!6479678 () Bool)

(assert (=> b!5458386 m!6479678))

(assert (=> b!5458386 m!6479674))

(declare-fun m!6479680 () Bool)

(assert (=> b!5458386 m!6479680))

(assert (=> b!5458388 m!6479660))

(declare-fun m!6479682 () Bool)

(assert (=> b!5458388 m!6479682))

(assert (=> bm!398898 d!1737676))

(declare-fun b!5458393 () Bool)

(declare-fun e!3380198 () (InoxSet Context!9338))

(declare-fun call!399240 () (InoxSet Context!9338))

(assert (=> b!5458393 (= e!3380198 call!399240)))

(declare-fun b!5458394 () Bool)

(declare-fun e!3380197 () (InoxSet Context!9338))

(assert (=> b!5458394 (= e!3380197 e!3380198)))

(declare-fun c!953647 () Bool)

(assert (=> b!5458394 (= c!953647 ((_ is Cons!62031) (exprs!5169 (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 (ite c!953205 lt!2228345 lt!2228337))))))))

(declare-fun b!5458395 () Bool)

(assert (=> b!5458395 (= e!3380197 ((_ map or) call!399240 (derivationStepZipperUp!657 (Context!9339 (t!375384 (exprs!5169 (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 (ite c!953205 lt!2228345 lt!2228337)))))) (h!68478 s!2326))))))

(declare-fun b!5458396 () Bool)

(declare-fun e!3380196 () Bool)

(assert (=> b!5458396 (= e!3380196 (nullable!5454 (h!68479 (exprs!5169 (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 (ite c!953205 lt!2228345 lt!2228337)))))))))

(declare-fun b!5458397 () Bool)

(assert (=> b!5458397 (= e!3380198 ((as const (Array Context!9338 Bool)) false))))

(declare-fun d!1737680 () Bool)

(declare-fun c!953646 () Bool)

(assert (=> d!1737680 (= c!953646 e!3380196)))

(declare-fun res!2324741 () Bool)

(assert (=> d!1737680 (=> (not res!2324741) (not e!3380196))))

(assert (=> d!1737680 (= res!2324741 ((_ is Cons!62031) (exprs!5169 (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 (ite c!953205 lt!2228345 lt!2228337))))))))

(assert (=> d!1737680 (= (derivationStepZipperUp!657 (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 (ite c!953205 lt!2228345 lt!2228337))) (h!68478 s!2326)) e!3380197)))

(declare-fun bm!399235 () Bool)

(assert (=> bm!399235 (= call!399240 (derivationStepZipperDown!733 (h!68479 (exprs!5169 (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 (ite c!953205 lt!2228345 lt!2228337))))) (Context!9339 (t!375384 (exprs!5169 (ite c!953204 lt!2228177 (ite c!953207 lt!2228338 (ite c!953205 lt!2228345 lt!2228337)))))) (h!68478 s!2326)))))

(assert (= (and d!1737680 res!2324741) b!5458396))

(assert (= (and d!1737680 c!953646) b!5458395))

(assert (= (and d!1737680 (not c!953646)) b!5458394))

(assert (= (and b!5458394 c!953647) b!5458393))

(assert (= (and b!5458394 (not c!953647)) b!5458397))

(assert (= (or b!5458395 b!5458393) bm!399235))

(declare-fun m!6479684 () Bool)

(assert (=> b!5458395 m!6479684))

(declare-fun m!6479686 () Bool)

(assert (=> b!5458396 m!6479686))

(declare-fun m!6479688 () Bool)

(assert (=> bm!399235 m!6479688))

(assert (=> bm!398915 d!1737680))

(declare-fun b!5458398 () Bool)

(declare-fun res!2324742 () Bool)

(declare-fun e!3380204 () Bool)

(assert (=> b!5458398 (=> (not res!2324742) (not e!3380204))))

(assert (=> b!5458398 (= res!2324742 (isEmpty!34016 (tail!10784 (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326)))))))

(declare-fun b!5458399 () Bool)

(declare-fun e!3380203 () Bool)

(declare-fun e!3380200 () Bool)

(assert (=> b!5458399 (= e!3380203 e!3380200)))

(declare-fun c!953650 () Bool)

(assert (=> b!5458399 (= c!953650 ((_ is EmptyLang!15285) (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292)))))))))

(declare-fun b!5458400 () Bool)

(assert (=> b!5458400 (= e!3380204 (= (head!11687 (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326))) (c!953215 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292))))))))))

(declare-fun d!1737682 () Bool)

(assert (=> d!1737682 e!3380203))

(declare-fun c!953648 () Bool)

(assert (=> d!1737682 (= c!953648 ((_ is EmptyExpr!15285) (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292)))))))))

(declare-fun lt!2228647 () Bool)

(declare-fun e!3380201 () Bool)

(assert (=> d!1737682 (= lt!2228647 e!3380201)))

(declare-fun c!953649 () Bool)

(assert (=> d!1737682 (= c!953649 (isEmpty!34016 (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326))))))

(assert (=> d!1737682 (validRegex!7021 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292))))))))

(assert (=> d!1737682 (= (matchR!7470 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292))))) (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326))) lt!2228647)))

(declare-fun b!5458401 () Bool)

(declare-fun res!2324747 () Bool)

(declare-fun e!3380205 () Bool)

(assert (=> b!5458401 (=> res!2324747 e!3380205)))

(assert (=> b!5458401 (= res!2324747 e!3380204)))

(declare-fun res!2324745 () Bool)

(assert (=> b!5458401 (=> (not res!2324745) (not e!3380204))))

(assert (=> b!5458401 (= res!2324745 lt!2228647)))

(declare-fun b!5458402 () Bool)

(declare-fun e!3380202 () Bool)

(declare-fun e!3380199 () Bool)

(assert (=> b!5458402 (= e!3380202 e!3380199)))

(declare-fun res!2324749 () Bool)

(assert (=> b!5458402 (=> res!2324749 e!3380199)))

(declare-fun call!399241 () Bool)

(assert (=> b!5458402 (= res!2324749 call!399241)))

(declare-fun b!5458403 () Bool)

(declare-fun res!2324746 () Bool)

(assert (=> b!5458403 (=> res!2324746 e!3380199)))

(assert (=> b!5458403 (= res!2324746 (not (isEmpty!34016 (tail!10784 (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326))))))))

(declare-fun b!5458404 () Bool)

(assert (=> b!5458404 (= e!3380201 (nullable!5454 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292)))))))))

(declare-fun bm!399236 () Bool)

(assert (=> bm!399236 (= call!399241 (isEmpty!34016 (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326))))))

(declare-fun b!5458405 () Bool)

(assert (=> b!5458405 (= e!3380199 (not (= (head!11687 (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326))) (c!953215 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292)))))))))))

(declare-fun b!5458406 () Bool)

(assert (=> b!5458406 (= e!3380200 (not lt!2228647))))

(declare-fun b!5458407 () Bool)

(assert (=> b!5458407 (= e!3380205 e!3380202)))

(declare-fun res!2324748 () Bool)

(assert (=> b!5458407 (=> (not res!2324748) (not e!3380202))))

(assert (=> b!5458407 (= res!2324748 (not lt!2228647))))

(declare-fun b!5458408 () Bool)

(assert (=> b!5458408 (= e!3380203 (= lt!2228647 call!399241))))

(declare-fun b!5458409 () Bool)

(declare-fun res!2324744 () Bool)

(assert (=> b!5458409 (=> (not res!2324744) (not e!3380204))))

(assert (=> b!5458409 (= res!2324744 (not call!399241))))

(declare-fun b!5458410 () Bool)

(declare-fun res!2324743 () Bool)

(assert (=> b!5458410 (=> res!2324743 e!3380205)))

(assert (=> b!5458410 (= res!2324743 (not ((_ is ElementMatch!15285) (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292))))))))))

(assert (=> b!5458410 (= e!3380200 e!3380205)))

(declare-fun b!5458411 () Bool)

(assert (=> b!5458411 (= e!3380201 (matchR!7470 (derivativeStep!4306 (ite c!953204 lt!2228328 (ite c!953207 lt!2228206 (ite c!953209 (Concat!24130 (regOne!31082 r!7292) lt!2228185) (ite c!953205 (ite c!953211 lt!2228350 lt!2228240) (regTwo!31082 r!7292))))) (head!11687 (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326)))) (tail!10784 (ite (or c!953204 c!953207 c!953209) s!2326 (ite (and c!953205 c!953211) lt!2228246 s!2326)))))))

(assert (= (and d!1737682 c!953649) b!5458404))

(assert (= (and d!1737682 (not c!953649)) b!5458411))

(assert (= (and d!1737682 c!953648) b!5458408))

(assert (= (and d!1737682 (not c!953648)) b!5458399))

(assert (= (and b!5458399 c!953650) b!5458406))

(assert (= (and b!5458399 (not c!953650)) b!5458410))

(assert (= (and b!5458410 (not res!2324743)) b!5458401))

(assert (= (and b!5458401 res!2324745) b!5458409))

(assert (= (and b!5458409 res!2324744) b!5458398))

(assert (= (and b!5458398 res!2324742) b!5458400))

(assert (= (and b!5458401 (not res!2324747)) b!5458407))

(assert (= (and b!5458407 res!2324748) b!5458402))

(assert (= (and b!5458402 (not res!2324749)) b!5458403))

(assert (= (and b!5458403 (not res!2324746)) b!5458405))

(assert (= (or b!5458408 b!5458409 b!5458402) bm!399236))

(declare-fun m!6479690 () Bool)

(assert (=> b!5458403 m!6479690))

(assert (=> b!5458403 m!6479690))

(declare-fun m!6479692 () Bool)

(assert (=> b!5458403 m!6479692))

(declare-fun m!6479694 () Bool)

(assert (=> b!5458400 m!6479694))

(declare-fun m!6479696 () Bool)

(assert (=> b!5458404 m!6479696))

(assert (=> b!5458411 m!6479694))

(assert (=> b!5458411 m!6479694))

(declare-fun m!6479698 () Bool)

(assert (=> b!5458411 m!6479698))

(assert (=> b!5458411 m!6479690))

(assert (=> b!5458411 m!6479698))

(assert (=> b!5458411 m!6479690))

(declare-fun m!6479700 () Bool)

(assert (=> b!5458411 m!6479700))

(declare-fun m!6479702 () Bool)

(assert (=> bm!399236 m!6479702))

(assert (=> b!5458405 m!6479694))

(assert (=> d!1737682 m!6479702))

(declare-fun m!6479704 () Bool)

(assert (=> d!1737682 m!6479704))

(assert (=> b!5458398 m!6479690))

(assert (=> b!5458398 m!6479690))

(assert (=> b!5458398 m!6479692))

(assert (=> bm!398951 d!1737682))

(assert (=> bm!398985 d!1737482))

(declare-fun d!1737684 () Bool)

(assert (=> d!1737684 (= (flatMap!1012 (ite c!953205 (ite c!953211 lt!2228242 lt!2228168) lt!2228191) (ite c!953205 (ite c!953211 lambda!288844 lambda!288844) lambda!288844)) (choose!41446 (ite c!953205 (ite c!953211 lt!2228242 lt!2228168) lt!2228191) (ite c!953205 (ite c!953211 lambda!288844 lambda!288844) lambda!288844)))))

(declare-fun bs!1263239 () Bool)

(assert (= bs!1263239 d!1737684))

(declare-fun m!6479706 () Bool)

(assert (=> bs!1263239 m!6479706))

(assert (=> bm!398868 d!1737684))

(declare-fun d!1737686 () Bool)

(assert (=> d!1737686 (= (Exists!2466 (ite c!953207 lambda!288846 (ite c!953209 lambda!288850 (ite c!953211 lambda!288854 (ite c!953206 lambda!288863 lambda!288868))))) (choose!41451 (ite c!953207 lambda!288846 (ite c!953209 lambda!288850 (ite c!953211 lambda!288854 (ite c!953206 lambda!288863 lambda!288868))))))))

(declare-fun bs!1263241 () Bool)

(assert (= bs!1263241 d!1737686))

(declare-fun m!6479712 () Bool)

(assert (=> bs!1263241 m!6479712))

(assert (=> bm!398917 d!1737686))

(declare-fun bs!1263245 () Bool)

(declare-fun d!1737688 () Bool)

(assert (= bs!1263245 (and d!1737688 b!5457434)))

(declare-fun lambda!289000 () Int)

(assert (=> bs!1263245 (not (= lambda!289000 lambda!288906))))

(declare-fun bs!1263247 () Bool)

(assert (= bs!1263247 (and d!1737688 b!5456979)))

(assert (=> bs!1263247 (not (= lambda!289000 lambda!288857))))

(declare-fun bs!1263249 () Bool)

(assert (= bs!1263249 (and d!1737688 b!5457008)))

(assert (=> bs!1263249 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) lt!2228361)) (= lambda!289000 lambda!288847))))

(declare-fun bs!1263251 () Bool)

(assert (= bs!1263251 (and d!1737688 b!5457132)))

(assert (=> bs!1263251 (not (= lambda!289000 lambda!288875))))

(declare-fun bs!1263253 () Bool)

(assert (= bs!1263253 (and d!1737688 b!5456961)))

(assert (=> bs!1263253 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (regTwo!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) lt!2228185)) (= lambda!289000 lambda!288851))))

(declare-fun bs!1263255 () Bool)

(assert (= bs!1263255 (and d!1737688 b!5456970)))

(assert (=> bs!1263255 (not (= lambda!289000 lambda!288867))))

(declare-fun bs!1263256 () Bool)

(assert (= bs!1263256 (and d!1737688 d!1737340)))

(assert (=> bs!1263256 (not (= lambda!289000 lambda!288905))))

(assert (=> bs!1263249 (not (= lambda!289000 lambda!288846))))

(declare-fun bs!1263257 () Bool)

(assert (= bs!1263257 (and d!1737688 d!1737350)))

(assert (=> bs!1263257 (= (and (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite c!953207 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953209 (regOne!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (ite c!953207 lt!2228361 (ite c!953209 lt!2228281 lt!2228350)))) (= lambda!289000 lambda!288912))))

(declare-fun bs!1263259 () Bool)

(assert (= bs!1263259 (and d!1737688 b!5456966)))

(assert (=> bs!1263259 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) lt!2228350) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!289000 lambda!288853))))

(assert (=> bs!1263255 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) Nil!62030) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) lt!2228350)) (= lambda!289000 lambda!288866))))

(assert (=> bs!1263253 (not (= lambda!289000 lambda!288850))))

(declare-fun bs!1263262 () Bool)

(assert (= bs!1263262 (and d!1737688 b!5456993)))

(assert (=> bs!1263262 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (_1!35787 lt!2228245)) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) lt!2228350)) (= lambda!289000 lambda!288863))))

(declare-fun bs!1263264 () Bool)

(assert (= bs!1263264 (and d!1737688 d!1737378)))

(assert (=> bs!1263264 (not (= lambda!289000 lambda!288922))))

(assert (=> bs!1263264 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!289000 lambda!288921))))

(declare-fun bs!1263265 () Bool)

(assert (= bs!1263265 (and d!1737688 b!5457428)))

(assert (=> bs!1263265 (not (= lambda!289000 lambda!288907))))

(declare-fun bs!1263267 () Bool)

(assert (= bs!1263267 (and d!1737688 b!5457009)))

(assert (=> bs!1263267 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!289000 lambda!288842))))

(assert (=> bs!1263247 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (_1!35787 lt!2228239)) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) lt!2228350)) (= lambda!289000 lambda!288855))))

(assert (=> bs!1263256 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (ite c!953211 (_1!35787 lt!2228239) (ite c!953206 (_1!35787 lt!2228245) Nil!62030))) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (reg!15614 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (Star!15285 (reg!15614 (regOne!31082 r!7292))))) (= lambda!289000 lambda!288904))))

(assert (=> bs!1263255 (not (= lambda!289000 lambda!288868))))

(declare-fun bs!1263272 () Bool)

(assert (= bs!1263272 (and d!1737688 d!1737326)))

(assert (=> bs!1263272 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite (or c!953207 c!953209) (regOne!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292)))))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (ite c!953207 lt!2228179 (ite c!953209 lt!2228281 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))))) (= lambda!289000 lambda!288893))))

(assert (=> bs!1263249 (not (= lambda!289000 lambda!288848))))

(declare-fun bs!1263273 () Bool)

(assert (= bs!1263273 (and d!1737688 b!5457138)))

(assert (=> bs!1263273 (not (= lambda!289000 lambda!288874))))

(declare-fun bs!1263275 () Bool)

(assert (= bs!1263275 (and d!1737688 b!5457645)))

(assert (=> bs!1263275 (not (= lambda!289000 lambda!288925))))

(declare-fun bs!1263276 () Bool)

(assert (= bs!1263276 (and d!1737688 b!5457639)))

(assert (=> bs!1263276 (not (= lambda!289000 lambda!288926))))

(declare-fun bs!1263277 () Bool)

(assert (= bs!1263277 (and d!1737688 d!1737640)))

(assert (=> bs!1263277 (not (= lambda!289000 lambda!288993))))

(declare-fun bs!1263278 () Bool)

(assert (= bs!1263278 (and d!1737688 b!5458259)))

(assert (=> bs!1263278 (not (= lambda!289000 lambda!288986))))

(assert (=> bs!1263262 (not (= lambda!289000 lambda!288864))))

(assert (=> bs!1263247 (not (= lambda!289000 lambda!288856))))

(assert (=> bs!1263249 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) lt!2228179)) (= lambda!289000 lambda!288845))))

(assert (=> bs!1263262 (not (= lambda!289000 lambda!288862))))

(assert (=> bs!1263277 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (ite (or c!953207 c!953209 c!953211 c!953206) s!2326 Nil!62030)) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite c!953207 (regOne!31082 (regOne!31082 r!7292)) (ite c!953209 (regTwo!31082 (regOne!31082 r!7292)) (ite c!953211 lt!2228350 (ite c!953206 lt!2228296 (reg!15614 (regOne!31082 r!7292))))))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (ite c!953207 lt!2228179 (ite c!953209 lt!2228185 (ite (or c!953211 c!953206) (regTwo!31082 r!7292) lt!2228350))))) (= lambda!289000 lambda!288991))))

(declare-fun bs!1263281 () Bool)

(assert (= bs!1263281 (and d!1737688 b!5458176)))

(assert (=> bs!1263281 (not (= lambda!289000 lambda!288979))))

(declare-fun bs!1263282 () Bool)

(assert (= bs!1263282 (and d!1737688 b!5458265)))

(assert (=> bs!1263282 (not (= lambda!289000 lambda!288982))))

(assert (=> bs!1263253 (not (= lambda!289000 lambda!288852))))

(declare-fun bs!1263283 () Bool)

(assert (= bs!1263283 (and d!1737688 d!1737376)))

(assert (=> bs!1263283 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (regOne!31082 r!7292)) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!289000 lambda!288919))))

(assert (=> bs!1263262 (not (= lambda!289000 lambda!288865))))

(assert (=> bs!1263253 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (regOne!31082 (regOne!31082 r!7292))) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) lt!2228281)) (= lambda!289000 lambda!288849))))

(assert (=> bs!1263267 (not (= lambda!289000 lambda!288843))))

(assert (=> bs!1263257 (not (= lambda!289000 lambda!288913))))

(declare-fun bs!1263284 () Bool)

(assert (= bs!1263284 (and d!1737688 b!5458182)))

(assert (=> bs!1263284 (not (= lambda!289000 lambda!288978))))

(assert (=> bs!1263262 (= (and (= (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) s!2326) (= (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) lt!2228296) (= (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (regTwo!31082 r!7292))) (= lambda!289000 lambda!288861))))

(assert (=> bs!1263259 (not (= lambda!289000 lambda!288854))))

(assert (=> d!1737688 true))

(assert (=> d!1737688 true))

(assert (=> d!1737688 true))

(assert (=> d!1737688 (= (isDefined!12099 (findConcatSeparation!1810 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) Nil!62030 (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245))))) (Exists!2466 lambda!289000))))

(declare-fun lt!2228649 () Unit!154880)

(assert (=> d!1737688 (= lt!2228649 (choose!41452 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))))))

(assert (=> d!1737688 (validRegex!7021 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))))))

(assert (=> d!1737688 (= (lemmaFindConcatSeparationEquivalentToExists!1574 (ite (or c!953207 c!953209) (regTwo!31082 (regOne!31082 r!7292)) (reg!15614 (regOne!31082 r!7292))) (ite c!953207 lt!2228361 (ite c!953209 lt!2228185 lt!2228350)) (ite (or c!953207 c!953209) s!2326 (ite c!953211 (_1!35787 lt!2228239) (_1!35787 lt!2228245)))) lt!2228649)))

(declare-fun bs!1263285 () Bool)

(assert (= bs!1263285 d!1737688))

(declare-fun m!6479714 () Bool)

(assert (=> bs!1263285 m!6479714))

(declare-fun m!6479716 () Bool)

(assert (=> bs!1263285 m!6479716))

(declare-fun m!6479718 () Bool)

(assert (=> bs!1263285 m!6479718))

(declare-fun m!6479720 () Bool)

(assert (=> bs!1263285 m!6479720))

(assert (=> bs!1263285 m!6479718))

(declare-fun m!6479722 () Bool)

(assert (=> bs!1263285 m!6479722))

(assert (=> bm!399027 d!1737688))

(declare-fun b!5458424 () Bool)

(declare-fun e!3380208 () Bool)

(declare-fun tp!1501955 () Bool)

(assert (=> b!5458424 (= e!3380208 tp!1501955)))

(declare-fun b!5458422 () Bool)

(assert (=> b!5458422 (= e!3380208 tp_is_empty!39823)))

(assert (=> b!5456969 (= tp!1501936 e!3380208)))

(declare-fun b!5458425 () Bool)

(declare-fun tp!1501952 () Bool)

(declare-fun tp!1501954 () Bool)

(assert (=> b!5458425 (= e!3380208 (and tp!1501952 tp!1501954))))

(declare-fun b!5458423 () Bool)

(declare-fun tp!1501956 () Bool)

(declare-fun tp!1501953 () Bool)

(assert (=> b!5458423 (= e!3380208 (and tp!1501956 tp!1501953))))

(assert (= (and b!5456969 ((_ is ElementMatch!15285) (reg!15614 r!7292))) b!5458422))

(assert (= (and b!5456969 ((_ is Concat!24130) (reg!15614 r!7292))) b!5458423))

(assert (= (and b!5456969 ((_ is Star!15285) (reg!15614 r!7292))) b!5458424))

(assert (= (and b!5456969 ((_ is Union!15285) (reg!15614 r!7292))) b!5458425))

(declare-fun b!5458430 () Bool)

(declare-fun e!3380211 () Bool)

(declare-fun tp!1501961 () Bool)

(declare-fun tp!1501962 () Bool)

(assert (=> b!5458430 (= e!3380211 (and tp!1501961 tp!1501962))))

(assert (=> b!5456982 (= tp!1501939 e!3380211)))

(assert (= (and b!5456982 ((_ is Cons!62031) (exprs!5169 setElem!35707))) b!5458430))

(declare-fun b!5458431 () Bool)

(declare-fun e!3380212 () Bool)

(declare-fun tp!1501963 () Bool)

(declare-fun tp!1501964 () Bool)

(assert (=> b!5458431 (= e!3380212 (and tp!1501963 tp!1501964))))

(assert (=> b!5456960 (= tp!1501932 e!3380212)))

(assert (= (and b!5456960 ((_ is Cons!62031) (exprs!5169 (h!68480 zl!343)))) b!5458431))

(declare-fun b!5458434 () Bool)

(declare-fun e!3380213 () Bool)

(declare-fun tp!1501968 () Bool)

(assert (=> b!5458434 (= e!3380213 tp!1501968)))

(declare-fun b!5458432 () Bool)

(assert (=> b!5458432 (= e!3380213 tp_is_empty!39823)))

(assert (=> b!5456998 (= tp!1501933 e!3380213)))

(declare-fun b!5458435 () Bool)

(declare-fun tp!1501965 () Bool)

(declare-fun tp!1501967 () Bool)

(assert (=> b!5458435 (= e!3380213 (and tp!1501965 tp!1501967))))

(declare-fun b!5458433 () Bool)

(declare-fun tp!1501969 () Bool)

(declare-fun tp!1501966 () Bool)

(assert (=> b!5458433 (= e!3380213 (and tp!1501969 tp!1501966))))

(assert (= (and b!5456998 ((_ is ElementMatch!15285) (regOne!31083 r!7292))) b!5458432))

(assert (= (and b!5456998 ((_ is Concat!24130) (regOne!31083 r!7292))) b!5458433))

(assert (= (and b!5456998 ((_ is Star!15285) (regOne!31083 r!7292))) b!5458434))

(assert (= (and b!5456998 ((_ is Union!15285) (regOne!31083 r!7292))) b!5458435))

(declare-fun b!5458438 () Bool)

(declare-fun e!3380214 () Bool)

(declare-fun tp!1501973 () Bool)

(assert (=> b!5458438 (= e!3380214 tp!1501973)))

(declare-fun b!5458436 () Bool)

(assert (=> b!5458436 (= e!3380214 tp_is_empty!39823)))

(assert (=> b!5456998 (= tp!1501935 e!3380214)))

(declare-fun b!5458439 () Bool)

(declare-fun tp!1501970 () Bool)

(declare-fun tp!1501972 () Bool)

(assert (=> b!5458439 (= e!3380214 (and tp!1501970 tp!1501972))))

(declare-fun b!5458437 () Bool)

(declare-fun tp!1501974 () Bool)

(declare-fun tp!1501971 () Bool)

(assert (=> b!5458437 (= e!3380214 (and tp!1501974 tp!1501971))))

(assert (= (and b!5456998 ((_ is ElementMatch!15285) (regTwo!31083 r!7292))) b!5458436))

(assert (= (and b!5456998 ((_ is Concat!24130) (regTwo!31083 r!7292))) b!5458437))

(assert (= (and b!5456998 ((_ is Star!15285) (regTwo!31083 r!7292))) b!5458438))

(assert (= (and b!5456998 ((_ is Union!15285) (regTwo!31083 r!7292))) b!5458439))

(declare-fun b!5458442 () Bool)

(declare-fun e!3380215 () Bool)

(declare-fun tp!1501978 () Bool)

(assert (=> b!5458442 (= e!3380215 tp!1501978)))

(declare-fun b!5458440 () Bool)

(assert (=> b!5458440 (= e!3380215 tp_is_empty!39823)))

(assert (=> b!5456956 (= tp!1501937 e!3380215)))

(declare-fun b!5458443 () Bool)

(declare-fun tp!1501975 () Bool)

(declare-fun tp!1501977 () Bool)

(assert (=> b!5458443 (= e!3380215 (and tp!1501975 tp!1501977))))

(declare-fun b!5458441 () Bool)

(declare-fun tp!1501979 () Bool)

(declare-fun tp!1501976 () Bool)

(assert (=> b!5458441 (= e!3380215 (and tp!1501979 tp!1501976))))

(assert (= (and b!5456956 ((_ is ElementMatch!15285) (regOne!31082 r!7292))) b!5458440))

(assert (= (and b!5456956 ((_ is Concat!24130) (regOne!31082 r!7292))) b!5458441))

(assert (= (and b!5456956 ((_ is Star!15285) (regOne!31082 r!7292))) b!5458442))

(assert (= (and b!5456956 ((_ is Union!15285) (regOne!31082 r!7292))) b!5458443))

(declare-fun b!5458446 () Bool)

(declare-fun e!3380216 () Bool)

(declare-fun tp!1501983 () Bool)

(assert (=> b!5458446 (= e!3380216 tp!1501983)))

(declare-fun b!5458444 () Bool)

(assert (=> b!5458444 (= e!3380216 tp_is_empty!39823)))

(assert (=> b!5456956 (= tp!1501934 e!3380216)))

(declare-fun b!5458447 () Bool)

(declare-fun tp!1501980 () Bool)

(declare-fun tp!1501982 () Bool)

(assert (=> b!5458447 (= e!3380216 (and tp!1501980 tp!1501982))))

(declare-fun b!5458445 () Bool)

(declare-fun tp!1501984 () Bool)

(declare-fun tp!1501981 () Bool)

(assert (=> b!5458445 (= e!3380216 (and tp!1501984 tp!1501981))))

(assert (= (and b!5456956 ((_ is ElementMatch!15285) (regTwo!31082 r!7292))) b!5458444))

(assert (= (and b!5456956 ((_ is Concat!24130) (regTwo!31082 r!7292))) b!5458445))

(assert (= (and b!5456956 ((_ is Star!15285) (regTwo!31082 r!7292))) b!5458446))

(assert (= (and b!5456956 ((_ is Union!15285) (regTwo!31082 r!7292))) b!5458447))

(declare-fun b!5458452 () Bool)

(declare-fun e!3380219 () Bool)

(declare-fun tp!1501987 () Bool)

(assert (=> b!5458452 (= e!3380219 (and tp_is_empty!39823 tp!1501987))))

(assert (=> b!5456980 (= tp!1501940 e!3380219)))

(assert (= (and b!5456980 ((_ is Cons!62030) (t!375383 s!2326))) b!5458452))

(declare-fun b!5458460 () Bool)

(declare-fun e!3380225 () Bool)

(declare-fun tp!1501992 () Bool)

(assert (=> b!5458460 (= e!3380225 tp!1501992)))

(declare-fun e!3380224 () Bool)

(declare-fun tp!1501993 () Bool)

(declare-fun b!5458459 () Bool)

(assert (=> b!5458459 (= e!3380224 (and (inv!81459 (h!68480 (t!375385 zl!343))) e!3380225 tp!1501993))))

(assert (=> b!5456954 (= tp!1501938 e!3380224)))

(assert (= b!5458459 b!5458460))

(assert (= (and b!5456954 ((_ is Cons!62032) (t!375385 zl!343))) b!5458459))

(declare-fun m!6479734 () Bool)

(assert (=> b!5458459 m!6479734))

(declare-fun condSetEmpty!35710 () Bool)

(assert (=> setNonEmpty!35707 (= condSetEmpty!35710 (= setRest!35707 ((as const (Array Context!9338 Bool)) false)))))

(declare-fun setRes!35710 () Bool)

(assert (=> setNonEmpty!35707 (= tp!1501941 setRes!35710)))

(declare-fun setIsEmpty!35710 () Bool)

(assert (=> setIsEmpty!35710 setRes!35710))

(declare-fun setNonEmpty!35710 () Bool)

(declare-fun tp!1501999 () Bool)

(declare-fun e!3380228 () Bool)

(declare-fun setElem!35710 () Context!9338)

(assert (=> setNonEmpty!35710 (= setRes!35710 (and tp!1501999 (inv!81459 setElem!35710) e!3380228))))

(declare-fun setRest!35710 () (InoxSet Context!9338))

(assert (=> setNonEmpty!35710 (= setRest!35707 ((_ map or) (store ((as const (Array Context!9338 Bool)) false) setElem!35710 true) setRest!35710))))

(declare-fun b!5458465 () Bool)

(declare-fun tp!1501998 () Bool)

(assert (=> b!5458465 (= e!3380228 tp!1501998)))

(assert (= (and setNonEmpty!35707 condSetEmpty!35710) setIsEmpty!35710))

(assert (= (and setNonEmpty!35707 (not condSetEmpty!35710)) setNonEmpty!35710))

(assert (= setNonEmpty!35710 b!5458465))

(declare-fun m!6479754 () Bool)

(assert (=> setNonEmpty!35710 m!6479754))

(declare-fun b_lambda!207803 () Bool)

(assert (= b_lambda!207793 (or b!5457004 b_lambda!207803)))

(declare-fun bs!1263292 () Bool)

(declare-fun d!1737704 () Bool)

(assert (= bs!1263292 (and d!1737704 b!5457004)))

(assert (=> bs!1263292 (= (dynLambda!24409 lambda!288844 (h!68480 zl!343)) (derivationStepZipperUp!657 (h!68480 zl!343) (h!68478 s!2326)))))

(assert (=> bs!1263292 m!6477868))

(assert (=> d!1737526 d!1737704))

(declare-fun b_lambda!207805 () Bool)

(assert (= b_lambda!207791 (or b!5457004 b_lambda!207805)))

(declare-fun bs!1263293 () Bool)

(declare-fun d!1737706 () Bool)

(assert (= bs!1263293 (and d!1737706 b!5457004)))

(assert (=> bs!1263293 (= (dynLambda!24409 lambda!288844 lt!2228337) (derivationStepZipperUp!657 lt!2228337 (h!68478 s!2326)))))

(assert (=> bs!1263293 m!6477648))

(assert (=> d!1737518 d!1737706))

(declare-fun b_lambda!207807 () Bool)

(assert (= b_lambda!207777 (or b!5456993 b_lambda!207807)))

(declare-fun bs!1263294 () Bool)

(declare-fun d!1737708 () Bool)

(assert (= bs!1263294 (and d!1737708 b!5456993)))

(declare-fun lt!2228652 () Unit!154880)

(assert (=> bs!1263294 (= lt!2228652 (lemmaConcatPreservesForall!252 (exprs!5169 lt!2228345) lt!2228195 lambda!288860))))

(assert (=> bs!1263294 (= (dynLambda!24406 lambda!288859 lt!2228345) (Context!9339 (++!13650 (exprs!5169 lt!2228345) lt!2228195)))))

(declare-fun m!6479758 () Bool)

(assert (=> bs!1263294 m!6479758))

(declare-fun m!6479762 () Bool)

(assert (=> bs!1263294 m!6479762))

(assert (=> d!1737246 d!1737708))

(declare-fun b_lambda!207809 () Bool)

(assert (= b_lambda!207795 (or b!5456989 b_lambda!207809)))

(declare-fun bs!1263295 () Bool)

(declare-fun d!1737710 () Bool)

(assert (= bs!1263295 (and d!1737710 b!5456989)))

(assert (=> bs!1263295 (= (dynLambda!24410 lambda!288869 (h!68479 (t!375384 (exprs!5169 (h!68480 zl!343))))) (validRegex!7021 (h!68479 (t!375384 (exprs!5169 (h!68480 zl!343))))))))

(declare-fun m!6479764 () Bool)

(assert (=> bs!1263295 m!6479764))

(assert (=> b!5458008 d!1737710))

(check-sat (not b!5457557) (not b!5458459) (not d!1737366) (not b!5457665) (not b!5457671) (not b!5457829) (not setNonEmpty!35710) (not b!5457915) (not d!1737628) (not b!5457644) (not d!1737326) (not b!5457561) (not d!1737574) (not b!5457916) (not b!5457560) (not b!5457342) (not d!1737486) (not b!5458080) (not d!1737550) (not b!5457051) (not b!5458405) (not b!5457346) (not b!5458387) (not b!5457568) (not d!1737540) (not b!5457666) (not b!5457206) (not b!5458253) (not b!5458386) (not d!1737414) (not b!5457792) (not b!5457048) (not bm!399228) (not b!5457604) (not b!5457809) (not d!1737604) (not bm!399088) (not d!1737472) (not bm!399235) (not d!1737526) (not bm!399079) (not d!1737652) (not d!1737252) (not d!1737324) (not b!5457949) (not b!5458025) (not b!5457806) (not bm!399056) (not d!1737466) (not b!5458358) (not b_lambda!207807) (not b!5457272) (not bm!399178) (not b!5458072) (not bm!399236) (not b!5457797) (not b!5458425) (not b!5458430) (not b!5457903) (not bm!399050) (not b!5458264) (not b!5457913) (not b!5457540) (not b!5458009) (not b!5458068) (not d!1737314) (not b!5458403) (not b!5457571) (not b!5458130) (not d!1737510) (not b!5458443) (not b!5457159) (not b!5457297) (not d!1737684) (not b!5458135) (not d!1737654) (not b!5457184) (not b!5457209) (not b_lambda!207797) (not bm!399060) (not d!1737660) (not b!5458411) (not b!5457084) (not d!1737514) (not d!1737280) (not b!5457214) (not d!1737478) (not d!1737470) (not d!1737602) (not b!5457609) (not b!5458346) (not b!5457340) (not b!5458447) (not d!1737262) (not b!5458024) (not b!5457605) (not d!1737638) (not d!1737578) (not b!5458431) (not b!5458391) (not b!5458423) (not b!5458010) (not bm!399162) (not bm!399083) (not bm!399224) (not bm!399221) (not b!5457169) (not b!5458258) (not b!5458084) (not d!1737332) (not b!5457193) (not b!5457814) (not bm!399126) (not bm!399189) (not bm!399076) (not b!5457930) (not b!5457821) (not d!1737570) (not d!1737276) (not bm!399149) (not b!5457345) (not b!5457812) (not d!1737248) (not bm!399158) (not b!5458424) (not b!5457575) (not b!5457864) (not bm!399180) (not b!5458086) (not b!5457304) (not b!5458351) (not d!1737386) (not b!5457207) (not d!1737374) (not d!1737502) (not b!5457537) (not d!1737524) (not b!5457608) (not d!1737426) (not d!1737254) (not b!5457175) (not b!5458342) (not d!1737494) (not b!5458175) (not d!1737566) (not d!1737268) (not b!5457672) (not d!1737676) (not d!1737508) (not b!5457045) (not bm!399127) (not b!5458254) (not b!5458085) (not bm!399168) (not d!1737650) (not b!5457945) (not bm!399080) (not b!5457804) (not b!5458388) (not b!5457600) (not b!5458003) (not d!1737634) (not b!5458181) (not b!5457904) (not b!5457392) (not b!5457664) (not d!1737504) (not b_lambda!207783) (not d!1737296) (not b!5458247) (not b!5458079) (not bm!399225) (not d!1737390) (not bm!399169) (not bs!1263293) (not b!5457816) (not b!5457944) (not b!5457822) (not d!1737582) (not b!5457901) (not d!1737286) (not d!1737394) (not bm!399166) (not d!1737424) (not b!5458433) (not b!5458344) (not b!5457185) (not b!5457950) (not bm!399150) (not bm!399105) (not bm!399125) (not b!5457897) (not bm!399151) (not b!5457543) (not b!5457912) (not d!1737340) (not b!5458315) (not bm!399147) (not bm!399157) (not b!5458400) (not b!5457790) (not b!5457823) (not bm!399179) (not b!5458308) (not d!1737372) (not d!1737484) (not d!1737318) (not b!5457638) (not b!5458441) (not bm!399155) (not b!5457562) (not b!5457917) (not b!5457291) (not b_lambda!207799) (not b!5457919) tp_is_empty!39823 (not b!5458343) (not b!5457603) (not d!1737518) (not b!5458307) (not b!5457811) (not d!1737520) (not b!5457088) (not bm!399161) (not b!5457937) (not d!1737462) (not b!5457791) (not d!1737334) (not d!1737376) (not b!5457815) (not b!5457394) (not b!5457137) (not b!5458356) (not b!5457924) (not bm!399200) (not d!1737506) (not d!1737646) (not d!1737648) (not b!5457298) (not b!5457910) (not b!5457192) (not b!5457293) (not b!5457795) (not d!1737640) (not b!5457668) (not d!1737546) (not bm!399057) (not b!5457168) (not b!5458132) (not b!5457341) (not d!1737412) (not b!5458460) (not d!1737408) (not b!5457026) (not b!5457969) (not d!1737298) (not b!5457900) (not b!5457210) (not b!5457896) (not d!1737474) (not b!5458015) (not d!1737548) (not b!5457160) (not b!5457923) (not d!1737686) (not b!5458439) (not bs!1263292) (not bm!399061) (not d!1737350) (not b!5457433) (not bm!399199) (not d!1737274) (not b!5457542) (not b!5457798) (not b!5457805) (not d!1737422) (not b!5457970) (not b!5457049) (not b!5458087) (not d!1737658) (not b!5457818) (not b!5458404) (not b!5457905) (not b!5458304) (not b!5457089) (not b!5458396) (not d!1737626) (not b!5458398) (not bs!1263294) (not b!5457673) (not b!5457852) (not b!5457213) (not d!1737562) (not d!1737392) (not b!5457914) (not b!5457296) (not b!5457538) (not d!1737482) (not d!1737476) (not d!1737330) (not bm!399144) (not d!1737250) (not b_lambda!207789) (not b!5457427) (not b!5458017) (not b!5458352) (not d!1737656) (not d!1737410) (not b!5458392) (not bm!399227) (not b!5457095) (not b!5458001) (not b!5457164) (not b_lambda!207805) (not b!5457162) (not b!5457851) (not b!5458389) (not d!1737278) (not b!5457348) (not d!1737528) (not b!5458073) (not b!5458355) (not b!5457391) (not d!1737388) (not d!1737572) (not d!1737322) (not d!1737450) (not b!5458434) (not bm!399089) (not b!5458081) (not b!5457050) (not d!1737534) (not d!1737378) (not b!5457347) (not d!1737542) (not b!5458016) (not b!5457131) (not d!1737624) (not d!1737306) (not b!5458395) (not b!5458012) (not d!1737246) (not d!1737336) (not d!1737490) (not b!5457167) (not b!5457570) (not b!5458445) (not b!5458345) (not b!5457053) (not b!5458309) (not b!5457539) (not d!1737664) (not b!5457087) (not b!5457810) (not b!5458442) (not d!1737682) (not bm!399055) (not b!5458357) (not b!5457922) (not b!5457555) (not b_lambda!207803) (not b!5457082) (not bm!399165) (not b!5458353) (not b!5458350) (not bs!1263295) (not b!5458347) (not b!5457395) (not b!5458137) (not b!5458302) (not b!5458437) (not b_lambda!207809) (not bm!399229) (not bm!399148) (not d!1737244) (not bm!399154) (not b!5458446) (not b!5458435) (not b!5458023) (not b!5458465) (not d!1737284) (not b!5458067) (not b!5457796) (not bm!399156) (not d!1737338) (not b!5457025) (not b!5457606) (not b!5458438) (not d!1737688) (not b!5457679) (not b!5458252) (not b!5458452))
(check-sat)
