; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37580 () Bool)

(assert start!37580)

(declare-fun b_free!8699 () Bool)

(declare-fun b_next!8699 () Bool)

(assert (=> start!37580 (= b_free!8699 (not b_next!8699))))

(declare-fun tp!30812 () Bool)

(declare-fun b_and!15959 () Bool)

(assert (=> start!37580 (= tp!30812 b_and!15959)))

(declare-fun b!383761 () Bool)

(declare-fun res!218675 () Bool)

(declare-fun e!233052 () Bool)

(assert (=> b!383761 (=> (not res!218675) (not e!233052))))

(declare-datatypes ((array!22585 0))(
  ( (array!22586 (arr!10758 (Array (_ BitVec 32) (_ BitVec 64))) (size!11110 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22585)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383761 (= res!218675 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15585 () Bool)

(declare-fun mapRes!15585 () Bool)

(assert (=> mapIsEmpty!15585 mapRes!15585))

(declare-fun b!383762 () Bool)

(declare-fun res!218676 () Bool)

(assert (=> b!383762 (=> (not res!218676) (not e!233052))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383762 (= res!218676 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11110 _keys!658))))))

(declare-fun res!218673 () Bool)

(assert (=> start!37580 (=> (not res!218673) (not e!233052))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37580 (= res!218673 (validMask!0 mask!970))))

(assert (=> start!37580 e!233052))

(declare-datatypes ((V!13567 0))(
  ( (V!13568 (val!4718 Int)) )
))
(declare-datatypes ((ValueCell!4330 0))(
  ( (ValueCellFull!4330 (v!6911 V!13567)) (EmptyCell!4330) )
))
(declare-datatypes ((array!22587 0))(
  ( (array!22588 (arr!10759 (Array (_ BitVec 32) ValueCell!4330)) (size!11111 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22587)

(declare-fun e!233056 () Bool)

(declare-fun array_inv!7902 (array!22587) Bool)

(assert (=> start!37580 (and (array_inv!7902 _values!506) e!233056)))

(assert (=> start!37580 tp!30812))

(assert (=> start!37580 true))

(declare-fun tp_is_empty!9347 () Bool)

(assert (=> start!37580 tp_is_empty!9347))

(declare-fun array_inv!7903 (array!22585) Bool)

(assert (=> start!37580 (array_inv!7903 _keys!658)))

(declare-fun b!383763 () Bool)

(declare-fun res!218679 () Bool)

(assert (=> b!383763 (=> (not res!218679) (not e!233052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22585 (_ BitVec 32)) Bool)

(assert (=> b!383763 (= res!218679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383764 () Bool)

(declare-fun e!233058 () Bool)

(declare-fun e!233055 () Bool)

(assert (=> b!383764 (= e!233058 (not e!233055))))

(declare-fun res!218671 () Bool)

(assert (=> b!383764 (=> res!218671 e!233055)))

(declare-fun lt!180491 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383764 (= res!218671 (or (and (not lt!180491) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180491) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180491)))))

(assert (=> b!383764 (= lt!180491 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6304 0))(
  ( (tuple2!6305 (_1!3162 (_ BitVec 64)) (_2!3162 V!13567)) )
))
(declare-datatypes ((List!6173 0))(
  ( (Nil!6170) (Cons!6169 (h!7025 tuple2!6304) (t!11331 List!6173)) )
))
(declare-datatypes ((ListLongMap!5231 0))(
  ( (ListLongMap!5232 (toList!2631 List!6173)) )
))
(declare-fun lt!180488 () ListLongMap!5231)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13567)

(declare-fun minValue!472 () V!13567)

(declare-fun getCurrentListMap!2048 (array!22585 array!22587 (_ BitVec 32) (_ BitVec 32) V!13567 V!13567 (_ BitVec 32) Int) ListLongMap!5231)

(assert (=> b!383764 (= lt!180488 (getCurrentListMap!2048 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180486 () ListLongMap!5231)

(declare-fun lt!180493 () array!22585)

(declare-fun lt!180492 () array!22587)

(assert (=> b!383764 (= lt!180486 (getCurrentListMap!2048 lt!180493 lt!180492 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180490 () ListLongMap!5231)

(declare-fun lt!180484 () ListLongMap!5231)

(assert (=> b!383764 (and (= lt!180490 lt!180484) (= lt!180484 lt!180490))))

(declare-fun lt!180487 () ListLongMap!5231)

(declare-fun lt!180483 () tuple2!6304)

(declare-fun +!967 (ListLongMap!5231 tuple2!6304) ListLongMap!5231)

(assert (=> b!383764 (= lt!180484 (+!967 lt!180487 lt!180483))))

(declare-fun v!373 () V!13567)

(assert (=> b!383764 (= lt!180483 (tuple2!6305 k!778 v!373))))

(declare-datatypes ((Unit!11825 0))(
  ( (Unit!11826) )
))
(declare-fun lt!180489 () Unit!11825)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!199 (array!22585 array!22587 (_ BitVec 32) (_ BitVec 32) V!13567 V!13567 (_ BitVec 32) (_ BitVec 64) V!13567 (_ BitVec 32) Int) Unit!11825)

(assert (=> b!383764 (= lt!180489 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!199 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!866 (array!22585 array!22587 (_ BitVec 32) (_ BitVec 32) V!13567 V!13567 (_ BitVec 32) Int) ListLongMap!5231)

(assert (=> b!383764 (= lt!180490 (getCurrentListMapNoExtraKeys!866 lt!180493 lt!180492 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383764 (= lt!180492 (array!22588 (store (arr!10759 _values!506) i!548 (ValueCellFull!4330 v!373)) (size!11111 _values!506)))))

(assert (=> b!383764 (= lt!180487 (getCurrentListMapNoExtraKeys!866 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383765 () Bool)

(declare-fun res!218672 () Bool)

(assert (=> b!383765 (=> (not res!218672) (not e!233052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383765 (= res!218672 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15585 () Bool)

(declare-fun tp!30813 () Bool)

(declare-fun e!233057 () Bool)

(assert (=> mapNonEmpty!15585 (= mapRes!15585 (and tp!30813 e!233057))))

(declare-fun mapRest!15585 () (Array (_ BitVec 32) ValueCell!4330))

(declare-fun mapValue!15585 () ValueCell!4330)

(declare-fun mapKey!15585 () (_ BitVec 32))

(assert (=> mapNonEmpty!15585 (= (arr!10759 _values!506) (store mapRest!15585 mapKey!15585 mapValue!15585))))

(declare-fun b!383766 () Bool)

(declare-fun res!218678 () Bool)

(assert (=> b!383766 (=> (not res!218678) (not e!233052))))

(assert (=> b!383766 (= res!218678 (and (= (size!11111 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11110 _keys!658) (size!11111 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383767 () Bool)

(declare-fun e!233054 () Bool)

(assert (=> b!383767 (= e!233056 (and e!233054 mapRes!15585))))

(declare-fun condMapEmpty!15585 () Bool)

(declare-fun mapDefault!15585 () ValueCell!4330)

