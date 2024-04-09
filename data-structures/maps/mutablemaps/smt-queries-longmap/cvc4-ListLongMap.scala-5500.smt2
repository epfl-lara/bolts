; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72816 () Bool)

(assert start!72816)

(declare-fun b!844589 () Bool)

(declare-fun res!573915 () Bool)

(declare-fun e!471478 () Bool)

(assert (=> b!844589 (=> (not res!573915) (not e!471478))))

(declare-datatypes ((array!47892 0))(
  ( (array!47893 (arr!22973 (Array (_ BitVec 32) (_ BitVec 64))) (size!23414 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47892)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47892 (_ BitVec 32)) Bool)

(assert (=> b!844589 (= res!573915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844590 () Bool)

(declare-fun e!471477 () Bool)

(declare-fun tp_is_empty!15839 () Bool)

(assert (=> b!844590 (= e!471477 tp_is_empty!15839)))

(declare-fun mapNonEmpty!25358 () Bool)

(declare-fun mapRes!25358 () Bool)

(declare-fun tp!48677 () Bool)

(declare-fun e!471479 () Bool)

(assert (=> mapNonEmpty!25358 (= mapRes!25358 (and tp!48677 e!471479))))

(declare-datatypes ((V!26165 0))(
  ( (V!26166 (val!7967 Int)) )
))
(declare-datatypes ((ValueCell!7480 0))(
  ( (ValueCellFull!7480 (v!10388 V!26165)) (EmptyCell!7480) )
))
(declare-fun mapRest!25358 () (Array (_ BitVec 32) ValueCell!7480))

(declare-fun mapKey!25358 () (_ BitVec 32))

(declare-fun mapValue!25358 () ValueCell!7480)

(declare-datatypes ((array!47894 0))(
  ( (array!47895 (arr!22974 (Array (_ BitVec 32) ValueCell!7480)) (size!23415 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47894)

(assert (=> mapNonEmpty!25358 (= (arr!22974 _values!688) (store mapRest!25358 mapKey!25358 mapValue!25358))))

(declare-fun b!844591 () Bool)

(assert (=> b!844591 (= e!471478 false)))

(declare-fun lt!381270 () Bool)

(declare-datatypes ((List!16349 0))(
  ( (Nil!16346) (Cons!16345 (h!17476 (_ BitVec 64)) (t!22728 List!16349)) )
))
(declare-fun arrayNoDuplicates!0 (array!47892 (_ BitVec 32) List!16349) Bool)

(assert (=> b!844591 (= lt!381270 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16346))))

(declare-fun b!844592 () Bool)

(declare-fun res!573916 () Bool)

(assert (=> b!844592 (=> (not res!573916) (not e!471478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844592 (= res!573916 (validMask!0 mask!1196))))

(declare-fun b!844593 () Bool)

(declare-fun res!573918 () Bool)

(assert (=> b!844593 (=> (not res!573918) (not e!471478))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844593 (= res!573918 (and (= (size!23415 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23414 _keys!868) (size!23415 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844594 () Bool)

(assert (=> b!844594 (= e!471479 tp_is_empty!15839)))

(declare-fun mapIsEmpty!25358 () Bool)

(assert (=> mapIsEmpty!25358 mapRes!25358))

(declare-fun res!573917 () Bool)

(assert (=> start!72816 (=> (not res!573917) (not e!471478))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72816 (= res!573917 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23414 _keys!868))))))

(assert (=> start!72816 e!471478))

(assert (=> start!72816 true))

(declare-fun array_inv!18248 (array!47892) Bool)

(assert (=> start!72816 (array_inv!18248 _keys!868)))

(declare-fun e!471476 () Bool)

(declare-fun array_inv!18249 (array!47894) Bool)

(assert (=> start!72816 (and (array_inv!18249 _values!688) e!471476)))

(declare-fun b!844595 () Bool)

(assert (=> b!844595 (= e!471476 (and e!471477 mapRes!25358))))

(declare-fun condMapEmpty!25358 () Bool)

(declare-fun mapDefault!25358 () ValueCell!7480)

