; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2944 () Bool)

(assert start!2944)

(declare-fun b!16817 () Bool)

(declare-fun b_free!583 () Bool)

(declare-fun b_next!583 () Bool)

(assert (=> b!16817 (= b_free!583 (not b_next!583))))

(declare-fun tp!2935 () Bool)

(declare-fun b_and!1227 () Bool)

(assert (=> b!16817 (= tp!2935 b_and!1227)))

(declare-fun b!16814 () Bool)

(declare-fun e!10470 () Bool)

(declare-fun e!10462 () Bool)

(assert (=> b!16814 (= e!10470 e!10462)))

(declare-fun res!12394 () Bool)

(assert (=> b!16814 (=> (not res!12394) (not e!10462))))

(declare-datatypes ((V!955 0))(
  ( (V!956 (val!450 Int)) )
))
(declare-datatypes ((ValueCell!224 0))(
  ( (ValueCellFull!224 (v!1400 V!955)) (EmptyCell!224) )
))
(declare-datatypes ((array!889 0))(
  ( (array!890 (arr!427 (Array (_ BitVec 32) ValueCell!224)) (size!516 (_ BitVec 32))) )
))
(declare-datatypes ((array!891 0))(
  ( (array!892 (arr!428 (Array (_ BitVec 32) (_ BitVec 64))) (size!517 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!34 0))(
  ( (LongMapFixedSize!35 (defaultEntry!1627 Int) (mask!4537 (_ BitVec 32)) (extraKeys!1541 (_ BitVec 32)) (zeroValue!1564 V!955) (minValue!1564 V!955) (_size!48 (_ BitVec 32)) (_keys!3052 array!891) (_values!1625 array!889) (_vacant!48 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!34 0))(
  ( (Cell!35 (v!1401 LongMapFixedSize!34)) )
))
(declare-datatypes ((LongMap!34 0))(
  ( (LongMap!35 (underlying!28 Cell!34)) )
))
(declare-datatypes ((tuple2!676 0))(
  ( (tuple2!677 (_1!338 Bool) (_2!338 LongMap!34)) )
))
(declare-fun lt!4143 () tuple2!676)

(assert (=> b!16814 (= res!12394 (_1!338 lt!4143))))

(declare-fun e!10468 () tuple2!676)

(assert (=> b!16814 (= lt!4143 e!10468)))

(declare-fun c!1622 () Bool)

(declare-fun thiss!848 () LongMap!34)

(declare-fun imbalanced!2 (LongMap!34) Bool)

(assert (=> b!16814 (= c!1622 (imbalanced!2 thiss!848))))

(declare-fun mapIsEmpty!701 () Bool)

(declare-fun mapRes!701 () Bool)

(assert (=> mapIsEmpty!701 mapRes!701))

(declare-fun b!16815 () Bool)

(assert (=> b!16815 (= e!10468 (tuple2!677 true thiss!848))))

(declare-fun b!16816 () Bool)

(declare-fun e!10464 () Bool)

(declare-fun tp_is_empty!847 () Bool)

(assert (=> b!16816 (= e!10464 tp_is_empty!847)))

(declare-fun e!10463 () Bool)

(declare-fun e!10465 () Bool)

(declare-fun array_inv!303 (array!891) Bool)

(declare-fun array_inv!304 (array!889) Bool)

(assert (=> b!16817 (= e!10465 (and tp!2935 tp_is_empty!847 (array_inv!303 (_keys!3052 (v!1401 (underlying!28 thiss!848)))) (array_inv!304 (_values!1625 (v!1401 (underlying!28 thiss!848)))) e!10463))))

(declare-fun res!12393 () Bool)

(assert (=> start!2944 (=> (not res!12393) (not e!10470))))

(declare-fun valid!25 (LongMap!34) Bool)

(assert (=> start!2944 (= res!12393 (valid!25 thiss!848))))

(assert (=> start!2944 e!10470))

(declare-fun e!10466 () Bool)

(assert (=> start!2944 e!10466))

(declare-fun b!16818 () Bool)

(declare-fun e!10471 () Bool)

(assert (=> b!16818 (= e!10471 tp_is_empty!847)))

(declare-fun b!16819 () Bool)

(assert (=> b!16819 (= e!10463 (and e!10471 mapRes!701))))

(declare-fun condMapEmpty!701 () Bool)

(declare-fun mapDefault!701 () ValueCell!224)

