; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111526 () Bool)

(assert start!111526)

(declare-fun b_free!30147 () Bool)

(declare-fun b_next!30147 () Bool)

(assert (=> start!111526 (= b_free!30147 (not b_next!30147))))

(declare-fun tp!105917 () Bool)

(declare-fun b_and!48463 () Bool)

(assert (=> start!111526 (= tp!105917 b_and!48463)))

(declare-fun b!1319689 () Bool)

(declare-fun e!752913 () Bool)

(declare-fun e!752917 () Bool)

(declare-fun mapRes!55598 () Bool)

(assert (=> b!1319689 (= e!752913 (and e!752917 mapRes!55598))))

(declare-fun condMapEmpty!55598 () Bool)

(declare-datatypes ((V!53059 0))(
  ( (V!53060 (val!18058 Int)) )
))
(declare-datatypes ((ValueCell!17085 0))(
  ( (ValueCellFull!17085 (v!20686 V!53059)) (EmptyCell!17085) )
))
(declare-datatypes ((array!88833 0))(
  ( (array!88834 (arr!42886 (Array (_ BitVec 32) ValueCell!17085)) (size!43437 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88833)

(declare-fun mapDefault!55598 () ValueCell!17085)

(assert (=> b!1319689 (= condMapEmpty!55598 (= (arr!42886 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17085)) mapDefault!55598)))))

(declare-fun b!1319690 () Bool)

(declare-fun e!752915 () Bool)

(declare-fun tp_is_empty!35967 () Bool)

(assert (=> b!1319690 (= e!752915 tp_is_empty!35967)))

(declare-fun b!1319691 () Bool)

(declare-fun e!752914 () Bool)

(assert (=> b!1319691 (= e!752914 (not true))))

(declare-datatypes ((tuple2!23408 0))(
  ( (tuple2!23409 (_1!11714 (_ BitVec 64)) (_2!11714 V!53059)) )
))
(declare-datatypes ((List!30592 0))(
  ( (Nil!30589) (Cons!30588 (h!31797 tuple2!23408) (t!44295 List!30592)) )
))
(declare-datatypes ((ListLongMap!21077 0))(
  ( (ListLongMap!21078 (toList!10554 List!30592)) )
))
(declare-fun lt!586663 () ListLongMap!21077)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8645 (ListLongMap!21077 (_ BitVec 64)) Bool)

(assert (=> b!1319691 (contains!8645 lt!586663 k0!1164)))

(declare-datatypes ((Unit!43420 0))(
  ( (Unit!43421) )
))
(declare-fun lt!586662 () Unit!43420)

(declare-fun zeroValue!1279 () V!53059)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!125 ((_ BitVec 64) (_ BitVec 64) V!53059 ListLongMap!21077) Unit!43420)

(assert (=> b!1319691 (= lt!586662 (lemmaInListMapAfterAddingDiffThenInBefore!125 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586663))))

(declare-fun lt!586661 () ListLongMap!21077)

(assert (=> b!1319691 (contains!8645 lt!586661 k0!1164)))

(declare-fun lt!586660 () Unit!43420)

(declare-fun minValue!1279 () V!53059)

(assert (=> b!1319691 (= lt!586660 (lemmaInListMapAfterAddingDiffThenInBefore!125 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586661))))

(declare-fun +!4510 (ListLongMap!21077 tuple2!23408) ListLongMap!21077)

(assert (=> b!1319691 (= lt!586661 (+!4510 lt!586663 (tuple2!23409 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-datatypes ((array!88835 0))(
  ( (array!88836 (arr!42887 (Array (_ BitVec 32) (_ BitVec 64))) (size!43438 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88835)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6225 (array!88835 array!88833 (_ BitVec 32) (_ BitVec 32) V!53059 V!53059 (_ BitVec 32) Int) ListLongMap!21077)

(declare-fun get!21606 (ValueCell!17085 V!53059) V!53059)

(declare-fun dynLambda!3547 (Int (_ BitVec 64)) V!53059)

(assert (=> b!1319691 (= lt!586663 (+!4510 (getCurrentListMapNoExtraKeys!6225 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23409 (select (arr!42887 _keys!1609) from!2000) (get!21606 (select (arr!42886 _values!1337) from!2000) (dynLambda!3547 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!55598 () Bool)

(declare-fun tp!105918 () Bool)

(assert (=> mapNonEmpty!55598 (= mapRes!55598 (and tp!105918 e!752915))))

(declare-fun mapRest!55598 () (Array (_ BitVec 32) ValueCell!17085))

(declare-fun mapKey!55598 () (_ BitVec 32))

(declare-fun mapValue!55598 () ValueCell!17085)

(assert (=> mapNonEmpty!55598 (= (arr!42886 _values!1337) (store mapRest!55598 mapKey!55598 mapValue!55598))))

(declare-fun b!1319692 () Bool)

(declare-fun res!875961 () Bool)

(assert (=> b!1319692 (=> (not res!875961) (not e!752914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88835 (_ BitVec 32)) Bool)

(assert (=> b!1319692 (= res!875961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319693 () Bool)

(declare-fun res!875967 () Bool)

(assert (=> b!1319693 (=> (not res!875967) (not e!752914))))

(assert (=> b!1319693 (= res!875967 (and (= (size!43437 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43438 _keys!1609) (size!43437 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!875966 () Bool)

(assert (=> start!111526 (=> (not res!875966) (not e!752914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111526 (= res!875966 (validMask!0 mask!2019))))

(assert (=> start!111526 e!752914))

(declare-fun array_inv!32333 (array!88835) Bool)

(assert (=> start!111526 (array_inv!32333 _keys!1609)))

(assert (=> start!111526 true))

(assert (=> start!111526 tp_is_empty!35967))

(declare-fun array_inv!32334 (array!88833) Bool)

(assert (=> start!111526 (and (array_inv!32334 _values!1337) e!752913)))

(assert (=> start!111526 tp!105917))

(declare-fun b!1319694 () Bool)

(declare-fun res!875964 () Bool)

(assert (=> b!1319694 (=> (not res!875964) (not e!752914))))

(assert (=> b!1319694 (= res!875964 (not (= (select (arr!42887 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1319695 () Bool)

(declare-fun res!875965 () Bool)

(assert (=> b!1319695 (=> (not res!875965) (not e!752914))))

(declare-fun getCurrentListMap!5498 (array!88835 array!88833 (_ BitVec 32) (_ BitVec 32) V!53059 V!53059 (_ BitVec 32) Int) ListLongMap!21077)

(assert (=> b!1319695 (= res!875965 (contains!8645 (getCurrentListMap!5498 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1319696 () Bool)

(declare-fun res!875962 () Bool)

(assert (=> b!1319696 (=> (not res!875962) (not e!752914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319696 (= res!875962 (validKeyInArray!0 (select (arr!42887 _keys!1609) from!2000)))))

(declare-fun b!1319697 () Bool)

(declare-fun res!875963 () Bool)

(assert (=> b!1319697 (=> (not res!875963) (not e!752914))))

(declare-datatypes ((List!30593 0))(
  ( (Nil!30590) (Cons!30589 (h!31798 (_ BitVec 64)) (t!44296 List!30593)) )
))
(declare-fun arrayNoDuplicates!0 (array!88835 (_ BitVec 32) List!30593) Bool)

(assert (=> b!1319697 (= res!875963 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30590))))

(declare-fun b!1319698 () Bool)

(assert (=> b!1319698 (= e!752917 tp_is_empty!35967)))

(declare-fun b!1319699 () Bool)

(declare-fun res!875968 () Bool)

(assert (=> b!1319699 (=> (not res!875968) (not e!752914))))

(assert (=> b!1319699 (= res!875968 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43438 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55598 () Bool)

(assert (=> mapIsEmpty!55598 mapRes!55598))

(assert (= (and start!111526 res!875966) b!1319693))

(assert (= (and b!1319693 res!875967) b!1319692))

(assert (= (and b!1319692 res!875961) b!1319697))

(assert (= (and b!1319697 res!875963) b!1319699))

(assert (= (and b!1319699 res!875968) b!1319695))

(assert (= (and b!1319695 res!875965) b!1319694))

(assert (= (and b!1319694 res!875964) b!1319696))

(assert (= (and b!1319696 res!875962) b!1319691))

(assert (= (and b!1319689 condMapEmpty!55598) mapIsEmpty!55598))

(assert (= (and b!1319689 (not condMapEmpty!55598)) mapNonEmpty!55598))

(get-info :version)

(assert (= (and mapNonEmpty!55598 ((_ is ValueCellFull!17085) mapValue!55598)) b!1319690))

(assert (= (and b!1319689 ((_ is ValueCellFull!17085) mapDefault!55598)) b!1319698))

(assert (= start!111526 b!1319689))

(declare-fun b_lambda!23483 () Bool)

(assert (=> (not b_lambda!23483) (not b!1319691)))

(declare-fun t!44294 () Bool)

(declare-fun tb!11507 () Bool)

(assert (=> (and start!111526 (= defaultEntry!1340 defaultEntry!1340) t!44294) tb!11507))

(declare-fun result!24061 () Bool)

(assert (=> tb!11507 (= result!24061 tp_is_empty!35967)))

(assert (=> b!1319691 t!44294))

(declare-fun b_and!48465 () Bool)

(assert (= b_and!48463 (and (=> t!44294 result!24061) b_and!48465)))

(declare-fun m!1207351 () Bool)

(assert (=> b!1319697 m!1207351))

(declare-fun m!1207353 () Bool)

(assert (=> b!1319692 m!1207353))

(declare-fun m!1207355 () Bool)

(assert (=> b!1319695 m!1207355))

(assert (=> b!1319695 m!1207355))

(declare-fun m!1207357 () Bool)

(assert (=> b!1319695 m!1207357))

(declare-fun m!1207359 () Bool)

(assert (=> start!111526 m!1207359))

(declare-fun m!1207361 () Bool)

(assert (=> start!111526 m!1207361))

(declare-fun m!1207363 () Bool)

(assert (=> start!111526 m!1207363))

(declare-fun m!1207365 () Bool)

(assert (=> mapNonEmpty!55598 m!1207365))

(declare-fun m!1207367 () Bool)

(assert (=> b!1319694 m!1207367))

(declare-fun m!1207369 () Bool)

(assert (=> b!1319691 m!1207369))

(declare-fun m!1207371 () Bool)

(assert (=> b!1319691 m!1207371))

(declare-fun m!1207373 () Bool)

(assert (=> b!1319691 m!1207373))

(assert (=> b!1319691 m!1207371))

(declare-fun m!1207375 () Bool)

(assert (=> b!1319691 m!1207375))

(declare-fun m!1207377 () Bool)

(assert (=> b!1319691 m!1207377))

(declare-fun m!1207379 () Bool)

(assert (=> b!1319691 m!1207379))

(declare-fun m!1207381 () Bool)

(assert (=> b!1319691 m!1207381))

(assert (=> b!1319691 m!1207373))

(declare-fun m!1207383 () Bool)

(assert (=> b!1319691 m!1207383))

(assert (=> b!1319691 m!1207381))

(declare-fun m!1207385 () Bool)

(assert (=> b!1319691 m!1207385))

(declare-fun m!1207387 () Bool)

(assert (=> b!1319691 m!1207387))

(assert (=> b!1319691 m!1207367))

(assert (=> b!1319696 m!1207367))

(assert (=> b!1319696 m!1207367))

(declare-fun m!1207389 () Bool)

(assert (=> b!1319696 m!1207389))

(check-sat (not b!1319691) (not b!1319696) (not b_next!30147) b_and!48465 (not b!1319692) tp_is_empty!35967 (not b!1319697) (not mapNonEmpty!55598) (not b_lambda!23483) (not start!111526) (not b!1319695))
(check-sat b_and!48465 (not b_next!30147))
