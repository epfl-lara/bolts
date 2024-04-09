; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110928 () Bool)

(assert start!110928)

(declare-fun b_free!29727 () Bool)

(declare-fun b_next!29727 () Bool)

(assert (=> start!110928 (= b_free!29727 (not b_next!29727))))

(declare-fun tp!104503 () Bool)

(declare-fun b_and!47945 () Bool)

(assert (=> start!110928 (= tp!104503 b_and!47945)))

(declare-fun b!1312734 () Bool)

(declare-fun e!748786 () Bool)

(declare-fun e!748789 () Bool)

(declare-fun mapRes!54814 () Bool)

(assert (=> b!1312734 (= e!748786 (and e!748789 mapRes!54814))))

(declare-fun condMapEmpty!54814 () Bool)

(declare-datatypes ((V!52379 0))(
  ( (V!52380 (val!17803 Int)) )
))
(declare-datatypes ((ValueCell!16830 0))(
  ( (ValueCellFull!16830 (v!20428 V!52379)) (EmptyCell!16830) )
))
(declare-datatypes ((array!87863 0))(
  ( (array!87864 (arr!42407 (Array (_ BitVec 32) ValueCell!16830)) (size!42958 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87863)

(declare-fun mapDefault!54814 () ValueCell!16830)

(assert (=> b!1312734 (= condMapEmpty!54814 (= (arr!42407 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16830)) mapDefault!54814)))))

(declare-fun b!1312735 () Bool)

(declare-fun res!871628 () Bool)

(declare-fun e!748790 () Bool)

(assert (=> b!1312735 (=> (not res!871628) (not e!748790))))

(declare-datatypes ((array!87865 0))(
  ( (array!87866 (arr!42408 (Array (_ BitVec 32) (_ BitVec 64))) (size!42959 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87865)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87865 (_ BitVec 32)) Bool)

(assert (=> b!1312735 (= res!871628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312736 () Bool)

(declare-fun e!748788 () Bool)

(declare-fun tp_is_empty!35457 () Bool)

(assert (=> b!1312736 (= e!748788 tp_is_empty!35457)))

(declare-fun res!871629 () Bool)

(assert (=> start!110928 (=> (not res!871629) (not e!748790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110928 (= res!871629 (validMask!0 mask!2040))))

(assert (=> start!110928 e!748790))

(assert (=> start!110928 tp!104503))

(declare-fun array_inv!32017 (array!87865) Bool)

(assert (=> start!110928 (array_inv!32017 _keys!1628)))

(assert (=> start!110928 true))

(assert (=> start!110928 tp_is_empty!35457))

(declare-fun array_inv!32018 (array!87863) Bool)

(assert (=> start!110928 (and (array_inv!32018 _values!1354) e!748786)))

(declare-fun b!1312737 () Bool)

(declare-fun res!871627 () Bool)

(assert (=> b!1312737 (=> (not res!871627) (not e!748790))))

(declare-datatypes ((List!30286 0))(
  ( (Nil!30283) (Cons!30282 (h!31491 (_ BitVec 64)) (t!43899 List!30286)) )
))
(declare-fun arrayNoDuplicates!0 (array!87865 (_ BitVec 32) List!30286) Bool)

(assert (=> b!1312737 (= res!871627 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30283))))

(declare-fun b!1312738 () Bool)

(declare-fun res!871630 () Bool)

(assert (=> b!1312738 (=> (not res!871630) (not e!748790))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312738 (= res!871630 (and (= (size!42958 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42959 _keys!1628) (size!42958 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312739 () Bool)

(assert (=> b!1312739 (= e!748789 tp_is_empty!35457)))

(declare-fun b!1312740 () Bool)

(declare-fun res!871631 () Bool)

(assert (=> b!1312740 (=> (not res!871631) (not e!748790))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312740 (= res!871631 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42959 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54814 () Bool)

(assert (=> mapIsEmpty!54814 mapRes!54814))

(declare-fun mapNonEmpty!54814 () Bool)

(declare-fun tp!104504 () Bool)

(assert (=> mapNonEmpty!54814 (= mapRes!54814 (and tp!104504 e!748788))))

(declare-fun mapRest!54814 () (Array (_ BitVec 32) ValueCell!16830))

(declare-fun mapValue!54814 () ValueCell!16830)

(declare-fun mapKey!54814 () (_ BitVec 32))

(assert (=> mapNonEmpty!54814 (= (arr!42407 _values!1354) (store mapRest!54814 mapKey!54814 mapValue!54814))))

(declare-fun b!1312741 () Bool)

(assert (=> b!1312741 (= e!748790 false)))

(declare-fun lt!585541 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52379)

(declare-fun zeroValue!1296 () V!52379)

(declare-datatypes ((tuple2!23126 0))(
  ( (tuple2!23127 (_1!11573 (_ BitVec 64)) (_2!11573 V!52379)) )
))
(declare-datatypes ((List!30287 0))(
  ( (Nil!30284) (Cons!30283 (h!31492 tuple2!23126) (t!43900 List!30287)) )
))
(declare-datatypes ((ListLongMap!20795 0))(
  ( (ListLongMap!20796 (toList!10413 List!30287)) )
))
(declare-fun contains!8499 (ListLongMap!20795 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5369 (array!87865 array!87863 (_ BitVec 32) (_ BitVec 32) V!52379 V!52379 (_ BitVec 32) Int) ListLongMap!20795)

(assert (=> b!1312741 (= lt!585541 (contains!8499 (getCurrentListMap!5369 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110928 res!871629) b!1312738))

(assert (= (and b!1312738 res!871630) b!1312735))

(assert (= (and b!1312735 res!871628) b!1312737))

(assert (= (and b!1312737 res!871627) b!1312740))

(assert (= (and b!1312740 res!871631) b!1312741))

(assert (= (and b!1312734 condMapEmpty!54814) mapIsEmpty!54814))

(assert (= (and b!1312734 (not condMapEmpty!54814)) mapNonEmpty!54814))

(get-info :version)

(assert (= (and mapNonEmpty!54814 ((_ is ValueCellFull!16830) mapValue!54814)) b!1312736))

(assert (= (and b!1312734 ((_ is ValueCellFull!16830) mapDefault!54814)) b!1312739))

(assert (= start!110928 b!1312734))

(declare-fun m!1201831 () Bool)

(assert (=> b!1312737 m!1201831))

(declare-fun m!1201833 () Bool)

(assert (=> start!110928 m!1201833))

(declare-fun m!1201835 () Bool)

(assert (=> start!110928 m!1201835))

(declare-fun m!1201837 () Bool)

(assert (=> start!110928 m!1201837))

(declare-fun m!1201839 () Bool)

(assert (=> b!1312735 m!1201839))

(declare-fun m!1201841 () Bool)

(assert (=> b!1312741 m!1201841))

(assert (=> b!1312741 m!1201841))

(declare-fun m!1201843 () Bool)

(assert (=> b!1312741 m!1201843))

(declare-fun m!1201845 () Bool)

(assert (=> mapNonEmpty!54814 m!1201845))

(check-sat (not b_next!29727) (not start!110928) (not b!1312735) (not b!1312741) tp_is_empty!35457 (not mapNonEmpty!54814) (not b!1312737) b_and!47945)
(check-sat b_and!47945 (not b_next!29727))
