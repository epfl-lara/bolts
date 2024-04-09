; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72350 () Bool)

(assert start!72350)

(declare-fun b!837752 () Bool)

(declare-fun res!569826 () Bool)

(declare-fun e!467661 () Bool)

(assert (=> b!837752 (=> (not res!569826) (not e!467661))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47006 0))(
  ( (array!47007 (arr!22530 (Array (_ BitVec 32) (_ BitVec 64))) (size!22971 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47006)

(declare-datatypes ((V!25545 0))(
  ( (V!25546 (val!7734 Int)) )
))
(declare-datatypes ((ValueCell!7247 0))(
  ( (ValueCellFull!7247 (v!10155 V!25545)) (EmptyCell!7247) )
))
(declare-datatypes ((array!47008 0))(
  ( (array!47009 (arr!22531 (Array (_ BitVec 32) ValueCell!7247)) (size!22972 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47008)

(assert (=> b!837752 (= res!569826 (and (= (size!22972 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22971 _keys!868) (size!22972 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837753 () Bool)

(declare-fun e!467657 () Bool)

(declare-fun tp_is_empty!15373 () Bool)

(assert (=> b!837753 (= e!467657 tp_is_empty!15373)))

(declare-fun b!837754 () Bool)

(declare-fun e!467659 () Bool)

(declare-fun e!467660 () Bool)

(declare-fun mapRes!24659 () Bool)

(assert (=> b!837754 (= e!467659 (and e!467660 mapRes!24659))))

(declare-fun condMapEmpty!24659 () Bool)

(declare-fun mapDefault!24659 () ValueCell!7247)

