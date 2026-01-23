; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725718 () Bool)

(assert start!725718)

(declare-fun res!3009185 () Bool)

(declare-fun e!4472129 () Bool)

(assert (=> start!725718 (=> res!3009185 e!4472129)))

(declare-datatypes ((C!39604 0))(
  ( (C!39605 (val!30200 Int)) )
))
(declare-datatypes ((List!72379 0))(
  ( (Nil!72255) (Cons!72255 (h!78703 C!39604) (t!386948 List!72379)) )
))
(declare-fun input!5498 () List!72379)

(declare-fun ++!17268 (List!72379 List!72379) List!72379)

(assert (=> start!725718 (= res!3009185 (not (= (++!17268 Nil!72255 input!5498) input!5498)))))

(declare-fun lt!2631675 () Int)

(declare-fun sizeTr!441 (List!72379 Int) Int)

(assert (=> start!725718 (= (sizeTr!441 input!5498 0) lt!2631675)))

(declare-fun size!42210 (List!72379) Int)

(assert (=> start!725718 (= lt!2631675 (size!42210 input!5498))))

(declare-datatypes ((Unit!166161 0))(
  ( (Unit!166162) )
))
(declare-fun lt!2631674 () Unit!166161)

(declare-fun lemmaSizeTrEqualsSize!440 (List!72379 Int) Unit!166161)

(assert (=> start!725718 (= lt!2631674 (lemmaSizeTrEqualsSize!440 input!5498 0))))

(assert (=> start!725718 (not e!4472129)))

(declare-fun e!4472130 () Bool)

(assert (=> start!725718 e!4472130))

(declare-fun b!7501231 () Bool)

(declare-fun res!3009186 () Bool)

(assert (=> b!7501231 (=> res!3009186 e!4472129)))

(assert (=> b!7501231 (= res!3009186 (not (= 0 (size!42210 Nil!72255))))))

(declare-fun b!7501232 () Bool)

(assert (=> b!7501232 (= e!4472129 (= (sizeTr!441 input!5498 0) lt!2631675))))

(declare-fun b!7501233 () Bool)

(declare-fun tp_is_empty!49619 () Bool)

(declare-fun tp!2177451 () Bool)

(assert (=> b!7501233 (= e!4472130 (and tp_is_empty!49619 tp!2177451))))

(assert (= (and start!725718 (not res!3009185)) b!7501231))

(assert (= (and b!7501231 (not res!3009186)) b!7501232))

(get-info :version)

(assert (= (and start!725718 ((_ is Cons!72255) input!5498)) b!7501233))

(declare-fun m!8082970 () Bool)

(assert (=> start!725718 m!8082970))

(declare-fun m!8082972 () Bool)

(assert (=> start!725718 m!8082972))

(declare-fun m!8082974 () Bool)

(assert (=> start!725718 m!8082974))

(declare-fun m!8082976 () Bool)

(assert (=> start!725718 m!8082976))

(declare-fun m!8082978 () Bool)

(assert (=> b!7501231 m!8082978))

(assert (=> b!7501232 m!8082972))

(check-sat (not b!7501231) (not b!7501232) (not b!7501233) tp_is_empty!49619 (not start!725718))
(check-sat)
