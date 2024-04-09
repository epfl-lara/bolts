; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78956 () Bool)

(assert start!78956)

(declare-fun b_free!17141 () Bool)

(declare-fun b_next!17141 () Bool)

(assert (=> start!78956 (= b_free!17141 (not b_next!17141))))

(declare-fun tp!59865 () Bool)

(declare-fun b_and!28037 () Bool)

(assert (=> start!78956 (= tp!59865 b_and!28037)))

(declare-fun b!922885 () Bool)

(declare-fun res!622439 () Bool)

(declare-fun e!517830 () Bool)

(assert (=> b!922885 (=> (not res!622439) (not e!517830))))

(declare-datatypes ((array!55284 0))(
  ( (array!55285 (arr!26583 (Array (_ BitVec 32) (_ BitVec 64))) (size!27043 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55284)

(declare-datatypes ((List!18795 0))(
  ( (Nil!18792) (Cons!18791 (h!19937 (_ BitVec 64)) (t!26674 List!18795)) )
))
(declare-fun arrayNoDuplicates!0 (array!55284 (_ BitVec 32) List!18795) Bool)

(assert (=> b!922885 (= res!622439 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18792))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!517836 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun b!922886 () Bool)

(declare-fun arrayContainsKey!0 (array!55284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922886 (= e!517836 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922887 () Bool)

(declare-fun res!622441 () Bool)

(assert (=> b!922887 (=> (not res!622441) (not e!517830))))

(assert (=> b!922887 (= res!622441 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27043 _keys!1487))))))

(declare-fun b!922888 () Bool)

(declare-fun res!622438 () Bool)

(assert (=> b!922888 (=> (not res!622438) (not e!517830))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31163 0))(
  ( (V!31164 (val!9875 Int)) )
))
(declare-datatypes ((ValueCell!9343 0))(
  ( (ValueCellFull!9343 (v!12393 V!31163)) (EmptyCell!9343) )
))
(declare-datatypes ((array!55286 0))(
  ( (array!55287 (arr!26584 (Array (_ BitVec 32) ValueCell!9343)) (size!27044 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55286)

(assert (=> b!922888 (= res!622438 (and (= (size!27044 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27043 _keys!1487) (size!27044 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922889 () Bool)

(declare-fun e!517832 () Bool)

(declare-fun tp_is_empty!19649 () Bool)

(assert (=> b!922889 (= e!517832 tp_is_empty!19649)))

(declare-fun b!922890 () Bool)

(declare-fun res!622442 () Bool)

(declare-fun e!517831 () Bool)

(assert (=> b!922890 (=> (not res!622442) (not e!517831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922890 (= res!622442 (validKeyInArray!0 k!1099))))

(declare-fun mapIsEmpty!31230 () Bool)

(declare-fun mapRes!31230 () Bool)

(assert (=> mapIsEmpty!31230 mapRes!31230))

(declare-fun b!922891 () Bool)

(declare-fun e!517835 () Bool)

(assert (=> b!922891 (= e!517835 (not (bvsle from!1844 (size!27043 _keys!1487))))))

(declare-fun lt!414523 () (_ BitVec 64))

(assert (=> b!922891 (not (= lt!414523 k!1099))))

(declare-datatypes ((Unit!31131 0))(
  ( (Unit!31132) )
))
(declare-fun lt!414525 () Unit!31131)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55284 (_ BitVec 64) (_ BitVec 32) List!18795) Unit!31131)

(assert (=> b!922891 (= lt!414525 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18792))))

(assert (=> b!922891 e!517836))

(declare-fun c!96131 () Bool)

(assert (=> b!922891 (= c!96131 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!414531 () Unit!31131)

(declare-fun zeroValue!1173 () V!31163)

(declare-fun minValue!1173 () V!31163)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!208 (array!55284 array!55286 (_ BitVec 32) (_ BitVec 32) V!31163 V!31163 (_ BitVec 64) (_ BitVec 32) Int) Unit!31131)

(assert (=> b!922891 (= lt!414531 (lemmaListMapContainsThenArrayContainsFrom!208 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922891 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18792)))

(declare-fun lt!414528 () Unit!31131)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55284 (_ BitVec 32) (_ BitVec 32)) Unit!31131)

(assert (=> b!922891 (= lt!414528 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!12958 0))(
  ( (tuple2!12959 (_1!6489 (_ BitVec 64)) (_2!6489 V!31163)) )
))
(declare-datatypes ((List!18796 0))(
  ( (Nil!18793) (Cons!18792 (h!19938 tuple2!12958) (t!26675 List!18796)) )
))
(declare-datatypes ((ListLongMap!11669 0))(
  ( (ListLongMap!11670 (toList!5850 List!18796)) )
))
(declare-fun lt!414524 () ListLongMap!11669)

(declare-fun lt!414527 () tuple2!12958)

(declare-fun contains!4875 (ListLongMap!11669 (_ BitVec 64)) Bool)

(declare-fun +!2662 (ListLongMap!11669 tuple2!12958) ListLongMap!11669)

(assert (=> b!922891 (contains!4875 (+!2662 lt!414524 lt!414527) k!1099)))

(declare-fun lt!414526 () Unit!31131)

(declare-fun lt!414530 () V!31163)

(declare-fun addStillContains!424 (ListLongMap!11669 (_ BitVec 64) V!31163 (_ BitVec 64)) Unit!31131)

(assert (=> b!922891 (= lt!414526 (addStillContains!424 lt!414524 lt!414523 lt!414530 k!1099))))

(declare-fun getCurrentListMap!3069 (array!55284 array!55286 (_ BitVec 32) (_ BitVec 32) V!31163 V!31163 (_ BitVec 32) Int) ListLongMap!11669)

(assert (=> b!922891 (= (getCurrentListMap!3069 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2662 (getCurrentListMap!3069 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414527))))

(assert (=> b!922891 (= lt!414527 (tuple2!12959 lt!414523 lt!414530))))

(declare-fun get!13987 (ValueCell!9343 V!31163) V!31163)

(declare-fun dynLambda!1501 (Int (_ BitVec 64)) V!31163)

(assert (=> b!922891 (= lt!414530 (get!13987 (select (arr!26584 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1501 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414529 () Unit!31131)

(declare-fun lemmaListMapRecursiveValidKeyArray!97 (array!55284 array!55286 (_ BitVec 32) (_ BitVec 32) V!31163 V!31163 (_ BitVec 32) Int) Unit!31131)

(assert (=> b!922891 (= lt!414529 (lemmaListMapRecursiveValidKeyArray!97 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922893 () Bool)

(assert (=> b!922893 (= e!517831 e!517835)))

(declare-fun res!622443 () Bool)

(assert (=> b!922893 (=> (not res!622443) (not e!517835))))

(assert (=> b!922893 (= res!622443 (validKeyInArray!0 lt!414523))))

(assert (=> b!922893 (= lt!414523 (select (arr!26583 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922894 () Bool)

(declare-fun res!622437 () Bool)

(assert (=> b!922894 (=> (not res!622437) (not e!517831))))

(declare-fun v!791 () V!31163)

(declare-fun apply!655 (ListLongMap!11669 (_ BitVec 64)) V!31163)

(assert (=> b!922894 (= res!622437 (= (apply!655 lt!414524 k!1099) v!791))))

(declare-fun b!922895 () Bool)

(declare-fun e!517833 () Bool)

(assert (=> b!922895 (= e!517833 tp_is_empty!19649)))

(declare-fun b!922896 () Bool)

(assert (=> b!922896 (= e!517830 e!517831)))

(declare-fun res!622440 () Bool)

(assert (=> b!922896 (=> (not res!622440) (not e!517831))))

(assert (=> b!922896 (= res!622440 (contains!4875 lt!414524 k!1099))))

(assert (=> b!922896 (= lt!414524 (getCurrentListMap!3069 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922897 () Bool)

(declare-fun res!622444 () Bool)

(assert (=> b!922897 (=> (not res!622444) (not e!517830))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55284 (_ BitVec 32)) Bool)

(assert (=> b!922897 (= res!622444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31230 () Bool)

(declare-fun tp!59864 () Bool)

(assert (=> mapNonEmpty!31230 (= mapRes!31230 (and tp!59864 e!517833))))

(declare-fun mapRest!31230 () (Array (_ BitVec 32) ValueCell!9343))

(declare-fun mapKey!31230 () (_ BitVec 32))

(declare-fun mapValue!31230 () ValueCell!9343)

(assert (=> mapNonEmpty!31230 (= (arr!26584 _values!1231) (store mapRest!31230 mapKey!31230 mapValue!31230))))

(declare-fun b!922898 () Bool)

(declare-fun res!622445 () Bool)

(assert (=> b!922898 (=> (not res!622445) (not e!517831))))

(assert (=> b!922898 (= res!622445 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922899 () Bool)

(declare-fun e!517829 () Bool)

(assert (=> b!922899 (= e!517829 (and e!517832 mapRes!31230))))

(declare-fun condMapEmpty!31230 () Bool)

(declare-fun mapDefault!31230 () ValueCell!9343)

