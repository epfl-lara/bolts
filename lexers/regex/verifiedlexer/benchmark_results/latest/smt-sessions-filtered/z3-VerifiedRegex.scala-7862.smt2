; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411822 () Bool)

(assert start!411822)

(declare-fun b!4286541 () Bool)

(declare-fun b_free!127079 () Bool)

(declare-fun b_next!127783 () Bool)

(assert (=> b!4286541 (= b_free!127079 (not b_next!127783))))

(declare-fun tp!1312769 () Bool)

(declare-fun b_and!338295 () Bool)

(assert (=> b!4286541 (= tp!1312769 b_and!338295)))

(declare-fun b!4286539 () Bool)

(declare-fun b_free!127081 () Bool)

(declare-fun b_next!127785 () Bool)

(assert (=> b!4286539 (= b_free!127081 (not b_next!127785))))

(declare-fun tp!1312778 () Bool)

(declare-fun b_and!338297 () Bool)

(assert (=> b!4286539 (= tp!1312778 b_and!338297)))

(declare-fun b!4286554 () Bool)

(declare-fun b_free!127083 () Bool)

(declare-fun b_next!127787 () Bool)

(assert (=> b!4286554 (= b_free!127083 (not b_next!127787))))

(declare-fun tp!1312775 () Bool)

(declare-fun b_and!338299 () Bool)

(assert (=> b!4286554 (= tp!1312775 b_and!338299)))

(declare-fun b!4286570 () Bool)

(declare-fun b_free!127085 () Bool)

(declare-fun b_next!127789 () Bool)

(assert (=> b!4286570 (= b_free!127085 (not b_next!127789))))

(declare-fun tp!1312781 () Bool)

(declare-fun b_and!338301 () Bool)

(assert (=> b!4286570 (= tp!1312781 b_and!338301)))

(declare-fun b!4286558 () Bool)

(declare-fun b_free!127087 () Bool)

(declare-fun b_next!127791 () Bool)

(assert (=> b!4286558 (= b_free!127087 (not b_next!127791))))

(declare-fun tp!1312766 () Bool)

(declare-fun b_and!338303 () Bool)

(assert (=> b!4286558 (= tp!1312766 b_and!338303)))

(declare-fun b!4286556 () Bool)

(declare-fun b_free!127089 () Bool)

(declare-fun b_next!127793 () Bool)

(assert (=> b!4286556 (= b_free!127089 (not b_next!127793))))

(declare-fun tp!1312785 () Bool)

(declare-fun b_and!338305 () Bool)

(assert (=> b!4286556 (= tp!1312785 b_and!338305)))

(declare-datatypes ((array!15472 0))(
  ( (array!15473 (arr!6906 (Array (_ BitVec 32) (_ BitVec 64))) (size!34849 (_ BitVec 32))) )
))
(declare-datatypes ((C!26044 0))(
  ( (C!26045 (val!15348 Int)) )
))
(declare-datatypes ((Regex!12923 0))(
  ( (ElementMatch!12923 (c!730156 C!26044)) (Concat!21242 (regOne!26358 Regex!12923) (regTwo!26358 Regex!12923)) (EmptyExpr!12923) (Star!12923 (reg!13252 Regex!12923)) (EmptyLang!12923) (Union!12923 (regOne!26359 Regex!12923) (regTwo!26359 Regex!12923)) )
))
(declare-datatypes ((List!47664 0))(
  ( (Nil!47540) (Cons!47540 (h!52960 Regex!12923) (t!354263 List!47664)) )
))
(declare-datatypes ((Context!5626 0))(
  ( (Context!5627 (exprs!3313 List!47664)) )
))
(declare-datatypes ((tuple3!5368 0))(
  ( (tuple3!5369 (_1!25667 Regex!12923) (_2!25667 Context!5626) (_3!3165 C!26044)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45004 0))(
  ( (tuple2!45005 (_1!25668 tuple3!5368) (_2!25668 (InoxSet Context!5626))) )
))
(declare-datatypes ((List!47665 0))(
  ( (Nil!47541) (Cons!47541 (h!52961 tuple2!45004) (t!354264 List!47665)) )
))
(declare-datatypes ((array!15474 0))(
  ( (array!15475 (arr!6907 (Array (_ BitVec 32) List!47665)) (size!34850 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8632 0))(
  ( (LongMapFixedSize!8633 (defaultEntry!4701 Int) (mask!12747 (_ BitVec 32)) (extraKeys!4565 (_ BitVec 32)) (zeroValue!4575 List!47665) (minValue!4575 List!47665) (_size!8675 (_ BitVec 32)) (_keys!4616 array!15472) (_values!4597 array!15474) (_vacant!4377 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17073 0))(
  ( (Cell!17074 (v!41442 LongMapFixedSize!8632)) )
))
(declare-datatypes ((MutLongMap!4316 0))(
  ( (LongMap!4316 (underlying!8861 Cell!17073)) (MutLongMapExt!4315 (__x!28973 Int)) )
))
(declare-datatypes ((Cell!17075 0))(
  ( (Cell!17076 (v!41443 MutLongMap!4316)) )
))
(declare-datatypes ((Hashable!4232 0))(
  ( (HashableExt!4231 (__x!28974 Int)) )
))
(declare-datatypes ((MutableMap!4222 0))(
  ( (MutableMapExt!4221 (__x!28975 Int)) (HashMap!4222 (underlying!8862 Cell!17075) (hashF!6264 Hashable!4232) (_size!8676 (_ BitVec 32)) (defaultValue!4393 Int)) )
))
(declare-datatypes ((CacheDown!2876 0))(
  ( (CacheDown!2877 (cache!4362 MutableMap!4222)) )
))
(declare-fun cacheDown!1163 () CacheDown!2876)

(declare-fun e!2662008 () Bool)

(declare-fun e!2661987 () Bool)

(declare-fun tp!1312777 () Bool)

(declare-fun tp!1312768 () Bool)

(declare-fun array_inv!4947 (array!15472) Bool)

(declare-fun array_inv!4948 (array!15474) Bool)

(assert (=> b!4286539 (= e!2662008 (and tp!1312778 tp!1312768 tp!1312777 (array_inv!4947 (_keys!4616 (v!41442 (underlying!8861 (v!41443 (underlying!8862 (cache!4362 cacheDown!1163))))))) (array_inv!4948 (_values!4597 (v!41442 (underlying!8861 (v!41443 (underlying!8862 (cache!4362 cacheDown!1163))))))) e!2661987))))

(declare-fun b!4286540 () Bool)

(declare-fun e!2662004 () Bool)

(declare-fun tp!1312790 () Bool)

(declare-fun mapRes!19516 () Bool)

(assert (=> b!4286540 (= e!2662004 (and tp!1312790 mapRes!19516))))

(declare-fun condMapEmpty!19516 () Bool)

(declare-datatypes ((tuple2!45006 0))(
  ( (tuple2!45007 (_1!25669 (InoxSet Context!5626)) (_2!25669 Int)) )
))
(declare-datatypes ((tuple2!45008 0))(
  ( (tuple2!45009 (_1!25670 tuple2!45006) (_2!25670 Int)) )
))
(declare-datatypes ((List!47666 0))(
  ( (Nil!47542) (Cons!47542 (h!52962 tuple2!45008) (t!354265 List!47666)) )
))
(declare-datatypes ((array!15476 0))(
  ( (array!15477 (arr!6908 (Array (_ BitVec 32) List!47666)) (size!34851 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8634 0))(
  ( (LongMapFixedSize!8635 (defaultEntry!4702 Int) (mask!12748 (_ BitVec 32)) (extraKeys!4566 (_ BitVec 32)) (zeroValue!4576 List!47666) (minValue!4576 List!47666) (_size!8677 (_ BitVec 32)) (_keys!4617 array!15472) (_values!4598 array!15476) (_vacant!4378 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17077 0))(
  ( (Cell!17078 (v!41444 LongMapFixedSize!8634)) )
))
(declare-datatypes ((MutLongMap!4317 0))(
  ( (LongMap!4317 (underlying!8863 Cell!17077)) (MutLongMapExt!4316 (__x!28976 Int)) )
))
(declare-datatypes ((Cell!17079 0))(
  ( (Cell!17080 (v!41445 MutLongMap!4317)) )
))
(declare-datatypes ((Hashable!4233 0))(
  ( (HashableExt!4232 (__x!28977 Int)) )
))
(declare-datatypes ((MutableMap!4223 0))(
  ( (MutableMapExt!4222 (__x!28978 Int)) (HashMap!4223 (underlying!8864 Cell!17079) (hashF!6265 Hashable!4233) (_size!8678 (_ BitVec 32)) (defaultValue!4394 Int)) )
))
(declare-datatypes ((List!47667 0))(
  ( (Nil!47543) (Cons!47543 (h!52963 C!26044) (t!354266 List!47667)) )
))
(declare-datatypes ((IArray!28793 0))(
  ( (IArray!28794 (innerList!14454 List!47667)) )
))
(declare-datatypes ((Conc!14366 0))(
  ( (Node!14366 (left!35360 Conc!14366) (right!35690 Conc!14366) (csize!28962 Int) (cheight!14577 Int)) (Leaf!22229 (xs!17672 IArray!28793) (csize!28963 Int)) (Empty!14366) )
))
(declare-datatypes ((BalanceConc!28222 0))(
  ( (BalanceConc!28223 (c!730157 Conc!14366)) )
))
(declare-datatypes ((CacheFindLongestMatch!420 0))(
  ( (CacheFindLongestMatch!421 (cache!4363 MutableMap!4223) (totalInput!4320 BalanceConc!28222)) )
))
(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!420)

(declare-fun mapDefault!19517 () List!47666)

(assert (=> b!4286540 (= condMapEmpty!19516 (= (arr!6908 (_values!4598 (v!41444 (underlying!8863 (v!41445 (underlying!8864 (cache!4363 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47666)) mapDefault!19517)))))

(declare-fun e!2661988 () Bool)

(declare-fun tp!1312767 () Bool)

(declare-fun tp!1312773 () Bool)

(declare-fun array_inv!4949 (array!15476) Bool)

(assert (=> b!4286541 (= e!2661988 (and tp!1312769 tp!1312773 tp!1312767 (array_inv!4947 (_keys!4617 (v!41444 (underlying!8863 (v!41445 (underlying!8864 (cache!4363 cacheFindLongestMatch!199))))))) (array_inv!4949 (_values!4598 (v!41444 (underlying!8863 (v!41445 (underlying!8864 (cache!4363 cacheFindLongestMatch!199))))))) e!2662004))))

(declare-fun b!4286542 () Bool)

(declare-fun e!2662016 () Bool)

(declare-fun e!2662002 () Bool)

(assert (=> b!4286542 (= e!2662016 e!2662002)))

(declare-fun b!4286543 () Bool)

(declare-fun e!2661993 () Bool)

(declare-datatypes ((tuple2!45010 0))(
  ( (tuple2!45011 (_1!25671 BalanceConc!28222) (_2!25671 BalanceConc!28222)) )
))
(declare-fun lt!1516067 () tuple2!45010)

(declare-datatypes ((tuple2!45012 0))(
  ( (tuple2!45013 (_1!25672 List!47667) (_2!25672 List!47667)) )
))
(declare-fun lt!1516060 () tuple2!45012)

(declare-fun list!17333 (BalanceConc!28222) List!47667)

(assert (=> b!4286543 (= e!2661993 (= (list!17333 (_2!25671 lt!1516067)) (_2!25672 lt!1516060)))))

(declare-fun b!4286544 () Bool)

(declare-fun e!2661986 () Bool)

(declare-fun e!2662009 () Bool)

(declare-fun lt!1516063 () MutLongMap!4317)

(get-info :version)

(assert (=> b!4286544 (= e!2661986 (and e!2662009 ((_ is LongMap!4317) lt!1516063)))))

(assert (=> b!4286544 (= lt!1516063 (v!41445 (underlying!8864 (cache!4363 cacheFindLongestMatch!199))))))

(declare-fun mapIsEmpty!19515 () Bool)

(declare-fun mapRes!19517 () Bool)

(assert (=> mapIsEmpty!19515 mapRes!19517))

(declare-fun e!2661997 () Bool)

(declare-fun e!2662005 () Bool)

(declare-fun e!2662012 () Bool)

(declare-fun b!4286545 () Bool)

(declare-fun inv!63002 (BalanceConc!28222) Bool)

(assert (=> b!4286545 (= e!2662012 (and e!2661997 (inv!63002 (totalInput!4320 cacheFindLongestMatch!199)) e!2662005))))

(declare-fun b!4286546 () Bool)

(declare-fun e!2661994 () Bool)

(assert (=> b!4286546 (= e!2661994 e!2662016)))

(declare-fun b!4286547 () Bool)

(declare-fun e!2662014 () Bool)

(assert (=> b!4286547 (= e!2662014 (not true))))

(declare-fun lt!1516065 () List!47667)

(declare-fun sizeTr!329 (List!47667 Int) Int)

(declare-fun size!34852 (List!47667) Int)

(assert (=> b!4286547 (= (sizeTr!329 lt!1516065 0) (size!34852 lt!1516065))))

(declare-datatypes ((Unit!66387 0))(
  ( (Unit!66388) )
))
(declare-fun lt!1516066 () Unit!66387)

(declare-fun lemmaSizeTrEqualsSize!328 (List!47667 Int) Unit!66387)

(assert (=> b!4286547 (= lt!1516066 (lemmaSizeTrEqualsSize!328 lt!1516065 0))))

(assert (=> b!4286547 e!2661993))

(declare-fun res!1758534 () Bool)

(assert (=> b!4286547 (=> (not res!1758534) (not e!2661993))))

(assert (=> b!4286547 (= res!1758534 (= (list!17333 (_1!25671 lt!1516067)) (_1!25672 lt!1516060)))))

(declare-fun r!15285 () Regex!12923)

(declare-fun findLongestMatch!1620 (Regex!12923 List!47667) tuple2!45012)

(assert (=> b!4286547 (= lt!1516060 (findLongestMatch!1620 r!15285 lt!1516065))))

(declare-fun lt!1516064 () (InoxSet Context!5626))

(declare-fun totalInput!1189 () BalanceConc!28222)

(declare-fun input!6546 () BalanceConc!28222)

(declare-fun findLongestMatchZipperFastV2!15 ((InoxSet Context!5626) BalanceConc!28222 BalanceConc!28222) tuple2!45010)

(assert (=> b!4286547 (= lt!1516067 (findLongestMatchZipperFastV2!15 lt!1516064 input!6546 totalInput!1189))))

(declare-fun lt!1516061 () Unit!66387)

(declare-fun longestMatchV2SameAsRegex!14 (Regex!12923 (InoxSet Context!5626) BalanceConc!28222 BalanceConc!28222) Unit!66387)

(assert (=> b!4286547 (= lt!1516061 (longestMatchV2SameAsRegex!14 r!15285 lt!1516064 input!6546 totalInput!1189))))

(declare-fun focus!316 (Regex!12923) (InoxSet Context!5626))

(assert (=> b!4286547 (= lt!1516064 (focus!316 r!15285))))

(declare-fun b!4286548 () Bool)

(declare-fun e!2662003 () Bool)

(declare-fun tp_is_empty!23077 () Bool)

(assert (=> b!4286548 (= e!2662003 tp_is_empty!23077)))

(declare-fun b!4286549 () Bool)

(declare-fun tp!1312772 () Bool)

(declare-fun tp!1312784 () Bool)

(assert (=> b!4286549 (= e!2662003 (and tp!1312772 tp!1312784))))

(declare-fun mapNonEmpty!19515 () Bool)

(declare-fun mapRes!19515 () Bool)

(declare-fun tp!1312792 () Bool)

(declare-fun tp!1312771 () Bool)

(assert (=> mapNonEmpty!19515 (= mapRes!19515 (and tp!1312792 tp!1312771))))

(declare-fun mapKey!19516 () (_ BitVec 32))

(declare-fun mapRest!19515 () (Array (_ BitVec 32) List!47665))

(declare-fun mapValue!19517 () List!47665)

(assert (=> mapNonEmpty!19515 (= (arr!6907 (_values!4597 (v!41442 (underlying!8861 (v!41443 (underlying!8862 (cache!4362 cacheDown!1163))))))) (store mapRest!19515 mapKey!19516 mapValue!19517))))

(declare-fun res!1758530 () Bool)

(declare-fun e!2661996 () Bool)

(assert (=> start!411822 (=> (not res!1758530) (not e!2661996))))

(declare-fun validRegex!5846 (Regex!12923) Bool)

(assert (=> start!411822 (= res!1758530 (validRegex!5846 r!15285))))

(assert (=> start!411822 e!2661996))

(declare-fun e!2661998 () Bool)

(assert (=> start!411822 (and (inv!63002 totalInput!1189) e!2661998)))

(assert (=> start!411822 e!2662003))

(declare-fun e!2661989 () Bool)

(assert (=> start!411822 (and (inv!63002 input!6546) e!2661989)))

(declare-fun inv!63003 (CacheFindLongestMatch!420) Bool)

(assert (=> start!411822 (and (inv!63003 cacheFindLongestMatch!199) e!2662012)))

(declare-fun e!2661995 () Bool)

(declare-fun inv!63004 (CacheDown!2876) Bool)

(assert (=> start!411822 (and (inv!63004 cacheDown!1163) e!2661995)))

(declare-datatypes ((tuple2!45014 0))(
  ( (tuple2!45015 (_1!25673 Context!5626) (_2!25673 C!26044)) )
))
(declare-datatypes ((tuple2!45016 0))(
  ( (tuple2!45017 (_1!25674 tuple2!45014) (_2!25674 (InoxSet Context!5626))) )
))
(declare-datatypes ((List!47668 0))(
  ( (Nil!47544) (Cons!47544 (h!52964 tuple2!45016) (t!354267 List!47668)) )
))
(declare-datatypes ((array!15478 0))(
  ( (array!15479 (arr!6909 (Array (_ BitVec 32) List!47668)) (size!34853 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8636 0))(
  ( (LongMapFixedSize!8637 (defaultEntry!4703 Int) (mask!12749 (_ BitVec 32)) (extraKeys!4567 (_ BitVec 32)) (zeroValue!4577 List!47668) (minValue!4577 List!47668) (_size!8679 (_ BitVec 32)) (_keys!4618 array!15472) (_values!4599 array!15478) (_vacant!4379 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17081 0))(
  ( (Cell!17082 (v!41446 LongMapFixedSize!8636)) )
))
(declare-datatypes ((MutLongMap!4318 0))(
  ( (LongMap!4318 (underlying!8865 Cell!17081)) (MutLongMapExt!4317 (__x!28979 Int)) )
))
(declare-datatypes ((Cell!17083 0))(
  ( (Cell!17084 (v!41447 MutLongMap!4318)) )
))
(declare-datatypes ((Hashable!4234 0))(
  ( (HashableExt!4233 (__x!28980 Int)) )
))
(declare-datatypes ((MutableMap!4224 0))(
  ( (MutableMapExt!4223 (__x!28981 Int)) (HashMap!4224 (underlying!8866 Cell!17083) (hashF!6266 Hashable!4234) (_size!8680 (_ BitVec 32)) (defaultValue!4395 Int)) )
))
(declare-datatypes ((CacheUp!2756 0))(
  ( (CacheUp!2757 (cache!4364 MutableMap!4224)) )
))
(declare-fun cacheUp!1044 () CacheUp!2756)

(declare-fun e!2662006 () Bool)

(declare-fun inv!63005 (CacheUp!2756) Bool)

(assert (=> start!411822 (and (inv!63005 cacheUp!1044) e!2662006)))

(declare-fun b!4286550 () Bool)

(declare-fun e!2662013 () Bool)

(assert (=> b!4286550 (= e!2662006 e!2662013)))

(declare-fun b!4286551 () Bool)

(assert (=> b!4286551 (= e!2661996 e!2662014)))

(declare-fun res!1758533 () Bool)

(assert (=> b!4286551 (=> (not res!1758533) (not e!2662014))))

(declare-fun isSuffix!1018 (List!47667 List!47667) Bool)

(assert (=> b!4286551 (= res!1758533 (isSuffix!1018 lt!1516065 (list!17333 totalInput!1189)))))

(assert (=> b!4286551 (= lt!1516065 (list!17333 input!6546))))

(declare-fun b!4286552 () Bool)

(declare-fun e!2662007 () Bool)

(assert (=> b!4286552 (= e!2662009 e!2662007)))

(declare-fun b!4286553 () Bool)

(declare-fun e!2661991 () Bool)

(declare-fun lt!1516062 () MutLongMap!4318)

(assert (=> b!4286553 (= e!2661991 (and e!2661994 ((_ is LongMap!4318) lt!1516062)))))

(assert (=> b!4286553 (= lt!1516062 (v!41447 (underlying!8866 (cache!4364 cacheUp!1044))))))

(assert (=> b!4286554 (= e!2661997 (and e!2661986 tp!1312775))))

(declare-fun mapNonEmpty!19516 () Bool)

(declare-fun tp!1312787 () Bool)

(declare-fun tp!1312770 () Bool)

(assert (=> mapNonEmpty!19516 (= mapRes!19516 (and tp!1312787 tp!1312770))))

(declare-fun mapKey!19517 () (_ BitVec 32))

(declare-fun mapValue!19515 () List!47666)

(declare-fun mapRest!19516 () (Array (_ BitVec 32) List!47666))

(assert (=> mapNonEmpty!19516 (= (arr!6908 (_values!4598 (v!41444 (underlying!8863 (v!41445 (underlying!8864 (cache!4363 cacheFindLongestMatch!199))))))) (store mapRest!19516 mapKey!19517 mapValue!19515))))

(declare-fun b!4286555 () Bool)

(declare-fun tp!1312783 () Bool)

(declare-fun inv!63006 (Conc!14366) Bool)

(assert (=> b!4286555 (= e!2661989 (and (inv!63006 (c!730157 input!6546)) tp!1312783))))

(assert (=> b!4286556 (= e!2662013 (and e!2661991 tp!1312785))))

(declare-fun mapNonEmpty!19517 () Bool)

(declare-fun tp!1312786 () Bool)

(declare-fun tp!1312789 () Bool)

(assert (=> mapNonEmpty!19517 (= mapRes!19517 (and tp!1312786 tp!1312789))))

(declare-fun mapKey!19515 () (_ BitVec 32))

(declare-fun mapRest!19517 () (Array (_ BitVec 32) List!47668))

(declare-fun mapValue!19516 () List!47668)

(assert (=> mapNonEmpty!19517 (= (arr!6909 (_values!4599 (v!41446 (underlying!8865 (v!41447 (underlying!8866 (cache!4364 cacheUp!1044))))))) (store mapRest!19517 mapKey!19515 mapValue!19516))))

(declare-fun b!4286557 () Bool)

(declare-fun e!2662011 () Bool)

(assert (=> b!4286557 (= e!2662011 e!2662008)))

(declare-fun e!2661992 () Bool)

(declare-fun e!2662000 () Bool)

(assert (=> b!4286558 (= e!2661992 (and e!2662000 tp!1312766))))

(declare-fun mapIsEmpty!19516 () Bool)

(assert (=> mapIsEmpty!19516 mapRes!19516))

(declare-fun b!4286559 () Bool)

(declare-fun res!1758529 () Bool)

(assert (=> b!4286559 (=> (not res!1758529) (not e!2661996))))

(declare-fun valid!3350 (CacheFindLongestMatch!420) Bool)

(assert (=> b!4286559 (= res!1758529 (valid!3350 cacheFindLongestMatch!199))))

(declare-fun b!4286560 () Bool)

(declare-fun res!1758532 () Bool)

(assert (=> b!4286560 (=> (not res!1758532) (not e!2661996))))

(declare-fun valid!3351 (CacheDown!2876) Bool)

(assert (=> b!4286560 (= res!1758532 (valid!3351 cacheDown!1163))))

(declare-fun b!4286561 () Bool)

(declare-fun res!1758528 () Bool)

(assert (=> b!4286561 (=> (not res!1758528) (not e!2661996))))

(declare-fun valid!3352 (CacheUp!2756) Bool)

(assert (=> b!4286561 (= res!1758528 (valid!3352 cacheUp!1044))))

(declare-fun b!4286562 () Bool)

(declare-fun tp!1312779 () Bool)

(assert (=> b!4286562 (= e!2661987 (and tp!1312779 mapRes!19515))))

(declare-fun condMapEmpty!19515 () Bool)

(declare-fun mapDefault!19515 () List!47665)

(assert (=> b!4286562 (= condMapEmpty!19515 (= (arr!6907 (_values!4597 (v!41442 (underlying!8861 (v!41443 (underlying!8862 (cache!4362 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47665)) mapDefault!19515)))))

(declare-fun b!4286563 () Bool)

(assert (=> b!4286563 (= e!2661995 e!2661992)))

(declare-fun b!4286564 () Bool)

(declare-fun e!2661999 () Bool)

(assert (=> b!4286564 (= e!2661999 e!2662011)))

(declare-fun b!4286565 () Bool)

(declare-fun tp!1312780 () Bool)

(assert (=> b!4286565 (= e!2662003 tp!1312780)))

(declare-fun b!4286566 () Bool)

(declare-fun res!1758531 () Bool)

(assert (=> b!4286566 (=> (not res!1758531) (not e!2661996))))

(assert (=> b!4286566 (= res!1758531 (= (totalInput!4320 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun b!4286567 () Bool)

(declare-fun tp!1312774 () Bool)

(assert (=> b!4286567 (= e!2661998 (and (inv!63006 (c!730157 totalInput!1189)) tp!1312774))))

(declare-fun mapIsEmpty!19517 () Bool)

(assert (=> mapIsEmpty!19517 mapRes!19515))

(declare-fun b!4286568 () Bool)

(declare-fun e!2661990 () Bool)

(declare-fun tp!1312765 () Bool)

(assert (=> b!4286568 (= e!2661990 (and tp!1312765 mapRes!19517))))

(declare-fun condMapEmpty!19517 () Bool)

(declare-fun mapDefault!19516 () List!47668)

(assert (=> b!4286568 (= condMapEmpty!19517 (= (arr!6909 (_values!4599 (v!41446 (underlying!8865 (v!41447 (underlying!8866 (cache!4364 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47668)) mapDefault!19516)))))

(declare-fun b!4286569 () Bool)

(declare-fun tp!1312782 () Bool)

(declare-fun tp!1312793 () Bool)

(assert (=> b!4286569 (= e!2662003 (and tp!1312782 tp!1312793))))

(declare-fun tp!1312791 () Bool)

(declare-fun tp!1312788 () Bool)

(declare-fun array_inv!4950 (array!15478) Bool)

(assert (=> b!4286570 (= e!2662002 (and tp!1312781 tp!1312788 tp!1312791 (array_inv!4947 (_keys!4618 (v!41446 (underlying!8865 (v!41447 (underlying!8866 (cache!4364 cacheUp!1044))))))) (array_inv!4950 (_values!4599 (v!41446 (underlying!8865 (v!41447 (underlying!8866 (cache!4364 cacheUp!1044))))))) e!2661990))))

(declare-fun b!4286571 () Bool)

(declare-fun tp!1312776 () Bool)

(assert (=> b!4286571 (= e!2662005 (and (inv!63006 (c!730157 (totalInput!4320 cacheFindLongestMatch!199))) tp!1312776))))

(declare-fun b!4286572 () Bool)

(declare-fun lt!1516059 () MutLongMap!4316)

(assert (=> b!4286572 (= e!2662000 (and e!2661999 ((_ is LongMap!4316) lt!1516059)))))

(assert (=> b!4286572 (= lt!1516059 (v!41443 (underlying!8862 (cache!4362 cacheDown!1163))))))

(declare-fun b!4286573 () Bool)

(assert (=> b!4286573 (= e!2662007 e!2661988)))

(assert (= (and start!411822 res!1758530) b!4286561))

(assert (= (and b!4286561 res!1758528) b!4286560))

(assert (= (and b!4286560 res!1758532) b!4286559))

(assert (= (and b!4286559 res!1758529) b!4286566))

(assert (= (and b!4286566 res!1758531) b!4286551))

(assert (= (and b!4286551 res!1758533) b!4286547))

(assert (= (and b!4286547 res!1758534) b!4286543))

(assert (= start!411822 b!4286567))

(assert (= (and start!411822 ((_ is ElementMatch!12923) r!15285)) b!4286548))

(assert (= (and start!411822 ((_ is Concat!21242) r!15285)) b!4286569))

(assert (= (and start!411822 ((_ is Star!12923) r!15285)) b!4286565))

(assert (= (and start!411822 ((_ is Union!12923) r!15285)) b!4286549))

(assert (= start!411822 b!4286555))

(assert (= (and b!4286540 condMapEmpty!19516) mapIsEmpty!19516))

(assert (= (and b!4286540 (not condMapEmpty!19516)) mapNonEmpty!19516))

(assert (= b!4286541 b!4286540))

(assert (= b!4286573 b!4286541))

(assert (= b!4286552 b!4286573))

(assert (= (and b!4286544 ((_ is LongMap!4317) (v!41445 (underlying!8864 (cache!4363 cacheFindLongestMatch!199))))) b!4286552))

(assert (= b!4286554 b!4286544))

(assert (= (and b!4286545 ((_ is HashMap!4223) (cache!4363 cacheFindLongestMatch!199))) b!4286554))

(assert (= b!4286545 b!4286571))

(assert (= start!411822 b!4286545))

(assert (= (and b!4286562 condMapEmpty!19515) mapIsEmpty!19517))

(assert (= (and b!4286562 (not condMapEmpty!19515)) mapNonEmpty!19515))

(assert (= b!4286539 b!4286562))

(assert (= b!4286557 b!4286539))

(assert (= b!4286564 b!4286557))

(assert (= (and b!4286572 ((_ is LongMap!4316) (v!41443 (underlying!8862 (cache!4362 cacheDown!1163))))) b!4286564))

(assert (= b!4286558 b!4286572))

(assert (= (and b!4286563 ((_ is HashMap!4222) (cache!4362 cacheDown!1163))) b!4286558))

(assert (= start!411822 b!4286563))

(assert (= (and b!4286568 condMapEmpty!19517) mapIsEmpty!19515))

(assert (= (and b!4286568 (not condMapEmpty!19517)) mapNonEmpty!19517))

(assert (= b!4286570 b!4286568))

(assert (= b!4286542 b!4286570))

(assert (= b!4286546 b!4286542))

(assert (= (and b!4286553 ((_ is LongMap!4318) (v!41447 (underlying!8866 (cache!4364 cacheUp!1044))))) b!4286546))

(assert (= b!4286556 b!4286553))

(assert (= (and b!4286550 ((_ is HashMap!4224) (cache!4364 cacheUp!1044))) b!4286556))

(assert (= start!411822 b!4286550))

(declare-fun m!4882125 () Bool)

(assert (=> b!4286541 m!4882125))

(declare-fun m!4882127 () Bool)

(assert (=> b!4286541 m!4882127))

(declare-fun m!4882129 () Bool)

(assert (=> mapNonEmpty!19515 m!4882129))

(declare-fun m!4882131 () Bool)

(assert (=> mapNonEmpty!19517 m!4882131))

(declare-fun m!4882133 () Bool)

(assert (=> b!4286551 m!4882133))

(assert (=> b!4286551 m!4882133))

(declare-fun m!4882135 () Bool)

(assert (=> b!4286551 m!4882135))

(declare-fun m!4882137 () Bool)

(assert (=> b!4286551 m!4882137))

(declare-fun m!4882139 () Bool)

(assert (=> b!4286560 m!4882139))

(declare-fun m!4882141 () Bool)

(assert (=> b!4286543 m!4882141))

(declare-fun m!4882143 () Bool)

(assert (=> b!4286559 m!4882143))

(declare-fun m!4882145 () Bool)

(assert (=> b!4286555 m!4882145))

(declare-fun m!4882147 () Bool)

(assert (=> b!4286571 m!4882147))

(declare-fun m!4882149 () Bool)

(assert (=> b!4286545 m!4882149))

(declare-fun m!4882151 () Bool)

(assert (=> b!4286561 m!4882151))

(declare-fun m!4882153 () Bool)

(assert (=> b!4286539 m!4882153))

(declare-fun m!4882155 () Bool)

(assert (=> b!4286539 m!4882155))

(declare-fun m!4882157 () Bool)

(assert (=> b!4286567 m!4882157))

(declare-fun m!4882159 () Bool)

(assert (=> b!4286570 m!4882159))

(declare-fun m!4882161 () Bool)

(assert (=> b!4286570 m!4882161))

(declare-fun m!4882163 () Bool)

(assert (=> start!411822 m!4882163))

(declare-fun m!4882165 () Bool)

(assert (=> start!411822 m!4882165))

(declare-fun m!4882167 () Bool)

(assert (=> start!411822 m!4882167))

(declare-fun m!4882169 () Bool)

(assert (=> start!411822 m!4882169))

(declare-fun m!4882171 () Bool)

(assert (=> start!411822 m!4882171))

(declare-fun m!4882173 () Bool)

(assert (=> start!411822 m!4882173))

(declare-fun m!4882175 () Bool)

(assert (=> b!4286547 m!4882175))

(declare-fun m!4882177 () Bool)

(assert (=> b!4286547 m!4882177))

(declare-fun m!4882179 () Bool)

(assert (=> b!4286547 m!4882179))

(declare-fun m!4882181 () Bool)

(assert (=> b!4286547 m!4882181))

(declare-fun m!4882183 () Bool)

(assert (=> b!4286547 m!4882183))

(declare-fun m!4882185 () Bool)

(assert (=> b!4286547 m!4882185))

(declare-fun m!4882187 () Bool)

(assert (=> b!4286547 m!4882187))

(declare-fun m!4882189 () Bool)

(assert (=> b!4286547 m!4882189))

(declare-fun m!4882191 () Bool)

(assert (=> mapNonEmpty!19516 m!4882191))

(check-sat (not b!4286568) (not b!4286543) (not b_next!127791) b_and!338305 (not b!4286540) (not mapNonEmpty!19517) (not b_next!127793) (not b!4286559) b_and!338301 (not b!4286547) (not b!4286567) (not b_next!127785) (not mapNonEmpty!19515) (not b!4286561) (not mapNonEmpty!19516) (not b!4286539) (not b!4286571) b_and!338299 (not b!4286562) (not b!4286569) (not b!4286551) b_and!338303 (not b_next!127787) (not b!4286565) (not b!4286549) tp_is_empty!23077 (not b!4286545) (not b!4286555) (not b_next!127783) (not b!4286560) (not b!4286570) (not start!411822) (not b!4286541) b_and!338297 (not b_next!127789) b_and!338295)
(check-sat (not b_next!127785) (not b_next!127791) b_and!338305 b_and!338299 (not b_next!127793) (not b_next!127783) b_and!338301 b_and!338297 b_and!338303 (not b_next!127787) (not b_next!127789) b_and!338295)
