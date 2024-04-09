; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40092 () Bool)

(assert start!40092)

(declare-fun b_free!10351 () Bool)

(declare-fun b_next!10351 () Bool)

(assert (=> start!40092 (= b_free!10351 (not b_next!10351))))

(declare-fun tp!36582 () Bool)

(declare-fun b_and!18337 () Bool)

(assert (=> start!40092 (= tp!36582 b_and!18337)))

(declare-fun b!437585 () Bool)

(declare-fun res!258296 () Bool)

(declare-fun e!258223 () Bool)

(assert (=> b!437585 (=> (not res!258296) (not e!258223))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437585 (= res!258296 (validMask!0 mask!1025))))

(declare-fun b!437586 () Bool)

(declare-fun e!258220 () Bool)

(declare-fun e!258224 () Bool)

(assert (=> b!437586 (= e!258220 e!258224)))

(declare-fun res!258299 () Bool)

(assert (=> b!437586 (=> (not res!258299) (not e!258224))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437586 (= res!258299 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16443 0))(
  ( (V!16444 (val!5796 Int)) )
))
(declare-fun minValue!515 () V!16443)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16443)

(declare-datatypes ((array!26803 0))(
  ( (array!26804 (arr!12848 (Array (_ BitVec 32) (_ BitVec 64))) (size!13200 (_ BitVec 32))) )
))
(declare-fun lt!201713 () array!26803)

(declare-datatypes ((tuple2!7614 0))(
  ( (tuple2!7615 (_1!3817 (_ BitVec 64)) (_2!3817 V!16443)) )
))
(declare-datatypes ((List!7658 0))(
  ( (Nil!7655) (Cons!7654 (h!8510 tuple2!7614) (t!13422 List!7658)) )
))
(declare-datatypes ((ListLongMap!6541 0))(
  ( (ListLongMap!6542 (toList!3286 List!7658)) )
))
(declare-fun lt!201717 () ListLongMap!6541)

(declare-datatypes ((ValueCell!5408 0))(
  ( (ValueCellFull!5408 (v!8039 V!16443)) (EmptyCell!5408) )
))
(declare-datatypes ((array!26805 0))(
  ( (array!26806 (arr!12849 (Array (_ BitVec 32) ValueCell!5408)) (size!13201 (_ BitVec 32))) )
))
(declare-fun lt!201716 () array!26805)

(declare-fun getCurrentListMapNoExtraKeys!1468 (array!26803 array!26805 (_ BitVec 32) (_ BitVec 32) V!16443 V!16443 (_ BitVec 32) Int) ListLongMap!6541)

(assert (=> b!437586 (= lt!201717 (getCurrentListMapNoExtraKeys!1468 lt!201713 lt!201716 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26805)

(declare-fun v!412 () V!16443)

(assert (=> b!437586 (= lt!201716 (array!26806 (store (arr!12849 _values!549) i!563 (ValueCellFull!5408 v!412)) (size!13201 _values!549)))))

(declare-fun _keys!709 () array!26803)

(declare-fun lt!201714 () ListLongMap!6541)

(assert (=> b!437586 (= lt!201714 (getCurrentListMapNoExtraKeys!1468 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437587 () Bool)

(declare-fun res!258295 () Bool)

(assert (=> b!437587 (=> (not res!258295) (not e!258220))))

(declare-datatypes ((List!7659 0))(
  ( (Nil!7656) (Cons!7655 (h!8511 (_ BitVec 64)) (t!13423 List!7659)) )
))
(declare-fun arrayNoDuplicates!0 (array!26803 (_ BitVec 32) List!7659) Bool)

(assert (=> b!437587 (= res!258295 (arrayNoDuplicates!0 lt!201713 #b00000000000000000000000000000000 Nil!7656))))

(declare-fun b!437588 () Bool)

(declare-fun res!258301 () Bool)

(assert (=> b!437588 (=> (not res!258301) (not e!258223))))

(assert (=> b!437588 (= res!258301 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13200 _keys!709))))))

(declare-fun b!437589 () Bool)

(declare-fun res!258298 () Bool)

(assert (=> b!437589 (=> (not res!258298) (not e!258223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26803 (_ BitVec 32)) Bool)

(assert (=> b!437589 (= res!258298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437590 () Bool)

(declare-fun res!258302 () Bool)

(assert (=> b!437590 (=> (not res!258302) (not e!258223))))

(assert (=> b!437590 (= res!258302 (or (= (select (arr!12848 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12848 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437591 () Bool)

(declare-fun e!258226 () Bool)

(declare-fun e!258225 () Bool)

(declare-fun mapRes!18876 () Bool)

(assert (=> b!437591 (= e!258226 (and e!258225 mapRes!18876))))

(declare-fun condMapEmpty!18876 () Bool)

(declare-fun mapDefault!18876 () ValueCell!5408)

