; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109202 () Bool)

(assert start!109202)

(declare-fun b_free!28655 () Bool)

(declare-fun b_next!28655 () Bool)

(assert (=> start!109202 (= b_free!28655 (not b_next!28655))))

(declare-fun tp!101085 () Bool)

(declare-fun b_and!46755 () Bool)

(assert (=> start!109202 (= tp!101085 b_and!46755)))

(declare-fun b!1290975 () Bool)

(declare-fun res!857769 () Bool)

(declare-fun e!737006 () Bool)

(assert (=> b!1290975 (=> (not res!857769) (not e!737006))))

(declare-datatypes ((array!85585 0))(
  ( (array!85586 (arr!41289 (Array (_ BitVec 32) (_ BitVec 64))) (size!41840 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85585)

(declare-datatypes ((List!29467 0))(
  ( (Nil!29464) (Cons!29463 (h!30672 (_ BitVec 64)) (t!43038 List!29467)) )
))
(declare-fun arrayNoDuplicates!0 (array!85585 (_ BitVec 32) List!29467) Bool)

(assert (=> b!1290975 (= res!857769 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29464))))

(declare-fun b!1290976 () Bool)

(declare-fun res!857768 () Bool)

(assert (=> b!1290976 (=> (not res!857768) (not e!737006))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1290976 (= res!857768 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41840 _keys!1741))))))

(declare-fun b!1290977 () Bool)

(declare-fun e!737008 () Bool)

(assert (=> b!1290977 (= e!737008 true)))

(assert (=> b!1290977 false))

(declare-datatypes ((V!50829 0))(
  ( (V!50830 (val!17222 Int)) )
))
(declare-fun minValue!1387 () V!50829)

(declare-datatypes ((tuple2!22272 0))(
  ( (tuple2!22273 (_1!11146 (_ BitVec 64)) (_2!11146 V!50829)) )
))
(declare-datatypes ((List!29468 0))(
  ( (Nil!29465) (Cons!29464 (h!30673 tuple2!22272) (t!43039 List!29468)) )
))
(declare-datatypes ((ListLongMap!19941 0))(
  ( (ListLongMap!19942 (toList!9986 List!29468)) )
))
(declare-fun lt!578880 () ListLongMap!19941)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((Unit!42661 0))(
  ( (Unit!42662) )
))
(declare-fun lt!578879 () Unit!42661)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!45 ((_ BitVec 64) (_ BitVec 64) V!50829 ListLongMap!19941) Unit!42661)

(assert (=> b!1290977 (= lt!578879 (lemmaInListMapAfterAddingDiffThenInBefore!45 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578880))))

(declare-fun lt!578884 () ListLongMap!19941)

(declare-fun contains!8042 (ListLongMap!19941 (_ BitVec 64)) Bool)

(declare-fun +!4350 (ListLongMap!19941 tuple2!22272) ListLongMap!19941)

(assert (=> b!1290977 (not (contains!8042 (+!4350 lt!578884 (tuple2!22273 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578883 () Unit!42661)

(declare-fun addStillNotContains!395 (ListLongMap!19941 (_ BitVec 64) V!50829 (_ BitVec 64)) Unit!42661)

(assert (=> b!1290977 (= lt!578883 (addStillNotContains!395 lt!578884 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1290977 (not (contains!8042 lt!578880 k!1205))))

(declare-fun zeroValue!1387 () V!50829)

(assert (=> b!1290977 (= lt!578880 (+!4350 lt!578884 (tuple2!22273 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578881 () Unit!42661)

(assert (=> b!1290977 (= lt!578881 (addStillNotContains!395 lt!578884 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-datatypes ((ValueCell!16249 0))(
  ( (ValueCellFull!16249 (v!19823 V!50829)) (EmptyCell!16249) )
))
(declare-datatypes ((array!85587 0))(
  ( (array!85588 (arr!41290 (Array (_ BitVec 32) ValueCell!16249)) (size!41841 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85587)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6062 (array!85585 array!85587 (_ BitVec 32) (_ BitVec 32) V!50829 V!50829 (_ BitVec 32) Int) ListLongMap!19941)

(assert (=> b!1290977 (= lt!578884 (getCurrentListMapNoExtraKeys!6062 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290978 () Bool)

(declare-fun res!857772 () Bool)

(assert (=> b!1290978 (=> (not res!857772) (not e!737006))))

(assert (=> b!1290978 (= res!857772 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41840 _keys!1741))))))

(declare-fun b!1290979 () Bool)

(declare-fun e!737011 () Bool)

(declare-fun e!737010 () Bool)

(declare-fun mapRes!53003 () Bool)

(assert (=> b!1290979 (= e!737011 (and e!737010 mapRes!53003))))

(declare-fun condMapEmpty!53003 () Bool)

(declare-fun mapDefault!53003 () ValueCell!16249)

