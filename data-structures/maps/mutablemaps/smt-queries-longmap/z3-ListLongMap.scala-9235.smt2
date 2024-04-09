; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110796 () Bool)

(assert start!110796)

(declare-fun b_free!29595 () Bool)

(declare-fun b_next!29595 () Bool)

(assert (=> start!110796 (= b_free!29595 (not b_next!29595))))

(declare-fun tp!104108 () Bool)

(declare-fun b_and!47813 () Bool)

(assert (=> start!110796 (= tp!104108 b_and!47813)))

(declare-fun mapIsEmpty!54616 () Bool)

(declare-fun mapRes!54616 () Bool)

(assert (=> mapIsEmpty!54616 mapRes!54616))

(declare-fun b!1310826 () Bool)

(declare-fun e!747799 () Bool)

(declare-fun e!747798 () Bool)

(assert (=> b!1310826 (= e!747799 (and e!747798 mapRes!54616))))

(declare-fun condMapEmpty!54616 () Bool)

(declare-datatypes ((V!52203 0))(
  ( (V!52204 (val!17737 Int)) )
))
(declare-datatypes ((ValueCell!16764 0))(
  ( (ValueCellFull!16764 (v!20362 V!52203)) (EmptyCell!16764) )
))
(declare-datatypes ((array!87601 0))(
  ( (array!87602 (arr!42276 (Array (_ BitVec 32) ValueCell!16764)) (size!42827 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87601)

(declare-fun mapDefault!54616 () ValueCell!16764)

(assert (=> b!1310826 (= condMapEmpty!54616 (= (arr!42276 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16764)) mapDefault!54616)))))

(declare-fun b!1310827 () Bool)

(declare-fun res!870316 () Bool)

(declare-fun e!747797 () Bool)

(assert (=> b!1310827 (=> (not res!870316) (not e!747797))))

(declare-datatypes ((array!87603 0))(
  ( (array!87604 (arr!42277 (Array (_ BitVec 32) (_ BitVec 64))) (size!42828 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87603)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310827 (= res!870316 (and (= (size!42827 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42828 _keys!1628) (size!42827 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310828 () Bool)

(declare-fun res!870317 () Bool)

(assert (=> b!1310828 (=> (not res!870317) (not e!747797))))

(declare-datatypes ((List!30186 0))(
  ( (Nil!30183) (Cons!30182 (h!31391 (_ BitVec 64)) (t!43799 List!30186)) )
))
(declare-fun arrayNoDuplicates!0 (array!87603 (_ BitVec 32) List!30186) Bool)

(assert (=> b!1310828 (= res!870317 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30183))))

(declare-fun mapNonEmpty!54616 () Bool)

(declare-fun tp!104107 () Bool)

(declare-fun e!747800 () Bool)

(assert (=> mapNonEmpty!54616 (= mapRes!54616 (and tp!104107 e!747800))))

(declare-fun mapKey!54616 () (_ BitVec 32))

(declare-fun mapValue!54616 () ValueCell!16764)

(declare-fun mapRest!54616 () (Array (_ BitVec 32) ValueCell!16764))

(assert (=> mapNonEmpty!54616 (= (arr!42276 _values!1354) (store mapRest!54616 mapKey!54616 mapValue!54616))))

(declare-fun b!1310829 () Bool)

(declare-fun res!870315 () Bool)

(assert (=> b!1310829 (=> (not res!870315) (not e!747797))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87603 (_ BitVec 32)) Bool)

(assert (=> b!1310829 (= res!870315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310830 () Bool)

(declare-fun tp_is_empty!35325 () Bool)

(assert (=> b!1310830 (= e!747800 tp_is_empty!35325)))

(declare-fun b!1310831 () Bool)

(assert (=> b!1310831 (= e!747798 tp_is_empty!35325)))

(declare-fun res!870313 () Bool)

(assert (=> start!110796 (=> (not res!870313) (not e!747797))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110796 (= res!870313 (validMask!0 mask!2040))))

(assert (=> start!110796 e!747797))

(assert (=> start!110796 tp!104108))

(declare-fun array_inv!31937 (array!87603) Bool)

(assert (=> start!110796 (array_inv!31937 _keys!1628)))

(assert (=> start!110796 true))

(assert (=> start!110796 tp_is_empty!35325))

(declare-fun array_inv!31938 (array!87601) Bool)

(assert (=> start!110796 (and (array_inv!31938 _values!1354) e!747799)))

(declare-fun b!1310832 () Bool)

(assert (=> b!1310832 (= e!747797 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52203)

(declare-fun zeroValue!1296 () V!52203)

(declare-fun lt!585343 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23020 0))(
  ( (tuple2!23021 (_1!11520 (_ BitVec 64)) (_2!11520 V!52203)) )
))
(declare-datatypes ((List!30187 0))(
  ( (Nil!30184) (Cons!30183 (h!31392 tuple2!23020) (t!43800 List!30187)) )
))
(declare-datatypes ((ListLongMap!20689 0))(
  ( (ListLongMap!20690 (toList!10360 List!30187)) )
))
(declare-fun contains!8446 (ListLongMap!20689 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5316 (array!87603 array!87601 (_ BitVec 32) (_ BitVec 32) V!52203 V!52203 (_ BitVec 32) Int) ListLongMap!20689)

(assert (=> b!1310832 (= lt!585343 (contains!8446 (getCurrentListMap!5316 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1310833 () Bool)

(declare-fun res!870314 () Bool)

(assert (=> b!1310833 (=> (not res!870314) (not e!747797))))

(assert (=> b!1310833 (= res!870314 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42828 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!110796 res!870313) b!1310827))

(assert (= (and b!1310827 res!870316) b!1310829))

(assert (= (and b!1310829 res!870315) b!1310828))

(assert (= (and b!1310828 res!870317) b!1310833))

(assert (= (and b!1310833 res!870314) b!1310832))

(assert (= (and b!1310826 condMapEmpty!54616) mapIsEmpty!54616))

(assert (= (and b!1310826 (not condMapEmpty!54616)) mapNonEmpty!54616))

(get-info :version)

(assert (= (and mapNonEmpty!54616 ((_ is ValueCellFull!16764) mapValue!54616)) b!1310830))

(assert (= (and b!1310826 ((_ is ValueCellFull!16764) mapDefault!54616)) b!1310831))

(assert (= start!110796 b!1310826))

(declare-fun m!1200505 () Bool)

(assert (=> b!1310832 m!1200505))

(assert (=> b!1310832 m!1200505))

(declare-fun m!1200507 () Bool)

(assert (=> b!1310832 m!1200507))

(declare-fun m!1200509 () Bool)

(assert (=> b!1310829 m!1200509))

(declare-fun m!1200511 () Bool)

(assert (=> start!110796 m!1200511))

(declare-fun m!1200513 () Bool)

(assert (=> start!110796 m!1200513))

(declare-fun m!1200515 () Bool)

(assert (=> start!110796 m!1200515))

(declare-fun m!1200517 () Bool)

(assert (=> b!1310828 m!1200517))

(declare-fun m!1200519 () Bool)

(assert (=> mapNonEmpty!54616 m!1200519))

(check-sat (not b!1310832) b_and!47813 (not mapNonEmpty!54616) tp_is_empty!35325 (not b!1310829) (not b_next!29595) (not start!110796) (not b!1310828))
(check-sat b_and!47813 (not b_next!29595))
