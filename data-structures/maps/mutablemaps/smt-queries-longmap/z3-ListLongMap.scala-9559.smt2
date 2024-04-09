; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113254 () Bool)

(assert start!113254)

(declare-fun b_free!31269 () Bool)

(declare-fun b_next!31269 () Bool)

(assert (=> start!113254 (= b_free!31269 (not b_next!31269))))

(declare-fun tp!109612 () Bool)

(declare-fun b_and!50455 () Bool)

(assert (=> start!113254 (= tp!109612 b_and!50455)))

(declare-fun mapNonEmpty!57610 () Bool)

(declare-fun mapRes!57610 () Bool)

(declare-fun tp!109613 () Bool)

(declare-fun e!764469 () Bool)

(assert (=> mapNonEmpty!57610 (= mapRes!57610 (and tp!109613 e!764469))))

(declare-datatypes ((V!54795 0))(
  ( (V!54796 (val!18709 Int)) )
))
(declare-datatypes ((ValueCell!17736 0))(
  ( (ValueCellFull!17736 (v!21355 V!54795)) (EmptyCell!17736) )
))
(declare-fun mapRest!57610 () (Array (_ BitVec 32) ValueCell!17736))

(declare-fun mapKey!57610 () (_ BitVec 32))

(declare-datatypes ((array!91339 0))(
  ( (array!91340 (arr!44121 (Array (_ BitVec 32) ValueCell!17736)) (size!44672 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91339)

(declare-fun mapValue!57610 () ValueCell!17736)

(assert (=> mapNonEmpty!57610 (= (arr!44121 _values!1303) (store mapRest!57610 mapKey!57610 mapValue!57610))))

(declare-fun b!1342904 () Bool)

(declare-fun tp_is_empty!37269 () Bool)

(assert (=> b!1342904 (= e!764469 tp_is_empty!37269)))

(declare-fun mapIsEmpty!57610 () Bool)

(assert (=> mapIsEmpty!57610 mapRes!57610))

(declare-fun res!891049 () Bool)

(declare-fun e!764470 () Bool)

(assert (=> start!113254 (=> (not res!891049) (not e!764470))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113254 (= res!891049 (validMask!0 mask!1977))))

(assert (=> start!113254 e!764470))

(assert (=> start!113254 tp_is_empty!37269))

(assert (=> start!113254 true))

(declare-datatypes ((array!91341 0))(
  ( (array!91342 (arr!44122 (Array (_ BitVec 32) (_ BitVec 64))) (size!44673 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91341)

(declare-fun array_inv!33175 (array!91341) Bool)

(assert (=> start!113254 (array_inv!33175 _keys!1571)))

(declare-fun e!764467 () Bool)

(declare-fun array_inv!33176 (array!91339) Bool)

(assert (=> start!113254 (and (array_inv!33176 _values!1303) e!764467)))

(assert (=> start!113254 tp!109612))

(declare-fun b!1342905 () Bool)

(declare-fun res!891054 () Bool)

(assert (=> b!1342905 (=> (not res!891054) (not e!764470))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342905 (= res!891054 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342906 () Bool)

(declare-fun res!891056 () Bool)

(assert (=> b!1342906 (=> (not res!891056) (not e!764470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91341 (_ BitVec 32)) Bool)

(assert (=> b!1342906 (= res!891056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342907 () Bool)

(declare-fun e!764468 () Bool)

(assert (=> b!1342907 (= e!764468 tp_is_empty!37269)))

(declare-fun b!1342908 () Bool)

(declare-fun res!891048 () Bool)

(assert (=> b!1342908 (=> (not res!891048) (not e!764470))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342908 (= res!891048 (not (= (select (arr!44122 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1342909 () Bool)

(declare-fun res!891055 () Bool)

(assert (=> b!1342909 (=> (not res!891055) (not e!764470))))

(declare-datatypes ((List!31429 0))(
  ( (Nil!31426) (Cons!31425 (h!32634 (_ BitVec 64)) (t!45916 List!31429)) )
))
(declare-fun arrayNoDuplicates!0 (array!91341 (_ BitVec 32) List!31429) Bool)

(assert (=> b!1342909 (= res!891055 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31426))))

(declare-fun b!1342910 () Bool)

(assert (=> b!1342910 (= e!764470 (not true))))

(declare-datatypes ((tuple2!24250 0))(
  ( (tuple2!24251 (_1!12135 (_ BitVec 64)) (_2!12135 V!54795)) )
))
(declare-datatypes ((List!31430 0))(
  ( (Nil!31427) (Cons!31426 (h!32635 tuple2!24250) (t!45917 List!31430)) )
))
(declare-datatypes ((ListLongMap!21919 0))(
  ( (ListLongMap!21920 (toList!10975 List!31430)) )
))
(declare-fun lt!594653 () ListLongMap!21919)

(declare-fun zeroValue!1245 () V!54795)

(declare-fun contains!9087 (ListLongMap!21919 (_ BitVec 64)) Bool)

(declare-fun +!4773 (ListLongMap!21919 tuple2!24250) ListLongMap!21919)

(assert (=> b!1342910 (contains!9087 (+!4773 lt!594653 (tuple2!24251 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44011 0))(
  ( (Unit!44012) )
))
(declare-fun lt!594655 () Unit!44011)

(declare-fun addStillContains!1199 (ListLongMap!21919 (_ BitVec 64) V!54795 (_ BitVec 64)) Unit!44011)

(assert (=> b!1342910 (= lt!594655 (addStillContains!1199 lt!594653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1342910 (contains!9087 lt!594653 k0!1142)))

(declare-fun lt!594650 () Unit!44011)

(declare-fun lt!594651 () V!54795)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!365 ((_ BitVec 64) (_ BitVec 64) V!54795 ListLongMap!21919) Unit!44011)

(assert (=> b!1342910 (= lt!594650 (lemmaInListMapAfterAddingDiffThenInBefore!365 k0!1142 (select (arr!44122 _keys!1571) from!1960) lt!594651 lt!594653))))

(declare-fun lt!594652 () ListLongMap!21919)

(assert (=> b!1342910 (contains!9087 lt!594652 k0!1142)))

(declare-fun lt!594654 () Unit!44011)

(assert (=> b!1342910 (= lt!594654 (lemmaInListMapAfterAddingDiffThenInBefore!365 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594652))))

(assert (=> b!1342910 (= lt!594652 (+!4773 lt!594653 (tuple2!24251 (select (arr!44122 _keys!1571) from!1960) lt!594651)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22324 (ValueCell!17736 V!54795) V!54795)

(declare-fun dynLambda!3810 (Int (_ BitVec 64)) V!54795)

(assert (=> b!1342910 (= lt!594651 (get!22324 (select (arr!44121 _values!1303) from!1960) (dynLambda!3810 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54795)

(declare-fun getCurrentListMapNoExtraKeys!6496 (array!91341 array!91339 (_ BitVec 32) (_ BitVec 32) V!54795 V!54795 (_ BitVec 32) Int) ListLongMap!21919)

(assert (=> b!1342910 (= lt!594653 (getCurrentListMapNoExtraKeys!6496 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342911 () Bool)

(assert (=> b!1342911 (= e!764467 (and e!764468 mapRes!57610))))

(declare-fun condMapEmpty!57610 () Bool)

(declare-fun mapDefault!57610 () ValueCell!17736)

(assert (=> b!1342911 (= condMapEmpty!57610 (= (arr!44121 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17736)) mapDefault!57610)))))

(declare-fun b!1342912 () Bool)

(declare-fun res!891052 () Bool)

(assert (=> b!1342912 (=> (not res!891052) (not e!764470))))

(assert (=> b!1342912 (= res!891052 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44673 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342913 () Bool)

(declare-fun res!891053 () Bool)

(assert (=> b!1342913 (=> (not res!891053) (not e!764470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342913 (= res!891053 (validKeyInArray!0 (select (arr!44122 _keys!1571) from!1960)))))

(declare-fun b!1342914 () Bool)

(declare-fun res!891050 () Bool)

(assert (=> b!1342914 (=> (not res!891050) (not e!764470))))

(assert (=> b!1342914 (= res!891050 (and (= (size!44672 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44673 _keys!1571) (size!44672 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342915 () Bool)

(declare-fun res!891051 () Bool)

(assert (=> b!1342915 (=> (not res!891051) (not e!764470))))

(declare-fun getCurrentListMap!5871 (array!91341 array!91339 (_ BitVec 32) (_ BitVec 32) V!54795 V!54795 (_ BitVec 32) Int) ListLongMap!21919)

(assert (=> b!1342915 (= res!891051 (contains!9087 (getCurrentListMap!5871 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(assert (= (and start!113254 res!891049) b!1342914))

(assert (= (and b!1342914 res!891050) b!1342906))

(assert (= (and b!1342906 res!891056) b!1342909))

(assert (= (and b!1342909 res!891055) b!1342912))

(assert (= (and b!1342912 res!891052) b!1342915))

(assert (= (and b!1342915 res!891051) b!1342908))

(assert (= (and b!1342908 res!891048) b!1342913))

(assert (= (and b!1342913 res!891053) b!1342905))

(assert (= (and b!1342905 res!891054) b!1342910))

(assert (= (and b!1342911 condMapEmpty!57610) mapIsEmpty!57610))

(assert (= (and b!1342911 (not condMapEmpty!57610)) mapNonEmpty!57610))

(get-info :version)

(assert (= (and mapNonEmpty!57610 ((_ is ValueCellFull!17736) mapValue!57610)) b!1342904))

(assert (= (and b!1342911 ((_ is ValueCellFull!17736) mapDefault!57610)) b!1342907))

(assert (= start!113254 b!1342911))

(declare-fun b_lambda!24455 () Bool)

(assert (=> (not b_lambda!24455) (not b!1342910)))

(declare-fun t!45915 () Bool)

(declare-fun tb!12291 () Bool)

(assert (=> (and start!113254 (= defaultEntry!1306 defaultEntry!1306) t!45915) tb!12291))

(declare-fun result!25665 () Bool)

(assert (=> tb!12291 (= result!25665 tp_is_empty!37269)))

(assert (=> b!1342910 t!45915))

(declare-fun b_and!50457 () Bool)

(assert (= b_and!50455 (and (=> t!45915 result!25665) b_and!50457)))

(declare-fun m!1230591 () Bool)

(assert (=> b!1342908 m!1230591))

(declare-fun m!1230593 () Bool)

(assert (=> start!113254 m!1230593))

(declare-fun m!1230595 () Bool)

(assert (=> start!113254 m!1230595))

(declare-fun m!1230597 () Bool)

(assert (=> start!113254 m!1230597))

(declare-fun m!1230599 () Bool)

(assert (=> b!1342909 m!1230599))

(assert (=> b!1342913 m!1230591))

(assert (=> b!1342913 m!1230591))

(declare-fun m!1230601 () Bool)

(assert (=> b!1342913 m!1230601))

(declare-fun m!1230603 () Bool)

(assert (=> b!1342910 m!1230603))

(declare-fun m!1230605 () Bool)

(assert (=> b!1342910 m!1230605))

(declare-fun m!1230607 () Bool)

(assert (=> b!1342910 m!1230607))

(declare-fun m!1230609 () Bool)

(assert (=> b!1342910 m!1230609))

(declare-fun m!1230611 () Bool)

(assert (=> b!1342910 m!1230611))

(declare-fun m!1230613 () Bool)

(assert (=> b!1342910 m!1230613))

(assert (=> b!1342910 m!1230609))

(declare-fun m!1230615 () Bool)

(assert (=> b!1342910 m!1230615))

(assert (=> b!1342910 m!1230603))

(declare-fun m!1230617 () Bool)

(assert (=> b!1342910 m!1230617))

(assert (=> b!1342910 m!1230611))

(declare-fun m!1230619 () Bool)

(assert (=> b!1342910 m!1230619))

(declare-fun m!1230621 () Bool)

(assert (=> b!1342910 m!1230621))

(assert (=> b!1342910 m!1230591))

(declare-fun m!1230623 () Bool)

(assert (=> b!1342910 m!1230623))

(assert (=> b!1342910 m!1230591))

(declare-fun m!1230625 () Bool)

(assert (=> b!1342910 m!1230625))

(declare-fun m!1230627 () Bool)

(assert (=> b!1342915 m!1230627))

(assert (=> b!1342915 m!1230627))

(declare-fun m!1230629 () Bool)

(assert (=> b!1342915 m!1230629))

(declare-fun m!1230631 () Bool)

(assert (=> mapNonEmpty!57610 m!1230631))

(declare-fun m!1230633 () Bool)

(assert (=> b!1342906 m!1230633))

(check-sat tp_is_empty!37269 (not b!1342906) (not b!1342910) (not b!1342913) (not b!1342915) (not start!113254) (not b!1342909) (not b_next!31269) b_and!50457 (not b_lambda!24455) (not mapNonEmpty!57610))
(check-sat b_and!50457 (not b_next!31269))
