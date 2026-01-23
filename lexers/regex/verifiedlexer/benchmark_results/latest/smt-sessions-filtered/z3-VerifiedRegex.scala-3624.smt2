; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207536 () Bool)

(assert start!207536)

(declare-fun b!2131477 () Bool)

(declare-fun b_free!62237 () Bool)

(declare-fun b_next!62941 () Bool)

(assert (=> b!2131477 (= b_free!62237 (not b_next!62941))))

(declare-fun tp!655667 () Bool)

(declare-fun b_and!171817 () Bool)

(assert (=> b!2131477 (= tp!655667 b_and!171817)))

(declare-fun b!2131458 () Bool)

(declare-fun b_free!62239 () Bool)

(declare-fun b_next!62943 () Bool)

(assert (=> b!2131458 (= b_free!62239 (not b_next!62943))))

(declare-fun tp!655681 () Bool)

(declare-fun b_and!171819 () Bool)

(assert (=> b!2131458 (= tp!655681 b_and!171819)))

(declare-fun b!2131479 () Bool)

(declare-fun b_free!62241 () Bool)

(declare-fun b_next!62945 () Bool)

(assert (=> b!2131479 (= b_free!62241 (not b_next!62945))))

(declare-fun tp!655671 () Bool)

(declare-fun b_and!171821 () Bool)

(assert (=> b!2131479 (= tp!655671 b_and!171821)))

(declare-fun b!2131472 () Bool)

(declare-fun b_free!62243 () Bool)

(declare-fun b_next!62947 () Bool)

(assert (=> b!2131472 (= b_free!62243 (not b_next!62947))))

(declare-fun tp!655675 () Bool)

(declare-fun b_and!171823 () Bool)

(assert (=> b!2131472 (= tp!655675 b_and!171823)))

(declare-fun b!2131465 () Bool)

(declare-fun b_free!62245 () Bool)

(declare-fun b_next!62949 () Bool)

(assert (=> b!2131465 (= b_free!62245 (not b_next!62949))))

(declare-fun tp!655658 () Bool)

(declare-fun b_and!171825 () Bool)

(assert (=> b!2131465 (= tp!655658 b_and!171825)))

(declare-fun b!2131481 () Bool)

(declare-fun b_free!62247 () Bool)

(declare-fun b_next!62951 () Bool)

(assert (=> b!2131481 (= b_free!62247 (not b_next!62951))))

(declare-fun tp!655663 () Bool)

(declare-fun b_and!171827 () Bool)

(assert (=> b!2131481 (= tp!655663 b_and!171827)))

(declare-fun b!2131471 () Bool)

(assert (=> b!2131471 true))

(declare-fun bs!444256 () Bool)

(declare-fun b!2131493 () Bool)

(assert (= bs!444256 (and b!2131493 b!2131471)))

(declare-fun lambda!79211 () Int)

(declare-fun lambda!79210 () Int)

(assert (=> bs!444256 (not (= lambda!79211 lambda!79210))))

(assert (=> b!2131493 true))

(declare-fun e!1359627 () Bool)

(declare-fun e!1359618 () Bool)

(assert (=> b!2131458 (= e!1359627 (and e!1359618 tp!655681))))

(declare-fun res!921390 () Bool)

(declare-fun e!1359649 () Bool)

(assert (=> start!207536 (=> (not res!921390) (not e!1359649))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207536 (= res!921390 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207536 e!1359649))

(declare-datatypes ((C!11576 0))(
  ( (C!11577 (val!6774 Int)) )
))
(declare-datatypes ((Regex!5715 0))(
  ( (ElementMatch!5715 (c!340197 C!11576)) (Concat!10017 (regOne!11942 Regex!5715) (regTwo!11942 Regex!5715)) (EmptyExpr!5715) (Star!5715 (reg!6044 Regex!5715)) (EmptyLang!5715) (Union!5715 (regOne!11943 Regex!5715) (regTwo!11943 Regex!5715)) )
))
(declare-datatypes ((List!24067 0))(
  ( (Nil!23983) (Cons!23983 (h!29384 Regex!5715) (t!196595 List!24067)) )
))
(declare-datatypes ((Context!2570 0))(
  ( (Context!2571 (exprs!1785 List!24067)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3122 0))(
  ( (tuple3!3123 (_1!13891 (InoxSet Context!2570)) (_2!13891 Int) (_3!2031 Int)) )
))
(declare-datatypes ((tuple2!23720 0))(
  ( (tuple2!23721 (_1!13892 tuple3!3122) (_2!13892 Int)) )
))
(declare-datatypes ((List!24068 0))(
  ( (Nil!23984) (Cons!23984 (h!29385 tuple2!23720) (t!196596 List!24068)) )
))
(declare-datatypes ((array!8827 0))(
  ( (array!8828 (arr!3925 (Array (_ BitVec 32) (_ BitVec 64))) (size!18759 (_ BitVec 32))) )
))
(declare-datatypes ((array!8829 0))(
  ( (array!8830 (arr!3926 (Array (_ BitVec 32) List!24068)) (size!18760 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5178 0))(
  ( (LongMapFixedSize!5179 (defaultEntry!2954 Int) (mask!6762 (_ BitVec 32)) (extraKeys!2837 (_ BitVec 32)) (zeroValue!2847 List!24068) (minValue!2847 List!24068) (_size!5229 (_ BitVec 32)) (_keys!2886 array!8827) (_values!2869 array!8829) (_vacant!2650 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10181 0))(
  ( (Cell!10182 (v!28536 LongMapFixedSize!5178)) )
))
(declare-datatypes ((List!24069 0))(
  ( (Nil!23985) (Cons!23985 (h!29386 C!11576) (t!196597 List!24069)) )
))
(declare-datatypes ((IArray!15711 0))(
  ( (IArray!15712 (innerList!7913 List!24069)) )
))
(declare-datatypes ((Conc!7853 0))(
  ( (Node!7853 (left!18499 Conc!7853) (right!18829 Conc!7853) (csize!15936 Int) (cheight!8064 Int)) (Leaf!11478 (xs!10795 IArray!15711) (csize!15937 Int)) (Empty!7853) )
))
(declare-datatypes ((MutLongMap!2589 0))(
  ( (LongMap!2589 (underlying!5373 Cell!10181)) (MutLongMapExt!2588 (__x!15943 Int)) )
))
(declare-datatypes ((Cell!10183 0))(
  ( (Cell!10184 (v!28537 MutLongMap!2589)) )
))
(declare-datatypes ((Hashable!2503 0))(
  ( (HashableExt!2502 (__x!15944 Int)) )
))
(declare-datatypes ((MutableMap!2503 0))(
  ( (MutableMapExt!2502 (__x!15945 Int)) (HashMap!2503 (underlying!5374 Cell!10183) (hashF!4426 Hashable!2503) (_size!5230 (_ BitVec 32)) (defaultValue!2665 Int)) )
))
(declare-datatypes ((BalanceConc!15468 0))(
  ( (BalanceConc!15469 (c!340198 Conc!7853)) )
))
(declare-datatypes ((CacheFurthestNullable!676 0))(
  ( (CacheFurthestNullable!677 (cache!2884 MutableMap!2503) (totalInput!3007 BalanceConc!15468)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!676)

(declare-fun e!1359641 () Bool)

(declare-fun inv!31617 (CacheFurthestNullable!676) Bool)

(assert (=> start!207536 (and (inv!31617 cacheFurthestNullable!114) e!1359641)))

(assert (=> start!207536 true))

(declare-datatypes ((tuple3!3124 0))(
  ( (tuple3!3125 (_1!13893 Regex!5715) (_2!13893 Context!2570) (_3!2032 C!11576)) )
))
(declare-datatypes ((tuple2!23722 0))(
  ( (tuple2!23723 (_1!13894 tuple3!3124) (_2!13894 (InoxSet Context!2570))) )
))
(declare-datatypes ((List!24070 0))(
  ( (Nil!23986) (Cons!23986 (h!29387 tuple2!23722) (t!196598 List!24070)) )
))
(declare-datatypes ((Hashable!2504 0))(
  ( (HashableExt!2503 (__x!15946 Int)) )
))
(declare-datatypes ((array!8831 0))(
  ( (array!8832 (arr!3927 (Array (_ BitVec 32) List!24070)) (size!18761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5180 0))(
  ( (LongMapFixedSize!5181 (defaultEntry!2955 Int) (mask!6763 (_ BitVec 32)) (extraKeys!2838 (_ BitVec 32)) (zeroValue!2848 List!24070) (minValue!2848 List!24070) (_size!5231 (_ BitVec 32)) (_keys!2887 array!8827) (_values!2870 array!8831) (_vacant!2651 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10185 0))(
  ( (Cell!10186 (v!28538 LongMapFixedSize!5180)) )
))
(declare-datatypes ((MutLongMap!2590 0))(
  ( (LongMap!2590 (underlying!5375 Cell!10185)) (MutLongMapExt!2589 (__x!15947 Int)) )
))
(declare-datatypes ((Cell!10187 0))(
  ( (Cell!10188 (v!28539 MutLongMap!2590)) )
))
(declare-datatypes ((MutableMap!2504 0))(
  ( (MutableMapExt!2503 (__x!15948 Int)) (HashMap!2504 (underlying!5376 Cell!10187) (hashF!4427 Hashable!2504) (_size!5232 (_ BitVec 32)) (defaultValue!2666 Int)) )
))
(declare-datatypes ((CacheDown!1718 0))(
  ( (CacheDown!1719 (cache!2885 MutableMap!2504)) )
))
(declare-fun cacheDown!1098 () CacheDown!1718)

(declare-fun e!1359614 () Bool)

(declare-fun inv!31618 (CacheDown!1718) Bool)

(assert (=> start!207536 (and (inv!31618 cacheDown!1098) e!1359614)))

(declare-datatypes ((tuple2!23724 0))(
  ( (tuple2!23725 (_1!13895 Context!2570) (_2!13895 C!11576)) )
))
(declare-datatypes ((tuple2!23726 0))(
  ( (tuple2!23727 (_1!13896 tuple2!23724) (_2!13896 (InoxSet Context!2570))) )
))
(declare-datatypes ((List!24071 0))(
  ( (Nil!23987) (Cons!23987 (h!29388 tuple2!23726) (t!196599 List!24071)) )
))
(declare-datatypes ((array!8833 0))(
  ( (array!8834 (arr!3928 (Array (_ BitVec 32) List!24071)) (size!18762 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5182 0))(
  ( (LongMapFixedSize!5183 (defaultEntry!2956 Int) (mask!6764 (_ BitVec 32)) (extraKeys!2839 (_ BitVec 32)) (zeroValue!2849 List!24071) (minValue!2849 List!24071) (_size!5233 (_ BitVec 32)) (_keys!2888 array!8827) (_values!2871 array!8833) (_vacant!2652 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10189 0))(
  ( (Cell!10190 (v!28540 LongMapFixedSize!5182)) )
))
(declare-datatypes ((MutLongMap!2591 0))(
  ( (LongMap!2591 (underlying!5377 Cell!10189)) (MutLongMapExt!2590 (__x!15949 Int)) )
))
(declare-datatypes ((Cell!10191 0))(
  ( (Cell!10192 (v!28541 MutLongMap!2591)) )
))
(declare-datatypes ((Hashable!2505 0))(
  ( (HashableExt!2504 (__x!15950 Int)) )
))
(declare-datatypes ((MutableMap!2505 0))(
  ( (MutableMapExt!2504 (__x!15951 Int)) (HashMap!2505 (underlying!5378 Cell!10191) (hashF!4428 Hashable!2505) (_size!5234 (_ BitVec 32)) (defaultValue!2667 Int)) )
))
(declare-datatypes ((CacheUp!1736 0))(
  ( (CacheUp!1737 (cache!2886 MutableMap!2505)) )
))
(declare-fun cacheUp!979 () CacheUp!1736)

(declare-fun e!1359616 () Bool)

(declare-fun inv!31619 (CacheUp!1736) Bool)

(assert (=> start!207536 (and (inv!31619 cacheUp!979) e!1359616)))

(declare-fun condSetEmpty!15756 () Bool)

(declare-fun z!3839 () (InoxSet Context!2570))

(assert (=> start!207536 (= condSetEmpty!15756 (= z!3839 ((as const (Array Context!2570 Bool)) false)))))

(declare-fun setRes!15757 () Bool)

(assert (=> start!207536 setRes!15757))

(declare-fun totalInput!851 () BalanceConc!15468)

(declare-fun e!1359636 () Bool)

(declare-fun inv!31620 (BalanceConc!15468) Bool)

(assert (=> start!207536 (and (inv!31620 totalInput!851) e!1359636)))

(declare-fun e!1359620 () Bool)

(assert (=> start!207536 e!1359620))

(declare-fun b!2131459 () Bool)

(declare-fun e!1359613 () Bool)

(declare-fun tp!655679 () Bool)

(assert (=> b!2131459 (= e!1359613 tp!655679)))

(declare-fun mapIsEmpty!12538 () Bool)

(declare-fun mapRes!12539 () Bool)

(assert (=> mapIsEmpty!12538 mapRes!12539))

(declare-fun b!2131460 () Bool)

(declare-fun e!1359646 () Bool)

(declare-fun e!1359631 () Bool)

(assert (=> b!2131460 (= e!1359646 e!1359631)))

(declare-fun b!2131461 () Bool)

(declare-fun tp!655661 () Bool)

(declare-fun inv!31621 (Conc!7853) Bool)

(assert (=> b!2131461 (= e!1359636 (and (inv!31621 (c!340198 totalInput!851)) tp!655661))))

(declare-fun b!2131462 () Bool)

(declare-fun e!1359633 () Int)

(assert (=> b!2131462 (= e!1359633 from!1043)))

(declare-fun b!2131463 () Bool)

(declare-fun e!1359629 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2131463 (= e!1359629 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2131464 () Bool)

(declare-fun e!1359619 () Bool)

(declare-fun tp!655665 () Bool)

(assert (=> b!2131464 (= e!1359619 (and tp!655665 mapRes!12539))))

(declare-fun condMapEmpty!12539 () Bool)

(declare-fun mapDefault!12539 () List!24068)

(assert (=> b!2131464 (= condMapEmpty!12539 (= (arr!3926 (_values!2869 (v!28536 (underlying!5373 (v!28537 (underlying!5374 (cache!2884 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24068)) mapDefault!12539)))))

(declare-fun setIsEmpty!15756 () Bool)

(declare-fun setRes!15756 () Bool)

(assert (=> setIsEmpty!15756 setRes!15756))

(declare-fun tp!655662 () Bool)

(declare-fun e!1359626 () Bool)

(declare-fun tp!655660 () Bool)

(declare-fun e!1359634 () Bool)

(declare-fun array_inv!2803 (array!8827) Bool)

(declare-fun array_inv!2804 (array!8831) Bool)

(assert (=> b!2131465 (= e!1359626 (and tp!655658 tp!655660 tp!655662 (array_inv!2803 (_keys!2887 (v!28538 (underlying!5375 (v!28539 (underlying!5376 (cache!2885 cacheDown!1098))))))) (array_inv!2804 (_values!2870 (v!28538 (underlying!5375 (v!28539 (underlying!5376 (cache!2885 cacheDown!1098))))))) e!1359634))))

(declare-fun e!1359624 () Bool)

(declare-fun setNonEmpty!15756 () Bool)

(declare-fun tp!655669 () Bool)

(declare-fun setElem!15756 () Context!2570)

(declare-fun inv!31622 (Context!2570) Bool)

(assert (=> setNonEmpty!15756 (= setRes!15756 (and tp!655669 (inv!31622 setElem!15756) e!1359624))))

(declare-datatypes ((StackFrame!124 0))(
  ( (StackFrame!125 (z!5790 (InoxSet Context!2570)) (from!2676 Int) (lastNullablePos!363 Int) (res!921393 Int) (totalInput!3008 BalanceConc!15468)) )
))
(declare-datatypes ((List!24072 0))(
  ( (Nil!23988) (Cons!23988 (h!29389 StackFrame!124) (t!196600 List!24072)) )
))
(declare-fun stack!8 () List!24072)

(declare-fun setRest!15756 () (InoxSet Context!2570))

(assert (=> setNonEmpty!15756 (= (z!5790 (h!29389 stack!8)) ((_ map or) (store ((as const (Array Context!2570 Bool)) false) setElem!15756 true) setRest!15756))))

(declare-fun b!2131466 () Bool)

(declare-fun e!1359647 () Bool)

(declare-fun e!1359645 () Bool)

(assert (=> b!2131466 (= e!1359647 (not e!1359645))))

(declare-fun res!921386 () Bool)

(assert (=> b!2131466 (=> res!921386 e!1359645)))

(get-info :version)

(declare-datatypes ((Option!4894 0))(
  ( (None!4893) (Some!4893 (v!28542 Int)) )
))
(declare-fun get!7361 (CacheFurthestNullable!676 (InoxSet Context!2570) Int Int) Option!4894)

(assert (=> b!2131466 (= res!921386 ((_ is Some!4893) (get!7361 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-fun forall!4908 (List!24072 Int) Bool)

(assert (=> b!2131466 (forall!4908 stack!8 lambda!79210)))

(declare-fun b!2131467 () Bool)

(declare-fun e!1359623 () Bool)

(declare-fun e!1359637 () Bool)

(declare-fun lt!796515 () MutLongMap!2591)

(assert (=> b!2131467 (= e!1359623 (and e!1359637 ((_ is LongMap!2591) lt!796515)))))

(assert (=> b!2131467 (= lt!796515 (v!28541 (underlying!5378 (cache!2886 cacheUp!979))))))

(declare-fun b!2131468 () Bool)

(declare-fun e!1359638 () Bool)

(declare-fun e!1359628 () Bool)

(declare-fun lt!796517 () MutLongMap!2589)

(assert (=> b!2131468 (= e!1359638 (and e!1359628 ((_ is LongMap!2589) lt!796517)))))

(assert (=> b!2131468 (= lt!796517 (v!28537 (underlying!5374 (cache!2884 cacheFurthestNullable!114))))))

(declare-fun b!2131469 () Bool)

(declare-fun e!1359639 () Bool)

(declare-fun tp!655657 () Bool)

(declare-fun mapRes!12540 () Bool)

(assert (=> b!2131469 (= e!1359639 (and tp!655657 mapRes!12540))))

(declare-fun condMapEmpty!12540 () Bool)

(declare-fun mapDefault!12540 () List!24071)

(assert (=> b!2131469 (= condMapEmpty!12540 (= (arr!3928 (_values!2871 (v!28540 (underlying!5377 (v!28541 (underlying!5378 (cache!2886 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24071)) mapDefault!12540)))))

(declare-fun b!2131470 () Bool)

(declare-fun tp!655672 () Bool)

(assert (=> b!2131470 (= e!1359624 tp!655672)))

(declare-fun e!1359625 () Bool)

(assert (=> b!2131471 (= e!1359625 e!1359647)))

(declare-fun res!921381 () Bool)

(assert (=> b!2131471 (=> (not res!921381) (not e!1359647))))

(assert (=> b!2131471 (= res!921381 (forall!4908 stack!8 lambda!79210))))

(declare-fun lt!796516 () Int)

(declare-fun lt!796513 () Int)

(declare-fun furthestNullablePosition!34 ((InoxSet Context!2570) Int BalanceConc!15468 Int Int) Int)

(assert (=> b!2131471 (= lt!796516 (furthestNullablePosition!34 z!3839 from!1043 totalInput!851 lt!796513 lastNullablePos!123))))

(declare-fun e!1359648 () Bool)

(assert (=> b!2131472 (= e!1359648 (and e!1359638 tp!655675))))

(declare-fun b!2131473 () Bool)

(declare-fun res!921384 () Bool)

(assert (=> b!2131473 (=> res!921384 e!1359645)))

(declare-fun lostCauseZipper!74 ((InoxSet Context!2570)) Bool)

(assert (=> b!2131473 (= res!921384 (lostCauseZipper!74 z!3839))))

(declare-fun b!2131474 () Bool)

(declare-fun e!1359622 () Bool)

(declare-fun e!1359643 () Bool)

(assert (=> b!2131474 (= e!1359622 e!1359643)))

(declare-fun b!2131475 () Bool)

(assert (=> b!2131475 (= e!1359633 lastNullablePos!123)))

(declare-fun e!1359621 () Bool)

(declare-fun b!2131476 () Bool)

(declare-fun e!1359635 () Bool)

(assert (=> b!2131476 (= e!1359635 (and setRes!15756 (inv!31620 (totalInput!3008 (h!29389 stack!8))) e!1359621))))

(declare-fun condSetEmpty!15757 () Bool)

(assert (=> b!2131476 (= condSetEmpty!15757 (= (z!5790 (h!29389 stack!8)) ((as const (Array Context!2570 Bool)) false)))))

(declare-fun tp!655677 () Bool)

(declare-fun tp!655668 () Bool)

(declare-fun array_inv!2805 (array!8833) Bool)

(assert (=> b!2131477 (= e!1359631 (and tp!655667 tp!655677 tp!655668 (array_inv!2803 (_keys!2888 (v!28540 (underlying!5377 (v!28541 (underlying!5378 (cache!2886 cacheUp!979))))))) (array_inv!2805 (_values!2871 (v!28540 (underlying!5377 (v!28541 (underlying!5378 (cache!2886 cacheUp!979))))))) e!1359639))))

(declare-fun b!2131478 () Bool)

(declare-fun e!1359617 () Bool)

(declare-fun lt!796518 () MutLongMap!2590)

(assert (=> b!2131478 (= e!1359618 (and e!1359617 ((_ is LongMap!2590) lt!796518)))))

(assert (=> b!2131478 (= lt!796518 (v!28539 (underlying!5376 (cache!2885 cacheDown!1098))))))

(declare-fun e!1359642 () Bool)

(assert (=> b!2131479 (= e!1359642 (and e!1359623 tp!655671))))

(declare-fun b!2131480 () Bool)

(declare-fun e!1359640 () Bool)

(assert (=> b!2131480 (= e!1359640 e!1359626)))

(declare-fun tp!655656 () Bool)

(declare-fun tp!655684 () Bool)

(declare-fun array_inv!2806 (array!8829) Bool)

(assert (=> b!2131481 (= e!1359643 (and tp!655663 tp!655684 tp!655656 (array_inv!2803 (_keys!2886 (v!28536 (underlying!5373 (v!28537 (underlying!5374 (cache!2884 cacheFurthestNullable!114))))))) (array_inv!2806 (_values!2869 (v!28536 (underlying!5373 (v!28537 (underlying!5374 (cache!2884 cacheFurthestNullable!114))))))) e!1359619))))

(declare-fun mapIsEmpty!12539 () Bool)

(assert (=> mapIsEmpty!12539 mapRes!12540))

(declare-fun b!2131482 () Bool)

(assert (=> b!2131482 (= e!1359628 e!1359622)))

(declare-fun b!2131483 () Bool)

(declare-fun res!921387 () Bool)

(assert (=> b!2131483 (=> (not res!921387) (not e!1359625))))

(assert (=> b!2131483 (= res!921387 e!1359629)))

(declare-fun res!921392 () Bool)

(assert (=> b!2131483 (=> res!921392 e!1359629)))

(declare-fun nullableZipper!99 ((InoxSet Context!2570)) Bool)

(assert (=> b!2131483 (= res!921392 (not (nullableZipper!99 z!3839)))))

(declare-fun b!2131484 () Bool)

(declare-fun tp!655659 () Bool)

(declare-fun mapRes!12538 () Bool)

(assert (=> b!2131484 (= e!1359634 (and tp!655659 mapRes!12538))))

(declare-fun condMapEmpty!12538 () Bool)

(declare-fun mapDefault!12538 () List!24070)

(assert (=> b!2131484 (= condMapEmpty!12538 (= (arr!3927 (_values!2870 (v!28538 (underlying!5375 (v!28539 (underlying!5376 (cache!2885 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24070)) mapDefault!12538)))))

(declare-fun mapIsEmpty!12540 () Bool)

(assert (=> mapIsEmpty!12540 mapRes!12538))

(declare-fun b!2131485 () Bool)

(declare-fun e!1359632 () Bool)

(assert (=> b!2131485 (= e!1359641 (and e!1359648 (inv!31620 (totalInput!3007 cacheFurthestNullable!114)) e!1359632))))

(declare-fun tp!655670 () Bool)

(declare-fun setNonEmpty!15757 () Bool)

(declare-fun setElem!15757 () Context!2570)

(assert (=> setNonEmpty!15757 (= setRes!15757 (and tp!655670 (inv!31622 setElem!15757) e!1359613))))

(declare-fun setRest!15757 () (InoxSet Context!2570))

(assert (=> setNonEmpty!15757 (= z!3839 ((_ map or) (store ((as const (Array Context!2570 Bool)) false) setElem!15757 true) setRest!15757))))

(declare-fun b!2131486 () Bool)

(declare-fun tp!655673 () Bool)

(assert (=> b!2131486 (= e!1359632 (and (inv!31621 (c!340198 (totalInput!3007 cacheFurthestNullable!114))) tp!655673))))

(declare-fun b!2131487 () Bool)

(assert (=> b!2131487 (= e!1359616 e!1359642)))

(declare-fun mapNonEmpty!12538 () Bool)

(declare-fun tp!655678 () Bool)

(declare-fun tp!655674 () Bool)

(assert (=> mapNonEmpty!12538 (= mapRes!12538 (and tp!655678 tp!655674))))

(declare-fun mapValue!12539 () List!24070)

(declare-fun mapRest!12538 () (Array (_ BitVec 32) List!24070))

(declare-fun mapKey!12538 () (_ BitVec 32))

(assert (=> mapNonEmpty!12538 (= (arr!3927 (_values!2870 (v!28538 (underlying!5375 (v!28539 (underlying!5376 (cache!2885 cacheDown!1098))))))) (store mapRest!12538 mapKey!12538 mapValue!12539))))

(declare-fun b!2131488 () Bool)

(declare-fun res!921385 () Bool)

(assert (=> b!2131488 (=> res!921385 e!1359645)))

(assert (=> b!2131488 (= res!921385 (= from!1043 totalInputSize!296))))

(declare-fun b!2131489 () Bool)

(declare-fun res!921388 () Bool)

(assert (=> b!2131489 (=> (not res!921388) (not e!1359625))))

(assert (=> b!2131489 (= res!921388 (= (totalInput!3007 cacheFurthestNullable!114) totalInput!851))))

(declare-fun mapNonEmpty!12539 () Bool)

(declare-fun tp!655682 () Bool)

(declare-fun tp!655676 () Bool)

(assert (=> mapNonEmpty!12539 (= mapRes!12540 (and tp!655682 tp!655676))))

(declare-fun mapKey!12539 () (_ BitVec 32))

(declare-fun mapRest!12540 () (Array (_ BitVec 32) List!24071))

(declare-fun mapValue!12540 () List!24071)

(assert (=> mapNonEmpty!12539 (= (arr!3928 (_values!2871 (v!28540 (underlying!5377 (v!28541 (underlying!5378 (cache!2886 cacheUp!979))))))) (store mapRest!12540 mapKey!12539 mapValue!12540))))

(declare-fun b!2131490 () Bool)

(declare-fun tp!655664 () Bool)

(assert (=> b!2131490 (= e!1359621 (and (inv!31621 (c!340198 (totalInput!3008 (h!29389 stack!8)))) tp!655664))))

(declare-fun b!2131491 () Bool)

(assert (=> b!2131491 (= e!1359637 e!1359646)))

(declare-fun b!2131492 () Bool)

(declare-fun res!921383 () Bool)

(assert (=> b!2131492 (=> (not res!921383) (not e!1359625))))

(declare-fun valid!2031 (CacheDown!1718) Bool)

(assert (=> b!2131492 (= res!921383 (valid!2031 cacheDown!1098))))

(declare-fun setIsEmpty!15757 () Bool)

(assert (=> setIsEmpty!15757 setRes!15757))

(declare-fun res!921391 () Bool)

(assert (=> b!2131493 (=> (not res!921391) (not e!1359647))))

(assert (=> b!2131493 (= res!921391 (forall!4908 stack!8 lambda!79211))))

(declare-fun b!2131494 () Bool)

(declare-fun lt!796514 () Int)

(assert (=> b!2131494 (= e!1359645 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) lt!796513) (and (>= lt!796514 (- 1)) (< lt!796514 (+ 1 from!1043)))))))

(assert (=> b!2131494 (= lt!796514 e!1359633)))

(declare-fun c!340196 () Bool)

(declare-datatypes ((tuple3!3126 0))(
  ( (tuple3!3127 (_1!13897 (InoxSet Context!2570)) (_2!13897 CacheUp!1736) (_3!2033 CacheDown!1718)) )
))
(declare-fun derivationStepZipperMem!24 ((InoxSet Context!2570) C!11576 CacheUp!1736 CacheDown!1718) tuple3!3126)

(declare-fun apply!5923 (BalanceConc!15468 Int) C!11576)

(assert (=> b!2131494 (= c!340196 (nullableZipper!99 (_1!13897 (derivationStepZipperMem!24 z!3839 (apply!5923 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))))

(declare-fun b!2131495 () Bool)

(assert (=> b!2131495 (= e!1359617 e!1359640)))

(declare-fun b!2131496 () Bool)

(declare-fun res!921382 () Bool)

(assert (=> b!2131496 (=> (not res!921382) (not e!1359625))))

(declare-fun valid!2032 (CacheFurthestNullable!676) Bool)

(assert (=> b!2131496 (= res!921382 (valid!2032 cacheFurthestNullable!114))))

(declare-fun b!2131497 () Bool)

(declare-fun res!921389 () Bool)

(assert (=> b!2131497 (=> (not res!921389) (not e!1359625))))

(declare-fun valid!2033 (CacheUp!1736) Bool)

(assert (=> b!2131497 (= res!921389 (valid!2033 cacheUp!979))))

(declare-fun b!2131498 () Bool)

(assert (=> b!2131498 (= e!1359614 e!1359627)))

(declare-fun mapNonEmpty!12540 () Bool)

(declare-fun tp!655683 () Bool)

(declare-fun tp!655666 () Bool)

(assert (=> mapNonEmpty!12540 (= mapRes!12539 (and tp!655683 tp!655666))))

(declare-fun mapValue!12538 () List!24068)

(declare-fun mapRest!12539 () (Array (_ BitVec 32) List!24068))

(declare-fun mapKey!12540 () (_ BitVec 32))

(assert (=> mapNonEmpty!12540 (= (arr!3926 (_values!2869 (v!28536 (underlying!5373 (v!28537 (underlying!5374 (cache!2884 cacheFurthestNullable!114))))))) (store mapRest!12539 mapKey!12540 mapValue!12538))))

(declare-fun tp!655680 () Bool)

(declare-fun b!2131499 () Bool)

(declare-fun inv!31623 (StackFrame!124) Bool)

(assert (=> b!2131499 (= e!1359620 (and (inv!31623 (h!29389 stack!8)) e!1359635 tp!655680))))

(declare-fun b!2131500 () Bool)

(assert (=> b!2131500 (= e!1359649 e!1359625)))

(declare-fun res!921380 () Bool)

(assert (=> b!2131500 (=> (not res!921380) (not e!1359625))))

(assert (=> b!2131500 (= res!921380 (and (= totalInputSize!296 lt!796513) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18763 (BalanceConc!15468) Int)

(assert (=> b!2131500 (= lt!796513 (size!18763 totalInput!851))))

(assert (= (and start!207536 res!921390) b!2131500))

(assert (= (and b!2131500 res!921380) b!2131483))

(assert (= (and b!2131483 (not res!921392)) b!2131463))

(assert (= (and b!2131483 res!921387) b!2131497))

(assert (= (and b!2131497 res!921389) b!2131492))

(assert (= (and b!2131492 res!921383) b!2131496))

(assert (= (and b!2131496 res!921382) b!2131489))

(assert (= (and b!2131489 res!921388) b!2131471))

(assert (= (and b!2131471 res!921381) b!2131493))

(assert (= (and b!2131493 res!921391) b!2131466))

(assert (= (and b!2131466 (not res!921386)) b!2131488))

(assert (= (and b!2131488 (not res!921385)) b!2131473))

(assert (= (and b!2131473 (not res!921384)) b!2131494))

(assert (= (and b!2131494 c!340196) b!2131462))

(assert (= (and b!2131494 (not c!340196)) b!2131475))

(assert (= (and b!2131464 condMapEmpty!12539) mapIsEmpty!12538))

(assert (= (and b!2131464 (not condMapEmpty!12539)) mapNonEmpty!12540))

(assert (= b!2131481 b!2131464))

(assert (= b!2131474 b!2131481))

(assert (= b!2131482 b!2131474))

(assert (= (and b!2131468 ((_ is LongMap!2589) (v!28537 (underlying!5374 (cache!2884 cacheFurthestNullable!114))))) b!2131482))

(assert (= b!2131472 b!2131468))

(assert (= (and b!2131485 ((_ is HashMap!2503) (cache!2884 cacheFurthestNullable!114))) b!2131472))

(assert (= b!2131485 b!2131486))

(assert (= start!207536 b!2131485))

(assert (= (and b!2131484 condMapEmpty!12538) mapIsEmpty!12540))

(assert (= (and b!2131484 (not condMapEmpty!12538)) mapNonEmpty!12538))

(assert (= b!2131465 b!2131484))

(assert (= b!2131480 b!2131465))

(assert (= b!2131495 b!2131480))

(assert (= (and b!2131478 ((_ is LongMap!2590) (v!28539 (underlying!5376 (cache!2885 cacheDown!1098))))) b!2131495))

(assert (= b!2131458 b!2131478))

(assert (= (and b!2131498 ((_ is HashMap!2504) (cache!2885 cacheDown!1098))) b!2131458))

(assert (= start!207536 b!2131498))

(assert (= (and b!2131469 condMapEmpty!12540) mapIsEmpty!12539))

(assert (= (and b!2131469 (not condMapEmpty!12540)) mapNonEmpty!12539))

(assert (= b!2131477 b!2131469))

(assert (= b!2131460 b!2131477))

(assert (= b!2131491 b!2131460))

(assert (= (and b!2131467 ((_ is LongMap!2591) (v!28541 (underlying!5378 (cache!2886 cacheUp!979))))) b!2131491))

(assert (= b!2131479 b!2131467))

(assert (= (and b!2131487 ((_ is HashMap!2505) (cache!2886 cacheUp!979))) b!2131479))

(assert (= start!207536 b!2131487))

(assert (= (and start!207536 condSetEmpty!15756) setIsEmpty!15757))

(assert (= (and start!207536 (not condSetEmpty!15756)) setNonEmpty!15757))

(assert (= setNonEmpty!15757 b!2131459))

(assert (= start!207536 b!2131461))

(assert (= (and b!2131476 condSetEmpty!15757) setIsEmpty!15756))

(assert (= (and b!2131476 (not condSetEmpty!15757)) setNonEmpty!15756))

(assert (= setNonEmpty!15756 b!2131470))

(assert (= b!2131476 b!2131490))

(assert (= b!2131499 b!2131476))

(assert (= (and start!207536 ((_ is Cons!23988) stack!8)) b!2131499))

(declare-fun m!2581108 () Bool)

(assert (=> setNonEmpty!15756 m!2581108))

(declare-fun m!2581110 () Bool)

(assert (=> b!2131492 m!2581110))

(declare-fun m!2581112 () Bool)

(assert (=> b!2131476 m!2581112))

(declare-fun m!2581114 () Bool)

(assert (=> b!2131471 m!2581114))

(declare-fun m!2581116 () Bool)

(assert (=> b!2131471 m!2581116))

(declare-fun m!2581118 () Bool)

(assert (=> b!2131490 m!2581118))

(declare-fun m!2581120 () Bool)

(assert (=> b!2131500 m!2581120))

(declare-fun m!2581122 () Bool)

(assert (=> b!2131461 m!2581122))

(declare-fun m!2581124 () Bool)

(assert (=> b!2131485 m!2581124))

(declare-fun m!2581126 () Bool)

(assert (=> b!2131481 m!2581126))

(declare-fun m!2581128 () Bool)

(assert (=> b!2131481 m!2581128))

(declare-fun m!2581130 () Bool)

(assert (=> b!2131493 m!2581130))

(declare-fun m!2581132 () Bool)

(assert (=> b!2131477 m!2581132))

(declare-fun m!2581134 () Bool)

(assert (=> b!2131477 m!2581134))

(declare-fun m!2581136 () Bool)

(assert (=> b!2131494 m!2581136))

(assert (=> b!2131494 m!2581136))

(declare-fun m!2581138 () Bool)

(assert (=> b!2131494 m!2581138))

(declare-fun m!2581140 () Bool)

(assert (=> b!2131494 m!2581140))

(declare-fun m!2581142 () Bool)

(assert (=> b!2131496 m!2581142))

(declare-fun m!2581144 () Bool)

(assert (=> start!207536 m!2581144))

(declare-fun m!2581146 () Bool)

(assert (=> start!207536 m!2581146))

(declare-fun m!2581148 () Bool)

(assert (=> start!207536 m!2581148))

(declare-fun m!2581150 () Bool)

(assert (=> start!207536 m!2581150))

(declare-fun m!2581152 () Bool)

(assert (=> mapNonEmpty!12539 m!2581152))

(declare-fun m!2581154 () Bool)

(assert (=> b!2131466 m!2581154))

(assert (=> b!2131466 m!2581114))

(declare-fun m!2581156 () Bool)

(assert (=> b!2131497 m!2581156))

(declare-fun m!2581158 () Bool)

(assert (=> mapNonEmpty!12538 m!2581158))

(declare-fun m!2581160 () Bool)

(assert (=> b!2131473 m!2581160))

(declare-fun m!2581162 () Bool)

(assert (=> b!2131465 m!2581162))

(declare-fun m!2581164 () Bool)

(assert (=> b!2131465 m!2581164))

(declare-fun m!2581166 () Bool)

(assert (=> setNonEmpty!15757 m!2581166))

(declare-fun m!2581168 () Bool)

(assert (=> b!2131499 m!2581168))

(declare-fun m!2581170 () Bool)

(assert (=> b!2131483 m!2581170))

(declare-fun m!2581172 () Bool)

(assert (=> b!2131486 m!2581172))

(declare-fun m!2581174 () Bool)

(assert (=> mapNonEmpty!12540 m!2581174))

(check-sat (not setNonEmpty!15757) (not b_next!62945) (not b!2131483) (not b!2131461) b_and!171821 (not b!2131493) (not b!2131492) (not b!2131464) (not b!2131481) (not b_next!62941) (not b!2131490) (not b!2131465) (not b!2131469) (not b!2131485) (not b!2131500) (not b!2131476) (not b_next!62949) b_and!171817 b_and!171827 (not b!2131470) (not b_next!62947) b_and!171823 b_and!171825 (not b!2131497) (not b!2131471) (not start!207536) (not mapNonEmpty!12539) (not b!2131459) (not b!2131486) (not b!2131473) (not b_next!62943) (not b!2131499) (not b!2131466) (not b!2131496) b_and!171819 (not b!2131484) (not b!2131477) (not setNonEmpty!15756) (not b_next!62951) (not mapNonEmpty!12538) (not b!2131494) (not mapNonEmpty!12540))
(check-sat b_and!171821 (not b_next!62941) (not b_next!62949) b_and!171825 (not b_next!62945) (not b_next!62943) b_and!171819 (not b_next!62951) b_and!171817 b_and!171827 (not b_next!62947) b_and!171823)
