; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72606 () Bool)

(assert start!72606)

(declare-fun mapNonEmpty!25043 () Bool)

(declare-fun mapRes!25043 () Bool)

(declare-fun tp!48362 () Bool)

(declare-fun e!469905 () Bool)

(assert (=> mapNonEmpty!25043 (= mapRes!25043 (and tp!48362 e!469905))))

(declare-datatypes ((V!25885 0))(
  ( (V!25886 (val!7862 Int)) )
))
(declare-datatypes ((ValueCell!7375 0))(
  ( (ValueCellFull!7375 (v!10283 V!25885)) (EmptyCell!7375) )
))
(declare-fun mapRest!25043 () (Array (_ BitVec 32) ValueCell!7375))

(declare-fun mapKey!25043 () (_ BitVec 32))

(declare-fun mapValue!25043 () ValueCell!7375)

(declare-datatypes ((array!47500 0))(
  ( (array!47501 (arr!22777 (Array (_ BitVec 32) ValueCell!7375)) (size!23218 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47500)

(assert (=> mapNonEmpty!25043 (= (arr!22777 _values!688) (store mapRest!25043 mapKey!25043 mapValue!25043))))

(declare-fun b!842384 () Bool)

(declare-fun res!572658 () Bool)

(declare-fun e!469904 () Bool)

(assert (=> b!842384 (=> (not res!572658) (not e!469904))))

(declare-datatypes ((array!47502 0))(
  ( (array!47503 (arr!22778 (Array (_ BitVec 32) (_ BitVec 64))) (size!23219 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47502)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47502 (_ BitVec 32)) Bool)

(assert (=> b!842384 (= res!572658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842385 () Bool)

(declare-fun res!572655 () Bool)

(assert (=> b!842385 (=> (not res!572655) (not e!469904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842385 (= res!572655 (validMask!0 mask!1196))))

(declare-fun res!572657 () Bool)

(assert (=> start!72606 (=> (not res!572657) (not e!469904))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72606 (= res!572657 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23219 _keys!868))))))

(assert (=> start!72606 e!469904))

(assert (=> start!72606 true))

(declare-fun array_inv!18106 (array!47502) Bool)

(assert (=> start!72606 (array_inv!18106 _keys!868)))

(declare-fun e!469902 () Bool)

(declare-fun array_inv!18107 (array!47500) Bool)

(assert (=> start!72606 (and (array_inv!18107 _values!688) e!469902)))

(declare-fun b!842386 () Bool)

(declare-fun res!572656 () Bool)

(assert (=> b!842386 (=> (not res!572656) (not e!469904))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842386 (= res!572656 (and (= (size!23218 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23219 _keys!868) (size!23218 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842387 () Bool)

(declare-fun e!469903 () Bool)

(declare-fun tp_is_empty!15629 () Bool)

(assert (=> b!842387 (= e!469903 tp_is_empty!15629)))

(declare-fun b!842388 () Bool)

(assert (=> b!842388 (= e!469905 tp_is_empty!15629)))

(declare-fun b!842389 () Bool)

(assert (=> b!842389 (= e!469902 (and e!469903 mapRes!25043))))

(declare-fun condMapEmpty!25043 () Bool)

(declare-fun mapDefault!25043 () ValueCell!7375)

