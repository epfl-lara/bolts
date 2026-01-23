; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206670 () Bool)

(assert start!206670)

(declare-fun b!2116289 () Bool)

(declare-fun b_free!61349 () Bool)

(declare-fun b_next!62053 () Bool)

(assert (=> b!2116289 (= b_free!61349 (not b_next!62053))))

(declare-fun tp!646007 () Bool)

(declare-fun b_and!170929 () Bool)

(assert (=> b!2116289 (= tp!646007 b_and!170929)))

(declare-fun b!2116319 () Bool)

(declare-fun b_free!61351 () Bool)

(declare-fun b_next!62055 () Bool)

(assert (=> b!2116319 (= b_free!61351 (not b_next!62055))))

(declare-fun tp!646002 () Bool)

(declare-fun b_and!170931 () Bool)

(assert (=> b!2116319 (= tp!646002 b_and!170931)))

(declare-fun b!2116300 () Bool)

(declare-fun b_free!61353 () Bool)

(declare-fun b_next!62057 () Bool)

(assert (=> b!2116300 (= b_free!61353 (not b_next!62057))))

(declare-fun tp!645995 () Bool)

(declare-fun b_and!170933 () Bool)

(assert (=> b!2116300 (= tp!645995 b_and!170933)))

(declare-fun b!2116296 () Bool)

(declare-fun b_free!61355 () Bool)

(declare-fun b_next!62059 () Bool)

(assert (=> b!2116296 (= b_free!61355 (not b_next!62059))))

(declare-fun tp!645982 () Bool)

(declare-fun b_and!170935 () Bool)

(assert (=> b!2116296 (= tp!645982 b_and!170935)))

(declare-fun b!2116303 () Bool)

(declare-fun b_free!61357 () Bool)

(declare-fun b_next!62061 () Bool)

(assert (=> b!2116303 (= b_free!61357 (not b_next!62061))))

(declare-fun tp!646004 () Bool)

(declare-fun b_and!170937 () Bool)

(assert (=> b!2116303 (= tp!646004 b_and!170937)))

(declare-fun b!2116317 () Bool)

(declare-fun b_free!61359 () Bool)

(declare-fun b_next!62063 () Bool)

(assert (=> b!2116317 (= b_free!61359 (not b_next!62063))))

(declare-fun tp!645993 () Bool)

(declare-fun b_and!170939 () Bool)

(assert (=> b!2116317 (= tp!645993 b_and!170939)))

(declare-fun b!2116288 () Bool)

(declare-fun e!1347025 () Bool)

(declare-fun e!1347020 () Bool)

(assert (=> b!2116288 (= e!1347025 e!1347020)))

(declare-fun tp!645989 () Bool)

(declare-fun e!1347034 () Bool)

(declare-fun tp!645998 () Bool)

(declare-fun e!1347013 () Bool)

(declare-datatypes ((Hashable!2301 0))(
  ( (HashableExt!2300 (__x!15337 Int)) )
))
(declare-datatypes ((C!11428 0))(
  ( (C!11429 (val!6700 Int)) )
))
(declare-datatypes ((Regex!5641 0))(
  ( (ElementMatch!5641 (c!339356 C!11428)) (Concat!9943 (regOne!11794 Regex!5641) (regTwo!11794 Regex!5641)) (EmptyExpr!5641) (Star!5641 (reg!5970 Regex!5641)) (EmptyLang!5641) (Union!5641 (regOne!11795 Regex!5641) (regTwo!11795 Regex!5641)) )
))
(declare-datatypes ((List!23662 0))(
  ( (Nil!23578) (Cons!23578 (h!28979 Regex!5641) (t!196171 List!23662)) )
))
(declare-datatypes ((Context!2422 0))(
  ( (Context!2423 (exprs!1711 List!23662)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!2800 0))(
  ( (tuple3!2801 (_1!13420 (InoxSet Context!2422)) (_2!13420 Int) (_3!1869 Int)) )
))
(declare-datatypes ((tuple2!23102 0))(
  ( (tuple2!23103 (_1!13421 tuple3!2800) (_2!13421 Int)) )
))
(declare-datatypes ((List!23663 0))(
  ( (Nil!23579) (Cons!23579 (h!28980 tuple2!23102) (t!196172 List!23663)) )
))
(declare-datatypes ((array!8223 0))(
  ( (array!8224 (arr!3649 (Array (_ BitVec 32) List!23663)) (size!18414 (_ BitVec 32))) )
))
(declare-datatypes ((array!8225 0))(
  ( (array!8226 (arr!3650 (Array (_ BitVec 32) (_ BitVec 64))) (size!18415 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4774 0))(
  ( (LongMapFixedSize!4775 (defaultEntry!2752 Int) (mask!6523 (_ BitVec 32)) (extraKeys!2635 (_ BitVec 32)) (zeroValue!2645 List!23663) (minValue!2645 List!23663) (_size!4825 (_ BitVec 32)) (_keys!2684 array!8225) (_values!2667 array!8223) (_vacant!2448 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9373 0))(
  ( (Cell!9374 (v!28103 LongMapFixedSize!4774)) )
))
(declare-datatypes ((MutLongMap!2387 0))(
  ( (LongMap!2387 (underlying!4969 Cell!9373)) (MutLongMapExt!2386 (__x!15338 Int)) )
))
(declare-datatypes ((List!23664 0))(
  ( (Nil!23580) (Cons!23580 (h!28981 C!11428) (t!196173 List!23664)) )
))
(declare-datatypes ((IArray!15567 0))(
  ( (IArray!15568 (innerList!7841 List!23664)) )
))
(declare-datatypes ((Conc!7781 0))(
  ( (Node!7781 (left!18272 Conc!7781) (right!18602 Conc!7781) (csize!15792 Int) (cheight!7992 Int)) (Leaf!11369 (xs!10723 IArray!15567) (csize!15793 Int)) (Empty!7781) )
))
(declare-datatypes ((Cell!9375 0))(
  ( (Cell!9376 (v!28104 MutLongMap!2387)) )
))
(declare-datatypes ((MutableMap!2301 0))(
  ( (MutableMapExt!2300 (__x!15339 Int)) (HashMap!2301 (underlying!4970 Cell!9375) (hashF!4224 Hashable!2301) (_size!4826 (_ BitVec 32)) (defaultValue!2463 Int)) )
))
(declare-datatypes ((BalanceConc!15324 0))(
  ( (BalanceConc!15325 (c!339357 Conc!7781)) )
))
(declare-datatypes ((CacheFurthestNullable!556 0))(
  ( (CacheFurthestNullable!557 (cache!2682 MutableMap!2301) (totalInput!2859 BalanceConc!15324)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!556)

(declare-fun array_inv!2619 (array!8225) Bool)

(declare-fun array_inv!2620 (array!8223) Bool)

(assert (=> b!2116289 (= e!1347034 (and tp!646007 tp!645989 tp!645998 (array_inv!2619 (_keys!2684 (v!28103 (underlying!4969 (v!28104 (underlying!4970 (cache!2682 cacheFurthestNullable!141))))))) (array_inv!2620 (_values!2667 (v!28103 (underlying!4969 (v!28104 (underlying!4970 (cache!2682 cacheFurthestNullable!141))))))) e!1347013))))

(declare-fun b!2116290 () Bool)

(declare-fun e!1347039 () Bool)

(declare-fun e!1347032 () Bool)

(assert (=> b!2116290 (= e!1347039 e!1347032)))

(declare-fun b!2116291 () Bool)

(assert (=> b!2116291 (= e!1347032 e!1347034)))

(declare-fun b!2116292 () Bool)

(declare-fun e!1347031 () Bool)

(declare-fun tp!645990 () Bool)

(declare-fun mapRes!11517 () Bool)

(assert (=> b!2116292 (= e!1347031 (and tp!645990 mapRes!11517))))

(declare-fun condMapEmpty!11519 () Bool)

(declare-datatypes ((tuple2!23104 0))(
  ( (tuple2!23105 (_1!13422 Context!2422) (_2!13422 C!11428)) )
))
(declare-datatypes ((tuple2!23106 0))(
  ( (tuple2!23107 (_1!13423 tuple2!23104) (_2!13423 (InoxSet Context!2422))) )
))
(declare-datatypes ((List!23665 0))(
  ( (Nil!23581) (Cons!23581 (h!28982 tuple2!23106) (t!196174 List!23665)) )
))
(declare-datatypes ((array!8227 0))(
  ( (array!8228 (arr!3651 (Array (_ BitVec 32) List!23665)) (size!18416 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2302 0))(
  ( (HashableExt!2301 (__x!15340 Int)) )
))
(declare-datatypes ((LongMapFixedSize!4776 0))(
  ( (LongMapFixedSize!4777 (defaultEntry!2753 Int) (mask!6524 (_ BitVec 32)) (extraKeys!2636 (_ BitVec 32)) (zeroValue!2646 List!23665) (minValue!2646 List!23665) (_size!4827 (_ BitVec 32)) (_keys!2685 array!8225) (_values!2668 array!8227) (_vacant!2449 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9377 0))(
  ( (Cell!9378 (v!28105 LongMapFixedSize!4776)) )
))
(declare-datatypes ((MutLongMap!2388 0))(
  ( (LongMap!2388 (underlying!4971 Cell!9377)) (MutLongMapExt!2387 (__x!15341 Int)) )
))
(declare-datatypes ((Cell!9379 0))(
  ( (Cell!9380 (v!28106 MutLongMap!2388)) )
))
(declare-datatypes ((MutableMap!2302 0))(
  ( (MutableMapExt!2301 (__x!15342 Int)) (HashMap!2302 (underlying!4972 Cell!9379) (hashF!4225 Hashable!2302) (_size!4828 (_ BitVec 32)) (defaultValue!2464 Int)) )
))
(declare-datatypes ((CacheUp!1590 0))(
  ( (CacheUp!1591 (cache!2683 MutableMap!2302)) )
))
(declare-fun cacheUp!1110 () CacheUp!1590)

(declare-fun mapDefault!11517 () List!23665)

(assert (=> b!2116292 (= condMapEmpty!11519 (= (arr!3651 (_values!2668 (v!28105 (underlying!4971 (v!28106 (underlying!4972 (cache!2683 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23665)) mapDefault!11517)))))

(declare-fun b!2116293 () Bool)

(declare-fun e!1347019 () Bool)

(declare-fun tp!646009 () Bool)

(assert (=> b!2116293 (= e!1347019 tp!646009)))

(declare-fun b!2116294 () Bool)

(declare-fun e!1347028 () Bool)

(declare-fun lt!793772 () MutLongMap!2388)

(get-info :version)

(assert (=> b!2116294 (= e!1347028 (and e!1347025 ((_ is LongMap!2388) lt!793772)))))

(assert (=> b!2116294 (= lt!793772 (v!28106 (underlying!4972 (cache!2683 cacheUp!1110))))))

(declare-fun mapIsEmpty!11517 () Bool)

(assert (=> mapIsEmpty!11517 mapRes!11517))

(declare-fun b!2116295 () Bool)

(declare-fun e!1347038 () Bool)

(declare-fun input!6660 () BalanceConc!15324)

(declare-fun tp!646006 () Bool)

(declare-fun inv!31155 (Conc!7781) Bool)

(assert (=> b!2116295 (= e!1347038 (and (inv!31155 (c!339357 input!6660)) tp!646006))))

(declare-fun e!1347021 () Bool)

(assert (=> b!2116296 (= e!1347021 (and e!1347028 tp!645982))))

(declare-fun b!2116297 () Bool)

(declare-fun tp!646003 () Bool)

(declare-fun tp!645988 () Bool)

(assert (=> b!2116297 (= e!1347019 (and tp!646003 tp!645988))))

(declare-fun b!2116298 () Bool)

(declare-fun e!1347022 () Bool)

(declare-fun e!1347029 () Bool)

(declare-datatypes ((tuple3!2802 0))(
  ( (tuple3!2803 (_1!13424 Regex!5641) (_2!13424 Context!2422) (_3!1870 C!11428)) )
))
(declare-datatypes ((tuple2!23108 0))(
  ( (tuple2!23109 (_1!13425 tuple3!2802) (_2!13425 (InoxSet Context!2422))) )
))
(declare-datatypes ((List!23666 0))(
  ( (Nil!23582) (Cons!23582 (h!28983 tuple2!23108) (t!196175 List!23666)) )
))
(declare-datatypes ((array!8229 0))(
  ( (array!8230 (arr!3652 (Array (_ BitVec 32) List!23666)) (size!18417 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4778 0))(
  ( (LongMapFixedSize!4779 (defaultEntry!2754 Int) (mask!6525 (_ BitVec 32)) (extraKeys!2637 (_ BitVec 32)) (zeroValue!2647 List!23666) (minValue!2647 List!23666) (_size!4829 (_ BitVec 32)) (_keys!2686 array!8225) (_values!2669 array!8229) (_vacant!2450 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9381 0))(
  ( (Cell!9382 (v!28107 LongMapFixedSize!4778)) )
))
(declare-datatypes ((MutLongMap!2389 0))(
  ( (LongMap!2389 (underlying!4973 Cell!9381)) (MutLongMapExt!2388 (__x!15343 Int)) )
))
(declare-fun lt!793773 () MutLongMap!2389)

(assert (=> b!2116298 (= e!1347022 (and e!1347029 ((_ is LongMap!2389) lt!793773)))))

(declare-datatypes ((Hashable!2303 0))(
  ( (HashableExt!2302 (__x!15344 Int)) )
))
(declare-datatypes ((Cell!9383 0))(
  ( (Cell!9384 (v!28108 MutLongMap!2389)) )
))
(declare-datatypes ((MutableMap!2303 0))(
  ( (MutableMapExt!2302 (__x!15345 Int)) (HashMap!2303 (underlying!4974 Cell!9383) (hashF!4226 Hashable!2303) (_size!4830 (_ BitVec 32)) (defaultValue!2465 Int)) )
))
(declare-datatypes ((CacheDown!1580 0))(
  ( (CacheDown!1581 (cache!2684 MutableMap!2303)) )
))
(declare-fun cacheDown!1229 () CacheDown!1580)

(assert (=> b!2116298 (= lt!793773 (v!28108 (underlying!4974 (cache!2684 cacheDown!1229))))))

(declare-fun b!2116299 () Bool)

(declare-fun e!1347030 () Bool)

(declare-fun tp!646010 () Bool)

(declare-fun mapRes!11518 () Bool)

(assert (=> b!2116299 (= e!1347030 (and tp!646010 mapRes!11518))))

(declare-fun condMapEmpty!11518 () Bool)

(declare-fun mapDefault!11519 () List!23666)

(assert (=> b!2116299 (= condMapEmpty!11518 (= (arr!3652 (_values!2669 (v!28107 (underlying!4973 (v!28108 (underlying!4974 (cache!2684 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23666)) mapDefault!11519)))))

(declare-fun e!1347036 () Bool)

(declare-fun e!1347027 () Bool)

(assert (=> b!2116300 (= e!1347036 (and e!1347027 tp!645995))))

(declare-fun b!2116301 () Bool)

(declare-fun tp_is_empty!9471 () Bool)

(assert (=> b!2116301 (= e!1347019 tp_is_empty!9471)))

(declare-fun b!2116302 () Bool)

(declare-fun res!918047 () Bool)

(declare-fun e!1347023 () Bool)

(assert (=> b!2116302 (=> (not res!918047) (not e!1347023))))

(declare-fun valid!1879 (CacheUp!1590) Bool)

(assert (=> b!2116302 (= res!918047 (valid!1879 cacheUp!1110))))

(declare-fun tp!645991 () Bool)

(declare-fun tp!646000 () Bool)

(declare-fun e!1347040 () Bool)

(declare-fun array_inv!2621 (array!8229) Bool)

(assert (=> b!2116303 (= e!1347040 (and tp!646004 tp!645991 tp!646000 (array_inv!2619 (_keys!2686 (v!28107 (underlying!4973 (v!28108 (underlying!4974 (cache!2684 cacheDown!1229))))))) (array_inv!2621 (_values!2669 (v!28107 (underlying!4973 (v!28108 (underlying!4974 (cache!2684 cacheDown!1229))))))) e!1347030))))

(declare-fun mapNonEmpty!11517 () Bool)

(declare-fun tp!646008 () Bool)

(declare-fun tp!645994 () Bool)

(assert (=> mapNonEmpty!11517 (= mapRes!11518 (and tp!646008 tp!645994))))

(declare-fun mapRest!11518 () (Array (_ BitVec 32) List!23666))

(declare-fun mapValue!11519 () List!23666)

(declare-fun mapKey!11518 () (_ BitVec 32))

(assert (=> mapNonEmpty!11517 (= (arr!3652 (_values!2669 (v!28107 (underlying!4973 (v!28108 (underlying!4974 (cache!2684 cacheDown!1229))))))) (store mapRest!11518 mapKey!11518 mapValue!11519))))

(declare-fun b!2116304 () Bool)

(declare-fun e!1347035 () Bool)

(assert (=> b!2116304 (= e!1347020 e!1347035)))

(declare-fun e!1347012 () Bool)

(declare-fun e!1347018 () Bool)

(declare-fun b!2116287 () Bool)

(declare-fun inv!31156 (BalanceConc!15324) Bool)

(assert (=> b!2116287 (= e!1347012 (and e!1347036 (inv!31156 (totalInput!2859 cacheFurthestNullable!141)) e!1347018))))

(declare-fun res!918049 () Bool)

(assert (=> start!206670 (=> (not res!918049) (not e!1347023))))

(declare-fun r!15373 () Regex!5641)

(declare-fun validRegex!2227 (Regex!5641) Bool)

(assert (=> start!206670 (= res!918049 (validRegex!2227 r!15373))))

(assert (=> start!206670 e!1347023))

(declare-fun e!1347026 () Bool)

(declare-fun inv!31157 (CacheDown!1580) Bool)

(assert (=> start!206670 (and (inv!31157 cacheDown!1229) e!1347026)))

(assert (=> start!206670 e!1347019))

(declare-fun e!1347014 () Bool)

(declare-fun inv!31158 (CacheUp!1590) Bool)

(assert (=> start!206670 (and (inv!31158 cacheUp!1110) e!1347014)))

(assert (=> start!206670 (and (inv!31156 input!6660) e!1347038)))

(declare-fun totalInput!1306 () BalanceConc!15324)

(declare-fun e!1347033 () Bool)

(assert (=> start!206670 (and (inv!31156 totalInput!1306) e!1347033)))

(declare-fun inv!31159 (CacheFurthestNullable!556) Bool)

(assert (=> start!206670 (and (inv!31159 cacheFurthestNullable!141) e!1347012)))

(declare-fun b!2116305 () Bool)

(declare-fun tp!645986 () Bool)

(assert (=> b!2116305 (= e!1347018 (and (inv!31155 (c!339357 (totalInput!2859 cacheFurthestNullable!141))) tp!645986))))

(declare-fun b!2116306 () Bool)

(declare-fun lt!793770 () MutLongMap!2387)

(assert (=> b!2116306 (= e!1347027 (and e!1347039 ((_ is LongMap!2387) lt!793770)))))

(assert (=> b!2116306 (= lt!793770 (v!28104 (underlying!4970 (cache!2682 cacheFurthestNullable!141))))))

(declare-fun b!2116307 () Bool)

(declare-fun tp!645999 () Bool)

(assert (=> b!2116307 (= e!1347033 (and (inv!31155 (c!339357 totalInput!1306)) tp!645999))))

(declare-fun b!2116308 () Bool)

(declare-fun tp!645984 () Bool)

(declare-fun tp!645983 () Bool)

(assert (=> b!2116308 (= e!1347019 (and tp!645984 tp!645983))))

(declare-fun b!2116309 () Bool)

(declare-fun res!918046 () Bool)

(assert (=> b!2116309 (=> (not res!918046) (not e!1347023))))

(declare-fun valid!1880 (CacheFurthestNullable!556) Bool)

(assert (=> b!2116309 (= res!918046 (valid!1880 cacheFurthestNullable!141))))

(declare-fun b!2116310 () Bool)

(declare-fun res!918050 () Bool)

(assert (=> b!2116310 (=> (not res!918050) (not e!1347023))))

(declare-fun isSuffix!603 (List!23664 List!23664) Bool)

(declare-fun list!9504 (BalanceConc!15324) List!23664)

(assert (=> b!2116310 (= res!918050 (isSuffix!603 (list!9504 input!6660) (list!9504 totalInput!1306)))))

(declare-fun b!2116311 () Bool)

(assert (=> b!2116311 (= e!1347023 false)))

(declare-fun lt!793771 () (InoxSet Context!2422))

(declare-fun focus!275 (Regex!5641) (InoxSet Context!2422))

(assert (=> b!2116311 (= lt!793771 (focus!275 r!15373))))

(declare-fun b!2116312 () Bool)

(declare-fun res!918048 () Bool)

(assert (=> b!2116312 (=> (not res!918048) (not e!1347023))))

(declare-fun valid!1881 (CacheDown!1580) Bool)

(assert (=> b!2116312 (= res!918048 (valid!1881 cacheDown!1229))))

(declare-fun mapIsEmpty!11518 () Bool)

(assert (=> mapIsEmpty!11518 mapRes!11518))

(declare-fun b!2116313 () Bool)

(assert (=> b!2116313 (= e!1347014 e!1347021)))

(declare-fun mapNonEmpty!11518 () Bool)

(declare-fun mapRes!11519 () Bool)

(declare-fun tp!645987 () Bool)

(declare-fun tp!645997 () Bool)

(assert (=> mapNonEmpty!11518 (= mapRes!11519 (and tp!645987 tp!645997))))

(declare-fun mapValue!11517 () List!23663)

(declare-fun mapKey!11517 () (_ BitVec 32))

(declare-fun mapRest!11519 () (Array (_ BitVec 32) List!23663))

(assert (=> mapNonEmpty!11518 (= (arr!3649 (_values!2667 (v!28103 (underlying!4969 (v!28104 (underlying!4970 (cache!2682 cacheFurthestNullable!141))))))) (store mapRest!11519 mapKey!11517 mapValue!11517))))

(declare-fun b!2116314 () Bool)

(declare-fun e!1347015 () Bool)

(assert (=> b!2116314 (= e!1347026 e!1347015)))

(declare-fun b!2116315 () Bool)

(declare-fun e!1347037 () Bool)

(assert (=> b!2116315 (= e!1347029 e!1347037)))

(declare-fun b!2116316 () Bool)

(declare-fun tp!646001 () Bool)

(assert (=> b!2116316 (= e!1347013 (and tp!646001 mapRes!11519))))

(declare-fun condMapEmpty!11517 () Bool)

(declare-fun mapDefault!11518 () List!23663)

(assert (=> b!2116316 (= condMapEmpty!11517 (= (arr!3649 (_values!2667 (v!28103 (underlying!4969 (v!28104 (underlying!4970 (cache!2682 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23663)) mapDefault!11518)))))

(declare-fun mapIsEmpty!11519 () Bool)

(assert (=> mapIsEmpty!11519 mapRes!11519))

(declare-fun tp!645996 () Bool)

(declare-fun tp!645985 () Bool)

(declare-fun array_inv!2622 (array!8227) Bool)

(assert (=> b!2116317 (= e!1347035 (and tp!645993 tp!645985 tp!645996 (array_inv!2619 (_keys!2685 (v!28105 (underlying!4971 (v!28106 (underlying!4972 (cache!2683 cacheUp!1110))))))) (array_inv!2622 (_values!2668 (v!28105 (underlying!4971 (v!28106 (underlying!4972 (cache!2683 cacheUp!1110))))))) e!1347031))))

(declare-fun b!2116318 () Bool)

(assert (=> b!2116318 (= e!1347037 e!1347040)))

(declare-fun mapNonEmpty!11519 () Bool)

(declare-fun tp!645992 () Bool)

(declare-fun tp!646005 () Bool)

(assert (=> mapNonEmpty!11519 (= mapRes!11517 (and tp!645992 tp!646005))))

(declare-fun mapValue!11518 () List!23665)

(declare-fun mapRest!11517 () (Array (_ BitVec 32) List!23665))

(declare-fun mapKey!11519 () (_ BitVec 32))

(assert (=> mapNonEmpty!11519 (= (arr!3651 (_values!2668 (v!28105 (underlying!4971 (v!28106 (underlying!4972 (cache!2683 cacheUp!1110))))))) (store mapRest!11517 mapKey!11519 mapValue!11518))))

(assert (=> b!2116319 (= e!1347015 (and e!1347022 tp!646002))))

(declare-fun b!2116320 () Bool)

(declare-fun res!918051 () Bool)

(assert (=> b!2116320 (=> (not res!918051) (not e!1347023))))

(assert (=> b!2116320 (= res!918051 (= (totalInput!2859 cacheFurthestNullable!141) totalInput!1306))))

(assert (= (and start!206670 res!918049) b!2116302))

(assert (= (and b!2116302 res!918047) b!2116312))

(assert (= (and b!2116312 res!918048) b!2116309))

(assert (= (and b!2116309 res!918046) b!2116320))

(assert (= (and b!2116320 res!918051) b!2116310))

(assert (= (and b!2116310 res!918050) b!2116311))

(assert (= (and b!2116299 condMapEmpty!11518) mapIsEmpty!11518))

(assert (= (and b!2116299 (not condMapEmpty!11518)) mapNonEmpty!11517))

(assert (= b!2116303 b!2116299))

(assert (= b!2116318 b!2116303))

(assert (= b!2116315 b!2116318))

(assert (= (and b!2116298 ((_ is LongMap!2389) (v!28108 (underlying!4974 (cache!2684 cacheDown!1229))))) b!2116315))

(assert (= b!2116319 b!2116298))

(assert (= (and b!2116314 ((_ is HashMap!2303) (cache!2684 cacheDown!1229))) b!2116319))

(assert (= start!206670 b!2116314))

(assert (= (and start!206670 ((_ is ElementMatch!5641) r!15373)) b!2116301))

(assert (= (and start!206670 ((_ is Concat!9943) r!15373)) b!2116297))

(assert (= (and start!206670 ((_ is Star!5641) r!15373)) b!2116293))

(assert (= (and start!206670 ((_ is Union!5641) r!15373)) b!2116308))

(assert (= (and b!2116292 condMapEmpty!11519) mapIsEmpty!11517))

(assert (= (and b!2116292 (not condMapEmpty!11519)) mapNonEmpty!11519))

(assert (= b!2116317 b!2116292))

(assert (= b!2116304 b!2116317))

(assert (= b!2116288 b!2116304))

(assert (= (and b!2116294 ((_ is LongMap!2388) (v!28106 (underlying!4972 (cache!2683 cacheUp!1110))))) b!2116288))

(assert (= b!2116296 b!2116294))

(assert (= (and b!2116313 ((_ is HashMap!2302) (cache!2683 cacheUp!1110))) b!2116296))

(assert (= start!206670 b!2116313))

(assert (= start!206670 b!2116295))

(assert (= start!206670 b!2116307))

(assert (= (and b!2116316 condMapEmpty!11517) mapIsEmpty!11519))

(assert (= (and b!2116316 (not condMapEmpty!11517)) mapNonEmpty!11518))

(assert (= b!2116289 b!2116316))

(assert (= b!2116291 b!2116289))

(assert (= b!2116290 b!2116291))

(assert (= (and b!2116306 ((_ is LongMap!2387) (v!28104 (underlying!4970 (cache!2682 cacheFurthestNullable!141))))) b!2116290))

(assert (= b!2116300 b!2116306))

(assert (= (and b!2116287 ((_ is HashMap!2301) (cache!2682 cacheFurthestNullable!141))) b!2116300))

(assert (= b!2116287 b!2116305))

(assert (= start!206670 b!2116287))

(declare-fun m!2571407 () Bool)

(assert (=> b!2116317 m!2571407))

(declare-fun m!2571409 () Bool)

(assert (=> b!2116317 m!2571409))

(declare-fun m!2571411 () Bool)

(assert (=> b!2116307 m!2571411))

(declare-fun m!2571413 () Bool)

(assert (=> b!2116309 m!2571413))

(declare-fun m!2571415 () Bool)

(assert (=> b!2116312 m!2571415))

(declare-fun m!2571417 () Bool)

(assert (=> b!2116287 m!2571417))

(declare-fun m!2571419 () Bool)

(assert (=> b!2116305 m!2571419))

(declare-fun m!2571421 () Bool)

(assert (=> b!2116303 m!2571421))

(declare-fun m!2571423 () Bool)

(assert (=> b!2116303 m!2571423))

(declare-fun m!2571425 () Bool)

(assert (=> mapNonEmpty!11518 m!2571425))

(declare-fun m!2571427 () Bool)

(assert (=> mapNonEmpty!11519 m!2571427))

(declare-fun m!2571429 () Bool)

(assert (=> start!206670 m!2571429))

(declare-fun m!2571431 () Bool)

(assert (=> start!206670 m!2571431))

(declare-fun m!2571433 () Bool)

(assert (=> start!206670 m!2571433))

(declare-fun m!2571435 () Bool)

(assert (=> start!206670 m!2571435))

(declare-fun m!2571437 () Bool)

(assert (=> start!206670 m!2571437))

(declare-fun m!2571439 () Bool)

(assert (=> start!206670 m!2571439))

(declare-fun m!2571441 () Bool)

(assert (=> b!2116295 m!2571441))

(declare-fun m!2571443 () Bool)

(assert (=> b!2116302 m!2571443))

(declare-fun m!2571445 () Bool)

(assert (=> b!2116310 m!2571445))

(declare-fun m!2571447 () Bool)

(assert (=> b!2116310 m!2571447))

(assert (=> b!2116310 m!2571445))

(assert (=> b!2116310 m!2571447))

(declare-fun m!2571449 () Bool)

(assert (=> b!2116310 m!2571449))

(declare-fun m!2571451 () Bool)

(assert (=> b!2116289 m!2571451))

(declare-fun m!2571453 () Bool)

(assert (=> b!2116289 m!2571453))

(declare-fun m!2571455 () Bool)

(assert (=> mapNonEmpty!11517 m!2571455))

(declare-fun m!2571457 () Bool)

(assert (=> b!2116311 m!2571457))

(check-sat b_and!170933 b_and!170939 (not b!2116292) (not b!2116293) (not mapNonEmpty!11517) (not b_next!62057) (not b_next!62063) (not mapNonEmpty!11519) (not b!2116295) (not b!2116310) (not b!2116302) (not b!2116308) b_and!170931 (not b_next!62053) (not b_next!62055) (not b!2116289) (not b_next!62061) (not mapNonEmpty!11518) (not b!2116305) (not b_next!62059) (not b!2116303) tp_is_empty!9471 (not b!2116311) (not b!2116299) b_and!170929 (not b!2116312) (not b!2116287) (not b!2116307) (not b!2116316) b_and!170935 (not b!2116317) (not start!206670) b_and!170937 (not b!2116309) (not b!2116297))
(check-sat b_and!170933 b_and!170939 (not b_next!62061) (not b_next!62057) (not b_next!62063) (not b_next!62059) b_and!170929 b_and!170931 (not b_next!62053) (not b_next!62055) b_and!170935 b_and!170937)
