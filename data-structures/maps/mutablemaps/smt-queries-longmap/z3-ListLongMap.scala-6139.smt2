; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78972 () Bool)

(assert start!78972)

(declare-fun b_free!17157 () Bool)

(declare-fun b_next!17157 () Bool)

(assert (=> start!78972 (= b_free!17157 (not b_next!17157))))

(declare-fun tp!59913 () Bool)

(declare-fun b_and!28069 () Bool)

(assert (=> start!78972 (= tp!59913 b_and!28069)))

(declare-fun b!923303 () Bool)

(declare-datatypes ((Unit!31150 0))(
  ( (Unit!31151) )
))
(declare-fun e!518077 () Unit!31150)

(declare-fun Unit!31152 () Unit!31150)

(assert (=> b!923303 (= e!518077 Unit!31152)))

(declare-fun b!923304 () Bool)

(declare-fun e!518079 () Bool)

(declare-fun tp_is_empty!19665 () Bool)

(assert (=> b!923304 (= e!518079 tp_is_empty!19665)))

(declare-fun b!923305 () Bool)

(declare-fun e!518088 () Bool)

(declare-fun mapRes!31254 () Bool)

(assert (=> b!923305 (= e!518088 (and e!518079 mapRes!31254))))

(declare-fun condMapEmpty!31254 () Bool)

(declare-datatypes ((V!31185 0))(
  ( (V!31186 (val!9883 Int)) )
))
(declare-datatypes ((ValueCell!9351 0))(
  ( (ValueCellFull!9351 (v!12401 V!31185)) (EmptyCell!9351) )
))
(declare-datatypes ((array!55316 0))(
  ( (array!55317 (arr!26599 (Array (_ BitVec 32) ValueCell!9351)) (size!27059 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55316)

(declare-fun mapDefault!31254 () ValueCell!9351)

(assert (=> b!923305 (= condMapEmpty!31254 (= (arr!26599 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9351)) mapDefault!31254)))))

(declare-fun b!923306 () Bool)

(declare-fun e!518085 () Bool)

(declare-fun e!518082 () Bool)

(assert (=> b!923306 (= e!518085 e!518082)))

(declare-fun res!622662 () Bool)

(assert (=> b!923306 (=> (not res!622662) (not e!518082))))

(declare-datatypes ((tuple2!12974 0))(
  ( (tuple2!12975 (_1!6497 (_ BitVec 64)) (_2!6497 V!31185)) )
))
(declare-datatypes ((List!18810 0))(
  ( (Nil!18807) (Cons!18806 (h!19952 tuple2!12974) (t!26705 List!18810)) )
))
(declare-datatypes ((ListLongMap!11685 0))(
  ( (ListLongMap!11686 (toList!5858 List!18810)) )
))
(declare-fun lt!414833 () ListLongMap!11685)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4882 (ListLongMap!11685 (_ BitVec 64)) Bool)

(assert (=> b!923306 (= res!622662 (contains!4882 lt!414833 k0!1099))))

(declare-datatypes ((array!55318 0))(
  ( (array!55319 (arr!26600 (Array (_ BitVec 32) (_ BitVec 64))) (size!27060 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55318)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31185)

(declare-fun minValue!1173 () V!31185)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3076 (array!55318 array!55316 (_ BitVec 32) (_ BitVec 32) V!31185 V!31185 (_ BitVec 32) Int) ListLongMap!11685)

(assert (=> b!923306 (= lt!414833 (getCurrentListMap!3076 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923307 () Bool)

(declare-fun e!518078 () Bool)

(assert (=> b!923307 (= e!518078 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31254 () Bool)

(declare-fun tp!59912 () Bool)

(declare-fun e!518084 () Bool)

(assert (=> mapNonEmpty!31254 (= mapRes!31254 (and tp!59912 e!518084))))

(declare-fun mapRest!31254 () (Array (_ BitVec 32) ValueCell!9351))

(declare-fun mapValue!31254 () ValueCell!9351)

(declare-fun mapKey!31254 () (_ BitVec 32))

(assert (=> mapNonEmpty!31254 (= (arr!26599 _values!1231) (store mapRest!31254 mapKey!31254 mapValue!31254))))

(declare-fun b!923308 () Bool)

(declare-fun e!518087 () Unit!31150)

(assert (=> b!923308 (= e!518077 e!518087)))

(declare-fun lt!414837 () (_ BitVec 64))

(assert (=> b!923308 (= lt!414837 (select (arr!26600 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96183 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923308 (= c!96183 (validKeyInArray!0 lt!414837))))

(declare-fun b!923309 () Bool)

(declare-fun arrayContainsKey!0 (array!55318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923309 (= e!518078 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!923310 () Bool)

(assert (=> b!923310 (= e!518084 tp_is_empty!19665)))

(declare-fun b!923311 () Bool)

(declare-fun e!518081 () Bool)

(declare-fun e!518083 () Bool)

(assert (=> b!923311 (= e!518081 e!518083)))

(declare-fun res!622668 () Bool)

(assert (=> b!923311 (=> (not res!622668) (not e!518083))))

(declare-fun lt!414835 () ListLongMap!11685)

(assert (=> b!923311 (= res!622668 (contains!4882 lt!414835 k0!1099))))

(assert (=> b!923311 (= lt!414835 (getCurrentListMap!3076 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923312 () Bool)

(declare-fun res!622663 () Bool)

(assert (=> b!923312 (=> (not res!622663) (not e!518085))))

(assert (=> b!923312 (= res!622663 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27060 _keys!1487))))))

(declare-fun b!923313 () Bool)

(declare-fun e!518080 () Bool)

(assert (=> b!923313 (= e!518080 e!518081)))

(declare-fun res!622670 () Bool)

(assert (=> b!923313 (=> (not res!622670) (not e!518081))))

(assert (=> b!923313 (= res!622670 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27060 _keys!1487)))))

(declare-fun lt!414831 () Unit!31150)

(assert (=> b!923313 (= lt!414831 e!518077)))

(declare-fun c!96184 () Bool)

(assert (=> b!923313 (= c!96184 (validKeyInArray!0 k0!1099))))

(declare-fun b!923314 () Bool)

(declare-fun lt!414836 () ListLongMap!11685)

(declare-fun lt!414825 () V!31185)

(declare-fun apply!661 (ListLongMap!11685 (_ BitVec 64)) V!31185)

(assert (=> b!923314 (= (apply!661 lt!414836 k0!1099) lt!414825)))

(declare-fun lt!414834 () V!31185)

(declare-fun lt!414828 () Unit!31150)

(declare-fun addApplyDifferent!354 (ListLongMap!11685 (_ BitVec 64) V!31185 (_ BitVec 64)) Unit!31150)

(assert (=> b!923314 (= lt!414828 (addApplyDifferent!354 lt!414833 lt!414837 lt!414834 k0!1099))))

(assert (=> b!923314 (not (= lt!414837 k0!1099))))

(declare-fun lt!414832 () Unit!31150)

(declare-datatypes ((List!18811 0))(
  ( (Nil!18808) (Cons!18807 (h!19953 (_ BitVec 64)) (t!26706 List!18811)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55318 (_ BitVec 64) (_ BitVec 32) List!18811) Unit!31150)

(assert (=> b!923314 (= lt!414832 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18808))))

(assert (=> b!923314 e!518078))

(declare-fun c!96185 () Bool)

(assert (=> b!923314 (= c!96185 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414830 () Unit!31150)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!214 (array!55318 array!55316 (_ BitVec 32) (_ BitVec 32) V!31185 V!31185 (_ BitVec 64) (_ BitVec 32) Int) Unit!31150)

(assert (=> b!923314 (= lt!414830 (lemmaListMapContainsThenArrayContainsFrom!214 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55318 (_ BitVec 32) List!18811) Bool)

(assert (=> b!923314 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18808)))

(declare-fun lt!414823 () Unit!31150)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55318 (_ BitVec 32) (_ BitVec 32)) Unit!31150)

(assert (=> b!923314 (= lt!414823 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!923314 (contains!4882 lt!414836 k0!1099)))

(declare-fun lt!414824 () tuple2!12974)

(declare-fun +!2668 (ListLongMap!11685 tuple2!12974) ListLongMap!11685)

(assert (=> b!923314 (= lt!414836 (+!2668 lt!414833 lt!414824))))

(declare-fun lt!414827 () Unit!31150)

(declare-fun addStillContains!430 (ListLongMap!11685 (_ BitVec 64) V!31185 (_ BitVec 64)) Unit!31150)

(assert (=> b!923314 (= lt!414827 (addStillContains!430 lt!414833 lt!414837 lt!414834 k0!1099))))

(assert (=> b!923314 (= (getCurrentListMap!3076 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2668 (getCurrentListMap!3076 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414824))))

(assert (=> b!923314 (= lt!414824 (tuple2!12975 lt!414837 lt!414834))))

(declare-fun get!13999 (ValueCell!9351 V!31185) V!31185)

(declare-fun dynLambda!1507 (Int (_ BitVec 64)) V!31185)

(assert (=> b!923314 (= lt!414834 (get!13999 (select (arr!26599 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1507 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414826 () Unit!31150)

(declare-fun lemmaListMapRecursiveValidKeyArray!103 (array!55318 array!55316 (_ BitVec 32) (_ BitVec 32) V!31185 V!31185 (_ BitVec 32) Int) Unit!31150)

(assert (=> b!923314 (= lt!414826 (lemmaListMapRecursiveValidKeyArray!103 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923314 (= e!518087 lt!414828)))

(declare-fun b!923315 () Bool)

(declare-fun res!622665 () Bool)

(assert (=> b!923315 (=> (not res!622665) (not e!518085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55318 (_ BitVec 32)) Bool)

(assert (=> b!923315 (= res!622665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923316 () Bool)

(assert (=> b!923316 (= e!518083 false)))

(declare-fun lt!414829 () V!31185)

(assert (=> b!923316 (= lt!414829 (apply!661 lt!414835 k0!1099))))

(declare-fun b!923317 () Bool)

(assert (=> b!923317 (= e!518082 e!518080)))

(declare-fun res!622666 () Bool)

(assert (=> b!923317 (=> (not res!622666) (not e!518080))))

(declare-fun v!791 () V!31185)

(assert (=> b!923317 (= res!622666 (and (= lt!414825 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!923317 (= lt!414825 (apply!661 lt!414833 k0!1099))))

(declare-fun b!923318 () Bool)

(declare-fun res!622669 () Bool)

(assert (=> b!923318 (=> (not res!622669) (not e!518085))))

(assert (=> b!923318 (= res!622669 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18808))))

(declare-fun res!622664 () Bool)

(assert (=> start!78972 (=> (not res!622664) (not e!518085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78972 (= res!622664 (validMask!0 mask!1881))))

(assert (=> start!78972 e!518085))

(assert (=> start!78972 true))

(assert (=> start!78972 tp_is_empty!19665))

(declare-fun array_inv!20708 (array!55316) Bool)

(assert (=> start!78972 (and (array_inv!20708 _values!1231) e!518088)))

(assert (=> start!78972 tp!59913))

(declare-fun array_inv!20709 (array!55318) Bool)

(assert (=> start!78972 (array_inv!20709 _keys!1487)))

(declare-fun b!923319 () Bool)

(declare-fun res!622667 () Bool)

(assert (=> b!923319 (=> (not res!622667) (not e!518085))))

(assert (=> b!923319 (= res!622667 (and (= (size!27059 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27060 _keys!1487) (size!27059 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31254 () Bool)

(assert (=> mapIsEmpty!31254 mapRes!31254))

(declare-fun b!923320 () Bool)

(declare-fun Unit!31153 () Unit!31150)

(assert (=> b!923320 (= e!518087 Unit!31153)))

(assert (= (and start!78972 res!622664) b!923319))

(assert (= (and b!923319 res!622667) b!923315))

(assert (= (and b!923315 res!622665) b!923318))

(assert (= (and b!923318 res!622669) b!923312))

(assert (= (and b!923312 res!622663) b!923306))

(assert (= (and b!923306 res!622662) b!923317))

(assert (= (and b!923317 res!622666) b!923313))

(assert (= (and b!923313 c!96184) b!923308))

(assert (= (and b!923313 (not c!96184)) b!923303))

(assert (= (and b!923308 c!96183) b!923314))

(assert (= (and b!923308 (not c!96183)) b!923320))

(assert (= (and b!923314 c!96185) b!923309))

(assert (= (and b!923314 (not c!96185)) b!923307))

(assert (= (and b!923313 res!622670) b!923311))

(assert (= (and b!923311 res!622668) b!923316))

(assert (= (and b!923305 condMapEmpty!31254) mapIsEmpty!31254))

(assert (= (and b!923305 (not condMapEmpty!31254)) mapNonEmpty!31254))

(get-info :version)

(assert (= (and mapNonEmpty!31254 ((_ is ValueCellFull!9351) mapValue!31254)) b!923310))

(assert (= (and b!923305 ((_ is ValueCellFull!9351) mapDefault!31254)) b!923304))

(assert (= start!78972 b!923305))

(declare-fun b_lambda!13689 () Bool)

(assert (=> (not b_lambda!13689) (not b!923314)))

(declare-fun t!26704 () Bool)

(declare-fun tb!5745 () Bool)

(assert (=> (and start!78972 (= defaultEntry!1235 defaultEntry!1235) t!26704) tb!5745))

(declare-fun result!11305 () Bool)

(assert (=> tb!5745 (= result!11305 tp_is_empty!19665)))

(assert (=> b!923314 t!26704))

(declare-fun b_and!28071 () Bool)

(assert (= b_and!28069 (and (=> t!26704 result!11305) b_and!28071)))

(declare-fun m!857613 () Bool)

(assert (=> b!923314 m!857613))

(declare-fun m!857615 () Bool)

(assert (=> b!923314 m!857615))

(declare-fun m!857617 () Bool)

(assert (=> b!923314 m!857617))

(assert (=> b!923314 m!857613))

(assert (=> b!923314 m!857615))

(declare-fun m!857619 () Bool)

(assert (=> b!923314 m!857619))

(declare-fun m!857621 () Bool)

(assert (=> b!923314 m!857621))

(declare-fun m!857623 () Bool)

(assert (=> b!923314 m!857623))

(declare-fun m!857625 () Bool)

(assert (=> b!923314 m!857625))

(declare-fun m!857627 () Bool)

(assert (=> b!923314 m!857627))

(declare-fun m!857629 () Bool)

(assert (=> b!923314 m!857629))

(declare-fun m!857631 () Bool)

(assert (=> b!923314 m!857631))

(declare-fun m!857633 () Bool)

(assert (=> b!923314 m!857633))

(declare-fun m!857635 () Bool)

(assert (=> b!923314 m!857635))

(declare-fun m!857637 () Bool)

(assert (=> b!923314 m!857637))

(declare-fun m!857639 () Bool)

(assert (=> b!923314 m!857639))

(declare-fun m!857641 () Bool)

(assert (=> b!923314 m!857641))

(assert (=> b!923314 m!857633))

(declare-fun m!857643 () Bool)

(assert (=> b!923314 m!857643))

(declare-fun m!857645 () Bool)

(assert (=> b!923313 m!857645))

(declare-fun m!857647 () Bool)

(assert (=> b!923309 m!857647))

(declare-fun m!857649 () Bool)

(assert (=> b!923318 m!857649))

(declare-fun m!857651 () Bool)

(assert (=> b!923306 m!857651))

(declare-fun m!857653 () Bool)

(assert (=> b!923306 m!857653))

(declare-fun m!857655 () Bool)

(assert (=> mapNonEmpty!31254 m!857655))

(declare-fun m!857657 () Bool)

(assert (=> b!923315 m!857657))

(declare-fun m!857659 () Bool)

(assert (=> start!78972 m!857659))

(declare-fun m!857661 () Bool)

(assert (=> start!78972 m!857661))

(declare-fun m!857663 () Bool)

(assert (=> start!78972 m!857663))

(declare-fun m!857665 () Bool)

(assert (=> b!923317 m!857665))

(declare-fun m!857667 () Bool)

(assert (=> b!923316 m!857667))

(declare-fun m!857669 () Bool)

(assert (=> b!923311 m!857669))

(assert (=> b!923311 m!857621))

(declare-fun m!857671 () Bool)

(assert (=> b!923308 m!857671))

(declare-fun m!857673 () Bool)

(assert (=> b!923308 m!857673))

(check-sat (not b!923314) (not b!923309) (not start!78972) (not b!923315) (not b_lambda!13689) tp_is_empty!19665 (not b_next!17157) (not b!923308) (not mapNonEmpty!31254) (not b!923311) b_and!28071 (not b!923317) (not b!923316) (not b!923306) (not b!923318) (not b!923313))
(check-sat b_and!28071 (not b_next!17157))
