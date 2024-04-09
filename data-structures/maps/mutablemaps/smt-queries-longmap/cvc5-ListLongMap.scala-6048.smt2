; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78236 () Bool)

(assert start!78236)

(declare-fun b_free!16699 () Bool)

(declare-fun b_next!16699 () Bool)

(assert (=> start!78236 (= b_free!16699 (not b_next!16699))))

(declare-fun tp!58375 () Bool)

(declare-fun b_and!27293 () Bool)

(assert (=> start!78236 (= tp!58375 b_and!27293)))

(declare-fun b!912593 () Bool)

(declare-fun res!615729 () Bool)

(declare-fun e!511929 () Bool)

(assert (=> b!912593 (=> (not res!615729) (not e!511929))))

(declare-datatypes ((array!54236 0))(
  ( (array!54237 (arr!26068 (Array (_ BitVec 32) (_ BitVec 64))) (size!26528 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54236)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54236 (_ BitVec 32)) Bool)

(assert (=> b!912593 (= res!615729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30403 () Bool)

(declare-fun mapRes!30403 () Bool)

(assert (=> mapIsEmpty!30403 mapRes!30403))

(declare-fun b!912594 () Bool)

(declare-fun res!615730 () Bool)

(assert (=> b!912594 (=> (not res!615730) (not e!511929))))

(declare-datatypes ((V!30455 0))(
  ( (V!30456 (val!9609 Int)) )
))
(declare-datatypes ((ValueCell!9077 0))(
  ( (ValueCellFull!9077 (v!12120 V!30455)) (EmptyCell!9077) )
))
(declare-datatypes ((array!54238 0))(
  ( (array!54239 (arr!26069 (Array (_ BitVec 32) ValueCell!9077)) (size!26529 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54238)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!912594 (= res!615730 (and (= (size!26529 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26528 _keys!1386) (size!26529 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912595 () Bool)

(declare-fun res!615726 () Bool)

(assert (=> b!912595 (=> (not res!615726) (not e!511929))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!912595 (= res!615726 (and (= (select (arr!26068 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!30403 () Bool)

(declare-fun tp!58374 () Bool)

(declare-fun e!511927 () Bool)

(assert (=> mapNonEmpty!30403 (= mapRes!30403 (and tp!58374 e!511927))))

(declare-fun mapValue!30403 () ValueCell!9077)

(declare-fun mapKey!30403 () (_ BitVec 32))

(declare-fun mapRest!30403 () (Array (_ BitVec 32) ValueCell!9077))

(assert (=> mapNonEmpty!30403 (= (arr!26069 _values!1152) (store mapRest!30403 mapKey!30403 mapValue!30403))))

(declare-fun b!912596 () Bool)

(declare-fun res!615724 () Bool)

(assert (=> b!912596 (=> (not res!615724) (not e!511929))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30455)

(declare-fun minValue!1094 () V!30455)

(declare-datatypes ((tuple2!12578 0))(
  ( (tuple2!12579 (_1!6299 (_ BitVec 64)) (_2!6299 V!30455)) )
))
(declare-datatypes ((List!18420 0))(
  ( (Nil!18417) (Cons!18416 (h!19562 tuple2!12578) (t!26017 List!18420)) )
))
(declare-datatypes ((ListLongMap!11289 0))(
  ( (ListLongMap!11290 (toList!5660 List!18420)) )
))
(declare-fun contains!4671 (ListLongMap!11289 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2890 (array!54236 array!54238 (_ BitVec 32) (_ BitVec 32) V!30455 V!30455 (_ BitVec 32) Int) ListLongMap!11289)

(assert (=> b!912596 (= res!615724 (contains!4671 (getCurrentListMap!2890 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912598 () Bool)

(assert (=> b!912598 (= e!511929 (not true))))

(declare-fun arrayContainsKey!0 (array!54236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912598 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30863 0))(
  ( (Unit!30864) )
))
(declare-fun lt!410644 () Unit!30863)

(declare-fun lemmaKeyInListMapIsInArray!277 (array!54236 array!54238 (_ BitVec 32) (_ BitVec 32) V!30455 V!30455 (_ BitVec 64) Int) Unit!30863)

(assert (=> b!912598 (= lt!410644 (lemmaKeyInListMapIsInArray!277 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912599 () Bool)

(declare-fun tp_is_empty!19117 () Bool)

(assert (=> b!912599 (= e!511927 tp_is_empty!19117)))

(declare-fun b!912600 () Bool)

(declare-fun e!511931 () Bool)

(assert (=> b!912600 (= e!511931 tp_is_empty!19117)))

(declare-fun res!615728 () Bool)

(assert (=> start!78236 (=> (not res!615728) (not e!511929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78236 (= res!615728 (validMask!0 mask!1756))))

(assert (=> start!78236 e!511929))

(declare-fun e!511928 () Bool)

(declare-fun array_inv!20352 (array!54238) Bool)

(assert (=> start!78236 (and (array_inv!20352 _values!1152) e!511928)))

(assert (=> start!78236 tp!58375))

(assert (=> start!78236 true))

(assert (=> start!78236 tp_is_empty!19117))

(declare-fun array_inv!20353 (array!54236) Bool)

(assert (=> start!78236 (array_inv!20353 _keys!1386)))

(declare-fun b!912597 () Bool)

(declare-fun res!615727 () Bool)

(assert (=> b!912597 (=> (not res!615727) (not e!511929))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912597 (= res!615727 (inRange!0 i!717 mask!1756))))

(declare-fun b!912601 () Bool)

(assert (=> b!912601 (= e!511928 (and e!511931 mapRes!30403))))

(declare-fun condMapEmpty!30403 () Bool)

(declare-fun mapDefault!30403 () ValueCell!9077)

