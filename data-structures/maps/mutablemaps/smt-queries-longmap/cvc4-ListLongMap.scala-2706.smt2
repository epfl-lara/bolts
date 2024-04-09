; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40066 () Bool)

(assert start!40066)

(declare-fun b_free!10325 () Bool)

(declare-fun b_next!10325 () Bool)

(assert (=> start!40066 (= b_free!10325 (not b_next!10325))))

(declare-fun tp!36503 () Bool)

(declare-fun b_and!18311 () Bool)

(assert (=> start!40066 (= tp!36503 b_and!18311)))

(declare-fun b!436961 () Bool)

(declare-fun res!257790 () Bool)

(declare-fun e!257950 () Bool)

(assert (=> b!436961 (=> (not res!257790) (not e!257950))))

(declare-datatypes ((array!26753 0))(
  ( (array!26754 (arr!12823 (Array (_ BitVec 32) (_ BitVec 64))) (size!13175 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26753)

(declare-datatypes ((List!7638 0))(
  ( (Nil!7635) (Cons!7634 (h!8490 (_ BitVec 64)) (t!13402 List!7638)) )
))
(declare-fun arrayNoDuplicates!0 (array!26753 (_ BitVec 32) List!7638) Bool)

(assert (=> b!436961 (= res!257790 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7635))))

(declare-fun b!436962 () Bool)

(declare-fun res!257796 () Bool)

(assert (=> b!436962 (=> (not res!257796) (not e!257950))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26753 (_ BitVec 32)) Bool)

(assert (=> b!436962 (= res!257796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436963 () Bool)

(declare-fun res!257795 () Bool)

(assert (=> b!436963 (=> (not res!257795) (not e!257950))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436963 (= res!257795 (validKeyInArray!0 k!794))))

(declare-fun b!436964 () Bool)

(declare-fun res!257787 () Bool)

(declare-fun e!257953 () Bool)

(assert (=> b!436964 (=> (not res!257787) (not e!257953))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436964 (= res!257787 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18837 () Bool)

(declare-fun mapRes!18837 () Bool)

(assert (=> mapIsEmpty!18837 mapRes!18837))

(declare-fun b!436965 () Bool)

(declare-fun res!257788 () Bool)

(assert (=> b!436965 (=> (not res!257788) (not e!257950))))

(declare-fun arrayContainsKey!0 (array!26753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436965 (= res!257788 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!436966 () Bool)

(declare-fun res!257784 () Bool)

(assert (=> b!436966 (=> (not res!257784) (not e!257950))))

(assert (=> b!436966 (= res!257784 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13175 _keys!709))))))

(declare-fun b!436967 () Bool)

(assert (=> b!436967 (= e!257950 e!257953)))

(declare-fun res!257789 () Bool)

(assert (=> b!436967 (=> (not res!257789) (not e!257953))))

(declare-fun lt!201521 () array!26753)

(assert (=> b!436967 (= res!257789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201521 mask!1025))))

(assert (=> b!436967 (= lt!201521 (array!26754 (store (arr!12823 _keys!709) i!563 k!794) (size!13175 _keys!709)))))

(declare-fun b!436968 () Bool)

(declare-fun e!257951 () Bool)

(declare-fun tp_is_empty!11477 () Bool)

(assert (=> b!436968 (= e!257951 tp_is_empty!11477)))

(declare-fun b!436969 () Bool)

(declare-fun e!257947 () Bool)

(assert (=> b!436969 (= e!257947 tp_is_empty!11477)))

(declare-fun b!436970 () Bool)

(declare-fun res!257785 () Bool)

(assert (=> b!436970 (=> (not res!257785) (not e!257950))))

(assert (=> b!436970 (= res!257785 (or (= (select (arr!12823 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12823 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436971 () Bool)

(declare-fun res!257791 () Bool)

(assert (=> b!436971 (=> (not res!257791) (not e!257953))))

(assert (=> b!436971 (= res!257791 (arrayNoDuplicates!0 lt!201521 #b00000000000000000000000000000000 Nil!7635))))

(declare-fun mapNonEmpty!18837 () Bool)

(declare-fun tp!36504 () Bool)

(assert (=> mapNonEmpty!18837 (= mapRes!18837 (and tp!36504 e!257947))))

(declare-datatypes ((V!16407 0))(
  ( (V!16408 (val!5783 Int)) )
))
(declare-datatypes ((ValueCell!5395 0))(
  ( (ValueCellFull!5395 (v!8026 V!16407)) (EmptyCell!5395) )
))
(declare-fun mapRest!18837 () (Array (_ BitVec 32) ValueCell!5395))

(declare-fun mapKey!18837 () (_ BitVec 32))

(declare-fun mapValue!18837 () ValueCell!5395)

(declare-datatypes ((array!26755 0))(
  ( (array!26756 (arr!12824 (Array (_ BitVec 32) ValueCell!5395)) (size!13176 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26755)

(assert (=> mapNonEmpty!18837 (= (arr!12824 _values!549) (store mapRest!18837 mapKey!18837 mapValue!18837))))

(declare-fun res!257786 () Bool)

(assert (=> start!40066 (=> (not res!257786) (not e!257950))))

(assert (=> start!40066 (= res!257786 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13175 _keys!709))))))

(assert (=> start!40066 e!257950))

(assert (=> start!40066 tp_is_empty!11477))

(assert (=> start!40066 tp!36503))

(assert (=> start!40066 true))

(declare-fun e!257952 () Bool)

(declare-fun array_inv!9314 (array!26755) Bool)

(assert (=> start!40066 (and (array_inv!9314 _values!549) e!257952)))

(declare-fun array_inv!9315 (array!26753) Bool)

(assert (=> start!40066 (array_inv!9315 _keys!709)))

(declare-fun b!436972 () Bool)

(declare-fun e!257948 () Bool)

(assert (=> b!436972 (= e!257953 e!257948)))

(declare-fun res!257794 () Bool)

(assert (=> b!436972 (=> (not res!257794) (not e!257948))))

(assert (=> b!436972 (= res!257794 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16407)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!201518 () array!26755)

(declare-datatypes ((tuple2!7594 0))(
  ( (tuple2!7595 (_1!3807 (_ BitVec 64)) (_2!3807 V!16407)) )
))
(declare-datatypes ((List!7639 0))(
  ( (Nil!7636) (Cons!7635 (h!8491 tuple2!7594) (t!13403 List!7639)) )
))
(declare-datatypes ((ListLongMap!6521 0))(
  ( (ListLongMap!6522 (toList!3276 List!7639)) )
))
(declare-fun lt!201519 () ListLongMap!6521)

(declare-fun zeroValue!515 () V!16407)

(declare-fun getCurrentListMapNoExtraKeys!1458 (array!26753 array!26755 (_ BitVec 32) (_ BitVec 32) V!16407 V!16407 (_ BitVec 32) Int) ListLongMap!6521)

(assert (=> b!436972 (= lt!201519 (getCurrentListMapNoExtraKeys!1458 lt!201521 lt!201518 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16407)

(assert (=> b!436972 (= lt!201518 (array!26756 (store (arr!12824 _values!549) i!563 (ValueCellFull!5395 v!412)) (size!13176 _values!549)))))

(declare-fun lt!201522 () ListLongMap!6521)

(assert (=> b!436972 (= lt!201522 (getCurrentListMapNoExtraKeys!1458 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436973 () Bool)

(declare-fun res!257793 () Bool)

(assert (=> b!436973 (=> (not res!257793) (not e!257950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436973 (= res!257793 (validMask!0 mask!1025))))

(declare-fun b!436974 () Bool)

(assert (=> b!436974 (= e!257948 (not true))))

(declare-fun +!1420 (ListLongMap!6521 tuple2!7594) ListLongMap!6521)

(assert (=> b!436974 (= (getCurrentListMapNoExtraKeys!1458 lt!201521 lt!201518 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1420 (getCurrentListMapNoExtraKeys!1458 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7595 k!794 v!412)))))

(declare-datatypes ((Unit!12955 0))(
  ( (Unit!12956) )
))
(declare-fun lt!201520 () Unit!12955)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!598 (array!26753 array!26755 (_ BitVec 32) (_ BitVec 32) V!16407 V!16407 (_ BitVec 32) (_ BitVec 64) V!16407 (_ BitVec 32) Int) Unit!12955)

(assert (=> b!436974 (= lt!201520 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!598 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!436975 () Bool)

(assert (=> b!436975 (= e!257952 (and e!257951 mapRes!18837))))

(declare-fun condMapEmpty!18837 () Bool)

(declare-fun mapDefault!18837 () ValueCell!5395)

