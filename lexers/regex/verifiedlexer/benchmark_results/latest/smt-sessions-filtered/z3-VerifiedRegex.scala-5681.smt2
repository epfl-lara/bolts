; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283070 () Bool)

(assert start!283070)

(declare-fun b!2907973 () Bool)

(declare-fun e!1835637 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!18016 0))(
  ( (C!18017 (val!11042 Int)) )
))
(declare-datatypes ((Regex!8917 0))(
  ( (ElementMatch!8917 (c!473920 C!18016)) (Concat!14238 (regOne!18346 Regex!8917) (regTwo!18346 Regex!8917)) (EmptyExpr!8917) (Star!8917 (reg!9246 Regex!8917)) (EmptyLang!8917) (Union!8917 (regOne!18347 Regex!8917) (regTwo!18347 Regex!8917)) )
))
(declare-datatypes ((List!34749 0))(
  ( (Nil!34625) (Cons!34625 (h!40045 Regex!8917) (t!233792 List!34749)) )
))
(declare-datatypes ((Context!5490 0))(
  ( (Context!5491 (exprs!3245 List!34749)) )
))
(declare-fun z!929 () (InoxSet Context!5490))

(declare-datatypes ((List!34750 0))(
  ( (Nil!34626) (Cons!34626 (h!40046 C!18016) (t!233793 List!34750)) )
))
(declare-fun s!2253 () List!34750)

(declare-fun matchZipper!509 ((InoxSet Context!5490) List!34750) Bool)

(assert (=> b!2907973 (= e!1835637 (not (not (matchZipper!509 z!929 s!2253))))))

(declare-fun lt!1022919 () (InoxSet Context!5490))

(declare-fun lt!1022920 () List!34750)

(assert (=> b!2907973 (not (matchZipper!509 lt!1022919 lt!1022920))))

(declare-fun prefix!909 () List!34750)

(declare-datatypes ((Unit!48177 0))(
  ( (Unit!48178) )
))
(declare-fun lt!1022921 () Unit!48177)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!210 ((InoxSet Context!5490) List!34750 List!34750) Unit!48177)

(assert (=> b!2907973 (= lt!1022921 (lemmaNotPrefixMatchThenCannotMatchLonger!210 lt!1022919 (t!233793 prefix!909) lt!1022920))))

(declare-fun b!2907975 () Bool)

(declare-fun e!1835636 () Bool)

(declare-fun tp_is_empty!15421 () Bool)

(declare-fun tp!934208 () Bool)

(assert (=> b!2907975 (= e!1835636 (and tp_is_empty!15421 tp!934208))))

(declare-fun setIsEmpty!25835 () Bool)

(declare-fun setRes!25835 () Bool)

(assert (=> setIsEmpty!25835 setRes!25835))

(declare-fun b!2907976 () Bool)

(declare-fun res!1200854 () Bool)

(assert (=> b!2907976 (=> (not res!1200854) (not e!1835637))))

(declare-fun prefixMatchZipper!361 ((InoxSet Context!5490) List!34750) Bool)

(assert (=> b!2907976 (= res!1200854 (not (prefixMatchZipper!361 lt!1022919 (t!233793 prefix!909))))))

(declare-fun e!1835635 () Bool)

(declare-fun setNonEmpty!25835 () Bool)

(declare-fun setElem!25835 () Context!5490)

(declare-fun tp!934207 () Bool)

(declare-fun inv!46747 (Context!5490) Bool)

(assert (=> setNonEmpty!25835 (= setRes!25835 (and tp!934207 (inv!46747 setElem!25835) e!1835635))))

(declare-fun setRest!25835 () (InoxSet Context!5490))

(assert (=> setNonEmpty!25835 (= z!929 ((_ map or) (store ((as const (Array Context!5490 Bool)) false) setElem!25835 true) setRest!25835))))

(declare-fun b!2907977 () Bool)

(declare-fun res!1200856 () Bool)

(declare-fun e!1835639 () Bool)

(assert (=> b!2907977 (=> (not res!1200856) (not e!1835639))))

(assert (=> b!2907977 (= res!1200856 (not (prefixMatchZipper!361 z!929 prefix!909)))))

(declare-fun b!2907978 () Bool)

(declare-fun res!1200853 () Bool)

(assert (=> b!2907978 (=> (not res!1200853) (not e!1835639))))

(get-info :version)

(assert (=> b!2907978 (= res!1200853 (not ((_ is Nil!34626) prefix!909)))))

(declare-fun res!1200857 () Bool)

(assert (=> start!283070 (=> (not res!1200857) (not e!1835639))))

(declare-fun isPrefix!2754 (List!34750 List!34750) Bool)

(assert (=> start!283070 (= res!1200857 (isPrefix!2754 prefix!909 s!2253))))

(assert (=> start!283070 e!1835639))

(assert (=> start!283070 e!1835636))

(declare-fun e!1835638 () Bool)

(assert (=> start!283070 e!1835638))

(declare-fun condSetEmpty!25835 () Bool)

(assert (=> start!283070 (= condSetEmpty!25835 (= z!929 ((as const (Array Context!5490 Bool)) false)))))

(assert (=> start!283070 setRes!25835))

(declare-fun b!2907974 () Bool)

(declare-fun tp!934209 () Bool)

(assert (=> b!2907974 (= e!1835635 tp!934209)))

(declare-fun b!2907979 () Bool)

(assert (=> b!2907979 (= e!1835639 e!1835637)))

(declare-fun res!1200855 () Bool)

(assert (=> b!2907979 (=> (not res!1200855) (not e!1835637))))

(assert (=> b!2907979 (= res!1200855 (isPrefix!2754 (t!233793 prefix!909) lt!1022920))))

(declare-fun tail!4670 (List!34750) List!34750)

(assert (=> b!2907979 (= lt!1022920 (tail!4670 s!2253))))

(declare-fun derivationStepZipper!507 ((InoxSet Context!5490) C!18016) (InoxSet Context!5490))

(assert (=> b!2907979 (= lt!1022919 (derivationStepZipper!507 z!929 (h!40046 prefix!909)))))

(declare-fun b!2907980 () Bool)

(declare-fun tp!934206 () Bool)

(assert (=> b!2907980 (= e!1835638 (and tp_is_empty!15421 tp!934206))))

(assert (= (and start!283070 res!1200857) b!2907977))

(assert (= (and b!2907977 res!1200856) b!2907978))

(assert (= (and b!2907978 res!1200853) b!2907979))

(assert (= (and b!2907979 res!1200855) b!2907976))

(assert (= (and b!2907976 res!1200854) b!2907973))

(assert (= (and start!283070 ((_ is Cons!34626) prefix!909)) b!2907975))

(assert (= (and start!283070 ((_ is Cons!34626) s!2253)) b!2907980))

(assert (= (and start!283070 condSetEmpty!25835) setIsEmpty!25835))

(assert (= (and start!283070 (not condSetEmpty!25835)) setNonEmpty!25835))

(assert (= setNonEmpty!25835 b!2907974))

(declare-fun m!3309707 () Bool)

(assert (=> b!2907973 m!3309707))

(declare-fun m!3309709 () Bool)

(assert (=> b!2907973 m!3309709))

(declare-fun m!3309711 () Bool)

(assert (=> b!2907973 m!3309711))

(declare-fun m!3309713 () Bool)

(assert (=> b!2907977 m!3309713))

(declare-fun m!3309715 () Bool)

(assert (=> b!2907976 m!3309715))

(declare-fun m!3309717 () Bool)

(assert (=> start!283070 m!3309717))

(declare-fun m!3309719 () Bool)

(assert (=> b!2907979 m!3309719))

(declare-fun m!3309721 () Bool)

(assert (=> b!2907979 m!3309721))

(declare-fun m!3309723 () Bool)

(assert (=> b!2907979 m!3309723))

(declare-fun m!3309725 () Bool)

(assert (=> setNonEmpty!25835 m!3309725))

(check-sat (not b!2907980) (not b!2907975) (not b!2907977) tp_is_empty!15421 (not setNonEmpty!25835) (not b!2907973) (not start!283070) (not b!2907976) (not b!2907979) (not b!2907974))
(check-sat)
(get-model)

(declare-fun d!836652 () Bool)

(declare-fun c!473923 () Bool)

(declare-fun isEmpty!18900 (List!34750) Bool)

(assert (=> d!836652 (= c!473923 (isEmpty!18900 s!2253))))

(declare-fun e!1835642 () Bool)

(assert (=> d!836652 (= (matchZipper!509 z!929 s!2253) e!1835642)))

(declare-fun b!2907985 () Bool)

(declare-fun nullableZipper!737 ((InoxSet Context!5490)) Bool)

(assert (=> b!2907985 (= e!1835642 (nullableZipper!737 z!929))))

(declare-fun b!2907986 () Bool)

(declare-fun head!6438 (List!34750) C!18016)

(assert (=> b!2907986 (= e!1835642 (matchZipper!509 (derivationStepZipper!507 z!929 (head!6438 s!2253)) (tail!4670 s!2253)))))

(assert (= (and d!836652 c!473923) b!2907985))

(assert (= (and d!836652 (not c!473923)) b!2907986))

(declare-fun m!3309727 () Bool)

(assert (=> d!836652 m!3309727))

(declare-fun m!3309729 () Bool)

(assert (=> b!2907985 m!3309729))

(declare-fun m!3309731 () Bool)

(assert (=> b!2907986 m!3309731))

(assert (=> b!2907986 m!3309731))

(declare-fun m!3309733 () Bool)

(assert (=> b!2907986 m!3309733))

(assert (=> b!2907986 m!3309721))

(assert (=> b!2907986 m!3309733))

(assert (=> b!2907986 m!3309721))

(declare-fun m!3309735 () Bool)

(assert (=> b!2907986 m!3309735))

(assert (=> b!2907973 d!836652))

(declare-fun d!836654 () Bool)

(declare-fun c!473924 () Bool)

(assert (=> d!836654 (= c!473924 (isEmpty!18900 lt!1022920))))

(declare-fun e!1835643 () Bool)

(assert (=> d!836654 (= (matchZipper!509 lt!1022919 lt!1022920) e!1835643)))

(declare-fun b!2907987 () Bool)

(assert (=> b!2907987 (= e!1835643 (nullableZipper!737 lt!1022919))))

(declare-fun b!2907988 () Bool)

(assert (=> b!2907988 (= e!1835643 (matchZipper!509 (derivationStepZipper!507 lt!1022919 (head!6438 lt!1022920)) (tail!4670 lt!1022920)))))

(assert (= (and d!836654 c!473924) b!2907987))

(assert (= (and d!836654 (not c!473924)) b!2907988))

(declare-fun m!3309737 () Bool)

(assert (=> d!836654 m!3309737))

(declare-fun m!3309739 () Bool)

(assert (=> b!2907987 m!3309739))

(declare-fun m!3309741 () Bool)

(assert (=> b!2907988 m!3309741))

(assert (=> b!2907988 m!3309741))

(declare-fun m!3309743 () Bool)

(assert (=> b!2907988 m!3309743))

(declare-fun m!3309745 () Bool)

(assert (=> b!2907988 m!3309745))

(assert (=> b!2907988 m!3309743))

(assert (=> b!2907988 m!3309745))

(declare-fun m!3309747 () Bool)

(assert (=> b!2907988 m!3309747))

(assert (=> b!2907973 d!836654))

(declare-fun d!836656 () Bool)

(assert (=> d!836656 (not (matchZipper!509 lt!1022919 lt!1022920))))

(declare-fun lt!1022924 () Unit!48177)

(declare-fun choose!17094 ((InoxSet Context!5490) List!34750 List!34750) Unit!48177)

(assert (=> d!836656 (= lt!1022924 (choose!17094 lt!1022919 (t!233793 prefix!909) lt!1022920))))

(assert (=> d!836656 (isPrefix!2754 (t!233793 prefix!909) lt!1022920)))

(assert (=> d!836656 (= (lemmaNotPrefixMatchThenCannotMatchLonger!210 lt!1022919 (t!233793 prefix!909) lt!1022920) lt!1022924)))

(declare-fun bs!524236 () Bool)

(assert (= bs!524236 d!836656))

(assert (=> bs!524236 m!3309709))

(declare-fun m!3309749 () Bool)

(assert (=> bs!524236 m!3309749))

(assert (=> bs!524236 m!3309719))

(assert (=> b!2907973 d!836656))

(declare-fun d!836660 () Bool)

(declare-fun lambda!107868 () Int)

(declare-fun forall!7122 (List!34749 Int) Bool)

(assert (=> d!836660 (= (inv!46747 setElem!25835) (forall!7122 (exprs!3245 setElem!25835) lambda!107868))))

(declare-fun bs!524238 () Bool)

(assert (= bs!524238 d!836660))

(declare-fun m!3309793 () Bool)

(assert (=> bs!524238 m!3309793))

(assert (=> setNonEmpty!25835 d!836660))

(declare-fun b!2908023 () Bool)

(declare-fun e!1835667 () Bool)

(declare-fun e!1835666 () Bool)

(assert (=> b!2908023 (= e!1835667 e!1835666)))

(declare-fun res!1200878 () Bool)

(assert (=> b!2908023 (=> (not res!1200878) (not e!1835666))))

(assert (=> b!2908023 (= res!1200878 (not ((_ is Nil!34626) s!2253)))))

(declare-fun b!2908024 () Bool)

(declare-fun res!1200879 () Bool)

(assert (=> b!2908024 (=> (not res!1200879) (not e!1835666))))

(assert (=> b!2908024 (= res!1200879 (= (head!6438 prefix!909) (head!6438 s!2253)))))

(declare-fun b!2908026 () Bool)

(declare-fun e!1835668 () Bool)

(declare-fun size!26387 (List!34750) Int)

(assert (=> b!2908026 (= e!1835668 (>= (size!26387 s!2253) (size!26387 prefix!909)))))

(declare-fun d!836672 () Bool)

(assert (=> d!836672 e!1835668))

(declare-fun res!1200881 () Bool)

(assert (=> d!836672 (=> res!1200881 e!1835668)))

(declare-fun lt!1022933 () Bool)

(assert (=> d!836672 (= res!1200881 (not lt!1022933))))

(assert (=> d!836672 (= lt!1022933 e!1835667)))

(declare-fun res!1200880 () Bool)

(assert (=> d!836672 (=> res!1200880 e!1835667)))

(assert (=> d!836672 (= res!1200880 ((_ is Nil!34626) prefix!909))))

(assert (=> d!836672 (= (isPrefix!2754 prefix!909 s!2253) lt!1022933)))

(declare-fun b!2908025 () Bool)

(assert (=> b!2908025 (= e!1835666 (isPrefix!2754 (tail!4670 prefix!909) (tail!4670 s!2253)))))

(assert (= (and d!836672 (not res!1200880)) b!2908023))

(assert (= (and b!2908023 res!1200878) b!2908024))

(assert (= (and b!2908024 res!1200879) b!2908025))

(assert (= (and d!836672 (not res!1200881)) b!2908026))

(declare-fun m!3309795 () Bool)

(assert (=> b!2908024 m!3309795))

(assert (=> b!2908024 m!3309731))

(declare-fun m!3309797 () Bool)

(assert (=> b!2908026 m!3309797))

(declare-fun m!3309799 () Bool)

(assert (=> b!2908026 m!3309799))

(declare-fun m!3309801 () Bool)

(assert (=> b!2908025 m!3309801))

(assert (=> b!2908025 m!3309721))

(assert (=> b!2908025 m!3309801))

(assert (=> b!2908025 m!3309721))

(declare-fun m!3309803 () Bool)

(assert (=> b!2908025 m!3309803))

(assert (=> start!283070 d!836672))

(declare-fun d!836674 () Bool)

(declare-fun c!473934 () Bool)

(assert (=> d!836674 (= c!473934 (isEmpty!18900 (t!233793 prefix!909)))))

(declare-fun e!1835671 () Bool)

(assert (=> d!836674 (= (prefixMatchZipper!361 lt!1022919 (t!233793 prefix!909)) e!1835671)))

(declare-fun b!2908031 () Bool)

(declare-fun lostCauseZipper!609 ((InoxSet Context!5490)) Bool)

(assert (=> b!2908031 (= e!1835671 (not (lostCauseZipper!609 lt!1022919)))))

(declare-fun b!2908032 () Bool)

(assert (=> b!2908032 (= e!1835671 (prefixMatchZipper!361 (derivationStepZipper!507 lt!1022919 (head!6438 (t!233793 prefix!909))) (tail!4670 (t!233793 prefix!909))))))

(assert (= (and d!836674 c!473934) b!2908031))

(assert (= (and d!836674 (not c!473934)) b!2908032))

(declare-fun m!3309805 () Bool)

(assert (=> d!836674 m!3309805))

(declare-fun m!3309807 () Bool)

(assert (=> b!2908031 m!3309807))

(declare-fun m!3309809 () Bool)

(assert (=> b!2908032 m!3309809))

(assert (=> b!2908032 m!3309809))

(declare-fun m!3309811 () Bool)

(assert (=> b!2908032 m!3309811))

(declare-fun m!3309813 () Bool)

(assert (=> b!2908032 m!3309813))

(assert (=> b!2908032 m!3309811))

(assert (=> b!2908032 m!3309813))

(declare-fun m!3309815 () Bool)

(assert (=> b!2908032 m!3309815))

(assert (=> b!2907976 d!836674))

(declare-fun b!2908033 () Bool)

(declare-fun e!1835673 () Bool)

(declare-fun e!1835672 () Bool)

(assert (=> b!2908033 (= e!1835673 e!1835672)))

(declare-fun res!1200882 () Bool)

(assert (=> b!2908033 (=> (not res!1200882) (not e!1835672))))

(assert (=> b!2908033 (= res!1200882 (not ((_ is Nil!34626) lt!1022920)))))

(declare-fun b!2908034 () Bool)

(declare-fun res!1200883 () Bool)

(assert (=> b!2908034 (=> (not res!1200883) (not e!1835672))))

(assert (=> b!2908034 (= res!1200883 (= (head!6438 (t!233793 prefix!909)) (head!6438 lt!1022920)))))

(declare-fun b!2908036 () Bool)

(declare-fun e!1835674 () Bool)

(assert (=> b!2908036 (= e!1835674 (>= (size!26387 lt!1022920) (size!26387 (t!233793 prefix!909))))))

(declare-fun d!836676 () Bool)

(assert (=> d!836676 e!1835674))

(declare-fun res!1200885 () Bool)

(assert (=> d!836676 (=> res!1200885 e!1835674)))

(declare-fun lt!1022934 () Bool)

(assert (=> d!836676 (= res!1200885 (not lt!1022934))))

(assert (=> d!836676 (= lt!1022934 e!1835673)))

(declare-fun res!1200884 () Bool)

(assert (=> d!836676 (=> res!1200884 e!1835673)))

(assert (=> d!836676 (= res!1200884 ((_ is Nil!34626) (t!233793 prefix!909)))))

(assert (=> d!836676 (= (isPrefix!2754 (t!233793 prefix!909) lt!1022920) lt!1022934)))

(declare-fun b!2908035 () Bool)

(assert (=> b!2908035 (= e!1835672 (isPrefix!2754 (tail!4670 (t!233793 prefix!909)) (tail!4670 lt!1022920)))))

(assert (= (and d!836676 (not res!1200884)) b!2908033))

(assert (= (and b!2908033 res!1200882) b!2908034))

(assert (= (and b!2908034 res!1200883) b!2908035))

(assert (= (and d!836676 (not res!1200885)) b!2908036))

(assert (=> b!2908034 m!3309809))

(assert (=> b!2908034 m!3309741))

(declare-fun m!3309817 () Bool)

(assert (=> b!2908036 m!3309817))

(declare-fun m!3309819 () Bool)

(assert (=> b!2908036 m!3309819))

(assert (=> b!2908035 m!3309813))

(assert (=> b!2908035 m!3309745))

(assert (=> b!2908035 m!3309813))

(assert (=> b!2908035 m!3309745))

(declare-fun m!3309821 () Bool)

(assert (=> b!2908035 m!3309821))

(assert (=> b!2907979 d!836676))

(declare-fun d!836678 () Bool)

(assert (=> d!836678 (= (tail!4670 s!2253) (t!233793 s!2253))))

(assert (=> b!2907979 d!836678))

(declare-fun d!836680 () Bool)

(assert (=> d!836680 true))

(declare-fun lambda!107871 () Int)

(declare-fun flatMap!243 ((InoxSet Context!5490) Int) (InoxSet Context!5490))

(assert (=> d!836680 (= (derivationStepZipper!507 z!929 (h!40046 prefix!909)) (flatMap!243 z!929 lambda!107871))))

(declare-fun bs!524239 () Bool)

(assert (= bs!524239 d!836680))

(declare-fun m!3309823 () Bool)

(assert (=> bs!524239 m!3309823))

(assert (=> b!2907979 d!836680))

(declare-fun d!836682 () Bool)

(declare-fun c!473937 () Bool)

(assert (=> d!836682 (= c!473937 (isEmpty!18900 prefix!909))))

(declare-fun e!1835675 () Bool)

(assert (=> d!836682 (= (prefixMatchZipper!361 z!929 prefix!909) e!1835675)))

(declare-fun b!2908039 () Bool)

(assert (=> b!2908039 (= e!1835675 (not (lostCauseZipper!609 z!929)))))

(declare-fun b!2908040 () Bool)

(assert (=> b!2908040 (= e!1835675 (prefixMatchZipper!361 (derivationStepZipper!507 z!929 (head!6438 prefix!909)) (tail!4670 prefix!909)))))

(assert (= (and d!836682 c!473937) b!2908039))

(assert (= (and d!836682 (not c!473937)) b!2908040))

(declare-fun m!3309825 () Bool)

(assert (=> d!836682 m!3309825))

(declare-fun m!3309827 () Bool)

(assert (=> b!2908039 m!3309827))

(assert (=> b!2908040 m!3309795))

(assert (=> b!2908040 m!3309795))

(declare-fun m!3309829 () Bool)

(assert (=> b!2908040 m!3309829))

(assert (=> b!2908040 m!3309801))

(assert (=> b!2908040 m!3309829))

(assert (=> b!2908040 m!3309801))

(declare-fun m!3309831 () Bool)

(assert (=> b!2908040 m!3309831))

(assert (=> b!2907977 d!836682))

(declare-fun condSetEmpty!25838 () Bool)

(assert (=> setNonEmpty!25835 (= condSetEmpty!25838 (= setRest!25835 ((as const (Array Context!5490 Bool)) false)))))

(declare-fun setRes!25838 () Bool)

(assert (=> setNonEmpty!25835 (= tp!934207 setRes!25838)))

(declare-fun setIsEmpty!25838 () Bool)

(assert (=> setIsEmpty!25838 setRes!25838))

(declare-fun setNonEmpty!25838 () Bool)

(declare-fun tp!934215 () Bool)

(declare-fun e!1835678 () Bool)

(declare-fun setElem!25838 () Context!5490)

(assert (=> setNonEmpty!25838 (= setRes!25838 (and tp!934215 (inv!46747 setElem!25838) e!1835678))))

(declare-fun setRest!25838 () (InoxSet Context!5490))

(assert (=> setNonEmpty!25838 (= setRest!25835 ((_ map or) (store ((as const (Array Context!5490 Bool)) false) setElem!25838 true) setRest!25838))))

(declare-fun b!2908045 () Bool)

(declare-fun tp!934214 () Bool)

(assert (=> b!2908045 (= e!1835678 tp!934214)))

(assert (= (and setNonEmpty!25835 condSetEmpty!25838) setIsEmpty!25838))

(assert (= (and setNonEmpty!25835 (not condSetEmpty!25838)) setNonEmpty!25838))

(assert (= setNonEmpty!25838 b!2908045))

(declare-fun m!3309833 () Bool)

(assert (=> setNonEmpty!25838 m!3309833))

(declare-fun b!2908050 () Bool)

(declare-fun e!1835681 () Bool)

(declare-fun tp!934218 () Bool)

(assert (=> b!2908050 (= e!1835681 (and tp_is_empty!15421 tp!934218))))

(assert (=> b!2907980 (= tp!934206 e!1835681)))

(assert (= (and b!2907980 ((_ is Cons!34626) (t!233793 s!2253))) b!2908050))

(declare-fun b!2908051 () Bool)

(declare-fun e!1835682 () Bool)

(declare-fun tp!934219 () Bool)

(assert (=> b!2908051 (= e!1835682 (and tp_is_empty!15421 tp!934219))))

(assert (=> b!2907975 (= tp!934208 e!1835682)))

(assert (= (and b!2907975 ((_ is Cons!34626) (t!233793 prefix!909))) b!2908051))

(declare-fun b!2908056 () Bool)

(declare-fun e!1835685 () Bool)

(declare-fun tp!934224 () Bool)

(declare-fun tp!934225 () Bool)

(assert (=> b!2908056 (= e!1835685 (and tp!934224 tp!934225))))

(assert (=> b!2907974 (= tp!934209 e!1835685)))

(assert (= (and b!2907974 ((_ is Cons!34625) (exprs!3245 setElem!25835))) b!2908056))

(check-sat (not b!2908032) (not d!836660) tp_is_empty!15421 (not d!836656) (not b!2908035) (not d!836652) (not d!836680) (not d!836674) (not b!2908026) (not d!836682) (not b!2907988) (not b!2907985) (not b!2908039) (not b!2908051) (not b!2908031) (not b!2908056) (not b!2908036) (not b!2908025) (not b!2907987) (not b!2908045) (not d!836654) (not b!2908040) (not setNonEmpty!25838) (not b!2908024) (not b!2908034) (not b!2907986) (not b!2908050))
(check-sat)
(get-model)

(declare-fun d!836692 () Bool)

(declare-fun c!473941 () Bool)

(assert (=> d!836692 (= c!473941 (isEmpty!18900 (tail!4670 s!2253)))))

(declare-fun e!1835693 () Bool)

(assert (=> d!836692 (= (matchZipper!509 (derivationStepZipper!507 z!929 (head!6438 s!2253)) (tail!4670 s!2253)) e!1835693)))

(declare-fun b!2908072 () Bool)

(assert (=> b!2908072 (= e!1835693 (nullableZipper!737 (derivationStepZipper!507 z!929 (head!6438 s!2253))))))

(declare-fun b!2908073 () Bool)

(assert (=> b!2908073 (= e!1835693 (matchZipper!509 (derivationStepZipper!507 (derivationStepZipper!507 z!929 (head!6438 s!2253)) (head!6438 (tail!4670 s!2253))) (tail!4670 (tail!4670 s!2253))))))

(assert (= (and d!836692 c!473941) b!2908072))

(assert (= (and d!836692 (not c!473941)) b!2908073))

(assert (=> d!836692 m!3309721))

(declare-fun m!3309857 () Bool)

(assert (=> d!836692 m!3309857))

(assert (=> b!2908072 m!3309733))

(declare-fun m!3309859 () Bool)

(assert (=> b!2908072 m!3309859))

(assert (=> b!2908073 m!3309721))

(declare-fun m!3309861 () Bool)

(assert (=> b!2908073 m!3309861))

(assert (=> b!2908073 m!3309733))

(assert (=> b!2908073 m!3309861))

(declare-fun m!3309863 () Bool)

(assert (=> b!2908073 m!3309863))

(assert (=> b!2908073 m!3309721))

(declare-fun m!3309865 () Bool)

(assert (=> b!2908073 m!3309865))

(assert (=> b!2908073 m!3309863))

(assert (=> b!2908073 m!3309865))

(declare-fun m!3309867 () Bool)

(assert (=> b!2908073 m!3309867))

(assert (=> b!2907986 d!836692))

(declare-fun bs!524242 () Bool)

(declare-fun d!836694 () Bool)

(assert (= bs!524242 (and d!836694 d!836680)))

(declare-fun lambda!107878 () Int)

(assert (=> bs!524242 (= (= (head!6438 s!2253) (h!40046 prefix!909)) (= lambda!107878 lambda!107871))))

(assert (=> d!836694 true))

(assert (=> d!836694 (= (derivationStepZipper!507 z!929 (head!6438 s!2253)) (flatMap!243 z!929 lambda!107878))))

(declare-fun bs!524243 () Bool)

(assert (= bs!524243 d!836694))

(declare-fun m!3309869 () Bool)

(assert (=> bs!524243 m!3309869))

(assert (=> b!2907986 d!836694))

(declare-fun d!836696 () Bool)

(assert (=> d!836696 (= (head!6438 s!2253) (h!40046 s!2253))))

(assert (=> b!2907986 d!836696))

(assert (=> b!2907986 d!836678))

(declare-fun d!836698 () Bool)

(assert (=> d!836698 (= (isEmpty!18900 (t!233793 prefix!909)) ((_ is Nil!34626) (t!233793 prefix!909)))))

(assert (=> d!836674 d!836698))

(declare-fun d!836700 () Bool)

(declare-fun lt!1022938 () Int)

(assert (=> d!836700 (>= lt!1022938 0)))

(declare-fun e!1835703 () Int)

(assert (=> d!836700 (= lt!1022938 e!1835703)))

(declare-fun c!473944 () Bool)

(assert (=> d!836700 (= c!473944 ((_ is Nil!34626) lt!1022920))))

(assert (=> d!836700 (= (size!26387 lt!1022920) lt!1022938)))

(declare-fun b!2908087 () Bool)

(assert (=> b!2908087 (= e!1835703 0)))

(declare-fun b!2908088 () Bool)

(assert (=> b!2908088 (= e!1835703 (+ 1 (size!26387 (t!233793 lt!1022920))))))

(assert (= (and d!836700 c!473944) b!2908087))

(assert (= (and d!836700 (not c!473944)) b!2908088))

(declare-fun m!3309873 () Bool)

(assert (=> b!2908088 m!3309873))

(assert (=> b!2908036 d!836700))

(declare-fun d!836702 () Bool)

(declare-fun lt!1022939 () Int)

(assert (=> d!836702 (>= lt!1022939 0)))

(declare-fun e!1835704 () Int)

(assert (=> d!836702 (= lt!1022939 e!1835704)))

(declare-fun c!473945 () Bool)

(assert (=> d!836702 (= c!473945 ((_ is Nil!34626) (t!233793 prefix!909)))))

(assert (=> d!836702 (= (size!26387 (t!233793 prefix!909)) lt!1022939)))

(declare-fun b!2908089 () Bool)

(assert (=> b!2908089 (= e!1835704 0)))

(declare-fun b!2908090 () Bool)

(assert (=> b!2908090 (= e!1835704 (+ 1 (size!26387 (t!233793 (t!233793 prefix!909)))))))

(assert (= (and d!836702 c!473945) b!2908089))

(assert (= (and d!836702 (not c!473945)) b!2908090))

(declare-fun m!3309875 () Bool)

(assert (=> b!2908090 m!3309875))

(assert (=> b!2908036 d!836702))

(declare-fun d!836704 () Bool)

(declare-fun lambda!107881 () Int)

(declare-fun exists!1211 ((InoxSet Context!5490) Int) Bool)

(assert (=> d!836704 (= (nullableZipper!737 z!929) (exists!1211 z!929 lambda!107881))))

(declare-fun bs!524244 () Bool)

(assert (= bs!524244 d!836704))

(declare-fun m!3309877 () Bool)

(assert (=> bs!524244 m!3309877))

(assert (=> b!2907985 d!836704))

(declare-fun d!836706 () Bool)

(declare-fun lt!1022940 () Int)

(assert (=> d!836706 (>= lt!1022940 0)))

(declare-fun e!1835705 () Int)

(assert (=> d!836706 (= lt!1022940 e!1835705)))

(declare-fun c!473948 () Bool)

(assert (=> d!836706 (= c!473948 ((_ is Nil!34626) s!2253))))

(assert (=> d!836706 (= (size!26387 s!2253) lt!1022940)))

(declare-fun b!2908091 () Bool)

(assert (=> b!2908091 (= e!1835705 0)))

(declare-fun b!2908092 () Bool)

(assert (=> b!2908092 (= e!1835705 (+ 1 (size!26387 (t!233793 s!2253))))))

(assert (= (and d!836706 c!473948) b!2908091))

(assert (= (and d!836706 (not c!473948)) b!2908092))

(declare-fun m!3309879 () Bool)

(assert (=> b!2908092 m!3309879))

(assert (=> b!2908026 d!836706))

(declare-fun d!836708 () Bool)

(declare-fun lt!1022941 () Int)

(assert (=> d!836708 (>= lt!1022941 0)))

(declare-fun e!1835706 () Int)

(assert (=> d!836708 (= lt!1022941 e!1835706)))

(declare-fun c!473949 () Bool)

(assert (=> d!836708 (= c!473949 ((_ is Nil!34626) prefix!909))))

(assert (=> d!836708 (= (size!26387 prefix!909) lt!1022941)))

(declare-fun b!2908093 () Bool)

(assert (=> b!2908093 (= e!1835706 0)))

(declare-fun b!2908094 () Bool)

(assert (=> b!2908094 (= e!1835706 (+ 1 (size!26387 (t!233793 prefix!909))))))

(assert (= (and d!836708 c!473949) b!2908093))

(assert (= (and d!836708 (not c!473949)) b!2908094))

(assert (=> b!2908094 m!3309819))

(assert (=> b!2908026 d!836708))

(declare-fun d!836710 () Bool)

(assert (=> d!836710 (= (isEmpty!18900 prefix!909) ((_ is Nil!34626) prefix!909))))

(assert (=> d!836682 d!836710))

(declare-fun b!2908095 () Bool)

(declare-fun e!1835708 () Bool)

(declare-fun e!1835707 () Bool)

(assert (=> b!2908095 (= e!1835708 e!1835707)))

(declare-fun res!1200890 () Bool)

(assert (=> b!2908095 (=> (not res!1200890) (not e!1835707))))

(assert (=> b!2908095 (= res!1200890 (not ((_ is Nil!34626) (tail!4670 lt!1022920))))))

(declare-fun b!2908096 () Bool)

(declare-fun res!1200891 () Bool)

(assert (=> b!2908096 (=> (not res!1200891) (not e!1835707))))

(assert (=> b!2908096 (= res!1200891 (= (head!6438 (tail!4670 (t!233793 prefix!909))) (head!6438 (tail!4670 lt!1022920))))))

(declare-fun b!2908098 () Bool)

(declare-fun e!1835709 () Bool)

(assert (=> b!2908098 (= e!1835709 (>= (size!26387 (tail!4670 lt!1022920)) (size!26387 (tail!4670 (t!233793 prefix!909)))))))

(declare-fun d!836712 () Bool)

(assert (=> d!836712 e!1835709))

(declare-fun res!1200893 () Bool)

(assert (=> d!836712 (=> res!1200893 e!1835709)))

(declare-fun lt!1022942 () Bool)

(assert (=> d!836712 (= res!1200893 (not lt!1022942))))

(assert (=> d!836712 (= lt!1022942 e!1835708)))

(declare-fun res!1200892 () Bool)

(assert (=> d!836712 (=> res!1200892 e!1835708)))

(assert (=> d!836712 (= res!1200892 ((_ is Nil!34626) (tail!4670 (t!233793 prefix!909))))))

(assert (=> d!836712 (= (isPrefix!2754 (tail!4670 (t!233793 prefix!909)) (tail!4670 lt!1022920)) lt!1022942)))

(declare-fun b!2908097 () Bool)

(assert (=> b!2908097 (= e!1835707 (isPrefix!2754 (tail!4670 (tail!4670 (t!233793 prefix!909))) (tail!4670 (tail!4670 lt!1022920))))))

(assert (= (and d!836712 (not res!1200892)) b!2908095))

(assert (= (and b!2908095 res!1200890) b!2908096))

(assert (= (and b!2908096 res!1200891) b!2908097))

(assert (= (and d!836712 (not res!1200893)) b!2908098))

(assert (=> b!2908096 m!3309813))

(declare-fun m!3309881 () Bool)

(assert (=> b!2908096 m!3309881))

(assert (=> b!2908096 m!3309745))

(declare-fun m!3309883 () Bool)

(assert (=> b!2908096 m!3309883))

(assert (=> b!2908098 m!3309745))

(declare-fun m!3309885 () Bool)

(assert (=> b!2908098 m!3309885))

(assert (=> b!2908098 m!3309813))

(declare-fun m!3309887 () Bool)

(assert (=> b!2908098 m!3309887))

(assert (=> b!2908097 m!3309813))

(declare-fun m!3309889 () Bool)

(assert (=> b!2908097 m!3309889))

(assert (=> b!2908097 m!3309745))

(declare-fun m!3309891 () Bool)

(assert (=> b!2908097 m!3309891))

(assert (=> b!2908097 m!3309889))

(assert (=> b!2908097 m!3309891))

(declare-fun m!3309893 () Bool)

(assert (=> b!2908097 m!3309893))

(assert (=> b!2908035 d!836712))

(declare-fun d!836714 () Bool)

(assert (=> d!836714 (= (tail!4670 (t!233793 prefix!909)) (t!233793 (t!233793 prefix!909)))))

(assert (=> b!2908035 d!836714))

(declare-fun d!836716 () Bool)

(assert (=> d!836716 (= (tail!4670 lt!1022920) (t!233793 lt!1022920))))

(assert (=> b!2908035 d!836716))

(assert (=> d!836656 d!836654))

(declare-fun d!836718 () Bool)

(assert (=> d!836718 (not (matchZipper!509 lt!1022919 lt!1022920))))

(assert (=> d!836718 true))

(declare-fun _$34!523 () Unit!48177)

(assert (=> d!836718 (= (choose!17094 lt!1022919 (t!233793 prefix!909) lt!1022920) _$34!523)))

(declare-fun bs!524245 () Bool)

(assert (= bs!524245 d!836718))

(assert (=> bs!524245 m!3309709))

(assert (=> d!836656 d!836718))

(assert (=> d!836656 d!836676))

(declare-fun b!2908099 () Bool)

(declare-fun e!1835711 () Bool)

(declare-fun e!1835710 () Bool)

(assert (=> b!2908099 (= e!1835711 e!1835710)))

(declare-fun res!1200894 () Bool)

(assert (=> b!2908099 (=> (not res!1200894) (not e!1835710))))

(assert (=> b!2908099 (= res!1200894 (not ((_ is Nil!34626) (tail!4670 s!2253))))))

(declare-fun b!2908100 () Bool)

(declare-fun res!1200895 () Bool)

(assert (=> b!2908100 (=> (not res!1200895) (not e!1835710))))

(assert (=> b!2908100 (= res!1200895 (= (head!6438 (tail!4670 prefix!909)) (head!6438 (tail!4670 s!2253))))))

(declare-fun b!2908102 () Bool)

(declare-fun e!1835712 () Bool)

(assert (=> b!2908102 (= e!1835712 (>= (size!26387 (tail!4670 s!2253)) (size!26387 (tail!4670 prefix!909))))))

(declare-fun d!836720 () Bool)

(assert (=> d!836720 e!1835712))

(declare-fun res!1200897 () Bool)

(assert (=> d!836720 (=> res!1200897 e!1835712)))

(declare-fun lt!1022943 () Bool)

(assert (=> d!836720 (= res!1200897 (not lt!1022943))))

(assert (=> d!836720 (= lt!1022943 e!1835711)))

(declare-fun res!1200896 () Bool)

(assert (=> d!836720 (=> res!1200896 e!1835711)))

(assert (=> d!836720 (= res!1200896 ((_ is Nil!34626) (tail!4670 prefix!909)))))

(assert (=> d!836720 (= (isPrefix!2754 (tail!4670 prefix!909) (tail!4670 s!2253)) lt!1022943)))

(declare-fun b!2908101 () Bool)

(assert (=> b!2908101 (= e!1835710 (isPrefix!2754 (tail!4670 (tail!4670 prefix!909)) (tail!4670 (tail!4670 s!2253))))))

(assert (= (and d!836720 (not res!1200896)) b!2908099))

(assert (= (and b!2908099 res!1200894) b!2908100))

(assert (= (and b!2908100 res!1200895) b!2908101))

(assert (= (and d!836720 (not res!1200897)) b!2908102))

(assert (=> b!2908100 m!3309801))

(declare-fun m!3309895 () Bool)

(assert (=> b!2908100 m!3309895))

(assert (=> b!2908100 m!3309721))

(assert (=> b!2908100 m!3309861))

(assert (=> b!2908102 m!3309721))

(declare-fun m!3309897 () Bool)

(assert (=> b!2908102 m!3309897))

(assert (=> b!2908102 m!3309801))

(declare-fun m!3309899 () Bool)

(assert (=> b!2908102 m!3309899))

(assert (=> b!2908101 m!3309801))

(declare-fun m!3309901 () Bool)

(assert (=> b!2908101 m!3309901))

(assert (=> b!2908101 m!3309721))

(assert (=> b!2908101 m!3309865))

(assert (=> b!2908101 m!3309901))

(assert (=> b!2908101 m!3309865))

(declare-fun m!3309903 () Bool)

(assert (=> b!2908101 m!3309903))

(assert (=> b!2908025 d!836720))

(declare-fun d!836722 () Bool)

(assert (=> d!836722 (= (tail!4670 prefix!909) (t!233793 prefix!909))))

(assert (=> b!2908025 d!836722))

(assert (=> b!2908025 d!836678))

(declare-fun d!836724 () Bool)

(assert (=> d!836724 (= (head!6438 (t!233793 prefix!909)) (h!40046 (t!233793 prefix!909)))))

(assert (=> b!2908034 d!836724))

(declare-fun d!836726 () Bool)

(assert (=> d!836726 (= (head!6438 lt!1022920) (h!40046 lt!1022920))))

(assert (=> b!2908034 d!836726))

(declare-fun d!836728 () Bool)

(assert (=> d!836728 (= (head!6438 prefix!909) (h!40046 prefix!909))))

(assert (=> b!2908024 d!836728))

(assert (=> b!2908024 d!836696))

(declare-fun d!836730 () Bool)

(declare-fun c!473950 () Bool)

(assert (=> d!836730 (= c!473950 (isEmpty!18900 (tail!4670 lt!1022920)))))

(declare-fun e!1835713 () Bool)

(assert (=> d!836730 (= (matchZipper!509 (derivationStepZipper!507 lt!1022919 (head!6438 lt!1022920)) (tail!4670 lt!1022920)) e!1835713)))

(declare-fun b!2908103 () Bool)

(assert (=> b!2908103 (= e!1835713 (nullableZipper!737 (derivationStepZipper!507 lt!1022919 (head!6438 lt!1022920))))))

(declare-fun b!2908104 () Bool)

(assert (=> b!2908104 (= e!1835713 (matchZipper!509 (derivationStepZipper!507 (derivationStepZipper!507 lt!1022919 (head!6438 lt!1022920)) (head!6438 (tail!4670 lt!1022920))) (tail!4670 (tail!4670 lt!1022920))))))

(assert (= (and d!836730 c!473950) b!2908103))

(assert (= (and d!836730 (not c!473950)) b!2908104))

(assert (=> d!836730 m!3309745))

(declare-fun m!3309905 () Bool)

(assert (=> d!836730 m!3309905))

(assert (=> b!2908103 m!3309743))

(declare-fun m!3309907 () Bool)

(assert (=> b!2908103 m!3309907))

(assert (=> b!2908104 m!3309745))

(assert (=> b!2908104 m!3309883))

(assert (=> b!2908104 m!3309743))

(assert (=> b!2908104 m!3309883))

(declare-fun m!3309909 () Bool)

(assert (=> b!2908104 m!3309909))

(assert (=> b!2908104 m!3309745))

(assert (=> b!2908104 m!3309891))

(assert (=> b!2908104 m!3309909))

(assert (=> b!2908104 m!3309891))

(declare-fun m!3309911 () Bool)

(assert (=> b!2908104 m!3309911))

(assert (=> b!2907988 d!836730))

(declare-fun bs!524246 () Bool)

(declare-fun d!836732 () Bool)

(assert (= bs!524246 (and d!836732 d!836680)))

(declare-fun lambda!107882 () Int)

(assert (=> bs!524246 (= (= (head!6438 lt!1022920) (h!40046 prefix!909)) (= lambda!107882 lambda!107871))))

(declare-fun bs!524247 () Bool)

(assert (= bs!524247 (and d!836732 d!836694)))

(assert (=> bs!524247 (= (= (head!6438 lt!1022920) (head!6438 s!2253)) (= lambda!107882 lambda!107878))))

(assert (=> d!836732 true))

(assert (=> d!836732 (= (derivationStepZipper!507 lt!1022919 (head!6438 lt!1022920)) (flatMap!243 lt!1022919 lambda!107882))))

(declare-fun bs!524248 () Bool)

(assert (= bs!524248 d!836732))

(declare-fun m!3309913 () Bool)

(assert (=> bs!524248 m!3309913))

(assert (=> b!2907988 d!836732))

(assert (=> b!2907988 d!836726))

(assert (=> b!2907988 d!836716))

(declare-fun d!836734 () Bool)

(assert (=> d!836734 (= (isEmpty!18900 s!2253) ((_ is Nil!34626) s!2253))))

(assert (=> d!836652 d!836734))

(declare-fun d!836736 () Bool)

(declare-fun c!473951 () Bool)

(assert (=> d!836736 (= c!473951 (isEmpty!18900 (tail!4670 (t!233793 prefix!909))))))

(declare-fun e!1835714 () Bool)

(assert (=> d!836736 (= (prefixMatchZipper!361 (derivationStepZipper!507 lt!1022919 (head!6438 (t!233793 prefix!909))) (tail!4670 (t!233793 prefix!909))) e!1835714)))

(declare-fun b!2908105 () Bool)

(assert (=> b!2908105 (= e!1835714 (not (lostCauseZipper!609 (derivationStepZipper!507 lt!1022919 (head!6438 (t!233793 prefix!909))))))))

(declare-fun b!2908106 () Bool)

(assert (=> b!2908106 (= e!1835714 (prefixMatchZipper!361 (derivationStepZipper!507 (derivationStepZipper!507 lt!1022919 (head!6438 (t!233793 prefix!909))) (head!6438 (tail!4670 (t!233793 prefix!909)))) (tail!4670 (tail!4670 (t!233793 prefix!909)))))))

(assert (= (and d!836736 c!473951) b!2908105))

(assert (= (and d!836736 (not c!473951)) b!2908106))

(assert (=> d!836736 m!3309813))

(declare-fun m!3309915 () Bool)

(assert (=> d!836736 m!3309915))

(assert (=> b!2908105 m!3309811))

(declare-fun m!3309917 () Bool)

(assert (=> b!2908105 m!3309917))

(assert (=> b!2908106 m!3309813))

(assert (=> b!2908106 m!3309881))

(assert (=> b!2908106 m!3309811))

(assert (=> b!2908106 m!3309881))

(declare-fun m!3309919 () Bool)

(assert (=> b!2908106 m!3309919))

(assert (=> b!2908106 m!3309813))

(assert (=> b!2908106 m!3309889))

(assert (=> b!2908106 m!3309919))

(assert (=> b!2908106 m!3309889))

(declare-fun m!3309921 () Bool)

(assert (=> b!2908106 m!3309921))

(assert (=> b!2908032 d!836736))

(declare-fun bs!524249 () Bool)

(declare-fun d!836738 () Bool)

(assert (= bs!524249 (and d!836738 d!836680)))

(declare-fun lambda!107883 () Int)

(assert (=> bs!524249 (= (= (head!6438 (t!233793 prefix!909)) (h!40046 prefix!909)) (= lambda!107883 lambda!107871))))

(declare-fun bs!524250 () Bool)

(assert (= bs!524250 (and d!836738 d!836694)))

(assert (=> bs!524250 (= (= (head!6438 (t!233793 prefix!909)) (head!6438 s!2253)) (= lambda!107883 lambda!107878))))

(declare-fun bs!524251 () Bool)

(assert (= bs!524251 (and d!836738 d!836732)))

(assert (=> bs!524251 (= (= (head!6438 (t!233793 prefix!909)) (head!6438 lt!1022920)) (= lambda!107883 lambda!107882))))

(assert (=> d!836738 true))

(assert (=> d!836738 (= (derivationStepZipper!507 lt!1022919 (head!6438 (t!233793 prefix!909))) (flatMap!243 lt!1022919 lambda!107883))))

(declare-fun bs!524252 () Bool)

(assert (= bs!524252 d!836738))

(declare-fun m!3309923 () Bool)

(assert (=> bs!524252 m!3309923))

(assert (=> b!2908032 d!836738))

(assert (=> b!2908032 d!836724))

(assert (=> b!2908032 d!836714))

(declare-fun bs!524253 () Bool)

(declare-fun d!836740 () Bool)

(assert (= bs!524253 (and d!836740 d!836704)))

(declare-fun lambda!107884 () Int)

(assert (=> bs!524253 (= lambda!107884 lambda!107881)))

(assert (=> d!836740 (= (nullableZipper!737 lt!1022919) (exists!1211 lt!1022919 lambda!107884))))

(declare-fun bs!524254 () Bool)

(assert (= bs!524254 d!836740))

(declare-fun m!3309925 () Bool)

(assert (=> bs!524254 m!3309925))

(assert (=> b!2907987 d!836740))

(declare-fun bs!524255 () Bool)

(declare-fun d!836742 () Bool)

(assert (= bs!524255 (and d!836742 d!836704)))

(declare-fun lambda!107897 () Int)

(assert (=> bs!524255 (not (= lambda!107897 lambda!107881))))

(declare-fun bs!524256 () Bool)

(assert (= bs!524256 (and d!836742 d!836740)))

(assert (=> bs!524256 (not (= lambda!107897 lambda!107884))))

(declare-fun bs!524257 () Bool)

(declare-fun b!2908111 () Bool)

(assert (= bs!524257 (and b!2908111 d!836704)))

(declare-fun lambda!107898 () Int)

(assert (=> bs!524257 (not (= lambda!107898 lambda!107881))))

(declare-fun bs!524258 () Bool)

(assert (= bs!524258 (and b!2908111 d!836740)))

(assert (=> bs!524258 (not (= lambda!107898 lambda!107884))))

(declare-fun bs!524259 () Bool)

(assert (= bs!524259 (and b!2908111 d!836742)))

(assert (=> bs!524259 (not (= lambda!107898 lambda!107897))))

(declare-fun bs!524260 () Bool)

(declare-fun b!2908112 () Bool)

(assert (= bs!524260 (and b!2908112 d!836704)))

(declare-fun lambda!107899 () Int)

(assert (=> bs!524260 (not (= lambda!107899 lambda!107881))))

(declare-fun bs!524261 () Bool)

(assert (= bs!524261 (and b!2908112 d!836740)))

(assert (=> bs!524261 (not (= lambda!107899 lambda!107884))))

(declare-fun bs!524262 () Bool)

(assert (= bs!524262 (and b!2908112 d!836742)))

(assert (=> bs!524262 (not (= lambda!107899 lambda!107897))))

(declare-fun bs!524263 () Bool)

(assert (= bs!524263 (and b!2908112 b!2908111)))

(assert (=> bs!524263 (= lambda!107899 lambda!107898)))

(declare-datatypes ((List!34751 0))(
  ( (Nil!34627) (Cons!34627 (h!40047 Context!5490) (t!233794 List!34751)) )
))
(declare-fun lt!1022962 () List!34751)

(declare-fun bm!189750 () Bool)

(declare-fun call!189756 () Bool)

(declare-fun lt!1022961 () List!34751)

(declare-fun c!473962 () Bool)

(declare-fun exists!1212 (List!34751 Int) Bool)

(assert (=> bm!189750 (= call!189756 (exists!1212 (ite c!473962 lt!1022962 lt!1022961) (ite c!473962 lambda!107898 lambda!107899)))))

(declare-fun lt!1022960 () Bool)

(declare-datatypes ((Option!6547 0))(
  ( (None!6546) (Some!6546 (v!34672 List!34750)) )
))
(declare-fun isEmpty!18902 (Option!6547) Bool)

(declare-fun getLanguageWitness!582 ((InoxSet Context!5490)) Option!6547)

(assert (=> d!836742 (= lt!1022960 (isEmpty!18902 (getLanguageWitness!582 lt!1022919)))))

(declare-fun forall!7124 ((InoxSet Context!5490) Int) Bool)

(assert (=> d!836742 (= lt!1022960 (forall!7124 lt!1022919 lambda!107897))))

(declare-fun lt!1022965 () Unit!48177)

(declare-fun e!1835721 () Unit!48177)

(assert (=> d!836742 (= lt!1022965 e!1835721)))

(assert (=> d!836742 (= c!473962 (not (forall!7124 lt!1022919 lambda!107897)))))

(assert (=> d!836742 (= (lostCauseZipper!609 lt!1022919) lt!1022960)))

(declare-fun Unit!48179 () Unit!48177)

(assert (=> b!2908112 (= e!1835721 Unit!48179)))

(declare-fun call!189755 () List!34751)

(assert (=> b!2908112 (= lt!1022961 call!189755)))

(declare-fun lt!1022966 () Unit!48177)

(declare-fun lemmaForallThenNotExists!147 (List!34751 Int) Unit!48177)

(assert (=> b!2908112 (= lt!1022966 (lemmaForallThenNotExists!147 lt!1022961 lambda!107897))))

(assert (=> b!2908112 (not call!189756)))

(declare-fun lt!1022963 () Unit!48177)

(assert (=> b!2908112 (= lt!1022963 lt!1022966)))

(declare-fun Unit!48180 () Unit!48177)

(assert (=> b!2908111 (= e!1835721 Unit!48180)))

(assert (=> b!2908111 (= lt!1022962 call!189755)))

(declare-fun lt!1022964 () Unit!48177)

(declare-fun lemmaNotForallThenExists!164 (List!34751 Int) Unit!48177)

(assert (=> b!2908111 (= lt!1022964 (lemmaNotForallThenExists!164 lt!1022962 lambda!107897))))

(assert (=> b!2908111 call!189756))

(declare-fun lt!1022967 () Unit!48177)

(assert (=> b!2908111 (= lt!1022967 lt!1022964)))

(declare-fun bm!189751 () Bool)

(declare-fun toList!2037 ((InoxSet Context!5490)) List!34751)

(assert (=> bm!189751 (= call!189755 (toList!2037 lt!1022919))))

(assert (= (and d!836742 c!473962) b!2908111))

(assert (= (and d!836742 (not c!473962)) b!2908112))

(assert (= (or b!2908111 b!2908112) bm!189750))

(assert (= (or b!2908111 b!2908112) bm!189751))

(declare-fun m!3309927 () Bool)

(assert (=> bm!189751 m!3309927))

(declare-fun m!3309929 () Bool)

(assert (=> d!836742 m!3309929))

(assert (=> d!836742 m!3309929))

(declare-fun m!3309931 () Bool)

(assert (=> d!836742 m!3309931))

(declare-fun m!3309933 () Bool)

(assert (=> d!836742 m!3309933))

(assert (=> d!836742 m!3309933))

(declare-fun m!3309935 () Bool)

(assert (=> b!2908112 m!3309935))

(declare-fun m!3309937 () Bool)

(assert (=> b!2908111 m!3309937))

(declare-fun m!3309939 () Bool)

(assert (=> bm!189750 m!3309939))

(assert (=> b!2908031 d!836742))

(declare-fun bs!524264 () Bool)

(declare-fun d!836744 () Bool)

(assert (= bs!524264 (and d!836744 d!836660)))

(declare-fun lambda!107900 () Int)

(assert (=> bs!524264 (= lambda!107900 lambda!107868)))

(assert (=> d!836744 (= (inv!46747 setElem!25838) (forall!7122 (exprs!3245 setElem!25838) lambda!107900))))

(declare-fun bs!524265 () Bool)

(assert (= bs!524265 d!836744))

(declare-fun m!3309941 () Bool)

(assert (=> bs!524265 m!3309941))

(assert (=> setNonEmpty!25838 d!836744))

(declare-fun d!836746 () Bool)

(declare-fun c!473963 () Bool)

(assert (=> d!836746 (= c!473963 (isEmpty!18900 (tail!4670 prefix!909)))))

(declare-fun e!1835722 () Bool)

(assert (=> d!836746 (= (prefixMatchZipper!361 (derivationStepZipper!507 z!929 (head!6438 prefix!909)) (tail!4670 prefix!909)) e!1835722)))

(declare-fun b!2908113 () Bool)

(assert (=> b!2908113 (= e!1835722 (not (lostCauseZipper!609 (derivationStepZipper!507 z!929 (head!6438 prefix!909)))))))

(declare-fun b!2908114 () Bool)

(assert (=> b!2908114 (= e!1835722 (prefixMatchZipper!361 (derivationStepZipper!507 (derivationStepZipper!507 z!929 (head!6438 prefix!909)) (head!6438 (tail!4670 prefix!909))) (tail!4670 (tail!4670 prefix!909))))))

(assert (= (and d!836746 c!473963) b!2908113))

(assert (= (and d!836746 (not c!473963)) b!2908114))

(assert (=> d!836746 m!3309801))

(declare-fun m!3309943 () Bool)

(assert (=> d!836746 m!3309943))

(assert (=> b!2908113 m!3309829))

(declare-fun m!3309945 () Bool)

(assert (=> b!2908113 m!3309945))

(assert (=> b!2908114 m!3309801))

(assert (=> b!2908114 m!3309895))

(assert (=> b!2908114 m!3309829))

(assert (=> b!2908114 m!3309895))

(declare-fun m!3309947 () Bool)

(assert (=> b!2908114 m!3309947))

(assert (=> b!2908114 m!3309801))

(assert (=> b!2908114 m!3309901))

(assert (=> b!2908114 m!3309947))

(assert (=> b!2908114 m!3309901))

(declare-fun m!3309949 () Bool)

(assert (=> b!2908114 m!3309949))

(assert (=> b!2908040 d!836746))

(declare-fun bs!524266 () Bool)

(declare-fun d!836748 () Bool)

(assert (= bs!524266 (and d!836748 d!836680)))

(declare-fun lambda!107901 () Int)

(assert (=> bs!524266 (= (= (head!6438 prefix!909) (h!40046 prefix!909)) (= lambda!107901 lambda!107871))))

(declare-fun bs!524267 () Bool)

(assert (= bs!524267 (and d!836748 d!836694)))

(assert (=> bs!524267 (= (= (head!6438 prefix!909) (head!6438 s!2253)) (= lambda!107901 lambda!107878))))

(declare-fun bs!524268 () Bool)

(assert (= bs!524268 (and d!836748 d!836732)))

(assert (=> bs!524268 (= (= (head!6438 prefix!909) (head!6438 lt!1022920)) (= lambda!107901 lambda!107882))))

(declare-fun bs!524269 () Bool)

(assert (= bs!524269 (and d!836748 d!836738)))

(assert (=> bs!524269 (= (= (head!6438 prefix!909) (head!6438 (t!233793 prefix!909))) (= lambda!107901 lambda!107883))))

(assert (=> d!836748 true))

(assert (=> d!836748 (= (derivationStepZipper!507 z!929 (head!6438 prefix!909)) (flatMap!243 z!929 lambda!107901))))

(declare-fun bs!524270 () Bool)

(assert (= bs!524270 d!836748))

(declare-fun m!3309951 () Bool)

(assert (=> bs!524270 m!3309951))

(assert (=> b!2908040 d!836748))

(assert (=> b!2908040 d!836728))

(assert (=> b!2908040 d!836722))

(declare-fun d!836750 () Bool)

(declare-fun res!1200902 () Bool)

(declare-fun e!1835727 () Bool)

(assert (=> d!836750 (=> res!1200902 e!1835727)))

(assert (=> d!836750 (= res!1200902 ((_ is Nil!34625) (exprs!3245 setElem!25835)))))

(assert (=> d!836750 (= (forall!7122 (exprs!3245 setElem!25835) lambda!107868) e!1835727)))

(declare-fun b!2908119 () Bool)

(declare-fun e!1835728 () Bool)

(assert (=> b!2908119 (= e!1835727 e!1835728)))

(declare-fun res!1200903 () Bool)

(assert (=> b!2908119 (=> (not res!1200903) (not e!1835728))))

(declare-fun dynLambda!14349 (Int Regex!8917) Bool)

(assert (=> b!2908119 (= res!1200903 (dynLambda!14349 lambda!107868 (h!40045 (exprs!3245 setElem!25835))))))

(declare-fun b!2908120 () Bool)

(assert (=> b!2908120 (= e!1835728 (forall!7122 (t!233792 (exprs!3245 setElem!25835)) lambda!107868))))

(assert (= (and d!836750 (not res!1200902)) b!2908119))

(assert (= (and b!2908119 res!1200903) b!2908120))

(declare-fun b_lambda!86351 () Bool)

(assert (=> (not b_lambda!86351) (not b!2908119)))

(declare-fun m!3309953 () Bool)

(assert (=> b!2908119 m!3309953))

(declare-fun m!3309955 () Bool)

(assert (=> b!2908120 m!3309955))

(assert (=> d!836660 d!836750))

(declare-fun d!836752 () Bool)

(declare-fun choose!17096 ((InoxSet Context!5490) Int) (InoxSet Context!5490))

(assert (=> d!836752 (= (flatMap!243 z!929 lambda!107871) (choose!17096 z!929 lambda!107871))))

(declare-fun bs!524271 () Bool)

(assert (= bs!524271 d!836752))

(declare-fun m!3309957 () Bool)

(assert (=> bs!524271 m!3309957))

(assert (=> d!836680 d!836752))

(declare-fun bs!524272 () Bool)

(declare-fun d!836754 () Bool)

(assert (= bs!524272 (and d!836754 d!836704)))

(declare-fun lambda!107902 () Int)

(assert (=> bs!524272 (not (= lambda!107902 lambda!107881))))

(declare-fun bs!524273 () Bool)

(assert (= bs!524273 (and d!836754 d!836740)))

(assert (=> bs!524273 (not (= lambda!107902 lambda!107884))))

(declare-fun bs!524274 () Bool)

(assert (= bs!524274 (and d!836754 d!836742)))

(assert (=> bs!524274 (= lambda!107902 lambda!107897)))

(declare-fun bs!524275 () Bool)

(assert (= bs!524275 (and d!836754 b!2908111)))

(assert (=> bs!524275 (not (= lambda!107902 lambda!107898))))

(declare-fun bs!524276 () Bool)

(assert (= bs!524276 (and d!836754 b!2908112)))

(assert (=> bs!524276 (not (= lambda!107902 lambda!107899))))

(declare-fun bs!524277 () Bool)

(declare-fun b!2908121 () Bool)

(assert (= bs!524277 (and b!2908121 d!836754)))

(declare-fun lambda!107903 () Int)

(assert (=> bs!524277 (not (= lambda!107903 lambda!107902))))

(declare-fun bs!524278 () Bool)

(assert (= bs!524278 (and b!2908121 d!836704)))

(assert (=> bs!524278 (not (= lambda!107903 lambda!107881))))

(declare-fun bs!524279 () Bool)

(assert (= bs!524279 (and b!2908121 d!836740)))

(assert (=> bs!524279 (not (= lambda!107903 lambda!107884))))

(declare-fun bs!524280 () Bool)

(assert (= bs!524280 (and b!2908121 d!836742)))

(assert (=> bs!524280 (not (= lambda!107903 lambda!107897))))

(declare-fun bs!524281 () Bool)

(assert (= bs!524281 (and b!2908121 b!2908111)))

(assert (=> bs!524281 (= lambda!107903 lambda!107898)))

(declare-fun bs!524282 () Bool)

(assert (= bs!524282 (and b!2908121 b!2908112)))

(assert (=> bs!524282 (= lambda!107903 lambda!107899)))

(declare-fun bs!524283 () Bool)

(declare-fun b!2908122 () Bool)

(assert (= bs!524283 (and b!2908122 d!836754)))

(declare-fun lambda!107904 () Int)

(assert (=> bs!524283 (not (= lambda!107904 lambda!107902))))

(declare-fun bs!524284 () Bool)

(assert (= bs!524284 (and b!2908122 d!836704)))

(assert (=> bs!524284 (not (= lambda!107904 lambda!107881))))

(declare-fun bs!524285 () Bool)

(assert (= bs!524285 (and b!2908122 d!836740)))

(assert (=> bs!524285 (not (= lambda!107904 lambda!107884))))

(declare-fun bs!524286 () Bool)

(assert (= bs!524286 (and b!2908122 d!836742)))

(assert (=> bs!524286 (not (= lambda!107904 lambda!107897))))

(declare-fun bs!524287 () Bool)

(assert (= bs!524287 (and b!2908122 b!2908111)))

(assert (=> bs!524287 (= lambda!107904 lambda!107898)))

(declare-fun bs!524288 () Bool)

(assert (= bs!524288 (and b!2908122 b!2908121)))

(assert (=> bs!524288 (= lambda!107904 lambda!107903)))

(declare-fun bs!524289 () Bool)

(assert (= bs!524289 (and b!2908122 b!2908112)))

(assert (=> bs!524289 (= lambda!107904 lambda!107899)))

(declare-fun bm!189752 () Bool)

(declare-fun lt!1022969 () List!34751)

(declare-fun call!189758 () Bool)

(declare-fun c!473964 () Bool)

(declare-fun lt!1022970 () List!34751)

(assert (=> bm!189752 (= call!189758 (exists!1212 (ite c!473964 lt!1022970 lt!1022969) (ite c!473964 lambda!107903 lambda!107904)))))

(declare-fun lt!1022968 () Bool)

(assert (=> d!836754 (= lt!1022968 (isEmpty!18902 (getLanguageWitness!582 z!929)))))

(assert (=> d!836754 (= lt!1022968 (forall!7124 z!929 lambda!107902))))

(declare-fun lt!1022973 () Unit!48177)

(declare-fun e!1835729 () Unit!48177)

(assert (=> d!836754 (= lt!1022973 e!1835729)))

(assert (=> d!836754 (= c!473964 (not (forall!7124 z!929 lambda!107902)))))

(assert (=> d!836754 (= (lostCauseZipper!609 z!929) lt!1022968)))

(declare-fun Unit!48181 () Unit!48177)

(assert (=> b!2908122 (= e!1835729 Unit!48181)))

(declare-fun call!189757 () List!34751)

(assert (=> b!2908122 (= lt!1022969 call!189757)))

(declare-fun lt!1022974 () Unit!48177)

(assert (=> b!2908122 (= lt!1022974 (lemmaForallThenNotExists!147 lt!1022969 lambda!107902))))

(assert (=> b!2908122 (not call!189758)))

(declare-fun lt!1022971 () Unit!48177)

(assert (=> b!2908122 (= lt!1022971 lt!1022974)))

(declare-fun Unit!48183 () Unit!48177)

(assert (=> b!2908121 (= e!1835729 Unit!48183)))

(assert (=> b!2908121 (= lt!1022970 call!189757)))

(declare-fun lt!1022972 () Unit!48177)

(assert (=> b!2908121 (= lt!1022972 (lemmaNotForallThenExists!164 lt!1022970 lambda!107902))))

(assert (=> b!2908121 call!189758))

(declare-fun lt!1022975 () Unit!48177)

(assert (=> b!2908121 (= lt!1022975 lt!1022972)))

(declare-fun bm!189753 () Bool)

(assert (=> bm!189753 (= call!189757 (toList!2037 z!929))))

(assert (= (and d!836754 c!473964) b!2908121))

(assert (= (and d!836754 (not c!473964)) b!2908122))

(assert (= (or b!2908121 b!2908122) bm!189752))

(assert (= (or b!2908121 b!2908122) bm!189753))

(declare-fun m!3309959 () Bool)

(assert (=> bm!189753 m!3309959))

(declare-fun m!3309961 () Bool)

(assert (=> d!836754 m!3309961))

(assert (=> d!836754 m!3309961))

(declare-fun m!3309963 () Bool)

(assert (=> d!836754 m!3309963))

(declare-fun m!3309965 () Bool)

(assert (=> d!836754 m!3309965))

(assert (=> d!836754 m!3309965))

(declare-fun m!3309967 () Bool)

(assert (=> b!2908122 m!3309967))

(declare-fun m!3309969 () Bool)

(assert (=> b!2908121 m!3309969))

(declare-fun m!3309971 () Bool)

(assert (=> bm!189752 m!3309971))

(assert (=> b!2908039 d!836754))

(declare-fun d!836756 () Bool)

(assert (=> d!836756 (= (isEmpty!18900 lt!1022920) ((_ is Nil!34626) lt!1022920))))

(assert (=> d!836654 d!836756))

(declare-fun b!2908123 () Bool)

(declare-fun e!1835730 () Bool)

(declare-fun tp!934242 () Bool)

(assert (=> b!2908123 (= e!1835730 (and tp_is_empty!15421 tp!934242))))

(assert (=> b!2908050 (= tp!934218 e!1835730)))

(assert (= (and b!2908050 ((_ is Cons!34626) (t!233793 (t!233793 s!2253)))) b!2908123))

(declare-fun b!2908135 () Bool)

(declare-fun e!1835733 () Bool)

(declare-fun tp!934256 () Bool)

(declare-fun tp!934255 () Bool)

(assert (=> b!2908135 (= e!1835733 (and tp!934256 tp!934255))))

(declare-fun b!2908136 () Bool)

(declare-fun tp!934254 () Bool)

(assert (=> b!2908136 (= e!1835733 tp!934254)))

(declare-fun b!2908137 () Bool)

(declare-fun tp!934257 () Bool)

(declare-fun tp!934253 () Bool)

(assert (=> b!2908137 (= e!1835733 (and tp!934257 tp!934253))))

(assert (=> b!2908056 (= tp!934224 e!1835733)))

(declare-fun b!2908134 () Bool)

(assert (=> b!2908134 (= e!1835733 tp_is_empty!15421)))

(assert (= (and b!2908056 ((_ is ElementMatch!8917) (h!40045 (exprs!3245 setElem!25835)))) b!2908134))

(assert (= (and b!2908056 ((_ is Concat!14238) (h!40045 (exprs!3245 setElem!25835)))) b!2908135))

(assert (= (and b!2908056 ((_ is Star!8917) (h!40045 (exprs!3245 setElem!25835)))) b!2908136))

(assert (= (and b!2908056 ((_ is Union!8917) (h!40045 (exprs!3245 setElem!25835)))) b!2908137))

(declare-fun b!2908138 () Bool)

(declare-fun e!1835734 () Bool)

(declare-fun tp!934258 () Bool)

(declare-fun tp!934259 () Bool)

(assert (=> b!2908138 (= e!1835734 (and tp!934258 tp!934259))))

(assert (=> b!2908056 (= tp!934225 e!1835734)))

(assert (= (and b!2908056 ((_ is Cons!34625) (t!233792 (exprs!3245 setElem!25835)))) b!2908138))

(declare-fun b!2908139 () Bool)

(declare-fun e!1835735 () Bool)

(declare-fun tp!934260 () Bool)

(declare-fun tp!934261 () Bool)

(assert (=> b!2908139 (= e!1835735 (and tp!934260 tp!934261))))

(assert (=> b!2908045 (= tp!934214 e!1835735)))

(assert (= (and b!2908045 ((_ is Cons!34625) (exprs!3245 setElem!25838))) b!2908139))

(declare-fun condSetEmpty!25842 () Bool)

(assert (=> setNonEmpty!25838 (= condSetEmpty!25842 (= setRest!25838 ((as const (Array Context!5490 Bool)) false)))))

(declare-fun setRes!25842 () Bool)

(assert (=> setNonEmpty!25838 (= tp!934215 setRes!25842)))

(declare-fun setIsEmpty!25842 () Bool)

(assert (=> setIsEmpty!25842 setRes!25842))

(declare-fun e!1835736 () Bool)

(declare-fun setElem!25842 () Context!5490)

(declare-fun tp!934263 () Bool)

(declare-fun setNonEmpty!25842 () Bool)

(assert (=> setNonEmpty!25842 (= setRes!25842 (and tp!934263 (inv!46747 setElem!25842) e!1835736))))

(declare-fun setRest!25842 () (InoxSet Context!5490))

(assert (=> setNonEmpty!25842 (= setRest!25838 ((_ map or) (store ((as const (Array Context!5490 Bool)) false) setElem!25842 true) setRest!25842))))

(declare-fun b!2908140 () Bool)

(declare-fun tp!934262 () Bool)

(assert (=> b!2908140 (= e!1835736 tp!934262)))

(assert (= (and setNonEmpty!25838 condSetEmpty!25842) setIsEmpty!25842))

(assert (= (and setNonEmpty!25838 (not condSetEmpty!25842)) setNonEmpty!25842))

(assert (= setNonEmpty!25842 b!2908140))

(declare-fun m!3309973 () Bool)

(assert (=> setNonEmpty!25842 m!3309973))

(declare-fun b!2908141 () Bool)

(declare-fun e!1835737 () Bool)

(declare-fun tp!934264 () Bool)

(assert (=> b!2908141 (= e!1835737 (and tp_is_empty!15421 tp!934264))))

(assert (=> b!2908051 (= tp!934219 e!1835737)))

(assert (= (and b!2908051 ((_ is Cons!34626) (t!233793 (t!233793 prefix!909)))) b!2908141))

(declare-fun b_lambda!86353 () Bool)

(assert (= b_lambda!86351 (or d!836660 b_lambda!86353)))

(declare-fun bs!524290 () Bool)

(declare-fun d!836758 () Bool)

(assert (= bs!524290 (and d!836758 d!836660)))

(declare-fun validRegex!3669 (Regex!8917) Bool)

(assert (=> bs!524290 (= (dynLambda!14349 lambda!107868 (h!40045 (exprs!3245 setElem!25835))) (validRegex!3669 (h!40045 (exprs!3245 setElem!25835))))))

(declare-fun m!3309975 () Bool)

(assert (=> bs!524290 m!3309975))

(assert (=> b!2908119 d!836758))

(check-sat (not b!2908101) (not bm!189753) tp_is_empty!15421 (not bm!189751) (not d!836694) (not bs!524290) (not b!2908100) (not b!2908137) (not d!836752) (not d!836718) (not b!2908111) (not bm!189750) (not b!2908103) (not b!2908098) (not b!2908120) (not b!2908073) (not b!2908136) (not d!836732) (not b!2908138) (not d!836730) (not d!836746) (not d!836736) (not d!836744) (not d!836754) (not b!2908135) (not d!836742) (not bm!189752) (not b!2908102) (not d!836692) (not b!2908112) (not b!2908097) (not b!2908072) (not b!2908141) (not b_lambda!86353) (not b!2908090) (not d!836740) (not b!2908114) (not b!2908140) (not setNonEmpty!25842) (not d!836738) (not b!2908121) (not b!2908122) (not b!2908106) (not b!2908139) (not b!2908123) (not b!2908088) (not d!836748) (not d!836704) (not b!2908092) (not b!2908094) (not b!2908105) (not b!2908096) (not b!2908104) (not b!2908113))
(check-sat)
