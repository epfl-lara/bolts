; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39772 () Bool)

(assert start!39772)

(declare-fun b_free!10031 () Bool)

(declare-fun b_next!10031 () Bool)

(assert (=> start!39772 (= b_free!10031 (not b_next!10031))))

(declare-fun tp!35621 () Bool)

(declare-fun b_and!17739 () Bool)

(assert (=> start!39772 (= tp!35621 b_and!17739)))

(declare-fun b!428060 () Bool)

(declare-fun res!251315 () Bool)

(declare-fun e!253714 () Bool)

(assert (=> b!428060 (=> (not res!251315) (not e!253714))))

(declare-datatypes ((array!26183 0))(
  ( (array!26184 (arr!12538 (Array (_ BitVec 32) (_ BitVec 64))) (size!12890 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26183)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428060 (= res!251315 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!251314 () Bool)

(assert (=> start!39772 (=> (not res!251314) (not e!253714))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39772 (= res!251314 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12890 _keys!709))))))

(assert (=> start!39772 e!253714))

(declare-fun tp_is_empty!11183 () Bool)

(assert (=> start!39772 tp_is_empty!11183))

(assert (=> start!39772 tp!35621))

(assert (=> start!39772 true))

(declare-datatypes ((V!16015 0))(
  ( (V!16016 (val!5636 Int)) )
))
(declare-datatypes ((ValueCell!5248 0))(
  ( (ValueCellFull!5248 (v!7879 V!16015)) (EmptyCell!5248) )
))
(declare-datatypes ((array!26185 0))(
  ( (array!26186 (arr!12539 (Array (_ BitVec 32) ValueCell!5248)) (size!12891 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26185)

(declare-fun e!253712 () Bool)

(declare-fun array_inv!9126 (array!26185) Bool)

(assert (=> start!39772 (and (array_inv!9126 _values!549) e!253712)))

(declare-fun array_inv!9127 (array!26183) Bool)

(assert (=> start!39772 (array_inv!9127 _keys!709)))

(declare-fun b!428061 () Bool)

(declare-fun res!251325 () Bool)

(assert (=> b!428061 (=> (not res!251325) (not e!253714))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26183 (_ BitVec 32)) Bool)

(assert (=> b!428061 (= res!251325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!428062 () Bool)

(declare-fun e!253709 () Bool)

(declare-fun e!253711 () Bool)

(assert (=> b!428062 (= e!253709 (not e!253711))))

(declare-fun res!251322 () Bool)

(assert (=> b!428062 (=> res!251322 e!253711)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428062 (= res!251322 (not (validKeyInArray!0 (select (arr!12538 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7352 0))(
  ( (tuple2!7353 (_1!3686 (_ BitVec 64)) (_2!3686 V!16015)) )
))
(declare-datatypes ((List!7402 0))(
  ( (Nil!7399) (Cons!7398 (h!8254 tuple2!7352) (t!12890 List!7402)) )
))
(declare-datatypes ((ListLongMap!6279 0))(
  ( (ListLongMap!6280 (toList!3155 List!7402)) )
))
(declare-fun lt!195620 () ListLongMap!6279)

(declare-fun lt!195626 () ListLongMap!6279)

(assert (=> b!428062 (= lt!195620 lt!195626)))

(declare-fun lt!195624 () ListLongMap!6279)

(declare-fun v!412 () V!16015)

(declare-fun +!1308 (ListLongMap!6279 tuple2!7352) ListLongMap!6279)

(assert (=> b!428062 (= lt!195626 (+!1308 lt!195624 (tuple2!7353 k!794 v!412)))))

(declare-fun minValue!515 () V!16015)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16015)

(declare-fun lt!195627 () array!26185)

(declare-fun lt!195623 () array!26183)

(declare-fun getCurrentListMapNoExtraKeys!1355 (array!26183 array!26185 (_ BitVec 32) (_ BitVec 32) V!16015 V!16015 (_ BitVec 32) Int) ListLongMap!6279)

(assert (=> b!428062 (= lt!195620 (getCurrentListMapNoExtraKeys!1355 lt!195623 lt!195627 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!428062 (= lt!195624 (getCurrentListMapNoExtraKeys!1355 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12517 0))(
  ( (Unit!12518) )
))
(declare-fun lt!195625 () Unit!12517)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!509 (array!26183 array!26185 (_ BitVec 32) (_ BitVec 32) V!16015 V!16015 (_ BitVec 32) (_ BitVec 64) V!16015 (_ BitVec 32) Int) Unit!12517)

(assert (=> b!428062 (= lt!195625 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!509 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428063 () Bool)

(assert (=> b!428063 (= e!253711 true)))

(declare-fun lt!195621 () ListLongMap!6279)

(declare-fun get!6218 (ValueCell!5248 V!16015) V!16015)

(declare-fun dynLambda!755 (Int (_ BitVec 64)) V!16015)

(assert (=> b!428063 (= lt!195621 (+!1308 lt!195626 (tuple2!7353 (select (arr!12538 _keys!709) from!863) (get!6218 (select (arr!12539 _values!549) from!863) (dynLambda!755 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!18396 () Bool)

(declare-fun mapRes!18396 () Bool)

(assert (=> mapIsEmpty!18396 mapRes!18396))

(declare-fun b!428064 () Bool)

(declare-fun e!253713 () Bool)

(assert (=> b!428064 (= e!253713 e!253709)))

(declare-fun res!251321 () Bool)

(assert (=> b!428064 (=> (not res!251321) (not e!253709))))

(assert (=> b!428064 (= res!251321 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!428064 (= lt!195621 (getCurrentListMapNoExtraKeys!1355 lt!195623 lt!195627 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!428064 (= lt!195627 (array!26186 (store (arr!12539 _values!549) i!563 (ValueCellFull!5248 v!412)) (size!12891 _values!549)))))

(declare-fun lt!195622 () ListLongMap!6279)

(assert (=> b!428064 (= lt!195622 (getCurrentListMapNoExtraKeys!1355 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!428065 () Bool)

(assert (=> b!428065 (= e!253714 e!253713)))

(declare-fun res!251318 () Bool)

(assert (=> b!428065 (=> (not res!251318) (not e!253713))))

(assert (=> b!428065 (= res!251318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195623 mask!1025))))

(assert (=> b!428065 (= lt!195623 (array!26184 (store (arr!12538 _keys!709) i!563 k!794) (size!12890 _keys!709)))))

(declare-fun b!428066 () Bool)

(declare-fun e!253710 () Bool)

(assert (=> b!428066 (= e!253710 tp_is_empty!11183)))

(declare-fun b!428067 () Bool)

(declare-fun e!253708 () Bool)

(assert (=> b!428067 (= e!253712 (and e!253708 mapRes!18396))))

(declare-fun condMapEmpty!18396 () Bool)

(declare-fun mapDefault!18396 () ValueCell!5248)

