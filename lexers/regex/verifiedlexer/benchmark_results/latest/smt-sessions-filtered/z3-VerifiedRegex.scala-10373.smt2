; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537932 () Bool)

(assert start!537932)

(declare-fun setNonEmpty!29206 () Bool)

(declare-fun e!3181195 () Bool)

(declare-fun setRes!29206 () Bool)

(declare-fun tp!1422800 () Bool)

(declare-datatypes ((C!28340 0))(
  ( (C!28341 (val!23822 Int)) )
))
(declare-datatypes ((Regex!14041 0))(
  ( (ElementMatch!14041 (c!876311 C!28340)) (Concat!22886 (regOne!28594 Regex!14041) (regTwo!28594 Regex!14041)) (EmptyExpr!14041) (Star!14041 (reg!14370 Regex!14041)) (EmptyLang!14041) (Union!14041 (regOne!28595 Regex!14041) (regTwo!28595 Regex!14041)) )
))
(declare-datatypes ((List!58909 0))(
  ( (Nil!58785) (Cons!58785 (h!65233 Regex!14041) (t!371910 List!58909)) )
))
(declare-datatypes ((Context!6850 0))(
  ( (Context!6851 (exprs!3925 List!58909)) )
))
(declare-fun setElem!29206 () Context!6850)

(declare-fun inv!78277 (Context!6850) Bool)

(assert (=> setNonEmpty!29206 (= setRes!29206 (and tp!1422800 (inv!78277 setElem!29206) e!3181195))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6850))

(declare-fun setRest!29206 () (InoxSet Context!6850))

(assert (=> setNonEmpty!29206 (= z!4303 ((_ map or) (store ((as const (Array Context!6850 Bool)) false) setElem!29206 true) setRest!29206))))

(declare-fun b!5100769 () Bool)

(declare-fun e!3181196 () Bool)

(declare-datatypes ((List!58910 0))(
  ( (Nil!58786) (Cons!58786 (h!65234 C!28340) (t!371911 List!58910)) )
))
(declare-datatypes ((tuple2!63468 0))(
  ( (tuple2!63469 (_1!35037 List!58910) (_2!35037 List!58910)) )
))
(declare-fun lt!2097079 () tuple2!63468)

(declare-fun isEmpty!31786 (List!58910) Bool)

(assert (=> b!5100769 (= e!3181196 (isEmpty!31786 (_1!35037 lt!2097079)))))

(declare-fun setIsEmpty!29206 () Bool)

(assert (=> setIsEmpty!29206 setRes!29206))

(declare-fun b!5100770 () Bool)

(declare-fun e!3181199 () Bool)

(declare-fun tp_is_empty!37347 () Bool)

(declare-fun tp!1422803 () Bool)

(assert (=> b!5100770 (= e!3181199 (and tp_is_empty!37347 tp!1422803))))

(declare-fun b!5100771 () Bool)

(declare-fun e!3181200 () Bool)

(assert (=> b!5100771 (= e!3181200 (not e!3181196))))

(declare-fun res!2170885 () Bool)

(assert (=> b!5100771 (=> res!2170885 e!3181196)))

(declare-fun e!3181194 () Bool)

(assert (=> b!5100771 (= res!2170885 e!3181194)))

(declare-fun res!2170887 () Bool)

(assert (=> b!5100771 (=> (not res!2170887) (not e!3181194))))

(declare-fun lt!2097072 () tuple2!63468)

(declare-fun matchZipper!713 ((InoxSet Context!6850) List!58910) Bool)

(assert (=> b!5100771 (= res!2170887 (not (matchZipper!713 z!4303 (_1!35037 lt!2097072))))))

(declare-fun e!3181198 () Bool)

(assert (=> b!5100771 e!3181198))

(declare-fun res!2170888 () Bool)

(assert (=> b!5100771 (=> res!2170888 e!3181198)))

(declare-fun lt!2097078 () tuple2!63468)

(assert (=> b!5100771 (= res!2170888 (isEmpty!31786 (_1!35037 lt!2097078)))))

(declare-fun lt!2097075 () Int)

(declare-fun input!5654 () List!58910)

(declare-fun lt!2097076 () Int)

(declare-fun r!12920 () Regex!14041)

(declare-fun findLongestMatchInner!2054 (Regex!14041 List!58910 Int List!58910 List!58910 Int) tuple2!63468)

(assert (=> b!5100771 (= lt!2097078 (findLongestMatchInner!2054 r!12920 Nil!58786 lt!2097076 input!5654 input!5654 lt!2097075))))

(declare-datatypes ((Unit!149818 0))(
  ( (Unit!149819) )
))
(declare-fun lt!2097071 () Unit!149818)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2028 (Regex!14041 List!58910) Unit!149818)

(assert (=> b!5100771 (= lt!2097071 (longestMatchIsAcceptedByMatchOrIsEmpty!2028 r!12920 input!5654))))

(declare-fun e!3181197 () Bool)

(assert (=> b!5100771 e!3181197))

(declare-fun res!2170892 () Bool)

(assert (=> b!5100771 (=> res!2170892 e!3181197)))

(declare-fun lt!2097074 () tuple2!63468)

(assert (=> b!5100771 (= res!2170892 (isEmpty!31786 (_1!35037 lt!2097074)))))

(declare-fun findLongestMatchInnerZipper!115 ((InoxSet Context!6850) List!58910 Int List!58910 List!58910 Int) tuple2!63468)

(assert (=> b!5100771 (= lt!2097074 (findLongestMatchInnerZipper!115 z!4303 Nil!58786 lt!2097076 input!5654 input!5654 lt!2097075))))

(declare-fun size!39343 (List!58910) Int)

(assert (=> b!5100771 (= lt!2097075 (size!39343 input!5654))))

(assert (=> b!5100771 (= lt!2097076 (size!39343 Nil!58786))))

(declare-fun lt!2097073 () Unit!149818)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2029 ((InoxSet Context!6850) List!58910) Unit!149818)

(assert (=> b!5100771 (= lt!2097073 (longestMatchIsAcceptedByMatchOrIsEmpty!2029 z!4303 input!5654))))

(declare-fun lt!2097080 () List!58910)

(declare-fun isPrefix!5442 (List!58910 List!58910) Bool)

(assert (=> b!5100771 (isPrefix!5442 (_1!35037 lt!2097079) lt!2097080)))

(declare-fun lt!2097069 () Unit!149818)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3500 (List!58910 List!58910) Unit!149818)

(assert (=> b!5100771 (= lt!2097069 (lemmaConcatTwoListThenFirstIsPrefix!3500 (_1!35037 lt!2097079) (_2!35037 lt!2097079)))))

(declare-fun lt!2097070 () List!58910)

(assert (=> b!5100771 (isPrefix!5442 (_1!35037 lt!2097072) lt!2097070)))

(declare-fun lt!2097077 () Unit!149818)

(assert (=> b!5100771 (= lt!2097077 (lemmaConcatTwoListThenFirstIsPrefix!3500 (_1!35037 lt!2097072) (_2!35037 lt!2097072)))))

(declare-fun b!5100772 () Bool)

(declare-fun e!3181201 () Bool)

(declare-fun tp!1422801 () Bool)

(declare-fun tp!1422797 () Bool)

(assert (=> b!5100772 (= e!3181201 (and tp!1422801 tp!1422797))))

(declare-fun res!2170890 () Bool)

(declare-fun e!3181202 () Bool)

(assert (=> start!537932 (=> (not res!2170890) (not e!3181202))))

(declare-fun validRegex!6168 (Regex!14041) Bool)

(assert (=> start!537932 (= res!2170890 (validRegex!6168 r!12920))))

(assert (=> start!537932 e!3181202))

(assert (=> start!537932 e!3181201))

(declare-fun condSetEmpty!29206 () Bool)

(assert (=> start!537932 (= condSetEmpty!29206 (= z!4303 ((as const (Array Context!6850 Bool)) false)))))

(assert (=> start!537932 setRes!29206))

(assert (=> start!537932 e!3181199))

(declare-fun b!5100773 () Bool)

(assert (=> b!5100773 (= e!3181194 (not (isEmpty!31786 (_1!35037 lt!2097072))))))

(declare-fun b!5100774 () Bool)

(declare-fun tp!1422798 () Bool)

(declare-fun tp!1422799 () Bool)

(assert (=> b!5100774 (= e!3181201 (and tp!1422798 tp!1422799))))

(declare-fun b!5100775 () Bool)

(declare-fun res!2170886 () Bool)

(assert (=> b!5100775 (=> (not res!2170886) (not e!3181202))))

(declare-datatypes ((List!58911 0))(
  ( (Nil!58787) (Cons!58787 (h!65235 Context!6850) (t!371912 List!58911)) )
))
(declare-fun unfocusZipper!383 (List!58911) Regex!14041)

(declare-fun toList!8175 ((InoxSet Context!6850)) List!58911)

(assert (=> b!5100775 (= res!2170886 (= (unfocusZipper!383 (toList!8175 z!4303)) r!12920))))

(declare-fun b!5100776 () Bool)

(declare-fun tp!1422802 () Bool)

(assert (=> b!5100776 (= e!3181201 tp!1422802)))

(declare-fun b!5100777 () Bool)

(declare-fun matchR!6826 (Regex!14041 List!58910) Bool)

(assert (=> b!5100777 (= e!3181198 (matchR!6826 r!12920 (_1!35037 lt!2097078)))))

(declare-fun b!5100778 () Bool)

(assert (=> b!5100778 (= e!3181197 (matchZipper!713 z!4303 (_1!35037 lt!2097074)))))

(declare-fun b!5100779 () Bool)

(assert (=> b!5100779 (= e!3181201 tp_is_empty!37347)))

(declare-fun b!5100780 () Bool)

(declare-fun e!3181203 () Bool)

(assert (=> b!5100780 (= e!3181202 e!3181203)))

(declare-fun res!2170889 () Bool)

(assert (=> b!5100780 (=> (not res!2170889) (not e!3181203))))

(assert (=> b!5100780 (= res!2170889 (= lt!2097070 input!5654))))

(declare-fun ++!12890 (List!58910 List!58910) List!58910)

(assert (=> b!5100780 (= lt!2097070 (++!12890 (_1!35037 lt!2097072) (_2!35037 lt!2097072)))))

(declare-fun findLongestMatch!1871 (Regex!14041 List!58910) tuple2!63468)

(assert (=> b!5100780 (= lt!2097079 (findLongestMatch!1871 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!65 ((InoxSet Context!6850) List!58910) tuple2!63468)

(assert (=> b!5100780 (= lt!2097072 (findLongestMatchZipper!65 z!4303 input!5654))))

(declare-fun b!5100781 () Bool)

(declare-fun res!2170891 () Bool)

(assert (=> b!5100781 (=> res!2170891 e!3181196)))

(assert (=> b!5100781 (= res!2170891 (matchR!6826 r!12920 (_1!35037 lt!2097079)))))

(declare-fun b!5100782 () Bool)

(assert (=> b!5100782 (= e!3181203 e!3181200)))

(declare-fun res!2170884 () Bool)

(assert (=> b!5100782 (=> (not res!2170884) (not e!3181200))))

(assert (=> b!5100782 (= res!2170884 (= lt!2097080 input!5654))))

(assert (=> b!5100782 (= lt!2097080 (++!12890 (_1!35037 lt!2097079) (_2!35037 lt!2097079)))))

(declare-fun b!5100783 () Bool)

(declare-fun tp!1422796 () Bool)

(assert (=> b!5100783 (= e!3181195 tp!1422796)))

(assert (= (and start!537932 res!2170890) b!5100775))

(assert (= (and b!5100775 res!2170886) b!5100780))

(assert (= (and b!5100780 res!2170889) b!5100782))

(assert (= (and b!5100782 res!2170884) b!5100771))

(assert (= (and b!5100771 (not res!2170892)) b!5100778))

(assert (= (and b!5100771 (not res!2170888)) b!5100777))

(assert (= (and b!5100771 res!2170887) b!5100773))

(assert (= (and b!5100771 (not res!2170885)) b!5100781))

(assert (= (and b!5100781 (not res!2170891)) b!5100769))

(get-info :version)

(assert (= (and start!537932 ((_ is ElementMatch!14041) r!12920)) b!5100779))

(assert (= (and start!537932 ((_ is Concat!22886) r!12920)) b!5100772))

(assert (= (and start!537932 ((_ is Star!14041) r!12920)) b!5100776))

(assert (= (and start!537932 ((_ is Union!14041) r!12920)) b!5100774))

(assert (= (and start!537932 condSetEmpty!29206) setIsEmpty!29206))

(assert (= (and start!537932 (not condSetEmpty!29206)) setNonEmpty!29206))

(assert (= setNonEmpty!29206 b!5100783))

(assert (= (and start!537932 ((_ is Cons!58786) input!5654)) b!5100770))

(declare-fun m!6158110 () Bool)

(assert (=> b!5100775 m!6158110))

(assert (=> b!5100775 m!6158110))

(declare-fun m!6158112 () Bool)

(assert (=> b!5100775 m!6158112))

(declare-fun m!6158114 () Bool)

(assert (=> start!537932 m!6158114))

(declare-fun m!6158116 () Bool)

(assert (=> b!5100777 m!6158116))

(declare-fun m!6158118 () Bool)

(assert (=> b!5100778 m!6158118))

(declare-fun m!6158120 () Bool)

(assert (=> b!5100771 m!6158120))

(declare-fun m!6158122 () Bool)

(assert (=> b!5100771 m!6158122))

(declare-fun m!6158124 () Bool)

(assert (=> b!5100771 m!6158124))

(declare-fun m!6158126 () Bool)

(assert (=> b!5100771 m!6158126))

(declare-fun m!6158128 () Bool)

(assert (=> b!5100771 m!6158128))

(declare-fun m!6158130 () Bool)

(assert (=> b!5100771 m!6158130))

(declare-fun m!6158132 () Bool)

(assert (=> b!5100771 m!6158132))

(declare-fun m!6158134 () Bool)

(assert (=> b!5100771 m!6158134))

(declare-fun m!6158136 () Bool)

(assert (=> b!5100771 m!6158136))

(declare-fun m!6158138 () Bool)

(assert (=> b!5100771 m!6158138))

(declare-fun m!6158140 () Bool)

(assert (=> b!5100771 m!6158140))

(declare-fun m!6158142 () Bool)

(assert (=> b!5100771 m!6158142))

(declare-fun m!6158144 () Bool)

(assert (=> b!5100771 m!6158144))

(declare-fun m!6158146 () Bool)

(assert (=> b!5100782 m!6158146))

(declare-fun m!6158148 () Bool)

(assert (=> b!5100780 m!6158148))

(declare-fun m!6158150 () Bool)

(assert (=> b!5100780 m!6158150))

(declare-fun m!6158152 () Bool)

(assert (=> b!5100780 m!6158152))

(declare-fun m!6158154 () Bool)

(assert (=> b!5100769 m!6158154))

(declare-fun m!6158156 () Bool)

(assert (=> b!5100781 m!6158156))

(declare-fun m!6158158 () Bool)

(assert (=> setNonEmpty!29206 m!6158158))

(declare-fun m!6158160 () Bool)

(assert (=> b!5100773 m!6158160))

(check-sat (not setNonEmpty!29206) (not b!5100771) (not b!5100769) (not b!5100772) (not b!5100776) (not b!5100773) (not b!5100783) (not start!537932) (not b!5100777) (not b!5100782) (not b!5100774) (not b!5100778) (not b!5100780) (not b!5100781) tp_is_empty!37347 (not b!5100775) (not b!5100770))
(check-sat)
(get-model)

(declare-fun d!1649996 () Bool)

(declare-fun lambda!249957 () Int)

(declare-fun forall!13487 (List!58909 Int) Bool)

(assert (=> d!1649996 (= (inv!78277 setElem!29206) (forall!13487 (exprs!3925 setElem!29206) lambda!249957))))

(declare-fun bs!1191520 () Bool)

(assert (= bs!1191520 d!1649996))

(declare-fun m!6158310 () Bool)

(assert (=> bs!1191520 m!6158310))

(assert (=> setNonEmpty!29206 d!1649996))

(declare-fun d!1650028 () Bool)

(assert (=> d!1650028 (= (isEmpty!31786 (_1!35037 lt!2097072)) ((_ is Nil!58786) (_1!35037 lt!2097072)))))

(assert (=> b!5100773 d!1650028))

(declare-fun d!1650030 () Bool)

(declare-fun c!876366 () Bool)

(assert (=> d!1650030 (= c!876366 (isEmpty!31786 (_1!35037 lt!2097074)))))

(declare-fun e!3181300 () Bool)

(assert (=> d!1650030 (= (matchZipper!713 z!4303 (_1!35037 lt!2097074)) e!3181300)))

(declare-fun b!5100950 () Bool)

(declare-fun nullableZipper!958 ((InoxSet Context!6850)) Bool)

(assert (=> b!5100950 (= e!3181300 (nullableZipper!958 z!4303))))

(declare-fun b!5100951 () Bool)

(declare-fun derivationStepZipper!746 ((InoxSet Context!6850) C!28340) (InoxSet Context!6850))

(declare-fun head!10833 (List!58910) C!28340)

(declare-fun tail!9988 (List!58910) List!58910)

(assert (=> b!5100951 (= e!3181300 (matchZipper!713 (derivationStepZipper!746 z!4303 (head!10833 (_1!35037 lt!2097074))) (tail!9988 (_1!35037 lt!2097074))))))

(assert (= (and d!1650030 c!876366) b!5100950))

(assert (= (and d!1650030 (not c!876366)) b!5100951))

(assert (=> d!1650030 m!6158128))

(declare-fun m!6158312 () Bool)

(assert (=> b!5100950 m!6158312))

(declare-fun m!6158314 () Bool)

(assert (=> b!5100951 m!6158314))

(assert (=> b!5100951 m!6158314))

(declare-fun m!6158316 () Bool)

(assert (=> b!5100951 m!6158316))

(declare-fun m!6158318 () Bool)

(assert (=> b!5100951 m!6158318))

(assert (=> b!5100951 m!6158316))

(assert (=> b!5100951 m!6158318))

(declare-fun m!6158320 () Bool)

(assert (=> b!5100951 m!6158320))

(assert (=> b!5100778 d!1650030))

(declare-fun d!1650032 () Bool)

(assert (=> d!1650032 (= (isEmpty!31786 (_1!35037 lt!2097079)) ((_ is Nil!58786) (_1!35037 lt!2097079)))))

(assert (=> b!5100769 d!1650032))

(declare-fun d!1650034 () Bool)

(declare-fun lt!2097266 () Regex!14041)

(assert (=> d!1650034 (validRegex!6168 lt!2097266)))

(declare-fun generalisedUnion!601 (List!58909) Regex!14041)

(declare-fun unfocusZipperList!114 (List!58911) List!58909)

(assert (=> d!1650034 (= lt!2097266 (generalisedUnion!601 (unfocusZipperList!114 (toList!8175 z!4303))))))

(assert (=> d!1650034 (= (unfocusZipper!383 (toList!8175 z!4303)) lt!2097266)))

(declare-fun bs!1191521 () Bool)

(assert (= bs!1191521 d!1650034))

(declare-fun m!6158322 () Bool)

(assert (=> bs!1191521 m!6158322))

(assert (=> bs!1191521 m!6158110))

(declare-fun m!6158324 () Bool)

(assert (=> bs!1191521 m!6158324))

(assert (=> bs!1191521 m!6158324))

(declare-fun m!6158326 () Bool)

(assert (=> bs!1191521 m!6158326))

(assert (=> b!5100775 d!1650034))

(declare-fun d!1650036 () Bool)

(declare-fun e!3181303 () Bool)

(assert (=> d!1650036 e!3181303))

(declare-fun res!2170953 () Bool)

(assert (=> d!1650036 (=> (not res!2170953) (not e!3181303))))

(declare-fun lt!2097269 () List!58911)

(declare-fun noDuplicate!1060 (List!58911) Bool)

(assert (=> d!1650036 (= res!2170953 (noDuplicate!1060 lt!2097269))))

(declare-fun choose!37363 ((InoxSet Context!6850)) List!58911)

(assert (=> d!1650036 (= lt!2097269 (choose!37363 z!4303))))

(assert (=> d!1650036 (= (toList!8175 z!4303) lt!2097269)))

(declare-fun b!5100954 () Bool)

(declare-fun content!10459 (List!58911) (InoxSet Context!6850))

(assert (=> b!5100954 (= e!3181303 (= (content!10459 lt!2097269) z!4303))))

(assert (= (and d!1650036 res!2170953) b!5100954))

(declare-fun m!6158328 () Bool)

(assert (=> d!1650036 m!6158328))

(declare-fun m!6158330 () Bool)

(assert (=> d!1650036 m!6158330))

(declare-fun m!6158332 () Bool)

(assert (=> b!5100954 m!6158332))

(assert (=> b!5100775 d!1650036))

(declare-fun b!5100964 () Bool)

(declare-fun e!3181309 () List!58910)

(assert (=> b!5100964 (= e!3181309 (Cons!58786 (h!65234 (_1!35037 lt!2097072)) (++!12890 (t!371911 (_1!35037 lt!2097072)) (_2!35037 lt!2097072))))))

(declare-fun b!5100966 () Bool)

(declare-fun e!3181308 () Bool)

(declare-fun lt!2097272 () List!58910)

(assert (=> b!5100966 (= e!3181308 (or (not (= (_2!35037 lt!2097072) Nil!58786)) (= lt!2097272 (_1!35037 lt!2097072))))))

(declare-fun b!5100965 () Bool)

(declare-fun res!2170959 () Bool)

(assert (=> b!5100965 (=> (not res!2170959) (not e!3181308))))

(assert (=> b!5100965 (= res!2170959 (= (size!39343 lt!2097272) (+ (size!39343 (_1!35037 lt!2097072)) (size!39343 (_2!35037 lt!2097072)))))))

(declare-fun b!5100963 () Bool)

(assert (=> b!5100963 (= e!3181309 (_2!35037 lt!2097072))))

(declare-fun d!1650038 () Bool)

(assert (=> d!1650038 e!3181308))

(declare-fun res!2170958 () Bool)

(assert (=> d!1650038 (=> (not res!2170958) (not e!3181308))))

(declare-fun content!10460 (List!58910) (InoxSet C!28340))

(assert (=> d!1650038 (= res!2170958 (= (content!10460 lt!2097272) ((_ map or) (content!10460 (_1!35037 lt!2097072)) (content!10460 (_2!35037 lt!2097072)))))))

(assert (=> d!1650038 (= lt!2097272 e!3181309)))

(declare-fun c!876369 () Bool)

(assert (=> d!1650038 (= c!876369 ((_ is Nil!58786) (_1!35037 lt!2097072)))))

(assert (=> d!1650038 (= (++!12890 (_1!35037 lt!2097072) (_2!35037 lt!2097072)) lt!2097272)))

(assert (= (and d!1650038 c!876369) b!5100963))

(assert (= (and d!1650038 (not c!876369)) b!5100964))

(assert (= (and d!1650038 res!2170958) b!5100965))

(assert (= (and b!5100965 res!2170959) b!5100966))

(declare-fun m!6158334 () Bool)

(assert (=> b!5100964 m!6158334))

(declare-fun m!6158336 () Bool)

(assert (=> b!5100965 m!6158336))

(declare-fun m!6158338 () Bool)

(assert (=> b!5100965 m!6158338))

(declare-fun m!6158340 () Bool)

(assert (=> b!5100965 m!6158340))

(declare-fun m!6158342 () Bool)

(assert (=> d!1650038 m!6158342))

(declare-fun m!6158344 () Bool)

(assert (=> d!1650038 m!6158344))

(declare-fun m!6158346 () Bool)

(assert (=> d!1650038 m!6158346))

(assert (=> b!5100780 d!1650038))

(declare-fun d!1650040 () Bool)

(declare-fun lt!2097292 () tuple2!63468)

(assert (=> d!1650040 (= (++!12890 (_1!35037 lt!2097292) (_2!35037 lt!2097292)) input!5654)))

(declare-fun sizeTr!426 (List!58910 Int) Int)

(assert (=> d!1650040 (= lt!2097292 (findLongestMatchInner!2054 r!12920 Nil!58786 0 input!5654 input!5654 (sizeTr!426 input!5654 0)))))

(declare-fun lt!2097296 () Unit!149818)

(declare-fun lt!2097295 () Unit!149818)

(assert (=> d!1650040 (= lt!2097296 lt!2097295)))

(declare-fun lt!2097289 () List!58910)

(declare-fun lt!2097294 () Int)

(assert (=> d!1650040 (= (sizeTr!426 lt!2097289 lt!2097294) (+ (size!39343 lt!2097289) lt!2097294))))

(declare-fun lemmaSizeTrEqualsSize!425 (List!58910 Int) Unit!149818)

(assert (=> d!1650040 (= lt!2097295 (lemmaSizeTrEqualsSize!425 lt!2097289 lt!2097294))))

(assert (=> d!1650040 (= lt!2097294 0)))

(assert (=> d!1650040 (= lt!2097289 Nil!58786)))

(declare-fun lt!2097293 () Unit!149818)

(declare-fun lt!2097290 () Unit!149818)

(assert (=> d!1650040 (= lt!2097293 lt!2097290)))

(declare-fun lt!2097291 () Int)

(assert (=> d!1650040 (= (sizeTr!426 input!5654 lt!2097291) (+ (size!39343 input!5654) lt!2097291))))

(assert (=> d!1650040 (= lt!2097290 (lemmaSizeTrEqualsSize!425 input!5654 lt!2097291))))

(assert (=> d!1650040 (= lt!2097291 0)))

(assert (=> d!1650040 (validRegex!6168 r!12920)))

(assert (=> d!1650040 (= (findLongestMatch!1871 r!12920 input!5654) lt!2097292)))

(declare-fun bs!1191522 () Bool)

(assert (= bs!1191522 d!1650040))

(declare-fun m!6158348 () Bool)

(assert (=> bs!1191522 m!6158348))

(declare-fun m!6158350 () Bool)

(assert (=> bs!1191522 m!6158350))

(declare-fun m!6158352 () Bool)

(assert (=> bs!1191522 m!6158352))

(declare-fun m!6158354 () Bool)

(assert (=> bs!1191522 m!6158354))

(assert (=> bs!1191522 m!6158124))

(assert (=> bs!1191522 m!6158348))

(assert (=> bs!1191522 m!6158114))

(declare-fun m!6158356 () Bool)

(assert (=> bs!1191522 m!6158356))

(declare-fun m!6158358 () Bool)

(assert (=> bs!1191522 m!6158358))

(declare-fun m!6158360 () Bool)

(assert (=> bs!1191522 m!6158360))

(declare-fun m!6158362 () Bool)

(assert (=> bs!1191522 m!6158362))

(assert (=> b!5100780 d!1650040))

(declare-fun d!1650042 () Bool)

(declare-fun lt!2097305 () tuple2!63468)

(assert (=> d!1650042 (= (++!12890 (_1!35037 lt!2097305) (_2!35037 lt!2097305)) input!5654)))

(assert (=> d!1650042 (= lt!2097305 (findLongestMatchInnerZipper!115 z!4303 Nil!58786 0 input!5654 input!5654 (sizeTr!426 input!5654 0)))))

(declare-fun lt!2097306 () Unit!149818)

(declare-fun lt!2097308 () Unit!149818)

(assert (=> d!1650042 (= lt!2097306 lt!2097308)))

(declare-fun lt!2097307 () Int)

(assert (=> d!1650042 (= (sizeTr!426 input!5654 lt!2097307) (+ (size!39343 input!5654) lt!2097307))))

(assert (=> d!1650042 (= lt!2097308 (lemmaSizeTrEqualsSize!425 input!5654 lt!2097307))))

(assert (=> d!1650042 (= lt!2097307 0)))

(assert (=> d!1650042 (= (findLongestMatchZipper!65 z!4303 input!5654) lt!2097305)))

(declare-fun bs!1191523 () Bool)

(assert (= bs!1191523 d!1650042))

(assert (=> bs!1191523 m!6158124))

(assert (=> bs!1191523 m!6158348))

(declare-fun m!6158364 () Bool)

(assert (=> bs!1191523 m!6158364))

(declare-fun m!6158366 () Bool)

(assert (=> bs!1191523 m!6158366))

(declare-fun m!6158368 () Bool)

(assert (=> bs!1191523 m!6158368))

(assert (=> bs!1191523 m!6158348))

(declare-fun m!6158370 () Bool)

(assert (=> bs!1191523 m!6158370))

(assert (=> b!5100780 d!1650042))

(declare-fun b!5100995 () Bool)

(declare-fun e!3181325 () Bool)

(declare-fun derivativeStep!3997 (Regex!14041 C!28340) Regex!14041)

(assert (=> b!5100995 (= e!3181325 (matchR!6826 (derivativeStep!3997 r!12920 (head!10833 (_1!35037 lt!2097079))) (tail!9988 (_1!35037 lt!2097079))))))

(declare-fun b!5100996 () Bool)

(declare-fun e!3181329 () Bool)

(declare-fun lt!2097311 () Bool)

(assert (=> b!5100996 (= e!3181329 (not lt!2097311))))

(declare-fun b!5100997 () Bool)

(declare-fun res!2170980 () Bool)

(declare-fun e!3181327 () Bool)

(assert (=> b!5100997 (=> res!2170980 e!3181327)))

(assert (=> b!5100997 (= res!2170980 (not (isEmpty!31786 (tail!9988 (_1!35037 lt!2097079)))))))

(declare-fun b!5100998 () Bool)

(declare-fun e!3181328 () Bool)

(declare-fun call!355293 () Bool)

(assert (=> b!5100998 (= e!3181328 (= lt!2097311 call!355293))))

(declare-fun b!5100999 () Bool)

(assert (=> b!5100999 (= e!3181328 e!3181329)))

(declare-fun c!876376 () Bool)

(assert (=> b!5100999 (= c!876376 ((_ is EmptyLang!14041) r!12920))))

(declare-fun b!5101000 () Bool)

(declare-fun res!2170983 () Bool)

(declare-fun e!3181326 () Bool)

(assert (=> b!5101000 (=> res!2170983 e!3181326)))

(assert (=> b!5101000 (= res!2170983 (not ((_ is ElementMatch!14041) r!12920)))))

(assert (=> b!5101000 (= e!3181329 e!3181326)))

(declare-fun b!5101001 () Bool)

(declare-fun res!2170981 () Bool)

(declare-fun e!3181324 () Bool)

(assert (=> b!5101001 (=> (not res!2170981) (not e!3181324))))

(assert (=> b!5101001 (= res!2170981 (isEmpty!31786 (tail!9988 (_1!35037 lt!2097079))))))

(declare-fun b!5101002 () Bool)

(declare-fun e!3181330 () Bool)

(assert (=> b!5101002 (= e!3181326 e!3181330)))

(declare-fun res!2170982 () Bool)

(assert (=> b!5101002 (=> (not res!2170982) (not e!3181330))))

(assert (=> b!5101002 (= res!2170982 (not lt!2097311))))

(declare-fun d!1650044 () Bool)

(assert (=> d!1650044 e!3181328))

(declare-fun c!876378 () Bool)

(assert (=> d!1650044 (= c!876378 ((_ is EmptyExpr!14041) r!12920))))

(assert (=> d!1650044 (= lt!2097311 e!3181325)))

(declare-fun c!876377 () Bool)

(assert (=> d!1650044 (= c!876377 (isEmpty!31786 (_1!35037 lt!2097079)))))

(assert (=> d!1650044 (validRegex!6168 r!12920)))

(assert (=> d!1650044 (= (matchR!6826 r!12920 (_1!35037 lt!2097079)) lt!2097311)))

(declare-fun b!5101003 () Bool)

(assert (=> b!5101003 (= e!3181327 (not (= (head!10833 (_1!35037 lt!2097079)) (c!876311 r!12920))))))

(declare-fun b!5101004 () Bool)

(declare-fun res!2170978 () Bool)

(assert (=> b!5101004 (=> res!2170978 e!3181326)))

(assert (=> b!5101004 (= res!2170978 e!3181324)))

(declare-fun res!2170977 () Bool)

(assert (=> b!5101004 (=> (not res!2170977) (not e!3181324))))

(assert (=> b!5101004 (= res!2170977 lt!2097311)))

(declare-fun b!5101005 () Bool)

(declare-fun res!2170976 () Bool)

(assert (=> b!5101005 (=> (not res!2170976) (not e!3181324))))

(assert (=> b!5101005 (= res!2170976 (not call!355293))))

(declare-fun b!5101006 () Bool)

(declare-fun nullable!4717 (Regex!14041) Bool)

(assert (=> b!5101006 (= e!3181325 (nullable!4717 r!12920))))

(declare-fun bm!355288 () Bool)

(assert (=> bm!355288 (= call!355293 (isEmpty!31786 (_1!35037 lt!2097079)))))

(declare-fun b!5101007 () Bool)

(assert (=> b!5101007 (= e!3181330 e!3181327)))

(declare-fun res!2170979 () Bool)

(assert (=> b!5101007 (=> res!2170979 e!3181327)))

(assert (=> b!5101007 (= res!2170979 call!355293)))

(declare-fun b!5101008 () Bool)

(assert (=> b!5101008 (= e!3181324 (= (head!10833 (_1!35037 lt!2097079)) (c!876311 r!12920)))))

(assert (= (and d!1650044 c!876377) b!5101006))

(assert (= (and d!1650044 (not c!876377)) b!5100995))

(assert (= (and d!1650044 c!876378) b!5100998))

(assert (= (and d!1650044 (not c!876378)) b!5100999))

(assert (= (and b!5100999 c!876376) b!5100996))

(assert (= (and b!5100999 (not c!876376)) b!5101000))

(assert (= (and b!5101000 (not res!2170983)) b!5101004))

(assert (= (and b!5101004 res!2170977) b!5101005))

(assert (= (and b!5101005 res!2170976) b!5101001))

(assert (= (and b!5101001 res!2170981) b!5101008))

(assert (= (and b!5101004 (not res!2170978)) b!5101002))

(assert (= (and b!5101002 res!2170982) b!5101007))

(assert (= (and b!5101007 (not res!2170979)) b!5100997))

(assert (= (and b!5100997 (not res!2170980)) b!5101003))

(assert (= (or b!5100998 b!5101005 b!5101007) bm!355288))

(declare-fun m!6158372 () Bool)

(assert (=> b!5100995 m!6158372))

(assert (=> b!5100995 m!6158372))

(declare-fun m!6158374 () Bool)

(assert (=> b!5100995 m!6158374))

(declare-fun m!6158376 () Bool)

(assert (=> b!5100995 m!6158376))

(assert (=> b!5100995 m!6158374))

(assert (=> b!5100995 m!6158376))

(declare-fun m!6158378 () Bool)

(assert (=> b!5100995 m!6158378))

(declare-fun m!6158380 () Bool)

(assert (=> b!5101006 m!6158380))

(assert (=> b!5101008 m!6158372))

(assert (=> b!5100997 m!6158376))

(assert (=> b!5100997 m!6158376))

(declare-fun m!6158382 () Bool)

(assert (=> b!5100997 m!6158382))

(assert (=> d!1650044 m!6158154))

(assert (=> d!1650044 m!6158114))

(assert (=> b!5101001 m!6158376))

(assert (=> b!5101001 m!6158376))

(assert (=> b!5101001 m!6158382))

(assert (=> b!5101003 m!6158372))

(assert (=> bm!355288 m!6158154))

(assert (=> b!5100781 d!1650044))

(declare-fun d!1650046 () Bool)

(declare-fun lt!2097314 () Int)

(assert (=> d!1650046 (>= lt!2097314 0)))

(declare-fun e!3181333 () Int)

(assert (=> d!1650046 (= lt!2097314 e!3181333)))

(declare-fun c!876381 () Bool)

(assert (=> d!1650046 (= c!876381 ((_ is Nil!58786) input!5654))))

(assert (=> d!1650046 (= (size!39343 input!5654) lt!2097314)))

(declare-fun b!5101013 () Bool)

(assert (=> b!5101013 (= e!3181333 0)))

(declare-fun b!5101014 () Bool)

(assert (=> b!5101014 (= e!3181333 (+ 1 (size!39343 (t!371911 input!5654))))))

(assert (= (and d!1650046 c!876381) b!5101013))

(assert (= (and d!1650046 (not c!876381)) b!5101014))

(declare-fun m!6158384 () Bool)

(assert (=> b!5101014 m!6158384))

(assert (=> b!5100771 d!1650046))

(declare-fun d!1650048 () Bool)

(assert (=> d!1650048 (= (isEmpty!31786 (_1!35037 lt!2097078)) ((_ is Nil!58786) (_1!35037 lt!2097078)))))

(assert (=> b!5100771 d!1650048))

(declare-fun b!5101023 () Bool)

(declare-fun e!3181340 () Bool)

(declare-fun e!3181341 () Bool)

(assert (=> b!5101023 (= e!3181340 e!3181341)))

(declare-fun res!2170994 () Bool)

(assert (=> b!5101023 (=> (not res!2170994) (not e!3181341))))

(assert (=> b!5101023 (= res!2170994 (not ((_ is Nil!58786) lt!2097080)))))

(declare-fun b!5101024 () Bool)

(declare-fun res!2170992 () Bool)

(assert (=> b!5101024 (=> (not res!2170992) (not e!3181341))))

(assert (=> b!5101024 (= res!2170992 (= (head!10833 (_1!35037 lt!2097079)) (head!10833 lt!2097080)))))

(declare-fun b!5101026 () Bool)

(declare-fun e!3181342 () Bool)

(assert (=> b!5101026 (= e!3181342 (>= (size!39343 lt!2097080) (size!39343 (_1!35037 lt!2097079))))))

(declare-fun b!5101025 () Bool)

(assert (=> b!5101025 (= e!3181341 (isPrefix!5442 (tail!9988 (_1!35037 lt!2097079)) (tail!9988 lt!2097080)))))

(declare-fun d!1650050 () Bool)

(assert (=> d!1650050 e!3181342))

(declare-fun res!2170995 () Bool)

(assert (=> d!1650050 (=> res!2170995 e!3181342)))

(declare-fun lt!2097317 () Bool)

(assert (=> d!1650050 (= res!2170995 (not lt!2097317))))

(assert (=> d!1650050 (= lt!2097317 e!3181340)))

(declare-fun res!2170993 () Bool)

(assert (=> d!1650050 (=> res!2170993 e!3181340)))

(assert (=> d!1650050 (= res!2170993 ((_ is Nil!58786) (_1!35037 lt!2097079)))))

(assert (=> d!1650050 (= (isPrefix!5442 (_1!35037 lt!2097079) lt!2097080) lt!2097317)))

(assert (= (and d!1650050 (not res!2170993)) b!5101023))

(assert (= (and b!5101023 res!2170994) b!5101024))

(assert (= (and b!5101024 res!2170992) b!5101025))

(assert (= (and d!1650050 (not res!2170995)) b!5101026))

(assert (=> b!5101024 m!6158372))

(declare-fun m!6158386 () Bool)

(assert (=> b!5101024 m!6158386))

(declare-fun m!6158388 () Bool)

(assert (=> b!5101026 m!6158388))

(declare-fun m!6158390 () Bool)

(assert (=> b!5101026 m!6158390))

(assert (=> b!5101025 m!6158376))

(declare-fun m!6158392 () Bool)

(assert (=> b!5101025 m!6158392))

(assert (=> b!5101025 m!6158376))

(assert (=> b!5101025 m!6158392))

(declare-fun m!6158394 () Bool)

(assert (=> b!5101025 m!6158394))

(assert (=> b!5100771 d!1650050))

(declare-fun d!1650052 () Bool)

(assert (=> d!1650052 (isPrefix!5442 (_1!35037 lt!2097072) (++!12890 (_1!35037 lt!2097072) (_2!35037 lt!2097072)))))

(declare-fun lt!2097320 () Unit!149818)

(declare-fun choose!37367 (List!58910 List!58910) Unit!149818)

(assert (=> d!1650052 (= lt!2097320 (choose!37367 (_1!35037 lt!2097072) (_2!35037 lt!2097072)))))

(assert (=> d!1650052 (= (lemmaConcatTwoListThenFirstIsPrefix!3500 (_1!35037 lt!2097072) (_2!35037 lt!2097072)) lt!2097320)))

(declare-fun bs!1191524 () Bool)

(assert (= bs!1191524 d!1650052))

(assert (=> bs!1191524 m!6158148))

(assert (=> bs!1191524 m!6158148))

(declare-fun m!6158396 () Bool)

(assert (=> bs!1191524 m!6158396))

(declare-fun m!6158398 () Bool)

(assert (=> bs!1191524 m!6158398))

(assert (=> b!5100771 d!1650052))

(declare-fun d!1650054 () Bool)

(declare-fun c!876382 () Bool)

(assert (=> d!1650054 (= c!876382 (isEmpty!31786 (_1!35037 lt!2097072)))))

(declare-fun e!3181343 () Bool)

(assert (=> d!1650054 (= (matchZipper!713 z!4303 (_1!35037 lt!2097072)) e!3181343)))

(declare-fun b!5101027 () Bool)

(assert (=> b!5101027 (= e!3181343 (nullableZipper!958 z!4303))))

(declare-fun b!5101028 () Bool)

(assert (=> b!5101028 (= e!3181343 (matchZipper!713 (derivationStepZipper!746 z!4303 (head!10833 (_1!35037 lt!2097072))) (tail!9988 (_1!35037 lt!2097072))))))

(assert (= (and d!1650054 c!876382) b!5101027))

(assert (= (and d!1650054 (not c!876382)) b!5101028))

(assert (=> d!1650054 m!6158160))

(assert (=> b!5101027 m!6158312))

(declare-fun m!6158400 () Bool)

(assert (=> b!5101028 m!6158400))

(assert (=> b!5101028 m!6158400))

(declare-fun m!6158402 () Bool)

(assert (=> b!5101028 m!6158402))

(declare-fun m!6158404 () Bool)

(assert (=> b!5101028 m!6158404))

(assert (=> b!5101028 m!6158402))

(assert (=> b!5101028 m!6158404))

(declare-fun m!6158406 () Bool)

(assert (=> b!5101028 m!6158406))

(assert (=> b!5100771 d!1650054))

(declare-fun b!5101094 () Bool)

(declare-fun e!3181389 () tuple2!63468)

(assert (=> b!5101094 (= e!3181389 (tuple2!63469 Nil!58786 input!5654))))

(declare-fun bm!355314 () Bool)

(declare-fun call!355326 () Bool)

(assert (=> bm!355314 (= call!355326 (nullable!4717 r!12920))))

(declare-fun bm!355315 () Bool)

(declare-fun call!355319 () Bool)

(assert (=> bm!355315 (= call!355319 (isPrefix!5442 input!5654 input!5654))))

(declare-fun b!5101095 () Bool)

(declare-fun e!3181387 () tuple2!63468)

(assert (=> b!5101095 (= e!3181387 (tuple2!63469 Nil!58786 input!5654))))

(declare-fun b!5101096 () Bool)

(declare-fun e!3181392 () Bool)

(declare-fun e!3181393 () Bool)

(assert (=> b!5101096 (= e!3181392 e!3181393)))

(declare-fun res!2171019 () Bool)

(assert (=> b!5101096 (=> res!2171019 e!3181393)))

(declare-fun lt!2097405 () tuple2!63468)

(assert (=> b!5101096 (= res!2171019 (isEmpty!31786 (_1!35037 lt!2097405)))))

(declare-fun b!5101097 () Bool)

(declare-fun c!876409 () Bool)

(assert (=> b!5101097 (= c!876409 call!355326)))

(declare-fun lt!2097391 () Unit!149818)

(declare-fun lt!2097397 () Unit!149818)

(assert (=> b!5101097 (= lt!2097391 lt!2097397)))

(declare-fun lt!2097388 () C!28340)

(declare-fun lt!2097382 () List!58910)

(assert (=> b!5101097 (= (++!12890 (++!12890 Nil!58786 (Cons!58786 lt!2097388 Nil!58786)) lt!2097382) input!5654)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1518 (List!58910 C!28340 List!58910 List!58910) Unit!149818)

(assert (=> b!5101097 (= lt!2097397 (lemmaMoveElementToOtherListKeepsConcatEq!1518 Nil!58786 lt!2097388 lt!2097382 input!5654))))

(assert (=> b!5101097 (= lt!2097382 (tail!9988 input!5654))))

(assert (=> b!5101097 (= lt!2097388 (head!10833 input!5654))))

(declare-fun lt!2097403 () Unit!149818)

(declare-fun lt!2097389 () Unit!149818)

(assert (=> b!5101097 (= lt!2097403 lt!2097389)))

(declare-fun getSuffix!3162 (List!58910 List!58910) List!58910)

(assert (=> b!5101097 (isPrefix!5442 (++!12890 Nil!58786 (Cons!58786 (head!10833 (getSuffix!3162 input!5654 Nil!58786)) Nil!58786)) input!5654)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!907 (List!58910 List!58910) Unit!149818)

(assert (=> b!5101097 (= lt!2097389 (lemmaAddHeadSuffixToPrefixStillPrefix!907 Nil!58786 input!5654))))

(declare-fun lt!2097402 () Unit!149818)

(declare-fun lt!2097394 () Unit!149818)

(assert (=> b!5101097 (= lt!2097402 lt!2097394)))

(assert (=> b!5101097 (= lt!2097394 (lemmaAddHeadSuffixToPrefixStillPrefix!907 Nil!58786 input!5654))))

(declare-fun lt!2097406 () List!58910)

(assert (=> b!5101097 (= lt!2097406 (++!12890 Nil!58786 (Cons!58786 (head!10833 input!5654) Nil!58786)))))

(declare-fun lt!2097383 () Unit!149818)

(declare-fun e!3181391 () Unit!149818)

(assert (=> b!5101097 (= lt!2097383 e!3181391)))

(declare-fun c!876404 () Bool)

(assert (=> b!5101097 (= c!876404 (= (size!39343 Nil!58786) (size!39343 input!5654)))))

(declare-fun lt!2097385 () Unit!149818)

(declare-fun lt!2097395 () Unit!149818)

(assert (=> b!5101097 (= lt!2097385 lt!2097395)))

(assert (=> b!5101097 (<= (size!39343 Nil!58786) (size!39343 input!5654))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!833 (List!58910 List!58910) Unit!149818)

(assert (=> b!5101097 (= lt!2097395 (lemmaIsPrefixThenSmallerEqSize!833 Nil!58786 input!5654))))

(declare-fun e!3181390 () tuple2!63468)

(declare-fun e!3181388 () tuple2!63468)

(assert (=> b!5101097 (= e!3181390 e!3181388)))

(declare-fun bm!355316 () Bool)

(declare-fun call!355321 () Unit!149818)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1301 (List!58910 List!58910 List!58910) Unit!149818)

(assert (=> bm!355316 (= call!355321 (lemmaIsPrefixSameLengthThenSameList!1301 input!5654 Nil!58786 input!5654))))

(declare-fun bm!355317 () Bool)

(declare-fun call!355322 () C!28340)

(assert (=> bm!355317 (= call!355322 (head!10833 input!5654))))

(declare-fun bm!355318 () Bool)

(declare-fun call!355325 () Regex!14041)

(assert (=> bm!355318 (= call!355325 (derivativeStep!3997 r!12920 call!355322))))

(declare-fun b!5101098 () Bool)

(assert (=> b!5101098 (= e!3181393 (>= (size!39343 (_1!35037 lt!2097405)) (size!39343 Nil!58786)))))

(declare-fun b!5101099 () Bool)

(declare-fun c!876405 () Bool)

(assert (=> b!5101099 (= c!876405 call!355326)))

(declare-fun lt!2097401 () Unit!149818)

(declare-fun lt!2097392 () Unit!149818)

(assert (=> b!5101099 (= lt!2097401 lt!2097392)))

(assert (=> b!5101099 (= input!5654 Nil!58786)))

(assert (=> b!5101099 (= lt!2097392 call!355321)))

(declare-fun lt!2097381 () Unit!149818)

(declare-fun lt!2097398 () Unit!149818)

(assert (=> b!5101099 (= lt!2097381 lt!2097398)))

(assert (=> b!5101099 call!355319))

(declare-fun call!355323 () Unit!149818)

(assert (=> b!5101099 (= lt!2097398 call!355323)))

(assert (=> b!5101099 (= e!3181390 e!3181387)))

(declare-fun b!5101100 () Bool)

(declare-fun call!355320 () tuple2!63468)

(assert (=> b!5101100 (= e!3181388 call!355320)))

(declare-fun b!5101101 () Bool)

(assert (=> b!5101101 (= e!3181388 e!3181389)))

(declare-fun lt!2097393 () tuple2!63468)

(assert (=> b!5101101 (= lt!2097393 call!355320)))

(declare-fun c!876408 () Bool)

(assert (=> b!5101101 (= c!876408 (isEmpty!31786 (_1!35037 lt!2097393)))))

(declare-fun b!5101102 () Bool)

(declare-fun Unit!149826 () Unit!149818)

(assert (=> b!5101102 (= e!3181391 Unit!149826)))

(declare-fun lt!2097379 () Unit!149818)

(assert (=> b!5101102 (= lt!2097379 call!355323)))

(assert (=> b!5101102 call!355319))

(declare-fun lt!2097380 () Unit!149818)

(assert (=> b!5101102 (= lt!2097380 lt!2097379)))

(declare-fun lt!2097396 () Unit!149818)

(assert (=> b!5101102 (= lt!2097396 call!355321)))

(assert (=> b!5101102 (= input!5654 Nil!58786)))

(declare-fun lt!2097399 () Unit!149818)

(assert (=> b!5101102 (= lt!2097399 lt!2097396)))

(assert (=> b!5101102 false))

(declare-fun b!5101103 () Bool)

(declare-fun Unit!149827 () Unit!149818)

(assert (=> b!5101103 (= e!3181391 Unit!149827)))

(declare-fun b!5101104 () Bool)

(assert (=> b!5101104 (= e!3181389 lt!2097393)))

(declare-fun call!355324 () List!58910)

(declare-fun bm!355319 () Bool)

(assert (=> bm!355319 (= call!355320 (findLongestMatchInner!2054 call!355325 lt!2097406 (+ lt!2097076 1) call!355324 input!5654 lt!2097075))))

(declare-fun b!5101105 () Bool)

(assert (=> b!5101105 (= e!3181387 (tuple2!63469 Nil!58786 Nil!58786))))

(declare-fun b!5101106 () Bool)

(declare-fun e!3181386 () tuple2!63468)

(assert (=> b!5101106 (= e!3181386 (tuple2!63469 Nil!58786 input!5654))))

(declare-fun bm!355320 () Bool)

(assert (=> bm!355320 (= call!355324 (tail!9988 input!5654))))

(declare-fun b!5101107 () Bool)

(assert (=> b!5101107 (= e!3181386 e!3181390)))

(declare-fun c!876407 () Bool)

(assert (=> b!5101107 (= c!876407 (= lt!2097076 lt!2097075))))

(declare-fun d!1650056 () Bool)

(assert (=> d!1650056 e!3181392))

(declare-fun res!2171020 () Bool)

(assert (=> d!1650056 (=> (not res!2171020) (not e!3181392))))

(assert (=> d!1650056 (= res!2171020 (= (++!12890 (_1!35037 lt!2097405) (_2!35037 lt!2097405)) input!5654))))

(assert (=> d!1650056 (= lt!2097405 e!3181386)))

(declare-fun c!876406 () Bool)

(declare-fun lostCause!1206 (Regex!14041) Bool)

(assert (=> d!1650056 (= c!876406 (lostCause!1206 r!12920))))

(declare-fun lt!2097386 () Unit!149818)

(declare-fun Unit!149828 () Unit!149818)

(assert (=> d!1650056 (= lt!2097386 Unit!149828)))

(assert (=> d!1650056 (= (getSuffix!3162 input!5654 Nil!58786) input!5654)))

(declare-fun lt!2097400 () Unit!149818)

(declare-fun lt!2097390 () Unit!149818)

(assert (=> d!1650056 (= lt!2097400 lt!2097390)))

(declare-fun lt!2097387 () List!58910)

(assert (=> d!1650056 (= input!5654 lt!2097387)))

(declare-fun lemmaSamePrefixThenSameSuffix!2578 (List!58910 List!58910 List!58910 List!58910 List!58910) Unit!149818)

(assert (=> d!1650056 (= lt!2097390 (lemmaSamePrefixThenSameSuffix!2578 Nil!58786 input!5654 Nil!58786 lt!2097387 input!5654))))

(assert (=> d!1650056 (= lt!2097387 (getSuffix!3162 input!5654 Nil!58786))))

(declare-fun lt!2097404 () Unit!149818)

(declare-fun lt!2097384 () Unit!149818)

(assert (=> d!1650056 (= lt!2097404 lt!2097384)))

(assert (=> d!1650056 (isPrefix!5442 Nil!58786 (++!12890 Nil!58786 input!5654))))

(assert (=> d!1650056 (= lt!2097384 (lemmaConcatTwoListThenFirstIsPrefix!3500 Nil!58786 input!5654))))

(assert (=> d!1650056 (validRegex!6168 r!12920)))

(assert (=> d!1650056 (= (findLongestMatchInner!2054 r!12920 Nil!58786 lt!2097076 input!5654 input!5654 lt!2097075) lt!2097405)))

(declare-fun bm!355321 () Bool)

(declare-fun lemmaIsPrefixRefl!3679 (List!58910 List!58910) Unit!149818)

(assert (=> bm!355321 (= call!355323 (lemmaIsPrefixRefl!3679 input!5654 input!5654))))

(assert (= (and d!1650056 c!876406) b!5101106))

(assert (= (and d!1650056 (not c!876406)) b!5101107))

(assert (= (and b!5101107 c!876407) b!5101099))

(assert (= (and b!5101107 (not c!876407)) b!5101097))

(assert (= (and b!5101099 c!876405) b!5101105))

(assert (= (and b!5101099 (not c!876405)) b!5101095))

(assert (= (and b!5101097 c!876404) b!5101102))

(assert (= (and b!5101097 (not c!876404)) b!5101103))

(assert (= (and b!5101097 c!876409) b!5101101))

(assert (= (and b!5101097 (not c!876409)) b!5101100))

(assert (= (and b!5101101 c!876408) b!5101094))

(assert (= (and b!5101101 (not c!876408)) b!5101104))

(assert (= (or b!5101101 b!5101100) bm!355317))

(assert (= (or b!5101101 b!5101100) bm!355320))

(assert (= (or b!5101101 b!5101100) bm!355318))

(assert (= (or b!5101101 b!5101100) bm!355319))

(assert (= (or b!5101099 b!5101102) bm!355316))

(assert (= (or b!5101099 b!5101097) bm!355314))

(assert (= (or b!5101099 b!5101102) bm!355315))

(assert (= (or b!5101099 b!5101102) bm!355321))

(assert (= (and d!1650056 res!2171020) b!5101096))

(assert (= (and b!5101096 (not res!2171019)) b!5101098))

(declare-fun m!6158436 () Bool)

(assert (=> d!1650056 m!6158436))

(declare-fun m!6158438 () Bool)

(assert (=> d!1650056 m!6158438))

(declare-fun m!6158440 () Bool)

(assert (=> d!1650056 m!6158440))

(declare-fun m!6158442 () Bool)

(assert (=> d!1650056 m!6158442))

(assert (=> d!1650056 m!6158438))

(declare-fun m!6158444 () Bool)

(assert (=> d!1650056 m!6158444))

(declare-fun m!6158446 () Bool)

(assert (=> d!1650056 m!6158446))

(declare-fun m!6158448 () Bool)

(assert (=> d!1650056 m!6158448))

(assert (=> d!1650056 m!6158114))

(declare-fun m!6158450 () Bool)

(assert (=> bm!355316 m!6158450))

(assert (=> b!5101097 m!6158436))

(declare-fun m!6158452 () Bool)

(assert (=> b!5101097 m!6158452))

(declare-fun m!6158454 () Bool)

(assert (=> b!5101097 m!6158454))

(declare-fun m!6158456 () Bool)

(assert (=> b!5101097 m!6158456))

(declare-fun m!6158458 () Bool)

(assert (=> b!5101097 m!6158458))

(declare-fun m!6158460 () Bool)

(assert (=> b!5101097 m!6158460))

(declare-fun m!6158462 () Bool)

(assert (=> b!5101097 m!6158462))

(assert (=> b!5101097 m!6158124))

(declare-fun m!6158464 () Bool)

(assert (=> b!5101097 m!6158464))

(assert (=> b!5101097 m!6158454))

(assert (=> b!5101097 m!6158436))

(declare-fun m!6158466 () Bool)

(assert (=> b!5101097 m!6158466))

(assert (=> b!5101097 m!6158136))

(declare-fun m!6158468 () Bool)

(assert (=> b!5101097 m!6158468))

(assert (=> b!5101097 m!6158464))

(declare-fun m!6158470 () Bool)

(assert (=> b!5101097 m!6158470))

(declare-fun m!6158472 () Bool)

(assert (=> b!5101097 m!6158472))

(declare-fun m!6158474 () Bool)

(assert (=> b!5101096 m!6158474))

(declare-fun m!6158476 () Bool)

(assert (=> b!5101101 m!6158476))

(assert (=> bm!355314 m!6158380))

(declare-fun m!6158478 () Bool)

(assert (=> bm!355319 m!6158478))

(declare-fun m!6158480 () Bool)

(assert (=> bm!355318 m!6158480))

(declare-fun m!6158482 () Bool)

(assert (=> bm!355315 m!6158482))

(assert (=> bm!355317 m!6158452))

(declare-fun m!6158484 () Bool)

(assert (=> bm!355321 m!6158484))

(declare-fun m!6158486 () Bool)

(assert (=> b!5101098 m!6158486))

(assert (=> b!5101098 m!6158136))

(assert (=> bm!355320 m!6158460))

(assert (=> b!5100771 d!1650056))

(declare-fun d!1650066 () Bool)

(declare-fun e!3181398 () Bool)

(assert (=> d!1650066 e!3181398))

(declare-fun res!2171025 () Bool)

(assert (=> d!1650066 (=> res!2171025 e!3181398)))

(assert (=> d!1650066 (= res!2171025 (isEmpty!31786 (_1!35037 (findLongestMatchInnerZipper!115 z!4303 Nil!58786 (size!39343 Nil!58786) input!5654 input!5654 (size!39343 input!5654)))))))

(declare-fun lt!2097434 () Unit!149818)

(declare-fun choose!37369 ((InoxSet Context!6850) List!58910) Unit!149818)

(assert (=> d!1650066 (= lt!2097434 (choose!37369 z!4303 input!5654))))

(assert (=> d!1650066 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2029 z!4303 input!5654) lt!2097434)))

(declare-fun b!5101114 () Bool)

(assert (=> b!5101114 (= e!3181398 (matchZipper!713 z!4303 (_1!35037 (findLongestMatchInnerZipper!115 z!4303 Nil!58786 (size!39343 Nil!58786) input!5654 input!5654 (size!39343 input!5654)))))))

(assert (= (and d!1650066 (not res!2171025)) b!5101114))

(declare-fun m!6158504 () Bool)

(assert (=> d!1650066 m!6158504))

(assert (=> d!1650066 m!6158136))

(assert (=> d!1650066 m!6158124))

(declare-fun m!6158506 () Bool)

(assert (=> d!1650066 m!6158506))

(declare-fun m!6158508 () Bool)

(assert (=> d!1650066 m!6158508))

(assert (=> d!1650066 m!6158124))

(assert (=> d!1650066 m!6158136))

(assert (=> b!5101114 m!6158136))

(assert (=> b!5101114 m!6158124))

(assert (=> b!5101114 m!6158136))

(assert (=> b!5101114 m!6158124))

(assert (=> b!5101114 m!6158506))

(declare-fun m!6158510 () Bool)

(assert (=> b!5101114 m!6158510))

(assert (=> b!5100771 d!1650066))

(declare-fun b!5101115 () Bool)

(declare-fun e!3181399 () Bool)

(declare-fun e!3181400 () Bool)

(assert (=> b!5101115 (= e!3181399 e!3181400)))

(declare-fun res!2171028 () Bool)

(assert (=> b!5101115 (=> (not res!2171028) (not e!3181400))))

(assert (=> b!5101115 (= res!2171028 (not ((_ is Nil!58786) lt!2097070)))))

(declare-fun b!5101116 () Bool)

(declare-fun res!2171026 () Bool)

(assert (=> b!5101116 (=> (not res!2171026) (not e!3181400))))

(assert (=> b!5101116 (= res!2171026 (= (head!10833 (_1!35037 lt!2097072)) (head!10833 lt!2097070)))))

(declare-fun b!5101118 () Bool)

(declare-fun e!3181401 () Bool)

(assert (=> b!5101118 (= e!3181401 (>= (size!39343 lt!2097070) (size!39343 (_1!35037 lt!2097072))))))

(declare-fun b!5101117 () Bool)

(assert (=> b!5101117 (= e!3181400 (isPrefix!5442 (tail!9988 (_1!35037 lt!2097072)) (tail!9988 lt!2097070)))))

(declare-fun d!1650070 () Bool)

(assert (=> d!1650070 e!3181401))

(declare-fun res!2171029 () Bool)

(assert (=> d!1650070 (=> res!2171029 e!3181401)))

(declare-fun lt!2097435 () Bool)

(assert (=> d!1650070 (= res!2171029 (not lt!2097435))))

(assert (=> d!1650070 (= lt!2097435 e!3181399)))

(declare-fun res!2171027 () Bool)

(assert (=> d!1650070 (=> res!2171027 e!3181399)))

(assert (=> d!1650070 (= res!2171027 ((_ is Nil!58786) (_1!35037 lt!2097072)))))

(assert (=> d!1650070 (= (isPrefix!5442 (_1!35037 lt!2097072) lt!2097070) lt!2097435)))

(assert (= (and d!1650070 (not res!2171027)) b!5101115))

(assert (= (and b!5101115 res!2171028) b!5101116))

(assert (= (and b!5101116 res!2171026) b!5101117))

(assert (= (and d!1650070 (not res!2171029)) b!5101118))

(assert (=> b!5101116 m!6158400))

(declare-fun m!6158512 () Bool)

(assert (=> b!5101116 m!6158512))

(declare-fun m!6158514 () Bool)

(assert (=> b!5101118 m!6158514))

(assert (=> b!5101118 m!6158338))

(assert (=> b!5101117 m!6158404))

(declare-fun m!6158516 () Bool)

(assert (=> b!5101117 m!6158516))

(assert (=> b!5101117 m!6158404))

(assert (=> b!5101117 m!6158516))

(declare-fun m!6158518 () Bool)

(assert (=> b!5101117 m!6158518))

(assert (=> b!5100771 d!1650070))

(declare-fun d!1650072 () Bool)

(assert (=> d!1650072 (isPrefix!5442 (_1!35037 lt!2097079) (++!12890 (_1!35037 lt!2097079) (_2!35037 lt!2097079)))))

(declare-fun lt!2097436 () Unit!149818)

(assert (=> d!1650072 (= lt!2097436 (choose!37367 (_1!35037 lt!2097079) (_2!35037 lt!2097079)))))

(assert (=> d!1650072 (= (lemmaConcatTwoListThenFirstIsPrefix!3500 (_1!35037 lt!2097079) (_2!35037 lt!2097079)) lt!2097436)))

(declare-fun bs!1191527 () Bool)

(assert (= bs!1191527 d!1650072))

(assert (=> bs!1191527 m!6158146))

(assert (=> bs!1191527 m!6158146))

(declare-fun m!6158520 () Bool)

(assert (=> bs!1191527 m!6158520))

(declare-fun m!6158522 () Bool)

(assert (=> bs!1191527 m!6158522))

(assert (=> b!5100771 d!1650072))

(declare-fun d!1650074 () Bool)

(assert (=> d!1650074 (= (isEmpty!31786 (_1!35037 lt!2097074)) ((_ is Nil!58786) (_1!35037 lt!2097074)))))

(assert (=> b!5100771 d!1650074))

(declare-fun d!1650076 () Bool)

(declare-fun e!3181406 () Bool)

(assert (=> d!1650076 e!3181406))

(declare-fun res!2171034 () Bool)

(assert (=> d!1650076 (=> res!2171034 e!3181406)))

(assert (=> d!1650076 (= res!2171034 (isEmpty!31786 (_1!35037 (findLongestMatchInner!2054 r!12920 Nil!58786 (size!39343 Nil!58786) input!5654 input!5654 (size!39343 input!5654)))))))

(declare-fun lt!2097452 () Unit!149818)

(declare-fun choose!37370 (Regex!14041 List!58910) Unit!149818)

(assert (=> d!1650076 (= lt!2097452 (choose!37370 r!12920 input!5654))))

(assert (=> d!1650076 (validRegex!6168 r!12920)))

(assert (=> d!1650076 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2028 r!12920 input!5654) lt!2097452)))

(declare-fun b!5101125 () Bool)

(assert (=> b!5101125 (= e!3181406 (matchR!6826 r!12920 (_1!35037 (findLongestMatchInner!2054 r!12920 Nil!58786 (size!39343 Nil!58786) input!5654 input!5654 (size!39343 input!5654)))))))

(assert (= (and d!1650076 (not res!2171034)) b!5101125))

(assert (=> d!1650076 m!6158124))

(assert (=> d!1650076 m!6158136))

(assert (=> d!1650076 m!6158124))

(declare-fun m!6158544 () Bool)

(assert (=> d!1650076 m!6158544))

(declare-fun m!6158546 () Bool)

(assert (=> d!1650076 m!6158546))

(declare-fun m!6158548 () Bool)

(assert (=> d!1650076 m!6158548))

(assert (=> d!1650076 m!6158114))

(assert (=> d!1650076 m!6158136))

(assert (=> b!5101125 m!6158136))

(assert (=> b!5101125 m!6158124))

(assert (=> b!5101125 m!6158136))

(assert (=> b!5101125 m!6158124))

(assert (=> b!5101125 m!6158544))

(declare-fun m!6158550 () Bool)

(assert (=> b!5101125 m!6158550))

(assert (=> b!5100771 d!1650076))

(declare-fun d!1650084 () Bool)

(declare-fun lt!2097454 () Int)

(assert (=> d!1650084 (>= lt!2097454 0)))

(declare-fun e!3181414 () Int)

(assert (=> d!1650084 (= lt!2097454 e!3181414)))

(declare-fun c!876415 () Bool)

(assert (=> d!1650084 (= c!876415 ((_ is Nil!58786) Nil!58786))))

(assert (=> d!1650084 (= (size!39343 Nil!58786) lt!2097454)))

(declare-fun b!5101140 () Bool)

(assert (=> b!5101140 (= e!3181414 0)))

(declare-fun b!5101141 () Bool)

(assert (=> b!5101141 (= e!3181414 (+ 1 (size!39343 (t!371911 Nil!58786))))))

(assert (= (and d!1650084 c!876415) b!5101140))

(assert (= (and d!1650084 (not c!876415)) b!5101141))

(declare-fun m!6158552 () Bool)

(assert (=> b!5101141 m!6158552))

(assert (=> b!5100771 d!1650084))

(declare-fun b!5101218 () Bool)

(declare-fun e!3181450 () tuple2!63468)

(declare-fun lt!2097517 () tuple2!63468)

(assert (=> b!5101218 (= e!3181450 lt!2097517)))

(declare-fun bm!355339 () Bool)

(declare-fun call!355348 () Bool)

(assert (=> bm!355339 (= call!355348 (nullableZipper!958 z!4303))))

(declare-fun call!355350 () List!58910)

(declare-fun call!355345 () tuple2!63468)

(declare-fun call!355344 () (InoxSet Context!6850))

(declare-fun bm!355340 () Bool)

(declare-fun lt!2097518 () List!58910)

(assert (=> bm!355340 (= call!355345 (findLongestMatchInnerZipper!115 call!355344 lt!2097518 (+ lt!2097076 1) call!355350 input!5654 lt!2097075))))

(declare-fun b!5101219 () Bool)

(declare-fun e!3181453 () Bool)

(declare-fun lt!2097516 () tuple2!63468)

(assert (=> b!5101219 (= e!3181453 (>= (size!39343 (_1!35037 lt!2097516)) (size!39343 Nil!58786)))))

(declare-fun b!5101220 () Bool)

(declare-fun e!3181451 () tuple2!63468)

(assert (=> b!5101220 (= e!3181451 (tuple2!63469 Nil!58786 Nil!58786))))

(declare-fun bm!355341 () Bool)

(declare-fun call!355347 () Bool)

(assert (=> bm!355341 (= call!355347 (isPrefix!5442 input!5654 input!5654))))

(declare-fun b!5101221 () Bool)

(declare-fun e!3181452 () Unit!149818)

(declare-fun Unit!149829 () Unit!149818)

(assert (=> b!5101221 (= e!3181452 Unit!149829)))

(declare-fun lt!2097513 () Unit!149818)

(declare-fun call!355349 () Unit!149818)

(assert (=> b!5101221 (= lt!2097513 call!355349)))

(assert (=> b!5101221 call!355347))

(declare-fun lt!2097538 () Unit!149818)

(assert (=> b!5101221 (= lt!2097538 lt!2097513)))

(declare-fun lt!2097523 () Unit!149818)

(declare-fun call!355351 () Unit!149818)

(assert (=> b!5101221 (= lt!2097523 call!355351)))

(assert (=> b!5101221 (= input!5654 Nil!58786)))

(declare-fun lt!2097536 () Unit!149818)

(assert (=> b!5101221 (= lt!2097536 lt!2097523)))

(assert (=> b!5101221 false))

(declare-fun b!5101222 () Bool)

(declare-fun e!3181455 () Bool)

(assert (=> b!5101222 (= e!3181455 e!3181453)))

(declare-fun res!2171051 () Bool)

(assert (=> b!5101222 (=> res!2171051 e!3181453)))

(assert (=> b!5101222 (= res!2171051 (isEmpty!31786 (_1!35037 lt!2097516)))))

(declare-fun b!5101223 () Bool)

(declare-fun e!3181456 () tuple2!63468)

(declare-fun e!3181454 () tuple2!63468)

(assert (=> b!5101223 (= e!3181456 e!3181454)))

(declare-fun c!876429 () Bool)

(assert (=> b!5101223 (= c!876429 (= lt!2097076 lt!2097075))))

(declare-fun d!1650086 () Bool)

(assert (=> d!1650086 e!3181455))

(declare-fun res!2171050 () Bool)

(assert (=> d!1650086 (=> (not res!2171050) (not e!3181455))))

(assert (=> d!1650086 (= res!2171050 (= (++!12890 (_1!35037 lt!2097516) (_2!35037 lt!2097516)) input!5654))))

(assert (=> d!1650086 (= lt!2097516 e!3181456)))

(declare-fun c!876430 () Bool)

(declare-fun lostCauseZipper!973 ((InoxSet Context!6850)) Bool)

(assert (=> d!1650086 (= c!876430 (lostCauseZipper!973 z!4303))))

(declare-fun lt!2097531 () Unit!149818)

(declare-fun Unit!149830 () Unit!149818)

(assert (=> d!1650086 (= lt!2097531 Unit!149830)))

(assert (=> d!1650086 (= (getSuffix!3162 input!5654 Nil!58786) input!5654)))

(declare-fun lt!2097534 () Unit!149818)

(declare-fun lt!2097528 () Unit!149818)

(assert (=> d!1650086 (= lt!2097534 lt!2097528)))

(declare-fun lt!2097537 () List!58910)

(assert (=> d!1650086 (= input!5654 lt!2097537)))

(assert (=> d!1650086 (= lt!2097528 (lemmaSamePrefixThenSameSuffix!2578 Nil!58786 input!5654 Nil!58786 lt!2097537 input!5654))))

(assert (=> d!1650086 (= lt!2097537 (getSuffix!3162 input!5654 Nil!58786))))

(declare-fun lt!2097535 () Unit!149818)

(declare-fun lt!2097521 () Unit!149818)

(assert (=> d!1650086 (= lt!2097535 lt!2097521)))

(assert (=> d!1650086 (isPrefix!5442 Nil!58786 (++!12890 Nil!58786 input!5654))))

(assert (=> d!1650086 (= lt!2097521 (lemmaConcatTwoListThenFirstIsPrefix!3500 Nil!58786 input!5654))))

(assert (=> d!1650086 (= (++!12890 Nil!58786 input!5654) input!5654)))

(assert (=> d!1650086 (= (findLongestMatchInnerZipper!115 z!4303 Nil!58786 lt!2097076 input!5654 input!5654 lt!2097075) lt!2097516)))

(declare-fun bm!355342 () Bool)

(declare-fun call!355346 () C!28340)

(assert (=> bm!355342 (= call!355344 (derivationStepZipper!746 z!4303 call!355346))))

(declare-fun b!5101224 () Bool)

(assert (=> b!5101224 (= e!3181451 (tuple2!63469 Nil!58786 input!5654))))

(declare-fun bm!355343 () Bool)

(assert (=> bm!355343 (= call!355349 (lemmaIsPrefixRefl!3679 input!5654 input!5654))))

(declare-fun b!5101225 () Bool)

(assert (=> b!5101225 (= e!3181456 (tuple2!63469 Nil!58786 input!5654))))

(declare-fun b!5101226 () Bool)

(assert (=> b!5101226 (= e!3181450 (tuple2!63469 Nil!58786 input!5654))))

(declare-fun bm!355344 () Bool)

(assert (=> bm!355344 (= call!355350 (tail!9988 input!5654))))

(declare-fun b!5101227 () Bool)

(declare-fun c!876428 () Bool)

(assert (=> b!5101227 (= c!876428 call!355348)))

(declare-fun lt!2097519 () Unit!149818)

(declare-fun lt!2097533 () Unit!149818)

(assert (=> b!5101227 (= lt!2097519 lt!2097533)))

(assert (=> b!5101227 (= input!5654 Nil!58786)))

(assert (=> b!5101227 (= lt!2097533 call!355351)))

(declare-fun lt!2097527 () Unit!149818)

(declare-fun lt!2097522 () Unit!149818)

(assert (=> b!5101227 (= lt!2097527 lt!2097522)))

(assert (=> b!5101227 call!355347))

(assert (=> b!5101227 (= lt!2097522 call!355349)))

(assert (=> b!5101227 (= e!3181454 e!3181451)))

(declare-fun bm!355345 () Bool)

(assert (=> bm!355345 (= call!355351 (lemmaIsPrefixSameLengthThenSameList!1301 input!5654 Nil!58786 input!5654))))

(declare-fun b!5101228 () Bool)

(declare-fun e!3181457 () tuple2!63468)

(assert (=> b!5101228 (= e!3181457 call!355345)))

(declare-fun b!5101229 () Bool)

(declare-fun Unit!149831 () Unit!149818)

(assert (=> b!5101229 (= e!3181452 Unit!149831)))

(declare-fun bm!355346 () Bool)

(assert (=> bm!355346 (= call!355346 (head!10833 input!5654))))

(declare-fun b!5101230 () Bool)

(declare-fun c!876433 () Bool)

(assert (=> b!5101230 (= c!876433 call!355348)))

(declare-fun lt!2097530 () Unit!149818)

(declare-fun lt!2097529 () Unit!149818)

(assert (=> b!5101230 (= lt!2097530 lt!2097529)))

(declare-fun lt!2097524 () C!28340)

(declare-fun lt!2097526 () List!58910)

(assert (=> b!5101230 (= (++!12890 (++!12890 Nil!58786 (Cons!58786 lt!2097524 Nil!58786)) lt!2097526) input!5654)))

(assert (=> b!5101230 (= lt!2097529 (lemmaMoveElementToOtherListKeepsConcatEq!1518 Nil!58786 lt!2097524 lt!2097526 input!5654))))

(assert (=> b!5101230 (= lt!2097526 (tail!9988 input!5654))))

(assert (=> b!5101230 (= lt!2097524 (head!10833 input!5654))))

(declare-fun lt!2097525 () Unit!149818)

(declare-fun lt!2097514 () Unit!149818)

(assert (=> b!5101230 (= lt!2097525 lt!2097514)))

(assert (=> b!5101230 (isPrefix!5442 (++!12890 Nil!58786 (Cons!58786 (head!10833 (getSuffix!3162 input!5654 Nil!58786)) Nil!58786)) input!5654)))

(assert (=> b!5101230 (= lt!2097514 (lemmaAddHeadSuffixToPrefixStillPrefix!907 Nil!58786 input!5654))))

(assert (=> b!5101230 (= lt!2097518 (++!12890 Nil!58786 (Cons!58786 (head!10833 input!5654) Nil!58786)))))

(declare-fun lt!2097515 () Unit!149818)

(assert (=> b!5101230 (= lt!2097515 e!3181452)))

(declare-fun c!876432 () Bool)

(assert (=> b!5101230 (= c!876432 (= (size!39343 Nil!58786) (size!39343 input!5654)))))

(declare-fun lt!2097532 () Unit!149818)

(declare-fun lt!2097520 () Unit!149818)

(assert (=> b!5101230 (= lt!2097532 lt!2097520)))

(assert (=> b!5101230 (<= (size!39343 Nil!58786) (size!39343 input!5654))))

(assert (=> b!5101230 (= lt!2097520 (lemmaIsPrefixThenSmallerEqSize!833 Nil!58786 input!5654))))

(assert (=> b!5101230 (= e!3181454 e!3181457)))

(declare-fun b!5101231 () Bool)

(assert (=> b!5101231 (= e!3181457 e!3181450)))

(assert (=> b!5101231 (= lt!2097517 call!355345)))

(declare-fun c!876431 () Bool)

(assert (=> b!5101231 (= c!876431 (isEmpty!31786 (_1!35037 lt!2097517)))))

(assert (= (and d!1650086 c!876430) b!5101225))

(assert (= (and d!1650086 (not c!876430)) b!5101223))

(assert (= (and b!5101223 c!876429) b!5101227))

(assert (= (and b!5101223 (not c!876429)) b!5101230))

(assert (= (and b!5101227 c!876428) b!5101220))

(assert (= (and b!5101227 (not c!876428)) b!5101224))

(assert (= (and b!5101230 c!876432) b!5101221))

(assert (= (and b!5101230 (not c!876432)) b!5101229))

(assert (= (and b!5101230 c!876433) b!5101231))

(assert (= (and b!5101230 (not c!876433)) b!5101228))

(assert (= (and b!5101231 c!876431) b!5101226))

(assert (= (and b!5101231 (not c!876431)) b!5101218))

(assert (= (or b!5101231 b!5101228) bm!355346))

(assert (= (or b!5101231 b!5101228) bm!355344))

(assert (= (or b!5101231 b!5101228) bm!355342))

(assert (= (or b!5101231 b!5101228) bm!355340))

(assert (= (or b!5101227 b!5101221) bm!355345))

(assert (= (or b!5101227 b!5101230) bm!355339))

(assert (= (or b!5101227 b!5101221) bm!355341))

(assert (= (or b!5101227 b!5101221) bm!355343))

(assert (= (and d!1650086 res!2171050) b!5101222))

(assert (= (and b!5101222 (not res!2171051)) b!5101219))

(declare-fun m!6158574 () Bool)

(assert (=> b!5101230 m!6158574))

(assert (=> b!5101230 m!6158574))

(declare-fun m!6158576 () Bool)

(assert (=> b!5101230 m!6158576))

(assert (=> b!5101230 m!6158462))

(declare-fun m!6158578 () Bool)

(assert (=> b!5101230 m!6158578))

(assert (=> b!5101230 m!6158436))

(assert (=> b!5101230 m!6158466))

(assert (=> b!5101230 m!6158468))

(assert (=> b!5101230 m!6158464))

(assert (=> b!5101230 m!6158470))

(assert (=> b!5101230 m!6158452))

(assert (=> b!5101230 m!6158136))

(assert (=> b!5101230 m!6158436))

(assert (=> b!5101230 m!6158464))

(assert (=> b!5101230 m!6158124))

(assert (=> b!5101230 m!6158458))

(assert (=> b!5101230 m!6158460))

(assert (=> bm!355339 m!6158312))

(assert (=> bm!355344 m!6158460))

(declare-fun m!6158580 () Bool)

(assert (=> b!5101231 m!6158580))

(declare-fun m!6158582 () Bool)

(assert (=> b!5101222 m!6158582))

(assert (=> bm!355345 m!6158450))

(assert (=> bm!355341 m!6158482))

(assert (=> bm!355346 m!6158452))

(declare-fun m!6158584 () Bool)

(assert (=> b!5101219 m!6158584))

(assert (=> b!5101219 m!6158136))

(declare-fun m!6158586 () Bool)

(assert (=> bm!355340 m!6158586))

(declare-fun m!6158588 () Bool)

(assert (=> bm!355342 m!6158588))

(assert (=> bm!355343 m!6158484))

(assert (=> d!1650086 m!6158438))

(assert (=> d!1650086 m!6158440))

(assert (=> d!1650086 m!6158446))

(assert (=> d!1650086 m!6158436))

(declare-fun m!6158590 () Bool)

(assert (=> d!1650086 m!6158590))

(declare-fun m!6158592 () Bool)

(assert (=> d!1650086 m!6158592))

(assert (=> d!1650086 m!6158438))

(declare-fun m!6158594 () Bool)

(assert (=> d!1650086 m!6158594))

(assert (=> b!5100771 d!1650086))

(declare-fun b!5101250 () Bool)

(declare-fun e!3181472 () Bool)

(declare-fun e!3181477 () Bool)

(assert (=> b!5101250 (= e!3181472 e!3181477)))

(declare-fun res!2171062 () Bool)

(assert (=> b!5101250 (=> (not res!2171062) (not e!3181477))))

(declare-fun call!355358 () Bool)

(assert (=> b!5101250 (= res!2171062 call!355358)))

(declare-fun d!1650092 () Bool)

(declare-fun res!2171063 () Bool)

(declare-fun e!3181476 () Bool)

(assert (=> d!1650092 (=> res!2171063 e!3181476)))

(assert (=> d!1650092 (= res!2171063 ((_ is ElementMatch!14041) r!12920))))

(assert (=> d!1650092 (= (validRegex!6168 r!12920) e!3181476)))

(declare-fun b!5101251 () Bool)

(declare-fun res!2171065 () Bool)

(assert (=> b!5101251 (=> res!2171065 e!3181472)))

(assert (=> b!5101251 (= res!2171065 (not ((_ is Concat!22886) r!12920)))))

(declare-fun e!3181475 () Bool)

(assert (=> b!5101251 (= e!3181475 e!3181472)))

(declare-fun b!5101252 () Bool)

(declare-fun res!2171066 () Bool)

(declare-fun e!3181474 () Bool)

(assert (=> b!5101252 (=> (not res!2171066) (not e!3181474))))

(declare-fun call!355360 () Bool)

(assert (=> b!5101252 (= res!2171066 call!355360)))

(assert (=> b!5101252 (= e!3181475 e!3181474)))

(declare-fun b!5101253 () Bool)

(declare-fun e!3181478 () Bool)

(declare-fun e!3181473 () Bool)

(assert (=> b!5101253 (= e!3181478 e!3181473)))

(declare-fun res!2171064 () Bool)

(assert (=> b!5101253 (= res!2171064 (not (nullable!4717 (reg!14370 r!12920))))))

(assert (=> b!5101253 (=> (not res!2171064) (not e!3181473))))

(declare-fun b!5101254 () Bool)

(declare-fun call!355359 () Bool)

(assert (=> b!5101254 (= e!3181473 call!355359)))

(declare-fun c!876439 () Bool)

(declare-fun c!876438 () Bool)

(declare-fun bm!355353 () Bool)

(assert (=> bm!355353 (= call!355359 (validRegex!6168 (ite c!876438 (reg!14370 r!12920) (ite c!876439 (regTwo!28595 r!12920) (regOne!28594 r!12920)))))))

(declare-fun b!5101255 () Bool)

(assert (=> b!5101255 (= e!3181476 e!3181478)))

(assert (=> b!5101255 (= c!876438 ((_ is Star!14041) r!12920))))

(declare-fun bm!355354 () Bool)

(assert (=> bm!355354 (= call!355360 (validRegex!6168 (ite c!876439 (regOne!28595 r!12920) (regTwo!28594 r!12920))))))

(declare-fun b!5101256 () Bool)

(assert (=> b!5101256 (= e!3181474 call!355358)))

(declare-fun b!5101257 () Bool)

(assert (=> b!5101257 (= e!3181478 e!3181475)))

(assert (=> b!5101257 (= c!876439 ((_ is Union!14041) r!12920))))

(declare-fun b!5101258 () Bool)

(assert (=> b!5101258 (= e!3181477 call!355360)))

(declare-fun bm!355355 () Bool)

(assert (=> bm!355355 (= call!355358 call!355359)))

(assert (= (and d!1650092 (not res!2171063)) b!5101255))

(assert (= (and b!5101255 c!876438) b!5101253))

(assert (= (and b!5101255 (not c!876438)) b!5101257))

(assert (= (and b!5101253 res!2171064) b!5101254))

(assert (= (and b!5101257 c!876439) b!5101252))

(assert (= (and b!5101257 (not c!876439)) b!5101251))

(assert (= (and b!5101252 res!2171066) b!5101256))

(assert (= (and b!5101251 (not res!2171065)) b!5101250))

(assert (= (and b!5101250 res!2171062) b!5101258))

(assert (= (or b!5101256 b!5101250) bm!355355))

(assert (= (or b!5101252 b!5101258) bm!355354))

(assert (= (or b!5101254 bm!355355) bm!355353))

(declare-fun m!6158596 () Bool)

(assert (=> b!5101253 m!6158596))

(declare-fun m!6158598 () Bool)

(assert (=> bm!355353 m!6158598))

(declare-fun m!6158600 () Bool)

(assert (=> bm!355354 m!6158600))

(assert (=> start!537932 d!1650092))

(declare-fun b!5101259 () Bool)

(declare-fun e!3181480 () Bool)

(assert (=> b!5101259 (= e!3181480 (matchR!6826 (derivativeStep!3997 r!12920 (head!10833 (_1!35037 lt!2097078))) (tail!9988 (_1!35037 lt!2097078))))))

(declare-fun b!5101260 () Bool)

(declare-fun e!3181484 () Bool)

(declare-fun lt!2097539 () Bool)

(assert (=> b!5101260 (= e!3181484 (not lt!2097539))))

(declare-fun b!5101261 () Bool)

(declare-fun res!2171071 () Bool)

(declare-fun e!3181482 () Bool)

(assert (=> b!5101261 (=> res!2171071 e!3181482)))

(assert (=> b!5101261 (= res!2171071 (not (isEmpty!31786 (tail!9988 (_1!35037 lt!2097078)))))))

(declare-fun b!5101262 () Bool)

(declare-fun e!3181483 () Bool)

(declare-fun call!355361 () Bool)

(assert (=> b!5101262 (= e!3181483 (= lt!2097539 call!355361))))

(declare-fun b!5101263 () Bool)

(assert (=> b!5101263 (= e!3181483 e!3181484)))

(declare-fun c!876440 () Bool)

(assert (=> b!5101263 (= c!876440 ((_ is EmptyLang!14041) r!12920))))

(declare-fun b!5101264 () Bool)

(declare-fun res!2171074 () Bool)

(declare-fun e!3181481 () Bool)

(assert (=> b!5101264 (=> res!2171074 e!3181481)))

(assert (=> b!5101264 (= res!2171074 (not ((_ is ElementMatch!14041) r!12920)))))

(assert (=> b!5101264 (= e!3181484 e!3181481)))

(declare-fun b!5101265 () Bool)

(declare-fun res!2171072 () Bool)

(declare-fun e!3181479 () Bool)

(assert (=> b!5101265 (=> (not res!2171072) (not e!3181479))))

(assert (=> b!5101265 (= res!2171072 (isEmpty!31786 (tail!9988 (_1!35037 lt!2097078))))))

(declare-fun b!5101266 () Bool)

(declare-fun e!3181485 () Bool)

(assert (=> b!5101266 (= e!3181481 e!3181485)))

(declare-fun res!2171073 () Bool)

(assert (=> b!5101266 (=> (not res!2171073) (not e!3181485))))

(assert (=> b!5101266 (= res!2171073 (not lt!2097539))))

(declare-fun d!1650094 () Bool)

(assert (=> d!1650094 e!3181483))

(declare-fun c!876442 () Bool)

(assert (=> d!1650094 (= c!876442 ((_ is EmptyExpr!14041) r!12920))))

(assert (=> d!1650094 (= lt!2097539 e!3181480)))

(declare-fun c!876441 () Bool)

(assert (=> d!1650094 (= c!876441 (isEmpty!31786 (_1!35037 lt!2097078)))))

(assert (=> d!1650094 (validRegex!6168 r!12920)))

(assert (=> d!1650094 (= (matchR!6826 r!12920 (_1!35037 lt!2097078)) lt!2097539)))

(declare-fun b!5101267 () Bool)

(assert (=> b!5101267 (= e!3181482 (not (= (head!10833 (_1!35037 lt!2097078)) (c!876311 r!12920))))))

(declare-fun b!5101268 () Bool)

(declare-fun res!2171069 () Bool)

(assert (=> b!5101268 (=> res!2171069 e!3181481)))

(assert (=> b!5101268 (= res!2171069 e!3181479)))

(declare-fun res!2171068 () Bool)

(assert (=> b!5101268 (=> (not res!2171068) (not e!3181479))))

(assert (=> b!5101268 (= res!2171068 lt!2097539)))

(declare-fun b!5101269 () Bool)

(declare-fun res!2171067 () Bool)

(assert (=> b!5101269 (=> (not res!2171067) (not e!3181479))))

(assert (=> b!5101269 (= res!2171067 (not call!355361))))

(declare-fun b!5101270 () Bool)

(assert (=> b!5101270 (= e!3181480 (nullable!4717 r!12920))))

(declare-fun bm!355356 () Bool)

(assert (=> bm!355356 (= call!355361 (isEmpty!31786 (_1!35037 lt!2097078)))))

(declare-fun b!5101271 () Bool)

(assert (=> b!5101271 (= e!3181485 e!3181482)))

(declare-fun res!2171070 () Bool)

(assert (=> b!5101271 (=> res!2171070 e!3181482)))

(assert (=> b!5101271 (= res!2171070 call!355361)))

(declare-fun b!5101272 () Bool)

(assert (=> b!5101272 (= e!3181479 (= (head!10833 (_1!35037 lt!2097078)) (c!876311 r!12920)))))

(assert (= (and d!1650094 c!876441) b!5101270))

(assert (= (and d!1650094 (not c!876441)) b!5101259))

(assert (= (and d!1650094 c!876442) b!5101262))

(assert (= (and d!1650094 (not c!876442)) b!5101263))

(assert (= (and b!5101263 c!876440) b!5101260))

(assert (= (and b!5101263 (not c!876440)) b!5101264))

(assert (= (and b!5101264 (not res!2171074)) b!5101268))

(assert (= (and b!5101268 res!2171068) b!5101269))

(assert (= (and b!5101269 res!2171067) b!5101265))

(assert (= (and b!5101265 res!2171072) b!5101272))

(assert (= (and b!5101268 (not res!2171069)) b!5101266))

(assert (= (and b!5101266 res!2171073) b!5101271))

(assert (= (and b!5101271 (not res!2171070)) b!5101261))

(assert (= (and b!5101261 (not res!2171071)) b!5101267))

(assert (= (or b!5101262 b!5101269 b!5101271) bm!355356))

(declare-fun m!6158602 () Bool)

(assert (=> b!5101259 m!6158602))

(assert (=> b!5101259 m!6158602))

(declare-fun m!6158604 () Bool)

(assert (=> b!5101259 m!6158604))

(declare-fun m!6158606 () Bool)

(assert (=> b!5101259 m!6158606))

(assert (=> b!5101259 m!6158604))

(assert (=> b!5101259 m!6158606))

(declare-fun m!6158608 () Bool)

(assert (=> b!5101259 m!6158608))

(assert (=> b!5101270 m!6158380))

(assert (=> b!5101272 m!6158602))

(assert (=> b!5101261 m!6158606))

(assert (=> b!5101261 m!6158606))

(declare-fun m!6158610 () Bool)

(assert (=> b!5101261 m!6158610))

(assert (=> d!1650094 m!6158140))

(assert (=> d!1650094 m!6158114))

(assert (=> b!5101265 m!6158606))

(assert (=> b!5101265 m!6158606))

(assert (=> b!5101265 m!6158610))

(assert (=> b!5101267 m!6158602))

(assert (=> bm!355356 m!6158140))

(assert (=> b!5100777 d!1650094))

(declare-fun b!5101274 () Bool)

(declare-fun e!3181487 () List!58910)

(assert (=> b!5101274 (= e!3181487 (Cons!58786 (h!65234 (_1!35037 lt!2097079)) (++!12890 (t!371911 (_1!35037 lt!2097079)) (_2!35037 lt!2097079))))))

(declare-fun b!5101276 () Bool)

(declare-fun e!3181486 () Bool)

(declare-fun lt!2097540 () List!58910)

(assert (=> b!5101276 (= e!3181486 (or (not (= (_2!35037 lt!2097079) Nil!58786)) (= lt!2097540 (_1!35037 lt!2097079))))))

(declare-fun b!5101275 () Bool)

(declare-fun res!2171076 () Bool)

(assert (=> b!5101275 (=> (not res!2171076) (not e!3181486))))

(assert (=> b!5101275 (= res!2171076 (= (size!39343 lt!2097540) (+ (size!39343 (_1!35037 lt!2097079)) (size!39343 (_2!35037 lt!2097079)))))))

(declare-fun b!5101273 () Bool)

(assert (=> b!5101273 (= e!3181487 (_2!35037 lt!2097079))))

(declare-fun d!1650096 () Bool)

(assert (=> d!1650096 e!3181486))

(declare-fun res!2171075 () Bool)

(assert (=> d!1650096 (=> (not res!2171075) (not e!3181486))))

(assert (=> d!1650096 (= res!2171075 (= (content!10460 lt!2097540) ((_ map or) (content!10460 (_1!35037 lt!2097079)) (content!10460 (_2!35037 lt!2097079)))))))

(assert (=> d!1650096 (= lt!2097540 e!3181487)))

(declare-fun c!876443 () Bool)

(assert (=> d!1650096 (= c!876443 ((_ is Nil!58786) (_1!35037 lt!2097079)))))

(assert (=> d!1650096 (= (++!12890 (_1!35037 lt!2097079) (_2!35037 lt!2097079)) lt!2097540)))

(assert (= (and d!1650096 c!876443) b!5101273))

(assert (= (and d!1650096 (not c!876443)) b!5101274))

(assert (= (and d!1650096 res!2171075) b!5101275))

(assert (= (and b!5101275 res!2171076) b!5101276))

(declare-fun m!6158612 () Bool)

(assert (=> b!5101274 m!6158612))

(declare-fun m!6158614 () Bool)

(assert (=> b!5101275 m!6158614))

(assert (=> b!5101275 m!6158390))

(declare-fun m!6158616 () Bool)

(assert (=> b!5101275 m!6158616))

(declare-fun m!6158618 () Bool)

(assert (=> d!1650096 m!6158618))

(declare-fun m!6158620 () Bool)

(assert (=> d!1650096 m!6158620))

(declare-fun m!6158622 () Bool)

(assert (=> d!1650096 m!6158622))

(assert (=> b!5100782 d!1650096))

(declare-fun condSetEmpty!29212 () Bool)

(assert (=> setNonEmpty!29206 (= condSetEmpty!29212 (= setRest!29206 ((as const (Array Context!6850 Bool)) false)))))

(declare-fun setRes!29212 () Bool)

(assert (=> setNonEmpty!29206 (= tp!1422800 setRes!29212)))

(declare-fun setIsEmpty!29212 () Bool)

(assert (=> setIsEmpty!29212 setRes!29212))

(declare-fun setNonEmpty!29212 () Bool)

(declare-fun e!3181490 () Bool)

(declare-fun tp!1422858 () Bool)

(declare-fun setElem!29212 () Context!6850)

(assert (=> setNonEmpty!29212 (= setRes!29212 (and tp!1422858 (inv!78277 setElem!29212) e!3181490))))

(declare-fun setRest!29212 () (InoxSet Context!6850))

(assert (=> setNonEmpty!29212 (= setRest!29206 ((_ map or) (store ((as const (Array Context!6850 Bool)) false) setElem!29212 true) setRest!29212))))

(declare-fun b!5101281 () Bool)

(declare-fun tp!1422859 () Bool)

(assert (=> b!5101281 (= e!3181490 tp!1422859)))

(assert (= (and setNonEmpty!29206 condSetEmpty!29212) setIsEmpty!29212))

(assert (= (and setNonEmpty!29206 (not condSetEmpty!29212)) setNonEmpty!29212))

(assert (= setNonEmpty!29212 b!5101281))

(declare-fun m!6158624 () Bool)

(assert (=> setNonEmpty!29212 m!6158624))

(declare-fun b!5101286 () Bool)

(declare-fun e!3181493 () Bool)

(declare-fun tp!1422864 () Bool)

(declare-fun tp!1422865 () Bool)

(assert (=> b!5101286 (= e!3181493 (and tp!1422864 tp!1422865))))

(assert (=> b!5100783 (= tp!1422796 e!3181493)))

(assert (= (and b!5100783 ((_ is Cons!58785) (exprs!3925 setElem!29206))) b!5101286))

(declare-fun b!5101300 () Bool)

(declare-fun e!3181496 () Bool)

(declare-fun tp!1422879 () Bool)

(declare-fun tp!1422876 () Bool)

(assert (=> b!5101300 (= e!3181496 (and tp!1422879 tp!1422876))))

(declare-fun b!5101297 () Bool)

(assert (=> b!5101297 (= e!3181496 tp_is_empty!37347)))

(declare-fun b!5101299 () Bool)

(declare-fun tp!1422880 () Bool)

(assert (=> b!5101299 (= e!3181496 tp!1422880)))

(declare-fun b!5101298 () Bool)

(declare-fun tp!1422878 () Bool)

(declare-fun tp!1422877 () Bool)

(assert (=> b!5101298 (= e!3181496 (and tp!1422878 tp!1422877))))

(assert (=> b!5100772 (= tp!1422801 e!3181496)))

(assert (= (and b!5100772 ((_ is ElementMatch!14041) (regOne!28594 r!12920))) b!5101297))

(assert (= (and b!5100772 ((_ is Concat!22886) (regOne!28594 r!12920))) b!5101298))

(assert (= (and b!5100772 ((_ is Star!14041) (regOne!28594 r!12920))) b!5101299))

(assert (= (and b!5100772 ((_ is Union!14041) (regOne!28594 r!12920))) b!5101300))

(declare-fun b!5101304 () Bool)

(declare-fun e!3181497 () Bool)

(declare-fun tp!1422884 () Bool)

(declare-fun tp!1422881 () Bool)

(assert (=> b!5101304 (= e!3181497 (and tp!1422884 tp!1422881))))

(declare-fun b!5101301 () Bool)

(assert (=> b!5101301 (= e!3181497 tp_is_empty!37347)))

(declare-fun b!5101303 () Bool)

(declare-fun tp!1422885 () Bool)

(assert (=> b!5101303 (= e!3181497 tp!1422885)))

(declare-fun b!5101302 () Bool)

(declare-fun tp!1422883 () Bool)

(declare-fun tp!1422882 () Bool)

(assert (=> b!5101302 (= e!3181497 (and tp!1422883 tp!1422882))))

(assert (=> b!5100772 (= tp!1422797 e!3181497)))

(assert (= (and b!5100772 ((_ is ElementMatch!14041) (regTwo!28594 r!12920))) b!5101301))

(assert (= (and b!5100772 ((_ is Concat!22886) (regTwo!28594 r!12920))) b!5101302))

(assert (= (and b!5100772 ((_ is Star!14041) (regTwo!28594 r!12920))) b!5101303))

(assert (= (and b!5100772 ((_ is Union!14041) (regTwo!28594 r!12920))) b!5101304))

(declare-fun b!5101308 () Bool)

(declare-fun e!3181498 () Bool)

(declare-fun tp!1422889 () Bool)

(declare-fun tp!1422886 () Bool)

(assert (=> b!5101308 (= e!3181498 (and tp!1422889 tp!1422886))))

(declare-fun b!5101305 () Bool)

(assert (=> b!5101305 (= e!3181498 tp_is_empty!37347)))

(declare-fun b!5101307 () Bool)

(declare-fun tp!1422890 () Bool)

(assert (=> b!5101307 (= e!3181498 tp!1422890)))

(declare-fun b!5101306 () Bool)

(declare-fun tp!1422888 () Bool)

(declare-fun tp!1422887 () Bool)

(assert (=> b!5101306 (= e!3181498 (and tp!1422888 tp!1422887))))

(assert (=> b!5100774 (= tp!1422798 e!3181498)))

(assert (= (and b!5100774 ((_ is ElementMatch!14041) (regOne!28595 r!12920))) b!5101305))

(assert (= (and b!5100774 ((_ is Concat!22886) (regOne!28595 r!12920))) b!5101306))

(assert (= (and b!5100774 ((_ is Star!14041) (regOne!28595 r!12920))) b!5101307))

(assert (= (and b!5100774 ((_ is Union!14041) (regOne!28595 r!12920))) b!5101308))

(declare-fun b!5101312 () Bool)

(declare-fun e!3181499 () Bool)

(declare-fun tp!1422894 () Bool)

(declare-fun tp!1422891 () Bool)

(assert (=> b!5101312 (= e!3181499 (and tp!1422894 tp!1422891))))

(declare-fun b!5101309 () Bool)

(assert (=> b!5101309 (= e!3181499 tp_is_empty!37347)))

(declare-fun b!5101311 () Bool)

(declare-fun tp!1422895 () Bool)

(assert (=> b!5101311 (= e!3181499 tp!1422895)))

(declare-fun b!5101310 () Bool)

(declare-fun tp!1422893 () Bool)

(declare-fun tp!1422892 () Bool)

(assert (=> b!5101310 (= e!3181499 (and tp!1422893 tp!1422892))))

(assert (=> b!5100774 (= tp!1422799 e!3181499)))

(assert (= (and b!5100774 ((_ is ElementMatch!14041) (regTwo!28595 r!12920))) b!5101309))

(assert (= (and b!5100774 ((_ is Concat!22886) (regTwo!28595 r!12920))) b!5101310))

(assert (= (and b!5100774 ((_ is Star!14041) (regTwo!28595 r!12920))) b!5101311))

(assert (= (and b!5100774 ((_ is Union!14041) (regTwo!28595 r!12920))) b!5101312))

(declare-fun b!5101317 () Bool)

(declare-fun e!3181502 () Bool)

(declare-fun tp!1422898 () Bool)

(assert (=> b!5101317 (= e!3181502 (and tp_is_empty!37347 tp!1422898))))

(assert (=> b!5100770 (= tp!1422803 e!3181502)))

(assert (= (and b!5100770 ((_ is Cons!58786) (t!371911 input!5654))) b!5101317))

(declare-fun b!5101321 () Bool)

(declare-fun e!3181503 () Bool)

(declare-fun tp!1422902 () Bool)

(declare-fun tp!1422899 () Bool)

(assert (=> b!5101321 (= e!3181503 (and tp!1422902 tp!1422899))))

(declare-fun b!5101318 () Bool)

(assert (=> b!5101318 (= e!3181503 tp_is_empty!37347)))

(declare-fun b!5101320 () Bool)

(declare-fun tp!1422903 () Bool)

(assert (=> b!5101320 (= e!3181503 tp!1422903)))

(declare-fun b!5101319 () Bool)

(declare-fun tp!1422901 () Bool)

(declare-fun tp!1422900 () Bool)

(assert (=> b!5101319 (= e!3181503 (and tp!1422901 tp!1422900))))

(assert (=> b!5100776 (= tp!1422802 e!3181503)))

(assert (= (and b!5100776 ((_ is ElementMatch!14041) (reg!14370 r!12920))) b!5101318))

(assert (= (and b!5100776 ((_ is Concat!22886) (reg!14370 r!12920))) b!5101319))

(assert (= (and b!5100776 ((_ is Star!14041) (reg!14370 r!12920))) b!5101320))

(assert (= (and b!5100776 ((_ is Union!14041) (reg!14370 r!12920))) b!5101321))

(check-sat (not b!5101267) (not b!5101003) (not b!5101261) (not bm!355318) (not b!5101097) (not b!5101006) (not b!5101303) (not d!1650086) (not bm!355339) (not d!1650072) (not d!1650054) (not b!5101317) (not d!1650096) (not d!1650076) (not b!5101026) (not d!1650044) (not b!5101141) (not b!5101302) (not b!5101222) (not b!5101027) (not b!5101310) (not b!5101286) (not b!5101272) (not bm!355317) (not bm!355344) (not b!5101118) (not b!5101321) (not b!5101024) (not b!5101231) (not b!5101230) (not d!1650052) (not b!5100951) (not bm!355314) (not setNonEmpty!29212) (not bm!355321) (not b!5100964) (not d!1650094) (not b!5101008) (not b!5101114) (not d!1650034) (not bm!355288) (not b!5101096) (not b!5101281) (not b!5101219) (not b!5101275) (not b!5100965) (not b!5101259) (not b!5101101) (not b!5101253) (not b!5101270) (not b!5100995) (not b!5101025) (not bm!355341) (not bm!355343) (not b!5100950) (not bm!355356) (not d!1650066) (not b!5101312) (not bm!355319) (not bm!355354) (not b!5101116) (not b!5101274) (not d!1649996) (not b!5101319) (not b!5101117) (not d!1650036) (not b!5101320) (not bm!355353) (not b!5101298) tp_is_empty!37347 (not b!5101014) (not bm!355340) (not b!5101300) (not bm!355342) (not b!5100954) (not bm!355316) (not d!1650030) (not bm!355345) (not b!5101098) (not b!5101028) (not d!1650056) (not bm!355315) (not b!5100997) (not d!1650040) (not b!5101125) (not b!5101307) (not b!5101304) (not bm!355346) (not b!5101265) (not b!5101001) (not b!5101311) (not bm!355320) (not b!5101306) (not d!1650042) (not d!1650038) (not b!5101299) (not b!5101308))
(check-sat)
