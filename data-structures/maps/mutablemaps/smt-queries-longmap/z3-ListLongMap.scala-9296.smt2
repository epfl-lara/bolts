; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111162 () Bool)

(assert start!111162)

(declare-fun b_free!29961 () Bool)

(declare-fun b_next!29961 () Bool)

(assert (=> start!111162 (= b_free!29961 (not b_next!29961))))

(declare-fun tp!105205 () Bool)

(declare-fun b_and!48179 () Bool)

(assert (=> start!111162 (= tp!105205 b_and!48179)))

(declare-fun b!1315641 () Bool)

(declare-fun res!873484 () Bool)

(declare-fun e!750541 () Bool)

(assert (=> b!1315641 (=> (not res!873484) (not e!750541))))

(declare-datatypes ((array!88303 0))(
  ( (array!88304 (arr!42627 (Array (_ BitVec 32) (_ BitVec 64))) (size!43178 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88303)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315641 (= res!873484 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43178 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315642 () Bool)

(declare-fun e!750544 () Bool)

(declare-fun tp_is_empty!35691 () Bool)

(assert (=> b!1315642 (= e!750544 tp_is_empty!35691)))

(declare-fun res!873483 () Bool)

(assert (=> start!111162 (=> (not res!873483) (not e!750541))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111162 (= res!873483 (validMask!0 mask!2040))))

(assert (=> start!111162 e!750541))

(assert (=> start!111162 tp!105205))

(declare-fun array_inv!32163 (array!88303) Bool)

(assert (=> start!111162 (array_inv!32163 _keys!1628)))

(assert (=> start!111162 true))

(assert (=> start!111162 tp_is_empty!35691))

(declare-datatypes ((V!52691 0))(
  ( (V!52692 (val!17920 Int)) )
))
(declare-datatypes ((ValueCell!16947 0))(
  ( (ValueCellFull!16947 (v!20545 V!52691)) (EmptyCell!16947) )
))
(declare-datatypes ((array!88305 0))(
  ( (array!88306 (arr!42628 (Array (_ BitVec 32) ValueCell!16947)) (size!43179 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88305)

(declare-fun e!750545 () Bool)

(declare-fun array_inv!32164 (array!88305) Bool)

(assert (=> start!111162 (and (array_inv!32164 _values!1354) e!750545)))

(declare-fun b!1315643 () Bool)

(declare-fun e!750543 () Bool)

(assert (=> b!1315643 (= e!750543 tp_is_empty!35691)))

(declare-fun b!1315644 () Bool)

(declare-fun mapRes!55165 () Bool)

(assert (=> b!1315644 (= e!750545 (and e!750544 mapRes!55165))))

(declare-fun condMapEmpty!55165 () Bool)

(declare-fun mapDefault!55165 () ValueCell!16947)

(assert (=> b!1315644 (= condMapEmpty!55165 (= (arr!42628 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16947)) mapDefault!55165)))))

(declare-fun b!1315645 () Bool)

(declare-fun res!873485 () Bool)

(assert (=> b!1315645 (=> (not res!873485) (not e!750541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88303 (_ BitVec 32)) Bool)

(assert (=> b!1315645 (= res!873485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315646 () Bool)

(declare-fun res!873482 () Bool)

(assert (=> b!1315646 (=> (not res!873482) (not e!750541))))

(declare-datatypes ((List!30434 0))(
  ( (Nil!30431) (Cons!30430 (h!31639 (_ BitVec 64)) (t!44047 List!30434)) )
))
(declare-fun arrayNoDuplicates!0 (array!88303 (_ BitVec 32) List!30434) Bool)

(assert (=> b!1315646 (= res!873482 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30431))))

(declare-fun mapIsEmpty!55165 () Bool)

(assert (=> mapIsEmpty!55165 mapRes!55165))

(declare-fun b!1315647 () Bool)

(declare-fun res!873481 () Bool)

(assert (=> b!1315647 (=> (not res!873481) (not e!750541))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315647 (= res!873481 (and (= (size!43179 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43178 _keys!1628) (size!43179 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315648 () Bool)

(assert (=> b!1315648 (= e!750541 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52691)

(declare-fun zeroValue!1296 () V!52691)

(declare-fun lt!585883 () Bool)

(declare-datatypes ((tuple2!23266 0))(
  ( (tuple2!23267 (_1!11643 (_ BitVec 64)) (_2!11643 V!52691)) )
))
(declare-datatypes ((List!30435 0))(
  ( (Nil!30432) (Cons!30431 (h!31640 tuple2!23266) (t!44048 List!30435)) )
))
(declare-datatypes ((ListLongMap!20935 0))(
  ( (ListLongMap!20936 (toList!10483 List!30435)) )
))
(declare-fun contains!8569 (ListLongMap!20935 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5439 (array!88303 array!88305 (_ BitVec 32) (_ BitVec 32) V!52691 V!52691 (_ BitVec 32) Int) ListLongMap!20935)

(assert (=> b!1315648 (= lt!585883 (contains!8569 (getCurrentListMap!5439 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapNonEmpty!55165 () Bool)

(declare-fun tp!105206 () Bool)

(assert (=> mapNonEmpty!55165 (= mapRes!55165 (and tp!105206 e!750543))))

(declare-fun mapKey!55165 () (_ BitVec 32))

(declare-fun mapRest!55165 () (Array (_ BitVec 32) ValueCell!16947))

(declare-fun mapValue!55165 () ValueCell!16947)

(assert (=> mapNonEmpty!55165 (= (arr!42628 _values!1354) (store mapRest!55165 mapKey!55165 mapValue!55165))))

(assert (= (and start!111162 res!873483) b!1315647))

(assert (= (and b!1315647 res!873481) b!1315645))

(assert (= (and b!1315645 res!873485) b!1315646))

(assert (= (and b!1315646 res!873482) b!1315641))

(assert (= (and b!1315641 res!873484) b!1315648))

(assert (= (and b!1315644 condMapEmpty!55165) mapIsEmpty!55165))

(assert (= (and b!1315644 (not condMapEmpty!55165)) mapNonEmpty!55165))

(get-info :version)

(assert (= (and mapNonEmpty!55165 ((_ is ValueCellFull!16947) mapValue!55165)) b!1315643))

(assert (= (and b!1315644 ((_ is ValueCellFull!16947) mapDefault!55165)) b!1315642))

(assert (= start!111162 b!1315644))

(declare-fun m!1203775 () Bool)

(assert (=> b!1315648 m!1203775))

(assert (=> b!1315648 m!1203775))

(declare-fun m!1203777 () Bool)

(assert (=> b!1315648 m!1203777))

(declare-fun m!1203779 () Bool)

(assert (=> mapNonEmpty!55165 m!1203779))

(declare-fun m!1203781 () Bool)

(assert (=> b!1315645 m!1203781))

(declare-fun m!1203783 () Bool)

(assert (=> b!1315646 m!1203783))

(declare-fun m!1203785 () Bool)

(assert (=> start!111162 m!1203785))

(declare-fun m!1203787 () Bool)

(assert (=> start!111162 m!1203787))

(declare-fun m!1203789 () Bool)

(assert (=> start!111162 m!1203789))

(check-sat (not mapNonEmpty!55165) (not start!111162) b_and!48179 (not b!1315645) tp_is_empty!35691 (not b!1315648) (not b_next!29961) (not b!1315646))
(check-sat b_and!48179 (not b_next!29961))
