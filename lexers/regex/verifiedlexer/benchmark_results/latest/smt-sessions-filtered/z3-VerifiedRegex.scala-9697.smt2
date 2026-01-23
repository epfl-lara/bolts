; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507926 () Bool)

(assert start!507926)

(declare-fun b!4860449 () Bool)

(declare-fun b_free!130427 () Bool)

(declare-fun b_next!131217 () Bool)

(assert (=> b!4860449 (= b_free!130427 (not b_next!131217))))

(declare-fun tp!1367186 () Bool)

(declare-fun b_and!342279 () Bool)

(assert (=> b!4860449 (= tp!1367186 b_and!342279)))

(declare-fun b!4860442 () Bool)

(declare-fun b_free!130429 () Bool)

(declare-fun b_next!131219 () Bool)

(assert (=> b!4860442 (= b_free!130429 (not b_next!131219))))

(declare-fun tp!1367183 () Bool)

(declare-fun b_and!342281 () Bool)

(assert (=> b!4860442 (= tp!1367183 b_and!342281)))

(declare-fun e!3038685 () Bool)

(declare-fun e!3038692 () Bool)

(assert (=> b!4860442 (= e!3038685 (and e!3038692 tp!1367183))))

(declare-fun mapIsEmpty!22592 () Bool)

(declare-fun mapRes!22592 () Bool)

(assert (=> mapIsEmpty!22592 mapRes!22592))

(declare-fun b!4860443 () Bool)

(declare-fun e!3038687 () Bool)

(declare-fun e!3038689 () Bool)

(assert (=> b!4860443 (= e!3038687 e!3038689)))

(declare-fun b!4860444 () Bool)

(declare-datatypes ((array!18887 0))(
  ( (array!18888 (arr!8428 (Array (_ BitVec 32) (_ BitVec 64))) (size!36771 (_ BitVec 32))) )
))
(declare-datatypes ((C!26360 0))(
  ( (C!26361 (val!22442 Int)) )
))
(declare-datatypes ((Regex!13081 0))(
  ( (ElementMatch!13081 (c!826813 C!26360)) (Concat!21400 (regOne!26674 Regex!13081) (regTwo!26674 Regex!13081)) (EmptyExpr!13081) (Star!13081 (reg!13410 Regex!13081)) (EmptyLang!13081) (Union!13081 (regOne!26675 Regex!13081) (regTwo!26675 Regex!13081)) )
))
(declare-datatypes ((List!55917 0))(
  ( (Nil!55793) (Cons!55793 (h!62241 Regex!13081) (t!363537 List!55917)) )
))
(declare-datatypes ((Context!5942 0))(
  ( (Context!5943 (exprs!3471 List!55917)) )
))
(declare-datatypes ((tuple3!5534 0))(
  ( (tuple3!5535 (_1!33099 Regex!13081) (_2!33099 Context!5942) (_3!3300 C!26360)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59598 0))(
  ( (tuple2!59599 (_1!33100 tuple3!5534) (_2!33100 (InoxSet Context!5942))) )
))
(declare-datatypes ((List!55918 0))(
  ( (Nil!55794) (Cons!55794 (h!62242 tuple2!59598) (t!363538 List!55918)) )
))
(declare-datatypes ((array!18889 0))(
  ( (array!18890 (arr!8429 (Array (_ BitVec 32) List!55918)) (size!36772 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10244 0))(
  ( (LongMapFixedSize!10245 (defaultEntry!5547 Int) (mask!15460 (_ BitVec 32)) (extraKeys!5406 (_ BitVec 32)) (zeroValue!5419 List!55918) (minValue!5419 List!55918) (_size!10257 (_ BitVec 32)) (_keys!5476 array!18887) (_values!5444 array!18889) (_vacant!5187 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20229 0))(
  ( (Cell!20230 (v!49627 LongMapFixedSize!10244)) )
))
(declare-datatypes ((MutLongMap!5122 0))(
  ( (LongMap!5122 (underlying!10439 Cell!20229)) (MutLongMapExt!5121 (__x!33886 Int)) )
))
(declare-fun lt!1992285 () MutLongMap!5122)

(get-info :version)

(assert (=> b!4860444 (= e!3038692 (and e!3038687 ((_ is LongMap!5122) lt!1992285)))))

(declare-datatypes ((Cell!20231 0))(
  ( (Cell!20232 (v!49628 MutLongMap!5122)) )
))
(declare-datatypes ((Hashable!7567 0))(
  ( (HashableExt!7566 (__x!33887 Int)) )
))
(declare-datatypes ((MutableMap!4994 0))(
  ( (MutableMapExt!4993 (__x!33888 Int)) (HashMap!4994 (underlying!10440 Cell!20231) (hashF!13834 Hashable!7567) (_size!10258 (_ BitVec 32)) (defaultValue!5165 Int)) )
))
(declare-fun m!3472 () MutableMap!4994)

(assert (=> b!4860444 (= lt!1992285 (v!49628 (underlying!10440 m!3472)))))

(declare-fun res!2074956 () Bool)

(declare-fun e!3038690 () Bool)

(assert (=> start!507926 (=> (not res!2074956) (not e!3038690))))

(assert (=> start!507926 (= res!2074956 ((_ is HashMap!4994) m!3472))))

(assert (=> start!507926 e!3038690))

(assert (=> start!507926 e!3038685))

(declare-fun mapNonEmpty!22592 () Bool)

(declare-fun tp!1367187 () Bool)

(declare-fun tp!1367184 () Bool)

(assert (=> mapNonEmpty!22592 (= mapRes!22592 (and tp!1367187 tp!1367184))))

(declare-fun mapRest!22592 () (Array (_ BitVec 32) List!55918))

(declare-fun mapValue!22592 () List!55918)

(declare-fun mapKey!22592 () (_ BitVec 32))

(assert (=> mapNonEmpty!22592 (= (arr!8429 (_values!5444 (v!49627 (underlying!10439 (v!49628 (underlying!10440 m!3472)))))) (store mapRest!22592 mapKey!22592 mapValue!22592))))

(declare-fun b!4860445 () Bool)

(declare-fun e!3038691 () Bool)

(declare-fun tp!1367189 () Bool)

(assert (=> b!4860445 (= e!3038691 (and tp!1367189 mapRes!22592))))

(declare-fun condMapEmpty!22592 () Bool)

(declare-fun mapDefault!22592 () List!55918)

(assert (=> b!4860445 (= condMapEmpty!22592 (= (arr!8429 (_values!5444 (v!49627 (underlying!10439 (v!49628 (underlying!10440 m!3472)))))) ((as const (Array (_ BitVec 32) List!55918)) mapDefault!22592)))))

(declare-fun b!4860446 () Bool)

(declare-fun res!2074957 () Bool)

(assert (=> b!4860446 (=> (not res!2074957) (not e!3038690))))

(declare-fun valid!4145 (MutableMap!4994) Bool)

(assert (=> b!4860446 (= res!2074957 (valid!4145 m!3472))))

(declare-fun b!4860447 () Bool)

(assert (=> b!4860447 (= e!3038690 false)))

(declare-fun lt!1992284 () Bool)

(declare-fun invariantList!1897 (List!55918) Bool)

(declare-datatypes ((ListMap!7163 0))(
  ( (ListMap!7164 (toList!7918 List!55918)) )
))
(declare-fun map!12838 (MutableMap!4994) ListMap!7163)

(assert (=> b!4860447 (= lt!1992284 (invariantList!1897 (toList!7918 (map!12838 m!3472))))))

(declare-fun b!4860448 () Bool)

(declare-fun e!3038688 () Bool)

(assert (=> b!4860448 (= e!3038689 e!3038688)))

(declare-fun tp!1367185 () Bool)

(declare-fun tp!1367188 () Bool)

(declare-fun array_inv!6088 (array!18887) Bool)

(declare-fun array_inv!6089 (array!18889) Bool)

(assert (=> b!4860449 (= e!3038688 (and tp!1367186 tp!1367185 tp!1367188 (array_inv!6088 (_keys!5476 (v!49627 (underlying!10439 (v!49628 (underlying!10440 m!3472)))))) (array_inv!6089 (_values!5444 (v!49627 (underlying!10439 (v!49628 (underlying!10440 m!3472)))))) e!3038691))))

(assert (= (and start!507926 res!2074956) b!4860446))

(assert (= (and b!4860446 res!2074957) b!4860447))

(assert (= (and b!4860445 condMapEmpty!22592) mapIsEmpty!22592))

(assert (= (and b!4860445 (not condMapEmpty!22592)) mapNonEmpty!22592))

(assert (= b!4860449 b!4860445))

(assert (= b!4860448 b!4860449))

(assert (= b!4860443 b!4860448))

(assert (= (and b!4860444 ((_ is LongMap!5122) (v!49628 (underlying!10440 m!3472)))) b!4860443))

(assert (= b!4860442 b!4860444))

(assert (= (and start!507926 ((_ is HashMap!4994) m!3472)) b!4860442))

(declare-fun m!5858550 () Bool)

(assert (=> mapNonEmpty!22592 m!5858550))

(declare-fun m!5858552 () Bool)

(assert (=> b!4860446 m!5858552))

(declare-fun m!5858554 () Bool)

(assert (=> b!4860447 m!5858554))

(declare-fun m!5858556 () Bool)

(assert (=> b!4860447 m!5858556))

(declare-fun m!5858558 () Bool)

(assert (=> b!4860449 m!5858558))

(declare-fun m!5858560 () Bool)

(assert (=> b!4860449 m!5858560))

(check-sat (not mapNonEmpty!22592) (not b!4860446) (not b!4860449) (not b!4860447) b_and!342279 b_and!342281 (not b!4860445) (not b_next!131219) (not b_next!131217))
(check-sat b_and!342279 b_and!342281 (not b_next!131219) (not b_next!131217))
