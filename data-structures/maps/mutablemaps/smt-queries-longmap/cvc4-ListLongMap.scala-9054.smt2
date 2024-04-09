; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109148 () Bool)

(assert start!109148)

(declare-fun b_free!28601 () Bool)

(declare-fun b_next!28601 () Bool)

(assert (=> start!109148 (= b_free!28601 (not b_next!28601))))

(declare-fun tp!100922 () Bool)

(declare-fun b_and!46701 () Bool)

(assert (=> start!109148 (= tp!100922 b_and!46701)))

(declare-fun b!1290003 () Bool)

(declare-fun e!736521 () Bool)

(declare-fun tp_is_empty!34241 () Bool)

(assert (=> b!1290003 (= e!736521 tp_is_empty!34241)))

(declare-fun res!857043 () Bool)

(declare-fun e!736522 () Bool)

(assert (=> start!109148 (=> (not res!857043) (not e!736522))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109148 (= res!857043 (validMask!0 mask!2175))))

(assert (=> start!109148 e!736522))

(assert (=> start!109148 tp_is_empty!34241))

(assert (=> start!109148 true))

(declare-datatypes ((V!50757 0))(
  ( (V!50758 (val!17195 Int)) )
))
(declare-datatypes ((ValueCell!16222 0))(
  ( (ValueCellFull!16222 (v!19796 V!50757)) (EmptyCell!16222) )
))
(declare-datatypes ((array!85481 0))(
  ( (array!85482 (arr!41237 (Array (_ BitVec 32) ValueCell!16222)) (size!41788 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85481)

(declare-fun e!736524 () Bool)

(declare-fun array_inv!31229 (array!85481) Bool)

(assert (=> start!109148 (and (array_inv!31229 _values!1445) e!736524)))

(declare-datatypes ((array!85483 0))(
  ( (array!85484 (arr!41238 (Array (_ BitVec 32) (_ BitVec 64))) (size!41789 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85483)

(declare-fun array_inv!31230 (array!85483) Bool)

(assert (=> start!109148 (array_inv!31230 _keys!1741)))

(assert (=> start!109148 tp!100922))

(declare-fun b!1290004 () Bool)

(declare-fun res!857038 () Bool)

(assert (=> b!1290004 (=> (not res!857038) (not e!736522))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1290004 (= res!857038 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41789 _keys!1741))))))

(declare-fun b!1290005 () Bool)

(declare-fun res!857035 () Bool)

(assert (=> b!1290005 (=> (not res!857035) (not e!736522))))

(assert (=> b!1290005 (= res!857035 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41789 _keys!1741))))))

(declare-fun mapIsEmpty!52922 () Bool)

(declare-fun mapRes!52922 () Bool)

(assert (=> mapIsEmpty!52922 mapRes!52922))

(declare-fun b!1290006 () Bool)

(declare-fun e!736525 () Bool)

(assert (=> b!1290006 (= e!736522 (not e!736525))))

(declare-fun res!857036 () Bool)

(assert (=> b!1290006 (=> res!857036 e!736525)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1290006 (= res!857036 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!22228 0))(
  ( (tuple2!22229 (_1!11124 (_ BitVec 64)) (_2!11124 V!50757)) )
))
(declare-datatypes ((List!29425 0))(
  ( (Nil!29422) (Cons!29421 (h!30630 tuple2!22228) (t!42996 List!29425)) )
))
(declare-datatypes ((ListLongMap!19897 0))(
  ( (ListLongMap!19898 (toList!9964 List!29425)) )
))
(declare-fun contains!8020 (ListLongMap!19897 (_ BitVec 64)) Bool)

(assert (=> b!1290006 (not (contains!8020 (ListLongMap!19898 Nil!29422) k!1205))))

(declare-datatypes ((Unit!42619 0))(
  ( (Unit!42620) )
))
(declare-fun lt!578416 () Unit!42619)

(declare-fun emptyContainsNothing!71 ((_ BitVec 64)) Unit!42619)

(assert (=> b!1290006 (= lt!578416 (emptyContainsNothing!71 k!1205))))

(declare-fun b!1290007 () Bool)

(assert (=> b!1290007 (= e!736525 true)))

(declare-fun lt!578413 () ListLongMap!19897)

(declare-fun minValue!1387 () V!50757)

(declare-fun +!4334 (ListLongMap!19897 tuple2!22228) ListLongMap!19897)

(assert (=> b!1290007 (not (contains!8020 (+!4334 lt!578413 (tuple2!22229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!578415 () Unit!42619)

(declare-fun addStillNotContains!379 (ListLongMap!19897 (_ BitVec 64) V!50757 (_ BitVec 64)) Unit!42619)

(assert (=> b!1290007 (= lt!578415 (addStillNotContains!379 lt!578413 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!50757)

(assert (=> b!1290007 (not (contains!8020 (+!4334 lt!578413 (tuple2!22229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578414 () Unit!42619)

(assert (=> b!1290007 (= lt!578414 (addStillNotContains!379 lt!578413 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6046 (array!85483 array!85481 (_ BitVec 32) (_ BitVec 32) V!50757 V!50757 (_ BitVec 32) Int) ListLongMap!19897)

(assert (=> b!1290007 (= lt!578413 (getCurrentListMapNoExtraKeys!6046 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290008 () Bool)

(declare-fun res!857037 () Bool)

(assert (=> b!1290008 (=> (not res!857037) (not e!736522))))

(declare-datatypes ((List!29426 0))(
  ( (Nil!29423) (Cons!29422 (h!30631 (_ BitVec 64)) (t!42997 List!29426)) )
))
(declare-fun arrayNoDuplicates!0 (array!85483 (_ BitVec 32) List!29426) Bool)

(assert (=> b!1290008 (= res!857037 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29423))))

(declare-fun mapNonEmpty!52922 () Bool)

(declare-fun tp!100923 () Bool)

(declare-fun e!736520 () Bool)

(assert (=> mapNonEmpty!52922 (= mapRes!52922 (and tp!100923 e!736520))))

(declare-fun mapKey!52922 () (_ BitVec 32))

(declare-fun mapValue!52922 () ValueCell!16222)

(declare-fun mapRest!52922 () (Array (_ BitVec 32) ValueCell!16222))

(assert (=> mapNonEmpty!52922 (= (arr!41237 _values!1445) (store mapRest!52922 mapKey!52922 mapValue!52922))))

(declare-fun b!1290009 () Bool)

(declare-fun res!857041 () Bool)

(assert (=> b!1290009 (=> (not res!857041) (not e!736522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290009 (= res!857041 (not (validKeyInArray!0 (select (arr!41238 _keys!1741) from!2144))))))

(declare-fun b!1290010 () Bool)

(declare-fun res!857039 () Bool)

(assert (=> b!1290010 (=> (not res!857039) (not e!736522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85483 (_ BitVec 32)) Bool)

(assert (=> b!1290010 (= res!857039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290011 () Bool)

(assert (=> b!1290011 (= e!736520 tp_is_empty!34241)))

(declare-fun b!1290012 () Bool)

(assert (=> b!1290012 (= e!736524 (and e!736521 mapRes!52922))))

(declare-fun condMapEmpty!52922 () Bool)

(declare-fun mapDefault!52922 () ValueCell!16222)

