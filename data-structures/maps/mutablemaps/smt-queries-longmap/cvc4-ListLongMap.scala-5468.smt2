; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72624 () Bool)

(assert start!72624)

(declare-fun b!842573 () Bool)

(declare-fun e!470037 () Bool)

(assert (=> b!842573 (= e!470037 false)))

(declare-fun lt!380982 () Bool)

(declare-datatypes ((array!47536 0))(
  ( (array!47537 (arr!22795 (Array (_ BitVec 32) (_ BitVec 64))) (size!23236 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47536)

(declare-datatypes ((List!16281 0))(
  ( (Nil!16278) (Cons!16277 (h!17408 (_ BitVec 64)) (t!22660 List!16281)) )
))
(declare-fun arrayNoDuplicates!0 (array!47536 (_ BitVec 32) List!16281) Bool)

(assert (=> b!842573 (= lt!380982 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16278))))

(declare-fun mapIsEmpty!25070 () Bool)

(declare-fun mapRes!25070 () Bool)

(assert (=> mapIsEmpty!25070 mapRes!25070))

(declare-fun b!842574 () Bool)

(declare-fun e!470038 () Bool)

(declare-fun tp_is_empty!15647 () Bool)

(assert (=> b!842574 (= e!470038 tp_is_empty!15647)))

(declare-fun b!842575 () Bool)

(declare-fun res!572765 () Bool)

(assert (=> b!842575 (=> (not res!572765) (not e!470037))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47536 (_ BitVec 32)) Bool)

(assert (=> b!842575 (= res!572765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842576 () Bool)

(declare-fun res!572763 () Bool)

(assert (=> b!842576 (=> (not res!572763) (not e!470037))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!25909 0))(
  ( (V!25910 (val!7871 Int)) )
))
(declare-datatypes ((ValueCell!7384 0))(
  ( (ValueCellFull!7384 (v!10292 V!25909)) (EmptyCell!7384) )
))
(declare-datatypes ((array!47538 0))(
  ( (array!47539 (arr!22796 (Array (_ BitVec 32) ValueCell!7384)) (size!23237 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47538)

(assert (=> b!842576 (= res!572763 (and (= (size!23237 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23236 _keys!868) (size!23237 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25070 () Bool)

(declare-fun tp!48389 () Bool)

(assert (=> mapNonEmpty!25070 (= mapRes!25070 (and tp!48389 e!470038))))

(declare-fun mapValue!25070 () ValueCell!7384)

(declare-fun mapRest!25070 () (Array (_ BitVec 32) ValueCell!7384))

(declare-fun mapKey!25070 () (_ BitVec 32))

(assert (=> mapNonEmpty!25070 (= (arr!22796 _values!688) (store mapRest!25070 mapKey!25070 mapValue!25070))))

(declare-fun b!842577 () Bool)

(declare-fun e!470036 () Bool)

(assert (=> b!842577 (= e!470036 tp_is_empty!15647)))

(declare-fun res!572766 () Bool)

(assert (=> start!72624 (=> (not res!572766) (not e!470037))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72624 (= res!572766 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23236 _keys!868))))))

(assert (=> start!72624 e!470037))

(assert (=> start!72624 true))

(declare-fun array_inv!18120 (array!47536) Bool)

(assert (=> start!72624 (array_inv!18120 _keys!868)))

(declare-fun e!470040 () Bool)

(declare-fun array_inv!18121 (array!47538) Bool)

(assert (=> start!72624 (and (array_inv!18121 _values!688) e!470040)))

(declare-fun b!842578 () Bool)

(assert (=> b!842578 (= e!470040 (and e!470036 mapRes!25070))))

(declare-fun condMapEmpty!25070 () Bool)

(declare-fun mapDefault!25070 () ValueCell!7384)

