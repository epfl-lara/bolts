; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507922 () Bool)

(assert start!507922)

(declare-fun b!4860401 () Bool)

(declare-fun b_free!130419 () Bool)

(declare-fun b_next!131209 () Bool)

(assert (=> b!4860401 (= b_free!130419 (not b_next!131209))))

(declare-fun tp!1367143 () Bool)

(declare-fun b_and!342271 () Bool)

(assert (=> b!4860401 (= tp!1367143 b_and!342271)))

(declare-fun b!4860395 () Bool)

(declare-fun b_free!130421 () Bool)

(declare-fun b_next!131211 () Bool)

(assert (=> b!4860395 (= b_free!130421 (not b_next!131211))))

(declare-fun tp!1367141 () Bool)

(declare-fun b_and!342273 () Bool)

(assert (=> b!4860395 (= tp!1367141 b_and!342273)))

(declare-fun res!2074945 () Bool)

(declare-fun e!3038644 () Bool)

(assert (=> start!507922 (=> (not res!2074945) (not e!3038644))))

(declare-datatypes ((C!26356 0))(
  ( (C!26357 (val!22440 Int)) )
))
(declare-datatypes ((Regex!13079 0))(
  ( (ElementMatch!13079 (c!826811 C!26356)) (Concat!21398 (regOne!26670 Regex!13079) (regTwo!26670 Regex!13079)) (EmptyExpr!13079) (Star!13079 (reg!13408 Regex!13079)) (EmptyLang!13079) (Union!13079 (regOne!26671 Regex!13079) (regTwo!26671 Regex!13079)) )
))
(declare-datatypes ((List!55913 0))(
  ( (Nil!55789) (Cons!55789 (h!62237 Regex!13079) (t!363533 List!55913)) )
))
(declare-datatypes ((Context!5938 0))(
  ( (Context!5939 (exprs!3469 List!55913)) )
))
(declare-datatypes ((tuple3!5530 0))(
  ( (tuple3!5531 (_1!33095 Regex!13079) (_2!33095 Context!5938) (_3!3298 C!26356)) )
))
(declare-datatypes ((array!18879 0))(
  ( (array!18880 (arr!8424 (Array (_ BitVec 32) (_ BitVec 64))) (size!36767 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59594 0))(
  ( (tuple2!59595 (_1!33096 tuple3!5530) (_2!33096 (InoxSet Context!5938))) )
))
(declare-datatypes ((List!55914 0))(
  ( (Nil!55790) (Cons!55790 (h!62238 tuple2!59594) (t!363534 List!55914)) )
))
(declare-datatypes ((array!18881 0))(
  ( (array!18882 (arr!8425 (Array (_ BitVec 32) List!55914)) (size!36768 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10240 0))(
  ( (LongMapFixedSize!10241 (defaultEntry!5545 Int) (mask!15457 (_ BitVec 32)) (extraKeys!5404 (_ BitVec 32)) (zeroValue!5417 List!55914) (minValue!5417 List!55914) (_size!10253 (_ BitVec 32)) (_keys!5474 array!18879) (_values!5442 array!18881) (_vacant!5185 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20221 0))(
  ( (Cell!20222 (v!49623 LongMapFixedSize!10240)) )
))
(declare-datatypes ((MutLongMap!5120 0))(
  ( (LongMap!5120 (underlying!10435 Cell!20221)) (MutLongMapExt!5119 (__x!33880 Int)) )
))
(declare-datatypes ((Cell!20223 0))(
  ( (Cell!20224 (v!49624 MutLongMap!5120)) )
))
(declare-datatypes ((Hashable!7565 0))(
  ( (HashableExt!7564 (__x!33881 Int)) )
))
(declare-datatypes ((MutableMap!4992 0))(
  ( (MutableMapExt!4991 (__x!33882 Int)) (HashMap!4992 (underlying!10436 Cell!20223) (hashF!13832 Hashable!7565) (_size!10254 (_ BitVec 32)) (defaultValue!5163 Int)) )
))
(declare-fun m!3472 () MutableMap!4992)

(get-info :version)

(assert (=> start!507922 (= res!2074945 ((_ is HashMap!4992) m!3472))))

(assert (=> start!507922 e!3038644))

(declare-fun e!3038642 () Bool)

(assert (=> start!507922 e!3038642))

(declare-fun mapIsEmpty!22586 () Bool)

(declare-fun mapRes!22586 () Bool)

(assert (=> mapIsEmpty!22586 mapRes!22586))

(declare-fun e!3038643 () Bool)

(assert (=> b!4860395 (= e!3038642 (and e!3038643 tp!1367141))))

(declare-fun b!4860396 () Bool)

(assert (=> b!4860396 (= e!3038644 false)))

(declare-fun lt!1992272 () Bool)

(declare-fun valid!4144 (MutableMap!4992) Bool)

(assert (=> b!4860396 (= lt!1992272 (valid!4144 m!3472))))

(declare-fun b!4860397 () Bool)

(declare-fun e!3038637 () Bool)

(declare-fun e!3038638 () Bool)

(assert (=> b!4860397 (= e!3038637 e!3038638)))

(declare-fun b!4860398 () Bool)

(declare-fun e!3038641 () Bool)

(assert (=> b!4860398 (= e!3038641 e!3038637)))

(declare-fun b!4860399 () Bool)

(declare-fun lt!1992273 () MutLongMap!5120)

(assert (=> b!4860399 (= e!3038643 (and e!3038641 ((_ is LongMap!5120) lt!1992273)))))

(assert (=> b!4860399 (= lt!1992273 (v!49624 (underlying!10436 m!3472)))))

(declare-fun b!4860400 () Bool)

(declare-fun e!3038639 () Bool)

(declare-fun tp!1367147 () Bool)

(assert (=> b!4860400 (= e!3038639 (and tp!1367147 mapRes!22586))))

(declare-fun condMapEmpty!22586 () Bool)

(declare-fun mapDefault!22586 () List!55914)

(assert (=> b!4860400 (= condMapEmpty!22586 (= (arr!8425 (_values!5442 (v!49623 (underlying!10435 (v!49624 (underlying!10436 m!3472)))))) ((as const (Array (_ BitVec 32) List!55914)) mapDefault!22586)))))

(declare-fun tp!1367144 () Bool)

(declare-fun tp!1367145 () Bool)

(declare-fun array_inv!6086 (array!18879) Bool)

(declare-fun array_inv!6087 (array!18881) Bool)

(assert (=> b!4860401 (= e!3038638 (and tp!1367143 tp!1367145 tp!1367144 (array_inv!6086 (_keys!5474 (v!49623 (underlying!10435 (v!49624 (underlying!10436 m!3472)))))) (array_inv!6087 (_values!5442 (v!49623 (underlying!10435 (v!49624 (underlying!10436 m!3472)))))) e!3038639))))

(declare-fun mapNonEmpty!22586 () Bool)

(declare-fun tp!1367142 () Bool)

(declare-fun tp!1367146 () Bool)

(assert (=> mapNonEmpty!22586 (= mapRes!22586 (and tp!1367142 tp!1367146))))

(declare-fun mapRest!22586 () (Array (_ BitVec 32) List!55914))

(declare-fun mapKey!22586 () (_ BitVec 32))

(declare-fun mapValue!22586 () List!55914)

(assert (=> mapNonEmpty!22586 (= (arr!8425 (_values!5442 (v!49623 (underlying!10435 (v!49624 (underlying!10436 m!3472)))))) (store mapRest!22586 mapKey!22586 mapValue!22586))))

(assert (= (and start!507922 res!2074945) b!4860396))

(assert (= (and b!4860400 condMapEmpty!22586) mapIsEmpty!22586))

(assert (= (and b!4860400 (not condMapEmpty!22586)) mapNonEmpty!22586))

(assert (= b!4860401 b!4860400))

(assert (= b!4860397 b!4860401))

(assert (= b!4860398 b!4860397))

(assert (= (and b!4860399 ((_ is LongMap!5120) (v!49624 (underlying!10436 m!3472)))) b!4860398))

(assert (= b!4860395 b!4860399))

(assert (= (and start!507922 ((_ is HashMap!4992) m!3472)) b!4860395))

(declare-fun m!5858530 () Bool)

(assert (=> b!4860396 m!5858530))

(declare-fun m!5858532 () Bool)

(assert (=> b!4860401 m!5858532))

(declare-fun m!5858534 () Bool)

(assert (=> b!4860401 m!5858534))

(declare-fun m!5858536 () Bool)

(assert (=> mapNonEmpty!22586 m!5858536))

(check-sat (not b!4860400) (not b_next!131211) b_and!342271 (not mapNonEmpty!22586) b_and!342273 (not b!4860401) (not b!4860396) (not b_next!131209))
(check-sat b_and!342271 b_and!342273 (not b_next!131211) (not b_next!131209))
