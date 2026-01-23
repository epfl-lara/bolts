; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412362 () Bool)

(assert start!412362)

(declare-fun b!4295478 () Bool)

(declare-fun b_free!127759 () Bool)

(declare-fun b_next!128463 () Bool)

(assert (=> b!4295478 (= b_free!127759 (not b_next!128463))))

(declare-fun tp!1319048 () Bool)

(declare-fun b_and!338975 () Bool)

(assert (=> b!4295478 (= tp!1319048 b_and!338975)))

(declare-fun b!4295481 () Bool)

(declare-fun b_free!127761 () Bool)

(declare-fun b_next!128465 () Bool)

(assert (=> b!4295481 (= b_free!127761 (not b_next!128465))))

(declare-fun tp!1319050 () Bool)

(declare-fun b_and!338977 () Bool)

(assert (=> b!4295481 (= tp!1319050 b_and!338977)))

(declare-fun b!4295484 () Bool)

(assert (=> b!4295484 true))

(declare-fun b!4295474 () Bool)

(declare-fun e!2669389 () Bool)

(declare-fun e!2669393 () Bool)

(assert (=> b!4295474 (= e!2669389 e!2669393)))

(declare-fun res!1760707 () Bool)

(assert (=> b!4295474 (=> (not res!1760707) (not e!2669393))))

(declare-fun from!940 () Int)

(declare-fun lt!1517923 () Int)

(assert (=> b!4295474 (= res!1760707 (<= from!940 lt!1517923))))

(declare-datatypes ((C!26176 0))(
  ( (C!26177 (val!15414 Int)) )
))
(declare-datatypes ((Regex!12989 0))(
  ( (ElementMatch!12989 (c!730844 C!26176)) (Concat!21308 (regOne!26490 Regex!12989) (regTwo!26490 Regex!12989)) (EmptyExpr!12989) (Star!12989 (reg!13318 Regex!12989)) (EmptyLang!12989) (Union!12989 (regOne!26491 Regex!12989) (regTwo!26491 Regex!12989)) )
))
(declare-datatypes ((List!47954 0))(
  ( (Nil!47830) (Cons!47830 (h!53250 Regex!12989) (t!354561 List!47954)) )
))
(declare-datatypes ((Context!5758 0))(
  ( (Context!5759 (exprs!3379 List!47954)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45592 0))(
  ( (tuple2!45593 (_1!26075 (InoxSet Context!5758)) (_2!26075 Int)) )
))
(declare-datatypes ((tuple2!45594 0))(
  ( (tuple2!45595 (_1!26076 tuple2!45592) (_2!26076 Int)) )
))
(declare-datatypes ((List!47955 0))(
  ( (Nil!47831) (Cons!47831 (h!53251 tuple2!45594) (t!354562 List!47955)) )
))
(declare-datatypes ((array!15948 0))(
  ( (array!15949 (arr!7127 (Array (_ BitVec 32) (_ BitVec 64))) (size!35135 (_ BitVec 32))) )
))
(declare-datatypes ((array!15950 0))(
  ( (array!15951 (arr!7128 (Array (_ BitVec 32) List!47955)) (size!35136 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8942 0))(
  ( (LongMapFixedSize!8943 (defaultEntry!4856 Int) (mask!12935 (_ BitVec 32)) (extraKeys!4720 (_ BitVec 32)) (zeroValue!4730 List!47955) (minValue!4730 List!47955) (_size!8985 (_ BitVec 32)) (_keys!4771 array!15948) (_values!4752 array!15950) (_vacant!4532 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17693 0))(
  ( (Cell!17694 (v!41773 LongMapFixedSize!8942)) )
))
(declare-datatypes ((MutLongMap!4471 0))(
  ( (LongMap!4471 (underlying!9171 Cell!17693)) (MutLongMapExt!4470 (__x!29438 Int)) )
))
(declare-datatypes ((Cell!17695 0))(
  ( (Cell!17696 (v!41774 MutLongMap!4471)) )
))
(declare-datatypes ((Hashable!4387 0))(
  ( (HashableExt!4386 (__x!29439 Int)) )
))
(declare-datatypes ((MutableMap!4377 0))(
  ( (MutableMapExt!4376 (__x!29440 Int)) (HashMap!4377 (underlying!9172 Cell!17695) (hashF!6419 Hashable!4387) (_size!8986 (_ BitVec 32)) (defaultValue!4548 Int)) )
))
(declare-datatypes ((List!47956 0))(
  ( (Nil!47832) (Cons!47832 (h!53252 C!26176) (t!354563 List!47956)) )
))
(declare-datatypes ((IArray!28921 0))(
  ( (IArray!28922 (innerList!14518 List!47956)) )
))
(declare-datatypes ((Conc!14430 0))(
  ( (Node!14430 (left!35471 Conc!14430) (right!35801 Conc!14430) (csize!29090 Int) (cheight!14641 Int)) (Leaf!22326 (xs!17736 IArray!28921) (csize!29091 Int)) (Empty!14430) )
))
(declare-datatypes ((BalanceConc!28350 0))(
  ( (BalanceConc!28351 (c!730845 Conc!14430)) )
))
(declare-datatypes ((CacheFindLongestMatch!548 0))(
  ( (CacheFindLongestMatch!549 (cache!4517 MutableMap!4377) (totalInput!4402 BalanceConc!28350)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!548)

(declare-fun size!35137 (BalanceConc!28350) Int)

(assert (=> b!4295474 (= lt!1517923 (size!35137 (totalInput!4402 thiss!29019)))))

(declare-fun b!4295475 () Bool)

(assert (=> b!4295475 (= e!2669393 false)))

(declare-fun z!500 () (InoxSet Context!5758))

(declare-fun lt!1517924 () Bool)

(declare-fun res!14399 () Int)

(declare-fun localTotalInput!12 () BalanceConc!28350)

(declare-fun validCacheMapFindLongestMatchBody!7 (tuple2!45594 BalanceConc!28350) Bool)

(assert (=> b!4295475 (= lt!1517924 (validCacheMapFindLongestMatchBody!7 (tuple2!45595 (tuple2!45593 z!500 from!940) res!14399) localTotalInput!12))))

(declare-fun e!2669398 () Bool)

(declare-fun e!2669395 () Bool)

(declare-fun e!2669392 () Bool)

(declare-fun b!4295476 () Bool)

(declare-fun inv!63368 (BalanceConc!28350) Bool)

(assert (=> b!4295476 (= e!2669395 (and e!2669392 (inv!63368 (totalInput!4402 thiss!29019)) e!2669398))))

(declare-fun b!4295477 () Bool)

(declare-fun res!1760711 () Bool)

(assert (=> b!4295477 (=> (not res!1760711) (not e!2669393))))

(declare-fun valid!3450 (MutableMap!4377) Bool)

(assert (=> b!4295477 (= res!1760711 (valid!3450 (cache!4517 thiss!29019)))))

(declare-fun res!1760709 () Bool)

(assert (=> start!412362 (=> (not res!1760709) (not e!2669389))))

(assert (=> start!412362 (= res!1760709 (= localTotalInput!12 (totalInput!4402 thiss!29019)))))

(assert (=> start!412362 e!2669389))

(declare-fun condSetEmpty!26707 () Bool)

(assert (=> start!412362 (= condSetEmpty!26707 (= z!500 ((as const (Array Context!5758 Bool)) false)))))

(declare-fun setRes!26707 () Bool)

(assert (=> start!412362 setRes!26707))

(assert (=> start!412362 true))

(declare-fun inv!63369 (CacheFindLongestMatch!548) Bool)

(assert (=> start!412362 (and (inv!63369 thiss!29019) e!2669395)))

(declare-fun e!2669394 () Bool)

(assert (=> start!412362 (and (inv!63368 localTotalInput!12) e!2669394)))

(declare-fun e!2669400 () Bool)

(assert (=> b!4295478 (= e!2669392 (and e!2669400 tp!1319048))))

(declare-fun b!4295479 () Bool)

(declare-fun e!2669391 () Bool)

(declare-fun tp!1319047 () Bool)

(assert (=> b!4295479 (= e!2669391 tp!1319047)))

(declare-fun b!4295480 () Bool)

(declare-fun e!2669396 () Bool)

(declare-fun e!2669401 () Bool)

(assert (=> b!4295480 (= e!2669396 e!2669401)))

(declare-fun setIsEmpty!26707 () Bool)

(assert (=> setIsEmpty!26707 setRes!26707))

(declare-fun tp!1319053 () Bool)

(declare-fun e!2669399 () Bool)

(declare-fun tp!1319045 () Bool)

(declare-fun array_inv!5107 (array!15948) Bool)

(declare-fun array_inv!5108 (array!15950) Bool)

(assert (=> b!4295481 (= e!2669401 (and tp!1319050 tp!1319053 tp!1319045 (array_inv!5107 (_keys!4771 (v!41773 (underlying!9171 (v!41774 (underlying!9172 (cache!4517 thiss!29019))))))) (array_inv!5108 (_values!4752 (v!41773 (underlying!9171 (v!41774 (underlying!9172 (cache!4517 thiss!29019))))))) e!2669399))))

(declare-fun b!4295482 () Bool)

(declare-fun tp!1319046 () Bool)

(declare-fun inv!63370 (Conc!14430) Bool)

(assert (=> b!4295482 (= e!2669394 (and (inv!63370 (c!730845 localTotalInput!12)) tp!1319046))))

(declare-fun mapNonEmpty!20097 () Bool)

(declare-fun mapRes!20097 () Bool)

(declare-fun tp!1319043 () Bool)

(declare-fun tp!1319049 () Bool)

(assert (=> mapNonEmpty!20097 (= mapRes!20097 (and tp!1319043 tp!1319049))))

(declare-fun mapKey!20097 () (_ BitVec 32))

(declare-fun mapRest!20097 () (Array (_ BitVec 32) List!47955))

(declare-fun mapValue!20097 () List!47955)

(assert (=> mapNonEmpty!20097 (= (arr!7128 (_values!4752 (v!41773 (underlying!9171 (v!41774 (underlying!9172 (cache!4517 thiss!29019))))))) (store mapRest!20097 mapKey!20097 mapValue!20097))))

(declare-fun b!4295483 () Bool)

(declare-fun e!2669390 () Bool)

(assert (=> b!4295483 (= e!2669390 e!2669396)))

(declare-fun res!1760712 () Bool)

(assert (=> b!4295484 (=> (not res!1760712) (not e!2669393))))

(declare-fun lambda!131666 () Int)

(declare-fun forall!8564 (List!47955 Int) Bool)

(declare-datatypes ((ListMap!1393 0))(
  ( (ListMap!1394 (toList!2133 List!47955)) )
))
(declare-fun map!9814 (MutableMap!4377) ListMap!1393)

(assert (=> b!4295484 (= res!1760712 (forall!8564 (toList!2133 (map!9814 (cache!4517 thiss!29019))) lambda!131666))))

(declare-fun b!4295485 () Bool)

(declare-fun tp!1319044 () Bool)

(assert (=> b!4295485 (= e!2669398 (and (inv!63370 (c!730845 (totalInput!4402 thiss!29019))) tp!1319044))))

(declare-fun setElem!26707 () Context!5758)

(declare-fun setNonEmpty!26707 () Bool)

(declare-fun tp!1319051 () Bool)

(declare-fun inv!63371 (Context!5758) Bool)

(assert (=> setNonEmpty!26707 (= setRes!26707 (and tp!1319051 (inv!63371 setElem!26707) e!2669391))))

(declare-fun setRest!26707 () (InoxSet Context!5758))

(assert (=> setNonEmpty!26707 (= z!500 ((_ map or) (store ((as const (Array Context!5758 Bool)) false) setElem!26707 true) setRest!26707))))

(declare-fun b!4295486 () Bool)

(declare-fun tp!1319052 () Bool)

(assert (=> b!4295486 (= e!2669399 (and tp!1319052 mapRes!20097))))

(declare-fun condMapEmpty!20097 () Bool)

(declare-fun mapDefault!20097 () List!47955)

(assert (=> b!4295486 (= condMapEmpty!20097 (= (arr!7128 (_values!4752 (v!41773 (underlying!9171 (v!41774 (underlying!9172 (cache!4517 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47955)) mapDefault!20097)))))

(declare-fun b!4295487 () Bool)

(declare-fun res!1760714 () Bool)

(assert (=> b!4295487 (=> (not res!1760714) (not e!2669389))))

(declare-fun validCacheMapFindLongestMatch!85 (MutableMap!4377 BalanceConc!28350) Bool)

(assert (=> b!4295487 (= res!1760714 (validCacheMapFindLongestMatch!85 (cache!4517 thiss!29019) (totalInput!4402 thiss!29019)))))

(declare-fun mapIsEmpty!20097 () Bool)

(assert (=> mapIsEmpty!20097 mapRes!20097))

(declare-fun b!4295488 () Bool)

(declare-fun lt!1517925 () MutLongMap!4471)

(get-info :version)

(assert (=> b!4295488 (= e!2669400 (and e!2669390 ((_ is LongMap!4471) lt!1517925)))))

(assert (=> b!4295488 (= lt!1517925 (v!41774 (underlying!9172 (cache!4517 thiss!29019))))))

(declare-fun b!4295489 () Bool)

(declare-fun res!1760710 () Bool)

(assert (=> b!4295489 (=> (not res!1760710) (not e!2669393))))

(assert (=> b!4295489 (= res!1760710 ((_ is HashMap!4377) (cache!4517 thiss!29019)))))

(declare-fun b!4295490 () Bool)

(declare-fun res!1760708 () Bool)

(assert (=> b!4295490 (=> (not res!1760708) (not e!2669389))))

(assert (=> b!4295490 (= res!1760708 (>= from!940 0))))

(declare-fun b!4295491 () Bool)

(declare-fun res!1760713 () Bool)

(assert (=> b!4295491 (=> (not res!1760713) (not e!2669393))))

(declare-fun findLongestMatchInnerZipperFastV2!44 ((InoxSet Context!5758) Int BalanceConc!28350 Int) Int)

(assert (=> b!4295491 (= res!1760713 (= res!14399 (findLongestMatchInnerZipperFastV2!44 z!500 from!940 (totalInput!4402 thiss!29019) lt!1517923)))))

(assert (= (and start!412362 res!1760709) b!4295487))

(assert (= (and b!4295487 res!1760714) b!4295490))

(assert (= (and b!4295490 res!1760708) b!4295474))

(assert (= (and b!4295474 res!1760707) b!4295491))

(assert (= (and b!4295491 res!1760713) b!4295489))

(assert (= (and b!4295489 res!1760710) b!4295477))

(assert (= (and b!4295477 res!1760711) b!4295484))

(assert (= (and b!4295484 res!1760712) b!4295475))

(assert (= (and start!412362 condSetEmpty!26707) setIsEmpty!26707))

(assert (= (and start!412362 (not condSetEmpty!26707)) setNonEmpty!26707))

(assert (= setNonEmpty!26707 b!4295479))

(assert (= (and b!4295486 condMapEmpty!20097) mapIsEmpty!20097))

(assert (= (and b!4295486 (not condMapEmpty!20097)) mapNonEmpty!20097))

(assert (= b!4295481 b!4295486))

(assert (= b!4295480 b!4295481))

(assert (= b!4295483 b!4295480))

(assert (= (and b!4295488 ((_ is LongMap!4471) (v!41774 (underlying!9172 (cache!4517 thiss!29019))))) b!4295483))

(assert (= b!4295478 b!4295488))

(assert (= (and b!4295476 ((_ is HashMap!4377) (cache!4517 thiss!29019))) b!4295478))

(assert (= b!4295476 b!4295485))

(assert (= start!412362 b!4295476))

(assert (= start!412362 b!4295482))

(declare-fun m!4888007 () Bool)

(assert (=> b!4295475 m!4888007))

(declare-fun m!4888009 () Bool)

(assert (=> b!4295487 m!4888009))

(declare-fun m!4888011 () Bool)

(assert (=> b!4295477 m!4888011))

(declare-fun m!4888013 () Bool)

(assert (=> b!4295491 m!4888013))

(declare-fun m!4888015 () Bool)

(assert (=> start!412362 m!4888015))

(declare-fun m!4888017 () Bool)

(assert (=> start!412362 m!4888017))

(declare-fun m!4888019 () Bool)

(assert (=> b!4295484 m!4888019))

(declare-fun m!4888021 () Bool)

(assert (=> b!4295484 m!4888021))

(declare-fun m!4888023 () Bool)

(assert (=> b!4295476 m!4888023))

(declare-fun m!4888025 () Bool)

(assert (=> b!4295482 m!4888025))

(declare-fun m!4888027 () Bool)

(assert (=> setNonEmpty!26707 m!4888027))

(declare-fun m!4888029 () Bool)

(assert (=> b!4295481 m!4888029))

(declare-fun m!4888031 () Bool)

(assert (=> b!4295481 m!4888031))

(declare-fun m!4888033 () Bool)

(assert (=> b!4295474 m!4888033))

(declare-fun m!4888035 () Bool)

(assert (=> mapNonEmpty!20097 m!4888035))

(declare-fun m!4888037 () Bool)

(assert (=> b!4295485 m!4888037))

(check-sat (not b!4295487) (not b!4295475) (not b!4295476) b_and!338975 (not b!4295481) (not b!4295491) b_and!338977 (not b!4295479) (not setNonEmpty!26707) (not b_next!128463) (not b!4295484) (not b!4295474) (not b_next!128465) (not b!4295485) (not b!4295482) (not mapNonEmpty!20097) (not start!412362) (not b!4295486) (not b!4295477))
(check-sat b_and!338975 b_and!338977 (not b_next!128463) (not b_next!128465))
