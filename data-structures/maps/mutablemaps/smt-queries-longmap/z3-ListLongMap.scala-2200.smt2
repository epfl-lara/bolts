; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36574 () Bool)

(assert start!36574)

(declare-fun res!204168 () Bool)

(declare-fun e!223498 () Bool)

(assert (=> start!36574 (=> (not res!204168) (not e!223498))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36574 (= res!204168 (validMask!0 mask!970))))

(assert (=> start!36574 e!223498))

(assert (=> start!36574 true))

(declare-datatypes ((V!12357 0))(
  ( (V!12358 (val!4264 Int)) )
))
(declare-datatypes ((ValueCell!3876 0))(
  ( (ValueCellFull!3876 (v!6455 V!12357)) (EmptyCell!3876) )
))
(declare-datatypes ((array!20805 0))(
  ( (array!20806 (arr!9876 (Array (_ BitVec 32) ValueCell!3876)) (size!10228 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20805)

(declare-fun e!223502 () Bool)

(declare-fun array_inv!7308 (array!20805) Bool)

(assert (=> start!36574 (and (array_inv!7308 _values!506) e!223502)))

(declare-datatypes ((array!20807 0))(
  ( (array!20808 (arr!9877 (Array (_ BitVec 32) (_ BitVec 64))) (size!10229 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20807)

(declare-fun array_inv!7309 (array!20807) Bool)

(assert (=> start!36574 (array_inv!7309 _keys!658)))

(declare-fun b!365029 () Bool)

(assert (=> b!365029 (= e!223498 (bvsgt #b00000000000000000000000000000000 (size!10229 _keys!658)))))

(declare-fun b!365030 () Bool)

(declare-fun res!204169 () Bool)

(assert (=> b!365030 (=> (not res!204169) (not e!223498))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365030 (= res!204169 (and (= (size!10228 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10229 _keys!658) (size!10228 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365031 () Bool)

(declare-fun e!223499 () Bool)

(declare-fun mapRes!14199 () Bool)

(assert (=> b!365031 (= e!223502 (and e!223499 mapRes!14199))))

(declare-fun condMapEmpty!14199 () Bool)

(declare-fun mapDefault!14199 () ValueCell!3876)

(assert (=> b!365031 (= condMapEmpty!14199 (= (arr!9876 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3876)) mapDefault!14199)))))

(declare-fun b!365032 () Bool)

(declare-fun tp_is_empty!8439 () Bool)

(assert (=> b!365032 (= e!223499 tp_is_empty!8439)))

(declare-fun mapIsEmpty!14199 () Bool)

(assert (=> mapIsEmpty!14199 mapRes!14199))

(declare-fun b!365033 () Bool)

(declare-fun res!204167 () Bool)

(assert (=> b!365033 (=> (not res!204167) (not e!223498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20807 (_ BitVec 32)) Bool)

(assert (=> b!365033 (= res!204167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365034 () Bool)

(declare-fun e!223500 () Bool)

(assert (=> b!365034 (= e!223500 tp_is_empty!8439)))

(declare-fun mapNonEmpty!14199 () Bool)

(declare-fun tp!28275 () Bool)

(assert (=> mapNonEmpty!14199 (= mapRes!14199 (and tp!28275 e!223500))))

(declare-fun mapKey!14199 () (_ BitVec 32))

(declare-fun mapRest!14199 () (Array (_ BitVec 32) ValueCell!3876))

(declare-fun mapValue!14199 () ValueCell!3876)

(assert (=> mapNonEmpty!14199 (= (arr!9876 _values!506) (store mapRest!14199 mapKey!14199 mapValue!14199))))

(assert (= (and start!36574 res!204168) b!365030))

(assert (= (and b!365030 res!204169) b!365033))

(assert (= (and b!365033 res!204167) b!365029))

(assert (= (and b!365031 condMapEmpty!14199) mapIsEmpty!14199))

(assert (= (and b!365031 (not condMapEmpty!14199)) mapNonEmpty!14199))

(get-info :version)

(assert (= (and mapNonEmpty!14199 ((_ is ValueCellFull!3876) mapValue!14199)) b!365034))

(assert (= (and b!365031 ((_ is ValueCellFull!3876) mapDefault!14199)) b!365032))

(assert (= start!36574 b!365031))

(declare-fun m!362869 () Bool)

(assert (=> start!36574 m!362869))

(declare-fun m!362871 () Bool)

(assert (=> start!36574 m!362871))

(declare-fun m!362873 () Bool)

(assert (=> start!36574 m!362873))

(declare-fun m!362875 () Bool)

(assert (=> b!365033 m!362875))

(declare-fun m!362877 () Bool)

(assert (=> mapNonEmpty!14199 m!362877))

(check-sat (not b!365033) (not start!36574) (not mapNonEmpty!14199) tp_is_empty!8439)
(check-sat)
(get-model)

(declare-fun bm!27266 () Bool)

(declare-fun call!27269 () Bool)

(assert (=> bm!27266 (= call!27269 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!365061 () Bool)

(declare-fun e!223526 () Bool)

(assert (=> b!365061 (= e!223526 call!27269)))

(declare-fun b!365062 () Bool)

(declare-fun e!223524 () Bool)

(assert (=> b!365062 (= e!223524 call!27269)))

(declare-fun d!72183 () Bool)

(declare-fun res!204184 () Bool)

(declare-fun e!223525 () Bool)

(assert (=> d!72183 (=> res!204184 e!223525)))

(assert (=> d!72183 (= res!204184 (bvsge #b00000000000000000000000000000000 (size!10229 _keys!658)))))

(assert (=> d!72183 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!223525)))

(declare-fun b!365063 () Bool)

(assert (=> b!365063 (= e!223526 e!223524)))

(declare-fun lt!169118 () (_ BitVec 64))

(assert (=> b!365063 (= lt!169118 (select (arr!9877 _keys!658) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11371 0))(
  ( (Unit!11372) )
))
(declare-fun lt!169116 () Unit!11371)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20807 (_ BitVec 64) (_ BitVec 32)) Unit!11371)

(assert (=> b!365063 (= lt!169116 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!169118 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365063 (arrayContainsKey!0 _keys!658 lt!169118 #b00000000000000000000000000000000)))

(declare-fun lt!169117 () Unit!11371)

(assert (=> b!365063 (= lt!169117 lt!169116)))

(declare-fun res!204183 () Bool)

(declare-datatypes ((SeekEntryResult!3488 0))(
  ( (MissingZero!3488 (index!16131 (_ BitVec 32))) (Found!3488 (index!16132 (_ BitVec 32))) (Intermediate!3488 (undefined!4300 Bool) (index!16133 (_ BitVec 32)) (x!36611 (_ BitVec 32))) (Undefined!3488) (MissingVacant!3488 (index!16134 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20807 (_ BitVec 32)) SeekEntryResult!3488)

(assert (=> b!365063 (= res!204183 (= (seekEntryOrOpen!0 (select (arr!9877 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3488 #b00000000000000000000000000000000)))))

(assert (=> b!365063 (=> (not res!204183) (not e!223524))))

(declare-fun b!365064 () Bool)

(assert (=> b!365064 (= e!223525 e!223526)))

(declare-fun c!53813 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365064 (= c!53813 (validKeyInArray!0 (select (arr!9877 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72183 (not res!204184)) b!365064))

(assert (= (and b!365064 c!53813) b!365063))

(assert (= (and b!365064 (not c!53813)) b!365061))

(assert (= (and b!365063 res!204183) b!365062))

(assert (= (or b!365062 b!365061) bm!27266))

(declare-fun m!362889 () Bool)

(assert (=> bm!27266 m!362889))

(declare-fun m!362891 () Bool)

(assert (=> b!365063 m!362891))

(declare-fun m!362893 () Bool)

(assert (=> b!365063 m!362893))

(declare-fun m!362895 () Bool)

(assert (=> b!365063 m!362895))

(assert (=> b!365063 m!362891))

(declare-fun m!362897 () Bool)

(assert (=> b!365063 m!362897))

(assert (=> b!365064 m!362891))

(assert (=> b!365064 m!362891))

(declare-fun m!362899 () Bool)

(assert (=> b!365064 m!362899))

(assert (=> b!365033 d!72183))

(declare-fun d!72185 () Bool)

(assert (=> d!72185 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36574 d!72185))

(declare-fun d!72187 () Bool)

(assert (=> d!72187 (= (array_inv!7308 _values!506) (bvsge (size!10228 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36574 d!72187))

(declare-fun d!72189 () Bool)

(assert (=> d!72189 (= (array_inv!7309 _keys!658) (bvsge (size!10229 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36574 d!72189))

(declare-fun mapIsEmpty!14205 () Bool)

(declare-fun mapRes!14205 () Bool)

(assert (=> mapIsEmpty!14205 mapRes!14205))

(declare-fun condMapEmpty!14205 () Bool)

(declare-fun mapDefault!14205 () ValueCell!3876)

(assert (=> mapNonEmpty!14199 (= condMapEmpty!14205 (= mapRest!14199 ((as const (Array (_ BitVec 32) ValueCell!3876)) mapDefault!14205)))))

(declare-fun e!223532 () Bool)

(assert (=> mapNonEmpty!14199 (= tp!28275 (and e!223532 mapRes!14205))))

(declare-fun b!365072 () Bool)

(assert (=> b!365072 (= e!223532 tp_is_empty!8439)))

(declare-fun b!365071 () Bool)

(declare-fun e!223531 () Bool)

(assert (=> b!365071 (= e!223531 tp_is_empty!8439)))

(declare-fun mapNonEmpty!14205 () Bool)

(declare-fun tp!28281 () Bool)

(assert (=> mapNonEmpty!14205 (= mapRes!14205 (and tp!28281 e!223531))))

(declare-fun mapRest!14205 () (Array (_ BitVec 32) ValueCell!3876))

(declare-fun mapKey!14205 () (_ BitVec 32))

(declare-fun mapValue!14205 () ValueCell!3876)

(assert (=> mapNonEmpty!14205 (= mapRest!14199 (store mapRest!14205 mapKey!14205 mapValue!14205))))

(assert (= (and mapNonEmpty!14199 condMapEmpty!14205) mapIsEmpty!14205))

(assert (= (and mapNonEmpty!14199 (not condMapEmpty!14205)) mapNonEmpty!14205))

(assert (= (and mapNonEmpty!14205 ((_ is ValueCellFull!3876) mapValue!14205)) b!365071))

(assert (= (and mapNonEmpty!14199 ((_ is ValueCellFull!3876) mapDefault!14205)) b!365072))

(declare-fun m!362901 () Bool)

(assert (=> mapNonEmpty!14205 m!362901))

(check-sat tp_is_empty!8439 (not bm!27266) (not b!365063) (not b!365064) (not mapNonEmpty!14205))
(check-sat)
