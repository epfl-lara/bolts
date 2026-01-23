; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268358 () Bool)

(assert start!268358)

(declare-fun b!2773993 () Bool)

(declare-fun b_free!78325 () Bool)

(declare-fun b_next!79029 () Bool)

(assert (=> b!2773993 (= b_free!78325 (not b_next!79029))))

(declare-fun tp!877718 () Bool)

(declare-fun b_and!203063 () Bool)

(assert (=> b!2773993 (= tp!877718 b_and!203063)))

(declare-fun b!2773992 () Bool)

(declare-fun b_free!78327 () Bool)

(declare-fun b_next!79031 () Bool)

(assert (=> b!2773992 (= b_free!78327 (not b_next!79031))))

(declare-fun tp!877719 () Bool)

(declare-fun b_and!203065 () Bool)

(assert (=> b!2773992 (= tp!877719 b_and!203065)))

(declare-fun b!2774001 () Bool)

(declare-fun b_free!78329 () Bool)

(declare-fun b_next!79033 () Bool)

(assert (=> b!2774001 (= b_free!78329 (not b_next!79033))))

(declare-fun tp!877710 () Bool)

(declare-fun b_and!203067 () Bool)

(assert (=> b!2774001 (= tp!877710 b_and!203067)))

(declare-fun b!2773987 () Bool)

(declare-fun b_free!78331 () Bool)

(declare-fun b_next!79035 () Bool)

(assert (=> b!2773987 (= b_free!78331 (not b_next!79035))))

(declare-fun tp!877703 () Bool)

(declare-fun b_and!203069 () Bool)

(assert (=> b!2773987 (= tp!877703 b_and!203069)))

(declare-fun b!2773986 () Bool)

(declare-fun e!1749484 () Bool)

(declare-fun e!1749469 () Bool)

(declare-datatypes ((C!16348 0))(
  ( (C!16349 (val!10108 Int)) )
))
(declare-datatypes ((Regex!8095 0))(
  ( (ElementMatch!8095 (c!450373 C!16348)) (Concat!13183 (regOne!16702 Regex!8095) (regTwo!16702 Regex!8095)) (EmptyExpr!8095) (Star!8095 (reg!8424 Regex!8095)) (EmptyLang!8095) (Union!8095 (regOne!16703 Regex!8095) (regTwo!16703 Regex!8095)) )
))
(declare-datatypes ((List!32142 0))(
  ( (Nil!32042) (Cons!32042 (h!37462 Regex!8095) (t!228270 List!32142)) )
))
(declare-datatypes ((Context!4626 0))(
  ( (Context!4627 (exprs!2813 List!32142)) )
))
(declare-datatypes ((tuple3!4868 0))(
  ( (tuple3!4869 (_1!19022 Regex!8095) (_2!19022 Context!4626) (_3!2904 C!16348)) )
))
(declare-datatypes ((array!13519 0))(
  ( (array!13520 (arr!6026 (Array (_ BitVec 32) (_ BitVec 64))) (size!24831 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32236 0))(
  ( (tuple2!32237 (_1!19023 tuple3!4868) (_2!19023 (InoxSet Context!4626))) )
))
(declare-datatypes ((List!32143 0))(
  ( (Nil!32043) (Cons!32043 (h!37463 tuple2!32236) (t!228271 List!32143)) )
))
(declare-datatypes ((array!13521 0))(
  ( (array!13522 (arr!6027 (Array (_ BitVec 32) List!32143)) (size!24832 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7596 0))(
  ( (LongMapFixedSize!7597 (defaultEntry!4183 Int) (mask!9582 (_ BitVec 32)) (extraKeys!4047 (_ BitVec 32)) (zeroValue!4057 List!32143) (minValue!4057 List!32143) (_size!7639 (_ BitVec 32)) (_keys!4098 array!13519) (_values!4079 array!13521) (_vacant!3859 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15001 0))(
  ( (Cell!15002 (v!33652 LongMapFixedSize!7596)) )
))
(declare-datatypes ((MutLongMap!3798 0))(
  ( (LongMap!3798 (underlying!7799 Cell!15001)) (MutLongMapExt!3797 (__x!21044 Int)) )
))
(declare-fun lt!988864 () MutLongMap!3798)

(get-info :version)

(assert (=> b!2773986 (= e!1749484 (and e!1749469 ((_ is LongMap!3798) lt!988864)))))

(declare-datatypes ((Cell!15003 0))(
  ( (Cell!15004 (v!33653 MutLongMap!3798)) )
))
(declare-datatypes ((Hashable!3714 0))(
  ( (HashableExt!3713 (__x!21045 Int)) )
))
(declare-datatypes ((MutableMap!3704 0))(
  ( (MutableMapExt!3703 (__x!21046 Int)) (HashMap!3704 (underlying!7800 Cell!15003) (hashF!5746 Hashable!3714) (_size!7640 (_ BitVec 32)) (defaultValue!3875 Int)) )
))
(declare-datatypes ((CacheDown!2530 0))(
  ( (CacheDown!2531 (cache!3847 MutableMap!3704)) )
))
(declare-fun cacheDown!939 () CacheDown!2530)

(assert (=> b!2773986 (= lt!988864 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))

(declare-fun setRes!22977 () Bool)

(declare-fun tp!877715 () Bool)

(declare-fun e!1749476 () Bool)

(declare-fun setNonEmpty!22977 () Bool)

(declare-fun setElem!22977 () Context!4626)

(declare-fun inv!43518 (Context!4626) Bool)

(assert (=> setNonEmpty!22977 (= setRes!22977 (and tp!877715 (inv!43518 setElem!22977) e!1749476))))

(declare-fun z!3597 () (InoxSet Context!4626))

(declare-fun setRest!22977 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22977 (= z!3597 ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22977 true) setRest!22977))))

(declare-fun e!1749480 () Bool)

(declare-fun e!1749471 () Bool)

(assert (=> b!2773987 (= e!1749480 (and e!1749471 tp!877703))))

(declare-fun b!2773988 () Bool)

(declare-fun e!1749466 () Bool)

(declare-datatypes ((List!32144 0))(
  ( (Nil!32044) (Cons!32044 (h!37464 C!16348) (t!228272 List!32144)) )
))
(declare-datatypes ((IArray!19953 0))(
  ( (IArray!19954 (innerList!10034 List!32144)) )
))
(declare-datatypes ((Conc!9974 0))(
  ( (Node!9974 (left!24407 Conc!9974) (right!24737 Conc!9974) (csize!20178 Int) (cheight!10185 Int)) (Leaf!15190 (xs!13084 IArray!19953) (csize!20179 Int)) (Empty!9974) )
))
(declare-datatypes ((BalanceConc!19562 0))(
  ( (BalanceConc!19563 (c!450374 Conc!9974)) )
))
(declare-fun input!5495 () BalanceConc!19562)

(declare-fun tp!877716 () Bool)

(declare-fun inv!43519 (Conc!9974) Bool)

(assert (=> b!2773988 (= e!1749466 (and (inv!43519 (c!450374 input!5495)) tp!877716))))

(declare-fun b!2773989 () Bool)

(declare-fun e!1749485 () Bool)

(assert (=> b!2773989 (= e!1749485 e!1749480)))

(declare-fun b!2773990 () Bool)

(declare-fun res!1159376 () Bool)

(declare-fun e!1749470 () Bool)

(assert (=> b!2773990 (=> (not res!1159376) (not e!1749470))))

(declare-datatypes ((tuple2!32238 0))(
  ( (tuple2!32239 (_1!19024 Context!4626) (_2!19024 C!16348)) )
))
(declare-datatypes ((tuple2!32240 0))(
  ( (tuple2!32241 (_1!19025 tuple2!32238) (_2!19025 (InoxSet Context!4626))) )
))
(declare-datatypes ((List!32145 0))(
  ( (Nil!32045) (Cons!32045 (h!37465 tuple2!32240) (t!228273 List!32145)) )
))
(declare-datatypes ((Hashable!3715 0))(
  ( (HashableExt!3714 (__x!21047 Int)) )
))
(declare-datatypes ((array!13523 0))(
  ( (array!13524 (arr!6028 (Array (_ BitVec 32) List!32145)) (size!24833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7598 0))(
  ( (LongMapFixedSize!7599 (defaultEntry!4184 Int) (mask!9583 (_ BitVec 32)) (extraKeys!4048 (_ BitVec 32)) (zeroValue!4058 List!32145) (minValue!4058 List!32145) (_size!7641 (_ BitVec 32)) (_keys!4099 array!13519) (_values!4080 array!13523) (_vacant!3860 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15005 0))(
  ( (Cell!15006 (v!33654 LongMapFixedSize!7598)) )
))
(declare-datatypes ((MutLongMap!3799 0))(
  ( (LongMap!3799 (underlying!7801 Cell!15005)) (MutLongMapExt!3798 (__x!21048 Int)) )
))
(declare-datatypes ((Cell!15007 0))(
  ( (Cell!15008 (v!33655 MutLongMap!3799)) )
))
(declare-datatypes ((MutableMap!3705 0))(
  ( (MutableMapExt!3704 (__x!21049 Int)) (HashMap!3705 (underlying!7802 Cell!15007) (hashF!5747 Hashable!3715) (_size!7642 (_ BitVec 32)) (defaultValue!3876 Int)) )
))
(declare-datatypes ((CacheUp!2410 0))(
  ( (CacheUp!2411 (cache!3848 MutableMap!3705)) )
))
(declare-datatypes ((tuple3!4870 0))(
  ( (tuple3!4871 (_1!19026 Int) (_2!19026 CacheUp!2410) (_3!2905 CacheDown!2530)) )
))
(declare-fun lt!988860 () tuple3!4870)

(declare-fun valid!2965 (CacheDown!2530) Bool)

(assert (=> b!2773990 (= res!1159376 (valid!2965 (_3!2905 lt!988860)))))

(declare-fun b!2773991 () Bool)

(declare-fun tp!877714 () Bool)

(assert (=> b!2773991 (= e!1749476 tp!877714)))

(declare-fun e!1749479 () Bool)

(declare-fun e!1749483 () Bool)

(declare-fun tp!877713 () Bool)

(declare-fun tp!877712 () Bool)

(declare-fun array_inv!4311 (array!13519) Bool)

(declare-fun array_inv!4312 (array!13521) Bool)

(assert (=> b!2773992 (= e!1749483 (and tp!877719 tp!877713 tp!877712 (array_inv!4311 (_keys!4098 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))) (array_inv!4312 (_values!4079 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))) e!1749479))))

(declare-fun cacheUp!820 () CacheUp!2410)

(declare-fun tp!877704 () Bool)

(declare-fun e!1749468 () Bool)

(declare-fun e!1749473 () Bool)

(declare-fun tp!877707 () Bool)

(declare-fun array_inv!4313 (array!13523) Bool)

(assert (=> b!2773993 (= e!1749468 (and tp!877718 tp!877707 tp!877704 (array_inv!4311 (_keys!4099 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))) (array_inv!4313 (_values!4080 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))) e!1749473))))

(declare-fun mapIsEmpty!17323 () Bool)

(declare-fun mapRes!17324 () Bool)

(assert (=> mapIsEmpty!17323 mapRes!17324))

(declare-fun res!1159377 () Bool)

(declare-fun e!1749467 () Bool)

(assert (=> start!268358 (=> (not res!1159377) (not e!1749467))))

(declare-fun valid!2966 (CacheUp!2410) Bool)

(assert (=> start!268358 (= res!1159377 (valid!2966 cacheUp!820))))

(assert (=> start!268358 e!1749467))

(declare-fun inv!43520 (CacheUp!2410) Bool)

(assert (=> start!268358 (and (inv!43520 cacheUp!820) e!1749485)))

(declare-fun e!1749482 () Bool)

(declare-fun inv!43521 (CacheDown!2530) Bool)

(assert (=> start!268358 (and (inv!43521 cacheDown!939) e!1749482)))

(declare-fun condSetEmpty!22977 () Bool)

(assert (=> start!268358 (= condSetEmpty!22977 (= z!3597 ((as const (Array Context!4626 Bool)) false)))))

(assert (=> start!268358 setRes!22977))

(declare-fun inv!43522 (BalanceConc!19562) Bool)

(assert (=> start!268358 (and (inv!43522 input!5495) e!1749466)))

(declare-fun b!2773994 () Bool)

(declare-fun lt!988861 () List!32144)

(declare-fun lt!988859 () tuple3!4870)

(declare-fun lt!988862 () Int)

(declare-fun e!1749478 () Bool)

(declare-fun findLongestMatchInnerZipperFast!46 ((InoxSet Context!4626) List!32144 Int List!32144 BalanceConc!19562 Int) Int)

(assert (=> b!2773994 (= e!1749478 (= (_1!19026 lt!988859) (findLongestMatchInnerZipperFast!46 z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862)))))

(declare-fun b!2773995 () Bool)

(declare-fun e!1749486 () Bool)

(declare-fun size!24834 (List!32144) Int)

(assert (=> b!2773995 (= e!1749486 (= 0 (size!24834 Nil!32044)))))

(declare-fun b!2773996 () Bool)

(declare-fun e!1749481 () Bool)

(declare-fun lt!988863 () MutLongMap!3799)

(assert (=> b!2773996 (= e!1749471 (and e!1749481 ((_ is LongMap!3799) lt!988863)))))

(assert (=> b!2773996 (= lt!988863 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))

(declare-fun b!2773997 () Bool)

(assert (=> b!2773997 (= e!1749470 (= (_1!19026 lt!988860) (findLongestMatchInnerZipperFast!46 z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862)))))

(declare-fun b!2773998 () Bool)

(declare-fun tp!877705 () Bool)

(assert (=> b!2773998 (= e!1749473 (and tp!877705 mapRes!17324))))

(declare-fun condMapEmpty!17324 () Bool)

(declare-fun mapDefault!17324 () List!32145)

(assert (=> b!2773998 (= condMapEmpty!17324 (= (arr!6028 (_values!4080 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32145)) mapDefault!17324)))))

(declare-fun b!2773999 () Bool)

(assert (=> b!2773999 (= e!1749467 (not e!1749486))))

(declare-fun res!1159375 () Bool)

(assert (=> b!2773999 (=> res!1159375 e!1749486)))

(declare-fun ++!7927 (List!32144 List!32144) List!32144)

(assert (=> b!2773999 (= res!1159375 (not (= (++!7927 Nil!32044 lt!988861) lt!988861)))))

(assert (=> b!2773999 e!1749478))

(declare-fun res!1159374 () Bool)

(assert (=> b!2773999 (=> (not res!1159374) (not e!1749478))))

(assert (=> b!2773999 (= res!1159374 (valid!2966 (_2!19026 lt!988859)))))

(declare-fun findLongestMatchInnerZipperFastMem!40 (CacheUp!2410 CacheDown!2530 (InoxSet Context!4626) List!32144 Int List!32144 BalanceConc!19562 Int) tuple3!4870)

(assert (=> b!2773999 (= lt!988859 (findLongestMatchInnerZipperFastMem!40 (_2!19026 lt!988860) (_3!2905 lt!988860) z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862))))

(assert (=> b!2773999 e!1749470))

(declare-fun res!1159372 () Bool)

(assert (=> b!2773999 (=> (not res!1159372) (not e!1749470))))

(assert (=> b!2773999 (= res!1159372 (valid!2966 (_2!19026 lt!988860)))))

(assert (=> b!2773999 (= lt!988860 (findLongestMatchInnerZipperFastMem!40 cacheUp!820 cacheDown!939 z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862))))

(declare-fun size!24835 (BalanceConc!19562) Int)

(assert (=> b!2773999 (= lt!988862 (size!24835 input!5495))))

(declare-fun list!12090 (BalanceConc!19562) List!32144)

(assert (=> b!2773999 (= lt!988861 (list!12090 input!5495))))

(declare-fun b!2774000 () Bool)

(declare-fun tp!877709 () Bool)

(declare-fun mapRes!17323 () Bool)

(assert (=> b!2774000 (= e!1749479 (and tp!877709 mapRes!17323))))

(declare-fun condMapEmpty!17323 () Bool)

(declare-fun mapDefault!17323 () List!32143)

(assert (=> b!2774000 (= condMapEmpty!17323 (= (arr!6027 (_values!4079 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32143)) mapDefault!17323)))))

(declare-fun e!1749472 () Bool)

(assert (=> b!2774001 (= e!1749472 (and e!1749484 tp!877710))))

(declare-fun b!2774002 () Bool)

(declare-fun res!1159373 () Bool)

(assert (=> b!2774002 (=> (not res!1159373) (not e!1749478))))

(assert (=> b!2774002 (= res!1159373 (valid!2965 (_3!2905 lt!988859)))))

(declare-fun b!2774003 () Bool)

(declare-fun e!1749477 () Bool)

(assert (=> b!2774003 (= e!1749469 e!1749477)))

(declare-fun mapNonEmpty!17323 () Bool)

(declare-fun tp!877717 () Bool)

(declare-fun tp!877711 () Bool)

(assert (=> mapNonEmpty!17323 (= mapRes!17323 (and tp!877717 tp!877711))))

(declare-fun mapKey!17323 () (_ BitVec 32))

(declare-fun mapRest!17323 () (Array (_ BitVec 32) List!32143))

(declare-fun mapValue!17324 () List!32143)

(assert (=> mapNonEmpty!17323 (= (arr!6027 (_values!4079 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))) (store mapRest!17323 mapKey!17323 mapValue!17324))))

(declare-fun b!2774004 () Bool)

(declare-fun e!1749474 () Bool)

(assert (=> b!2774004 (= e!1749481 e!1749474)))

(declare-fun b!2774005 () Bool)

(declare-fun res!1159378 () Bool)

(assert (=> b!2774005 (=> (not res!1159378) (not e!1749467))))

(assert (=> b!2774005 (= res!1159378 (valid!2965 cacheDown!939))))

(declare-fun mapIsEmpty!17324 () Bool)

(assert (=> mapIsEmpty!17324 mapRes!17323))

(declare-fun b!2774006 () Bool)

(assert (=> b!2774006 (= e!1749477 e!1749483)))

(declare-fun b!2774007 () Bool)

(assert (=> b!2774007 (= e!1749482 e!1749472)))

(declare-fun setIsEmpty!22977 () Bool)

(assert (=> setIsEmpty!22977 setRes!22977))

(declare-fun b!2774008 () Bool)

(assert (=> b!2774008 (= e!1749474 e!1749468)))

(declare-fun mapNonEmpty!17324 () Bool)

(declare-fun tp!877706 () Bool)

(declare-fun tp!877708 () Bool)

(assert (=> mapNonEmpty!17324 (= mapRes!17324 (and tp!877706 tp!877708))))

(declare-fun mapValue!17323 () List!32145)

(declare-fun mapRest!17324 () (Array (_ BitVec 32) List!32145))

(declare-fun mapKey!17324 () (_ BitVec 32))

(assert (=> mapNonEmpty!17324 (= (arr!6028 (_values!4080 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))) (store mapRest!17324 mapKey!17324 mapValue!17323))))

(assert (= (and start!268358 res!1159377) b!2774005))

(assert (= (and b!2774005 res!1159378) b!2773999))

(assert (= (and b!2773999 res!1159372) b!2773990))

(assert (= (and b!2773990 res!1159376) b!2773997))

(assert (= (and b!2773999 res!1159374) b!2774002))

(assert (= (and b!2774002 res!1159373) b!2773994))

(assert (= (and b!2773999 (not res!1159375)) b!2773995))

(assert (= (and b!2773998 condMapEmpty!17324) mapIsEmpty!17323))

(assert (= (and b!2773998 (not condMapEmpty!17324)) mapNonEmpty!17324))

(assert (= b!2773993 b!2773998))

(assert (= b!2774008 b!2773993))

(assert (= b!2774004 b!2774008))

(assert (= (and b!2773996 ((_ is LongMap!3799) (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))) b!2774004))

(assert (= b!2773987 b!2773996))

(assert (= (and b!2773989 ((_ is HashMap!3705) (cache!3848 cacheUp!820))) b!2773987))

(assert (= start!268358 b!2773989))

(assert (= (and b!2774000 condMapEmpty!17323) mapIsEmpty!17324))

(assert (= (and b!2774000 (not condMapEmpty!17323)) mapNonEmpty!17323))

(assert (= b!2773992 b!2774000))

(assert (= b!2774006 b!2773992))

(assert (= b!2774003 b!2774006))

(assert (= (and b!2773986 ((_ is LongMap!3798) (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))) b!2774003))

(assert (= b!2774001 b!2773986))

(assert (= (and b!2774007 ((_ is HashMap!3704) (cache!3847 cacheDown!939))) b!2774001))

(assert (= start!268358 b!2774007))

(assert (= (and start!268358 condSetEmpty!22977) setIsEmpty!22977))

(assert (= (and start!268358 (not condSetEmpty!22977)) setNonEmpty!22977))

(assert (= setNonEmpty!22977 b!2773991))

(assert (= start!268358 b!2773988))

(declare-fun m!3200637 () Bool)

(assert (=> start!268358 m!3200637))

(declare-fun m!3200639 () Bool)

(assert (=> start!268358 m!3200639))

(declare-fun m!3200641 () Bool)

(assert (=> start!268358 m!3200641))

(declare-fun m!3200643 () Bool)

(assert (=> start!268358 m!3200643))

(declare-fun m!3200645 () Bool)

(assert (=> b!2773992 m!3200645))

(declare-fun m!3200647 () Bool)

(assert (=> b!2773992 m!3200647))

(declare-fun m!3200649 () Bool)

(assert (=> b!2773995 m!3200649))

(declare-fun m!3200651 () Bool)

(assert (=> b!2773999 m!3200651))

(declare-fun m!3200653 () Bool)

(assert (=> b!2773999 m!3200653))

(declare-fun m!3200655 () Bool)

(assert (=> b!2773999 m!3200655))

(declare-fun m!3200657 () Bool)

(assert (=> b!2773999 m!3200657))

(declare-fun m!3200659 () Bool)

(assert (=> b!2773999 m!3200659))

(declare-fun m!3200661 () Bool)

(assert (=> b!2773999 m!3200661))

(declare-fun m!3200663 () Bool)

(assert (=> b!2773999 m!3200663))

(declare-fun m!3200665 () Bool)

(assert (=> b!2774005 m!3200665))

(declare-fun m!3200667 () Bool)

(assert (=> b!2773988 m!3200667))

(declare-fun m!3200669 () Bool)

(assert (=> b!2773997 m!3200669))

(declare-fun m!3200671 () Bool)

(assert (=> b!2773990 m!3200671))

(declare-fun m!3200673 () Bool)

(assert (=> b!2773993 m!3200673))

(declare-fun m!3200675 () Bool)

(assert (=> b!2773993 m!3200675))

(assert (=> b!2773994 m!3200669))

(declare-fun m!3200677 () Bool)

(assert (=> mapNonEmpty!17323 m!3200677))

(declare-fun m!3200679 () Bool)

(assert (=> setNonEmpty!22977 m!3200679))

(declare-fun m!3200681 () Bool)

(assert (=> b!2774002 m!3200681))

(declare-fun m!3200683 () Bool)

(assert (=> mapNonEmpty!17324 m!3200683))

(check-sat (not b!2773999) b_and!203067 (not b!2773994) (not b!2773998) (not b_next!79033) b_and!203069 (not b!2773993) b_and!203065 (not b!2773995) (not b_next!79031) (not b!2773992) b_and!203063 (not b!2773990) (not setNonEmpty!22977) (not b!2774002) (not b_next!79029) (not b!2773997) (not b!2773991) (not b!2774005) (not b!2774000) (not b!2773988) (not mapNonEmpty!17323) (not b_next!79035) (not start!268358) (not mapNonEmpty!17324))
(check-sat b_and!203067 (not b_next!79029) (not b_next!79033) b_and!203069 b_and!203065 (not b_next!79031) (not b_next!79035) b_and!203063)
(get-model)

(declare-fun d!806410 () Bool)

(assert (=> d!806410 (= (array_inv!4311 (_keys!4099 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))) (bvsge (size!24831 (_keys!4099 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2773993 d!806410))

(declare-fun d!806412 () Bool)

(assert (=> d!806412 (= (array_inv!4313 (_values!4080 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))) (bvsge (size!24833 (_values!4080 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2773993 d!806412))

(declare-fun call!181365 () Bool)

(declare-fun lt!988978 () List!32144)

(declare-fun c!450392 () Bool)

(declare-fun lt!988975 () List!32144)

(declare-fun bm!181352 () Bool)

(declare-fun lt!988970 () List!32144)

(declare-fun lt!988957 () List!32144)

(declare-fun isPrefix!2555 (List!32144 List!32144) Bool)

(assert (=> bm!181352 (= call!181365 (isPrefix!2555 (ite c!450392 lt!988975 lt!988978) (ite c!450392 lt!988957 lt!988970)))))

(declare-fun b!2774034 () Bool)

(declare-datatypes ((Unit!46194 0))(
  ( (Unit!46195) )
))
(declare-fun e!1749502 () Unit!46194)

(declare-fun Unit!46196 () Unit!46194)

(assert (=> b!2774034 (= e!1749502 Unit!46196)))

(declare-fun bm!181353 () Bool)

(declare-fun call!181357 () Unit!46194)

(declare-fun lemmaIsPrefixRefl!1679 (List!32144 List!32144) Unit!46194)

(assert (=> bm!181353 (= call!181357 (lemmaIsPrefixRefl!1679 (ite c!450392 lt!988975 lt!988978) (ite c!450392 lt!988957 lt!988970)))))

(declare-fun b!2774035 () Bool)

(declare-fun Unit!46197 () Unit!46194)

(assert (=> b!2774035 (= e!1749502 Unit!46197)))

(assert (=> b!2774035 (= lt!988978 (list!12090 input!5495))))

(assert (=> b!2774035 (= lt!988970 (list!12090 input!5495))))

(declare-fun lt!988967 () Unit!46194)

(assert (=> b!2774035 (= lt!988967 call!181357)))

(assert (=> b!2774035 call!181365))

(declare-fun lt!988977 () Unit!46194)

(assert (=> b!2774035 (= lt!988977 lt!988967)))

(declare-fun lt!988965 () List!32144)

(assert (=> b!2774035 (= lt!988965 (list!12090 input!5495))))

(declare-fun lt!988963 () Unit!46194)

(declare-fun call!181358 () Unit!46194)

(assert (=> b!2774035 (= lt!988963 call!181358)))

(assert (=> b!2774035 (= lt!988965 Nil!32044)))

(declare-fun lt!988987 () Unit!46194)

(assert (=> b!2774035 (= lt!988987 lt!988963)))

(assert (=> b!2774035 false))

(declare-fun bm!181354 () Bool)

(declare-fun c!450388 () Bool)

(assert (=> bm!181354 (= c!450388 c!450392)))

(declare-fun lt!988988 () List!32144)

(declare-fun e!1749500 () List!32144)

(declare-fun lemmaIsPrefixSameLengthThenSameList!461 (List!32144 List!32144 List!32144) Unit!46194)

(assert (=> bm!181354 (= call!181358 (lemmaIsPrefixSameLengthThenSameList!461 (ite c!450392 lt!988988 lt!988965) Nil!32044 e!1749500))))

(declare-fun bm!181355 () Bool)

(declare-fun call!181362 () C!16348)

(declare-fun apply!7508 (BalanceConc!19562 Int) C!16348)

(assert (=> bm!181355 (= call!181362 (apply!7508 input!5495 0))))

(declare-fun b!2774036 () Bool)

(declare-fun e!1749499 () Int)

(assert (=> b!2774036 (= e!1749499 0)))

(declare-fun call!181361 () Int)

(declare-fun call!181363 () (InoxSet Context!4626))

(declare-fun call!181366 () List!32144)

(declare-fun call!181364 () List!32144)

(declare-fun bm!181356 () Bool)

(assert (=> bm!181356 (= call!181361 (findLongestMatchInnerZipperFast!46 call!181363 call!181364 (+ 0 1) call!181366 input!5495 lt!988862))))

(declare-fun d!806414 () Bool)

(declare-fun lt!988976 () Int)

(declare-datatypes ((tuple2!32242 0))(
  ( (tuple2!32243 (_1!19027 List!32144) (_2!19027 List!32144)) )
))
(declare-fun findLongestMatchInnerZipper!25 ((InoxSet Context!4626) List!32144 Int List!32144 List!32144 Int) tuple2!32242)

(assert (=> d!806414 (= (size!24834 (_1!19027 (findLongestMatchInnerZipper!25 z!3597 Nil!32044 0 lt!988861 (list!12090 input!5495) lt!988862))) lt!988976)))

(assert (=> d!806414 (= lt!988976 e!1749499)))

(declare-fun c!450391 () Bool)

(declare-fun lostCauseZipper!441 ((InoxSet Context!4626)) Bool)

(assert (=> d!806414 (= c!450391 (lostCauseZipper!441 z!3597))))

(declare-fun lt!988980 () Unit!46194)

(declare-fun Unit!46198 () Unit!46194)

(assert (=> d!806414 (= lt!988980 Unit!46198)))

(declare-fun getSuffix!1237 (List!32144 List!32144) List!32144)

(assert (=> d!806414 (= (getSuffix!1237 (list!12090 input!5495) Nil!32044) lt!988861)))

(declare-fun lt!988955 () Unit!46194)

(declare-fun lt!988973 () Unit!46194)

(assert (=> d!806414 (= lt!988955 lt!988973)))

(declare-fun lt!988958 () List!32144)

(assert (=> d!806414 (= lt!988861 lt!988958)))

(declare-fun lemmaSamePrefixThenSameSuffix!1139 (List!32144 List!32144 List!32144 List!32144 List!32144) Unit!46194)

(assert (=> d!806414 (= lt!988973 (lemmaSamePrefixThenSameSuffix!1139 Nil!32044 lt!988861 Nil!32044 lt!988958 (list!12090 input!5495)))))

(assert (=> d!806414 (= lt!988958 (getSuffix!1237 (list!12090 input!5495) Nil!32044))))

(declare-fun lt!988949 () Unit!46194)

(declare-fun lt!988952 () Unit!46194)

(assert (=> d!806414 (= lt!988949 lt!988952)))

(assert (=> d!806414 (isPrefix!2555 Nil!32044 (++!7927 Nil!32044 lt!988861))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1665 (List!32144 List!32144) Unit!46194)

(assert (=> d!806414 (= lt!988952 (lemmaConcatTwoListThenFirstIsPrefix!1665 Nil!32044 lt!988861))))

(assert (=> d!806414 (= (++!7927 Nil!32044 lt!988861) (list!12090 input!5495))))

(assert (=> d!806414 (= (findLongestMatchInnerZipperFast!46 z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862) lt!988976)))

(declare-fun b!2774033 () Bool)

(declare-fun c!450390 () Bool)

(declare-fun call!181360 () Bool)

(assert (=> b!2774033 (= c!450390 call!181360)))

(declare-fun lt!988983 () Unit!46194)

(declare-fun lt!988953 () Unit!46194)

(assert (=> b!2774033 (= lt!988983 lt!988953)))

(assert (=> b!2774033 (= lt!988988 Nil!32044)))

(assert (=> b!2774033 (= lt!988953 call!181358)))

(declare-fun call!181359 () List!32144)

(assert (=> b!2774033 (= lt!988988 call!181359)))

(declare-fun lt!988990 () Unit!46194)

(declare-fun lt!988951 () Unit!46194)

(assert (=> b!2774033 (= lt!988990 lt!988951)))

(assert (=> b!2774033 call!181365))

(assert (=> b!2774033 (= lt!988951 call!181357)))

(assert (=> b!2774033 (= lt!988957 call!181359)))

(assert (=> b!2774033 (= lt!988975 call!181359)))

(declare-fun e!1749504 () Int)

(declare-fun e!1749501 () Int)

(assert (=> b!2774033 (= e!1749504 e!1749501)))

(declare-fun bm!181357 () Bool)

(assert (=> bm!181357 (= call!181364 (++!7927 Nil!32044 (Cons!32044 call!181362 Nil!32044)))))

(declare-fun b!2774037 () Bool)

(declare-fun c!450387 () Bool)

(assert (=> b!2774037 (= c!450387 call!181360)))

(declare-fun lt!988986 () Unit!46194)

(declare-fun lt!988968 () Unit!46194)

(assert (=> b!2774037 (= lt!988986 lt!988968)))

(declare-fun lt!988981 () C!16348)

(declare-fun lt!988964 () List!32144)

(declare-fun lt!988960 () List!32144)

(assert (=> b!2774037 (= (++!7927 (++!7927 Nil!32044 (Cons!32044 lt!988981 Nil!32044)) lt!988964) lt!988960)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!871 (List!32144 C!16348 List!32144 List!32144) Unit!46194)

(assert (=> b!2774037 (= lt!988968 (lemmaMoveElementToOtherListKeepsConcatEq!871 Nil!32044 lt!988981 lt!988964 lt!988960))))

(assert (=> b!2774037 (= lt!988960 (list!12090 input!5495))))

(declare-fun tail!4388 (List!32144) List!32144)

(assert (=> b!2774037 (= lt!988964 (tail!4388 lt!988861))))

(assert (=> b!2774037 (= lt!988981 (apply!7508 input!5495 0))))

(declare-fun lt!988966 () Unit!46194)

(declare-fun lt!988954 () Unit!46194)

(assert (=> b!2774037 (= lt!988966 lt!988954)))

(declare-fun lt!988974 () List!32144)

(declare-fun head!6150 (List!32144) C!16348)

(assert (=> b!2774037 (isPrefix!2555 (++!7927 Nil!32044 (Cons!32044 (head!6150 (getSuffix!1237 lt!988974 Nil!32044)) Nil!32044)) lt!988974)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!459 (List!32144 List!32144) Unit!46194)

(assert (=> b!2774037 (= lt!988954 (lemmaAddHeadSuffixToPrefixStillPrefix!459 Nil!32044 lt!988974))))

(assert (=> b!2774037 (= lt!988974 (list!12090 input!5495))))

(declare-fun lt!988989 () Unit!46194)

(assert (=> b!2774037 (= lt!988989 e!1749502)))

(declare-fun c!450389 () Bool)

(assert (=> b!2774037 (= c!450389 (= (size!24834 Nil!32044) (size!24835 input!5495)))))

(declare-fun lt!988962 () Unit!46194)

(declare-fun lt!988971 () Unit!46194)

(assert (=> b!2774037 (= lt!988962 lt!988971)))

(declare-fun lt!988961 () List!32144)

(assert (=> b!2774037 (<= (size!24834 Nil!32044) (size!24834 lt!988961))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!262 (List!32144 List!32144) Unit!46194)

(assert (=> b!2774037 (= lt!988971 (lemmaIsPrefixThenSmallerEqSize!262 Nil!32044 lt!988961))))

(assert (=> b!2774037 (= lt!988961 (list!12090 input!5495))))

(declare-fun lt!988972 () Unit!46194)

(declare-fun lt!988985 () Unit!46194)

(assert (=> b!2774037 (= lt!988972 lt!988985)))

(declare-fun lt!988950 () List!32144)

(declare-fun drop!1708 (List!32144 Int) List!32144)

(declare-fun apply!7509 (List!32144 Int) C!16348)

(assert (=> b!2774037 (= (head!6150 (drop!1708 lt!988950 0)) (apply!7509 lt!988950 0))))

(declare-fun lemmaDropApply!914 (List!32144 Int) Unit!46194)

(assert (=> b!2774037 (= lt!988985 (lemmaDropApply!914 lt!988950 0))))

(assert (=> b!2774037 (= lt!988950 (list!12090 input!5495))))

(declare-fun lt!988959 () Unit!46194)

(declare-fun lt!988982 () Unit!46194)

(assert (=> b!2774037 (= lt!988959 lt!988982)))

(declare-fun lt!988969 () List!32144)

(declare-fun lt!988979 () List!32144)

(assert (=> b!2774037 (and (= lt!988969 Nil!32044) (= lt!988979 lt!988861))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!340 (List!32144 List!32144 List!32144 List!32144) Unit!46194)

(assert (=> b!2774037 (= lt!988982 (lemmaConcatSameAndSameSizesThenSameLists!340 lt!988969 lt!988979 Nil!32044 lt!988861))))

(declare-datatypes ((tuple2!32244 0))(
  ( (tuple2!32245 (_1!19028 BalanceConc!19562) (_2!19028 BalanceConc!19562)) )
))
(declare-fun lt!988956 () tuple2!32244)

(assert (=> b!2774037 (= lt!988979 (list!12090 (_2!19028 lt!988956)))))

(assert (=> b!2774037 (= lt!988969 call!181359)))

(declare-fun splitAt!117 (BalanceConc!19562 Int) tuple2!32244)

(assert (=> b!2774037 (= lt!988956 (splitAt!117 input!5495 0))))

(declare-fun e!1749503 () Int)

(assert (=> b!2774037 (= e!1749504 e!1749503)))

(declare-fun b!2774038 () Bool)

(assert (=> b!2774038 (= e!1749500 call!181359)))

(declare-fun bm!181358 () Bool)

(declare-fun derivationStepZipper!368 ((InoxSet Context!4626) C!16348) (InoxSet Context!4626))

(assert (=> bm!181358 (= call!181363 (derivationStepZipper!368 z!3597 call!181362))))

(declare-fun b!2774039 () Bool)

(assert (=> b!2774039 (= e!1749501 0)))

(declare-fun b!2774040 () Bool)

(assert (=> b!2774040 (= e!1749501 0)))

(declare-fun bm!181359 () Bool)

(declare-fun nullableZipper!634 ((InoxSet Context!4626)) Bool)

(assert (=> bm!181359 (= call!181360 (nullableZipper!634 z!3597))))

(declare-fun b!2774041 () Bool)

(assert (=> b!2774041 (= e!1749503 call!181361)))

(declare-fun bm!181360 () Bool)

(assert (=> bm!181360 (= call!181359 (list!12090 (ite c!450392 input!5495 (_1!19028 lt!988956))))))

(declare-fun bm!181361 () Bool)

(assert (=> bm!181361 (= call!181366 (tail!4388 lt!988861))))

(declare-fun b!2774042 () Bool)

(assert (=> b!2774042 (= e!1749499 e!1749504)))

(assert (=> b!2774042 (= c!450392 (= 0 lt!988862))))

(declare-fun b!2774043 () Bool)

(assert (=> b!2774043 (= e!1749500 (list!12090 input!5495))))

(declare-fun b!2774044 () Bool)

(declare-fun lt!988984 () Int)

(assert (=> b!2774044 (= e!1749503 (ite (= lt!988984 0) 0 lt!988984))))

(assert (=> b!2774044 (= lt!988984 call!181361)))

(assert (= (and d!806414 c!450391) b!2774036))

(assert (= (and d!806414 (not c!450391)) b!2774042))

(assert (= (and b!2774042 c!450392) b!2774033))

(assert (= (and b!2774042 (not c!450392)) b!2774037))

(assert (= (and b!2774033 c!450390) b!2774039))

(assert (= (and b!2774033 (not c!450390)) b!2774040))

(assert (= (and b!2774037 c!450389) b!2774035))

(assert (= (and b!2774037 (not c!450389)) b!2774034))

(assert (= (and b!2774037 c!450387) b!2774044))

(assert (= (and b!2774037 (not c!450387)) b!2774041))

(assert (= (or b!2774044 b!2774041) bm!181355))

(assert (= (or b!2774044 b!2774041) bm!181361))

(assert (= (or b!2774044 b!2774041) bm!181357))

(assert (= (or b!2774044 b!2774041) bm!181358))

(assert (= (or b!2774044 b!2774041) bm!181356))

(assert (= (or b!2774033 b!2774035) bm!181352))

(assert (= (or b!2774033 b!2774037) bm!181359))

(assert (= (or b!2774033 b!2774035) bm!181353))

(assert (= (or b!2774033 b!2774037) bm!181360))

(assert (= (or b!2774033 b!2774035) bm!181354))

(assert (= (and bm!181354 c!450388) b!2774038))

(assert (= (and bm!181354 (not c!450388)) b!2774043))

(declare-fun m!3200685 () Bool)

(assert (=> bm!181359 m!3200685))

(assert (=> d!806414 m!3200661))

(declare-fun m!3200687 () Bool)

(assert (=> d!806414 m!3200687))

(assert (=> d!806414 m!3200663))

(declare-fun m!3200689 () Bool)

(assert (=> d!806414 m!3200689))

(declare-fun m!3200691 () Bool)

(assert (=> d!806414 m!3200691))

(assert (=> d!806414 m!3200663))

(assert (=> d!806414 m!3200661))

(declare-fun m!3200693 () Bool)

(assert (=> d!806414 m!3200693))

(assert (=> d!806414 m!3200661))

(declare-fun m!3200695 () Bool)

(assert (=> d!806414 m!3200695))

(assert (=> d!806414 m!3200661))

(declare-fun m!3200697 () Bool)

(assert (=> d!806414 m!3200697))

(declare-fun m!3200699 () Bool)

(assert (=> d!806414 m!3200699))

(declare-fun m!3200701 () Bool)

(assert (=> bm!181354 m!3200701))

(declare-fun m!3200703 () Bool)

(assert (=> bm!181357 m!3200703))

(assert (=> b!2774035 m!3200661))

(assert (=> b!2774037 m!3200661))

(declare-fun m!3200705 () Bool)

(assert (=> b!2774037 m!3200705))

(assert (=> b!2774037 m!3200653))

(declare-fun m!3200707 () Bool)

(assert (=> b!2774037 m!3200707))

(declare-fun m!3200709 () Bool)

(assert (=> b!2774037 m!3200709))

(declare-fun m!3200711 () Bool)

(assert (=> b!2774037 m!3200711))

(declare-fun m!3200713 () Bool)

(assert (=> b!2774037 m!3200713))

(declare-fun m!3200715 () Bool)

(assert (=> b!2774037 m!3200715))

(declare-fun m!3200717 () Bool)

(assert (=> b!2774037 m!3200717))

(declare-fun m!3200719 () Bool)

(assert (=> b!2774037 m!3200719))

(assert (=> b!2774037 m!3200711))

(declare-fun m!3200721 () Bool)

(assert (=> b!2774037 m!3200721))

(assert (=> b!2774037 m!3200713))

(declare-fun m!3200723 () Bool)

(assert (=> b!2774037 m!3200723))

(declare-fun m!3200725 () Bool)

(assert (=> b!2774037 m!3200725))

(declare-fun m!3200727 () Bool)

(assert (=> b!2774037 m!3200727))

(declare-fun m!3200729 () Bool)

(assert (=> b!2774037 m!3200729))

(assert (=> b!2774037 m!3200649))

(assert (=> b!2774037 m!3200717))

(declare-fun m!3200731 () Bool)

(assert (=> b!2774037 m!3200731))

(declare-fun m!3200733 () Bool)

(assert (=> b!2774037 m!3200733))

(declare-fun m!3200735 () Bool)

(assert (=> b!2774037 m!3200735))

(declare-fun m!3200737 () Bool)

(assert (=> b!2774037 m!3200737))

(declare-fun m!3200739 () Bool)

(assert (=> b!2774037 m!3200739))

(assert (=> b!2774037 m!3200709))

(declare-fun m!3200741 () Bool)

(assert (=> b!2774037 m!3200741))

(declare-fun m!3200743 () Bool)

(assert (=> bm!181353 m!3200743))

(declare-fun m!3200745 () Bool)

(assert (=> bm!181358 m!3200745))

(assert (=> bm!181361 m!3200737))

(assert (=> b!2774043 m!3200661))

(declare-fun m!3200747 () Bool)

(assert (=> bm!181352 m!3200747))

(declare-fun m!3200749 () Bool)

(assert (=> bm!181356 m!3200749))

(assert (=> bm!181355 m!3200735))

(declare-fun m!3200751 () Bool)

(assert (=> bm!181360 m!3200751))

(assert (=> b!2773994 d!806414))

(declare-fun d!806416 () Bool)

(declare-fun validCacheMapDown!399 (MutableMap!3704) Bool)

(assert (=> d!806416 (= (valid!2965 (_3!2905 lt!988859)) (validCacheMapDown!399 (cache!3847 (_3!2905 lt!988859))))))

(declare-fun bs!505250 () Bool)

(assert (= bs!505250 d!806416))

(declare-fun m!3200753 () Bool)

(assert (=> bs!505250 m!3200753))

(assert (=> b!2774002 d!806416))

(declare-fun d!806418 () Bool)

(assert (=> d!806418 (= (array_inv!4311 (_keys!4098 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))) (bvsge (size!24831 (_keys!4098 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2773992 d!806418))

(declare-fun d!806420 () Bool)

(assert (=> d!806420 (= (array_inv!4312 (_values!4079 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))) (bvsge (size!24832 (_values!4079 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2773992 d!806420))

(declare-fun d!806422 () Bool)

(declare-fun validCacheMapUp!368 (MutableMap!3705) Bool)

(assert (=> d!806422 (= (valid!2966 cacheUp!820) (validCacheMapUp!368 (cache!3848 cacheUp!820)))))

(declare-fun bs!505251 () Bool)

(assert (= bs!505251 d!806422))

(declare-fun m!3200755 () Bool)

(assert (=> bs!505251 m!3200755))

(assert (=> start!268358 d!806422))

(declare-fun d!806424 () Bool)

(declare-fun res!1159381 () Bool)

(declare-fun e!1749507 () Bool)

(assert (=> d!806424 (=> (not res!1159381) (not e!1749507))))

(assert (=> d!806424 (= res!1159381 ((_ is HashMap!3705) (cache!3848 cacheUp!820)))))

(assert (=> d!806424 (= (inv!43520 cacheUp!820) e!1749507)))

(declare-fun b!2774047 () Bool)

(assert (=> b!2774047 (= e!1749507 (validCacheMapUp!368 (cache!3848 cacheUp!820)))))

(assert (= (and d!806424 res!1159381) b!2774047))

(assert (=> b!2774047 m!3200755))

(assert (=> start!268358 d!806424))

(declare-fun d!806426 () Bool)

(declare-fun res!1159384 () Bool)

(declare-fun e!1749510 () Bool)

(assert (=> d!806426 (=> (not res!1159384) (not e!1749510))))

(assert (=> d!806426 (= res!1159384 ((_ is HashMap!3704) (cache!3847 cacheDown!939)))))

(assert (=> d!806426 (= (inv!43521 cacheDown!939) e!1749510)))

(declare-fun b!2774050 () Bool)

(assert (=> b!2774050 (= e!1749510 (validCacheMapDown!399 (cache!3847 cacheDown!939)))))

(assert (= (and d!806426 res!1159384) b!2774050))

(declare-fun m!3200757 () Bool)

(assert (=> b!2774050 m!3200757))

(assert (=> start!268358 d!806426))

(declare-fun d!806428 () Bool)

(declare-fun isBalanced!3043 (Conc!9974) Bool)

(assert (=> d!806428 (= (inv!43522 input!5495) (isBalanced!3043 (c!450374 input!5495)))))

(declare-fun bs!505252 () Bool)

(assert (= bs!505252 d!806428))

(declare-fun m!3200759 () Bool)

(assert (=> bs!505252 m!3200759))

(assert (=> start!268358 d!806428))

(declare-fun d!806430 () Bool)

(declare-fun c!450395 () Bool)

(assert (=> d!806430 (= c!450395 ((_ is Node!9974) (c!450374 input!5495)))))

(declare-fun e!1749515 () Bool)

(assert (=> d!806430 (= (inv!43519 (c!450374 input!5495)) e!1749515)))

(declare-fun b!2774057 () Bool)

(declare-fun inv!43523 (Conc!9974) Bool)

(assert (=> b!2774057 (= e!1749515 (inv!43523 (c!450374 input!5495)))))

(declare-fun b!2774058 () Bool)

(declare-fun e!1749516 () Bool)

(assert (=> b!2774058 (= e!1749515 e!1749516)))

(declare-fun res!1159387 () Bool)

(assert (=> b!2774058 (= res!1159387 (not ((_ is Leaf!15190) (c!450374 input!5495))))))

(assert (=> b!2774058 (=> res!1159387 e!1749516)))

(declare-fun b!2774059 () Bool)

(declare-fun inv!43524 (Conc!9974) Bool)

(assert (=> b!2774059 (= e!1749516 (inv!43524 (c!450374 input!5495)))))

(assert (= (and d!806430 c!450395) b!2774057))

(assert (= (and d!806430 (not c!450395)) b!2774058))

(assert (= (and b!2774058 (not res!1159387)) b!2774059))

(declare-fun m!3200761 () Bool)

(assert (=> b!2774057 m!3200761))

(declare-fun m!3200763 () Bool)

(assert (=> b!2774059 m!3200763))

(assert (=> b!2773988 d!806430))

(declare-fun d!806432 () Bool)

(assert (=> d!806432 (= (valid!2965 (_3!2905 lt!988860)) (validCacheMapDown!399 (cache!3847 (_3!2905 lt!988860))))))

(declare-fun bs!505253 () Bool)

(assert (= bs!505253 d!806432))

(declare-fun m!3200765 () Bool)

(assert (=> bs!505253 m!3200765))

(assert (=> b!2773990 d!806432))

(declare-fun d!806434 () Bool)

(assert (=> d!806434 (= (valid!2966 (_2!19026 lt!988859)) (validCacheMapUp!368 (cache!3848 (_2!19026 lt!988859))))))

(declare-fun bs!505254 () Bool)

(assert (= bs!505254 d!806434))

(declare-fun m!3200767 () Bool)

(assert (=> bs!505254 m!3200767))

(assert (=> b!2773999 d!806434))

(declare-fun d!806436 () Bool)

(assert (=> d!806436 (= (valid!2966 (_2!19026 lt!988860)) (validCacheMapUp!368 (cache!3848 (_2!19026 lt!988860))))))

(declare-fun bs!505255 () Bool)

(assert (= bs!505255 d!806436))

(declare-fun m!3200769 () Bool)

(assert (=> bs!505255 m!3200769))

(assert (=> b!2773999 d!806436))

(declare-fun d!806438 () Bool)

(declare-fun list!12091 (Conc!9974) List!32144)

(assert (=> d!806438 (= (list!12090 input!5495) (list!12091 (c!450374 input!5495)))))

(declare-fun bs!505256 () Bool)

(assert (= bs!505256 d!806438))

(declare-fun m!3200771 () Bool)

(assert (=> bs!505256 m!3200771))

(assert (=> b!2773999 d!806438))

(declare-fun d!806440 () Bool)

(declare-fun lt!988993 () Int)

(assert (=> d!806440 (= lt!988993 (size!24834 (list!12090 input!5495)))))

(declare-fun size!24836 (Conc!9974) Int)

(assert (=> d!806440 (= lt!988993 (size!24836 (c!450374 input!5495)))))

(assert (=> d!806440 (= (size!24835 input!5495) lt!988993)))

(declare-fun bs!505257 () Bool)

(assert (= bs!505257 d!806440))

(assert (=> bs!505257 m!3200661))

(assert (=> bs!505257 m!3200661))

(declare-fun m!3200773 () Bool)

(assert (=> bs!505257 m!3200773))

(declare-fun m!3200775 () Bool)

(assert (=> bs!505257 m!3200775))

(assert (=> b!2773999 d!806440))

(declare-fun d!806442 () Bool)

(declare-fun e!1749519 () Bool)

(assert (=> d!806442 e!1749519))

(declare-fun res!1159392 () Bool)

(assert (=> d!806442 (=> (not res!1159392) (not e!1749519))))

(declare-fun lt!988996 () tuple3!4870)

(assert (=> d!806442 (= res!1159392 (valid!2966 (_2!19026 lt!988996)))))

(declare-fun choose!16270 (CacheUp!2410 CacheDown!2530 (InoxSet Context!4626) List!32144 Int List!32144 BalanceConc!19562 Int) tuple3!4870)

(assert (=> d!806442 (= lt!988996 (choose!16270 (_2!19026 lt!988860) (_3!2905 lt!988860) z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862))))

(assert (=> d!806442 (= (++!7927 Nil!32044 lt!988861) (list!12090 input!5495))))

(assert (=> d!806442 (= (findLongestMatchInnerZipperFastMem!40 (_2!19026 lt!988860) (_3!2905 lt!988860) z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862) lt!988996)))

(declare-fun b!2774064 () Bool)

(declare-fun res!1159393 () Bool)

(assert (=> b!2774064 (=> (not res!1159393) (not e!1749519))))

(assert (=> b!2774064 (= res!1159393 (valid!2965 (_3!2905 lt!988996)))))

(declare-fun b!2774065 () Bool)

(assert (=> b!2774065 (= e!1749519 (= (_1!19026 lt!988996) (findLongestMatchInnerZipperFast!46 z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862)))))

(assert (= (and d!806442 res!1159392) b!2774064))

(assert (= (and b!2774064 res!1159393) b!2774065))

(declare-fun m!3200777 () Bool)

(assert (=> d!806442 m!3200777))

(declare-fun m!3200779 () Bool)

(assert (=> d!806442 m!3200779))

(assert (=> d!806442 m!3200663))

(assert (=> d!806442 m!3200661))

(declare-fun m!3200781 () Bool)

(assert (=> b!2774064 m!3200781))

(assert (=> b!2774065 m!3200669))

(assert (=> b!2773999 d!806442))

(declare-fun d!806444 () Bool)

(declare-fun e!1749520 () Bool)

(assert (=> d!806444 e!1749520))

(declare-fun res!1159394 () Bool)

(assert (=> d!806444 (=> (not res!1159394) (not e!1749520))))

(declare-fun lt!988997 () tuple3!4870)

(assert (=> d!806444 (= res!1159394 (valid!2966 (_2!19026 lt!988997)))))

(assert (=> d!806444 (= lt!988997 (choose!16270 cacheUp!820 cacheDown!939 z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862))))

(assert (=> d!806444 (= (++!7927 Nil!32044 lt!988861) (list!12090 input!5495))))

(assert (=> d!806444 (= (findLongestMatchInnerZipperFastMem!40 cacheUp!820 cacheDown!939 z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862) lt!988997)))

(declare-fun b!2774066 () Bool)

(declare-fun res!1159395 () Bool)

(assert (=> b!2774066 (=> (not res!1159395) (not e!1749520))))

(assert (=> b!2774066 (= res!1159395 (valid!2965 (_3!2905 lt!988997)))))

(declare-fun b!2774067 () Bool)

(assert (=> b!2774067 (= e!1749520 (= (_1!19026 lt!988997) (findLongestMatchInnerZipperFast!46 z!3597 Nil!32044 0 lt!988861 input!5495 lt!988862)))))

(assert (= (and d!806444 res!1159394) b!2774066))

(assert (= (and b!2774066 res!1159395) b!2774067))

(declare-fun m!3200783 () Bool)

(assert (=> d!806444 m!3200783))

(declare-fun m!3200785 () Bool)

(assert (=> d!806444 m!3200785))

(assert (=> d!806444 m!3200663))

(assert (=> d!806444 m!3200661))

(declare-fun m!3200787 () Bool)

(assert (=> b!2774066 m!3200787))

(assert (=> b!2774067 m!3200669))

(assert (=> b!2773999 d!806444))

(declare-fun b!2774078 () Bool)

(declare-fun res!1159401 () Bool)

(declare-fun e!1749525 () Bool)

(assert (=> b!2774078 (=> (not res!1159401) (not e!1749525))))

(declare-fun lt!989000 () List!32144)

(assert (=> b!2774078 (= res!1159401 (= (size!24834 lt!989000) (+ (size!24834 Nil!32044) (size!24834 lt!988861))))))

(declare-fun d!806446 () Bool)

(assert (=> d!806446 e!1749525))

(declare-fun res!1159400 () Bool)

(assert (=> d!806446 (=> (not res!1159400) (not e!1749525))))

(declare-fun content!4507 (List!32144) (InoxSet C!16348))

(assert (=> d!806446 (= res!1159400 (= (content!4507 lt!989000) ((_ map or) (content!4507 Nil!32044) (content!4507 lt!988861))))))

(declare-fun e!1749526 () List!32144)

(assert (=> d!806446 (= lt!989000 e!1749526)))

(declare-fun c!450398 () Bool)

(assert (=> d!806446 (= c!450398 ((_ is Nil!32044) Nil!32044))))

(assert (=> d!806446 (= (++!7927 Nil!32044 lt!988861) lt!989000)))

(declare-fun b!2774077 () Bool)

(assert (=> b!2774077 (= e!1749526 (Cons!32044 (h!37464 Nil!32044) (++!7927 (t!228272 Nil!32044) lt!988861)))))

(declare-fun b!2774076 () Bool)

(assert (=> b!2774076 (= e!1749526 lt!988861)))

(declare-fun b!2774079 () Bool)

(assert (=> b!2774079 (= e!1749525 (or (not (= lt!988861 Nil!32044)) (= lt!989000 Nil!32044)))))

(assert (= (and d!806446 c!450398) b!2774076))

(assert (= (and d!806446 (not c!450398)) b!2774077))

(assert (= (and d!806446 res!1159400) b!2774078))

(assert (= (and b!2774078 res!1159401) b!2774079))

(declare-fun m!3200789 () Bool)

(assert (=> b!2774078 m!3200789))

(assert (=> b!2774078 m!3200649))

(declare-fun m!3200791 () Bool)

(assert (=> b!2774078 m!3200791))

(declare-fun m!3200793 () Bool)

(assert (=> d!806446 m!3200793))

(declare-fun m!3200795 () Bool)

(assert (=> d!806446 m!3200795))

(declare-fun m!3200797 () Bool)

(assert (=> d!806446 m!3200797))

(declare-fun m!3200799 () Bool)

(assert (=> b!2774077 m!3200799))

(assert (=> b!2773999 d!806446))

(declare-fun d!806448 () Bool)

(declare-fun lambda!101796 () Int)

(declare-fun forall!6630 (List!32142 Int) Bool)

(assert (=> d!806448 (= (inv!43518 setElem!22977) (forall!6630 (exprs!2813 setElem!22977) lambda!101796))))

(declare-fun bs!505258 () Bool)

(assert (= bs!505258 d!806448))

(declare-fun m!3200801 () Bool)

(assert (=> bs!505258 m!3200801))

(assert (=> setNonEmpty!22977 d!806448))

(declare-fun d!806450 () Bool)

(assert (=> d!806450 (= (valid!2965 cacheDown!939) (validCacheMapDown!399 (cache!3847 cacheDown!939)))))

(declare-fun bs!505259 () Bool)

(assert (= bs!505259 d!806450))

(assert (=> bs!505259 m!3200757))

(assert (=> b!2774005 d!806450))

(declare-fun d!806452 () Bool)

(declare-fun lt!989003 () Int)

(assert (=> d!806452 (>= lt!989003 0)))

(declare-fun e!1749529 () Int)

(assert (=> d!806452 (= lt!989003 e!1749529)))

(declare-fun c!450401 () Bool)

(assert (=> d!806452 (= c!450401 ((_ is Nil!32044) Nil!32044))))

(assert (=> d!806452 (= (size!24834 Nil!32044) lt!989003)))

(declare-fun b!2774084 () Bool)

(assert (=> b!2774084 (= e!1749529 0)))

(declare-fun b!2774085 () Bool)

(assert (=> b!2774085 (= e!1749529 (+ 1 (size!24834 (t!228272 Nil!32044))))))

(assert (= (and d!806452 c!450401) b!2774084))

(assert (= (and d!806452 (not c!450401)) b!2774085))

(declare-fun m!3200803 () Bool)

(assert (=> b!2774085 m!3200803))

(assert (=> b!2773995 d!806452))

(assert (=> b!2773997 d!806414))

(declare-fun setIsEmpty!22980 () Bool)

(declare-fun setRes!22980 () Bool)

(assert (=> setIsEmpty!22980 setRes!22980))

(declare-fun e!1749537 () Bool)

(assert (=> b!2773998 (= tp!877705 e!1749537)))

(declare-fun b!2774094 () Bool)

(declare-fun e!1749536 () Bool)

(declare-fun tp!877729 () Bool)

(assert (=> b!2774094 (= e!1749536 tp!877729)))

(declare-fun tp!877730 () Bool)

(declare-fun tp_is_empty!14021 () Bool)

(declare-fun b!2774095 () Bool)

(assert (=> b!2774095 (= e!1749537 (and (inv!43518 (_1!19024 (_1!19025 (h!37465 mapDefault!17324)))) e!1749536 tp_is_empty!14021 setRes!22980 tp!877730))))

(declare-fun condSetEmpty!22980 () Bool)

(assert (=> b!2774095 (= condSetEmpty!22980 (= (_2!19025 (h!37465 mapDefault!17324)) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setNonEmpty!22980 () Bool)

(declare-fun e!1749538 () Bool)

(declare-fun tp!877728 () Bool)

(declare-fun setElem!22980 () Context!4626)

(assert (=> setNonEmpty!22980 (= setRes!22980 (and tp!877728 (inv!43518 setElem!22980) e!1749538))))

(declare-fun setRest!22980 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22980 (= (_2!19025 (h!37465 mapDefault!17324)) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22980 true) setRest!22980))))

(declare-fun b!2774096 () Bool)

(declare-fun tp!877731 () Bool)

(assert (=> b!2774096 (= e!1749538 tp!877731)))

(assert (= b!2774095 b!2774094))

(assert (= (and b!2774095 condSetEmpty!22980) setIsEmpty!22980))

(assert (= (and b!2774095 (not condSetEmpty!22980)) setNonEmpty!22980))

(assert (= setNonEmpty!22980 b!2774096))

(assert (= (and b!2773998 ((_ is Cons!32045) mapDefault!17324)) b!2774095))

(declare-fun m!3200805 () Bool)

(assert (=> b!2774095 m!3200805))

(declare-fun m!3200807 () Bool)

(assert (=> setNonEmpty!22980 m!3200807))

(declare-fun tp!877739 () Bool)

(declare-fun e!1749544 () Bool)

(declare-fun tp!877740 () Bool)

(declare-fun b!2774105 () Bool)

(assert (=> b!2774105 (= e!1749544 (and (inv!43519 (left!24407 (c!450374 input!5495))) tp!877740 (inv!43519 (right!24737 (c!450374 input!5495))) tp!877739))))

(declare-fun b!2774107 () Bool)

(declare-fun e!1749543 () Bool)

(declare-fun tp!877738 () Bool)

(assert (=> b!2774107 (= e!1749543 tp!877738)))

(declare-fun b!2774106 () Bool)

(declare-fun inv!43525 (IArray!19953) Bool)

(assert (=> b!2774106 (= e!1749544 (and (inv!43525 (xs!13084 (c!450374 input!5495))) e!1749543))))

(assert (=> b!2773988 (= tp!877716 (and (inv!43519 (c!450374 input!5495)) e!1749544))))

(assert (= (and b!2773988 ((_ is Node!9974) (c!450374 input!5495))) b!2774105))

(assert (= b!2774106 b!2774107))

(assert (= (and b!2773988 ((_ is Leaf!15190) (c!450374 input!5495))) b!2774106))

(declare-fun m!3200809 () Bool)

(assert (=> b!2774105 m!3200809))

(declare-fun m!3200811 () Bool)

(assert (=> b!2774105 m!3200811))

(declare-fun m!3200813 () Bool)

(assert (=> b!2774106 m!3200813))

(assert (=> b!2773988 m!3200667))

(declare-fun setIsEmpty!22981 () Bool)

(declare-fun setRes!22981 () Bool)

(assert (=> setIsEmpty!22981 setRes!22981))

(declare-fun e!1749546 () Bool)

(assert (=> b!2773993 (= tp!877707 e!1749546)))

(declare-fun b!2774108 () Bool)

(declare-fun e!1749545 () Bool)

(declare-fun tp!877742 () Bool)

(assert (=> b!2774108 (= e!1749545 tp!877742)))

(declare-fun b!2774109 () Bool)

(declare-fun tp!877743 () Bool)

(assert (=> b!2774109 (= e!1749546 (and (inv!43518 (_1!19024 (_1!19025 (h!37465 (zeroValue!4058 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820)))))))))) e!1749545 tp_is_empty!14021 setRes!22981 tp!877743))))

(declare-fun condSetEmpty!22981 () Bool)

(assert (=> b!2774109 (= condSetEmpty!22981 (= (_2!19025 (h!37465 (zeroValue!4058 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820)))))))) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun e!1749547 () Bool)

(declare-fun tp!877741 () Bool)

(declare-fun setNonEmpty!22981 () Bool)

(declare-fun setElem!22981 () Context!4626)

(assert (=> setNonEmpty!22981 (= setRes!22981 (and tp!877741 (inv!43518 setElem!22981) e!1749547))))

(declare-fun setRest!22981 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22981 (= (_2!19025 (h!37465 (zeroValue!4058 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22981 true) setRest!22981))))

(declare-fun b!2774110 () Bool)

(declare-fun tp!877744 () Bool)

(assert (=> b!2774110 (= e!1749547 tp!877744)))

(assert (= b!2774109 b!2774108))

(assert (= (and b!2774109 condSetEmpty!22981) setIsEmpty!22981))

(assert (= (and b!2774109 (not condSetEmpty!22981)) setNonEmpty!22981))

(assert (= setNonEmpty!22981 b!2774110))

(assert (= (and b!2773993 ((_ is Cons!32045) (zeroValue!4058 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820)))))))) b!2774109))

(declare-fun m!3200815 () Bool)

(assert (=> b!2774109 m!3200815))

(declare-fun m!3200817 () Bool)

(assert (=> setNonEmpty!22981 m!3200817))

(declare-fun setIsEmpty!22982 () Bool)

(declare-fun setRes!22982 () Bool)

(assert (=> setIsEmpty!22982 setRes!22982))

(declare-fun e!1749549 () Bool)

(assert (=> b!2773993 (= tp!877704 e!1749549)))

(declare-fun b!2774111 () Bool)

(declare-fun e!1749548 () Bool)

(declare-fun tp!877746 () Bool)

(assert (=> b!2774111 (= e!1749548 tp!877746)))

(declare-fun tp!877747 () Bool)

(declare-fun b!2774112 () Bool)

(assert (=> b!2774112 (= e!1749549 (and (inv!43518 (_1!19024 (_1!19025 (h!37465 (minValue!4058 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820)))))))))) e!1749548 tp_is_empty!14021 setRes!22982 tp!877747))))

(declare-fun condSetEmpty!22982 () Bool)

(assert (=> b!2774112 (= condSetEmpty!22982 (= (_2!19025 (h!37465 (minValue!4058 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820)))))))) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setElem!22982 () Context!4626)

(declare-fun setNonEmpty!22982 () Bool)

(declare-fun e!1749550 () Bool)

(declare-fun tp!877745 () Bool)

(assert (=> setNonEmpty!22982 (= setRes!22982 (and tp!877745 (inv!43518 setElem!22982) e!1749550))))

(declare-fun setRest!22982 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22982 (= (_2!19025 (h!37465 (minValue!4058 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22982 true) setRest!22982))))

(declare-fun b!2774113 () Bool)

(declare-fun tp!877748 () Bool)

(assert (=> b!2774113 (= e!1749550 tp!877748)))

(assert (= b!2774112 b!2774111))

(assert (= (and b!2774112 condSetEmpty!22982) setIsEmpty!22982))

(assert (= (and b!2774112 (not condSetEmpty!22982)) setNonEmpty!22982))

(assert (= setNonEmpty!22982 b!2774113))

(assert (= (and b!2773993 ((_ is Cons!32045) (minValue!4058 (v!33654 (underlying!7801 (v!33655 (underlying!7802 (cache!3848 cacheUp!820)))))))) b!2774112))

(declare-fun m!3200819 () Bool)

(assert (=> b!2774112 m!3200819))

(declare-fun m!3200821 () Bool)

(assert (=> setNonEmpty!22982 m!3200821))

(declare-fun b!2774128 () Bool)

(declare-fun e!1749564 () Bool)

(declare-fun tp!877772 () Bool)

(assert (=> b!2774128 (= e!1749564 tp!877772)))

(declare-fun e!1749568 () Bool)

(declare-fun b!2774129 () Bool)

(declare-fun setRes!22988 () Bool)

(declare-fun tp!877775 () Bool)

(declare-fun tp!877779 () Bool)

(declare-fun e!1749567 () Bool)

(declare-fun mapDefault!17327 () List!32143)

(assert (=> b!2774129 (= e!1749568 (and tp!877775 (inv!43518 (_2!19022 (_1!19023 (h!37463 mapDefault!17327)))) e!1749567 tp_is_empty!14021 setRes!22988 tp!877779))))

(declare-fun condSetEmpty!22987 () Bool)

(assert (=> b!2774129 (= condSetEmpty!22987 (= (_2!19023 (h!37463 mapDefault!17327)) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setNonEmpty!22987 () Bool)

(declare-fun e!1749566 () Bool)

(declare-fun tp!877776 () Bool)

(declare-fun setElem!22988 () Context!4626)

(declare-fun setRes!22987 () Bool)

(assert (=> setNonEmpty!22987 (= setRes!22987 (and tp!877776 (inv!43518 setElem!22988) e!1749566))))

(declare-fun mapValue!17327 () List!32143)

(declare-fun setRest!22988 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22987 (= (_2!19023 (h!37463 mapValue!17327)) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22988 true) setRest!22988))))

(declare-fun setIsEmpty!22987 () Bool)

(assert (=> setIsEmpty!22987 setRes!22988))

(declare-fun mapIsEmpty!17327 () Bool)

(declare-fun mapRes!17327 () Bool)

(assert (=> mapIsEmpty!17327 mapRes!17327))

(declare-fun condMapEmpty!17327 () Bool)

(assert (=> mapNonEmpty!17323 (= condMapEmpty!17327 (= mapRest!17323 ((as const (Array (_ BitVec 32) List!32143)) mapDefault!17327)))))

(assert (=> mapNonEmpty!17323 (= tp!877717 (and e!1749568 mapRes!17327))))

(declare-fun b!2774130 () Bool)

(declare-fun e!1749565 () Bool)

(declare-fun tp!877773 () Bool)

(assert (=> b!2774130 (= e!1749565 tp!877773)))

(declare-fun mapNonEmpty!17327 () Bool)

(declare-fun tp!877780 () Bool)

(declare-fun e!1749563 () Bool)

(assert (=> mapNonEmpty!17327 (= mapRes!17327 (and tp!877780 e!1749563))))

(declare-fun mapRest!17327 () (Array (_ BitVec 32) List!32143))

(declare-fun mapKey!17327 () (_ BitVec 32))

(assert (=> mapNonEmpty!17327 (= mapRest!17323 (store mapRest!17327 mapKey!17327 mapValue!17327))))

(declare-fun setIsEmpty!22988 () Bool)

(assert (=> setIsEmpty!22988 setRes!22987))

(declare-fun b!2774131 () Bool)

(declare-fun tp!877774 () Bool)

(assert (=> b!2774131 (= e!1749566 tp!877774)))

(declare-fun b!2774132 () Bool)

(declare-fun tp!877778 () Bool)

(declare-fun tp!877771 () Bool)

(assert (=> b!2774132 (= e!1749563 (and tp!877771 (inv!43518 (_2!19022 (_1!19023 (h!37463 mapValue!17327)))) e!1749564 tp_is_empty!14021 setRes!22987 tp!877778))))

(declare-fun condSetEmpty!22988 () Bool)

(assert (=> b!2774132 (= condSetEmpty!22988 (= (_2!19023 (h!37463 mapValue!17327)) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setNonEmpty!22988 () Bool)

(declare-fun tp!877777 () Bool)

(declare-fun setElem!22987 () Context!4626)

(assert (=> setNonEmpty!22988 (= setRes!22988 (and tp!877777 (inv!43518 setElem!22987) e!1749565))))

(declare-fun setRest!22987 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22988 (= (_2!19023 (h!37463 mapDefault!17327)) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22987 true) setRest!22987))))

(declare-fun b!2774133 () Bool)

(declare-fun tp!877781 () Bool)

(assert (=> b!2774133 (= e!1749567 tp!877781)))

(assert (= (and mapNonEmpty!17323 condMapEmpty!17327) mapIsEmpty!17327))

(assert (= (and mapNonEmpty!17323 (not condMapEmpty!17327)) mapNonEmpty!17327))

(assert (= b!2774132 b!2774128))

(assert (= (and b!2774132 condSetEmpty!22988) setIsEmpty!22988))

(assert (= (and b!2774132 (not condSetEmpty!22988)) setNonEmpty!22987))

(assert (= setNonEmpty!22987 b!2774131))

(assert (= (and mapNonEmpty!17327 ((_ is Cons!32043) mapValue!17327)) b!2774132))

(assert (= b!2774129 b!2774133))

(assert (= (and b!2774129 condSetEmpty!22987) setIsEmpty!22987))

(assert (= (and b!2774129 (not condSetEmpty!22987)) setNonEmpty!22988))

(assert (= setNonEmpty!22988 b!2774130))

(assert (= (and mapNonEmpty!17323 ((_ is Cons!32043) mapDefault!17327)) b!2774129))

(declare-fun m!3200823 () Bool)

(assert (=> setNonEmpty!22987 m!3200823))

(declare-fun m!3200825 () Bool)

(assert (=> b!2774132 m!3200825))

(declare-fun m!3200827 () Bool)

(assert (=> b!2774129 m!3200827))

(declare-fun m!3200829 () Bool)

(assert (=> setNonEmpty!22988 m!3200829))

(declare-fun m!3200831 () Bool)

(assert (=> mapNonEmpty!17327 m!3200831))

(declare-fun b!2774142 () Bool)

(declare-fun e!1749575 () Bool)

(declare-fun tp!877795 () Bool)

(assert (=> b!2774142 (= e!1749575 tp!877795)))

(declare-fun setRes!22991 () Bool)

(declare-fun setNonEmpty!22991 () Bool)

(declare-fun e!1749577 () Bool)

(declare-fun setElem!22991 () Context!4626)

(declare-fun tp!877794 () Bool)

(assert (=> setNonEmpty!22991 (= setRes!22991 (and tp!877794 (inv!43518 setElem!22991) e!1749577))))

(declare-fun setRest!22991 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22991 (= (_2!19023 (h!37463 mapValue!17324)) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22991 true) setRest!22991))))

(declare-fun e!1749576 () Bool)

(assert (=> mapNonEmpty!17323 (= tp!877711 e!1749576)))

(declare-fun b!2774143 () Bool)

(declare-fun tp!877796 () Bool)

(assert (=> b!2774143 (= e!1749577 tp!877796)))

(declare-fun tp!877793 () Bool)

(declare-fun tp!877792 () Bool)

(declare-fun b!2774144 () Bool)

(assert (=> b!2774144 (= e!1749576 (and tp!877793 (inv!43518 (_2!19022 (_1!19023 (h!37463 mapValue!17324)))) e!1749575 tp_is_empty!14021 setRes!22991 tp!877792))))

(declare-fun condSetEmpty!22991 () Bool)

(assert (=> b!2774144 (= condSetEmpty!22991 (= (_2!19023 (h!37463 mapValue!17324)) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setIsEmpty!22991 () Bool)

(assert (=> setIsEmpty!22991 setRes!22991))

(assert (= b!2774144 b!2774142))

(assert (= (and b!2774144 condSetEmpty!22991) setIsEmpty!22991))

(assert (= (and b!2774144 (not condSetEmpty!22991)) setNonEmpty!22991))

(assert (= setNonEmpty!22991 b!2774143))

(assert (= (and mapNonEmpty!17323 ((_ is Cons!32043) mapValue!17324)) b!2774144))

(declare-fun m!3200833 () Bool)

(assert (=> setNonEmpty!22991 m!3200833))

(declare-fun m!3200835 () Bool)

(assert (=> b!2774144 m!3200835))

(declare-fun condSetEmpty!22994 () Bool)

(assert (=> setNonEmpty!22977 (= condSetEmpty!22994 (= setRest!22977 ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setRes!22994 () Bool)

(assert (=> setNonEmpty!22977 (= tp!877715 setRes!22994)))

(declare-fun setIsEmpty!22994 () Bool)

(assert (=> setIsEmpty!22994 setRes!22994))

(declare-fun tp!877801 () Bool)

(declare-fun setNonEmpty!22994 () Bool)

(declare-fun setElem!22994 () Context!4626)

(declare-fun e!1749580 () Bool)

(assert (=> setNonEmpty!22994 (= setRes!22994 (and tp!877801 (inv!43518 setElem!22994) e!1749580))))

(declare-fun setRest!22994 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22994 (= setRest!22977 ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22994 true) setRest!22994))))

(declare-fun b!2774149 () Bool)

(declare-fun tp!877802 () Bool)

(assert (=> b!2774149 (= e!1749580 tp!877802)))

(assert (= (and setNonEmpty!22977 condSetEmpty!22994) setIsEmpty!22994))

(assert (= (and setNonEmpty!22977 (not condSetEmpty!22994)) setNonEmpty!22994))

(assert (= setNonEmpty!22994 b!2774149))

(declare-fun m!3200837 () Bool)

(assert (=> setNonEmpty!22994 m!3200837))

(declare-fun b!2774154 () Bool)

(declare-fun e!1749583 () Bool)

(declare-fun tp!877807 () Bool)

(declare-fun tp!877808 () Bool)

(assert (=> b!2774154 (= e!1749583 (and tp!877807 tp!877808))))

(assert (=> b!2773991 (= tp!877714 e!1749583)))

(assert (= (and b!2773991 ((_ is Cons!32042) (exprs!2813 setElem!22977))) b!2774154))

(declare-fun b!2774155 () Bool)

(declare-fun e!1749584 () Bool)

(declare-fun tp!877812 () Bool)

(assert (=> b!2774155 (= e!1749584 tp!877812)))

(declare-fun setNonEmpty!22995 () Bool)

(declare-fun setRes!22995 () Bool)

(declare-fun tp!877811 () Bool)

(declare-fun setElem!22995 () Context!4626)

(declare-fun e!1749586 () Bool)

(assert (=> setNonEmpty!22995 (= setRes!22995 (and tp!877811 (inv!43518 setElem!22995) e!1749586))))

(declare-fun setRest!22995 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22995 (= (_2!19023 (h!37463 mapDefault!17323)) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22995 true) setRest!22995))))

(declare-fun e!1749585 () Bool)

(assert (=> b!2774000 (= tp!877709 e!1749585)))

(declare-fun b!2774156 () Bool)

(declare-fun tp!877813 () Bool)

(assert (=> b!2774156 (= e!1749586 tp!877813)))

(declare-fun tp!877810 () Bool)

(declare-fun b!2774157 () Bool)

(declare-fun tp!877809 () Bool)

(assert (=> b!2774157 (= e!1749585 (and tp!877810 (inv!43518 (_2!19022 (_1!19023 (h!37463 mapDefault!17323)))) e!1749584 tp_is_empty!14021 setRes!22995 tp!877809))))

(declare-fun condSetEmpty!22995 () Bool)

(assert (=> b!2774157 (= condSetEmpty!22995 (= (_2!19023 (h!37463 mapDefault!17323)) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setIsEmpty!22995 () Bool)

(assert (=> setIsEmpty!22995 setRes!22995))

(assert (= b!2774157 b!2774155))

(assert (= (and b!2774157 condSetEmpty!22995) setIsEmpty!22995))

(assert (= (and b!2774157 (not condSetEmpty!22995)) setNonEmpty!22995))

(assert (= setNonEmpty!22995 b!2774156))

(assert (= (and b!2774000 ((_ is Cons!32043) mapDefault!17323)) b!2774157))

(declare-fun m!3200839 () Bool)

(assert (=> setNonEmpty!22995 m!3200839))

(declare-fun m!3200841 () Bool)

(assert (=> b!2774157 m!3200841))

(declare-fun b!2774158 () Bool)

(declare-fun e!1749587 () Bool)

(declare-fun tp!877817 () Bool)

(assert (=> b!2774158 (= e!1749587 tp!877817)))

(declare-fun setRes!22996 () Bool)

(declare-fun tp!877816 () Bool)

(declare-fun e!1749589 () Bool)

(declare-fun setNonEmpty!22996 () Bool)

(declare-fun setElem!22996 () Context!4626)

(assert (=> setNonEmpty!22996 (= setRes!22996 (and tp!877816 (inv!43518 setElem!22996) e!1749589))))

(declare-fun setRest!22996 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22996 (= (_2!19023 (h!37463 (zeroValue!4057 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22996 true) setRest!22996))))

(declare-fun e!1749588 () Bool)

(assert (=> b!2773992 (= tp!877713 e!1749588)))

(declare-fun b!2774159 () Bool)

(declare-fun tp!877818 () Bool)

(assert (=> b!2774159 (= e!1749589 tp!877818)))

(declare-fun tp!877815 () Bool)

(declare-fun tp!877814 () Bool)

(declare-fun b!2774160 () Bool)

(assert (=> b!2774160 (= e!1749588 (and tp!877815 (inv!43518 (_2!19022 (_1!19023 (h!37463 (zeroValue!4057 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939)))))))))) e!1749587 tp_is_empty!14021 setRes!22996 tp!877814))))

(declare-fun condSetEmpty!22996 () Bool)

(assert (=> b!2774160 (= condSetEmpty!22996 (= (_2!19023 (h!37463 (zeroValue!4057 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939)))))))) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setIsEmpty!22996 () Bool)

(assert (=> setIsEmpty!22996 setRes!22996))

(assert (= b!2774160 b!2774158))

(assert (= (and b!2774160 condSetEmpty!22996) setIsEmpty!22996))

(assert (= (and b!2774160 (not condSetEmpty!22996)) setNonEmpty!22996))

(assert (= setNonEmpty!22996 b!2774159))

(assert (= (and b!2773992 ((_ is Cons!32043) (zeroValue!4057 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939)))))))) b!2774160))

(declare-fun m!3200843 () Bool)

(assert (=> setNonEmpty!22996 m!3200843))

(declare-fun m!3200845 () Bool)

(assert (=> b!2774160 m!3200845))

(declare-fun b!2774161 () Bool)

(declare-fun e!1749590 () Bool)

(declare-fun tp!877822 () Bool)

(assert (=> b!2774161 (= e!1749590 tp!877822)))

(declare-fun setNonEmpty!22997 () Bool)

(declare-fun e!1749592 () Bool)

(declare-fun setElem!22997 () Context!4626)

(declare-fun setRes!22997 () Bool)

(declare-fun tp!877821 () Bool)

(assert (=> setNonEmpty!22997 (= setRes!22997 (and tp!877821 (inv!43518 setElem!22997) e!1749592))))

(declare-fun setRest!22997 () (InoxSet Context!4626))

(assert (=> setNonEmpty!22997 (= (_2!19023 (h!37463 (minValue!4057 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!22997 true) setRest!22997))))

(declare-fun e!1749591 () Bool)

(assert (=> b!2773992 (= tp!877712 e!1749591)))

(declare-fun b!2774162 () Bool)

(declare-fun tp!877823 () Bool)

(assert (=> b!2774162 (= e!1749592 tp!877823)))

(declare-fun tp!877820 () Bool)

(declare-fun tp!877819 () Bool)

(declare-fun b!2774163 () Bool)

(assert (=> b!2774163 (= e!1749591 (and tp!877820 (inv!43518 (_2!19022 (_1!19023 (h!37463 (minValue!4057 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939)))))))))) e!1749590 tp_is_empty!14021 setRes!22997 tp!877819))))

(declare-fun condSetEmpty!22997 () Bool)

(assert (=> b!2774163 (= condSetEmpty!22997 (= (_2!19023 (h!37463 (minValue!4057 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939)))))))) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun setIsEmpty!22997 () Bool)

(assert (=> setIsEmpty!22997 setRes!22997))

(assert (= b!2774163 b!2774161))

(assert (= (and b!2774163 condSetEmpty!22997) setIsEmpty!22997))

(assert (= (and b!2774163 (not condSetEmpty!22997)) setNonEmpty!22997))

(assert (= setNonEmpty!22997 b!2774162))

(assert (= (and b!2773992 ((_ is Cons!32043) (minValue!4057 (v!33652 (underlying!7799 (v!33653 (underlying!7800 (cache!3847 cacheDown!939)))))))) b!2774163))

(declare-fun m!3200847 () Bool)

(assert (=> setNonEmpty!22997 m!3200847))

(declare-fun m!3200849 () Bool)

(assert (=> b!2774163 m!3200849))

(declare-fun setIsEmpty!23002 () Bool)

(declare-fun setRes!23003 () Bool)

(assert (=> setIsEmpty!23002 setRes!23003))

(declare-fun setIsEmpty!23003 () Bool)

(declare-fun setRes!23002 () Bool)

(assert (=> setIsEmpty!23003 setRes!23002))

(declare-fun e!1749610 () Bool)

(declare-fun setElem!23002 () Context!4626)

(declare-fun setNonEmpty!23002 () Bool)

(declare-fun tp!877847 () Bool)

(assert (=> setNonEmpty!23002 (= setRes!23003 (and tp!877847 (inv!43518 setElem!23002) e!1749610))))

(declare-fun mapDefault!17330 () List!32145)

(declare-fun setRest!23003 () (InoxSet Context!4626))

(assert (=> setNonEmpty!23002 (= (_2!19025 (h!37465 mapDefault!17330)) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!23002 true) setRest!23003))))

(declare-fun mapValue!17330 () List!32145)

(declare-fun tp!877849 () Bool)

(declare-fun e!1749609 () Bool)

(declare-fun b!2774178 () Bool)

(declare-fun e!1749607 () Bool)

(assert (=> b!2774178 (= e!1749609 (and (inv!43518 (_1!19024 (_1!19025 (h!37465 mapValue!17330)))) e!1749607 tp_is_empty!14021 setRes!23002 tp!877849))))

(declare-fun condSetEmpty!23002 () Bool)

(assert (=> b!2774178 (= condSetEmpty!23002 (= (_2!19025 (h!37465 mapValue!17330)) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun b!2774179 () Bool)

(declare-fun tp!877846 () Bool)

(assert (=> b!2774179 (= e!1749607 tp!877846)))

(declare-fun mapNonEmpty!17330 () Bool)

(declare-fun mapRes!17330 () Bool)

(declare-fun tp!877845 () Bool)

(assert (=> mapNonEmpty!17330 (= mapRes!17330 (and tp!877845 e!1749609))))

(declare-fun mapKey!17330 () (_ BitVec 32))

(declare-fun mapRest!17330 () (Array (_ BitVec 32) List!32145))

(assert (=> mapNonEmpty!17330 (= mapRest!17324 (store mapRest!17330 mapKey!17330 mapValue!17330))))

(declare-fun b!2774180 () Bool)

(declare-fun e!1749608 () Bool)

(declare-fun tp!877842 () Bool)

(assert (=> b!2774180 (= e!1749608 tp!877842)))

(declare-fun condMapEmpty!17330 () Bool)

(assert (=> mapNonEmpty!17324 (= condMapEmpty!17330 (= mapRest!17324 ((as const (Array (_ BitVec 32) List!32145)) mapDefault!17330)))))

(declare-fun e!1749605 () Bool)

(assert (=> mapNonEmpty!17324 (= tp!877706 (and e!1749605 mapRes!17330))))

(declare-fun b!2774181 () Bool)

(declare-fun tp!877844 () Bool)

(assert (=> b!2774181 (= e!1749610 tp!877844)))

(declare-fun setElem!23003 () Context!4626)

(declare-fun e!1749606 () Bool)

(declare-fun setNonEmpty!23003 () Bool)

(declare-fun tp!877850 () Bool)

(assert (=> setNonEmpty!23003 (= setRes!23002 (and tp!877850 (inv!43518 setElem!23003) e!1749606))))

(declare-fun setRest!23002 () (InoxSet Context!4626))

(assert (=> setNonEmpty!23003 (= (_2!19025 (h!37465 mapValue!17330)) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!23003 true) setRest!23002))))

(declare-fun b!2774182 () Bool)

(declare-fun tp!877848 () Bool)

(assert (=> b!2774182 (= e!1749606 tp!877848)))

(declare-fun tp!877843 () Bool)

(declare-fun b!2774183 () Bool)

(assert (=> b!2774183 (= e!1749605 (and (inv!43518 (_1!19024 (_1!19025 (h!37465 mapDefault!17330)))) e!1749608 tp_is_empty!14021 setRes!23003 tp!877843))))

(declare-fun condSetEmpty!23003 () Bool)

(assert (=> b!2774183 (= condSetEmpty!23003 (= (_2!19025 (h!37465 mapDefault!17330)) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun mapIsEmpty!17330 () Bool)

(assert (=> mapIsEmpty!17330 mapRes!17330))

(assert (= (and mapNonEmpty!17324 condMapEmpty!17330) mapIsEmpty!17330))

(assert (= (and mapNonEmpty!17324 (not condMapEmpty!17330)) mapNonEmpty!17330))

(assert (= b!2774178 b!2774179))

(assert (= (and b!2774178 condSetEmpty!23002) setIsEmpty!23003))

(assert (= (and b!2774178 (not condSetEmpty!23002)) setNonEmpty!23003))

(assert (= setNonEmpty!23003 b!2774182))

(assert (= (and mapNonEmpty!17330 ((_ is Cons!32045) mapValue!17330)) b!2774178))

(assert (= b!2774183 b!2774180))

(assert (= (and b!2774183 condSetEmpty!23003) setIsEmpty!23002))

(assert (= (and b!2774183 (not condSetEmpty!23003)) setNonEmpty!23002))

(assert (= setNonEmpty!23002 b!2774181))

(assert (= (and mapNonEmpty!17324 ((_ is Cons!32045) mapDefault!17330)) b!2774183))

(declare-fun m!3200851 () Bool)

(assert (=> setNonEmpty!23002 m!3200851))

(declare-fun m!3200853 () Bool)

(assert (=> mapNonEmpty!17330 m!3200853))

(declare-fun m!3200855 () Bool)

(assert (=> b!2774183 m!3200855))

(declare-fun m!3200857 () Bool)

(assert (=> b!2774178 m!3200857))

(declare-fun m!3200859 () Bool)

(assert (=> setNonEmpty!23003 m!3200859))

(declare-fun setIsEmpty!23004 () Bool)

(declare-fun setRes!23004 () Bool)

(assert (=> setIsEmpty!23004 setRes!23004))

(declare-fun e!1749612 () Bool)

(assert (=> mapNonEmpty!17324 (= tp!877708 e!1749612)))

(declare-fun b!2774184 () Bool)

(declare-fun e!1749611 () Bool)

(declare-fun tp!877852 () Bool)

(assert (=> b!2774184 (= e!1749611 tp!877852)))

(declare-fun tp!877853 () Bool)

(declare-fun b!2774185 () Bool)

(assert (=> b!2774185 (= e!1749612 (and (inv!43518 (_1!19024 (_1!19025 (h!37465 mapValue!17323)))) e!1749611 tp_is_empty!14021 setRes!23004 tp!877853))))

(declare-fun condSetEmpty!23004 () Bool)

(assert (=> b!2774185 (= condSetEmpty!23004 (= (_2!19025 (h!37465 mapValue!17323)) ((as const (Array Context!4626 Bool)) false)))))

(declare-fun tp!877851 () Bool)

(declare-fun setNonEmpty!23004 () Bool)

(declare-fun setElem!23004 () Context!4626)

(declare-fun e!1749613 () Bool)

(assert (=> setNonEmpty!23004 (= setRes!23004 (and tp!877851 (inv!43518 setElem!23004) e!1749613))))

(declare-fun setRest!23004 () (InoxSet Context!4626))

(assert (=> setNonEmpty!23004 (= (_2!19025 (h!37465 mapValue!17323)) ((_ map or) (store ((as const (Array Context!4626 Bool)) false) setElem!23004 true) setRest!23004))))

(declare-fun b!2774186 () Bool)

(declare-fun tp!877854 () Bool)

(assert (=> b!2774186 (= e!1749613 tp!877854)))

(assert (= b!2774185 b!2774184))

(assert (= (and b!2774185 condSetEmpty!23004) setIsEmpty!23004))

(assert (= (and b!2774185 (not condSetEmpty!23004)) setNonEmpty!23004))

(assert (= setNonEmpty!23004 b!2774186))

(assert (= (and mapNonEmpty!17324 ((_ is Cons!32045) mapValue!17323)) b!2774185))

(declare-fun m!3200861 () Bool)

(assert (=> b!2774185 m!3200861))

(declare-fun m!3200863 () Bool)

(assert (=> setNonEmpty!23004 m!3200863))

(check-sat (not b!2774047) (not b_next!79029) (not b!2774109) (not b!2774057) (not b!2774185) (not bm!181353) (not b!2774160) (not b!2774131) (not setNonEmpty!23003) (not bm!181355) b_and!203067 (not setNonEmpty!22991) (not b!2774155) (not d!806436) (not setNonEmpty!22995) (not bm!181360) (not bm!181352) (not b!2774179) (not b!2774161) (not bm!181361) (not d!806450) (not setNonEmpty!22980) (not b!2774162) (not b!2774156) (not b!2774066) (not b!2774157) (not b_next!79033) (not d!806434) (not b!2774158) (not setNonEmpty!23004) (not b!2774094) (not b!2774186) (not setNonEmpty!22982) (not d!806446) (not setNonEmpty!22987) (not b!2774107) (not b!2774178) (not b!2774095) (not b!2774096) (not mapNonEmpty!17330) (not b!2774142) (not b!2774065) (not d!806416) (not d!806422) (not b!2774159) b_and!203069 (not b!2774181) (not b!2774129) (not mapNonEmpty!17327) (not b!2774085) (not setNonEmpty!23002) (not d!806414) (not b!2774078) (not d!806440) (not b!2774130) (not b!2774111) (not b!2774163) (not b!2774113) (not b!2774154) (not b!2774105) (not b!2774144) (not b!2774128) (not b!2774043) (not d!806442) (not b!2774143) (not d!806438) (not b!2774184) (not b!2774059) b_and!203065 (not b!2774067) (not d!806448) (not b!2774050) (not b!2774035) (not d!806432) (not b_next!79031) (not setNonEmpty!22981) (not b!2773988) (not b!2774182) (not bm!181357) (not b!2774037) (not b_next!79035) (not b!2774183) (not d!806428) (not bm!181356) tp_is_empty!14021 (not bm!181359) (not b!2774132) (not bm!181354) (not b!2774110) (not b!2774149) (not b!2774133) (not d!806444) (not b!2774112) (not setNonEmpty!22994) (not b!2774108) (not b!2774106) (not setNonEmpty!22988) b_and!203063 (not setNonEmpty!22997) (not bm!181358) (not b!2774064) (not setNonEmpty!22996) (not b!2774180) (not b!2774077))
(check-sat b_and!203067 (not b_next!79029) (not b_next!79033) b_and!203069 b_and!203065 (not b_next!79031) (not b_next!79035) b_and!203063)
