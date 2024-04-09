; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109830 () Bool)

(assert start!109830)

(declare-fun b_free!29187 () Bool)

(declare-fun b_next!29187 () Bool)

(assert (=> start!109830 (= b_free!29187 (not b_next!29187))))

(declare-fun tp!102696 () Bool)

(declare-fun b_and!47311 () Bool)

(assert (=> start!109830 (= tp!102696 b_and!47311)))

(declare-fun b!1300422 () Bool)

(declare-fun res!864243 () Bool)

(declare-fun e!741832 () Bool)

(assert (=> b!1300422 (=> (not res!864243) (not e!741832))))

(declare-datatypes ((array!86627 0))(
  ( (array!86628 (arr!41805 (Array (_ BitVec 32) (_ BitVec 64))) (size!42356 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86627)

(declare-datatypes ((List!29864 0))(
  ( (Nil!29861) (Cons!29860 (h!31069 (_ BitVec 64)) (t!43445 List!29864)) )
))
(declare-fun arrayNoDuplicates!0 (array!86627 (_ BitVec 32) List!29864) Bool)

(assert (=> b!1300422 (= res!864243 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29861))))

(declare-fun mapIsEmpty!53816 () Bool)

(declare-fun mapRes!53816 () Bool)

(assert (=> mapIsEmpty!53816 mapRes!53816))

(declare-fun b!1300423 () Bool)

(declare-fun res!864244 () Bool)

(assert (=> b!1300423 (=> (not res!864244) (not e!741832))))

(declare-datatypes ((V!51539 0))(
  ( (V!51540 (val!17488 Int)) )
))
(declare-fun minValue!1387 () V!51539)

(declare-fun zeroValue!1387 () V!51539)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16515 0))(
  ( (ValueCellFull!16515 (v!20094 V!51539)) (EmptyCell!16515) )
))
(declare-datatypes ((array!86629 0))(
  ( (array!86630 (arr!41806 (Array (_ BitVec 32) ValueCell!16515)) (size!42357 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86629)

(declare-datatypes ((tuple2!22706 0))(
  ( (tuple2!22707 (_1!11363 (_ BitVec 64)) (_2!11363 V!51539)) )
))
(declare-datatypes ((List!29865 0))(
  ( (Nil!29862) (Cons!29861 (h!31070 tuple2!22706) (t!43446 List!29865)) )
))
(declare-datatypes ((ListLongMap!20375 0))(
  ( (ListLongMap!20376 (toList!10203 List!29865)) )
))
(declare-fun contains!8265 (ListLongMap!20375 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5176 (array!86627 array!86629 (_ BitVec 32) (_ BitVec 32) V!51539 V!51539 (_ BitVec 32) Int) ListLongMap!20375)

(assert (=> b!1300423 (= res!864244 (contains!8265 (getCurrentListMap!5176 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1300424 () Bool)

(assert (=> b!1300424 (= e!741832 false)))

(declare-fun lt!581335 () Bool)

(declare-fun +!4430 (ListLongMap!20375 tuple2!22706) ListLongMap!20375)

(declare-fun getCurrentListMapNoExtraKeys!6143 (array!86627 array!86629 (_ BitVec 32) (_ BitVec 32) V!51539 V!51539 (_ BitVec 32) Int) ListLongMap!20375)

(assert (=> b!1300424 (= lt!581335 (contains!8265 (+!4430 (getCurrentListMapNoExtraKeys!6143 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22707 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun b!1300425 () Bool)

(declare-fun res!864237 () Bool)

(assert (=> b!1300425 (=> (not res!864237) (not e!741832))))

(assert (=> b!1300425 (= res!864237 (and (= (size!42357 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42356 _keys!1741) (size!42357 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!864240 () Bool)

(assert (=> start!109830 (=> (not res!864240) (not e!741832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109830 (= res!864240 (validMask!0 mask!2175))))

(assert (=> start!109830 e!741832))

(declare-fun tp_is_empty!34827 () Bool)

(assert (=> start!109830 tp_is_empty!34827))

(assert (=> start!109830 true))

(declare-fun e!741831 () Bool)

(declare-fun array_inv!31629 (array!86629) Bool)

(assert (=> start!109830 (and (array_inv!31629 _values!1445) e!741831)))

(declare-fun array_inv!31630 (array!86627) Bool)

(assert (=> start!109830 (array_inv!31630 _keys!1741)))

(assert (=> start!109830 tp!102696))

(declare-fun b!1300426 () Bool)

(declare-fun e!741828 () Bool)

(assert (=> b!1300426 (= e!741831 (and e!741828 mapRes!53816))))

(declare-fun condMapEmpty!53816 () Bool)

(declare-fun mapDefault!53816 () ValueCell!16515)

(assert (=> b!1300426 (= condMapEmpty!53816 (= (arr!41806 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16515)) mapDefault!53816)))))

(declare-fun b!1300427 () Bool)

(declare-fun res!864238 () Bool)

(assert (=> b!1300427 (=> (not res!864238) (not e!741832))))

(assert (=> b!1300427 (= res!864238 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42356 _keys!1741))))))

(declare-fun b!1300428 () Bool)

(declare-fun res!864241 () Bool)

(assert (=> b!1300428 (=> (not res!864241) (not e!741832))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300428 (= res!864241 (validKeyInArray!0 (select (arr!41805 _keys!1741) from!2144)))))

(declare-fun mapNonEmpty!53816 () Bool)

(declare-fun tp!102695 () Bool)

(declare-fun e!741829 () Bool)

(assert (=> mapNonEmpty!53816 (= mapRes!53816 (and tp!102695 e!741829))))

(declare-fun mapRest!53816 () (Array (_ BitVec 32) ValueCell!16515))

(declare-fun mapValue!53816 () ValueCell!16515)

(declare-fun mapKey!53816 () (_ BitVec 32))

(assert (=> mapNonEmpty!53816 (= (arr!41806 _values!1445) (store mapRest!53816 mapKey!53816 mapValue!53816))))

(declare-fun b!1300429 () Bool)

(declare-fun res!864239 () Bool)

(assert (=> b!1300429 (=> (not res!864239) (not e!741832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86627 (_ BitVec 32)) Bool)

(assert (=> b!1300429 (= res!864239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1300430 () Bool)

(assert (=> b!1300430 (= e!741829 tp_is_empty!34827)))

(declare-fun b!1300431 () Bool)

(declare-fun res!864242 () Bool)

(assert (=> b!1300431 (=> (not res!864242) (not e!741832))))

(assert (=> b!1300431 (= res!864242 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1300432 () Bool)

(declare-fun res!864245 () Bool)

(assert (=> b!1300432 (=> (not res!864245) (not e!741832))))

(assert (=> b!1300432 (= res!864245 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42356 _keys!1741))))))

(declare-fun b!1300433 () Bool)

(assert (=> b!1300433 (= e!741828 tp_is_empty!34827)))

(assert (= (and start!109830 res!864240) b!1300425))

(assert (= (and b!1300425 res!864237) b!1300429))

(assert (= (and b!1300429 res!864239) b!1300422))

(assert (= (and b!1300422 res!864243) b!1300427))

(assert (= (and b!1300427 res!864238) b!1300423))

(assert (= (and b!1300423 res!864244) b!1300432))

(assert (= (and b!1300432 res!864245) b!1300428))

(assert (= (and b!1300428 res!864241) b!1300431))

(assert (= (and b!1300431 res!864242) b!1300424))

(assert (= (and b!1300426 condMapEmpty!53816) mapIsEmpty!53816))

(assert (= (and b!1300426 (not condMapEmpty!53816)) mapNonEmpty!53816))

(get-info :version)

(assert (= (and mapNonEmpty!53816 ((_ is ValueCellFull!16515) mapValue!53816)) b!1300430))

(assert (= (and b!1300426 ((_ is ValueCellFull!16515) mapDefault!53816)) b!1300433))

(assert (= start!109830 b!1300426))

(declare-fun m!1191375 () Bool)

(assert (=> b!1300422 m!1191375))

(declare-fun m!1191377 () Bool)

(assert (=> mapNonEmpty!53816 m!1191377))

(declare-fun m!1191379 () Bool)

(assert (=> b!1300429 m!1191379))

(declare-fun m!1191381 () Bool)

(assert (=> start!109830 m!1191381))

(declare-fun m!1191383 () Bool)

(assert (=> start!109830 m!1191383))

(declare-fun m!1191385 () Bool)

(assert (=> start!109830 m!1191385))

(declare-fun m!1191387 () Bool)

(assert (=> b!1300424 m!1191387))

(assert (=> b!1300424 m!1191387))

(declare-fun m!1191389 () Bool)

(assert (=> b!1300424 m!1191389))

(assert (=> b!1300424 m!1191389))

(declare-fun m!1191391 () Bool)

(assert (=> b!1300424 m!1191391))

(declare-fun m!1191393 () Bool)

(assert (=> b!1300428 m!1191393))

(assert (=> b!1300428 m!1191393))

(declare-fun m!1191395 () Bool)

(assert (=> b!1300428 m!1191395))

(declare-fun m!1191397 () Bool)

(assert (=> b!1300423 m!1191397))

(assert (=> b!1300423 m!1191397))

(declare-fun m!1191399 () Bool)

(assert (=> b!1300423 m!1191399))

(check-sat (not b!1300428) tp_is_empty!34827 (not b!1300424) (not b!1300423) b_and!47311 (not mapNonEmpty!53816) (not start!109830) (not b_next!29187) (not b!1300429) (not b!1300422))
(check-sat b_and!47311 (not b_next!29187))
