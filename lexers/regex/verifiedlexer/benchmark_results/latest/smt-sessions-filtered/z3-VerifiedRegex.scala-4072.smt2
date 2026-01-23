; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218492 () Bool)

(assert start!218492)

(declare-fun b!2242383 () Bool)

(declare-fun b_free!65153 () Bool)

(declare-fun b_next!65857 () Bool)

(assert (=> b!2242383 (= b_free!65153 (not b_next!65857))))

(declare-fun tp!707307 () Bool)

(declare-fun b_and!175181 () Bool)

(assert (=> b!2242383 (= tp!707307 b_and!175181)))

(declare-fun b!2242375 () Bool)

(declare-fun b_free!65155 () Bool)

(declare-fun b_next!65859 () Bool)

(assert (=> b!2242375 (= b_free!65155 (not b_next!65859))))

(declare-fun tp!707308 () Bool)

(declare-fun b_and!175183 () Bool)

(assert (=> b!2242375 (= tp!707308 b_and!175183)))

(declare-fun b!2242374 () Bool)

(declare-fun e!1434084 () Bool)

(declare-fun e!1434080 () Bool)

(declare-datatypes ((C!13216 0))(
  ( (C!13217 (val!7656 Int)) )
))
(declare-datatypes ((Regex!6535 0))(
  ( (ElementMatch!6535 (c!356978 C!13216)) (Concat!10873 (regOne!13582 Regex!6535) (regTwo!13582 Regex!6535)) (EmptyExpr!6535) (Star!6535 (reg!6864 Regex!6535)) (EmptyLang!6535) (Union!6535 (regOne!13583 Regex!6535) (regTwo!13583 Regex!6535)) )
))
(declare-datatypes ((List!26573 0))(
  ( (Nil!26479) (Cons!26479 (h!31880 Regex!6535) (t!200013 List!26573)) )
))
(declare-datatypes ((Context!4166 0))(
  ( (Context!4167 (exprs!2583 List!26573)) )
))
(declare-datatypes ((tuple2!25960 0))(
  ( (tuple2!25961 (_1!15490 Context!4166) (_2!15490 C!13216)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25962 0))(
  ( (tuple2!25963 (_1!15491 tuple2!25960) (_2!15491 (InoxSet Context!4166))) )
))
(declare-datatypes ((List!26574 0))(
  ( (Nil!26480) (Cons!26480 (h!31881 tuple2!25962) (t!200014 List!26574)) )
))
(declare-datatypes ((array!11120 0))(
  ( (array!11121 (arr!4933 (Array (_ BitVec 32) (_ BitVec 64))) (size!20714 (_ BitVec 32))) )
))
(declare-datatypes ((array!11122 0))(
  ( (array!11123 (arr!4934 (Array (_ BitVec 32) List!26574)) (size!20715 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6346 0))(
  ( (LongMapFixedSize!6347 (defaultEntry!3538 Int) (mask!7794 (_ BitVec 32)) (extraKeys!3421 (_ BitVec 32)) (zeroValue!3431 List!26574) (minValue!3431 List!26574) (_size!6393 (_ BitVec 32)) (_keys!3470 array!11120) (_values!3453 array!11122) (_vacant!3234 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12509 0))(
  ( (Cell!12510 (v!30122 LongMapFixedSize!6346)) )
))
(declare-datatypes ((MutLongMap!3173 0))(
  ( (LongMap!3173 (underlying!6547 Cell!12509)) (MutLongMapExt!3172 (__x!17745 Int)) )
))
(declare-fun lt!834886 () MutLongMap!3173)

(get-info :version)

(assert (=> b!2242374 (= e!1434084 (and e!1434080 ((_ is LongMap!3173) lt!834886)))))

(declare-datatypes ((Cell!12511 0))(
  ( (Cell!12512 (v!30123 MutLongMap!3173)) )
))
(declare-datatypes ((Hashable!3083 0))(
  ( (HashableExt!3082 (__x!17746 Int)) )
))
(declare-datatypes ((MutableMap!3083 0))(
  ( (MutableMapExt!3082 (__x!17747 Int)) (HashMap!3083 (underlying!6548 Cell!12511) (hashF!5006 Hashable!3083) (_size!6394 (_ BitVec 32)) (defaultValue!3245 Int)) )
))
(declare-datatypes ((CacheUp!2036 0))(
  ( (CacheUp!2037 (cache!3464 MutableMap!3083)) )
))
(declare-fun thiss!28603 () CacheUp!2036)

(assert (=> b!2242374 (= lt!834886 (v!30123 (underlying!6548 (cache!3464 thiss!28603))))))

(declare-fun tp!707313 () Bool)

(declare-fun tp!707311 () Bool)

(declare-fun e!1434077 () Bool)

(declare-fun e!1434079 () Bool)

(declare-fun array_inv!3543 (array!11120) Bool)

(declare-fun array_inv!3544 (array!11122) Bool)

(assert (=> b!2242375 (= e!1434079 (and tp!707308 tp!707311 tp!707313 (array_inv!3543 (_keys!3470 (v!30122 (underlying!6547 (v!30123 (underlying!6548 (cache!3464 thiss!28603))))))) (array_inv!3544 (_values!3453 (v!30122 (underlying!6547 (v!30123 (underlying!6548 (cache!3464 thiss!28603))))))) e!1434077))))

(declare-fun ctx!36 () Context!4166)

(declare-fun lt!834888 () (InoxSet Context!4166))

(declare-fun b!2242376 () Bool)

(declare-fun e!1434081 () Bool)

(declare-fun a!922 () C!13216)

(declare-fun derivationStepZipperUp!51 (Context!4166 C!13216) (InoxSet Context!4166))

(assert (=> b!2242376 (= e!1434081 (not (= (derivationStepZipperUp!51 ctx!36 a!922) lt!834888)))))

(declare-fun lt!834887 () tuple2!25960)

(assert (=> b!2242376 (= lt!834888 (derivationStepZipperUp!51 (_1!15490 lt!834887) (_2!15490 lt!834887)))))

(declare-fun apply!6543 (MutableMap!3083 tuple2!25960) (InoxSet Context!4166))

(assert (=> b!2242376 (= lt!834888 (apply!6543 (cache!3464 thiss!28603) lt!834887))))

(declare-datatypes ((Unit!39476 0))(
  ( (Unit!39477) )
))
(declare-fun lt!834885 () Unit!39476)

(declare-fun lambda!84909 () Int)

(declare-fun lemmaForallPairsThenForLookup!41 (MutableMap!3083 tuple2!25960 Int) Unit!39476)

(assert (=> b!2242376 (= lt!834885 (lemmaForallPairsThenForLookup!41 (cache!3464 thiss!28603) lt!834887 lambda!84909))))

(declare-fun b!2242377 () Bool)

(declare-fun e!1434075 () Bool)

(assert (=> b!2242377 (= e!1434075 e!1434081)))

(declare-fun res!958165 () Bool)

(assert (=> b!2242377 (=> (not res!958165) (not e!1434081))))

(declare-fun contains!4534 (MutableMap!3083 tuple2!25960) Bool)

(assert (=> b!2242377 (= res!958165 (contains!4534 (cache!3464 thiss!28603) lt!834887))))

(assert (=> b!2242377 (= lt!834887 (tuple2!25961 ctx!36 a!922))))

(declare-fun mapNonEmpty!14861 () Bool)

(declare-fun mapRes!14861 () Bool)

(declare-fun tp!707312 () Bool)

(declare-fun tp!707306 () Bool)

(assert (=> mapNonEmpty!14861 (= mapRes!14861 (and tp!707312 tp!707306))))

(declare-fun mapValue!14861 () List!26574)

(declare-fun mapKey!14861 () (_ BitVec 32))

(declare-fun mapRest!14861 () (Array (_ BitVec 32) List!26574))

(assert (=> mapNonEmpty!14861 (= (arr!4934 (_values!3453 (v!30122 (underlying!6547 (v!30123 (underlying!6548 (cache!3464 thiss!28603))))))) (store mapRest!14861 mapKey!14861 mapValue!14861))))

(declare-fun b!2242378 () Bool)

(declare-fun e!1434082 () Bool)

(assert (=> b!2242378 (= e!1434082 e!1434079)))

(declare-fun b!2242379 () Bool)

(declare-fun tp!707310 () Bool)

(assert (=> b!2242379 (= e!1434077 (and tp!707310 mapRes!14861))))

(declare-fun condMapEmpty!14861 () Bool)

(declare-fun mapDefault!14861 () List!26574)

(assert (=> b!2242379 (= condMapEmpty!14861 (= (arr!4934 (_values!3453 (v!30122 (underlying!6547 (v!30123 (underlying!6548 (cache!3464 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26574)) mapDefault!14861)))))

(declare-fun b!2242380 () Bool)

(declare-fun e!1434076 () Bool)

(declare-fun tp!707309 () Bool)

(assert (=> b!2242380 (= e!1434076 tp!707309)))

(declare-fun mapIsEmpty!14861 () Bool)

(assert (=> mapIsEmpty!14861 mapRes!14861))

(declare-fun b!2242381 () Bool)

(assert (=> b!2242381 (= e!1434080 e!1434082)))

(declare-fun res!958166 () Bool)

(assert (=> start!218492 (=> (not res!958166) (not e!1434075))))

(declare-fun validCacheMapUp!312 (MutableMap!3083) Bool)

(assert (=> start!218492 (= res!958166 (validCacheMapUp!312 (cache!3464 thiss!28603)))))

(assert (=> start!218492 e!1434075))

(declare-fun e!1434078 () Bool)

(declare-fun inv!35956 (CacheUp!2036) Bool)

(assert (=> start!218492 (and (inv!35956 thiss!28603) e!1434078)))

(declare-fun inv!35957 (Context!4166) Bool)

(assert (=> start!218492 (and (inv!35957 ctx!36) e!1434076)))

(declare-fun tp_is_empty!10291 () Bool)

(assert (=> start!218492 tp_is_empty!10291))

(declare-fun b!2242382 () Bool)

(declare-fun e!1434074 () Bool)

(assert (=> b!2242382 (= e!1434078 e!1434074)))

(assert (=> b!2242383 (= e!1434074 (and e!1434084 tp!707307))))

(assert (= (and start!218492 res!958166) b!2242377))

(assert (= (and b!2242377 res!958165) b!2242376))

(assert (= (and b!2242379 condMapEmpty!14861) mapIsEmpty!14861))

(assert (= (and b!2242379 (not condMapEmpty!14861)) mapNonEmpty!14861))

(assert (= b!2242375 b!2242379))

(assert (= b!2242378 b!2242375))

(assert (= b!2242381 b!2242378))

(assert (= (and b!2242374 ((_ is LongMap!3173) (v!30123 (underlying!6548 (cache!3464 thiss!28603))))) b!2242381))

(assert (= b!2242383 b!2242374))

(assert (= (and b!2242382 ((_ is HashMap!3083) (cache!3464 thiss!28603))) b!2242383))

(assert (= start!218492 b!2242382))

(assert (= start!218492 b!2242380))

(declare-fun m!2674517 () Bool)

(assert (=> start!218492 m!2674517))

(declare-fun m!2674519 () Bool)

(assert (=> start!218492 m!2674519))

(declare-fun m!2674521 () Bool)

(assert (=> start!218492 m!2674521))

(declare-fun m!2674523 () Bool)

(assert (=> b!2242376 m!2674523))

(declare-fun m!2674525 () Bool)

(assert (=> b!2242376 m!2674525))

(declare-fun m!2674527 () Bool)

(assert (=> b!2242376 m!2674527))

(declare-fun m!2674529 () Bool)

(assert (=> b!2242376 m!2674529))

(declare-fun m!2674531 () Bool)

(assert (=> mapNonEmpty!14861 m!2674531))

(declare-fun m!2674533 () Bool)

(assert (=> b!2242375 m!2674533))

(declare-fun m!2674535 () Bool)

(assert (=> b!2242375 m!2674535))

(declare-fun m!2674537 () Bool)

(assert (=> b!2242377 m!2674537))

(check-sat (not b!2242377) (not b!2242379) (not mapNonEmpty!14861) b_and!175183 (not b_next!65857) (not start!218492) (not b!2242375) (not b!2242380) tp_is_empty!10291 (not b!2242376) (not b_next!65859) b_and!175181)
(check-sat b_and!175181 b_and!175183 (not b_next!65859) (not b_next!65857))
