; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37758 () Bool)

(assert start!37758)

(declare-fun b_free!8853 () Bool)

(declare-fun b_next!8853 () Bool)

(assert (=> start!37758 (= b_free!8853 (not b_next!8853))))

(declare-fun tp!31311 () Bool)

(declare-fun b_and!16113 () Bool)

(assert (=> start!37758 (= tp!31311 b_and!16113)))

(declare-fun b!387143 () Bool)

(declare-fun res!221261 () Bool)

(declare-fun e!234740 () Bool)

(assert (=> b!387143 (=> (not res!221261) (not e!234740))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22919 0))(
  ( (array!22920 (arr!10925 (Array (_ BitVec 32) (_ BitVec 64))) (size!11277 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22919)

(assert (=> b!387143 (= res!221261 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11277 _keys!658))))))

(declare-fun b!387144 () Bool)

(declare-fun res!221253 () Bool)

(assert (=> b!387144 (=> (not res!221253) (not e!234740))))

(declare-datatypes ((List!6288 0))(
  ( (Nil!6285) (Cons!6284 (h!7140 (_ BitVec 64)) (t!11446 List!6288)) )
))
(declare-fun arrayNoDuplicates!0 (array!22919 (_ BitVec 32) List!6288) Bool)

(assert (=> b!387144 (= res!221253 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6285))))

(declare-fun b!387145 () Bool)

(declare-fun e!234741 () Bool)

(assert (=> b!387145 (= e!234740 e!234741)))

(declare-fun res!221252 () Bool)

(assert (=> b!387145 (=> (not res!221252) (not e!234741))))

(declare-fun lt!181976 () array!22919)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22919 (_ BitVec 32)) Bool)

(assert (=> b!387145 (= res!221252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181976 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!387145 (= lt!181976 (array!22920 (store (arr!10925 _keys!658) i!548 k0!778) (size!11277 _keys!658)))))

(declare-fun b!387146 () Bool)

(declare-fun res!221254 () Bool)

(assert (=> b!387146 (=> (not res!221254) (not e!234740))))

(assert (=> b!387146 (= res!221254 (or (= (select (arr!10925 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10925 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387147 () Bool)

(declare-fun res!221257 () Bool)

(assert (=> b!387147 (=> (not res!221257) (not e!234740))))

(assert (=> b!387147 (= res!221257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387148 () Bool)

(declare-fun e!234737 () Bool)

(declare-fun e!234739 () Bool)

(declare-fun mapRes!15852 () Bool)

(assert (=> b!387148 (= e!234737 (and e!234739 mapRes!15852))))

(declare-fun condMapEmpty!15852 () Bool)

(declare-datatypes ((V!13805 0))(
  ( (V!13806 (val!4807 Int)) )
))
(declare-datatypes ((ValueCell!4419 0))(
  ( (ValueCellFull!4419 (v!7000 V!13805)) (EmptyCell!4419) )
))
(declare-datatypes ((array!22921 0))(
  ( (array!22922 (arr!10926 (Array (_ BitVec 32) ValueCell!4419)) (size!11278 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22921)

(declare-fun mapDefault!15852 () ValueCell!4419)

(assert (=> b!387148 (= condMapEmpty!15852 (= (arr!10926 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4419)) mapDefault!15852)))))

(declare-fun b!387149 () Bool)

(declare-fun res!221256 () Bool)

(assert (=> b!387149 (=> (not res!221256) (not e!234740))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!387149 (= res!221256 (and (= (size!11278 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11277 _keys!658) (size!11278 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387151 () Bool)

(declare-fun tp_is_empty!9525 () Bool)

(assert (=> b!387151 (= e!234739 tp_is_empty!9525)))

(declare-fun b!387152 () Bool)

(assert (=> b!387152 (= e!234741 false)))

(declare-datatypes ((tuple2!6404 0))(
  ( (tuple2!6405 (_1!3212 (_ BitVec 64)) (_2!3212 V!13805)) )
))
(declare-datatypes ((List!6289 0))(
  ( (Nil!6286) (Cons!6285 (h!7141 tuple2!6404) (t!11447 List!6289)) )
))
(declare-datatypes ((ListLongMap!5331 0))(
  ( (ListLongMap!5332 (toList!2681 List!6289)) )
))
(declare-fun lt!181977 () ListLongMap!5331)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13805)

(declare-fun v!373 () V!13805)

(declare-fun minValue!472 () V!13805)

(declare-fun getCurrentListMapNoExtraKeys!915 (array!22919 array!22921 (_ BitVec 32) (_ BitVec 32) V!13805 V!13805 (_ BitVec 32) Int) ListLongMap!5331)

(assert (=> b!387152 (= lt!181977 (getCurrentListMapNoExtraKeys!915 lt!181976 (array!22922 (store (arr!10926 _values!506) i!548 (ValueCellFull!4419 v!373)) (size!11278 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181978 () ListLongMap!5331)

(assert (=> b!387152 (= lt!181978 (getCurrentListMapNoExtraKeys!915 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387153 () Bool)

(declare-fun e!234736 () Bool)

(assert (=> b!387153 (= e!234736 tp_is_empty!9525)))

(declare-fun b!387154 () Bool)

(declare-fun res!221258 () Bool)

(assert (=> b!387154 (=> (not res!221258) (not e!234741))))

(assert (=> b!387154 (= res!221258 (arrayNoDuplicates!0 lt!181976 #b00000000000000000000000000000000 Nil!6285))))

(declare-fun b!387155 () Bool)

(declare-fun res!221260 () Bool)

(assert (=> b!387155 (=> (not res!221260) (not e!234740))))

(declare-fun arrayContainsKey!0 (array!22919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387155 (= res!221260 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!387150 () Bool)

(declare-fun res!221259 () Bool)

(assert (=> b!387150 (=> (not res!221259) (not e!234740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387150 (= res!221259 (validKeyInArray!0 k0!778))))

(declare-fun res!221255 () Bool)

(assert (=> start!37758 (=> (not res!221255) (not e!234740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37758 (= res!221255 (validMask!0 mask!970))))

(assert (=> start!37758 e!234740))

(declare-fun array_inv!8014 (array!22921) Bool)

(assert (=> start!37758 (and (array_inv!8014 _values!506) e!234737)))

(assert (=> start!37758 tp!31311))

(assert (=> start!37758 true))

(assert (=> start!37758 tp_is_empty!9525))

(declare-fun array_inv!8015 (array!22919) Bool)

(assert (=> start!37758 (array_inv!8015 _keys!658)))

(declare-fun mapNonEmpty!15852 () Bool)

(declare-fun tp!31310 () Bool)

(assert (=> mapNonEmpty!15852 (= mapRes!15852 (and tp!31310 e!234736))))

(declare-fun mapRest!15852 () (Array (_ BitVec 32) ValueCell!4419))

(declare-fun mapKey!15852 () (_ BitVec 32))

(declare-fun mapValue!15852 () ValueCell!4419)

(assert (=> mapNonEmpty!15852 (= (arr!10926 _values!506) (store mapRest!15852 mapKey!15852 mapValue!15852))))

(declare-fun mapIsEmpty!15852 () Bool)

(assert (=> mapIsEmpty!15852 mapRes!15852))

(assert (= (and start!37758 res!221255) b!387149))

(assert (= (and b!387149 res!221256) b!387147))

(assert (= (and b!387147 res!221257) b!387144))

(assert (= (and b!387144 res!221253) b!387143))

(assert (= (and b!387143 res!221261) b!387150))

(assert (= (and b!387150 res!221259) b!387146))

(assert (= (and b!387146 res!221254) b!387155))

(assert (= (and b!387155 res!221260) b!387145))

(assert (= (and b!387145 res!221252) b!387154))

(assert (= (and b!387154 res!221258) b!387152))

(assert (= (and b!387148 condMapEmpty!15852) mapIsEmpty!15852))

(assert (= (and b!387148 (not condMapEmpty!15852)) mapNonEmpty!15852))

(get-info :version)

(assert (= (and mapNonEmpty!15852 ((_ is ValueCellFull!4419) mapValue!15852)) b!387153))

(assert (= (and b!387148 ((_ is ValueCellFull!4419) mapDefault!15852)) b!387151))

(assert (= start!37758 b!387148))

(declare-fun m!383321 () Bool)

(assert (=> b!387147 m!383321))

(declare-fun m!383323 () Bool)

(assert (=> b!387154 m!383323))

(declare-fun m!383325 () Bool)

(assert (=> start!37758 m!383325))

(declare-fun m!383327 () Bool)

(assert (=> start!37758 m!383327))

(declare-fun m!383329 () Bool)

(assert (=> start!37758 m!383329))

(declare-fun m!383331 () Bool)

(assert (=> b!387150 m!383331))

(declare-fun m!383333 () Bool)

(assert (=> mapNonEmpty!15852 m!383333))

(declare-fun m!383335 () Bool)

(assert (=> b!387155 m!383335))

(declare-fun m!383337 () Bool)

(assert (=> b!387145 m!383337))

(declare-fun m!383339 () Bool)

(assert (=> b!387145 m!383339))

(declare-fun m!383341 () Bool)

(assert (=> b!387146 m!383341))

(declare-fun m!383343 () Bool)

(assert (=> b!387144 m!383343))

(declare-fun m!383345 () Bool)

(assert (=> b!387152 m!383345))

(declare-fun m!383347 () Bool)

(assert (=> b!387152 m!383347))

(declare-fun m!383349 () Bool)

(assert (=> b!387152 m!383349))

(check-sat (not mapNonEmpty!15852) (not b_next!8853) (not b!387147) tp_is_empty!9525 (not b!387155) (not start!37758) (not b!387150) (not b!387152) b_and!16113 (not b!387144) (not b!387145) (not b!387154))
(check-sat b_and!16113 (not b_next!8853))
