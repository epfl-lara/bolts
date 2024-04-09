; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40188 () Bool)

(assert start!40188)

(declare-fun b_free!10447 () Bool)

(declare-fun b_next!10447 () Bool)

(assert (=> start!40188 (= b_free!10447 (not b_next!10447))))

(declare-fun tp!36870 () Bool)

(declare-fun b_and!18433 () Bool)

(assert (=> start!40188 (= tp!36870 b_and!18433)))

(declare-fun b!439889 () Bool)

(declare-fun res!260174 () Bool)

(declare-fun e!259228 () Bool)

(assert (=> b!439889 (=> (not res!260174) (not e!259228))))

(declare-datatypes ((array!26989 0))(
  ( (array!26990 (arr!12941 (Array (_ BitVec 32) (_ BitVec 64))) (size!13293 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26989)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16571 0))(
  ( (V!16572 (val!5844 Int)) )
))
(declare-datatypes ((ValueCell!5456 0))(
  ( (ValueCellFull!5456 (v!8087 V!16571)) (EmptyCell!5456) )
))
(declare-datatypes ((array!26991 0))(
  ( (array!26992 (arr!12942 (Array (_ BitVec 32) ValueCell!5456)) (size!13294 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26991)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!439889 (= res!260174 (and (= (size!13294 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13293 _keys!709) (size!13294 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439890 () Bool)

(declare-fun res!260175 () Bool)

(assert (=> b!439890 (=> (not res!260175) (not e!259228))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439890 (= res!260175 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!439891 () Bool)

(declare-fun res!260172 () Bool)

(assert (=> b!439891 (=> (not res!260172) (not e!259228))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439891 (= res!260172 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13293 _keys!709))))))

(declare-fun b!439893 () Bool)

(declare-fun e!259234 () Bool)

(declare-fun e!259232 () Bool)

(assert (=> b!439893 (= e!259234 e!259232)))

(declare-fun res!260170 () Bool)

(assert (=> b!439893 (=> (not res!260170) (not e!259232))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!439893 (= res!260170 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16571)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!202434 () array!26989)

(declare-datatypes ((tuple2!7688 0))(
  ( (tuple2!7689 (_1!3854 (_ BitVec 64)) (_2!3854 V!16571)) )
))
(declare-datatypes ((List!7730 0))(
  ( (Nil!7727) (Cons!7726 (h!8582 tuple2!7688) (t!13494 List!7730)) )
))
(declare-datatypes ((ListLongMap!6615 0))(
  ( (ListLongMap!6616 (toList!3323 List!7730)) )
))
(declare-fun lt!202437 () ListLongMap!6615)

(declare-fun zeroValue!515 () V!16571)

(declare-fun lt!202433 () array!26991)

(declare-fun getCurrentListMapNoExtraKeys!1505 (array!26989 array!26991 (_ BitVec 32) (_ BitVec 32) V!16571 V!16571 (_ BitVec 32) Int) ListLongMap!6615)

(assert (=> b!439893 (= lt!202437 (getCurrentListMapNoExtraKeys!1505 lt!202434 lt!202433 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16571)

(assert (=> b!439893 (= lt!202433 (array!26992 (store (arr!12942 _values!549) i!563 (ValueCellFull!5456 v!412)) (size!13294 _values!549)))))

(declare-fun lt!202435 () ListLongMap!6615)

(assert (=> b!439893 (= lt!202435 (getCurrentListMapNoExtraKeys!1505 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439894 () Bool)

(declare-fun res!260165 () Bool)

(assert (=> b!439894 (=> (not res!260165) (not e!259234))))

(assert (=> b!439894 (= res!260165 (bvsle from!863 i!563))))

(declare-fun b!439895 () Bool)

(declare-fun e!259231 () Bool)

(declare-fun tp_is_empty!11599 () Bool)

(assert (=> b!439895 (= e!259231 tp_is_empty!11599)))

(declare-fun b!439896 () Bool)

(declare-fun res!260169 () Bool)

(assert (=> b!439896 (=> (not res!260169) (not e!259228))))

(assert (=> b!439896 (= res!260169 (or (= (select (arr!12941 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12941 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19020 () Bool)

(declare-fun mapRes!19020 () Bool)

(assert (=> mapIsEmpty!19020 mapRes!19020))

(declare-fun mapNonEmpty!19020 () Bool)

(declare-fun tp!36869 () Bool)

(assert (=> mapNonEmpty!19020 (= mapRes!19020 (and tp!36869 e!259231))))

(declare-fun mapKey!19020 () (_ BitVec 32))

(declare-fun mapValue!19020 () ValueCell!5456)

(declare-fun mapRest!19020 () (Array (_ BitVec 32) ValueCell!5456))

(assert (=> mapNonEmpty!19020 (= (arr!12942 _values!549) (store mapRest!19020 mapKey!19020 mapValue!19020))))

(declare-fun b!439897 () Bool)

(assert (=> b!439897 (= e!259232 (not true))))

(declare-fun +!1460 (ListLongMap!6615 tuple2!7688) ListLongMap!6615)

(assert (=> b!439897 (= (getCurrentListMapNoExtraKeys!1505 lt!202434 lt!202433 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1460 (getCurrentListMapNoExtraKeys!1505 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7689 k!794 v!412)))))

(declare-datatypes ((Unit!13035 0))(
  ( (Unit!13036) )
))
(declare-fun lt!202436 () Unit!13035)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!638 (array!26989 array!26991 (_ BitVec 32) (_ BitVec 32) V!16571 V!16571 (_ BitVec 32) (_ BitVec 64) V!16571 (_ BitVec 32) Int) Unit!13035)

(assert (=> b!439897 (= lt!202436 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!638 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439898 () Bool)

(declare-fun res!260166 () Bool)

(assert (=> b!439898 (=> (not res!260166) (not e!259234))))

(declare-datatypes ((List!7731 0))(
  ( (Nil!7728) (Cons!7727 (h!8583 (_ BitVec 64)) (t!13495 List!7731)) )
))
(declare-fun arrayNoDuplicates!0 (array!26989 (_ BitVec 32) List!7731) Bool)

(assert (=> b!439898 (= res!260166 (arrayNoDuplicates!0 lt!202434 #b00000000000000000000000000000000 Nil!7728))))

(declare-fun b!439899 () Bool)

(declare-fun res!260167 () Bool)

(assert (=> b!439899 (=> (not res!260167) (not e!259228))))

(assert (=> b!439899 (= res!260167 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7728))))

(declare-fun b!439892 () Bool)

(declare-fun e!259230 () Bool)

(declare-fun e!259229 () Bool)

(assert (=> b!439892 (= e!259230 (and e!259229 mapRes!19020))))

(declare-fun condMapEmpty!19020 () Bool)

(declare-fun mapDefault!19020 () ValueCell!5456)

