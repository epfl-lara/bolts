; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78870 () Bool)

(assert start!78870)

(declare-fun b_free!17055 () Bool)

(declare-fun b_next!17055 () Bool)

(assert (=> start!78870 (= b_free!17055 (not b_next!17055))))

(declare-fun tp!59607 () Bool)

(declare-fun b_and!27865 () Bool)

(assert (=> start!78870 (= tp!59607 b_and!27865)))

(declare-fun b!920717 () Bool)

(declare-fun res!621007 () Bool)

(declare-fun e!516752 () Bool)

(assert (=> b!920717 (=> res!621007 e!516752)))

(declare-datatypes ((List!18722 0))(
  ( (Nil!18719) (Cons!18718 (h!19864 (_ BitVec 64)) (t!26515 List!18722)) )
))
(declare-fun noDuplicate!1341 (List!18722) Bool)

(assert (=> b!920717 (= res!621007 (not (noDuplicate!1341 Nil!18719)))))

(declare-fun b!920718 () Bool)

(declare-fun res!621000 () Bool)

(assert (=> b!920718 (=> res!621000 e!516752)))

(declare-fun contains!4830 (List!18722 (_ BitVec 64)) Bool)

(assert (=> b!920718 (= res!621000 (contains!4830 Nil!18719 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920719 () Bool)

(assert (=> b!920719 (= e!516752 true)))

(declare-fun lt!413363 () Bool)

(assert (=> b!920719 (= lt!413363 (contains!4830 Nil!18719 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920720 () Bool)

(declare-fun e!516750 () Bool)

(declare-fun tp_is_empty!19563 () Bool)

(assert (=> b!920720 (= e!516750 tp_is_empty!19563)))

(declare-fun b!920721 () Bool)

(declare-fun res!621005 () Bool)

(declare-fun e!516754 () Bool)

(assert (=> b!920721 (=> (not res!621005) (not e!516754))))

(declare-datatypes ((array!55118 0))(
  ( (array!55119 (arr!26500 (Array (_ BitVec 32) (_ BitVec 64))) (size!26960 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55118)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55118 (_ BitVec 32)) Bool)

(assert (=> b!920721 (= res!621005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31101 () Bool)

(declare-fun mapRes!31101 () Bool)

(declare-fun tp!59606 () Bool)

(assert (=> mapNonEmpty!31101 (= mapRes!31101 (and tp!59606 e!516750))))

(declare-datatypes ((V!31049 0))(
  ( (V!31050 (val!9832 Int)) )
))
(declare-datatypes ((ValueCell!9300 0))(
  ( (ValueCellFull!9300 (v!12350 V!31049)) (EmptyCell!9300) )
))
(declare-fun mapValue!31101 () ValueCell!9300)

(declare-fun mapKey!31101 () (_ BitVec 32))

(declare-datatypes ((array!55120 0))(
  ( (array!55121 (arr!26501 (Array (_ BitVec 32) ValueCell!9300)) (size!26961 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55120)

(declare-fun mapRest!31101 () (Array (_ BitVec 32) ValueCell!9300))

(assert (=> mapNonEmpty!31101 (= (arr!26501 _values!1231) (store mapRest!31101 mapKey!31101 mapValue!31101))))

(declare-fun res!620999 () Bool)

(assert (=> start!78870 (=> (not res!620999) (not e!516754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78870 (= res!620999 (validMask!0 mask!1881))))

(assert (=> start!78870 e!516754))

(assert (=> start!78870 true))

(assert (=> start!78870 tp_is_empty!19563))

(declare-fun e!516753 () Bool)

(declare-fun array_inv!20636 (array!55120) Bool)

(assert (=> start!78870 (and (array_inv!20636 _values!1231) e!516753)))

(assert (=> start!78870 tp!59607))

(declare-fun array_inv!20637 (array!55118) Bool)

(assert (=> start!78870 (array_inv!20637 _keys!1487)))

(declare-fun b!920722 () Bool)

(declare-fun e!516755 () Bool)

(declare-fun e!516749 () Bool)

(assert (=> b!920722 (= e!516755 e!516749)))

(declare-fun res!621001 () Bool)

(assert (=> b!920722 (=> (not res!621001) (not e!516749))))

(declare-fun lt!413368 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920722 (= res!621001 (validKeyInArray!0 lt!413368))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920722 (= lt!413368 (select (arr!26500 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!920723 () Bool)

(declare-fun res!621010 () Bool)

(assert (=> b!920723 (=> (not res!621010) (not e!516755))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31049)

(declare-datatypes ((tuple2!12880 0))(
  ( (tuple2!12881 (_1!6450 (_ BitVec 64)) (_2!6450 V!31049)) )
))
(declare-datatypes ((List!18723 0))(
  ( (Nil!18720) (Cons!18719 (h!19865 tuple2!12880) (t!26516 List!18723)) )
))
(declare-datatypes ((ListLongMap!11591 0))(
  ( (ListLongMap!11592 (toList!5811 List!18723)) )
))
(declare-fun lt!413367 () ListLongMap!11591)

(declare-fun apply!621 (ListLongMap!11591 (_ BitVec 64)) V!31049)

(assert (=> b!920723 (= res!621010 (= (apply!621 lt!413367 k0!1099) v!791))))

(declare-fun b!920724 () Bool)

(declare-fun e!516751 () Bool)

(assert (=> b!920724 (= e!516751 tp_is_empty!19563)))

(declare-fun b!920725 () Bool)

(declare-fun res!621006 () Bool)

(assert (=> b!920725 (=> (not res!621006) (not e!516755))))

(assert (=> b!920725 (= res!621006 (validKeyInArray!0 k0!1099))))

(declare-fun b!920726 () Bool)

(assert (=> b!920726 (= e!516754 e!516755)))

(declare-fun res!621002 () Bool)

(assert (=> b!920726 (=> (not res!621002) (not e!516755))))

(declare-fun contains!4831 (ListLongMap!11591 (_ BitVec 64)) Bool)

(assert (=> b!920726 (= res!621002 (contains!4831 lt!413367 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31049)

(declare-fun minValue!1173 () V!31049)

(declare-fun getCurrentListMap!3033 (array!55118 array!55120 (_ BitVec 32) (_ BitVec 32) V!31049 V!31049 (_ BitVec 32) Int) ListLongMap!11591)

(assert (=> b!920726 (= lt!413367 (getCurrentListMap!3033 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920727 () Bool)

(declare-fun res!621011 () Bool)

(assert (=> b!920727 (=> (not res!621011) (not e!516754))))

(assert (=> b!920727 (= res!621011 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26960 _keys!1487))))))

(declare-fun b!920728 () Bool)

(declare-fun res!621004 () Bool)

(assert (=> b!920728 (=> (not res!621004) (not e!516754))))

(declare-fun arrayNoDuplicates!0 (array!55118 (_ BitVec 32) List!18722) Bool)

(assert (=> b!920728 (= res!621004 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18719))))

(declare-fun b!920729 () Bool)

(declare-fun e!516756 () Bool)

(assert (=> b!920729 (= e!516756 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!920730 () Bool)

(assert (=> b!920730 (= e!516753 (and e!516751 mapRes!31101))))

(declare-fun condMapEmpty!31101 () Bool)

(declare-fun mapDefault!31101 () ValueCell!9300)

(assert (=> b!920730 (= condMapEmpty!31101 (= (arr!26501 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9300)) mapDefault!31101)))))

(declare-fun b!920731 () Bool)

(assert (=> b!920731 (= e!516749 (not e!516752))))

(declare-fun res!621003 () Bool)

(assert (=> b!920731 (=> res!621003 e!516752)))

(assert (=> b!920731 (= res!621003 (or (bvsge (size!26960 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26960 _keys!1487))))))

(assert (=> b!920731 e!516756))

(declare-fun c!96002 () Bool)

(assert (=> b!920731 (= c!96002 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31065 0))(
  ( (Unit!31066) )
))
(declare-fun lt!413369 () Unit!31065)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!175 (array!55118 array!55120 (_ BitVec 32) (_ BitVec 32) V!31049 V!31049 (_ BitVec 64) (_ BitVec 32) Int) Unit!31065)

(assert (=> b!920731 (= lt!413369 (lemmaListMapContainsThenArrayContainsFrom!175 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!920731 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18719)))

(declare-fun lt!413370 () Unit!31065)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55118 (_ BitVec 32) (_ BitVec 32)) Unit!31065)

(assert (=> b!920731 (= lt!413370 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413365 () tuple2!12880)

(declare-fun +!2629 (ListLongMap!11591 tuple2!12880) ListLongMap!11591)

(assert (=> b!920731 (contains!4831 (+!2629 lt!413367 lt!413365) k0!1099)))

(declare-fun lt!413366 () Unit!31065)

(declare-fun lt!413364 () V!31049)

(declare-fun addStillContains!391 (ListLongMap!11591 (_ BitVec 64) V!31049 (_ BitVec 64)) Unit!31065)

(assert (=> b!920731 (= lt!413366 (addStillContains!391 lt!413367 lt!413368 lt!413364 k0!1099))))

(assert (=> b!920731 (= (getCurrentListMap!3033 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2629 (getCurrentListMap!3033 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413365))))

(assert (=> b!920731 (= lt!413365 (tuple2!12881 lt!413368 lt!413364))))

(declare-fun get!13926 (ValueCell!9300 V!31049) V!31049)

(declare-fun dynLambda!1468 (Int (_ BitVec 64)) V!31049)

(assert (=> b!920731 (= lt!413364 (get!13926 (select (arr!26501 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1468 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413362 () Unit!31065)

(declare-fun lemmaListMapRecursiveValidKeyArray!64 (array!55118 array!55120 (_ BitVec 32) (_ BitVec 32) V!31049 V!31049 (_ BitVec 32) Int) Unit!31065)

(assert (=> b!920731 (= lt!413362 (lemmaListMapRecursiveValidKeyArray!64 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920732 () Bool)

(declare-fun res!621009 () Bool)

(assert (=> b!920732 (=> (not res!621009) (not e!516754))))

(assert (=> b!920732 (= res!621009 (and (= (size!26961 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26960 _keys!1487) (size!26961 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920733 () Bool)

(declare-fun res!621008 () Bool)

(assert (=> b!920733 (=> (not res!621008) (not e!516755))))

(assert (=> b!920733 (= res!621008 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920734 () Bool)

(declare-fun arrayContainsKey!0 (array!55118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920734 (= e!516756 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapIsEmpty!31101 () Bool)

(assert (=> mapIsEmpty!31101 mapRes!31101))

(assert (= (and start!78870 res!620999) b!920732))

(assert (= (and b!920732 res!621009) b!920721))

(assert (= (and b!920721 res!621005) b!920728))

(assert (= (and b!920728 res!621004) b!920727))

(assert (= (and b!920727 res!621011) b!920726))

(assert (= (and b!920726 res!621002) b!920723))

(assert (= (and b!920723 res!621010) b!920733))

(assert (= (and b!920733 res!621008) b!920725))

(assert (= (and b!920725 res!621006) b!920722))

(assert (= (and b!920722 res!621001) b!920731))

(assert (= (and b!920731 c!96002) b!920734))

(assert (= (and b!920731 (not c!96002)) b!920729))

(assert (= (and b!920731 (not res!621003)) b!920717))

(assert (= (and b!920717 (not res!621007)) b!920718))

(assert (= (and b!920718 (not res!621000)) b!920719))

(assert (= (and b!920730 condMapEmpty!31101) mapIsEmpty!31101))

(assert (= (and b!920730 (not condMapEmpty!31101)) mapNonEmpty!31101))

(get-info :version)

(assert (= (and mapNonEmpty!31101 ((_ is ValueCellFull!9300) mapValue!31101)) b!920720))

(assert (= (and b!920730 ((_ is ValueCellFull!9300) mapDefault!31101)) b!920724))

(assert (= start!78870 b!920730))

(declare-fun b_lambda!13587 () Bool)

(assert (=> (not b_lambda!13587) (not b!920731)))

(declare-fun t!26514 () Bool)

(declare-fun tb!5643 () Bool)

(assert (=> (and start!78870 (= defaultEntry!1235 defaultEntry!1235) t!26514) tb!5643))

(declare-fun result!11101 () Bool)

(assert (=> tb!5643 (= result!11101 tp_is_empty!19563)))

(assert (=> b!920731 t!26514))

(declare-fun b_and!27867 () Bool)

(assert (= b_and!27865 (and (=> t!26514 result!11101) b_and!27867)))

(declare-fun m!854759 () Bool)

(assert (=> b!920726 m!854759))

(declare-fun m!854761 () Bool)

(assert (=> b!920726 m!854761))

(declare-fun m!854763 () Bool)

(assert (=> mapNonEmpty!31101 m!854763))

(declare-fun m!854765 () Bool)

(assert (=> b!920719 m!854765))

(declare-fun m!854767 () Bool)

(assert (=> b!920734 m!854767))

(declare-fun m!854769 () Bool)

(assert (=> b!920728 m!854769))

(declare-fun m!854771 () Bool)

(assert (=> b!920731 m!854771))

(declare-fun m!854773 () Bool)

(assert (=> b!920731 m!854773))

(declare-fun m!854775 () Bool)

(assert (=> b!920731 m!854775))

(declare-fun m!854777 () Bool)

(assert (=> b!920731 m!854777))

(declare-fun m!854779 () Bool)

(assert (=> b!920731 m!854779))

(assert (=> b!920731 m!854777))

(assert (=> b!920731 m!854779))

(declare-fun m!854781 () Bool)

(assert (=> b!920731 m!854781))

(declare-fun m!854783 () Bool)

(assert (=> b!920731 m!854783))

(declare-fun m!854785 () Bool)

(assert (=> b!920731 m!854785))

(declare-fun m!854787 () Bool)

(assert (=> b!920731 m!854787))

(declare-fun m!854789 () Bool)

(assert (=> b!920731 m!854789))

(declare-fun m!854791 () Bool)

(assert (=> b!920731 m!854791))

(assert (=> b!920731 m!854791))

(declare-fun m!854793 () Bool)

(assert (=> b!920731 m!854793))

(assert (=> b!920731 m!854771))

(declare-fun m!854795 () Bool)

(assert (=> b!920731 m!854795))

(declare-fun m!854797 () Bool)

(assert (=> b!920717 m!854797))

(declare-fun m!854799 () Bool)

(assert (=> b!920722 m!854799))

(declare-fun m!854801 () Bool)

(assert (=> b!920722 m!854801))

(declare-fun m!854803 () Bool)

(assert (=> b!920718 m!854803))

(declare-fun m!854805 () Bool)

(assert (=> b!920725 m!854805))

(declare-fun m!854807 () Bool)

(assert (=> b!920723 m!854807))

(declare-fun m!854809 () Bool)

(assert (=> start!78870 m!854809))

(declare-fun m!854811 () Bool)

(assert (=> start!78870 m!854811))

(declare-fun m!854813 () Bool)

(assert (=> start!78870 m!854813))

(declare-fun m!854815 () Bool)

(assert (=> b!920721 m!854815))

(check-sat b_and!27867 (not b!920725) (not b!920723) (not b!920728) (not b!920726) (not b_lambda!13587) (not b!920719) (not mapNonEmpty!31101) (not start!78870) (not b!920731) (not b_next!17055) tp_is_empty!19563 (not b!920717) (not b!920721) (not b!920722) (not b!920718) (not b!920734))
(check-sat b_and!27867 (not b_next!17055))
