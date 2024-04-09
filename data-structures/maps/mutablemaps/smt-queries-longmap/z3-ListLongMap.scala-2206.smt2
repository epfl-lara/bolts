; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36648 () Bool)

(assert start!36648)

(declare-fun b!365531 () Bool)

(declare-fun res!204451 () Bool)

(declare-fun e!223860 () Bool)

(assert (=> b!365531 (=> (not res!204451) (not e!223860))))

(declare-datatypes ((array!20881 0))(
  ( (array!20882 (arr!9910 (Array (_ BitVec 32) (_ BitVec 64))) (size!10262 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20881)

(declare-datatypes ((List!5555 0))(
  ( (Nil!5552) (Cons!5551 (h!6407 (_ BitVec 64)) (t!10713 List!5555)) )
))
(declare-fun arrayNoDuplicates!0 (array!20881 (_ BitVec 32) List!5555) Bool)

(assert (=> b!365531 (= res!204451 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5552))))

(declare-fun mapNonEmpty!14265 () Bool)

(declare-fun mapRes!14265 () Bool)

(declare-fun tp!28341 () Bool)

(declare-fun e!223858 () Bool)

(assert (=> mapNonEmpty!14265 (= mapRes!14265 (and tp!28341 e!223858))))

(declare-datatypes ((V!12405 0))(
  ( (V!12406 (val!4282 Int)) )
))
(declare-datatypes ((ValueCell!3894 0))(
  ( (ValueCellFull!3894 (v!6474 V!12405)) (EmptyCell!3894) )
))
(declare-datatypes ((array!20883 0))(
  ( (array!20884 (arr!9911 (Array (_ BitVec 32) ValueCell!3894)) (size!10263 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20883)

(declare-fun mapValue!14265 () ValueCell!3894)

(declare-fun mapKey!14265 () (_ BitVec 32))

(declare-fun mapRest!14265 () (Array (_ BitVec 32) ValueCell!3894))

(assert (=> mapNonEmpty!14265 (= (arr!9911 _values!506) (store mapRest!14265 mapKey!14265 mapValue!14265))))

(declare-fun b!365532 () Bool)

(declare-fun e!223857 () Bool)

(declare-fun tp_is_empty!8475 () Bool)

(assert (=> b!365532 (= e!223857 tp_is_empty!8475)))

(declare-fun res!204452 () Bool)

(assert (=> start!36648 (=> (not res!204452) (not e!223860))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36648 (= res!204452 (validMask!0 mask!970))))

(assert (=> start!36648 e!223860))

(assert (=> start!36648 true))

(declare-fun e!223859 () Bool)

(declare-fun array_inv!7330 (array!20883) Bool)

(assert (=> start!36648 (and (array_inv!7330 _values!506) e!223859)))

(declare-fun array_inv!7331 (array!20881) Bool)

(assert (=> start!36648 (array_inv!7331 _keys!658)))

(declare-fun b!365533 () Bool)

(assert (=> b!365533 (= e!223859 (and e!223857 mapRes!14265))))

(declare-fun condMapEmpty!14265 () Bool)

(declare-fun mapDefault!14265 () ValueCell!3894)

(assert (=> b!365533 (= condMapEmpty!14265 (= (arr!9911 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3894)) mapDefault!14265)))))

(declare-fun b!365534 () Bool)

(declare-fun res!204455 () Bool)

(assert (=> b!365534 (=> (not res!204455) (not e!223860))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365534 (= res!204455 (and (= (size!10263 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10262 _keys!658) (size!10263 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365535 () Bool)

(declare-fun res!204453 () Bool)

(assert (=> b!365535 (=> (not res!204453) (not e!223860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20881 (_ BitVec 32)) Bool)

(assert (=> b!365535 (= res!204453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14265 () Bool)

(assert (=> mapIsEmpty!14265 mapRes!14265))

(declare-fun b!365536 () Bool)

(assert (=> b!365536 (= e!223858 tp_is_empty!8475)))

(declare-fun b!365537 () Bool)

(declare-fun res!204454 () Bool)

(assert (=> b!365537 (=> (not res!204454) (not e!223860))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365537 (= res!204454 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10262 _keys!658))))))

(declare-fun b!365538 () Bool)

(declare-fun res!204456 () Bool)

(assert (=> b!365538 (=> (not res!204456) (not e!223860))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365538 (= res!204456 (validKeyInArray!0 k0!778))))

(declare-fun b!365539 () Bool)

(assert (=> b!365539 (= e!223860 (and (or (= (select (arr!9910 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9910 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!10262 _keys!658)) (bvsge (size!10262 _keys!658) #b01111111111111111111111111111111)))))

(assert (= (and start!36648 res!204452) b!365534))

(assert (= (and b!365534 res!204455) b!365535))

(assert (= (and b!365535 res!204453) b!365531))

(assert (= (and b!365531 res!204451) b!365537))

(assert (= (and b!365537 res!204454) b!365538))

(assert (= (and b!365538 res!204456) b!365539))

(assert (= (and b!365533 condMapEmpty!14265) mapIsEmpty!14265))

(assert (= (and b!365533 (not condMapEmpty!14265)) mapNonEmpty!14265))

(get-info :version)

(assert (= (and mapNonEmpty!14265 ((_ is ValueCellFull!3894) mapValue!14265)) b!365536))

(assert (= (and b!365533 ((_ is ValueCellFull!3894) mapDefault!14265)) b!365532))

(assert (= start!36648 b!365533))

(declare-fun m!363177 () Bool)

(assert (=> start!36648 m!363177))

(declare-fun m!363179 () Bool)

(assert (=> start!36648 m!363179))

(declare-fun m!363181 () Bool)

(assert (=> start!36648 m!363181))

(declare-fun m!363183 () Bool)

(assert (=> mapNonEmpty!14265 m!363183))

(declare-fun m!363185 () Bool)

(assert (=> b!365535 m!363185))

(declare-fun m!363187 () Bool)

(assert (=> b!365531 m!363187))

(declare-fun m!363189 () Bool)

(assert (=> b!365539 m!363189))

(declare-fun m!363191 () Bool)

(assert (=> b!365538 m!363191))

(check-sat (not mapNonEmpty!14265) (not b!365538) (not b!365531) (not b!365535) tp_is_empty!8475 (not start!36648))
(check-sat)
(get-model)

(declare-fun d!72235 () Bool)

(assert (=> d!72235 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!36648 d!72235))

(declare-fun d!72237 () Bool)

(assert (=> d!72237 (= (array_inv!7330 _values!506) (bvsge (size!10263 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!36648 d!72237))

(declare-fun d!72239 () Bool)

(assert (=> d!72239 (= (array_inv!7331 _keys!658) (bvsge (size!10262 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!36648 d!72239))

(declare-fun b!365575 () Bool)

(declare-fun e!223885 () Bool)

(declare-fun e!223883 () Bool)

(assert (=> b!365575 (= e!223885 e!223883)))

(declare-fun lt!169165 () (_ BitVec 64))

(assert (=> b!365575 (= lt!169165 (select (arr!9910 _keys!658) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!11379 0))(
  ( (Unit!11380) )
))
(declare-fun lt!169166 () Unit!11379)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!20881 (_ BitVec 64) (_ BitVec 32)) Unit!11379)

(assert (=> b!365575 (= lt!169166 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!169165 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!20881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365575 (arrayContainsKey!0 _keys!658 lt!169165 #b00000000000000000000000000000000)))

(declare-fun lt!169167 () Unit!11379)

(assert (=> b!365575 (= lt!169167 lt!169166)))

(declare-fun res!204479 () Bool)

(declare-datatypes ((SeekEntryResult!3492 0))(
  ( (MissingZero!3492 (index!16147 (_ BitVec 32))) (Found!3492 (index!16148 (_ BitVec 32))) (Intermediate!3492 (undefined!4304 Bool) (index!16149 (_ BitVec 32)) (x!36671 (_ BitVec 32))) (Undefined!3492) (MissingVacant!3492 (index!16150 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!20881 (_ BitVec 32)) SeekEntryResult!3492)

(assert (=> b!365575 (= res!204479 (= (seekEntryOrOpen!0 (select (arr!9910 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3492 #b00000000000000000000000000000000)))))

(assert (=> b!365575 (=> (not res!204479) (not e!223883))))

(declare-fun b!365576 () Bool)

(declare-fun e!223884 () Bool)

(assert (=> b!365576 (= e!223884 e!223885)))

(declare-fun c!53825 () Bool)

(assert (=> b!365576 (= c!53825 (validKeyInArray!0 (select (arr!9910 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72241 () Bool)

(declare-fun res!204480 () Bool)

(assert (=> d!72241 (=> res!204480 e!223884)))

(assert (=> d!72241 (= res!204480 (bvsge #b00000000000000000000000000000000 (size!10262 _keys!658)))))

(assert (=> d!72241 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!223884)))

(declare-fun b!365577 () Bool)

(declare-fun call!27281 () Bool)

(assert (=> b!365577 (= e!223883 call!27281)))

(declare-fun b!365578 () Bool)

(assert (=> b!365578 (= e!223885 call!27281)))

(declare-fun bm!27278 () Bool)

(assert (=> bm!27278 (= call!27281 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(assert (= (and d!72241 (not res!204480)) b!365576))

(assert (= (and b!365576 c!53825) b!365575))

(assert (= (and b!365576 (not c!53825)) b!365578))

(assert (= (and b!365575 res!204479) b!365577))

(assert (= (or b!365577 b!365578) bm!27278))

(declare-fun m!363209 () Bool)

(assert (=> b!365575 m!363209))

(declare-fun m!363211 () Bool)

(assert (=> b!365575 m!363211))

(declare-fun m!363213 () Bool)

(assert (=> b!365575 m!363213))

(assert (=> b!365575 m!363209))

(declare-fun m!363215 () Bool)

(assert (=> b!365575 m!363215))

(assert (=> b!365576 m!363209))

(assert (=> b!365576 m!363209))

(declare-fun m!363217 () Bool)

(assert (=> b!365576 m!363217))

(declare-fun m!363219 () Bool)

(assert (=> bm!27278 m!363219))

(assert (=> b!365535 d!72241))

(declare-fun b!365589 () Bool)

(declare-fun e!223895 () Bool)

(declare-fun e!223896 () Bool)

(assert (=> b!365589 (= e!223895 e!223896)))

(declare-fun res!204489 () Bool)

(assert (=> b!365589 (=> (not res!204489) (not e!223896))))

(declare-fun e!223897 () Bool)

(assert (=> b!365589 (= res!204489 (not e!223897))))

(declare-fun res!204487 () Bool)

(assert (=> b!365589 (=> (not res!204487) (not e!223897))))

(assert (=> b!365589 (= res!204487 (validKeyInArray!0 (select (arr!9910 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72243 () Bool)

(declare-fun res!204488 () Bool)

(assert (=> d!72243 (=> res!204488 e!223895)))

(assert (=> d!72243 (= res!204488 (bvsge #b00000000000000000000000000000000 (size!10262 _keys!658)))))

(assert (=> d!72243 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5552) e!223895)))

(declare-fun b!365590 () Bool)

(declare-fun e!223894 () Bool)

(assert (=> b!365590 (= e!223896 e!223894)))

(declare-fun c!53828 () Bool)

(assert (=> b!365590 (= c!53828 (validKeyInArray!0 (select (arr!9910 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!365591 () Bool)

(declare-fun call!27284 () Bool)

(assert (=> b!365591 (= e!223894 call!27284)))

(declare-fun b!365592 () Bool)

(assert (=> b!365592 (= e!223894 call!27284)))

(declare-fun b!365593 () Bool)

(declare-fun contains!2435 (List!5555 (_ BitVec 64)) Bool)

(assert (=> b!365593 (= e!223897 (contains!2435 Nil!5552 (select (arr!9910 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27281 () Bool)

(assert (=> bm!27281 (= call!27284 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53828 (Cons!5551 (select (arr!9910 _keys!658) #b00000000000000000000000000000000) Nil!5552) Nil!5552)))))

(assert (= (and d!72243 (not res!204488)) b!365589))

(assert (= (and b!365589 res!204487) b!365593))

(assert (= (and b!365589 res!204489) b!365590))

(assert (= (and b!365590 c!53828) b!365592))

(assert (= (and b!365590 (not c!53828)) b!365591))

(assert (= (or b!365592 b!365591) bm!27281))

(assert (=> b!365589 m!363209))

(assert (=> b!365589 m!363209))

(assert (=> b!365589 m!363217))

(assert (=> b!365590 m!363209))

(assert (=> b!365590 m!363209))

(assert (=> b!365590 m!363217))

(assert (=> b!365593 m!363209))

(assert (=> b!365593 m!363209))

(declare-fun m!363221 () Bool)

(assert (=> b!365593 m!363221))

(assert (=> bm!27281 m!363209))

(declare-fun m!363223 () Bool)

(assert (=> bm!27281 m!363223))

(assert (=> b!365531 d!72243))

(declare-fun d!72245 () Bool)

(assert (=> d!72245 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!365538 d!72245))

(declare-fun mapNonEmpty!14271 () Bool)

(declare-fun mapRes!14271 () Bool)

(declare-fun tp!28347 () Bool)

(declare-fun e!223902 () Bool)

(assert (=> mapNonEmpty!14271 (= mapRes!14271 (and tp!28347 e!223902))))

(declare-fun mapRest!14271 () (Array (_ BitVec 32) ValueCell!3894))

(declare-fun mapKey!14271 () (_ BitVec 32))

(declare-fun mapValue!14271 () ValueCell!3894)

(assert (=> mapNonEmpty!14271 (= mapRest!14265 (store mapRest!14271 mapKey!14271 mapValue!14271))))

(declare-fun condMapEmpty!14271 () Bool)

(declare-fun mapDefault!14271 () ValueCell!3894)

(assert (=> mapNonEmpty!14265 (= condMapEmpty!14271 (= mapRest!14265 ((as const (Array (_ BitVec 32) ValueCell!3894)) mapDefault!14271)))))

(declare-fun e!223903 () Bool)

(assert (=> mapNonEmpty!14265 (= tp!28341 (and e!223903 mapRes!14271))))

(declare-fun mapIsEmpty!14271 () Bool)

(assert (=> mapIsEmpty!14271 mapRes!14271))

(declare-fun b!365601 () Bool)

(assert (=> b!365601 (= e!223903 tp_is_empty!8475)))

(declare-fun b!365600 () Bool)

(assert (=> b!365600 (= e!223902 tp_is_empty!8475)))

(assert (= (and mapNonEmpty!14265 condMapEmpty!14271) mapIsEmpty!14271))

(assert (= (and mapNonEmpty!14265 (not condMapEmpty!14271)) mapNonEmpty!14271))

(assert (= (and mapNonEmpty!14271 ((_ is ValueCellFull!3894) mapValue!14271)) b!365600))

(assert (= (and mapNonEmpty!14265 ((_ is ValueCellFull!3894) mapDefault!14271)) b!365601))

(declare-fun m!363225 () Bool)

(assert (=> mapNonEmpty!14271 m!363225))

(check-sat (not b!365576) (not b!365593) (not b!365590) (not b!365575) (not bm!27281) tp_is_empty!8475 (not mapNonEmpty!14271) (not b!365589) (not bm!27278))
(check-sat)
