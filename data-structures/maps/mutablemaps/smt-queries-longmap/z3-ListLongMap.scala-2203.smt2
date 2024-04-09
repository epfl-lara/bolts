; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36618 () Bool)

(assert start!36618)

(declare-fun b!365281 () Bool)

(declare-fun res!204299 () Bool)

(declare-fun e!223689 () Bool)

(assert (=> b!365281 (=> (not res!204299) (not e!223689))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12381 0))(
  ( (V!12382 (val!4273 Int)) )
))
(declare-datatypes ((ValueCell!3885 0))(
  ( (ValueCellFull!3885 (v!6464 V!12381)) (EmptyCell!3885) )
))
(declare-datatypes ((array!20843 0))(
  ( (array!20844 (arr!9892 (Array (_ BitVec 32) ValueCell!3885)) (size!10244 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20843)

(declare-datatypes ((array!20845 0))(
  ( (array!20846 (arr!9893 (Array (_ BitVec 32) (_ BitVec 64))) (size!10245 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20845)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!365281 (= res!204299 (and (= (size!10244 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10245 _keys!658) (size!10244 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365282 () Bool)

(declare-fun res!204298 () Bool)

(assert (=> b!365282 (=> (not res!204298) (not e!223689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20845 (_ BitVec 32)) Bool)

(assert (=> b!365282 (= res!204298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365283 () Bool)

(declare-fun res!204297 () Bool)

(assert (=> b!365283 (=> (not res!204297) (not e!223689))))

(assert (=> b!365283 (= res!204297 (and (bvsle #b00000000000000000000000000000000 (size!10245 _keys!658)) (bvslt (size!10245 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!365284 () Bool)

(declare-fun e!223691 () Bool)

(assert (=> b!365284 (= e!223689 e!223691)))

(declare-fun res!204300 () Bool)

(assert (=> b!365284 (=> res!204300 e!223691)))

(declare-datatypes ((List!5548 0))(
  ( (Nil!5545) (Cons!5544 (h!6400 (_ BitVec 64)) (t!10706 List!5548)) )
))
(declare-fun contains!2433 (List!5548 (_ BitVec 64)) Bool)

(assert (=> b!365284 (= res!204300 (contains!2433 Nil!5545 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!365286 () Bool)

(declare-fun res!204296 () Bool)

(assert (=> b!365286 (=> (not res!204296) (not e!223689))))

(declare-fun noDuplicate!186 (List!5548) Bool)

(assert (=> b!365286 (= res!204296 (noDuplicate!186 Nil!5545))))

(declare-fun b!365287 () Bool)

(declare-fun e!223693 () Bool)

(declare-fun tp_is_empty!8457 () Bool)

(assert (=> b!365287 (= e!223693 tp_is_empty!8457)))

(declare-fun b!365288 () Bool)

(declare-fun e!223694 () Bool)

(declare-fun mapRes!14235 () Bool)

(assert (=> b!365288 (= e!223694 (and e!223693 mapRes!14235))))

(declare-fun condMapEmpty!14235 () Bool)

(declare-fun mapDefault!14235 () ValueCell!3885)

(assert (=> b!365288 (= condMapEmpty!14235 (= (arr!9892 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3885)) mapDefault!14235)))))

(declare-fun mapIsEmpty!14235 () Bool)

(assert (=> mapIsEmpty!14235 mapRes!14235))

(declare-fun b!365285 () Bool)

(declare-fun e!223692 () Bool)

(assert (=> b!365285 (= e!223692 tp_is_empty!8457)))

(declare-fun res!204301 () Bool)

(assert (=> start!36618 (=> (not res!204301) (not e!223689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36618 (= res!204301 (validMask!0 mask!970))))

(assert (=> start!36618 e!223689))

(assert (=> start!36618 true))

(declare-fun array_inv!7318 (array!20843) Bool)

(assert (=> start!36618 (and (array_inv!7318 _values!506) e!223694)))

(declare-fun array_inv!7319 (array!20845) Bool)

(assert (=> start!36618 (array_inv!7319 _keys!658)))

(declare-fun b!365289 () Bool)

(assert (=> b!365289 (= e!223691 (contains!2433 Nil!5545 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!14235 () Bool)

(declare-fun tp!28311 () Bool)

(assert (=> mapNonEmpty!14235 (= mapRes!14235 (and tp!28311 e!223692))))

(declare-fun mapRest!14235 () (Array (_ BitVec 32) ValueCell!3885))

(declare-fun mapValue!14235 () ValueCell!3885)

(declare-fun mapKey!14235 () (_ BitVec 32))

(assert (=> mapNonEmpty!14235 (= (arr!9892 _values!506) (store mapRest!14235 mapKey!14235 mapValue!14235))))

(assert (= (and start!36618 res!204301) b!365281))

(assert (= (and b!365281 res!204299) b!365282))

(assert (= (and b!365282 res!204298) b!365283))

(assert (= (and b!365283 res!204297) b!365286))

(assert (= (and b!365286 res!204296) b!365284))

(assert (= (and b!365284 (not res!204300)) b!365289))

(assert (= (and b!365288 condMapEmpty!14235) mapIsEmpty!14235))

(assert (= (and b!365288 (not condMapEmpty!14235)) mapNonEmpty!14235))

(get-info :version)

(assert (= (and mapNonEmpty!14235 ((_ is ValueCellFull!3885) mapValue!14235)) b!365285))

(assert (= (and b!365288 ((_ is ValueCellFull!3885) mapDefault!14235)) b!365287))

(assert (= start!36618 b!365288))

(declare-fun m!363017 () Bool)

(assert (=> mapNonEmpty!14235 m!363017))

(declare-fun m!363019 () Bool)

(assert (=> b!365286 m!363019))

(declare-fun m!363021 () Bool)

(assert (=> b!365282 m!363021))

(declare-fun m!363023 () Bool)

(assert (=> b!365289 m!363023))

(declare-fun m!363025 () Bool)

(assert (=> start!36618 m!363025))

(declare-fun m!363027 () Bool)

(assert (=> start!36618 m!363027))

(declare-fun m!363029 () Bool)

(assert (=> start!36618 m!363029))

(declare-fun m!363031 () Bool)

(assert (=> b!365284 m!363031))

(check-sat tp_is_empty!8457 (not b!365286) (not b!365282) (not mapNonEmpty!14235) (not b!365284) (not b!365289) (not start!36618))
(check-sat)
(get-model)

(declare-fun d!72215 () Bool)

(assert (=> d!72215 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36618 d!72215))

(declare-fun d!72217 () Bool)

(assert (=> d!72217 (= (array_inv!7318 _values!506) (bvsge (size!10244 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36618 d!72217))

(declare-fun d!72219 () Bool)

(assert (=> d!72219 (= (array_inv!7319 _keys!658) (bvsge (size!10245 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36618 d!72219))

(declare-fun d!72221 () Bool)

(declare-fun lt!169139 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!199 (List!5548) (InoxSet (_ BitVec 64)))

(assert (=> d!72221 (= lt!169139 (select (content!199 Nil!5545) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!223718 () Bool)

(assert (=> d!72221 (= lt!169139 e!223718)))

(declare-fun res!204325 () Bool)

(assert (=> d!72221 (=> (not res!204325) (not e!223718))))

(assert (=> d!72221 (= res!204325 ((_ is Cons!5544) Nil!5545))))

(assert (=> d!72221 (= (contains!2433 Nil!5545 #b1000000000000000000000000000000000000000000000000000000000000000) lt!169139)))

(declare-fun b!365321 () Bool)

(declare-fun e!223717 () Bool)

(assert (=> b!365321 (= e!223718 e!223717)))

(declare-fun res!204324 () Bool)

(assert (=> b!365321 (=> res!204324 e!223717)))

(assert (=> b!365321 (= res!204324 (= (h!6400 Nil!5545) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!365322 () Bool)

(assert (=> b!365322 (= e!223717 (contains!2433 (t!10706 Nil!5545) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!72221 res!204325) b!365321))

(assert (= (and b!365321 (not res!204324)) b!365322))

(declare-fun m!363049 () Bool)

(assert (=> d!72221 m!363049))

(declare-fun m!363051 () Bool)

(assert (=> d!72221 m!363051))

(declare-fun m!363053 () Bool)

(assert (=> b!365322 m!363053))

(assert (=> b!365289 d!72221))

(declare-fun d!72223 () Bool)

(declare-fun lt!169140 () Bool)

(assert (=> d!72223 (= lt!169140 (select (content!199 Nil!5545) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!223720 () Bool)

(assert (=> d!72223 (= lt!169140 e!223720)))

(declare-fun res!204327 () Bool)

(assert (=> d!72223 (=> (not res!204327) (not e!223720))))

(assert (=> d!72223 (= res!204327 ((_ is Cons!5544) Nil!5545))))

(assert (=> d!72223 (= (contains!2433 Nil!5545 #b0000000000000000000000000000000000000000000000000000000000000000) lt!169140)))

(declare-fun b!365323 () Bool)

(declare-fun e!223719 () Bool)

(assert (=> b!365323 (= e!223720 e!223719)))

(declare-fun res!204326 () Bool)

(assert (=> b!365323 (=> res!204326 e!223719)))

(assert (=> b!365323 (= res!204326 (= (h!6400 Nil!5545) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!365324 () Bool)

(assert (=> b!365324 (= e!223719 (contains!2433 (t!10706 Nil!5545) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!72223 res!204327) b!365323))

(assert (= (and b!365323 (not res!204326)) b!365324))

(assert (=> d!72223 m!363049))

(declare-fun m!363055 () Bool)

(assert (=> d!72223 m!363055))

(declare-fun m!363057 () Bool)

(assert (=> b!365324 m!363057))

(assert (=> b!365284 d!72223))

(declare-fun b!365333 () Bool)

(declare-fun e!223727 () Bool)

(declare-fun call!27278 () Bool)

(assert (=> b!365333 (= e!223727 call!27278)))

(declare-fun b!365334 () Bool)

(declare-fun e!223729 () Bool)

(assert (=> b!365334 (= e!223729 e!223727)))

(declare-fun lt!169149 () (_ BitVec 64))

(assert (=> b!365334 (= lt!169149 (select (arr!9893 _keys!658) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11377 0))(
  ( (Unit!11378) )
))
(declare-fun lt!169147 () Unit!11377)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20845 (_ BitVec 64) (_ BitVec 32)) Unit!11377)

(assert (=> b!365334 (= lt!169147 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!169149 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365334 (arrayContainsKey!0 _keys!658 lt!169149 #b00000000000000000000000000000000)))

(declare-fun lt!169148 () Unit!11377)

(assert (=> b!365334 (= lt!169148 lt!169147)))

(declare-fun res!204332 () Bool)

(declare-datatypes ((SeekEntryResult!3491 0))(
  ( (MissingZero!3491 (index!16143 (_ BitVec 32))) (Found!3491 (index!16144 (_ BitVec 32))) (Intermediate!3491 (undefined!4303 Bool) (index!16145 (_ BitVec 32)) (x!36644 (_ BitVec 32))) (Undefined!3491) (MissingVacant!3491 (index!16146 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20845 (_ BitVec 32)) SeekEntryResult!3491)

(assert (=> b!365334 (= res!204332 (= (seekEntryOrOpen!0 (select (arr!9893 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3491 #b00000000000000000000000000000000)))))

(assert (=> b!365334 (=> (not res!204332) (not e!223727))))

(declare-fun b!365335 () Bool)

(assert (=> b!365335 (= e!223729 call!27278)))

(declare-fun bm!27275 () Bool)

(assert (=> bm!27275 (= call!27278 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!365336 () Bool)

(declare-fun e!223728 () Bool)

(assert (=> b!365336 (= e!223728 e!223729)))

(declare-fun c!53822 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365336 (= c!53822 (validKeyInArray!0 (select (arr!9893 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72225 () Bool)

(declare-fun res!204333 () Bool)

(assert (=> d!72225 (=> res!204333 e!223728)))

(assert (=> d!72225 (= res!204333 (bvsge #b00000000000000000000000000000000 (size!10245 _keys!658)))))

(assert (=> d!72225 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!223728)))

(assert (= (and d!72225 (not res!204333)) b!365336))

(assert (= (and b!365336 c!53822) b!365334))

(assert (= (and b!365336 (not c!53822)) b!365335))

(assert (= (and b!365334 res!204332) b!365333))

(assert (= (or b!365333 b!365335) bm!27275))

(declare-fun m!363059 () Bool)

(assert (=> b!365334 m!363059))

(declare-fun m!363061 () Bool)

(assert (=> b!365334 m!363061))

(declare-fun m!363063 () Bool)

(assert (=> b!365334 m!363063))

(assert (=> b!365334 m!363059))

(declare-fun m!363065 () Bool)

(assert (=> b!365334 m!363065))

(declare-fun m!363067 () Bool)

(assert (=> bm!27275 m!363067))

(assert (=> b!365336 m!363059))

(assert (=> b!365336 m!363059))

(declare-fun m!363069 () Bool)

(assert (=> b!365336 m!363069))

(assert (=> b!365282 d!72225))

(declare-fun d!72227 () Bool)

(declare-fun res!204338 () Bool)

(declare-fun e!223734 () Bool)

(assert (=> d!72227 (=> res!204338 e!223734)))

(assert (=> d!72227 (= res!204338 ((_ is Nil!5545) Nil!5545))))

(assert (=> d!72227 (= (noDuplicate!186 Nil!5545) e!223734)))

(declare-fun b!365341 () Bool)

(declare-fun e!223735 () Bool)

(assert (=> b!365341 (= e!223734 e!223735)))

(declare-fun res!204339 () Bool)

(assert (=> b!365341 (=> (not res!204339) (not e!223735))))

(assert (=> b!365341 (= res!204339 (not (contains!2433 (t!10706 Nil!5545) (h!6400 Nil!5545))))))

(declare-fun b!365342 () Bool)

(assert (=> b!365342 (= e!223735 (noDuplicate!186 (t!10706 Nil!5545)))))

(assert (= (and d!72227 (not res!204338)) b!365341))

(assert (= (and b!365341 res!204339) b!365342))

(declare-fun m!363071 () Bool)

(assert (=> b!365341 m!363071))

(declare-fun m!363073 () Bool)

(assert (=> b!365342 m!363073))

(assert (=> b!365286 d!72227))

(declare-fun b!365350 () Bool)

(declare-fun e!223741 () Bool)

(assert (=> b!365350 (= e!223741 tp_is_empty!8457)))

(declare-fun mapIsEmpty!14241 () Bool)

(declare-fun mapRes!14241 () Bool)

(assert (=> mapIsEmpty!14241 mapRes!14241))

(declare-fun b!365349 () Bool)

(declare-fun e!223740 () Bool)

(assert (=> b!365349 (= e!223740 tp_is_empty!8457)))

(declare-fun condMapEmpty!14241 () Bool)

(declare-fun mapDefault!14241 () ValueCell!3885)

(assert (=> mapNonEmpty!14235 (= condMapEmpty!14241 (= mapRest!14235 ((as const (Array (_ BitVec 32) ValueCell!3885)) mapDefault!14241)))))

(assert (=> mapNonEmpty!14235 (= tp!28311 (and e!223741 mapRes!14241))))

(declare-fun mapNonEmpty!14241 () Bool)

(declare-fun tp!28317 () Bool)

(assert (=> mapNonEmpty!14241 (= mapRes!14241 (and tp!28317 e!223740))))

(declare-fun mapValue!14241 () ValueCell!3885)

(declare-fun mapKey!14241 () (_ BitVec 32))

(declare-fun mapRest!14241 () (Array (_ BitVec 32) ValueCell!3885))

(assert (=> mapNonEmpty!14241 (= mapRest!14235 (store mapRest!14241 mapKey!14241 mapValue!14241))))

(assert (= (and mapNonEmpty!14235 condMapEmpty!14241) mapIsEmpty!14241))

(assert (= (and mapNonEmpty!14235 (not condMapEmpty!14241)) mapNonEmpty!14241))

(assert (= (and mapNonEmpty!14241 ((_ is ValueCellFull!3885) mapValue!14241)) b!365349))

(assert (= (and mapNonEmpty!14235 ((_ is ValueCellFull!3885) mapDefault!14241)) b!365350))

(declare-fun m!363075 () Bool)

(assert (=> mapNonEmpty!14241 m!363075))

(check-sat (not d!72221) (not mapNonEmpty!14241) (not b!365324) (not b!365334) (not b!365342) tp_is_empty!8457 (not b!365336) (not b!365341) (not d!72223) (not b!365322) (not bm!27275))
(check-sat)
