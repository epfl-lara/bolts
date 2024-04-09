; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110718 () Bool)

(assert start!110718)

(declare-fun b_free!29517 () Bool)

(declare-fun b_next!29517 () Bool)

(assert (=> start!110718 (= b_free!29517 (not b_next!29517))))

(declare-fun tp!103873 () Bool)

(declare-fun b_and!47735 () Bool)

(assert (=> start!110718 (= tp!103873 b_and!47735)))

(declare-fun b!1309566 () Bool)

(declare-fun res!869406 () Bool)

(declare-fun e!747212 () Bool)

(assert (=> b!1309566 (=> (not res!869406) (not e!747212))))

(declare-datatypes ((array!87451 0))(
  ( (array!87452 (arr!42201 (Array (_ BitVec 32) (_ BitVec 64))) (size!42752 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87451)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87451 (_ BitVec 32)) Bool)

(assert (=> b!1309566 (= res!869406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309567 () Bool)

(declare-fun e!747215 () Bool)

(declare-fun e!747211 () Bool)

(declare-fun mapRes!54499 () Bool)

(assert (=> b!1309567 (= e!747215 (and e!747211 mapRes!54499))))

(declare-fun condMapEmpty!54499 () Bool)

(declare-datatypes ((V!52099 0))(
  ( (V!52100 (val!17698 Int)) )
))
(declare-datatypes ((ValueCell!16725 0))(
  ( (ValueCellFull!16725 (v!20323 V!52099)) (EmptyCell!16725) )
))
(declare-datatypes ((array!87453 0))(
  ( (array!87454 (arr!42202 (Array (_ BitVec 32) ValueCell!16725)) (size!42753 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87453)

(declare-fun mapDefault!54499 () ValueCell!16725)

(assert (=> b!1309567 (= condMapEmpty!54499 (= (arr!42202 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16725)) mapDefault!54499)))))

(declare-fun b!1309568 () Bool)

(declare-fun res!869408 () Bool)

(assert (=> b!1309568 (=> (not res!869408) (not e!747212))))

(declare-datatypes ((List!30126 0))(
  ( (Nil!30123) (Cons!30122 (h!31331 (_ BitVec 64)) (t!43739 List!30126)) )
))
(declare-fun arrayNoDuplicates!0 (array!87451 (_ BitVec 32) List!30126) Bool)

(assert (=> b!1309568 (= res!869408 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30123))))

(declare-fun b!1309569 () Bool)

(declare-fun tp_is_empty!35247 () Bool)

(assert (=> b!1309569 (= e!747211 tp_is_empty!35247)))

(declare-fun b!1309570 () Bool)

(assert (=> b!1309570 (= e!747212 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52099)

(declare-fun zeroValue!1296 () V!52099)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585226 () Bool)

(declare-datatypes ((tuple2!22960 0))(
  ( (tuple2!22961 (_1!11490 (_ BitVec 64)) (_2!11490 V!52099)) )
))
(declare-datatypes ((List!30127 0))(
  ( (Nil!30124) (Cons!30123 (h!31332 tuple2!22960) (t!43740 List!30127)) )
))
(declare-datatypes ((ListLongMap!20629 0))(
  ( (ListLongMap!20630 (toList!10330 List!30127)) )
))
(declare-fun contains!8416 (ListLongMap!20629 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5286 (array!87451 array!87453 (_ BitVec 32) (_ BitVec 32) V!52099 V!52099 (_ BitVec 32) Int) ListLongMap!20629)

(assert (=> b!1309570 (= lt!585226 (contains!8416 (getCurrentListMap!5286 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1309571 () Bool)

(declare-fun res!869407 () Bool)

(assert (=> b!1309571 (=> (not res!869407) (not e!747212))))

(assert (=> b!1309571 (= res!869407 (and (= (size!42753 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42752 _keys!1628) (size!42753 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!869404 () Bool)

(assert (=> start!110718 (=> (not res!869404) (not e!747212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110718 (= res!869404 (validMask!0 mask!2040))))

(assert (=> start!110718 e!747212))

(assert (=> start!110718 tp!103873))

(declare-fun array_inv!31887 (array!87451) Bool)

(assert (=> start!110718 (array_inv!31887 _keys!1628)))

(assert (=> start!110718 true))

(assert (=> start!110718 tp_is_empty!35247))

(declare-fun array_inv!31888 (array!87453) Bool)

(assert (=> start!110718 (and (array_inv!31888 _values!1354) e!747215)))

(declare-fun b!1309572 () Bool)

(declare-fun res!869405 () Bool)

(assert (=> b!1309572 (=> (not res!869405) (not e!747212))))

(assert (=> b!1309572 (= res!869405 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42752 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309573 () Bool)

(declare-fun e!747214 () Bool)

(assert (=> b!1309573 (= e!747214 tp_is_empty!35247)))

(declare-fun mapIsEmpty!54499 () Bool)

(assert (=> mapIsEmpty!54499 mapRes!54499))

(declare-fun mapNonEmpty!54499 () Bool)

(declare-fun tp!103874 () Bool)

(assert (=> mapNonEmpty!54499 (= mapRes!54499 (and tp!103874 e!747214))))

(declare-fun mapRest!54499 () (Array (_ BitVec 32) ValueCell!16725))

(declare-fun mapValue!54499 () ValueCell!16725)

(declare-fun mapKey!54499 () (_ BitVec 32))

(assert (=> mapNonEmpty!54499 (= (arr!42202 _values!1354) (store mapRest!54499 mapKey!54499 mapValue!54499))))

(assert (= (and start!110718 res!869404) b!1309571))

(assert (= (and b!1309571 res!869407) b!1309566))

(assert (= (and b!1309566 res!869406) b!1309568))

(assert (= (and b!1309568 res!869408) b!1309572))

(assert (= (and b!1309572 res!869405) b!1309570))

(assert (= (and b!1309567 condMapEmpty!54499) mapIsEmpty!54499))

(assert (= (and b!1309567 (not condMapEmpty!54499)) mapNonEmpty!54499))

(get-info :version)

(assert (= (and mapNonEmpty!54499 ((_ is ValueCellFull!16725) mapValue!54499)) b!1309573))

(assert (= (and b!1309567 ((_ is ValueCellFull!16725) mapDefault!54499)) b!1309569))

(assert (= start!110718 b!1309567))

(declare-fun m!1199611 () Bool)

(assert (=> b!1309568 m!1199611))

(declare-fun m!1199613 () Bool)

(assert (=> mapNonEmpty!54499 m!1199613))

(declare-fun m!1199615 () Bool)

(assert (=> b!1309566 m!1199615))

(declare-fun m!1199617 () Bool)

(assert (=> b!1309570 m!1199617))

(assert (=> b!1309570 m!1199617))

(declare-fun m!1199619 () Bool)

(assert (=> b!1309570 m!1199619))

(declare-fun m!1199621 () Bool)

(assert (=> start!110718 m!1199621))

(declare-fun m!1199623 () Bool)

(assert (=> start!110718 m!1199623))

(declare-fun m!1199625 () Bool)

(assert (=> start!110718 m!1199625))

(check-sat (not b!1309568) (not mapNonEmpty!54499) b_and!47735 (not b_next!29517) (not start!110718) (not b!1309570) tp_is_empty!35247 (not b!1309566))
(check-sat b_and!47735 (not b_next!29517))
