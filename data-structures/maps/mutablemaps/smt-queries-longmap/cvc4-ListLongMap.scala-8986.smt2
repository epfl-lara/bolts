; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108716 () Bool)

(assert start!108716)

(declare-fun b_free!28193 () Bool)

(declare-fun b_next!28193 () Bool)

(assert (=> start!108716 (= b_free!28193 (not b_next!28193))))

(declare-fun tp!99696 () Bool)

(declare-fun b_and!46269 () Bool)

(assert (=> start!108716 (= tp!99696 b_and!46269)))

(declare-fun b!1282814 () Bool)

(declare-fun res!852179 () Bool)

(declare-fun e!732981 () Bool)

(assert (=> b!1282814 (=> (not res!852179) (not e!732981))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!84687 0))(
  ( (array!84688 (arr!40841 (Array (_ BitVec 32) (_ BitVec 64))) (size!41392 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84687)

(assert (=> b!1282814 (= res!852179 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41392 _keys!1741))))))

(declare-fun b!1282815 () Bool)

(declare-fun res!852173 () Bool)

(assert (=> b!1282815 (=> (not res!852173) (not e!732981))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50213 0))(
  ( (V!50214 (val!16991 Int)) )
))
(declare-datatypes ((ValueCell!16018 0))(
  ( (ValueCellFull!16018 (v!19591 V!50213)) (EmptyCell!16018) )
))
(declare-datatypes ((array!84689 0))(
  ( (array!84690 (arr!40842 (Array (_ BitVec 32) ValueCell!16018)) (size!41393 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84689)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1282815 (= res!852173 (and (= (size!41393 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41392 _keys!1741) (size!41393 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282816 () Bool)

(assert (=> b!1282816 (= e!732981 false)))

(declare-fun minValue!1387 () V!50213)

(declare-fun zeroValue!1387 () V!50213)

(declare-fun lt!576513 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21904 0))(
  ( (tuple2!21905 (_1!10962 (_ BitVec 64)) (_2!10962 V!50213)) )
))
(declare-datatypes ((List!29113 0))(
  ( (Nil!29110) (Cons!29109 (h!30318 tuple2!21904) (t!42664 List!29113)) )
))
(declare-datatypes ((ListLongMap!19573 0))(
  ( (ListLongMap!19574 (toList!9802 List!29113)) )
))
(declare-fun contains!7857 (ListLongMap!19573 (_ BitVec 64)) Bool)

(declare-fun +!4250 (ListLongMap!19573 tuple2!21904) ListLongMap!19573)

(declare-fun getCurrentListMapNoExtraKeys!5961 (array!84687 array!84689 (_ BitVec 32) (_ BitVec 32) V!50213 V!50213 (_ BitVec 32) Int) ListLongMap!19573)

(assert (=> b!1282816 (= lt!576513 (contains!7857 (+!4250 (+!4250 (getCurrentListMapNoExtraKeys!5961 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!21905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun b!1282817 () Bool)

(declare-fun e!732982 () Bool)

(declare-fun tp_is_empty!33833 () Bool)

(assert (=> b!1282817 (= e!732982 tp_is_empty!33833)))

(declare-fun b!1282818 () Bool)

(declare-fun e!732984 () Bool)

(assert (=> b!1282818 (= e!732984 tp_is_empty!33833)))

(declare-fun b!1282819 () Bool)

(declare-fun res!852177 () Bool)

(assert (=> b!1282819 (=> (not res!852177) (not e!732981))))

(assert (=> b!1282819 (= res!852177 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41392 _keys!1741))))))

(declare-fun mapIsEmpty!52307 () Bool)

(declare-fun mapRes!52307 () Bool)

(assert (=> mapIsEmpty!52307 mapRes!52307))

(declare-fun b!1282820 () Bool)

(declare-fun res!852180 () Bool)

(assert (=> b!1282820 (=> (not res!852180) (not e!732981))))

(assert (=> b!1282820 (= res!852180 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!852176 () Bool)

(assert (=> start!108716 (=> (not res!852176) (not e!732981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108716 (= res!852176 (validMask!0 mask!2175))))

(assert (=> start!108716 e!732981))

(assert (=> start!108716 tp_is_empty!33833))

(assert (=> start!108716 true))

(declare-fun e!732985 () Bool)

(declare-fun array_inv!30963 (array!84689) Bool)

(assert (=> start!108716 (and (array_inv!30963 _values!1445) e!732985)))

(declare-fun array_inv!30964 (array!84687) Bool)

(assert (=> start!108716 (array_inv!30964 _keys!1741)))

(assert (=> start!108716 tp!99696))

(declare-fun b!1282821 () Bool)

(assert (=> b!1282821 (= e!732985 (and e!732982 mapRes!52307))))

(declare-fun condMapEmpty!52307 () Bool)

(declare-fun mapDefault!52307 () ValueCell!16018)

