; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78724 () Bool)

(assert start!78724)

(declare-fun b_free!16909 () Bool)

(declare-fun b_next!16909 () Bool)

(assert (=> start!78724 (= b_free!16909 (not b_next!16909))))

(declare-fun tp!59169 () Bool)

(declare-fun b_and!27573 () Bool)

(assert (=> start!78724 (= tp!59169 b_and!27573)))

(declare-fun b!917564 () Bool)

(declare-fun res!618715 () Bool)

(declare-fun e!515157 () Bool)

(assert (=> b!917564 (=> (not res!618715) (not e!515157))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917564 (= res!618715 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917565 () Bool)

(declare-fun e!515153 () Bool)

(assert (=> b!917565 (= e!515157 e!515153)))

(declare-fun res!618720 () Bool)

(assert (=> b!917565 (=> (not res!618720) (not e!515153))))

(declare-fun lt!412018 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917565 (= res!618720 (validKeyInArray!0 lt!412018))))

(declare-datatypes ((array!54826 0))(
  ( (array!54827 (arr!26354 (Array (_ BitVec 32) (_ BitVec 64))) (size!26814 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54826)

(assert (=> b!917565 (= lt!412018 (select (arr!26354 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917566 () Bool)

(declare-fun res!618718 () Bool)

(assert (=> b!917566 (=> (not res!618718) (not e!515157))))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!917566 (= res!618718 (validKeyInArray!0 k!1099))))

(declare-fun b!917567 () Bool)

(assert (=> b!917567 (= e!515153 (not true))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30855 0))(
  ( (V!30856 (val!9759 Int)) )
))
(declare-datatypes ((ValueCell!9227 0))(
  ( (ValueCellFull!9227 (v!12277 V!30855)) (EmptyCell!9227) )
))
(declare-datatypes ((array!54828 0))(
  ( (array!54829 (arr!26355 (Array (_ BitVec 32) ValueCell!9227)) (size!26815 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54828)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30855)

(declare-fun minValue!1173 () V!30855)

(declare-datatypes ((tuple2!12748 0))(
  ( (tuple2!12749 (_1!6384 (_ BitVec 64)) (_2!6384 V!30855)) )
))
(declare-datatypes ((List!18599 0))(
  ( (Nil!18596) (Cons!18595 (h!19741 tuple2!12748) (t!26246 List!18599)) )
))
(declare-datatypes ((ListLongMap!11459 0))(
  ( (ListLongMap!11460 (toList!5745 List!18599)) )
))
(declare-fun getCurrentListMap!2971 (array!54826 array!54828 (_ BitVec 32) (_ BitVec 32) V!30855 V!30855 (_ BitVec 32) Int) ListLongMap!11459)

(declare-fun +!2577 (ListLongMap!11459 tuple2!12748) ListLongMap!11459)

(declare-fun get!13826 (ValueCell!9227 V!30855) V!30855)

(declare-fun dynLambda!1416 (Int (_ BitVec 64)) V!30855)

(assert (=> b!917567 (= (getCurrentListMap!2971 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2577 (getCurrentListMap!2971 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12749 lt!412018 (get!13826 (select (arr!26355 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1416 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30961 0))(
  ( (Unit!30962) )
))
(declare-fun lt!412019 () Unit!30961)

(declare-fun lemmaListMapRecursiveValidKeyArray!12 (array!54826 array!54828 (_ BitVec 32) (_ BitVec 32) V!30855 V!30855 (_ BitVec 32) Int) Unit!30961)

(assert (=> b!917567 (= lt!412019 (lemmaListMapRecursiveValidKeyArray!12 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917568 () Bool)

(declare-fun e!515154 () Bool)

(declare-fun e!515151 () Bool)

(declare-fun mapRes!30882 () Bool)

(assert (=> b!917568 (= e!515154 (and e!515151 mapRes!30882))))

(declare-fun condMapEmpty!30882 () Bool)

(declare-fun mapDefault!30882 () ValueCell!9227)

