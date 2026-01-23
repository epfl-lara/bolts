; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412172 () Bool)

(assert start!412172)

(declare-fun b!4293379 () Bool)

(declare-fun b_free!127615 () Bool)

(declare-fun b_next!128319 () Bool)

(assert (=> b!4293379 (= b_free!127615 (not b_next!128319))))

(declare-fun tp!1317502 () Bool)

(declare-fun b_and!338831 () Bool)

(assert (=> b!4293379 (= tp!1317502 b_and!338831)))

(declare-fun b!4293389 () Bool)

(declare-fun b_free!127617 () Bool)

(declare-fun b_next!128321 () Bool)

(assert (=> b!4293389 (= b_free!127617 (not b_next!128321))))

(declare-fun tp!1317501 () Bool)

(declare-fun b_and!338833 () Bool)

(assert (=> b!4293389 (= tp!1317501 b_and!338833)))

(declare-fun b!4293371 () Bool)

(declare-fun b_free!127619 () Bool)

(declare-fun b_next!128323 () Bool)

(assert (=> b!4293371 (= b_free!127619 (not b_next!128323))))

(declare-fun tp!1317500 () Bool)

(declare-fun b_and!338835 () Bool)

(assert (=> b!4293371 (= tp!1317500 b_and!338835)))

(declare-fun b!4293355 () Bool)

(declare-fun b_free!127621 () Bool)

(declare-fun b_next!128325 () Bool)

(assert (=> b!4293355 (= b_free!127621 (not b_next!128325))))

(declare-fun tp!1317489 () Bool)

(declare-fun b_and!338837 () Bool)

(assert (=> b!4293355 (= tp!1317489 b_and!338837)))

(declare-fun b!4293393 () Bool)

(declare-fun b_free!127623 () Bool)

(declare-fun b_next!128327 () Bool)

(assert (=> b!4293393 (= b_free!127623 (not b_next!128327))))

(declare-fun tp!1317483 () Bool)

(declare-fun b_and!338839 () Bool)

(assert (=> b!4293393 (= tp!1317483 b_and!338839)))

(declare-fun b!4293368 () Bool)

(declare-fun b_free!127625 () Bool)

(declare-fun b_next!128329 () Bool)

(assert (=> b!4293368 (= b_free!127625 (not b_next!128329))))

(declare-fun tp!1317491 () Bool)

(declare-fun b_and!338841 () Bool)

(assert (=> b!4293368 (= tp!1317491 b_and!338841)))

(declare-fun b!4293350 () Bool)

(declare-fun e!2667597 () Int)

(declare-datatypes ((C!26144 0))(
  ( (C!26145 (val!15398 Int)) )
))
(declare-datatypes ((Regex!12973 0))(
  ( (ElementMatch!12973 (c!730656 C!26144)) (Concat!21292 (regOne!26458 Regex!12973) (regTwo!26458 Regex!12973)) (EmptyExpr!12973) (Star!12973 (reg!13302 Regex!12973)) (EmptyLang!12973) (Union!12973 (regOne!26459 Regex!12973) (regTwo!26459 Regex!12973)) )
))
(declare-datatypes ((List!47891 0))(
  ( (Nil!47767) (Cons!47767 (h!53187 Regex!12973) (t!354495 List!47891)) )
))
(declare-datatypes ((Context!5726 0))(
  ( (Context!5727 (exprs!3363 List!47891)) )
))
(declare-datatypes ((tuple2!45486 0))(
  ( (tuple2!45487 (_1!26005 Context!5726) (_2!26005 C!26144)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45488 0))(
  ( (tuple2!45489 (_1!26006 tuple2!45486) (_2!26006 (InoxSet Context!5726))) )
))
(declare-datatypes ((Hashable!4358 0))(
  ( (HashableExt!4357 (__x!29351 Int)) )
))
(declare-datatypes ((tuple3!5470 0))(
  ( (tuple3!5471 (_1!26007 Regex!12973) (_2!26007 Context!5726) (_3!3262 C!26144)) )
))
(declare-datatypes ((tuple2!45490 0))(
  ( (tuple2!45491 (_1!26008 tuple3!5470) (_2!26008 (InoxSet Context!5726))) )
))
(declare-datatypes ((List!47892 0))(
  ( (Nil!47768) (Cons!47768 (h!53188 tuple2!45490) (t!354496 List!47892)) )
))
(declare-datatypes ((array!15848 0))(
  ( (array!15849 (arr!7082 (Array (_ BitVec 32) (_ BitVec 64))) (size!35076 (_ BitVec 32))) )
))
(declare-datatypes ((array!15850 0))(
  ( (array!15851 (arr!7083 (Array (_ BitVec 32) List!47892)) (size!35077 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8884 0))(
  ( (LongMapFixedSize!8885 (defaultEntry!4827 Int) (mask!12898 (_ BitVec 32)) (extraKeys!4691 (_ BitVec 32)) (zeroValue!4701 List!47892) (minValue!4701 List!47892) (_size!8927 (_ BitVec 32)) (_keys!4742 array!15848) (_values!4723 array!15850) (_vacant!4503 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17577 0))(
  ( (Cell!17578 (v!41707 LongMapFixedSize!8884)) )
))
(declare-datatypes ((MutLongMap!4442 0))(
  ( (LongMap!4442 (underlying!9113 Cell!17577)) (MutLongMapExt!4441 (__x!29352 Int)) )
))
(declare-datatypes ((Cell!17579 0))(
  ( (Cell!17580 (v!41708 MutLongMap!4442)) )
))
(declare-datatypes ((MutableMap!4348 0))(
  ( (MutableMapExt!4347 (__x!29353 Int)) (HashMap!4348 (underlying!9114 Cell!17579) (hashF!6390 Hashable!4358) (_size!8928 (_ BitVec 32)) (defaultValue!4519 Int)) )
))
(declare-datatypes ((tuple2!45492 0))(
  ( (tuple2!45493 (_1!26009 (InoxSet Context!5726)) (_2!26009 Int)) )
))
(declare-datatypes ((tuple2!45494 0))(
  ( (tuple2!45495 (_1!26010 tuple2!45492) (_2!26010 Int)) )
))
(declare-datatypes ((List!47893 0))(
  ( (Nil!47769) (Cons!47769 (h!53189 tuple2!45494) (t!354497 List!47893)) )
))
(declare-datatypes ((array!15852 0))(
  ( (array!15853 (arr!7084 (Array (_ BitVec 32) List!47893)) (size!35078 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8886 0))(
  ( (LongMapFixedSize!8887 (defaultEntry!4828 Int) (mask!12899 (_ BitVec 32)) (extraKeys!4692 (_ BitVec 32)) (zeroValue!4702 List!47893) (minValue!4702 List!47893) (_size!8929 (_ BitVec 32)) (_keys!4743 array!15848) (_values!4724 array!15852) (_vacant!4504 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17581 0))(
  ( (Cell!17582 (v!41709 LongMapFixedSize!8886)) )
))
(declare-datatypes ((MutLongMap!4443 0))(
  ( (LongMap!4443 (underlying!9115 Cell!17581)) (MutLongMapExt!4442 (__x!29354 Int)) )
))
(declare-datatypes ((Hashable!4359 0))(
  ( (HashableExt!4358 (__x!29355 Int)) )
))
(declare-datatypes ((Cell!17583 0))(
  ( (Cell!17584 (v!41710 MutLongMap!4443)) )
))
(declare-datatypes ((MutableMap!4349 0))(
  ( (MutableMapExt!4348 (__x!29356 Int)) (HashMap!4349 (underlying!9116 Cell!17583) (hashF!6391 Hashable!4359) (_size!8930 (_ BitVec 32)) (defaultValue!4520 Int)) )
))
(declare-datatypes ((List!47894 0))(
  ( (Nil!47770) (Cons!47770 (h!53190 tuple2!45488) (t!354498 List!47894)) )
))
(declare-datatypes ((array!15854 0))(
  ( (array!15855 (arr!7085 (Array (_ BitVec 32) List!47894)) (size!35079 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8888 0))(
  ( (LongMapFixedSize!8889 (defaultEntry!4829 Int) (mask!12900 (_ BitVec 32)) (extraKeys!4693 (_ BitVec 32)) (zeroValue!4703 List!47894) (minValue!4703 List!47894) (_size!8931 (_ BitVec 32)) (_keys!4744 array!15848) (_values!4725 array!15854) (_vacant!4505 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17585 0))(
  ( (Cell!17586 (v!41711 LongMapFixedSize!8888)) )
))
(declare-datatypes ((List!47895 0))(
  ( (Nil!47771) (Cons!47771 (h!53191 C!26144) (t!354499 List!47895)) )
))
(declare-datatypes ((IArray!28889 0))(
  ( (IArray!28890 (innerList!14502 List!47895)) )
))
(declare-datatypes ((Conc!14414 0))(
  ( (Node!14414 (left!35439 Conc!14414) (right!35769 Conc!14414) (csize!29058 Int) (cheight!14625 Int)) (Leaf!22302 (xs!17720 IArray!28889) (csize!29059 Int)) (Empty!14414) )
))
(declare-datatypes ((MutLongMap!4444 0))(
  ( (LongMap!4444 (underlying!9117 Cell!17585)) (MutLongMapExt!4443 (__x!29357 Int)) )
))
(declare-datatypes ((Cell!17587 0))(
  ( (Cell!17588 (v!41712 MutLongMap!4444)) )
))
(declare-datatypes ((Hashable!4360 0))(
  ( (HashableExt!4359 (__x!29358 Int)) )
))
(declare-datatypes ((MutableMap!4350 0))(
  ( (MutableMapExt!4349 (__x!29359 Int)) (HashMap!4350 (underlying!9118 Cell!17587) (hashF!6392 Hashable!4360) (_size!8932 (_ BitVec 32)) (defaultValue!4521 Int)) )
))
(declare-datatypes ((CacheUp!2834 0))(
  ( (CacheUp!2835 (cache!4488 MutableMap!4350)) )
))
(declare-datatypes ((BalanceConc!28318 0))(
  ( (BalanceConc!28319 (c!730657 Conc!14414)) )
))
(declare-datatypes ((CacheFindLongestMatch!516 0))(
  ( (CacheFindLongestMatch!517 (cache!4489 MutableMap!4349) (totalInput!4380 BalanceConc!28318)) )
))
(declare-datatypes ((CacheDown!2954 0))(
  ( (CacheDown!2955 (cache!4490 MutableMap!4348)) )
))
(declare-datatypes ((tuple4!1054 0))(
  ( (tuple4!1055 (_1!26011 Int) (_2!26011 CacheUp!2834) (_3!3263 CacheDown!2954) (_4!527 CacheFindLongestMatch!516)) )
))
(declare-fun lt!1517499 () tuple4!1054)

(assert (=> b!4293350 (= e!2667597 (+ 1 (_1!26011 lt!1517499)))))

(declare-fun b!4293351 () Bool)

(declare-fun e!2667606 () Bool)

(declare-fun tp!1317498 () Bool)

(declare-fun mapRes!19971 () Bool)

(assert (=> b!4293351 (= e!2667606 (and tp!1317498 mapRes!19971))))

(declare-fun condMapEmpty!19970 () Bool)

(declare-fun cacheUp!947 () CacheUp!2834)

(declare-fun mapDefault!19971 () List!47894)

(assert (=> b!4293351 (= condMapEmpty!19970 (= (arr!7085 (_values!4725 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47894)) mapDefault!19971)))))

(declare-fun b!4293352 () Bool)

(declare-fun e!2667604 () Bool)

(declare-fun e!2667584 () Bool)

(declare-fun lt!1517502 () MutLongMap!4444)

(get-info :version)

(assert (=> b!4293352 (= e!2667604 (and e!2667584 ((_ is LongMap!4444) lt!1517502)))))

(assert (=> b!4293352 (= lt!1517502 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))

(declare-fun b!4293353 () Bool)

(declare-fun res!1760249 () Bool)

(declare-fun valid!3440 (CacheUp!2834) Bool)

(assert (=> b!4293353 (= res!1760249 (valid!3440 (_2!26011 lt!1517499)))))

(declare-fun e!2667611 () Bool)

(assert (=> b!4293353 (=> (not res!1760249) (not e!2667611))))

(declare-fun mapNonEmpty!19969 () Bool)

(declare-fun mapRes!19969 () Bool)

(declare-fun tp!1317490 () Bool)

(declare-fun tp!1317503 () Bool)

(assert (=> mapNonEmpty!19969 (= mapRes!19969 (and tp!1317490 tp!1317503))))

(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!516)

(declare-fun mapValue!19971 () List!47893)

(declare-fun mapRest!19969 () (Array (_ BitVec 32) List!47893))

(declare-fun mapKey!19971 () (_ BitVec 32))

(assert (=> mapNonEmpty!19969 (= (arr!7084 (_values!4724 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))) (store mapRest!19969 mapKey!19971 mapValue!19971))))

(declare-fun b!4293354 () Bool)

(declare-fun e!2667599 () Bool)

(declare-fun e!2667602 () Bool)

(assert (=> b!4293354 (= e!2667599 e!2667602)))

(declare-fun tp!1317496 () Bool)

(declare-fun tp!1317486 () Bool)

(declare-fun e!2667616 () Bool)

(declare-fun e!2667592 () Bool)

(declare-fun array_inv!5077 (array!15848) Bool)

(declare-fun array_inv!5078 (array!15852) Bool)

(assert (=> b!4293355 (= e!2667616 (and tp!1317489 tp!1317496 tp!1317486 (array_inv!5077 (_keys!4743 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))) (array_inv!5078 (_values!4724 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))) e!2667592))))

(declare-fun b!4293356 () Bool)

(declare-fun e!2667591 () Bool)

(declare-fun e!2667595 () Bool)

(declare-fun lt!1517501 () MutLongMap!4443)

(assert (=> b!4293356 (= e!2667591 (and e!2667595 ((_ is LongMap!4443) lt!1517501)))))

(assert (=> b!4293356 (= lt!1517501 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))

(declare-fun b!4293357 () Bool)

(declare-fun e!2667609 () Int)

(assert (=> b!4293357 (= e!2667609 0)))

(declare-fun b!4293358 () Bool)

(declare-fun e!2667618 () Int)

(assert (=> b!4293358 (= e!2667618 1)))

(declare-fun b!4293359 () Bool)

(declare-fun e!2667590 () Bool)

(declare-fun e!2667600 () Bool)

(assert (=> b!4293359 (= e!2667590 e!2667600)))

(declare-fun b!4293360 () Bool)

(declare-fun c!730653 () Bool)

(declare-fun lt!1517497 () (InoxSet Context!5726))

(declare-fun nullableZipper!773 ((InoxSet Context!5726)) Bool)

(assert (=> b!4293360 (= c!730653 (nullableZipper!773 lt!1517497))))

(declare-fun e!2667585 () Int)

(assert (=> b!4293360 (= e!2667585 e!2667618)))

(declare-fun b!4293361 () Bool)

(declare-fun e!2667605 () Bool)

(declare-fun tp!1317480 () Bool)

(assert (=> b!4293361 (= e!2667605 tp!1317480)))

(declare-fun b!4293362 () Bool)

(declare-fun e!2667586 () Bool)

(declare-fun lt!1517500 () Int)

(assert (=> b!4293362 (= e!2667586 (= lt!1517500 0))))

(declare-fun b!4293363 () Bool)

(assert (=> b!4293363 (= e!2667584 e!2667599)))

(declare-fun b!4293364 () Bool)

(declare-fun e!2667607 () Bool)

(declare-fun e!2667603 () Bool)

(assert (=> b!4293364 (= e!2667607 e!2667603)))

(declare-fun b!4293365 () Bool)

(declare-fun e!2667613 () Bool)

(declare-fun totalInput!812 () BalanceConc!28318)

(declare-fun tp!1317484 () Bool)

(declare-fun inv!63282 (Conc!14414) Bool)

(assert (=> b!4293365 (= e!2667613 (and (inv!63282 (c!730657 totalInput!812)) tp!1317484))))

(declare-fun b!4293366 () Bool)

(declare-fun e!2667620 () Bool)

(declare-fun tp!1317499 () Bool)

(declare-fun mapRes!19970 () Bool)

(assert (=> b!4293366 (= e!2667620 (and tp!1317499 mapRes!19970))))

(declare-fun condMapEmpty!19969 () Bool)

(declare-fun cacheDown!1066 () CacheDown!2954)

(declare-fun mapDefault!19970 () List!47892)

(assert (=> b!4293366 (= condMapEmpty!19969 (= (arr!7083 (_values!4723 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47892)) mapDefault!19970)))))

(declare-fun b!4293367 () Bool)

(assert (=> b!4293367 (= e!2667618 0)))

(declare-fun tp!1317495 () Bool)

(declare-fun setElem!26541 () Context!5726)

(declare-fun setRes!26541 () Bool)

(declare-fun setNonEmpty!26541 () Bool)

(declare-fun inv!63283 (Context!5726) Bool)

(assert (=> setNonEmpty!26541 (= setRes!26541 (and tp!1317495 (inv!63283 setElem!26541) e!2667605))))

(declare-fun z!3765 () (InoxSet Context!5726))

(declare-fun setRest!26541 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26541 (= z!3765 ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26541 true) setRest!26541))))

(declare-fun e!2667619 () Bool)

(assert (=> b!4293368 (= e!2667600 (and e!2667619 tp!1317491))))

(declare-fun b!4293369 () Bool)

(declare-fun e!2667615 () Bool)

(declare-fun lostCauseZipper!651 ((InoxSet Context!5726)) Bool)

(assert (=> b!4293369 (= e!2667615 (lostCauseZipper!651 z!3765))))

(declare-fun b!4293370 () Bool)

(declare-fun e!2667614 () Bool)

(declare-fun tp!1317497 () Bool)

(assert (=> b!4293370 (= e!2667614 (and (inv!63282 (c!730657 (totalInput!4380 cacheFindLongestMatch!183))) tp!1317497))))

(declare-fun e!2667587 () Bool)

(assert (=> b!4293371 (= e!2667587 (and e!2667604 tp!1317500))))

(declare-fun b!4293372 () Bool)

(declare-fun e!2667598 () Bool)

(declare-datatypes ((tuple4!1056 0))(
  ( (tuple4!1057 (_1!26012 Int) (_2!26012 CacheFindLongestMatch!516) (_3!3264 CacheDown!2954) (_4!528 CacheUp!2834)) )
))
(declare-fun lt!1517498 () tuple4!1056)

(assert (=> b!4293372 (= e!2667598 (not (= (_1!26012 lt!1517498) lt!1517500)))))

(assert (=> b!4293372 e!2667586))

(declare-fun c!730654 () Bool)

(declare-fun lt!1517495 () Bool)

(assert (=> b!4293372 (= c!730654 lt!1517495)))

(declare-fun from!999 () Int)

(declare-fun totalInputSize!257 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!40 ((InoxSet Context!5726) Int BalanceConc!28318 Int) Int)

(assert (=> b!4293372 (= lt!1517500 (findLongestMatchInnerZipperFastV2!40 z!3765 from!999 totalInput!812 totalInputSize!257))))

(declare-fun e!2667608 () tuple4!1056)

(assert (=> b!4293372 (= lt!1517498 e!2667608)))

(declare-fun c!730652 () Bool)

(assert (=> b!4293372 (= c!730652 lt!1517495)))

(assert (=> b!4293372 (= lt!1517495 e!2667615)))

(declare-fun res!1760248 () Bool)

(assert (=> b!4293372 (=> res!1760248 e!2667615)))

(assert (=> b!4293372 (= res!1760248 (= from!999 totalInputSize!257))))

(declare-fun e!2667594 () Bool)

(declare-fun b!4293373 () Bool)

(declare-fun e!2667612 () Bool)

(declare-fun inv!63284 (BalanceConc!28318) Bool)

(assert (=> b!4293373 (= e!2667612 (and e!2667594 (inv!63284 (totalInput!4380 cacheFindLongestMatch!183)) e!2667614))))

(declare-fun mapNonEmpty!19970 () Bool)

(declare-fun tp!1317494 () Bool)

(declare-fun tp!1317504 () Bool)

(assert (=> mapNonEmpty!19970 (= mapRes!19970 (and tp!1317494 tp!1317504))))

(declare-fun mapRest!19971 () (Array (_ BitVec 32) List!47892))

(declare-fun mapValue!19969 () List!47892)

(declare-fun mapKey!19970 () (_ BitVec 32))

(assert (=> mapNonEmpty!19970 (= (arr!7083 (_values!4723 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))) (store mapRest!19971 mapKey!19970 mapValue!19969))))

(declare-fun res!1760250 () Bool)

(declare-fun e!2667593 () Bool)

(assert (=> start!412172 (=> (not res!1760250) (not e!2667593))))

(assert (=> start!412172 (= res!1760250 (>= from!999 0))))

(assert (=> start!412172 e!2667593))

(declare-fun inv!63285 (CacheDown!2954) Bool)

(assert (=> start!412172 (and (inv!63285 cacheDown!1066) e!2667590)))

(declare-fun inv!63286 (CacheFindLongestMatch!516) Bool)

(assert (=> start!412172 (and (inv!63286 cacheFindLongestMatch!183) e!2667612)))

(declare-fun condSetEmpty!26541 () Bool)

(assert (=> start!412172 (= condSetEmpty!26541 (= z!3765 ((as const (Array Context!5726 Bool)) false)))))

(assert (=> start!412172 setRes!26541))

(assert (=> start!412172 true))

(assert (=> start!412172 (and (inv!63284 totalInput!812) e!2667613)))

(declare-fun e!2667601 () Bool)

(declare-fun inv!63287 (CacheUp!2834) Bool)

(assert (=> start!412172 (and (inv!63287 cacheUp!947) e!2667601)))

(declare-fun b!4293374 () Bool)

(assert (=> b!4293374 (= e!2667586 (= lt!1517500 e!2667585))))

(declare-fun derivationStepZipper!551 ((InoxSet Context!5726) C!26144) (InoxSet Context!5726))

(declare-fun apply!10843 (BalanceConc!28318 Int) C!26144)

(assert (=> b!4293374 (= lt!1517497 (derivationStepZipper!551 z!3765 (apply!10843 totalInput!812 from!999)))))

(declare-fun lt!1517496 () Int)

(assert (=> b!4293374 (= lt!1517496 (findLongestMatchInnerZipperFastV2!40 lt!1517497 (+ 1 from!999) totalInput!812 totalInputSize!257))))

(declare-fun c!730651 () Bool)

(assert (=> b!4293374 (= c!730651 (> lt!1517496 0))))

(declare-fun b!4293375 () Bool)

(declare-fun lt!1517503 () MutLongMap!4442)

(assert (=> b!4293375 (= e!2667619 (and e!2667607 ((_ is LongMap!4442) lt!1517503)))))

(assert (=> b!4293375 (= lt!1517503 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))

(declare-fun b!4293376 () Bool)

(assert (=> b!4293376 (= e!2667611 (= (totalInput!4380 (_4!527 lt!1517499)) totalInput!812))))

(declare-fun b!4293377 () Bool)

(declare-fun res!1760247 () Bool)

(declare-fun valid!3441 (CacheDown!2954) Bool)

(assert (=> b!4293377 (= res!1760247 (valid!3441 (_3!3263 lt!1517499)))))

(assert (=> b!4293377 (=> (not res!1760247) (not e!2667611))))

(declare-fun b!4293378 () Bool)

(declare-fun res!1760252 () Bool)

(declare-fun valid!3442 (CacheFindLongestMatch!516) Bool)

(assert (=> b!4293378 (= res!1760252 (valid!3442 (_4!527 lt!1517499)))))

(assert (=> b!4293378 (=> (not res!1760252) (not e!2667611))))

(declare-fun tp!1317485 () Bool)

(declare-fun tp!1317487 () Bool)

(declare-fun array_inv!5079 (array!15854) Bool)

(assert (=> b!4293379 (= e!2667602 (and tp!1317502 tp!1317485 tp!1317487 (array_inv!5077 (_keys!4744 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))) (array_inv!5079 (_values!4725 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))) e!2667606))))

(declare-fun b!4293380 () Bool)

(assert (=> b!4293380 (= e!2667601 e!2667587)))

(declare-fun b!4293381 () Bool)

(assert (=> b!4293381 (= e!2667585 (+ 1 lt!1517496))))

(declare-fun mapIsEmpty!19969 () Bool)

(assert (=> mapIsEmpty!19969 mapRes!19969))

(declare-fun b!4293382 () Bool)

(assert (=> b!4293382 (= e!2667593 e!2667598)))

(declare-fun res!1760253 () Bool)

(assert (=> b!4293382 (=> (not res!1760253) (not e!2667598))))

(declare-fun lt!1517494 () Int)

(assert (=> b!4293382 (= res!1760253 (and (<= from!999 lt!1517494) (= totalInputSize!257 lt!1517494) (= (totalInput!4380 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35080 (BalanceConc!28318) Int)

(assert (=> b!4293382 (= lt!1517494 (size!35080 totalInput!812))))

(declare-fun setIsEmpty!26541 () Bool)

(assert (=> setIsEmpty!26541 setRes!26541))

(declare-fun b!4293383 () Bool)

(declare-fun e!2667617 () Bool)

(assert (=> b!4293383 (= e!2667595 e!2667617)))

(declare-fun b!4293384 () Bool)

(declare-fun tp!1317492 () Bool)

(assert (=> b!4293384 (= e!2667592 (and tp!1317492 mapRes!19969))))

(declare-fun condMapEmpty!19971 () Bool)

(declare-fun mapDefault!19969 () List!47893)

(assert (=> b!4293384 (= condMapEmpty!19971 (= (arr!7084 (_values!4724 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47893)) mapDefault!19969)))))

(declare-fun b!4293385 () Bool)

(declare-fun e!2667610 () Bool)

(assert (=> b!4293385 (= e!2667603 e!2667610)))

(declare-fun b!4293386 () Bool)

(declare-fun c!730650 () Bool)

(declare-datatypes ((tuple3!5472 0))(
  ( (tuple3!5473 (_1!26013 (InoxSet Context!5726)) (_2!26013 CacheUp!2834) (_3!3265 CacheDown!2954)) )
))
(declare-fun lt!1517504 () tuple3!5472)

(assert (=> b!4293386 (= c!730650 (nullableZipper!773 (_1!26013 lt!1517504)))))

(assert (=> b!4293386 (= e!2667597 e!2667609)))

(declare-fun b!4293387 () Bool)

(assert (=> b!4293387 (= e!2667608 (tuple4!1057 e!2667597 (_4!527 lt!1517499) (_3!3263 lt!1517499) (_2!26011 lt!1517499)))))

(declare-fun derivationStepZipperMem!136 ((InoxSet Context!5726) C!26144 CacheUp!2834 CacheDown!2954) tuple3!5472)

(assert (=> b!4293387 (= lt!1517504 (derivationStepZipperMem!136 z!3765 (apply!10843 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!20 ((InoxSet Context!5726) Int BalanceConc!28318 Int CacheUp!2834 CacheDown!2954 CacheFindLongestMatch!516) tuple4!1054)

(assert (=> b!4293387 (= lt!1517499 (findLongestMatchInnerZipperFastV2Mem!20 (_1!26013 lt!1517504) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26013 lt!1517504) (_3!3265 lt!1517504) cacheFindLongestMatch!183))))

(declare-fun res!1760251 () Bool)

(assert (=> b!4293387 (= res!1760251 (= (_1!26011 lt!1517499) (findLongestMatchInnerZipperFastV2!40 (_1!26013 lt!1517504) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(assert (=> b!4293387 (=> (not res!1760251) (not e!2667611))))

(assert (=> b!4293387 e!2667611))

(declare-fun c!730655 () Bool)

(assert (=> b!4293387 (= c!730655 (> (_1!26011 lt!1517499) 0))))

(declare-fun mapIsEmpty!19970 () Bool)

(assert (=> mapIsEmpty!19970 mapRes!19971))

(declare-fun b!4293388 () Bool)

(assert (=> b!4293388 (= e!2667617 e!2667616)))

(declare-fun tp!1317481 () Bool)

(declare-fun tp!1317493 () Bool)

(declare-fun array_inv!5080 (array!15850) Bool)

(assert (=> b!4293389 (= e!2667610 (and tp!1317501 tp!1317481 tp!1317493 (array_inv!5077 (_keys!4742 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))) (array_inv!5080 (_values!4723 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))) e!2667620))))

(declare-fun b!4293390 () Bool)

(assert (=> b!4293390 (= e!2667608 (tuple4!1057 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun mapNonEmpty!19971 () Bool)

(declare-fun tp!1317482 () Bool)

(declare-fun tp!1317488 () Bool)

(assert (=> mapNonEmpty!19971 (= mapRes!19971 (and tp!1317482 tp!1317488))))

(declare-fun mapValue!19970 () List!47894)

(declare-fun mapKey!19969 () (_ BitVec 32))

(declare-fun mapRest!19970 () (Array (_ BitVec 32) List!47894))

(assert (=> mapNonEmpty!19971 (= (arr!7085 (_values!4725 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))) (store mapRest!19970 mapKey!19969 mapValue!19970))))

(declare-fun b!4293391 () Bool)

(assert (=> b!4293391 (= e!2667609 1)))

(declare-fun b!4293392 () Bool)

(declare-fun res!1760246 () Bool)

(assert (=> b!4293392 (=> (not res!1760246) (not e!2667598))))

(declare-datatypes ((Option!10143 0))(
  ( (None!10142) (Some!10142 (v!41713 Int)) )
))
(declare-fun get!15461 (CacheFindLongestMatch!516 (InoxSet Context!5726) Int) Option!10143)

(assert (=> b!4293392 (= res!1760246 (not ((_ is Some!10142) (get!15461 cacheFindLongestMatch!183 z!3765 from!999))))))

(assert (=> b!4293393 (= e!2667594 (and e!2667591 tp!1317483))))

(declare-fun mapIsEmpty!19971 () Bool)

(assert (=> mapIsEmpty!19971 mapRes!19970))

(assert (= (and start!412172 res!1760250) b!4293382))

(assert (= (and b!4293382 res!1760253) b!4293392))

(assert (= (and b!4293392 res!1760246) b!4293372))

(assert (= (and b!4293372 (not res!1760248)) b!4293369))

(assert (= (and b!4293372 c!730652) b!4293390))

(assert (= (and b!4293372 (not c!730652)) b!4293387))

(assert (= (and b!4293387 res!1760251) b!4293353))

(assert (= (and b!4293353 res!1760249) b!4293377))

(assert (= (and b!4293377 res!1760247) b!4293378))

(assert (= (and b!4293378 res!1760252) b!4293376))

(assert (= (and b!4293387 c!730655) b!4293350))

(assert (= (and b!4293387 (not c!730655)) b!4293386))

(assert (= (and b!4293386 c!730650) b!4293391))

(assert (= (and b!4293386 (not c!730650)) b!4293357))

(assert (= (and b!4293372 c!730654) b!4293362))

(assert (= (and b!4293372 (not c!730654)) b!4293374))

(assert (= (and b!4293374 c!730651) b!4293381))

(assert (= (and b!4293374 (not c!730651)) b!4293360))

(assert (= (and b!4293360 c!730653) b!4293358))

(assert (= (and b!4293360 (not c!730653)) b!4293367))

(assert (= (and b!4293366 condMapEmpty!19969) mapIsEmpty!19971))

(assert (= (and b!4293366 (not condMapEmpty!19969)) mapNonEmpty!19970))

(assert (= b!4293389 b!4293366))

(assert (= b!4293385 b!4293389))

(assert (= b!4293364 b!4293385))

(assert (= (and b!4293375 ((_ is LongMap!4442) (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))) b!4293364))

(assert (= b!4293368 b!4293375))

(assert (= (and b!4293359 ((_ is HashMap!4348) (cache!4490 cacheDown!1066))) b!4293368))

(assert (= start!412172 b!4293359))

(assert (= (and b!4293384 condMapEmpty!19971) mapIsEmpty!19969))

(assert (= (and b!4293384 (not condMapEmpty!19971)) mapNonEmpty!19969))

(assert (= b!4293355 b!4293384))

(assert (= b!4293388 b!4293355))

(assert (= b!4293383 b!4293388))

(assert (= (and b!4293356 ((_ is LongMap!4443) (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))) b!4293383))

(assert (= b!4293393 b!4293356))

(assert (= (and b!4293373 ((_ is HashMap!4349) (cache!4489 cacheFindLongestMatch!183))) b!4293393))

(assert (= b!4293373 b!4293370))

(assert (= start!412172 b!4293373))

(assert (= (and start!412172 condSetEmpty!26541) setIsEmpty!26541))

(assert (= (and start!412172 (not condSetEmpty!26541)) setNonEmpty!26541))

(assert (= setNonEmpty!26541 b!4293361))

(assert (= start!412172 b!4293365))

(assert (= (and b!4293351 condMapEmpty!19970) mapIsEmpty!19970))

(assert (= (and b!4293351 (not condMapEmpty!19970)) mapNonEmpty!19971))

(assert (= b!4293379 b!4293351))

(assert (= b!4293354 b!4293379))

(assert (= b!4293363 b!4293354))

(assert (= (and b!4293352 ((_ is LongMap!4444) (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))) b!4293363))

(assert (= b!4293371 b!4293352))

(assert (= (and b!4293380 ((_ is HashMap!4350) (cache!4488 cacheUp!947))) b!4293371))

(assert (= start!412172 b!4293380))

(declare-fun m!4886418 () Bool)

(assert (=> setNonEmpty!26541 m!4886418))

(declare-fun m!4886420 () Bool)

(assert (=> b!4293353 m!4886420))

(declare-fun m!4886422 () Bool)

(assert (=> b!4293372 m!4886422))

(declare-fun m!4886424 () Bool)

(assert (=> b!4293365 m!4886424))

(declare-fun m!4886426 () Bool)

(assert (=> b!4293392 m!4886426))

(declare-fun m!4886428 () Bool)

(assert (=> b!4293374 m!4886428))

(assert (=> b!4293374 m!4886428))

(declare-fun m!4886430 () Bool)

(assert (=> b!4293374 m!4886430))

(declare-fun m!4886432 () Bool)

(assert (=> b!4293374 m!4886432))

(declare-fun m!4886434 () Bool)

(assert (=> b!4293373 m!4886434))

(declare-fun m!4886436 () Bool)

(assert (=> b!4293369 m!4886436))

(declare-fun m!4886438 () Bool)

(assert (=> b!4293389 m!4886438))

(declare-fun m!4886440 () Bool)

(assert (=> b!4293389 m!4886440))

(declare-fun m!4886442 () Bool)

(assert (=> mapNonEmpty!19969 m!4886442))

(declare-fun m!4886444 () Bool)

(assert (=> b!4293382 m!4886444))

(declare-fun m!4886446 () Bool)

(assert (=> b!4293360 m!4886446))

(declare-fun m!4886448 () Bool)

(assert (=> b!4293377 m!4886448))

(declare-fun m!4886450 () Bool)

(assert (=> b!4293378 m!4886450))

(declare-fun m!4886452 () Bool)

(assert (=> mapNonEmpty!19971 m!4886452))

(declare-fun m!4886454 () Bool)

(assert (=> b!4293355 m!4886454))

(declare-fun m!4886456 () Bool)

(assert (=> b!4293355 m!4886456))

(declare-fun m!4886458 () Bool)

(assert (=> b!4293379 m!4886458))

(declare-fun m!4886460 () Bool)

(assert (=> b!4293379 m!4886460))

(assert (=> b!4293387 m!4886428))

(assert (=> b!4293387 m!4886428))

(declare-fun m!4886462 () Bool)

(assert (=> b!4293387 m!4886462))

(declare-fun m!4886464 () Bool)

(assert (=> b!4293387 m!4886464))

(declare-fun m!4886466 () Bool)

(assert (=> b!4293387 m!4886466))

(declare-fun m!4886468 () Bool)

(assert (=> start!412172 m!4886468))

(declare-fun m!4886470 () Bool)

(assert (=> start!412172 m!4886470))

(declare-fun m!4886472 () Bool)

(assert (=> start!412172 m!4886472))

(declare-fun m!4886474 () Bool)

(assert (=> start!412172 m!4886474))

(declare-fun m!4886476 () Bool)

(assert (=> b!4293370 m!4886476))

(declare-fun m!4886478 () Bool)

(assert (=> b!4293386 m!4886478))

(declare-fun m!4886480 () Bool)

(assert (=> mapNonEmpty!19970 m!4886480))

(check-sat (not b!4293392) (not b_next!128329) (not b!4293369) (not start!412172) (not b!4293387) (not b_next!128323) (not b!4293377) (not mapNonEmpty!19969) (not b!4293384) (not b!4293366) (not b!4293353) (not b!4293355) b_and!338835 b_and!338831 (not b!4293389) b_and!338837 (not b!4293351) (not mapNonEmpty!19970) (not b!4293378) (not b!4293374) (not b_next!128325) (not b!4293386) (not b!4293372) (not b!4293382) (not b_next!128321) (not mapNonEmpty!19971) b_and!338841 (not setNonEmpty!26541) (not b!4293370) b_and!338833 (not b!4293361) (not b_next!128319) (not b!4293379) (not b_next!128327) (not b!4293360) b_and!338839 (not b!4293373) (not b!4293365))
(check-sat b_and!338837 (not b_next!128325) (not b_next!128329) b_and!338833 (not b_next!128319) (not b_next!128323) b_and!338835 b_and!338831 (not b_next!128321) b_and!338841 (not b_next!128327) b_and!338839)
(get-model)

(declare-fun d!1265734 () Bool)

(assert (=> d!1265734 (= (array_inv!5077 (_keys!4743 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))) (bvsge (size!35076 (_keys!4743 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))) #b00000000000000000000000000000000))))

(assert (=> b!4293355 d!1265734))

(declare-fun d!1265736 () Bool)

(assert (=> d!1265736 (= (array_inv!5078 (_values!4724 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))) (bvsge (size!35078 (_values!4724 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))) #b00000000000000000000000000000000))))

(assert (=> b!4293355 d!1265736))

(declare-fun d!1265738 () Bool)

(declare-fun e!2667623 () Bool)

(assert (=> d!1265738 e!2667623))

(declare-fun res!1760256 () Bool)

(assert (=> d!1265738 (=> res!1760256 e!2667623)))

(declare-fun lt!1517507 () Option!10143)

(declare-fun isEmpty!28026 (Option!10143) Bool)

(assert (=> d!1265738 (= res!1760256 (isEmpty!28026 lt!1517507))))

(declare-fun choose!26145 (CacheFindLongestMatch!516 (InoxSet Context!5726) Int) Option!10143)

(assert (=> d!1265738 (= lt!1517507 (choose!26145 cacheFindLongestMatch!183 z!3765 from!999))))

(declare-fun validCacheMapFindLongestMatch!81 (MutableMap!4349 BalanceConc!28318) Bool)

(assert (=> d!1265738 (validCacheMapFindLongestMatch!81 (cache!4489 cacheFindLongestMatch!183) (totalInput!4380 cacheFindLongestMatch!183))))

(assert (=> d!1265738 (= (get!15461 cacheFindLongestMatch!183 z!3765 from!999) lt!1517507)))

(declare-fun b!4293396 () Bool)

(declare-fun get!15462 (Option!10143) Int)

(assert (=> b!4293396 (= e!2667623 (= (get!15462 lt!1517507) (findLongestMatchInnerZipperFastV2!40 z!3765 from!999 (totalInput!4380 cacheFindLongestMatch!183) (size!35080 (totalInput!4380 cacheFindLongestMatch!183)))))))

(assert (= (and d!1265738 (not res!1760256)) b!4293396))

(declare-fun m!4886482 () Bool)

(assert (=> d!1265738 m!4886482))

(declare-fun m!4886484 () Bool)

(assert (=> d!1265738 m!4886484))

(declare-fun m!4886486 () Bool)

(assert (=> d!1265738 m!4886486))

(declare-fun m!4886488 () Bool)

(assert (=> b!4293396 m!4886488))

(declare-fun m!4886490 () Bool)

(assert (=> b!4293396 m!4886490))

(assert (=> b!4293396 m!4886490))

(declare-fun m!4886492 () Bool)

(assert (=> b!4293396 m!4886492))

(assert (=> b!4293392 d!1265738))

(declare-fun d!1265740 () Bool)

(declare-fun c!730660 () Bool)

(assert (=> d!1265740 (= c!730660 ((_ is Node!14414) (c!730657 totalInput!812)))))

(declare-fun e!2667628 () Bool)

(assert (=> d!1265740 (= (inv!63282 (c!730657 totalInput!812)) e!2667628)))

(declare-fun b!4293403 () Bool)

(declare-fun inv!63288 (Conc!14414) Bool)

(assert (=> b!4293403 (= e!2667628 (inv!63288 (c!730657 totalInput!812)))))

(declare-fun b!4293404 () Bool)

(declare-fun e!2667629 () Bool)

(assert (=> b!4293404 (= e!2667628 e!2667629)))

(declare-fun res!1760259 () Bool)

(assert (=> b!4293404 (= res!1760259 (not ((_ is Leaf!22302) (c!730657 totalInput!812))))))

(assert (=> b!4293404 (=> res!1760259 e!2667629)))

(declare-fun b!4293405 () Bool)

(declare-fun inv!63289 (Conc!14414) Bool)

(assert (=> b!4293405 (= e!2667629 (inv!63289 (c!730657 totalInput!812)))))

(assert (= (and d!1265740 c!730660) b!4293403))

(assert (= (and d!1265740 (not c!730660)) b!4293404))

(assert (= (and b!4293404 (not res!1760259)) b!4293405))

(declare-fun m!4886494 () Bool)

(assert (=> b!4293403 m!4886494))

(declare-fun m!4886496 () Bool)

(assert (=> b!4293405 m!4886496))

(assert (=> b!4293365 d!1265740))

(declare-fun d!1265742 () Bool)

(declare-fun res!1760262 () Bool)

(declare-fun e!2667632 () Bool)

(assert (=> d!1265742 (=> (not res!1760262) (not e!2667632))))

(assert (=> d!1265742 (= res!1760262 ((_ is HashMap!4348) (cache!4490 cacheDown!1066)))))

(assert (=> d!1265742 (= (inv!63285 cacheDown!1066) e!2667632)))

(declare-fun b!4293408 () Bool)

(declare-fun validCacheMapDown!451 (MutableMap!4348) Bool)

(assert (=> b!4293408 (= e!2667632 (validCacheMapDown!451 (cache!4490 cacheDown!1066)))))

(assert (= (and d!1265742 res!1760262) b!4293408))

(declare-fun m!4886498 () Bool)

(assert (=> b!4293408 m!4886498))

(assert (=> start!412172 d!1265742))

(declare-fun d!1265744 () Bool)

(declare-fun res!1760265 () Bool)

(declare-fun e!2667635 () Bool)

(assert (=> d!1265744 (=> (not res!1760265) (not e!2667635))))

(assert (=> d!1265744 (= res!1760265 ((_ is HashMap!4349) (cache!4489 cacheFindLongestMatch!183)))))

(assert (=> d!1265744 (= (inv!63286 cacheFindLongestMatch!183) e!2667635)))

(declare-fun b!4293411 () Bool)

(assert (=> b!4293411 (= e!2667635 (validCacheMapFindLongestMatch!81 (cache!4489 cacheFindLongestMatch!183) (totalInput!4380 cacheFindLongestMatch!183)))))

(assert (= (and d!1265744 res!1760265) b!4293411))

(assert (=> b!4293411 m!4886486))

(assert (=> start!412172 d!1265744))

(declare-fun d!1265746 () Bool)

(declare-fun isBalanced!3886 (Conc!14414) Bool)

(assert (=> d!1265746 (= (inv!63284 totalInput!812) (isBalanced!3886 (c!730657 totalInput!812)))))

(declare-fun bs!603004 () Bool)

(assert (= bs!603004 d!1265746))

(declare-fun m!4886500 () Bool)

(assert (=> bs!603004 m!4886500))

(assert (=> start!412172 d!1265746))

(declare-fun d!1265748 () Bool)

(declare-fun res!1760268 () Bool)

(declare-fun e!2667638 () Bool)

(assert (=> d!1265748 (=> (not res!1760268) (not e!2667638))))

(assert (=> d!1265748 (= res!1760268 ((_ is HashMap!4350) (cache!4488 cacheUp!947)))))

(assert (=> d!1265748 (= (inv!63287 cacheUp!947) e!2667638)))

(declare-fun b!4293414 () Bool)

(declare-fun validCacheMapUp!420 (MutableMap!4350) Bool)

(assert (=> b!4293414 (= e!2667638 (validCacheMapUp!420 (cache!4488 cacheUp!947)))))

(assert (= (and d!1265748 res!1760268) b!4293414))

(declare-fun m!4886502 () Bool)

(assert (=> b!4293414 m!4886502))

(assert (=> start!412172 d!1265748))

(declare-fun d!1265750 () Bool)

(assert (=> d!1265750 true))

(declare-fun lambda!131539 () Int)

(declare-fun flatMap!255 ((InoxSet Context!5726) Int) (InoxSet Context!5726))

(assert (=> d!1265750 (= (derivationStepZipper!551 z!3765 (apply!10843 totalInput!812 from!999)) (flatMap!255 z!3765 lambda!131539))))

(declare-fun bs!603005 () Bool)

(assert (= bs!603005 d!1265750))

(declare-fun m!4886504 () Bool)

(assert (=> bs!603005 m!4886504))

(assert (=> b!4293374 d!1265750))

(declare-fun d!1265752 () Bool)

(declare-fun lt!1517510 () C!26144)

(declare-fun apply!10844 (List!47895 Int) C!26144)

(declare-fun list!17362 (BalanceConc!28318) List!47895)

(assert (=> d!1265752 (= lt!1517510 (apply!10844 (list!17362 totalInput!812) from!999))))

(declare-fun apply!10845 (Conc!14414 Int) C!26144)

(assert (=> d!1265752 (= lt!1517510 (apply!10845 (c!730657 totalInput!812) from!999))))

(declare-fun e!2667641 () Bool)

(assert (=> d!1265752 e!2667641))

(declare-fun res!1760271 () Bool)

(assert (=> d!1265752 (=> (not res!1760271) (not e!2667641))))

(assert (=> d!1265752 (= res!1760271 (<= 0 from!999))))

(assert (=> d!1265752 (= (apply!10843 totalInput!812 from!999) lt!1517510)))

(declare-fun b!4293419 () Bool)

(assert (=> b!4293419 (= e!2667641 (< from!999 (size!35080 totalInput!812)))))

(assert (= (and d!1265752 res!1760271) b!4293419))

(declare-fun m!4886506 () Bool)

(assert (=> d!1265752 m!4886506))

(assert (=> d!1265752 m!4886506))

(declare-fun m!4886508 () Bool)

(assert (=> d!1265752 m!4886508))

(declare-fun m!4886510 () Bool)

(assert (=> d!1265752 m!4886510))

(assert (=> b!4293419 m!4886444))

(assert (=> b!4293374 d!1265752))

(declare-fun b!4293436 () Bool)

(declare-fun e!2667656 () Int)

(assert (=> b!4293436 (= e!2667656 0)))

(declare-fun b!4293437 () Bool)

(declare-fun e!2667653 () Int)

(declare-fun lt!1517519 () Int)

(assert (=> b!4293437 (= e!2667653 (+ 1 lt!1517519))))

(declare-fun d!1265754 () Bool)

(declare-fun lt!1517518 () Int)

(assert (=> d!1265754 (and (>= lt!1517518 0) (<= lt!1517518 (- totalInputSize!257 (+ 1 from!999))))))

(assert (=> d!1265754 (= lt!1517518 e!2667656)))

(declare-fun c!730669 () Bool)

(declare-fun e!2667655 () Bool)

(assert (=> d!1265754 (= c!730669 e!2667655)))

(declare-fun res!1760277 () Bool)

(assert (=> d!1265754 (=> res!1760277 e!2667655)))

(assert (=> d!1265754 (= res!1760277 (= (+ 1 from!999) totalInputSize!257))))

(declare-fun e!2667652 () Bool)

(assert (=> d!1265754 e!2667652))

(declare-fun res!1760276 () Bool)

(assert (=> d!1265754 (=> (not res!1760276) (not e!2667652))))

(assert (=> d!1265754 (= res!1760276 (>= (+ 1 from!999) 0))))

(assert (=> d!1265754 (= (findLongestMatchInnerZipperFastV2!40 lt!1517497 (+ 1 from!999) totalInput!812 totalInputSize!257) lt!1517518)))

(declare-fun b!4293438 () Bool)

(declare-fun e!2667654 () Int)

(assert (=> b!4293438 (= e!2667654 0)))

(declare-fun b!4293439 () Bool)

(assert (=> b!4293439 (= e!2667656 e!2667653)))

(declare-fun lt!1517517 () (InoxSet Context!5726))

(assert (=> b!4293439 (= lt!1517517 (derivationStepZipper!551 lt!1517497 (apply!10843 totalInput!812 (+ 1 from!999))))))

(assert (=> b!4293439 (= lt!1517519 (findLongestMatchInnerZipperFastV2!40 lt!1517517 (+ 1 from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730671 () Bool)

(assert (=> b!4293439 (= c!730671 (> lt!1517519 0))))

(declare-fun b!4293440 () Bool)

(declare-fun c!730670 () Bool)

(assert (=> b!4293440 (= c!730670 (nullableZipper!773 lt!1517517))))

(assert (=> b!4293440 (= e!2667653 e!2667654)))

(declare-fun b!4293441 () Bool)

(assert (=> b!4293441 (= e!2667652 (<= (+ 1 from!999) (size!35080 totalInput!812)))))

(declare-fun b!4293442 () Bool)

(assert (=> b!4293442 (= e!2667654 1)))

(declare-fun b!4293443 () Bool)

(assert (=> b!4293443 (= e!2667655 (lostCauseZipper!651 lt!1517497))))

(assert (= (and d!1265754 res!1760276) b!4293441))

(assert (= (and d!1265754 (not res!1760277)) b!4293443))

(assert (= (and d!1265754 c!730669) b!4293436))

(assert (= (and d!1265754 (not c!730669)) b!4293439))

(assert (= (and b!4293439 c!730671) b!4293437))

(assert (= (and b!4293439 (not c!730671)) b!4293440))

(assert (= (and b!4293440 c!730670) b!4293442))

(assert (= (and b!4293440 (not c!730670)) b!4293438))

(declare-fun m!4886512 () Bool)

(assert (=> b!4293439 m!4886512))

(assert (=> b!4293439 m!4886512))

(declare-fun m!4886514 () Bool)

(assert (=> b!4293439 m!4886514))

(declare-fun m!4886516 () Bool)

(assert (=> b!4293439 m!4886516))

(declare-fun m!4886518 () Bool)

(assert (=> b!4293440 m!4886518))

(assert (=> b!4293441 m!4886444))

(declare-fun m!4886520 () Bool)

(assert (=> b!4293443 m!4886520))

(assert (=> b!4293374 d!1265754))

(declare-fun d!1265756 () Bool)

(assert (=> d!1265756 (= (inv!63284 (totalInput!4380 cacheFindLongestMatch!183)) (isBalanced!3886 (c!730657 (totalInput!4380 cacheFindLongestMatch!183))))))

(declare-fun bs!603006 () Bool)

(assert (= bs!603006 d!1265756))

(declare-fun m!4886522 () Bool)

(assert (=> bs!603006 m!4886522))

(assert (=> b!4293373 d!1265756))

(declare-fun d!1265758 () Bool)

(declare-fun lt!1517522 () Int)

(declare-fun size!35081 (List!47895) Int)

(assert (=> d!1265758 (= lt!1517522 (size!35081 (list!17362 totalInput!812)))))

(declare-fun size!35082 (Conc!14414) Int)

(assert (=> d!1265758 (= lt!1517522 (size!35082 (c!730657 totalInput!812)))))

(assert (=> d!1265758 (= (size!35080 totalInput!812) lt!1517522)))

(declare-fun bs!603007 () Bool)

(assert (= bs!603007 d!1265758))

(assert (=> bs!603007 m!4886506))

(assert (=> bs!603007 m!4886506))

(declare-fun m!4886524 () Bool)

(assert (=> bs!603007 m!4886524))

(declare-fun m!4886526 () Bool)

(assert (=> bs!603007 m!4886526))

(assert (=> b!4293382 d!1265758))

(declare-fun b!4293444 () Bool)

(declare-fun e!2667661 () Int)

(assert (=> b!4293444 (= e!2667661 0)))

(declare-fun b!4293445 () Bool)

(declare-fun e!2667658 () Int)

(declare-fun lt!1517525 () Int)

(assert (=> b!4293445 (= e!2667658 (+ 1 lt!1517525))))

(declare-fun d!1265760 () Bool)

(declare-fun lt!1517524 () Int)

(assert (=> d!1265760 (and (>= lt!1517524 0) (<= lt!1517524 (- totalInputSize!257 from!999)))))

(assert (=> d!1265760 (= lt!1517524 e!2667661)))

(declare-fun c!730672 () Bool)

(declare-fun e!2667660 () Bool)

(assert (=> d!1265760 (= c!730672 e!2667660)))

(declare-fun res!1760279 () Bool)

(assert (=> d!1265760 (=> res!1760279 e!2667660)))

(assert (=> d!1265760 (= res!1760279 (= from!999 totalInputSize!257))))

(declare-fun e!2667657 () Bool)

(assert (=> d!1265760 e!2667657))

(declare-fun res!1760278 () Bool)

(assert (=> d!1265760 (=> (not res!1760278) (not e!2667657))))

(assert (=> d!1265760 (= res!1760278 (>= from!999 0))))

(assert (=> d!1265760 (= (findLongestMatchInnerZipperFastV2!40 z!3765 from!999 totalInput!812 totalInputSize!257) lt!1517524)))

(declare-fun b!4293446 () Bool)

(declare-fun e!2667659 () Int)

(assert (=> b!4293446 (= e!2667659 0)))

(declare-fun b!4293447 () Bool)

(assert (=> b!4293447 (= e!2667661 e!2667658)))

(declare-fun lt!1517523 () (InoxSet Context!5726))

(assert (=> b!4293447 (= lt!1517523 (derivationStepZipper!551 z!3765 (apply!10843 totalInput!812 from!999)))))

(assert (=> b!4293447 (= lt!1517525 (findLongestMatchInnerZipperFastV2!40 lt!1517523 (+ from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730674 () Bool)

(assert (=> b!4293447 (= c!730674 (> lt!1517525 0))))

(declare-fun b!4293448 () Bool)

(declare-fun c!730673 () Bool)

(assert (=> b!4293448 (= c!730673 (nullableZipper!773 lt!1517523))))

(assert (=> b!4293448 (= e!2667658 e!2667659)))

(declare-fun b!4293449 () Bool)

(assert (=> b!4293449 (= e!2667657 (<= from!999 (size!35080 totalInput!812)))))

(declare-fun b!4293450 () Bool)

(assert (=> b!4293450 (= e!2667659 1)))

(declare-fun b!4293451 () Bool)

(assert (=> b!4293451 (= e!2667660 (lostCauseZipper!651 z!3765))))

(assert (= (and d!1265760 res!1760278) b!4293449))

(assert (= (and d!1265760 (not res!1760279)) b!4293451))

(assert (= (and d!1265760 c!730672) b!4293444))

(assert (= (and d!1265760 (not c!730672)) b!4293447))

(assert (= (and b!4293447 c!730674) b!4293445))

(assert (= (and b!4293447 (not c!730674)) b!4293448))

(assert (= (and b!4293448 c!730673) b!4293450))

(assert (= (and b!4293448 (not c!730673)) b!4293446))

(assert (=> b!4293447 m!4886428))

(assert (=> b!4293447 m!4886428))

(assert (=> b!4293447 m!4886430))

(declare-fun m!4886528 () Bool)

(assert (=> b!4293447 m!4886528))

(declare-fun m!4886530 () Bool)

(assert (=> b!4293448 m!4886530))

(assert (=> b!4293449 m!4886444))

(assert (=> b!4293451 m!4886436))

(assert (=> b!4293372 d!1265760))

(declare-fun d!1265762 () Bool)

(assert (=> d!1265762 (= (valid!3440 (_2!26011 lt!1517499)) (validCacheMapUp!420 (cache!4488 (_2!26011 lt!1517499))))))

(declare-fun bs!603008 () Bool)

(assert (= bs!603008 d!1265762))

(declare-fun m!4886532 () Bool)

(assert (=> bs!603008 m!4886532))

(assert (=> b!4293353 d!1265762))

(declare-fun d!1265764 () Bool)

(assert (=> d!1265764 (= (array_inv!5077 (_keys!4742 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))) (bvsge (size!35076 (_keys!4742 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))) #b00000000000000000000000000000000))))

(assert (=> b!4293389 d!1265764))

(declare-fun d!1265766 () Bool)

(assert (=> d!1265766 (= (array_inv!5080 (_values!4723 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))) (bvsge (size!35077 (_values!4723 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066))))))) #b00000000000000000000000000000000))))

(assert (=> b!4293389 d!1265766))

(declare-fun d!1265768 () Bool)

(declare-fun lambda!131542 () Int)

(declare-fun exists!1225 ((InoxSet Context!5726) Int) Bool)

(assert (=> d!1265768 (= (nullableZipper!773 lt!1517497) (exists!1225 lt!1517497 lambda!131542))))

(declare-fun bs!603009 () Bool)

(assert (= bs!603009 d!1265768))

(declare-fun m!4886534 () Bool)

(assert (=> bs!603009 m!4886534))

(assert (=> b!4293360 d!1265768))

(declare-fun d!1265770 () Bool)

(declare-fun c!730677 () Bool)

(assert (=> d!1265770 (= c!730677 ((_ is Node!14414) (c!730657 (totalInput!4380 cacheFindLongestMatch!183))))))

(declare-fun e!2667662 () Bool)

(assert (=> d!1265770 (= (inv!63282 (c!730657 (totalInput!4380 cacheFindLongestMatch!183))) e!2667662)))

(declare-fun b!4293452 () Bool)

(assert (=> b!4293452 (= e!2667662 (inv!63288 (c!730657 (totalInput!4380 cacheFindLongestMatch!183))))))

(declare-fun b!4293453 () Bool)

(declare-fun e!2667663 () Bool)

(assert (=> b!4293453 (= e!2667662 e!2667663)))

(declare-fun res!1760280 () Bool)

(assert (=> b!4293453 (= res!1760280 (not ((_ is Leaf!22302) (c!730657 (totalInput!4380 cacheFindLongestMatch!183)))))))

(assert (=> b!4293453 (=> res!1760280 e!2667663)))

(declare-fun b!4293454 () Bool)

(assert (=> b!4293454 (= e!2667663 (inv!63289 (c!730657 (totalInput!4380 cacheFindLongestMatch!183))))))

(assert (= (and d!1265770 c!730677) b!4293452))

(assert (= (and d!1265770 (not c!730677)) b!4293453))

(assert (= (and b!4293453 (not res!1760280)) b!4293454))

(declare-fun m!4886536 () Bool)

(assert (=> b!4293452 m!4886536))

(declare-fun m!4886538 () Bool)

(assert (=> b!4293454 m!4886538))

(assert (=> b!4293370 d!1265770))

(declare-fun bs!603010 () Bool)

(declare-fun d!1265772 () Bool)

(assert (= bs!603010 (and d!1265772 d!1265768)))

(declare-fun lambda!131555 () Int)

(assert (=> bs!603010 (not (= lambda!131555 lambda!131542))))

(declare-fun bs!603011 () Bool)

(declare-fun b!4293459 () Bool)

(assert (= bs!603011 (and b!4293459 d!1265768)))

(declare-fun lambda!131556 () Int)

(assert (=> bs!603011 (not (= lambda!131556 lambda!131542))))

(declare-fun bs!603012 () Bool)

(assert (= bs!603012 (and b!4293459 d!1265772)))

(assert (=> bs!603012 (not (= lambda!131556 lambda!131555))))

(declare-fun bs!603013 () Bool)

(declare-fun b!4293460 () Bool)

(assert (= bs!603013 (and b!4293460 d!1265768)))

(declare-fun lambda!131557 () Int)

(assert (=> bs!603013 (not (= lambda!131557 lambda!131542))))

(declare-fun bs!603014 () Bool)

(assert (= bs!603014 (and b!4293460 d!1265772)))

(assert (=> bs!603014 (not (= lambda!131557 lambda!131555))))

(declare-fun bs!603015 () Bool)

(assert (= bs!603015 (and b!4293460 b!4293459)))

(assert (=> bs!603015 (= lambda!131557 lambda!131556)))

(declare-fun call!294517 () Bool)

(declare-fun c!730688 () Bool)

(declare-datatypes ((List!47896 0))(
  ( (Nil!47772) (Cons!47772 (h!53192 Context!5726) (t!354500 List!47896)) )
))
(declare-fun lt!1517545 () List!47896)

(declare-fun lt!1517543 () List!47896)

(declare-fun bm!294513 () Bool)

(declare-fun exists!1226 (List!47896 Int) Bool)

(assert (=> bm!294513 (= call!294517 (exists!1226 (ite c!730688 lt!1517545 lt!1517543) (ite c!730688 lambda!131556 lambda!131557)))))

(declare-datatypes ((Unit!66420 0))(
  ( (Unit!66421) )
))
(declare-fun e!2667670 () Unit!66420)

(declare-fun Unit!66422 () Unit!66420)

(assert (=> b!4293459 (= e!2667670 Unit!66422)))

(declare-fun call!294518 () List!47896)

(assert (=> b!4293459 (= lt!1517545 call!294518)))

(declare-fun lt!1517548 () Unit!66420)

(declare-fun lemmaNotForallThenExists!173 (List!47896 Int) Unit!66420)

(assert (=> b!4293459 (= lt!1517548 (lemmaNotForallThenExists!173 lt!1517545 lambda!131555))))

(assert (=> b!4293459 call!294517))

(declare-fun lt!1517547 () Unit!66420)

(assert (=> b!4293459 (= lt!1517547 lt!1517548)))

(declare-fun Unit!66423 () Unit!66420)

(assert (=> b!4293460 (= e!2667670 Unit!66423)))

(assert (=> b!4293460 (= lt!1517543 call!294518)))

(declare-fun lt!1517549 () Unit!66420)

(declare-fun lemmaForallThenNotExists!156 (List!47896 Int) Unit!66420)

(assert (=> b!4293460 (= lt!1517549 (lemmaForallThenNotExists!156 lt!1517543 lambda!131555))))

(assert (=> b!4293460 (not call!294517)))

(declare-fun lt!1517544 () Unit!66420)

(assert (=> b!4293460 (= lt!1517544 lt!1517549)))

(declare-fun lt!1517542 () Bool)

(declare-datatypes ((Option!10144 0))(
  ( (None!10143) (Some!10143 (v!41714 List!47895)) )
))
(declare-fun isEmpty!28027 (Option!10144) Bool)

(declare-fun getLanguageWitness!601 ((InoxSet Context!5726)) Option!10144)

(assert (=> d!1265772 (= lt!1517542 (isEmpty!28027 (getLanguageWitness!601 z!3765)))))

(declare-fun forall!8556 ((InoxSet Context!5726) Int) Bool)

(assert (=> d!1265772 (= lt!1517542 (forall!8556 z!3765 lambda!131555))))

(declare-fun lt!1517546 () Unit!66420)

(assert (=> d!1265772 (= lt!1517546 e!2667670)))

(assert (=> d!1265772 (= c!730688 (not (forall!8556 z!3765 lambda!131555)))))

(assert (=> d!1265772 (= (lostCauseZipper!651 z!3765) lt!1517542)))

(declare-fun bm!294512 () Bool)

(declare-fun toList!2128 ((InoxSet Context!5726)) List!47896)

(assert (=> bm!294512 (= call!294518 (toList!2128 z!3765))))

(assert (= (and d!1265772 c!730688) b!4293459))

(assert (= (and d!1265772 (not c!730688)) b!4293460))

(assert (= (or b!4293459 b!4293460) bm!294512))

(assert (= (or b!4293459 b!4293460) bm!294513))

(declare-fun m!4886540 () Bool)

(assert (=> d!1265772 m!4886540))

(assert (=> d!1265772 m!4886540))

(declare-fun m!4886542 () Bool)

(assert (=> d!1265772 m!4886542))

(declare-fun m!4886544 () Bool)

(assert (=> d!1265772 m!4886544))

(assert (=> d!1265772 m!4886544))

(declare-fun m!4886546 () Bool)

(assert (=> b!4293460 m!4886546))

(declare-fun m!4886548 () Bool)

(assert (=> bm!294513 m!4886548))

(declare-fun m!4886550 () Bool)

(assert (=> b!4293459 m!4886550))

(declare-fun m!4886552 () Bool)

(assert (=> bm!294512 m!4886552))

(assert (=> b!4293369 d!1265772))

(declare-fun d!1265774 () Bool)

(assert (=> d!1265774 (= (array_inv!5077 (_keys!4744 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))) (bvsge (size!35076 (_keys!4744 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))) #b00000000000000000000000000000000))))

(assert (=> b!4293379 d!1265774))

(declare-fun d!1265776 () Bool)

(assert (=> d!1265776 (= (array_inv!5079 (_values!4725 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))) (bvsge (size!35079 (_values!4725 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947))))))) #b00000000000000000000000000000000))))

(assert (=> b!4293379 d!1265776))

(declare-fun d!1265778 () Bool)

(declare-fun e!2667673 () Bool)

(assert (=> d!1265778 e!2667673))

(declare-fun res!1760285 () Bool)

(assert (=> d!1265778 (=> (not res!1760285) (not e!2667673))))

(declare-fun lt!1517552 () tuple3!5472)

(assert (=> d!1265778 (= res!1760285 (= (_1!26013 lt!1517552) (derivationStepZipper!551 z!3765 (apply!10843 totalInput!812 from!999))))))

(declare-fun choose!26146 ((InoxSet Context!5726) C!26144 CacheUp!2834 CacheDown!2954) tuple3!5472)

(assert (=> d!1265778 (= lt!1517552 (choose!26146 z!3765 (apply!10843 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(assert (=> d!1265778 (= (derivationStepZipperMem!136 z!3765 (apply!10843 totalInput!812 from!999) cacheUp!947 cacheDown!1066) lt!1517552)))

(declare-fun b!4293465 () Bool)

(declare-fun res!1760286 () Bool)

(assert (=> b!4293465 (=> (not res!1760286) (not e!2667673))))

(assert (=> b!4293465 (= res!1760286 (valid!3440 (_2!26013 lt!1517552)))))

(declare-fun b!4293466 () Bool)

(assert (=> b!4293466 (= e!2667673 (valid!3441 (_3!3265 lt!1517552)))))

(assert (= (and d!1265778 res!1760285) b!4293465))

(assert (= (and b!4293465 res!1760286) b!4293466))

(assert (=> d!1265778 m!4886428))

(assert (=> d!1265778 m!4886430))

(assert (=> d!1265778 m!4886428))

(declare-fun m!4886554 () Bool)

(assert (=> d!1265778 m!4886554))

(declare-fun m!4886556 () Bool)

(assert (=> b!4293465 m!4886556))

(declare-fun m!4886558 () Bool)

(assert (=> b!4293466 m!4886558))

(assert (=> b!4293387 d!1265778))

(assert (=> b!4293387 d!1265752))

(declare-fun b!4293477 () Bool)

(declare-fun e!2667678 () Bool)

(assert (=> b!4293477 (= e!2667678 (<= (+ 1 from!999) (size!35080 totalInput!812)))))

(declare-fun b!4293478 () Bool)

(declare-fun res!1760298 () Bool)

(declare-fun e!2667679 () Bool)

(assert (=> b!4293478 (=> (not res!1760298) (not e!2667679))))

(declare-fun lt!1517555 () tuple4!1054)

(assert (=> b!4293478 (= res!1760298 (valid!3440 (_2!26011 lt!1517555)))))

(declare-fun d!1265780 () Bool)

(assert (=> d!1265780 e!2667679))

(declare-fun res!1760297 () Bool)

(assert (=> d!1265780 (=> (not res!1760297) (not e!2667679))))

(assert (=> d!1265780 (= res!1760297 (= (_1!26011 lt!1517555) (findLongestMatchInnerZipperFastV2!40 (_1!26013 lt!1517504) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(declare-fun choose!26147 ((InoxSet Context!5726) Int BalanceConc!28318 Int CacheUp!2834 CacheDown!2954 CacheFindLongestMatch!516) tuple4!1054)

(assert (=> d!1265780 (= lt!1517555 (choose!26147 (_1!26013 lt!1517504) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26013 lt!1517504) (_3!3265 lt!1517504) cacheFindLongestMatch!183))))

(assert (=> d!1265780 e!2667678))

(declare-fun res!1760300 () Bool)

(assert (=> d!1265780 (=> (not res!1760300) (not e!2667678))))

(assert (=> d!1265780 (= res!1760300 (>= (+ 1 from!999) 0))))

(assert (=> d!1265780 (= (findLongestMatchInnerZipperFastV2Mem!20 (_1!26013 lt!1517504) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26013 lt!1517504) (_3!3265 lt!1517504) cacheFindLongestMatch!183) lt!1517555)))

(declare-fun b!4293479 () Bool)

(declare-fun res!1760301 () Bool)

(assert (=> b!4293479 (=> (not res!1760301) (not e!2667679))))

(assert (=> b!4293479 (= res!1760301 (valid!3442 (_4!527 lt!1517555)))))

(declare-fun b!4293480 () Bool)

(assert (=> b!4293480 (= e!2667679 (= (totalInput!4380 (_4!527 lt!1517555)) totalInput!812))))

(declare-fun b!4293481 () Bool)

(declare-fun res!1760299 () Bool)

(assert (=> b!4293481 (=> (not res!1760299) (not e!2667679))))

(assert (=> b!4293481 (= res!1760299 (valid!3441 (_3!3263 lt!1517555)))))

(assert (= (and d!1265780 res!1760300) b!4293477))

(assert (= (and d!1265780 res!1760297) b!4293478))

(assert (= (and b!4293478 res!1760298) b!4293481))

(assert (= (and b!4293481 res!1760299) b!4293479))

(assert (= (and b!4293479 res!1760301) b!4293480))

(declare-fun m!4886560 () Bool)

(assert (=> b!4293478 m!4886560))

(declare-fun m!4886562 () Bool)

(assert (=> b!4293481 m!4886562))

(assert (=> b!4293477 m!4886444))

(assert (=> d!1265780 m!4886466))

(declare-fun m!4886564 () Bool)

(assert (=> d!1265780 m!4886564))

(declare-fun m!4886566 () Bool)

(assert (=> b!4293479 m!4886566))

(assert (=> b!4293387 d!1265780))

(declare-fun b!4293482 () Bool)

(declare-fun e!2667684 () Int)

(assert (=> b!4293482 (= e!2667684 0)))

(declare-fun b!4293483 () Bool)

(declare-fun e!2667681 () Int)

(declare-fun lt!1517558 () Int)

(assert (=> b!4293483 (= e!2667681 (+ 1 lt!1517558))))

(declare-fun d!1265782 () Bool)

(declare-fun lt!1517557 () Int)

(assert (=> d!1265782 (and (>= lt!1517557 0) (<= lt!1517557 (- totalInputSize!257 (+ 1 from!999))))))

(assert (=> d!1265782 (= lt!1517557 e!2667684)))

(declare-fun c!730689 () Bool)

(declare-fun e!2667683 () Bool)

(assert (=> d!1265782 (= c!730689 e!2667683)))

(declare-fun res!1760303 () Bool)

(assert (=> d!1265782 (=> res!1760303 e!2667683)))

(assert (=> d!1265782 (= res!1760303 (= (+ 1 from!999) totalInputSize!257))))

(declare-fun e!2667680 () Bool)

(assert (=> d!1265782 e!2667680))

(declare-fun res!1760302 () Bool)

(assert (=> d!1265782 (=> (not res!1760302) (not e!2667680))))

(assert (=> d!1265782 (= res!1760302 (>= (+ 1 from!999) 0))))

(assert (=> d!1265782 (= (findLongestMatchInnerZipperFastV2!40 (_1!26013 lt!1517504) (+ 1 from!999) totalInput!812 totalInputSize!257) lt!1517557)))

(declare-fun b!4293484 () Bool)

(declare-fun e!2667682 () Int)

(assert (=> b!4293484 (= e!2667682 0)))

(declare-fun b!4293485 () Bool)

(assert (=> b!4293485 (= e!2667684 e!2667681)))

(declare-fun lt!1517556 () (InoxSet Context!5726))

(assert (=> b!4293485 (= lt!1517556 (derivationStepZipper!551 (_1!26013 lt!1517504) (apply!10843 totalInput!812 (+ 1 from!999))))))

(assert (=> b!4293485 (= lt!1517558 (findLongestMatchInnerZipperFastV2!40 lt!1517556 (+ 1 from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730691 () Bool)

(assert (=> b!4293485 (= c!730691 (> lt!1517558 0))))

(declare-fun b!4293486 () Bool)

(declare-fun c!730690 () Bool)

(assert (=> b!4293486 (= c!730690 (nullableZipper!773 lt!1517556))))

(assert (=> b!4293486 (= e!2667681 e!2667682)))

(declare-fun b!4293487 () Bool)

(assert (=> b!4293487 (= e!2667680 (<= (+ 1 from!999) (size!35080 totalInput!812)))))

(declare-fun b!4293488 () Bool)

(assert (=> b!4293488 (= e!2667682 1)))

(declare-fun b!4293489 () Bool)

(assert (=> b!4293489 (= e!2667683 (lostCauseZipper!651 (_1!26013 lt!1517504)))))

(assert (= (and d!1265782 res!1760302) b!4293487))

(assert (= (and d!1265782 (not res!1760303)) b!4293489))

(assert (= (and d!1265782 c!730689) b!4293482))

(assert (= (and d!1265782 (not c!730689)) b!4293485))

(assert (= (and b!4293485 c!730691) b!4293483))

(assert (= (and b!4293485 (not c!730691)) b!4293486))

(assert (= (and b!4293486 c!730690) b!4293488))

(assert (= (and b!4293486 (not c!730690)) b!4293484))

(assert (=> b!4293485 m!4886512))

(assert (=> b!4293485 m!4886512))

(declare-fun m!4886568 () Bool)

(assert (=> b!4293485 m!4886568))

(declare-fun m!4886570 () Bool)

(assert (=> b!4293485 m!4886570))

(declare-fun m!4886572 () Bool)

(assert (=> b!4293486 m!4886572))

(assert (=> b!4293487 m!4886444))

(declare-fun m!4886574 () Bool)

(assert (=> b!4293489 m!4886574))

(assert (=> b!4293387 d!1265782))

(declare-fun d!1265784 () Bool)

(declare-fun lambda!131560 () Int)

(declare-fun forall!8557 (List!47891 Int) Bool)

(assert (=> d!1265784 (= (inv!63283 setElem!26541) (forall!8557 (exprs!3363 setElem!26541) lambda!131560))))

(declare-fun bs!603016 () Bool)

(assert (= bs!603016 d!1265784))

(declare-fun m!4886576 () Bool)

(assert (=> bs!603016 m!4886576))

(assert (=> setNonEmpty!26541 d!1265784))

(declare-fun d!1265786 () Bool)

(assert (=> d!1265786 (= (valid!3442 (_4!527 lt!1517499)) (validCacheMapFindLongestMatch!81 (cache!4489 (_4!527 lt!1517499)) (totalInput!4380 (_4!527 lt!1517499))))))

(declare-fun bs!603017 () Bool)

(assert (= bs!603017 d!1265786))

(declare-fun m!4886578 () Bool)

(assert (=> bs!603017 m!4886578))

(assert (=> b!4293378 d!1265786))

(declare-fun d!1265788 () Bool)

(assert (=> d!1265788 (= (valid!3441 (_3!3263 lt!1517499)) (validCacheMapDown!451 (cache!4490 (_3!3263 lt!1517499))))))

(declare-fun bs!603018 () Bool)

(assert (= bs!603018 d!1265788))

(declare-fun m!4886580 () Bool)

(assert (=> bs!603018 m!4886580))

(assert (=> b!4293377 d!1265788))

(declare-fun bs!603019 () Bool)

(declare-fun d!1265790 () Bool)

(assert (= bs!603019 (and d!1265790 d!1265768)))

(declare-fun lambda!131561 () Int)

(assert (=> bs!603019 (= lambda!131561 lambda!131542)))

(declare-fun bs!603020 () Bool)

(assert (= bs!603020 (and d!1265790 d!1265772)))

(assert (=> bs!603020 (not (= lambda!131561 lambda!131555))))

(declare-fun bs!603021 () Bool)

(assert (= bs!603021 (and d!1265790 b!4293459)))

(assert (=> bs!603021 (not (= lambda!131561 lambda!131556))))

(declare-fun bs!603022 () Bool)

(assert (= bs!603022 (and d!1265790 b!4293460)))

(assert (=> bs!603022 (not (= lambda!131561 lambda!131557))))

(assert (=> d!1265790 (= (nullableZipper!773 (_1!26013 lt!1517504)) (exists!1225 (_1!26013 lt!1517504) lambda!131561))))

(declare-fun bs!603023 () Bool)

(assert (= bs!603023 d!1265790))

(declare-fun m!4886582 () Bool)

(assert (=> bs!603023 m!4886582))

(assert (=> b!4293386 d!1265790))

(declare-fun b!4293498 () Bool)

(declare-fun e!2667691 () Bool)

(declare-fun tp!1317517 () Bool)

(assert (=> b!4293498 (= e!2667691 tp!1317517)))

(declare-fun setIsEmpty!26544 () Bool)

(declare-fun setRes!26544 () Bool)

(assert (=> setIsEmpty!26544 setRes!26544))

(declare-fun e!2667692 () Bool)

(declare-fun tp!1317516 () Bool)

(declare-fun tp_is_empty!23121 () Bool)

(declare-fun tp!1317519 () Bool)

(declare-fun e!2667693 () Bool)

(declare-fun b!4293499 () Bool)

(assert (=> b!4293499 (= e!2667693 (and tp!1317519 (inv!63283 (_2!26007 (_1!26008 (h!53188 mapDefault!19970)))) e!2667692 tp_is_empty!23121 setRes!26544 tp!1317516))))

(declare-fun condSetEmpty!26544 () Bool)

(assert (=> b!4293499 (= condSetEmpty!26544 (= (_2!26008 (h!53188 mapDefault!19970)) ((as const (Array Context!5726 Bool)) false)))))

(assert (=> b!4293366 (= tp!1317499 e!2667693)))

(declare-fun setNonEmpty!26544 () Bool)

(declare-fun tp!1317518 () Bool)

(declare-fun setElem!26544 () Context!5726)

(assert (=> setNonEmpty!26544 (= setRes!26544 (and tp!1317518 (inv!63283 setElem!26544) e!2667691))))

(declare-fun setRest!26544 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26544 (= (_2!26008 (h!53188 mapDefault!19970)) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26544 true) setRest!26544))))

(declare-fun b!4293500 () Bool)

(declare-fun tp!1317515 () Bool)

(assert (=> b!4293500 (= e!2667692 tp!1317515)))

(assert (= b!4293499 b!4293500))

(assert (= (and b!4293499 condSetEmpty!26544) setIsEmpty!26544))

(assert (= (and b!4293499 (not condSetEmpty!26544)) setNonEmpty!26544))

(assert (= setNonEmpty!26544 b!4293498))

(assert (= (and b!4293366 ((_ is Cons!47768) mapDefault!19970)) b!4293499))

(declare-fun m!4886584 () Bool)

(assert (=> b!4293499 m!4886584))

(declare-fun m!4886586 () Bool)

(assert (=> setNonEmpty!26544 m!4886586))

(declare-fun setIsEmpty!26547 () Bool)

(declare-fun setRes!26547 () Bool)

(assert (=> setIsEmpty!26547 setRes!26547))

(declare-fun e!2667699 () Bool)

(assert (=> b!4293384 (= tp!1317492 e!2667699)))

(declare-fun b!4293508 () Bool)

(declare-fun e!2667698 () Bool)

(declare-fun tp!1317528 () Bool)

(assert (=> b!4293508 (= e!2667698 tp!1317528)))

(declare-fun setNonEmpty!26547 () Bool)

(declare-fun setElem!26547 () Context!5726)

(declare-fun tp!1317526 () Bool)

(assert (=> setNonEmpty!26547 (= setRes!26547 (and tp!1317526 (inv!63283 setElem!26547) e!2667698))))

(declare-fun setRest!26547 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26547 (= (_1!26009 (_1!26010 (h!53189 mapDefault!19969))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26547 true) setRest!26547))))

(declare-fun b!4293507 () Bool)

(declare-fun tp!1317527 () Bool)

(assert (=> b!4293507 (= e!2667699 (and setRes!26547 tp!1317527))))

(declare-fun condSetEmpty!26547 () Bool)

(assert (=> b!4293507 (= condSetEmpty!26547 (= (_1!26009 (_1!26010 (h!53189 mapDefault!19969))) ((as const (Array Context!5726 Bool)) false)))))

(assert (= (and b!4293507 condSetEmpty!26547) setIsEmpty!26547))

(assert (= (and b!4293507 (not condSetEmpty!26547)) setNonEmpty!26547))

(assert (= setNonEmpty!26547 b!4293508))

(assert (= (and b!4293384 ((_ is Cons!47769) mapDefault!19969)) b!4293507))

(declare-fun m!4886588 () Bool)

(assert (=> setNonEmpty!26547 m!4886588))

(declare-fun setIsEmpty!26548 () Bool)

(declare-fun setRes!26548 () Bool)

(assert (=> setIsEmpty!26548 setRes!26548))

(declare-fun e!2667701 () Bool)

(assert (=> b!4293355 (= tp!1317496 e!2667701)))

(declare-fun b!4293510 () Bool)

(declare-fun e!2667700 () Bool)

(declare-fun tp!1317531 () Bool)

(assert (=> b!4293510 (= e!2667700 tp!1317531)))

(declare-fun setNonEmpty!26548 () Bool)

(declare-fun tp!1317529 () Bool)

(declare-fun setElem!26548 () Context!5726)

(assert (=> setNonEmpty!26548 (= setRes!26548 (and tp!1317529 (inv!63283 setElem!26548) e!2667700))))

(declare-fun setRest!26548 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26548 (= (_1!26009 (_1!26010 (h!53189 (zeroValue!4702 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26548 true) setRest!26548))))

(declare-fun b!4293509 () Bool)

(declare-fun tp!1317530 () Bool)

(assert (=> b!4293509 (= e!2667701 (and setRes!26548 tp!1317530))))

(declare-fun condSetEmpty!26548 () Bool)

(assert (=> b!4293509 (= condSetEmpty!26548 (= (_1!26009 (_1!26010 (h!53189 (zeroValue!4702 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))))) ((as const (Array Context!5726 Bool)) false)))))

(assert (= (and b!4293509 condSetEmpty!26548) setIsEmpty!26548))

(assert (= (and b!4293509 (not condSetEmpty!26548)) setNonEmpty!26548))

(assert (= setNonEmpty!26548 b!4293510))

(assert (= (and b!4293355 ((_ is Cons!47769) (zeroValue!4702 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183)))))))) b!4293509))

(declare-fun m!4886590 () Bool)

(assert (=> setNonEmpty!26548 m!4886590))

(declare-fun setIsEmpty!26549 () Bool)

(declare-fun setRes!26549 () Bool)

(assert (=> setIsEmpty!26549 setRes!26549))

(declare-fun e!2667703 () Bool)

(assert (=> b!4293355 (= tp!1317486 e!2667703)))

(declare-fun b!4293512 () Bool)

(declare-fun e!2667702 () Bool)

(declare-fun tp!1317534 () Bool)

(assert (=> b!4293512 (= e!2667702 tp!1317534)))

(declare-fun setElem!26549 () Context!5726)

(declare-fun setNonEmpty!26549 () Bool)

(declare-fun tp!1317532 () Bool)

(assert (=> setNonEmpty!26549 (= setRes!26549 (and tp!1317532 (inv!63283 setElem!26549) e!2667702))))

(declare-fun setRest!26549 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26549 (= (_1!26009 (_1!26010 (h!53189 (minValue!4702 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26549 true) setRest!26549))))

(declare-fun b!4293511 () Bool)

(declare-fun tp!1317533 () Bool)

(assert (=> b!4293511 (= e!2667703 (and setRes!26549 tp!1317533))))

(declare-fun condSetEmpty!26549 () Bool)

(assert (=> b!4293511 (= condSetEmpty!26549 (= (_1!26009 (_1!26010 (h!53189 (minValue!4702 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183))))))))) ((as const (Array Context!5726 Bool)) false)))))

(assert (= (and b!4293511 condSetEmpty!26549) setIsEmpty!26549))

(assert (= (and b!4293511 (not condSetEmpty!26549)) setNonEmpty!26549))

(assert (= setNonEmpty!26549 b!4293512))

(assert (= (and b!4293355 ((_ is Cons!47769) (minValue!4702 (v!41709 (underlying!9115 (v!41710 (underlying!9116 (cache!4489 cacheFindLongestMatch!183)))))))) b!4293511))

(declare-fun m!4886592 () Bool)

(assert (=> setNonEmpty!26549 m!4886592))

(declare-fun e!2667716 () Bool)

(declare-fun setNonEmpty!26554 () Bool)

(declare-fun tp!1317557 () Bool)

(declare-fun setRes!26554 () Bool)

(declare-fun setElem!26554 () Context!5726)

(assert (=> setNonEmpty!26554 (= setRes!26554 (and tp!1317557 (inv!63283 setElem!26554) e!2667716))))

(declare-fun mapValue!19974 () List!47892)

(declare-fun setRest!26555 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26554 (= (_2!26008 (h!53188 mapValue!19974)) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26554 true) setRest!26555))))

(declare-fun setIsEmpty!26554 () Bool)

(assert (=> setIsEmpty!26554 setRes!26554))

(declare-fun mapIsEmpty!19974 () Bool)

(declare-fun mapRes!19974 () Bool)

(assert (=> mapIsEmpty!19974 mapRes!19974))

(declare-fun mapNonEmpty!19974 () Bool)

(declare-fun tp!1317558 () Bool)

(declare-fun e!2667717 () Bool)

(assert (=> mapNonEmpty!19974 (= mapRes!19974 (and tp!1317558 e!2667717))))

(declare-fun mapRest!19974 () (Array (_ BitVec 32) List!47892))

(declare-fun mapKey!19974 () (_ BitVec 32))

(assert (=> mapNonEmpty!19974 (= mapRest!19971 (store mapRest!19974 mapKey!19974 mapValue!19974))))

(declare-fun e!2667719 () Bool)

(declare-fun b!4293527 () Bool)

(declare-fun setRes!26555 () Bool)

(declare-fun tp!1317565 () Bool)

(declare-fun tp!1317559 () Bool)

(declare-fun mapDefault!19974 () List!47892)

(declare-fun e!2667718 () Bool)

(assert (=> b!4293527 (= e!2667719 (and tp!1317565 (inv!63283 (_2!26007 (_1!26008 (h!53188 mapDefault!19974)))) e!2667718 tp_is_empty!23121 setRes!26555 tp!1317559))))

(declare-fun condSetEmpty!26555 () Bool)

(assert (=> b!4293527 (= condSetEmpty!26555 (= (_2!26008 (h!53188 mapDefault!19974)) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun tp!1317567 () Bool)

(declare-fun tp!1317563 () Bool)

(declare-fun e!2667720 () Bool)

(declare-fun b!4293528 () Bool)

(assert (=> b!4293528 (= e!2667717 (and tp!1317567 (inv!63283 (_2!26007 (_1!26008 (h!53188 mapValue!19974)))) e!2667720 tp_is_empty!23121 setRes!26554 tp!1317563))))

(declare-fun condSetEmpty!26554 () Bool)

(assert (=> b!4293528 (= condSetEmpty!26554 (= (_2!26008 (h!53188 mapValue!19974)) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun b!4293529 () Bool)

(declare-fun tp!1317560 () Bool)

(assert (=> b!4293529 (= e!2667720 tp!1317560)))

(declare-fun condMapEmpty!19974 () Bool)

(assert (=> mapNonEmpty!19970 (= condMapEmpty!19974 (= mapRest!19971 ((as const (Array (_ BitVec 32) List!47892)) mapDefault!19974)))))

(assert (=> mapNonEmpty!19970 (= tp!1317494 (and e!2667719 mapRes!19974))))

(declare-fun b!4293530 () Bool)

(declare-fun tp!1317566 () Bool)

(assert (=> b!4293530 (= e!2667716 tp!1317566)))

(declare-fun b!4293531 () Bool)

(declare-fun e!2667721 () Bool)

(declare-fun tp!1317564 () Bool)

(assert (=> b!4293531 (= e!2667721 tp!1317564)))

(declare-fun setIsEmpty!26555 () Bool)

(assert (=> setIsEmpty!26555 setRes!26555))

(declare-fun b!4293532 () Bool)

(declare-fun tp!1317562 () Bool)

(assert (=> b!4293532 (= e!2667718 tp!1317562)))

(declare-fun setNonEmpty!26555 () Bool)

(declare-fun tp!1317561 () Bool)

(declare-fun setElem!26555 () Context!5726)

(assert (=> setNonEmpty!26555 (= setRes!26555 (and tp!1317561 (inv!63283 setElem!26555) e!2667721))))

(declare-fun setRest!26554 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26555 (= (_2!26008 (h!53188 mapDefault!19974)) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26555 true) setRest!26554))))

(assert (= (and mapNonEmpty!19970 condMapEmpty!19974) mapIsEmpty!19974))

(assert (= (and mapNonEmpty!19970 (not condMapEmpty!19974)) mapNonEmpty!19974))

(assert (= b!4293528 b!4293529))

(assert (= (and b!4293528 condSetEmpty!26554) setIsEmpty!26554))

(assert (= (and b!4293528 (not condSetEmpty!26554)) setNonEmpty!26554))

(assert (= setNonEmpty!26554 b!4293530))

(assert (= (and mapNonEmpty!19974 ((_ is Cons!47768) mapValue!19974)) b!4293528))

(assert (= b!4293527 b!4293532))

(assert (= (and b!4293527 condSetEmpty!26555) setIsEmpty!26555))

(assert (= (and b!4293527 (not condSetEmpty!26555)) setNonEmpty!26555))

(assert (= setNonEmpty!26555 b!4293531))

(assert (= (and mapNonEmpty!19970 ((_ is Cons!47768) mapDefault!19974)) b!4293527))

(declare-fun m!4886594 () Bool)

(assert (=> setNonEmpty!26555 m!4886594))

(declare-fun m!4886596 () Bool)

(assert (=> mapNonEmpty!19974 m!4886596))

(declare-fun m!4886598 () Bool)

(assert (=> b!4293527 m!4886598))

(declare-fun m!4886600 () Bool)

(assert (=> b!4293528 m!4886600))

(declare-fun m!4886602 () Bool)

(assert (=> setNonEmpty!26554 m!4886602))

(declare-fun b!4293533 () Bool)

(declare-fun e!2667722 () Bool)

(declare-fun tp!1317570 () Bool)

(assert (=> b!4293533 (= e!2667722 tp!1317570)))

(declare-fun setIsEmpty!26556 () Bool)

(declare-fun setRes!26556 () Bool)

(assert (=> setIsEmpty!26556 setRes!26556))

(declare-fun e!2667724 () Bool)

(declare-fun tp!1317569 () Bool)

(declare-fun b!4293534 () Bool)

(declare-fun tp!1317572 () Bool)

(declare-fun e!2667723 () Bool)

(assert (=> b!4293534 (= e!2667724 (and tp!1317572 (inv!63283 (_2!26007 (_1!26008 (h!53188 mapValue!19969)))) e!2667723 tp_is_empty!23121 setRes!26556 tp!1317569))))

(declare-fun condSetEmpty!26556 () Bool)

(assert (=> b!4293534 (= condSetEmpty!26556 (= (_2!26008 (h!53188 mapValue!19969)) ((as const (Array Context!5726 Bool)) false)))))

(assert (=> mapNonEmpty!19970 (= tp!1317504 e!2667724)))

(declare-fun tp!1317571 () Bool)

(declare-fun setElem!26556 () Context!5726)

(declare-fun setNonEmpty!26556 () Bool)

(assert (=> setNonEmpty!26556 (= setRes!26556 (and tp!1317571 (inv!63283 setElem!26556) e!2667722))))

(declare-fun setRest!26556 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26556 (= (_2!26008 (h!53188 mapValue!19969)) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26556 true) setRest!26556))))

(declare-fun b!4293535 () Bool)

(declare-fun tp!1317568 () Bool)

(assert (=> b!4293535 (= e!2667723 tp!1317568)))

(assert (= b!4293534 b!4293535))

(assert (= (and b!4293534 condSetEmpty!26556) setIsEmpty!26556))

(assert (= (and b!4293534 (not condSetEmpty!26556)) setNonEmpty!26556))

(assert (= setNonEmpty!26556 b!4293533))

(assert (= (and mapNonEmpty!19970 ((_ is Cons!47768) mapValue!19969)) b!4293534))

(declare-fun m!4886604 () Bool)

(assert (=> b!4293534 m!4886604))

(declare-fun m!4886606 () Bool)

(assert (=> setNonEmpty!26556 m!4886606))

(declare-fun tp!1317581 () Bool)

(declare-fun tp!1317579 () Bool)

(declare-fun e!2667730 () Bool)

(declare-fun b!4293544 () Bool)

(assert (=> b!4293544 (= e!2667730 (and (inv!63282 (left!35439 (c!730657 totalInput!812))) tp!1317581 (inv!63282 (right!35769 (c!730657 totalInput!812))) tp!1317579))))

(declare-fun b!4293546 () Bool)

(declare-fun e!2667729 () Bool)

(declare-fun tp!1317580 () Bool)

(assert (=> b!4293546 (= e!2667729 tp!1317580)))

(declare-fun b!4293545 () Bool)

(declare-fun inv!63290 (IArray!28889) Bool)

(assert (=> b!4293545 (= e!2667730 (and (inv!63290 (xs!17720 (c!730657 totalInput!812))) e!2667729))))

(assert (=> b!4293365 (= tp!1317484 (and (inv!63282 (c!730657 totalInput!812)) e!2667730))))

(assert (= (and b!4293365 ((_ is Node!14414) (c!730657 totalInput!812))) b!4293544))

(assert (= b!4293545 b!4293546))

(assert (= (and b!4293365 ((_ is Leaf!22302) (c!730657 totalInput!812))) b!4293545))

(declare-fun m!4886608 () Bool)

(assert (=> b!4293544 m!4886608))

(declare-fun m!4886610 () Bool)

(assert (=> b!4293544 m!4886610))

(declare-fun m!4886612 () Bool)

(assert (=> b!4293545 m!4886612))

(assert (=> b!4293365 m!4886424))

(declare-fun b!4293557 () Bool)

(declare-fun e!2667741 () Bool)

(declare-fun tp!1317600 () Bool)

(assert (=> b!4293557 (= e!2667741 tp!1317600)))

(declare-fun setIsEmpty!26561 () Bool)

(declare-fun setRes!26561 () Bool)

(assert (=> setIsEmpty!26561 setRes!26561))

(declare-fun b!4293558 () Bool)

(declare-fun e!2667742 () Bool)

(declare-fun tp!1317596 () Bool)

(assert (=> b!4293558 (= e!2667742 (and setRes!26561 tp!1317596))))

(declare-fun condSetEmpty!26561 () Bool)

(declare-fun mapDefault!19977 () List!47893)

(assert (=> b!4293558 (= condSetEmpty!26561 (= (_1!26009 (_1!26010 (h!53189 mapDefault!19977))) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun setElem!26561 () Context!5726)

(declare-fun tp!1317598 () Bool)

(declare-fun setNonEmpty!26561 () Bool)

(declare-fun e!2667739 () Bool)

(assert (=> setNonEmpty!26561 (= setRes!26561 (and tp!1317598 (inv!63283 setElem!26561) e!2667739))))

(declare-fun setRest!26562 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26561 (= (_1!26009 (_1!26010 (h!53189 mapDefault!19977))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26561 true) setRest!26562))))

(declare-fun condMapEmpty!19977 () Bool)

(assert (=> mapNonEmpty!19969 (= condMapEmpty!19977 (= mapRest!19969 ((as const (Array (_ BitVec 32) List!47893)) mapDefault!19977)))))

(declare-fun mapRes!19977 () Bool)

(assert (=> mapNonEmpty!19969 (= tp!1317490 (and e!2667742 mapRes!19977))))

(declare-fun b!4293559 () Bool)

(declare-fun e!2667740 () Bool)

(declare-fun setRes!26562 () Bool)

(declare-fun tp!1317601 () Bool)

(assert (=> b!4293559 (= e!2667740 (and setRes!26562 tp!1317601))))

(declare-fun condSetEmpty!26562 () Bool)

(declare-fun mapValue!19977 () List!47893)

(assert (=> b!4293559 (= condSetEmpty!26562 (= (_1!26009 (_1!26010 (h!53189 mapValue!19977))) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun b!4293560 () Bool)

(declare-fun tp!1317597 () Bool)

(assert (=> b!4293560 (= e!2667739 tp!1317597)))

(declare-fun tp!1317599 () Bool)

(declare-fun setElem!26562 () Context!5726)

(declare-fun setNonEmpty!26562 () Bool)

(assert (=> setNonEmpty!26562 (= setRes!26562 (and tp!1317599 (inv!63283 setElem!26562) e!2667741))))

(declare-fun setRest!26561 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26562 (= (_1!26009 (_1!26010 (h!53189 mapValue!19977))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26562 true) setRest!26561))))

(declare-fun mapNonEmpty!19977 () Bool)

(declare-fun tp!1317602 () Bool)

(assert (=> mapNonEmpty!19977 (= mapRes!19977 (and tp!1317602 e!2667740))))

(declare-fun mapKey!19977 () (_ BitVec 32))

(declare-fun mapRest!19977 () (Array (_ BitVec 32) List!47893))

(assert (=> mapNonEmpty!19977 (= mapRest!19969 (store mapRest!19977 mapKey!19977 mapValue!19977))))

(declare-fun setIsEmpty!26562 () Bool)

(assert (=> setIsEmpty!26562 setRes!26562))

(declare-fun mapIsEmpty!19977 () Bool)

(assert (=> mapIsEmpty!19977 mapRes!19977))

(assert (= (and mapNonEmpty!19969 condMapEmpty!19977) mapIsEmpty!19977))

(assert (= (and mapNonEmpty!19969 (not condMapEmpty!19977)) mapNonEmpty!19977))

(assert (= (and b!4293559 condSetEmpty!26562) setIsEmpty!26562))

(assert (= (and b!4293559 (not condSetEmpty!26562)) setNonEmpty!26562))

(assert (= setNonEmpty!26562 b!4293557))

(assert (= (and mapNonEmpty!19977 ((_ is Cons!47769) mapValue!19977)) b!4293559))

(assert (= (and b!4293558 condSetEmpty!26561) setIsEmpty!26561))

(assert (= (and b!4293558 (not condSetEmpty!26561)) setNonEmpty!26561))

(assert (= setNonEmpty!26561 b!4293560))

(assert (= (and mapNonEmpty!19969 ((_ is Cons!47769) mapDefault!19977)) b!4293558))

(declare-fun m!4886614 () Bool)

(assert (=> setNonEmpty!26561 m!4886614))

(declare-fun m!4886616 () Bool)

(assert (=> setNonEmpty!26562 m!4886616))

(declare-fun m!4886618 () Bool)

(assert (=> mapNonEmpty!19977 m!4886618))

(declare-fun setIsEmpty!26563 () Bool)

(declare-fun setRes!26563 () Bool)

(assert (=> setIsEmpty!26563 setRes!26563))

(declare-fun e!2667744 () Bool)

(assert (=> mapNonEmpty!19969 (= tp!1317503 e!2667744)))

(declare-fun b!4293562 () Bool)

(declare-fun e!2667743 () Bool)

(declare-fun tp!1317605 () Bool)

(assert (=> b!4293562 (= e!2667743 tp!1317605)))

(declare-fun setNonEmpty!26563 () Bool)

(declare-fun setElem!26563 () Context!5726)

(declare-fun tp!1317603 () Bool)

(assert (=> setNonEmpty!26563 (= setRes!26563 (and tp!1317603 (inv!63283 setElem!26563) e!2667743))))

(declare-fun setRest!26563 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26563 (= (_1!26009 (_1!26010 (h!53189 mapValue!19971))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26563 true) setRest!26563))))

(declare-fun b!4293561 () Bool)

(declare-fun tp!1317604 () Bool)

(assert (=> b!4293561 (= e!2667744 (and setRes!26563 tp!1317604))))

(declare-fun condSetEmpty!26563 () Bool)

(assert (=> b!4293561 (= condSetEmpty!26563 (= (_1!26009 (_1!26010 (h!53189 mapValue!19971))) ((as const (Array Context!5726 Bool)) false)))))

(assert (= (and b!4293561 condSetEmpty!26563) setIsEmpty!26563))

(assert (= (and b!4293561 (not condSetEmpty!26563)) setNonEmpty!26563))

(assert (= setNonEmpty!26563 b!4293562))

(assert (= (and mapNonEmpty!19969 ((_ is Cons!47769) mapValue!19971)) b!4293561))

(declare-fun m!4886620 () Bool)

(assert (=> setNonEmpty!26563 m!4886620))

(declare-fun setIsEmpty!26568 () Bool)

(declare-fun setRes!26569 () Bool)

(assert (=> setIsEmpty!26568 setRes!26569))

(declare-fun mapNonEmpty!19980 () Bool)

(declare-fun mapRes!19980 () Bool)

(declare-fun tp!1317632 () Bool)

(declare-fun e!2667761 () Bool)

(assert (=> mapNonEmpty!19980 (= mapRes!19980 (and tp!1317632 e!2667761))))

(declare-fun mapKey!19980 () (_ BitVec 32))

(declare-fun mapRest!19980 () (Array (_ BitVec 32) List!47894))

(declare-fun mapValue!19980 () List!47894)

(assert (=> mapNonEmpty!19980 (= mapRest!19970 (store mapRest!19980 mapKey!19980 mapValue!19980))))

(declare-fun b!4293577 () Bool)

(declare-fun e!2667758 () Bool)

(declare-fun tp!1317629 () Bool)

(assert (=> b!4293577 (= e!2667758 tp!1317629)))

(declare-fun condMapEmpty!19980 () Bool)

(declare-fun mapDefault!19980 () List!47894)

(assert (=> mapNonEmpty!19971 (= condMapEmpty!19980 (= mapRest!19970 ((as const (Array (_ BitVec 32) List!47894)) mapDefault!19980)))))

(declare-fun e!2667757 () Bool)

(assert (=> mapNonEmpty!19971 (= tp!1317482 (and e!2667757 mapRes!19980))))

(declare-fun tp!1317625 () Bool)

(declare-fun setElem!26568 () Context!5726)

(declare-fun e!2667762 () Bool)

(declare-fun setNonEmpty!26568 () Bool)

(declare-fun setRes!26568 () Bool)

(assert (=> setNonEmpty!26568 (= setRes!26568 (and tp!1317625 (inv!63283 setElem!26568) e!2667762))))

(declare-fun setRest!26569 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26568 (= (_2!26006 (h!53190 mapDefault!19980)) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26568 true) setRest!26569))))

(declare-fun tp!1317627 () Bool)

(declare-fun e!2667760 () Bool)

(declare-fun b!4293578 () Bool)

(assert (=> b!4293578 (= e!2667757 (and (inv!63283 (_1!26005 (_1!26006 (h!53190 mapDefault!19980)))) e!2667760 tp_is_empty!23121 setRes!26568 tp!1317627))))

(declare-fun condSetEmpty!26569 () Bool)

(assert (=> b!4293578 (= condSetEmpty!26569 (= (_2!26006 (h!53190 mapDefault!19980)) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun setIsEmpty!26569 () Bool)

(assert (=> setIsEmpty!26569 setRes!26568))

(declare-fun b!4293579 () Bool)

(declare-fun tp!1317626 () Bool)

(assert (=> b!4293579 (= e!2667762 tp!1317626)))

(declare-fun setElem!26569 () Context!5726)

(declare-fun setNonEmpty!26569 () Bool)

(declare-fun tp!1317624 () Bool)

(assert (=> setNonEmpty!26569 (= setRes!26569 (and tp!1317624 (inv!63283 setElem!26569) e!2667758))))

(declare-fun setRest!26568 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26569 (= (_2!26006 (h!53190 mapValue!19980)) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26569 true) setRest!26568))))

(declare-fun mapIsEmpty!19980 () Bool)

(assert (=> mapIsEmpty!19980 mapRes!19980))

(declare-fun b!4293580 () Bool)

(declare-fun tp!1317630 () Bool)

(assert (=> b!4293580 (= e!2667760 tp!1317630)))

(declare-fun e!2667759 () Bool)

(declare-fun b!4293581 () Bool)

(declare-fun tp!1317628 () Bool)

(assert (=> b!4293581 (= e!2667761 (and (inv!63283 (_1!26005 (_1!26006 (h!53190 mapValue!19980)))) e!2667759 tp_is_empty!23121 setRes!26569 tp!1317628))))

(declare-fun condSetEmpty!26568 () Bool)

(assert (=> b!4293581 (= condSetEmpty!26568 (= (_2!26006 (h!53190 mapValue!19980)) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun b!4293582 () Bool)

(declare-fun tp!1317631 () Bool)

(assert (=> b!4293582 (= e!2667759 tp!1317631)))

(assert (= (and mapNonEmpty!19971 condMapEmpty!19980) mapIsEmpty!19980))

(assert (= (and mapNonEmpty!19971 (not condMapEmpty!19980)) mapNonEmpty!19980))

(assert (= b!4293581 b!4293582))

(assert (= (and b!4293581 condSetEmpty!26568) setIsEmpty!26568))

(assert (= (and b!4293581 (not condSetEmpty!26568)) setNonEmpty!26569))

(assert (= setNonEmpty!26569 b!4293577))

(assert (= (and mapNonEmpty!19980 ((_ is Cons!47770) mapValue!19980)) b!4293581))

(assert (= b!4293578 b!4293580))

(assert (= (and b!4293578 condSetEmpty!26569) setIsEmpty!26569))

(assert (= (and b!4293578 (not condSetEmpty!26569)) setNonEmpty!26568))

(assert (= setNonEmpty!26568 b!4293579))

(assert (= (and mapNonEmpty!19971 ((_ is Cons!47770) mapDefault!19980)) b!4293578))

(declare-fun m!4886622 () Bool)

(assert (=> setNonEmpty!26569 m!4886622))

(declare-fun m!4886624 () Bool)

(assert (=> mapNonEmpty!19980 m!4886624))

(declare-fun m!4886626 () Bool)

(assert (=> b!4293578 m!4886626))

(declare-fun m!4886628 () Bool)

(assert (=> b!4293581 m!4886628))

(declare-fun m!4886630 () Bool)

(assert (=> setNonEmpty!26568 m!4886630))

(declare-fun b!4293591 () Bool)

(declare-fun e!2667770 () Bool)

(declare-fun tp!1317641 () Bool)

(assert (=> b!4293591 (= e!2667770 tp!1317641)))

(declare-fun b!4293592 () Bool)

(declare-fun e!2667771 () Bool)

(declare-fun tp!1317642 () Bool)

(assert (=> b!4293592 (= e!2667771 tp!1317642)))

(declare-fun e!2667769 () Bool)

(assert (=> mapNonEmpty!19971 (= tp!1317488 e!2667769)))

(declare-fun setIsEmpty!26572 () Bool)

(declare-fun setRes!26572 () Bool)

(assert (=> setIsEmpty!26572 setRes!26572))

(declare-fun tp!1317644 () Bool)

(declare-fun b!4293593 () Bool)

(assert (=> b!4293593 (= e!2667769 (and (inv!63283 (_1!26005 (_1!26006 (h!53190 mapValue!19970)))) e!2667771 tp_is_empty!23121 setRes!26572 tp!1317644))))

(declare-fun condSetEmpty!26572 () Bool)

(assert (=> b!4293593 (= condSetEmpty!26572 (= (_2!26006 (h!53190 mapValue!19970)) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun setElem!26572 () Context!5726)

(declare-fun setNonEmpty!26572 () Bool)

(declare-fun tp!1317643 () Bool)

(assert (=> setNonEmpty!26572 (= setRes!26572 (and tp!1317643 (inv!63283 setElem!26572) e!2667770))))

(declare-fun setRest!26572 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26572 (= (_2!26006 (h!53190 mapValue!19970)) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26572 true) setRest!26572))))

(assert (= b!4293593 b!4293592))

(assert (= (and b!4293593 condSetEmpty!26572) setIsEmpty!26572))

(assert (= (and b!4293593 (not condSetEmpty!26572)) setNonEmpty!26572))

(assert (= setNonEmpty!26572 b!4293591))

(assert (= (and mapNonEmpty!19971 ((_ is Cons!47770) mapValue!19970)) b!4293593))

(declare-fun m!4886632 () Bool)

(assert (=> b!4293593 m!4886632))

(declare-fun m!4886634 () Bool)

(assert (=> setNonEmpty!26572 m!4886634))

(declare-fun b!4293594 () Bool)

(declare-fun e!2667772 () Bool)

(declare-fun tp!1317647 () Bool)

(assert (=> b!4293594 (= e!2667772 tp!1317647)))

(declare-fun setIsEmpty!26573 () Bool)

(declare-fun setRes!26573 () Bool)

(assert (=> setIsEmpty!26573 setRes!26573))

(declare-fun tp!1317649 () Bool)

(declare-fun e!2667773 () Bool)

(declare-fun tp!1317646 () Bool)

(declare-fun e!2667774 () Bool)

(declare-fun b!4293595 () Bool)

(assert (=> b!4293595 (= e!2667774 (and tp!1317649 (inv!63283 (_2!26007 (_1!26008 (h!53188 (zeroValue!4701 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066)))))))))) e!2667773 tp_is_empty!23121 setRes!26573 tp!1317646))))

(declare-fun condSetEmpty!26573 () Bool)

(assert (=> b!4293595 (= condSetEmpty!26573 (= (_2!26008 (h!53188 (zeroValue!4701 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066)))))))) ((as const (Array Context!5726 Bool)) false)))))

(assert (=> b!4293389 (= tp!1317481 e!2667774)))

(declare-fun setElem!26573 () Context!5726)

(declare-fun tp!1317648 () Bool)

(declare-fun setNonEmpty!26573 () Bool)

(assert (=> setNonEmpty!26573 (= setRes!26573 (and tp!1317648 (inv!63283 setElem!26573) e!2667772))))

(declare-fun setRest!26573 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26573 (= (_2!26008 (h!53188 (zeroValue!4701 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066)))))))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26573 true) setRest!26573))))

(declare-fun b!4293596 () Bool)

(declare-fun tp!1317645 () Bool)

(assert (=> b!4293596 (= e!2667773 tp!1317645)))

(assert (= b!4293595 b!4293596))

(assert (= (and b!4293595 condSetEmpty!26573) setIsEmpty!26573))

(assert (= (and b!4293595 (not condSetEmpty!26573)) setNonEmpty!26573))

(assert (= setNonEmpty!26573 b!4293594))

(assert (= (and b!4293389 ((_ is Cons!47768) (zeroValue!4701 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066)))))))) b!4293595))

(declare-fun m!4886636 () Bool)

(assert (=> b!4293595 m!4886636))

(declare-fun m!4886638 () Bool)

(assert (=> setNonEmpty!26573 m!4886638))

(declare-fun b!4293597 () Bool)

(declare-fun e!2667775 () Bool)

(declare-fun tp!1317652 () Bool)

(assert (=> b!4293597 (= e!2667775 tp!1317652)))

(declare-fun setIsEmpty!26574 () Bool)

(declare-fun setRes!26574 () Bool)

(assert (=> setIsEmpty!26574 setRes!26574))

(declare-fun e!2667776 () Bool)

(declare-fun e!2667777 () Bool)

(declare-fun tp!1317651 () Bool)

(declare-fun tp!1317654 () Bool)

(declare-fun b!4293598 () Bool)

(assert (=> b!4293598 (= e!2667777 (and tp!1317654 (inv!63283 (_2!26007 (_1!26008 (h!53188 (minValue!4701 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066)))))))))) e!2667776 tp_is_empty!23121 setRes!26574 tp!1317651))))

(declare-fun condSetEmpty!26574 () Bool)

(assert (=> b!4293598 (= condSetEmpty!26574 (= (_2!26008 (h!53188 (minValue!4701 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066)))))))) ((as const (Array Context!5726 Bool)) false)))))

(assert (=> b!4293389 (= tp!1317493 e!2667777)))

(declare-fun setNonEmpty!26574 () Bool)

(declare-fun setElem!26574 () Context!5726)

(declare-fun tp!1317653 () Bool)

(assert (=> setNonEmpty!26574 (= setRes!26574 (and tp!1317653 (inv!63283 setElem!26574) e!2667775))))

(declare-fun setRest!26574 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26574 (= (_2!26008 (h!53188 (minValue!4701 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066)))))))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26574 true) setRest!26574))))

(declare-fun b!4293599 () Bool)

(declare-fun tp!1317650 () Bool)

(assert (=> b!4293599 (= e!2667776 tp!1317650)))

(assert (= b!4293598 b!4293599))

(assert (= (and b!4293598 condSetEmpty!26574) setIsEmpty!26574))

(assert (= (and b!4293598 (not condSetEmpty!26574)) setNonEmpty!26574))

(assert (= setNonEmpty!26574 b!4293597))

(assert (= (and b!4293389 ((_ is Cons!47768) (minValue!4701 (v!41707 (underlying!9113 (v!41708 (underlying!9114 (cache!4490 cacheDown!1066)))))))) b!4293598))

(declare-fun m!4886640 () Bool)

(assert (=> b!4293598 m!4886640))

(declare-fun m!4886642 () Bool)

(assert (=> setNonEmpty!26574 m!4886642))

(declare-fun b!4293604 () Bool)

(declare-fun e!2667780 () Bool)

(declare-fun tp!1317659 () Bool)

(declare-fun tp!1317660 () Bool)

(assert (=> b!4293604 (= e!2667780 (and tp!1317659 tp!1317660))))

(assert (=> b!4293361 (= tp!1317480 e!2667780)))

(assert (= (and b!4293361 ((_ is Cons!47767) (exprs!3363 setElem!26541))) b!4293604))

(declare-fun tp!1317661 () Bool)

(declare-fun tp!1317663 () Bool)

(declare-fun e!2667782 () Bool)

(declare-fun b!4293605 () Bool)

(assert (=> b!4293605 (= e!2667782 (and (inv!63282 (left!35439 (c!730657 (totalInput!4380 cacheFindLongestMatch!183)))) tp!1317663 (inv!63282 (right!35769 (c!730657 (totalInput!4380 cacheFindLongestMatch!183)))) tp!1317661))))

(declare-fun b!4293607 () Bool)

(declare-fun e!2667781 () Bool)

(declare-fun tp!1317662 () Bool)

(assert (=> b!4293607 (= e!2667781 tp!1317662)))

(declare-fun b!4293606 () Bool)

(assert (=> b!4293606 (= e!2667782 (and (inv!63290 (xs!17720 (c!730657 (totalInput!4380 cacheFindLongestMatch!183)))) e!2667781))))

(assert (=> b!4293370 (= tp!1317497 (and (inv!63282 (c!730657 (totalInput!4380 cacheFindLongestMatch!183))) e!2667782))))

(assert (= (and b!4293370 ((_ is Node!14414) (c!730657 (totalInput!4380 cacheFindLongestMatch!183)))) b!4293605))

(assert (= b!4293606 b!4293607))

(assert (= (and b!4293370 ((_ is Leaf!22302) (c!730657 (totalInput!4380 cacheFindLongestMatch!183)))) b!4293606))

(declare-fun m!4886644 () Bool)

(assert (=> b!4293605 m!4886644))

(declare-fun m!4886646 () Bool)

(assert (=> b!4293605 m!4886646))

(declare-fun m!4886648 () Bool)

(assert (=> b!4293606 m!4886648))

(assert (=> b!4293370 m!4886476))

(declare-fun b!4293608 () Bool)

(declare-fun e!2667784 () Bool)

(declare-fun tp!1317664 () Bool)

(assert (=> b!4293608 (= e!2667784 tp!1317664)))

(declare-fun b!4293609 () Bool)

(declare-fun e!2667785 () Bool)

(declare-fun tp!1317665 () Bool)

(assert (=> b!4293609 (= e!2667785 tp!1317665)))

(declare-fun e!2667783 () Bool)

(assert (=> b!4293351 (= tp!1317498 e!2667783)))

(declare-fun setIsEmpty!26575 () Bool)

(declare-fun setRes!26575 () Bool)

(assert (=> setIsEmpty!26575 setRes!26575))

(declare-fun b!4293610 () Bool)

(declare-fun tp!1317667 () Bool)

(assert (=> b!4293610 (= e!2667783 (and (inv!63283 (_1!26005 (_1!26006 (h!53190 mapDefault!19971)))) e!2667785 tp_is_empty!23121 setRes!26575 tp!1317667))))

(declare-fun condSetEmpty!26575 () Bool)

(assert (=> b!4293610 (= condSetEmpty!26575 (= (_2!26006 (h!53190 mapDefault!19971)) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun tp!1317666 () Bool)

(declare-fun setElem!26575 () Context!5726)

(declare-fun setNonEmpty!26575 () Bool)

(assert (=> setNonEmpty!26575 (= setRes!26575 (and tp!1317666 (inv!63283 setElem!26575) e!2667784))))

(declare-fun setRest!26575 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26575 (= (_2!26006 (h!53190 mapDefault!19971)) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26575 true) setRest!26575))))

(assert (= b!4293610 b!4293609))

(assert (= (and b!4293610 condSetEmpty!26575) setIsEmpty!26575))

(assert (= (and b!4293610 (not condSetEmpty!26575)) setNonEmpty!26575))

(assert (= setNonEmpty!26575 b!4293608))

(assert (= (and b!4293351 ((_ is Cons!47770) mapDefault!19971)) b!4293610))

(declare-fun m!4886650 () Bool)

(assert (=> b!4293610 m!4886650))

(declare-fun m!4886652 () Bool)

(assert (=> setNonEmpty!26575 m!4886652))

(declare-fun b!4293611 () Bool)

(declare-fun e!2667787 () Bool)

(declare-fun tp!1317668 () Bool)

(assert (=> b!4293611 (= e!2667787 tp!1317668)))

(declare-fun b!4293612 () Bool)

(declare-fun e!2667788 () Bool)

(declare-fun tp!1317669 () Bool)

(assert (=> b!4293612 (= e!2667788 tp!1317669)))

(declare-fun e!2667786 () Bool)

(assert (=> b!4293379 (= tp!1317485 e!2667786)))

(declare-fun setIsEmpty!26576 () Bool)

(declare-fun setRes!26576 () Bool)

(assert (=> setIsEmpty!26576 setRes!26576))

(declare-fun tp!1317671 () Bool)

(declare-fun b!4293613 () Bool)

(assert (=> b!4293613 (= e!2667786 (and (inv!63283 (_1!26005 (_1!26006 (h!53190 (zeroValue!4703 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947)))))))))) e!2667788 tp_is_empty!23121 setRes!26576 tp!1317671))))

(declare-fun condSetEmpty!26576 () Bool)

(assert (=> b!4293613 (= condSetEmpty!26576 (= (_2!26006 (h!53190 (zeroValue!4703 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947)))))))) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun setNonEmpty!26576 () Bool)

(declare-fun setElem!26576 () Context!5726)

(declare-fun tp!1317670 () Bool)

(assert (=> setNonEmpty!26576 (= setRes!26576 (and tp!1317670 (inv!63283 setElem!26576) e!2667787))))

(declare-fun setRest!26576 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26576 (= (_2!26006 (h!53190 (zeroValue!4703 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947)))))))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26576 true) setRest!26576))))

(assert (= b!4293613 b!4293612))

(assert (= (and b!4293613 condSetEmpty!26576) setIsEmpty!26576))

(assert (= (and b!4293613 (not condSetEmpty!26576)) setNonEmpty!26576))

(assert (= setNonEmpty!26576 b!4293611))

(assert (= (and b!4293379 ((_ is Cons!47770) (zeroValue!4703 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947)))))))) b!4293613))

(declare-fun m!4886654 () Bool)

(assert (=> b!4293613 m!4886654))

(declare-fun m!4886656 () Bool)

(assert (=> setNonEmpty!26576 m!4886656))

(declare-fun b!4293614 () Bool)

(declare-fun e!2667790 () Bool)

(declare-fun tp!1317672 () Bool)

(assert (=> b!4293614 (= e!2667790 tp!1317672)))

(declare-fun b!4293615 () Bool)

(declare-fun e!2667791 () Bool)

(declare-fun tp!1317673 () Bool)

(assert (=> b!4293615 (= e!2667791 tp!1317673)))

(declare-fun e!2667789 () Bool)

(assert (=> b!4293379 (= tp!1317487 e!2667789)))

(declare-fun setIsEmpty!26577 () Bool)

(declare-fun setRes!26577 () Bool)

(assert (=> setIsEmpty!26577 setRes!26577))

(declare-fun b!4293616 () Bool)

(declare-fun tp!1317675 () Bool)

(assert (=> b!4293616 (= e!2667789 (and (inv!63283 (_1!26005 (_1!26006 (h!53190 (minValue!4703 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947)))))))))) e!2667791 tp_is_empty!23121 setRes!26577 tp!1317675))))

(declare-fun condSetEmpty!26577 () Bool)

(assert (=> b!4293616 (= condSetEmpty!26577 (= (_2!26006 (h!53190 (minValue!4703 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947)))))))) ((as const (Array Context!5726 Bool)) false)))))

(declare-fun setNonEmpty!26577 () Bool)

(declare-fun tp!1317674 () Bool)

(declare-fun setElem!26577 () Context!5726)

(assert (=> setNonEmpty!26577 (= setRes!26577 (and tp!1317674 (inv!63283 setElem!26577) e!2667790))))

(declare-fun setRest!26577 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26577 (= (_2!26006 (h!53190 (minValue!4703 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947)))))))) ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26577 true) setRest!26577))))

(assert (= b!4293616 b!4293615))

(assert (= (and b!4293616 condSetEmpty!26577) setIsEmpty!26577))

(assert (= (and b!4293616 (not condSetEmpty!26577)) setNonEmpty!26577))

(assert (= setNonEmpty!26577 b!4293614))

(assert (= (and b!4293379 ((_ is Cons!47770) (minValue!4703 (v!41711 (underlying!9117 (v!41712 (underlying!9118 (cache!4488 cacheUp!947)))))))) b!4293616))

(declare-fun m!4886658 () Bool)

(assert (=> b!4293616 m!4886658))

(declare-fun m!4886660 () Bool)

(assert (=> setNonEmpty!26577 m!4886660))

(declare-fun condSetEmpty!26580 () Bool)

(assert (=> setNonEmpty!26541 (= condSetEmpty!26580 (= setRest!26541 ((as const (Array Context!5726 Bool)) false)))))

(declare-fun setRes!26580 () Bool)

(assert (=> setNonEmpty!26541 (= tp!1317495 setRes!26580)))

(declare-fun setIsEmpty!26580 () Bool)

(assert (=> setIsEmpty!26580 setRes!26580))

(declare-fun e!2667794 () Bool)

(declare-fun setElem!26580 () Context!5726)

(declare-fun setNonEmpty!26580 () Bool)

(declare-fun tp!1317681 () Bool)

(assert (=> setNonEmpty!26580 (= setRes!26580 (and tp!1317681 (inv!63283 setElem!26580) e!2667794))))

(declare-fun setRest!26580 () (InoxSet Context!5726))

(assert (=> setNonEmpty!26580 (= setRest!26541 ((_ map or) (store ((as const (Array Context!5726 Bool)) false) setElem!26580 true) setRest!26580))))

(declare-fun b!4293621 () Bool)

(declare-fun tp!1317680 () Bool)

(assert (=> b!4293621 (= e!2667794 tp!1317680)))

(assert (= (and setNonEmpty!26541 condSetEmpty!26580) setIsEmpty!26580))

(assert (= (and setNonEmpty!26541 (not condSetEmpty!26580)) setNonEmpty!26580))

(assert (= setNonEmpty!26580 b!4293621))

(declare-fun m!4886662 () Bool)

(assert (=> setNonEmpty!26580 m!4886662))

(check-sat (not setNonEmpty!26573) (not b!4293452) (not setNonEmpty!26549) (not b!4293499) (not b!4293606) (not b!4293443) (not b!4293460) (not b!4293534) (not setNonEmpty!26555) (not b!4293411) (not b!4293485) (not b!4293459) (not b!4293607) tp_is_empty!23121 (not d!1265752) (not b!4293414) (not b!4293396) (not b!4293599) (not b!4293489) (not b!4293608) (not b!4293403) (not b!4293592) (not b!4293477) (not b!4293611) (not b!4293561) (not b!4293596) b_and!338835 (not b!4293531) b_and!338831 (not b!4293613) (not b!4293545) (not b!4293544) (not setNonEmpty!26574) (not b!4293528) (not b!4293451) (not b!4293449) (not d!1265758) (not d!1265762) b_and!338837 (not b!4293486) (not setNonEmpty!26568) (not setNonEmpty!26569) (not d!1265778) (not b!4293466) (not setNonEmpty!26575) (not b!4293405) (not b!4293616) (not b!4293546) (not b!4293609) (not d!1265746) (not b!4293478) (not b!4293529) (not d!1265738) (not b!4293532) (not b!4293441) (not b!4293580) (not setNonEmpty!26562) (not mapNonEmpty!19977) (not b!4293591) (not b!4293594) (not b_next!128325) (not b!4293581) (not d!1265750) (not d!1265772) (not b!4293535) (not b!4293593) (not b!4293448) (not b!4293605) (not b!4293558) (not d!1265786) (not b!4293559) (not b!4293512) (not b!4293577) (not b_next!128329) (not b!4293530) (not b!4293440) (not b!4293498) (not b!4293509) (not d!1265780) (not setNonEmpty!26572) (not setNonEmpty!26580) (not d!1265788) (not b!4293579) (not bm!294512) (not d!1265784) (not b!4293533) (not b!4293621) (not mapNonEmpty!19974) (not bm!294513) (not b!4293510) (not b!4293479) (not b!4293604) (not setNonEmpty!26548) (not b!4293557) (not d!1265768) (not b!4293508) (not setNonEmpty!26544) (not setNonEmpty!26563) (not b!4293595) (not setNonEmpty!26576) (not b!4293447) (not b!4293465) (not b!4293562) (not b!4293454) (not b!4293615) (not setNonEmpty!26554) (not b!4293578) (not b_next!128321) b_and!338841 (not b!4293419) (not b!4293500) (not d!1265756) (not b!4293487) (not setNonEmpty!26577) (not setNonEmpty!26547) (not b!4293612) (not b!4293408) (not d!1265790) (not b!4293370) (not b!4293560) b_and!338833 (not mapNonEmpty!19980) (not setNonEmpty!26556) (not b!4293610) (not b_next!128319) (not b!4293598) (not b!4293614) (not b!4293481) (not b!4293507) (not b_next!128327) (not b!4293439) (not b!4293597) b_and!338839 (not b!4293582) (not b!4293365) (not b!4293511) (not b!4293527) (not b_next!128323) (not setNonEmpty!26561))
(check-sat b_and!338837 (not b_next!128325) (not b_next!128329) b_and!338833 (not b_next!128319) (not b_next!128323) b_and!338835 b_and!338831 (not b_next!128321) b_and!338841 (not b_next!128327) b_and!338839)
