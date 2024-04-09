; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39756 () Bool)

(assert start!39756)

(declare-fun b_free!10015 () Bool)

(declare-fun b_next!10015 () Bool)

(assert (=> start!39756 (= b_free!10015 (not b_next!10015))))

(declare-fun tp!35573 () Bool)

(declare-fun b_and!17707 () Bool)

(assert (=> start!39756 (= tp!35573 b_and!17707)))

(declare-fun b!427637 () Bool)

(declare-fun e!253519 () Bool)

(declare-fun e!253517 () Bool)

(assert (=> b!427637 (= e!253519 e!253517)))

(declare-fun res!250984 () Bool)

(assert (=> b!427637 (=> (not res!250984) (not e!253517))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427637 (= res!250984 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15995 0))(
  ( (V!15996 (val!5628 Int)) )
))
(declare-datatypes ((tuple2!7338 0))(
  ( (tuple2!7339 (_1!3679 (_ BitVec 64)) (_2!3679 V!15995)) )
))
(declare-datatypes ((List!7388 0))(
  ( (Nil!7385) (Cons!7384 (h!8240 tuple2!7338) (t!12860 List!7388)) )
))
(declare-datatypes ((ListLongMap!6265 0))(
  ( (ListLongMap!6266 (toList!3148 List!7388)) )
))
(declare-fun lt!195435 () ListLongMap!6265)

(declare-fun minValue!515 () V!15995)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5240 0))(
  ( (ValueCellFull!5240 (v!7871 V!15995)) (EmptyCell!5240) )
))
(declare-datatypes ((array!26153 0))(
  ( (array!26154 (arr!12523 (Array (_ BitVec 32) ValueCell!5240)) (size!12875 (_ BitVec 32))) )
))
(declare-fun lt!195434 () array!26153)

(declare-fun zeroValue!515 () V!15995)

(declare-datatypes ((array!26155 0))(
  ( (array!26156 (arr!12524 (Array (_ BitVec 32) (_ BitVec 64))) (size!12876 (_ BitVec 32))) )
))
(declare-fun lt!195429 () array!26155)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1348 (array!26155 array!26153 (_ BitVec 32) (_ BitVec 32) V!15995 V!15995 (_ BitVec 32) Int) ListLongMap!6265)

(assert (=> b!427637 (= lt!195435 (getCurrentListMapNoExtraKeys!1348 lt!195429 lt!195434 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15995)

(declare-fun _values!549 () array!26153)

(assert (=> b!427637 (= lt!195434 (array!26154 (store (arr!12523 _values!549) i!563 (ValueCellFull!5240 v!412)) (size!12875 _values!549)))))

(declare-fun lt!195428 () ListLongMap!6265)

(declare-fun _keys!709 () array!26155)

(assert (=> b!427637 (= lt!195428 (getCurrentListMapNoExtraKeys!1348 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18372 () Bool)

(declare-fun mapRes!18372 () Bool)

(assert (=> mapIsEmpty!18372 mapRes!18372))

(declare-fun b!427638 () Bool)

(declare-fun res!250977 () Bool)

(declare-fun e!253518 () Bool)

(assert (=> b!427638 (=> (not res!250977) (not e!253518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427638 (= res!250977 (validMask!0 mask!1025))))

(declare-fun b!427639 () Bool)

(declare-fun res!250981 () Bool)

(assert (=> b!427639 (=> (not res!250981) (not e!253518))))

(declare-datatypes ((List!7389 0))(
  ( (Nil!7386) (Cons!7385 (h!8241 (_ BitVec 64)) (t!12861 List!7389)) )
))
(declare-fun arrayNoDuplicates!0 (array!26155 (_ BitVec 32) List!7389) Bool)

(assert (=> b!427639 (= res!250981 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7386))))

(declare-fun b!427640 () Bool)

(declare-fun res!250983 () Bool)

(assert (=> b!427640 (=> (not res!250983) (not e!253518))))

(assert (=> b!427640 (= res!250983 (or (= (select (arr!12524 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12524 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427641 () Bool)

(declare-fun res!250982 () Bool)

(assert (=> b!427641 (=> (not res!250982) (not e!253519))))

(assert (=> b!427641 (= res!250982 (arrayNoDuplicates!0 lt!195429 #b00000000000000000000000000000000 Nil!7386))))

(declare-fun b!427642 () Bool)

(declare-fun e!253516 () Bool)

(declare-fun tp_is_empty!11167 () Bool)

(assert (=> b!427642 (= e!253516 tp_is_empty!11167)))

(declare-fun b!427643 () Bool)

(declare-fun res!250989 () Bool)

(assert (=> b!427643 (=> (not res!250989) (not e!253518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26155 (_ BitVec 32)) Bool)

(assert (=> b!427643 (= res!250989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427644 () Bool)

(declare-fun res!250976 () Bool)

(assert (=> b!427644 (=> (not res!250976) (not e!253518))))

(assert (=> b!427644 (= res!250976 (and (= (size!12875 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12876 _keys!709) (size!12875 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427645 () Bool)

(declare-fun res!250979 () Bool)

(assert (=> b!427645 (=> (not res!250979) (not e!253518))))

(assert (=> b!427645 (= res!250979 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12876 _keys!709))))))

(declare-fun res!250987 () Bool)

(assert (=> start!39756 (=> (not res!250987) (not e!253518))))

(assert (=> start!39756 (= res!250987 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12876 _keys!709))))))

(assert (=> start!39756 e!253518))

(assert (=> start!39756 tp_is_empty!11167))

(assert (=> start!39756 tp!35573))

(assert (=> start!39756 true))

(declare-fun e!253521 () Bool)

(declare-fun array_inv!9112 (array!26153) Bool)

(assert (=> start!39756 (and (array_inv!9112 _values!549) e!253521)))

(declare-fun array_inv!9113 (array!26155) Bool)

(assert (=> start!39756 (array_inv!9113 _keys!709)))

(declare-fun b!427636 () Bool)

(declare-fun res!250986 () Bool)

(assert (=> b!427636 (=> (not res!250986) (not e!253518))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427636 (= res!250986 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!427646 () Bool)

(assert (=> b!427646 (= e!253518 e!253519)))

(declare-fun res!250988 () Bool)

(assert (=> b!427646 (=> (not res!250988) (not e!253519))))

(assert (=> b!427646 (= res!250988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195429 mask!1025))))

(assert (=> b!427646 (= lt!195429 (array!26156 (store (arr!12524 _keys!709) i!563 k!794) (size!12876 _keys!709)))))

(declare-fun b!427647 () Bool)

(declare-fun e!253515 () Bool)

(assert (=> b!427647 (= e!253517 (not e!253515))))

(declare-fun res!250978 () Bool)

(assert (=> b!427647 (=> res!250978 e!253515)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427647 (= res!250978 (not (validKeyInArray!0 (select (arr!12524 _keys!709) from!863))))))

(declare-fun lt!195432 () ListLongMap!6265)

(declare-fun lt!195430 () ListLongMap!6265)

(assert (=> b!427647 (= lt!195432 lt!195430)))

(declare-fun lt!195433 () ListLongMap!6265)

(declare-fun +!1301 (ListLongMap!6265 tuple2!7338) ListLongMap!6265)

(assert (=> b!427647 (= lt!195430 (+!1301 lt!195433 (tuple2!7339 k!794 v!412)))))

(assert (=> b!427647 (= lt!195432 (getCurrentListMapNoExtraKeys!1348 lt!195429 lt!195434 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427647 (= lt!195433 (getCurrentListMapNoExtraKeys!1348 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12503 0))(
  ( (Unit!12504) )
))
(declare-fun lt!195431 () Unit!12503)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!502 (array!26155 array!26153 (_ BitVec 32) (_ BitVec 32) V!15995 V!15995 (_ BitVec 32) (_ BitVec 64) V!15995 (_ BitVec 32) Int) Unit!12503)

(assert (=> b!427647 (= lt!195431 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!502 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427648 () Bool)

(declare-fun res!250980 () Bool)

(assert (=> b!427648 (=> (not res!250980) (not e!253518))))

(assert (=> b!427648 (= res!250980 (validKeyInArray!0 k!794))))

(declare-fun b!427649 () Bool)

(declare-fun e!253522 () Bool)

(assert (=> b!427649 (= e!253522 tp_is_empty!11167)))

(declare-fun b!427650 () Bool)

(assert (=> b!427650 (= e!253521 (and e!253516 mapRes!18372))))

(declare-fun condMapEmpty!18372 () Bool)

(declare-fun mapDefault!18372 () ValueCell!5240)

