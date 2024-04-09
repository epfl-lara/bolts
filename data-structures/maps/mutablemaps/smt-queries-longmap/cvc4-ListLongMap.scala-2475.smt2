; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38680 () Bool)

(assert start!38680)

(declare-fun b_free!9209 () Bool)

(declare-fun b_next!9209 () Bool)

(assert (=> start!38680 (= b_free!9209 (not b_next!9209))))

(declare-fun tp!32750 () Bool)

(declare-fun b_and!16613 () Bool)

(assert (=> start!38680 (= tp!32750 b_and!16613)))

(declare-fun b!401593 () Bool)

(declare-fun e!242089 () Bool)

(declare-fun e!242093 () Bool)

(assert (=> b!401593 (= e!242089 e!242093)))

(declare-fun res!231289 () Bool)

(assert (=> b!401593 (=> (not res!231289) (not e!242093))))

(declare-datatypes ((array!24055 0))(
  ( (array!24056 (arr!11474 (Array (_ BitVec 32) (_ BitVec 64))) (size!11826 (_ BitVec 32))) )
))
(declare-fun lt!187814 () array!24055)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24055 (_ BitVec 32)) Bool)

(assert (=> b!401593 (= res!231289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187814 mask!1025))))

(declare-fun _keys!709 () array!24055)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!401593 (= lt!187814 (array!24056 (store (arr!11474 _keys!709) i!563 k!794) (size!11826 _keys!709)))))

(declare-fun b!401594 () Bool)

(declare-fun res!231290 () Bool)

(assert (=> b!401594 (=> (not res!231290) (not e!242089))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14559 0))(
  ( (V!14560 (val!5090 Int)) )
))
(declare-datatypes ((ValueCell!4702 0))(
  ( (ValueCellFull!4702 (v!7333 V!14559)) (EmptyCell!4702) )
))
(declare-datatypes ((array!24057 0))(
  ( (array!24058 (arr!11475 (Array (_ BitVec 32) ValueCell!4702)) (size!11827 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24057)

(assert (=> b!401594 (= res!231290 (and (= (size!11827 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11826 _keys!709) (size!11827 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401595 () Bool)

(declare-fun res!231291 () Bool)

(assert (=> b!401595 (=> (not res!231291) (not e!242089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401595 (= res!231291 (validMask!0 mask!1025))))

(declare-fun b!401596 () Bool)

(declare-fun res!231296 () Bool)

(assert (=> b!401596 (=> (not res!231296) (not e!242093))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!401596 (= res!231296 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11826 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401597 () Bool)

(declare-fun res!231295 () Bool)

(assert (=> b!401597 (=> (not res!231295) (not e!242089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401597 (= res!231295 (validKeyInArray!0 k!794))))

(declare-fun res!231299 () Bool)

(assert (=> start!38680 (=> (not res!231299) (not e!242089))))

(assert (=> start!38680 (= res!231299 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11826 _keys!709))))))

(assert (=> start!38680 e!242089))

(declare-fun tp_is_empty!10091 () Bool)

(assert (=> start!38680 tp_is_empty!10091))

(assert (=> start!38680 tp!32750))

(assert (=> start!38680 true))

(declare-fun e!242095 () Bool)

(declare-fun array_inv!8392 (array!24057) Bool)

(assert (=> start!38680 (and (array_inv!8392 _values!549) e!242095)))

(declare-fun array_inv!8393 (array!24055) Bool)

(assert (=> start!38680 (array_inv!8393 _keys!709)))

(declare-fun minValue!515 () V!14559)

(declare-fun defaultEntry!557 () Int)

(declare-fun c!54695 () Bool)

(declare-fun zeroValue!515 () V!14559)

(declare-datatypes ((tuple2!6692 0))(
  ( (tuple2!6693 (_1!3356 (_ BitVec 64)) (_2!3356 V!14559)) )
))
(declare-datatypes ((List!6640 0))(
  ( (Nil!6637) (Cons!6636 (h!7492 tuple2!6692) (t!11822 List!6640)) )
))
(declare-datatypes ((ListLongMap!5619 0))(
  ( (ListLongMap!5620 (toList!2825 List!6640)) )
))
(declare-fun call!28289 () ListLongMap!5619)

(declare-fun bm!28285 () Bool)

(declare-fun v!412 () V!14559)

(declare-fun getCurrentListMapNoExtraKeys!1039 (array!24055 array!24057 (_ BitVec 32) (_ BitVec 32) V!14559 V!14559 (_ BitVec 32) Int) ListLongMap!5619)

(assert (=> bm!28285 (= call!28289 (getCurrentListMapNoExtraKeys!1039 (ite c!54695 lt!187814 _keys!709) (ite c!54695 (array!24058 (store (arr!11475 _values!549) i!563 (ValueCellFull!4702 v!412)) (size!11827 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401598 () Bool)

(assert (=> b!401598 (= e!242093 (not true))))

(declare-fun e!242090 () Bool)

(assert (=> b!401598 e!242090))

(assert (=> b!401598 (= c!54695 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12113 0))(
  ( (Unit!12114) )
))
(declare-fun lt!187815 () Unit!12113)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!319 (array!24055 array!24057 (_ BitVec 32) (_ BitVec 32) V!14559 V!14559 (_ BitVec 32) (_ BitVec 64) V!14559 (_ BitVec 32) Int) Unit!12113)

(assert (=> b!401598 (= lt!187815 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!319 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401599 () Bool)

(declare-fun res!231300 () Bool)

(assert (=> b!401599 (=> (not res!231300) (not e!242089))))

(assert (=> b!401599 (= res!231300 (or (= (select (arr!11474 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11474 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!401600 () Bool)

(declare-fun res!231294 () Bool)

(assert (=> b!401600 (=> (not res!231294) (not e!242089))))

(declare-fun arrayContainsKey!0 (array!24055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401600 (= res!231294 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun call!28288 () ListLongMap!5619)

(declare-fun bm!28286 () Bool)

(assert (=> bm!28286 (= call!28288 (getCurrentListMapNoExtraKeys!1039 (ite c!54695 _keys!709 lt!187814) (ite c!54695 _values!549 (array!24058 (store (arr!11475 _values!549) i!563 (ValueCellFull!4702 v!412)) (size!11827 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401601 () Bool)

(assert (=> b!401601 (= e!242090 (= call!28288 call!28289))))

(declare-fun b!401602 () Bool)

(declare-fun e!242092 () Bool)

(declare-fun mapRes!16758 () Bool)

(assert (=> b!401602 (= e!242095 (and e!242092 mapRes!16758))))

(declare-fun condMapEmpty!16758 () Bool)

(declare-fun mapDefault!16758 () ValueCell!4702)

