; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72684 () Bool)

(assert start!72684)

(declare-fun b!843203 () Bool)

(declare-fun res!573123 () Bool)

(declare-fun e!470486 () Bool)

(assert (=> b!843203 (=> (not res!573123) (not e!470486))))

(declare-datatypes ((array!47648 0))(
  ( (array!47649 (arr!22851 (Array (_ BitVec 32) (_ BitVec 64))) (size!23292 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47648)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47648 (_ BitVec 32)) Bool)

(assert (=> b!843203 (= res!573123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!573124 () Bool)

(assert (=> start!72684 (=> (not res!573124) (not e!470486))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72684 (= res!573124 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23292 _keys!868))))))

(assert (=> start!72684 e!470486))

(assert (=> start!72684 true))

(declare-fun array_inv!18164 (array!47648) Bool)

(assert (=> start!72684 (array_inv!18164 _keys!868)))

(declare-datatypes ((V!25989 0))(
  ( (V!25990 (val!7901 Int)) )
))
(declare-datatypes ((ValueCell!7414 0))(
  ( (ValueCellFull!7414 (v!10322 V!25989)) (EmptyCell!7414) )
))
(declare-datatypes ((array!47650 0))(
  ( (array!47651 (arr!22852 (Array (_ BitVec 32) ValueCell!7414)) (size!23293 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47650)

(declare-fun e!470490 () Bool)

(declare-fun array_inv!18165 (array!47650) Bool)

(assert (=> start!72684 (and (array_inv!18165 _values!688) e!470490)))

(declare-fun b!843204 () Bool)

(declare-fun res!573126 () Bool)

(assert (=> b!843204 (=> (not res!573126) (not e!470486))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843204 (= res!573126 (and (= (size!23293 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23292 _keys!868) (size!23293 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25160 () Bool)

(declare-fun mapRes!25160 () Bool)

(declare-fun tp!48479 () Bool)

(declare-fun e!470489 () Bool)

(assert (=> mapNonEmpty!25160 (= mapRes!25160 (and tp!48479 e!470489))))

(declare-fun mapKey!25160 () (_ BitVec 32))

(declare-fun mapValue!25160 () ValueCell!7414)

(declare-fun mapRest!25160 () (Array (_ BitVec 32) ValueCell!7414))

(assert (=> mapNonEmpty!25160 (= (arr!22852 _values!688) (store mapRest!25160 mapKey!25160 mapValue!25160))))

(declare-fun b!843205 () Bool)

(declare-fun e!470488 () Bool)

(declare-fun tp_is_empty!15707 () Bool)

(assert (=> b!843205 (= e!470488 tp_is_empty!15707)))

(declare-fun b!843206 () Bool)

(declare-fun res!573125 () Bool)

(assert (=> b!843206 (=> (not res!573125) (not e!470486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843206 (= res!573125 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25160 () Bool)

(assert (=> mapIsEmpty!25160 mapRes!25160))

(declare-fun b!843207 () Bool)

(assert (=> b!843207 (= e!470489 tp_is_empty!15707)))

(declare-fun b!843208 () Bool)

(assert (=> b!843208 (= e!470486 false)))

(declare-fun lt!381072 () Bool)

(declare-datatypes ((List!16300 0))(
  ( (Nil!16297) (Cons!16296 (h!17427 (_ BitVec 64)) (t!22679 List!16300)) )
))
(declare-fun arrayNoDuplicates!0 (array!47648 (_ BitVec 32) List!16300) Bool)

(assert (=> b!843208 (= lt!381072 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16297))))

(declare-fun b!843209 () Bool)

(assert (=> b!843209 (= e!470490 (and e!470488 mapRes!25160))))

(declare-fun condMapEmpty!25160 () Bool)

(declare-fun mapDefault!25160 () ValueCell!7414)

