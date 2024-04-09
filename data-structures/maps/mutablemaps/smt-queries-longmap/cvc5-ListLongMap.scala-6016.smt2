; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77992 () Bool)

(assert start!77992)

(declare-fun b_free!16507 () Bool)

(declare-fun b_next!16507 () Bool)

(assert (=> start!77992 (= b_free!16507 (not b_next!16507))))

(declare-fun tp!57790 () Bool)

(declare-fun b_and!27095 () Bool)

(assert (=> start!77992 (= tp!57790 b_and!27095)))

(declare-fun mapNonEmpty!30106 () Bool)

(declare-fun mapRes!30106 () Bool)

(declare-fun tp!57789 () Bool)

(declare-fun e!510266 () Bool)

(assert (=> mapNonEmpty!30106 (= mapRes!30106 (and tp!57789 e!510266))))

(declare-datatypes ((V!30199 0))(
  ( (V!30200 (val!9513 Int)) )
))
(declare-datatypes ((ValueCell!8981 0))(
  ( (ValueCellFull!8981 (v!12021 V!30199)) (EmptyCell!8981) )
))
(declare-datatypes ((array!53864 0))(
  ( (array!53865 (arr!25885 (Array (_ BitVec 32) ValueCell!8981)) (size!26345 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53864)

(declare-fun mapValue!30106 () ValueCell!8981)

(declare-fun mapKey!30106 () (_ BitVec 32))

(declare-fun mapRest!30106 () (Array (_ BitVec 32) ValueCell!8981))

(assert (=> mapNonEmpty!30106 (= (arr!25885 _values!1152) (store mapRest!30106 mapKey!30106 mapValue!30106))))

(declare-fun mapIsEmpty!30106 () Bool)

(assert (=> mapIsEmpty!30106 mapRes!30106))

(declare-fun b!910062 () Bool)

(declare-fun res!614256 () Bool)

(declare-fun e!510264 () Bool)

(assert (=> b!910062 (=> (not res!614256) (not e!510264))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53866 0))(
  ( (array!53867 (arr!25886 (Array (_ BitVec 32) (_ BitVec 64))) (size!26346 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53866)

(assert (=> b!910062 (= res!614256 (and (= (size!26345 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26346 _keys!1386) (size!26345 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910063 () Bool)

(declare-fun tp_is_empty!18925 () Bool)

(assert (=> b!910063 (= e!510266 tp_is_empty!18925)))

(declare-fun b!910064 () Bool)

(declare-fun res!614255 () Bool)

(assert (=> b!910064 (=> (not res!614255) (not e!510264))))

(declare-datatypes ((List!18287 0))(
  ( (Nil!18284) (Cons!18283 (h!19429 (_ BitVec 64)) (t!25878 List!18287)) )
))
(declare-fun arrayNoDuplicates!0 (array!53866 (_ BitVec 32) List!18287) Bool)

(assert (=> b!910064 (= res!614255 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18284))))

(declare-fun b!910065 () Bool)

(declare-fun e!510265 () Bool)

(declare-fun e!510262 () Bool)

(assert (=> b!910065 (= e!510265 (and e!510262 mapRes!30106))))

(declare-fun condMapEmpty!30106 () Bool)

(declare-fun mapDefault!30106 () ValueCell!8981)

