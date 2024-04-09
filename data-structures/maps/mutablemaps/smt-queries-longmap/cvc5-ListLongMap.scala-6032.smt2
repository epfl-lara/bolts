; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78104 () Bool)

(assert start!78104)

(declare-fun b_free!16603 () Bool)

(declare-fun b_next!16603 () Bool)

(assert (=> start!78104 (= b_free!16603 (not b_next!16603))))

(declare-fun tp!58080 () Bool)

(declare-fun b_and!27193 () Bool)

(assert (=> start!78104 (= tp!58080 b_and!27193)))

(declare-fun b!911196 () Bool)

(declare-fun e!511058 () Bool)

(declare-fun tp_is_empty!19021 () Bool)

(assert (=> b!911196 (= e!511058 tp_is_empty!19021)))

(declare-fun b!911197 () Bool)

(declare-fun e!511054 () Bool)

(assert (=> b!911197 (= e!511054 false)))

(declare-datatypes ((V!30327 0))(
  ( (V!30328 (val!9561 Int)) )
))
(declare-datatypes ((ValueCell!9029 0))(
  ( (ValueCellFull!9029 (v!12070 V!30327)) (EmptyCell!9029) )
))
(declare-datatypes ((array!54048 0))(
  ( (array!54049 (arr!25976 (Array (_ BitVec 32) ValueCell!9029)) (size!26436 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54048)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!410332 () Bool)

(declare-fun zeroValue!1094 () V!30327)

(declare-datatypes ((array!54050 0))(
  ( (array!54051 (arr!25977 (Array (_ BitVec 32) (_ BitVec 64))) (size!26437 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54050)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30327)

(declare-datatypes ((tuple2!12504 0))(
  ( (tuple2!12505 (_1!6262 (_ BitVec 64)) (_2!6262 V!30327)) )
))
(declare-datatypes ((List!18352 0))(
  ( (Nil!18349) (Cons!18348 (h!19494 tuple2!12504) (t!25945 List!18352)) )
))
(declare-datatypes ((ListLongMap!11215 0))(
  ( (ListLongMap!11216 (toList!5623 List!18352)) )
))
(declare-fun contains!4632 (ListLongMap!11215 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2853 (array!54050 array!54048 (_ BitVec 32) (_ BitVec 32) V!30327 V!30327 (_ BitVec 32) Int) ListLongMap!11215)

(assert (=> b!911197 (= lt!410332 (contains!4632 (getCurrentListMap!2853 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911198 () Bool)

(declare-fun e!511056 () Bool)

(assert (=> b!911198 (= e!511056 tp_is_empty!19021)))

(declare-fun b!911199 () Bool)

(declare-fun res!614893 () Bool)

(assert (=> b!911199 (=> (not res!614893) (not e!511054))))

(assert (=> b!911199 (= res!614893 (and (= (size!26436 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26437 _keys!1386) (size!26436 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614894 () Bool)

(assert (=> start!78104 (=> (not res!614894) (not e!511054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78104 (= res!614894 (validMask!0 mask!1756))))

(assert (=> start!78104 e!511054))

(declare-fun e!511055 () Bool)

(declare-fun array_inv!20288 (array!54048) Bool)

(assert (=> start!78104 (and (array_inv!20288 _values!1152) e!511055)))

(assert (=> start!78104 tp!58080))

(assert (=> start!78104 true))

(assert (=> start!78104 tp_is_empty!19021))

(declare-fun array_inv!20289 (array!54050) Bool)

(assert (=> start!78104 (array_inv!20289 _keys!1386)))

(declare-fun mapNonEmpty!30253 () Bool)

(declare-fun mapRes!30253 () Bool)

(declare-fun tp!58081 () Bool)

(assert (=> mapNonEmpty!30253 (= mapRes!30253 (and tp!58081 e!511056))))

(declare-fun mapKey!30253 () (_ BitVec 32))

(declare-fun mapValue!30253 () ValueCell!9029)

(declare-fun mapRest!30253 () (Array (_ BitVec 32) ValueCell!9029))

(assert (=> mapNonEmpty!30253 (= (arr!25976 _values!1152) (store mapRest!30253 mapKey!30253 mapValue!30253))))

(declare-fun b!911200 () Bool)

(declare-fun res!614896 () Bool)

(assert (=> b!911200 (=> (not res!614896) (not e!511054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54050 (_ BitVec 32)) Bool)

(assert (=> b!911200 (= res!614896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30253 () Bool)

(assert (=> mapIsEmpty!30253 mapRes!30253))

(declare-fun b!911201 () Bool)

(assert (=> b!911201 (= e!511055 (and e!511058 mapRes!30253))))

(declare-fun condMapEmpty!30253 () Bool)

(declare-fun mapDefault!30253 () ValueCell!9029)

