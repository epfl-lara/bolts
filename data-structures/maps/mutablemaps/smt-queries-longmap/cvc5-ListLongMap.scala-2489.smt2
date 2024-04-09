; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38760 () Bool)

(assert start!38760)

(declare-fun b_free!9289 () Bool)

(declare-fun b_next!9289 () Bool)

(assert (=> start!38760 (= b_free!9289 (not b_next!9289))))

(declare-fun tp!32990 () Bool)

(declare-fun b_and!16693 () Bool)

(assert (=> start!38760 (= tp!32990 b_and!16693)))

(declare-fun b!403633 () Bool)

(declare-fun res!232732 () Bool)

(declare-fun e!242931 () Bool)

(assert (=> b!403633 (=> (not res!232732) (not e!242931))))

(declare-datatypes ((array!24211 0))(
  ( (array!24212 (arr!11552 (Array (_ BitVec 32) (_ BitVec 64))) (size!11904 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24211)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403633 (= res!232732 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun c!54815 () Bool)

(declare-datatypes ((V!14667 0))(
  ( (V!14668 (val!5130 Int)) )
))
(declare-fun minValue!515 () V!14667)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!188055 () array!24211)

(declare-datatypes ((tuple2!6768 0))(
  ( (tuple2!6769 (_1!3394 (_ BitVec 64)) (_2!3394 V!14667)) )
))
(declare-datatypes ((List!6706 0))(
  ( (Nil!6703) (Cons!6702 (h!7558 tuple2!6768) (t!11888 List!6706)) )
))
(declare-datatypes ((ListLongMap!5695 0))(
  ( (ListLongMap!5696 (toList!2863 List!6706)) )
))
(declare-fun call!28529 () ListLongMap!5695)

(declare-datatypes ((ValueCell!4742 0))(
  ( (ValueCellFull!4742 (v!7373 V!14667)) (EmptyCell!4742) )
))
(declare-datatypes ((array!24213 0))(
  ( (array!24214 (arr!11553 (Array (_ BitVec 32) ValueCell!4742)) (size!11905 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24213)

(declare-fun zeroValue!515 () V!14667)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!28525 () Bool)

(declare-fun v!412 () V!14667)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1073 (array!24211 array!24213 (_ BitVec 32) (_ BitVec 32) V!14667 V!14667 (_ BitVec 32) Int) ListLongMap!5695)

(assert (=> bm!28525 (= call!28529 (getCurrentListMapNoExtraKeys!1073 (ite c!54815 lt!188055 _keys!709) (ite c!54815 (array!24214 (store (arr!11553 _values!549) i!563 (ValueCellFull!4742 v!412)) (size!11905 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403634 () Bool)

(declare-fun e!242934 () Bool)

(assert (=> b!403634 (= e!242931 e!242934)))

(declare-fun res!232736 () Bool)

(assert (=> b!403634 (=> (not res!232736) (not e!242934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24211 (_ BitVec 32)) Bool)

(assert (=> b!403634 (= res!232736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188055 mask!1025))))

(assert (=> b!403634 (= lt!188055 (array!24212 (store (arr!11552 _keys!709) i!563 k!794) (size!11904 _keys!709)))))

(declare-fun b!403635 () Bool)

(declare-fun res!232731 () Bool)

(assert (=> b!403635 (=> (not res!232731) (not e!242931))))

(assert (=> b!403635 (= res!232731 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11904 _keys!709))))))

(declare-fun b!403636 () Bool)

(declare-fun e!242929 () Bool)

(declare-fun call!28528 () ListLongMap!5695)

(assert (=> b!403636 (= e!242929 (= call!28528 call!28529))))

(declare-fun b!403637 () Bool)

(declare-fun res!232739 () Bool)

(assert (=> b!403637 (=> (not res!232739) (not e!242931))))

(assert (=> b!403637 (= res!232739 (or (= (select (arr!11552 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11552 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!403639 () Bool)

(declare-fun res!232730 () Bool)

(assert (=> b!403639 (=> (not res!232730) (not e!242931))))

(assert (=> b!403639 (= res!232730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403640 () Bool)

(declare-fun res!232738 () Bool)

(assert (=> b!403640 (=> (not res!232738) (not e!242931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403640 (= res!232738 (validMask!0 mask!1025))))

(declare-fun b!403641 () Bool)

(declare-fun e!242930 () Bool)

(declare-fun e!242933 () Bool)

(declare-fun mapRes!16878 () Bool)

(assert (=> b!403641 (= e!242930 (and e!242933 mapRes!16878))))

(declare-fun condMapEmpty!16878 () Bool)

(declare-fun mapDefault!16878 () ValueCell!4742)

