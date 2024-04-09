; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72242 () Bool)

(assert start!72242)

(declare-fun b!836831 () Bool)

(declare-fun e!466999 () Bool)

(declare-fun tp_is_empty!15295 () Bool)

(assert (=> b!836831 (= e!466999 tp_is_empty!15295)))

(declare-fun mapIsEmpty!24533 () Bool)

(declare-fun mapRes!24533 () Bool)

(assert (=> mapIsEmpty!24533 mapRes!24533))

(declare-fun mapNonEmpty!24533 () Bool)

(declare-fun tp!47528 () Bool)

(declare-fun e!467001 () Bool)

(assert (=> mapNonEmpty!24533 (= mapRes!24533 (and tp!47528 e!467001))))

(declare-fun mapKey!24533 () (_ BitVec 32))

(declare-datatypes ((V!25441 0))(
  ( (V!25442 (val!7695 Int)) )
))
(declare-datatypes ((ValueCell!7208 0))(
  ( (ValueCellFull!7208 (v!10115 V!25441)) (EmptyCell!7208) )
))
(declare-fun mapRest!24533 () (Array (_ BitVec 32) ValueCell!7208))

(declare-datatypes ((array!46858 0))(
  ( (array!46859 (arr!22459 (Array (_ BitVec 32) ValueCell!7208)) (size!22900 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46858)

(declare-fun mapValue!24533 () ValueCell!7208)

(assert (=> mapNonEmpty!24533 (= (arr!22459 _values!688) (store mapRest!24533 mapKey!24533 mapValue!24533))))

(declare-fun b!836832 () Bool)

(assert (=> b!836832 (= e!467001 tp_is_empty!15295)))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun b!836833 () Bool)

(declare-datatypes ((array!46860 0))(
  ( (array!46861 (arr!22460 (Array (_ BitVec 32) (_ BitVec 64))) (size!22901 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46860)

(declare-fun e!467000 () Bool)

(assert (=> b!836833 (= e!467000 (and (= (size!22900 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22901 _keys!868) (size!22900 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011) (= (size!22901 _keys!868) (bvadd #b00000000000000000000000000000001 mask!1196)) (bvsgt #b00000000000000000000000000000000 (size!22901 _keys!868))))))

(declare-fun res!569295 () Bool)

(assert (=> start!72242 (=> (not res!569295) (not e!467000))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72242 (= res!569295 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22901 _keys!868))))))

(assert (=> start!72242 e!467000))

(assert (=> start!72242 true))

(declare-fun array_inv!17882 (array!46860) Bool)

(assert (=> start!72242 (array_inv!17882 _keys!868)))

(declare-fun e!467002 () Bool)

(declare-fun array_inv!17883 (array!46858) Bool)

(assert (=> start!72242 (and (array_inv!17883 _values!688) e!467002)))

(declare-fun b!836834 () Bool)

(declare-fun res!569296 () Bool)

(assert (=> b!836834 (=> (not res!569296) (not e!467000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!836834 (= res!569296 (validMask!0 mask!1196))))

(declare-fun b!836835 () Bool)

(assert (=> b!836835 (= e!467002 (and e!466999 mapRes!24533))))

(declare-fun condMapEmpty!24533 () Bool)

(declare-fun mapDefault!24533 () ValueCell!7208)

