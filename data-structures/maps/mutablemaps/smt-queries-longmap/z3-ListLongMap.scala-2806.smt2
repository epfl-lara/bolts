; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40734 () Bool)

(assert start!40734)

(declare-fun b_free!10737 () Bool)

(declare-fun b_next!10737 () Bool)

(assert (=> start!40734 (= b_free!10737 (not b_next!10737))))

(declare-fun tp!38030 () Bool)

(declare-fun b_and!18763 () Bool)

(assert (=> start!40734 (= tp!38030 b_and!18763)))

(declare-fun mapNonEmpty!19746 () Bool)

(declare-fun mapRes!19746 () Bool)

(declare-fun tp!38031 () Bool)

(declare-fun e!264099 () Bool)

(assert (=> mapNonEmpty!19746 (= mapRes!19746 (and tp!38031 e!264099))))

(declare-datatypes ((V!17205 0))(
  ( (V!17206 (val!6082 Int)) )
))
(declare-datatypes ((ValueCell!5694 0))(
  ( (ValueCellFull!5694 (v!8333 V!17205)) (EmptyCell!5694) )
))
(declare-fun mapRest!19746 () (Array (_ BitVec 32) ValueCell!5694))

(declare-fun mapValue!19746 () ValueCell!5694)

(declare-fun mapKey!19746 () (_ BitVec 32))

(declare-datatypes ((array!27917 0))(
  ( (array!27918 (arr!13401 (Array (_ BitVec 32) ValueCell!5694)) (size!13753 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27917)

(assert (=> mapNonEmpty!19746 (= (arr!13401 _values!549) (store mapRest!19746 mapKey!19746 mapValue!19746))))

(declare-fun b!450766 () Bool)

(declare-fun e!264096 () Bool)

(declare-fun e!264100 () Bool)

(assert (=> b!450766 (= e!264096 (and e!264100 mapRes!19746))))

(declare-fun condMapEmpty!19746 () Bool)

(declare-fun mapDefault!19746 () ValueCell!5694)

(assert (=> b!450766 (= condMapEmpty!19746 (= (arr!13401 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5694)) mapDefault!19746)))))

(declare-fun b!450767 () Bool)

(declare-fun res!268438 () Bool)

(declare-fun e!264102 () Bool)

(assert (=> b!450767 (=> (not res!268438) (not e!264102))))

(declare-datatypes ((array!27919 0))(
  ( (array!27920 (arr!13402 (Array (_ BitVec 32) (_ BitVec 64))) (size!13754 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27919)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450767 (= res!268438 (or (= (select (arr!13402 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13402 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450768 () Bool)

(declare-fun res!268442 () Bool)

(assert (=> b!450768 (=> (not res!268442) (not e!264102))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!450768 (= res!268442 (validMask!0 mask!1025))))

(declare-fun b!450769 () Bool)

(declare-fun res!268433 () Bool)

(assert (=> b!450769 (=> (not res!268433) (not e!264102))))

(declare-datatypes ((List!8045 0))(
  ( (Nil!8042) (Cons!8041 (h!8897 (_ BitVec 64)) (t!13815 List!8045)) )
))
(declare-fun arrayNoDuplicates!0 (array!27919 (_ BitVec 32) List!8045) Bool)

(assert (=> b!450769 (= res!268433 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8042))))

(declare-fun res!268437 () Bool)

(assert (=> start!40734 (=> (not res!268437) (not e!264102))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40734 (= res!268437 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13754 _keys!709))))))

(assert (=> start!40734 e!264102))

(declare-fun tp_is_empty!12075 () Bool)

(assert (=> start!40734 tp_is_empty!12075))

(assert (=> start!40734 tp!38030))

(assert (=> start!40734 true))

(declare-fun array_inv!9696 (array!27917) Bool)

(assert (=> start!40734 (and (array_inv!9696 _values!549) e!264096)))

(declare-fun array_inv!9697 (array!27919) Bool)

(assert (=> start!40734 (array_inv!9697 _keys!709)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!204725 () array!27917)

(declare-fun zeroValue!515 () V!17205)

(declare-fun bm!29797 () Bool)

(declare-datatypes ((tuple2!7938 0))(
  ( (tuple2!7939 (_1!3979 (_ BitVec 64)) (_2!3979 V!17205)) )
))
(declare-datatypes ((List!8046 0))(
  ( (Nil!8043) (Cons!8042 (h!8898 tuple2!7938) (t!13816 List!8046)) )
))
(declare-datatypes ((ListLongMap!6865 0))(
  ( (ListLongMap!6866 (toList!3448 List!8046)) )
))
(declare-fun call!29801 () ListLongMap!6865)

(declare-fun lt!204726 () array!27919)

(declare-fun minValue!515 () V!17205)

(declare-fun c!55937 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1625 (array!27919 array!27917 (_ BitVec 32) (_ BitVec 32) V!17205 V!17205 (_ BitVec 32) Int) ListLongMap!6865)

(assert (=> bm!29797 (= call!29801 (getCurrentListMapNoExtraKeys!1625 (ite c!55937 _keys!709 lt!204726) (ite c!55937 _values!549 lt!204725) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29798 () Bool)

(declare-fun call!29800 () ListLongMap!6865)

(assert (=> bm!29798 (= call!29800 (getCurrentListMapNoExtraKeys!1625 (ite c!55937 lt!204726 _keys!709) (ite c!55937 lt!204725 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450770 () Bool)

(declare-fun e!264094 () Bool)

(assert (=> b!450770 (= e!264094 (bvslt from!863 (size!13753 _values!549)))))

(declare-fun lt!204722 () ListLongMap!6865)

(assert (=> b!450770 (= lt!204722 (getCurrentListMapNoExtraKeys!1625 lt!204726 lt!204725 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450771 () Bool)

(declare-fun res!268436 () Bool)

(assert (=> b!450771 (=> (not res!268436) (not e!264102))))

(assert (=> b!450771 (= res!268436 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13754 _keys!709))))))

(declare-fun b!450772 () Bool)

(declare-fun res!268430 () Bool)

(declare-fun e!264097 () Bool)

(assert (=> b!450772 (=> (not res!268430) (not e!264097))))

(assert (=> b!450772 (= res!268430 (arrayNoDuplicates!0 lt!204726 #b00000000000000000000000000000000 Nil!8042))))

(declare-fun mapIsEmpty!19746 () Bool)

(assert (=> mapIsEmpty!19746 mapRes!19746))

(declare-fun b!450773 () Bool)

(assert (=> b!450773 (= e!264099 tp_is_empty!12075)))

(declare-fun e!264095 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun b!450774 () Bool)

(declare-fun v!412 () V!17205)

(declare-fun +!1517 (ListLongMap!6865 tuple2!7938) ListLongMap!6865)

(assert (=> b!450774 (= e!264095 (= call!29800 (+!1517 call!29801 (tuple2!7939 k0!794 v!412))))))

(declare-fun b!450775 () Bool)

(declare-fun e!264098 () Bool)

(assert (=> b!450775 (= e!264098 (not e!264094))))

(declare-fun res!268431 () Bool)

(assert (=> b!450775 (=> res!268431 e!264094)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450775 (= res!268431 (validKeyInArray!0 (select (arr!13402 _keys!709) from!863)))))

(assert (=> b!450775 e!264095))

(assert (=> b!450775 (= c!55937 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13137 0))(
  ( (Unit!13138) )
))
(declare-fun lt!204723 () Unit!13137)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!687 (array!27919 array!27917 (_ BitVec 32) (_ BitVec 32) V!17205 V!17205 (_ BitVec 32) (_ BitVec 64) V!17205 (_ BitVec 32) Int) Unit!13137)

(assert (=> b!450775 (= lt!204723 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!687 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450776 () Bool)

(declare-fun res!268439 () Bool)

(assert (=> b!450776 (=> (not res!268439) (not e!264102))))

(assert (=> b!450776 (= res!268439 (and (= (size!13753 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13754 _keys!709) (size!13753 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!450777 () Bool)

(declare-fun res!268432 () Bool)

(assert (=> b!450777 (=> (not res!268432) (not e!264097))))

(assert (=> b!450777 (= res!268432 (bvsle from!863 i!563))))

(declare-fun b!450778 () Bool)

(declare-fun res!268441 () Bool)

(assert (=> b!450778 (=> (not res!268441) (not e!264102))))

(declare-fun arrayContainsKey!0 (array!27919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450778 (= res!268441 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!450779 () Bool)

(assert (=> b!450779 (= e!264100 tp_is_empty!12075)))

(declare-fun b!450780 () Bool)

(declare-fun res!268434 () Bool)

(assert (=> b!450780 (=> (not res!268434) (not e!264102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27919 (_ BitVec 32)) Bool)

(assert (=> b!450780 (= res!268434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!450781 () Bool)

(assert (=> b!450781 (= e!264095 (= call!29801 call!29800))))

(declare-fun b!450782 () Bool)

(assert (=> b!450782 (= e!264102 e!264097)))

(declare-fun res!268440 () Bool)

(assert (=> b!450782 (=> (not res!268440) (not e!264097))))

(assert (=> b!450782 (= res!268440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204726 mask!1025))))

(assert (=> b!450782 (= lt!204726 (array!27920 (store (arr!13402 _keys!709) i!563 k0!794) (size!13754 _keys!709)))))

(declare-fun b!450783 () Bool)

(declare-fun res!268435 () Bool)

(assert (=> b!450783 (=> (not res!268435) (not e!264102))))

(assert (=> b!450783 (= res!268435 (validKeyInArray!0 k0!794))))

(declare-fun b!450784 () Bool)

(assert (=> b!450784 (= e!264097 e!264098)))

(declare-fun res!268443 () Bool)

(assert (=> b!450784 (=> (not res!268443) (not e!264098))))

(assert (=> b!450784 (= res!268443 (= from!863 i!563))))

(declare-fun lt!204727 () ListLongMap!6865)

(assert (=> b!450784 (= lt!204727 (getCurrentListMapNoExtraKeys!1625 lt!204726 lt!204725 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450784 (= lt!204725 (array!27918 (store (arr!13401 _values!549) i!563 (ValueCellFull!5694 v!412)) (size!13753 _values!549)))))

(declare-fun lt!204724 () ListLongMap!6865)

(assert (=> b!450784 (= lt!204724 (getCurrentListMapNoExtraKeys!1625 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!40734 res!268437) b!450768))

(assert (= (and b!450768 res!268442) b!450776))

(assert (= (and b!450776 res!268439) b!450780))

(assert (= (and b!450780 res!268434) b!450769))

(assert (= (and b!450769 res!268433) b!450771))

(assert (= (and b!450771 res!268436) b!450783))

(assert (= (and b!450783 res!268435) b!450767))

(assert (= (and b!450767 res!268438) b!450778))

(assert (= (and b!450778 res!268441) b!450782))

(assert (= (and b!450782 res!268440) b!450772))

(assert (= (and b!450772 res!268430) b!450777))

(assert (= (and b!450777 res!268432) b!450784))

(assert (= (and b!450784 res!268443) b!450775))

(assert (= (and b!450775 c!55937) b!450774))

(assert (= (and b!450775 (not c!55937)) b!450781))

(assert (= (or b!450774 b!450781) bm!29798))

(assert (= (or b!450774 b!450781) bm!29797))

(assert (= (and b!450775 (not res!268431)) b!450770))

(assert (= (and b!450766 condMapEmpty!19746) mapIsEmpty!19746))

(assert (= (and b!450766 (not condMapEmpty!19746)) mapNonEmpty!19746))

(get-info :version)

(assert (= (and mapNonEmpty!19746 ((_ is ValueCellFull!5694) mapValue!19746)) b!450773))

(assert (= (and b!450766 ((_ is ValueCellFull!5694) mapDefault!19746)) b!450779))

(assert (= start!40734 b!450766))

(declare-fun m!434575 () Bool)

(assert (=> b!450767 m!434575))

(declare-fun m!434577 () Bool)

(assert (=> b!450784 m!434577))

(declare-fun m!434579 () Bool)

(assert (=> b!450784 m!434579))

(declare-fun m!434581 () Bool)

(assert (=> b!450784 m!434581))

(declare-fun m!434583 () Bool)

(assert (=> b!450772 m!434583))

(declare-fun m!434585 () Bool)

(assert (=> b!450780 m!434585))

(declare-fun m!434587 () Bool)

(assert (=> bm!29798 m!434587))

(declare-fun m!434589 () Bool)

(assert (=> b!450768 m!434589))

(declare-fun m!434591 () Bool)

(assert (=> mapNonEmpty!19746 m!434591))

(declare-fun m!434593 () Bool)

(assert (=> b!450769 m!434593))

(declare-fun m!434595 () Bool)

(assert (=> bm!29797 m!434595))

(declare-fun m!434597 () Bool)

(assert (=> b!450774 m!434597))

(declare-fun m!434599 () Bool)

(assert (=> start!40734 m!434599))

(declare-fun m!434601 () Bool)

(assert (=> start!40734 m!434601))

(declare-fun m!434603 () Bool)

(assert (=> b!450775 m!434603))

(assert (=> b!450775 m!434603))

(declare-fun m!434605 () Bool)

(assert (=> b!450775 m!434605))

(declare-fun m!434607 () Bool)

(assert (=> b!450775 m!434607))

(declare-fun m!434609 () Bool)

(assert (=> b!450783 m!434609))

(declare-fun m!434611 () Bool)

(assert (=> b!450782 m!434611))

(declare-fun m!434613 () Bool)

(assert (=> b!450782 m!434613))

(declare-fun m!434615 () Bool)

(assert (=> b!450770 m!434615))

(declare-fun m!434617 () Bool)

(assert (=> b!450778 m!434617))

(check-sat (not b_next!10737) (not b!450774) (not b!450768) (not start!40734) (not b!450780) (not b!450784) (not b!450778) b_and!18763 tp_is_empty!12075 (not b!450769) (not b!450770) (not b!450772) (not bm!29797) (not b!450782) (not b!450783) (not mapNonEmpty!19746) (not bm!29798) (not b!450775))
(check-sat b_and!18763 (not b_next!10737))
