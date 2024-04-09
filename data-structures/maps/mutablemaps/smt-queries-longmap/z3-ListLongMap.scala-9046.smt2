; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109098 () Bool)

(assert start!109098)

(declare-fun b_free!28551 () Bool)

(declare-fun b_next!28551 () Bool)

(assert (=> start!109098 (= b_free!28551 (not b_next!28551))))

(declare-fun tp!100772 () Bool)

(declare-fun b_and!46651 () Bool)

(assert (=> start!109098 (= tp!100772 b_and!46651)))

(declare-fun b!1289103 () Bool)

(declare-fun res!856367 () Bool)

(declare-fun e!736071 () Bool)

(assert (=> b!1289103 (=> (not res!856367) (not e!736071))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50691 0))(
  ( (V!50692 (val!17170 Int)) )
))
(declare-datatypes ((ValueCell!16197 0))(
  ( (ValueCellFull!16197 (v!19771 V!50691)) (EmptyCell!16197) )
))
(declare-datatypes ((array!85381 0))(
  ( (array!85382 (arr!41187 (Array (_ BitVec 32) ValueCell!16197)) (size!41738 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85381)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85383 0))(
  ( (array!85384 (arr!41188 (Array (_ BitVec 32) (_ BitVec 64))) (size!41739 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85383)

(assert (=> b!1289103 (= res!856367 (and (= (size!41738 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41739 _keys!1741) (size!41738 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52847 () Bool)

(declare-fun mapRes!52847 () Bool)

(assert (=> mapIsEmpty!52847 mapRes!52847))

(declare-fun b!1289104 () Bool)

(declare-fun res!856362 () Bool)

(assert (=> b!1289104 (=> (not res!856362) (not e!736071))))

(declare-datatypes ((List!29381 0))(
  ( (Nil!29378) (Cons!29377 (h!30586 (_ BitVec 64)) (t!42952 List!29381)) )
))
(declare-fun arrayNoDuplicates!0 (array!85383 (_ BitVec 32) List!29381) Bool)

(assert (=> b!1289104 (= res!856362 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29378))))

(declare-fun b!1289105 () Bool)

(declare-fun res!856366 () Bool)

(assert (=> b!1289105 (=> (not res!856366) (not e!736071))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1289105 (= res!856366 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41739 _keys!1741))))))

(declare-fun b!1289106 () Bool)

(declare-fun e!736070 () Bool)

(declare-fun e!736075 () Bool)

(assert (=> b!1289106 (= e!736070 (and e!736075 mapRes!52847))))

(declare-fun condMapEmpty!52847 () Bool)

(declare-fun mapDefault!52847 () ValueCell!16197)

(assert (=> b!1289106 (= condMapEmpty!52847 (= (arr!41187 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16197)) mapDefault!52847)))))

(declare-fun res!856363 () Bool)

(assert (=> start!109098 (=> (not res!856363) (not e!736071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109098 (= res!856363 (validMask!0 mask!2175))))

(assert (=> start!109098 e!736071))

(declare-fun tp_is_empty!34191 () Bool)

(assert (=> start!109098 tp_is_empty!34191))

(assert (=> start!109098 true))

(declare-fun array_inv!31197 (array!85381) Bool)

(assert (=> start!109098 (and (array_inv!31197 _values!1445) e!736070)))

(declare-fun array_inv!31198 (array!85383) Bool)

(assert (=> start!109098 (array_inv!31198 _keys!1741)))

(assert (=> start!109098 tp!100772))

(declare-fun b!1289107 () Bool)

(declare-fun e!736072 () Bool)

(assert (=> b!1289107 (= e!736072 (bvsle from!2144 (size!41739 _keys!1741)))))

(declare-datatypes ((tuple2!22182 0))(
  ( (tuple2!22183 (_1!11101 (_ BitVec 64)) (_2!11101 V!50691)) )
))
(declare-datatypes ((List!29382 0))(
  ( (Nil!29379) (Cons!29378 (h!30587 tuple2!22182) (t!42953 List!29382)) )
))
(declare-datatypes ((ListLongMap!19851 0))(
  ( (ListLongMap!19852 (toList!9941 List!29382)) )
))
(declare-fun lt!578118 () ListLongMap!19851)

(declare-fun zeroValue!1387 () V!50691)

(declare-fun contains!7997 (ListLongMap!19851 (_ BitVec 64)) Bool)

(declare-fun +!4314 (ListLongMap!19851 tuple2!22182) ListLongMap!19851)

(assert (=> b!1289107 (not (contains!7997 (+!4314 lt!578118 (tuple2!22183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42577 0))(
  ( (Unit!42578) )
))
(declare-fun lt!578119 () Unit!42577)

(declare-fun addStillNotContains!359 (ListLongMap!19851 (_ BitVec 64) V!50691 (_ BitVec 64)) Unit!42577)

(assert (=> b!1289107 (= lt!578119 (addStillNotContains!359 lt!578118 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50691)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6026 (array!85383 array!85381 (_ BitVec 32) (_ BitVec 32) V!50691 V!50691 (_ BitVec 32) Int) ListLongMap!19851)

(assert (=> b!1289107 (= lt!578118 (getCurrentListMapNoExtraKeys!6026 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289108 () Bool)

(declare-fun res!856368 () Bool)

(assert (=> b!1289108 (=> (not res!856368) (not e!736071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289108 (= res!856368 (not (validKeyInArray!0 (select (arr!41188 _keys!1741) from!2144))))))

(declare-fun b!1289109 () Bool)

(declare-fun res!856364 () Bool)

(assert (=> b!1289109 (=> (not res!856364) (not e!736071))))

(declare-fun getCurrentListMap!4944 (array!85383 array!85381 (_ BitVec 32) (_ BitVec 32) V!50691 V!50691 (_ BitVec 32) Int) ListLongMap!19851)

(assert (=> b!1289109 (= res!856364 (contains!7997 (getCurrentListMap!4944 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1289110 () Bool)

(assert (=> b!1289110 (= e!736071 (not e!736072))))

(declare-fun res!856360 () Bool)

(assert (=> b!1289110 (=> res!856360 e!736072)))

(assert (=> b!1289110 (= res!856360 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289110 (not (contains!7997 (ListLongMap!19852 Nil!29379) k0!1205))))

(declare-fun lt!578117 () Unit!42577)

(declare-fun emptyContainsNothing!53 ((_ BitVec 64)) Unit!42577)

(assert (=> b!1289110 (= lt!578117 (emptyContainsNothing!53 k0!1205))))

(declare-fun b!1289111 () Bool)

(declare-fun res!856361 () Bool)

(assert (=> b!1289111 (=> (not res!856361) (not e!736071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85383 (_ BitVec 32)) Bool)

(assert (=> b!1289111 (= res!856361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289112 () Bool)

(assert (=> b!1289112 (= e!736075 tp_is_empty!34191)))

(declare-fun b!1289113 () Bool)

(declare-fun res!856365 () Bool)

(assert (=> b!1289113 (=> (not res!856365) (not e!736071))))

(assert (=> b!1289113 (= res!856365 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41739 _keys!1741))))))

(declare-fun b!1289114 () Bool)

(declare-fun e!736073 () Bool)

(assert (=> b!1289114 (= e!736073 tp_is_empty!34191)))

(declare-fun mapNonEmpty!52847 () Bool)

(declare-fun tp!100773 () Bool)

(assert (=> mapNonEmpty!52847 (= mapRes!52847 (and tp!100773 e!736073))))

(declare-fun mapRest!52847 () (Array (_ BitVec 32) ValueCell!16197))

(declare-fun mapKey!52847 () (_ BitVec 32))

(declare-fun mapValue!52847 () ValueCell!16197)

(assert (=> mapNonEmpty!52847 (= (arr!41187 _values!1445) (store mapRest!52847 mapKey!52847 mapValue!52847))))

(assert (= (and start!109098 res!856363) b!1289103))

(assert (= (and b!1289103 res!856367) b!1289111))

(assert (= (and b!1289111 res!856361) b!1289104))

(assert (= (and b!1289104 res!856362) b!1289113))

(assert (= (and b!1289113 res!856365) b!1289109))

(assert (= (and b!1289109 res!856364) b!1289105))

(assert (= (and b!1289105 res!856366) b!1289108))

(assert (= (and b!1289108 res!856368) b!1289110))

(assert (= (and b!1289110 (not res!856360)) b!1289107))

(assert (= (and b!1289106 condMapEmpty!52847) mapIsEmpty!52847))

(assert (= (and b!1289106 (not condMapEmpty!52847)) mapNonEmpty!52847))

(get-info :version)

(assert (= (and mapNonEmpty!52847 ((_ is ValueCellFull!16197) mapValue!52847)) b!1289114))

(assert (= (and b!1289106 ((_ is ValueCellFull!16197) mapDefault!52847)) b!1289112))

(assert (= start!109098 b!1289106))

(declare-fun m!1181677 () Bool)

(assert (=> b!1289108 m!1181677))

(assert (=> b!1289108 m!1181677))

(declare-fun m!1181679 () Bool)

(assert (=> b!1289108 m!1181679))

(declare-fun m!1181681 () Bool)

(assert (=> b!1289104 m!1181681))

(declare-fun m!1181683 () Bool)

(assert (=> b!1289111 m!1181683))

(declare-fun m!1181685 () Bool)

(assert (=> b!1289110 m!1181685))

(declare-fun m!1181687 () Bool)

(assert (=> b!1289110 m!1181687))

(declare-fun m!1181689 () Bool)

(assert (=> start!109098 m!1181689))

(declare-fun m!1181691 () Bool)

(assert (=> start!109098 m!1181691))

(declare-fun m!1181693 () Bool)

(assert (=> start!109098 m!1181693))

(declare-fun m!1181695 () Bool)

(assert (=> b!1289109 m!1181695))

(assert (=> b!1289109 m!1181695))

(declare-fun m!1181697 () Bool)

(assert (=> b!1289109 m!1181697))

(declare-fun m!1181699 () Bool)

(assert (=> mapNonEmpty!52847 m!1181699))

(declare-fun m!1181701 () Bool)

(assert (=> b!1289107 m!1181701))

(assert (=> b!1289107 m!1181701))

(declare-fun m!1181703 () Bool)

(assert (=> b!1289107 m!1181703))

(declare-fun m!1181705 () Bool)

(assert (=> b!1289107 m!1181705))

(declare-fun m!1181707 () Bool)

(assert (=> b!1289107 m!1181707))

(check-sat (not b!1289104) (not b!1289110) b_and!46651 (not start!109098) (not b!1289107) (not b!1289111) (not b!1289108) (not b!1289109) (not mapNonEmpty!52847) tp_is_empty!34191 (not b_next!28551))
(check-sat b_and!46651 (not b_next!28551))
