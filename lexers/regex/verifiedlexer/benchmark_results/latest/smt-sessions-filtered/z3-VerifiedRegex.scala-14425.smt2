; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751776 () Bool)

(assert start!751776)

(declare-fun b!7970797 () Bool)

(declare-fun e!4699765 () Bool)

(declare-fun e!4699764 () Bool)

(assert (=> b!7970797 (= e!4699765 e!4699764)))

(declare-fun res!3157979 () Bool)

(assert (=> b!7970797 (=> res!3157979 e!4699764)))

(declare-datatypes ((C!43400 0))(
  ( (C!43401 (val!32248 Int)) )
))
(declare-datatypes ((Regex!21531 0))(
  ( (ElementMatch!21531 (c!1463840 C!43400)) (Concat!30530 (regOne!43574 Regex!21531) (regTwo!43574 Regex!21531)) (EmptyExpr!21531) (Star!21531 (reg!21860 Regex!21531)) (EmptyLang!21531) (Union!21531 (regOne!43575 Regex!21531) (regTwo!43575 Regex!21531)) )
))
(declare-fun r!24602 () Regex!21531)

(declare-fun validRegex!11835 (Regex!21531) Bool)

(assert (=> b!7970797 (= res!3157979 (not (validRegex!11835 r!24602)))))

(declare-fun e!4699770 () Bool)

(assert (=> b!7970797 e!4699770))

(declare-fun res!3157982 () Bool)

(assert (=> b!7970797 (=> res!3157982 e!4699770)))

(declare-datatypes ((List!74760 0))(
  ( (Nil!74636) (Cons!74636 (h!81084 C!43400) (t!390503 List!74760)) )
))
(declare-datatypes ((tuple2!70724 0))(
  ( (tuple2!70725 (_1!38665 List!74760) (_2!38665 List!74760)) )
))
(declare-fun lt!2708054 () tuple2!70724)

(declare-fun isEmpty!42937 (List!74760) Bool)

(assert (=> b!7970797 (= res!3157982 (isEmpty!42937 (_1!38665 lt!2708054)))))

(declare-fun lt!2708057 () List!74760)

(declare-fun lt!2708064 () Regex!21531)

(declare-fun lt!2708062 () Int)

(declare-fun input!7927 () List!74760)

(declare-fun findLongestMatchInner!2312 (Regex!21531 List!74760 Int List!74760 List!74760 Int) tuple2!70724)

(declare-fun size!43467 (List!74760) Int)

(declare-fun getSuffix!3834 (List!74760 List!74760) List!74760)

(assert (=> b!7970797 (= lt!2708054 (findLongestMatchInner!2312 lt!2708064 lt!2708057 (size!43467 lt!2708057) (getSuffix!3834 input!7927 lt!2708057) input!7927 lt!2708062))))

(declare-fun baseR!116 () Regex!21531)

(declare-datatypes ((Unit!170304 0))(
  ( (Unit!170305) )
))
(declare-fun lt!2708058 () Unit!170304)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!65 (Regex!21531 Regex!21531 List!74760 List!74760) Unit!170304)

(assert (=> b!7970797 (= lt!2708058 (longestMatchIsAcceptedByMatchOrIsEmptyRec!65 baseR!116 lt!2708064 lt!2708057 input!7927))))

(declare-fun lt!2708050 () Regex!21531)

(assert (=> b!7970797 (= lt!2708050 lt!2708064)))

(declare-fun lt!2708061 () C!43400)

(declare-fun derivativeStep!6557 (Regex!21531 C!43400) Regex!21531)

(assert (=> b!7970797 (= lt!2708064 (derivativeStep!6557 r!24602 lt!2708061))))

(declare-fun derivative!717 (Regex!21531 List!74760) Regex!21531)

(assert (=> b!7970797 (= lt!2708050 (derivative!717 baseR!116 lt!2708057))))

(declare-fun testedP!447 () List!74760)

(declare-fun lt!2708056 () Unit!170304)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!239 (Regex!21531 Regex!21531 List!74760 C!43400) Unit!170304)

(assert (=> b!7970797 (= lt!2708056 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!239 baseR!116 r!24602 testedP!447 lt!2708061))))

(declare-fun b!7970798 () Bool)

(declare-fun e!4699771 () Bool)

(declare-fun e!4699767 () Bool)

(assert (=> b!7970798 (= e!4699771 e!4699767)))

(declare-fun res!3157977 () Bool)

(assert (=> b!7970798 (=> (not res!3157977) (not e!4699767))))

(declare-fun lt!2708059 () List!74760)

(declare-fun lt!2708065 () Int)

(assert (=> b!7970798 (= res!3157977 (not (isEmpty!42937 (_1!38665 (findLongestMatchInner!2312 r!24602 testedP!447 lt!2708065 lt!2708059 input!7927 lt!2708062)))))))

(assert (=> b!7970798 (= lt!2708062 (size!43467 input!7927))))

(assert (=> b!7970798 (= lt!2708059 (getSuffix!3834 input!7927 testedP!447))))

(assert (=> b!7970798 (= lt!2708065 (size!43467 testedP!447))))

(declare-fun b!7970799 () Bool)

(declare-fun res!3157983 () Bool)

(assert (=> b!7970799 (=> (not res!3157983) (not e!4699771))))

(declare-fun isPrefix!6631 (List!74760 List!74760) Bool)

(assert (=> b!7970799 (= res!3157983 (isPrefix!6631 testedP!447 input!7927))))

(declare-fun b!7970800 () Bool)

(declare-fun e!4699772 () Unit!170304)

(declare-fun Unit!170306 () Unit!170304)

(assert (=> b!7970800 (= e!4699772 Unit!170306)))

(declare-fun lt!2708051 () Unit!170304)

(declare-fun lemmaIsPrefixRefl!4099 (List!74760 List!74760) Unit!170304)

(assert (=> b!7970800 (= lt!2708051 (lemmaIsPrefixRefl!4099 input!7927 input!7927))))

(assert (=> b!7970800 (isPrefix!6631 input!7927 input!7927)))

(declare-fun lt!2708053 () Unit!170304)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1679 (List!74760 List!74760 List!74760) Unit!170304)

(assert (=> b!7970800 (= lt!2708053 (lemmaIsPrefixSameLengthThenSameList!1679 input!7927 testedP!447 input!7927))))

(assert (=> b!7970800 false))

(declare-fun b!7970801 () Bool)

(declare-fun res!3157981 () Bool)

(assert (=> b!7970801 (=> (not res!3157981) (not e!4699767))))

(assert (=> b!7970801 (= res!3157981 (not (= testedP!447 input!7927)))))

(declare-fun b!7970802 () Bool)

(declare-fun e!4699773 () Bool)

(assert (=> b!7970802 (= e!4699773 e!4699765)))

(declare-fun res!3157980 () Bool)

(assert (=> b!7970802 (=> res!3157980 e!4699765)))

(declare-fun nullable!9630 (Regex!21531) Bool)

(assert (=> b!7970802 (= res!3157980 (nullable!9630 r!24602))))

(assert (=> b!7970802 (isPrefix!6631 lt!2708057 input!7927)))

(declare-fun lt!2708055 () Unit!170304)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1358 (List!74760 List!74760) Unit!170304)

(assert (=> b!7970802 (= lt!2708055 (lemmaAddHeadSuffixToPrefixStillPrefix!1358 testedP!447 input!7927))))

(declare-fun ++!18401 (List!74760 List!74760) List!74760)

(assert (=> b!7970802 (= lt!2708057 (++!18401 testedP!447 (Cons!74636 lt!2708061 Nil!74636)))))

(declare-fun head!16283 (List!74760) C!43400)

(assert (=> b!7970802 (= lt!2708061 (head!16283 lt!2708059))))

(declare-fun b!7970803 () Bool)

(declare-fun res!3157984 () Bool)

(assert (=> b!7970803 (=> (not res!3157984) (not e!4699771))))

(assert (=> b!7970803 (= res!3157984 (= (derivative!717 baseR!116 testedP!447) r!24602))))

(declare-fun b!7970804 () Bool)

(declare-fun e!4699769 () Bool)

(declare-fun tp_is_empty!53605 () Bool)

(assert (=> b!7970804 (= e!4699769 tp_is_empty!53605)))

(declare-fun b!7970805 () Bool)

(declare-fun Unit!170307 () Unit!170304)

(assert (=> b!7970805 (= e!4699772 Unit!170307)))

(declare-fun b!7970806 () Bool)

(declare-fun e!4699768 () Bool)

(declare-fun tp!2376162 () Bool)

(assert (=> b!7970806 (= e!4699768 (and tp_is_empty!53605 tp!2376162))))

(declare-fun b!7970807 () Bool)

(declare-fun tp!2376163 () Bool)

(assert (=> b!7970807 (= e!4699769 tp!2376163)))

(declare-fun b!7970808 () Bool)

(declare-fun e!4699763 () Bool)

(declare-fun tp!2376155 () Bool)

(assert (=> b!7970808 (= e!4699763 (and tp_is_empty!53605 tp!2376155))))

(declare-fun b!7970809 () Bool)

(declare-fun matchR!10754 (Regex!21531 List!74760) Bool)

(assert (=> b!7970809 (= e!4699770 (matchR!10754 baseR!116 (_1!38665 lt!2708054)))))

(declare-fun b!7970810 () Bool)

(declare-fun e!4699766 () Bool)

(declare-fun tp!2376164 () Bool)

(assert (=> b!7970810 (= e!4699766 tp!2376164)))

(declare-fun b!7970811 () Bool)

(assert (=> b!7970811 (= e!4699767 (not e!4699773))))

(declare-fun res!3157976 () Bool)

(assert (=> b!7970811 (=> res!3157976 e!4699773)))

(assert (=> b!7970811 (= res!3157976 (>= lt!2708065 lt!2708062))))

(declare-fun lt!2708063 () Unit!170304)

(assert (=> b!7970811 (= lt!2708063 e!4699772)))

(declare-fun c!1463839 () Bool)

(assert (=> b!7970811 (= c!1463839 (= lt!2708065 lt!2708062))))

(assert (=> b!7970811 (<= lt!2708065 lt!2708062)))

(declare-fun lt!2708060 () Unit!170304)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1148 (List!74760 List!74760) Unit!170304)

(assert (=> b!7970811 (= lt!2708060 (lemmaIsPrefixThenSmallerEqSize!1148 testedP!447 input!7927))))

(declare-fun b!7970812 () Bool)

(declare-fun tp!2376159 () Bool)

(declare-fun tp!2376160 () Bool)

(assert (=> b!7970812 (= e!4699766 (and tp!2376159 tp!2376160))))

(declare-fun b!7970796 () Bool)

(declare-fun tp!2376157 () Bool)

(declare-fun tp!2376156 () Bool)

(assert (=> b!7970796 (= e!4699769 (and tp!2376157 tp!2376156))))

(declare-fun res!3157978 () Bool)

(assert (=> start!751776 (=> (not res!3157978) (not e!4699771))))

(assert (=> start!751776 (= res!3157978 (validRegex!11835 baseR!116))))

(assert (=> start!751776 e!4699771))

(assert (=> start!751776 e!4699769))

(assert (=> start!751776 e!4699768))

(assert (=> start!751776 e!4699763))

(assert (=> start!751776 e!4699766))

(declare-fun b!7970813 () Bool)

(assert (=> b!7970813 (= e!4699764 true)))

(declare-fun lt!2708052 () List!74760)

(assert (=> b!7970813 (= lt!2708052 (++!18401 testedP!447 lt!2708059))))

(declare-fun b!7970814 () Bool)

(declare-fun tp!2376166 () Bool)

(declare-fun tp!2376165 () Bool)

(assert (=> b!7970814 (= e!4699769 (and tp!2376166 tp!2376165))))

(declare-fun b!7970815 () Bool)

(assert (=> b!7970815 (= e!4699766 tp_is_empty!53605)))

(declare-fun b!7970816 () Bool)

(declare-fun tp!2376161 () Bool)

(declare-fun tp!2376158 () Bool)

(assert (=> b!7970816 (= e!4699766 (and tp!2376161 tp!2376158))))

(assert (= (and start!751776 res!3157978) b!7970799))

(assert (= (and b!7970799 res!3157983) b!7970803))

(assert (= (and b!7970803 res!3157984) b!7970798))

(assert (= (and b!7970798 res!3157977) b!7970801))

(assert (= (and b!7970801 res!3157981) b!7970811))

(assert (= (and b!7970811 c!1463839) b!7970800))

(assert (= (and b!7970811 (not c!1463839)) b!7970805))

(assert (= (and b!7970811 (not res!3157976)) b!7970802))

(assert (= (and b!7970802 (not res!3157980)) b!7970797))

(assert (= (and b!7970797 (not res!3157982)) b!7970809))

(assert (= (and b!7970797 (not res!3157979)) b!7970813))

(get-info :version)

(assert (= (and start!751776 ((_ is ElementMatch!21531) baseR!116)) b!7970804))

(assert (= (and start!751776 ((_ is Concat!30530) baseR!116)) b!7970796))

(assert (= (and start!751776 ((_ is Star!21531) baseR!116)) b!7970807))

(assert (= (and start!751776 ((_ is Union!21531) baseR!116)) b!7970814))

(assert (= (and start!751776 ((_ is Cons!74636) testedP!447)) b!7970806))

(assert (= (and start!751776 ((_ is Cons!74636) input!7927)) b!7970808))

(assert (= (and start!751776 ((_ is ElementMatch!21531) r!24602)) b!7970815))

(assert (= (and start!751776 ((_ is Concat!30530) r!24602)) b!7970816))

(assert (= (and start!751776 ((_ is Star!21531) r!24602)) b!7970810))

(assert (= (and start!751776 ((_ is Union!21531) r!24602)) b!7970812))

(declare-fun m!8349014 () Bool)

(assert (=> b!7970800 m!8349014))

(declare-fun m!8349016 () Bool)

(assert (=> b!7970800 m!8349016))

(declare-fun m!8349018 () Bool)

(assert (=> b!7970800 m!8349018))

(declare-fun m!8349020 () Bool)

(assert (=> b!7970811 m!8349020))

(declare-fun m!8349022 () Bool)

(assert (=> b!7970802 m!8349022))

(declare-fun m!8349024 () Bool)

(assert (=> b!7970802 m!8349024))

(declare-fun m!8349026 () Bool)

(assert (=> b!7970802 m!8349026))

(declare-fun m!8349028 () Bool)

(assert (=> b!7970802 m!8349028))

(declare-fun m!8349030 () Bool)

(assert (=> b!7970802 m!8349030))

(declare-fun m!8349032 () Bool)

(assert (=> b!7970797 m!8349032))

(declare-fun m!8349034 () Bool)

(assert (=> b!7970797 m!8349034))

(declare-fun m!8349036 () Bool)

(assert (=> b!7970797 m!8349036))

(declare-fun m!8349038 () Bool)

(assert (=> b!7970797 m!8349038))

(declare-fun m!8349040 () Bool)

(assert (=> b!7970797 m!8349040))

(declare-fun m!8349042 () Bool)

(assert (=> b!7970797 m!8349042))

(declare-fun m!8349044 () Bool)

(assert (=> b!7970797 m!8349044))

(declare-fun m!8349046 () Bool)

(assert (=> b!7970797 m!8349046))

(assert (=> b!7970797 m!8349036))

(assert (=> b!7970797 m!8349042))

(declare-fun m!8349048 () Bool)

(assert (=> b!7970797 m!8349048))

(declare-fun m!8349050 () Bool)

(assert (=> start!751776 m!8349050))

(declare-fun m!8349052 () Bool)

(assert (=> b!7970799 m!8349052))

(declare-fun m!8349054 () Bool)

(assert (=> b!7970803 m!8349054))

(declare-fun m!8349056 () Bool)

(assert (=> b!7970809 m!8349056))

(declare-fun m!8349058 () Bool)

(assert (=> b!7970798 m!8349058))

(declare-fun m!8349060 () Bool)

(assert (=> b!7970798 m!8349060))

(declare-fun m!8349062 () Bool)

(assert (=> b!7970798 m!8349062))

(declare-fun m!8349064 () Bool)

(assert (=> b!7970798 m!8349064))

(declare-fun m!8349066 () Bool)

(assert (=> b!7970798 m!8349066))

(declare-fun m!8349068 () Bool)

(assert (=> b!7970813 m!8349068))

(check-sat (not b!7970812) (not b!7970797) (not start!751776) (not b!7970798) (not b!7970803) (not b!7970810) (not b!7970807) (not b!7970808) (not b!7970799) tp_is_empty!53605 (not b!7970814) (not b!7970806) (not b!7970800) (not b!7970802) (not b!7970816) (not b!7970813) (not b!7970811) (not b!7970809) (not b!7970796))
(check-sat)
