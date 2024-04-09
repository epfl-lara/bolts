; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38742 () Bool)

(assert start!38742)

(declare-fun b_free!9271 () Bool)

(declare-fun b_next!9271 () Bool)

(assert (=> start!38742 (= b_free!9271 (not b_next!9271))))

(declare-fun tp!32936 () Bool)

(declare-fun b_and!16675 () Bool)

(assert (=> start!38742 (= tp!32936 b_and!16675)))

(declare-fun mapNonEmpty!16851 () Bool)

(declare-fun mapRes!16851 () Bool)

(declare-fun tp!32937 () Bool)

(declare-fun e!242745 () Bool)

(assert (=> mapNonEmpty!16851 (= mapRes!16851 (and tp!32937 e!242745))))

(declare-datatypes ((V!14643 0))(
  ( (V!14644 (val!5121 Int)) )
))
(declare-datatypes ((ValueCell!4733 0))(
  ( (ValueCellFull!4733 (v!7364 V!14643)) (EmptyCell!4733) )
))
(declare-fun mapValue!16851 () ValueCell!4733)

(declare-fun mapRest!16851 () (Array (_ BitVec 32) ValueCell!4733))

(declare-datatypes ((array!24177 0))(
  ( (array!24178 (arr!11535 (Array (_ BitVec 32) ValueCell!4733)) (size!11887 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24177)

(declare-fun mapKey!16851 () (_ BitVec 32))

(assert (=> mapNonEmpty!16851 (= (arr!11535 _values!549) (store mapRest!16851 mapKey!16851 mapValue!16851))))

(declare-datatypes ((tuple2!6752 0))(
  ( (tuple2!6753 (_1!3386 (_ BitVec 64)) (_2!3386 V!14643)) )
))
(declare-datatypes ((List!6693 0))(
  ( (Nil!6690) (Cons!6689 (h!7545 tuple2!6752) (t!11875 List!6693)) )
))
(declare-datatypes ((ListLongMap!5679 0))(
  ( (ListLongMap!5680 (toList!2855 List!6693)) )
))
(declare-fun call!28474 () ListLongMap!5679)

(declare-fun b!403174 () Bool)

(declare-fun call!28475 () ListLongMap!5679)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14643)

(declare-fun e!242741 () Bool)

(declare-fun +!1130 (ListLongMap!5679 tuple2!6752) ListLongMap!5679)

(assert (=> b!403174 (= e!242741 (= call!28474 (+!1130 call!28475 (tuple2!6753 k!794 v!412))))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28471 () Bool)

(declare-datatypes ((array!24179 0))(
  ( (array!24180 (arr!11536 (Array (_ BitVec 32) (_ BitVec 64))) (size!11888 (_ BitVec 32))) )
))
(declare-fun lt!188000 () array!24179)

(declare-fun zeroValue!515 () V!14643)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun c!54788 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!24179)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!14643)

(declare-fun getCurrentListMapNoExtraKeys!1066 (array!24179 array!24177 (_ BitVec 32) (_ BitVec 32) V!14643 V!14643 (_ BitVec 32) Int) ListLongMap!5679)

(assert (=> bm!28471 (= call!28474 (getCurrentListMapNoExtraKeys!1066 (ite c!54788 lt!188000 _keys!709) (ite c!54788 (array!24178 (store (arr!11535 _values!549) i!563 (ValueCellFull!4733 v!412)) (size!11887 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28472 () Bool)

(assert (=> bm!28472 (= call!28475 (getCurrentListMapNoExtraKeys!1066 (ite c!54788 _keys!709 lt!188000) (ite c!54788 _values!549 (array!24178 (store (arr!11535 _values!549) i!563 (ValueCellFull!4733 v!412)) (size!11887 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403175 () Bool)

(declare-fun e!242740 () Bool)

(declare-fun tp_is_empty!10153 () Bool)

(assert (=> b!403175 (= e!242740 tp_is_empty!10153)))

(declare-fun b!403176 () Bool)

(declare-fun res!232407 () Bool)

(declare-fun e!242746 () Bool)

(assert (=> b!403176 (=> (not res!232407) (not e!242746))))

(assert (=> b!403176 (= res!232407 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11888 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!403177 () Bool)

(declare-fun res!232406 () Bool)

(declare-fun e!242744 () Bool)

(assert (=> b!403177 (=> (not res!232406) (not e!242744))))

(assert (=> b!403177 (= res!232406 (and (= (size!11887 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11888 _keys!709) (size!11887 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!403178 () Bool)

(assert (=> b!403178 (= e!242744 e!242746)))

(declare-fun res!232405 () Bool)

(assert (=> b!403178 (=> (not res!232405) (not e!242746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24179 (_ BitVec 32)) Bool)

(assert (=> b!403178 (= res!232405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188000 mask!1025))))

(assert (=> b!403178 (= lt!188000 (array!24180 (store (arr!11536 _keys!709) i!563 k!794) (size!11888 _keys!709)))))

(declare-fun mapIsEmpty!16851 () Bool)

(assert (=> mapIsEmpty!16851 mapRes!16851))

(declare-fun b!403179 () Bool)

(declare-fun res!232408 () Bool)

(assert (=> b!403179 (=> (not res!232408) (not e!242744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403179 (= res!232408 (validKeyInArray!0 k!794))))

(declare-fun b!403180 () Bool)

(declare-fun e!242742 () Bool)

(assert (=> b!403180 (= e!242742 (and e!242740 mapRes!16851))))

(declare-fun condMapEmpty!16851 () Bool)

(declare-fun mapDefault!16851 () ValueCell!4733)

