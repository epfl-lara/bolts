; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72768 () Bool)

(assert start!72768)

(declare-fun b!844085 () Bool)

(declare-fun e!471116 () Bool)

(assert (=> b!844085 (= e!471116 false)))

(declare-fun lt!381198 () Bool)

(declare-datatypes ((array!47800 0))(
  ( (array!47801 (arr!22927 (Array (_ BitVec 32) (_ BitVec 64))) (size!23368 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47800)

(declare-datatypes ((List!16333 0))(
  ( (Nil!16330) (Cons!16329 (h!17460 (_ BitVec 64)) (t!22712 List!16333)) )
))
(declare-fun arrayNoDuplicates!0 (array!47800 (_ BitVec 32) List!16333) Bool)

(assert (=> b!844085 (= lt!381198 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16330))))

(declare-fun b!844086 () Bool)

(declare-fun res!573629 () Bool)

(assert (=> b!844086 (=> (not res!573629) (not e!471116))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844086 (= res!573629 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25286 () Bool)

(declare-fun mapRes!25286 () Bool)

(declare-fun tp!48605 () Bool)

(declare-fun e!471119 () Bool)

(assert (=> mapNonEmpty!25286 (= mapRes!25286 (and tp!48605 e!471119))))

(declare-datatypes ((V!26101 0))(
  ( (V!26102 (val!7943 Int)) )
))
(declare-datatypes ((ValueCell!7456 0))(
  ( (ValueCellFull!7456 (v!10364 V!26101)) (EmptyCell!7456) )
))
(declare-fun mapRest!25286 () (Array (_ BitVec 32) ValueCell!7456))

(declare-fun mapKey!25286 () (_ BitVec 32))

(declare-fun mapValue!25286 () ValueCell!7456)

(declare-datatypes ((array!47802 0))(
  ( (array!47803 (arr!22928 (Array (_ BitVec 32) ValueCell!7456)) (size!23369 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47802)

(assert (=> mapNonEmpty!25286 (= (arr!22928 _values!688) (store mapRest!25286 mapKey!25286 mapValue!25286))))

(declare-fun res!573627 () Bool)

(assert (=> start!72768 (=> (not res!573627) (not e!471116))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72768 (= res!573627 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23368 _keys!868))))))

(assert (=> start!72768 e!471116))

(assert (=> start!72768 true))

(declare-fun array_inv!18214 (array!47800) Bool)

(assert (=> start!72768 (array_inv!18214 _keys!868)))

(declare-fun e!471118 () Bool)

(declare-fun array_inv!18215 (array!47802) Bool)

(assert (=> start!72768 (and (array_inv!18215 _values!688) e!471118)))

(declare-fun b!844087 () Bool)

(declare-fun tp_is_empty!15791 () Bool)

(assert (=> b!844087 (= e!471119 tp_is_empty!15791)))

(declare-fun mapIsEmpty!25286 () Bool)

(assert (=> mapIsEmpty!25286 mapRes!25286))

(declare-fun b!844088 () Bool)

(declare-fun e!471120 () Bool)

(assert (=> b!844088 (= e!471120 tp_is_empty!15791)))

(declare-fun b!844089 () Bool)

(declare-fun res!573630 () Bool)

(assert (=> b!844089 (=> (not res!573630) (not e!471116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47800 (_ BitVec 32)) Bool)

(assert (=> b!844089 (= res!573630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844090 () Bool)

(declare-fun res!573628 () Bool)

(assert (=> b!844090 (=> (not res!573628) (not e!471116))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844090 (= res!573628 (and (= (size!23369 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23368 _keys!868) (size!23369 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844091 () Bool)

(assert (=> b!844091 (= e!471118 (and e!471120 mapRes!25286))))

(declare-fun condMapEmpty!25286 () Bool)

(declare-fun mapDefault!25286 () ValueCell!7456)

