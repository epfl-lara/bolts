; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109758 () Bool)

(assert start!109758)

(declare-fun b_free!29155 () Bool)

(declare-fun b_next!29155 () Bool)

(assert (=> start!109758 (= b_free!29155 (not b_next!29155))))

(declare-fun tp!102594 () Bool)

(declare-fun b_and!47267 () Bool)

(assert (=> start!109758 (= tp!102594 b_and!47267)))

(declare-fun b!1299538 () Bool)

(declare-fun res!863680 () Bool)

(declare-fun e!741393 () Bool)

(assert (=> b!1299538 (=> (not res!863680) (not e!741393))))

(declare-datatypes ((V!51497 0))(
  ( (V!51498 (val!17472 Int)) )
))
(declare-fun minValue!1387 () V!51497)

(declare-fun zeroValue!1387 () V!51497)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16499 0))(
  ( (ValueCellFull!16499 (v!20076 V!51497)) (EmptyCell!16499) )
))
(declare-datatypes ((array!86563 0))(
  ( (array!86564 (arr!41775 (Array (_ BitVec 32) ValueCell!16499)) (size!42326 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86563)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86565 0))(
  ( (array!86566 (arr!41776 (Array (_ BitVec 32) (_ BitVec 64))) (size!42327 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86565)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22682 0))(
  ( (tuple2!22683 (_1!11351 (_ BitVec 64)) (_2!11351 V!51497)) )
))
(declare-datatypes ((List!29842 0))(
  ( (Nil!29839) (Cons!29838 (h!31047 tuple2!22682) (t!43419 List!29842)) )
))
(declare-datatypes ((ListLongMap!20351 0))(
  ( (ListLongMap!20352 (toList!10191 List!29842)) )
))
(declare-fun contains!8249 (ListLongMap!20351 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5165 (array!86565 array!86563 (_ BitVec 32) (_ BitVec 32) V!51497 V!51497 (_ BitVec 32) Int) ListLongMap!20351)

(assert (=> b!1299538 (= res!863680 (contains!8249 (getCurrentListMap!5165 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1299539 () Bool)

(declare-fun res!863681 () Bool)

(assert (=> b!1299539 (=> (not res!863681) (not e!741393))))

(assert (=> b!1299539 (= res!863681 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42327 _keys!1741))))))

(declare-fun b!1299540 () Bool)

(declare-fun res!863682 () Bool)

(assert (=> b!1299540 (=> (not res!863682) (not e!741393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299540 (= res!863682 (validKeyInArray!0 (select (arr!41776 _keys!1741) from!2144)))))

(declare-fun b!1299541 () Bool)

(declare-fun res!863678 () Bool)

(assert (=> b!1299541 (=> (not res!863678) (not e!741393))))

(assert (=> b!1299541 (= res!863678 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42327 _keys!1741))))))

(declare-fun b!1299542 () Bool)

(declare-fun res!863677 () Bool)

(assert (=> b!1299542 (=> (not res!863677) (not e!741393))))

(assert (=> b!1299542 (= res!863677 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1299543 () Bool)

(assert (=> b!1299543 (= e!741393 (not true))))

(declare-fun lt!581041 () ListLongMap!20351)

(assert (=> b!1299543 (contains!8249 lt!581041 k!1205)))

(declare-datatypes ((Unit!42969 0))(
  ( (Unit!42970) )
))
(declare-fun lt!581042 () Unit!42969)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!66 ((_ BitVec 64) (_ BitVec 64) V!51497 ListLongMap!20351) Unit!42969)

(assert (=> b!1299543 (= lt!581042 (lemmaInListMapAfterAddingDiffThenInBefore!66 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!581041))))

(declare-fun +!4422 (ListLongMap!20351 tuple2!22682) ListLongMap!20351)

(declare-fun getCurrentListMapNoExtraKeys!6135 (array!86565 array!86563 (_ BitVec 32) (_ BitVec 32) V!51497 V!51497 (_ BitVec 32) Int) ListLongMap!20351)

(assert (=> b!1299543 (= lt!581041 (+!4422 (getCurrentListMapNoExtraKeys!6135 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22683 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1299544 () Bool)

(declare-fun res!863685 () Bool)

(assert (=> b!1299544 (=> (not res!863685) (not e!741393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86565 (_ BitVec 32)) Bool)

(assert (=> b!1299544 (= res!863685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299545 () Bool)

(declare-fun e!741395 () Bool)

(declare-fun tp_is_empty!34795 () Bool)

(assert (=> b!1299545 (= e!741395 tp_is_empty!34795)))

(declare-fun b!1299546 () Bool)

(declare-fun e!741394 () Bool)

(declare-fun mapRes!53762 () Bool)

(assert (=> b!1299546 (= e!741394 (and e!741395 mapRes!53762))))

(declare-fun condMapEmpty!53762 () Bool)

(declare-fun mapDefault!53762 () ValueCell!16499)

