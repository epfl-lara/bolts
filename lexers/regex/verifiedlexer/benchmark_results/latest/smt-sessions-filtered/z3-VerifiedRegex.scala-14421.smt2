; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751616 () Bool)

(assert start!751616)

(declare-fun b!7969174 () Bool)

(declare-fun e!4698913 () Bool)

(declare-fun lt!2707065 () Int)

(declare-fun lt!2707059 () Int)

(assert (=> b!7969174 (= e!4698913 (>= lt!2707065 lt!2707059))))

(declare-fun e!4698916 () Bool)

(assert (=> b!7969174 e!4698916))

(declare-fun res!3157445 () Bool)

(assert (=> b!7969174 (=> res!3157445 e!4698916)))

(declare-datatypes ((C!43384 0))(
  ( (C!43385 (val!32240 Int)) )
))
(declare-datatypes ((List!74752 0))(
  ( (Nil!74628) (Cons!74628 (h!81076 C!43384) (t!390495 List!74752)) )
))
(declare-datatypes ((tuple2!70708 0))(
  ( (tuple2!70709 (_1!38657 List!74752) (_2!38657 List!74752)) )
))
(declare-fun lt!2707056 () tuple2!70708)

(declare-fun isEmpty!42929 (List!74752) Bool)

(assert (=> b!7969174 (= res!3157445 (isEmpty!42929 (_1!38657 lt!2707056)))))

(declare-datatypes ((Regex!21523 0))(
  ( (ElementMatch!21523 (c!1463514 C!43384)) (Concat!30522 (regOne!43558 Regex!21523) (regTwo!43558 Regex!21523)) (EmptyExpr!21523) (Star!21523 (reg!21852 Regex!21523)) (EmptyLang!21523) (Union!21523 (regOne!43559 Regex!21523) (regTwo!43559 Regex!21523)) )
))
(declare-fun lt!2707060 () Regex!21523)

(declare-fun input!7927 () List!74752)

(declare-fun lt!2707061 () List!74752)

(declare-fun findLongestMatchInner!2304 (Regex!21523 List!74752 Int List!74752 List!74752 Int) tuple2!70708)

(declare-fun size!43459 (List!74752) Int)

(declare-fun getSuffix!3826 (List!74752 List!74752) List!74752)

(assert (=> b!7969174 (= lt!2707056 (findLongestMatchInner!2304 lt!2707060 lt!2707061 (size!43459 lt!2707061) (getSuffix!3826 input!7927 lt!2707061) input!7927 lt!2707065))))

(declare-fun baseR!116 () Regex!21523)

(declare-datatypes ((Unit!170248 0))(
  ( (Unit!170249) )
))
(declare-fun lt!2707055 () Unit!170248)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!57 (Regex!21523 Regex!21523 List!74752 List!74752) Unit!170248)

(assert (=> b!7969174 (= lt!2707055 (longestMatchIsAcceptedByMatchOrIsEmptyRec!57 baseR!116 lt!2707060 lt!2707061 input!7927))))

(declare-fun lt!2707068 () Regex!21523)

(assert (=> b!7969174 (= lt!2707068 lt!2707060)))

(declare-fun r!24602 () Regex!21523)

(declare-fun lt!2707067 () C!43384)

(declare-fun derivativeStep!6549 (Regex!21523 C!43384) Regex!21523)

(assert (=> b!7969174 (= lt!2707060 (derivativeStep!6549 r!24602 lt!2707067))))

(declare-fun derivative!709 (Regex!21523 List!74752) Regex!21523)

(assert (=> b!7969174 (= lt!2707068 (derivative!709 baseR!116 lt!2707061))))

(declare-fun testedP!447 () List!74752)

(declare-fun lt!2707066 () Unit!170248)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!231 (Regex!21523 Regex!21523 List!74752 C!43384) Unit!170248)

(assert (=> b!7969174 (= lt!2707066 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!231 baseR!116 r!24602 testedP!447 lt!2707067))))

(declare-fun b!7969175 () Bool)

(declare-fun res!3157450 () Bool)

(declare-fun e!4698914 () Bool)

(assert (=> b!7969175 (=> (not res!3157450) (not e!4698914))))

(declare-fun isPrefix!6623 (List!74752 List!74752) Bool)

(assert (=> b!7969175 (= res!3157450 (isPrefix!6623 testedP!447 input!7927))))

(declare-fun b!7969176 () Bool)

(declare-fun e!4698915 () Bool)

(declare-fun tp!2375611 () Bool)

(declare-fun tp!2375619 () Bool)

(assert (=> b!7969176 (= e!4698915 (and tp!2375611 tp!2375619))))

(declare-fun b!7969177 () Bool)

(declare-fun tp!2375622 () Bool)

(declare-fun tp!2375614 () Bool)

(assert (=> b!7969177 (= e!4698915 (and tp!2375622 tp!2375614))))

(declare-fun b!7969178 () Bool)

(declare-fun res!3157446 () Bool)

(declare-fun e!4698920 () Bool)

(assert (=> b!7969178 (=> (not res!3157446) (not e!4698920))))

(assert (=> b!7969178 (= res!3157446 (not (= testedP!447 input!7927)))))

(declare-fun b!7969179 () Bool)

(declare-fun e!4698918 () Bool)

(declare-fun tp_is_empty!53589 () Bool)

(declare-fun tp!2375613 () Bool)

(assert (=> b!7969179 (= e!4698918 (and tp_is_empty!53589 tp!2375613))))

(declare-fun b!7969180 () Bool)

(declare-fun e!4698912 () Unit!170248)

(declare-fun Unit!170250 () Unit!170248)

(assert (=> b!7969180 (= e!4698912 Unit!170250)))

(declare-fun lt!2707064 () Unit!170248)

(declare-fun lemmaIsPrefixRefl!4091 (List!74752 List!74752) Unit!170248)

(assert (=> b!7969180 (= lt!2707064 (lemmaIsPrefixRefl!4091 input!7927 input!7927))))

(assert (=> b!7969180 (isPrefix!6623 input!7927 input!7927)))

(declare-fun lt!2707063 () Unit!170248)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1671 (List!74752 List!74752 List!74752) Unit!170248)

(assert (=> b!7969180 (= lt!2707063 (lemmaIsPrefixSameLengthThenSameList!1671 input!7927 testedP!447 input!7927))))

(assert (=> b!7969180 false))

(declare-fun b!7969181 () Bool)

(declare-fun res!3157451 () Bool)

(assert (=> b!7969181 (=> (not res!3157451) (not e!4698914))))

(assert (=> b!7969181 (= res!3157451 (= (derivative!709 baseR!116 testedP!447) r!24602))))

(declare-fun b!7969182 () Bool)

(declare-fun e!4698919 () Bool)

(declare-fun tp!2375617 () Bool)

(assert (=> b!7969182 (= e!4698919 tp!2375617)))

(declare-fun b!7969183 () Bool)

(declare-fun e!4698921 () Bool)

(declare-fun tp!2375618 () Bool)

(assert (=> b!7969183 (= e!4698921 (and tp_is_empty!53589 tp!2375618))))

(declare-fun b!7969184 () Bool)

(declare-fun tp!2375615 () Bool)

(assert (=> b!7969184 (= e!4698915 tp!2375615)))

(declare-fun b!7969185 () Bool)

(assert (=> b!7969185 (= e!4698919 tp_is_empty!53589)))

(declare-fun b!7969186 () Bool)

(declare-fun matchR!10746 (Regex!21523 List!74752) Bool)

(assert (=> b!7969186 (= e!4698916 (matchR!10746 baseR!116 (_1!38657 lt!2707056)))))

(declare-fun b!7969187 () Bool)

(declare-fun tp!2375612 () Bool)

(declare-fun tp!2375620 () Bool)

(assert (=> b!7969187 (= e!4698919 (and tp!2375612 tp!2375620))))

(declare-fun res!3157449 () Bool)

(assert (=> start!751616 (=> (not res!3157449) (not e!4698914))))

(declare-fun validRegex!11827 (Regex!21523) Bool)

(assert (=> start!751616 (= res!3157449 (validRegex!11827 baseR!116))))

(assert (=> start!751616 e!4698914))

(assert (=> start!751616 e!4698915))

(assert (=> start!751616 e!4698918))

(assert (=> start!751616 e!4698921))

(assert (=> start!751616 e!4698919))

(declare-fun b!7969173 () Bool)

(declare-fun e!4698917 () Bool)

(assert (=> b!7969173 (= e!4698917 e!4698913)))

(declare-fun res!3157452 () Bool)

(assert (=> b!7969173 (=> res!3157452 e!4698913)))

(declare-fun nullable!9622 (Regex!21523) Bool)

(assert (=> b!7969173 (= res!3157452 (nullable!9622 r!24602))))

(assert (=> b!7969173 (isPrefix!6623 lt!2707061 input!7927)))

(declare-fun lt!2707058 () Unit!170248)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1350 (List!74752 List!74752) Unit!170248)

(assert (=> b!7969173 (= lt!2707058 (lemmaAddHeadSuffixToPrefixStillPrefix!1350 testedP!447 input!7927))))

(declare-fun ++!18393 (List!74752 List!74752) List!74752)

(assert (=> b!7969173 (= lt!2707061 (++!18393 testedP!447 (Cons!74628 lt!2707067 Nil!74628)))))

(declare-fun lt!2707062 () List!74752)

(declare-fun head!16275 (List!74752) C!43384)

(assert (=> b!7969173 (= lt!2707067 (head!16275 lt!2707062))))

(declare-fun b!7969188 () Bool)

(assert (=> b!7969188 (= e!4698920 (not e!4698917))))

(declare-fun res!3157447 () Bool)

(assert (=> b!7969188 (=> res!3157447 e!4698917)))

(assert (=> b!7969188 (= res!3157447 (>= lt!2707059 lt!2707065))))

(declare-fun lt!2707057 () Unit!170248)

(assert (=> b!7969188 (= lt!2707057 e!4698912)))

(declare-fun c!1463513 () Bool)

(assert (=> b!7969188 (= c!1463513 (= lt!2707059 lt!2707065))))

(assert (=> b!7969188 (<= lt!2707059 lt!2707065)))

(declare-fun lt!2707069 () Unit!170248)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1140 (List!74752 List!74752) Unit!170248)

(assert (=> b!7969188 (= lt!2707069 (lemmaIsPrefixThenSmallerEqSize!1140 testedP!447 input!7927))))

(declare-fun b!7969189 () Bool)

(assert (=> b!7969189 (= e!4698915 tp_is_empty!53589)))

(declare-fun b!7969190 () Bool)

(declare-fun tp!2375621 () Bool)

(declare-fun tp!2375616 () Bool)

(assert (=> b!7969190 (= e!4698919 (and tp!2375621 tp!2375616))))

(declare-fun b!7969191 () Bool)

(declare-fun Unit!170251 () Unit!170248)

(assert (=> b!7969191 (= e!4698912 Unit!170251)))

(declare-fun b!7969192 () Bool)

(assert (=> b!7969192 (= e!4698914 e!4698920)))

(declare-fun res!3157448 () Bool)

(assert (=> b!7969192 (=> (not res!3157448) (not e!4698920))))

(assert (=> b!7969192 (= res!3157448 (not (isEmpty!42929 (_1!38657 (findLongestMatchInner!2304 r!24602 testedP!447 lt!2707059 lt!2707062 input!7927 lt!2707065)))))))

(assert (=> b!7969192 (= lt!2707065 (size!43459 input!7927))))

(assert (=> b!7969192 (= lt!2707062 (getSuffix!3826 input!7927 testedP!447))))

(assert (=> b!7969192 (= lt!2707059 (size!43459 testedP!447))))

(assert (= (and start!751616 res!3157449) b!7969175))

(assert (= (and b!7969175 res!3157450) b!7969181))

(assert (= (and b!7969181 res!3157451) b!7969192))

(assert (= (and b!7969192 res!3157448) b!7969178))

(assert (= (and b!7969178 res!3157446) b!7969188))

(assert (= (and b!7969188 c!1463513) b!7969180))

(assert (= (and b!7969188 (not c!1463513)) b!7969191))

(assert (= (and b!7969188 (not res!3157447)) b!7969173))

(assert (= (and b!7969173 (not res!3157452)) b!7969174))

(assert (= (and b!7969174 (not res!3157445)) b!7969186))

(get-info :version)

(assert (= (and start!751616 ((_ is ElementMatch!21523) baseR!116)) b!7969189))

(assert (= (and start!751616 ((_ is Concat!30522) baseR!116)) b!7969176))

(assert (= (and start!751616 ((_ is Star!21523) baseR!116)) b!7969184))

(assert (= (and start!751616 ((_ is Union!21523) baseR!116)) b!7969177))

(assert (= (and start!751616 ((_ is Cons!74628) testedP!447)) b!7969179))

(assert (= (and start!751616 ((_ is Cons!74628) input!7927)) b!7969183))

(assert (= (and start!751616 ((_ is ElementMatch!21523) r!24602)) b!7969185))

(assert (= (and start!751616 ((_ is Concat!30522) r!24602)) b!7969187))

(assert (= (and start!751616 ((_ is Star!21523) r!24602)) b!7969182))

(assert (= (and start!751616 ((_ is Union!21523) r!24602)) b!7969190))

(declare-fun m!8347790 () Bool)

(assert (=> b!7969173 m!8347790))

(declare-fun m!8347792 () Bool)

(assert (=> b!7969173 m!8347792))

(declare-fun m!8347794 () Bool)

(assert (=> b!7969173 m!8347794))

(declare-fun m!8347796 () Bool)

(assert (=> b!7969173 m!8347796))

(declare-fun m!8347798 () Bool)

(assert (=> b!7969173 m!8347798))

(declare-fun m!8347800 () Bool)

(assert (=> b!7969174 m!8347800))

(declare-fun m!8347802 () Bool)

(assert (=> b!7969174 m!8347802))

(declare-fun m!8347804 () Bool)

(assert (=> b!7969174 m!8347804))

(declare-fun m!8347806 () Bool)

(assert (=> b!7969174 m!8347806))

(declare-fun m!8347808 () Bool)

(assert (=> b!7969174 m!8347808))

(declare-fun m!8347810 () Bool)

(assert (=> b!7969174 m!8347810))

(assert (=> b!7969174 m!8347810))

(declare-fun m!8347812 () Bool)

(assert (=> b!7969174 m!8347812))

(declare-fun m!8347814 () Bool)

(assert (=> b!7969174 m!8347814))

(assert (=> b!7969174 m!8347812))

(declare-fun m!8347816 () Bool)

(assert (=> b!7969188 m!8347816))

(declare-fun m!8347818 () Bool)

(assert (=> b!7969192 m!8347818))

(declare-fun m!8347820 () Bool)

(assert (=> b!7969192 m!8347820))

(declare-fun m!8347822 () Bool)

(assert (=> b!7969192 m!8347822))

(declare-fun m!8347824 () Bool)

(assert (=> b!7969192 m!8347824))

(declare-fun m!8347826 () Bool)

(assert (=> b!7969192 m!8347826))

(declare-fun m!8347828 () Bool)

(assert (=> start!751616 m!8347828))

(declare-fun m!8347830 () Bool)

(assert (=> b!7969175 m!8347830))

(declare-fun m!8347832 () Bool)

(assert (=> b!7969186 m!8347832))

(declare-fun m!8347834 () Bool)

(assert (=> b!7969181 m!8347834))

(declare-fun m!8347836 () Bool)

(assert (=> b!7969180 m!8347836))

(declare-fun m!8347838 () Bool)

(assert (=> b!7969180 m!8347838))

(declare-fun m!8347840 () Bool)

(assert (=> b!7969180 m!8347840))

(check-sat (not b!7969180) (not b!7969179) (not b!7969177) (not b!7969174) (not b!7969182) (not b!7969183) (not b!7969187) (not start!751616) (not b!7969188) (not b!7969176) (not b!7969186) (not b!7969181) (not b!7969190) (not b!7969175) tp_is_empty!53589 (not b!7969192) (not b!7969173) (not b!7969184))
(check-sat)
