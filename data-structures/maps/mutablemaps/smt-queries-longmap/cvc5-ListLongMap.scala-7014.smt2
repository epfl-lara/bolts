; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89124 () Bool)

(assert start!89124)

(declare-fun b!1021331 () Bool)

(declare-fun b_free!20137 () Bool)

(declare-fun b_next!20137 () Bool)

(assert (=> b!1021331 (= b_free!20137 (not b_next!20137))))

(declare-fun tp!71444 () Bool)

(declare-fun b_and!32353 () Bool)

(assert (=> b!1021331 (= tp!71444 b_and!32353)))

(declare-fun e!575257 () Bool)

(declare-datatypes ((array!63740 0))(
  ( (array!63741 (arr!30679 (Array (_ BitVec 32) (_ BitVec 64))) (size!31191 (_ BitVec 32))) )
))
(declare-datatypes ((V!36683 0))(
  ( (V!36684 (val!11979 Int)) )
))
(declare-datatypes ((ValueCell!11225 0))(
  ( (ValueCellFull!11225 (v!14546 V!36683)) (EmptyCell!11225) )
))
(declare-datatypes ((array!63742 0))(
  ( (array!63743 (arr!30680 (Array (_ BitVec 32) ValueCell!11225)) (size!31192 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5044 0))(
  ( (LongMapFixedSize!5045 (defaultEntry!5874 Int) (mask!29438 (_ BitVec 32)) (extraKeys!5606 (_ BitVec 32)) (zeroValue!5710 V!36683) (minValue!5710 V!36683) (_size!2577 (_ BitVec 32)) (_keys!11016 array!63740) (_values!5897 array!63742) (_vacant!2577 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1112 0))(
  ( (Cell!1113 (v!14547 LongMapFixedSize!5044)) )
))
(declare-datatypes ((LongMap!1112 0))(
  ( (LongMap!1113 (underlying!567 Cell!1112)) )
))
(declare-fun thiss!1120 () LongMap!1112)

(declare-fun tp_is_empty!23857 () Bool)

(declare-fun e!575259 () Bool)

(declare-fun array_inv!23653 (array!63740) Bool)

(declare-fun array_inv!23654 (array!63742) Bool)

(assert (=> b!1021331 (= e!575259 (and tp!71444 tp_is_empty!23857 (array_inv!23653 (_keys!11016 (v!14547 (underlying!567 thiss!1120)))) (array_inv!23654 (_values!5897 (v!14547 (underlying!567 thiss!1120)))) e!575257))))

(declare-fun b!1021332 () Bool)

(declare-fun e!575254 () Bool)

(assert (=> b!1021332 (= e!575254 tp_is_empty!23857)))

(declare-fun b!1021333 () Bool)

(declare-fun e!575255 () Bool)

(declare-fun mapRes!37200 () Bool)

(assert (=> b!1021333 (= e!575257 (and e!575255 mapRes!37200))))

(declare-fun condMapEmpty!37200 () Bool)

(declare-fun mapDefault!37200 () ValueCell!11225)

