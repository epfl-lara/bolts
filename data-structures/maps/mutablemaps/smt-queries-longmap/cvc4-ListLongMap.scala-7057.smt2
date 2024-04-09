; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89436 () Bool)

(assert start!89436)

(declare-fun b!1024905 () Bool)

(declare-fun b_free!20399 () Bool)

(declare-fun b_next!20399 () Bool)

(assert (=> b!1024905 (= b_free!20399 (not b_next!20399))))

(declare-fun tp!72243 () Bool)

(declare-fun b_and!32663 () Bool)

(assert (=> b!1024905 (= tp!72243 b_and!32663)))

(declare-fun b!1024903 () Bool)

(declare-fun res!686283 () Bool)

(declare-fun e!577849 () Bool)

(assert (=> b!1024903 (=> res!686283 e!577849)))

(declare-datatypes ((List!21847 0))(
  ( (Nil!21844) (Cons!21843 (h!23041 (_ BitVec 64)) (t!30916 List!21847)) )
))
(declare-fun contains!5975 (List!21847 (_ BitVec 64)) Bool)

(assert (=> b!1024903 (= res!686283 (contains!5975 Nil!21844 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024904 () Bool)

(declare-fun e!577853 () Bool)

(declare-fun e!577850 () Bool)

(declare-fun mapRes!37607 () Bool)

(assert (=> b!1024904 (= e!577853 (and e!577850 mapRes!37607))))

(declare-fun condMapEmpty!37607 () Bool)

(declare-datatypes ((V!37031 0))(
  ( (V!37032 (val!12110 Int)) )
))
(declare-datatypes ((ValueCell!11356 0))(
  ( (ValueCellFull!11356 (v!14680 V!37031)) (EmptyCell!11356) )
))
(declare-datatypes ((array!64272 0))(
  ( (array!64273 (arr!30941 (Array (_ BitVec 32) (_ BitVec 64))) (size!31455 (_ BitVec 32))) )
))
(declare-datatypes ((array!64274 0))(
  ( (array!64275 (arr!30942 (Array (_ BitVec 32) ValueCell!11356)) (size!31456 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5306 0))(
  ( (LongMapFixedSize!5307 (defaultEntry!6005 Int) (mask!29660 (_ BitVec 32)) (extraKeys!5737 (_ BitVec 32)) (zeroValue!5841 V!37031) (minValue!5841 V!37031) (_size!2708 (_ BitVec 32)) (_keys!11149 array!64272) (_values!6028 array!64274) (_vacant!2708 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5306)

(declare-fun mapDefault!37607 () ValueCell!11356)

