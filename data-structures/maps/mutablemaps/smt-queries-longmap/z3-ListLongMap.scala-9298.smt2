; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111174 () Bool)

(assert start!111174)

(declare-fun b_free!29973 () Bool)

(declare-fun b_next!29973 () Bool)

(assert (=> start!111174 (= b_free!29973 (not b_next!29973))))

(declare-fun tp!105242 () Bool)

(declare-fun b_and!48191 () Bool)

(assert (=> start!111174 (= tp!105242 b_and!48191)))

(declare-fun b!1315785 () Bool)

(declare-fun res!873571 () Bool)

(declare-fun e!750631 () Bool)

(assert (=> b!1315785 (=> (not res!873571) (not e!750631))))

(declare-datatypes ((array!88325 0))(
  ( (array!88326 (arr!42638 (Array (_ BitVec 32) (_ BitVec 64))) (size!43189 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88325)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52707 0))(
  ( (V!52708 (val!17926 Int)) )
))
(declare-datatypes ((ValueCell!16953 0))(
  ( (ValueCellFull!16953 (v!20551 V!52707)) (EmptyCell!16953) )
))
(declare-datatypes ((array!88327 0))(
  ( (array!88328 (arr!42639 (Array (_ BitVec 32) ValueCell!16953)) (size!43190 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88327)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315785 (= res!873571 (and (= (size!43190 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43189 _keys!1628) (size!43190 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55183 () Bool)

(declare-fun mapRes!55183 () Bool)

(declare-fun tp!105241 () Bool)

(declare-fun e!750634 () Bool)

(assert (=> mapNonEmpty!55183 (= mapRes!55183 (and tp!105241 e!750634))))

(declare-fun mapKey!55183 () (_ BitVec 32))

(declare-fun mapRest!55183 () (Array (_ BitVec 32) ValueCell!16953))

(declare-fun mapValue!55183 () ValueCell!16953)

(assert (=> mapNonEmpty!55183 (= (arr!42639 _values!1354) (store mapRest!55183 mapKey!55183 mapValue!55183))))

(declare-fun b!1315786 () Bool)

(declare-fun res!873573 () Bool)

(assert (=> b!1315786 (=> (not res!873573) (not e!750631))))

(declare-datatypes ((List!30441 0))(
  ( (Nil!30438) (Cons!30437 (h!31646 (_ BitVec 64)) (t!44054 List!30441)) )
))
(declare-fun arrayNoDuplicates!0 (array!88325 (_ BitVec 32) List!30441) Bool)

(assert (=> b!1315786 (= res!873573 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30438))))

(declare-fun b!1315787 () Bool)

(declare-fun tp_is_empty!35703 () Bool)

(assert (=> b!1315787 (= e!750634 tp_is_empty!35703)))

(declare-fun b!1315788 () Bool)

(declare-fun res!873574 () Bool)

(assert (=> b!1315788 (=> (not res!873574) (not e!750631))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315788 (= res!873574 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43189 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315790 () Bool)

(declare-fun e!750632 () Bool)

(assert (=> b!1315790 (= e!750632 tp_is_empty!35703)))

(declare-fun mapIsEmpty!55183 () Bool)

(assert (=> mapIsEmpty!55183 mapRes!55183))

(declare-fun b!1315789 () Bool)

(assert (=> b!1315789 (= e!750631 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585901 () Bool)

(declare-fun minValue!1296 () V!52707)

(declare-fun zeroValue!1296 () V!52707)

(declare-datatypes ((tuple2!23272 0))(
  ( (tuple2!23273 (_1!11646 (_ BitVec 64)) (_2!11646 V!52707)) )
))
(declare-datatypes ((List!30442 0))(
  ( (Nil!30439) (Cons!30438 (h!31647 tuple2!23272) (t!44055 List!30442)) )
))
(declare-datatypes ((ListLongMap!20941 0))(
  ( (ListLongMap!20942 (toList!10486 List!30442)) )
))
(declare-fun contains!8572 (ListLongMap!20941 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5442 (array!88325 array!88327 (_ BitVec 32) (_ BitVec 32) V!52707 V!52707 (_ BitVec 32) Int) ListLongMap!20941)

(assert (=> b!1315789 (= lt!585901 (contains!8572 (getCurrentListMap!5442 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun res!873575 () Bool)

(assert (=> start!111174 (=> (not res!873575) (not e!750631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111174 (= res!873575 (validMask!0 mask!2040))))

(assert (=> start!111174 e!750631))

(assert (=> start!111174 tp!105242))

(declare-fun array_inv!32171 (array!88325) Bool)

(assert (=> start!111174 (array_inv!32171 _keys!1628)))

(assert (=> start!111174 true))

(assert (=> start!111174 tp_is_empty!35703))

(declare-fun e!750635 () Bool)

(declare-fun array_inv!32172 (array!88327) Bool)

(assert (=> start!111174 (and (array_inv!32172 _values!1354) e!750635)))

(declare-fun b!1315791 () Bool)

(assert (=> b!1315791 (= e!750635 (and e!750632 mapRes!55183))))

(declare-fun condMapEmpty!55183 () Bool)

(declare-fun mapDefault!55183 () ValueCell!16953)

(assert (=> b!1315791 (= condMapEmpty!55183 (= (arr!42639 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16953)) mapDefault!55183)))))

(declare-fun b!1315792 () Bool)

(declare-fun res!873572 () Bool)

(assert (=> b!1315792 (=> (not res!873572) (not e!750631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88325 (_ BitVec 32)) Bool)

(assert (=> b!1315792 (= res!873572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!111174 res!873575) b!1315785))

(assert (= (and b!1315785 res!873571) b!1315792))

(assert (= (and b!1315792 res!873572) b!1315786))

(assert (= (and b!1315786 res!873573) b!1315788))

(assert (= (and b!1315788 res!873574) b!1315789))

(assert (= (and b!1315791 condMapEmpty!55183) mapIsEmpty!55183))

(assert (= (and b!1315791 (not condMapEmpty!55183)) mapNonEmpty!55183))

(get-info :version)

(assert (= (and mapNonEmpty!55183 ((_ is ValueCellFull!16953) mapValue!55183)) b!1315787))

(assert (= (and b!1315791 ((_ is ValueCellFull!16953) mapDefault!55183)) b!1315790))

(assert (= start!111174 b!1315791))

(declare-fun m!1203871 () Bool)

(assert (=> b!1315789 m!1203871))

(assert (=> b!1315789 m!1203871))

(declare-fun m!1203873 () Bool)

(assert (=> b!1315789 m!1203873))

(declare-fun m!1203875 () Bool)

(assert (=> mapNonEmpty!55183 m!1203875))

(declare-fun m!1203877 () Bool)

(assert (=> start!111174 m!1203877))

(declare-fun m!1203879 () Bool)

(assert (=> start!111174 m!1203879))

(declare-fun m!1203881 () Bool)

(assert (=> start!111174 m!1203881))

(declare-fun m!1203883 () Bool)

(assert (=> b!1315792 m!1203883))

(declare-fun m!1203885 () Bool)

(assert (=> b!1315786 m!1203885))

(check-sat (not b!1315792) (not mapNonEmpty!55183) (not b!1315786) (not b!1315789) tp_is_empty!35703 b_and!48191 (not b_next!29973) (not start!111174))
(check-sat b_and!48191 (not b_next!29973))
