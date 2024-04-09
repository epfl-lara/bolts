; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78938 () Bool)

(assert start!78938)

(declare-fun b_free!17123 () Bool)

(declare-fun b_next!17123 () Bool)

(assert (=> start!78938 (= b_free!17123 (not b_next!17123))))

(declare-fun tp!59811 () Bool)

(declare-fun b_and!28001 () Bool)

(assert (=> start!78938 (= tp!59811 b_and!28001)))

(declare-fun mapIsEmpty!31203 () Bool)

(declare-fun mapRes!31203 () Bool)

(assert (=> mapIsEmpty!31203 mapRes!31203))

(declare-fun b!922462 () Bool)

(declare-fun e!517620 () Bool)

(declare-fun e!517613 () Bool)

(assert (=> b!922462 (= e!517620 e!517613)))

(declare-fun res!622170 () Bool)

(assert (=> b!922462 (=> (not res!622170) (not e!517613))))

(declare-fun lt!414283 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922462 (= res!622170 (validKeyInArray!0 lt!414283))))

(declare-datatypes ((array!55248 0))(
  ( (array!55249 (arr!26565 (Array (_ BitVec 32) (_ BitVec 64))) (size!27025 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55248)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922462 (= lt!414283 (select (arr!26565 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922463 () Bool)

(declare-fun res!622173 () Bool)

(declare-fun e!517617 () Bool)

(assert (=> b!922463 (=> (not res!622173) (not e!517617))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31139 0))(
  ( (V!31140 (val!9866 Int)) )
))
(declare-datatypes ((ValueCell!9334 0))(
  ( (ValueCellFull!9334 (v!12384 V!31139)) (EmptyCell!9334) )
))
(declare-datatypes ((array!55250 0))(
  ( (array!55251 (arr!26566 (Array (_ BitVec 32) ValueCell!9334)) (size!27026 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55250)

(assert (=> b!922463 (= res!622173 (and (= (size!27026 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27025 _keys!1487) (size!27026 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922464 () Bool)

(declare-fun res!622172 () Bool)

(assert (=> b!922464 (=> (not res!622172) (not e!517620))))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!922464 (= res!622172 (validKeyInArray!0 k!1099))))

(declare-fun b!922465 () Bool)

(declare-fun e!517614 () Bool)

(declare-fun tp_is_empty!19631 () Bool)

(assert (=> b!922465 (= e!517614 tp_is_empty!19631)))

(declare-fun res!622166 () Bool)

(assert (=> start!78938 (=> (not res!622166) (not e!517617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78938 (= res!622166 (validMask!0 mask!1881))))

(assert (=> start!78938 e!517617))

(assert (=> start!78938 true))

(assert (=> start!78938 tp_is_empty!19631))

(declare-fun e!517616 () Bool)

(declare-fun array_inv!20682 (array!55250) Bool)

(assert (=> start!78938 (and (array_inv!20682 _values!1231) e!517616)))

(assert (=> start!78938 tp!59811))

(declare-fun array_inv!20683 (array!55248) Bool)

(assert (=> start!78938 (array_inv!20683 _keys!1487)))

(declare-fun mapNonEmpty!31203 () Bool)

(declare-fun tp!59810 () Bool)

(assert (=> mapNonEmpty!31203 (= mapRes!31203 (and tp!59810 e!517614))))

(declare-fun mapKey!31203 () (_ BitVec 32))

(declare-fun mapRest!31203 () (Array (_ BitVec 32) ValueCell!9334))

(declare-fun mapValue!31203 () ValueCell!9334)

(assert (=> mapNonEmpty!31203 (= (arr!26566 _values!1231) (store mapRest!31203 mapKey!31203 mapValue!31203))))

(declare-fun b!922466 () Bool)

(assert (=> b!922466 (= e!517617 e!517620)))

(declare-fun res!622169 () Bool)

(assert (=> b!922466 (=> (not res!622169) (not e!517620))))

(declare-datatypes ((tuple2!12940 0))(
  ( (tuple2!12941 (_1!6480 (_ BitVec 64)) (_2!6480 V!31139)) )
))
(declare-datatypes ((List!18777 0))(
  ( (Nil!18774) (Cons!18773 (h!19919 tuple2!12940) (t!26638 List!18777)) )
))
(declare-datatypes ((ListLongMap!11651 0))(
  ( (ListLongMap!11652 (toList!5841 List!18777)) )
))
(declare-fun lt!414285 () ListLongMap!11651)

(declare-fun contains!4866 (ListLongMap!11651 (_ BitVec 64)) Bool)

(assert (=> b!922466 (= res!622169 (contains!4866 lt!414285 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31139)

(declare-fun minValue!1173 () V!31139)

(declare-fun getCurrentListMap!3060 (array!55248 array!55250 (_ BitVec 32) (_ BitVec 32) V!31139 V!31139 (_ BitVec 32) Int) ListLongMap!11651)

(assert (=> b!922466 (= lt!414285 (getCurrentListMap!3060 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922467 () Bool)

(declare-fun res!622175 () Bool)

(assert (=> b!922467 (=> (not res!622175) (not e!517617))))

(declare-datatypes ((List!18778 0))(
  ( (Nil!18775) (Cons!18774 (h!19920 (_ BitVec 64)) (t!26639 List!18778)) )
))
(declare-fun arrayNoDuplicates!0 (array!55248 (_ BitVec 32) List!18778) Bool)

(assert (=> b!922467 (= res!622175 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18775))))

(declare-fun b!922468 () Bool)

(declare-fun e!517619 () Bool)

(assert (=> b!922468 (= e!517619 tp_is_empty!19631)))

(declare-fun b!922469 () Bool)

(assert (=> b!922469 (= e!517613 (not true))))

(assert (=> b!922469 (not (= lt!414283 k!1099))))

(declare-datatypes ((Unit!31113 0))(
  ( (Unit!31114) )
))
(declare-fun lt!414288 () Unit!31113)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55248 (_ BitVec 64) (_ BitVec 32) List!18778) Unit!31113)

(assert (=> b!922469 (= lt!414288 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18775))))

(declare-fun e!517618 () Bool)

(assert (=> b!922469 e!517618))

(declare-fun c!96104 () Bool)

(assert (=> b!922469 (= c!96104 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414286 () Unit!31113)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!199 (array!55248 array!55250 (_ BitVec 32) (_ BitVec 32) V!31139 V!31139 (_ BitVec 64) (_ BitVec 32) Int) Unit!31113)

(assert (=> b!922469 (= lt!414286 (lemmaListMapContainsThenArrayContainsFrom!199 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922469 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18775)))

(declare-fun lt!414281 () Unit!31113)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55248 (_ BitVec 32) (_ BitVec 32)) Unit!31113)

(assert (=> b!922469 (= lt!414281 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414282 () tuple2!12940)

(declare-fun +!2653 (ListLongMap!11651 tuple2!12940) ListLongMap!11651)

(assert (=> b!922469 (contains!4866 (+!2653 lt!414285 lt!414282) k!1099)))

(declare-fun lt!414280 () Unit!31113)

(declare-fun lt!414284 () V!31139)

(declare-fun addStillContains!415 (ListLongMap!11651 (_ BitVec 64) V!31139 (_ BitVec 64)) Unit!31113)

(assert (=> b!922469 (= lt!414280 (addStillContains!415 lt!414285 lt!414283 lt!414284 k!1099))))

(assert (=> b!922469 (= (getCurrentListMap!3060 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2653 (getCurrentListMap!3060 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414282))))

(assert (=> b!922469 (= lt!414282 (tuple2!12941 lt!414283 lt!414284))))

(declare-fun get!13972 (ValueCell!9334 V!31139) V!31139)

(declare-fun dynLambda!1492 (Int (_ BitVec 64)) V!31139)

(assert (=> b!922469 (= lt!414284 (get!13972 (select (arr!26566 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1492 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414287 () Unit!31113)

(declare-fun lemmaListMapRecursiveValidKeyArray!88 (array!55248 array!55250 (_ BitVec 32) (_ BitVec 32) V!31139 V!31139 (_ BitVec 32) Int) Unit!31113)

(assert (=> b!922469 (= lt!414287 (lemmaListMapRecursiveValidKeyArray!88 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922470 () Bool)

(declare-fun arrayContainsKey!0 (array!55248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922470 (= e!517618 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!922471 () Bool)

(declare-fun res!622171 () Bool)

(assert (=> b!922471 (=> (not res!622171) (not e!517617))))

(assert (=> b!922471 (= res!622171 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27025 _keys!1487))))))

(declare-fun b!922472 () Bool)

(declare-fun res!622168 () Bool)

(assert (=> b!922472 (=> (not res!622168) (not e!517620))))

(declare-fun v!791 () V!31139)

(declare-fun apply!646 (ListLongMap!11651 (_ BitVec 64)) V!31139)

(assert (=> b!922472 (= res!622168 (= (apply!646 lt!414285 k!1099) v!791))))

(declare-fun b!922473 () Bool)

(declare-fun res!622174 () Bool)

(assert (=> b!922473 (=> (not res!622174) (not e!517620))))

(assert (=> b!922473 (= res!622174 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922474 () Bool)

(assert (=> b!922474 (= e!517616 (and e!517619 mapRes!31203))))

(declare-fun condMapEmpty!31203 () Bool)

(declare-fun mapDefault!31203 () ValueCell!9334)

