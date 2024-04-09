; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20410 () Bool)

(assert start!20410)

(declare-fun b_free!5057 () Bool)

(declare-fun b_next!5057 () Bool)

(assert (=> start!20410 (= b_free!5057 (not b_next!5057))))

(declare-fun tp!18203 () Bool)

(declare-fun b_and!11821 () Bool)

(assert (=> start!20410 (= tp!18203 b_and!11821)))

(declare-fun b!201610 () Bool)

(declare-fun e!132128 () Bool)

(assert (=> b!201610 (= e!132128 true)))

(declare-datatypes ((V!6197 0))(
  ( (V!6198 (val!2501 Int)) )
))
(declare-datatypes ((tuple2!3784 0))(
  ( (tuple2!3785 (_1!1902 (_ BitVec 64)) (_2!1902 V!6197)) )
))
(declare-datatypes ((List!2720 0))(
  ( (Nil!2717) (Cons!2716 (h!3358 tuple2!3784) (t!7659 List!2720)) )
))
(declare-datatypes ((ListLongMap!2711 0))(
  ( (ListLongMap!2712 (toList!1371 List!2720)) )
))
(declare-fun lt!100693 () ListLongMap!2711)

(declare-fun lt!100692 () ListLongMap!2711)

(declare-fun lt!100689 () tuple2!3784)

(declare-fun lt!100680 () tuple2!3784)

(declare-fun +!388 (ListLongMap!2711 tuple2!3784) ListLongMap!2711)

(assert (=> b!201610 (= (+!388 lt!100693 lt!100680) (+!388 lt!100692 lt!100689))))

(declare-fun minValue!615 () V!6197)

(declare-datatypes ((Unit!6083 0))(
  ( (Unit!6084) )
))
(declare-fun lt!100682 () Unit!6083)

(declare-fun v!520 () V!6197)

(declare-fun lt!100683 () ListLongMap!2711)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!109 (ListLongMap!2711 (_ BitVec 64) V!6197 (_ BitVec 64) V!6197) Unit!6083)

(assert (=> b!201610 (= lt!100682 (addCommutativeForDiffKeys!109 lt!100683 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8438 () Bool)

(declare-fun mapRes!8438 () Bool)

(assert (=> mapIsEmpty!8438 mapRes!8438))

(declare-fun b!201611 () Bool)

(declare-fun res!96408 () Bool)

(declare-fun e!132131 () Bool)

(assert (=> b!201611 (=> (not res!96408) (not e!132131))))

(declare-datatypes ((array!9054 0))(
  ( (array!9055 (arr!4277 (Array (_ BitVec 32) (_ BitVec 64))) (size!4602 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9054)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9054 (_ BitVec 32)) Bool)

(assert (=> b!201611 (= res!96408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8438 () Bool)

(declare-fun tp!18202 () Bool)

(declare-fun e!132127 () Bool)

(assert (=> mapNonEmpty!8438 (= mapRes!8438 (and tp!18202 e!132127))))

(declare-datatypes ((ValueCell!2113 0))(
  ( (ValueCellFull!2113 (v!4467 V!6197)) (EmptyCell!2113) )
))
(declare-fun mapValue!8438 () ValueCell!2113)

(declare-fun mapKey!8438 () (_ BitVec 32))

(declare-datatypes ((array!9056 0))(
  ( (array!9057 (arr!4278 (Array (_ BitVec 32) ValueCell!2113)) (size!4603 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9056)

(declare-fun mapRest!8438 () (Array (_ BitVec 32) ValueCell!2113))

(assert (=> mapNonEmpty!8438 (= (arr!4278 _values!649) (store mapRest!8438 mapKey!8438 mapValue!8438))))

(declare-fun b!201612 () Bool)

(declare-fun tp_is_empty!4913 () Bool)

(assert (=> b!201612 (= e!132127 tp_is_empty!4913)))

(declare-fun b!201613 () Bool)

(declare-fun e!132130 () Bool)

(assert (=> b!201613 (= e!132130 e!132128)))

(declare-fun res!96415 () Bool)

(assert (=> b!201613 (=> res!96415 e!132128)))

(assert (=> b!201613 (= res!96415 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100690 () ListLongMap!2711)

(assert (=> b!201613 (= lt!100690 lt!100693)))

(assert (=> b!201613 (= lt!100693 (+!388 lt!100683 lt!100689))))

(declare-fun lt!100691 () Unit!6083)

(declare-fun zeroValue!615 () V!6197)

(declare-fun lt!100678 () ListLongMap!2711)

(assert (=> b!201613 (= lt!100691 (addCommutativeForDiffKeys!109 lt!100678 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100687 () ListLongMap!2711)

(assert (=> b!201613 (= lt!100687 (+!388 lt!100690 lt!100680))))

(declare-fun lt!100679 () ListLongMap!2711)

(declare-fun lt!100686 () tuple2!3784)

(assert (=> b!201613 (= lt!100690 (+!388 lt!100679 lt!100686))))

(declare-fun lt!100684 () ListLongMap!2711)

(assert (=> b!201613 (= lt!100684 lt!100692)))

(assert (=> b!201613 (= lt!100692 (+!388 lt!100683 lt!100680))))

(assert (=> b!201613 (= lt!100683 (+!388 lt!100678 lt!100686))))

(declare-fun lt!100685 () ListLongMap!2711)

(assert (=> b!201613 (= lt!100687 (+!388 (+!388 lt!100685 lt!100686) lt!100680))))

(assert (=> b!201613 (= lt!100680 (tuple2!3785 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201613 (= lt!100686 (tuple2!3785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201614 () Bool)

(declare-fun e!132132 () Bool)

(declare-fun e!132129 () Bool)

(assert (=> b!201614 (= e!132132 (and e!132129 mapRes!8438))))

(declare-fun condMapEmpty!8438 () Bool)

(declare-fun mapDefault!8438 () ValueCell!2113)

