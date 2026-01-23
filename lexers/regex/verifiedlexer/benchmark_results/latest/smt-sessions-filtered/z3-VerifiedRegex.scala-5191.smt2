; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266644 () Bool)

(assert start!266644)

(declare-fun b!2751242 () Bool)

(declare-fun b_free!77845 () Bool)

(declare-fun b_next!78549 () Bool)

(assert (=> b!2751242 (= b_free!77845 (not b_next!78549))))

(declare-fun tp!869099 () Bool)

(declare-fun b_and!202583 () Bool)

(assert (=> b!2751242 (= tp!869099 b_and!202583)))

(declare-fun b!2751240 () Bool)

(declare-fun b_free!77847 () Bool)

(declare-fun b_next!78551 () Bool)

(assert (=> b!2751240 (= b_free!77847 (not b_next!78551))))

(declare-fun tp!869098 () Bool)

(declare-fun b_and!202585 () Bool)

(assert (=> b!2751240 (= tp!869098 b_and!202585)))

(declare-fun b!2751259 () Bool)

(declare-fun b_free!77849 () Bool)

(declare-fun b_next!78553 () Bool)

(assert (=> b!2751259 (= b_free!77849 (not b_next!78553))))

(declare-fun tp!869085 () Bool)

(declare-fun b_and!202587 () Bool)

(assert (=> b!2751259 (= tp!869085 b_and!202587)))

(declare-fun b!2751248 () Bool)

(declare-fun b_free!77851 () Bool)

(declare-fun b_next!78555 () Bool)

(assert (=> b!2751248 (= b_free!77851 (not b_next!78555))))

(declare-fun tp!869095 () Bool)

(declare-fun b_and!202589 () Bool)

(assert (=> b!2751248 (= tp!869095 b_and!202589)))

(declare-fun call!177566 () Bool)

(declare-datatypes ((C!16252 0))(
  ( (C!16253 (val!10060 Int)) )
))
(declare-datatypes ((Regex!8047 0))(
  ( (ElementMatch!8047 (c!445116 C!16252)) (Concat!13135 (regOne!16606 Regex!8047) (regTwo!16606 Regex!8047)) (EmptyExpr!8047) (Star!8047 (reg!8376 Regex!8047)) (EmptyLang!8047) (Union!8047 (regOne!16607 Regex!8047) (regTwo!16607 Regex!8047)) )
))
(declare-datatypes ((List!31933 0))(
  ( (Nil!31833) (Cons!31833 (h!37253 Regex!8047) (t!228037 List!31933)) )
))
(declare-datatypes ((Context!4530 0))(
  ( (Context!4531 (exprs!2765 List!31933)) )
))
(declare-datatypes ((tuple2!31794 0))(
  ( (tuple2!31795 (_1!18651 Context!4530) (_2!18651 C!16252)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31796 0))(
  ( (tuple2!31797 (_1!18652 tuple2!31794) (_2!18652 (InoxSet Context!4530))) )
))
(declare-datatypes ((List!31934 0))(
  ( (Nil!31834) (Cons!31834 (h!37254 tuple2!31796) (t!228038 List!31934)) )
))
(declare-datatypes ((Hashable!3618 0))(
  ( (HashableExt!3617 (__x!20756 Int)) )
))
(declare-datatypes ((array!13174 0))(
  ( (array!13175 (arr!5882 (Array (_ BitVec 32) List!31934)) (size!24590 (_ BitVec 32))) )
))
(declare-datatypes ((array!13176 0))(
  ( (array!13177 (arr!5883 (Array (_ BitVec 32) (_ BitVec 64))) (size!24591 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7404 0))(
  ( (LongMapFixedSize!7405 (defaultEntry!4087 Int) (mask!9462 (_ BitVec 32)) (extraKeys!3951 (_ BitVec 32)) (zeroValue!3961 List!31934) (minValue!3961 List!31934) (_size!7447 (_ BitVec 32)) (_keys!4002 array!13176) (_values!3983 array!13174) (_vacant!3763 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14617 0))(
  ( (Cell!14618 (v!33443 LongMapFixedSize!7404)) )
))
(declare-datatypes ((MutLongMap!3702 0))(
  ( (LongMap!3702 (underlying!7607 Cell!14617)) (MutLongMapExt!3701 (__x!20757 Int)) )
))
(declare-datatypes ((Cell!14619 0))(
  ( (Cell!14620 (v!33444 MutLongMap!3702)) )
))
(declare-datatypes ((MutableMap!3608 0))(
  ( (MutableMapExt!3607 (__x!20758 Int)) (HashMap!3608 (underlying!7608 Cell!14619) (hashF!5650 Hashable!3618) (_size!7448 (_ BitVec 32)) (defaultValue!3779 Int)) )
))
(declare-datatypes ((CacheUp!2314 0))(
  ( (CacheUp!2315 (cache!3751 MutableMap!3608)) )
))
(declare-datatypes ((tuple3!4568 0))(
  ( (tuple3!4569 (_1!18653 Regex!8047) (_2!18653 Context!4530) (_3!2754 C!16252)) )
))
(declare-datatypes ((tuple2!31798 0))(
  ( (tuple2!31799 (_1!18654 tuple3!4568) (_2!18654 (InoxSet Context!4530))) )
))
(declare-datatypes ((List!31935 0))(
  ( (Nil!31835) (Cons!31835 (h!37255 tuple2!31798) (t!228039 List!31935)) )
))
(declare-datatypes ((array!13178 0))(
  ( (array!13179 (arr!5884 (Array (_ BitVec 32) List!31935)) (size!24592 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7406 0))(
  ( (LongMapFixedSize!7407 (defaultEntry!4088 Int) (mask!9463 (_ BitVec 32)) (extraKeys!3952 (_ BitVec 32)) (zeroValue!3962 List!31935) (minValue!3962 List!31935) (_size!7449 (_ BitVec 32)) (_keys!4003 array!13176) (_values!3984 array!13178) (_vacant!3764 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14621 0))(
  ( (Cell!14622 (v!33445 LongMapFixedSize!7406)) )
))
(declare-datatypes ((MutLongMap!3703 0))(
  ( (LongMap!3703 (underlying!7609 Cell!14621)) (MutLongMapExt!3702 (__x!20759 Int)) )
))
(declare-datatypes ((Cell!14623 0))(
  ( (Cell!14624 (v!33446 MutLongMap!3703)) )
))
(declare-datatypes ((Hashable!3619 0))(
  ( (HashableExt!3618 (__x!20760 Int)) )
))
(declare-datatypes ((MutableMap!3609 0))(
  ( (MutableMapExt!3608 (__x!20761 Int)) (HashMap!3609 (underlying!7610 Cell!14623) (hashF!5651 Hashable!3619) (_size!7450 (_ BitVec 32)) (defaultValue!3780 Int)) )
))
(declare-datatypes ((CacheDown!2434 0))(
  ( (CacheDown!2435 (cache!3752 MutableMap!3609)) )
))
(declare-datatypes ((tuple3!4570 0))(
  ( (tuple3!4571 (_1!18655 Int) (_2!18655 CacheUp!2314) (_3!2755 CacheDown!2434)) )
))
(declare-fun lt!972928 () tuple3!4570)

(declare-fun lt!972957 () tuple3!4570)

(declare-fun c!445113 () Bool)

(declare-fun bm!177555 () Bool)

(declare-fun valid!2870 (CacheDown!2434) Bool)

(assert (=> bm!177555 (= call!177566 (valid!2870 (ite c!445113 (_3!2755 lt!972928) (_3!2755 lt!972957))))))

(declare-fun bm!177556 () Bool)

(declare-fun lt!972954 () tuple3!4570)

(declare-datatypes ((tuple3!4572 0))(
  ( (tuple3!4573 (_1!18656 (InoxSet Context!4530)) (_2!18656 CacheUp!2314) (_3!2756 CacheDown!2434)) )
))
(declare-fun call!177561 () tuple3!4572)

(declare-fun lt!972941 () C!16252)

(declare-fun z!3597 () (InoxSet Context!4530))

(declare-fun derivationStepZipperMem!71 ((InoxSet Context!4530) C!16252 CacheUp!2314 CacheDown!2434) tuple3!4572)

(assert (=> bm!177556 (= call!177561 (derivationStepZipperMem!71 z!3597 lt!972941 (_2!18655 lt!972954) (_3!2755 lt!972954)))))

(declare-fun bm!177557 () Bool)

(declare-fun call!177567 () Bool)

(declare-datatypes ((List!31936 0))(
  ( (Nil!31836) (Cons!31836 (h!37256 C!16252) (t!228040 List!31936)) )
))
(declare-fun lt!972950 () List!31936)

(declare-fun isPrefix!2524 (List!31936 List!31936) Bool)

(assert (=> bm!177557 (= call!177567 (isPrefix!2524 lt!972950 lt!972950))))

(declare-fun b!2751231 () Bool)

(declare-fun e!1734499 () Bool)

(declare-fun tp!869088 () Bool)

(declare-fun mapRes!16838 () Bool)

(assert (=> b!2751231 (= e!1734499 (and tp!869088 mapRes!16838))))

(declare-fun condMapEmpty!16838 () Bool)

(declare-fun cacheUp!820 () CacheUp!2314)

(declare-fun mapDefault!16837 () List!31934)

(assert (=> b!2751231 (= condMapEmpty!16838 (= (arr!5882 (_values!3983 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31934)) mapDefault!16837)))))

(declare-fun b!2751232 () Bool)

(declare-fun e!1734491 () Bool)

(declare-fun lt!972945 () List!31936)

(assert (=> b!2751232 (= e!1734491 (not (= lt!972945 lt!972950)))))

(declare-fun lt!972935 () tuple3!4570)

(declare-datatypes ((tuple3!4574 0))(
  ( (tuple3!4575 (_1!18657 Int) (_2!18657 CacheDown!2434) (_3!2757 CacheUp!2314)) )
))
(declare-fun lt!972956 () tuple3!4574)

(assert (=> b!2751232 (= lt!972935 (tuple3!4571 (_1!18657 lt!972956) (_3!2757 lt!972956) (_2!18657 lt!972956)))))

(declare-fun e!1734488 () tuple3!4574)

(assert (=> b!2751232 (= lt!972956 e!1734488)))

(declare-fun c!445115 () Bool)

(declare-fun lostCauseZipper!414 ((InoxSet Context!4530)) Bool)

(assert (=> b!2751232 (= c!445115 (lostCauseZipper!414 z!3597))))

(declare-fun lt!972953 () List!31936)

(assert (=> b!2751232 (and (= lt!972950 lt!972953) (= lt!972953 lt!972950))))

(declare-datatypes ((Unit!45585 0))(
  ( (Unit!45586) )
))
(declare-fun lt!972930 () Unit!45585)

(declare-fun lemmaSamePrefixThenSameSuffix!1112 (List!31936 List!31936 List!31936 List!31936 List!31936) Unit!45585)

(assert (=> b!2751232 (= lt!972930 (lemmaSamePrefixThenSameSuffix!1112 Nil!31836 lt!972950 Nil!31836 lt!972953 lt!972950))))

(declare-fun getSuffix!1210 (List!31936 List!31936) List!31936)

(assert (=> b!2751232 (= lt!972953 (getSuffix!1210 lt!972950 Nil!31836))))

(assert (=> b!2751232 (isPrefix!2524 Nil!31836 lt!972945)))

(declare-fun ++!7884 (List!31936 List!31936) List!31936)

(assert (=> b!2751232 (= lt!972945 (++!7884 Nil!31836 lt!972950))))

(declare-fun lt!972948 () Unit!45585)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1638 (List!31936 List!31936) Unit!45585)

(assert (=> b!2751232 (= lt!972948 (lemmaConcatTwoListThenFirstIsPrefix!1638 Nil!31836 lt!972950))))

(declare-fun e!1734496 () Bool)

(assert (=> b!2751232 e!1734496))

(declare-fun res!1153550 () Bool)

(assert (=> b!2751232 (=> (not res!1153550) (not e!1734496))))

(declare-fun valid!2871 (CacheUp!2314) Bool)

(assert (=> b!2751232 (= res!1153550 (valid!2871 (_2!18655 lt!972935)))))

(declare-fun lt!972946 () Int)

(declare-datatypes ((IArray!19863 0))(
  ( (IArray!19864 (innerList!9989 List!31936)) )
))
(declare-datatypes ((Conc!9929 0))(
  ( (Node!9929 (left!24314 Conc!9929) (right!24644 Conc!9929) (csize!20088 Int) (cheight!10140 Int)) (Leaf!15121 (xs!13036 IArray!19863) (csize!20089 Int)) (Empty!9929) )
))
(declare-datatypes ((BalanceConc!19472 0))(
  ( (BalanceConc!19473 (c!445117 Conc!9929)) )
))
(declare-fun input!5495 () BalanceConc!19472)

(declare-fun findLongestMatchInnerZipperFastMem!4 (CacheUp!2314 CacheDown!2434 (InoxSet Context!4530) List!31936 Int List!31936 BalanceConc!19472 Int) tuple3!4570)

(assert (=> b!2751232 (= lt!972935 (findLongestMatchInnerZipperFastMem!4 (_2!18655 lt!972954) (_3!2755 lt!972954) z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946))))

(declare-fun e!1734493 () Bool)

(assert (=> b!2751232 e!1734493))

(declare-fun res!1153543 () Bool)

(assert (=> b!2751232 (=> (not res!1153543) (not e!1734493))))

(assert (=> b!2751232 (= res!1153543 (valid!2871 (_2!18655 lt!972954)))))

(declare-fun cacheDown!939 () CacheDown!2434)

(assert (=> b!2751232 (= lt!972954 (findLongestMatchInnerZipperFastMem!4 cacheUp!820 cacheDown!939 z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946))))

(declare-fun size!24593 (BalanceConc!19472) Int)

(assert (=> b!2751232 (= lt!972946 (size!24593 input!5495))))

(declare-fun list!12029 (BalanceConc!19472) List!31936)

(assert (=> b!2751232 (= lt!972950 (list!12029 input!5495))))

(declare-fun b!2751233 () Bool)

(declare-fun e!1734497 () Unit!45585)

(declare-fun Unit!45587 () Unit!45585)

(assert (=> b!2751233 (= e!1734497 Unit!45587)))

(declare-fun bm!177558 () Bool)

(declare-fun call!177565 () Unit!45585)

(declare-fun lemmaIsPrefixRefl!1650 (List!31936 List!31936) Unit!45585)

(assert (=> bm!177558 (= call!177565 (lemmaIsPrefixRefl!1650 lt!972950 lt!972950))))

(declare-fun b!2751234 () Bool)

(declare-fun e!1734486 () Bool)

(declare-fun e!1734483 () Bool)

(declare-fun lt!972929 () MutLongMap!3702)

(get-info :version)

(assert (=> b!2751234 (= e!1734486 (and e!1734483 ((_ is LongMap!3702) lt!972929)))))

(assert (=> b!2751234 (= lt!972929 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))

(declare-fun b!2751235 () Bool)

(declare-fun Unit!45588 () Unit!45585)

(assert (=> b!2751235 (= e!1734497 Unit!45588)))

(declare-fun lt!972958 () Unit!45585)

(assert (=> b!2751235 (= lt!972958 call!177565)))

(assert (=> b!2751235 call!177567))

(declare-fun lt!972942 () Unit!45585)

(declare-fun call!177560 () Unit!45585)

(assert (=> b!2751235 (= lt!972942 call!177560)))

(assert (=> b!2751235 false))

(declare-fun setIsEmpty!21936 () Bool)

(declare-fun setRes!21936 () Bool)

(assert (=> setIsEmpty!21936 setRes!21936))

(declare-fun b!2751236 () Bool)

(declare-fun findLongestMatchInnerZipperFast!5 ((InoxSet Context!4530) List!31936 Int List!31936 BalanceConc!19472 Int) Int)

(assert (=> b!2751236 (= e!1734493 (= (_1!18655 lt!972954) (findLongestMatchInnerZipperFast!5 z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946)))))

(declare-fun b!2751237 () Bool)

(declare-fun res!1153548 () Bool)

(assert (=> b!2751237 (= res!1153548 call!177566)))

(declare-fun e!1734500 () Bool)

(assert (=> b!2751237 (=> (not res!1153548) (not e!1734500))))

(declare-fun b!2751238 () Bool)

(declare-fun lt!972936 () Bool)

(declare-fun call!177568 () Bool)

(assert (=> b!2751238 (= lt!972936 call!177568)))

(assert (=> b!2751238 (= lt!972950 Nil!31836)))

(declare-fun lt!972940 () Unit!45585)

(assert (=> b!2751238 (= lt!972940 call!177560)))

(assert (=> b!2751238 call!177567))

(declare-fun lt!972934 () Unit!45585)

(assert (=> b!2751238 (= lt!972934 call!177565)))

(declare-fun e!1734485 () tuple3!4574)

(assert (=> b!2751238 (= e!1734485 (tuple3!4575 0 (_3!2755 lt!972954) (_2!18655 lt!972954)))))

(declare-fun mapIsEmpty!16837 () Bool)

(declare-fun mapRes!16837 () Bool)

(assert (=> mapIsEmpty!16837 mapRes!16837))

(declare-fun b!2751239 () Bool)

(declare-fun e!1734481 () tuple3!4574)

(assert (=> b!2751239 (= e!1734481 (tuple3!4575 (_1!18655 lt!972957) (_3!2755 lt!972957) (_2!18655 lt!972957)))))

(declare-fun lt!972949 () tuple3!4572)

(assert (=> b!2751239 (= lt!972949 call!177561)))

(declare-fun call!177563 () tuple3!4570)

(assert (=> b!2751239 (= lt!972957 call!177563)))

(declare-fun res!1153545 () Bool)

(declare-fun call!177564 () Bool)

(assert (=> b!2751239 (= res!1153545 call!177564)))

(assert (=> b!2751239 (=> (not res!1153545) (not e!1734500))))

(assert (=> b!2751239 e!1734500))

(declare-fun mapNonEmpty!16837 () Bool)

(declare-fun tp!869097 () Bool)

(declare-fun tp!869086 () Bool)

(assert (=> mapNonEmpty!16837 (= mapRes!16837 (and tp!869097 tp!869086))))

(declare-fun mapValue!16838 () List!31935)

(declare-fun mapRest!16837 () (Array (_ BitVec 32) List!31935))

(declare-fun mapKey!16838 () (_ BitVec 32))

(assert (=> mapNonEmpty!16837 (= (arr!5884 (_values!3984 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))) (store mapRest!16837 mapKey!16838 mapValue!16838))))

(declare-fun tp!869092 () Bool)

(declare-fun e!1734479 () Bool)

(declare-fun e!1734484 () Bool)

(declare-fun tp!869091 () Bool)

(declare-fun array_inv!4202 (array!13176) Bool)

(declare-fun array_inv!4203 (array!13178) Bool)

(assert (=> b!2751240 (= e!1734484 (and tp!869098 tp!869091 tp!869092 (array_inv!4202 (_keys!4003 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))) (array_inv!4203 (_values!3984 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))) e!1734479))))

(declare-fun bm!177559 () Bool)

(declare-fun nullableZipper!602 ((InoxSet Context!4530)) Bool)

(assert (=> bm!177559 (= call!177568 (nullableZipper!602 z!3597))))

(declare-fun b!2751241 () Bool)

(declare-fun e!1734480 () Bool)

(declare-fun tp!869096 () Bool)

(assert (=> b!2751241 (= e!1734480 tp!869096)))

(declare-fun b!2751230 () Bool)

(declare-fun e!1734476 () Bool)

(declare-fun tp!869093 () Bool)

(declare-fun inv!43219 (Conc!9929) Bool)

(assert (=> b!2751230 (= e!1734476 (and (inv!43219 (c!445117 input!5495)) tp!869093))))

(declare-fun res!1153549 () Bool)

(assert (=> start!266644 (=> (not res!1153549) (not e!1734491))))

(assert (=> start!266644 (= res!1153549 (valid!2871 cacheUp!820))))

(assert (=> start!266644 e!1734491))

(declare-fun e!1734487 () Bool)

(declare-fun inv!43220 (CacheUp!2314) Bool)

(assert (=> start!266644 (and (inv!43220 cacheUp!820) e!1734487)))

(declare-fun e!1734492 () Bool)

(declare-fun inv!43221 (CacheDown!2434) Bool)

(assert (=> start!266644 (and (inv!43221 cacheDown!939) e!1734492)))

(declare-fun condSetEmpty!21936 () Bool)

(assert (=> start!266644 (= condSetEmpty!21936 (= z!3597 ((as const (Array Context!4530 Bool)) false)))))

(assert (=> start!266644 setRes!21936))

(declare-fun inv!43222 (BalanceConc!19472) Bool)

(assert (=> start!266644 (and (inv!43222 input!5495) e!1734476)))

(declare-fun tp!869084 () Bool)

(declare-fun tp!869089 () Bool)

(declare-fun e!1734494 () Bool)

(declare-fun array_inv!4204 (array!13174) Bool)

(assert (=> b!2751242 (= e!1734494 (and tp!869099 tp!869084 tp!869089 (array_inv!4202 (_keys!4002 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))) (array_inv!4204 (_values!3983 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))) e!1734499))))

(declare-fun b!2751243 () Bool)

(assert (=> b!2751243 (= e!1734496 (= (_1!18655 lt!972935) (findLongestMatchInnerZipperFast!5 z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946)))))

(declare-fun b!2751244 () Bool)

(declare-fun res!1153542 () Bool)

(assert (=> b!2751244 (=> (not res!1153542) (not e!1734493))))

(assert (=> b!2751244 (= res!1153542 (valid!2870 (_3!2755 lt!972954)))))

(declare-fun b!2751245 () Bool)

(assert (=> b!2751245 (= e!1734481 (tuple3!4575 (ite (= (_1!18655 lt!972928) 0) 0 (_1!18655 lt!972928)) (_3!2755 lt!972928) (_2!18655 lt!972928)))))

(declare-fun lt!972944 () tuple3!4572)

(assert (=> b!2751245 (= lt!972944 call!177561)))

(assert (=> b!2751245 (= lt!972928 call!177563)))

(declare-fun res!1153551 () Bool)

(assert (=> b!2751245 (= res!1153551 call!177564)))

(declare-fun e!1734475 () Bool)

(assert (=> b!2751245 (=> (not res!1153551) (not e!1734475))))

(assert (=> b!2751245 e!1734475))

(declare-fun b!2751246 () Bool)

(declare-fun res!1153546 () Bool)

(assert (=> b!2751246 (= res!1153546 call!177566)))

(assert (=> b!2751246 (=> (not res!1153546) (not e!1734475))))

(declare-fun b!2751247 () Bool)

(declare-fun e!1734478 () Bool)

(assert (=> b!2751247 (= e!1734483 e!1734478)))

(declare-fun bm!177560 () Bool)

(assert (=> bm!177560 (= call!177564 (valid!2871 (ite c!445113 (_2!18655 lt!972928) (_2!18655 lt!972957))))))

(declare-fun e!1734489 () Bool)

(declare-fun e!1734498 () Bool)

(assert (=> b!2751248 (= e!1734489 (and e!1734498 tp!869095))))

(declare-fun b!2751249 () Bool)

(declare-fun res!1153544 () Bool)

(assert (=> b!2751249 (=> (not res!1153544) (not e!1734491))))

(assert (=> b!2751249 (= res!1153544 (valid!2870 cacheDown!939))))

(declare-fun b!2751250 () Bool)

(declare-fun e!1734482 () Bool)

(declare-fun lt!972952 () MutLongMap!3703)

(assert (=> b!2751250 (= e!1734498 (and e!1734482 ((_ is LongMap!3703) lt!972952)))))

(assert (=> b!2751250 (= lt!972952 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))

(declare-fun mapNonEmpty!16838 () Bool)

(declare-fun tp!869100 () Bool)

(declare-fun tp!869090 () Bool)

(assert (=> mapNonEmpty!16838 (= mapRes!16838 (and tp!869100 tp!869090))))

(declare-fun mapKey!16837 () (_ BitVec 32))

(declare-fun mapRest!16838 () (Array (_ BitVec 32) List!31934))

(declare-fun mapValue!16837 () List!31934)

(assert (=> mapNonEmpty!16838 (= (arr!5882 (_values!3983 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))) (store mapRest!16838 mapKey!16837 mapValue!16837))))

(declare-fun b!2751251 () Bool)

(assert (=> b!2751251 (= e!1734478 e!1734494)))

(declare-fun b!2751252 () Bool)

(assert (=> b!2751252 (= e!1734488 e!1734485)))

(declare-fun c!445112 () Bool)

(assert (=> b!2751252 (= c!445112 (= 0 lt!972946))))

(declare-fun b!2751253 () Bool)

(assert (=> b!2751253 (= c!445113 call!177568)))

(declare-fun lt!972939 () List!31936)

(declare-fun lt!972943 () List!31936)

(assert (=> b!2751253 (= (++!7884 lt!972939 lt!972943) lt!972950)))

(assert (=> b!2751253 (= lt!972939 (++!7884 Nil!31836 (Cons!31836 lt!972941 Nil!31836)))))

(declare-fun lt!972951 () Unit!45585)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!841 (List!31936 C!16252 List!31936 List!31936) Unit!45585)

(assert (=> b!2751253 (= lt!972951 (lemmaMoveElementToOtherListKeepsConcatEq!841 Nil!31836 lt!972941 lt!972943 lt!972950))))

(declare-fun tail!4358 (List!31936) List!31936)

(assert (=> b!2751253 (= lt!972943 (tail!4358 lt!972950))))

(declare-fun apply!7433 (BalanceConc!19472 Int) C!16252)

(assert (=> b!2751253 (= lt!972941 (apply!7433 input!5495 0))))

(declare-fun head!6120 (List!31936) C!16252)

(assert (=> b!2751253 (isPrefix!2524 (++!7884 Nil!31836 (Cons!31836 (head!6120 lt!972953) Nil!31836)) lt!972950)))

(declare-fun lt!972933 () Unit!45585)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!429 (List!31936 List!31936) Unit!45585)

(assert (=> b!2751253 (= lt!972933 (lemmaAddHeadSuffixToPrefixStillPrefix!429 Nil!31836 lt!972950))))

(declare-fun lt!972960 () Unit!45585)

(assert (=> b!2751253 (= lt!972960 e!1734497)))

(declare-fun c!445114 () Bool)

(declare-fun lt!972937 () Int)

(assert (=> b!2751253 (= c!445114 (= lt!972937 lt!972946))))

(declare-fun size!24594 (List!31936) Int)

(assert (=> b!2751253 (<= lt!972937 (size!24594 lt!972950))))

(assert (=> b!2751253 (= lt!972937 (size!24594 Nil!31836))))

(declare-fun lt!972932 () Unit!45585)

(declare-fun lemmaIsPrefixThenSmallerEqSize!232 (List!31936 List!31936) Unit!45585)

(assert (=> b!2751253 (= lt!972932 (lemmaIsPrefixThenSmallerEqSize!232 Nil!31836 lt!972950))))

(declare-fun drop!1679 (List!31936 Int) List!31936)

(declare-fun apply!7434 (List!31936 Int) C!16252)

(assert (=> b!2751253 (= (head!6120 (drop!1679 lt!972950 0)) (apply!7434 lt!972950 0))))

(declare-fun lt!972931 () Unit!45585)

(declare-fun lemmaDropApply!885 (List!31936 Int) Unit!45585)

(assert (=> b!2751253 (= lt!972931 (lemmaDropApply!885 lt!972950 0))))

(declare-fun lt!972959 () List!31936)

(declare-fun lt!972955 () List!31936)

(assert (=> b!2751253 (and (= lt!972959 Nil!31836) (= lt!972955 lt!972950))))

(declare-fun lt!972938 () Unit!45585)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!311 (List!31936 List!31936 List!31936 List!31936) Unit!45585)

(assert (=> b!2751253 (= lt!972938 (lemmaConcatSameAndSameSizesThenSameLists!311 lt!972959 lt!972955 Nil!31836 lt!972950))))

(declare-datatypes ((tuple2!31800 0))(
  ( (tuple2!31801 (_1!18658 BalanceConc!19472) (_2!18658 BalanceConc!19472)) )
))
(declare-fun lt!972947 () tuple2!31800)

(assert (=> b!2751253 (= lt!972955 (list!12029 (_2!18658 lt!972947)))))

(assert (=> b!2751253 (= lt!972959 (list!12029 (_1!18658 lt!972947)))))

(declare-fun splitAt!74 (BalanceConc!19472 Int) tuple2!31800)

(assert (=> b!2751253 (= lt!972947 (splitAt!74 input!5495 0))))

(assert (=> b!2751253 (= e!1734485 e!1734481)))

(declare-fun b!2751254 () Bool)

(declare-fun res!1153547 () Bool)

(assert (=> b!2751254 (=> (not res!1153547) (not e!1734496))))

(assert (=> b!2751254 (= res!1153547 (valid!2870 (_3!2755 lt!972935)))))

(declare-fun b!2751255 () Bool)

(declare-fun e!1734477 () Bool)

(assert (=> b!2751255 (= e!1734477 e!1734484)))

(declare-fun b!2751256 () Bool)

(declare-fun call!177562 () Int)

(assert (=> b!2751256 (= e!1734475 (= (_1!18655 lt!972928) call!177562))))

(declare-fun b!2751257 () Bool)

(assert (=> b!2751257 (= e!1734488 (tuple3!4575 0 (_3!2755 lt!972954) (_2!18655 lt!972954)))))

(declare-fun b!2751258 () Bool)

(assert (=> b!2751258 (= e!1734500 (= (_1!18655 lt!972957) call!177562))))

(declare-fun e!1734495 () Bool)

(assert (=> b!2751259 (= e!1734495 (and e!1734486 tp!869085))))

(declare-fun b!2751260 () Bool)

(assert (=> b!2751260 (= e!1734482 e!1734477)))

(declare-fun b!2751261 () Bool)

(assert (=> b!2751261 (= e!1734492 e!1734489)))

(declare-fun mapIsEmpty!16838 () Bool)

(assert (=> mapIsEmpty!16838 mapRes!16838))

(declare-fun bm!177561 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!431 (List!31936 List!31936 List!31936) Unit!45585)

(assert (=> bm!177561 (= call!177560 (lemmaIsPrefixSameLengthThenSameList!431 lt!972950 Nil!31836 lt!972950))))

(declare-fun b!2751262 () Bool)

(declare-fun tp!869087 () Bool)

(assert (=> b!2751262 (= e!1734479 (and tp!869087 mapRes!16837))))

(declare-fun condMapEmpty!16837 () Bool)

(declare-fun mapDefault!16838 () List!31935)

(assert (=> b!2751262 (= condMapEmpty!16837 (= (arr!5884 (_values!3984 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31935)) mapDefault!16838)))))

(declare-fun tp!869094 () Bool)

(declare-fun setNonEmpty!21936 () Bool)

(declare-fun setElem!21936 () Context!4530)

(declare-fun inv!43223 (Context!4530) Bool)

(assert (=> setNonEmpty!21936 (= setRes!21936 (and tp!869094 (inv!43223 setElem!21936) e!1734480))))

(declare-fun setRest!21936 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21936 (= z!3597 ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21936 true) setRest!21936))))

(declare-fun bm!177562 () Bool)

(assert (=> bm!177562 (= call!177563 (findLongestMatchInnerZipperFastMem!4 (ite c!445113 (_2!18656 lt!972944) (_2!18656 lt!972949)) (ite c!445113 (_3!2756 lt!972944) (_3!2756 lt!972949)) (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949)) lt!972939 1 lt!972943 input!5495 lt!972946))))

(declare-fun b!2751263 () Bool)

(assert (=> b!2751263 (= e!1734487 e!1734495)))

(declare-fun bm!177563 () Bool)

(assert (=> bm!177563 (= call!177562 (findLongestMatchInnerZipperFast!5 (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949)) lt!972939 1 lt!972943 input!5495 lt!972946))))

(assert (= (and start!266644 res!1153549) b!2751249))

(assert (= (and b!2751249 res!1153544) b!2751232))

(assert (= (and b!2751232 res!1153543) b!2751244))

(assert (= (and b!2751244 res!1153542) b!2751236))

(assert (= (and b!2751232 res!1153550) b!2751254))

(assert (= (and b!2751254 res!1153547) b!2751243))

(assert (= (and b!2751232 c!445115) b!2751257))

(assert (= (and b!2751232 (not c!445115)) b!2751252))

(assert (= (and b!2751252 c!445112) b!2751238))

(assert (= (and b!2751252 (not c!445112)) b!2751253))

(assert (= (and b!2751253 c!445114) b!2751235))

(assert (= (and b!2751253 (not c!445114)) b!2751233))

(assert (= (and b!2751253 c!445113) b!2751245))

(assert (= (and b!2751253 (not c!445113)) b!2751239))

(assert (= (and b!2751245 res!1153551) b!2751246))

(assert (= (and b!2751246 res!1153546) b!2751256))

(assert (= (and b!2751239 res!1153545) b!2751237))

(assert (= (and b!2751237 res!1153548) b!2751258))

(assert (= (or b!2751246 b!2751237) bm!177555))

(assert (= (or b!2751245 b!2751239) bm!177556))

(assert (= (or b!2751245 b!2751239) bm!177560))

(assert (= (or b!2751256 b!2751258) bm!177563))

(assert (= (or b!2751245 b!2751239) bm!177562))

(assert (= (or b!2751238 b!2751253) bm!177559))

(assert (= (or b!2751238 b!2751235) bm!177558))

(assert (= (or b!2751238 b!2751235) bm!177561))

(assert (= (or b!2751238 b!2751235) bm!177557))

(assert (= (and b!2751231 condMapEmpty!16838) mapIsEmpty!16838))

(assert (= (and b!2751231 (not condMapEmpty!16838)) mapNonEmpty!16838))

(assert (= b!2751242 b!2751231))

(assert (= b!2751251 b!2751242))

(assert (= b!2751247 b!2751251))

(assert (= (and b!2751234 ((_ is LongMap!3702) (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))) b!2751247))

(assert (= b!2751259 b!2751234))

(assert (= (and b!2751263 ((_ is HashMap!3608) (cache!3751 cacheUp!820))) b!2751259))

(assert (= start!266644 b!2751263))

(assert (= (and b!2751262 condMapEmpty!16837) mapIsEmpty!16837))

(assert (= (and b!2751262 (not condMapEmpty!16837)) mapNonEmpty!16837))

(assert (= b!2751240 b!2751262))

(assert (= b!2751255 b!2751240))

(assert (= b!2751260 b!2751255))

(assert (= (and b!2751250 ((_ is LongMap!3703) (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))) b!2751260))

(assert (= b!2751248 b!2751250))

(assert (= (and b!2751261 ((_ is HashMap!3609) (cache!3752 cacheDown!939))) b!2751248))

(assert (= start!266644 b!2751261))

(assert (= (and start!266644 condSetEmpty!21936) setIsEmpty!21936))

(assert (= (and start!266644 (not condSetEmpty!21936)) setNonEmpty!21936))

(assert (= setNonEmpty!21936 b!2751241))

(assert (= start!266644 b!2751230))

(declare-fun m!3165979 () Bool)

(assert (=> b!2751230 m!3165979))

(declare-fun m!3165981 () Bool)

(assert (=> b!2751242 m!3165981))

(declare-fun m!3165983 () Bool)

(assert (=> b!2751242 m!3165983))

(declare-fun m!3165985 () Bool)

(assert (=> bm!177562 m!3165985))

(declare-fun m!3165987 () Bool)

(assert (=> b!2751249 m!3165987))

(declare-fun m!3165989 () Bool)

(assert (=> bm!177561 m!3165989))

(declare-fun m!3165991 () Bool)

(assert (=> b!2751243 m!3165991))

(declare-fun m!3165993 () Bool)

(assert (=> bm!177563 m!3165993))

(declare-fun m!3165995 () Bool)

(assert (=> setNonEmpty!21936 m!3165995))

(declare-fun m!3165997 () Bool)

(assert (=> bm!177556 m!3165997))

(declare-fun m!3165999 () Bool)

(assert (=> bm!177557 m!3165999))

(declare-fun m!3166001 () Bool)

(assert (=> b!2751240 m!3166001))

(declare-fun m!3166003 () Bool)

(assert (=> b!2751240 m!3166003))

(declare-fun m!3166005 () Bool)

(assert (=> bm!177560 m!3166005))

(declare-fun m!3166007 () Bool)

(assert (=> mapNonEmpty!16837 m!3166007))

(declare-fun m!3166009 () Bool)

(assert (=> bm!177558 m!3166009))

(declare-fun m!3166011 () Bool)

(assert (=> b!2751253 m!3166011))

(declare-fun m!3166013 () Bool)

(assert (=> b!2751253 m!3166013))

(declare-fun m!3166015 () Bool)

(assert (=> b!2751253 m!3166015))

(declare-fun m!3166017 () Bool)

(assert (=> b!2751253 m!3166017))

(declare-fun m!3166019 () Bool)

(assert (=> b!2751253 m!3166019))

(declare-fun m!3166021 () Bool)

(assert (=> b!2751253 m!3166021))

(declare-fun m!3166023 () Bool)

(assert (=> b!2751253 m!3166023))

(assert (=> b!2751253 m!3166013))

(declare-fun m!3166025 () Bool)

(assert (=> b!2751253 m!3166025))

(declare-fun m!3166027 () Bool)

(assert (=> b!2751253 m!3166027))

(declare-fun m!3166029 () Bool)

(assert (=> b!2751253 m!3166029))

(declare-fun m!3166031 () Bool)

(assert (=> b!2751253 m!3166031))

(declare-fun m!3166033 () Bool)

(assert (=> b!2751253 m!3166033))

(declare-fun m!3166035 () Bool)

(assert (=> b!2751253 m!3166035))

(assert (=> b!2751253 m!3166033))

(declare-fun m!3166037 () Bool)

(assert (=> b!2751253 m!3166037))

(declare-fun m!3166039 () Bool)

(assert (=> b!2751253 m!3166039))

(declare-fun m!3166041 () Bool)

(assert (=> b!2751253 m!3166041))

(declare-fun m!3166043 () Bool)

(assert (=> b!2751253 m!3166043))

(declare-fun m!3166045 () Bool)

(assert (=> b!2751253 m!3166045))

(declare-fun m!3166047 () Bool)

(assert (=> b!2751253 m!3166047))

(declare-fun m!3166049 () Bool)

(assert (=> b!2751253 m!3166049))

(declare-fun m!3166051 () Bool)

(assert (=> bm!177555 m!3166051))

(assert (=> b!2751236 m!3165991))

(declare-fun m!3166053 () Bool)

(assert (=> b!2751232 m!3166053))

(declare-fun m!3166055 () Bool)

(assert (=> b!2751232 m!3166055))

(declare-fun m!3166057 () Bool)

(assert (=> b!2751232 m!3166057))

(declare-fun m!3166059 () Bool)

(assert (=> b!2751232 m!3166059))

(declare-fun m!3166061 () Bool)

(assert (=> b!2751232 m!3166061))

(declare-fun m!3166063 () Bool)

(assert (=> b!2751232 m!3166063))

(declare-fun m!3166065 () Bool)

(assert (=> b!2751232 m!3166065))

(declare-fun m!3166067 () Bool)

(assert (=> b!2751232 m!3166067))

(declare-fun m!3166069 () Bool)

(assert (=> b!2751232 m!3166069))

(declare-fun m!3166071 () Bool)

(assert (=> b!2751232 m!3166071))

(declare-fun m!3166073 () Bool)

(assert (=> b!2751232 m!3166073))

(declare-fun m!3166075 () Bool)

(assert (=> b!2751232 m!3166075))

(declare-fun m!3166077 () Bool)

(assert (=> bm!177559 m!3166077))

(declare-fun m!3166079 () Bool)

(assert (=> mapNonEmpty!16838 m!3166079))

(declare-fun m!3166081 () Bool)

(assert (=> b!2751244 m!3166081))

(declare-fun m!3166083 () Bool)

(assert (=> b!2751254 m!3166083))

(declare-fun m!3166085 () Bool)

(assert (=> start!266644 m!3166085))

(declare-fun m!3166087 () Bool)

(assert (=> start!266644 m!3166087))

(declare-fun m!3166089 () Bool)

(assert (=> start!266644 m!3166089))

(declare-fun m!3166091 () Bool)

(assert (=> start!266644 m!3166091))

(check-sat (not b!2751236) (not mapNonEmpty!16838) b_and!202589 (not bm!177559) (not bm!177558) b_and!202587 (not b_next!78553) (not bm!177556) (not b_next!78551) (not bm!177561) (not b!2751232) (not b!2751262) (not b!2751254) (not bm!177555) (not b!2751253) (not b!2751249) (not b!2751243) (not b!2751231) (not b!2751230) (not b!2751240) (not start!266644) b_and!202583 (not b!2751242) (not bm!177557) (not b!2751244) (not b_next!78555) (not b!2751241) (not bm!177560) (not mapNonEmpty!16837) (not setNonEmpty!21936) (not bm!177562) (not b_next!78549) (not bm!177563) b_and!202585)
(check-sat b_and!202589 b_and!202587 b_and!202583 (not b_next!78553) (not b_next!78555) (not b_next!78551) (not b_next!78549) b_and!202585)
(get-model)

(declare-fun d!796458 () Bool)

(declare-fun lt!972963 () List!31936)

(assert (=> d!796458 (= (++!7884 Nil!31836 lt!972963) lt!972950)))

(declare-fun e!1734504 () List!31936)

(assert (=> d!796458 (= lt!972963 e!1734504)))

(declare-fun c!445120 () Bool)

(assert (=> d!796458 (= c!445120 ((_ is Cons!31836) Nil!31836))))

(assert (=> d!796458 (>= (size!24594 lt!972950) (size!24594 Nil!31836))))

(assert (=> d!796458 (= (getSuffix!1210 lt!972950 Nil!31836) lt!972963)))

(declare-fun b!2751268 () Bool)

(assert (=> b!2751268 (= e!1734504 (getSuffix!1210 (tail!4358 lt!972950) (t!228040 Nil!31836)))))

(declare-fun b!2751269 () Bool)

(assert (=> b!2751269 (= e!1734504 lt!972950)))

(assert (= (and d!796458 c!445120) b!2751268))

(assert (= (and d!796458 (not c!445120)) b!2751269))

(declare-fun m!3166093 () Bool)

(assert (=> d!796458 m!3166093))

(assert (=> d!796458 m!3166045))

(assert (=> d!796458 m!3166049))

(assert (=> b!2751268 m!3166023))

(assert (=> b!2751268 m!3166023))

(declare-fun m!3166095 () Bool)

(assert (=> b!2751268 m!3166095))

(assert (=> b!2751232 d!796458))

(declare-fun d!796460 () Bool)

(assert (=> d!796460 (isPrefix!2524 Nil!31836 (++!7884 Nil!31836 lt!972950))))

(declare-fun lt!972966 () Unit!45585)

(declare-fun choose!16083 (List!31936 List!31936) Unit!45585)

(assert (=> d!796460 (= lt!972966 (choose!16083 Nil!31836 lt!972950))))

(assert (=> d!796460 (= (lemmaConcatTwoListThenFirstIsPrefix!1638 Nil!31836 lt!972950) lt!972966)))

(declare-fun bs!490386 () Bool)

(assert (= bs!490386 d!796460))

(assert (=> bs!490386 m!3166065))

(assert (=> bs!490386 m!3166065))

(declare-fun m!3166097 () Bool)

(assert (=> bs!490386 m!3166097))

(declare-fun m!3166099 () Bool)

(assert (=> bs!490386 m!3166099))

(assert (=> b!2751232 d!796460))

(declare-fun d!796462 () Bool)

(declare-fun list!12030 (Conc!9929) List!31936)

(assert (=> d!796462 (= (list!12029 input!5495) (list!12030 (c!445117 input!5495)))))

(declare-fun bs!490387 () Bool)

(assert (= bs!490387 d!796462))

(declare-fun m!3166101 () Bool)

(assert (=> bs!490387 m!3166101))

(assert (=> b!2751232 d!796462))

(declare-fun d!796464 () Bool)

(declare-fun e!1734507 () Bool)

(assert (=> d!796464 e!1734507))

(declare-fun res!1153556 () Bool)

(assert (=> d!796464 (=> (not res!1153556) (not e!1734507))))

(declare-fun lt!972969 () tuple3!4570)

(assert (=> d!796464 (= res!1153556 (valid!2871 (_2!18655 lt!972969)))))

(declare-fun choose!16084 (CacheUp!2314 CacheDown!2434 (InoxSet Context!4530) List!31936 Int List!31936 BalanceConc!19472 Int) tuple3!4570)

(assert (=> d!796464 (= lt!972969 (choose!16084 (_2!18655 lt!972954) (_3!2755 lt!972954) z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946))))

(assert (=> d!796464 (= (++!7884 Nil!31836 lt!972950) (list!12029 input!5495))))

(assert (=> d!796464 (= (findLongestMatchInnerZipperFastMem!4 (_2!18655 lt!972954) (_3!2755 lt!972954) z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946) lt!972969)))

(declare-fun b!2751274 () Bool)

(declare-fun res!1153557 () Bool)

(assert (=> b!2751274 (=> (not res!1153557) (not e!1734507))))

(assert (=> b!2751274 (= res!1153557 (valid!2870 (_3!2755 lt!972969)))))

(declare-fun b!2751275 () Bool)

(assert (=> b!2751275 (= e!1734507 (= (_1!18655 lt!972969) (findLongestMatchInnerZipperFast!5 z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946)))))

(assert (= (and d!796464 res!1153556) b!2751274))

(assert (= (and b!2751274 res!1153557) b!2751275))

(declare-fun m!3166103 () Bool)

(assert (=> d!796464 m!3166103))

(declare-fun m!3166105 () Bool)

(assert (=> d!796464 m!3166105))

(assert (=> d!796464 m!3166065))

(assert (=> d!796464 m!3166057))

(declare-fun m!3166107 () Bool)

(assert (=> b!2751274 m!3166107))

(assert (=> b!2751275 m!3165991))

(assert (=> b!2751232 d!796464))

(declare-fun d!796466 () Bool)

(declare-fun validCacheMapUp!349 (MutableMap!3608) Bool)

(assert (=> d!796466 (= (valid!2871 (_2!18655 lt!972954)) (validCacheMapUp!349 (cache!3751 (_2!18655 lt!972954))))))

(declare-fun bs!490388 () Bool)

(assert (= bs!490388 d!796466))

(declare-fun m!3166109 () Bool)

(assert (=> bs!490388 m!3166109))

(assert (=> b!2751232 d!796466))

(declare-fun d!796468 () Bool)

(assert (=> d!796468 (= lt!972950 lt!972953)))

(declare-fun lt!972972 () Unit!45585)

(declare-fun choose!16085 (List!31936 List!31936 List!31936 List!31936 List!31936) Unit!45585)

(assert (=> d!796468 (= lt!972972 (choose!16085 Nil!31836 lt!972950 Nil!31836 lt!972953 lt!972950))))

(assert (=> d!796468 (isPrefix!2524 Nil!31836 lt!972950)))

(assert (=> d!796468 (= (lemmaSamePrefixThenSameSuffix!1112 Nil!31836 lt!972950 Nil!31836 lt!972953 lt!972950) lt!972972)))

(declare-fun bs!490389 () Bool)

(assert (= bs!490389 d!796468))

(declare-fun m!3166111 () Bool)

(assert (=> bs!490389 m!3166111))

(declare-fun m!3166113 () Bool)

(assert (=> bs!490389 m!3166113))

(assert (=> b!2751232 d!796468))

(declare-fun bs!490390 () Bool)

(declare-fun b!2751280 () Bool)

(declare-fun d!796470 () Bool)

(assert (= bs!490390 (and b!2751280 d!796470)))

(declare-fun lambda!100892 () Int)

(declare-fun lambda!100891 () Int)

(assert (=> bs!490390 (not (= lambda!100892 lambda!100891))))

(declare-fun bs!490391 () Bool)

(declare-fun b!2751281 () Bool)

(assert (= bs!490391 (and b!2751281 d!796470)))

(declare-fun lambda!100893 () Int)

(assert (=> bs!490391 (not (= lambda!100893 lambda!100891))))

(declare-fun bs!490392 () Bool)

(assert (= bs!490392 (and b!2751281 b!2751280)))

(assert (=> bs!490392 (= lambda!100893 lambda!100892)))

(declare-fun e!1734514 () Unit!45585)

(declare-fun Unit!45589 () Unit!45585)

(assert (=> b!2751280 (= e!1734514 Unit!45589)))

(declare-datatypes ((List!31937 0))(
  ( (Nil!31837) (Cons!31837 (h!37257 Context!4530) (t!228041 List!31937)) )
))
(declare-fun lt!972993 () List!31937)

(declare-fun call!177573 () List!31937)

(assert (=> b!2751280 (= lt!972993 call!177573)))

(declare-fun lt!972991 () Unit!45585)

(declare-fun lemmaNotForallThenExists!70 (List!31937 Int) Unit!45585)

(assert (=> b!2751280 (= lt!972991 (lemmaNotForallThenExists!70 lt!972993 lambda!100891))))

(declare-fun call!177574 () Bool)

(assert (=> b!2751280 call!177574))

(declare-fun lt!972989 () Unit!45585)

(assert (=> b!2751280 (= lt!972989 lt!972991)))

(declare-fun bm!177569 () Bool)

(declare-fun toList!1815 ((InoxSet Context!4530)) List!31937)

(assert (=> bm!177569 (= call!177573 (toList!1815 z!3597))))

(declare-fun bm!177568 () Bool)

(declare-fun lt!972990 () List!31937)

(declare-fun c!445131 () Bool)

(declare-fun exists!945 (List!31937 Int) Bool)

(assert (=> bm!177568 (= call!177574 (exists!945 (ite c!445131 lt!972993 lt!972990) (ite c!445131 lambda!100892 lambda!100893)))))

(declare-fun lt!972995 () Bool)

(declare-datatypes ((Option!6248 0))(
  ( (None!6247) (Some!6247 (v!33447 List!31936)) )
))
(declare-fun isEmpty!18063 (Option!6248) Bool)

(declare-fun getLanguageWitness!169 ((InoxSet Context!4530)) Option!6248)

(assert (=> d!796470 (= lt!972995 (isEmpty!18063 (getLanguageWitness!169 z!3597)))))

(declare-fun forall!6584 ((InoxSet Context!4530) Int) Bool)

(assert (=> d!796470 (= lt!972995 (forall!6584 z!3597 lambda!100891))))

(declare-fun lt!972994 () Unit!45585)

(assert (=> d!796470 (= lt!972994 e!1734514)))

(assert (=> d!796470 (= c!445131 (not (forall!6584 z!3597 lambda!100891)))))

(assert (=> d!796470 (= (lostCauseZipper!414 z!3597) lt!972995)))

(declare-fun Unit!45590 () Unit!45585)

(assert (=> b!2751281 (= e!1734514 Unit!45590)))

(assert (=> b!2751281 (= lt!972990 call!177573)))

(declare-fun lt!972996 () Unit!45585)

(declare-fun lemmaForallThenNotExists!70 (List!31937 Int) Unit!45585)

(assert (=> b!2751281 (= lt!972996 (lemmaForallThenNotExists!70 lt!972990 lambda!100891))))

(assert (=> b!2751281 (not call!177574)))

(declare-fun lt!972992 () Unit!45585)

(assert (=> b!2751281 (= lt!972992 lt!972996)))

(assert (= (and d!796470 c!445131) b!2751280))

(assert (= (and d!796470 (not c!445131)) b!2751281))

(assert (= (or b!2751280 b!2751281) bm!177568))

(assert (= (or b!2751280 b!2751281) bm!177569))

(declare-fun m!3166115 () Bool)

(assert (=> d!796470 m!3166115))

(assert (=> d!796470 m!3166115))

(declare-fun m!3166117 () Bool)

(assert (=> d!796470 m!3166117))

(declare-fun m!3166119 () Bool)

(assert (=> d!796470 m!3166119))

(assert (=> d!796470 m!3166119))

(declare-fun m!3166121 () Bool)

(assert (=> bm!177569 m!3166121))

(declare-fun m!3166123 () Bool)

(assert (=> b!2751280 m!3166123))

(declare-fun m!3166125 () Bool)

(assert (=> b!2751281 m!3166125))

(declare-fun m!3166127 () Bool)

(assert (=> bm!177568 m!3166127))

(assert (=> b!2751232 d!796470))

(declare-fun d!796472 () Bool)

(declare-fun e!1734522 () Bool)

(assert (=> d!796472 e!1734522))

(declare-fun res!1153568 () Bool)

(assert (=> d!796472 (=> res!1153568 e!1734522)))

(declare-fun lt!972999 () Bool)

(assert (=> d!796472 (= res!1153568 (not lt!972999))))

(declare-fun e!1734523 () Bool)

(assert (=> d!796472 (= lt!972999 e!1734523)))

(declare-fun res!1153569 () Bool)

(assert (=> d!796472 (=> res!1153569 e!1734523)))

(assert (=> d!796472 (= res!1153569 ((_ is Nil!31836) Nil!31836))))

(assert (=> d!796472 (= (isPrefix!2524 Nil!31836 lt!972945) lt!972999)))

(declare-fun b!2751290 () Bool)

(declare-fun e!1734521 () Bool)

(assert (=> b!2751290 (= e!1734523 e!1734521)))

(declare-fun res!1153567 () Bool)

(assert (=> b!2751290 (=> (not res!1153567) (not e!1734521))))

(assert (=> b!2751290 (= res!1153567 (not ((_ is Nil!31836) lt!972945)))))

(declare-fun b!2751291 () Bool)

(declare-fun res!1153566 () Bool)

(assert (=> b!2751291 (=> (not res!1153566) (not e!1734521))))

(assert (=> b!2751291 (= res!1153566 (= (head!6120 Nil!31836) (head!6120 lt!972945)))))

(declare-fun b!2751293 () Bool)

(assert (=> b!2751293 (= e!1734522 (>= (size!24594 lt!972945) (size!24594 Nil!31836)))))

(declare-fun b!2751292 () Bool)

(assert (=> b!2751292 (= e!1734521 (isPrefix!2524 (tail!4358 Nil!31836) (tail!4358 lt!972945)))))

(assert (= (and d!796472 (not res!1153569)) b!2751290))

(assert (= (and b!2751290 res!1153567) b!2751291))

(assert (= (and b!2751291 res!1153566) b!2751292))

(assert (= (and d!796472 (not res!1153568)) b!2751293))

(declare-fun m!3166129 () Bool)

(assert (=> b!2751291 m!3166129))

(declare-fun m!3166131 () Bool)

(assert (=> b!2751291 m!3166131))

(declare-fun m!3166133 () Bool)

(assert (=> b!2751293 m!3166133))

(assert (=> b!2751293 m!3166049))

(declare-fun m!3166135 () Bool)

(assert (=> b!2751292 m!3166135))

(declare-fun m!3166137 () Bool)

(assert (=> b!2751292 m!3166137))

(assert (=> b!2751292 m!3166135))

(assert (=> b!2751292 m!3166137))

(declare-fun m!3166139 () Bool)

(assert (=> b!2751292 m!3166139))

(assert (=> b!2751232 d!796472))

(declare-fun d!796474 () Bool)

(declare-fun e!1734524 () Bool)

(assert (=> d!796474 e!1734524))

(declare-fun res!1153570 () Bool)

(assert (=> d!796474 (=> (not res!1153570) (not e!1734524))))

(declare-fun lt!973000 () tuple3!4570)

(assert (=> d!796474 (= res!1153570 (valid!2871 (_2!18655 lt!973000)))))

(assert (=> d!796474 (= lt!973000 (choose!16084 cacheUp!820 cacheDown!939 z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946))))

(assert (=> d!796474 (= (++!7884 Nil!31836 lt!972950) (list!12029 input!5495))))

(assert (=> d!796474 (= (findLongestMatchInnerZipperFastMem!4 cacheUp!820 cacheDown!939 z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946) lt!973000)))

(declare-fun b!2751294 () Bool)

(declare-fun res!1153571 () Bool)

(assert (=> b!2751294 (=> (not res!1153571) (not e!1734524))))

(assert (=> b!2751294 (= res!1153571 (valid!2870 (_3!2755 lt!973000)))))

(declare-fun b!2751295 () Bool)

(assert (=> b!2751295 (= e!1734524 (= (_1!18655 lt!973000) (findLongestMatchInnerZipperFast!5 z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946)))))

(assert (= (and d!796474 res!1153570) b!2751294))

(assert (= (and b!2751294 res!1153571) b!2751295))

(declare-fun m!3166141 () Bool)

(assert (=> d!796474 m!3166141))

(declare-fun m!3166143 () Bool)

(assert (=> d!796474 m!3166143))

(assert (=> d!796474 m!3166065))

(assert (=> d!796474 m!3166057))

(declare-fun m!3166145 () Bool)

(assert (=> b!2751294 m!3166145))

(assert (=> b!2751295 m!3165991))

(assert (=> b!2751232 d!796474))

(declare-fun d!796476 () Bool)

(declare-fun lt!973003 () Int)

(assert (=> d!796476 (= lt!973003 (size!24594 (list!12029 input!5495)))))

(declare-fun size!24595 (Conc!9929) Int)

(assert (=> d!796476 (= lt!973003 (size!24595 (c!445117 input!5495)))))

(assert (=> d!796476 (= (size!24593 input!5495) lt!973003)))

(declare-fun bs!490393 () Bool)

(assert (= bs!490393 d!796476))

(assert (=> bs!490393 m!3166057))

(assert (=> bs!490393 m!3166057))

(declare-fun m!3166147 () Bool)

(assert (=> bs!490393 m!3166147))

(declare-fun m!3166149 () Bool)

(assert (=> bs!490393 m!3166149))

(assert (=> b!2751232 d!796476))

(declare-fun d!796478 () Bool)

(assert (=> d!796478 (= (valid!2871 (_2!18655 lt!972935)) (validCacheMapUp!349 (cache!3751 (_2!18655 lt!972935))))))

(declare-fun bs!490394 () Bool)

(assert (= bs!490394 d!796478))

(declare-fun m!3166151 () Bool)

(assert (=> bs!490394 m!3166151))

(assert (=> b!2751232 d!796478))

(declare-fun b!2751307 () Bool)

(declare-fun e!1734529 () Bool)

(declare-fun lt!973006 () List!31936)

(assert (=> b!2751307 (= e!1734529 (or (not (= lt!972950 Nil!31836)) (= lt!973006 Nil!31836)))))

(declare-fun b!2751306 () Bool)

(declare-fun res!1153577 () Bool)

(assert (=> b!2751306 (=> (not res!1153577) (not e!1734529))))

(assert (=> b!2751306 (= res!1153577 (= (size!24594 lt!973006) (+ (size!24594 Nil!31836) (size!24594 lt!972950))))))

(declare-fun b!2751305 () Bool)

(declare-fun e!1734530 () List!31936)

(assert (=> b!2751305 (= e!1734530 (Cons!31836 (h!37256 Nil!31836) (++!7884 (t!228040 Nil!31836) lt!972950)))))

(declare-fun b!2751304 () Bool)

(assert (=> b!2751304 (= e!1734530 lt!972950)))

(declare-fun d!796480 () Bool)

(assert (=> d!796480 e!1734529))

(declare-fun res!1153576 () Bool)

(assert (=> d!796480 (=> (not res!1153576) (not e!1734529))))

(declare-fun content!4485 (List!31936) (InoxSet C!16252))

(assert (=> d!796480 (= res!1153576 (= (content!4485 lt!973006) ((_ map or) (content!4485 Nil!31836) (content!4485 lt!972950))))))

(assert (=> d!796480 (= lt!973006 e!1734530)))

(declare-fun c!445134 () Bool)

(assert (=> d!796480 (= c!445134 ((_ is Nil!31836) Nil!31836))))

(assert (=> d!796480 (= (++!7884 Nil!31836 lt!972950) lt!973006)))

(assert (= (and d!796480 c!445134) b!2751304))

(assert (= (and d!796480 (not c!445134)) b!2751305))

(assert (= (and d!796480 res!1153576) b!2751306))

(assert (= (and b!2751306 res!1153577) b!2751307))

(declare-fun m!3166153 () Bool)

(assert (=> b!2751306 m!3166153))

(assert (=> b!2751306 m!3166049))

(assert (=> b!2751306 m!3166045))

(declare-fun m!3166155 () Bool)

(assert (=> b!2751305 m!3166155))

(declare-fun m!3166157 () Bool)

(assert (=> d!796480 m!3166157))

(declare-fun m!3166159 () Bool)

(assert (=> d!796480 m!3166159))

(declare-fun m!3166161 () Bool)

(assert (=> d!796480 m!3166161))

(assert (=> b!2751232 d!796480))

(declare-fun b!2751332 () Bool)

(declare-fun e!1734547 () Int)

(declare-fun lt!973119 () Int)

(assert (=> b!2751332 (= e!1734547 (ite (= lt!973119 0) 1 lt!973119))))

(declare-fun call!177596 () Int)

(assert (=> b!2751332 (= lt!973119 call!177596)))

(declare-fun call!177600 () List!31936)

(declare-fun c!445147 () Bool)

(declare-fun bm!177590 () Bool)

(declare-fun lt!973094 () tuple2!31800)

(assert (=> bm!177590 (= call!177600 (list!12029 (ite c!445147 input!5495 (_1!18658 lt!973094))))))

(declare-fun b!2751333 () Bool)

(declare-fun e!1734546 () Unit!45585)

(declare-fun Unit!45591 () Unit!45585)

(assert (=> b!2751333 (= e!1734546 Unit!45591)))

(declare-fun b!2751334 () Bool)

(declare-fun Unit!45592 () Unit!45585)

(assert (=> b!2751334 (= e!1734546 Unit!45592)))

(declare-fun lt!973099 () List!31936)

(assert (=> b!2751334 (= lt!973099 (list!12029 input!5495))))

(declare-fun lt!973091 () List!31936)

(assert (=> b!2751334 (= lt!973091 (list!12029 input!5495))))

(declare-fun lt!973111 () Unit!45585)

(declare-fun call!177601 () Unit!45585)

(assert (=> b!2751334 (= lt!973111 call!177601)))

(declare-fun call!177603 () Bool)

(assert (=> b!2751334 call!177603))

(declare-fun lt!973110 () Unit!45585)

(assert (=> b!2751334 (= lt!973110 lt!973111)))

(declare-fun lt!973098 () List!31936)

(assert (=> b!2751334 (= lt!973098 (list!12029 input!5495))))

(declare-fun lt!973103 () Unit!45585)

(declare-fun call!177597 () Unit!45585)

(assert (=> b!2751334 (= lt!973103 call!177597)))

(assert (=> b!2751334 (= lt!973098 lt!972939)))

(declare-fun lt!973126 () Unit!45585)

(assert (=> b!2751334 (= lt!973126 lt!973103)))

(assert (=> b!2751334 false))

(declare-fun b!2751335 () Bool)

(declare-fun e!1734543 () List!31936)

(assert (=> b!2751335 (= e!1734543 call!177600)))

(declare-fun call!177599 () (InoxSet Context!4530))

(declare-fun call!177598 () C!16252)

(declare-fun bm!177591 () Bool)

(declare-fun derivationStepZipper!342 ((InoxSet Context!4530) C!16252) (InoxSet Context!4530))

(assert (=> bm!177591 (= call!177599 (derivationStepZipper!342 (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949)) call!177598))))

(declare-fun lt!973096 () List!31936)

(declare-fun lt!973105 () List!31936)

(declare-fun bm!177592 () Bool)

(assert (=> bm!177592 (= call!177603 (isPrefix!2524 (ite c!445147 lt!973096 lt!973099) (ite c!445147 lt!973105 lt!973091)))))

(declare-fun b!2751336 () Bool)

(declare-fun e!1734544 () Int)

(declare-fun e!1734545 () Int)

(assert (=> b!2751336 (= e!1734544 e!1734545)))

(assert (=> b!2751336 (= c!445147 (= 1 lt!972946))))

(declare-fun d!796482 () Bool)

(declare-fun lt!973104 () Int)

(declare-datatypes ((tuple2!31802 0))(
  ( (tuple2!31803 (_1!18659 List!31936) (_2!18659 List!31936)) )
))
(declare-fun findLongestMatchInnerZipper!1 ((InoxSet Context!4530) List!31936 Int List!31936 List!31936 Int) tuple2!31802)

(assert (=> d!796482 (= (size!24594 (_1!18659 (findLongestMatchInnerZipper!1 (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949)) lt!972939 1 lt!972943 (list!12029 input!5495) lt!972946))) lt!973104)))

(assert (=> d!796482 (= lt!973104 e!1734544)))

(declare-fun c!445148 () Bool)

(assert (=> d!796482 (= c!445148 (lostCauseZipper!414 (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949))))))

(declare-fun lt!973112 () Unit!45585)

(declare-fun Unit!45593 () Unit!45585)

(assert (=> d!796482 (= lt!973112 Unit!45593)))

(assert (=> d!796482 (= (getSuffix!1210 (list!12029 input!5495) lt!972939) lt!972943)))

(declare-fun lt!973128 () Unit!45585)

(declare-fun lt!973131 () Unit!45585)

(assert (=> d!796482 (= lt!973128 lt!973131)))

(declare-fun lt!973109 () List!31936)

(assert (=> d!796482 (= lt!972943 lt!973109)))

(assert (=> d!796482 (= lt!973131 (lemmaSamePrefixThenSameSuffix!1112 lt!972939 lt!972943 lt!972939 lt!973109 (list!12029 input!5495)))))

(assert (=> d!796482 (= lt!973109 (getSuffix!1210 (list!12029 input!5495) lt!972939))))

(declare-fun lt!973117 () Unit!45585)

(declare-fun lt!973092 () Unit!45585)

(assert (=> d!796482 (= lt!973117 lt!973092)))

(assert (=> d!796482 (isPrefix!2524 lt!972939 (++!7884 lt!972939 lt!972943))))

(assert (=> d!796482 (= lt!973092 (lemmaConcatTwoListThenFirstIsPrefix!1638 lt!972939 lt!972943))))

(assert (=> d!796482 (= (++!7884 lt!972939 lt!972943) (list!12029 input!5495))))

(assert (=> d!796482 (= (findLongestMatchInnerZipperFast!5 (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949)) lt!972939 1 lt!972943 input!5495 lt!972946) lt!973104)))

(declare-fun bm!177593 () Bool)

(declare-fun c!445150 () Bool)

(assert (=> bm!177593 (= c!445150 c!445147)))

(declare-fun lt!973107 () List!31936)

(assert (=> bm!177593 (= call!177597 (lemmaIsPrefixSameLengthThenSameList!431 (ite c!445147 lt!973107 lt!973098) lt!972939 e!1734543))))

(declare-fun b!2751337 () Bool)

(declare-fun e!1734548 () Int)

(assert (=> b!2751337 (= e!1734548 1)))

(declare-fun bm!177594 () Bool)

(assert (=> bm!177594 (= call!177601 (lemmaIsPrefixRefl!1650 (ite c!445147 lt!973096 lt!973099) (ite c!445147 lt!973105 lt!973091)))))

(declare-fun bm!177595 () Bool)

(declare-fun call!177602 () List!31936)

(assert (=> bm!177595 (= call!177602 (++!7884 lt!972939 (Cons!31836 call!177598 Nil!31836)))))

(declare-fun b!2751338 () Bool)

(assert (=> b!2751338 (= e!1734547 call!177596)))

(declare-fun b!2751339 () Bool)

(declare-fun c!445152 () Bool)

(declare-fun call!177595 () Bool)

(assert (=> b!2751339 (= c!445152 call!177595)))

(declare-fun lt!973132 () Unit!45585)

(declare-fun lt!973115 () Unit!45585)

(assert (=> b!2751339 (= lt!973132 lt!973115)))

(assert (=> b!2751339 (= lt!973107 lt!972939)))

(assert (=> b!2751339 (= lt!973115 call!177597)))

(assert (=> b!2751339 (= lt!973107 call!177600)))

(declare-fun lt!973122 () Unit!45585)

(declare-fun lt!973116 () Unit!45585)

(assert (=> b!2751339 (= lt!973122 lt!973116)))

(assert (=> b!2751339 call!177603))

(assert (=> b!2751339 (= lt!973116 call!177601)))

(assert (=> b!2751339 (= lt!973105 call!177600)))

(assert (=> b!2751339 (= lt!973096 call!177600)))

(assert (=> b!2751339 (= e!1734545 e!1734548)))

(declare-fun b!2751340 () Bool)

(assert (=> b!2751340 (= e!1734544 0)))

(declare-fun bm!177596 () Bool)

(assert (=> bm!177596 (= call!177595 (nullableZipper!602 (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949))))))

(declare-fun b!2751341 () Bool)

(assert (=> b!2751341 (= e!1734543 (list!12029 input!5495))))

(declare-fun bm!177597 () Bool)

(declare-fun call!177604 () List!31936)

(assert (=> bm!177597 (= call!177596 (findLongestMatchInnerZipperFast!5 call!177599 call!177602 (+ 1 1) call!177604 input!5495 lt!972946))))

(declare-fun b!2751342 () Bool)

(assert (=> b!2751342 (= e!1734548 0)))

(declare-fun b!2751343 () Bool)

(declare-fun c!445149 () Bool)

(assert (=> b!2751343 (= c!445149 call!177595)))

(declare-fun lt!973123 () Unit!45585)

(declare-fun lt!973125 () Unit!45585)

(assert (=> b!2751343 (= lt!973123 lt!973125)))

(declare-fun lt!973121 () List!31936)

(declare-fun lt!973093 () C!16252)

(declare-fun lt!973095 () List!31936)

(assert (=> b!2751343 (= (++!7884 (++!7884 lt!972939 (Cons!31836 lt!973093 Nil!31836)) lt!973121) lt!973095)))

(assert (=> b!2751343 (= lt!973125 (lemmaMoveElementToOtherListKeepsConcatEq!841 lt!972939 lt!973093 lt!973121 lt!973095))))

(assert (=> b!2751343 (= lt!973095 (list!12029 input!5495))))

(assert (=> b!2751343 (= lt!973121 (tail!4358 lt!972943))))

(assert (=> b!2751343 (= lt!973093 (apply!7433 input!5495 1))))

(declare-fun lt!973102 () Unit!45585)

(declare-fun lt!973101 () Unit!45585)

(assert (=> b!2751343 (= lt!973102 lt!973101)))

(declare-fun lt!973114 () List!31936)

(assert (=> b!2751343 (isPrefix!2524 (++!7884 lt!972939 (Cons!31836 (head!6120 (getSuffix!1210 lt!973114 lt!972939)) Nil!31836)) lt!973114)))

(assert (=> b!2751343 (= lt!973101 (lemmaAddHeadSuffixToPrefixStillPrefix!429 lt!972939 lt!973114))))

(assert (=> b!2751343 (= lt!973114 (list!12029 input!5495))))

(declare-fun lt!973113 () Unit!45585)

(assert (=> b!2751343 (= lt!973113 e!1734546)))

(declare-fun c!445151 () Bool)

(assert (=> b!2751343 (= c!445151 (= (size!24594 lt!972939) (size!24593 input!5495)))))

(declare-fun lt!973129 () Unit!45585)

(declare-fun lt!973127 () Unit!45585)

(assert (=> b!2751343 (= lt!973129 lt!973127)))

(declare-fun lt!973108 () List!31936)

(assert (=> b!2751343 (<= (size!24594 lt!972939) (size!24594 lt!973108))))

(assert (=> b!2751343 (= lt!973127 (lemmaIsPrefixThenSmallerEqSize!232 lt!972939 lt!973108))))

(assert (=> b!2751343 (= lt!973108 (list!12029 input!5495))))

(declare-fun lt!973120 () Unit!45585)

(declare-fun lt!973124 () Unit!45585)

(assert (=> b!2751343 (= lt!973120 lt!973124)))

(declare-fun lt!973106 () List!31936)

(assert (=> b!2751343 (= (head!6120 (drop!1679 lt!973106 1)) (apply!7434 lt!973106 1))))

(assert (=> b!2751343 (= lt!973124 (lemmaDropApply!885 lt!973106 1))))

(assert (=> b!2751343 (= lt!973106 (list!12029 input!5495))))

(declare-fun lt!973097 () Unit!45585)

(declare-fun lt!973100 () Unit!45585)

(assert (=> b!2751343 (= lt!973097 lt!973100)))

(declare-fun lt!973118 () List!31936)

(declare-fun lt!973130 () List!31936)

(assert (=> b!2751343 (and (= lt!973118 lt!972939) (= lt!973130 lt!972943))))

(assert (=> b!2751343 (= lt!973100 (lemmaConcatSameAndSameSizesThenSameLists!311 lt!973118 lt!973130 lt!972939 lt!972943))))

(assert (=> b!2751343 (= lt!973130 (list!12029 (_2!18658 lt!973094)))))

(assert (=> b!2751343 (= lt!973118 call!177600)))

(assert (=> b!2751343 (= lt!973094 (splitAt!74 input!5495 1))))

(assert (=> b!2751343 (= e!1734545 e!1734547)))

(declare-fun bm!177598 () Bool)

(assert (=> bm!177598 (= call!177598 (apply!7433 input!5495 1))))

(declare-fun bm!177599 () Bool)

(assert (=> bm!177599 (= call!177604 (tail!4358 lt!972943))))

(assert (= (and d!796482 c!445148) b!2751340))

(assert (= (and d!796482 (not c!445148)) b!2751336))

(assert (= (and b!2751336 c!445147) b!2751339))

(assert (= (and b!2751336 (not c!445147)) b!2751343))

(assert (= (and b!2751339 c!445152) b!2751337))

(assert (= (and b!2751339 (not c!445152)) b!2751342))

(assert (= (and b!2751343 c!445151) b!2751334))

(assert (= (and b!2751343 (not c!445151)) b!2751333))

(assert (= (and b!2751343 c!445149) b!2751332))

(assert (= (and b!2751343 (not c!445149)) b!2751338))

(assert (= (or b!2751332 b!2751338) bm!177599))

(assert (= (or b!2751332 b!2751338) bm!177598))

(assert (= (or b!2751332 b!2751338) bm!177595))

(assert (= (or b!2751332 b!2751338) bm!177591))

(assert (= (or b!2751332 b!2751338) bm!177597))

(assert (= (or b!2751339 b!2751334) bm!177592))

(assert (= (or b!2751339 b!2751343) bm!177590))

(assert (= (or b!2751339 b!2751334) bm!177594))

(assert (= (or b!2751339 b!2751343) bm!177596))

(assert (= (or b!2751339 b!2751334) bm!177593))

(assert (= (and bm!177593 c!445150) b!2751335))

(assert (= (and bm!177593 (not c!445150)) b!2751341))

(declare-fun m!3166163 () Bool)

(assert (=> bm!177599 m!3166163))

(declare-fun m!3166165 () Bool)

(assert (=> bm!177591 m!3166165))

(assert (=> d!796482 m!3166057))

(declare-fun m!3166167 () Bool)

(assert (=> d!796482 m!3166167))

(assert (=> d!796482 m!3166057))

(declare-fun m!3166169 () Bool)

(assert (=> d!796482 m!3166169))

(assert (=> d!796482 m!3166025))

(assert (=> d!796482 m!3166057))

(declare-fun m!3166171 () Bool)

(assert (=> d!796482 m!3166171))

(declare-fun m!3166173 () Bool)

(assert (=> d!796482 m!3166173))

(assert (=> d!796482 m!3166025))

(declare-fun m!3166175 () Bool)

(assert (=> d!796482 m!3166175))

(declare-fun m!3166177 () Bool)

(assert (=> d!796482 m!3166177))

(assert (=> d!796482 m!3166057))

(declare-fun m!3166179 () Bool)

(assert (=> d!796482 m!3166179))

(declare-fun m!3166181 () Bool)

(assert (=> bm!177594 m!3166181))

(assert (=> b!2751334 m!3166057))

(declare-fun m!3166183 () Bool)

(assert (=> bm!177597 m!3166183))

(declare-fun m!3166185 () Bool)

(assert (=> bm!177590 m!3166185))

(declare-fun m!3166187 () Bool)

(assert (=> bm!177592 m!3166187))

(assert (=> b!2751341 m!3166057))

(declare-fun m!3166189 () Bool)

(assert (=> bm!177596 m!3166189))

(declare-fun m!3166191 () Bool)

(assert (=> b!2751343 m!3166191))

(declare-fun m!3166193 () Bool)

(assert (=> b!2751343 m!3166193))

(declare-fun m!3166195 () Bool)

(assert (=> b!2751343 m!3166195))

(declare-fun m!3166197 () Bool)

(assert (=> b!2751343 m!3166197))

(assert (=> b!2751343 m!3166057))

(declare-fun m!3166199 () Bool)

(assert (=> b!2751343 m!3166199))

(assert (=> b!2751343 m!3166193))

(declare-fun m!3166201 () Bool)

(assert (=> b!2751343 m!3166201))

(declare-fun m!3166203 () Bool)

(assert (=> b!2751343 m!3166203))

(assert (=> b!2751343 m!3166199))

(declare-fun m!3166205 () Bool)

(assert (=> b!2751343 m!3166205))

(declare-fun m!3166207 () Bool)

(assert (=> b!2751343 m!3166207))

(declare-fun m!3166209 () Bool)

(assert (=> b!2751343 m!3166209))

(declare-fun m!3166211 () Bool)

(assert (=> b!2751343 m!3166211))

(assert (=> b!2751343 m!3166163))

(declare-fun m!3166213 () Bool)

(assert (=> b!2751343 m!3166213))

(assert (=> b!2751343 m!3166209))

(declare-fun m!3166215 () Bool)

(assert (=> b!2751343 m!3166215))

(declare-fun m!3166217 () Bool)

(assert (=> b!2751343 m!3166217))

(declare-fun m!3166219 () Bool)

(assert (=> b!2751343 m!3166219))

(declare-fun m!3166221 () Bool)

(assert (=> b!2751343 m!3166221))

(assert (=> b!2751343 m!3166195))

(declare-fun m!3166223 () Bool)

(assert (=> b!2751343 m!3166223))

(declare-fun m!3166225 () Bool)

(assert (=> b!2751343 m!3166225))

(declare-fun m!3166227 () Bool)

(assert (=> b!2751343 m!3166227))

(assert (=> b!2751343 m!3166063))

(assert (=> bm!177598 m!3166219))

(declare-fun m!3166229 () Bool)

(assert (=> bm!177593 m!3166229))

(declare-fun m!3166231 () Bool)

(assert (=> bm!177595 m!3166231))

(assert (=> bm!177563 d!796482))

(declare-fun d!796484 () Bool)

(assert (=> d!796484 (= (valid!2871 (ite c!445113 (_2!18655 lt!972928) (_2!18655 lt!972957))) (validCacheMapUp!349 (cache!3751 (ite c!445113 (_2!18655 lt!972928) (_2!18655 lt!972957)))))))

(declare-fun bs!490395 () Bool)

(assert (= bs!490395 d!796484))

(declare-fun m!3166233 () Bool)

(assert (=> bs!490395 m!3166233))

(assert (=> bm!177560 d!796484))

(declare-fun d!796486 () Bool)

(declare-fun e!1734550 () Bool)

(assert (=> d!796486 e!1734550))

(declare-fun res!1153580 () Bool)

(assert (=> d!796486 (=> res!1153580 e!1734550)))

(declare-fun lt!973133 () Bool)

(assert (=> d!796486 (= res!1153580 (not lt!973133))))

(declare-fun e!1734551 () Bool)

(assert (=> d!796486 (= lt!973133 e!1734551)))

(declare-fun res!1153581 () Bool)

(assert (=> d!796486 (=> res!1153581 e!1734551)))

(assert (=> d!796486 (= res!1153581 ((_ is Nil!31836) lt!972950))))

(assert (=> d!796486 (= (isPrefix!2524 lt!972950 lt!972950) lt!973133)))

(declare-fun b!2751344 () Bool)

(declare-fun e!1734549 () Bool)

(assert (=> b!2751344 (= e!1734551 e!1734549)))

(declare-fun res!1153579 () Bool)

(assert (=> b!2751344 (=> (not res!1153579) (not e!1734549))))

(assert (=> b!2751344 (= res!1153579 (not ((_ is Nil!31836) lt!972950)))))

(declare-fun b!2751345 () Bool)

(declare-fun res!1153578 () Bool)

(assert (=> b!2751345 (=> (not res!1153578) (not e!1734549))))

(assert (=> b!2751345 (= res!1153578 (= (head!6120 lt!972950) (head!6120 lt!972950)))))

(declare-fun b!2751347 () Bool)

(assert (=> b!2751347 (= e!1734550 (>= (size!24594 lt!972950) (size!24594 lt!972950)))))

(declare-fun b!2751346 () Bool)

(assert (=> b!2751346 (= e!1734549 (isPrefix!2524 (tail!4358 lt!972950) (tail!4358 lt!972950)))))

(assert (= (and d!796486 (not res!1153581)) b!2751344))

(assert (= (and b!2751344 res!1153579) b!2751345))

(assert (= (and b!2751345 res!1153578) b!2751346))

(assert (= (and d!796486 (not res!1153580)) b!2751347))

(declare-fun m!3166235 () Bool)

(assert (=> b!2751345 m!3166235))

(assert (=> b!2751345 m!3166235))

(assert (=> b!2751347 m!3166045))

(assert (=> b!2751347 m!3166045))

(assert (=> b!2751346 m!3166023))

(assert (=> b!2751346 m!3166023))

(assert (=> b!2751346 m!3166023))

(assert (=> b!2751346 m!3166023))

(declare-fun m!3166237 () Bool)

(assert (=> b!2751346 m!3166237))

(assert (=> bm!177557 d!796486))

(declare-fun d!796488 () Bool)

(declare-fun e!1734552 () Bool)

(assert (=> d!796488 e!1734552))

(declare-fun res!1153582 () Bool)

(assert (=> d!796488 (=> (not res!1153582) (not e!1734552))))

(declare-fun lt!973134 () tuple3!4570)

(assert (=> d!796488 (= res!1153582 (valid!2871 (_2!18655 lt!973134)))))

(assert (=> d!796488 (= lt!973134 (choose!16084 (ite c!445113 (_2!18656 lt!972944) (_2!18656 lt!972949)) (ite c!445113 (_3!2756 lt!972944) (_3!2756 lt!972949)) (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949)) lt!972939 1 lt!972943 input!5495 lt!972946))))

(assert (=> d!796488 (= (++!7884 lt!972939 lt!972943) (list!12029 input!5495))))

(assert (=> d!796488 (= (findLongestMatchInnerZipperFastMem!4 (ite c!445113 (_2!18656 lt!972944) (_2!18656 lt!972949)) (ite c!445113 (_3!2756 lt!972944) (_3!2756 lt!972949)) (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949)) lt!972939 1 lt!972943 input!5495 lt!972946) lt!973134)))

(declare-fun b!2751348 () Bool)

(declare-fun res!1153583 () Bool)

(assert (=> b!2751348 (=> (not res!1153583) (not e!1734552))))

(assert (=> b!2751348 (= res!1153583 (valid!2870 (_3!2755 lt!973134)))))

(declare-fun b!2751349 () Bool)

(assert (=> b!2751349 (= e!1734552 (= (_1!18655 lt!973134) (findLongestMatchInnerZipperFast!5 (ite c!445113 (_1!18656 lt!972944) (_1!18656 lt!972949)) lt!972939 1 lt!972943 input!5495 lt!972946)))))

(assert (= (and d!796488 res!1153582) b!2751348))

(assert (= (and b!2751348 res!1153583) b!2751349))

(declare-fun m!3166239 () Bool)

(assert (=> d!796488 m!3166239))

(declare-fun m!3166241 () Bool)

(assert (=> d!796488 m!3166241))

(assert (=> d!796488 m!3166025))

(assert (=> d!796488 m!3166057))

(declare-fun m!3166243 () Bool)

(assert (=> b!2751348 m!3166243))

(assert (=> b!2751349 m!3165993))

(assert (=> bm!177562 d!796488))

(declare-fun d!796490 () Bool)

(declare-fun lambda!100896 () Int)

(declare-fun forall!6585 (List!31933 Int) Bool)

(assert (=> d!796490 (= (inv!43223 setElem!21936) (forall!6585 (exprs!2765 setElem!21936) lambda!100896))))

(declare-fun bs!490396 () Bool)

(assert (= bs!490396 d!796490))

(declare-fun m!3166245 () Bool)

(assert (=> bs!490396 m!3166245))

(assert (=> setNonEmpty!21936 d!796490))

(declare-fun d!796492 () Bool)

(declare-fun validCacheMapDown!380 (MutableMap!3609) Bool)

(assert (=> d!796492 (= (valid!2870 (_3!2755 lt!972935)) (validCacheMapDown!380 (cache!3752 (_3!2755 lt!972935))))))

(declare-fun bs!490397 () Bool)

(assert (= bs!490397 d!796492))

(declare-fun m!3166247 () Bool)

(assert (=> bs!490397 m!3166247))

(assert (=> b!2751254 d!796492))

(declare-fun d!796494 () Bool)

(declare-fun e!1734555 () Bool)

(assert (=> d!796494 e!1734555))

(declare-fun res!1153588 () Bool)

(assert (=> d!796494 (=> (not res!1153588) (not e!1734555))))

(declare-fun lt!973137 () tuple3!4572)

(assert (=> d!796494 (= res!1153588 (= (_1!18656 lt!973137) (derivationStepZipper!342 z!3597 lt!972941)))))

(declare-fun choose!16086 ((InoxSet Context!4530) C!16252 CacheUp!2314 CacheDown!2434) tuple3!4572)

(assert (=> d!796494 (= lt!973137 (choose!16086 z!3597 lt!972941 (_2!18655 lt!972954) (_3!2755 lt!972954)))))

(assert (=> d!796494 (= (derivationStepZipperMem!71 z!3597 lt!972941 (_2!18655 lt!972954) (_3!2755 lt!972954)) lt!973137)))

(declare-fun b!2751354 () Bool)

(declare-fun res!1153589 () Bool)

(assert (=> b!2751354 (=> (not res!1153589) (not e!1734555))))

(assert (=> b!2751354 (= res!1153589 (valid!2871 (_2!18656 lt!973137)))))

(declare-fun b!2751355 () Bool)

(assert (=> b!2751355 (= e!1734555 (valid!2870 (_3!2756 lt!973137)))))

(assert (= (and d!796494 res!1153588) b!2751354))

(assert (= (and b!2751354 res!1153589) b!2751355))

(declare-fun m!3166249 () Bool)

(assert (=> d!796494 m!3166249))

(declare-fun m!3166251 () Bool)

(assert (=> d!796494 m!3166251))

(declare-fun m!3166253 () Bool)

(assert (=> b!2751354 m!3166253))

(declare-fun m!3166255 () Bool)

(assert (=> b!2751355 m!3166255))

(assert (=> bm!177556 d!796494))

(declare-fun d!796496 () Bool)

(assert (=> d!796496 (= (valid!2871 cacheUp!820) (validCacheMapUp!349 (cache!3751 cacheUp!820)))))

(declare-fun bs!490398 () Bool)

(assert (= bs!490398 d!796496))

(declare-fun m!3166257 () Bool)

(assert (=> bs!490398 m!3166257))

(assert (=> start!266644 d!796496))

(declare-fun d!796498 () Bool)

(declare-fun res!1153592 () Bool)

(declare-fun e!1734558 () Bool)

(assert (=> d!796498 (=> (not res!1153592) (not e!1734558))))

(assert (=> d!796498 (= res!1153592 ((_ is HashMap!3608) (cache!3751 cacheUp!820)))))

(assert (=> d!796498 (= (inv!43220 cacheUp!820) e!1734558)))

(declare-fun b!2751358 () Bool)

(assert (=> b!2751358 (= e!1734558 (validCacheMapUp!349 (cache!3751 cacheUp!820)))))

(assert (= (and d!796498 res!1153592) b!2751358))

(assert (=> b!2751358 m!3166257))

(assert (=> start!266644 d!796498))

(declare-fun d!796500 () Bool)

(declare-fun res!1153595 () Bool)

(declare-fun e!1734561 () Bool)

(assert (=> d!796500 (=> (not res!1153595) (not e!1734561))))

(assert (=> d!796500 (= res!1153595 ((_ is HashMap!3609) (cache!3752 cacheDown!939)))))

(assert (=> d!796500 (= (inv!43221 cacheDown!939) e!1734561)))

(declare-fun b!2751361 () Bool)

(assert (=> b!2751361 (= e!1734561 (validCacheMapDown!380 (cache!3752 cacheDown!939)))))

(assert (= (and d!796500 res!1153595) b!2751361))

(declare-fun m!3166259 () Bool)

(assert (=> b!2751361 m!3166259))

(assert (=> start!266644 d!796500))

(declare-fun d!796502 () Bool)

(declare-fun isBalanced!3022 (Conc!9929) Bool)

(assert (=> d!796502 (= (inv!43222 input!5495) (isBalanced!3022 (c!445117 input!5495)))))

(declare-fun bs!490399 () Bool)

(assert (= bs!490399 d!796502))

(declare-fun m!3166261 () Bool)

(assert (=> bs!490399 m!3166261))

(assert (=> start!266644 d!796502))

(declare-fun d!796504 () Bool)

(assert (=> d!796504 (= (tail!4358 lt!972950) (t!228040 lt!972950))))

(assert (=> b!2751253 d!796504))

(declare-fun d!796506 () Bool)

(declare-fun lt!973140 () C!16252)

(declare-fun contains!5979 (List!31936 C!16252) Bool)

(assert (=> d!796506 (contains!5979 lt!972950 lt!973140)))

(declare-fun e!1734566 () C!16252)

(assert (=> d!796506 (= lt!973140 e!1734566)))

(declare-fun c!445155 () Bool)

(assert (=> d!796506 (= c!445155 (= 0 0))))

(declare-fun e!1734567 () Bool)

(assert (=> d!796506 e!1734567))

(declare-fun res!1153598 () Bool)

(assert (=> d!796506 (=> (not res!1153598) (not e!1734567))))

(assert (=> d!796506 (= res!1153598 (<= 0 0))))

(assert (=> d!796506 (= (apply!7434 lt!972950 0) lt!973140)))

(declare-fun b!2751368 () Bool)

(assert (=> b!2751368 (= e!1734567 (< 0 (size!24594 lt!972950)))))

(declare-fun b!2751369 () Bool)

(assert (=> b!2751369 (= e!1734566 (head!6120 lt!972950))))

(declare-fun b!2751370 () Bool)

(assert (=> b!2751370 (= e!1734566 (apply!7434 (tail!4358 lt!972950) (- 0 1)))))

(assert (= (and d!796506 res!1153598) b!2751368))

(assert (= (and d!796506 c!445155) b!2751369))

(assert (= (and d!796506 (not c!445155)) b!2751370))

(declare-fun m!3166263 () Bool)

(assert (=> d!796506 m!3166263))

(assert (=> b!2751368 m!3166045))

(assert (=> b!2751369 m!3166235))

(assert (=> b!2751370 m!3166023))

(assert (=> b!2751370 m!3166023))

(declare-fun m!3166265 () Bool)

(assert (=> b!2751370 m!3166265))

(assert (=> b!2751253 d!796506))

(declare-fun b!2751374 () Bool)

(declare-fun e!1734568 () Bool)

(declare-fun lt!973141 () List!31936)

(assert (=> b!2751374 (= e!1734568 (or (not (= (Cons!31836 (head!6120 lt!972953) Nil!31836) Nil!31836)) (= lt!973141 Nil!31836)))))

(declare-fun b!2751373 () Bool)

(declare-fun res!1153600 () Bool)

(assert (=> b!2751373 (=> (not res!1153600) (not e!1734568))))

(assert (=> b!2751373 (= res!1153600 (= (size!24594 lt!973141) (+ (size!24594 Nil!31836) (size!24594 (Cons!31836 (head!6120 lt!972953) Nil!31836)))))))

(declare-fun b!2751372 () Bool)

(declare-fun e!1734569 () List!31936)

(assert (=> b!2751372 (= e!1734569 (Cons!31836 (h!37256 Nil!31836) (++!7884 (t!228040 Nil!31836) (Cons!31836 (head!6120 lt!972953) Nil!31836))))))

(declare-fun b!2751371 () Bool)

(assert (=> b!2751371 (= e!1734569 (Cons!31836 (head!6120 lt!972953) Nil!31836))))

(declare-fun d!796508 () Bool)

(assert (=> d!796508 e!1734568))

(declare-fun res!1153599 () Bool)

(assert (=> d!796508 (=> (not res!1153599) (not e!1734568))))

(assert (=> d!796508 (= res!1153599 (= (content!4485 lt!973141) ((_ map or) (content!4485 Nil!31836) (content!4485 (Cons!31836 (head!6120 lt!972953) Nil!31836)))))))

(assert (=> d!796508 (= lt!973141 e!1734569)))

(declare-fun c!445156 () Bool)

(assert (=> d!796508 (= c!445156 ((_ is Nil!31836) Nil!31836))))

(assert (=> d!796508 (= (++!7884 Nil!31836 (Cons!31836 (head!6120 lt!972953) Nil!31836)) lt!973141)))

(assert (= (and d!796508 c!445156) b!2751371))

(assert (= (and d!796508 (not c!445156)) b!2751372))

(assert (= (and d!796508 res!1153599) b!2751373))

(assert (= (and b!2751373 res!1153600) b!2751374))

(declare-fun m!3166267 () Bool)

(assert (=> b!2751373 m!3166267))

(assert (=> b!2751373 m!3166049))

(declare-fun m!3166269 () Bool)

(assert (=> b!2751373 m!3166269))

(declare-fun m!3166271 () Bool)

(assert (=> b!2751372 m!3166271))

(declare-fun m!3166273 () Bool)

(assert (=> d!796508 m!3166273))

(assert (=> d!796508 m!3166159))

(declare-fun m!3166275 () Bool)

(assert (=> d!796508 m!3166275))

(assert (=> b!2751253 d!796508))

(declare-fun d!796510 () Bool)

(assert (=> d!796510 (= (head!6120 lt!972953) (h!37256 lt!972953))))

(assert (=> b!2751253 d!796510))

(declare-fun d!796512 () Bool)

(assert (=> d!796512 (= (++!7884 (++!7884 Nil!31836 (Cons!31836 lt!972941 Nil!31836)) lt!972943) lt!972950)))

(declare-fun lt!973144 () Unit!45585)

(declare-fun choose!16087 (List!31936 C!16252 List!31936 List!31936) Unit!45585)

(assert (=> d!796512 (= lt!973144 (choose!16087 Nil!31836 lt!972941 lt!972943 lt!972950))))

(assert (=> d!796512 (= (++!7884 Nil!31836 (Cons!31836 lt!972941 lt!972943)) lt!972950)))

(assert (=> d!796512 (= (lemmaMoveElementToOtherListKeepsConcatEq!841 Nil!31836 lt!972941 lt!972943 lt!972950) lt!973144)))

(declare-fun bs!490400 () Bool)

(assert (= bs!490400 d!796512))

(assert (=> bs!490400 m!3166041))

(assert (=> bs!490400 m!3166041))

(declare-fun m!3166277 () Bool)

(assert (=> bs!490400 m!3166277))

(declare-fun m!3166279 () Bool)

(assert (=> bs!490400 m!3166279))

(declare-fun m!3166281 () Bool)

(assert (=> bs!490400 m!3166281))

(assert (=> b!2751253 d!796512))

(declare-fun b!2751378 () Bool)

(declare-fun lt!973145 () List!31936)

(declare-fun e!1734570 () Bool)

(assert (=> b!2751378 (= e!1734570 (or (not (= lt!972943 Nil!31836)) (= lt!973145 lt!972939)))))

(declare-fun b!2751377 () Bool)

(declare-fun res!1153602 () Bool)

(assert (=> b!2751377 (=> (not res!1153602) (not e!1734570))))

(assert (=> b!2751377 (= res!1153602 (= (size!24594 lt!973145) (+ (size!24594 lt!972939) (size!24594 lt!972943))))))

(declare-fun b!2751376 () Bool)

(declare-fun e!1734571 () List!31936)

(assert (=> b!2751376 (= e!1734571 (Cons!31836 (h!37256 lt!972939) (++!7884 (t!228040 lt!972939) lt!972943)))))

(declare-fun b!2751375 () Bool)

(assert (=> b!2751375 (= e!1734571 lt!972943)))

(declare-fun d!796514 () Bool)

(assert (=> d!796514 e!1734570))

(declare-fun res!1153601 () Bool)

(assert (=> d!796514 (=> (not res!1153601) (not e!1734570))))

(assert (=> d!796514 (= res!1153601 (= (content!4485 lt!973145) ((_ map or) (content!4485 lt!972939) (content!4485 lt!972943))))))

(assert (=> d!796514 (= lt!973145 e!1734571)))

(declare-fun c!445157 () Bool)

(assert (=> d!796514 (= c!445157 ((_ is Nil!31836) lt!972939))))

(assert (=> d!796514 (= (++!7884 lt!972939 lt!972943) lt!973145)))

(assert (= (and d!796514 c!445157) b!2751375))

(assert (= (and d!796514 (not c!445157)) b!2751376))

(assert (= (and d!796514 res!1153601) b!2751377))

(assert (= (and b!2751377 res!1153602) b!2751378))

(declare-fun m!3166283 () Bool)

(assert (=> b!2751377 m!3166283))

(assert (=> b!2751377 m!3166225))

(declare-fun m!3166285 () Bool)

(assert (=> b!2751377 m!3166285))

(declare-fun m!3166287 () Bool)

(assert (=> b!2751376 m!3166287))

(declare-fun m!3166289 () Bool)

(assert (=> d!796514 m!3166289))

(declare-fun m!3166291 () Bool)

(assert (=> d!796514 m!3166291))

(declare-fun m!3166293 () Bool)

(assert (=> d!796514 m!3166293))

(assert (=> b!2751253 d!796514))

(declare-fun d!796516 () Bool)

(assert (=> d!796516 (= (head!6120 (drop!1679 lt!972950 0)) (apply!7434 lt!972950 0))))

(declare-fun lt!973148 () Unit!45585)

(declare-fun choose!16088 (List!31936 Int) Unit!45585)

(assert (=> d!796516 (= lt!973148 (choose!16088 lt!972950 0))))

(declare-fun e!1734574 () Bool)

(assert (=> d!796516 e!1734574))

(declare-fun res!1153605 () Bool)

(assert (=> d!796516 (=> (not res!1153605) (not e!1734574))))

(assert (=> d!796516 (= res!1153605 (>= 0 0))))

(assert (=> d!796516 (= (lemmaDropApply!885 lt!972950 0) lt!973148)))

(declare-fun b!2751381 () Bool)

(assert (=> b!2751381 (= e!1734574 (< 0 (size!24594 lt!972950)))))

(assert (= (and d!796516 res!1153605) b!2751381))

(assert (=> d!796516 m!3166013))

(assert (=> d!796516 m!3166013))

(assert (=> d!796516 m!3166015))

(assert (=> d!796516 m!3166047))

(declare-fun m!3166295 () Bool)

(assert (=> d!796516 m!3166295))

(assert (=> b!2751381 m!3166045))

(assert (=> b!2751253 d!796516))

(declare-fun d!796518 () Bool)

(declare-fun lt!973151 () Int)

(assert (=> d!796518 (>= lt!973151 0)))

(declare-fun e!1734577 () Int)

(assert (=> d!796518 (= lt!973151 e!1734577)))

(declare-fun c!445160 () Bool)

(assert (=> d!796518 (= c!445160 ((_ is Nil!31836) lt!972950))))

(assert (=> d!796518 (= (size!24594 lt!972950) lt!973151)))

(declare-fun b!2751386 () Bool)

(assert (=> b!2751386 (= e!1734577 0)))

(declare-fun b!2751387 () Bool)

(assert (=> b!2751387 (= e!1734577 (+ 1 (size!24594 (t!228040 lt!972950))))))

(assert (= (and d!796518 c!445160) b!2751386))

(assert (= (and d!796518 (not c!445160)) b!2751387))

(declare-fun m!3166297 () Bool)

(assert (=> b!2751387 m!3166297))

(assert (=> b!2751253 d!796518))

(declare-fun d!796520 () Bool)

(declare-fun lt!973152 () Int)

(assert (=> d!796520 (>= lt!973152 0)))

(declare-fun e!1734578 () Int)

(assert (=> d!796520 (= lt!973152 e!1734578)))

(declare-fun c!445161 () Bool)

(assert (=> d!796520 (= c!445161 ((_ is Nil!31836) Nil!31836))))

(assert (=> d!796520 (= (size!24594 Nil!31836) lt!973152)))

(declare-fun b!2751388 () Bool)

(assert (=> b!2751388 (= e!1734578 0)))

(declare-fun b!2751389 () Bool)

(assert (=> b!2751389 (= e!1734578 (+ 1 (size!24594 (t!228040 Nil!31836))))))

(assert (= (and d!796520 c!445161) b!2751388))

(assert (= (and d!796520 (not c!445161)) b!2751389))

(declare-fun m!3166299 () Bool)

(assert (=> b!2751389 m!3166299))

(assert (=> b!2751253 d!796520))

(declare-fun d!796522 () Bool)

(declare-fun e!1734580 () Bool)

(assert (=> d!796522 e!1734580))

(declare-fun res!1153608 () Bool)

(assert (=> d!796522 (=> res!1153608 e!1734580)))

(declare-fun lt!973153 () Bool)

(assert (=> d!796522 (= res!1153608 (not lt!973153))))

(declare-fun e!1734581 () Bool)

(assert (=> d!796522 (= lt!973153 e!1734581)))

(declare-fun res!1153609 () Bool)

(assert (=> d!796522 (=> res!1153609 e!1734581)))

(assert (=> d!796522 (= res!1153609 ((_ is Nil!31836) (++!7884 Nil!31836 (Cons!31836 (head!6120 lt!972953) Nil!31836))))))

(assert (=> d!796522 (= (isPrefix!2524 (++!7884 Nil!31836 (Cons!31836 (head!6120 lt!972953) Nil!31836)) lt!972950) lt!973153)))

(declare-fun b!2751390 () Bool)

(declare-fun e!1734579 () Bool)

(assert (=> b!2751390 (= e!1734581 e!1734579)))

(declare-fun res!1153607 () Bool)

(assert (=> b!2751390 (=> (not res!1153607) (not e!1734579))))

(assert (=> b!2751390 (= res!1153607 (not ((_ is Nil!31836) lt!972950)))))

(declare-fun b!2751391 () Bool)

(declare-fun res!1153606 () Bool)

(assert (=> b!2751391 (=> (not res!1153606) (not e!1734579))))

(assert (=> b!2751391 (= res!1153606 (= (head!6120 (++!7884 Nil!31836 (Cons!31836 (head!6120 lt!972953) Nil!31836))) (head!6120 lt!972950)))))

(declare-fun b!2751393 () Bool)

(assert (=> b!2751393 (= e!1734580 (>= (size!24594 lt!972950) (size!24594 (++!7884 Nil!31836 (Cons!31836 (head!6120 lt!972953) Nil!31836)))))))

(declare-fun b!2751392 () Bool)

(assert (=> b!2751392 (= e!1734579 (isPrefix!2524 (tail!4358 (++!7884 Nil!31836 (Cons!31836 (head!6120 lt!972953) Nil!31836))) (tail!4358 lt!972950)))))

(assert (= (and d!796522 (not res!1153609)) b!2751390))

(assert (= (and b!2751390 res!1153607) b!2751391))

(assert (= (and b!2751391 res!1153606) b!2751392))

(assert (= (and d!796522 (not res!1153608)) b!2751393))

(assert (=> b!2751391 m!3166033))

(declare-fun m!3166301 () Bool)

(assert (=> b!2751391 m!3166301))

(assert (=> b!2751391 m!3166235))

(assert (=> b!2751393 m!3166045))

(assert (=> b!2751393 m!3166033))

(declare-fun m!3166303 () Bool)

(assert (=> b!2751393 m!3166303))

(assert (=> b!2751392 m!3166033))

(declare-fun m!3166305 () Bool)

(assert (=> b!2751392 m!3166305))

(assert (=> b!2751392 m!3166023))

(assert (=> b!2751392 m!3166305))

(assert (=> b!2751392 m!3166023))

(declare-fun m!3166307 () Bool)

(assert (=> b!2751392 m!3166307))

(assert (=> b!2751253 d!796522))

(declare-fun d!796524 () Bool)

(assert (=> d!796524 (isPrefix!2524 (++!7884 Nil!31836 (Cons!31836 (head!6120 (getSuffix!1210 lt!972950 Nil!31836)) Nil!31836)) lt!972950)))

(declare-fun lt!973156 () Unit!45585)

(declare-fun choose!16089 (List!31936 List!31936) Unit!45585)

(assert (=> d!796524 (= lt!973156 (choose!16089 Nil!31836 lt!972950))))

(assert (=> d!796524 (isPrefix!2524 Nil!31836 lt!972950)))

(assert (=> d!796524 (= (lemmaAddHeadSuffixToPrefixStillPrefix!429 Nil!31836 lt!972950) lt!973156)))

(declare-fun bs!490401 () Bool)

(assert (= bs!490401 d!796524))

(declare-fun m!3166309 () Bool)

(assert (=> bs!490401 m!3166309))

(declare-fun m!3166311 () Bool)

(assert (=> bs!490401 m!3166311))

(assert (=> bs!490401 m!3166075))

(declare-fun m!3166313 () Bool)

(assert (=> bs!490401 m!3166313))

(assert (=> bs!490401 m!3166075))

(assert (=> bs!490401 m!3166113))

(declare-fun m!3166315 () Bool)

(assert (=> bs!490401 m!3166315))

(assert (=> bs!490401 m!3166309))

(assert (=> b!2751253 d!796524))

(declare-fun d!796526 () Bool)

(assert (=> d!796526 (and (= lt!972959 Nil!31836) (= lt!972955 lt!972950))))

(declare-fun lt!973159 () Unit!45585)

(declare-fun choose!16090 (List!31936 List!31936 List!31936 List!31936) Unit!45585)

(assert (=> d!796526 (= lt!973159 (choose!16090 lt!972959 lt!972955 Nil!31836 lt!972950))))

(assert (=> d!796526 (= (++!7884 lt!972959 lt!972955) (++!7884 Nil!31836 lt!972950))))

(assert (=> d!796526 (= (lemmaConcatSameAndSameSizesThenSameLists!311 lt!972959 lt!972955 Nil!31836 lt!972950) lt!973159)))

(declare-fun bs!490402 () Bool)

(assert (= bs!490402 d!796526))

(declare-fun m!3166317 () Bool)

(assert (=> bs!490402 m!3166317))

(declare-fun m!3166319 () Bool)

(assert (=> bs!490402 m!3166319))

(assert (=> bs!490402 m!3166065))

(assert (=> b!2751253 d!796526))

(declare-fun d!796528 () Bool)

(assert (=> d!796528 (= (head!6120 (drop!1679 lt!972950 0)) (h!37256 (drop!1679 lt!972950 0)))))

(assert (=> b!2751253 d!796528))

(declare-fun d!796530 () Bool)

(declare-fun lt!973162 () C!16252)

(assert (=> d!796530 (= lt!973162 (apply!7434 (list!12029 input!5495) 0))))

(declare-fun apply!7435 (Conc!9929 Int) C!16252)

(assert (=> d!796530 (= lt!973162 (apply!7435 (c!445117 input!5495) 0))))

(declare-fun e!1734584 () Bool)

(assert (=> d!796530 e!1734584))

(declare-fun res!1153612 () Bool)

(assert (=> d!796530 (=> (not res!1153612) (not e!1734584))))

(assert (=> d!796530 (= res!1153612 (<= 0 0))))

(assert (=> d!796530 (= (apply!7433 input!5495 0) lt!973162)))

(declare-fun b!2751396 () Bool)

(assert (=> b!2751396 (= e!1734584 (< 0 (size!24593 input!5495)))))

(assert (= (and d!796530 res!1153612) b!2751396))

(assert (=> d!796530 m!3166057))

(assert (=> d!796530 m!3166057))

(declare-fun m!3166321 () Bool)

(assert (=> d!796530 m!3166321))

(declare-fun m!3166323 () Bool)

(assert (=> d!796530 m!3166323))

(assert (=> b!2751396 m!3166063))

(assert (=> b!2751253 d!796530))

(declare-fun d!796532 () Bool)

(assert (=> d!796532 (= (list!12029 (_1!18658 lt!972947)) (list!12030 (c!445117 (_1!18658 lt!972947))))))

(declare-fun bs!490403 () Bool)

(assert (= bs!490403 d!796532))

(declare-fun m!3166325 () Bool)

(assert (=> bs!490403 m!3166325))

(assert (=> b!2751253 d!796532))

(declare-fun d!796534 () Bool)

(assert (=> d!796534 (<= (size!24594 Nil!31836) (size!24594 lt!972950))))

(declare-fun lt!973165 () Unit!45585)

(declare-fun choose!16091 (List!31936 List!31936) Unit!45585)

(assert (=> d!796534 (= lt!973165 (choose!16091 Nil!31836 lt!972950))))

(assert (=> d!796534 (isPrefix!2524 Nil!31836 lt!972950)))

(assert (=> d!796534 (= (lemmaIsPrefixThenSmallerEqSize!232 Nil!31836 lt!972950) lt!973165)))

(declare-fun bs!490404 () Bool)

(assert (= bs!490404 d!796534))

(assert (=> bs!490404 m!3166049))

(assert (=> bs!490404 m!3166045))

(declare-fun m!3166327 () Bool)

(assert (=> bs!490404 m!3166327))

(assert (=> bs!490404 m!3166113))

(assert (=> b!2751253 d!796534))

(declare-fun bm!177602 () Bool)

(declare-fun call!177607 () Int)

(assert (=> bm!177602 (= call!177607 (size!24594 lt!972950))))

(declare-fun b!2751415 () Bool)

(declare-fun e!1734598 () Bool)

(declare-fun lt!973168 () List!31936)

(declare-fun e!1734596 () Int)

(assert (=> b!2751415 (= e!1734598 (= (size!24594 lt!973168) e!1734596))))

(declare-fun c!445173 () Bool)

(assert (=> b!2751415 (= c!445173 (<= 0 0))))

(declare-fun b!2751416 () Bool)

(declare-fun e!1734597 () List!31936)

(assert (=> b!2751416 (= e!1734597 lt!972950)))

(declare-fun b!2751417 () Bool)

(declare-fun e!1734595 () Int)

(assert (=> b!2751417 (= e!1734595 0)))

(declare-fun b!2751419 () Bool)

(assert (=> b!2751419 (= e!1734597 (drop!1679 (t!228040 lt!972950) (- 0 1)))))

(declare-fun b!2751420 () Bool)

(assert (=> b!2751420 (= e!1734596 call!177607)))

(declare-fun b!2751421 () Bool)

(assert (=> b!2751421 (= e!1734595 (- call!177607 0))))

(declare-fun b!2751422 () Bool)

(assert (=> b!2751422 (= e!1734596 e!1734595)))

(declare-fun c!445171 () Bool)

(assert (=> b!2751422 (= c!445171 (>= 0 call!177607))))

(declare-fun b!2751423 () Bool)

(declare-fun e!1734599 () List!31936)

(assert (=> b!2751423 (= e!1734599 Nil!31836)))

(declare-fun b!2751418 () Bool)

(assert (=> b!2751418 (= e!1734599 e!1734597)))

(declare-fun c!445170 () Bool)

(assert (=> b!2751418 (= c!445170 (<= 0 0))))

(declare-fun d!796536 () Bool)

(assert (=> d!796536 e!1734598))

(declare-fun res!1153615 () Bool)

(assert (=> d!796536 (=> (not res!1153615) (not e!1734598))))

(assert (=> d!796536 (= res!1153615 (= ((_ map implies) (content!4485 lt!973168) (content!4485 lt!972950)) ((as const (InoxSet C!16252)) true)))))

(assert (=> d!796536 (= lt!973168 e!1734599)))

(declare-fun c!445172 () Bool)

(assert (=> d!796536 (= c!445172 ((_ is Nil!31836) lt!972950))))

(assert (=> d!796536 (= (drop!1679 lt!972950 0) lt!973168)))

(assert (= (and d!796536 c!445172) b!2751423))

(assert (= (and d!796536 (not c!445172)) b!2751418))

(assert (= (and b!2751418 c!445170) b!2751416))

(assert (= (and b!2751418 (not c!445170)) b!2751419))

(assert (= (and d!796536 res!1153615) b!2751415))

(assert (= (and b!2751415 c!445173) b!2751420))

(assert (= (and b!2751415 (not c!445173)) b!2751422))

(assert (= (and b!2751422 c!445171) b!2751417))

(assert (= (and b!2751422 (not c!445171)) b!2751421))

(assert (= (or b!2751420 b!2751422 b!2751421) bm!177602))

(assert (=> bm!177602 m!3166045))

(declare-fun m!3166329 () Bool)

(assert (=> b!2751415 m!3166329))

(declare-fun m!3166331 () Bool)

(assert (=> b!2751419 m!3166331))

(declare-fun m!3166333 () Bool)

(assert (=> d!796536 m!3166333))

(assert (=> d!796536 m!3166161))

(assert (=> b!2751253 d!796536))

(declare-fun d!796538 () Bool)

(declare-fun e!1734602 () Bool)

(assert (=> d!796538 e!1734602))

(declare-fun res!1153620 () Bool)

(assert (=> d!796538 (=> (not res!1153620) (not e!1734602))))

(declare-fun lt!973173 () tuple2!31800)

(assert (=> d!796538 (= res!1153620 (isBalanced!3022 (c!445117 (_1!18658 lt!973173))))))

(declare-datatypes ((tuple2!31804 0))(
  ( (tuple2!31805 (_1!18660 Conc!9929) (_2!18660 Conc!9929)) )
))
(declare-fun lt!973174 () tuple2!31804)

(assert (=> d!796538 (= lt!973173 (tuple2!31801 (BalanceConc!19473 (_1!18660 lt!973174)) (BalanceConc!19473 (_2!18660 lt!973174))))))

(declare-fun splitAt!75 (Conc!9929 Int) tuple2!31804)

(assert (=> d!796538 (= lt!973174 (splitAt!75 (c!445117 input!5495) 0))))

(assert (=> d!796538 (isBalanced!3022 (c!445117 input!5495))))

(assert (=> d!796538 (= (splitAt!74 input!5495 0) lt!973173)))

(declare-fun b!2751428 () Bool)

(declare-fun res!1153621 () Bool)

(assert (=> b!2751428 (=> (not res!1153621) (not e!1734602))))

(assert (=> b!2751428 (= res!1153621 (isBalanced!3022 (c!445117 (_2!18658 lt!973173))))))

(declare-fun b!2751429 () Bool)

(declare-fun splitAtIndex!38 (List!31936 Int) tuple2!31802)

(assert (=> b!2751429 (= e!1734602 (= (tuple2!31803 (list!12029 (_1!18658 lt!973173)) (list!12029 (_2!18658 lt!973173))) (splitAtIndex!38 (list!12029 input!5495) 0)))))

(assert (= (and d!796538 res!1153620) b!2751428))

(assert (= (and b!2751428 res!1153621) b!2751429))

(declare-fun m!3166335 () Bool)

(assert (=> d!796538 m!3166335))

(declare-fun m!3166337 () Bool)

(assert (=> d!796538 m!3166337))

(assert (=> d!796538 m!3166261))

(declare-fun m!3166339 () Bool)

(assert (=> b!2751428 m!3166339))

(declare-fun m!3166341 () Bool)

(assert (=> b!2751429 m!3166341))

(declare-fun m!3166343 () Bool)

(assert (=> b!2751429 m!3166343))

(assert (=> b!2751429 m!3166057))

(assert (=> b!2751429 m!3166057))

(declare-fun m!3166345 () Bool)

(assert (=> b!2751429 m!3166345))

(assert (=> b!2751253 d!796538))

(declare-fun b!2751433 () Bool)

(declare-fun e!1734603 () Bool)

(declare-fun lt!973175 () List!31936)

(assert (=> b!2751433 (= e!1734603 (or (not (= (Cons!31836 lt!972941 Nil!31836) Nil!31836)) (= lt!973175 Nil!31836)))))

(declare-fun b!2751432 () Bool)

(declare-fun res!1153623 () Bool)

(assert (=> b!2751432 (=> (not res!1153623) (not e!1734603))))

(assert (=> b!2751432 (= res!1153623 (= (size!24594 lt!973175) (+ (size!24594 Nil!31836) (size!24594 (Cons!31836 lt!972941 Nil!31836)))))))

(declare-fun b!2751431 () Bool)

(declare-fun e!1734604 () List!31936)

(assert (=> b!2751431 (= e!1734604 (Cons!31836 (h!37256 Nil!31836) (++!7884 (t!228040 Nil!31836) (Cons!31836 lt!972941 Nil!31836))))))

(declare-fun b!2751430 () Bool)

(assert (=> b!2751430 (= e!1734604 (Cons!31836 lt!972941 Nil!31836))))

(declare-fun d!796540 () Bool)

(assert (=> d!796540 e!1734603))

(declare-fun res!1153622 () Bool)

(assert (=> d!796540 (=> (not res!1153622) (not e!1734603))))

(assert (=> d!796540 (= res!1153622 (= (content!4485 lt!973175) ((_ map or) (content!4485 Nil!31836) (content!4485 (Cons!31836 lt!972941 Nil!31836)))))))

(assert (=> d!796540 (= lt!973175 e!1734604)))

(declare-fun c!445174 () Bool)

(assert (=> d!796540 (= c!445174 ((_ is Nil!31836) Nil!31836))))

(assert (=> d!796540 (= (++!7884 Nil!31836 (Cons!31836 lt!972941 Nil!31836)) lt!973175)))

(assert (= (and d!796540 c!445174) b!2751430))

(assert (= (and d!796540 (not c!445174)) b!2751431))

(assert (= (and d!796540 res!1153622) b!2751432))

(assert (= (and b!2751432 res!1153623) b!2751433))

(declare-fun m!3166347 () Bool)

(assert (=> b!2751432 m!3166347))

(assert (=> b!2751432 m!3166049))

(declare-fun m!3166349 () Bool)

(assert (=> b!2751432 m!3166349))

(declare-fun m!3166351 () Bool)

(assert (=> b!2751431 m!3166351))

(declare-fun m!3166353 () Bool)

(assert (=> d!796540 m!3166353))

(assert (=> d!796540 m!3166159))

(declare-fun m!3166355 () Bool)

(assert (=> d!796540 m!3166355))

(assert (=> b!2751253 d!796540))

(declare-fun d!796542 () Bool)

(assert (=> d!796542 (= (list!12029 (_2!18658 lt!972947)) (list!12030 (c!445117 (_2!18658 lt!972947))))))

(declare-fun bs!490405 () Bool)

(assert (= bs!490405 d!796542))

(declare-fun m!3166357 () Bool)

(assert (=> bs!490405 m!3166357))

(assert (=> b!2751253 d!796542))

(declare-fun d!796544 () Bool)

(assert (=> d!796544 (= (valid!2870 (ite c!445113 (_3!2755 lt!972928) (_3!2755 lt!972957))) (validCacheMapDown!380 (cache!3752 (ite c!445113 (_3!2755 lt!972928) (_3!2755 lt!972957)))))))

(declare-fun bs!490406 () Bool)

(assert (= bs!490406 d!796544))

(declare-fun m!3166359 () Bool)

(assert (=> bs!490406 m!3166359))

(assert (=> bm!177555 d!796544))

(declare-fun d!796546 () Bool)

(assert (=> d!796546 (= lt!972950 Nil!31836)))

(declare-fun lt!973178 () Unit!45585)

(declare-fun choose!16092 (List!31936 List!31936 List!31936) Unit!45585)

(assert (=> d!796546 (= lt!973178 (choose!16092 lt!972950 Nil!31836 lt!972950))))

(assert (=> d!796546 (isPrefix!2524 lt!972950 lt!972950)))

(assert (=> d!796546 (= (lemmaIsPrefixSameLengthThenSameList!431 lt!972950 Nil!31836 lt!972950) lt!973178)))

(declare-fun bs!490407 () Bool)

(assert (= bs!490407 d!796546))

(declare-fun m!3166361 () Bool)

(assert (=> bs!490407 m!3166361))

(assert (=> bs!490407 m!3165999))

(assert (=> bm!177561 d!796546))

(declare-fun b!2751434 () Bool)

(declare-fun e!1734609 () Int)

(declare-fun lt!973207 () Int)

(assert (=> b!2751434 (= e!1734609 (ite (= lt!973207 0) 0 lt!973207))))

(declare-fun call!177609 () Int)

(assert (=> b!2751434 (= lt!973207 call!177609)))

(declare-fun call!177613 () List!31936)

(declare-fun bm!177603 () Bool)

(declare-fun c!445175 () Bool)

(declare-fun lt!973182 () tuple2!31800)

(assert (=> bm!177603 (= call!177613 (list!12029 (ite c!445175 input!5495 (_1!18658 lt!973182))))))

(declare-fun b!2751435 () Bool)

(declare-fun e!1734608 () Unit!45585)

(declare-fun Unit!45594 () Unit!45585)

(assert (=> b!2751435 (= e!1734608 Unit!45594)))

(declare-fun b!2751436 () Bool)

(declare-fun Unit!45595 () Unit!45585)

(assert (=> b!2751436 (= e!1734608 Unit!45595)))

(declare-fun lt!973187 () List!31936)

(assert (=> b!2751436 (= lt!973187 (list!12029 input!5495))))

(declare-fun lt!973179 () List!31936)

(assert (=> b!2751436 (= lt!973179 (list!12029 input!5495))))

(declare-fun lt!973199 () Unit!45585)

(declare-fun call!177614 () Unit!45585)

(assert (=> b!2751436 (= lt!973199 call!177614)))

(declare-fun call!177616 () Bool)

(assert (=> b!2751436 call!177616))

(declare-fun lt!973198 () Unit!45585)

(assert (=> b!2751436 (= lt!973198 lt!973199)))

(declare-fun lt!973186 () List!31936)

(assert (=> b!2751436 (= lt!973186 (list!12029 input!5495))))

(declare-fun lt!973191 () Unit!45585)

(declare-fun call!177610 () Unit!45585)

(assert (=> b!2751436 (= lt!973191 call!177610)))

(assert (=> b!2751436 (= lt!973186 Nil!31836)))

(declare-fun lt!973214 () Unit!45585)

(assert (=> b!2751436 (= lt!973214 lt!973191)))

(assert (=> b!2751436 false))

(declare-fun b!2751437 () Bool)

(declare-fun e!1734605 () List!31936)

(assert (=> b!2751437 (= e!1734605 call!177613)))

(declare-fun bm!177604 () Bool)

(declare-fun call!177612 () (InoxSet Context!4530))

(declare-fun call!177611 () C!16252)

(assert (=> bm!177604 (= call!177612 (derivationStepZipper!342 z!3597 call!177611))))

(declare-fun lt!973184 () List!31936)

(declare-fun lt!973193 () List!31936)

(declare-fun bm!177605 () Bool)

(assert (=> bm!177605 (= call!177616 (isPrefix!2524 (ite c!445175 lt!973184 lt!973187) (ite c!445175 lt!973193 lt!973179)))))

(declare-fun b!2751438 () Bool)

(declare-fun e!1734606 () Int)

(declare-fun e!1734607 () Int)

(assert (=> b!2751438 (= e!1734606 e!1734607)))

(assert (=> b!2751438 (= c!445175 (= 0 lt!972946))))

(declare-fun lt!973192 () Int)

(declare-fun d!796548 () Bool)

(assert (=> d!796548 (= (size!24594 (_1!18659 (findLongestMatchInnerZipper!1 z!3597 Nil!31836 0 lt!972950 (list!12029 input!5495) lt!972946))) lt!973192)))

(assert (=> d!796548 (= lt!973192 e!1734606)))

(declare-fun c!445176 () Bool)

(assert (=> d!796548 (= c!445176 (lostCauseZipper!414 z!3597))))

(declare-fun lt!973200 () Unit!45585)

(declare-fun Unit!45596 () Unit!45585)

(assert (=> d!796548 (= lt!973200 Unit!45596)))

(assert (=> d!796548 (= (getSuffix!1210 (list!12029 input!5495) Nil!31836) lt!972950)))

(declare-fun lt!973216 () Unit!45585)

(declare-fun lt!973219 () Unit!45585)

(assert (=> d!796548 (= lt!973216 lt!973219)))

(declare-fun lt!973197 () List!31936)

(assert (=> d!796548 (= lt!972950 lt!973197)))

(assert (=> d!796548 (= lt!973219 (lemmaSamePrefixThenSameSuffix!1112 Nil!31836 lt!972950 Nil!31836 lt!973197 (list!12029 input!5495)))))

(assert (=> d!796548 (= lt!973197 (getSuffix!1210 (list!12029 input!5495) Nil!31836))))

(declare-fun lt!973205 () Unit!45585)

(declare-fun lt!973180 () Unit!45585)

(assert (=> d!796548 (= lt!973205 lt!973180)))

(assert (=> d!796548 (isPrefix!2524 Nil!31836 (++!7884 Nil!31836 lt!972950))))

(assert (=> d!796548 (= lt!973180 (lemmaConcatTwoListThenFirstIsPrefix!1638 Nil!31836 lt!972950))))

(assert (=> d!796548 (= (++!7884 Nil!31836 lt!972950) (list!12029 input!5495))))

(assert (=> d!796548 (= (findLongestMatchInnerZipperFast!5 z!3597 Nil!31836 0 lt!972950 input!5495 lt!972946) lt!973192)))

(declare-fun bm!177606 () Bool)

(declare-fun c!445178 () Bool)

(assert (=> bm!177606 (= c!445178 c!445175)))

(declare-fun lt!973195 () List!31936)

(assert (=> bm!177606 (= call!177610 (lemmaIsPrefixSameLengthThenSameList!431 (ite c!445175 lt!973195 lt!973186) Nil!31836 e!1734605))))

(declare-fun b!2751439 () Bool)

(declare-fun e!1734610 () Int)

(assert (=> b!2751439 (= e!1734610 0)))

(declare-fun bm!177607 () Bool)

(assert (=> bm!177607 (= call!177614 (lemmaIsPrefixRefl!1650 (ite c!445175 lt!973184 lt!973187) (ite c!445175 lt!973193 lt!973179)))))

(declare-fun bm!177608 () Bool)

(declare-fun call!177615 () List!31936)

(assert (=> bm!177608 (= call!177615 (++!7884 Nil!31836 (Cons!31836 call!177611 Nil!31836)))))

(declare-fun b!2751440 () Bool)

(assert (=> b!2751440 (= e!1734609 call!177609)))

(declare-fun b!2751441 () Bool)

(declare-fun c!445180 () Bool)

(declare-fun call!177608 () Bool)

(assert (=> b!2751441 (= c!445180 call!177608)))

(declare-fun lt!973220 () Unit!45585)

(declare-fun lt!973203 () Unit!45585)

(assert (=> b!2751441 (= lt!973220 lt!973203)))

(assert (=> b!2751441 (= lt!973195 Nil!31836)))

(assert (=> b!2751441 (= lt!973203 call!177610)))

(assert (=> b!2751441 (= lt!973195 call!177613)))

(declare-fun lt!973210 () Unit!45585)

(declare-fun lt!973204 () Unit!45585)

(assert (=> b!2751441 (= lt!973210 lt!973204)))

(assert (=> b!2751441 call!177616))

(assert (=> b!2751441 (= lt!973204 call!177614)))

(assert (=> b!2751441 (= lt!973193 call!177613)))

(assert (=> b!2751441 (= lt!973184 call!177613)))

(assert (=> b!2751441 (= e!1734607 e!1734610)))

(declare-fun b!2751442 () Bool)

(assert (=> b!2751442 (= e!1734606 0)))

(declare-fun bm!177609 () Bool)

(assert (=> bm!177609 (= call!177608 (nullableZipper!602 z!3597))))

(declare-fun b!2751443 () Bool)

(assert (=> b!2751443 (= e!1734605 (list!12029 input!5495))))

(declare-fun bm!177610 () Bool)

(declare-fun call!177617 () List!31936)

(assert (=> bm!177610 (= call!177609 (findLongestMatchInnerZipperFast!5 call!177612 call!177615 (+ 0 1) call!177617 input!5495 lt!972946))))

(declare-fun b!2751444 () Bool)

(assert (=> b!2751444 (= e!1734610 0)))

(declare-fun b!2751445 () Bool)

(declare-fun c!445177 () Bool)

(assert (=> b!2751445 (= c!445177 call!177608)))

(declare-fun lt!973211 () Unit!45585)

(declare-fun lt!973213 () Unit!45585)

(assert (=> b!2751445 (= lt!973211 lt!973213)))

(declare-fun lt!973181 () C!16252)

(declare-fun lt!973209 () List!31936)

(declare-fun lt!973183 () List!31936)

(assert (=> b!2751445 (= (++!7884 (++!7884 Nil!31836 (Cons!31836 lt!973181 Nil!31836)) lt!973209) lt!973183)))

(assert (=> b!2751445 (= lt!973213 (lemmaMoveElementToOtherListKeepsConcatEq!841 Nil!31836 lt!973181 lt!973209 lt!973183))))

(assert (=> b!2751445 (= lt!973183 (list!12029 input!5495))))

(assert (=> b!2751445 (= lt!973209 (tail!4358 lt!972950))))

(assert (=> b!2751445 (= lt!973181 (apply!7433 input!5495 0))))

(declare-fun lt!973190 () Unit!45585)

(declare-fun lt!973189 () Unit!45585)

(assert (=> b!2751445 (= lt!973190 lt!973189)))

(declare-fun lt!973202 () List!31936)

(assert (=> b!2751445 (isPrefix!2524 (++!7884 Nil!31836 (Cons!31836 (head!6120 (getSuffix!1210 lt!973202 Nil!31836)) Nil!31836)) lt!973202)))

(assert (=> b!2751445 (= lt!973189 (lemmaAddHeadSuffixToPrefixStillPrefix!429 Nil!31836 lt!973202))))

(assert (=> b!2751445 (= lt!973202 (list!12029 input!5495))))

(declare-fun lt!973201 () Unit!45585)

(assert (=> b!2751445 (= lt!973201 e!1734608)))

(declare-fun c!445179 () Bool)

(assert (=> b!2751445 (= c!445179 (= (size!24594 Nil!31836) (size!24593 input!5495)))))

(declare-fun lt!973217 () Unit!45585)

(declare-fun lt!973215 () Unit!45585)

(assert (=> b!2751445 (= lt!973217 lt!973215)))

(declare-fun lt!973196 () List!31936)

(assert (=> b!2751445 (<= (size!24594 Nil!31836) (size!24594 lt!973196))))

(assert (=> b!2751445 (= lt!973215 (lemmaIsPrefixThenSmallerEqSize!232 Nil!31836 lt!973196))))

(assert (=> b!2751445 (= lt!973196 (list!12029 input!5495))))

(declare-fun lt!973208 () Unit!45585)

(declare-fun lt!973212 () Unit!45585)

(assert (=> b!2751445 (= lt!973208 lt!973212)))

(declare-fun lt!973194 () List!31936)

(assert (=> b!2751445 (= (head!6120 (drop!1679 lt!973194 0)) (apply!7434 lt!973194 0))))

(assert (=> b!2751445 (= lt!973212 (lemmaDropApply!885 lt!973194 0))))

(assert (=> b!2751445 (= lt!973194 (list!12029 input!5495))))

(declare-fun lt!973185 () Unit!45585)

(declare-fun lt!973188 () Unit!45585)

(assert (=> b!2751445 (= lt!973185 lt!973188)))

(declare-fun lt!973206 () List!31936)

(declare-fun lt!973218 () List!31936)

(assert (=> b!2751445 (and (= lt!973206 Nil!31836) (= lt!973218 lt!972950))))

(assert (=> b!2751445 (= lt!973188 (lemmaConcatSameAndSameSizesThenSameLists!311 lt!973206 lt!973218 Nil!31836 lt!972950))))

(assert (=> b!2751445 (= lt!973218 (list!12029 (_2!18658 lt!973182)))))

(assert (=> b!2751445 (= lt!973206 call!177613)))

(assert (=> b!2751445 (= lt!973182 (splitAt!74 input!5495 0))))

(assert (=> b!2751445 (= e!1734607 e!1734609)))

(declare-fun bm!177611 () Bool)

(assert (=> bm!177611 (= call!177611 (apply!7433 input!5495 0))))

(declare-fun bm!177612 () Bool)

(assert (=> bm!177612 (= call!177617 (tail!4358 lt!972950))))

(assert (= (and d!796548 c!445176) b!2751442))

(assert (= (and d!796548 (not c!445176)) b!2751438))

(assert (= (and b!2751438 c!445175) b!2751441))

(assert (= (and b!2751438 (not c!445175)) b!2751445))

(assert (= (and b!2751441 c!445180) b!2751439))

(assert (= (and b!2751441 (not c!445180)) b!2751444))

(assert (= (and b!2751445 c!445179) b!2751436))

(assert (= (and b!2751445 (not c!445179)) b!2751435))

(assert (= (and b!2751445 c!445177) b!2751434))

(assert (= (and b!2751445 (not c!445177)) b!2751440))

(assert (= (or b!2751434 b!2751440) bm!177612))

(assert (= (or b!2751434 b!2751440) bm!177611))

(assert (= (or b!2751434 b!2751440) bm!177608))

(assert (= (or b!2751434 b!2751440) bm!177604))

(assert (= (or b!2751434 b!2751440) bm!177610))

(assert (= (or b!2751441 b!2751436) bm!177605))

(assert (= (or b!2751441 b!2751445) bm!177603))

(assert (= (or b!2751441 b!2751436) bm!177607))

(assert (= (or b!2751441 b!2751445) bm!177609))

(assert (= (or b!2751441 b!2751436) bm!177606))

(assert (= (and bm!177606 c!445178) b!2751437))

(assert (= (and bm!177606 (not c!445178)) b!2751443))

(assert (=> bm!177612 m!3166023))

(declare-fun m!3166363 () Bool)

(assert (=> bm!177604 m!3166363))

(assert (=> d!796548 m!3166057))

(assert (=> d!796548 m!3166059))

(assert (=> d!796548 m!3166057))

(declare-fun m!3166365 () Bool)

(assert (=> d!796548 m!3166365))

(assert (=> d!796548 m!3166065))

(assert (=> d!796548 m!3166057))

(declare-fun m!3166367 () Bool)

(assert (=> d!796548 m!3166367))

(assert (=> d!796548 m!3166061))

(assert (=> d!796548 m!3166065))

(assert (=> d!796548 m!3166097))

(declare-fun m!3166369 () Bool)

(assert (=> d!796548 m!3166369))

(assert (=> d!796548 m!3166057))

(declare-fun m!3166371 () Bool)

(assert (=> d!796548 m!3166371))

(declare-fun m!3166373 () Bool)

(assert (=> bm!177607 m!3166373))

(assert (=> b!2751436 m!3166057))

(declare-fun m!3166375 () Bool)

(assert (=> bm!177610 m!3166375))

(declare-fun m!3166377 () Bool)

(assert (=> bm!177603 m!3166377))

(declare-fun m!3166379 () Bool)

(assert (=> bm!177605 m!3166379))

(assert (=> b!2751443 m!3166057))

(assert (=> bm!177609 m!3166077))

(declare-fun m!3166381 () Bool)

(assert (=> b!2751445 m!3166381))

(declare-fun m!3166383 () Bool)

(assert (=> b!2751445 m!3166383))

(declare-fun m!3166385 () Bool)

(assert (=> b!2751445 m!3166385))

(declare-fun m!3166387 () Bool)

(assert (=> b!2751445 m!3166387))

(assert (=> b!2751445 m!3166057))

(declare-fun m!3166389 () Bool)

(assert (=> b!2751445 m!3166389))

(assert (=> b!2751445 m!3166383))

(declare-fun m!3166391 () Bool)

(assert (=> b!2751445 m!3166391))

(declare-fun m!3166393 () Bool)

(assert (=> b!2751445 m!3166393))

(assert (=> b!2751445 m!3166389))

(declare-fun m!3166395 () Bool)

(assert (=> b!2751445 m!3166395))

(declare-fun m!3166397 () Bool)

(assert (=> b!2751445 m!3166397))

(declare-fun m!3166399 () Bool)

(assert (=> b!2751445 m!3166399))

(declare-fun m!3166401 () Bool)

(assert (=> b!2751445 m!3166401))

(assert (=> b!2751445 m!3166023))

(declare-fun m!3166403 () Bool)

(assert (=> b!2751445 m!3166403))

(assert (=> b!2751445 m!3166399))

(declare-fun m!3166405 () Bool)

(assert (=> b!2751445 m!3166405))

(declare-fun m!3166407 () Bool)

(assert (=> b!2751445 m!3166407))

(assert (=> b!2751445 m!3166039))

(declare-fun m!3166409 () Bool)

(assert (=> b!2751445 m!3166409))

(assert (=> b!2751445 m!3166385))

(assert (=> b!2751445 m!3166021))

(assert (=> b!2751445 m!3166049))

(declare-fun m!3166411 () Bool)

(assert (=> b!2751445 m!3166411))

(assert (=> b!2751445 m!3166063))

(assert (=> bm!177611 m!3166039))

(declare-fun m!3166413 () Bool)

(assert (=> bm!177606 m!3166413))

(declare-fun m!3166415 () Bool)

(assert (=> bm!177608 m!3166415))

(assert (=> b!2751236 d!796548))

(declare-fun d!796550 () Bool)

(assert (=> d!796550 (= (valid!2870 (_3!2755 lt!972954)) (validCacheMapDown!380 (cache!3752 (_3!2755 lt!972954))))))

(declare-fun bs!490408 () Bool)

(assert (= bs!490408 d!796550))

(declare-fun m!3166417 () Bool)

(assert (=> bs!490408 m!3166417))

(assert (=> b!2751244 d!796550))

(assert (=> b!2751243 d!796548))

(declare-fun d!796552 () Bool)

(declare-fun c!445183 () Bool)

(assert (=> d!796552 (= c!445183 ((_ is Node!9929) (c!445117 input!5495)))))

(declare-fun e!1734615 () Bool)

(assert (=> d!796552 (= (inv!43219 (c!445117 input!5495)) e!1734615)))

(declare-fun b!2751452 () Bool)

(declare-fun inv!43224 (Conc!9929) Bool)

(assert (=> b!2751452 (= e!1734615 (inv!43224 (c!445117 input!5495)))))

(declare-fun b!2751453 () Bool)

(declare-fun e!1734616 () Bool)

(assert (=> b!2751453 (= e!1734615 e!1734616)))

(declare-fun res!1153626 () Bool)

(assert (=> b!2751453 (= res!1153626 (not ((_ is Leaf!15121) (c!445117 input!5495))))))

(assert (=> b!2751453 (=> res!1153626 e!1734616)))

(declare-fun b!2751454 () Bool)

(declare-fun inv!43225 (Conc!9929) Bool)

(assert (=> b!2751454 (= e!1734616 (inv!43225 (c!445117 input!5495)))))

(assert (= (and d!796552 c!445183) b!2751452))

(assert (= (and d!796552 (not c!445183)) b!2751453))

(assert (= (and b!2751453 (not res!1153626)) b!2751454))

(declare-fun m!3166419 () Bool)

(assert (=> b!2751452 m!3166419))

(declare-fun m!3166421 () Bool)

(assert (=> b!2751454 m!3166421))

(assert (=> b!2751230 d!796552))

(declare-fun d!796554 () Bool)

(assert (=> d!796554 (= (array_inv!4202 (_keys!4002 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))) (bvsge (size!24591 (_keys!4002 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2751242 d!796554))

(declare-fun d!796556 () Bool)

(assert (=> d!796556 (= (array_inv!4204 (_values!3983 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))) (bvsge (size!24590 (_values!3983 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2751242 d!796556))

(declare-fun d!796558 () Bool)

(assert (=> d!796558 (isPrefix!2524 lt!972950 lt!972950)))

(declare-fun lt!973223 () Unit!45585)

(declare-fun choose!16093 (List!31936 List!31936) Unit!45585)

(assert (=> d!796558 (= lt!973223 (choose!16093 lt!972950 lt!972950))))

(assert (=> d!796558 (= (lemmaIsPrefixRefl!1650 lt!972950 lt!972950) lt!973223)))

(declare-fun bs!490409 () Bool)

(assert (= bs!490409 d!796558))

(assert (=> bs!490409 m!3165999))

(declare-fun m!3166423 () Bool)

(assert (=> bs!490409 m!3166423))

(assert (=> bm!177558 d!796558))

(declare-fun bs!490410 () Bool)

(declare-fun d!796560 () Bool)

(assert (= bs!490410 (and d!796560 d!796470)))

(declare-fun lambda!100899 () Int)

(assert (=> bs!490410 (not (= lambda!100899 lambda!100891))))

(declare-fun bs!490411 () Bool)

(assert (= bs!490411 (and d!796560 b!2751280)))

(assert (=> bs!490411 (not (= lambda!100899 lambda!100892))))

(declare-fun bs!490412 () Bool)

(assert (= bs!490412 (and d!796560 b!2751281)))

(assert (=> bs!490412 (not (= lambda!100899 lambda!100893))))

(declare-fun exists!946 ((InoxSet Context!4530) Int) Bool)

(assert (=> d!796560 (= (nullableZipper!602 z!3597) (exists!946 z!3597 lambda!100899))))

(declare-fun bs!490413 () Bool)

(assert (= bs!490413 d!796560))

(declare-fun m!3166425 () Bool)

(assert (=> bs!490413 m!3166425))

(assert (=> bm!177559 d!796560))

(declare-fun d!796562 () Bool)

(assert (=> d!796562 (= (array_inv!4202 (_keys!4003 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))) (bvsge (size!24591 (_keys!4003 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2751240 d!796562))

(declare-fun d!796564 () Bool)

(assert (=> d!796564 (= (array_inv!4203 (_values!3984 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))) (bvsge (size!24592 (_values!3984 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2751240 d!796564))

(declare-fun d!796566 () Bool)

(assert (=> d!796566 (= (valid!2870 cacheDown!939) (validCacheMapDown!380 (cache!3752 cacheDown!939)))))

(declare-fun bs!490414 () Bool)

(assert (= bs!490414 d!796566))

(assert (=> bs!490414 m!3166259))

(assert (=> b!2751249 d!796566))

(declare-fun tp_is_empty!13983 () Bool)

(declare-fun tp!869128 () Bool)

(declare-fun e!1734631 () Bool)

(declare-fun mapDefault!16841 () List!31935)

(declare-fun tp!869123 () Bool)

(declare-fun setRes!21941 () Bool)

(declare-fun b!2751469 () Bool)

(declare-fun e!1734630 () Bool)

(assert (=> b!2751469 (= e!1734631 (and tp!869128 (inv!43223 (_2!18653 (_1!18654 (h!37255 mapDefault!16841)))) e!1734630 tp_is_empty!13983 setRes!21941 tp!869123))))

(declare-fun condSetEmpty!21942 () Bool)

(assert (=> b!2751469 (= condSetEmpty!21942 (= (_2!18654 (h!37255 mapDefault!16841)) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun e!1734634 () Bool)

(declare-fun setNonEmpty!21941 () Bool)

(declare-fun tp!869125 () Bool)

(declare-fun setElem!21941 () Context!4530)

(assert (=> setNonEmpty!21941 (= setRes!21941 (and tp!869125 (inv!43223 setElem!21941) e!1734634))))

(declare-fun setRest!21941 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21941 (= (_2!18654 (h!37255 mapDefault!16841)) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21941 true) setRest!21941))))

(declare-fun setNonEmpty!21942 () Bool)

(declare-fun setRes!21942 () Bool)

(declare-fun setElem!21942 () Context!4530)

(declare-fun tp!869131 () Bool)

(declare-fun e!1734633 () Bool)

(assert (=> setNonEmpty!21942 (= setRes!21942 (and tp!869131 (inv!43223 setElem!21942) e!1734633))))

(declare-fun mapValue!16841 () List!31935)

(declare-fun setRest!21942 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21942 (= (_2!18654 (h!37255 mapValue!16841)) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21942 true) setRest!21942))))

(declare-fun b!2751470 () Bool)

(declare-fun tp!869126 () Bool)

(assert (=> b!2751470 (= e!1734630 tp!869126)))

(declare-fun b!2751471 () Bool)

(declare-fun tp!869129 () Bool)

(assert (=> b!2751471 (= e!1734634 tp!869129)))

(declare-fun b!2751472 () Bool)

(declare-fun e!1734632 () Bool)

(declare-fun tp!869127 () Bool)

(assert (=> b!2751472 (= e!1734632 tp!869127)))

(declare-fun mapNonEmpty!16841 () Bool)

(declare-fun mapRes!16841 () Bool)

(declare-fun tp!869132 () Bool)

(declare-fun e!1734629 () Bool)

(assert (=> mapNonEmpty!16841 (= mapRes!16841 (and tp!869132 e!1734629))))

(declare-fun mapRest!16841 () (Array (_ BitVec 32) List!31935))

(declare-fun mapKey!16841 () (_ BitVec 32))

(assert (=> mapNonEmpty!16841 (= mapRest!16837 (store mapRest!16841 mapKey!16841 mapValue!16841))))

(declare-fun condMapEmpty!16841 () Bool)

(assert (=> mapNonEmpty!16837 (= condMapEmpty!16841 (= mapRest!16837 ((as const (Array (_ BitVec 32) List!31935)) mapDefault!16841)))))

(assert (=> mapNonEmpty!16837 (= tp!869097 (and e!1734631 mapRes!16841))))

(declare-fun setIsEmpty!21941 () Bool)

(assert (=> setIsEmpty!21941 setRes!21941))

(declare-fun mapIsEmpty!16841 () Bool)

(assert (=> mapIsEmpty!16841 mapRes!16841))

(declare-fun tp!869130 () Bool)

(declare-fun b!2751473 () Bool)

(declare-fun tp!869124 () Bool)

(assert (=> b!2751473 (= e!1734629 (and tp!869130 (inv!43223 (_2!18653 (_1!18654 (h!37255 mapValue!16841)))) e!1734632 tp_is_empty!13983 setRes!21942 tp!869124))))

(declare-fun condSetEmpty!21941 () Bool)

(assert (=> b!2751473 (= condSetEmpty!21941 (= (_2!18654 (h!37255 mapValue!16841)) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun setIsEmpty!21942 () Bool)

(assert (=> setIsEmpty!21942 setRes!21942))

(declare-fun b!2751474 () Bool)

(declare-fun tp!869133 () Bool)

(assert (=> b!2751474 (= e!1734633 tp!869133)))

(assert (= (and mapNonEmpty!16837 condMapEmpty!16841) mapIsEmpty!16841))

(assert (= (and mapNonEmpty!16837 (not condMapEmpty!16841)) mapNonEmpty!16841))

(assert (= b!2751473 b!2751472))

(assert (= (and b!2751473 condSetEmpty!21941) setIsEmpty!21942))

(assert (= (and b!2751473 (not condSetEmpty!21941)) setNonEmpty!21942))

(assert (= setNonEmpty!21942 b!2751474))

(assert (= (and mapNonEmpty!16841 ((_ is Cons!31835) mapValue!16841)) b!2751473))

(assert (= b!2751469 b!2751470))

(assert (= (and b!2751469 condSetEmpty!21942) setIsEmpty!21941))

(assert (= (and b!2751469 (not condSetEmpty!21942)) setNonEmpty!21941))

(assert (= setNonEmpty!21941 b!2751471))

(assert (= (and mapNonEmpty!16837 ((_ is Cons!31835) mapDefault!16841)) b!2751469))

(declare-fun m!3166427 () Bool)

(assert (=> b!2751469 m!3166427))

(declare-fun m!3166429 () Bool)

(assert (=> mapNonEmpty!16841 m!3166429))

(declare-fun m!3166431 () Bool)

(assert (=> setNonEmpty!21942 m!3166431))

(declare-fun m!3166433 () Bool)

(assert (=> setNonEmpty!21941 m!3166433))

(declare-fun m!3166435 () Bool)

(assert (=> b!2751473 m!3166435))

(declare-fun setRes!21945 () Bool)

(declare-fun tp!869148 () Bool)

(declare-fun e!1734643 () Bool)

(declare-fun tp!869146 () Bool)

(declare-fun b!2751483 () Bool)

(declare-fun e!1734641 () Bool)

(assert (=> b!2751483 (= e!1734641 (and tp!869148 (inv!43223 (_2!18653 (_1!18654 (h!37255 mapValue!16838)))) e!1734643 tp_is_empty!13983 setRes!21945 tp!869146))))

(declare-fun condSetEmpty!21945 () Bool)

(assert (=> b!2751483 (= condSetEmpty!21945 (= (_2!18654 (h!37255 mapValue!16838)) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun b!2751484 () Bool)

(declare-fun tp!869144 () Bool)

(assert (=> b!2751484 (= e!1734643 tp!869144)))

(declare-fun setNonEmpty!21945 () Bool)

(declare-fun tp!869145 () Bool)

(declare-fun setElem!21945 () Context!4530)

(declare-fun e!1734642 () Bool)

(assert (=> setNonEmpty!21945 (= setRes!21945 (and tp!869145 (inv!43223 setElem!21945) e!1734642))))

(declare-fun setRest!21945 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21945 (= (_2!18654 (h!37255 mapValue!16838)) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21945 true) setRest!21945))))

(declare-fun b!2751485 () Bool)

(declare-fun tp!869147 () Bool)

(assert (=> b!2751485 (= e!1734642 tp!869147)))

(declare-fun setIsEmpty!21945 () Bool)

(assert (=> setIsEmpty!21945 setRes!21945))

(assert (=> mapNonEmpty!16837 (= tp!869086 e!1734641)))

(assert (= b!2751483 b!2751484))

(assert (= (and b!2751483 condSetEmpty!21945) setIsEmpty!21945))

(assert (= (and b!2751483 (not condSetEmpty!21945)) setNonEmpty!21945))

(assert (= setNonEmpty!21945 b!2751485))

(assert (= (and mapNonEmpty!16837 ((_ is Cons!31835) mapValue!16838)) b!2751483))

(declare-fun m!3166437 () Bool)

(assert (=> b!2751483 m!3166437))

(declare-fun m!3166439 () Bool)

(assert (=> setNonEmpty!21945 m!3166439))

(declare-fun setIsEmpty!21948 () Bool)

(declare-fun setRes!21948 () Bool)

(assert (=> setIsEmpty!21948 setRes!21948))

(declare-fun e!1734651 () Bool)

(assert (=> b!2751231 (= tp!869088 e!1734651)))

(declare-fun b!2751494 () Bool)

(declare-fun e!1734650 () Bool)

(declare-fun tp!869158 () Bool)

(assert (=> b!2751494 (= e!1734650 tp!869158)))

(declare-fun b!2751495 () Bool)

(declare-fun e!1734652 () Bool)

(declare-fun tp!869160 () Bool)

(assert (=> b!2751495 (= e!1734652 tp!869160)))

(declare-fun b!2751496 () Bool)

(declare-fun tp!869159 () Bool)

(assert (=> b!2751496 (= e!1734651 (and (inv!43223 (_1!18651 (_1!18652 (h!37254 mapDefault!16837)))) e!1734652 tp_is_empty!13983 setRes!21948 tp!869159))))

(declare-fun condSetEmpty!21948 () Bool)

(assert (=> b!2751496 (= condSetEmpty!21948 (= (_2!18652 (h!37254 mapDefault!16837)) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun setElem!21948 () Context!4530)

(declare-fun tp!869157 () Bool)

(declare-fun setNonEmpty!21948 () Bool)

(assert (=> setNonEmpty!21948 (= setRes!21948 (and tp!869157 (inv!43223 setElem!21948) e!1734650))))

(declare-fun setRest!21948 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21948 (= (_2!18652 (h!37254 mapDefault!16837)) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21948 true) setRest!21948))))

(assert (= b!2751496 b!2751495))

(assert (= (and b!2751496 condSetEmpty!21948) setIsEmpty!21948))

(assert (= (and b!2751496 (not condSetEmpty!21948)) setNonEmpty!21948))

(assert (= setNonEmpty!21948 b!2751494))

(assert (= (and b!2751231 ((_ is Cons!31834) mapDefault!16837)) b!2751496))

(declare-fun m!3166441 () Bool)

(assert (=> b!2751496 m!3166441))

(declare-fun m!3166443 () Bool)

(assert (=> setNonEmpty!21948 m!3166443))

(declare-fun condSetEmpty!21951 () Bool)

(assert (=> setNonEmpty!21936 (= condSetEmpty!21951 (= setRest!21936 ((as const (Array Context!4530 Bool)) false)))))

(declare-fun setRes!21951 () Bool)

(assert (=> setNonEmpty!21936 (= tp!869094 setRes!21951)))

(declare-fun setIsEmpty!21951 () Bool)

(assert (=> setIsEmpty!21951 setRes!21951))

(declare-fun setNonEmpty!21951 () Bool)

(declare-fun e!1734655 () Bool)

(declare-fun tp!869166 () Bool)

(declare-fun setElem!21951 () Context!4530)

(assert (=> setNonEmpty!21951 (= setRes!21951 (and tp!869166 (inv!43223 setElem!21951) e!1734655))))

(declare-fun setRest!21951 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21951 (= setRest!21936 ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21951 true) setRest!21951))))

(declare-fun b!2751501 () Bool)

(declare-fun tp!869165 () Bool)

(assert (=> b!2751501 (= e!1734655 tp!869165)))

(assert (= (and setNonEmpty!21936 condSetEmpty!21951) setIsEmpty!21951))

(assert (= (and setNonEmpty!21936 (not condSetEmpty!21951)) setNonEmpty!21951))

(assert (= setNonEmpty!21951 b!2751501))

(declare-fun m!3166445 () Bool)

(assert (=> setNonEmpty!21951 m!3166445))

(declare-fun e!1734658 () Bool)

(declare-fun e!1734656 () Bool)

(declare-fun setRes!21952 () Bool)

(declare-fun tp!869171 () Bool)

(declare-fun b!2751502 () Bool)

(declare-fun tp!869169 () Bool)

(assert (=> b!2751502 (= e!1734656 (and tp!869171 (inv!43223 (_2!18653 (_1!18654 (h!37255 mapDefault!16838)))) e!1734658 tp_is_empty!13983 setRes!21952 tp!869169))))

(declare-fun condSetEmpty!21952 () Bool)

(assert (=> b!2751502 (= condSetEmpty!21952 (= (_2!18654 (h!37255 mapDefault!16838)) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun b!2751503 () Bool)

(declare-fun tp!869167 () Bool)

(assert (=> b!2751503 (= e!1734658 tp!869167)))

(declare-fun setElem!21952 () Context!4530)

(declare-fun tp!869168 () Bool)

(declare-fun setNonEmpty!21952 () Bool)

(declare-fun e!1734657 () Bool)

(assert (=> setNonEmpty!21952 (= setRes!21952 (and tp!869168 (inv!43223 setElem!21952) e!1734657))))

(declare-fun setRest!21952 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21952 (= (_2!18654 (h!37255 mapDefault!16838)) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21952 true) setRest!21952))))

(declare-fun b!2751504 () Bool)

(declare-fun tp!869170 () Bool)

(assert (=> b!2751504 (= e!1734657 tp!869170)))

(declare-fun setIsEmpty!21952 () Bool)

(assert (=> setIsEmpty!21952 setRes!21952))

(assert (=> b!2751262 (= tp!869087 e!1734656)))

(assert (= b!2751502 b!2751503))

(assert (= (and b!2751502 condSetEmpty!21952) setIsEmpty!21952))

(assert (= (and b!2751502 (not condSetEmpty!21952)) setNonEmpty!21952))

(assert (= setNonEmpty!21952 b!2751504))

(assert (= (and b!2751262 ((_ is Cons!31835) mapDefault!16838)) b!2751502))

(declare-fun m!3166447 () Bool)

(assert (=> b!2751502 m!3166447))

(declare-fun m!3166449 () Bool)

(assert (=> setNonEmpty!21952 m!3166449))

(declare-fun tp!869178 () Bool)

(declare-fun tp!869180 () Bool)

(declare-fun e!1734664 () Bool)

(declare-fun b!2751513 () Bool)

(assert (=> b!2751513 (= e!1734664 (and (inv!43219 (left!24314 (c!445117 input!5495))) tp!869178 (inv!43219 (right!24644 (c!445117 input!5495))) tp!869180))))

(declare-fun b!2751515 () Bool)

(declare-fun e!1734663 () Bool)

(declare-fun tp!869179 () Bool)

(assert (=> b!2751515 (= e!1734663 tp!869179)))

(declare-fun b!2751514 () Bool)

(declare-fun inv!43226 (IArray!19863) Bool)

(assert (=> b!2751514 (= e!1734664 (and (inv!43226 (xs!13036 (c!445117 input!5495))) e!1734663))))

(assert (=> b!2751230 (= tp!869093 (and (inv!43219 (c!445117 input!5495)) e!1734664))))

(assert (= (and b!2751230 ((_ is Node!9929) (c!445117 input!5495))) b!2751513))

(assert (= b!2751514 b!2751515))

(assert (= (and b!2751230 ((_ is Leaf!15121) (c!445117 input!5495))) b!2751514))

(declare-fun m!3166451 () Bool)

(assert (=> b!2751513 m!3166451))

(declare-fun m!3166453 () Bool)

(assert (=> b!2751513 m!3166453))

(declare-fun m!3166455 () Bool)

(assert (=> b!2751514 m!3166455))

(assert (=> b!2751230 m!3165979))

(declare-fun setIsEmpty!21953 () Bool)

(declare-fun setRes!21953 () Bool)

(assert (=> setIsEmpty!21953 setRes!21953))

(declare-fun e!1734666 () Bool)

(assert (=> b!2751242 (= tp!869084 e!1734666)))

(declare-fun b!2751516 () Bool)

(declare-fun e!1734665 () Bool)

(declare-fun tp!869182 () Bool)

(assert (=> b!2751516 (= e!1734665 tp!869182)))

(declare-fun b!2751517 () Bool)

(declare-fun e!1734667 () Bool)

(declare-fun tp!869184 () Bool)

(assert (=> b!2751517 (= e!1734667 tp!869184)))

(declare-fun tp!869183 () Bool)

(declare-fun b!2751518 () Bool)

(assert (=> b!2751518 (= e!1734666 (and (inv!43223 (_1!18651 (_1!18652 (h!37254 (zeroValue!3961 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820)))))))))) e!1734667 tp_is_empty!13983 setRes!21953 tp!869183))))

(declare-fun condSetEmpty!21953 () Bool)

(assert (=> b!2751518 (= condSetEmpty!21953 (= (_2!18652 (h!37254 (zeroValue!3961 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820)))))))) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun setNonEmpty!21953 () Bool)

(declare-fun setElem!21953 () Context!4530)

(declare-fun tp!869181 () Bool)

(assert (=> setNonEmpty!21953 (= setRes!21953 (and tp!869181 (inv!43223 setElem!21953) e!1734665))))

(declare-fun setRest!21953 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21953 (= (_2!18652 (h!37254 (zeroValue!3961 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21953 true) setRest!21953))))

(assert (= b!2751518 b!2751517))

(assert (= (and b!2751518 condSetEmpty!21953) setIsEmpty!21953))

(assert (= (and b!2751518 (not condSetEmpty!21953)) setNonEmpty!21953))

(assert (= setNonEmpty!21953 b!2751516))

(assert (= (and b!2751242 ((_ is Cons!31834) (zeroValue!3961 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820)))))))) b!2751518))

(declare-fun m!3166457 () Bool)

(assert (=> b!2751518 m!3166457))

(declare-fun m!3166459 () Bool)

(assert (=> setNonEmpty!21953 m!3166459))

(declare-fun setIsEmpty!21954 () Bool)

(declare-fun setRes!21954 () Bool)

(assert (=> setIsEmpty!21954 setRes!21954))

(declare-fun e!1734669 () Bool)

(assert (=> b!2751242 (= tp!869089 e!1734669)))

(declare-fun b!2751519 () Bool)

(declare-fun e!1734668 () Bool)

(declare-fun tp!869186 () Bool)

(assert (=> b!2751519 (= e!1734668 tp!869186)))

(declare-fun b!2751520 () Bool)

(declare-fun e!1734670 () Bool)

(declare-fun tp!869188 () Bool)

(assert (=> b!2751520 (= e!1734670 tp!869188)))

(declare-fun b!2751521 () Bool)

(declare-fun tp!869187 () Bool)

(assert (=> b!2751521 (= e!1734669 (and (inv!43223 (_1!18651 (_1!18652 (h!37254 (minValue!3961 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820)))))))))) e!1734670 tp_is_empty!13983 setRes!21954 tp!869187))))

(declare-fun condSetEmpty!21954 () Bool)

(assert (=> b!2751521 (= condSetEmpty!21954 (= (_2!18652 (h!37254 (minValue!3961 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820)))))))) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun tp!869185 () Bool)

(declare-fun setNonEmpty!21954 () Bool)

(declare-fun setElem!21954 () Context!4530)

(assert (=> setNonEmpty!21954 (= setRes!21954 (and tp!869185 (inv!43223 setElem!21954) e!1734668))))

(declare-fun setRest!21954 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21954 (= (_2!18652 (h!37254 (minValue!3961 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21954 true) setRest!21954))))

(assert (= b!2751521 b!2751520))

(assert (= (and b!2751521 condSetEmpty!21954) setIsEmpty!21954))

(assert (= (and b!2751521 (not condSetEmpty!21954)) setNonEmpty!21954))

(assert (= setNonEmpty!21954 b!2751519))

(assert (= (and b!2751242 ((_ is Cons!31834) (minValue!3961 (v!33443 (underlying!7607 (v!33444 (underlying!7608 (cache!3751 cacheUp!820)))))))) b!2751521))

(declare-fun m!3166461 () Bool)

(assert (=> b!2751521 m!3166461))

(declare-fun m!3166463 () Bool)

(assert (=> setNonEmpty!21954 m!3166463))

(declare-fun b!2751526 () Bool)

(declare-fun e!1734673 () Bool)

(declare-fun tp!869193 () Bool)

(declare-fun tp!869194 () Bool)

(assert (=> b!2751526 (= e!1734673 (and tp!869193 tp!869194))))

(assert (=> b!2751241 (= tp!869096 e!1734673)))

(assert (= (and b!2751241 ((_ is Cons!31833) (exprs!2765 setElem!21936))) b!2751526))

(declare-fun setIsEmpty!21959 () Bool)

(declare-fun setRes!21959 () Bool)

(assert (=> setIsEmpty!21959 setRes!21959))

(declare-fun mapValue!16844 () List!31934)

(declare-fun b!2751541 () Bool)

(declare-fun e!1734686 () Bool)

(declare-fun e!1734691 () Bool)

(declare-fun tp!869216 () Bool)

(assert (=> b!2751541 (= e!1734686 (and (inv!43223 (_1!18651 (_1!18652 (h!37254 mapValue!16844)))) e!1734691 tp_is_empty!13983 setRes!21959 tp!869216))))

(declare-fun condSetEmpty!21960 () Bool)

(assert (=> b!2751541 (= condSetEmpty!21960 (= (_2!18652 (h!37254 mapValue!16844)) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun setElem!21959 () Context!4530)

(declare-fun tp!869214 () Bool)

(declare-fun e!1734688 () Bool)

(declare-fun setNonEmpty!21959 () Bool)

(assert (=> setNonEmpty!21959 (= setRes!21959 (and tp!869214 (inv!43223 setElem!21959) e!1734688))))

(declare-fun setRest!21959 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21959 (= (_2!18652 (h!37254 mapValue!16844)) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21959 true) setRest!21959))))

(declare-fun setIsEmpty!21960 () Bool)

(declare-fun setRes!21960 () Bool)

(assert (=> setIsEmpty!21960 setRes!21960))

(declare-fun condMapEmpty!16844 () Bool)

(declare-fun mapDefault!16844 () List!31934)

(assert (=> mapNonEmpty!16838 (= condMapEmpty!16844 (= mapRest!16838 ((as const (Array (_ BitVec 32) List!31934)) mapDefault!16844)))))

(declare-fun e!1734690 () Bool)

(declare-fun mapRes!16844 () Bool)

(assert (=> mapNonEmpty!16838 (= tp!869100 (and e!1734690 mapRes!16844))))

(declare-fun e!1734689 () Bool)

(declare-fun tp!869217 () Bool)

(declare-fun b!2751542 () Bool)

(assert (=> b!2751542 (= e!1734690 (and (inv!43223 (_1!18651 (_1!18652 (h!37254 mapDefault!16844)))) e!1734689 tp_is_empty!13983 setRes!21960 tp!869217))))

(declare-fun condSetEmpty!21959 () Bool)

(assert (=> b!2751542 (= condSetEmpty!21959 (= (_2!18652 (h!37254 mapDefault!16844)) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun setElem!21960 () Context!4530)

(declare-fun e!1734687 () Bool)

(declare-fun setNonEmpty!21960 () Bool)

(declare-fun tp!869213 () Bool)

(assert (=> setNonEmpty!21960 (= setRes!21960 (and tp!869213 (inv!43223 setElem!21960) e!1734687))))

(declare-fun setRest!21960 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21960 (= (_2!18652 (h!37254 mapDefault!16844)) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21960 true) setRest!21960))))

(declare-fun b!2751543 () Bool)

(declare-fun tp!869218 () Bool)

(assert (=> b!2751543 (= e!1734687 tp!869218)))

(declare-fun b!2751544 () Bool)

(declare-fun tp!869220 () Bool)

(assert (=> b!2751544 (= e!1734688 tp!869220)))

(declare-fun mapNonEmpty!16844 () Bool)

(declare-fun tp!869215 () Bool)

(assert (=> mapNonEmpty!16844 (= mapRes!16844 (and tp!869215 e!1734686))))

(declare-fun mapKey!16844 () (_ BitVec 32))

(declare-fun mapRest!16844 () (Array (_ BitVec 32) List!31934))

(assert (=> mapNonEmpty!16844 (= mapRest!16838 (store mapRest!16844 mapKey!16844 mapValue!16844))))

(declare-fun b!2751545 () Bool)

(declare-fun tp!869219 () Bool)

(assert (=> b!2751545 (= e!1734689 tp!869219)))

(declare-fun mapIsEmpty!16844 () Bool)

(assert (=> mapIsEmpty!16844 mapRes!16844))

(declare-fun b!2751546 () Bool)

(declare-fun tp!869221 () Bool)

(assert (=> b!2751546 (= e!1734691 tp!869221)))

(assert (= (and mapNonEmpty!16838 condMapEmpty!16844) mapIsEmpty!16844))

(assert (= (and mapNonEmpty!16838 (not condMapEmpty!16844)) mapNonEmpty!16844))

(assert (= b!2751541 b!2751546))

(assert (= (and b!2751541 condSetEmpty!21960) setIsEmpty!21959))

(assert (= (and b!2751541 (not condSetEmpty!21960)) setNonEmpty!21959))

(assert (= setNonEmpty!21959 b!2751544))

(assert (= (and mapNonEmpty!16844 ((_ is Cons!31834) mapValue!16844)) b!2751541))

(assert (= b!2751542 b!2751545))

(assert (= (and b!2751542 condSetEmpty!21959) setIsEmpty!21960))

(assert (= (and b!2751542 (not condSetEmpty!21959)) setNonEmpty!21960))

(assert (= setNonEmpty!21960 b!2751543))

(assert (= (and mapNonEmpty!16838 ((_ is Cons!31834) mapDefault!16844)) b!2751542))

(declare-fun m!3166465 () Bool)

(assert (=> b!2751542 m!3166465))

(declare-fun m!3166467 () Bool)

(assert (=> setNonEmpty!21959 m!3166467))

(declare-fun m!3166469 () Bool)

(assert (=> setNonEmpty!21960 m!3166469))

(declare-fun m!3166471 () Bool)

(assert (=> mapNonEmpty!16844 m!3166471))

(declare-fun m!3166473 () Bool)

(assert (=> b!2751541 m!3166473))

(declare-fun setIsEmpty!21961 () Bool)

(declare-fun setRes!21961 () Bool)

(assert (=> setIsEmpty!21961 setRes!21961))

(declare-fun e!1734693 () Bool)

(assert (=> mapNonEmpty!16838 (= tp!869090 e!1734693)))

(declare-fun b!2751547 () Bool)

(declare-fun e!1734692 () Bool)

(declare-fun tp!869223 () Bool)

(assert (=> b!2751547 (= e!1734692 tp!869223)))

(declare-fun b!2751548 () Bool)

(declare-fun e!1734694 () Bool)

(declare-fun tp!869225 () Bool)

(assert (=> b!2751548 (= e!1734694 tp!869225)))

(declare-fun b!2751549 () Bool)

(declare-fun tp!869224 () Bool)

(assert (=> b!2751549 (= e!1734693 (and (inv!43223 (_1!18651 (_1!18652 (h!37254 mapValue!16837)))) e!1734694 tp_is_empty!13983 setRes!21961 tp!869224))))

(declare-fun condSetEmpty!21961 () Bool)

(assert (=> b!2751549 (= condSetEmpty!21961 (= (_2!18652 (h!37254 mapValue!16837)) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun tp!869222 () Bool)

(declare-fun setElem!21961 () Context!4530)

(declare-fun setNonEmpty!21961 () Bool)

(assert (=> setNonEmpty!21961 (= setRes!21961 (and tp!869222 (inv!43223 setElem!21961) e!1734692))))

(declare-fun setRest!21961 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21961 (= (_2!18652 (h!37254 mapValue!16837)) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21961 true) setRest!21961))))

(assert (= b!2751549 b!2751548))

(assert (= (and b!2751549 condSetEmpty!21961) setIsEmpty!21961))

(assert (= (and b!2751549 (not condSetEmpty!21961)) setNonEmpty!21961))

(assert (= setNonEmpty!21961 b!2751547))

(assert (= (and mapNonEmpty!16838 ((_ is Cons!31834) mapValue!16837)) b!2751549))

(declare-fun m!3166475 () Bool)

(assert (=> b!2751549 m!3166475))

(declare-fun m!3166477 () Bool)

(assert (=> setNonEmpty!21961 m!3166477))

(declare-fun tp!869228 () Bool)

(declare-fun e!1734695 () Bool)

(declare-fun b!2751550 () Bool)

(declare-fun setRes!21962 () Bool)

(declare-fun e!1734697 () Bool)

(declare-fun tp!869230 () Bool)

(assert (=> b!2751550 (= e!1734695 (and tp!869230 (inv!43223 (_2!18653 (_1!18654 (h!37255 (zeroValue!3962 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939)))))))))) e!1734697 tp_is_empty!13983 setRes!21962 tp!869228))))

(declare-fun condSetEmpty!21962 () Bool)

(assert (=> b!2751550 (= condSetEmpty!21962 (= (_2!18654 (h!37255 (zeroValue!3962 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939)))))))) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun b!2751551 () Bool)

(declare-fun tp!869226 () Bool)

(assert (=> b!2751551 (= e!1734697 tp!869226)))

(declare-fun setElem!21962 () Context!4530)

(declare-fun setNonEmpty!21962 () Bool)

(declare-fun tp!869227 () Bool)

(declare-fun e!1734696 () Bool)

(assert (=> setNonEmpty!21962 (= setRes!21962 (and tp!869227 (inv!43223 setElem!21962) e!1734696))))

(declare-fun setRest!21962 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21962 (= (_2!18654 (h!37255 (zeroValue!3962 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21962 true) setRest!21962))))

(declare-fun b!2751552 () Bool)

(declare-fun tp!869229 () Bool)

(assert (=> b!2751552 (= e!1734696 tp!869229)))

(declare-fun setIsEmpty!21962 () Bool)

(assert (=> setIsEmpty!21962 setRes!21962))

(assert (=> b!2751240 (= tp!869091 e!1734695)))

(assert (= b!2751550 b!2751551))

(assert (= (and b!2751550 condSetEmpty!21962) setIsEmpty!21962))

(assert (= (and b!2751550 (not condSetEmpty!21962)) setNonEmpty!21962))

(assert (= setNonEmpty!21962 b!2751552))

(assert (= (and b!2751240 ((_ is Cons!31835) (zeroValue!3962 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939)))))))) b!2751550))

(declare-fun m!3166479 () Bool)

(assert (=> b!2751550 m!3166479))

(declare-fun m!3166481 () Bool)

(assert (=> setNonEmpty!21962 m!3166481))

(declare-fun e!1734700 () Bool)

(declare-fun setRes!21963 () Bool)

(declare-fun tp!869235 () Bool)

(declare-fun e!1734698 () Bool)

(declare-fun tp!869233 () Bool)

(declare-fun b!2751553 () Bool)

(assert (=> b!2751553 (= e!1734698 (and tp!869235 (inv!43223 (_2!18653 (_1!18654 (h!37255 (minValue!3962 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939)))))))))) e!1734700 tp_is_empty!13983 setRes!21963 tp!869233))))

(declare-fun condSetEmpty!21963 () Bool)

(assert (=> b!2751553 (= condSetEmpty!21963 (= (_2!18654 (h!37255 (minValue!3962 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939)))))))) ((as const (Array Context!4530 Bool)) false)))))

(declare-fun b!2751554 () Bool)

(declare-fun tp!869231 () Bool)

(assert (=> b!2751554 (= e!1734700 tp!869231)))

(declare-fun setElem!21963 () Context!4530)

(declare-fun e!1734699 () Bool)

(declare-fun tp!869232 () Bool)

(declare-fun setNonEmpty!21963 () Bool)

(assert (=> setNonEmpty!21963 (= setRes!21963 (and tp!869232 (inv!43223 setElem!21963) e!1734699))))

(declare-fun setRest!21963 () (InoxSet Context!4530))

(assert (=> setNonEmpty!21963 (= (_2!18654 (h!37255 (minValue!3962 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4530 Bool)) false) setElem!21963 true) setRest!21963))))

(declare-fun b!2751555 () Bool)

(declare-fun tp!869234 () Bool)

(assert (=> b!2751555 (= e!1734699 tp!869234)))

(declare-fun setIsEmpty!21963 () Bool)

(assert (=> setIsEmpty!21963 setRes!21963))

(assert (=> b!2751240 (= tp!869092 e!1734698)))

(assert (= b!2751553 b!2751554))

(assert (= (and b!2751553 condSetEmpty!21963) setIsEmpty!21963))

(assert (= (and b!2751553 (not condSetEmpty!21963)) setNonEmpty!21963))

(assert (= setNonEmpty!21963 b!2751555))

(assert (= (and b!2751240 ((_ is Cons!31835) (minValue!3962 (v!33445 (underlying!7609 (v!33446 (underlying!7610 (cache!3752 cacheDown!939)))))))) b!2751553))

(declare-fun m!3166483 () Bool)

(assert (=> b!2751553 m!3166483))

(declare-fun m!3166485 () Bool)

(assert (=> setNonEmpty!21963 m!3166485))

(check-sat (not d!796458) (not bm!177608) (not d!796546) (not b!2751393) (not d!796566) (not d!796558) tp_is_empty!13983 (not bm!177590) (not bm!177598) (not d!796532) (not b!2751368) (not d!796460) (not setNonEmpty!21963) (not b!2751485) (not b!2751472) (not b!2751547) (not b!2751549) (not b!2751428) (not b!2751520) (not b!2751445) (not b!2751419) (not d!796508) (not b!2751541) (not d!796540) (not b!2751432) (not b!2751517) (not d!796524) (not b!2751334) (not d!796494) b_and!202589 (not b!2751546) (not b!2751348) (not b!2751526) (not d!796476) (not b!2751281) (not b!2751349) (not b!2751391) (not b!2751501) (not d!796488) (not b!2751543) (not bm!177595) (not d!796462) (not b!2751545) (not b!2751519) (not b!2751504) (not bm!177596) (not b!2751293) (not b!2751343) (not setNonEmpty!21942) (not b!2751370) (not b!2751347) (not b!2751280) (not b!2751294) (not d!796466) (not d!796538) (not b!2751376) (not b!2751274) (not mapNonEmpty!16841) (not d!796474) (not d!796514) (not setNonEmpty!21952) (not setNonEmpty!21948) (not b!2751341) (not b!2751548) (not b!2751392) (not d!796536) (not bm!177568) (not d!796544) (not b!2751443) (not d!796468) (not b!2751553) (not b!2751484) (not b!2751469) (not bm!177599) (not d!796534) (not b!2751494) (not b!2751495) (not bm!177569) (not b!2751372) (not b!2751483) (not d!796496) (not b!2751436) (not setNonEmpty!21941) b_and!202587 (not b!2751355) (not b!2751514) (not bm!177604) (not b!2751429) (not d!796502) (not bm!177602) (not b!2751396) (not bm!177612) (not b!2751554) (not setNonEmpty!21945) (not b!2751454) (not d!796542) (not b!2751452) (not bm!177594) (not b!2751552) (not bm!177603) (not b!2751473) (not bm!177593) (not b!2751230) (not d!796490) (not setNonEmpty!21962) b_and!202583 (not setNonEmpty!21951) (not d!796464) (not b!2751346) (not setNonEmpty!21960) (not setNonEmpty!21959) (not bm!177610) (not bm!177591) (not d!796492) (not bm!177592) (not b!2751503) (not b!2751295) (not b_next!78553) (not b!2751275) (not bm!177609) (not b!2751268) (not bm!177606) (not d!796478) (not b!2751542) (not b!2751361) (not b!2751513) (not b_next!78555) (not d!796550) (not b!2751515) (not b!2751518) (not b!2751502) (not d!796506) (not b!2751521) (not d!796512) (not b!2751474) (not b!2751345) (not b!2751516) (not bm!177607) (not d!796516) (not b!2751389) (not b_next!78551) (not d!796526) (not d!796560) (not d!796484) (not b!2751381) (not b!2751544) (not d!796530) (not bm!177611) (not bm!177597) (not b!2751306) (not d!796482) (not b!2751550) (not b!2751555) (not d!796480) (not b_next!78549) (not b!2751377) (not setNonEmpty!21954) (not b!2751496) (not d!796470) (not b!2751369) (not b!2751415) (not b!2751431) (not b!2751470) (not d!796548) (not b!2751373) (not b!2751292) b_and!202585 (not setNonEmpty!21961) (not b!2751471) (not b!2751358) (not bm!177605) (not b!2751291) (not b!2751354) (not b!2751305) (not mapNonEmpty!16844) (not b!2751551) (not b!2751387) (not setNonEmpty!21953))
(check-sat b_and!202589 b_and!202587 b_and!202583 (not b_next!78553) (not b_next!78555) (not b_next!78551) (not b_next!78549) b_and!202585)
