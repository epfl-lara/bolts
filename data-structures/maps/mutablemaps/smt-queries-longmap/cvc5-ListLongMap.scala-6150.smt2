; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79036 () Bool)

(assert start!79036)

(declare-fun b_free!17221 () Bool)

(declare-fun b_next!17221 () Bool)

(assert (=> start!79036 (= b_free!17221 (not b_next!17221))))

(declare-fun tp!60105 () Bool)

(declare-fun b_and!28197 () Bool)

(assert (=> start!79036 (= tp!60105 b_and!28197)))

(declare-fun b!925117 () Bool)

(declare-fun e!519248 () Bool)

(declare-fun e!519242 () Bool)

(assert (=> b!925117 (= e!519248 e!519242)))

(declare-fun res!623554 () Bool)

(assert (=> b!925117 (=> (not res!623554) (not e!519242))))

(declare-datatypes ((V!31271 0))(
  ( (V!31272 (val!9915 Int)) )
))
(declare-datatypes ((tuple2!13032 0))(
  ( (tuple2!13033 (_1!6526 (_ BitVec 64)) (_2!6526 V!31271)) )
))
(declare-datatypes ((List!18868 0))(
  ( (Nil!18865) (Cons!18864 (h!20010 tuple2!13032) (t!26827 List!18868)) )
))
(declare-datatypes ((ListLongMap!11743 0))(
  ( (ListLongMap!11744 (toList!5887 List!18868)) )
))
(declare-fun lt!416277 () ListLongMap!11743)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4911 (ListLongMap!11743 (_ BitVec 64)) Bool)

(assert (=> b!925117 (= res!623554 (contains!4911 lt!416277 k!1099))))

(declare-datatypes ((array!55440 0))(
  ( (array!55441 (arr!26661 (Array (_ BitVec 32) (_ BitVec 64))) (size!27121 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55440)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9383 0))(
  ( (ValueCellFull!9383 (v!12433 V!31271)) (EmptyCell!9383) )
))
(declare-datatypes ((array!55442 0))(
  ( (array!55443 (arr!26662 (Array (_ BitVec 32) ValueCell!9383)) (size!27122 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55442)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31271)

(declare-fun minValue!1173 () V!31271)

(declare-fun getCurrentListMap!3105 (array!55440 array!55442 (_ BitVec 32) (_ BitVec 32) V!31271 V!31271 (_ BitVec 32) Int) ListLongMap!11743)

(assert (=> b!925117 (= lt!416277 (getCurrentListMap!3105 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925118 () Bool)

(declare-fun e!519251 () Bool)

(declare-fun tp_is_empty!19729 () Bool)

(assert (=> b!925118 (= e!519251 tp_is_empty!19729)))

(declare-fun mapNonEmpty!31350 () Bool)

(declare-fun mapRes!31350 () Bool)

(declare-fun tp!60104 () Bool)

(declare-fun e!519252 () Bool)

(assert (=> mapNonEmpty!31350 (= mapRes!31350 (and tp!60104 e!519252))))

(declare-fun mapRest!31350 () (Array (_ BitVec 32) ValueCell!9383))

(declare-fun mapKey!31350 () (_ BitVec 32))

(declare-fun mapValue!31350 () ValueCell!9383)

(assert (=> mapNonEmpty!31350 (= (arr!26662 _values!1231) (store mapRest!31350 mapKey!31350 mapValue!31350))))

(declare-fun b!925119 () Bool)

(declare-fun e!519250 () Bool)

(assert (=> b!925119 (= e!519242 e!519250)))

(declare-fun res!623557 () Bool)

(assert (=> b!925119 (=> (not res!623557) (not e!519250))))

(declare-fun v!791 () V!31271)

(declare-fun lt!416280 () V!31271)

(assert (=> b!925119 (= res!623557 (and (= lt!416280 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!688 (ListLongMap!11743 (_ BitVec 64)) V!31271)

(assert (=> b!925119 (= lt!416280 (apply!688 lt!416277 k!1099))))

(declare-fun b!925120 () Bool)

(declare-fun res!623558 () Bool)

(declare-fun e!519246 () Bool)

(assert (=> b!925120 (=> (not res!623558) (not e!519246))))

(declare-fun lt!416278 () ListLongMap!11743)

(assert (=> b!925120 (= res!623558 (= (apply!688 lt!416278 k!1099) v!791))))

(declare-fun b!925121 () Bool)

(declare-datatypes ((Unit!31258 0))(
  ( (Unit!31259) )
))
(declare-fun e!519247 () Unit!31258)

(declare-fun Unit!31260 () Unit!31258)

(assert (=> b!925121 (= e!519247 Unit!31260)))

(declare-fun b!925122 () Bool)

(declare-fun e!519244 () Bool)

(assert (=> b!925122 (= e!519250 e!519244)))

(declare-fun res!623552 () Bool)

(assert (=> b!925122 (=> (not res!623552) (not e!519244))))

(assert (=> b!925122 (= res!623552 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27121 _keys!1487)))))

(declare-fun lt!416282 () Unit!31258)

(assert (=> b!925122 (= lt!416282 e!519247)))

(declare-fun c!96473 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925122 (= c!96473 (validKeyInArray!0 k!1099))))

(declare-fun b!925124 () Bool)

(declare-fun lt!416279 () ListLongMap!11743)

(declare-fun e!519243 () Bool)

(assert (=> b!925124 (= e!519243 (= (apply!688 lt!416279 k!1099) v!791))))

(declare-fun b!925125 () Bool)

(assert (=> b!925125 (= e!519244 e!519246)))

(declare-fun res!623553 () Bool)

(assert (=> b!925125 (=> (not res!623553) (not e!519246))))

(assert (=> b!925125 (= res!623553 (contains!4911 lt!416278 k!1099))))

(assert (=> b!925125 (= lt!416278 (getCurrentListMap!3105 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519240 () Bool)

(declare-fun b!925126 () Bool)

(declare-fun arrayContainsKey!0 (array!55440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925126 (= e!519240 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!925127 () Bool)

(declare-fun e!519245 () Bool)

(assert (=> b!925127 (= e!519245 (and e!519251 mapRes!31350))))

(declare-fun condMapEmpty!31350 () Bool)

(declare-fun mapDefault!31350 () ValueCell!9383)

