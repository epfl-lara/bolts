; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110706 () Bool)

(assert start!110706)

(declare-fun b_free!29505 () Bool)

(declare-fun b_next!29505 () Bool)

(assert (=> start!110706 (= b_free!29505 (not b_next!29505))))

(declare-fun tp!103837 () Bool)

(declare-fun b_and!47723 () Bool)

(assert (=> start!110706 (= tp!103837 b_and!47723)))

(declare-fun b!1309422 () Bool)

(declare-fun e!747121 () Bool)

(declare-fun tp_is_empty!35235 () Bool)

(assert (=> b!1309422 (= e!747121 tp_is_empty!35235)))

(declare-fun res!869316 () Bool)

(declare-fun e!747122 () Bool)

(assert (=> start!110706 (=> (not res!869316) (not e!747122))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110706 (= res!869316 (validMask!0 mask!2040))))

(assert (=> start!110706 e!747122))

(assert (=> start!110706 tp!103837))

(declare-datatypes ((array!87427 0))(
  ( (array!87428 (arr!42189 (Array (_ BitVec 32) (_ BitVec 64))) (size!42740 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87427)

(declare-fun array_inv!31881 (array!87427) Bool)

(assert (=> start!110706 (array_inv!31881 _keys!1628)))

(assert (=> start!110706 true))

(assert (=> start!110706 tp_is_empty!35235))

(declare-datatypes ((V!52083 0))(
  ( (V!52084 (val!17692 Int)) )
))
(declare-datatypes ((ValueCell!16719 0))(
  ( (ValueCellFull!16719 (v!20317 V!52083)) (EmptyCell!16719) )
))
(declare-datatypes ((array!87429 0))(
  ( (array!87430 (arr!42190 (Array (_ BitVec 32) ValueCell!16719)) (size!42741 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87429)

(declare-fun e!747125 () Bool)

(declare-fun array_inv!31882 (array!87429) Bool)

(assert (=> start!110706 (and (array_inv!31882 _values!1354) e!747125)))

(declare-fun b!1309423 () Bool)

(declare-fun res!869315 () Bool)

(assert (=> b!1309423 (=> (not res!869315) (not e!747122))))

(declare-datatypes ((List!30119 0))(
  ( (Nil!30116) (Cons!30115 (h!31324 (_ BitVec 64)) (t!43732 List!30119)) )
))
(declare-fun arrayNoDuplicates!0 (array!87427 (_ BitVec 32) List!30119) Bool)

(assert (=> b!1309423 (= res!869315 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30116))))

(declare-fun b!1309424 () Bool)

(declare-fun e!747124 () Bool)

(assert (=> b!1309424 (= e!747124 tp_is_empty!35235)))

(declare-fun b!1309425 () Bool)

(declare-fun res!869314 () Bool)

(assert (=> b!1309425 (=> (not res!869314) (not e!747122))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309425 (= res!869314 (and (= (size!42741 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42740 _keys!1628) (size!42741 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309426 () Bool)

(assert (=> b!1309426 (= e!747122 false)))

(declare-fun lt!585208 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52083)

(declare-fun zeroValue!1296 () V!52083)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((tuple2!22950 0))(
  ( (tuple2!22951 (_1!11485 (_ BitVec 64)) (_2!11485 V!52083)) )
))
(declare-datatypes ((List!30120 0))(
  ( (Nil!30117) (Cons!30116 (h!31325 tuple2!22950) (t!43733 List!30120)) )
))
(declare-datatypes ((ListLongMap!20619 0))(
  ( (ListLongMap!20620 (toList!10325 List!30120)) )
))
(declare-fun contains!8411 (ListLongMap!20619 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5281 (array!87427 array!87429 (_ BitVec 32) (_ BitVec 32) V!52083 V!52083 (_ BitVec 32) Int) ListLongMap!20619)

(assert (=> b!1309426 (= lt!585208 (contains!8411 (getCurrentListMap!5281 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309427 () Bool)

(declare-fun res!869317 () Bool)

(assert (=> b!1309427 (=> (not res!869317) (not e!747122))))

(assert (=> b!1309427 (= res!869317 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42740 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309428 () Bool)

(declare-fun mapRes!54481 () Bool)

(assert (=> b!1309428 (= e!747125 (and e!747124 mapRes!54481))))

(declare-fun condMapEmpty!54481 () Bool)

(declare-fun mapDefault!54481 () ValueCell!16719)

(assert (=> b!1309428 (= condMapEmpty!54481 (= (arr!42190 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16719)) mapDefault!54481)))))

(declare-fun mapNonEmpty!54481 () Bool)

(declare-fun tp!103838 () Bool)

(assert (=> mapNonEmpty!54481 (= mapRes!54481 (and tp!103838 e!747121))))

(declare-fun mapRest!54481 () (Array (_ BitVec 32) ValueCell!16719))

(declare-fun mapValue!54481 () ValueCell!16719)

(declare-fun mapKey!54481 () (_ BitVec 32))

(assert (=> mapNonEmpty!54481 (= (arr!42190 _values!1354) (store mapRest!54481 mapKey!54481 mapValue!54481))))

(declare-fun mapIsEmpty!54481 () Bool)

(assert (=> mapIsEmpty!54481 mapRes!54481))

(declare-fun b!1309429 () Bool)

(declare-fun res!869318 () Bool)

(assert (=> b!1309429 (=> (not res!869318) (not e!747122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87427 (_ BitVec 32)) Bool)

(assert (=> b!1309429 (= res!869318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110706 res!869316) b!1309425))

(assert (= (and b!1309425 res!869314) b!1309429))

(assert (= (and b!1309429 res!869318) b!1309423))

(assert (= (and b!1309423 res!869315) b!1309427))

(assert (= (and b!1309427 res!869317) b!1309426))

(assert (= (and b!1309428 condMapEmpty!54481) mapIsEmpty!54481))

(assert (= (and b!1309428 (not condMapEmpty!54481)) mapNonEmpty!54481))

(get-info :version)

(assert (= (and mapNonEmpty!54481 ((_ is ValueCellFull!16719) mapValue!54481)) b!1309422))

(assert (= (and b!1309428 ((_ is ValueCellFull!16719) mapDefault!54481)) b!1309424))

(assert (= start!110706 b!1309428))

(declare-fun m!1199515 () Bool)

(assert (=> b!1309426 m!1199515))

(assert (=> b!1309426 m!1199515))

(declare-fun m!1199517 () Bool)

(assert (=> b!1309426 m!1199517))

(declare-fun m!1199519 () Bool)

(assert (=> mapNonEmpty!54481 m!1199519))

(declare-fun m!1199521 () Bool)

(assert (=> b!1309423 m!1199521))

(declare-fun m!1199523 () Bool)

(assert (=> b!1309429 m!1199523))

(declare-fun m!1199525 () Bool)

(assert (=> start!110706 m!1199525))

(declare-fun m!1199527 () Bool)

(assert (=> start!110706 m!1199527))

(declare-fun m!1199529 () Bool)

(assert (=> start!110706 m!1199529))

(check-sat (not b!1309426) (not mapNonEmpty!54481) (not b!1309429) b_and!47723 (not b!1309423) tp_is_empty!35235 (not b_next!29505) (not start!110706))
(check-sat b_and!47723 (not b_next!29505))
