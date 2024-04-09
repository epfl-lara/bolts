; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109360 () Bool)

(assert start!109360)

(declare-fun b_free!28813 () Bool)

(declare-fun b_next!28813 () Bool)

(assert (=> start!109360 (= b_free!28813 (not b_next!28813))))

(declare-fun tp!101559 () Bool)

(declare-fun b_and!46913 () Bool)

(assert (=> start!109360 (= tp!101559 b_and!46913)))

(declare-fun b!1293738 () Bool)

(declare-fun res!859819 () Bool)

(declare-fun e!738351 () Bool)

(assert (=> b!1293738 (=> (not res!859819) (not e!738351))))

(declare-datatypes ((array!85893 0))(
  ( (array!85894 (arr!41443 (Array (_ BitVec 32) (_ BitVec 64))) (size!41994 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85893)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85893 (_ BitVec 32)) Bool)

(assert (=> b!1293738 (= res!859819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293739 () Bool)

(declare-fun e!738352 () Bool)

(declare-fun tp_is_empty!34453 () Bool)

(assert (=> b!1293739 (= e!738352 tp_is_empty!34453)))

(declare-fun b!1293740 () Bool)

(declare-fun e!738349 () Bool)

(assert (=> b!1293740 (= e!738349 true)))

(declare-datatypes ((V!51041 0))(
  ( (V!51042 (val!17301 Int)) )
))
(declare-datatypes ((tuple2!22412 0))(
  ( (tuple2!22413 (_1!11216 (_ BitVec 64)) (_2!11216 V!51041)) )
))
(declare-datatypes ((List!29592 0))(
  ( (Nil!29589) (Cons!29588 (h!30797 tuple2!22412) (t!43163 List!29592)) )
))
(declare-datatypes ((ListLongMap!20081 0))(
  ( (ListLongMap!20082 (toList!10056 List!29592)) )
))
(declare-fun lt!579586 () ListLongMap!20081)

(declare-fun zeroValue!1387 () V!51041)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8112 (ListLongMap!20081 (_ BitVec 64)) Bool)

(declare-fun +!4384 (ListLongMap!20081 tuple2!22412) ListLongMap!20081)

(assert (=> b!1293740 (not (contains!8112 (+!4384 lt!579586 (tuple2!22413 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42787 0))(
  ( (Unit!42788) )
))
(declare-fun lt!579585 () Unit!42787)

(declare-fun addStillNotContains!429 (ListLongMap!20081 (_ BitVec 64) V!51041 (_ BitVec 64)) Unit!42787)

(assert (=> b!1293740 (= lt!579585 (addStillNotContains!429 lt!579586 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!51041)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((ValueCell!16328 0))(
  ( (ValueCellFull!16328 (v!19902 V!51041)) (EmptyCell!16328) )
))
(declare-datatypes ((array!85895 0))(
  ( (array!85896 (arr!41444 (Array (_ BitVec 32) ValueCell!16328)) (size!41995 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85895)

(declare-fun getCurrentListMapNoExtraKeys!6097 (array!85893 array!85895 (_ BitVec 32) (_ BitVec 32) V!51041 V!51041 (_ BitVec 32) Int) ListLongMap!20081)

(assert (=> b!1293740 (= lt!579586 (getCurrentListMapNoExtraKeys!6097 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293741 () Bool)

(declare-fun res!859818 () Bool)

(assert (=> b!1293741 (=> (not res!859818) (not e!738351))))

(declare-fun getCurrentListMap!5042 (array!85893 array!85895 (_ BitVec 32) (_ BitVec 32) V!51041 V!51041 (_ BitVec 32) Int) ListLongMap!20081)

(assert (=> b!1293741 (= res!859818 (contains!8112 (getCurrentListMap!5042 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293742 () Bool)

(assert (=> b!1293742 (= e!738351 (not e!738349))))

(declare-fun res!859821 () Bool)

(assert (=> b!1293742 (=> res!859821 e!738349)))

(assert (=> b!1293742 (= res!859821 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293742 (not (contains!8112 (ListLongMap!20082 Nil!29589) k!1205))))

(declare-fun lt!579584 () Unit!42787)

(declare-fun emptyContainsNothing!150 ((_ BitVec 64)) Unit!42787)

(assert (=> b!1293742 (= lt!579584 (emptyContainsNothing!150 k!1205))))

(declare-fun b!1293743 () Bool)

(declare-fun e!738347 () Bool)

(assert (=> b!1293743 (= e!738347 tp_is_empty!34453)))

(declare-fun mapIsEmpty!53240 () Bool)

(declare-fun mapRes!53240 () Bool)

(assert (=> mapIsEmpty!53240 mapRes!53240))

(declare-fun b!1293744 () Bool)

(declare-fun res!859822 () Bool)

(assert (=> b!1293744 (=> (not res!859822) (not e!738351))))

(assert (=> b!1293744 (= res!859822 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41994 _keys!1741))))))

(declare-fun res!859824 () Bool)

(assert (=> start!109360 (=> (not res!859824) (not e!738351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109360 (= res!859824 (validMask!0 mask!2175))))

(assert (=> start!109360 e!738351))

(assert (=> start!109360 tp_is_empty!34453))

(assert (=> start!109360 true))

(declare-fun e!738348 () Bool)

(declare-fun array_inv!31369 (array!85895) Bool)

(assert (=> start!109360 (and (array_inv!31369 _values!1445) e!738348)))

(declare-fun array_inv!31370 (array!85893) Bool)

(assert (=> start!109360 (array_inv!31370 _keys!1741)))

(assert (=> start!109360 tp!101559))

(declare-fun b!1293745 () Bool)

(assert (=> b!1293745 (= e!738348 (and e!738352 mapRes!53240))))

(declare-fun condMapEmpty!53240 () Bool)

(declare-fun mapDefault!53240 () ValueCell!16328)

