; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412932 () Bool)

(assert start!412932)

(declare-fun b!4300503 () Bool)

(declare-fun b_free!128061 () Bool)

(declare-fun b_next!128765 () Bool)

(assert (=> b!4300503 (= b_free!128061 (not b_next!128765))))

(declare-fun tp!1321268 () Bool)

(declare-fun b_and!339413 () Bool)

(assert (=> b!4300503 (= tp!1321268 b_and!339413)))

(declare-fun b_free!128063 () Bool)

(declare-fun b_next!128767 () Bool)

(assert (=> start!412932 (= b_free!128063 (not b_next!128767))))

(declare-fun tp!1321267 () Bool)

(declare-fun b_and!339415 () Bool)

(assert (=> start!412932 (= tp!1321267 b_and!339415)))

(declare-fun b!4300508 () Bool)

(declare-fun b_free!128065 () Bool)

(declare-fun b_next!128769 () Bool)

(assert (=> b!4300508 (= b_free!128065 (not b_next!128769))))

(declare-fun tp!1321270 () Bool)

(declare-fun b_and!339417 () Bool)

(assert (=> b!4300508 (= tp!1321270 b_and!339417)))

(declare-fun b!4300500 () Bool)

(declare-fun e!2673164 () Bool)

(declare-datatypes ((K!9064 0))(
  ( (K!9065 (val!15509 Int)) )
))
(declare-datatypes ((V!9266 0))(
  ( (V!9267 (val!15510 Int)) )
))
(declare-datatypes ((tuple2!45934 0))(
  ( (tuple2!45935 (_1!26246 K!9064) (_2!26246 V!9266)) )
))
(declare-datatypes ((List!48073 0))(
  ( (Nil!47949) (Cons!47949 (h!53369 tuple2!45934) (t!354818 List!48073)) )
))
(declare-datatypes ((ListMap!1489 0))(
  ( (ListMap!1490 (toList!2203 List!48073)) )
))
(declare-fun lt!1522623 () ListMap!1489)

(declare-fun lt!1522627 () ListMap!1489)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7537 (List!48073) (InoxSet tuple2!45934))

(assert (=> b!4300500 (= e!2673164 (= ((_ map implies) (content!7537 (toList!2203 lt!1522623)) (content!7537 (toList!2203 lt!1522627))) ((as const (InoxSet tuple2!45934)) true)))))

(declare-fun b!4300501 () Bool)

(declare-fun e!2673156 () Bool)

(declare-fun e!2673157 () Bool)

(assert (=> b!4300501 (= e!2673156 e!2673157)))

(declare-fun res!1762592 () Bool)

(assert (=> b!4300501 (=> (not res!1762592) (not e!2673157))))

(declare-fun p!6034 () Int)

(declare-fun lt!1522621 () tuple2!45934)

(declare-fun dynLambda!20363 (Int tuple2!45934) Bool)

(assert (=> b!4300501 (= res!1762592 (dynLambda!20363 p!6034 lt!1522621))))

(declare-fun k0!1716 () K!9064)

(declare-fun v!9471 () V!9266)

(assert (=> b!4300501 (= lt!1522621 (tuple2!45935 k0!1716 v!9471))))

(declare-fun b!4300502 () Bool)

(declare-fun e!2673162 () Bool)

(declare-fun e!2673160 () Bool)

(declare-datatypes ((array!16218 0))(
  ( (array!16219 (arr!7239 (Array (_ BitVec 32) (_ BitVec 64))) (size!35278 (_ BitVec 32))) )
))
(declare-datatypes ((array!16220 0))(
  ( (array!16221 (arr!7240 (Array (_ BitVec 32) List!48073)) (size!35279 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9054 0))(
  ( (LongMapFixedSize!9055 (defaultEntry!4912 Int) (mask!13019 (_ BitVec 32)) (extraKeys!4776 (_ BitVec 32)) (zeroValue!4786 List!48073) (minValue!4786 List!48073) (_size!9097 (_ BitVec 32)) (_keys!4827 array!16218) (_values!4808 array!16220) (_vacant!4588 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17917 0))(
  ( (Cell!17918 (v!41923 LongMapFixedSize!9054)) )
))
(declare-datatypes ((MutLongMap!4527 0))(
  ( (LongMap!4527 (underlying!9283 Cell!17917)) (MutLongMapExt!4526 (__x!29606 Int)) )
))
(declare-fun lt!1522626 () MutLongMap!4527)

(get-info :version)

(assert (=> b!4300502 (= e!2673162 (and e!2673160 ((_ is LongMap!4527) lt!1522626)))))

(declare-datatypes ((Hashable!4443 0))(
  ( (HashableExt!4442 (__x!29607 Int)) )
))
(declare-datatypes ((Cell!17919 0))(
  ( (Cell!17920 (v!41924 MutLongMap!4527)) )
))
(declare-datatypes ((MutableMap!4433 0))(
  ( (MutableMapExt!4432 (__x!29608 Int)) (HashMap!4433 (underlying!9284 Cell!17919) (hashF!6475 Hashable!4443) (_size!9098 (_ BitVec 32)) (defaultValue!4604 Int)) )
))
(declare-fun hm!64 () MutableMap!4433)

(assert (=> b!4300502 (= lt!1522626 (v!41924 (underlying!9284 hm!64)))))

(declare-fun e!2673159 () Bool)

(assert (=> b!4300503 (= e!2673159 (and e!2673162 tp!1321268))))

(declare-fun b!4300504 () Bool)

(declare-fun e!2673163 () Bool)

(declare-fun e!2673158 () Bool)

(assert (=> b!4300504 (= e!2673163 e!2673158)))

(declare-fun res!1762599 () Bool)

(assert (=> b!4300504 (=> (not res!1762599) (not e!2673158))))

(declare-fun eq!106 (ListMap!1489 ListMap!1489) Bool)

(assert (=> b!4300504 (= res!1762599 (eq!106 lt!1522623 lt!1522627))))

(declare-datatypes ((tuple2!45936 0))(
  ( (tuple2!45937 (_1!26247 Bool) (_2!26247 MutableMap!4433)) )
))
(declare-fun lt!1522625 () tuple2!45936)

(declare-fun map!9908 (MutableMap!4433) ListMap!1489)

(assert (=> b!4300504 (= lt!1522623 (map!9908 (_2!26247 lt!1522625)))))

(declare-fun b!4300505 () Bool)

(declare-fun e!2673154 () Bool)

(declare-fun e!2673165 () Bool)

(assert (=> b!4300505 (= e!2673154 e!2673165)))

(declare-fun b!4300506 () Bool)

(assert (=> b!4300506 (= e!2673160 e!2673154)))

(declare-fun mapNonEmpty!20334 () Bool)

(declare-fun mapRes!20334 () Bool)

(declare-fun tp!1321266 () Bool)

(declare-fun tp!1321263 () Bool)

(assert (=> mapNonEmpty!20334 (= mapRes!20334 (and tp!1321266 tp!1321263))))

(declare-fun mapRest!20334 () (Array (_ BitVec 32) List!48073))

(declare-fun mapKey!20334 () (_ BitVec 32))

(declare-fun mapValue!20334 () List!48073)

(assert (=> mapNonEmpty!20334 (= (arr!7240 (_values!4808 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64)))))) (store mapRest!20334 mapKey!20334 mapValue!20334))))

(declare-fun b!4300507 () Bool)

(assert (=> b!4300507 (= e!2673158 (not e!2673164))))

(declare-fun res!1762595 () Bool)

(assert (=> b!4300507 (=> res!1762595 e!2673164)))

(declare-fun forall!8638 (List!48073 Int) Bool)

(assert (=> b!4300507 (= res!1762595 (not (forall!8638 (toList!2203 lt!1522627) p!6034)))))

(declare-fun lt!1522624 () ListMap!1489)

(declare-fun insertNoDuplicatedKeys!29 (List!48073 K!9064 V!9266) List!48073)

(assert (=> b!4300507 (forall!8638 (insertNoDuplicatedKeys!29 (toList!2203 lt!1522624) k0!1716 v!9471) p!6034)))

(declare-datatypes ((Unit!66891 0))(
  ( (Unit!66892) )
))
(declare-fun lt!1522622 () Unit!66891)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!16 (List!48073 K!9064 V!9266 Int) Unit!66891)

(assert (=> b!4300507 (= lt!1522622 (lemmaInsertNoDuplicatedKeysPreservesForall!16 (toList!2203 lt!1522624) k0!1716 v!9471 p!6034))))

(declare-fun tp!1321264 () Bool)

(declare-fun tp!1321269 () Bool)

(declare-fun e!2673161 () Bool)

(declare-fun array_inv!5187 (array!16218) Bool)

(declare-fun array_inv!5188 (array!16220) Bool)

(assert (=> b!4300508 (= e!2673165 (and tp!1321270 tp!1321269 tp!1321264 (array_inv!5187 (_keys!4827 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64)))))) (array_inv!5188 (_values!4808 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64)))))) e!2673161))))

(declare-fun b!4300509 () Bool)

(declare-fun res!1762598 () Bool)

(assert (=> b!4300509 (=> res!1762598 e!2673164)))

(declare-fun invariantList!546 (List!48073) Bool)

(assert (=> b!4300509 (= res!1762598 (not (invariantList!546 (toList!2203 lt!1522623))))))

(declare-fun mapIsEmpty!20334 () Bool)

(assert (=> mapIsEmpty!20334 mapRes!20334))

(declare-fun b!4300510 () Bool)

(declare-fun tp!1321265 () Bool)

(assert (=> b!4300510 (= e!2673161 (and tp!1321265 mapRes!20334))))

(declare-fun condMapEmpty!20334 () Bool)

(declare-fun mapDefault!20334 () List!48073)

(assert (=> b!4300510 (= condMapEmpty!20334 (= (arr!7240 (_values!4808 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64)))))) ((as const (Array (_ BitVec 32) List!48073)) mapDefault!20334)))))

(declare-fun b!4300511 () Bool)

(declare-fun res!1762597 () Bool)

(declare-fun e!2673153 () Bool)

(assert (=> b!4300511 (=> (not res!1762597) (not e!2673153))))

(declare-fun valid!3510 (MutableMap!4433) Bool)

(assert (=> b!4300511 (= res!1762597 (valid!3510 hm!64))))

(declare-fun b!4300512 () Bool)

(assert (=> b!4300512 (= e!2673153 e!2673156)))

(declare-fun res!1762593 () Bool)

(assert (=> b!4300512 (=> (not res!1762593) (not e!2673156))))

(assert (=> b!4300512 (= res!1762593 (forall!8638 (toList!2203 lt!1522624) p!6034))))

(assert (=> b!4300512 (= lt!1522624 (map!9908 hm!64))))

(declare-fun b!4300513 () Bool)

(declare-fun res!1762596 () Bool)

(assert (=> b!4300513 (=> res!1762596 e!2673164)))

(assert (=> b!4300513 (= res!1762596 (not (invariantList!546 (toList!2203 lt!1522627))))))

(declare-fun b!4300514 () Bool)

(assert (=> b!4300514 (= e!2673157 e!2673163)))

(declare-fun res!1762594 () Bool)

(assert (=> b!4300514 (=> (not res!1762594) (not e!2673163))))

(assert (=> b!4300514 (= res!1762594 (_1!26247 lt!1522625))))

(declare-fun update!340 (MutableMap!4433 K!9064 V!9266) tuple2!45936)

(assert (=> b!4300514 (= lt!1522625 (update!340 hm!64 k0!1716 v!9471))))

(declare-fun +!182 (ListMap!1489 tuple2!45934) ListMap!1489)

(assert (=> b!4300514 (= lt!1522627 (+!182 lt!1522624 lt!1522621))))

(declare-fun res!1762591 () Bool)

(assert (=> start!412932 (=> (not res!1762591) (not e!2673153))))

(assert (=> start!412932 (= res!1762591 ((_ is HashMap!4433) hm!64))))

(assert (=> start!412932 e!2673153))

(assert (=> start!412932 e!2673159))

(declare-fun tp_is_empty!23281 () Bool)

(assert (=> start!412932 tp_is_empty!23281))

(declare-fun tp_is_empty!23283 () Bool)

(assert (=> start!412932 tp_is_empty!23283))

(assert (=> start!412932 tp!1321267))

(assert (= (and start!412932 res!1762591) b!4300511))

(assert (= (and b!4300511 res!1762597) b!4300512))

(assert (= (and b!4300512 res!1762593) b!4300501))

(assert (= (and b!4300501 res!1762592) b!4300514))

(assert (= (and b!4300514 res!1762594) b!4300504))

(assert (= (and b!4300504 res!1762599) b!4300507))

(assert (= (and b!4300507 (not res!1762595)) b!4300509))

(assert (= (and b!4300509 (not res!1762598)) b!4300513))

(assert (= (and b!4300513 (not res!1762596)) b!4300500))

(assert (= (and b!4300510 condMapEmpty!20334) mapIsEmpty!20334))

(assert (= (and b!4300510 (not condMapEmpty!20334)) mapNonEmpty!20334))

(assert (= b!4300508 b!4300510))

(assert (= b!4300505 b!4300508))

(assert (= b!4300506 b!4300505))

(assert (= (and b!4300502 ((_ is LongMap!4527) (v!41924 (underlying!9284 hm!64)))) b!4300506))

(assert (= b!4300503 b!4300502))

(assert (= (and start!412932 ((_ is HashMap!4433) hm!64)) b!4300503))

(declare-fun b_lambda!126369 () Bool)

(assert (=> (not b_lambda!126369) (not b!4300501)))

(declare-fun t!354817 () Bool)

(declare-fun tb!257229 () Bool)

(assert (=> (and start!412932 (= p!6034 p!6034) t!354817) tb!257229))

(declare-fun result!314522 () Bool)

(assert (=> tb!257229 (= result!314522 true)))

(assert (=> b!4300501 t!354817))

(declare-fun b_and!339419 () Bool)

(assert (= b_and!339415 (and (=> t!354817 result!314522) b_and!339419)))

(declare-fun m!4892757 () Bool)

(assert (=> b!4300501 m!4892757))

(declare-fun m!4892759 () Bool)

(assert (=> b!4300500 m!4892759))

(declare-fun m!4892761 () Bool)

(assert (=> b!4300500 m!4892761))

(declare-fun m!4892763 () Bool)

(assert (=> b!4300508 m!4892763))

(declare-fun m!4892765 () Bool)

(assert (=> b!4300508 m!4892765))

(declare-fun m!4892767 () Bool)

(assert (=> b!4300509 m!4892767))

(declare-fun m!4892769 () Bool)

(assert (=> b!4300504 m!4892769))

(declare-fun m!4892771 () Bool)

(assert (=> b!4300504 m!4892771))

(declare-fun m!4892773 () Bool)

(assert (=> b!4300513 m!4892773))

(declare-fun m!4892775 () Bool)

(assert (=> b!4300507 m!4892775))

(declare-fun m!4892777 () Bool)

(assert (=> b!4300507 m!4892777))

(assert (=> b!4300507 m!4892777))

(declare-fun m!4892779 () Bool)

(assert (=> b!4300507 m!4892779))

(declare-fun m!4892781 () Bool)

(assert (=> b!4300507 m!4892781))

(declare-fun m!4892783 () Bool)

(assert (=> b!4300514 m!4892783))

(declare-fun m!4892785 () Bool)

(assert (=> b!4300514 m!4892785))

(declare-fun m!4892787 () Bool)

(assert (=> mapNonEmpty!20334 m!4892787))

(declare-fun m!4892789 () Bool)

(assert (=> b!4300511 m!4892789))

(declare-fun m!4892791 () Bool)

(assert (=> b!4300512 m!4892791))

(declare-fun m!4892793 () Bool)

(assert (=> b!4300512 m!4892793))

(check-sat tp_is_empty!23281 (not b!4300509) (not b!4300504) (not b!4300511) (not mapNonEmpty!20334) (not b_next!128769) (not b_next!128765) (not b!4300512) (not b!4300514) b_and!339413 (not b!4300507) (not b!4300508) (not b_next!128767) b_and!339417 (not b!4300513) tp_is_empty!23283 (not b_lambda!126369) b_and!339419 (not b!4300500) (not b!4300510))
(check-sat (not b_next!128769) (not b_next!128765) b_and!339413 b_and!339419 (not b_next!128767) b_and!339417)
(get-model)

(declare-fun b_lambda!126371 () Bool)

(assert (= b_lambda!126369 (or (and start!412932 b_free!128063) b_lambda!126371)))

(check-sat tp_is_empty!23281 (not b!4300509) (not b!4300504) (not b!4300511) (not mapNonEmpty!20334) (not b_next!128769) (not b_next!128765) (not b!4300512) (not b!4300514) b_and!339413 b_and!339419 (not b!4300507) (not b_lambda!126371) (not b!4300508) (not b_next!128767) b_and!339417 (not b!4300513) tp_is_empty!23283 (not b!4300500) (not b!4300510))
(check-sat (not b_next!128769) (not b_next!128765) b_and!339413 b_and!339419 (not b_next!128767) b_and!339417)
(get-model)

(declare-fun bs!603992 () Bool)

(declare-fun b!4300558 () Bool)

(declare-fun b!4300556 () Bool)

(assert (= bs!603992 (and b!4300558 b!4300556)))

(declare-fun lambda!132012 () Int)

(declare-fun lambda!132011 () Int)

(assert (=> bs!603992 (= lambda!132012 lambda!132011)))

(declare-fun bm!296440 () Bool)

(declare-fun call!296448 () ListMap!1489)

(declare-fun lt!1522784 () tuple2!45936)

(assert (=> bm!296440 (= call!296448 (map!9908 (_2!26247 lt!1522784)))))

(declare-fun bm!296441 () Bool)

(declare-fun call!296471 () Bool)

(declare-fun call!296459 () ListMap!1489)

(declare-fun call!296455 () ListMap!1489)

(assert (=> bm!296441 (= call!296471 (eq!106 call!296459 call!296455))))

(declare-fun b!4300553 () Bool)

(declare-fun call!296475 () ListMap!1489)

(declare-fun lt!1522762 () ListMap!1489)

(assert (=> b!4300553 (= call!296475 lt!1522762)))

(declare-fun lt!1522772 () Unit!66891)

(declare-fun Unit!66893 () Unit!66891)

(assert (=> b!4300553 (= lt!1522772 Unit!66893)))

(declare-fun call!296472 () Bool)

(assert (=> b!4300553 call!296472))

(declare-fun e!2673194 () Unit!66891)

(declare-fun Unit!66894 () Unit!66891)

(assert (=> b!4300553 (= e!2673194 Unit!66894)))

(declare-fun bm!296442 () Bool)

(declare-fun call!296465 () ListMap!1489)

(assert (=> bm!296442 (= call!296475 call!296465)))

(declare-fun bm!296443 () Bool)

(declare-fun c!731519 () Bool)

(declare-fun call!296464 () Bool)

(declare-fun lt!1522739 () (_ BitVec 64))

(declare-fun lt!1522764 () (_ BitVec 64))

(declare-fun call!296474 () List!48073)

(declare-fun allKeysSameHash!126 (List!48073 (_ BitVec 64) Hashable!4443) Bool)

(assert (=> bm!296443 (= call!296464 (allKeysSameHash!126 call!296474 (ite c!731519 lt!1522764 lt!1522739) (hashF!6475 hm!64)))))

(declare-fun bm!296444 () Bool)

(declare-fun lt!1522791 () ListMap!1489)

(declare-fun call!296450 () Bool)

(declare-fun lt!1522752 () ListMap!1489)

(declare-fun contains!9875 (ListMap!1489 K!9064) Bool)

(assert (=> bm!296444 (= call!296450 (contains!9875 (ite c!731519 lt!1522752 lt!1522791) k0!1716))))

(declare-fun bm!296445 () Bool)

(declare-datatypes ((tuple2!45938 0))(
  ( (tuple2!45939 (_1!26248 (_ BitVec 64)) (_2!26248 List!48073)) )
))
(declare-datatypes ((List!48074 0))(
  ( (Nil!47950) (Cons!47950 (h!53370 tuple2!45938) (t!354825 List!48074)) )
))
(declare-datatypes ((ListLongMap!811 0))(
  ( (ListLongMap!812 (toList!2204 List!48074)) )
))
(declare-fun lt!1522787 () ListLongMap!811)

(declare-fun lt!1522759 () ListLongMap!811)

(declare-fun call!296447 () Bool)

(declare-fun forall!8639 (List!48074 Int) Bool)

(assert (=> bm!296445 (= call!296447 (forall!8639 (ite c!731519 (toList!2204 lt!1522759) (toList!2204 lt!1522787)) (ite c!731519 lambda!132011 lambda!132012)))))

(declare-fun bm!296446 () Bool)

(declare-fun lt!1522763 () MutableMap!4433)

(declare-fun lt!1522777 () MutableMap!4433)

(assert (=> bm!296446 (= call!296465 (map!9908 (ite c!731519 lt!1522777 lt!1522763)))))

(declare-fun call!296454 () Bool)

(declare-fun bm!296447 () Bool)

(declare-fun allKeysSameHashInMap!274 (ListLongMap!811 Hashable!4443) Bool)

(assert (=> bm!296447 (= call!296454 (allKeysSameHashInMap!274 (ite c!731519 lt!1522759 lt!1522787) (hashF!6475 hm!64)))))

(declare-fun b!4300555 () Bool)

(declare-fun e!2673192 () Bool)

(declare-fun call!296473 () Bool)

(assert (=> b!4300555 (= e!2673192 call!296473)))

(declare-fun bm!296448 () Bool)

(declare-fun call!296451 () ListMap!1489)

(declare-fun lt!1522769 () ListLongMap!811)

(declare-fun extractMap!274 (List!48074) ListMap!1489)

(assert (=> bm!296448 (= call!296451 (extractMap!274 (toList!2204 lt!1522769)))))

(declare-fun bm!296449 () Bool)

(declare-fun call!296466 () ListLongMap!811)

(declare-datatypes ((tuple2!45940 0))(
  ( (tuple2!45941 (_1!26249 Bool) (_2!26249 MutLongMap!4527)) )
))
(declare-fun lt!1522771 () tuple2!45940)

(declare-fun lt!1522783 () tuple2!45940)

(declare-fun map!9909 (MutLongMap!4527) ListLongMap!811)

(assert (=> bm!296449 (= call!296466 (map!9909 (ite c!731519 (_2!26249 lt!1522783) (_2!26249 lt!1522771))))))

(declare-fun bm!296450 () Bool)

(declare-fun call!296463 () (_ BitVec 64))

(declare-fun hash!842 (Hashable!4443 K!9064) (_ BitVec 64))

(assert (=> bm!296450 (= call!296463 (hash!842 (hashF!6475 hm!64) k0!1716))))

(declare-fun bm!296451 () Bool)

(assert (=> bm!296451 (= call!296472 (valid!3510 (ite c!731519 lt!1522777 lt!1522763)))))

(declare-fun call!296456 () Bool)

(assert (=> b!4300556 call!296456))

(declare-fun lt!1522755 () Unit!66891)

(declare-fun Unit!66895 () Unit!66891)

(assert (=> b!4300556 (= lt!1522755 Unit!66895)))

(declare-fun call!296467 () Bool)

(assert (=> b!4300556 call!296467))

(declare-fun lt!1522743 () Unit!66891)

(declare-fun Unit!66896 () Unit!66891)

(assert (=> b!4300556 (= lt!1522743 Unit!66896)))

(declare-fun call!296461 () Bool)

(assert (=> b!4300556 call!296461))

(declare-fun lt!1522789 () Unit!66891)

(declare-fun lt!1522788 () Unit!66891)

(assert (=> b!4300556 (= lt!1522789 lt!1522788)))

(declare-fun call!296453 () Bool)

(assert (=> b!4300556 (= call!296450 call!296453)))

(declare-fun call!296458 () Unit!66891)

(assert (=> b!4300556 (= lt!1522788 call!296458)))

(declare-fun lt!1522767 () ListMap!1489)

(declare-fun call!296460 () ListMap!1489)

(assert (=> b!4300556 (= lt!1522767 call!296460)))

(assert (=> b!4300556 (= lt!1522752 call!296475)))

(declare-fun lt!1522770 () Unit!66891)

(declare-fun lt!1522751 () Unit!66891)

(assert (=> b!4300556 (= lt!1522770 lt!1522751)))

(assert (=> b!4300556 call!296471))

(declare-fun lt!1522740 () List!48073)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!38 (ListLongMap!811 (_ BitVec 64) List!48073 K!9064 V!9266 Hashable!4443) Unit!66891)

(assert (=> b!4300556 (= lt!1522751 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!38 lt!1522769 lt!1522764 lt!1522740 k0!1716 v!9471 (hashF!6475 hm!64)))))

(declare-fun lt!1522742 () Unit!66891)

(declare-fun lt!1522761 () Unit!66891)

(assert (=> b!4300556 (= lt!1522742 lt!1522761)))

(declare-fun e!2673195 () Bool)

(assert (=> b!4300556 e!2673195))

(declare-fun res!1762611 () Bool)

(assert (=> b!4300556 (=> (not res!1762611) (not e!2673195))))

(assert (=> b!4300556 (= res!1762611 call!296447)))

(declare-fun call!296457 () ListLongMap!811)

(assert (=> b!4300556 (= lt!1522759 call!296457)))

(declare-fun call!296468 () Unit!66891)

(assert (=> b!4300556 (= lt!1522761 call!296468)))

(declare-fun lt!1522745 () Unit!66891)

(declare-fun Unit!66897 () Unit!66891)

(assert (=> b!4300556 (= lt!1522745 Unit!66897)))

(declare-fun noDuplicateKeys!154 (List!48073) Bool)

(assert (=> b!4300556 (noDuplicateKeys!154 lt!1522740)))

(declare-fun lt!1522778 () Unit!66891)

(declare-fun Unit!66898 () Unit!66891)

(assert (=> b!4300556 (= lt!1522778 Unit!66898)))

(declare-fun containsKey!238 (List!48073 K!9064) Bool)

(assert (=> b!4300556 (not (containsKey!238 call!296474 k0!1716))))

(declare-fun lt!1522750 () Unit!66891)

(declare-fun Unit!66899 () Unit!66891)

(assert (=> b!4300556 (= lt!1522750 Unit!66899)))

(declare-fun lt!1522792 () Unit!66891)

(declare-fun lt!1522738 () Unit!66891)

(assert (=> b!4300556 (= lt!1522792 lt!1522738)))

(assert (=> b!4300556 (noDuplicateKeys!154 call!296474)))

(declare-fun lt!1522775 () List!48073)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!131 (List!48073 K!9064) Unit!66891)

(assert (=> b!4300556 (= lt!1522738 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!131 lt!1522775 k0!1716))))

(declare-fun lt!1522785 () Unit!66891)

(declare-fun lt!1522766 () Unit!66891)

(assert (=> b!4300556 (= lt!1522785 lt!1522766)))

(assert (=> b!4300556 call!296464))

(declare-fun call!296449 () Unit!66891)

(assert (=> b!4300556 (= lt!1522766 call!296449)))

(declare-fun lt!1522758 () Unit!66891)

(declare-fun lt!1522782 () Unit!66891)

(assert (=> b!4300556 (= lt!1522758 lt!1522782)))

(declare-fun call!296462 () Bool)

(assert (=> b!4300556 call!296462))

(declare-fun call!296446 () Unit!66891)

(assert (=> b!4300556 (= lt!1522782 call!296446)))

(declare-fun Unit!66900 () Unit!66891)

(assert (=> b!4300556 (= e!2673194 Unit!66900)))

(declare-fun bm!296452 () Bool)

(declare-fun lt!1522744 () List!48073)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!117 (List!48074 (_ BitVec 64) List!48073 Hashable!4443) Unit!66891)

(assert (=> bm!296452 (= call!296446 (lemmaInLongMapAllKeySameHashThenForTuple!117 (toList!2204 lt!1522769) (ite c!731519 lt!1522764 lt!1522739) (ite c!731519 lt!1522775 lt!1522744) (hashF!6475 hm!64)))))

(declare-fun call!296470 () ListMap!1489)

(declare-fun bm!296453 () Bool)

(assert (=> bm!296453 (= call!296456 (eq!106 (ite c!731519 call!296475 call!296470) call!296460))))

(declare-fun b!4300557 () Bool)

(declare-fun e!2673188 () Bool)

(assert (=> b!4300557 (= e!2673188 call!296473)))

(declare-fun bm!296454 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!113 (List!48073 K!9064 (_ BitVec 64) Hashable!4443) Unit!66891)

(assert (=> bm!296454 (= call!296449 (lemmaRemovePairForKeyPreservesHash!113 (ite c!731519 lt!1522775 lt!1522744) k0!1716 (ite c!731519 lt!1522764 lt!1522739) (hashF!6475 hm!64)))))

(declare-fun bm!296455 () Bool)

(declare-fun call!296469 () List!48073)

(declare-fun apply!10879 (MutLongMap!4527 (_ BitVec 64)) List!48073)

(assert (=> bm!296455 (= call!296469 (apply!10879 (v!41924 (underlying!9284 hm!64)) (ite c!731519 lt!1522764 lt!1522739)))))

(declare-fun bm!296456 () Bool)

(declare-fun lt!1522780 () List!48073)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!104 (ListLongMap!811 (_ BitVec 64) List!48073 Hashable!4443) Unit!66891)

(assert (=> bm!296456 (= call!296468 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!104 lt!1522769 (ite c!731519 lt!1522764 lt!1522739) (ite c!731519 lt!1522740 lt!1522780) (hashF!6475 hm!64)))))

(assert (=> b!4300558 call!296453))

(declare-fun lt!1522754 () Unit!66891)

(declare-fun Unit!66901 () Unit!66891)

(assert (=> b!4300558 (= lt!1522754 Unit!66901)))

(assert (=> b!4300558 (contains!9875 call!296460 k0!1716)))

(declare-fun lt!1522746 () Unit!66891)

(declare-fun lt!1522748 () Unit!66891)

(assert (=> b!4300558 (= lt!1522746 lt!1522748)))

(declare-fun lt!1522765 () ListMap!1489)

(assert (=> b!4300558 (= call!296450 (contains!9875 lt!1522765 k0!1716))))

(assert (=> b!4300558 (= lt!1522748 call!296458)))

(assert (=> b!4300558 (= lt!1522765 call!296460)))

(assert (=> b!4300558 (= lt!1522791 call!296470)))

(declare-fun lt!1522779 () Unit!66891)

(declare-fun Unit!66902 () Unit!66891)

(assert (=> b!4300558 (= lt!1522779 Unit!66902)))

(assert (=> b!4300558 call!296456))

(declare-fun lt!1522753 () Unit!66891)

(declare-fun Unit!66903 () Unit!66891)

(assert (=> b!4300558 (= lt!1522753 Unit!66903)))

(assert (=> b!4300558 call!296467))

(declare-fun lt!1522786 () Unit!66891)

(declare-fun Unit!66904 () Unit!66891)

(assert (=> b!4300558 (= lt!1522786 Unit!66904)))

(assert (=> b!4300558 call!296461))

(declare-fun lt!1522760 () Unit!66891)

(declare-fun lt!1522768 () Unit!66891)

(assert (=> b!4300558 (= lt!1522760 lt!1522768)))

(assert (=> b!4300558 call!296471))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!38 (ListLongMap!811 (_ BitVec 64) List!48073 K!9064 V!9266 Hashable!4443) Unit!66891)

(assert (=> b!4300558 (= lt!1522768 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!38 lt!1522769 lt!1522739 lt!1522780 k0!1716 v!9471 (hashF!6475 hm!64)))))

(declare-fun lt!1522773 () Unit!66891)

(declare-fun lt!1522776 () Unit!66891)

(assert (=> b!4300558 (= lt!1522773 lt!1522776)))

(declare-fun e!2673197 () Bool)

(assert (=> b!4300558 e!2673197))

(declare-fun res!1762613 () Bool)

(assert (=> b!4300558 (=> (not res!1762613) (not e!2673197))))

(assert (=> b!4300558 (= res!1762613 call!296447)))

(assert (=> b!4300558 (= lt!1522787 call!296457)))

(assert (=> b!4300558 (= lt!1522776 call!296468)))

(declare-fun lt!1522781 () Unit!66891)

(declare-fun e!2673198 () Unit!66891)

(assert (=> b!4300558 (= lt!1522781 e!2673198)))

(declare-fun c!731521 () Bool)

(declare-fun isEmpty!28050 (List!48073) Bool)

(assert (=> b!4300558 (= c!731521 (not (isEmpty!28050 lt!1522744)))))

(declare-fun e!2673190 () Unit!66891)

(declare-fun Unit!66905 () Unit!66891)

(assert (=> b!4300558 (= e!2673190 Unit!66905)))

(declare-fun b!4300559 () Bool)

(assert (=> b!4300559 (= call!296470 lt!1522762)))

(declare-fun lt!1522774 () Unit!66891)

(declare-fun Unit!66906 () Unit!66891)

(assert (=> b!4300559 (= lt!1522774 Unit!66906)))

(assert (=> b!4300559 call!296472))

(declare-fun Unit!66907 () Unit!66891)

(assert (=> b!4300559 (= e!2673190 Unit!66907)))

(declare-fun bm!296457 () Bool)

(assert (=> bm!296457 (= call!296461 (forall!8639 (toList!2204 call!296466) (ite c!731519 lambda!132011 lambda!132012)))))

(declare-fun b!4300560 () Bool)

(assert (=> b!4300560 (= e!2673195 call!296454)))

(declare-fun call!296452 () tuple2!45940)

(declare-fun bm!296458 () Bool)

(declare-fun update!341 (MutLongMap!4527 (_ BitVec 64) List!48073) tuple2!45940)

(assert (=> bm!296458 (= call!296452 (update!341 (v!41924 (underlying!9284 hm!64)) (ite c!731519 lt!1522764 lt!1522739) (ite c!731519 lt!1522740 lt!1522780)))))

(declare-fun bm!296459 () Bool)

(assert (=> bm!296459 (= call!296459 (extractMap!274 (toList!2204 call!296457)))))

(declare-fun b!4300561 () Bool)

(declare-fun e!2673189 () Bool)

(assert (=> b!4300561 (= e!2673189 e!2673192)))

(declare-fun c!731522 () Bool)

(assert (=> b!4300561 (= c!731522 (_1!26247 lt!1522784))))

(declare-fun b!4300562 () Bool)

(assert (=> b!4300562 (= e!2673192 e!2673188)))

(declare-fun res!1762612 () Bool)

(assert (=> b!4300562 (= res!1762612 (contains!9875 call!296448 k0!1716))))

(assert (=> b!4300562 (=> (not res!1762612) (not e!2673188))))

(declare-fun b!4300563 () Bool)

(declare-fun e!2673196 () List!48073)

(assert (=> b!4300563 (= e!2673196 call!296469)))

(declare-fun bm!296460 () Bool)

(declare-fun call!296445 () ListMap!1489)

(assert (=> bm!296460 (= call!296445 (map!9908 hm!64))))

(declare-fun bm!296461 () Bool)

(assert (=> bm!296461 (= call!296455 (+!182 call!296451 (tuple2!45935 k0!1716 v!9471)))))

(declare-fun bm!296462 () Bool)

(assert (=> bm!296462 (= call!296470 call!296465)))

(declare-fun b!4300564 () Bool)

(assert (=> b!4300564 (= e!2673196 Nil!47949)))

(declare-fun b!4300565 () Bool)

(declare-fun lt!1522741 () Unit!66891)

(assert (=> b!4300565 (= e!2673198 lt!1522741)))

(declare-fun lt!1522749 () Unit!66891)

(assert (=> b!4300565 (= lt!1522749 call!296446)))

(assert (=> b!4300565 call!296462))

(declare-fun lt!1522756 () Unit!66891)

(assert (=> b!4300565 (= lt!1522756 lt!1522749)))

(assert (=> b!4300565 (= lt!1522741 call!296449)))

(assert (=> b!4300565 call!296464))

(declare-fun b!4300554 () Bool)

(declare-fun e!2673191 () ListMap!1489)

(assert (=> b!4300554 (= e!2673191 (+!182 call!296445 (tuple2!45935 k0!1716 v!9471)))))

(declare-fun d!1266662 () Bool)

(assert (=> d!1266662 e!2673189))

(declare-fun res!1762610 () Bool)

(assert (=> d!1266662 (=> (not res!1762610) (not e!2673189))))

(assert (=> d!1266662 (= res!1762610 ((_ is HashMap!4433) (_2!26247 lt!1522784)))))

(declare-fun lt!1522790 () tuple2!45936)

(assert (=> d!1266662 (= lt!1522784 (tuple2!45937 (_1!26247 lt!1522790) (_2!26247 lt!1522790)))))

(declare-fun e!2673193 () tuple2!45936)

(assert (=> d!1266662 (= lt!1522790 e!2673193)))

(declare-fun contains!9876 (MutableMap!4433 K!9064) Bool)

(assert (=> d!1266662 (= c!731519 (contains!9876 hm!64 k0!1716))))

(assert (=> d!1266662 (= lt!1522769 (map!9909 (v!41924 (underlying!9284 hm!64))))))

(assert (=> d!1266662 (= lt!1522762 (map!9908 hm!64))))

(assert (=> d!1266662 (valid!3510 hm!64)))

(assert (=> d!1266662 (= (update!340 hm!64 k0!1716 v!9471) lt!1522784)))

(declare-fun bm!296463 () Bool)

(declare-fun removePairForKey!143 (List!48073 K!9064) List!48073)

(assert (=> bm!296463 (= call!296474 (removePairForKey!143 (ite c!731519 lt!1522775 lt!1522744) k0!1716))))

(declare-fun bm!296464 () Bool)

(declare-fun +!183 (ListLongMap!811 tuple2!45938) ListLongMap!811)

(assert (=> bm!296464 (= call!296457 (+!183 lt!1522769 (ite c!731519 (tuple2!45939 lt!1522764 lt!1522740) (tuple2!45939 lt!1522739 lt!1522780))))))

(declare-fun bm!296465 () Bool)

(assert (=> bm!296465 (= call!296467 (allKeysSameHashInMap!274 call!296466 (hashF!6475 hm!64)))))

(declare-fun bm!296466 () Bool)

(declare-fun lemmaEquivalentThenSameContains!38 (ListMap!1489 ListMap!1489 K!9064) Unit!66891)

(assert (=> bm!296466 (= call!296458 (lemmaEquivalentThenSameContains!38 (ite c!731519 lt!1522752 lt!1522791) (ite c!731519 lt!1522767 lt!1522765) k0!1716))))

(declare-fun b!4300566 () Bool)

(assert (=> b!4300566 (= e!2673197 call!296454)))

(declare-fun bm!296467 () Bool)

(assert (=> bm!296467 (= call!296462 (allKeysSameHash!126 (ite c!731519 lt!1522775 lt!1522744) (ite c!731519 lt!1522764 lt!1522739) (hashF!6475 hm!64)))))

(declare-fun b!4300567 () Bool)

(assert (=> b!4300567 (= e!2673191 call!296445)))

(declare-fun bm!296468 () Bool)

(assert (=> bm!296468 (= call!296473 (eq!106 call!296448 e!2673191))))

(declare-fun c!731518 () Bool)

(assert (=> bm!296468 (= c!731518 c!731522)))

(declare-fun b!4300568 () Bool)

(declare-fun Unit!66908 () Unit!66891)

(assert (=> b!4300568 (= e!2673198 Unit!66908)))

(declare-fun b!4300569 () Bool)

(declare-datatypes ((tuple2!45942 0))(
  ( (tuple2!45943 (_1!26250 Unit!66891) (_2!26250 MutableMap!4433)) )
))
(declare-fun Unit!66909 () Unit!66891)

(declare-fun Unit!66910 () Unit!66891)

(assert (=> b!4300569 (= e!2673193 (tuple2!45937 (_1!26249 lt!1522771) (_2!26250 (ite (_1!26249 lt!1522771) (tuple2!45943 Unit!66909 (HashMap!4433 (Cell!17920 (_2!26249 lt!1522771)) (hashF!6475 hm!64) (bvadd (_size!9098 hm!64) #b00000000000000000000000000000001) (defaultValue!4604 hm!64))) (tuple2!45943 Unit!66910 lt!1522763)))))))

(assert (=> b!4300569 (= lt!1522739 call!296463)))

(declare-fun c!731523 () Bool)

(declare-fun contains!9877 (MutLongMap!4527 (_ BitVec 64)) Bool)

(assert (=> b!4300569 (= c!731523 (contains!9877 (v!41924 (underlying!9284 hm!64)) lt!1522739))))

(assert (=> b!4300569 (= lt!1522744 e!2673196)))

(assert (=> b!4300569 (= lt!1522780 (Cons!47949 (tuple2!45935 k0!1716 v!9471) lt!1522744))))

(assert (=> b!4300569 (= lt!1522771 call!296452)))

(assert (=> b!4300569 (= lt!1522763 (HashMap!4433 (Cell!17920 (_2!26249 lt!1522771)) (hashF!6475 hm!64) (_size!9098 hm!64) (defaultValue!4604 hm!64)))))

(declare-fun c!731524 () Bool)

(assert (=> b!4300569 (= c!731524 (_1!26249 lt!1522771))))

(declare-fun lt!1522747 () Unit!66891)

(assert (=> b!4300569 (= lt!1522747 e!2673190)))

(declare-fun b!4300570 () Bool)

(declare-fun res!1762614 () Bool)

(assert (=> b!4300570 (=> (not res!1762614) (not e!2673189))))

(assert (=> b!4300570 (= res!1762614 (valid!3510 (_2!26247 lt!1522784)))))

(declare-fun bm!296469 () Bool)

(assert (=> bm!296469 (= call!296460 (+!182 lt!1522762 (tuple2!45935 k0!1716 v!9471)))))

(declare-fun bm!296470 () Bool)

(assert (=> bm!296470 (= call!296453 (contains!9875 (ite c!731519 lt!1522767 call!296470) k0!1716))))

(declare-fun b!4300571 () Bool)

(declare-fun Unit!66911 () Unit!66891)

(declare-fun Unit!66912 () Unit!66891)

(assert (=> b!4300571 (= e!2673193 (tuple2!45937 (_1!26249 lt!1522783) (_2!26250 (ite false (tuple2!45943 Unit!66911 (HashMap!4433 (Cell!17920 (_2!26249 lt!1522783)) (hashF!6475 hm!64) (bvadd (_size!9098 hm!64) #b00000000000000000000000000000001) (defaultValue!4604 hm!64))) (tuple2!45943 Unit!66912 lt!1522777)))))))

(assert (=> b!4300571 (= lt!1522764 call!296463)))

(assert (=> b!4300571 (= lt!1522775 call!296469)))

(assert (=> b!4300571 (= lt!1522740 (Cons!47949 (tuple2!45935 k0!1716 v!9471) call!296474))))

(assert (=> b!4300571 (= lt!1522783 call!296452)))

(assert (=> b!4300571 (= lt!1522777 (HashMap!4433 (Cell!17920 (_2!26249 lt!1522783)) (hashF!6475 hm!64) (_size!9098 hm!64) (defaultValue!4604 hm!64)))))

(declare-fun c!731520 () Bool)

(assert (=> b!4300571 (= c!731520 (_1!26249 lt!1522783))))

(declare-fun lt!1522757 () Unit!66891)

(assert (=> b!4300571 (= lt!1522757 e!2673194)))

(assert (= (and d!1266662 c!731519) b!4300571))

(assert (= (and d!1266662 (not c!731519)) b!4300569))

(assert (= (and b!4300571 c!731520) b!4300556))

(assert (= (and b!4300571 (not c!731520)) b!4300553))

(assert (= (and b!4300556 res!1762611) b!4300560))

(assert (= (or b!4300556 b!4300553) bm!296442))

(assert (= (and b!4300569 c!731523) b!4300563))

(assert (= (and b!4300569 (not c!731523)) b!4300564))

(assert (= (and b!4300569 c!731524) b!4300558))

(assert (= (and b!4300569 (not c!731524)) b!4300559))

(assert (= (and b!4300558 c!731521) b!4300565))

(assert (= (and b!4300558 (not c!731521)) b!4300568))

(assert (= (and b!4300558 res!1762613) b!4300566))

(assert (= (or b!4300558 b!4300559) bm!296462))

(assert (= (or b!4300556 b!4300558) bm!296469))

(assert (= (or b!4300556 b!4300558) bm!296466))

(assert (= (or b!4300571 b!4300556 b!4300565) bm!296463))

(assert (= (or b!4300571 b!4300569) bm!296450))

(assert (= (or b!4300553 b!4300559) bm!296451))

(assert (= (or b!4300560 b!4300566) bm!296447))

(assert (= (or b!4300556 b!4300565) bm!296452))

(assert (= (or b!4300556 b!4300558) bm!296470))

(assert (= (or b!4300556 b!4300558) bm!296456))

(assert (= (or b!4300556 b!4300558) bm!296464))

(assert (= (or b!4300556 b!4300558) bm!296444))

(assert (= (or b!4300556 b!4300565) bm!296467))

(assert (= (or b!4300556 b!4300558) bm!296445))

(assert (= (or b!4300556 b!4300558) bm!296449))

(assert (= (or b!4300556 b!4300558) bm!296448))

(assert (= (or b!4300556 b!4300565) bm!296454))

(assert (= (or b!4300571 b!4300563) bm!296455))

(assert (= (or bm!296442 bm!296462) bm!296446))

(assert (= (or b!4300571 b!4300569) bm!296458))

(assert (= (or b!4300556 b!4300558) bm!296465))

(assert (= (or b!4300556 b!4300558) bm!296453))

(assert (= (or b!4300556 b!4300558) bm!296457))

(assert (= (or b!4300556 b!4300558) bm!296461))

(assert (= (or b!4300556 b!4300558) bm!296459))

(assert (= (or b!4300556 b!4300565) bm!296443))

(assert (= (or b!4300556 b!4300558) bm!296441))

(assert (= (and d!1266662 res!1762610) b!4300570))

(assert (= (and b!4300570 res!1762614) b!4300561))

(assert (= (and b!4300561 c!731522) b!4300562))

(assert (= (and b!4300561 (not c!731522)) b!4300555))

(assert (= (and b!4300562 res!1762612) b!4300557))

(assert (= (or b!4300557 b!4300555) bm!296460))

(assert (= (or b!4300562 b!4300557 b!4300555) bm!296440))

(assert (= (or b!4300557 b!4300555) bm!296468))

(assert (= (and bm!296468 c!731518) b!4300554))

(assert (= (and bm!296468 (not c!731518)) b!4300567))

(declare-fun m!4892795 () Bool)

(assert (=> bm!296445 m!4892795))

(declare-fun m!4892797 () Bool)

(assert (=> bm!296440 m!4892797))

(declare-fun m!4892799 () Bool)

(assert (=> bm!296446 m!4892799))

(declare-fun m!4892801 () Bool)

(assert (=> bm!296461 m!4892801))

(declare-fun m!4892803 () Bool)

(assert (=> bm!296443 m!4892803))

(declare-fun m!4892805 () Bool)

(assert (=> bm!296449 m!4892805))

(declare-fun m!4892807 () Bool)

(assert (=> bm!296441 m!4892807))

(declare-fun m!4892809 () Bool)

(assert (=> bm!296468 m!4892809))

(declare-fun m!4892811 () Bool)

(assert (=> bm!296459 m!4892811))

(declare-fun m!4892813 () Bool)

(assert (=> bm!296466 m!4892813))

(assert (=> bm!296460 m!4892793))

(declare-fun m!4892815 () Bool)

(assert (=> bm!296463 m!4892815))

(declare-fun m!4892817 () Bool)

(assert (=> bm!296453 m!4892817))

(declare-fun m!4892819 () Bool)

(assert (=> bm!296470 m!4892819))

(declare-fun m!4892821 () Bool)

(assert (=> bm!296454 m!4892821))

(declare-fun m!4892823 () Bool)

(assert (=> bm!296447 m!4892823))

(declare-fun m!4892825 () Bool)

(assert (=> b!4300556 m!4892825))

(declare-fun m!4892827 () Bool)

(assert (=> b!4300556 m!4892827))

(declare-fun m!4892829 () Bool)

(assert (=> b!4300556 m!4892829))

(declare-fun m!4892831 () Bool)

(assert (=> b!4300556 m!4892831))

(declare-fun m!4892833 () Bool)

(assert (=> b!4300556 m!4892833))

(declare-fun m!4892835 () Bool)

(assert (=> b!4300570 m!4892835))

(declare-fun m!4892837 () Bool)

(assert (=> bm!296450 m!4892837))

(declare-fun m!4892839 () Bool)

(assert (=> bm!296464 m!4892839))

(declare-fun m!4892841 () Bool)

(assert (=> b!4300562 m!4892841))

(declare-fun m!4892843 () Bool)

(assert (=> d!1266662 m!4892843))

(declare-fun m!4892845 () Bool)

(assert (=> d!1266662 m!4892845))

(assert (=> d!1266662 m!4892793))

(assert (=> d!1266662 m!4892789))

(declare-fun m!4892847 () Bool)

(assert (=> bm!296465 m!4892847))

(declare-fun m!4892849 () Bool)

(assert (=> b!4300569 m!4892849))

(declare-fun m!4892851 () Bool)

(assert (=> bm!296444 m!4892851))

(declare-fun m!4892853 () Bool)

(assert (=> bm!296455 m!4892853))

(declare-fun m!4892855 () Bool)

(assert (=> bm!296456 m!4892855))

(declare-fun m!4892857 () Bool)

(assert (=> bm!296452 m!4892857))

(declare-fun m!4892859 () Bool)

(assert (=> bm!296448 m!4892859))

(declare-fun m!4892861 () Bool)

(assert (=> bm!296458 m!4892861))

(declare-fun m!4892863 () Bool)

(assert (=> bm!296457 m!4892863))

(declare-fun m!4892865 () Bool)

(assert (=> bm!296467 m!4892865))

(declare-fun m!4892867 () Bool)

(assert (=> b!4300558 m!4892867))

(declare-fun m!4892869 () Bool)

(assert (=> b!4300558 m!4892869))

(declare-fun m!4892871 () Bool)

(assert (=> b!4300558 m!4892871))

(declare-fun m!4892873 () Bool)

(assert (=> b!4300558 m!4892873))

(declare-fun m!4892875 () Bool)

(assert (=> bm!296451 m!4892875))

(declare-fun m!4892877 () Bool)

(assert (=> bm!296469 m!4892877))

(declare-fun m!4892879 () Bool)

(assert (=> b!4300554 m!4892879))

(assert (=> b!4300514 d!1266662))

(declare-fun d!1266664 () Bool)

(declare-fun e!2673201 () Bool)

(assert (=> d!1266664 e!2673201))

(declare-fun res!1762620 () Bool)

(assert (=> d!1266664 (=> (not res!1762620) (not e!2673201))))

(declare-fun lt!1522803 () ListMap!1489)

(assert (=> d!1266664 (= res!1762620 (contains!9875 lt!1522803 (_1!26246 lt!1522621)))))

(declare-fun lt!1522802 () List!48073)

(assert (=> d!1266664 (= lt!1522803 (ListMap!1490 lt!1522802))))

(declare-fun lt!1522804 () Unit!66891)

(declare-fun lt!1522801 () Unit!66891)

(assert (=> d!1266664 (= lt!1522804 lt!1522801)))

(declare-datatypes ((Option!10166 0))(
  ( (None!10165) (Some!10165 (v!41926 V!9266)) )
))
(declare-fun getValueByKey!215 (List!48073 K!9064) Option!10166)

(assert (=> d!1266664 (= (getValueByKey!215 lt!1522802 (_1!26246 lt!1522621)) (Some!10165 (_2!26246 lt!1522621)))))

(declare-fun lemmaContainsTupThenGetReturnValue!46 (List!48073 K!9064 V!9266) Unit!66891)

(assert (=> d!1266664 (= lt!1522801 (lemmaContainsTupThenGetReturnValue!46 lt!1522802 (_1!26246 lt!1522621) (_2!26246 lt!1522621)))))

(assert (=> d!1266664 (= lt!1522802 (insertNoDuplicatedKeys!29 (toList!2203 lt!1522624) (_1!26246 lt!1522621) (_2!26246 lt!1522621)))))

(assert (=> d!1266664 (= (+!182 lt!1522624 lt!1522621) lt!1522803)))

(declare-fun b!4300576 () Bool)

(declare-fun res!1762619 () Bool)

(assert (=> b!4300576 (=> (not res!1762619) (not e!2673201))))

(assert (=> b!4300576 (= res!1762619 (= (getValueByKey!215 (toList!2203 lt!1522803) (_1!26246 lt!1522621)) (Some!10165 (_2!26246 lt!1522621))))))

(declare-fun b!4300577 () Bool)

(declare-fun contains!9878 (List!48073 tuple2!45934) Bool)

(assert (=> b!4300577 (= e!2673201 (contains!9878 (toList!2203 lt!1522803) lt!1522621))))

(assert (= (and d!1266664 res!1762620) b!4300576))

(assert (= (and b!4300576 res!1762619) b!4300577))

(declare-fun m!4892881 () Bool)

(assert (=> d!1266664 m!4892881))

(declare-fun m!4892883 () Bool)

(assert (=> d!1266664 m!4892883))

(declare-fun m!4892885 () Bool)

(assert (=> d!1266664 m!4892885))

(declare-fun m!4892887 () Bool)

(assert (=> d!1266664 m!4892887))

(declare-fun m!4892889 () Bool)

(assert (=> b!4300576 m!4892889))

(declare-fun m!4892891 () Bool)

(assert (=> b!4300577 m!4892891))

(assert (=> b!4300514 d!1266664))

(declare-fun d!1266666 () Bool)

(declare-fun c!731527 () Bool)

(assert (=> d!1266666 (= c!731527 ((_ is Nil!47949) (toList!2203 lt!1522623)))))

(declare-fun e!2673204 () (InoxSet tuple2!45934))

(assert (=> d!1266666 (= (content!7537 (toList!2203 lt!1522623)) e!2673204)))

(declare-fun b!4300582 () Bool)

(assert (=> b!4300582 (= e!2673204 ((as const (Array tuple2!45934 Bool)) false))))

(declare-fun b!4300583 () Bool)

(assert (=> b!4300583 (= e!2673204 ((_ map or) (store ((as const (Array tuple2!45934 Bool)) false) (h!53369 (toList!2203 lt!1522623)) true) (content!7537 (t!354818 (toList!2203 lt!1522623)))))))

(assert (= (and d!1266666 c!731527) b!4300582))

(assert (= (and d!1266666 (not c!731527)) b!4300583))

(declare-fun m!4892893 () Bool)

(assert (=> b!4300583 m!4892893))

(declare-fun m!4892895 () Bool)

(assert (=> b!4300583 m!4892895))

(assert (=> b!4300500 d!1266666))

(declare-fun d!1266668 () Bool)

(declare-fun c!731528 () Bool)

(assert (=> d!1266668 (= c!731528 ((_ is Nil!47949) (toList!2203 lt!1522627)))))

(declare-fun e!2673205 () (InoxSet tuple2!45934))

(assert (=> d!1266668 (= (content!7537 (toList!2203 lt!1522627)) e!2673205)))

(declare-fun b!4300584 () Bool)

(assert (=> b!4300584 (= e!2673205 ((as const (Array tuple2!45934 Bool)) false))))

(declare-fun b!4300585 () Bool)

(assert (=> b!4300585 (= e!2673205 ((_ map or) (store ((as const (Array tuple2!45934 Bool)) false) (h!53369 (toList!2203 lt!1522627)) true) (content!7537 (t!354818 (toList!2203 lt!1522627)))))))

(assert (= (and d!1266668 c!731528) b!4300584))

(assert (= (and d!1266668 (not c!731528)) b!4300585))

(declare-fun m!4892897 () Bool)

(assert (=> b!4300585 m!4892897))

(declare-fun m!4892899 () Bool)

(assert (=> b!4300585 m!4892899))

(assert (=> b!4300500 d!1266668))

(declare-fun d!1266670 () Bool)

(declare-fun noDuplicatedKeys!94 (List!48073) Bool)

(assert (=> d!1266670 (= (invariantList!546 (toList!2203 lt!1522623)) (noDuplicatedKeys!94 (toList!2203 lt!1522623)))))

(declare-fun bs!603993 () Bool)

(assert (= bs!603993 d!1266670))

(declare-fun m!4892901 () Bool)

(assert (=> bs!603993 m!4892901))

(assert (=> b!4300509 d!1266670))

(declare-fun d!1266672 () Bool)

(assert (=> d!1266672 (= (invariantList!546 (toList!2203 lt!1522627)) (noDuplicatedKeys!94 (toList!2203 lt!1522627)))))

(declare-fun bs!603994 () Bool)

(assert (= bs!603994 d!1266672))

(declare-fun m!4892903 () Bool)

(assert (=> bs!603994 m!4892903))

(assert (=> b!4300513 d!1266672))

(declare-fun d!1266674 () Bool)

(assert (=> d!1266674 (= (eq!106 lt!1522623 lt!1522627) (= (content!7537 (toList!2203 lt!1522623)) (content!7537 (toList!2203 lt!1522627))))))

(declare-fun bs!603995 () Bool)

(assert (= bs!603995 d!1266674))

(assert (=> bs!603995 m!4892759))

(assert (=> bs!603995 m!4892761))

(assert (=> b!4300504 d!1266674))

(declare-fun d!1266676 () Bool)

(declare-fun lt!1522807 () ListMap!1489)

(assert (=> d!1266676 (invariantList!546 (toList!2203 lt!1522807))))

(assert (=> d!1266676 (= lt!1522807 (extractMap!274 (toList!2204 (map!9909 (v!41924 (underlying!9284 (_2!26247 lt!1522625)))))))))

(assert (=> d!1266676 (valid!3510 (_2!26247 lt!1522625))))

(assert (=> d!1266676 (= (map!9908 (_2!26247 lt!1522625)) lt!1522807)))

(declare-fun bs!603996 () Bool)

(assert (= bs!603996 d!1266676))

(declare-fun m!4892905 () Bool)

(assert (=> bs!603996 m!4892905))

(declare-fun m!4892907 () Bool)

(assert (=> bs!603996 m!4892907))

(declare-fun m!4892909 () Bool)

(assert (=> bs!603996 m!4892909))

(declare-fun m!4892911 () Bool)

(assert (=> bs!603996 m!4892911))

(assert (=> b!4300504 d!1266676))

(declare-fun d!1266678 () Bool)

(assert (=> d!1266678 (= (array_inv!5187 (_keys!4827 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64)))))) (bvsge (size!35278 (_keys!4827 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300508 d!1266678))

(declare-fun d!1266680 () Bool)

(assert (=> d!1266680 (= (array_inv!5188 (_values!4808 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64)))))) (bvsge (size!35279 (_values!4808 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4300508 d!1266680))

(declare-fun d!1266682 () Bool)

(declare-fun res!1762625 () Bool)

(declare-fun e!2673210 () Bool)

(assert (=> d!1266682 (=> res!1762625 e!2673210)))

(assert (=> d!1266682 (= res!1762625 ((_ is Nil!47949) (toList!2203 lt!1522624)))))

(assert (=> d!1266682 (= (forall!8638 (toList!2203 lt!1522624) p!6034) e!2673210)))

(declare-fun b!4300590 () Bool)

(declare-fun e!2673211 () Bool)

(assert (=> b!4300590 (= e!2673210 e!2673211)))

(declare-fun res!1762626 () Bool)

(assert (=> b!4300590 (=> (not res!1762626) (not e!2673211))))

(assert (=> b!4300590 (= res!1762626 (dynLambda!20363 p!6034 (h!53369 (toList!2203 lt!1522624))))))

(declare-fun b!4300591 () Bool)

(assert (=> b!4300591 (= e!2673211 (forall!8638 (t!354818 (toList!2203 lt!1522624)) p!6034))))

(assert (= (and d!1266682 (not res!1762625)) b!4300590))

(assert (= (and b!4300590 res!1762626) b!4300591))

(declare-fun b_lambda!126373 () Bool)

(assert (=> (not b_lambda!126373) (not b!4300590)))

(declare-fun t!354820 () Bool)

(declare-fun tb!257231 () Bool)

(assert (=> (and start!412932 (= p!6034 p!6034) t!354820) tb!257231))

(declare-fun result!314524 () Bool)

(assert (=> tb!257231 (= result!314524 true)))

(assert (=> b!4300590 t!354820))

(declare-fun b_and!339421 () Bool)

(assert (= b_and!339419 (and (=> t!354820 result!314524) b_and!339421)))

(declare-fun m!4892913 () Bool)

(assert (=> b!4300590 m!4892913))

(declare-fun m!4892915 () Bool)

(assert (=> b!4300591 m!4892915))

(assert (=> b!4300512 d!1266682))

(declare-fun d!1266684 () Bool)

(declare-fun lt!1522808 () ListMap!1489)

(assert (=> d!1266684 (invariantList!546 (toList!2203 lt!1522808))))

(assert (=> d!1266684 (= lt!1522808 (extractMap!274 (toList!2204 (map!9909 (v!41924 (underlying!9284 hm!64))))))))

(assert (=> d!1266684 (valid!3510 hm!64)))

(assert (=> d!1266684 (= (map!9908 hm!64) lt!1522808)))

(declare-fun bs!603997 () Bool)

(assert (= bs!603997 d!1266684))

(declare-fun m!4892917 () Bool)

(assert (=> bs!603997 m!4892917))

(assert (=> bs!603997 m!4892845))

(declare-fun m!4892919 () Bool)

(assert (=> bs!603997 m!4892919))

(assert (=> bs!603997 m!4892789))

(assert (=> b!4300512 d!1266684))

(declare-fun d!1266686 () Bool)

(declare-fun res!1762627 () Bool)

(declare-fun e!2673212 () Bool)

(assert (=> d!1266686 (=> res!1762627 e!2673212)))

(assert (=> d!1266686 (= res!1762627 ((_ is Nil!47949) (toList!2203 lt!1522627)))))

(assert (=> d!1266686 (= (forall!8638 (toList!2203 lt!1522627) p!6034) e!2673212)))

(declare-fun b!4300592 () Bool)

(declare-fun e!2673213 () Bool)

(assert (=> b!4300592 (= e!2673212 e!2673213)))

(declare-fun res!1762628 () Bool)

(assert (=> b!4300592 (=> (not res!1762628) (not e!2673213))))

(assert (=> b!4300592 (= res!1762628 (dynLambda!20363 p!6034 (h!53369 (toList!2203 lt!1522627))))))

(declare-fun b!4300593 () Bool)

(assert (=> b!4300593 (= e!2673213 (forall!8638 (t!354818 (toList!2203 lt!1522627)) p!6034))))

(assert (= (and d!1266686 (not res!1762627)) b!4300592))

(assert (= (and b!4300592 res!1762628) b!4300593))

(declare-fun b_lambda!126375 () Bool)

(assert (=> (not b_lambda!126375) (not b!4300592)))

(declare-fun t!354822 () Bool)

(declare-fun tb!257233 () Bool)

(assert (=> (and start!412932 (= p!6034 p!6034) t!354822) tb!257233))

(declare-fun result!314526 () Bool)

(assert (=> tb!257233 (= result!314526 true)))

(assert (=> b!4300592 t!354822))

(declare-fun b_and!339423 () Bool)

(assert (= b_and!339421 (and (=> t!354822 result!314526) b_and!339423)))

(declare-fun m!4892921 () Bool)

(assert (=> b!4300592 m!4892921))

(declare-fun m!4892923 () Bool)

(assert (=> b!4300593 m!4892923))

(assert (=> b!4300507 d!1266686))

(declare-fun d!1266688 () Bool)

(declare-fun res!1762629 () Bool)

(declare-fun e!2673214 () Bool)

(assert (=> d!1266688 (=> res!1762629 e!2673214)))

(assert (=> d!1266688 (= res!1762629 ((_ is Nil!47949) (insertNoDuplicatedKeys!29 (toList!2203 lt!1522624) k0!1716 v!9471)))))

(assert (=> d!1266688 (= (forall!8638 (insertNoDuplicatedKeys!29 (toList!2203 lt!1522624) k0!1716 v!9471) p!6034) e!2673214)))

(declare-fun b!4300594 () Bool)

(declare-fun e!2673215 () Bool)

(assert (=> b!4300594 (= e!2673214 e!2673215)))

(declare-fun res!1762630 () Bool)

(assert (=> b!4300594 (=> (not res!1762630) (not e!2673215))))

(assert (=> b!4300594 (= res!1762630 (dynLambda!20363 p!6034 (h!53369 (insertNoDuplicatedKeys!29 (toList!2203 lt!1522624) k0!1716 v!9471))))))

(declare-fun b!4300595 () Bool)

(assert (=> b!4300595 (= e!2673215 (forall!8638 (t!354818 (insertNoDuplicatedKeys!29 (toList!2203 lt!1522624) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266688 (not res!1762629)) b!4300594))

(assert (= (and b!4300594 res!1762630) b!4300595))

(declare-fun b_lambda!126377 () Bool)

(assert (=> (not b_lambda!126377) (not b!4300594)))

(declare-fun t!354824 () Bool)

(declare-fun tb!257235 () Bool)

(assert (=> (and start!412932 (= p!6034 p!6034) t!354824) tb!257235))

(declare-fun result!314528 () Bool)

(assert (=> tb!257235 (= result!314528 true)))

(assert (=> b!4300594 t!354824))

(declare-fun b_and!339425 () Bool)

(assert (= b_and!339423 (and (=> t!354824 result!314528) b_and!339425)))

(declare-fun m!4892925 () Bool)

(assert (=> b!4300594 m!4892925))

(declare-fun m!4892927 () Bool)

(assert (=> b!4300595 m!4892927))

(assert (=> b!4300507 d!1266688))

(declare-fun b!4300624 () Bool)

(declare-fun e!2673231 () List!48073)

(assert (=> b!4300624 (= e!2673231 Nil!47949)))

(declare-fun b!4300626 () Bool)

(assert (=> b!4300626 false))

(declare-fun lt!1522840 () Unit!66891)

(declare-fun lt!1522836 () Unit!66891)

(assert (=> b!4300626 (= lt!1522840 lt!1522836)))

(declare-fun containsKey!239 (List!48073 K!9064) Bool)

(assert (=> b!4300626 (containsKey!239 (t!354818 (toList!2203 lt!1522624)) (_1!26246 (h!53369 (toList!2203 lt!1522624))))))

(declare-fun lemmaInGetKeysListThenContainsKey!31 (List!48073 K!9064) Unit!66891)

(assert (=> b!4300626 (= lt!1522836 (lemmaInGetKeysListThenContainsKey!31 (t!354818 (toList!2203 lt!1522624)) (_1!26246 (h!53369 (toList!2203 lt!1522624)))))))

(declare-fun lt!1522831 () Unit!66891)

(declare-fun lt!1522834 () Unit!66891)

(assert (=> b!4300626 (= lt!1522831 lt!1522834)))

(declare-datatypes ((List!48075 0))(
  ( (Nil!47951) (Cons!47951 (h!53371 K!9064) (t!354826 List!48075)) )
))
(declare-fun call!296485 () List!48075)

(declare-fun contains!9879 (List!48075 K!9064) Bool)

(assert (=> b!4300626 (contains!9879 call!296485 (_1!26246 (h!53369 (toList!2203 lt!1522624))))))

(declare-fun lt!1522838 () List!48073)

(declare-fun lemmaInListThenGetKeysListContains!31 (List!48073 K!9064) Unit!66891)

(assert (=> b!4300626 (= lt!1522834 (lemmaInListThenGetKeysListContains!31 lt!1522838 (_1!26246 (h!53369 (toList!2203 lt!1522624)))))))

(assert (=> b!4300626 (= lt!1522838 (insertNoDuplicatedKeys!29 (t!354818 (toList!2203 lt!1522624)) k0!1716 v!9471))))

(declare-fun e!2673230 () Unit!66891)

(declare-fun Unit!66913 () Unit!66891)

(assert (=> b!4300626 (= e!2673230 Unit!66913)))

(declare-fun b!4300627 () Bool)

(declare-fun e!2673235 () Bool)

(assert (=> b!4300627 (= e!2673235 (not (containsKey!239 (toList!2203 lt!1522624) k0!1716)))))

(declare-fun b!4300628 () Bool)

(declare-fun e!2673234 () Bool)

(declare-fun lt!1522835 () List!48073)

(declare-fun content!7538 (List!48075) (InoxSet K!9064))

(declare-fun getKeysList!34 (List!48073) List!48075)

(assert (=> b!4300628 (= e!2673234 (= (content!7538 (getKeysList!34 lt!1522835)) ((_ map or) (content!7538 (getKeysList!34 (toList!2203 lt!1522624))) (store ((as const (Array K!9064 Bool)) false) k0!1716 true))))))

(declare-fun c!731539 () Bool)

(declare-fun bm!296479 () Bool)

(declare-fun call!296487 () List!48073)

(declare-fun c!731541 () Bool)

(declare-fun c!731542 () Bool)

(declare-fun $colon$colon!657 (List!48073 tuple2!45934) List!48073)

(assert (=> bm!296479 (= call!296487 ($colon$colon!657 (ite c!731541 (t!354818 (toList!2203 lt!1522624)) (ite c!731542 (toList!2203 lt!1522624) e!2673231)) (ite (or c!731541 c!731542) (tuple2!45935 k0!1716 v!9471) (ite c!731539 (h!53369 (toList!2203 lt!1522624)) (tuple2!45935 k0!1716 v!9471)))))))

(declare-fun b!4300629 () Bool)

(declare-fun e!2673236 () List!48073)

(assert (=> b!4300629 (= e!2673236 call!296487)))

(declare-fun lt!1522841 () List!48075)

(assert (=> b!4300629 (= lt!1522841 call!296485)))

(declare-fun lt!1522839 () Unit!66891)

(declare-fun lemmaSubseqRefl!61 (List!48075) Unit!66891)

(assert (=> b!4300629 (= lt!1522839 (lemmaSubseqRefl!61 lt!1522841))))

(declare-fun subseq!577 (List!48075 List!48075) Bool)

(assert (=> b!4300629 (subseq!577 lt!1522841 lt!1522841)))

(declare-fun lt!1522832 () Unit!66891)

(assert (=> b!4300629 (= lt!1522832 lt!1522839)))

(declare-fun b!4300630 () Bool)

(declare-fun e!2673233 () List!48073)

(declare-fun lt!1522837 () List!48073)

(assert (=> b!4300630 (= e!2673233 lt!1522837)))

(declare-fun call!296486 () List!48073)

(assert (=> b!4300630 (= lt!1522837 call!296486)))

(declare-fun c!731540 () Bool)

(assert (=> b!4300630 (= c!731540 (containsKey!239 (insertNoDuplicatedKeys!29 (t!354818 (toList!2203 lt!1522624)) k0!1716 v!9471) (_1!26246 (h!53369 (toList!2203 lt!1522624)))))))

(declare-fun lt!1522833 () Unit!66891)

(assert (=> b!4300630 (= lt!1522833 e!2673230)))

(declare-fun b!4300631 () Bool)

(declare-fun e!2673232 () List!48073)

(assert (=> b!4300631 (= e!2673236 e!2673232)))

(declare-fun res!1762642 () Bool)

(assert (=> b!4300631 (= res!1762642 ((_ is Cons!47949) (toList!2203 lt!1522624)))))

(assert (=> b!4300631 (=> (not res!1762642) (not e!2673235))))

(assert (=> b!4300631 (= c!731542 e!2673235)))

(declare-fun b!4300632 () Bool)

(assert (=> b!4300632 (= e!2673233 call!296486)))

(declare-fun b!4300633 () Bool)

(declare-fun call!296484 () List!48073)

(assert (=> b!4300633 (= e!2673232 call!296484)))

(declare-fun b!4300625 () Bool)

(assert (=> b!4300625 (= c!731539 ((_ is Cons!47949) (toList!2203 lt!1522624)))))

(assert (=> b!4300625 (= e!2673232 e!2673233)))

(declare-fun d!1266690 () Bool)

(assert (=> d!1266690 e!2673234))

(declare-fun res!1762640 () Bool)

(assert (=> d!1266690 (=> (not res!1762640) (not e!2673234))))

(assert (=> d!1266690 (= res!1762640 (invariantList!546 lt!1522835))))

(assert (=> d!1266690 (= lt!1522835 e!2673236)))

(assert (=> d!1266690 (= c!731541 (and ((_ is Cons!47949) (toList!2203 lt!1522624)) (= (_1!26246 (h!53369 (toList!2203 lt!1522624))) k0!1716)))))

(assert (=> d!1266690 (invariantList!546 (toList!2203 lt!1522624))))

(assert (=> d!1266690 (= (insertNoDuplicatedKeys!29 (toList!2203 lt!1522624) k0!1716 v!9471) lt!1522835)))

(declare-fun b!4300634 () Bool)

(assert (=> b!4300634 (= e!2673231 (insertNoDuplicatedKeys!29 (t!354818 (toList!2203 lt!1522624)) k0!1716 v!9471))))

(declare-fun b!4300635 () Bool)

(declare-fun res!1762639 () Bool)

(assert (=> b!4300635 (=> (not res!1762639) (not e!2673234))))

(assert (=> b!4300635 (= res!1762639 (containsKey!239 lt!1522835 k0!1716))))

(declare-fun bm!296480 () Bool)

(assert (=> bm!296480 (= call!296484 call!296487)))

(declare-fun b!4300636 () Bool)

(declare-fun Unit!66914 () Unit!66891)

(assert (=> b!4300636 (= e!2673230 Unit!66914)))

(declare-fun bm!296481 () Bool)

(assert (=> bm!296481 (= call!296486 call!296484)))

(declare-fun c!731543 () Bool)

(assert (=> bm!296481 (= c!731543 c!731539)))

(declare-fun bm!296482 () Bool)

(assert (=> bm!296482 (= call!296485 (getKeysList!34 (ite c!731541 (toList!2203 lt!1522624) lt!1522838)))))

(declare-fun b!4300637 () Bool)

(declare-fun res!1762641 () Bool)

(assert (=> b!4300637 (=> (not res!1762641) (not e!2673234))))

(assert (=> b!4300637 (= res!1762641 (contains!9878 lt!1522835 (tuple2!45935 k0!1716 v!9471)))))

(assert (= (and d!1266690 c!731541) b!4300629))

(assert (= (and d!1266690 (not c!731541)) b!4300631))

(assert (= (and b!4300631 res!1762642) b!4300627))

(assert (= (and b!4300631 c!731542) b!4300633))

(assert (= (and b!4300631 (not c!731542)) b!4300625))

(assert (= (and b!4300625 c!731539) b!4300630))

(assert (= (and b!4300625 (not c!731539)) b!4300632))

(assert (= (and b!4300630 c!731540) b!4300626))

(assert (= (and b!4300630 (not c!731540)) b!4300636))

(assert (= (or b!4300630 b!4300632) bm!296481))

(assert (= (and bm!296481 c!731543) b!4300634))

(assert (= (and bm!296481 (not c!731543)) b!4300624))

(assert (= (or b!4300633 bm!296481) bm!296480))

(assert (= (or b!4300629 b!4300626) bm!296482))

(assert (= (or b!4300629 bm!296480) bm!296479))

(assert (= (and d!1266690 res!1762640) b!4300635))

(assert (= (and b!4300635 res!1762639) b!4300637))

(assert (= (and b!4300637 res!1762641) b!4300628))

(declare-fun m!4892929 () Bool)

(assert (=> b!4300637 m!4892929))

(declare-fun m!4892931 () Bool)

(assert (=> b!4300626 m!4892931))

(declare-fun m!4892933 () Bool)

(assert (=> b!4300626 m!4892933))

(declare-fun m!4892935 () Bool)

(assert (=> b!4300626 m!4892935))

(declare-fun m!4892937 () Bool)

(assert (=> b!4300626 m!4892937))

(declare-fun m!4892939 () Bool)

(assert (=> b!4300626 m!4892939))

(declare-fun m!4892941 () Bool)

(assert (=> b!4300628 m!4892941))

(declare-fun m!4892943 () Bool)

(assert (=> b!4300628 m!4892943))

(declare-fun m!4892945 () Bool)

(assert (=> b!4300628 m!4892945))

(assert (=> b!4300628 m!4892943))

(declare-fun m!4892947 () Bool)

(assert (=> b!4300628 m!4892947))

(declare-fun m!4892949 () Bool)

(assert (=> b!4300628 m!4892949))

(assert (=> b!4300628 m!4892947))

(declare-fun m!4892951 () Bool)

(assert (=> b!4300627 m!4892951))

(declare-fun m!4892953 () Bool)

(assert (=> b!4300635 m!4892953))

(declare-fun m!4892955 () Bool)

(assert (=> bm!296482 m!4892955))

(declare-fun m!4892957 () Bool)

(assert (=> d!1266690 m!4892957))

(declare-fun m!4892959 () Bool)

(assert (=> d!1266690 m!4892959))

(assert (=> b!4300630 m!4892931))

(assert (=> b!4300630 m!4892931))

(declare-fun m!4892961 () Bool)

(assert (=> b!4300630 m!4892961))

(declare-fun m!4892963 () Bool)

(assert (=> b!4300629 m!4892963))

(declare-fun m!4892965 () Bool)

(assert (=> b!4300629 m!4892965))

(assert (=> b!4300634 m!4892931))

(declare-fun m!4892967 () Bool)

(assert (=> bm!296479 m!4892967))

(assert (=> b!4300507 d!1266690))

(declare-fun d!1266692 () Bool)

(assert (=> d!1266692 (forall!8638 (insertNoDuplicatedKeys!29 (toList!2203 lt!1522624) k0!1716 v!9471) p!6034)))

(declare-fun lt!1522844 () Unit!66891)

(declare-fun choose!26171 (List!48073 K!9064 V!9266 Int) Unit!66891)

(assert (=> d!1266692 (= lt!1522844 (choose!26171 (toList!2203 lt!1522624) k0!1716 v!9471 p!6034))))

(assert (=> d!1266692 (invariantList!546 (toList!2203 lt!1522624))))

(assert (=> d!1266692 (= (lemmaInsertNoDuplicatedKeysPreservesForall!16 (toList!2203 lt!1522624) k0!1716 v!9471 p!6034) lt!1522844)))

(declare-fun bs!603998 () Bool)

(assert (= bs!603998 d!1266692))

(assert (=> bs!603998 m!4892777))

(assert (=> bs!603998 m!4892777))

(assert (=> bs!603998 m!4892779))

(declare-fun m!4892969 () Bool)

(assert (=> bs!603998 m!4892969))

(assert (=> bs!603998 m!4892959))

(assert (=> b!4300507 d!1266692))

(declare-fun bs!603999 () Bool)

(declare-fun b!4300642 () Bool)

(assert (= bs!603999 (and b!4300642 b!4300556)))

(declare-fun lambda!132015 () Int)

(assert (=> bs!603999 (= lambda!132015 lambda!132011)))

(declare-fun bs!604000 () Bool)

(assert (= bs!604000 (and b!4300642 b!4300558)))

(assert (=> bs!604000 (= lambda!132015 lambda!132012)))

(declare-fun d!1266694 () Bool)

(declare-fun res!1762647 () Bool)

(declare-fun e!2673239 () Bool)

(assert (=> d!1266694 (=> (not res!1762647) (not e!2673239))))

(declare-fun valid!3511 (MutLongMap!4527) Bool)

(assert (=> d!1266694 (= res!1762647 (valid!3511 (v!41924 (underlying!9284 hm!64))))))

(assert (=> d!1266694 (= (valid!3510 hm!64) e!2673239)))

(declare-fun res!1762648 () Bool)

(assert (=> b!4300642 (=> (not res!1762648) (not e!2673239))))

(assert (=> b!4300642 (= res!1762648 (forall!8639 (toList!2204 (map!9909 (v!41924 (underlying!9284 hm!64)))) lambda!132015))))

(declare-fun b!4300643 () Bool)

(assert (=> b!4300643 (= e!2673239 (allKeysSameHashInMap!274 (map!9909 (v!41924 (underlying!9284 hm!64))) (hashF!6475 hm!64)))))

(assert (= (and d!1266694 res!1762647) b!4300642))

(assert (= (and b!4300642 res!1762648) b!4300643))

(declare-fun m!4892971 () Bool)

(assert (=> d!1266694 m!4892971))

(assert (=> b!4300642 m!4892845))

(declare-fun m!4892973 () Bool)

(assert (=> b!4300642 m!4892973))

(assert (=> b!4300643 m!4892845))

(assert (=> b!4300643 m!4892845))

(declare-fun m!4892975 () Bool)

(assert (=> b!4300643 m!4892975))

(assert (=> b!4300511 d!1266694))

(declare-fun mapIsEmpty!20337 () Bool)

(declare-fun mapRes!20337 () Bool)

(assert (=> mapIsEmpty!20337 mapRes!20337))

(declare-fun condMapEmpty!20337 () Bool)

(declare-fun mapDefault!20337 () List!48073)

(assert (=> mapNonEmpty!20334 (= condMapEmpty!20337 (= mapRest!20334 ((as const (Array (_ BitVec 32) List!48073)) mapDefault!20337)))))

(declare-fun e!2673245 () Bool)

(assert (=> mapNonEmpty!20334 (= tp!1321266 (and e!2673245 mapRes!20337))))

(declare-fun mapNonEmpty!20337 () Bool)

(declare-fun tp!1321277 () Bool)

(declare-fun e!2673244 () Bool)

(assert (=> mapNonEmpty!20337 (= mapRes!20337 (and tp!1321277 e!2673244))))

(declare-fun mapRest!20337 () (Array (_ BitVec 32) List!48073))

(declare-fun mapValue!20337 () List!48073)

(declare-fun mapKey!20337 () (_ BitVec 32))

(assert (=> mapNonEmpty!20337 (= mapRest!20334 (store mapRest!20337 mapKey!20337 mapValue!20337))))

(declare-fun b!4300651 () Bool)

(declare-fun tp!1321278 () Bool)

(assert (=> b!4300651 (= e!2673245 (and tp_is_empty!23281 tp_is_empty!23283 tp!1321278))))

(declare-fun b!4300650 () Bool)

(declare-fun tp!1321279 () Bool)

(assert (=> b!4300650 (= e!2673244 (and tp_is_empty!23281 tp_is_empty!23283 tp!1321279))))

(assert (= (and mapNonEmpty!20334 condMapEmpty!20337) mapIsEmpty!20337))

(assert (= (and mapNonEmpty!20334 (not condMapEmpty!20337)) mapNonEmpty!20337))

(assert (= (and mapNonEmpty!20337 ((_ is Cons!47949) mapValue!20337)) b!4300650))

(assert (= (and mapNonEmpty!20334 ((_ is Cons!47949) mapDefault!20337)) b!4300651))

(declare-fun m!4892977 () Bool)

(assert (=> mapNonEmpty!20337 m!4892977))

(declare-fun b!4300656 () Bool)

(declare-fun tp!1321282 () Bool)

(declare-fun e!2673248 () Bool)

(assert (=> b!4300656 (= e!2673248 (and tp_is_empty!23281 tp_is_empty!23283 tp!1321282))))

(assert (=> mapNonEmpty!20334 (= tp!1321263 e!2673248)))

(assert (= (and mapNonEmpty!20334 ((_ is Cons!47949) mapValue!20334)) b!4300656))

(declare-fun e!2673249 () Bool)

(declare-fun tp!1321283 () Bool)

(declare-fun b!4300657 () Bool)

(assert (=> b!4300657 (= e!2673249 (and tp_is_empty!23281 tp_is_empty!23283 tp!1321283))))

(assert (=> b!4300510 (= tp!1321265 e!2673249)))

(assert (= (and b!4300510 ((_ is Cons!47949) mapDefault!20334)) b!4300657))

(declare-fun e!2673250 () Bool)

(declare-fun tp!1321284 () Bool)

(declare-fun b!4300658 () Bool)

(assert (=> b!4300658 (= e!2673250 (and tp_is_empty!23281 tp_is_empty!23283 tp!1321284))))

(assert (=> b!4300508 (= tp!1321269 e!2673250)))

(assert (= (and b!4300508 ((_ is Cons!47949) (zeroValue!4786 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64))))))) b!4300658))

(declare-fun e!2673251 () Bool)

(declare-fun tp!1321285 () Bool)

(declare-fun b!4300659 () Bool)

(assert (=> b!4300659 (= e!2673251 (and tp_is_empty!23281 tp_is_empty!23283 tp!1321285))))

(assert (=> b!4300508 (= tp!1321264 e!2673251)))

(assert (= (and b!4300508 ((_ is Cons!47949) (minValue!4786 (v!41923 (underlying!9283 (v!41924 (underlying!9284 hm!64))))))) b!4300659))

(declare-fun b_lambda!126379 () Bool)

(assert (= b_lambda!126375 (or (and start!412932 b_free!128063) b_lambda!126379)))

(declare-fun b_lambda!126381 () Bool)

(assert (= b_lambda!126377 (or (and start!412932 b_free!128063) b_lambda!126381)))

(declare-fun b_lambda!126383 () Bool)

(assert (= b_lambda!126373 (or (and start!412932 b_free!128063) b_lambda!126383)))

(check-sat (not d!1266692) (not b!4300570) (not bm!296459) (not b!4300558) (not b!4300642) (not b_lambda!126383) (not b!4300634) (not b!4300637) (not b!4300554) (not b!4300595) tp_is_empty!23281 (not bm!296458) (not d!1266664) (not b_lambda!126381) (not bm!296479) (not bm!296467) (not bm!296466) (not d!1266662) (not bm!296468) (not bm!296464) (not b!4300635) (not bm!296444) (not bm!296452) (not bm!296455) (not bm!296443) (not b!4300651) (not bm!296465) (not bm!296446) (not bm!296460) (not b_next!128767) b_and!339417 (not b_lambda!126379) (not b_next!128769) (not d!1266690) (not bm!296457) (not d!1266670) (not b!4300593) (not b_next!128765) (not bm!296450) (not b!4300629) (not b!4300643) (not bm!296469) (not bm!296441) (not b!4300630) (not d!1266672) (not bm!296456) (not bm!296470) (not bm!296445) (not bm!296461) b_and!339425 (not d!1266676) (not bm!296440) (not b!4300585) (not d!1266694) (not bm!296447) (not bm!296448) (not bm!296449) (not b!4300627) (not b!4300659) (not bm!296454) (not d!1266684) (not b!4300562) (not b!4300569) (not bm!296451) b_and!339413 (not b!4300658) (not b!4300556) (not b!4300628) (not d!1266674) (not b!4300591) (not bm!296463) (not b!4300626) tp_is_empty!23283 (not bm!296482) (not b!4300656) (not mapNonEmpty!20337) (not bm!296453) (not b!4300657) (not b_lambda!126371) (not b!4300577) (not b!4300583) (not b!4300650) (not b!4300576))
(check-sat (not b_next!128769) (not b_next!128765) b_and!339425 b_and!339413 (not b_next!128767) b_and!339417)
