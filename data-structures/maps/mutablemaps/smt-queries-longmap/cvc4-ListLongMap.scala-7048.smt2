; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89356 () Bool)

(assert start!89356)

(declare-fun b!1024001 () Bool)

(declare-fun b_free!20345 () Bool)

(declare-fun b_next!20345 () Bool)

(assert (=> b!1024001 (= b_free!20345 (not b_next!20345))))

(declare-fun tp!72075 () Bool)

(declare-fun b_and!32609 () Bool)

(assert (=> b!1024001 (= tp!72075 b_and!32609)))

(declare-fun mapNonEmpty!37519 () Bool)

(declare-fun mapRes!37519 () Bool)

(declare-fun tp!72074 () Bool)

(declare-fun e!577189 () Bool)

(assert (=> mapNonEmpty!37519 (= mapRes!37519 (and tp!72074 e!577189))))

(declare-fun mapKey!37519 () (_ BitVec 32))

(declare-datatypes ((V!36959 0))(
  ( (V!36960 (val!12083 Int)) )
))
(declare-datatypes ((ValueCell!11329 0))(
  ( (ValueCellFull!11329 (v!14653 V!36959)) (EmptyCell!11329) )
))
(declare-fun mapRest!37519 () (Array (_ BitVec 32) ValueCell!11329))

(declare-datatypes ((array!64160 0))(
  ( (array!64161 (arr!30887 (Array (_ BitVec 32) (_ BitVec 64))) (size!31400 (_ BitVec 32))) )
))
(declare-datatypes ((array!64162 0))(
  ( (array!64163 (arr!30888 (Array (_ BitVec 32) ValueCell!11329)) (size!31401 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5252 0))(
  ( (LongMapFixedSize!5253 (defaultEntry!5978 Int) (mask!29612 (_ BitVec 32)) (extraKeys!5710 (_ BitVec 32)) (zeroValue!5814 V!36959) (minValue!5814 V!36959) (_size!2681 (_ BitVec 32)) (_keys!11121 array!64160) (_values!6001 array!64162) (_vacant!2681 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5252)

(declare-fun mapValue!37519 () ValueCell!11329)

(assert (=> mapNonEmpty!37519 (= (arr!30888 (_values!6001 thiss!1427)) (store mapRest!37519 mapKey!37519 mapValue!37519))))

(declare-fun b!1024002 () Bool)

(declare-fun e!577194 () Bool)

(declare-fun e!577191 () Bool)

(assert (=> b!1024002 (= e!577194 (and e!577191 mapRes!37519))))

(declare-fun condMapEmpty!37519 () Bool)

(declare-fun mapDefault!37519 () ValueCell!11329)

