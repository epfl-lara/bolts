; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41020 () Bool)

(assert start!41020)

(declare-fun b_free!10947 () Bool)

(declare-fun b_next!10947 () Bool)

(assert (=> start!41020 (= b_free!10947 (not b_next!10947))))

(declare-fun tp!38667 () Bool)

(declare-fun b_and!19107 () Bool)

(assert (=> start!41020 (= tp!38667 b_and!19107)))

(declare-fun b!456801 () Bool)

(declare-fun e!266836 () Bool)

(declare-fun e!266839 () Bool)

(assert (=> b!456801 (= e!266836 e!266839)))

(declare-fun res!272783 () Bool)

(assert (=> b!456801 (=> (not res!272783) (not e!266839))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456801 (= res!272783 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17485 0))(
  ( (V!17486 (val!6187 Int)) )
))
(declare-fun minValue!515 () V!17485)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17485)

(declare-datatypes ((tuple2!8114 0))(
  ( (tuple2!8115 (_1!4067 (_ BitVec 64)) (_2!4067 V!17485)) )
))
(declare-datatypes ((List!8217 0))(
  ( (Nil!8214) (Cons!8213 (h!9069 tuple2!8114) (t!14053 List!8217)) )
))
(declare-datatypes ((ListLongMap!7041 0))(
  ( (ListLongMap!7042 (toList!3536 List!8217)) )
))
(declare-fun lt!206681 () ListLongMap!7041)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5799 0))(
  ( (ValueCellFull!5799 (v!8449 V!17485)) (EmptyCell!5799) )
))
(declare-datatypes ((array!28337 0))(
  ( (array!28338 (arr!13609 (Array (_ BitVec 32) ValueCell!5799)) (size!13961 (_ BitVec 32))) )
))
(declare-fun lt!206682 () array!28337)

(declare-datatypes ((array!28339 0))(
  ( (array!28340 (arr!13610 (Array (_ BitVec 32) (_ BitVec 64))) (size!13962 (_ BitVec 32))) )
))
(declare-fun lt!206678 () array!28339)

(declare-fun getCurrentListMapNoExtraKeys!1712 (array!28339 array!28337 (_ BitVec 32) (_ BitVec 32) V!17485 V!17485 (_ BitVec 32) Int) ListLongMap!7041)

(assert (=> b!456801 (= lt!206681 (getCurrentListMapNoExtraKeys!1712 lt!206678 lt!206682 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28337)

(declare-fun v!412 () V!17485)

(assert (=> b!456801 (= lt!206682 (array!28338 (store (arr!13609 _values!549) i!563 (ValueCellFull!5799 v!412)) (size!13961 _values!549)))))

(declare-fun _keys!709 () array!28339)

(declare-fun lt!206679 () ListLongMap!7041)

(assert (=> b!456801 (= lt!206679 (getCurrentListMapNoExtraKeys!1712 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456802 () Bool)

(declare-fun res!272784 () Bool)

(declare-fun e!266833 () Bool)

(assert (=> b!456802 (=> (not res!272784) (not e!266833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456802 (= res!272784 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!20068 () Bool)

(declare-fun mapRes!20068 () Bool)

(assert (=> mapIsEmpty!20068 mapRes!20068))

(declare-fun b!456803 () Bool)

(declare-fun res!272781 () Bool)

(assert (=> b!456803 (=> (not res!272781) (not e!266833))))

(assert (=> b!456803 (= res!272781 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13962 _keys!709))))))

(declare-fun b!456804 () Bool)

(declare-fun res!272790 () Bool)

(assert (=> b!456804 (=> (not res!272790) (not e!266833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28339 (_ BitVec 32)) Bool)

(assert (=> b!456804 (= res!272790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456805 () Bool)

(declare-fun e!266838 () Bool)

(assert (=> b!456805 (= e!266839 (not e!266838))))

(declare-fun res!272791 () Bool)

(assert (=> b!456805 (=> res!272791 e!266838)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456805 (= res!272791 (not (validKeyInArray!0 (select (arr!13610 _keys!709) from!863))))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun +!1556 (ListLongMap!7041 tuple2!8114) ListLongMap!7041)

(assert (=> b!456805 (= (getCurrentListMapNoExtraKeys!1712 lt!206678 lt!206682 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1556 (getCurrentListMapNoExtraKeys!1712 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8115 k0!794 v!412)))))

(declare-datatypes ((Unit!13237 0))(
  ( (Unit!13238) )
))
(declare-fun lt!206680 () Unit!13237)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!721 (array!28339 array!28337 (_ BitVec 32) (_ BitVec 32) V!17485 V!17485 (_ BitVec 32) (_ BitVec 64) V!17485 (_ BitVec 32) Int) Unit!13237)

(assert (=> b!456805 (= lt!206680 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!721 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!272786 () Bool)

(assert (=> start!41020 (=> (not res!272786) (not e!266833))))

(assert (=> start!41020 (= res!272786 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13962 _keys!709))))))

(assert (=> start!41020 e!266833))

(declare-fun tp_is_empty!12285 () Bool)

(assert (=> start!41020 tp_is_empty!12285))

(assert (=> start!41020 tp!38667))

(assert (=> start!41020 true))

(declare-fun e!266835 () Bool)

(declare-fun array_inv!9846 (array!28337) Bool)

(assert (=> start!41020 (and (array_inv!9846 _values!549) e!266835)))

(declare-fun array_inv!9847 (array!28339) Bool)

(assert (=> start!41020 (array_inv!9847 _keys!709)))

(declare-fun b!456806 () Bool)

(assert (=> b!456806 (= e!266838 (bvslt from!863 (size!13961 _values!549)))))

(declare-fun b!456807 () Bool)

(declare-fun res!272787 () Bool)

(assert (=> b!456807 (=> (not res!272787) (not e!266833))))

(assert (=> b!456807 (= res!272787 (or (= (select (arr!13610 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13610 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!456808 () Bool)

(declare-fun e!266837 () Bool)

(assert (=> b!456808 (= e!266837 tp_is_empty!12285)))

(declare-fun b!456809 () Bool)

(assert (=> b!456809 (= e!266833 e!266836)))

(declare-fun res!272792 () Bool)

(assert (=> b!456809 (=> (not res!272792) (not e!266836))))

(assert (=> b!456809 (= res!272792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206678 mask!1025))))

(assert (=> b!456809 (= lt!206678 (array!28340 (store (arr!13610 _keys!709) i!563 k0!794) (size!13962 _keys!709)))))

(declare-fun b!456810 () Bool)

(declare-fun res!272785 () Bool)

(assert (=> b!456810 (=> (not res!272785) (not e!266833))))

(declare-fun arrayContainsKey!0 (array!28339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456810 (= res!272785 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!456811 () Bool)

(declare-fun res!272780 () Bool)

(assert (=> b!456811 (=> (not res!272780) (not e!266833))))

(assert (=> b!456811 (= res!272780 (validKeyInArray!0 k0!794))))

(declare-fun mapNonEmpty!20068 () Bool)

(declare-fun tp!38668 () Bool)

(declare-fun e!266840 () Bool)

(assert (=> mapNonEmpty!20068 (= mapRes!20068 (and tp!38668 e!266840))))

(declare-fun mapRest!20068 () (Array (_ BitVec 32) ValueCell!5799))

(declare-fun mapKey!20068 () (_ BitVec 32))

(declare-fun mapValue!20068 () ValueCell!5799)

(assert (=> mapNonEmpty!20068 (= (arr!13609 _values!549) (store mapRest!20068 mapKey!20068 mapValue!20068))))

(declare-fun b!456812 () Bool)

(declare-fun res!272779 () Bool)

(assert (=> b!456812 (=> (not res!272779) (not e!266833))))

(declare-datatypes ((List!8218 0))(
  ( (Nil!8215) (Cons!8214 (h!9070 (_ BitVec 64)) (t!14054 List!8218)) )
))
(declare-fun arrayNoDuplicates!0 (array!28339 (_ BitVec 32) List!8218) Bool)

(assert (=> b!456812 (= res!272779 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8215))))

(declare-fun b!456813 () Bool)

(declare-fun res!272789 () Bool)

(assert (=> b!456813 (=> (not res!272789) (not e!266836))))

(assert (=> b!456813 (= res!272789 (bvsle from!863 i!563))))

(declare-fun b!456814 () Bool)

(assert (=> b!456814 (= e!266835 (and e!266837 mapRes!20068))))

(declare-fun condMapEmpty!20068 () Bool)

(declare-fun mapDefault!20068 () ValueCell!5799)

(assert (=> b!456814 (= condMapEmpty!20068 (= (arr!13609 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5799)) mapDefault!20068)))))

(declare-fun b!456815 () Bool)

(declare-fun res!272788 () Bool)

(assert (=> b!456815 (=> (not res!272788) (not e!266833))))

(assert (=> b!456815 (= res!272788 (and (= (size!13961 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13962 _keys!709) (size!13961 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456816 () Bool)

(declare-fun res!272782 () Bool)

(assert (=> b!456816 (=> (not res!272782) (not e!266836))))

(assert (=> b!456816 (= res!272782 (arrayNoDuplicates!0 lt!206678 #b00000000000000000000000000000000 Nil!8215))))

(declare-fun b!456817 () Bool)

(assert (=> b!456817 (= e!266840 tp_is_empty!12285)))

(assert (= (and start!41020 res!272786) b!456802))

(assert (= (and b!456802 res!272784) b!456815))

(assert (= (and b!456815 res!272788) b!456804))

(assert (= (and b!456804 res!272790) b!456812))

(assert (= (and b!456812 res!272779) b!456803))

(assert (= (and b!456803 res!272781) b!456811))

(assert (= (and b!456811 res!272780) b!456807))

(assert (= (and b!456807 res!272787) b!456810))

(assert (= (and b!456810 res!272785) b!456809))

(assert (= (and b!456809 res!272792) b!456816))

(assert (= (and b!456816 res!272782) b!456813))

(assert (= (and b!456813 res!272789) b!456801))

(assert (= (and b!456801 res!272783) b!456805))

(assert (= (and b!456805 (not res!272791)) b!456806))

(assert (= (and b!456814 condMapEmpty!20068) mapIsEmpty!20068))

(assert (= (and b!456814 (not condMapEmpty!20068)) mapNonEmpty!20068))

(get-info :version)

(assert (= (and mapNonEmpty!20068 ((_ is ValueCellFull!5799) mapValue!20068)) b!456817))

(assert (= (and b!456814 ((_ is ValueCellFull!5799) mapDefault!20068)) b!456808))

(assert (= start!41020 b!456814))

(declare-fun m!440193 () Bool)

(assert (=> b!456805 m!440193))

(assert (=> b!456805 m!440193))

(declare-fun m!440195 () Bool)

(assert (=> b!456805 m!440195))

(declare-fun m!440197 () Bool)

(assert (=> b!456805 m!440197))

(declare-fun m!440199 () Bool)

(assert (=> b!456805 m!440199))

(declare-fun m!440201 () Bool)

(assert (=> b!456805 m!440201))

(assert (=> b!456805 m!440197))

(declare-fun m!440203 () Bool)

(assert (=> b!456805 m!440203))

(declare-fun m!440205 () Bool)

(assert (=> b!456801 m!440205))

(declare-fun m!440207 () Bool)

(assert (=> b!456801 m!440207))

(declare-fun m!440209 () Bool)

(assert (=> b!456801 m!440209))

(declare-fun m!440211 () Bool)

(assert (=> b!456807 m!440211))

(declare-fun m!440213 () Bool)

(assert (=> b!456804 m!440213))

(declare-fun m!440215 () Bool)

(assert (=> b!456802 m!440215))

(declare-fun m!440217 () Bool)

(assert (=> start!41020 m!440217))

(declare-fun m!440219 () Bool)

(assert (=> start!41020 m!440219))

(declare-fun m!440221 () Bool)

(assert (=> b!456809 m!440221))

(declare-fun m!440223 () Bool)

(assert (=> b!456809 m!440223))

(declare-fun m!440225 () Bool)

(assert (=> b!456810 m!440225))

(declare-fun m!440227 () Bool)

(assert (=> b!456811 m!440227))

(declare-fun m!440229 () Bool)

(assert (=> b!456812 m!440229))

(declare-fun m!440231 () Bool)

(assert (=> b!456816 m!440231))

(declare-fun m!440233 () Bool)

(assert (=> mapNonEmpty!20068 m!440233))

(check-sat (not b!456816) tp_is_empty!12285 (not b!456804) (not b_next!10947) (not b!456810) (not b!456805) (not start!41020) (not b!456802) (not b!456811) (not mapNonEmpty!20068) b_and!19107 (not b!456812) (not b!456801) (not b!456809))
(check-sat b_and!19107 (not b_next!10947))
