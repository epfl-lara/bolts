; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507918 () Bool)

(assert start!507918)

(declare-fun b!4860359 () Bool)

(declare-fun b_free!130411 () Bool)

(declare-fun b_next!131201 () Bool)

(assert (=> b!4860359 (= b_free!130411 (not b_next!131201))))

(declare-fun tp!1367105 () Bool)

(declare-fun b_and!342263 () Bool)

(assert (=> b!4860359 (= tp!1367105 b_and!342263)))

(declare-fun b!4860358 () Bool)

(declare-fun b_free!130413 () Bool)

(declare-fun b_next!131203 () Bool)

(assert (=> b!4860358 (= b_free!130413 (not b_next!131203))))

(declare-fun tp!1367099 () Bool)

(declare-fun b_and!342265 () Bool)

(assert (=> b!4860358 (= tp!1367099 b_and!342265)))

(declare-fun b!4860352 () Bool)

(declare-fun res!2074939 () Bool)

(declare-fun e!3038595 () Bool)

(assert (=> b!4860352 (=> (not res!2074939) (not e!3038595))))

(declare-datatypes ((C!26352 0))(
  ( (C!26353 (val!22438 Int)) )
))
(declare-datatypes ((Regex!13077 0))(
  ( (ElementMatch!13077 (c!826809 C!26352)) (Concat!21396 (regOne!26666 Regex!13077) (regTwo!26666 Regex!13077)) (EmptyExpr!13077) (Star!13077 (reg!13406 Regex!13077)) (EmptyLang!13077) (Union!13077 (regOne!26667 Regex!13077) (regTwo!26667 Regex!13077)) )
))
(declare-datatypes ((List!55909 0))(
  ( (Nil!55785) (Cons!55785 (h!62233 Regex!13077) (t!363529 List!55909)) )
))
(declare-datatypes ((Context!5934 0))(
  ( (Context!5935 (exprs!3467 List!55909)) )
))
(declare-datatypes ((tuple2!59588 0))(
  ( (tuple2!59589 (_1!33091 Context!5934) (_2!33091 C!26352)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59590 0))(
  ( (tuple2!59591 (_1!33092 tuple2!59588) (_2!33092 (InoxSet Context!5934))) )
))
(declare-datatypes ((List!55910 0))(
  ( (Nil!55786) (Cons!55786 (h!62234 tuple2!59590) (t!363530 List!55910)) )
))
(declare-datatypes ((array!18871 0))(
  ( (array!18872 (arr!8420 (Array (_ BitVec 32) List!55910)) (size!36763 (_ BitVec 32))) )
))
(declare-datatypes ((array!18873 0))(
  ( (array!18874 (arr!8421 (Array (_ BitVec 32) (_ BitVec 64))) (size!36764 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10236 0))(
  ( (LongMapFixedSize!10237 (defaultEntry!5543 Int) (mask!15454 (_ BitVec 32)) (extraKeys!5402 (_ BitVec 32)) (zeroValue!5415 List!55910) (minValue!5415 List!55910) (_size!10249 (_ BitVec 32)) (_keys!5472 array!18873) (_values!5440 array!18871) (_vacant!5183 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20213 0))(
  ( (Cell!20214 (v!49619 LongMapFixedSize!10236)) )
))
(declare-datatypes ((Hashable!7563 0))(
  ( (HashableExt!7562 (__x!33874 Int)) )
))
(declare-datatypes ((MutLongMap!5118 0))(
  ( (LongMap!5118 (underlying!10431 Cell!20213)) (MutLongMapExt!5117 (__x!33875 Int)) )
))
(declare-datatypes ((Cell!20215 0))(
  ( (Cell!20216 (v!49620 MutLongMap!5118)) )
))
(declare-datatypes ((MutableMap!4990 0))(
  ( (MutableMapExt!4989 (__x!33876 Int)) (HashMap!4990 (underlying!10432 Cell!20215) (hashF!13830 Hashable!7563) (_size!10250 (_ BitVec 32)) (defaultValue!5161 Int)) )
))
(declare-fun m!3471 () MutableMap!4990)

(declare-fun valid!4142 (MutableMap!4990) Bool)

(assert (=> b!4860352 (= res!2074939 (valid!4142 m!3471))))

(declare-fun b!4860353 () Bool)

(declare-fun e!3038593 () Bool)

(declare-fun e!3038589 () Bool)

(assert (=> b!4860353 (= e!3038593 e!3038589)))

(declare-fun b!4860354 () Bool)

(declare-fun e!3038594 () Bool)

(declare-fun lt!1992260 () MutLongMap!5118)

(get-info :version)

(assert (=> b!4860354 (= e!3038594 (and e!3038593 ((_ is LongMap!5118) lt!1992260)))))

(assert (=> b!4860354 (= lt!1992260 (v!49620 (underlying!10432 m!3471)))))

(declare-fun b!4860355 () Bool)

(assert (=> b!4860355 (= e!3038595 false)))

(declare-fun lt!1992261 () Bool)

(declare-fun invariantList!1896 (List!55910) Bool)

(declare-datatypes ((ListMap!7161 0))(
  ( (ListMap!7162 (toList!7917 List!55910)) )
))
(declare-fun map!12835 (MutableMap!4990) ListMap!7161)

(assert (=> b!4860355 (= lt!1992261 (invariantList!1896 (toList!7917 (map!12835 m!3471))))))

(declare-fun res!2074938 () Bool)

(assert (=> start!507918 (=> (not res!2074938) (not e!3038595))))

(assert (=> start!507918 (= res!2074938 ((_ is HashMap!4990) m!3471))))

(assert (=> start!507918 e!3038595))

(declare-fun e!3038596 () Bool)

(assert (=> start!507918 e!3038596))

(declare-fun b!4860356 () Bool)

(declare-fun e!3038592 () Bool)

(assert (=> b!4860356 (= e!3038589 e!3038592)))

(declare-fun mapNonEmpty!22580 () Bool)

(declare-fun mapRes!22580 () Bool)

(declare-fun tp!1367101 () Bool)

(declare-fun tp!1367104 () Bool)

(assert (=> mapNonEmpty!22580 (= mapRes!22580 (and tp!1367101 tp!1367104))))

(declare-fun mapRest!22580 () (Array (_ BitVec 32) List!55910))

(declare-fun mapValue!22580 () List!55910)

(declare-fun mapKey!22580 () (_ BitVec 32))

(assert (=> mapNonEmpty!22580 (= (arr!8420 (_values!5440 (v!49619 (underlying!10431 (v!49620 (underlying!10432 m!3471)))))) (store mapRest!22580 mapKey!22580 mapValue!22580))))

(declare-fun b!4860357 () Bool)

(declare-fun e!3038591 () Bool)

(declare-fun tp!1367103 () Bool)

(assert (=> b!4860357 (= e!3038591 (and tp!1367103 mapRes!22580))))

(declare-fun condMapEmpty!22580 () Bool)

(declare-fun mapDefault!22580 () List!55910)

(assert (=> b!4860357 (= condMapEmpty!22580 (= (arr!8420 (_values!5440 (v!49619 (underlying!10431 (v!49620 (underlying!10432 m!3471)))))) ((as const (Array (_ BitVec 32) List!55910)) mapDefault!22580)))))

(assert (=> b!4860358 (= e!3038596 (and e!3038594 tp!1367099))))

(declare-fun mapIsEmpty!22580 () Bool)

(assert (=> mapIsEmpty!22580 mapRes!22580))

(declare-fun tp!1367100 () Bool)

(declare-fun tp!1367102 () Bool)

(declare-fun array_inv!6082 (array!18873) Bool)

(declare-fun array_inv!6083 (array!18871) Bool)

(assert (=> b!4860359 (= e!3038592 (and tp!1367105 tp!1367102 tp!1367100 (array_inv!6082 (_keys!5472 (v!49619 (underlying!10431 (v!49620 (underlying!10432 m!3471)))))) (array_inv!6083 (_values!5440 (v!49619 (underlying!10431 (v!49620 (underlying!10432 m!3471)))))) e!3038591))))

(assert (= (and start!507918 res!2074938) b!4860352))

(assert (= (and b!4860352 res!2074939) b!4860355))

(assert (= (and b!4860357 condMapEmpty!22580) mapIsEmpty!22580))

(assert (= (and b!4860357 (not condMapEmpty!22580)) mapNonEmpty!22580))

(assert (= b!4860359 b!4860357))

(assert (= b!4860356 b!4860359))

(assert (= b!4860353 b!4860356))

(assert (= (and b!4860354 ((_ is LongMap!5118) (v!49620 (underlying!10432 m!3471)))) b!4860353))

(assert (= b!4860358 b!4860354))

(assert (= (and start!507918 ((_ is HashMap!4990) m!3471)) b!4860358))

(declare-fun m!5858510 () Bool)

(assert (=> b!4860352 m!5858510))

(declare-fun m!5858512 () Bool)

(assert (=> b!4860355 m!5858512))

(declare-fun m!5858514 () Bool)

(assert (=> b!4860355 m!5858514))

(declare-fun m!5858516 () Bool)

(assert (=> mapNonEmpty!22580 m!5858516))

(declare-fun m!5858518 () Bool)

(assert (=> b!4860359 m!5858518))

(declare-fun m!5858520 () Bool)

(assert (=> b!4860359 m!5858520))

(check-sat b_and!342263 (not b_next!131203) (not b!4860355) (not mapNonEmpty!22580) (not b!4860357) (not b_next!131201) b_and!342265 (not b!4860352) (not b!4860359))
(check-sat b_and!342263 b_and!342265 (not b_next!131201) (not b_next!131203))
