; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113494 () Bool)

(assert start!113494)

(declare-fun b_free!31509 () Bool)

(declare-fun b_next!31509 () Bool)

(assert (=> start!113494 (= b_free!31509 (not b_next!31509))))

(declare-fun tp!110332 () Bool)

(declare-fun b_and!50807 () Bool)

(assert (=> start!113494 (= tp!110332 b_and!50807)))

(declare-fun b!1346832 () Bool)

(declare-fun res!893787 () Bool)

(declare-fun e!766351 () Bool)

(assert (=> b!1346832 (=> (not res!893787) (not e!766351))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91807 0))(
  ( (array!91808 (arr!44355 (Array (_ BitVec 32) (_ BitVec 64))) (size!44906 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91807)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346832 (= res!893787 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44906 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!893791 () Bool)

(assert (=> start!113494 (=> (not res!893791) (not e!766351))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113494 (= res!893791 (validMask!0 mask!1977))))

(assert (=> start!113494 e!766351))

(declare-fun tp_is_empty!37509 () Bool)

(assert (=> start!113494 tp_is_empty!37509))

(assert (=> start!113494 true))

(declare-fun array_inv!33333 (array!91807) Bool)

(assert (=> start!113494 (array_inv!33333 _keys!1571)))

(declare-datatypes ((V!55115 0))(
  ( (V!55116 (val!18829 Int)) )
))
(declare-datatypes ((ValueCell!17856 0))(
  ( (ValueCellFull!17856 (v!21475 V!55115)) (EmptyCell!17856) )
))
(declare-datatypes ((array!91809 0))(
  ( (array!91810 (arr!44356 (Array (_ BitVec 32) ValueCell!17856)) (size!44907 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91809)

(declare-fun e!766352 () Bool)

(declare-fun array_inv!33334 (array!91809) Bool)

(assert (=> start!113494 (and (array_inv!33334 _values!1303) e!766352)))

(assert (=> start!113494 tp!110332))

(declare-fun b!1346833 () Bool)

(declare-fun e!766348 () Bool)

(assert (=> b!1346833 (= e!766348 tp_is_empty!37509)))

(declare-fun b!1346834 () Bool)

(declare-fun res!893790 () Bool)

(assert (=> b!1346834 (=> (not res!893790) (not e!766351))))

(assert (=> b!1346834 (= res!893790 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1346835 () Bool)

(declare-fun res!893792 () Bool)

(assert (=> b!1346835 (=> (not res!893792) (not e!766351))))

(declare-datatypes ((List!31582 0))(
  ( (Nil!31579) (Cons!31578 (h!32787 (_ BitVec 64)) (t!46179 List!31582)) )
))
(declare-fun arrayNoDuplicates!0 (array!91807 (_ BitVec 32) List!31582) Bool)

(assert (=> b!1346835 (= res!893792 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31579))))

(declare-fun b!1346836 () Bool)

(declare-fun res!893788 () Bool)

(assert (=> b!1346836 (=> (not res!893788) (not e!766351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91807 (_ BitVec 32)) Bool)

(assert (=> b!1346836 (= res!893788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346837 () Bool)

(declare-fun res!893784 () Bool)

(assert (=> b!1346837 (=> (not res!893784) (not e!766351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1346837 (= res!893784 (validKeyInArray!0 (select (arr!44355 _keys!1571) from!1960)))))

(declare-fun b!1346838 () Bool)

(declare-fun mapRes!57970 () Bool)

(assert (=> b!1346838 (= e!766352 (and e!766348 mapRes!57970))))

(declare-fun condMapEmpty!57970 () Bool)

(declare-fun mapDefault!57970 () ValueCell!17856)

(assert (=> b!1346838 (= condMapEmpty!57970 (= (arr!44356 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17856)) mapDefault!57970)))))

(declare-fun b!1346839 () Bool)

(declare-fun e!766349 () Bool)

(assert (=> b!1346839 (= e!766349 tp_is_empty!37509)))

(declare-fun b!1346840 () Bool)

(declare-fun res!893785 () Bool)

(assert (=> b!1346840 (=> (not res!893785) (not e!766351))))

(assert (=> b!1346840 (= res!893785 (not (= (select (arr!44355 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1346841 () Bool)

(assert (=> b!1346841 (= e!766351 (bvsge from!1960 (size!44907 _values!1303)))))

(declare-fun minValue!1245 () V!55115)

(declare-datatypes ((tuple2!24410 0))(
  ( (tuple2!24411 (_1!12215 (_ BitVec 64)) (_2!12215 V!55115)) )
))
(declare-datatypes ((List!31583 0))(
  ( (Nil!31580) (Cons!31579 (h!32788 tuple2!24410) (t!46180 List!31583)) )
))
(declare-datatypes ((ListLongMap!22079 0))(
  ( (ListLongMap!22080 (toList!11055 List!31583)) )
))
(declare-fun lt!595489 () ListLongMap!22079)

(declare-fun defaultEntry!1306 () Int)

(declare-fun zeroValue!1245 () V!55115)

(declare-fun getCurrentListMapNoExtraKeys!6538 (array!91807 array!91809 (_ BitVec 32) (_ BitVec 32) V!55115 V!55115 (_ BitVec 32) Int) ListLongMap!22079)

(assert (=> b!1346841 (= lt!595489 (getCurrentListMapNoExtraKeys!6538 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapIsEmpty!57970 () Bool)

(assert (=> mapIsEmpty!57970 mapRes!57970))

(declare-fun mapNonEmpty!57970 () Bool)

(declare-fun tp!110333 () Bool)

(assert (=> mapNonEmpty!57970 (= mapRes!57970 (and tp!110333 e!766349))))

(declare-fun mapValue!57970 () ValueCell!17856)

(declare-fun mapKey!57970 () (_ BitVec 32))

(declare-fun mapRest!57970 () (Array (_ BitVec 32) ValueCell!17856))

(assert (=> mapNonEmpty!57970 (= (arr!44356 _values!1303) (store mapRest!57970 mapKey!57970 mapValue!57970))))

(declare-fun b!1346842 () Bool)

(declare-fun res!893789 () Bool)

(assert (=> b!1346842 (=> (not res!893789) (not e!766351))))

(declare-fun contains!9166 (ListLongMap!22079 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5945 (array!91807 array!91809 (_ BitVec 32) (_ BitVec 32) V!55115 V!55115 (_ BitVec 32) Int) ListLongMap!22079)

(assert (=> b!1346842 (= res!893789 (contains!9166 (getCurrentListMap!5945 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1346843 () Bool)

(declare-fun res!893786 () Bool)

(assert (=> b!1346843 (=> (not res!893786) (not e!766351))))

(assert (=> b!1346843 (= res!893786 (and (= (size!44907 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44906 _keys!1571) (size!44907 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113494 res!893791) b!1346843))

(assert (= (and b!1346843 res!893786) b!1346836))

(assert (= (and b!1346836 res!893788) b!1346835))

(assert (= (and b!1346835 res!893792) b!1346832))

(assert (= (and b!1346832 res!893787) b!1346842))

(assert (= (and b!1346842 res!893789) b!1346840))

(assert (= (and b!1346840 res!893785) b!1346837))

(assert (= (and b!1346837 res!893784) b!1346834))

(assert (= (and b!1346834 res!893790) b!1346841))

(assert (= (and b!1346838 condMapEmpty!57970) mapIsEmpty!57970))

(assert (= (and b!1346838 (not condMapEmpty!57970)) mapNonEmpty!57970))

(get-info :version)

(assert (= (and mapNonEmpty!57970 ((_ is ValueCellFull!17856) mapValue!57970)) b!1346839))

(assert (= (and b!1346838 ((_ is ValueCellFull!17856) mapDefault!57970)) b!1346833))

(assert (= start!113494 b!1346838))

(declare-fun m!1233839 () Bool)

(assert (=> b!1346840 m!1233839))

(declare-fun m!1233841 () Bool)

(assert (=> b!1346841 m!1233841))

(declare-fun m!1233843 () Bool)

(assert (=> b!1346836 m!1233843))

(declare-fun m!1233845 () Bool)

(assert (=> mapNonEmpty!57970 m!1233845))

(declare-fun m!1233847 () Bool)

(assert (=> start!113494 m!1233847))

(declare-fun m!1233849 () Bool)

(assert (=> start!113494 m!1233849))

(declare-fun m!1233851 () Bool)

(assert (=> start!113494 m!1233851))

(declare-fun m!1233853 () Bool)

(assert (=> b!1346842 m!1233853))

(assert (=> b!1346842 m!1233853))

(declare-fun m!1233855 () Bool)

(assert (=> b!1346842 m!1233855))

(assert (=> b!1346837 m!1233839))

(assert (=> b!1346837 m!1233839))

(declare-fun m!1233857 () Bool)

(assert (=> b!1346837 m!1233857))

(declare-fun m!1233859 () Bool)

(assert (=> b!1346835 m!1233859))

(check-sat (not b!1346836) b_and!50807 (not b_next!31509) tp_is_empty!37509 (not mapNonEmpty!57970) (not b!1346837) (not b!1346835) (not b!1346841) (not start!113494) (not b!1346842))
(check-sat b_and!50807 (not b_next!31509))
