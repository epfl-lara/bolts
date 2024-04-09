; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37560 () Bool)

(assert start!37560)

(declare-fun b_free!8679 () Bool)

(declare-fun b_next!8679 () Bool)

(assert (=> start!37560 (= b_free!8679 (not b_next!8679))))

(declare-fun tp!30753 () Bool)

(declare-fun b_and!15939 () Bool)

(assert (=> start!37560 (= tp!30753 b_and!15939)))

(declare-fun b!383341 () Bool)

(declare-fun res!218351 () Bool)

(declare-fun e!232848 () Bool)

(assert (=> b!383341 (=> (not res!218351) (not e!232848))))

(declare-datatypes ((array!22545 0))(
  ( (array!22546 (arr!10738 (Array (_ BitVec 32) (_ BitVec 64))) (size!11090 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22545)

(declare-datatypes ((List!6156 0))(
  ( (Nil!6153) (Cons!6152 (h!7008 (_ BitVec 64)) (t!11314 List!6156)) )
))
(declare-fun arrayNoDuplicates!0 (array!22545 (_ BitVec 32) List!6156) Bool)

(assert (=> b!383341 (= res!218351 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6153))))

(declare-fun b!383342 () Bool)

(declare-fun e!232844 () Bool)

(declare-fun tp_is_empty!9327 () Bool)

(assert (=> b!383342 (= e!232844 tp_is_empty!9327)))

(declare-fun b!383343 () Bool)

(declare-fun res!218342 () Bool)

(assert (=> b!383343 (=> (not res!218342) (not e!232848))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13541 0))(
  ( (V!13542 (val!4708 Int)) )
))
(declare-datatypes ((ValueCell!4320 0))(
  ( (ValueCellFull!4320 (v!6901 V!13541)) (EmptyCell!4320) )
))
(declare-datatypes ((array!22547 0))(
  ( (array!22548 (arr!10739 (Array (_ BitVec 32) ValueCell!4320)) (size!11091 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22547)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!383343 (= res!218342 (and (= (size!11091 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11090 _keys!658) (size!11091 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383344 () Bool)

(declare-fun res!218345 () Bool)

(assert (=> b!383344 (=> (not res!218345) (not e!232848))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383344 (= res!218345 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11090 _keys!658))))))

(declare-fun res!218350 () Bool)

(assert (=> start!37560 (=> (not res!218350) (not e!232848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37560 (= res!218350 (validMask!0 mask!970))))

(assert (=> start!37560 e!232848))

(declare-fun e!232846 () Bool)

(declare-fun array_inv!7888 (array!22547) Bool)

(assert (=> start!37560 (and (array_inv!7888 _values!506) e!232846)))

(assert (=> start!37560 tp!30753))

(assert (=> start!37560 true))

(assert (=> start!37560 tp_is_empty!9327))

(declare-fun array_inv!7889 (array!22545) Bool)

(assert (=> start!37560 (array_inv!7889 _keys!658)))

(declare-fun b!383345 () Bool)

(declare-fun res!218349 () Bool)

(assert (=> b!383345 (=> (not res!218349) (not e!232848))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383345 (= res!218349 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!15555 () Bool)

(declare-fun mapRes!15555 () Bool)

(assert (=> mapIsEmpty!15555 mapRes!15555))

(declare-fun b!383346 () Bool)

(declare-fun res!218341 () Bool)

(declare-fun e!232847 () Bool)

(assert (=> b!383346 (=> (not res!218341) (not e!232847))))

(declare-fun lt!180160 () array!22545)

(assert (=> b!383346 (= res!218341 (arrayNoDuplicates!0 lt!180160 #b00000000000000000000000000000000 Nil!6153))))

(declare-fun b!383347 () Bool)

(declare-fun e!232843 () Bool)

(assert (=> b!383347 (= e!232843 tp_is_empty!9327)))

(declare-fun b!383348 () Bool)

(declare-fun res!218343 () Bool)

(assert (=> b!383348 (=> (not res!218343) (not e!232848))))

(declare-fun arrayContainsKey!0 (array!22545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383348 (= res!218343 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!383349 () Bool)

(assert (=> b!383349 (= e!232848 e!232847)))

(declare-fun res!218344 () Bool)

(assert (=> b!383349 (=> (not res!218344) (not e!232847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22545 (_ BitVec 32)) Bool)

(assert (=> b!383349 (= res!218344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180160 mask!970))))

(assert (=> b!383349 (= lt!180160 (array!22546 (store (arr!10738 _keys!658) i!548 k0!778) (size!11090 _keys!658)))))

(declare-fun mapNonEmpty!15555 () Bool)

(declare-fun tp!30752 () Bool)

(assert (=> mapNonEmpty!15555 (= mapRes!15555 (and tp!30752 e!232843))))

(declare-fun mapValue!15555 () ValueCell!4320)

(declare-fun mapRest!15555 () (Array (_ BitVec 32) ValueCell!4320))

(declare-fun mapKey!15555 () (_ BitVec 32))

(assert (=> mapNonEmpty!15555 (= (arr!10739 _values!506) (store mapRest!15555 mapKey!15555 mapValue!15555))))

(declare-fun b!383350 () Bool)

(declare-fun e!232842 () Bool)

(assert (=> b!383350 (= e!232847 (not e!232842))))

(declare-fun res!218346 () Bool)

(assert (=> b!383350 (=> res!218346 e!232842)))

(declare-fun lt!180159 () Bool)

(assert (=> b!383350 (= res!218346 (or (and (not lt!180159) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180159) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180159)))))

(assert (=> b!383350 (= lt!180159 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13541)

(declare-datatypes ((tuple2!6288 0))(
  ( (tuple2!6289 (_1!3154 (_ BitVec 64)) (_2!3154 V!13541)) )
))
(declare-datatypes ((List!6157 0))(
  ( (Nil!6154) (Cons!6153 (h!7009 tuple2!6288) (t!11315 List!6157)) )
))
(declare-datatypes ((ListLongMap!5215 0))(
  ( (ListLongMap!5216 (toList!2623 List!6157)) )
))
(declare-fun lt!180163 () ListLongMap!5215)

(declare-fun minValue!472 () V!13541)

(declare-fun getCurrentListMap!2040 (array!22545 array!22547 (_ BitVec 32) (_ BitVec 32) V!13541 V!13541 (_ BitVec 32) Int) ListLongMap!5215)

(assert (=> b!383350 (= lt!180163 (getCurrentListMap!2040 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180161 () ListLongMap!5215)

(declare-fun lt!180156 () array!22547)

(assert (=> b!383350 (= lt!180161 (getCurrentListMap!2040 lt!180160 lt!180156 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180162 () ListLongMap!5215)

(declare-fun lt!180157 () ListLongMap!5215)

(assert (=> b!383350 (and (= lt!180162 lt!180157) (= lt!180157 lt!180162))))

(declare-fun lt!180155 () ListLongMap!5215)

(declare-fun lt!180153 () tuple2!6288)

(declare-fun +!959 (ListLongMap!5215 tuple2!6288) ListLongMap!5215)

(assert (=> b!383350 (= lt!180157 (+!959 lt!180155 lt!180153))))

(declare-fun v!373 () V!13541)

(assert (=> b!383350 (= lt!180153 (tuple2!6289 k0!778 v!373))))

(declare-datatypes ((Unit!11809 0))(
  ( (Unit!11810) )
))
(declare-fun lt!180158 () Unit!11809)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!191 (array!22545 array!22547 (_ BitVec 32) (_ BitVec 32) V!13541 V!13541 (_ BitVec 32) (_ BitVec 64) V!13541 (_ BitVec 32) Int) Unit!11809)

(assert (=> b!383350 (= lt!180158 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!191 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!858 (array!22545 array!22547 (_ BitVec 32) (_ BitVec 32) V!13541 V!13541 (_ BitVec 32) Int) ListLongMap!5215)

(assert (=> b!383350 (= lt!180162 (getCurrentListMapNoExtraKeys!858 lt!180160 lt!180156 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383350 (= lt!180156 (array!22548 (store (arr!10739 _values!506) i!548 (ValueCellFull!4320 v!373)) (size!11091 _values!506)))))

(assert (=> b!383350 (= lt!180155 (getCurrentListMapNoExtraKeys!858 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383351 () Bool)

(declare-fun res!218347 () Bool)

(assert (=> b!383351 (=> (not res!218347) (not e!232848))))

(assert (=> b!383351 (= res!218347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383352 () Bool)

(assert (=> b!383352 (= e!232846 (and e!232844 mapRes!15555))))

(declare-fun condMapEmpty!15555 () Bool)

(declare-fun mapDefault!15555 () ValueCell!4320)

(assert (=> b!383352 (= condMapEmpty!15555 (= (arr!10739 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4320)) mapDefault!15555)))))

(declare-fun b!383353 () Bool)

(assert (=> b!383353 (= e!232842 true)))

(declare-fun lt!180154 () ListLongMap!5215)

(assert (=> b!383353 (= lt!180154 (+!959 lt!180163 lt!180153))))

(assert (=> b!383353 (= lt!180161 lt!180162)))

(declare-fun b!383354 () Bool)

(declare-fun res!218348 () Bool)

(assert (=> b!383354 (=> (not res!218348) (not e!232848))))

(assert (=> b!383354 (= res!218348 (or (= (select (arr!10738 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10738 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!37560 res!218350) b!383343))

(assert (= (and b!383343 res!218342) b!383351))

(assert (= (and b!383351 res!218347) b!383341))

(assert (= (and b!383341 res!218351) b!383344))

(assert (= (and b!383344 res!218345) b!383345))

(assert (= (and b!383345 res!218349) b!383354))

(assert (= (and b!383354 res!218348) b!383348))

(assert (= (and b!383348 res!218343) b!383349))

(assert (= (and b!383349 res!218344) b!383346))

(assert (= (and b!383346 res!218341) b!383350))

(assert (= (and b!383350 (not res!218346)) b!383353))

(assert (= (and b!383352 condMapEmpty!15555) mapIsEmpty!15555))

(assert (= (and b!383352 (not condMapEmpty!15555)) mapNonEmpty!15555))

(get-info :version)

(assert (= (and mapNonEmpty!15555 ((_ is ValueCellFull!4320) mapValue!15555)) b!383347))

(assert (= (and b!383352 ((_ is ValueCellFull!4320) mapDefault!15555)) b!383342))

(assert (= start!37560 b!383352))

(declare-fun m!380121 () Bool)

(assert (=> start!37560 m!380121))

(declare-fun m!380123 () Bool)

(assert (=> start!37560 m!380123))

(declare-fun m!380125 () Bool)

(assert (=> start!37560 m!380125))

(declare-fun m!380127 () Bool)

(assert (=> b!383349 m!380127))

(declare-fun m!380129 () Bool)

(assert (=> b!383349 m!380129))

(declare-fun m!380131 () Bool)

(assert (=> b!383346 m!380131))

(declare-fun m!380133 () Bool)

(assert (=> b!383350 m!380133))

(declare-fun m!380135 () Bool)

(assert (=> b!383350 m!380135))

(declare-fun m!380137 () Bool)

(assert (=> b!383350 m!380137))

(declare-fun m!380139 () Bool)

(assert (=> b!383350 m!380139))

(declare-fun m!380141 () Bool)

(assert (=> b!383350 m!380141))

(declare-fun m!380143 () Bool)

(assert (=> b!383350 m!380143))

(declare-fun m!380145 () Bool)

(assert (=> b!383350 m!380145))

(declare-fun m!380147 () Bool)

(assert (=> b!383348 m!380147))

(declare-fun m!380149 () Bool)

(assert (=> b!383341 m!380149))

(declare-fun m!380151 () Bool)

(assert (=> mapNonEmpty!15555 m!380151))

(declare-fun m!380153 () Bool)

(assert (=> b!383345 m!380153))

(declare-fun m!380155 () Bool)

(assert (=> b!383354 m!380155))

(declare-fun m!380157 () Bool)

(assert (=> b!383351 m!380157))

(declare-fun m!380159 () Bool)

(assert (=> b!383353 m!380159))

(check-sat (not b!383350) tp_is_empty!9327 (not mapNonEmpty!15555) (not b!383348) (not b!383341) (not b!383351) (not b_next!8679) (not b!383346) (not b!383345) (not start!37560) (not b!383353) b_and!15939 (not b!383349))
(check-sat b_and!15939 (not b_next!8679))
