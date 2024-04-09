; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72630 () Bool)

(assert start!72630)

(declare-fun mapNonEmpty!25079 () Bool)

(declare-fun mapRes!25079 () Bool)

(declare-fun tp!48398 () Bool)

(declare-fun e!470085 () Bool)

(assert (=> mapNonEmpty!25079 (= mapRes!25079 (and tp!48398 e!470085))))

(declare-datatypes ((V!25917 0))(
  ( (V!25918 (val!7874 Int)) )
))
(declare-datatypes ((ValueCell!7387 0))(
  ( (ValueCellFull!7387 (v!10295 V!25917)) (EmptyCell!7387) )
))
(declare-fun mapValue!25079 () ValueCell!7387)

(declare-fun mapKey!25079 () (_ BitVec 32))

(declare-datatypes ((array!47548 0))(
  ( (array!47549 (arr!22801 (Array (_ BitVec 32) ValueCell!7387)) (size!23242 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47548)

(declare-fun mapRest!25079 () (Array (_ BitVec 32) ValueCell!7387))

(assert (=> mapNonEmpty!25079 (= (arr!22801 _values!688) (store mapRest!25079 mapKey!25079 mapValue!25079))))

(declare-fun b!842636 () Bool)

(declare-fun res!572802 () Bool)

(declare-fun e!470083 () Bool)

(assert (=> b!842636 (=> (not res!572802) (not e!470083))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47550 0))(
  ( (array!47551 (arr!22802 (Array (_ BitVec 32) (_ BitVec 64))) (size!23243 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47550)

(assert (=> b!842636 (= res!572802 (and (= (size!23242 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23243 _keys!868) (size!23242 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842637 () Bool)

(declare-fun e!470084 () Bool)

(declare-fun e!470082 () Bool)

(assert (=> b!842637 (= e!470084 (and e!470082 mapRes!25079))))

(declare-fun condMapEmpty!25079 () Bool)

(declare-fun mapDefault!25079 () ValueCell!7387)

