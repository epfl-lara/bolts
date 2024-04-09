; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39738 () Bool)

(assert start!39738)

(declare-fun b_free!9997 () Bool)

(declare-fun b_next!9997 () Bool)

(assert (=> start!39738 (= b_free!9997 (not b_next!9997))))

(declare-fun tp!35520 () Bool)

(declare-fun b_and!17671 () Bool)

(assert (=> start!39738 (= tp!35520 b_and!17671)))

(declare-fun b!427159 () Bool)

(declare-fun e!253302 () Bool)

(declare-fun tp_is_empty!11149 () Bool)

(assert (=> b!427159 (= e!253302 tp_is_empty!11149)))

(declare-fun b!427160 () Bool)

(declare-fun res!250600 () Bool)

(declare-fun e!253301 () Bool)

(assert (=> b!427160 (=> (not res!250600) (not e!253301))))

(declare-datatypes ((array!26117 0))(
  ( (array!26118 (arr!12505 (Array (_ BitVec 32) (_ BitVec 64))) (size!12857 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26117)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427160 (= res!250600 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!427161 () Bool)

(declare-fun e!253303 () Bool)

(declare-fun e!253305 () Bool)

(assert (=> b!427161 (= e!253303 e!253305)))

(declare-fun res!250603 () Bool)

(assert (=> b!427161 (=> (not res!250603) (not e!253305))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427161 (= res!250603 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15971 0))(
  ( (V!15972 (val!5619 Int)) )
))
(declare-fun minValue!515 () V!15971)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7322 0))(
  ( (tuple2!7323 (_1!3671 (_ BitVec 64)) (_2!3671 V!15971)) )
))
(declare-datatypes ((List!7371 0))(
  ( (Nil!7368) (Cons!7367 (h!8223 tuple2!7322) (t!12825 List!7371)) )
))
(declare-datatypes ((ListLongMap!6249 0))(
  ( (ListLongMap!6250 (toList!3140 List!7371)) )
))
(declare-fun lt!195213 () ListLongMap!6249)

(declare-fun zeroValue!515 () V!15971)

(declare-datatypes ((ValueCell!5231 0))(
  ( (ValueCellFull!5231 (v!7862 V!15971)) (EmptyCell!5231) )
))
(declare-datatypes ((array!26119 0))(
  ( (array!26120 (arr!12506 (Array (_ BitVec 32) ValueCell!5231)) (size!12858 (_ BitVec 32))) )
))
(declare-fun lt!195212 () array!26119)

(declare-fun lt!195218 () array!26117)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1341 (array!26117 array!26119 (_ BitVec 32) (_ BitVec 32) V!15971 V!15971 (_ BitVec 32) Int) ListLongMap!6249)

(assert (=> b!427161 (= lt!195213 (getCurrentListMapNoExtraKeys!1341 lt!195218 lt!195212 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26119)

(declare-fun v!412 () V!15971)

(assert (=> b!427161 (= lt!195212 (array!26120 (store (arr!12506 _values!549) i!563 (ValueCellFull!5231 v!412)) (size!12858 _values!549)))))

(declare-fun lt!195217 () ListLongMap!6249)

(assert (=> b!427161 (= lt!195217 (getCurrentListMapNoExtraKeys!1341 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427162 () Bool)

(declare-fun e!253304 () Bool)

(assert (=> b!427162 (= e!253305 (not e!253304))))

(declare-fun res!250606 () Bool)

(assert (=> b!427162 (=> res!250606 e!253304)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427162 (= res!250606 (not (validKeyInArray!0 (select (arr!12505 _keys!709) from!863))))))

(declare-fun lt!195216 () ListLongMap!6249)

(declare-fun lt!195219 () ListLongMap!6249)

(assert (=> b!427162 (= lt!195216 lt!195219)))

(declare-fun lt!195214 () ListLongMap!6249)

(declare-fun +!1293 (ListLongMap!6249 tuple2!7322) ListLongMap!6249)

(assert (=> b!427162 (= lt!195219 (+!1293 lt!195214 (tuple2!7323 k!794 v!412)))))

(assert (=> b!427162 (= lt!195216 (getCurrentListMapNoExtraKeys!1341 lt!195218 lt!195212 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427162 (= lt!195214 (getCurrentListMapNoExtraKeys!1341 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12489 0))(
  ( (Unit!12490) )
))
(declare-fun lt!195215 () Unit!12489)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!495 (array!26117 array!26119 (_ BitVec 32) (_ BitVec 32) V!15971 V!15971 (_ BitVec 32) (_ BitVec 64) V!15971 (_ BitVec 32) Int) Unit!12489)

(assert (=> b!427162 (= lt!195215 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!495 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18345 () Bool)

(declare-fun mapRes!18345 () Bool)

(assert (=> mapIsEmpty!18345 mapRes!18345))

(declare-fun b!427164 () Bool)

(declare-fun res!250605 () Bool)

(assert (=> b!427164 (=> (not res!250605) (not e!253301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427164 (= res!250605 (validMask!0 mask!1025))))

(declare-fun b!427165 () Bool)

(declare-fun res!250599 () Bool)

(assert (=> b!427165 (=> (not res!250599) (not e!253301))))

(declare-datatypes ((List!7372 0))(
  ( (Nil!7369) (Cons!7368 (h!8224 (_ BitVec 64)) (t!12826 List!7372)) )
))
(declare-fun arrayNoDuplicates!0 (array!26117 (_ BitVec 32) List!7372) Bool)

(assert (=> b!427165 (= res!250599 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7369))))

(declare-fun b!427166 () Bool)

(declare-fun res!250611 () Bool)

(assert (=> b!427166 (=> (not res!250611) (not e!253303))))

(assert (=> b!427166 (= res!250611 (arrayNoDuplicates!0 lt!195218 #b00000000000000000000000000000000 Nil!7369))))

(declare-fun b!427167 () Bool)

(assert (=> b!427167 (= e!253304 true)))

(declare-fun get!6194 (ValueCell!5231 V!15971) V!15971)

(declare-fun dynLambda!741 (Int (_ BitVec 64)) V!15971)

(assert (=> b!427167 (= lt!195213 (+!1293 lt!195219 (tuple2!7323 (select (arr!12505 _keys!709) from!863) (get!6194 (select (arr!12506 _values!549) from!863) (dynLambda!741 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427168 () Bool)

(declare-fun e!253299 () Bool)

(assert (=> b!427168 (= e!253299 (and e!253302 mapRes!18345))))

(declare-fun condMapEmpty!18345 () Bool)

(declare-fun mapDefault!18345 () ValueCell!5231)

