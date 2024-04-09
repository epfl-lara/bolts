; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89204 () Bool)

(assert start!89204)

(declare-fun b!1022314 () Bool)

(declare-fun b_free!20209 () Bool)

(declare-fun b_next!20209 () Bool)

(assert (=> b!1022314 (= b_free!20209 (not b_next!20209))))

(declare-fun tp!71662 () Bool)

(declare-fun b_and!32425 () Bool)

(assert (=> b!1022314 (= tp!71662 b_and!32425)))

(declare-fun b!1022306 () Bool)

(declare-fun e!575929 () Bool)

(declare-fun e!575926 () Bool)

(declare-fun mapRes!37311 () Bool)

(assert (=> b!1022306 (= e!575929 (and e!575926 mapRes!37311))))

(declare-fun condMapEmpty!37311 () Bool)

(declare-datatypes ((V!36779 0))(
  ( (V!36780 (val!12015 Int)) )
))
(declare-datatypes ((ValueCell!11261 0))(
  ( (ValueCellFull!11261 (v!14585 V!36779)) (EmptyCell!11261) )
))
(declare-datatypes ((array!63886 0))(
  ( (array!63887 (arr!30751 (Array (_ BitVec 32) (_ BitVec 64))) (size!31263 (_ BitVec 32))) )
))
(declare-datatypes ((array!63888 0))(
  ( (array!63889 (arr!30752 (Array (_ BitVec 32) ValueCell!11261)) (size!31264 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5116 0))(
  ( (LongMapFixedSize!5117 (defaultEntry!5910 Int) (mask!29498 (_ BitVec 32)) (extraKeys!5642 (_ BitVec 32)) (zeroValue!5746 V!36779) (minValue!5746 V!36779) (_size!2613 (_ BitVec 32)) (_keys!11052 array!63886) (_values!5933 array!63888) (_vacant!2613 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5116)

(declare-fun mapDefault!37311 () ValueCell!11261)

