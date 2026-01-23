; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749832 () Bool)

(assert start!749832)

(declare-fun b!7945169 () Bool)

(declare-fun e!4687552 () Bool)

(declare-fun tp!2363300 () Bool)

(assert (=> b!7945169 (= e!4687552 tp!2363300)))

(declare-fun b!7945170 () Bool)

(declare-fun e!4687553 () Bool)

(declare-fun tp_is_empty!53417 () Bool)

(assert (=> b!7945170 (= e!4687553 tp_is_empty!53417)))

(declare-fun b!7945171 () Bool)

(declare-fun tp!2363299 () Bool)

(declare-fun tp!2363295 () Bool)

(assert (=> b!7945171 (= e!4687552 (and tp!2363299 tp!2363295))))

(declare-fun b!7945172 () Bool)

(declare-fun e!4687554 () Bool)

(declare-fun tp!2363293 () Bool)

(assert (=> b!7945172 (= e!4687554 (and tp_is_empty!53417 tp!2363293))))

(declare-fun b!7945173 () Bool)

(declare-fun tp!2363298 () Bool)

(declare-fun tp!2363292 () Bool)

(assert (=> b!7945173 (= e!4687553 (and tp!2363298 tp!2363292))))

(declare-fun b!7945174 () Bool)

(declare-fun res!3151387 () Bool)

(declare-fun e!4687555 () Bool)

(assert (=> b!7945174 (=> (not res!3151387) (not e!4687555))))

(declare-datatypes ((C!43212 0))(
  ( (C!43213 (val!32154 Int)) )
))
(declare-datatypes ((Regex!21437 0))(
  ( (ElementMatch!21437 (c!1459524 C!43212)) (Concat!30436 (regOne!43386 Regex!21437) (regTwo!43386 Regex!21437)) (EmptyExpr!21437) (Star!21437 (reg!21766 Regex!21437)) (EmptyLang!21437) (Union!21437 (regOne!43387 Regex!21437) (regTwo!43387 Regex!21437)) )
))
(declare-fun r!24602 () Regex!21437)

(declare-fun nullable!9548 (Regex!21437) Bool)

(assert (=> b!7945174 (= res!3151387 (nullable!9548 r!24602))))

(declare-fun b!7945175 () Bool)

(declare-fun e!4687556 () Bool)

(assert (=> b!7945175 (= e!4687556 e!4687555)))

(declare-fun res!3151388 () Bool)

(assert (=> b!7945175 (=> (not res!3151388) (not e!4687555))))

(declare-fun lt!2697868 () Regex!21437)

(assert (=> b!7945175 (= res!3151388 (= lt!2697868 r!24602))))

(declare-fun baseR!116 () Regex!21437)

(declare-datatypes ((List!74666 0))(
  ( (Nil!74542) (Cons!74542 (h!80990 C!43212) (t!390409 List!74666)) )
))
(declare-fun testedP!447 () List!74666)

(declare-fun derivative!623 (Regex!21437 List!74666) Regex!21437)

(assert (=> b!7945175 (= lt!2697868 (derivative!623 baseR!116 testedP!447))))

(declare-fun b!7945176 () Bool)

(declare-fun e!4687557 () Bool)

(declare-fun tp!2363301 () Bool)

(assert (=> b!7945176 (= e!4687557 (and tp_is_empty!53417 tp!2363301))))

(declare-fun b!7945177 () Bool)

(assert (=> b!7945177 (= e!4687555 (not true))))

(declare-fun matchR!10718 (Regex!21437 List!74666) Bool)

(assert (=> b!7945177 (= (matchR!10718 baseR!116 testedP!447) (matchR!10718 lt!2697868 Nil!74542))))

(declare-datatypes ((Unit!169704 0))(
  ( (Unit!169705) )
))
(declare-fun lt!2697869 () Unit!169704)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!286 (Regex!21437 List!74666) Unit!169704)

(assert (=> b!7945177 (= lt!2697869 (lemmaMatchRIsSameAsWholeDerivativeAndNil!286 baseR!116 testedP!447))))

(declare-fun b!7945178 () Bool)

(declare-fun res!3151386 () Bool)

(assert (=> b!7945178 (=> (not res!3151386) (not e!4687555))))

(declare-fun input!7927 () List!74666)

(declare-fun isEmpty!42841 (List!74666) Bool)

(declare-datatypes ((tuple2!70536 0))(
  ( (tuple2!70537 (_1!38571 List!74666) (_2!38571 List!74666)) )
))
(declare-fun findLongestMatchInner!2218 (Regex!21437 List!74666 Int List!74666 List!74666 Int) tuple2!70536)

(declare-fun size!43373 (List!74666) Int)

(declare-fun getSuffix!3740 (List!74666 List!74666) List!74666)

(assert (=> b!7945178 (= res!3151386 (not (isEmpty!42841 (_1!38571 (findLongestMatchInner!2218 r!24602 testedP!447 (size!43373 testedP!447) (getSuffix!3740 input!7927 testedP!447) input!7927 (size!43373 input!7927))))))))

(declare-fun b!7945179 () Bool)

(assert (=> b!7945179 (= e!4687552 tp_is_empty!53417)))

(declare-fun b!7945180 () Bool)

(declare-fun res!3151384 () Bool)

(assert (=> b!7945180 (=> (not res!3151384) (not e!4687556))))

(declare-fun isPrefix!6537 (List!74666 List!74666) Bool)

(assert (=> b!7945180 (= res!3151384 (isPrefix!6537 testedP!447 input!7927))))

(declare-fun b!7945181 () Bool)

(declare-fun tp!2363297 () Bool)

(declare-fun tp!2363302 () Bool)

(assert (=> b!7945181 (= e!4687552 (and tp!2363297 tp!2363302))))

(declare-fun b!7945182 () Bool)

(declare-fun tp!2363296 () Bool)

(declare-fun tp!2363294 () Bool)

(assert (=> b!7945182 (= e!4687553 (and tp!2363296 tp!2363294))))

(declare-fun res!3151383 () Bool)

(assert (=> start!749832 (=> (not res!3151383) (not e!4687556))))

(declare-fun validRegex!11741 (Regex!21437) Bool)

(assert (=> start!749832 (= res!3151383 (validRegex!11741 baseR!116))))

(assert (=> start!749832 e!4687556))

(assert (=> start!749832 e!4687552))

(assert (=> start!749832 e!4687554))

(assert (=> start!749832 e!4687557))

(assert (=> start!749832 e!4687553))

(declare-fun b!7945183 () Bool)

(declare-fun res!3151385 () Bool)

(assert (=> b!7945183 (=> (not res!3151385) (not e!4687555))))

(assert (=> b!7945183 (= res!3151385 (= testedP!447 input!7927))))

(declare-fun b!7945184 () Bool)

(declare-fun tp!2363291 () Bool)

(assert (=> b!7945184 (= e!4687553 tp!2363291)))

(assert (= (and start!749832 res!3151383) b!7945180))

(assert (= (and b!7945180 res!3151384) b!7945175))

(assert (= (and b!7945175 res!3151388) b!7945178))

(assert (= (and b!7945178 res!3151386) b!7945183))

(assert (= (and b!7945183 res!3151385) b!7945174))

(assert (= (and b!7945174 res!3151387) b!7945177))

(get-info :version)

(assert (= (and start!749832 ((_ is ElementMatch!21437) baseR!116)) b!7945179))

(assert (= (and start!749832 ((_ is Concat!30436) baseR!116)) b!7945171))

(assert (= (and start!749832 ((_ is Star!21437) baseR!116)) b!7945169))

(assert (= (and start!749832 ((_ is Union!21437) baseR!116)) b!7945181))

(assert (= (and start!749832 ((_ is Cons!74542) testedP!447)) b!7945172))

(assert (= (and start!749832 ((_ is Cons!74542) input!7927)) b!7945176))

(assert (= (and start!749832 ((_ is ElementMatch!21437) r!24602)) b!7945170))

(assert (= (and start!749832 ((_ is Concat!30436) r!24602)) b!7945173))

(assert (= (and start!749832 ((_ is Star!21437) r!24602)) b!7945184))

(assert (= (and start!749832 ((_ is Union!21437) r!24602)) b!7945182))

(declare-fun m!8331926 () Bool)

(assert (=> b!7945180 m!8331926))

(declare-fun m!8331928 () Bool)

(assert (=> b!7945175 m!8331928))

(declare-fun m!8331930 () Bool)

(assert (=> b!7945174 m!8331930))

(declare-fun m!8331932 () Bool)

(assert (=> b!7945177 m!8331932))

(declare-fun m!8331934 () Bool)

(assert (=> b!7945177 m!8331934))

(declare-fun m!8331936 () Bool)

(assert (=> b!7945177 m!8331936))

(declare-fun m!8331938 () Bool)

(assert (=> b!7945178 m!8331938))

(declare-fun m!8331940 () Bool)

(assert (=> b!7945178 m!8331940))

(declare-fun m!8331942 () Bool)

(assert (=> b!7945178 m!8331942))

(assert (=> b!7945178 m!8331938))

(declare-fun m!8331944 () Bool)

(assert (=> b!7945178 m!8331944))

(assert (=> b!7945178 m!8331940))

(declare-fun m!8331946 () Bool)

(assert (=> b!7945178 m!8331946))

(assert (=> b!7945178 m!8331942))

(declare-fun m!8331948 () Bool)

(assert (=> start!749832 m!8331948))

(check-sat (not b!7945178) (not b!7945176) (not b!7945182) (not b!7945177) (not b!7945181) tp_is_empty!53417 (not b!7945184) (not b!7945180) (not start!749832) (not b!7945172) (not b!7945171) (not b!7945173) (not b!7945175) (not b!7945174) (not b!7945169))
(check-sat)
