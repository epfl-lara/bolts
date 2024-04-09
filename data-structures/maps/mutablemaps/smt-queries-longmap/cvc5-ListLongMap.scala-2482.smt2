; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38718 () Bool)

(assert start!38718)

(declare-fun b_free!9247 () Bool)

(declare-fun b_next!9247 () Bool)

(assert (=> start!38718 (= b_free!9247 (not b_next!9247))))

(declare-fun tp!32864 () Bool)

(declare-fun b_and!16651 () Bool)

(assert (=> start!38718 (= tp!32864 b_and!16651)))

(declare-fun b!402562 () Bool)

(declare-fun res!231981 () Bool)

(declare-fun e!242490 () Bool)

(assert (=> b!402562 (=> (not res!231981) (not e!242490))))

(declare-datatypes ((array!24129 0))(
  ( (array!24130 (arr!11511 (Array (_ BitVec 32) (_ BitVec 64))) (size!11863 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24129)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402562 (= res!231981 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-datatypes ((V!14611 0))(
  ( (V!14612 (val!5109 Int)) )
))
(declare-datatypes ((tuple2!6728 0))(
  ( (tuple2!6729 (_1!3374 (_ BitVec 64)) (_2!3374 V!14611)) )
))
(declare-datatypes ((List!6672 0))(
  ( (Nil!6669) (Cons!6668 (h!7524 tuple2!6728) (t!11854 List!6672)) )
))
(declare-datatypes ((ListLongMap!5655 0))(
  ( (ListLongMap!5656 (toList!2843 List!6672)) )
))
(declare-fun call!28403 () ListLongMap!5655)

(declare-fun minValue!515 () V!14611)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4721 0))(
  ( (ValueCellFull!4721 (v!7352 V!14611)) (EmptyCell!4721) )
))
(declare-datatypes ((array!24131 0))(
  ( (array!24132 (arr!11512 (Array (_ BitVec 32) ValueCell!4721)) (size!11864 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24131)

(declare-fun c!54752 () Bool)

(declare-fun zeroValue!515 () V!14611)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!28399 () Bool)

(declare-fun v!412 () V!14611)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!187929 () array!24129)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1054 (array!24129 array!24131 (_ BitVec 32) (_ BitVec 32) V!14611 V!14611 (_ BitVec 32) Int) ListLongMap!5655)

(assert (=> bm!28399 (= call!28403 (getCurrentListMapNoExtraKeys!1054 (ite c!54752 _keys!709 lt!187929) (ite c!54752 _values!549 (array!24132 (store (arr!11512 _values!549) i!563 (ValueCellFull!4721 v!412)) (size!11864 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402563 () Bool)

(declare-fun e!242488 () Bool)

(declare-fun call!28402 () ListLongMap!5655)

(assert (=> b!402563 (= e!242488 (= call!28403 call!28402))))

(declare-fun b!402564 () Bool)

(declare-fun e!242494 () Bool)

(declare-fun e!242491 () Bool)

(declare-fun mapRes!16815 () Bool)

(assert (=> b!402564 (= e!242494 (and e!242491 mapRes!16815))))

(declare-fun condMapEmpty!16815 () Bool)

(declare-fun mapDefault!16815 () ValueCell!4721)

