; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547344 () Bool)

(assert start!547344)

(declare-fun setIsEmpty!32019 () Bool)

(declare-fun setRes!32020 () Bool)

(assert (=> setIsEmpty!32019 setRes!32020))

(declare-fun b!5171146 () Bool)

(declare-fun e!3222126 () Bool)

(declare-fun e!3222132 () Bool)

(assert (=> b!5171146 (= e!3222126 e!3222132)))

(declare-fun res!2197938 () Bool)

(assert (=> b!5171146 (=> res!2197938 e!3222132)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29512 0))(
  ( (C!29513 (val!24458 Int)) )
))
(declare-datatypes ((Regex!14621 0))(
  ( (ElementMatch!14621 (c!890112 C!29512)) (Concat!23466 (regOne!29754 Regex!14621) (regTwo!29754 Regex!14621)) (EmptyExpr!14621) (Star!14621 (reg!14950 Regex!14621)) (EmptyLang!14621) (Union!14621 (regOne!29755 Regex!14621) (regTwo!29755 Regex!14621)) )
))
(declare-datatypes ((List!60207 0))(
  ( (Nil!60083) (Cons!60083 (h!66531 Regex!14621) (t!373360 List!60207)) )
))
(declare-datatypes ((Context!8010 0))(
  ( (Context!8011 (exprs!4505 List!60207)) )
))
(declare-fun z!4581 () (InoxSet Context!8010))

(declare-fun nullableZipper!1167 ((InoxSet Context!8010)) Bool)

(assert (=> b!5171146 (= res!2197938 (not (nullableZipper!1167 z!4581)))))

(declare-datatypes ((List!60208 0))(
  ( (Nil!60084) (Cons!60084 (h!66532 C!29512) (t!373361 List!60208)) )
))
(declare-fun lt!2128730 () List!60208)

(declare-fun input!5817 () List!60208)

(declare-fun isPrefix!5754 (List!60208 List!60208) Bool)

(assert (=> b!5171146 (isPrefix!5754 lt!2128730 input!5817)))

(declare-datatypes ((Unit!151730 0))(
  ( (Unit!151731) )
))
(declare-fun lt!2128725 () Unit!151730)

(declare-fun testedP!294 () List!60208)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1067 (List!60208 List!60208) Unit!151730)

(assert (=> b!5171146 (= lt!2128725 (lemmaAddHeadSuffixToPrefixStillPrefix!1067 testedP!294 input!5817))))

(declare-fun lt!2128733 () C!29512)

(declare-fun ++!13145 (List!60208 List!60208) List!60208)

(assert (=> b!5171146 (= lt!2128730 (++!13145 testedP!294 (Cons!60084 lt!2128733 Nil!60084)))))

(declare-fun lt!2128723 () List!60208)

(declare-fun head!11045 (List!60208) C!29512)

(assert (=> b!5171146 (= lt!2128733 (head!11045 lt!2128723))))

(declare-fun setIsEmpty!32020 () Bool)

(declare-fun setRes!32019 () Bool)

(assert (=> setIsEmpty!32020 setRes!32019))

(declare-fun b!5171147 () Bool)

(declare-fun e!3222136 () Unit!151730)

(declare-fun Unit!151732 () Unit!151730)

(assert (=> b!5171147 (= e!3222136 Unit!151732)))

(declare-fun lt!2128729 () Unit!151730)

(declare-fun lemmaIsPrefixRefl!3761 (List!60208 List!60208) Unit!151730)

(assert (=> b!5171147 (= lt!2128729 (lemmaIsPrefixRefl!3761 input!5817 input!5817))))

(assert (=> b!5171147 (isPrefix!5754 input!5817 input!5817)))

(declare-fun lt!2128731 () Unit!151730)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1403 (List!60208 List!60208 List!60208) Unit!151730)

(assert (=> b!5171147 (= lt!2128731 (lemmaIsPrefixSameLengthThenSameList!1403 input!5817 testedP!294 input!5817))))

(assert (=> b!5171147 false))

(declare-fun b!5171148 () Bool)

(declare-fun res!2197941 () Bool)

(declare-fun e!3222133 () Bool)

(assert (=> b!5171148 (=> (not res!2197941) (not e!3222133))))

(assert (=> b!5171148 (= res!2197941 (not (= testedP!294 input!5817)))))

(declare-fun b!5171149 () Bool)

(declare-fun e!3222135 () Bool)

(declare-fun tp_is_empty!38495 () Bool)

(declare-fun tp!1450730 () Bool)

(assert (=> b!5171149 (= e!3222135 (and tp_is_empty!38495 tp!1450730))))

(declare-fun b!5171151 () Bool)

(declare-fun res!2197940 () Bool)

(declare-fun e!3222131 () Bool)

(assert (=> b!5171151 (=> (not res!2197940) (not e!3222131))))

(declare-fun baseZ!62 () (InoxSet Context!8010))

(declare-fun derivationZipper!244 ((InoxSet Context!8010) List!60208) (InoxSet Context!8010))

(assert (=> b!5171151 (= res!2197940 (= (derivationZipper!244 baseZ!62 testedP!294) z!4581))))

(declare-fun tp!1450727 () Bool)

(declare-fun setElem!32019 () Context!8010)

(declare-fun setNonEmpty!32019 () Bool)

(declare-fun e!3222128 () Bool)

(declare-fun inv!79799 (Context!8010) Bool)

(assert (=> setNonEmpty!32019 (= setRes!32019 (and tp!1450727 (inv!79799 setElem!32019) e!3222128))))

(declare-fun setRest!32020 () (InoxSet Context!8010))

(assert (=> setNonEmpty!32019 (= z!4581 ((_ map or) (store ((as const (Array Context!8010 Bool)) false) setElem!32019 true) setRest!32020))))

(declare-fun e!3222130 () Bool)

(declare-fun b!5171152 () Bool)

(assert (=> b!5171152 (= e!3222130 (= (++!13145 testedP!294 lt!2128723) input!5817))))

(declare-fun e!3222134 () Bool)

(assert (=> b!5171152 e!3222134))

(declare-fun res!2197942 () Bool)

(assert (=> b!5171152 (=> res!2197942 e!3222134)))

(declare-datatypes ((tuple2!63796 0))(
  ( (tuple2!63797 (_1!35201 List!60208) (_2!35201 List!60208)) )
))
(declare-fun lt!2128735 () tuple2!63796)

(declare-fun isEmpty!32169 (List!60208) Bool)

(assert (=> b!5171152 (= res!2197942 (isEmpty!32169 (_1!35201 lt!2128735)))))

(declare-fun lt!2128734 () Int)

(declare-fun lt!2128728 () (InoxSet Context!8010))

(declare-fun findLongestMatchInnerZipper!279 ((InoxSet Context!8010) List!60208 Int List!60208 List!60208 Int) tuple2!63796)

(declare-fun size!39657 (List!60208) Int)

(declare-fun getSuffix!3404 (List!60208 List!60208) List!60208)

(assert (=> b!5171152 (= lt!2128735 (findLongestMatchInnerZipper!279 lt!2128728 lt!2128730 (size!39657 lt!2128730) (getSuffix!3404 input!5817 lt!2128730) input!5817 lt!2128734))))

(declare-fun lt!2128726 () Unit!151730)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!17 ((InoxSet Context!8010) (InoxSet Context!8010) List!60208 List!60208) Unit!151730)

(assert (=> b!5171152 (= lt!2128726 (longestMatchIsAcceptedByMatchOrIsEmptyRec!17 baseZ!62 lt!2128728 lt!2128730 input!5817))))

(assert (=> b!5171152 (= (derivationZipper!244 baseZ!62 lt!2128730) lt!2128728)))

(declare-fun lt!2128727 () Unit!151730)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!95 ((InoxSet Context!8010) (InoxSet Context!8010) List!60208 C!29512) Unit!151730)

(assert (=> b!5171152 (= lt!2128727 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!95 baseZ!62 z!4581 testedP!294 lt!2128733))))

(declare-fun b!5171153 () Bool)

(assert (=> b!5171153 (= e!3222131 e!3222133)))

(declare-fun res!2197943 () Bool)

(assert (=> b!5171153 (=> (not res!2197943) (not e!3222133))))

(declare-fun lt!2128732 () Int)

(assert (=> b!5171153 (= res!2197943 (not (isEmpty!32169 (_1!35201 (findLongestMatchInnerZipper!279 z!4581 testedP!294 lt!2128732 lt!2128723 input!5817 lt!2128734)))))))

(assert (=> b!5171153 (= lt!2128734 (size!39657 input!5817))))

(assert (=> b!5171153 (= lt!2128723 (getSuffix!3404 input!5817 testedP!294))))

(assert (=> b!5171153 (= lt!2128732 (size!39657 testedP!294))))

(declare-fun b!5171154 () Bool)

(declare-fun e!3222127 () Bool)

(declare-fun tp!1450726 () Bool)

(assert (=> b!5171154 (= e!3222127 tp!1450726)))

(declare-fun b!5171155 () Bool)

(declare-fun Unit!151733 () Unit!151730)

(assert (=> b!5171155 (= e!3222136 Unit!151733)))

(declare-fun b!5171156 () Bool)

(declare-fun tp!1450728 () Bool)

(assert (=> b!5171156 (= e!3222128 tp!1450728)))

(declare-fun b!5171157 () Bool)

(assert (=> b!5171157 (= e!3222132 e!3222130)))

(declare-fun res!2197939 () Bool)

(assert (=> b!5171157 (=> res!2197939 e!3222130)))

(declare-fun tail!10154 (List!60208) List!60208)

(assert (=> b!5171157 (= res!2197939 (isEmpty!32169 (_1!35201 (findLongestMatchInnerZipper!279 lt!2128728 lt!2128730 (+ 1 lt!2128732) (tail!10154 lt!2128723) input!5817 lt!2128734))))))

(declare-fun derivationStepZipper!975 ((InoxSet Context!8010) C!29512) (InoxSet Context!8010))

(assert (=> b!5171157 (= lt!2128728 (derivationStepZipper!975 z!4581 lt!2128733))))

(declare-fun setElem!32020 () Context!8010)

(declare-fun tp!1450731 () Bool)

(declare-fun setNonEmpty!32020 () Bool)

(assert (=> setNonEmpty!32020 (= setRes!32020 (and tp!1450731 (inv!79799 setElem!32020) e!3222127))))

(declare-fun setRest!32019 () (InoxSet Context!8010))

(assert (=> setNonEmpty!32020 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8010 Bool)) false) setElem!32020 true) setRest!32019))))

(declare-fun b!5171158 () Bool)

(declare-fun e!3222129 () Bool)

(declare-fun tp!1450729 () Bool)

(assert (=> b!5171158 (= e!3222129 (and tp_is_empty!38495 tp!1450729))))

(declare-fun b!5171159 () Bool)

(declare-fun matchZipper!969 ((InoxSet Context!8010) List!60208) Bool)

(assert (=> b!5171159 (= e!3222134 (matchZipper!969 baseZ!62 (_1!35201 lt!2128735)))))

(declare-fun b!5171150 () Bool)

(assert (=> b!5171150 (= e!3222133 (not e!3222126))))

(declare-fun res!2197937 () Bool)

(assert (=> b!5171150 (=> res!2197937 e!3222126)))

(assert (=> b!5171150 (= res!2197937 (>= lt!2128732 lt!2128734))))

(declare-fun lt!2128736 () Unit!151730)

(assert (=> b!5171150 (= lt!2128736 e!3222136)))

(declare-fun c!890111 () Bool)

(assert (=> b!5171150 (= c!890111 (= lt!2128732 lt!2128734))))

(assert (=> b!5171150 (<= lt!2128732 lt!2128734)))

(declare-fun lt!2128724 () Unit!151730)

(declare-fun lemmaIsPrefixThenSmallerEqSize!917 (List!60208 List!60208) Unit!151730)

(assert (=> b!5171150 (= lt!2128724 (lemmaIsPrefixThenSmallerEqSize!917 testedP!294 input!5817))))

(declare-fun res!2197944 () Bool)

(assert (=> start!547344 (=> (not res!2197944) (not e!3222131))))

(assert (=> start!547344 (= res!2197944 (isPrefix!5754 testedP!294 input!5817))))

(assert (=> start!547344 e!3222131))

(assert (=> start!547344 e!3222135))

(assert (=> start!547344 e!3222129))

(declare-fun condSetEmpty!32019 () Bool)

(assert (=> start!547344 (= condSetEmpty!32019 (= baseZ!62 ((as const (Array Context!8010 Bool)) false)))))

(assert (=> start!547344 setRes!32020))

(declare-fun condSetEmpty!32020 () Bool)

(assert (=> start!547344 (= condSetEmpty!32020 (= z!4581 ((as const (Array Context!8010 Bool)) false)))))

(assert (=> start!547344 setRes!32019))

(assert (= (and start!547344 res!2197944) b!5171151))

(assert (= (and b!5171151 res!2197940) b!5171153))

(assert (= (and b!5171153 res!2197943) b!5171148))

(assert (= (and b!5171148 res!2197941) b!5171150))

(assert (= (and b!5171150 c!890111) b!5171147))

(assert (= (and b!5171150 (not c!890111)) b!5171155))

(assert (= (and b!5171150 (not res!2197937)) b!5171146))

(assert (= (and b!5171146 (not res!2197938)) b!5171157))

(assert (= (and b!5171157 (not res!2197939)) b!5171152))

(assert (= (and b!5171152 (not res!2197942)) b!5171159))

(get-info :version)

(assert (= (and start!547344 ((_ is Cons!60084) testedP!294)) b!5171149))

(assert (= (and start!547344 ((_ is Cons!60084) input!5817)) b!5171158))

(assert (= (and start!547344 condSetEmpty!32019) setIsEmpty!32019))

(assert (= (and start!547344 (not condSetEmpty!32019)) setNonEmpty!32020))

(assert (= setNonEmpty!32020 b!5171154))

(assert (= (and start!547344 condSetEmpty!32020) setIsEmpty!32020))

(assert (= (and start!547344 (not condSetEmpty!32020)) setNonEmpty!32019))

(assert (= setNonEmpty!32019 b!5171156))

(declare-fun m!6223966 () Bool)

(assert (=> b!5171153 m!6223966))

(declare-fun m!6223968 () Bool)

(assert (=> b!5171153 m!6223968))

(declare-fun m!6223970 () Bool)

(assert (=> b!5171153 m!6223970))

(declare-fun m!6223972 () Bool)

(assert (=> b!5171153 m!6223972))

(declare-fun m!6223974 () Bool)

(assert (=> b!5171153 m!6223974))

(declare-fun m!6223976 () Bool)

(assert (=> b!5171157 m!6223976))

(assert (=> b!5171157 m!6223976))

(declare-fun m!6223978 () Bool)

(assert (=> b!5171157 m!6223978))

(declare-fun m!6223980 () Bool)

(assert (=> b!5171157 m!6223980))

(declare-fun m!6223982 () Bool)

(assert (=> b!5171157 m!6223982))

(declare-fun m!6223984 () Bool)

(assert (=> b!5171146 m!6223984))

(declare-fun m!6223986 () Bool)

(assert (=> b!5171146 m!6223986))

(declare-fun m!6223988 () Bool)

(assert (=> b!5171146 m!6223988))

(declare-fun m!6223990 () Bool)

(assert (=> b!5171146 m!6223990))

(declare-fun m!6223992 () Bool)

(assert (=> b!5171146 m!6223992))

(declare-fun m!6223994 () Bool)

(assert (=> b!5171151 m!6223994))

(declare-fun m!6223996 () Bool)

(assert (=> setNonEmpty!32020 m!6223996))

(declare-fun m!6223998 () Bool)

(assert (=> b!5171147 m!6223998))

(declare-fun m!6224000 () Bool)

(assert (=> b!5171147 m!6224000))

(declare-fun m!6224002 () Bool)

(assert (=> b!5171147 m!6224002))

(declare-fun m!6224004 () Bool)

(assert (=> start!547344 m!6224004))

(declare-fun m!6224006 () Bool)

(assert (=> b!5171150 m!6224006))

(declare-fun m!6224008 () Bool)

(assert (=> b!5171152 m!6224008))

(declare-fun m!6224010 () Bool)

(assert (=> b!5171152 m!6224010))

(declare-fun m!6224012 () Bool)

(assert (=> b!5171152 m!6224012))

(declare-fun m!6224014 () Bool)

(assert (=> b!5171152 m!6224014))

(declare-fun m!6224016 () Bool)

(assert (=> b!5171152 m!6224016))

(assert (=> b!5171152 m!6224008))

(assert (=> b!5171152 m!6224012))

(declare-fun m!6224018 () Bool)

(assert (=> b!5171152 m!6224018))

(declare-fun m!6224020 () Bool)

(assert (=> b!5171152 m!6224020))

(declare-fun m!6224022 () Bool)

(assert (=> b!5171152 m!6224022))

(declare-fun m!6224024 () Bool)

(assert (=> setNonEmpty!32019 m!6224024))

(declare-fun m!6224026 () Bool)

(assert (=> b!5171159 m!6224026))

(check-sat (not start!547344) (not b!5171152) (not b!5171154) (not b!5171158) (not b!5171156) (not b!5171159) (not b!5171150) (not b!5171157) (not setNonEmpty!32019) (not b!5171151) (not b!5171146) (not setNonEmpty!32020) (not b!5171147) (not b!5171153) (not b!5171149) tp_is_empty!38495)
(check-sat)
(get-model)

(declare-fun b!5171170 () Bool)

(declare-fun res!2197949 () Bool)

(declare-fun e!3222141 () Bool)

(assert (=> b!5171170 (=> (not res!2197949) (not e!3222141))))

(declare-fun lt!2128739 () List!60208)

(assert (=> b!5171170 (= res!2197949 (= (size!39657 lt!2128739) (+ (size!39657 testedP!294) (size!39657 (Cons!60084 lt!2128733 Nil!60084)))))))

(declare-fun d!1668862 () Bool)

(assert (=> d!1668862 e!3222141))

(declare-fun res!2197950 () Bool)

(assert (=> d!1668862 (=> (not res!2197950) (not e!3222141))))

(declare-fun content!10646 (List!60208) (InoxSet C!29512))

(assert (=> d!1668862 (= res!2197950 (= (content!10646 lt!2128739) ((_ map or) (content!10646 testedP!294) (content!10646 (Cons!60084 lt!2128733 Nil!60084)))))))

(declare-fun e!3222142 () List!60208)

(assert (=> d!1668862 (= lt!2128739 e!3222142)))

(declare-fun c!890115 () Bool)

(assert (=> d!1668862 (= c!890115 ((_ is Nil!60084) testedP!294))))

(assert (=> d!1668862 (= (++!13145 testedP!294 (Cons!60084 lt!2128733 Nil!60084)) lt!2128739)))

(declare-fun b!5171171 () Bool)

(assert (=> b!5171171 (= e!3222141 (or (not (= (Cons!60084 lt!2128733 Nil!60084) Nil!60084)) (= lt!2128739 testedP!294)))))

(declare-fun b!5171169 () Bool)

(assert (=> b!5171169 (= e!3222142 (Cons!60084 (h!66532 testedP!294) (++!13145 (t!373361 testedP!294) (Cons!60084 lt!2128733 Nil!60084))))))

(declare-fun b!5171168 () Bool)

(assert (=> b!5171168 (= e!3222142 (Cons!60084 lt!2128733 Nil!60084))))

(assert (= (and d!1668862 c!890115) b!5171168))

(assert (= (and d!1668862 (not c!890115)) b!5171169))

(assert (= (and d!1668862 res!2197950) b!5171170))

(assert (= (and b!5171170 res!2197949) b!5171171))

(declare-fun m!6224028 () Bool)

(assert (=> b!5171170 m!6224028))

(assert (=> b!5171170 m!6223966))

(declare-fun m!6224030 () Bool)

(assert (=> b!5171170 m!6224030))

(declare-fun m!6224032 () Bool)

(assert (=> d!1668862 m!6224032))

(declare-fun m!6224034 () Bool)

(assert (=> d!1668862 m!6224034))

(declare-fun m!6224036 () Bool)

(assert (=> d!1668862 m!6224036))

(declare-fun m!6224038 () Bool)

(assert (=> b!5171169 m!6224038))

(assert (=> b!5171146 d!1668862))

(declare-fun b!5171182 () Bool)

(declare-fun e!3222151 () Bool)

(assert (=> b!5171182 (= e!3222151 (isPrefix!5754 (tail!10154 lt!2128730) (tail!10154 input!5817)))))

(declare-fun d!1668866 () Bool)

(declare-fun e!3222150 () Bool)

(assert (=> d!1668866 e!3222150))

(declare-fun res!2197962 () Bool)

(assert (=> d!1668866 (=> res!2197962 e!3222150)))

(declare-fun lt!2128742 () Bool)

(assert (=> d!1668866 (= res!2197962 (not lt!2128742))))

(declare-fun e!3222149 () Bool)

(assert (=> d!1668866 (= lt!2128742 e!3222149)))

(declare-fun res!2197959 () Bool)

(assert (=> d!1668866 (=> res!2197959 e!3222149)))

(assert (=> d!1668866 (= res!2197959 ((_ is Nil!60084) lt!2128730))))

(assert (=> d!1668866 (= (isPrefix!5754 lt!2128730 input!5817) lt!2128742)))

(declare-fun b!5171183 () Bool)

(assert (=> b!5171183 (= e!3222150 (>= (size!39657 input!5817) (size!39657 lt!2128730)))))

(declare-fun b!5171181 () Bool)

(declare-fun res!2197960 () Bool)

(assert (=> b!5171181 (=> (not res!2197960) (not e!3222151))))

(assert (=> b!5171181 (= res!2197960 (= (head!11045 lt!2128730) (head!11045 input!5817)))))

(declare-fun b!5171180 () Bool)

(assert (=> b!5171180 (= e!3222149 e!3222151)))

(declare-fun res!2197961 () Bool)

(assert (=> b!5171180 (=> (not res!2197961) (not e!3222151))))

(assert (=> b!5171180 (= res!2197961 (not ((_ is Nil!60084) input!5817)))))

(assert (= (and d!1668866 (not res!2197959)) b!5171180))

(assert (= (and b!5171180 res!2197961) b!5171181))

(assert (= (and b!5171181 res!2197960) b!5171182))

(assert (= (and d!1668866 (not res!2197962)) b!5171183))

(declare-fun m!6224040 () Bool)

(assert (=> b!5171182 m!6224040))

(declare-fun m!6224042 () Bool)

(assert (=> b!5171182 m!6224042))

(assert (=> b!5171182 m!6224040))

(assert (=> b!5171182 m!6224042))

(declare-fun m!6224044 () Bool)

(assert (=> b!5171182 m!6224044))

(assert (=> b!5171183 m!6223972))

(assert (=> b!5171183 m!6224008))

(declare-fun m!6224046 () Bool)

(assert (=> b!5171181 m!6224046))

(declare-fun m!6224048 () Bool)

(assert (=> b!5171181 m!6224048))

(assert (=> b!5171146 d!1668866))

(declare-fun d!1668870 () Bool)

(assert (=> d!1668870 (isPrefix!5754 (++!13145 testedP!294 (Cons!60084 (head!11045 (getSuffix!3404 input!5817 testedP!294)) Nil!60084)) input!5817)))

(declare-fun lt!2128745 () Unit!151730)

(declare-fun choose!38315 (List!60208 List!60208) Unit!151730)

(assert (=> d!1668870 (= lt!2128745 (choose!38315 testedP!294 input!5817))))

(assert (=> d!1668870 (isPrefix!5754 testedP!294 input!5817)))

(assert (=> d!1668870 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1067 testedP!294 input!5817) lt!2128745)))

(declare-fun bs!1203594 () Bool)

(assert (= bs!1203594 d!1668870))

(assert (=> bs!1203594 m!6224004))

(declare-fun m!6224050 () Bool)

(assert (=> bs!1203594 m!6224050))

(assert (=> bs!1203594 m!6223970))

(assert (=> bs!1203594 m!6223970))

(declare-fun m!6224052 () Bool)

(assert (=> bs!1203594 m!6224052))

(declare-fun m!6224054 () Bool)

(assert (=> bs!1203594 m!6224054))

(declare-fun m!6224056 () Bool)

(assert (=> bs!1203594 m!6224056))

(assert (=> bs!1203594 m!6224054))

(assert (=> b!5171146 d!1668870))

(declare-fun d!1668872 () Bool)

(declare-fun lambda!258176 () Int)

(declare-fun exists!1915 ((InoxSet Context!8010) Int) Bool)

(assert (=> d!1668872 (= (nullableZipper!1167 z!4581) (exists!1915 z!4581 lambda!258176))))

(declare-fun bs!1203595 () Bool)

(assert (= bs!1203595 d!1668872))

(declare-fun m!6224106 () Bool)

(assert (=> bs!1203595 m!6224106))

(assert (=> b!5171146 d!1668872))

(declare-fun d!1668878 () Bool)

(assert (=> d!1668878 (= (head!11045 lt!2128723) (h!66532 lt!2128723))))

(assert (=> b!5171146 d!1668878))

(declare-fun d!1668880 () Bool)

(declare-fun c!890140 () Bool)

(assert (=> d!1668880 (= c!890140 (isEmpty!32169 (_1!35201 lt!2128735)))))

(declare-fun e!3222178 () Bool)

(assert (=> d!1668880 (= (matchZipper!969 baseZ!62 (_1!35201 lt!2128735)) e!3222178)))

(declare-fun b!5171230 () Bool)

(assert (=> b!5171230 (= e!3222178 (nullableZipper!1167 baseZ!62))))

(declare-fun b!5171231 () Bool)

(assert (=> b!5171231 (= e!3222178 (matchZipper!969 (derivationStepZipper!975 baseZ!62 (head!11045 (_1!35201 lt!2128735))) (tail!10154 (_1!35201 lt!2128735))))))

(assert (= (and d!1668880 c!890140) b!5171230))

(assert (= (and d!1668880 (not c!890140)) b!5171231))

(assert (=> d!1668880 m!6224014))

(declare-fun m!6224108 () Bool)

(assert (=> b!5171230 m!6224108))

(declare-fun m!6224110 () Bool)

(assert (=> b!5171231 m!6224110))

(assert (=> b!5171231 m!6224110))

(declare-fun m!6224112 () Bool)

(assert (=> b!5171231 m!6224112))

(declare-fun m!6224114 () Bool)

(assert (=> b!5171231 m!6224114))

(assert (=> b!5171231 m!6224112))

(assert (=> b!5171231 m!6224114))

(declare-fun m!6224116 () Bool)

(assert (=> b!5171231 m!6224116))

(assert (=> b!5171159 d!1668880))

(declare-fun d!1668882 () Bool)

(declare-fun c!890143 () Bool)

(assert (=> d!1668882 (= c!890143 ((_ is Cons!60084) testedP!294))))

(declare-fun e!3222181 () (InoxSet Context!8010))

(assert (=> d!1668882 (= (derivationZipper!244 baseZ!62 testedP!294) e!3222181)))

(declare-fun b!5171236 () Bool)

(assert (=> b!5171236 (= e!3222181 (derivationZipper!244 (derivationStepZipper!975 baseZ!62 (h!66532 testedP!294)) (t!373361 testedP!294)))))

(declare-fun b!5171237 () Bool)

(assert (=> b!5171237 (= e!3222181 baseZ!62)))

(assert (= (and d!1668882 c!890143) b!5171236))

(assert (= (and d!1668882 (not c!890143)) b!5171237))

(declare-fun m!6224118 () Bool)

(assert (=> b!5171236 m!6224118))

(assert (=> b!5171236 m!6224118))

(declare-fun m!6224120 () Bool)

(assert (=> b!5171236 m!6224120))

(assert (=> b!5171151 d!1668882))

(declare-fun d!1668884 () Bool)

(assert (=> d!1668884 (<= (size!39657 testedP!294) (size!39657 input!5817))))

(declare-fun lt!2128826 () Unit!151730)

(declare-fun choose!38316 (List!60208 List!60208) Unit!151730)

(assert (=> d!1668884 (= lt!2128826 (choose!38316 testedP!294 input!5817))))

(assert (=> d!1668884 (isPrefix!5754 testedP!294 input!5817)))

(assert (=> d!1668884 (= (lemmaIsPrefixThenSmallerEqSize!917 testedP!294 input!5817) lt!2128826)))

(declare-fun bs!1203596 () Bool)

(assert (= bs!1203596 d!1668884))

(assert (=> bs!1203596 m!6223966))

(assert (=> bs!1203596 m!6223972))

(declare-fun m!6224122 () Bool)

(assert (=> bs!1203596 m!6224122))

(assert (=> bs!1203596 m!6224004))

(assert (=> b!5171150 d!1668884))

(declare-fun d!1668886 () Bool)

(declare-fun lt!2128829 () List!60208)

(assert (=> d!1668886 (= (++!13145 lt!2128730 lt!2128829) input!5817)))

(declare-fun e!3222184 () List!60208)

(assert (=> d!1668886 (= lt!2128829 e!3222184)))

(declare-fun c!890146 () Bool)

(assert (=> d!1668886 (= c!890146 ((_ is Cons!60084) lt!2128730))))

(assert (=> d!1668886 (>= (size!39657 input!5817) (size!39657 lt!2128730))))

(assert (=> d!1668886 (= (getSuffix!3404 input!5817 lt!2128730) lt!2128829)))

(declare-fun b!5171242 () Bool)

(assert (=> b!5171242 (= e!3222184 (getSuffix!3404 (tail!10154 input!5817) (t!373361 lt!2128730)))))

(declare-fun b!5171243 () Bool)

(assert (=> b!5171243 (= e!3222184 input!5817)))

(assert (= (and d!1668886 c!890146) b!5171242))

(assert (= (and d!1668886 (not c!890146)) b!5171243))

(declare-fun m!6224124 () Bool)

(assert (=> d!1668886 m!6224124))

(assert (=> d!1668886 m!6223972))

(assert (=> d!1668886 m!6224008))

(assert (=> b!5171242 m!6224042))

(assert (=> b!5171242 m!6224042))

(declare-fun m!6224126 () Bool)

(assert (=> b!5171242 m!6224126))

(assert (=> b!5171152 d!1668886))

(declare-fun b!5171390 () Bool)

(declare-fun e!3222273 () tuple2!63796)

(declare-fun call!363044 () tuple2!63796)

(assert (=> b!5171390 (= e!3222273 call!363044)))

(declare-fun bm!363039 () Bool)

(declare-fun call!363048 () (InoxSet Context!8010))

(declare-fun call!363049 () C!29512)

(assert (=> bm!363039 (= call!363048 (derivationStepZipper!975 lt!2128728 call!363049))))

(declare-fun bm!363040 () Bool)

(declare-fun call!363046 () List!60208)

(assert (=> bm!363040 (= call!363046 (tail!10154 (getSuffix!3404 input!5817 lt!2128730)))))

(declare-fun b!5171391 () Bool)

(declare-fun e!3222271 () tuple2!63796)

(assert (=> b!5171391 (= e!3222271 (tuple2!63797 lt!2128730 Nil!60084))))

(declare-fun b!5171392 () Bool)

(assert (=> b!5171392 (= e!3222271 (tuple2!63797 Nil!60084 input!5817))))

(declare-fun b!5171393 () Bool)

(declare-fun e!3222276 () tuple2!63796)

(declare-fun e!3222274 () tuple2!63796)

(assert (=> b!5171393 (= e!3222276 e!3222274)))

(declare-fun c!890194 () Bool)

(assert (=> b!5171393 (= c!890194 (= (size!39657 lt!2128730) lt!2128734))))

(declare-fun bm!363041 () Bool)

(declare-fun call!363051 () Unit!151730)

(assert (=> bm!363041 (= call!363051 (lemmaIsPrefixSameLengthThenSameList!1403 input!5817 lt!2128730 input!5817))))

(declare-fun b!5171394 () Bool)

(declare-fun c!890197 () Bool)

(declare-fun call!363050 () Bool)

(assert (=> b!5171394 (= c!890197 call!363050)))

(declare-fun lt!2128984 () Unit!151730)

(declare-fun lt!2128972 () Unit!151730)

(assert (=> b!5171394 (= lt!2128984 lt!2128972)))

(declare-fun lt!2128993 () List!60208)

(declare-fun lt!2128979 () C!29512)

(assert (=> b!5171394 (= (++!13145 (++!13145 lt!2128730 (Cons!60084 lt!2128979 Nil!60084)) lt!2128993) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1576 (List!60208 C!29512 List!60208 List!60208) Unit!151730)

(assert (=> b!5171394 (= lt!2128972 (lemmaMoveElementToOtherListKeepsConcatEq!1576 lt!2128730 lt!2128979 lt!2128993 input!5817))))

(assert (=> b!5171394 (= lt!2128993 (tail!10154 (getSuffix!3404 input!5817 lt!2128730)))))

(assert (=> b!5171394 (= lt!2128979 (head!11045 (getSuffix!3404 input!5817 lt!2128730)))))

(declare-fun lt!2128991 () Unit!151730)

(declare-fun lt!2128978 () Unit!151730)

(assert (=> b!5171394 (= lt!2128991 lt!2128978)))

(assert (=> b!5171394 (isPrefix!5754 (++!13145 lt!2128730 (Cons!60084 (head!11045 (getSuffix!3404 input!5817 lt!2128730)) Nil!60084)) input!5817)))

(assert (=> b!5171394 (= lt!2128978 (lemmaAddHeadSuffixToPrefixStillPrefix!1067 lt!2128730 input!5817))))

(declare-fun lt!2128994 () List!60208)

(assert (=> b!5171394 (= lt!2128994 (++!13145 lt!2128730 (Cons!60084 (head!11045 (getSuffix!3404 input!5817 lt!2128730)) Nil!60084)))))

(declare-fun lt!2128986 () Unit!151730)

(declare-fun e!3222275 () Unit!151730)

(assert (=> b!5171394 (= lt!2128986 e!3222275)))

(declare-fun c!890198 () Bool)

(assert (=> b!5171394 (= c!890198 (= (size!39657 lt!2128730) (size!39657 input!5817)))))

(declare-fun lt!2128989 () Unit!151730)

(declare-fun lt!2128980 () Unit!151730)

(assert (=> b!5171394 (= lt!2128989 lt!2128980)))

(assert (=> b!5171394 (<= (size!39657 lt!2128730) (size!39657 input!5817))))

(assert (=> b!5171394 (= lt!2128980 (lemmaIsPrefixThenSmallerEqSize!917 lt!2128730 input!5817))))

(assert (=> b!5171394 (= e!3222274 e!3222273)))

(declare-fun bm!363042 () Bool)

(assert (=> bm!363042 (= call!363049 (head!11045 (getSuffix!3404 input!5817 lt!2128730)))))

(declare-fun bm!363043 () Bool)

(declare-fun call!363045 () Bool)

(assert (=> bm!363043 (= call!363045 (isPrefix!5754 input!5817 input!5817))))

(declare-fun b!5171395 () Bool)

(declare-fun e!3222270 () Bool)

(declare-fun e!3222277 () Bool)

(assert (=> b!5171395 (= e!3222270 e!3222277)))

(declare-fun res!2198009 () Bool)

(assert (=> b!5171395 (=> res!2198009 e!3222277)))

(declare-fun lt!2128985 () tuple2!63796)

(assert (=> b!5171395 (= res!2198009 (isEmpty!32169 (_1!35201 lt!2128985)))))

(declare-fun b!5171396 () Bool)

(assert (=> b!5171396 (= e!3222277 (>= (size!39657 (_1!35201 lt!2128985)) (size!39657 lt!2128730)))))

(declare-fun b!5171397 () Bool)

(declare-fun c!890195 () Bool)

(assert (=> b!5171397 (= c!890195 call!363050)))

(declare-fun lt!2128976 () Unit!151730)

(declare-fun lt!2128970 () Unit!151730)

(assert (=> b!5171397 (= lt!2128976 lt!2128970)))

(assert (=> b!5171397 (= input!5817 lt!2128730)))

(assert (=> b!5171397 (= lt!2128970 call!363051)))

(declare-fun lt!2128982 () Unit!151730)

(declare-fun lt!2128983 () Unit!151730)

(assert (=> b!5171397 (= lt!2128982 lt!2128983)))

(assert (=> b!5171397 call!363045))

(declare-fun call!363047 () Unit!151730)

(assert (=> b!5171397 (= lt!2128983 call!363047)))

(assert (=> b!5171397 (= e!3222274 e!3222271)))

(declare-fun b!5171398 () Bool)

(declare-fun Unit!151740 () Unit!151730)

(assert (=> b!5171398 (= e!3222275 Unit!151740)))

(declare-fun lt!2128973 () Unit!151730)

(assert (=> b!5171398 (= lt!2128973 call!363047)))

(assert (=> b!5171398 call!363045))

(declare-fun lt!2128975 () Unit!151730)

(assert (=> b!5171398 (= lt!2128975 lt!2128973)))

(declare-fun lt!2128981 () Unit!151730)

(assert (=> b!5171398 (= lt!2128981 call!363051)))

(assert (=> b!5171398 (= input!5817 lt!2128730)))

(declare-fun lt!2128971 () Unit!151730)

(assert (=> b!5171398 (= lt!2128971 lt!2128981)))

(assert (=> b!5171398 false))

(declare-fun b!5171399 () Bool)

(declare-fun e!3222272 () tuple2!63796)

(assert (=> b!5171399 (= e!3222273 e!3222272)))

(declare-fun lt!2128974 () tuple2!63796)

(assert (=> b!5171399 (= lt!2128974 call!363044)))

(declare-fun c!890196 () Bool)

(assert (=> b!5171399 (= c!890196 (isEmpty!32169 (_1!35201 lt!2128974)))))

(declare-fun bm!363044 () Bool)

(assert (=> bm!363044 (= call!363050 (nullableZipper!1167 lt!2128728))))

(declare-fun b!5171400 () Bool)

(declare-fun Unit!151741 () Unit!151730)

(assert (=> b!5171400 (= e!3222275 Unit!151741)))

(declare-fun b!5171401 () Bool)

(assert (=> b!5171401 (= e!3222272 (tuple2!63797 lt!2128730 (getSuffix!3404 input!5817 lt!2128730)))))

(declare-fun bm!363045 () Bool)

(assert (=> bm!363045 (= call!363044 (findLongestMatchInnerZipper!279 call!363048 lt!2128994 (+ (size!39657 lt!2128730) 1) call!363046 input!5817 lt!2128734))))

(declare-fun b!5171402 () Bool)

(assert (=> b!5171402 (= e!3222276 (tuple2!63797 Nil!60084 input!5817))))

(declare-fun d!1668888 () Bool)

(assert (=> d!1668888 e!3222270))

(declare-fun res!2198008 () Bool)

(assert (=> d!1668888 (=> (not res!2198008) (not e!3222270))))

(assert (=> d!1668888 (= res!2198008 (= (++!13145 (_1!35201 lt!2128985) (_2!35201 lt!2128985)) input!5817))))

(assert (=> d!1668888 (= lt!2128985 e!3222276)))

(declare-fun c!890199 () Bool)

(declare-fun lostCauseZipper!1328 ((InoxSet Context!8010)) Bool)

(assert (=> d!1668888 (= c!890199 (lostCauseZipper!1328 lt!2128728))))

(declare-fun lt!2128990 () Unit!151730)

(declare-fun Unit!151742 () Unit!151730)

(assert (=> d!1668888 (= lt!2128990 Unit!151742)))

(assert (=> d!1668888 (= (getSuffix!3404 input!5817 lt!2128730) (getSuffix!3404 input!5817 lt!2128730))))

(declare-fun lt!2128988 () Unit!151730)

(declare-fun lt!2128977 () Unit!151730)

(assert (=> d!1668888 (= lt!2128988 lt!2128977)))

(declare-fun lt!2128995 () List!60208)

(assert (=> d!1668888 (= (getSuffix!3404 input!5817 lt!2128730) lt!2128995)))

(declare-fun lemmaSamePrefixThenSameSuffix!2695 (List!60208 List!60208 List!60208 List!60208 List!60208) Unit!151730)

(assert (=> d!1668888 (= lt!2128977 (lemmaSamePrefixThenSameSuffix!2695 lt!2128730 (getSuffix!3404 input!5817 lt!2128730) lt!2128730 lt!2128995 input!5817))))

(assert (=> d!1668888 (= lt!2128995 (getSuffix!3404 input!5817 lt!2128730))))

(declare-fun lt!2128992 () Unit!151730)

(declare-fun lt!2128987 () Unit!151730)

(assert (=> d!1668888 (= lt!2128992 lt!2128987)))

(assert (=> d!1668888 (isPrefix!5754 lt!2128730 (++!13145 lt!2128730 (getSuffix!3404 input!5817 lt!2128730)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3589 (List!60208 List!60208) Unit!151730)

(assert (=> d!1668888 (= lt!2128987 (lemmaConcatTwoListThenFirstIsPrefix!3589 lt!2128730 (getSuffix!3404 input!5817 lt!2128730)))))

(assert (=> d!1668888 (= (++!13145 lt!2128730 (getSuffix!3404 input!5817 lt!2128730)) input!5817)))

(assert (=> d!1668888 (= (findLongestMatchInnerZipper!279 lt!2128728 lt!2128730 (size!39657 lt!2128730) (getSuffix!3404 input!5817 lt!2128730) input!5817 lt!2128734) lt!2128985)))

(declare-fun b!5171403 () Bool)

(assert (=> b!5171403 (= e!3222272 lt!2128974)))

(declare-fun bm!363046 () Bool)

(assert (=> bm!363046 (= call!363047 (lemmaIsPrefixRefl!3761 input!5817 input!5817))))

(assert (= (and d!1668888 c!890199) b!5171402))

(assert (= (and d!1668888 (not c!890199)) b!5171393))

(assert (= (and b!5171393 c!890194) b!5171397))

(assert (= (and b!5171393 (not c!890194)) b!5171394))

(assert (= (and b!5171397 c!890195) b!5171391))

(assert (= (and b!5171397 (not c!890195)) b!5171392))

(assert (= (and b!5171394 c!890198) b!5171398))

(assert (= (and b!5171394 (not c!890198)) b!5171400))

(assert (= (and b!5171394 c!890197) b!5171399))

(assert (= (and b!5171394 (not c!890197)) b!5171390))

(assert (= (and b!5171399 c!890196) b!5171401))

(assert (= (and b!5171399 (not c!890196)) b!5171403))

(assert (= (or b!5171399 b!5171390) bm!363040))

(assert (= (or b!5171399 b!5171390) bm!363042))

(assert (= (or b!5171399 b!5171390) bm!363039))

(assert (= (or b!5171399 b!5171390) bm!363045))

(assert (= (or b!5171397 b!5171398) bm!363046))

(assert (= (or b!5171397 b!5171394) bm!363044))

(assert (= (or b!5171397 b!5171398) bm!363043))

(assert (= (or b!5171397 b!5171398) bm!363041))

(assert (= (and d!1668888 res!2198008) b!5171395))

(assert (= (and b!5171395 (not res!2198009)) b!5171396))

(declare-fun m!6224294 () Bool)

(assert (=> b!5171395 m!6224294))

(declare-fun m!6224296 () Bool)

(assert (=> bm!363045 m!6224296))

(assert (=> bm!363043 m!6224000))

(declare-fun m!6224298 () Bool)

(assert (=> bm!363039 m!6224298))

(assert (=> bm!363042 m!6224012))

(declare-fun m!6224300 () Bool)

(assert (=> bm!363042 m!6224300))

(declare-fun m!6224302 () Bool)

(assert (=> b!5171396 m!6224302))

(assert (=> b!5171396 m!6224008))

(assert (=> d!1668888 m!6224012))

(declare-fun m!6224304 () Bool)

(assert (=> d!1668888 m!6224304))

(assert (=> d!1668888 m!6224012))

(assert (=> d!1668888 m!6224012))

(declare-fun m!6224306 () Bool)

(assert (=> d!1668888 m!6224306))

(declare-fun m!6224308 () Bool)

(assert (=> d!1668888 m!6224308))

(declare-fun m!6224310 () Bool)

(assert (=> d!1668888 m!6224310))

(assert (=> d!1668888 m!6224306))

(declare-fun m!6224312 () Bool)

(assert (=> d!1668888 m!6224312))

(assert (=> d!1668888 m!6224012))

(declare-fun m!6224314 () Bool)

(assert (=> d!1668888 m!6224314))

(declare-fun m!6224316 () Bool)

(assert (=> b!5171394 m!6224316))

(assert (=> b!5171394 m!6224008))

(assert (=> b!5171394 m!6224012))

(assert (=> b!5171394 m!6224300))

(assert (=> b!5171394 m!6224012))

(assert (=> b!5171394 m!6224012))

(assert (=> b!5171394 m!6224300))

(declare-fun m!6224318 () Bool)

(assert (=> b!5171394 m!6224318))

(assert (=> b!5171394 m!6223972))

(declare-fun m!6224320 () Bool)

(assert (=> b!5171394 m!6224320))

(declare-fun m!6224322 () Bool)

(assert (=> b!5171394 m!6224322))

(assert (=> b!5171394 m!6224318))

(declare-fun m!6224324 () Bool)

(assert (=> b!5171394 m!6224324))

(assert (=> b!5171394 m!6224012))

(declare-fun m!6224326 () Bool)

(assert (=> b!5171394 m!6224326))

(declare-fun m!6224328 () Bool)

(assert (=> b!5171394 m!6224328))

(assert (=> b!5171394 m!6224320))

(declare-fun m!6224330 () Bool)

(assert (=> b!5171394 m!6224330))

(assert (=> b!5171394 m!6224318))

(declare-fun m!6224332 () Bool)

(assert (=> bm!363044 m!6224332))

(assert (=> bm!363046 m!6223998))

(declare-fun m!6224334 () Bool)

(assert (=> b!5171399 m!6224334))

(assert (=> bm!363040 m!6224012))

(assert (=> bm!363040 m!6224326))

(declare-fun m!6224336 () Bool)

(assert (=> bm!363041 m!6224336))

(assert (=> b!5171152 d!1668888))

(declare-fun d!1668944 () Bool)

(declare-fun c!890200 () Bool)

(assert (=> d!1668944 (= c!890200 ((_ is Cons!60084) lt!2128730))))

(declare-fun e!3222279 () (InoxSet Context!8010))

(assert (=> d!1668944 (= (derivationZipper!244 baseZ!62 lt!2128730) e!3222279)))

(declare-fun b!5171405 () Bool)

(assert (=> b!5171405 (= e!3222279 (derivationZipper!244 (derivationStepZipper!975 baseZ!62 (h!66532 lt!2128730)) (t!373361 lt!2128730)))))

(declare-fun b!5171406 () Bool)

(assert (=> b!5171406 (= e!3222279 baseZ!62)))

(assert (= (and d!1668944 c!890200) b!5171405))

(assert (= (and d!1668944 (not c!890200)) b!5171406))

(declare-fun m!6224338 () Bool)

(assert (=> b!5171405 m!6224338))

(assert (=> b!5171405 m!6224338))

(declare-fun m!6224340 () Bool)

(assert (=> b!5171405 m!6224340))

(assert (=> b!5171152 d!1668944))

(declare-fun d!1668946 () Bool)

(assert (=> d!1668946 (= (isEmpty!32169 (_1!35201 lt!2128735)) ((_ is Nil!60084) (_1!35201 lt!2128735)))))

(assert (=> b!5171152 d!1668946))

(declare-fun d!1668948 () Bool)

(assert (=> d!1668948 (= (derivationZipper!244 baseZ!62 (++!13145 testedP!294 (Cons!60084 lt!2128733 Nil!60084))) (derivationStepZipper!975 z!4581 lt!2128733))))

(declare-fun lt!2128998 () Unit!151730)

(declare-fun choose!38319 ((InoxSet Context!8010) (InoxSet Context!8010) List!60208 C!29512) Unit!151730)

(assert (=> d!1668948 (= lt!2128998 (choose!38319 baseZ!62 z!4581 testedP!294 lt!2128733))))

(assert (=> d!1668948 (= (derivationZipper!244 baseZ!62 testedP!294) z!4581)))

(assert (=> d!1668948 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!95 baseZ!62 z!4581 testedP!294 lt!2128733) lt!2128998)))

(declare-fun bs!1203607 () Bool)

(assert (= bs!1203607 d!1668948))

(assert (=> bs!1203607 m!6223982))

(assert (=> bs!1203607 m!6223990))

(declare-fun m!6224342 () Bool)

(assert (=> bs!1203607 m!6224342))

(declare-fun m!6224344 () Bool)

(assert (=> bs!1203607 m!6224344))

(assert (=> bs!1203607 m!6223990))

(assert (=> bs!1203607 m!6223994))

(assert (=> b!5171152 d!1668948))

(declare-fun d!1668950 () Bool)

(declare-fun lt!2129001 () Int)

(assert (=> d!1668950 (>= lt!2129001 0)))

(declare-fun e!3222282 () Int)

(assert (=> d!1668950 (= lt!2129001 e!3222282)))

(declare-fun c!890204 () Bool)

(assert (=> d!1668950 (= c!890204 ((_ is Nil!60084) lt!2128730))))

(assert (=> d!1668950 (= (size!39657 lt!2128730) lt!2129001)))

(declare-fun b!5171411 () Bool)

(assert (=> b!5171411 (= e!3222282 0)))

(declare-fun b!5171412 () Bool)

(assert (=> b!5171412 (= e!3222282 (+ 1 (size!39657 (t!373361 lt!2128730))))))

(assert (= (and d!1668950 c!890204) b!5171411))

(assert (= (and d!1668950 (not c!890204)) b!5171412))

(declare-fun m!6224346 () Bool)

(assert (=> b!5171412 m!6224346))

(assert (=> b!5171152 d!1668950))

(declare-fun b!5171415 () Bool)

(declare-fun res!2198010 () Bool)

(declare-fun e!3222283 () Bool)

(assert (=> b!5171415 (=> (not res!2198010) (not e!3222283))))

(declare-fun lt!2129002 () List!60208)

(assert (=> b!5171415 (= res!2198010 (= (size!39657 lt!2129002) (+ (size!39657 testedP!294) (size!39657 lt!2128723))))))

(declare-fun d!1668952 () Bool)

(assert (=> d!1668952 e!3222283))

(declare-fun res!2198011 () Bool)

(assert (=> d!1668952 (=> (not res!2198011) (not e!3222283))))

(assert (=> d!1668952 (= res!2198011 (= (content!10646 lt!2129002) ((_ map or) (content!10646 testedP!294) (content!10646 lt!2128723))))))

(declare-fun e!3222284 () List!60208)

(assert (=> d!1668952 (= lt!2129002 e!3222284)))

(declare-fun c!890205 () Bool)

(assert (=> d!1668952 (= c!890205 ((_ is Nil!60084) testedP!294))))

(assert (=> d!1668952 (= (++!13145 testedP!294 lt!2128723) lt!2129002)))

(declare-fun b!5171416 () Bool)

(assert (=> b!5171416 (= e!3222283 (or (not (= lt!2128723 Nil!60084)) (= lt!2129002 testedP!294)))))

(declare-fun b!5171414 () Bool)

(assert (=> b!5171414 (= e!3222284 (Cons!60084 (h!66532 testedP!294) (++!13145 (t!373361 testedP!294) lt!2128723)))))

(declare-fun b!5171413 () Bool)

(assert (=> b!5171413 (= e!3222284 lt!2128723)))

(assert (= (and d!1668952 c!890205) b!5171413))

(assert (= (and d!1668952 (not c!890205)) b!5171414))

(assert (= (and d!1668952 res!2198011) b!5171415))

(assert (= (and b!5171415 res!2198010) b!5171416))

(declare-fun m!6224348 () Bool)

(assert (=> b!5171415 m!6224348))

(assert (=> b!5171415 m!6223966))

(declare-fun m!6224350 () Bool)

(assert (=> b!5171415 m!6224350))

(declare-fun m!6224352 () Bool)

(assert (=> d!1668952 m!6224352))

(assert (=> d!1668952 m!6224034))

(declare-fun m!6224354 () Bool)

(assert (=> d!1668952 m!6224354))

(declare-fun m!6224356 () Bool)

(assert (=> b!5171414 m!6224356))

(assert (=> b!5171152 d!1668952))

(declare-fun d!1668954 () Bool)

(declare-fun e!3222287 () Bool)

(assert (=> d!1668954 e!3222287))

(declare-fun res!2198014 () Bool)

(assert (=> d!1668954 (=> res!2198014 e!3222287)))

(assert (=> d!1668954 (= res!2198014 (isEmpty!32169 (_1!35201 (findLongestMatchInnerZipper!279 lt!2128728 lt!2128730 (size!39657 lt!2128730) (getSuffix!3404 input!5817 lt!2128730) input!5817 (size!39657 input!5817)))))))

(declare-fun lt!2129005 () Unit!151730)

(declare-fun choose!38321 ((InoxSet Context!8010) (InoxSet Context!8010) List!60208 List!60208) Unit!151730)

(assert (=> d!1668954 (= lt!2129005 (choose!38321 baseZ!62 lt!2128728 lt!2128730 input!5817))))

(assert (=> d!1668954 (isPrefix!5754 lt!2128730 input!5817)))

(assert (=> d!1668954 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!17 baseZ!62 lt!2128728 lt!2128730 input!5817) lt!2129005)))

(declare-fun b!5171419 () Bool)

(assert (=> b!5171419 (= e!3222287 (matchZipper!969 baseZ!62 (_1!35201 (findLongestMatchInnerZipper!279 lt!2128728 lt!2128730 (size!39657 lt!2128730) (getSuffix!3404 input!5817 lt!2128730) input!5817 (size!39657 input!5817)))))))

(assert (= (and d!1668954 (not res!2198014)) b!5171419))

(assert (=> d!1668954 m!6224008))

(assert (=> d!1668954 m!6224012))

(assert (=> d!1668954 m!6223972))

(declare-fun m!6224358 () Bool)

(assert (=> d!1668954 m!6224358))

(assert (=> d!1668954 m!6224008))

(declare-fun m!6224360 () Bool)

(assert (=> d!1668954 m!6224360))

(declare-fun m!6224362 () Bool)

(assert (=> d!1668954 m!6224362))

(assert (=> d!1668954 m!6224012))

(assert (=> d!1668954 m!6223972))

(assert (=> d!1668954 m!6223986))

(assert (=> b!5171419 m!6224008))

(assert (=> b!5171419 m!6224012))

(assert (=> b!5171419 m!6223972))

(assert (=> b!5171419 m!6224358))

(assert (=> b!5171419 m!6224008))

(assert (=> b!5171419 m!6224012))

(declare-fun m!6224364 () Bool)

(assert (=> b!5171419 m!6224364))

(assert (=> b!5171419 m!6223972))

(assert (=> b!5171152 d!1668954))

(declare-fun b!5171422 () Bool)

(declare-fun e!3222290 () Bool)

(assert (=> b!5171422 (= e!3222290 (isPrefix!5754 (tail!10154 testedP!294) (tail!10154 input!5817)))))

(declare-fun d!1668956 () Bool)

(declare-fun e!3222289 () Bool)

(assert (=> d!1668956 e!3222289))

(declare-fun res!2198018 () Bool)

(assert (=> d!1668956 (=> res!2198018 e!3222289)))

(declare-fun lt!2129006 () Bool)

(assert (=> d!1668956 (= res!2198018 (not lt!2129006))))

(declare-fun e!3222288 () Bool)

(assert (=> d!1668956 (= lt!2129006 e!3222288)))

(declare-fun res!2198015 () Bool)

(assert (=> d!1668956 (=> res!2198015 e!3222288)))

(assert (=> d!1668956 (= res!2198015 ((_ is Nil!60084) testedP!294))))

(assert (=> d!1668956 (= (isPrefix!5754 testedP!294 input!5817) lt!2129006)))

(declare-fun b!5171423 () Bool)

(assert (=> b!5171423 (= e!3222289 (>= (size!39657 input!5817) (size!39657 testedP!294)))))

(declare-fun b!5171421 () Bool)

(declare-fun res!2198016 () Bool)

(assert (=> b!5171421 (=> (not res!2198016) (not e!3222290))))

(assert (=> b!5171421 (= res!2198016 (= (head!11045 testedP!294) (head!11045 input!5817)))))

(declare-fun b!5171420 () Bool)

(assert (=> b!5171420 (= e!3222288 e!3222290)))

(declare-fun res!2198017 () Bool)

(assert (=> b!5171420 (=> (not res!2198017) (not e!3222290))))

(assert (=> b!5171420 (= res!2198017 (not ((_ is Nil!60084) input!5817)))))

(assert (= (and d!1668956 (not res!2198015)) b!5171420))

(assert (= (and b!5171420 res!2198017) b!5171421))

(assert (= (and b!5171421 res!2198016) b!5171422))

(assert (= (and d!1668956 (not res!2198018)) b!5171423))

(declare-fun m!6224366 () Bool)

(assert (=> b!5171422 m!6224366))

(assert (=> b!5171422 m!6224042))

(assert (=> b!5171422 m!6224366))

(assert (=> b!5171422 m!6224042))

(declare-fun m!6224368 () Bool)

(assert (=> b!5171422 m!6224368))

(assert (=> b!5171423 m!6223972))

(assert (=> b!5171423 m!6223966))

(declare-fun m!6224370 () Bool)

(assert (=> b!5171421 m!6224370))

(assert (=> b!5171421 m!6224048))

(assert (=> start!547344 d!1668956))

(declare-fun d!1668958 () Bool)

(declare-fun lt!2129007 () Int)

(assert (=> d!1668958 (>= lt!2129007 0)))

(declare-fun e!3222291 () Int)

(assert (=> d!1668958 (= lt!2129007 e!3222291)))

(declare-fun c!890206 () Bool)

(assert (=> d!1668958 (= c!890206 ((_ is Nil!60084) input!5817))))

(assert (=> d!1668958 (= (size!39657 input!5817) lt!2129007)))

(declare-fun b!5171424 () Bool)

(assert (=> b!5171424 (= e!3222291 0)))

(declare-fun b!5171425 () Bool)

(assert (=> b!5171425 (= e!3222291 (+ 1 (size!39657 (t!373361 input!5817))))))

(assert (= (and d!1668958 c!890206) b!5171424))

(assert (= (and d!1668958 (not c!890206)) b!5171425))

(declare-fun m!6224372 () Bool)

(assert (=> b!5171425 m!6224372))

(assert (=> b!5171153 d!1668958))

(declare-fun d!1668960 () Bool)

(declare-fun lt!2129008 () List!60208)

(assert (=> d!1668960 (= (++!13145 testedP!294 lt!2129008) input!5817)))

(declare-fun e!3222292 () List!60208)

(assert (=> d!1668960 (= lt!2129008 e!3222292)))

(declare-fun c!890207 () Bool)

(assert (=> d!1668960 (= c!890207 ((_ is Cons!60084) testedP!294))))

(assert (=> d!1668960 (>= (size!39657 input!5817) (size!39657 testedP!294))))

(assert (=> d!1668960 (= (getSuffix!3404 input!5817 testedP!294) lt!2129008)))

(declare-fun b!5171426 () Bool)

(assert (=> b!5171426 (= e!3222292 (getSuffix!3404 (tail!10154 input!5817) (t!373361 testedP!294)))))

(declare-fun b!5171427 () Bool)

(assert (=> b!5171427 (= e!3222292 input!5817)))

(assert (= (and d!1668960 c!890207) b!5171426))

(assert (= (and d!1668960 (not c!890207)) b!5171427))

(declare-fun m!6224374 () Bool)

(assert (=> d!1668960 m!6224374))

(assert (=> d!1668960 m!6223972))

(assert (=> d!1668960 m!6223966))

(assert (=> b!5171426 m!6224042))

(assert (=> b!5171426 m!6224042))

(declare-fun m!6224376 () Bool)

(assert (=> b!5171426 m!6224376))

(assert (=> b!5171153 d!1668960))

(declare-fun b!5171428 () Bool)

(declare-fun e!3222296 () tuple2!63796)

(declare-fun call!363052 () tuple2!63796)

(assert (=> b!5171428 (= e!3222296 call!363052)))

(declare-fun bm!363047 () Bool)

(declare-fun call!363056 () (InoxSet Context!8010))

(declare-fun call!363057 () C!29512)

(assert (=> bm!363047 (= call!363056 (derivationStepZipper!975 z!4581 call!363057))))

(declare-fun bm!363048 () Bool)

(declare-fun call!363054 () List!60208)

(assert (=> bm!363048 (= call!363054 (tail!10154 lt!2128723))))

(declare-fun b!5171429 () Bool)

(declare-fun e!3222294 () tuple2!63796)

(assert (=> b!5171429 (= e!3222294 (tuple2!63797 testedP!294 Nil!60084))))

(declare-fun b!5171430 () Bool)

(assert (=> b!5171430 (= e!3222294 (tuple2!63797 Nil!60084 input!5817))))

(declare-fun b!5171431 () Bool)

(declare-fun e!3222299 () tuple2!63796)

(declare-fun e!3222297 () tuple2!63796)

(assert (=> b!5171431 (= e!3222299 e!3222297)))

(declare-fun c!890208 () Bool)

(assert (=> b!5171431 (= c!890208 (= lt!2128732 lt!2128734))))

(declare-fun bm!363049 () Bool)

(declare-fun call!363059 () Unit!151730)

(assert (=> bm!363049 (= call!363059 (lemmaIsPrefixSameLengthThenSameList!1403 input!5817 testedP!294 input!5817))))

(declare-fun b!5171432 () Bool)

(declare-fun c!890211 () Bool)

(declare-fun call!363058 () Bool)

(assert (=> b!5171432 (= c!890211 call!363058)))

(declare-fun lt!2129023 () Unit!151730)

(declare-fun lt!2129011 () Unit!151730)

(assert (=> b!5171432 (= lt!2129023 lt!2129011)))

(declare-fun lt!2129018 () C!29512)

(declare-fun lt!2129032 () List!60208)

(assert (=> b!5171432 (= (++!13145 (++!13145 testedP!294 (Cons!60084 lt!2129018 Nil!60084)) lt!2129032) input!5817)))

(assert (=> b!5171432 (= lt!2129011 (lemmaMoveElementToOtherListKeepsConcatEq!1576 testedP!294 lt!2129018 lt!2129032 input!5817))))

(assert (=> b!5171432 (= lt!2129032 (tail!10154 lt!2128723))))

(assert (=> b!5171432 (= lt!2129018 (head!11045 lt!2128723))))

(declare-fun lt!2129030 () Unit!151730)

(declare-fun lt!2129017 () Unit!151730)

(assert (=> b!5171432 (= lt!2129030 lt!2129017)))

(assert (=> b!5171432 (isPrefix!5754 (++!13145 testedP!294 (Cons!60084 (head!11045 (getSuffix!3404 input!5817 testedP!294)) Nil!60084)) input!5817)))

(assert (=> b!5171432 (= lt!2129017 (lemmaAddHeadSuffixToPrefixStillPrefix!1067 testedP!294 input!5817))))

(declare-fun lt!2129033 () List!60208)

(assert (=> b!5171432 (= lt!2129033 (++!13145 testedP!294 (Cons!60084 (head!11045 lt!2128723) Nil!60084)))))

(declare-fun lt!2129025 () Unit!151730)

(declare-fun e!3222298 () Unit!151730)

(assert (=> b!5171432 (= lt!2129025 e!3222298)))

(declare-fun c!890212 () Bool)

(assert (=> b!5171432 (= c!890212 (= (size!39657 testedP!294) (size!39657 input!5817)))))

(declare-fun lt!2129028 () Unit!151730)

(declare-fun lt!2129019 () Unit!151730)

(assert (=> b!5171432 (= lt!2129028 lt!2129019)))

(assert (=> b!5171432 (<= (size!39657 testedP!294) (size!39657 input!5817))))

(assert (=> b!5171432 (= lt!2129019 (lemmaIsPrefixThenSmallerEqSize!917 testedP!294 input!5817))))

(assert (=> b!5171432 (= e!3222297 e!3222296)))

(declare-fun bm!363050 () Bool)

(assert (=> bm!363050 (= call!363057 (head!11045 lt!2128723))))

(declare-fun bm!363051 () Bool)

(declare-fun call!363053 () Bool)

(assert (=> bm!363051 (= call!363053 (isPrefix!5754 input!5817 input!5817))))

(declare-fun b!5171433 () Bool)

(declare-fun e!3222293 () Bool)

(declare-fun e!3222300 () Bool)

(assert (=> b!5171433 (= e!3222293 e!3222300)))

(declare-fun res!2198020 () Bool)

(assert (=> b!5171433 (=> res!2198020 e!3222300)))

(declare-fun lt!2129024 () tuple2!63796)

(assert (=> b!5171433 (= res!2198020 (isEmpty!32169 (_1!35201 lt!2129024)))))

(declare-fun b!5171434 () Bool)

(assert (=> b!5171434 (= e!3222300 (>= (size!39657 (_1!35201 lt!2129024)) (size!39657 testedP!294)))))

(declare-fun b!5171435 () Bool)

(declare-fun c!890209 () Bool)

(assert (=> b!5171435 (= c!890209 call!363058)))

(declare-fun lt!2129015 () Unit!151730)

(declare-fun lt!2129009 () Unit!151730)

(assert (=> b!5171435 (= lt!2129015 lt!2129009)))

(assert (=> b!5171435 (= input!5817 testedP!294)))

(assert (=> b!5171435 (= lt!2129009 call!363059)))

(declare-fun lt!2129021 () Unit!151730)

(declare-fun lt!2129022 () Unit!151730)

(assert (=> b!5171435 (= lt!2129021 lt!2129022)))

(assert (=> b!5171435 call!363053))

(declare-fun call!363055 () Unit!151730)

(assert (=> b!5171435 (= lt!2129022 call!363055)))

(assert (=> b!5171435 (= e!3222297 e!3222294)))

(declare-fun b!5171436 () Bool)

(declare-fun Unit!151746 () Unit!151730)

(assert (=> b!5171436 (= e!3222298 Unit!151746)))

(declare-fun lt!2129012 () Unit!151730)

(assert (=> b!5171436 (= lt!2129012 call!363055)))

(assert (=> b!5171436 call!363053))

(declare-fun lt!2129014 () Unit!151730)

(assert (=> b!5171436 (= lt!2129014 lt!2129012)))

(declare-fun lt!2129020 () Unit!151730)

(assert (=> b!5171436 (= lt!2129020 call!363059)))

(assert (=> b!5171436 (= input!5817 testedP!294)))

(declare-fun lt!2129010 () Unit!151730)

(assert (=> b!5171436 (= lt!2129010 lt!2129020)))

(assert (=> b!5171436 false))

(declare-fun b!5171437 () Bool)

(declare-fun e!3222295 () tuple2!63796)

(assert (=> b!5171437 (= e!3222296 e!3222295)))

(declare-fun lt!2129013 () tuple2!63796)

(assert (=> b!5171437 (= lt!2129013 call!363052)))

(declare-fun c!890210 () Bool)

(assert (=> b!5171437 (= c!890210 (isEmpty!32169 (_1!35201 lt!2129013)))))

(declare-fun bm!363052 () Bool)

(assert (=> bm!363052 (= call!363058 (nullableZipper!1167 z!4581))))

(declare-fun b!5171438 () Bool)

(declare-fun Unit!151747 () Unit!151730)

(assert (=> b!5171438 (= e!3222298 Unit!151747)))

(declare-fun b!5171439 () Bool)

(assert (=> b!5171439 (= e!3222295 (tuple2!63797 testedP!294 lt!2128723))))

(declare-fun bm!363053 () Bool)

(assert (=> bm!363053 (= call!363052 (findLongestMatchInnerZipper!279 call!363056 lt!2129033 (+ lt!2128732 1) call!363054 input!5817 lt!2128734))))

(declare-fun b!5171440 () Bool)

(assert (=> b!5171440 (= e!3222299 (tuple2!63797 Nil!60084 input!5817))))

(declare-fun d!1668962 () Bool)

(assert (=> d!1668962 e!3222293))

(declare-fun res!2198019 () Bool)

(assert (=> d!1668962 (=> (not res!2198019) (not e!3222293))))

(assert (=> d!1668962 (= res!2198019 (= (++!13145 (_1!35201 lt!2129024) (_2!35201 lt!2129024)) input!5817))))

(assert (=> d!1668962 (= lt!2129024 e!3222299)))

(declare-fun c!890213 () Bool)

(assert (=> d!1668962 (= c!890213 (lostCauseZipper!1328 z!4581))))

(declare-fun lt!2129029 () Unit!151730)

(declare-fun Unit!151748 () Unit!151730)

(assert (=> d!1668962 (= lt!2129029 Unit!151748)))

(assert (=> d!1668962 (= (getSuffix!3404 input!5817 testedP!294) lt!2128723)))

(declare-fun lt!2129027 () Unit!151730)

(declare-fun lt!2129016 () Unit!151730)

(assert (=> d!1668962 (= lt!2129027 lt!2129016)))

(declare-fun lt!2129034 () List!60208)

(assert (=> d!1668962 (= lt!2128723 lt!2129034)))

(assert (=> d!1668962 (= lt!2129016 (lemmaSamePrefixThenSameSuffix!2695 testedP!294 lt!2128723 testedP!294 lt!2129034 input!5817))))

(assert (=> d!1668962 (= lt!2129034 (getSuffix!3404 input!5817 testedP!294))))

(declare-fun lt!2129031 () Unit!151730)

(declare-fun lt!2129026 () Unit!151730)

(assert (=> d!1668962 (= lt!2129031 lt!2129026)))

(assert (=> d!1668962 (isPrefix!5754 testedP!294 (++!13145 testedP!294 lt!2128723))))

(assert (=> d!1668962 (= lt!2129026 (lemmaConcatTwoListThenFirstIsPrefix!3589 testedP!294 lt!2128723))))

(assert (=> d!1668962 (= (++!13145 testedP!294 lt!2128723) input!5817)))

(assert (=> d!1668962 (= (findLongestMatchInnerZipper!279 z!4581 testedP!294 lt!2128732 lt!2128723 input!5817 lt!2128734) lt!2129024)))

(declare-fun b!5171441 () Bool)

(assert (=> b!5171441 (= e!3222295 lt!2129013)))

(declare-fun bm!363054 () Bool)

(assert (=> bm!363054 (= call!363055 (lemmaIsPrefixRefl!3761 input!5817 input!5817))))

(assert (= (and d!1668962 c!890213) b!5171440))

(assert (= (and d!1668962 (not c!890213)) b!5171431))

(assert (= (and b!5171431 c!890208) b!5171435))

(assert (= (and b!5171431 (not c!890208)) b!5171432))

(assert (= (and b!5171435 c!890209) b!5171429))

(assert (= (and b!5171435 (not c!890209)) b!5171430))

(assert (= (and b!5171432 c!890212) b!5171436))

(assert (= (and b!5171432 (not c!890212)) b!5171438))

(assert (= (and b!5171432 c!890211) b!5171437))

(assert (= (and b!5171432 (not c!890211)) b!5171428))

(assert (= (and b!5171437 c!890210) b!5171439))

(assert (= (and b!5171437 (not c!890210)) b!5171441))

(assert (= (or b!5171437 b!5171428) bm!363048))

(assert (= (or b!5171437 b!5171428) bm!363050))

(assert (= (or b!5171437 b!5171428) bm!363047))

(assert (= (or b!5171437 b!5171428) bm!363053))

(assert (= (or b!5171435 b!5171436) bm!363054))

(assert (= (or b!5171435 b!5171432) bm!363052))

(assert (= (or b!5171435 b!5171436) bm!363051))

(assert (= (or b!5171435 b!5171436) bm!363049))

(assert (= (and d!1668962 res!2198019) b!5171433))

(assert (= (and b!5171433 (not res!2198020)) b!5171434))

(declare-fun m!6224378 () Bool)

(assert (=> b!5171433 m!6224378))

(declare-fun m!6224380 () Bool)

(assert (=> bm!363053 m!6224380))

(assert (=> bm!363051 m!6224000))

(declare-fun m!6224382 () Bool)

(assert (=> bm!363047 m!6224382))

(assert (=> bm!363050 m!6223988))

(declare-fun m!6224384 () Bool)

(assert (=> b!5171434 m!6224384))

(assert (=> b!5171434 m!6223966))

(declare-fun m!6224386 () Bool)

(assert (=> d!1668962 m!6224386))

(assert (=> d!1668962 m!6223970))

(assert (=> d!1668962 m!6224022))

(declare-fun m!6224388 () Bool)

(assert (=> d!1668962 m!6224388))

(declare-fun m!6224390 () Bool)

(assert (=> d!1668962 m!6224390))

(assert (=> d!1668962 m!6224022))

(declare-fun m!6224392 () Bool)

(assert (=> d!1668962 m!6224392))

(declare-fun m!6224394 () Bool)

(assert (=> d!1668962 m!6224394))

(assert (=> b!5171432 m!6224006))

(assert (=> b!5171432 m!6223966))

(assert (=> b!5171432 m!6223970))

(assert (=> b!5171432 m!6224052))

(assert (=> b!5171432 m!6223970))

(assert (=> b!5171432 m!6223988))

(declare-fun m!6224396 () Bool)

(assert (=> b!5171432 m!6224396))

(assert (=> b!5171432 m!6223972))

(declare-fun m!6224398 () Bool)

(assert (=> b!5171432 m!6224398))

(declare-fun m!6224400 () Bool)

(assert (=> b!5171432 m!6224400))

(assert (=> b!5171432 m!6224054))

(assert (=> b!5171432 m!6224056))

(assert (=> b!5171432 m!6223976))

(declare-fun m!6224402 () Bool)

(assert (=> b!5171432 m!6224402))

(assert (=> b!5171432 m!6224398))

(assert (=> b!5171432 m!6223984))

(assert (=> b!5171432 m!6224054))

(assert (=> bm!363052 m!6223992))

(assert (=> bm!363054 m!6223998))

(declare-fun m!6224404 () Bool)

(assert (=> b!5171437 m!6224404))

(assert (=> bm!363048 m!6223976))

(assert (=> bm!363049 m!6224002))

(assert (=> b!5171153 d!1668962))

(declare-fun d!1668964 () Bool)

(declare-fun lt!2129035 () Int)

(assert (=> d!1668964 (>= lt!2129035 0)))

(declare-fun e!3222301 () Int)

(assert (=> d!1668964 (= lt!2129035 e!3222301)))

(declare-fun c!890214 () Bool)

(assert (=> d!1668964 (= c!890214 ((_ is Nil!60084) testedP!294))))

(assert (=> d!1668964 (= (size!39657 testedP!294) lt!2129035)))

(declare-fun b!5171442 () Bool)

(assert (=> b!5171442 (= e!3222301 0)))

(declare-fun b!5171443 () Bool)

(assert (=> b!5171443 (= e!3222301 (+ 1 (size!39657 (t!373361 testedP!294))))))

(assert (= (and d!1668964 c!890214) b!5171442))

(assert (= (and d!1668964 (not c!890214)) b!5171443))

(declare-fun m!6224406 () Bool)

(assert (=> b!5171443 m!6224406))

(assert (=> b!5171153 d!1668964))

(declare-fun d!1668966 () Bool)

(assert (=> d!1668966 (= (isEmpty!32169 (_1!35201 (findLongestMatchInnerZipper!279 z!4581 testedP!294 lt!2128732 lt!2128723 input!5817 lt!2128734))) ((_ is Nil!60084) (_1!35201 (findLongestMatchInnerZipper!279 z!4581 testedP!294 lt!2128732 lt!2128723 input!5817 lt!2128734))))))

(assert (=> b!5171153 d!1668966))

(declare-fun d!1668968 () Bool)

(declare-fun lambda!258189 () Int)

(declare-fun forall!14133 (List!60207 Int) Bool)

(assert (=> d!1668968 (= (inv!79799 setElem!32020) (forall!14133 (exprs!4505 setElem!32020) lambda!258189))))

(declare-fun bs!1203608 () Bool)

(assert (= bs!1203608 d!1668968))

(declare-fun m!6224408 () Bool)

(assert (=> bs!1203608 m!6224408))

(assert (=> setNonEmpty!32020 d!1668968))

(declare-fun bs!1203609 () Bool)

(declare-fun d!1668970 () Bool)

(assert (= bs!1203609 (and d!1668970 d!1668968)))

(declare-fun lambda!258190 () Int)

(assert (=> bs!1203609 (= lambda!258190 lambda!258189)))

(assert (=> d!1668970 (= (inv!79799 setElem!32019) (forall!14133 (exprs!4505 setElem!32019) lambda!258190))))

(declare-fun bs!1203610 () Bool)

(assert (= bs!1203610 d!1668970))

(declare-fun m!6224410 () Bool)

(assert (=> bs!1203610 m!6224410))

(assert (=> setNonEmpty!32019 d!1668970))

(declare-fun d!1668972 () Bool)

(assert (=> d!1668972 (= (isEmpty!32169 (_1!35201 (findLongestMatchInnerZipper!279 lt!2128728 lt!2128730 (+ 1 lt!2128732) (tail!10154 lt!2128723) input!5817 lt!2128734))) ((_ is Nil!60084) (_1!35201 (findLongestMatchInnerZipper!279 lt!2128728 lt!2128730 (+ 1 lt!2128732) (tail!10154 lt!2128723) input!5817 lt!2128734))))))

(assert (=> b!5171157 d!1668972))

(declare-fun b!5171444 () Bool)

(declare-fun e!3222305 () tuple2!63796)

(declare-fun call!363060 () tuple2!63796)

(assert (=> b!5171444 (= e!3222305 call!363060)))

(declare-fun bm!363055 () Bool)

(declare-fun call!363064 () (InoxSet Context!8010))

(declare-fun call!363065 () C!29512)

(assert (=> bm!363055 (= call!363064 (derivationStepZipper!975 lt!2128728 call!363065))))

(declare-fun bm!363056 () Bool)

(declare-fun call!363062 () List!60208)

(assert (=> bm!363056 (= call!363062 (tail!10154 (tail!10154 lt!2128723)))))

(declare-fun b!5171445 () Bool)

(declare-fun e!3222303 () tuple2!63796)

(assert (=> b!5171445 (= e!3222303 (tuple2!63797 lt!2128730 Nil!60084))))

(declare-fun b!5171446 () Bool)

(assert (=> b!5171446 (= e!3222303 (tuple2!63797 Nil!60084 input!5817))))

(declare-fun b!5171447 () Bool)

(declare-fun e!3222308 () tuple2!63796)

(declare-fun e!3222306 () tuple2!63796)

(assert (=> b!5171447 (= e!3222308 e!3222306)))

(declare-fun c!890215 () Bool)

(assert (=> b!5171447 (= c!890215 (= (+ 1 lt!2128732) lt!2128734))))

(declare-fun bm!363057 () Bool)

(declare-fun call!363067 () Unit!151730)

(assert (=> bm!363057 (= call!363067 (lemmaIsPrefixSameLengthThenSameList!1403 input!5817 lt!2128730 input!5817))))

(declare-fun b!5171448 () Bool)

(declare-fun c!890218 () Bool)

(declare-fun call!363066 () Bool)

(assert (=> b!5171448 (= c!890218 call!363066)))

(declare-fun lt!2129050 () Unit!151730)

(declare-fun lt!2129038 () Unit!151730)

(assert (=> b!5171448 (= lt!2129050 lt!2129038)))

(declare-fun lt!2129059 () List!60208)

(declare-fun lt!2129045 () C!29512)

(assert (=> b!5171448 (= (++!13145 (++!13145 lt!2128730 (Cons!60084 lt!2129045 Nil!60084)) lt!2129059) input!5817)))

(assert (=> b!5171448 (= lt!2129038 (lemmaMoveElementToOtherListKeepsConcatEq!1576 lt!2128730 lt!2129045 lt!2129059 input!5817))))

(assert (=> b!5171448 (= lt!2129059 (tail!10154 (tail!10154 lt!2128723)))))

(assert (=> b!5171448 (= lt!2129045 (head!11045 (tail!10154 lt!2128723)))))

(declare-fun lt!2129057 () Unit!151730)

(declare-fun lt!2129044 () Unit!151730)

(assert (=> b!5171448 (= lt!2129057 lt!2129044)))

(assert (=> b!5171448 (isPrefix!5754 (++!13145 lt!2128730 (Cons!60084 (head!11045 (getSuffix!3404 input!5817 lt!2128730)) Nil!60084)) input!5817)))

(assert (=> b!5171448 (= lt!2129044 (lemmaAddHeadSuffixToPrefixStillPrefix!1067 lt!2128730 input!5817))))

(declare-fun lt!2129060 () List!60208)

(assert (=> b!5171448 (= lt!2129060 (++!13145 lt!2128730 (Cons!60084 (head!11045 (tail!10154 lt!2128723)) Nil!60084)))))

(declare-fun lt!2129052 () Unit!151730)

(declare-fun e!3222307 () Unit!151730)

(assert (=> b!5171448 (= lt!2129052 e!3222307)))

(declare-fun c!890219 () Bool)

(assert (=> b!5171448 (= c!890219 (= (size!39657 lt!2128730) (size!39657 input!5817)))))

(declare-fun lt!2129055 () Unit!151730)

(declare-fun lt!2129046 () Unit!151730)

(assert (=> b!5171448 (= lt!2129055 lt!2129046)))

(assert (=> b!5171448 (<= (size!39657 lt!2128730) (size!39657 input!5817))))

(assert (=> b!5171448 (= lt!2129046 (lemmaIsPrefixThenSmallerEqSize!917 lt!2128730 input!5817))))

(assert (=> b!5171448 (= e!3222306 e!3222305)))

(declare-fun bm!363058 () Bool)

(assert (=> bm!363058 (= call!363065 (head!11045 (tail!10154 lt!2128723)))))

(declare-fun bm!363059 () Bool)

(declare-fun call!363061 () Bool)

(assert (=> bm!363059 (= call!363061 (isPrefix!5754 input!5817 input!5817))))

(declare-fun b!5171449 () Bool)

(declare-fun e!3222302 () Bool)

(declare-fun e!3222309 () Bool)

(assert (=> b!5171449 (= e!3222302 e!3222309)))

(declare-fun res!2198022 () Bool)

(assert (=> b!5171449 (=> res!2198022 e!3222309)))

(declare-fun lt!2129051 () tuple2!63796)

(assert (=> b!5171449 (= res!2198022 (isEmpty!32169 (_1!35201 lt!2129051)))))

(declare-fun b!5171450 () Bool)

(assert (=> b!5171450 (= e!3222309 (>= (size!39657 (_1!35201 lt!2129051)) (size!39657 lt!2128730)))))

(declare-fun b!5171451 () Bool)

(declare-fun c!890216 () Bool)

(assert (=> b!5171451 (= c!890216 call!363066)))

(declare-fun lt!2129042 () Unit!151730)

(declare-fun lt!2129036 () Unit!151730)

(assert (=> b!5171451 (= lt!2129042 lt!2129036)))

(assert (=> b!5171451 (= input!5817 lt!2128730)))

(assert (=> b!5171451 (= lt!2129036 call!363067)))

(declare-fun lt!2129048 () Unit!151730)

(declare-fun lt!2129049 () Unit!151730)

(assert (=> b!5171451 (= lt!2129048 lt!2129049)))

(assert (=> b!5171451 call!363061))

(declare-fun call!363063 () Unit!151730)

(assert (=> b!5171451 (= lt!2129049 call!363063)))

(assert (=> b!5171451 (= e!3222306 e!3222303)))

(declare-fun b!5171452 () Bool)

(declare-fun Unit!151749 () Unit!151730)

(assert (=> b!5171452 (= e!3222307 Unit!151749)))

(declare-fun lt!2129039 () Unit!151730)

(assert (=> b!5171452 (= lt!2129039 call!363063)))

(assert (=> b!5171452 call!363061))

(declare-fun lt!2129041 () Unit!151730)

(assert (=> b!5171452 (= lt!2129041 lt!2129039)))

(declare-fun lt!2129047 () Unit!151730)

(assert (=> b!5171452 (= lt!2129047 call!363067)))

(assert (=> b!5171452 (= input!5817 lt!2128730)))

(declare-fun lt!2129037 () Unit!151730)

(assert (=> b!5171452 (= lt!2129037 lt!2129047)))

(assert (=> b!5171452 false))

(declare-fun b!5171453 () Bool)

(declare-fun e!3222304 () tuple2!63796)

(assert (=> b!5171453 (= e!3222305 e!3222304)))

(declare-fun lt!2129040 () tuple2!63796)

(assert (=> b!5171453 (= lt!2129040 call!363060)))

(declare-fun c!890217 () Bool)

(assert (=> b!5171453 (= c!890217 (isEmpty!32169 (_1!35201 lt!2129040)))))

(declare-fun bm!363060 () Bool)

(assert (=> bm!363060 (= call!363066 (nullableZipper!1167 lt!2128728))))

(declare-fun b!5171454 () Bool)

(declare-fun Unit!151750 () Unit!151730)

(assert (=> b!5171454 (= e!3222307 Unit!151750)))

(declare-fun b!5171455 () Bool)

(assert (=> b!5171455 (= e!3222304 (tuple2!63797 lt!2128730 (tail!10154 lt!2128723)))))

(declare-fun bm!363061 () Bool)

(assert (=> bm!363061 (= call!363060 (findLongestMatchInnerZipper!279 call!363064 lt!2129060 (+ 1 lt!2128732 1) call!363062 input!5817 lt!2128734))))

(declare-fun b!5171456 () Bool)

(assert (=> b!5171456 (= e!3222308 (tuple2!63797 Nil!60084 input!5817))))

(declare-fun d!1668974 () Bool)

(assert (=> d!1668974 e!3222302))

(declare-fun res!2198021 () Bool)

(assert (=> d!1668974 (=> (not res!2198021) (not e!3222302))))

(assert (=> d!1668974 (= res!2198021 (= (++!13145 (_1!35201 lt!2129051) (_2!35201 lt!2129051)) input!5817))))

(assert (=> d!1668974 (= lt!2129051 e!3222308)))

(declare-fun c!890220 () Bool)

(assert (=> d!1668974 (= c!890220 (lostCauseZipper!1328 lt!2128728))))

(declare-fun lt!2129056 () Unit!151730)

(declare-fun Unit!151751 () Unit!151730)

(assert (=> d!1668974 (= lt!2129056 Unit!151751)))

(assert (=> d!1668974 (= (getSuffix!3404 input!5817 lt!2128730) (tail!10154 lt!2128723))))

(declare-fun lt!2129054 () Unit!151730)

(declare-fun lt!2129043 () Unit!151730)

(assert (=> d!1668974 (= lt!2129054 lt!2129043)))

(declare-fun lt!2129061 () List!60208)

(assert (=> d!1668974 (= (tail!10154 lt!2128723) lt!2129061)))

(assert (=> d!1668974 (= lt!2129043 (lemmaSamePrefixThenSameSuffix!2695 lt!2128730 (tail!10154 lt!2128723) lt!2128730 lt!2129061 input!5817))))

(assert (=> d!1668974 (= lt!2129061 (getSuffix!3404 input!5817 lt!2128730))))

(declare-fun lt!2129058 () Unit!151730)

(declare-fun lt!2129053 () Unit!151730)

(assert (=> d!1668974 (= lt!2129058 lt!2129053)))

(assert (=> d!1668974 (isPrefix!5754 lt!2128730 (++!13145 lt!2128730 (tail!10154 lt!2128723)))))

(assert (=> d!1668974 (= lt!2129053 (lemmaConcatTwoListThenFirstIsPrefix!3589 lt!2128730 (tail!10154 lt!2128723)))))

(assert (=> d!1668974 (= (++!13145 lt!2128730 (tail!10154 lt!2128723)) input!5817)))

(assert (=> d!1668974 (= (findLongestMatchInnerZipper!279 lt!2128728 lt!2128730 (+ 1 lt!2128732) (tail!10154 lt!2128723) input!5817 lt!2128734) lt!2129051)))

(declare-fun b!5171457 () Bool)

(assert (=> b!5171457 (= e!3222304 lt!2129040)))

(declare-fun bm!363062 () Bool)

(assert (=> bm!363062 (= call!363063 (lemmaIsPrefixRefl!3761 input!5817 input!5817))))

(assert (= (and d!1668974 c!890220) b!5171456))

(assert (= (and d!1668974 (not c!890220)) b!5171447))

(assert (= (and b!5171447 c!890215) b!5171451))

(assert (= (and b!5171447 (not c!890215)) b!5171448))

(assert (= (and b!5171451 c!890216) b!5171445))

(assert (= (and b!5171451 (not c!890216)) b!5171446))

(assert (= (and b!5171448 c!890219) b!5171452))

(assert (= (and b!5171448 (not c!890219)) b!5171454))

(assert (= (and b!5171448 c!890218) b!5171453))

(assert (= (and b!5171448 (not c!890218)) b!5171444))

(assert (= (and b!5171453 c!890217) b!5171455))

(assert (= (and b!5171453 (not c!890217)) b!5171457))

(assert (= (or b!5171453 b!5171444) bm!363056))

(assert (= (or b!5171453 b!5171444) bm!363058))

(assert (= (or b!5171453 b!5171444) bm!363055))

(assert (= (or b!5171453 b!5171444) bm!363061))

(assert (= (or b!5171451 b!5171452) bm!363062))

(assert (= (or b!5171451 b!5171448) bm!363060))

(assert (= (or b!5171451 b!5171452) bm!363059))

(assert (= (or b!5171451 b!5171452) bm!363057))

(assert (= (and d!1668974 res!2198021) b!5171449))

(assert (= (and b!5171449 (not res!2198022)) b!5171450))

(declare-fun m!6224412 () Bool)

(assert (=> b!5171449 m!6224412))

(declare-fun m!6224414 () Bool)

(assert (=> bm!363061 m!6224414))

(assert (=> bm!363059 m!6224000))

(declare-fun m!6224416 () Bool)

(assert (=> bm!363055 m!6224416))

(assert (=> bm!363058 m!6223976))

(declare-fun m!6224418 () Bool)

(assert (=> bm!363058 m!6224418))

(declare-fun m!6224420 () Bool)

(assert (=> b!5171450 m!6224420))

(assert (=> b!5171450 m!6224008))

(assert (=> d!1668974 m!6223976))

(declare-fun m!6224422 () Bool)

(assert (=> d!1668974 m!6224422))

(assert (=> d!1668974 m!6224012))

(assert (=> d!1668974 m!6223976))

(declare-fun m!6224424 () Bool)

(assert (=> d!1668974 m!6224424))

(assert (=> d!1668974 m!6224308))

(declare-fun m!6224426 () Bool)

(assert (=> d!1668974 m!6224426))

(assert (=> d!1668974 m!6224424))

(declare-fun m!6224428 () Bool)

(assert (=> d!1668974 m!6224428))

(assert (=> d!1668974 m!6223976))

(declare-fun m!6224430 () Bool)

(assert (=> d!1668974 m!6224430))

(assert (=> b!5171448 m!6224316))

(assert (=> b!5171448 m!6224008))

(assert (=> b!5171448 m!6224012))

(assert (=> b!5171448 m!6224300))

(assert (=> b!5171448 m!6224012))

(assert (=> b!5171448 m!6223976))

(assert (=> b!5171448 m!6224418))

(declare-fun m!6224432 () Bool)

(assert (=> b!5171448 m!6224432))

(assert (=> b!5171448 m!6223972))

(declare-fun m!6224434 () Bool)

(assert (=> b!5171448 m!6224434))

(declare-fun m!6224436 () Bool)

(assert (=> b!5171448 m!6224436))

(assert (=> b!5171448 m!6224318))

(assert (=> b!5171448 m!6224324))

(assert (=> b!5171448 m!6223976))

(declare-fun m!6224438 () Bool)

(assert (=> b!5171448 m!6224438))

(declare-fun m!6224440 () Bool)

(assert (=> b!5171448 m!6224440))

(assert (=> b!5171448 m!6224434))

(assert (=> b!5171448 m!6224330))

(assert (=> b!5171448 m!6224318))

(assert (=> bm!363060 m!6224332))

(assert (=> bm!363062 m!6223998))

(declare-fun m!6224442 () Bool)

(assert (=> b!5171453 m!6224442))

(assert (=> bm!363056 m!6223976))

(assert (=> bm!363056 m!6224438))

(assert (=> bm!363057 m!6224336))

(assert (=> b!5171157 d!1668974))

(declare-fun d!1668976 () Bool)

(assert (=> d!1668976 (= (tail!10154 lt!2128723) (t!373361 lt!2128723))))

(assert (=> b!5171157 d!1668976))

(declare-fun d!1668978 () Bool)

(assert (=> d!1668978 true))

(declare-fun lambda!258193 () Int)

(declare-fun flatMap!446 ((InoxSet Context!8010) Int) (InoxSet Context!8010))

(assert (=> d!1668978 (= (derivationStepZipper!975 z!4581 lt!2128733) (flatMap!446 z!4581 lambda!258193))))

(declare-fun bs!1203611 () Bool)

(assert (= bs!1203611 d!1668978))

(declare-fun m!6224444 () Bool)

(assert (=> bs!1203611 m!6224444))

(assert (=> b!5171157 d!1668978))

(declare-fun d!1668980 () Bool)

(assert (=> d!1668980 (isPrefix!5754 input!5817 input!5817)))

(declare-fun lt!2129064 () Unit!151730)

(declare-fun choose!38325 (List!60208 List!60208) Unit!151730)

(assert (=> d!1668980 (= lt!2129064 (choose!38325 input!5817 input!5817))))

(assert (=> d!1668980 (= (lemmaIsPrefixRefl!3761 input!5817 input!5817) lt!2129064)))

(declare-fun bs!1203612 () Bool)

(assert (= bs!1203612 d!1668980))

(assert (=> bs!1203612 m!6224000))

(declare-fun m!6224446 () Bool)

(assert (=> bs!1203612 m!6224446))

(assert (=> b!5171147 d!1668980))

(declare-fun b!5171462 () Bool)

(declare-fun e!3222312 () Bool)

(assert (=> b!5171462 (= e!3222312 (isPrefix!5754 (tail!10154 input!5817) (tail!10154 input!5817)))))

(declare-fun d!1668982 () Bool)

(declare-fun e!3222311 () Bool)

(assert (=> d!1668982 e!3222311))

(declare-fun res!2198026 () Bool)

(assert (=> d!1668982 (=> res!2198026 e!3222311)))

(declare-fun lt!2129065 () Bool)

(assert (=> d!1668982 (= res!2198026 (not lt!2129065))))

(declare-fun e!3222310 () Bool)

(assert (=> d!1668982 (= lt!2129065 e!3222310)))

(declare-fun res!2198023 () Bool)

(assert (=> d!1668982 (=> res!2198023 e!3222310)))

(assert (=> d!1668982 (= res!2198023 ((_ is Nil!60084) input!5817))))

(assert (=> d!1668982 (= (isPrefix!5754 input!5817 input!5817) lt!2129065)))

(declare-fun b!5171463 () Bool)

(assert (=> b!5171463 (= e!3222311 (>= (size!39657 input!5817) (size!39657 input!5817)))))

(declare-fun b!5171461 () Bool)

(declare-fun res!2198024 () Bool)

(assert (=> b!5171461 (=> (not res!2198024) (not e!3222312))))

(assert (=> b!5171461 (= res!2198024 (= (head!11045 input!5817) (head!11045 input!5817)))))

(declare-fun b!5171460 () Bool)

(assert (=> b!5171460 (= e!3222310 e!3222312)))

(declare-fun res!2198025 () Bool)

(assert (=> b!5171460 (=> (not res!2198025) (not e!3222312))))

(assert (=> b!5171460 (= res!2198025 (not ((_ is Nil!60084) input!5817)))))

(assert (= (and d!1668982 (not res!2198023)) b!5171460))

(assert (= (and b!5171460 res!2198025) b!5171461))

(assert (= (and b!5171461 res!2198024) b!5171462))

(assert (= (and d!1668982 (not res!2198026)) b!5171463))

(assert (=> b!5171462 m!6224042))

(assert (=> b!5171462 m!6224042))

(assert (=> b!5171462 m!6224042))

(assert (=> b!5171462 m!6224042))

(declare-fun m!6224448 () Bool)

(assert (=> b!5171462 m!6224448))

(assert (=> b!5171463 m!6223972))

(assert (=> b!5171463 m!6223972))

(assert (=> b!5171461 m!6224048))

(assert (=> b!5171461 m!6224048))

(assert (=> b!5171147 d!1668982))

(declare-fun d!1668984 () Bool)

(assert (=> d!1668984 (= input!5817 testedP!294)))

(declare-fun lt!2129068 () Unit!151730)

(declare-fun choose!38326 (List!60208 List!60208 List!60208) Unit!151730)

(assert (=> d!1668984 (= lt!2129068 (choose!38326 input!5817 testedP!294 input!5817))))

(assert (=> d!1668984 (isPrefix!5754 input!5817 input!5817)))

(assert (=> d!1668984 (= (lemmaIsPrefixSameLengthThenSameList!1403 input!5817 testedP!294 input!5817) lt!2129068)))

(declare-fun bs!1203613 () Bool)

(assert (= bs!1203613 d!1668984))

(declare-fun m!6224450 () Bool)

(assert (=> bs!1203613 m!6224450))

(assert (=> bs!1203613 m!6224000))

(assert (=> b!5171147 d!1668984))

(declare-fun b!5171468 () Bool)

(declare-fun e!3222315 () Bool)

(declare-fun tp!1450754 () Bool)

(assert (=> b!5171468 (= e!3222315 (and tp_is_empty!38495 tp!1450754))))

(assert (=> b!5171158 (= tp!1450729 e!3222315)))

(assert (= (and b!5171158 ((_ is Cons!60084) (t!373361 input!5817))) b!5171468))

(declare-fun b!5171469 () Bool)

(declare-fun e!3222316 () Bool)

(declare-fun tp!1450755 () Bool)

(assert (=> b!5171469 (= e!3222316 (and tp_is_empty!38495 tp!1450755))))

(assert (=> b!5171149 (= tp!1450730 e!3222316)))

(assert (= (and b!5171149 ((_ is Cons!60084) (t!373361 testedP!294))) b!5171469))

(declare-fun b!5171474 () Bool)

(declare-fun e!3222319 () Bool)

(declare-fun tp!1450760 () Bool)

(declare-fun tp!1450761 () Bool)

(assert (=> b!5171474 (= e!3222319 (and tp!1450760 tp!1450761))))

(assert (=> b!5171154 (= tp!1450726 e!3222319)))

(assert (= (and b!5171154 ((_ is Cons!60083) (exprs!4505 setElem!32020))) b!5171474))

(declare-fun condSetEmpty!32027 () Bool)

(assert (=> setNonEmpty!32020 (= condSetEmpty!32027 (= setRest!32019 ((as const (Array Context!8010 Bool)) false)))))

(declare-fun setRes!32027 () Bool)

(assert (=> setNonEmpty!32020 (= tp!1450731 setRes!32027)))

(declare-fun setIsEmpty!32027 () Bool)

(assert (=> setIsEmpty!32027 setRes!32027))

(declare-fun tp!1450766 () Bool)

(declare-fun e!3222322 () Bool)

(declare-fun setElem!32027 () Context!8010)

(declare-fun setNonEmpty!32027 () Bool)

(assert (=> setNonEmpty!32027 (= setRes!32027 (and tp!1450766 (inv!79799 setElem!32027) e!3222322))))

(declare-fun setRest!32027 () (InoxSet Context!8010))

(assert (=> setNonEmpty!32027 (= setRest!32019 ((_ map or) (store ((as const (Array Context!8010 Bool)) false) setElem!32027 true) setRest!32027))))

(declare-fun b!5171479 () Bool)

(declare-fun tp!1450767 () Bool)

(assert (=> b!5171479 (= e!3222322 tp!1450767)))

(assert (= (and setNonEmpty!32020 condSetEmpty!32027) setIsEmpty!32027))

(assert (= (and setNonEmpty!32020 (not condSetEmpty!32027)) setNonEmpty!32027))

(assert (= setNonEmpty!32027 b!5171479))

(declare-fun m!6224452 () Bool)

(assert (=> setNonEmpty!32027 m!6224452))

(declare-fun condSetEmpty!32028 () Bool)

(assert (=> setNonEmpty!32019 (= condSetEmpty!32028 (= setRest!32020 ((as const (Array Context!8010 Bool)) false)))))

(declare-fun setRes!32028 () Bool)

(assert (=> setNonEmpty!32019 (= tp!1450727 setRes!32028)))

(declare-fun setIsEmpty!32028 () Bool)

(assert (=> setIsEmpty!32028 setRes!32028))

(declare-fun e!3222323 () Bool)

(declare-fun setElem!32028 () Context!8010)

(declare-fun tp!1450768 () Bool)

(declare-fun setNonEmpty!32028 () Bool)

(assert (=> setNonEmpty!32028 (= setRes!32028 (and tp!1450768 (inv!79799 setElem!32028) e!3222323))))

(declare-fun setRest!32028 () (InoxSet Context!8010))

(assert (=> setNonEmpty!32028 (= setRest!32020 ((_ map or) (store ((as const (Array Context!8010 Bool)) false) setElem!32028 true) setRest!32028))))

(declare-fun b!5171480 () Bool)

(declare-fun tp!1450769 () Bool)

(assert (=> b!5171480 (= e!3222323 tp!1450769)))

(assert (= (and setNonEmpty!32019 condSetEmpty!32028) setIsEmpty!32028))

(assert (= (and setNonEmpty!32019 (not condSetEmpty!32028)) setNonEmpty!32028))

(assert (= setNonEmpty!32028 b!5171480))

(declare-fun m!6224454 () Bool)

(assert (=> setNonEmpty!32028 m!6224454))

(declare-fun b!5171481 () Bool)

(declare-fun e!3222324 () Bool)

(declare-fun tp!1450770 () Bool)

(declare-fun tp!1450771 () Bool)

(assert (=> b!5171481 (= e!3222324 (and tp!1450770 tp!1450771))))

(assert (=> b!5171156 (= tp!1450728 e!3222324)))

(assert (= (and b!5171156 ((_ is Cons!60083) (exprs!4505 setElem!32019))) b!5171481))

(check-sat (not b!5171236) (not b!5171182) (not bm!363059) (not bm!363044) (not bm!363046) (not b!5171426) (not b!5171432) (not d!1668962) (not b!5171463) (not d!1668862) (not bm!363042) (not b!5171422) (not bm!363061) (not bm!363054) (not b!5171453) (not b!5171479) (not bm!363047) (not b!5171395) (not setNonEmpty!32028) (not d!1668974) (not d!1668872) (not bm!363050) (not b!5171481) (not bm!363060) (not d!1668984) (not b!5171181) (not b!5171412) (not bm!363049) (not setNonEmpty!32027) (not b!5171396) (not b!5171230) (not bm!363055) (not b!5171468) (not d!1668980) (not bm!363058) (not b!5171434) (not b!5171474) (not b!5171423) (not b!5171461) (not b!5171170) (not b!5171450) (not b!5171433) (not d!1668968) (not bm!363051) (not b!5171231) (not d!1668948) (not d!1668884) (not b!5171449) (not b!5171242) (not d!1668978) (not bm!363057) (not b!5171169) (not d!1668880) (not bm!363045) (not d!1668960) (not d!1668888) (not b!5171462) (not bm!363039) (not b!5171469) (not d!1668886) (not b!5171399) (not b!5171437) (not bm!363062) (not bm!363056) (not b!5171425) (not d!1668970) (not bm!363040) (not b!5171415) (not d!1668870) (not b!5171419) (not b!5171405) (not b!5171443) (not b!5171183) (not b!5171421) (not b!5171414) tp_is_empty!38495 (not bm!363043) (not b!5171394) (not bm!363041) (not bm!363052) (not b!5171480) (not d!1668954) (not bm!363053) (not b!5171448) (not d!1668952) (not bm!363048))
(check-sat)
