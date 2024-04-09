; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37692 () Bool)

(assert start!37692)

(declare-fun b_free!8787 () Bool)

(declare-fun b_next!8787 () Bool)

(assert (=> start!37692 (= b_free!8787 (not b_next!8787))))

(declare-fun tp!31112 () Bool)

(declare-fun b_and!16047 () Bool)

(assert (=> start!37692 (= tp!31112 b_and!16047)))

(declare-fun b!385856 () Bool)

(declare-fun e!234142 () Bool)

(declare-fun e!234146 () Bool)

(assert (=> b!385856 (= e!234142 e!234146)))

(declare-fun res!220266 () Bool)

(assert (=> b!385856 (=> (not res!220266) (not e!234146))))

(declare-datatypes ((array!22793 0))(
  ( (array!22794 (arr!10862 (Array (_ BitVec 32) (_ BitVec 64))) (size!11214 (_ BitVec 32))) )
))
(declare-fun lt!181681 () array!22793)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22793 (_ BitVec 32)) Bool)

(assert (=> b!385856 (= res!220266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181681 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22793)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!385856 (= lt!181681 (array!22794 (store (arr!10862 _keys!658) i!548 k0!778) (size!11214 _keys!658)))))

(declare-fun b!385857 () Bool)

(assert (=> b!385857 (= e!234146 false)))

(declare-datatypes ((V!13717 0))(
  ( (V!13718 (val!4774 Int)) )
))
(declare-datatypes ((ValueCell!4386 0))(
  ( (ValueCellFull!4386 (v!6967 V!13717)) (EmptyCell!4386) )
))
(declare-datatypes ((array!22795 0))(
  ( (array!22796 (arr!10863 (Array (_ BitVec 32) ValueCell!4386)) (size!11215 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22795)

(declare-datatypes ((tuple2!6364 0))(
  ( (tuple2!6365 (_1!3192 (_ BitVec 64)) (_2!3192 V!13717)) )
))
(declare-datatypes ((List!6242 0))(
  ( (Nil!6239) (Cons!6238 (h!7094 tuple2!6364) (t!11400 List!6242)) )
))
(declare-datatypes ((ListLongMap!5291 0))(
  ( (ListLongMap!5292 (toList!2661 List!6242)) )
))
(declare-fun lt!181679 () ListLongMap!5291)

(declare-fun zeroValue!472 () V!13717)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13717)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13717)

(declare-fun getCurrentListMapNoExtraKeys!895 (array!22793 array!22795 (_ BitVec 32) (_ BitVec 32) V!13717 V!13717 (_ BitVec 32) Int) ListLongMap!5291)

(assert (=> b!385857 (= lt!181679 (getCurrentListMapNoExtraKeys!895 lt!181681 (array!22796 (store (arr!10863 _values!506) i!548 (ValueCellFull!4386 v!373)) (size!11215 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181680 () ListLongMap!5291)

(assert (=> b!385857 (= lt!181680 (getCurrentListMapNoExtraKeys!895 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!15753 () Bool)

(declare-fun mapRes!15753 () Bool)

(declare-fun tp!31113 () Bool)

(declare-fun e!234147 () Bool)

(assert (=> mapNonEmpty!15753 (= mapRes!15753 (and tp!31113 e!234147))))

(declare-fun mapRest!15753 () (Array (_ BitVec 32) ValueCell!4386))

(declare-fun mapValue!15753 () ValueCell!4386)

(declare-fun mapKey!15753 () (_ BitVec 32))

(assert (=> mapNonEmpty!15753 (= (arr!10863 _values!506) (store mapRest!15753 mapKey!15753 mapValue!15753))))

(declare-fun b!385858 () Bool)

(declare-fun tp_is_empty!9459 () Bool)

(assert (=> b!385858 (= e!234147 tp_is_empty!9459)))

(declare-fun b!385859 () Bool)

(declare-fun res!220271 () Bool)

(assert (=> b!385859 (=> (not res!220271) (not e!234142))))

(assert (=> b!385859 (= res!220271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385861 () Bool)

(declare-fun res!220267 () Bool)

(assert (=> b!385861 (=> (not res!220267) (not e!234142))))

(assert (=> b!385861 (= res!220267 (or (= (select (arr!10862 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10862 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385862 () Bool)

(declare-fun res!220264 () Bool)

(assert (=> b!385862 (=> (not res!220264) (not e!234142))))

(declare-datatypes ((List!6243 0))(
  ( (Nil!6240) (Cons!6239 (h!7095 (_ BitVec 64)) (t!11401 List!6243)) )
))
(declare-fun arrayNoDuplicates!0 (array!22793 (_ BitVec 32) List!6243) Bool)

(assert (=> b!385862 (= res!220264 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6240))))

(declare-fun mapIsEmpty!15753 () Bool)

(assert (=> mapIsEmpty!15753 mapRes!15753))

(declare-fun b!385863 () Bool)

(declare-fun e!234143 () Bool)

(declare-fun e!234145 () Bool)

(assert (=> b!385863 (= e!234143 (and e!234145 mapRes!15753))))

(declare-fun condMapEmpty!15753 () Bool)

(declare-fun mapDefault!15753 () ValueCell!4386)

(assert (=> b!385863 (= condMapEmpty!15753 (= (arr!10863 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4386)) mapDefault!15753)))))

(declare-fun b!385864 () Bool)

(declare-fun res!220262 () Bool)

(assert (=> b!385864 (=> (not res!220262) (not e!234142))))

(assert (=> b!385864 (= res!220262 (and (= (size!11215 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11214 _keys!658) (size!11215 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385865 () Bool)

(declare-fun res!220265 () Bool)

(assert (=> b!385865 (=> (not res!220265) (not e!234142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385865 (= res!220265 (validKeyInArray!0 k0!778))))

(declare-fun b!385866 () Bool)

(declare-fun res!220270 () Bool)

(assert (=> b!385866 (=> (not res!220270) (not e!234142))))

(assert (=> b!385866 (= res!220270 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11214 _keys!658))))))

(declare-fun res!220263 () Bool)

(assert (=> start!37692 (=> (not res!220263) (not e!234142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37692 (= res!220263 (validMask!0 mask!970))))

(assert (=> start!37692 e!234142))

(declare-fun array_inv!7970 (array!22795) Bool)

(assert (=> start!37692 (and (array_inv!7970 _values!506) e!234143)))

(assert (=> start!37692 tp!31112))

(assert (=> start!37692 true))

(assert (=> start!37692 tp_is_empty!9459))

(declare-fun array_inv!7971 (array!22793) Bool)

(assert (=> start!37692 (array_inv!7971 _keys!658)))

(declare-fun b!385860 () Bool)

(declare-fun res!220268 () Bool)

(assert (=> b!385860 (=> (not res!220268) (not e!234146))))

(assert (=> b!385860 (= res!220268 (arrayNoDuplicates!0 lt!181681 #b00000000000000000000000000000000 Nil!6240))))

(declare-fun b!385867 () Bool)

(declare-fun res!220269 () Bool)

(assert (=> b!385867 (=> (not res!220269) (not e!234142))))

(declare-fun arrayContainsKey!0 (array!22793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385867 (= res!220269 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!385868 () Bool)

(assert (=> b!385868 (= e!234145 tp_is_empty!9459)))

(assert (= (and start!37692 res!220263) b!385864))

(assert (= (and b!385864 res!220262) b!385859))

(assert (= (and b!385859 res!220271) b!385862))

(assert (= (and b!385862 res!220264) b!385866))

(assert (= (and b!385866 res!220270) b!385865))

(assert (= (and b!385865 res!220265) b!385861))

(assert (= (and b!385861 res!220267) b!385867))

(assert (= (and b!385867 res!220269) b!385856))

(assert (= (and b!385856 res!220266) b!385860))

(assert (= (and b!385860 res!220268) b!385857))

(assert (= (and b!385863 condMapEmpty!15753) mapIsEmpty!15753))

(assert (= (and b!385863 (not condMapEmpty!15753)) mapNonEmpty!15753))

(get-info :version)

(assert (= (and mapNonEmpty!15753 ((_ is ValueCellFull!4386) mapValue!15753)) b!385858))

(assert (= (and b!385863 ((_ is ValueCellFull!4386) mapDefault!15753)) b!385868))

(assert (= start!37692 b!385863))

(declare-fun m!382331 () Bool)

(assert (=> b!385856 m!382331))

(declare-fun m!382333 () Bool)

(assert (=> b!385856 m!382333))

(declare-fun m!382335 () Bool)

(assert (=> b!385857 m!382335))

(declare-fun m!382337 () Bool)

(assert (=> b!385857 m!382337))

(declare-fun m!382339 () Bool)

(assert (=> b!385857 m!382339))

(declare-fun m!382341 () Bool)

(assert (=> b!385860 m!382341))

(declare-fun m!382343 () Bool)

(assert (=> b!385865 m!382343))

(declare-fun m!382345 () Bool)

(assert (=> b!385862 m!382345))

(declare-fun m!382347 () Bool)

(assert (=> start!37692 m!382347))

(declare-fun m!382349 () Bool)

(assert (=> start!37692 m!382349))

(declare-fun m!382351 () Bool)

(assert (=> start!37692 m!382351))

(declare-fun m!382353 () Bool)

(assert (=> b!385859 m!382353))

(declare-fun m!382355 () Bool)

(assert (=> b!385867 m!382355))

(declare-fun m!382357 () Bool)

(assert (=> b!385861 m!382357))

(declare-fun m!382359 () Bool)

(assert (=> mapNonEmpty!15753 m!382359))

(check-sat (not b!385867) (not b!385857) (not b!385856) (not b!385862) (not b!385865) tp_is_empty!9459 b_and!16047 (not b!385860) (not b!385859) (not start!37692) (not mapNonEmpty!15753) (not b_next!8787))
(check-sat b_and!16047 (not b_next!8787))
