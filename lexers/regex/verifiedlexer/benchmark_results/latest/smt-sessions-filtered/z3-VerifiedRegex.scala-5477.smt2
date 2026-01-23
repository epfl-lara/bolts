; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277482 () Bool)

(assert start!277482)

(declare-fun b!2848829 () Bool)

(declare-fun e!1805302 () Bool)

(declare-fun tp!914760 () Bool)

(assert (=> b!2848829 (= e!1805302 tp!914760)))

(declare-fun b!2848830 () Bool)

(declare-fun tp!914762 () Bool)

(declare-fun tp!914758 () Bool)

(assert (=> b!2848830 (= e!1805302 (and tp!914762 tp!914758))))

(declare-fun res!1184280 () Bool)

(declare-fun e!1805300 () Bool)

(assert (=> start!277482 (=> (not res!1184280) (not e!1805300))))

(declare-datatypes ((C!17200 0))(
  ( (C!17201 (val!10634 Int)) )
))
(declare-datatypes ((Regex!8509 0))(
  ( (ElementMatch!8509 (c!459543 C!17200)) (Concat!13830 (regOne!17530 Regex!8509) (regTwo!17530 Regex!8509)) (EmptyExpr!8509) (Star!8509 (reg!8838 Regex!8509)) (EmptyLang!8509) (Union!8509 (regOne!17531 Regex!8509) (regTwo!17531 Regex!8509)) )
))
(declare-fun r!13328 () Regex!8509)

(declare-fun validRegex!3379 (Regex!8509) Bool)

(assert (=> start!277482 (= res!1184280 (validRegex!3379 r!13328))))

(assert (=> start!277482 e!1805300))

(assert (=> start!277482 e!1805302))

(declare-datatypes ((List!33994 0))(
  ( (Nil!33870) (Cons!33870 (h!39290 C!17200) (t!233021 List!33994)) )
))
(declare-datatypes ((IArray!21009 0))(
  ( (IArray!21010 (innerList!10562 List!33994)) )
))
(declare-datatypes ((Conc!10502 0))(
  ( (Node!10502 (left!25499 Conc!10502) (right!25829 Conc!10502) (csize!21234 Int) (cheight!10713 Int)) (Leaf!15980 (xs!13620 IArray!21009) (csize!21235 Int)) (Empty!10502) )
))
(declare-datatypes ((BalanceConc!20642 0))(
  ( (BalanceConc!20643 (c!459544 Conc!10502)) )
))
(declare-fun prefix!1313 () BalanceConc!20642)

(declare-fun e!1805301 () Bool)

(declare-fun inv!45900 (BalanceConc!20642) Bool)

(assert (=> start!277482 (and (inv!45900 prefix!1313) e!1805301)))

(declare-fun b!2848831 () Bool)

(declare-fun tp!914761 () Bool)

(declare-fun tp!914757 () Bool)

(assert (=> b!2848831 (= e!1805302 (and tp!914761 tp!914757))))

(declare-fun b!2848832 () Bool)

(declare-fun tp_is_empty!14755 () Bool)

(assert (=> b!2848832 (= e!1805302 tp_is_empty!14755)))

(declare-fun lt!1013153 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!33995 0))(
  ( (Nil!33871) (Cons!33871 (h!39291 Regex!8509) (t!233022 List!33995)) )
))
(declare-datatypes ((Context!5038 0))(
  ( (Context!5039 (exprs!3019 List!33995)) )
))
(declare-fun lt!1013148 () (InoxSet Context!5038))

(declare-fun b!2848833 () Bool)

(declare-fun prefixMatchZipperSequence!767 ((InoxSet Context!5038) BalanceConc!20642 Int) Bool)

(assert (=> b!2848833 (= e!1805300 (not (= (prefixMatchZipperSequence!767 lt!1013148 prefix!1313 0) lt!1013153)))))

(declare-fun lt!1013150 () List!33994)

(declare-fun prefixMatchZipper!243 ((InoxSet Context!5038) List!33994) Bool)

(assert (=> b!2848833 (= lt!1013153 (prefixMatchZipper!243 lt!1013148 lt!1013150))))

(declare-fun prefixMatch!819 (Regex!8509 List!33994) Bool)

(assert (=> b!2848833 (= lt!1013153 (prefixMatch!819 r!13328 lt!1013150))))

(declare-datatypes ((Unit!47605 0))(
  ( (Unit!47606) )
))
(declare-fun lt!1013151 () Unit!47605)

(declare-datatypes ((List!33996 0))(
  ( (Nil!33872) (Cons!33872 (h!39292 Context!5038) (t!233023 List!33996)) )
))
(declare-fun lt!1013149 () List!33996)

(declare-fun prefixMatchZipperRegexEquiv!235 ((InoxSet Context!5038) List!33996 Regex!8509 List!33994) Unit!47605)

(assert (=> b!2848833 (= lt!1013151 (prefixMatchZipperRegexEquiv!235 lt!1013148 lt!1013149 r!13328 lt!1013150))))

(declare-fun list!12590 (BalanceConc!20642) List!33994)

(assert (=> b!2848833 (= lt!1013150 (list!12590 prefix!1313))))

(declare-fun toList!1922 ((InoxSet Context!5038)) List!33996)

(assert (=> b!2848833 (= lt!1013149 (toList!1922 lt!1013148))))

(declare-fun dropList!1028 (BalanceConc!20642 Int) List!33994)

(assert (=> b!2848833 (= (prefixMatchZipper!243 lt!1013148 (dropList!1028 prefix!1313 0)) (prefixMatchZipperSequence!767 lt!1013148 prefix!1313 0))))

(declare-fun lt!1013152 () Unit!47605)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!243 ((InoxSet Context!5038) BalanceConc!20642 Int) Unit!47605)

(assert (=> b!2848833 (= lt!1013152 (lemmaprefixMatchZipperSequenceEquivalent!243 lt!1013148 prefix!1313 0))))

(declare-fun focus!313 (Regex!8509) (InoxSet Context!5038))

(assert (=> b!2848833 (= lt!1013148 (focus!313 r!13328))))

(declare-fun b!2848834 () Bool)

(declare-fun tp!914759 () Bool)

(declare-fun inv!45901 (Conc!10502) Bool)

(assert (=> b!2848834 (= e!1805301 (and (inv!45901 (c!459544 prefix!1313)) tp!914759))))

(assert (= (and start!277482 res!1184280) b!2848833))

(get-info :version)

(assert (= (and start!277482 ((_ is ElementMatch!8509) r!13328)) b!2848832))

(assert (= (and start!277482 ((_ is Concat!13830) r!13328)) b!2848831))

(assert (= (and start!277482 ((_ is Star!8509) r!13328)) b!2848829))

(assert (= (and start!277482 ((_ is Union!8509) r!13328)) b!2848830))

(assert (= start!277482 b!2848834))

(declare-fun m!3275795 () Bool)

(assert (=> start!277482 m!3275795))

(declare-fun m!3275797 () Bool)

(assert (=> start!277482 m!3275797))

(declare-fun m!3275799 () Bool)

(assert (=> b!2848833 m!3275799))

(declare-fun m!3275801 () Bool)

(assert (=> b!2848833 m!3275801))

(assert (=> b!2848833 m!3275801))

(declare-fun m!3275803 () Bool)

(assert (=> b!2848833 m!3275803))

(declare-fun m!3275805 () Bool)

(assert (=> b!2848833 m!3275805))

(declare-fun m!3275807 () Bool)

(assert (=> b!2848833 m!3275807))

(declare-fun m!3275809 () Bool)

(assert (=> b!2848833 m!3275809))

(declare-fun m!3275811 () Bool)

(assert (=> b!2848833 m!3275811))

(declare-fun m!3275813 () Bool)

(assert (=> b!2848833 m!3275813))

(declare-fun m!3275815 () Bool)

(assert (=> b!2848833 m!3275815))

(declare-fun m!3275817 () Bool)

(assert (=> b!2848833 m!3275817))

(declare-fun m!3275819 () Bool)

(assert (=> b!2848834 m!3275819))

(check-sat (not start!277482) (not b!2848834) (not b!2848833) (not b!2848830) tp_is_empty!14755 (not b!2848829) (not b!2848831))
(check-sat)
(get-model)

(declare-fun d!825810 () Bool)

(declare-fun c!459550 () Bool)

(declare-fun isEmpty!18578 (List!33994) Bool)

(assert (=> d!825810 (= c!459550 (isEmpty!18578 lt!1013150))))

(declare-fun e!1805311 () Bool)

(assert (=> d!825810 (= (prefixMatchZipper!243 lt!1013148 lt!1013150) e!1805311)))

(declare-fun b!2848848 () Bool)

(declare-fun lostCauseZipper!528 ((InoxSet Context!5038)) Bool)

(assert (=> b!2848848 (= e!1805311 (not (lostCauseZipper!528 lt!1013148)))))

(declare-fun b!2848849 () Bool)

(declare-fun derivationStepZipper!412 ((InoxSet Context!5038) C!17200) (InoxSet Context!5038))

(declare-fun head!6259 (List!33994) C!17200)

(declare-fun tail!4484 (List!33994) List!33994)

(assert (=> b!2848849 (= e!1805311 (prefixMatchZipper!243 (derivationStepZipper!412 lt!1013148 (head!6259 lt!1013150)) (tail!4484 lt!1013150)))))

(assert (= (and d!825810 c!459550) b!2848848))

(assert (= (and d!825810 (not c!459550)) b!2848849))

(declare-fun m!3275825 () Bool)

(assert (=> d!825810 m!3275825))

(declare-fun m!3275827 () Bool)

(assert (=> b!2848848 m!3275827))

(declare-fun m!3275829 () Bool)

(assert (=> b!2848849 m!3275829))

(assert (=> b!2848849 m!3275829))

(declare-fun m!3275831 () Bool)

(assert (=> b!2848849 m!3275831))

(declare-fun m!3275833 () Bool)

(assert (=> b!2848849 m!3275833))

(assert (=> b!2848849 m!3275831))

(assert (=> b!2848849 m!3275833))

(declare-fun m!3275835 () Bool)

(assert (=> b!2848849 m!3275835))

(assert (=> b!2848833 d!825810))

(declare-fun d!825816 () Bool)

(declare-fun drop!1813 (List!33994 Int) List!33994)

(declare-fun list!12591 (Conc!10502) List!33994)

(assert (=> d!825816 (= (dropList!1028 prefix!1313 0) (drop!1813 (list!12591 (c!459544 prefix!1313)) 0))))

(declare-fun bs!520060 () Bool)

(assert (= bs!520060 d!825816))

(declare-fun m!3275841 () Bool)

(assert (=> bs!520060 m!3275841))

(assert (=> bs!520060 m!3275841))

(declare-fun m!3275843 () Bool)

(assert (=> bs!520060 m!3275843))

(assert (=> b!2848833 d!825816))

(declare-fun d!825820 () Bool)

(assert (=> d!825820 (= (list!12590 prefix!1313) (list!12591 (c!459544 prefix!1313)))))

(declare-fun bs!520061 () Bool)

(assert (= bs!520061 d!825820))

(assert (=> bs!520061 m!3275841))

(assert (=> b!2848833 d!825820))

(declare-fun d!825822 () Bool)

(declare-fun e!1805317 () Bool)

(assert (=> d!825822 e!1805317))

(declare-fun res!1184289 () Bool)

(assert (=> d!825822 (=> (not res!1184289) (not e!1805317))))

(declare-fun lt!1013159 () List!33996)

(declare-fun noDuplicate!557 (List!33996) Bool)

(assert (=> d!825822 (= res!1184289 (noDuplicate!557 lt!1013159))))

(declare-fun choose!16760 ((InoxSet Context!5038)) List!33996)

(assert (=> d!825822 (= lt!1013159 (choose!16760 lt!1013148))))

(assert (=> d!825822 (= (toList!1922 lt!1013148) lt!1013159)))

(declare-fun b!2848855 () Bool)

(declare-fun content!4655 (List!33996) (InoxSet Context!5038))

(assert (=> b!2848855 (= e!1805317 (= (content!4655 lt!1013159) lt!1013148))))

(assert (= (and d!825822 res!1184289) b!2848855))

(declare-fun m!3275851 () Bool)

(assert (=> d!825822 m!3275851))

(declare-fun m!3275853 () Bool)

(assert (=> d!825822 m!3275853))

(declare-fun m!3275855 () Bool)

(assert (=> b!2848855 m!3275855))

(assert (=> b!2848833 d!825822))

(declare-fun d!825828 () Bool)

(assert (=> d!825828 (= (prefixMatch!819 r!13328 lt!1013150) (prefixMatchZipper!243 lt!1013148 lt!1013150))))

(declare-fun lt!1013162 () Unit!47605)

(declare-fun choose!16761 ((InoxSet Context!5038) List!33996 Regex!8509 List!33994) Unit!47605)

(assert (=> d!825828 (= lt!1013162 (choose!16761 lt!1013148 lt!1013149 r!13328 lt!1013150))))

(assert (=> d!825828 (validRegex!3379 r!13328)))

(assert (=> d!825828 (= (prefixMatchZipperRegexEquiv!235 lt!1013148 lt!1013149 r!13328 lt!1013150) lt!1013162)))

(declare-fun bs!520063 () Bool)

(assert (= bs!520063 d!825828))

(assert (=> bs!520063 m!3275805))

(assert (=> bs!520063 m!3275817))

(declare-fun m!3275869 () Bool)

(assert (=> bs!520063 m!3275869))

(assert (=> bs!520063 m!3275795))

(assert (=> b!2848833 d!825828))

(declare-fun d!825832 () Bool)

(declare-fun c!459556 () Bool)

(assert (=> d!825832 (= c!459556 (isEmpty!18578 lt!1013150))))

(declare-fun e!1805323 () Bool)

(assert (=> d!825832 (= (prefixMatch!819 r!13328 lt!1013150) e!1805323)))

(declare-fun b!2848866 () Bool)

(declare-fun lostCause!731 (Regex!8509) Bool)

(assert (=> b!2848866 (= e!1805323 (not (lostCause!731 r!13328)))))

(declare-fun b!2848867 () Bool)

(declare-fun derivativeStep!2256 (Regex!8509 C!17200) Regex!8509)

(assert (=> b!2848867 (= e!1805323 (prefixMatch!819 (derivativeStep!2256 r!13328 (head!6259 lt!1013150)) (tail!4484 lt!1013150)))))

(assert (= (and d!825832 c!459556) b!2848866))

(assert (= (and d!825832 (not c!459556)) b!2848867))

(assert (=> d!825832 m!3275825))

(declare-fun m!3275871 () Bool)

(assert (=> b!2848866 m!3275871))

(assert (=> b!2848867 m!3275829))

(assert (=> b!2848867 m!3275829))

(declare-fun m!3275873 () Bool)

(assert (=> b!2848867 m!3275873))

(assert (=> b!2848867 m!3275833))

(assert (=> b!2848867 m!3275873))

(assert (=> b!2848867 m!3275833))

(declare-fun m!3275875 () Bool)

(assert (=> b!2848867 m!3275875))

(assert (=> b!2848833 d!825832))

(declare-fun d!825834 () Bool)

(declare-fun c!459564 () Bool)

(declare-fun size!26263 (BalanceConc!20642) Int)

(assert (=> d!825834 (= c!459564 (= 0 (size!26263 prefix!1313)))))

(declare-fun e!1805331 () Bool)

(assert (=> d!825834 (= (prefixMatchZipperSequence!767 lt!1013148 prefix!1313 0) e!1805331)))

(declare-fun b!2848882 () Bool)

(assert (=> b!2848882 (= e!1805331 (not (lostCauseZipper!528 lt!1013148)))))

(declare-fun b!2848883 () Bool)

(declare-fun apply!7875 (BalanceConc!20642 Int) C!17200)

(assert (=> b!2848883 (= e!1805331 (prefixMatchZipperSequence!767 (derivationStepZipper!412 lt!1013148 (apply!7875 prefix!1313 0)) prefix!1313 (+ 0 1)))))

(assert (= (and d!825834 c!459564) b!2848882))

(assert (= (and d!825834 (not c!459564)) b!2848883))

(declare-fun m!3275887 () Bool)

(assert (=> d!825834 m!3275887))

(assert (=> b!2848882 m!3275827))

(declare-fun m!3275889 () Bool)

(assert (=> b!2848883 m!3275889))

(assert (=> b!2848883 m!3275889))

(declare-fun m!3275891 () Bool)

(assert (=> b!2848883 m!3275891))

(assert (=> b!2848883 m!3275891))

(declare-fun m!3275893 () Bool)

(assert (=> b!2848883 m!3275893))

(assert (=> b!2848833 d!825834))

(declare-fun d!825838 () Bool)

(declare-fun c!459566 () Bool)

(assert (=> d!825838 (= c!459566 (isEmpty!18578 (dropList!1028 prefix!1313 0)))))

(declare-fun e!1805333 () Bool)

(assert (=> d!825838 (= (prefixMatchZipper!243 lt!1013148 (dropList!1028 prefix!1313 0)) e!1805333)))

(declare-fun b!2848886 () Bool)

(assert (=> b!2848886 (= e!1805333 (not (lostCauseZipper!528 lt!1013148)))))

(declare-fun b!2848887 () Bool)

(assert (=> b!2848887 (= e!1805333 (prefixMatchZipper!243 (derivationStepZipper!412 lt!1013148 (head!6259 (dropList!1028 prefix!1313 0))) (tail!4484 (dropList!1028 prefix!1313 0))))))

(assert (= (and d!825838 c!459566) b!2848886))

(assert (= (and d!825838 (not c!459566)) b!2848887))

(assert (=> d!825838 m!3275801))

(declare-fun m!3275899 () Bool)

(assert (=> d!825838 m!3275899))

(assert (=> b!2848886 m!3275827))

(assert (=> b!2848887 m!3275801))

(declare-fun m!3275901 () Bool)

(assert (=> b!2848887 m!3275901))

(assert (=> b!2848887 m!3275901))

(declare-fun m!3275903 () Bool)

(assert (=> b!2848887 m!3275903))

(assert (=> b!2848887 m!3275801))

(declare-fun m!3275905 () Bool)

(assert (=> b!2848887 m!3275905))

(assert (=> b!2848887 m!3275903))

(assert (=> b!2848887 m!3275905))

(declare-fun m!3275907 () Bool)

(assert (=> b!2848887 m!3275907))

(assert (=> b!2848833 d!825838))

(declare-fun d!825842 () Bool)

(assert (=> d!825842 (= (prefixMatchZipper!243 lt!1013148 (dropList!1028 prefix!1313 0)) (prefixMatchZipperSequence!767 lt!1013148 prefix!1313 0))))

(declare-fun lt!1013167 () Unit!47605)

(declare-fun choose!16762 ((InoxSet Context!5038) BalanceConc!20642 Int) Unit!47605)

(assert (=> d!825842 (= lt!1013167 (choose!16762 lt!1013148 prefix!1313 0))))

(declare-fun e!1805339 () Bool)

(assert (=> d!825842 e!1805339))

(declare-fun res!1184294 () Bool)

(assert (=> d!825842 (=> (not res!1184294) (not e!1805339))))

(assert (=> d!825842 (= res!1184294 (>= 0 0))))

(assert (=> d!825842 (= (lemmaprefixMatchZipperSequenceEquivalent!243 lt!1013148 prefix!1313 0) lt!1013167)))

(declare-fun b!2848894 () Bool)

(assert (=> b!2848894 (= e!1805339 (<= 0 (size!26263 prefix!1313)))))

(assert (= (and d!825842 res!1184294) b!2848894))

(assert (=> d!825842 m!3275801))

(assert (=> d!825842 m!3275801))

(assert (=> d!825842 m!3275803))

(assert (=> d!825842 m!3275815))

(declare-fun m!3275919 () Bool)

(assert (=> d!825842 m!3275919))

(assert (=> b!2848894 m!3275887))

(assert (=> b!2848833 d!825842))

(declare-fun d!825846 () Bool)

(declare-fun e!1805343 () Bool)

(assert (=> d!825846 e!1805343))

(declare-fun res!1184299 () Bool)

(assert (=> d!825846 (=> (not res!1184299) (not e!1805343))))

(assert (=> d!825846 (= res!1184299 (validRegex!3379 r!13328))))

(assert (=> d!825846 (= (focus!313 r!13328) (store ((as const (Array Context!5038 Bool)) false) (Context!5039 (Cons!33871 r!13328 Nil!33871)) true))))

(declare-fun b!2848898 () Bool)

(declare-fun unfocusZipper!180 (List!33996) Regex!8509)

(assert (=> b!2848898 (= e!1805343 (= (unfocusZipper!180 (toList!1922 (store ((as const (Array Context!5038 Bool)) false) (Context!5039 (Cons!33871 r!13328 Nil!33871)) true))) r!13328))))

(assert (= (and d!825846 res!1184299) b!2848898))

(assert (=> d!825846 m!3275795))

(declare-fun m!3275923 () Bool)

(assert (=> d!825846 m!3275923))

(assert (=> b!2848898 m!3275923))

(assert (=> b!2848898 m!3275923))

(declare-fun m!3275925 () Bool)

(assert (=> b!2848898 m!3275925))

(assert (=> b!2848898 m!3275925))

(declare-fun m!3275927 () Bool)

(assert (=> b!2848898 m!3275927))

(assert (=> b!2848833 d!825846))

(declare-fun d!825850 () Bool)

(declare-fun c!459570 () Bool)

(assert (=> d!825850 (= c!459570 ((_ is Node!10502) (c!459544 prefix!1313)))))

(declare-fun e!1805348 () Bool)

(assert (=> d!825850 (= (inv!45901 (c!459544 prefix!1313)) e!1805348)))

(declare-fun b!2848905 () Bool)

(declare-fun inv!45904 (Conc!10502) Bool)

(assert (=> b!2848905 (= e!1805348 (inv!45904 (c!459544 prefix!1313)))))

(declare-fun b!2848906 () Bool)

(declare-fun e!1805349 () Bool)

(assert (=> b!2848906 (= e!1805348 e!1805349)))

(declare-fun res!1184302 () Bool)

(assert (=> b!2848906 (= res!1184302 (not ((_ is Leaf!15980) (c!459544 prefix!1313))))))

(assert (=> b!2848906 (=> res!1184302 e!1805349)))

(declare-fun b!2848907 () Bool)

(declare-fun inv!45905 (Conc!10502) Bool)

(assert (=> b!2848907 (= e!1805349 (inv!45905 (c!459544 prefix!1313)))))

(assert (= (and d!825850 c!459570) b!2848905))

(assert (= (and d!825850 (not c!459570)) b!2848906))

(assert (= (and b!2848906 (not res!1184302)) b!2848907))

(declare-fun m!3275931 () Bool)

(assert (=> b!2848905 m!3275931))

(declare-fun m!3275933 () Bool)

(assert (=> b!2848907 m!3275933))

(assert (=> b!2848834 d!825850))

(declare-fun b!2848929 () Bool)

(declare-fun e!1805373 () Bool)

(declare-fun e!1805370 () Bool)

(assert (=> b!2848929 (= e!1805373 e!1805370)))

(declare-fun c!459576 () Bool)

(assert (=> b!2848929 (= c!459576 ((_ is Union!8509) r!13328))))

(declare-fun b!2848930 () Bool)

(declare-fun res!1184321 () Bool)

(declare-fun e!1805372 () Bool)

(assert (=> b!2848930 (=> res!1184321 e!1805372)))

(assert (=> b!2848930 (= res!1184321 (not ((_ is Concat!13830) r!13328)))))

(assert (=> b!2848930 (= e!1805370 e!1805372)))

(declare-fun bm!183608 () Bool)

(declare-fun call!183614 () Bool)

(assert (=> bm!183608 (= call!183614 (validRegex!3379 (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))))))

(declare-fun b!2848931 () Bool)

(declare-fun e!1805371 () Bool)

(declare-fun call!183615 () Bool)

(assert (=> b!2848931 (= e!1805371 call!183615)))

(declare-fun b!2848932 () Bool)

(declare-fun e!1805368 () Bool)

(assert (=> b!2848932 (= e!1805372 e!1805368)))

(declare-fun res!1184319 () Bool)

(assert (=> b!2848932 (=> (not res!1184319) (not e!1805368))))

(assert (=> b!2848932 (= res!1184319 call!183615)))

(declare-fun b!2848933 () Bool)

(declare-fun res!1184317 () Bool)

(assert (=> b!2848933 (=> (not res!1184317) (not e!1805371))))

(assert (=> b!2848933 (= res!1184317 call!183614)))

(assert (=> b!2848933 (= e!1805370 e!1805371)))

(declare-fun b!2848934 () Bool)

(declare-fun e!1805367 () Bool)

(declare-fun call!183613 () Bool)

(assert (=> b!2848934 (= e!1805367 call!183613)))

(declare-fun d!825854 () Bool)

(declare-fun res!1184320 () Bool)

(declare-fun e!1805369 () Bool)

(assert (=> d!825854 (=> res!1184320 e!1805369)))

(assert (=> d!825854 (= res!1184320 ((_ is ElementMatch!8509) r!13328))))

(assert (=> d!825854 (= (validRegex!3379 r!13328) e!1805369)))

(declare-fun c!459575 () Bool)

(declare-fun bm!183609 () Bool)

(assert (=> bm!183609 (= call!183613 (validRegex!3379 (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))))))

(declare-fun b!2848935 () Bool)

(assert (=> b!2848935 (= e!1805369 e!1805373)))

(assert (=> b!2848935 (= c!459575 ((_ is Star!8509) r!13328))))

(declare-fun bm!183610 () Bool)

(assert (=> bm!183610 (= call!183615 call!183613)))

(declare-fun b!2848936 () Bool)

(assert (=> b!2848936 (= e!1805368 call!183614)))

(declare-fun b!2848937 () Bool)

(assert (=> b!2848937 (= e!1805373 e!1805367)))

(declare-fun res!1184318 () Bool)

(declare-fun nullable!2633 (Regex!8509) Bool)

(assert (=> b!2848937 (= res!1184318 (not (nullable!2633 (reg!8838 r!13328))))))

(assert (=> b!2848937 (=> (not res!1184318) (not e!1805367))))

(assert (= (and d!825854 (not res!1184320)) b!2848935))

(assert (= (and b!2848935 c!459575) b!2848937))

(assert (= (and b!2848935 (not c!459575)) b!2848929))

(assert (= (and b!2848937 res!1184318) b!2848934))

(assert (= (and b!2848929 c!459576) b!2848933))

(assert (= (and b!2848929 (not c!459576)) b!2848930))

(assert (= (and b!2848933 res!1184317) b!2848931))

(assert (= (and b!2848930 (not res!1184321)) b!2848932))

(assert (= (and b!2848932 res!1184319) b!2848936))

(assert (= (or b!2848931 b!2848932) bm!183610))

(assert (= (or b!2848933 b!2848936) bm!183608))

(assert (= (or b!2848934 bm!183610) bm!183609))

(declare-fun m!3275941 () Bool)

(assert (=> bm!183608 m!3275941))

(declare-fun m!3275943 () Bool)

(assert (=> bm!183609 m!3275943))

(declare-fun m!3275945 () Bool)

(assert (=> b!2848937 m!3275945))

(assert (=> start!277482 d!825854))

(declare-fun d!825858 () Bool)

(declare-fun isBalanced!3163 (Conc!10502) Bool)

(assert (=> d!825858 (= (inv!45900 prefix!1313) (isBalanced!3163 (c!459544 prefix!1313)))))

(declare-fun bs!520065 () Bool)

(assert (= bs!520065 d!825858))

(declare-fun m!3275947 () Bool)

(assert (=> bs!520065 m!3275947))

(assert (=> start!277482 d!825858))

(declare-fun e!1805390 () Bool)

(assert (=> b!2848831 (= tp!914761 e!1805390)))

(declare-fun b!2848967 () Bool)

(declare-fun tp!914777 () Bool)

(declare-fun tp!914774 () Bool)

(assert (=> b!2848967 (= e!1805390 (and tp!914777 tp!914774))))

(declare-fun b!2848968 () Bool)

(declare-fun tp!914776 () Bool)

(assert (=> b!2848968 (= e!1805390 tp!914776)))

(declare-fun b!2848969 () Bool)

(declare-fun tp!914773 () Bool)

(declare-fun tp!914775 () Bool)

(assert (=> b!2848969 (= e!1805390 (and tp!914773 tp!914775))))

(declare-fun b!2848966 () Bool)

(assert (=> b!2848966 (= e!1805390 tp_is_empty!14755)))

(assert (= (and b!2848831 ((_ is ElementMatch!8509) (regOne!17530 r!13328))) b!2848966))

(assert (= (and b!2848831 ((_ is Concat!13830) (regOne!17530 r!13328))) b!2848967))

(assert (= (and b!2848831 ((_ is Star!8509) (regOne!17530 r!13328))) b!2848968))

(assert (= (and b!2848831 ((_ is Union!8509) (regOne!17530 r!13328))) b!2848969))

(declare-fun e!1805391 () Bool)

(assert (=> b!2848831 (= tp!914757 e!1805391)))

(declare-fun b!2848971 () Bool)

(declare-fun tp!914782 () Bool)

(declare-fun tp!914779 () Bool)

(assert (=> b!2848971 (= e!1805391 (and tp!914782 tp!914779))))

(declare-fun b!2848972 () Bool)

(declare-fun tp!914781 () Bool)

(assert (=> b!2848972 (= e!1805391 tp!914781)))

(declare-fun b!2848973 () Bool)

(declare-fun tp!914778 () Bool)

(declare-fun tp!914780 () Bool)

(assert (=> b!2848973 (= e!1805391 (and tp!914778 tp!914780))))

(declare-fun b!2848970 () Bool)

(assert (=> b!2848970 (= e!1805391 tp_is_empty!14755)))

(assert (= (and b!2848831 ((_ is ElementMatch!8509) (regTwo!17530 r!13328))) b!2848970))

(assert (= (and b!2848831 ((_ is Concat!13830) (regTwo!17530 r!13328))) b!2848971))

(assert (= (and b!2848831 ((_ is Star!8509) (regTwo!17530 r!13328))) b!2848972))

(assert (= (and b!2848831 ((_ is Union!8509) (regTwo!17530 r!13328))) b!2848973))

(declare-fun e!1805392 () Bool)

(assert (=> b!2848829 (= tp!914760 e!1805392)))

(declare-fun b!2848975 () Bool)

(declare-fun tp!914787 () Bool)

(declare-fun tp!914784 () Bool)

(assert (=> b!2848975 (= e!1805392 (and tp!914787 tp!914784))))

(declare-fun b!2848976 () Bool)

(declare-fun tp!914786 () Bool)

(assert (=> b!2848976 (= e!1805392 tp!914786)))

(declare-fun b!2848977 () Bool)

(declare-fun tp!914783 () Bool)

(declare-fun tp!914785 () Bool)

(assert (=> b!2848977 (= e!1805392 (and tp!914783 tp!914785))))

(declare-fun b!2848974 () Bool)

(assert (=> b!2848974 (= e!1805392 tp_is_empty!14755)))

(assert (= (and b!2848829 ((_ is ElementMatch!8509) (reg!8838 r!13328))) b!2848974))

(assert (= (and b!2848829 ((_ is Concat!13830) (reg!8838 r!13328))) b!2848975))

(assert (= (and b!2848829 ((_ is Star!8509) (reg!8838 r!13328))) b!2848976))

(assert (= (and b!2848829 ((_ is Union!8509) (reg!8838 r!13328))) b!2848977))

(declare-fun tp!914795 () Bool)

(declare-fun e!1805404 () Bool)

(declare-fun tp!914796 () Bool)

(declare-fun b!2848995 () Bool)

(assert (=> b!2848995 (= e!1805404 (and (inv!45901 (left!25499 (c!459544 prefix!1313))) tp!914796 (inv!45901 (right!25829 (c!459544 prefix!1313))) tp!914795))))

(declare-fun b!2848997 () Bool)

(declare-fun e!1805405 () Bool)

(declare-fun tp!914794 () Bool)

(assert (=> b!2848997 (= e!1805405 tp!914794)))

(declare-fun b!2848996 () Bool)

(declare-fun inv!45907 (IArray!21009) Bool)

(assert (=> b!2848996 (= e!1805404 (and (inv!45907 (xs!13620 (c!459544 prefix!1313))) e!1805405))))

(assert (=> b!2848834 (= tp!914759 (and (inv!45901 (c!459544 prefix!1313)) e!1805404))))

(assert (= (and b!2848834 ((_ is Node!10502) (c!459544 prefix!1313))) b!2848995))

(assert (= b!2848996 b!2848997))

(assert (= (and b!2848834 ((_ is Leaf!15980) (c!459544 prefix!1313))) b!2848996))

(declare-fun m!3275955 () Bool)

(assert (=> b!2848995 m!3275955))

(declare-fun m!3275957 () Bool)

(assert (=> b!2848995 m!3275957))

(declare-fun m!3275959 () Bool)

(assert (=> b!2848996 m!3275959))

(assert (=> b!2848834 m!3275819))

(declare-fun e!1805406 () Bool)

(assert (=> b!2848830 (= tp!914762 e!1805406)))

(declare-fun b!2848999 () Bool)

(declare-fun tp!914801 () Bool)

(declare-fun tp!914798 () Bool)

(assert (=> b!2848999 (= e!1805406 (and tp!914801 tp!914798))))

(declare-fun b!2849000 () Bool)

(declare-fun tp!914800 () Bool)

(assert (=> b!2849000 (= e!1805406 tp!914800)))

(declare-fun b!2849001 () Bool)

(declare-fun tp!914797 () Bool)

(declare-fun tp!914799 () Bool)

(assert (=> b!2849001 (= e!1805406 (and tp!914797 tp!914799))))

(declare-fun b!2848998 () Bool)

(assert (=> b!2848998 (= e!1805406 tp_is_empty!14755)))

(assert (= (and b!2848830 ((_ is ElementMatch!8509) (regOne!17531 r!13328))) b!2848998))

(assert (= (and b!2848830 ((_ is Concat!13830) (regOne!17531 r!13328))) b!2848999))

(assert (= (and b!2848830 ((_ is Star!8509) (regOne!17531 r!13328))) b!2849000))

(assert (= (and b!2848830 ((_ is Union!8509) (regOne!17531 r!13328))) b!2849001))

(declare-fun e!1805407 () Bool)

(assert (=> b!2848830 (= tp!914758 e!1805407)))

(declare-fun b!2849007 () Bool)

(declare-fun tp!914806 () Bool)

(declare-fun tp!914803 () Bool)

(assert (=> b!2849007 (= e!1805407 (and tp!914806 tp!914803))))

(declare-fun b!2849008 () Bool)

(declare-fun tp!914805 () Bool)

(assert (=> b!2849008 (= e!1805407 tp!914805)))

(declare-fun b!2849009 () Bool)

(declare-fun tp!914802 () Bool)

(declare-fun tp!914804 () Bool)

(assert (=> b!2849009 (= e!1805407 (and tp!914802 tp!914804))))

(declare-fun b!2849006 () Bool)

(assert (=> b!2849006 (= e!1805407 tp_is_empty!14755)))

(assert (= (and b!2848830 ((_ is ElementMatch!8509) (regTwo!17531 r!13328))) b!2849006))

(assert (= (and b!2848830 ((_ is Concat!13830) (regTwo!17531 r!13328))) b!2849007))

(assert (= (and b!2848830 ((_ is Star!8509) (regTwo!17531 r!13328))) b!2849008))

(assert (= (and b!2848830 ((_ is Union!8509) (regTwo!17531 r!13328))) b!2849009))

(check-sat (not b!2848849) (not b!2848883) (not b!2849009) (not d!825828) (not b!2848834) (not b!2848969) (not d!825846) (not b!2849000) (not d!825834) (not b!2848882) tp_is_empty!14755 (not b!2848898) (not b!2848866) (not b!2848937) (not b!2848967) (not b!2849001) (not b!2849007) (not b!2848905) (not b!2848894) (not b!2848848) (not b!2848886) (not b!2848999) (not b!2848968) (not d!825832) (not b!2848997) (not d!825810) (not b!2848996) (not b!2848971) (not d!825858) (not bm!183609) (not b!2848855) (not bm!183608) (not b!2848972) (not d!825820) (not b!2848975) (not b!2848976) (not b!2848887) (not b!2848977) (not b!2848907) (not b!2848973) (not b!2848867) (not b!2849008) (not b!2848995) (not d!825838) (not d!825822) (not d!825842) (not d!825816))
(check-sat)
(get-model)

(declare-fun d!825862 () Bool)

(declare-fun c!459583 () Bool)

(assert (=> d!825862 (= c!459583 (= (+ 0 1) (size!26263 prefix!1313)))))

(declare-fun e!1805421 () Bool)

(assert (=> d!825862 (= (prefixMatchZipperSequence!767 (derivationStepZipper!412 lt!1013148 (apply!7875 prefix!1313 0)) prefix!1313 (+ 0 1)) e!1805421)))

(declare-fun b!2849047 () Bool)

(assert (=> b!2849047 (= e!1805421 (not (lostCauseZipper!528 (derivationStepZipper!412 lt!1013148 (apply!7875 prefix!1313 0)))))))

(declare-fun b!2849048 () Bool)

(assert (=> b!2849048 (= e!1805421 (prefixMatchZipperSequence!767 (derivationStepZipper!412 (derivationStepZipper!412 lt!1013148 (apply!7875 prefix!1313 0)) (apply!7875 prefix!1313 (+ 0 1))) prefix!1313 (+ 0 1 1)))))

(assert (= (and d!825862 c!459583) b!2849047))

(assert (= (and d!825862 (not c!459583)) b!2849048))

(assert (=> d!825862 m!3275887))

(assert (=> b!2849047 m!3275891))

(declare-fun m!3275969 () Bool)

(assert (=> b!2849047 m!3275969))

(declare-fun m!3275971 () Bool)

(assert (=> b!2849048 m!3275971))

(assert (=> b!2849048 m!3275891))

(assert (=> b!2849048 m!3275971))

(declare-fun m!3275973 () Bool)

(assert (=> b!2849048 m!3275973))

(assert (=> b!2849048 m!3275973))

(declare-fun m!3275975 () Bool)

(assert (=> b!2849048 m!3275975))

(assert (=> b!2848883 d!825862))

(declare-fun d!825864 () Bool)

(assert (=> d!825864 true))

(declare-fun lambda!104658 () Int)

(declare-fun flatMap!200 ((InoxSet Context!5038) Int) (InoxSet Context!5038))

(assert (=> d!825864 (= (derivationStepZipper!412 lt!1013148 (apply!7875 prefix!1313 0)) (flatMap!200 lt!1013148 lambda!104658))))

(declare-fun bs!520067 () Bool)

(assert (= bs!520067 d!825864))

(declare-fun m!3275991 () Bool)

(assert (=> bs!520067 m!3275991))

(assert (=> b!2848883 d!825864))

(declare-fun d!825872 () Bool)

(declare-fun lt!1013174 () C!17200)

(declare-fun apply!7876 (List!33994 Int) C!17200)

(assert (=> d!825872 (= lt!1013174 (apply!7876 (list!12590 prefix!1313) 0))))

(declare-fun apply!7877 (Conc!10502 Int) C!17200)

(assert (=> d!825872 (= lt!1013174 (apply!7877 (c!459544 prefix!1313) 0))))

(declare-fun e!1805432 () Bool)

(assert (=> d!825872 e!1805432))

(declare-fun res!1184344 () Bool)

(assert (=> d!825872 (=> (not res!1184344) (not e!1805432))))

(assert (=> d!825872 (= res!1184344 (<= 0 0))))

(assert (=> d!825872 (= (apply!7875 prefix!1313 0) lt!1013174)))

(declare-fun b!2849064 () Bool)

(assert (=> b!2849064 (= e!1805432 (< 0 (size!26263 prefix!1313)))))

(assert (= (and d!825872 res!1184344) b!2849064))

(assert (=> d!825872 m!3275799))

(assert (=> d!825872 m!3275799))

(declare-fun m!3275993 () Bool)

(assert (=> d!825872 m!3275993))

(declare-fun m!3275995 () Bool)

(assert (=> d!825872 m!3275995))

(assert (=> b!2849064 m!3275887))

(assert (=> b!2848883 d!825872))

(declare-fun d!825874 () Bool)

(declare-fun lt!1013177 () Regex!8509)

(assert (=> d!825874 (validRegex!3379 lt!1013177)))

(declare-fun generalisedUnion!546 (List!33995) Regex!8509)

(declare-fun unfocusZipperList!59 (List!33996) List!33995)

(assert (=> d!825874 (= lt!1013177 (generalisedUnion!546 (unfocusZipperList!59 (toList!1922 (store ((as const (Array Context!5038 Bool)) false) (Context!5039 (Cons!33871 r!13328 Nil!33871)) true)))))))

(assert (=> d!825874 (= (unfocusZipper!180 (toList!1922 (store ((as const (Array Context!5038 Bool)) false) (Context!5039 (Cons!33871 r!13328 Nil!33871)) true))) lt!1013177)))

(declare-fun bs!520068 () Bool)

(assert (= bs!520068 d!825874))

(declare-fun m!3275997 () Bool)

(assert (=> bs!520068 m!3275997))

(assert (=> bs!520068 m!3275925))

(declare-fun m!3275999 () Bool)

(assert (=> bs!520068 m!3275999))

(assert (=> bs!520068 m!3275999))

(declare-fun m!3276001 () Bool)

(assert (=> bs!520068 m!3276001))

(assert (=> b!2848898 d!825874))

(declare-fun d!825876 () Bool)

(declare-fun e!1805433 () Bool)

(assert (=> d!825876 e!1805433))

(declare-fun res!1184345 () Bool)

(assert (=> d!825876 (=> (not res!1184345) (not e!1805433))))

(declare-fun lt!1013178 () List!33996)

(assert (=> d!825876 (= res!1184345 (noDuplicate!557 lt!1013178))))

(assert (=> d!825876 (= lt!1013178 (choose!16760 (store ((as const (Array Context!5038 Bool)) false) (Context!5039 (Cons!33871 r!13328 Nil!33871)) true)))))

(assert (=> d!825876 (= (toList!1922 (store ((as const (Array Context!5038 Bool)) false) (Context!5039 (Cons!33871 r!13328 Nil!33871)) true)) lt!1013178)))

(declare-fun b!2849065 () Bool)

(assert (=> b!2849065 (= e!1805433 (= (content!4655 lt!1013178) (store ((as const (Array Context!5038 Bool)) false) (Context!5039 (Cons!33871 r!13328 Nil!33871)) true)))))

(assert (= (and d!825876 res!1184345) b!2849065))

(declare-fun m!3276003 () Bool)

(assert (=> d!825876 m!3276003))

(assert (=> d!825876 m!3275923))

(declare-fun m!3276005 () Bool)

(assert (=> d!825876 m!3276005))

(declare-fun m!3276007 () Bool)

(assert (=> b!2849065 m!3276007))

(assert (=> b!2848898 d!825876))

(declare-fun d!825878 () Bool)

(declare-fun res!1184352 () Bool)

(declare-fun e!1805436 () Bool)

(assert (=> d!825878 (=> (not res!1184352) (not e!1805436))))

(declare-fun size!26264 (Conc!10502) Int)

(assert (=> d!825878 (= res!1184352 (= (csize!21234 (c!459544 prefix!1313)) (+ (size!26264 (left!25499 (c!459544 prefix!1313))) (size!26264 (right!25829 (c!459544 prefix!1313))))))))

(assert (=> d!825878 (= (inv!45904 (c!459544 prefix!1313)) e!1805436)))

(declare-fun b!2849072 () Bool)

(declare-fun res!1184353 () Bool)

(assert (=> b!2849072 (=> (not res!1184353) (not e!1805436))))

(assert (=> b!2849072 (= res!1184353 (and (not (= (left!25499 (c!459544 prefix!1313)) Empty!10502)) (not (= (right!25829 (c!459544 prefix!1313)) Empty!10502))))))

(declare-fun b!2849073 () Bool)

(declare-fun res!1184354 () Bool)

(assert (=> b!2849073 (=> (not res!1184354) (not e!1805436))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1517 (Conc!10502) Int)

(assert (=> b!2849073 (= res!1184354 (= (cheight!10713 (c!459544 prefix!1313)) (+ (max!0 (height!1517 (left!25499 (c!459544 prefix!1313))) (height!1517 (right!25829 (c!459544 prefix!1313)))) 1)))))

(declare-fun b!2849074 () Bool)

(assert (=> b!2849074 (= e!1805436 (<= 0 (cheight!10713 (c!459544 prefix!1313))))))

(assert (= (and d!825878 res!1184352) b!2849072))

(assert (= (and b!2849072 res!1184353) b!2849073))

(assert (= (and b!2849073 res!1184354) b!2849074))

(declare-fun m!3276009 () Bool)

(assert (=> d!825878 m!3276009))

(declare-fun m!3276011 () Bool)

(assert (=> d!825878 m!3276011))

(declare-fun m!3276013 () Bool)

(assert (=> b!2849073 m!3276013))

(declare-fun m!3276015 () Bool)

(assert (=> b!2849073 m!3276015))

(assert (=> b!2849073 m!3276013))

(assert (=> b!2849073 m!3276015))

(declare-fun m!3276017 () Bool)

(assert (=> b!2849073 m!3276017))

(assert (=> b!2848905 d!825878))

(assert (=> d!825842 d!825838))

(assert (=> d!825842 d!825816))

(assert (=> d!825842 d!825834))

(declare-fun d!825880 () Bool)

(assert (=> d!825880 (= (prefixMatchZipper!243 lt!1013148 (dropList!1028 prefix!1313 0)) (prefixMatchZipperSequence!767 lt!1013148 prefix!1313 0))))

(assert (=> d!825880 true))

(declare-fun _$29!427 () Unit!47605)

(assert (=> d!825880 (= (choose!16762 lt!1013148 prefix!1313 0) _$29!427)))

(declare-fun bs!520069 () Bool)

(assert (= bs!520069 d!825880))

(assert (=> bs!520069 m!3275801))

(assert (=> bs!520069 m!3275801))

(assert (=> bs!520069 m!3275803))

(assert (=> bs!520069 m!3275815))

(assert (=> d!825842 d!825880))

(declare-fun d!825882 () Bool)

(declare-fun size!26265 (List!33994) Int)

(assert (=> d!825882 (= (inv!45907 (xs!13620 (c!459544 prefix!1313))) (<= (size!26265 (innerList!10562 (xs!13620 (c!459544 prefix!1313)))) 2147483647))))

(declare-fun bs!520070 () Bool)

(assert (= bs!520070 d!825882))

(declare-fun m!3276019 () Bool)

(assert (=> bs!520070 m!3276019))

(assert (=> b!2848996 d!825882))

(declare-fun d!825884 () Bool)

(declare-fun lostCauseFct!213 (Regex!8509) Bool)

(assert (=> d!825884 (= (lostCause!731 r!13328) (lostCauseFct!213 r!13328))))

(declare-fun bs!520071 () Bool)

(assert (= bs!520071 d!825884))

(declare-fun m!3276021 () Bool)

(assert (=> bs!520071 m!3276021))

(assert (=> b!2848866 d!825884))

(declare-fun d!825886 () Bool)

(declare-fun c!459591 () Bool)

(assert (=> d!825886 (= c!459591 (isEmpty!18578 (tail!4484 (dropList!1028 prefix!1313 0))))))

(declare-fun e!1805437 () Bool)

(assert (=> d!825886 (= (prefixMatchZipper!243 (derivationStepZipper!412 lt!1013148 (head!6259 (dropList!1028 prefix!1313 0))) (tail!4484 (dropList!1028 prefix!1313 0))) e!1805437)))

(declare-fun b!2849075 () Bool)

(assert (=> b!2849075 (= e!1805437 (not (lostCauseZipper!528 (derivationStepZipper!412 lt!1013148 (head!6259 (dropList!1028 prefix!1313 0))))))))

(declare-fun b!2849076 () Bool)

(assert (=> b!2849076 (= e!1805437 (prefixMatchZipper!243 (derivationStepZipper!412 (derivationStepZipper!412 lt!1013148 (head!6259 (dropList!1028 prefix!1313 0))) (head!6259 (tail!4484 (dropList!1028 prefix!1313 0)))) (tail!4484 (tail!4484 (dropList!1028 prefix!1313 0)))))))

(assert (= (and d!825886 c!459591) b!2849075))

(assert (= (and d!825886 (not c!459591)) b!2849076))

(assert (=> d!825886 m!3275905))

(declare-fun m!3276023 () Bool)

(assert (=> d!825886 m!3276023))

(assert (=> b!2849075 m!3275903))

(declare-fun m!3276025 () Bool)

(assert (=> b!2849075 m!3276025))

(assert (=> b!2849076 m!3275905))

(declare-fun m!3276027 () Bool)

(assert (=> b!2849076 m!3276027))

(assert (=> b!2849076 m!3275903))

(assert (=> b!2849076 m!3276027))

(declare-fun m!3276029 () Bool)

(assert (=> b!2849076 m!3276029))

(assert (=> b!2849076 m!3275905))

(declare-fun m!3276031 () Bool)

(assert (=> b!2849076 m!3276031))

(assert (=> b!2849076 m!3276029))

(assert (=> b!2849076 m!3276031))

(declare-fun m!3276033 () Bool)

(assert (=> b!2849076 m!3276033))

(assert (=> b!2848887 d!825886))

(declare-fun bs!520072 () Bool)

(declare-fun d!825888 () Bool)

(assert (= bs!520072 (and d!825888 d!825864)))

(declare-fun lambda!104659 () Int)

(assert (=> bs!520072 (= (= (head!6259 (dropList!1028 prefix!1313 0)) (apply!7875 prefix!1313 0)) (= lambda!104659 lambda!104658))))

(assert (=> d!825888 true))

(assert (=> d!825888 (= (derivationStepZipper!412 lt!1013148 (head!6259 (dropList!1028 prefix!1313 0))) (flatMap!200 lt!1013148 lambda!104659))))

(declare-fun bs!520073 () Bool)

(assert (= bs!520073 d!825888))

(declare-fun m!3276035 () Bool)

(assert (=> bs!520073 m!3276035))

(assert (=> b!2848887 d!825888))

(declare-fun d!825890 () Bool)

(assert (=> d!825890 (= (head!6259 (dropList!1028 prefix!1313 0)) (h!39290 (dropList!1028 prefix!1313 0)))))

(assert (=> b!2848887 d!825890))

(declare-fun d!825892 () Bool)

(assert (=> d!825892 (= (tail!4484 (dropList!1028 prefix!1313 0)) (t!233021 (dropList!1028 prefix!1313 0)))))

(assert (=> b!2848887 d!825892))

(declare-fun d!825894 () Bool)

(declare-fun lt!1013181 () Int)

(assert (=> d!825894 (= lt!1013181 (size!26265 (list!12590 prefix!1313)))))

(assert (=> d!825894 (= lt!1013181 (size!26264 (c!459544 prefix!1313)))))

(assert (=> d!825894 (= (size!26263 prefix!1313) lt!1013181)))

(declare-fun bs!520074 () Bool)

(assert (= bs!520074 d!825894))

(assert (=> bs!520074 m!3275799))

(assert (=> bs!520074 m!3275799))

(declare-fun m!3276037 () Bool)

(assert (=> bs!520074 m!3276037))

(declare-fun m!3276039 () Bool)

(assert (=> bs!520074 m!3276039))

(assert (=> b!2848894 d!825894))

(declare-fun d!825896 () Bool)

(declare-fun c!459592 () Bool)

(assert (=> d!825896 (= c!459592 ((_ is Node!10502) (left!25499 (c!459544 prefix!1313))))))

(declare-fun e!1805438 () Bool)

(assert (=> d!825896 (= (inv!45901 (left!25499 (c!459544 prefix!1313))) e!1805438)))

(declare-fun b!2849077 () Bool)

(assert (=> b!2849077 (= e!1805438 (inv!45904 (left!25499 (c!459544 prefix!1313))))))

(declare-fun b!2849078 () Bool)

(declare-fun e!1805439 () Bool)

(assert (=> b!2849078 (= e!1805438 e!1805439)))

(declare-fun res!1184355 () Bool)

(assert (=> b!2849078 (= res!1184355 (not ((_ is Leaf!15980) (left!25499 (c!459544 prefix!1313)))))))

(assert (=> b!2849078 (=> res!1184355 e!1805439)))

(declare-fun b!2849079 () Bool)

(assert (=> b!2849079 (= e!1805439 (inv!45905 (left!25499 (c!459544 prefix!1313))))))

(assert (= (and d!825896 c!459592) b!2849077))

(assert (= (and d!825896 (not c!459592)) b!2849078))

(assert (= (and b!2849078 (not res!1184355)) b!2849079))

(declare-fun m!3276041 () Bool)

(assert (=> b!2849077 m!3276041))

(declare-fun m!3276043 () Bool)

(assert (=> b!2849079 m!3276043))

(assert (=> b!2848995 d!825896))

(declare-fun d!825898 () Bool)

(declare-fun c!459593 () Bool)

(assert (=> d!825898 (= c!459593 ((_ is Node!10502) (right!25829 (c!459544 prefix!1313))))))

(declare-fun e!1805440 () Bool)

(assert (=> d!825898 (= (inv!45901 (right!25829 (c!459544 prefix!1313))) e!1805440)))

(declare-fun b!2849080 () Bool)

(assert (=> b!2849080 (= e!1805440 (inv!45904 (right!25829 (c!459544 prefix!1313))))))

(declare-fun b!2849081 () Bool)

(declare-fun e!1805441 () Bool)

(assert (=> b!2849081 (= e!1805440 e!1805441)))

(declare-fun res!1184356 () Bool)

(assert (=> b!2849081 (= res!1184356 (not ((_ is Leaf!15980) (right!25829 (c!459544 prefix!1313)))))))

(assert (=> b!2849081 (=> res!1184356 e!1805441)))

(declare-fun b!2849082 () Bool)

(assert (=> b!2849082 (= e!1805441 (inv!45905 (right!25829 (c!459544 prefix!1313))))))

(assert (= (and d!825898 c!459593) b!2849080))

(assert (= (and d!825898 (not c!459593)) b!2849081))

(assert (= (and b!2849081 (not res!1184356)) b!2849082))

(declare-fun m!3276045 () Bool)

(assert (=> b!2849080 m!3276045))

(declare-fun m!3276047 () Bool)

(assert (=> b!2849082 m!3276047))

(assert (=> b!2848995 d!825898))

(declare-fun bs!520076 () Bool)

(declare-fun b!2849089 () Bool)

(declare-fun d!825900 () Bool)

(assert (= bs!520076 (and b!2849089 d!825900)))

(declare-fun lambda!104676 () Int)

(declare-fun lambda!104675 () Int)

(assert (=> bs!520076 (not (= lambda!104676 lambda!104675))))

(declare-fun bs!520077 () Bool)

(declare-fun b!2849090 () Bool)

(assert (= bs!520077 (and b!2849090 d!825900)))

(declare-fun lambda!104677 () Int)

(assert (=> bs!520077 (not (= lambda!104677 lambda!104675))))

(declare-fun bs!520078 () Bool)

(assert (= bs!520078 (and b!2849090 b!2849089)))

(assert (=> bs!520078 (= lambda!104677 lambda!104676)))

(declare-fun c!459604 () Bool)

(declare-fun lt!1013204 () List!33996)

(declare-fun call!183633 () Bool)

(declare-fun bm!183628 () Bool)

(declare-fun lt!1013203 () List!33996)

(declare-fun exists!1035 (List!33996 Int) Bool)

(assert (=> bm!183628 (= call!183633 (exists!1035 (ite c!459604 lt!1013203 lt!1013204) (ite c!459604 lambda!104676 lambda!104677)))))

(declare-fun e!1805448 () Unit!47605)

(declare-fun Unit!47607 () Unit!47605)

(assert (=> b!2849089 (= e!1805448 Unit!47607)))

(declare-fun call!183632 () List!33996)

(assert (=> b!2849089 (= lt!1013203 call!183632)))

(declare-fun lt!1013198 () Unit!47605)

(declare-fun lemmaNotForallThenExists!118 (List!33996 Int) Unit!47605)

(assert (=> b!2849089 (= lt!1013198 (lemmaNotForallThenExists!118 lt!1013203 lambda!104675))))

(assert (=> b!2849089 call!183633))

(declare-fun lt!1013200 () Unit!47605)

(assert (=> b!2849089 (= lt!1013200 lt!1013198)))

(declare-fun bm!183627 () Bool)

(assert (=> bm!183627 (= call!183632 (toList!1922 lt!1013148))))

(declare-fun lt!1013202 () Bool)

(declare-datatypes ((Option!6301 0))(
  ( (None!6300) (Some!6300 (v!34422 List!33994)) )
))
(declare-fun isEmpty!18580 (Option!6301) Bool)

(declare-fun getLanguageWitness!232 ((InoxSet Context!5038)) Option!6301)

(assert (=> d!825900 (= lt!1013202 (isEmpty!18580 (getLanguageWitness!232 lt!1013148)))))

(declare-fun forall!6953 ((InoxSet Context!5038) Int) Bool)

(assert (=> d!825900 (= lt!1013202 (forall!6953 lt!1013148 lambda!104675))))

(declare-fun lt!1013199 () Unit!47605)

(assert (=> d!825900 (= lt!1013199 e!1805448)))

(assert (=> d!825900 (= c!459604 (not (forall!6953 lt!1013148 lambda!104675)))))

(assert (=> d!825900 (= (lostCauseZipper!528 lt!1013148) lt!1013202)))

(declare-fun Unit!47608 () Unit!47605)

(assert (=> b!2849090 (= e!1805448 Unit!47608)))

(assert (=> b!2849090 (= lt!1013204 call!183632)))

(declare-fun lt!1013201 () Unit!47605)

(declare-fun lemmaForallThenNotExists!118 (List!33996 Int) Unit!47605)

(assert (=> b!2849090 (= lt!1013201 (lemmaForallThenNotExists!118 lt!1013204 lambda!104675))))

(assert (=> b!2849090 (not call!183633)))

(declare-fun lt!1013205 () Unit!47605)

(assert (=> b!2849090 (= lt!1013205 lt!1013201)))

(assert (= (and d!825900 c!459604) b!2849089))

(assert (= (and d!825900 (not c!459604)) b!2849090))

(assert (= (or b!2849089 b!2849090) bm!183627))

(assert (= (or b!2849089 b!2849090) bm!183628))

(declare-fun m!3276051 () Bool)

(assert (=> d!825900 m!3276051))

(assert (=> d!825900 m!3276051))

(declare-fun m!3276053 () Bool)

(assert (=> d!825900 m!3276053))

(declare-fun m!3276055 () Bool)

(assert (=> d!825900 m!3276055))

(assert (=> d!825900 m!3276055))

(declare-fun m!3276057 () Bool)

(assert (=> b!2849090 m!3276057))

(assert (=> bm!183627 m!3275809))

(declare-fun m!3276059 () Bool)

(assert (=> b!2849089 m!3276059))

(declare-fun m!3276061 () Bool)

(assert (=> bm!183628 m!3276061))

(assert (=> b!2848882 d!825900))

(declare-fun d!825904 () Bool)

(declare-fun c!459605 () Bool)

(assert (=> d!825904 (= c!459605 (isEmpty!18578 (tail!4484 lt!1013150)))))

(declare-fun e!1805451 () Bool)

(assert (=> d!825904 (= (prefixMatch!819 (derivativeStep!2256 r!13328 (head!6259 lt!1013150)) (tail!4484 lt!1013150)) e!1805451)))

(declare-fun b!2849093 () Bool)

(assert (=> b!2849093 (= e!1805451 (not (lostCause!731 (derivativeStep!2256 r!13328 (head!6259 lt!1013150)))))))

(declare-fun b!2849094 () Bool)

(assert (=> b!2849094 (= e!1805451 (prefixMatch!819 (derivativeStep!2256 (derivativeStep!2256 r!13328 (head!6259 lt!1013150)) (head!6259 (tail!4484 lt!1013150))) (tail!4484 (tail!4484 lt!1013150))))))

(assert (= (and d!825904 c!459605) b!2849093))

(assert (= (and d!825904 (not c!459605)) b!2849094))

(assert (=> d!825904 m!3275833))

(declare-fun m!3276063 () Bool)

(assert (=> d!825904 m!3276063))

(assert (=> b!2849093 m!3275873))

(declare-fun m!3276065 () Bool)

(assert (=> b!2849093 m!3276065))

(assert (=> b!2849094 m!3275833))

(declare-fun m!3276067 () Bool)

(assert (=> b!2849094 m!3276067))

(assert (=> b!2849094 m!3275873))

(assert (=> b!2849094 m!3276067))

(declare-fun m!3276069 () Bool)

(assert (=> b!2849094 m!3276069))

(assert (=> b!2849094 m!3275833))

(declare-fun m!3276071 () Bool)

(assert (=> b!2849094 m!3276071))

(assert (=> b!2849094 m!3276069))

(assert (=> b!2849094 m!3276071))

(declare-fun m!3276073 () Bool)

(assert (=> b!2849094 m!3276073))

(assert (=> b!2848867 d!825904))

(declare-fun b!2849120 () Bool)

(declare-fun e!1805469 () Regex!8509)

(assert (=> b!2849120 (= e!1805469 (ite (= (head!6259 lt!1013150) (c!459543 r!13328)) EmptyExpr!8509 EmptyLang!8509))))

(declare-fun bm!183637 () Bool)

(declare-fun call!183644 () Regex!8509)

(declare-fun call!183643 () Regex!8509)

(assert (=> bm!183637 (= call!183644 call!183643)))

(declare-fun b!2849121 () Bool)

(declare-fun e!1805467 () Regex!8509)

(declare-fun call!183642 () Regex!8509)

(assert (=> b!2849121 (= e!1805467 (Union!8509 call!183642 call!183643))))

(declare-fun d!825906 () Bool)

(declare-fun lt!1013224 () Regex!8509)

(assert (=> d!825906 (validRegex!3379 lt!1013224)))

(declare-fun e!1805466 () Regex!8509)

(assert (=> d!825906 (= lt!1013224 e!1805466)))

(declare-fun c!459625 () Bool)

(assert (=> d!825906 (= c!459625 (or ((_ is EmptyExpr!8509) r!13328) ((_ is EmptyLang!8509) r!13328)))))

(assert (=> d!825906 (validRegex!3379 r!13328)))

(assert (=> d!825906 (= (derivativeStep!2256 r!13328 (head!6259 lt!1013150)) lt!1013224)))

(declare-fun c!459622 () Bool)

(declare-fun c!459624 () Bool)

(declare-fun bm!183638 () Bool)

(assert (=> bm!183638 (= call!183643 (derivativeStep!2256 (ite c!459624 (regTwo!17531 r!13328) (ite c!459622 (regTwo!17530 r!13328) (regOne!17530 r!13328))) (head!6259 lt!1013150)))))

(declare-fun b!2849122 () Bool)

(declare-fun e!1805468 () Regex!8509)

(assert (=> b!2849122 (= e!1805467 e!1805468)))

(declare-fun c!459623 () Bool)

(assert (=> b!2849122 (= c!459623 ((_ is Star!8509) r!13328))))

(declare-fun b!2849123 () Bool)

(declare-fun e!1805465 () Regex!8509)

(assert (=> b!2849123 (= e!1805465 (Union!8509 (Concat!13830 call!183644 (regTwo!17530 r!13328)) EmptyLang!8509))))

(declare-fun b!2849124 () Bool)

(assert (=> b!2849124 (= c!459622 (nullable!2633 (regOne!17530 r!13328)))))

(assert (=> b!2849124 (= e!1805468 e!1805465)))

(declare-fun b!2849125 () Bool)

(assert (=> b!2849125 (= c!459624 ((_ is Union!8509) r!13328))))

(assert (=> b!2849125 (= e!1805469 e!1805467)))

(declare-fun bm!183639 () Bool)

(assert (=> bm!183639 (= call!183642 (derivativeStep!2256 (ite c!459624 (regOne!17531 r!13328) (ite c!459623 (reg!8838 r!13328) (regOne!17530 r!13328))) (head!6259 lt!1013150)))))

(declare-fun call!183645 () Regex!8509)

(declare-fun b!2849126 () Bool)

(assert (=> b!2849126 (= e!1805465 (Union!8509 (Concat!13830 call!183645 (regTwo!17530 r!13328)) call!183644))))

(declare-fun bm!183640 () Bool)

(assert (=> bm!183640 (= call!183645 call!183642)))

(declare-fun b!2849127 () Bool)

(assert (=> b!2849127 (= e!1805468 (Concat!13830 call!183645 r!13328))))

(declare-fun b!2849128 () Bool)

(assert (=> b!2849128 (= e!1805466 EmptyLang!8509)))

(declare-fun b!2849129 () Bool)

(assert (=> b!2849129 (= e!1805466 e!1805469)))

(declare-fun c!459626 () Bool)

(assert (=> b!2849129 (= c!459626 ((_ is ElementMatch!8509) r!13328))))

(assert (= (and d!825906 c!459625) b!2849128))

(assert (= (and d!825906 (not c!459625)) b!2849129))

(assert (= (and b!2849129 c!459626) b!2849120))

(assert (= (and b!2849129 (not c!459626)) b!2849125))

(assert (= (and b!2849125 c!459624) b!2849121))

(assert (= (and b!2849125 (not c!459624)) b!2849122))

(assert (= (and b!2849122 c!459623) b!2849127))

(assert (= (and b!2849122 (not c!459623)) b!2849124))

(assert (= (and b!2849124 c!459622) b!2849126))

(assert (= (and b!2849124 (not c!459622)) b!2849123))

(assert (= (or b!2849126 b!2849123) bm!183637))

(assert (= (or b!2849127 b!2849126) bm!183640))

(assert (= (or b!2849121 bm!183640) bm!183639))

(assert (= (or b!2849121 bm!183637) bm!183638))

(declare-fun m!3276083 () Bool)

(assert (=> d!825906 m!3276083))

(assert (=> d!825906 m!3275795))

(assert (=> bm!183638 m!3275829))

(declare-fun m!3276085 () Bool)

(assert (=> bm!183638 m!3276085))

(declare-fun m!3276087 () Bool)

(assert (=> b!2849124 m!3276087))

(assert (=> bm!183639 m!3275829))

(declare-fun m!3276089 () Bool)

(assert (=> bm!183639 m!3276089))

(assert (=> b!2848867 d!825906))

(declare-fun d!825912 () Bool)

(assert (=> d!825912 (= (head!6259 lt!1013150) (h!39290 lt!1013150))))

(assert (=> b!2848867 d!825912))

(declare-fun d!825914 () Bool)

(assert (=> d!825914 (= (tail!4484 lt!1013150) (t!233021 lt!1013150))))

(assert (=> b!2848867 d!825914))

(declare-fun d!825916 () Bool)

(declare-fun c!459633 () Bool)

(assert (=> d!825916 (= c!459633 ((_ is Nil!33872) lt!1013159))))

(declare-fun e!1805476 () (InoxSet Context!5038))

(assert (=> d!825916 (= (content!4655 lt!1013159) e!1805476)))

(declare-fun b!2849134 () Bool)

(assert (=> b!2849134 (= e!1805476 ((as const (Array Context!5038 Bool)) false))))

(declare-fun b!2849135 () Bool)

(assert (=> b!2849135 (= e!1805476 ((_ map or) (store ((as const (Array Context!5038 Bool)) false) (h!39292 lt!1013159) true) (content!4655 (t!233023 lt!1013159))))))

(assert (= (and d!825916 c!459633) b!2849134))

(assert (= (and d!825916 (not c!459633)) b!2849135))

(declare-fun m!3276091 () Bool)

(assert (=> b!2849135 m!3276091))

(declare-fun m!3276093 () Bool)

(assert (=> b!2849135 m!3276093))

(assert (=> b!2848855 d!825916))

(assert (=> b!2848886 d!825900))

(assert (=> b!2848848 d!825900))

(declare-fun d!825918 () Bool)

(declare-fun c!459634 () Bool)

(assert (=> d!825918 (= c!459634 (isEmpty!18578 (tail!4484 lt!1013150)))))

(declare-fun e!1805477 () Bool)

(assert (=> d!825918 (= (prefixMatchZipper!243 (derivationStepZipper!412 lt!1013148 (head!6259 lt!1013150)) (tail!4484 lt!1013150)) e!1805477)))

(declare-fun b!2849136 () Bool)

(assert (=> b!2849136 (= e!1805477 (not (lostCauseZipper!528 (derivationStepZipper!412 lt!1013148 (head!6259 lt!1013150)))))))

(declare-fun b!2849137 () Bool)

(assert (=> b!2849137 (= e!1805477 (prefixMatchZipper!243 (derivationStepZipper!412 (derivationStepZipper!412 lt!1013148 (head!6259 lt!1013150)) (head!6259 (tail!4484 lt!1013150))) (tail!4484 (tail!4484 lt!1013150))))))

(assert (= (and d!825918 c!459634) b!2849136))

(assert (= (and d!825918 (not c!459634)) b!2849137))

(assert (=> d!825918 m!3275833))

(assert (=> d!825918 m!3276063))

(assert (=> b!2849136 m!3275831))

(declare-fun m!3276095 () Bool)

(assert (=> b!2849136 m!3276095))

(assert (=> b!2849137 m!3275833))

(assert (=> b!2849137 m!3276067))

(assert (=> b!2849137 m!3275831))

(assert (=> b!2849137 m!3276067))

(declare-fun m!3276097 () Bool)

(assert (=> b!2849137 m!3276097))

(assert (=> b!2849137 m!3275833))

(assert (=> b!2849137 m!3276071))

(assert (=> b!2849137 m!3276097))

(assert (=> b!2849137 m!3276071))

(declare-fun m!3276099 () Bool)

(assert (=> b!2849137 m!3276099))

(assert (=> b!2848849 d!825918))

(declare-fun bs!520080 () Bool)

(declare-fun d!825920 () Bool)

(assert (= bs!520080 (and d!825920 d!825864)))

(declare-fun lambda!104690 () Int)

(assert (=> bs!520080 (= (= (head!6259 lt!1013150) (apply!7875 prefix!1313 0)) (= lambda!104690 lambda!104658))))

(declare-fun bs!520081 () Bool)

(assert (= bs!520081 (and d!825920 d!825888)))

(assert (=> bs!520081 (= (= (head!6259 lt!1013150) (head!6259 (dropList!1028 prefix!1313 0))) (= lambda!104690 lambda!104659))))

(assert (=> d!825920 true))

(assert (=> d!825920 (= (derivationStepZipper!412 lt!1013148 (head!6259 lt!1013150)) (flatMap!200 lt!1013148 lambda!104690))))

(declare-fun bs!520082 () Bool)

(assert (= bs!520082 d!825920))

(declare-fun m!3276101 () Bool)

(assert (=> bs!520082 m!3276101))

(assert (=> b!2848849 d!825920))

(assert (=> b!2848849 d!825912))

(assert (=> b!2848849 d!825914))

(declare-fun d!825922 () Bool)

(assert (=> d!825922 (= (isEmpty!18578 (dropList!1028 prefix!1313 0)) ((_ is Nil!33870) (dropList!1028 prefix!1313 0)))))

(assert (=> d!825838 d!825922))

(declare-fun d!825924 () Bool)

(declare-fun nullableFct!797 (Regex!8509) Bool)

(assert (=> d!825924 (= (nullable!2633 (reg!8838 r!13328)) (nullableFct!797 (reg!8838 r!13328)))))

(declare-fun bs!520083 () Bool)

(assert (= bs!520083 d!825924))

(declare-fun m!3276103 () Bool)

(assert (=> bs!520083 m!3276103))

(assert (=> b!2848937 d!825924))

(declare-fun b!2849140 () Bool)

(declare-fun e!1805485 () Bool)

(declare-fun e!1805482 () Bool)

(assert (=> b!2849140 (= e!1805485 e!1805482)))

(declare-fun c!459637 () Bool)

(assert (=> b!2849140 (= c!459637 ((_ is Union!8509) (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))))))

(declare-fun b!2849141 () Bool)

(declare-fun res!1184364 () Bool)

(declare-fun e!1805484 () Bool)

(assert (=> b!2849141 (=> res!1184364 e!1805484)))

(assert (=> b!2849141 (= res!1184364 (not ((_ is Concat!13830) (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328))))))))

(assert (=> b!2849141 (= e!1805482 e!1805484)))

(declare-fun bm!183647 () Bool)

(declare-fun call!183653 () Bool)

(assert (=> bm!183647 (= call!183653 (validRegex!3379 (ite c!459637 (regOne!17531 (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))) (regTwo!17530 (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))))))))

(declare-fun b!2849142 () Bool)

(declare-fun e!1805483 () Bool)

(declare-fun call!183654 () Bool)

(assert (=> b!2849142 (= e!1805483 call!183654)))

(declare-fun b!2849143 () Bool)

(declare-fun e!1805480 () Bool)

(assert (=> b!2849143 (= e!1805484 e!1805480)))

(declare-fun res!1184362 () Bool)

(assert (=> b!2849143 (=> (not res!1184362) (not e!1805480))))

(assert (=> b!2849143 (= res!1184362 call!183654)))

(declare-fun b!2849144 () Bool)

(declare-fun res!1184360 () Bool)

(assert (=> b!2849144 (=> (not res!1184360) (not e!1805483))))

(assert (=> b!2849144 (= res!1184360 call!183653)))

(assert (=> b!2849144 (= e!1805482 e!1805483)))

(declare-fun b!2849145 () Bool)

(declare-fun e!1805479 () Bool)

(declare-fun call!183652 () Bool)

(assert (=> b!2849145 (= e!1805479 call!183652)))

(declare-fun d!825926 () Bool)

(declare-fun res!1184363 () Bool)

(declare-fun e!1805481 () Bool)

(assert (=> d!825926 (=> res!1184363 e!1805481)))

(assert (=> d!825926 (= res!1184363 ((_ is ElementMatch!8509) (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))))))

(assert (=> d!825926 (= (validRegex!3379 (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))) e!1805481)))

(declare-fun bm!183648 () Bool)

(declare-fun c!459636 () Bool)

(assert (=> bm!183648 (= call!183652 (validRegex!3379 (ite c!459636 (reg!8838 (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))) (ite c!459637 (regTwo!17531 (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))) (regOne!17530 (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328))))))))))

(declare-fun b!2849146 () Bool)

(assert (=> b!2849146 (= e!1805481 e!1805485)))

(assert (=> b!2849146 (= c!459636 ((_ is Star!8509) (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))))))

(declare-fun bm!183649 () Bool)

(assert (=> bm!183649 (= call!183654 call!183652)))

(declare-fun b!2849147 () Bool)

(assert (=> b!2849147 (= e!1805480 call!183653)))

(declare-fun b!2849148 () Bool)

(assert (=> b!2849148 (= e!1805485 e!1805479)))

(declare-fun res!1184361 () Bool)

(assert (=> b!2849148 (= res!1184361 (not (nullable!2633 (reg!8838 (ite c!459575 (reg!8838 r!13328) (ite c!459576 (regTwo!17531 r!13328) (regOne!17530 r!13328)))))))))

(assert (=> b!2849148 (=> (not res!1184361) (not e!1805479))))

(assert (= (and d!825926 (not res!1184363)) b!2849146))

(assert (= (and b!2849146 c!459636) b!2849148))

(assert (= (and b!2849146 (not c!459636)) b!2849140))

(assert (= (and b!2849148 res!1184361) b!2849145))

(assert (= (and b!2849140 c!459637) b!2849144))

(assert (= (and b!2849140 (not c!459637)) b!2849141))

(assert (= (and b!2849144 res!1184360) b!2849142))

(assert (= (and b!2849141 (not res!1184364)) b!2849143))

(assert (= (and b!2849143 res!1184362) b!2849147))

(assert (= (or b!2849142 b!2849143) bm!183649))

(assert (= (or b!2849144 b!2849147) bm!183647))

(assert (= (or b!2849145 bm!183649) bm!183648))

(declare-fun m!3276105 () Bool)

(assert (=> bm!183647 m!3276105))

(declare-fun m!3276107 () Bool)

(assert (=> bm!183648 m!3276107))

(declare-fun m!3276109 () Bool)

(assert (=> b!2849148 m!3276109))

(assert (=> bm!183609 d!825926))

(declare-fun b!2849170 () Bool)

(declare-fun e!1805501 () List!33994)

(assert (=> b!2849170 (= e!1805501 Nil!33870)))

(declare-fun b!2849172 () Bool)

(declare-fun e!1805502 () List!33994)

(declare-fun list!12593 (IArray!21009) List!33994)

(assert (=> b!2849172 (= e!1805502 (list!12593 (xs!13620 (c!459544 prefix!1313))))))

(declare-fun d!825928 () Bool)

(declare-fun c!459644 () Bool)

(assert (=> d!825928 (= c!459644 ((_ is Empty!10502) (c!459544 prefix!1313)))))

(assert (=> d!825928 (= (list!12591 (c!459544 prefix!1313)) e!1805501)))

(declare-fun b!2849173 () Bool)

(declare-fun ++!8126 (List!33994 List!33994) List!33994)

(assert (=> b!2849173 (= e!1805502 (++!8126 (list!12591 (left!25499 (c!459544 prefix!1313))) (list!12591 (right!25829 (c!459544 prefix!1313)))))))

(declare-fun b!2849171 () Bool)

(assert (=> b!2849171 (= e!1805501 e!1805502)))

(declare-fun c!459645 () Bool)

(assert (=> b!2849171 (= c!459645 ((_ is Leaf!15980) (c!459544 prefix!1313)))))

(assert (= (and d!825928 c!459644) b!2849170))

(assert (= (and d!825928 (not c!459644)) b!2849171))

(assert (= (and b!2849171 c!459645) b!2849172))

(assert (= (and b!2849171 (not c!459645)) b!2849173))

(declare-fun m!3276129 () Bool)

(assert (=> b!2849172 m!3276129))

(declare-fun m!3276131 () Bool)

(assert (=> b!2849173 m!3276131))

(declare-fun m!3276133 () Bool)

(assert (=> b!2849173 m!3276133))

(assert (=> b!2849173 m!3276131))

(assert (=> b!2849173 m!3276133))

(declare-fun m!3276135 () Bool)

(assert (=> b!2849173 m!3276135))

(assert (=> d!825820 d!825928))

(declare-fun b!2849205 () Bool)

(declare-fun e!1805528 () Int)

(declare-fun e!1805529 () Int)

(assert (=> b!2849205 (= e!1805528 e!1805529)))

(declare-fun c!459656 () Bool)

(declare-fun call!183660 () Int)

(assert (=> b!2849205 (= c!459656 (>= 0 call!183660))))

(declare-fun b!2849206 () Bool)

(declare-fun e!1805525 () List!33994)

(declare-fun e!1805527 () List!33994)

(assert (=> b!2849206 (= e!1805525 e!1805527)))

(declare-fun c!459658 () Bool)

(assert (=> b!2849206 (= c!459658 (<= 0 0))))

(declare-fun b!2849207 () Bool)

(assert (=> b!2849207 (= e!1805528 call!183660)))

(declare-fun b!2849208 () Bool)

(assert (=> b!2849208 (= e!1805525 Nil!33870)))

(declare-fun b!2849209 () Bool)

(assert (=> b!2849209 (= e!1805529 0)))

(declare-fun b!2849210 () Bool)

(assert (=> b!2849210 (= e!1805529 (- call!183660 0))))

(declare-fun b!2849211 () Bool)

(assert (=> b!2849211 (= e!1805527 (drop!1813 (t!233021 (list!12591 (c!459544 prefix!1313))) (- 0 1)))))

(declare-fun bm!183655 () Bool)

(assert (=> bm!183655 (= call!183660 (size!26265 (list!12591 (c!459544 prefix!1313))))))

(declare-fun b!2849212 () Bool)

(assert (=> b!2849212 (= e!1805527 (list!12591 (c!459544 prefix!1313)))))

(declare-fun b!2849213 () Bool)

(declare-fun e!1805526 () Bool)

(declare-fun lt!1013241 () List!33994)

(assert (=> b!2849213 (= e!1805526 (= (size!26265 lt!1013241) e!1805528))))

(declare-fun c!459657 () Bool)

(assert (=> b!2849213 (= c!459657 (<= 0 0))))

(declare-fun d!825934 () Bool)

(assert (=> d!825934 e!1805526))

(declare-fun res!1184384 () Bool)

(assert (=> d!825934 (=> (not res!1184384) (not e!1805526))))

(declare-fun content!4656 (List!33994) (InoxSet C!17200))

(assert (=> d!825934 (= res!1184384 (= ((_ map implies) (content!4656 lt!1013241) (content!4656 (list!12591 (c!459544 prefix!1313)))) ((as const (InoxSet C!17200)) true)))))

(assert (=> d!825934 (= lt!1013241 e!1805525)))

(declare-fun c!459655 () Bool)

(assert (=> d!825934 (= c!459655 ((_ is Nil!33870) (list!12591 (c!459544 prefix!1313))))))

(assert (=> d!825934 (= (drop!1813 (list!12591 (c!459544 prefix!1313)) 0) lt!1013241)))

(assert (= (and d!825934 c!459655) b!2849208))

(assert (= (and d!825934 (not c!459655)) b!2849206))

(assert (= (and b!2849206 c!459658) b!2849212))

(assert (= (and b!2849206 (not c!459658)) b!2849211))

(assert (= (and d!825934 res!1184384) b!2849213))

(assert (= (and b!2849213 c!459657) b!2849207))

(assert (= (and b!2849213 (not c!459657)) b!2849205))

(assert (= (and b!2849205 c!459656) b!2849209))

(assert (= (and b!2849205 (not c!459656)) b!2849210))

(assert (= (or b!2849207 b!2849205 b!2849210) bm!183655))

(declare-fun m!3276159 () Bool)

(assert (=> b!2849211 m!3276159))

(assert (=> bm!183655 m!3275841))

(declare-fun m!3276161 () Bool)

(assert (=> bm!183655 m!3276161))

(declare-fun m!3276163 () Bool)

(assert (=> b!2849213 m!3276163))

(declare-fun m!3276165 () Bool)

(assert (=> d!825934 m!3276165))

(assert (=> d!825934 m!3275841))

(declare-fun m!3276167 () Bool)

(assert (=> d!825934 m!3276167))

(assert (=> d!825816 d!825934))

(assert (=> d!825816 d!825928))

(declare-fun d!825942 () Bool)

(assert (=> d!825942 (= (isEmpty!18578 lt!1013150) ((_ is Nil!33870) lt!1013150))))

(assert (=> d!825810 d!825942))

(assert (=> d!825846 d!825854))

(declare-fun b!2849214 () Bool)

(declare-fun e!1805536 () Bool)

(declare-fun e!1805533 () Bool)

(assert (=> b!2849214 (= e!1805536 e!1805533)))

(declare-fun c!459660 () Bool)

(assert (=> b!2849214 (= c!459660 ((_ is Union!8509) (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))))))

(declare-fun b!2849215 () Bool)

(declare-fun res!1184389 () Bool)

(declare-fun e!1805535 () Bool)

(assert (=> b!2849215 (=> res!1184389 e!1805535)))

(assert (=> b!2849215 (= res!1184389 (not ((_ is Concat!13830) (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328)))))))

(assert (=> b!2849215 (= e!1805533 e!1805535)))

(declare-fun bm!183656 () Bool)

(declare-fun call!183662 () Bool)

(assert (=> bm!183656 (= call!183662 (validRegex!3379 (ite c!459660 (regOne!17531 (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))) (regTwo!17530 (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))))))))

(declare-fun b!2849216 () Bool)

(declare-fun e!1805534 () Bool)

(declare-fun call!183663 () Bool)

(assert (=> b!2849216 (= e!1805534 call!183663)))

(declare-fun b!2849217 () Bool)

(declare-fun e!1805531 () Bool)

(assert (=> b!2849217 (= e!1805535 e!1805531)))

(declare-fun res!1184387 () Bool)

(assert (=> b!2849217 (=> (not res!1184387) (not e!1805531))))

(assert (=> b!2849217 (= res!1184387 call!183663)))

(declare-fun b!2849218 () Bool)

(declare-fun res!1184385 () Bool)

(assert (=> b!2849218 (=> (not res!1184385) (not e!1805534))))

(assert (=> b!2849218 (= res!1184385 call!183662)))

(assert (=> b!2849218 (= e!1805533 e!1805534)))

(declare-fun b!2849219 () Bool)

(declare-fun e!1805530 () Bool)

(declare-fun call!183661 () Bool)

(assert (=> b!2849219 (= e!1805530 call!183661)))

(declare-fun d!825944 () Bool)

(declare-fun res!1184388 () Bool)

(declare-fun e!1805532 () Bool)

(assert (=> d!825944 (=> res!1184388 e!1805532)))

(assert (=> d!825944 (= res!1184388 ((_ is ElementMatch!8509) (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))))))

(assert (=> d!825944 (= (validRegex!3379 (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))) e!1805532)))

(declare-fun bm!183657 () Bool)

(declare-fun c!459659 () Bool)

(assert (=> bm!183657 (= call!183661 (validRegex!3379 (ite c!459659 (reg!8838 (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))) (ite c!459660 (regTwo!17531 (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))) (regOne!17530 (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328)))))))))

(declare-fun b!2849220 () Bool)

(assert (=> b!2849220 (= e!1805532 e!1805536)))

(assert (=> b!2849220 (= c!459659 ((_ is Star!8509) (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))))))

(declare-fun bm!183658 () Bool)

(assert (=> bm!183658 (= call!183663 call!183661)))

(declare-fun b!2849221 () Bool)

(assert (=> b!2849221 (= e!1805531 call!183662)))

(declare-fun b!2849222 () Bool)

(assert (=> b!2849222 (= e!1805536 e!1805530)))

(declare-fun res!1184386 () Bool)

(assert (=> b!2849222 (= res!1184386 (not (nullable!2633 (reg!8838 (ite c!459576 (regOne!17531 r!13328) (regTwo!17530 r!13328))))))))

(assert (=> b!2849222 (=> (not res!1184386) (not e!1805530))))

(assert (= (and d!825944 (not res!1184388)) b!2849220))

(assert (= (and b!2849220 c!459659) b!2849222))

(assert (= (and b!2849220 (not c!459659)) b!2849214))

(assert (= (and b!2849222 res!1184386) b!2849219))

(assert (= (and b!2849214 c!459660) b!2849218))

(assert (= (and b!2849214 (not c!459660)) b!2849215))

(assert (= (and b!2849218 res!1184385) b!2849216))

(assert (= (and b!2849215 (not res!1184389)) b!2849217))

(assert (= (and b!2849217 res!1184387) b!2849221))

(assert (= (or b!2849216 b!2849217) bm!183658))

(assert (= (or b!2849218 b!2849221) bm!183656))

(assert (= (or b!2849219 bm!183658) bm!183657))

(declare-fun m!3276169 () Bool)

(assert (=> bm!183656 m!3276169))

(declare-fun m!3276171 () Bool)

(assert (=> bm!183657 m!3276171))

(declare-fun m!3276173 () Bool)

(assert (=> b!2849222 m!3276173))

(assert (=> bm!183608 d!825944))

(declare-fun b!2849255 () Bool)

(declare-fun res!1184405 () Bool)

(declare-fun e!1805552 () Bool)

(assert (=> b!2849255 (=> (not res!1184405) (not e!1805552))))

(assert (=> b!2849255 (= res!1184405 (isBalanced!3163 (left!25499 (c!459544 prefix!1313))))))

(declare-fun b!2849256 () Bool)

(declare-fun res!1184404 () Bool)

(assert (=> b!2849256 (=> (not res!1184404) (not e!1805552))))

(assert (=> b!2849256 (= res!1184404 (isBalanced!3163 (right!25829 (c!459544 prefix!1313))))))

(declare-fun b!2849257 () Bool)

(declare-fun isEmpty!18582 (Conc!10502) Bool)

(assert (=> b!2849257 (= e!1805552 (not (isEmpty!18582 (right!25829 (c!459544 prefix!1313)))))))

(declare-fun d!825946 () Bool)

(declare-fun res!1184402 () Bool)

(declare-fun e!1805551 () Bool)

(assert (=> d!825946 (=> res!1184402 e!1805551)))

(assert (=> d!825946 (= res!1184402 (not ((_ is Node!10502) (c!459544 prefix!1313))))))

(assert (=> d!825946 (= (isBalanced!3163 (c!459544 prefix!1313)) e!1805551)))

(declare-fun b!2849258 () Bool)

(declare-fun res!1184403 () Bool)

(assert (=> b!2849258 (=> (not res!1184403) (not e!1805552))))

(assert (=> b!2849258 (= res!1184403 (not (isEmpty!18582 (left!25499 (c!459544 prefix!1313)))))))

(declare-fun b!2849259 () Bool)

(assert (=> b!2849259 (= e!1805551 e!1805552)))

(declare-fun res!1184407 () Bool)

(assert (=> b!2849259 (=> (not res!1184407) (not e!1805552))))

(assert (=> b!2849259 (= res!1184407 (<= (- 1) (- (height!1517 (left!25499 (c!459544 prefix!1313))) (height!1517 (right!25829 (c!459544 prefix!1313))))))))

(declare-fun b!2849260 () Bool)

(declare-fun res!1184406 () Bool)

(assert (=> b!2849260 (=> (not res!1184406) (not e!1805552))))

(assert (=> b!2849260 (= res!1184406 (<= (- (height!1517 (left!25499 (c!459544 prefix!1313))) (height!1517 (right!25829 (c!459544 prefix!1313)))) 1))))

(assert (= (and d!825946 (not res!1184402)) b!2849259))

(assert (= (and b!2849259 res!1184407) b!2849260))

(assert (= (and b!2849260 res!1184406) b!2849255))

(assert (= (and b!2849255 res!1184405) b!2849256))

(assert (= (and b!2849256 res!1184404) b!2849258))

(assert (= (and b!2849258 res!1184403) b!2849257))

(declare-fun m!3276175 () Bool)

(assert (=> b!2849255 m!3276175))

(assert (=> b!2849259 m!3276013))

(assert (=> b!2849259 m!3276015))

(declare-fun m!3276177 () Bool)

(assert (=> b!2849257 m!3276177))

(declare-fun m!3276179 () Bool)

(assert (=> b!2849256 m!3276179))

(assert (=> b!2849260 m!3276013))

(assert (=> b!2849260 m!3276015))

(declare-fun m!3276181 () Bool)

(assert (=> b!2849258 m!3276181))

(assert (=> d!825858 d!825946))

(assert (=> d!825834 d!825894))

(assert (=> b!2848834 d!825850))

(assert (=> d!825828 d!825832))

(assert (=> d!825828 d!825810))

(declare-fun d!825948 () Bool)

(assert (=> d!825948 (= (prefixMatch!819 r!13328 lt!1013150) (prefixMatchZipper!243 lt!1013148 lt!1013150))))

(assert (=> d!825948 true))

(declare-fun _$33!553 () Unit!47605)

(assert (=> d!825948 (= (choose!16761 lt!1013148 lt!1013149 r!13328 lt!1013150) _$33!553)))

(declare-fun bs!520087 () Bool)

(assert (= bs!520087 d!825948))

(assert (=> bs!520087 m!3275805))

(assert (=> bs!520087 m!3275817))

(assert (=> d!825828 d!825948))

(assert (=> d!825828 d!825854))

(declare-fun d!825956 () Bool)

(declare-fun res!1184414 () Bool)

(declare-fun e!1805572 () Bool)

(assert (=> d!825956 (=> res!1184414 e!1805572)))

(assert (=> d!825956 (= res!1184414 ((_ is Nil!33872) lt!1013159))))

(assert (=> d!825956 (= (noDuplicate!557 lt!1013159) e!1805572)))

(declare-fun b!2849293 () Bool)

(declare-fun e!1805573 () Bool)

(assert (=> b!2849293 (= e!1805572 e!1805573)))

(declare-fun res!1184416 () Bool)

(assert (=> b!2849293 (=> (not res!1184416) (not e!1805573))))

(declare-fun contains!6123 (List!33996 Context!5038) Bool)

(assert (=> b!2849293 (= res!1184416 (not (contains!6123 (t!233023 lt!1013159) (h!39292 lt!1013159))))))

(declare-fun b!2849294 () Bool)

(assert (=> b!2849294 (= e!1805573 (noDuplicate!557 (t!233023 lt!1013159)))))

(assert (= (and d!825956 (not res!1184414)) b!2849293))

(assert (= (and b!2849293 res!1184416) b!2849294))

(declare-fun m!3276191 () Bool)

(assert (=> b!2849293 m!3276191))

(declare-fun m!3276193 () Bool)

(assert (=> b!2849294 m!3276193))

(assert (=> d!825822 d!825956))

(declare-fun d!825958 () Bool)

(declare-fun e!1805589 () Bool)

(assert (=> d!825958 e!1805589))

(declare-fun res!1184421 () Bool)

(assert (=> d!825958 (=> (not res!1184421) (not e!1805589))))

(declare-fun res!1184422 () List!33996)

(assert (=> d!825958 (= res!1184421 (noDuplicate!557 res!1184422))))

(declare-fun e!1805591 () Bool)

(assert (=> d!825958 e!1805591))

(assert (=> d!825958 (= (choose!16760 lt!1013148) res!1184422)))

(declare-fun b!2849319 () Bool)

(declare-fun e!1805590 () Bool)

(declare-fun tp!914861 () Bool)

(assert (=> b!2849319 (= e!1805590 tp!914861)))

(declare-fun b!2849318 () Bool)

(declare-fun tp!914862 () Bool)

(declare-fun inv!45909 (Context!5038) Bool)

(assert (=> b!2849318 (= e!1805591 (and (inv!45909 (h!39292 res!1184422)) e!1805590 tp!914862))))

(declare-fun b!2849320 () Bool)

(assert (=> b!2849320 (= e!1805589 (= (content!4655 res!1184422) lt!1013148))))

(assert (= b!2849318 b!2849319))

(assert (= (and d!825958 ((_ is Cons!33872) res!1184422)) b!2849318))

(assert (= (and d!825958 res!1184421) b!2849320))

(declare-fun m!3276205 () Bool)

(assert (=> d!825958 m!3276205))

(declare-fun m!3276207 () Bool)

(assert (=> b!2849318 m!3276207))

(declare-fun m!3276209 () Bool)

(assert (=> b!2849320 m!3276209))

(assert (=> d!825822 d!825958))

(assert (=> d!825832 d!825942))

(declare-fun d!825962 () Bool)

(declare-fun res!1184427 () Bool)

(declare-fun e!1805596 () Bool)

(assert (=> d!825962 (=> (not res!1184427) (not e!1805596))))

(assert (=> d!825962 (= res!1184427 (<= (size!26265 (list!12593 (xs!13620 (c!459544 prefix!1313)))) 512))))

(assert (=> d!825962 (= (inv!45905 (c!459544 prefix!1313)) e!1805596)))

(declare-fun b!2849329 () Bool)

(declare-fun res!1184428 () Bool)

(assert (=> b!2849329 (=> (not res!1184428) (not e!1805596))))

(assert (=> b!2849329 (= res!1184428 (= (csize!21235 (c!459544 prefix!1313)) (size!26265 (list!12593 (xs!13620 (c!459544 prefix!1313))))))))

(declare-fun b!2849330 () Bool)

(assert (=> b!2849330 (= e!1805596 (and (> (csize!21235 (c!459544 prefix!1313)) 0) (<= (csize!21235 (c!459544 prefix!1313)) 512)))))

(assert (= (and d!825962 res!1184427) b!2849329))

(assert (= (and b!2849329 res!1184428) b!2849330))

(assert (=> d!825962 m!3276129))

(assert (=> d!825962 m!3276129))

(declare-fun m!3276219 () Bool)

(assert (=> d!825962 m!3276219))

(assert (=> b!2849329 m!3276129))

(assert (=> b!2849329 m!3276129))

(assert (=> b!2849329 m!3276219))

(assert (=> b!2848907 d!825962))

(declare-fun b!2849331 () Bool)

(declare-fun tp!914864 () Bool)

(declare-fun e!1805597 () Bool)

(declare-fun tp!914865 () Bool)

(assert (=> b!2849331 (= e!1805597 (and (inv!45901 (left!25499 (left!25499 (c!459544 prefix!1313)))) tp!914865 (inv!45901 (right!25829 (left!25499 (c!459544 prefix!1313)))) tp!914864))))

(declare-fun b!2849333 () Bool)

(declare-fun e!1805598 () Bool)

(declare-fun tp!914863 () Bool)

(assert (=> b!2849333 (= e!1805598 tp!914863)))

(declare-fun b!2849332 () Bool)

(assert (=> b!2849332 (= e!1805597 (and (inv!45907 (xs!13620 (left!25499 (c!459544 prefix!1313)))) e!1805598))))

(assert (=> b!2848995 (= tp!914796 (and (inv!45901 (left!25499 (c!459544 prefix!1313))) e!1805597))))

(assert (= (and b!2848995 ((_ is Node!10502) (left!25499 (c!459544 prefix!1313)))) b!2849331))

(assert (= b!2849332 b!2849333))

(assert (= (and b!2848995 ((_ is Leaf!15980) (left!25499 (c!459544 prefix!1313)))) b!2849332))

(declare-fun m!3276221 () Bool)

(assert (=> b!2849331 m!3276221))

(declare-fun m!3276223 () Bool)

(assert (=> b!2849331 m!3276223))

(declare-fun m!3276225 () Bool)

(assert (=> b!2849332 m!3276225))

(assert (=> b!2848995 m!3275955))

(declare-fun tp!914867 () Bool)

(declare-fun b!2849334 () Bool)

(declare-fun e!1805599 () Bool)

(declare-fun tp!914868 () Bool)

(assert (=> b!2849334 (= e!1805599 (and (inv!45901 (left!25499 (right!25829 (c!459544 prefix!1313)))) tp!914868 (inv!45901 (right!25829 (right!25829 (c!459544 prefix!1313)))) tp!914867))))

(declare-fun b!2849336 () Bool)

(declare-fun e!1805600 () Bool)

(declare-fun tp!914866 () Bool)

(assert (=> b!2849336 (= e!1805600 tp!914866)))

(declare-fun b!2849335 () Bool)

(assert (=> b!2849335 (= e!1805599 (and (inv!45907 (xs!13620 (right!25829 (c!459544 prefix!1313)))) e!1805600))))

(assert (=> b!2848995 (= tp!914795 (and (inv!45901 (right!25829 (c!459544 prefix!1313))) e!1805599))))

(assert (= (and b!2848995 ((_ is Node!10502) (right!25829 (c!459544 prefix!1313)))) b!2849334))

(assert (= b!2849335 b!2849336))

(assert (= (and b!2848995 ((_ is Leaf!15980) (right!25829 (c!459544 prefix!1313)))) b!2849335))

(declare-fun m!3276227 () Bool)

(assert (=> b!2849334 m!3276227))

(declare-fun m!3276229 () Bool)

(assert (=> b!2849334 m!3276229))

(declare-fun m!3276231 () Bool)

(assert (=> b!2849335 m!3276231))

(assert (=> b!2848995 m!3275957))

(declare-fun e!1805601 () Bool)

(assert (=> b!2849008 (= tp!914805 e!1805601)))

(declare-fun b!2849338 () Bool)

(declare-fun tp!914873 () Bool)

(declare-fun tp!914870 () Bool)

(assert (=> b!2849338 (= e!1805601 (and tp!914873 tp!914870))))

(declare-fun b!2849339 () Bool)

(declare-fun tp!914872 () Bool)

(assert (=> b!2849339 (= e!1805601 tp!914872)))

(declare-fun b!2849340 () Bool)

(declare-fun tp!914869 () Bool)

(declare-fun tp!914871 () Bool)

(assert (=> b!2849340 (= e!1805601 (and tp!914869 tp!914871))))

(declare-fun b!2849337 () Bool)

(assert (=> b!2849337 (= e!1805601 tp_is_empty!14755)))

(assert (= (and b!2849008 ((_ is ElementMatch!8509) (reg!8838 (regTwo!17531 r!13328)))) b!2849337))

(assert (= (and b!2849008 ((_ is Concat!13830) (reg!8838 (regTwo!17531 r!13328)))) b!2849338))

(assert (= (and b!2849008 ((_ is Star!8509) (reg!8838 (regTwo!17531 r!13328)))) b!2849339))

(assert (= (and b!2849008 ((_ is Union!8509) (reg!8838 (regTwo!17531 r!13328)))) b!2849340))

(declare-fun e!1805602 () Bool)

(assert (=> b!2848969 (= tp!914773 e!1805602)))

(declare-fun b!2849342 () Bool)

(declare-fun tp!914878 () Bool)

(declare-fun tp!914875 () Bool)

(assert (=> b!2849342 (= e!1805602 (and tp!914878 tp!914875))))

(declare-fun b!2849343 () Bool)

(declare-fun tp!914877 () Bool)

(assert (=> b!2849343 (= e!1805602 tp!914877)))

(declare-fun b!2849344 () Bool)

(declare-fun tp!914874 () Bool)

(declare-fun tp!914876 () Bool)

(assert (=> b!2849344 (= e!1805602 (and tp!914874 tp!914876))))

(declare-fun b!2849341 () Bool)

(assert (=> b!2849341 (= e!1805602 tp_is_empty!14755)))

(assert (= (and b!2848969 ((_ is ElementMatch!8509) (regOne!17531 (regOne!17530 r!13328)))) b!2849341))

(assert (= (and b!2848969 ((_ is Concat!13830) (regOne!17531 (regOne!17530 r!13328)))) b!2849342))

(assert (= (and b!2848969 ((_ is Star!8509) (regOne!17531 (regOne!17530 r!13328)))) b!2849343))

(assert (= (and b!2848969 ((_ is Union!8509) (regOne!17531 (regOne!17530 r!13328)))) b!2849344))

(declare-fun e!1805603 () Bool)

(assert (=> b!2848969 (= tp!914775 e!1805603)))

(declare-fun b!2849346 () Bool)

(declare-fun tp!914883 () Bool)

(declare-fun tp!914880 () Bool)

(assert (=> b!2849346 (= e!1805603 (and tp!914883 tp!914880))))

(declare-fun b!2849347 () Bool)

(declare-fun tp!914882 () Bool)

(assert (=> b!2849347 (= e!1805603 tp!914882)))

(declare-fun b!2849348 () Bool)

(declare-fun tp!914879 () Bool)

(declare-fun tp!914881 () Bool)

(assert (=> b!2849348 (= e!1805603 (and tp!914879 tp!914881))))

(declare-fun b!2849345 () Bool)

(assert (=> b!2849345 (= e!1805603 tp_is_empty!14755)))

(assert (= (and b!2848969 ((_ is ElementMatch!8509) (regTwo!17531 (regOne!17530 r!13328)))) b!2849345))

(assert (= (and b!2848969 ((_ is Concat!13830) (regTwo!17531 (regOne!17530 r!13328)))) b!2849346))

(assert (= (and b!2848969 ((_ is Star!8509) (regTwo!17531 (regOne!17530 r!13328)))) b!2849347))

(assert (= (and b!2848969 ((_ is Union!8509) (regTwo!17531 (regOne!17530 r!13328)))) b!2849348))

(declare-fun b!2849354 () Bool)

(declare-fun e!1805607 () Bool)

(declare-fun tp!914886 () Bool)

(assert (=> b!2849354 (= e!1805607 (and tp_is_empty!14755 tp!914886))))

(assert (=> b!2848997 (= tp!914794 e!1805607)))

(assert (= (and b!2848997 ((_ is Cons!33870) (innerList!10562 (xs!13620 (c!459544 prefix!1313))))) b!2849354))

(declare-fun e!1805608 () Bool)

(assert (=> b!2849009 (= tp!914802 e!1805608)))

(declare-fun b!2849356 () Bool)

(declare-fun tp!914891 () Bool)

(declare-fun tp!914888 () Bool)

(assert (=> b!2849356 (= e!1805608 (and tp!914891 tp!914888))))

(declare-fun b!2849357 () Bool)

(declare-fun tp!914890 () Bool)

(assert (=> b!2849357 (= e!1805608 tp!914890)))

(declare-fun b!2849358 () Bool)

(declare-fun tp!914887 () Bool)

(declare-fun tp!914889 () Bool)

(assert (=> b!2849358 (= e!1805608 (and tp!914887 tp!914889))))

(declare-fun b!2849355 () Bool)

(assert (=> b!2849355 (= e!1805608 tp_is_empty!14755)))

(assert (= (and b!2849009 ((_ is ElementMatch!8509) (regOne!17531 (regTwo!17531 r!13328)))) b!2849355))

(assert (= (and b!2849009 ((_ is Concat!13830) (regOne!17531 (regTwo!17531 r!13328)))) b!2849356))

(assert (= (and b!2849009 ((_ is Star!8509) (regOne!17531 (regTwo!17531 r!13328)))) b!2849357))

(assert (= (and b!2849009 ((_ is Union!8509) (regOne!17531 (regTwo!17531 r!13328)))) b!2849358))

(declare-fun e!1805609 () Bool)

(assert (=> b!2849009 (= tp!914804 e!1805609)))

(declare-fun b!2849360 () Bool)

(declare-fun tp!914896 () Bool)

(declare-fun tp!914893 () Bool)

(assert (=> b!2849360 (= e!1805609 (and tp!914896 tp!914893))))

(declare-fun b!2849361 () Bool)

(declare-fun tp!914895 () Bool)

(assert (=> b!2849361 (= e!1805609 tp!914895)))

(declare-fun b!2849362 () Bool)

(declare-fun tp!914892 () Bool)

(declare-fun tp!914894 () Bool)

(assert (=> b!2849362 (= e!1805609 (and tp!914892 tp!914894))))

(declare-fun b!2849359 () Bool)

(assert (=> b!2849359 (= e!1805609 tp_is_empty!14755)))

(assert (= (and b!2849009 ((_ is ElementMatch!8509) (regTwo!17531 (regTwo!17531 r!13328)))) b!2849359))

(assert (= (and b!2849009 ((_ is Concat!13830) (regTwo!17531 (regTwo!17531 r!13328)))) b!2849360))

(assert (= (and b!2849009 ((_ is Star!8509) (regTwo!17531 (regTwo!17531 r!13328)))) b!2849361))

(assert (= (and b!2849009 ((_ is Union!8509) (regTwo!17531 (regTwo!17531 r!13328)))) b!2849362))

(declare-fun e!1805610 () Bool)

(assert (=> b!2848976 (= tp!914786 e!1805610)))

(declare-fun b!2849364 () Bool)

(declare-fun tp!914901 () Bool)

(declare-fun tp!914898 () Bool)

(assert (=> b!2849364 (= e!1805610 (and tp!914901 tp!914898))))

(declare-fun b!2849365 () Bool)

(declare-fun tp!914900 () Bool)

(assert (=> b!2849365 (= e!1805610 tp!914900)))

(declare-fun b!2849366 () Bool)

(declare-fun tp!914897 () Bool)

(declare-fun tp!914899 () Bool)

(assert (=> b!2849366 (= e!1805610 (and tp!914897 tp!914899))))

(declare-fun b!2849363 () Bool)

(assert (=> b!2849363 (= e!1805610 tp_is_empty!14755)))

(assert (= (and b!2848976 ((_ is ElementMatch!8509) (reg!8838 (reg!8838 r!13328)))) b!2849363))

(assert (= (and b!2848976 ((_ is Concat!13830) (reg!8838 (reg!8838 r!13328)))) b!2849364))

(assert (= (and b!2848976 ((_ is Star!8509) (reg!8838 (reg!8838 r!13328)))) b!2849365))

(assert (= (and b!2848976 ((_ is Union!8509) (reg!8838 (reg!8838 r!13328)))) b!2849366))

(declare-fun e!1805611 () Bool)

(assert (=> b!2848967 (= tp!914777 e!1805611)))

(declare-fun b!2849368 () Bool)

(declare-fun tp!914906 () Bool)

(declare-fun tp!914903 () Bool)

(assert (=> b!2849368 (= e!1805611 (and tp!914906 tp!914903))))

(declare-fun b!2849369 () Bool)

(declare-fun tp!914905 () Bool)

(assert (=> b!2849369 (= e!1805611 tp!914905)))

(declare-fun b!2849370 () Bool)

(declare-fun tp!914902 () Bool)

(declare-fun tp!914904 () Bool)

(assert (=> b!2849370 (= e!1805611 (and tp!914902 tp!914904))))

(declare-fun b!2849367 () Bool)

(assert (=> b!2849367 (= e!1805611 tp_is_empty!14755)))

(assert (= (and b!2848967 ((_ is ElementMatch!8509) (regOne!17530 (regOne!17530 r!13328)))) b!2849367))

(assert (= (and b!2848967 ((_ is Concat!13830) (regOne!17530 (regOne!17530 r!13328)))) b!2849368))

(assert (= (and b!2848967 ((_ is Star!8509) (regOne!17530 (regOne!17530 r!13328)))) b!2849369))

(assert (= (and b!2848967 ((_ is Union!8509) (regOne!17530 (regOne!17530 r!13328)))) b!2849370))

(declare-fun e!1805612 () Bool)

(assert (=> b!2848967 (= tp!914774 e!1805612)))

(declare-fun b!2849372 () Bool)

(declare-fun tp!914911 () Bool)

(declare-fun tp!914908 () Bool)

(assert (=> b!2849372 (= e!1805612 (and tp!914911 tp!914908))))

(declare-fun b!2849373 () Bool)

(declare-fun tp!914910 () Bool)

(assert (=> b!2849373 (= e!1805612 tp!914910)))

(declare-fun b!2849374 () Bool)

(declare-fun tp!914907 () Bool)

(declare-fun tp!914909 () Bool)

(assert (=> b!2849374 (= e!1805612 (and tp!914907 tp!914909))))

(declare-fun b!2849371 () Bool)

(assert (=> b!2849371 (= e!1805612 tp_is_empty!14755)))

(assert (= (and b!2848967 ((_ is ElementMatch!8509) (regTwo!17530 (regOne!17530 r!13328)))) b!2849371))

(assert (= (and b!2848967 ((_ is Concat!13830) (regTwo!17530 (regOne!17530 r!13328)))) b!2849372))

(assert (= (and b!2848967 ((_ is Star!8509) (regTwo!17530 (regOne!17530 r!13328)))) b!2849373))

(assert (= (and b!2848967 ((_ is Union!8509) (regTwo!17530 (regOne!17530 r!13328)))) b!2849374))

(declare-fun e!1805613 () Bool)

(assert (=> b!2848999 (= tp!914801 e!1805613)))

(declare-fun b!2849376 () Bool)

(declare-fun tp!914916 () Bool)

(declare-fun tp!914913 () Bool)

(assert (=> b!2849376 (= e!1805613 (and tp!914916 tp!914913))))

(declare-fun b!2849377 () Bool)

(declare-fun tp!914915 () Bool)

(assert (=> b!2849377 (= e!1805613 tp!914915)))

(declare-fun b!2849378 () Bool)

(declare-fun tp!914912 () Bool)

(declare-fun tp!914914 () Bool)

(assert (=> b!2849378 (= e!1805613 (and tp!914912 tp!914914))))

(declare-fun b!2849375 () Bool)

(assert (=> b!2849375 (= e!1805613 tp_is_empty!14755)))

(assert (= (and b!2848999 ((_ is ElementMatch!8509) (regOne!17530 (regOne!17531 r!13328)))) b!2849375))

(assert (= (and b!2848999 ((_ is Concat!13830) (regOne!17530 (regOne!17531 r!13328)))) b!2849376))

(assert (= (and b!2848999 ((_ is Star!8509) (regOne!17530 (regOne!17531 r!13328)))) b!2849377))

(assert (= (and b!2848999 ((_ is Union!8509) (regOne!17530 (regOne!17531 r!13328)))) b!2849378))

(declare-fun e!1805614 () Bool)

(assert (=> b!2848999 (= tp!914798 e!1805614)))

(declare-fun b!2849380 () Bool)

(declare-fun tp!914921 () Bool)

(declare-fun tp!914918 () Bool)

(assert (=> b!2849380 (= e!1805614 (and tp!914921 tp!914918))))

(declare-fun b!2849381 () Bool)

(declare-fun tp!914920 () Bool)

(assert (=> b!2849381 (= e!1805614 tp!914920)))

(declare-fun b!2849382 () Bool)

(declare-fun tp!914917 () Bool)

(declare-fun tp!914919 () Bool)

(assert (=> b!2849382 (= e!1805614 (and tp!914917 tp!914919))))

(declare-fun b!2849379 () Bool)

(assert (=> b!2849379 (= e!1805614 tp_is_empty!14755)))

(assert (= (and b!2848999 ((_ is ElementMatch!8509) (regTwo!17530 (regOne!17531 r!13328)))) b!2849379))

(assert (= (and b!2848999 ((_ is Concat!13830) (regTwo!17530 (regOne!17531 r!13328)))) b!2849380))

(assert (= (and b!2848999 ((_ is Star!8509) (regTwo!17530 (regOne!17531 r!13328)))) b!2849381))

(assert (= (and b!2848999 ((_ is Union!8509) (regTwo!17530 (regOne!17531 r!13328)))) b!2849382))

(declare-fun e!1805615 () Bool)

(assert (=> b!2848971 (= tp!914782 e!1805615)))

(declare-fun b!2849384 () Bool)

(declare-fun tp!914926 () Bool)

(declare-fun tp!914923 () Bool)

(assert (=> b!2849384 (= e!1805615 (and tp!914926 tp!914923))))

(declare-fun b!2849385 () Bool)

(declare-fun tp!914925 () Bool)

(assert (=> b!2849385 (= e!1805615 tp!914925)))

(declare-fun b!2849386 () Bool)

(declare-fun tp!914922 () Bool)

(declare-fun tp!914924 () Bool)

(assert (=> b!2849386 (= e!1805615 (and tp!914922 tp!914924))))

(declare-fun b!2849383 () Bool)

(assert (=> b!2849383 (= e!1805615 tp_is_empty!14755)))

(assert (= (and b!2848971 ((_ is ElementMatch!8509) (regOne!17530 (regTwo!17530 r!13328)))) b!2849383))

(assert (= (and b!2848971 ((_ is Concat!13830) (regOne!17530 (regTwo!17530 r!13328)))) b!2849384))

(assert (= (and b!2848971 ((_ is Star!8509) (regOne!17530 (regTwo!17530 r!13328)))) b!2849385))

(assert (= (and b!2848971 ((_ is Union!8509) (regOne!17530 (regTwo!17530 r!13328)))) b!2849386))

(declare-fun e!1805616 () Bool)

(assert (=> b!2848971 (= tp!914779 e!1805616)))

(declare-fun b!2849388 () Bool)

(declare-fun tp!914931 () Bool)

(declare-fun tp!914928 () Bool)

(assert (=> b!2849388 (= e!1805616 (and tp!914931 tp!914928))))

(declare-fun b!2849389 () Bool)

(declare-fun tp!914930 () Bool)

(assert (=> b!2849389 (= e!1805616 tp!914930)))

(declare-fun b!2849390 () Bool)

(declare-fun tp!914927 () Bool)

(declare-fun tp!914929 () Bool)

(assert (=> b!2849390 (= e!1805616 (and tp!914927 tp!914929))))

(declare-fun b!2849387 () Bool)

(assert (=> b!2849387 (= e!1805616 tp_is_empty!14755)))

(assert (= (and b!2848971 ((_ is ElementMatch!8509) (regTwo!17530 (regTwo!17530 r!13328)))) b!2849387))

(assert (= (and b!2848971 ((_ is Concat!13830) (regTwo!17530 (regTwo!17530 r!13328)))) b!2849388))

(assert (= (and b!2848971 ((_ is Star!8509) (regTwo!17530 (regTwo!17530 r!13328)))) b!2849389))

(assert (= (and b!2848971 ((_ is Union!8509) (regTwo!17530 (regTwo!17530 r!13328)))) b!2849390))

(declare-fun e!1805618 () Bool)

(assert (=> b!2849007 (= tp!914806 e!1805618)))

(declare-fun b!2849394 () Bool)

(declare-fun tp!914936 () Bool)

(declare-fun tp!914933 () Bool)

(assert (=> b!2849394 (= e!1805618 (and tp!914936 tp!914933))))

(declare-fun b!2849395 () Bool)

(declare-fun tp!914935 () Bool)

(assert (=> b!2849395 (= e!1805618 tp!914935)))

(declare-fun b!2849396 () Bool)

(declare-fun tp!914932 () Bool)

(declare-fun tp!914934 () Bool)

(assert (=> b!2849396 (= e!1805618 (and tp!914932 tp!914934))))

(declare-fun b!2849393 () Bool)

(assert (=> b!2849393 (= e!1805618 tp_is_empty!14755)))

(assert (= (and b!2849007 ((_ is ElementMatch!8509) (regOne!17530 (regTwo!17531 r!13328)))) b!2849393))

(assert (= (and b!2849007 ((_ is Concat!13830) (regOne!17530 (regTwo!17531 r!13328)))) b!2849394))

(assert (= (and b!2849007 ((_ is Star!8509) (regOne!17530 (regTwo!17531 r!13328)))) b!2849395))

(assert (= (and b!2849007 ((_ is Union!8509) (regOne!17530 (regTwo!17531 r!13328)))) b!2849396))

(declare-fun e!1805619 () Bool)

(assert (=> b!2849007 (= tp!914803 e!1805619)))

(declare-fun b!2849398 () Bool)

(declare-fun tp!914941 () Bool)

(declare-fun tp!914938 () Bool)

(assert (=> b!2849398 (= e!1805619 (and tp!914941 tp!914938))))

(declare-fun b!2849399 () Bool)

(declare-fun tp!914940 () Bool)

(assert (=> b!2849399 (= e!1805619 tp!914940)))

(declare-fun b!2849400 () Bool)

(declare-fun tp!914937 () Bool)

(declare-fun tp!914939 () Bool)

(assert (=> b!2849400 (= e!1805619 (and tp!914937 tp!914939))))

(declare-fun b!2849397 () Bool)

(assert (=> b!2849397 (= e!1805619 tp_is_empty!14755)))

(assert (= (and b!2849007 ((_ is ElementMatch!8509) (regTwo!17530 (regTwo!17531 r!13328)))) b!2849397))

(assert (= (and b!2849007 ((_ is Concat!13830) (regTwo!17530 (regTwo!17531 r!13328)))) b!2849398))

(assert (= (and b!2849007 ((_ is Star!8509) (regTwo!17530 (regTwo!17531 r!13328)))) b!2849399))

(assert (= (and b!2849007 ((_ is Union!8509) (regTwo!17530 (regTwo!17531 r!13328)))) b!2849400))

(declare-fun e!1805620 () Bool)

(assert (=> b!2848968 (= tp!914776 e!1805620)))

(declare-fun b!2849402 () Bool)

(declare-fun tp!914946 () Bool)

(declare-fun tp!914943 () Bool)

(assert (=> b!2849402 (= e!1805620 (and tp!914946 tp!914943))))

(declare-fun b!2849403 () Bool)

(declare-fun tp!914945 () Bool)

(assert (=> b!2849403 (= e!1805620 tp!914945)))

(declare-fun b!2849404 () Bool)

(declare-fun tp!914942 () Bool)

(declare-fun tp!914944 () Bool)

(assert (=> b!2849404 (= e!1805620 (and tp!914942 tp!914944))))

(declare-fun b!2849401 () Bool)

(assert (=> b!2849401 (= e!1805620 tp_is_empty!14755)))

(assert (= (and b!2848968 ((_ is ElementMatch!8509) (reg!8838 (regOne!17530 r!13328)))) b!2849401))

(assert (= (and b!2848968 ((_ is Concat!13830) (reg!8838 (regOne!17530 r!13328)))) b!2849402))

(assert (= (and b!2848968 ((_ is Star!8509) (reg!8838 (regOne!17530 r!13328)))) b!2849403))

(assert (= (and b!2848968 ((_ is Union!8509) (reg!8838 (regOne!17530 r!13328)))) b!2849404))

(declare-fun e!1805621 () Bool)

(assert (=> b!2849001 (= tp!914797 e!1805621)))

(declare-fun b!2849406 () Bool)

(declare-fun tp!914951 () Bool)

(declare-fun tp!914948 () Bool)

(assert (=> b!2849406 (= e!1805621 (and tp!914951 tp!914948))))

(declare-fun b!2849407 () Bool)

(declare-fun tp!914950 () Bool)

(assert (=> b!2849407 (= e!1805621 tp!914950)))

(declare-fun b!2849408 () Bool)

(declare-fun tp!914947 () Bool)

(declare-fun tp!914949 () Bool)

(assert (=> b!2849408 (= e!1805621 (and tp!914947 tp!914949))))

(declare-fun b!2849405 () Bool)

(assert (=> b!2849405 (= e!1805621 tp_is_empty!14755)))

(assert (= (and b!2849001 ((_ is ElementMatch!8509) (regOne!17531 (regOne!17531 r!13328)))) b!2849405))

(assert (= (and b!2849001 ((_ is Concat!13830) (regOne!17531 (regOne!17531 r!13328)))) b!2849406))

(assert (= (and b!2849001 ((_ is Star!8509) (regOne!17531 (regOne!17531 r!13328)))) b!2849407))

(assert (= (and b!2849001 ((_ is Union!8509) (regOne!17531 (regOne!17531 r!13328)))) b!2849408))

(declare-fun e!1805622 () Bool)

(assert (=> b!2849001 (= tp!914799 e!1805622)))

(declare-fun b!2849410 () Bool)

(declare-fun tp!914956 () Bool)

(declare-fun tp!914953 () Bool)

(assert (=> b!2849410 (= e!1805622 (and tp!914956 tp!914953))))

(declare-fun b!2849411 () Bool)

(declare-fun tp!914955 () Bool)

(assert (=> b!2849411 (= e!1805622 tp!914955)))

(declare-fun b!2849412 () Bool)

(declare-fun tp!914952 () Bool)

(declare-fun tp!914954 () Bool)

(assert (=> b!2849412 (= e!1805622 (and tp!914952 tp!914954))))

(declare-fun b!2849409 () Bool)

(assert (=> b!2849409 (= e!1805622 tp_is_empty!14755)))

(assert (= (and b!2849001 ((_ is ElementMatch!8509) (regTwo!17531 (regOne!17531 r!13328)))) b!2849409))

(assert (= (and b!2849001 ((_ is Concat!13830) (regTwo!17531 (regOne!17531 r!13328)))) b!2849410))

(assert (= (and b!2849001 ((_ is Star!8509) (regTwo!17531 (regOne!17531 r!13328)))) b!2849411))

(assert (= (and b!2849001 ((_ is Union!8509) (regTwo!17531 (regOne!17531 r!13328)))) b!2849412))

(declare-fun e!1805623 () Bool)

(assert (=> b!2848973 (= tp!914778 e!1805623)))

(declare-fun b!2849414 () Bool)

(declare-fun tp!914961 () Bool)

(declare-fun tp!914958 () Bool)

(assert (=> b!2849414 (= e!1805623 (and tp!914961 tp!914958))))

(declare-fun b!2849415 () Bool)

(declare-fun tp!914960 () Bool)

(assert (=> b!2849415 (= e!1805623 tp!914960)))

(declare-fun b!2849416 () Bool)

(declare-fun tp!914957 () Bool)

(declare-fun tp!914959 () Bool)

(assert (=> b!2849416 (= e!1805623 (and tp!914957 tp!914959))))

(declare-fun b!2849413 () Bool)

(assert (=> b!2849413 (= e!1805623 tp_is_empty!14755)))

(assert (= (and b!2848973 ((_ is ElementMatch!8509) (regOne!17531 (regTwo!17530 r!13328)))) b!2849413))

(assert (= (and b!2848973 ((_ is Concat!13830) (regOne!17531 (regTwo!17530 r!13328)))) b!2849414))

(assert (= (and b!2848973 ((_ is Star!8509) (regOne!17531 (regTwo!17530 r!13328)))) b!2849415))

(assert (= (and b!2848973 ((_ is Union!8509) (regOne!17531 (regTwo!17530 r!13328)))) b!2849416))

(declare-fun e!1805624 () Bool)

(assert (=> b!2848973 (= tp!914780 e!1805624)))

(declare-fun b!2849418 () Bool)

(declare-fun tp!914966 () Bool)

(declare-fun tp!914963 () Bool)

(assert (=> b!2849418 (= e!1805624 (and tp!914966 tp!914963))))

(declare-fun b!2849419 () Bool)

(declare-fun tp!914965 () Bool)

(assert (=> b!2849419 (= e!1805624 tp!914965)))

(declare-fun b!2849420 () Bool)

(declare-fun tp!914962 () Bool)

(declare-fun tp!914964 () Bool)

(assert (=> b!2849420 (= e!1805624 (and tp!914962 tp!914964))))

(declare-fun b!2849417 () Bool)

(assert (=> b!2849417 (= e!1805624 tp_is_empty!14755)))

(assert (= (and b!2848973 ((_ is ElementMatch!8509) (regTwo!17531 (regTwo!17530 r!13328)))) b!2849417))

(assert (= (and b!2848973 ((_ is Concat!13830) (regTwo!17531 (regTwo!17530 r!13328)))) b!2849418))

(assert (= (and b!2848973 ((_ is Star!8509) (regTwo!17531 (regTwo!17530 r!13328)))) b!2849419))

(assert (= (and b!2848973 ((_ is Union!8509) (regTwo!17531 (regTwo!17530 r!13328)))) b!2849420))

(declare-fun e!1805625 () Bool)

(assert (=> b!2849000 (= tp!914800 e!1805625)))

(declare-fun b!2849422 () Bool)

(declare-fun tp!914971 () Bool)

(declare-fun tp!914968 () Bool)

(assert (=> b!2849422 (= e!1805625 (and tp!914971 tp!914968))))

(declare-fun b!2849423 () Bool)

(declare-fun tp!914970 () Bool)

(assert (=> b!2849423 (= e!1805625 tp!914970)))

(declare-fun b!2849424 () Bool)

(declare-fun tp!914967 () Bool)

(declare-fun tp!914969 () Bool)

(assert (=> b!2849424 (= e!1805625 (and tp!914967 tp!914969))))

(declare-fun b!2849421 () Bool)

(assert (=> b!2849421 (= e!1805625 tp_is_empty!14755)))

(assert (= (and b!2849000 ((_ is ElementMatch!8509) (reg!8838 (regOne!17531 r!13328)))) b!2849421))

(assert (= (and b!2849000 ((_ is Concat!13830) (reg!8838 (regOne!17531 r!13328)))) b!2849422))

(assert (= (and b!2849000 ((_ is Star!8509) (reg!8838 (regOne!17531 r!13328)))) b!2849423))

(assert (= (and b!2849000 ((_ is Union!8509) (reg!8838 (regOne!17531 r!13328)))) b!2849424))

(declare-fun e!1805626 () Bool)

(assert (=> b!2848972 (= tp!914781 e!1805626)))

(declare-fun b!2849426 () Bool)

(declare-fun tp!914976 () Bool)

(declare-fun tp!914973 () Bool)

(assert (=> b!2849426 (= e!1805626 (and tp!914976 tp!914973))))

(declare-fun b!2849427 () Bool)

(declare-fun tp!914975 () Bool)

(assert (=> b!2849427 (= e!1805626 tp!914975)))

(declare-fun b!2849428 () Bool)

(declare-fun tp!914972 () Bool)

(declare-fun tp!914974 () Bool)

(assert (=> b!2849428 (= e!1805626 (and tp!914972 tp!914974))))

(declare-fun b!2849425 () Bool)

(assert (=> b!2849425 (= e!1805626 tp_is_empty!14755)))

(assert (= (and b!2848972 ((_ is ElementMatch!8509) (reg!8838 (regTwo!17530 r!13328)))) b!2849425))

(assert (= (and b!2848972 ((_ is Concat!13830) (reg!8838 (regTwo!17530 r!13328)))) b!2849426))

(assert (= (and b!2848972 ((_ is Star!8509) (reg!8838 (regTwo!17530 r!13328)))) b!2849427))

(assert (= (and b!2848972 ((_ is Union!8509) (reg!8838 (regTwo!17530 r!13328)))) b!2849428))

(declare-fun e!1805627 () Bool)

(assert (=> b!2848977 (= tp!914783 e!1805627)))

(declare-fun b!2849430 () Bool)

(declare-fun tp!914981 () Bool)

(declare-fun tp!914978 () Bool)

(assert (=> b!2849430 (= e!1805627 (and tp!914981 tp!914978))))

(declare-fun b!2849431 () Bool)

(declare-fun tp!914980 () Bool)

(assert (=> b!2849431 (= e!1805627 tp!914980)))

(declare-fun b!2849432 () Bool)

(declare-fun tp!914977 () Bool)

(declare-fun tp!914979 () Bool)

(assert (=> b!2849432 (= e!1805627 (and tp!914977 tp!914979))))

(declare-fun b!2849429 () Bool)

(assert (=> b!2849429 (= e!1805627 tp_is_empty!14755)))

(assert (= (and b!2848977 ((_ is ElementMatch!8509) (regOne!17531 (reg!8838 r!13328)))) b!2849429))

(assert (= (and b!2848977 ((_ is Concat!13830) (regOne!17531 (reg!8838 r!13328)))) b!2849430))

(assert (= (and b!2848977 ((_ is Star!8509) (regOne!17531 (reg!8838 r!13328)))) b!2849431))

(assert (= (and b!2848977 ((_ is Union!8509) (regOne!17531 (reg!8838 r!13328)))) b!2849432))

(declare-fun e!1805628 () Bool)

(assert (=> b!2848977 (= tp!914785 e!1805628)))

(declare-fun b!2849434 () Bool)

(declare-fun tp!914986 () Bool)

(declare-fun tp!914983 () Bool)

(assert (=> b!2849434 (= e!1805628 (and tp!914986 tp!914983))))

(declare-fun b!2849435 () Bool)

(declare-fun tp!914985 () Bool)

(assert (=> b!2849435 (= e!1805628 tp!914985)))

(declare-fun b!2849436 () Bool)

(declare-fun tp!914982 () Bool)

(declare-fun tp!914984 () Bool)

(assert (=> b!2849436 (= e!1805628 (and tp!914982 tp!914984))))

(declare-fun b!2849433 () Bool)

(assert (=> b!2849433 (= e!1805628 tp_is_empty!14755)))

(assert (= (and b!2848977 ((_ is ElementMatch!8509) (regTwo!17531 (reg!8838 r!13328)))) b!2849433))

(assert (= (and b!2848977 ((_ is Concat!13830) (regTwo!17531 (reg!8838 r!13328)))) b!2849434))

(assert (= (and b!2848977 ((_ is Star!8509) (regTwo!17531 (reg!8838 r!13328)))) b!2849435))

(assert (= (and b!2848977 ((_ is Union!8509) (regTwo!17531 (reg!8838 r!13328)))) b!2849436))

(declare-fun e!1805629 () Bool)

(assert (=> b!2848975 (= tp!914787 e!1805629)))

(declare-fun b!2849438 () Bool)

(declare-fun tp!914991 () Bool)

(declare-fun tp!914988 () Bool)

(assert (=> b!2849438 (= e!1805629 (and tp!914991 tp!914988))))

(declare-fun b!2849439 () Bool)

(declare-fun tp!914990 () Bool)

(assert (=> b!2849439 (= e!1805629 tp!914990)))

(declare-fun b!2849440 () Bool)

(declare-fun tp!914987 () Bool)

(declare-fun tp!914989 () Bool)

(assert (=> b!2849440 (= e!1805629 (and tp!914987 tp!914989))))

(declare-fun b!2849437 () Bool)

(assert (=> b!2849437 (= e!1805629 tp_is_empty!14755)))

(assert (= (and b!2848975 ((_ is ElementMatch!8509) (regOne!17530 (reg!8838 r!13328)))) b!2849437))

(assert (= (and b!2848975 ((_ is Concat!13830) (regOne!17530 (reg!8838 r!13328)))) b!2849438))

(assert (= (and b!2848975 ((_ is Star!8509) (regOne!17530 (reg!8838 r!13328)))) b!2849439))

(assert (= (and b!2848975 ((_ is Union!8509) (regOne!17530 (reg!8838 r!13328)))) b!2849440))

(declare-fun e!1805630 () Bool)

(assert (=> b!2848975 (= tp!914784 e!1805630)))

(declare-fun b!2849442 () Bool)

(declare-fun tp!914996 () Bool)

(declare-fun tp!914993 () Bool)

(assert (=> b!2849442 (= e!1805630 (and tp!914996 tp!914993))))

(declare-fun b!2849443 () Bool)

(declare-fun tp!914995 () Bool)

(assert (=> b!2849443 (= e!1805630 tp!914995)))

(declare-fun b!2849444 () Bool)

(declare-fun tp!914992 () Bool)

(declare-fun tp!914994 () Bool)

(assert (=> b!2849444 (= e!1805630 (and tp!914992 tp!914994))))

(declare-fun b!2849441 () Bool)

(assert (=> b!2849441 (= e!1805630 tp_is_empty!14755)))

(assert (= (and b!2848975 ((_ is ElementMatch!8509) (regTwo!17530 (reg!8838 r!13328)))) b!2849441))

(assert (= (and b!2848975 ((_ is Concat!13830) (regTwo!17530 (reg!8838 r!13328)))) b!2849442))

(assert (= (and b!2848975 ((_ is Star!8509) (regTwo!17530 (reg!8838 r!13328)))) b!2849443))

(assert (= (and b!2848975 ((_ is Union!8509) (regTwo!17530 (reg!8838 r!13328)))) b!2849444))

(check-sat (not b!2849336) (not b!2848995) (not b!2849293) (not b!2849423) (not b!2849378) (not b!2849211) (not d!825918) (not b!2849396) (not b!2849136) (not b!2849422) (not b!2849380) (not d!825948) (not b!2849089) (not b!2849094) (not d!825920) (not bm!183639) (not b!2849395) (not b!2849376) (not b!2849372) (not d!825958) (not b!2849404) (not b!2849148) (not b!2849427) (not b!2849377) (not b!2849386) (not b!2849213) (not b!2849047) (not b!2849439) (not b!2849365) (not b!2849368) (not d!825864) (not b!2849331) (not b!2849362) (not d!825900) (not bm!183657) (not b!2849222) (not bm!183627) (not b!2849076) (not b!2849431) (not b!2849399) (not b!2849137) (not b!2849434) (not b!2849438) (not b!2849344) (not b!2849366) (not b!2849256) (not d!825962) (not b!2849420) (not b!2849260) (not b!2849382) (not b!2849080) (not b!2849319) (not b!2849333) (not b!2849073) (not b!2849135) (not b!2849356) (not b!2849428) (not b!2849257) (not b!2849357) (not d!825886) (not b!2849332) (not b!2849079) (not d!825878) (not b!2849424) (not b!2849369) (not b!2849361) (not b!2849410) (not b!2849255) (not b!2849172) (not b!2849442) (not b!2849294) (not b!2849329) (not b!2849343) (not b!2849077) (not b!2849065) (not b!2849406) (not b!2849124) (not d!825880) (not d!825894) (not b!2849340) (not b!2849444) (not b!2849436) (not b!2849342) (not b!2849373) (not b!2849388) (not b!2849389) (not b!2849407) (not d!825906) (not b!2849075) (not b!2849318) (not b!2849443) (not b!2849258) (not b!2849348) (not b!2849364) (not d!825884) (not d!825904) (not b!2849402) (not b!2849173) (not b!2849390) (not bm!183628) (not b!2849360) (not d!825882) (not d!825872) (not b!2849347) (not d!825876) tp_is_empty!14755 (not b!2849411) (not b!2849370) (not bm!183655) (not d!825888) (not bm!183648) (not b!2849419) (not b!2849435) (not d!825924) (not b!2849384) (not b!2849346) (not bm!183638) (not b!2849339) (not b!2849403) (not b!2849416) (not b!2849358) (not b!2849320) (not b!2849385) (not b!2849412) (not d!825862) (not b!2849090) (not b!2849381) (not b!2849338) (not b!2849418) (not b!2849400) (not b!2849374) (not d!825874) (not b!2849334) (not b!2849426) (not b!2849048) (not d!825934) (not b!2849430) (not b!2849093) (not b!2849354) (not b!2849394) (not b!2849415) (not b!2849259) (not b!2849335) (not b!2849432) (not b!2849064) (not b!2849082) (not b!2849414) (not bm!183656) (not b!2849440) (not b!2849408) (not b!2849398) (not bm!183647))
(check-sat)
