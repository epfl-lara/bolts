; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218188 () Bool)

(assert start!218188)

(declare-fun b!2239458 () Bool)

(declare-fun b_free!64993 () Bool)

(declare-fun b_next!65697 () Bool)

(assert (=> b!2239458 (= b_free!64993 (not b_next!65697))))

(declare-fun tp!705286 () Bool)

(declare-fun b_and!175005 () Bool)

(assert (=> b!2239458 (= tp!705286 b_and!175005)))

(declare-fun b!2239464 () Bool)

(declare-fun b_free!64995 () Bool)

(declare-fun b_next!65699 () Bool)

(assert (=> b!2239464 (= b_free!64995 (not b_next!65699))))

(declare-fun tp!705283 () Bool)

(declare-fun b_and!175007 () Bool)

(assert (=> b!2239464 (= tp!705283 b_and!175007)))

(declare-fun b!2239455 () Bool)

(declare-fun e!1431680 () Bool)

(declare-fun e!1431676 () Bool)

(declare-datatypes ((C!13136 0))(
  ( (C!13137 (val!7616 Int)) )
))
(declare-datatypes ((Regex!6495 0))(
  ( (ElementMatch!6495 (c!356704 C!13136)) (Concat!10833 (regOne!13502 Regex!6495) (regTwo!13502 Regex!6495)) (EmptyExpr!6495) (Star!6495 (reg!6824 Regex!6495)) (EmptyLang!6495) (Union!6495 (regOne!13503 Regex!6495) (regTwo!13503 Regex!6495)) )
))
(declare-datatypes ((List!26479 0))(
  ( (Nil!26385) (Cons!26385 (h!31786 Regex!6495) (t!199911 List!26479)) )
))
(declare-datatypes ((Context!4086 0))(
  ( (Context!4087 (exprs!2543 List!26479)) )
))
(declare-datatypes ((tuple3!4062 0))(
  ( (tuple3!4063 (_1!15396 Regex!6495) (_2!15396 Context!4086) (_3!2501 C!13136)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25790 0))(
  ( (tuple2!25791 (_1!15397 tuple3!4062) (_2!15397 (InoxSet Context!4086))) )
))
(declare-datatypes ((array!10932 0))(
  ( (array!10933 (arr!4853 (Array (_ BitVec 32) (_ BitVec 64))) (size!20634 (_ BitVec 32))) )
))
(declare-datatypes ((List!26480 0))(
  ( (Nil!26386) (Cons!26386 (h!31787 tuple2!25790) (t!199912 List!26480)) )
))
(declare-datatypes ((array!10934 0))(
  ( (array!10935 (arr!4854 (Array (_ BitVec 32) List!26480)) (size!20635 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6266 0))(
  ( (LongMapFixedSize!6267 (defaultEntry!3498 Int) (mask!7734 (_ BitVec 32)) (extraKeys!3381 (_ BitVec 32)) (zeroValue!3391 List!26480) (minValue!3391 List!26480) (_size!6313 (_ BitVec 32)) (_keys!3430 array!10932) (_values!3413 array!10934) (_vacant!3194 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12349 0))(
  ( (Cell!12350 (v!30007 LongMapFixedSize!6266)) )
))
(declare-datatypes ((MutLongMap!3133 0))(
  ( (LongMap!3133 (underlying!6467 Cell!12349)) (MutLongMapExt!3132 (__x!17625 Int)) )
))
(declare-fun lt!833304 () MutLongMap!3133)

(get-info :version)

(assert (=> b!2239455 (= e!1431680 (and e!1431676 ((_ is LongMap!3133) lt!833304)))))

(declare-datatypes ((Hashable!3043 0))(
  ( (HashableExt!3042 (__x!17626 Int)) )
))
(declare-datatypes ((Cell!12351 0))(
  ( (Cell!12352 (v!30008 MutLongMap!3133)) )
))
(declare-datatypes ((MutableMap!3043 0))(
  ( (MutableMapExt!3042 (__x!17627 Int)) (HashMap!3043 (underlying!6468 Cell!12351) (hashF!4966 Hashable!3043) (_size!6314 (_ BitVec 32)) (defaultValue!3205 Int)) )
))
(declare-datatypes ((CacheDown!2132 0))(
  ( (CacheDown!2133 (cache!3424 MutableMap!3043)) )
))
(declare-fun thiss!28743 () CacheDown!2132)

(assert (=> b!2239455 (= lt!833304 (v!30008 (underlying!6468 (cache!3424 thiss!28743))))))

(declare-fun b!2239456 () Bool)

(declare-fun e!1431674 () Bool)

(declare-fun tp!705288 () Bool)

(assert (=> b!2239456 (= e!1431674 tp!705288)))

(declare-fun b!2239457 () Bool)

(declare-fun e!1431682 () Bool)

(assert (=> b!2239457 (= e!1431682 false)))

(declare-fun ctx!48 () Context!4086)

(declare-fun r!4750 () Regex!6495)

(declare-fun lt!833303 () Bool)

(declare-fun a!970 () C!13136)

(declare-fun contains!4446 (MutableMap!3043 tuple3!4062) Bool)

(assert (=> b!2239457 (= lt!833303 (contains!4446 (cache!3424 thiss!28743) (tuple3!4063 r!4750 ctx!48 a!970)))))

(declare-fun mapIsEmpty!14699 () Bool)

(declare-fun mapRes!14699 () Bool)

(assert (=> mapIsEmpty!14699 mapRes!14699))

(declare-fun e!1431679 () Bool)

(assert (=> b!2239458 (= e!1431679 (and e!1431680 tp!705286))))

(declare-fun b!2239459 () Bool)

(declare-fun e!1431683 () Bool)

(declare-fun tp_is_empty!10211 () Bool)

(assert (=> b!2239459 (= e!1431683 tp_is_empty!10211)))

(declare-fun b!2239460 () Bool)

(declare-fun tp!705294 () Bool)

(declare-fun tp!705291 () Bool)

(assert (=> b!2239460 (= e!1431683 (and tp!705294 tp!705291))))

(declare-fun b!2239461 () Bool)

(declare-fun e!1431677 () Bool)

(assert (=> b!2239461 (= e!1431677 e!1431679)))

(declare-fun b!2239462 () Bool)

(declare-fun tp!705285 () Bool)

(assert (=> b!2239462 (= e!1431683 tp!705285)))

(declare-fun b!2239463 () Bool)

(declare-fun e!1431684 () Bool)

(assert (=> b!2239463 (= e!1431676 e!1431684)))

(declare-fun e!1431675 () Bool)

(declare-fun e!1431678 () Bool)

(declare-fun tp!705290 () Bool)

(declare-fun tp!705293 () Bool)

(declare-fun array_inv!3485 (array!10932) Bool)

(declare-fun array_inv!3486 (array!10934) Bool)

(assert (=> b!2239464 (= e!1431675 (and tp!705283 tp!705290 tp!705293 (array_inv!3485 (_keys!3430 (v!30007 (underlying!6467 (v!30008 (underlying!6468 (cache!3424 thiss!28743))))))) (array_inv!3486 (_values!3413 (v!30007 (underlying!6467 (v!30008 (underlying!6468 (cache!3424 thiss!28743))))))) e!1431678))))

(declare-fun b!2239465 () Bool)

(assert (=> b!2239465 (= e!1431684 e!1431675)))

(declare-fun mapNonEmpty!14699 () Bool)

(declare-fun tp!705292 () Bool)

(declare-fun tp!705289 () Bool)

(assert (=> mapNonEmpty!14699 (= mapRes!14699 (and tp!705292 tp!705289))))

(declare-fun mapKey!14699 () (_ BitVec 32))

(declare-fun mapValue!14699 () List!26480)

(declare-fun mapRest!14699 () (Array (_ BitVec 32) List!26480))

(assert (=> mapNonEmpty!14699 (= (arr!4854 (_values!3413 (v!30007 (underlying!6467 (v!30008 (underlying!6468 (cache!3424 thiss!28743))))))) (store mapRest!14699 mapKey!14699 mapValue!14699))))

(declare-fun res!957494 () Bool)

(assert (=> start!218188 (=> (not res!957494) (not e!1431682))))

(declare-fun validCacheMapDown!338 (MutableMap!3043) Bool)

(assert (=> start!218188 (= res!957494 (validCacheMapDown!338 (cache!3424 thiss!28743)))))

(assert (=> start!218188 e!1431682))

(declare-fun inv!35838 (CacheDown!2132) Bool)

(assert (=> start!218188 (and (inv!35838 thiss!28743) e!1431677)))

(assert (=> start!218188 e!1431683))

(declare-fun inv!35839 (Context!4086) Bool)

(assert (=> start!218188 (and (inv!35839 ctx!48) e!1431674)))

(assert (=> start!218188 tp_is_empty!10211))

(declare-fun b!2239466 () Bool)

(declare-fun tp!705287 () Bool)

(assert (=> b!2239466 (= e!1431678 (and tp!705287 mapRes!14699))))

(declare-fun condMapEmpty!14699 () Bool)

(declare-fun mapDefault!14699 () List!26480)

(assert (=> b!2239466 (= condMapEmpty!14699 (= (arr!4854 (_values!3413 (v!30007 (underlying!6467 (v!30008 (underlying!6468 (cache!3424 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26480)) mapDefault!14699)))))

(declare-fun b!2239467 () Bool)

(declare-fun tp!705282 () Bool)

(declare-fun tp!705284 () Bool)

(assert (=> b!2239467 (= e!1431683 (and tp!705282 tp!705284))))

(assert (= (and start!218188 res!957494) b!2239457))

(assert (= (and b!2239466 condMapEmpty!14699) mapIsEmpty!14699))

(assert (= (and b!2239466 (not condMapEmpty!14699)) mapNonEmpty!14699))

(assert (= b!2239464 b!2239466))

(assert (= b!2239465 b!2239464))

(assert (= b!2239463 b!2239465))

(assert (= (and b!2239455 ((_ is LongMap!3133) (v!30008 (underlying!6468 (cache!3424 thiss!28743))))) b!2239463))

(assert (= b!2239458 b!2239455))

(assert (= (and b!2239461 ((_ is HashMap!3043) (cache!3424 thiss!28743))) b!2239458))

(assert (= start!218188 b!2239461))

(assert (= (and start!218188 ((_ is ElementMatch!6495) r!4750)) b!2239459))

(assert (= (and start!218188 ((_ is Concat!10833) r!4750)) b!2239460))

(assert (= (and start!218188 ((_ is Star!6495) r!4750)) b!2239462))

(assert (= (and start!218188 ((_ is Union!6495) r!4750)) b!2239467))

(assert (= start!218188 b!2239456))

(declare-fun m!2672201 () Bool)

(assert (=> b!2239457 m!2672201))

(declare-fun m!2672203 () Bool)

(assert (=> b!2239464 m!2672203))

(declare-fun m!2672205 () Bool)

(assert (=> b!2239464 m!2672205))

(declare-fun m!2672207 () Bool)

(assert (=> mapNonEmpty!14699 m!2672207))

(declare-fun m!2672209 () Bool)

(assert (=> start!218188 m!2672209))

(declare-fun m!2672211 () Bool)

(assert (=> start!218188 m!2672211))

(declare-fun m!2672213 () Bool)

(assert (=> start!218188 m!2672213))

(check-sat (not mapNonEmpty!14699) (not b!2239464) (not b!2239466) (not b!2239457) tp_is_empty!10211 b_and!175007 (not start!218188) (not b_next!65699) (not b!2239467) (not b!2239456) (not b!2239462) (not b_next!65697) (not b!2239460) b_and!175005)
(check-sat b_and!175007 b_and!175005 (not b_next!65697) (not b_next!65699))
