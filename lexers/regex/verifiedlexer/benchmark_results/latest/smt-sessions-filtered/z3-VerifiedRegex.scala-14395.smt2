; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750304 () Bool)

(assert start!750304)

(declare-fun b!7951048 () Bool)

(declare-fun e!4690290 () Bool)

(declare-fun tp_is_empty!53485 () Bool)

(assert (=> b!7951048 (= e!4690290 tp_is_empty!53485)))

(declare-fun b!7951049 () Bool)

(declare-fun e!4690293 () Bool)

(declare-fun tp!2366424 () Bool)

(assert (=> b!7951049 (= e!4690293 (and tp_is_empty!53485 tp!2366424))))

(declare-fun b!7951050 () Bool)

(declare-datatypes ((Unit!169848 0))(
  ( (Unit!169849) )
))
(declare-fun e!4690297 () Unit!169848)

(declare-fun Unit!169850 () Unit!169848)

(assert (=> b!7951050 (= e!4690297 Unit!169850)))

(declare-fun b!7951051 () Bool)

(declare-fun res!3153001 () Bool)

(declare-fun e!4690291 () Bool)

(assert (=> b!7951051 (=> (not res!3153001) (not e!4690291))))

(declare-datatypes ((C!43280 0))(
  ( (C!43281 (val!32188 Int)) )
))
(declare-datatypes ((List!74700 0))(
  ( (Nil!74576) (Cons!74576 (h!81024 C!43280) (t!390443 List!74700)) )
))
(declare-fun testedP!447 () List!74700)

(declare-fun input!7927 () List!74700)

(declare-fun isPrefix!6571 (List!74700 List!74700) Bool)

(assert (=> b!7951051 (= res!3153001 (isPrefix!6571 testedP!447 input!7927))))

(declare-fun b!7951052 () Bool)

(declare-fun e!4690295 () Bool)

(declare-fun tp!2366420 () Bool)

(assert (=> b!7951052 (= e!4690295 (and tp_is_empty!53485 tp!2366420))))

(declare-fun b!7951053 () Bool)

(declare-fun e!4690292 () Bool)

(assert (=> b!7951053 (= e!4690292 true)))

(declare-datatypes ((Regex!21471 0))(
  ( (ElementMatch!21471 (c!1460384 C!43280)) (Concat!30470 (regOne!43454 Regex!21471) (regTwo!43454 Regex!21471)) (EmptyExpr!21471) (Star!21471 (reg!21800 Regex!21471)) (EmptyLang!21471) (Union!21471 (regOne!43455 Regex!21471) (regTwo!43455 Regex!21471)) )
))
(declare-fun lt!2700179 () Regex!21471)

(declare-fun r!24602 () Regex!21471)

(declare-fun lt!2700176 () C!43280)

(declare-fun derivativeStep!6499 (Regex!21471 C!43280) Regex!21471)

(assert (=> b!7951053 (= lt!2700179 (derivativeStep!6499 r!24602 lt!2700176))))

(declare-fun b!7951054 () Bool)

(declare-fun res!3153000 () Bool)

(declare-fun e!4690294 () Bool)

(assert (=> b!7951054 (=> (not res!3153000) (not e!4690294))))

(assert (=> b!7951054 (= res!3153000 (not (= testedP!447 input!7927)))))

(declare-fun b!7951055 () Bool)

(declare-fun e!4690289 () Bool)

(declare-fun tp!2366427 () Bool)

(declare-fun tp!2366422 () Bool)

(assert (=> b!7951055 (= e!4690289 (and tp!2366427 tp!2366422))))

(declare-fun b!7951056 () Bool)

(declare-fun e!4690296 () Bool)

(assert (=> b!7951056 (= e!4690294 (not e!4690296))))

(declare-fun res!3153003 () Bool)

(assert (=> b!7951056 (=> res!3153003 e!4690296)))

(declare-fun lt!2700175 () Int)

(declare-fun lt!2700181 () Int)

(assert (=> b!7951056 (= res!3153003 (>= lt!2700175 lt!2700181))))

(declare-fun lt!2700173 () Unit!169848)

(assert (=> b!7951056 (= lt!2700173 e!4690297)))

(declare-fun c!1460383 () Bool)

(assert (=> b!7951056 (= c!1460383 (= lt!2700175 lt!2700181))))

(assert (=> b!7951056 (<= lt!2700175 lt!2700181)))

(declare-fun lt!2700174 () Unit!169848)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1088 (List!74700 List!74700) Unit!169848)

(assert (=> b!7951056 (= lt!2700174 (lemmaIsPrefixThenSmallerEqSize!1088 testedP!447 input!7927))))

(declare-fun b!7951057 () Bool)

(declare-fun res!3153004 () Bool)

(assert (=> b!7951057 (=> (not res!3153004) (not e!4690291))))

(declare-fun baseR!116 () Regex!21471)

(declare-fun derivative!657 (Regex!21471 List!74700) Regex!21471)

(assert (=> b!7951057 (= res!3153004 (= (derivative!657 baseR!116 testedP!447) r!24602))))

(declare-fun b!7951058 () Bool)

(declare-fun tp!2366425 () Bool)

(declare-fun tp!2366429 () Bool)

(assert (=> b!7951058 (= e!4690290 (and tp!2366425 tp!2366429))))

(declare-fun res!3153006 () Bool)

(assert (=> start!750304 (=> (not res!3153006) (not e!4690291))))

(declare-fun validRegex!11775 (Regex!21471) Bool)

(assert (=> start!750304 (= res!3153006 (validRegex!11775 baseR!116))))

(assert (=> start!750304 e!4690291))

(assert (=> start!750304 e!4690289))

(assert (=> start!750304 e!4690293))

(assert (=> start!750304 e!4690295))

(assert (=> start!750304 e!4690290))

(declare-fun b!7951059 () Bool)

(assert (=> b!7951059 (= e!4690289 tp_is_empty!53485)))

(declare-fun b!7951060 () Bool)

(assert (=> b!7951060 (= e!4690291 e!4690294)))

(declare-fun res!3153002 () Bool)

(assert (=> b!7951060 (=> (not res!3153002) (not e!4690294))))

(declare-fun lt!2700180 () List!74700)

(declare-fun isEmpty!42875 (List!74700) Bool)

(declare-datatypes ((tuple2!70604 0))(
  ( (tuple2!70605 (_1!38605 List!74700) (_2!38605 List!74700)) )
))
(declare-fun findLongestMatchInner!2252 (Regex!21471 List!74700 Int List!74700 List!74700 Int) tuple2!70604)

(assert (=> b!7951060 (= res!3153002 (not (isEmpty!42875 (_1!38605 (findLongestMatchInner!2252 r!24602 testedP!447 lt!2700175 lt!2700180 input!7927 lt!2700181)))))))

(declare-fun size!43407 (List!74700) Int)

(assert (=> b!7951060 (= lt!2700181 (size!43407 input!7927))))

(declare-fun getSuffix!3774 (List!74700 List!74700) List!74700)

(assert (=> b!7951060 (= lt!2700180 (getSuffix!3774 input!7927 testedP!447))))

(assert (=> b!7951060 (= lt!2700175 (size!43407 testedP!447))))

(declare-fun b!7951061 () Bool)

(declare-fun Unit!169851 () Unit!169848)

(assert (=> b!7951061 (= e!4690297 Unit!169851)))

(declare-fun lt!2700183 () Unit!169848)

(declare-fun lemmaIsPrefixRefl!4039 (List!74700 List!74700) Unit!169848)

(assert (=> b!7951061 (= lt!2700183 (lemmaIsPrefixRefl!4039 input!7927 input!7927))))

(assert (=> b!7951061 (isPrefix!6571 input!7927 input!7927)))

(declare-fun lt!2700182 () Unit!169848)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1619 (List!74700 List!74700 List!74700) Unit!169848)

(assert (=> b!7951061 (= lt!2700182 (lemmaIsPrefixSameLengthThenSameList!1619 input!7927 testedP!447 input!7927))))

(assert (=> b!7951061 false))

(declare-fun b!7951062 () Bool)

(declare-fun tp!2366428 () Bool)

(assert (=> b!7951062 (= e!4690290 tp!2366428)))

(declare-fun b!7951063 () Bool)

(declare-fun tp!2366426 () Bool)

(declare-fun tp!2366430 () Bool)

(assert (=> b!7951063 (= e!4690290 (and tp!2366426 tp!2366430))))

(declare-fun b!7951064 () Bool)

(declare-fun tp!2366421 () Bool)

(assert (=> b!7951064 (= e!4690289 tp!2366421)))

(declare-fun b!7951065 () Bool)

(assert (=> b!7951065 (= e!4690296 e!4690292)))

(declare-fun res!3153005 () Bool)

(assert (=> b!7951065 (=> res!3153005 e!4690292)))

(declare-fun nullable!9572 (Regex!21471) Bool)

(assert (=> b!7951065 (= res!3153005 (not (nullable!9572 r!24602)))))

(declare-fun lt!2700177 () List!74700)

(assert (=> b!7951065 (isPrefix!6571 lt!2700177 input!7927)))

(declare-fun lt!2700178 () Unit!169848)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1298 (List!74700 List!74700) Unit!169848)

(assert (=> b!7951065 (= lt!2700178 (lemmaAddHeadSuffixToPrefixStillPrefix!1298 testedP!447 input!7927))))

(declare-fun ++!18341 (List!74700 List!74700) List!74700)

(assert (=> b!7951065 (= lt!2700177 (++!18341 testedP!447 (Cons!74576 lt!2700176 Nil!74576)))))

(declare-fun head!16223 (List!74700) C!43280)

(assert (=> b!7951065 (= lt!2700176 (head!16223 lt!2700180))))

(declare-fun b!7951066 () Bool)

(declare-fun tp!2366419 () Bool)

(declare-fun tp!2366423 () Bool)

(assert (=> b!7951066 (= e!4690289 (and tp!2366419 tp!2366423))))

(assert (= (and start!750304 res!3153006) b!7951051))

(assert (= (and b!7951051 res!3153001) b!7951057))

(assert (= (and b!7951057 res!3153004) b!7951060))

(assert (= (and b!7951060 res!3153002) b!7951054))

(assert (= (and b!7951054 res!3153000) b!7951056))

(assert (= (and b!7951056 c!1460383) b!7951061))

(assert (= (and b!7951056 (not c!1460383)) b!7951050))

(assert (= (and b!7951056 (not res!3153003)) b!7951065))

(assert (= (and b!7951065 (not res!3153005)) b!7951053))

(get-info :version)

(assert (= (and start!750304 ((_ is ElementMatch!21471) baseR!116)) b!7951059))

(assert (= (and start!750304 ((_ is Concat!30470) baseR!116)) b!7951055))

(assert (= (and start!750304 ((_ is Star!21471) baseR!116)) b!7951064))

(assert (= (and start!750304 ((_ is Union!21471) baseR!116)) b!7951066))

(assert (= (and start!750304 ((_ is Cons!74576) testedP!447)) b!7951049))

(assert (= (and start!750304 ((_ is Cons!74576) input!7927)) b!7951052))

(assert (= (and start!750304 ((_ is ElementMatch!21471) r!24602)) b!7951048))

(assert (= (and start!750304 ((_ is Concat!30470) r!24602)) b!7951063))

(assert (= (and start!750304 ((_ is Star!21471) r!24602)) b!7951062))

(assert (= (and start!750304 ((_ is Union!21471) r!24602)) b!7951058))

(declare-fun m!8335222 () Bool)

(assert (=> b!7951056 m!8335222))

(declare-fun m!8335224 () Bool)

(assert (=> b!7951057 m!8335224))

(declare-fun m!8335226 () Bool)

(assert (=> start!750304 m!8335226))

(declare-fun m!8335228 () Bool)

(assert (=> b!7951061 m!8335228))

(declare-fun m!8335230 () Bool)

(assert (=> b!7951061 m!8335230))

(declare-fun m!8335232 () Bool)

(assert (=> b!7951061 m!8335232))

(declare-fun m!8335234 () Bool)

(assert (=> b!7951060 m!8335234))

(declare-fun m!8335236 () Bool)

(assert (=> b!7951060 m!8335236))

(declare-fun m!8335238 () Bool)

(assert (=> b!7951060 m!8335238))

(declare-fun m!8335240 () Bool)

(assert (=> b!7951060 m!8335240))

(declare-fun m!8335242 () Bool)

(assert (=> b!7951060 m!8335242))

(declare-fun m!8335244 () Bool)

(assert (=> b!7951053 m!8335244))

(declare-fun m!8335246 () Bool)

(assert (=> b!7951051 m!8335246))

(declare-fun m!8335248 () Bool)

(assert (=> b!7951065 m!8335248))

(declare-fun m!8335250 () Bool)

(assert (=> b!7951065 m!8335250))

(declare-fun m!8335252 () Bool)

(assert (=> b!7951065 m!8335252))

(declare-fun m!8335254 () Bool)

(assert (=> b!7951065 m!8335254))

(declare-fun m!8335256 () Bool)

(assert (=> b!7951065 m!8335256))

(check-sat (not b!7951063) (not b!7951060) (not b!7951051) (not b!7951055) (not b!7951057) (not b!7951056) (not b!7951049) tp_is_empty!53485 (not b!7951061) (not b!7951064) (not b!7951066) (not b!7951058) (not start!750304) (not b!7951053) (not b!7951052) (not b!7951062) (not b!7951065))
(check-sat)
