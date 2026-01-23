; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218352 () Bool)

(assert start!218352)

(declare-fun b!2241165 () Bool)

(declare-fun b_free!65089 () Bool)

(declare-fun b_next!65793 () Bool)

(assert (=> b!2241165 (= b_free!65089 (not b_next!65793))))

(declare-fun tp!706528 () Bool)

(declare-fun b_and!175109 () Bool)

(assert (=> b!2241165 (= tp!706528 b_and!175109)))

(declare-fun b!2241166 () Bool)

(declare-fun b_free!65091 () Bool)

(declare-fun b_next!65795 () Bool)

(assert (=> b!2241166 (= b_free!65091 (not b_next!65795))))

(declare-fun tp!706525 () Bool)

(declare-fun b_and!175111 () Bool)

(assert (=> b!2241166 (= tp!706525 b_and!175111)))

(declare-fun b!2241157 () Bool)

(declare-fun e!1433047 () Bool)

(declare-fun e!1433050 () Bool)

(assert (=> b!2241157 (= e!1433047 e!1433050)))

(declare-fun b!2241158 () Bool)

(declare-fun e!1433043 () Bool)

(assert (=> b!2241158 (= e!1433050 e!1433043)))

(declare-fun b!2241159 () Bool)

(declare-fun e!1433046 () Bool)

(declare-fun e!1433049 () Bool)

(assert (=> b!2241159 (= e!1433046 e!1433049)))

(declare-fun b!2241160 () Bool)

(declare-fun e!1433045 () Bool)

(assert (=> b!2241160 (= e!1433045 false)))

(declare-fun lt!834140 () Bool)

(declare-datatypes ((C!13184 0))(
  ( (C!13185 (val!7640 Int)) )
))
(declare-datatypes ((Regex!6519 0))(
  ( (ElementMatch!6519 (c!356848 C!13184)) (Concat!10857 (regOne!13550 Regex!6519) (regTwo!13550 Regex!6519)) (EmptyExpr!6519) (Star!6519 (reg!6848 Regex!6519)) (EmptyLang!6519) (Union!6519 (regOne!13551 Regex!6519) (regTwo!13551 Regex!6519)) )
))
(declare-datatypes ((List!26534 0))(
  ( (Nil!26440) (Cons!26440 (h!31841 Regex!6519) (t!199970 List!26534)) )
))
(declare-datatypes ((Context!4134 0))(
  ( (Context!4135 (exprs!2567 List!26534)) )
))
(declare-datatypes ((tuple2!25882 0))(
  ( (tuple2!25883 (_1!15451 Context!4134) (_2!15451 C!13184)) )
))
(declare-datatypes ((array!11042 0))(
  ( (array!11043 (arr!4901 (Array (_ BitVec 32) (_ BitVec 64))) (size!20682 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25884 0))(
  ( (tuple2!25885 (_1!15452 tuple2!25882) (_2!15452 (InoxSet Context!4134))) )
))
(declare-datatypes ((List!26535 0))(
  ( (Nil!26441) (Cons!26441 (h!31842 tuple2!25884) (t!199971 List!26535)) )
))
(declare-datatypes ((array!11044 0))(
  ( (array!11045 (arr!4902 (Array (_ BitVec 32) List!26535)) (size!20683 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6314 0))(
  ( (LongMapFixedSize!6315 (defaultEntry!3522 Int) (mask!7770 (_ BitVec 32)) (extraKeys!3405 (_ BitVec 32)) (zeroValue!3415 List!26535) (minValue!3415 List!26535) (_size!6361 (_ BitVec 32)) (_keys!3454 array!11042) (_values!3437 array!11044) (_vacant!3218 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12445 0))(
  ( (Cell!12446 (v!30074 LongMapFixedSize!6314)) )
))
(declare-datatypes ((MutLongMap!3157 0))(
  ( (LongMap!3157 (underlying!6515 Cell!12445)) (MutLongMapExt!3156 (__x!17697 Int)) )
))
(declare-datatypes ((Cell!12447 0))(
  ( (Cell!12448 (v!30075 MutLongMap!3157)) )
))
(declare-datatypes ((Hashable!3067 0))(
  ( (HashableExt!3066 (__x!17698 Int)) )
))
(declare-datatypes ((MutableMap!3067 0))(
  ( (MutableMapExt!3066 (__x!17699 Int)) (HashMap!3067 (underlying!6516 Cell!12447) (hashF!4990 Hashable!3067) (_size!6362 (_ BitVec 32)) (defaultValue!3229 Int)) )
))
(declare-datatypes ((CacheUp!2004 0))(
  ( (CacheUp!2005 (cache!3448 MutableMap!3067)) )
))
(declare-fun thiss!28603 () CacheUp!2004)

(declare-fun lambda!84796 () Int)

(declare-fun forall!5444 (List!26535 Int) Bool)

(declare-datatypes ((ListMap!875 0))(
  ( (ListMap!876 (toList!1390 List!26535)) )
))
(declare-fun map!5471 (MutableMap!3067) ListMap!875)

(assert (=> b!2241160 (= lt!834140 (forall!5444 (toList!1390 (map!5471 (cache!3448 thiss!28603))) lambda!84796))))

(declare-fun b!2241161 () Bool)

(declare-fun e!1433044 () Bool)

(declare-fun tp!706530 () Bool)

(assert (=> b!2241161 (= e!1433044 tp!706530)))

(declare-fun b!2241162 () Bool)

(declare-fun e!1433051 () Bool)

(declare-fun lt!834141 () MutLongMap!3157)

(get-info :version)

(assert (=> b!2241162 (= e!1433051 (and e!1433047 ((_ is LongMap!3157) lt!834141)))))

(assert (=> b!2241162 (= lt!834141 (v!30075 (underlying!6516 (cache!3448 thiss!28603))))))

(declare-fun res!957876 () Bool)

(assert (=> start!218352 (=> (not res!957876) (not e!1433045))))

(declare-fun validCacheMapUp!301 (MutableMap!3067) Bool)

(assert (=> start!218352 (= res!957876 (validCacheMapUp!301 (cache!3448 thiss!28603)))))

(assert (=> start!218352 e!1433045))

(declare-fun inv!35910 (CacheUp!2004) Bool)

(assert (=> start!218352 (and (inv!35910 thiss!28603) e!1433046)))

(declare-fun ctx!36 () Context!4134)

(declare-fun inv!35911 (Context!4134) Bool)

(assert (=> start!218352 (and (inv!35911 ctx!36) e!1433044)))

(declare-fun tp_is_empty!10259 () Bool)

(assert (=> start!218352 tp_is_empty!10259))

(declare-fun b!2241163 () Bool)

(declare-fun res!957877 () Bool)

(assert (=> b!2241163 (=> (not res!957877) (not e!1433045))))

(declare-fun valid!2372 (MutableMap!3067) Bool)

(assert (=> b!2241163 (= res!957877 (valid!2372 (cache!3448 thiss!28603)))))

(declare-fun b!2241164 () Bool)

(declare-fun res!957875 () Bool)

(assert (=> b!2241164 (=> (not res!957875) (not e!1433045))))

(assert (=> b!2241164 (= res!957875 ((_ is HashMap!3067) (cache!3448 thiss!28603)))))

(declare-fun tp!706523 () Bool)

(declare-fun e!1433052 () Bool)

(declare-fun tp!706524 () Bool)

(declare-fun array_inv!3519 (array!11042) Bool)

(declare-fun array_inv!3520 (array!11044) Bool)

(assert (=> b!2241165 (= e!1433043 (and tp!706528 tp!706524 tp!706523 (array_inv!3519 (_keys!3454 (v!30074 (underlying!6515 (v!30075 (underlying!6516 (cache!3448 thiss!28603))))))) (array_inv!3520 (_values!3437 (v!30074 (underlying!6515 (v!30075 (underlying!6516 (cache!3448 thiss!28603))))))) e!1433052))))

(declare-fun mapIsEmpty!14792 () Bool)

(declare-fun mapRes!14792 () Bool)

(assert (=> mapIsEmpty!14792 mapRes!14792))

(declare-fun mapNonEmpty!14792 () Bool)

(declare-fun tp!706526 () Bool)

(declare-fun tp!706527 () Bool)

(assert (=> mapNonEmpty!14792 (= mapRes!14792 (and tp!706526 tp!706527))))

(declare-fun mapKey!14792 () (_ BitVec 32))

(declare-fun mapValue!14792 () List!26535)

(declare-fun mapRest!14792 () (Array (_ BitVec 32) List!26535))

(assert (=> mapNonEmpty!14792 (= (arr!4902 (_values!3437 (v!30074 (underlying!6515 (v!30075 (underlying!6516 (cache!3448 thiss!28603))))))) (store mapRest!14792 mapKey!14792 mapValue!14792))))

(assert (=> b!2241166 (= e!1433049 (and e!1433051 tp!706525))))

(declare-fun b!2241167 () Bool)

(declare-fun tp!706529 () Bool)

(assert (=> b!2241167 (= e!1433052 (and tp!706529 mapRes!14792))))

(declare-fun condMapEmpty!14792 () Bool)

(declare-fun mapDefault!14792 () List!26535)

(assert (=> b!2241167 (= condMapEmpty!14792 (= (arr!4902 (_values!3437 (v!30074 (underlying!6515 (v!30075 (underlying!6516 (cache!3448 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26535)) mapDefault!14792)))))

(declare-fun b!2241168 () Bool)

(declare-fun res!957878 () Bool)

(assert (=> b!2241168 (=> (not res!957878) (not e!1433045))))

(declare-fun a!922 () C!13184)

(declare-fun contains!4493 (MutableMap!3067 tuple2!25882) Bool)

(assert (=> b!2241168 (= res!957878 (contains!4493 (cache!3448 thiss!28603) (tuple2!25883 ctx!36 a!922)))))

(assert (= (and start!218352 res!957876) b!2241168))

(assert (= (and b!2241168 res!957878) b!2241164))

(assert (= (and b!2241164 res!957875) b!2241163))

(assert (= (and b!2241163 res!957877) b!2241160))

(assert (= (and b!2241167 condMapEmpty!14792) mapIsEmpty!14792))

(assert (= (and b!2241167 (not condMapEmpty!14792)) mapNonEmpty!14792))

(assert (= b!2241165 b!2241167))

(assert (= b!2241158 b!2241165))

(assert (= b!2241157 b!2241158))

(assert (= (and b!2241162 ((_ is LongMap!3157) (v!30075 (underlying!6516 (cache!3448 thiss!28603))))) b!2241157))

(assert (= b!2241166 b!2241162))

(assert (= (and b!2241159 ((_ is HashMap!3067) (cache!3448 thiss!28603))) b!2241166))

(assert (= start!218352 b!2241159))

(assert (= start!218352 b!2241161))

(declare-fun m!2673446 () Bool)

(assert (=> b!2241165 m!2673446))

(declare-fun m!2673448 () Bool)

(assert (=> b!2241165 m!2673448))

(declare-fun m!2673450 () Bool)

(assert (=> start!218352 m!2673450))

(declare-fun m!2673452 () Bool)

(assert (=> start!218352 m!2673452))

(declare-fun m!2673454 () Bool)

(assert (=> start!218352 m!2673454))

(declare-fun m!2673456 () Bool)

(assert (=> b!2241163 m!2673456))

(declare-fun m!2673458 () Bool)

(assert (=> b!2241160 m!2673458))

(declare-fun m!2673460 () Bool)

(assert (=> b!2241160 m!2673460))

(declare-fun m!2673462 () Bool)

(assert (=> mapNonEmpty!14792 m!2673462))

(declare-fun m!2673464 () Bool)

(assert (=> b!2241168 m!2673464))

(check-sat (not b_next!65795) (not b!2241167) (not start!218352) b_and!175111 (not b!2241161) (not mapNonEmpty!14792) (not b!2241168) (not b!2241165) (not b!2241160) b_and!175109 (not b!2241163) (not b_next!65793) tp_is_empty!10259)
(check-sat b_and!175111 b_and!175109 (not b_next!65793) (not b_next!65795))
