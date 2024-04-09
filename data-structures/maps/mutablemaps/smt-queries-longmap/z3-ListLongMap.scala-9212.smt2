; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110658 () Bool)

(assert start!110658)

(declare-fun b_free!29457 () Bool)

(declare-fun b_next!29457 () Bool)

(assert (=> start!110658 (= b_free!29457 (not b_next!29457))))

(declare-fun tp!103694 () Bool)

(declare-fun b_and!47675 () Bool)

(assert (=> start!110658 (= tp!103694 b_and!47675)))

(declare-fun mapIsEmpty!54409 () Bool)

(declare-fun mapRes!54409 () Bool)

(assert (=> mapIsEmpty!54409 mapRes!54409))

(declare-fun mapNonEmpty!54409 () Bool)

(declare-fun tp!103693 () Bool)

(declare-fun e!746761 () Bool)

(assert (=> mapNonEmpty!54409 (= mapRes!54409 (and tp!103693 e!746761))))

(declare-datatypes ((V!52019 0))(
  ( (V!52020 (val!17668 Int)) )
))
(declare-datatypes ((ValueCell!16695 0))(
  ( (ValueCellFull!16695 (v!20293 V!52019)) (EmptyCell!16695) )
))
(declare-fun mapValue!54409 () ValueCell!16695)

(declare-fun mapRest!54409 () (Array (_ BitVec 32) ValueCell!16695))

(declare-fun mapKey!54409 () (_ BitVec 32))

(declare-datatypes ((array!87339 0))(
  ( (array!87340 (arr!42145 (Array (_ BitVec 32) ValueCell!16695)) (size!42696 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87339)

(assert (=> mapNonEmpty!54409 (= (arr!42145 _values!1354) (store mapRest!54409 mapKey!54409 mapValue!54409))))

(declare-fun b!1308847 () Bool)

(declare-fun res!868956 () Bool)

(declare-fun e!746765 () Bool)

(assert (=> b!1308847 (=> (not res!868956) (not e!746765))))

(declare-datatypes ((array!87341 0))(
  ( (array!87342 (arr!42146 (Array (_ BitVec 32) (_ BitVec 64))) (size!42697 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87341)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308847 (= res!868956 (and (= (size!42696 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42697 _keys!1628) (size!42696 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308848 () Bool)

(declare-fun res!868957 () Bool)

(assert (=> b!1308848 (=> (not res!868957) (not e!746765))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308848 (= res!868957 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42697 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308849 () Bool)

(declare-fun tp_is_empty!35187 () Bool)

(assert (=> b!1308849 (= e!746761 tp_is_empty!35187)))

(declare-fun b!1308850 () Bool)

(declare-fun e!746762 () Bool)

(declare-fun e!746763 () Bool)

(assert (=> b!1308850 (= e!746762 (and e!746763 mapRes!54409))))

(declare-fun condMapEmpty!54409 () Bool)

(declare-fun mapDefault!54409 () ValueCell!16695)

(assert (=> b!1308850 (= condMapEmpty!54409 (= (arr!42145 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16695)) mapDefault!54409)))))

(declare-fun b!1308851 () Bool)

(declare-fun res!868958 () Bool)

(assert (=> b!1308851 (=> (not res!868958) (not e!746765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87341 (_ BitVec 32)) Bool)

(assert (=> b!1308851 (= res!868958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308852 () Bool)

(assert (=> b!1308852 (= e!746765 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585136 () Bool)

(declare-fun minValue!1296 () V!52019)

(declare-fun zeroValue!1296 () V!52019)

(declare-datatypes ((tuple2!22916 0))(
  ( (tuple2!22917 (_1!11468 (_ BitVec 64)) (_2!11468 V!52019)) )
))
(declare-datatypes ((List!30087 0))(
  ( (Nil!30084) (Cons!30083 (h!31292 tuple2!22916) (t!43700 List!30087)) )
))
(declare-datatypes ((ListLongMap!20585 0))(
  ( (ListLongMap!20586 (toList!10308 List!30087)) )
))
(declare-fun contains!8394 (ListLongMap!20585 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5264 (array!87341 array!87339 (_ BitVec 32) (_ BitVec 32) V!52019 V!52019 (_ BitVec 32) Int) ListLongMap!20585)

(assert (=> b!1308852 (= lt!585136 (contains!8394 (getCurrentListMap!5264 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1308853 () Bool)

(assert (=> b!1308853 (= e!746763 tp_is_empty!35187)))

(declare-fun res!868954 () Bool)

(assert (=> start!110658 (=> (not res!868954) (not e!746765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110658 (= res!868954 (validMask!0 mask!2040))))

(assert (=> start!110658 e!746765))

(assert (=> start!110658 tp!103694))

(declare-fun array_inv!31857 (array!87341) Bool)

(assert (=> start!110658 (array_inv!31857 _keys!1628)))

(assert (=> start!110658 true))

(assert (=> start!110658 tp_is_empty!35187))

(declare-fun array_inv!31858 (array!87339) Bool)

(assert (=> start!110658 (and (array_inv!31858 _values!1354) e!746762)))

(declare-fun b!1308846 () Bool)

(declare-fun res!868955 () Bool)

(assert (=> b!1308846 (=> (not res!868955) (not e!746765))))

(declare-datatypes ((List!30088 0))(
  ( (Nil!30085) (Cons!30084 (h!31293 (_ BitVec 64)) (t!43701 List!30088)) )
))
(declare-fun arrayNoDuplicates!0 (array!87341 (_ BitVec 32) List!30088) Bool)

(assert (=> b!1308846 (= res!868955 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30085))))

(assert (= (and start!110658 res!868954) b!1308847))

(assert (= (and b!1308847 res!868956) b!1308851))

(assert (= (and b!1308851 res!868958) b!1308846))

(assert (= (and b!1308846 res!868955) b!1308848))

(assert (= (and b!1308848 res!868957) b!1308852))

(assert (= (and b!1308850 condMapEmpty!54409) mapIsEmpty!54409))

(assert (= (and b!1308850 (not condMapEmpty!54409)) mapNonEmpty!54409))

(get-info :version)

(assert (= (and mapNonEmpty!54409 ((_ is ValueCellFull!16695) mapValue!54409)) b!1308849))

(assert (= (and b!1308850 ((_ is ValueCellFull!16695) mapDefault!54409)) b!1308853))

(assert (= start!110658 b!1308850))

(declare-fun m!1199131 () Bool)

(assert (=> b!1308846 m!1199131))

(declare-fun m!1199133 () Bool)

(assert (=> b!1308852 m!1199133))

(assert (=> b!1308852 m!1199133))

(declare-fun m!1199135 () Bool)

(assert (=> b!1308852 m!1199135))

(declare-fun m!1199137 () Bool)

(assert (=> mapNonEmpty!54409 m!1199137))

(declare-fun m!1199139 () Bool)

(assert (=> start!110658 m!1199139))

(declare-fun m!1199141 () Bool)

(assert (=> start!110658 m!1199141))

(declare-fun m!1199143 () Bool)

(assert (=> start!110658 m!1199143))

(declare-fun m!1199145 () Bool)

(assert (=> b!1308851 m!1199145))

(check-sat (not b!1308851) (not start!110658) tp_is_empty!35187 (not b!1308846) (not mapNonEmpty!54409) (not b!1308852) b_and!47675 (not b_next!29457))
(check-sat b_and!47675 (not b_next!29457))
