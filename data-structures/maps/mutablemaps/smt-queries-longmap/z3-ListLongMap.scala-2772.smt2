; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40494 () Bool)

(assert start!40494)

(declare-fun b_free!10557 () Bool)

(declare-fun b_next!10557 () Bool)

(assert (=> start!40494 (= b_free!10557 (not b_next!10557))))

(declare-fun tp!37448 () Bool)

(declare-fun b_and!18559 () Bool)

(assert (=> start!40494 (= tp!37448 b_and!18559)))

(declare-fun mapNonEmpty!19434 () Bool)

(declare-fun mapRes!19434 () Bool)

(declare-fun tp!37449 () Bool)

(declare-fun e!261936 () Bool)

(assert (=> mapNonEmpty!19434 (= mapRes!19434 (and tp!37449 e!261936))))

(declare-datatypes ((V!16933 0))(
  ( (V!16934 (val!5980 Int)) )
))
(declare-datatypes ((ValueCell!5592 0))(
  ( (ValueCellFull!5592 (v!8227 V!16933)) (EmptyCell!5592) )
))
(declare-fun mapRest!19434 () (Array (_ BitVec 32) ValueCell!5592))

(declare-fun mapValue!19434 () ValueCell!5592)

(declare-fun mapKey!19434 () (_ BitVec 32))

(declare-datatypes ((array!27509 0))(
  ( (array!27510 (arr!13199 (Array (_ BitVec 32) ValueCell!5592)) (size!13551 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27509)

(assert (=> mapNonEmpty!19434 (= (arr!13199 _values!549) (store mapRest!19434 mapKey!19434 mapValue!19434))))

(declare-fun b!445765 () Bool)

(declare-fun res!264629 () Bool)

(declare-fun e!261939 () Bool)

(assert (=> b!445765 (=> (not res!264629) (not e!261939))))

(declare-datatypes ((array!27511 0))(
  ( (array!27512 (arr!13200 (Array (_ BitVec 32) (_ BitVec 64))) (size!13552 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27511)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!445765 (= res!264629 (and (= (size!13551 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13552 _keys!709) (size!13551 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445767 () Bool)

(declare-fun res!264640 () Bool)

(assert (=> b!445767 (=> (not res!264640) (not e!261939))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445767 (= res!264640 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!445768 () Bool)

(declare-fun e!261942 () Bool)

(declare-fun e!261941 () Bool)

(assert (=> b!445768 (= e!261942 (and e!261941 mapRes!19434))))

(declare-fun condMapEmpty!19434 () Bool)

(declare-fun mapDefault!19434 () ValueCell!5592)

(assert (=> b!445768 (= condMapEmpty!19434 (= (arr!13199 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5592)) mapDefault!19434)))))

(declare-fun b!445769 () Bool)

(declare-fun res!264636 () Bool)

(assert (=> b!445769 (=> (not res!264636) (not e!261939))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445769 (= res!264636 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13552 _keys!709))))))

(declare-fun minValue!515 () V!16933)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16933)

(declare-fun lt!203658 () array!27511)

(declare-fun c!55806 () Bool)

(declare-datatypes ((tuple2!7778 0))(
  ( (tuple2!7779 (_1!3899 (_ BitVec 64)) (_2!3899 V!16933)) )
))
(declare-datatypes ((List!7878 0))(
  ( (Nil!7875) (Cons!7874 (h!8730 tuple2!7778) (t!13644 List!7878)) )
))
(declare-datatypes ((ListLongMap!6705 0))(
  ( (ListLongMap!6706 (toList!3368 List!7878)) )
))
(declare-fun call!29625 () ListLongMap!6705)

(declare-fun bm!29621 () Bool)

(declare-fun v!412 () V!16933)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1549 (array!27511 array!27509 (_ BitVec 32) (_ BitVec 32) V!16933 V!16933 (_ BitVec 32) Int) ListLongMap!6705)

(assert (=> bm!29621 (= call!29625 (getCurrentListMapNoExtraKeys!1549 (ite c!55806 _keys!709 lt!203658) (ite c!55806 _values!549 (array!27510 (store (arr!13199 _values!549) i!563 (ValueCellFull!5592 v!412)) (size!13551 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445770 () Bool)

(declare-fun e!261940 () Bool)

(declare-fun call!29624 () ListLongMap!6705)

(assert (=> b!445770 (= e!261940 (= call!29625 call!29624))))

(declare-fun mapIsEmpty!19434 () Bool)

(assert (=> mapIsEmpty!19434 mapRes!19434))

(declare-fun b!445771 () Bool)

(declare-fun res!264633 () Bool)

(assert (=> b!445771 (=> (not res!264633) (not e!261939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445771 (= res!264633 (validMask!0 mask!1025))))

(declare-fun b!445772 () Bool)

(declare-fun res!264635 () Bool)

(assert (=> b!445772 (=> (not res!264635) (not e!261939))))

(declare-datatypes ((List!7879 0))(
  ( (Nil!7876) (Cons!7875 (h!8731 (_ BitVec 64)) (t!13645 List!7879)) )
))
(declare-fun arrayNoDuplicates!0 (array!27511 (_ BitVec 32) List!7879) Bool)

(assert (=> b!445772 (= res!264635 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7876))))

(declare-fun b!445773 () Bool)

(declare-fun e!261937 () Bool)

(assert (=> b!445773 (= e!261937 (not (bvslt i!563 (size!13551 _values!549))))))

(assert (=> b!445773 e!261940))

(assert (=> b!445773 (= c!55806 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13107 0))(
  ( (Unit!13108) )
))
(declare-fun lt!203657 () Unit!13107)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!673 (array!27511 array!27509 (_ BitVec 32) (_ BitVec 32) V!16933 V!16933 (_ BitVec 32) (_ BitVec 64) V!16933 (_ BitVec 32) Int) Unit!13107)

(assert (=> b!445773 (= lt!203657 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!673 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445766 () Bool)

(declare-fun tp_is_empty!11871 () Bool)

(assert (=> b!445766 (= e!261936 tp_is_empty!11871)))

(declare-fun res!264639 () Bool)

(assert (=> start!40494 (=> (not res!264639) (not e!261939))))

(assert (=> start!40494 (= res!264639 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13552 _keys!709))))))

(assert (=> start!40494 e!261939))

(assert (=> start!40494 tp_is_empty!11871))

(assert (=> start!40494 tp!37448))

(assert (=> start!40494 true))

(declare-fun array_inv!9564 (array!27509) Bool)

(assert (=> start!40494 (and (array_inv!9564 _values!549) e!261942)))

(declare-fun array_inv!9565 (array!27511) Bool)

(assert (=> start!40494 (array_inv!9565 _keys!709)))

(declare-fun bm!29622 () Bool)

(assert (=> bm!29622 (= call!29624 (getCurrentListMapNoExtraKeys!1549 (ite c!55806 lt!203658 _keys!709) (ite c!55806 (array!27510 (store (arr!13199 _values!549) i!563 (ValueCellFull!5592 v!412)) (size!13551 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445774 () Bool)

(declare-fun res!264637 () Bool)

(assert (=> b!445774 (=> (not res!264637) (not e!261939))))

(assert (=> b!445774 (= res!264637 (or (= (select (arr!13200 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13200 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445775 () Bool)

(declare-fun +!1498 (ListLongMap!6705 tuple2!7778) ListLongMap!6705)

(assert (=> b!445775 (= e!261940 (= call!29624 (+!1498 call!29625 (tuple2!7779 k0!794 v!412))))))

(declare-fun b!445776 () Bool)

(assert (=> b!445776 (= e!261939 e!261937)))

(declare-fun res!264632 () Bool)

(assert (=> b!445776 (=> (not res!264632) (not e!261937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27511 (_ BitVec 32)) Bool)

(assert (=> b!445776 (= res!264632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203658 mask!1025))))

(assert (=> b!445776 (= lt!203658 (array!27512 (store (arr!13200 _keys!709) i!563 k0!794) (size!13552 _keys!709)))))

(declare-fun b!445777 () Bool)

(declare-fun res!264634 () Bool)

(assert (=> b!445777 (=> (not res!264634) (not e!261939))))

(assert (=> b!445777 (= res!264634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!445778 () Bool)

(declare-fun res!264638 () Bool)

(assert (=> b!445778 (=> (not res!264638) (not e!261937))))

(assert (=> b!445778 (= res!264638 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13552 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!445779 () Bool)

(assert (=> b!445779 (= e!261941 tp_is_empty!11871)))

(declare-fun b!445780 () Bool)

(declare-fun res!264630 () Bool)

(assert (=> b!445780 (=> (not res!264630) (not e!261937))))

(assert (=> b!445780 (= res!264630 (arrayNoDuplicates!0 lt!203658 #b00000000000000000000000000000000 Nil!7876))))

(declare-fun b!445781 () Bool)

(declare-fun res!264631 () Bool)

(assert (=> b!445781 (=> (not res!264631) (not e!261939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445781 (= res!264631 (validKeyInArray!0 k0!794))))

(assert (= (and start!40494 res!264639) b!445771))

(assert (= (and b!445771 res!264633) b!445765))

(assert (= (and b!445765 res!264629) b!445777))

(assert (= (and b!445777 res!264634) b!445772))

(assert (= (and b!445772 res!264635) b!445769))

(assert (= (and b!445769 res!264636) b!445781))

(assert (= (and b!445781 res!264631) b!445774))

(assert (= (and b!445774 res!264637) b!445767))

(assert (= (and b!445767 res!264640) b!445776))

(assert (= (and b!445776 res!264632) b!445780))

(assert (= (and b!445780 res!264630) b!445778))

(assert (= (and b!445778 res!264638) b!445773))

(assert (= (and b!445773 c!55806) b!445775))

(assert (= (and b!445773 (not c!55806)) b!445770))

(assert (= (or b!445775 b!445770) bm!29622))

(assert (= (or b!445775 b!445770) bm!29621))

(assert (= (and b!445768 condMapEmpty!19434) mapIsEmpty!19434))

(assert (= (and b!445768 (not condMapEmpty!19434)) mapNonEmpty!19434))

(get-info :version)

(assert (= (and mapNonEmpty!19434 ((_ is ValueCellFull!5592) mapValue!19434)) b!445766))

(assert (= (and b!445768 ((_ is ValueCellFull!5592) mapDefault!19434)) b!445779))

(assert (= start!40494 b!445768))

(declare-fun m!431115 () Bool)

(assert (=> mapNonEmpty!19434 m!431115))

(declare-fun m!431117 () Bool)

(assert (=> b!445776 m!431117))

(declare-fun m!431119 () Bool)

(assert (=> b!445776 m!431119))

(declare-fun m!431121 () Bool)

(assert (=> bm!29622 m!431121))

(declare-fun m!431123 () Bool)

(assert (=> bm!29622 m!431123))

(declare-fun m!431125 () Bool)

(assert (=> b!445781 m!431125))

(declare-fun m!431127 () Bool)

(assert (=> b!445772 m!431127))

(declare-fun m!431129 () Bool)

(assert (=> b!445780 m!431129))

(assert (=> bm!29621 m!431121))

(declare-fun m!431131 () Bool)

(assert (=> bm!29621 m!431131))

(declare-fun m!431133 () Bool)

(assert (=> b!445774 m!431133))

(declare-fun m!431135 () Bool)

(assert (=> start!40494 m!431135))

(declare-fun m!431137 () Bool)

(assert (=> start!40494 m!431137))

(declare-fun m!431139 () Bool)

(assert (=> b!445775 m!431139))

(declare-fun m!431141 () Bool)

(assert (=> b!445777 m!431141))

(declare-fun m!431143 () Bool)

(assert (=> b!445773 m!431143))

(declare-fun m!431145 () Bool)

(assert (=> b!445767 m!431145))

(declare-fun m!431147 () Bool)

(assert (=> b!445771 m!431147))

(check-sat (not b!445773) (not b!445776) (not b!445772) (not b_next!10557) (not b!445771) (not b!445777) tp_is_empty!11871 (not b!445767) (not start!40494) (not bm!29621) (not mapNonEmpty!19434) b_and!18559 (not b!445781) (not b!445775) (not bm!29622) (not b!445780))
(check-sat b_and!18559 (not b_next!10557))
