; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79122 () Bool)

(assert start!79122)

(declare-fun b_free!17307 () Bool)

(declare-fun b_next!17307 () Bool)

(assert (=> start!79122 (= b_free!17307 (not b_next!17307))))

(declare-fun tp!60362 () Bool)

(declare-fun b_and!28369 () Bool)

(assert (=> start!79122 (= tp!60362 b_and!28369)))

(declare-fun b!927783 () Bool)

(declare-fun res!624973 () Bool)

(declare-fun e!520927 () Bool)

(assert (=> b!927783 (=> (not res!624973) (not e!520927))))

(declare-datatypes ((array!55608 0))(
  ( (array!55609 (arr!26745 (Array (_ BitVec 32) (_ BitVec 64))) (size!27205 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55608)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55608 (_ BitVec 32)) Bool)

(assert (=> b!927783 (= res!624973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!624977 () Bool)

(assert (=> start!79122 (=> (not res!624977) (not e!520927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79122 (= res!624977 (validMask!0 mask!1881))))

(assert (=> start!79122 e!520927))

(assert (=> start!79122 true))

(declare-fun tp_is_empty!19815 () Bool)

(assert (=> start!79122 tp_is_empty!19815))

(declare-datatypes ((V!31385 0))(
  ( (V!31386 (val!9958 Int)) )
))
(declare-datatypes ((ValueCell!9426 0))(
  ( (ValueCellFull!9426 (v!12476 V!31385)) (EmptyCell!9426) )
))
(declare-datatypes ((array!55610 0))(
  ( (array!55611 (arr!26746 (Array (_ BitVec 32) ValueCell!9426)) (size!27206 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55610)

(declare-fun e!520922 () Bool)

(declare-fun array_inv!20816 (array!55610) Bool)

(assert (=> start!79122 (and (array_inv!20816 _values!1231) e!520922)))

(assert (=> start!79122 tp!60362))

(declare-fun array_inv!20817 (array!55608) Bool)

(assert (=> start!79122 (array_inv!20817 _keys!1487)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!520926 () Bool)

(declare-fun b!927784 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!55608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927784 (= e!520926 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!927785 () Bool)

(declare-datatypes ((Unit!31393 0))(
  ( (Unit!31394) )
))
(declare-fun e!520928 () Unit!31393)

(declare-fun e!520923 () Unit!31393)

(assert (=> b!927785 (= e!520928 e!520923)))

(declare-fun lt!418340 () (_ BitVec 64))

(assert (=> b!927785 (= lt!418340 (select (arr!26745 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96860 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927785 (= c!96860 (validKeyInArray!0 lt!418340))))

(declare-fun b!927786 () Bool)

(declare-fun e!520924 () Bool)

(assert (=> b!927786 (= e!520924 tp_is_empty!19815)))

(declare-fun b!927787 () Bool)

(declare-fun res!624975 () Bool)

(declare-fun e!520921 () Bool)

(assert (=> b!927787 (=> (not res!624975) (not e!520921))))

(declare-datatypes ((tuple2!13112 0))(
  ( (tuple2!13113 (_1!6566 (_ BitVec 64)) (_2!6566 V!31385)) )
))
(declare-datatypes ((List!18938 0))(
  ( (Nil!18935) (Cons!18934 (h!20080 tuple2!13112) (t!26983 List!18938)) )
))
(declare-datatypes ((ListLongMap!11823 0))(
  ( (ListLongMap!11824 (toList!5927 List!18938)) )
))
(declare-fun lt!418347 () ListLongMap!11823)

(declare-fun v!791 () V!31385)

(declare-fun apply!723 (ListLongMap!11823 (_ BitVec 64)) V!31385)

(assert (=> b!927787 (= res!624975 (= (apply!723 lt!418347 k0!1099) v!791))))

(declare-fun b!927788 () Bool)

(assert (=> b!927788 (= e!520921 (not true))))

(declare-fun e!520929 () Bool)

(assert (=> b!927788 e!520929))

(declare-fun res!624976 () Bool)

(assert (=> b!927788 (=> (not res!624976) (not e!520929))))

(declare-fun lt!418339 () ListLongMap!11823)

(declare-fun contains!4946 (ListLongMap!11823 (_ BitVec 64)) Bool)

(assert (=> b!927788 (= res!624976 (contains!4946 lt!418339 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31385)

(declare-fun minValue!1173 () V!31385)

(declare-fun getCurrentListMap!3140 (array!55608 array!55610 (_ BitVec 32) (_ BitVec 32) V!31385 V!31385 (_ BitVec 32) Int) ListLongMap!11823)

(assert (=> b!927788 (= lt!418339 (getCurrentListMap!3140 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418344 () Unit!31393)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!103 (array!55608 array!55610 (_ BitVec 32) (_ BitVec 32) V!31385 V!31385 (_ BitVec 64) V!31385 (_ BitVec 32) Int) Unit!31393)

(assert (=> b!927788 (= lt!418344 (lemmaListMapApplyFromThenApplyFromZero!103 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927789 () Bool)

(declare-fun res!624967 () Bool)

(assert (=> b!927789 (=> (not res!624967) (not e!520927))))

(declare-datatypes ((List!18939 0))(
  ( (Nil!18936) (Cons!18935 (h!20081 (_ BitVec 64)) (t!26984 List!18939)) )
))
(declare-fun arrayNoDuplicates!0 (array!55608 (_ BitVec 32) List!18939) Bool)

(assert (=> b!927789 (= res!624967 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18936))))

(declare-fun b!927790 () Bool)

(declare-fun e!520920 () Bool)

(assert (=> b!927790 (= e!520920 e!520921)))

(declare-fun res!624974 () Bool)

(assert (=> b!927790 (=> (not res!624974) (not e!520921))))

(assert (=> b!927790 (= res!624974 (contains!4946 lt!418347 k0!1099))))

(assert (=> b!927790 (= lt!418347 (getCurrentListMap!3140 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927791 () Bool)

(declare-fun mapRes!31479 () Bool)

(assert (=> b!927791 (= e!520922 (and e!520924 mapRes!31479))))

(declare-fun condMapEmpty!31479 () Bool)

(declare-fun mapDefault!31479 () ValueCell!9426)

(assert (=> b!927791 (= condMapEmpty!31479 (= (arr!26746 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9426)) mapDefault!31479)))))

(declare-fun b!927792 () Bool)

(declare-fun e!520917 () Bool)

(declare-fun e!520925 () Bool)

(assert (=> b!927792 (= e!520917 e!520925)))

(declare-fun res!624970 () Bool)

(assert (=> b!927792 (=> (not res!624970) (not e!520925))))

(declare-fun lt!418351 () V!31385)

(assert (=> b!927792 (= res!624970 (and (= lt!418351 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!418346 () ListLongMap!11823)

(assert (=> b!927792 (= lt!418351 (apply!723 lt!418346 k0!1099))))

(declare-fun mapIsEmpty!31479 () Bool)

(assert (=> mapIsEmpty!31479 mapRes!31479))

(declare-fun b!927793 () Bool)

(declare-fun res!624969 () Bool)

(assert (=> b!927793 (=> (not res!624969) (not e!520927))))

(assert (=> b!927793 (= res!624969 (and (= (size!27206 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27205 _keys!1487) (size!27206 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927794 () Bool)

(assert (=> b!927794 (= e!520927 e!520917)))

(declare-fun res!624968 () Bool)

(assert (=> b!927794 (=> (not res!624968) (not e!520917))))

(assert (=> b!927794 (= res!624968 (contains!4946 lt!418346 k0!1099))))

(assert (=> b!927794 (= lt!418346 (getCurrentListMap!3140 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927795 () Bool)

(declare-fun lt!418353 () ListLongMap!11823)

(assert (=> b!927795 (= (apply!723 lt!418353 k0!1099) lt!418351)))

(declare-fun lt!418341 () Unit!31393)

(declare-fun lt!418338 () V!31385)

(declare-fun addApplyDifferent!403 (ListLongMap!11823 (_ BitVec 64) V!31385 (_ BitVec 64)) Unit!31393)

(assert (=> b!927795 (= lt!418341 (addApplyDifferent!403 lt!418346 lt!418340 lt!418338 k0!1099))))

(assert (=> b!927795 (not (= lt!418340 k0!1099))))

(declare-fun lt!418348 () Unit!31393)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55608 (_ BitVec 64) (_ BitVec 32) List!18939) Unit!31393)

(assert (=> b!927795 (= lt!418348 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18936))))

(assert (=> b!927795 e!520926))

(declare-fun c!96859 () Bool)

(assert (=> b!927795 (= c!96859 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418352 () Unit!31393)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!263 (array!55608 array!55610 (_ BitVec 32) (_ BitVec 32) V!31385 V!31385 (_ BitVec 64) (_ BitVec 32) Int) Unit!31393)

(assert (=> b!927795 (= lt!418352 (lemmaListMapContainsThenArrayContainsFrom!263 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!927795 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18936)))

(declare-fun lt!418343 () Unit!31393)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55608 (_ BitVec 32) (_ BitVec 32)) Unit!31393)

(assert (=> b!927795 (= lt!418343 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!927795 (contains!4946 lt!418353 k0!1099)))

(declare-fun lt!418345 () tuple2!13112)

(declare-fun +!2717 (ListLongMap!11823 tuple2!13112) ListLongMap!11823)

(assert (=> b!927795 (= lt!418353 (+!2717 lt!418346 lt!418345))))

(declare-fun lt!418350 () Unit!31393)

(declare-fun addStillContains!479 (ListLongMap!11823 (_ BitVec 64) V!31385 (_ BitVec 64)) Unit!31393)

(assert (=> b!927795 (= lt!418350 (addStillContains!479 lt!418346 lt!418340 lt!418338 k0!1099))))

(assert (=> b!927795 (= (getCurrentListMap!3140 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2717 (getCurrentListMap!3140 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418345))))

(assert (=> b!927795 (= lt!418345 (tuple2!13113 lt!418340 lt!418338))))

(declare-fun get!14098 (ValueCell!9426 V!31385) V!31385)

(declare-fun dynLambda!1556 (Int (_ BitVec 64)) V!31385)

(assert (=> b!927795 (= lt!418338 (get!14098 (select (arr!26746 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1556 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418342 () Unit!31393)

(declare-fun lemmaListMapRecursiveValidKeyArray!152 (array!55608 array!55610 (_ BitVec 32) (_ BitVec 32) V!31385 V!31385 (_ BitVec 32) Int) Unit!31393)

(assert (=> b!927795 (= lt!418342 (lemmaListMapRecursiveValidKeyArray!152 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!927795 (= e!520923 lt!418341)))

(declare-fun b!927796 () Bool)

(declare-fun Unit!31395 () Unit!31393)

(assert (=> b!927796 (= e!520923 Unit!31395)))

(declare-fun b!927797 () Bool)

(declare-fun res!624971 () Bool)

(assert (=> b!927797 (=> (not res!624971) (not e!520927))))

(assert (=> b!927797 (= res!624971 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27205 _keys!1487))))))

(declare-fun mapNonEmpty!31479 () Bool)

(declare-fun tp!60363 () Bool)

(declare-fun e!520918 () Bool)

(assert (=> mapNonEmpty!31479 (= mapRes!31479 (and tp!60363 e!520918))))

(declare-fun mapKey!31479 () (_ BitVec 32))

(declare-fun mapValue!31479 () ValueCell!9426)

(declare-fun mapRest!31479 () (Array (_ BitVec 32) ValueCell!9426))

(assert (=> mapNonEmpty!31479 (= (arr!26746 _values!1231) (store mapRest!31479 mapKey!31479 mapValue!31479))))

(declare-fun b!927798 () Bool)

(assert (=> b!927798 (= e!520918 tp_is_empty!19815)))

(declare-fun b!927799 () Bool)

(assert (=> b!927799 (= e!520926 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!927800 () Bool)

(assert (=> b!927800 (= e!520929 (= (apply!723 lt!418339 k0!1099) v!791))))

(declare-fun b!927801 () Bool)

(assert (=> b!927801 (= e!520925 e!520920)))

(declare-fun res!624972 () Bool)

(assert (=> b!927801 (=> (not res!624972) (not e!520920))))

(assert (=> b!927801 (= res!624972 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27205 _keys!1487)))))

(declare-fun lt!418349 () Unit!31393)

(assert (=> b!927801 (= lt!418349 e!520928)))

(declare-fun c!96858 () Bool)

(assert (=> b!927801 (= c!96858 (validKeyInArray!0 k0!1099))))

(declare-fun b!927802 () Bool)

(declare-fun Unit!31396 () Unit!31393)

(assert (=> b!927802 (= e!520928 Unit!31396)))

(assert (= (and start!79122 res!624977) b!927793))

(assert (= (and b!927793 res!624969) b!927783))

(assert (= (and b!927783 res!624973) b!927789))

(assert (= (and b!927789 res!624967) b!927797))

(assert (= (and b!927797 res!624971) b!927794))

(assert (= (and b!927794 res!624968) b!927792))

(assert (= (and b!927792 res!624970) b!927801))

(assert (= (and b!927801 c!96858) b!927785))

(assert (= (and b!927801 (not c!96858)) b!927802))

(assert (= (and b!927785 c!96860) b!927795))

(assert (= (and b!927785 (not c!96860)) b!927796))

(assert (= (and b!927795 c!96859) b!927784))

(assert (= (and b!927795 (not c!96859)) b!927799))

(assert (= (and b!927801 res!624972) b!927790))

(assert (= (and b!927790 res!624974) b!927787))

(assert (= (and b!927787 res!624975) b!927788))

(assert (= (and b!927788 res!624976) b!927800))

(assert (= (and b!927791 condMapEmpty!31479) mapIsEmpty!31479))

(assert (= (and b!927791 (not condMapEmpty!31479)) mapNonEmpty!31479))

(get-info :version)

(assert (= (and mapNonEmpty!31479 ((_ is ValueCellFull!9426) mapValue!31479)) b!927798))

(assert (= (and b!927791 ((_ is ValueCellFull!9426) mapDefault!31479)) b!927786))

(assert (= start!79122 b!927791))

(declare-fun b_lambda!13839 () Bool)

(assert (=> (not b_lambda!13839) (not b!927795)))

(declare-fun t!26982 () Bool)

(declare-fun tb!5895 () Bool)

(assert (=> (and start!79122 (= defaultEntry!1235 defaultEntry!1235) t!26982) tb!5895))

(declare-fun result!11605 () Bool)

(assert (=> tb!5895 (= result!11605 tp_is_empty!19815)))

(assert (=> b!927795 t!26982))

(declare-fun b_and!28371 () Bool)

(assert (= b_and!28369 (and (=> t!26982 result!11605) b_and!28371)))

(declare-fun m!862631 () Bool)

(assert (=> b!927789 m!862631))

(declare-fun m!862633 () Bool)

(assert (=> mapNonEmpty!31479 m!862633))

(declare-fun m!862635 () Bool)

(assert (=> b!927800 m!862635))

(declare-fun m!862637 () Bool)

(assert (=> b!927787 m!862637))

(declare-fun m!862639 () Bool)

(assert (=> b!927783 m!862639))

(declare-fun m!862641 () Bool)

(assert (=> b!927785 m!862641))

(declare-fun m!862643 () Bool)

(assert (=> b!927785 m!862643))

(declare-fun m!862645 () Bool)

(assert (=> start!79122 m!862645))

(declare-fun m!862647 () Bool)

(assert (=> start!79122 m!862647))

(declare-fun m!862649 () Bool)

(assert (=> start!79122 m!862649))

(declare-fun m!862651 () Bool)

(assert (=> b!927784 m!862651))

(declare-fun m!862653 () Bool)

(assert (=> b!927788 m!862653))

(declare-fun m!862655 () Bool)

(assert (=> b!927788 m!862655))

(declare-fun m!862657 () Bool)

(assert (=> b!927788 m!862657))

(declare-fun m!862659 () Bool)

(assert (=> b!927790 m!862659))

(declare-fun m!862661 () Bool)

(assert (=> b!927790 m!862661))

(declare-fun m!862663 () Bool)

(assert (=> b!927801 m!862663))

(declare-fun m!862665 () Bool)

(assert (=> b!927792 m!862665))

(declare-fun m!862667 () Bool)

(assert (=> b!927794 m!862667))

(declare-fun m!862669 () Bool)

(assert (=> b!927794 m!862669))

(declare-fun m!862671 () Bool)

(assert (=> b!927795 m!862671))

(declare-fun m!862673 () Bool)

(assert (=> b!927795 m!862673))

(declare-fun m!862675 () Bool)

(assert (=> b!927795 m!862675))

(declare-fun m!862677 () Bool)

(assert (=> b!927795 m!862677))

(declare-fun m!862679 () Bool)

(assert (=> b!927795 m!862679))

(declare-fun m!862681 () Bool)

(assert (=> b!927795 m!862681))

(declare-fun m!862683 () Bool)

(assert (=> b!927795 m!862683))

(assert (=> b!927795 m!862675))

(assert (=> b!927795 m!862677))

(declare-fun m!862685 () Bool)

(assert (=> b!927795 m!862685))

(assert (=> b!927795 m!862661))

(declare-fun m!862687 () Bool)

(assert (=> b!927795 m!862687))

(declare-fun m!862689 () Bool)

(assert (=> b!927795 m!862689))

(declare-fun m!862691 () Bool)

(assert (=> b!927795 m!862691))

(declare-fun m!862693 () Bool)

(assert (=> b!927795 m!862693))

(assert (=> b!927795 m!862679))

(declare-fun m!862695 () Bool)

(assert (=> b!927795 m!862695))

(declare-fun m!862697 () Bool)

(assert (=> b!927795 m!862697))

(declare-fun m!862699 () Bool)

(assert (=> b!927795 m!862699))

(check-sat (not b!927794) (not b!927783) (not mapNonEmpty!31479) (not b!927789) (not b_next!17307) tp_is_empty!19815 (not b_lambda!13839) (not b!927787) (not b!927792) (not b!927801) b_and!28371 (not b!927800) (not b!927785) (not b!927795) (not b!927790) (not b!927788) (not start!79122) (not b!927784))
(check-sat b_and!28371 (not b_next!17307))
