; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37496 () Bool)

(assert start!37496)

(declare-fun b_free!8615 () Bool)

(declare-fun b_next!8615 () Bool)

(assert (=> start!37496 (= b_free!8615 (not b_next!8615))))

(declare-fun tp!30561 () Bool)

(declare-fun b_and!15875 () Bool)

(assert (=> start!37496 (= tp!30561 b_and!15875)))

(declare-fun b!381997 () Bool)

(declare-fun res!217291 () Bool)

(declare-fun e!232170 () Bool)

(assert (=> b!381997 (=> (not res!217291) (not e!232170))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22417 0))(
  ( (array!22418 (arr!10674 (Array (_ BitVec 32) (_ BitVec 64))) (size!11026 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22417)

(assert (=> b!381997 (= res!217291 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11026 _keys!658))))))

(declare-fun b!381998 () Bool)

(declare-fun e!232173 () Bool)

(declare-fun e!232176 () Bool)

(assert (=> b!381998 (= e!232173 (not e!232176))))

(declare-fun res!217293 () Bool)

(assert (=> b!381998 (=> res!217293 e!232176)))

(declare-fun lt!179232 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381998 (= res!217293 (or (and (not lt!179232) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179232) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179232)))))

(assert (=> b!381998 (= lt!179232 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13455 0))(
  ( (V!13456 (val!4676 Int)) )
))
(declare-datatypes ((ValueCell!4288 0))(
  ( (ValueCellFull!4288 (v!6869 V!13455)) (EmptyCell!4288) )
))
(declare-datatypes ((array!22419 0))(
  ( (array!22420 (arr!10675 (Array (_ BitVec 32) ValueCell!4288)) (size!11027 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22419)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6234 0))(
  ( (tuple2!6235 (_1!3127 (_ BitVec 64)) (_2!3127 V!13455)) )
))
(declare-datatypes ((List!6103 0))(
  ( (Nil!6100) (Cons!6099 (h!6955 tuple2!6234) (t!11261 List!6103)) )
))
(declare-datatypes ((ListLongMap!5161 0))(
  ( (ListLongMap!5162 (toList!2596 List!6103)) )
))
(declare-fun lt!179231 () ListLongMap!5161)

(declare-fun zeroValue!472 () V!13455)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13455)

(declare-fun getCurrentListMap!2015 (array!22417 array!22419 (_ BitVec 32) (_ BitVec 32) V!13455 V!13455 (_ BitVec 32) Int) ListLongMap!5161)

(assert (=> b!381998 (= lt!179231 (getCurrentListMap!2015 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179229 () array!22417)

(declare-fun lt!179226 () array!22419)

(declare-fun lt!179233 () ListLongMap!5161)

(assert (=> b!381998 (= lt!179233 (getCurrentListMap!2015 lt!179229 lt!179226 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179228 () ListLongMap!5161)

(declare-fun lt!179225 () ListLongMap!5161)

(assert (=> b!381998 (and (= lt!179228 lt!179225) (= lt!179225 lt!179228))))

(declare-fun v!373 () V!13455)

(declare-fun lt!179227 () ListLongMap!5161)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!933 (ListLongMap!5161 tuple2!6234) ListLongMap!5161)

(assert (=> b!381998 (= lt!179225 (+!933 lt!179227 (tuple2!6235 k!778 v!373)))))

(declare-datatypes ((Unit!11759 0))(
  ( (Unit!11760) )
))
(declare-fun lt!179230 () Unit!11759)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!166 (array!22417 array!22419 (_ BitVec 32) (_ BitVec 32) V!13455 V!13455 (_ BitVec 32) (_ BitVec 64) V!13455 (_ BitVec 32) Int) Unit!11759)

(assert (=> b!381998 (= lt!179230 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!166 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!833 (array!22417 array!22419 (_ BitVec 32) (_ BitVec 32) V!13455 V!13455 (_ BitVec 32) Int) ListLongMap!5161)

(assert (=> b!381998 (= lt!179228 (getCurrentListMapNoExtraKeys!833 lt!179229 lt!179226 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381998 (= lt!179226 (array!22420 (store (arr!10675 _values!506) i!548 (ValueCellFull!4288 v!373)) (size!11027 _values!506)))))

(assert (=> b!381998 (= lt!179227 (getCurrentListMapNoExtraKeys!833 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381999 () Bool)

(declare-fun res!217292 () Bool)

(assert (=> b!381999 (=> (not res!217292) (not e!232170))))

(declare-datatypes ((List!6104 0))(
  ( (Nil!6101) (Cons!6100 (h!6956 (_ BitVec 64)) (t!11262 List!6104)) )
))
(declare-fun arrayNoDuplicates!0 (array!22417 (_ BitVec 32) List!6104) Bool)

(assert (=> b!381999 (= res!217292 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6101))))

(declare-fun b!382001 () Bool)

(assert (=> b!382001 (= e!232170 e!232173)))

(declare-fun res!217294 () Bool)

(assert (=> b!382001 (=> (not res!217294) (not e!232173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22417 (_ BitVec 32)) Bool)

(assert (=> b!382001 (= res!217294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179229 mask!970))))

(assert (=> b!382001 (= lt!179229 (array!22418 (store (arr!10674 _keys!658) i!548 k!778) (size!11026 _keys!658)))))

(declare-fun b!382002 () Bool)

(declare-fun e!232175 () Bool)

(declare-fun tp_is_empty!9263 () Bool)

(assert (=> b!382002 (= e!232175 tp_is_empty!9263)))

(declare-fun b!382003 () Bool)

(declare-fun res!217285 () Bool)

(assert (=> b!382003 (=> (not res!217285) (not e!232170))))

(assert (=> b!382003 (= res!217285 (and (= (size!11027 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11026 _keys!658) (size!11027 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15459 () Bool)

(declare-fun mapRes!15459 () Bool)

(assert (=> mapIsEmpty!15459 mapRes!15459))

(declare-fun b!382004 () Bool)

(declare-fun e!232171 () Bool)

(assert (=> b!382004 (= e!232171 (and e!232175 mapRes!15459))))

(declare-fun condMapEmpty!15459 () Bool)

(declare-fun mapDefault!15459 () ValueCell!4288)

