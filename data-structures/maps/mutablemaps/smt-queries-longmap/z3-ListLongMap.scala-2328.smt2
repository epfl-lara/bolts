; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37440 () Bool)

(assert start!37440)

(declare-fun b_free!8559 () Bool)

(declare-fun b_next!8559 () Bool)

(assert (=> start!37440 (= b_free!8559 (not b_next!8559))))

(declare-fun tp!30392 () Bool)

(declare-fun b_and!15819 () Bool)

(assert (=> start!37440 (= tp!30392 b_and!15819)))

(declare-fun b!380821 () Bool)

(declare-fun res!216364 () Bool)

(declare-fun e!231587 () Bool)

(assert (=> b!380821 (=> (not res!216364) (not e!231587))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13381 0))(
  ( (V!13382 (val!4648 Int)) )
))
(declare-datatypes ((ValueCell!4260 0))(
  ( (ValueCellFull!4260 (v!6841 V!13381)) (EmptyCell!4260) )
))
(declare-datatypes ((array!22307 0))(
  ( (array!22308 (arr!10619 (Array (_ BitVec 32) ValueCell!4260)) (size!10971 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22307)

(declare-datatypes ((array!22309 0))(
  ( (array!22310 (arr!10620 (Array (_ BitVec 32) (_ BitVec 64))) (size!10972 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22309)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!380821 (= res!216364 (and (= (size!10971 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10972 _keys!658) (size!10971 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15375 () Bool)

(declare-fun mapRes!15375 () Bool)

(declare-fun tp!30393 () Bool)

(declare-fun e!231588 () Bool)

(assert (=> mapNonEmpty!15375 (= mapRes!15375 (and tp!30393 e!231588))))

(declare-fun mapValue!15375 () ValueCell!4260)

(declare-fun mapRest!15375 () (Array (_ BitVec 32) ValueCell!4260))

(declare-fun mapKey!15375 () (_ BitVec 32))

(assert (=> mapNonEmpty!15375 (= (arr!10619 _values!506) (store mapRest!15375 mapKey!15375 mapValue!15375))))

(declare-fun b!380822 () Bool)

(declare-fun res!216362 () Bool)

(assert (=> b!380822 (=> (not res!216362) (not e!231587))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380822 (= res!216362 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10972 _keys!658))))))

(declare-fun b!380823 () Bool)

(declare-fun e!231586 () Bool)

(declare-fun e!231584 () Bool)

(assert (=> b!380823 (= e!231586 (and e!231584 mapRes!15375))))

(declare-fun condMapEmpty!15375 () Bool)

(declare-fun mapDefault!15375 () ValueCell!4260)

(assert (=> b!380823 (= condMapEmpty!15375 (= (arr!10619 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4260)) mapDefault!15375)))))

(declare-fun b!380824 () Bool)

(declare-fun tp_is_empty!9207 () Bool)

(assert (=> b!380824 (= e!231588 tp_is_empty!9207)))

(declare-fun b!380825 () Bool)

(declare-fun res!216361 () Bool)

(assert (=> b!380825 (=> (not res!216361) (not e!231587))))

(assert (=> b!380825 (= res!216361 (or (= (select (arr!10620 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10620 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380826 () Bool)

(declare-fun res!216371 () Bool)

(assert (=> b!380826 (=> (not res!216371) (not e!231587))))

(declare-datatypes ((List!6065 0))(
  ( (Nil!6062) (Cons!6061 (h!6917 (_ BitVec 64)) (t!11223 List!6065)) )
))
(declare-fun arrayNoDuplicates!0 (array!22309 (_ BitVec 32) List!6065) Bool)

(assert (=> b!380826 (= res!216371 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6062))))

(declare-fun b!380827 () Bool)

(declare-fun e!231582 () Bool)

(assert (=> b!380827 (= e!231587 e!231582)))

(declare-fun res!216369 () Bool)

(assert (=> b!380827 (=> (not res!216369) (not e!231582))))

(declare-fun lt!178474 () array!22309)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22309 (_ BitVec 32)) Bool)

(assert (=> b!380827 (= res!216369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178474 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!380827 (= lt!178474 (array!22310 (store (arr!10620 _keys!658) i!548 k0!778) (size!10972 _keys!658)))))

(declare-fun b!380828 () Bool)

(declare-fun res!216368 () Bool)

(assert (=> b!380828 (=> (not res!216368) (not e!231587))))

(declare-fun arrayContainsKey!0 (array!22309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380828 (= res!216368 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!380829 () Bool)

(declare-fun e!231583 () Bool)

(assert (=> b!380829 (= e!231583 true)))

(declare-datatypes ((tuple2!6194 0))(
  ( (tuple2!6195 (_1!3107 (_ BitVec 64)) (_2!3107 V!13381)) )
))
(declare-datatypes ((List!6066 0))(
  ( (Nil!6063) (Cons!6062 (h!6918 tuple2!6194) (t!11224 List!6066)) )
))
(declare-datatypes ((ListLongMap!5121 0))(
  ( (ListLongMap!5122 (toList!2576 List!6066)) )
))
(declare-fun lt!178475 () ListLongMap!5121)

(declare-fun lt!178477 () ListLongMap!5121)

(assert (=> b!380829 (= lt!178475 lt!178477)))

(declare-fun b!380830 () Bool)

(assert (=> b!380830 (= e!231582 (not e!231583))))

(declare-fun res!216365 () Bool)

(assert (=> b!380830 (=> res!216365 e!231583)))

(declare-fun lt!178470 () Bool)

(assert (=> b!380830 (= res!216365 (or (and (not lt!178470) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178470) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178470)))))

(assert (=> b!380830 (= lt!178470 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13381)

(declare-fun lt!178471 () ListLongMap!5121)

(declare-fun minValue!472 () V!13381)

(declare-fun getCurrentListMap!1999 (array!22309 array!22307 (_ BitVec 32) (_ BitVec 32) V!13381 V!13381 (_ BitVec 32) Int) ListLongMap!5121)

(assert (=> b!380830 (= lt!178471 (getCurrentListMap!1999 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178476 () array!22307)

(assert (=> b!380830 (= lt!178475 (getCurrentListMap!1999 lt!178474 lt!178476 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178469 () ListLongMap!5121)

(assert (=> b!380830 (and (= lt!178477 lt!178469) (= lt!178469 lt!178477))))

(declare-fun v!373 () V!13381)

(declare-fun lt!178472 () ListLongMap!5121)

(declare-fun +!917 (ListLongMap!5121 tuple2!6194) ListLongMap!5121)

(assert (=> b!380830 (= lt!178469 (+!917 lt!178472 (tuple2!6195 k0!778 v!373)))))

(declare-datatypes ((Unit!11727 0))(
  ( (Unit!11728) )
))
(declare-fun lt!178473 () Unit!11727)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!150 (array!22309 array!22307 (_ BitVec 32) (_ BitVec 32) V!13381 V!13381 (_ BitVec 32) (_ BitVec 64) V!13381 (_ BitVec 32) Int) Unit!11727)

(assert (=> b!380830 (= lt!178473 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!150 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!817 (array!22309 array!22307 (_ BitVec 32) (_ BitVec 32) V!13381 V!13381 (_ BitVec 32) Int) ListLongMap!5121)

(assert (=> b!380830 (= lt!178477 (getCurrentListMapNoExtraKeys!817 lt!178474 lt!178476 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380830 (= lt!178476 (array!22308 (store (arr!10619 _values!506) i!548 (ValueCellFull!4260 v!373)) (size!10971 _values!506)))))

(assert (=> b!380830 (= lt!178472 (getCurrentListMapNoExtraKeys!817 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!380831 () Bool)

(declare-fun res!216367 () Bool)

(assert (=> b!380831 (=> (not res!216367) (not e!231582))))

(assert (=> b!380831 (= res!216367 (arrayNoDuplicates!0 lt!178474 #b00000000000000000000000000000000 Nil!6062))))

(declare-fun b!380832 () Bool)

(declare-fun res!216370 () Bool)

(assert (=> b!380832 (=> (not res!216370) (not e!231587))))

(assert (=> b!380832 (= res!216370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15375 () Bool)

(assert (=> mapIsEmpty!15375 mapRes!15375))

(declare-fun res!216363 () Bool)

(assert (=> start!37440 (=> (not res!216363) (not e!231587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37440 (= res!216363 (validMask!0 mask!970))))

(assert (=> start!37440 e!231587))

(declare-fun array_inv!7806 (array!22307) Bool)

(assert (=> start!37440 (and (array_inv!7806 _values!506) e!231586)))

(assert (=> start!37440 tp!30392))

(assert (=> start!37440 true))

(assert (=> start!37440 tp_is_empty!9207))

(declare-fun array_inv!7807 (array!22309) Bool)

(assert (=> start!37440 (array_inv!7807 _keys!658)))

(declare-fun b!380833 () Bool)

(declare-fun res!216366 () Bool)

(assert (=> b!380833 (=> (not res!216366) (not e!231587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380833 (= res!216366 (validKeyInArray!0 k0!778))))

(declare-fun b!380834 () Bool)

(assert (=> b!380834 (= e!231584 tp_is_empty!9207)))

(assert (= (and start!37440 res!216363) b!380821))

(assert (= (and b!380821 res!216364) b!380832))

(assert (= (and b!380832 res!216370) b!380826))

(assert (= (and b!380826 res!216371) b!380822))

(assert (= (and b!380822 res!216362) b!380833))

(assert (= (and b!380833 res!216366) b!380825))

(assert (= (and b!380825 res!216361) b!380828))

(assert (= (and b!380828 res!216368) b!380827))

(assert (= (and b!380827 res!216369) b!380831))

(assert (= (and b!380831 res!216367) b!380830))

(assert (= (and b!380830 (not res!216365)) b!380829))

(assert (= (and b!380823 condMapEmpty!15375) mapIsEmpty!15375))

(assert (= (and b!380823 (not condMapEmpty!15375)) mapNonEmpty!15375))

(get-info :version)

(assert (= (and mapNonEmpty!15375 ((_ is ValueCellFull!4260) mapValue!15375)) b!380824))

(assert (= (and b!380823 ((_ is ValueCellFull!4260) mapDefault!15375)) b!380834))

(assert (= start!37440 b!380823))

(declare-fun m!377821 () Bool)

(assert (=> b!380832 m!377821))

(declare-fun m!377823 () Bool)

(assert (=> b!380826 m!377823))

(declare-fun m!377825 () Bool)

(assert (=> b!380830 m!377825))

(declare-fun m!377827 () Bool)

(assert (=> b!380830 m!377827))

(declare-fun m!377829 () Bool)

(assert (=> b!380830 m!377829))

(declare-fun m!377831 () Bool)

(assert (=> b!380830 m!377831))

(declare-fun m!377833 () Bool)

(assert (=> b!380830 m!377833))

(declare-fun m!377835 () Bool)

(assert (=> b!380830 m!377835))

(declare-fun m!377837 () Bool)

(assert (=> b!380830 m!377837))

(declare-fun m!377839 () Bool)

(assert (=> b!380831 m!377839))

(declare-fun m!377841 () Bool)

(assert (=> mapNonEmpty!15375 m!377841))

(declare-fun m!377843 () Bool)

(assert (=> b!380833 m!377843))

(declare-fun m!377845 () Bool)

(assert (=> start!37440 m!377845))

(declare-fun m!377847 () Bool)

(assert (=> start!37440 m!377847))

(declare-fun m!377849 () Bool)

(assert (=> start!37440 m!377849))

(declare-fun m!377851 () Bool)

(assert (=> b!380825 m!377851))

(declare-fun m!377853 () Bool)

(assert (=> b!380827 m!377853))

(declare-fun m!377855 () Bool)

(assert (=> b!380827 m!377855))

(declare-fun m!377857 () Bool)

(assert (=> b!380828 m!377857))

(check-sat (not b!380828) b_and!15819 (not b!380832) (not start!37440) (not b!380833) (not b!380831) (not b_next!8559) (not b!380827) (not mapNonEmpty!15375) (not b!380826) tp_is_empty!9207 (not b!380830))
(check-sat b_and!15819 (not b_next!8559))
