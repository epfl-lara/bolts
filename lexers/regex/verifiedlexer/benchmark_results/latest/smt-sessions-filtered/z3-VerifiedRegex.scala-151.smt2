; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1790 () Bool)

(assert start!1790)

(declare-fun b!34418 () Bool)

(declare-fun b_free!369 () Bool)

(declare-fun b_next!369 () Bool)

(assert (=> b!34418 (= b_free!369 (not b_next!369))))

(declare-fun tp!23692 () Bool)

(declare-fun b_and!403 () Bool)

(assert (=> b!34418 (= tp!23692 b_and!403)))

(declare-fun b!34420 () Bool)

(declare-fun b_free!371 () Bool)

(declare-fun b_next!371 () Bool)

(assert (=> b!34420 (= b_free!371 (not b_next!371))))

(declare-fun tp!23702 () Bool)

(declare-fun b_and!405 () Bool)

(assert (=> b!34420 (= tp!23702 b_and!405)))

(declare-fun b!34413 () Bool)

(declare-fun b_free!373 () Bool)

(declare-fun b_next!373 () Bool)

(assert (=> b!34413 (= b_free!373 (not b_next!373))))

(declare-fun tp!23691 () Bool)

(declare-fun b_and!407 () Bool)

(assert (=> b!34413 (= tp!23691 b_and!407)))

(declare-fun b!34410 () Bool)

(declare-fun b_free!375 () Bool)

(declare-fun b_next!375 () Bool)

(assert (=> b!34410 (= b_free!375 (not b_next!375))))

(declare-fun tp!23697 () Bool)

(declare-fun b_and!409 () Bool)

(assert (=> b!34410 (= tp!23697 b_and!409)))

(declare-fun b!34409 () Bool)

(declare-fun e!15934 () Bool)

(declare-fun e!15941 () Bool)

(assert (=> b!34409 (= e!15934 e!15941)))

(declare-fun e!15937 () Bool)

(declare-fun e!15946 () Bool)

(assert (=> b!34410 (= e!15937 (and e!15946 tp!23697))))

(declare-fun mapNonEmpty!208 () Bool)

(declare-fun mapRes!209 () Bool)

(declare-fun tp!23700 () Bool)

(declare-fun tp!23689 () Bool)

(assert (=> mapNonEmpty!208 (= mapRes!209 (and tp!23700 tp!23689))))

(declare-fun mapKey!208 () (_ BitVec 32))

(declare-datatypes ((Regex!147 0))(
  ( (ElementMatch!147 (c!15420 (_ BitVec 16))) (Concat!257 (regOne!806 Regex!147) (regTwo!806 Regex!147)) (EmptyExpr!147) (Star!147 (reg!476 Regex!147)) (EmptyLang!147) (Union!147 (regOne!807 Regex!147) (regTwo!807 Regex!147)) )
))
(declare-datatypes ((List!295 0))(
  ( (Nil!293) (Cons!293 (h!5689 Regex!147) (t!14921 List!295)) )
))
(declare-datatypes ((Context!58 0))(
  ( (Context!59 (exprs!529 List!295)) )
))
(declare-datatypes ((tuple2!190 0))(
  ( (tuple2!191 (_1!123 Context!58) (_2!123 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!192 0))(
  ( (tuple2!193 (_1!124 tuple2!190) (_2!124 (InoxSet Context!58))) )
))
(declare-datatypes ((List!296 0))(
  ( (Nil!294) (Cons!294 (h!5690 tuple2!192) (t!14922 List!296)) )
))
(declare-fun mapValue!208 () List!296)

(declare-datatypes ((Hashable!48 0))(
  ( (HashableExt!47 (__x!562 Int)) )
))
(declare-datatypes ((array!187 0))(
  ( (array!188 (arr!113 (Array (_ BitVec 32) List!296)) (size!356 (_ BitVec 32))) )
))
(declare-datatypes ((array!189 0))(
  ( (array!190 (arr!114 (Array (_ BitVec 32) (_ BitVec 64))) (size!357 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!104 0))(
  ( (LongMapFixedSize!105 (defaultEntry!390 Int) (mask!727 (_ BitVec 32)) (extraKeys!298 (_ BitVec 32)) (zeroValue!308 List!296) (minValue!308 List!296) (_size!236 (_ BitVec 32)) (_keys!343 array!189) (_values!330 array!187) (_vacant!112 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!197 0))(
  ( (Cell!198 (v!12063 LongMapFixedSize!104)) )
))
(declare-datatypes ((MutLongMap!52 0))(
  ( (LongMap!52 (underlying!299 Cell!197)) (MutLongMapExt!51 (__x!563 Int)) )
))
(declare-datatypes ((Cell!199 0))(
  ( (Cell!200 (v!12064 MutLongMap!52)) )
))
(declare-datatypes ((MutableMap!48 0))(
  ( (MutableMapExt!47 (__x!564 Int)) (HashMap!48 (underlying!300 Cell!199) (hashF!1912 Hashable!48) (_size!237 (_ BitVec 32)) (defaultValue!196 Int)) )
))
(declare-datatypes ((CacheUp!44 0))(
  ( (CacheUp!45 (cache!527 MutableMap!48)) )
))
(declare-fun cacheUp!368 () CacheUp!44)

(declare-fun mapRest!209 () (Array (_ BitVec 32) List!296))

(assert (=> mapNonEmpty!208 (= (arr!113 (_values!330 (v!12063 (underlying!299 (v!12064 (underlying!300 (cache!527 cacheUp!368))))))) (store mapRest!209 mapKey!208 mapValue!208))))

(declare-fun b!34411 () Bool)

(declare-fun e!15930 () Bool)

(declare-fun lt!2602 () MutLongMap!52)

(get-info :version)

(assert (=> b!34411 (= e!15946 (and e!15930 ((_ is LongMap!52) lt!2602)))))

(assert (=> b!34411 (= lt!2602 (v!12064 (underlying!300 (cache!527 cacheUp!368))))))

(declare-fun b!34412 () Bool)

(declare-fun e!15933 () Bool)

(assert (=> b!34412 (= e!15933 e!15937)))

(declare-fun mapIsEmpty!208 () Bool)

(declare-fun mapRes!208 () Bool)

(assert (=> mapIsEmpty!208 mapRes!208))

(declare-fun tp!23695 () Bool)

(declare-fun e!15943 () Bool)

(declare-fun tp!23690 () Bool)

(declare-fun e!15947 () Bool)

(declare-fun array_inv!62 (array!189) Bool)

(declare-fun array_inv!63 (array!187) Bool)

(assert (=> b!34413 (= e!15943 (and tp!23691 tp!23695 tp!23690 (array_inv!62 (_keys!343 (v!12063 (underlying!299 (v!12064 (underlying!300 (cache!527 cacheUp!368))))))) (array_inv!63 (_values!330 (v!12063 (underlying!299 (v!12064 (underlying!300 (cache!527 cacheUp!368))))))) e!15947))))

(declare-fun b!34414 () Bool)

(declare-fun e!15931 () Bool)

(assert (=> b!34414 (= e!15930 e!15931)))

(declare-fun b!34415 () Bool)

(declare-fun res!27635 () Bool)

(declare-fun e!15944 () Bool)

(assert (=> b!34415 (=> (not res!27635) (not e!15944))))

(declare-datatypes ((tuple3!56 0))(
  ( (tuple3!57 (_1!125 Regex!147) (_2!125 Context!58) (_3!28 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!194 0))(
  ( (tuple2!195 (_1!126 tuple3!56) (_2!126 (InoxSet Context!58))) )
))
(declare-datatypes ((List!297 0))(
  ( (Nil!295) (Cons!295 (h!5691 tuple2!194) (t!14923 List!297)) )
))
(declare-datatypes ((array!191 0))(
  ( (array!192 (arr!115 (Array (_ BitVec 32) List!297)) (size!358 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!106 0))(
  ( (LongMapFixedSize!107 (defaultEntry!391 Int) (mask!728 (_ BitVec 32)) (extraKeys!299 (_ BitVec 32)) (zeroValue!309 List!297) (minValue!309 List!297) (_size!238 (_ BitVec 32)) (_keys!344 array!189) (_values!331 array!191) (_vacant!113 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!201 0))(
  ( (Cell!202 (v!12065 LongMapFixedSize!106)) )
))
(declare-datatypes ((MutLongMap!53 0))(
  ( (LongMap!53 (underlying!301 Cell!201)) (MutLongMapExt!52 (__x!565 Int)) )
))
(declare-datatypes ((Cell!203 0))(
  ( (Cell!204 (v!12066 MutLongMap!53)) )
))
(declare-datatypes ((Hashable!49 0))(
  ( (HashableExt!48 (__x!566 Int)) )
))
(declare-datatypes ((MutableMap!49 0))(
  ( (MutableMapExt!48 (__x!567 Int)) (HashMap!49 (underlying!302 Cell!203) (hashF!1913 Hashable!49) (_size!239 (_ BitVec 32)) (defaultValue!197 Int)) )
))
(declare-datatypes ((CacheDown!48 0))(
  ( (CacheDown!49 (cache!528 MutableMap!49)) )
))
(declare-fun cacheDown!381 () CacheDown!48)

(declare-fun valid!69 (CacheDown!48) Bool)

(assert (=> b!34415 (= res!27635 (valid!69 cacheDown!381))))

(declare-fun res!27634 () Bool)

(assert (=> start!1790 (=> (not res!27634) (not e!15944))))

(declare-fun valid!70 (CacheUp!44) Bool)

(assert (=> start!1790 (= res!27634 (valid!70 cacheUp!368))))

(assert (=> start!1790 e!15944))

(declare-fun inv!630 (CacheUp!44) Bool)

(assert (=> start!1790 (and (inv!630 cacheUp!368) e!15933)))

(declare-fun inv!631 (CacheDown!48) Bool)

(assert (=> start!1790 (and (inv!631 cacheDown!381) e!15934)))

(declare-datatypes ((String!755 0))(
  ( (String!756 (value!6149 String)) )
))
(declare-fun path!6 () String!755)

(declare-fun inv!629 (String!755) Bool)

(assert (=> start!1790 (inv!629 path!6)))

(declare-fun b!34408 () Bool)

(declare-fun e!15940 () Bool)

(declare-fun e!15936 () Bool)

(assert (=> b!34408 (= e!15940 e!15936)))

(declare-fun b!34416 () Bool)

(declare-fun e!15935 () Bool)

(declare-fun tp!23696 () Bool)

(assert (=> b!34416 (= e!15935 (and tp!23696 mapRes!208))))

(declare-fun condMapEmpty!209 () Bool)

(declare-fun mapDefault!209 () List!297)

(assert (=> b!34416 (= condMapEmpty!209 (= (arr!115 (_values!331 (v!12065 (underlying!301 (v!12066 (underlying!302 (cache!528 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!297)) mapDefault!209)))))

(declare-fun b!34417 () Bool)

(assert (=> b!34417 (= e!15931 e!15943)))

(declare-fun tp!23698 () Bool)

(declare-fun tp!23693 () Bool)

(declare-fun array_inv!64 (array!191) Bool)

(assert (=> b!34418 (= e!15936 (and tp!23692 tp!23698 tp!23693 (array_inv!62 (_keys!344 (v!12065 (underlying!301 (v!12066 (underlying!302 (cache!528 cacheDown!381))))))) (array_inv!64 (_values!331 (v!12065 (underlying!301 (v!12066 (underlying!302 (cache!528 cacheDown!381))))))) e!15935))))

(declare-fun b!34419 () Bool)

(assert (=> b!34419 (= e!15944 false)))

(declare-datatypes ((List!298 0))(
  ( (Nil!296) (Cons!296 (h!5692 (_ BitVec 16)) (t!14924 List!298)) )
))
(declare-datatypes ((IArray!89 0))(
  ( (IArray!90 (innerList!102 List!298)) )
))
(declare-datatypes ((Conc!44 0))(
  ( (Node!44 (left!393 Conc!44) (right!723 Conc!44) (csize!318 Int) (cheight!255 Int)) (Leaf!196 (xs!2623 IArray!89) (csize!319 Int)) (Empty!44) )
))
(declare-datatypes ((BalanceConc!88 0))(
  ( (BalanceConc!89 (c!15421 Conc!44)) )
))
(declare-fun lt!2604 () BalanceConc!88)

(declare-fun openFile!0 (String!755) BalanceConc!88)

(assert (=> b!34419 (= lt!2604 (openFile!0 path!6))))

(declare-fun e!15942 () Bool)

(assert (=> b!34420 (= e!15941 (and e!15942 tp!23702))))

(declare-fun mapNonEmpty!209 () Bool)

(declare-fun tp!23701 () Bool)

(declare-fun tp!23694 () Bool)

(assert (=> mapNonEmpty!209 (= mapRes!208 (and tp!23701 tp!23694))))

(declare-fun mapKey!209 () (_ BitVec 32))

(declare-fun mapRest!208 () (Array (_ BitVec 32) List!297))

(declare-fun mapValue!209 () List!297)

(assert (=> mapNonEmpty!209 (= (arr!115 (_values!331 (v!12065 (underlying!301 (v!12066 (underlying!302 (cache!528 cacheDown!381))))))) (store mapRest!208 mapKey!209 mapValue!209))))

(declare-fun b!34421 () Bool)

(declare-fun e!15932 () Bool)

(assert (=> b!34421 (= e!15932 e!15940)))

(declare-fun mapIsEmpty!209 () Bool)

(assert (=> mapIsEmpty!209 mapRes!209))

(declare-fun b!34422 () Bool)

(declare-fun tp!23699 () Bool)

(assert (=> b!34422 (= e!15947 (and tp!23699 mapRes!209))))

(declare-fun condMapEmpty!208 () Bool)

(declare-fun mapDefault!208 () List!296)

(assert (=> b!34422 (= condMapEmpty!208 (= (arr!113 (_values!330 (v!12063 (underlying!299 (v!12064 (underlying!300 (cache!527 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!296)) mapDefault!208)))))

(declare-fun b!34423 () Bool)

(declare-fun lt!2603 () MutLongMap!53)

(assert (=> b!34423 (= e!15942 (and e!15932 ((_ is LongMap!53) lt!2603)))))

(assert (=> b!34423 (= lt!2603 (v!12066 (underlying!302 (cache!528 cacheDown!381))))))

(assert (= (and start!1790 res!27634) b!34415))

(assert (= (and b!34415 res!27635) b!34419))

(assert (= (and b!34422 condMapEmpty!208) mapIsEmpty!209))

(assert (= (and b!34422 (not condMapEmpty!208)) mapNonEmpty!208))

(assert (= b!34413 b!34422))

(assert (= b!34417 b!34413))

(assert (= b!34414 b!34417))

(assert (= (and b!34411 ((_ is LongMap!52) (v!12064 (underlying!300 (cache!527 cacheUp!368))))) b!34414))

(assert (= b!34410 b!34411))

(assert (= (and b!34412 ((_ is HashMap!48) (cache!527 cacheUp!368))) b!34410))

(assert (= start!1790 b!34412))

(assert (= (and b!34416 condMapEmpty!209) mapIsEmpty!208))

(assert (= (and b!34416 (not condMapEmpty!209)) mapNonEmpty!209))

(assert (= b!34418 b!34416))

(assert (= b!34408 b!34418))

(assert (= b!34421 b!34408))

(assert (= (and b!34423 ((_ is LongMap!53) (v!12066 (underlying!302 (cache!528 cacheDown!381))))) b!34421))

(assert (= b!34420 b!34423))

(assert (= (and b!34409 ((_ is HashMap!49) (cache!528 cacheDown!381))) b!34420))

(assert (= start!1790 b!34409))

(declare-fun m!10465 () Bool)

(assert (=> start!1790 m!10465))

(declare-fun m!10467 () Bool)

(assert (=> start!1790 m!10467))

(declare-fun m!10469 () Bool)

(assert (=> start!1790 m!10469))

(declare-fun m!10471 () Bool)

(assert (=> start!1790 m!10471))

(declare-fun m!10473 () Bool)

(assert (=> mapNonEmpty!208 m!10473))

(declare-fun m!10475 () Bool)

(assert (=> b!34415 m!10475))

(declare-fun m!10477 () Bool)

(assert (=> b!34419 m!10477))

(declare-fun m!10479 () Bool)

(assert (=> mapNonEmpty!209 m!10479))

(declare-fun m!10481 () Bool)

(assert (=> b!34413 m!10481))

(declare-fun m!10483 () Bool)

(assert (=> b!34413 m!10483))

(declare-fun m!10485 () Bool)

(assert (=> b!34418 m!10485))

(declare-fun m!10487 () Bool)

(assert (=> b!34418 m!10487))

(check-sat (not b_next!373) (not b!34422) (not b!34413) (not start!1790) b_and!409 (not b!34419) (not b_next!371) (not mapNonEmpty!209) (not b!34418) b_and!403 (not mapNonEmpty!208) b_and!407 (not b!34416) (not b!34415) (not b_next!369) (not b_next!375) b_and!405)
(check-sat (not b_next!373) b_and!407 (not b_next!369) b_and!409 (not b_next!371) b_and!403 (not b_next!375) b_and!405)
