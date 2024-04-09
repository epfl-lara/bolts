; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109160 () Bool)

(assert start!109160)

(declare-fun b_free!28613 () Bool)

(declare-fun b_next!28613 () Bool)

(assert (=> start!109160 (= b_free!28613 (not b_next!28613))))

(declare-fun tp!100959 () Bool)

(declare-fun b_and!46713 () Bool)

(assert (=> start!109160 (= tp!100959 b_and!46713)))

(declare-fun b!1290219 () Bool)

(declare-fun e!736633 () Bool)

(declare-fun tp_is_empty!34253 () Bool)

(assert (=> b!1290219 (= e!736633 tp_is_empty!34253)))

(declare-fun b!1290220 () Bool)

(declare-fun e!736629 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85505 0))(
  ( (array!85506 (arr!41249 (Array (_ BitVec 32) (_ BitVec 64))) (size!41800 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85505)

(assert (=> b!1290220 (= e!736629 (bvsle from!2144 (size!41800 _keys!1741)))))

(declare-datatypes ((V!50773 0))(
  ( (V!50774 (val!17201 Int)) )
))
(declare-datatypes ((tuple2!22240 0))(
  ( (tuple2!22241 (_1!11130 (_ BitVec 64)) (_2!11130 V!50773)) )
))
(declare-datatypes ((List!29436 0))(
  ( (Nil!29433) (Cons!29432 (h!30641 tuple2!22240) (t!43007 List!29436)) )
))
(declare-datatypes ((ListLongMap!19909 0))(
  ( (ListLongMap!19910 (toList!9970 List!29436)) )
))
(declare-fun lt!578486 () ListLongMap!19909)

(declare-fun minValue!1387 () V!50773)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8026 (ListLongMap!19909 (_ BitVec 64)) Bool)

(declare-fun +!4339 (ListLongMap!19909 tuple2!22240) ListLongMap!19909)

(assert (=> b!1290220 (not (contains!8026 (+!4339 lt!578486 (tuple2!22241 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42629 0))(
  ( (Unit!42630) )
))
(declare-fun lt!578488 () Unit!42629)

(declare-fun addStillNotContains!384 (ListLongMap!19909 (_ BitVec 64) V!50773 (_ BitVec 64)) Unit!42629)

(assert (=> b!1290220 (= lt!578488 (addStillNotContains!384 lt!578486 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!50773)

(assert (=> b!1290220 (not (contains!8026 (+!4339 lt!578486 (tuple2!22241 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578487 () Unit!42629)

(assert (=> b!1290220 (= lt!578487 (addStillNotContains!384 lt!578486 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-datatypes ((ValueCell!16228 0))(
  ( (ValueCellFull!16228 (v!19802 V!50773)) (EmptyCell!16228) )
))
(declare-datatypes ((array!85507 0))(
  ( (array!85508 (arr!41250 (Array (_ BitVec 32) ValueCell!16228)) (size!41801 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85507)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6051 (array!85505 array!85507 (_ BitVec 32) (_ BitVec 32) V!50773 V!50773 (_ BitVec 32) Int) ListLongMap!19909)

(assert (=> b!1290220 (= lt!578486 (getCurrentListMapNoExtraKeys!6051 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290221 () Bool)

(declare-fun res!857199 () Bool)

(declare-fun e!736632 () Bool)

(assert (=> b!1290221 (=> (not res!857199) (not e!736632))))

(assert (=> b!1290221 (= res!857199 (and (= (size!41801 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41800 _keys!1741) (size!41801 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290222 () Bool)

(declare-fun res!857197 () Bool)

(assert (=> b!1290222 (=> (not res!857197) (not e!736632))))

(assert (=> b!1290222 (= res!857197 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41800 _keys!1741))))))

(declare-fun mapIsEmpty!52940 () Bool)

(declare-fun mapRes!52940 () Bool)

(assert (=> mapIsEmpty!52940 mapRes!52940))

(declare-fun b!1290223 () Bool)

(declare-fun res!857200 () Bool)

(assert (=> b!1290223 (=> (not res!857200) (not e!736632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290223 (= res!857200 (not (validKeyInArray!0 (select (arr!41249 _keys!1741) from!2144))))))

(declare-fun res!857198 () Bool)

(assert (=> start!109160 (=> (not res!857198) (not e!736632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109160 (= res!857198 (validMask!0 mask!2175))))

(assert (=> start!109160 e!736632))

(assert (=> start!109160 tp_is_empty!34253))

(assert (=> start!109160 true))

(declare-fun e!736630 () Bool)

(declare-fun array_inv!31239 (array!85507) Bool)

(assert (=> start!109160 (and (array_inv!31239 _values!1445) e!736630)))

(declare-fun array_inv!31240 (array!85505) Bool)

(assert (=> start!109160 (array_inv!31240 _keys!1741)))

(assert (=> start!109160 tp!100959))

(declare-fun b!1290224 () Bool)

(assert (=> b!1290224 (= e!736632 (not e!736629))))

(declare-fun res!857205 () Bool)

(assert (=> b!1290224 (=> res!857205 e!736629)))

(assert (=> b!1290224 (= res!857205 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290224 (not (contains!8026 (ListLongMap!19910 Nil!29433) k!1205))))

(declare-fun lt!578485 () Unit!42629)

(declare-fun emptyContainsNothing!75 ((_ BitVec 64)) Unit!42629)

(assert (=> b!1290224 (= lt!578485 (emptyContainsNothing!75 k!1205))))

(declare-fun b!1290225 () Bool)

(declare-fun e!736631 () Bool)

(assert (=> b!1290225 (= e!736631 tp_is_empty!34253)))

(declare-fun b!1290226 () Bool)

(declare-fun res!857204 () Bool)

(assert (=> b!1290226 (=> (not res!857204) (not e!736632))))

(declare-fun getCurrentListMap!4971 (array!85505 array!85507 (_ BitVec 32) (_ BitVec 32) V!50773 V!50773 (_ BitVec 32) Int) ListLongMap!19909)

(assert (=> b!1290226 (= res!857204 (contains!8026 (getCurrentListMap!4971 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1290227 () Bool)

(declare-fun res!857202 () Bool)

(assert (=> b!1290227 (=> (not res!857202) (not e!736632))))

(declare-datatypes ((List!29437 0))(
  ( (Nil!29434) (Cons!29433 (h!30642 (_ BitVec 64)) (t!43008 List!29437)) )
))
(declare-fun arrayNoDuplicates!0 (array!85505 (_ BitVec 32) List!29437) Bool)

(assert (=> b!1290227 (= res!857202 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29434))))

(declare-fun mapNonEmpty!52940 () Bool)

(declare-fun tp!100958 () Bool)

(assert (=> mapNonEmpty!52940 (= mapRes!52940 (and tp!100958 e!736633))))

(declare-fun mapValue!52940 () ValueCell!16228)

(declare-fun mapKey!52940 () (_ BitVec 32))

(declare-fun mapRest!52940 () (Array (_ BitVec 32) ValueCell!16228))

(assert (=> mapNonEmpty!52940 (= (arr!41250 _values!1445) (store mapRest!52940 mapKey!52940 mapValue!52940))))

(declare-fun b!1290228 () Bool)

(declare-fun res!857203 () Bool)

(assert (=> b!1290228 (=> (not res!857203) (not e!736632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85505 (_ BitVec 32)) Bool)

(assert (=> b!1290228 (= res!857203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290229 () Bool)

(declare-fun res!857201 () Bool)

(assert (=> b!1290229 (=> (not res!857201) (not e!736632))))

(assert (=> b!1290229 (= res!857201 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41800 _keys!1741))))))

(declare-fun b!1290230 () Bool)

(assert (=> b!1290230 (= e!736630 (and e!736631 mapRes!52940))))

(declare-fun condMapEmpty!52940 () Bool)

(declare-fun mapDefault!52940 () ValueCell!16228)

