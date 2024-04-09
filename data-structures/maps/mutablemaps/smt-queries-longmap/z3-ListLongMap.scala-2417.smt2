; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38240 () Bool)

(assert start!38240)

(declare-fun b_free!9069 () Bool)

(declare-fun b_next!9069 () Bool)

(assert (=> start!38240 (= b_free!9069 (not b_next!9069))))

(declare-fun tp!31994 () Bool)

(declare-fun b_and!16473 () Bool)

(assert (=> start!38240 (= tp!31994 b_and!16473)))

(declare-fun res!226010 () Bool)

(declare-fun e!238643 () Bool)

(assert (=> start!38240 (=> (not res!226010) (not e!238643))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38240 (= res!226010 (validMask!0 mask!970))))

(assert (=> start!38240 e!238643))

(declare-datatypes ((V!14093 0))(
  ( (V!14094 (val!4915 Int)) )
))
(declare-datatypes ((ValueCell!4527 0))(
  ( (ValueCellFull!4527 (v!7156 V!14093)) (EmptyCell!4527) )
))
(declare-datatypes ((array!23367 0))(
  ( (array!23368 (arr!11137 (Array (_ BitVec 32) ValueCell!4527)) (size!11489 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23367)

(declare-fun e!238641 () Bool)

(declare-fun array_inv!8154 (array!23367) Bool)

(assert (=> start!38240 (and (array_inv!8154 _values!506) e!238641)))

(assert (=> start!38240 tp!31994))

(assert (=> start!38240 true))

(declare-fun tp_is_empty!9741 () Bool)

(assert (=> start!38240 tp_is_empty!9741))

(declare-datatypes ((array!23369 0))(
  ( (array!23370 (arr!11138 (Array (_ BitVec 32) (_ BitVec 64))) (size!11490 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23369)

(declare-fun array_inv!8155 (array!23369) Bool)

(assert (=> start!38240 (array_inv!8155 _keys!658)))

(declare-fun b!394215 () Bool)

(declare-fun e!238642 () Bool)

(declare-fun e!238647 () Bool)

(assert (=> b!394215 (= e!238642 e!238647)))

(declare-fun res!226012 () Bool)

(assert (=> b!394215 (=> res!226012 e!238647)))

(declare-datatypes ((tuple2!6566 0))(
  ( (tuple2!6567 (_1!3293 (_ BitVec 64)) (_2!3293 V!14093)) )
))
(declare-datatypes ((List!6449 0))(
  ( (Nil!6446) (Cons!6445 (h!7301 tuple2!6566) (t!11631 List!6449)) )
))
(declare-datatypes ((ListLongMap!5493 0))(
  ( (ListLongMap!5494 (toList!2762 List!6449)) )
))
(declare-fun lt!186850 () ListLongMap!5493)

(declare-fun lt!186859 () ListLongMap!5493)

(declare-fun lt!186855 () tuple2!6566)

(declare-fun +!1060 (ListLongMap!5493 tuple2!6566) ListLongMap!5493)

(assert (=> b!394215 (= res!226012 (not (= (+!1060 lt!186850 lt!186855) lt!186859)))))

(declare-fun lt!186852 () ListLongMap!5493)

(assert (=> b!394215 (= lt!186859 lt!186852)))

(declare-fun b!394216 () Bool)

(declare-fun e!238646 () Bool)

(assert (=> b!394216 (= e!238646 tp_is_empty!9741)))

(declare-fun b!394217 () Bool)

(declare-fun res!226017 () Bool)

(assert (=> b!394217 (=> (not res!226017) (not e!238643))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!394217 (= res!226017 (and (= (size!11489 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11490 _keys!658) (size!11489 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!394218 () Bool)

(declare-fun e!238645 () Bool)

(declare-fun mapRes!16212 () Bool)

(assert (=> b!394218 (= e!238641 (and e!238645 mapRes!16212))))

(declare-fun condMapEmpty!16212 () Bool)

(declare-fun mapDefault!16212 () ValueCell!4527)

(assert (=> b!394218 (= condMapEmpty!16212 (= (arr!11137 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4527)) mapDefault!16212)))))

(declare-fun mapNonEmpty!16212 () Bool)

(declare-fun tp!31995 () Bool)

(assert (=> mapNonEmpty!16212 (= mapRes!16212 (and tp!31995 e!238646))))

(declare-fun mapRest!16212 () (Array (_ BitVec 32) ValueCell!4527))

(declare-fun mapValue!16212 () ValueCell!4527)

(declare-fun mapKey!16212 () (_ BitVec 32))

(assert (=> mapNonEmpty!16212 (= (arr!11137 _values!506) (store mapRest!16212 mapKey!16212 mapValue!16212))))

(declare-fun b!394219 () Bool)

(declare-fun e!238640 () Bool)

(assert (=> b!394219 (= e!238643 e!238640)))

(declare-fun res!226011 () Bool)

(assert (=> b!394219 (=> (not res!226011) (not e!238640))))

(declare-fun lt!186853 () array!23369)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23369 (_ BitVec 32)) Bool)

(assert (=> b!394219 (= res!226011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186853 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!394219 (= lt!186853 (array!23370 (store (arr!11138 _keys!658) i!548 k0!778) (size!11490 _keys!658)))))

(declare-fun b!394220 () Bool)

(declare-fun res!226018 () Bool)

(assert (=> b!394220 (=> (not res!226018) (not e!238643))))

(declare-fun arrayContainsKey!0 (array!23369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!394220 (= res!226018 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!394221 () Bool)

(declare-fun res!226009 () Bool)

(assert (=> b!394221 (=> (not res!226009) (not e!238643))))

(assert (=> b!394221 (= res!226009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!394222 () Bool)

(declare-fun res!226014 () Bool)

(assert (=> b!394222 (=> (not res!226014) (not e!238643))))

(assert (=> b!394222 (= res!226014 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11490 _keys!658))))))

(declare-fun mapIsEmpty!16212 () Bool)

(assert (=> mapIsEmpty!16212 mapRes!16212))

(declare-fun b!394223 () Bool)

(declare-fun res!226019 () Bool)

(assert (=> b!394223 (=> (not res!226019) (not e!238643))))

(assert (=> b!394223 (= res!226019 (or (= (select (arr!11138 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11138 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!394224 () Bool)

(declare-fun res!226008 () Bool)

(assert (=> b!394224 (=> (not res!226008) (not e!238643))))

(declare-datatypes ((List!6450 0))(
  ( (Nil!6447) (Cons!6446 (h!7302 (_ BitVec 64)) (t!11632 List!6450)) )
))
(declare-fun arrayNoDuplicates!0 (array!23369 (_ BitVec 32) List!6450) Bool)

(assert (=> b!394224 (= res!226008 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6447))))

(declare-fun b!394225 () Bool)

(assert (=> b!394225 (= e!238640 (not e!238642))))

(declare-fun res!226015 () Bool)

(assert (=> b!394225 (=> res!226015 e!238642)))

(declare-fun lt!186851 () Bool)

(assert (=> b!394225 (= res!226015 (or (and (not lt!186851) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186851) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186851)))))

(assert (=> b!394225 (= lt!186851 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14093)

(declare-fun minValue!472 () V!14093)

(declare-fun getCurrentListMap!2120 (array!23369 array!23367 (_ BitVec 32) (_ BitVec 32) V!14093 V!14093 (_ BitVec 32) Int) ListLongMap!5493)

(assert (=> b!394225 (= lt!186850 (getCurrentListMap!2120 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186856 () array!23367)

(assert (=> b!394225 (= lt!186859 (getCurrentListMap!2120 lt!186853 lt!186856 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186854 () ListLongMap!5493)

(assert (=> b!394225 (and (= lt!186852 lt!186854) (= lt!186854 lt!186852))))

(declare-fun lt!186857 () ListLongMap!5493)

(assert (=> b!394225 (= lt!186854 (+!1060 lt!186857 lt!186855))))

(declare-fun v!373 () V!14093)

(assert (=> b!394225 (= lt!186855 (tuple2!6567 k0!778 v!373))))

(declare-datatypes ((Unit!12015 0))(
  ( (Unit!12016) )
))
(declare-fun lt!186858 () Unit!12015)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!277 (array!23369 array!23367 (_ BitVec 32) (_ BitVec 32) V!14093 V!14093 (_ BitVec 32) (_ BitVec 64) V!14093 (_ BitVec 32) Int) Unit!12015)

(assert (=> b!394225 (= lt!186858 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!277 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!982 (array!23369 array!23367 (_ BitVec 32) (_ BitVec 32) V!14093 V!14093 (_ BitVec 32) Int) ListLongMap!5493)

(assert (=> b!394225 (= lt!186852 (getCurrentListMapNoExtraKeys!982 lt!186853 lt!186856 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!394225 (= lt!186856 (array!23368 (store (arr!11137 _values!506) i!548 (ValueCellFull!4527 v!373)) (size!11489 _values!506)))))

(assert (=> b!394225 (= lt!186857 (getCurrentListMapNoExtraKeys!982 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!394226 () Bool)

(declare-fun res!226016 () Bool)

(assert (=> b!394226 (=> (not res!226016) (not e!238643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!394226 (= res!226016 (validKeyInArray!0 k0!778))))

(declare-fun b!394227 () Bool)

(assert (=> b!394227 (= e!238645 tp_is_empty!9741)))

(declare-fun b!394228 () Bool)

(assert (=> b!394228 (= e!238647 (bvslt i!548 (size!11489 _values!506)))))

(declare-fun b!394229 () Bool)

(declare-fun res!226013 () Bool)

(assert (=> b!394229 (=> (not res!226013) (not e!238640))))

(assert (=> b!394229 (= res!226013 (arrayNoDuplicates!0 lt!186853 #b00000000000000000000000000000000 Nil!6447))))

(assert (= (and start!38240 res!226010) b!394217))

(assert (= (and b!394217 res!226017) b!394221))

(assert (= (and b!394221 res!226009) b!394224))

(assert (= (and b!394224 res!226008) b!394222))

(assert (= (and b!394222 res!226014) b!394226))

(assert (= (and b!394226 res!226016) b!394223))

(assert (= (and b!394223 res!226019) b!394220))

(assert (= (and b!394220 res!226018) b!394219))

(assert (= (and b!394219 res!226011) b!394229))

(assert (= (and b!394229 res!226013) b!394225))

(assert (= (and b!394225 (not res!226015)) b!394215))

(assert (= (and b!394215 (not res!226012)) b!394228))

(assert (= (and b!394218 condMapEmpty!16212) mapIsEmpty!16212))

(assert (= (and b!394218 (not condMapEmpty!16212)) mapNonEmpty!16212))

(get-info :version)

(assert (= (and mapNonEmpty!16212 ((_ is ValueCellFull!4527) mapValue!16212)) b!394216))

(assert (= (and b!394218 ((_ is ValueCellFull!4527) mapDefault!16212)) b!394227))

(assert (= start!38240 b!394218))

(declare-fun m!390685 () Bool)

(assert (=> b!394221 m!390685))

(declare-fun m!390687 () Bool)

(assert (=> start!38240 m!390687))

(declare-fun m!390689 () Bool)

(assert (=> start!38240 m!390689))

(declare-fun m!390691 () Bool)

(assert (=> start!38240 m!390691))

(declare-fun m!390693 () Bool)

(assert (=> mapNonEmpty!16212 m!390693))

(declare-fun m!390695 () Bool)

(assert (=> b!394219 m!390695))

(declare-fun m!390697 () Bool)

(assert (=> b!394219 m!390697))

(declare-fun m!390699 () Bool)

(assert (=> b!394229 m!390699))

(declare-fun m!390701 () Bool)

(assert (=> b!394224 m!390701))

(declare-fun m!390703 () Bool)

(assert (=> b!394225 m!390703))

(declare-fun m!390705 () Bool)

(assert (=> b!394225 m!390705))

(declare-fun m!390707 () Bool)

(assert (=> b!394225 m!390707))

(declare-fun m!390709 () Bool)

(assert (=> b!394225 m!390709))

(declare-fun m!390711 () Bool)

(assert (=> b!394225 m!390711))

(declare-fun m!390713 () Bool)

(assert (=> b!394225 m!390713))

(declare-fun m!390715 () Bool)

(assert (=> b!394225 m!390715))

(declare-fun m!390717 () Bool)

(assert (=> b!394215 m!390717))

(declare-fun m!390719 () Bool)

(assert (=> b!394226 m!390719))

(declare-fun m!390721 () Bool)

(assert (=> b!394220 m!390721))

(declare-fun m!390723 () Bool)

(assert (=> b!394223 m!390723))

(check-sat (not b_next!9069) (not b!394226) (not b!394220) (not b!394229) (not b!394224) (not mapNonEmpty!16212) (not start!38240) (not b!394215) (not b!394219) (not b!394225) (not b!394221) tp_is_empty!9741 b_and!16473)
(check-sat b_and!16473 (not b_next!9069))
