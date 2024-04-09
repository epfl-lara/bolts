; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14270 () Bool)

(assert start!14270)

(declare-fun b!132426 () Bool)

(declare-fun b_free!2917 () Bool)

(declare-fun b_next!2917 () Bool)

(assert (=> b!132426 (= b_free!2917 (not b_next!2917))))

(declare-fun tp!11195 () Bool)

(declare-fun b_and!8217 () Bool)

(assert (=> b!132426 (= tp!11195 b_and!8217)))

(declare-fun b!132427 () Bool)

(declare-fun b_free!2919 () Bool)

(declare-fun b_next!2919 () Bool)

(assert (=> b!132427 (= b_free!2919 (not b_next!2919))))

(declare-fun tp!11193 () Bool)

(declare-fun b_and!8219 () Bool)

(assert (=> b!132427 (= tp!11193 b_and!8219)))

(declare-fun b!132416 () Bool)

(declare-fun e!86349 () Bool)

(declare-fun e!86350 () Bool)

(declare-fun mapRes!4638 () Bool)

(assert (=> b!132416 (= e!86349 (and e!86350 mapRes!4638))))

(declare-fun condMapEmpty!4638 () Bool)

(declare-datatypes ((V!3481 0))(
  ( (V!3482 (val!1482 Int)) )
))
(declare-datatypes ((array!4776 0))(
  ( (array!4777 (arr!2258 (Array (_ BitVec 32) (_ BitVec 64))) (size!2527 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1094 0))(
  ( (ValueCellFull!1094 (v!3195 V!3481)) (EmptyCell!1094) )
))
(declare-datatypes ((array!4778 0))(
  ( (array!4779 (arr!2259 (Array (_ BitVec 32) ValueCell!1094)) (size!2528 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1096 0))(
  ( (LongMapFixedSize!1097 (defaultEntry!2864 Int) (mask!7164 (_ BitVec 32)) (extraKeys!2629 (_ BitVec 32)) (zeroValue!2719 V!3481) (minValue!2719 V!3481) (_size!597 (_ BitVec 32)) (_keys!4613 array!4776) (_values!2847 array!4778) (_vacant!597 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1096)

(declare-fun mapDefault!4638 () ValueCell!1094)

