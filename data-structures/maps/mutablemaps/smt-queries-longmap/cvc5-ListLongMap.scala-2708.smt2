; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40074 () Bool)

(assert start!40074)

(declare-fun b_free!10333 () Bool)

(declare-fun b_next!10333 () Bool)

(assert (=> start!40074 (= b_free!10333 (not b_next!10333))))

(declare-fun tp!36527 () Bool)

(declare-fun b_and!18319 () Bool)

(assert (=> start!40074 (= tp!36527 b_and!18319)))

(declare-fun res!257949 () Bool)

(declare-fun e!258032 () Bool)

(assert (=> start!40074 (=> (not res!257949) (not e!258032))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26769 0))(
  ( (array!26770 (arr!12831 (Array (_ BitVec 32) (_ BitVec 64))) (size!13183 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26769)

(assert (=> start!40074 (= res!257949 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13183 _keys!709))))))

(assert (=> start!40074 e!258032))

(declare-fun tp_is_empty!11485 () Bool)

(assert (=> start!40074 tp_is_empty!11485))

(assert (=> start!40074 tp!36527))

(assert (=> start!40074 true))

(declare-datatypes ((V!16419 0))(
  ( (V!16420 (val!5787 Int)) )
))
(declare-datatypes ((ValueCell!5399 0))(
  ( (ValueCellFull!5399 (v!8030 V!16419)) (EmptyCell!5399) )
))
(declare-datatypes ((array!26771 0))(
  ( (array!26772 (arr!12832 (Array (_ BitVec 32) ValueCell!5399)) (size!13184 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26771)

(declare-fun e!258036 () Bool)

(declare-fun array_inv!9318 (array!26771) Bool)

(assert (=> start!40074 (and (array_inv!9318 _values!549) e!258036)))

(declare-fun array_inv!9319 (array!26769) Bool)

(assert (=> start!40074 (array_inv!9319 _keys!709)))

(declare-fun mapIsEmpty!18849 () Bool)

(declare-fun mapRes!18849 () Bool)

(assert (=> mapIsEmpty!18849 mapRes!18849))

(declare-fun b!437153 () Bool)

(declare-fun res!257940 () Bool)

(assert (=> b!437153 (=> (not res!257940) (not e!258032))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26769 (_ BitVec 32)) Bool)

(assert (=> b!437153 (= res!257940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437154 () Bool)

(declare-fun e!258031 () Bool)

(assert (=> b!437154 (= e!258032 e!258031)))

(declare-fun res!257952 () Bool)

(assert (=> b!437154 (=> (not res!257952) (not e!258031))))

(declare-fun lt!201578 () array!26769)

(assert (=> b!437154 (= res!257952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201578 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437154 (= lt!201578 (array!26770 (store (arr!12831 _keys!709) i!563 k!794) (size!13183 _keys!709)))))

(declare-fun b!437155 () Bool)

(declare-fun res!257945 () Bool)

(assert (=> b!437155 (=> (not res!257945) (not e!258032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437155 (= res!257945 (validKeyInArray!0 k!794))))

(declare-fun b!437156 () Bool)

(declare-fun res!257951 () Bool)

(assert (=> b!437156 (=> (not res!257951) (not e!258031))))

(declare-datatypes ((List!7645 0))(
  ( (Nil!7642) (Cons!7641 (h!8497 (_ BitVec 64)) (t!13409 List!7645)) )
))
(declare-fun arrayNoDuplicates!0 (array!26769 (_ BitVec 32) List!7645) Bool)

(assert (=> b!437156 (= res!257951 (arrayNoDuplicates!0 lt!201578 #b00000000000000000000000000000000 Nil!7642))))

(declare-fun b!437157 () Bool)

(declare-fun res!257943 () Bool)

(assert (=> b!437157 (=> (not res!257943) (not e!258032))))

(assert (=> b!437157 (= res!257943 (or (= (select (arr!12831 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12831 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437158 () Bool)

(declare-fun res!257944 () Bool)

(assert (=> b!437158 (=> (not res!257944) (not e!258032))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!437158 (= res!257944 (and (= (size!13184 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13183 _keys!709) (size!13184 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437159 () Bool)

(declare-fun e!258035 () Bool)

(assert (=> b!437159 (= e!258035 (not true))))

(declare-fun minValue!515 () V!16419)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!201581 () array!26771)

(declare-fun v!412 () V!16419)

(declare-fun zeroValue!515 () V!16419)

(declare-datatypes ((tuple2!7602 0))(
  ( (tuple2!7603 (_1!3811 (_ BitVec 64)) (_2!3811 V!16419)) )
))
(declare-datatypes ((List!7646 0))(
  ( (Nil!7643) (Cons!7642 (h!8498 tuple2!7602) (t!13410 List!7646)) )
))
(declare-datatypes ((ListLongMap!6529 0))(
  ( (ListLongMap!6530 (toList!3280 List!7646)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1462 (array!26769 array!26771 (_ BitVec 32) (_ BitVec 32) V!16419 V!16419 (_ BitVec 32) Int) ListLongMap!6529)

(declare-fun +!1424 (ListLongMap!6529 tuple2!7602) ListLongMap!6529)

(assert (=> b!437159 (= (getCurrentListMapNoExtraKeys!1462 lt!201578 lt!201581 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1424 (getCurrentListMapNoExtraKeys!1462 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7603 k!794 v!412)))))

(declare-datatypes ((Unit!12963 0))(
  ( (Unit!12964) )
))
(declare-fun lt!201580 () Unit!12963)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!602 (array!26769 array!26771 (_ BitVec 32) (_ BitVec 32) V!16419 V!16419 (_ BitVec 32) (_ BitVec 64) V!16419 (_ BitVec 32) Int) Unit!12963)

(assert (=> b!437159 (= lt!201580 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!602 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437160 () Bool)

(declare-fun res!257948 () Bool)

(assert (=> b!437160 (=> (not res!257948) (not e!258032))))

(assert (=> b!437160 (= res!257948 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7642))))

(declare-fun b!437161 () Bool)

(assert (=> b!437161 (= e!258031 e!258035)))

(declare-fun res!257946 () Bool)

(assert (=> b!437161 (=> (not res!257946) (not e!258035))))

(assert (=> b!437161 (= res!257946 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201582 () ListLongMap!6529)

(assert (=> b!437161 (= lt!201582 (getCurrentListMapNoExtraKeys!1462 lt!201578 lt!201581 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!437161 (= lt!201581 (array!26772 (store (arr!12832 _values!549) i!563 (ValueCellFull!5399 v!412)) (size!13184 _values!549)))))

(declare-fun lt!201579 () ListLongMap!6529)

(assert (=> b!437161 (= lt!201579 (getCurrentListMapNoExtraKeys!1462 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437162 () Bool)

(declare-fun e!258033 () Bool)

(assert (=> b!437162 (= e!258033 tp_is_empty!11485)))

(declare-fun b!437163 () Bool)

(declare-fun res!257941 () Bool)

(assert (=> b!437163 (=> (not res!257941) (not e!258032))))

(declare-fun arrayContainsKey!0 (array!26769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437163 (= res!257941 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!437164 () Bool)

(declare-fun e!258034 () Bool)

(assert (=> b!437164 (= e!258034 tp_is_empty!11485)))

(declare-fun b!437165 () Bool)

(declare-fun res!257942 () Bool)

(assert (=> b!437165 (=> (not res!257942) (not e!258032))))

(assert (=> b!437165 (= res!257942 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13183 _keys!709))))))

(declare-fun b!437166 () Bool)

(assert (=> b!437166 (= e!258036 (and e!258034 mapRes!18849))))

(declare-fun condMapEmpty!18849 () Bool)

(declare-fun mapDefault!18849 () ValueCell!5399)

