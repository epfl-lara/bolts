; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78700 () Bool)

(assert start!78700)

(declare-fun b_free!16885 () Bool)

(declare-fun b_next!16885 () Bool)

(assert (=> start!78700 (= b_free!16885 (not b_next!16885))))

(declare-fun tp!59096 () Bool)

(declare-fun b_and!27525 () Bool)

(assert (=> start!78700 (= tp!59096 b_and!27525)))

(declare-fun b!917072 () Bool)

(declare-fun e!514903 () Bool)

(assert (=> b!917072 (= e!514903 (not true))))

(declare-datatypes ((array!54778 0))(
  ( (array!54779 (arr!26330 (Array (_ BitVec 32) (_ BitVec 64))) (size!26790 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54778)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((V!30823 0))(
  ( (V!30824 (val!9747 Int)) )
))
(declare-datatypes ((ValueCell!9215 0))(
  ( (ValueCellFull!9215 (v!12265 V!30823)) (EmptyCell!9215) )
))
(declare-datatypes ((array!54780 0))(
  ( (array!54781 (arr!26331 (Array (_ BitVec 32) ValueCell!9215)) (size!26791 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54780)

(declare-fun lt!411912 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30823)

(declare-fun minValue!1173 () V!30823)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((tuple2!12726 0))(
  ( (tuple2!12727 (_1!6373 (_ BitVec 64)) (_2!6373 V!30823)) )
))
(declare-datatypes ((List!18580 0))(
  ( (Nil!18577) (Cons!18576 (h!19722 tuple2!12726) (t!26203 List!18580)) )
))
(declare-datatypes ((ListLongMap!11437 0))(
  ( (ListLongMap!11438 (toList!5734 List!18580)) )
))
(declare-fun getCurrentListMap!2960 (array!54778 array!54780 (_ BitVec 32) (_ BitVec 32) V!30823 V!30823 (_ BitVec 32) Int) ListLongMap!11437)

(declare-fun +!2566 (ListLongMap!11437 tuple2!12726) ListLongMap!11437)

(declare-fun get!13807 (ValueCell!9215 V!30823) V!30823)

(declare-fun dynLambda!1405 (Int (_ BitVec 64)) V!30823)

(assert (=> b!917072 (= (getCurrentListMap!2960 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2566 (getCurrentListMap!2960 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12727 lt!411912 (get!13807 (select (arr!26331 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1405 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30939 0))(
  ( (Unit!30940) )
))
(declare-fun lt!411910 () Unit!30939)

(declare-fun lemmaListMapRecursiveValidKeyArray!1 (array!54778 array!54780 (_ BitVec 32) (_ BitVec 32) V!30823 V!30823 (_ BitVec 32) Int) Unit!30939)

(assert (=> b!917072 (= lt!411910 (lemmaListMapRecursiveValidKeyArray!1 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917073 () Bool)

(declare-fun e!514901 () Bool)

(declare-fun e!514899 () Bool)

(declare-fun mapRes!30846 () Bool)

(assert (=> b!917073 (= e!514901 (and e!514899 mapRes!30846))))

(declare-fun condMapEmpty!30846 () Bool)

(declare-fun mapDefault!30846 () ValueCell!9215)

