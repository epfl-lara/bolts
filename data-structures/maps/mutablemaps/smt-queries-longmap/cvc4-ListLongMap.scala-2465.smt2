; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38620 () Bool)

(assert start!38620)

(declare-fun b_free!9149 () Bool)

(declare-fun b_next!9149 () Bool)

(assert (=> start!38620 (= b_free!9149 (not b_next!9149))))

(declare-fun tp!32570 () Bool)

(declare-fun b_and!16553 () Bool)

(assert (=> start!38620 (= tp!32570 b_and!16553)))

(declare-fun b!400063 () Bool)

(declare-fun res!230215 () Bool)

(declare-fun e!241465 () Bool)

(assert (=> b!400063 (=> (not res!230215) (not e!241465))))

(declare-datatypes ((array!23939 0))(
  ( (array!23940 (arr!11416 (Array (_ BitVec 32) (_ BitVec 64))) (size!11768 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23939)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14479 0))(
  ( (V!14480 (val!5060 Int)) )
))
(declare-datatypes ((ValueCell!4672 0))(
  ( (ValueCellFull!4672 (v!7303 V!14479)) (EmptyCell!4672) )
))
(declare-datatypes ((array!23941 0))(
  ( (array!23942 (arr!11417 (Array (_ BitVec 32) ValueCell!4672)) (size!11769 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23941)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!400063 (= res!230215 (and (= (size!11769 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11768 _keys!709) (size!11769 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400064 () Bool)

(declare-fun e!241461 () Bool)

(declare-datatypes ((tuple2!6640 0))(
  ( (tuple2!6641 (_1!3330 (_ BitVec 64)) (_2!3330 V!14479)) )
))
(declare-datatypes ((List!6594 0))(
  ( (Nil!6591) (Cons!6590 (h!7446 tuple2!6640) (t!11776 List!6594)) )
))
(declare-datatypes ((ListLongMap!5567 0))(
  ( (ListLongMap!5568 (toList!2799 List!6594)) )
))
(declare-fun call!28108 () ListLongMap!5567)

(declare-fun call!28109 () ListLongMap!5567)

(assert (=> b!400064 (= e!241461 (= call!28108 call!28109))))

(declare-fun b!400065 () Bool)

(declare-fun res!230219 () Bool)

(assert (=> b!400065 (=> (not res!230219) (not e!241465))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400065 (= res!230219 (validKeyInArray!0 k!794))))

(declare-fun b!400066 () Bool)

(declare-fun res!230213 () Bool)

(assert (=> b!400066 (=> (not res!230213) (not e!241465))))

(declare-datatypes ((List!6595 0))(
  ( (Nil!6592) (Cons!6591 (h!7447 (_ BitVec 64)) (t!11777 List!6595)) )
))
(declare-fun arrayNoDuplicates!0 (array!23939 (_ BitVec 32) List!6595) Bool)

(assert (=> b!400066 (= res!230213 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6592))))

(declare-fun b!400067 () Bool)

(declare-fun res!230218 () Bool)

(assert (=> b!400067 (=> (not res!230218) (not e!241465))))

(declare-fun arrayContainsKey!0 (array!23939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400067 (= res!230218 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!400068 () Bool)

(declare-fun res!230211 () Bool)

(assert (=> b!400068 (=> (not res!230211) (not e!241465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400068 (= res!230211 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16668 () Bool)

(declare-fun mapRes!16668 () Bool)

(declare-fun tp!32571 () Bool)

(declare-fun e!241463 () Bool)

(assert (=> mapNonEmpty!16668 (= mapRes!16668 (and tp!32571 e!241463))))

(declare-fun mapValue!16668 () ValueCell!4672)

(declare-fun mapKey!16668 () (_ BitVec 32))

(declare-fun mapRest!16668 () (Array (_ BitVec 32) ValueCell!4672))

(assert (=> mapNonEmpty!16668 (= (arr!11417 _values!549) (store mapRest!16668 mapKey!16668 mapValue!16668))))

(declare-fun b!400069 () Bool)

(declare-fun res!230216 () Bool)

(declare-fun e!241462 () Bool)

(assert (=> b!400069 (=> (not res!230216) (not e!241462))))

(declare-fun lt!187635 () array!23939)

(assert (=> b!400069 (= res!230216 (arrayNoDuplicates!0 lt!187635 #b00000000000000000000000000000000 Nil!6592))))

(declare-fun b!400070 () Bool)

(declare-fun res!230220 () Bool)

(assert (=> b!400070 (=> (not res!230220) (not e!241465))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400070 (= res!230220 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11768 _keys!709))))))

(declare-fun b!400071 () Bool)

(declare-fun res!230209 () Bool)

(assert (=> b!400071 (=> (not res!230209) (not e!241462))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!400071 (= res!230209 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11768 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400072 () Bool)

(declare-fun res!230214 () Bool)

(assert (=> b!400072 (=> (not res!230214) (not e!241465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23939 (_ BitVec 32)) Bool)

(assert (=> b!400072 (= res!230214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!28105 () Bool)

(declare-fun minValue!515 () V!14479)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!14479)

(declare-fun c!54605 () Bool)

(declare-fun v!412 () V!14479)

(declare-fun getCurrentListMapNoExtraKeys!1015 (array!23939 array!23941 (_ BitVec 32) (_ BitVec 32) V!14479 V!14479 (_ BitVec 32) Int) ListLongMap!5567)

(assert (=> bm!28105 (= call!28108 (getCurrentListMapNoExtraKeys!1015 (ite c!54605 _keys!709 lt!187635) (ite c!54605 _values!549 (array!23942 (store (arr!11417 _values!549) i!563 (ValueCellFull!4672 v!412)) (size!11769 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28106 () Bool)

(assert (=> bm!28106 (= call!28109 (getCurrentListMapNoExtraKeys!1015 (ite c!54605 lt!187635 _keys!709) (ite c!54605 (array!23942 (store (arr!11417 _values!549) i!563 (ValueCellFull!4672 v!412)) (size!11769 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!230212 () Bool)

(assert (=> start!38620 (=> (not res!230212) (not e!241465))))

(assert (=> start!38620 (= res!230212 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11768 _keys!709))))))

(assert (=> start!38620 e!241465))

(declare-fun tp_is_empty!10031 () Bool)

(assert (=> start!38620 tp_is_empty!10031))

(assert (=> start!38620 tp!32570))

(assert (=> start!38620 true))

(declare-fun e!241464 () Bool)

(declare-fun array_inv!8356 (array!23941) Bool)

(assert (=> start!38620 (and (array_inv!8356 _values!549) e!241464)))

(declare-fun array_inv!8357 (array!23939) Bool)

(assert (=> start!38620 (array_inv!8357 _keys!709)))

(declare-fun b!400073 () Bool)

(declare-fun e!241460 () Bool)

(assert (=> b!400073 (= e!241464 (and e!241460 mapRes!16668))))

(declare-fun condMapEmpty!16668 () Bool)

(declare-fun mapDefault!16668 () ValueCell!4672)

