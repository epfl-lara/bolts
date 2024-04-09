; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113218 () Bool)

(assert start!113218)

(declare-fun b_free!31233 () Bool)

(declare-fun b_next!31233 () Bool)

(assert (=> start!113218 (= b_free!31233 (not b_next!31233))))

(declare-fun tp!109504 () Bool)

(declare-fun b_and!50383 () Bool)

(assert (=> start!113218 (= tp!109504 b_and!50383)))

(declare-fun b!1342220 () Bool)

(declare-fun e!764198 () Bool)

(declare-fun e!764197 () Bool)

(declare-fun mapRes!57556 () Bool)

(assert (=> b!1342220 (= e!764198 (and e!764197 mapRes!57556))))

(declare-fun condMapEmpty!57556 () Bool)

(declare-datatypes ((V!54747 0))(
  ( (V!54748 (val!18691 Int)) )
))
(declare-datatypes ((ValueCell!17718 0))(
  ( (ValueCellFull!17718 (v!21337 V!54747)) (EmptyCell!17718) )
))
(declare-datatypes ((array!91275 0))(
  ( (array!91276 (arr!44089 (Array (_ BitVec 32) ValueCell!17718)) (size!44640 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91275)

(declare-fun mapDefault!57556 () ValueCell!17718)

(assert (=> b!1342220 (= condMapEmpty!57556 (= (arr!44089 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17718)) mapDefault!57556)))))

(declare-fun b!1342221 () Bool)

(declare-fun res!890566 () Bool)

(declare-fun e!764199 () Bool)

(assert (=> b!1342221 (=> (not res!890566) (not e!764199))))

(declare-datatypes ((array!91277 0))(
  ( (array!91278 (arr!44090 (Array (_ BitVec 32) (_ BitVec 64))) (size!44641 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91277)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342221 (= res!890566 (validKeyInArray!0 (select (arr!44090 _keys!1571) from!1960)))))

(declare-fun res!890569 () Bool)

(assert (=> start!113218 (=> (not res!890569) (not e!764199))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113218 (= res!890569 (validMask!0 mask!1977))))

(assert (=> start!113218 e!764199))

(declare-fun tp_is_empty!37233 () Bool)

(assert (=> start!113218 tp_is_empty!37233))

(assert (=> start!113218 true))

(declare-fun array_inv!33151 (array!91277) Bool)

(assert (=> start!113218 (array_inv!33151 _keys!1571)))

(declare-fun array_inv!33152 (array!91275) Bool)

(assert (=> start!113218 (and (array_inv!33152 _values!1303) e!764198)))

(assert (=> start!113218 tp!109504))

(declare-fun b!1342222 () Bool)

(assert (=> b!1342222 (= e!764197 tp_is_empty!37233)))

(declare-fun mapIsEmpty!57556 () Bool)

(assert (=> mapIsEmpty!57556 mapRes!57556))

(declare-fun b!1342223 () Bool)

(declare-fun res!890570 () Bool)

(assert (=> b!1342223 (=> (not res!890570) (not e!764199))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342223 (= res!890570 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342224 () Bool)

(declare-fun res!890568 () Bool)

(assert (=> b!1342224 (=> (not res!890568) (not e!764199))))

(assert (=> b!1342224 (= res!890568 (and (= (size!44640 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44641 _keys!1571) (size!44640 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57556 () Bool)

(declare-fun tp!109505 () Bool)

(declare-fun e!764201 () Bool)

(assert (=> mapNonEmpty!57556 (= mapRes!57556 (and tp!109505 e!764201))))

(declare-fun mapValue!57556 () ValueCell!17718)

(declare-fun mapKey!57556 () (_ BitVec 32))

(declare-fun mapRest!57556 () (Array (_ BitVec 32) ValueCell!17718))

(assert (=> mapNonEmpty!57556 (= (arr!44089 _values!1303) (store mapRest!57556 mapKey!57556 mapValue!57556))))

(declare-fun b!1342225 () Bool)

(declare-fun res!890567 () Bool)

(assert (=> b!1342225 (=> (not res!890567) (not e!764199))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1342225 (= res!890567 (not (= (select (arr!44090 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1342226 () Bool)

(declare-fun res!890565 () Bool)

(assert (=> b!1342226 (=> (not res!890565) (not e!764199))))

(assert (=> b!1342226 (= res!890565 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44641 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342227 () Bool)

(assert (=> b!1342227 (= e!764199 (not true))))

(declare-datatypes ((tuple2!24222 0))(
  ( (tuple2!24223 (_1!12121 (_ BitVec 64)) (_2!12121 V!54747)) )
))
(declare-datatypes ((List!31403 0))(
  ( (Nil!31400) (Cons!31399 (h!32608 tuple2!24222) (t!45854 List!31403)) )
))
(declare-datatypes ((ListLongMap!21891 0))(
  ( (ListLongMap!21892 (toList!10961 List!31403)) )
))
(declare-fun lt!594369 () ListLongMap!21891)

(declare-fun contains!9073 (ListLongMap!21891 (_ BitVec 64)) Bool)

(assert (=> b!1342227 (contains!9073 lt!594369 k0!1142)))

(declare-fun lt!594367 () V!54747)

(declare-datatypes ((Unit!43991 0))(
  ( (Unit!43992) )
))
(declare-fun lt!594366 () Unit!43991)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!355 ((_ BitVec 64) (_ BitVec 64) V!54747 ListLongMap!21891) Unit!43991)

(assert (=> b!1342227 (= lt!594366 (lemmaInListMapAfterAddingDiffThenInBefore!355 k0!1142 (select (arr!44090 _keys!1571) from!1960) lt!594367 lt!594369))))

(declare-fun lt!594368 () ListLongMap!21891)

(assert (=> b!1342227 (contains!9073 lt!594368 k0!1142)))

(declare-fun zeroValue!1245 () V!54747)

(declare-fun lt!594370 () Unit!43991)

(assert (=> b!1342227 (= lt!594370 (lemmaInListMapAfterAddingDiffThenInBefore!355 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594368))))

(declare-fun +!4763 (ListLongMap!21891 tuple2!24222) ListLongMap!21891)

(assert (=> b!1342227 (= lt!594368 (+!4763 lt!594369 (tuple2!24223 (select (arr!44090 _keys!1571) from!1960) lt!594367)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22302 (ValueCell!17718 V!54747) V!54747)

(declare-fun dynLambda!3800 (Int (_ BitVec 64)) V!54747)

(assert (=> b!1342227 (= lt!594367 (get!22302 (select (arr!44089 _values!1303) from!1960) (dynLambda!3800 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54747)

(declare-fun getCurrentListMapNoExtraKeys!6486 (array!91277 array!91275 (_ BitVec 32) (_ BitVec 32) V!54747 V!54747 (_ BitVec 32) Int) ListLongMap!21891)

(assert (=> b!1342227 (= lt!594369 (getCurrentListMapNoExtraKeys!6486 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342228 () Bool)

(assert (=> b!1342228 (= e!764201 tp_is_empty!37233)))

(declare-fun b!1342229 () Bool)

(declare-fun res!890562 () Bool)

(assert (=> b!1342229 (=> (not res!890562) (not e!764199))))

(declare-datatypes ((List!31404 0))(
  ( (Nil!31401) (Cons!31400 (h!32609 (_ BitVec 64)) (t!45855 List!31404)) )
))
(declare-fun arrayNoDuplicates!0 (array!91277 (_ BitVec 32) List!31404) Bool)

(assert (=> b!1342229 (= res!890562 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31401))))

(declare-fun b!1342230 () Bool)

(declare-fun res!890563 () Bool)

(assert (=> b!1342230 (=> (not res!890563) (not e!764199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91277 (_ BitVec 32)) Bool)

(assert (=> b!1342230 (= res!890563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342231 () Bool)

(declare-fun res!890564 () Bool)

(assert (=> b!1342231 (=> (not res!890564) (not e!764199))))

(declare-fun getCurrentListMap!5861 (array!91277 array!91275 (_ BitVec 32) (_ BitVec 32) V!54747 V!54747 (_ BitVec 32) Int) ListLongMap!21891)

(assert (=> b!1342231 (= res!890564 (contains!9073 (getCurrentListMap!5861 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(assert (= (and start!113218 res!890569) b!1342224))

(assert (= (and b!1342224 res!890568) b!1342230))

(assert (= (and b!1342230 res!890563) b!1342229))

(assert (= (and b!1342229 res!890562) b!1342226))

(assert (= (and b!1342226 res!890565) b!1342231))

(assert (= (and b!1342231 res!890564) b!1342225))

(assert (= (and b!1342225 res!890567) b!1342221))

(assert (= (and b!1342221 res!890566) b!1342223))

(assert (= (and b!1342223 res!890570) b!1342227))

(assert (= (and b!1342220 condMapEmpty!57556) mapIsEmpty!57556))

(assert (= (and b!1342220 (not condMapEmpty!57556)) mapNonEmpty!57556))

(get-info :version)

(assert (= (and mapNonEmpty!57556 ((_ is ValueCellFull!17718) mapValue!57556)) b!1342228))

(assert (= (and b!1342220 ((_ is ValueCellFull!17718) mapDefault!57556)) b!1342222))

(assert (= start!113218 b!1342220))

(declare-fun b_lambda!24419 () Bool)

(assert (=> (not b_lambda!24419) (not b!1342227)))

(declare-fun t!45853 () Bool)

(declare-fun tb!12255 () Bool)

(assert (=> (and start!113218 (= defaultEntry!1306 defaultEntry!1306) t!45853) tb!12255))

(declare-fun result!25593 () Bool)

(assert (=> tb!12255 (= result!25593 tp_is_empty!37233)))

(assert (=> b!1342227 t!45853))

(declare-fun b_and!50385 () Bool)

(assert (= b_and!50383 (and (=> t!45853 result!25593) b_and!50385)))

(declare-fun m!1229883 () Bool)

(assert (=> start!113218 m!1229883))

(declare-fun m!1229885 () Bool)

(assert (=> start!113218 m!1229885))

(declare-fun m!1229887 () Bool)

(assert (=> start!113218 m!1229887))

(declare-fun m!1229889 () Bool)

(assert (=> b!1342221 m!1229889))

(assert (=> b!1342221 m!1229889))

(declare-fun m!1229891 () Bool)

(assert (=> b!1342221 m!1229891))

(declare-fun m!1229893 () Bool)

(assert (=> b!1342227 m!1229893))

(declare-fun m!1229895 () Bool)

(assert (=> b!1342227 m!1229895))

(declare-fun m!1229897 () Bool)

(assert (=> b!1342227 m!1229897))

(declare-fun m!1229899 () Bool)

(assert (=> b!1342227 m!1229899))

(declare-fun m!1229901 () Bool)

(assert (=> b!1342227 m!1229901))

(declare-fun m!1229903 () Bool)

(assert (=> b!1342227 m!1229903))

(assert (=> b!1342227 m!1229899))

(assert (=> b!1342227 m!1229901))

(assert (=> b!1342227 m!1229889))

(declare-fun m!1229905 () Bool)

(assert (=> b!1342227 m!1229905))

(declare-fun m!1229907 () Bool)

(assert (=> b!1342227 m!1229907))

(declare-fun m!1229909 () Bool)

(assert (=> b!1342227 m!1229909))

(assert (=> b!1342227 m!1229889))

(declare-fun m!1229911 () Bool)

(assert (=> b!1342229 m!1229911))

(assert (=> b!1342225 m!1229889))

(declare-fun m!1229913 () Bool)

(assert (=> b!1342231 m!1229913))

(assert (=> b!1342231 m!1229913))

(declare-fun m!1229915 () Bool)

(assert (=> b!1342231 m!1229915))

(declare-fun m!1229917 () Bool)

(assert (=> mapNonEmpty!57556 m!1229917))

(declare-fun m!1229919 () Bool)

(assert (=> b!1342230 m!1229919))

(check-sat (not b_next!31233) (not start!113218) (not b!1342221) (not b!1342231) (not b!1342229) b_and!50385 (not b!1342230) (not mapNonEmpty!57556) tp_is_empty!37233 (not b_lambda!24419) (not b!1342227))
(check-sat b_and!50385 (not b_next!31233))
