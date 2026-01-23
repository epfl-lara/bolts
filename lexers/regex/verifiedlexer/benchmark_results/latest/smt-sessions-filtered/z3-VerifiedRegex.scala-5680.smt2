; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283042 () Bool)

(assert start!283042)

(declare-fun e!1835549 () Bool)

(declare-fun setNonEmpty!25823 () Bool)

(declare-datatypes ((C!18012 0))(
  ( (C!18013 (val!11040 Int)) )
))
(declare-datatypes ((Regex!8915 0))(
  ( (ElementMatch!8915 (c!473898 C!18012)) (Concat!14236 (regOne!18342 Regex!8915) (regTwo!18342 Regex!8915)) (EmptyExpr!8915) (Star!8915 (reg!9244 Regex!8915)) (EmptyLang!8915) (Union!8915 (regOne!18343 Regex!8915) (regTwo!18343 Regex!8915)) )
))
(declare-datatypes ((List!34745 0))(
  ( (Nil!34621) (Cons!34621 (h!40041 Regex!8915) (t!233788 List!34745)) )
))
(declare-datatypes ((Context!5486 0))(
  ( (Context!5487 (exprs!3243 List!34745)) )
))
(declare-fun setElem!25823 () Context!5486)

(declare-fun setRes!25823 () Bool)

(declare-fun tp!934152 () Bool)

(declare-fun inv!46742 (Context!5486) Bool)

(assert (=> setNonEmpty!25823 (= setRes!25823 (and tp!934152 (inv!46742 setElem!25823) e!1835549))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!929 () (InoxSet Context!5486))

(declare-fun setRest!25823 () (InoxSet Context!5486))

(assert (=> setNonEmpty!25823 (= z!929 ((_ map or) (store ((as const (Array Context!5486 Bool)) false) setElem!25823 true) setRest!25823))))

(declare-fun b!2907825 () Bool)

(declare-fun e!1835548 () Bool)

(declare-fun tp_is_empty!15417 () Bool)

(declare-fun tp!934150 () Bool)

(assert (=> b!2907825 (= e!1835548 (and tp_is_empty!15417 tp!934150))))

(declare-fun b!2907826 () Bool)

(declare-fun e!1835546 () Bool)

(declare-datatypes ((List!34746 0))(
  ( (Nil!34622) (Cons!34622 (h!40042 C!18012) (t!233789 List!34746)) )
))
(declare-fun prefix!909 () List!34746)

(declare-fun size!26386 (List!34746) Int)

(assert (=> b!2907826 (= e!1835546 (>= (size!26386 (t!233789 prefix!909)) (size!26386 prefix!909)))))

(declare-fun b!2907827 () Bool)

(declare-fun res!1200792 () Bool)

(assert (=> b!2907827 (=> (not res!1200792) (not e!1835546))))

(declare-fun prefixMatchZipper!359 ((InoxSet Context!5486) List!34746) Bool)

(assert (=> b!2907827 (= res!1200792 (not (prefixMatchZipper!359 z!929 prefix!909)))))

(declare-fun b!2907828 () Bool)

(declare-fun res!1200791 () Bool)

(assert (=> b!2907828 (=> (not res!1200791) (not e!1835546))))

(declare-fun derivationStepZipper!505 ((InoxSet Context!5486) C!18012) (InoxSet Context!5486))

(assert (=> b!2907828 (= res!1200791 (not (prefixMatchZipper!359 (derivationStepZipper!505 z!929 (h!40042 prefix!909)) (t!233789 prefix!909))))))

(declare-fun b!2907829 () Bool)

(declare-fun e!1835547 () Bool)

(declare-fun tp!934151 () Bool)

(assert (=> b!2907829 (= e!1835547 (and tp_is_empty!15417 tp!934151))))

(declare-fun res!1200794 () Bool)

(assert (=> start!283042 (=> (not res!1200794) (not e!1835546))))

(declare-fun s!2253 () List!34746)

(declare-fun isPrefix!2752 (List!34746 List!34746) Bool)

(assert (=> start!283042 (= res!1200794 (isPrefix!2752 prefix!909 s!2253))))

(assert (=> start!283042 e!1835546))

(assert (=> start!283042 e!1835548))

(assert (=> start!283042 e!1835547))

(declare-fun condSetEmpty!25823 () Bool)

(assert (=> start!283042 (= condSetEmpty!25823 (= z!929 ((as const (Array Context!5486 Bool)) false)))))

(assert (=> start!283042 setRes!25823))

(declare-fun b!2907830 () Bool)

(declare-fun res!1200793 () Bool)

(assert (=> b!2907830 (=> (not res!1200793) (not e!1835546))))

(declare-fun tail!4668 (List!34746) List!34746)

(assert (=> b!2907830 (= res!1200793 (isPrefix!2752 (t!233789 prefix!909) (tail!4668 s!2253)))))

(declare-fun b!2907831 () Bool)

(declare-fun tp!934153 () Bool)

(assert (=> b!2907831 (= e!1835549 tp!934153)))

(declare-fun setIsEmpty!25823 () Bool)

(assert (=> setIsEmpty!25823 setRes!25823))

(declare-fun b!2907832 () Bool)

(declare-fun res!1200795 () Bool)

(assert (=> b!2907832 (=> (not res!1200795) (not e!1835546))))

(get-info :version)

(assert (=> b!2907832 (= res!1200795 (not ((_ is Nil!34622) prefix!909)))))

(assert (= (and start!283042 res!1200794) b!2907827))

(assert (= (and b!2907827 res!1200792) b!2907832))

(assert (= (and b!2907832 res!1200795) b!2907830))

(assert (= (and b!2907830 res!1200793) b!2907828))

(assert (= (and b!2907828 res!1200791) b!2907826))

(assert (= (and start!283042 ((_ is Cons!34622) prefix!909)) b!2907825))

(assert (= (and start!283042 ((_ is Cons!34622) s!2253)) b!2907829))

(assert (= (and start!283042 condSetEmpty!25823) setIsEmpty!25823))

(assert (= (and start!283042 (not condSetEmpty!25823)) setNonEmpty!25823))

(assert (= setNonEmpty!25823 b!2907831))

(declare-fun m!3309577 () Bool)

(assert (=> start!283042 m!3309577))

(declare-fun m!3309579 () Bool)

(assert (=> b!2907830 m!3309579))

(assert (=> b!2907830 m!3309579))

(declare-fun m!3309581 () Bool)

(assert (=> b!2907830 m!3309581))

(declare-fun m!3309583 () Bool)

(assert (=> b!2907827 m!3309583))

(declare-fun m!3309585 () Bool)

(assert (=> setNonEmpty!25823 m!3309585))

(declare-fun m!3309587 () Bool)

(assert (=> b!2907826 m!3309587))

(declare-fun m!3309589 () Bool)

(assert (=> b!2907826 m!3309589))

(declare-fun m!3309591 () Bool)

(assert (=> b!2907828 m!3309591))

(assert (=> b!2907828 m!3309591))

(declare-fun m!3309593 () Bool)

(assert (=> b!2907828 m!3309593))

(check-sat (not b!2907831) (not b!2907825) (not b!2907826) (not b!2907827) tp_is_empty!15417 (not b!2907829) (not b!2907830) (not setNonEmpty!25823) (not start!283042) (not b!2907828))
(check-sat)
(get-model)

(declare-fun d!836615 () Bool)

(declare-fun lt!1022890 () Int)

(assert (=> d!836615 (>= lt!1022890 0)))

(declare-fun e!1835552 () Int)

(assert (=> d!836615 (= lt!1022890 e!1835552)))

(declare-fun c!473901 () Bool)

(assert (=> d!836615 (= c!473901 ((_ is Nil!34622) (t!233789 prefix!909)))))

(assert (=> d!836615 (= (size!26386 (t!233789 prefix!909)) lt!1022890)))

(declare-fun b!2907837 () Bool)

(assert (=> b!2907837 (= e!1835552 0)))

(declare-fun b!2907838 () Bool)

(assert (=> b!2907838 (= e!1835552 (+ 1 (size!26386 (t!233789 (t!233789 prefix!909)))))))

(assert (= (and d!836615 c!473901) b!2907837))

(assert (= (and d!836615 (not c!473901)) b!2907838))

(declare-fun m!3309595 () Bool)

(assert (=> b!2907838 m!3309595))

(assert (=> b!2907826 d!836615))

(declare-fun d!836617 () Bool)

(declare-fun lt!1022891 () Int)

(assert (=> d!836617 (>= lt!1022891 0)))

(declare-fun e!1835553 () Int)

(assert (=> d!836617 (= lt!1022891 e!1835553)))

(declare-fun c!473902 () Bool)

(assert (=> d!836617 (= c!473902 ((_ is Nil!34622) prefix!909))))

(assert (=> d!836617 (= (size!26386 prefix!909) lt!1022891)))

(declare-fun b!2907839 () Bool)

(assert (=> b!2907839 (= e!1835553 0)))

(declare-fun b!2907840 () Bool)

(assert (=> b!2907840 (= e!1835553 (+ 1 (size!26386 (t!233789 prefix!909))))))

(assert (= (and d!836617 c!473902) b!2907839))

(assert (= (and d!836617 (not c!473902)) b!2907840))

(assert (=> b!2907840 m!3309587))

(assert (=> b!2907826 d!836617))

(declare-fun d!836619 () Bool)

(declare-fun c!473905 () Bool)

(declare-fun isEmpty!18898 (List!34746) Bool)

(assert (=> d!836619 (= c!473905 (isEmpty!18898 prefix!909))))

(declare-fun e!1835562 () Bool)

(assert (=> d!836619 (= (prefixMatchZipper!359 z!929 prefix!909) e!1835562)))

(declare-fun b!2907853 () Bool)

(declare-fun lostCauseZipper!607 ((InoxSet Context!5486)) Bool)

(assert (=> b!2907853 (= e!1835562 (not (lostCauseZipper!607 z!929)))))

(declare-fun b!2907854 () Bool)

(declare-fun head!6437 (List!34746) C!18012)

(assert (=> b!2907854 (= e!1835562 (prefixMatchZipper!359 (derivationStepZipper!505 z!929 (head!6437 prefix!909)) (tail!4668 prefix!909)))))

(assert (= (and d!836619 c!473905) b!2907853))

(assert (= (and d!836619 (not c!473905)) b!2907854))

(declare-fun m!3309597 () Bool)

(assert (=> d!836619 m!3309597))

(declare-fun m!3309599 () Bool)

(assert (=> b!2907853 m!3309599))

(declare-fun m!3309601 () Bool)

(assert (=> b!2907854 m!3309601))

(assert (=> b!2907854 m!3309601))

(declare-fun m!3309603 () Bool)

(assert (=> b!2907854 m!3309603))

(declare-fun m!3309605 () Bool)

(assert (=> b!2907854 m!3309605))

(assert (=> b!2907854 m!3309603))

(assert (=> b!2907854 m!3309605))

(declare-fun m!3309607 () Bool)

(assert (=> b!2907854 m!3309607))

(assert (=> b!2907827 d!836619))

(declare-fun d!836623 () Bool)

(declare-fun c!473906 () Bool)

(assert (=> d!836623 (= c!473906 (isEmpty!18898 (t!233789 prefix!909)))))

(declare-fun e!1835566 () Bool)

(assert (=> d!836623 (= (prefixMatchZipper!359 (derivationStepZipper!505 z!929 (h!40042 prefix!909)) (t!233789 prefix!909)) e!1835566)))

(declare-fun b!2907859 () Bool)

(assert (=> b!2907859 (= e!1835566 (not (lostCauseZipper!607 (derivationStepZipper!505 z!929 (h!40042 prefix!909)))))))

(declare-fun b!2907860 () Bool)

(assert (=> b!2907860 (= e!1835566 (prefixMatchZipper!359 (derivationStepZipper!505 (derivationStepZipper!505 z!929 (h!40042 prefix!909)) (head!6437 (t!233789 prefix!909))) (tail!4668 (t!233789 prefix!909))))))

(assert (= (and d!836623 c!473906) b!2907859))

(assert (= (and d!836623 (not c!473906)) b!2907860))

(declare-fun m!3309621 () Bool)

(assert (=> d!836623 m!3309621))

(assert (=> b!2907859 m!3309591))

(declare-fun m!3309623 () Bool)

(assert (=> b!2907859 m!3309623))

(declare-fun m!3309625 () Bool)

(assert (=> b!2907860 m!3309625))

(assert (=> b!2907860 m!3309591))

(assert (=> b!2907860 m!3309625))

(declare-fun m!3309627 () Bool)

(assert (=> b!2907860 m!3309627))

(declare-fun m!3309629 () Bool)

(assert (=> b!2907860 m!3309629))

(assert (=> b!2907860 m!3309627))

(assert (=> b!2907860 m!3309629))

(declare-fun m!3309631 () Bool)

(assert (=> b!2907860 m!3309631))

(assert (=> b!2907828 d!836623))

(declare-fun d!836627 () Bool)

(assert (=> d!836627 true))

(declare-fun lambda!107862 () Int)

(declare-fun flatMap!242 ((InoxSet Context!5486) Int) (InoxSet Context!5486))

(assert (=> d!836627 (= (derivationStepZipper!505 z!929 (h!40042 prefix!909)) (flatMap!242 z!929 lambda!107862))))

(declare-fun bs!524232 () Bool)

(assert (= bs!524232 d!836627))

(declare-fun m!3309667 () Bool)

(assert (=> bs!524232 m!3309667))

(assert (=> b!2907828 d!836627))

(declare-fun d!836643 () Bool)

(declare-fun lambda!107865 () Int)

(declare-fun forall!7120 (List!34745 Int) Bool)

(assert (=> d!836643 (= (inv!46742 setElem!25823) (forall!7120 (exprs!3243 setElem!25823) lambda!107865))))

(declare-fun bs!524233 () Bool)

(assert (= bs!524233 d!836643))

(declare-fun m!3309669 () Bool)

(assert (=> bs!524233 m!3309669))

(assert (=> setNonEmpty!25823 d!836643))

(declare-fun d!836645 () Bool)

(declare-fun e!1835596 () Bool)

(assert (=> d!836645 e!1835596))

(declare-fun res!1200821 () Bool)

(assert (=> d!836645 (=> res!1200821 e!1835596)))

(declare-fun lt!1022902 () Bool)

(assert (=> d!836645 (= res!1200821 (not lt!1022902))))

(declare-fun e!1835595 () Bool)

(assert (=> d!836645 (= lt!1022902 e!1835595)))

(declare-fun res!1200823 () Bool)

(assert (=> d!836645 (=> res!1200823 e!1835595)))

(assert (=> d!836645 (= res!1200823 ((_ is Nil!34622) prefix!909))))

(assert (=> d!836645 (= (isPrefix!2752 prefix!909 s!2253) lt!1022902)))

(declare-fun b!2907909 () Bool)

(declare-fun e!1835594 () Bool)

(assert (=> b!2907909 (= e!1835595 e!1835594)))

(declare-fun res!1200822 () Bool)

(assert (=> b!2907909 (=> (not res!1200822) (not e!1835594))))

(assert (=> b!2907909 (= res!1200822 (not ((_ is Nil!34622) s!2253)))))

(declare-fun b!2907911 () Bool)

(assert (=> b!2907911 (= e!1835594 (isPrefix!2752 (tail!4668 prefix!909) (tail!4668 s!2253)))))

(declare-fun b!2907910 () Bool)

(declare-fun res!1200820 () Bool)

(assert (=> b!2907910 (=> (not res!1200820) (not e!1835594))))

(assert (=> b!2907910 (= res!1200820 (= (head!6437 prefix!909) (head!6437 s!2253)))))

(declare-fun b!2907912 () Bool)

(assert (=> b!2907912 (= e!1835596 (>= (size!26386 s!2253) (size!26386 prefix!909)))))

(assert (= (and d!836645 (not res!1200823)) b!2907909))

(assert (= (and b!2907909 res!1200822) b!2907910))

(assert (= (and b!2907910 res!1200820) b!2907911))

(assert (= (and d!836645 (not res!1200821)) b!2907912))

(assert (=> b!2907911 m!3309605))

(assert (=> b!2907911 m!3309579))

(assert (=> b!2907911 m!3309605))

(assert (=> b!2907911 m!3309579))

(declare-fun m!3309671 () Bool)

(assert (=> b!2907911 m!3309671))

(assert (=> b!2907910 m!3309601))

(declare-fun m!3309673 () Bool)

(assert (=> b!2907910 m!3309673))

(declare-fun m!3309675 () Bool)

(assert (=> b!2907912 m!3309675))

(assert (=> b!2907912 m!3309589))

(assert (=> start!283042 d!836645))

(declare-fun d!836647 () Bool)

(declare-fun e!1835599 () Bool)

(assert (=> d!836647 e!1835599))

(declare-fun res!1200825 () Bool)

(assert (=> d!836647 (=> res!1200825 e!1835599)))

(declare-fun lt!1022903 () Bool)

(assert (=> d!836647 (= res!1200825 (not lt!1022903))))

(declare-fun e!1835598 () Bool)

(assert (=> d!836647 (= lt!1022903 e!1835598)))

(declare-fun res!1200827 () Bool)

(assert (=> d!836647 (=> res!1200827 e!1835598)))

(assert (=> d!836647 (= res!1200827 ((_ is Nil!34622) (t!233789 prefix!909)))))

(assert (=> d!836647 (= (isPrefix!2752 (t!233789 prefix!909) (tail!4668 s!2253)) lt!1022903)))

(declare-fun b!2907913 () Bool)

(declare-fun e!1835597 () Bool)

(assert (=> b!2907913 (= e!1835598 e!1835597)))

(declare-fun res!1200826 () Bool)

(assert (=> b!2907913 (=> (not res!1200826) (not e!1835597))))

(assert (=> b!2907913 (= res!1200826 (not ((_ is Nil!34622) (tail!4668 s!2253))))))

(declare-fun b!2907915 () Bool)

(assert (=> b!2907915 (= e!1835597 (isPrefix!2752 (tail!4668 (t!233789 prefix!909)) (tail!4668 (tail!4668 s!2253))))))

(declare-fun b!2907914 () Bool)

(declare-fun res!1200824 () Bool)

(assert (=> b!2907914 (=> (not res!1200824) (not e!1835597))))

(assert (=> b!2907914 (= res!1200824 (= (head!6437 (t!233789 prefix!909)) (head!6437 (tail!4668 s!2253))))))

(declare-fun b!2907916 () Bool)

(assert (=> b!2907916 (= e!1835599 (>= (size!26386 (tail!4668 s!2253)) (size!26386 (t!233789 prefix!909))))))

(assert (= (and d!836647 (not res!1200827)) b!2907913))

(assert (= (and b!2907913 res!1200826) b!2907914))

(assert (= (and b!2907914 res!1200824) b!2907915))

(assert (= (and d!836647 (not res!1200825)) b!2907916))

(assert (=> b!2907915 m!3309629))

(assert (=> b!2907915 m!3309579))

(declare-fun m!3309677 () Bool)

(assert (=> b!2907915 m!3309677))

(assert (=> b!2907915 m!3309629))

(assert (=> b!2907915 m!3309677))

(declare-fun m!3309679 () Bool)

(assert (=> b!2907915 m!3309679))

(assert (=> b!2907914 m!3309625))

(assert (=> b!2907914 m!3309579))

(declare-fun m!3309681 () Bool)

(assert (=> b!2907914 m!3309681))

(assert (=> b!2907916 m!3309579))

(declare-fun m!3309683 () Bool)

(assert (=> b!2907916 m!3309683))

(assert (=> b!2907916 m!3309587))

(assert (=> b!2907830 d!836647))

(declare-fun d!836649 () Bool)

(assert (=> d!836649 (= (tail!4668 s!2253) (t!233789 s!2253))))

(assert (=> b!2907830 d!836649))

(declare-fun b!2907921 () Bool)

(declare-fun e!1835602 () Bool)

(declare-fun tp!934172 () Bool)

(assert (=> b!2907921 (= e!1835602 (and tp_is_empty!15417 tp!934172))))

(assert (=> b!2907825 (= tp!934150 e!1835602)))

(assert (= (and b!2907825 ((_ is Cons!34622) (t!233789 prefix!909))) b!2907921))

(declare-fun b!2907926 () Bool)

(declare-fun e!1835605 () Bool)

(declare-fun tp!934177 () Bool)

(declare-fun tp!934178 () Bool)

(assert (=> b!2907926 (= e!1835605 (and tp!934177 tp!934178))))

(assert (=> b!2907831 (= tp!934153 e!1835605)))

(assert (= (and b!2907831 ((_ is Cons!34621) (exprs!3243 setElem!25823))) b!2907926))

(declare-fun b!2907927 () Bool)

(declare-fun e!1835606 () Bool)

(declare-fun tp!934179 () Bool)

(assert (=> b!2907927 (= e!1835606 (and tp_is_empty!15417 tp!934179))))

(assert (=> b!2907829 (= tp!934151 e!1835606)))

(assert (= (and b!2907829 ((_ is Cons!34622) (t!233789 s!2253))) b!2907927))

(declare-fun condSetEmpty!25829 () Bool)

(assert (=> setNonEmpty!25823 (= condSetEmpty!25829 (= setRest!25823 ((as const (Array Context!5486 Bool)) false)))))

(declare-fun setRes!25829 () Bool)

(assert (=> setNonEmpty!25823 (= tp!934152 setRes!25829)))

(declare-fun setIsEmpty!25829 () Bool)

(assert (=> setIsEmpty!25829 setRes!25829))

(declare-fun setNonEmpty!25829 () Bool)

(declare-fun e!1835609 () Bool)

(declare-fun tp!934184 () Bool)

(declare-fun setElem!25829 () Context!5486)

(assert (=> setNonEmpty!25829 (= setRes!25829 (and tp!934184 (inv!46742 setElem!25829) e!1835609))))

(declare-fun setRest!25829 () (InoxSet Context!5486))

(assert (=> setNonEmpty!25829 (= setRest!25823 ((_ map or) (store ((as const (Array Context!5486 Bool)) false) setElem!25829 true) setRest!25829))))

(declare-fun b!2907932 () Bool)

(declare-fun tp!934185 () Bool)

(assert (=> b!2907932 (= e!1835609 tp!934185)))

(assert (= (and setNonEmpty!25823 condSetEmpty!25829) setIsEmpty!25829))

(assert (= (and setNonEmpty!25823 (not condSetEmpty!25829)) setNonEmpty!25829))

(assert (= setNonEmpty!25829 b!2907932))

(declare-fun m!3309685 () Bool)

(assert (=> setNonEmpty!25829 m!3309685))

(check-sat (not b!2907926) (not b!2907914) (not b!2907840) (not b!2907838) (not b!2907854) (not b!2907912) tp_is_empty!15417 (not b!2907915) (not b!2907853) (not b!2907911) (not b!2907910) (not b!2907860) (not b!2907927) (not b!2907921) (not b!2907932) (not d!836623) (not d!836627) (not b!2907859) (not b!2907916) (not d!836643) (not d!836619) (not setNonEmpty!25829))
(check-sat)
