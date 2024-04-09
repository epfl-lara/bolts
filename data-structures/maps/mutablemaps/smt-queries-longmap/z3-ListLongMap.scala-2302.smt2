; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37284 () Bool)

(assert start!37284)

(declare-fun b_free!8403 () Bool)

(declare-fun b_next!8403 () Bool)

(assert (=> start!37284 (= b_free!8403 (not b_next!8403))))

(declare-fun tp!29925 () Bool)

(declare-fun b_and!15663 () Bool)

(assert (=> start!37284 (= tp!29925 b_and!15663)))

(declare-fun b!377316 () Bool)

(declare-fun e!229724 () Bool)

(declare-fun tp_is_empty!9051 () Bool)

(assert (=> b!377316 (= e!229724 tp_is_empty!9051)))

(declare-fun b!377317 () Bool)

(declare-fun e!229725 () Bool)

(assert (=> b!377317 (= e!229725 true)))

(declare-datatypes ((V!13173 0))(
  ( (V!13174 (val!4570 Int)) )
))
(declare-datatypes ((tuple2!6068 0))(
  ( (tuple2!6069 (_1!3044 (_ BitVec 64)) (_2!3044 V!13173)) )
))
(declare-datatypes ((List!5937 0))(
  ( (Nil!5934) (Cons!5933 (h!6789 tuple2!6068) (t!11095 List!5937)) )
))
(declare-datatypes ((ListLongMap!4995 0))(
  ( (ListLongMap!4996 (toList!2513 List!5937)) )
))
(declare-fun lt!175521 () ListLongMap!4995)

(declare-fun lt!175524 () ListLongMap!4995)

(declare-fun lt!175526 () tuple2!6068)

(declare-fun +!854 (ListLongMap!4995 tuple2!6068) ListLongMap!4995)

(assert (=> b!377317 (= lt!175521 (+!854 lt!175524 lt!175526))))

(declare-fun v!373 () V!13173)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13173)

(declare-datatypes ((Unit!11607 0))(
  ( (Unit!11608) )
))
(declare-fun lt!175519 () Unit!11607)

(declare-fun lt!175530 () ListLongMap!4995)

(declare-fun addCommutativeForDiffKeys!274 (ListLongMap!4995 (_ BitVec 64) V!13173 (_ BitVec 64) V!13173) Unit!11607)

(assert (=> b!377317 (= lt!175519 (addCommutativeForDiffKeys!274 lt!175530 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377318 () Bool)

(declare-fun res!213563 () Bool)

(declare-fun e!229731 () Bool)

(assert (=> b!377318 (=> (not res!213563) (not e!229731))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22001 0))(
  ( (array!22002 (arr!10466 (Array (_ BitVec 32) (_ BitVec 64))) (size!10818 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22001)

(assert (=> b!377318 (= res!213563 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10818 _keys!658))))))

(declare-fun mapNonEmpty!15141 () Bool)

(declare-fun mapRes!15141 () Bool)

(declare-fun tp!29924 () Bool)

(declare-fun e!229730 () Bool)

(assert (=> mapNonEmpty!15141 (= mapRes!15141 (and tp!29924 e!229730))))

(declare-fun mapKey!15141 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4182 0))(
  ( (ValueCellFull!4182 (v!6763 V!13173)) (EmptyCell!4182) )
))
(declare-datatypes ((array!22003 0))(
  ( (array!22004 (arr!10467 (Array (_ BitVec 32) ValueCell!4182)) (size!10819 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22003)

(declare-fun mapRest!15141 () (Array (_ BitVec 32) ValueCell!4182))

(declare-fun mapValue!15141 () ValueCell!4182)

(assert (=> mapNonEmpty!15141 (= (arr!10467 _values!506) (store mapRest!15141 mapKey!15141 mapValue!15141))))

(declare-fun mapIsEmpty!15141 () Bool)

(assert (=> mapIsEmpty!15141 mapRes!15141))

(declare-fun b!377319 () Bool)

(declare-fun e!229728 () Bool)

(assert (=> b!377319 (= e!229731 e!229728)))

(declare-fun res!213559 () Bool)

(assert (=> b!377319 (=> (not res!213559) (not e!229728))))

(declare-fun lt!175525 () array!22001)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22001 (_ BitVec 32)) Bool)

(assert (=> b!377319 (= res!213559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175525 mask!970))))

(assert (=> b!377319 (= lt!175525 (array!22002 (store (arr!10466 _keys!658) i!548 k0!778) (size!10818 _keys!658)))))

(declare-fun b!377320 () Bool)

(declare-fun e!229729 () Bool)

(assert (=> b!377320 (= e!229728 (not e!229729))))

(declare-fun res!213565 () Bool)

(assert (=> b!377320 (=> res!213565 e!229729)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377320 (= res!213565 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!175527 () ListLongMap!4995)

(declare-fun minValue!472 () V!13173)

(declare-fun getCurrentListMap!1949 (array!22001 array!22003 (_ BitVec 32) (_ BitVec 32) V!13173 V!13173 (_ BitVec 32) Int) ListLongMap!4995)

(assert (=> b!377320 (= lt!175527 (getCurrentListMap!1949 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175528 () array!22003)

(declare-fun lt!175529 () ListLongMap!4995)

(assert (=> b!377320 (= lt!175529 (getCurrentListMap!1949 lt!175525 lt!175528 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175522 () ListLongMap!4995)

(declare-fun lt!175531 () ListLongMap!4995)

(assert (=> b!377320 (and (= lt!175522 lt!175531) (= lt!175531 lt!175522))))

(assert (=> b!377320 (= lt!175531 (+!854 lt!175530 lt!175526))))

(assert (=> b!377320 (= lt!175526 (tuple2!6069 k0!778 v!373))))

(declare-fun lt!175520 () Unit!11607)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!100 (array!22001 array!22003 (_ BitVec 32) (_ BitVec 32) V!13173 V!13173 (_ BitVec 32) (_ BitVec 64) V!13173 (_ BitVec 32) Int) Unit!11607)

(assert (=> b!377320 (= lt!175520 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!100 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!767 (array!22001 array!22003 (_ BitVec 32) (_ BitVec 32) V!13173 V!13173 (_ BitVec 32) Int) ListLongMap!4995)

(assert (=> b!377320 (= lt!175522 (getCurrentListMapNoExtraKeys!767 lt!175525 lt!175528 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377320 (= lt!175528 (array!22004 (store (arr!10467 _values!506) i!548 (ValueCellFull!4182 v!373)) (size!10819 _values!506)))))

(assert (=> b!377320 (= lt!175530 (getCurrentListMapNoExtraKeys!767 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377321 () Bool)

(declare-fun res!213569 () Bool)

(assert (=> b!377321 (=> (not res!213569) (not e!229731))))

(assert (=> b!377321 (= res!213569 (and (= (size!10819 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10818 _keys!658) (size!10819 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377322 () Bool)

(assert (=> b!377322 (= e!229730 tp_is_empty!9051)))

(declare-fun b!377323 () Bool)

(declare-fun res!213558 () Bool)

(assert (=> b!377323 (=> (not res!213558) (not e!229731))))

(assert (=> b!377323 (= res!213558 (or (= (select (arr!10466 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10466 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377325 () Bool)

(declare-fun e!229727 () Bool)

(assert (=> b!377325 (= e!229727 (and e!229724 mapRes!15141))))

(declare-fun condMapEmpty!15141 () Bool)

(declare-fun mapDefault!15141 () ValueCell!4182)

(assert (=> b!377325 (= condMapEmpty!15141 (= (arr!10467 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4182)) mapDefault!15141)))))

(declare-fun b!377326 () Bool)

(declare-fun res!213562 () Bool)

(assert (=> b!377326 (=> (not res!213562) (not e!229731))))

(declare-datatypes ((List!5938 0))(
  ( (Nil!5935) (Cons!5934 (h!6790 (_ BitVec 64)) (t!11096 List!5938)) )
))
(declare-fun arrayNoDuplicates!0 (array!22001 (_ BitVec 32) List!5938) Bool)

(assert (=> b!377326 (= res!213562 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5935))))

(declare-fun b!377327 () Bool)

(declare-fun res!213566 () Bool)

(assert (=> b!377327 (=> (not res!213566) (not e!229728))))

(assert (=> b!377327 (= res!213566 (arrayNoDuplicates!0 lt!175525 #b00000000000000000000000000000000 Nil!5935))))

(declare-fun b!377328 () Bool)

(declare-fun res!213560 () Bool)

(assert (=> b!377328 (=> (not res!213560) (not e!229731))))

(declare-fun arrayContainsKey!0 (array!22001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377328 (= res!213560 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!377329 () Bool)

(declare-fun res!213564 () Bool)

(assert (=> b!377329 (=> (not res!213564) (not e!229731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377329 (= res!213564 (validKeyInArray!0 k0!778))))

(declare-fun b!377330 () Bool)

(declare-fun res!213567 () Bool)

(assert (=> b!377330 (=> (not res!213567) (not e!229731))))

(assert (=> b!377330 (= res!213567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!213568 () Bool)

(assert (=> start!37284 (=> (not res!213568) (not e!229731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37284 (= res!213568 (validMask!0 mask!970))))

(assert (=> start!37284 e!229731))

(declare-fun array_inv!7708 (array!22003) Bool)

(assert (=> start!37284 (and (array_inv!7708 _values!506) e!229727)))

(assert (=> start!37284 tp!29925))

(assert (=> start!37284 true))

(assert (=> start!37284 tp_is_empty!9051))

(declare-fun array_inv!7709 (array!22001) Bool)

(assert (=> start!37284 (array_inv!7709 _keys!658)))

(declare-fun b!377324 () Bool)

(assert (=> b!377324 (= e!229729 e!229725)))

(declare-fun res!213561 () Bool)

(assert (=> b!377324 (=> res!213561 e!229725)))

(assert (=> b!377324 (= res!213561 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!377324 (= lt!175529 lt!175521)))

(declare-fun lt!175523 () tuple2!6068)

(assert (=> b!377324 (= lt!175521 (+!854 lt!175531 lt!175523))))

(assert (=> b!377324 (= lt!175527 lt!175524)))

(assert (=> b!377324 (= lt!175524 (+!854 lt!175530 lt!175523))))

(assert (=> b!377324 (= lt!175529 (+!854 lt!175522 lt!175523))))

(assert (=> b!377324 (= lt!175523 (tuple2!6069 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (= (and start!37284 res!213568) b!377321))

(assert (= (and b!377321 res!213569) b!377330))

(assert (= (and b!377330 res!213567) b!377326))

(assert (= (and b!377326 res!213562) b!377318))

(assert (= (and b!377318 res!213563) b!377329))

(assert (= (and b!377329 res!213564) b!377323))

(assert (= (and b!377323 res!213558) b!377328))

(assert (= (and b!377328 res!213560) b!377319))

(assert (= (and b!377319 res!213559) b!377327))

(assert (= (and b!377327 res!213566) b!377320))

(assert (= (and b!377320 (not res!213565)) b!377324))

(assert (= (and b!377324 (not res!213561)) b!377317))

(assert (= (and b!377325 condMapEmpty!15141) mapIsEmpty!15141))

(assert (= (and b!377325 (not condMapEmpty!15141)) mapNonEmpty!15141))

(get-info :version)

(assert (= (and mapNonEmpty!15141 ((_ is ValueCellFull!4182) mapValue!15141)) b!377322))

(assert (= (and b!377325 ((_ is ValueCellFull!4182) mapDefault!15141)) b!377316))

(assert (= start!37284 b!377325))

(declare-fun m!374129 () Bool)

(assert (=> b!377324 m!374129))

(declare-fun m!374131 () Bool)

(assert (=> b!377324 m!374131))

(declare-fun m!374133 () Bool)

(assert (=> b!377324 m!374133))

(declare-fun m!374135 () Bool)

(assert (=> b!377327 m!374135))

(declare-fun m!374137 () Bool)

(assert (=> b!377320 m!374137))

(declare-fun m!374139 () Bool)

(assert (=> b!377320 m!374139))

(declare-fun m!374141 () Bool)

(assert (=> b!377320 m!374141))

(declare-fun m!374143 () Bool)

(assert (=> b!377320 m!374143))

(declare-fun m!374145 () Bool)

(assert (=> b!377320 m!374145))

(declare-fun m!374147 () Bool)

(assert (=> b!377320 m!374147))

(declare-fun m!374149 () Bool)

(assert (=> b!377320 m!374149))

(declare-fun m!374151 () Bool)

(assert (=> b!377317 m!374151))

(declare-fun m!374153 () Bool)

(assert (=> b!377317 m!374153))

(declare-fun m!374155 () Bool)

(assert (=> b!377329 m!374155))

(declare-fun m!374157 () Bool)

(assert (=> b!377326 m!374157))

(declare-fun m!374159 () Bool)

(assert (=> mapNonEmpty!15141 m!374159))

(declare-fun m!374161 () Bool)

(assert (=> b!377319 m!374161))

(declare-fun m!374163 () Bool)

(assert (=> b!377319 m!374163))

(declare-fun m!374165 () Bool)

(assert (=> b!377328 m!374165))

(declare-fun m!374167 () Bool)

(assert (=> start!37284 m!374167))

(declare-fun m!374169 () Bool)

(assert (=> start!37284 m!374169))

(declare-fun m!374171 () Bool)

(assert (=> start!37284 m!374171))

(declare-fun m!374173 () Bool)

(assert (=> b!377323 m!374173))

(declare-fun m!374175 () Bool)

(assert (=> b!377330 m!374175))

(check-sat (not b!377328) (not b!377317) b_and!15663 (not b!377324) (not b!377330) (not b_next!8403) (not mapNonEmpty!15141) (not b!377329) (not b!377320) (not b!377319) (not start!37284) (not b!377327) (not b!377326) tp_is_empty!9051)
(check-sat b_and!15663 (not b_next!8403))
