; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78704 () Bool)

(assert start!78704)

(declare-fun b_free!16889 () Bool)

(declare-fun b_next!16889 () Bool)

(assert (=> start!78704 (= b_free!16889 (not b_next!16889))))

(declare-fun tp!59109 () Bool)

(declare-fun b_and!27533 () Bool)

(assert (=> start!78704 (= tp!59109 b_and!27533)))

(declare-fun b!917154 () Bool)

(declare-fun res!618419 () Bool)

(declare-fun e!514942 () Bool)

(assert (=> b!917154 (=> (not res!618419) (not e!514942))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54786 0))(
  ( (array!54787 (arr!26334 (Array (_ BitVec 32) (_ BitVec 64))) (size!26794 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54786)

(assert (=> b!917154 (= res!618419 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26794 _keys!1487))))))

(declare-fun mapNonEmpty!30852 () Bool)

(declare-fun mapRes!30852 () Bool)

(declare-fun tp!59108 () Bool)

(declare-fun e!514943 () Bool)

(assert (=> mapNonEmpty!30852 (= mapRes!30852 (and tp!59108 e!514943))))

(declare-fun mapKey!30852 () (_ BitVec 32))

(declare-datatypes ((V!30827 0))(
  ( (V!30828 (val!9749 Int)) )
))
(declare-datatypes ((ValueCell!9217 0))(
  ( (ValueCellFull!9217 (v!12267 V!30827)) (EmptyCell!9217) )
))
(declare-fun mapValue!30852 () ValueCell!9217)

(declare-datatypes ((array!54788 0))(
  ( (array!54789 (arr!26335 (Array (_ BitVec 32) ValueCell!9217)) (size!26795 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54788)

(declare-fun mapRest!30852 () (Array (_ BitVec 32) ValueCell!9217))

(assert (=> mapNonEmpty!30852 (= (arr!26335 _values!1231) (store mapRest!30852 mapKey!30852 mapValue!30852))))

(declare-fun b!917155 () Bool)

(declare-fun e!514941 () Bool)

(assert (=> b!917155 (= e!514941 (not true))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!411928 () (_ BitVec 64))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30827)

(declare-fun minValue!1173 () V!30827)

(declare-datatypes ((tuple2!12730 0))(
  ( (tuple2!12731 (_1!6375 (_ BitVec 64)) (_2!6375 V!30827)) )
))
(declare-datatypes ((List!18583 0))(
  ( (Nil!18580) (Cons!18579 (h!19725 tuple2!12730) (t!26210 List!18583)) )
))
(declare-datatypes ((ListLongMap!11441 0))(
  ( (ListLongMap!11442 (toList!5736 List!18583)) )
))
(declare-fun getCurrentListMap!2962 (array!54786 array!54788 (_ BitVec 32) (_ BitVec 32) V!30827 V!30827 (_ BitVec 32) Int) ListLongMap!11441)

(declare-fun +!2568 (ListLongMap!11441 tuple2!12730) ListLongMap!11441)

(declare-fun get!13809 (ValueCell!9217 V!30827) V!30827)

(declare-fun dynLambda!1407 (Int (_ BitVec 64)) V!30827)

(assert (=> b!917155 (= (getCurrentListMap!2962 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2568 (getCurrentListMap!2962 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12731 lt!411928 (get!13809 (select (arr!26335 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1407 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30943 0))(
  ( (Unit!30944) )
))
(declare-fun lt!411929 () Unit!30943)

(declare-fun lemmaListMapRecursiveValidKeyArray!3 (array!54786 array!54788 (_ BitVec 32) (_ BitVec 32) V!30827 V!30827 (_ BitVec 32) Int) Unit!30943)

(assert (=> b!917155 (= lt!411929 (lemmaListMapRecursiveValidKeyArray!3 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917156 () Bool)

(declare-fun res!618415 () Bool)

(declare-fun e!514946 () Bool)

(assert (=> b!917156 (=> (not res!618415) (not e!514946))))

(assert (=> b!917156 (= res!618415 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917157 () Bool)

(declare-fun res!618418 () Bool)

(assert (=> b!917157 (=> (not res!618418) (not e!514942))))

(declare-datatypes ((List!18584 0))(
  ( (Nil!18581) (Cons!18580 (h!19726 (_ BitVec 64)) (t!26211 List!18584)) )
))
(declare-fun arrayNoDuplicates!0 (array!54786 (_ BitVec 32) List!18584) Bool)

(assert (=> b!917157 (= res!618418 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18581))))

(declare-fun b!917158 () Bool)

(assert (=> b!917158 (= e!514946 e!514941)))

(declare-fun res!618421 () Bool)

(assert (=> b!917158 (=> (not res!618421) (not e!514941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917158 (= res!618421 (validKeyInArray!0 lt!411928))))

(assert (=> b!917158 (= lt!411928 (select (arr!26334 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917159 () Bool)

(declare-fun res!618420 () Bool)

(assert (=> b!917159 (=> (not res!618420) (not e!514942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54786 (_ BitVec 32)) Bool)

(assert (=> b!917159 (= res!618420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30852 () Bool)

(assert (=> mapIsEmpty!30852 mapRes!30852))

(declare-fun b!917161 () Bool)

(declare-fun res!618416 () Bool)

(assert (=> b!917161 (=> (not res!618416) (not e!514946))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30827)

(declare-fun lt!411930 () ListLongMap!11441)

(declare-fun apply!562 (ListLongMap!11441 (_ BitVec 64)) V!30827)

(assert (=> b!917161 (= res!618416 (= (apply!562 lt!411930 k!1099) v!791))))

(declare-fun b!917162 () Bool)

(assert (=> b!917162 (= e!514942 e!514946)))

(declare-fun res!618422 () Bool)

(assert (=> b!917162 (=> (not res!618422) (not e!514946))))

(declare-fun contains!4752 (ListLongMap!11441 (_ BitVec 64)) Bool)

(assert (=> b!917162 (= res!618422 (contains!4752 lt!411930 k!1099))))

(assert (=> b!917162 (= lt!411930 (getCurrentListMap!2962 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917163 () Bool)

(declare-fun res!618417 () Bool)

(assert (=> b!917163 (=> (not res!618417) (not e!514946))))

(assert (=> b!917163 (= res!618417 (validKeyInArray!0 k!1099))))

(declare-fun b!917164 () Bool)

(declare-fun e!514944 () Bool)

(declare-fun tp_is_empty!19397 () Bool)

(assert (=> b!917164 (= e!514944 tp_is_empty!19397)))

(declare-fun b!917165 () Bool)

(declare-fun e!514945 () Bool)

(assert (=> b!917165 (= e!514945 (and e!514944 mapRes!30852))))

(declare-fun condMapEmpty!30852 () Bool)

(declare-fun mapDefault!30852 () ValueCell!9217)

