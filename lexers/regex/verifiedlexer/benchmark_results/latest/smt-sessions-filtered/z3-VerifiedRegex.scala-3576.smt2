; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206468 () Bool)

(assert start!206468)

(declare-fun b!2112383 () Bool)

(declare-fun b_free!61097 () Bool)

(declare-fun b_next!61801 () Bool)

(assert (=> b!2112383 (= b_free!61097 (not b_next!61801))))

(declare-fun tp!643559 () Bool)

(declare-fun b_and!170677 () Bool)

(assert (=> b!2112383 (= tp!643559 b_and!170677)))

(declare-fun b!2112395 () Bool)

(declare-fun b_free!61099 () Bool)

(declare-fun b_next!61803 () Bool)

(assert (=> b!2112395 (= b_free!61099 (not b_next!61803))))

(declare-fun tp!643558 () Bool)

(declare-fun b_and!170679 () Bool)

(assert (=> b!2112395 (= tp!643558 b_and!170679)))

(declare-fun b!2112385 () Bool)

(declare-fun b_free!61101 () Bool)

(declare-fun b_next!61805 () Bool)

(assert (=> b!2112385 (= b_free!61101 (not b_next!61805))))

(declare-fun tp!643569 () Bool)

(declare-fun b_and!170681 () Bool)

(assert (=> b!2112385 (= tp!643569 b_and!170681)))

(declare-fun b!2112399 () Bool)

(declare-fun b_free!61103 () Bool)

(declare-fun b_next!61807 () Bool)

(assert (=> b!2112399 (= b_free!61103 (not b_next!61807))))

(declare-fun tp!643561 () Bool)

(declare-fun b_and!170683 () Bool)

(assert (=> b!2112399 (= tp!643561 b_and!170683)))

(declare-fun b!2112381 () Bool)

(declare-fun res!917216 () Bool)

(declare-fun e!1343865 () Bool)

(assert (=> b!2112381 (=> (not res!917216) (not e!1343865))))

(declare-datatypes ((C!11384 0))(
  ( (C!11385 (val!6678 Int)) )
))
(declare-datatypes ((List!23558 0))(
  ( (Nil!23474) (Cons!23474 (h!28875 C!11384) (t!196067 List!23558)) )
))
(declare-datatypes ((IArray!15529 0))(
  ( (IArray!15530 (innerList!7822 List!23558)) )
))
(declare-datatypes ((Conc!7762 0))(
  ( (Node!7762 (left!18226 Conc!7762) (right!18556 Conc!7762) (csize!15754 Int) (cheight!7973 Int)) (Leaf!11339 (xs!10704 IArray!15529) (csize!15755 Int)) (Empty!7762) )
))
(declare-datatypes ((BalanceConc!15286 0))(
  ( (BalanceConc!15287 (c!339165 Conc!7762)) )
))
(declare-fun input!6603 () BalanceConc!15286)

(declare-fun totalInput!1248 () BalanceConc!15286)

(declare-fun isSuffix!591 (List!23558 List!23558) Bool)

(declare-fun list!9488 (BalanceConc!15286) List!23558)

(assert (=> b!2112381 (= res!917216 (isSuffix!591 (list!9488 input!6603) (list!9488 totalInput!1248)))))

(declare-fun b!2112382 () Bool)

(declare-fun e!1343861 () Bool)

(declare-fun e!1343862 () Bool)

(assert (=> b!2112382 (= e!1343861 e!1343862)))

(declare-fun e!1343858 () Bool)

(declare-fun e!1343848 () Bool)

(assert (=> b!2112383 (= e!1343858 (and e!1343848 tp!643559))))

(declare-fun b!2112384 () Bool)

(declare-fun e!1343846 () Bool)

(assert (=> b!2112384 (= e!1343862 e!1343846)))

(declare-fun e!1343850 () Bool)

(declare-fun tp!643563 () Bool)

(declare-fun tp!643575 () Bool)

(declare-datatypes ((Regex!5619 0))(
  ( (ElementMatch!5619 (c!339166 C!11384)) (Concat!9921 (regOne!11750 Regex!5619) (regTwo!11750 Regex!5619)) (EmptyExpr!5619) (Star!5619 (reg!5948 Regex!5619)) (EmptyLang!5619) (Union!5619 (regOne!11751 Regex!5619) (regTwo!11751 Regex!5619)) )
))
(declare-datatypes ((List!23559 0))(
  ( (Nil!23475) (Cons!23475 (h!28876 Regex!5619) (t!196068 List!23559)) )
))
(declare-datatypes ((Context!2378 0))(
  ( (Context!2379 (exprs!1689 List!23559)) )
))
(declare-datatypes ((tuple3!2718 0))(
  ( (tuple3!2719 (_1!13269 Regex!5619) (_2!13269 Context!2378) (_3!1823 C!11384)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22892 0))(
  ( (tuple2!22893 (_1!13270 tuple3!2718) (_2!13270 (InoxSet Context!2378))) )
))
(declare-datatypes ((List!23560 0))(
  ( (Nil!23476) (Cons!23476 (h!28877 tuple2!22892) (t!196069 List!23560)) )
))
(declare-datatypes ((array!8066 0))(
  ( (array!8067 (arr!3576 (Array (_ BitVec 32) (_ BitVec 64))) (size!18325 (_ BitVec 32))) )
))
(declare-datatypes ((array!8068 0))(
  ( (array!8069 (arr!3577 (Array (_ BitVec 32) List!23560)) (size!18326 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4672 0))(
  ( (LongMapFixedSize!4673 (defaultEntry!2701 Int) (mask!6461 (_ BitVec 32)) (extraKeys!2584 (_ BitVec 32)) (zeroValue!2594 List!23560) (minValue!2594 List!23560) (_size!4723 (_ BitVec 32)) (_keys!2633 array!8066) (_values!2616 array!8068) (_vacant!2397 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9169 0))(
  ( (Cell!9170 (v!27999 LongMapFixedSize!4672)) )
))
(declare-datatypes ((MutLongMap!2336 0))(
  ( (LongMap!2336 (underlying!4867 Cell!9169)) (MutLongMapExt!2335 (__x!15184 Int)) )
))
(declare-datatypes ((Cell!9171 0))(
  ( (Cell!9172 (v!28000 MutLongMap!2336)) )
))
(declare-datatypes ((Hashable!2250 0))(
  ( (HashableExt!2249 (__x!15185 Int)) )
))
(declare-datatypes ((MutableMap!2250 0))(
  ( (MutableMapExt!2249 (__x!15186 Int)) (HashMap!2250 (underlying!4868 Cell!9171) (hashF!4173 Hashable!2250) (_size!4724 (_ BitVec 32)) (defaultValue!2412 Int)) )
))
(declare-datatypes ((CacheDown!1548 0))(
  ( (CacheDown!1549 (cache!2631 MutableMap!2250)) )
))
(declare-fun cacheDown!1197 () CacheDown!1548)

(declare-fun array_inv!2575 (array!8066) Bool)

(declare-fun array_inv!2576 (array!8068) Bool)

(assert (=> b!2112385 (= e!1343846 (and tp!643569 tp!643575 tp!643563 (array_inv!2575 (_keys!2633 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))) (array_inv!2576 (_values!2616 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))) e!1343850))))

(declare-fun b!2112386 () Bool)

(declare-fun e!1343847 () Bool)

(declare-fun tp!643566 () Bool)

(declare-fun inv!31054 (Conc!7762) Bool)

(assert (=> b!2112386 (= e!1343847 (and (inv!31054 (c!339165 input!6603)) tp!643566))))

(declare-fun b!2112387 () Bool)

(declare-fun e!1343859 () Bool)

(declare-fun e!1343849 () Bool)

(assert (=> b!2112387 (= e!1343859 e!1343849)))

(declare-fun b!2112388 () Bool)

(declare-fun e!1343854 () Bool)

(declare-fun tp!643572 () Bool)

(declare-fun tp!643568 () Bool)

(assert (=> b!2112388 (= e!1343854 (and tp!643572 tp!643568))))

(declare-fun b!2112389 () Bool)

(declare-fun res!917213 () Bool)

(assert (=> b!2112389 (=> (not res!917213) (not e!1343865))))

(declare-datatypes ((tuple2!22894 0))(
  ( (tuple2!22895 (_1!13271 Context!2378) (_2!13271 C!11384)) )
))
(declare-datatypes ((tuple2!22896 0))(
  ( (tuple2!22897 (_1!13272 tuple2!22894) (_2!13272 (InoxSet Context!2378))) )
))
(declare-datatypes ((List!23561 0))(
  ( (Nil!23477) (Cons!23477 (h!28878 tuple2!22896) (t!196070 List!23561)) )
))
(declare-datatypes ((array!8070 0))(
  ( (array!8071 (arr!3578 (Array (_ BitVec 32) List!23561)) (size!18327 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4674 0))(
  ( (LongMapFixedSize!4675 (defaultEntry!2702 Int) (mask!6462 (_ BitVec 32)) (extraKeys!2585 (_ BitVec 32)) (zeroValue!2595 List!23561) (minValue!2595 List!23561) (_size!4725 (_ BitVec 32)) (_keys!2634 array!8066) (_values!2617 array!8070) (_vacant!2398 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9173 0))(
  ( (Cell!9174 (v!28001 LongMapFixedSize!4674)) )
))
(declare-datatypes ((Hashable!2251 0))(
  ( (HashableExt!2250 (__x!15187 Int)) )
))
(declare-datatypes ((MutLongMap!2337 0))(
  ( (LongMap!2337 (underlying!4869 Cell!9173)) (MutLongMapExt!2336 (__x!15188 Int)) )
))
(declare-datatypes ((Cell!9175 0))(
  ( (Cell!9176 (v!28002 MutLongMap!2337)) )
))
(declare-datatypes ((MutableMap!2251 0))(
  ( (MutableMapExt!2250 (__x!15189 Int)) (HashMap!2251 (underlying!4870 Cell!9175) (hashF!4174 Hashable!2251) (_size!4726 (_ BitVec 32)) (defaultValue!2413 Int)) )
))
(declare-datatypes ((CacheUp!1546 0))(
  ( (CacheUp!1547 (cache!2632 MutableMap!2251)) )
))
(declare-fun cacheUp!1078 () CacheUp!1546)

(declare-fun valid!1845 (CacheUp!1546) Bool)

(assert (=> b!2112389 (= res!917213 (valid!1845 cacheUp!1078))))

(declare-fun b!2112390 () Bool)

(declare-fun e!1343863 () Bool)

(declare-fun tp!643562 () Bool)

(assert (=> b!2112390 (= e!1343863 (and (inv!31054 (c!339165 totalInput!1248)) tp!643562))))

(declare-fun b!2112391 () Bool)

(declare-fun e!1343860 () Bool)

(assert (=> b!2112391 (= e!1343860 e!1343859)))

(declare-fun b!2112392 () Bool)

(declare-fun e!1343864 () Bool)

(declare-fun e!1343855 () Bool)

(assert (=> b!2112392 (= e!1343864 e!1343855)))

(declare-fun b!2112393 () Bool)

(declare-fun e!1343857 () Bool)

(assert (=> b!2112393 (= e!1343857 e!1343858)))

(declare-fun res!917215 () Bool)

(assert (=> start!206468 (=> (not res!917215) (not e!1343865))))

(declare-fun r!15329 () Regex!5619)

(declare-fun validRegex!2216 (Regex!5619) Bool)

(assert (=> start!206468 (= res!917215 (validRegex!2216 r!15329))))

(assert (=> start!206468 e!1343865))

(declare-fun inv!31055 (BalanceConc!15286) Bool)

(assert (=> start!206468 (and (inv!31055 input!6603) e!1343847)))

(declare-fun inv!31056 (CacheDown!1548) Bool)

(assert (=> start!206468 (and (inv!31056 cacheDown!1197) e!1343857)))

(assert (=> start!206468 e!1343854))

(assert (=> start!206468 (and (inv!31055 totalInput!1248) e!1343863)))

(declare-fun inv!31057 (CacheUp!1546) Bool)

(assert (=> start!206468 (and (inv!31057 cacheUp!1078) e!1343864)))

(declare-fun b!2112394 () Bool)

(declare-fun e!1343852 () Bool)

(declare-fun lt!792679 () MutLongMap!2337)

(get-info :version)

(assert (=> b!2112394 (= e!1343852 (and e!1343860 ((_ is LongMap!2337) lt!792679)))))

(assert (=> b!2112394 (= lt!792679 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))

(declare-fun mapNonEmpty!11234 () Bool)

(declare-fun mapRes!11235 () Bool)

(declare-fun tp!643571 () Bool)

(declare-fun tp!643564 () Bool)

(assert (=> mapNonEmpty!11234 (= mapRes!11235 (and tp!643571 tp!643564))))

(declare-fun mapKey!11234 () (_ BitVec 32))

(declare-fun mapValue!11234 () List!23560)

(declare-fun mapRest!11235 () (Array (_ BitVec 32) List!23560))

(assert (=> mapNonEmpty!11234 (= (arr!3577 (_values!2616 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))) (store mapRest!11235 mapKey!11234 mapValue!11234))))

(assert (=> b!2112395 (= e!1343855 (and e!1343852 tp!643558))))

(declare-fun b!2112396 () Bool)

(declare-fun tp_is_empty!9427 () Bool)

(assert (=> b!2112396 (= e!1343854 tp_is_empty!9427)))

(declare-fun b!2112397 () Bool)

(declare-fun tp!643577 () Bool)

(declare-fun tp!643574 () Bool)

(assert (=> b!2112397 (= e!1343854 (and tp!643577 tp!643574))))

(declare-fun b!2112398 () Bool)

(declare-fun e!1343853 () Bool)

(declare-fun tp!643560 () Bool)

(declare-fun mapRes!11234 () Bool)

(assert (=> b!2112398 (= e!1343853 (and tp!643560 mapRes!11234))))

(declare-fun condMapEmpty!11234 () Bool)

(declare-fun mapDefault!11235 () List!23561)

(assert (=> b!2112398 (= condMapEmpty!11234 (= (arr!3578 (_values!2617 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23561)) mapDefault!11235)))))

(declare-fun tp!643567 () Bool)

(declare-fun tp!643573 () Bool)

(declare-fun array_inv!2577 (array!8070) Bool)

(assert (=> b!2112399 (= e!1343849 (and tp!643561 tp!643567 tp!643573 (array_inv!2575 (_keys!2634 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))) (array_inv!2577 (_values!2617 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))) e!1343853))))

(declare-fun mapNonEmpty!11235 () Bool)

(declare-fun tp!643576 () Bool)

(declare-fun tp!643557 () Bool)

(assert (=> mapNonEmpty!11235 (= mapRes!11234 (and tp!643576 tp!643557))))

(declare-fun mapValue!11235 () List!23561)

(declare-fun mapRest!11234 () (Array (_ BitVec 32) List!23561))

(declare-fun mapKey!11235 () (_ BitVec 32))

(assert (=> mapNonEmpty!11235 (= (arr!3578 (_values!2617 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))) (store mapRest!11234 mapKey!11235 mapValue!11235))))

(declare-fun mapIsEmpty!11234 () Bool)

(assert (=> mapIsEmpty!11234 mapRes!11235))

(declare-fun b!2112400 () Bool)

(declare-fun tp!643570 () Bool)

(assert (=> b!2112400 (= e!1343850 (and tp!643570 mapRes!11235))))

(declare-fun condMapEmpty!11235 () Bool)

(declare-fun mapDefault!11234 () List!23560)

(assert (=> b!2112400 (= condMapEmpty!11235 (= (arr!3577 (_values!2616 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23560)) mapDefault!11234)))))

(declare-fun b!2112401 () Bool)

(declare-fun lt!792680 () MutLongMap!2336)

(assert (=> b!2112401 (= e!1343848 (and e!1343861 ((_ is LongMap!2336) lt!792680)))))

(assert (=> b!2112401 (= lt!792680 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))

(declare-fun mapIsEmpty!11235 () Bool)

(assert (=> mapIsEmpty!11235 mapRes!11234))

(declare-fun b!2112402 () Bool)

(declare-fun res!917214 () Bool)

(assert (=> b!2112402 (=> (not res!917214) (not e!1343865))))

(declare-fun valid!1846 (CacheDown!1548) Bool)

(assert (=> b!2112402 (= res!917214 (valid!1846 cacheDown!1197))))

(declare-fun b!2112403 () Bool)

(declare-datatypes ((List!23562 0))(
  ( (Nil!23478) (Cons!23478 (h!28879 Context!2378) (t!196071 List!23562)) )
))
(declare-fun unfocusZipper!59 (List!23562) Regex!5619)

(declare-fun toList!1051 ((InoxSet Context!2378)) List!23562)

(declare-fun focus!265 (Regex!5619) (InoxSet Context!2378))

(assert (=> b!2112403 (= e!1343865 (not (= (unfocusZipper!59 (toList!1051 (focus!265 r!15329))) r!15329)))))

(declare-fun b!2112404 () Bool)

(declare-fun tp!643565 () Bool)

(assert (=> b!2112404 (= e!1343854 tp!643565)))

(assert (= (and start!206468 res!917215) b!2112389))

(assert (= (and b!2112389 res!917213) b!2112402))

(assert (= (and b!2112402 res!917214) b!2112381))

(assert (= (and b!2112381 res!917216) b!2112403))

(assert (= start!206468 b!2112386))

(assert (= (and b!2112400 condMapEmpty!11235) mapIsEmpty!11234))

(assert (= (and b!2112400 (not condMapEmpty!11235)) mapNonEmpty!11234))

(assert (= b!2112385 b!2112400))

(assert (= b!2112384 b!2112385))

(assert (= b!2112382 b!2112384))

(assert (= (and b!2112401 ((_ is LongMap!2336) (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))) b!2112382))

(assert (= b!2112383 b!2112401))

(assert (= (and b!2112393 ((_ is HashMap!2250) (cache!2631 cacheDown!1197))) b!2112383))

(assert (= start!206468 b!2112393))

(assert (= (and start!206468 ((_ is ElementMatch!5619) r!15329)) b!2112396))

(assert (= (and start!206468 ((_ is Concat!9921) r!15329)) b!2112388))

(assert (= (and start!206468 ((_ is Star!5619) r!15329)) b!2112404))

(assert (= (and start!206468 ((_ is Union!5619) r!15329)) b!2112397))

(assert (= start!206468 b!2112390))

(assert (= (and b!2112398 condMapEmpty!11234) mapIsEmpty!11235))

(assert (= (and b!2112398 (not condMapEmpty!11234)) mapNonEmpty!11235))

(assert (= b!2112399 b!2112398))

(assert (= b!2112387 b!2112399))

(assert (= b!2112391 b!2112387))

(assert (= (and b!2112394 ((_ is LongMap!2337) (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))) b!2112391))

(assert (= b!2112395 b!2112394))

(assert (= (and b!2112392 ((_ is HashMap!2251) (cache!2632 cacheUp!1078))) b!2112395))

(assert (= start!206468 b!2112392))

(declare-fun m!2568939 () Bool)

(assert (=> b!2112402 m!2568939))

(declare-fun m!2568941 () Bool)

(assert (=> b!2112389 m!2568941))

(declare-fun m!2568943 () Bool)

(assert (=> b!2112381 m!2568943))

(declare-fun m!2568945 () Bool)

(assert (=> b!2112381 m!2568945))

(assert (=> b!2112381 m!2568943))

(assert (=> b!2112381 m!2568945))

(declare-fun m!2568947 () Bool)

(assert (=> b!2112381 m!2568947))

(declare-fun m!2568949 () Bool)

(assert (=> b!2112385 m!2568949))

(declare-fun m!2568951 () Bool)

(assert (=> b!2112385 m!2568951))

(declare-fun m!2568953 () Bool)

(assert (=> mapNonEmpty!11235 m!2568953))

(declare-fun m!2568955 () Bool)

(assert (=> b!2112403 m!2568955))

(assert (=> b!2112403 m!2568955))

(declare-fun m!2568957 () Bool)

(assert (=> b!2112403 m!2568957))

(assert (=> b!2112403 m!2568957))

(declare-fun m!2568959 () Bool)

(assert (=> b!2112403 m!2568959))

(declare-fun m!2568961 () Bool)

(assert (=> mapNonEmpty!11234 m!2568961))

(declare-fun m!2568963 () Bool)

(assert (=> b!2112386 m!2568963))

(declare-fun m!2568965 () Bool)

(assert (=> b!2112390 m!2568965))

(declare-fun m!2568967 () Bool)

(assert (=> start!206468 m!2568967))

(declare-fun m!2568969 () Bool)

(assert (=> start!206468 m!2568969))

(declare-fun m!2568971 () Bool)

(assert (=> start!206468 m!2568971))

(declare-fun m!2568973 () Bool)

(assert (=> start!206468 m!2568973))

(declare-fun m!2568975 () Bool)

(assert (=> start!206468 m!2568975))

(declare-fun m!2568977 () Bool)

(assert (=> b!2112399 m!2568977))

(declare-fun m!2568979 () Bool)

(assert (=> b!2112399 m!2568979))

(check-sat (not b_next!61801) (not b!2112404) (not b_next!61805) tp_is_empty!9427 (not b!2112402) (not b!2112399) b_and!170683 (not mapNonEmpty!11235) (not b_next!61803) (not b!2112386) (not mapNonEmpty!11234) b_and!170681 (not b!2112381) (not b!2112403) b_and!170677 (not b!2112385) (not b!2112388) (not b!2112398) (not b!2112397) (not b!2112400) (not b!2112390) (not b!2112389) (not start!206468) b_and!170679 (not b_next!61807))
(check-sat (not b_next!61801) (not b_next!61805) b_and!170677 b_and!170683 (not b_next!61803) b_and!170681 b_and!170679 (not b_next!61807))
(get-model)

(declare-fun d!642367 () Bool)

(declare-fun validCacheMapUp!235 (MutableMap!2251) Bool)

(assert (=> d!642367 (= (valid!1845 cacheUp!1078) (validCacheMapUp!235 (cache!2632 cacheUp!1078)))))

(declare-fun bs!441090 () Bool)

(assert (= bs!441090 d!642367))

(declare-fun m!2568981 () Bool)

(assert (=> bs!441090 m!2568981))

(assert (=> b!2112389 d!642367))

(declare-fun d!642369 () Bool)

(assert (=> d!642369 (= (array_inv!2575 (_keys!2634 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))) (bvsge (size!18325 (_keys!2634 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))) #b00000000000000000000000000000000))))

(assert (=> b!2112399 d!642369))

(declare-fun d!642371 () Bool)

(assert (=> d!642371 (= (array_inv!2577 (_values!2617 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))) (bvsge (size!18327 (_values!2617 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078))))))) #b00000000000000000000000000000000))))

(assert (=> b!2112399 d!642371))

(declare-fun d!642373 () Bool)

(declare-fun validCacheMapDown!233 (MutableMap!2250) Bool)

(assert (=> d!642373 (= (valid!1846 cacheDown!1197) (validCacheMapDown!233 (cache!2631 cacheDown!1197)))))

(declare-fun bs!441091 () Bool)

(assert (= bs!441091 d!642373))

(declare-fun m!2568983 () Bool)

(assert (=> bs!441091 m!2568983))

(assert (=> b!2112402 d!642373))

(declare-fun d!642375 () Bool)

(declare-fun c!339169 () Bool)

(assert (=> d!642375 (= c!339169 ((_ is Node!7762) (c!339165 totalInput!1248)))))

(declare-fun e!1343870 () Bool)

(assert (=> d!642375 (= (inv!31054 (c!339165 totalInput!1248)) e!1343870)))

(declare-fun b!2112411 () Bool)

(declare-fun inv!31058 (Conc!7762) Bool)

(assert (=> b!2112411 (= e!1343870 (inv!31058 (c!339165 totalInput!1248)))))

(declare-fun b!2112412 () Bool)

(declare-fun e!1343871 () Bool)

(assert (=> b!2112412 (= e!1343870 e!1343871)))

(declare-fun res!917219 () Bool)

(assert (=> b!2112412 (= res!917219 (not ((_ is Leaf!11339) (c!339165 totalInput!1248))))))

(assert (=> b!2112412 (=> res!917219 e!1343871)))

(declare-fun b!2112413 () Bool)

(declare-fun inv!31059 (Conc!7762) Bool)

(assert (=> b!2112413 (= e!1343871 (inv!31059 (c!339165 totalInput!1248)))))

(assert (= (and d!642375 c!339169) b!2112411))

(assert (= (and d!642375 (not c!339169)) b!2112412))

(assert (= (and b!2112412 (not res!917219)) b!2112413))

(declare-fun m!2568985 () Bool)

(assert (=> b!2112411 m!2568985))

(declare-fun m!2568987 () Bool)

(assert (=> b!2112413 m!2568987))

(assert (=> b!2112390 d!642375))

(declare-fun d!642377 () Bool)

(declare-fun e!1343874 () Bool)

(assert (=> d!642377 e!1343874))

(declare-fun res!917222 () Bool)

(assert (=> d!642377 (=> res!917222 e!1343874)))

(declare-fun lt!792683 () Bool)

(assert (=> d!642377 (= res!917222 (not lt!792683))))

(declare-fun drop!1174 (List!23558 Int) List!23558)

(declare-fun size!18328 (List!23558) Int)

(assert (=> d!642377 (= lt!792683 (= (list!9488 input!6603) (drop!1174 (list!9488 totalInput!1248) (- (size!18328 (list!9488 totalInput!1248)) (size!18328 (list!9488 input!6603))))))))

(assert (=> d!642377 (= (isSuffix!591 (list!9488 input!6603) (list!9488 totalInput!1248)) lt!792683)))

(declare-fun b!2112416 () Bool)

(assert (=> b!2112416 (= e!1343874 (>= (size!18328 (list!9488 totalInput!1248)) (size!18328 (list!9488 input!6603))))))

(assert (= (and d!642377 (not res!917222)) b!2112416))

(assert (=> d!642377 m!2568945))

(declare-fun m!2568989 () Bool)

(assert (=> d!642377 m!2568989))

(assert (=> d!642377 m!2568943))

(declare-fun m!2568991 () Bool)

(assert (=> d!642377 m!2568991))

(assert (=> d!642377 m!2568945))

(declare-fun m!2568993 () Bool)

(assert (=> d!642377 m!2568993))

(assert (=> b!2112416 m!2568945))

(assert (=> b!2112416 m!2568989))

(assert (=> b!2112416 m!2568943))

(assert (=> b!2112416 m!2568991))

(assert (=> b!2112381 d!642377))

(declare-fun d!642379 () Bool)

(declare-fun list!9489 (Conc!7762) List!23558)

(assert (=> d!642379 (= (list!9488 input!6603) (list!9489 (c!339165 input!6603)))))

(declare-fun bs!441092 () Bool)

(assert (= bs!441092 d!642379))

(declare-fun m!2568995 () Bool)

(assert (=> bs!441092 m!2568995))

(assert (=> b!2112381 d!642379))

(declare-fun d!642381 () Bool)

(assert (=> d!642381 (= (list!9488 totalInput!1248) (list!9489 (c!339165 totalInput!1248)))))

(declare-fun bs!441093 () Bool)

(assert (= bs!441093 d!642381))

(declare-fun m!2568997 () Bool)

(assert (=> bs!441093 m!2568997))

(assert (=> b!2112381 d!642381))

(declare-fun d!642383 () Bool)

(declare-fun res!917225 () Bool)

(declare-fun e!1343877 () Bool)

(assert (=> d!642383 (=> (not res!917225) (not e!1343877))))

(assert (=> d!642383 (= res!917225 ((_ is HashMap!2251) (cache!2632 cacheUp!1078)))))

(assert (=> d!642383 (= (inv!31057 cacheUp!1078) e!1343877)))

(declare-fun b!2112419 () Bool)

(assert (=> b!2112419 (= e!1343877 (validCacheMapUp!235 (cache!2632 cacheUp!1078)))))

(assert (= (and d!642383 res!917225) b!2112419))

(assert (=> b!2112419 m!2568981))

(assert (=> start!206468 d!642383))

(declare-fun d!642385 () Bool)

(declare-fun isBalanced!2439 (Conc!7762) Bool)

(assert (=> d!642385 (= (inv!31055 totalInput!1248) (isBalanced!2439 (c!339165 totalInput!1248)))))

(declare-fun bs!441094 () Bool)

(assert (= bs!441094 d!642385))

(declare-fun m!2568999 () Bool)

(assert (=> bs!441094 m!2568999))

(assert (=> start!206468 d!642385))

(declare-fun bm!128484 () Bool)

(declare-fun call!128490 () Bool)

(declare-fun call!128491 () Bool)

(assert (=> bm!128484 (= call!128490 call!128491)))

(declare-fun b!2112438 () Bool)

(declare-fun e!1343893 () Bool)

(declare-fun call!128489 () Bool)

(assert (=> b!2112438 (= e!1343893 call!128489)))

(declare-fun b!2112439 () Bool)

(declare-fun e!1343898 () Bool)

(assert (=> b!2112439 (= e!1343898 call!128491)))

(declare-fun d!642387 () Bool)

(declare-fun res!917238 () Bool)

(declare-fun e!1343895 () Bool)

(assert (=> d!642387 (=> res!917238 e!1343895)))

(assert (=> d!642387 (= res!917238 ((_ is ElementMatch!5619) r!15329))))

(assert (=> d!642387 (= (validRegex!2216 r!15329) e!1343895)))

(declare-fun b!2112440 () Bool)

(declare-fun e!1343897 () Bool)

(assert (=> b!2112440 (= e!1343897 call!128490)))

(declare-fun bm!128485 () Bool)

(declare-fun c!339175 () Bool)

(assert (=> bm!128485 (= call!128489 (validRegex!2216 (ite c!339175 (regTwo!11751 r!15329) (regOne!11750 r!15329))))))

(declare-fun b!2112441 () Bool)

(declare-fun res!917239 () Bool)

(assert (=> b!2112441 (=> (not res!917239) (not e!1343893))))

(assert (=> b!2112441 (= res!917239 call!128490)))

(declare-fun e!1343894 () Bool)

(assert (=> b!2112441 (= e!1343894 e!1343893)))

(declare-fun b!2112442 () Bool)

(declare-fun e!1343896 () Bool)

(assert (=> b!2112442 (= e!1343896 e!1343894)))

(assert (=> b!2112442 (= c!339175 ((_ is Union!5619) r!15329))))

(declare-fun b!2112443 () Bool)

(assert (=> b!2112443 (= e!1343895 e!1343896)))

(declare-fun c!339174 () Bool)

(assert (=> b!2112443 (= c!339174 ((_ is Star!5619) r!15329))))

(declare-fun bm!128486 () Bool)

(assert (=> bm!128486 (= call!128491 (validRegex!2216 (ite c!339174 (reg!5948 r!15329) (ite c!339175 (regOne!11751 r!15329) (regTwo!11750 r!15329)))))))

(declare-fun b!2112444 () Bool)

(declare-fun e!1343892 () Bool)

(assert (=> b!2112444 (= e!1343892 e!1343897)))

(declare-fun res!917237 () Bool)

(assert (=> b!2112444 (=> (not res!917237) (not e!1343897))))

(assert (=> b!2112444 (= res!917237 call!128489)))

(declare-fun b!2112445 () Bool)

(declare-fun res!917236 () Bool)

(assert (=> b!2112445 (=> res!917236 e!1343892)))

(assert (=> b!2112445 (= res!917236 (not ((_ is Concat!9921) r!15329)))))

(assert (=> b!2112445 (= e!1343894 e!1343892)))

(declare-fun b!2112446 () Bool)

(assert (=> b!2112446 (= e!1343896 e!1343898)))

(declare-fun res!917240 () Bool)

(declare-fun nullable!1678 (Regex!5619) Bool)

(assert (=> b!2112446 (= res!917240 (not (nullable!1678 (reg!5948 r!15329))))))

(assert (=> b!2112446 (=> (not res!917240) (not e!1343898))))

(assert (= (and d!642387 (not res!917238)) b!2112443))

(assert (= (and b!2112443 c!339174) b!2112446))

(assert (= (and b!2112443 (not c!339174)) b!2112442))

(assert (= (and b!2112446 res!917240) b!2112439))

(assert (= (and b!2112442 c!339175) b!2112441))

(assert (= (and b!2112442 (not c!339175)) b!2112445))

(assert (= (and b!2112441 res!917239) b!2112438))

(assert (= (and b!2112445 (not res!917236)) b!2112444))

(assert (= (and b!2112444 res!917237) b!2112440))

(assert (= (or b!2112438 b!2112444) bm!128485))

(assert (= (or b!2112441 b!2112440) bm!128484))

(assert (= (or b!2112439 bm!128484) bm!128486))

(declare-fun m!2569001 () Bool)

(assert (=> bm!128485 m!2569001))

(declare-fun m!2569003 () Bool)

(assert (=> bm!128486 m!2569003))

(declare-fun m!2569005 () Bool)

(assert (=> b!2112446 m!2569005))

(assert (=> start!206468 d!642387))

(declare-fun d!642389 () Bool)

(assert (=> d!642389 (= (inv!31055 input!6603) (isBalanced!2439 (c!339165 input!6603)))))

(declare-fun bs!441095 () Bool)

(assert (= bs!441095 d!642389))

(declare-fun m!2569007 () Bool)

(assert (=> bs!441095 m!2569007))

(assert (=> start!206468 d!642389))

(declare-fun d!642391 () Bool)

(declare-fun res!917243 () Bool)

(declare-fun e!1343901 () Bool)

(assert (=> d!642391 (=> (not res!917243) (not e!1343901))))

(assert (=> d!642391 (= res!917243 ((_ is HashMap!2250) (cache!2631 cacheDown!1197)))))

(assert (=> d!642391 (= (inv!31056 cacheDown!1197) e!1343901)))

(declare-fun b!2112449 () Bool)

(assert (=> b!2112449 (= e!1343901 (validCacheMapDown!233 (cache!2631 cacheDown!1197)))))

(assert (= (and d!642391 res!917243) b!2112449))

(assert (=> b!2112449 m!2568983))

(assert (=> start!206468 d!642391))

(declare-fun d!642393 () Bool)

(assert (=> d!642393 (= (array_inv!2575 (_keys!2633 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))) (bvsge (size!18325 (_keys!2633 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))) #b00000000000000000000000000000000))))

(assert (=> b!2112385 d!642393))

(declare-fun d!642395 () Bool)

(assert (=> d!642395 (= (array_inv!2576 (_values!2616 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))) (bvsge (size!18326 (_values!2616 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197))))))) #b00000000000000000000000000000000))))

(assert (=> b!2112385 d!642395))

(declare-fun d!642397 () Bool)

(declare-fun lt!792686 () Regex!5619)

(assert (=> d!642397 (validRegex!2216 lt!792686)))

(declare-fun generalisedUnion!496 (List!23559) Regex!5619)

(declare-fun unfocusZipperList!20 (List!23562) List!23559)

(assert (=> d!642397 (= lt!792686 (generalisedUnion!496 (unfocusZipperList!20 (toList!1051 (focus!265 r!15329)))))))

(assert (=> d!642397 (= (unfocusZipper!59 (toList!1051 (focus!265 r!15329))) lt!792686)))

(declare-fun bs!441096 () Bool)

(assert (= bs!441096 d!642397))

(declare-fun m!2569009 () Bool)

(assert (=> bs!441096 m!2569009))

(assert (=> bs!441096 m!2568957))

(declare-fun m!2569011 () Bool)

(assert (=> bs!441096 m!2569011))

(assert (=> bs!441096 m!2569011))

(declare-fun m!2569013 () Bool)

(assert (=> bs!441096 m!2569013))

(assert (=> b!2112403 d!642397))

(declare-fun d!642399 () Bool)

(declare-fun e!1343904 () Bool)

(assert (=> d!642399 e!1343904))

(declare-fun res!917246 () Bool)

(assert (=> d!642399 (=> (not res!917246) (not e!1343904))))

(declare-fun lt!792689 () List!23562)

(declare-fun noDuplicate!273 (List!23562) Bool)

(assert (=> d!642399 (= res!917246 (noDuplicate!273 lt!792689))))

(declare-fun choose!12645 ((InoxSet Context!2378)) List!23562)

(assert (=> d!642399 (= lt!792689 (choose!12645 (focus!265 r!15329)))))

(assert (=> d!642399 (= (toList!1051 (focus!265 r!15329)) lt!792689)))

(declare-fun b!2112452 () Bool)

(declare-fun content!3385 (List!23562) (InoxSet Context!2378))

(assert (=> b!2112452 (= e!1343904 (= (content!3385 lt!792689) (focus!265 r!15329)))))

(assert (= (and d!642399 res!917246) b!2112452))

(declare-fun m!2569015 () Bool)

(assert (=> d!642399 m!2569015))

(assert (=> d!642399 m!2568955))

(declare-fun m!2569017 () Bool)

(assert (=> d!642399 m!2569017))

(declare-fun m!2569019 () Bool)

(assert (=> b!2112452 m!2569019))

(assert (=> b!2112403 d!642399))

(declare-fun d!642401 () Bool)

(declare-fun e!1343907 () Bool)

(assert (=> d!642401 e!1343907))

(declare-fun res!917250 () Bool)

(assert (=> d!642401 (=> (not res!917250) (not e!1343907))))

(assert (=> d!642401 (= res!917250 (validRegex!2216 r!15329))))

(assert (=> d!642401 (= (focus!265 r!15329) (store ((as const (Array Context!2378 Bool)) false) (Context!2379 (Cons!23475 r!15329 Nil!23475)) true))))

(declare-fun b!2112455 () Bool)

(assert (=> b!2112455 (= e!1343907 (= (unfocusZipper!59 (toList!1051 (store ((as const (Array Context!2378 Bool)) false) (Context!2379 (Cons!23475 r!15329 Nil!23475)) true))) r!15329))))

(assert (= (and d!642401 res!917250) b!2112455))

(assert (=> d!642401 m!2568967))

(declare-fun m!2569021 () Bool)

(assert (=> d!642401 m!2569021))

(assert (=> b!2112455 m!2569021))

(assert (=> b!2112455 m!2569021))

(declare-fun m!2569023 () Bool)

(assert (=> b!2112455 m!2569023))

(assert (=> b!2112455 m!2569023))

(declare-fun m!2569025 () Bool)

(assert (=> b!2112455 m!2569025))

(assert (=> b!2112403 d!642401))

(declare-fun d!642403 () Bool)

(declare-fun c!339176 () Bool)

(assert (=> d!642403 (= c!339176 ((_ is Node!7762) (c!339165 input!6603)))))

(declare-fun e!1343908 () Bool)

(assert (=> d!642403 (= (inv!31054 (c!339165 input!6603)) e!1343908)))

(declare-fun b!2112456 () Bool)

(assert (=> b!2112456 (= e!1343908 (inv!31058 (c!339165 input!6603)))))

(declare-fun b!2112457 () Bool)

(declare-fun e!1343909 () Bool)

(assert (=> b!2112457 (= e!1343908 e!1343909)))

(declare-fun res!917251 () Bool)

(assert (=> b!2112457 (= res!917251 (not ((_ is Leaf!11339) (c!339165 input!6603))))))

(assert (=> b!2112457 (=> res!917251 e!1343909)))

(declare-fun b!2112458 () Bool)

(assert (=> b!2112458 (= e!1343909 (inv!31059 (c!339165 input!6603)))))

(assert (= (and d!642403 c!339176) b!2112456))

(assert (= (and d!642403 (not c!339176)) b!2112457))

(assert (= (and b!2112457 (not res!917251)) b!2112458))

(declare-fun m!2569027 () Bool)

(assert (=> b!2112456 m!2569027))

(declare-fun m!2569029 () Bool)

(assert (=> b!2112458 m!2569029))

(assert (=> b!2112386 d!642403))

(declare-fun setIsEmpty!14110 () Bool)

(declare-fun setRes!14110 () Bool)

(assert (=> setIsEmpty!14110 setRes!14110))

(declare-fun tp!643604 () Bool)

(declare-fun e!1343923 () Bool)

(declare-fun tp!643601 () Bool)

(declare-fun setRes!14111 () Bool)

(declare-fun e!1343924 () Bool)

(declare-fun mapDefault!11238 () List!23560)

(declare-fun b!2112473 () Bool)

(declare-fun inv!31060 (Context!2378) Bool)

(assert (=> b!2112473 (= e!1343924 (and tp!643604 (inv!31060 (_2!13269 (_1!13270 (h!28877 mapDefault!11238)))) e!1343923 tp_is_empty!9427 setRes!14111 tp!643601))))

(declare-fun condSetEmpty!14110 () Bool)

(assert (=> b!2112473 (= condSetEmpty!14110 (= (_2!13270 (h!28877 mapDefault!11238)) ((as const (Array Context!2378 Bool)) false)))))

(declare-fun e!1343922 () Bool)

(declare-fun setElem!14111 () Context!2378)

(declare-fun tp!643606 () Bool)

(declare-fun setNonEmpty!14110 () Bool)

(assert (=> setNonEmpty!14110 (= setRes!14111 (and tp!643606 (inv!31060 setElem!14111) e!1343922))))

(declare-fun setRest!14110 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14110 (= (_2!13270 (h!28877 mapDefault!11238)) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14111 true) setRest!14110))))

(declare-fun b!2112474 () Bool)

(declare-fun tp!643602 () Bool)

(assert (=> b!2112474 (= e!1343923 tp!643602)))

(declare-fun b!2112475 () Bool)

(declare-fun e!1343927 () Bool)

(declare-fun tp!643600 () Bool)

(assert (=> b!2112475 (= e!1343927 tp!643600)))

(declare-fun mapNonEmpty!11238 () Bool)

(declare-fun mapRes!11238 () Bool)

(declare-fun tp!643610 () Bool)

(declare-fun e!1343925 () Bool)

(assert (=> mapNonEmpty!11238 (= mapRes!11238 (and tp!643610 e!1343925))))

(declare-fun mapValue!11238 () List!23560)

(declare-fun mapRest!11238 () (Array (_ BitVec 32) List!23560))

(declare-fun mapKey!11238 () (_ BitVec 32))

(assert (=> mapNonEmpty!11238 (= mapRest!11235 (store mapRest!11238 mapKey!11238 mapValue!11238))))

(declare-fun b!2112476 () Bool)

(declare-fun e!1343926 () Bool)

(declare-fun tp!643605 () Bool)

(assert (=> b!2112476 (= e!1343926 tp!643605)))

(declare-fun setNonEmpty!14111 () Bool)

(declare-fun tp!643603 () Bool)

(declare-fun setElem!14110 () Context!2378)

(assert (=> setNonEmpty!14111 (= setRes!14110 (and tp!643603 (inv!31060 setElem!14110) e!1343926))))

(declare-fun setRest!14111 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14111 (= (_2!13270 (h!28877 mapValue!11238)) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14110 true) setRest!14111))))

(declare-fun b!2112477 () Bool)

(declare-fun tp!643609 () Bool)

(assert (=> b!2112477 (= e!1343922 tp!643609)))

(declare-fun condMapEmpty!11238 () Bool)

(assert (=> mapNonEmpty!11234 (= condMapEmpty!11238 (= mapRest!11235 ((as const (Array (_ BitVec 32) List!23560)) mapDefault!11238)))))

(assert (=> mapNonEmpty!11234 (= tp!643571 (and e!1343924 mapRes!11238))))

(declare-fun mapIsEmpty!11238 () Bool)

(assert (=> mapIsEmpty!11238 mapRes!11238))

(declare-fun tp!643607 () Bool)

(declare-fun tp!643608 () Bool)

(declare-fun b!2112478 () Bool)

(assert (=> b!2112478 (= e!1343925 (and tp!643608 (inv!31060 (_2!13269 (_1!13270 (h!28877 mapValue!11238)))) e!1343927 tp_is_empty!9427 setRes!14110 tp!643607))))

(declare-fun condSetEmpty!14111 () Bool)

(assert (=> b!2112478 (= condSetEmpty!14111 (= (_2!13270 (h!28877 mapValue!11238)) ((as const (Array Context!2378 Bool)) false)))))

(declare-fun setIsEmpty!14111 () Bool)

(assert (=> setIsEmpty!14111 setRes!14111))

(assert (= (and mapNonEmpty!11234 condMapEmpty!11238) mapIsEmpty!11238))

(assert (= (and mapNonEmpty!11234 (not condMapEmpty!11238)) mapNonEmpty!11238))

(assert (= b!2112478 b!2112475))

(assert (= (and b!2112478 condSetEmpty!14111) setIsEmpty!14110))

(assert (= (and b!2112478 (not condSetEmpty!14111)) setNonEmpty!14111))

(assert (= setNonEmpty!14111 b!2112476))

(assert (= (and mapNonEmpty!11238 ((_ is Cons!23476) mapValue!11238)) b!2112478))

(assert (= b!2112473 b!2112474))

(assert (= (and b!2112473 condSetEmpty!14110) setIsEmpty!14111))

(assert (= (and b!2112473 (not condSetEmpty!14110)) setNonEmpty!14110))

(assert (= setNonEmpty!14110 b!2112477))

(assert (= (and mapNonEmpty!11234 ((_ is Cons!23476) mapDefault!11238)) b!2112473))

(declare-fun m!2569031 () Bool)

(assert (=> mapNonEmpty!11238 m!2569031))

(declare-fun m!2569033 () Bool)

(assert (=> b!2112478 m!2569033))

(declare-fun m!2569035 () Bool)

(assert (=> setNonEmpty!14111 m!2569035))

(declare-fun m!2569037 () Bool)

(assert (=> b!2112473 m!2569037))

(declare-fun m!2569039 () Bool)

(assert (=> setNonEmpty!14110 m!2569039))

(declare-fun b!2112487 () Bool)

(declare-fun e!1343935 () Bool)

(declare-fun tp!643623 () Bool)

(assert (=> b!2112487 (= e!1343935 tp!643623)))

(declare-fun setIsEmpty!14114 () Bool)

(declare-fun setRes!14114 () Bool)

(assert (=> setIsEmpty!14114 setRes!14114))

(declare-fun b!2112488 () Bool)

(declare-fun e!1343934 () Bool)

(declare-fun tp!643621 () Bool)

(assert (=> b!2112488 (= e!1343934 tp!643621)))

(declare-fun setElem!14114 () Context!2378)

(declare-fun tp!643625 () Bool)

(declare-fun setNonEmpty!14114 () Bool)

(assert (=> setNonEmpty!14114 (= setRes!14114 (and tp!643625 (inv!31060 setElem!14114) e!1343934))))

(declare-fun setRest!14114 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14114 (= (_2!13270 (h!28877 mapValue!11234)) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14114 true) setRest!14114))))

(declare-fun e!1343936 () Bool)

(assert (=> mapNonEmpty!11234 (= tp!643564 e!1343936)))

(declare-fun b!2112489 () Bool)

(declare-fun tp!643624 () Bool)

(declare-fun tp!643622 () Bool)

(assert (=> b!2112489 (= e!1343936 (and tp!643624 (inv!31060 (_2!13269 (_1!13270 (h!28877 mapValue!11234)))) e!1343935 tp_is_empty!9427 setRes!14114 tp!643622))))

(declare-fun condSetEmpty!14114 () Bool)

(assert (=> b!2112489 (= condSetEmpty!14114 (= (_2!13270 (h!28877 mapValue!11234)) ((as const (Array Context!2378 Bool)) false)))))

(assert (= b!2112489 b!2112487))

(assert (= (and b!2112489 condSetEmpty!14114) setIsEmpty!14114))

(assert (= (and b!2112489 (not condSetEmpty!14114)) setNonEmpty!14114))

(assert (= setNonEmpty!14114 b!2112488))

(assert (= (and mapNonEmpty!11234 ((_ is Cons!23476) mapValue!11234)) b!2112489))

(declare-fun m!2569041 () Bool)

(assert (=> setNonEmpty!14114 m!2569041))

(declare-fun m!2569043 () Bool)

(assert (=> b!2112489 m!2569043))

(declare-fun b!2112490 () Bool)

(declare-fun e!1343938 () Bool)

(declare-fun tp!643628 () Bool)

(assert (=> b!2112490 (= e!1343938 tp!643628)))

(declare-fun setIsEmpty!14115 () Bool)

(declare-fun setRes!14115 () Bool)

(assert (=> setIsEmpty!14115 setRes!14115))

(declare-fun b!2112491 () Bool)

(declare-fun e!1343937 () Bool)

(declare-fun tp!643626 () Bool)

(assert (=> b!2112491 (= e!1343937 tp!643626)))

(declare-fun setNonEmpty!14115 () Bool)

(declare-fun setElem!14115 () Context!2378)

(declare-fun tp!643630 () Bool)

(assert (=> setNonEmpty!14115 (= setRes!14115 (and tp!643630 (inv!31060 setElem!14115) e!1343937))))

(declare-fun setRest!14115 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14115 (= (_2!13270 (h!28877 mapDefault!11234)) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14115 true) setRest!14115))))

(declare-fun e!1343939 () Bool)

(assert (=> b!2112400 (= tp!643570 e!1343939)))

(declare-fun tp!643627 () Bool)

(declare-fun b!2112492 () Bool)

(declare-fun tp!643629 () Bool)

(assert (=> b!2112492 (= e!1343939 (and tp!643629 (inv!31060 (_2!13269 (_1!13270 (h!28877 mapDefault!11234)))) e!1343938 tp_is_empty!9427 setRes!14115 tp!643627))))

(declare-fun condSetEmpty!14115 () Bool)

(assert (=> b!2112492 (= condSetEmpty!14115 (= (_2!13270 (h!28877 mapDefault!11234)) ((as const (Array Context!2378 Bool)) false)))))

(assert (= b!2112492 b!2112490))

(assert (= (and b!2112492 condSetEmpty!14115) setIsEmpty!14115))

(assert (= (and b!2112492 (not condSetEmpty!14115)) setNonEmpty!14115))

(assert (= setNonEmpty!14115 b!2112491))

(assert (= (and b!2112400 ((_ is Cons!23476) mapDefault!11234)) b!2112492))

(declare-fun m!2569045 () Bool)

(assert (=> setNonEmpty!14115 m!2569045))

(declare-fun m!2569047 () Bool)

(assert (=> b!2112492 m!2569047))

(declare-fun setIsEmpty!14120 () Bool)

(declare-fun setRes!14120 () Bool)

(assert (=> setIsEmpty!14120 setRes!14120))

(declare-fun mapNonEmpty!11241 () Bool)

(declare-fun mapRes!11241 () Bool)

(declare-fun tp!643653 () Bool)

(declare-fun e!1343956 () Bool)

(assert (=> mapNonEmpty!11241 (= mapRes!11241 (and tp!643653 e!1343956))))

(declare-fun mapKey!11241 () (_ BitVec 32))

(declare-fun mapValue!11241 () List!23561)

(declare-fun mapRest!11241 () (Array (_ BitVec 32) List!23561))

(assert (=> mapNonEmpty!11241 (= mapRest!11234 (store mapRest!11241 mapKey!11241 mapValue!11241))))

(declare-fun mapIsEmpty!11241 () Bool)

(assert (=> mapIsEmpty!11241 mapRes!11241))

(declare-fun setElem!14121 () Context!2378)

(declare-fun setNonEmpty!14120 () Bool)

(declare-fun e!1343954 () Bool)

(declare-fun tp!643651 () Bool)

(declare-fun setRes!14121 () Bool)

(assert (=> setNonEmpty!14120 (= setRes!14121 (and tp!643651 (inv!31060 setElem!14121) e!1343954))))

(declare-fun setRest!14120 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14120 (= (_2!13272 (h!28878 mapValue!11241)) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14121 true) setRest!14120))))

(declare-fun b!2112507 () Bool)

(declare-fun tp!643654 () Bool)

(assert (=> b!2112507 (= e!1343954 tp!643654)))

(declare-fun b!2112509 () Bool)

(declare-fun e!1343952 () Bool)

(declare-fun tp!643650 () Bool)

(assert (=> b!2112509 (= e!1343952 tp!643650)))

(declare-fun b!2112510 () Bool)

(declare-fun e!1343957 () Bool)

(declare-fun tp!643652 () Bool)

(assert (=> b!2112510 (= e!1343957 tp!643652)))

(declare-fun e!1343955 () Bool)

(declare-fun mapDefault!11241 () List!23561)

(declare-fun e!1343953 () Bool)

(declare-fun tp!643656 () Bool)

(declare-fun b!2112511 () Bool)

(assert (=> b!2112511 (= e!1343953 (and (inv!31060 (_1!13271 (_1!13272 (h!28878 mapDefault!11241)))) e!1343955 tp_is_empty!9427 setRes!14120 tp!643656))))

(declare-fun condSetEmpty!14120 () Bool)

(assert (=> b!2112511 (= condSetEmpty!14120 (= (_2!13272 (h!28878 mapDefault!11241)) ((as const (Array Context!2378 Bool)) false)))))

(declare-fun setIsEmpty!14121 () Bool)

(assert (=> setIsEmpty!14121 setRes!14121))

(declare-fun tp!643649 () Bool)

(declare-fun setNonEmpty!14121 () Bool)

(declare-fun setElem!14120 () Context!2378)

(assert (=> setNonEmpty!14121 (= setRes!14120 (and tp!643649 (inv!31060 setElem!14120) e!1343952))))

(declare-fun setRest!14121 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14121 (= (_2!13272 (h!28878 mapDefault!11241)) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14120 true) setRest!14121))))

(declare-fun tp!643657 () Bool)

(declare-fun b!2112512 () Bool)

(assert (=> b!2112512 (= e!1343956 (and (inv!31060 (_1!13271 (_1!13272 (h!28878 mapValue!11241)))) e!1343957 tp_is_empty!9427 setRes!14121 tp!643657))))

(declare-fun condSetEmpty!14121 () Bool)

(assert (=> b!2112512 (= condSetEmpty!14121 (= (_2!13272 (h!28878 mapValue!11241)) ((as const (Array Context!2378 Bool)) false)))))

(declare-fun condMapEmpty!11241 () Bool)

(assert (=> mapNonEmpty!11235 (= condMapEmpty!11241 (= mapRest!11234 ((as const (Array (_ BitVec 32) List!23561)) mapDefault!11241)))))

(assert (=> mapNonEmpty!11235 (= tp!643576 (and e!1343953 mapRes!11241))))

(declare-fun b!2112508 () Bool)

(declare-fun tp!643655 () Bool)

(assert (=> b!2112508 (= e!1343955 tp!643655)))

(assert (= (and mapNonEmpty!11235 condMapEmpty!11241) mapIsEmpty!11241))

(assert (= (and mapNonEmpty!11235 (not condMapEmpty!11241)) mapNonEmpty!11241))

(assert (= b!2112512 b!2112510))

(assert (= (and b!2112512 condSetEmpty!14121) setIsEmpty!14121))

(assert (= (and b!2112512 (not condSetEmpty!14121)) setNonEmpty!14120))

(assert (= setNonEmpty!14120 b!2112507))

(assert (= (and mapNonEmpty!11241 ((_ is Cons!23477) mapValue!11241)) b!2112512))

(assert (= b!2112511 b!2112508))

(assert (= (and b!2112511 condSetEmpty!14120) setIsEmpty!14120))

(assert (= (and b!2112511 (not condSetEmpty!14120)) setNonEmpty!14121))

(assert (= setNonEmpty!14121 b!2112509))

(assert (= (and mapNonEmpty!11235 ((_ is Cons!23477) mapDefault!11241)) b!2112511))

(declare-fun m!2569049 () Bool)

(assert (=> b!2112511 m!2569049))

(declare-fun m!2569051 () Bool)

(assert (=> mapNonEmpty!11241 m!2569051))

(declare-fun m!2569053 () Bool)

(assert (=> setNonEmpty!14121 m!2569053))

(declare-fun m!2569055 () Bool)

(assert (=> setNonEmpty!14120 m!2569055))

(declare-fun m!2569057 () Bool)

(assert (=> b!2112512 m!2569057))

(declare-fun e!1343965 () Bool)

(declare-fun tp!643667 () Bool)

(declare-fun setRes!14124 () Bool)

(declare-fun setElem!14124 () Context!2378)

(declare-fun setNonEmpty!14124 () Bool)

(assert (=> setNonEmpty!14124 (= setRes!14124 (and tp!643667 (inv!31060 setElem!14124) e!1343965))))

(declare-fun setRest!14124 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14124 (= (_2!13272 (h!28878 mapValue!11235)) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14124 true) setRest!14124))))

(declare-fun b!2112521 () Bool)

(declare-fun e!1343966 () Bool)

(declare-fun tp!643666 () Bool)

(assert (=> b!2112521 (= e!1343966 tp!643666)))

(declare-fun b!2112522 () Bool)

(declare-fun tp!643668 () Bool)

(assert (=> b!2112522 (= e!1343965 tp!643668)))

(declare-fun e!1343964 () Bool)

(declare-fun b!2112523 () Bool)

(declare-fun tp!643669 () Bool)

(assert (=> b!2112523 (= e!1343964 (and (inv!31060 (_1!13271 (_1!13272 (h!28878 mapValue!11235)))) e!1343966 tp_is_empty!9427 setRes!14124 tp!643669))))

(declare-fun condSetEmpty!14124 () Bool)

(assert (=> b!2112523 (= condSetEmpty!14124 (= (_2!13272 (h!28878 mapValue!11235)) ((as const (Array Context!2378 Bool)) false)))))

(declare-fun setIsEmpty!14124 () Bool)

(assert (=> setIsEmpty!14124 setRes!14124))

(assert (=> mapNonEmpty!11235 (= tp!643557 e!1343964)))

(assert (= b!2112523 b!2112521))

(assert (= (and b!2112523 condSetEmpty!14124) setIsEmpty!14124))

(assert (= (and b!2112523 (not condSetEmpty!14124)) setNonEmpty!14124))

(assert (= setNonEmpty!14124 b!2112522))

(assert (= (and mapNonEmpty!11235 ((_ is Cons!23477) mapValue!11235)) b!2112523))

(declare-fun m!2569059 () Bool)

(assert (=> setNonEmpty!14124 m!2569059))

(declare-fun m!2569061 () Bool)

(assert (=> b!2112523 m!2569061))

(declare-fun setElem!14125 () Context!2378)

(declare-fun setNonEmpty!14125 () Bool)

(declare-fun e!1343968 () Bool)

(declare-fun setRes!14125 () Bool)

(declare-fun tp!643671 () Bool)

(assert (=> setNonEmpty!14125 (= setRes!14125 (and tp!643671 (inv!31060 setElem!14125) e!1343968))))

(declare-fun setRest!14125 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14125 (= (_2!13272 (h!28878 (zeroValue!2595 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078)))))))) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14125 true) setRest!14125))))

(declare-fun b!2112524 () Bool)

(declare-fun e!1343969 () Bool)

(declare-fun tp!643670 () Bool)

(assert (=> b!2112524 (= e!1343969 tp!643670)))

(declare-fun b!2112525 () Bool)

(declare-fun tp!643672 () Bool)

(assert (=> b!2112525 (= e!1343968 tp!643672)))

(declare-fun tp!643673 () Bool)

(declare-fun e!1343967 () Bool)

(declare-fun b!2112526 () Bool)

(assert (=> b!2112526 (= e!1343967 (and (inv!31060 (_1!13271 (_1!13272 (h!28878 (zeroValue!2595 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078)))))))))) e!1343969 tp_is_empty!9427 setRes!14125 tp!643673))))

(declare-fun condSetEmpty!14125 () Bool)

(assert (=> b!2112526 (= condSetEmpty!14125 (= (_2!13272 (h!28878 (zeroValue!2595 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078)))))))) ((as const (Array Context!2378 Bool)) false)))))

(declare-fun setIsEmpty!14125 () Bool)

(assert (=> setIsEmpty!14125 setRes!14125))

(assert (=> b!2112399 (= tp!643567 e!1343967)))

(assert (= b!2112526 b!2112524))

(assert (= (and b!2112526 condSetEmpty!14125) setIsEmpty!14125))

(assert (= (and b!2112526 (not condSetEmpty!14125)) setNonEmpty!14125))

(assert (= setNonEmpty!14125 b!2112525))

(assert (= (and b!2112399 ((_ is Cons!23477) (zeroValue!2595 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078)))))))) b!2112526))

(declare-fun m!2569063 () Bool)

(assert (=> setNonEmpty!14125 m!2569063))

(declare-fun m!2569065 () Bool)

(assert (=> b!2112526 m!2569065))

(declare-fun tp!643675 () Bool)

(declare-fun setRes!14126 () Bool)

(declare-fun setElem!14126 () Context!2378)

(declare-fun setNonEmpty!14126 () Bool)

(declare-fun e!1343971 () Bool)

(assert (=> setNonEmpty!14126 (= setRes!14126 (and tp!643675 (inv!31060 setElem!14126) e!1343971))))

(declare-fun setRest!14126 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14126 (= (_2!13272 (h!28878 (minValue!2595 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078)))))))) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14126 true) setRest!14126))))

(declare-fun b!2112527 () Bool)

(declare-fun e!1343972 () Bool)

(declare-fun tp!643674 () Bool)

(assert (=> b!2112527 (= e!1343972 tp!643674)))

(declare-fun b!2112528 () Bool)

(declare-fun tp!643676 () Bool)

(assert (=> b!2112528 (= e!1343971 tp!643676)))

(declare-fun tp!643677 () Bool)

(declare-fun b!2112529 () Bool)

(declare-fun e!1343970 () Bool)

(assert (=> b!2112529 (= e!1343970 (and (inv!31060 (_1!13271 (_1!13272 (h!28878 (minValue!2595 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078)))))))))) e!1343972 tp_is_empty!9427 setRes!14126 tp!643677))))

(declare-fun condSetEmpty!14126 () Bool)

(assert (=> b!2112529 (= condSetEmpty!14126 (= (_2!13272 (h!28878 (minValue!2595 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078)))))))) ((as const (Array Context!2378 Bool)) false)))))

(declare-fun setIsEmpty!14126 () Bool)

(assert (=> setIsEmpty!14126 setRes!14126))

(assert (=> b!2112399 (= tp!643573 e!1343970)))

(assert (= b!2112529 b!2112527))

(assert (= (and b!2112529 condSetEmpty!14126) setIsEmpty!14126))

(assert (= (and b!2112529 (not condSetEmpty!14126)) setNonEmpty!14126))

(assert (= setNonEmpty!14126 b!2112528))

(assert (= (and b!2112399 ((_ is Cons!23477) (minValue!2595 (v!28001 (underlying!4869 (v!28002 (underlying!4870 (cache!2632 cacheUp!1078)))))))) b!2112529))

(declare-fun m!2569067 () Bool)

(assert (=> setNonEmpty!14126 m!2569067))

(declare-fun m!2569069 () Bool)

(assert (=> b!2112529 m!2569069))

(declare-fun e!1343977 () Bool)

(declare-fun tp!643685 () Bool)

(declare-fun b!2112538 () Bool)

(declare-fun tp!643686 () Bool)

(assert (=> b!2112538 (= e!1343977 (and (inv!31054 (left!18226 (c!339165 totalInput!1248))) tp!643685 (inv!31054 (right!18556 (c!339165 totalInput!1248))) tp!643686))))

(declare-fun b!2112540 () Bool)

(declare-fun e!1343978 () Bool)

(declare-fun tp!643684 () Bool)

(assert (=> b!2112540 (= e!1343978 tp!643684)))

(declare-fun b!2112539 () Bool)

(declare-fun inv!31061 (IArray!15529) Bool)

(assert (=> b!2112539 (= e!1343977 (and (inv!31061 (xs!10704 (c!339165 totalInput!1248))) e!1343978))))

(assert (=> b!2112390 (= tp!643562 (and (inv!31054 (c!339165 totalInput!1248)) e!1343977))))

(assert (= (and b!2112390 ((_ is Node!7762) (c!339165 totalInput!1248))) b!2112538))

(assert (= b!2112539 b!2112540))

(assert (= (and b!2112390 ((_ is Leaf!11339) (c!339165 totalInput!1248))) b!2112539))

(declare-fun m!2569071 () Bool)

(assert (=> b!2112538 m!2569071))

(declare-fun m!2569073 () Bool)

(assert (=> b!2112538 m!2569073))

(declare-fun m!2569075 () Bool)

(assert (=> b!2112539 m!2569075))

(assert (=> b!2112390 m!2568965))

(declare-fun b!2112551 () Bool)

(declare-fun e!1343981 () Bool)

(assert (=> b!2112551 (= e!1343981 tp_is_empty!9427)))

(declare-fun b!2112553 () Bool)

(declare-fun tp!643700 () Bool)

(assert (=> b!2112553 (= e!1343981 tp!643700)))

(declare-fun b!2112552 () Bool)

(declare-fun tp!643698 () Bool)

(declare-fun tp!643699 () Bool)

(assert (=> b!2112552 (= e!1343981 (and tp!643698 tp!643699))))

(declare-fun b!2112554 () Bool)

(declare-fun tp!643697 () Bool)

(declare-fun tp!643701 () Bool)

(assert (=> b!2112554 (= e!1343981 (and tp!643697 tp!643701))))

(assert (=> b!2112388 (= tp!643572 e!1343981)))

(assert (= (and b!2112388 ((_ is ElementMatch!5619) (regOne!11750 r!15329))) b!2112551))

(assert (= (and b!2112388 ((_ is Concat!9921) (regOne!11750 r!15329))) b!2112552))

(assert (= (and b!2112388 ((_ is Star!5619) (regOne!11750 r!15329))) b!2112553))

(assert (= (and b!2112388 ((_ is Union!5619) (regOne!11750 r!15329))) b!2112554))

(declare-fun b!2112555 () Bool)

(declare-fun e!1343982 () Bool)

(assert (=> b!2112555 (= e!1343982 tp_is_empty!9427)))

(declare-fun b!2112557 () Bool)

(declare-fun tp!643705 () Bool)

(assert (=> b!2112557 (= e!1343982 tp!643705)))

(declare-fun b!2112556 () Bool)

(declare-fun tp!643703 () Bool)

(declare-fun tp!643704 () Bool)

(assert (=> b!2112556 (= e!1343982 (and tp!643703 tp!643704))))

(declare-fun b!2112558 () Bool)

(declare-fun tp!643702 () Bool)

(declare-fun tp!643706 () Bool)

(assert (=> b!2112558 (= e!1343982 (and tp!643702 tp!643706))))

(assert (=> b!2112388 (= tp!643568 e!1343982)))

(assert (= (and b!2112388 ((_ is ElementMatch!5619) (regTwo!11750 r!15329))) b!2112555))

(assert (= (and b!2112388 ((_ is Concat!9921) (regTwo!11750 r!15329))) b!2112556))

(assert (= (and b!2112388 ((_ is Star!5619) (regTwo!11750 r!15329))) b!2112557))

(assert (= (and b!2112388 ((_ is Union!5619) (regTwo!11750 r!15329))) b!2112558))

(declare-fun setNonEmpty!14127 () Bool)

(declare-fun setElem!14127 () Context!2378)

(declare-fun e!1343984 () Bool)

(declare-fun setRes!14127 () Bool)

(declare-fun tp!643708 () Bool)

(assert (=> setNonEmpty!14127 (= setRes!14127 (and tp!643708 (inv!31060 setElem!14127) e!1343984))))

(declare-fun setRest!14127 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14127 (= (_2!13272 (h!28878 mapDefault!11235)) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14127 true) setRest!14127))))

(declare-fun b!2112559 () Bool)

(declare-fun e!1343985 () Bool)

(declare-fun tp!643707 () Bool)

(assert (=> b!2112559 (= e!1343985 tp!643707)))

(declare-fun b!2112560 () Bool)

(declare-fun tp!643709 () Bool)

(assert (=> b!2112560 (= e!1343984 tp!643709)))

(declare-fun b!2112561 () Bool)

(declare-fun tp!643710 () Bool)

(declare-fun e!1343983 () Bool)

(assert (=> b!2112561 (= e!1343983 (and (inv!31060 (_1!13271 (_1!13272 (h!28878 mapDefault!11235)))) e!1343985 tp_is_empty!9427 setRes!14127 tp!643710))))

(declare-fun condSetEmpty!14127 () Bool)

(assert (=> b!2112561 (= condSetEmpty!14127 (= (_2!13272 (h!28878 mapDefault!11235)) ((as const (Array Context!2378 Bool)) false)))))

(declare-fun setIsEmpty!14127 () Bool)

(assert (=> setIsEmpty!14127 setRes!14127))

(assert (=> b!2112398 (= tp!643560 e!1343983)))

(assert (= b!2112561 b!2112559))

(assert (= (and b!2112561 condSetEmpty!14127) setIsEmpty!14127))

(assert (= (and b!2112561 (not condSetEmpty!14127)) setNonEmpty!14127))

(assert (= setNonEmpty!14127 b!2112560))

(assert (= (and b!2112398 ((_ is Cons!23477) mapDefault!11235)) b!2112561))

(declare-fun m!2569077 () Bool)

(assert (=> setNonEmpty!14127 m!2569077))

(declare-fun m!2569079 () Bool)

(assert (=> b!2112561 m!2569079))

(declare-fun b!2112562 () Bool)

(declare-fun e!1343986 () Bool)

(assert (=> b!2112562 (= e!1343986 tp_is_empty!9427)))

(declare-fun b!2112564 () Bool)

(declare-fun tp!643714 () Bool)

(assert (=> b!2112564 (= e!1343986 tp!643714)))

(declare-fun b!2112563 () Bool)

(declare-fun tp!643712 () Bool)

(declare-fun tp!643713 () Bool)

(assert (=> b!2112563 (= e!1343986 (and tp!643712 tp!643713))))

(declare-fun b!2112565 () Bool)

(declare-fun tp!643711 () Bool)

(declare-fun tp!643715 () Bool)

(assert (=> b!2112565 (= e!1343986 (and tp!643711 tp!643715))))

(assert (=> b!2112404 (= tp!643565 e!1343986)))

(assert (= (and b!2112404 ((_ is ElementMatch!5619) (reg!5948 r!15329))) b!2112562))

(assert (= (and b!2112404 ((_ is Concat!9921) (reg!5948 r!15329))) b!2112563))

(assert (= (and b!2112404 ((_ is Star!5619) (reg!5948 r!15329))) b!2112564))

(assert (= (and b!2112404 ((_ is Union!5619) (reg!5948 r!15329))) b!2112565))

(declare-fun b!2112566 () Bool)

(declare-fun e!1343987 () Bool)

(assert (=> b!2112566 (= e!1343987 tp_is_empty!9427)))

(declare-fun b!2112568 () Bool)

(declare-fun tp!643719 () Bool)

(assert (=> b!2112568 (= e!1343987 tp!643719)))

(declare-fun b!2112567 () Bool)

(declare-fun tp!643717 () Bool)

(declare-fun tp!643718 () Bool)

(assert (=> b!2112567 (= e!1343987 (and tp!643717 tp!643718))))

(declare-fun b!2112569 () Bool)

(declare-fun tp!643716 () Bool)

(declare-fun tp!643720 () Bool)

(assert (=> b!2112569 (= e!1343987 (and tp!643716 tp!643720))))

(assert (=> b!2112397 (= tp!643577 e!1343987)))

(assert (= (and b!2112397 ((_ is ElementMatch!5619) (regOne!11751 r!15329))) b!2112566))

(assert (= (and b!2112397 ((_ is Concat!9921) (regOne!11751 r!15329))) b!2112567))

(assert (= (and b!2112397 ((_ is Star!5619) (regOne!11751 r!15329))) b!2112568))

(assert (= (and b!2112397 ((_ is Union!5619) (regOne!11751 r!15329))) b!2112569))

(declare-fun b!2112570 () Bool)

(declare-fun e!1343988 () Bool)

(assert (=> b!2112570 (= e!1343988 tp_is_empty!9427)))

(declare-fun b!2112572 () Bool)

(declare-fun tp!643724 () Bool)

(assert (=> b!2112572 (= e!1343988 tp!643724)))

(declare-fun b!2112571 () Bool)

(declare-fun tp!643722 () Bool)

(declare-fun tp!643723 () Bool)

(assert (=> b!2112571 (= e!1343988 (and tp!643722 tp!643723))))

(declare-fun b!2112573 () Bool)

(declare-fun tp!643721 () Bool)

(declare-fun tp!643725 () Bool)

(assert (=> b!2112573 (= e!1343988 (and tp!643721 tp!643725))))

(assert (=> b!2112397 (= tp!643574 e!1343988)))

(assert (= (and b!2112397 ((_ is ElementMatch!5619) (regTwo!11751 r!15329))) b!2112570))

(assert (= (and b!2112397 ((_ is Concat!9921) (regTwo!11751 r!15329))) b!2112571))

(assert (= (and b!2112397 ((_ is Star!5619) (regTwo!11751 r!15329))) b!2112572))

(assert (= (and b!2112397 ((_ is Union!5619) (regTwo!11751 r!15329))) b!2112573))

(declare-fun b!2112574 () Bool)

(declare-fun e!1343990 () Bool)

(declare-fun tp!643728 () Bool)

(assert (=> b!2112574 (= e!1343990 tp!643728)))

(declare-fun setIsEmpty!14128 () Bool)

(declare-fun setRes!14128 () Bool)

(assert (=> setIsEmpty!14128 setRes!14128))

(declare-fun b!2112575 () Bool)

(declare-fun e!1343989 () Bool)

(declare-fun tp!643726 () Bool)

(assert (=> b!2112575 (= e!1343989 tp!643726)))

(declare-fun tp!643730 () Bool)

(declare-fun setNonEmpty!14128 () Bool)

(declare-fun setElem!14128 () Context!2378)

(assert (=> setNonEmpty!14128 (= setRes!14128 (and tp!643730 (inv!31060 setElem!14128) e!1343989))))

(declare-fun setRest!14128 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14128 (= (_2!13270 (h!28877 (zeroValue!2594 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197)))))))) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14128 true) setRest!14128))))

(declare-fun e!1343991 () Bool)

(assert (=> b!2112385 (= tp!643575 e!1343991)))

(declare-fun tp!643729 () Bool)

(declare-fun b!2112576 () Bool)

(declare-fun tp!643727 () Bool)

(assert (=> b!2112576 (= e!1343991 (and tp!643729 (inv!31060 (_2!13269 (_1!13270 (h!28877 (zeroValue!2594 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197)))))))))) e!1343990 tp_is_empty!9427 setRes!14128 tp!643727))))

(declare-fun condSetEmpty!14128 () Bool)

(assert (=> b!2112576 (= condSetEmpty!14128 (= (_2!13270 (h!28877 (zeroValue!2594 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197)))))))) ((as const (Array Context!2378 Bool)) false)))))

(assert (= b!2112576 b!2112574))

(assert (= (and b!2112576 condSetEmpty!14128) setIsEmpty!14128))

(assert (= (and b!2112576 (not condSetEmpty!14128)) setNonEmpty!14128))

(assert (= setNonEmpty!14128 b!2112575))

(assert (= (and b!2112385 ((_ is Cons!23476) (zeroValue!2594 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197)))))))) b!2112576))

(declare-fun m!2569081 () Bool)

(assert (=> setNonEmpty!14128 m!2569081))

(declare-fun m!2569083 () Bool)

(assert (=> b!2112576 m!2569083))

(declare-fun b!2112577 () Bool)

(declare-fun e!1343993 () Bool)

(declare-fun tp!643733 () Bool)

(assert (=> b!2112577 (= e!1343993 tp!643733)))

(declare-fun setIsEmpty!14129 () Bool)

(declare-fun setRes!14129 () Bool)

(assert (=> setIsEmpty!14129 setRes!14129))

(declare-fun b!2112578 () Bool)

(declare-fun e!1343992 () Bool)

(declare-fun tp!643731 () Bool)

(assert (=> b!2112578 (= e!1343992 tp!643731)))

(declare-fun setElem!14129 () Context!2378)

(declare-fun setNonEmpty!14129 () Bool)

(declare-fun tp!643735 () Bool)

(assert (=> setNonEmpty!14129 (= setRes!14129 (and tp!643735 (inv!31060 setElem!14129) e!1343992))))

(declare-fun setRest!14129 () (InoxSet Context!2378))

(assert (=> setNonEmpty!14129 (= (_2!13270 (h!28877 (minValue!2594 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197)))))))) ((_ map or) (store ((as const (Array Context!2378 Bool)) false) setElem!14129 true) setRest!14129))))

(declare-fun e!1343994 () Bool)

(assert (=> b!2112385 (= tp!643563 e!1343994)))

(declare-fun b!2112579 () Bool)

(declare-fun tp!643734 () Bool)

(declare-fun tp!643732 () Bool)

(assert (=> b!2112579 (= e!1343994 (and tp!643734 (inv!31060 (_2!13269 (_1!13270 (h!28877 (minValue!2594 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197)))))))))) e!1343993 tp_is_empty!9427 setRes!14129 tp!643732))))

(declare-fun condSetEmpty!14129 () Bool)

(assert (=> b!2112579 (= condSetEmpty!14129 (= (_2!13270 (h!28877 (minValue!2594 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197)))))))) ((as const (Array Context!2378 Bool)) false)))))

(assert (= b!2112579 b!2112577))

(assert (= (and b!2112579 condSetEmpty!14129) setIsEmpty!14129))

(assert (= (and b!2112579 (not condSetEmpty!14129)) setNonEmpty!14129))

(assert (= setNonEmpty!14129 b!2112578))

(assert (= (and b!2112385 ((_ is Cons!23476) (minValue!2594 (v!27999 (underlying!4867 (v!28000 (underlying!4868 (cache!2631 cacheDown!1197)))))))) b!2112579))

(declare-fun m!2569085 () Bool)

(assert (=> setNonEmpty!14129 m!2569085))

(declare-fun m!2569087 () Bool)

(assert (=> b!2112579 m!2569087))

(declare-fun tp!643738 () Bool)

(declare-fun e!1343995 () Bool)

(declare-fun tp!643737 () Bool)

(declare-fun b!2112580 () Bool)

(assert (=> b!2112580 (= e!1343995 (and (inv!31054 (left!18226 (c!339165 input!6603))) tp!643737 (inv!31054 (right!18556 (c!339165 input!6603))) tp!643738))))

(declare-fun b!2112582 () Bool)

(declare-fun e!1343996 () Bool)

(declare-fun tp!643736 () Bool)

(assert (=> b!2112582 (= e!1343996 tp!643736)))

(declare-fun b!2112581 () Bool)

(assert (=> b!2112581 (= e!1343995 (and (inv!31061 (xs!10704 (c!339165 input!6603))) e!1343996))))

(assert (=> b!2112386 (= tp!643566 (and (inv!31054 (c!339165 input!6603)) e!1343995))))

(assert (= (and b!2112386 ((_ is Node!7762) (c!339165 input!6603))) b!2112580))

(assert (= b!2112581 b!2112582))

(assert (= (and b!2112386 ((_ is Leaf!11339) (c!339165 input!6603))) b!2112581))

(declare-fun m!2569089 () Bool)

(assert (=> b!2112580 m!2569089))

(declare-fun m!2569091 () Bool)

(assert (=> b!2112580 m!2569091))

(declare-fun m!2569093 () Bool)

(assert (=> b!2112581 m!2569093))

(assert (=> b!2112386 m!2568963))

(check-sat (not b!2112458) (not b!2112563) (not mapNonEmpty!11241) (not setNonEmpty!14128) (not d!642399) (not b!2112478) (not b!2112539) (not d!642397) (not b!2112529) (not setNonEmpty!14129) (not b!2112578) (not b_next!61801) (not b!2112455) (not b!2112580) (not b!2112511) (not b!2112491) (not d!642385) (not b!2112446) (not b!2112411) (not b!2112576) (not bm!128486) (not bm!128485) (not setNonEmpty!14124) (not setNonEmpty!14110) (not b!2112582) (not b_next!61805) (not b!2112475) (not b!2112556) (not b!2112488) (not setNonEmpty!14111) tp_is_empty!9427 (not b!2112524) b_and!170677 (not b!2112476) (not b!2112538) (not b!2112574) (not b!2112581) (not d!642389) (not b!2112522) (not b!2112413) (not d!642367) (not b!2112554) (not d!642401) (not setNonEmpty!14125) (not b!2112561) (not d!642373) (not setNonEmpty!14114) (not mapNonEmpty!11238) (not b!2112567) (not b!2112449) (not b!2112573) (not b!2112416) (not b!2112487) (not b!2112510) (not b!2112525) (not b!2112559) (not b!2112512) (not setNonEmpty!14121) (not b!2112579) (not b!2112509) b_and!170683 (not b!2112557) (not setNonEmpty!14115) (not b!2112521) (not b!2112569) (not b!2112568) (not b!2112492) (not b!2112490) (not b!2112564) (not b_next!61803) (not b!2112523) (not b!2112552) (not b!2112565) (not b!2112527) (not b!2112390) (not b!2112575) (not b!2112419) (not setNonEmpty!14126) (not b!2112386) (not setNonEmpty!14120) (not b!2112508) (not setNonEmpty!14127) (not b!2112560) (not b!2112474) (not b!2112489) b_and!170679 (not b!2112558) (not b_next!61807) (not b!2112452) (not b!2112456) (not b!2112528) (not b!2112571) (not b!2112553) (not d!642377) b_and!170681 (not b!2112572) (not b!2112473) (not d!642379) (not b!2112507) (not b!2112477) (not d!642381) (not b!2112526) (not b!2112577) (not b!2112540))
(check-sat (not b_next!61801) (not b_next!61805) b_and!170677 b_and!170683 (not b_next!61803) b_and!170681 b_and!170679 (not b_next!61807))
