; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38554 () Bool)

(assert start!38554)

(declare-fun b_free!9083 () Bool)

(declare-fun b_next!9083 () Bool)

(assert (=> start!38554 (= b_free!9083 (not b_next!9083))))

(declare-fun tp!32373 () Bool)

(declare-fun b_and!16487 () Bool)

(assert (=> start!38554 (= tp!32373 b_and!16487)))

(declare-fun b!398380 () Bool)

(declare-fun res!229027 () Bool)

(declare-fun e!240766 () Bool)

(assert (=> b!398380 (=> (not res!229027) (not e!240766))))

(declare-datatypes ((array!23809 0))(
  ( (array!23810 (arr!11351 (Array (_ BitVec 32) (_ BitVec 64))) (size!11703 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23809)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14391 0))(
  ( (V!14392 (val!5027 Int)) )
))
(declare-datatypes ((ValueCell!4639 0))(
  ( (ValueCellFull!4639 (v!7270 V!14391)) (EmptyCell!4639) )
))
(declare-datatypes ((array!23811 0))(
  ( (array!23812 (arr!11352 (Array (_ BitVec 32) ValueCell!4639)) (size!11704 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23811)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!398380 (= res!229027 (and (= (size!11704 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11703 _keys!709) (size!11704 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!398381 () Bool)

(declare-fun res!229025 () Bool)

(assert (=> b!398381 (=> (not res!229025) (not e!240766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!398381 (= res!229025 (validMask!0 mask!1025))))

(declare-fun b!398382 () Bool)

(declare-fun res!229032 () Bool)

(declare-fun e!240771 () Bool)

(assert (=> b!398382 (=> (not res!229032) (not e!240771))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!398382 (= res!229032 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11703 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!398383 () Bool)

(declare-fun res!229029 () Bool)

(assert (=> b!398383 (=> (not res!229029) (not e!240766))))

(assert (=> b!398383 (= res!229029 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11703 _keys!709))))))

(declare-fun b!398384 () Bool)

(declare-fun res!229031 () Bool)

(assert (=> b!398384 (=> (not res!229031) (not e!240766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23809 (_ BitVec 32)) Bool)

(assert (=> b!398384 (= res!229031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!398385 () Bool)

(declare-fun res!229026 () Bool)

(assert (=> b!398385 (=> (not res!229026) (not e!240766))))

(assert (=> b!398385 (= res!229026 (or (= (select (arr!11351 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11351 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!398386 () Bool)

(assert (=> b!398386 (= e!240771 (not true))))

(declare-fun e!240767 () Bool)

(assert (=> b!398386 e!240767))

(declare-fun c!54506 () Bool)

(assert (=> b!398386 (= c!54506 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14391)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((Unit!12037 0))(
  ( (Unit!12038) )
))
(declare-fun lt!187437 () Unit!12037)

(declare-fun zeroValue!515 () V!14391)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14391)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!281 (array!23809 array!23811 (_ BitVec 32) (_ BitVec 32) V!14391 V!14391 (_ BitVec 32) (_ BitVec 64) V!14391 (_ BitVec 32) Int) Unit!12037)

(assert (=> b!398386 (= lt!187437 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!281 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!27907 () Bool)

(declare-fun lt!187436 () array!23809)

(declare-datatypes ((tuple2!6578 0))(
  ( (tuple2!6579 (_1!3299 (_ BitVec 64)) (_2!3299 V!14391)) )
))
(declare-datatypes ((List!6536 0))(
  ( (Nil!6533) (Cons!6532 (h!7388 tuple2!6578) (t!11718 List!6536)) )
))
(declare-datatypes ((ListLongMap!5505 0))(
  ( (ListLongMap!5506 (toList!2768 List!6536)) )
))
(declare-fun call!27911 () ListLongMap!5505)

(declare-fun getCurrentListMapNoExtraKeys!987 (array!23809 array!23811 (_ BitVec 32) (_ BitVec 32) V!14391 V!14391 (_ BitVec 32) Int) ListLongMap!5505)

(assert (=> bm!27907 (= call!27911 (getCurrentListMapNoExtraKeys!987 (ite c!54506 lt!187436 _keys!709) (ite c!54506 (array!23812 (store (arr!11352 _values!549) i!563 (ValueCellFull!4639 v!412)) (size!11704 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!398387 () Bool)

(declare-fun e!240769 () Bool)

(declare-fun e!240768 () Bool)

(declare-fun mapRes!16569 () Bool)

(assert (=> b!398387 (= e!240769 (and e!240768 mapRes!16569))))

(declare-fun condMapEmpty!16569 () Bool)

(declare-fun mapDefault!16569 () ValueCell!4639)

