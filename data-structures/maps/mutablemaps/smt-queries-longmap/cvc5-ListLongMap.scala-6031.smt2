; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78098 () Bool)

(assert start!78098)

(declare-fun b_free!16597 () Bool)

(declare-fun b_next!16597 () Bool)

(assert (=> start!78098 (= b_free!16597 (not b_next!16597))))

(declare-fun tp!58063 () Bool)

(declare-fun b_and!27187 () Bool)

(assert (=> start!78098 (= tp!58063 b_and!27187)))

(declare-fun b!911133 () Bool)

(declare-fun e!511011 () Bool)

(declare-fun tp_is_empty!19015 () Bool)

(assert (=> b!911133 (= e!511011 tp_is_empty!19015)))

(declare-fun mapIsEmpty!30244 () Bool)

(declare-fun mapRes!30244 () Bool)

(assert (=> mapIsEmpty!30244 mapRes!30244))

(declare-fun mapNonEmpty!30244 () Bool)

(declare-fun tp!58062 () Bool)

(assert (=> mapNonEmpty!30244 (= mapRes!30244 (and tp!58062 e!511011))))

(declare-datatypes ((V!30319 0))(
  ( (V!30320 (val!9558 Int)) )
))
(declare-datatypes ((ValueCell!9026 0))(
  ( (ValueCellFull!9026 (v!12067 V!30319)) (EmptyCell!9026) )
))
(declare-datatypes ((array!54038 0))(
  ( (array!54039 (arr!25971 (Array (_ BitVec 32) ValueCell!9026)) (size!26431 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54038)

(declare-fun mapRest!30244 () (Array (_ BitVec 32) ValueCell!9026))

(declare-fun mapValue!30244 () ValueCell!9026)

(declare-fun mapKey!30244 () (_ BitVec 32))

(assert (=> mapNonEmpty!30244 (= (arr!25971 _values!1152) (store mapRest!30244 mapKey!30244 mapValue!30244))))

(declare-fun b!911134 () Bool)

(declare-fun res!614860 () Bool)

(declare-fun e!511012 () Bool)

(assert (=> b!911134 (=> (not res!614860) (not e!511012))))

(declare-datatypes ((array!54040 0))(
  ( (array!54041 (arr!25972 (Array (_ BitVec 32) (_ BitVec 64))) (size!26432 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54040)

(declare-datatypes ((List!18349 0))(
  ( (Nil!18346) (Cons!18345 (h!19491 (_ BitVec 64)) (t!25942 List!18349)) )
))
(declare-fun arrayNoDuplicates!0 (array!54040 (_ BitVec 32) List!18349) Bool)

(assert (=> b!911134 (= res!614860 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18346))))

(declare-fun b!911135 () Bool)

(declare-fun e!511010 () Bool)

(declare-fun e!511013 () Bool)

(assert (=> b!911135 (= e!511010 (and e!511013 mapRes!30244))))

(declare-fun condMapEmpty!30244 () Bool)

(declare-fun mapDefault!30244 () ValueCell!9026)

