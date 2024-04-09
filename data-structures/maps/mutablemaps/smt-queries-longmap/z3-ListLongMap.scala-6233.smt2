; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79700 () Bool)

(assert start!79700)

(declare-fun b_free!17721 () Bool)

(declare-fun b_next!17721 () Bool)

(assert (=> start!79700 (= b_free!17721 (not b_next!17721))))

(declare-fun tp!61620 () Bool)

(declare-fun b_and!29051 () Bool)

(assert (=> start!79700 (= tp!61620 b_and!29051)))

(declare-fun b!936838 () Bool)

(declare-fun res!630777 () Bool)

(declare-fun e!526094 () Bool)

(assert (=> b!936838 (=> (not res!630777) (not e!526094))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56422 0))(
  ( (array!56423 (arr!27147 (Array (_ BitVec 32) (_ BitVec 64))) (size!27607 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56422)

(assert (=> b!936838 (= res!630777 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27607 _keys!1487))))))

(declare-fun res!630780 () Bool)

(assert (=> start!79700 (=> (not res!630780) (not e!526094))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79700 (= res!630780 (validMask!0 mask!1881))))

(assert (=> start!79700 e!526094))

(assert (=> start!79700 true))

(declare-fun tp_is_empty!20229 () Bool)

(assert (=> start!79700 tp_is_empty!20229))

(declare-datatypes ((V!31937 0))(
  ( (V!31938 (val!10165 Int)) )
))
(declare-datatypes ((ValueCell!9633 0))(
  ( (ValueCellFull!9633 (v!12690 V!31937)) (EmptyCell!9633) )
))
(declare-datatypes ((array!56424 0))(
  ( (array!56425 (arr!27148 (Array (_ BitVec 32) ValueCell!9633)) (size!27608 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56424)

(declare-fun e!526090 () Bool)

(declare-fun array_inv!21080 (array!56424) Bool)

(assert (=> start!79700 (and (array_inv!21080 _values!1231) e!526090)))

(assert (=> start!79700 tp!61620))

(declare-fun array_inv!21081 (array!56422) Bool)

(assert (=> start!79700 (array_inv!21081 _keys!1487)))

(declare-fun b!936839 () Bool)

(declare-datatypes ((Unit!31624 0))(
  ( (Unit!31625) )
))
(declare-fun e!526089 () Unit!31624)

(declare-fun Unit!31626 () Unit!31624)

(assert (=> b!936839 (= e!526089 Unit!31626)))

(declare-fun b!936840 () Bool)

(declare-fun e!526087 () Bool)

(declare-fun mapRes!32115 () Bool)

(assert (=> b!936840 (= e!526090 (and e!526087 mapRes!32115))))

(declare-fun condMapEmpty!32115 () Bool)

(declare-fun mapDefault!32115 () ValueCell!9633)

(assert (=> b!936840 (= condMapEmpty!32115 (= (arr!27148 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9633)) mapDefault!32115)))))

(declare-fun b!936841 () Bool)

(declare-fun e!526093 () Bool)

(assert (=> b!936841 (= e!526094 e!526093)))

(declare-fun res!630778 () Bool)

(assert (=> b!936841 (=> (not res!630778) (not e!526093))))

(declare-datatypes ((tuple2!13456 0))(
  ( (tuple2!13457 (_1!6738 (_ BitVec 64)) (_2!6738 V!31937)) )
))
(declare-datatypes ((List!19263 0))(
  ( (Nil!19260) (Cons!19259 (h!20405 tuple2!13456) (t!27536 List!19263)) )
))
(declare-datatypes ((ListLongMap!12167 0))(
  ( (ListLongMap!12168 (toList!6099 List!19263)) )
))
(declare-fun lt!422605 () ListLongMap!12167)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5109 (ListLongMap!12167 (_ BitVec 64)) Bool)

(assert (=> b!936841 (= res!630778 (contains!5109 lt!422605 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31937)

(declare-fun minValue!1173 () V!31937)

(declare-fun getCurrentListMap!3288 (array!56422 array!56424 (_ BitVec 32) (_ BitVec 32) V!31937 V!31937 (_ BitVec 32) Int) ListLongMap!12167)

(assert (=> b!936841 (= lt!422605 (getCurrentListMap!3288 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936842 () Bool)

(assert (=> b!936842 (= e!526087 tp_is_empty!20229)))

(declare-fun b!936843 () Bool)

(declare-fun e!526091 () Unit!31624)

(declare-fun Unit!31627 () Unit!31624)

(assert (=> b!936843 (= e!526091 Unit!31627)))

(declare-fun b!936844 () Bool)

(declare-fun e!526092 () Bool)

(assert (=> b!936844 (= e!526092 false)))

(declare-fun lt!422599 () Unit!31624)

(assert (=> b!936844 (= lt!422599 e!526089)))

(declare-fun c!97415 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936844 (= c!97415 (validKeyInArray!0 k0!1099))))

(declare-fun mapIsEmpty!32115 () Bool)

(assert (=> mapIsEmpty!32115 mapRes!32115))

(declare-fun mapNonEmpty!32115 () Bool)

(declare-fun tp!61619 () Bool)

(declare-fun e!526088 () Bool)

(assert (=> mapNonEmpty!32115 (= mapRes!32115 (and tp!61619 e!526088))))

(declare-fun mapKey!32115 () (_ BitVec 32))

(declare-fun mapRest!32115 () (Array (_ BitVec 32) ValueCell!9633))

(declare-fun mapValue!32115 () ValueCell!9633)

(assert (=> mapNonEmpty!32115 (= (arr!27148 _values!1231) (store mapRest!32115 mapKey!32115 mapValue!32115))))

(declare-fun b!936845 () Bool)

(declare-fun res!630782 () Bool)

(assert (=> b!936845 (=> (not res!630782) (not e!526094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56422 (_ BitVec 32)) Bool)

(assert (=> b!936845 (= res!630782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun e!526085 () Bool)

(declare-fun b!936846 () Bool)

(declare-fun arrayContainsKey!0 (array!56422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936846 (= e!526085 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!936847 () Bool)

(declare-fun lt!422598 () ListLongMap!12167)

(declare-fun lt!422603 () V!31937)

(declare-fun apply!877 (ListLongMap!12167 (_ BitVec 64)) V!31937)

(assert (=> b!936847 (= (apply!877 lt!422598 k0!1099) lt!422603)))

(declare-fun lt!422608 () Unit!31624)

(declare-fun lt!422600 () (_ BitVec 64))

(declare-fun lt!422607 () V!31937)

(declare-fun addApplyDifferent!425 (ListLongMap!12167 (_ BitVec 64) V!31937 (_ BitVec 64)) Unit!31624)

(assert (=> b!936847 (= lt!422608 (addApplyDifferent!425 lt!422605 lt!422600 lt!422607 k0!1099))))

(assert (=> b!936847 (not (= lt!422600 k0!1099))))

(declare-fun lt!422606 () Unit!31624)

(declare-datatypes ((List!19264 0))(
  ( (Nil!19261) (Cons!19260 (h!20406 (_ BitVec 64)) (t!27537 List!19264)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56422 (_ BitVec 64) (_ BitVec 32) List!19264) Unit!31624)

(assert (=> b!936847 (= lt!422606 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19261))))

(assert (=> b!936847 e!526085))

(declare-fun c!97414 () Bool)

(assert (=> b!936847 (= c!97414 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422596 () Unit!31624)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!308 (array!56422 array!56424 (_ BitVec 32) (_ BitVec 32) V!31937 V!31937 (_ BitVec 64) (_ BitVec 32) Int) Unit!31624)

(assert (=> b!936847 (= lt!422596 (lemmaListMapContainsThenArrayContainsFrom!308 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56422 (_ BitVec 32) List!19264) Bool)

(assert (=> b!936847 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19261)))

(declare-fun lt!422597 () Unit!31624)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56422 (_ BitVec 32) (_ BitVec 32)) Unit!31624)

(assert (=> b!936847 (= lt!422597 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!936847 (contains!5109 lt!422598 k0!1099)))

(declare-fun lt!422604 () tuple2!13456)

(declare-fun +!2795 (ListLongMap!12167 tuple2!13456) ListLongMap!12167)

(assert (=> b!936847 (= lt!422598 (+!2795 lt!422605 lt!422604))))

(declare-fun lt!422602 () Unit!31624)

(declare-fun addStillContains!551 (ListLongMap!12167 (_ BitVec 64) V!31937 (_ BitVec 64)) Unit!31624)

(assert (=> b!936847 (= lt!422602 (addStillContains!551 lt!422605 lt!422600 lt!422607 k0!1099))))

(assert (=> b!936847 (= (getCurrentListMap!3288 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2795 (getCurrentListMap!3288 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422604))))

(assert (=> b!936847 (= lt!422604 (tuple2!13457 lt!422600 lt!422607))))

(declare-fun get!14329 (ValueCell!9633 V!31937) V!31937)

(declare-fun dynLambda!1634 (Int (_ BitVec 64)) V!31937)

(assert (=> b!936847 (= lt!422607 (get!14329 (select (arr!27148 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1634 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422601 () Unit!31624)

(declare-fun lemmaListMapRecursiveValidKeyArray!230 (array!56422 array!56424 (_ BitVec 32) (_ BitVec 32) V!31937 V!31937 (_ BitVec 32) Int) Unit!31624)

(assert (=> b!936847 (= lt!422601 (lemmaListMapRecursiveValidKeyArray!230 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936847 (= e!526091 lt!422608)))

(declare-fun b!936848 () Bool)

(declare-fun res!630781 () Bool)

(assert (=> b!936848 (=> (not res!630781) (not e!526094))))

(assert (=> b!936848 (= res!630781 (and (= (size!27608 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27607 _keys!1487) (size!27608 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936849 () Bool)

(assert (=> b!936849 (= e!526093 e!526092)))

(declare-fun res!630776 () Bool)

(assert (=> b!936849 (=> (not res!630776) (not e!526092))))

(declare-fun v!791 () V!31937)

(assert (=> b!936849 (= res!630776 (and (= lt!422603 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!936849 (= lt!422603 (apply!877 lt!422605 k0!1099))))

(declare-fun b!936850 () Bool)

(declare-fun res!630779 () Bool)

(assert (=> b!936850 (=> (not res!630779) (not e!526094))))

(assert (=> b!936850 (= res!630779 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19261))))

(declare-fun b!936851 () Bool)

(assert (=> b!936851 (= e!526085 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936852 () Bool)

(assert (=> b!936852 (= e!526088 tp_is_empty!20229)))

(declare-fun b!936853 () Bool)

(assert (=> b!936853 (= e!526089 e!526091)))

(assert (=> b!936853 (= lt!422600 (select (arr!27147 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97413 () Bool)

(assert (=> b!936853 (= c!97413 (validKeyInArray!0 lt!422600))))

(assert (= (and start!79700 res!630780) b!936848))

(assert (= (and b!936848 res!630781) b!936845))

(assert (= (and b!936845 res!630782) b!936850))

(assert (= (and b!936850 res!630779) b!936838))

(assert (= (and b!936838 res!630777) b!936841))

(assert (= (and b!936841 res!630778) b!936849))

(assert (= (and b!936849 res!630776) b!936844))

(assert (= (and b!936844 c!97415) b!936853))

(assert (= (and b!936844 (not c!97415)) b!936839))

(assert (= (and b!936853 c!97413) b!936847))

(assert (= (and b!936853 (not c!97413)) b!936843))

(assert (= (and b!936847 c!97414) b!936846))

(assert (= (and b!936847 (not c!97414)) b!936851))

(assert (= (and b!936840 condMapEmpty!32115) mapIsEmpty!32115))

(assert (= (and b!936840 (not condMapEmpty!32115)) mapNonEmpty!32115))

(get-info :version)

(assert (= (and mapNonEmpty!32115 ((_ is ValueCellFull!9633) mapValue!32115)) b!936852))

(assert (= (and b!936840 ((_ is ValueCellFull!9633) mapDefault!32115)) b!936842))

(assert (= start!79700 b!936840))

(declare-fun b_lambda!14157 () Bool)

(assert (=> (not b_lambda!14157) (not b!936847)))

(declare-fun t!27535 () Bool)

(declare-fun tb!6123 () Bool)

(assert (=> (and start!79700 (= defaultEntry!1235 defaultEntry!1235) t!27535) tb!6123))

(declare-fun result!12071 () Bool)

(assert (=> tb!6123 (= result!12071 tp_is_empty!20229)))

(assert (=> b!936847 t!27535))

(declare-fun b_and!29053 () Bool)

(assert (= b_and!29051 (and (=> t!27535 result!12071) b_and!29053)))

(declare-fun m!871635 () Bool)

(assert (=> b!936853 m!871635))

(declare-fun m!871637 () Bool)

(assert (=> b!936853 m!871637))

(declare-fun m!871639 () Bool)

(assert (=> b!936849 m!871639))

(declare-fun m!871641 () Bool)

(assert (=> mapNonEmpty!32115 m!871641))

(declare-fun m!871643 () Bool)

(assert (=> b!936850 m!871643))

(declare-fun m!871645 () Bool)

(assert (=> b!936845 m!871645))

(declare-fun m!871647 () Bool)

(assert (=> start!79700 m!871647))

(declare-fun m!871649 () Bool)

(assert (=> start!79700 m!871649))

(declare-fun m!871651 () Bool)

(assert (=> start!79700 m!871651))

(declare-fun m!871653 () Bool)

(assert (=> b!936846 m!871653))

(declare-fun m!871655 () Bool)

(assert (=> b!936841 m!871655))

(declare-fun m!871657 () Bool)

(assert (=> b!936841 m!871657))

(declare-fun m!871659 () Bool)

(assert (=> b!936844 m!871659))

(declare-fun m!871661 () Bool)

(assert (=> b!936847 m!871661))

(declare-fun m!871663 () Bool)

(assert (=> b!936847 m!871663))

(declare-fun m!871665 () Bool)

(assert (=> b!936847 m!871665))

(declare-fun m!871667 () Bool)

(assert (=> b!936847 m!871667))

(declare-fun m!871669 () Bool)

(assert (=> b!936847 m!871669))

(declare-fun m!871671 () Bool)

(assert (=> b!936847 m!871671))

(assert (=> b!936847 m!871669))

(assert (=> b!936847 m!871671))

(declare-fun m!871673 () Bool)

(assert (=> b!936847 m!871673))

(declare-fun m!871675 () Bool)

(assert (=> b!936847 m!871675))

(declare-fun m!871677 () Bool)

(assert (=> b!936847 m!871677))

(declare-fun m!871679 () Bool)

(assert (=> b!936847 m!871679))

(declare-fun m!871681 () Bool)

(assert (=> b!936847 m!871681))

(declare-fun m!871683 () Bool)

(assert (=> b!936847 m!871683))

(declare-fun m!871685 () Bool)

(assert (=> b!936847 m!871685))

(assert (=> b!936847 m!871677))

(declare-fun m!871687 () Bool)

(assert (=> b!936847 m!871687))

(declare-fun m!871689 () Bool)

(assert (=> b!936847 m!871689))

(declare-fun m!871691 () Bool)

(assert (=> b!936847 m!871691))

(check-sat (not b!936853) (not b!936841) (not mapNonEmpty!32115) tp_is_empty!20229 (not b!936850) (not b_next!17721) (not b!936849) (not b!936845) b_and!29053 (not start!79700) (not b_lambda!14157) (not b!936847) (not b!936844) (not b!936846))
(check-sat b_and!29053 (not b_next!17721))
