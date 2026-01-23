; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228236 () Bool)

(assert start!228236)

(declare-fun b!2313551 () Bool)

(declare-fun b_free!70061 () Bool)

(declare-fun b_next!70765 () Bool)

(assert (=> b!2313551 (= b_free!70061 (not b_next!70765))))

(declare-fun tp!734321 () Bool)

(declare-fun b_and!184961 () Bool)

(assert (=> b!2313551 (= tp!734321 b_and!184961)))

(declare-fun b!2313557 () Bool)

(declare-fun b_free!70063 () Bool)

(declare-fun b_next!70767 () Bool)

(assert (=> b!2313557 (= b_free!70063 (not b_next!70767))))

(declare-fun tp!734315 () Bool)

(declare-fun b_and!184963 () Bool)

(assert (=> b!2313557 (= tp!734315 b_and!184963)))

(declare-fun b!2313561 () Bool)

(declare-fun b_free!70065 () Bool)

(declare-fun b_next!70769 () Bool)

(assert (=> b!2313561 (= b_free!70065 (not b_next!70769))))

(declare-fun tp!734327 () Bool)

(declare-fun b_and!184965 () Bool)

(assert (=> b!2313561 (= tp!734327 b_and!184965)))

(declare-fun b!2313548 () Bool)

(declare-fun b_free!70067 () Bool)

(declare-fun b_next!70771 () Bool)

(assert (=> b!2313548 (= b_free!70067 (not b_next!70771))))

(declare-fun tp!734326 () Bool)

(declare-fun b_and!184967 () Bool)

(assert (=> b!2313548 (= tp!734326 b_and!184967)))

(declare-fun b!2313546 () Bool)

(declare-fun e!1482928 () Bool)

(declare-fun e!1482938 () Bool)

(assert (=> b!2313546 (= e!1482928 (not e!1482938))))

(declare-fun res!988809 () Bool)

(assert (=> b!2313546 (=> (not res!988809) (not e!1482938))))

(declare-datatypes ((C!13696 0))(
  ( (C!13697 (val!7904 Int)) )
))
(declare-datatypes ((List!27652 0))(
  ( (Nil!27554) (Cons!27554 (h!32955 C!13696) (t!207252 List!27652)) )
))
(declare-datatypes ((IArray!18007 0))(
  ( (IArray!18008 (innerList!9061 List!27652)) )
))
(declare-datatypes ((Conc!9001 0))(
  ( (Node!9001 (left!20896 Conc!9001) (right!21226 Conc!9001) (csize!18232 Int) (cheight!9212 Int)) (Leaf!13209 (xs!11943 IArray!18007) (csize!18233 Int)) (Empty!9001) )
))
(declare-datatypes ((BalanceConc!17734 0))(
  ( (BalanceConc!17735 (c!366772 Conc!9001)) )
))
(declare-fun totalInput!803 () BalanceConc!17734)

(declare-fun input!5503 () BalanceConc!17734)

(declare-datatypes ((Regex!6771 0))(
  ( (ElementMatch!6771 (c!366773 C!13696)) (Concat!11359 (regOne!14054 Regex!6771) (regTwo!14054 Regex!6771)) (EmptyExpr!6771) (Star!6771 (reg!7100 Regex!6771)) (EmptyLang!6771) (Union!6771 (regOne!14055 Regex!6771) (regTwo!14055 Regex!6771)) )
))
(declare-datatypes ((List!27653 0))(
  ( (Nil!27555) (Cons!27555 (h!32956 Regex!6771) (t!207253 List!27653)) )
))
(declare-datatypes ((Context!4186 0))(
  ( (Context!4187 (exprs!2593 List!27653)) )
))
(declare-datatypes ((tuple3!4100 0))(
  ( (tuple3!4101 (_1!16267 Regex!6771) (_2!16267 Context!4186) (_3!2520 C!13696)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27494 0))(
  ( (tuple2!27495 (_1!16268 tuple3!4100) (_2!16268 (InoxSet Context!4186))) )
))
(declare-datatypes ((List!27654 0))(
  ( (Nil!27556) (Cons!27556 (h!32957 tuple2!27494) (t!207254 List!27654)) )
))
(declare-datatypes ((array!11176 0))(
  ( (array!11177 (arr!4958 (Array (_ BitVec 32) List!27654)) (size!21771 (_ BitVec 32))) )
))
(declare-datatypes ((array!11178 0))(
  ( (array!11179 (arr!4959 (Array (_ BitVec 32) (_ BitVec 64))) (size!21772 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6376 0))(
  ( (LongMapFixedSize!6377 (defaultEntry!3553 Int) (mask!7944 (_ BitVec 32)) (extraKeys!3436 (_ BitVec 32)) (zeroValue!3446 List!27654) (minValue!3446 List!27654) (_size!6423 (_ BitVec 32)) (_keys!3485 array!11178) (_values!3468 array!11176) (_vacant!3249 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12569 0))(
  ( (Cell!12570 (v!30615 LongMapFixedSize!6376)) )
))
(declare-datatypes ((MutLongMap!3188 0))(
  ( (LongMap!3188 (underlying!6581 Cell!12569)) (MutLongMapExt!3187 (__x!18266 Int)) )
))
(declare-datatypes ((Cell!12571 0))(
  ( (Cell!12572 (v!30616 MutLongMap!3188)) )
))
(declare-datatypes ((Hashable!3098 0))(
  ( (HashableExt!3097 (__x!18267 Int)) )
))
(declare-datatypes ((MutableMap!3098 0))(
  ( (MutableMapExt!3097 (__x!18268 Int)) (HashMap!3098 (underlying!6582 Cell!12571) (hashF!5021 Hashable!3098) (_size!6424 (_ BitVec 32)) (defaultValue!3260 Int)) )
))
(declare-datatypes ((CacheDown!2160 0))(
  ( (CacheDown!2161 (cache!3477 MutableMap!3098)) )
))
(declare-datatypes ((tuple2!27496 0))(
  ( (tuple2!27497 (_1!16269 Context!4186) (_2!16269 C!13696)) )
))
(declare-datatypes ((tuple2!27498 0))(
  ( (tuple2!27499 (_1!16270 tuple2!27496) (_2!16270 (InoxSet Context!4186))) )
))
(declare-datatypes ((List!27655 0))(
  ( (Nil!27557) (Cons!27557 (h!32958 tuple2!27498) (t!207255 List!27655)) )
))
(declare-datatypes ((array!11180 0))(
  ( (array!11181 (arr!4960 (Array (_ BitVec 32) List!27655)) (size!21773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6378 0))(
  ( (LongMapFixedSize!6379 (defaultEntry!3554 Int) (mask!7945 (_ BitVec 32)) (extraKeys!3437 (_ BitVec 32)) (zeroValue!3447 List!27655) (minValue!3447 List!27655) (_size!6425 (_ BitVec 32)) (_keys!3486 array!11178) (_values!3469 array!11180) (_vacant!3250 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12573 0))(
  ( (Cell!12574 (v!30617 LongMapFixedSize!6378)) )
))
(declare-datatypes ((MutLongMap!3189 0))(
  ( (LongMap!3189 (underlying!6583 Cell!12573)) (MutLongMapExt!3188 (__x!18269 Int)) )
))
(declare-datatypes ((Cell!12575 0))(
  ( (Cell!12576 (v!30618 MutLongMap!3189)) )
))
(declare-datatypes ((Hashable!3099 0))(
  ( (HashableExt!3098 (__x!18270 Int)) )
))
(declare-datatypes ((MutableMap!3099 0))(
  ( (MutableMapExt!3098 (__x!18271 Int)) (HashMap!3099 (underlying!6584 Cell!12575) (hashF!5022 Hashable!3099) (_size!6426 (_ BitVec 32)) (defaultValue!3261 Int)) )
))
(declare-datatypes ((CacheUp!2052 0))(
  ( (CacheUp!2053 (cache!3478 MutableMap!3099)) )
))
(declare-datatypes ((tuple3!4102 0))(
  ( (tuple3!4103 (_1!16271 Int) (_2!16271 CacheUp!2052) (_3!2521 CacheDown!2160)) )
))
(declare-fun lt!857877 () tuple3!4102)

(declare-fun z!3756 () (InoxSet Context!4186))

(declare-datatypes ((tuple2!27500 0))(
  ( (tuple2!27501 (_1!16272 BalanceConc!17734) (_2!16272 BalanceConc!17734)) )
))
(declare-fun splitAt!72 (BalanceConc!17734 Int) tuple2!27500)

(declare-fun findLongestMatchZipperFastV2!14 ((InoxSet Context!4186) BalanceConc!17734 BalanceConc!17734) tuple2!27500)

(assert (=> b!2313546 (= res!988809 (= (splitAt!72 input!5503 (_1!16271 lt!857877)) (findLongestMatchZipperFastV2!14 z!3756 input!5503 totalInput!803)))))

(declare-fun e!1482942 () Bool)

(assert (=> b!2313546 e!1482942))

(declare-fun res!988808 () Bool)

(assert (=> b!2313546 (=> (not res!988808) (not e!1482942))))

(declare-fun lt!857875 () Int)

(declare-fun lt!857874 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!12 ((InoxSet Context!4186) Int BalanceConc!17734 Int) Int)

(assert (=> b!2313546 (= res!988808 (= (_1!16271 lt!857877) (findLongestMatchInnerZipperFastV2!12 z!3756 lt!857875 totalInput!803 lt!857874)))))

(declare-fun cacheDown!1056 () CacheDown!2160)

(declare-fun cacheUp!937 () CacheUp!2052)

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!9 ((InoxSet Context!4186) Int BalanceConc!17734 Int CacheUp!2052 CacheDown!2160) tuple3!4102)

(assert (=> b!2313546 (= lt!857877 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!9 z!3756 lt!857875 totalInput!803 lt!857874 cacheUp!937 cacheDown!1056))))

(declare-fun size!21774 (BalanceConc!17734) Int)

(assert (=> b!2313546 (= lt!857875 (- lt!857874 (size!21774 input!5503)))))

(assert (=> b!2313546 (= lt!857874 (size!21774 totalInput!803))))

(declare-fun b!2313547 () Bool)

(declare-fun e!1482930 () Bool)

(declare-fun tp!734329 () Bool)

(declare-fun mapRes!14926 () Bool)

(assert (=> b!2313547 (= e!1482930 (and tp!734329 mapRes!14926))))

(declare-fun condMapEmpty!14926 () Bool)

(declare-fun mapDefault!14927 () List!27654)

(assert (=> b!2313547 (= condMapEmpty!14926 (= (arr!4958 (_values!3468 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))) ((as const (Array (_ BitVec 32) List!27654)) mapDefault!14927)))))

(declare-fun tp!734314 () Bool)

(declare-fun e!1482933 () Bool)

(declare-fun tp!734319 () Bool)

(declare-fun e!1482934 () Bool)

(declare-fun array_inv!3561 (array!11178) Bool)

(declare-fun array_inv!3562 (array!11180) Bool)

(assert (=> b!2313548 (= e!1482933 (and tp!734326 tp!734314 tp!734319 (array_inv!3561 (_keys!3486 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))) (array_inv!3562 (_values!3469 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))) e!1482934))))

(declare-fun b!2313549 () Bool)

(declare-fun e!1482937 () Bool)

(declare-fun e!1482941 () Bool)

(assert (=> b!2313549 (= e!1482937 e!1482941)))

(declare-fun tp!734330 () Bool)

(declare-fun setNonEmpty!20761 () Bool)

(declare-fun setRes!20761 () Bool)

(declare-fun setElem!20761 () Context!4186)

(declare-fun e!1482927 () Bool)

(declare-fun inv!37301 (Context!4186) Bool)

(assert (=> setNonEmpty!20761 (= setRes!20761 (and tp!734330 (inv!37301 setElem!20761) e!1482927))))

(declare-fun setRest!20761 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20761 (= z!3756 ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20761 true) setRest!20761))))

(declare-fun b!2313550 () Bool)

(declare-fun e!1482939 () Bool)

(declare-fun e!1482932 () Bool)

(declare-fun lt!857878 () MutLongMap!3189)

(get-info :version)

(assert (=> b!2313550 (= e!1482939 (and e!1482932 ((_ is LongMap!3189) lt!857878)))))

(assert (=> b!2313550 (= lt!857878 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))

(declare-fun setIsEmpty!20761 () Bool)

(assert (=> setIsEmpty!20761 setRes!20761))

(declare-fun e!1482936 () Bool)

(declare-fun e!1482947 () Bool)

(assert (=> b!2313551 (= e!1482936 (and e!1482947 tp!734321))))

(declare-fun b!2313552 () Bool)

(declare-fun e!1482944 () Bool)

(declare-fun tp!734316 () Bool)

(declare-fun inv!37302 (Conc!9001) Bool)

(assert (=> b!2313552 (= e!1482944 (and (inv!37302 (c!366772 totalInput!803)) tp!734316))))

(declare-fun b!2313553 () Bool)

(declare-fun e!1482940 () Bool)

(assert (=> b!2313553 (= e!1482940 e!1482937)))

(declare-fun b!2313554 () Bool)

(declare-fun res!988810 () Bool)

(assert (=> b!2313554 (=> (not res!988810) (not e!1482938))))

(declare-fun valid!2394 (CacheUp!2052) Bool)

(assert (=> b!2313554 (= res!988810 (valid!2394 (_2!16271 lt!857877)))))

(declare-fun b!2313555 () Bool)

(declare-fun e!1482943 () Bool)

(declare-fun e!1482926 () Bool)

(assert (=> b!2313555 (= e!1482943 e!1482926)))

(declare-fun b!2313556 () Bool)

(declare-fun e!1482935 () Bool)

(assert (=> b!2313556 (= e!1482935 e!1482933)))

(assert (=> b!2313557 (= e!1482926 (and e!1482939 tp!734315))))

(declare-fun b!2313558 () Bool)

(declare-fun valid!2395 (CacheDown!2160) Bool)

(assert (=> b!2313558 (= e!1482942 (valid!2395 (_3!2521 lt!857877)))))

(declare-fun mapNonEmpty!14926 () Bool)

(declare-fun tp!734323 () Bool)

(declare-fun tp!734318 () Bool)

(assert (=> mapNonEmpty!14926 (= mapRes!14926 (and tp!734323 tp!734318))))

(declare-fun mapKey!14926 () (_ BitVec 32))

(declare-fun mapValue!14926 () List!27654)

(declare-fun mapRest!14927 () (Array (_ BitVec 32) List!27654))

(assert (=> mapNonEmpty!14926 (= (arr!4958 (_values!3468 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))) (store mapRest!14927 mapKey!14926 mapValue!14926))))

(declare-fun b!2313559 () Bool)

(assert (=> b!2313559 (= e!1482938 (valid!2395 (_3!2521 lt!857877)))))

(declare-fun b!2313560 () Bool)

(declare-fun e!1482946 () Bool)

(assert (=> b!2313560 (= e!1482946 e!1482936)))

(declare-fun tp!734317 () Bool)

(declare-fun tp!734324 () Bool)

(declare-fun array_inv!3563 (array!11176) Bool)

(assert (=> b!2313561 (= e!1482941 (and tp!734327 tp!734324 tp!734317 (array_inv!3561 (_keys!3485 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))) (array_inv!3563 (_values!3468 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))) e!1482930))))

(declare-fun b!2313562 () Bool)

(declare-fun lt!857876 () MutLongMap!3188)

(assert (=> b!2313562 (= e!1482947 (and e!1482940 ((_ is LongMap!3188) lt!857876)))))

(assert (=> b!2313562 (= lt!857876 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))

(declare-fun b!2313563 () Bool)

(declare-fun tp!734331 () Bool)

(assert (=> b!2313563 (= e!1482927 tp!734331)))

(declare-fun mapNonEmpty!14927 () Bool)

(declare-fun mapRes!14927 () Bool)

(declare-fun tp!734328 () Bool)

(declare-fun tp!734325 () Bool)

(assert (=> mapNonEmpty!14927 (= mapRes!14927 (and tp!734328 tp!734325))))

(declare-fun mapValue!14927 () List!27655)

(declare-fun mapRest!14926 () (Array (_ BitVec 32) List!27655))

(declare-fun mapKey!14927 () (_ BitVec 32))

(assert (=> mapNonEmpty!14927 (= (arr!4960 (_values!3469 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))) (store mapRest!14926 mapKey!14927 mapValue!14927))))

(declare-fun b!2313564 () Bool)

(declare-fun tp!734322 () Bool)

(assert (=> b!2313564 (= e!1482934 (and tp!734322 mapRes!14927))))

(declare-fun condMapEmpty!14927 () Bool)

(declare-fun mapDefault!14926 () List!27655)

(assert (=> b!2313564 (= condMapEmpty!14927 (= (arr!4960 (_values!3469 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))) ((as const (Array (_ BitVec 32) List!27655)) mapDefault!14926)))))

(declare-fun b!2313565 () Bool)

(assert (=> b!2313565 (= e!1482932 e!1482935)))

(declare-fun b!2313566 () Bool)

(declare-fun e!1482929 () Bool)

(declare-fun tp!734320 () Bool)

(assert (=> b!2313566 (= e!1482929 (and (inv!37302 (c!366772 input!5503)) tp!734320))))

(declare-fun mapIsEmpty!14926 () Bool)

(assert (=> mapIsEmpty!14926 mapRes!14927))

(declare-fun mapIsEmpty!14927 () Bool)

(assert (=> mapIsEmpty!14927 mapRes!14926))

(declare-fun b!2313567 () Bool)

(declare-fun res!988811 () Bool)

(assert (=> b!2313567 (=> (not res!988811) (not e!1482942))))

(assert (=> b!2313567 (= res!988811 (valid!2394 (_2!16271 lt!857877)))))

(declare-fun res!988812 () Bool)

(assert (=> start!228236 (=> (not res!988812) (not e!1482928))))

(declare-fun isSuffix!800 (List!27652 List!27652) Bool)

(declare-fun list!10918 (BalanceConc!17734) List!27652)

(assert (=> start!228236 (= res!988812 (isSuffix!800 (list!10918 input!5503) (list!10918 totalInput!803)))))

(assert (=> start!228236 e!1482928))

(declare-fun inv!37303 (BalanceConc!17734) Bool)

(assert (=> start!228236 (and (inv!37303 input!5503) e!1482929)))

(declare-fun inv!37304 (CacheDown!2160) Bool)

(assert (=> start!228236 (and (inv!37304 cacheDown!1056) e!1482946)))

(declare-fun condSetEmpty!20761 () Bool)

(assert (=> start!228236 (= condSetEmpty!20761 (= z!3756 ((as const (Array Context!4186 Bool)) false)))))

(assert (=> start!228236 setRes!20761))

(declare-fun inv!37305 (CacheUp!2052) Bool)

(assert (=> start!228236 (and (inv!37305 cacheUp!937) e!1482943)))

(assert (=> start!228236 (and (inv!37303 totalInput!803) e!1482944)))

(assert (= (and start!228236 res!988812) b!2313546))

(assert (= (and b!2313546 res!988808) b!2313567))

(assert (= (and b!2313567 res!988811) b!2313558))

(assert (= (and b!2313546 res!988809) b!2313554))

(assert (= (and b!2313554 res!988810) b!2313559))

(assert (= start!228236 b!2313566))

(assert (= (and b!2313547 condMapEmpty!14926) mapIsEmpty!14927))

(assert (= (and b!2313547 (not condMapEmpty!14926)) mapNonEmpty!14926))

(assert (= b!2313561 b!2313547))

(assert (= b!2313549 b!2313561))

(assert (= b!2313553 b!2313549))

(assert (= (and b!2313562 ((_ is LongMap!3188) (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))) b!2313553))

(assert (= b!2313551 b!2313562))

(assert (= (and b!2313560 ((_ is HashMap!3098) (cache!3477 cacheDown!1056))) b!2313551))

(assert (= start!228236 b!2313560))

(assert (= (and start!228236 condSetEmpty!20761) setIsEmpty!20761))

(assert (= (and start!228236 (not condSetEmpty!20761)) setNonEmpty!20761))

(assert (= setNonEmpty!20761 b!2313563))

(assert (= (and b!2313564 condMapEmpty!14927) mapIsEmpty!14926))

(assert (= (and b!2313564 (not condMapEmpty!14927)) mapNonEmpty!14927))

(assert (= b!2313548 b!2313564))

(assert (= b!2313556 b!2313548))

(assert (= b!2313565 b!2313556))

(assert (= (and b!2313550 ((_ is LongMap!3189) (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))) b!2313565))

(assert (= b!2313557 b!2313550))

(assert (= (and b!2313555 ((_ is HashMap!3099) (cache!3478 cacheUp!937))) b!2313557))

(assert (= start!228236 b!2313555))

(assert (= start!228236 b!2313552))

(declare-fun m!2740817 () Bool)

(assert (=> mapNonEmpty!14927 m!2740817))

(declare-fun m!2740819 () Bool)

(assert (=> start!228236 m!2740819))

(declare-fun m!2740821 () Bool)

(assert (=> start!228236 m!2740821))

(declare-fun m!2740823 () Bool)

(assert (=> start!228236 m!2740823))

(declare-fun m!2740825 () Bool)

(assert (=> start!228236 m!2740825))

(assert (=> start!228236 m!2740819))

(declare-fun m!2740827 () Bool)

(assert (=> start!228236 m!2740827))

(declare-fun m!2740829 () Bool)

(assert (=> start!228236 m!2740829))

(declare-fun m!2740831 () Bool)

(assert (=> start!228236 m!2740831))

(assert (=> start!228236 m!2740825))

(declare-fun m!2740833 () Bool)

(assert (=> b!2313559 m!2740833))

(declare-fun m!2740835 () Bool)

(assert (=> b!2313552 m!2740835))

(declare-fun m!2740837 () Bool)

(assert (=> b!2313561 m!2740837))

(declare-fun m!2740839 () Bool)

(assert (=> b!2313561 m!2740839))

(declare-fun m!2740841 () Bool)

(assert (=> b!2313546 m!2740841))

(declare-fun m!2740843 () Bool)

(assert (=> b!2313546 m!2740843))

(declare-fun m!2740845 () Bool)

(assert (=> b!2313546 m!2740845))

(declare-fun m!2740847 () Bool)

(assert (=> b!2313546 m!2740847))

(declare-fun m!2740849 () Bool)

(assert (=> b!2313546 m!2740849))

(declare-fun m!2740851 () Bool)

(assert (=> b!2313546 m!2740851))

(declare-fun m!2740853 () Bool)

(assert (=> b!2313554 m!2740853))

(declare-fun m!2740855 () Bool)

(assert (=> b!2313566 m!2740855))

(assert (=> b!2313567 m!2740853))

(declare-fun m!2740857 () Bool)

(assert (=> setNonEmpty!20761 m!2740857))

(declare-fun m!2740859 () Bool)

(assert (=> b!2313548 m!2740859))

(declare-fun m!2740861 () Bool)

(assert (=> b!2313548 m!2740861))

(assert (=> b!2313558 m!2740833))

(declare-fun m!2740863 () Bool)

(assert (=> mapNonEmpty!14926 m!2740863))

(check-sat (not b_next!70765) b_and!184967 (not mapNonEmpty!14926) (not b!2313563) (not b_next!70769) (not b_next!70767) (not b!2313548) (not b!2313547) (not b!2313554) (not b!2313564) (not b!2313558) (not start!228236) (not mapNonEmpty!14927) b_and!184961 (not b!2313561) (not b!2313567) (not setNonEmpty!20761) b_and!184963 (not b!2313566) (not b!2313559) (not b_next!70771) (not b!2313546) (not b!2313552) b_and!184965)
(check-sat b_and!184961 (not b_next!70765) b_and!184967 (not b_next!70769) (not b_next!70767) b_and!184963 (not b_next!70771) b_and!184965)
(get-model)

(declare-fun d!684402 () Bool)

(declare-fun lt!857881 () Int)

(declare-fun size!21775 (List!27652) Int)

(assert (=> d!684402 (= lt!857881 (size!21775 (list!10918 input!5503)))))

(declare-fun size!21776 (Conc!9001) Int)

(assert (=> d!684402 (= lt!857881 (size!21776 (c!366772 input!5503)))))

(assert (=> d!684402 (= (size!21774 input!5503) lt!857881)))

(declare-fun bs!458726 () Bool)

(assert (= bs!458726 d!684402))

(assert (=> bs!458726 m!2740825))

(assert (=> bs!458726 m!2740825))

(declare-fun m!2740865 () Bool)

(assert (=> bs!458726 m!2740865))

(declare-fun m!2740867 () Bool)

(assert (=> bs!458726 m!2740867))

(assert (=> b!2313546 d!684402))

(declare-fun d!684404 () Bool)

(declare-fun e!1482953 () Bool)

(assert (=> d!684404 e!1482953))

(declare-fun res!988820 () Bool)

(assert (=> d!684404 (=> (not res!988820) (not e!1482953))))

(declare-fun lt!857884 () tuple3!4102)

(assert (=> d!684404 (= res!988820 (= (_1!16271 lt!857884) (findLongestMatchInnerZipperFastV2!12 z!3756 lt!857875 totalInput!803 lt!857874)))))

(declare-fun choose!13532 ((InoxSet Context!4186) Int BalanceConc!17734 Int CacheUp!2052 CacheDown!2160) tuple3!4102)

(assert (=> d!684404 (= lt!857884 (choose!13532 z!3756 lt!857875 totalInput!803 lt!857874 cacheUp!937 cacheDown!1056))))

(declare-fun e!1482952 () Bool)

(assert (=> d!684404 e!1482952))

(declare-fun res!988821 () Bool)

(assert (=> d!684404 (=> (not res!988821) (not e!1482952))))

(assert (=> d!684404 (= res!988821 (>= lt!857875 0))))

(assert (=> d!684404 (= (findLongestMatchInnerZipperFastV2MemOnlyDeriv!9 z!3756 lt!857875 totalInput!803 lt!857874 cacheUp!937 cacheDown!1056) lt!857884)))

(declare-fun b!2313574 () Bool)

(assert (=> b!2313574 (= e!1482952 (<= lt!857875 (size!21774 totalInput!803)))))

(declare-fun b!2313575 () Bool)

(declare-fun res!988819 () Bool)

(assert (=> b!2313575 (=> (not res!988819) (not e!1482953))))

(assert (=> b!2313575 (= res!988819 (valid!2394 (_2!16271 lt!857884)))))

(declare-fun b!2313576 () Bool)

(assert (=> b!2313576 (= e!1482953 (valid!2395 (_3!2521 lt!857884)))))

(assert (= (and d!684404 res!988821) b!2313574))

(assert (= (and d!684404 res!988820) b!2313575))

(assert (= (and b!2313575 res!988819) b!2313576))

(assert (=> d!684404 m!2740849))

(declare-fun m!2740869 () Bool)

(assert (=> d!684404 m!2740869))

(assert (=> b!2313574 m!2740841))

(declare-fun m!2740871 () Bool)

(assert (=> b!2313575 m!2740871))

(declare-fun m!2740873 () Bool)

(assert (=> b!2313576 m!2740873))

(assert (=> b!2313546 d!684404))

(declare-fun b!2313593 () Bool)

(declare-fun e!1482967 () Int)

(assert (=> b!2313593 (= e!1482967 1)))

(declare-fun b!2313594 () Bool)

(declare-fun e!1482964 () Int)

(declare-fun e!1482966 () Int)

(assert (=> b!2313594 (= e!1482964 e!1482966)))

(declare-fun lt!857893 () (InoxSet Context!4186))

(declare-fun derivationStepZipper!334 ((InoxSet Context!4186) C!13696) (InoxSet Context!4186))

(declare-fun apply!6678 (BalanceConc!17734 Int) C!13696)

(assert (=> b!2313594 (= lt!857893 (derivationStepZipper!334 z!3756 (apply!6678 totalInput!803 lt!857875)))))

(declare-fun lt!857891 () Int)

(assert (=> b!2313594 (= lt!857891 (findLongestMatchInnerZipperFastV2!12 lt!857893 (+ lt!857875 1) totalInput!803 lt!857874))))

(declare-fun c!366782 () Bool)

(assert (=> b!2313594 (= c!366782 (> lt!857891 0))))

(declare-fun b!2313595 () Bool)

(assert (=> b!2313595 (= e!1482966 (+ 1 lt!857891))))

(declare-fun b!2313596 () Bool)

(assert (=> b!2313596 (= e!1482967 0)))

(declare-fun d!684406 () Bool)

(declare-fun lt!857892 () Int)

(assert (=> d!684406 (and (>= lt!857892 0) (<= lt!857892 (- lt!857874 lt!857875)))))

(assert (=> d!684406 (= lt!857892 e!1482964)))

(declare-fun c!366781 () Bool)

(declare-fun e!1482965 () Bool)

(assert (=> d!684406 (= c!366781 e!1482965)))

(declare-fun res!988826 () Bool)

(assert (=> d!684406 (=> res!988826 e!1482965)))

(assert (=> d!684406 (= res!988826 (= lt!857875 lt!857874))))

(declare-fun e!1482968 () Bool)

(assert (=> d!684406 e!1482968))

(declare-fun res!988827 () Bool)

(assert (=> d!684406 (=> (not res!988827) (not e!1482968))))

(assert (=> d!684406 (= res!988827 (>= lt!857875 0))))

(assert (=> d!684406 (= (findLongestMatchInnerZipperFastV2!12 z!3756 lt!857875 totalInput!803 lt!857874) lt!857892)))

(declare-fun b!2313597 () Bool)

(declare-fun c!366780 () Bool)

(declare-fun nullableZipper!592 ((InoxSet Context!4186)) Bool)

(assert (=> b!2313597 (= c!366780 (nullableZipper!592 lt!857893))))

(assert (=> b!2313597 (= e!1482966 e!1482967)))

(declare-fun b!2313598 () Bool)

(assert (=> b!2313598 (= e!1482968 (<= lt!857875 (size!21774 totalInput!803)))))

(declare-fun b!2313599 () Bool)

(assert (=> b!2313599 (= e!1482964 0)))

(declare-fun b!2313600 () Bool)

(declare-fun lostCauseZipper!398 ((InoxSet Context!4186)) Bool)

(assert (=> b!2313600 (= e!1482965 (lostCauseZipper!398 z!3756))))

(assert (= (and d!684406 res!988827) b!2313598))

(assert (= (and d!684406 (not res!988826)) b!2313600))

(assert (= (and d!684406 c!366781) b!2313599))

(assert (= (and d!684406 (not c!366781)) b!2313594))

(assert (= (and b!2313594 c!366782) b!2313595))

(assert (= (and b!2313594 (not c!366782)) b!2313597))

(assert (= (and b!2313597 c!366780) b!2313593))

(assert (= (and b!2313597 (not c!366780)) b!2313596))

(declare-fun m!2740875 () Bool)

(assert (=> b!2313594 m!2740875))

(assert (=> b!2313594 m!2740875))

(declare-fun m!2740877 () Bool)

(assert (=> b!2313594 m!2740877))

(declare-fun m!2740879 () Bool)

(assert (=> b!2313594 m!2740879))

(declare-fun m!2740881 () Bool)

(assert (=> b!2313597 m!2740881))

(assert (=> b!2313598 m!2740841))

(declare-fun m!2740883 () Bool)

(assert (=> b!2313600 m!2740883))

(assert (=> b!2313546 d!684406))

(declare-fun d!684408 () Bool)

(declare-fun e!1482971 () Bool)

(assert (=> d!684408 e!1482971))

(declare-fun res!988832 () Bool)

(assert (=> d!684408 (=> (not res!988832) (not e!1482971))))

(declare-fun lt!857898 () tuple2!27500)

(declare-fun isBalanced!2709 (Conc!9001) Bool)

(assert (=> d!684408 (= res!988832 (isBalanced!2709 (c!366772 (_1!16272 lt!857898))))))

(declare-datatypes ((tuple2!27502 0))(
  ( (tuple2!27503 (_1!16273 Conc!9001) (_2!16273 Conc!9001)) )
))
(declare-fun lt!857899 () tuple2!27502)

(assert (=> d!684408 (= lt!857898 (tuple2!27501 (BalanceConc!17735 (_1!16273 lt!857899)) (BalanceConc!17735 (_2!16273 lt!857899))))))

(declare-fun splitAt!73 (Conc!9001 Int) tuple2!27502)

(assert (=> d!684408 (= lt!857899 (splitAt!73 (c!366772 input!5503) (_1!16271 lt!857877)))))

(assert (=> d!684408 (isBalanced!2709 (c!366772 input!5503))))

(assert (=> d!684408 (= (splitAt!72 input!5503 (_1!16271 lt!857877)) lt!857898)))

(declare-fun b!2313605 () Bool)

(declare-fun res!988833 () Bool)

(assert (=> b!2313605 (=> (not res!988833) (not e!1482971))))

(assert (=> b!2313605 (= res!988833 (isBalanced!2709 (c!366772 (_2!16272 lt!857898))))))

(declare-fun b!2313606 () Bool)

(declare-datatypes ((tuple2!27504 0))(
  ( (tuple2!27505 (_1!16274 List!27652) (_2!16274 List!27652)) )
))
(declare-fun splitAtIndex!37 (List!27652 Int) tuple2!27504)

(assert (=> b!2313606 (= e!1482971 (= (tuple2!27505 (list!10918 (_1!16272 lt!857898)) (list!10918 (_2!16272 lt!857898))) (splitAtIndex!37 (list!10918 input!5503) (_1!16271 lt!857877))))))

(assert (= (and d!684408 res!988832) b!2313605))

(assert (= (and b!2313605 res!988833) b!2313606))

(declare-fun m!2740885 () Bool)

(assert (=> d!684408 m!2740885))

(declare-fun m!2740887 () Bool)

(assert (=> d!684408 m!2740887))

(declare-fun m!2740889 () Bool)

(assert (=> d!684408 m!2740889))

(declare-fun m!2740891 () Bool)

(assert (=> b!2313605 m!2740891))

(declare-fun m!2740893 () Bool)

(assert (=> b!2313606 m!2740893))

(declare-fun m!2740895 () Bool)

(assert (=> b!2313606 m!2740895))

(assert (=> b!2313606 m!2740825))

(assert (=> b!2313606 m!2740825))

(declare-fun m!2740897 () Bool)

(assert (=> b!2313606 m!2740897))

(assert (=> b!2313546 d!684408))

(declare-fun d!684410 () Bool)

(declare-fun lt!857904 () tuple2!27500)

(declare-fun ++!6748 (List!27652 List!27652) List!27652)

(assert (=> d!684410 (= (++!6748 (list!10918 (_1!16272 lt!857904)) (list!10918 (_2!16272 lt!857904))) (list!10918 input!5503))))

(declare-fun lt!857905 () Int)

(assert (=> d!684410 (= lt!857904 (splitAt!72 input!5503 (findLongestMatchInnerZipperFastV2!12 z!3756 (- lt!857905 (size!21774 input!5503)) totalInput!803 lt!857905)))))

(assert (=> d!684410 (= lt!857905 (size!21774 totalInput!803))))

(assert (=> d!684410 (isSuffix!800 (list!10918 input!5503) (list!10918 totalInput!803))))

(assert (=> d!684410 (= (findLongestMatchZipperFastV2!14 z!3756 input!5503 totalInput!803) lt!857904)))

(declare-fun bs!458727 () Bool)

(assert (= bs!458727 d!684410))

(assert (=> bs!458727 m!2740847))

(declare-fun m!2740899 () Bool)

(assert (=> bs!458727 m!2740899))

(assert (=> bs!458727 m!2740825))

(assert (=> bs!458727 m!2740825))

(assert (=> bs!458727 m!2740819))

(assert (=> bs!458727 m!2740827))

(declare-fun m!2740901 () Bool)

(assert (=> bs!458727 m!2740901))

(assert (=> bs!458727 m!2740899))

(assert (=> bs!458727 m!2740901))

(declare-fun m!2740903 () Bool)

(assert (=> bs!458727 m!2740903))

(assert (=> bs!458727 m!2740819))

(assert (=> bs!458727 m!2740841))

(declare-fun m!2740905 () Bool)

(assert (=> bs!458727 m!2740905))

(assert (=> bs!458727 m!2740905))

(declare-fun m!2740907 () Bool)

(assert (=> bs!458727 m!2740907))

(assert (=> b!2313546 d!684410))

(declare-fun d!684412 () Bool)

(declare-fun lt!857906 () Int)

(assert (=> d!684412 (= lt!857906 (size!21775 (list!10918 totalInput!803)))))

(assert (=> d!684412 (= lt!857906 (size!21776 (c!366772 totalInput!803)))))

(assert (=> d!684412 (= (size!21774 totalInput!803) lt!857906)))

(declare-fun bs!458728 () Bool)

(assert (= bs!458728 d!684412))

(assert (=> bs!458728 m!2740819))

(assert (=> bs!458728 m!2740819))

(declare-fun m!2740909 () Bool)

(assert (=> bs!458728 m!2740909))

(declare-fun m!2740911 () Bool)

(assert (=> bs!458728 m!2740911))

(assert (=> b!2313546 d!684412))

(declare-fun d!684414 () Bool)

(declare-fun validCacheMapUp!315 (MutableMap!3099) Bool)

(assert (=> d!684414 (= (valid!2394 (_2!16271 lt!857877)) (validCacheMapUp!315 (cache!3478 (_2!16271 lt!857877))))))

(declare-fun bs!458729 () Bool)

(assert (= bs!458729 d!684414))

(declare-fun m!2740913 () Bool)

(assert (=> bs!458729 m!2740913))

(assert (=> b!2313554 d!684414))

(declare-fun d!684416 () Bool)

(declare-fun validCacheMapDown!346 (MutableMap!3098) Bool)

(assert (=> d!684416 (= (valid!2395 (_3!2521 lt!857877)) (validCacheMapDown!346 (cache!3477 (_3!2521 lt!857877))))))

(declare-fun bs!458730 () Bool)

(assert (= bs!458730 d!684416))

(declare-fun m!2740915 () Bool)

(assert (=> bs!458730 m!2740915))

(assert (=> b!2313558 d!684416))

(declare-fun d!684418 () Bool)

(declare-fun c!366785 () Bool)

(assert (=> d!684418 (= c!366785 ((_ is Node!9001) (c!366772 input!5503)))))

(declare-fun e!1482976 () Bool)

(assert (=> d!684418 (= (inv!37302 (c!366772 input!5503)) e!1482976)))

(declare-fun b!2313613 () Bool)

(declare-fun inv!37306 (Conc!9001) Bool)

(assert (=> b!2313613 (= e!1482976 (inv!37306 (c!366772 input!5503)))))

(declare-fun b!2313614 () Bool)

(declare-fun e!1482977 () Bool)

(assert (=> b!2313614 (= e!1482976 e!1482977)))

(declare-fun res!988836 () Bool)

(assert (=> b!2313614 (= res!988836 (not ((_ is Leaf!13209) (c!366772 input!5503))))))

(assert (=> b!2313614 (=> res!988836 e!1482977)))

(declare-fun b!2313615 () Bool)

(declare-fun inv!37307 (Conc!9001) Bool)

(assert (=> b!2313615 (= e!1482977 (inv!37307 (c!366772 input!5503)))))

(assert (= (and d!684418 c!366785) b!2313613))

(assert (= (and d!684418 (not c!366785)) b!2313614))

(assert (= (and b!2313614 (not res!988836)) b!2313615))

(declare-fun m!2740917 () Bool)

(assert (=> b!2313613 m!2740917))

(declare-fun m!2740919 () Bool)

(assert (=> b!2313615 m!2740919))

(assert (=> b!2313566 d!684418))

(declare-fun d!684420 () Bool)

(assert (=> d!684420 (= (array_inv!3561 (_keys!3486 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))) (bvsge (size!21772 (_keys!3486 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))) #b00000000000000000000000000000000))))

(assert (=> b!2313548 d!684420))

(declare-fun d!684422 () Bool)

(assert (=> d!684422 (= (array_inv!3562 (_values!3469 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))) (bvsge (size!21773 (_values!3469 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937))))))) #b00000000000000000000000000000000))))

(assert (=> b!2313548 d!684422))

(declare-fun d!684424 () Bool)

(declare-fun list!10919 (Conc!9001) List!27652)

(assert (=> d!684424 (= (list!10918 input!5503) (list!10919 (c!366772 input!5503)))))

(declare-fun bs!458731 () Bool)

(assert (= bs!458731 d!684424))

(declare-fun m!2740921 () Bool)

(assert (=> bs!458731 m!2740921))

(assert (=> start!228236 d!684424))

(declare-fun d!684426 () Bool)

(assert (=> d!684426 (= (inv!37303 totalInput!803) (isBalanced!2709 (c!366772 totalInput!803)))))

(declare-fun bs!458732 () Bool)

(assert (= bs!458732 d!684426))

(declare-fun m!2740923 () Bool)

(assert (=> bs!458732 m!2740923))

(assert (=> start!228236 d!684426))

(declare-fun d!684428 () Bool)

(declare-fun e!1482980 () Bool)

(assert (=> d!684428 e!1482980))

(declare-fun res!988839 () Bool)

(assert (=> d!684428 (=> res!988839 e!1482980)))

(declare-fun lt!857909 () Bool)

(assert (=> d!684428 (= res!988839 (not lt!857909))))

(declare-fun drop!1496 (List!27652 Int) List!27652)

(assert (=> d!684428 (= lt!857909 (= (list!10918 input!5503) (drop!1496 (list!10918 totalInput!803) (- (size!21775 (list!10918 totalInput!803)) (size!21775 (list!10918 input!5503))))))))

(assert (=> d!684428 (= (isSuffix!800 (list!10918 input!5503) (list!10918 totalInput!803)) lt!857909)))

(declare-fun b!2313618 () Bool)

(assert (=> b!2313618 (= e!1482980 (>= (size!21775 (list!10918 totalInput!803)) (size!21775 (list!10918 input!5503))))))

(assert (= (and d!684428 (not res!988839)) b!2313618))

(assert (=> d!684428 m!2740819))

(assert (=> d!684428 m!2740909))

(assert (=> d!684428 m!2740825))

(assert (=> d!684428 m!2740865))

(assert (=> d!684428 m!2740819))

(declare-fun m!2740925 () Bool)

(assert (=> d!684428 m!2740925))

(assert (=> b!2313618 m!2740819))

(assert (=> b!2313618 m!2740909))

(assert (=> b!2313618 m!2740825))

(assert (=> b!2313618 m!2740865))

(assert (=> start!228236 d!684428))

(declare-fun d!684430 () Bool)

(assert (=> d!684430 (= (list!10918 totalInput!803) (list!10919 (c!366772 totalInput!803)))))

(declare-fun bs!458733 () Bool)

(assert (= bs!458733 d!684430))

(declare-fun m!2740927 () Bool)

(assert (=> bs!458733 m!2740927))

(assert (=> start!228236 d!684430))

(declare-fun d!684432 () Bool)

(declare-fun res!988842 () Bool)

(declare-fun e!1482983 () Bool)

(assert (=> d!684432 (=> (not res!988842) (not e!1482983))))

(assert (=> d!684432 (= res!988842 ((_ is HashMap!3099) (cache!3478 cacheUp!937)))))

(assert (=> d!684432 (= (inv!37305 cacheUp!937) e!1482983)))

(declare-fun b!2313621 () Bool)

(assert (=> b!2313621 (= e!1482983 (validCacheMapUp!315 (cache!3478 cacheUp!937)))))

(assert (= (and d!684432 res!988842) b!2313621))

(declare-fun m!2740929 () Bool)

(assert (=> b!2313621 m!2740929))

(assert (=> start!228236 d!684432))

(declare-fun d!684434 () Bool)

(declare-fun res!988845 () Bool)

(declare-fun e!1482986 () Bool)

(assert (=> d!684434 (=> (not res!988845) (not e!1482986))))

(assert (=> d!684434 (= res!988845 ((_ is HashMap!3098) (cache!3477 cacheDown!1056)))))

(assert (=> d!684434 (= (inv!37304 cacheDown!1056) e!1482986)))

(declare-fun b!2313624 () Bool)

(assert (=> b!2313624 (= e!1482986 (validCacheMapDown!346 (cache!3477 cacheDown!1056)))))

(assert (= (and d!684434 res!988845) b!2313624))

(declare-fun m!2740931 () Bool)

(assert (=> b!2313624 m!2740931))

(assert (=> start!228236 d!684434))

(declare-fun d!684436 () Bool)

(assert (=> d!684436 (= (inv!37303 input!5503) (isBalanced!2709 (c!366772 input!5503)))))

(declare-fun bs!458734 () Bool)

(assert (= bs!458734 d!684436))

(assert (=> bs!458734 m!2740889))

(assert (=> start!228236 d!684436))

(assert (=> b!2313567 d!684414))

(assert (=> b!2313559 d!684416))

(declare-fun d!684438 () Bool)

(declare-fun lambda!86324 () Int)

(declare-fun forall!5513 (List!27653 Int) Bool)

(assert (=> d!684438 (= (inv!37301 setElem!20761) (forall!5513 (exprs!2593 setElem!20761) lambda!86324))))

(declare-fun bs!458735 () Bool)

(assert (= bs!458735 d!684438))

(declare-fun m!2740933 () Bool)

(assert (=> bs!458735 m!2740933))

(assert (=> setNonEmpty!20761 d!684438))

(declare-fun d!684440 () Bool)

(declare-fun c!366786 () Bool)

(assert (=> d!684440 (= c!366786 ((_ is Node!9001) (c!366772 totalInput!803)))))

(declare-fun e!1482987 () Bool)

(assert (=> d!684440 (= (inv!37302 (c!366772 totalInput!803)) e!1482987)))

(declare-fun b!2313625 () Bool)

(assert (=> b!2313625 (= e!1482987 (inv!37306 (c!366772 totalInput!803)))))

(declare-fun b!2313626 () Bool)

(declare-fun e!1482988 () Bool)

(assert (=> b!2313626 (= e!1482987 e!1482988)))

(declare-fun res!988846 () Bool)

(assert (=> b!2313626 (= res!988846 (not ((_ is Leaf!13209) (c!366772 totalInput!803))))))

(assert (=> b!2313626 (=> res!988846 e!1482988)))

(declare-fun b!2313627 () Bool)

(assert (=> b!2313627 (= e!1482988 (inv!37307 (c!366772 totalInput!803)))))

(assert (= (and d!684440 c!366786) b!2313625))

(assert (= (and d!684440 (not c!366786)) b!2313626))

(assert (= (and b!2313626 (not res!988846)) b!2313627))

(declare-fun m!2740935 () Bool)

(assert (=> b!2313625 m!2740935))

(declare-fun m!2740937 () Bool)

(assert (=> b!2313627 m!2740937))

(assert (=> b!2313552 d!684440))

(declare-fun d!684442 () Bool)

(assert (=> d!684442 (= (array_inv!3561 (_keys!3485 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))) (bvsge (size!21772 (_keys!3485 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))) #b00000000000000000000000000000000))))

(assert (=> b!2313561 d!684442))

(declare-fun d!684444 () Bool)

(assert (=> d!684444 (= (array_inv!3563 (_values!3468 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))) (bvsge (size!21771 (_values!3468 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056))))))) #b00000000000000000000000000000000))))

(assert (=> b!2313561 d!684444))

(declare-fun b!2313636 () Bool)

(declare-fun e!1482996 () Bool)

(declare-fun tp!734342 () Bool)

(assert (=> b!2313636 (= e!1482996 tp!734342)))

(declare-fun b!2313637 () Bool)

(declare-fun e!1482997 () Bool)

(declare-fun tp!734341 () Bool)

(assert (=> b!2313637 (= e!1482997 tp!734341)))

(declare-fun setRes!20764 () Bool)

(declare-fun e!1482995 () Bool)

(declare-fun tp_is_empty!10761 () Bool)

(declare-fun b!2313638 () Bool)

(declare-fun tp!734340 () Bool)

(assert (=> b!2313638 (= e!1482995 (and (inv!37301 (_1!16269 (_1!16270 (h!32958 mapDefault!14926)))) e!1482996 tp_is_empty!10761 setRes!20764 tp!734340))))

(declare-fun condSetEmpty!20764 () Bool)

(assert (=> b!2313638 (= condSetEmpty!20764 (= (_2!16270 (h!32958 mapDefault!14926)) ((as const (Array Context!4186 Bool)) false)))))

(assert (=> b!2313564 (= tp!734322 e!1482995)))

(declare-fun tp!734343 () Bool)

(declare-fun setNonEmpty!20764 () Bool)

(declare-fun setElem!20764 () Context!4186)

(assert (=> setNonEmpty!20764 (= setRes!20764 (and tp!734343 (inv!37301 setElem!20764) e!1482997))))

(declare-fun setRest!20764 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20764 (= (_2!16270 (h!32958 mapDefault!14926)) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20764 true) setRest!20764))))

(declare-fun setIsEmpty!20764 () Bool)

(assert (=> setIsEmpty!20764 setRes!20764))

(assert (= b!2313638 b!2313636))

(assert (= (and b!2313638 condSetEmpty!20764) setIsEmpty!20764))

(assert (= (and b!2313638 (not condSetEmpty!20764)) setNonEmpty!20764))

(assert (= setNonEmpty!20764 b!2313637))

(assert (= (and b!2313564 ((_ is Cons!27557) mapDefault!14926)) b!2313638))

(declare-fun m!2740939 () Bool)

(assert (=> b!2313638 m!2740939))

(declare-fun m!2740941 () Bool)

(assert (=> setNonEmpty!20764 m!2740941))

(declare-fun b!2313653 () Bool)

(declare-fun e!1483013 () Bool)

(declare-fun tp!734365 () Bool)

(assert (=> b!2313653 (= e!1483013 tp!734365)))

(declare-fun condMapEmpty!14930 () Bool)

(declare-fun mapDefault!14930 () List!27655)

(assert (=> mapNonEmpty!14927 (= condMapEmpty!14930 (= mapRest!14926 ((as const (Array (_ BitVec 32) List!27655)) mapDefault!14930)))))

(declare-fun e!1483014 () Bool)

(declare-fun mapRes!14930 () Bool)

(assert (=> mapNonEmpty!14927 (= tp!734328 (and e!1483014 mapRes!14930))))

(declare-fun b!2313654 () Bool)

(declare-fun e!1483010 () Bool)

(declare-fun tp!734368 () Bool)

(assert (=> b!2313654 (= e!1483010 tp!734368)))

(declare-fun b!2313655 () Bool)

(declare-fun e!1483012 () Bool)

(declare-fun tp!734367 () Bool)

(assert (=> b!2313655 (= e!1483012 tp!734367)))

(declare-fun tp!734364 () Bool)

(declare-fun setRes!20769 () Bool)

(declare-fun setElem!20770 () Context!4186)

(declare-fun setNonEmpty!20769 () Bool)

(assert (=> setNonEmpty!20769 (= setRes!20769 (and tp!734364 (inv!37301 setElem!20770) e!1483012))))

(declare-fun setRest!20769 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20769 (= (_2!16270 (h!32958 mapDefault!14930)) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20770 true) setRest!20769))))

(declare-fun e!1483015 () Bool)

(declare-fun b!2313656 () Bool)

(declare-fun tp!734366 () Bool)

(assert (=> b!2313656 (= e!1483014 (and (inv!37301 (_1!16269 (_1!16270 (h!32958 mapDefault!14930)))) e!1483015 tp_is_empty!10761 setRes!20769 tp!734366))))

(declare-fun condSetEmpty!20770 () Bool)

(assert (=> b!2313656 (= condSetEmpty!20770 (= (_2!16270 (h!32958 mapDefault!14930)) ((as const (Array Context!4186 Bool)) false)))))

(declare-fun b!2313657 () Bool)

(declare-fun e!1483011 () Bool)

(declare-fun setRes!20770 () Bool)

(declare-fun tp!734370 () Bool)

(declare-fun mapValue!14930 () List!27655)

(assert (=> b!2313657 (= e!1483011 (and (inv!37301 (_1!16269 (_1!16270 (h!32958 mapValue!14930)))) e!1483013 tp_is_empty!10761 setRes!20770 tp!734370))))

(declare-fun condSetEmpty!20769 () Bool)

(assert (=> b!2313657 (= condSetEmpty!20769 (= (_2!16270 (h!32958 mapValue!14930)) ((as const (Array Context!4186 Bool)) false)))))

(declare-fun setIsEmpty!20769 () Bool)

(assert (=> setIsEmpty!20769 setRes!20769))

(declare-fun tp!734363 () Bool)

(declare-fun setElem!20769 () Context!4186)

(declare-fun setNonEmpty!20770 () Bool)

(assert (=> setNonEmpty!20770 (= setRes!20770 (and tp!734363 (inv!37301 setElem!20769) e!1483010))))

(declare-fun setRest!20770 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20770 (= (_2!16270 (h!32958 mapValue!14930)) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20769 true) setRest!20770))))

(declare-fun b!2313658 () Bool)

(declare-fun tp!734369 () Bool)

(assert (=> b!2313658 (= e!1483015 tp!734369)))

(declare-fun mapIsEmpty!14930 () Bool)

(assert (=> mapIsEmpty!14930 mapRes!14930))

(declare-fun mapNonEmpty!14930 () Bool)

(declare-fun tp!734362 () Bool)

(assert (=> mapNonEmpty!14930 (= mapRes!14930 (and tp!734362 e!1483011))))

(declare-fun mapRest!14930 () (Array (_ BitVec 32) List!27655))

(declare-fun mapKey!14930 () (_ BitVec 32))

(assert (=> mapNonEmpty!14930 (= mapRest!14926 (store mapRest!14930 mapKey!14930 mapValue!14930))))

(declare-fun setIsEmpty!20770 () Bool)

(assert (=> setIsEmpty!20770 setRes!20770))

(assert (= (and mapNonEmpty!14927 condMapEmpty!14930) mapIsEmpty!14930))

(assert (= (and mapNonEmpty!14927 (not condMapEmpty!14930)) mapNonEmpty!14930))

(assert (= b!2313657 b!2313653))

(assert (= (and b!2313657 condSetEmpty!20769) setIsEmpty!20770))

(assert (= (and b!2313657 (not condSetEmpty!20769)) setNonEmpty!20770))

(assert (= setNonEmpty!20770 b!2313654))

(assert (= (and mapNonEmpty!14930 ((_ is Cons!27557) mapValue!14930)) b!2313657))

(assert (= b!2313656 b!2313658))

(assert (= (and b!2313656 condSetEmpty!20770) setIsEmpty!20769))

(assert (= (and b!2313656 (not condSetEmpty!20770)) setNonEmpty!20769))

(assert (= setNonEmpty!20769 b!2313655))

(assert (= (and mapNonEmpty!14927 ((_ is Cons!27557) mapDefault!14930)) b!2313656))

(declare-fun m!2740943 () Bool)

(assert (=> setNonEmpty!20770 m!2740943))

(declare-fun m!2740945 () Bool)

(assert (=> b!2313656 m!2740945))

(declare-fun m!2740947 () Bool)

(assert (=> setNonEmpty!20769 m!2740947))

(declare-fun m!2740949 () Bool)

(assert (=> mapNonEmpty!14930 m!2740949))

(declare-fun m!2740951 () Bool)

(assert (=> b!2313657 m!2740951))

(declare-fun b!2313659 () Bool)

(declare-fun e!1483017 () Bool)

(declare-fun tp!734373 () Bool)

(assert (=> b!2313659 (= e!1483017 tp!734373)))

(declare-fun b!2313660 () Bool)

(declare-fun e!1483018 () Bool)

(declare-fun tp!734372 () Bool)

(assert (=> b!2313660 (= e!1483018 tp!734372)))

(declare-fun tp!734371 () Bool)

(declare-fun b!2313661 () Bool)

(declare-fun setRes!20771 () Bool)

(declare-fun e!1483016 () Bool)

(assert (=> b!2313661 (= e!1483016 (and (inv!37301 (_1!16269 (_1!16270 (h!32958 mapValue!14927)))) e!1483017 tp_is_empty!10761 setRes!20771 tp!734371))))

(declare-fun condSetEmpty!20771 () Bool)

(assert (=> b!2313661 (= condSetEmpty!20771 (= (_2!16270 (h!32958 mapValue!14927)) ((as const (Array Context!4186 Bool)) false)))))

(assert (=> mapNonEmpty!14927 (= tp!734325 e!1483016)))

(declare-fun setElem!20771 () Context!4186)

(declare-fun tp!734374 () Bool)

(declare-fun setNonEmpty!20771 () Bool)

(assert (=> setNonEmpty!20771 (= setRes!20771 (and tp!734374 (inv!37301 setElem!20771) e!1483018))))

(declare-fun setRest!20771 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20771 (= (_2!16270 (h!32958 mapValue!14927)) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20771 true) setRest!20771))))

(declare-fun setIsEmpty!20771 () Bool)

(assert (=> setIsEmpty!20771 setRes!20771))

(assert (= b!2313661 b!2313659))

(assert (= (and b!2313661 condSetEmpty!20771) setIsEmpty!20771))

(assert (= (and b!2313661 (not condSetEmpty!20771)) setNonEmpty!20771))

(assert (= setNonEmpty!20771 b!2313660))

(assert (= (and mapNonEmpty!14927 ((_ is Cons!27557) mapValue!14927)) b!2313661))

(declare-fun m!2740953 () Bool)

(assert (=> b!2313661 m!2740953))

(declare-fun m!2740955 () Bool)

(assert (=> setNonEmpty!20771 m!2740955))

(declare-fun condMapEmpty!14933 () Bool)

(declare-fun mapDefault!14933 () List!27654)

(assert (=> mapNonEmpty!14926 (= condMapEmpty!14933 (= mapRest!14927 ((as const (Array (_ BitVec 32) List!27654)) mapDefault!14933)))))

(declare-fun e!1483036 () Bool)

(declare-fun mapRes!14933 () Bool)

(assert (=> mapNonEmpty!14926 (= tp!734323 (and e!1483036 mapRes!14933))))

(declare-fun b!2313676 () Bool)

(declare-fun e!1483032 () Bool)

(declare-fun tp!734398 () Bool)

(assert (=> b!2313676 (= e!1483032 tp!734398)))

(declare-fun setElem!20776 () Context!4186)

(declare-fun setRes!20776 () Bool)

(declare-fun setNonEmpty!20776 () Bool)

(declare-fun tp!734400 () Bool)

(assert (=> setNonEmpty!20776 (= setRes!20776 (and tp!734400 (inv!37301 setElem!20776) e!1483032))))

(declare-fun mapValue!14933 () List!27654)

(declare-fun setRest!20776 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20776 (= (_2!16268 (h!32957 mapValue!14933)) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20776 true) setRest!20776))))

(declare-fun b!2313677 () Bool)

(declare-fun e!1483031 () Bool)

(declare-fun tp!734399 () Bool)

(assert (=> b!2313677 (= e!1483031 tp!734399)))

(declare-fun setIsEmpty!20776 () Bool)

(declare-fun setRes!20777 () Bool)

(assert (=> setIsEmpty!20776 setRes!20777))

(declare-fun mapNonEmpty!14933 () Bool)

(declare-fun tp!734405 () Bool)

(declare-fun e!1483035 () Bool)

(assert (=> mapNonEmpty!14933 (= mapRes!14933 (and tp!734405 e!1483035))))

(declare-fun mapRest!14933 () (Array (_ BitVec 32) List!27654))

(declare-fun mapKey!14933 () (_ BitVec 32))

(assert (=> mapNonEmpty!14933 (= mapRest!14927 (store mapRest!14933 mapKey!14933 mapValue!14933))))

(declare-fun tp!734403 () Bool)

(declare-fun tp!734406 () Bool)

(declare-fun b!2313678 () Bool)

(assert (=> b!2313678 (= e!1483035 (and tp!734406 (inv!37301 (_2!16267 (_1!16268 (h!32957 mapValue!14933)))) e!1483031 tp_is_empty!10761 setRes!20776 tp!734403))))

(declare-fun condSetEmpty!20776 () Bool)

(assert (=> b!2313678 (= condSetEmpty!20776 (= (_2!16268 (h!32957 mapValue!14933)) ((as const (Array Context!4186 Bool)) false)))))

(declare-fun tp!734397 () Bool)

(declare-fun setElem!20777 () Context!4186)

(declare-fun setNonEmpty!20777 () Bool)

(declare-fun e!1483033 () Bool)

(assert (=> setNonEmpty!20777 (= setRes!20777 (and tp!734397 (inv!37301 setElem!20777) e!1483033))))

(declare-fun setRest!20777 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20777 (= (_2!16268 (h!32957 mapDefault!14933)) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20777 true) setRest!20777))))

(declare-fun mapIsEmpty!14933 () Bool)

(assert (=> mapIsEmpty!14933 mapRes!14933))

(declare-fun setIsEmpty!20777 () Bool)

(assert (=> setIsEmpty!20777 setRes!20776))

(declare-fun b!2313679 () Bool)

(declare-fun tp!734404 () Bool)

(assert (=> b!2313679 (= e!1483033 tp!734404)))

(declare-fun b!2313680 () Bool)

(declare-fun e!1483034 () Bool)

(declare-fun tp!734401 () Bool)

(assert (=> b!2313680 (= e!1483034 tp!734401)))

(declare-fun tp!734407 () Bool)

(declare-fun tp!734402 () Bool)

(declare-fun b!2313681 () Bool)

(assert (=> b!2313681 (= e!1483036 (and tp!734407 (inv!37301 (_2!16267 (_1!16268 (h!32957 mapDefault!14933)))) e!1483034 tp_is_empty!10761 setRes!20777 tp!734402))))

(declare-fun condSetEmpty!20777 () Bool)

(assert (=> b!2313681 (= condSetEmpty!20777 (= (_2!16268 (h!32957 mapDefault!14933)) ((as const (Array Context!4186 Bool)) false)))))

(assert (= (and mapNonEmpty!14926 condMapEmpty!14933) mapIsEmpty!14933))

(assert (= (and mapNonEmpty!14926 (not condMapEmpty!14933)) mapNonEmpty!14933))

(assert (= b!2313678 b!2313677))

(assert (= (and b!2313678 condSetEmpty!20776) setIsEmpty!20777))

(assert (= (and b!2313678 (not condSetEmpty!20776)) setNonEmpty!20776))

(assert (= setNonEmpty!20776 b!2313676))

(assert (= (and mapNonEmpty!14933 ((_ is Cons!27556) mapValue!14933)) b!2313678))

(assert (= b!2313681 b!2313680))

(assert (= (and b!2313681 condSetEmpty!20777) setIsEmpty!20776))

(assert (= (and b!2313681 (not condSetEmpty!20777)) setNonEmpty!20777))

(assert (= setNonEmpty!20777 b!2313679))

(assert (= (and mapNonEmpty!14926 ((_ is Cons!27556) mapDefault!14933)) b!2313681))

(declare-fun m!2740957 () Bool)

(assert (=> setNonEmpty!20777 m!2740957))

(declare-fun m!2740959 () Bool)

(assert (=> b!2313678 m!2740959))

(declare-fun m!2740961 () Bool)

(assert (=> setNonEmpty!20776 m!2740961))

(declare-fun m!2740963 () Bool)

(assert (=> b!2313681 m!2740963))

(declare-fun m!2740965 () Bool)

(assert (=> mapNonEmpty!14933 m!2740965))

(declare-fun setElem!20780 () Context!4186)

(declare-fun setNonEmpty!20780 () Bool)

(declare-fun setRes!20780 () Bool)

(declare-fun tp!734422 () Bool)

(declare-fun e!1483044 () Bool)

(assert (=> setNonEmpty!20780 (= setRes!20780 (and tp!734422 (inv!37301 setElem!20780) e!1483044))))

(declare-fun setRest!20780 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20780 (= (_2!16268 (h!32957 mapValue!14926)) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20780 true) setRest!20780))))

(declare-fun b!2313690 () Bool)

(declare-fun e!1483043 () Bool)

(declare-fun tp!734421 () Bool)

(assert (=> b!2313690 (= e!1483043 tp!734421)))

(declare-fun e!1483045 () Bool)

(assert (=> mapNonEmpty!14926 (= tp!734318 e!1483045)))

(declare-fun b!2313691 () Bool)

(declare-fun tp!734420 () Bool)

(declare-fun tp!734419 () Bool)

(assert (=> b!2313691 (= e!1483045 (and tp!734419 (inv!37301 (_2!16267 (_1!16268 (h!32957 mapValue!14926)))) e!1483043 tp_is_empty!10761 setRes!20780 tp!734420))))

(declare-fun condSetEmpty!20780 () Bool)

(assert (=> b!2313691 (= condSetEmpty!20780 (= (_2!16268 (h!32957 mapValue!14926)) ((as const (Array Context!4186 Bool)) false)))))

(declare-fun setIsEmpty!20780 () Bool)

(assert (=> setIsEmpty!20780 setRes!20780))

(declare-fun b!2313692 () Bool)

(declare-fun tp!734418 () Bool)

(assert (=> b!2313692 (= e!1483044 tp!734418)))

(assert (= b!2313691 b!2313690))

(assert (= (and b!2313691 condSetEmpty!20780) setIsEmpty!20780))

(assert (= (and b!2313691 (not condSetEmpty!20780)) setNonEmpty!20780))

(assert (= setNonEmpty!20780 b!2313692))

(assert (= (and mapNonEmpty!14926 ((_ is Cons!27556) mapValue!14926)) b!2313691))

(declare-fun m!2740967 () Bool)

(assert (=> setNonEmpty!20780 m!2740967))

(declare-fun m!2740969 () Bool)

(assert (=> b!2313691 m!2740969))

(declare-fun condSetEmpty!20783 () Bool)

(assert (=> setNonEmpty!20761 (= condSetEmpty!20783 (= setRest!20761 ((as const (Array Context!4186 Bool)) false)))))

(declare-fun setRes!20783 () Bool)

(assert (=> setNonEmpty!20761 (= tp!734330 setRes!20783)))

(declare-fun setIsEmpty!20783 () Bool)

(assert (=> setIsEmpty!20783 setRes!20783))

(declare-fun setElem!20783 () Context!4186)

(declare-fun tp!734427 () Bool)

(declare-fun setNonEmpty!20783 () Bool)

(declare-fun e!1483048 () Bool)

(assert (=> setNonEmpty!20783 (= setRes!20783 (and tp!734427 (inv!37301 setElem!20783) e!1483048))))

(declare-fun setRest!20783 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20783 (= setRest!20761 ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20783 true) setRest!20783))))

(declare-fun b!2313697 () Bool)

(declare-fun tp!734428 () Bool)

(assert (=> b!2313697 (= e!1483048 tp!734428)))

(assert (= (and setNonEmpty!20761 condSetEmpty!20783) setIsEmpty!20783))

(assert (= (and setNonEmpty!20761 (not condSetEmpty!20783)) setNonEmpty!20783))

(assert (= setNonEmpty!20783 b!2313697))

(declare-fun m!2740971 () Bool)

(assert (=> setNonEmpty!20783 m!2740971))

(declare-fun b!2313702 () Bool)

(declare-fun e!1483051 () Bool)

(declare-fun tp!734433 () Bool)

(declare-fun tp!734434 () Bool)

(assert (=> b!2313702 (= e!1483051 (and tp!734433 tp!734434))))

(assert (=> b!2313563 (= tp!734331 e!1483051)))

(assert (= (and b!2313563 ((_ is Cons!27555) (exprs!2593 setElem!20761))) b!2313702))

(declare-fun tp!734441 () Bool)

(declare-fun tp!734443 () Bool)

(declare-fun b!2313711 () Bool)

(declare-fun e!1483057 () Bool)

(assert (=> b!2313711 (= e!1483057 (and (inv!37302 (left!20896 (c!366772 totalInput!803))) tp!734443 (inv!37302 (right!21226 (c!366772 totalInput!803))) tp!734441))))

(declare-fun b!2313713 () Bool)

(declare-fun e!1483056 () Bool)

(declare-fun tp!734442 () Bool)

(assert (=> b!2313713 (= e!1483056 tp!734442)))

(declare-fun b!2313712 () Bool)

(declare-fun inv!37308 (IArray!18007) Bool)

(assert (=> b!2313712 (= e!1483057 (and (inv!37308 (xs!11943 (c!366772 totalInput!803))) e!1483056))))

(assert (=> b!2313552 (= tp!734316 (and (inv!37302 (c!366772 totalInput!803)) e!1483057))))

(assert (= (and b!2313552 ((_ is Node!9001) (c!366772 totalInput!803))) b!2313711))

(assert (= b!2313712 b!2313713))

(assert (= (and b!2313552 ((_ is Leaf!13209) (c!366772 totalInput!803))) b!2313712))

(declare-fun m!2740973 () Bool)

(assert (=> b!2313711 m!2740973))

(declare-fun m!2740975 () Bool)

(assert (=> b!2313711 m!2740975))

(declare-fun m!2740977 () Bool)

(assert (=> b!2313712 m!2740977))

(assert (=> b!2313552 m!2740835))

(declare-fun tp!734444 () Bool)

(declare-fun b!2313714 () Bool)

(declare-fun tp!734446 () Bool)

(declare-fun e!1483059 () Bool)

(assert (=> b!2313714 (= e!1483059 (and (inv!37302 (left!20896 (c!366772 input!5503))) tp!734446 (inv!37302 (right!21226 (c!366772 input!5503))) tp!734444))))

(declare-fun b!2313716 () Bool)

(declare-fun e!1483058 () Bool)

(declare-fun tp!734445 () Bool)

(assert (=> b!2313716 (= e!1483058 tp!734445)))

(declare-fun b!2313715 () Bool)

(assert (=> b!2313715 (= e!1483059 (and (inv!37308 (xs!11943 (c!366772 input!5503))) e!1483058))))

(assert (=> b!2313566 (= tp!734320 (and (inv!37302 (c!366772 input!5503)) e!1483059))))

(assert (= (and b!2313566 ((_ is Node!9001) (c!366772 input!5503))) b!2313714))

(assert (= b!2313715 b!2313716))

(assert (= (and b!2313566 ((_ is Leaf!13209) (c!366772 input!5503))) b!2313715))

(declare-fun m!2740979 () Bool)

(assert (=> b!2313714 m!2740979))

(declare-fun m!2740981 () Bool)

(assert (=> b!2313714 m!2740981))

(declare-fun m!2740983 () Bool)

(assert (=> b!2313715 m!2740983))

(assert (=> b!2313566 m!2740855))

(declare-fun b!2313717 () Bool)

(declare-fun e!1483061 () Bool)

(declare-fun tp!734449 () Bool)

(assert (=> b!2313717 (= e!1483061 tp!734449)))

(declare-fun b!2313718 () Bool)

(declare-fun e!1483062 () Bool)

(declare-fun tp!734448 () Bool)

(assert (=> b!2313718 (= e!1483062 tp!734448)))

(declare-fun tp!734447 () Bool)

(declare-fun b!2313719 () Bool)

(declare-fun setRes!20784 () Bool)

(declare-fun e!1483060 () Bool)

(assert (=> b!2313719 (= e!1483060 (and (inv!37301 (_1!16269 (_1!16270 (h!32958 (zeroValue!3447 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937)))))))))) e!1483061 tp_is_empty!10761 setRes!20784 tp!734447))))

(declare-fun condSetEmpty!20784 () Bool)

(assert (=> b!2313719 (= condSetEmpty!20784 (= (_2!16270 (h!32958 (zeroValue!3447 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937)))))))) ((as const (Array Context!4186 Bool)) false)))))

(assert (=> b!2313548 (= tp!734314 e!1483060)))

(declare-fun tp!734450 () Bool)

(declare-fun setElem!20784 () Context!4186)

(declare-fun setNonEmpty!20784 () Bool)

(assert (=> setNonEmpty!20784 (= setRes!20784 (and tp!734450 (inv!37301 setElem!20784) e!1483062))))

(declare-fun setRest!20784 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20784 (= (_2!16270 (h!32958 (zeroValue!3447 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937)))))))) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20784 true) setRest!20784))))

(declare-fun setIsEmpty!20784 () Bool)

(assert (=> setIsEmpty!20784 setRes!20784))

(assert (= b!2313719 b!2313717))

(assert (= (and b!2313719 condSetEmpty!20784) setIsEmpty!20784))

(assert (= (and b!2313719 (not condSetEmpty!20784)) setNonEmpty!20784))

(assert (= setNonEmpty!20784 b!2313718))

(assert (= (and b!2313548 ((_ is Cons!27557) (zeroValue!3447 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937)))))))) b!2313719))

(declare-fun m!2740985 () Bool)

(assert (=> b!2313719 m!2740985))

(declare-fun m!2740987 () Bool)

(assert (=> setNonEmpty!20784 m!2740987))

(declare-fun b!2313720 () Bool)

(declare-fun e!1483064 () Bool)

(declare-fun tp!734453 () Bool)

(assert (=> b!2313720 (= e!1483064 tp!734453)))

(declare-fun b!2313721 () Bool)

(declare-fun e!1483065 () Bool)

(declare-fun tp!734452 () Bool)

(assert (=> b!2313721 (= e!1483065 tp!734452)))

(declare-fun b!2313722 () Bool)

(declare-fun setRes!20785 () Bool)

(declare-fun e!1483063 () Bool)

(declare-fun tp!734451 () Bool)

(assert (=> b!2313722 (= e!1483063 (and (inv!37301 (_1!16269 (_1!16270 (h!32958 (minValue!3447 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937)))))))))) e!1483064 tp_is_empty!10761 setRes!20785 tp!734451))))

(declare-fun condSetEmpty!20785 () Bool)

(assert (=> b!2313722 (= condSetEmpty!20785 (= (_2!16270 (h!32958 (minValue!3447 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937)))))))) ((as const (Array Context!4186 Bool)) false)))))

(assert (=> b!2313548 (= tp!734319 e!1483063)))

(declare-fun setNonEmpty!20785 () Bool)

(declare-fun tp!734454 () Bool)

(declare-fun setElem!20785 () Context!4186)

(assert (=> setNonEmpty!20785 (= setRes!20785 (and tp!734454 (inv!37301 setElem!20785) e!1483065))))

(declare-fun setRest!20785 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20785 (= (_2!16270 (h!32958 (minValue!3447 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937)))))))) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20785 true) setRest!20785))))

(declare-fun setIsEmpty!20785 () Bool)

(assert (=> setIsEmpty!20785 setRes!20785))

(assert (= b!2313722 b!2313720))

(assert (= (and b!2313722 condSetEmpty!20785) setIsEmpty!20785))

(assert (= (and b!2313722 (not condSetEmpty!20785)) setNonEmpty!20785))

(assert (= setNonEmpty!20785 b!2313721))

(assert (= (and b!2313548 ((_ is Cons!27557) (minValue!3447 (v!30617 (underlying!6583 (v!30618 (underlying!6584 (cache!3478 cacheUp!937)))))))) b!2313722))

(declare-fun m!2740989 () Bool)

(assert (=> b!2313722 m!2740989))

(declare-fun m!2740991 () Bool)

(assert (=> setNonEmpty!20785 m!2740991))

(declare-fun tp!734459 () Bool)

(declare-fun setNonEmpty!20786 () Bool)

(declare-fun setRes!20786 () Bool)

(declare-fun setElem!20786 () Context!4186)

(declare-fun e!1483067 () Bool)

(assert (=> setNonEmpty!20786 (= setRes!20786 (and tp!734459 (inv!37301 setElem!20786) e!1483067))))

(declare-fun setRest!20786 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20786 (= (_2!16268 (h!32957 (zeroValue!3446 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056)))))))) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20786 true) setRest!20786))))

(declare-fun b!2313723 () Bool)

(declare-fun e!1483066 () Bool)

(declare-fun tp!734458 () Bool)

(assert (=> b!2313723 (= e!1483066 tp!734458)))

(declare-fun e!1483068 () Bool)

(assert (=> b!2313561 (= tp!734324 e!1483068)))

(declare-fun tp!734456 () Bool)

(declare-fun b!2313724 () Bool)

(declare-fun tp!734457 () Bool)

(assert (=> b!2313724 (= e!1483068 (and tp!734456 (inv!37301 (_2!16267 (_1!16268 (h!32957 (zeroValue!3446 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056)))))))))) e!1483066 tp_is_empty!10761 setRes!20786 tp!734457))))

(declare-fun condSetEmpty!20786 () Bool)

(assert (=> b!2313724 (= condSetEmpty!20786 (= (_2!16268 (h!32957 (zeroValue!3446 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056)))))))) ((as const (Array Context!4186 Bool)) false)))))

(declare-fun setIsEmpty!20786 () Bool)

(assert (=> setIsEmpty!20786 setRes!20786))

(declare-fun b!2313725 () Bool)

(declare-fun tp!734455 () Bool)

(assert (=> b!2313725 (= e!1483067 tp!734455)))

(assert (= b!2313724 b!2313723))

(assert (= (and b!2313724 condSetEmpty!20786) setIsEmpty!20786))

(assert (= (and b!2313724 (not condSetEmpty!20786)) setNonEmpty!20786))

(assert (= setNonEmpty!20786 b!2313725))

(assert (= (and b!2313561 ((_ is Cons!27556) (zeroValue!3446 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056)))))))) b!2313724))

(declare-fun m!2740993 () Bool)

(assert (=> setNonEmpty!20786 m!2740993))

(declare-fun m!2740995 () Bool)

(assert (=> b!2313724 m!2740995))

(declare-fun e!1483070 () Bool)

(declare-fun setNonEmpty!20787 () Bool)

(declare-fun setElem!20787 () Context!4186)

(declare-fun tp!734464 () Bool)

(declare-fun setRes!20787 () Bool)

(assert (=> setNonEmpty!20787 (= setRes!20787 (and tp!734464 (inv!37301 setElem!20787) e!1483070))))

(declare-fun setRest!20787 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20787 (= (_2!16268 (h!32957 (minValue!3446 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056)))))))) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20787 true) setRest!20787))))

(declare-fun b!2313726 () Bool)

(declare-fun e!1483069 () Bool)

(declare-fun tp!734463 () Bool)

(assert (=> b!2313726 (= e!1483069 tp!734463)))

(declare-fun e!1483071 () Bool)

(assert (=> b!2313561 (= tp!734317 e!1483071)))

(declare-fun b!2313727 () Bool)

(declare-fun tp!734462 () Bool)

(declare-fun tp!734461 () Bool)

(assert (=> b!2313727 (= e!1483071 (and tp!734461 (inv!37301 (_2!16267 (_1!16268 (h!32957 (minValue!3446 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056)))))))))) e!1483069 tp_is_empty!10761 setRes!20787 tp!734462))))

(declare-fun condSetEmpty!20787 () Bool)

(assert (=> b!2313727 (= condSetEmpty!20787 (= (_2!16268 (h!32957 (minValue!3446 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056)))))))) ((as const (Array Context!4186 Bool)) false)))))

(declare-fun setIsEmpty!20787 () Bool)

(assert (=> setIsEmpty!20787 setRes!20787))

(declare-fun b!2313728 () Bool)

(declare-fun tp!734460 () Bool)

(assert (=> b!2313728 (= e!1483070 tp!734460)))

(assert (= b!2313727 b!2313726))

(assert (= (and b!2313727 condSetEmpty!20787) setIsEmpty!20787))

(assert (= (and b!2313727 (not condSetEmpty!20787)) setNonEmpty!20787))

(assert (= setNonEmpty!20787 b!2313728))

(assert (= (and b!2313561 ((_ is Cons!27556) (minValue!3446 (v!30615 (underlying!6581 (v!30616 (underlying!6582 (cache!3477 cacheDown!1056)))))))) b!2313727))

(declare-fun m!2740997 () Bool)

(assert (=> setNonEmpty!20787 m!2740997))

(declare-fun m!2740999 () Bool)

(assert (=> b!2313727 m!2740999))

(declare-fun setNonEmpty!20788 () Bool)

(declare-fun e!1483073 () Bool)

(declare-fun tp!734469 () Bool)

(declare-fun setRes!20788 () Bool)

(declare-fun setElem!20788 () Context!4186)

(assert (=> setNonEmpty!20788 (= setRes!20788 (and tp!734469 (inv!37301 setElem!20788) e!1483073))))

(declare-fun setRest!20788 () (InoxSet Context!4186))

(assert (=> setNonEmpty!20788 (= (_2!16268 (h!32957 mapDefault!14927)) ((_ map or) (store ((as const (Array Context!4186 Bool)) false) setElem!20788 true) setRest!20788))))

(declare-fun b!2313729 () Bool)

(declare-fun e!1483072 () Bool)

(declare-fun tp!734468 () Bool)

(assert (=> b!2313729 (= e!1483072 tp!734468)))

(declare-fun e!1483074 () Bool)

(assert (=> b!2313547 (= tp!734329 e!1483074)))

(declare-fun b!2313730 () Bool)

(declare-fun tp!734467 () Bool)

(declare-fun tp!734466 () Bool)

(assert (=> b!2313730 (= e!1483074 (and tp!734466 (inv!37301 (_2!16267 (_1!16268 (h!32957 mapDefault!14927)))) e!1483072 tp_is_empty!10761 setRes!20788 tp!734467))))

(declare-fun condSetEmpty!20788 () Bool)

(assert (=> b!2313730 (= condSetEmpty!20788 (= (_2!16268 (h!32957 mapDefault!14927)) ((as const (Array Context!4186 Bool)) false)))))

(declare-fun setIsEmpty!20788 () Bool)

(assert (=> setIsEmpty!20788 setRes!20788))

(declare-fun b!2313731 () Bool)

(declare-fun tp!734465 () Bool)

(assert (=> b!2313731 (= e!1483073 tp!734465)))

(assert (= b!2313730 b!2313729))

(assert (= (and b!2313730 condSetEmpty!20788) setIsEmpty!20788))

(assert (= (and b!2313730 (not condSetEmpty!20788)) setNonEmpty!20788))

(assert (= setNonEmpty!20788 b!2313731))

(assert (= (and b!2313547 ((_ is Cons!27556) mapDefault!14927)) b!2313730))

(declare-fun m!2741001 () Bool)

(assert (=> setNonEmpty!20788 m!2741001))

(declare-fun m!2741003 () Bool)

(assert (=> b!2313730 m!2741003))

(check-sat (not d!684424) (not d!684430) (not d!684414) (not setNonEmpty!20788) (not b!2313729) (not b!2313594) (not setNonEmpty!20764) (not d!684436) (not setNonEmpty!20783) b_and!184961 (not b!2313721) (not b!2313678) (not d!684416) (not b!2313715) (not b!2313659) (not b!2313660) (not setNonEmpty!20776) (not b!2313714) (not b!2313661) (not b_next!70765) (not b!2313627) (not d!684428) (not setNonEmpty!20771) (not setNonEmpty!20780) (not b!2313728) (not b!2313702) (not setNonEmpty!20787) b_and!184967 (not b!2313724) (not d!684408) (not b!2313720) (not b!2313658) (not setNonEmpty!20770) (not mapNonEmpty!14930) (not b!2313600) (not b!2313691) (not b!2313625) (not b!2313624) (not b!2313615) (not d!684412) (not b!2313722) (not b!2313597) (not b!2313637) (not b!2313657) (not b!2313719) (not setNonEmpty!20777) (not b!2313574) (not b!2313690) (not b!2313681) (not setNonEmpty!20786) (not b_next!70769) (not b!2313621) (not b!2313711) (not setNonEmpty!20769) (not b_next!70767) (not b!2313676) (not b!2313653) (not b!2313576) (not b!2313731) (not d!684410) (not b!2313656) (not b!2313636) b_and!184963 (not b!2313677) (not b!2313713) (not d!684404) (not d!684426) (not b!2313725) (not b!2313575) (not b!2313712) (not b!2313692) (not b!2313727) (not d!684438) (not b!2313730) (not b!2313723) (not b!2313679) (not b!2313654) (not b!2313726) (not b!2313717) (not b!2313566) (not b!2313618) (not b!2313613) (not b!2313655) (not b!2313697) (not b_next!70771) (not setNonEmpty!20784) (not d!684402) (not b!2313552) (not setNonEmpty!20785) tp_is_empty!10761 b_and!184965 (not b!2313716) (not b!2313680) (not b!2313606) (not b!2313718) (not b!2313605) (not b!2313598) (not mapNonEmpty!14933) (not b!2313638))
(check-sat b_and!184961 (not b_next!70765) b_and!184967 (not b_next!70769) (not b_next!70767) b_and!184963 (not b_next!70771) b_and!184965)
