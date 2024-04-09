; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38704 () Bool)

(assert start!38704)

(declare-fun b_free!9233 () Bool)

(declare-fun b_next!9233 () Bool)

(assert (=> start!38704 (= b_free!9233 (not b_next!9233))))

(declare-fun tp!32822 () Bool)

(declare-fun b_and!16637 () Bool)

(assert (=> start!38704 (= tp!32822 b_and!16637)))

(declare-fun b!402205 () Bool)

(declare-fun res!231724 () Bool)

(declare-fun e!242345 () Bool)

(assert (=> b!402205 (=> (not res!231724) (not e!242345))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402205 (= res!231724 (validKeyInArray!0 k!794))))

(declare-fun b!402206 () Bool)

(declare-fun res!231732 () Bool)

(assert (=> b!402206 (=> (not res!231732) (not e!242345))))

(declare-datatypes ((array!24101 0))(
  ( (array!24102 (arr!11497 (Array (_ BitVec 32) (_ BitVec 64))) (size!11849 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24101)

(declare-datatypes ((List!6660 0))(
  ( (Nil!6657) (Cons!6656 (h!7512 (_ BitVec 64)) (t!11842 List!6660)) )
))
(declare-fun arrayNoDuplicates!0 (array!24101 (_ BitVec 32) List!6660) Bool)

(assert (=> b!402206 (= res!231732 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6657))))

(declare-fun b!402207 () Bool)

(declare-fun e!242346 () Bool)

(assert (=> b!402207 (= e!242346 (not true))))

(declare-fun e!242341 () Bool)

(assert (=> b!402207 e!242341))

(declare-fun c!54731 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402207 (= c!54731 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14591 0))(
  ( (V!14592 (val!5102 Int)) )
))
(declare-fun minValue!515 () V!14591)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4714 0))(
  ( (ValueCellFull!4714 (v!7345 V!14591)) (EmptyCell!4714) )
))
(declare-datatypes ((array!24103 0))(
  ( (array!24104 (arr!11498 (Array (_ BitVec 32) ValueCell!4714)) (size!11850 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24103)

(declare-fun zeroValue!515 () V!14591)

(declare-fun v!412 () V!14591)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12127 0))(
  ( (Unit!12128) )
))
(declare-fun lt!187887 () Unit!12127)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!326 (array!24101 array!24103 (_ BitVec 32) (_ BitVec 32) V!14591 V!14591 (_ BitVec 32) (_ BitVec 64) V!14591 (_ BitVec 32) Int) Unit!12127)

(assert (=> b!402207 (= lt!187887 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!326 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402208 () Bool)

(declare-fun res!231726 () Bool)

(assert (=> b!402208 (=> (not res!231726) (not e!242345))))

(declare-fun arrayContainsKey!0 (array!24101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402208 (= res!231726 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun lt!187886 () array!24101)

(declare-fun bm!28357 () Bool)

(declare-datatypes ((tuple2!6714 0))(
  ( (tuple2!6715 (_1!3367 (_ BitVec 64)) (_2!3367 V!14591)) )
))
(declare-datatypes ((List!6661 0))(
  ( (Nil!6658) (Cons!6657 (h!7513 tuple2!6714) (t!11843 List!6661)) )
))
(declare-datatypes ((ListLongMap!5641 0))(
  ( (ListLongMap!5642 (toList!2836 List!6661)) )
))
(declare-fun call!28361 () ListLongMap!5641)

(declare-fun getCurrentListMapNoExtraKeys!1049 (array!24101 array!24103 (_ BitVec 32) (_ BitVec 32) V!14591 V!14591 (_ BitVec 32) Int) ListLongMap!5641)

(assert (=> bm!28357 (= call!28361 (getCurrentListMapNoExtraKeys!1049 (ite c!54731 _keys!709 lt!187886) (ite c!54731 _values!549 (array!24104 (store (arr!11498 _values!549) i!563 (ValueCellFull!4714 v!412)) (size!11850 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402209 () Bool)

(assert (=> b!402209 (= e!242345 e!242346)))

(declare-fun res!231727 () Bool)

(assert (=> b!402209 (=> (not res!231727) (not e!242346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24101 (_ BitVec 32)) Bool)

(assert (=> b!402209 (= res!231727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187886 mask!1025))))

(assert (=> b!402209 (= lt!187886 (array!24102 (store (arr!11497 _keys!709) i!563 k!794) (size!11849 _keys!709)))))

(declare-fun b!402210 () Bool)

(declare-fun res!231725 () Bool)

(assert (=> b!402210 (=> (not res!231725) (not e!242346))))

(assert (=> b!402210 (= res!231725 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11849 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16794 () Bool)

(declare-fun mapRes!16794 () Bool)

(assert (=> mapIsEmpty!16794 mapRes!16794))

(declare-fun b!402211 () Bool)

(declare-fun e!242347 () Bool)

(declare-fun tp_is_empty!10115 () Bool)

(assert (=> b!402211 (= e!242347 tp_is_empty!10115)))

(declare-fun b!402212 () Bool)

(declare-fun res!231729 () Bool)

(assert (=> b!402212 (=> (not res!231729) (not e!242345))))

(assert (=> b!402212 (= res!231729 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11849 _keys!709))))))

(declare-fun b!402213 () Bool)

(declare-fun e!242343 () Bool)

(assert (=> b!402213 (= e!242343 tp_is_empty!10115)))

(declare-fun b!402214 () Bool)

(declare-fun call!28360 () ListLongMap!5641)

(assert (=> b!402214 (= e!242341 (= call!28361 call!28360))))

(declare-fun b!402215 () Bool)

(declare-fun e!242344 () Bool)

(assert (=> b!402215 (= e!242344 (and e!242347 mapRes!16794))))

(declare-fun condMapEmpty!16794 () Bool)

(declare-fun mapDefault!16794 () ValueCell!4714)

