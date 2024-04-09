; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111084 () Bool)

(assert start!111084)

(declare-fun b_free!29883 () Bool)

(declare-fun b_next!29883 () Bool)

(assert (=> start!111084 (= b_free!29883 (not b_next!29883))))

(declare-fun tp!104971 () Bool)

(declare-fun b_and!48101 () Bool)

(assert (=> start!111084 (= tp!104971 b_and!48101)))

(declare-fun b!1314669 () Bool)

(declare-fun res!872861 () Bool)

(declare-fun e!749959 () Bool)

(assert (=> b!1314669 (=> (not res!872861) (not e!749959))))

(declare-datatypes ((array!88159 0))(
  ( (array!88160 (arr!42555 (Array (_ BitVec 32) (_ BitVec 64))) (size!43106 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88159)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314669 (= res!872861 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43106 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314670 () Bool)

(declare-fun res!872862 () Bool)

(assert (=> b!1314670 (=> (not res!872862) (not e!749959))))

(declare-datatypes ((List!30390 0))(
  ( (Nil!30387) (Cons!30386 (h!31595 (_ BitVec 64)) (t!44003 List!30390)) )
))
(declare-fun arrayNoDuplicates!0 (array!88159 (_ BitVec 32) List!30390) Bool)

(assert (=> b!1314670 (= res!872862 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30387))))

(declare-fun b!1314671 () Bool)

(assert (=> b!1314671 (= e!749959 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52587 0))(
  ( (V!52588 (val!17881 Int)) )
))
(declare-fun minValue!1296 () V!52587)

(declare-datatypes ((ValueCell!16908 0))(
  ( (ValueCellFull!16908 (v!20506 V!52587)) (EmptyCell!16908) )
))
(declare-datatypes ((array!88161 0))(
  ( (array!88162 (arr!42556 (Array (_ BitVec 32) ValueCell!16908)) (size!43107 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88161)

(declare-fun zeroValue!1296 () V!52587)

(declare-fun lt!585766 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23226 0))(
  ( (tuple2!23227 (_1!11623 (_ BitVec 64)) (_2!11623 V!52587)) )
))
(declare-datatypes ((List!30391 0))(
  ( (Nil!30388) (Cons!30387 (h!31596 tuple2!23226) (t!44004 List!30391)) )
))
(declare-datatypes ((ListLongMap!20895 0))(
  ( (ListLongMap!20896 (toList!10463 List!30391)) )
))
(declare-fun contains!8549 (ListLongMap!20895 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5419 (array!88159 array!88161 (_ BitVec 32) (_ BitVec 32) V!52587 V!52587 (_ BitVec 32) Int) ListLongMap!20895)

(assert (=> b!1314671 (= lt!585766 (contains!8549 (getCurrentListMap!5419 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314672 () Bool)

(declare-fun e!749960 () Bool)

(declare-fun tp_is_empty!35613 () Bool)

(assert (=> b!1314672 (= e!749960 tp_is_empty!35613)))

(declare-fun b!1314673 () Bool)

(declare-fun res!872860 () Bool)

(assert (=> b!1314673 (=> (not res!872860) (not e!749959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88159 (_ BitVec 32)) Bool)

(assert (=> b!1314673 (= res!872860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314674 () Bool)

(declare-fun res!872864 () Bool)

(assert (=> b!1314674 (=> (not res!872864) (not e!749959))))

(assert (=> b!1314674 (= res!872864 (and (= (size!43107 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43106 _keys!1628) (size!43107 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314675 () Bool)

(declare-fun e!749956 () Bool)

(declare-fun e!749957 () Bool)

(declare-fun mapRes!55048 () Bool)

(assert (=> b!1314675 (= e!749956 (and e!749957 mapRes!55048))))

(declare-fun condMapEmpty!55048 () Bool)

(declare-fun mapDefault!55048 () ValueCell!16908)

(assert (=> b!1314675 (= condMapEmpty!55048 (= (arr!42556 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16908)) mapDefault!55048)))))

(declare-fun mapNonEmpty!55048 () Bool)

(declare-fun tp!104972 () Bool)

(assert (=> mapNonEmpty!55048 (= mapRes!55048 (and tp!104972 e!749960))))

(declare-fun mapKey!55048 () (_ BitVec 32))

(declare-fun mapValue!55048 () ValueCell!16908)

(declare-fun mapRest!55048 () (Array (_ BitVec 32) ValueCell!16908))

(assert (=> mapNonEmpty!55048 (= (arr!42556 _values!1354) (store mapRest!55048 mapKey!55048 mapValue!55048))))

(declare-fun b!1314676 () Bool)

(assert (=> b!1314676 (= e!749957 tp_is_empty!35613)))

(declare-fun res!872863 () Bool)

(assert (=> start!111084 (=> (not res!872863) (not e!749959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111084 (= res!872863 (validMask!0 mask!2040))))

(assert (=> start!111084 e!749959))

(assert (=> start!111084 tp!104971))

(declare-fun array_inv!32117 (array!88159) Bool)

(assert (=> start!111084 (array_inv!32117 _keys!1628)))

(assert (=> start!111084 true))

(assert (=> start!111084 tp_is_empty!35613))

(declare-fun array_inv!32118 (array!88161) Bool)

(assert (=> start!111084 (and (array_inv!32118 _values!1354) e!749956)))

(declare-fun mapIsEmpty!55048 () Bool)

(assert (=> mapIsEmpty!55048 mapRes!55048))

(assert (= (and start!111084 res!872863) b!1314674))

(assert (= (and b!1314674 res!872864) b!1314673))

(assert (= (and b!1314673 res!872860) b!1314670))

(assert (= (and b!1314670 res!872862) b!1314669))

(assert (= (and b!1314669 res!872861) b!1314671))

(assert (= (and b!1314675 condMapEmpty!55048) mapIsEmpty!55048))

(assert (= (and b!1314675 (not condMapEmpty!55048)) mapNonEmpty!55048))

(get-info :version)

(assert (= (and mapNonEmpty!55048 ((_ is ValueCellFull!16908) mapValue!55048)) b!1314672))

(assert (= (and b!1314675 ((_ is ValueCellFull!16908) mapDefault!55048)) b!1314676))

(assert (= start!111084 b!1314675))

(declare-fun m!1203121 () Bool)

(assert (=> b!1314671 m!1203121))

(assert (=> b!1314671 m!1203121))

(declare-fun m!1203123 () Bool)

(assert (=> b!1314671 m!1203123))

(declare-fun m!1203125 () Bool)

(assert (=> start!111084 m!1203125))

(declare-fun m!1203127 () Bool)

(assert (=> start!111084 m!1203127))

(declare-fun m!1203129 () Bool)

(assert (=> start!111084 m!1203129))

(declare-fun m!1203131 () Bool)

(assert (=> b!1314670 m!1203131))

(declare-fun m!1203133 () Bool)

(assert (=> b!1314673 m!1203133))

(declare-fun m!1203135 () Bool)

(assert (=> mapNonEmpty!55048 m!1203135))

(check-sat (not b!1314673) (not mapNonEmpty!55048) (not b!1314671) (not b_next!29883) (not b!1314670) (not start!111084) tp_is_empty!35613 b_and!48101)
(check-sat b_and!48101 (not b_next!29883))
