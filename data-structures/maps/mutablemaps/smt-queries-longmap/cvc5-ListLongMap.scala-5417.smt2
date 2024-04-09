; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72314 () Bool)

(assert start!72314)

(declare-fun b!837374 () Bool)

(declare-fun res!569609 () Bool)

(declare-fun e!467388 () Bool)

(assert (=> b!837374 (=> (not res!569609) (not e!467388))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25497 0))(
  ( (V!25498 (val!7716 Int)) )
))
(declare-datatypes ((ValueCell!7229 0))(
  ( (ValueCellFull!7229 (v!10137 V!25497)) (EmptyCell!7229) )
))
(declare-datatypes ((array!46934 0))(
  ( (array!46935 (arr!22494 (Array (_ BitVec 32) ValueCell!7229)) (size!22935 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46934)

(declare-datatypes ((array!46936 0))(
  ( (array!46937 (arr!22495 (Array (_ BitVec 32) (_ BitVec 64))) (size!22936 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46936)

(assert (=> b!837374 (= res!569609 (and (= (size!22935 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22936 _keys!868) (size!22935 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837375 () Bool)

(declare-fun res!569607 () Bool)

(assert (=> b!837375 (=> (not res!569607) (not e!467388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837375 (= res!569607 (validMask!0 mask!1196))))

(declare-fun b!837377 () Bool)

(declare-fun e!467390 () Bool)

(declare-fun tp_is_empty!15337 () Bool)

(assert (=> b!837377 (= e!467390 tp_is_empty!15337)))

(declare-fun b!837378 () Bool)

(assert (=> b!837378 (= e!467388 false)))

(declare-fun lt!380517 () Bool)

(declare-datatypes ((List!16082 0))(
  ( (Nil!16079) (Cons!16078 (h!17209 (_ BitVec 64)) (t!22461 List!16082)) )
))
(declare-fun arrayNoDuplicates!0 (array!46936 (_ BitVec 32) List!16082) Bool)

(assert (=> b!837378 (= lt!380517 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16079))))

(declare-fun mapNonEmpty!24605 () Bool)

(declare-fun mapRes!24605 () Bool)

(declare-fun tp!47600 () Bool)

(declare-fun e!467389 () Bool)

(assert (=> mapNonEmpty!24605 (= mapRes!24605 (and tp!47600 e!467389))))

(declare-fun mapRest!24605 () (Array (_ BitVec 32) ValueCell!7229))

(declare-fun mapValue!24605 () ValueCell!7229)

(declare-fun mapKey!24605 () (_ BitVec 32))

(assert (=> mapNonEmpty!24605 (= (arr!22494 _values!688) (store mapRest!24605 mapKey!24605 mapValue!24605))))

(declare-fun b!837379 () Bool)

(assert (=> b!837379 (= e!467389 tp_is_empty!15337)))

(declare-fun mapIsEmpty!24605 () Bool)

(assert (=> mapIsEmpty!24605 mapRes!24605))

(declare-fun b!837380 () Bool)

(declare-fun e!467387 () Bool)

(assert (=> b!837380 (= e!467387 (and e!467390 mapRes!24605))))

(declare-fun condMapEmpty!24605 () Bool)

(declare-fun mapDefault!24605 () ValueCell!7229)

