; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38764 () Bool)

(assert start!38764)

(declare-fun b_free!9293 () Bool)

(declare-fun b_next!9293 () Bool)

(assert (=> start!38764 (= b_free!9293 (not b_next!9293))))

(declare-fun tp!33003 () Bool)

(declare-fun b_and!16697 () Bool)

(assert (=> start!38764 (= tp!33003 b_and!16697)))

(declare-fun mapIsEmpty!16884 () Bool)

(declare-fun mapRes!16884 () Bool)

(assert (=> mapIsEmpty!16884 mapRes!16884))

(declare-fun b!403735 () Bool)

(declare-fun e!242973 () Bool)

(declare-datatypes ((V!14671 0))(
  ( (V!14672 (val!5132 Int)) )
))
(declare-datatypes ((tuple2!6772 0))(
  ( (tuple2!6773 (_1!3396 (_ BitVec 64)) (_2!3396 V!14671)) )
))
(declare-datatypes ((List!6709 0))(
  ( (Nil!6706) (Cons!6705 (h!7561 tuple2!6772) (t!11891 List!6709)) )
))
(declare-datatypes ((ListLongMap!5699 0))(
  ( (ListLongMap!5700 (toList!2865 List!6709)) )
))
(declare-fun call!28541 () ListLongMap!5699)

(declare-fun call!28540 () ListLongMap!5699)

(assert (=> b!403735 (= e!242973 (= call!28541 call!28540))))

(declare-fun b!403736 () Bool)

(declare-fun res!232808 () Bool)

(declare-fun e!242972 () Bool)

(assert (=> b!403736 (=> (not res!232808) (not e!242972))))

(declare-datatypes ((array!24219 0))(
  ( (array!24220 (arr!11556 (Array (_ BitVec 32) (_ BitVec 64))) (size!11908 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24219)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403736 (= res!232808 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!403737 () Bool)

(declare-fun res!232805 () Bool)

(assert (=> b!403737 (=> (not res!232805) (not e!242972))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4744 0))(
  ( (ValueCellFull!4744 (v!7375 V!14671)) (EmptyCell!4744) )
))
(declare-datatypes ((array!24221 0))(
  ( (array!24222 (arr!11557 (Array (_ BitVec 32) ValueCell!4744)) (size!11909 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24221)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!403737 (= res!232805 (and (= (size!11909 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11908 _keys!709) (size!11909 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16884 () Bool)

(declare-fun tp!33002 () Bool)

(declare-fun e!242977 () Bool)

(assert (=> mapNonEmpty!16884 (= mapRes!16884 (and tp!33002 e!242977))))

(declare-fun mapValue!16884 () ValueCell!4744)

(declare-fun mapKey!16884 () (_ BitVec 32))

(declare-fun mapRest!16884 () (Array (_ BitVec 32) ValueCell!4744))

(assert (=> mapNonEmpty!16884 (= (arr!11557 _values!549) (store mapRest!16884 mapKey!16884 mapValue!16884))))

(declare-fun b!403738 () Bool)

(declare-fun res!232810 () Bool)

(declare-fun e!242971 () Bool)

(assert (=> b!403738 (=> (not res!232810) (not e!242971))))

(declare-fun lt!188067 () array!24219)

(declare-datatypes ((List!6710 0))(
  ( (Nil!6707) (Cons!6706 (h!7562 (_ BitVec 64)) (t!11892 List!6710)) )
))
(declare-fun arrayNoDuplicates!0 (array!24219 (_ BitVec 32) List!6710) Bool)

(assert (=> b!403738 (= res!232810 (arrayNoDuplicates!0 lt!188067 #b00000000000000000000000000000000 Nil!6707))))

(declare-fun res!232803 () Bool)

(assert (=> start!38764 (=> (not res!232803) (not e!242972))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38764 (= res!232803 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11908 _keys!709))))))

(assert (=> start!38764 e!242972))

(declare-fun tp_is_empty!10175 () Bool)

(assert (=> start!38764 tp_is_empty!10175))

(assert (=> start!38764 tp!33003))

(assert (=> start!38764 true))

(declare-fun e!242975 () Bool)

(declare-fun array_inv!8442 (array!24221) Bool)

(assert (=> start!38764 (and (array_inv!8442 _values!549) e!242975)))

(declare-fun array_inv!8443 (array!24219) Bool)

(assert (=> start!38764 (array_inv!8443 _keys!709)))

(declare-fun b!403739 () Bool)

(declare-fun res!232809 () Bool)

(assert (=> b!403739 (=> (not res!232809) (not e!242972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24219 (_ BitVec 32)) Bool)

(assert (=> b!403739 (= res!232809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403740 () Bool)

(declare-fun res!232804 () Bool)

(assert (=> b!403740 (=> (not res!232804) (not e!242972))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!403740 (= res!232804 (or (= (select (arr!11556 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11556 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!403741 () Bool)

(declare-fun e!242974 () Bool)

(assert (=> b!403741 (= e!242974 tp_is_empty!10175)))

(declare-fun b!403742 () Bool)

(assert (=> b!403742 (= e!242972 e!242971)))

(declare-fun res!232812 () Bool)

(assert (=> b!403742 (=> (not res!232812) (not e!242971))))

(assert (=> b!403742 (= res!232812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188067 mask!1025))))

(assert (=> b!403742 (= lt!188067 (array!24220 (store (arr!11556 _keys!709) i!563 k!794) (size!11908 _keys!709)))))

(declare-fun b!403743 () Bool)

(declare-fun res!232811 () Bool)

(assert (=> b!403743 (=> (not res!232811) (not e!242971))))

(assert (=> b!403743 (= res!232811 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11908 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!403744 () Bool)

(declare-fun res!232802 () Bool)

(assert (=> b!403744 (=> (not res!232802) (not e!242972))))

(assert (=> b!403744 (= res!232802 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11908 _keys!709))))))

(declare-fun b!403745 () Bool)

(assert (=> b!403745 (= e!242977 tp_is_empty!10175)))

(declare-fun c!54821 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!14671)

(declare-fun v!412 () V!14671)

(declare-fun minValue!515 () V!14671)

(declare-fun bm!28537 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1075 (array!24219 array!24221 (_ BitVec 32) (_ BitVec 32) V!14671 V!14671 (_ BitVec 32) Int) ListLongMap!5699)

(assert (=> bm!28537 (= call!28540 (getCurrentListMapNoExtraKeys!1075 (ite c!54821 lt!188067 _keys!709) (ite c!54821 (array!24222 (store (arr!11557 _values!549) i!563 (ValueCellFull!4744 v!412)) (size!11909 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28538 () Bool)

(assert (=> bm!28538 (= call!28541 (getCurrentListMapNoExtraKeys!1075 (ite c!54821 _keys!709 lt!188067) (ite c!54821 _values!549 (array!24222 (store (arr!11557 _values!549) i!563 (ValueCellFull!4744 v!412)) (size!11909 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403746 () Bool)

(assert (=> b!403746 (= e!242971 (not true))))

(assert (=> b!403746 e!242973))

(assert (=> b!403746 (= c!54821 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12169 0))(
  ( (Unit!12170) )
))
(declare-fun lt!188066 () Unit!12169)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!347 (array!24219 array!24221 (_ BitVec 32) (_ BitVec 32) V!14671 V!14671 (_ BitVec 32) (_ BitVec 64) V!14671 (_ BitVec 32) Int) Unit!12169)

(assert (=> b!403746 (= lt!188066 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!347 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403747 () Bool)

(declare-fun res!232806 () Bool)

(assert (=> b!403747 (=> (not res!232806) (not e!242972))))

(assert (=> b!403747 (= res!232806 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6707))))

(declare-fun b!403748 () Bool)

(assert (=> b!403748 (= e!242975 (and e!242974 mapRes!16884))))

(declare-fun condMapEmpty!16884 () Bool)

(declare-fun mapDefault!16884 () ValueCell!4744)

