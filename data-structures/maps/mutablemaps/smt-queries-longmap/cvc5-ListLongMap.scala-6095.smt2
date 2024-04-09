; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78706 () Bool)

(assert start!78706)

(declare-fun b_free!16891 () Bool)

(declare-fun b_next!16891 () Bool)

(assert (=> start!78706 (= b_free!16891 (not b_next!16891))))

(declare-fun tp!59115 () Bool)

(declare-fun b_and!27537 () Bool)

(assert (=> start!78706 (= tp!59115 b_and!27537)))

(declare-fun b!917195 () Bool)

(declare-fun res!618443 () Bool)

(declare-fun e!514966 () Bool)

(assert (=> b!917195 (=> (not res!618443) (not e!514966))))

(declare-datatypes ((array!54790 0))(
  ( (array!54791 (arr!26336 (Array (_ BitVec 32) (_ BitVec 64))) (size!26796 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54790)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30831 0))(
  ( (V!30832 (val!9750 Int)) )
))
(declare-datatypes ((ValueCell!9218 0))(
  ( (ValueCellFull!9218 (v!12268 V!30831)) (EmptyCell!9218) )
))
(declare-datatypes ((array!54792 0))(
  ( (array!54793 (arr!26337 (Array (_ BitVec 32) ValueCell!9218)) (size!26797 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54792)

(assert (=> b!917195 (= res!618443 (and (= (size!26797 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26796 _keys!1487) (size!26797 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30855 () Bool)

(declare-fun mapRes!30855 () Bool)

(assert (=> mapIsEmpty!30855 mapRes!30855))

(declare-fun b!917196 () Bool)

(declare-fun e!514965 () Bool)

(declare-fun tp_is_empty!19399 () Bool)

(assert (=> b!917196 (= e!514965 tp_is_empty!19399)))

(declare-fun b!917197 () Bool)

(declare-fun res!618445 () Bool)

(declare-fun e!514967 () Bool)

(assert (=> b!917197 (=> (not res!618445) (not e!514967))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917197 (= res!618445 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917198 () Bool)

(declare-fun res!618452 () Bool)

(assert (=> b!917198 (=> (not res!618452) (not e!514967))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30831)

(declare-datatypes ((tuple2!12732 0))(
  ( (tuple2!12733 (_1!6376 (_ BitVec 64)) (_2!6376 V!30831)) )
))
(declare-datatypes ((List!18585 0))(
  ( (Nil!18582) (Cons!18581 (h!19727 tuple2!12732) (t!26214 List!18585)) )
))
(declare-datatypes ((ListLongMap!11443 0))(
  ( (ListLongMap!11444 (toList!5737 List!18585)) )
))
(declare-fun lt!411939 () ListLongMap!11443)

(declare-fun apply!563 (ListLongMap!11443 (_ BitVec 64)) V!30831)

(assert (=> b!917198 (= res!618452 (= (apply!563 lt!411939 k!1099) v!791))))

(declare-fun mapNonEmpty!30855 () Bool)

(declare-fun tp!59114 () Bool)

(assert (=> mapNonEmpty!30855 (= mapRes!30855 (and tp!59114 e!514965))))

(declare-fun mapRest!30855 () (Array (_ BitVec 32) ValueCell!9218))

(declare-fun mapValue!30855 () ValueCell!9218)

(declare-fun mapKey!30855 () (_ BitVec 32))

(assert (=> mapNonEmpty!30855 (= (arr!26337 _values!1231) (store mapRest!30855 mapKey!30855 mapValue!30855))))

(declare-fun b!917199 () Bool)

(declare-fun res!618447 () Bool)

(assert (=> b!917199 (=> (not res!618447) (not e!514966))))

(assert (=> b!917199 (= res!618447 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26796 _keys!1487))))))

(declare-fun b!917201 () Bool)

(assert (=> b!917201 (= e!514966 e!514967)))

(declare-fun res!618451 () Bool)

(assert (=> b!917201 (=> (not res!618451) (not e!514967))))

(declare-fun contains!4753 (ListLongMap!11443 (_ BitVec 64)) Bool)

(assert (=> b!917201 (= res!618451 (contains!4753 lt!411939 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30831)

(declare-fun minValue!1173 () V!30831)

(declare-fun getCurrentListMap!2963 (array!54790 array!54792 (_ BitVec 32) (_ BitVec 32) V!30831 V!30831 (_ BitVec 32) Int) ListLongMap!11443)

(assert (=> b!917201 (= lt!411939 (getCurrentListMap!2963 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917202 () Bool)

(declare-fun res!618449 () Bool)

(assert (=> b!917202 (=> (not res!618449) (not e!514966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54790 (_ BitVec 32)) Bool)

(assert (=> b!917202 (= res!618449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!917203 () Bool)

(declare-fun e!514962 () Bool)

(assert (=> b!917203 (= e!514962 (not true))))

(declare-fun lt!411938 () (_ BitVec 64))

(declare-fun +!2569 (ListLongMap!11443 tuple2!12732) ListLongMap!11443)

(declare-fun get!13812 (ValueCell!9218 V!30831) V!30831)

(declare-fun dynLambda!1408 (Int (_ BitVec 64)) V!30831)

(assert (=> b!917203 (= (getCurrentListMap!2963 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2569 (getCurrentListMap!2963 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12733 lt!411938 (get!13812 (select (arr!26337 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1408 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30945 0))(
  ( (Unit!30946) )
))
(declare-fun lt!411937 () Unit!30945)

(declare-fun lemmaListMapRecursiveValidKeyArray!4 (array!54790 array!54792 (_ BitVec 32) (_ BitVec 32) V!30831 V!30831 (_ BitVec 32) Int) Unit!30945)

(assert (=> b!917203 (= lt!411937 (lemmaListMapRecursiveValidKeyArray!4 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917204 () Bool)

(declare-fun e!514968 () Bool)

(declare-fun e!514963 () Bool)

(assert (=> b!917204 (= e!514968 (and e!514963 mapRes!30855))))

(declare-fun condMapEmpty!30855 () Bool)

(declare-fun mapDefault!30855 () ValueCell!9218)

