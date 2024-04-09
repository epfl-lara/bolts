; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111772 () Bool)

(assert start!111772)

(declare-fun b_free!30393 () Bool)

(declare-fun b_next!30393 () Bool)

(assert (=> start!111772 (= b_free!30393 (not b_next!30393))))

(declare-fun tp!106655 () Bool)

(declare-fun b_and!48941 () Bool)

(assert (=> start!111772 (= tp!106655 b_and!48941)))

(declare-fun mapIsEmpty!55967 () Bool)

(declare-fun mapRes!55967 () Bool)

(assert (=> mapIsEmpty!55967 mapRes!55967))

(declare-fun b!1323911 () Bool)

(declare-fun e!754758 () Bool)

(declare-fun tp_is_empty!36213 () Bool)

(assert (=> b!1323911 (= e!754758 tp_is_empty!36213)))

(declare-fun mapNonEmpty!55967 () Bool)

(declare-fun tp!106656 () Bool)

(assert (=> mapNonEmpty!55967 (= mapRes!55967 (and tp!106656 e!754758))))

(declare-datatypes ((V!53387 0))(
  ( (V!53388 (val!18181 Int)) )
))
(declare-datatypes ((ValueCell!17208 0))(
  ( (ValueCellFull!17208 (v!20809 V!53387)) (EmptyCell!17208) )
))
(declare-datatypes ((array!89295 0))(
  ( (array!89296 (arr!43117 (Array (_ BitVec 32) ValueCell!17208)) (size!43668 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89295)

(declare-fun mapRest!55967 () (Array (_ BitVec 32) ValueCell!17208))

(declare-fun mapKey!55967 () (_ BitVec 32))

(declare-fun mapValue!55967 () ValueCell!17208)

(assert (=> mapNonEmpty!55967 (= (arr!43117 _values!1337) (store mapRest!55967 mapKey!55967 mapValue!55967))))

(declare-fun b!1323912 () Bool)

(declare-fun res!878847 () Bool)

(declare-fun e!754762 () Bool)

(assert (=> b!1323912 (=> (not res!878847) (not e!754762))))

(declare-datatypes ((array!89297 0))(
  ( (array!89298 (arr!43118 (Array (_ BitVec 32) (_ BitVec 64))) (size!43669 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89297)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1323912 (= res!878847 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43669 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323914 () Bool)

(declare-fun e!754759 () Bool)

(assert (=> b!1323914 (= e!754759 tp_is_empty!36213)))

(declare-fun b!1323915 () Bool)

(declare-fun res!878848 () Bool)

(assert (=> b!1323915 (=> (not res!878848) (not e!754762))))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1323915 (= res!878848 (and (= (size!43668 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43669 _keys!1609) (size!43668 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323916 () Bool)

(declare-fun res!878845 () Bool)

(assert (=> b!1323916 (=> (not res!878845) (not e!754762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89297 (_ BitVec 32)) Bool)

(assert (=> b!1323916 (= res!878845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323917 () Bool)

(declare-fun res!878844 () Bool)

(assert (=> b!1323917 (=> (not res!878844) (not e!754762))))

(declare-datatypes ((List!30761 0))(
  ( (Nil!30758) (Cons!30757 (h!31966 (_ BitVec 64)) (t!44694 List!30761)) )
))
(declare-fun arrayNoDuplicates!0 (array!89297 (_ BitVec 32) List!30761) Bool)

(assert (=> b!1323917 (= res!878844 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30758))))

(declare-fun b!1323918 () Bool)

(assert (=> b!1323918 (= e!754762 false)))

(declare-fun zeroValue!1279 () V!53387)

(declare-fun minValue!1279 () V!53387)

(declare-fun lt!589354 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23588 0))(
  ( (tuple2!23589 (_1!11804 (_ BitVec 64)) (_2!11804 V!53387)) )
))
(declare-datatypes ((List!30762 0))(
  ( (Nil!30759) (Cons!30758 (h!31967 tuple2!23588) (t!44695 List!30762)) )
))
(declare-datatypes ((ListLongMap!21257 0))(
  ( (ListLongMap!21258 (toList!10644 List!30762)) )
))
(declare-fun contains!8735 (ListLongMap!21257 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5581 (array!89297 array!89295 (_ BitVec 32) (_ BitVec 32) V!53387 V!53387 (_ BitVec 32) Int) ListLongMap!21257)

(assert (=> b!1323918 (= lt!589354 (contains!8735 (getCurrentListMap!5581 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1323913 () Bool)

(declare-fun e!754761 () Bool)

(assert (=> b!1323913 (= e!754761 (and e!754759 mapRes!55967))))

(declare-fun condMapEmpty!55967 () Bool)

(declare-fun mapDefault!55967 () ValueCell!17208)

(assert (=> b!1323913 (= condMapEmpty!55967 (= (arr!43117 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17208)) mapDefault!55967)))))

(declare-fun res!878846 () Bool)

(assert (=> start!111772 (=> (not res!878846) (not e!754762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111772 (= res!878846 (validMask!0 mask!2019))))

(assert (=> start!111772 e!754762))

(declare-fun array_inv!32499 (array!89297) Bool)

(assert (=> start!111772 (array_inv!32499 _keys!1609)))

(assert (=> start!111772 true))

(assert (=> start!111772 tp_is_empty!36213))

(declare-fun array_inv!32500 (array!89295) Bool)

(assert (=> start!111772 (and (array_inv!32500 _values!1337) e!754761)))

(assert (=> start!111772 tp!106655))

(assert (= (and start!111772 res!878846) b!1323915))

(assert (= (and b!1323915 res!878848) b!1323916))

(assert (= (and b!1323916 res!878845) b!1323917))

(assert (= (and b!1323917 res!878844) b!1323912))

(assert (= (and b!1323912 res!878847) b!1323918))

(assert (= (and b!1323913 condMapEmpty!55967) mapIsEmpty!55967))

(assert (= (and b!1323913 (not condMapEmpty!55967)) mapNonEmpty!55967))

(get-info :version)

(assert (= (and mapNonEmpty!55967 ((_ is ValueCellFull!17208) mapValue!55967)) b!1323911))

(assert (= (and b!1323913 ((_ is ValueCellFull!17208) mapDefault!55967)) b!1323914))

(assert (= start!111772 b!1323913))

(declare-fun m!1212955 () Bool)

(assert (=> b!1323917 m!1212955))

(declare-fun m!1212957 () Bool)

(assert (=> b!1323916 m!1212957))

(declare-fun m!1212959 () Bool)

(assert (=> b!1323918 m!1212959))

(assert (=> b!1323918 m!1212959))

(declare-fun m!1212961 () Bool)

(assert (=> b!1323918 m!1212961))

(declare-fun m!1212963 () Bool)

(assert (=> start!111772 m!1212963))

(declare-fun m!1212965 () Bool)

(assert (=> start!111772 m!1212965))

(declare-fun m!1212967 () Bool)

(assert (=> start!111772 m!1212967))

(declare-fun m!1212969 () Bool)

(assert (=> mapNonEmpty!55967 m!1212969))

(check-sat (not b!1323916) tp_is_empty!36213 (not start!111772) (not b!1323918) (not b_next!30393) (not mapNonEmpty!55967) b_and!48941 (not b!1323917))
(check-sat b_and!48941 (not b_next!30393))
