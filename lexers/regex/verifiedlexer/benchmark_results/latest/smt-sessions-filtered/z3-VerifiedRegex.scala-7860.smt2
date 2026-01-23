; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411814 () Bool)

(assert start!411814)

(declare-fun b!4286156 () Bool)

(declare-fun b_free!127031 () Bool)

(declare-fun b_next!127735 () Bool)

(assert (=> b!4286156 (= b_free!127031 (not b_next!127735))))

(declare-fun tp!1312432 () Bool)

(declare-fun b_and!338247 () Bool)

(assert (=> b!4286156 (= tp!1312432 b_and!338247)))

(declare-fun b!4286134 () Bool)

(declare-fun b_free!127033 () Bool)

(declare-fun b_next!127737 () Bool)

(assert (=> b!4286134 (= b_free!127033 (not b_next!127737))))

(declare-fun tp!1312433 () Bool)

(declare-fun b_and!338249 () Bool)

(assert (=> b!4286134 (= tp!1312433 b_and!338249)))

(declare-fun b!4286152 () Bool)

(declare-fun b_free!127035 () Bool)

(declare-fun b_next!127739 () Bool)

(assert (=> b!4286152 (= b_free!127035 (not b_next!127739))))

(declare-fun tp!1312442 () Bool)

(declare-fun b_and!338251 () Bool)

(assert (=> b!4286152 (= tp!1312442 b_and!338251)))

(declare-fun b!4286138 () Bool)

(declare-fun b_free!127037 () Bool)

(declare-fun b_next!127741 () Bool)

(assert (=> b!4286138 (= b_free!127037 (not b_next!127741))))

(declare-fun tp!1312429 () Bool)

(declare-fun b_and!338253 () Bool)

(assert (=> b!4286138 (= tp!1312429 b_and!338253)))

(declare-fun b!4286144 () Bool)

(declare-fun b_free!127039 () Bool)

(declare-fun b_next!127743 () Bool)

(assert (=> b!4286144 (= b_free!127039 (not b_next!127743))))

(declare-fun tp!1312441 () Bool)

(declare-fun b_and!338255 () Bool)

(assert (=> b!4286144 (= tp!1312441 b_and!338255)))

(declare-fun b!4286148 () Bool)

(declare-fun b_free!127041 () Bool)

(declare-fun b_next!127745 () Bool)

(assert (=> b!4286148 (= b_free!127041 (not b_next!127745))))

(declare-fun tp!1312431 () Bool)

(declare-fun b_and!338257 () Bool)

(assert (=> b!4286148 (= tp!1312431 b_and!338257)))

(declare-fun b!4286127 () Bool)

(declare-fun e!2661650 () Bool)

(declare-fun e!2661632 () Bool)

(declare-datatypes ((C!26036 0))(
  ( (C!26037 (val!15344 Int)) )
))
(declare-datatypes ((Regex!12919 0))(
  ( (ElementMatch!12919 (c!730148 C!26036)) (Concat!21238 (regOne!26350 Regex!12919) (regTwo!26350 Regex!12919)) (EmptyExpr!12919) (Star!12919 (reg!13248 Regex!12919)) (EmptyLang!12919) (Union!12919 (regOne!26351 Regex!12919) (regTwo!26351 Regex!12919)) )
))
(declare-datatypes ((List!47644 0))(
  ( (Nil!47520) (Cons!47520 (h!52940 Regex!12919) (t!354243 List!47644)) )
))
(declare-datatypes ((Context!5618 0))(
  ( (Context!5619 (exprs!3309 List!47644)) )
))
(declare-datatypes ((tuple2!44970 0))(
  ( (tuple2!44971 (_1!25647 Context!5618) (_2!25647 C!26036)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44972 0))(
  ( (tuple2!44973 (_1!25648 tuple2!44970) (_2!25648 (InoxSet Context!5618))) )
))
(declare-datatypes ((List!47645 0))(
  ( (Nil!47521) (Cons!47521 (h!52941 tuple2!44972) (t!354244 List!47645)) )
))
(declare-datatypes ((array!15444 0))(
  ( (array!15445 (arr!6892 (Array (_ BitVec 32) List!47645)) (size!34835 (_ BitVec 32))) )
))
(declare-datatypes ((array!15446 0))(
  ( (array!15447 (arr!6893 (Array (_ BitVec 32) (_ BitVec 64))) (size!34836 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8612 0))(
  ( (LongMapFixedSize!8613 (defaultEntry!4691 Int) (mask!12735 (_ BitVec 32)) (extraKeys!4555 (_ BitVec 32)) (zeroValue!4565 List!47645) (minValue!4565 List!47645) (_size!8655 (_ BitVec 32)) (_keys!4606 array!15446) (_values!4587 array!15444) (_vacant!4367 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17033 0))(
  ( (Cell!17034 (v!41422 LongMapFixedSize!8612)) )
))
(declare-datatypes ((MutLongMap!4306 0))(
  ( (LongMap!4306 (underlying!8841 Cell!17033)) (MutLongMapExt!4305 (__x!28943 Int)) )
))
(declare-fun lt!1515986 () MutLongMap!4306)

(get-info :version)

(assert (=> b!4286127 (= e!2661650 (and e!2661632 ((_ is LongMap!4306) lt!1515986)))))

(declare-datatypes ((Cell!17035 0))(
  ( (Cell!17036 (v!41423 MutLongMap!4306)) )
))
(declare-datatypes ((Hashable!4222 0))(
  ( (HashableExt!4221 (__x!28944 Int)) )
))
(declare-datatypes ((MutableMap!4212 0))(
  ( (MutableMapExt!4211 (__x!28945 Int)) (HashMap!4212 (underlying!8842 Cell!17035) (hashF!6254 Hashable!4222) (_size!8656 (_ BitVec 32)) (defaultValue!4383 Int)) )
))
(declare-datatypes ((CacheUp!2750 0))(
  ( (CacheUp!2751 (cache!4352 MutableMap!4212)) )
))
(declare-fun cacheUp!1044 () CacheUp!2750)

(assert (=> b!4286127 (= lt!1515986 (v!41423 (underlying!8842 (cache!4352 cacheUp!1044))))))

(declare-fun b!4286128 () Bool)

(declare-fun e!2661644 () Bool)

(declare-fun e!2661649 () Bool)

(assert (=> b!4286128 (= e!2661644 e!2661649)))

(declare-fun b!4286129 () Bool)

(declare-fun e!2661654 () Bool)

(declare-fun tp_is_empty!23069 () Bool)

(assert (=> b!4286129 (= e!2661654 tp_is_empty!23069)))

(declare-fun b!4286130 () Bool)

(declare-fun e!2661645 () Bool)

(declare-fun tp!1312421 () Bool)

(declare-fun mapRes!19479 () Bool)

(assert (=> b!4286130 (= e!2661645 (and tp!1312421 mapRes!19479))))

(declare-fun condMapEmpty!19480 () Bool)

(declare-fun mapDefault!19479 () List!47645)

(assert (=> b!4286130 (= condMapEmpty!19480 (= (arr!6892 (_values!4587 (v!41422 (underlying!8841 (v!41423 (underlying!8842 (cache!4352 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47645)) mapDefault!19479)))))

(declare-fun b!4286131 () Bool)

(declare-fun res!1758456 () Bool)

(declare-fun e!2661633 () Bool)

(assert (=> b!4286131 (=> (not res!1758456) (not e!2661633))))

(declare-datatypes ((tuple2!44974 0))(
  ( (tuple2!44975 (_1!25649 (InoxSet Context!5618)) (_2!25649 Int)) )
))
(declare-datatypes ((tuple2!44976 0))(
  ( (tuple2!44977 (_1!25650 tuple2!44974) (_2!25650 Int)) )
))
(declare-datatypes ((List!47646 0))(
  ( (Nil!47522) (Cons!47522 (h!52942 tuple2!44976) (t!354245 List!47646)) )
))
(declare-datatypes ((array!15448 0))(
  ( (array!15449 (arr!6894 (Array (_ BitVec 32) List!47646)) (size!34837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8614 0))(
  ( (LongMapFixedSize!8615 (defaultEntry!4692 Int) (mask!12736 (_ BitVec 32)) (extraKeys!4556 (_ BitVec 32)) (zeroValue!4566 List!47646) (minValue!4566 List!47646) (_size!8657 (_ BitVec 32)) (_keys!4607 array!15446) (_values!4588 array!15448) (_vacant!4368 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17037 0))(
  ( (Cell!17038 (v!41424 LongMapFixedSize!8614)) )
))
(declare-datatypes ((MutLongMap!4307 0))(
  ( (LongMap!4307 (underlying!8843 Cell!17037)) (MutLongMapExt!4306 (__x!28946 Int)) )
))
(declare-datatypes ((Cell!17039 0))(
  ( (Cell!17040 (v!41425 MutLongMap!4307)) )
))
(declare-datatypes ((Hashable!4223 0))(
  ( (HashableExt!4222 (__x!28947 Int)) )
))
(declare-datatypes ((MutableMap!4213 0))(
  ( (MutableMapExt!4212 (__x!28948 Int)) (HashMap!4213 (underlying!8844 Cell!17039) (hashF!6255 Hashable!4223) (_size!8658 (_ BitVec 32)) (defaultValue!4384 Int)) )
))
(declare-datatypes ((List!47647 0))(
  ( (Nil!47523) (Cons!47523 (h!52943 C!26036) (t!354246 List!47647)) )
))
(declare-datatypes ((IArray!28785 0))(
  ( (IArray!28786 (innerList!14450 List!47647)) )
))
(declare-datatypes ((Conc!14362 0))(
  ( (Node!14362 (left!35354 Conc!14362) (right!35684 Conc!14362) (csize!28954 Int) (cheight!14573 Int)) (Leaf!22223 (xs!17668 IArray!28785) (csize!28955 Int)) (Empty!14362) )
))
(declare-datatypes ((BalanceConc!28214 0))(
  ( (BalanceConc!28215 (c!730149 Conc!14362)) )
))
(declare-datatypes ((CacheFindLongestMatch!412 0))(
  ( (CacheFindLongestMatch!413 (cache!4353 MutableMap!4213) (totalInput!4316 BalanceConc!28214)) )
))
(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!412)

(declare-fun totalInput!1189 () BalanceConc!28214)

(assert (=> b!4286131 (= res!1758456 (= (totalInput!4316 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun b!4286132 () Bool)

(declare-fun tp!1312418 () Bool)

(assert (=> b!4286132 (= e!2661654 tp!1312418)))

(declare-fun b!4286133 () Bool)

(declare-fun res!1758455 () Bool)

(assert (=> b!4286133 (=> (not res!1758455) (not e!2661633))))

(declare-fun valid!3344 (CacheUp!2750) Bool)

(assert (=> b!4286133 (= res!1758455 (valid!3344 cacheUp!1044))))

(declare-fun mapNonEmpty!19479 () Bool)

(declare-fun tp!1312419 () Bool)

(declare-fun tp!1312423 () Bool)

(assert (=> mapNonEmpty!19479 (= mapRes!19479 (and tp!1312419 tp!1312423))))

(declare-fun mapKey!19479 () (_ BitVec 32))

(declare-fun mapValue!19481 () List!47645)

(declare-fun mapRest!19480 () (Array (_ BitVec 32) List!47645))

(assert (=> mapNonEmpty!19479 (= (arr!6892 (_values!4587 (v!41422 (underlying!8841 (v!41423 (underlying!8842 (cache!4352 cacheUp!1044))))))) (store mapRest!19480 mapKey!19479 mapValue!19481))))

(declare-fun e!2661642 () Bool)

(declare-fun e!2661630 () Bool)

(assert (=> b!4286134 (= e!2661642 (and e!2661630 tp!1312433))))

(declare-fun b!4286135 () Bool)

(declare-fun e!2661648 () Bool)

(declare-fun e!2661638 () Bool)

(assert (=> b!4286135 (= e!2661648 e!2661638)))

(declare-fun b!4286136 () Bool)

(declare-fun tp!1312424 () Bool)

(declare-fun tp!1312427 () Bool)

(assert (=> b!4286136 (= e!2661654 (and tp!1312424 tp!1312427))))

(declare-fun mapIsEmpty!19479 () Bool)

(declare-fun mapRes!19481 () Bool)

(assert (=> mapIsEmpty!19479 mapRes!19481))

(declare-fun e!2661646 () Bool)

(declare-fun b!4286137 () Bool)

(declare-fun e!2661655 () Bool)

(declare-fun inv!62980 (BalanceConc!28214) Bool)

(assert (=> b!4286137 (= e!2661646 (and e!2661642 (inv!62980 (totalInput!4316 cacheFindLongestMatch!199)) e!2661655))))

(declare-fun tp!1312422 () Bool)

(declare-fun tp!1312420 () Bool)

(declare-fun array_inv!4937 (array!15446) Bool)

(declare-fun array_inv!4938 (array!15444) Bool)

(assert (=> b!4286138 (= e!2661638 (and tp!1312429 tp!1312422 tp!1312420 (array_inv!4937 (_keys!4606 (v!41422 (underlying!8841 (v!41423 (underlying!8842 (cache!4352 cacheUp!1044))))))) (array_inv!4938 (_values!4587 (v!41422 (underlying!8841 (v!41423 (underlying!8842 (cache!4352 cacheUp!1044))))))) e!2661645))))

(declare-fun b!4286139 () Bool)

(declare-fun res!1758452 () Bool)

(assert (=> b!4286139 (=> (not res!1758452) (not e!2661633))))

(declare-fun valid!3345 (CacheFindLongestMatch!412) Bool)

(assert (=> b!4286139 (= res!1758452 (valid!3345 cacheFindLongestMatch!199))))

(declare-fun b!4286140 () Bool)

(declare-fun tp!1312444 () Bool)

(declare-fun inv!62981 (Conc!14362) Bool)

(assert (=> b!4286140 (= e!2661655 (and (inv!62981 (c!730149 (totalInput!4316 cacheFindLongestMatch!199))) tp!1312444))))

(declare-fun b!4286141 () Bool)

(declare-fun e!2661647 () Bool)

(declare-fun tp!1312443 () Bool)

(assert (=> b!4286141 (= e!2661647 (and (inv!62981 (c!730149 totalInput!1189)) tp!1312443))))

(declare-fun b!4286142 () Bool)

(declare-fun e!2661653 () Bool)

(declare-fun tp!1312428 () Bool)

(assert (=> b!4286142 (= e!2661653 (and tp!1312428 mapRes!19481))))

(declare-fun condMapEmpty!19479 () Bool)

(declare-datatypes ((tuple3!5362 0))(
  ( (tuple3!5363 (_1!25651 Regex!12919) (_2!25651 Context!5618) (_3!3162 C!26036)) )
))
(declare-datatypes ((tuple2!44978 0))(
  ( (tuple2!44979 (_1!25652 tuple3!5362) (_2!25652 (InoxSet Context!5618))) )
))
(declare-datatypes ((List!47648 0))(
  ( (Nil!47524) (Cons!47524 (h!52944 tuple2!44978) (t!354247 List!47648)) )
))
(declare-datatypes ((array!15450 0))(
  ( (array!15451 (arr!6895 (Array (_ BitVec 32) List!47648)) (size!34838 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8616 0))(
  ( (LongMapFixedSize!8617 (defaultEntry!4693 Int) (mask!12737 (_ BitVec 32)) (extraKeys!4557 (_ BitVec 32)) (zeroValue!4567 List!47648) (minValue!4567 List!47648) (_size!8659 (_ BitVec 32)) (_keys!4608 array!15446) (_values!4589 array!15450) (_vacant!4369 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17041 0))(
  ( (Cell!17042 (v!41426 LongMapFixedSize!8616)) )
))
(declare-datatypes ((MutLongMap!4308 0))(
  ( (LongMap!4308 (underlying!8845 Cell!17041)) (MutLongMapExt!4307 (__x!28949 Int)) )
))
(declare-datatypes ((Cell!17043 0))(
  ( (Cell!17044 (v!41427 MutLongMap!4308)) )
))
(declare-datatypes ((Hashable!4224 0))(
  ( (HashableExt!4223 (__x!28950 Int)) )
))
(declare-datatypes ((MutableMap!4214 0))(
  ( (MutableMapExt!4213 (__x!28951 Int)) (HashMap!4214 (underlying!8846 Cell!17043) (hashF!6256 Hashable!4224) (_size!8660 (_ BitVec 32)) (defaultValue!4385 Int)) )
))
(declare-datatypes ((CacheDown!2870 0))(
  ( (CacheDown!2871 (cache!4354 MutableMap!4214)) )
))
(declare-fun cacheDown!1163 () CacheDown!2870)

(declare-fun mapDefault!19480 () List!47648)

(assert (=> b!4286142 (= condMapEmpty!19479 (= (arr!6895 (_values!4589 (v!41426 (underlying!8845 (v!41427 (underlying!8846 (cache!4354 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47648)) mapDefault!19480)))))

(declare-fun b!4286143 () Bool)

(declare-fun lt!1515989 () MutLongMap!4307)

(assert (=> b!4286143 (= e!2661630 (and e!2661644 ((_ is LongMap!4307) lt!1515989)))))

(assert (=> b!4286143 (= lt!1515989 (v!41425 (underlying!8844 (cache!4353 cacheFindLongestMatch!199))))))

(declare-fun e!2661634 () Bool)

(declare-fun tp!1312440 () Bool)

(declare-fun e!2661651 () Bool)

(declare-fun tp!1312417 () Bool)

(declare-fun array_inv!4939 (array!15448) Bool)

(assert (=> b!4286144 (= e!2661634 (and tp!1312441 tp!1312417 tp!1312440 (array_inv!4937 (_keys!4607 (v!41424 (underlying!8843 (v!41425 (underlying!8844 (cache!4353 cacheFindLongestMatch!199))))))) (array_inv!4939 (_values!4588 (v!41424 (underlying!8843 (v!41425 (underlying!8844 (cache!4353 cacheFindLongestMatch!199))))))) e!2661651))))

(declare-fun b!4286145 () Bool)

(assert (=> b!4286145 (= e!2661633 false)))

(declare-fun lt!1515987 () Bool)

(declare-fun input!6546 () BalanceConc!28214)

(declare-fun isSuffix!1016 (List!47647 List!47647) Bool)

(declare-fun list!17331 (BalanceConc!28214) List!47647)

(assert (=> b!4286145 (= lt!1515987 (isSuffix!1016 (list!17331 input!6546) (list!17331 totalInput!1189)))))

(declare-fun b!4286146 () Bool)

(declare-fun tp!1312445 () Bool)

(declare-fun tp!1312434 () Bool)

(assert (=> b!4286146 (= e!2661654 (and tp!1312445 tp!1312434))))

(declare-fun b!4286147 () Bool)

(declare-fun res!1758453 () Bool)

(assert (=> b!4286147 (=> (not res!1758453) (not e!2661633))))

(declare-fun valid!3346 (CacheDown!2870) Bool)

(assert (=> b!4286147 (= res!1758453 (valid!3346 cacheDown!1163))))

(declare-fun e!2661629 () Bool)

(assert (=> b!4286148 (= e!2661629 (and e!2661650 tp!1312431))))

(declare-fun b!4286149 () Bool)

(declare-fun e!2661656 () Bool)

(declare-fun e!2661631 () Bool)

(assert (=> b!4286149 (= e!2661656 e!2661631)))

(declare-fun b!4286150 () Bool)

(declare-fun tp!1312426 () Bool)

(declare-fun mapRes!19480 () Bool)

(assert (=> b!4286150 (= e!2661651 (and tp!1312426 mapRes!19480))))

(declare-fun condMapEmpty!19481 () Bool)

(declare-fun mapDefault!19481 () List!47646)

(assert (=> b!4286150 (= condMapEmpty!19481 (= (arr!6894 (_values!4588 (v!41424 (underlying!8843 (v!41425 (underlying!8844 (cache!4353 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47646)) mapDefault!19481)))))

(declare-fun b!4286151 () Bool)

(declare-fun e!2661636 () Bool)

(declare-fun e!2661640 () Bool)

(assert (=> b!4286151 (= e!2661636 e!2661640)))

(declare-fun res!1758454 () Bool)

(assert (=> start!411814 (=> (not res!1758454) (not e!2661633))))

(declare-fun r!15285 () Regex!12919)

(declare-fun validRegex!5843 (Regex!12919) Bool)

(assert (=> start!411814 (= res!1758454 (validRegex!5843 r!15285))))

(assert (=> start!411814 e!2661633))

(assert (=> start!411814 (and (inv!62980 totalInput!1189) e!2661647)))

(assert (=> start!411814 e!2661654))

(declare-fun e!2661635 () Bool)

(assert (=> start!411814 (and (inv!62980 input!6546) e!2661635)))

(declare-fun inv!62982 (CacheFindLongestMatch!412) Bool)

(assert (=> start!411814 (and (inv!62982 cacheFindLongestMatch!199) e!2661646)))

(declare-fun inv!62983 (CacheDown!2870) Bool)

(assert (=> start!411814 (and (inv!62983 cacheDown!1163) e!2661656)))

(declare-fun e!2661652 () Bool)

(declare-fun inv!62984 (CacheUp!2750) Bool)

(assert (=> start!411814 (and (inv!62984 cacheUp!1044) e!2661652)))

(declare-fun mapIsEmpty!19480 () Bool)

(assert (=> mapIsEmpty!19480 mapRes!19479))

(declare-fun tp!1312430 () Bool)

(declare-fun tp!1312437 () Bool)

(declare-fun array_inv!4940 (array!15450) Bool)

(assert (=> b!4286152 (= e!2661640 (and tp!1312442 tp!1312430 tp!1312437 (array_inv!4937 (_keys!4608 (v!41426 (underlying!8845 (v!41427 (underlying!8846 (cache!4354 cacheDown!1163))))))) (array_inv!4940 (_values!4589 (v!41426 (underlying!8845 (v!41427 (underlying!8846 (cache!4354 cacheDown!1163))))))) e!2661653))))

(declare-fun mapNonEmpty!19480 () Bool)

(declare-fun tp!1312425 () Bool)

(declare-fun tp!1312436 () Bool)

(assert (=> mapNonEmpty!19480 (= mapRes!19481 (and tp!1312425 tp!1312436))))

(declare-fun mapKey!19480 () (_ BitVec 32))

(declare-fun mapValue!19480 () List!47648)

(declare-fun mapRest!19481 () (Array (_ BitVec 32) List!47648))

(assert (=> mapNonEmpty!19480 (= (arr!6895 (_values!4589 (v!41426 (underlying!8845 (v!41427 (underlying!8846 (cache!4354 cacheDown!1163))))))) (store mapRest!19481 mapKey!19480 mapValue!19480))))

(declare-fun b!4286153 () Bool)

(declare-fun e!2661628 () Bool)

(declare-fun e!2661643 () Bool)

(declare-fun lt!1515988 () MutLongMap!4308)

(assert (=> b!4286153 (= e!2661628 (and e!2661643 ((_ is LongMap!4308) lt!1515988)))))

(assert (=> b!4286153 (= lt!1515988 (v!41427 (underlying!8846 (cache!4354 cacheDown!1163))))))

(declare-fun b!4286154 () Bool)

(assert (=> b!4286154 (= e!2661652 e!2661629)))

(declare-fun mapIsEmpty!19481 () Bool)

(assert (=> mapIsEmpty!19481 mapRes!19480))

(declare-fun mapNonEmpty!19481 () Bool)

(declare-fun tp!1312435 () Bool)

(declare-fun tp!1312439 () Bool)

(assert (=> mapNonEmpty!19481 (= mapRes!19480 (and tp!1312435 tp!1312439))))

(declare-fun mapRest!19479 () (Array (_ BitVec 32) List!47646))

(declare-fun mapValue!19479 () List!47646)

(declare-fun mapKey!19481 () (_ BitVec 32))

(assert (=> mapNonEmpty!19481 (= (arr!6894 (_values!4588 (v!41424 (underlying!8843 (v!41425 (underlying!8844 (cache!4353 cacheFindLongestMatch!199))))))) (store mapRest!19479 mapKey!19481 mapValue!19479))))

(declare-fun b!4286155 () Bool)

(assert (=> b!4286155 (= e!2661649 e!2661634)))

(assert (=> b!4286156 (= e!2661631 (and e!2661628 tp!1312432))))

(declare-fun b!4286157 () Bool)

(assert (=> b!4286157 (= e!2661632 e!2661648)))

(declare-fun b!4286158 () Bool)

(assert (=> b!4286158 (= e!2661643 e!2661636)))

(declare-fun b!4286159 () Bool)

(declare-fun tp!1312438 () Bool)

(assert (=> b!4286159 (= e!2661635 (and (inv!62981 (c!730149 input!6546)) tp!1312438))))

(assert (= (and start!411814 res!1758454) b!4286133))

(assert (= (and b!4286133 res!1758455) b!4286147))

(assert (= (and b!4286147 res!1758453) b!4286139))

(assert (= (and b!4286139 res!1758452) b!4286131))

(assert (= (and b!4286131 res!1758456) b!4286145))

(assert (= start!411814 b!4286141))

(assert (= (and start!411814 ((_ is ElementMatch!12919) r!15285)) b!4286129))

(assert (= (and start!411814 ((_ is Concat!21238) r!15285)) b!4286146))

(assert (= (and start!411814 ((_ is Star!12919) r!15285)) b!4286132))

(assert (= (and start!411814 ((_ is Union!12919) r!15285)) b!4286136))

(assert (= start!411814 b!4286159))

(assert (= (and b!4286150 condMapEmpty!19481) mapIsEmpty!19481))

(assert (= (and b!4286150 (not condMapEmpty!19481)) mapNonEmpty!19481))

(assert (= b!4286144 b!4286150))

(assert (= b!4286155 b!4286144))

(assert (= b!4286128 b!4286155))

(assert (= (and b!4286143 ((_ is LongMap!4307) (v!41425 (underlying!8844 (cache!4353 cacheFindLongestMatch!199))))) b!4286128))

(assert (= b!4286134 b!4286143))

(assert (= (and b!4286137 ((_ is HashMap!4213) (cache!4353 cacheFindLongestMatch!199))) b!4286134))

(assert (= b!4286137 b!4286140))

(assert (= start!411814 b!4286137))

(assert (= (and b!4286142 condMapEmpty!19479) mapIsEmpty!19479))

(assert (= (and b!4286142 (not condMapEmpty!19479)) mapNonEmpty!19480))

(assert (= b!4286152 b!4286142))

(assert (= b!4286151 b!4286152))

(assert (= b!4286158 b!4286151))

(assert (= (and b!4286153 ((_ is LongMap!4308) (v!41427 (underlying!8846 (cache!4354 cacheDown!1163))))) b!4286158))

(assert (= b!4286156 b!4286153))

(assert (= (and b!4286149 ((_ is HashMap!4214) (cache!4354 cacheDown!1163))) b!4286156))

(assert (= start!411814 b!4286149))

(assert (= (and b!4286130 condMapEmpty!19480) mapIsEmpty!19480))

(assert (= (and b!4286130 (not condMapEmpty!19480)) mapNonEmpty!19479))

(assert (= b!4286138 b!4286130))

(assert (= b!4286135 b!4286138))

(assert (= b!4286157 b!4286135))

(assert (= (and b!4286127 ((_ is LongMap!4306) (v!41423 (underlying!8842 (cache!4352 cacheUp!1044))))) b!4286157))

(assert (= b!4286148 b!4286127))

(assert (= (and b!4286154 ((_ is HashMap!4212) (cache!4352 cacheUp!1044))) b!4286148))

(assert (= start!411814 b!4286154))

(declare-fun m!4881895 () Bool)

(assert (=> b!4286137 m!4881895))

(declare-fun m!4881897 () Bool)

(assert (=> b!4286140 m!4881897))

(declare-fun m!4881899 () Bool)

(assert (=> b!4286133 m!4881899))

(declare-fun m!4881901 () Bool)

(assert (=> b!4286152 m!4881901))

(declare-fun m!4881903 () Bool)

(assert (=> b!4286152 m!4881903))

(declare-fun m!4881905 () Bool)

(assert (=> mapNonEmpty!19481 m!4881905))

(declare-fun m!4881907 () Bool)

(assert (=> b!4286144 m!4881907))

(declare-fun m!4881909 () Bool)

(assert (=> b!4286144 m!4881909))

(declare-fun m!4881911 () Bool)

(assert (=> b!4286147 m!4881911))

(declare-fun m!4881913 () Bool)

(assert (=> start!411814 m!4881913))

(declare-fun m!4881915 () Bool)

(assert (=> start!411814 m!4881915))

(declare-fun m!4881917 () Bool)

(assert (=> start!411814 m!4881917))

(declare-fun m!4881919 () Bool)

(assert (=> start!411814 m!4881919))

(declare-fun m!4881921 () Bool)

(assert (=> start!411814 m!4881921))

(declare-fun m!4881923 () Bool)

(assert (=> start!411814 m!4881923))

(declare-fun m!4881925 () Bool)

(assert (=> b!4286138 m!4881925))

(declare-fun m!4881927 () Bool)

(assert (=> b!4286138 m!4881927))

(declare-fun m!4881929 () Bool)

(assert (=> b!4286139 m!4881929))

(declare-fun m!4881931 () Bool)

(assert (=> b!4286159 m!4881931))

(declare-fun m!4881933 () Bool)

(assert (=> b!4286141 m!4881933))

(declare-fun m!4881935 () Bool)

(assert (=> mapNonEmpty!19479 m!4881935))

(declare-fun m!4881937 () Bool)

(assert (=> b!4286145 m!4881937))

(declare-fun m!4881939 () Bool)

(assert (=> b!4286145 m!4881939))

(assert (=> b!4286145 m!4881937))

(assert (=> b!4286145 m!4881939))

(declare-fun m!4881941 () Bool)

(assert (=> b!4286145 m!4881941))

(declare-fun m!4881943 () Bool)

(assert (=> mapNonEmpty!19480 m!4881943))

(check-sat b_and!338251 (not b!4286152) (not b!4286144) (not b!4286137) (not b_next!127739) (not b_next!127745) (not mapNonEmpty!19479) (not b!4286138) (not b!4286150) (not b!4286146) (not b!4286141) (not b!4286142) (not b_next!127737) tp_is_empty!23069 (not b_next!127741) b_and!338255 (not b!4286147) (not b_next!127735) (not b!4286159) (not b!4286140) (not mapNonEmpty!19481) b_and!338257 (not b!4286145) (not b!4286139) (not start!411814) (not b!4286133) b_and!338247 b_and!338253 (not b!4286136) (not mapNonEmpty!19480) (not b!4286130) (not b_next!127743) b_and!338249 (not b!4286132))
(check-sat b_and!338251 (not b_next!127737) (not b_next!127741) b_and!338255 (not b_next!127735) b_and!338257 (not b_next!127739) (not b_next!127745) (not b_next!127743) b_and!338249 b_and!338247 b_and!338253)
