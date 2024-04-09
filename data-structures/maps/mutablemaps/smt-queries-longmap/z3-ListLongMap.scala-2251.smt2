; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36978 () Bool)

(assert start!36978)

(declare-fun b_free!8097 () Bool)

(declare-fun b_next!8097 () Bool)

(assert (=> start!36978 (= b_free!8097 (not b_next!8097))))

(declare-fun tp!29006 () Bool)

(declare-fun b_and!15357 () Bool)

(assert (=> start!36978 (= tp!29006 b_and!15357)))

(declare-fun b!370736 () Bool)

(declare-fun e!226378 () Bool)

(declare-fun e!226379 () Bool)

(assert (=> b!370736 (= e!226378 e!226379)))

(declare-fun res!208356 () Bool)

(assert (=> b!370736 (=> (not res!208356) (not e!226379))))

(declare-datatypes ((array!21405 0))(
  ( (array!21406 (arr!10168 (Array (_ BitVec 32) (_ BitVec 64))) (size!10520 (_ BitVec 32))) )
))
(declare-fun lt!170056 () array!21405)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21405 (_ BitVec 32)) Bool)

(assert (=> b!370736 (= res!208356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170056 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!21405)

(assert (=> b!370736 (= lt!170056 (array!21406 (store (arr!10168 _keys!658) i!548 k0!778) (size!10520 _keys!658)))))

(declare-fun b!370737 () Bool)

(declare-fun res!208361 () Bool)

(assert (=> b!370737 (=> (not res!208361) (not e!226378))))

(assert (=> b!370737 (= res!208361 (or (= (select (arr!10168 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10168 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370738 () Bool)

(declare-fun e!226375 () Bool)

(declare-fun e!226377 () Bool)

(declare-fun mapRes!14682 () Bool)

(assert (=> b!370738 (= e!226375 (and e!226377 mapRes!14682))))

(declare-fun condMapEmpty!14682 () Bool)

(declare-datatypes ((V!12765 0))(
  ( (V!12766 (val!4417 Int)) )
))
(declare-datatypes ((ValueCell!4029 0))(
  ( (ValueCellFull!4029 (v!6610 V!12765)) (EmptyCell!4029) )
))
(declare-datatypes ((array!21407 0))(
  ( (array!21408 (arr!10169 (Array (_ BitVec 32) ValueCell!4029)) (size!10521 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21407)

(declare-fun mapDefault!14682 () ValueCell!4029)

(assert (=> b!370738 (= condMapEmpty!14682 (= (arr!10169 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4029)) mapDefault!14682)))))

(declare-fun b!370739 () Bool)

(declare-fun res!208360 () Bool)

(assert (=> b!370739 (=> (not res!208360) (not e!226378))))

(declare-datatypes ((List!5710 0))(
  ( (Nil!5707) (Cons!5706 (h!6562 (_ BitVec 64)) (t!10868 List!5710)) )
))
(declare-fun arrayNoDuplicates!0 (array!21405 (_ BitVec 32) List!5710) Bool)

(assert (=> b!370739 (= res!208360 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5707))))

(declare-fun b!370740 () Bool)

(declare-fun res!208357 () Bool)

(assert (=> b!370740 (=> (not res!208357) (not e!226378))))

(assert (=> b!370740 (= res!208357 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10520 _keys!658))))))

(declare-fun b!370741 () Bool)

(declare-fun res!208362 () Bool)

(assert (=> b!370741 (=> (not res!208362) (not e!226378))))

(declare-fun arrayContainsKey!0 (array!21405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370741 (= res!208362 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!370742 () Bool)

(declare-fun res!208355 () Bool)

(assert (=> b!370742 (=> (not res!208355) (not e!226378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370742 (= res!208355 (validKeyInArray!0 k0!778))))

(declare-fun res!208363 () Bool)

(assert (=> start!36978 (=> (not res!208363) (not e!226378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36978 (= res!208363 (validMask!0 mask!970))))

(assert (=> start!36978 e!226378))

(declare-fun array_inv!7508 (array!21407) Bool)

(assert (=> start!36978 (and (array_inv!7508 _values!506) e!226375)))

(assert (=> start!36978 tp!29006))

(assert (=> start!36978 true))

(declare-fun tp_is_empty!8745 () Bool)

(assert (=> start!36978 tp_is_empty!8745))

(declare-fun array_inv!7509 (array!21405) Bool)

(assert (=> start!36978 (array_inv!7509 _keys!658)))

(declare-fun mapNonEmpty!14682 () Bool)

(declare-fun tp!29007 () Bool)

(declare-fun e!226380 () Bool)

(assert (=> mapNonEmpty!14682 (= mapRes!14682 (and tp!29007 e!226380))))

(declare-fun mapValue!14682 () ValueCell!4029)

(declare-fun mapKey!14682 () (_ BitVec 32))

(declare-fun mapRest!14682 () (Array (_ BitVec 32) ValueCell!4029))

(assert (=> mapNonEmpty!14682 (= (arr!10169 _values!506) (store mapRest!14682 mapKey!14682 mapValue!14682))))

(declare-fun b!370743 () Bool)

(assert (=> b!370743 (= e!226379 (not true))))

(declare-datatypes ((tuple2!5842 0))(
  ( (tuple2!5843 (_1!2931 (_ BitVec 64)) (_2!2931 V!12765)) )
))
(declare-datatypes ((List!5711 0))(
  ( (Nil!5708) (Cons!5707 (h!6563 tuple2!5842) (t!10869 List!5711)) )
))
(declare-datatypes ((ListLongMap!4769 0))(
  ( (ListLongMap!4770 (toList!2400 List!5711)) )
))
(declare-fun lt!170055 () ListLongMap!4769)

(declare-fun lt!170052 () ListLongMap!4769)

(assert (=> b!370743 (and (= lt!170055 lt!170052) (= lt!170052 lt!170055))))

(declare-fun v!373 () V!12765)

(declare-fun lt!170054 () ListLongMap!4769)

(declare-fun +!741 (ListLongMap!4769 tuple2!5842) ListLongMap!4769)

(assert (=> b!370743 (= lt!170052 (+!741 lt!170054 (tuple2!5843 k0!778 v!373)))))

(declare-datatypes ((Unit!11387 0))(
  ( (Unit!11388) )
))
(declare-fun lt!170053 () Unit!11387)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12765)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun minValue!472 () V!12765)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!1 (array!21405 array!21407 (_ BitVec 32) (_ BitVec 32) V!12765 V!12765 (_ BitVec 32) (_ BitVec 64) V!12765 (_ BitVec 32) Int) Unit!11387)

(assert (=> b!370743 (= lt!170053 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!1 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!668 (array!21405 array!21407 (_ BitVec 32) (_ BitVec 32) V!12765 V!12765 (_ BitVec 32) Int) ListLongMap!4769)

(assert (=> b!370743 (= lt!170055 (getCurrentListMapNoExtraKeys!668 lt!170056 (array!21408 (store (arr!10169 _values!506) i!548 (ValueCellFull!4029 v!373)) (size!10521 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!370743 (= lt!170054 (getCurrentListMapNoExtraKeys!668 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370744 () Bool)

(declare-fun res!208358 () Bool)

(assert (=> b!370744 (=> (not res!208358) (not e!226379))))

(assert (=> b!370744 (= res!208358 (arrayNoDuplicates!0 lt!170056 #b00000000000000000000000000000000 Nil!5707))))

(declare-fun b!370745 () Bool)

(declare-fun res!208359 () Bool)

(assert (=> b!370745 (=> (not res!208359) (not e!226378))))

(assert (=> b!370745 (= res!208359 (and (= (size!10521 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10520 _keys!658) (size!10521 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14682 () Bool)

(assert (=> mapIsEmpty!14682 mapRes!14682))

(declare-fun b!370746 () Bool)

(assert (=> b!370746 (= e!226380 tp_is_empty!8745)))

(declare-fun b!370747 () Bool)

(assert (=> b!370747 (= e!226377 tp_is_empty!8745)))

(declare-fun b!370748 () Bool)

(declare-fun res!208364 () Bool)

(assert (=> b!370748 (=> (not res!208364) (not e!226378))))

(assert (=> b!370748 (= res!208364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(assert (= (and start!36978 res!208363) b!370745))

(assert (= (and b!370745 res!208359) b!370748))

(assert (= (and b!370748 res!208364) b!370739))

(assert (= (and b!370739 res!208360) b!370740))

(assert (= (and b!370740 res!208357) b!370742))

(assert (= (and b!370742 res!208355) b!370737))

(assert (= (and b!370737 res!208361) b!370741))

(assert (= (and b!370741 res!208362) b!370736))

(assert (= (and b!370736 res!208356) b!370744))

(assert (= (and b!370744 res!208358) b!370743))

(assert (= (and b!370738 condMapEmpty!14682) mapIsEmpty!14682))

(assert (= (and b!370738 (not condMapEmpty!14682)) mapNonEmpty!14682))

(get-info :version)

(assert (= (and mapNonEmpty!14682 ((_ is ValueCellFull!4029) mapValue!14682)) b!370746))

(assert (= (and b!370738 ((_ is ValueCellFull!4029) mapDefault!14682)) b!370747))

(assert (= start!36978 b!370738))

(declare-fun m!366813 () Bool)

(assert (=> b!370737 m!366813))

(declare-fun m!366815 () Bool)

(assert (=> b!370739 m!366815))

(declare-fun m!366817 () Bool)

(assert (=> b!370744 m!366817))

(declare-fun m!366819 () Bool)

(assert (=> b!370741 m!366819))

(declare-fun m!366821 () Bool)

(assert (=> b!370748 m!366821))

(declare-fun m!366823 () Bool)

(assert (=> b!370736 m!366823))

(declare-fun m!366825 () Bool)

(assert (=> b!370736 m!366825))

(declare-fun m!366827 () Bool)

(assert (=> start!36978 m!366827))

(declare-fun m!366829 () Bool)

(assert (=> start!36978 m!366829))

(declare-fun m!366831 () Bool)

(assert (=> start!36978 m!366831))

(declare-fun m!366833 () Bool)

(assert (=> mapNonEmpty!14682 m!366833))

(declare-fun m!366835 () Bool)

(assert (=> b!370742 m!366835))

(declare-fun m!366837 () Bool)

(assert (=> b!370743 m!366837))

(declare-fun m!366839 () Bool)

(assert (=> b!370743 m!366839))

(declare-fun m!366841 () Bool)

(assert (=> b!370743 m!366841))

(declare-fun m!366843 () Bool)

(assert (=> b!370743 m!366843))

(declare-fun m!366845 () Bool)

(assert (=> b!370743 m!366845))

(check-sat (not b!370742) b_and!15357 tp_is_empty!8745 (not start!36978) (not b!370741) (not b_next!8097) (not b!370748) (not b!370744) (not b!370743) (not b!370739) (not mapNonEmpty!14682) (not b!370736))
(check-sat b_and!15357 (not b_next!8097))
