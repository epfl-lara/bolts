; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72342 () Bool)

(assert start!72342)

(declare-fun mapIsEmpty!24647 () Bool)

(declare-fun mapRes!24647 () Bool)

(assert (=> mapIsEmpty!24647 mapRes!24647))

(declare-fun b!837668 () Bool)

(declare-fun e!467598 () Bool)

(declare-fun tp_is_empty!15365 () Bool)

(assert (=> b!837668 (= e!467598 tp_is_empty!15365)))

(declare-fun b!837669 () Bool)

(declare-fun res!569775 () Bool)

(declare-fun e!467601 () Bool)

(assert (=> b!837669 (=> (not res!569775) (not e!467601))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!46990 0))(
  ( (array!46991 (arr!22522 (Array (_ BitVec 32) (_ BitVec 64))) (size!22963 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46990)

(declare-datatypes ((V!25533 0))(
  ( (V!25534 (val!7730 Int)) )
))
(declare-datatypes ((ValueCell!7243 0))(
  ( (ValueCellFull!7243 (v!10151 V!25533)) (EmptyCell!7243) )
))
(declare-datatypes ((array!46992 0))(
  ( (array!46993 (arr!22523 (Array (_ BitVec 32) ValueCell!7243)) (size!22964 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46992)

(assert (=> b!837669 (= res!569775 (and (= (size!22964 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22963 _keys!868) (size!22964 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837670 () Bool)

(assert (=> b!837670 (= e!467601 false)))

(declare-fun lt!380559 () Bool)

(declare-datatypes ((List!16093 0))(
  ( (Nil!16090) (Cons!16089 (h!17220 (_ BitVec 64)) (t!22472 List!16093)) )
))
(declare-fun arrayNoDuplicates!0 (array!46990 (_ BitVec 32) List!16093) Bool)

(assert (=> b!837670 (= lt!380559 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16090))))

(declare-fun b!837671 () Bool)

(declare-fun e!467599 () Bool)

(declare-fun e!467597 () Bool)

(assert (=> b!837671 (= e!467599 (and e!467597 mapRes!24647))))

(declare-fun condMapEmpty!24647 () Bool)

(declare-fun mapDefault!24647 () ValueCell!7243)

