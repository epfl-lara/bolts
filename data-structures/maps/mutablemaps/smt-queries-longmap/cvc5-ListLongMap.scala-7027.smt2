; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89210 () Bool)

(assert start!89210)

(declare-fun b!1022381 () Bool)

(declare-fun b_free!20215 () Bool)

(declare-fun b_next!20215 () Bool)

(assert (=> b!1022381 (= b_free!20215 (not b_next!20215))))

(declare-fun tp!71681 () Bool)

(declare-fun b_and!32431 () Bool)

(assert (=> b!1022381 (= tp!71681 b_and!32431)))

(declare-fun e!575980 () Bool)

(declare-datatypes ((V!36787 0))(
  ( (V!36788 (val!12018 Int)) )
))
(declare-datatypes ((ValueCell!11264 0))(
  ( (ValueCellFull!11264 (v!14588 V!36787)) (EmptyCell!11264) )
))
(declare-datatypes ((array!63898 0))(
  ( (array!63899 (arr!30757 (Array (_ BitVec 32) (_ BitVec 64))) (size!31269 (_ BitVec 32))) )
))
(declare-datatypes ((array!63900 0))(
  ( (array!63901 (arr!30758 (Array (_ BitVec 32) ValueCell!11264)) (size!31270 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5122 0))(
  ( (LongMapFixedSize!5123 (defaultEntry!5913 Int) (mask!29503 (_ BitVec 32)) (extraKeys!5645 (_ BitVec 32)) (zeroValue!5749 V!36787) (minValue!5749 V!36787) (_size!2616 (_ BitVec 32)) (_keys!11055 array!63898) (_values!5936 array!63900) (_vacant!2616 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5122)

(declare-fun e!575981 () Bool)

(declare-fun tp_is_empty!23935 () Bool)

(declare-fun array_inv!23707 (array!63898) Bool)

(declare-fun array_inv!23708 (array!63900) Bool)

(assert (=> b!1022381 (= e!575980 (and tp!71681 tp_is_empty!23935 (array_inv!23707 (_keys!11055 thiss!1427)) (array_inv!23708 (_values!5936 thiss!1427)) e!575981))))

(declare-fun b!1022382 () Bool)

(declare-fun e!575978 () Bool)

(assert (=> b!1022382 (= e!575978 tp_is_empty!23935)))

(declare-fun mapIsEmpty!37320 () Bool)

(declare-fun mapRes!37320 () Bool)

(assert (=> mapIsEmpty!37320 mapRes!37320))

(declare-fun b!1022383 () Bool)

(assert (=> b!1022383 (= e!575981 (and e!575978 mapRes!37320))))

(declare-fun condMapEmpty!37320 () Bool)

(declare-fun mapDefault!37320 () ValueCell!11264)

