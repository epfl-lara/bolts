; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38166 () Bool)

(assert start!38166)

(declare-fun b_free!9039 () Bool)

(declare-fun b_next!9039 () Bool)

(assert (=> start!38166 (= b_free!9039 (not b_next!9039))))

(declare-fun tp!31899 () Bool)

(declare-fun b_and!16419 () Bool)

(assert (=> start!38166 (= tp!31899 b_and!16419)))

(declare-fun b!393184 () Bool)

(declare-fun res!225342 () Bool)

(declare-fun e!238066 () Bool)

(assert (=> b!393184 (=> (not res!225342) (not e!238066))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!14053 0))(
  ( (V!14054 (val!4900 Int)) )
))
(declare-datatypes ((ValueCell!4512 0))(
  ( (ValueCellFull!4512 (v!7133 V!14053)) (EmptyCell!4512) )
))
(declare-datatypes ((array!23303 0))(
  ( (array!23304 (arr!11107 (Array (_ BitVec 32) ValueCell!4512)) (size!11459 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23303)

(declare-datatypes ((array!23305 0))(
  ( (array!23306 (arr!11108 (Array (_ BitVec 32) (_ BitVec 64))) (size!11460 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23305)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!393184 (= res!225342 (and (= (size!11459 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11460 _keys!658) (size!11459 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!393186 () Bool)

(declare-fun e!238067 () Bool)

(declare-fun tp_is_empty!9711 () Bool)

(assert (=> b!393186 (= e!238067 tp_is_empty!9711)))

(declare-fun b!393187 () Bool)

(declare-fun res!225344 () Bool)

(assert (=> b!393187 (=> (not res!225344) (not e!238066))))

(declare-datatypes ((List!6428 0))(
  ( (Nil!6425) (Cons!6424 (h!7280 (_ BitVec 64)) (t!11606 List!6428)) )
))
(declare-fun arrayNoDuplicates!0 (array!23305 (_ BitVec 32) List!6428) Bool)

(assert (=> b!393187 (= res!225344 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6425))))

(declare-fun b!393188 () Bool)

(declare-fun e!238070 () Bool)

(declare-fun lt!186129 () Bool)

(declare-datatypes ((tuple2!6546 0))(
  ( (tuple2!6547 (_1!3283 (_ BitVec 64)) (_2!3283 V!14053)) )
))
(declare-datatypes ((List!6429 0))(
  ( (Nil!6426) (Cons!6425 (h!7281 tuple2!6546) (t!11607 List!6429)) )
))
(declare-datatypes ((ListLongMap!5473 0))(
  ( (ListLongMap!5474 (toList!2752 List!6429)) )
))
(declare-fun lt!186127 () ListLongMap!5473)

(declare-fun lt!186124 () ListLongMap!5473)

(assert (=> b!393188 (= e!238070 (not (or (and (not lt!186129) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186129) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186129) (= lt!186127 lt!186124))))))

(assert (=> b!393188 (= lt!186129 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!186123 () ListLongMap!5473)

(declare-fun zeroValue!472 () V!14053)

(declare-fun minValue!472 () V!14053)

(declare-fun getCurrentListMap!2112 (array!23305 array!23303 (_ BitVec 32) (_ BitVec 32) V!14053 V!14053 (_ BitVec 32) Int) ListLongMap!5473)

(assert (=> b!393188 (= lt!186123 (getCurrentListMap!2112 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186126 () array!23305)

(declare-fun lt!186130 () array!23303)

(assert (=> b!393188 (= lt!186127 (getCurrentListMap!2112 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186125 () ListLongMap!5473)

(assert (=> b!393188 (and (= lt!186124 lt!186125) (= lt!186125 lt!186124))))

(declare-fun v!373 () V!14053)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun lt!186131 () ListLongMap!5473)

(declare-fun +!1050 (ListLongMap!5473 tuple2!6546) ListLongMap!5473)

(assert (=> b!393188 (= lt!186125 (+!1050 lt!186131 (tuple2!6547 k0!778 v!373)))))

(declare-datatypes ((Unit!11995 0))(
  ( (Unit!11996) )
))
(declare-fun lt!186128 () Unit!11995)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!269 (array!23305 array!23303 (_ BitVec 32) (_ BitVec 32) V!14053 V!14053 (_ BitVec 32) (_ BitVec 64) V!14053 (_ BitVec 32) Int) Unit!11995)

(assert (=> b!393188 (= lt!186128 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!269 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!974 (array!23305 array!23303 (_ BitVec 32) (_ BitVec 32) V!14053 V!14053 (_ BitVec 32) Int) ListLongMap!5473)

(assert (=> b!393188 (= lt!186124 (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393188 (= lt!186130 (array!23304 (store (arr!11107 _values!506) i!548 (ValueCellFull!4512 v!373)) (size!11459 _values!506)))))

(assert (=> b!393188 (= lt!186131 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393189 () Bool)

(declare-fun res!225341 () Bool)

(assert (=> b!393189 (=> (not res!225341) (not e!238066))))

(declare-fun arrayContainsKey!0 (array!23305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393189 (= res!225341 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!393190 () Bool)

(declare-fun res!225340 () Bool)

(assert (=> b!393190 (=> (not res!225340) (not e!238070))))

(assert (=> b!393190 (= res!225340 (arrayNoDuplicates!0 lt!186126 #b00000000000000000000000000000000 Nil!6425))))

(declare-fun b!393185 () Bool)

(declare-fun res!225336 () Bool)

(assert (=> b!393185 (=> (not res!225336) (not e!238066))))

(assert (=> b!393185 (= res!225336 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11460 _keys!658))))))

(declare-fun res!225345 () Bool)

(assert (=> start!38166 (=> (not res!225345) (not e!238066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38166 (= res!225345 (validMask!0 mask!970))))

(assert (=> start!38166 e!238066))

(declare-fun e!238069 () Bool)

(declare-fun array_inv!8142 (array!23303) Bool)

(assert (=> start!38166 (and (array_inv!8142 _values!506) e!238069)))

(assert (=> start!38166 tp!31899))

(assert (=> start!38166 true))

(assert (=> start!38166 tp_is_empty!9711))

(declare-fun array_inv!8143 (array!23305) Bool)

(assert (=> start!38166 (array_inv!8143 _keys!658)))

(declare-fun b!393191 () Bool)

(declare-fun res!225338 () Bool)

(assert (=> b!393191 (=> (not res!225338) (not e!238066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393191 (= res!225338 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!16161 () Bool)

(declare-fun mapRes!16161 () Bool)

(assert (=> mapIsEmpty!16161 mapRes!16161))

(declare-fun b!393192 () Bool)

(declare-fun res!225343 () Bool)

(assert (=> b!393192 (=> (not res!225343) (not e!238066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23305 (_ BitVec 32)) Bool)

(assert (=> b!393192 (= res!225343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393193 () Bool)

(declare-fun e!238065 () Bool)

(assert (=> b!393193 (= e!238065 tp_is_empty!9711)))

(declare-fun mapNonEmpty!16161 () Bool)

(declare-fun tp!31898 () Bool)

(assert (=> mapNonEmpty!16161 (= mapRes!16161 (and tp!31898 e!238065))))

(declare-fun mapValue!16161 () ValueCell!4512)

(declare-fun mapKey!16161 () (_ BitVec 32))

(declare-fun mapRest!16161 () (Array (_ BitVec 32) ValueCell!4512))

(assert (=> mapNonEmpty!16161 (= (arr!11107 _values!506) (store mapRest!16161 mapKey!16161 mapValue!16161))))

(declare-fun b!393194 () Bool)

(assert (=> b!393194 (= e!238069 (and e!238067 mapRes!16161))))

(declare-fun condMapEmpty!16161 () Bool)

(declare-fun mapDefault!16161 () ValueCell!4512)

(assert (=> b!393194 (= condMapEmpty!16161 (= (arr!11107 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4512)) mapDefault!16161)))))

(declare-fun b!393195 () Bool)

(assert (=> b!393195 (= e!238066 e!238070)))

(declare-fun res!225337 () Bool)

(assert (=> b!393195 (=> (not res!225337) (not e!238070))))

(assert (=> b!393195 (= res!225337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186126 mask!970))))

(assert (=> b!393195 (= lt!186126 (array!23306 (store (arr!11108 _keys!658) i!548 k0!778) (size!11460 _keys!658)))))

(declare-fun b!393196 () Bool)

(declare-fun res!225339 () Bool)

(assert (=> b!393196 (=> (not res!225339) (not e!238066))))

(assert (=> b!393196 (= res!225339 (or (= (select (arr!11108 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11108 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!38166 res!225345) b!393184))

(assert (= (and b!393184 res!225342) b!393192))

(assert (= (and b!393192 res!225343) b!393187))

(assert (= (and b!393187 res!225344) b!393185))

(assert (= (and b!393185 res!225336) b!393191))

(assert (= (and b!393191 res!225338) b!393196))

(assert (= (and b!393196 res!225339) b!393189))

(assert (= (and b!393189 res!225341) b!393195))

(assert (= (and b!393195 res!225337) b!393190))

(assert (= (and b!393190 res!225340) b!393188))

(assert (= (and b!393194 condMapEmpty!16161) mapIsEmpty!16161))

(assert (= (and b!393194 (not condMapEmpty!16161)) mapNonEmpty!16161))

(get-info :version)

(assert (= (and mapNonEmpty!16161 ((_ is ValueCellFull!4512) mapValue!16161)) b!393193))

(assert (= (and b!393194 ((_ is ValueCellFull!4512) mapDefault!16161)) b!393186))

(assert (= start!38166 b!393194))

(declare-fun m!389697 () Bool)

(assert (=> b!393192 m!389697))

(declare-fun m!389699 () Bool)

(assert (=> b!393187 m!389699))

(declare-fun m!389701 () Bool)

(assert (=> start!38166 m!389701))

(declare-fun m!389703 () Bool)

(assert (=> start!38166 m!389703))

(declare-fun m!389705 () Bool)

(assert (=> start!38166 m!389705))

(declare-fun m!389707 () Bool)

(assert (=> b!393188 m!389707))

(declare-fun m!389709 () Bool)

(assert (=> b!393188 m!389709))

(declare-fun m!389711 () Bool)

(assert (=> b!393188 m!389711))

(declare-fun m!389713 () Bool)

(assert (=> b!393188 m!389713))

(declare-fun m!389715 () Bool)

(assert (=> b!393188 m!389715))

(declare-fun m!389717 () Bool)

(assert (=> b!393188 m!389717))

(declare-fun m!389719 () Bool)

(assert (=> b!393188 m!389719))

(declare-fun m!389721 () Bool)

(assert (=> b!393189 m!389721))

(declare-fun m!389723 () Bool)

(assert (=> b!393196 m!389723))

(declare-fun m!389725 () Bool)

(assert (=> b!393190 m!389725))

(declare-fun m!389727 () Bool)

(assert (=> mapNonEmpty!16161 m!389727))

(declare-fun m!389729 () Bool)

(assert (=> b!393191 m!389729))

(declare-fun m!389731 () Bool)

(assert (=> b!393195 m!389731))

(declare-fun m!389733 () Bool)

(assert (=> b!393195 m!389733))

(check-sat (not b!393189) (not b!393191) (not b!393187) b_and!16419 (not mapNonEmpty!16161) (not b_next!9039) (not b!393188) (not b!393192) tp_is_empty!9711 (not b!393195) (not start!38166) (not b!393190))
(check-sat b_and!16419 (not b_next!9039))
(get-model)

(declare-fun b!393244 () Bool)

(declare-fun e!238096 () Bool)

(declare-fun e!238095 () Bool)

(assert (=> b!393244 (= e!238096 e!238095)))

(declare-fun c!54362 () Bool)

(assert (=> b!393244 (= c!54362 (validKeyInArray!0 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393245 () Bool)

(declare-fun e!238097 () Bool)

(assert (=> b!393245 (= e!238095 e!238097)))

(declare-fun lt!186166 () (_ BitVec 64))

(assert (=> b!393245 (= lt!186166 (select (arr!11108 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!186165 () Unit!11995)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23305 (_ BitVec 64) (_ BitVec 32)) Unit!11995)

(assert (=> b!393245 (= lt!186165 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!186166 #b00000000000000000000000000000000))))

(assert (=> b!393245 (arrayContainsKey!0 _keys!658 lt!186166 #b00000000000000000000000000000000)))

(declare-fun lt!186167 () Unit!11995)

(assert (=> b!393245 (= lt!186167 lt!186165)))

(declare-fun res!225380 () Bool)

(declare-datatypes ((SeekEntryResult!3506 0))(
  ( (MissingZero!3506 (index!16203 (_ BitVec 32))) (Found!3506 (index!16204 (_ BitVec 32))) (Intermediate!3506 (undefined!4318 Bool) (index!16205 (_ BitVec 32)) (x!38460 (_ BitVec 32))) (Undefined!3506) (MissingVacant!3506 (index!16206 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23305 (_ BitVec 32)) SeekEntryResult!3506)

(assert (=> b!393245 (= res!225380 (= (seekEntryOrOpen!0 (select (arr!11108 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3506 #b00000000000000000000000000000000)))))

(assert (=> b!393245 (=> (not res!225380) (not e!238097))))

(declare-fun b!393246 () Bool)

(declare-fun call!27768 () Bool)

(assert (=> b!393246 (= e!238095 call!27768)))

(declare-fun d!73081 () Bool)

(declare-fun res!225381 () Bool)

(assert (=> d!73081 (=> res!225381 e!238096)))

(assert (=> d!73081 (= res!225381 (bvsge #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(assert (=> d!73081 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!238096)))

(declare-fun bm!27765 () Bool)

(assert (=> bm!27765 (= call!27768 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!393247 () Bool)

(assert (=> b!393247 (= e!238097 call!27768)))

(assert (= (and d!73081 (not res!225381)) b!393244))

(assert (= (and b!393244 c!54362) b!393245))

(assert (= (and b!393244 (not c!54362)) b!393246))

(assert (= (and b!393245 res!225380) b!393247))

(assert (= (or b!393247 b!393246) bm!27765))

(declare-fun m!389773 () Bool)

(assert (=> b!393244 m!389773))

(assert (=> b!393244 m!389773))

(declare-fun m!389775 () Bool)

(assert (=> b!393244 m!389775))

(assert (=> b!393245 m!389773))

(declare-fun m!389777 () Bool)

(assert (=> b!393245 m!389777))

(declare-fun m!389779 () Bool)

(assert (=> b!393245 m!389779))

(assert (=> b!393245 m!389773))

(declare-fun m!389781 () Bool)

(assert (=> b!393245 m!389781))

(declare-fun m!389783 () Bool)

(assert (=> bm!27765 m!389783))

(assert (=> b!393192 d!73081))

(declare-fun b!393258 () Bool)

(declare-fun e!238108 () Bool)

(declare-fun e!238107 () Bool)

(assert (=> b!393258 (= e!238108 e!238107)))

(declare-fun res!225390 () Bool)

(assert (=> b!393258 (=> (not res!225390) (not e!238107))))

(declare-fun e!238109 () Bool)

(assert (=> b!393258 (= res!225390 (not e!238109))))

(declare-fun res!225388 () Bool)

(assert (=> b!393258 (=> (not res!225388) (not e!238109))))

(assert (=> b!393258 (= res!225388 (validKeyInArray!0 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27768 () Bool)

(declare-fun call!27771 () Bool)

(declare-fun c!54365 () Bool)

(assert (=> bm!27768 (= call!27771 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54365 (Cons!6424 (select (arr!11108 _keys!658) #b00000000000000000000000000000000) Nil!6425) Nil!6425)))))

(declare-fun d!73083 () Bool)

(declare-fun res!225389 () Bool)

(assert (=> d!73083 (=> res!225389 e!238108)))

(assert (=> d!73083 (= res!225389 (bvsge #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(assert (=> d!73083 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6425) e!238108)))

(declare-fun b!393259 () Bool)

(declare-fun e!238106 () Bool)

(assert (=> b!393259 (= e!238106 call!27771)))

(declare-fun b!393260 () Bool)

(assert (=> b!393260 (= e!238107 e!238106)))

(assert (=> b!393260 (= c!54365 (validKeyInArray!0 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393261 () Bool)

(declare-fun contains!2471 (List!6428 (_ BitVec 64)) Bool)

(assert (=> b!393261 (= e!238109 (contains!2471 Nil!6425 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393262 () Bool)

(assert (=> b!393262 (= e!238106 call!27771)))

(assert (= (and d!73083 (not res!225389)) b!393258))

(assert (= (and b!393258 res!225388) b!393261))

(assert (= (and b!393258 res!225390) b!393260))

(assert (= (and b!393260 c!54365) b!393259))

(assert (= (and b!393260 (not c!54365)) b!393262))

(assert (= (or b!393259 b!393262) bm!27768))

(assert (=> b!393258 m!389773))

(assert (=> b!393258 m!389773))

(assert (=> b!393258 m!389775))

(assert (=> bm!27768 m!389773))

(declare-fun m!389785 () Bool)

(assert (=> bm!27768 m!389785))

(assert (=> b!393260 m!389773))

(assert (=> b!393260 m!389773))

(assert (=> b!393260 m!389775))

(assert (=> b!393261 m!389773))

(assert (=> b!393261 m!389773))

(declare-fun m!389787 () Bool)

(assert (=> b!393261 m!389787))

(assert (=> b!393187 d!73083))

(declare-fun d!73085 () Bool)

(declare-fun res!225395 () Bool)

(declare-fun e!238114 () Bool)

(assert (=> d!73085 (=> res!225395 e!238114)))

(assert (=> d!73085 (= res!225395 (= (select (arr!11108 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!73085 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!238114)))

(declare-fun b!393267 () Bool)

(declare-fun e!238115 () Bool)

(assert (=> b!393267 (= e!238114 e!238115)))

(declare-fun res!225396 () Bool)

(assert (=> b!393267 (=> (not res!225396) (not e!238115))))

(assert (=> b!393267 (= res!225396 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11460 _keys!658)))))

(declare-fun b!393268 () Bool)

(assert (=> b!393268 (= e!238115 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!73085 (not res!225395)) b!393267))

(assert (= (and b!393267 res!225396) b!393268))

(assert (=> d!73085 m!389773))

(declare-fun m!389789 () Bool)

(assert (=> b!393268 m!389789))

(assert (=> b!393189 d!73085))

(declare-fun b!393311 () Bool)

(declare-fun e!238145 () Bool)

(declare-fun e!238142 () Bool)

(assert (=> b!393311 (= e!238145 e!238142)))

(declare-fun res!225420 () Bool)

(assert (=> b!393311 (=> (not res!225420) (not e!238142))))

(declare-fun lt!186219 () ListLongMap!5473)

(declare-fun contains!2472 (ListLongMap!5473 (_ BitVec 64)) Bool)

(assert (=> b!393311 (= res!225420 (contains!2472 lt!186219 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(assert (=> b!393311 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(declare-fun bm!27783 () Bool)

(declare-fun call!27792 () Bool)

(assert (=> bm!27783 (= call!27792 (contains!2472 lt!186219 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27784 () Bool)

(declare-fun call!27789 () ListLongMap!5473)

(declare-fun call!27790 () ListLongMap!5473)

(assert (=> bm!27784 (= call!27789 call!27790)))

(declare-fun b!393312 () Bool)

(declare-fun e!238154 () Bool)

(declare-fun call!27787 () Bool)

(assert (=> b!393312 (= e!238154 (not call!27787))))

(declare-fun bm!27785 () Bool)

(declare-fun call!27788 () ListLongMap!5473)

(declare-fun call!27791 () ListLongMap!5473)

(assert (=> bm!27785 (= call!27788 call!27791)))

(declare-fun bm!27786 () Bool)

(assert (=> bm!27786 (= call!27787 (contains!2472 lt!186219 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!393314 () Bool)

(declare-fun apply!307 (ListLongMap!5473 (_ BitVec 64)) V!14053)

(declare-fun get!5618 (ValueCell!4512 V!14053) V!14053)

(declare-fun dynLambda!645 (Int (_ BitVec 64)) V!14053)

(assert (=> b!393314 (= e!238142 (= (apply!307 lt!186219 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)) (get!5618 (select (arr!11107 lt!186130) #b00000000000000000000000000000000) (dynLambda!645 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!393314 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11459 lt!186130)))))

(assert (=> b!393314 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(declare-fun b!393315 () Bool)

(declare-fun c!54382 () Bool)

(assert (=> b!393315 (= c!54382 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!238146 () ListLongMap!5473)

(declare-fun e!238143 () ListLongMap!5473)

(assert (=> b!393315 (= e!238146 e!238143)))

(declare-fun bm!27787 () Bool)

(declare-fun call!27786 () ListLongMap!5473)

(assert (=> bm!27787 (= call!27786 call!27789)))

(declare-fun bm!27788 () Bool)

(assert (=> bm!27788 (= call!27790 (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393316 () Bool)

(declare-fun e!238144 () ListLongMap!5473)

(assert (=> b!393316 (= e!238144 (+!1050 call!27791 (tuple2!6547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!393317 () Bool)

(assert (=> b!393317 (= e!238143 call!27788)))

(declare-fun bm!27789 () Bool)

(declare-fun c!54380 () Bool)

(declare-fun c!54383 () Bool)

(assert (=> bm!27789 (= call!27791 (+!1050 (ite c!54380 call!27790 (ite c!54383 call!27789 call!27786)) (ite (or c!54380 c!54383) (tuple2!6547 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!393318 () Bool)

(assert (=> b!393318 (= e!238146 call!27788)))

(declare-fun b!393319 () Bool)

(assert (=> b!393319 (= e!238144 e!238146)))

(assert (=> b!393319 (= c!54383 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!393320 () Bool)

(assert (=> b!393320 (= e!238143 call!27786)))

(declare-fun b!393321 () Bool)

(declare-fun e!238151 () Bool)

(declare-fun e!238149 () Bool)

(assert (=> b!393321 (= e!238151 e!238149)))

(declare-fun res!225415 () Bool)

(assert (=> b!393321 (= res!225415 call!27792)))

(assert (=> b!393321 (=> (not res!225415) (not e!238149))))

(declare-fun b!393322 () Bool)

(declare-fun e!238148 () Bool)

(assert (=> b!393322 (= e!238148 (validKeyInArray!0 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(declare-fun b!393323 () Bool)

(assert (=> b!393323 (= e!238151 (not call!27792))))

(declare-fun b!393324 () Bool)

(declare-fun e!238152 () Bool)

(assert (=> b!393324 (= e!238152 (= (apply!307 lt!186219 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!393325 () Bool)

(declare-fun res!225416 () Bool)

(declare-fun e!238150 () Bool)

(assert (=> b!393325 (=> (not res!225416) (not e!238150))))

(assert (=> b!393325 (= res!225416 e!238145)))

(declare-fun res!225421 () Bool)

(assert (=> b!393325 (=> res!225421 e!238145)))

(declare-fun e!238147 () Bool)

(assert (=> b!393325 (= res!225421 (not e!238147))))

(declare-fun res!225423 () Bool)

(assert (=> b!393325 (=> (not res!225423) (not e!238147))))

(assert (=> b!393325 (= res!225423 (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(declare-fun b!393326 () Bool)

(declare-fun e!238153 () Unit!11995)

(declare-fun lt!186223 () Unit!11995)

(assert (=> b!393326 (= e!238153 lt!186223)))

(declare-fun lt!186213 () ListLongMap!5473)

(assert (=> b!393326 (= lt!186213 (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186212 () (_ BitVec 64))

(assert (=> b!393326 (= lt!186212 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186221 () (_ BitVec 64))

(assert (=> b!393326 (= lt!186221 (select (arr!11108 lt!186126) #b00000000000000000000000000000000))))

(declare-fun lt!186222 () Unit!11995)

(declare-fun addStillContains!283 (ListLongMap!5473 (_ BitVec 64) V!14053 (_ BitVec 64)) Unit!11995)

(assert (=> b!393326 (= lt!186222 (addStillContains!283 lt!186213 lt!186212 zeroValue!472 lt!186221))))

(assert (=> b!393326 (contains!2472 (+!1050 lt!186213 (tuple2!6547 lt!186212 zeroValue!472)) lt!186221)))

(declare-fun lt!186232 () Unit!11995)

(assert (=> b!393326 (= lt!186232 lt!186222)))

(declare-fun lt!186229 () ListLongMap!5473)

(assert (=> b!393326 (= lt!186229 (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186224 () (_ BitVec 64))

(assert (=> b!393326 (= lt!186224 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186227 () (_ BitVec 64))

(assert (=> b!393326 (= lt!186227 (select (arr!11108 lt!186126) #b00000000000000000000000000000000))))

(declare-fun lt!186215 () Unit!11995)

(declare-fun addApplyDifferent!283 (ListLongMap!5473 (_ BitVec 64) V!14053 (_ BitVec 64)) Unit!11995)

(assert (=> b!393326 (= lt!186215 (addApplyDifferent!283 lt!186229 lt!186224 minValue!472 lt!186227))))

(assert (=> b!393326 (= (apply!307 (+!1050 lt!186229 (tuple2!6547 lt!186224 minValue!472)) lt!186227) (apply!307 lt!186229 lt!186227))))

(declare-fun lt!186225 () Unit!11995)

(assert (=> b!393326 (= lt!186225 lt!186215)))

(declare-fun lt!186220 () ListLongMap!5473)

(assert (=> b!393326 (= lt!186220 (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186233 () (_ BitVec 64))

(assert (=> b!393326 (= lt!186233 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186230 () (_ BitVec 64))

(assert (=> b!393326 (= lt!186230 (select (arr!11108 lt!186126) #b00000000000000000000000000000000))))

(declare-fun lt!186217 () Unit!11995)

(assert (=> b!393326 (= lt!186217 (addApplyDifferent!283 lt!186220 lt!186233 zeroValue!472 lt!186230))))

(assert (=> b!393326 (= (apply!307 (+!1050 lt!186220 (tuple2!6547 lt!186233 zeroValue!472)) lt!186230) (apply!307 lt!186220 lt!186230))))

(declare-fun lt!186231 () Unit!11995)

(assert (=> b!393326 (= lt!186231 lt!186217)))

(declare-fun lt!186218 () ListLongMap!5473)

(assert (=> b!393326 (= lt!186218 (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186216 () (_ BitVec 64))

(assert (=> b!393326 (= lt!186216 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186228 () (_ BitVec 64))

(assert (=> b!393326 (= lt!186228 (select (arr!11108 lt!186126) #b00000000000000000000000000000000))))

(assert (=> b!393326 (= lt!186223 (addApplyDifferent!283 lt!186218 lt!186216 minValue!472 lt!186228))))

(assert (=> b!393326 (= (apply!307 (+!1050 lt!186218 (tuple2!6547 lt!186216 minValue!472)) lt!186228) (apply!307 lt!186218 lt!186228))))

(declare-fun b!393327 () Bool)

(declare-fun res!225418 () Bool)

(assert (=> b!393327 (=> (not res!225418) (not e!238150))))

(assert (=> b!393327 (= res!225418 e!238154)))

(declare-fun c!54378 () Bool)

(assert (=> b!393327 (= c!54378 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!393313 () Bool)

(assert (=> b!393313 (= e!238149 (= (apply!307 lt!186219 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun d!73087 () Bool)

(assert (=> d!73087 e!238150))

(declare-fun res!225417 () Bool)

(assert (=> d!73087 (=> (not res!225417) (not e!238150))))

(assert (=> d!73087 (= res!225417 (or (bvsge #b00000000000000000000000000000000 (size!11460 lt!186126)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))))

(declare-fun lt!186214 () ListLongMap!5473)

(assert (=> d!73087 (= lt!186219 lt!186214)))

(declare-fun lt!186226 () Unit!11995)

(assert (=> d!73087 (= lt!186226 e!238153)))

(declare-fun c!54379 () Bool)

(assert (=> d!73087 (= c!54379 e!238148)))

(declare-fun res!225419 () Bool)

(assert (=> d!73087 (=> (not res!225419) (not e!238148))))

(assert (=> d!73087 (= res!225419 (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(assert (=> d!73087 (= lt!186214 e!238144)))

(assert (=> d!73087 (= c!54380 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!73087 (validMask!0 mask!970)))

(assert (=> d!73087 (= (getCurrentListMap!2112 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!186219)))

(declare-fun b!393328 () Bool)

(assert (=> b!393328 (= e!238154 e!238152)))

(declare-fun res!225422 () Bool)

(assert (=> b!393328 (= res!225422 call!27787)))

(assert (=> b!393328 (=> (not res!225422) (not e!238152))))

(declare-fun b!393329 () Bool)

(declare-fun Unit!11999 () Unit!11995)

(assert (=> b!393329 (= e!238153 Unit!11999)))

(declare-fun b!393330 () Bool)

(assert (=> b!393330 (= e!238150 e!238151)))

(declare-fun c!54381 () Bool)

(assert (=> b!393330 (= c!54381 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!393331 () Bool)

(assert (=> b!393331 (= e!238147 (validKeyInArray!0 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(assert (= (and d!73087 c!54380) b!393316))

(assert (= (and d!73087 (not c!54380)) b!393319))

(assert (= (and b!393319 c!54383) b!393318))

(assert (= (and b!393319 (not c!54383)) b!393315))

(assert (= (and b!393315 c!54382) b!393317))

(assert (= (and b!393315 (not c!54382)) b!393320))

(assert (= (or b!393317 b!393320) bm!27787))

(assert (= (or b!393318 bm!27787) bm!27784))

(assert (= (or b!393318 b!393317) bm!27785))

(assert (= (or b!393316 bm!27784) bm!27788))

(assert (= (or b!393316 bm!27785) bm!27789))

(assert (= (and d!73087 res!225419) b!393322))

(assert (= (and d!73087 c!54379) b!393326))

(assert (= (and d!73087 (not c!54379)) b!393329))

(assert (= (and d!73087 res!225417) b!393325))

(assert (= (and b!393325 res!225423) b!393331))

(assert (= (and b!393325 (not res!225421)) b!393311))

(assert (= (and b!393311 res!225420) b!393314))

(assert (= (and b!393325 res!225416) b!393327))

(assert (= (and b!393327 c!54378) b!393328))

(assert (= (and b!393327 (not c!54378)) b!393312))

(assert (= (and b!393328 res!225422) b!393324))

(assert (= (or b!393328 b!393312) bm!27786))

(assert (= (and b!393327 res!225418) b!393330))

(assert (= (and b!393330 c!54381) b!393321))

(assert (= (and b!393330 (not c!54381)) b!393323))

(assert (= (and b!393321 res!225415) b!393313))

(assert (= (or b!393321 b!393323) bm!27783))

(declare-fun b_lambda!8797 () Bool)

(assert (=> (not b_lambda!8797) (not b!393314)))

(declare-fun t!11611 () Bool)

(declare-fun tb!3137 () Bool)

(assert (=> (and start!38166 (= defaultEntry!514 defaultEntry!514) t!11611) tb!3137))

(declare-fun result!5775 () Bool)

(assert (=> tb!3137 (= result!5775 tp_is_empty!9711)))

(assert (=> b!393314 t!11611))

(declare-fun b_and!16423 () Bool)

(assert (= b_and!16419 (and (=> t!11611 result!5775) b_and!16423)))

(assert (=> bm!27788 m!389719))

(declare-fun m!389791 () Bool)

(assert (=> b!393311 m!389791))

(assert (=> b!393311 m!389791))

(declare-fun m!389793 () Bool)

(assert (=> b!393311 m!389793))

(declare-fun m!389795 () Bool)

(assert (=> b!393324 m!389795))

(declare-fun m!389797 () Bool)

(assert (=> b!393314 m!389797))

(declare-fun m!389799 () Bool)

(assert (=> b!393314 m!389799))

(assert (=> b!393314 m!389791))

(assert (=> b!393314 m!389791))

(declare-fun m!389801 () Bool)

(assert (=> b!393314 m!389801))

(assert (=> b!393314 m!389799))

(assert (=> b!393314 m!389797))

(declare-fun m!389803 () Bool)

(assert (=> b!393314 m!389803))

(declare-fun m!389805 () Bool)

(assert (=> bm!27786 m!389805))

(declare-fun m!389807 () Bool)

(assert (=> b!393326 m!389807))

(declare-fun m!389809 () Bool)

(assert (=> b!393326 m!389809))

(declare-fun m!389811 () Bool)

(assert (=> b!393326 m!389811))

(declare-fun m!389813 () Bool)

(assert (=> b!393326 m!389813))

(declare-fun m!389815 () Bool)

(assert (=> b!393326 m!389815))

(declare-fun m!389817 () Bool)

(assert (=> b!393326 m!389817))

(assert (=> b!393326 m!389807))

(declare-fun m!389819 () Bool)

(assert (=> b!393326 m!389819))

(declare-fun m!389821 () Bool)

(assert (=> b!393326 m!389821))

(declare-fun m!389823 () Bool)

(assert (=> b!393326 m!389823))

(declare-fun m!389825 () Bool)

(assert (=> b!393326 m!389825))

(assert (=> b!393326 m!389719))

(declare-fun m!389827 () Bool)

(assert (=> b!393326 m!389827))

(assert (=> b!393326 m!389819))

(declare-fun m!389829 () Bool)

(assert (=> b!393326 m!389829))

(assert (=> b!393326 m!389815))

(declare-fun m!389831 () Bool)

(assert (=> b!393326 m!389831))

(assert (=> b!393326 m!389791))

(declare-fun m!389833 () Bool)

(assert (=> b!393326 m!389833))

(assert (=> b!393326 m!389825))

(declare-fun m!389835 () Bool)

(assert (=> b!393326 m!389835))

(assert (=> b!393322 m!389791))

(assert (=> b!393322 m!389791))

(declare-fun m!389837 () Bool)

(assert (=> b!393322 m!389837))

(declare-fun m!389839 () Bool)

(assert (=> b!393316 m!389839))

(declare-fun m!389841 () Bool)

(assert (=> bm!27789 m!389841))

(assert (=> d!73087 m!389701))

(declare-fun m!389843 () Bool)

(assert (=> b!393313 m!389843))

(declare-fun m!389845 () Bool)

(assert (=> bm!27783 m!389845))

(assert (=> b!393331 m!389791))

(assert (=> b!393331 m!389791))

(assert (=> b!393331 m!389837))

(assert (=> b!393188 d!73087))

(declare-fun bm!27792 () Bool)

(declare-fun call!27795 () ListLongMap!5473)

(assert (=> bm!27792 (= call!27795 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!393358 () Bool)

(assert (=> b!393358 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(assert (=> b!393358 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11459 _values!506)))))

(declare-fun lt!186252 () ListLongMap!5473)

(declare-fun e!238173 () Bool)

(assert (=> b!393358 (= e!238173 (= (apply!307 lt!186252 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)) (get!5618 (select (arr!11107 _values!506) #b00000000000000000000000000000000) (dynLambda!645 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!393359 () Bool)

(declare-fun res!225435 () Bool)

(declare-fun e!238170 () Bool)

(assert (=> b!393359 (=> (not res!225435) (not e!238170))))

(assert (=> b!393359 (= res!225435 (not (contains!2472 lt!186252 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393360 () Bool)

(declare-fun lt!186248 () Unit!11995)

(declare-fun lt!186251 () Unit!11995)

(assert (=> b!393360 (= lt!186248 lt!186251)))

(declare-fun lt!186250 () (_ BitVec 64))

(declare-fun lt!186254 () (_ BitVec 64))

(declare-fun lt!186249 () V!14053)

(declare-fun lt!186253 () ListLongMap!5473)

(assert (=> b!393360 (not (contains!2472 (+!1050 lt!186253 (tuple2!6547 lt!186254 lt!186249)) lt!186250))))

(declare-fun addStillNotContains!142 (ListLongMap!5473 (_ BitVec 64) V!14053 (_ BitVec 64)) Unit!11995)

(assert (=> b!393360 (= lt!186251 (addStillNotContains!142 lt!186253 lt!186254 lt!186249 lt!186250))))

(assert (=> b!393360 (= lt!186250 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!393360 (= lt!186249 (get!5618 (select (arr!11107 _values!506) #b00000000000000000000000000000000) (dynLambda!645 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!393360 (= lt!186254 (select (arr!11108 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!393360 (= lt!186253 call!27795)))

(declare-fun e!238171 () ListLongMap!5473)

(assert (=> b!393360 (= e!238171 (+!1050 call!27795 (tuple2!6547 (select (arr!11108 _keys!658) #b00000000000000000000000000000000) (get!5618 (select (arr!11107 _values!506) #b00000000000000000000000000000000) (dynLambda!645 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!393361 () Bool)

(declare-fun e!238169 () Bool)

(assert (=> b!393361 (= e!238169 (validKeyInArray!0 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!393361 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!393362 () Bool)

(declare-fun e!238175 () ListLongMap!5473)

(assert (=> b!393362 (= e!238175 e!238171)))

(declare-fun c!54393 () Bool)

(assert (=> b!393362 (= c!54393 (validKeyInArray!0 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393363 () Bool)

(assert (=> b!393363 (= e!238171 call!27795)))

(declare-fun b!393364 () Bool)

(declare-fun e!238172 () Bool)

(assert (=> b!393364 (= e!238172 (= lt!186252 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun d!73089 () Bool)

(assert (=> d!73089 e!238170))

(declare-fun res!225432 () Bool)

(assert (=> d!73089 (=> (not res!225432) (not e!238170))))

(assert (=> d!73089 (= res!225432 (not (contains!2472 lt!186252 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73089 (= lt!186252 e!238175)))

(declare-fun c!54392 () Bool)

(assert (=> d!73089 (= c!54392 (bvsge #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(assert (=> d!73089 (validMask!0 mask!970)))

(assert (=> d!73089 (= (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!186252)))

(declare-fun b!393365 () Bool)

(declare-fun e!238174 () Bool)

(assert (=> b!393365 (= e!238174 e!238173)))

(assert (=> b!393365 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(declare-fun res!225433 () Bool)

(assert (=> b!393365 (= res!225433 (contains!2472 lt!186252 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!393365 (=> (not res!225433) (not e!238173))))

(declare-fun b!393366 () Bool)

(declare-fun isEmpty!558 (ListLongMap!5473) Bool)

(assert (=> b!393366 (= e!238172 (isEmpty!558 lt!186252))))

(declare-fun b!393367 () Bool)

(assert (=> b!393367 (= e!238174 e!238172)))

(declare-fun c!54394 () Bool)

(assert (=> b!393367 (= c!54394 (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(declare-fun b!393368 () Bool)

(assert (=> b!393368 (= e!238170 e!238174)))

(declare-fun c!54395 () Bool)

(assert (=> b!393368 (= c!54395 e!238169)))

(declare-fun res!225434 () Bool)

(assert (=> b!393368 (=> (not res!225434) (not e!238169))))

(assert (=> b!393368 (= res!225434 (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(declare-fun b!393369 () Bool)

(assert (=> b!393369 (= e!238175 (ListLongMap!5474 Nil!6426))))

(assert (= (and d!73089 c!54392) b!393369))

(assert (= (and d!73089 (not c!54392)) b!393362))

(assert (= (and b!393362 c!54393) b!393360))

(assert (= (and b!393362 (not c!54393)) b!393363))

(assert (= (or b!393360 b!393363) bm!27792))

(assert (= (and d!73089 res!225432) b!393359))

(assert (= (and b!393359 res!225435) b!393368))

(assert (= (and b!393368 res!225434) b!393361))

(assert (= (and b!393368 c!54395) b!393365))

(assert (= (and b!393368 (not c!54395)) b!393367))

(assert (= (and b!393365 res!225433) b!393358))

(assert (= (and b!393367 c!54394) b!393364))

(assert (= (and b!393367 (not c!54394)) b!393366))

(declare-fun b_lambda!8799 () Bool)

(assert (=> (not b_lambda!8799) (not b!393358)))

(assert (=> b!393358 t!11611))

(declare-fun b_and!16425 () Bool)

(assert (= b_and!16423 (and (=> t!11611 result!5775) b_and!16425)))

(declare-fun b_lambda!8801 () Bool)

(assert (=> (not b_lambda!8801) (not b!393360)))

(assert (=> b!393360 t!11611))

(declare-fun b_and!16427 () Bool)

(assert (= b_and!16425 (and (=> t!11611 result!5775) b_and!16427)))

(declare-fun m!389847 () Bool)

(assert (=> d!73089 m!389847))

(assert (=> d!73089 m!389701))

(assert (=> b!393365 m!389773))

(assert (=> b!393365 m!389773))

(declare-fun m!389849 () Bool)

(assert (=> b!393365 m!389849))

(declare-fun m!389851 () Bool)

(assert (=> bm!27792 m!389851))

(assert (=> b!393361 m!389773))

(assert (=> b!393361 m!389773))

(assert (=> b!393361 m!389775))

(assert (=> b!393364 m!389851))

(assert (=> b!393362 m!389773))

(assert (=> b!393362 m!389773))

(assert (=> b!393362 m!389775))

(declare-fun m!389853 () Bool)

(assert (=> b!393360 m!389853))

(declare-fun m!389855 () Bool)

(assert (=> b!393360 m!389855))

(declare-fun m!389857 () Bool)

(assert (=> b!393360 m!389857))

(declare-fun m!389859 () Bool)

(assert (=> b!393360 m!389859))

(assert (=> b!393360 m!389857))

(assert (=> b!393360 m!389797))

(assert (=> b!393360 m!389853))

(assert (=> b!393360 m!389797))

(declare-fun m!389861 () Bool)

(assert (=> b!393360 m!389861))

(assert (=> b!393360 m!389773))

(declare-fun m!389863 () Bool)

(assert (=> b!393360 m!389863))

(assert (=> b!393358 m!389773))

(declare-fun m!389865 () Bool)

(assert (=> b!393358 m!389865))

(assert (=> b!393358 m!389853))

(assert (=> b!393358 m!389773))

(assert (=> b!393358 m!389797))

(assert (=> b!393358 m!389853))

(assert (=> b!393358 m!389797))

(assert (=> b!393358 m!389861))

(declare-fun m!389867 () Bool)

(assert (=> b!393359 m!389867))

(declare-fun m!389869 () Bool)

(assert (=> b!393366 m!389869))

(assert (=> b!393188 d!73089))

(declare-fun b!393370 () Bool)

(declare-fun e!238179 () Bool)

(declare-fun e!238176 () Bool)

(assert (=> b!393370 (= e!238179 e!238176)))

(declare-fun res!225441 () Bool)

(assert (=> b!393370 (=> (not res!225441) (not e!238176))))

(declare-fun lt!186262 () ListLongMap!5473)

(assert (=> b!393370 (= res!225441 (contains!2472 lt!186262 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!393370 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(declare-fun bm!27793 () Bool)

(declare-fun call!27802 () Bool)

(assert (=> bm!27793 (= call!27802 (contains!2472 lt!186262 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27794 () Bool)

(declare-fun call!27799 () ListLongMap!5473)

(declare-fun call!27800 () ListLongMap!5473)

(assert (=> bm!27794 (= call!27799 call!27800)))

(declare-fun b!393371 () Bool)

(declare-fun e!238188 () Bool)

(declare-fun call!27797 () Bool)

(assert (=> b!393371 (= e!238188 (not call!27797))))

(declare-fun bm!27795 () Bool)

(declare-fun call!27798 () ListLongMap!5473)

(declare-fun call!27801 () ListLongMap!5473)

(assert (=> bm!27795 (= call!27798 call!27801)))

(declare-fun bm!27796 () Bool)

(assert (=> bm!27796 (= call!27797 (contains!2472 lt!186262 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!393373 () Bool)

(assert (=> b!393373 (= e!238176 (= (apply!307 lt!186262 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)) (get!5618 (select (arr!11107 _values!506) #b00000000000000000000000000000000) (dynLambda!645 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!393373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11459 _values!506)))))

(assert (=> b!393373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(declare-fun b!393374 () Bool)

(declare-fun c!54400 () Bool)

(assert (=> b!393374 (= c!54400 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!238180 () ListLongMap!5473)

(declare-fun e!238177 () ListLongMap!5473)

(assert (=> b!393374 (= e!238180 e!238177)))

(declare-fun bm!27797 () Bool)

(declare-fun call!27796 () ListLongMap!5473)

(assert (=> bm!27797 (= call!27796 call!27799)))

(declare-fun bm!27798 () Bool)

(assert (=> bm!27798 (= call!27800 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393375 () Bool)

(declare-fun e!238178 () ListLongMap!5473)

(assert (=> b!393375 (= e!238178 (+!1050 call!27801 (tuple2!6547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!393376 () Bool)

(assert (=> b!393376 (= e!238177 call!27798)))

(declare-fun c!54398 () Bool)

(declare-fun bm!27799 () Bool)

(declare-fun c!54401 () Bool)

(assert (=> bm!27799 (= call!27801 (+!1050 (ite c!54398 call!27800 (ite c!54401 call!27799 call!27796)) (ite (or c!54398 c!54401) (tuple2!6547 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6547 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!393377 () Bool)

(assert (=> b!393377 (= e!238180 call!27798)))

(declare-fun b!393378 () Bool)

(assert (=> b!393378 (= e!238178 e!238180)))

(assert (=> b!393378 (= c!54401 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!393379 () Bool)

(assert (=> b!393379 (= e!238177 call!27796)))

(declare-fun b!393380 () Bool)

(declare-fun e!238185 () Bool)

(declare-fun e!238183 () Bool)

(assert (=> b!393380 (= e!238185 e!238183)))

(declare-fun res!225436 () Bool)

(assert (=> b!393380 (= res!225436 call!27802)))

(assert (=> b!393380 (=> (not res!225436) (not e!238183))))

(declare-fun b!393381 () Bool)

(declare-fun e!238182 () Bool)

(assert (=> b!393381 (= e!238182 (validKeyInArray!0 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!393382 () Bool)

(assert (=> b!393382 (= e!238185 (not call!27802))))

(declare-fun b!393383 () Bool)

(declare-fun e!238186 () Bool)

(assert (=> b!393383 (= e!238186 (= (apply!307 lt!186262 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!393384 () Bool)

(declare-fun res!225437 () Bool)

(declare-fun e!238184 () Bool)

(assert (=> b!393384 (=> (not res!225437) (not e!238184))))

(assert (=> b!393384 (= res!225437 e!238179)))

(declare-fun res!225442 () Bool)

(assert (=> b!393384 (=> res!225442 e!238179)))

(declare-fun e!238181 () Bool)

(assert (=> b!393384 (= res!225442 (not e!238181))))

(declare-fun res!225444 () Bool)

(assert (=> b!393384 (=> (not res!225444) (not e!238181))))

(assert (=> b!393384 (= res!225444 (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(declare-fun b!393385 () Bool)

(declare-fun e!238187 () Unit!11995)

(declare-fun lt!186266 () Unit!11995)

(assert (=> b!393385 (= e!238187 lt!186266)))

(declare-fun lt!186256 () ListLongMap!5473)

(assert (=> b!393385 (= lt!186256 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186255 () (_ BitVec 64))

(assert (=> b!393385 (= lt!186255 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186264 () (_ BitVec 64))

(assert (=> b!393385 (= lt!186264 (select (arr!11108 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!186265 () Unit!11995)

(assert (=> b!393385 (= lt!186265 (addStillContains!283 lt!186256 lt!186255 zeroValue!472 lt!186264))))

(assert (=> b!393385 (contains!2472 (+!1050 lt!186256 (tuple2!6547 lt!186255 zeroValue!472)) lt!186264)))

(declare-fun lt!186275 () Unit!11995)

(assert (=> b!393385 (= lt!186275 lt!186265)))

(declare-fun lt!186272 () ListLongMap!5473)

(assert (=> b!393385 (= lt!186272 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186267 () (_ BitVec 64))

(assert (=> b!393385 (= lt!186267 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186270 () (_ BitVec 64))

(assert (=> b!393385 (= lt!186270 (select (arr!11108 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!186258 () Unit!11995)

(assert (=> b!393385 (= lt!186258 (addApplyDifferent!283 lt!186272 lt!186267 minValue!472 lt!186270))))

(assert (=> b!393385 (= (apply!307 (+!1050 lt!186272 (tuple2!6547 lt!186267 minValue!472)) lt!186270) (apply!307 lt!186272 lt!186270))))

(declare-fun lt!186268 () Unit!11995)

(assert (=> b!393385 (= lt!186268 lt!186258)))

(declare-fun lt!186263 () ListLongMap!5473)

(assert (=> b!393385 (= lt!186263 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186276 () (_ BitVec 64))

(assert (=> b!393385 (= lt!186276 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186273 () (_ BitVec 64))

(assert (=> b!393385 (= lt!186273 (select (arr!11108 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!186260 () Unit!11995)

(assert (=> b!393385 (= lt!186260 (addApplyDifferent!283 lt!186263 lt!186276 zeroValue!472 lt!186273))))

(assert (=> b!393385 (= (apply!307 (+!1050 lt!186263 (tuple2!6547 lt!186276 zeroValue!472)) lt!186273) (apply!307 lt!186263 lt!186273))))

(declare-fun lt!186274 () Unit!11995)

(assert (=> b!393385 (= lt!186274 lt!186260)))

(declare-fun lt!186261 () ListLongMap!5473)

(assert (=> b!393385 (= lt!186261 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186259 () (_ BitVec 64))

(assert (=> b!393385 (= lt!186259 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!186271 () (_ BitVec 64))

(assert (=> b!393385 (= lt!186271 (select (arr!11108 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!393385 (= lt!186266 (addApplyDifferent!283 lt!186261 lt!186259 minValue!472 lt!186271))))

(assert (=> b!393385 (= (apply!307 (+!1050 lt!186261 (tuple2!6547 lt!186259 minValue!472)) lt!186271) (apply!307 lt!186261 lt!186271))))

(declare-fun b!393386 () Bool)

(declare-fun res!225439 () Bool)

(assert (=> b!393386 (=> (not res!225439) (not e!238184))))

(assert (=> b!393386 (= res!225439 e!238188)))

(declare-fun c!54396 () Bool)

(assert (=> b!393386 (= c!54396 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!393372 () Bool)

(assert (=> b!393372 (= e!238183 (= (apply!307 lt!186262 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun d!73091 () Bool)

(assert (=> d!73091 e!238184))

(declare-fun res!225438 () Bool)

(assert (=> d!73091 (=> (not res!225438) (not e!238184))))

(assert (=> d!73091 (= res!225438 (or (bvsge #b00000000000000000000000000000000 (size!11460 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))))

(declare-fun lt!186257 () ListLongMap!5473)

(assert (=> d!73091 (= lt!186262 lt!186257)))

(declare-fun lt!186269 () Unit!11995)

(assert (=> d!73091 (= lt!186269 e!238187)))

(declare-fun c!54397 () Bool)

(assert (=> d!73091 (= c!54397 e!238182)))

(declare-fun res!225440 () Bool)

(assert (=> d!73091 (=> (not res!225440) (not e!238182))))

(assert (=> d!73091 (= res!225440 (bvslt #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(assert (=> d!73091 (= lt!186257 e!238178)))

(assert (=> d!73091 (= c!54398 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!73091 (validMask!0 mask!970)))

(assert (=> d!73091 (= (getCurrentListMap!2112 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!186262)))

(declare-fun b!393387 () Bool)

(assert (=> b!393387 (= e!238188 e!238186)))

(declare-fun res!225443 () Bool)

(assert (=> b!393387 (= res!225443 call!27797)))

(assert (=> b!393387 (=> (not res!225443) (not e!238186))))

(declare-fun b!393388 () Bool)

(declare-fun Unit!12000 () Unit!11995)

(assert (=> b!393388 (= e!238187 Unit!12000)))

(declare-fun b!393389 () Bool)

(assert (=> b!393389 (= e!238184 e!238185)))

(declare-fun c!54399 () Bool)

(assert (=> b!393389 (= c!54399 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!393390 () Bool)

(assert (=> b!393390 (= e!238181 (validKeyInArray!0 (select (arr!11108 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!73091 c!54398) b!393375))

(assert (= (and d!73091 (not c!54398)) b!393378))

(assert (= (and b!393378 c!54401) b!393377))

(assert (= (and b!393378 (not c!54401)) b!393374))

(assert (= (and b!393374 c!54400) b!393376))

(assert (= (and b!393374 (not c!54400)) b!393379))

(assert (= (or b!393376 b!393379) bm!27797))

(assert (= (or b!393377 bm!27797) bm!27794))

(assert (= (or b!393377 b!393376) bm!27795))

(assert (= (or b!393375 bm!27794) bm!27798))

(assert (= (or b!393375 bm!27795) bm!27799))

(assert (= (and d!73091 res!225440) b!393381))

(assert (= (and d!73091 c!54397) b!393385))

(assert (= (and d!73091 (not c!54397)) b!393388))

(assert (= (and d!73091 res!225438) b!393384))

(assert (= (and b!393384 res!225444) b!393390))

(assert (= (and b!393384 (not res!225442)) b!393370))

(assert (= (and b!393370 res!225441) b!393373))

(assert (= (and b!393384 res!225437) b!393386))

(assert (= (and b!393386 c!54396) b!393387))

(assert (= (and b!393386 (not c!54396)) b!393371))

(assert (= (and b!393387 res!225443) b!393383))

(assert (= (or b!393387 b!393371) bm!27796))

(assert (= (and b!393386 res!225439) b!393389))

(assert (= (and b!393389 c!54399) b!393380))

(assert (= (and b!393389 (not c!54399)) b!393382))

(assert (= (and b!393380 res!225436) b!393372))

(assert (= (or b!393380 b!393382) bm!27793))

(declare-fun b_lambda!8803 () Bool)

(assert (=> (not b_lambda!8803) (not b!393373)))

(assert (=> b!393373 t!11611))

(declare-fun b_and!16429 () Bool)

(assert (= b_and!16427 (and (=> t!11611 result!5775) b_and!16429)))

(assert (=> bm!27798 m!389707))

(assert (=> b!393370 m!389773))

(assert (=> b!393370 m!389773))

(declare-fun m!389871 () Bool)

(assert (=> b!393370 m!389871))

(declare-fun m!389873 () Bool)

(assert (=> b!393383 m!389873))

(assert (=> b!393373 m!389797))

(assert (=> b!393373 m!389853))

(assert (=> b!393373 m!389773))

(assert (=> b!393373 m!389773))

(declare-fun m!389875 () Bool)

(assert (=> b!393373 m!389875))

(assert (=> b!393373 m!389853))

(assert (=> b!393373 m!389797))

(assert (=> b!393373 m!389861))

(declare-fun m!389877 () Bool)

(assert (=> bm!27796 m!389877))

(declare-fun m!389879 () Bool)

(assert (=> b!393385 m!389879))

(declare-fun m!389881 () Bool)

(assert (=> b!393385 m!389881))

(declare-fun m!389883 () Bool)

(assert (=> b!393385 m!389883))

(declare-fun m!389885 () Bool)

(assert (=> b!393385 m!389885))

(declare-fun m!389887 () Bool)

(assert (=> b!393385 m!389887))

(declare-fun m!389889 () Bool)

(assert (=> b!393385 m!389889))

(assert (=> b!393385 m!389879))

(declare-fun m!389891 () Bool)

(assert (=> b!393385 m!389891))

(declare-fun m!389893 () Bool)

(assert (=> b!393385 m!389893))

(declare-fun m!389895 () Bool)

(assert (=> b!393385 m!389895))

(declare-fun m!389897 () Bool)

(assert (=> b!393385 m!389897))

(assert (=> b!393385 m!389707))

(declare-fun m!389899 () Bool)

(assert (=> b!393385 m!389899))

(assert (=> b!393385 m!389891))

(declare-fun m!389901 () Bool)

(assert (=> b!393385 m!389901))

(assert (=> b!393385 m!389887))

(declare-fun m!389903 () Bool)

(assert (=> b!393385 m!389903))

(assert (=> b!393385 m!389773))

(declare-fun m!389905 () Bool)

(assert (=> b!393385 m!389905))

(assert (=> b!393385 m!389897))

(declare-fun m!389907 () Bool)

(assert (=> b!393385 m!389907))

(assert (=> b!393381 m!389773))

(assert (=> b!393381 m!389773))

(assert (=> b!393381 m!389775))

(declare-fun m!389909 () Bool)

(assert (=> b!393375 m!389909))

(declare-fun m!389911 () Bool)

(assert (=> bm!27799 m!389911))

(assert (=> d!73091 m!389701))

(declare-fun m!389913 () Bool)

(assert (=> b!393372 m!389913))

(declare-fun m!389915 () Bool)

(assert (=> bm!27793 m!389915))

(assert (=> b!393390 m!389773))

(assert (=> b!393390 m!389773))

(assert (=> b!393390 m!389775))

(assert (=> b!393188 d!73091))

(declare-fun call!27803 () ListLongMap!5473)

(declare-fun bm!27800 () Bool)

(assert (=> bm!27800 (= call!27803 (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!393391 () Bool)

(assert (=> b!393391 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(assert (=> b!393391 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11459 lt!186130)))))

(declare-fun e!238193 () Bool)

(declare-fun lt!186281 () ListLongMap!5473)

(assert (=> b!393391 (= e!238193 (= (apply!307 lt!186281 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)) (get!5618 (select (arr!11107 lt!186130) #b00000000000000000000000000000000) (dynLambda!645 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!393392 () Bool)

(declare-fun res!225448 () Bool)

(declare-fun e!238190 () Bool)

(assert (=> b!393392 (=> (not res!225448) (not e!238190))))

(assert (=> b!393392 (= res!225448 (not (contains!2472 lt!186281 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393393 () Bool)

(declare-fun lt!186277 () Unit!11995)

(declare-fun lt!186280 () Unit!11995)

(assert (=> b!393393 (= lt!186277 lt!186280)))

(declare-fun lt!186279 () (_ BitVec 64))

(declare-fun lt!186283 () (_ BitVec 64))

(declare-fun lt!186278 () V!14053)

(declare-fun lt!186282 () ListLongMap!5473)

(assert (=> b!393393 (not (contains!2472 (+!1050 lt!186282 (tuple2!6547 lt!186283 lt!186278)) lt!186279))))

(assert (=> b!393393 (= lt!186280 (addStillNotContains!142 lt!186282 lt!186283 lt!186278 lt!186279))))

(assert (=> b!393393 (= lt!186279 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!393393 (= lt!186278 (get!5618 (select (arr!11107 lt!186130) #b00000000000000000000000000000000) (dynLambda!645 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!393393 (= lt!186283 (select (arr!11108 lt!186126) #b00000000000000000000000000000000))))

(assert (=> b!393393 (= lt!186282 call!27803)))

(declare-fun e!238191 () ListLongMap!5473)

(assert (=> b!393393 (= e!238191 (+!1050 call!27803 (tuple2!6547 (select (arr!11108 lt!186126) #b00000000000000000000000000000000) (get!5618 (select (arr!11107 lt!186130) #b00000000000000000000000000000000) (dynLambda!645 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!393394 () Bool)

(declare-fun e!238189 () Bool)

(assert (=> b!393394 (= e!238189 (validKeyInArray!0 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(assert (=> b!393394 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!393395 () Bool)

(declare-fun e!238195 () ListLongMap!5473)

(assert (=> b!393395 (= e!238195 e!238191)))

(declare-fun c!54403 () Bool)

(assert (=> b!393395 (= c!54403 (validKeyInArray!0 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(declare-fun b!393396 () Bool)

(assert (=> b!393396 (= e!238191 call!27803)))

(declare-fun e!238192 () Bool)

(declare-fun b!393397 () Bool)

(assert (=> b!393397 (= e!238192 (= lt!186281 (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun d!73093 () Bool)

(assert (=> d!73093 e!238190))

(declare-fun res!225445 () Bool)

(assert (=> d!73093 (=> (not res!225445) (not e!238190))))

(assert (=> d!73093 (= res!225445 (not (contains!2472 lt!186281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!73093 (= lt!186281 e!238195)))

(declare-fun c!54402 () Bool)

(assert (=> d!73093 (= c!54402 (bvsge #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(assert (=> d!73093 (validMask!0 mask!970)))

(assert (=> d!73093 (= (getCurrentListMapNoExtraKeys!974 lt!186126 lt!186130 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!186281)))

(declare-fun b!393398 () Bool)

(declare-fun e!238194 () Bool)

(assert (=> b!393398 (= e!238194 e!238193)))

(assert (=> b!393398 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(declare-fun res!225446 () Bool)

(assert (=> b!393398 (= res!225446 (contains!2472 lt!186281 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(assert (=> b!393398 (=> (not res!225446) (not e!238193))))

(declare-fun b!393399 () Bool)

(assert (=> b!393399 (= e!238192 (isEmpty!558 lt!186281))))

(declare-fun b!393400 () Bool)

(assert (=> b!393400 (= e!238194 e!238192)))

(declare-fun c!54404 () Bool)

(assert (=> b!393400 (= c!54404 (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(declare-fun b!393401 () Bool)

(assert (=> b!393401 (= e!238190 e!238194)))

(declare-fun c!54405 () Bool)

(assert (=> b!393401 (= c!54405 e!238189)))

(declare-fun res!225447 () Bool)

(assert (=> b!393401 (=> (not res!225447) (not e!238189))))

(assert (=> b!393401 (= res!225447 (bvslt #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(declare-fun b!393402 () Bool)

(assert (=> b!393402 (= e!238195 (ListLongMap!5474 Nil!6426))))

(assert (= (and d!73093 c!54402) b!393402))

(assert (= (and d!73093 (not c!54402)) b!393395))

(assert (= (and b!393395 c!54403) b!393393))

(assert (= (and b!393395 (not c!54403)) b!393396))

(assert (= (or b!393393 b!393396) bm!27800))

(assert (= (and d!73093 res!225445) b!393392))

(assert (= (and b!393392 res!225448) b!393401))

(assert (= (and b!393401 res!225447) b!393394))

(assert (= (and b!393401 c!54405) b!393398))

(assert (= (and b!393401 (not c!54405)) b!393400))

(assert (= (and b!393398 res!225446) b!393391))

(assert (= (and b!393400 c!54404) b!393397))

(assert (= (and b!393400 (not c!54404)) b!393399))

(declare-fun b_lambda!8805 () Bool)

(assert (=> (not b_lambda!8805) (not b!393391)))

(assert (=> b!393391 t!11611))

(declare-fun b_and!16431 () Bool)

(assert (= b_and!16429 (and (=> t!11611 result!5775) b_and!16431)))

(declare-fun b_lambda!8807 () Bool)

(assert (=> (not b_lambda!8807) (not b!393393)))

(assert (=> b!393393 t!11611))

(declare-fun b_and!16433 () Bool)

(assert (= b_and!16431 (and (=> t!11611 result!5775) b_and!16433)))

(declare-fun m!389917 () Bool)

(assert (=> d!73093 m!389917))

(assert (=> d!73093 m!389701))

(assert (=> b!393398 m!389791))

(assert (=> b!393398 m!389791))

(declare-fun m!389919 () Bool)

(assert (=> b!393398 m!389919))

(declare-fun m!389921 () Bool)

(assert (=> bm!27800 m!389921))

(assert (=> b!393394 m!389791))

(assert (=> b!393394 m!389791))

(assert (=> b!393394 m!389837))

(assert (=> b!393397 m!389921))

(assert (=> b!393395 m!389791))

(assert (=> b!393395 m!389791))

(assert (=> b!393395 m!389837))

(assert (=> b!393393 m!389799))

(declare-fun m!389923 () Bool)

(assert (=> b!393393 m!389923))

(declare-fun m!389925 () Bool)

(assert (=> b!393393 m!389925))

(declare-fun m!389927 () Bool)

(assert (=> b!393393 m!389927))

(assert (=> b!393393 m!389925))

(assert (=> b!393393 m!389797))

(assert (=> b!393393 m!389799))

(assert (=> b!393393 m!389797))

(assert (=> b!393393 m!389803))

(assert (=> b!393393 m!389791))

(declare-fun m!389929 () Bool)

(assert (=> b!393393 m!389929))

(assert (=> b!393391 m!389791))

(declare-fun m!389931 () Bool)

(assert (=> b!393391 m!389931))

(assert (=> b!393391 m!389799))

(assert (=> b!393391 m!389791))

(assert (=> b!393391 m!389797))

(assert (=> b!393391 m!389799))

(assert (=> b!393391 m!389797))

(assert (=> b!393391 m!389803))

(declare-fun m!389933 () Bool)

(assert (=> b!393392 m!389933))

(declare-fun m!389935 () Bool)

(assert (=> b!393399 m!389935))

(assert (=> b!393188 d!73093))

(declare-fun d!73095 () Bool)

(declare-fun e!238198 () Bool)

(assert (=> d!73095 e!238198))

(declare-fun res!225454 () Bool)

(assert (=> d!73095 (=> (not res!225454) (not e!238198))))

(declare-fun lt!186292 () ListLongMap!5473)

(assert (=> d!73095 (= res!225454 (contains!2472 lt!186292 (_1!3283 (tuple2!6547 k0!778 v!373))))))

(declare-fun lt!186293 () List!6429)

(assert (=> d!73095 (= lt!186292 (ListLongMap!5474 lt!186293))))

(declare-fun lt!186294 () Unit!11995)

(declare-fun lt!186295 () Unit!11995)

(assert (=> d!73095 (= lt!186294 lt!186295)))

(declare-datatypes ((Option!370 0))(
  ( (Some!369 (v!7138 V!14053)) (None!368) )
))
(declare-fun getValueByKey!364 (List!6429 (_ BitVec 64)) Option!370)

(assert (=> d!73095 (= (getValueByKey!364 lt!186293 (_1!3283 (tuple2!6547 k0!778 v!373))) (Some!369 (_2!3283 (tuple2!6547 k0!778 v!373))))))

(declare-fun lemmaContainsTupThenGetReturnValue!188 (List!6429 (_ BitVec 64) V!14053) Unit!11995)

(assert (=> d!73095 (= lt!186295 (lemmaContainsTupThenGetReturnValue!188 lt!186293 (_1!3283 (tuple2!6547 k0!778 v!373)) (_2!3283 (tuple2!6547 k0!778 v!373))))))

(declare-fun insertStrictlySorted!190 (List!6429 (_ BitVec 64) V!14053) List!6429)

(assert (=> d!73095 (= lt!186293 (insertStrictlySorted!190 (toList!2752 lt!186131) (_1!3283 (tuple2!6547 k0!778 v!373)) (_2!3283 (tuple2!6547 k0!778 v!373))))))

(assert (=> d!73095 (= (+!1050 lt!186131 (tuple2!6547 k0!778 v!373)) lt!186292)))

(declare-fun b!393407 () Bool)

(declare-fun res!225453 () Bool)

(assert (=> b!393407 (=> (not res!225453) (not e!238198))))

(assert (=> b!393407 (= res!225453 (= (getValueByKey!364 (toList!2752 lt!186292) (_1!3283 (tuple2!6547 k0!778 v!373))) (Some!369 (_2!3283 (tuple2!6547 k0!778 v!373)))))))

(declare-fun b!393408 () Bool)

(declare-fun contains!2473 (List!6429 tuple2!6546) Bool)

(assert (=> b!393408 (= e!238198 (contains!2473 (toList!2752 lt!186292) (tuple2!6547 k0!778 v!373)))))

(assert (= (and d!73095 res!225454) b!393407))

(assert (= (and b!393407 res!225453) b!393408))

(declare-fun m!389937 () Bool)

(assert (=> d!73095 m!389937))

(declare-fun m!389939 () Bool)

(assert (=> d!73095 m!389939))

(declare-fun m!389941 () Bool)

(assert (=> d!73095 m!389941))

(declare-fun m!389943 () Bool)

(assert (=> d!73095 m!389943))

(declare-fun m!389945 () Bool)

(assert (=> b!393407 m!389945))

(declare-fun m!389947 () Bool)

(assert (=> b!393408 m!389947))

(assert (=> b!393188 d!73095))

(declare-fun b!393415 () Bool)

(declare-fun e!238203 () Bool)

(declare-fun call!27809 () ListLongMap!5473)

(declare-fun call!27808 () ListLongMap!5473)

(assert (=> b!393415 (= e!238203 (= call!27809 call!27808))))

(declare-fun d!73097 () Bool)

(declare-fun e!238204 () Bool)

(assert (=> d!73097 e!238204))

(declare-fun res!225457 () Bool)

(assert (=> d!73097 (=> (not res!225457) (not e!238204))))

(assert (=> d!73097 (= res!225457 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11460 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11459 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11460 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11459 _values!506))))))))

(declare-fun lt!186298 () Unit!11995)

(declare-fun choose!1330 (array!23305 array!23303 (_ BitVec 32) (_ BitVec 32) V!14053 V!14053 (_ BitVec 32) (_ BitVec 64) V!14053 (_ BitVec 32) Int) Unit!11995)

(assert (=> d!73097 (= lt!186298 (choose!1330 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!73097 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11460 _keys!658)))))

(assert (=> d!73097 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!269 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!186298)))

(declare-fun bm!27805 () Bool)

(assert (=> bm!27805 (= call!27809 (getCurrentListMapNoExtraKeys!974 (array!23306 (store (arr!11108 _keys!658) i!548 k0!778) (size!11460 _keys!658)) (array!23304 (store (arr!11107 _values!506) i!548 (ValueCellFull!4512 v!373)) (size!11459 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393416 () Bool)

(assert (=> b!393416 (= e!238203 (= call!27809 (+!1050 call!27808 (tuple2!6547 k0!778 v!373))))))

(declare-fun b!393417 () Bool)

(assert (=> b!393417 (= e!238204 e!238203)))

(declare-fun c!54408 () Bool)

(assert (=> b!393417 (= c!54408 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun bm!27806 () Bool)

(assert (=> bm!27806 (= call!27808 (getCurrentListMapNoExtraKeys!974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and d!73097 res!225457) b!393417))

(assert (= (and b!393417 c!54408) b!393416))

(assert (= (and b!393417 (not c!54408)) b!393415))

(assert (= (or b!393416 b!393415) bm!27806))

(assert (= (or b!393416 b!393415) bm!27805))

(declare-fun m!389949 () Bool)

(assert (=> d!73097 m!389949))

(assert (=> bm!27805 m!389733))

(assert (=> bm!27805 m!389715))

(declare-fun m!389951 () Bool)

(assert (=> bm!27805 m!389951))

(declare-fun m!389953 () Bool)

(assert (=> b!393416 m!389953))

(assert (=> bm!27806 m!389707))

(assert (=> b!393188 d!73097))

(declare-fun b!393418 () Bool)

(declare-fun e!238207 () Bool)

(declare-fun e!238206 () Bool)

(assert (=> b!393418 (= e!238207 e!238206)))

(declare-fun res!225460 () Bool)

(assert (=> b!393418 (=> (not res!225460) (not e!238206))))

(declare-fun e!238208 () Bool)

(assert (=> b!393418 (= res!225460 (not e!238208))))

(declare-fun res!225458 () Bool)

(assert (=> b!393418 (=> (not res!225458) (not e!238208))))

(assert (=> b!393418 (= res!225458 (validKeyInArray!0 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(declare-fun bm!27807 () Bool)

(declare-fun call!27810 () Bool)

(declare-fun c!54409 () Bool)

(assert (=> bm!27807 (= call!27810 (arrayNoDuplicates!0 lt!186126 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54409 (Cons!6424 (select (arr!11108 lt!186126) #b00000000000000000000000000000000) Nil!6425) Nil!6425)))))

(declare-fun d!73099 () Bool)

(declare-fun res!225459 () Bool)

(assert (=> d!73099 (=> res!225459 e!238207)))

(assert (=> d!73099 (= res!225459 (bvsge #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(assert (=> d!73099 (= (arrayNoDuplicates!0 lt!186126 #b00000000000000000000000000000000 Nil!6425) e!238207)))

(declare-fun b!393419 () Bool)

(declare-fun e!238205 () Bool)

(assert (=> b!393419 (= e!238205 call!27810)))

(declare-fun b!393420 () Bool)

(assert (=> b!393420 (= e!238206 e!238205)))

(assert (=> b!393420 (= c!54409 (validKeyInArray!0 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(declare-fun b!393421 () Bool)

(assert (=> b!393421 (= e!238208 (contains!2471 Nil!6425 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(declare-fun b!393422 () Bool)

(assert (=> b!393422 (= e!238205 call!27810)))

(assert (= (and d!73099 (not res!225459)) b!393418))

(assert (= (and b!393418 res!225458) b!393421))

(assert (= (and b!393418 res!225460) b!393420))

(assert (= (and b!393420 c!54409) b!393419))

(assert (= (and b!393420 (not c!54409)) b!393422))

(assert (= (or b!393419 b!393422) bm!27807))

(assert (=> b!393418 m!389791))

(assert (=> b!393418 m!389791))

(assert (=> b!393418 m!389837))

(assert (=> bm!27807 m!389791))

(declare-fun m!389955 () Bool)

(assert (=> bm!27807 m!389955))

(assert (=> b!393420 m!389791))

(assert (=> b!393420 m!389791))

(assert (=> b!393420 m!389837))

(assert (=> b!393421 m!389791))

(assert (=> b!393421 m!389791))

(declare-fun m!389957 () Bool)

(assert (=> b!393421 m!389957))

(assert (=> b!393190 d!73099))

(declare-fun b!393423 () Bool)

(declare-fun e!238210 () Bool)

(declare-fun e!238209 () Bool)

(assert (=> b!393423 (= e!238210 e!238209)))

(declare-fun c!54410 () Bool)

(assert (=> b!393423 (= c!54410 (validKeyInArray!0 (select (arr!11108 lt!186126) #b00000000000000000000000000000000)))))

(declare-fun b!393424 () Bool)

(declare-fun e!238211 () Bool)

(assert (=> b!393424 (= e!238209 e!238211)))

(declare-fun lt!186300 () (_ BitVec 64))

(assert (=> b!393424 (= lt!186300 (select (arr!11108 lt!186126) #b00000000000000000000000000000000))))

(declare-fun lt!186299 () Unit!11995)

(assert (=> b!393424 (= lt!186299 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!186126 lt!186300 #b00000000000000000000000000000000))))

(assert (=> b!393424 (arrayContainsKey!0 lt!186126 lt!186300 #b00000000000000000000000000000000)))

(declare-fun lt!186301 () Unit!11995)

(assert (=> b!393424 (= lt!186301 lt!186299)))

(declare-fun res!225461 () Bool)

(assert (=> b!393424 (= res!225461 (= (seekEntryOrOpen!0 (select (arr!11108 lt!186126) #b00000000000000000000000000000000) lt!186126 mask!970) (Found!3506 #b00000000000000000000000000000000)))))

(assert (=> b!393424 (=> (not res!225461) (not e!238211))))

(declare-fun b!393425 () Bool)

(declare-fun call!27811 () Bool)

(assert (=> b!393425 (= e!238209 call!27811)))

(declare-fun d!73101 () Bool)

(declare-fun res!225462 () Bool)

(assert (=> d!73101 (=> res!225462 e!238210)))

(assert (=> d!73101 (= res!225462 (bvsge #b00000000000000000000000000000000 (size!11460 lt!186126)))))

(assert (=> d!73101 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186126 mask!970) e!238210)))

(declare-fun bm!27808 () Bool)

(assert (=> bm!27808 (= call!27811 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!186126 mask!970))))

(declare-fun b!393426 () Bool)

(assert (=> b!393426 (= e!238211 call!27811)))

(assert (= (and d!73101 (not res!225462)) b!393423))

(assert (= (and b!393423 c!54410) b!393424))

(assert (= (and b!393423 (not c!54410)) b!393425))

(assert (= (and b!393424 res!225461) b!393426))

(assert (= (or b!393426 b!393425) bm!27808))

(assert (=> b!393423 m!389791))

(assert (=> b!393423 m!389791))

(assert (=> b!393423 m!389837))

(assert (=> b!393424 m!389791))

(declare-fun m!389959 () Bool)

(assert (=> b!393424 m!389959))

(declare-fun m!389961 () Bool)

(assert (=> b!393424 m!389961))

(assert (=> b!393424 m!389791))

(declare-fun m!389963 () Bool)

(assert (=> b!393424 m!389963))

(declare-fun m!389965 () Bool)

(assert (=> bm!27808 m!389965))

(assert (=> b!393195 d!73101))

(declare-fun d!73103 () Bool)

(assert (=> d!73103 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!38166 d!73103))

(declare-fun d!73105 () Bool)

(assert (=> d!73105 (= (array_inv!8142 _values!506) (bvsge (size!11459 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!38166 d!73105))

(declare-fun d!73107 () Bool)

(assert (=> d!73107 (= (array_inv!8143 _keys!658) (bvsge (size!11460 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!38166 d!73107))

(declare-fun d!73109 () Bool)

(assert (=> d!73109 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!393191 d!73109))

(declare-fun b!393433 () Bool)

(declare-fun e!238217 () Bool)

(assert (=> b!393433 (= e!238217 tp_is_empty!9711)))

(declare-fun mapIsEmpty!16167 () Bool)

(declare-fun mapRes!16167 () Bool)

(assert (=> mapIsEmpty!16167 mapRes!16167))

(declare-fun condMapEmpty!16167 () Bool)

(declare-fun mapDefault!16167 () ValueCell!4512)

(assert (=> mapNonEmpty!16161 (= condMapEmpty!16167 (= mapRest!16161 ((as const (Array (_ BitVec 32) ValueCell!4512)) mapDefault!16167)))))

(declare-fun e!238216 () Bool)

(assert (=> mapNonEmpty!16161 (= tp!31898 (and e!238216 mapRes!16167))))

(declare-fun mapNonEmpty!16167 () Bool)

(declare-fun tp!31908 () Bool)

(assert (=> mapNonEmpty!16167 (= mapRes!16167 (and tp!31908 e!238217))))

(declare-fun mapKey!16167 () (_ BitVec 32))

(declare-fun mapValue!16167 () ValueCell!4512)

(declare-fun mapRest!16167 () (Array (_ BitVec 32) ValueCell!4512))

(assert (=> mapNonEmpty!16167 (= mapRest!16161 (store mapRest!16167 mapKey!16167 mapValue!16167))))

(declare-fun b!393434 () Bool)

(assert (=> b!393434 (= e!238216 tp_is_empty!9711)))

(assert (= (and mapNonEmpty!16161 condMapEmpty!16167) mapIsEmpty!16167))

(assert (= (and mapNonEmpty!16161 (not condMapEmpty!16167)) mapNonEmpty!16167))

(assert (= (and mapNonEmpty!16167 ((_ is ValueCellFull!4512) mapValue!16167)) b!393433))

(assert (= (and mapNonEmpty!16161 ((_ is ValueCellFull!4512) mapDefault!16167)) b!393434))

(declare-fun m!389967 () Bool)

(assert (=> mapNonEmpty!16167 m!389967))

(declare-fun b_lambda!8809 () Bool)

(assert (= b_lambda!8797 (or (and start!38166 b_free!9039) b_lambda!8809)))

(declare-fun b_lambda!8811 () Bool)

(assert (= b_lambda!8801 (or (and start!38166 b_free!9039) b_lambda!8811)))

(declare-fun b_lambda!8813 () Bool)

(assert (= b_lambda!8805 (or (and start!38166 b_free!9039) b_lambda!8813)))

(declare-fun b_lambda!8815 () Bool)

(assert (= b_lambda!8799 (or (and start!38166 b_free!9039) b_lambda!8815)))

(declare-fun b_lambda!8817 () Bool)

(assert (= b_lambda!8803 (or (and start!38166 b_free!9039) b_lambda!8817)))

(declare-fun b_lambda!8819 () Bool)

(assert (= b_lambda!8807 (or (and start!38166 b_free!9039) b_lambda!8819)))

(check-sat (not bm!27800) (not b!393316) (not b!393260) (not b!393423) (not bm!27805) (not d!73093) (not b!393268) (not d!73091) (not b!393393) (not bm!27798) (not b!393331) (not b!393391) (not b_lambda!8817) (not b!393394) (not bm!27788) (not b!393359) (not b!393322) (not b!393418) (not bm!27792) (not b!393362) (not b!393361) (not b!393326) (not bm!27765) (not b_lambda!8819) (not bm!27786) (not b!393420) (not mapNonEmpty!16167) (not b!393324) (not b_lambda!8811) (not bm!27808) (not b!393365) (not b!393375) (not b!393313) (not b!393360) (not bm!27796) (not d!73097) (not d!73089) (not d!73087) (not bm!27768) (not b!393424) (not b_lambda!8815) (not b!393408) (not b!393416) (not b!393370) (not b!393385) (not b!393311) (not b!393358) (not b!393373) (not b_next!9039) (not b!393245) (not b!393381) (not bm!27799) (not bm!27789) (not b!393244) (not bm!27807) (not b!393390) (not b_lambda!8813) (not d!73095) tp_is_empty!9711 (not b!393399) (not b!393314) (not b!393372) (not b!393258) (not b!393421) (not b!393366) (not b!393364) (not b!393392) (not bm!27783) b_and!16433 (not b!393397) (not b_lambda!8809) (not b!393398) (not b!393407) (not b!393383) (not b!393261) (not bm!27806) (not bm!27793) (not b!393395))
(check-sat b_and!16433 (not b_next!9039))
