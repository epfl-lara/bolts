; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77672 () Bool)

(assert start!77672)

(declare-fun b_free!16229 () Bool)

(declare-fun b_next!16229 () Bool)

(assert (=> start!77672 (= b_free!16229 (not b_next!16229))))

(declare-fun tp!56950 () Bool)

(declare-fun b_and!26629 () Bool)

(assert (=> start!77672 (= tp!56950 b_and!26629)))

(declare-fun b!905055 () Bool)

(declare-fun res!610838 () Bool)

(declare-fun e!507193 () Bool)

(assert (=> b!905055 (=> (not res!610838) (not e!507193))))

(declare-datatypes ((array!53324 0))(
  ( (array!53325 (arr!25617 (Array (_ BitVec 32) (_ BitVec 64))) (size!26077 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53324)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53324 (_ BitVec 32)) Bool)

(assert (=> b!905055 (= res!610838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905056 () Bool)

(declare-fun res!610840 () Bool)

(assert (=> b!905056 (=> (not res!610840) (not e!507193))))

(declare-datatypes ((List!18079 0))(
  ( (Nil!18076) (Cons!18075 (h!19221 (_ BitVec 64)) (t!25488 List!18079)) )
))
(declare-fun arrayNoDuplicates!0 (array!53324 (_ BitVec 32) List!18079) Bool)

(assert (=> b!905056 (= res!610840 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18076))))

(declare-fun b!905057 () Bool)

(declare-fun e!507190 () Bool)

(declare-fun e!507196 () Bool)

(assert (=> b!905057 (= e!507190 e!507196)))

(declare-fun res!610833 () Bool)

(assert (=> b!905057 (=> res!610833 e!507196)))

(declare-datatypes ((V!29827 0))(
  ( (V!29828 (val!9374 Int)) )
))
(declare-datatypes ((tuple2!12210 0))(
  ( (tuple2!12211 (_1!6115 (_ BitVec 64)) (_2!6115 V!29827)) )
))
(declare-datatypes ((List!18080 0))(
  ( (Nil!18077) (Cons!18076 (h!19222 tuple2!12210) (t!25489 List!18080)) )
))
(declare-datatypes ((ListLongMap!10921 0))(
  ( (ListLongMap!10922 (toList!5476 List!18080)) )
))
(declare-fun lt!408414 () ListLongMap!10921)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4489 (ListLongMap!10921 (_ BitVec 64)) Bool)

(assert (=> b!905057 (= res!610833 (not (contains!4489 lt!408414 k!1033)))))

(declare-datatypes ((ValueCell!8842 0))(
  ( (ValueCellFull!8842 (v!11879 V!29827)) (EmptyCell!8842) )
))
(declare-datatypes ((array!53326 0))(
  ( (array!53327 (arr!25618 (Array (_ BitVec 32) ValueCell!8842)) (size!26078 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53326)

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29827)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29827)

(declare-fun getCurrentListMap!2713 (array!53324 array!53326 (_ BitVec 32) (_ BitVec 32) V!29827 V!29827 (_ BitVec 32) Int) ListLongMap!10921)

(assert (=> b!905057 (= lt!408414 (getCurrentListMap!2713 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29683 () Bool)

(declare-fun mapRes!29683 () Bool)

(declare-fun tp!56949 () Bool)

(declare-fun e!507197 () Bool)

(assert (=> mapNonEmpty!29683 (= mapRes!29683 (and tp!56949 e!507197))))

(declare-fun mapValue!29683 () ValueCell!8842)

(declare-fun mapKey!29683 () (_ BitVec 32))

(declare-fun mapRest!29683 () (Array (_ BitVec 32) ValueCell!8842))

(assert (=> mapNonEmpty!29683 (= (arr!25618 _values!1152) (store mapRest!29683 mapKey!29683 mapValue!29683))))

(declare-fun b!905059 () Bool)

(declare-fun e!507194 () Bool)

(declare-fun tp_is_empty!18647 () Bool)

(assert (=> b!905059 (= e!507194 tp_is_empty!18647)))

(declare-fun b!905060 () Bool)

(declare-fun res!610834 () Bool)

(assert (=> b!905060 (=> res!610834 e!507196)))

(declare-fun lt!408415 () V!29827)

(declare-fun apply!453 (ListLongMap!10921 (_ BitVec 64)) V!29827)

(assert (=> b!905060 (= res!610834 (not (= (apply!453 lt!408414 k!1033) lt!408415)))))

(declare-fun b!905061 () Bool)

(declare-fun res!610839 () Bool)

(declare-fun e!507192 () Bool)

(assert (=> b!905061 (=> (not res!610839) (not e!507192))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905061 (= res!610839 (inRange!0 i!717 mask!1756))))

(declare-fun b!905062 () Bool)

(assert (=> b!905062 (= e!507196 true)))

(declare-fun lt!408412 () ListLongMap!10921)

(assert (=> b!905062 (= (apply!453 lt!408412 k!1033) lt!408415)))

(declare-datatypes ((Unit!30679 0))(
  ( (Unit!30680) )
))
(declare-fun lt!408413 () Unit!30679)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!7 (array!53324 array!53326 (_ BitVec 32) (_ BitVec 32) V!29827 V!29827 (_ BitVec 64) V!29827 (_ BitVec 32) Int) Unit!30679)

(assert (=> b!905062 (= lt!408413 (lemmaListMapApplyFromThenApplyFromZero!7 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408415 i!717 defaultEntry!1160))))

(declare-fun res!610836 () Bool)

(assert (=> start!77672 (=> (not res!610836) (not e!507193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77672 (= res!610836 (validMask!0 mask!1756))))

(assert (=> start!77672 e!507193))

(declare-fun e!507195 () Bool)

(declare-fun array_inv!20050 (array!53326) Bool)

(assert (=> start!77672 (and (array_inv!20050 _values!1152) e!507195)))

(assert (=> start!77672 tp!56950))

(assert (=> start!77672 true))

(assert (=> start!77672 tp_is_empty!18647))

(declare-fun array_inv!20051 (array!53324) Bool)

(assert (=> start!77672 (array_inv!20051 _keys!1386)))

(declare-fun b!905058 () Bool)

(declare-fun res!610842 () Bool)

(assert (=> b!905058 (=> (not res!610842) (not e!507192))))

(assert (=> b!905058 (= res!610842 (and (= (select (arr!25617 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905063 () Bool)

(assert (=> b!905063 (= e!507192 (not e!507190))))

(declare-fun res!610841 () Bool)

(assert (=> b!905063 (=> res!610841 e!507190)))

(assert (=> b!905063 (= res!610841 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26077 _keys!1386))))))

(declare-fun get!13471 (ValueCell!8842 V!29827) V!29827)

(declare-fun dynLambda!1329 (Int (_ BitVec 64)) V!29827)

(assert (=> b!905063 (= lt!408415 (get!13471 (select (arr!25618 _values!1152) i!717) (dynLambda!1329 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905063 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408416 () Unit!30679)

(declare-fun lemmaKeyInListMapIsInArray!202 (array!53324 array!53326 (_ BitVec 32) (_ BitVec 32) V!29827 V!29827 (_ BitVec 64) Int) Unit!30679)

(assert (=> b!905063 (= lt!408416 (lemmaKeyInListMapIsInArray!202 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!905064 () Bool)

(assert (=> b!905064 (= e!507195 (and e!507194 mapRes!29683))))

(declare-fun condMapEmpty!29683 () Bool)

(declare-fun mapDefault!29683 () ValueCell!8842)

