; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507074 () Bool)

(assert start!507074)

(declare-fun b!4855059 () Bool)

(declare-fun b_free!130379 () Bool)

(declare-fun b_next!131169 () Bool)

(assert (=> b!4855059 (= b_free!130379 (not b_next!131169))))

(declare-fun tp!1365962 () Bool)

(declare-fun b_and!342207 () Bool)

(assert (=> b!4855059 (= tp!1365962 b_and!342207)))

(declare-fun b!4855065 () Bool)

(declare-fun b_free!130381 () Bool)

(declare-fun b_next!131171 () Bool)

(assert (=> b!4855065 (= b_free!130381 (not b_next!131171))))

(declare-fun tp!1365964 () Bool)

(declare-fun b_and!342209 () Bool)

(assert (=> b!4855065 (= tp!1365964 b_and!342209)))

(declare-fun e!3035409 () Bool)

(declare-datatypes ((C!26336 0))(
  ( (C!26337 (val!22376 Int)) )
))
(declare-datatypes ((Regex!13069 0))(
  ( (ElementMatch!13069 (c!825931 C!26336)) (Concat!21388 (regOne!26650 Regex!13069) (regTwo!26650 Regex!13069)) (EmptyExpr!13069) (Star!13069 (reg!13398 Regex!13069)) (EmptyLang!13069) (Union!13069 (regOne!26651 Regex!13069) (regTwo!26651 Regex!13069)) )
))
(declare-datatypes ((List!55839 0))(
  ( (Nil!55715) (Cons!55715 (h!62163 Regex!13069) (t!363341 List!55839)) )
))
(declare-datatypes ((Context!5918 0))(
  ( (Context!5919 (exprs!3459 List!55839)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59556 0))(
  ( (tuple2!59557 (_1!33075 (InoxSet Context!5918)) (_2!33075 Int)) )
))
(declare-datatypes ((tuple2!59558 0))(
  ( (tuple2!59559 (_1!33076 tuple2!59556) (_2!33076 Int)) )
))
(declare-datatypes ((List!55840 0))(
  ( (Nil!55716) (Cons!55716 (h!62164 tuple2!59558) (t!363342 List!55840)) )
))
(declare-datatypes ((array!18847 0))(
  ( (array!18848 (arr!8408 (Array (_ BitVec 32) List!55840)) (size!36682 (_ BitVec 32))) )
))
(declare-datatypes ((array!18849 0))(
  ( (array!18850 (arr!8409 (Array (_ BitVec 32) (_ BitVec 64))) (size!36683 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10224 0))(
  ( (LongMapFixedSize!10225 (defaultEntry!5537 Int) (mask!15417 (_ BitVec 32)) (extraKeys!5396 (_ BitVec 32)) (zeroValue!5409 List!55840) (minValue!5409 List!55840) (_size!10237 (_ BitVec 32)) (_keys!5466 array!18849) (_values!5434 array!18847) (_vacant!5177 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20189 0))(
  ( (Cell!20190 (v!49599 LongMapFixedSize!10224)) )
))
(declare-datatypes ((MutLongMap!5112 0))(
  ( (LongMap!5112 (underlying!10419 Cell!20189)) (MutLongMapExt!5111 (__x!33856 Int)) )
))
(declare-datatypes ((Cell!20191 0))(
  ( (Cell!20192 (v!49600 MutLongMap!5112)) )
))
(declare-datatypes ((Hashable!7557 0))(
  ( (HashableExt!7556 (__x!33857 Int)) )
))
(declare-datatypes ((MutableMap!4984 0))(
  ( (MutableMapExt!4983 (__x!33858 Int)) (HashMap!4984 (underlying!10420 Cell!20191) (hashF!13824 Hashable!7557) (_size!10238 (_ BitVec 32)) (defaultValue!5155 Int)) )
))
(declare-fun m!3502 () MutableMap!4984)

(declare-fun tp!1365963 () Bool)

(declare-fun tp!1365961 () Bool)

(declare-fun e!3035406 () Bool)

(declare-fun array_inv!6074 (array!18849) Bool)

(declare-fun array_inv!6075 (array!18847) Bool)

(assert (=> b!4855059 (= e!3035409 (and tp!1365962 tp!1365963 tp!1365961 (array_inv!6074 (_keys!5466 (v!49599 (underlying!10419 (v!49600 (underlying!10420 m!3502)))))) (array_inv!6075 (_values!5434 (v!49599 (underlying!10419 (v!49600 (underlying!10420 m!3502)))))) e!3035406))))

(declare-fun b!4855060 () Bool)

(declare-fun e!3035412 () Bool)

(declare-fun e!3035411 () Bool)

(declare-fun lt!1991177 () MutLongMap!5112)

(get-info :version)

(assert (=> b!4855060 (= e!3035412 (and e!3035411 ((_ is LongMap!5112) lt!1991177)))))

(assert (=> b!4855060 (= lt!1991177 (v!49600 (underlying!10420 m!3502)))))

(declare-fun b!4855061 () Bool)

(declare-fun tp!1365965 () Bool)

(declare-fun mapRes!22562 () Bool)

(assert (=> b!4855061 (= e!3035406 (and tp!1365965 mapRes!22562))))

(declare-fun condMapEmpty!22562 () Bool)

(declare-fun mapDefault!22562 () List!55840)

(assert (=> b!4855061 (= condMapEmpty!22562 (= (arr!8408 (_values!5434 (v!49599 (underlying!10419 (v!49600 (underlying!10420 m!3502)))))) ((as const (Array (_ BitVec 32) List!55840)) mapDefault!22562)))))

(declare-fun mapIsEmpty!22562 () Bool)

(assert (=> mapIsEmpty!22562 mapRes!22562))

(declare-fun b!4855062 () Bool)

(declare-fun e!3035410 () Bool)

(assert (=> b!4855062 (= e!3035410 false)))

(declare-fun lt!1991176 () Bool)

(declare-fun valid!4138 (MutableMap!4984) Bool)

(assert (=> b!4855062 (= lt!1991176 (valid!4138 m!3502))))

(declare-fun b!4855063 () Bool)

(declare-fun e!3035405 () Bool)

(assert (=> b!4855063 (= e!3035405 e!3035409)))

(declare-fun res!2072617 () Bool)

(assert (=> start!507074 (=> (not res!2072617) (not e!3035410))))

(assert (=> start!507074 (= res!2072617 ((_ is HashMap!4984) m!3502))))

(assert (=> start!507074 e!3035410))

(declare-fun e!3035407 () Bool)

(assert (=> start!507074 e!3035407))

(declare-fun b!4855064 () Bool)

(assert (=> b!4855064 (= e!3035411 e!3035405)))

(declare-fun mapNonEmpty!22562 () Bool)

(declare-fun tp!1365960 () Bool)

(declare-fun tp!1365959 () Bool)

(assert (=> mapNonEmpty!22562 (= mapRes!22562 (and tp!1365960 tp!1365959))))

(declare-fun mapKey!22562 () (_ BitVec 32))

(declare-fun mapRest!22562 () (Array (_ BitVec 32) List!55840))

(declare-fun mapValue!22562 () List!55840)

(assert (=> mapNonEmpty!22562 (= (arr!8408 (_values!5434 (v!49599 (underlying!10419 (v!49600 (underlying!10420 m!3502)))))) (store mapRest!22562 mapKey!22562 mapValue!22562))))

(assert (=> b!4855065 (= e!3035407 (and e!3035412 tp!1365964))))

(assert (= (and start!507074 res!2072617) b!4855062))

(assert (= (and b!4855061 condMapEmpty!22562) mapIsEmpty!22562))

(assert (= (and b!4855061 (not condMapEmpty!22562)) mapNonEmpty!22562))

(assert (= b!4855059 b!4855061))

(assert (= b!4855063 b!4855059))

(assert (= b!4855064 b!4855063))

(assert (= (and b!4855060 ((_ is LongMap!5112) (v!49600 (underlying!10420 m!3502)))) b!4855064))

(assert (= b!4855065 b!4855060))

(assert (= (and start!507074 ((_ is HashMap!4984) m!3502)) b!4855065))

(declare-fun m!5852802 () Bool)

(assert (=> b!4855059 m!5852802))

(declare-fun m!5852804 () Bool)

(assert (=> b!4855059 m!5852804))

(declare-fun m!5852806 () Bool)

(assert (=> b!4855062 m!5852806))

(declare-fun m!5852808 () Bool)

(assert (=> mapNonEmpty!22562 m!5852808))

(check-sat (not b_next!131169) b_and!342207 b_and!342209 (not b!4855062) (not b!4855059) (not b_next!131171) (not mapNonEmpty!22562) (not b!4855061))
(check-sat b_and!342209 b_and!342207 (not b_next!131171) (not b_next!131169))
