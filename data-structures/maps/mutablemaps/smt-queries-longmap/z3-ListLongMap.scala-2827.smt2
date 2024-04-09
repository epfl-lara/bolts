; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40936 () Bool)

(assert start!40936)

(declare-fun b_free!10863 () Bool)

(declare-fun b_next!10863 () Bool)

(assert (=> start!40936 (= b_free!10863 (not b_next!10863))))

(declare-fun tp!38415 () Bool)

(declare-fun b_and!19023 () Bool)

(assert (=> start!40936 (= tp!38415 b_and!19023)))

(declare-fun b!454847 () Bool)

(declare-fun res!271204 () Bool)

(declare-fun e!266013 () Bool)

(assert (=> b!454847 (=> (not res!271204) (not e!266013))))

(declare-datatypes ((array!28171 0))(
  ( (array!28172 (arr!13526 (Array (_ BitVec 32) (_ BitVec 64))) (size!13878 (_ BitVec 32))) )
))
(declare-fun lt!206220 () array!28171)

(declare-datatypes ((List!8150 0))(
  ( (Nil!8147) (Cons!8146 (h!9002 (_ BitVec 64)) (t!13986 List!8150)) )
))
(declare-fun arrayNoDuplicates!0 (array!28171 (_ BitVec 32) List!8150) Bool)

(assert (=> b!454847 (= res!271204 (arrayNoDuplicates!0 lt!206220 #b00000000000000000000000000000000 Nil!8147))))

(declare-fun b!454848 () Bool)

(declare-fun e!266016 () Bool)

(assert (=> b!454848 (= e!266016 e!266013)))

(declare-fun res!271213 () Bool)

(assert (=> b!454848 (=> (not res!271213) (not e!266013))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28171 (_ BitVec 32)) Bool)

(assert (=> b!454848 (= res!271213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206220 mask!1025))))

(declare-fun _keys!709 () array!28171)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454848 (= lt!206220 (array!28172 (store (arr!13526 _keys!709) i!563 k0!794) (size!13878 _keys!709)))))

(declare-fun b!454849 () Bool)

(declare-fun res!271209 () Bool)

(assert (=> b!454849 (=> (not res!271209) (not e!266016))))

(declare-fun arrayContainsKey!0 (array!28171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454849 (= res!271209 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!271206 () Bool)

(assert (=> start!40936 (=> (not res!271206) (not e!266016))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40936 (= res!271206 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13878 _keys!709))))))

(assert (=> start!40936 e!266016))

(declare-fun tp_is_empty!12201 () Bool)

(assert (=> start!40936 tp_is_empty!12201))

(assert (=> start!40936 tp!38415))

(assert (=> start!40936 true))

(declare-datatypes ((V!17373 0))(
  ( (V!17374 (val!6145 Int)) )
))
(declare-datatypes ((ValueCell!5757 0))(
  ( (ValueCellFull!5757 (v!8407 V!17373)) (EmptyCell!5757) )
))
(declare-datatypes ((array!28173 0))(
  ( (array!28174 (arr!13527 (Array (_ BitVec 32) ValueCell!5757)) (size!13879 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28173)

(declare-fun e!266017 () Bool)

(declare-fun array_inv!9788 (array!28173) Bool)

(assert (=> start!40936 (and (array_inv!9788 _values!549) e!266017)))

(declare-fun array_inv!9789 (array!28171) Bool)

(assert (=> start!40936 (array_inv!9789 _keys!709)))

(declare-fun b!454850 () Bool)

(declare-fun e!266014 () Bool)

(declare-fun mapRes!19942 () Bool)

(assert (=> b!454850 (= e!266017 (and e!266014 mapRes!19942))))

(declare-fun condMapEmpty!19942 () Bool)

(declare-fun mapDefault!19942 () ValueCell!5757)

(assert (=> b!454850 (= condMapEmpty!19942 (= (arr!13527 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5757)) mapDefault!19942)))))

(declare-fun b!454851 () Bool)

(declare-fun res!271208 () Bool)

(assert (=> b!454851 (=> (not res!271208) (not e!266016))))

(assert (=> b!454851 (= res!271208 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8147))))

(declare-fun b!454852 () Bool)

(declare-fun res!271203 () Bool)

(assert (=> b!454852 (=> (not res!271203) (not e!266016))))

(assert (=> b!454852 (= res!271203 (or (= (select (arr!13526 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13526 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19942 () Bool)

(declare-fun tp!38416 () Bool)

(declare-fun e!266015 () Bool)

(assert (=> mapNonEmpty!19942 (= mapRes!19942 (and tp!38416 e!266015))))

(declare-fun mapRest!19942 () (Array (_ BitVec 32) ValueCell!5757))

(declare-fun mapValue!19942 () ValueCell!5757)

(declare-fun mapKey!19942 () (_ BitVec 32))

(assert (=> mapNonEmpty!19942 (= (arr!13527 _values!549) (store mapRest!19942 mapKey!19942 mapValue!19942))))

(declare-fun b!454853 () Bool)

(assert (=> b!454853 (= e!266013 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8044 0))(
  ( (tuple2!8045 (_1!4032 (_ BitVec 64)) (_2!4032 V!17373)) )
))
(declare-datatypes ((List!8151 0))(
  ( (Nil!8148) (Cons!8147 (h!9003 tuple2!8044) (t!13987 List!8151)) )
))
(declare-datatypes ((ListLongMap!6971 0))(
  ( (ListLongMap!6972 (toList!3501 List!8151)) )
))
(declare-fun lt!206219 () ListLongMap!6971)

(declare-fun zeroValue!515 () V!17373)

(declare-fun v!412 () V!17373)

(declare-fun minValue!515 () V!17373)

(declare-fun getCurrentListMapNoExtraKeys!1677 (array!28171 array!28173 (_ BitVec 32) (_ BitVec 32) V!17373 V!17373 (_ BitVec 32) Int) ListLongMap!6971)

(assert (=> b!454853 (= lt!206219 (getCurrentListMapNoExtraKeys!1677 lt!206220 (array!28174 (store (arr!13527 _values!549) i!563 (ValueCellFull!5757 v!412)) (size!13879 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206218 () ListLongMap!6971)

(assert (=> b!454853 (= lt!206218 (getCurrentListMapNoExtraKeys!1677 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454854 () Bool)

(declare-fun res!271214 () Bool)

(assert (=> b!454854 (=> (not res!271214) (not e!266016))))

(assert (=> b!454854 (= res!271214 (and (= (size!13879 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13878 _keys!709) (size!13879 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454855 () Bool)

(declare-fun res!271212 () Bool)

(assert (=> b!454855 (=> (not res!271212) (not e!266016))))

(assert (=> b!454855 (= res!271212 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13878 _keys!709))))))

(declare-fun b!454856 () Bool)

(declare-fun res!271211 () Bool)

(assert (=> b!454856 (=> (not res!271211) (not e!266016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454856 (= res!271211 (validKeyInArray!0 k0!794))))

(declare-fun b!454857 () Bool)

(declare-fun res!271207 () Bool)

(assert (=> b!454857 (=> (not res!271207) (not e!266013))))

(assert (=> b!454857 (= res!271207 (bvsle from!863 i!563))))

(declare-fun b!454858 () Bool)

(declare-fun res!271205 () Bool)

(assert (=> b!454858 (=> (not res!271205) (not e!266016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454858 (= res!271205 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19942 () Bool)

(assert (=> mapIsEmpty!19942 mapRes!19942))

(declare-fun b!454859 () Bool)

(declare-fun res!271210 () Bool)

(assert (=> b!454859 (=> (not res!271210) (not e!266016))))

(assert (=> b!454859 (= res!271210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454860 () Bool)

(assert (=> b!454860 (= e!266015 tp_is_empty!12201)))

(declare-fun b!454861 () Bool)

(assert (=> b!454861 (= e!266014 tp_is_empty!12201)))

(assert (= (and start!40936 res!271206) b!454858))

(assert (= (and b!454858 res!271205) b!454854))

(assert (= (and b!454854 res!271214) b!454859))

(assert (= (and b!454859 res!271210) b!454851))

(assert (= (and b!454851 res!271208) b!454855))

(assert (= (and b!454855 res!271212) b!454856))

(assert (= (and b!454856 res!271211) b!454852))

(assert (= (and b!454852 res!271203) b!454849))

(assert (= (and b!454849 res!271209) b!454848))

(assert (= (and b!454848 res!271213) b!454847))

(assert (= (and b!454847 res!271204) b!454857))

(assert (= (and b!454857 res!271207) b!454853))

(assert (= (and b!454850 condMapEmpty!19942) mapIsEmpty!19942))

(assert (= (and b!454850 (not condMapEmpty!19942)) mapNonEmpty!19942))

(get-info :version)

(assert (= (and mapNonEmpty!19942 ((_ is ValueCellFull!5757) mapValue!19942)) b!454860))

(assert (= (and b!454850 ((_ is ValueCellFull!5757) mapDefault!19942)) b!454861))

(assert (= start!40936 b!454850))

(declare-fun m!438801 () Bool)

(assert (=> b!454858 m!438801))

(declare-fun m!438803 () Bool)

(assert (=> b!454859 m!438803))

(declare-fun m!438805 () Bool)

(assert (=> b!454851 m!438805))

(declare-fun m!438807 () Bool)

(assert (=> b!454847 m!438807))

(declare-fun m!438809 () Bool)

(assert (=> start!40936 m!438809))

(declare-fun m!438811 () Bool)

(assert (=> start!40936 m!438811))

(declare-fun m!438813 () Bool)

(assert (=> b!454848 m!438813))

(declare-fun m!438815 () Bool)

(assert (=> b!454848 m!438815))

(declare-fun m!438817 () Bool)

(assert (=> b!454852 m!438817))

(declare-fun m!438819 () Bool)

(assert (=> b!454856 m!438819))

(declare-fun m!438821 () Bool)

(assert (=> b!454853 m!438821))

(declare-fun m!438823 () Bool)

(assert (=> b!454853 m!438823))

(declare-fun m!438825 () Bool)

(assert (=> b!454853 m!438825))

(declare-fun m!438827 () Bool)

(assert (=> mapNonEmpty!19942 m!438827))

(declare-fun m!438829 () Bool)

(assert (=> b!454849 m!438829))

(check-sat tp_is_empty!12201 (not b!454853) (not mapNonEmpty!19942) (not b!454851) (not b!454856) b_and!19023 (not start!40936) (not b!454848) (not b!454849) (not b!454858) (not b_next!10863) (not b!454847) (not b!454859))
(check-sat b_and!19023 (not b_next!10863))
