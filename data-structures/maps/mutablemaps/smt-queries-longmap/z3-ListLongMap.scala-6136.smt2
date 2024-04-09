; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78954 () Bool)

(assert start!78954)

(declare-fun b_free!17139 () Bool)

(declare-fun b_next!17139 () Bool)

(assert (=> start!78954 (= b_free!17139 (not b_next!17139))))

(declare-fun tp!59858 () Bool)

(declare-fun b_and!28033 () Bool)

(assert (=> start!78954 (= tp!59858 b_and!28033)))

(declare-fun b!922839 () Bool)

(declare-fun res!622407 () Bool)

(declare-fun e!517807 () Bool)

(assert (=> b!922839 (=> (not res!622407) (not e!517807))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922839 (= res!622407 (validKeyInArray!0 k0!1099))))

(declare-fun b!922840 () Bool)

(declare-fun e!517809 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55280 0))(
  ( (array!55281 (arr!26581 (Array (_ BitVec 32) (_ BitVec 64))) (size!27041 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55280)

(assert (=> b!922840 (= e!517809 (not (bvsle from!1844 (size!27041 _keys!1487))))))

(declare-fun lt!414503 () (_ BitVec 64))

(assert (=> b!922840 (not (= lt!414503 k0!1099))))

(declare-datatypes ((Unit!31129 0))(
  ( (Unit!31130) )
))
(declare-fun lt!414500 () Unit!31129)

(declare-datatypes ((List!18793 0))(
  ( (Nil!18790) (Cons!18789 (h!19935 (_ BitVec 64)) (t!26670 List!18793)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55280 (_ BitVec 64) (_ BitVec 32) List!18793) Unit!31129)

(assert (=> b!922840 (= lt!414500 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18790))))

(declare-fun e!517810 () Bool)

(assert (=> b!922840 e!517810))

(declare-fun c!96128 () Bool)

(assert (=> b!922840 (= c!96128 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!414501 () Unit!31129)

(declare-datatypes ((V!31161 0))(
  ( (V!31162 (val!9874 Int)) )
))
(declare-datatypes ((ValueCell!9342 0))(
  ( (ValueCellFull!9342 (v!12392 V!31161)) (EmptyCell!9342) )
))
(declare-datatypes ((array!55282 0))(
  ( (array!55283 (arr!26582 (Array (_ BitVec 32) ValueCell!9342)) (size!27042 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55282)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31161)

(declare-fun minValue!1173 () V!31161)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!207 (array!55280 array!55282 (_ BitVec 32) (_ BitVec 32) V!31161 V!31161 (_ BitVec 64) (_ BitVec 32) Int) Unit!31129)

(assert (=> b!922840 (= lt!414501 (lemmaListMapContainsThenArrayContainsFrom!207 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55280 (_ BitVec 32) List!18793) Bool)

(assert (=> b!922840 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18790)))

(declare-fun lt!414497 () Unit!31129)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55280 (_ BitVec 32) (_ BitVec 32)) Unit!31129)

(assert (=> b!922840 (= lt!414497 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12956 0))(
  ( (tuple2!12957 (_1!6488 (_ BitVec 64)) (_2!6488 V!31161)) )
))
(declare-datatypes ((List!18794 0))(
  ( (Nil!18791) (Cons!18790 (h!19936 tuple2!12956) (t!26671 List!18794)) )
))
(declare-datatypes ((ListLongMap!11667 0))(
  ( (ListLongMap!11668 (toList!5849 List!18794)) )
))
(declare-fun lt!414499 () ListLongMap!11667)

(declare-fun lt!414496 () tuple2!12956)

(declare-fun contains!4874 (ListLongMap!11667 (_ BitVec 64)) Bool)

(declare-fun +!2661 (ListLongMap!11667 tuple2!12956) ListLongMap!11667)

(assert (=> b!922840 (contains!4874 (+!2661 lt!414499 lt!414496) k0!1099)))

(declare-fun lt!414498 () V!31161)

(declare-fun lt!414504 () Unit!31129)

(declare-fun addStillContains!423 (ListLongMap!11667 (_ BitVec 64) V!31161 (_ BitVec 64)) Unit!31129)

(assert (=> b!922840 (= lt!414504 (addStillContains!423 lt!414499 lt!414503 lt!414498 k0!1099))))

(declare-fun getCurrentListMap!3068 (array!55280 array!55282 (_ BitVec 32) (_ BitVec 32) V!31161 V!31161 (_ BitVec 32) Int) ListLongMap!11667)

(assert (=> b!922840 (= (getCurrentListMap!3068 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2661 (getCurrentListMap!3068 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414496))))

(assert (=> b!922840 (= lt!414496 (tuple2!12957 lt!414503 lt!414498))))

(declare-fun get!13986 (ValueCell!9342 V!31161) V!31161)

(declare-fun dynLambda!1500 (Int (_ BitVec 64)) V!31161)

(assert (=> b!922840 (= lt!414498 (get!13986 (select (arr!26582 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1500 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414502 () Unit!31129)

(declare-fun lemmaListMapRecursiveValidKeyArray!96 (array!55280 array!55282 (_ BitVec 32) (_ BitVec 32) V!31161 V!31161 (_ BitVec 32) Int) Unit!31129)

(assert (=> b!922840 (= lt!414502 (lemmaListMapRecursiveValidKeyArray!96 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922841 () Bool)

(assert (=> b!922841 (= e!517807 e!517809)))

(declare-fun res!622410 () Bool)

(assert (=> b!922841 (=> (not res!622410) (not e!517809))))

(assert (=> b!922841 (= res!622410 (validKeyInArray!0 lt!414503))))

(assert (=> b!922841 (= lt!414503 (select (arr!26581 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapNonEmpty!31227 () Bool)

(declare-fun mapRes!31227 () Bool)

(declare-fun tp!59859 () Bool)

(declare-fun e!517808 () Bool)

(assert (=> mapNonEmpty!31227 (= mapRes!31227 (and tp!59859 e!517808))))

(declare-fun mapKey!31227 () (_ BitVec 32))

(declare-fun mapValue!31227 () ValueCell!9342)

(declare-fun mapRest!31227 () (Array (_ BitVec 32) ValueCell!9342))

(assert (=> mapNonEmpty!31227 (= (arr!26582 _values!1231) (store mapRest!31227 mapKey!31227 mapValue!31227))))

(declare-fun b!922842 () Bool)

(declare-fun tp_is_empty!19647 () Bool)

(assert (=> b!922842 (= e!517808 tp_is_empty!19647)))

(declare-fun b!922843 () Bool)

(declare-fun arrayContainsKey!0 (array!55280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922843 (= e!517810 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!922838 () Bool)

(assert (=> b!922838 (= e!517810 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!622414 () Bool)

(declare-fun e!517805 () Bool)

(assert (=> start!78954 (=> (not res!622414) (not e!517805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78954 (= res!622414 (validMask!0 mask!1881))))

(assert (=> start!78954 e!517805))

(assert (=> start!78954 true))

(assert (=> start!78954 tp_is_empty!19647))

(declare-fun e!517806 () Bool)

(declare-fun array_inv!20696 (array!55282) Bool)

(assert (=> start!78954 (and (array_inv!20696 _values!1231) e!517806)))

(assert (=> start!78954 tp!59858))

(declare-fun array_inv!20697 (array!55280) Bool)

(assert (=> start!78954 (array_inv!20697 _keys!1487)))

(declare-fun b!922844 () Bool)

(declare-fun res!622412 () Bool)

(assert (=> b!922844 (=> (not res!622412) (not e!517805))))

(assert (=> b!922844 (= res!622412 (and (= (size!27042 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27041 _keys!1487) (size!27042 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922845 () Bool)

(assert (=> b!922845 (= e!517805 e!517807)))

(declare-fun res!622409 () Bool)

(assert (=> b!922845 (=> (not res!622409) (not e!517807))))

(assert (=> b!922845 (= res!622409 (contains!4874 lt!414499 k0!1099))))

(assert (=> b!922845 (= lt!414499 (getCurrentListMap!3068 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922846 () Bool)

(declare-fun e!517812 () Bool)

(assert (=> b!922846 (= e!517806 (and e!517812 mapRes!31227))))

(declare-fun condMapEmpty!31227 () Bool)

(declare-fun mapDefault!31227 () ValueCell!9342)

(assert (=> b!922846 (= condMapEmpty!31227 (= (arr!26582 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9342)) mapDefault!31227)))))

(declare-fun b!922847 () Bool)

(assert (=> b!922847 (= e!517812 tp_is_empty!19647)))

(declare-fun b!922848 () Bool)

(declare-fun res!622415 () Bool)

(assert (=> b!922848 (=> (not res!622415) (not e!517805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55280 (_ BitVec 32)) Bool)

(assert (=> b!922848 (= res!622415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31227 () Bool)

(assert (=> mapIsEmpty!31227 mapRes!31227))

(declare-fun b!922849 () Bool)

(declare-fun res!622411 () Bool)

(assert (=> b!922849 (=> (not res!622411) (not e!517807))))

(declare-fun v!791 () V!31161)

(declare-fun apply!654 (ListLongMap!11667 (_ BitVec 64)) V!31161)

(assert (=> b!922849 (= res!622411 (= (apply!654 lt!414499 k0!1099) v!791))))

(declare-fun b!922850 () Bool)

(declare-fun res!622406 () Bool)

(assert (=> b!922850 (=> (not res!622406) (not e!517805))))

(assert (=> b!922850 (= res!622406 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27041 _keys!1487))))))

(declare-fun b!922851 () Bool)

(declare-fun res!622413 () Bool)

(assert (=> b!922851 (=> (not res!622413) (not e!517807))))

(assert (=> b!922851 (= res!622413 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922852 () Bool)

(declare-fun res!622408 () Bool)

(assert (=> b!922852 (=> (not res!622408) (not e!517805))))

(assert (=> b!922852 (= res!622408 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18790))))

(assert (= (and start!78954 res!622414) b!922844))

(assert (= (and b!922844 res!622412) b!922848))

(assert (= (and b!922848 res!622415) b!922852))

(assert (= (and b!922852 res!622408) b!922850))

(assert (= (and b!922850 res!622406) b!922845))

(assert (= (and b!922845 res!622409) b!922849))

(assert (= (and b!922849 res!622411) b!922851))

(assert (= (and b!922851 res!622413) b!922839))

(assert (= (and b!922839 res!622407) b!922841))

(assert (= (and b!922841 res!622410) b!922840))

(assert (= (and b!922840 c!96128) b!922843))

(assert (= (and b!922840 (not c!96128)) b!922838))

(assert (= (and b!922846 condMapEmpty!31227) mapIsEmpty!31227))

(assert (= (and b!922846 (not condMapEmpty!31227)) mapNonEmpty!31227))

(get-info :version)

(assert (= (and mapNonEmpty!31227 ((_ is ValueCellFull!9342) mapValue!31227)) b!922842))

(assert (= (and b!922846 ((_ is ValueCellFull!9342) mapDefault!31227)) b!922847))

(assert (= start!78954 b!922846))

(declare-fun b_lambda!13671 () Bool)

(assert (=> (not b_lambda!13671) (not b!922840)))

(declare-fun t!26669 () Bool)

(declare-fun tb!5727 () Bool)

(assert (=> (and start!78954 (= defaultEntry!1235 defaultEntry!1235) t!26669) tb!5727))

(declare-fun result!11269 () Bool)

(assert (=> tb!5727 (= result!11269 tp_is_empty!19647)))

(assert (=> b!922840 t!26669))

(declare-fun b_and!28035 () Bool)

(assert (= b_and!28033 (and (=> t!26669 result!11269) b_and!28035)))

(declare-fun m!857095 () Bool)

(assert (=> b!922848 m!857095))

(declare-fun m!857097 () Bool)

(assert (=> b!922849 m!857097))

(declare-fun m!857099 () Bool)

(assert (=> b!922843 m!857099))

(declare-fun m!857101 () Bool)

(assert (=> b!922845 m!857101))

(declare-fun m!857103 () Bool)

(assert (=> b!922845 m!857103))

(declare-fun m!857105 () Bool)

(assert (=> mapNonEmpty!31227 m!857105))

(declare-fun m!857107 () Bool)

(assert (=> b!922852 m!857107))

(declare-fun m!857109 () Bool)

(assert (=> b!922841 m!857109))

(declare-fun m!857111 () Bool)

(assert (=> b!922841 m!857111))

(declare-fun m!857113 () Bool)

(assert (=> b!922840 m!857113))

(declare-fun m!857115 () Bool)

(assert (=> b!922840 m!857115))

(declare-fun m!857117 () Bool)

(assert (=> b!922840 m!857117))

(declare-fun m!857119 () Bool)

(assert (=> b!922840 m!857119))

(declare-fun m!857121 () Bool)

(assert (=> b!922840 m!857121))

(assert (=> b!922840 m!857121))

(declare-fun m!857123 () Bool)

(assert (=> b!922840 m!857123))

(declare-fun m!857125 () Bool)

(assert (=> b!922840 m!857125))

(declare-fun m!857127 () Bool)

(assert (=> b!922840 m!857127))

(declare-fun m!857129 () Bool)

(assert (=> b!922840 m!857129))

(declare-fun m!857131 () Bool)

(assert (=> b!922840 m!857131))

(declare-fun m!857133 () Bool)

(assert (=> b!922840 m!857133))

(declare-fun m!857135 () Bool)

(assert (=> b!922840 m!857135))

(declare-fun m!857137 () Bool)

(assert (=> b!922840 m!857137))

(assert (=> b!922840 m!857123))

(assert (=> b!922840 m!857113))

(assert (=> b!922840 m!857129))

(declare-fun m!857139 () Bool)

(assert (=> b!922840 m!857139))

(declare-fun m!857141 () Bool)

(assert (=> start!78954 m!857141))

(declare-fun m!857143 () Bool)

(assert (=> start!78954 m!857143))

(declare-fun m!857145 () Bool)

(assert (=> start!78954 m!857145))

(declare-fun m!857147 () Bool)

(assert (=> b!922839 m!857147))

(check-sat (not b!922849) (not b!922841) (not b_next!17139) (not b!922843) b_and!28035 (not b!922839) (not b!922852) (not start!78954) (not b_lambda!13671) (not b!922848) (not b!922840) tp_is_empty!19647 (not b!922845) (not mapNonEmpty!31227))
(check-sat b_and!28035 (not b_next!17139))
