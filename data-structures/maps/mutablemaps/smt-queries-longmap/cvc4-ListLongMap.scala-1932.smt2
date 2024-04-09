; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34250 () Bool)

(assert start!34250)

(declare-fun b_free!7265 () Bool)

(declare-fun b_next!7265 () Bool)

(assert (=> start!34250 (= b_free!7265 (not b_next!7265))))

(declare-fun tp!25329 () Bool)

(declare-fun b_and!14483 () Bool)

(assert (=> start!34250 (= tp!25329 b_and!14483)))

(declare-fun mapNonEmpty!12252 () Bool)

(declare-fun mapRes!12252 () Bool)

(declare-fun tp!25328 () Bool)

(declare-fun e!209452 () Bool)

(assert (=> mapNonEmpty!12252 (= mapRes!12252 (and tp!25328 e!209452))))

(declare-datatypes ((V!10599 0))(
  ( (V!10600 (val!3653 Int)) )
))
(declare-datatypes ((ValueCell!3265 0))(
  ( (ValueCellFull!3265 (v!5821 V!10599)) (EmptyCell!3265) )
))
(declare-fun mapValue!12252 () ValueCell!3265)

(declare-fun mapRest!12252 () (Array (_ BitVec 32) ValueCell!3265))

(declare-datatypes ((array!17999 0))(
  ( (array!18000 (arr!8517 (Array (_ BitVec 32) ValueCell!3265)) (size!8869 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17999)

(declare-fun mapKey!12252 () (_ BitVec 32))

(assert (=> mapNonEmpty!12252 (= (arr!8517 _values!1525) (store mapRest!12252 mapKey!12252 mapValue!12252))))

(declare-fun b!341531 () Bool)

(declare-fun e!209455 () Bool)

(declare-fun e!209451 () Bool)

(assert (=> b!341531 (= e!209455 e!209451)))

(declare-fun res!188891 () Bool)

(assert (=> b!341531 (=> (not res!188891) (not e!209451))))

(declare-datatypes ((SeekEntryResult!3287 0))(
  ( (MissingZero!3287 (index!15327 (_ BitVec 32))) (Found!3287 (index!15328 (_ BitVec 32))) (Intermediate!3287 (undefined!4099 Bool) (index!15329 (_ BitVec 32)) (x!34020 (_ BitVec 32))) (Undefined!3287) (MissingVacant!3287 (index!15330 (_ BitVec 32))) )
))
(declare-fun lt!161798 () SeekEntryResult!3287)

(assert (=> b!341531 (= res!188891 (and (not (is-Found!3287 lt!161798)) (not (is-MissingZero!3287 lt!161798)) (is-MissingVacant!3287 lt!161798)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18001 0))(
  ( (array!18002 (arr!8518 (Array (_ BitVec 32) (_ BitVec 64))) (size!8870 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18001)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18001 (_ BitVec 32)) SeekEntryResult!3287)

(assert (=> b!341531 (= lt!161798 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!341532 () Bool)

(declare-fun tp_is_empty!7217 () Bool)

(assert (=> b!341532 (= e!209452 tp_is_empty!7217)))

(declare-fun b!341533 () Bool)

(declare-fun e!209454 () Bool)

(assert (=> b!341533 (= e!209454 tp_is_empty!7217)))

(declare-fun b!341534 () Bool)

(declare-fun e!209457 () Bool)

(assert (=> b!341534 (= e!209457 (and e!209454 mapRes!12252))))

(declare-fun condMapEmpty!12252 () Bool)

(declare-fun mapDefault!12252 () ValueCell!3265)

