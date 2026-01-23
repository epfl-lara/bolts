; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!519442 () Bool)

(assert start!519442)

(declare-fun b!4938758 () Bool)

(declare-fun e!3085859 () Bool)

(declare-fun e!3085869 () Bool)

(assert (=> b!4938758 (= e!3085859 e!3085869)))

(declare-fun res!2107703 () Bool)

(assert (=> b!4938758 (=> res!2107703 e!3085869)))

(declare-fun lt!2035583 () Int)

(declare-fun lt!2035574 () Int)

(assert (=> b!4938758 (= res!2107703 (>= lt!2035583 lt!2035574))))

(declare-datatypes ((Unit!147609 0))(
  ( (Unit!147610) )
))
(declare-fun lt!2035587 () Unit!147609)

(declare-fun e!3085864 () Unit!147609)

(assert (=> b!4938758 (= lt!2035587 e!3085864)))

(declare-fun c!842158 () Bool)

(assert (=> b!4938758 (= c!842158 (= lt!2035583 lt!2035574))))

(declare-fun lt!2035578 () Int)

(assert (=> b!4938758 (<= lt!2035583 lt!2035578)))

(declare-datatypes ((C!27118 0))(
  ( (C!27119 (val!22893 Int)) )
))
(declare-datatypes ((List!56996 0))(
  ( (Nil!56872) (Cons!56872 (h!63320 C!27118) (t!367496 List!56996)) )
))
(declare-fun lt!2035592 () List!56996)

(declare-fun size!37682 (List!56996) Int)

(assert (=> b!4938758 (= lt!2035578 (size!37682 lt!2035592))))

(declare-fun lt!2035582 () Unit!147609)

(declare-fun testedP!110 () List!56996)

(declare-fun lemmaIsPrefixThenSmallerEqSize!730 (List!56996 List!56996) Unit!147609)

(assert (=> b!4938758 (= lt!2035582 (lemmaIsPrefixThenSmallerEqSize!730 testedP!110 lt!2035592))))

(declare-fun b!4938759 () Bool)

(declare-fun Unit!147611 () Unit!147609)

(assert (=> b!4938759 (= e!3085864 Unit!147611)))

(declare-fun b!4938760 () Bool)

(declare-fun e!3085867 () Bool)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4938760 (= e!3085867 (= totalInputSize!132 lt!2035578))))

(declare-datatypes ((Regex!13444 0))(
  ( (ElementMatch!13444 (c!842159 C!27118)) (Concat!22017 (regOne!27400 Regex!13444) (regTwo!27400 Regex!13444)) (EmptyExpr!13444) (Star!13444 (reg!13773 Regex!13444)) (EmptyLang!13444) (Union!13444 (regOne!27401 Regex!13444) (regTwo!27401 Regex!13444)) )
))
(declare-datatypes ((List!56997 0))(
  ( (Nil!56873) (Cons!56873 (h!63321 Regex!13444) (t!367497 List!56997)) )
))
(declare-datatypes ((Context!6172 0))(
  ( (Context!6173 (exprs!3586 List!56997)) )
))
(declare-fun z!3568 () (Set Context!6172))

(declare-fun lt!2035586 () Int)

(declare-fun lt!2035593 () List!56996)

(declare-datatypes ((IArray!29967 0))(
  ( (IArray!29968 (innerList!15041 List!56996)) )
))
(declare-datatypes ((Conc!14953 0))(
  ( (Node!14953 (left!41480 Conc!14953) (right!41810 Conc!14953) (csize!30136 Int) (cheight!15164 Int)) (Leaf!24863 (xs!18277 IArray!29967) (csize!30137 Int)) (Empty!14953) )
))
(declare-datatypes ((BalanceConc!29336 0))(
  ( (BalanceConc!29337 (c!842160 Conc!14953)) )
))
(declare-fun totalInput!685 () BalanceConc!29336)

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2035590 () C!27118)

(declare-fun lt!2035581 () List!56996)

(declare-fun findLongestMatchInnerZipperFast!100 ((Set Context!6172) List!56996 Int List!56996 BalanceConc!29336 Int) Int)

(declare-fun derivationStepZipper!603 ((Set Context!6172) C!27118) (Set Context!6172))

(assert (=> b!4938760 (= lt!2035586 (findLongestMatchInnerZipperFast!100 (derivationStepZipper!603 z!3568 lt!2035590) lt!2035581 (+ 1 testedPSize!70) lt!2035593 totalInput!685 totalInputSize!132))))

(declare-fun b!4938761 () Bool)

(declare-fun e!3085862 () Bool)

(declare-fun tp_is_empty!36065 () Bool)

(declare-fun tp!1385856 () Bool)

(assert (=> b!4938761 (= e!3085862 (and tp_is_empty!36065 tp!1385856))))

(declare-fun b!4938762 () Bool)

(declare-fun res!2107708 () Bool)

(declare-fun e!3085865 () Bool)

(assert (=> b!4938762 (=> res!2107708 e!3085865)))

(assert (=> b!4938762 (= res!2107708 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4938763 () Bool)

(declare-fun e!3085870 () Bool)

(assert (=> b!4938763 (= e!3085870 e!3085865)))

(declare-fun res!2107711 () Bool)

(assert (=> b!4938763 (=> res!2107711 e!3085865)))

(declare-fun lostCauseZipper!762 ((Set Context!6172)) Bool)

(assert (=> b!4938763 (= res!2107711 (lostCauseZipper!762 z!3568))))

(declare-fun testedSuffix!70 () List!56996)

(declare-fun lt!2035596 () List!56996)

(assert (=> b!4938763 (and (= testedSuffix!70 lt!2035596) (= lt!2035596 testedSuffix!70))))

(declare-fun lt!2035575 () Unit!147609)

(declare-fun lemmaSamePrefixThenSameSuffix!2440 (List!56996 List!56996 List!56996 List!56996 List!56996) Unit!147609)

(assert (=> b!4938763 (= lt!2035575 (lemmaSamePrefixThenSameSuffix!2440 testedP!110 testedSuffix!70 testedP!110 lt!2035596 lt!2035592))))

(declare-fun getSuffix!3026 (List!56996 List!56996) List!56996)

(assert (=> b!4938763 (= lt!2035596 (getSuffix!3026 lt!2035592 testedP!110))))

(declare-fun setIsEmpty!27861 () Bool)

(declare-fun setRes!27861 () Bool)

(assert (=> setIsEmpty!27861 setRes!27861))

(declare-fun res!2107705 () Bool)

(declare-fun e!3085860 () Bool)

(assert (=> start!519442 (=> (not res!2107705) (not e!3085860))))

(declare-fun lt!2035584 () List!56996)

(assert (=> start!519442 (= res!2107705 (= lt!2035584 lt!2035592))))

(declare-fun list!18079 (BalanceConc!29336) List!56996)

(assert (=> start!519442 (= lt!2035592 (list!18079 totalInput!685))))

(declare-fun ++!12413 (List!56996 List!56996) List!56996)

(assert (=> start!519442 (= lt!2035584 (++!12413 testedP!110 testedSuffix!70))))

(assert (=> start!519442 e!3085860))

(assert (=> start!519442 e!3085862))

(declare-fun condSetEmpty!27861 () Bool)

(assert (=> start!519442 (= condSetEmpty!27861 (= z!3568 (as set.empty (Set Context!6172))))))

(assert (=> start!519442 setRes!27861))

(assert (=> start!519442 true))

(declare-fun e!3085863 () Bool)

(declare-fun inv!73939 (BalanceConc!29336) Bool)

(assert (=> start!519442 (and (inv!73939 totalInput!685) e!3085863)))

(declare-fun e!3085858 () Bool)

(assert (=> start!519442 e!3085858))

(declare-fun b!4938764 () Bool)

(declare-fun e!3085868 () Bool)

(declare-fun tp!1385855 () Bool)

(assert (=> b!4938764 (= e!3085868 tp!1385855)))

(declare-fun setNonEmpty!27861 () Bool)

(declare-fun tp!1385854 () Bool)

(declare-fun setElem!27861 () Context!6172)

(declare-fun inv!73940 (Context!6172) Bool)

(assert (=> setNonEmpty!27861 (= setRes!27861 (and tp!1385854 (inv!73940 setElem!27861) e!3085868))))

(declare-fun setRest!27861 () (Set Context!6172))

(assert (=> setNonEmpty!27861 (= z!3568 (set.union (set.insert setElem!27861 (as set.empty (Set Context!6172))) setRest!27861))))

(declare-fun b!4938765 () Bool)

(declare-fun tp!1385857 () Bool)

(assert (=> b!4938765 (= e!3085858 (and tp_is_empty!36065 tp!1385857))))

(declare-fun b!4938766 () Bool)

(assert (=> b!4938766 (= e!3085869 e!3085867)))

(declare-fun res!2107710 () Bool)

(assert (=> b!4938766 (=> res!2107710 e!3085867)))

(declare-fun nullableZipper!849 ((Set Context!6172)) Bool)

(assert (=> b!4938766 (= res!2107710 (nullableZipper!849 z!3568))))

(assert (=> b!4938766 (= (++!12413 lt!2035581 lt!2035593) lt!2035592)))

(assert (=> b!4938766 (= lt!2035581 (++!12413 testedP!110 (Cons!56872 lt!2035590 Nil!56872)))))

(declare-fun lt!2035591 () Unit!147609)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1424 (List!56996 C!27118 List!56996 List!56996) Unit!147609)

(assert (=> b!4938766 (= lt!2035591 (lemmaMoveElementToOtherListKeepsConcatEq!1424 testedP!110 lt!2035590 lt!2035593 lt!2035592))))

(declare-fun tail!9720 (List!56996) List!56996)

(assert (=> b!4938766 (= lt!2035593 (tail!9720 testedSuffix!70))))

(declare-fun isPrefix!5042 (List!56996 List!56996) Bool)

(declare-fun head!10581 (List!56996) C!27118)

(assert (=> b!4938766 (isPrefix!5042 (++!12413 testedP!110 (Cons!56872 (head!10581 lt!2035596) Nil!56872)) lt!2035592)))

(declare-fun lt!2035594 () Unit!147609)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!812 (List!56996 List!56996) Unit!147609)

(assert (=> b!4938766 (= lt!2035594 (lemmaAddHeadSuffixToPrefixStillPrefix!812 testedP!110 lt!2035592))))

(declare-fun b!4938767 () Bool)

(declare-fun e!3085866 () Bool)

(declare-fun e!3085871 () Bool)

(assert (=> b!4938767 (= e!3085866 e!3085871)))

(declare-fun res!2107713 () Bool)

(assert (=> b!4938767 (=> (not res!2107713) (not e!3085871))))

(assert (=> b!4938767 (= res!2107713 (= totalInputSize!132 lt!2035574))))

(declare-fun size!37683 (BalanceConc!29336) Int)

(assert (=> b!4938767 (= lt!2035574 (size!37683 totalInput!685))))

(declare-fun b!4938768 () Bool)

(assert (=> b!4938768 (= e!3085871 (not e!3085870))))

(declare-fun res!2107707 () Bool)

(assert (=> b!4938768 (=> res!2107707 e!3085870)))

(assert (=> b!4938768 (= res!2107707 (not (isPrefix!5042 testedP!110 lt!2035592)))))

(assert (=> b!4938768 (isPrefix!5042 testedP!110 lt!2035584)))

(declare-fun lt!2035579 () Unit!147609)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3266 (List!56996 List!56996) Unit!147609)

(assert (=> b!4938768 (= lt!2035579 (lemmaConcatTwoListThenFirstIsPrefix!3266 testedP!110 testedSuffix!70))))

(declare-fun b!4938769 () Bool)

(declare-fun tp!1385858 () Bool)

(declare-fun inv!73941 (Conc!14953) Bool)

(assert (=> b!4938769 (= e!3085863 (and (inv!73941 (c!842160 totalInput!685)) tp!1385858))))

(declare-fun b!4938770 () Bool)

(declare-fun e!3085861 () Bool)

(assert (=> b!4938770 (= e!3085861 e!3085859)))

(declare-fun res!2107709 () Bool)

(assert (=> b!4938770 (=> res!2107709 e!3085859)))

(assert (=> b!4938770 (= res!2107709 (not (= lt!2035590 (head!10581 testedSuffix!70))))))

(declare-fun apply!13786 (BalanceConc!29336 Int) C!27118)

(assert (=> b!4938770 (= lt!2035590 (apply!13786 totalInput!685 testedPSize!70))))

(declare-fun drop!2275 (List!56996 Int) List!56996)

(declare-fun apply!13787 (List!56996 Int) C!27118)

(assert (=> b!4938770 (= (head!10581 (drop!2275 lt!2035592 testedPSize!70)) (apply!13787 lt!2035592 testedPSize!70))))

(declare-fun lt!2035585 () Unit!147609)

(declare-fun lemmaDropApply!1333 (List!56996 Int) Unit!147609)

(assert (=> b!4938770 (= lt!2035585 (lemmaDropApply!1333 lt!2035592 testedPSize!70))))

(declare-fun lt!2035580 () List!56996)

(declare-fun lt!2035588 () List!56996)

(assert (=> b!4938770 (not (or (not (= lt!2035580 testedP!110)) (not (= lt!2035588 testedSuffix!70))))))

(declare-fun lt!2035577 () Unit!147609)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!710 (List!56996 List!56996 List!56996 List!56996) Unit!147609)

(assert (=> b!4938770 (= lt!2035577 (lemmaConcatSameAndSameSizesThenSameLists!710 lt!2035580 lt!2035588 testedP!110 testedSuffix!70))))

(declare-fun b!4938771 () Bool)

(assert (=> b!4938771 (= e!3085860 e!3085866)))

(declare-fun res!2107704 () Bool)

(assert (=> b!4938771 (=> (not res!2107704) (not e!3085866))))

(assert (=> b!4938771 (= res!2107704 (= testedPSize!70 lt!2035583))))

(assert (=> b!4938771 (= lt!2035583 (size!37682 testedP!110))))

(declare-fun b!4938772 () Bool)

(assert (=> b!4938772 (= e!3085865 e!3085861)))

(declare-fun res!2107706 () Bool)

(assert (=> b!4938772 (=> res!2107706 e!3085861)))

(assert (=> b!4938772 (= res!2107706 (not (= (++!12413 lt!2035580 lt!2035588) lt!2035592)))))

(declare-datatypes ((tuple2!61404 0))(
  ( (tuple2!61405 (_1!34005 BalanceConc!29336) (_2!34005 BalanceConc!29336)) )
))
(declare-fun lt!2035576 () tuple2!61404)

(assert (=> b!4938772 (= lt!2035588 (list!18079 (_2!34005 lt!2035576)))))

(assert (=> b!4938772 (= lt!2035580 (list!18079 (_1!34005 lt!2035576)))))

(declare-fun splitAt!356 (BalanceConc!29336 Int) tuple2!61404)

(assert (=> b!4938772 (= lt!2035576 (splitAt!356 totalInput!685 testedPSize!70))))

(declare-fun b!4938773 () Bool)

(declare-fun Unit!147612 () Unit!147609)

(assert (=> b!4938773 (= e!3085864 Unit!147612)))

(declare-fun lt!2035595 () Unit!147609)

(declare-fun lemmaIsPrefixRefl!3408 (List!56996 List!56996) Unit!147609)

(assert (=> b!4938773 (= lt!2035595 (lemmaIsPrefixRefl!3408 lt!2035592 lt!2035592))))

(assert (=> b!4938773 (isPrefix!5042 lt!2035592 lt!2035592)))

(declare-fun lt!2035589 () Unit!147609)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1166 (List!56996 List!56996 List!56996) Unit!147609)

(assert (=> b!4938773 (= lt!2035589 (lemmaIsPrefixSameLengthThenSameList!1166 lt!2035592 testedP!110 lt!2035592))))

(assert (=> b!4938773 false))

(declare-fun b!4938774 () Bool)

(declare-fun res!2107712 () Bool)

(assert (=> b!4938774 (=> res!2107712 e!3085861)))

(assert (=> b!4938774 (= res!2107712 (not (= (size!37683 (_1!34005 lt!2035576)) testedPSize!70)))))

(assert (= (and start!519442 res!2107705) b!4938771))

(assert (= (and b!4938771 res!2107704) b!4938767))

(assert (= (and b!4938767 res!2107713) b!4938768))

(assert (= (and b!4938768 (not res!2107707)) b!4938763))

(assert (= (and b!4938763 (not res!2107711)) b!4938762))

(assert (= (and b!4938762 (not res!2107708)) b!4938772))

(assert (= (and b!4938772 (not res!2107706)) b!4938774))

(assert (= (and b!4938774 (not res!2107712)) b!4938770))

(assert (= (and b!4938770 (not res!2107709)) b!4938758))

(assert (= (and b!4938758 c!842158) b!4938773))

(assert (= (and b!4938758 (not c!842158)) b!4938759))

(assert (= (and b!4938758 (not res!2107703)) b!4938766))

(assert (= (and b!4938766 (not res!2107710)) b!4938760))

(assert (= (and start!519442 (is-Cons!56872 testedP!110)) b!4938761))

(assert (= (and start!519442 condSetEmpty!27861) setIsEmpty!27861))

(assert (= (and start!519442 (not condSetEmpty!27861)) setNonEmpty!27861))

(assert (= setNonEmpty!27861 b!4938764))

(assert (= start!519442 b!4938769))

(assert (= (and start!519442 (is-Cons!56872 testedSuffix!70)) b!4938765))

(declare-fun m!5960956 () Bool)

(assert (=> b!4938758 m!5960956))

(declare-fun m!5960958 () Bool)

(assert (=> b!4938758 m!5960958))

(declare-fun m!5960960 () Bool)

(assert (=> b!4938760 m!5960960))

(assert (=> b!4938760 m!5960960))

(declare-fun m!5960962 () Bool)

(assert (=> b!4938760 m!5960962))

(declare-fun m!5960964 () Bool)

(assert (=> b!4938769 m!5960964))

(declare-fun m!5960966 () Bool)

(assert (=> b!4938770 m!5960966))

(declare-fun m!5960968 () Bool)

(assert (=> b!4938770 m!5960968))

(declare-fun m!5960970 () Bool)

(assert (=> b!4938770 m!5960970))

(declare-fun m!5960972 () Bool)

(assert (=> b!4938770 m!5960972))

(declare-fun m!5960974 () Bool)

(assert (=> b!4938770 m!5960974))

(assert (=> b!4938770 m!5960970))

(declare-fun m!5960976 () Bool)

(assert (=> b!4938770 m!5960976))

(declare-fun m!5960978 () Bool)

(assert (=> b!4938770 m!5960978))

(declare-fun m!5960980 () Bool)

(assert (=> b!4938774 m!5960980))

(declare-fun m!5960982 () Bool)

(assert (=> setNonEmpty!27861 m!5960982))

(declare-fun m!5960984 () Bool)

(assert (=> b!4938766 m!5960984))

(declare-fun m!5960986 () Bool)

(assert (=> b!4938766 m!5960986))

(declare-fun m!5960988 () Bool)

(assert (=> b!4938766 m!5960988))

(declare-fun m!5960990 () Bool)

(assert (=> b!4938766 m!5960990))

(declare-fun m!5960992 () Bool)

(assert (=> b!4938766 m!5960992))

(declare-fun m!5960994 () Bool)

(assert (=> b!4938766 m!5960994))

(assert (=> b!4938766 m!5960988))

(declare-fun m!5960996 () Bool)

(assert (=> b!4938766 m!5960996))

(declare-fun m!5960998 () Bool)

(assert (=> b!4938766 m!5960998))

(declare-fun m!5961000 () Bool)

(assert (=> b!4938766 m!5961000))

(declare-fun m!5961002 () Bool)

(assert (=> b!4938763 m!5961002))

(declare-fun m!5961004 () Bool)

(assert (=> b!4938763 m!5961004))

(declare-fun m!5961006 () Bool)

(assert (=> b!4938763 m!5961006))

(declare-fun m!5961008 () Bool)

(assert (=> b!4938767 m!5961008))

(declare-fun m!5961010 () Bool)

(assert (=> b!4938768 m!5961010))

(declare-fun m!5961012 () Bool)

(assert (=> b!4938768 m!5961012))

(declare-fun m!5961014 () Bool)

(assert (=> b!4938768 m!5961014))

(declare-fun m!5961016 () Bool)

(assert (=> b!4938773 m!5961016))

(declare-fun m!5961018 () Bool)

(assert (=> b!4938773 m!5961018))

(declare-fun m!5961020 () Bool)

(assert (=> b!4938773 m!5961020))

(declare-fun m!5961022 () Bool)

(assert (=> b!4938771 m!5961022))

(declare-fun m!5961024 () Bool)

(assert (=> start!519442 m!5961024))

(declare-fun m!5961026 () Bool)

(assert (=> start!519442 m!5961026))

(declare-fun m!5961028 () Bool)

(assert (=> start!519442 m!5961028))

(declare-fun m!5961030 () Bool)

(assert (=> b!4938772 m!5961030))

(declare-fun m!5961032 () Bool)

(assert (=> b!4938772 m!5961032))

(declare-fun m!5961034 () Bool)

(assert (=> b!4938772 m!5961034))

(declare-fun m!5961036 () Bool)

(assert (=> b!4938772 m!5961036))

(push 1)

(assert tp_is_empty!36065)

(assert (not b!4938763))

(assert (not start!519442))

(assert (not b!4938768))

(assert (not setNonEmpty!27861))

(assert (not b!4938774))

(assert (not b!4938769))

(assert (not b!4938771))

(assert (not b!4938766))

(assert (not b!4938770))

(assert (not b!4938760))

(assert (not b!4938765))

(assert (not b!4938767))

(assert (not b!4938773))

(assert (not b!4938772))

(assert (not b!4938761))

(assert (not b!4938764))

(assert (not b!4938758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1181016 () Bool)

(declare-fun b!4938855 () Bool)

(declare-fun d!1590026 () Bool)

(assert (= bs!1181016 (and b!4938855 d!1590026)))

(declare-fun lambda!246074 () Int)

(declare-fun lambda!246073 () Int)

(assert (=> bs!1181016 (not (= lambda!246074 lambda!246073))))

(declare-fun bs!1181017 () Bool)

(declare-fun b!4938856 () Bool)

(assert (= bs!1181017 (and b!4938856 d!1590026)))

(declare-fun lambda!246075 () Int)

(assert (=> bs!1181017 (not (= lambda!246075 lambda!246073))))

(declare-fun bs!1181018 () Bool)

(assert (= bs!1181018 (and b!4938856 b!4938855)))

(assert (=> bs!1181018 (= lambda!246075 lambda!246074)))

(declare-fun e!3085938 () Unit!147609)

(declare-fun Unit!147617 () Unit!147609)

(assert (=> b!4938855 (= e!3085938 Unit!147617)))

(declare-datatypes ((List!57000 0))(
  ( (Nil!56876) (Cons!56876 (h!63324 Context!6172) (t!367500 List!57000)) )
))
(declare-fun lt!2035696 () List!57000)

(declare-fun call!344577 () List!57000)

(assert (=> b!4938855 (= lt!2035696 call!344577)))

(declare-fun lt!2035691 () Unit!147609)

(declare-fun lemmaNotForallThenExists!214 (List!57000 Int) Unit!147609)

(assert (=> b!4938855 (= lt!2035691 (lemmaNotForallThenExists!214 lt!2035696 lambda!246073))))

(declare-fun call!344578 () Bool)

(assert (=> b!4938855 call!344578))

(declare-fun lt!2035693 () Unit!147609)

(assert (=> b!4938855 (= lt!2035693 lt!2035691)))

(declare-fun bm!344573 () Bool)

(declare-fun toList!7976 ((Set Context!6172)) List!57000)

(assert (=> bm!344573 (= call!344577 (toList!7976 z!3568))))

(declare-fun Unit!147618 () Unit!147609)

(assert (=> b!4938856 (= e!3085938 Unit!147618)))

(declare-fun lt!2035690 () List!57000)

(assert (=> b!4938856 (= lt!2035690 call!344577)))

(declare-fun lt!2035694 () Unit!147609)

(declare-fun lemmaForallThenNotExists!197 (List!57000 Int) Unit!147609)

(assert (=> b!4938856 (= lt!2035694 (lemmaForallThenNotExists!197 lt!2035690 lambda!246073))))

(assert (=> b!4938856 (not call!344578)))

(declare-fun lt!2035689 () Unit!147609)

(assert (=> b!4938856 (= lt!2035689 lt!2035694)))

(declare-fun lt!2035692 () Bool)

(declare-datatypes ((Option!14194 0))(
  ( (None!14193) (Some!14193 (v!50167 List!56996)) )
))
(declare-fun isEmpty!30623 (Option!14194) Bool)

(declare-fun getLanguageWitness!656 ((Set Context!6172)) Option!14194)

(assert (=> d!1590026 (= lt!2035692 (isEmpty!30623 (getLanguageWitness!656 z!3568)))))

(declare-fun forall!13211 ((Set Context!6172) Int) Bool)

(assert (=> d!1590026 (= lt!2035692 (forall!13211 z!3568 lambda!246073))))

(declare-fun lt!2035695 () Unit!147609)

(assert (=> d!1590026 (= lt!2035695 e!3085938)))

(declare-fun c!842181 () Bool)

(assert (=> d!1590026 (= c!842181 (not (forall!13211 z!3568 lambda!246073)))))

(assert (=> d!1590026 (= (lostCauseZipper!762 z!3568) lt!2035692)))

(declare-fun bm!344572 () Bool)

(declare-fun exists!1299 (List!57000 Int) Bool)

(assert (=> bm!344572 (= call!344578 (exists!1299 (ite c!842181 lt!2035696 lt!2035690) (ite c!842181 lambda!246074 lambda!246075)))))

(assert (= (and d!1590026 c!842181) b!4938855))

(assert (= (and d!1590026 (not c!842181)) b!4938856))

(assert (= (or b!4938855 b!4938856) bm!344572))

(assert (= (or b!4938855 b!4938856) bm!344573))

(declare-fun m!5961146 () Bool)

(assert (=> b!4938856 m!5961146))

(declare-fun m!5961148 () Bool)

(assert (=> bm!344572 m!5961148))

(declare-fun m!5961150 () Bool)

(assert (=> bm!344573 m!5961150))

(declare-fun m!5961152 () Bool)

(assert (=> b!4938855 m!5961152))

(declare-fun m!5961154 () Bool)

(assert (=> d!1590026 m!5961154))

(assert (=> d!1590026 m!5961154))

(declare-fun m!5961156 () Bool)

(assert (=> d!1590026 m!5961156))

(declare-fun m!5961158 () Bool)

(assert (=> d!1590026 m!5961158))

(assert (=> d!1590026 m!5961158))

(assert (=> b!4938763 d!1590026))

(declare-fun d!1590038 () Bool)

(assert (=> d!1590038 (= testedSuffix!70 lt!2035596)))

(declare-fun lt!2035699 () Unit!147609)

(declare-fun choose!36348 (List!56996 List!56996 List!56996 List!56996 List!56996) Unit!147609)

(assert (=> d!1590038 (= lt!2035699 (choose!36348 testedP!110 testedSuffix!70 testedP!110 lt!2035596 lt!2035592))))

(assert (=> d!1590038 (isPrefix!5042 testedP!110 lt!2035592)))

(assert (=> d!1590038 (= (lemmaSamePrefixThenSameSuffix!2440 testedP!110 testedSuffix!70 testedP!110 lt!2035596 lt!2035592) lt!2035699)))

(declare-fun bs!1181019 () Bool)

(assert (= bs!1181019 d!1590038))

(declare-fun m!5961160 () Bool)

(assert (=> bs!1181019 m!5961160))

(assert (=> bs!1181019 m!5961010))

(assert (=> b!4938763 d!1590038))

(declare-fun d!1590040 () Bool)

(declare-fun lt!2035702 () List!56996)

(assert (=> d!1590040 (= (++!12413 testedP!110 lt!2035702) lt!2035592)))

(declare-fun e!3085941 () List!56996)

(assert (=> d!1590040 (= lt!2035702 e!3085941)))

(declare-fun c!842184 () Bool)

(assert (=> d!1590040 (= c!842184 (is-Cons!56872 testedP!110))))

(assert (=> d!1590040 (>= (size!37682 lt!2035592) (size!37682 testedP!110))))

(assert (=> d!1590040 (= (getSuffix!3026 lt!2035592 testedP!110) lt!2035702)))

(declare-fun b!4938861 () Bool)

(assert (=> b!4938861 (= e!3085941 (getSuffix!3026 (tail!9720 lt!2035592) (t!367496 testedP!110)))))

(declare-fun b!4938862 () Bool)

(assert (=> b!4938862 (= e!3085941 lt!2035592)))

(assert (= (and d!1590040 c!842184) b!4938861))

(assert (= (and d!1590040 (not c!842184)) b!4938862))

(declare-fun m!5961162 () Bool)

(assert (=> d!1590040 m!5961162))

(assert (=> d!1590040 m!5960956))

(assert (=> d!1590040 m!5961022))

(declare-fun m!5961164 () Bool)

(assert (=> b!4938861 m!5961164))

(assert (=> b!4938861 m!5961164))

(declare-fun m!5961166 () Bool)

(assert (=> b!4938861 m!5961166))

(assert (=> b!4938763 d!1590040))

(declare-fun b!4938871 () Bool)

(declare-fun e!3085946 () List!56996)

(assert (=> b!4938871 (= e!3085946 lt!2035588)))

(declare-fun d!1590042 () Bool)

(declare-fun e!3085947 () Bool)

(assert (=> d!1590042 e!3085947))

(declare-fun res!2107770 () Bool)

(assert (=> d!1590042 (=> (not res!2107770) (not e!3085947))))

(declare-fun lt!2035705 () List!56996)

(declare-fun content!10115 (List!56996) (Set C!27118))

(assert (=> d!1590042 (= res!2107770 (= (content!10115 lt!2035705) (set.union (content!10115 lt!2035580) (content!10115 lt!2035588))))))

(assert (=> d!1590042 (= lt!2035705 e!3085946)))

(declare-fun c!842187 () Bool)

(assert (=> d!1590042 (= c!842187 (is-Nil!56872 lt!2035580))))

(assert (=> d!1590042 (= (++!12413 lt!2035580 lt!2035588) lt!2035705)))

(declare-fun b!4938873 () Bool)

(declare-fun res!2107771 () Bool)

(assert (=> b!4938873 (=> (not res!2107771) (not e!3085947))))

(assert (=> b!4938873 (= res!2107771 (= (size!37682 lt!2035705) (+ (size!37682 lt!2035580) (size!37682 lt!2035588))))))

(declare-fun b!4938872 () Bool)

(assert (=> b!4938872 (= e!3085946 (Cons!56872 (h!63320 lt!2035580) (++!12413 (t!367496 lt!2035580) lt!2035588)))))

(declare-fun b!4938874 () Bool)

(assert (=> b!4938874 (= e!3085947 (or (not (= lt!2035588 Nil!56872)) (= lt!2035705 lt!2035580)))))

(assert (= (and d!1590042 c!842187) b!4938871))

(assert (= (and d!1590042 (not c!842187)) b!4938872))

(assert (= (and d!1590042 res!2107770) b!4938873))

(assert (= (and b!4938873 res!2107771) b!4938874))

(declare-fun m!5961168 () Bool)

(assert (=> d!1590042 m!5961168))

(declare-fun m!5961170 () Bool)

(assert (=> d!1590042 m!5961170))

(declare-fun m!5961172 () Bool)

(assert (=> d!1590042 m!5961172))

(declare-fun m!5961174 () Bool)

(assert (=> b!4938873 m!5961174))

(declare-fun m!5961176 () Bool)

(assert (=> b!4938873 m!5961176))

(declare-fun m!5961178 () Bool)

(assert (=> b!4938873 m!5961178))

(declare-fun m!5961180 () Bool)

(assert (=> b!4938872 m!5961180))

(assert (=> b!4938772 d!1590042))

(declare-fun d!1590044 () Bool)

(declare-fun list!18081 (Conc!14953) List!56996)

(assert (=> d!1590044 (= (list!18079 (_2!34005 lt!2035576)) (list!18081 (c!842160 (_2!34005 lt!2035576))))))

(declare-fun bs!1181020 () Bool)

(assert (= bs!1181020 d!1590044))

(declare-fun m!5961182 () Bool)

(assert (=> bs!1181020 m!5961182))

(assert (=> b!4938772 d!1590044))

(declare-fun d!1590046 () Bool)

(assert (=> d!1590046 (= (list!18079 (_1!34005 lt!2035576)) (list!18081 (c!842160 (_1!34005 lt!2035576))))))

(declare-fun bs!1181021 () Bool)

(assert (= bs!1181021 d!1590046))

(declare-fun m!5961184 () Bool)

(assert (=> bs!1181021 m!5961184))

(assert (=> b!4938772 d!1590046))

(declare-fun d!1590048 () Bool)

(declare-fun e!3085950 () Bool)

(assert (=> d!1590048 e!3085950))

(declare-fun res!2107777 () Bool)

(assert (=> d!1590048 (=> (not res!2107777) (not e!3085950))))

(declare-fun lt!2035710 () tuple2!61404)

(declare-fun isBalanced!4126 (Conc!14953) Bool)

(assert (=> d!1590048 (= res!2107777 (isBalanced!4126 (c!842160 (_1!34005 lt!2035710))))))

(declare-datatypes ((tuple2!61408 0))(
  ( (tuple2!61409 (_1!34007 Conc!14953) (_2!34007 Conc!14953)) )
))
(declare-fun lt!2035711 () tuple2!61408)

(assert (=> d!1590048 (= lt!2035710 (tuple2!61405 (BalanceConc!29337 (_1!34007 lt!2035711)) (BalanceConc!29337 (_2!34007 lt!2035711))))))

(declare-fun splitAt!358 (Conc!14953 Int) tuple2!61408)

(assert (=> d!1590048 (= lt!2035711 (splitAt!358 (c!842160 totalInput!685) testedPSize!70))))

(assert (=> d!1590048 (isBalanced!4126 (c!842160 totalInput!685))))

(assert (=> d!1590048 (= (splitAt!356 totalInput!685 testedPSize!70) lt!2035710)))

(declare-fun b!4938879 () Bool)

(declare-fun res!2107776 () Bool)

(assert (=> b!4938879 (=> (not res!2107776) (not e!3085950))))

(assert (=> b!4938879 (= res!2107776 (isBalanced!4126 (c!842160 (_2!34005 lt!2035710))))))

(declare-fun b!4938880 () Bool)

(declare-datatypes ((tuple2!61410 0))(
  ( (tuple2!61411 (_1!34008 List!56996) (_2!34008 List!56996)) )
))
(declare-fun splitAtIndex!132 (List!56996 Int) tuple2!61410)

(assert (=> b!4938880 (= e!3085950 (= (tuple2!61411 (list!18079 (_1!34005 lt!2035710)) (list!18079 (_2!34005 lt!2035710))) (splitAtIndex!132 (list!18079 totalInput!685) testedPSize!70)))))

(assert (= (and d!1590048 res!2107777) b!4938879))

(assert (= (and b!4938879 res!2107776) b!4938880))

(declare-fun m!5961186 () Bool)

(assert (=> d!1590048 m!5961186))

(declare-fun m!5961188 () Bool)

(assert (=> d!1590048 m!5961188))

(declare-fun m!5961190 () Bool)

(assert (=> d!1590048 m!5961190))

(declare-fun m!5961192 () Bool)

(assert (=> b!4938879 m!5961192))

(declare-fun m!5961194 () Bool)

(assert (=> b!4938880 m!5961194))

(declare-fun m!5961196 () Bool)

(assert (=> b!4938880 m!5961196))

(assert (=> b!4938880 m!5961024))

(assert (=> b!4938880 m!5961024))

(declare-fun m!5961198 () Bool)

(assert (=> b!4938880 m!5961198))

(assert (=> b!4938772 d!1590048))

(declare-fun d!1590050 () Bool)

(declare-fun lt!2035714 () Int)

(assert (=> d!1590050 (= lt!2035714 (size!37682 (list!18079 (_1!34005 lt!2035576))))))

(declare-fun size!37686 (Conc!14953) Int)

(assert (=> d!1590050 (= lt!2035714 (size!37686 (c!842160 (_1!34005 lt!2035576))))))

(assert (=> d!1590050 (= (size!37683 (_1!34005 lt!2035576)) lt!2035714)))

(declare-fun bs!1181022 () Bool)

(assert (= bs!1181022 d!1590050))

(assert (=> bs!1181022 m!5961034))

(assert (=> bs!1181022 m!5961034))

(declare-fun m!5961200 () Bool)

(assert (=> bs!1181022 m!5961200))

(declare-fun m!5961202 () Bool)

(assert (=> bs!1181022 m!5961202))

(assert (=> b!4938774 d!1590050))

(declare-fun d!1590052 () Bool)

(assert (=> d!1590052 (isPrefix!5042 lt!2035592 lt!2035592)))

(declare-fun lt!2035717 () Unit!147609)

(declare-fun choose!36349 (List!56996 List!56996) Unit!147609)

(assert (=> d!1590052 (= lt!2035717 (choose!36349 lt!2035592 lt!2035592))))

(assert (=> d!1590052 (= (lemmaIsPrefixRefl!3408 lt!2035592 lt!2035592) lt!2035717)))

(declare-fun bs!1181023 () Bool)

(assert (= bs!1181023 d!1590052))

(assert (=> bs!1181023 m!5961018))

(declare-fun m!5961204 () Bool)

(assert (=> bs!1181023 m!5961204))

(assert (=> b!4938773 d!1590052))

(declare-fun b!4938892 () Bool)

(declare-fun e!3085959 () Bool)

(assert (=> b!4938892 (= e!3085959 (>= (size!37682 lt!2035592) (size!37682 lt!2035592)))))

(declare-fun b!4938891 () Bool)

(declare-fun e!3085958 () Bool)

(assert (=> b!4938891 (= e!3085958 (isPrefix!5042 (tail!9720 lt!2035592) (tail!9720 lt!2035592)))))

(declare-fun b!4938889 () Bool)

(declare-fun e!3085957 () Bool)

(assert (=> b!4938889 (= e!3085957 e!3085958)))

(declare-fun res!2107788 () Bool)

(assert (=> b!4938889 (=> (not res!2107788) (not e!3085958))))

(assert (=> b!4938889 (= res!2107788 (not (is-Nil!56872 lt!2035592)))))

(declare-fun d!1590054 () Bool)

(assert (=> d!1590054 e!3085959))

(declare-fun res!2107787 () Bool)

(assert (=> d!1590054 (=> res!2107787 e!3085959)))

(declare-fun lt!2035720 () Bool)

(assert (=> d!1590054 (= res!2107787 (not lt!2035720))))

(assert (=> d!1590054 (= lt!2035720 e!3085957)))

(declare-fun res!2107789 () Bool)

(assert (=> d!1590054 (=> res!2107789 e!3085957)))

(assert (=> d!1590054 (= res!2107789 (is-Nil!56872 lt!2035592))))

(assert (=> d!1590054 (= (isPrefix!5042 lt!2035592 lt!2035592) lt!2035720)))

(declare-fun b!4938890 () Bool)

(declare-fun res!2107786 () Bool)

(assert (=> b!4938890 (=> (not res!2107786) (not e!3085958))))

(assert (=> b!4938890 (= res!2107786 (= (head!10581 lt!2035592) (head!10581 lt!2035592)))))

(assert (= (and d!1590054 (not res!2107789)) b!4938889))

(assert (= (and b!4938889 res!2107788) b!4938890))

(assert (= (and b!4938890 res!2107786) b!4938891))

(assert (= (and d!1590054 (not res!2107787)) b!4938892))

(assert (=> b!4938892 m!5960956))

(assert (=> b!4938892 m!5960956))

(assert (=> b!4938891 m!5961164))

(assert (=> b!4938891 m!5961164))

(assert (=> b!4938891 m!5961164))

(assert (=> b!4938891 m!5961164))

(declare-fun m!5961206 () Bool)

(assert (=> b!4938891 m!5961206))

(declare-fun m!5961208 () Bool)

(assert (=> b!4938890 m!5961208))

(assert (=> b!4938890 m!5961208))

(assert (=> b!4938773 d!1590054))

(declare-fun d!1590056 () Bool)

(assert (=> d!1590056 (= lt!2035592 testedP!110)))

(declare-fun lt!2035723 () Unit!147609)

(declare-fun choose!36350 (List!56996 List!56996 List!56996) Unit!147609)

(assert (=> d!1590056 (= lt!2035723 (choose!36350 lt!2035592 testedP!110 lt!2035592))))

(assert (=> d!1590056 (isPrefix!5042 lt!2035592 lt!2035592)))

(assert (=> d!1590056 (= (lemmaIsPrefixSameLengthThenSameList!1166 lt!2035592 testedP!110 lt!2035592) lt!2035723)))

(declare-fun bs!1181024 () Bool)

(assert (= bs!1181024 d!1590056))

(declare-fun m!5961210 () Bool)

(assert (=> bs!1181024 m!5961210))

(assert (=> bs!1181024 m!5961018))

(assert (=> b!4938773 d!1590056))

(declare-fun b!4938911 () Bool)

(declare-fun e!3085974 () Int)

(declare-fun call!344581 () Int)

(assert (=> b!4938911 (= e!3085974 (- call!344581 testedPSize!70))))

(declare-fun b!4938912 () Bool)

(declare-fun e!3085971 () List!56996)

(declare-fun e!3085970 () List!56996)

(assert (=> b!4938912 (= e!3085971 e!3085970)))

(declare-fun c!842196 () Bool)

(assert (=> b!4938912 (= c!842196 (<= testedPSize!70 0))))

(declare-fun b!4938913 () Bool)

(assert (=> b!4938913 (= e!3085971 Nil!56872)))

(declare-fun b!4938914 () Bool)

(declare-fun e!3085972 () Int)

(assert (=> b!4938914 (= e!3085972 e!3085974)))

(declare-fun c!842199 () Bool)

(assert (=> b!4938914 (= c!842199 (>= testedPSize!70 call!344581))))

(declare-fun b!4938915 () Bool)

(assert (=> b!4938915 (= e!3085972 call!344581)))

(declare-fun bm!344576 () Bool)

(assert (=> bm!344576 (= call!344581 (size!37682 lt!2035592))))

(declare-fun b!4938916 () Bool)

(assert (=> b!4938916 (= e!3085970 (drop!2275 (t!367496 lt!2035592) (- testedPSize!70 1)))))

(declare-fun d!1590058 () Bool)

(declare-fun e!3085973 () Bool)

(assert (=> d!1590058 e!3085973))

(declare-fun res!2107792 () Bool)

(assert (=> d!1590058 (=> (not res!2107792) (not e!3085973))))

(declare-fun lt!2035726 () List!56996)

(assert (=> d!1590058 (= res!2107792 (set.subset (content!10115 lt!2035726) (content!10115 lt!2035592)))))

(assert (=> d!1590058 (= lt!2035726 e!3085971)))

(declare-fun c!842197 () Bool)

(assert (=> d!1590058 (= c!842197 (is-Nil!56872 lt!2035592))))

(assert (=> d!1590058 (= (drop!2275 lt!2035592 testedPSize!70) lt!2035726)))

(declare-fun b!4938917 () Bool)

(assert (=> b!4938917 (= e!3085970 lt!2035592)))

(declare-fun b!4938918 () Bool)

(assert (=> b!4938918 (= e!3085973 (= (size!37682 lt!2035726) e!3085972))))

(declare-fun c!842198 () Bool)

(assert (=> b!4938918 (= c!842198 (<= testedPSize!70 0))))

(declare-fun b!4938919 () Bool)

(assert (=> b!4938919 (= e!3085974 0)))

(assert (= (and d!1590058 c!842197) b!4938913))

(assert (= (and d!1590058 (not c!842197)) b!4938912))

(assert (= (and b!4938912 c!842196) b!4938917))

(assert (= (and b!4938912 (not c!842196)) b!4938916))

(assert (= (and d!1590058 res!2107792) b!4938918))

(assert (= (and b!4938918 c!842198) b!4938915))

(assert (= (and b!4938918 (not c!842198)) b!4938914))

(assert (= (and b!4938914 c!842199) b!4938919))

(assert (= (and b!4938914 (not c!842199)) b!4938911))

(assert (= (or b!4938915 b!4938914 b!4938911) bm!344576))

(assert (=> bm!344576 m!5960956))

(declare-fun m!5961212 () Bool)

(assert (=> b!4938916 m!5961212))

(declare-fun m!5961214 () Bool)

(assert (=> d!1590058 m!5961214))

(declare-fun m!5961216 () Bool)

(assert (=> d!1590058 m!5961216))

(declare-fun m!5961218 () Bool)

(assert (=> b!4938918 m!5961218))

(assert (=> b!4938770 d!1590058))

(declare-fun d!1590060 () Bool)

(assert (=> d!1590060 (= (head!10581 testedSuffix!70) (h!63320 testedSuffix!70))))

(assert (=> b!4938770 d!1590060))

(declare-fun d!1590062 () Bool)

(assert (=> d!1590062 (= (head!10581 (drop!2275 lt!2035592 testedPSize!70)) (h!63320 (drop!2275 lt!2035592 testedPSize!70)))))

(assert (=> b!4938770 d!1590062))

(declare-fun d!1590064 () Bool)

(declare-fun lt!2035729 () C!27118)

(declare-fun contains!19483 (List!56996 C!27118) Bool)

(assert (=> d!1590064 (contains!19483 lt!2035592 lt!2035729)))

(declare-fun e!3085979 () C!27118)

(assert (=> d!1590064 (= lt!2035729 e!3085979)))

(declare-fun c!842202 () Bool)

(assert (=> d!1590064 (= c!842202 (= testedPSize!70 0))))

(declare-fun e!3085980 () Bool)

(assert (=> d!1590064 e!3085980))

(declare-fun res!2107795 () Bool)

(assert (=> d!1590064 (=> (not res!2107795) (not e!3085980))))

(assert (=> d!1590064 (= res!2107795 (<= 0 testedPSize!70))))

(assert (=> d!1590064 (= (apply!13787 lt!2035592 testedPSize!70) lt!2035729)))

(declare-fun b!4938926 () Bool)

(assert (=> b!4938926 (= e!3085980 (< testedPSize!70 (size!37682 lt!2035592)))))

(declare-fun b!4938927 () Bool)

(assert (=> b!4938927 (= e!3085979 (head!10581 lt!2035592))))

(declare-fun b!4938928 () Bool)

(assert (=> b!4938928 (= e!3085979 (apply!13787 (tail!9720 lt!2035592) (- testedPSize!70 1)))))

(assert (= (and d!1590064 res!2107795) b!4938926))

(assert (= (and d!1590064 c!842202) b!4938927))

(assert (= (and d!1590064 (not c!842202)) b!4938928))

(declare-fun m!5961220 () Bool)

(assert (=> d!1590064 m!5961220))

(assert (=> b!4938926 m!5960956))

(assert (=> b!4938927 m!5961208))

(assert (=> b!4938928 m!5961164))

(assert (=> b!4938928 m!5961164))

(declare-fun m!5961222 () Bool)

(assert (=> b!4938928 m!5961222))

(assert (=> b!4938770 d!1590064))

(declare-fun d!1590066 () Bool)

(assert (=> d!1590066 (= (head!10581 (drop!2275 lt!2035592 testedPSize!70)) (apply!13787 lt!2035592 testedPSize!70))))

(declare-fun lt!2035732 () Unit!147609)

(declare-fun choose!36351 (List!56996 Int) Unit!147609)

(assert (=> d!1590066 (= lt!2035732 (choose!36351 lt!2035592 testedPSize!70))))

(declare-fun e!3085983 () Bool)

(assert (=> d!1590066 e!3085983))

(declare-fun res!2107798 () Bool)

(assert (=> d!1590066 (=> (not res!2107798) (not e!3085983))))

(assert (=> d!1590066 (= res!2107798 (>= testedPSize!70 0))))

(assert (=> d!1590066 (= (lemmaDropApply!1333 lt!2035592 testedPSize!70) lt!2035732)))

(declare-fun b!4938931 () Bool)

(assert (=> b!4938931 (= e!3085983 (< testedPSize!70 (size!37682 lt!2035592)))))

(assert (= (and d!1590066 res!2107798) b!4938931))

(assert (=> d!1590066 m!5960970))

(assert (=> d!1590066 m!5960970))

(assert (=> d!1590066 m!5960972))

(assert (=> d!1590066 m!5960974))

(declare-fun m!5961224 () Bool)

(assert (=> d!1590066 m!5961224))

(assert (=> b!4938931 m!5960956))

(assert (=> b!4938770 d!1590066))

(declare-fun d!1590068 () Bool)

(assert (=> d!1590068 (and (= lt!2035580 testedP!110) (= lt!2035588 testedSuffix!70))))

(declare-fun lt!2035735 () Unit!147609)

(declare-fun choose!36352 (List!56996 List!56996 List!56996 List!56996) Unit!147609)

(assert (=> d!1590068 (= lt!2035735 (choose!36352 lt!2035580 lt!2035588 testedP!110 testedSuffix!70))))

(assert (=> d!1590068 (= (++!12413 lt!2035580 lt!2035588) (++!12413 testedP!110 testedSuffix!70))))

(assert (=> d!1590068 (= (lemmaConcatSameAndSameSizesThenSameLists!710 lt!2035580 lt!2035588 testedP!110 testedSuffix!70) lt!2035735)))

(declare-fun bs!1181025 () Bool)

(assert (= bs!1181025 d!1590068))

(declare-fun m!5961226 () Bool)

(assert (=> bs!1181025 m!5961226))

(assert (=> bs!1181025 m!5961030))

(assert (=> bs!1181025 m!5961026))

(assert (=> b!4938770 d!1590068))

(declare-fun d!1590070 () Bool)

(declare-fun lt!2035738 () C!27118)

(assert (=> d!1590070 (= lt!2035738 (apply!13787 (list!18079 totalInput!685) testedPSize!70))))

(declare-fun apply!13790 (Conc!14953 Int) C!27118)

(assert (=> d!1590070 (= lt!2035738 (apply!13790 (c!842160 totalInput!685) testedPSize!70))))

(declare-fun e!3085986 () Bool)

(assert (=> d!1590070 e!3085986))

(declare-fun res!2107801 () Bool)

(assert (=> d!1590070 (=> (not res!2107801) (not e!3085986))))

(assert (=> d!1590070 (= res!2107801 (<= 0 testedPSize!70))))

(assert (=> d!1590070 (= (apply!13786 totalInput!685 testedPSize!70) lt!2035738)))

(declare-fun b!4938934 () Bool)

(assert (=> b!4938934 (= e!3085986 (< testedPSize!70 (size!37683 totalInput!685)))))

(assert (= (and d!1590070 res!2107801) b!4938934))

(assert (=> d!1590070 m!5961024))

(assert (=> d!1590070 m!5961024))

(declare-fun m!5961228 () Bool)

(assert (=> d!1590070 m!5961228))

(declare-fun m!5961230 () Bool)

(assert (=> d!1590070 m!5961230))

(assert (=> b!4938934 m!5961008))

(assert (=> b!4938770 d!1590070))

(declare-fun d!1590072 () Bool)

(declare-fun c!842205 () Bool)

(assert (=> d!1590072 (= c!842205 (is-Node!14953 (c!842160 totalInput!685)))))

(declare-fun e!3085991 () Bool)

(assert (=> d!1590072 (= (inv!73941 (c!842160 totalInput!685)) e!3085991)))

(declare-fun b!4938941 () Bool)

(declare-fun inv!73945 (Conc!14953) Bool)

(assert (=> b!4938941 (= e!3085991 (inv!73945 (c!842160 totalInput!685)))))

(declare-fun b!4938942 () Bool)

(declare-fun e!3085992 () Bool)

(assert (=> b!4938942 (= e!3085991 e!3085992)))

(declare-fun res!2107804 () Bool)

(assert (=> b!4938942 (= res!2107804 (not (is-Leaf!24863 (c!842160 totalInput!685))))))

(assert (=> b!4938942 (=> res!2107804 e!3085992)))

(declare-fun b!4938943 () Bool)

(declare-fun inv!73946 (Conc!14953) Bool)

(assert (=> b!4938943 (= e!3085992 (inv!73946 (c!842160 totalInput!685)))))

(assert (= (and d!1590072 c!842205) b!4938941))

(assert (= (and d!1590072 (not c!842205)) b!4938942))

(assert (= (and b!4938942 (not res!2107804)) b!4938943))

(declare-fun m!5961232 () Bool)

(assert (=> b!4938941 m!5961232))

(declare-fun m!5961234 () Bool)

(assert (=> b!4938943 m!5961234))

(assert (=> b!4938769 d!1590072))

(declare-fun d!1590074 () Bool)

(declare-fun lt!2035741 () Int)

(assert (=> d!1590074 (>= lt!2035741 0)))

(declare-fun e!3085995 () Int)

(assert (=> d!1590074 (= lt!2035741 e!3085995)))

(declare-fun c!842208 () Bool)

(assert (=> d!1590074 (= c!842208 (is-Nil!56872 testedP!110))))

(assert (=> d!1590074 (= (size!37682 testedP!110) lt!2035741)))

(declare-fun b!4938948 () Bool)

(assert (=> b!4938948 (= e!3085995 0)))

(declare-fun b!4938949 () Bool)

(assert (=> b!4938949 (= e!3085995 (+ 1 (size!37682 (t!367496 testedP!110))))))

(assert (= (and d!1590074 c!842208) b!4938948))

(assert (= (and d!1590074 (not c!842208)) b!4938949))

(declare-fun m!5961236 () Bool)

(assert (=> b!4938949 m!5961236))

(assert (=> b!4938771 d!1590074))

(declare-fun d!1590076 () Bool)

(declare-fun lt!2035742 () Int)

(assert (=> d!1590076 (= lt!2035742 (size!37682 (list!18079 totalInput!685)))))

(assert (=> d!1590076 (= lt!2035742 (size!37686 (c!842160 totalInput!685)))))

(assert (=> d!1590076 (= (size!37683 totalInput!685) lt!2035742)))

(declare-fun bs!1181026 () Bool)

(assert (= bs!1181026 d!1590076))

(assert (=> bs!1181026 m!5961024))

(assert (=> bs!1181026 m!5961024))

(declare-fun m!5961238 () Bool)

(assert (=> bs!1181026 m!5961238))

(declare-fun m!5961240 () Bool)

(assert (=> bs!1181026 m!5961240))

(assert (=> b!4938767 d!1590076))

(declare-fun d!1590078 () Bool)

(declare-fun lt!2035743 () Int)

(assert (=> d!1590078 (>= lt!2035743 0)))

(declare-fun e!3085996 () Int)

(assert (=> d!1590078 (= lt!2035743 e!3085996)))

(declare-fun c!842209 () Bool)

(assert (=> d!1590078 (= c!842209 (is-Nil!56872 lt!2035592))))

(assert (=> d!1590078 (= (size!37682 lt!2035592) lt!2035743)))

(declare-fun b!4938950 () Bool)

(assert (=> b!4938950 (= e!3085996 0)))

(declare-fun b!4938951 () Bool)

(assert (=> b!4938951 (= e!3085996 (+ 1 (size!37682 (t!367496 lt!2035592))))))

(assert (= (and d!1590078 c!842209) b!4938950))

(assert (= (and d!1590078 (not c!842209)) b!4938951))

(declare-fun m!5961242 () Bool)

(assert (=> b!4938951 m!5961242))

(assert (=> b!4938758 d!1590078))

(declare-fun d!1590080 () Bool)

(assert (=> d!1590080 (<= (size!37682 testedP!110) (size!37682 lt!2035592))))

(declare-fun lt!2035746 () Unit!147609)

(declare-fun choose!36353 (List!56996 List!56996) Unit!147609)

(assert (=> d!1590080 (= lt!2035746 (choose!36353 testedP!110 lt!2035592))))

(assert (=> d!1590080 (isPrefix!5042 testedP!110 lt!2035592)))

(assert (=> d!1590080 (= (lemmaIsPrefixThenSmallerEqSize!730 testedP!110 lt!2035592) lt!2035746)))

(declare-fun bs!1181027 () Bool)

(assert (= bs!1181027 d!1590080))

(assert (=> bs!1181027 m!5961022))

(assert (=> bs!1181027 m!5960956))

(declare-fun m!5961244 () Bool)

(assert (=> bs!1181027 m!5961244))

(assert (=> bs!1181027 m!5961010))

(assert (=> b!4938758 d!1590080))

(declare-fun b!4939004 () Bool)

(declare-fun e!3086025 () Int)

(declare-fun e!3086028 () Int)

(assert (=> b!4939004 (= e!3086025 e!3086028)))

(declare-fun c!842229 () Bool)

(assert (=> b!4939004 (= c!842229 (= (+ 1 testedPSize!70) totalInputSize!132))))

(declare-fun lt!2035874 () Int)

(declare-fun d!1590082 () Bool)

(declare-fun findLongestMatchInnerZipper!69 ((Set Context!6172) List!56996 Int List!56996 List!56996 Int) tuple2!61410)

(assert (=> d!1590082 (= (size!37682 (_1!34008 (findLongestMatchInnerZipper!69 (derivationStepZipper!603 z!3568 lt!2035590) lt!2035581 (+ 1 testedPSize!70) lt!2035593 (list!18079 totalInput!685) totalInputSize!132))) lt!2035874)))

(assert (=> d!1590082 (= lt!2035874 e!3086025)))

(declare-fun c!842231 () Bool)

(assert (=> d!1590082 (= c!842231 (lostCauseZipper!762 (derivationStepZipper!603 z!3568 lt!2035590)))))

(declare-fun lt!2035879 () Unit!147609)

(declare-fun Unit!147619 () Unit!147609)

(assert (=> d!1590082 (= lt!2035879 Unit!147619)))

(assert (=> d!1590082 (= (getSuffix!3026 (list!18079 totalInput!685) lt!2035581) lt!2035593)))

(declare-fun lt!2035876 () Unit!147609)

(declare-fun lt!2035867 () Unit!147609)

(assert (=> d!1590082 (= lt!2035876 lt!2035867)))

(declare-fun lt!2035890 () List!56996)

(assert (=> d!1590082 (= lt!2035593 lt!2035890)))

(assert (=> d!1590082 (= lt!2035867 (lemmaSamePrefixThenSameSuffix!2440 lt!2035581 lt!2035593 lt!2035581 lt!2035890 (list!18079 totalInput!685)))))

(assert (=> d!1590082 (= lt!2035890 (getSuffix!3026 (list!18079 totalInput!685) lt!2035581))))

(declare-fun lt!2035880 () Unit!147609)

(declare-fun lt!2035863 () Unit!147609)

(assert (=> d!1590082 (= lt!2035880 lt!2035863)))

(assert (=> d!1590082 (isPrefix!5042 lt!2035581 (++!12413 lt!2035581 lt!2035593))))

(assert (=> d!1590082 (= lt!2035863 (lemmaConcatTwoListThenFirstIsPrefix!3266 lt!2035581 lt!2035593))))

(assert (=> d!1590082 (= (++!12413 lt!2035581 lt!2035593) (list!18079 totalInput!685))))

(assert (=> d!1590082 (= (findLongestMatchInnerZipperFast!100 (derivationStepZipper!603 z!3568 lt!2035590) lt!2035581 (+ 1 testedPSize!70) lt!2035593 totalInput!685 totalInputSize!132) lt!2035874)))

(declare-fun bm!344597 () Bool)

(declare-fun call!344605 () Bool)

(assert (=> bm!344597 (= call!344605 (nullableZipper!849 (derivationStepZipper!603 z!3568 lt!2035590)))))

(declare-fun bm!344598 () Bool)

(declare-fun call!344602 () List!56996)

(declare-fun call!344607 () C!27118)

(assert (=> bm!344598 (= call!344602 (++!12413 lt!2035581 (Cons!56872 call!344607 Nil!56872)))))

(declare-fun b!4939005 () Bool)

(declare-fun e!3086026 () Int)

(declare-fun lt!2035877 () Int)

(assert (=> b!4939005 (= e!3086026 (ite (= lt!2035877 0) (+ 1 testedPSize!70) lt!2035877))))

(declare-fun call!344611 () Int)

(assert (=> b!4939005 (= lt!2035877 call!344611)))

(declare-fun bm!344599 () Bool)

(declare-fun lt!2035868 () List!56996)

(declare-fun call!344603 () Unit!147609)

(declare-fun call!344604 () List!56996)

(declare-fun lt!2035875 () List!56996)

(assert (=> bm!344599 (= call!344603 (lemmaIsPrefixSameLengthThenSameList!1166 (ite c!842229 lt!2035868 lt!2035875) lt!2035581 call!344604))))

(declare-fun bm!344600 () Bool)

(assert (=> bm!344600 (= call!344607 (apply!13786 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun call!344609 () (Set Context!6172))

(declare-fun bm!344601 () Bool)

(assert (=> bm!344601 (= call!344609 (derivationStepZipper!603 (derivationStepZipper!603 z!3568 lt!2035590) call!344607))))

(declare-fun lt!2035851 () List!56996)

(declare-fun call!344606 () Bool)

(declare-fun lt!2035885 () List!56996)

(declare-fun lt!2035862 () List!56996)

(declare-fun bm!344602 () Bool)

(declare-fun lt!2035872 () List!56996)

(assert (=> bm!344602 (= call!344606 (isPrefix!5042 (ite c!842229 lt!2035872 lt!2035885) (ite c!842229 lt!2035862 lt!2035851)))))

(declare-fun b!4939006 () Bool)

(declare-fun c!842233 () Bool)

(assert (=> b!4939006 (= c!842233 call!344605)))

(declare-fun lt!2035855 () Unit!147609)

(declare-fun lt!2035886 () Unit!147609)

(assert (=> b!4939006 (= lt!2035855 lt!2035886)))

(declare-fun lt!2035857 () List!56996)

(declare-fun lt!2035871 () List!56996)

(declare-fun lt!2035873 () C!27118)

(assert (=> b!4939006 (= (++!12413 (++!12413 lt!2035581 (Cons!56872 lt!2035873 Nil!56872)) lt!2035857) lt!2035871)))

(assert (=> b!4939006 (= lt!2035886 (lemmaMoveElementToOtherListKeepsConcatEq!1424 lt!2035581 lt!2035873 lt!2035857 lt!2035871))))

(assert (=> b!4939006 (= lt!2035871 call!344604)))

(assert (=> b!4939006 (= lt!2035857 (tail!9720 lt!2035593))))

(assert (=> b!4939006 (= lt!2035873 (apply!13786 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun lt!2035878 () Unit!147609)

(declare-fun lt!2035889 () Unit!147609)

(assert (=> b!4939006 (= lt!2035878 lt!2035889)))

(declare-fun lt!2035856 () List!56996)

(assert (=> b!4939006 (isPrefix!5042 (++!12413 lt!2035581 (Cons!56872 (head!10581 (getSuffix!3026 lt!2035856 lt!2035581)) Nil!56872)) lt!2035856)))

(assert (=> b!4939006 (= lt!2035889 (lemmaAddHeadSuffixToPrefixStillPrefix!812 lt!2035581 lt!2035856))))

(assert (=> b!4939006 (= lt!2035856 call!344604)))

(declare-fun lt!2035888 () Unit!147609)

(declare-fun e!3086024 () Unit!147609)

(assert (=> b!4939006 (= lt!2035888 e!3086024)))

(declare-fun c!842230 () Bool)

(assert (=> b!4939006 (= c!842230 (= (size!37682 lt!2035581) (size!37683 totalInput!685)))))

(declare-fun lt!2035870 () Unit!147609)

(declare-fun lt!2035883 () Unit!147609)

(assert (=> b!4939006 (= lt!2035870 lt!2035883)))

(declare-fun lt!2035884 () List!56996)

(assert (=> b!4939006 (<= (size!37682 lt!2035581) (size!37682 lt!2035884))))

(assert (=> b!4939006 (= lt!2035883 (lemmaIsPrefixThenSmallerEqSize!730 lt!2035581 lt!2035884))))

(assert (=> b!4939006 (= lt!2035884 call!344604)))

(declare-fun lt!2035852 () Unit!147609)

(declare-fun lt!2035854 () Unit!147609)

(assert (=> b!4939006 (= lt!2035852 lt!2035854)))

(declare-fun lt!2035864 () List!56996)

(assert (=> b!4939006 (= (head!10581 (drop!2275 lt!2035864 (+ 1 testedPSize!70))) (apply!13787 lt!2035864 (+ 1 testedPSize!70)))))

(assert (=> b!4939006 (= lt!2035854 (lemmaDropApply!1333 lt!2035864 (+ 1 testedPSize!70)))))

(assert (=> b!4939006 (= lt!2035864 call!344604)))

(declare-fun lt!2035853 () Unit!147609)

(declare-fun lt!2035859 () Unit!147609)

(assert (=> b!4939006 (= lt!2035853 lt!2035859)))

(declare-fun lt!2035869 () List!56996)

(declare-fun lt!2035861 () List!56996)

(assert (=> b!4939006 (and (= lt!2035869 lt!2035581) (= lt!2035861 lt!2035593))))

(assert (=> b!4939006 (= lt!2035859 (lemmaConcatSameAndSameSizesThenSameLists!710 lt!2035869 lt!2035861 lt!2035581 lt!2035593))))

(declare-fun lt!2035882 () tuple2!61404)

(assert (=> b!4939006 (= lt!2035861 (list!18079 (_2!34005 lt!2035882)))))

(assert (=> b!4939006 (= lt!2035869 (list!18079 (_1!34005 lt!2035882)))))

(assert (=> b!4939006 (= lt!2035882 (splitAt!356 totalInput!685 (+ 1 testedPSize!70)))))

(assert (=> b!4939006 (= e!3086028 e!3086026)))

(declare-fun b!4939007 () Bool)

(assert (=> b!4939007 (= e!3086025 0)))

(declare-fun b!4939008 () Bool)

(declare-fun e!3086027 () Int)

(assert (=> b!4939008 (= e!3086027 0)))

(declare-fun b!4939009 () Bool)

(assert (=> b!4939009 (= e!3086026 call!344611)))

(declare-fun bm!344603 () Bool)

(assert (=> bm!344603 (= call!344604 (list!18079 totalInput!685))))

(declare-fun call!344610 () List!56996)

(declare-fun bm!344604 () Bool)

(assert (=> bm!344604 (= call!344611 (findLongestMatchInnerZipperFast!100 call!344609 call!344602 (+ 1 testedPSize!70 1) call!344610 totalInput!685 totalInputSize!132))))

(declare-fun b!4939010 () Bool)

(declare-fun c!842232 () Bool)

(assert (=> b!4939010 (= c!842232 call!344605)))

(declare-fun lt!2035866 () Unit!147609)

(declare-fun lt!2035850 () Unit!147609)

(assert (=> b!4939010 (= lt!2035866 lt!2035850)))

(assert (=> b!4939010 (= lt!2035868 lt!2035581)))

(assert (=> b!4939010 (= lt!2035850 call!344603)))

(assert (=> b!4939010 (= lt!2035868 call!344604)))

(declare-fun lt!2035881 () Unit!147609)

(declare-fun lt!2035858 () Unit!147609)

(assert (=> b!4939010 (= lt!2035881 lt!2035858)))

(assert (=> b!4939010 call!344606))

(declare-fun call!344608 () Unit!147609)

(assert (=> b!4939010 (= lt!2035858 call!344608)))

(assert (=> b!4939010 (= lt!2035862 call!344604)))

(assert (=> b!4939010 (= lt!2035872 call!344604)))

(assert (=> b!4939010 (= e!3086028 e!3086027)))

(declare-fun b!4939011 () Bool)

(assert (=> b!4939011 (= e!3086027 (+ 1 testedPSize!70))))

(declare-fun bm!344605 () Bool)

(assert (=> bm!344605 (= call!344608 (lemmaIsPrefixRefl!3408 (ite c!842229 lt!2035872 lt!2035885) (ite c!842229 lt!2035862 lt!2035851)))))

(declare-fun bm!344606 () Bool)

(assert (=> bm!344606 (= call!344610 (tail!9720 lt!2035593))))

(declare-fun b!4939012 () Bool)

(declare-fun Unit!147620 () Unit!147609)

(assert (=> b!4939012 (= e!3086024 Unit!147620)))

(assert (=> b!4939012 (= lt!2035885 call!344604)))

(assert (=> b!4939012 (= lt!2035851 call!344604)))

(declare-fun lt!2035887 () Unit!147609)

(assert (=> b!4939012 (= lt!2035887 call!344608)))

(assert (=> b!4939012 call!344606))

(declare-fun lt!2035860 () Unit!147609)

(assert (=> b!4939012 (= lt!2035860 lt!2035887)))

(assert (=> b!4939012 (= lt!2035875 call!344604)))

(declare-fun lt!2035891 () Unit!147609)

(assert (=> b!4939012 (= lt!2035891 call!344603)))

(assert (=> b!4939012 (= lt!2035875 lt!2035581)))

(declare-fun lt!2035865 () Unit!147609)

(assert (=> b!4939012 (= lt!2035865 lt!2035891)))

(assert (=> b!4939012 false))

(declare-fun b!4939013 () Bool)

(declare-fun Unit!147621 () Unit!147609)

(assert (=> b!4939013 (= e!3086024 Unit!147621)))

(assert (= (and d!1590082 c!842231) b!4939007))

(assert (= (and d!1590082 (not c!842231)) b!4939004))

(assert (= (and b!4939004 c!842229) b!4939010))

(assert (= (and b!4939004 (not c!842229)) b!4939006))

(assert (= (and b!4939010 c!842232) b!4939011))

(assert (= (and b!4939010 (not c!842232)) b!4939008))

(assert (= (and b!4939006 c!842230) b!4939012))

(assert (= (and b!4939006 (not c!842230)) b!4939013))

(assert (= (and b!4939006 c!842233) b!4939005))

(assert (= (and b!4939006 (not c!842233)) b!4939009))

(assert (= (or b!4939005 b!4939009) bm!344606))

(assert (= (or b!4939005 b!4939009) bm!344600))

(assert (= (or b!4939005 b!4939009) bm!344598))

(assert (= (or b!4939005 b!4939009) bm!344601))

(assert (= (or b!4939005 b!4939009) bm!344604))

(assert (= (or b!4939010 b!4939012) bm!344602))

(assert (= (or b!4939010 b!4939006) bm!344597))

(assert (= (or b!4939010 b!4939012) bm!344605))

(assert (= (or b!4939010 b!4939006 b!4939012) bm!344603))

(assert (= (or b!4939010 b!4939012) bm!344599))

(declare-fun m!5961312 () Bool)

(assert (=> bm!344606 m!5961312))

(declare-fun m!5961314 () Bool)

(assert (=> bm!344605 m!5961314))

(declare-fun m!5961316 () Bool)

(assert (=> bm!344599 m!5961316))

(declare-fun m!5961318 () Bool)

(assert (=> bm!344600 m!5961318))

(assert (=> bm!344597 m!5960960))

(declare-fun m!5961320 () Bool)

(assert (=> bm!344597 m!5961320))

(declare-fun m!5961322 () Bool)

(assert (=> bm!344602 m!5961322))

(declare-fun m!5961324 () Bool)

(assert (=> bm!344604 m!5961324))

(assert (=> d!1590082 m!5960986))

(declare-fun m!5961326 () Bool)

(assert (=> d!1590082 m!5961326))

(declare-fun m!5961328 () Bool)

(assert (=> d!1590082 m!5961328))

(assert (=> d!1590082 m!5961024))

(declare-fun m!5961330 () Bool)

(assert (=> d!1590082 m!5961330))

(assert (=> d!1590082 m!5961024))

(assert (=> d!1590082 m!5961024))

(declare-fun m!5961332 () Bool)

(assert (=> d!1590082 m!5961332))

(assert (=> d!1590082 m!5960960))

(assert (=> d!1590082 m!5961024))

(declare-fun m!5961334 () Bool)

(assert (=> d!1590082 m!5961334))

(assert (=> d!1590082 m!5960960))

(declare-fun m!5961336 () Bool)

(assert (=> d!1590082 m!5961336))

(assert (=> d!1590082 m!5960986))

(declare-fun m!5961338 () Bool)

(assert (=> d!1590082 m!5961338))

(assert (=> bm!344601 m!5960960))

(declare-fun m!5961340 () Bool)

(assert (=> bm!344601 m!5961340))

(assert (=> bm!344603 m!5961024))

(declare-fun m!5961342 () Bool)

(assert (=> bm!344598 m!5961342))

(declare-fun m!5961344 () Bool)

(assert (=> b!4939006 m!5961344))

(assert (=> b!4939006 m!5961312))

(declare-fun m!5961346 () Bool)

(assert (=> b!4939006 m!5961346))

(declare-fun m!5961348 () Bool)

(assert (=> b!4939006 m!5961348))

(declare-fun m!5961350 () Bool)

(assert (=> b!4939006 m!5961350))

(declare-fun m!5961352 () Bool)

(assert (=> b!4939006 m!5961352))

(declare-fun m!5961354 () Bool)

(assert (=> b!4939006 m!5961354))

(declare-fun m!5961356 () Bool)

(assert (=> b!4939006 m!5961356))

(assert (=> b!4939006 m!5961350))

(assert (=> b!4939006 m!5961008))

(declare-fun m!5961358 () Bool)

(assert (=> b!4939006 m!5961358))

(declare-fun m!5961360 () Bool)

(assert (=> b!4939006 m!5961360))

(declare-fun m!5961362 () Bool)

(assert (=> b!4939006 m!5961362))

(assert (=> b!4939006 m!5961360))

(declare-fun m!5961364 () Bool)

(assert (=> b!4939006 m!5961364))

(declare-fun m!5961366 () Bool)

(assert (=> b!4939006 m!5961366))

(assert (=> b!4939006 m!5961354))

(declare-fun m!5961368 () Bool)

(assert (=> b!4939006 m!5961368))

(assert (=> b!4939006 m!5961318))

(declare-fun m!5961370 () Bool)

(assert (=> b!4939006 m!5961370))

(declare-fun m!5961372 () Bool)

(assert (=> b!4939006 m!5961372))

(declare-fun m!5961374 () Bool)

(assert (=> b!4939006 m!5961374))

(assert (=> b!4939006 m!5961346))

(declare-fun m!5961376 () Bool)

(assert (=> b!4939006 m!5961376))

(declare-fun m!5961378 () Bool)

(assert (=> b!4939006 m!5961378))

(declare-fun m!5961380 () Bool)

(assert (=> b!4939006 m!5961380))

(assert (=> b!4938760 d!1590082))

(declare-fun d!1590108 () Bool)

(assert (=> d!1590108 true))

(declare-fun lambda!246081 () Int)

(declare-fun flatMap!272 ((Set Context!6172) Int) (Set Context!6172))

(assert (=> d!1590108 (= (derivationStepZipper!603 z!3568 lt!2035590) (flatMap!272 z!3568 lambda!246081))))

(declare-fun bs!1181032 () Bool)

(assert (= bs!1181032 d!1590108))

(declare-fun m!5961382 () Bool)

(assert (=> bs!1181032 m!5961382))

(assert (=> b!4938760 d!1590108))

(declare-fun b!4939019 () Bool)

(declare-fun e!3086031 () Bool)

(assert (=> b!4939019 (= e!3086031 (>= (size!37682 lt!2035592) (size!37682 testedP!110)))))

(declare-fun b!4939018 () Bool)

(declare-fun e!3086030 () Bool)

(assert (=> b!4939018 (= e!3086030 (isPrefix!5042 (tail!9720 testedP!110) (tail!9720 lt!2035592)))))

(declare-fun b!4939016 () Bool)

(declare-fun e!3086029 () Bool)

(assert (=> b!4939016 (= e!3086029 e!3086030)))

(declare-fun res!2107821 () Bool)

(assert (=> b!4939016 (=> (not res!2107821) (not e!3086030))))

(assert (=> b!4939016 (= res!2107821 (not (is-Nil!56872 lt!2035592)))))

(declare-fun d!1590110 () Bool)

(assert (=> d!1590110 e!3086031))

(declare-fun res!2107820 () Bool)

(assert (=> d!1590110 (=> res!2107820 e!3086031)))

(declare-fun lt!2035892 () Bool)

(assert (=> d!1590110 (= res!2107820 (not lt!2035892))))

(assert (=> d!1590110 (= lt!2035892 e!3086029)))

(declare-fun res!2107822 () Bool)

(assert (=> d!1590110 (=> res!2107822 e!3086029)))

(assert (=> d!1590110 (= res!2107822 (is-Nil!56872 testedP!110))))

(assert (=> d!1590110 (= (isPrefix!5042 testedP!110 lt!2035592) lt!2035892)))

(declare-fun b!4939017 () Bool)

(declare-fun res!2107819 () Bool)

(assert (=> b!4939017 (=> (not res!2107819) (not e!3086030))))

(assert (=> b!4939017 (= res!2107819 (= (head!10581 testedP!110) (head!10581 lt!2035592)))))

(assert (= (and d!1590110 (not res!2107822)) b!4939016))

(assert (= (and b!4939016 res!2107821) b!4939017))

(assert (= (and b!4939017 res!2107819) b!4939018))

(assert (= (and d!1590110 (not res!2107820)) b!4939019))

(assert (=> b!4939019 m!5960956))

(assert (=> b!4939019 m!5961022))

(declare-fun m!5961384 () Bool)

(assert (=> b!4939018 m!5961384))

(assert (=> b!4939018 m!5961164))

(assert (=> b!4939018 m!5961384))

(assert (=> b!4939018 m!5961164))

(declare-fun m!5961386 () Bool)

(assert (=> b!4939018 m!5961386))

(declare-fun m!5961388 () Bool)

(assert (=> b!4939017 m!5961388))

(assert (=> b!4939017 m!5961208))

(assert (=> b!4938768 d!1590110))

(declare-fun b!4939023 () Bool)

(declare-fun e!3086034 () Bool)

(assert (=> b!4939023 (= e!3086034 (>= (size!37682 lt!2035584) (size!37682 testedP!110)))))

(declare-fun b!4939022 () Bool)

(declare-fun e!3086033 () Bool)

(assert (=> b!4939022 (= e!3086033 (isPrefix!5042 (tail!9720 testedP!110) (tail!9720 lt!2035584)))))

(declare-fun b!4939020 () Bool)

(declare-fun e!3086032 () Bool)

(assert (=> b!4939020 (= e!3086032 e!3086033)))

(declare-fun res!2107825 () Bool)

(assert (=> b!4939020 (=> (not res!2107825) (not e!3086033))))

(assert (=> b!4939020 (= res!2107825 (not (is-Nil!56872 lt!2035584)))))

(declare-fun d!1590112 () Bool)

(assert (=> d!1590112 e!3086034))

(declare-fun res!2107824 () Bool)

(assert (=> d!1590112 (=> res!2107824 e!3086034)))

(declare-fun lt!2035893 () Bool)

(assert (=> d!1590112 (= res!2107824 (not lt!2035893))))

(assert (=> d!1590112 (= lt!2035893 e!3086032)))

(declare-fun res!2107826 () Bool)

(assert (=> d!1590112 (=> res!2107826 e!3086032)))

(assert (=> d!1590112 (= res!2107826 (is-Nil!56872 testedP!110))))

(assert (=> d!1590112 (= (isPrefix!5042 testedP!110 lt!2035584) lt!2035893)))

(declare-fun b!4939021 () Bool)

(declare-fun res!2107823 () Bool)

(assert (=> b!4939021 (=> (not res!2107823) (not e!3086033))))

(assert (=> b!4939021 (= res!2107823 (= (head!10581 testedP!110) (head!10581 lt!2035584)))))

(assert (= (and d!1590112 (not res!2107826)) b!4939020))

(assert (= (and b!4939020 res!2107825) b!4939021))

(assert (= (and b!4939021 res!2107823) b!4939022))

(assert (= (and d!1590112 (not res!2107824)) b!4939023))

(declare-fun m!5961390 () Bool)

(assert (=> b!4939023 m!5961390))

(assert (=> b!4939023 m!5961022))

(assert (=> b!4939022 m!5961384))

(declare-fun m!5961392 () Bool)

(assert (=> b!4939022 m!5961392))

(assert (=> b!4939022 m!5961384))

(assert (=> b!4939022 m!5961392))

(declare-fun m!5961394 () Bool)

(assert (=> b!4939022 m!5961394))

(assert (=> b!4939021 m!5961388))

(declare-fun m!5961396 () Bool)

(assert (=> b!4939021 m!5961396))

(assert (=> b!4938768 d!1590112))

(declare-fun d!1590114 () Bool)

(assert (=> d!1590114 (isPrefix!5042 testedP!110 (++!12413 testedP!110 testedSuffix!70))))

(declare-fun lt!2035896 () Unit!147609)

(declare-fun choose!36354 (List!56996 List!56996) Unit!147609)

(assert (=> d!1590114 (= lt!2035896 (choose!36354 testedP!110 testedSuffix!70))))

(assert (=> d!1590114 (= (lemmaConcatTwoListThenFirstIsPrefix!3266 testedP!110 testedSuffix!70) lt!2035896)))

(declare-fun bs!1181033 () Bool)

(assert (= bs!1181033 d!1590114))

(assert (=> bs!1181033 m!5961026))

(assert (=> bs!1181033 m!5961026))

(declare-fun m!5961398 () Bool)

(assert (=> bs!1181033 m!5961398))

(declare-fun m!5961400 () Bool)

(assert (=> bs!1181033 m!5961400))

(assert (=> b!4938768 d!1590114))

(declare-fun d!1590116 () Bool)

(declare-fun lambda!246084 () Int)

(declare-fun forall!13212 (List!56997 Int) Bool)

(assert (=> d!1590116 (= (inv!73940 setElem!27861) (forall!13212 (exprs!3586 setElem!27861) lambda!246084))))

(declare-fun bs!1181034 () Bool)

(assert (= bs!1181034 d!1590116))

(declare-fun m!5961402 () Bool)

(assert (=> bs!1181034 m!5961402))

(assert (=> setNonEmpty!27861 d!1590116))

(declare-fun bs!1181035 () Bool)

(declare-fun d!1590118 () Bool)

(assert (= bs!1181035 (and d!1590118 d!1590026)))

(declare-fun lambda!246087 () Int)

(assert (=> bs!1181035 (not (= lambda!246087 lambda!246073))))

(declare-fun bs!1181036 () Bool)

(assert (= bs!1181036 (and d!1590118 b!4938855)))

(assert (=> bs!1181036 (not (= lambda!246087 lambda!246074))))

(declare-fun bs!1181037 () Bool)

(assert (= bs!1181037 (and d!1590118 b!4938856)))

(assert (=> bs!1181037 (not (= lambda!246087 lambda!246075))))

(declare-fun exists!1300 ((Set Context!6172) Int) Bool)

(assert (=> d!1590118 (= (nullableZipper!849 z!3568) (exists!1300 z!3568 lambda!246087))))

(declare-fun bs!1181038 () Bool)

(assert (= bs!1181038 d!1590118))

(declare-fun m!5961404 () Bool)

(assert (=> bs!1181038 m!5961404))

(assert (=> b!4938766 d!1590118))

(declare-fun b!4939024 () Bool)

(declare-fun e!3086035 () List!56996)

(assert (=> b!4939024 (= e!3086035 (Cons!56872 lt!2035590 Nil!56872))))

(declare-fun d!1590120 () Bool)

(declare-fun e!3086036 () Bool)

(assert (=> d!1590120 e!3086036))

(declare-fun res!2107827 () Bool)

(assert (=> d!1590120 (=> (not res!2107827) (not e!3086036))))

(declare-fun lt!2035897 () List!56996)

(assert (=> d!1590120 (= res!2107827 (= (content!10115 lt!2035897) (set.union (content!10115 testedP!110) (content!10115 (Cons!56872 lt!2035590 Nil!56872)))))))

(assert (=> d!1590120 (= lt!2035897 e!3086035)))

(declare-fun c!842238 () Bool)

(assert (=> d!1590120 (= c!842238 (is-Nil!56872 testedP!110))))

(assert (=> d!1590120 (= (++!12413 testedP!110 (Cons!56872 lt!2035590 Nil!56872)) lt!2035897)))

(declare-fun b!4939026 () Bool)

(declare-fun res!2107828 () Bool)

(assert (=> b!4939026 (=> (not res!2107828) (not e!3086036))))

(assert (=> b!4939026 (= res!2107828 (= (size!37682 lt!2035897) (+ (size!37682 testedP!110) (size!37682 (Cons!56872 lt!2035590 Nil!56872)))))))

(declare-fun b!4939025 () Bool)

(assert (=> b!4939025 (= e!3086035 (Cons!56872 (h!63320 testedP!110) (++!12413 (t!367496 testedP!110) (Cons!56872 lt!2035590 Nil!56872))))))

(declare-fun b!4939027 () Bool)

(assert (=> b!4939027 (= e!3086036 (or (not (= (Cons!56872 lt!2035590 Nil!56872) Nil!56872)) (= lt!2035897 testedP!110)))))

(assert (= (and d!1590120 c!842238) b!4939024))

(assert (= (and d!1590120 (not c!842238)) b!4939025))

(assert (= (and d!1590120 res!2107827) b!4939026))

(assert (= (and b!4939026 res!2107828) b!4939027))

(declare-fun m!5961406 () Bool)

(assert (=> d!1590120 m!5961406))

(declare-fun m!5961408 () Bool)

(assert (=> d!1590120 m!5961408))

(declare-fun m!5961410 () Bool)

(assert (=> d!1590120 m!5961410))

(declare-fun m!5961412 () Bool)

(assert (=> b!4939026 m!5961412))

(assert (=> b!4939026 m!5961022))

(declare-fun m!5961414 () Bool)

(assert (=> b!4939026 m!5961414))

(declare-fun m!5961416 () Bool)

(assert (=> b!4939025 m!5961416))

(assert (=> b!4938766 d!1590120))

(declare-fun b!4939028 () Bool)

(declare-fun e!3086037 () List!56996)

(assert (=> b!4939028 (= e!3086037 (Cons!56872 (head!10581 lt!2035596) Nil!56872))))

(declare-fun d!1590122 () Bool)

(declare-fun e!3086038 () Bool)

(assert (=> d!1590122 e!3086038))

(declare-fun res!2107829 () Bool)

(assert (=> d!1590122 (=> (not res!2107829) (not e!3086038))))

(declare-fun lt!2035898 () List!56996)

(assert (=> d!1590122 (= res!2107829 (= (content!10115 lt!2035898) (set.union (content!10115 testedP!110) (content!10115 (Cons!56872 (head!10581 lt!2035596) Nil!56872)))))))

(assert (=> d!1590122 (= lt!2035898 e!3086037)))

(declare-fun c!842239 () Bool)

(assert (=> d!1590122 (= c!842239 (is-Nil!56872 testedP!110))))

(assert (=> d!1590122 (= (++!12413 testedP!110 (Cons!56872 (head!10581 lt!2035596) Nil!56872)) lt!2035898)))

(declare-fun b!4939030 () Bool)

(declare-fun res!2107830 () Bool)

(assert (=> b!4939030 (=> (not res!2107830) (not e!3086038))))

(assert (=> b!4939030 (= res!2107830 (= (size!37682 lt!2035898) (+ (size!37682 testedP!110) (size!37682 (Cons!56872 (head!10581 lt!2035596) Nil!56872)))))))

(declare-fun b!4939029 () Bool)

(assert (=> b!4939029 (= e!3086037 (Cons!56872 (h!63320 testedP!110) (++!12413 (t!367496 testedP!110) (Cons!56872 (head!10581 lt!2035596) Nil!56872))))))

(declare-fun b!4939031 () Bool)

(assert (=> b!4939031 (= e!3086038 (or (not (= (Cons!56872 (head!10581 lt!2035596) Nil!56872) Nil!56872)) (= lt!2035898 testedP!110)))))

(assert (= (and d!1590122 c!842239) b!4939028))

(assert (= (and d!1590122 (not c!842239)) b!4939029))

(assert (= (and d!1590122 res!2107829) b!4939030))

(assert (= (and b!4939030 res!2107830) b!4939031))

(declare-fun m!5961418 () Bool)

(assert (=> d!1590122 m!5961418))

(assert (=> d!1590122 m!5961408))

(declare-fun m!5961420 () Bool)

(assert (=> d!1590122 m!5961420))

(declare-fun m!5961422 () Bool)

(assert (=> b!4939030 m!5961422))

(assert (=> b!4939030 m!5961022))

(declare-fun m!5961424 () Bool)

(assert (=> b!4939030 m!5961424))

(declare-fun m!5961426 () Bool)

(assert (=> b!4939029 m!5961426))

(assert (=> b!4938766 d!1590122))

(declare-fun d!1590124 () Bool)

(assert (=> d!1590124 (= (head!10581 lt!2035596) (h!63320 lt!2035596))))

(assert (=> b!4938766 d!1590124))

(declare-fun b!4939035 () Bool)

(declare-fun e!3086041 () Bool)

(assert (=> b!4939035 (= e!3086041 (>= (size!37682 lt!2035592) (size!37682 (++!12413 testedP!110 (Cons!56872 (head!10581 lt!2035596) Nil!56872)))))))

(declare-fun b!4939034 () Bool)

(declare-fun e!3086040 () Bool)

(assert (=> b!4939034 (= e!3086040 (isPrefix!5042 (tail!9720 (++!12413 testedP!110 (Cons!56872 (head!10581 lt!2035596) Nil!56872))) (tail!9720 lt!2035592)))))

(declare-fun b!4939032 () Bool)

(declare-fun e!3086039 () Bool)

(assert (=> b!4939032 (= e!3086039 e!3086040)))

(declare-fun res!2107833 () Bool)

(assert (=> b!4939032 (=> (not res!2107833) (not e!3086040))))

(assert (=> b!4939032 (= res!2107833 (not (is-Nil!56872 lt!2035592)))))

(declare-fun d!1590126 () Bool)

(assert (=> d!1590126 e!3086041))

(declare-fun res!2107832 () Bool)

(assert (=> d!1590126 (=> res!2107832 e!3086041)))

(declare-fun lt!2035899 () Bool)

(assert (=> d!1590126 (= res!2107832 (not lt!2035899))))

(assert (=> d!1590126 (= lt!2035899 e!3086039)))

(declare-fun res!2107834 () Bool)

(assert (=> d!1590126 (=> res!2107834 e!3086039)))

(assert (=> d!1590126 (= res!2107834 (is-Nil!56872 (++!12413 testedP!110 (Cons!56872 (head!10581 lt!2035596) Nil!56872))))))

(assert (=> d!1590126 (= (isPrefix!5042 (++!12413 testedP!110 (Cons!56872 (head!10581 lt!2035596) Nil!56872)) lt!2035592) lt!2035899)))

(declare-fun b!4939033 () Bool)

(declare-fun res!2107831 () Bool)

(assert (=> b!4939033 (=> (not res!2107831) (not e!3086040))))

(assert (=> b!4939033 (= res!2107831 (= (head!10581 (++!12413 testedP!110 (Cons!56872 (head!10581 lt!2035596) Nil!56872))) (head!10581 lt!2035592)))))

(assert (= (and d!1590126 (not res!2107834)) b!4939032))

(assert (= (and b!4939032 res!2107833) b!4939033))

(assert (= (and b!4939033 res!2107831) b!4939034))

(assert (= (and d!1590126 (not res!2107832)) b!4939035))

(assert (=> b!4939035 m!5960956))

(assert (=> b!4939035 m!5960988))

(declare-fun m!5961428 () Bool)

(assert (=> b!4939035 m!5961428))

(assert (=> b!4939034 m!5960988))

(declare-fun m!5961430 () Bool)

(assert (=> b!4939034 m!5961430))

(assert (=> b!4939034 m!5961164))

(assert (=> b!4939034 m!5961430))

(assert (=> b!4939034 m!5961164))

(declare-fun m!5961432 () Bool)

(assert (=> b!4939034 m!5961432))

(assert (=> b!4939033 m!5960988))

(declare-fun m!5961434 () Bool)

(assert (=> b!4939033 m!5961434))

(assert (=> b!4939033 m!5961208))

(assert (=> b!4938766 d!1590126))

(declare-fun d!1590128 () Bool)

(assert (=> d!1590128 (= (++!12413 (++!12413 testedP!110 (Cons!56872 lt!2035590 Nil!56872)) lt!2035593) lt!2035592)))

(declare-fun lt!2035902 () Unit!147609)

(declare-fun choose!36355 (List!56996 C!27118 List!56996 List!56996) Unit!147609)

(assert (=> d!1590128 (= lt!2035902 (choose!36355 testedP!110 lt!2035590 lt!2035593 lt!2035592))))

(assert (=> d!1590128 (= (++!12413 testedP!110 (Cons!56872 lt!2035590 lt!2035593)) lt!2035592)))

(assert (=> d!1590128 (= (lemmaMoveElementToOtherListKeepsConcatEq!1424 testedP!110 lt!2035590 lt!2035593 lt!2035592) lt!2035902)))

(declare-fun bs!1181039 () Bool)

(assert (= bs!1181039 d!1590128))

(assert (=> bs!1181039 m!5960998))

(assert (=> bs!1181039 m!5960998))

(declare-fun m!5961436 () Bool)

(assert (=> bs!1181039 m!5961436))

(declare-fun m!5961438 () Bool)

(assert (=> bs!1181039 m!5961438))

(declare-fun m!5961440 () Bool)

(assert (=> bs!1181039 m!5961440))

(assert (=> b!4938766 d!1590128))

(declare-fun d!1590130 () Bool)

(assert (=> d!1590130 (isPrefix!5042 (++!12413 testedP!110 (Cons!56872 (head!10581 (getSuffix!3026 lt!2035592 testedP!110)) Nil!56872)) lt!2035592)))

(declare-fun lt!2035905 () Unit!147609)

(declare-fun choose!36356 (List!56996 List!56996) Unit!147609)

(assert (=> d!1590130 (= lt!2035905 (choose!36356 testedP!110 lt!2035592))))

(assert (=> d!1590130 (isPrefix!5042 testedP!110 lt!2035592)))

(assert (=> d!1590130 (= (lemmaAddHeadSuffixToPrefixStillPrefix!812 testedP!110 lt!2035592) lt!2035905)))

(declare-fun bs!1181040 () Bool)

(assert (= bs!1181040 d!1590130))

(assert (=> bs!1181040 m!5961006))

(declare-fun m!5961442 () Bool)

(assert (=> bs!1181040 m!5961442))

(assert (=> bs!1181040 m!5961006))

(declare-fun m!5961444 () Bool)

(assert (=> bs!1181040 m!5961444))

(declare-fun m!5961446 () Bool)

(assert (=> bs!1181040 m!5961446))

(declare-fun m!5961448 () Bool)

(assert (=> bs!1181040 m!5961448))

(assert (=> bs!1181040 m!5961010))

(assert (=> bs!1181040 m!5961446))

(assert (=> b!4938766 d!1590130))

(declare-fun b!4939036 () Bool)

(declare-fun e!3086042 () List!56996)

(assert (=> b!4939036 (= e!3086042 lt!2035593)))

(declare-fun d!1590132 () Bool)

(declare-fun e!3086043 () Bool)

(assert (=> d!1590132 e!3086043))

(declare-fun res!2107835 () Bool)

(assert (=> d!1590132 (=> (not res!2107835) (not e!3086043))))

(declare-fun lt!2035906 () List!56996)

(assert (=> d!1590132 (= res!2107835 (= (content!10115 lt!2035906) (set.union (content!10115 lt!2035581) (content!10115 lt!2035593))))))

(assert (=> d!1590132 (= lt!2035906 e!3086042)))

(declare-fun c!842240 () Bool)

(assert (=> d!1590132 (= c!842240 (is-Nil!56872 lt!2035581))))

(assert (=> d!1590132 (= (++!12413 lt!2035581 lt!2035593) lt!2035906)))

(declare-fun b!4939038 () Bool)

(declare-fun res!2107836 () Bool)

(assert (=> b!4939038 (=> (not res!2107836) (not e!3086043))))

(assert (=> b!4939038 (= res!2107836 (= (size!37682 lt!2035906) (+ (size!37682 lt!2035581) (size!37682 lt!2035593))))))

(declare-fun b!4939037 () Bool)

(assert (=> b!4939037 (= e!3086042 (Cons!56872 (h!63320 lt!2035581) (++!12413 (t!367496 lt!2035581) lt!2035593)))))

(declare-fun b!4939039 () Bool)

(assert (=> b!4939039 (= e!3086043 (or (not (= lt!2035593 Nil!56872)) (= lt!2035906 lt!2035581)))))

(assert (= (and d!1590132 c!842240) b!4939036))

(assert (= (and d!1590132 (not c!842240)) b!4939037))

(assert (= (and d!1590132 res!2107835) b!4939038))

(assert (= (and b!4939038 res!2107836) b!4939039))

(declare-fun m!5961450 () Bool)

(assert (=> d!1590132 m!5961450))

(declare-fun m!5961452 () Bool)

(assert (=> d!1590132 m!5961452))

(declare-fun m!5961454 () Bool)

(assert (=> d!1590132 m!5961454))

(declare-fun m!5961456 () Bool)

(assert (=> b!4939038 m!5961456))

(assert (=> b!4939038 m!5961366))

(declare-fun m!5961458 () Bool)

(assert (=> b!4939038 m!5961458))

(declare-fun m!5961460 () Bool)

(assert (=> b!4939037 m!5961460))

(assert (=> b!4938766 d!1590132))

(declare-fun d!1590134 () Bool)

(assert (=> d!1590134 (= (tail!9720 testedSuffix!70) (t!367496 testedSuffix!70))))

(assert (=> b!4938766 d!1590134))

(declare-fun d!1590136 () Bool)

(assert (=> d!1590136 (= (list!18079 totalInput!685) (list!18081 (c!842160 totalInput!685)))))

(declare-fun bs!1181041 () Bool)

(assert (= bs!1181041 d!1590136))

(declare-fun m!5961462 () Bool)

(assert (=> bs!1181041 m!5961462))

(assert (=> start!519442 d!1590136))

(declare-fun b!4939040 () Bool)

(declare-fun e!3086044 () List!56996)

(assert (=> b!4939040 (= e!3086044 testedSuffix!70)))

(declare-fun d!1590138 () Bool)

(declare-fun e!3086045 () Bool)

(assert (=> d!1590138 e!3086045))

(declare-fun res!2107837 () Bool)

(assert (=> d!1590138 (=> (not res!2107837) (not e!3086045))))

(declare-fun lt!2035907 () List!56996)

(assert (=> d!1590138 (= res!2107837 (= (content!10115 lt!2035907) (set.union (content!10115 testedP!110) (content!10115 testedSuffix!70))))))

(assert (=> d!1590138 (= lt!2035907 e!3086044)))

(declare-fun c!842241 () Bool)

(assert (=> d!1590138 (= c!842241 (is-Nil!56872 testedP!110))))

(assert (=> d!1590138 (= (++!12413 testedP!110 testedSuffix!70) lt!2035907)))

(declare-fun b!4939042 () Bool)

(declare-fun res!2107838 () Bool)

(assert (=> b!4939042 (=> (not res!2107838) (not e!3086045))))

(assert (=> b!4939042 (= res!2107838 (= (size!37682 lt!2035907) (+ (size!37682 testedP!110) (size!37682 testedSuffix!70))))))

(declare-fun b!4939041 () Bool)

(assert (=> b!4939041 (= e!3086044 (Cons!56872 (h!63320 testedP!110) (++!12413 (t!367496 testedP!110) testedSuffix!70)))))

(declare-fun b!4939043 () Bool)

(assert (=> b!4939043 (= e!3086045 (or (not (= testedSuffix!70 Nil!56872)) (= lt!2035907 testedP!110)))))

(assert (= (and d!1590138 c!842241) b!4939040))

(assert (= (and d!1590138 (not c!842241)) b!4939041))

(assert (= (and d!1590138 res!2107837) b!4939042))

(assert (= (and b!4939042 res!2107838) b!4939043))

(declare-fun m!5961464 () Bool)

(assert (=> d!1590138 m!5961464))

(assert (=> d!1590138 m!5961408))

(declare-fun m!5961466 () Bool)

(assert (=> d!1590138 m!5961466))

(declare-fun m!5961468 () Bool)

(assert (=> b!4939042 m!5961468))

(assert (=> b!4939042 m!5961022))

(declare-fun m!5961470 () Bool)

(assert (=> b!4939042 m!5961470))

(declare-fun m!5961472 () Bool)

(assert (=> b!4939041 m!5961472))

(assert (=> start!519442 d!1590138))

(declare-fun d!1590140 () Bool)

(assert (=> d!1590140 (= (inv!73939 totalInput!685) (isBalanced!4126 (c!842160 totalInput!685)))))

(declare-fun bs!1181042 () Bool)

(assert (= bs!1181042 d!1590140))

(assert (=> bs!1181042 m!5961190))

(assert (=> start!519442 d!1590140))

(declare-fun b!4939048 () Bool)

(declare-fun e!3086048 () Bool)

(declare-fun tp!1385878 () Bool)

(declare-fun tp!1385879 () Bool)

(assert (=> b!4939048 (= e!3086048 (and tp!1385878 tp!1385879))))

(assert (=> b!4938764 (= tp!1385855 e!3086048)))

(assert (= (and b!4938764 (is-Cons!56873 (exprs!3586 setElem!27861))) b!4939048))

(declare-fun b!4939053 () Bool)

(declare-fun e!3086051 () Bool)

(declare-fun tp!1385882 () Bool)

(assert (=> b!4939053 (= e!3086051 (and tp_is_empty!36065 tp!1385882))))

(assert (=> b!4938761 (= tp!1385856 e!3086051)))

(assert (= (and b!4938761 (is-Cons!56872 (t!367496 testedP!110))) b!4939053))

(declare-fun tp!1385891 () Bool)

(declare-fun e!3086057 () Bool)

(declare-fun tp!1385890 () Bool)

(declare-fun b!4939062 () Bool)

(assert (=> b!4939062 (= e!3086057 (and (inv!73941 (left!41480 (c!842160 totalInput!685))) tp!1385890 (inv!73941 (right!41810 (c!842160 totalInput!685))) tp!1385891))))

(declare-fun b!4939064 () Bool)

(declare-fun e!3086056 () Bool)

(declare-fun tp!1385889 () Bool)

(assert (=> b!4939064 (= e!3086056 tp!1385889)))

(declare-fun b!4939063 () Bool)

(declare-fun inv!73947 (IArray!29967) Bool)

(assert (=> b!4939063 (= e!3086057 (and (inv!73947 (xs!18277 (c!842160 totalInput!685))) e!3086056))))

(assert (=> b!4938769 (= tp!1385858 (and (inv!73941 (c!842160 totalInput!685)) e!3086057))))

(assert (= (and b!4938769 (is-Node!14953 (c!842160 totalInput!685))) b!4939062))

(assert (= b!4939063 b!4939064))

(assert (= (and b!4938769 (is-Leaf!24863 (c!842160 totalInput!685))) b!4939063))

(declare-fun m!5961474 () Bool)

(assert (=> b!4939062 m!5961474))

(declare-fun m!5961476 () Bool)

(assert (=> b!4939062 m!5961476))

(declare-fun m!5961478 () Bool)

(assert (=> b!4939063 m!5961478))

(assert (=> b!4938769 m!5960964))

(declare-fun condSetEmpty!27867 () Bool)

(assert (=> setNonEmpty!27861 (= condSetEmpty!27867 (= setRest!27861 (as set.empty (Set Context!6172))))))

(declare-fun setRes!27867 () Bool)

(assert (=> setNonEmpty!27861 (= tp!1385854 setRes!27867)))

(declare-fun setIsEmpty!27867 () Bool)

(assert (=> setIsEmpty!27867 setRes!27867))

(declare-fun e!3086060 () Bool)

(declare-fun setElem!27867 () Context!6172)

(declare-fun tp!1385896 () Bool)

(declare-fun setNonEmpty!27867 () Bool)

(assert (=> setNonEmpty!27867 (= setRes!27867 (and tp!1385896 (inv!73940 setElem!27867) e!3086060))))

(declare-fun setRest!27867 () (Set Context!6172))

(assert (=> setNonEmpty!27867 (= setRest!27861 (set.union (set.insert setElem!27867 (as set.empty (Set Context!6172))) setRest!27867))))

(declare-fun b!4939069 () Bool)

(declare-fun tp!1385897 () Bool)

(assert (=> b!4939069 (= e!3086060 tp!1385897)))

(assert (= (and setNonEmpty!27861 condSetEmpty!27867) setIsEmpty!27867))

(assert (= (and setNonEmpty!27861 (not condSetEmpty!27867)) setNonEmpty!27867))

(assert (= setNonEmpty!27867 b!4939069))

(declare-fun m!5961480 () Bool)

(assert (=> setNonEmpty!27867 m!5961480))

(declare-fun b!4939070 () Bool)

(declare-fun e!3086061 () Bool)

(declare-fun tp!1385898 () Bool)

(assert (=> b!4939070 (= e!3086061 (and tp_is_empty!36065 tp!1385898))))

(assert (=> b!4938765 (= tp!1385857 e!3086061)))

(assert (= (and b!4938765 (is-Cons!56872 (t!367496 testedSuffix!70))) b!4939070))

(push 1)

(assert tp_is_empty!36065)

(assert (not d!1590038))

(assert (not bm!344599))

(assert (not b!4939069))

(assert (not b!4938931))

(assert (not b!4939048))

(assert (not b!4939019))

(assert (not d!1590026))

(assert (not b!4938916))

(assert (not b!4938891))

(assert (not b!4938928))

(assert (not d!1590122))

(assert (not b!4939021))

(assert (not b!4939017))

(assert (not b!4939006))

(assert (not b!4939042))

(assert (not d!1590048))

(assert (not b!4938879))

(assert (not d!1590082))

(assert (not b!4938918))

(assert (not b!4939026))

(assert (not d!1590070))

(assert (not b!4939037))

(assert (not d!1590050))

(assert (not d!1590056))

(assert (not b!4938892))

(assert (not b!4939041))

(assert (not b!4939018))

(assert (not bm!344606))

(assert (not b!4938856))

(assert (not d!1590118))

(assert (not d!1590130))

(assert (not d!1590044))

(assert (not b!4938861))

(assert (not bm!344605))

(assert (not b!4938872))

(assert (not d!1590138))

(assert (not b!4938949))

(assert (not bm!344598))

(assert (not b!4938873))

(assert (not b!4938769))

(assert (not d!1590114))

(assert (not bm!344603))

(assert (not b!4939062))

(assert (not b!4939023))

(assert (not setNonEmpty!27867))

(assert (not bm!344576))

(assert (not d!1590116))

(assert (not b!4939063))

(assert (not b!4938890))

(assert (not bm!344600))

(assert (not b!4939038))

(assert (not b!4939034))

(assert (not b!4939064))

(assert (not b!4938943))

(assert (not d!1590046))

(assert (not b!4938941))

(assert (not bm!344601))

(assert (not b!4939035))

(assert (not b!4939070))

(assert (not b!4939053))

(assert (not b!4938927))

(assert (not d!1590140))

(assert (not d!1590136))

(assert (not d!1590066))

(assert (not d!1590058))

(assert (not b!4938951))

(assert (not d!1590128))

(assert (not d!1590040))

(assert (not b!4938926))

(assert (not d!1590076))

(assert (not d!1590052))

(assert (not b!4938880))

(assert (not d!1590120))

(assert (not d!1590080))

(assert (not bm!344573))

(assert (not bm!344604))

(assert (not b!4938934))

(assert (not d!1590064))

(assert (not bm!344572))

(assert (not b!4939022))

(assert (not b!4939033))

(assert (not b!4939025))

(assert (not d!1590108))

(assert (not bm!344597))

(assert (not d!1590132))

(assert (not b!4939030))

(assert (not d!1590042))

(assert (not bm!344602))

(assert (not d!1590068))

(assert (not b!4938855))

(assert (not b!4939029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

