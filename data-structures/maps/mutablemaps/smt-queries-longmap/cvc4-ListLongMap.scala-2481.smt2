; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38716 () Bool)

(assert start!38716)

(declare-fun b_free!9245 () Bool)

(declare-fun b_next!9245 () Bool)

(assert (=> start!38716 (= b_free!9245 (not b_next!9245))))

(declare-fun tp!32859 () Bool)

(declare-fun b_and!16649 () Bool)

(assert (=> start!38716 (= tp!32859 b_and!16649)))

(declare-fun res!231945 () Bool)

(declare-fun e!242470 () Bool)

(assert (=> start!38716 (=> (not res!231945) (not e!242470))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24125 0))(
  ( (array!24126 (arr!11509 (Array (_ BitVec 32) (_ BitVec 64))) (size!11861 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24125)

(assert (=> start!38716 (= res!231945 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11861 _keys!709))))))

(assert (=> start!38716 e!242470))

(declare-fun tp_is_empty!10127 () Bool)

(assert (=> start!38716 tp_is_empty!10127))

(assert (=> start!38716 tp!32859))

(assert (=> start!38716 true))

(declare-datatypes ((V!14607 0))(
  ( (V!14608 (val!5108 Int)) )
))
(declare-datatypes ((ValueCell!4720 0))(
  ( (ValueCellFull!4720 (v!7351 V!14607)) (EmptyCell!4720) )
))
(declare-datatypes ((array!24127 0))(
  ( (array!24128 (arr!11510 (Array (_ BitVec 32) ValueCell!4720)) (size!11862 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24127)

(declare-fun e!242469 () Bool)

(declare-fun array_inv!8412 (array!24127) Bool)

(assert (=> start!38716 (and (array_inv!8412 _values!549) e!242469)))

(declare-fun array_inv!8413 (array!24125) Bool)

(assert (=> start!38716 (array_inv!8413 _keys!709)))

(declare-fun b!402511 () Bool)

(declare-fun res!231942 () Bool)

(assert (=> b!402511 (=> (not res!231942) (not e!242470))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402511 (= res!231942 (or (= (select (arr!11509 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11509 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402512 () Bool)

(declare-fun res!231944 () Bool)

(assert (=> b!402512 (=> (not res!231944) (not e!242470))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24125 (_ BitVec 32)) Bool)

(assert (=> b!402512 (= res!231944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16812 () Bool)

(declare-fun mapRes!16812 () Bool)

(declare-fun tp!32858 () Bool)

(declare-fun e!242472 () Bool)

(assert (=> mapNonEmpty!16812 (= mapRes!16812 (and tp!32858 e!242472))))

(declare-fun mapValue!16812 () ValueCell!4720)

(declare-fun mapKey!16812 () (_ BitVec 32))

(declare-fun mapRest!16812 () (Array (_ BitVec 32) ValueCell!4720))

(assert (=> mapNonEmpty!16812 (= (arr!11510 _values!549) (store mapRest!16812 mapKey!16812 mapValue!16812))))

(declare-datatypes ((tuple2!6726 0))(
  ( (tuple2!6727 (_1!3373 (_ BitVec 64)) (_2!3373 V!14607)) )
))
(declare-datatypes ((List!6671 0))(
  ( (Nil!6668) (Cons!6667 (h!7523 tuple2!6726) (t!11853 List!6671)) )
))
(declare-datatypes ((ListLongMap!5653 0))(
  ( (ListLongMap!5654 (toList!2842 List!6671)) )
))
(declare-fun call!28396 () ListLongMap!5653)

(declare-fun call!28397 () ListLongMap!5653)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!402513 () Bool)

(declare-fun v!412 () V!14607)

(declare-fun e!242468 () Bool)

(declare-fun +!1120 (ListLongMap!5653 tuple2!6726) ListLongMap!5653)

(assert (=> b!402513 (= e!242468 (= call!28396 (+!1120 call!28397 (tuple2!6727 k!794 v!412))))))

(declare-fun lt!187923 () array!24125)

(declare-fun minValue!515 () V!14607)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28393 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun c!54749 () Bool)

(declare-fun zeroValue!515 () V!14607)

(declare-fun getCurrentListMapNoExtraKeys!1053 (array!24125 array!24127 (_ BitVec 32) (_ BitVec 32) V!14607 V!14607 (_ BitVec 32) Int) ListLongMap!5653)

(assert (=> bm!28393 (= call!28396 (getCurrentListMapNoExtraKeys!1053 (ite c!54749 lt!187923 _keys!709) (ite c!54749 (array!24128 (store (arr!11510 _values!549) i!563 (ValueCellFull!4720 v!412)) (size!11862 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402514 () Bool)

(declare-fun res!231939 () Bool)

(assert (=> b!402514 (=> (not res!231939) (not e!242470))))

(assert (=> b!402514 (= res!231939 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11861 _keys!709))))))

(declare-fun mapIsEmpty!16812 () Bool)

(assert (=> mapIsEmpty!16812 mapRes!16812))

(declare-fun b!402515 () Bool)

(assert (=> b!402515 (= e!242468 (= call!28397 call!28396))))

(declare-fun b!402516 () Bool)

(declare-fun res!231948 () Bool)

(assert (=> b!402516 (=> (not res!231948) (not e!242470))))

(declare-fun arrayContainsKey!0 (array!24125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402516 (= res!231948 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!402517 () Bool)

(declare-fun res!231937 () Bool)

(assert (=> b!402517 (=> (not res!231937) (not e!242470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402517 (= res!231937 (validMask!0 mask!1025))))

(declare-fun bm!28394 () Bool)

(assert (=> bm!28394 (= call!28397 (getCurrentListMapNoExtraKeys!1053 (ite c!54749 _keys!709 lt!187923) (ite c!54749 _values!549 (array!24128 (store (arr!11510 _values!549) i!563 (ValueCellFull!4720 v!412)) (size!11862 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402518 () Bool)

(declare-fun e!242467 () Bool)

(assert (=> b!402518 (= e!242469 (and e!242467 mapRes!16812))))

(declare-fun condMapEmpty!16812 () Bool)

(declare-fun mapDefault!16812 () ValueCell!4720)

