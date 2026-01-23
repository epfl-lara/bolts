; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261096 () Bool)

(assert start!261096)

(declare-fun b!2680023 () Bool)

(declare-fun b_free!75609 () Bool)

(declare-fun b_next!76313 () Bool)

(assert (=> b!2680023 (= b_free!75609 (not b_next!76313))))

(declare-fun tp!847343 () Bool)

(declare-fun b_and!198405 () Bool)

(assert (=> b!2680023 (= tp!847343 b_and!198405)))

(declare-fun b!2680019 () Bool)

(declare-fun b_free!75611 () Bool)

(declare-fun b_next!76315 () Bool)

(assert (=> b!2680019 (= b_free!75611 (not b_next!76315))))

(declare-fun tp!847341 () Bool)

(declare-fun b_and!198407 () Bool)

(assert (=> b!2680019 (= tp!847341 b_and!198407)))

(declare-fun mapNonEmpty!15840 () Bool)

(declare-fun mapRes!15840 () Bool)

(declare-fun tp!847339 () Bool)

(declare-fun tp!847340 () Bool)

(assert (=> mapNonEmpty!15840 (= mapRes!15840 (and tp!847339 tp!847340))))

(declare-datatypes ((C!15876 0))(
  ( (C!15877 (val!9872 Int)) )
))
(declare-datatypes ((Regex!7859 0))(
  ( (ElementMatch!7859 (c!431791 C!15876)) (Concat!12793 (regOne!16230 Regex!7859) (regTwo!16230 Regex!7859)) (EmptyExpr!7859) (Star!7859 (reg!8188 Regex!7859)) (EmptyLang!7859) (Union!7859 (regOne!16231 Regex!7859) (regTwo!16231 Regex!7859)) )
))
(declare-datatypes ((List!30939 0))(
  ( (Nil!30839) (Cons!30839 (h!36259 Regex!7859) (t!224440 List!30939)) )
))
(declare-datatypes ((Context!4266 0))(
  ( (Context!4267 (exprs!2633 List!30939)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!4150 0))(
  ( (tuple3!4151 (_1!17696 (InoxSet Context!4266)) (_2!17696 Int) (_3!2545 Int)) )
))
(declare-datatypes ((tuple2!30302 0))(
  ( (tuple2!30303 (_1!17697 tuple3!4150) (_2!17697 Int)) )
))
(declare-datatypes ((List!30940 0))(
  ( (Nil!30840) (Cons!30840 (h!36260 tuple2!30302) (t!224441 List!30940)) )
))
(declare-fun mapRest!15840 () (Array (_ BitVec 32) List!30940))

(declare-fun mapKey!15840 () (_ BitVec 32))

(declare-datatypes ((array!12321 0))(
  ( (array!12322 (arr!5502 (Array (_ BitVec 32) (_ BitVec 64))) (size!23840 (_ BitVec 32))) )
))
(declare-datatypes ((array!12323 0))(
  ( (array!12324 (arr!5503 (Array (_ BitVec 32) List!30940)) (size!23841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6908 0))(
  ( (LongMapFixedSize!6909 (defaultEntry!3839 Int) (mask!9120 (_ BitVec 32)) (extraKeys!3703 (_ BitVec 32)) (zeroValue!3713 List!30940) (minValue!3713 List!30940) (_size!6951 (_ BitVec 32)) (_keys!3754 array!12321) (_values!3735 array!12323) (_vacant!3515 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13625 0))(
  ( (Cell!13626 (v!32689 LongMapFixedSize!6908)) )
))
(declare-datatypes ((MutLongMap!3454 0))(
  ( (LongMap!3454 (underlying!7111 Cell!13625)) (MutLongMapExt!3453 (__x!19710 Int)) )
))
(declare-datatypes ((Cell!13627 0))(
  ( (Cell!13628 (v!32690 MutLongMap!3454)) )
))
(declare-datatypes ((Hashable!3370 0))(
  ( (HashableExt!3369 (__x!19711 Int)) )
))
(declare-datatypes ((MutableMap!3360 0))(
  ( (MutableMapExt!3359 (__x!19712 Int)) (HashMap!3360 (underlying!7112 Cell!13627) (hashF!5402 Hashable!3370) (_size!6952 (_ BitVec 32)) (defaultValue!3531 Int)) )
))
(declare-fun m!3524 () MutableMap!3360)

(declare-fun mapValue!15840 () List!30940)

(assert (=> mapNonEmpty!15840 (= (arr!5503 (_values!3735 (v!32689 (underlying!7111 (v!32690 (underlying!7112 m!3524)))))) (store mapRest!15840 mapKey!15840 mapValue!15840))))

(declare-fun b!2680018 () Bool)

(declare-fun e!1689352 () Bool)

(declare-fun tp!847344 () Bool)

(assert (=> b!2680018 (= e!1689352 (and tp!847344 mapRes!15840))))

(declare-fun condMapEmpty!15840 () Bool)

(declare-fun mapDefault!15840 () List!30940)

(assert (=> b!2680018 (= condMapEmpty!15840 (= (arr!5503 (_values!3735 (v!32689 (underlying!7111 (v!32690 (underlying!7112 m!3524)))))) ((as const (Array (_ BitVec 32) List!30940)) mapDefault!15840)))))

(declare-fun e!1689351 () Bool)

(declare-fun e!1689348 () Bool)

(assert (=> b!2680019 (= e!1689351 (and e!1689348 tp!847341))))

(declare-fun b!2680020 () Bool)

(declare-fun e!1689354 () Bool)

(declare-fun e!1689350 () Bool)

(assert (=> b!2680020 (= e!1689354 e!1689350)))

(declare-fun res!1126675 () Bool)

(declare-fun e!1689355 () Bool)

(assert (=> start!261096 (=> (not res!1126675) (not e!1689355))))

(get-info :version)

(assert (=> start!261096 (= res!1126675 ((_ is HashMap!3360) m!3524))))

(assert (=> start!261096 e!1689355))

(assert (=> start!261096 e!1689351))

(declare-fun b!2680021 () Bool)

(declare-fun e!1689349 () Bool)

(assert (=> b!2680021 (= e!1689349 e!1689354)))

(declare-fun b!2680022 () Bool)

(assert (=> b!2680022 (= e!1689355 false)))

(declare-fun lt!944048 () Bool)

(declare-fun valid!2675 (MutableMap!3360) Bool)

(assert (=> b!2680022 (= lt!944048 (valid!2675 m!3524))))

(declare-fun mapIsEmpty!15840 () Bool)

(assert (=> mapIsEmpty!15840 mapRes!15840))

(declare-fun tp!847342 () Bool)

(declare-fun tp!847338 () Bool)

(declare-fun array_inv!3927 (array!12321) Bool)

(declare-fun array_inv!3928 (array!12323) Bool)

(assert (=> b!2680023 (= e!1689350 (and tp!847343 tp!847342 tp!847338 (array_inv!3927 (_keys!3754 (v!32689 (underlying!7111 (v!32690 (underlying!7112 m!3524)))))) (array_inv!3928 (_values!3735 (v!32689 (underlying!7111 (v!32690 (underlying!7112 m!3524)))))) e!1689352))))

(declare-fun b!2680024 () Bool)

(declare-fun lt!944047 () MutLongMap!3454)

(assert (=> b!2680024 (= e!1689348 (and e!1689349 ((_ is LongMap!3454) lt!944047)))))

(assert (=> b!2680024 (= lt!944047 (v!32690 (underlying!7112 m!3524)))))

(assert (= (and start!261096 res!1126675) b!2680022))

(assert (= (and b!2680018 condMapEmpty!15840) mapIsEmpty!15840))

(assert (= (and b!2680018 (not condMapEmpty!15840)) mapNonEmpty!15840))

(assert (= b!2680023 b!2680018))

(assert (= b!2680020 b!2680023))

(assert (= b!2680021 b!2680020))

(assert (= (and b!2680024 ((_ is LongMap!3454) (v!32690 (underlying!7112 m!3524)))) b!2680021))

(assert (= b!2680019 b!2680024))

(assert (= (and start!261096 ((_ is HashMap!3360) m!3524)) b!2680019))

(declare-fun m!3048387 () Bool)

(assert (=> mapNonEmpty!15840 m!3048387))

(declare-fun m!3048389 () Bool)

(assert (=> b!2680022 m!3048389))

(declare-fun m!3048391 () Bool)

(assert (=> b!2680023 m!3048391))

(declare-fun m!3048393 () Bool)

(assert (=> b!2680023 m!3048393))

(check-sat (not b!2680023) b_and!198407 (not b_next!76315) b_and!198405 (not b!2680022) (not mapNonEmpty!15840) (not b_next!76313) (not b!2680018))
(check-sat b_and!198405 b_and!198407 (not b_next!76313) (not b_next!76315))
