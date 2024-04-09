; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39250 () Bool)

(assert start!39250)

(declare-fun b_free!9509 () Bool)

(declare-fun b_next!9509 () Bool)

(assert (=> start!39250 (= b_free!9509 (not b_next!9509))))

(declare-fun tp!34055 () Bool)

(declare-fun b_and!16913 () Bool)

(assert (=> start!39250 (= tp!34055 b_and!16913)))

(declare-fun b!414110 () Bool)

(declare-fun res!240834 () Bool)

(declare-fun e!247521 () Bool)

(assert (=> b!414110 (=> (not res!240834) (not e!247521))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414110 (= res!240834 (bvsle from!863 i!563))))

(declare-fun b!414111 () Bool)

(declare-fun res!240830 () Bool)

(declare-fun e!247522 () Bool)

(assert (=> b!414111 (=> (not res!240830) (not e!247522))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15319 0))(
  ( (V!15320 (val!5375 Int)) )
))
(declare-datatypes ((ValueCell!4987 0))(
  ( (ValueCellFull!4987 (v!7618 V!15319)) (EmptyCell!4987) )
))
(declare-datatypes ((array!25161 0))(
  ( (array!25162 (arr!12027 (Array (_ BitVec 32) ValueCell!4987)) (size!12379 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25161)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25163 0))(
  ( (array!25164 (arr!12028 (Array (_ BitVec 32) (_ BitVec 64))) (size!12380 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25163)

(assert (=> b!414111 (= res!240830 (and (= (size!12379 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12380 _keys!709) (size!12379 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414113 () Bool)

(assert (=> b!414113 (= e!247522 e!247521)))

(declare-fun res!240839 () Bool)

(assert (=> b!414113 (=> (not res!240839) (not e!247521))))

(declare-fun lt!189928 () array!25163)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25163 (_ BitVec 32)) Bool)

(assert (=> b!414113 (= res!240839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189928 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!414113 (= lt!189928 (array!25164 (store (arr!12028 _keys!709) i!563 k!794) (size!12380 _keys!709)))))

(declare-fun b!414114 () Bool)

(declare-fun res!240828 () Bool)

(assert (=> b!414114 (=> (not res!240828) (not e!247522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414114 (= res!240828 (validKeyInArray!0 k!794))))

(declare-fun b!414115 () Bool)

(declare-fun res!240835 () Bool)

(assert (=> b!414115 (=> (not res!240835) (not e!247522))))

(declare-fun arrayContainsKey!0 (array!25163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414115 (= res!240835 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!414116 () Bool)

(declare-fun res!240832 () Bool)

(assert (=> b!414116 (=> (not res!240832) (not e!247522))))

(declare-datatypes ((List!6975 0))(
  ( (Nil!6972) (Cons!6971 (h!7827 (_ BitVec 64)) (t!12157 List!6975)) )
))
(declare-fun arrayNoDuplicates!0 (array!25163 (_ BitVec 32) List!6975) Bool)

(assert (=> b!414116 (= res!240832 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6972))))

(declare-fun b!414117 () Bool)

(declare-fun e!247517 () Bool)

(assert (=> b!414117 (= e!247521 e!247517)))

(declare-fun res!240838 () Bool)

(assert (=> b!414117 (=> (not res!240838) (not e!247517))))

(assert (=> b!414117 (= res!240838 (= from!863 i!563))))

(declare-datatypes ((tuple2!6918 0))(
  ( (tuple2!6919 (_1!3469 (_ BitVec 64)) (_2!3469 V!15319)) )
))
(declare-datatypes ((List!6976 0))(
  ( (Nil!6973) (Cons!6972 (h!7828 tuple2!6918) (t!12158 List!6976)) )
))
(declare-datatypes ((ListLongMap!5845 0))(
  ( (ListLongMap!5846 (toList!2938 List!6976)) )
))
(declare-fun lt!189927 () ListLongMap!5845)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15319)

(declare-fun minValue!515 () V!15319)

(declare-fun lt!189930 () array!25161)

(declare-fun getCurrentListMapNoExtraKeys!1145 (array!25163 array!25161 (_ BitVec 32) (_ BitVec 32) V!15319 V!15319 (_ BitVec 32) Int) ListLongMap!5845)

(assert (=> b!414117 (= lt!189927 (getCurrentListMapNoExtraKeys!1145 lt!189928 lt!189930 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15319)

(assert (=> b!414117 (= lt!189930 (array!25162 (store (arr!12027 _values!549) i!563 (ValueCellFull!4987 v!412)) (size!12379 _values!549)))))

(declare-fun lt!189926 () ListLongMap!5845)

(assert (=> b!414117 (= lt!189926 (getCurrentListMapNoExtraKeys!1145 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!414118 () Bool)

(declare-fun e!247519 () Bool)

(declare-fun tp_is_empty!10661 () Bool)

(assert (=> b!414118 (= e!247519 tp_is_empty!10661)))

(declare-fun b!414119 () Bool)

(declare-fun e!247514 () Bool)

(declare-fun e!247515 () Bool)

(declare-fun mapRes!17613 () Bool)

(assert (=> b!414119 (= e!247514 (and e!247515 mapRes!17613))))

(declare-fun condMapEmpty!17613 () Bool)

(declare-fun mapDefault!17613 () ValueCell!4987)

