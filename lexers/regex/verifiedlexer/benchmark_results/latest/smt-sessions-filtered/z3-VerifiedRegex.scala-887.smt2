; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46616 () Bool)

(assert start!46616)

(declare-fun b_free!13427 () Bool)

(declare-fun b_next!13427 () Bool)

(assert (=> start!46616 (= b_free!13427 (not b_next!13427))))

(declare-fun tp!160392 () Bool)

(declare-fun b_and!50863 () Bool)

(assert (=> start!46616 (= tp!160392 b_and!50863)))

(declare-fun b!514491 () Bool)

(declare-fun b_free!13429 () Bool)

(declare-fun b_next!13429 () Bool)

(assert (=> b!514491 (= b_free!13429 (not b_next!13429))))

(declare-fun tp!160396 () Bool)

(declare-fun b_and!50865 () Bool)

(assert (=> b!514491 (= tp!160396 b_and!50865)))

(declare-fun b!514498 () Bool)

(declare-fun b_free!13431 () Bool)

(declare-fun b_next!13431 () Bool)

(assert (=> b!514498 (= b_free!13431 (not b_next!13431))))

(declare-fun tp!160389 () Bool)

(declare-fun b_and!50867 () Bool)

(assert (=> b!514498 (= tp!160389 b_and!50867)))

(declare-fun e!307584 () Bool)

(declare-fun e!307580 () Bool)

(assert (=> b!514491 (= e!307584 (and e!307580 tp!160396))))

(declare-fun b!514492 () Bool)

(declare-fun e!307589 () Bool)

(assert (=> b!514492 (= e!307589 (not true))))

(declare-datatypes ((K!1352 0))(
  ( (K!1353 (val!1745 Int)) )
))
(declare-datatypes ((V!1450 0))(
  ( (V!1451 (val!1746 Int)) )
))
(declare-datatypes ((tuple2!5654 0))(
  ( (tuple2!5655 (_1!3043 K!1352) (_2!3043 V!1450)) )
))
(declare-datatypes ((List!4694 0))(
  ( (Nil!4684) (Cons!4684 (h!10081 tuple2!5654) (t!73226 List!4694)) )
))
(declare-datatypes ((ListMap!143 0))(
  ( (ListMap!144 (toList!387 List!4694)) )
))
(declare-fun lt!213094 () ListMap!143)

(declare-fun p!6060 () Int)

(declare-fun forall!1371 (List!4694 Int) Bool)

(assert (=> b!514492 (forall!1371 (toList!387 lt!213094) p!6060)))

(declare-datatypes ((Unit!8465 0))(
  ( (Unit!8466) )
))
(declare-fun lt!213095 () Unit!8465)

(declare-fun lt!213098 () ListMap!143)

(declare-fun lemmaForallSubset!4 (List!4694 List!4694 Int) Unit!8465)

(assert (=> b!514492 (= lt!213095 (lemmaForallSubset!4 (toList!387 lt!213094) (toList!387 lt!213098) p!6060))))

(declare-fun b!514493 () Bool)

(declare-fun res!218166 () Bool)

(assert (=> b!514493 (=> (not res!218166) (not e!307589))))

(declare-datatypes ((array!1895 0))(
  ( (array!1896 (arr!874 (Array (_ BitVec 32) List!4694)) (size!3808 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!467 0))(
  ( (HashableExt!466 (__x!3376 Int)) )
))
(declare-datatypes ((array!1897 0))(
  ( (array!1898 (arr!875 (Array (_ BitVec 32) (_ BitVec 64))) (size!3809 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!990 0))(
  ( (LongMapFixedSize!991 (defaultEntry!846 Int) (mask!1907 (_ BitVec 32)) (extraKeys!741 (_ BitVec 32)) (zeroValue!751 List!4694) (minValue!751 List!4694) (_size!1099 (_ BitVec 32)) (_keys!786 array!1897) (_values!773 array!1895) (_vacant!556 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1921 0))(
  ( (Cell!1922 (v!15707 LongMapFixedSize!990)) )
))
(declare-datatypes ((MutLongMap!495 0))(
  ( (LongMap!495 (underlying!1169 Cell!1921)) (MutLongMapExt!494 (__x!3377 Int)) )
))
(declare-datatypes ((Cell!1923 0))(
  ( (Cell!1924 (v!15708 MutLongMap!495)) )
))
(declare-datatypes ((MutableMap!467 0))(
  ( (MutableMapExt!466 (__x!3378 Int)) (HashMap!467 (underlying!1170 Cell!1923) (hashF!2343 Hashable!467) (_size!1100 (_ BitVec 32)) (defaultValue!616 Int)) )
))
(declare-datatypes ((tuple2!5656 0))(
  ( (tuple2!5657 (_1!3044 Bool) (_2!3044 MutableMap!467)) )
))
(declare-fun lt!213099 () tuple2!5656)

(assert (=> b!514493 (= res!218166 (_1!3044 lt!213099))))

(declare-fun b!514494 () Bool)

(declare-fun res!218162 () Bool)

(assert (=> b!514494 (=> (not res!218162) (not e!307589))))

(declare-fun lt!213097 () ListMap!143)

(declare-fun eq!15 (ListMap!143 ListMap!143) Bool)

(assert (=> b!514494 (= res!218162 (eq!15 lt!213097 lt!213094))))

(declare-fun b!514495 () Bool)

(declare-fun res!218160 () Bool)

(declare-fun e!307588 () Bool)

(assert (=> b!514495 (=> (not res!218160) (not e!307588))))

(declare-fun hm!65 () MutableMap!467)

(declare-fun valid!451 (MutableMap!467) Bool)

(assert (=> b!514495 (= res!218160 (valid!451 hm!65))))

(declare-fun b!514496 () Bool)

(declare-fun e!307579 () Bool)

(declare-fun e!307585 () Bool)

(assert (=> b!514496 (= e!307579 e!307585)))

(declare-fun b!514497 () Bool)

(declare-fun e!307587 () Bool)

(assert (=> b!514497 (= e!307587 e!307579)))

(declare-fun mapIsEmpty!1909 () Bool)

(declare-fun mapRes!1909 () Bool)

(assert (=> mapIsEmpty!1909 mapRes!1909))

(declare-fun tp!160391 () Bool)

(declare-fun tp!160394 () Bool)

(declare-fun e!307583 () Bool)

(declare-fun array_inv!635 (array!1897) Bool)

(declare-fun array_inv!636 (array!1895) Bool)

(assert (=> b!514498 (= e!307585 (and tp!160389 tp!160394 tp!160391 (array_inv!635 (_keys!786 (v!15707 (underlying!1169 (v!15708 (underlying!1170 hm!65)))))) (array_inv!636 (_values!773 (v!15707 (underlying!1169 (v!15708 (underlying!1170 hm!65)))))) e!307583))))

(declare-fun b!514499 () Bool)

(declare-fun e!307586 () Bool)

(assert (=> b!514499 (= e!307586 e!307589)))

(declare-fun res!218163 () Bool)

(assert (=> b!514499 (=> (not res!218163) (not e!307589))))

(declare-fun invariantList!51 (List!4694) Bool)

(assert (=> b!514499 (= res!218163 (invariantList!51 (toList!387 lt!213097)))))

(declare-fun map!994 (MutableMap!467) ListMap!143)

(assert (=> b!514499 (= lt!213097 (map!994 (_2!3044 lt!213099)))))

(declare-fun b!514500 () Bool)

(declare-fun e!307581 () Bool)

(assert (=> b!514500 (= e!307581 e!307586)))

(declare-fun res!218161 () Bool)

(assert (=> b!514500 (=> (not res!218161) (not e!307586))))

(assert (=> b!514500 (= res!218161 (valid!451 (_2!3044 lt!213099)))))

(declare-fun k0!1740 () K!1352)

(declare-fun remove!19 (MutableMap!467 K!1352) tuple2!5656)

(assert (=> b!514500 (= lt!213099 (remove!19 hm!65 k0!1740))))

(declare-fun -!16 (ListMap!143 K!1352) ListMap!143)

(assert (=> b!514500 (= lt!213094 (-!16 lt!213098 k0!1740))))

(declare-fun b!514501 () Bool)

(declare-fun lt!213096 () MutLongMap!495)

(get-info :version)

(assert (=> b!514501 (= e!307580 (and e!307587 ((_ is LongMap!495) lt!213096)))))

(assert (=> b!514501 (= lt!213096 (v!15708 (underlying!1170 hm!65)))))

(declare-fun b!514502 () Bool)

(assert (=> b!514502 (= e!307588 e!307581)))

(declare-fun res!218164 () Bool)

(assert (=> b!514502 (=> (not res!218164) (not e!307581))))

(assert (=> b!514502 (= res!218164 (forall!1371 (toList!387 lt!213098) p!6060))))

(assert (=> b!514502 (= lt!213098 (map!994 hm!65))))

(declare-fun mapNonEmpty!1909 () Bool)

(declare-fun tp!160395 () Bool)

(declare-fun tp!160393 () Bool)

(assert (=> mapNonEmpty!1909 (= mapRes!1909 (and tp!160395 tp!160393))))

(declare-fun mapKey!1909 () (_ BitVec 32))

(declare-fun mapValue!1909 () List!4694)

(declare-fun mapRest!1909 () (Array (_ BitVec 32) List!4694))

(assert (=> mapNonEmpty!1909 (= (arr!874 (_values!773 (v!15707 (underlying!1169 (v!15708 (underlying!1170 hm!65)))))) (store mapRest!1909 mapKey!1909 mapValue!1909))))

(declare-fun res!218165 () Bool)

(assert (=> start!46616 (=> (not res!218165) (not e!307588))))

(assert (=> start!46616 (= res!218165 ((_ is HashMap!467) hm!65))))

(assert (=> start!46616 e!307588))

(assert (=> start!46616 e!307584))

(assert (=> start!46616 tp!160392))

(declare-fun tp_is_empty!2559 () Bool)

(assert (=> start!46616 tp_is_empty!2559))

(declare-fun b!514503 () Bool)

(declare-fun tp!160390 () Bool)

(assert (=> b!514503 (= e!307583 (and tp!160390 mapRes!1909))))

(declare-fun condMapEmpty!1909 () Bool)

(declare-fun mapDefault!1909 () List!4694)

(assert (=> b!514503 (= condMapEmpty!1909 (= (arr!874 (_values!773 (v!15707 (underlying!1169 (v!15708 (underlying!1170 hm!65)))))) ((as const (Array (_ BitVec 32) List!4694)) mapDefault!1909)))))

(assert (= (and start!46616 res!218165) b!514495))

(assert (= (and b!514495 res!218160) b!514502))

(assert (= (and b!514502 res!218164) b!514500))

(assert (= (and b!514500 res!218161) b!514499))

(assert (= (and b!514499 res!218163) b!514493))

(assert (= (and b!514493 res!218166) b!514494))

(assert (= (and b!514494 res!218162) b!514492))

(assert (= (and b!514503 condMapEmpty!1909) mapIsEmpty!1909))

(assert (= (and b!514503 (not condMapEmpty!1909)) mapNonEmpty!1909))

(assert (= b!514498 b!514503))

(assert (= b!514496 b!514498))

(assert (= b!514497 b!514496))

(assert (= (and b!514501 ((_ is LongMap!495) (v!15708 (underlying!1170 hm!65)))) b!514497))

(assert (= b!514491 b!514501))

(assert (= (and start!46616 ((_ is HashMap!467) hm!65)) b!514491))

(declare-fun m!760539 () Bool)

(assert (=> b!514499 m!760539))

(declare-fun m!760541 () Bool)

(assert (=> b!514499 m!760541))

(declare-fun m!760543 () Bool)

(assert (=> b!514498 m!760543))

(declare-fun m!760545 () Bool)

(assert (=> b!514498 m!760545))

(declare-fun m!760547 () Bool)

(assert (=> b!514495 m!760547))

(declare-fun m!760549 () Bool)

(assert (=> b!514492 m!760549))

(declare-fun m!760551 () Bool)

(assert (=> b!514492 m!760551))

(declare-fun m!760553 () Bool)

(assert (=> b!514502 m!760553))

(declare-fun m!760555 () Bool)

(assert (=> b!514502 m!760555))

(declare-fun m!760557 () Bool)

(assert (=> mapNonEmpty!1909 m!760557))

(declare-fun m!760559 () Bool)

(assert (=> b!514494 m!760559))

(declare-fun m!760561 () Bool)

(assert (=> b!514500 m!760561))

(declare-fun m!760563 () Bool)

(assert (=> b!514500 m!760563))

(declare-fun m!760565 () Bool)

(assert (=> b!514500 m!760565))

(check-sat (not b!514499) (not b!514495) (not b_next!13429) (not b!514498) (not b!514500) b_and!50867 (not b!514494) b_and!50863 (not mapNonEmpty!1909) tp_is_empty!2559 (not b!514502) (not b_next!13431) (not b!514503) b_and!50865 (not b_next!13427) (not b!514492))
(check-sat b_and!50863 (not b_next!13429) (not b_next!13431) b_and!50865 b_and!50867 (not b_next!13427))
