; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!434 () Bool)

(assert start!434)

(declare-fun b!2576 () Bool)

(declare-fun b_free!59 () Bool)

(declare-fun b_next!59 () Bool)

(assert (=> b!2576 (= b_free!59 (not b_next!59))))

(declare-fun tp!238 () Bool)

(declare-fun b_and!197 () Bool)

(assert (=> b!2576 (= tp!238 b_and!197)))

(declare-fun b!2574 () Bool)

(declare-fun e!911 () Bool)

(declare-fun e!906 () Bool)

(assert (=> b!2574 (= e!911 e!906)))

(declare-fun b!2575 () Bool)

(declare-fun e!910 () Bool)

(assert (=> b!2575 (= e!910 e!911)))

(declare-fun res!4781 () Bool)

(declare-fun e!909 () Bool)

(assert (=> start!434 (=> (not res!4781) (not e!909))))

(declare-datatypes ((V!239 0))(
  ( (V!240 (val!29 Int)) )
))
(declare-datatypes ((ValueCell!7 0))(
  ( (ValueCellFull!7 (v!1111 V!239)) (EmptyCell!7) )
))
(declare-datatypes ((array!23 0))(
  ( (array!24 (arr!11 (Array (_ BitVec 32) ValueCell!7)) (size!73 (_ BitVec 32))) )
))
(declare-datatypes ((array!25 0))(
  ( (array!26 (arr!12 (Array (_ BitVec 32) (_ BitVec 64))) (size!74 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!14 0))(
  ( (LongMapFixedSize!15 (defaultEntry!1591 Int) (mask!4167 (_ BitVec 32)) (extraKeys!1508 (_ BitVec 32)) (zeroValue!1531 V!239) (minValue!1531 V!239) (_size!38 (_ BitVec 32)) (_keys!2993 array!25) (_values!1592 array!23) (_vacant!38 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14 0))(
  ( (Cell!15 (v!1112 LongMapFixedSize!14)) )
))
(declare-datatypes ((LongMap!14 0))(
  ( (LongMap!15 (underlying!18 Cell!14)) )
))
(declare-fun thiss!814 () LongMap!14)

(declare-fun valid!11 (LongMap!14) Bool)

(assert (=> start!434 (= res!4781 (valid!11 thiss!814))))

(assert (=> start!434 e!909))

(assert (=> start!434 e!910))

(declare-fun e!907 () Bool)

(declare-fun tp_is_empty!47 () Bool)

(declare-fun array_inv!3 (array!25) Bool)

(declare-fun array_inv!4 (array!23) Bool)

(assert (=> b!2576 (= e!906 (and tp!238 tp_is_empty!47 (array_inv!3 (_keys!2993 (v!1112 (underlying!18 thiss!814)))) (array_inv!4 (_values!1592 (v!1112 (underlying!18 thiss!814)))) e!907))))

(declare-fun b!2577 () Bool)

(declare-fun e!908 () Bool)

(assert (=> b!2577 (= e!908 tp_is_empty!47)))

(declare-fun mapIsEmpty!8 () Bool)

(declare-fun mapRes!8 () Bool)

(assert (=> mapIsEmpty!8 mapRes!8))

(declare-fun mapNonEmpty!8 () Bool)

(declare-fun tp!239 () Bool)

(declare-fun e!905 () Bool)

(assert (=> mapNonEmpty!8 (= mapRes!8 (and tp!239 e!905))))

(declare-fun mapValue!8 () ValueCell!7)

(declare-fun mapRest!8 () (Array (_ BitVec 32) ValueCell!7))

(declare-fun mapKey!8 () (_ BitVec 32))

(assert (=> mapNonEmpty!8 (= (arr!11 (_values!1592 (v!1112 (underlying!18 thiss!814)))) (store mapRest!8 mapKey!8 mapValue!8))))

(declare-fun b!2578 () Bool)

(declare-fun valid!12 (LongMapFixedSize!14) Bool)

(assert (=> b!2578 (= e!909 (not (valid!12 (v!1112 (underlying!18 thiss!814)))))))

(declare-fun b!2579 () Bool)

(assert (=> b!2579 (= e!905 tp_is_empty!47)))

(declare-fun b!2580 () Bool)

(assert (=> b!2580 (= e!907 (and e!908 mapRes!8))))

(declare-fun condMapEmpty!8 () Bool)

(declare-fun mapDefault!8 () ValueCell!7)

