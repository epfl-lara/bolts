; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538100 () Bool)

(assert start!538100)

(declare-fun b!5102631 () Bool)

(declare-fun e!3182401 () Bool)

(declare-fun tp!1423333 () Bool)

(assert (=> b!5102631 (= e!3182401 tp!1423333)))

(declare-fun b!5102632 () Bool)

(declare-fun e!3182394 () Bool)

(declare-datatypes ((C!28368 0))(
  ( (C!28369 (val!23836 Int)) )
))
(declare-datatypes ((List!58951 0))(
  ( (Nil!58827) (Cons!58827 (h!65275 C!28368) (t!371952 List!58951)) )
))
(declare-datatypes ((tuple2!63496 0))(
  ( (tuple2!63497 (_1!35051 List!58951) (_2!35051 List!58951)) )
))
(declare-fun lt!2098733 () tuple2!63496)

(declare-fun isEmpty!31800 (List!58951) Bool)

(assert (=> b!5102632 (= e!3182394 (not (isEmpty!31800 (_1!35051 lt!2098733))))))

(declare-fun b!5102633 () Bool)

(declare-fun tp!1423334 () Bool)

(declare-fun tp!1423339 () Bool)

(assert (=> b!5102633 (= e!3182401 (and tp!1423334 tp!1423339))))

(declare-fun b!5102634 () Bool)

(declare-fun e!3182402 () Bool)

(assert (=> b!5102634 (= e!3182402 false)))

(declare-fun lt!2098723 () tuple2!63496)

(declare-fun lt!2098730 () Bool)

(assert (=> b!5102634 (or (= (_1!35051 lt!2098723) (_1!35051 lt!2098733)) (not lt!2098730))))

(declare-fun input!5654 () List!58951)

(declare-datatypes ((Unit!149870 0))(
  ( (Unit!149871) )
))
(declare-fun lt!2098732 () Unit!149870)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14055 0))(
  ( (ElementMatch!14055 (c!876601 C!28368)) (Concat!22900 (regOne!28622 Regex!14055) (regTwo!28622 Regex!14055)) (EmptyExpr!14055) (Star!14055 (reg!14384 Regex!14055)) (EmptyLang!14055) (Union!14055 (regOne!28623 Regex!14055) (regTwo!28623 Regex!14055)) )
))
(declare-datatypes ((List!58952 0))(
  ( (Nil!58828) (Cons!58828 (h!65276 Regex!14055) (t!371953 List!58952)) )
))
(declare-datatypes ((Context!6878 0))(
  ( (Context!6879 (exprs!3939 List!58952)) )
))
(declare-fun z!4303 () (InoxSet Context!6878))

(declare-fun longestMatchNoBiggerStringMatch!23 ((InoxSet Context!6878) List!58951 List!58951 List!58951) Unit!149870)

(assert (=> b!5102634 (= lt!2098732 (longestMatchNoBiggerStringMatch!23 z!4303 input!5654 (_1!35051 lt!2098733) (_1!35051 lt!2098723)))))

(declare-fun b!5102635 () Bool)

(declare-fun e!3182395 () Bool)

(declare-fun tp_is_empty!37375 () Bool)

(declare-fun tp!1423332 () Bool)

(assert (=> b!5102635 (= e!3182395 (and tp_is_empty!37375 tp!1423332))))

(declare-fun setNonEmpty!29260 () Bool)

(declare-fun e!3182405 () Bool)

(declare-fun setElem!29260 () Context!6878)

(declare-fun tp!1423336 () Bool)

(declare-fun setRes!29260 () Bool)

(declare-fun inv!78312 (Context!6878) Bool)

(assert (=> setNonEmpty!29260 (= setRes!29260 (and tp!1423336 (inv!78312 setElem!29260) e!3182405))))

(declare-fun setRest!29260 () (InoxSet Context!6878))

(assert (=> setNonEmpty!29260 (= z!4303 ((_ map or) (store ((as const (Array Context!6878 Bool)) false) setElem!29260 true) setRest!29260))))

(declare-fun b!5102636 () Bool)

(assert (=> b!5102636 (= e!3182401 tp_is_empty!37375)))

(declare-fun b!5102637 () Bool)

(declare-fun e!3182399 () Bool)

(declare-fun e!3182403 () Bool)

(assert (=> b!5102637 (= e!3182399 (not e!3182403))))

(declare-fun res!2171769 () Bool)

(assert (=> b!5102637 (=> res!2171769 e!3182403)))

(assert (=> b!5102637 (= res!2171769 e!3182394)))

(declare-fun res!2171767 () Bool)

(assert (=> b!5102637 (=> (not res!2171767) (not e!3182394))))

(declare-fun lt!2098727 () Bool)

(assert (=> b!5102637 (= res!2171767 (not lt!2098727))))

(declare-fun matchZipper!727 ((InoxSet Context!6878) List!58951) Bool)

(assert (=> b!5102637 (= lt!2098727 (matchZipper!727 z!4303 (_1!35051 lt!2098733)))))

(declare-fun e!3182404 () Bool)

(assert (=> b!5102637 e!3182404))

(declare-fun res!2171762 () Bool)

(assert (=> b!5102637 (=> res!2171762 e!3182404)))

(declare-fun lt!2098731 () tuple2!63496)

(assert (=> b!5102637 (= res!2171762 (isEmpty!31800 (_1!35051 lt!2098731)))))

(declare-fun lt!2098737 () Int)

(declare-fun lt!2098722 () Int)

(declare-fun r!12920 () Regex!14055)

(declare-fun findLongestMatchInner!2068 (Regex!14055 List!58951 Int List!58951 List!58951 Int) tuple2!63496)

(assert (=> b!5102637 (= lt!2098731 (findLongestMatchInner!2068 r!12920 Nil!58827 lt!2098722 input!5654 input!5654 lt!2098737))))

(declare-fun lt!2098738 () Unit!149870)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2056 (Regex!14055 List!58951) Unit!149870)

(assert (=> b!5102637 (= lt!2098738 (longestMatchIsAcceptedByMatchOrIsEmpty!2056 r!12920 input!5654))))

(declare-fun e!3182397 () Bool)

(assert (=> b!5102637 e!3182397))

(declare-fun res!2171770 () Bool)

(assert (=> b!5102637 (=> res!2171770 e!3182397)))

(declare-fun lt!2098721 () tuple2!63496)

(assert (=> b!5102637 (= res!2171770 (isEmpty!31800 (_1!35051 lt!2098721)))))

(declare-fun findLongestMatchInnerZipper!129 ((InoxSet Context!6878) List!58951 Int List!58951 List!58951 Int) tuple2!63496)

(assert (=> b!5102637 (= lt!2098721 (findLongestMatchInnerZipper!129 z!4303 Nil!58827 lt!2098722 input!5654 input!5654 lt!2098737))))

(declare-fun size!39357 (List!58951) Int)

(assert (=> b!5102637 (= lt!2098737 (size!39357 input!5654))))

(assert (=> b!5102637 (= lt!2098722 (size!39357 Nil!58827))))

(declare-fun lt!2098720 () Unit!149870)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2057 ((InoxSet Context!6878) List!58951) Unit!149870)

(assert (=> b!5102637 (= lt!2098720 (longestMatchIsAcceptedByMatchOrIsEmpty!2057 z!4303 input!5654))))

(declare-fun lt!2098734 () List!58951)

(declare-fun isPrefix!5456 (List!58951 List!58951) Bool)

(assert (=> b!5102637 (isPrefix!5456 (_1!35051 lt!2098723) lt!2098734)))

(declare-fun lt!2098735 () Unit!149870)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3514 (List!58951 List!58951) Unit!149870)

(assert (=> b!5102637 (= lt!2098735 (lemmaConcatTwoListThenFirstIsPrefix!3514 (_1!35051 lt!2098723) (_2!35051 lt!2098723)))))

(declare-fun lt!2098726 () List!58951)

(assert (=> b!5102637 (isPrefix!5456 (_1!35051 lt!2098733) lt!2098726)))

(declare-fun lt!2098724 () Unit!149870)

(assert (=> b!5102637 (= lt!2098724 (lemmaConcatTwoListThenFirstIsPrefix!3514 (_1!35051 lt!2098733) (_2!35051 lt!2098733)))))

(declare-fun b!5102638 () Bool)

(declare-fun e!3182400 () Bool)

(assert (=> b!5102638 (= e!3182403 e!3182400)))

(declare-fun res!2171765 () Bool)

(assert (=> b!5102638 (=> res!2171765 e!3182400)))

(declare-fun e!3182392 () Bool)

(assert (=> b!5102638 (= res!2171765 e!3182392)))

(declare-fun res!2171772 () Bool)

(assert (=> b!5102638 (=> (not res!2171772) (not e!3182392))))

(declare-fun lt!2098736 () Bool)

(assert (=> b!5102638 (= res!2171772 (not lt!2098736))))

(declare-fun matchR!6840 (Regex!14055 List!58951) Bool)

(assert (=> b!5102638 (= lt!2098736 (matchR!6840 r!12920 (_1!35051 lt!2098723)))))

(declare-fun b!5102639 () Bool)

(assert (=> b!5102639 (= e!3182400 e!3182402)))

(declare-fun res!2171768 () Bool)

(assert (=> b!5102639 (=> res!2171768 e!3182402)))

(assert (=> b!5102639 (= res!2171768 (<= (size!39357 (_1!35051 lt!2098723)) (size!39357 (_1!35051 lt!2098733))))))

(assert (=> b!5102639 (= (matchR!6840 r!12920 (_1!35051 lt!2098733)) lt!2098727)))

(declare-fun lt!2098729 () Unit!149870)

(declare-datatypes ((List!58953 0))(
  ( (Nil!58829) (Cons!58829 (h!65277 Context!6878) (t!371954 List!58953)) )
))
(declare-fun lt!2098728 () List!58953)

(declare-fun theoremZipperRegexEquiv!219 ((InoxSet Context!6878) List!58953 Regex!14055 List!58951) Unit!149870)

(assert (=> b!5102639 (= lt!2098729 (theoremZipperRegexEquiv!219 z!4303 lt!2098728 r!12920 (_1!35051 lt!2098733)))))

(assert (=> b!5102639 (= lt!2098736 lt!2098730)))

(assert (=> b!5102639 (= lt!2098730 (matchZipper!727 z!4303 (_1!35051 lt!2098723)))))

(declare-fun lt!2098725 () Unit!149870)

(assert (=> b!5102639 (= lt!2098725 (theoremZipperRegexEquiv!219 z!4303 lt!2098728 r!12920 (_1!35051 lt!2098723)))))

(declare-fun b!5102640 () Bool)

(declare-fun e!3182396 () Bool)

(declare-fun e!3182393 () Bool)

(assert (=> b!5102640 (= e!3182396 e!3182393)))

(declare-fun res!2171771 () Bool)

(assert (=> b!5102640 (=> (not res!2171771) (not e!3182393))))

(assert (=> b!5102640 (= res!2171771 (= lt!2098726 input!5654))))

(declare-fun ++!12904 (List!58951 List!58951) List!58951)

(assert (=> b!5102640 (= lt!2098726 (++!12904 (_1!35051 lt!2098733) (_2!35051 lt!2098733)))))

(declare-fun findLongestMatch!1885 (Regex!14055 List!58951) tuple2!63496)

(assert (=> b!5102640 (= lt!2098723 (findLongestMatch!1885 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!79 ((InoxSet Context!6878) List!58951) tuple2!63496)

(assert (=> b!5102640 (= lt!2098733 (findLongestMatchZipper!79 z!4303 input!5654))))

(declare-fun b!5102641 () Bool)

(assert (=> b!5102641 (= e!3182393 e!3182399)))

(declare-fun res!2171763 () Bool)

(assert (=> b!5102641 (=> (not res!2171763) (not e!3182399))))

(assert (=> b!5102641 (= res!2171763 (= lt!2098734 input!5654))))

(assert (=> b!5102641 (= lt!2098734 (++!12904 (_1!35051 lt!2098723) (_2!35051 lt!2098723)))))

(declare-fun b!5102642 () Bool)

(declare-fun tp!1423338 () Bool)

(declare-fun tp!1423335 () Bool)

(assert (=> b!5102642 (= e!3182401 (and tp!1423338 tp!1423335))))

(declare-fun b!5102643 () Bool)

(declare-fun tp!1423337 () Bool)

(assert (=> b!5102643 (= e!3182405 tp!1423337)))

(declare-fun b!5102645 () Bool)

(declare-fun e!3182398 () Bool)

(assert (=> b!5102645 (= e!3182398 e!3182396)))

(declare-fun res!2171766 () Bool)

(assert (=> b!5102645 (=> (not res!2171766) (not e!3182396))))

(declare-fun unfocusZipper!397 (List!58953) Regex!14055)

(assert (=> b!5102645 (= res!2171766 (= (unfocusZipper!397 lt!2098728) r!12920))))

(declare-fun toList!8189 ((InoxSet Context!6878)) List!58953)

(assert (=> b!5102645 (= lt!2098728 (toList!8189 z!4303))))

(declare-fun b!5102646 () Bool)

(assert (=> b!5102646 (= e!3182392 (not (isEmpty!31800 (_1!35051 lt!2098723))))))

(declare-fun b!5102647 () Bool)

(assert (=> b!5102647 (= e!3182397 (matchZipper!727 z!4303 (_1!35051 lt!2098721)))))

(declare-fun setIsEmpty!29260 () Bool)

(assert (=> setIsEmpty!29260 setRes!29260))

(declare-fun res!2171764 () Bool)

(assert (=> start!538100 (=> (not res!2171764) (not e!3182398))))

(declare-fun validRegex!6182 (Regex!14055) Bool)

(assert (=> start!538100 (= res!2171764 (validRegex!6182 r!12920))))

(assert (=> start!538100 e!3182398))

(assert (=> start!538100 e!3182401))

(declare-fun condSetEmpty!29260 () Bool)

(assert (=> start!538100 (= condSetEmpty!29260 (= z!4303 ((as const (Array Context!6878 Bool)) false)))))

(assert (=> start!538100 setRes!29260))

(assert (=> start!538100 e!3182395))

(declare-fun b!5102644 () Bool)

(assert (=> b!5102644 (= e!3182404 (matchR!6840 r!12920 (_1!35051 lt!2098731)))))

(assert (= (and start!538100 res!2171764) b!5102645))

(assert (= (and b!5102645 res!2171766) b!5102640))

(assert (= (and b!5102640 res!2171771) b!5102641))

(assert (= (and b!5102641 res!2171763) b!5102637))

(assert (= (and b!5102637 (not res!2171770)) b!5102647))

(assert (= (and b!5102637 (not res!2171762)) b!5102644))

(assert (= (and b!5102637 res!2171767) b!5102632))

(assert (= (and b!5102637 (not res!2171769)) b!5102638))

(assert (= (and b!5102638 res!2171772) b!5102646))

(assert (= (and b!5102638 (not res!2171765)) b!5102639))

(assert (= (and b!5102639 (not res!2171768)) b!5102634))

(get-info :version)

(assert (= (and start!538100 ((_ is ElementMatch!14055) r!12920)) b!5102636))

(assert (= (and start!538100 ((_ is Concat!22900) r!12920)) b!5102633))

(assert (= (and start!538100 ((_ is Star!14055) r!12920)) b!5102631))

(assert (= (and start!538100 ((_ is Union!14055) r!12920)) b!5102642))

(assert (= (and start!538100 condSetEmpty!29260) setIsEmpty!29260))

(assert (= (and start!538100 (not condSetEmpty!29260)) setNonEmpty!29260))

(assert (= setNonEmpty!29260 b!5102643))

(assert (= (and start!538100 ((_ is Cons!58827) input!5654)) b!5102635))

(declare-fun m!6159948 () Bool)

(assert (=> start!538100 m!6159948))

(declare-fun m!6159950 () Bool)

(assert (=> b!5102639 m!6159950))

(declare-fun m!6159952 () Bool)

(assert (=> b!5102639 m!6159952))

(declare-fun m!6159954 () Bool)

(assert (=> b!5102639 m!6159954))

(declare-fun m!6159956 () Bool)

(assert (=> b!5102639 m!6159956))

(declare-fun m!6159958 () Bool)

(assert (=> b!5102639 m!6159958))

(declare-fun m!6159960 () Bool)

(assert (=> b!5102639 m!6159960))

(declare-fun m!6159962 () Bool)

(assert (=> b!5102647 m!6159962))

(declare-fun m!6159964 () Bool)

(assert (=> setNonEmpty!29260 m!6159964))

(declare-fun m!6159966 () Bool)

(assert (=> b!5102632 m!6159966))

(declare-fun m!6159968 () Bool)

(assert (=> b!5102637 m!6159968))

(declare-fun m!6159970 () Bool)

(assert (=> b!5102637 m!6159970))

(declare-fun m!6159972 () Bool)

(assert (=> b!5102637 m!6159972))

(declare-fun m!6159974 () Bool)

(assert (=> b!5102637 m!6159974))

(declare-fun m!6159976 () Bool)

(assert (=> b!5102637 m!6159976))

(declare-fun m!6159978 () Bool)

(assert (=> b!5102637 m!6159978))

(declare-fun m!6159980 () Bool)

(assert (=> b!5102637 m!6159980))

(declare-fun m!6159982 () Bool)

(assert (=> b!5102637 m!6159982))

(declare-fun m!6159984 () Bool)

(assert (=> b!5102637 m!6159984))

(declare-fun m!6159986 () Bool)

(assert (=> b!5102637 m!6159986))

(declare-fun m!6159988 () Bool)

(assert (=> b!5102637 m!6159988))

(declare-fun m!6159990 () Bool)

(assert (=> b!5102637 m!6159990))

(declare-fun m!6159992 () Bool)

(assert (=> b!5102637 m!6159992))

(declare-fun m!6159994 () Bool)

(assert (=> b!5102634 m!6159994))

(declare-fun m!6159996 () Bool)

(assert (=> b!5102640 m!6159996))

(declare-fun m!6159998 () Bool)

(assert (=> b!5102640 m!6159998))

(declare-fun m!6160000 () Bool)

(assert (=> b!5102640 m!6160000))

(declare-fun m!6160002 () Bool)

(assert (=> b!5102638 m!6160002))

(declare-fun m!6160004 () Bool)

(assert (=> b!5102644 m!6160004))

(declare-fun m!6160006 () Bool)

(assert (=> b!5102646 m!6160006))

(declare-fun m!6160008 () Bool)

(assert (=> b!5102641 m!6160008))

(declare-fun m!6160010 () Bool)

(assert (=> b!5102645 m!6160010))

(declare-fun m!6160012 () Bool)

(assert (=> b!5102645 m!6160012))

(check-sat (not b!5102639) (not setNonEmpty!29260) (not b!5102641) (not b!5102642) (not b!5102633) (not b!5102646) (not start!538100) (not b!5102644) (not b!5102632) (not b!5102645) tp_is_empty!37375 (not b!5102631) (not b!5102635) (not b!5102640) (not b!5102637) (not b!5102647) (not b!5102634) (not b!5102643) (not b!5102638))
(check-sat)
(get-model)

(declare-fun d!1650241 () Bool)

(declare-fun e!3182408 () Bool)

(assert (=> d!1650241 e!3182408))

(declare-fun res!2171775 () Bool)

(assert (=> d!1650241 (=> res!2171775 e!3182408)))

(assert (=> d!1650241 (= res!2171775 (= (_1!35051 lt!2098723) (_1!35051 lt!2098733)))))

(declare-fun lt!2098741 () Unit!149870)

(declare-fun choose!37384 ((InoxSet Context!6878) List!58951 List!58951 List!58951) Unit!149870)

(assert (=> d!1650241 (= lt!2098741 (choose!37384 z!4303 input!5654 (_1!35051 lt!2098733) (_1!35051 lt!2098723)))))

(assert (=> d!1650241 (isPrefix!5456 (_1!35051 lt!2098733) input!5654)))

(assert (=> d!1650241 (= (longestMatchNoBiggerStringMatch!23 z!4303 input!5654 (_1!35051 lt!2098733) (_1!35051 lt!2098723)) lt!2098741)))

(declare-fun b!5102650 () Bool)

(assert (=> b!5102650 (= e!3182408 (not (matchZipper!727 z!4303 (_1!35051 lt!2098723))))))

(assert (= (and d!1650241 (not res!2171775)) b!5102650))

(declare-fun m!6160014 () Bool)

(assert (=> d!1650241 m!6160014))

(declare-fun m!6160016 () Bool)

(assert (=> d!1650241 m!6160016))

(assert (=> b!5102650 m!6159950))

(assert (=> b!5102634 d!1650241))

(declare-fun bm!355486 () Bool)

(declare-fun call!355491 () Bool)

(assert (=> bm!355486 (= call!355491 (isEmpty!31800 (_1!35051 lt!2098731)))))

(declare-fun b!5102737 () Bool)

(declare-fun e!3182459 () Bool)

(declare-fun e!3182454 () Bool)

(assert (=> b!5102737 (= e!3182459 e!3182454)))

(declare-fun c!876625 () Bool)

(assert (=> b!5102737 (= c!876625 ((_ is EmptyLang!14055) r!12920))))

(declare-fun b!5102738 () Bool)

(declare-fun res!2171818 () Bool)

(declare-fun e!3182458 () Bool)

(assert (=> b!5102738 (=> res!2171818 e!3182458)))

(declare-fun e!3182457 () Bool)

(assert (=> b!5102738 (= res!2171818 e!3182457)))

(declare-fun res!2171825 () Bool)

(assert (=> b!5102738 (=> (not res!2171825) (not e!3182457))))

(declare-fun lt!2098760 () Bool)

(assert (=> b!5102738 (= res!2171825 lt!2098760)))

(declare-fun d!1650245 () Bool)

(assert (=> d!1650245 e!3182459))

(declare-fun c!876626 () Bool)

(assert (=> d!1650245 (= c!876626 ((_ is EmptyExpr!14055) r!12920))))

(declare-fun e!3182456 () Bool)

(assert (=> d!1650245 (= lt!2098760 e!3182456)))

(declare-fun c!876624 () Bool)

(assert (=> d!1650245 (= c!876624 (isEmpty!31800 (_1!35051 lt!2098731)))))

(assert (=> d!1650245 (validRegex!6182 r!12920)))

(assert (=> d!1650245 (= (matchR!6840 r!12920 (_1!35051 lt!2098731)) lt!2098760)))

(declare-fun b!5102739 () Bool)

(declare-fun res!2171824 () Bool)

(assert (=> b!5102739 (=> res!2171824 e!3182458)))

(assert (=> b!5102739 (= res!2171824 (not ((_ is ElementMatch!14055) r!12920)))))

(assert (=> b!5102739 (= e!3182454 e!3182458)))

(declare-fun b!5102740 () Bool)

(declare-fun res!2171820 () Bool)

(assert (=> b!5102740 (=> (not res!2171820) (not e!3182457))))

(declare-fun tail!9992 (List!58951) List!58951)

(assert (=> b!5102740 (= res!2171820 (isEmpty!31800 (tail!9992 (_1!35051 lt!2098731))))))

(declare-fun b!5102741 () Bool)

(declare-fun e!3182455 () Bool)

(declare-fun e!3182453 () Bool)

(assert (=> b!5102741 (= e!3182455 e!3182453)))

(declare-fun res!2171819 () Bool)

(assert (=> b!5102741 (=> res!2171819 e!3182453)))

(assert (=> b!5102741 (= res!2171819 call!355491)))

(declare-fun b!5102742 () Bool)

(declare-fun head!10837 (List!58951) C!28368)

(assert (=> b!5102742 (= e!3182453 (not (= (head!10837 (_1!35051 lt!2098731)) (c!876601 r!12920))))))

(declare-fun b!5102743 () Bool)

(assert (=> b!5102743 (= e!3182454 (not lt!2098760))))

(declare-fun b!5102744 () Bool)

(declare-fun res!2171823 () Bool)

(assert (=> b!5102744 (=> (not res!2171823) (not e!3182457))))

(assert (=> b!5102744 (= res!2171823 (not call!355491))))

(declare-fun b!5102745 () Bool)

(assert (=> b!5102745 (= e!3182459 (= lt!2098760 call!355491))))

(declare-fun b!5102746 () Bool)

(declare-fun res!2171822 () Bool)

(assert (=> b!5102746 (=> res!2171822 e!3182453)))

(assert (=> b!5102746 (= res!2171822 (not (isEmpty!31800 (tail!9992 (_1!35051 lt!2098731)))))))

(declare-fun b!5102747 () Bool)

(assert (=> b!5102747 (= e!3182457 (= (head!10837 (_1!35051 lt!2098731)) (c!876601 r!12920)))))

(declare-fun b!5102748 () Bool)

(declare-fun derivativeStep!4001 (Regex!14055 C!28368) Regex!14055)

(assert (=> b!5102748 (= e!3182456 (matchR!6840 (derivativeStep!4001 r!12920 (head!10837 (_1!35051 lt!2098731))) (tail!9992 (_1!35051 lt!2098731))))))

(declare-fun b!5102749 () Bool)

(assert (=> b!5102749 (= e!3182458 e!3182455)))

(declare-fun res!2171821 () Bool)

(assert (=> b!5102749 (=> (not res!2171821) (not e!3182455))))

(assert (=> b!5102749 (= res!2171821 (not lt!2098760))))

(declare-fun b!5102750 () Bool)

(declare-fun nullable!4721 (Regex!14055) Bool)

(assert (=> b!5102750 (= e!3182456 (nullable!4721 r!12920))))

(assert (= (and d!1650245 c!876624) b!5102750))

(assert (= (and d!1650245 (not c!876624)) b!5102748))

(assert (= (and d!1650245 c!876626) b!5102745))

(assert (= (and d!1650245 (not c!876626)) b!5102737))

(assert (= (and b!5102737 c!876625) b!5102743))

(assert (= (and b!5102737 (not c!876625)) b!5102739))

(assert (= (and b!5102739 (not res!2171824)) b!5102738))

(assert (= (and b!5102738 res!2171825) b!5102744))

(assert (= (and b!5102744 res!2171823) b!5102740))

(assert (= (and b!5102740 res!2171820) b!5102747))

(assert (= (and b!5102738 (not res!2171818)) b!5102749))

(assert (= (and b!5102749 res!2171821) b!5102741))

(assert (= (and b!5102741 (not res!2171819)) b!5102746))

(assert (= (and b!5102746 (not res!2171822)) b!5102742))

(assert (= (or b!5102745 b!5102741 b!5102744) bm!355486))

(declare-fun m!6160060 () Bool)

(assert (=> b!5102748 m!6160060))

(assert (=> b!5102748 m!6160060))

(declare-fun m!6160062 () Bool)

(assert (=> b!5102748 m!6160062))

(declare-fun m!6160064 () Bool)

(assert (=> b!5102748 m!6160064))

(assert (=> b!5102748 m!6160062))

(assert (=> b!5102748 m!6160064))

(declare-fun m!6160066 () Bool)

(assert (=> b!5102748 m!6160066))

(assert (=> bm!355486 m!6159992))

(assert (=> b!5102740 m!6160064))

(assert (=> b!5102740 m!6160064))

(declare-fun m!6160068 () Bool)

(assert (=> b!5102740 m!6160068))

(assert (=> b!5102746 m!6160064))

(assert (=> b!5102746 m!6160064))

(assert (=> b!5102746 m!6160068))

(assert (=> b!5102742 m!6160060))

(assert (=> d!1650245 m!6159992))

(assert (=> d!1650245 m!6159948))

(declare-fun m!6160070 () Bool)

(assert (=> b!5102750 m!6160070))

(assert (=> b!5102747 m!6160060))

(assert (=> b!5102644 d!1650245))

(declare-fun d!1650265 () Bool)

(assert (=> d!1650265 (= (isEmpty!31800 (_1!35051 lt!2098733)) ((_ is Nil!58827) (_1!35051 lt!2098733)))))

(assert (=> b!5102632 d!1650265))

(declare-fun d!1650267 () Bool)

(declare-fun e!3182486 () Bool)

(assert (=> d!1650267 e!3182486))

(declare-fun res!2171847 () Bool)

(assert (=> d!1650267 (=> (not res!2171847) (not e!3182486))))

(declare-fun lt!2098764 () List!58951)

(declare-fun content!10469 (List!58951) (InoxSet C!28368))

(assert (=> d!1650267 (= res!2171847 (= (content!10469 lt!2098764) ((_ map or) (content!10469 (_1!35051 lt!2098723)) (content!10469 (_2!35051 lt!2098723)))))))

(declare-fun e!3182487 () List!58951)

(assert (=> d!1650267 (= lt!2098764 e!3182487)))

(declare-fun c!876635 () Bool)

(assert (=> d!1650267 (= c!876635 ((_ is Nil!58827) (_1!35051 lt!2098723)))))

(assert (=> d!1650267 (= (++!12904 (_1!35051 lt!2098723) (_2!35051 lt!2098723)) lt!2098764)))

(declare-fun b!5102787 () Bool)

(assert (=> b!5102787 (= e!3182487 (_2!35051 lt!2098723))))

(declare-fun b!5102788 () Bool)

(assert (=> b!5102788 (= e!3182487 (Cons!58827 (h!65275 (_1!35051 lt!2098723)) (++!12904 (t!371952 (_1!35051 lt!2098723)) (_2!35051 lt!2098723))))))

(declare-fun b!5102789 () Bool)

(declare-fun res!2171846 () Bool)

(assert (=> b!5102789 (=> (not res!2171846) (not e!3182486))))

(assert (=> b!5102789 (= res!2171846 (= (size!39357 lt!2098764) (+ (size!39357 (_1!35051 lt!2098723)) (size!39357 (_2!35051 lt!2098723)))))))

(declare-fun b!5102790 () Bool)

(assert (=> b!5102790 (= e!3182486 (or (not (= (_2!35051 lt!2098723) Nil!58827)) (= lt!2098764 (_1!35051 lt!2098723))))))

(assert (= (and d!1650267 c!876635) b!5102787))

(assert (= (and d!1650267 (not c!876635)) b!5102788))

(assert (= (and d!1650267 res!2171847) b!5102789))

(assert (= (and b!5102789 res!2171846) b!5102790))

(declare-fun m!6160078 () Bool)

(assert (=> d!1650267 m!6160078))

(declare-fun m!6160080 () Bool)

(assert (=> d!1650267 m!6160080))

(declare-fun m!6160082 () Bool)

(assert (=> d!1650267 m!6160082))

(declare-fun m!6160084 () Bool)

(assert (=> b!5102788 m!6160084))

(declare-fun m!6160086 () Bool)

(assert (=> b!5102789 m!6160086))

(assert (=> b!5102789 m!6159960))

(declare-fun m!6160088 () Bool)

(assert (=> b!5102789 m!6160088))

(assert (=> b!5102641 d!1650267))

(declare-fun d!1650271 () Bool)

(declare-fun e!3182488 () Bool)

(assert (=> d!1650271 e!3182488))

(declare-fun res!2171849 () Bool)

(assert (=> d!1650271 (=> (not res!2171849) (not e!3182488))))

(declare-fun lt!2098765 () List!58951)

(assert (=> d!1650271 (= res!2171849 (= (content!10469 lt!2098765) ((_ map or) (content!10469 (_1!35051 lt!2098733)) (content!10469 (_2!35051 lt!2098733)))))))

(declare-fun e!3182489 () List!58951)

(assert (=> d!1650271 (= lt!2098765 e!3182489)))

(declare-fun c!876636 () Bool)

(assert (=> d!1650271 (= c!876636 ((_ is Nil!58827) (_1!35051 lt!2098733)))))

(assert (=> d!1650271 (= (++!12904 (_1!35051 lt!2098733) (_2!35051 lt!2098733)) lt!2098765)))

(declare-fun b!5102791 () Bool)

(assert (=> b!5102791 (= e!3182489 (_2!35051 lt!2098733))))

(declare-fun b!5102792 () Bool)

(assert (=> b!5102792 (= e!3182489 (Cons!58827 (h!65275 (_1!35051 lt!2098733)) (++!12904 (t!371952 (_1!35051 lt!2098733)) (_2!35051 lt!2098733))))))

(declare-fun b!5102793 () Bool)

(declare-fun res!2171848 () Bool)

(assert (=> b!5102793 (=> (not res!2171848) (not e!3182488))))

(assert (=> b!5102793 (= res!2171848 (= (size!39357 lt!2098765) (+ (size!39357 (_1!35051 lt!2098733)) (size!39357 (_2!35051 lt!2098733)))))))

(declare-fun b!5102794 () Bool)

(assert (=> b!5102794 (= e!3182488 (or (not (= (_2!35051 lt!2098733) Nil!58827)) (= lt!2098765 (_1!35051 lt!2098733))))))

(assert (= (and d!1650271 c!876636) b!5102791))

(assert (= (and d!1650271 (not c!876636)) b!5102792))

(assert (= (and d!1650271 res!2171849) b!5102793))

(assert (= (and b!5102793 res!2171848) b!5102794))

(declare-fun m!6160090 () Bool)

(assert (=> d!1650271 m!6160090))

(declare-fun m!6160092 () Bool)

(assert (=> d!1650271 m!6160092))

(declare-fun m!6160094 () Bool)

(assert (=> d!1650271 m!6160094))

(declare-fun m!6160096 () Bool)

(assert (=> b!5102792 m!6160096))

(declare-fun m!6160098 () Bool)

(assert (=> b!5102793 m!6160098))

(assert (=> b!5102793 m!6159954))

(declare-fun m!6160100 () Bool)

(assert (=> b!5102793 m!6160100))

(assert (=> b!5102640 d!1650271))

(declare-fun d!1650273 () Bool)

(declare-fun lt!2098783 () tuple2!63496)

(assert (=> d!1650273 (= (++!12904 (_1!35051 lt!2098783) (_2!35051 lt!2098783)) input!5654)))

(declare-fun sizeTr!431 (List!58951 Int) Int)

(assert (=> d!1650273 (= lt!2098783 (findLongestMatchInner!2068 r!12920 Nil!58827 0 input!5654 input!5654 (sizeTr!431 input!5654 0)))))

(declare-fun lt!2098782 () Unit!149870)

(declare-fun lt!2098786 () Unit!149870)

(assert (=> d!1650273 (= lt!2098782 lt!2098786)))

(declare-fun lt!2098788 () List!58951)

(declare-fun lt!2098785 () Int)

(assert (=> d!1650273 (= (sizeTr!431 lt!2098788 lt!2098785) (+ (size!39357 lt!2098788) lt!2098785))))

(declare-fun lemmaSizeTrEqualsSize!430 (List!58951 Int) Unit!149870)

(assert (=> d!1650273 (= lt!2098786 (lemmaSizeTrEqualsSize!430 lt!2098788 lt!2098785))))

(assert (=> d!1650273 (= lt!2098785 0)))

(assert (=> d!1650273 (= lt!2098788 Nil!58827)))

(declare-fun lt!2098784 () Unit!149870)

(declare-fun lt!2098787 () Unit!149870)

(assert (=> d!1650273 (= lt!2098784 lt!2098787)))

(declare-fun lt!2098789 () Int)

(assert (=> d!1650273 (= (sizeTr!431 input!5654 lt!2098789) (+ (size!39357 input!5654) lt!2098789))))

(assert (=> d!1650273 (= lt!2098787 (lemmaSizeTrEqualsSize!430 input!5654 lt!2098789))))

(assert (=> d!1650273 (= lt!2098789 0)))

(assert (=> d!1650273 (validRegex!6182 r!12920)))

(assert (=> d!1650273 (= (findLongestMatch!1885 r!12920 input!5654) lt!2098783)))

(declare-fun bs!1191563 () Bool)

(assert (= bs!1191563 d!1650273))

(declare-fun m!6160102 () Bool)

(assert (=> bs!1191563 m!6160102))

(declare-fun m!6160104 () Bool)

(assert (=> bs!1191563 m!6160104))

(assert (=> bs!1191563 m!6160102))

(assert (=> bs!1191563 m!6159972))

(assert (=> bs!1191563 m!6159948))

(declare-fun m!6160106 () Bool)

(assert (=> bs!1191563 m!6160106))

(declare-fun m!6160108 () Bool)

(assert (=> bs!1191563 m!6160108))

(declare-fun m!6160110 () Bool)

(assert (=> bs!1191563 m!6160110))

(declare-fun m!6160112 () Bool)

(assert (=> bs!1191563 m!6160112))

(declare-fun m!6160114 () Bool)

(assert (=> bs!1191563 m!6160114))

(declare-fun m!6160116 () Bool)

(assert (=> bs!1191563 m!6160116))

(assert (=> b!5102640 d!1650273))

(declare-fun d!1650275 () Bool)

(declare-fun lt!2098798 () tuple2!63496)

(assert (=> d!1650275 (= (++!12904 (_1!35051 lt!2098798) (_2!35051 lt!2098798)) input!5654)))

(assert (=> d!1650275 (= lt!2098798 (findLongestMatchInnerZipper!129 z!4303 Nil!58827 0 input!5654 input!5654 (sizeTr!431 input!5654 0)))))

(declare-fun lt!2098799 () Unit!149870)

(declare-fun lt!2098801 () Unit!149870)

(assert (=> d!1650275 (= lt!2098799 lt!2098801)))

(declare-fun lt!2098800 () Int)

(assert (=> d!1650275 (= (sizeTr!431 input!5654 lt!2098800) (+ (size!39357 input!5654) lt!2098800))))

(assert (=> d!1650275 (= lt!2098801 (lemmaSizeTrEqualsSize!430 input!5654 lt!2098800))))

(assert (=> d!1650275 (= lt!2098800 0)))

(assert (=> d!1650275 (= (findLongestMatchZipper!79 z!4303 input!5654) lt!2098798)))

(declare-fun bs!1191564 () Bool)

(assert (= bs!1191564 d!1650275))

(declare-fun m!6160118 () Bool)

(assert (=> bs!1191564 m!6160118))

(assert (=> bs!1191564 m!6160102))

(declare-fun m!6160120 () Bool)

(assert (=> bs!1191564 m!6160120))

(declare-fun m!6160122 () Bool)

(assert (=> bs!1191564 m!6160122))

(assert (=> bs!1191564 m!6160102))

(assert (=> bs!1191564 m!6159972))

(declare-fun m!6160124 () Bool)

(assert (=> bs!1191564 m!6160124))

(assert (=> b!5102640 d!1650275))

(declare-fun bm!355496 () Bool)

(declare-fun call!355501 () Bool)

(assert (=> bm!355496 (= call!355501 (isEmpty!31800 (_1!35051 lt!2098733)))))

(declare-fun b!5102795 () Bool)

(declare-fun e!3182496 () Bool)

(declare-fun e!3182491 () Bool)

(assert (=> b!5102795 (= e!3182496 e!3182491)))

(declare-fun c!876638 () Bool)

(assert (=> b!5102795 (= c!876638 ((_ is EmptyLang!14055) r!12920))))

(declare-fun b!5102796 () Bool)

(declare-fun res!2171850 () Bool)

(declare-fun e!3182495 () Bool)

(assert (=> b!5102796 (=> res!2171850 e!3182495)))

(declare-fun e!3182494 () Bool)

(assert (=> b!5102796 (= res!2171850 e!3182494)))

(declare-fun res!2171857 () Bool)

(assert (=> b!5102796 (=> (not res!2171857) (not e!3182494))))

(declare-fun lt!2098802 () Bool)

(assert (=> b!5102796 (= res!2171857 lt!2098802)))

(declare-fun d!1650277 () Bool)

(assert (=> d!1650277 e!3182496))

(declare-fun c!876639 () Bool)

(assert (=> d!1650277 (= c!876639 ((_ is EmptyExpr!14055) r!12920))))

(declare-fun e!3182493 () Bool)

(assert (=> d!1650277 (= lt!2098802 e!3182493)))

(declare-fun c!876637 () Bool)

(assert (=> d!1650277 (= c!876637 (isEmpty!31800 (_1!35051 lt!2098733)))))

(assert (=> d!1650277 (validRegex!6182 r!12920)))

(assert (=> d!1650277 (= (matchR!6840 r!12920 (_1!35051 lt!2098733)) lt!2098802)))

(declare-fun b!5102797 () Bool)

(declare-fun res!2171856 () Bool)

(assert (=> b!5102797 (=> res!2171856 e!3182495)))

(assert (=> b!5102797 (= res!2171856 (not ((_ is ElementMatch!14055) r!12920)))))

(assert (=> b!5102797 (= e!3182491 e!3182495)))

(declare-fun b!5102798 () Bool)

(declare-fun res!2171852 () Bool)

(assert (=> b!5102798 (=> (not res!2171852) (not e!3182494))))

(assert (=> b!5102798 (= res!2171852 (isEmpty!31800 (tail!9992 (_1!35051 lt!2098733))))))

(declare-fun b!5102799 () Bool)

(declare-fun e!3182492 () Bool)

(declare-fun e!3182490 () Bool)

(assert (=> b!5102799 (= e!3182492 e!3182490)))

(declare-fun res!2171851 () Bool)

(assert (=> b!5102799 (=> res!2171851 e!3182490)))

(assert (=> b!5102799 (= res!2171851 call!355501)))

(declare-fun b!5102800 () Bool)

(assert (=> b!5102800 (= e!3182490 (not (= (head!10837 (_1!35051 lt!2098733)) (c!876601 r!12920))))))

(declare-fun b!5102801 () Bool)

(assert (=> b!5102801 (= e!3182491 (not lt!2098802))))

(declare-fun b!5102802 () Bool)

(declare-fun res!2171855 () Bool)

(assert (=> b!5102802 (=> (not res!2171855) (not e!3182494))))

(assert (=> b!5102802 (= res!2171855 (not call!355501))))

(declare-fun b!5102803 () Bool)

(assert (=> b!5102803 (= e!3182496 (= lt!2098802 call!355501))))

(declare-fun b!5102804 () Bool)

(declare-fun res!2171854 () Bool)

(assert (=> b!5102804 (=> res!2171854 e!3182490)))

(assert (=> b!5102804 (= res!2171854 (not (isEmpty!31800 (tail!9992 (_1!35051 lt!2098733)))))))

(declare-fun b!5102805 () Bool)

(assert (=> b!5102805 (= e!3182494 (= (head!10837 (_1!35051 lt!2098733)) (c!876601 r!12920)))))

(declare-fun b!5102806 () Bool)

(assert (=> b!5102806 (= e!3182493 (matchR!6840 (derivativeStep!4001 r!12920 (head!10837 (_1!35051 lt!2098733))) (tail!9992 (_1!35051 lt!2098733))))))

(declare-fun b!5102807 () Bool)

(assert (=> b!5102807 (= e!3182495 e!3182492)))

(declare-fun res!2171853 () Bool)

(assert (=> b!5102807 (=> (not res!2171853) (not e!3182492))))

(assert (=> b!5102807 (= res!2171853 (not lt!2098802))))

(declare-fun b!5102808 () Bool)

(assert (=> b!5102808 (= e!3182493 (nullable!4721 r!12920))))

(assert (= (and d!1650277 c!876637) b!5102808))

(assert (= (and d!1650277 (not c!876637)) b!5102806))

(assert (= (and d!1650277 c!876639) b!5102803))

(assert (= (and d!1650277 (not c!876639)) b!5102795))

(assert (= (and b!5102795 c!876638) b!5102801))

(assert (= (and b!5102795 (not c!876638)) b!5102797))

(assert (= (and b!5102797 (not res!2171856)) b!5102796))

(assert (= (and b!5102796 res!2171857) b!5102802))

(assert (= (and b!5102802 res!2171855) b!5102798))

(assert (= (and b!5102798 res!2171852) b!5102805))

(assert (= (and b!5102796 (not res!2171850)) b!5102807))

(assert (= (and b!5102807 res!2171853) b!5102799))

(assert (= (and b!5102799 (not res!2171851)) b!5102804))

(assert (= (and b!5102804 (not res!2171854)) b!5102800))

(assert (= (or b!5102803 b!5102799 b!5102802) bm!355496))

(declare-fun m!6160126 () Bool)

(assert (=> b!5102806 m!6160126))

(assert (=> b!5102806 m!6160126))

(declare-fun m!6160128 () Bool)

(assert (=> b!5102806 m!6160128))

(declare-fun m!6160130 () Bool)

(assert (=> b!5102806 m!6160130))

(assert (=> b!5102806 m!6160128))

(assert (=> b!5102806 m!6160130))

(declare-fun m!6160132 () Bool)

(assert (=> b!5102806 m!6160132))

(assert (=> bm!355496 m!6159966))

(assert (=> b!5102798 m!6160130))

(assert (=> b!5102798 m!6160130))

(declare-fun m!6160134 () Bool)

(assert (=> b!5102798 m!6160134))

(assert (=> b!5102804 m!6160130))

(assert (=> b!5102804 m!6160130))

(assert (=> b!5102804 m!6160134))

(assert (=> b!5102800 m!6160126))

(assert (=> d!1650277 m!6159966))

(assert (=> d!1650277 m!6159948))

(assert (=> b!5102808 m!6160070))

(assert (=> b!5102805 m!6160126))

(assert (=> b!5102639 d!1650277))

(declare-fun d!1650279 () Bool)

(assert (=> d!1650279 (= (matchR!6840 r!12920 (_1!35051 lt!2098723)) (matchZipper!727 z!4303 (_1!35051 lt!2098723)))))

(declare-fun lt!2098805 () Unit!149870)

(declare-fun choose!37385 ((InoxSet Context!6878) List!58953 Regex!14055 List!58951) Unit!149870)

(assert (=> d!1650279 (= lt!2098805 (choose!37385 z!4303 lt!2098728 r!12920 (_1!35051 lt!2098723)))))

(assert (=> d!1650279 (validRegex!6182 r!12920)))

(assert (=> d!1650279 (= (theoremZipperRegexEquiv!219 z!4303 lt!2098728 r!12920 (_1!35051 lt!2098723)) lt!2098805)))

(declare-fun bs!1191565 () Bool)

(assert (= bs!1191565 d!1650279))

(assert (=> bs!1191565 m!6160002))

(assert (=> bs!1191565 m!6159950))

(declare-fun m!6160136 () Bool)

(assert (=> bs!1191565 m!6160136))

(assert (=> bs!1191565 m!6159948))

(assert (=> b!5102639 d!1650279))

(declare-fun d!1650281 () Bool)

(declare-fun c!876642 () Bool)

(assert (=> d!1650281 (= c!876642 (isEmpty!31800 (_1!35051 lt!2098723)))))

(declare-fun e!3182499 () Bool)

(assert (=> d!1650281 (= (matchZipper!727 z!4303 (_1!35051 lt!2098723)) e!3182499)))

(declare-fun b!5102813 () Bool)

(declare-fun nullableZipper!962 ((InoxSet Context!6878)) Bool)

(assert (=> b!5102813 (= e!3182499 (nullableZipper!962 z!4303))))

(declare-fun b!5102814 () Bool)

(declare-fun derivationStepZipper!750 ((InoxSet Context!6878) C!28368) (InoxSet Context!6878))

(assert (=> b!5102814 (= e!3182499 (matchZipper!727 (derivationStepZipper!750 z!4303 (head!10837 (_1!35051 lt!2098723))) (tail!9992 (_1!35051 lt!2098723))))))

(assert (= (and d!1650281 c!876642) b!5102813))

(assert (= (and d!1650281 (not c!876642)) b!5102814))

(assert (=> d!1650281 m!6160006))

(declare-fun m!6160138 () Bool)

(assert (=> b!5102813 m!6160138))

(declare-fun m!6160140 () Bool)

(assert (=> b!5102814 m!6160140))

(assert (=> b!5102814 m!6160140))

(declare-fun m!6160142 () Bool)

(assert (=> b!5102814 m!6160142))

(declare-fun m!6160144 () Bool)

(assert (=> b!5102814 m!6160144))

(assert (=> b!5102814 m!6160142))

(assert (=> b!5102814 m!6160144))

(declare-fun m!6160146 () Bool)

(assert (=> b!5102814 m!6160146))

(assert (=> b!5102639 d!1650281))

(declare-fun d!1650283 () Bool)

(declare-fun lt!2098808 () Int)

(assert (=> d!1650283 (>= lt!2098808 0)))

(declare-fun e!3182502 () Int)

(assert (=> d!1650283 (= lt!2098808 e!3182502)))

(declare-fun c!876645 () Bool)

(assert (=> d!1650283 (= c!876645 ((_ is Nil!58827) (_1!35051 lt!2098733)))))

(assert (=> d!1650283 (= (size!39357 (_1!35051 lt!2098733)) lt!2098808)))

(declare-fun b!5102819 () Bool)

(assert (=> b!5102819 (= e!3182502 0)))

(declare-fun b!5102820 () Bool)

(assert (=> b!5102820 (= e!3182502 (+ 1 (size!39357 (t!371952 (_1!35051 lt!2098733)))))))

(assert (= (and d!1650283 c!876645) b!5102819))

(assert (= (and d!1650283 (not c!876645)) b!5102820))

(declare-fun m!6160148 () Bool)

(assert (=> b!5102820 m!6160148))

(assert (=> b!5102639 d!1650283))

(declare-fun d!1650285 () Bool)

(assert (=> d!1650285 (= (matchR!6840 r!12920 (_1!35051 lt!2098733)) (matchZipper!727 z!4303 (_1!35051 lt!2098733)))))

(declare-fun lt!2098809 () Unit!149870)

(assert (=> d!1650285 (= lt!2098809 (choose!37385 z!4303 lt!2098728 r!12920 (_1!35051 lt!2098733)))))

(assert (=> d!1650285 (validRegex!6182 r!12920)))

(assert (=> d!1650285 (= (theoremZipperRegexEquiv!219 z!4303 lt!2098728 r!12920 (_1!35051 lt!2098733)) lt!2098809)))

(declare-fun bs!1191566 () Bool)

(assert (= bs!1191566 d!1650285))

(assert (=> bs!1191566 m!6159952))

(assert (=> bs!1191566 m!6159986))

(declare-fun m!6160150 () Bool)

(assert (=> bs!1191566 m!6160150))

(assert (=> bs!1191566 m!6159948))

(assert (=> b!5102639 d!1650285))

(declare-fun d!1650287 () Bool)

(declare-fun lt!2098810 () Int)

(assert (=> d!1650287 (>= lt!2098810 0)))

(declare-fun e!3182503 () Int)

(assert (=> d!1650287 (= lt!2098810 e!3182503)))

(declare-fun c!876646 () Bool)

(assert (=> d!1650287 (= c!876646 ((_ is Nil!58827) (_1!35051 lt!2098723)))))

(assert (=> d!1650287 (= (size!39357 (_1!35051 lt!2098723)) lt!2098810)))

(declare-fun b!5102821 () Bool)

(assert (=> b!5102821 (= e!3182503 0)))

(declare-fun b!5102822 () Bool)

(assert (=> b!5102822 (= e!3182503 (+ 1 (size!39357 (t!371952 (_1!35051 lt!2098723)))))))

(assert (= (and d!1650287 c!876646) b!5102821))

(assert (= (and d!1650287 (not c!876646)) b!5102822))

(declare-fun m!6160152 () Bool)

(assert (=> b!5102822 m!6160152))

(assert (=> b!5102639 d!1650287))

(declare-fun bm!355497 () Bool)

(declare-fun call!355502 () Bool)

(assert (=> bm!355497 (= call!355502 (isEmpty!31800 (_1!35051 lt!2098723)))))

(declare-fun b!5102823 () Bool)

(declare-fun e!3182510 () Bool)

(declare-fun e!3182505 () Bool)

(assert (=> b!5102823 (= e!3182510 e!3182505)))

(declare-fun c!876648 () Bool)

(assert (=> b!5102823 (= c!876648 ((_ is EmptyLang!14055) r!12920))))

(declare-fun b!5102824 () Bool)

(declare-fun res!2171858 () Bool)

(declare-fun e!3182509 () Bool)

(assert (=> b!5102824 (=> res!2171858 e!3182509)))

(declare-fun e!3182508 () Bool)

(assert (=> b!5102824 (= res!2171858 e!3182508)))

(declare-fun res!2171865 () Bool)

(assert (=> b!5102824 (=> (not res!2171865) (not e!3182508))))

(declare-fun lt!2098811 () Bool)

(assert (=> b!5102824 (= res!2171865 lt!2098811)))

(declare-fun d!1650289 () Bool)

(assert (=> d!1650289 e!3182510))

(declare-fun c!876649 () Bool)

(assert (=> d!1650289 (= c!876649 ((_ is EmptyExpr!14055) r!12920))))

(declare-fun e!3182507 () Bool)

(assert (=> d!1650289 (= lt!2098811 e!3182507)))

(declare-fun c!876647 () Bool)

(assert (=> d!1650289 (= c!876647 (isEmpty!31800 (_1!35051 lt!2098723)))))

(assert (=> d!1650289 (validRegex!6182 r!12920)))

(assert (=> d!1650289 (= (matchR!6840 r!12920 (_1!35051 lt!2098723)) lt!2098811)))

(declare-fun b!5102825 () Bool)

(declare-fun res!2171864 () Bool)

(assert (=> b!5102825 (=> res!2171864 e!3182509)))

(assert (=> b!5102825 (= res!2171864 (not ((_ is ElementMatch!14055) r!12920)))))

(assert (=> b!5102825 (= e!3182505 e!3182509)))

(declare-fun b!5102826 () Bool)

(declare-fun res!2171860 () Bool)

(assert (=> b!5102826 (=> (not res!2171860) (not e!3182508))))

(assert (=> b!5102826 (= res!2171860 (isEmpty!31800 (tail!9992 (_1!35051 lt!2098723))))))

(declare-fun b!5102827 () Bool)

(declare-fun e!3182506 () Bool)

(declare-fun e!3182504 () Bool)

(assert (=> b!5102827 (= e!3182506 e!3182504)))

(declare-fun res!2171859 () Bool)

(assert (=> b!5102827 (=> res!2171859 e!3182504)))

(assert (=> b!5102827 (= res!2171859 call!355502)))

(declare-fun b!5102828 () Bool)

(assert (=> b!5102828 (= e!3182504 (not (= (head!10837 (_1!35051 lt!2098723)) (c!876601 r!12920))))))

(declare-fun b!5102829 () Bool)

(assert (=> b!5102829 (= e!3182505 (not lt!2098811))))

(declare-fun b!5102830 () Bool)

(declare-fun res!2171863 () Bool)

(assert (=> b!5102830 (=> (not res!2171863) (not e!3182508))))

(assert (=> b!5102830 (= res!2171863 (not call!355502))))

(declare-fun b!5102831 () Bool)

(assert (=> b!5102831 (= e!3182510 (= lt!2098811 call!355502))))

(declare-fun b!5102832 () Bool)

(declare-fun res!2171862 () Bool)

(assert (=> b!5102832 (=> res!2171862 e!3182504)))

(assert (=> b!5102832 (= res!2171862 (not (isEmpty!31800 (tail!9992 (_1!35051 lt!2098723)))))))

(declare-fun b!5102833 () Bool)

(assert (=> b!5102833 (= e!3182508 (= (head!10837 (_1!35051 lt!2098723)) (c!876601 r!12920)))))

(declare-fun b!5102834 () Bool)

(assert (=> b!5102834 (= e!3182507 (matchR!6840 (derivativeStep!4001 r!12920 (head!10837 (_1!35051 lt!2098723))) (tail!9992 (_1!35051 lt!2098723))))))

(declare-fun b!5102835 () Bool)

(assert (=> b!5102835 (= e!3182509 e!3182506)))

(declare-fun res!2171861 () Bool)

(assert (=> b!5102835 (=> (not res!2171861) (not e!3182506))))

(assert (=> b!5102835 (= res!2171861 (not lt!2098811))))

(declare-fun b!5102836 () Bool)

(assert (=> b!5102836 (= e!3182507 (nullable!4721 r!12920))))

(assert (= (and d!1650289 c!876647) b!5102836))

(assert (= (and d!1650289 (not c!876647)) b!5102834))

(assert (= (and d!1650289 c!876649) b!5102831))

(assert (= (and d!1650289 (not c!876649)) b!5102823))

(assert (= (and b!5102823 c!876648) b!5102829))

(assert (= (and b!5102823 (not c!876648)) b!5102825))

(assert (= (and b!5102825 (not res!2171864)) b!5102824))

(assert (= (and b!5102824 res!2171865) b!5102830))

(assert (= (and b!5102830 res!2171863) b!5102826))

(assert (= (and b!5102826 res!2171860) b!5102833))

(assert (= (and b!5102824 (not res!2171858)) b!5102835))

(assert (= (and b!5102835 res!2171861) b!5102827))

(assert (= (and b!5102827 (not res!2171859)) b!5102832))

(assert (= (and b!5102832 (not res!2171862)) b!5102828))

(assert (= (or b!5102831 b!5102827 b!5102830) bm!355497))

(assert (=> b!5102834 m!6160140))

(assert (=> b!5102834 m!6160140))

(declare-fun m!6160154 () Bool)

(assert (=> b!5102834 m!6160154))

(assert (=> b!5102834 m!6160144))

(assert (=> b!5102834 m!6160154))

(assert (=> b!5102834 m!6160144))

(declare-fun m!6160156 () Bool)

(assert (=> b!5102834 m!6160156))

(assert (=> bm!355497 m!6160006))

(assert (=> b!5102826 m!6160144))

(assert (=> b!5102826 m!6160144))

(declare-fun m!6160158 () Bool)

(assert (=> b!5102826 m!6160158))

(assert (=> b!5102832 m!6160144))

(assert (=> b!5102832 m!6160144))

(assert (=> b!5102832 m!6160158))

(assert (=> b!5102828 m!6160140))

(assert (=> d!1650289 m!6160006))

(assert (=> d!1650289 m!6159948))

(assert (=> b!5102836 m!6160070))

(assert (=> b!5102833 m!6160140))

(assert (=> b!5102638 d!1650289))

(declare-fun d!1650291 () Bool)

(declare-fun lt!2098812 () Int)

(assert (=> d!1650291 (>= lt!2098812 0)))

(declare-fun e!3182511 () Int)

(assert (=> d!1650291 (= lt!2098812 e!3182511)))

(declare-fun c!876650 () Bool)

(assert (=> d!1650291 (= c!876650 ((_ is Nil!58827) input!5654))))

(assert (=> d!1650291 (= (size!39357 input!5654) lt!2098812)))

(declare-fun b!5102837 () Bool)

(assert (=> b!5102837 (= e!3182511 0)))

(declare-fun b!5102838 () Bool)

(assert (=> b!5102838 (= e!3182511 (+ 1 (size!39357 (t!371952 input!5654))))))

(assert (= (and d!1650291 c!876650) b!5102837))

(assert (= (and d!1650291 (not c!876650)) b!5102838))

(declare-fun m!6160160 () Bool)

(assert (=> b!5102838 m!6160160))

(assert (=> b!5102637 d!1650291))

(declare-fun d!1650293 () Bool)

(assert (=> d!1650293 (= (isEmpty!31800 (_1!35051 lt!2098721)) ((_ is Nil!58827) (_1!35051 lt!2098721)))))

(assert (=> b!5102637 d!1650293))

(declare-fun b!5102867 () Bool)

(declare-fun e!3182534 () Bool)

(declare-fun lt!2098884 () tuple2!63496)

(assert (=> b!5102867 (= e!3182534 (>= (size!39357 (_1!35051 lt!2098884)) (size!39357 Nil!58827)))))

(declare-fun b!5102868 () Bool)

(declare-fun e!3182532 () tuple2!63496)

(assert (=> b!5102868 (= e!3182532 (tuple2!63497 Nil!58827 input!5654))))

(declare-fun b!5102869 () Bool)

(declare-fun lt!2098885 () tuple2!63496)

(assert (=> b!5102869 (= e!3182532 lt!2098885)))

(declare-fun bm!355514 () Bool)

(declare-fun call!355522 () Unit!149870)

(declare-fun lemmaIsPrefixRefl!3683 (List!58951 List!58951) Unit!149870)

(assert (=> bm!355514 (= call!355522 (lemmaIsPrefixRefl!3683 input!5654 input!5654))))

(declare-fun bm!355515 () Bool)

(declare-fun call!355519 () List!58951)

(assert (=> bm!355515 (= call!355519 (tail!9992 input!5654))))

(declare-fun b!5102870 () Bool)

(declare-fun e!3182535 () tuple2!63496)

(declare-fun call!355521 () tuple2!63496)

(assert (=> b!5102870 (= e!3182535 call!355521)))

(declare-fun b!5102871 () Bool)

(declare-fun e!3182531 () tuple2!63496)

(assert (=> b!5102871 (= e!3182531 (tuple2!63497 Nil!58827 input!5654))))

(declare-fun b!5102872 () Bool)

(assert (=> b!5102872 (= e!3182535 e!3182532)))

(assert (=> b!5102872 (= lt!2098885 call!355521)))

(declare-fun c!876668 () Bool)

(assert (=> b!5102872 (= c!876668 (isEmpty!31800 (_1!35051 lt!2098885)))))

(declare-fun b!5102873 () Bool)

(declare-fun e!3182529 () tuple2!63496)

(declare-fun e!3182528 () tuple2!63496)

(assert (=> b!5102873 (= e!3182529 e!3182528)))

(declare-fun c!876664 () Bool)

(assert (=> b!5102873 (= c!876664 (= lt!2098722 lt!2098737))))

(declare-fun b!5102874 () Bool)

(assert (=> b!5102874 (= e!3182531 (tuple2!63497 Nil!58827 Nil!58827))))

(declare-fun bm!355516 () Bool)

(declare-fun call!355525 () Regex!14055)

(declare-fun call!355523 () C!28368)

(assert (=> bm!355516 (= call!355525 (derivativeStep!4001 r!12920 call!355523))))

(declare-fun b!5102875 () Bool)

(declare-fun c!876663 () Bool)

(declare-fun call!355524 () Bool)

(assert (=> b!5102875 (= c!876663 call!355524)))

(declare-fun lt!2098872 () Unit!149870)

(declare-fun lt!2098887 () Unit!149870)

(assert (=> b!5102875 (= lt!2098872 lt!2098887)))

(assert (=> b!5102875 (= input!5654 Nil!58827)))

(declare-fun call!355520 () Unit!149870)

(assert (=> b!5102875 (= lt!2098887 call!355520)))

(declare-fun lt!2098888 () Unit!149870)

(declare-fun lt!2098869 () Unit!149870)

(assert (=> b!5102875 (= lt!2098888 lt!2098869)))

(declare-fun call!355526 () Bool)

(assert (=> b!5102875 call!355526))

(assert (=> b!5102875 (= lt!2098869 call!355522)))

(assert (=> b!5102875 (= e!3182528 e!3182531)))

(declare-fun bm!355517 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1305 (List!58951 List!58951 List!58951) Unit!149870)

(assert (=> bm!355517 (= call!355520 (lemmaIsPrefixSameLengthThenSameList!1305 input!5654 Nil!58827 input!5654))))

(declare-fun b!5102876 () Bool)

(declare-fun c!876667 () Bool)

(assert (=> b!5102876 (= c!876667 call!355524)))

(declare-fun lt!2098873 () Unit!149870)

(declare-fun lt!2098878 () Unit!149870)

(assert (=> b!5102876 (= lt!2098873 lt!2098878)))

(declare-fun lt!2098879 () C!28368)

(declare-fun lt!2098886 () List!58951)

(assert (=> b!5102876 (= (++!12904 (++!12904 Nil!58827 (Cons!58827 lt!2098879 Nil!58827)) lt!2098886) input!5654)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1522 (List!58951 C!28368 List!58951 List!58951) Unit!149870)

(assert (=> b!5102876 (= lt!2098878 (lemmaMoveElementToOtherListKeepsConcatEq!1522 Nil!58827 lt!2098879 lt!2098886 input!5654))))

(assert (=> b!5102876 (= lt!2098886 (tail!9992 input!5654))))

(assert (=> b!5102876 (= lt!2098879 (head!10837 input!5654))))

(declare-fun lt!2098870 () Unit!149870)

(declare-fun lt!2098877 () Unit!149870)

(assert (=> b!5102876 (= lt!2098870 lt!2098877)))

(declare-fun getSuffix!3166 (List!58951 List!58951) List!58951)

(assert (=> b!5102876 (isPrefix!5456 (++!12904 Nil!58827 (Cons!58827 (head!10837 (getSuffix!3166 input!5654 Nil!58827)) Nil!58827)) input!5654)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!911 (List!58951 List!58951) Unit!149870)

(assert (=> b!5102876 (= lt!2098877 (lemmaAddHeadSuffixToPrefixStillPrefix!911 Nil!58827 input!5654))))

(declare-fun lt!2098883 () Unit!149870)

(declare-fun lt!2098882 () Unit!149870)

(assert (=> b!5102876 (= lt!2098883 lt!2098882)))

(assert (=> b!5102876 (= lt!2098882 (lemmaAddHeadSuffixToPrefixStillPrefix!911 Nil!58827 input!5654))))

(declare-fun lt!2098880 () List!58951)

(assert (=> b!5102876 (= lt!2098880 (++!12904 Nil!58827 (Cons!58827 (head!10837 input!5654) Nil!58827)))))

(declare-fun lt!2098893 () Unit!149870)

(declare-fun e!3182530 () Unit!149870)

(assert (=> b!5102876 (= lt!2098893 e!3182530)))

(declare-fun c!876666 () Bool)

(assert (=> b!5102876 (= c!876666 (= (size!39357 Nil!58827) (size!39357 input!5654)))))

(declare-fun lt!2098891 () Unit!149870)

(declare-fun lt!2098895 () Unit!149870)

(assert (=> b!5102876 (= lt!2098891 lt!2098895)))

(assert (=> b!5102876 (<= (size!39357 Nil!58827) (size!39357 input!5654))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!837 (List!58951 List!58951) Unit!149870)

(assert (=> b!5102876 (= lt!2098895 (lemmaIsPrefixThenSmallerEqSize!837 Nil!58827 input!5654))))

(assert (=> b!5102876 (= e!3182528 e!3182535)))

(declare-fun bm!355518 () Bool)

(assert (=> bm!355518 (= call!355524 (nullable!4721 r!12920))))

(declare-fun bm!355519 () Bool)

(assert (=> bm!355519 (= call!355521 (findLongestMatchInner!2068 call!355525 lt!2098880 (+ lt!2098722 1) call!355519 input!5654 lt!2098737))))

(declare-fun b!5102877 () Bool)

(declare-fun Unit!149878 () Unit!149870)

(assert (=> b!5102877 (= e!3182530 Unit!149878)))

(declare-fun b!5102878 () Bool)

(declare-fun e!3182533 () Bool)

(assert (=> b!5102878 (= e!3182533 e!3182534)))

(declare-fun res!2171871 () Bool)

(assert (=> b!5102878 (=> res!2171871 e!3182534)))

(assert (=> b!5102878 (= res!2171871 (isEmpty!31800 (_1!35051 lt!2098884)))))

(declare-fun bm!355520 () Bool)

(assert (=> bm!355520 (= call!355526 (isPrefix!5456 input!5654 input!5654))))

(declare-fun b!5102879 () Bool)

(declare-fun Unit!149879 () Unit!149870)

(assert (=> b!5102879 (= e!3182530 Unit!149879)))

(declare-fun lt!2098874 () Unit!149870)

(assert (=> b!5102879 (= lt!2098874 call!355522)))

(assert (=> b!5102879 call!355526))

(declare-fun lt!2098896 () Unit!149870)

(assert (=> b!5102879 (= lt!2098896 lt!2098874)))

(declare-fun lt!2098890 () Unit!149870)

(assert (=> b!5102879 (= lt!2098890 call!355520)))

(assert (=> b!5102879 (= input!5654 Nil!58827)))

(declare-fun lt!2098894 () Unit!149870)

(assert (=> b!5102879 (= lt!2098894 lt!2098890)))

(assert (=> b!5102879 false))

(declare-fun d!1650295 () Bool)

(assert (=> d!1650295 e!3182533))

(declare-fun res!2171870 () Bool)

(assert (=> d!1650295 (=> (not res!2171870) (not e!3182533))))

(assert (=> d!1650295 (= res!2171870 (= (++!12904 (_1!35051 lt!2098884) (_2!35051 lt!2098884)) input!5654))))

(assert (=> d!1650295 (= lt!2098884 e!3182529)))

(declare-fun c!876665 () Bool)

(declare-fun lostCause!1210 (Regex!14055) Bool)

(assert (=> d!1650295 (= c!876665 (lostCause!1210 r!12920))))

(declare-fun lt!2098876 () Unit!149870)

(declare-fun Unit!149880 () Unit!149870)

(assert (=> d!1650295 (= lt!2098876 Unit!149880)))

(assert (=> d!1650295 (= (getSuffix!3166 input!5654 Nil!58827) input!5654)))

(declare-fun lt!2098875 () Unit!149870)

(declare-fun lt!2098889 () Unit!149870)

(assert (=> d!1650295 (= lt!2098875 lt!2098889)))

(declare-fun lt!2098881 () List!58951)

(assert (=> d!1650295 (= input!5654 lt!2098881)))

(declare-fun lemmaSamePrefixThenSameSuffix!2582 (List!58951 List!58951 List!58951 List!58951 List!58951) Unit!149870)

(assert (=> d!1650295 (= lt!2098889 (lemmaSamePrefixThenSameSuffix!2582 Nil!58827 input!5654 Nil!58827 lt!2098881 input!5654))))

(assert (=> d!1650295 (= lt!2098881 (getSuffix!3166 input!5654 Nil!58827))))

(declare-fun lt!2098892 () Unit!149870)

(declare-fun lt!2098871 () Unit!149870)

(assert (=> d!1650295 (= lt!2098892 lt!2098871)))

(assert (=> d!1650295 (isPrefix!5456 Nil!58827 (++!12904 Nil!58827 input!5654))))

(assert (=> d!1650295 (= lt!2098871 (lemmaConcatTwoListThenFirstIsPrefix!3514 Nil!58827 input!5654))))

(assert (=> d!1650295 (validRegex!6182 r!12920)))

(assert (=> d!1650295 (= (findLongestMatchInner!2068 r!12920 Nil!58827 lt!2098722 input!5654 input!5654 lt!2098737) lt!2098884)))

(declare-fun bm!355521 () Bool)

(assert (=> bm!355521 (= call!355523 (head!10837 input!5654))))

(declare-fun b!5102880 () Bool)

(assert (=> b!5102880 (= e!3182529 (tuple2!63497 Nil!58827 input!5654))))

(assert (= (and d!1650295 c!876665) b!5102880))

(assert (= (and d!1650295 (not c!876665)) b!5102873))

(assert (= (and b!5102873 c!876664) b!5102875))

(assert (= (and b!5102873 (not c!876664)) b!5102876))

(assert (= (and b!5102875 c!876663) b!5102874))

(assert (= (and b!5102875 (not c!876663)) b!5102871))

(assert (= (and b!5102876 c!876666) b!5102879))

(assert (= (and b!5102876 (not c!876666)) b!5102877))

(assert (= (and b!5102876 c!876667) b!5102872))

(assert (= (and b!5102876 (not c!876667)) b!5102870))

(assert (= (and b!5102872 c!876668) b!5102868))

(assert (= (and b!5102872 (not c!876668)) b!5102869))

(assert (= (or b!5102872 b!5102870) bm!355521))

(assert (= (or b!5102872 b!5102870) bm!355515))

(assert (= (or b!5102872 b!5102870) bm!355516))

(assert (= (or b!5102872 b!5102870) bm!355519))

(assert (= (or b!5102875 b!5102879) bm!355517))

(assert (= (or b!5102875 b!5102876) bm!355518))

(assert (= (or b!5102875 b!5102879) bm!355520))

(assert (= (or b!5102875 b!5102879) bm!355514))

(assert (= (and d!1650295 res!2171870) b!5102878))

(assert (= (and b!5102878 (not res!2171871)) b!5102867))

(declare-fun m!6160162 () Bool)

(assert (=> bm!355521 m!6160162))

(declare-fun m!6160164 () Bool)

(assert (=> bm!355517 m!6160164))

(declare-fun m!6160166 () Bool)

(assert (=> b!5102878 m!6160166))

(assert (=> bm!355518 m!6160070))

(declare-fun m!6160168 () Bool)

(assert (=> bm!355520 m!6160168))

(assert (=> b!5102876 m!6159972))

(declare-fun m!6160170 () Bool)

(assert (=> b!5102876 m!6160170))

(declare-fun m!6160172 () Bool)

(assert (=> b!5102876 m!6160172))

(declare-fun m!6160174 () Bool)

(assert (=> b!5102876 m!6160174))

(declare-fun m!6160176 () Bool)

(assert (=> b!5102876 m!6160176))

(declare-fun m!6160178 () Bool)

(assert (=> b!5102876 m!6160178))

(declare-fun m!6160180 () Bool)

(assert (=> b!5102876 m!6160180))

(declare-fun m!6160182 () Bool)

(assert (=> b!5102876 m!6160182))

(declare-fun m!6160184 () Bool)

(assert (=> b!5102876 m!6160184))

(assert (=> b!5102876 m!6160176))

(declare-fun m!6160186 () Bool)

(assert (=> b!5102876 m!6160186))

(assert (=> b!5102876 m!6160180))

(assert (=> b!5102876 m!6159978))

(assert (=> b!5102876 m!6160178))

(declare-fun m!6160188 () Bool)

(assert (=> b!5102876 m!6160188))

(assert (=> b!5102876 m!6160162))

(declare-fun m!6160190 () Bool)

(assert (=> b!5102876 m!6160190))

(declare-fun m!6160192 () Bool)

(assert (=> bm!355514 m!6160192))

(declare-fun m!6160194 () Bool)

(assert (=> b!5102867 m!6160194))

(assert (=> b!5102867 m!6159978))

(declare-fun m!6160196 () Bool)

(assert (=> b!5102872 m!6160196))

(assert (=> bm!355515 m!6160172))

(declare-fun m!6160198 () Bool)

(assert (=> bm!355516 m!6160198))

(declare-fun m!6160200 () Bool)

(assert (=> d!1650295 m!6160200))

(declare-fun m!6160202 () Bool)

(assert (=> d!1650295 m!6160202))

(declare-fun m!6160204 () Bool)

(assert (=> d!1650295 m!6160204))

(assert (=> d!1650295 m!6159948))

(declare-fun m!6160206 () Bool)

(assert (=> d!1650295 m!6160206))

(declare-fun m!6160208 () Bool)

(assert (=> d!1650295 m!6160208))

(assert (=> d!1650295 m!6160178))

(assert (=> d!1650295 m!6160202))

(declare-fun m!6160210 () Bool)

(assert (=> d!1650295 m!6160210))

(declare-fun m!6160212 () Bool)

(assert (=> bm!355519 m!6160212))

(assert (=> b!5102637 d!1650295))

(declare-fun bm!355539 () Bool)

(declare-fun call!355547 () List!58951)

(assert (=> bm!355539 (= call!355547 (tail!9992 input!5654))))

(declare-fun b!5102944 () Bool)

(declare-fun e!3182577 () tuple2!63496)

(assert (=> b!5102944 (= e!3182577 (tuple2!63497 Nil!58827 input!5654))))

(declare-fun b!5102945 () Bool)

(declare-fun e!3182574 () tuple2!63496)

(assert (=> b!5102945 (= e!3182574 (tuple2!63497 Nil!58827 input!5654))))

(declare-fun lt!2099003 () List!58951)

(declare-fun bm!355540 () Bool)

(declare-fun call!355550 () tuple2!63496)

(declare-fun call!355551 () (InoxSet Context!6878))

(assert (=> bm!355540 (= call!355550 (findLongestMatchInnerZipper!129 call!355551 lt!2099003 (+ lt!2098722 1) call!355547 input!5654 lt!2098737))))

(declare-fun bm!355541 () Bool)

(declare-fun call!355545 () Unit!149870)

(assert (=> bm!355541 (= call!355545 (lemmaIsPrefixRefl!3683 input!5654 input!5654))))

(declare-fun b!5102946 () Bool)

(declare-fun e!3182573 () Bool)

(declare-fun lt!2099014 () tuple2!63496)

(assert (=> b!5102946 (= e!3182573 (>= (size!39357 (_1!35051 lt!2099014)) (size!39357 Nil!58827)))))

(declare-fun b!5102947 () Bool)

(declare-fun e!3182578 () tuple2!63496)

(assert (=> b!5102947 (= e!3182578 (tuple2!63497 Nil!58827 Nil!58827))))

(declare-fun bm!355542 () Bool)

(declare-fun call!355544 () Unit!149870)

(assert (=> bm!355542 (= call!355544 (lemmaIsPrefixSameLengthThenSameList!1305 input!5654 Nil!58827 input!5654))))

(declare-fun bm!355543 () Bool)

(declare-fun call!355549 () C!28368)

(assert (=> bm!355543 (= call!355549 (head!10837 input!5654))))

(declare-fun bm!355544 () Bool)

(declare-fun call!355548 () Bool)

(assert (=> bm!355544 (= call!355548 (isPrefix!5456 input!5654 input!5654))))

(declare-fun b!5102949 () Bool)

(assert (=> b!5102949 (= e!3182578 (tuple2!63497 Nil!58827 input!5654))))

(declare-fun b!5102950 () Bool)

(declare-fun e!3182576 () Unit!149870)

(declare-fun Unit!149881 () Unit!149870)

(assert (=> b!5102950 (= e!3182576 Unit!149881)))

(declare-fun b!5102951 () Bool)

(declare-fun c!876692 () Bool)

(declare-fun call!355546 () Bool)

(assert (=> b!5102951 (= c!876692 call!355546)))

(declare-fun lt!2099007 () Unit!149870)

(declare-fun lt!2099000 () Unit!149870)

(assert (=> b!5102951 (= lt!2099007 lt!2099000)))

(declare-fun lt!2099001 () C!28368)

(declare-fun lt!2098995 () List!58951)

(assert (=> b!5102951 (= (++!12904 (++!12904 Nil!58827 (Cons!58827 lt!2099001 Nil!58827)) lt!2098995) input!5654)))

(assert (=> b!5102951 (= lt!2099000 (lemmaMoveElementToOtherListKeepsConcatEq!1522 Nil!58827 lt!2099001 lt!2098995 input!5654))))

(assert (=> b!5102951 (= lt!2098995 (tail!9992 input!5654))))

(assert (=> b!5102951 (= lt!2099001 (head!10837 input!5654))))

(declare-fun lt!2099005 () Unit!149870)

(declare-fun lt!2098997 () Unit!149870)

(assert (=> b!5102951 (= lt!2099005 lt!2098997)))

(assert (=> b!5102951 (isPrefix!5456 (++!12904 Nil!58827 (Cons!58827 (head!10837 (getSuffix!3166 input!5654 Nil!58827)) Nil!58827)) input!5654)))

(assert (=> b!5102951 (= lt!2098997 (lemmaAddHeadSuffixToPrefixStillPrefix!911 Nil!58827 input!5654))))

(assert (=> b!5102951 (= lt!2099003 (++!12904 Nil!58827 (Cons!58827 (head!10837 input!5654) Nil!58827)))))

(declare-fun lt!2098993 () Unit!149870)

(assert (=> b!5102951 (= lt!2098993 e!3182576)))

(declare-fun c!876691 () Bool)

(assert (=> b!5102951 (= c!876691 (= (size!39357 Nil!58827) (size!39357 input!5654)))))

(declare-fun lt!2098998 () Unit!149870)

(declare-fun lt!2099009 () Unit!149870)

(assert (=> b!5102951 (= lt!2098998 lt!2099009)))

(assert (=> b!5102951 (<= (size!39357 Nil!58827) (size!39357 input!5654))))

(assert (=> b!5102951 (= lt!2099009 (lemmaIsPrefixThenSmallerEqSize!837 Nil!58827 input!5654))))

(declare-fun e!3182572 () tuple2!63496)

(declare-fun e!3182575 () tuple2!63496)

(assert (=> b!5102951 (= e!3182572 e!3182575)))

(declare-fun b!5102952 () Bool)

(assert (=> b!5102952 (= e!3182575 call!355550)))

(declare-fun bm!355545 () Bool)

(assert (=> bm!355545 (= call!355546 (nullableZipper!962 z!4303))))

(declare-fun b!5102953 () Bool)

(declare-fun e!3182571 () Bool)

(assert (=> b!5102953 (= e!3182571 e!3182573)))

(declare-fun res!2171895 () Bool)

(assert (=> b!5102953 (=> res!2171895 e!3182573)))

(assert (=> b!5102953 (= res!2171895 (isEmpty!31800 (_1!35051 lt!2099014)))))

(declare-fun bm!355546 () Bool)

(assert (=> bm!355546 (= call!355551 (derivationStepZipper!750 z!4303 call!355549))))

(declare-fun b!5102954 () Bool)

(declare-fun Unit!149882 () Unit!149870)

(assert (=> b!5102954 (= e!3182576 Unit!149882)))

(declare-fun lt!2098996 () Unit!149870)

(assert (=> b!5102954 (= lt!2098996 call!355545)))

(assert (=> b!5102954 call!355548))

(declare-fun lt!2098999 () Unit!149870)

(assert (=> b!5102954 (= lt!2098999 lt!2098996)))

(declare-fun lt!2099012 () Unit!149870)

(assert (=> b!5102954 (= lt!2099012 call!355544)))

(assert (=> b!5102954 (= input!5654 Nil!58827)))

(declare-fun lt!2099006 () Unit!149870)

(assert (=> b!5102954 (= lt!2099006 lt!2099012)))

(assert (=> b!5102954 false))

(declare-fun b!5102955 () Bool)

(assert (=> b!5102955 (= e!3182577 e!3182572)))

(declare-fun c!876690 () Bool)

(assert (=> b!5102955 (= c!876690 (= lt!2098722 lt!2098737))))

(declare-fun b!5102956 () Bool)

(declare-fun lt!2099013 () tuple2!63496)

(assert (=> b!5102956 (= e!3182574 lt!2099013)))

(declare-fun b!5102957 () Bool)

(assert (=> b!5102957 (= e!3182575 e!3182574)))

(assert (=> b!5102957 (= lt!2099013 call!355550)))

(declare-fun c!876694 () Bool)

(assert (=> b!5102957 (= c!876694 (isEmpty!31800 (_1!35051 lt!2099013)))))

(declare-fun d!1650297 () Bool)

(assert (=> d!1650297 e!3182571))

(declare-fun res!2171896 () Bool)

(assert (=> d!1650297 (=> (not res!2171896) (not e!3182571))))

(assert (=> d!1650297 (= res!2171896 (= (++!12904 (_1!35051 lt!2099014) (_2!35051 lt!2099014)) input!5654))))

(assert (=> d!1650297 (= lt!2099014 e!3182577)))

(declare-fun c!876693 () Bool)

(declare-fun lostCauseZipper!977 ((InoxSet Context!6878)) Bool)

(assert (=> d!1650297 (= c!876693 (lostCauseZipper!977 z!4303))))

(declare-fun lt!2099015 () Unit!149870)

(declare-fun Unit!149883 () Unit!149870)

(assert (=> d!1650297 (= lt!2099015 Unit!149883)))

(assert (=> d!1650297 (= (getSuffix!3166 input!5654 Nil!58827) input!5654)))

(declare-fun lt!2099016 () Unit!149870)

(declare-fun lt!2099004 () Unit!149870)

(assert (=> d!1650297 (= lt!2099016 lt!2099004)))

(declare-fun lt!2099011 () List!58951)

(assert (=> d!1650297 (= input!5654 lt!2099011)))

(assert (=> d!1650297 (= lt!2099004 (lemmaSamePrefixThenSameSuffix!2582 Nil!58827 input!5654 Nil!58827 lt!2099011 input!5654))))

(assert (=> d!1650297 (= lt!2099011 (getSuffix!3166 input!5654 Nil!58827))))

(declare-fun lt!2099018 () Unit!149870)

(declare-fun lt!2099010 () Unit!149870)

(assert (=> d!1650297 (= lt!2099018 lt!2099010)))

(assert (=> d!1650297 (isPrefix!5456 Nil!58827 (++!12904 Nil!58827 input!5654))))

(assert (=> d!1650297 (= lt!2099010 (lemmaConcatTwoListThenFirstIsPrefix!3514 Nil!58827 input!5654))))

(assert (=> d!1650297 (= (++!12904 Nil!58827 input!5654) input!5654)))

(assert (=> d!1650297 (= (findLongestMatchInnerZipper!129 z!4303 Nil!58827 lt!2098722 input!5654 input!5654 lt!2098737) lt!2099014)))

(declare-fun b!5102948 () Bool)

(declare-fun c!876689 () Bool)

(assert (=> b!5102948 (= c!876689 call!355546)))

(declare-fun lt!2099008 () Unit!149870)

(declare-fun lt!2098994 () Unit!149870)

(assert (=> b!5102948 (= lt!2099008 lt!2098994)))

(assert (=> b!5102948 (= input!5654 Nil!58827)))

(assert (=> b!5102948 (= lt!2098994 call!355544)))

(declare-fun lt!2099017 () Unit!149870)

(declare-fun lt!2099002 () Unit!149870)

(assert (=> b!5102948 (= lt!2099017 lt!2099002)))

(assert (=> b!5102948 call!355548))

(assert (=> b!5102948 (= lt!2099002 call!355545)))

(assert (=> b!5102948 (= e!3182572 e!3182578)))

(assert (= (and d!1650297 c!876693) b!5102944))

(assert (= (and d!1650297 (not c!876693)) b!5102955))

(assert (= (and b!5102955 c!876690) b!5102948))

(assert (= (and b!5102955 (not c!876690)) b!5102951))

(assert (= (and b!5102948 c!876689) b!5102947))

(assert (= (and b!5102948 (not c!876689)) b!5102949))

(assert (= (and b!5102951 c!876691) b!5102954))

(assert (= (and b!5102951 (not c!876691)) b!5102950))

(assert (= (and b!5102951 c!876692) b!5102957))

(assert (= (and b!5102951 (not c!876692)) b!5102952))

(assert (= (and b!5102957 c!876694) b!5102945))

(assert (= (and b!5102957 (not c!876694)) b!5102956))

(assert (= (or b!5102957 b!5102952) bm!355543))

(assert (= (or b!5102957 b!5102952) bm!355539))

(assert (= (or b!5102957 b!5102952) bm!355546))

(assert (= (or b!5102957 b!5102952) bm!355540))

(assert (= (or b!5102948 b!5102954) bm!355542))

(assert (= (or b!5102948 b!5102951) bm!355545))

(assert (= (or b!5102948 b!5102954) bm!355544))

(assert (= (or b!5102948 b!5102954) bm!355541))

(assert (= (and d!1650297 res!2171896) b!5102953))

(assert (= (and b!5102953 (not res!2171895)) b!5102946))

(declare-fun m!6160282 () Bool)

(assert (=> b!5102953 m!6160282))

(assert (=> bm!355545 m!6160138))

(assert (=> bm!355539 m!6160172))

(assert (=> bm!355543 m!6160162))

(declare-fun m!6160284 () Bool)

(assert (=> bm!355540 m!6160284))

(assert (=> bm!355541 m!6160192))

(declare-fun m!6160286 () Bool)

(assert (=> d!1650297 m!6160286))

(assert (=> d!1650297 m!6160178))

(declare-fun m!6160288 () Bool)

(assert (=> d!1650297 m!6160288))

(assert (=> d!1650297 m!6160202))

(assert (=> d!1650297 m!6160210))

(declare-fun m!6160290 () Bool)

(assert (=> d!1650297 m!6160290))

(assert (=> d!1650297 m!6160206))

(assert (=> d!1650297 m!6160202))

(declare-fun m!6160292 () Bool)

(assert (=> b!5102946 m!6160292))

(assert (=> b!5102946 m!6159978))

(declare-fun m!6160294 () Bool)

(assert (=> bm!355546 m!6160294))

(declare-fun m!6160296 () Bool)

(assert (=> b!5102951 m!6160296))

(assert (=> b!5102951 m!6160170))

(assert (=> b!5102951 m!6160190))

(assert (=> b!5102951 m!6159978))

(assert (=> b!5102951 m!6160178))

(assert (=> b!5102951 m!6160188))

(declare-fun m!6160298 () Bool)

(assert (=> b!5102951 m!6160298))

(assert (=> b!5102951 m!6159972))

(assert (=> b!5102951 m!6160172))

(assert (=> b!5102951 m!6160174))

(assert (=> b!5102951 m!6160296))

(declare-fun m!6160300 () Bool)

(assert (=> b!5102951 m!6160300))

(assert (=> b!5102951 m!6160176))

(assert (=> b!5102951 m!6160178))

(assert (=> b!5102951 m!6160162))

(assert (=> b!5102951 m!6160176))

(assert (=> b!5102951 m!6160186))

(assert (=> bm!355544 m!6160168))

(assert (=> bm!355542 m!6160164))

(declare-fun m!6160302 () Bool)

(assert (=> b!5102957 m!6160302))

(assert (=> b!5102637 d!1650297))

(declare-fun b!5102967 () Bool)

(declare-fun res!2171906 () Bool)

(declare-fun e!3182587 () Bool)

(assert (=> b!5102967 (=> (not res!2171906) (not e!3182587))))

(assert (=> b!5102967 (= res!2171906 (= (head!10837 (_1!35051 lt!2098723)) (head!10837 lt!2098734)))))

(declare-fun b!5102966 () Bool)

(declare-fun e!3182586 () Bool)

(assert (=> b!5102966 (= e!3182586 e!3182587)))

(declare-fun res!2171905 () Bool)

(assert (=> b!5102966 (=> (not res!2171905) (not e!3182587))))

(assert (=> b!5102966 (= res!2171905 (not ((_ is Nil!58827) lt!2098734)))))

(declare-fun b!5102969 () Bool)

(declare-fun e!3182585 () Bool)

(assert (=> b!5102969 (= e!3182585 (>= (size!39357 lt!2098734) (size!39357 (_1!35051 lt!2098723))))))

(declare-fun b!5102968 () Bool)

(assert (=> b!5102968 (= e!3182587 (isPrefix!5456 (tail!9992 (_1!35051 lt!2098723)) (tail!9992 lt!2098734)))))

(declare-fun d!1650319 () Bool)

(assert (=> d!1650319 e!3182585))

(declare-fun res!2171908 () Bool)

(assert (=> d!1650319 (=> res!2171908 e!3182585)))

(declare-fun lt!2099021 () Bool)

(assert (=> d!1650319 (= res!2171908 (not lt!2099021))))

(assert (=> d!1650319 (= lt!2099021 e!3182586)))

(declare-fun res!2171907 () Bool)

(assert (=> d!1650319 (=> res!2171907 e!3182586)))

(assert (=> d!1650319 (= res!2171907 ((_ is Nil!58827) (_1!35051 lt!2098723)))))

(assert (=> d!1650319 (= (isPrefix!5456 (_1!35051 lt!2098723) lt!2098734) lt!2099021)))

(assert (= (and d!1650319 (not res!2171907)) b!5102966))

(assert (= (and b!5102966 res!2171905) b!5102967))

(assert (= (and b!5102967 res!2171906) b!5102968))

(assert (= (and d!1650319 (not res!2171908)) b!5102969))

(assert (=> b!5102967 m!6160140))

(declare-fun m!6160304 () Bool)

(assert (=> b!5102967 m!6160304))

(declare-fun m!6160306 () Bool)

(assert (=> b!5102969 m!6160306))

(assert (=> b!5102969 m!6159960))

(assert (=> b!5102968 m!6160144))

(declare-fun m!6160308 () Bool)

(assert (=> b!5102968 m!6160308))

(assert (=> b!5102968 m!6160144))

(assert (=> b!5102968 m!6160308))

(declare-fun m!6160310 () Bool)

(assert (=> b!5102968 m!6160310))

(assert (=> b!5102637 d!1650319))

(declare-fun d!1650321 () Bool)

(assert (=> d!1650321 (isPrefix!5456 (_1!35051 lt!2098733) (++!12904 (_1!35051 lt!2098733) (_2!35051 lt!2098733)))))

(declare-fun lt!2099024 () Unit!149870)

(declare-fun choose!37389 (List!58951 List!58951) Unit!149870)

(assert (=> d!1650321 (= lt!2099024 (choose!37389 (_1!35051 lt!2098733) (_2!35051 lt!2098733)))))

(assert (=> d!1650321 (= (lemmaConcatTwoListThenFirstIsPrefix!3514 (_1!35051 lt!2098733) (_2!35051 lt!2098733)) lt!2099024)))

(declare-fun bs!1191570 () Bool)

(assert (= bs!1191570 d!1650321))

(assert (=> bs!1191570 m!6159996))

(assert (=> bs!1191570 m!6159996))

(declare-fun m!6160312 () Bool)

(assert (=> bs!1191570 m!6160312))

(declare-fun m!6160314 () Bool)

(assert (=> bs!1191570 m!6160314))

(assert (=> b!5102637 d!1650321))

(declare-fun d!1650323 () Bool)

(assert (=> d!1650323 (isPrefix!5456 (_1!35051 lt!2098723) (++!12904 (_1!35051 lt!2098723) (_2!35051 lt!2098723)))))

(declare-fun lt!2099025 () Unit!149870)

(assert (=> d!1650323 (= lt!2099025 (choose!37389 (_1!35051 lt!2098723) (_2!35051 lt!2098723)))))

(assert (=> d!1650323 (= (lemmaConcatTwoListThenFirstIsPrefix!3514 (_1!35051 lt!2098723) (_2!35051 lt!2098723)) lt!2099025)))

(declare-fun bs!1191571 () Bool)

(assert (= bs!1191571 d!1650323))

(assert (=> bs!1191571 m!6160008))

(assert (=> bs!1191571 m!6160008))

(declare-fun m!6160316 () Bool)

(assert (=> bs!1191571 m!6160316))

(declare-fun m!6160318 () Bool)

(assert (=> bs!1191571 m!6160318))

(assert (=> b!5102637 d!1650323))

(declare-fun b!5102971 () Bool)

(declare-fun res!2171910 () Bool)

(declare-fun e!3182590 () Bool)

(assert (=> b!5102971 (=> (not res!2171910) (not e!3182590))))

(assert (=> b!5102971 (= res!2171910 (= (head!10837 (_1!35051 lt!2098733)) (head!10837 lt!2098726)))))

(declare-fun b!5102970 () Bool)

(declare-fun e!3182589 () Bool)

(assert (=> b!5102970 (= e!3182589 e!3182590)))

(declare-fun res!2171909 () Bool)

(assert (=> b!5102970 (=> (not res!2171909) (not e!3182590))))

(assert (=> b!5102970 (= res!2171909 (not ((_ is Nil!58827) lt!2098726)))))

(declare-fun b!5102973 () Bool)

(declare-fun e!3182588 () Bool)

(assert (=> b!5102973 (= e!3182588 (>= (size!39357 lt!2098726) (size!39357 (_1!35051 lt!2098733))))))

(declare-fun b!5102972 () Bool)

(assert (=> b!5102972 (= e!3182590 (isPrefix!5456 (tail!9992 (_1!35051 lt!2098733)) (tail!9992 lt!2098726)))))

(declare-fun d!1650325 () Bool)

(assert (=> d!1650325 e!3182588))

(declare-fun res!2171912 () Bool)

(assert (=> d!1650325 (=> res!2171912 e!3182588)))

(declare-fun lt!2099026 () Bool)

(assert (=> d!1650325 (= res!2171912 (not lt!2099026))))

(assert (=> d!1650325 (= lt!2099026 e!3182589)))

(declare-fun res!2171911 () Bool)

(assert (=> d!1650325 (=> res!2171911 e!3182589)))

(assert (=> d!1650325 (= res!2171911 ((_ is Nil!58827) (_1!35051 lt!2098733)))))

(assert (=> d!1650325 (= (isPrefix!5456 (_1!35051 lt!2098733) lt!2098726) lt!2099026)))

(assert (= (and d!1650325 (not res!2171911)) b!5102970))

(assert (= (and b!5102970 res!2171909) b!5102971))

(assert (= (and b!5102971 res!2171910) b!5102972))

(assert (= (and d!1650325 (not res!2171912)) b!5102973))

(assert (=> b!5102971 m!6160126))

(declare-fun m!6160320 () Bool)

(assert (=> b!5102971 m!6160320))

(declare-fun m!6160322 () Bool)

(assert (=> b!5102973 m!6160322))

(assert (=> b!5102973 m!6159954))

(assert (=> b!5102972 m!6160130))

(declare-fun m!6160324 () Bool)

(assert (=> b!5102972 m!6160324))

(assert (=> b!5102972 m!6160130))

(assert (=> b!5102972 m!6160324))

(declare-fun m!6160326 () Bool)

(assert (=> b!5102972 m!6160326))

(assert (=> b!5102637 d!1650325))

(declare-fun d!1650327 () Bool)

(declare-fun c!876695 () Bool)

(assert (=> d!1650327 (= c!876695 (isEmpty!31800 (_1!35051 lt!2098733)))))

(declare-fun e!3182591 () Bool)

(assert (=> d!1650327 (= (matchZipper!727 z!4303 (_1!35051 lt!2098733)) e!3182591)))

(declare-fun b!5102974 () Bool)

(assert (=> b!5102974 (= e!3182591 (nullableZipper!962 z!4303))))

(declare-fun b!5102975 () Bool)

(assert (=> b!5102975 (= e!3182591 (matchZipper!727 (derivationStepZipper!750 z!4303 (head!10837 (_1!35051 lt!2098733))) (tail!9992 (_1!35051 lt!2098733))))))

(assert (= (and d!1650327 c!876695) b!5102974))

(assert (= (and d!1650327 (not c!876695)) b!5102975))

(assert (=> d!1650327 m!6159966))

(assert (=> b!5102974 m!6160138))

(assert (=> b!5102975 m!6160126))

(assert (=> b!5102975 m!6160126))

(declare-fun m!6160328 () Bool)

(assert (=> b!5102975 m!6160328))

(assert (=> b!5102975 m!6160130))

(assert (=> b!5102975 m!6160328))

(assert (=> b!5102975 m!6160130))

(declare-fun m!6160330 () Bool)

(assert (=> b!5102975 m!6160330))

(assert (=> b!5102637 d!1650327))

(declare-fun d!1650329 () Bool)

(assert (=> d!1650329 (= (isEmpty!31800 (_1!35051 lt!2098731)) ((_ is Nil!58827) (_1!35051 lt!2098731)))))

(assert (=> b!5102637 d!1650329))

(declare-fun d!1650331 () Bool)

(declare-fun e!3182594 () Bool)

(assert (=> d!1650331 e!3182594))

(declare-fun res!2171915 () Bool)

(assert (=> d!1650331 (=> res!2171915 e!3182594)))

(assert (=> d!1650331 (= res!2171915 (isEmpty!31800 (_1!35051 (findLongestMatchInnerZipper!129 z!4303 Nil!58827 (size!39357 Nil!58827) input!5654 input!5654 (size!39357 input!5654)))))))

(declare-fun lt!2099029 () Unit!149870)

(declare-fun choose!37390 ((InoxSet Context!6878) List!58951) Unit!149870)

(assert (=> d!1650331 (= lt!2099029 (choose!37390 z!4303 input!5654))))

(assert (=> d!1650331 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2057 z!4303 input!5654) lt!2099029)))

(declare-fun b!5102978 () Bool)

(assert (=> b!5102978 (= e!3182594 (matchZipper!727 z!4303 (_1!35051 (findLongestMatchInnerZipper!129 z!4303 Nil!58827 (size!39357 Nil!58827) input!5654 input!5654 (size!39357 input!5654)))))))

(assert (= (and d!1650331 (not res!2171915)) b!5102978))

(declare-fun m!6160332 () Bool)

(assert (=> d!1650331 m!6160332))

(assert (=> d!1650331 m!6159972))

(assert (=> d!1650331 m!6159978))

(assert (=> d!1650331 m!6159972))

(declare-fun m!6160334 () Bool)

(assert (=> d!1650331 m!6160334))

(declare-fun m!6160336 () Bool)

(assert (=> d!1650331 m!6160336))

(assert (=> d!1650331 m!6159978))

(assert (=> b!5102978 m!6159978))

(assert (=> b!5102978 m!6159972))

(assert (=> b!5102978 m!6159978))

(assert (=> b!5102978 m!6159972))

(assert (=> b!5102978 m!6160334))

(declare-fun m!6160338 () Bool)

(assert (=> b!5102978 m!6160338))

(assert (=> b!5102637 d!1650331))

(declare-fun d!1650333 () Bool)

(declare-fun e!3182597 () Bool)

(assert (=> d!1650333 e!3182597))

(declare-fun res!2171918 () Bool)

(assert (=> d!1650333 (=> res!2171918 e!3182597)))

(assert (=> d!1650333 (= res!2171918 (isEmpty!31800 (_1!35051 (findLongestMatchInner!2068 r!12920 Nil!58827 (size!39357 Nil!58827) input!5654 input!5654 (size!39357 input!5654)))))))

(declare-fun lt!2099032 () Unit!149870)

(declare-fun choose!37391 (Regex!14055 List!58951) Unit!149870)

(assert (=> d!1650333 (= lt!2099032 (choose!37391 r!12920 input!5654))))

(assert (=> d!1650333 (validRegex!6182 r!12920)))

(assert (=> d!1650333 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2056 r!12920 input!5654) lt!2099032)))

(declare-fun b!5102981 () Bool)

(assert (=> b!5102981 (= e!3182597 (matchR!6840 r!12920 (_1!35051 (findLongestMatchInner!2068 r!12920 Nil!58827 (size!39357 Nil!58827) input!5654 input!5654 (size!39357 input!5654)))))))

(assert (= (and d!1650333 (not res!2171918)) b!5102981))

(assert (=> d!1650333 m!6159948))

(declare-fun m!6160340 () Bool)

(assert (=> d!1650333 m!6160340))

(assert (=> d!1650333 m!6159978))

(assert (=> d!1650333 m!6159972))

(declare-fun m!6160342 () Bool)

(assert (=> d!1650333 m!6160342))

(assert (=> d!1650333 m!6159972))

(declare-fun m!6160344 () Bool)

(assert (=> d!1650333 m!6160344))

(assert (=> d!1650333 m!6159978))

(assert (=> b!5102981 m!6159978))

(assert (=> b!5102981 m!6159972))

(assert (=> b!5102981 m!6159978))

(assert (=> b!5102981 m!6159972))

(assert (=> b!5102981 m!6160342))

(declare-fun m!6160346 () Bool)

(assert (=> b!5102981 m!6160346))

(assert (=> b!5102637 d!1650333))

(declare-fun d!1650335 () Bool)

(declare-fun lt!2099033 () Int)

(assert (=> d!1650335 (>= lt!2099033 0)))

(declare-fun e!3182598 () Int)

(assert (=> d!1650335 (= lt!2099033 e!3182598)))

(declare-fun c!876696 () Bool)

(assert (=> d!1650335 (= c!876696 ((_ is Nil!58827) Nil!58827))))

(assert (=> d!1650335 (= (size!39357 Nil!58827) lt!2099033)))

(declare-fun b!5102982 () Bool)

(assert (=> b!5102982 (= e!3182598 0)))

(declare-fun b!5102983 () Bool)

(assert (=> b!5102983 (= e!3182598 (+ 1 (size!39357 (t!371952 Nil!58827))))))

(assert (= (and d!1650335 c!876696) b!5102982))

(assert (= (and d!1650335 (not c!876696)) b!5102983))

(declare-fun m!6160348 () Bool)

(assert (=> b!5102983 m!6160348))

(assert (=> b!5102637 d!1650335))

(declare-fun d!1650337 () Bool)

(declare-fun c!876697 () Bool)

(assert (=> d!1650337 (= c!876697 (isEmpty!31800 (_1!35051 lt!2098721)))))

(declare-fun e!3182599 () Bool)

(assert (=> d!1650337 (= (matchZipper!727 z!4303 (_1!35051 lt!2098721)) e!3182599)))

(declare-fun b!5102984 () Bool)

(assert (=> b!5102984 (= e!3182599 (nullableZipper!962 z!4303))))

(declare-fun b!5102985 () Bool)

(assert (=> b!5102985 (= e!3182599 (matchZipper!727 (derivationStepZipper!750 z!4303 (head!10837 (_1!35051 lt!2098721))) (tail!9992 (_1!35051 lt!2098721))))))

(assert (= (and d!1650337 c!876697) b!5102984))

(assert (= (and d!1650337 (not c!876697)) b!5102985))

(assert (=> d!1650337 m!6159968))

(assert (=> b!5102984 m!6160138))

(declare-fun m!6160350 () Bool)

(assert (=> b!5102985 m!6160350))

(assert (=> b!5102985 m!6160350))

(declare-fun m!6160352 () Bool)

(assert (=> b!5102985 m!6160352))

(declare-fun m!6160354 () Bool)

(assert (=> b!5102985 m!6160354))

(assert (=> b!5102985 m!6160352))

(assert (=> b!5102985 m!6160354))

(declare-fun m!6160356 () Bool)

(assert (=> b!5102985 m!6160356))

(assert (=> b!5102647 d!1650337))

(declare-fun d!1650339 () Bool)

(declare-fun lambda!249972 () Int)

(declare-fun forall!13492 (List!58952 Int) Bool)

(assert (=> d!1650339 (= (inv!78312 setElem!29260) (forall!13492 (exprs!3939 setElem!29260) lambda!249972))))

(declare-fun bs!1191574 () Bool)

(assert (= bs!1191574 d!1650339))

(declare-fun m!6160492 () Bool)

(assert (=> bs!1191574 m!6160492))

(assert (=> setNonEmpty!29260 d!1650339))

(declare-fun d!1650365 () Bool)

(assert (=> d!1650365 (= (isEmpty!31800 (_1!35051 lt!2098723)) ((_ is Nil!58827) (_1!35051 lt!2098723)))))

(assert (=> b!5102646 d!1650365))

(declare-fun d!1650367 () Bool)

(declare-fun lt!2099215 () Regex!14055)

(assert (=> d!1650367 (validRegex!6182 lt!2099215)))

(declare-fun generalisedUnion!606 (List!58952) Regex!14055)

(declare-fun unfocusZipperList!119 (List!58953) List!58952)

(assert (=> d!1650367 (= lt!2099215 (generalisedUnion!606 (unfocusZipperList!119 lt!2098728)))))

(assert (=> d!1650367 (= (unfocusZipper!397 lt!2098728) lt!2099215)))

(declare-fun bs!1191575 () Bool)

(assert (= bs!1191575 d!1650367))

(declare-fun m!6160494 () Bool)

(assert (=> bs!1191575 m!6160494))

(declare-fun m!6160496 () Bool)

(assert (=> bs!1191575 m!6160496))

(assert (=> bs!1191575 m!6160496))

(declare-fun m!6160498 () Bool)

(assert (=> bs!1191575 m!6160498))

(assert (=> b!5102645 d!1650367))

(declare-fun d!1650369 () Bool)

(declare-fun e!3182694 () Bool)

(assert (=> d!1650369 e!3182694))

(declare-fun res!2171963 () Bool)

(assert (=> d!1650369 (=> (not res!2171963) (not e!3182694))))

(declare-fun lt!2099218 () List!58953)

(declare-fun noDuplicate!1065 (List!58953) Bool)

(assert (=> d!1650369 (= res!2171963 (noDuplicate!1065 lt!2099218))))

(declare-fun choose!37392 ((InoxSet Context!6878)) List!58953)

(assert (=> d!1650369 (= lt!2099218 (choose!37392 z!4303))))

(assert (=> d!1650369 (= (toList!8189 z!4303) lt!2099218)))

(declare-fun b!5103159 () Bool)

(declare-fun content!10470 (List!58953) (InoxSet Context!6878))

(assert (=> b!5103159 (= e!3182694 (= (content!10470 lt!2099218) z!4303))))

(assert (= (and d!1650369 res!2171963) b!5103159))

(declare-fun m!6160500 () Bool)

(assert (=> d!1650369 m!6160500))

(declare-fun m!6160502 () Bool)

(assert (=> d!1650369 m!6160502))

(declare-fun m!6160504 () Bool)

(assert (=> b!5103159 m!6160504))

(assert (=> b!5102645 d!1650369))

(declare-fun bm!355602 () Bool)

(declare-fun c!876745 () Bool)

(declare-fun call!355607 () Bool)

(declare-fun c!876744 () Bool)

(assert (=> bm!355602 (= call!355607 (validRegex!6182 (ite c!876745 (reg!14384 r!12920) (ite c!876744 (regOne!28623 r!12920) (regTwo!28622 r!12920)))))))

(declare-fun b!5103178 () Bool)

(declare-fun res!2171975 () Bool)

(declare-fun e!3182715 () Bool)

(assert (=> b!5103178 (=> res!2171975 e!3182715)))

(assert (=> b!5103178 (= res!2171975 (not ((_ is Concat!22900) r!12920)))))

(declare-fun e!3182709 () Bool)

(assert (=> b!5103178 (= e!3182709 e!3182715)))

(declare-fun b!5103179 () Bool)

(declare-fun e!3182714 () Bool)

(declare-fun call!355609 () Bool)

(assert (=> b!5103179 (= e!3182714 call!355609)))

(declare-fun b!5103180 () Bool)

(declare-fun e!3182713 () Bool)

(declare-fun e!3182710 () Bool)

(assert (=> b!5103180 (= e!3182713 e!3182710)))

(assert (=> b!5103180 (= c!876745 ((_ is Star!14055) r!12920))))

(declare-fun bm!355603 () Bool)

(assert (=> bm!355603 (= call!355609 call!355607)))

(declare-fun b!5103181 () Bool)

(declare-fun res!2171978 () Bool)

(declare-fun e!3182712 () Bool)

(assert (=> b!5103181 (=> (not res!2171978) (not e!3182712))))

(assert (=> b!5103181 (= res!2171978 call!355609)))

(assert (=> b!5103181 (= e!3182709 e!3182712)))

(declare-fun bm!355604 () Bool)

(declare-fun call!355608 () Bool)

(assert (=> bm!355604 (= call!355608 (validRegex!6182 (ite c!876744 (regTwo!28623 r!12920) (regOne!28622 r!12920))))))

(declare-fun d!1650371 () Bool)

(declare-fun res!2171974 () Bool)

(assert (=> d!1650371 (=> res!2171974 e!3182713)))

(assert (=> d!1650371 (= res!2171974 ((_ is ElementMatch!14055) r!12920))))

(assert (=> d!1650371 (= (validRegex!6182 r!12920) e!3182713)))

(declare-fun b!5103182 () Bool)

(assert (=> b!5103182 (= e!3182710 e!3182709)))

(assert (=> b!5103182 (= c!876744 ((_ is Union!14055) r!12920))))

(declare-fun b!5103183 () Bool)

(declare-fun e!3182711 () Bool)

(assert (=> b!5103183 (= e!3182710 e!3182711)))

(declare-fun res!2171976 () Bool)

(assert (=> b!5103183 (= res!2171976 (not (nullable!4721 (reg!14384 r!12920))))))

(assert (=> b!5103183 (=> (not res!2171976) (not e!3182711))))

(declare-fun b!5103184 () Bool)

(assert (=> b!5103184 (= e!3182711 call!355607)))

(declare-fun b!5103185 () Bool)

(assert (=> b!5103185 (= e!3182715 e!3182714)))

(declare-fun res!2171977 () Bool)

(assert (=> b!5103185 (=> (not res!2171977) (not e!3182714))))

(assert (=> b!5103185 (= res!2171977 call!355608)))

(declare-fun b!5103186 () Bool)

(assert (=> b!5103186 (= e!3182712 call!355608)))

(assert (= (and d!1650371 (not res!2171974)) b!5103180))

(assert (= (and b!5103180 c!876745) b!5103183))

(assert (= (and b!5103180 (not c!876745)) b!5103182))

(assert (= (and b!5103183 res!2171976) b!5103184))

(assert (= (and b!5103182 c!876744) b!5103181))

(assert (= (and b!5103182 (not c!876744)) b!5103178))

(assert (= (and b!5103181 res!2171978) b!5103186))

(assert (= (and b!5103178 (not res!2171975)) b!5103185))

(assert (= (and b!5103185 res!2171977) b!5103179))

(assert (= (or b!5103186 b!5103185) bm!355604))

(assert (= (or b!5103181 b!5103179) bm!355603))

(assert (= (or b!5103184 bm!355603) bm!355602))

(declare-fun m!6160506 () Bool)

(assert (=> bm!355602 m!6160506))

(declare-fun m!6160508 () Bool)

(assert (=> bm!355604 m!6160508))

(declare-fun m!6160510 () Bool)

(assert (=> b!5103183 m!6160510))

(assert (=> start!538100 d!1650371))

(declare-fun b!5103191 () Bool)

(declare-fun e!3182718 () Bool)

(declare-fun tp!1423392 () Bool)

(assert (=> b!5103191 (= e!3182718 (and tp_is_empty!37375 tp!1423392))))

(assert (=> b!5102635 (= tp!1423332 e!3182718)))

(assert (= (and b!5102635 ((_ is Cons!58827) (t!371952 input!5654))) b!5103191))

(declare-fun b!5103196 () Bool)

(declare-fun e!3182721 () Bool)

(declare-fun tp!1423397 () Bool)

(declare-fun tp!1423398 () Bool)

(assert (=> b!5103196 (= e!3182721 (and tp!1423397 tp!1423398))))

(assert (=> b!5102643 (= tp!1423337 e!3182721)))

(assert (= (and b!5102643 ((_ is Cons!58828) (exprs!3939 setElem!29260))) b!5103196))

(declare-fun b!5103210 () Bool)

(declare-fun e!3182724 () Bool)

(declare-fun tp!1423412 () Bool)

(declare-fun tp!1423410 () Bool)

(assert (=> b!5103210 (= e!3182724 (and tp!1423412 tp!1423410))))

(declare-fun b!5103209 () Bool)

(declare-fun tp!1423409 () Bool)

(assert (=> b!5103209 (= e!3182724 tp!1423409)))

(declare-fun b!5103208 () Bool)

(declare-fun tp!1423413 () Bool)

(declare-fun tp!1423411 () Bool)

(assert (=> b!5103208 (= e!3182724 (and tp!1423413 tp!1423411))))

(assert (=> b!5102633 (= tp!1423334 e!3182724)))

(declare-fun b!5103207 () Bool)

(assert (=> b!5103207 (= e!3182724 tp_is_empty!37375)))

(assert (= (and b!5102633 ((_ is ElementMatch!14055) (regOne!28622 r!12920))) b!5103207))

(assert (= (and b!5102633 ((_ is Concat!22900) (regOne!28622 r!12920))) b!5103208))

(assert (= (and b!5102633 ((_ is Star!14055) (regOne!28622 r!12920))) b!5103209))

(assert (= (and b!5102633 ((_ is Union!14055) (regOne!28622 r!12920))) b!5103210))

(declare-fun b!5103214 () Bool)

(declare-fun e!3182725 () Bool)

(declare-fun tp!1423417 () Bool)

(declare-fun tp!1423415 () Bool)

(assert (=> b!5103214 (= e!3182725 (and tp!1423417 tp!1423415))))

(declare-fun b!5103213 () Bool)

(declare-fun tp!1423414 () Bool)

(assert (=> b!5103213 (= e!3182725 tp!1423414)))

(declare-fun b!5103212 () Bool)

(declare-fun tp!1423418 () Bool)

(declare-fun tp!1423416 () Bool)

(assert (=> b!5103212 (= e!3182725 (and tp!1423418 tp!1423416))))

(assert (=> b!5102633 (= tp!1423339 e!3182725)))

(declare-fun b!5103211 () Bool)

(assert (=> b!5103211 (= e!3182725 tp_is_empty!37375)))

(assert (= (and b!5102633 ((_ is ElementMatch!14055) (regTwo!28622 r!12920))) b!5103211))

(assert (= (and b!5102633 ((_ is Concat!22900) (regTwo!28622 r!12920))) b!5103212))

(assert (= (and b!5102633 ((_ is Star!14055) (regTwo!28622 r!12920))) b!5103213))

(assert (= (and b!5102633 ((_ is Union!14055) (regTwo!28622 r!12920))) b!5103214))

(declare-fun b!5103218 () Bool)

(declare-fun e!3182726 () Bool)

(declare-fun tp!1423422 () Bool)

(declare-fun tp!1423420 () Bool)

(assert (=> b!5103218 (= e!3182726 (and tp!1423422 tp!1423420))))

(declare-fun b!5103217 () Bool)

(declare-fun tp!1423419 () Bool)

(assert (=> b!5103217 (= e!3182726 tp!1423419)))

(declare-fun b!5103216 () Bool)

(declare-fun tp!1423423 () Bool)

(declare-fun tp!1423421 () Bool)

(assert (=> b!5103216 (= e!3182726 (and tp!1423423 tp!1423421))))

(assert (=> b!5102642 (= tp!1423338 e!3182726)))

(declare-fun b!5103215 () Bool)

(assert (=> b!5103215 (= e!3182726 tp_is_empty!37375)))

(assert (= (and b!5102642 ((_ is ElementMatch!14055) (regOne!28623 r!12920))) b!5103215))

(assert (= (and b!5102642 ((_ is Concat!22900) (regOne!28623 r!12920))) b!5103216))

(assert (= (and b!5102642 ((_ is Star!14055) (regOne!28623 r!12920))) b!5103217))

(assert (= (and b!5102642 ((_ is Union!14055) (regOne!28623 r!12920))) b!5103218))

(declare-fun b!5103222 () Bool)

(declare-fun e!3182727 () Bool)

(declare-fun tp!1423427 () Bool)

(declare-fun tp!1423425 () Bool)

(assert (=> b!5103222 (= e!3182727 (and tp!1423427 tp!1423425))))

(declare-fun b!5103221 () Bool)

(declare-fun tp!1423424 () Bool)

(assert (=> b!5103221 (= e!3182727 tp!1423424)))

(declare-fun b!5103220 () Bool)

(declare-fun tp!1423428 () Bool)

(declare-fun tp!1423426 () Bool)

(assert (=> b!5103220 (= e!3182727 (and tp!1423428 tp!1423426))))

(assert (=> b!5102642 (= tp!1423335 e!3182727)))

(declare-fun b!5103219 () Bool)

(assert (=> b!5103219 (= e!3182727 tp_is_empty!37375)))

(assert (= (and b!5102642 ((_ is ElementMatch!14055) (regTwo!28623 r!12920))) b!5103219))

(assert (= (and b!5102642 ((_ is Concat!22900) (regTwo!28623 r!12920))) b!5103220))

(assert (= (and b!5102642 ((_ is Star!14055) (regTwo!28623 r!12920))) b!5103221))

(assert (= (and b!5102642 ((_ is Union!14055) (regTwo!28623 r!12920))) b!5103222))

(declare-fun condSetEmpty!29266 () Bool)

(assert (=> setNonEmpty!29260 (= condSetEmpty!29266 (= setRest!29260 ((as const (Array Context!6878 Bool)) false)))))

(declare-fun setRes!29266 () Bool)

(assert (=> setNonEmpty!29260 (= tp!1423336 setRes!29266)))

(declare-fun setIsEmpty!29266 () Bool)

(assert (=> setIsEmpty!29266 setRes!29266))

(declare-fun setElem!29266 () Context!6878)

(declare-fun e!3182730 () Bool)

(declare-fun tp!1423434 () Bool)

(declare-fun setNonEmpty!29266 () Bool)

(assert (=> setNonEmpty!29266 (= setRes!29266 (and tp!1423434 (inv!78312 setElem!29266) e!3182730))))

(declare-fun setRest!29266 () (InoxSet Context!6878))

(assert (=> setNonEmpty!29266 (= setRest!29260 ((_ map or) (store ((as const (Array Context!6878 Bool)) false) setElem!29266 true) setRest!29266))))

(declare-fun b!5103227 () Bool)

(declare-fun tp!1423433 () Bool)

(assert (=> b!5103227 (= e!3182730 tp!1423433)))

(assert (= (and setNonEmpty!29260 condSetEmpty!29266) setIsEmpty!29266))

(assert (= (and setNonEmpty!29260 (not condSetEmpty!29266)) setNonEmpty!29266))

(assert (= setNonEmpty!29266 b!5103227))

(declare-fun m!6160512 () Bool)

(assert (=> setNonEmpty!29266 m!6160512))

(declare-fun b!5103231 () Bool)

(declare-fun e!3182731 () Bool)

(declare-fun tp!1423438 () Bool)

(declare-fun tp!1423436 () Bool)

(assert (=> b!5103231 (= e!3182731 (and tp!1423438 tp!1423436))))

(declare-fun b!5103230 () Bool)

(declare-fun tp!1423435 () Bool)

(assert (=> b!5103230 (= e!3182731 tp!1423435)))

(declare-fun b!5103229 () Bool)

(declare-fun tp!1423439 () Bool)

(declare-fun tp!1423437 () Bool)

(assert (=> b!5103229 (= e!3182731 (and tp!1423439 tp!1423437))))

(assert (=> b!5102631 (= tp!1423333 e!3182731)))

(declare-fun b!5103228 () Bool)

(assert (=> b!5103228 (= e!3182731 tp_is_empty!37375)))

(assert (= (and b!5102631 ((_ is ElementMatch!14055) (reg!14384 r!12920))) b!5103228))

(assert (= (and b!5102631 ((_ is Concat!22900) (reg!14384 r!12920))) b!5103229))

(assert (= (and b!5102631 ((_ is Star!14055) (reg!14384 r!12920))) b!5103230))

(assert (= (and b!5102631 ((_ is Union!14055) (reg!14384 r!12920))) b!5103231))

(check-sat (not b!5102806) (not b!5102798) (not bm!355520) (not d!1650337) (not d!1650333) (not b!5102971) (not b!5102946) (not b!5103216) (not b!5103229) (not d!1650367) (not b!5103222) (not b!5103212) (not b!5102747) (not b!5102969) (not b!5102967) (not b!5102836) (not d!1650369) (not b!5102974) (not b!5102981) (not b!5102983) (not bm!355602) (not b!5103191) (not bm!355497) (not b!5102800) (not bm!355517) (not b!5102750) (not d!1650297) (not b!5102838) (not b!5102808) (not bm!355521) (not d!1650275) (not d!1650279) (not b!5102792) (not b!5102878) (not d!1650273) (not b!5102978) (not b!5102834) (not d!1650289) (not d!1650331) (not d!1650339) (not b!5103209) (not b!5103218) (not b!5103214) (not bm!355514) (not b!5102985) (not b!5102973) (not b!5102968) (not b!5103217) (not b!5102953) (not b!5102746) (not b!5103227) (not bm!355546) (not b!5102805) (not bm!355519) (not d!1650245) (not b!5102833) (not b!5102822) (not bm!355496) (not b!5102650) (not b!5102793) (not d!1650323) (not b!5102867) (not b!5103159) (not b!5102789) (not d!1650295) (not b!5102972) (not bm!355604) (not d!1650267) (not b!5102876) (not setNonEmpty!29266) (not d!1650241) (not b!5103208) (not d!1650277) (not b!5103183) (not b!5102828) (not bm!355486) (not bm!355518) (not b!5103196) (not bm!355545) (not b!5102984) (not b!5103231) (not b!5102832) (not b!5102826) (not bm!355543) tp_is_empty!37375 (not b!5102788) (not bm!355541) (not b!5103210) (not b!5103220) (not d!1650271) (not b!5102975) (not b!5103213) (not bm!355515) (not b!5102814) (not b!5102820) (not b!5102872) (not bm!355516) (not b!5102951) (not bm!355539) (not d!1650281) (not bm!355540) (not bm!355544) (not b!5102742) (not b!5103230) (not b!5102813) (not b!5102748) (not d!1650321) (not bm!355542) (not b!5102740) (not b!5102804) (not b!5102957) (not b!5103221) (not d!1650285) (not d!1650327))
(check-sat)
