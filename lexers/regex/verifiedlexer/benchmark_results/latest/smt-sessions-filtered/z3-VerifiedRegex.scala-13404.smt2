; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725766 () Bool)

(assert start!725766)

(declare-fun res!3009294 () Bool)

(declare-fun e!4472343 () Bool)

(assert (=> start!725766 (=> (not res!3009294) (not e!4472343))))

(declare-datatypes ((C!39616 0))(
  ( (C!39617 (val!30206 Int)) )
))
(declare-datatypes ((List!72387 0))(
  ( (Nil!72263) (Cons!72263 (h!78711 C!39616) (t!386956 List!72387)) )
))
(declare-fun lt!2631927 () List!72387)

(declare-fun totalInput!779 () List!72387)

(assert (=> start!725766 (= res!3009294 (= lt!2631927 totalInput!779))))

(declare-fun testedP!204 () List!72387)

(declare-fun testedSuffix!164 () List!72387)

(declare-fun ++!17274 (List!72387 List!72387) List!72387)

(assert (=> start!725766 (= lt!2631927 (++!17274 testedP!204 testedSuffix!164))))

(assert (=> start!725766 e!4472343))

(declare-fun e!4472346 () Bool)

(assert (=> start!725766 e!4472346))

(assert (=> start!725766 true))

(declare-fun e!4472344 () Bool)

(assert (=> start!725766 e!4472344))

(declare-fun e!4472345 () Bool)

(assert (=> start!725766 e!4472345))

(declare-fun b!7501554 () Bool)

(assert (=> b!7501554 (= e!4472343 (not true))))

(declare-fun lt!2631928 () Bool)

(declare-fun isPrefix!5941 (List!72387 List!72387) Bool)

(assert (=> b!7501554 (= lt!2631928 (isPrefix!5941 testedP!204 totalInput!779))))

(assert (=> b!7501554 (isPrefix!5941 testedP!204 lt!2631927)))

(declare-datatypes ((Unit!166176 0))(
  ( (Unit!166177) )
))
(declare-fun lt!2631926 () Unit!166176)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3654 (List!72387 List!72387) Unit!166176)

(assert (=> b!7501554 (= lt!2631926 (lemmaConcatTwoListThenFirstIsPrefix!3654 testedP!204 testedSuffix!164))))

(declare-fun b!7501555 () Bool)

(declare-fun res!3009296 () Bool)

(assert (=> b!7501555 (=> (not res!3009296) (not e!4472343))))

(declare-fun totalInputSize!226 () Int)

(declare-fun size!42216 (List!72387) Int)

(assert (=> b!7501555 (= res!3009296 (= totalInputSize!226 (size!42216 totalInput!779)))))

(declare-fun b!7501556 () Bool)

(declare-fun res!3009295 () Bool)

(assert (=> b!7501556 (=> (not res!3009295) (not e!4472343))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7501556 (= res!3009295 (= testedPSize!164 (size!42216 testedP!204)))))

(declare-fun b!7501557 () Bool)

(declare-fun tp_is_empty!49631 () Bool)

(declare-fun tp!2177545 () Bool)

(assert (=> b!7501557 (= e!4472344 (and tp_is_empty!49631 tp!2177545))))

(declare-fun b!7501558 () Bool)

(declare-fun tp!2177544 () Bool)

(assert (=> b!7501558 (= e!4472346 (and tp_is_empty!49631 tp!2177544))))

(declare-fun b!7501559 () Bool)

(declare-fun tp!2177543 () Bool)

(assert (=> b!7501559 (= e!4472345 (and tp_is_empty!49631 tp!2177543))))

(assert (= (and start!725766 res!3009294) b!7501556))

(assert (= (and b!7501556 res!3009295) b!7501555))

(assert (= (and b!7501555 res!3009296) b!7501554))

(get-info :version)

(assert (= (and start!725766 ((_ is Cons!72263) testedSuffix!164)) b!7501558))

(assert (= (and start!725766 ((_ is Cons!72263) totalInput!779)) b!7501557))

(assert (= (and start!725766 ((_ is Cons!72263) testedP!204)) b!7501559))

(declare-fun m!8083214 () Bool)

(assert (=> start!725766 m!8083214))

(declare-fun m!8083216 () Bool)

(assert (=> b!7501554 m!8083216))

(declare-fun m!8083218 () Bool)

(assert (=> b!7501554 m!8083218))

(declare-fun m!8083220 () Bool)

(assert (=> b!7501554 m!8083220))

(declare-fun m!8083222 () Bool)

(assert (=> b!7501555 m!8083222))

(declare-fun m!8083224 () Bool)

(assert (=> b!7501556 m!8083224))

(check-sat (not b!7501558) (not b!7501559) tp_is_empty!49631 (not b!7501554) (not b!7501556) (not b!7501557) (not start!725766) (not b!7501555))
(check-sat)
