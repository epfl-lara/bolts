; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37728 () Bool)

(assert start!37728)

(declare-fun b_free!8823 () Bool)

(declare-fun b_next!8823 () Bool)

(assert (=> start!37728 (= b_free!8823 (not b_next!8823))))

(declare-fun tp!31220 () Bool)

(declare-fun b_and!16083 () Bool)

(assert (=> start!37728 (= tp!31220 b_and!16083)))

(declare-fun b!386559 () Bool)

(declare-fun res!220807 () Bool)

(declare-fun e!234469 () Bool)

(assert (=> b!386559 (=> (not res!220807) (not e!234469))))

(declare-datatypes ((V!13765 0))(
  ( (V!13766 (val!4792 Int)) )
))
(declare-datatypes ((ValueCell!4404 0))(
  ( (ValueCellFull!4404 (v!6985 V!13765)) (EmptyCell!4404) )
))
(declare-datatypes ((array!22861 0))(
  ( (array!22862 (arr!10896 (Array (_ BitVec 32) ValueCell!4404)) (size!11248 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22861)

(declare-datatypes ((array!22863 0))(
  ( (array!22864 (arr!10897 (Array (_ BitVec 32) (_ BitVec 64))) (size!11249 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22863)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!386559 (= res!220807 (and (= (size!11248 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11249 _keys!658) (size!11248 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386560 () Bool)

(declare-fun e!234471 () Bool)

(declare-fun tp_is_empty!9495 () Bool)

(assert (=> b!386560 (= e!234471 tp_is_empty!9495)))

(declare-fun b!386561 () Bool)

(declare-fun res!220809 () Bool)

(assert (=> b!386561 (=> (not res!220809) (not e!234469))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386561 (= res!220809 (validKeyInArray!0 k0!778))))

(declare-fun b!386562 () Bool)

(declare-fun e!234466 () Bool)

(assert (=> b!386562 (= e!234466 false)))

(declare-fun lt!181841 () array!22863)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6384 0))(
  ( (tuple2!6385 (_1!3202 (_ BitVec 64)) (_2!3202 V!13765)) )
))
(declare-datatypes ((List!6266 0))(
  ( (Nil!6263) (Cons!6262 (h!7118 tuple2!6384) (t!11424 List!6266)) )
))
(declare-datatypes ((ListLongMap!5311 0))(
  ( (ListLongMap!5312 (toList!2671 List!6266)) )
))
(declare-fun lt!181842 () ListLongMap!5311)

(declare-fun zeroValue!472 () V!13765)

(declare-fun v!373 () V!13765)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13765)

(declare-fun getCurrentListMapNoExtraKeys!905 (array!22863 array!22861 (_ BitVec 32) (_ BitVec 32) V!13765 V!13765 (_ BitVec 32) Int) ListLongMap!5311)

(assert (=> b!386562 (= lt!181842 (getCurrentListMapNoExtraKeys!905 lt!181841 (array!22862 (store (arr!10896 _values!506) i!548 (ValueCellFull!4404 v!373)) (size!11248 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181843 () ListLongMap!5311)

(assert (=> b!386562 (= lt!181843 (getCurrentListMapNoExtraKeys!905 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15807 () Bool)

(declare-fun mapRes!15807 () Bool)

(assert (=> mapIsEmpty!15807 mapRes!15807))

(declare-fun b!386563 () Bool)

(assert (=> b!386563 (= e!234469 e!234466)))

(declare-fun res!220810 () Bool)

(assert (=> b!386563 (=> (not res!220810) (not e!234466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22863 (_ BitVec 32)) Bool)

(assert (=> b!386563 (= res!220810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181841 mask!970))))

(assert (=> b!386563 (= lt!181841 (array!22864 (store (arr!10897 _keys!658) i!548 k0!778) (size!11249 _keys!658)))))

(declare-fun mapNonEmpty!15807 () Bool)

(declare-fun tp!31221 () Bool)

(declare-fun e!234467 () Bool)

(assert (=> mapNonEmpty!15807 (= mapRes!15807 (and tp!31221 e!234467))))

(declare-fun mapKey!15807 () (_ BitVec 32))

(declare-fun mapValue!15807 () ValueCell!4404)

(declare-fun mapRest!15807 () (Array (_ BitVec 32) ValueCell!4404))

(assert (=> mapNonEmpty!15807 (= (arr!10896 _values!506) (store mapRest!15807 mapKey!15807 mapValue!15807))))

(declare-fun b!386564 () Bool)

(declare-fun res!220811 () Bool)

(assert (=> b!386564 (=> (not res!220811) (not e!234469))))

(assert (=> b!386564 (= res!220811 (or (= (select (arr!10897 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10897 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386565 () Bool)

(declare-fun res!220802 () Bool)

(assert (=> b!386565 (=> (not res!220802) (not e!234466))))

(declare-datatypes ((List!6267 0))(
  ( (Nil!6264) (Cons!6263 (h!7119 (_ BitVec 64)) (t!11425 List!6267)) )
))
(declare-fun arrayNoDuplicates!0 (array!22863 (_ BitVec 32) List!6267) Bool)

(assert (=> b!386565 (= res!220802 (arrayNoDuplicates!0 lt!181841 #b00000000000000000000000000000000 Nil!6264))))

(declare-fun b!386558 () Bool)

(declare-fun res!220808 () Bool)

(assert (=> b!386558 (=> (not res!220808) (not e!234469))))

(assert (=> b!386558 (= res!220808 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11249 _keys!658))))))

(declare-fun res!220806 () Bool)

(assert (=> start!37728 (=> (not res!220806) (not e!234469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37728 (= res!220806 (validMask!0 mask!970))))

(assert (=> start!37728 e!234469))

(declare-fun e!234470 () Bool)

(declare-fun array_inv!7990 (array!22861) Bool)

(assert (=> start!37728 (and (array_inv!7990 _values!506) e!234470)))

(assert (=> start!37728 tp!31220))

(assert (=> start!37728 true))

(assert (=> start!37728 tp_is_empty!9495))

(declare-fun array_inv!7991 (array!22863) Bool)

(assert (=> start!37728 (array_inv!7991 _keys!658)))

(declare-fun b!386566 () Bool)

(assert (=> b!386566 (= e!234470 (and e!234471 mapRes!15807))))

(declare-fun condMapEmpty!15807 () Bool)

(declare-fun mapDefault!15807 () ValueCell!4404)

(assert (=> b!386566 (= condMapEmpty!15807 (= (arr!10896 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4404)) mapDefault!15807)))))

(declare-fun b!386567 () Bool)

(declare-fun res!220804 () Bool)

(assert (=> b!386567 (=> (not res!220804) (not e!234469))))

(assert (=> b!386567 (= res!220804 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6264))))

(declare-fun b!386568 () Bool)

(declare-fun res!220805 () Bool)

(assert (=> b!386568 (=> (not res!220805) (not e!234469))))

(assert (=> b!386568 (= res!220805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386569 () Bool)

(declare-fun res!220803 () Bool)

(assert (=> b!386569 (=> (not res!220803) (not e!234469))))

(declare-fun arrayContainsKey!0 (array!22863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386569 (= res!220803 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!386570 () Bool)

(assert (=> b!386570 (= e!234467 tp_is_empty!9495)))

(assert (= (and start!37728 res!220806) b!386559))

(assert (= (and b!386559 res!220807) b!386568))

(assert (= (and b!386568 res!220805) b!386567))

(assert (= (and b!386567 res!220804) b!386558))

(assert (= (and b!386558 res!220808) b!386561))

(assert (= (and b!386561 res!220809) b!386564))

(assert (= (and b!386564 res!220811) b!386569))

(assert (= (and b!386569 res!220803) b!386563))

(assert (= (and b!386563 res!220810) b!386565))

(assert (= (and b!386565 res!220802) b!386562))

(assert (= (and b!386566 condMapEmpty!15807) mapIsEmpty!15807))

(assert (= (and b!386566 (not condMapEmpty!15807)) mapNonEmpty!15807))

(get-info :version)

(assert (= (and mapNonEmpty!15807 ((_ is ValueCellFull!4404) mapValue!15807)) b!386570))

(assert (= (and b!386566 ((_ is ValueCellFull!4404) mapDefault!15807)) b!386560))

(assert (= start!37728 b!386566))

(declare-fun m!382871 () Bool)

(assert (=> b!386569 m!382871))

(declare-fun m!382873 () Bool)

(assert (=> b!386565 m!382873))

(declare-fun m!382875 () Bool)

(assert (=> b!386568 m!382875))

(declare-fun m!382877 () Bool)

(assert (=> b!386564 m!382877))

(declare-fun m!382879 () Bool)

(assert (=> b!386563 m!382879))

(declare-fun m!382881 () Bool)

(assert (=> b!386563 m!382881))

(declare-fun m!382883 () Bool)

(assert (=> b!386562 m!382883))

(declare-fun m!382885 () Bool)

(assert (=> b!386562 m!382885))

(declare-fun m!382887 () Bool)

(assert (=> b!386562 m!382887))

(declare-fun m!382889 () Bool)

(assert (=> start!37728 m!382889))

(declare-fun m!382891 () Bool)

(assert (=> start!37728 m!382891))

(declare-fun m!382893 () Bool)

(assert (=> start!37728 m!382893))

(declare-fun m!382895 () Bool)

(assert (=> mapNonEmpty!15807 m!382895))

(declare-fun m!382897 () Bool)

(assert (=> b!386567 m!382897))

(declare-fun m!382899 () Bool)

(assert (=> b!386561 m!382899))

(check-sat (not b!386561) (not b!386563) (not b!386565) (not b!386562) b_and!16083 (not b!386567) (not start!37728) (not b!386569) (not mapNonEmpty!15807) (not b_next!8823) (not b!386568) tp_is_empty!9495)
(check-sat b_and!16083 (not b_next!8823))
