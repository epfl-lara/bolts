; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40650 () Bool)

(assert start!40650)

(declare-fun b_free!10653 () Bool)

(declare-fun b_next!10653 () Bool)

(assert (=> start!40650 (= b_free!10653 (not b_next!10653))))

(declare-fun tp!37779 () Bool)

(declare-fun b_and!18679 () Bool)

(assert (=> start!40650 (= tp!37779 b_and!18679)))

(declare-fun b!448667 () Bool)

(declare-fun res!266827 () Bool)

(declare-fun e!263189 () Bool)

(assert (=> b!448667 (=> (not res!266827) (not e!263189))))

(declare-datatypes ((array!27749 0))(
  ( (array!27750 (arr!13317 (Array (_ BitVec 32) (_ BitVec 64))) (size!13669 (_ BitVec 32))) )
))
(declare-fun lt!204212 () array!27749)

(declare-datatypes ((List!7970 0))(
  ( (Nil!7967) (Cons!7966 (h!8822 (_ BitVec 64)) (t!13740 List!7970)) )
))
(declare-fun arrayNoDuplicates!0 (array!27749 (_ BitVec 32) List!7970) Bool)

(assert (=> b!448667 (= res!266827 (arrayNoDuplicates!0 lt!204212 #b00000000000000000000000000000000 Nil!7967))))

(declare-fun res!266832 () Bool)

(declare-fun e!263190 () Bool)

(assert (=> start!40650 (=> (not res!266832) (not e!263190))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun _keys!709 () array!27749)

(assert (=> start!40650 (= res!266832 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13669 _keys!709))))))

(assert (=> start!40650 e!263190))

(declare-fun tp_is_empty!11991 () Bool)

(assert (=> start!40650 tp_is_empty!11991))

(assert (=> start!40650 tp!37779))

(assert (=> start!40650 true))

(declare-datatypes ((V!17093 0))(
  ( (V!17094 (val!6040 Int)) )
))
(declare-datatypes ((ValueCell!5652 0))(
  ( (ValueCellFull!5652 (v!8291 V!17093)) (EmptyCell!5652) )
))
(declare-datatypes ((array!27751 0))(
  ( (array!27752 (arr!13318 (Array (_ BitVec 32) ValueCell!5652)) (size!13670 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27751)

(declare-fun e!263191 () Bool)

(declare-fun array_inv!9640 (array!27751) Bool)

(assert (=> start!40650 (and (array_inv!9640 _values!549) e!263191)))

(declare-fun array_inv!9641 (array!27749) Bool)

(assert (=> start!40650 (array_inv!9641 _keys!709)))

(declare-fun b!448668 () Bool)

(declare-fun res!266830 () Bool)

(assert (=> b!448668 (=> (not res!266830) (not e!263190))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448668 (= res!266830 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!448669 () Bool)

(declare-fun res!266838 () Bool)

(assert (=> b!448669 (=> (not res!266838) (not e!263190))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27749 (_ BitVec 32)) Bool)

(assert (=> b!448669 (= res!266838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448670 () Bool)

(declare-fun res!266836 () Bool)

(assert (=> b!448670 (=> (not res!266836) (not e!263190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448670 (= res!266836 (validKeyInArray!0 k0!794))))

(declare-fun b!448671 () Bool)

(assert (=> b!448671 (= e!263190 e!263189)))

(declare-fun res!266831 () Bool)

(assert (=> b!448671 (=> (not res!266831) (not e!263189))))

(assert (=> b!448671 (= res!266831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204212 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448671 (= lt!204212 (array!27750 (store (arr!13317 _keys!709) i!563 k0!794) (size!13669 _keys!709)))))

(declare-fun b!448672 () Bool)

(declare-fun res!266834 () Bool)

(assert (=> b!448672 (=> (not res!266834) (not e!263190))))

(assert (=> b!448672 (= res!266834 (or (= (select (arr!13317 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13317 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448673 () Bool)

(declare-fun e!263193 () Bool)

(declare-fun mapRes!19620 () Bool)

(assert (=> b!448673 (= e!263191 (and e!263193 mapRes!19620))))

(declare-fun condMapEmpty!19620 () Bool)

(declare-fun mapDefault!19620 () ValueCell!5652)

(assert (=> b!448673 (= condMapEmpty!19620 (= (arr!13318 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5652)) mapDefault!19620)))))

(declare-fun b!448674 () Bool)

(declare-fun res!266828 () Bool)

(assert (=> b!448674 (=> (not res!266828) (not e!263190))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!448674 (= res!266828 (and (= (size!13670 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13669 _keys!709) (size!13670 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448675 () Bool)

(assert (=> b!448675 (= e!263189 false)))

(declare-datatypes ((tuple2!7860 0))(
  ( (tuple2!7861 (_1!3940 (_ BitVec 64)) (_2!3940 V!17093)) )
))
(declare-datatypes ((List!7971 0))(
  ( (Nil!7968) (Cons!7967 (h!8823 tuple2!7860) (t!13741 List!7971)) )
))
(declare-datatypes ((ListLongMap!6787 0))(
  ( (ListLongMap!6788 (toList!3409 List!7971)) )
))
(declare-fun lt!204213 () ListLongMap!6787)

(declare-fun minValue!515 () V!17093)

(declare-fun defaultEntry!557 () Int)

(declare-fun v!412 () V!17093)

(declare-fun zeroValue!515 () V!17093)

(declare-fun getCurrentListMapNoExtraKeys!1589 (array!27749 array!27751 (_ BitVec 32) (_ BitVec 32) V!17093 V!17093 (_ BitVec 32) Int) ListLongMap!6787)

(assert (=> b!448675 (= lt!204213 (getCurrentListMapNoExtraKeys!1589 lt!204212 (array!27752 (store (arr!13318 _values!549) i!563 (ValueCellFull!5652 v!412)) (size!13670 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204214 () ListLongMap!6787)

(assert (=> b!448675 (= lt!204214 (getCurrentListMapNoExtraKeys!1589 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!19620 () Bool)

(assert (=> mapIsEmpty!19620 mapRes!19620))

(declare-fun b!448676 () Bool)

(declare-fun res!266829 () Bool)

(assert (=> b!448676 (=> (not res!266829) (not e!263190))))

(assert (=> b!448676 (= res!266829 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13669 _keys!709))))))

(declare-fun b!448677 () Bool)

(declare-fun res!266835 () Bool)

(assert (=> b!448677 (=> (not res!266835) (not e!263190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448677 (= res!266835 (validMask!0 mask!1025))))

(declare-fun b!448678 () Bool)

(assert (=> b!448678 (= e!263193 tp_is_empty!11991)))

(declare-fun mapNonEmpty!19620 () Bool)

(declare-fun tp!37778 () Bool)

(declare-fun e!263192 () Bool)

(assert (=> mapNonEmpty!19620 (= mapRes!19620 (and tp!37778 e!263192))))

(declare-fun mapValue!19620 () ValueCell!5652)

(declare-fun mapKey!19620 () (_ BitVec 32))

(declare-fun mapRest!19620 () (Array (_ BitVec 32) ValueCell!5652))

(assert (=> mapNonEmpty!19620 (= (arr!13318 _values!549) (store mapRest!19620 mapKey!19620 mapValue!19620))))

(declare-fun b!448679 () Bool)

(assert (=> b!448679 (= e!263192 tp_is_empty!11991)))

(declare-fun b!448680 () Bool)

(declare-fun res!266833 () Bool)

(assert (=> b!448680 (=> (not res!266833) (not e!263190))))

(assert (=> b!448680 (= res!266833 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7967))))

(declare-fun b!448681 () Bool)

(declare-fun res!266837 () Bool)

(assert (=> b!448681 (=> (not res!266837) (not e!263189))))

(assert (=> b!448681 (= res!266837 (bvsle from!863 i!563))))

(assert (= (and start!40650 res!266832) b!448677))

(assert (= (and b!448677 res!266835) b!448674))

(assert (= (and b!448674 res!266828) b!448669))

(assert (= (and b!448669 res!266838) b!448680))

(assert (= (and b!448680 res!266833) b!448676))

(assert (= (and b!448676 res!266829) b!448670))

(assert (= (and b!448670 res!266836) b!448672))

(assert (= (and b!448672 res!266834) b!448668))

(assert (= (and b!448668 res!266830) b!448671))

(assert (= (and b!448671 res!266831) b!448667))

(assert (= (and b!448667 res!266827) b!448681))

(assert (= (and b!448681 res!266837) b!448675))

(assert (= (and b!448673 condMapEmpty!19620) mapIsEmpty!19620))

(assert (= (and b!448673 (not condMapEmpty!19620)) mapNonEmpty!19620))

(get-info :version)

(assert (= (and mapNonEmpty!19620 ((_ is ValueCellFull!5652) mapValue!19620)) b!448679))

(assert (= (and b!448673 ((_ is ValueCellFull!5652) mapDefault!19620)) b!448678))

(assert (= start!40650 b!448673))

(declare-fun m!433115 () Bool)

(assert (=> b!448669 m!433115))

(declare-fun m!433117 () Bool)

(assert (=> b!448672 m!433117))

(declare-fun m!433119 () Bool)

(assert (=> mapNonEmpty!19620 m!433119))

(declare-fun m!433121 () Bool)

(assert (=> b!448667 m!433121))

(declare-fun m!433123 () Bool)

(assert (=> b!448670 m!433123))

(declare-fun m!433125 () Bool)

(assert (=> start!40650 m!433125))

(declare-fun m!433127 () Bool)

(assert (=> start!40650 m!433127))

(declare-fun m!433129 () Bool)

(assert (=> b!448677 m!433129))

(declare-fun m!433131 () Bool)

(assert (=> b!448675 m!433131))

(declare-fun m!433133 () Bool)

(assert (=> b!448675 m!433133))

(declare-fun m!433135 () Bool)

(assert (=> b!448675 m!433135))

(declare-fun m!433137 () Bool)

(assert (=> b!448671 m!433137))

(declare-fun m!433139 () Bool)

(assert (=> b!448671 m!433139))

(declare-fun m!433141 () Bool)

(assert (=> b!448668 m!433141))

(declare-fun m!433143 () Bool)

(assert (=> b!448680 m!433143))

(check-sat (not b!448677) (not b_next!10653) (not b!448667) (not b!448670) (not b!448671) tp_is_empty!11991 (not b!448669) (not start!40650) b_and!18679 (not b!448680) (not mapNonEmpty!19620) (not b!448668) (not b!448675))
(check-sat b_and!18679 (not b_next!10653))
