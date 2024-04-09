; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72246 () Bool)

(assert start!72246)

(declare-fun res!569308 () Bool)

(declare-fun e!467029 () Bool)

(assert (=> start!72246 (=> (not res!569308) (not e!467029))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46866 0))(
  ( (array!46867 (arr!22463 (Array (_ BitVec 32) (_ BitVec 64))) (size!22904 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46866)

(assert (=> start!72246 (= res!569308 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22904 _keys!868))))))

(assert (=> start!72246 e!467029))

(assert (=> start!72246 true))

(declare-fun array_inv!17886 (array!46866) Bool)

(assert (=> start!72246 (array_inv!17886 _keys!868)))

(declare-datatypes ((V!25445 0))(
  ( (V!25446 (val!7697 Int)) )
))
(declare-datatypes ((ValueCell!7210 0))(
  ( (ValueCellFull!7210 (v!10117 V!25445)) (EmptyCell!7210) )
))
(declare-datatypes ((array!46868 0))(
  ( (array!46869 (arr!22464 (Array (_ BitVec 32) ValueCell!7210)) (size!22905 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46868)

(declare-fun e!467030 () Bool)

(declare-fun array_inv!17887 (array!46868) Bool)

(assert (=> start!72246 (and (array_inv!17887 _values!688) e!467030)))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun b!836861 () Bool)

(assert (=> b!836861 (= e!467029 (and (= (size!22905 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22904 _keys!868) (size!22905 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011) (= (size!22904 _keys!868) (bvadd #b00000000000000000000000000000001 mask!1196)) (bvsgt #b00000000000000000000000000000000 (size!22904 _keys!868))))))

(declare-fun mapIsEmpty!24539 () Bool)

(declare-fun mapRes!24539 () Bool)

(assert (=> mapIsEmpty!24539 mapRes!24539))

(declare-fun mapNonEmpty!24539 () Bool)

(declare-fun tp!47534 () Bool)

(declare-fun e!467032 () Bool)

(assert (=> mapNonEmpty!24539 (= mapRes!24539 (and tp!47534 e!467032))))

(declare-fun mapValue!24539 () ValueCell!7210)

(declare-fun mapRest!24539 () (Array (_ BitVec 32) ValueCell!7210))

(declare-fun mapKey!24539 () (_ BitVec 32))

(assert (=> mapNonEmpty!24539 (= (arr!22464 _values!688) (store mapRest!24539 mapKey!24539 mapValue!24539))))

(declare-fun b!836862 () Bool)

(declare-fun tp_is_empty!15299 () Bool)

(assert (=> b!836862 (= e!467032 tp_is_empty!15299)))

(declare-fun b!836863 () Bool)

(declare-fun e!467031 () Bool)

(assert (=> b!836863 (= e!467031 tp_is_empty!15299)))

(declare-fun b!836864 () Bool)

(assert (=> b!836864 (= e!467030 (and e!467031 mapRes!24539))))

(declare-fun condMapEmpty!24539 () Bool)

(declare-fun mapDefault!24539 () ValueCell!7210)

