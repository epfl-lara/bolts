; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78948 () Bool)

(assert start!78948)

(declare-fun b_free!17133 () Bool)

(declare-fun b_next!17133 () Bool)

(assert (=> start!78948 (= b_free!17133 (not b_next!17133))))

(declare-fun tp!59840 () Bool)

(declare-fun b_and!28021 () Bool)

(assert (=> start!78948 (= tp!59840 b_and!28021)))

(declare-fun mapNonEmpty!31218 () Bool)

(declare-fun mapRes!31218 () Bool)

(declare-fun tp!59841 () Bool)

(declare-fun e!517733 () Bool)

(assert (=> mapNonEmpty!31218 (= mapRes!31218 (and tp!59841 e!517733))))

(declare-datatypes ((V!31153 0))(
  ( (V!31154 (val!9871 Int)) )
))
(declare-datatypes ((ValueCell!9339 0))(
  ( (ValueCellFull!9339 (v!12389 V!31153)) (EmptyCell!9339) )
))
(declare-fun mapRest!31218 () (Array (_ BitVec 32) ValueCell!9339))

(declare-fun mapKey!31218 () (_ BitVec 32))

(declare-datatypes ((array!55268 0))(
  ( (array!55269 (arr!26575 (Array (_ BitVec 32) ValueCell!9339)) (size!27035 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55268)

(declare-fun mapValue!31218 () ValueCell!9339)

(assert (=> mapNonEmpty!31218 (= (arr!26575 _values!1231) (store mapRest!31218 mapKey!31218 mapValue!31218))))

(declare-fun b!922697 () Bool)

(declare-fun res!622316 () Bool)

(declare-fun e!517737 () Bool)

(assert (=> b!922697 (=> (not res!622316) (not e!517737))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55270 0))(
  ( (array!55271 (arr!26576 (Array (_ BitVec 32) (_ BitVec 64))) (size!27036 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55270)

(assert (=> b!922697 (= res!622316 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27036 _keys!1487))))))

(declare-fun b!922698 () Bool)

(declare-fun e!517739 () Bool)

(declare-fun e!517740 () Bool)

(assert (=> b!922698 (= e!517739 e!517740)))

(declare-fun res!622325 () Bool)

(assert (=> b!922698 (=> (not res!622325) (not e!517740))))

(declare-fun lt!414415 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922698 (= res!622325 (validKeyInArray!0 lt!414415))))

(assert (=> b!922698 (= lt!414415 (select (arr!26576 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922699 () Bool)

(assert (=> b!922699 (= e!517740 (not true))))

(declare-fun k0!1099 () (_ BitVec 64))

(assert (=> b!922699 (not (= lt!414415 k0!1099))))

(declare-datatypes ((Unit!31123 0))(
  ( (Unit!31124) )
))
(declare-fun lt!414419 () Unit!31123)

(declare-datatypes ((List!18787 0))(
  ( (Nil!18784) (Cons!18783 (h!19929 (_ BitVec 64)) (t!26658 List!18787)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55270 (_ BitVec 64) (_ BitVec 32) List!18787) Unit!31123)

(assert (=> b!922699 (= lt!414419 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18784))))

(declare-fun e!517736 () Bool)

(assert (=> b!922699 e!517736))

(declare-fun c!96119 () Bool)

(assert (=> b!922699 (= c!96119 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!414421 () Unit!31123)

(declare-fun zeroValue!1173 () V!31153)

(declare-fun minValue!1173 () V!31153)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!204 (array!55270 array!55268 (_ BitVec 32) (_ BitVec 32) V!31153 V!31153 (_ BitVec 64) (_ BitVec 32) Int) Unit!31123)

(assert (=> b!922699 (= lt!414421 (lemmaListMapContainsThenArrayContainsFrom!204 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55270 (_ BitVec 32) List!18787) Bool)

(assert (=> b!922699 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18784)))

(declare-fun lt!414416 () Unit!31123)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55270 (_ BitVec 32) (_ BitVec 32)) Unit!31123)

(assert (=> b!922699 (= lt!414416 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12950 0))(
  ( (tuple2!12951 (_1!6485 (_ BitVec 64)) (_2!6485 V!31153)) )
))
(declare-datatypes ((List!18788 0))(
  ( (Nil!18785) (Cons!18784 (h!19930 tuple2!12950) (t!26659 List!18788)) )
))
(declare-datatypes ((ListLongMap!11661 0))(
  ( (ListLongMap!11662 (toList!5846 List!18788)) )
))
(declare-fun lt!414418 () ListLongMap!11661)

(declare-fun lt!414420 () tuple2!12950)

(declare-fun contains!4871 (ListLongMap!11661 (_ BitVec 64)) Bool)

(declare-fun +!2658 (ListLongMap!11661 tuple2!12950) ListLongMap!11661)

(assert (=> b!922699 (contains!4871 (+!2658 lt!414418 lt!414420) k0!1099)))

(declare-fun lt!414423 () V!31153)

(declare-fun lt!414422 () Unit!31123)

(declare-fun addStillContains!420 (ListLongMap!11661 (_ BitVec 64) V!31153 (_ BitVec 64)) Unit!31123)

(assert (=> b!922699 (= lt!414422 (addStillContains!420 lt!414418 lt!414415 lt!414423 k0!1099))))

(declare-fun getCurrentListMap!3065 (array!55270 array!55268 (_ BitVec 32) (_ BitVec 32) V!31153 V!31153 (_ BitVec 32) Int) ListLongMap!11661)

(assert (=> b!922699 (= (getCurrentListMap!3065 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2658 (getCurrentListMap!3065 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414420))))

(assert (=> b!922699 (= lt!414420 (tuple2!12951 lt!414415 lt!414423))))

(declare-fun get!13981 (ValueCell!9339 V!31153) V!31153)

(declare-fun dynLambda!1497 (Int (_ BitVec 64)) V!31153)

(assert (=> b!922699 (= lt!414423 (get!13981 (select (arr!26575 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1497 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414417 () Unit!31123)

(declare-fun lemmaListMapRecursiveValidKeyArray!93 (array!55270 array!55268 (_ BitVec 32) (_ BitVec 32) V!31153 V!31153 (_ BitVec 32) Int) Unit!31123)

(assert (=> b!922699 (= lt!414417 (lemmaListMapRecursiveValidKeyArray!93 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922700 () Bool)

(declare-fun res!622317 () Bool)

(assert (=> b!922700 (=> (not res!622317) (not e!517739))))

(declare-fun v!791 () V!31153)

(declare-fun apply!651 (ListLongMap!11661 (_ BitVec 64)) V!31153)

(assert (=> b!922700 (= res!622317 (= (apply!651 lt!414418 k0!1099) v!791))))

(declare-fun b!922701 () Bool)

(assert (=> b!922701 (= e!517737 e!517739)))

(declare-fun res!622323 () Bool)

(assert (=> b!922701 (=> (not res!622323) (not e!517739))))

(assert (=> b!922701 (= res!622323 (contains!4871 lt!414418 k0!1099))))

(assert (=> b!922701 (= lt!414418 (getCurrentListMap!3065 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922702 () Bool)

(declare-fun res!622320 () Bool)

(assert (=> b!922702 (=> (not res!622320) (not e!517737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55270 (_ BitVec 32)) Bool)

(assert (=> b!922702 (= res!622320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922703 () Bool)

(declare-fun res!622321 () Bool)

(assert (=> b!922703 (=> (not res!622321) (not e!517737))))

(assert (=> b!922703 (= res!622321 (and (= (size!27035 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27036 _keys!1487) (size!27035 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31218 () Bool)

(assert (=> mapIsEmpty!31218 mapRes!31218))

(declare-fun b!922704 () Bool)

(declare-fun e!517735 () Bool)

(declare-fun e!517738 () Bool)

(assert (=> b!922704 (= e!517735 (and e!517738 mapRes!31218))))

(declare-fun condMapEmpty!31218 () Bool)

(declare-fun mapDefault!31218 () ValueCell!9339)

(assert (=> b!922704 (= condMapEmpty!31218 (= (arr!26575 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9339)) mapDefault!31218)))))

(declare-fun b!922705 () Bool)

(declare-fun res!622322 () Bool)

(assert (=> b!922705 (=> (not res!622322) (not e!517739))))

(assert (=> b!922705 (= res!622322 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922706 () Bool)

(declare-fun tp_is_empty!19641 () Bool)

(assert (=> b!922706 (= e!517733 tp_is_empty!19641)))

(declare-fun b!922707 () Bool)

(declare-fun res!622324 () Bool)

(assert (=> b!922707 (=> (not res!622324) (not e!517739))))

(assert (=> b!922707 (= res!622324 (validKeyInArray!0 k0!1099))))

(declare-fun b!922708 () Bool)

(assert (=> b!922708 (= e!517738 tp_is_empty!19641)))

(declare-fun res!622318 () Bool)

(assert (=> start!78948 (=> (not res!622318) (not e!517737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78948 (= res!622318 (validMask!0 mask!1881))))

(assert (=> start!78948 e!517737))

(assert (=> start!78948 true))

(assert (=> start!78948 tp_is_empty!19641))

(declare-fun array_inv!20690 (array!55268) Bool)

(assert (=> start!78948 (and (array_inv!20690 _values!1231) e!517735)))

(assert (=> start!78948 tp!59840))

(declare-fun array_inv!20691 (array!55270) Bool)

(assert (=> start!78948 (array_inv!20691 _keys!1487)))

(declare-fun b!922709 () Bool)

(declare-fun res!622319 () Bool)

(assert (=> b!922709 (=> (not res!622319) (not e!517737))))

(assert (=> b!922709 (= res!622319 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18784))))

(declare-fun b!922710 () Bool)

(declare-fun arrayContainsKey!0 (array!55270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922710 (= e!517736 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!922711 () Bool)

(assert (=> b!922711 (= e!517736 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!78948 res!622318) b!922703))

(assert (= (and b!922703 res!622321) b!922702))

(assert (= (and b!922702 res!622320) b!922709))

(assert (= (and b!922709 res!622319) b!922697))

(assert (= (and b!922697 res!622316) b!922701))

(assert (= (and b!922701 res!622323) b!922700))

(assert (= (and b!922700 res!622317) b!922705))

(assert (= (and b!922705 res!622322) b!922707))

(assert (= (and b!922707 res!622324) b!922698))

(assert (= (and b!922698 res!622325) b!922699))

(assert (= (and b!922699 c!96119) b!922710))

(assert (= (and b!922699 (not c!96119)) b!922711))

(assert (= (and b!922704 condMapEmpty!31218) mapIsEmpty!31218))

(assert (= (and b!922704 (not condMapEmpty!31218)) mapNonEmpty!31218))

(get-info :version)

(assert (= (and mapNonEmpty!31218 ((_ is ValueCellFull!9339) mapValue!31218)) b!922706))

(assert (= (and b!922704 ((_ is ValueCellFull!9339) mapDefault!31218)) b!922708))

(assert (= start!78948 b!922704))

(declare-fun b_lambda!13665 () Bool)

(assert (=> (not b_lambda!13665) (not b!922699)))

(declare-fun t!26657 () Bool)

(declare-fun tb!5721 () Bool)

(assert (=> (and start!78948 (= defaultEntry!1235 defaultEntry!1235) t!26657) tb!5721))

(declare-fun result!11257 () Bool)

(assert (=> tb!5721 (= result!11257 tp_is_empty!19641)))

(assert (=> b!922699 t!26657))

(declare-fun b_and!28023 () Bool)

(assert (= b_and!28021 (and (=> t!26657 result!11257) b_and!28023)))

(declare-fun m!856933 () Bool)

(assert (=> b!922709 m!856933))

(declare-fun m!856935 () Bool)

(assert (=> b!922707 m!856935))

(declare-fun m!856937 () Bool)

(assert (=> b!922699 m!856937))

(declare-fun m!856939 () Bool)

(assert (=> b!922699 m!856939))

(declare-fun m!856941 () Bool)

(assert (=> b!922699 m!856941))

(declare-fun m!856943 () Bool)

(assert (=> b!922699 m!856943))

(declare-fun m!856945 () Bool)

(assert (=> b!922699 m!856945))

(assert (=> b!922699 m!856941))

(assert (=> b!922699 m!856943))

(declare-fun m!856947 () Bool)

(assert (=> b!922699 m!856947))

(declare-fun m!856949 () Bool)

(assert (=> b!922699 m!856949))

(assert (=> b!922699 m!856945))

(declare-fun m!856951 () Bool)

(assert (=> b!922699 m!856951))

(declare-fun m!856953 () Bool)

(assert (=> b!922699 m!856953))

(declare-fun m!856955 () Bool)

(assert (=> b!922699 m!856955))

(declare-fun m!856957 () Bool)

(assert (=> b!922699 m!856957))

(declare-fun m!856959 () Bool)

(assert (=> b!922699 m!856959))

(declare-fun m!856961 () Bool)

(assert (=> b!922699 m!856961))

(assert (=> b!922699 m!856957))

(declare-fun m!856963 () Bool)

(assert (=> b!922699 m!856963))

(declare-fun m!856965 () Bool)

(assert (=> mapNonEmpty!31218 m!856965))

(declare-fun m!856967 () Bool)

(assert (=> b!922701 m!856967))

(declare-fun m!856969 () Bool)

(assert (=> b!922701 m!856969))

(declare-fun m!856971 () Bool)

(assert (=> start!78948 m!856971))

(declare-fun m!856973 () Bool)

(assert (=> start!78948 m!856973))

(declare-fun m!856975 () Bool)

(assert (=> start!78948 m!856975))

(declare-fun m!856977 () Bool)

(assert (=> b!922710 m!856977))

(declare-fun m!856979 () Bool)

(assert (=> b!922698 m!856979))

(declare-fun m!856981 () Bool)

(assert (=> b!922698 m!856981))

(declare-fun m!856983 () Bool)

(assert (=> b!922702 m!856983))

(declare-fun m!856985 () Bool)

(assert (=> b!922700 m!856985))

(check-sat (not start!78948) (not b!922698) b_and!28023 (not mapNonEmpty!31218) (not b!922702) (not b!922710) (not b_next!17133) tp_is_empty!19641 (not b!922699) (not b!922700) (not b_lambda!13665) (not b!922709) (not b!922707) (not b!922701))
(check-sat b_and!28023 (not b_next!17133))
