; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75394 () Bool)

(assert start!75394)

(declare-fun b!887387 () Bool)

(declare-fun b_free!15517 () Bool)

(declare-fun b_next!15517 () Bool)

(assert (=> b!887387 (= b_free!15517 (not b_next!15517))))

(declare-fun tp!54490 () Bool)

(declare-fun b_and!25755 () Bool)

(assert (=> b!887387 (= tp!54490 b_and!25755)))

(declare-fun b!887382 () Bool)

(declare-fun e!494226 () Bool)

(declare-fun tp_is_empty!17845 () Bool)

(assert (=> b!887382 (= e!494226 tp_is_empty!17845)))

(declare-fun b!887383 () Bool)

(declare-fun e!494222 () Bool)

(declare-fun mapRes!28291 () Bool)

(assert (=> b!887383 (= e!494222 (and e!494226 mapRes!28291))))

(declare-fun condMapEmpty!28291 () Bool)

(declare-datatypes ((V!28759 0))(
  ( (V!28760 (val!8973 Int)) )
))
(declare-datatypes ((ValueCell!8441 0))(
  ( (ValueCellFull!8441 (v!11424 V!28759)) (EmptyCell!8441) )
))
(declare-datatypes ((array!51638 0))(
  ( (array!51639 (arr!24830 (Array (_ BitVec 32) ValueCell!8441)) (size!25271 (_ BitVec 32))) )
))
(declare-datatypes ((array!51640 0))(
  ( (array!51641 (arr!24831 (Array (_ BitVec 32) (_ BitVec 64))) (size!25272 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3898 0))(
  ( (LongMapFixedSize!3899 (defaultEntry!5140 Int) (mask!25533 (_ BitVec 32)) (extraKeys!4834 (_ BitVec 32)) (zeroValue!4938 V!28759) (minValue!4938 V!28759) (_size!2004 (_ BitVec 32)) (_keys!9813 array!51640) (_values!5125 array!51638) (_vacant!2004 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1052 0))(
  ( (Cell!1053 (v!11425 LongMapFixedSize!3898)) )
))
(declare-datatypes ((LongMap!1052 0))(
  ( (LongMap!1053 (underlying!537 Cell!1052)) )
))
(declare-fun thiss!833 () LongMap!1052)

(declare-fun mapDefault!28291 () ValueCell!8441)

