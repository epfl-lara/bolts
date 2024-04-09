; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79096 () Bool)

(assert start!79096)

(declare-fun b_free!17281 () Bool)

(declare-fun b_next!17281 () Bool)

(assert (=> start!79096 (= b_free!17281 (not b_next!17281))))

(declare-fun tp!60284 () Bool)

(declare-fun b_and!28317 () Bool)

(assert (=> start!79096 (= tp!60284 b_and!28317)))

(declare-fun b!926977 () Bool)

(declare-fun e!520420 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!926977 (= e!520420 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!926978 () Bool)

(declare-fun e!520413 () Bool)

(declare-fun e!520416 () Bool)

(assert (=> b!926978 (= e!520413 e!520416)))

(declare-fun res!624544 () Bool)

(assert (=> b!926978 (=> (not res!624544) (not e!520416))))

(declare-datatypes ((V!31351 0))(
  ( (V!31352 (val!9945 Int)) )
))
(declare-datatypes ((tuple2!13086 0))(
  ( (tuple2!13087 (_1!6553 (_ BitVec 64)) (_2!6553 V!31351)) )
))
(declare-datatypes ((List!18913 0))(
  ( (Nil!18910) (Cons!18909 (h!20055 tuple2!13086) (t!26932 List!18913)) )
))
(declare-datatypes ((ListLongMap!11797 0))(
  ( (ListLongMap!11798 (toList!5914 List!18913)) )
))
(declare-fun lt!417725 () ListLongMap!11797)

(declare-fun contains!4933 (ListLongMap!11797 (_ BitVec 64)) Bool)

(assert (=> b!926978 (= res!624544 (contains!4933 lt!417725 k!1099))))

(declare-datatypes ((array!55556 0))(
  ( (array!55557 (arr!26719 (Array (_ BitVec 32) (_ BitVec 64))) (size!27179 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55556)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9413 0))(
  ( (ValueCellFull!9413 (v!12463 V!31351)) (EmptyCell!9413) )
))
(declare-datatypes ((array!55558 0))(
  ( (array!55559 (arr!26720 (Array (_ BitVec 32) ValueCell!9413)) (size!27180 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55558)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31351)

(declare-fun minValue!1173 () V!31351)

(declare-fun getCurrentListMap!3127 (array!55556 array!55558 (_ BitVec 32) (_ BitVec 32) V!31351 V!31351 (_ BitVec 32) Int) ListLongMap!11797)

(assert (=> b!926978 (= lt!417725 (getCurrentListMap!3127 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926979 () Bool)

(declare-datatypes ((Unit!31348 0))(
  ( (Unit!31349) )
))
(declare-fun e!520410 () Unit!31348)

(declare-fun Unit!31350 () Unit!31348)

(assert (=> b!926979 (= e!520410 Unit!31350)))

(declare-fun b!926980 () Bool)

(declare-fun res!624548 () Bool)

(assert (=> b!926980 (=> (not res!624548) (not e!520413))))

(declare-datatypes ((List!18914 0))(
  ( (Nil!18911) (Cons!18910 (h!20056 (_ BitVec 64)) (t!26933 List!18914)) )
))
(declare-fun arrayNoDuplicates!0 (array!55556 (_ BitVec 32) List!18914) Bool)

(assert (=> b!926980 (= res!624548 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18911))))

(declare-fun b!926981 () Bool)

(declare-fun lt!417729 () ListLongMap!11797)

(declare-fun lt!417727 () V!31351)

(declare-fun apply!711 (ListLongMap!11797 (_ BitVec 64)) V!31351)

(assert (=> b!926981 (= (apply!711 lt!417729 k!1099) lt!417727)))

(declare-fun lt!417720 () Unit!31348)

(declare-fun lt!417723 () (_ BitVec 64))

(declare-fun lt!417719 () V!31351)

(declare-fun addApplyDifferent!392 (ListLongMap!11797 (_ BitVec 64) V!31351 (_ BitVec 64)) Unit!31348)

(assert (=> b!926981 (= lt!417720 (addApplyDifferent!392 lt!417725 lt!417723 lt!417719 k!1099))))

(assert (=> b!926981 (not (= lt!417723 k!1099))))

(declare-fun lt!417721 () Unit!31348)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55556 (_ BitVec 64) (_ BitVec 32) List!18914) Unit!31348)

(assert (=> b!926981 (= lt!417721 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18911))))

(assert (=> b!926981 e!520420))

(declare-fun c!96742 () Bool)

(assert (=> b!926981 (= c!96742 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417714 () Unit!31348)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!252 (array!55556 array!55558 (_ BitVec 32) (_ BitVec 32) V!31351 V!31351 (_ BitVec 64) (_ BitVec 32) Int) Unit!31348)

(assert (=> b!926981 (= lt!417714 (lemmaListMapContainsThenArrayContainsFrom!252 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!926981 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18911)))

(declare-fun lt!417728 () Unit!31348)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55556 (_ BitVec 32) (_ BitVec 32)) Unit!31348)

(assert (=> b!926981 (= lt!417728 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!926981 (contains!4933 lt!417729 k!1099)))

(declare-fun lt!417716 () tuple2!13086)

(declare-fun +!2706 (ListLongMap!11797 tuple2!13086) ListLongMap!11797)

(assert (=> b!926981 (= lt!417729 (+!2706 lt!417725 lt!417716))))

(declare-fun lt!417724 () Unit!31348)

(declare-fun addStillContains!468 (ListLongMap!11797 (_ BitVec 64) V!31351 (_ BitVec 64)) Unit!31348)

(assert (=> b!926981 (= lt!417724 (addStillContains!468 lt!417725 lt!417723 lt!417719 k!1099))))

(assert (=> b!926981 (= (getCurrentListMap!3127 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2706 (getCurrentListMap!3127 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417716))))

(assert (=> b!926981 (= lt!417716 (tuple2!13087 lt!417723 lt!417719))))

(declare-fun get!14079 (ValueCell!9413 V!31351) V!31351)

(declare-fun dynLambda!1545 (Int (_ BitVec 64)) V!31351)

(assert (=> b!926981 (= lt!417719 (get!14079 (select (arr!26720 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1545 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417715 () Unit!31348)

(declare-fun lemmaListMapRecursiveValidKeyArray!141 (array!55556 array!55558 (_ BitVec 32) (_ BitVec 32) V!31351 V!31351 (_ BitVec 32) Int) Unit!31348)

(assert (=> b!926981 (= lt!417715 (lemmaListMapRecursiveValidKeyArray!141 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!520414 () Unit!31348)

(assert (=> b!926981 (= e!520414 lt!417720)))

(declare-fun b!926982 () Bool)

(declare-fun e!520412 () Bool)

(declare-fun e!520421 () Bool)

(assert (=> b!926982 (= e!520412 e!520421)))

(declare-fun res!624538 () Bool)

(assert (=> b!926982 (=> (not res!624538) (not e!520421))))

(assert (=> b!926982 (= res!624538 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27179 _keys!1487)))))

(declare-fun lt!417726 () Unit!31348)

(assert (=> b!926982 (= lt!417726 e!520410)))

(declare-fun c!96741 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926982 (= c!96741 (validKeyInArray!0 k!1099))))

(declare-fun b!926983 () Bool)

(declare-fun arrayContainsKey!0 (array!55556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926983 (= e!520420 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!926985 () Bool)

(declare-fun e!520422 () Bool)

(assert (=> b!926985 (= e!520422 (not true))))

(declare-fun e!520419 () Bool)

(assert (=> b!926985 e!520419))

(declare-fun res!624545 () Bool)

(assert (=> b!926985 (=> (not res!624545) (not e!520419))))

(declare-fun lt!417717 () ListLongMap!11797)

(assert (=> b!926985 (= res!624545 (contains!4933 lt!417717 k!1099))))

(assert (=> b!926985 (= lt!417717 (getCurrentListMap!3127 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31351)

(declare-fun lt!417718 () Unit!31348)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!91 (array!55556 array!55558 (_ BitVec 32) (_ BitVec 32) V!31351 V!31351 (_ BitVec 64) V!31351 (_ BitVec 32) Int) Unit!31348)

(assert (=> b!926985 (= lt!417718 (lemmaListMapApplyFromThenApplyFromZero!91 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926986 () Bool)

(assert (=> b!926986 (= e!520416 e!520412)))

(declare-fun res!624539 () Bool)

(assert (=> b!926986 (=> (not res!624539) (not e!520412))))

(assert (=> b!926986 (= res!624539 (and (= lt!417727 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!926986 (= lt!417727 (apply!711 lt!417725 k!1099))))

(declare-fun b!926987 () Bool)

(declare-fun res!624547 () Bool)

(assert (=> b!926987 (=> (not res!624547) (not e!520413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55556 (_ BitVec 32)) Bool)

(assert (=> b!926987 (= res!624547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926988 () Bool)

(declare-fun res!624541 () Bool)

(assert (=> b!926988 (=> (not res!624541) (not e!520422))))

(declare-fun lt!417722 () ListLongMap!11797)

(assert (=> b!926988 (= res!624541 (= (apply!711 lt!417722 k!1099) v!791))))

(declare-fun b!926989 () Bool)

(declare-fun res!624546 () Bool)

(assert (=> b!926989 (=> (not res!624546) (not e!520413))))

(assert (=> b!926989 (= res!624546 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27179 _keys!1487))))))

(declare-fun b!926990 () Bool)

(assert (=> b!926990 (= e!520421 e!520422)))

(declare-fun res!624543 () Bool)

(assert (=> b!926990 (=> (not res!624543) (not e!520422))))

(assert (=> b!926990 (= res!624543 (contains!4933 lt!417722 k!1099))))

(assert (=> b!926990 (= lt!417722 (getCurrentListMap!3127 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31440 () Bool)

(declare-fun mapRes!31440 () Bool)

(assert (=> mapIsEmpty!31440 mapRes!31440))

(declare-fun b!926991 () Bool)

(declare-fun res!624542 () Bool)

(assert (=> b!926991 (=> (not res!624542) (not e!520413))))

(assert (=> b!926991 (= res!624542 (and (= (size!27180 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27179 _keys!1487) (size!27180 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926992 () Bool)

(assert (=> b!926992 (= e!520410 e!520414)))

(assert (=> b!926992 (= lt!417723 (select (arr!26719 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96743 () Bool)

(assert (=> b!926992 (= c!96743 (validKeyInArray!0 lt!417723))))

(declare-fun b!926993 () Bool)

(declare-fun e!520411 () Bool)

(declare-fun tp_is_empty!19789 () Bool)

(assert (=> b!926993 (= e!520411 tp_is_empty!19789)))

(declare-fun mapNonEmpty!31440 () Bool)

(declare-fun tp!60285 () Bool)

(assert (=> mapNonEmpty!31440 (= mapRes!31440 (and tp!60285 e!520411))))

(declare-fun mapRest!31440 () (Array (_ BitVec 32) ValueCell!9413))

(declare-fun mapKey!31440 () (_ BitVec 32))

(declare-fun mapValue!31440 () ValueCell!9413)

(assert (=> mapNonEmpty!31440 (= (arr!26720 _values!1231) (store mapRest!31440 mapKey!31440 mapValue!31440))))

(declare-fun res!624540 () Bool)

(assert (=> start!79096 (=> (not res!624540) (not e!520413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79096 (= res!624540 (validMask!0 mask!1881))))

(assert (=> start!79096 e!520413))

(assert (=> start!79096 true))

(assert (=> start!79096 tp_is_empty!19789))

(declare-fun e!520417 () Bool)

(declare-fun array_inv!20796 (array!55558) Bool)

(assert (=> start!79096 (and (array_inv!20796 _values!1231) e!520417)))

(assert (=> start!79096 tp!60284))

(declare-fun array_inv!20797 (array!55556) Bool)

(assert (=> start!79096 (array_inv!20797 _keys!1487)))

(declare-fun b!926984 () Bool)

(declare-fun Unit!31351 () Unit!31348)

(assert (=> b!926984 (= e!520414 Unit!31351)))

(declare-fun b!926994 () Bool)

(declare-fun e!520418 () Bool)

(assert (=> b!926994 (= e!520417 (and e!520418 mapRes!31440))))

(declare-fun condMapEmpty!31440 () Bool)

(declare-fun mapDefault!31440 () ValueCell!9413)

