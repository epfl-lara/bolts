; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412160 () Bool)

(assert start!412160)

(declare-fun b!4292556 () Bool)

(declare-fun b_free!127543 () Bool)

(declare-fun b_next!128247 () Bool)

(assert (=> b!4292556 (= b_free!127543 (not b_next!128247))))

(declare-fun tp!1317049 () Bool)

(declare-fun b_and!338759 () Bool)

(assert (=> b!4292556 (= tp!1317049 b_and!338759)))

(declare-fun b!4292557 () Bool)

(declare-fun b_free!127545 () Bool)

(declare-fun b_next!128249 () Bool)

(assert (=> b!4292557 (= b_free!127545 (not b_next!128249))))

(declare-fun tp!1317032 () Bool)

(declare-fun b_and!338761 () Bool)

(assert (=> b!4292557 (= tp!1317032 b_and!338761)))

(declare-fun b!4292571 () Bool)

(declare-fun b_free!127547 () Bool)

(declare-fun b_next!128251 () Bool)

(assert (=> b!4292571 (= b_free!127547 (not b_next!128251))))

(declare-fun tp!1317047 () Bool)

(declare-fun b_and!338763 () Bool)

(assert (=> b!4292571 (= tp!1317047 b_and!338763)))

(declare-fun b!4292552 () Bool)

(declare-fun b_free!127549 () Bool)

(declare-fun b_next!128253 () Bool)

(assert (=> b!4292552 (= b_free!127549 (not b_next!128253))))

(declare-fun tp!1317039 () Bool)

(declare-fun b_and!338765 () Bool)

(assert (=> b!4292552 (= tp!1317039 b_and!338765)))

(declare-fun b!4292540 () Bool)

(declare-fun b_free!127551 () Bool)

(declare-fun b_next!128255 () Bool)

(assert (=> b!4292540 (= b_free!127551 (not b_next!128255))))

(declare-fun tp!1317046 () Bool)

(declare-fun b_and!338767 () Bool)

(assert (=> b!4292540 (= tp!1317046 b_and!338767)))

(declare-fun b!4292553 () Bool)

(declare-fun b_free!127553 () Bool)

(declare-fun b_next!128257 () Bool)

(assert (=> b!4292553 (= b_free!127553 (not b_next!128257))))

(declare-fun tp!1317033 () Bool)

(declare-fun b_and!338769 () Bool)

(assert (=> b!4292553 (= tp!1317033 b_and!338769)))

(declare-fun b!4292525 () Bool)

(declare-fun e!2666921 () Bool)

(declare-datatypes ((C!26132 0))(
  ( (C!26133 (val!15392 Int)) )
))
(declare-datatypes ((Regex!12967 0))(
  ( (ElementMatch!12967 (c!730530 C!26132)) (Concat!21286 (regOne!26446 Regex!12967) (regTwo!26446 Regex!12967)) (EmptyExpr!12967) (Star!12967 (reg!13296 Regex!12967)) (EmptyLang!12967) (Union!12967 (regOne!26447 Regex!12967) (regTwo!26447 Regex!12967)) )
))
(declare-datatypes ((List!47861 0))(
  ( (Nil!47737) (Cons!47737 (h!53157 Regex!12967) (t!354465 List!47861)) )
))
(declare-datatypes ((Context!5714 0))(
  ( (Context!5715 (exprs!3357 List!47861)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45424 0))(
  ( (tuple2!45425 (_1!25954 (InoxSet Context!5714)) (_2!25954 Int)) )
))
(declare-datatypes ((Hashable!4340 0))(
  ( (HashableExt!4339 (__x!29297 Int)) )
))
(declare-datatypes ((array!15800 0))(
  ( (array!15801 (arr!7058 (Array (_ BitVec 32) (_ BitVec 64))) (size!35049 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!45426 0))(
  ( (tuple2!45427 (_1!25955 tuple2!45424) (_2!25955 Int)) )
))
(declare-datatypes ((List!47862 0))(
  ( (Nil!47738) (Cons!47738 (h!53158 tuple2!45426) (t!354466 List!47862)) )
))
(declare-datatypes ((array!15802 0))(
  ( (array!15803 (arr!7059 (Array (_ BitVec 32) List!47862)) (size!35050 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8848 0))(
  ( (LongMapFixedSize!8849 (defaultEntry!4809 Int) (mask!12877 (_ BitVec 32)) (extraKeys!4673 (_ BitVec 32)) (zeroValue!4683 List!47862) (minValue!4683 List!47862) (_size!8891 (_ BitVec 32)) (_keys!4724 array!15800) (_values!4705 array!15802) (_vacant!4485 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17505 0))(
  ( (Cell!17506 (v!41667 LongMapFixedSize!8848)) )
))
(declare-datatypes ((MutLongMap!4424 0))(
  ( (LongMap!4424 (underlying!9077 Cell!17505)) (MutLongMapExt!4423 (__x!29298 Int)) )
))
(declare-datatypes ((Cell!17507 0))(
  ( (Cell!17508 (v!41668 MutLongMap!4424)) )
))
(declare-datatypes ((MutableMap!4330 0))(
  ( (MutableMapExt!4329 (__x!29299 Int)) (HashMap!4330 (underlying!9078 Cell!17507) (hashF!6372 Hashable!4340) (_size!8892 (_ BitVec 32)) (defaultValue!4501 Int)) )
))
(declare-datatypes ((List!47863 0))(
  ( (Nil!47739) (Cons!47739 (h!53159 C!26132) (t!354467 List!47863)) )
))
(declare-datatypes ((IArray!28877 0))(
  ( (IArray!28878 (innerList!14496 List!47863)) )
))
(declare-datatypes ((Conc!14408 0))(
  ( (Node!14408 (left!35430 Conc!14408) (right!35760 Conc!14408) (csize!29046 Int) (cheight!14619 Int)) (Leaf!22293 (xs!17714 IArray!28877) (csize!29047 Int)) (Empty!14408) )
))
(declare-datatypes ((BalanceConc!28306 0))(
  ( (BalanceConc!28307 (c!730531 Conc!14408)) )
))
(declare-datatypes ((CacheFindLongestMatch!504 0))(
  ( (CacheFindLongestMatch!505 (cache!4470 MutableMap!4330) (totalInput!4374 BalanceConc!28306)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!504)

(declare-fun tp!1317030 () Bool)

(declare-fun inv!63254 (Conc!14408) Bool)

(assert (=> b!4292525 (= e!2666921 (and (inv!63254 (c!730531 (totalInput!4374 cacheFindLongestMatch!183))) tp!1317030))))

(declare-fun b!4292526 () Bool)

(declare-fun e!2666908 () Bool)

(declare-fun e!2666905 () Bool)

(assert (=> b!4292526 (= e!2666908 e!2666905)))

(declare-fun b!4292527 () Bool)

(declare-fun e!2666917 () Int)

(assert (=> b!4292527 (= e!2666917 0)))

(declare-fun b!4292528 () Bool)

(declare-fun e!2666913 () Bool)

(declare-fun e!2666925 () Bool)

(assert (=> b!4292528 (= e!2666913 e!2666925)))

(declare-fun b!4292529 () Bool)

(declare-fun e!2666929 () Bool)

(declare-fun e!2666909 () Bool)

(assert (=> b!4292529 (= e!2666929 e!2666909)))

(declare-fun b!4292530 () Bool)

(declare-fun e!2666899 () Bool)

(declare-fun tp!1317045 () Bool)

(declare-fun mapRes!19915 () Bool)

(assert (=> b!4292530 (= e!2666899 (and tp!1317045 mapRes!19915))))

(declare-fun condMapEmpty!19916 () Bool)

(declare-fun mapDefault!19917 () List!47862)

(assert (=> b!4292530 (= condMapEmpty!19916 (= (arr!7059 (_values!4705 (v!41667 (underlying!9077 (v!41668 (underlying!9078 (cache!4470 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47862)) mapDefault!19917)))))

(declare-fun b!4292531 () Bool)

(declare-fun e!2666918 () Bool)

(declare-datatypes ((tuple2!45428 0))(
  ( (tuple2!45429 (_1!25956 Context!5714) (_2!25956 C!26132)) )
))
(declare-datatypes ((tuple2!45430 0))(
  ( (tuple2!45431 (_1!25957 tuple2!45428) (_2!25957 (InoxSet Context!5714))) )
))
(declare-datatypes ((List!47864 0))(
  ( (Nil!47740) (Cons!47740 (h!53160 tuple2!45430) (t!354468 List!47864)) )
))
(declare-datatypes ((array!15804 0))(
  ( (array!15805 (arr!7060 (Array (_ BitVec 32) List!47864)) (size!35051 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8850 0))(
  ( (LongMapFixedSize!8851 (defaultEntry!4810 Int) (mask!12878 (_ BitVec 32)) (extraKeys!4674 (_ BitVec 32)) (zeroValue!4684 List!47864) (minValue!4684 List!47864) (_size!8893 (_ BitVec 32)) (_keys!4725 array!15800) (_values!4706 array!15804) (_vacant!4486 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17509 0))(
  ( (Cell!17510 (v!41669 LongMapFixedSize!8850)) )
))
(declare-datatypes ((MutLongMap!4425 0))(
  ( (LongMap!4425 (underlying!9079 Cell!17509)) (MutLongMapExt!4424 (__x!29300 Int)) )
))
(declare-fun lt!1517269 () MutLongMap!4425)

(get-info :version)

(assert (=> b!4292531 (= e!2666918 (and e!2666908 ((_ is LongMap!4425) lt!1517269)))))

(declare-datatypes ((Cell!17511 0))(
  ( (Cell!17512 (v!41670 MutLongMap!4425)) )
))
(declare-datatypes ((Hashable!4341 0))(
  ( (HashableExt!4340 (__x!29301 Int)) )
))
(declare-datatypes ((MutableMap!4331 0))(
  ( (MutableMapExt!4330 (__x!29302 Int)) (HashMap!4331 (underlying!9080 Cell!17511) (hashF!6373 Hashable!4341) (_size!8894 (_ BitVec 32)) (defaultValue!4502 Int)) )
))
(declare-datatypes ((CacheUp!2822 0))(
  ( (CacheUp!2823 (cache!4471 MutableMap!4331)) )
))
(declare-fun cacheUp!947 () CacheUp!2822)

(assert (=> b!4292531 (= lt!1517269 (v!41670 (underlying!9080 (cache!4471 cacheUp!947))))))

(declare-fun b!4292532 () Bool)

(declare-fun e!2666911 () Bool)

(declare-fun tp!1317054 () Bool)

(declare-fun mapRes!19917 () Bool)

(assert (=> b!4292532 (= e!2666911 (and tp!1317054 mapRes!19917))))

(declare-fun condMapEmpty!19917 () Bool)

(declare-fun mapDefault!19915 () List!47864)

(assert (=> b!4292532 (= condMapEmpty!19917 (= (arr!7060 (_values!4706 (v!41669 (underlying!9079 (v!41670 (underlying!9080 (cache!4471 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47864)) mapDefault!19915)))))

(declare-fun b!4292533 () Bool)

(declare-fun e!2666893 () Bool)

(declare-fun totalInput!812 () BalanceConc!28306)

(declare-fun tp!1317035 () Bool)

(assert (=> b!4292533 (= e!2666893 (and (inv!63254 (c!730531 totalInput!812)) tp!1317035))))

(declare-fun b!4292534 () Bool)

(declare-fun e!2666924 () Bool)

(declare-fun tp!1317050 () Bool)

(declare-fun mapRes!19916 () Bool)

(assert (=> b!4292534 (= e!2666924 (and tp!1317050 mapRes!19916))))

(declare-fun condMapEmpty!19915 () Bool)

(declare-datatypes ((tuple3!5448 0))(
  ( (tuple3!5449 (_1!25958 Regex!12967) (_2!25958 Context!5714) (_3!3242 C!26132)) )
))
(declare-datatypes ((tuple2!45432 0))(
  ( (tuple2!45433 (_1!25959 tuple3!5448) (_2!25959 (InoxSet Context!5714))) )
))
(declare-datatypes ((List!47865 0))(
  ( (Nil!47741) (Cons!47741 (h!53161 tuple2!45432) (t!354469 List!47865)) )
))
(declare-datatypes ((Hashable!4342 0))(
  ( (HashableExt!4341 (__x!29303 Int)) )
))
(declare-datatypes ((array!15806 0))(
  ( (array!15807 (arr!7061 (Array (_ BitVec 32) List!47865)) (size!35052 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8852 0))(
  ( (LongMapFixedSize!8853 (defaultEntry!4811 Int) (mask!12879 (_ BitVec 32)) (extraKeys!4675 (_ BitVec 32)) (zeroValue!4685 List!47865) (minValue!4685 List!47865) (_size!8895 (_ BitVec 32)) (_keys!4726 array!15800) (_values!4707 array!15806) (_vacant!4487 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17513 0))(
  ( (Cell!17514 (v!41671 LongMapFixedSize!8852)) )
))
(declare-datatypes ((MutLongMap!4426 0))(
  ( (LongMap!4426 (underlying!9081 Cell!17513)) (MutLongMapExt!4425 (__x!29304 Int)) )
))
(declare-datatypes ((Cell!17515 0))(
  ( (Cell!17516 (v!41672 MutLongMap!4426)) )
))
(declare-datatypes ((MutableMap!4332 0))(
  ( (MutableMapExt!4331 (__x!29305 Int)) (HashMap!4332 (underlying!9082 Cell!17515) (hashF!6374 Hashable!4342) (_size!8896 (_ BitVec 32)) (defaultValue!4503 Int)) )
))
(declare-datatypes ((CacheDown!2942 0))(
  ( (CacheDown!2943 (cache!4472 MutableMap!4332)) )
))
(declare-fun cacheDown!1066 () CacheDown!2942)

(declare-fun mapDefault!19916 () List!47865)

(assert (=> b!4292534 (= condMapEmpty!19915 (= (arr!7061 (_values!4707 (v!41671 (underlying!9081 (v!41672 (underlying!9082 (cache!4472 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47865)) mapDefault!19916)))))

(declare-fun b!4292535 () Bool)

(declare-fun e!2666916 () Bool)

(declare-fun e!2666903 () Bool)

(assert (=> b!4292535 (= e!2666916 (not e!2666903))))

(declare-fun res!1760084 () Bool)

(assert (=> b!4292535 (=> res!1760084 e!2666903)))

(declare-datatypes ((tuple4!1036 0))(
  ( (tuple4!1037 (_1!25960 Int) (_2!25960 CacheFindLongestMatch!504) (_3!3243 CacheDown!2942) (_4!518 CacheUp!2822)) )
))
(declare-fun lt!1517273 () tuple4!1036)

(declare-fun lt!1517276 () Int)

(assert (=> b!4292535 (= res!1760084 (not (= (_1!25960 lt!1517273) lt!1517276)))))

(declare-fun e!2666915 () Bool)

(assert (=> b!4292535 e!2666915))

(declare-fun c!730529 () Bool)

(declare-fun lt!1517275 () Bool)

(assert (=> b!4292535 (= c!730529 lt!1517275)))

(declare-fun z!3765 () (InoxSet Context!5714))

(declare-fun from!999 () Int)

(declare-fun totalInputSize!257 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!36 ((InoxSet Context!5714) Int BalanceConc!28306 Int) Int)

(assert (=> b!4292535 (= lt!1517276 (findLongestMatchInnerZipperFastV2!36 z!3765 from!999 totalInput!812 totalInputSize!257))))

(declare-fun e!2666894 () tuple4!1036)

(assert (=> b!4292535 (= lt!1517273 e!2666894)))

(declare-fun c!730528 () Bool)

(assert (=> b!4292535 (= c!730528 lt!1517275)))

(declare-fun e!2666919 () Bool)

(assert (=> b!4292535 (= lt!1517275 e!2666919)))

(declare-fun res!1760089 () Bool)

(assert (=> b!4292535 (=> res!1760089 e!2666919)))

(assert (=> b!4292535 (= res!1760089 (= from!999 totalInputSize!257))))

(declare-fun b!4292536 () Bool)

(declare-fun c!730525 () Bool)

(declare-fun lt!1517268 () (InoxSet Context!5714))

(declare-fun nullableZipper!769 ((InoxSet Context!5714)) Bool)

(assert (=> b!4292536 (= c!730525 (nullableZipper!769 lt!1517268))))

(declare-fun e!2666910 () Int)

(declare-fun e!2666926 () Int)

(assert (=> b!4292536 (= e!2666910 e!2666926)))

(declare-fun b!4292537 () Bool)

(declare-fun e!2666901 () Bool)

(declare-fun e!2666907 () Bool)

(assert (=> b!4292537 (= e!2666901 e!2666907)))

(declare-fun b!4292538 () Bool)

(assert (=> b!4292538 (= e!2666926 1)))

(declare-fun b!4292539 () Bool)

(declare-fun e!2666912 () Bool)

(declare-fun tp!1317052 () Bool)

(assert (=> b!4292539 (= e!2666912 tp!1317052)))

(declare-fun tp!1317053 () Bool)

(declare-fun tp!1317051 () Bool)

(declare-fun array_inv!5062 (array!15800) Bool)

(declare-fun array_inv!5063 (array!15802) Bool)

(assert (=> b!4292540 (= e!2666907 (and tp!1317046 tp!1317053 tp!1317051 (array_inv!5062 (_keys!4724 (v!41667 (underlying!9077 (v!41668 (underlying!9078 (cache!4470 cacheFindLongestMatch!183))))))) (array_inv!5063 (_values!4705 (v!41667 (underlying!9077 (v!41668 (underlying!9078 (cache!4470 cacheFindLongestMatch!183))))))) e!2666899))))

(declare-fun b!4292541 () Bool)

(declare-fun res!1760091 () Bool)

(declare-datatypes ((tuple4!1038 0))(
  ( (tuple4!1039 (_1!25961 Int) (_2!25961 CacheUp!2822) (_3!3244 CacheDown!2942) (_4!519 CacheFindLongestMatch!504)) )
))
(declare-fun lt!1517271 () tuple4!1038)

(declare-fun valid!3430 (CacheDown!2942) Bool)

(assert (=> b!4292541 (= res!1760091 (valid!3430 (_3!3244 lt!1517271)))))

(declare-fun e!2666904 () Bool)

(assert (=> b!4292541 (=> (not res!1760091) (not e!2666904))))

(declare-fun b!4292542 () Bool)

(declare-fun e!2666895 () Bool)

(declare-fun e!2666906 () Bool)

(declare-fun lt!1517266 () MutLongMap!4426)

(assert (=> b!4292542 (= e!2666895 (and e!2666906 ((_ is LongMap!4426) lt!1517266)))))

(assert (=> b!4292542 (= lt!1517266 (v!41672 (underlying!9082 (cache!4472 cacheDown!1066))))))

(declare-fun mapIsEmpty!19915 () Bool)

(assert (=> mapIsEmpty!19915 mapRes!19915))

(declare-fun b!4292543 () Bool)

(declare-fun e!2666897 () Bool)

(assert (=> b!4292543 (= e!2666897 e!2666916)))

(declare-fun res!1760087 () Bool)

(assert (=> b!4292543 (=> (not res!1760087) (not e!2666916))))

(declare-fun lt!1517267 () Int)

(assert (=> b!4292543 (= res!1760087 (and (<= from!999 lt!1517267) (= totalInputSize!257 lt!1517267) (= (totalInput!4374 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35053 (BalanceConc!28306) Int)

(assert (=> b!4292543 (= lt!1517267 (size!35053 totalInput!812))))

(declare-fun b!4292544 () Bool)

(assert (=> b!4292544 (= e!2666926 0)))

(declare-fun setElem!26523 () Context!5714)

(declare-fun tp!1317038 () Bool)

(declare-fun setRes!26523 () Bool)

(declare-fun setNonEmpty!26523 () Bool)

(declare-fun inv!63255 (Context!5714) Bool)

(assert (=> setNonEmpty!26523 (= setRes!26523 (and tp!1317038 (inv!63255 setElem!26523) e!2666912))))

(declare-fun setRest!26523 () (InoxSet Context!5714))

(assert (=> setNonEmpty!26523 (= z!3765 ((_ map or) (store ((as const (Array Context!5714 Bool)) false) setElem!26523 true) setRest!26523))))

(declare-fun b!4292545 () Bool)

(declare-fun res!1760086 () Bool)

(assert (=> b!4292545 (=> (not res!1760086) (not e!2666916))))

(declare-datatypes ((Option!10139 0))(
  ( (None!10138) (Some!10138 (v!41673 Int)) )
))
(declare-fun get!15454 (CacheFindLongestMatch!504 (InoxSet Context!5714) Int) Option!10139)

(assert (=> b!4292545 (= res!1760086 (not ((_ is Some!10138) (get!15454 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun b!4292546 () Bool)

(declare-fun e!2666914 () Bool)

(declare-fun e!2666928 () Bool)

(declare-fun lt!1517274 () MutLongMap!4424)

(assert (=> b!4292546 (= e!2666914 (and e!2666928 ((_ is LongMap!4424) lt!1517274)))))

(assert (=> b!4292546 (= lt!1517274 (v!41668 (underlying!9078 (cache!4470 cacheFindLongestMatch!183))))))

(declare-fun b!4292547 () Bool)

(assert (=> b!4292547 (= e!2666906 e!2666929)))

(declare-fun b!4292548 () Bool)

(assert (=> b!4292548 (= e!2666904 (= (totalInput!4374 (_4!519 lt!1517271)) totalInput!812))))

(declare-fun b!4292549 () Bool)

(declare-fun e!2666930 () Bool)

(declare-fun e!2666898 () Bool)

(assert (=> b!4292549 (= e!2666930 e!2666898)))

(declare-fun b!4292550 () Bool)

(declare-fun lt!1517265 () Int)

(assert (=> b!4292550 (= e!2666910 (+ 1 lt!1517265))))

(declare-fun b!4292551 () Bool)

(assert (=> b!4292551 (= e!2666917 1)))

(declare-fun tp!1317034 () Bool)

(declare-fun tp!1317044 () Bool)

(declare-fun array_inv!5064 (array!15806) Bool)

(assert (=> b!4292552 (= e!2666909 (and tp!1317039 tp!1317044 tp!1317034 (array_inv!5062 (_keys!4726 (v!41671 (underlying!9081 (v!41672 (underlying!9082 (cache!4472 cacheDown!1066))))))) (array_inv!5064 (_values!4707 (v!41671 (underlying!9081 (v!41672 (underlying!9082 (cache!4472 cacheDown!1066))))))) e!2666924))))

(declare-fun e!2666920 () Bool)

(assert (=> b!4292553 (= e!2666920 (and e!2666914 tp!1317033))))

(declare-fun b!4292554 () Bool)

(declare-fun e!2666892 () Int)

(assert (=> b!4292554 (= e!2666894 (tuple4!1037 e!2666892 (_4!519 lt!1517271) (_3!3244 lt!1517271) (_2!25961 lt!1517271)))))

(declare-datatypes ((tuple3!5450 0))(
  ( (tuple3!5451 (_1!25962 (InoxSet Context!5714)) (_2!25962 CacheUp!2822) (_3!3245 CacheDown!2942)) )
))
(declare-fun lt!1517270 () tuple3!5450)

(declare-fun derivationStepZipperMem!132 ((InoxSet Context!5714) C!26132 CacheUp!2822 CacheDown!2942) tuple3!5450)

(declare-fun apply!10839 (BalanceConc!28306 Int) C!26132)

(assert (=> b!4292554 (= lt!1517270 (derivationStepZipperMem!132 z!3765 (apply!10839 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!16 ((InoxSet Context!5714) Int BalanceConc!28306 Int CacheUp!2822 CacheDown!2942 CacheFindLongestMatch!504) tuple4!1038)

(assert (=> b!4292554 (= lt!1517271 (findLongestMatchInnerZipperFastV2Mem!16 (_1!25962 lt!1517270) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25962 lt!1517270) (_3!3245 lt!1517270) cacheFindLongestMatch!183))))

(declare-fun res!1760081 () Bool)

(assert (=> b!4292554 (= res!1760081 (= (_1!25961 lt!1517271) (findLongestMatchInnerZipperFastV2!36 (_1!25962 lt!1517270) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(assert (=> b!4292554 (=> (not res!1760081) (not e!2666904))))

(assert (=> b!4292554 e!2666904))

(declare-fun c!730524 () Bool)

(assert (=> b!4292554 (= c!730524 (> (_1!25961 lt!1517271) 0))))

(declare-fun b!4292555 () Bool)

(assert (=> b!4292555 (= e!2666894 (tuple4!1037 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun mapIsEmpty!19916 () Bool)

(assert (=> mapIsEmpty!19916 mapRes!19917))

(assert (=> b!4292556 (= e!2666898 (and e!2666895 tp!1317049))))

(assert (=> b!4292557 (= e!2666925 (and e!2666918 tp!1317032))))

(declare-fun res!1760085 () Bool)

(assert (=> start!412160 (=> (not res!1760085) (not e!2666897))))

(assert (=> start!412160 (= res!1760085 (>= from!999 0))))

(assert (=> start!412160 e!2666897))

(declare-fun inv!63256 (CacheDown!2942) Bool)

(assert (=> start!412160 (and (inv!63256 cacheDown!1066) e!2666930)))

(declare-fun e!2666927 () Bool)

(declare-fun inv!63257 (CacheFindLongestMatch!504) Bool)

(assert (=> start!412160 (and (inv!63257 cacheFindLongestMatch!183) e!2666927)))

(declare-fun condSetEmpty!26523 () Bool)

(assert (=> start!412160 (= condSetEmpty!26523 (= z!3765 ((as const (Array Context!5714 Bool)) false)))))

(assert (=> start!412160 setRes!26523))

(assert (=> start!412160 true))

(declare-fun inv!63258 (BalanceConc!28306) Bool)

(assert (=> start!412160 (and (inv!63258 totalInput!812) e!2666893)))

(declare-fun inv!63259 (CacheUp!2822) Bool)

(assert (=> start!412160 (and (inv!63259 cacheUp!947) e!2666913)))

(declare-fun b!4292558 () Bool)

(declare-fun res!1760090 () Bool)

(declare-fun valid!3431 (CacheFindLongestMatch!504) Bool)

(assert (=> b!4292558 (= res!1760090 (valid!3431 (_4!519 lt!1517271)))))

(assert (=> b!4292558 (=> (not res!1760090) (not e!2666904))))

(declare-fun b!4292559 () Bool)

(declare-fun res!1760083 () Bool)

(declare-fun valid!3432 (CacheUp!2822) Bool)

(assert (=> b!4292559 (= res!1760083 (valid!3432 (_2!25961 lt!1517271)))))

(assert (=> b!4292559 (=> (not res!1760083) (not e!2666904))))

(declare-fun mapNonEmpty!19915 () Bool)

(declare-fun tp!1317043 () Bool)

(declare-fun tp!1317042 () Bool)

(assert (=> mapNonEmpty!19915 (= mapRes!19916 (and tp!1317043 tp!1317042))))

(declare-fun mapValue!19917 () List!47865)

(declare-fun mapKey!19917 () (_ BitVec 32))

(declare-fun mapRest!19915 () (Array (_ BitVec 32) List!47865))

(assert (=> mapNonEmpty!19915 (= (arr!7061 (_values!4707 (v!41671 (underlying!9081 (v!41672 (underlying!9082 (cache!4472 cacheDown!1066))))))) (store mapRest!19915 mapKey!19917 mapValue!19917))))

(declare-fun b!4292560 () Bool)

(assert (=> b!4292560 (= e!2666915 (= lt!1517276 0))))

(declare-fun b!4292561 () Bool)

(assert (=> b!4292561 (= e!2666927 (and e!2666920 (inv!63258 (totalInput!4374 cacheFindLongestMatch!183)) e!2666921))))

(declare-fun b!4292562 () Bool)

(assert (=> b!4292562 (= e!2666928 e!2666901)))

(declare-fun b!4292563 () Bool)

(declare-fun e!2666922 () Bool)

(assert (=> b!4292563 (= e!2666922 (<= from!999 (size!35053 (totalInput!4374 (_2!25960 lt!1517273)))))))

(declare-fun mapIsEmpty!19917 () Bool)

(assert (=> mapIsEmpty!19917 mapRes!19916))

(declare-fun b!4292564 () Bool)

(assert (=> b!4292564 (= e!2666892 (+ 1 (_1!25961 lt!1517271)))))

(declare-fun b!4292565 () Bool)

(declare-fun res!1760088 () Bool)

(assert (=> b!4292565 (=> res!1760088 e!2666922)))

(declare-fun validCacheMapFindLongestMatch!79 (MutableMap!4330 BalanceConc!28306) Bool)

(assert (=> b!4292565 (= res!1760088 (not (validCacheMapFindLongestMatch!79 (cache!4470 (_2!25960 lt!1517273)) (totalInput!4374 (_2!25960 lt!1517273)))))))

(declare-fun b!4292566 () Bool)

(declare-fun e!2666896 () Bool)

(assert (=> b!4292566 (= e!2666905 e!2666896)))

(declare-fun b!4292567 () Bool)

(declare-fun c!730526 () Bool)

(assert (=> b!4292567 (= c!730526 (nullableZipper!769 (_1!25962 lt!1517270)))))

(assert (=> b!4292567 (= e!2666892 e!2666917)))

(declare-fun b!4292568 () Bool)

(assert (=> b!4292568 (= e!2666915 (= lt!1517276 e!2666910))))

(declare-fun derivationStepZipper!548 ((InoxSet Context!5714) C!26132) (InoxSet Context!5714))

(assert (=> b!4292568 (= lt!1517268 (derivationStepZipper!548 z!3765 (apply!10839 totalInput!812 from!999)))))

(assert (=> b!4292568 (= lt!1517265 (findLongestMatchInnerZipperFastV2!36 lt!1517268 (+ 1 from!999) totalInput!812 totalInputSize!257))))

(declare-fun c!730527 () Bool)

(assert (=> b!4292568 (= c!730527 (> lt!1517265 0))))

(declare-fun b!4292569 () Bool)

(assert (=> b!4292569 (= e!2666903 e!2666922)))

(declare-fun res!1760082 () Bool)

(assert (=> b!4292569 (=> res!1760082 e!2666922)))

(assert (=> b!4292569 (= res!1760082 (not (= totalInput!812 (totalInput!4374 (_2!25960 lt!1517273)))))))

(declare-datatypes ((Unit!66414 0))(
  ( (Unit!66415) )
))
(declare-fun lt!1517272 () Unit!66414)

(declare-fun lemmaInvariant!411 (CacheFindLongestMatch!504) Unit!66414)

(assert (=> b!4292569 (= lt!1517272 (lemmaInvariant!411 (_2!25960 lt!1517273)))))

(declare-fun mapNonEmpty!19916 () Bool)

(declare-fun tp!1317040 () Bool)

(declare-fun tp!1317037 () Bool)

(assert (=> mapNonEmpty!19916 (= mapRes!19915 (and tp!1317040 tp!1317037))))

(declare-fun mapValue!19916 () List!47862)

(declare-fun mapKey!19916 () (_ BitVec 32))

(declare-fun mapRest!19917 () (Array (_ BitVec 32) List!47862))

(assert (=> mapNonEmpty!19916 (= (arr!7059 (_values!4705 (v!41667 (underlying!9077 (v!41668 (underlying!9078 (cache!4470 cacheFindLongestMatch!183))))))) (store mapRest!19917 mapKey!19916 mapValue!19916))))

(declare-fun mapNonEmpty!19917 () Bool)

(declare-fun tp!1317036 () Bool)

(declare-fun tp!1317048 () Bool)

(assert (=> mapNonEmpty!19917 (= mapRes!19917 (and tp!1317036 tp!1317048))))

(declare-fun mapValue!19915 () List!47864)

(declare-fun mapKey!19915 () (_ BitVec 32))

(declare-fun mapRest!19916 () (Array (_ BitVec 32) List!47864))

(assert (=> mapNonEmpty!19917 (= (arr!7060 (_values!4706 (v!41669 (underlying!9079 (v!41670 (underlying!9080 (cache!4471 cacheUp!947))))))) (store mapRest!19916 mapKey!19915 mapValue!19915))))

(declare-fun b!4292570 () Bool)

(declare-fun lostCauseZipper!647 ((InoxSet Context!5714)) Bool)

(assert (=> b!4292570 (= e!2666919 (lostCauseZipper!647 z!3765))))

(declare-fun setIsEmpty!26523 () Bool)

(assert (=> setIsEmpty!26523 setRes!26523))

(declare-fun tp!1317031 () Bool)

(declare-fun tp!1317041 () Bool)

(declare-fun array_inv!5065 (array!15804) Bool)

(assert (=> b!4292571 (= e!2666896 (and tp!1317047 tp!1317041 tp!1317031 (array_inv!5062 (_keys!4725 (v!41669 (underlying!9079 (v!41670 (underlying!9080 (cache!4471 cacheUp!947))))))) (array_inv!5065 (_values!4706 (v!41669 (underlying!9079 (v!41670 (underlying!9080 (cache!4471 cacheUp!947))))))) e!2666911))))

(assert (= (and start!412160 res!1760085) b!4292543))

(assert (= (and b!4292543 res!1760087) b!4292545))

(assert (= (and b!4292545 res!1760086) b!4292535))

(assert (= (and b!4292535 (not res!1760089)) b!4292570))

(assert (= (and b!4292535 c!730528) b!4292555))

(assert (= (and b!4292535 (not c!730528)) b!4292554))

(assert (= (and b!4292554 res!1760081) b!4292559))

(assert (= (and b!4292559 res!1760083) b!4292541))

(assert (= (and b!4292541 res!1760091) b!4292558))

(assert (= (and b!4292558 res!1760090) b!4292548))

(assert (= (and b!4292554 c!730524) b!4292564))

(assert (= (and b!4292554 (not c!730524)) b!4292567))

(assert (= (and b!4292567 c!730526) b!4292551))

(assert (= (and b!4292567 (not c!730526)) b!4292527))

(assert (= (and b!4292535 c!730529) b!4292560))

(assert (= (and b!4292535 (not c!730529)) b!4292568))

(assert (= (and b!4292568 c!730527) b!4292550))

(assert (= (and b!4292568 (not c!730527)) b!4292536))

(assert (= (and b!4292536 c!730525) b!4292538))

(assert (= (and b!4292536 (not c!730525)) b!4292544))

(assert (= (and b!4292535 (not res!1760084)) b!4292569))

(assert (= (and b!4292569 (not res!1760082)) b!4292565))

(assert (= (and b!4292565 (not res!1760088)) b!4292563))

(assert (= (and b!4292534 condMapEmpty!19915) mapIsEmpty!19917))

(assert (= (and b!4292534 (not condMapEmpty!19915)) mapNonEmpty!19915))

(assert (= b!4292552 b!4292534))

(assert (= b!4292529 b!4292552))

(assert (= b!4292547 b!4292529))

(assert (= (and b!4292542 ((_ is LongMap!4426) (v!41672 (underlying!9082 (cache!4472 cacheDown!1066))))) b!4292547))

(assert (= b!4292556 b!4292542))

(assert (= (and b!4292549 ((_ is HashMap!4332) (cache!4472 cacheDown!1066))) b!4292556))

(assert (= start!412160 b!4292549))

(assert (= (and b!4292530 condMapEmpty!19916) mapIsEmpty!19915))

(assert (= (and b!4292530 (not condMapEmpty!19916)) mapNonEmpty!19916))

(assert (= b!4292540 b!4292530))

(assert (= b!4292537 b!4292540))

(assert (= b!4292562 b!4292537))

(assert (= (and b!4292546 ((_ is LongMap!4424) (v!41668 (underlying!9078 (cache!4470 cacheFindLongestMatch!183))))) b!4292562))

(assert (= b!4292553 b!4292546))

(assert (= (and b!4292561 ((_ is HashMap!4330) (cache!4470 cacheFindLongestMatch!183))) b!4292553))

(assert (= b!4292561 b!4292525))

(assert (= start!412160 b!4292561))

(assert (= (and start!412160 condSetEmpty!26523) setIsEmpty!26523))

(assert (= (and start!412160 (not condSetEmpty!26523)) setNonEmpty!26523))

(assert (= setNonEmpty!26523 b!4292539))

(assert (= start!412160 b!4292533))

(assert (= (and b!4292532 condMapEmpty!19917) mapIsEmpty!19916))

(assert (= (and b!4292532 (not condMapEmpty!19917)) mapNonEmpty!19917))

(assert (= b!4292571 b!4292532))

(assert (= b!4292566 b!4292571))

(assert (= b!4292526 b!4292566))

(assert (= (and b!4292531 ((_ is LongMap!4425) (v!41670 (underlying!9080 (cache!4471 cacheUp!947))))) b!4292526))

(assert (= b!4292557 b!4292531))

(assert (= (and b!4292528 ((_ is HashMap!4331) (cache!4471 cacheUp!947))) b!4292557))

(assert (= start!412160 b!4292528))

(declare-fun m!4886004 () Bool)

(assert (=> b!4292554 m!4886004))

(assert (=> b!4292554 m!4886004))

(declare-fun m!4886006 () Bool)

(assert (=> b!4292554 m!4886006))

(declare-fun m!4886008 () Bool)

(assert (=> b!4292554 m!4886008))

(declare-fun m!4886010 () Bool)

(assert (=> b!4292554 m!4886010))

(declare-fun m!4886012 () Bool)

(assert (=> b!4292552 m!4886012))

(declare-fun m!4886014 () Bool)

(assert (=> b!4292552 m!4886014))

(declare-fun m!4886016 () Bool)

(assert (=> b!4292535 m!4886016))

(declare-fun m!4886018 () Bool)

(assert (=> b!4292540 m!4886018))

(declare-fun m!4886020 () Bool)

(assert (=> b!4292540 m!4886020))

(declare-fun m!4886022 () Bool)

(assert (=> b!4292561 m!4886022))

(declare-fun m!4886024 () Bool)

(assert (=> b!4292559 m!4886024))

(declare-fun m!4886026 () Bool)

(assert (=> setNonEmpty!26523 m!4886026))

(declare-fun m!4886028 () Bool)

(assert (=> mapNonEmpty!19915 m!4886028))

(declare-fun m!4886030 () Bool)

(assert (=> b!4292525 m!4886030))

(assert (=> b!4292568 m!4886004))

(assert (=> b!4292568 m!4886004))

(declare-fun m!4886032 () Bool)

(assert (=> b!4292568 m!4886032))

(declare-fun m!4886034 () Bool)

(assert (=> b!4292568 m!4886034))

(declare-fun m!4886036 () Bool)

(assert (=> b!4292543 m!4886036))

(declare-fun m!4886038 () Bool)

(assert (=> mapNonEmpty!19916 m!4886038))

(declare-fun m!4886040 () Bool)

(assert (=> b!4292565 m!4886040))

(declare-fun m!4886042 () Bool)

(assert (=> b!4292567 m!4886042))

(declare-fun m!4886044 () Bool)

(assert (=> b!4292536 m!4886044))

(declare-fun m!4886046 () Bool)

(assert (=> b!4292558 m!4886046))

(declare-fun m!4886048 () Bool)

(assert (=> b!4292541 m!4886048))

(declare-fun m!4886050 () Bool)

(assert (=> b!4292570 m!4886050))

(declare-fun m!4886052 () Bool)

(assert (=> mapNonEmpty!19917 m!4886052))

(declare-fun m!4886054 () Bool)

(assert (=> b!4292545 m!4886054))

(declare-fun m!4886056 () Bool)

(assert (=> b!4292533 m!4886056))

(declare-fun m!4886058 () Bool)

(assert (=> b!4292571 m!4886058))

(declare-fun m!4886060 () Bool)

(assert (=> b!4292571 m!4886060))

(declare-fun m!4886062 () Bool)

(assert (=> start!412160 m!4886062))

(declare-fun m!4886064 () Bool)

(assert (=> start!412160 m!4886064))

(declare-fun m!4886066 () Bool)

(assert (=> start!412160 m!4886066))

(declare-fun m!4886068 () Bool)

(assert (=> start!412160 m!4886068))

(declare-fun m!4886070 () Bool)

(assert (=> b!4292569 m!4886070))

(declare-fun m!4886072 () Bool)

(assert (=> b!4292563 m!4886072))

(check-sat (not mapNonEmpty!19916) (not b!4292530) (not b!4292552) (not setNonEmpty!26523) b_and!338763 (not b!4292540) (not b!4292567) b_and!338769 b_and!338767 b_and!338761 (not b!4292535) (not b!4292571) (not b_next!128249) (not b!4292534) (not b!4292525) (not b!4292533) (not b!4292568) (not b!4292545) (not b_next!128253) (not b_next!128247) (not mapNonEmpty!19917) (not b!4292565) (not b!4292569) b_and!338765 b_and!338759 (not b_next!128255) (not b_next!128251) (not b!4292539) (not b!4292570) (not b!4292532) (not mapNonEmpty!19915) (not b!4292563) (not start!412160) (not b_next!128257) (not b!4292561) (not b!4292559) (not b!4292536) (not b!4292543) (not b!4292558) (not b!4292554) (not b!4292541))
(check-sat (not b_next!128249) (not b_next!128253) (not b_next!128247) b_and!338765 (not b_next!128251) b_and!338763 (not b_next!128257) b_and!338769 b_and!338767 b_and!338761 b_and!338759 (not b_next!128255))
