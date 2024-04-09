; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72770 () Bool)

(assert start!72770)

(declare-fun b!844106 () Bool)

(declare-fun e!471131 () Bool)

(declare-fun tp_is_empty!15793 () Bool)

(assert (=> b!844106 (= e!471131 tp_is_empty!15793)))

(declare-fun mapNonEmpty!25289 () Bool)

(declare-fun mapRes!25289 () Bool)

(declare-fun tp!48608 () Bool)

(assert (=> mapNonEmpty!25289 (= mapRes!25289 (and tp!48608 e!471131))))

(declare-datatypes ((V!26105 0))(
  ( (V!26106 (val!7944 Int)) )
))
(declare-datatypes ((ValueCell!7457 0))(
  ( (ValueCellFull!7457 (v!10365 V!26105)) (EmptyCell!7457) )
))
(declare-fun mapValue!25289 () ValueCell!7457)

(declare-fun mapKey!25289 () (_ BitVec 32))

(declare-datatypes ((array!47804 0))(
  ( (array!47805 (arr!22929 (Array (_ BitVec 32) ValueCell!7457)) (size!23370 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47804)

(declare-fun mapRest!25289 () (Array (_ BitVec 32) ValueCell!7457))

(assert (=> mapNonEmpty!25289 (= (arr!22929 _values!688) (store mapRest!25289 mapKey!25289 mapValue!25289))))

(declare-fun res!573641 () Bool)

(declare-fun e!471133 () Bool)

(assert (=> start!72770 (=> (not res!573641) (not e!471133))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47806 0))(
  ( (array!47807 (arr!22930 (Array (_ BitVec 32) (_ BitVec 64))) (size!23371 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47806)

(assert (=> start!72770 (= res!573641 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23371 _keys!868))))))

(assert (=> start!72770 e!471133))

(assert (=> start!72770 true))

(declare-fun array_inv!18216 (array!47806) Bool)

(assert (=> start!72770 (array_inv!18216 _keys!868)))

(declare-fun e!471132 () Bool)

(declare-fun array_inv!18217 (array!47804) Bool)

(assert (=> start!72770 (and (array_inv!18217 _values!688) e!471132)))

(declare-fun b!844107 () Bool)

(declare-fun e!471134 () Bool)

(assert (=> b!844107 (= e!471134 tp_is_empty!15793)))

(declare-fun b!844108 () Bool)

(declare-fun res!573639 () Bool)

(assert (=> b!844108 (=> (not res!573639) (not e!471133))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!844108 (= res!573639 (and (= (size!23370 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23371 _keys!868) (size!23370 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844109 () Bool)

(declare-fun res!573640 () Bool)

(assert (=> b!844109 (=> (not res!573640) (not e!471133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844109 (= res!573640 (validMask!0 mask!1196))))

(declare-fun b!844110 () Bool)

(declare-fun res!573642 () Bool)

(assert (=> b!844110 (=> (not res!573642) (not e!471133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47806 (_ BitVec 32)) Bool)

(assert (=> b!844110 (= res!573642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844111 () Bool)

(assert (=> b!844111 (= e!471132 (and e!471134 mapRes!25289))))

(declare-fun condMapEmpty!25289 () Bool)

(declare-fun mapDefault!25289 () ValueCell!7457)

