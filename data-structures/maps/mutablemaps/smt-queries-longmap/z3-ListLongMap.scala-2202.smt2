; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36602 () Bool)

(assert start!36602)

(declare-fun b!365182 () Bool)

(declare-fun res!204241 () Bool)

(declare-fun e!223621 () Bool)

(assert (=> b!365182 (=> (not res!204241) (not e!223621))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12373 0))(
  ( (V!12374 (val!4270 Int)) )
))
(declare-datatypes ((ValueCell!3882 0))(
  ( (ValueCellFull!3882 (v!6461 V!12373)) (EmptyCell!3882) )
))
(declare-datatypes ((array!20831 0))(
  ( (array!20832 (arr!9887 (Array (_ BitVec 32) ValueCell!3882)) (size!10239 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20831)

(declare-datatypes ((array!20833 0))(
  ( (array!20834 (arr!9888 (Array (_ BitVec 32) (_ BitVec 64))) (size!10240 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20833)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!365182 (= res!204241 (and (= (size!10239 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10240 _keys!658) (size!10239 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365183 () Bool)

(declare-fun res!204240 () Bool)

(assert (=> b!365183 (=> (not res!204240) (not e!223621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20833 (_ BitVec 32)) Bool)

(assert (=> b!365183 (= res!204240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365184 () Bool)

(declare-fun res!204238 () Bool)

(assert (=> b!365184 (=> (not res!204238) (not e!223621))))

(assert (=> b!365184 (= res!204238 (and (bvsle #b00000000000000000000000000000000 (size!10240 _keys!658)) (bvslt (size!10240 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!365185 () Bool)

(declare-fun e!223622 () Bool)

(declare-fun tp_is_empty!8451 () Bool)

(assert (=> b!365185 (= e!223622 tp_is_empty!8451)))

(declare-fun b!365186 () Bool)

(declare-fun e!223620 () Bool)

(declare-fun e!223618 () Bool)

(declare-fun mapRes!14223 () Bool)

(assert (=> b!365186 (= e!223620 (and e!223618 mapRes!14223))))

(declare-fun condMapEmpty!14223 () Bool)

(declare-fun mapDefault!14223 () ValueCell!3882)

(assert (=> b!365186 (= condMapEmpty!14223 (= (arr!9887 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3882)) mapDefault!14223)))))

(declare-fun res!204239 () Bool)

(assert (=> start!36602 (=> (not res!204239) (not e!223621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36602 (= res!204239 (validMask!0 mask!970))))

(assert (=> start!36602 e!223621))

(assert (=> start!36602 true))

(declare-fun array_inv!7316 (array!20831) Bool)

(assert (=> start!36602 (and (array_inv!7316 _values!506) e!223620)))

(declare-fun array_inv!7317 (array!20833) Bool)

(assert (=> start!36602 (array_inv!7317 _keys!658)))

(declare-fun b!365187 () Bool)

(assert (=> b!365187 (= e!223618 tp_is_empty!8451)))

(declare-fun mapNonEmpty!14223 () Bool)

(declare-fun tp!28299 () Bool)

(assert (=> mapNonEmpty!14223 (= mapRes!14223 (and tp!28299 e!223622))))

(declare-fun mapValue!14223 () ValueCell!3882)

(declare-fun mapKey!14223 () (_ BitVec 32))

(declare-fun mapRest!14223 () (Array (_ BitVec 32) ValueCell!3882))

(assert (=> mapNonEmpty!14223 (= (arr!9887 _values!506) (store mapRest!14223 mapKey!14223 mapValue!14223))))

(declare-fun b!365188 () Bool)

(declare-datatypes ((List!5547 0))(
  ( (Nil!5544) (Cons!5543 (h!6399 (_ BitVec 64)) (t!10705 List!5547)) )
))
(declare-fun noDuplicate!185 (List!5547) Bool)

(assert (=> b!365188 (= e!223621 (not (noDuplicate!185 Nil!5544)))))

(declare-fun mapIsEmpty!14223 () Bool)

(assert (=> mapIsEmpty!14223 mapRes!14223))

(assert (= (and start!36602 res!204239) b!365182))

(assert (= (and b!365182 res!204241) b!365183))

(assert (= (and b!365183 res!204240) b!365184))

(assert (= (and b!365184 res!204238) b!365188))

(assert (= (and b!365186 condMapEmpty!14223) mapIsEmpty!14223))

(assert (= (and b!365186 (not condMapEmpty!14223)) mapNonEmpty!14223))

(get-info :version)

(assert (= (and mapNonEmpty!14223 ((_ is ValueCellFull!3882) mapValue!14223)) b!365185))

(assert (= (and b!365186 ((_ is ValueCellFull!3882) mapDefault!14223)) b!365187))

(assert (= start!36602 b!365186))

(declare-fun m!362959 () Bool)

(assert (=> b!365183 m!362959))

(declare-fun m!362961 () Bool)

(assert (=> start!36602 m!362961))

(declare-fun m!362963 () Bool)

(assert (=> start!36602 m!362963))

(declare-fun m!362965 () Bool)

(assert (=> start!36602 m!362965))

(declare-fun m!362967 () Bool)

(assert (=> mapNonEmpty!14223 m!362967))

(declare-fun m!362969 () Bool)

(assert (=> b!365188 m!362969))

(check-sat (not b!365183) (not b!365188) (not mapNonEmpty!14223) (not start!36602) tp_is_empty!8451)
(check-sat)
(get-model)

(declare-fun d!72203 () Bool)

(declare-fun res!204258 () Bool)

(declare-fun e!223642 () Bool)

(assert (=> d!72203 (=> res!204258 e!223642)))

(assert (=> d!72203 (= res!204258 ((_ is Nil!5544) Nil!5544))))

(assert (=> d!72203 (= (noDuplicate!185 Nil!5544) e!223642)))

(declare-fun b!365214 () Bool)

(declare-fun e!223643 () Bool)

(assert (=> b!365214 (= e!223642 e!223643)))

(declare-fun res!204259 () Bool)

(assert (=> b!365214 (=> (not res!204259) (not e!223643))))

(declare-fun contains!2432 (List!5547 (_ BitVec 64)) Bool)

(assert (=> b!365214 (= res!204259 (not (contains!2432 (t!10705 Nil!5544) (h!6399 Nil!5544))))))

(declare-fun b!365215 () Bool)

(assert (=> b!365215 (= e!223643 (noDuplicate!185 (t!10705 Nil!5544)))))

(assert (= (and d!72203 (not res!204258)) b!365214))

(assert (= (and b!365214 res!204259) b!365215))

(declare-fun m!362983 () Bool)

(assert (=> b!365214 m!362983))

(declare-fun m!362985 () Bool)

(assert (=> b!365215 m!362985))

(assert (=> b!365188 d!72203))

(declare-fun b!365224 () Bool)

(declare-fun e!223652 () Bool)

(declare-fun e!223650 () Bool)

(assert (=> b!365224 (= e!223652 e!223650)))

(declare-fun lt!169136 () (_ BitVec 64))

(assert (=> b!365224 (= lt!169136 (select (arr!9888 _keys!658) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11375 0))(
  ( (Unit!11376) )
))
(declare-fun lt!169135 () Unit!11375)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20833 (_ BitVec 64) (_ BitVec 32)) Unit!11375)

(assert (=> b!365224 (= lt!169135 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!169136 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365224 (arrayContainsKey!0 _keys!658 lt!169136 #b00000000000000000000000000000000)))

(declare-fun lt!169134 () Unit!11375)

(assert (=> b!365224 (= lt!169134 lt!169135)))

(declare-fun res!204265 () Bool)

(declare-datatypes ((SeekEntryResult!3490 0))(
  ( (MissingZero!3490 (index!16139 (_ BitVec 32))) (Found!3490 (index!16140 (_ BitVec 32))) (Intermediate!3490 (undefined!4302 Bool) (index!16141 (_ BitVec 32)) (x!36633 (_ BitVec 32))) (Undefined!3490) (MissingVacant!3490 (index!16142 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20833 (_ BitVec 32)) SeekEntryResult!3490)

(assert (=> b!365224 (= res!204265 (= (seekEntryOrOpen!0 (select (arr!9888 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3490 #b00000000000000000000000000000000)))))

(assert (=> b!365224 (=> (not res!204265) (not e!223650))))

(declare-fun bm!27272 () Bool)

(declare-fun call!27275 () Bool)

(assert (=> bm!27272 (= call!27275 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!365225 () Bool)

(assert (=> b!365225 (= e!223650 call!27275)))

(declare-fun b!365227 () Bool)

(declare-fun e!223651 () Bool)

(assert (=> b!365227 (= e!223651 e!223652)))

(declare-fun c!53819 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365227 (= c!53819 (validKeyInArray!0 (select (arr!9888 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!365226 () Bool)

(assert (=> b!365226 (= e!223652 call!27275)))

(declare-fun d!72205 () Bool)

(declare-fun res!204264 () Bool)

(assert (=> d!72205 (=> res!204264 e!223651)))

(assert (=> d!72205 (= res!204264 (bvsge #b00000000000000000000000000000000 (size!10240 _keys!658)))))

(assert (=> d!72205 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!223651)))

(assert (= (and d!72205 (not res!204264)) b!365227))

(assert (= (and b!365227 c!53819) b!365224))

(assert (= (and b!365227 (not c!53819)) b!365226))

(assert (= (and b!365224 res!204265) b!365225))

(assert (= (or b!365225 b!365226) bm!27272))

(declare-fun m!362987 () Bool)

(assert (=> b!365224 m!362987))

(declare-fun m!362989 () Bool)

(assert (=> b!365224 m!362989))

(declare-fun m!362991 () Bool)

(assert (=> b!365224 m!362991))

(assert (=> b!365224 m!362987))

(declare-fun m!362993 () Bool)

(assert (=> b!365224 m!362993))

(declare-fun m!362995 () Bool)

(assert (=> bm!27272 m!362995))

(assert (=> b!365227 m!362987))

(assert (=> b!365227 m!362987))

(declare-fun m!362997 () Bool)

(assert (=> b!365227 m!362997))

(assert (=> b!365183 d!72205))

(declare-fun d!72207 () Bool)

(assert (=> d!72207 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36602 d!72207))

(declare-fun d!72209 () Bool)

(assert (=> d!72209 (= (array_inv!7316 _values!506) (bvsge (size!10239 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36602 d!72209))

(declare-fun d!72211 () Bool)

(assert (=> d!72211 (= (array_inv!7317 _keys!658) (bvsge (size!10240 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36602 d!72211))

(declare-fun condMapEmpty!14229 () Bool)

(declare-fun mapDefault!14229 () ValueCell!3882)

(assert (=> mapNonEmpty!14223 (= condMapEmpty!14229 (= mapRest!14223 ((as const (Array (_ BitVec 32) ValueCell!3882)) mapDefault!14229)))))

(declare-fun e!223658 () Bool)

(declare-fun mapRes!14229 () Bool)

(assert (=> mapNonEmpty!14223 (= tp!28299 (and e!223658 mapRes!14229))))

(declare-fun mapIsEmpty!14229 () Bool)

(assert (=> mapIsEmpty!14229 mapRes!14229))

(declare-fun mapNonEmpty!14229 () Bool)

(declare-fun tp!28305 () Bool)

(declare-fun e!223657 () Bool)

(assert (=> mapNonEmpty!14229 (= mapRes!14229 (and tp!28305 e!223657))))

(declare-fun mapKey!14229 () (_ BitVec 32))

(declare-fun mapValue!14229 () ValueCell!3882)

(declare-fun mapRest!14229 () (Array (_ BitVec 32) ValueCell!3882))

(assert (=> mapNonEmpty!14229 (= mapRest!14223 (store mapRest!14229 mapKey!14229 mapValue!14229))))

(declare-fun b!365235 () Bool)

(assert (=> b!365235 (= e!223658 tp_is_empty!8451)))

(declare-fun b!365234 () Bool)

(assert (=> b!365234 (= e!223657 tp_is_empty!8451)))

(assert (= (and mapNonEmpty!14223 condMapEmpty!14229) mapIsEmpty!14229))

(assert (= (and mapNonEmpty!14223 (not condMapEmpty!14229)) mapNonEmpty!14229))

(assert (= (and mapNonEmpty!14229 ((_ is ValueCellFull!3882) mapValue!14229)) b!365234))

(assert (= (and mapNonEmpty!14223 ((_ is ValueCellFull!3882) mapDefault!14229)) b!365235))

(declare-fun m!362999 () Bool)

(assert (=> mapNonEmpty!14229 m!362999))

(check-sat (not bm!27272) (not b!365224) (not mapNonEmpty!14229) (not b!365227) (not b!365214) (not b!365215) tp_is_empty!8451)
(check-sat)
