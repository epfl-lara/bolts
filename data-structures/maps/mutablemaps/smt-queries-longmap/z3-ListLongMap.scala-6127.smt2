; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78900 () Bool)

(assert start!78900)

(declare-fun b_free!17085 () Bool)

(declare-fun b_next!17085 () Bool)

(assert (=> start!78900 (= b_free!17085 (not b_next!17085))))

(declare-fun tp!59697 () Bool)

(declare-fun b_and!27925 () Bool)

(assert (=> start!78900 (= tp!59697 b_and!27925)))

(declare-fun b!921557 () Bool)

(declare-fun e!517153 () Bool)

(declare-fun e!517161 () Bool)

(declare-fun mapRes!31146 () Bool)

(assert (=> b!921557 (= e!517153 (and e!517161 mapRes!31146))))

(declare-fun condMapEmpty!31146 () Bool)

(declare-datatypes ((V!31089 0))(
  ( (V!31090 (val!9847 Int)) )
))
(declare-datatypes ((ValueCell!9315 0))(
  ( (ValueCellFull!9315 (v!12365 V!31089)) (EmptyCell!9315) )
))
(declare-datatypes ((array!55174 0))(
  ( (array!55175 (arr!26528 (Array (_ BitVec 32) ValueCell!9315)) (size!26988 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55174)

(declare-fun mapDefault!31146 () ValueCell!9315)

(assert (=> b!921557 (= condMapEmpty!31146 (= (arr!26528 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9315)) mapDefault!31146)))))

(declare-fun b!921558 () Bool)

(declare-fun res!621587 () Bool)

(declare-fun e!517156 () Bool)

(assert (=> b!921558 (=> (not res!621587) (not e!517156))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921558 (= res!621587 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921559 () Bool)

(declare-fun res!621590 () Bool)

(declare-fun e!517157 () Bool)

(assert (=> b!921559 (=> res!621590 e!517157)))

(declare-datatypes ((List!18745 0))(
  ( (Nil!18742) (Cons!18741 (h!19887 (_ BitVec 64)) (t!26568 List!18745)) )
))
(declare-fun contains!4850 (List!18745 (_ BitVec 64)) Bool)

(assert (=> b!921559 (= res!621590 (contains!4850 Nil!18742 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921560 () Bool)

(declare-fun res!621591 () Bool)

(assert (=> b!921560 (=> res!621591 e!517157)))

(declare-fun noDuplicate!1350 (List!18745) Bool)

(assert (=> b!921560 (= res!621591 (not (noDuplicate!1350 Nil!18742)))))

(declare-fun b!921561 () Bool)

(declare-fun res!621592 () Bool)

(declare-fun e!517159 () Bool)

(assert (=> b!921561 (=> (not res!621592) (not e!517159))))

(declare-datatypes ((array!55176 0))(
  ( (array!55177 (arr!26529 (Array (_ BitVec 32) (_ BitVec 64))) (size!26989 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55176)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55176 (_ BitVec 32)) Bool)

(assert (=> b!921561 (= res!621592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31146 () Bool)

(assert (=> mapIsEmpty!31146 mapRes!31146))

(declare-fun mapNonEmpty!31146 () Bool)

(declare-fun tp!59696 () Bool)

(declare-fun e!517160 () Bool)

(assert (=> mapNonEmpty!31146 (= mapRes!31146 (and tp!59696 e!517160))))

(declare-fun mapKey!31146 () (_ BitVec 32))

(declare-fun mapValue!31146 () ValueCell!9315)

(declare-fun mapRest!31146 () (Array (_ BitVec 32) ValueCell!9315))

(assert (=> mapNonEmpty!31146 (= (arr!26528 _values!1231) (store mapRest!31146 mapKey!31146 mapValue!31146))))

(declare-fun b!921562 () Bool)

(declare-fun tp_is_empty!19593 () Bool)

(assert (=> b!921562 (= e!517160 tp_is_empty!19593)))

(declare-fun b!921563 () Bool)

(declare-fun e!517158 () Bool)

(assert (=> b!921563 (= e!517158 (not e!517157))))

(declare-fun res!621594 () Bool)

(assert (=> b!921563 (=> res!621594 e!517157)))

(assert (=> b!921563 (= res!621594 (or (bvsge (size!26989 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26989 _keys!1487))))))

(declare-fun e!517155 () Bool)

(assert (=> b!921563 e!517155))

(declare-fun c!96047 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(assert (=> b!921563 (= c!96047 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((Unit!31085 0))(
  ( (Unit!31086) )
))
(declare-fun lt!413771 () Unit!31085)

(declare-fun zeroValue!1173 () V!31089)

(declare-fun minValue!1173 () V!31089)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!185 (array!55176 array!55174 (_ BitVec 32) (_ BitVec 32) V!31089 V!31089 (_ BitVec 64) (_ BitVec 32) Int) Unit!31085)

(assert (=> b!921563 (= lt!413771 (lemmaListMapContainsThenArrayContainsFrom!185 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55176 (_ BitVec 32) List!18745) Bool)

(assert (=> b!921563 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18742)))

(declare-fun lt!413775 () Unit!31085)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55176 (_ BitVec 32) (_ BitVec 32)) Unit!31085)

(assert (=> b!921563 (= lt!413775 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12904 0))(
  ( (tuple2!12905 (_1!6462 (_ BitVec 64)) (_2!6462 V!31089)) )
))
(declare-datatypes ((List!18746 0))(
  ( (Nil!18743) (Cons!18742 (h!19888 tuple2!12904) (t!26569 List!18746)) )
))
(declare-datatypes ((ListLongMap!11615 0))(
  ( (ListLongMap!11616 (toList!5823 List!18746)) )
))
(declare-fun lt!413767 () ListLongMap!11615)

(declare-fun lt!413772 () tuple2!12904)

(declare-fun contains!4851 (ListLongMap!11615 (_ BitVec 64)) Bool)

(declare-fun +!2639 (ListLongMap!11615 tuple2!12904) ListLongMap!11615)

(assert (=> b!921563 (contains!4851 (+!2639 lt!413767 lt!413772) k0!1099)))

(declare-fun lt!413773 () Unit!31085)

(declare-fun lt!413768 () V!31089)

(declare-fun lt!413769 () (_ BitVec 64))

(declare-fun addStillContains!401 (ListLongMap!11615 (_ BitVec 64) V!31089 (_ BitVec 64)) Unit!31085)

(assert (=> b!921563 (= lt!413773 (addStillContains!401 lt!413767 lt!413769 lt!413768 k0!1099))))

(declare-fun getCurrentListMap!3045 (array!55176 array!55174 (_ BitVec 32) (_ BitVec 32) V!31089 V!31089 (_ BitVec 32) Int) ListLongMap!11615)

(assert (=> b!921563 (= (getCurrentListMap!3045 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2639 (getCurrentListMap!3045 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413772))))

(assert (=> b!921563 (= lt!413772 (tuple2!12905 lt!413769 lt!413768))))

(declare-fun get!13946 (ValueCell!9315 V!31089) V!31089)

(declare-fun dynLambda!1478 (Int (_ BitVec 64)) V!31089)

(assert (=> b!921563 (= lt!413768 (get!13946 (select (arr!26528 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1478 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413770 () Unit!31085)

(declare-fun lemmaListMapRecursiveValidKeyArray!74 (array!55176 array!55174 (_ BitVec 32) (_ BitVec 32) V!31089 V!31089 (_ BitVec 32) Int) Unit!31085)

(assert (=> b!921563 (= lt!413770 (lemmaListMapRecursiveValidKeyArray!74 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921564 () Bool)

(assert (=> b!921564 (= e!517159 e!517156)))

(declare-fun res!621593 () Bool)

(assert (=> b!921564 (=> (not res!621593) (not e!517156))))

(assert (=> b!921564 (= res!621593 (contains!4851 lt!413767 k0!1099))))

(assert (=> b!921564 (= lt!413767 (getCurrentListMap!3045 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921565 () Bool)

(assert (=> b!921565 (= e!517161 tp_is_empty!19593)))

(declare-fun b!921566 () Bool)

(declare-fun res!621588 () Bool)

(assert (=> b!921566 (=> (not res!621588) (not e!517159))))

(assert (=> b!921566 (= res!621588 (and (= (size!26988 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26989 _keys!1487) (size!26988 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!921567 () Bool)

(declare-fun res!621595 () Bool)

(assert (=> b!921567 (=> (not res!621595) (not e!517159))))

(assert (=> b!921567 (= res!621595 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26989 _keys!1487))))))

(declare-fun b!921569 () Bool)

(declare-fun res!621589 () Bool)

(assert (=> b!921569 (=> (not res!621589) (not e!517156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921569 (= res!621589 (validKeyInArray!0 k0!1099))))

(declare-fun b!921570 () Bool)

(declare-fun res!621584 () Bool)

(assert (=> b!921570 (=> (not res!621584) (not e!517159))))

(assert (=> b!921570 (= res!621584 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18742))))

(declare-fun b!921571 () Bool)

(assert (=> b!921571 (= e!517155 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921572 () Bool)

(assert (=> b!921572 (= e!517157 true)))

(declare-fun lt!413774 () Bool)

(assert (=> b!921572 (= lt!413774 (contains!4850 Nil!18742 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!921573 () Bool)

(declare-fun res!621585 () Bool)

(assert (=> b!921573 (=> (not res!621585) (not e!517156))))

(declare-fun v!791 () V!31089)

(declare-fun apply!630 (ListLongMap!11615 (_ BitVec 64)) V!31089)

(assert (=> b!921573 (= res!621585 (= (apply!630 lt!413767 k0!1099) v!791))))

(declare-fun b!921574 () Bool)

(assert (=> b!921574 (= e!517156 e!517158)))

(declare-fun res!621586 () Bool)

(assert (=> b!921574 (=> (not res!621586) (not e!517158))))

(assert (=> b!921574 (= res!621586 (validKeyInArray!0 lt!413769))))

(assert (=> b!921574 (= lt!413769 (select (arr!26529 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!621596 () Bool)

(assert (=> start!78900 (=> (not res!621596) (not e!517159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78900 (= res!621596 (validMask!0 mask!1881))))

(assert (=> start!78900 e!517159))

(assert (=> start!78900 true))

(assert (=> start!78900 tp_is_empty!19593))

(declare-fun array_inv!20652 (array!55174) Bool)

(assert (=> start!78900 (and (array_inv!20652 _values!1231) e!517153)))

(assert (=> start!78900 tp!59697))

(declare-fun array_inv!20653 (array!55176) Bool)

(assert (=> start!78900 (array_inv!20653 _keys!1487)))

(declare-fun b!921568 () Bool)

(declare-fun arrayContainsKey!0 (array!55176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921568 (= e!517155 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(assert (= (and start!78900 res!621596) b!921566))

(assert (= (and b!921566 res!621588) b!921561))

(assert (= (and b!921561 res!621592) b!921570))

(assert (= (and b!921570 res!621584) b!921567))

(assert (= (and b!921567 res!621595) b!921564))

(assert (= (and b!921564 res!621593) b!921573))

(assert (= (and b!921573 res!621585) b!921558))

(assert (= (and b!921558 res!621587) b!921569))

(assert (= (and b!921569 res!621589) b!921574))

(assert (= (and b!921574 res!621586) b!921563))

(assert (= (and b!921563 c!96047) b!921568))

(assert (= (and b!921563 (not c!96047)) b!921571))

(assert (= (and b!921563 (not res!621594)) b!921560))

(assert (= (and b!921560 (not res!621591)) b!921559))

(assert (= (and b!921559 (not res!621590)) b!921572))

(assert (= (and b!921557 condMapEmpty!31146) mapIsEmpty!31146))

(assert (= (and b!921557 (not condMapEmpty!31146)) mapNonEmpty!31146))

(get-info :version)

(assert (= (and mapNonEmpty!31146 ((_ is ValueCellFull!9315) mapValue!31146)) b!921562))

(assert (= (and b!921557 ((_ is ValueCellFull!9315) mapDefault!31146)) b!921565))

(assert (= start!78900 b!921557))

(declare-fun b_lambda!13617 () Bool)

(assert (=> (not b_lambda!13617) (not b!921563)))

(declare-fun t!26567 () Bool)

(declare-fun tb!5673 () Bool)

(assert (=> (and start!78900 (= defaultEntry!1235 defaultEntry!1235) t!26567) tb!5673))

(declare-fun result!11161 () Bool)

(assert (=> tb!5673 (= result!11161 tp_is_empty!19593)))

(assert (=> b!921563 t!26567))

(declare-fun b_and!27927 () Bool)

(assert (= b_and!27925 (and (=> t!26567 result!11161) b_and!27927)))

(declare-fun m!855629 () Bool)

(assert (=> b!921560 m!855629))

(declare-fun m!855631 () Bool)

(assert (=> b!921574 m!855631))

(declare-fun m!855633 () Bool)

(assert (=> b!921574 m!855633))

(declare-fun m!855635 () Bool)

(assert (=> mapNonEmpty!31146 m!855635))

(declare-fun m!855637 () Bool)

(assert (=> b!921563 m!855637))

(declare-fun m!855639 () Bool)

(assert (=> b!921563 m!855639))

(declare-fun m!855641 () Bool)

(assert (=> b!921563 m!855641))

(declare-fun m!855643 () Bool)

(assert (=> b!921563 m!855643))

(declare-fun m!855645 () Bool)

(assert (=> b!921563 m!855645))

(declare-fun m!855647 () Bool)

(assert (=> b!921563 m!855647))

(declare-fun m!855649 () Bool)

(assert (=> b!921563 m!855649))

(declare-fun m!855651 () Bool)

(assert (=> b!921563 m!855651))

(assert (=> b!921563 m!855639))

(assert (=> b!921563 m!855643))

(declare-fun m!855653 () Bool)

(assert (=> b!921563 m!855653))

(declare-fun m!855655 () Bool)

(assert (=> b!921563 m!855655))

(assert (=> b!921563 m!855645))

(declare-fun m!855657 () Bool)

(assert (=> b!921563 m!855657))

(declare-fun m!855659 () Bool)

(assert (=> b!921563 m!855659))

(assert (=> b!921563 m!855649))

(declare-fun m!855661 () Bool)

(assert (=> b!921563 m!855661))

(declare-fun m!855663 () Bool)

(assert (=> b!921561 m!855663))

(declare-fun m!855665 () Bool)

(assert (=> b!921559 m!855665))

(declare-fun m!855667 () Bool)

(assert (=> b!921568 m!855667))

(declare-fun m!855669 () Bool)

(assert (=> b!921573 m!855669))

(declare-fun m!855671 () Bool)

(assert (=> b!921569 m!855671))

(declare-fun m!855673 () Bool)

(assert (=> b!921564 m!855673))

(declare-fun m!855675 () Bool)

(assert (=> b!921564 m!855675))

(declare-fun m!855677 () Bool)

(assert (=> b!921570 m!855677))

(declare-fun m!855679 () Bool)

(assert (=> b!921572 m!855679))

(declare-fun m!855681 () Bool)

(assert (=> start!78900 m!855681))

(declare-fun m!855683 () Bool)

(assert (=> start!78900 m!855683))

(declare-fun m!855685 () Bool)

(assert (=> start!78900 m!855685))

(check-sat (not b!921570) (not b_next!17085) (not b!921572) (not start!78900) (not b!921561) (not mapNonEmpty!31146) (not b!921568) (not b!921564) (not b_lambda!13617) (not b!921563) (not b!921574) (not b!921559) tp_is_empty!19593 (not b!921573) (not b!921569) b_and!27927 (not b!921560))
(check-sat b_and!27927 (not b_next!17085))
