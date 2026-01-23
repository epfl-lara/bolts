; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266588 () Bool)

(assert start!266588)

(declare-fun b!2750064 () Bool)

(declare-fun b_free!77733 () Bool)

(declare-fun b_next!78437 () Bool)

(assert (=> b!2750064 (= b_free!77733 (not b_next!78437))))

(declare-fun tp!868179 () Bool)

(declare-fun b_and!202471 () Bool)

(assert (=> b!2750064 (= tp!868179 b_and!202471)))

(declare-fun b!2750057 () Bool)

(declare-fun b_free!77735 () Bool)

(declare-fun b_next!78439 () Bool)

(assert (=> b!2750057 (= b_free!77735 (not b_next!78439))))

(declare-fun tp!868177 () Bool)

(declare-fun b_and!202473 () Bool)

(assert (=> b!2750057 (= tp!868177 b_and!202473)))

(declare-fun b!2750074 () Bool)

(declare-fun b_free!77737 () Bool)

(declare-fun b_next!78441 () Bool)

(assert (=> b!2750074 (= b_free!77737 (not b_next!78441))))

(declare-fun tp!868180 () Bool)

(declare-fun b_and!202475 () Bool)

(assert (=> b!2750074 (= tp!868180 b_and!202475)))

(declare-fun b!2750053 () Bool)

(declare-fun b_free!77739 () Bool)

(declare-fun b_next!78443 () Bool)

(assert (=> b!2750053 (= b_free!77739 (not b_next!78443))))

(declare-fun tp!868167 () Bool)

(declare-fun b_and!202477 () Bool)

(assert (=> b!2750053 (= tp!868167 b_and!202477)))

(declare-fun mapIsEmpty!16747 () Bool)

(declare-fun mapRes!16747 () Bool)

(assert (=> mapIsEmpty!16747 mapRes!16747))

(declare-fun b!2750051 () Bool)

(declare-fun e!1733480 () Bool)

(declare-fun e!1733485 () Bool)

(assert (=> b!2750051 (= e!1733480 e!1733485)))

(declare-fun b!2750052 () Bool)

(declare-fun e!1733483 () Bool)

(declare-fun tp!868182 () Bool)

(declare-fun mapRes!16748 () Bool)

(assert (=> b!2750052 (= e!1733483 (and tp!868182 mapRes!16748))))

(declare-fun condMapEmpty!16747 () Bool)

(declare-datatypes ((C!16224 0))(
  ( (C!16225 (val!10046 Int)) )
))
(declare-datatypes ((Regex!8033 0))(
  ( (ElementMatch!8033 (c!445057 C!16224)) (Concat!13121 (regOne!16578 Regex!8033) (regTwo!16578 Regex!8033)) (EmptyExpr!8033) (Star!8033 (reg!8362 Regex!8033)) (EmptyLang!8033) (Union!8033 (regOne!16579 Regex!8033) (regTwo!16579 Regex!8033)) )
))
(declare-datatypes ((List!31878 0))(
  ( (Nil!31778) (Cons!31778 (h!37198 Regex!8033) (t!227982 List!31878)) )
))
(declare-datatypes ((Context!4502 0))(
  ( (Context!4503 (exprs!2751 List!31878)) )
))
(declare-datatypes ((tuple2!31706 0))(
  ( (tuple2!31707 (_1!18584 Context!4502) (_2!18584 C!16224)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31708 0))(
  ( (tuple2!31709 (_1!18585 tuple2!31706) (_2!18585 (InoxSet Context!4502))) )
))
(declare-datatypes ((List!31879 0))(
  ( (Nil!31779) (Cons!31779 (h!37199 tuple2!31708) (t!227983 List!31879)) )
))
(declare-datatypes ((array!13089 0))(
  ( (array!13090 (arr!5841 (Array (_ BitVec 32) (_ BitVec 64))) (size!24539 (_ BitVec 32))) )
))
(declare-datatypes ((array!13091 0))(
  ( (array!13092 (arr!5842 (Array (_ BitVec 32) List!31879)) (size!24540 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7350 0))(
  ( (LongMapFixedSize!7351 (defaultEntry!4060 Int) (mask!9428 (_ BitVec 32)) (extraKeys!3924 (_ BitVec 32)) (zeroValue!3934 List!31879) (minValue!3934 List!31879) (_size!7393 (_ BitVec 32)) (_keys!3975 array!13089) (_values!3956 array!13091) (_vacant!3736 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14509 0))(
  ( (Cell!14510 (v!33389 LongMapFixedSize!7350)) )
))
(declare-datatypes ((MutLongMap!3675 0))(
  ( (LongMap!3675 (underlying!7553 Cell!14509)) (MutLongMapExt!3674 (__x!20675 Int)) )
))
(declare-datatypes ((Cell!14511 0))(
  ( (Cell!14512 (v!33390 MutLongMap!3675)) )
))
(declare-datatypes ((Hashable!3591 0))(
  ( (HashableExt!3590 (__x!20676 Int)) )
))
(declare-datatypes ((MutableMap!3581 0))(
  ( (MutableMapExt!3580 (__x!20677 Int)) (HashMap!3581 (underlying!7554 Cell!14511) (hashF!5623 Hashable!3591) (_size!7394 (_ BitVec 32)) (defaultValue!3752 Int)) )
))
(declare-datatypes ((CacheUp!2288 0))(
  ( (CacheUp!2289 (cache!3724 MutableMap!3581)) )
))
(declare-fun cacheUp!1023 () CacheUp!2288)

(declare-fun mapDefault!16748 () List!31879)

(assert (=> b!2750052 (= condMapEmpty!16747 (= (arr!5842 (_values!3956 (v!33389 (underlying!7553 (v!33390 (underlying!7554 (cache!3724 cacheUp!1023))))))) ((as const (Array (_ BitVec 32) List!31879)) mapDefault!16748)))))

(declare-fun e!1733484 () Bool)

(assert (=> b!2750053 (= e!1733485 (and e!1733484 tp!868167))))

(declare-fun b!2750054 () Bool)

(declare-fun res!1153266 () Bool)

(declare-fun e!1733470 () Bool)

(assert (=> b!2750054 (=> (not res!1153266) (not e!1733470))))

(declare-datatypes ((List!31880 0))(
  ( (Nil!31780) (Cons!31780 (h!37200 C!16224) (t!227984 List!31880)) )
))
(declare-datatypes ((IArray!19839 0))(
  ( (IArray!19840 (innerList!9977 List!31880)) )
))
(declare-datatypes ((tuple3!4522 0))(
  ( (tuple3!4523 (_1!18586 Regex!8033) (_2!18586 Context!4502) (_3!2731 C!16224)) )
))
(declare-datatypes ((tuple2!31710 0))(
  ( (tuple2!31711 (_1!18587 tuple3!4522) (_2!18587 (InoxSet Context!4502))) )
))
(declare-datatypes ((List!31881 0))(
  ( (Nil!31781) (Cons!31781 (h!37201 tuple2!31710) (t!227985 List!31881)) )
))
(declare-datatypes ((array!13093 0))(
  ( (array!13094 (arr!5843 (Array (_ BitVec 32) List!31881)) (size!24541 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7352 0))(
  ( (LongMapFixedSize!7353 (defaultEntry!4061 Int) (mask!9429 (_ BitVec 32)) (extraKeys!3925 (_ BitVec 32)) (zeroValue!3935 List!31881) (minValue!3935 List!31881) (_size!7395 (_ BitVec 32)) (_keys!3976 array!13089) (_values!3957 array!13093) (_vacant!3737 (_ BitVec 32))) )
))
(declare-datatypes ((Conc!9917 0))(
  ( (Node!9917 (left!24295 Conc!9917) (right!24625 Conc!9917) (csize!20064 Int) (cheight!10128 Int)) (Leaf!15102 (xs!13024 IArray!19839) (csize!20065 Int)) (Empty!9917) )
))
(declare-datatypes ((BalanceConc!19448 0))(
  ( (BalanceConc!19449 (c!445058 Conc!9917)) )
))
(declare-datatypes ((tuple2!31712 0))(
  ( (tuple2!31713 (_1!18588 BalanceConc!19448) (_2!18588 BalanceConc!19448)) )
))
(declare-datatypes ((Cell!14513 0))(
  ( (Cell!14514 (v!33391 LongMapFixedSize!7352)) )
))
(declare-datatypes ((MutLongMap!3676 0))(
  ( (LongMap!3676 (underlying!7555 Cell!14513)) (MutLongMapExt!3675 (__x!20678 Int)) )
))
(declare-datatypes ((Cell!14515 0))(
  ( (Cell!14516 (v!33392 MutLongMap!3676)) )
))
(declare-datatypes ((Hashable!3592 0))(
  ( (HashableExt!3591 (__x!20679 Int)) )
))
(declare-datatypes ((MutableMap!3582 0))(
  ( (MutableMapExt!3581 (__x!20680 Int)) (HashMap!3582 (underlying!7556 Cell!14515) (hashF!5624 Hashable!3592) (_size!7396 (_ BitVec 32)) (defaultValue!3753 Int)) )
))
(declare-datatypes ((CacheDown!2406 0))(
  ( (CacheDown!2407 (cache!3725 MutableMap!3582)) )
))
(declare-datatypes ((tuple3!4524 0))(
  ( (tuple3!4525 (_1!18589 tuple2!31712) (_2!18589 CacheUp!2288) (_3!2732 CacheDown!2406)) )
))
(declare-fun lt!972521 () tuple3!4524)

(declare-fun valid!2849 (CacheDown!2406) Bool)

(assert (=> b!2750054 (= res!1153266 (valid!2849 (_3!2732 lt!972521)))))

(declare-fun b!2750055 () Bool)

(declare-fun lt!972522 () tuple2!31712)

(assert (=> b!2750055 (= e!1733470 (= (_1!18589 lt!972521) lt!972522))))

(declare-fun b!2750056 () Bool)

(declare-fun e!1733473 () Bool)

(declare-fun tp!868186 () Bool)

(assert (=> b!2750056 (= e!1733473 (and tp!868186 mapRes!16747))))

(declare-fun condMapEmpty!16748 () Bool)

(declare-fun cacheDown!1142 () CacheDown!2406)

(declare-fun mapDefault!16747 () List!31881)

(assert (=> b!2750056 (= condMapEmpty!16748 (= (arr!5843 (_values!3957 (v!33391 (underlying!7555 (v!33392 (underlying!7556 (cache!3725 cacheDown!1142))))))) ((as const (Array (_ BitVec 32) List!31881)) mapDefault!16747)))))

(declare-fun tp!868176 () Bool)

(declare-fun e!1733471 () Bool)

(declare-fun tp!868174 () Bool)

(declare-fun array_inv!4175 (array!13089) Bool)

(declare-fun array_inv!4176 (array!13091) Bool)

(assert (=> b!2750057 (= e!1733471 (and tp!868177 tp!868174 tp!868176 (array_inv!4175 (_keys!3975 (v!33389 (underlying!7553 (v!33390 (underlying!7554 (cache!3724 cacheUp!1023))))))) (array_inv!4176 (_values!3956 (v!33389 (underlying!7553 (v!33390 (underlying!7554 (cache!3724 cacheUp!1023))))))) e!1733483))))

(declare-fun b!2750059 () Bool)

(declare-fun res!1153264 () Bool)

(declare-fun e!1733482 () Bool)

(assert (=> b!2750059 (=> (not res!1153264) (not e!1733482))))

(assert (=> b!2750059 (= res!1153264 (valid!2849 cacheDown!1142))))

(declare-fun b!2750060 () Bool)

(declare-fun e!1733486 () Bool)

(declare-fun tp!868175 () Bool)

(declare-fun tp!868171 () Bool)

(assert (=> b!2750060 (= e!1733486 (and tp!868175 tp!868171))))

(declare-fun b!2750061 () Bool)

(declare-fun tp!868178 () Bool)

(assert (=> b!2750061 (= e!1733486 tp!868178)))

(declare-fun b!2750062 () Bool)

(declare-fun e!1733487 () Bool)

(declare-fun lt!972525 () MutLongMap!3676)

(get-info :version)

(assert (=> b!2750062 (= e!1733484 (and e!1733487 ((_ is LongMap!3676) lt!972525)))))

(assert (=> b!2750062 (= lt!972525 (v!33392 (underlying!7556 (cache!3725 cacheDown!1142))))))

(declare-fun b!2750063 () Bool)

(declare-fun tp!868185 () Bool)

(declare-fun tp!868168 () Bool)

(assert (=> b!2750063 (= e!1733486 (and tp!868185 tp!868168))))

(declare-fun tp!868169 () Bool)

(declare-fun e!1733478 () Bool)

(declare-fun tp!868183 () Bool)

(declare-fun array_inv!4177 (array!13093) Bool)

(assert (=> b!2750064 (= e!1733478 (and tp!868179 tp!868169 tp!868183 (array_inv!4175 (_keys!3976 (v!33391 (underlying!7555 (v!33392 (underlying!7556 (cache!3725 cacheDown!1142))))))) (array_inv!4177 (_values!3957 (v!33391 (underlying!7555 (v!33392 (underlying!7556 (cache!3725 cacheDown!1142))))))) e!1733473))))

(declare-fun mapNonEmpty!16747 () Bool)

(declare-fun tp!868173 () Bool)

(declare-fun tp!868184 () Bool)

(assert (=> mapNonEmpty!16747 (= mapRes!16748 (and tp!868173 tp!868184))))

(declare-fun mapRest!16748 () (Array (_ BitVec 32) List!31879))

(declare-fun mapKey!16748 () (_ BitVec 32))

(declare-fun mapValue!16747 () List!31879)

(assert (=> mapNonEmpty!16747 (= (arr!5842 (_values!3956 (v!33389 (underlying!7553 (v!33390 (underlying!7554 (cache!3724 cacheUp!1023))))))) (store mapRest!16748 mapKey!16748 mapValue!16747))))

(declare-fun b!2750065 () Bool)

(declare-fun e!1733488 () Bool)

(assert (=> b!2750065 (= e!1733488 e!1733471)))

(declare-fun b!2750066 () Bool)

(declare-fun e!1733479 () Bool)

(declare-fun input!6491 () BalanceConc!19448)

(declare-fun tp!868172 () Bool)

(declare-fun inv!43159 (Conc!9917) Bool)

(assert (=> b!2750066 (= e!1733479 (and (inv!43159 (c!445058 input!6491)) tp!868172))))

(declare-fun mapIsEmpty!16748 () Bool)

(assert (=> mapIsEmpty!16748 mapRes!16748))

(declare-fun b!2750067 () Bool)

(declare-fun tp_is_empty!13969 () Bool)

(assert (=> b!2750067 (= e!1733486 tp_is_empty!13969)))

(declare-fun mapNonEmpty!16748 () Bool)

(declare-fun tp!868181 () Bool)

(declare-fun tp!868170 () Bool)

(assert (=> mapNonEmpty!16748 (= mapRes!16747 (and tp!868181 tp!868170))))

(declare-fun mapValue!16748 () List!31881)

(declare-fun mapRest!16747 () (Array (_ BitVec 32) List!31881))

(declare-fun mapKey!16747 () (_ BitVec 32))

(assert (=> mapNonEmpty!16748 (= (arr!5843 (_values!3957 (v!33391 (underlying!7555 (v!33392 (underlying!7556 (cache!3725 cacheDown!1142))))))) (store mapRest!16747 mapKey!16747 mapValue!16748))))

(declare-fun res!1153265 () Bool)

(assert (=> start!266588 (=> (not res!1153265) (not e!1733482))))

(declare-fun r!15227 () Regex!8033)

(declare-fun validRegex!3329 (Regex!8033) Bool)

(assert (=> start!266588 (= res!1153265 (validRegex!3329 r!15227))))

(assert (=> start!266588 e!1733482))

(assert (=> start!266588 e!1733486))

(declare-fun e!1733489 () Bool)

(declare-fun inv!43160 (CacheUp!2288) Bool)

(assert (=> start!266588 (and (inv!43160 cacheUp!1023) e!1733489)))

(declare-fun inv!43161 (CacheDown!2406) Bool)

(assert (=> start!266588 (and (inv!43161 cacheDown!1142) e!1733480)))

(declare-fun inv!43162 (BalanceConc!19448) Bool)

(assert (=> start!266588 (and (inv!43162 input!6491) e!1733479)))

(declare-fun b!2750058 () Bool)

(declare-fun e!1733481 () Bool)

(assert (=> b!2750058 (= e!1733481 e!1733478)))

(declare-fun b!2750068 () Bool)

(declare-fun e!1733476 () Bool)

(declare-fun e!1733472 () Bool)

(declare-fun lt!972523 () MutLongMap!3675)

(assert (=> b!2750068 (= e!1733476 (and e!1733472 ((_ is LongMap!3675) lt!972523)))))

(assert (=> b!2750068 (= lt!972523 (v!33390 (underlying!7554 (cache!3724 cacheUp!1023))))))

(declare-fun b!2750069 () Bool)

(declare-fun e!1733475 () Bool)

(assert (=> b!2750069 (= e!1733489 e!1733475)))

(declare-fun b!2750070 () Bool)

(assert (=> b!2750070 (= e!1733482 (not true))))

(assert (=> b!2750070 e!1733470))

(declare-fun res!1153268 () Bool)

(assert (=> b!2750070 (=> (not res!1153268) (not e!1733470))))

(declare-fun valid!2850 (CacheUp!2288) Bool)

(assert (=> b!2750070 (= res!1153268 (valid!2850 (_2!18589 lt!972521)))))

(declare-fun lt!972520 () (InoxSet Context!4502))

(declare-fun findLongestMatchZipperFastMem!2 ((InoxSet Context!4502) BalanceConc!19448 CacheUp!2288 CacheDown!2406) tuple3!4524)

(assert (=> b!2750070 (= lt!972521 (findLongestMatchZipperFastMem!2 lt!972520 input!6491 cacheUp!1023 cacheDown!1142))))

(declare-fun lt!972524 () tuple2!31712)

(assert (=> b!2750070 (= lt!972524 lt!972522)))

(declare-fun findLongestMatchZipperFast!3 ((InoxSet Context!4502) BalanceConc!19448) tuple2!31712)

(assert (=> b!2750070 (= lt!972522 (findLongestMatchZipperFast!3 lt!972520 input!6491))))

(declare-fun findLongestMatchWithZipperSequence!201 (Regex!8033 BalanceConc!19448) tuple2!31712)

(assert (=> b!2750070 (= lt!972524 (findLongestMatchWithZipperSequence!201 r!15227 input!6491))))

(declare-fun lt!972528 () List!31880)

(declare-fun sizeTr!148 (List!31880 Int) Int)

(declare-fun size!24542 (List!31880) Int)

(assert (=> b!2750070 (= (sizeTr!148 lt!972528 0) (size!24542 lt!972528))))

(declare-datatypes ((Unit!45578 0))(
  ( (Unit!45579) )
))
(declare-fun lt!972526 () Unit!45578)

(declare-fun lemmaSizeTrEqualsSize!147 (List!31880 Int) Unit!45578)

(assert (=> b!2750070 (= lt!972526 (lemmaSizeTrEqualsSize!147 lt!972528 0))))

(declare-datatypes ((tuple2!31714 0))(
  ( (tuple2!31715 (_1!18590 List!31880) (_2!18590 List!31880)) )
))
(declare-fun findLongestMatchZipper!5 ((InoxSet Context!4502) List!31880) tuple2!31714)

(declare-fun findLongestMatch!721 (Regex!8033 List!31880) tuple2!31714)

(assert (=> b!2750070 (= (findLongestMatchZipper!5 lt!972520 lt!972528) (findLongestMatch!721 r!15227 lt!972528))))

(declare-fun lt!972527 () Unit!45578)

(declare-fun longestMatchSameAsRegex!5 (Regex!8033 (InoxSet Context!4502) List!31880) Unit!45578)

(assert (=> b!2750070 (= lt!972527 (longestMatchSameAsRegex!5 r!15227 lt!972520 lt!972528))))

(declare-fun list!12020 (BalanceConc!19448) List!31880)

(assert (=> b!2750070 (= lt!972528 (list!12020 input!6491))))

(declare-fun focus!289 (Regex!8033) (InoxSet Context!4502))

(assert (=> b!2750070 (= lt!972520 (focus!289 r!15227))))

(declare-fun b!2750071 () Bool)

(assert (=> b!2750071 (= e!1733472 e!1733488)))

(declare-fun b!2750072 () Bool)

(assert (=> b!2750072 (= e!1733487 e!1733481)))

(declare-fun b!2750073 () Bool)

(declare-fun res!1153267 () Bool)

(assert (=> b!2750073 (=> (not res!1153267) (not e!1733482))))

(assert (=> b!2750073 (= res!1153267 (valid!2850 cacheUp!1023))))

(assert (=> b!2750074 (= e!1733475 (and e!1733476 tp!868180))))

(assert (= (and start!266588 res!1153265) b!2750073))

(assert (= (and b!2750073 res!1153267) b!2750059))

(assert (= (and b!2750059 res!1153264) b!2750070))

(assert (= (and b!2750070 res!1153268) b!2750054))

(assert (= (and b!2750054 res!1153266) b!2750055))

(assert (= (and start!266588 ((_ is ElementMatch!8033) r!15227)) b!2750067))

(assert (= (and start!266588 ((_ is Concat!13121) r!15227)) b!2750063))

(assert (= (and start!266588 ((_ is Star!8033) r!15227)) b!2750061))

(assert (= (and start!266588 ((_ is Union!8033) r!15227)) b!2750060))

(assert (= (and b!2750052 condMapEmpty!16747) mapIsEmpty!16748))

(assert (= (and b!2750052 (not condMapEmpty!16747)) mapNonEmpty!16747))

(assert (= b!2750057 b!2750052))

(assert (= b!2750065 b!2750057))

(assert (= b!2750071 b!2750065))

(assert (= (and b!2750068 ((_ is LongMap!3675) (v!33390 (underlying!7554 (cache!3724 cacheUp!1023))))) b!2750071))

(assert (= b!2750074 b!2750068))

(assert (= (and b!2750069 ((_ is HashMap!3581) (cache!3724 cacheUp!1023))) b!2750074))

(assert (= start!266588 b!2750069))

(assert (= (and b!2750056 condMapEmpty!16748) mapIsEmpty!16747))

(assert (= (and b!2750056 (not condMapEmpty!16748)) mapNonEmpty!16748))

(assert (= b!2750064 b!2750056))

(assert (= b!2750058 b!2750064))

(assert (= b!2750072 b!2750058))

(assert (= (and b!2750062 ((_ is LongMap!3676) (v!33392 (underlying!7556 (cache!3725 cacheDown!1142))))) b!2750072))

(assert (= b!2750053 b!2750062))

(assert (= (and b!2750051 ((_ is HashMap!3582) (cache!3725 cacheDown!1142))) b!2750053))

(assert (= start!266588 b!2750051))

(assert (= start!266588 b!2750066))

(declare-fun m!3165243 () Bool)

(assert (=> mapNonEmpty!16747 m!3165243))

(declare-fun m!3165245 () Bool)

(assert (=> b!2750057 m!3165245))

(declare-fun m!3165247 () Bool)

(assert (=> b!2750057 m!3165247))

(declare-fun m!3165249 () Bool)

(assert (=> start!266588 m!3165249))

(declare-fun m!3165251 () Bool)

(assert (=> start!266588 m!3165251))

(declare-fun m!3165253 () Bool)

(assert (=> start!266588 m!3165253))

(declare-fun m!3165255 () Bool)

(assert (=> start!266588 m!3165255))

(declare-fun m!3165257 () Bool)

(assert (=> b!2750059 m!3165257))

(declare-fun m!3165259 () Bool)

(assert (=> b!2750064 m!3165259))

(declare-fun m!3165261 () Bool)

(assert (=> b!2750064 m!3165261))

(declare-fun m!3165263 () Bool)

(assert (=> b!2750054 m!3165263))

(declare-fun m!3165265 () Bool)

(assert (=> b!2750066 m!3165265))

(declare-fun m!3165267 () Bool)

(assert (=> b!2750070 m!3165267))

(declare-fun m!3165269 () Bool)

(assert (=> b!2750070 m!3165269))

(declare-fun m!3165271 () Bool)

(assert (=> b!2750070 m!3165271))

(declare-fun m!3165273 () Bool)

(assert (=> b!2750070 m!3165273))

(declare-fun m!3165275 () Bool)

(assert (=> b!2750070 m!3165275))

(declare-fun m!3165277 () Bool)

(assert (=> b!2750070 m!3165277))

(declare-fun m!3165279 () Bool)

(assert (=> b!2750070 m!3165279))

(declare-fun m!3165281 () Bool)

(assert (=> b!2750070 m!3165281))

(declare-fun m!3165283 () Bool)

(assert (=> b!2750070 m!3165283))

(declare-fun m!3165285 () Bool)

(assert (=> b!2750070 m!3165285))

(declare-fun m!3165287 () Bool)

(assert (=> b!2750070 m!3165287))

(declare-fun m!3165289 () Bool)

(assert (=> b!2750070 m!3165289))

(declare-fun m!3165291 () Bool)

(assert (=> b!2750073 m!3165291))

(declare-fun m!3165293 () Bool)

(assert (=> mapNonEmpty!16748 m!3165293))

(check-sat (not b_next!78437) (not b!2750059) (not b!2750073) (not mapNonEmpty!16747) b_and!202471 (not b_next!78441) (not start!266588) (not b!2750066) b_and!202475 (not b_next!78443) (not b!2750063) b_and!202473 (not b!2750070) (not b!2750061) (not mapNonEmpty!16748) tp_is_empty!13969 (not b!2750052) (not b_next!78439) (not b!2750064) (not b!2750060) b_and!202477 (not b!2750054) (not b!2750057) (not b!2750056))
(check-sat b_and!202475 (not b_next!78437) b_and!202471 (not b_next!78439) (not b_next!78441) b_and!202477 (not b_next!78443) b_and!202473)
