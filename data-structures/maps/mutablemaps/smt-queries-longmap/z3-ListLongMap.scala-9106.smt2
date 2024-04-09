; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109458 () Bool)

(assert start!109458)

(declare-fun b_free!28911 () Bool)

(declare-fun b_next!28911 () Bool)

(assert (=> start!109458 (= b_free!28911 (not b_next!28911))))

(declare-fun tp!101853 () Bool)

(declare-fun b_and!47011 () Bool)

(assert (=> start!109458 (= tp!101853 b_and!47011)))

(declare-fun mapIsEmpty!53387 () Bool)

(declare-fun mapRes!53387 () Bool)

(assert (=> mapIsEmpty!53387 mapRes!53387))

(declare-fun b!1295421 () Bool)

(declare-fun res!861062 () Bool)

(declare-fun e!739153 () Bool)

(assert (=> b!1295421 (=> (not res!861062) (not e!739153))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86085 0))(
  ( (array!86086 (arr!41539 (Array (_ BitVec 32) (_ BitVec 64))) (size!42090 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86085)

(assert (=> b!1295421 (= res!861062 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42090 _keys!1741))))))

(declare-fun b!1295422 () Bool)

(declare-fun e!739152 () Bool)

(assert (=> b!1295422 (= e!739152 true)))

(declare-datatypes ((V!51171 0))(
  ( (V!51172 (val!17350 Int)) )
))
(declare-datatypes ((tuple2!22492 0))(
  ( (tuple2!22493 (_1!11256 (_ BitVec 64)) (_2!11256 V!51171)) )
))
(declare-datatypes ((List!29660 0))(
  ( (Nil!29657) (Cons!29656 (h!30865 tuple2!22492) (t!43231 List!29660)) )
))
(declare-datatypes ((ListLongMap!20161 0))(
  ( (ListLongMap!20162 (toList!10096 List!29660)) )
))
(declare-fun lt!579855 () ListLongMap!20161)

(declare-fun minValue!1387 () V!51171)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8152 (ListLongMap!20161 (_ BitVec 64)) Bool)

(declare-fun +!4398 (ListLongMap!20161 tuple2!22492) ListLongMap!20161)

(assert (=> b!1295422 (not (contains!8152 (+!4398 lt!579855 (tuple2!22493 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42857 0))(
  ( (Unit!42858) )
))
(declare-fun lt!579856 () Unit!42857)

(declare-fun addStillNotContains!443 (ListLongMap!20161 (_ BitVec 64) V!51171 (_ BitVec 64)) Unit!42857)

(assert (=> b!1295422 (= lt!579856 (addStillNotContains!443 lt!579855 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!51171)

(declare-datatypes ((ValueCell!16377 0))(
  ( (ValueCellFull!16377 (v!19951 V!51171)) (EmptyCell!16377) )
))
(declare-datatypes ((array!86087 0))(
  ( (array!86088 (arr!41540 (Array (_ BitVec 32) ValueCell!16377)) (size!42091 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86087)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6114 (array!86085 array!86087 (_ BitVec 32) (_ BitVec 32) V!51171 V!51171 (_ BitVec 32) Int) ListLongMap!20161)

(assert (=> b!1295422 (= lt!579855 (getCurrentListMapNoExtraKeys!6114 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295423 () Bool)

(declare-fun e!739150 () Bool)

(declare-fun tp_is_empty!34551 () Bool)

(assert (=> b!1295423 (= e!739150 tp_is_empty!34551)))

(declare-fun b!1295425 () Bool)

(declare-fun res!861059 () Bool)

(assert (=> b!1295425 (=> (not res!861059) (not e!739153))))

(declare-datatypes ((List!29661 0))(
  ( (Nil!29658) (Cons!29657 (h!30866 (_ BitVec 64)) (t!43232 List!29661)) )
))
(declare-fun arrayNoDuplicates!0 (array!86085 (_ BitVec 32) List!29661) Bool)

(assert (=> b!1295425 (= res!861059 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29658))))

(declare-fun mapNonEmpty!53387 () Bool)

(declare-fun tp!101852 () Bool)

(assert (=> mapNonEmpty!53387 (= mapRes!53387 (and tp!101852 e!739150))))

(declare-fun mapKey!53387 () (_ BitVec 32))

(declare-fun mapValue!53387 () ValueCell!16377)

(declare-fun mapRest!53387 () (Array (_ BitVec 32) ValueCell!16377))

(assert (=> mapNonEmpty!53387 (= (arr!41540 _values!1445) (store mapRest!53387 mapKey!53387 mapValue!53387))))

(declare-fun b!1295426 () Bool)

(declare-fun res!861060 () Bool)

(assert (=> b!1295426 (=> (not res!861060) (not e!739153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295426 (= res!861060 (not (validKeyInArray!0 (select (arr!41539 _keys!1741) from!2144))))))

(declare-fun b!1295427 () Bool)

(declare-fun e!739149 () Bool)

(declare-fun e!739148 () Bool)

(assert (=> b!1295427 (= e!739149 (and e!739148 mapRes!53387))))

(declare-fun condMapEmpty!53387 () Bool)

(declare-fun mapDefault!53387 () ValueCell!16377)

(assert (=> b!1295427 (= condMapEmpty!53387 (= (arr!41540 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16377)) mapDefault!53387)))))

(declare-fun b!1295428 () Bool)

(declare-fun res!861065 () Bool)

(assert (=> b!1295428 (=> (not res!861065) (not e!739153))))

(assert (=> b!1295428 (= res!861065 (and (= (size!42091 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42090 _keys!1741) (size!42091 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295429 () Bool)

(declare-fun res!861066 () Bool)

(assert (=> b!1295429 (=> (not res!861066) (not e!739153))))

(assert (=> b!1295429 (= res!861066 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42090 _keys!1741))))))

(declare-fun b!1295430 () Bool)

(assert (=> b!1295430 (= e!739153 (not e!739152))))

(declare-fun res!861058 () Bool)

(assert (=> b!1295430 (=> res!861058 e!739152)))

(assert (=> b!1295430 (= res!861058 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295430 (not (contains!8152 (ListLongMap!20162 Nil!29657) k0!1205))))

(declare-fun lt!579854 () Unit!42857)

(declare-fun emptyContainsNothing!184 ((_ BitVec 64)) Unit!42857)

(assert (=> b!1295430 (= lt!579854 (emptyContainsNothing!184 k0!1205))))

(declare-fun b!1295431 () Bool)

(declare-fun res!861063 () Bool)

(assert (=> b!1295431 (=> (not res!861063) (not e!739153))))

(declare-fun getCurrentListMap!5076 (array!86085 array!86087 (_ BitVec 32) (_ BitVec 32) V!51171 V!51171 (_ BitVec 32) Int) ListLongMap!20161)

(assert (=> b!1295431 (= res!861063 (contains!8152 (getCurrentListMap!5076 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1295432 () Bool)

(assert (=> b!1295432 (= e!739148 tp_is_empty!34551)))

(declare-fun res!861061 () Bool)

(assert (=> start!109458 (=> (not res!861061) (not e!739153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109458 (= res!861061 (validMask!0 mask!2175))))

(assert (=> start!109458 e!739153))

(assert (=> start!109458 tp_is_empty!34551))

(assert (=> start!109458 true))

(declare-fun array_inv!31437 (array!86087) Bool)

(assert (=> start!109458 (and (array_inv!31437 _values!1445) e!739149)))

(declare-fun array_inv!31438 (array!86085) Bool)

(assert (=> start!109458 (array_inv!31438 _keys!1741)))

(assert (=> start!109458 tp!101853))

(declare-fun b!1295424 () Bool)

(declare-fun res!861064 () Bool)

(assert (=> b!1295424 (=> (not res!861064) (not e!739153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86085 (_ BitVec 32)) Bool)

(assert (=> b!1295424 (= res!861064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109458 res!861061) b!1295428))

(assert (= (and b!1295428 res!861065) b!1295424))

(assert (= (and b!1295424 res!861064) b!1295425))

(assert (= (and b!1295425 res!861059) b!1295421))

(assert (= (and b!1295421 res!861062) b!1295431))

(assert (= (and b!1295431 res!861063) b!1295429))

(assert (= (and b!1295429 res!861066) b!1295426))

(assert (= (and b!1295426 res!861060) b!1295430))

(assert (= (and b!1295430 (not res!861058)) b!1295422))

(assert (= (and b!1295427 condMapEmpty!53387) mapIsEmpty!53387))

(assert (= (and b!1295427 (not condMapEmpty!53387)) mapNonEmpty!53387))

(get-info :version)

(assert (= (and mapNonEmpty!53387 ((_ is ValueCellFull!16377) mapValue!53387)) b!1295423))

(assert (= (and b!1295427 ((_ is ValueCellFull!16377) mapDefault!53387)) b!1295432))

(assert (= start!109458 b!1295427))

(declare-fun m!1187473 () Bool)

(assert (=> b!1295426 m!1187473))

(assert (=> b!1295426 m!1187473))

(declare-fun m!1187475 () Bool)

(assert (=> b!1295426 m!1187475))

(declare-fun m!1187477 () Bool)

(assert (=> start!109458 m!1187477))

(declare-fun m!1187479 () Bool)

(assert (=> start!109458 m!1187479))

(declare-fun m!1187481 () Bool)

(assert (=> start!109458 m!1187481))

(declare-fun m!1187483 () Bool)

(assert (=> b!1295430 m!1187483))

(declare-fun m!1187485 () Bool)

(assert (=> b!1295430 m!1187485))

(declare-fun m!1187487 () Bool)

(assert (=> b!1295425 m!1187487))

(declare-fun m!1187489 () Bool)

(assert (=> mapNonEmpty!53387 m!1187489))

(declare-fun m!1187491 () Bool)

(assert (=> b!1295431 m!1187491))

(assert (=> b!1295431 m!1187491))

(declare-fun m!1187493 () Bool)

(assert (=> b!1295431 m!1187493))

(declare-fun m!1187495 () Bool)

(assert (=> b!1295424 m!1187495))

(declare-fun m!1187497 () Bool)

(assert (=> b!1295422 m!1187497))

(assert (=> b!1295422 m!1187497))

(declare-fun m!1187499 () Bool)

(assert (=> b!1295422 m!1187499))

(declare-fun m!1187501 () Bool)

(assert (=> b!1295422 m!1187501))

(declare-fun m!1187503 () Bool)

(assert (=> b!1295422 m!1187503))

(check-sat (not b!1295422) tp_is_empty!34551 (not b!1295431) (not b!1295430) (not mapNonEmpty!53387) (not start!109458) (not b!1295424) (not b!1295425) b_and!47011 (not b!1295426) (not b_next!28911))
(check-sat b_and!47011 (not b_next!28911))
