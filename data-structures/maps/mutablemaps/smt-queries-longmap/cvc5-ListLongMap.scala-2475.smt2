; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38676 () Bool)

(assert start!38676)

(declare-fun b_free!9205 () Bool)

(declare-fun b_next!9205 () Bool)

(assert (=> start!38676 (= b_free!9205 (not b_next!9205))))

(declare-fun tp!32739 () Bool)

(declare-fun b_and!16609 () Bool)

(assert (=> start!38676 (= tp!32739 b_and!16609)))

(declare-fun b!401491 () Bool)

(declare-fun res!231227 () Bool)

(declare-fun e!242051 () Bool)

(assert (=> b!401491 (=> (not res!231227) (not e!242051))))

(declare-datatypes ((array!24047 0))(
  ( (array!24048 (arr!11470 (Array (_ BitVec 32) (_ BitVec 64))) (size!11822 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24047)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!401491 (= res!231227 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11822 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16752 () Bool)

(declare-fun mapRes!16752 () Bool)

(assert (=> mapIsEmpty!16752 mapRes!16752))

(declare-fun b!401492 () Bool)

(declare-fun e!242049 () Bool)

(declare-fun tp_is_empty!10087 () Bool)

(assert (=> b!401492 (= e!242049 tp_is_empty!10087)))

(declare-fun b!401493 () Bool)

(declare-fun res!231226 () Bool)

(declare-fun e!242050 () Bool)

(assert (=> b!401493 (=> (not res!231226) (not e!242050))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401493 (= res!231226 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14555 0))(
  ( (V!14556 (val!5088 Int)) )
))
(declare-datatypes ((ValueCell!4700 0))(
  ( (ValueCellFull!4700 (v!7331 V!14555)) (EmptyCell!4700) )
))
(declare-datatypes ((array!24049 0))(
  ( (array!24050 (arr!11471 (Array (_ BitVec 32) ValueCell!4700)) (size!11823 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24049)

(declare-fun bm!28273 () Bool)

(declare-fun zeroValue!515 () V!14555)

(declare-fun v!412 () V!14555)

(declare-fun minValue!515 () V!14555)

(declare-fun lt!187802 () array!24047)

(declare-datatypes ((tuple2!6688 0))(
  ( (tuple2!6689 (_1!3354 (_ BitVec 64)) (_2!3354 V!14555)) )
))
(declare-datatypes ((List!6637 0))(
  ( (Nil!6634) (Cons!6633 (h!7489 tuple2!6688) (t!11819 List!6637)) )
))
(declare-datatypes ((ListLongMap!5615 0))(
  ( (ListLongMap!5616 (toList!2823 List!6637)) )
))
(declare-fun call!28276 () ListLongMap!5615)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun c!54689 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1037 (array!24047 array!24049 (_ BitVec 32) (_ BitVec 32) V!14555 V!14555 (_ BitVec 32) Int) ListLongMap!5615)

(assert (=> bm!28273 (= call!28276 (getCurrentListMapNoExtraKeys!1037 (ite c!54689 _keys!709 lt!187802) (ite c!54689 _values!549 (array!24050 (store (arr!11471 _values!549) i!563 (ValueCellFull!4700 v!412)) (size!11823 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401494 () Bool)

(declare-fun res!231224 () Bool)

(assert (=> b!401494 (=> (not res!231224) (not e!242050))))

(assert (=> b!401494 (= res!231224 (or (= (select (arr!11470 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11470 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!401495 () Bool)

(assert (=> b!401495 (= e!242051 (not true))))

(declare-fun e!242048 () Bool)

(assert (=> b!401495 e!242048))

(assert (=> b!401495 (= c!54689 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12109 0))(
  ( (Unit!12110) )
))
(declare-fun lt!187803 () Unit!12109)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!317 (array!24047 array!24049 (_ BitVec 32) (_ BitVec 32) V!14555 V!14555 (_ BitVec 32) (_ BitVec 64) V!14555 (_ BitVec 32) Int) Unit!12109)

(assert (=> b!401495 (= lt!187803 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!317 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401496 () Bool)

(declare-fun res!231222 () Bool)

(assert (=> b!401496 (=> (not res!231222) (not e!242050))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401496 (= res!231222 (validKeyInArray!0 k!794))))

(declare-fun b!401497 () Bool)

(declare-fun call!28277 () ListLongMap!5615)

(assert (=> b!401497 (= e!242048 (= call!28276 call!28277))))

(declare-fun b!401498 () Bool)

(declare-fun res!231221 () Bool)

(assert (=> b!401498 (=> (not res!231221) (not e!242050))))

(assert (=> b!401498 (= res!231221 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11822 _keys!709))))))

(declare-fun b!401499 () Bool)

(declare-fun res!231218 () Bool)

(assert (=> b!401499 (=> (not res!231218) (not e!242050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24047 (_ BitVec 32)) Bool)

(assert (=> b!401499 (= res!231218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16752 () Bool)

(declare-fun tp!32738 () Bool)

(assert (=> mapNonEmpty!16752 (= mapRes!16752 (and tp!32738 e!242049))))

(declare-fun mapKey!16752 () (_ BitVec 32))

(declare-fun mapRest!16752 () (Array (_ BitVec 32) ValueCell!4700))

(declare-fun mapValue!16752 () ValueCell!4700)

(assert (=> mapNonEmpty!16752 (= (arr!11471 _values!549) (store mapRest!16752 mapKey!16752 mapValue!16752))))

(declare-fun b!401500 () Bool)

(declare-fun e!242047 () Bool)

(declare-fun e!242052 () Bool)

(assert (=> b!401500 (= e!242047 (and e!242052 mapRes!16752))))

(declare-fun condMapEmpty!16752 () Bool)

(declare-fun mapDefault!16752 () ValueCell!4700)

