; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109210 () Bool)

(assert start!109210)

(declare-fun b_free!28663 () Bool)

(declare-fun b_next!28663 () Bool)

(assert (=> start!109210 (= b_free!28663 (not b_next!28663))))

(declare-fun tp!101108 () Bool)

(declare-fun b_and!46763 () Bool)

(assert (=> start!109210 (= tp!101108 b_and!46763)))

(declare-fun b!1291119 () Bool)

(declare-fun e!737080 () Bool)

(assert (=> b!1291119 (= e!737080 true)))

(assert (=> b!1291119 false))

(declare-datatypes ((V!50841 0))(
  ( (V!50842 (val!17226 Int)) )
))
(declare-fun minValue!1387 () V!50841)

(declare-datatypes ((Unit!42667 0))(
  ( (Unit!42668) )
))
(declare-fun lt!578953 () Unit!42667)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22278 0))(
  ( (tuple2!22279 (_1!11149 (_ BitVec 64)) (_2!11149 V!50841)) )
))
(declare-datatypes ((List!29472 0))(
  ( (Nil!29469) (Cons!29468 (h!30677 tuple2!22278) (t!43043 List!29472)) )
))
(declare-datatypes ((ListLongMap!19947 0))(
  ( (ListLongMap!19948 (toList!9989 List!29472)) )
))
(declare-fun lt!578956 () ListLongMap!19947)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!47 ((_ BitVec 64) (_ BitVec 64) V!50841 ListLongMap!19947) Unit!42667)

(assert (=> b!1291119 (= lt!578953 (lemmaInListMapAfterAddingDiffThenInBefore!47 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578956))))

(declare-fun lt!578954 () ListLongMap!19947)

(declare-fun contains!8045 (ListLongMap!19947 (_ BitVec 64)) Bool)

(declare-fun +!4352 (ListLongMap!19947 tuple2!22278) ListLongMap!19947)

(assert (=> b!1291119 (not (contains!8045 (+!4352 lt!578954 (tuple2!22279 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578951 () Unit!42667)

(declare-fun addStillNotContains!397 (ListLongMap!19947 (_ BitVec 64) V!50841 (_ BitVec 64)) Unit!42667)

(assert (=> b!1291119 (= lt!578951 (addStillNotContains!397 lt!578954 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1291119 (not (contains!8045 lt!578956 k!1205))))

(declare-fun zeroValue!1387 () V!50841)

(assert (=> b!1291119 (= lt!578956 (+!4352 lt!578954 (tuple2!22279 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578955 () Unit!42667)

(assert (=> b!1291119 (= lt!578955 (addStillNotContains!397 lt!578954 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16253 0))(
  ( (ValueCellFull!16253 (v!19827 V!50841)) (EmptyCell!16253) )
))
(declare-datatypes ((array!85601 0))(
  ( (array!85602 (arr!41297 (Array (_ BitVec 32) ValueCell!16253)) (size!41848 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85601)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85603 0))(
  ( (array!85604 (arr!41298 (Array (_ BitVec 32) (_ BitVec 64))) (size!41849 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85603)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6064 (array!85603 array!85601 (_ BitVec 32) (_ BitVec 32) V!50841 V!50841 (_ BitVec 32) Int) ListLongMap!19947)

(assert (=> b!1291119 (= lt!578954 (getCurrentListMapNoExtraKeys!6064 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291120 () Bool)

(declare-fun res!857876 () Bool)

(declare-fun e!737078 () Bool)

(assert (=> b!1291120 (=> (not res!857876) (not e!737078))))

(assert (=> b!1291120 (= res!857876 (and (= (size!41848 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41849 _keys!1741) (size!41848 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!857874 () Bool)

(assert (=> start!109210 (=> (not res!857874) (not e!737078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109210 (= res!857874 (validMask!0 mask!2175))))

(assert (=> start!109210 e!737078))

(declare-fun tp_is_empty!34303 () Bool)

(assert (=> start!109210 tp_is_empty!34303))

(assert (=> start!109210 true))

(declare-fun e!737081 () Bool)

(declare-fun array_inv!31269 (array!85601) Bool)

(assert (=> start!109210 (and (array_inv!31269 _values!1445) e!737081)))

(declare-fun array_inv!31270 (array!85603) Bool)

(assert (=> start!109210 (array_inv!31270 _keys!1741)))

(assert (=> start!109210 tp!101108))

(declare-fun b!1291121 () Bool)

(assert (=> b!1291121 (= e!737078 (not e!737080))))

(declare-fun res!857879 () Bool)

(assert (=> b!1291121 (=> res!857879 e!737080)))

(assert (=> b!1291121 (= res!857879 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1291121 (not (contains!8045 (ListLongMap!19948 Nil!29469) k!1205))))

(declare-fun lt!578952 () Unit!42667)

(declare-fun emptyContainsNothing!93 ((_ BitVec 64)) Unit!42667)

(assert (=> b!1291121 (= lt!578952 (emptyContainsNothing!93 k!1205))))

(declare-fun b!1291122 () Bool)

(declare-fun e!737079 () Bool)

(assert (=> b!1291122 (= e!737079 tp_is_empty!34303)))

(declare-fun b!1291123 () Bool)

(declare-fun mapRes!53015 () Bool)

(assert (=> b!1291123 (= e!737081 (and e!737079 mapRes!53015))))

(declare-fun condMapEmpty!53015 () Bool)

(declare-fun mapDefault!53015 () ValueCell!16253)

