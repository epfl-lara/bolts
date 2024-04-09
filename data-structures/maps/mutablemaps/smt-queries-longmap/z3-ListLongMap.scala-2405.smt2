; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38058 () Bool)

(assert start!38058)

(declare-fun b_free!8997 () Bool)

(declare-fun b_next!8997 () Bool)

(assert (=> start!38058 (= b_free!8997 (not b_next!8997))))

(declare-fun tp!31764 () Bool)

(declare-fun b_and!16341 () Bool)

(assert (=> start!38058 (= tp!31764 b_and!16341)))

(declare-fun b!391642 () Bool)

(declare-fun e!237191 () Bool)

(declare-fun e!237192 () Bool)

(assert (=> b!391642 (= e!237191 (not e!237192))))

(declare-fun res!224327 () Bool)

(assert (=> b!391642 (=> res!224327 e!237192)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391642 (= res!224327 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13997 0))(
  ( (V!13998 (val!4879 Int)) )
))
(declare-datatypes ((ValueCell!4491 0))(
  ( (ValueCellFull!4491 (v!7100 V!13997)) (EmptyCell!4491) )
))
(declare-datatypes ((array!23215 0))(
  ( (array!23216 (arr!11066 (Array (_ BitVec 32) ValueCell!4491)) (size!11418 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23215)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6512 0))(
  ( (tuple2!6513 (_1!3266 (_ BitVec 64)) (_2!3266 V!13997)) )
))
(declare-datatypes ((List!6395 0))(
  ( (Nil!6392) (Cons!6391 (h!7247 tuple2!6512) (t!11567 List!6395)) )
))
(declare-datatypes ((ListLongMap!5439 0))(
  ( (ListLongMap!5440 (toList!2735 List!6395)) )
))
(declare-fun lt!185002 () ListLongMap!5439)

(declare-fun zeroValue!472 () V!13997)

(declare-datatypes ((array!23217 0))(
  ( (array!23218 (arr!11067 (Array (_ BitVec 32) (_ BitVec 64))) (size!11419 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23217)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13997)

(declare-fun getCurrentListMap!2100 (array!23217 array!23215 (_ BitVec 32) (_ BitVec 32) V!13997 V!13997 (_ BitVec 32) Int) ListLongMap!5439)

(assert (=> b!391642 (= lt!185002 (getCurrentListMap!2100 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185001 () array!23215)

(declare-fun lt!184997 () ListLongMap!5439)

(declare-fun lt!184996 () array!23217)

(assert (=> b!391642 (= lt!184997 (getCurrentListMap!2100 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184999 () ListLongMap!5439)

(declare-fun lt!185000 () ListLongMap!5439)

(assert (=> b!391642 (and (= lt!184999 lt!185000) (= lt!185000 lt!184999))))

(declare-fun v!373 () V!13997)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun lt!184998 () ListLongMap!5439)

(declare-fun +!1033 (ListLongMap!5439 tuple2!6512) ListLongMap!5439)

(assert (=> b!391642 (= lt!185000 (+!1033 lt!184998 (tuple2!6513 k0!778 v!373)))))

(declare-datatypes ((Unit!11957 0))(
  ( (Unit!11958) )
))
(declare-fun lt!184995 () Unit!11957)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!257 (array!23217 array!23215 (_ BitVec 32) (_ BitVec 32) V!13997 V!13997 (_ BitVec 32) (_ BitVec 64) V!13997 (_ BitVec 32) Int) Unit!11957)

(assert (=> b!391642 (= lt!184995 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!257 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!962 (array!23217 array!23215 (_ BitVec 32) (_ BitVec 32) V!13997 V!13997 (_ BitVec 32) Int) ListLongMap!5439)

(assert (=> b!391642 (= lt!184999 (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391642 (= lt!185001 (array!23216 (store (arr!11066 _values!506) i!548 (ValueCellFull!4491 v!373)) (size!11418 _values!506)))))

(assert (=> b!391642 (= lt!184998 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391643 () Bool)

(declare-fun res!224319 () Bool)

(declare-fun e!237195 () Bool)

(assert (=> b!391643 (=> (not res!224319) (not e!237195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23217 (_ BitVec 32)) Bool)

(assert (=> b!391643 (= res!224319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391645 () Bool)

(assert (=> b!391645 (= e!237195 e!237191)))

(declare-fun res!224329 () Bool)

(assert (=> b!391645 (=> (not res!224329) (not e!237191))))

(assert (=> b!391645 (= res!224329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184996 mask!970))))

(assert (=> b!391645 (= lt!184996 (array!23218 (store (arr!11067 _keys!658) i!548 k0!778) (size!11419 _keys!658)))))

(declare-fun b!391646 () Bool)

(declare-fun res!224325 () Bool)

(assert (=> b!391646 (=> (not res!224325) (not e!237195))))

(declare-fun arrayContainsKey!0 (array!23217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!391646 (= res!224325 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!391647 () Bool)

(declare-fun e!237194 () Bool)

(declare-fun tp_is_empty!9669 () Bool)

(assert (=> b!391647 (= e!237194 tp_is_empty!9669)))

(declare-fun b!391648 () Bool)

(declare-fun res!224320 () Bool)

(assert (=> b!391648 (=> (not res!224320) (not e!237195))))

(assert (=> b!391648 (= res!224320 (or (= (select (arr!11067 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11067 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391649 () Bool)

(declare-fun e!237190 () Bool)

(declare-fun e!237193 () Bool)

(declare-fun mapRes!16089 () Bool)

(assert (=> b!391649 (= e!237190 (and e!237193 mapRes!16089))))

(declare-fun condMapEmpty!16089 () Bool)

(declare-fun mapDefault!16089 () ValueCell!4491)

(assert (=> b!391649 (= condMapEmpty!16089 (= (arr!11066 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4491)) mapDefault!16089)))))

(declare-fun b!391650 () Bool)

(declare-fun res!224323 () Bool)

(assert (=> b!391650 (=> (not res!224323) (not e!237195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391650 (= res!224323 (validKeyInArray!0 k0!778))))

(declare-fun b!391651 () Bool)

(declare-fun res!224322 () Bool)

(assert (=> b!391651 (=> (not res!224322) (not e!237195))))

(declare-datatypes ((List!6396 0))(
  ( (Nil!6393) (Cons!6392 (h!7248 (_ BitVec 64)) (t!11568 List!6396)) )
))
(declare-fun arrayNoDuplicates!0 (array!23217 (_ BitVec 32) List!6396) Bool)

(assert (=> b!391651 (= res!224322 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6393))))

(declare-fun mapNonEmpty!16089 () Bool)

(declare-fun tp!31763 () Bool)

(assert (=> mapNonEmpty!16089 (= mapRes!16089 (and tp!31763 e!237194))))

(declare-fun mapValue!16089 () ValueCell!4491)

(declare-fun mapKey!16089 () (_ BitVec 32))

(declare-fun mapRest!16089 () (Array (_ BitVec 32) ValueCell!4491))

(assert (=> mapNonEmpty!16089 (= (arr!11066 _values!506) (store mapRest!16089 mapKey!16089 mapValue!16089))))

(declare-fun b!391652 () Bool)

(declare-fun res!224324 () Bool)

(assert (=> b!391652 (=> (not res!224324) (not e!237195))))

(assert (=> b!391652 (= res!224324 (and (= (size!11418 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11419 _keys!658) (size!11418 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!224321 () Bool)

(assert (=> start!38058 (=> (not res!224321) (not e!237195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38058 (= res!224321 (validMask!0 mask!970))))

(assert (=> start!38058 e!237195))

(declare-fun array_inv!8114 (array!23215) Bool)

(assert (=> start!38058 (and (array_inv!8114 _values!506) e!237190)))

(assert (=> start!38058 tp!31764))

(assert (=> start!38058 true))

(assert (=> start!38058 tp_is_empty!9669))

(declare-fun array_inv!8115 (array!23217) Bool)

(assert (=> start!38058 (array_inv!8115 _keys!658)))

(declare-fun b!391644 () Bool)

(declare-fun res!224328 () Bool)

(assert (=> b!391644 (=> (not res!224328) (not e!237195))))

(assert (=> b!391644 (= res!224328 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11419 _keys!658))))))

(declare-fun b!391653 () Bool)

(assert (=> b!391653 (= e!237192 (= lt!184997 (+!1033 lt!184999 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun mapIsEmpty!16089 () Bool)

(assert (=> mapIsEmpty!16089 mapRes!16089))

(declare-fun b!391654 () Bool)

(declare-fun res!224326 () Bool)

(assert (=> b!391654 (=> (not res!224326) (not e!237191))))

(assert (=> b!391654 (= res!224326 (arrayNoDuplicates!0 lt!184996 #b00000000000000000000000000000000 Nil!6393))))

(declare-fun b!391655 () Bool)

(assert (=> b!391655 (= e!237193 tp_is_empty!9669)))

(assert (= (and start!38058 res!224321) b!391652))

(assert (= (and b!391652 res!224324) b!391643))

(assert (= (and b!391643 res!224319) b!391651))

(assert (= (and b!391651 res!224322) b!391644))

(assert (= (and b!391644 res!224328) b!391650))

(assert (= (and b!391650 res!224323) b!391648))

(assert (= (and b!391648 res!224320) b!391646))

(assert (= (and b!391646 res!224325) b!391645))

(assert (= (and b!391645 res!224329) b!391654))

(assert (= (and b!391654 res!224326) b!391642))

(assert (= (and b!391642 (not res!224327)) b!391653))

(assert (= (and b!391649 condMapEmpty!16089) mapIsEmpty!16089))

(assert (= (and b!391649 (not condMapEmpty!16089)) mapNonEmpty!16089))

(get-info :version)

(assert (= (and mapNonEmpty!16089 ((_ is ValueCellFull!4491) mapValue!16089)) b!391647))

(assert (= (and b!391649 ((_ is ValueCellFull!4491) mapDefault!16089)) b!391655))

(assert (= start!38058 b!391649))

(declare-fun m!388079 () Bool)

(assert (=> b!391645 m!388079))

(declare-fun m!388081 () Bool)

(assert (=> b!391645 m!388081))

(declare-fun m!388083 () Bool)

(assert (=> b!391653 m!388083))

(declare-fun m!388085 () Bool)

(assert (=> mapNonEmpty!16089 m!388085))

(declare-fun m!388087 () Bool)

(assert (=> start!38058 m!388087))

(declare-fun m!388089 () Bool)

(assert (=> start!38058 m!388089))

(declare-fun m!388091 () Bool)

(assert (=> start!38058 m!388091))

(declare-fun m!388093 () Bool)

(assert (=> b!391654 m!388093))

(declare-fun m!388095 () Bool)

(assert (=> b!391650 m!388095))

(declare-fun m!388097 () Bool)

(assert (=> b!391643 m!388097))

(declare-fun m!388099 () Bool)

(assert (=> b!391646 m!388099))

(declare-fun m!388101 () Bool)

(assert (=> b!391642 m!388101))

(declare-fun m!388103 () Bool)

(assert (=> b!391642 m!388103))

(declare-fun m!388105 () Bool)

(assert (=> b!391642 m!388105))

(declare-fun m!388107 () Bool)

(assert (=> b!391642 m!388107))

(declare-fun m!388109 () Bool)

(assert (=> b!391642 m!388109))

(declare-fun m!388111 () Bool)

(assert (=> b!391642 m!388111))

(declare-fun m!388113 () Bool)

(assert (=> b!391642 m!388113))

(declare-fun m!388115 () Bool)

(assert (=> b!391648 m!388115))

(declare-fun m!388117 () Bool)

(assert (=> b!391651 m!388117))

(check-sat tp_is_empty!9669 (not b!391646) (not b!391654) (not b!391645) (not mapNonEmpty!16089) b_and!16341 (not b!391653) (not b_next!8997) (not start!38058) (not b!391642) (not b!391643) (not b!391650) (not b!391651))
(check-sat b_and!16341 (not b_next!8997))
(get-model)

(declare-fun d!72963 () Bool)

(assert (=> d!72963 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!38058 d!72963))

(declare-fun d!72965 () Bool)

(assert (=> d!72965 (= (array_inv!8114 _values!506) (bvsge (size!11418 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!38058 d!72965))

(declare-fun d!72967 () Bool)

(assert (=> d!72967 (= (array_inv!8115 _keys!658) (bvsge (size!11419 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!38058 d!72967))

(declare-fun d!72969 () Bool)

(declare-fun e!237220 () Bool)

(assert (=> d!72969 e!237220))

(declare-fun res!224368 () Bool)

(assert (=> d!72969 (=> (not res!224368) (not e!237220))))

(declare-fun lt!185036 () ListLongMap!5439)

(declare-fun contains!2462 (ListLongMap!5439 (_ BitVec 64)) Bool)

(assert (=> d!72969 (= res!224368 (contains!2462 lt!185036 (_1!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun lt!185035 () List!6395)

(assert (=> d!72969 (= lt!185036 (ListLongMap!5440 lt!185035))))

(declare-fun lt!185038 () Unit!11957)

(declare-fun lt!185037 () Unit!11957)

(assert (=> d!72969 (= lt!185038 lt!185037)))

(declare-datatypes ((Option!367 0))(
  ( (Some!366 (v!7105 V!13997)) (None!365) )
))
(declare-fun getValueByKey!361 (List!6395 (_ BitVec 64)) Option!367)

(assert (=> d!72969 (= (getValueByKey!361 lt!185035 (_1!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))) (Some!366 (_2!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun lemmaContainsTupThenGetReturnValue!185 (List!6395 (_ BitVec 64) V!13997) Unit!11957)

(assert (=> d!72969 (= lt!185037 (lemmaContainsTupThenGetReturnValue!185 lt!185035 (_1!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)) (_2!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun insertStrictlySorted!187 (List!6395 (_ BitVec 64) V!13997) List!6395)

(assert (=> d!72969 (= lt!185035 (insertStrictlySorted!187 (toList!2735 lt!184999) (_1!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)) (_2!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(assert (=> d!72969 (= (+!1033 lt!184999 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)) lt!185036)))

(declare-fun b!391702 () Bool)

(declare-fun res!224367 () Bool)

(assert (=> b!391702 (=> (not res!224367) (not e!237220))))

(assert (=> b!391702 (= res!224367 (= (getValueByKey!361 (toList!2735 lt!185036) (_1!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))) (Some!366 (_2!3266 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))))

(declare-fun b!391703 () Bool)

(declare-fun contains!2463 (List!6395 tuple2!6512) Bool)

(assert (=> b!391703 (= e!237220 (contains!2463 (toList!2735 lt!185036) (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(assert (= (and d!72969 res!224368) b!391702))

(assert (= (and b!391702 res!224367) b!391703))

(declare-fun m!388159 () Bool)

(assert (=> d!72969 m!388159))

(declare-fun m!388161 () Bool)

(assert (=> d!72969 m!388161))

(declare-fun m!388163 () Bool)

(assert (=> d!72969 m!388163))

(declare-fun m!388165 () Bool)

(assert (=> d!72969 m!388165))

(declare-fun m!388167 () Bool)

(assert (=> b!391702 m!388167))

(declare-fun m!388169 () Bool)

(assert (=> b!391703 m!388169))

(assert (=> b!391653 d!72969))

(declare-fun b!391712 () Bool)

(declare-fun e!237227 () Bool)

(declare-fun call!27630 () Bool)

(assert (=> b!391712 (= e!237227 call!27630)))

(declare-fun b!391713 () Bool)

(declare-fun e!237229 () Bool)

(assert (=> b!391713 (= e!237229 call!27630)))

(declare-fun b!391714 () Bool)

(assert (=> b!391714 (= e!237227 e!237229)))

(declare-fun lt!185046 () (_ BitVec 64))

(assert (=> b!391714 (= lt!185046 (select (arr!11067 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185045 () Unit!11957)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23217 (_ BitVec 64) (_ BitVec 32)) Unit!11957)

(assert (=> b!391714 (= lt!185045 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!185046 #b00000000000000000000000000000000))))

(assert (=> b!391714 (arrayContainsKey!0 _keys!658 lt!185046 #b00000000000000000000000000000000)))

(declare-fun lt!185047 () Unit!11957)

(assert (=> b!391714 (= lt!185047 lt!185045)))

(declare-fun res!224373 () Bool)

(declare-datatypes ((SeekEntryResult!3503 0))(
  ( (MissingZero!3503 (index!16191 (_ BitVec 32))) (Found!3503 (index!16192 (_ BitVec 32))) (Intermediate!3503 (undefined!4315 Bool) (index!16193 (_ BitVec 32)) (x!38368 (_ BitVec 32))) (Undefined!3503) (MissingVacant!3503 (index!16194 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23217 (_ BitVec 32)) SeekEntryResult!3503)

(assert (=> b!391714 (= res!224373 (= (seekEntryOrOpen!0 (select (arr!11067 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3503 #b00000000000000000000000000000000)))))

(assert (=> b!391714 (=> (not res!224373) (not e!237229))))

(declare-fun d!72971 () Bool)

(declare-fun res!224374 () Bool)

(declare-fun e!237228 () Bool)

(assert (=> d!72971 (=> res!224374 e!237228)))

(assert (=> d!72971 (= res!224374 (bvsge #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(assert (=> d!72971 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!237228)))

(declare-fun bm!27627 () Bool)

(assert (=> bm!27627 (= call!27630 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!391715 () Bool)

(assert (=> b!391715 (= e!237228 e!237227)))

(declare-fun c!54209 () Bool)

(assert (=> b!391715 (= c!54209 (validKeyInArray!0 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72971 (not res!224374)) b!391715))

(assert (= (and b!391715 c!54209) b!391714))

(assert (= (and b!391715 (not c!54209)) b!391712))

(assert (= (and b!391714 res!224373) b!391713))

(assert (= (or b!391713 b!391712) bm!27627))

(declare-fun m!388171 () Bool)

(assert (=> b!391714 m!388171))

(declare-fun m!388173 () Bool)

(assert (=> b!391714 m!388173))

(declare-fun m!388175 () Bool)

(assert (=> b!391714 m!388175))

(assert (=> b!391714 m!388171))

(declare-fun m!388177 () Bool)

(assert (=> b!391714 m!388177))

(declare-fun m!388179 () Bool)

(assert (=> bm!27627 m!388179))

(assert (=> b!391715 m!388171))

(assert (=> b!391715 m!388171))

(declare-fun m!388181 () Bool)

(assert (=> b!391715 m!388181))

(assert (=> b!391643 d!72971))

(declare-fun b!391726 () Bool)

(declare-fun e!237239 () Bool)

(declare-fun e!237241 () Bool)

(assert (=> b!391726 (= e!237239 e!237241)))

(declare-fun res!224381 () Bool)

(assert (=> b!391726 (=> (not res!224381) (not e!237241))))

(declare-fun e!237238 () Bool)

(assert (=> b!391726 (= res!224381 (not e!237238))))

(declare-fun res!224382 () Bool)

(assert (=> b!391726 (=> (not res!224382) (not e!237238))))

(assert (=> b!391726 (= res!224382 (validKeyInArray!0 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(declare-fun b!391727 () Bool)

(declare-fun contains!2464 (List!6396 (_ BitVec 64)) Bool)

(assert (=> b!391727 (= e!237238 (contains!2464 Nil!6393 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(declare-fun b!391728 () Bool)

(declare-fun e!237240 () Bool)

(assert (=> b!391728 (= e!237241 e!237240)))

(declare-fun c!54212 () Bool)

(assert (=> b!391728 (= c!54212 (validKeyInArray!0 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(declare-fun b!391729 () Bool)

(declare-fun call!27633 () Bool)

(assert (=> b!391729 (= e!237240 call!27633)))

(declare-fun bm!27630 () Bool)

(assert (=> bm!27630 (= call!27633 (arrayNoDuplicates!0 lt!184996 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54212 (Cons!6392 (select (arr!11067 lt!184996) #b00000000000000000000000000000000) Nil!6393) Nil!6393)))))

(declare-fun b!391730 () Bool)

(assert (=> b!391730 (= e!237240 call!27633)))

(declare-fun d!72973 () Bool)

(declare-fun res!224383 () Bool)

(assert (=> d!72973 (=> res!224383 e!237239)))

(assert (=> d!72973 (= res!224383 (bvsge #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(assert (=> d!72973 (= (arrayNoDuplicates!0 lt!184996 #b00000000000000000000000000000000 Nil!6393) e!237239)))

(assert (= (and d!72973 (not res!224383)) b!391726))

(assert (= (and b!391726 res!224382) b!391727))

(assert (= (and b!391726 res!224381) b!391728))

(assert (= (and b!391728 c!54212) b!391729))

(assert (= (and b!391728 (not c!54212)) b!391730))

(assert (= (or b!391729 b!391730) bm!27630))

(declare-fun m!388183 () Bool)

(assert (=> b!391726 m!388183))

(assert (=> b!391726 m!388183))

(declare-fun m!388185 () Bool)

(assert (=> b!391726 m!388185))

(assert (=> b!391727 m!388183))

(assert (=> b!391727 m!388183))

(declare-fun m!388187 () Bool)

(assert (=> b!391727 m!388187))

(assert (=> b!391728 m!388183))

(assert (=> b!391728 m!388183))

(assert (=> b!391728 m!388185))

(assert (=> bm!27630 m!388183))

(declare-fun m!388189 () Bool)

(assert (=> bm!27630 m!388189))

(assert (=> b!391654 d!72973))

(declare-fun b!391731 () Bool)

(declare-fun e!237242 () Bool)

(declare-fun call!27634 () Bool)

(assert (=> b!391731 (= e!237242 call!27634)))

(declare-fun b!391732 () Bool)

(declare-fun e!237244 () Bool)

(assert (=> b!391732 (= e!237244 call!27634)))

(declare-fun b!391733 () Bool)

(assert (=> b!391733 (= e!237242 e!237244)))

(declare-fun lt!185049 () (_ BitVec 64))

(assert (=> b!391733 (= lt!185049 (select (arr!11067 lt!184996) #b00000000000000000000000000000000))))

(declare-fun lt!185048 () Unit!11957)

(assert (=> b!391733 (= lt!185048 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!184996 lt!185049 #b00000000000000000000000000000000))))

(assert (=> b!391733 (arrayContainsKey!0 lt!184996 lt!185049 #b00000000000000000000000000000000)))

(declare-fun lt!185050 () Unit!11957)

(assert (=> b!391733 (= lt!185050 lt!185048)))

(declare-fun res!224384 () Bool)

(assert (=> b!391733 (= res!224384 (= (seekEntryOrOpen!0 (select (arr!11067 lt!184996) #b00000000000000000000000000000000) lt!184996 mask!970) (Found!3503 #b00000000000000000000000000000000)))))

(assert (=> b!391733 (=> (not res!224384) (not e!237244))))

(declare-fun d!72975 () Bool)

(declare-fun res!224385 () Bool)

(declare-fun e!237243 () Bool)

(assert (=> d!72975 (=> res!224385 e!237243)))

(assert (=> d!72975 (= res!224385 (bvsge #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(assert (=> d!72975 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184996 mask!970) e!237243)))

(declare-fun bm!27631 () Bool)

(assert (=> bm!27631 (= call!27634 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!184996 mask!970))))

(declare-fun b!391734 () Bool)

(assert (=> b!391734 (= e!237243 e!237242)))

(declare-fun c!54213 () Bool)

(assert (=> b!391734 (= c!54213 (validKeyInArray!0 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(assert (= (and d!72975 (not res!224385)) b!391734))

(assert (= (and b!391734 c!54213) b!391733))

(assert (= (and b!391734 (not c!54213)) b!391731))

(assert (= (and b!391733 res!224384) b!391732))

(assert (= (or b!391732 b!391731) bm!27631))

(assert (=> b!391733 m!388183))

(declare-fun m!388191 () Bool)

(assert (=> b!391733 m!388191))

(declare-fun m!388193 () Bool)

(assert (=> b!391733 m!388193))

(assert (=> b!391733 m!388183))

(declare-fun m!388195 () Bool)

(assert (=> b!391733 m!388195))

(declare-fun m!388197 () Bool)

(assert (=> bm!27631 m!388197))

(assert (=> b!391734 m!388183))

(assert (=> b!391734 m!388183))

(assert (=> b!391734 m!388185))

(assert (=> b!391645 d!72975))

(declare-fun d!72977 () Bool)

(assert (=> d!72977 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!391650 d!72977))

(declare-fun d!72979 () Bool)

(declare-fun res!224390 () Bool)

(declare-fun e!237249 () Bool)

(assert (=> d!72979 (=> res!224390 e!237249)))

(assert (=> d!72979 (= res!224390 (= (select (arr!11067 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72979 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!237249)))

(declare-fun b!391739 () Bool)

(declare-fun e!237250 () Bool)

(assert (=> b!391739 (= e!237249 e!237250)))

(declare-fun res!224391 () Bool)

(assert (=> b!391739 (=> (not res!224391) (not e!237250))))

(assert (=> b!391739 (= res!224391 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11419 _keys!658)))))

(declare-fun b!391740 () Bool)

(assert (=> b!391740 (= e!237250 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72979 (not res!224390)) b!391739))

(assert (= (and b!391739 res!224391) b!391740))

(assert (=> d!72979 m!388171))

(declare-fun m!388199 () Bool)

(assert (=> b!391740 m!388199))

(assert (=> b!391646 d!72979))

(declare-fun b!391741 () Bool)

(declare-fun e!237252 () Bool)

(declare-fun e!237254 () Bool)

(assert (=> b!391741 (= e!237252 e!237254)))

(declare-fun res!224392 () Bool)

(assert (=> b!391741 (=> (not res!224392) (not e!237254))))

(declare-fun e!237251 () Bool)

(assert (=> b!391741 (= res!224392 (not e!237251))))

(declare-fun res!224393 () Bool)

(assert (=> b!391741 (=> (not res!224393) (not e!237251))))

(assert (=> b!391741 (= res!224393 (validKeyInArray!0 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!391742 () Bool)

(assert (=> b!391742 (= e!237251 (contains!2464 Nil!6393 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!391743 () Bool)

(declare-fun e!237253 () Bool)

(assert (=> b!391743 (= e!237254 e!237253)))

(declare-fun c!54214 () Bool)

(assert (=> b!391743 (= c!54214 (validKeyInArray!0 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!391744 () Bool)

(declare-fun call!27635 () Bool)

(assert (=> b!391744 (= e!237253 call!27635)))

(declare-fun bm!27632 () Bool)

(assert (=> bm!27632 (= call!27635 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54214 (Cons!6392 (select (arr!11067 _keys!658) #b00000000000000000000000000000000) Nil!6393) Nil!6393)))))

(declare-fun b!391745 () Bool)

(assert (=> b!391745 (= e!237253 call!27635)))

(declare-fun d!72981 () Bool)

(declare-fun res!224394 () Bool)

(assert (=> d!72981 (=> res!224394 e!237252)))

(assert (=> d!72981 (= res!224394 (bvsge #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(assert (=> d!72981 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6393) e!237252)))

(assert (= (and d!72981 (not res!224394)) b!391741))

(assert (= (and b!391741 res!224393) b!391742))

(assert (= (and b!391741 res!224392) b!391743))

(assert (= (and b!391743 c!54214) b!391744))

(assert (= (and b!391743 (not c!54214)) b!391745))

(assert (= (or b!391744 b!391745) bm!27632))

(assert (=> b!391741 m!388171))

(assert (=> b!391741 m!388171))

(assert (=> b!391741 m!388181))

(assert (=> b!391742 m!388171))

(assert (=> b!391742 m!388171))

(declare-fun m!388201 () Bool)

(assert (=> b!391742 m!388201))

(assert (=> b!391743 m!388171))

(assert (=> b!391743 m!388171))

(assert (=> b!391743 m!388181))

(assert (=> bm!27632 m!388171))

(declare-fun m!388203 () Bool)

(assert (=> bm!27632 m!388203))

(assert (=> b!391651 d!72981))

(declare-fun b!391770 () Bool)

(declare-fun e!237274 () ListLongMap!5439)

(declare-fun e!237271 () ListLongMap!5439)

(assert (=> b!391770 (= e!237274 e!237271)))

(declare-fun c!54226 () Bool)

(assert (=> b!391770 (= c!54226 (validKeyInArray!0 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun call!27638 () ListLongMap!5439)

(declare-fun bm!27635 () Bool)

(assert (=> bm!27635 (= call!27638 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!391771 () Bool)

(declare-fun e!237273 () Bool)

(declare-fun lt!185065 () ListLongMap!5439)

(declare-fun isEmpty!555 (ListLongMap!5439) Bool)

(assert (=> b!391771 (= e!237273 (isEmpty!555 lt!185065))))

(declare-fun b!391772 () Bool)

(declare-fun e!237275 () Bool)

(assert (=> b!391772 (= e!237275 (validKeyInArray!0 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!391772 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!391773 () Bool)

(assert (=> b!391773 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(assert (=> b!391773 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11418 _values!506)))))

(declare-fun e!237272 () Bool)

(declare-fun apply!304 (ListLongMap!5439 (_ BitVec 64)) V!13997)

(declare-fun get!5601 (ValueCell!4491 V!13997) V!13997)

(declare-fun dynLambda!642 (Int (_ BitVec 64)) V!13997)

(assert (=> b!391773 (= e!237272 (= (apply!304 lt!185065 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)) (get!5601 (select (arr!11066 _values!506) #b00000000000000000000000000000000) (dynLambda!642 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!391774 () Bool)

(assert (=> b!391774 (= e!237274 (ListLongMap!5440 Nil!6392))))

(declare-fun b!391776 () Bool)

(declare-fun e!237269 () Bool)

(assert (=> b!391776 (= e!237269 e!237272)))

(assert (=> b!391776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(declare-fun res!224403 () Bool)

(assert (=> b!391776 (= res!224403 (contains!2462 lt!185065 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!391776 (=> (not res!224403) (not e!237272))))

(declare-fun b!391777 () Bool)

(declare-fun res!224405 () Bool)

(declare-fun e!237270 () Bool)

(assert (=> b!391777 (=> (not res!224405) (not e!237270))))

(assert (=> b!391777 (= res!224405 (not (contains!2462 lt!185065 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391778 () Bool)

(assert (=> b!391778 (= e!237273 (= lt!185065 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!391779 () Bool)

(assert (=> b!391779 (= e!237269 e!237273)))

(declare-fun c!54225 () Bool)

(assert (=> b!391779 (= c!54225 (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(declare-fun b!391780 () Bool)

(declare-fun lt!185070 () Unit!11957)

(declare-fun lt!185069 () Unit!11957)

(assert (=> b!391780 (= lt!185070 lt!185069)))

(declare-fun lt!185068 () (_ BitVec 64))

(declare-fun lt!185071 () V!13997)

(declare-fun lt!185067 () (_ BitVec 64))

(declare-fun lt!185066 () ListLongMap!5439)

(assert (=> b!391780 (not (contains!2462 (+!1033 lt!185066 (tuple2!6513 lt!185067 lt!185071)) lt!185068))))

(declare-fun addStillNotContains!139 (ListLongMap!5439 (_ BitVec 64) V!13997 (_ BitVec 64)) Unit!11957)

(assert (=> b!391780 (= lt!185069 (addStillNotContains!139 lt!185066 lt!185067 lt!185071 lt!185068))))

(assert (=> b!391780 (= lt!185068 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!391780 (= lt!185071 (get!5601 (select (arr!11066 _values!506) #b00000000000000000000000000000000) (dynLambda!642 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!391780 (= lt!185067 (select (arr!11067 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!391780 (= lt!185066 call!27638)))

(assert (=> b!391780 (= e!237271 (+!1033 call!27638 (tuple2!6513 (select (arr!11067 _keys!658) #b00000000000000000000000000000000) (get!5601 (select (arr!11066 _values!506) #b00000000000000000000000000000000) (dynLambda!642 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!391781 () Bool)

(assert (=> b!391781 (= e!237270 e!237269)))

(declare-fun c!54224 () Bool)

(assert (=> b!391781 (= c!54224 e!237275)))

(declare-fun res!224404 () Bool)

(assert (=> b!391781 (=> (not res!224404) (not e!237275))))

(assert (=> b!391781 (= res!224404 (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(declare-fun b!391775 () Bool)

(assert (=> b!391775 (= e!237271 call!27638)))

(declare-fun d!72983 () Bool)

(assert (=> d!72983 e!237270))

(declare-fun res!224406 () Bool)

(assert (=> d!72983 (=> (not res!224406) (not e!237270))))

(assert (=> d!72983 (= res!224406 (not (contains!2462 lt!185065 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72983 (= lt!185065 e!237274)))

(declare-fun c!54223 () Bool)

(assert (=> d!72983 (= c!54223 (bvsge #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(assert (=> d!72983 (validMask!0 mask!970)))

(assert (=> d!72983 (= (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185065)))

(assert (= (and d!72983 c!54223) b!391774))

(assert (= (and d!72983 (not c!54223)) b!391770))

(assert (= (and b!391770 c!54226) b!391780))

(assert (= (and b!391770 (not c!54226)) b!391775))

(assert (= (or b!391780 b!391775) bm!27635))

(assert (= (and d!72983 res!224406) b!391777))

(assert (= (and b!391777 res!224405) b!391781))

(assert (= (and b!391781 res!224404) b!391772))

(assert (= (and b!391781 c!54224) b!391776))

(assert (= (and b!391781 (not c!54224)) b!391779))

(assert (= (and b!391776 res!224403) b!391773))

(assert (= (and b!391779 c!54225) b!391778))

(assert (= (and b!391779 (not c!54225)) b!391771))

(declare-fun b_lambda!8725 () Bool)

(assert (=> (not b_lambda!8725) (not b!391773)))

(declare-fun t!11570 () Bool)

(declare-fun tb!3131 () Bool)

(assert (=> (and start!38058 (= defaultEntry!514 defaultEntry!514) t!11570) tb!3131))

(declare-fun result!5757 () Bool)

(assert (=> tb!3131 (= result!5757 tp_is_empty!9669)))

(assert (=> b!391773 t!11570))

(declare-fun b_and!16345 () Bool)

(assert (= b_and!16341 (and (=> t!11570 result!5757) b_and!16345)))

(declare-fun b_lambda!8727 () Bool)

(assert (=> (not b_lambda!8727) (not b!391780)))

(assert (=> b!391780 t!11570))

(declare-fun b_and!16347 () Bool)

(assert (= b_and!16345 (and (=> t!11570 result!5757) b_and!16347)))

(assert (=> b!391776 m!388171))

(assert (=> b!391776 m!388171))

(declare-fun m!388205 () Bool)

(assert (=> b!391776 m!388205))

(declare-fun m!388207 () Bool)

(assert (=> d!72983 m!388207))

(assert (=> d!72983 m!388087))

(assert (=> b!391772 m!388171))

(assert (=> b!391772 m!388171))

(assert (=> b!391772 m!388181))

(declare-fun m!388209 () Bool)

(assert (=> bm!27635 m!388209))

(assert (=> b!391770 m!388171))

(assert (=> b!391770 m!388171))

(assert (=> b!391770 m!388181))

(declare-fun m!388211 () Bool)

(assert (=> b!391771 m!388211))

(declare-fun m!388213 () Bool)

(assert (=> b!391773 m!388213))

(assert (=> b!391773 m!388213))

(declare-fun m!388215 () Bool)

(assert (=> b!391773 m!388215))

(declare-fun m!388217 () Bool)

(assert (=> b!391773 m!388217))

(assert (=> b!391773 m!388215))

(assert (=> b!391773 m!388171))

(assert (=> b!391773 m!388171))

(declare-fun m!388219 () Bool)

(assert (=> b!391773 m!388219))

(declare-fun m!388221 () Bool)

(assert (=> b!391777 m!388221))

(assert (=> b!391778 m!388209))

(declare-fun m!388223 () Bool)

(assert (=> b!391780 m!388223))

(assert (=> b!391780 m!388213))

(assert (=> b!391780 m!388213))

(assert (=> b!391780 m!388215))

(assert (=> b!391780 m!388217))

(assert (=> b!391780 m!388215))

(declare-fun m!388225 () Bool)

(assert (=> b!391780 m!388225))

(assert (=> b!391780 m!388225))

(declare-fun m!388227 () Bool)

(assert (=> b!391780 m!388227))

(declare-fun m!388229 () Bool)

(assert (=> b!391780 m!388229))

(assert (=> b!391780 m!388171))

(assert (=> b!391642 d!72983))

(declare-fun call!27658 () ListLongMap!5439)

(declare-fun call!27657 () ListLongMap!5439)

(declare-fun call!27656 () ListLongMap!5439)

(declare-fun c!54242 () Bool)

(declare-fun bm!27650 () Bool)

(declare-fun call!27659 () ListLongMap!5439)

(declare-fun c!54241 () Bool)

(assert (=> bm!27650 (= call!27657 (+!1033 (ite c!54242 call!27656 (ite c!54241 call!27658 call!27659)) (ite (or c!54242 c!54241) (tuple2!6513 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!391826 () Bool)

(declare-fun e!237303 () Bool)

(declare-fun call!27654 () Bool)

(assert (=> b!391826 (= e!237303 (not call!27654))))

(declare-fun b!391827 () Bool)

(declare-fun e!237314 () Bool)

(declare-fun e!237307 () Bool)

(assert (=> b!391827 (= e!237314 e!237307)))

(declare-fun res!224429 () Bool)

(assert (=> b!391827 (=> (not res!224429) (not e!237307))))

(declare-fun lt!185129 () ListLongMap!5439)

(assert (=> b!391827 (= res!224429 (contains!2462 lt!185129 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!391827 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(declare-fun b!391828 () Bool)

(declare-fun e!237311 () ListLongMap!5439)

(declare-fun call!27655 () ListLongMap!5439)

(assert (=> b!391828 (= e!237311 call!27655)))

(declare-fun bm!27651 () Bool)

(assert (=> bm!27651 (= call!27659 call!27658)))

(declare-fun b!391829 () Bool)

(declare-fun e!237312 () Bool)

(assert (=> b!391829 (= e!237303 e!237312)))

(declare-fun res!224433 () Bool)

(assert (=> b!391829 (= res!224433 call!27654)))

(assert (=> b!391829 (=> (not res!224433) (not e!237312))))

(declare-fun b!391830 () Bool)

(declare-fun e!237308 () Bool)

(declare-fun call!27653 () Bool)

(assert (=> b!391830 (= e!237308 (not call!27653))))

(declare-fun b!391831 () Bool)

(declare-fun e!237302 () Bool)

(assert (=> b!391831 (= e!237308 e!237302)))

(declare-fun res!224427 () Bool)

(assert (=> b!391831 (= res!224427 call!27653)))

(assert (=> b!391831 (=> (not res!224427) (not e!237302))))

(declare-fun b!391832 () Bool)

(declare-fun c!54240 () Bool)

(assert (=> b!391832 (= c!54240 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!237310 () ListLongMap!5439)

(assert (=> b!391832 (= e!237310 e!237311)))

(declare-fun b!391833 () Bool)

(assert (=> b!391833 (= e!237307 (= (apply!304 lt!185129 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)) (get!5601 (select (arr!11066 _values!506) #b00000000000000000000000000000000) (dynLambda!642 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!391833 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11418 _values!506)))))

(assert (=> b!391833 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(declare-fun b!391834 () Bool)

(declare-fun e!237306 () ListLongMap!5439)

(assert (=> b!391834 (= e!237306 e!237310)))

(assert (=> b!391834 (= c!54241 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27652 () Bool)

(assert (=> bm!27652 (= call!27655 call!27657)))

(declare-fun b!391835 () Bool)

(declare-fun res!224430 () Bool)

(declare-fun e!237309 () Bool)

(assert (=> b!391835 (=> (not res!224430) (not e!237309))))

(assert (=> b!391835 (= res!224430 e!237314)))

(declare-fun res!224428 () Bool)

(assert (=> b!391835 (=> res!224428 e!237314)))

(declare-fun e!237313 () Bool)

(assert (=> b!391835 (= res!224428 (not e!237313))))

(declare-fun res!224432 () Bool)

(assert (=> b!391835 (=> (not res!224432) (not e!237313))))

(assert (=> b!391835 (= res!224432 (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(declare-fun bm!27653 () Bool)

(assert (=> bm!27653 (= call!27656 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391836 () Bool)

(assert (=> b!391836 (= e!237309 e!237308)))

(declare-fun c!54244 () Bool)

(assert (=> b!391836 (= c!54244 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27654 () Bool)

(assert (=> bm!27654 (= call!27658 call!27656)))

(declare-fun b!391837 () Bool)

(declare-fun e!237305 () Bool)

(assert (=> b!391837 (= e!237305 (validKeyInArray!0 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!391838 () Bool)

(assert (=> b!391838 (= e!237313 (validKeyInArray!0 (select (arr!11067 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27655 () Bool)

(assert (=> bm!27655 (= call!27654 (contains!2462 lt!185129 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!391839 () Bool)

(declare-fun e!237304 () Unit!11957)

(declare-fun lt!185128 () Unit!11957)

(assert (=> b!391839 (= e!237304 lt!185128)))

(declare-fun lt!185122 () ListLongMap!5439)

(assert (=> b!391839 (= lt!185122 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185131 () (_ BitVec 64))

(assert (=> b!391839 (= lt!185131 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185133 () (_ BitVec 64))

(assert (=> b!391839 (= lt!185133 (select (arr!11067 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185120 () Unit!11957)

(declare-fun addStillContains!280 (ListLongMap!5439 (_ BitVec 64) V!13997 (_ BitVec 64)) Unit!11957)

(assert (=> b!391839 (= lt!185120 (addStillContains!280 lt!185122 lt!185131 zeroValue!472 lt!185133))))

(assert (=> b!391839 (contains!2462 (+!1033 lt!185122 (tuple2!6513 lt!185131 zeroValue!472)) lt!185133)))

(declare-fun lt!185117 () Unit!11957)

(assert (=> b!391839 (= lt!185117 lt!185120)))

(declare-fun lt!185127 () ListLongMap!5439)

(assert (=> b!391839 (= lt!185127 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185136 () (_ BitVec 64))

(assert (=> b!391839 (= lt!185136 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185137 () (_ BitVec 64))

(assert (=> b!391839 (= lt!185137 (select (arr!11067 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185121 () Unit!11957)

(declare-fun addApplyDifferent!280 (ListLongMap!5439 (_ BitVec 64) V!13997 (_ BitVec 64)) Unit!11957)

(assert (=> b!391839 (= lt!185121 (addApplyDifferent!280 lt!185127 lt!185136 minValue!472 lt!185137))))

(assert (=> b!391839 (= (apply!304 (+!1033 lt!185127 (tuple2!6513 lt!185136 minValue!472)) lt!185137) (apply!304 lt!185127 lt!185137))))

(declare-fun lt!185123 () Unit!11957)

(assert (=> b!391839 (= lt!185123 lt!185121)))

(declare-fun lt!185125 () ListLongMap!5439)

(assert (=> b!391839 (= lt!185125 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185126 () (_ BitVec 64))

(assert (=> b!391839 (= lt!185126 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185132 () (_ BitVec 64))

(assert (=> b!391839 (= lt!185132 (select (arr!11067 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!185118 () Unit!11957)

(assert (=> b!391839 (= lt!185118 (addApplyDifferent!280 lt!185125 lt!185126 zeroValue!472 lt!185132))))

(assert (=> b!391839 (= (apply!304 (+!1033 lt!185125 (tuple2!6513 lt!185126 zeroValue!472)) lt!185132) (apply!304 lt!185125 lt!185132))))

(declare-fun lt!185119 () Unit!11957)

(assert (=> b!391839 (= lt!185119 lt!185118)))

(declare-fun lt!185135 () ListLongMap!5439)

(assert (=> b!391839 (= lt!185135 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185116 () (_ BitVec 64))

(assert (=> b!391839 (= lt!185116 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185124 () (_ BitVec 64))

(assert (=> b!391839 (= lt!185124 (select (arr!11067 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!391839 (= lt!185128 (addApplyDifferent!280 lt!185135 lt!185116 minValue!472 lt!185124))))

(assert (=> b!391839 (= (apply!304 (+!1033 lt!185135 (tuple2!6513 lt!185116 minValue!472)) lt!185124) (apply!304 lt!185135 lt!185124))))

(declare-fun b!391840 () Bool)

(assert (=> b!391840 (= e!237302 (= (apply!304 lt!185129 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!391841 () Bool)

(declare-fun res!224425 () Bool)

(assert (=> b!391841 (=> (not res!224425) (not e!237309))))

(assert (=> b!391841 (= res!224425 e!237303)))

(declare-fun c!54243 () Bool)

(assert (=> b!391841 (= c!54243 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!72985 () Bool)

(assert (=> d!72985 e!237309))

(declare-fun res!224431 () Bool)

(assert (=> d!72985 (=> (not res!224431) (not e!237309))))

(assert (=> d!72985 (= res!224431 (or (bvsge #b00000000000000000000000000000000 (size!11419 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))))

(declare-fun lt!185134 () ListLongMap!5439)

(assert (=> d!72985 (= lt!185129 lt!185134)))

(declare-fun lt!185130 () Unit!11957)

(assert (=> d!72985 (= lt!185130 e!237304)))

(declare-fun c!54239 () Bool)

(assert (=> d!72985 (= c!54239 e!237305)))

(declare-fun res!224426 () Bool)

(assert (=> d!72985 (=> (not res!224426) (not e!237305))))

(assert (=> d!72985 (= res!224426 (bvslt #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(assert (=> d!72985 (= lt!185134 e!237306)))

(assert (=> d!72985 (= c!54242 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72985 (validMask!0 mask!970)))

(assert (=> d!72985 (= (getCurrentListMap!2100 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185129)))

(declare-fun b!391842 () Bool)

(assert (=> b!391842 (= e!237311 call!27659)))

(declare-fun b!391843 () Bool)

(assert (=> b!391843 (= e!237306 (+!1033 call!27657 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!391844 () Bool)

(assert (=> b!391844 (= e!237312 (= (apply!304 lt!185129 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!391845 () Bool)

(declare-fun Unit!11959 () Unit!11957)

(assert (=> b!391845 (= e!237304 Unit!11959)))

(declare-fun bm!27656 () Bool)

(assert (=> bm!27656 (= call!27653 (contains!2462 lt!185129 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!391846 () Bool)

(assert (=> b!391846 (= e!237310 call!27655)))

(assert (= (and d!72985 c!54242) b!391843))

(assert (= (and d!72985 (not c!54242)) b!391834))

(assert (= (and b!391834 c!54241) b!391846))

(assert (= (and b!391834 (not c!54241)) b!391832))

(assert (= (and b!391832 c!54240) b!391828))

(assert (= (and b!391832 (not c!54240)) b!391842))

(assert (= (or b!391828 b!391842) bm!27651))

(assert (= (or b!391846 bm!27651) bm!27654))

(assert (= (or b!391846 b!391828) bm!27652))

(assert (= (or b!391843 bm!27654) bm!27653))

(assert (= (or b!391843 bm!27652) bm!27650))

(assert (= (and d!72985 res!224426) b!391837))

(assert (= (and d!72985 c!54239) b!391839))

(assert (= (and d!72985 (not c!54239)) b!391845))

(assert (= (and d!72985 res!224431) b!391835))

(assert (= (and b!391835 res!224432) b!391838))

(assert (= (and b!391835 (not res!224428)) b!391827))

(assert (= (and b!391827 res!224429) b!391833))

(assert (= (and b!391835 res!224430) b!391841))

(assert (= (and b!391841 c!54243) b!391829))

(assert (= (and b!391841 (not c!54243)) b!391826))

(assert (= (and b!391829 res!224433) b!391844))

(assert (= (or b!391829 b!391826) bm!27655))

(assert (= (and b!391841 res!224425) b!391836))

(assert (= (and b!391836 c!54244) b!391831))

(assert (= (and b!391836 (not c!54244)) b!391830))

(assert (= (and b!391831 res!224427) b!391840))

(assert (= (or b!391831 b!391830) bm!27656))

(declare-fun b_lambda!8729 () Bool)

(assert (=> (not b_lambda!8729) (not b!391833)))

(assert (=> b!391833 t!11570))

(declare-fun b_and!16349 () Bool)

(assert (= b_and!16347 (and (=> t!11570 result!5757) b_and!16349)))

(assert (=> b!391838 m!388171))

(assert (=> b!391838 m!388171))

(assert (=> b!391838 m!388181))

(assert (=> bm!27653 m!388101))

(declare-fun m!388231 () Bool)

(assert (=> bm!27656 m!388231))

(declare-fun m!388233 () Bool)

(assert (=> bm!27655 m!388233))

(assert (=> b!391833 m!388171))

(assert (=> b!391833 m!388215))

(assert (=> b!391833 m!388213))

(assert (=> b!391833 m!388215))

(assert (=> b!391833 m!388217))

(assert (=> b!391833 m!388213))

(assert (=> b!391833 m!388171))

(declare-fun m!388235 () Bool)

(assert (=> b!391833 m!388235))

(assert (=> b!391827 m!388171))

(assert (=> b!391827 m!388171))

(declare-fun m!388237 () Bool)

(assert (=> b!391827 m!388237))

(declare-fun m!388239 () Bool)

(assert (=> b!391839 m!388239))

(declare-fun m!388241 () Bool)

(assert (=> b!391839 m!388241))

(assert (=> b!391839 m!388171))

(declare-fun m!388243 () Bool)

(assert (=> b!391839 m!388243))

(declare-fun m!388245 () Bool)

(assert (=> b!391839 m!388245))

(declare-fun m!388247 () Bool)

(assert (=> b!391839 m!388247))

(declare-fun m!388249 () Bool)

(assert (=> b!391839 m!388249))

(declare-fun m!388251 () Bool)

(assert (=> b!391839 m!388251))

(declare-fun m!388253 () Bool)

(assert (=> b!391839 m!388253))

(assert (=> b!391839 m!388101))

(declare-fun m!388255 () Bool)

(assert (=> b!391839 m!388255))

(declare-fun m!388257 () Bool)

(assert (=> b!391839 m!388257))

(declare-fun m!388259 () Bool)

(assert (=> b!391839 m!388259))

(assert (=> b!391839 m!388251))

(assert (=> b!391839 m!388259))

(declare-fun m!388261 () Bool)

(assert (=> b!391839 m!388261))

(assert (=> b!391839 m!388239))

(declare-fun m!388263 () Bool)

(assert (=> b!391839 m!388263))

(assert (=> b!391839 m!388247))

(declare-fun m!388265 () Bool)

(assert (=> b!391839 m!388265))

(declare-fun m!388267 () Bool)

(assert (=> b!391839 m!388267))

(declare-fun m!388269 () Bool)

(assert (=> b!391840 m!388269))

(assert (=> b!391837 m!388171))

(assert (=> b!391837 m!388171))

(assert (=> b!391837 m!388181))

(assert (=> d!72985 m!388087))

(declare-fun m!388271 () Bool)

(assert (=> bm!27650 m!388271))

(declare-fun m!388273 () Bool)

(assert (=> b!391843 m!388273))

(declare-fun m!388275 () Bool)

(assert (=> b!391844 m!388275))

(assert (=> b!391642 d!72985))

(declare-fun b!391847 () Bool)

(declare-fun e!237320 () ListLongMap!5439)

(declare-fun e!237317 () ListLongMap!5439)

(assert (=> b!391847 (= e!237320 e!237317)))

(declare-fun c!54248 () Bool)

(assert (=> b!391847 (= c!54248 (validKeyInArray!0 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(declare-fun call!27660 () ListLongMap!5439)

(declare-fun bm!27657 () Bool)

(assert (=> bm!27657 (= call!27660 (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!391848 () Bool)

(declare-fun e!237319 () Bool)

(declare-fun lt!185138 () ListLongMap!5439)

(assert (=> b!391848 (= e!237319 (isEmpty!555 lt!185138))))

(declare-fun b!391849 () Bool)

(declare-fun e!237321 () Bool)

(assert (=> b!391849 (= e!237321 (validKeyInArray!0 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(assert (=> b!391849 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!391850 () Bool)

(assert (=> b!391850 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(assert (=> b!391850 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11418 lt!185001)))))

(declare-fun e!237318 () Bool)

(assert (=> b!391850 (= e!237318 (= (apply!304 lt!185138 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)) (get!5601 (select (arr!11066 lt!185001) #b00000000000000000000000000000000) (dynLambda!642 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!391851 () Bool)

(assert (=> b!391851 (= e!237320 (ListLongMap!5440 Nil!6392))))

(declare-fun b!391853 () Bool)

(declare-fun e!237315 () Bool)

(assert (=> b!391853 (= e!237315 e!237318)))

(assert (=> b!391853 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(declare-fun res!224434 () Bool)

(assert (=> b!391853 (= res!224434 (contains!2462 lt!185138 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(assert (=> b!391853 (=> (not res!224434) (not e!237318))))

(declare-fun b!391854 () Bool)

(declare-fun res!224436 () Bool)

(declare-fun e!237316 () Bool)

(assert (=> b!391854 (=> (not res!224436) (not e!237316))))

(assert (=> b!391854 (= res!224436 (not (contains!2462 lt!185138 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391855 () Bool)

(assert (=> b!391855 (= e!237319 (= lt!185138 (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!391856 () Bool)

(assert (=> b!391856 (= e!237315 e!237319)))

(declare-fun c!54247 () Bool)

(assert (=> b!391856 (= c!54247 (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(declare-fun b!391857 () Bool)

(declare-fun lt!185143 () Unit!11957)

(declare-fun lt!185142 () Unit!11957)

(assert (=> b!391857 (= lt!185143 lt!185142)))

(declare-fun lt!185144 () V!13997)

(declare-fun lt!185141 () (_ BitVec 64))

(declare-fun lt!185139 () ListLongMap!5439)

(declare-fun lt!185140 () (_ BitVec 64))

(assert (=> b!391857 (not (contains!2462 (+!1033 lt!185139 (tuple2!6513 lt!185140 lt!185144)) lt!185141))))

(assert (=> b!391857 (= lt!185142 (addStillNotContains!139 lt!185139 lt!185140 lt!185144 lt!185141))))

(assert (=> b!391857 (= lt!185141 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!391857 (= lt!185144 (get!5601 (select (arr!11066 lt!185001) #b00000000000000000000000000000000) (dynLambda!642 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!391857 (= lt!185140 (select (arr!11067 lt!184996) #b00000000000000000000000000000000))))

(assert (=> b!391857 (= lt!185139 call!27660)))

(assert (=> b!391857 (= e!237317 (+!1033 call!27660 (tuple2!6513 (select (arr!11067 lt!184996) #b00000000000000000000000000000000) (get!5601 (select (arr!11066 lt!185001) #b00000000000000000000000000000000) (dynLambda!642 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!391858 () Bool)

(assert (=> b!391858 (= e!237316 e!237315)))

(declare-fun c!54246 () Bool)

(assert (=> b!391858 (= c!54246 e!237321)))

(declare-fun res!224435 () Bool)

(assert (=> b!391858 (=> (not res!224435) (not e!237321))))

(assert (=> b!391858 (= res!224435 (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(declare-fun b!391852 () Bool)

(assert (=> b!391852 (= e!237317 call!27660)))

(declare-fun d!72987 () Bool)

(assert (=> d!72987 e!237316))

(declare-fun res!224437 () Bool)

(assert (=> d!72987 (=> (not res!224437) (not e!237316))))

(assert (=> d!72987 (= res!224437 (not (contains!2462 lt!185138 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72987 (= lt!185138 e!237320)))

(declare-fun c!54245 () Bool)

(assert (=> d!72987 (= c!54245 (bvsge #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(assert (=> d!72987 (validMask!0 mask!970)))

(assert (=> d!72987 (= (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185138)))

(assert (= (and d!72987 c!54245) b!391851))

(assert (= (and d!72987 (not c!54245)) b!391847))

(assert (= (and b!391847 c!54248) b!391857))

(assert (= (and b!391847 (not c!54248)) b!391852))

(assert (= (or b!391857 b!391852) bm!27657))

(assert (= (and d!72987 res!224437) b!391854))

(assert (= (and b!391854 res!224436) b!391858))

(assert (= (and b!391858 res!224435) b!391849))

(assert (= (and b!391858 c!54246) b!391853))

(assert (= (and b!391858 (not c!54246)) b!391856))

(assert (= (and b!391853 res!224434) b!391850))

(assert (= (and b!391856 c!54247) b!391855))

(assert (= (and b!391856 (not c!54247)) b!391848))

(declare-fun b_lambda!8731 () Bool)

(assert (=> (not b_lambda!8731) (not b!391850)))

(assert (=> b!391850 t!11570))

(declare-fun b_and!16351 () Bool)

(assert (= b_and!16349 (and (=> t!11570 result!5757) b_and!16351)))

(declare-fun b_lambda!8733 () Bool)

(assert (=> (not b_lambda!8733) (not b!391857)))

(assert (=> b!391857 t!11570))

(declare-fun b_and!16353 () Bool)

(assert (= b_and!16351 (and (=> t!11570 result!5757) b_and!16353)))

(assert (=> b!391853 m!388183))

(assert (=> b!391853 m!388183))

(declare-fun m!388277 () Bool)

(assert (=> b!391853 m!388277))

(declare-fun m!388279 () Bool)

(assert (=> d!72987 m!388279))

(assert (=> d!72987 m!388087))

(assert (=> b!391849 m!388183))

(assert (=> b!391849 m!388183))

(assert (=> b!391849 m!388185))

(declare-fun m!388281 () Bool)

(assert (=> bm!27657 m!388281))

(assert (=> b!391847 m!388183))

(assert (=> b!391847 m!388183))

(assert (=> b!391847 m!388185))

(declare-fun m!388283 () Bool)

(assert (=> b!391848 m!388283))

(declare-fun m!388285 () Bool)

(assert (=> b!391850 m!388285))

(assert (=> b!391850 m!388285))

(assert (=> b!391850 m!388215))

(declare-fun m!388287 () Bool)

(assert (=> b!391850 m!388287))

(assert (=> b!391850 m!388215))

(assert (=> b!391850 m!388183))

(assert (=> b!391850 m!388183))

(declare-fun m!388289 () Bool)

(assert (=> b!391850 m!388289))

(declare-fun m!388291 () Bool)

(assert (=> b!391854 m!388291))

(assert (=> b!391855 m!388281))

(declare-fun m!388293 () Bool)

(assert (=> b!391857 m!388293))

(assert (=> b!391857 m!388285))

(assert (=> b!391857 m!388285))

(assert (=> b!391857 m!388215))

(assert (=> b!391857 m!388287))

(assert (=> b!391857 m!388215))

(declare-fun m!388295 () Bool)

(assert (=> b!391857 m!388295))

(assert (=> b!391857 m!388295))

(declare-fun m!388297 () Bool)

(assert (=> b!391857 m!388297))

(declare-fun m!388299 () Bool)

(assert (=> b!391857 m!388299))

(assert (=> b!391857 m!388183))

(assert (=> b!391642 d!72987))

(declare-fun bm!27662 () Bool)

(declare-fun call!27665 () ListLongMap!5439)

(assert (=> bm!27662 (= call!27665 (getCurrentListMapNoExtraKeys!962 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391865 () Bool)

(declare-fun call!27666 () ListLongMap!5439)

(declare-fun e!237327 () Bool)

(assert (=> b!391865 (= e!237327 (= call!27666 (+!1033 call!27665 (tuple2!6513 k0!778 v!373))))))

(declare-fun bm!27663 () Bool)

(assert (=> bm!27663 (= call!27666 (getCurrentListMapNoExtraKeys!962 (array!23218 (store (arr!11067 _keys!658) i!548 k0!778) (size!11419 _keys!658)) (array!23216 (store (arr!11066 _values!506) i!548 (ValueCellFull!4491 v!373)) (size!11418 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391866 () Bool)

(declare-fun e!237326 () Bool)

(assert (=> b!391866 (= e!237326 e!237327)))

(declare-fun c!54251 () Bool)

(assert (=> b!391866 (= c!54251 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun b!391867 () Bool)

(assert (=> b!391867 (= e!237327 (= call!27666 call!27665))))

(declare-fun d!72989 () Bool)

(assert (=> d!72989 e!237326))

(declare-fun res!224440 () Bool)

(assert (=> d!72989 (=> (not res!224440) (not e!237326))))

(assert (=> d!72989 (= res!224440 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11419 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11418 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11419 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11418 _values!506))))))))

(declare-fun lt!185147 () Unit!11957)

(declare-fun choose!1327 (array!23217 array!23215 (_ BitVec 32) (_ BitVec 32) V!13997 V!13997 (_ BitVec 32) (_ BitVec 64) V!13997 (_ BitVec 32) Int) Unit!11957)

(assert (=> d!72989 (= lt!185147 (choose!1327 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!72989 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11419 _keys!658)))))

(assert (=> d!72989 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!257 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!185147)))

(assert (= (and d!72989 res!224440) b!391866))

(assert (= (and b!391866 c!54251) b!391865))

(assert (= (and b!391866 (not c!54251)) b!391867))

(assert (= (or b!391865 b!391867) bm!27662))

(assert (= (or b!391865 b!391867) bm!27663))

(assert (=> bm!27662 m!388101))

(declare-fun m!388301 () Bool)

(assert (=> b!391865 m!388301))

(assert (=> bm!27663 m!388081))

(assert (=> bm!27663 m!388111))

(declare-fun m!388303 () Bool)

(assert (=> bm!27663 m!388303))

(declare-fun m!388305 () Bool)

(assert (=> d!72989 m!388305))

(assert (=> b!391642 d!72989))

(declare-fun d!72991 () Bool)

(declare-fun e!237328 () Bool)

(assert (=> d!72991 e!237328))

(declare-fun res!224442 () Bool)

(assert (=> d!72991 (=> (not res!224442) (not e!237328))))

(declare-fun lt!185149 () ListLongMap!5439)

(assert (=> d!72991 (= res!224442 (contains!2462 lt!185149 (_1!3266 (tuple2!6513 k0!778 v!373))))))

(declare-fun lt!185148 () List!6395)

(assert (=> d!72991 (= lt!185149 (ListLongMap!5440 lt!185148))))

(declare-fun lt!185151 () Unit!11957)

(declare-fun lt!185150 () Unit!11957)

(assert (=> d!72991 (= lt!185151 lt!185150)))

(assert (=> d!72991 (= (getValueByKey!361 lt!185148 (_1!3266 (tuple2!6513 k0!778 v!373))) (Some!366 (_2!3266 (tuple2!6513 k0!778 v!373))))))

(assert (=> d!72991 (= lt!185150 (lemmaContainsTupThenGetReturnValue!185 lt!185148 (_1!3266 (tuple2!6513 k0!778 v!373)) (_2!3266 (tuple2!6513 k0!778 v!373))))))

(assert (=> d!72991 (= lt!185148 (insertStrictlySorted!187 (toList!2735 lt!184998) (_1!3266 (tuple2!6513 k0!778 v!373)) (_2!3266 (tuple2!6513 k0!778 v!373))))))

(assert (=> d!72991 (= (+!1033 lt!184998 (tuple2!6513 k0!778 v!373)) lt!185149)))

(declare-fun b!391868 () Bool)

(declare-fun res!224441 () Bool)

(assert (=> b!391868 (=> (not res!224441) (not e!237328))))

(assert (=> b!391868 (= res!224441 (= (getValueByKey!361 (toList!2735 lt!185149) (_1!3266 (tuple2!6513 k0!778 v!373))) (Some!366 (_2!3266 (tuple2!6513 k0!778 v!373)))))))

(declare-fun b!391869 () Bool)

(assert (=> b!391869 (= e!237328 (contains!2463 (toList!2735 lt!185149) (tuple2!6513 k0!778 v!373)))))

(assert (= (and d!72991 res!224442) b!391868))

(assert (= (and b!391868 res!224441) b!391869))

(declare-fun m!388307 () Bool)

(assert (=> d!72991 m!388307))

(declare-fun m!388309 () Bool)

(assert (=> d!72991 m!388309))

(declare-fun m!388311 () Bool)

(assert (=> d!72991 m!388311))

(declare-fun m!388313 () Bool)

(assert (=> d!72991 m!388313))

(declare-fun m!388315 () Bool)

(assert (=> b!391868 m!388315))

(declare-fun m!388317 () Bool)

(assert (=> b!391869 m!388317))

(assert (=> b!391642 d!72991))

(declare-fun call!27670 () ListLongMap!5439)

(declare-fun c!54255 () Bool)

(declare-fun call!27671 () ListLongMap!5439)

(declare-fun call!27672 () ListLongMap!5439)

(declare-fun call!27673 () ListLongMap!5439)

(declare-fun bm!27664 () Bool)

(declare-fun c!54254 () Bool)

(assert (=> bm!27664 (= call!27671 (+!1033 (ite c!54255 call!27670 (ite c!54254 call!27672 call!27673)) (ite (or c!54255 c!54254) (tuple2!6513 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!391870 () Bool)

(declare-fun e!237330 () Bool)

(declare-fun call!27668 () Bool)

(assert (=> b!391870 (= e!237330 (not call!27668))))

(declare-fun b!391871 () Bool)

(declare-fun e!237341 () Bool)

(declare-fun e!237334 () Bool)

(assert (=> b!391871 (= e!237341 e!237334)))

(declare-fun res!224447 () Bool)

(assert (=> b!391871 (=> (not res!224447) (not e!237334))))

(declare-fun lt!185165 () ListLongMap!5439)

(assert (=> b!391871 (= res!224447 (contains!2462 lt!185165 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(assert (=> b!391871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(declare-fun b!391872 () Bool)

(declare-fun e!237338 () ListLongMap!5439)

(declare-fun call!27669 () ListLongMap!5439)

(assert (=> b!391872 (= e!237338 call!27669)))

(declare-fun bm!27665 () Bool)

(assert (=> bm!27665 (= call!27673 call!27672)))

(declare-fun b!391873 () Bool)

(declare-fun e!237339 () Bool)

(assert (=> b!391873 (= e!237330 e!237339)))

(declare-fun res!224451 () Bool)

(assert (=> b!391873 (= res!224451 call!27668)))

(assert (=> b!391873 (=> (not res!224451) (not e!237339))))

(declare-fun b!391874 () Bool)

(declare-fun e!237335 () Bool)

(declare-fun call!27667 () Bool)

(assert (=> b!391874 (= e!237335 (not call!27667))))

(declare-fun b!391875 () Bool)

(declare-fun e!237329 () Bool)

(assert (=> b!391875 (= e!237335 e!237329)))

(declare-fun res!224445 () Bool)

(assert (=> b!391875 (= res!224445 call!27667)))

(assert (=> b!391875 (=> (not res!224445) (not e!237329))))

(declare-fun b!391876 () Bool)

(declare-fun c!54253 () Bool)

(assert (=> b!391876 (= c!54253 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!237337 () ListLongMap!5439)

(assert (=> b!391876 (= e!237337 e!237338)))

(declare-fun b!391877 () Bool)

(assert (=> b!391877 (= e!237334 (= (apply!304 lt!185165 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)) (get!5601 (select (arr!11066 lt!185001) #b00000000000000000000000000000000) (dynLambda!642 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!391877 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11418 lt!185001)))))

(assert (=> b!391877 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(declare-fun b!391878 () Bool)

(declare-fun e!237333 () ListLongMap!5439)

(assert (=> b!391878 (= e!237333 e!237337)))

(assert (=> b!391878 (= c!54254 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27666 () Bool)

(assert (=> bm!27666 (= call!27669 call!27671)))

(declare-fun b!391879 () Bool)

(declare-fun res!224448 () Bool)

(declare-fun e!237336 () Bool)

(assert (=> b!391879 (=> (not res!224448) (not e!237336))))

(assert (=> b!391879 (= res!224448 e!237341)))

(declare-fun res!224446 () Bool)

(assert (=> b!391879 (=> res!224446 e!237341)))

(declare-fun e!237340 () Bool)

(assert (=> b!391879 (= res!224446 (not e!237340))))

(declare-fun res!224450 () Bool)

(assert (=> b!391879 (=> (not res!224450) (not e!237340))))

(assert (=> b!391879 (= res!224450 (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(declare-fun bm!27667 () Bool)

(assert (=> bm!27667 (= call!27670 (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391880 () Bool)

(assert (=> b!391880 (= e!237336 e!237335)))

(declare-fun c!54257 () Bool)

(assert (=> b!391880 (= c!54257 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!27668 () Bool)

(assert (=> bm!27668 (= call!27672 call!27670)))

(declare-fun b!391881 () Bool)

(declare-fun e!237332 () Bool)

(assert (=> b!391881 (= e!237332 (validKeyInArray!0 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(declare-fun b!391882 () Bool)

(assert (=> b!391882 (= e!237340 (validKeyInArray!0 (select (arr!11067 lt!184996) #b00000000000000000000000000000000)))))

(declare-fun bm!27669 () Bool)

(assert (=> bm!27669 (= call!27668 (contains!2462 lt!185165 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!391883 () Bool)

(declare-fun e!237331 () Unit!11957)

(declare-fun lt!185164 () Unit!11957)

(assert (=> b!391883 (= e!237331 lt!185164)))

(declare-fun lt!185158 () ListLongMap!5439)

(assert (=> b!391883 (= lt!185158 (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185167 () (_ BitVec 64))

(assert (=> b!391883 (= lt!185167 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185169 () (_ BitVec 64))

(assert (=> b!391883 (= lt!185169 (select (arr!11067 lt!184996) #b00000000000000000000000000000000))))

(declare-fun lt!185156 () Unit!11957)

(assert (=> b!391883 (= lt!185156 (addStillContains!280 lt!185158 lt!185167 zeroValue!472 lt!185169))))

(assert (=> b!391883 (contains!2462 (+!1033 lt!185158 (tuple2!6513 lt!185167 zeroValue!472)) lt!185169)))

(declare-fun lt!185153 () Unit!11957)

(assert (=> b!391883 (= lt!185153 lt!185156)))

(declare-fun lt!185163 () ListLongMap!5439)

(assert (=> b!391883 (= lt!185163 (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185172 () (_ BitVec 64))

(assert (=> b!391883 (= lt!185172 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185173 () (_ BitVec 64))

(assert (=> b!391883 (= lt!185173 (select (arr!11067 lt!184996) #b00000000000000000000000000000000))))

(declare-fun lt!185157 () Unit!11957)

(assert (=> b!391883 (= lt!185157 (addApplyDifferent!280 lt!185163 lt!185172 minValue!472 lt!185173))))

(assert (=> b!391883 (= (apply!304 (+!1033 lt!185163 (tuple2!6513 lt!185172 minValue!472)) lt!185173) (apply!304 lt!185163 lt!185173))))

(declare-fun lt!185159 () Unit!11957)

(assert (=> b!391883 (= lt!185159 lt!185157)))

(declare-fun lt!185161 () ListLongMap!5439)

(assert (=> b!391883 (= lt!185161 (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185162 () (_ BitVec 64))

(assert (=> b!391883 (= lt!185162 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185168 () (_ BitVec 64))

(assert (=> b!391883 (= lt!185168 (select (arr!11067 lt!184996) #b00000000000000000000000000000000))))

(declare-fun lt!185154 () Unit!11957)

(assert (=> b!391883 (= lt!185154 (addApplyDifferent!280 lt!185161 lt!185162 zeroValue!472 lt!185168))))

(assert (=> b!391883 (= (apply!304 (+!1033 lt!185161 (tuple2!6513 lt!185162 zeroValue!472)) lt!185168) (apply!304 lt!185161 lt!185168))))

(declare-fun lt!185155 () Unit!11957)

(assert (=> b!391883 (= lt!185155 lt!185154)))

(declare-fun lt!185171 () ListLongMap!5439)

(assert (=> b!391883 (= lt!185171 (getCurrentListMapNoExtraKeys!962 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185152 () (_ BitVec 64))

(assert (=> b!391883 (= lt!185152 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!185160 () (_ BitVec 64))

(assert (=> b!391883 (= lt!185160 (select (arr!11067 lt!184996) #b00000000000000000000000000000000))))

(assert (=> b!391883 (= lt!185164 (addApplyDifferent!280 lt!185171 lt!185152 minValue!472 lt!185160))))

(assert (=> b!391883 (= (apply!304 (+!1033 lt!185171 (tuple2!6513 lt!185152 minValue!472)) lt!185160) (apply!304 lt!185171 lt!185160))))

(declare-fun b!391884 () Bool)

(assert (=> b!391884 (= e!237329 (= (apply!304 lt!185165 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!391885 () Bool)

(declare-fun res!224443 () Bool)

(assert (=> b!391885 (=> (not res!224443) (not e!237336))))

(assert (=> b!391885 (= res!224443 e!237330)))

(declare-fun c!54256 () Bool)

(assert (=> b!391885 (= c!54256 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!72993 () Bool)

(assert (=> d!72993 e!237336))

(declare-fun res!224449 () Bool)

(assert (=> d!72993 (=> (not res!224449) (not e!237336))))

(assert (=> d!72993 (= res!224449 (or (bvsge #b00000000000000000000000000000000 (size!11419 lt!184996)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))))

(declare-fun lt!185170 () ListLongMap!5439)

(assert (=> d!72993 (= lt!185165 lt!185170)))

(declare-fun lt!185166 () Unit!11957)

(assert (=> d!72993 (= lt!185166 e!237331)))

(declare-fun c!54252 () Bool)

(assert (=> d!72993 (= c!54252 e!237332)))

(declare-fun res!224444 () Bool)

(assert (=> d!72993 (=> (not res!224444) (not e!237332))))

(assert (=> d!72993 (= res!224444 (bvslt #b00000000000000000000000000000000 (size!11419 lt!184996)))))

(assert (=> d!72993 (= lt!185170 e!237333)))

(assert (=> d!72993 (= c!54255 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72993 (validMask!0 mask!970)))

(assert (=> d!72993 (= (getCurrentListMap!2100 lt!184996 lt!185001 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!185165)))

(declare-fun b!391886 () Bool)

(assert (=> b!391886 (= e!237338 call!27673)))

(declare-fun b!391887 () Bool)

(assert (=> b!391887 (= e!237333 (+!1033 call!27671 (tuple2!6513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!391888 () Bool)

(assert (=> b!391888 (= e!237339 (= (apply!304 lt!185165 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!391889 () Bool)

(declare-fun Unit!11960 () Unit!11957)

(assert (=> b!391889 (= e!237331 Unit!11960)))

(declare-fun bm!27670 () Bool)

(assert (=> bm!27670 (= call!27667 (contains!2462 lt!185165 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!391890 () Bool)

(assert (=> b!391890 (= e!237337 call!27669)))

(assert (= (and d!72993 c!54255) b!391887))

(assert (= (and d!72993 (not c!54255)) b!391878))

(assert (= (and b!391878 c!54254) b!391890))

(assert (= (and b!391878 (not c!54254)) b!391876))

(assert (= (and b!391876 c!54253) b!391872))

(assert (= (and b!391876 (not c!54253)) b!391886))

(assert (= (or b!391872 b!391886) bm!27665))

(assert (= (or b!391890 bm!27665) bm!27668))

(assert (= (or b!391890 b!391872) bm!27666))

(assert (= (or b!391887 bm!27668) bm!27667))

(assert (= (or b!391887 bm!27666) bm!27664))

(assert (= (and d!72993 res!224444) b!391881))

(assert (= (and d!72993 c!54252) b!391883))

(assert (= (and d!72993 (not c!54252)) b!391889))

(assert (= (and d!72993 res!224449) b!391879))

(assert (= (and b!391879 res!224450) b!391882))

(assert (= (and b!391879 (not res!224446)) b!391871))

(assert (= (and b!391871 res!224447) b!391877))

(assert (= (and b!391879 res!224448) b!391885))

(assert (= (and b!391885 c!54256) b!391873))

(assert (= (and b!391885 (not c!54256)) b!391870))

(assert (= (and b!391873 res!224451) b!391888))

(assert (= (or b!391873 b!391870) bm!27669))

(assert (= (and b!391885 res!224443) b!391880))

(assert (= (and b!391880 c!54257) b!391875))

(assert (= (and b!391880 (not c!54257)) b!391874))

(assert (= (and b!391875 res!224445) b!391884))

(assert (= (or b!391875 b!391874) bm!27670))

(declare-fun b_lambda!8735 () Bool)

(assert (=> (not b_lambda!8735) (not b!391877)))

(assert (=> b!391877 t!11570))

(declare-fun b_and!16355 () Bool)

(assert (= b_and!16353 (and (=> t!11570 result!5757) b_and!16355)))

(assert (=> b!391882 m!388183))

(assert (=> b!391882 m!388183))

(assert (=> b!391882 m!388185))

(assert (=> bm!27667 m!388113))

(declare-fun m!388319 () Bool)

(assert (=> bm!27670 m!388319))

(declare-fun m!388321 () Bool)

(assert (=> bm!27669 m!388321))

(assert (=> b!391877 m!388183))

(assert (=> b!391877 m!388215))

(assert (=> b!391877 m!388285))

(assert (=> b!391877 m!388215))

(assert (=> b!391877 m!388287))

(assert (=> b!391877 m!388285))

(assert (=> b!391877 m!388183))

(declare-fun m!388323 () Bool)

(assert (=> b!391877 m!388323))

(assert (=> b!391871 m!388183))

(assert (=> b!391871 m!388183))

(declare-fun m!388325 () Bool)

(assert (=> b!391871 m!388325))

(declare-fun m!388327 () Bool)

(assert (=> b!391883 m!388327))

(declare-fun m!388329 () Bool)

(assert (=> b!391883 m!388329))

(assert (=> b!391883 m!388183))

(declare-fun m!388331 () Bool)

(assert (=> b!391883 m!388331))

(declare-fun m!388333 () Bool)

(assert (=> b!391883 m!388333))

(declare-fun m!388335 () Bool)

(assert (=> b!391883 m!388335))

(declare-fun m!388337 () Bool)

(assert (=> b!391883 m!388337))

(declare-fun m!388339 () Bool)

(assert (=> b!391883 m!388339))

(declare-fun m!388341 () Bool)

(assert (=> b!391883 m!388341))

(assert (=> b!391883 m!388113))

(declare-fun m!388343 () Bool)

(assert (=> b!391883 m!388343))

(declare-fun m!388345 () Bool)

(assert (=> b!391883 m!388345))

(declare-fun m!388347 () Bool)

(assert (=> b!391883 m!388347))

(assert (=> b!391883 m!388339))

(assert (=> b!391883 m!388347))

(declare-fun m!388349 () Bool)

(assert (=> b!391883 m!388349))

(assert (=> b!391883 m!388327))

(declare-fun m!388351 () Bool)

(assert (=> b!391883 m!388351))

(assert (=> b!391883 m!388335))

(declare-fun m!388353 () Bool)

(assert (=> b!391883 m!388353))

(declare-fun m!388355 () Bool)

(assert (=> b!391883 m!388355))

(declare-fun m!388357 () Bool)

(assert (=> b!391884 m!388357))

(assert (=> b!391881 m!388183))

(assert (=> b!391881 m!388183))

(assert (=> b!391881 m!388185))

(assert (=> d!72993 m!388087))

(declare-fun m!388359 () Bool)

(assert (=> bm!27664 m!388359))

(declare-fun m!388361 () Bool)

(assert (=> b!391887 m!388361))

(declare-fun m!388363 () Bool)

(assert (=> b!391888 m!388363))

(assert (=> b!391642 d!72993))

(declare-fun condMapEmpty!16095 () Bool)

(declare-fun mapDefault!16095 () ValueCell!4491)

(assert (=> mapNonEmpty!16089 (= condMapEmpty!16095 (= mapRest!16089 ((as const (Array (_ BitVec 32) ValueCell!4491)) mapDefault!16095)))))

(declare-fun e!237347 () Bool)

(declare-fun mapRes!16095 () Bool)

(assert (=> mapNonEmpty!16089 (= tp!31763 (and e!237347 mapRes!16095))))

(declare-fun mapIsEmpty!16095 () Bool)

(assert (=> mapIsEmpty!16095 mapRes!16095))

(declare-fun b!391898 () Bool)

(assert (=> b!391898 (= e!237347 tp_is_empty!9669)))

(declare-fun b!391897 () Bool)

(declare-fun e!237346 () Bool)

(assert (=> b!391897 (= e!237346 tp_is_empty!9669)))

(declare-fun mapNonEmpty!16095 () Bool)

(declare-fun tp!31773 () Bool)

(assert (=> mapNonEmpty!16095 (= mapRes!16095 (and tp!31773 e!237346))))

(declare-fun mapValue!16095 () ValueCell!4491)

(declare-fun mapRest!16095 () (Array (_ BitVec 32) ValueCell!4491))

(declare-fun mapKey!16095 () (_ BitVec 32))

(assert (=> mapNonEmpty!16095 (= mapRest!16089 (store mapRest!16095 mapKey!16095 mapValue!16095))))

(assert (= (and mapNonEmpty!16089 condMapEmpty!16095) mapIsEmpty!16095))

(assert (= (and mapNonEmpty!16089 (not condMapEmpty!16095)) mapNonEmpty!16095))

(assert (= (and mapNonEmpty!16095 ((_ is ValueCellFull!4491) mapValue!16095)) b!391897))

(assert (= (and mapNonEmpty!16089 ((_ is ValueCellFull!4491) mapDefault!16095)) b!391898))

(declare-fun m!388365 () Bool)

(assert (=> mapNonEmpty!16095 m!388365))

(declare-fun b_lambda!8737 () Bool)

(assert (= b_lambda!8731 (or (and start!38058 b_free!8997) b_lambda!8737)))

(declare-fun b_lambda!8739 () Bool)

(assert (= b_lambda!8725 (or (and start!38058 b_free!8997) b_lambda!8739)))

(declare-fun b_lambda!8741 () Bool)

(assert (= b_lambda!8729 (or (and start!38058 b_free!8997) b_lambda!8741)))

(declare-fun b_lambda!8743 () Bool)

(assert (= b_lambda!8735 (or (and start!38058 b_free!8997) b_lambda!8743)))

(declare-fun b_lambda!8745 () Bool)

(assert (= b_lambda!8727 (or (and start!38058 b_free!8997) b_lambda!8745)))

(declare-fun b_lambda!8747 () Bool)

(assert (= b_lambda!8733 (or (and start!38058 b_free!8997) b_lambda!8747)))

(check-sat (not bm!27663) tp_is_empty!9669 (not b!391838) (not bm!27627) (not b!391740) (not d!72989) (not b!391868) (not mapNonEmpty!16095) b_and!16355 (not b!391883) (not bm!27656) (not b!391857) (not b_next!8997) (not b!391871) (not b!391727) (not b!391881) (not b!391847) (not b!391840) (not b!391839) (not b!391743) (not b_lambda!8745) (not b_lambda!8747) (not d!72969) (not b!391742) (not b!391884) (not b!391850) (not b!391777) (not bm!27669) (not bm!27670) (not b!391741) (not b_lambda!8741) (not d!72993) (not b_lambda!8737) (not b!391776) (not b!391778) (not b!391833) (not b!391865) (not b!391855) (not bm!27635) (not b!391869) (not b!391882) (not b!391728) (not b!391837) (not b!391848) (not b!391773) (not b!391877) (not b!391843) (not bm!27632) (not b!391849) (not b!391770) (not b!391734) (not b!391827) (not d!72985) (not b!391887) (not b!391780) (not bm!27631) (not b!391715) (not b_lambda!8743) (not b!391772) (not d!72987) (not b!391726) (not b!391853) (not bm!27630) (not bm!27657) (not b!391733) (not b!391702) (not d!72991) (not bm!27664) (not b!391703) (not bm!27655) (not b!391771) (not b!391854) (not d!72983) (not bm!27650) (not bm!27653) (not b!391714) (not bm!27662) (not bm!27667) (not b!391844) (not b_lambda!8739) (not b!391888))
(check-sat b_and!16355 (not b_next!8997))
