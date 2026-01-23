; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207678 () Bool)

(assert start!207678)

(declare-fun b!2138287 () Bool)

(declare-fun b_free!62813 () Bool)

(declare-fun b_next!63517 () Bool)

(assert (=> b!2138287 (= b_free!62813 (not b_next!63517))))

(declare-fun tp!660037 () Bool)

(declare-fun b_and!172393 () Bool)

(assert (=> b!2138287 (= tp!660037 b_and!172393)))

(declare-fun b!2138278 () Bool)

(declare-fun b_free!62815 () Bool)

(declare-fun b_next!63519 () Bool)

(assert (=> b!2138278 (= b_free!62815 (not b_next!63519))))

(declare-fun tp!660028 () Bool)

(declare-fun b_and!172395 () Bool)

(assert (=> b!2138278 (= tp!660028 b_and!172395)))

(declare-fun b!2138290 () Bool)

(declare-fun b_free!62817 () Bool)

(declare-fun b_next!63521 () Bool)

(assert (=> b!2138290 (= b_free!62817 (not b_next!63521))))

(declare-fun tp!660039 () Bool)

(declare-fun b_and!172397 () Bool)

(assert (=> b!2138290 (= tp!660039 b_and!172397)))

(declare-fun b!2138292 () Bool)

(declare-fun b_free!62819 () Bool)

(declare-fun b_next!63523 () Bool)

(assert (=> b!2138292 (= b_free!62819 (not b_next!63523))))

(declare-fun tp!660054 () Bool)

(declare-fun b_and!172399 () Bool)

(assert (=> b!2138292 (= tp!660054 b_and!172399)))

(declare-fun b!2138302 () Bool)

(declare-fun b_free!62821 () Bool)

(declare-fun b_next!63525 () Bool)

(assert (=> b!2138302 (= b_free!62821 (not b_next!63525))))

(declare-fun tp!660055 () Bool)

(declare-fun b_and!172401 () Bool)

(assert (=> b!2138302 (= tp!660055 b_and!172401)))

(declare-fun b!2138286 () Bool)

(declare-fun b_free!62823 () Bool)

(declare-fun b_next!63527 () Bool)

(assert (=> b!2138286 (= b_free!62823 (not b_next!63527))))

(declare-fun tp!660031 () Bool)

(declare-fun b_and!172403 () Bool)

(assert (=> b!2138286 (= tp!660031 b_and!172403)))

(declare-fun b!2138299 () Bool)

(assert (=> b!2138299 true))

(declare-fun bs!444421 () Bool)

(declare-fun b!2138297 () Bool)

(assert (= bs!444421 (and b!2138297 b!2138299)))

(declare-fun lambda!79838 () Int)

(declare-fun lambda!79837 () Int)

(assert (=> bs!444421 (not (= lambda!79838 lambda!79837))))

(assert (=> b!2138297 true))

(declare-fun e!1365275 () Bool)

(declare-fun e!1365272 () Bool)

(assert (=> b!2138278 (= e!1365275 (and e!1365272 tp!660028))))

(declare-fun b!2138279 () Bool)

(declare-fun res!923661 () Bool)

(declare-fun e!1365273 () Bool)

(assert (=> b!2138279 (=> (not res!923661) (not e!1365273))))

(declare-datatypes ((C!11672 0))(
  ( (C!11673 (val!6822 Int)) )
))
(declare-datatypes ((Regex!5763 0))(
  ( (ElementMatch!5763 (c!340409 C!11672)) (Concat!10065 (regOne!12038 Regex!5763) (regTwo!12038 Regex!5763)) (EmptyExpr!5763) (Star!5763 (reg!6092 Regex!5763)) (EmptyLang!5763) (Union!5763 (regOne!12039 Regex!5763) (regTwo!12039 Regex!5763)) )
))
(declare-datatypes ((List!24337 0))(
  ( (Nil!24253) (Cons!24253 (h!29654 Regex!5763) (t!196865 List!24337)) )
))
(declare-datatypes ((Context!2666 0))(
  ( (Context!2667 (exprs!1833 List!24337)) )
))
(declare-datatypes ((tuple2!24066 0))(
  ( (tuple2!24067 (_1!14184 Context!2666) (_2!14184 C!11672)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!24068 0))(
  ( (tuple2!24069 (_1!14185 tuple2!24066) (_2!14185 (InoxSet Context!2666))) )
))
(declare-datatypes ((List!24338 0))(
  ( (Nil!24254) (Cons!24254 (h!29655 tuple2!24068) (t!196866 List!24338)) )
))
(declare-datatypes ((array!9189 0))(
  ( (array!9190 (arr!4104 (Array (_ BitVec 32) (_ BitVec 64))) (size!18969 (_ BitVec 32))) )
))
(declare-datatypes ((array!9191 0))(
  ( (array!9192 (arr!4105 (Array (_ BitVec 32) List!24338)) (size!18970 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5440 0))(
  ( (LongMapFixedSize!5441 (defaultEntry!3085 Int) (mask!6917 (_ BitVec 32)) (extraKeys!2968 (_ BitVec 32)) (zeroValue!2978 List!24338) (minValue!2978 List!24338) (_size!5491 (_ BitVec 32)) (_keys!3017 array!9189) (_values!3000 array!9191) (_vacant!2781 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10705 0))(
  ( (Cell!10706 (v!28828 LongMapFixedSize!5440)) )
))
(declare-datatypes ((MutLongMap!2720 0))(
  ( (LongMap!2720 (underlying!5635 Cell!10705)) (MutLongMapExt!2719 (__x!16336 Int)) )
))
(declare-datatypes ((Cell!10707 0))(
  ( (Cell!10708 (v!28829 MutLongMap!2720)) )
))
(declare-datatypes ((Hashable!2634 0))(
  ( (HashableExt!2633 (__x!16337 Int)) )
))
(declare-datatypes ((MutableMap!2634 0))(
  ( (MutableMapExt!2633 (__x!16338 Int)) (HashMap!2634 (underlying!5636 Cell!10707) (hashF!4557 Hashable!2634) (_size!5492 (_ BitVec 32)) (defaultValue!2796 Int)) )
))
(declare-datatypes ((CacheUp!1818 0))(
  ( (CacheUp!1819 (cache!3015 MutableMap!2634)) )
))
(declare-fun cacheUp!979 () CacheUp!1818)

(declare-fun valid!2124 (CacheUp!1818) Bool)

(assert (=> b!2138279 (= res!923661 (valid!2124 cacheUp!979))))

(declare-fun b!2138280 () Bool)

(declare-fun e!1365252 () Bool)

(declare-datatypes ((List!24339 0))(
  ( (Nil!24255) (Cons!24255 (h!29656 C!11672) (t!196867 List!24339)) )
))
(declare-datatypes ((IArray!15807 0))(
  ( (IArray!15808 (innerList!7961 List!24339)) )
))
(declare-datatypes ((Conc!7901 0))(
  ( (Node!7901 (left!18667 Conc!7901) (right!18997 Conc!7901) (csize!16032 Int) (cheight!8112 Int)) (Leaf!11550 (xs!10843 IArray!15807) (csize!16033 Int)) (Empty!7901) )
))
(declare-datatypes ((BalanceConc!15564 0))(
  ( (BalanceConc!15565 (c!340410 Conc!7901)) )
))
(declare-fun totalInput!851 () BalanceConc!15564)

(declare-fun tp!660034 () Bool)

(declare-fun inv!31925 (Conc!7901) Bool)

(assert (=> b!2138280 (= e!1365252 (and (inv!31925 (c!340410 totalInput!851)) tp!660034))))

(declare-fun b!2138281 () Bool)

(declare-fun e!1365277 () Bool)

(declare-fun e!1365253 () Bool)

(assert (=> b!2138281 (= e!1365277 e!1365253)))

(declare-fun b!2138282 () Bool)

(declare-fun e!1365274 () Bool)

(declare-datatypes ((tuple3!3362 0))(
  ( (tuple3!3363 (_1!14186 (InoxSet Context!2666)) (_2!14186 Int) (_3!2151 Int)) )
))
(declare-datatypes ((tuple2!24070 0))(
  ( (tuple2!24071 (_1!14187 tuple3!3362) (_2!14187 Int)) )
))
(declare-datatypes ((List!24340 0))(
  ( (Nil!24256) (Cons!24256 (h!29657 tuple2!24070) (t!196868 List!24340)) )
))
(declare-datatypes ((array!9193 0))(
  ( (array!9194 (arr!4106 (Array (_ BitVec 32) List!24340)) (size!18971 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5442 0))(
  ( (LongMapFixedSize!5443 (defaultEntry!3086 Int) (mask!6918 (_ BitVec 32)) (extraKeys!2969 (_ BitVec 32)) (zeroValue!2979 List!24340) (minValue!2979 List!24340) (_size!5493 (_ BitVec 32)) (_keys!3018 array!9189) (_values!3001 array!9193) (_vacant!2782 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10709 0))(
  ( (Cell!10710 (v!28830 LongMapFixedSize!5442)) )
))
(declare-datatypes ((MutLongMap!2721 0))(
  ( (LongMap!2721 (underlying!5637 Cell!10709)) (MutLongMapExt!2720 (__x!16339 Int)) )
))
(declare-datatypes ((Cell!10711 0))(
  ( (Cell!10712 (v!28831 MutLongMap!2721)) )
))
(declare-datatypes ((Hashable!2635 0))(
  ( (HashableExt!2634 (__x!16340 Int)) )
))
(declare-datatypes ((MutableMap!2635 0))(
  ( (MutableMapExt!2634 (__x!16341 Int)) (HashMap!2635 (underlying!5638 Cell!10711) (hashF!4558 Hashable!2635) (_size!5494 (_ BitVec 32)) (defaultValue!2797 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!770 0))(
  ( (CacheFurthestNullable!771 (cache!3016 MutableMap!2635) (totalInput!3097 BalanceConc!15564)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!770)

(declare-fun tp!660036 () Bool)

(assert (=> b!2138282 (= e!1365274 (and (inv!31925 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) tp!660036))))

(declare-fun b!2138283 () Bool)

(declare-fun e!1365264 () Bool)

(declare-fun e!1365256 () Bool)

(assert (=> b!2138283 (= e!1365264 e!1365256)))

(declare-fun mapNonEmpty!12979 () Bool)

(declare-fun mapRes!12979 () Bool)

(declare-fun tp!660045 () Bool)

(declare-fun tp!660029 () Bool)

(assert (=> mapNonEmpty!12979 (= mapRes!12979 (and tp!660045 tp!660029))))

(declare-datatypes ((tuple3!3364 0))(
  ( (tuple3!3365 (_1!14188 Regex!5763) (_2!14188 Context!2666) (_3!2152 C!11672)) )
))
(declare-datatypes ((tuple2!24072 0))(
  ( (tuple2!24073 (_1!14189 tuple3!3364) (_2!14189 (InoxSet Context!2666))) )
))
(declare-datatypes ((List!24341 0))(
  ( (Nil!24257) (Cons!24257 (h!29658 tuple2!24072) (t!196869 List!24341)) )
))
(declare-datatypes ((Hashable!2636 0))(
  ( (HashableExt!2635 (__x!16342 Int)) )
))
(declare-datatypes ((array!9195 0))(
  ( (array!9196 (arr!4107 (Array (_ BitVec 32) List!24341)) (size!18972 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5444 0))(
  ( (LongMapFixedSize!5445 (defaultEntry!3087 Int) (mask!6919 (_ BitVec 32)) (extraKeys!2970 (_ BitVec 32)) (zeroValue!2980 List!24341) (minValue!2980 List!24341) (_size!5495 (_ BitVec 32)) (_keys!3019 array!9189) (_values!3002 array!9195) (_vacant!2783 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10713 0))(
  ( (Cell!10714 (v!28832 LongMapFixedSize!5444)) )
))
(declare-datatypes ((MutLongMap!2722 0))(
  ( (LongMap!2722 (underlying!5639 Cell!10713)) (MutLongMapExt!2721 (__x!16343 Int)) )
))
(declare-datatypes ((Cell!10715 0))(
  ( (Cell!10716 (v!28833 MutLongMap!2722)) )
))
(declare-datatypes ((MutableMap!2636 0))(
  ( (MutableMapExt!2635 (__x!16344 Int)) (HashMap!2636 (underlying!5640 Cell!10715) (hashF!4559 Hashable!2636) (_size!5496 (_ BitVec 32)) (defaultValue!2798 Int)) )
))
(declare-datatypes ((CacheDown!1804 0))(
  ( (CacheDown!1805 (cache!3017 MutableMap!2636)) )
))
(declare-fun cacheDown!1098 () CacheDown!1804)

(declare-fun mapValue!12979 () List!24341)

(declare-fun mapKey!12979 () (_ BitVec 32))

(declare-fun mapRest!12980 () (Array (_ BitVec 32) List!24341))

(assert (=> mapNonEmpty!12979 (= (arr!4107 (_values!3002 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))) (store mapRest!12980 mapKey!12979 mapValue!12979))))

(declare-fun b!2138284 () Bool)

(declare-fun e!1365262 () Bool)

(assert (=> b!2138284 (= e!1365262 e!1365264)))

(declare-fun e!1365248 () Bool)

(declare-fun setRes!16087 () Bool)

(declare-fun e!1365266 () Bool)

(declare-fun b!2138285 () Bool)

(declare-datatypes ((StackFrame!208 0))(
  ( (StackFrame!209 (z!5837 (InoxSet Context!2666)) (from!2720 Int) (lastNullablePos!407 Int) (res!923663 Int) (totalInput!3098 BalanceConc!15564)) )
))
(declare-datatypes ((List!24342 0))(
  ( (Nil!24258) (Cons!24258 (h!29659 StackFrame!208) (t!196870 List!24342)) )
))
(declare-fun stack!8 () List!24342)

(declare-fun inv!31926 (BalanceConc!15564) Bool)

(assert (=> b!2138285 (= e!1365248 (and setRes!16087 (inv!31926 (totalInput!3098 (h!29659 stack!8))) e!1365266))))

(declare-fun condSetEmpty!16087 () Bool)

(assert (=> b!2138285 (= condSetEmpty!16087 (= (z!5837 (h!29659 stack!8)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16087 () Bool)

(assert (=> setIsEmpty!16087 setRes!16087))

(declare-fun mapIsEmpty!12979 () Bool)

(declare-fun mapRes!12980 () Bool)

(assert (=> mapIsEmpty!12979 mapRes!12980))

(declare-fun tp!660038 () Bool)

(declare-fun tp!660044 () Bool)

(declare-fun e!1365268 () Bool)

(declare-fun array_inv!2934 (array!9189) Bool)

(declare-fun array_inv!2935 (array!9195) Bool)

(assert (=> b!2138286 (= e!1365256 (and tp!660031 tp!660044 tp!660038 (array_inv!2934 (_keys!3019 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))) (array_inv!2935 (_values!3002 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))) e!1365268))))

(declare-fun e!1365265 () Bool)

(declare-fun e!1365244 () Bool)

(assert (=> b!2138287 (= e!1365265 (and e!1365244 tp!660037))))

(declare-fun b!2138288 () Bool)

(declare-fun tp!660046 () Bool)

(assert (=> b!2138288 (= e!1365266 (and (inv!31925 (c!340410 (totalInput!3098 (h!29659 stack!8)))) tp!660046))))

(declare-fun b!2138289 () Bool)

(declare-fun e!1365263 () Bool)

(declare-fun e!1365271 () Bool)

(assert (=> b!2138289 (= e!1365263 e!1365271)))

(declare-fun tp!660056 () Bool)

(declare-fun tp!660049 () Bool)

(declare-fun e!1365278 () Bool)

(declare-fun e!1365257 () Bool)

(declare-fun array_inv!2936 (array!9191) Bool)

(assert (=> b!2138290 (= e!1365257 (and tp!660039 tp!660056 tp!660049 (array_inv!2934 (_keys!3017 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))) (array_inv!2936 (_values!3000 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))) e!1365278))))

(declare-fun res!923660 () Bool)

(declare-fun e!1365250 () Bool)

(assert (=> start!207678 (=> (not res!923660) (not e!1365250))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207678 (= res!923660 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207678 e!1365250))

(declare-fun e!1365259 () Bool)

(declare-fun inv!31927 (CacheFurthestNullable!770) Bool)

(assert (=> start!207678 (and (inv!31927 cacheFurthestNullable!114) e!1365259)))

(assert (=> start!207678 true))

(declare-fun e!1365246 () Bool)

(declare-fun inv!31928 (CacheDown!1804) Bool)

(assert (=> start!207678 (and (inv!31928 cacheDown!1098) e!1365246)))

(declare-fun e!1365251 () Bool)

(declare-fun inv!31929 (CacheUp!1818) Bool)

(assert (=> start!207678 (and (inv!31929 cacheUp!979) e!1365251)))

(declare-fun condSetEmpty!16088 () Bool)

(declare-fun z!3839 () (InoxSet Context!2666))

(assert (=> start!207678 (= condSetEmpty!16088 (= z!3839 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16088 () Bool)

(assert (=> start!207678 setRes!16088))

(assert (=> start!207678 (and (inv!31926 totalInput!851) e!1365252)))

(declare-fun e!1365276 () Bool)

(assert (=> start!207678 e!1365276))

(declare-fun b!2138291 () Bool)

(assert (=> b!2138291 (= e!1365246 e!1365275)))

(declare-fun mapIsEmpty!12980 () Bool)

(declare-fun mapRes!12981 () Bool)

(assert (=> mapIsEmpty!12980 mapRes!12981))

(declare-fun setNonEmpty!16087 () Bool)

(declare-fun tp!660033 () Bool)

(declare-fun e!1365261 () Bool)

(declare-fun setElem!16088 () Context!2666)

(declare-fun inv!31930 (Context!2666) Bool)

(assert (=> setNonEmpty!16087 (= setRes!16088 (and tp!660033 (inv!31930 setElem!16088) e!1365261))))

(declare-fun setRest!16088 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16087 (= z!3839 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16088 true) setRest!16088))))

(declare-fun e!1365245 () Bool)

(declare-fun e!1365258 () Bool)

(assert (=> b!2138292 (= e!1365245 (and e!1365258 tp!660054))))

(declare-fun mapNonEmpty!12980 () Bool)

(declare-fun tp!660042 () Bool)

(declare-fun tp!660051 () Bool)

(assert (=> mapNonEmpty!12980 (= mapRes!12981 (and tp!660042 tp!660051))))

(declare-fun mapValue!12981 () List!24340)

(declare-fun mapKey!12980 () (_ BitVec 32))

(declare-fun mapRest!12979 () (Array (_ BitVec 32) List!24340))

(assert (=> mapNonEmpty!12980 (= (arr!4106 (_values!3001 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))) (store mapRest!12979 mapKey!12980 mapValue!12981))))

(declare-fun b!2138293 () Bool)

(declare-fun e!1365255 () Bool)

(assert (=> b!2138293 (= e!1365253 e!1365255)))

(declare-fun b!2138294 () Bool)

(declare-fun res!923662 () Bool)

(assert (=> b!2138294 (=> (not res!923662) (not e!1365273))))

(assert (=> b!2138294 (= res!923662 (= (totalInput!3097 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2138295 () Bool)

(declare-fun e!1365249 () Bool)

(declare-fun tp!660041 () Bool)

(assert (=> b!2138295 (= e!1365249 tp!660041)))

(declare-fun b!2138296 () Bool)

(declare-fun lt!797754 () MutLongMap!2721)

(get-info :version)

(assert (=> b!2138296 (= e!1365258 (and e!1365277 ((_ is LongMap!2721) lt!797754)))))

(assert (=> b!2138296 (= lt!797754 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))

(declare-fun res!923659 () Bool)

(declare-fun e!1365254 () Bool)

(assert (=> b!2138297 (=> (not res!923659) (not e!1365254))))

(declare-fun forall!4948 (List!24342 Int) Bool)

(assert (=> b!2138297 (= res!923659 (forall!4948 stack!8 lambda!79838))))

(declare-fun b!2138298 () Bool)

(declare-fun res!923656 () Bool)

(assert (=> b!2138298 (=> (not res!923656) (not e!1365273))))

(declare-fun valid!2125 (CacheDown!1804) Bool)

(assert (=> b!2138298 (= res!923656 (valid!2125 cacheDown!1098))))

(declare-fun setIsEmpty!16088 () Bool)

(assert (=> setIsEmpty!16088 setRes!16088))

(assert (=> b!2138299 (= e!1365273 e!1365254)))

(declare-fun res!923653 () Bool)

(assert (=> b!2138299 (=> (not res!923653) (not e!1365254))))

(assert (=> b!2138299 (= res!923653 (forall!4948 stack!8 lambda!79837))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!797759 () Int)

(declare-fun lt!797757 () Int)

(declare-fun furthestNullablePosition!67 ((InoxSet Context!2666) Int BalanceConc!15564 Int Int) Int)

(assert (=> b!2138299 (= lt!797759 (furthestNullablePosition!67 z!3839 from!1043 totalInput!851 lt!797757 lastNullablePos!123))))

(declare-fun b!2138300 () Bool)

(declare-fun res!923657 () Bool)

(assert (=> b!2138300 (=> (not res!923657) (not e!1365273))))

(declare-fun e!1365260 () Bool)

(assert (=> b!2138300 (= res!923657 e!1365260)))

(declare-fun res!923655 () Bool)

(assert (=> b!2138300 (=> res!923655 e!1365260)))

(declare-fun nullableZipper!131 ((InoxSet Context!2666)) Bool)

(assert (=> b!2138300 (= res!923655 (not (nullableZipper!131 z!3839)))))

(declare-fun b!2138301 () Bool)

(declare-datatypes ((Option!4924 0))(
  ( (None!4923) (Some!4923 (v!28834 Int)) )
))
(declare-fun lt!797755 () Option!4924)

(assert (=> b!2138301 (= e!1365254 (not (or (not ((_ is Some!4923) lt!797755)) (= (v!28834 lt!797755) lt!797759))))))

(declare-fun get!7415 (CacheFurthestNullable!770 (InoxSet Context!2666) Int Int) Option!4924)

(assert (=> b!2138301 (= lt!797755 (get!7415 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> b!2138301 (forall!4948 stack!8 lambda!79837)))

(declare-fun mapNonEmpty!12981 () Bool)

(declare-fun tp!660043 () Bool)

(declare-fun tp!660050 () Bool)

(assert (=> mapNonEmpty!12981 (= mapRes!12980 (and tp!660043 tp!660050))))

(declare-fun mapKey!12981 () (_ BitVec 32))

(declare-fun mapRest!12981 () (Array (_ BitVec 32) List!24338))

(declare-fun mapValue!12980 () List!24338)

(assert (=> mapNonEmpty!12981 (= (arr!4105 (_values!3000 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))) (store mapRest!12981 mapKey!12981 mapValue!12980))))

(declare-fun tp!660035 () Bool)

(declare-fun e!1365270 () Bool)

(declare-fun tp!660030 () Bool)

(declare-fun array_inv!2937 (array!9193) Bool)

(assert (=> b!2138302 (= e!1365255 (and tp!660055 tp!660035 tp!660030 (array_inv!2934 (_keys!3018 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))) (array_inv!2937 (_values!3001 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))) e!1365270))))

(declare-fun b!2138303 () Bool)

(declare-fun lt!797756 () MutLongMap!2720)

(assert (=> b!2138303 (= e!1365244 (and e!1365263 ((_ is LongMap!2720) lt!797756)))))

(assert (=> b!2138303 (= lt!797756 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))

(declare-fun b!2138304 () Bool)

(assert (=> b!2138304 (= e!1365271 e!1365257)))

(declare-fun b!2138305 () Bool)

(declare-fun tp!660047 () Bool)

(declare-fun inv!31931 (StackFrame!208) Bool)

(assert (=> b!2138305 (= e!1365276 (and (inv!31931 (h!29659 stack!8)) e!1365248 tp!660047))))

(declare-fun b!2138306 () Bool)

(declare-fun lt!797758 () MutLongMap!2722)

(assert (=> b!2138306 (= e!1365272 (and e!1365262 ((_ is LongMap!2722) lt!797758)))))

(assert (=> b!2138306 (= lt!797758 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))

(declare-fun b!2138307 () Bool)

(assert (=> b!2138307 (= e!1365260 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun mapIsEmpty!12981 () Bool)

(assert (=> mapIsEmpty!12981 mapRes!12979))

(declare-fun b!2138308 () Bool)

(declare-fun tp!660032 () Bool)

(assert (=> b!2138308 (= e!1365268 (and tp!660032 mapRes!12979))))

(declare-fun condMapEmpty!12980 () Bool)

(declare-fun mapDefault!12979 () List!24341)

(assert (=> b!2138308 (= condMapEmpty!12980 (= (arr!4107 (_values!3002 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24341)) mapDefault!12979)))))

(declare-fun b!2138309 () Bool)

(declare-fun tp!660040 () Bool)

(assert (=> b!2138309 (= e!1365278 (and tp!660040 mapRes!12980))))

(declare-fun condMapEmpty!12981 () Bool)

(declare-fun mapDefault!12980 () List!24338)

(assert (=> b!2138309 (= condMapEmpty!12981 (= (arr!4105 (_values!3000 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24338)) mapDefault!12980)))))

(declare-fun b!2138310 () Bool)

(declare-fun tp!660053 () Bool)

(assert (=> b!2138310 (= e!1365261 tp!660053)))

(declare-fun b!2138311 () Bool)

(assert (=> b!2138311 (= e!1365259 (and e!1365245 (inv!31926 (totalInput!3097 cacheFurthestNullable!114)) e!1365274))))

(declare-fun b!2138312 () Bool)

(declare-fun tp!660052 () Bool)

(assert (=> b!2138312 (= e!1365270 (and tp!660052 mapRes!12981))))

(declare-fun condMapEmpty!12979 () Bool)

(declare-fun mapDefault!12981 () List!24340)

(assert (=> b!2138312 (= condMapEmpty!12979 (= (arr!4106 (_values!3001 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24340)) mapDefault!12981)))))

(declare-fun b!2138313 () Bool)

(assert (=> b!2138313 (= e!1365251 e!1365265)))

(declare-fun b!2138314 () Bool)

(assert (=> b!2138314 (= e!1365250 e!1365273)))

(declare-fun res!923654 () Bool)

(assert (=> b!2138314 (=> (not res!923654) (not e!1365273))))

(assert (=> b!2138314 (= res!923654 (and (= totalInputSize!296 lt!797757) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18973 (BalanceConc!15564) Int)

(assert (=> b!2138314 (= lt!797757 (size!18973 totalInput!851))))

(declare-fun tp!660048 () Bool)

(declare-fun setNonEmpty!16088 () Bool)

(declare-fun setElem!16087 () Context!2666)

(assert (=> setNonEmpty!16088 (= setRes!16087 (and tp!660048 (inv!31930 setElem!16087) e!1365249))))

(declare-fun setRest!16087 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16088 (= (z!5837 (h!29659 stack!8)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16087 true) setRest!16087))))

(declare-fun b!2138315 () Bool)

(declare-fun res!923658 () Bool)

(assert (=> b!2138315 (=> (not res!923658) (not e!1365273))))

(declare-fun valid!2126 (CacheFurthestNullable!770) Bool)

(assert (=> b!2138315 (= res!923658 (valid!2126 cacheFurthestNullable!114))))

(assert (= (and start!207678 res!923660) b!2138314))

(assert (= (and b!2138314 res!923654) b!2138300))

(assert (= (and b!2138300 (not res!923655)) b!2138307))

(assert (= (and b!2138300 res!923657) b!2138279))

(assert (= (and b!2138279 res!923661) b!2138298))

(assert (= (and b!2138298 res!923656) b!2138315))

(assert (= (and b!2138315 res!923658) b!2138294))

(assert (= (and b!2138294 res!923662) b!2138299))

(assert (= (and b!2138299 res!923653) b!2138297))

(assert (= (and b!2138297 res!923659) b!2138301))

(assert (= (and b!2138312 condMapEmpty!12979) mapIsEmpty!12980))

(assert (= (and b!2138312 (not condMapEmpty!12979)) mapNonEmpty!12980))

(assert (= b!2138302 b!2138312))

(assert (= b!2138293 b!2138302))

(assert (= b!2138281 b!2138293))

(assert (= (and b!2138296 ((_ is LongMap!2721) (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))) b!2138281))

(assert (= b!2138292 b!2138296))

(assert (= (and b!2138311 ((_ is HashMap!2635) (cache!3016 cacheFurthestNullable!114))) b!2138292))

(assert (= b!2138311 b!2138282))

(assert (= start!207678 b!2138311))

(assert (= (and b!2138308 condMapEmpty!12980) mapIsEmpty!12981))

(assert (= (and b!2138308 (not condMapEmpty!12980)) mapNonEmpty!12979))

(assert (= b!2138286 b!2138308))

(assert (= b!2138283 b!2138286))

(assert (= b!2138284 b!2138283))

(assert (= (and b!2138306 ((_ is LongMap!2722) (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))) b!2138284))

(assert (= b!2138278 b!2138306))

(assert (= (and b!2138291 ((_ is HashMap!2636) (cache!3017 cacheDown!1098))) b!2138278))

(assert (= start!207678 b!2138291))

(assert (= (and b!2138309 condMapEmpty!12981) mapIsEmpty!12979))

(assert (= (and b!2138309 (not condMapEmpty!12981)) mapNonEmpty!12981))

(assert (= b!2138290 b!2138309))

(assert (= b!2138304 b!2138290))

(assert (= b!2138289 b!2138304))

(assert (= (and b!2138303 ((_ is LongMap!2720) (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))) b!2138289))

(assert (= b!2138287 b!2138303))

(assert (= (and b!2138313 ((_ is HashMap!2634) (cache!3015 cacheUp!979))) b!2138287))

(assert (= start!207678 b!2138313))

(assert (= (and start!207678 condSetEmpty!16088) setIsEmpty!16088))

(assert (= (and start!207678 (not condSetEmpty!16088)) setNonEmpty!16087))

(assert (= setNonEmpty!16087 b!2138310))

(assert (= start!207678 b!2138280))

(assert (= (and b!2138285 condSetEmpty!16087) setIsEmpty!16087))

(assert (= (and b!2138285 (not condSetEmpty!16087)) setNonEmpty!16088))

(assert (= setNonEmpty!16088 b!2138295))

(assert (= b!2138285 b!2138288))

(assert (= b!2138305 b!2138285))

(assert (= (and start!207678 ((_ is Cons!24258) stack!8)) b!2138305))

(declare-fun m!2584844 () Bool)

(assert (=> mapNonEmpty!12981 m!2584844))

(declare-fun m!2584846 () Bool)

(assert (=> b!2138280 m!2584846))

(declare-fun m!2584848 () Bool)

(assert (=> b!2138315 m!2584848))

(declare-fun m!2584850 () Bool)

(assert (=> b!2138285 m!2584850))

(declare-fun m!2584852 () Bool)

(assert (=> b!2138302 m!2584852))

(declare-fun m!2584854 () Bool)

(assert (=> b!2138302 m!2584854))

(declare-fun m!2584856 () Bool)

(assert (=> b!2138300 m!2584856))

(declare-fun m!2584858 () Bool)

(assert (=> b!2138298 m!2584858))

(declare-fun m!2584860 () Bool)

(assert (=> b!2138279 m!2584860))

(declare-fun m!2584862 () Bool)

(assert (=> start!207678 m!2584862))

(declare-fun m!2584864 () Bool)

(assert (=> start!207678 m!2584864))

(declare-fun m!2584866 () Bool)

(assert (=> start!207678 m!2584866))

(declare-fun m!2584868 () Bool)

(assert (=> start!207678 m!2584868))

(declare-fun m!2584870 () Bool)

(assert (=> b!2138314 m!2584870))

(declare-fun m!2584872 () Bool)

(assert (=> mapNonEmpty!12979 m!2584872))

(declare-fun m!2584874 () Bool)

(assert (=> b!2138282 m!2584874))

(declare-fun m!2584876 () Bool)

(assert (=> b!2138301 m!2584876))

(declare-fun m!2584878 () Bool)

(assert (=> b!2138301 m!2584878))

(declare-fun m!2584880 () Bool)

(assert (=> mapNonEmpty!12980 m!2584880))

(declare-fun m!2584882 () Bool)

(assert (=> setNonEmpty!16088 m!2584882))

(declare-fun m!2584884 () Bool)

(assert (=> b!2138311 m!2584884))

(assert (=> b!2138299 m!2584878))

(declare-fun m!2584886 () Bool)

(assert (=> b!2138299 m!2584886))

(declare-fun m!2584888 () Bool)

(assert (=> setNonEmpty!16087 m!2584888))

(declare-fun m!2584890 () Bool)

(assert (=> b!2138290 m!2584890))

(declare-fun m!2584892 () Bool)

(assert (=> b!2138290 m!2584892))

(declare-fun m!2584894 () Bool)

(assert (=> b!2138297 m!2584894))

(declare-fun m!2584896 () Bool)

(assert (=> b!2138305 m!2584896))

(declare-fun m!2584898 () Bool)

(assert (=> b!2138286 m!2584898))

(declare-fun m!2584900 () Bool)

(assert (=> b!2138286 m!2584900))

(declare-fun m!2584902 () Bool)

(assert (=> b!2138288 m!2584902))

(check-sat (not b!2138309) (not b_next!63519) b_and!172401 (not b!2138300) (not b!2138314) (not b!2138295) (not start!207678) (not b!2138288) (not b_next!63527) (not b!2138315) (not b!2138301) b_and!172403 (not b!2138298) (not mapNonEmpty!12979) (not setNonEmpty!16087) (not mapNonEmpty!12981) (not b!2138282) (not b!2138312) b_and!172395 (not b!2138310) b_and!172393 (not mapNonEmpty!12980) b_and!172399 (not b!2138286) (not b!2138299) (not b!2138308) (not b_next!63523) (not setNonEmpty!16088) (not b!2138302) (not b_next!63525) (not b!2138311) b_and!172397 (not b!2138280) (not b!2138290) (not b!2138279) (not b!2138305) (not b!2138285) (not b!2138297) (not b_next!63517) (not b_next!63521))
(check-sat (not b_next!63527) (not b_next!63519) b_and!172403 b_and!172401 b_and!172395 b_and!172393 b_and!172399 (not b_next!63523) (not b_next!63525) b_and!172397 (not b_next!63517) (not b_next!63521))
(get-model)

(declare-fun d!644427 () Bool)

(declare-fun validCacheMapFurthestNullable!102 (MutableMap!2635 BalanceConc!15564) Bool)

(assert (=> d!644427 (= (valid!2126 cacheFurthestNullable!114) (validCacheMapFurthestNullable!102 (cache!3016 cacheFurthestNullable!114) (totalInput!3097 cacheFurthestNullable!114)))))

(declare-fun bs!444422 () Bool)

(assert (= bs!444422 d!644427))

(declare-fun m!2584904 () Bool)

(assert (=> bs!444422 m!2584904))

(assert (=> b!2138315 d!644427))

(declare-fun d!644429 () Bool)

(assert (=> d!644429 (= (array_inv!2934 (_keys!3017 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))) (bvsge (size!18969 (_keys!3017 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2138290 d!644429))

(declare-fun d!644431 () Bool)

(assert (=> d!644431 (= (array_inv!2936 (_values!3000 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))) (bvsge (size!18970 (_values!3000 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2138290 d!644431))

(declare-fun d!644433 () Bool)

(declare-fun validCacheMapDown!250 (MutableMap!2636) Bool)

(assert (=> d!644433 (= (valid!2125 cacheDown!1098) (validCacheMapDown!250 (cache!3017 cacheDown!1098)))))

(declare-fun bs!444423 () Bool)

(assert (= bs!444423 d!644433))

(declare-fun m!2584906 () Bool)

(assert (=> bs!444423 m!2584906))

(assert (=> b!2138298 d!644433))

(declare-fun d!644435 () Bool)

(declare-fun res!923668 () Bool)

(declare-fun e!1365283 () Bool)

(assert (=> d!644435 (=> res!923668 e!1365283)))

(assert (=> d!644435 (= res!923668 ((_ is Nil!24258) stack!8))))

(assert (=> d!644435 (= (forall!4948 stack!8 lambda!79838) e!1365283)))

(declare-fun b!2138324 () Bool)

(declare-fun e!1365284 () Bool)

(assert (=> b!2138324 (= e!1365283 e!1365284)))

(declare-fun res!923669 () Bool)

(assert (=> b!2138324 (=> (not res!923669) (not e!1365284))))

(declare-fun dynLambda!11367 (Int StackFrame!208) Bool)

(assert (=> b!2138324 (= res!923669 (dynLambda!11367 lambda!79838 (h!29659 stack!8)))))

(declare-fun b!2138325 () Bool)

(assert (=> b!2138325 (= e!1365284 (forall!4948 (t!196870 stack!8) lambda!79838))))

(assert (= (and d!644435 (not res!923668)) b!2138324))

(assert (= (and b!2138324 res!923669) b!2138325))

(declare-fun b_lambda!70593 () Bool)

(assert (=> (not b_lambda!70593) (not b!2138324)))

(declare-fun m!2584908 () Bool)

(assert (=> b!2138324 m!2584908))

(declare-fun m!2584910 () Bool)

(assert (=> b!2138325 m!2584910))

(assert (=> b!2138297 d!644435))

(declare-fun d!644437 () Bool)

(declare-fun c!340413 () Bool)

(assert (=> d!644437 (= c!340413 ((_ is Node!7901) (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))

(declare-fun e!1365289 () Bool)

(assert (=> d!644437 (= (inv!31925 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) e!1365289)))

(declare-fun b!2138332 () Bool)

(declare-fun inv!31932 (Conc!7901) Bool)

(assert (=> b!2138332 (= e!1365289 (inv!31932 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))

(declare-fun b!2138333 () Bool)

(declare-fun e!1365290 () Bool)

(assert (=> b!2138333 (= e!1365289 e!1365290)))

(declare-fun res!923672 () Bool)

(assert (=> b!2138333 (= res!923672 (not ((_ is Leaf!11550) (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(assert (=> b!2138333 (=> res!923672 e!1365290)))

(declare-fun b!2138334 () Bool)

(declare-fun inv!31933 (Conc!7901) Bool)

(assert (=> b!2138334 (= e!1365290 (inv!31933 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))

(assert (= (and d!644437 c!340413) b!2138332))

(assert (= (and d!644437 (not c!340413)) b!2138333))

(assert (= (and b!2138333 (not res!923672)) b!2138334))

(declare-fun m!2584912 () Bool)

(assert (=> b!2138332 m!2584912))

(declare-fun m!2584914 () Bool)

(assert (=> b!2138334 m!2584914))

(assert (=> b!2138282 d!644437))

(declare-fun d!644439 () Bool)

(declare-fun e!1365293 () Bool)

(assert (=> d!644439 e!1365293))

(declare-fun res!923675 () Bool)

(assert (=> d!644439 (=> res!923675 e!1365293)))

(declare-fun lt!797762 () Option!4924)

(declare-fun isEmpty!14322 (Option!4924) Bool)

(assert (=> d!644439 (= res!923675 (isEmpty!14322 lt!797762))))

(declare-fun choose!12679 (CacheFurthestNullable!770 (InoxSet Context!2666) Int Int) Option!4924)

(assert (=> d!644439 (= lt!797762 (choose!12679 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!644439 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!644439 (= (get!7415 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!797762)))

(declare-fun b!2138337 () Bool)

(declare-fun get!7416 (Option!4924) Int)

(assert (=> b!2138337 (= e!1365293 (= (get!7416 lt!797762) (furthestNullablePosition!67 z!3839 from!1043 (totalInput!3097 cacheFurthestNullable!114) (size!18973 (totalInput!3097 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!644439 (not res!923675)) b!2138337))

(declare-fun m!2584916 () Bool)

(assert (=> d!644439 m!2584916))

(declare-fun m!2584918 () Bool)

(assert (=> d!644439 m!2584918))

(declare-fun m!2584920 () Bool)

(assert (=> b!2138337 m!2584920))

(declare-fun m!2584922 () Bool)

(assert (=> b!2138337 m!2584922))

(assert (=> b!2138337 m!2584922))

(declare-fun m!2584924 () Bool)

(assert (=> b!2138337 m!2584924))

(assert (=> b!2138301 d!644439))

(declare-fun d!644441 () Bool)

(declare-fun res!923676 () Bool)

(declare-fun e!1365294 () Bool)

(assert (=> d!644441 (=> res!923676 e!1365294)))

(assert (=> d!644441 (= res!923676 ((_ is Nil!24258) stack!8))))

(assert (=> d!644441 (= (forall!4948 stack!8 lambda!79837) e!1365294)))

(declare-fun b!2138338 () Bool)

(declare-fun e!1365295 () Bool)

(assert (=> b!2138338 (= e!1365294 e!1365295)))

(declare-fun res!923677 () Bool)

(assert (=> b!2138338 (=> (not res!923677) (not e!1365295))))

(assert (=> b!2138338 (= res!923677 (dynLambda!11367 lambda!79837 (h!29659 stack!8)))))

(declare-fun b!2138339 () Bool)

(assert (=> b!2138339 (= e!1365295 (forall!4948 (t!196870 stack!8) lambda!79837))))

(assert (= (and d!644441 (not res!923676)) b!2138338))

(assert (= (and b!2138338 res!923677) b!2138339))

(declare-fun b_lambda!70595 () Bool)

(assert (=> (not b_lambda!70595) (not b!2138338)))

(declare-fun m!2584926 () Bool)

(assert (=> b!2138338 m!2584926))

(declare-fun m!2584928 () Bool)

(assert (=> b!2138339 m!2584928))

(assert (=> b!2138301 d!644441))

(declare-fun d!644443 () Bool)

(declare-fun lambda!79841 () Int)

(declare-fun exists!703 ((InoxSet Context!2666) Int) Bool)

(assert (=> d!644443 (= (nullableZipper!131 z!3839) (exists!703 z!3839 lambda!79841))))

(declare-fun bs!444424 () Bool)

(assert (= bs!444424 d!644443))

(declare-fun m!2584930 () Bool)

(assert (=> bs!444424 m!2584930))

(assert (=> b!2138300 d!644443))

(declare-fun d!644445 () Bool)

(declare-fun isBalanced!2456 (Conc!7901) Bool)

(assert (=> d!644445 (= (inv!31926 (totalInput!3098 (h!29659 stack!8))) (isBalanced!2456 (c!340410 (totalInput!3098 (h!29659 stack!8)))))))

(declare-fun bs!444425 () Bool)

(assert (= bs!444425 d!644445))

(declare-fun m!2584932 () Bool)

(assert (=> bs!444425 m!2584932))

(assert (=> b!2138285 d!644445))

(declare-fun d!644447 () Bool)

(declare-fun lambda!79844 () Int)

(declare-fun forall!4949 (List!24337 Int) Bool)

(assert (=> d!644447 (= (inv!31930 setElem!16088) (forall!4949 (exprs!1833 setElem!16088) lambda!79844))))

(declare-fun bs!444426 () Bool)

(assert (= bs!444426 d!644447))

(declare-fun m!2584934 () Bool)

(assert (=> bs!444426 m!2584934))

(assert (=> setNonEmpty!16087 d!644447))

(assert (=> b!2138299 d!644441))

(declare-fun b!2138350 () Bool)

(declare-fun e!1365304 () Int)

(assert (=> b!2138350 (= e!1365304 lastNullablePos!123)))

(declare-fun b!2138351 () Bool)

(declare-fun e!1365302 () Bool)

(declare-fun lostCauseZipper!107 ((InoxSet Context!2666)) Bool)

(assert (=> b!2138351 (= e!1365302 (lostCauseZipper!107 z!3839))))

(declare-fun lt!797768 () (InoxSet Context!2666))

(declare-fun e!1365303 () Int)

(declare-fun b!2138353 () Bool)

(assert (=> b!2138353 (= e!1365304 (furthestNullablePosition!67 lt!797768 (+ from!1043 1) totalInput!851 lt!797757 e!1365303))))

(declare-fun derivationStepZipper!91 ((InoxSet Context!2666) C!11672) (InoxSet Context!2666))

(declare-fun apply!5954 (BalanceConc!15564 Int) C!11672)

(assert (=> b!2138353 (= lt!797768 (derivationStepZipper!91 z!3839 (apply!5954 totalInput!851 from!1043)))))

(declare-fun c!340421 () Bool)

(assert (=> b!2138353 (= c!340421 (nullableZipper!131 lt!797768))))

(declare-fun b!2138354 () Bool)

(assert (=> b!2138354 (= e!1365303 lastNullablePos!123)))

(declare-fun lt!797767 () Int)

(declare-fun d!644449 () Bool)

(assert (=> d!644449 (and (>= lt!797767 (- 1)) (< lt!797767 lt!797757) (>= lt!797767 lastNullablePos!123) (or (= lt!797767 lastNullablePos!123) (>= lt!797767 from!1043)))))

(assert (=> d!644449 (= lt!797767 e!1365304)))

(declare-fun c!340420 () Bool)

(assert (=> d!644449 (= c!340420 e!1365302)))

(declare-fun res!923680 () Bool)

(assert (=> d!644449 (=> res!923680 e!1365302)))

(assert (=> d!644449 (= res!923680 (= from!1043 lt!797757))))

(assert (=> d!644449 (and (>= from!1043 0) (<= from!1043 lt!797757))))

(assert (=> d!644449 (= (furthestNullablePosition!67 z!3839 from!1043 totalInput!851 lt!797757 lastNullablePos!123) lt!797767)))

(declare-fun b!2138352 () Bool)

(assert (=> b!2138352 (= e!1365303 from!1043)))

(assert (= (and d!644449 (not res!923680)) b!2138351))

(assert (= (and d!644449 c!340420) b!2138350))

(assert (= (and d!644449 (not c!340420)) b!2138353))

(assert (= (and b!2138353 c!340421) b!2138352))

(assert (= (and b!2138353 (not c!340421)) b!2138354))

(declare-fun m!2584936 () Bool)

(assert (=> b!2138351 m!2584936))

(declare-fun m!2584938 () Bool)

(assert (=> b!2138353 m!2584938))

(declare-fun m!2584940 () Bool)

(assert (=> b!2138353 m!2584940))

(assert (=> b!2138353 m!2584940))

(declare-fun m!2584942 () Bool)

(assert (=> b!2138353 m!2584942))

(declare-fun m!2584944 () Bool)

(assert (=> b!2138353 m!2584944))

(assert (=> b!2138299 d!644449))

(declare-fun d!644451 () Bool)

(assert (=> d!644451 (= (array_inv!2934 (_keys!3019 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))) (bvsge (size!18969 (_keys!3019 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2138286 d!644451))

(declare-fun d!644453 () Bool)

(assert (=> d!644453 (= (array_inv!2935 (_values!3002 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))) (bvsge (size!18972 (_values!3002 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2138286 d!644453))

(declare-fun d!644455 () Bool)

(assert (=> d!644455 (= (array_inv!2934 (_keys!3018 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))) (bvsge (size!18969 (_keys!3018 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2138302 d!644455))

(declare-fun d!644457 () Bool)

(assert (=> d!644457 (= (array_inv!2937 (_values!3001 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))) (bvsge (size!18971 (_values!3001 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2138302 d!644457))

(declare-fun d!644459 () Bool)

(assert (=> d!644459 (= (inv!31926 (totalInput!3097 cacheFurthestNullable!114)) (isBalanced!2456 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))

(declare-fun bs!444427 () Bool)

(assert (= bs!444427 d!644459))

(declare-fun m!2584946 () Bool)

(assert (=> bs!444427 m!2584946))

(assert (=> b!2138311 d!644459))

(declare-fun b!2138367 () Bool)

(declare-fun e!1365309 () Bool)

(assert (=> b!2138367 (= e!1365309 (= (lastNullablePos!407 (h!29659 stack!8)) (- (from!2720 (h!29659 stack!8)) 1)))))

(declare-fun b!2138368 () Bool)

(declare-fun res!923697 () Bool)

(declare-fun e!1365310 () Bool)

(assert (=> b!2138368 (=> (not res!923697) (not e!1365310))))

(assert (=> b!2138368 (= res!923697 (and (>= (lastNullablePos!407 (h!29659 stack!8)) (- 1)) (< (lastNullablePos!407 (h!29659 stack!8)) (from!2720 (h!29659 stack!8)))))))

(declare-fun b!2138369 () Bool)

(assert (=> b!2138369 (= e!1365310 (= (res!923663 (h!29659 stack!8)) (furthestNullablePosition!67 (z!5837 (h!29659 stack!8)) (from!2720 (h!29659 stack!8)) (totalInput!3098 (h!29659 stack!8)) (size!18973 (totalInput!3098 (h!29659 stack!8))) (lastNullablePos!407 (h!29659 stack!8)))))))

(declare-fun b!2138370 () Bool)

(declare-fun res!923694 () Bool)

(assert (=> b!2138370 (=> (not res!923694) (not e!1365310))))

(assert (=> b!2138370 (= res!923694 (= (size!18973 (totalInput!3098 (h!29659 stack!8))) (size!18973 (totalInput!3098 (h!29659 stack!8)))))))

(declare-fun d!644461 () Bool)

(declare-fun res!923693 () Bool)

(assert (=> d!644461 (=> (not res!923693) (not e!1365310))))

(assert (=> d!644461 (= res!923693 (>= (from!2720 (h!29659 stack!8)) 0))))

(assert (=> d!644461 (= (inv!31931 (h!29659 stack!8)) e!1365310)))

(declare-fun b!2138371 () Bool)

(declare-fun res!923695 () Bool)

(assert (=> b!2138371 (=> (not res!923695) (not e!1365310))))

(assert (=> b!2138371 (= res!923695 e!1365309)))

(declare-fun res!923696 () Bool)

(assert (=> b!2138371 (=> res!923696 e!1365309)))

(assert (=> b!2138371 (= res!923696 (not (nullableZipper!131 (z!5837 (h!29659 stack!8)))))))

(declare-fun b!2138372 () Bool)

(declare-fun res!923698 () Bool)

(assert (=> b!2138372 (=> (not res!923698) (not e!1365310))))

(assert (=> b!2138372 (= res!923698 (<= (from!2720 (h!29659 stack!8)) (size!18973 (totalInput!3098 (h!29659 stack!8)))))))

(assert (= (and d!644461 res!923693) b!2138372))

(assert (= (and b!2138372 res!923698) b!2138370))

(assert (= (and b!2138370 res!923694) b!2138368))

(assert (= (and b!2138368 res!923697) b!2138371))

(assert (= (and b!2138371 (not res!923696)) b!2138367))

(assert (= (and b!2138371 res!923695) b!2138369))

(declare-fun m!2584948 () Bool)

(assert (=> b!2138369 m!2584948))

(assert (=> b!2138369 m!2584948))

(declare-fun m!2584950 () Bool)

(assert (=> b!2138369 m!2584950))

(assert (=> b!2138370 m!2584948))

(declare-fun m!2584952 () Bool)

(assert (=> b!2138371 m!2584952))

(assert (=> b!2138372 m!2584948))

(assert (=> b!2138305 d!644461))

(declare-fun d!644463 () Bool)

(declare-fun res!923701 () Bool)

(declare-fun e!1365313 () Bool)

(assert (=> d!644463 (=> (not res!923701) (not e!1365313))))

(assert (=> d!644463 (= res!923701 ((_ is HashMap!2635) (cache!3016 cacheFurthestNullable!114)))))

(assert (=> d!644463 (= (inv!31927 cacheFurthestNullable!114) e!1365313)))

(declare-fun b!2138375 () Bool)

(assert (=> b!2138375 (= e!1365313 (validCacheMapFurthestNullable!102 (cache!3016 cacheFurthestNullable!114) (totalInput!3097 cacheFurthestNullable!114)))))

(assert (= (and d!644463 res!923701) b!2138375))

(assert (=> b!2138375 m!2584904))

(assert (=> start!207678 d!644463))

(declare-fun d!644465 () Bool)

(declare-fun res!923704 () Bool)

(declare-fun e!1365316 () Bool)

(assert (=> d!644465 (=> (not res!923704) (not e!1365316))))

(assert (=> d!644465 (= res!923704 ((_ is HashMap!2636) (cache!3017 cacheDown!1098)))))

(assert (=> d!644465 (= (inv!31928 cacheDown!1098) e!1365316)))

(declare-fun b!2138378 () Bool)

(assert (=> b!2138378 (= e!1365316 (validCacheMapDown!250 (cache!3017 cacheDown!1098)))))

(assert (= (and d!644465 res!923704) b!2138378))

(assert (=> b!2138378 m!2584906))

(assert (=> start!207678 d!644465))

(declare-fun d!644467 () Bool)

(declare-fun res!923707 () Bool)

(declare-fun e!1365319 () Bool)

(assert (=> d!644467 (=> (not res!923707) (not e!1365319))))

(assert (=> d!644467 (= res!923707 ((_ is HashMap!2634) (cache!3015 cacheUp!979)))))

(assert (=> d!644467 (= (inv!31929 cacheUp!979) e!1365319)))

(declare-fun b!2138381 () Bool)

(declare-fun validCacheMapUp!252 (MutableMap!2634) Bool)

(assert (=> b!2138381 (= e!1365319 (validCacheMapUp!252 (cache!3015 cacheUp!979)))))

(assert (= (and d!644467 res!923707) b!2138381))

(declare-fun m!2584954 () Bool)

(assert (=> b!2138381 m!2584954))

(assert (=> start!207678 d!644467))

(declare-fun d!644469 () Bool)

(assert (=> d!644469 (= (inv!31926 totalInput!851) (isBalanced!2456 (c!340410 totalInput!851)))))

(declare-fun bs!444428 () Bool)

(assert (= bs!444428 d!644469))

(declare-fun m!2584956 () Bool)

(assert (=> bs!444428 m!2584956))

(assert (=> start!207678 d!644469))

(declare-fun bs!444429 () Bool)

(declare-fun d!644471 () Bool)

(assert (= bs!444429 (and d!644471 d!644447)))

(declare-fun lambda!79845 () Int)

(assert (=> bs!444429 (= lambda!79845 lambda!79844)))

(assert (=> d!644471 (= (inv!31930 setElem!16087) (forall!4949 (exprs!1833 setElem!16087) lambda!79845))))

(declare-fun bs!444430 () Bool)

(assert (= bs!444430 d!644471))

(declare-fun m!2584958 () Bool)

(assert (=> bs!444430 m!2584958))

(assert (=> setNonEmpty!16088 d!644471))

(declare-fun d!644473 () Bool)

(declare-fun lt!797771 () Int)

(declare-fun size!18974 (List!24339) Int)

(declare-fun list!9544 (BalanceConc!15564) List!24339)

(assert (=> d!644473 (= lt!797771 (size!18974 (list!9544 totalInput!851)))))

(declare-fun size!18975 (Conc!7901) Int)

(assert (=> d!644473 (= lt!797771 (size!18975 (c!340410 totalInput!851)))))

(assert (=> d!644473 (= (size!18973 totalInput!851) lt!797771)))

(declare-fun bs!444431 () Bool)

(assert (= bs!444431 d!644473))

(declare-fun m!2584960 () Bool)

(assert (=> bs!444431 m!2584960))

(assert (=> bs!444431 m!2584960))

(declare-fun m!2584962 () Bool)

(assert (=> bs!444431 m!2584962))

(declare-fun m!2584964 () Bool)

(assert (=> bs!444431 m!2584964))

(assert (=> b!2138314 d!644473))

(declare-fun d!644475 () Bool)

(declare-fun c!340422 () Bool)

(assert (=> d!644475 (= c!340422 ((_ is Node!7901) (c!340410 (totalInput!3098 (h!29659 stack!8)))))))

(declare-fun e!1365320 () Bool)

(assert (=> d!644475 (= (inv!31925 (c!340410 (totalInput!3098 (h!29659 stack!8)))) e!1365320)))

(declare-fun b!2138382 () Bool)

(assert (=> b!2138382 (= e!1365320 (inv!31932 (c!340410 (totalInput!3098 (h!29659 stack!8)))))))

(declare-fun b!2138383 () Bool)

(declare-fun e!1365321 () Bool)

(assert (=> b!2138383 (= e!1365320 e!1365321)))

(declare-fun res!923708 () Bool)

(assert (=> b!2138383 (= res!923708 (not ((_ is Leaf!11550) (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(assert (=> b!2138383 (=> res!923708 e!1365321)))

(declare-fun b!2138384 () Bool)

(assert (=> b!2138384 (= e!1365321 (inv!31933 (c!340410 (totalInput!3098 (h!29659 stack!8)))))))

(assert (= (and d!644475 c!340422) b!2138382))

(assert (= (and d!644475 (not c!340422)) b!2138383))

(assert (= (and b!2138383 (not res!923708)) b!2138384))

(declare-fun m!2584966 () Bool)

(assert (=> b!2138382 m!2584966))

(declare-fun m!2584968 () Bool)

(assert (=> b!2138384 m!2584968))

(assert (=> b!2138288 d!644475))

(declare-fun d!644477 () Bool)

(declare-fun c!340423 () Bool)

(assert (=> d!644477 (= c!340423 ((_ is Node!7901) (c!340410 totalInput!851)))))

(declare-fun e!1365322 () Bool)

(assert (=> d!644477 (= (inv!31925 (c!340410 totalInput!851)) e!1365322)))

(declare-fun b!2138385 () Bool)

(assert (=> b!2138385 (= e!1365322 (inv!31932 (c!340410 totalInput!851)))))

(declare-fun b!2138386 () Bool)

(declare-fun e!1365323 () Bool)

(assert (=> b!2138386 (= e!1365322 e!1365323)))

(declare-fun res!923709 () Bool)

(assert (=> b!2138386 (= res!923709 (not ((_ is Leaf!11550) (c!340410 totalInput!851))))))

(assert (=> b!2138386 (=> res!923709 e!1365323)))

(declare-fun b!2138387 () Bool)

(assert (=> b!2138387 (= e!1365323 (inv!31933 (c!340410 totalInput!851)))))

(assert (= (and d!644477 c!340423) b!2138385))

(assert (= (and d!644477 (not c!340423)) b!2138386))

(assert (= (and b!2138386 (not res!923709)) b!2138387))

(declare-fun m!2584970 () Bool)

(assert (=> b!2138385 m!2584970))

(declare-fun m!2584972 () Bool)

(assert (=> b!2138387 m!2584972))

(assert (=> b!2138280 d!644477))

(declare-fun d!644479 () Bool)

(assert (=> d!644479 (= (valid!2124 cacheUp!979) (validCacheMapUp!252 (cache!3015 cacheUp!979)))))

(declare-fun bs!444432 () Bool)

(assert (= bs!444432 d!644479))

(assert (=> bs!444432 m!2584954))

(assert (=> b!2138279 d!644479))

(declare-fun b!2138402 () Bool)

(declare-fun e!1365336 () Bool)

(declare-fun tp!660085 () Bool)

(assert (=> b!2138402 (= e!1365336 tp!660085)))

(declare-fun b!2138403 () Bool)

(declare-fun e!1365340 () Bool)

(declare-fun tp!660080 () Bool)

(assert (=> b!2138403 (= e!1365340 tp!660080)))

(declare-fun e!1365339 () Bool)

(declare-fun tp!660083 () Bool)

(declare-fun tp_is_empty!9505 () Bool)

(declare-fun b!2138404 () Bool)

(declare-fun tp!660086 () Bool)

(declare-fun setRes!16094 () Bool)

(declare-fun mapValue!12984 () List!24341)

(assert (=> b!2138404 (= e!1365339 (and tp!660083 (inv!31930 (_2!14188 (_1!14189 (h!29658 mapValue!12984)))) e!1365340 tp_is_empty!9505 setRes!16094 tp!660086))))

(declare-fun condSetEmpty!16093 () Bool)

(assert (=> b!2138404 (= condSetEmpty!16093 (= (_2!14189 (h!29658 mapValue!12984)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setNonEmpty!16093 () Bool)

(declare-fun tp!660088 () Bool)

(declare-fun setRes!16093 () Bool)

(declare-fun setElem!16093 () Context!2666)

(declare-fun e!1365341 () Bool)

(assert (=> setNonEmpty!16093 (= setRes!16093 (and tp!660088 (inv!31930 setElem!16093) e!1365341))))

(declare-fun mapDefault!12984 () List!24341)

(declare-fun setRest!16093 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16093 (= (_2!14189 (h!29658 mapDefault!12984)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16093 true) setRest!16093))))

(declare-fun mapNonEmpty!12984 () Bool)

(declare-fun mapRes!12984 () Bool)

(declare-fun tp!660082 () Bool)

(assert (=> mapNonEmpty!12984 (= mapRes!12984 (and tp!660082 e!1365339))))

(declare-fun mapRest!12984 () (Array (_ BitVec 32) List!24341))

(declare-fun mapKey!12984 () (_ BitVec 32))

(assert (=> mapNonEmpty!12984 (= mapRest!12980 (store mapRest!12984 mapKey!12984 mapValue!12984))))

(declare-fun e!1365338 () Bool)

(declare-fun e!1365337 () Bool)

(declare-fun tp!660089 () Bool)

(declare-fun tp!660081 () Bool)

(declare-fun b!2138405 () Bool)

(assert (=> b!2138405 (= e!1365337 (and tp!660081 (inv!31930 (_2!14188 (_1!14189 (h!29658 mapDefault!12984)))) e!1365338 tp_is_empty!9505 setRes!16093 tp!660089))))

(declare-fun condSetEmpty!16094 () Bool)

(assert (=> b!2138405 (= condSetEmpty!16094 (= (_2!14189 (h!29658 mapDefault!12984)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16093 () Bool)

(assert (=> setIsEmpty!16093 setRes!16093))

(declare-fun condMapEmpty!12984 () Bool)

(assert (=> mapNonEmpty!12979 (= condMapEmpty!12984 (= mapRest!12980 ((as const (Array (_ BitVec 32) List!24341)) mapDefault!12984)))))

(assert (=> mapNonEmpty!12979 (= tp!660045 (and e!1365337 mapRes!12984))))

(declare-fun b!2138406 () Bool)

(declare-fun tp!660087 () Bool)

(assert (=> b!2138406 (= e!1365338 tp!660087)))

(declare-fun setElem!16094 () Context!2666)

(declare-fun setNonEmpty!16094 () Bool)

(declare-fun tp!660079 () Bool)

(assert (=> setNonEmpty!16094 (= setRes!16094 (and tp!660079 (inv!31930 setElem!16094) e!1365336))))

(declare-fun setRest!16094 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16094 (= (_2!14189 (h!29658 mapValue!12984)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16094 true) setRest!16094))))

(declare-fun b!2138407 () Bool)

(declare-fun tp!660084 () Bool)

(assert (=> b!2138407 (= e!1365341 tp!660084)))

(declare-fun setIsEmpty!16094 () Bool)

(assert (=> setIsEmpty!16094 setRes!16094))

(declare-fun mapIsEmpty!12984 () Bool)

(assert (=> mapIsEmpty!12984 mapRes!12984))

(assert (= (and mapNonEmpty!12979 condMapEmpty!12984) mapIsEmpty!12984))

(assert (= (and mapNonEmpty!12979 (not condMapEmpty!12984)) mapNonEmpty!12984))

(assert (= b!2138404 b!2138403))

(assert (= (and b!2138404 condSetEmpty!16093) setIsEmpty!16094))

(assert (= (and b!2138404 (not condSetEmpty!16093)) setNonEmpty!16094))

(assert (= setNonEmpty!16094 b!2138402))

(assert (= (and mapNonEmpty!12984 ((_ is Cons!24257) mapValue!12984)) b!2138404))

(assert (= b!2138405 b!2138406))

(assert (= (and b!2138405 condSetEmpty!16094) setIsEmpty!16093))

(assert (= (and b!2138405 (not condSetEmpty!16094)) setNonEmpty!16093))

(assert (= setNonEmpty!16093 b!2138407))

(assert (= (and mapNonEmpty!12979 ((_ is Cons!24257) mapDefault!12984)) b!2138405))

(declare-fun m!2584974 () Bool)

(assert (=> setNonEmpty!16093 m!2584974))

(declare-fun m!2584976 () Bool)

(assert (=> b!2138404 m!2584976))

(declare-fun m!2584978 () Bool)

(assert (=> mapNonEmpty!12984 m!2584978))

(declare-fun m!2584980 () Bool)

(assert (=> b!2138405 m!2584980))

(declare-fun m!2584982 () Bool)

(assert (=> setNonEmpty!16094 m!2584982))

(declare-fun tp!660100 () Bool)

(declare-fun setRes!16097 () Bool)

(declare-fun tp!660101 () Bool)

(declare-fun e!1365350 () Bool)

(declare-fun e!1365349 () Bool)

(declare-fun b!2138416 () Bool)

(assert (=> b!2138416 (= e!1365350 (and tp!660101 (inv!31930 (_2!14188 (_1!14189 (h!29658 mapValue!12979)))) e!1365349 tp_is_empty!9505 setRes!16097 tp!660100))))

(declare-fun condSetEmpty!16097 () Bool)

(assert (=> b!2138416 (= condSetEmpty!16097 (= (_2!14189 (h!29658 mapValue!12979)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun tp!660104 () Bool)

(declare-fun setNonEmpty!16097 () Bool)

(declare-fun setElem!16097 () Context!2666)

(declare-fun e!1365348 () Bool)

(assert (=> setNonEmpty!16097 (= setRes!16097 (and tp!660104 (inv!31930 setElem!16097) e!1365348))))

(declare-fun setRest!16097 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16097 (= (_2!14189 (h!29658 mapValue!12979)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16097 true) setRest!16097))))

(declare-fun setIsEmpty!16097 () Bool)

(assert (=> setIsEmpty!16097 setRes!16097))

(declare-fun b!2138417 () Bool)

(declare-fun tp!660103 () Bool)

(assert (=> b!2138417 (= e!1365349 tp!660103)))

(assert (=> mapNonEmpty!12979 (= tp!660029 e!1365350)))

(declare-fun b!2138418 () Bool)

(declare-fun tp!660102 () Bool)

(assert (=> b!2138418 (= e!1365348 tp!660102)))

(assert (= b!2138416 b!2138417))

(assert (= (and b!2138416 condSetEmpty!16097) setIsEmpty!16097))

(assert (= (and b!2138416 (not condSetEmpty!16097)) setNonEmpty!16097))

(assert (= setNonEmpty!16097 b!2138418))

(assert (= (and mapNonEmpty!12979 ((_ is Cons!24257) mapValue!12979)) b!2138416))

(declare-fun m!2584984 () Bool)

(assert (=> b!2138416 m!2584984))

(declare-fun m!2584986 () Bool)

(assert (=> setNonEmpty!16097 m!2584986))

(declare-fun e!1365359 () Bool)

(declare-fun setRes!16100 () Bool)

(declare-fun tp!660114 () Bool)

(declare-fun b!2138427 () Bool)

(declare-fun e!1365357 () Bool)

(assert (=> b!2138427 (= e!1365359 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))))) e!1365357 tp_is_empty!9505 setRes!16100 tp!660114))))

(declare-fun condSetEmpty!16100 () Bool)

(assert (=> b!2138427 (= condSetEmpty!16100 (= (_2!14185 (h!29655 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16100 () Bool)

(assert (=> setIsEmpty!16100 setRes!16100))

(declare-fun b!2138428 () Bool)

(declare-fun tp!660116 () Bool)

(assert (=> b!2138428 (= e!1365357 tp!660116)))

(declare-fun setNonEmpty!16100 () Bool)

(declare-fun tp!660113 () Bool)

(declare-fun e!1365358 () Bool)

(declare-fun setElem!16100 () Context!2666)

(assert (=> setNonEmpty!16100 (= setRes!16100 (and tp!660113 (inv!31930 setElem!16100) e!1365358))))

(declare-fun setRest!16100 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16100 (= (_2!14185 (h!29655 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16100 true) setRest!16100))))

(declare-fun b!2138429 () Bool)

(declare-fun tp!660115 () Bool)

(assert (=> b!2138429 (= e!1365358 tp!660115)))

(assert (=> b!2138290 (= tp!660056 e!1365359)))

(assert (= b!2138427 b!2138428))

(assert (= (and b!2138427 condSetEmpty!16100) setIsEmpty!16100))

(assert (= (and b!2138427 (not condSetEmpty!16100)) setNonEmpty!16100))

(assert (= setNonEmpty!16100 b!2138429))

(assert (= (and b!2138290 ((_ is Cons!24254) (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))) b!2138427))

(declare-fun m!2584988 () Bool)

(assert (=> b!2138427 m!2584988))

(declare-fun m!2584990 () Bool)

(assert (=> setNonEmpty!16100 m!2584990))

(declare-fun tp!660118 () Bool)

(declare-fun e!1365362 () Bool)

(declare-fun e!1365360 () Bool)

(declare-fun b!2138430 () Bool)

(declare-fun setRes!16101 () Bool)

(assert (=> b!2138430 (= e!1365362 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))))) e!1365360 tp_is_empty!9505 setRes!16101 tp!660118))))

(declare-fun condSetEmpty!16101 () Bool)

(assert (=> b!2138430 (= condSetEmpty!16101 (= (_2!14185 (h!29655 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16101 () Bool)

(assert (=> setIsEmpty!16101 setRes!16101))

(declare-fun b!2138431 () Bool)

(declare-fun tp!660120 () Bool)

(assert (=> b!2138431 (= e!1365360 tp!660120)))

(declare-fun setNonEmpty!16101 () Bool)

(declare-fun setElem!16101 () Context!2666)

(declare-fun tp!660117 () Bool)

(declare-fun e!1365361 () Bool)

(assert (=> setNonEmpty!16101 (= setRes!16101 (and tp!660117 (inv!31930 setElem!16101) e!1365361))))

(declare-fun setRest!16101 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16101 (= (_2!14185 (h!29655 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16101 true) setRest!16101))))

(declare-fun b!2138432 () Bool)

(declare-fun tp!660119 () Bool)

(assert (=> b!2138432 (= e!1365361 tp!660119)))

(assert (=> b!2138290 (= tp!660049 e!1365362)))

(assert (= b!2138430 b!2138431))

(assert (= (and b!2138430 condSetEmpty!16101) setIsEmpty!16101))

(assert (= (and b!2138430 (not condSetEmpty!16101)) setNonEmpty!16101))

(assert (= setNonEmpty!16101 b!2138432))

(assert (= (and b!2138290 ((_ is Cons!24254) (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))) b!2138430))

(declare-fun m!2584992 () Bool)

(assert (=> b!2138430 m!2584992))

(declare-fun m!2584994 () Bool)

(assert (=> setNonEmpty!16101 m!2584994))

(declare-fun e!1365368 () Bool)

(declare-fun b!2138441 () Bool)

(declare-fun tp!660127 () Bool)

(declare-fun tp!660128 () Bool)

(assert (=> b!2138441 (= e!1365368 (and (inv!31925 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) tp!660127 (inv!31925 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) tp!660128))))

(declare-fun b!2138443 () Bool)

(declare-fun e!1365367 () Bool)

(declare-fun tp!660129 () Bool)

(assert (=> b!2138443 (= e!1365367 tp!660129)))

(declare-fun b!2138442 () Bool)

(declare-fun inv!31934 (IArray!15807) Bool)

(assert (=> b!2138442 (= e!1365368 (and (inv!31934 (xs!10843 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) e!1365367))))

(assert (=> b!2138282 (= tp!660036 (and (inv!31925 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) e!1365368))))

(assert (= (and b!2138282 ((_ is Node!7901) (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) b!2138441))

(assert (= b!2138442 b!2138443))

(assert (= (and b!2138282 ((_ is Leaf!11550) (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) b!2138442))

(declare-fun m!2584996 () Bool)

(assert (=> b!2138441 m!2584996))

(declare-fun m!2584998 () Bool)

(assert (=> b!2138441 m!2584998))

(declare-fun m!2585000 () Bool)

(assert (=> b!2138442 m!2585000))

(assert (=> b!2138282 m!2584874))

(declare-fun setRes!16102 () Bool)

(declare-fun tp!660131 () Bool)

(declare-fun e!1365369 () Bool)

(declare-fun e!1365371 () Bool)

(declare-fun b!2138444 () Bool)

(assert (=> b!2138444 (= e!1365371 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 mapDefault!12980)))) e!1365369 tp_is_empty!9505 setRes!16102 tp!660131))))

(declare-fun condSetEmpty!16102 () Bool)

(assert (=> b!2138444 (= condSetEmpty!16102 (= (_2!14185 (h!29655 mapDefault!12980)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16102 () Bool)

(assert (=> setIsEmpty!16102 setRes!16102))

(declare-fun b!2138445 () Bool)

(declare-fun tp!660133 () Bool)

(assert (=> b!2138445 (= e!1365369 tp!660133)))

(declare-fun setElem!16102 () Context!2666)

(declare-fun setNonEmpty!16102 () Bool)

(declare-fun e!1365370 () Bool)

(declare-fun tp!660130 () Bool)

(assert (=> setNonEmpty!16102 (= setRes!16102 (and tp!660130 (inv!31930 setElem!16102) e!1365370))))

(declare-fun setRest!16102 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16102 (= (_2!14185 (h!29655 mapDefault!12980)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16102 true) setRest!16102))))

(declare-fun b!2138446 () Bool)

(declare-fun tp!660132 () Bool)

(assert (=> b!2138446 (= e!1365370 tp!660132)))

(assert (=> b!2138309 (= tp!660040 e!1365371)))

(assert (= b!2138444 b!2138445))

(assert (= (and b!2138444 condSetEmpty!16102) setIsEmpty!16102))

(assert (= (and b!2138444 (not condSetEmpty!16102)) setNonEmpty!16102))

(assert (= setNonEmpty!16102 b!2138446))

(assert (= (and b!2138309 ((_ is Cons!24254) mapDefault!12980)) b!2138444))

(declare-fun m!2585002 () Bool)

(assert (=> b!2138444 m!2585002))

(declare-fun m!2585004 () Bool)

(assert (=> setNonEmpty!16102 m!2585004))

(declare-fun setRes!16103 () Bool)

(declare-fun tp!660135 () Bool)

(declare-fun tp!660134 () Bool)

(declare-fun e!1365374 () Bool)

(declare-fun b!2138447 () Bool)

(declare-fun e!1365373 () Bool)

(assert (=> b!2138447 (= e!1365374 (and tp!660135 (inv!31930 (_2!14188 (_1!14189 (h!29658 mapDefault!12979)))) e!1365373 tp_is_empty!9505 setRes!16103 tp!660134))))

(declare-fun condSetEmpty!16103 () Bool)

(assert (=> b!2138447 (= condSetEmpty!16103 (= (_2!14189 (h!29658 mapDefault!12979)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setNonEmpty!16103 () Bool)

(declare-fun setElem!16103 () Context!2666)

(declare-fun tp!660138 () Bool)

(declare-fun e!1365372 () Bool)

(assert (=> setNonEmpty!16103 (= setRes!16103 (and tp!660138 (inv!31930 setElem!16103) e!1365372))))

(declare-fun setRest!16103 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16103 (= (_2!14189 (h!29658 mapDefault!12979)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16103 true) setRest!16103))))

(declare-fun setIsEmpty!16103 () Bool)

(assert (=> setIsEmpty!16103 setRes!16103))

(declare-fun b!2138448 () Bool)

(declare-fun tp!660137 () Bool)

(assert (=> b!2138448 (= e!1365373 tp!660137)))

(assert (=> b!2138308 (= tp!660032 e!1365374)))

(declare-fun b!2138449 () Bool)

(declare-fun tp!660136 () Bool)

(assert (=> b!2138449 (= e!1365372 tp!660136)))

(assert (= b!2138447 b!2138448))

(assert (= (and b!2138447 condSetEmpty!16103) setIsEmpty!16103))

(assert (= (and b!2138447 (not condSetEmpty!16103)) setNonEmpty!16103))

(assert (= setNonEmpty!16103 b!2138449))

(assert (= (and b!2138308 ((_ is Cons!24257) mapDefault!12979)) b!2138447))

(declare-fun m!2585006 () Bool)

(assert (=> b!2138447 m!2585006))

(declare-fun m!2585008 () Bool)

(assert (=> setNonEmpty!16103 m!2585008))

(declare-fun condSetEmpty!16106 () Bool)

(assert (=> setNonEmpty!16087 (= condSetEmpty!16106 (= setRest!16088 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16106 () Bool)

(assert (=> setNonEmpty!16087 (= tp!660033 setRes!16106)))

(declare-fun setIsEmpty!16106 () Bool)

(assert (=> setIsEmpty!16106 setRes!16106))

(declare-fun e!1365377 () Bool)

(declare-fun setElem!16106 () Context!2666)

(declare-fun tp!660144 () Bool)

(declare-fun setNonEmpty!16106 () Bool)

(assert (=> setNonEmpty!16106 (= setRes!16106 (and tp!660144 (inv!31930 setElem!16106) e!1365377))))

(declare-fun setRest!16106 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16106 (= setRest!16088 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16106 true) setRest!16106))))

(declare-fun b!2138454 () Bool)

(declare-fun tp!660143 () Bool)

(assert (=> b!2138454 (= e!1365377 tp!660143)))

(assert (= (and setNonEmpty!16087 condSetEmpty!16106) setIsEmpty!16106))

(assert (= (and setNonEmpty!16087 (not condSetEmpty!16106)) setNonEmpty!16106))

(assert (= setNonEmpty!16106 b!2138454))

(declare-fun m!2585010 () Bool)

(assert (=> setNonEmpty!16106 m!2585010))

(declare-fun setIsEmpty!16109 () Bool)

(declare-fun setRes!16109 () Bool)

(assert (=> setIsEmpty!16109 setRes!16109))

(declare-fun setElem!16109 () Context!2666)

(declare-fun tp!660152 () Bool)

(declare-fun e!1365383 () Bool)

(declare-fun setNonEmpty!16109 () Bool)

(assert (=> setNonEmpty!16109 (= setRes!16109 (and tp!660152 (inv!31930 setElem!16109) e!1365383))))

(declare-fun setRest!16109 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16109 (= (_1!14186 (_1!14187 (h!29657 mapDefault!12981))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16109 true) setRest!16109))))

(declare-fun b!2138461 () Bool)

(declare-fun e!1365382 () Bool)

(declare-fun tp!660153 () Bool)

(assert (=> b!2138461 (= e!1365382 (and setRes!16109 tp!660153))))

(declare-fun condSetEmpty!16109 () Bool)

(assert (=> b!2138461 (= condSetEmpty!16109 (= (_1!14186 (_1!14187 (h!29657 mapDefault!12981))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138462 () Bool)

(declare-fun tp!660151 () Bool)

(assert (=> b!2138462 (= e!1365383 tp!660151)))

(assert (=> b!2138312 (= tp!660052 e!1365382)))

(assert (= (and b!2138461 condSetEmpty!16109) setIsEmpty!16109))

(assert (= (and b!2138461 (not condSetEmpty!16109)) setNonEmpty!16109))

(assert (= setNonEmpty!16109 b!2138462))

(assert (= (and b!2138312 ((_ is Cons!24256) mapDefault!12981)) b!2138461))

(declare-fun m!2585012 () Bool)

(assert (=> setNonEmpty!16109 m!2585012))

(declare-fun tp!660155 () Bool)

(declare-fun e!1365386 () Bool)

(declare-fun b!2138463 () Bool)

(declare-fun tp!660154 () Bool)

(declare-fun e!1365385 () Bool)

(declare-fun setRes!16110 () Bool)

(assert (=> b!2138463 (= e!1365386 (and tp!660155 (inv!31930 (_2!14188 (_1!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))))) e!1365385 tp_is_empty!9505 setRes!16110 tp!660154))))

(declare-fun condSetEmpty!16110 () Bool)

(assert (=> b!2138463 (= condSetEmpty!16110 (= (_2!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setElem!16110 () Context!2666)

(declare-fun tp!660158 () Bool)

(declare-fun e!1365384 () Bool)

(declare-fun setNonEmpty!16110 () Bool)

(assert (=> setNonEmpty!16110 (= setRes!16110 (and tp!660158 (inv!31930 setElem!16110) e!1365384))))

(declare-fun setRest!16110 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16110 (= (_2!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16110 true) setRest!16110))))

(declare-fun setIsEmpty!16110 () Bool)

(assert (=> setIsEmpty!16110 setRes!16110))

(declare-fun b!2138464 () Bool)

(declare-fun tp!660157 () Bool)

(assert (=> b!2138464 (= e!1365385 tp!660157)))

(assert (=> b!2138286 (= tp!660044 e!1365386)))

(declare-fun b!2138465 () Bool)

(declare-fun tp!660156 () Bool)

(assert (=> b!2138465 (= e!1365384 tp!660156)))

(assert (= b!2138463 b!2138464))

(assert (= (and b!2138463 condSetEmpty!16110) setIsEmpty!16110))

(assert (= (and b!2138463 (not condSetEmpty!16110)) setNonEmpty!16110))

(assert (= setNonEmpty!16110 b!2138465))

(assert (= (and b!2138286 ((_ is Cons!24257) (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))) b!2138463))

(declare-fun m!2585014 () Bool)

(assert (=> b!2138463 m!2585014))

(declare-fun m!2585016 () Bool)

(assert (=> setNonEmpty!16110 m!2585016))

(declare-fun setRes!16111 () Bool)

(declare-fun e!1365389 () Bool)

(declare-fun b!2138466 () Bool)

(declare-fun tp!660160 () Bool)

(declare-fun tp!660159 () Bool)

(declare-fun e!1365388 () Bool)

(assert (=> b!2138466 (= e!1365389 (and tp!660160 (inv!31930 (_2!14188 (_1!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))))) e!1365388 tp_is_empty!9505 setRes!16111 tp!660159))))

(declare-fun condSetEmpty!16111 () Bool)

(assert (=> b!2138466 (= condSetEmpty!16111 (= (_2!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setNonEmpty!16111 () Bool)

(declare-fun e!1365387 () Bool)

(declare-fun setElem!16111 () Context!2666)

(declare-fun tp!660163 () Bool)

(assert (=> setNonEmpty!16111 (= setRes!16111 (and tp!660163 (inv!31930 setElem!16111) e!1365387))))

(declare-fun setRest!16111 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16111 (= (_2!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16111 true) setRest!16111))))

(declare-fun setIsEmpty!16111 () Bool)

(assert (=> setIsEmpty!16111 setRes!16111))

(declare-fun b!2138467 () Bool)

(declare-fun tp!660162 () Bool)

(assert (=> b!2138467 (= e!1365388 tp!660162)))

(assert (=> b!2138286 (= tp!660038 e!1365389)))

(declare-fun b!2138468 () Bool)

(declare-fun tp!660161 () Bool)

(assert (=> b!2138468 (= e!1365387 tp!660161)))

(assert (= b!2138466 b!2138467))

(assert (= (and b!2138466 condSetEmpty!16111) setIsEmpty!16111))

(assert (= (and b!2138466 (not condSetEmpty!16111)) setNonEmpty!16111))

(assert (= setNonEmpty!16111 b!2138468))

(assert (= (and b!2138286 ((_ is Cons!24257) (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))) b!2138466))

(declare-fun m!2585018 () Bool)

(assert (=> b!2138466 m!2585018))

(declare-fun m!2585020 () Bool)

(assert (=> setNonEmpty!16111 m!2585020))

(declare-fun setIsEmpty!16112 () Bool)

(declare-fun setRes!16112 () Bool)

(assert (=> setIsEmpty!16112 setRes!16112))

(declare-fun setElem!16112 () Context!2666)

(declare-fun tp!660165 () Bool)

(declare-fun setNonEmpty!16112 () Bool)

(declare-fun e!1365391 () Bool)

(assert (=> setNonEmpty!16112 (= setRes!16112 (and tp!660165 (inv!31930 setElem!16112) e!1365391))))

(declare-fun setRest!16112 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16112 (= (_1!14186 (_1!14187 (h!29657 (zeroValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16112 true) setRest!16112))))

(declare-fun b!2138469 () Bool)

(declare-fun e!1365390 () Bool)

(declare-fun tp!660166 () Bool)

(assert (=> b!2138469 (= e!1365390 (and setRes!16112 tp!660166))))

(declare-fun condSetEmpty!16112 () Bool)

(assert (=> b!2138469 (= condSetEmpty!16112 (= (_1!14186 (_1!14187 (h!29657 (zeroValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138470 () Bool)

(declare-fun tp!660164 () Bool)

(assert (=> b!2138470 (= e!1365391 tp!660164)))

(assert (=> b!2138302 (= tp!660035 e!1365390)))

(assert (= (and b!2138469 condSetEmpty!16112) setIsEmpty!16112))

(assert (= (and b!2138469 (not condSetEmpty!16112)) setNonEmpty!16112))

(assert (= setNonEmpty!16112 b!2138470))

(assert (= (and b!2138302 ((_ is Cons!24256) (zeroValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114)))))))) b!2138469))

(declare-fun m!2585022 () Bool)

(assert (=> setNonEmpty!16112 m!2585022))

(declare-fun setIsEmpty!16113 () Bool)

(declare-fun setRes!16113 () Bool)

(assert (=> setIsEmpty!16113 setRes!16113))

(declare-fun e!1365393 () Bool)

(declare-fun setElem!16113 () Context!2666)

(declare-fun tp!660168 () Bool)

(declare-fun setNonEmpty!16113 () Bool)

(assert (=> setNonEmpty!16113 (= setRes!16113 (and tp!660168 (inv!31930 setElem!16113) e!1365393))))

(declare-fun setRest!16113 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16113 (= (_1!14186 (_1!14187 (h!29657 (minValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16113 true) setRest!16113))))

(declare-fun b!2138471 () Bool)

(declare-fun e!1365392 () Bool)

(declare-fun tp!660169 () Bool)

(assert (=> b!2138471 (= e!1365392 (and setRes!16113 tp!660169))))

(declare-fun condSetEmpty!16113 () Bool)

(assert (=> b!2138471 (= condSetEmpty!16113 (= (_1!14186 (_1!14187 (h!29657 (minValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138472 () Bool)

(declare-fun tp!660167 () Bool)

(assert (=> b!2138472 (= e!1365393 tp!660167)))

(assert (=> b!2138302 (= tp!660030 e!1365392)))

(assert (= (and b!2138471 condSetEmpty!16113) setIsEmpty!16113))

(assert (= (and b!2138471 (not condSetEmpty!16113)) setNonEmpty!16113))

(assert (= setNonEmpty!16113 b!2138472))

(assert (= (and b!2138302 ((_ is Cons!24256) (minValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114)))))))) b!2138471))

(declare-fun m!2585024 () Bool)

(assert (=> setNonEmpty!16113 m!2585024))

(declare-fun mapNonEmpty!12987 () Bool)

(declare-fun mapRes!12987 () Bool)

(declare-fun tp!660192 () Bool)

(declare-fun e!1365408 () Bool)

(assert (=> mapNonEmpty!12987 (= mapRes!12987 (and tp!660192 e!1365408))))

(declare-fun mapKey!12987 () (_ BitVec 32))

(declare-fun mapRest!12987 () (Array (_ BitVec 32) List!24338))

(declare-fun mapValue!12987 () List!24338)

(assert (=> mapNonEmpty!12987 (= mapRest!12981 (store mapRest!12987 mapKey!12987 mapValue!12987))))

(declare-fun e!1365410 () Bool)

(declare-fun b!2138487 () Bool)

(declare-fun e!1365409 () Bool)

(declare-fun mapDefault!12987 () List!24338)

(declare-fun tp!660195 () Bool)

(declare-fun setRes!16118 () Bool)

(assert (=> b!2138487 (= e!1365409 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 mapDefault!12987)))) e!1365410 tp_is_empty!9505 setRes!16118 tp!660195))))

(declare-fun condSetEmpty!16118 () Bool)

(assert (=> b!2138487 (= condSetEmpty!16118 (= (_2!14185 (h!29655 mapDefault!12987)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun e!1365407 () Bool)

(declare-fun setElem!16119 () Context!2666)

(declare-fun setNonEmpty!16118 () Bool)

(declare-fun setRes!16119 () Bool)

(declare-fun tp!660190 () Bool)

(assert (=> setNonEmpty!16118 (= setRes!16119 (and tp!660190 (inv!31930 setElem!16119) e!1365407))))

(declare-fun setRest!16118 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16118 (= (_2!14185 (h!29655 mapValue!12987)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16119 true) setRest!16118))))

(declare-fun b!2138488 () Bool)

(declare-fun tp!660188 () Bool)

(assert (=> b!2138488 (= e!1365407 tp!660188)))

(declare-fun setIsEmpty!16118 () Bool)

(assert (=> setIsEmpty!16118 setRes!16119))

(declare-fun setIsEmpty!16119 () Bool)

(assert (=> setIsEmpty!16119 setRes!16118))

(declare-fun b!2138489 () Bool)

(declare-fun e!1365406 () Bool)

(declare-fun tp!660189 () Bool)

(assert (=> b!2138489 (= e!1365406 tp!660189)))

(declare-fun b!2138490 () Bool)

(declare-fun tp!660193 () Bool)

(declare-fun e!1365411 () Bool)

(assert (=> b!2138490 (= e!1365408 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 mapValue!12987)))) e!1365411 tp_is_empty!9505 setRes!16119 tp!660193))))

(declare-fun condSetEmpty!16119 () Bool)

(assert (=> b!2138490 (= condSetEmpty!16119 (= (_2!14185 (h!29655 mapValue!12987)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setNonEmpty!16119 () Bool)

(declare-fun tp!660191 () Bool)

(declare-fun setElem!16118 () Context!2666)

(assert (=> setNonEmpty!16119 (= setRes!16118 (and tp!660191 (inv!31930 setElem!16118) e!1365406))))

(declare-fun setRest!16119 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16119 (= (_2!14185 (h!29655 mapDefault!12987)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16118 true) setRest!16119))))

(declare-fun condMapEmpty!12987 () Bool)

(assert (=> mapNonEmpty!12981 (= condMapEmpty!12987 (= mapRest!12981 ((as const (Array (_ BitVec 32) List!24338)) mapDefault!12987)))))

(assert (=> mapNonEmpty!12981 (= tp!660043 (and e!1365409 mapRes!12987))))

(declare-fun b!2138491 () Bool)

(declare-fun tp!660194 () Bool)

(assert (=> b!2138491 (= e!1365411 tp!660194)))

(declare-fun b!2138492 () Bool)

(declare-fun tp!660196 () Bool)

(assert (=> b!2138492 (= e!1365410 tp!660196)))

(declare-fun mapIsEmpty!12987 () Bool)

(assert (=> mapIsEmpty!12987 mapRes!12987))

(assert (= (and mapNonEmpty!12981 condMapEmpty!12987) mapIsEmpty!12987))

(assert (= (and mapNonEmpty!12981 (not condMapEmpty!12987)) mapNonEmpty!12987))

(assert (= b!2138490 b!2138491))

(assert (= (and b!2138490 condSetEmpty!16119) setIsEmpty!16118))

(assert (= (and b!2138490 (not condSetEmpty!16119)) setNonEmpty!16118))

(assert (= setNonEmpty!16118 b!2138488))

(assert (= (and mapNonEmpty!12987 ((_ is Cons!24254) mapValue!12987)) b!2138490))

(assert (= b!2138487 b!2138492))

(assert (= (and b!2138487 condSetEmpty!16118) setIsEmpty!16119))

(assert (= (and b!2138487 (not condSetEmpty!16118)) setNonEmpty!16119))

(assert (= setNonEmpty!16119 b!2138489))

(assert (= (and mapNonEmpty!12981 ((_ is Cons!24254) mapDefault!12987)) b!2138487))

(declare-fun m!2585026 () Bool)

(assert (=> setNonEmpty!16119 m!2585026))

(declare-fun m!2585028 () Bool)

(assert (=> mapNonEmpty!12987 m!2585028))

(declare-fun m!2585030 () Bool)

(assert (=> b!2138490 m!2585030))

(declare-fun m!2585032 () Bool)

(assert (=> setNonEmpty!16118 m!2585032))

(declare-fun m!2585034 () Bool)

(assert (=> b!2138487 m!2585034))

(declare-fun e!1365414 () Bool)

(declare-fun b!2138493 () Bool)

(declare-fun tp!660198 () Bool)

(declare-fun e!1365412 () Bool)

(declare-fun setRes!16120 () Bool)

(assert (=> b!2138493 (= e!1365414 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 mapValue!12980)))) e!1365412 tp_is_empty!9505 setRes!16120 tp!660198))))

(declare-fun condSetEmpty!16120 () Bool)

(assert (=> b!2138493 (= condSetEmpty!16120 (= (_2!14185 (h!29655 mapValue!12980)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16120 () Bool)

(assert (=> setIsEmpty!16120 setRes!16120))

(declare-fun b!2138494 () Bool)

(declare-fun tp!660200 () Bool)

(assert (=> b!2138494 (= e!1365412 tp!660200)))

(declare-fun setNonEmpty!16120 () Bool)

(declare-fun tp!660197 () Bool)

(declare-fun e!1365413 () Bool)

(declare-fun setElem!16120 () Context!2666)

(assert (=> setNonEmpty!16120 (= setRes!16120 (and tp!660197 (inv!31930 setElem!16120) e!1365413))))

(declare-fun setRest!16120 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16120 (= (_2!14185 (h!29655 mapValue!12980)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16120 true) setRest!16120))))

(declare-fun b!2138495 () Bool)

(declare-fun tp!660199 () Bool)

(assert (=> b!2138495 (= e!1365413 tp!660199)))

(assert (=> mapNonEmpty!12981 (= tp!660050 e!1365414)))

(assert (= b!2138493 b!2138494))

(assert (= (and b!2138493 condSetEmpty!16120) setIsEmpty!16120))

(assert (= (and b!2138493 (not condSetEmpty!16120)) setNonEmpty!16120))

(assert (= setNonEmpty!16120 b!2138495))

(assert (= (and mapNonEmpty!12981 ((_ is Cons!24254) mapValue!12980)) b!2138493))

(declare-fun m!2585036 () Bool)

(assert (=> b!2138493 m!2585036))

(declare-fun m!2585038 () Bool)

(assert (=> setNonEmpty!16120 m!2585038))

(declare-fun b!2138500 () Bool)

(declare-fun e!1365417 () Bool)

(declare-fun tp!660205 () Bool)

(declare-fun tp!660206 () Bool)

(assert (=> b!2138500 (= e!1365417 (and tp!660205 tp!660206))))

(assert (=> b!2138310 (= tp!660053 e!1365417)))

(assert (= (and b!2138310 ((_ is Cons!24253) (exprs!1833 setElem!16088))) b!2138500))

(declare-fun setIsEmpty!16125 () Bool)

(declare-fun setRes!16126 () Bool)

(assert (=> setIsEmpty!16125 setRes!16126))

(declare-fun b!2138511 () Bool)

(declare-fun e!1365428 () Bool)

(declare-fun tp!660221 () Bool)

(assert (=> b!2138511 (= e!1365428 tp!660221)))

(declare-fun condMapEmpty!12990 () Bool)

(declare-fun mapDefault!12990 () List!24340)

(assert (=> mapNonEmpty!12980 (= condMapEmpty!12990 (= mapRest!12979 ((as const (Array (_ BitVec 32) List!24340)) mapDefault!12990)))))

(declare-fun e!1365426 () Bool)

(declare-fun mapRes!12990 () Bool)

(assert (=> mapNonEmpty!12980 (= tp!660042 (and e!1365426 mapRes!12990))))

(declare-fun mapNonEmpty!12990 () Bool)

(declare-fun tp!660224 () Bool)

(declare-fun e!1365429 () Bool)

(assert (=> mapNonEmpty!12990 (= mapRes!12990 (and tp!660224 e!1365429))))

(declare-fun mapRest!12990 () (Array (_ BitVec 32) List!24340))

(declare-fun mapValue!12990 () List!24340)

(declare-fun mapKey!12990 () (_ BitVec 32))

(assert (=> mapNonEmpty!12990 (= mapRest!12979 (store mapRest!12990 mapKey!12990 mapValue!12990))))

(declare-fun setIsEmpty!16126 () Bool)

(declare-fun setRes!16125 () Bool)

(assert (=> setIsEmpty!16126 setRes!16125))

(declare-fun b!2138512 () Bool)

(declare-fun tp!660223 () Bool)

(assert (=> b!2138512 (= e!1365429 (and setRes!16125 tp!660223))))

(declare-fun condSetEmpty!16125 () Bool)

(assert (=> b!2138512 (= condSetEmpty!16125 (= (_1!14186 (_1!14187 (h!29657 mapValue!12990))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun tp!660225 () Bool)

(declare-fun setNonEmpty!16125 () Bool)

(declare-fun setElem!16125 () Context!2666)

(assert (=> setNonEmpty!16125 (= setRes!16125 (and tp!660225 (inv!31930 setElem!16125) e!1365428))))

(declare-fun setRest!16126 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16125 (= (_1!14186 (_1!14187 (h!29657 mapValue!12990))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16125 true) setRest!16126))))

(declare-fun b!2138513 () Bool)

(declare-fun tp!660222 () Bool)

(assert (=> b!2138513 (= e!1365426 (and setRes!16126 tp!660222))))

(declare-fun condSetEmpty!16126 () Bool)

(assert (=> b!2138513 (= condSetEmpty!16126 (= (_1!14186 (_1!14187 (h!29657 mapDefault!12990))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun mapIsEmpty!12990 () Bool)

(assert (=> mapIsEmpty!12990 mapRes!12990))

(declare-fun b!2138514 () Bool)

(declare-fun e!1365427 () Bool)

(declare-fun tp!660226 () Bool)

(assert (=> b!2138514 (= e!1365427 tp!660226)))

(declare-fun setNonEmpty!16126 () Bool)

(declare-fun setElem!16126 () Context!2666)

(declare-fun tp!660227 () Bool)

(assert (=> setNonEmpty!16126 (= setRes!16126 (and tp!660227 (inv!31930 setElem!16126) e!1365427))))

(declare-fun setRest!16125 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16126 (= (_1!14186 (_1!14187 (h!29657 mapDefault!12990))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16126 true) setRest!16125))))

(assert (= (and mapNonEmpty!12980 condMapEmpty!12990) mapIsEmpty!12990))

(assert (= (and mapNonEmpty!12980 (not condMapEmpty!12990)) mapNonEmpty!12990))

(assert (= (and b!2138512 condSetEmpty!16125) setIsEmpty!16126))

(assert (= (and b!2138512 (not condSetEmpty!16125)) setNonEmpty!16125))

(assert (= setNonEmpty!16125 b!2138511))

(assert (= (and mapNonEmpty!12990 ((_ is Cons!24256) mapValue!12990)) b!2138512))

(assert (= (and b!2138513 condSetEmpty!16126) setIsEmpty!16125))

(assert (= (and b!2138513 (not condSetEmpty!16126)) setNonEmpty!16126))

(assert (= setNonEmpty!16126 b!2138514))

(assert (= (and mapNonEmpty!12980 ((_ is Cons!24256) mapDefault!12990)) b!2138513))

(declare-fun m!2585040 () Bool)

(assert (=> mapNonEmpty!12990 m!2585040))

(declare-fun m!2585042 () Bool)

(assert (=> setNonEmpty!16125 m!2585042))

(declare-fun m!2585044 () Bool)

(assert (=> setNonEmpty!16126 m!2585044))

(declare-fun setIsEmpty!16127 () Bool)

(declare-fun setRes!16127 () Bool)

(assert (=> setIsEmpty!16127 setRes!16127))

(declare-fun setElem!16127 () Context!2666)

(declare-fun e!1365431 () Bool)

(declare-fun tp!660229 () Bool)

(declare-fun setNonEmpty!16127 () Bool)

(assert (=> setNonEmpty!16127 (= setRes!16127 (and tp!660229 (inv!31930 setElem!16127) e!1365431))))

(declare-fun setRest!16127 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16127 (= (_1!14186 (_1!14187 (h!29657 mapValue!12981))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16127 true) setRest!16127))))

(declare-fun b!2138515 () Bool)

(declare-fun e!1365430 () Bool)

(declare-fun tp!660230 () Bool)

(assert (=> b!2138515 (= e!1365430 (and setRes!16127 tp!660230))))

(declare-fun condSetEmpty!16127 () Bool)

(assert (=> b!2138515 (= condSetEmpty!16127 (= (_1!14186 (_1!14187 (h!29657 mapValue!12981))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138516 () Bool)

(declare-fun tp!660228 () Bool)

(assert (=> b!2138516 (= e!1365431 tp!660228)))

(assert (=> mapNonEmpty!12980 (= tp!660051 e!1365430)))

(assert (= (and b!2138515 condSetEmpty!16127) setIsEmpty!16127))

(assert (= (and b!2138515 (not condSetEmpty!16127)) setNonEmpty!16127))

(assert (= setNonEmpty!16127 b!2138516))

(assert (= (and mapNonEmpty!12980 ((_ is Cons!24256) mapValue!12981)) b!2138515))

(declare-fun m!2585046 () Bool)

(assert (=> setNonEmpty!16127 m!2585046))

(declare-fun e!1365441 () Bool)

(declare-fun e!1365442 () Bool)

(declare-fun tp!660242 () Bool)

(declare-fun b!2138527 () Bool)

(assert (=> b!2138527 (= e!1365441 (and (inv!31931 (h!29659 (t!196870 stack!8))) e!1365442 tp!660242))))

(assert (=> b!2138305 (= tp!660047 e!1365441)))

(declare-fun b!2138528 () Bool)

(declare-fun e!1365440 () Bool)

(declare-fun tp!660240 () Bool)

(assert (=> b!2138528 (= e!1365440 (and (inv!31925 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8))))) tp!660240))))

(declare-fun setIsEmpty!16130 () Bool)

(declare-fun setRes!16130 () Bool)

(assert (=> setIsEmpty!16130 setRes!16130))

(declare-fun b!2138529 () Bool)

(assert (=> b!2138529 (= e!1365442 (and setRes!16130 (inv!31926 (totalInput!3098 (h!29659 (t!196870 stack!8)))) e!1365440))))

(declare-fun condSetEmpty!16130 () Bool)

(assert (=> b!2138529 (= condSetEmpty!16130 (= (z!5837 (h!29659 (t!196870 stack!8))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138530 () Bool)

(declare-fun e!1365443 () Bool)

(declare-fun tp!660239 () Bool)

(assert (=> b!2138530 (= e!1365443 tp!660239)))

(declare-fun setElem!16130 () Context!2666)

(declare-fun tp!660241 () Bool)

(declare-fun setNonEmpty!16130 () Bool)

(assert (=> setNonEmpty!16130 (= setRes!16130 (and tp!660241 (inv!31930 setElem!16130) e!1365443))))

(declare-fun setRest!16130 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16130 (= (z!5837 (h!29659 (t!196870 stack!8))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16130 true) setRest!16130))))

(assert (= (and b!2138529 condSetEmpty!16130) setIsEmpty!16130))

(assert (= (and b!2138529 (not condSetEmpty!16130)) setNonEmpty!16130))

(assert (= setNonEmpty!16130 b!2138530))

(assert (= b!2138529 b!2138528))

(assert (= b!2138527 b!2138529))

(assert (= (and b!2138305 ((_ is Cons!24258) (t!196870 stack!8))) b!2138527))

(declare-fun m!2585048 () Bool)

(assert (=> b!2138527 m!2585048))

(declare-fun m!2585050 () Bool)

(assert (=> b!2138528 m!2585050))

(declare-fun m!2585052 () Bool)

(assert (=> b!2138529 m!2585052))

(declare-fun m!2585054 () Bool)

(assert (=> setNonEmpty!16130 m!2585054))

(declare-fun condSetEmpty!16131 () Bool)

(assert (=> setNonEmpty!16088 (= condSetEmpty!16131 (= setRest!16087 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16131 () Bool)

(assert (=> setNonEmpty!16088 (= tp!660048 setRes!16131)))

(declare-fun setIsEmpty!16131 () Bool)

(assert (=> setIsEmpty!16131 setRes!16131))

(declare-fun setNonEmpty!16131 () Bool)

(declare-fun e!1365444 () Bool)

(declare-fun tp!660244 () Bool)

(declare-fun setElem!16131 () Context!2666)

(assert (=> setNonEmpty!16131 (= setRes!16131 (and tp!660244 (inv!31930 setElem!16131) e!1365444))))

(declare-fun setRest!16131 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16131 (= setRest!16087 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16131 true) setRest!16131))))

(declare-fun b!2138531 () Bool)

(declare-fun tp!660243 () Bool)

(assert (=> b!2138531 (= e!1365444 tp!660243)))

(assert (= (and setNonEmpty!16088 condSetEmpty!16131) setIsEmpty!16131))

(assert (= (and setNonEmpty!16088 (not condSetEmpty!16131)) setNonEmpty!16131))

(assert (= setNonEmpty!16131 b!2138531))

(declare-fun m!2585056 () Bool)

(assert (=> setNonEmpty!16131 m!2585056))

(declare-fun tp!660245 () Bool)

(declare-fun e!1365446 () Bool)

(declare-fun b!2138532 () Bool)

(declare-fun tp!660246 () Bool)

(assert (=> b!2138532 (= e!1365446 (and (inv!31925 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))) tp!660245 (inv!31925 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))) tp!660246))))

(declare-fun b!2138534 () Bool)

(declare-fun e!1365445 () Bool)

(declare-fun tp!660247 () Bool)

(assert (=> b!2138534 (= e!1365445 tp!660247)))

(declare-fun b!2138533 () Bool)

(assert (=> b!2138533 (= e!1365446 (and (inv!31934 (xs!10843 (c!340410 (totalInput!3098 (h!29659 stack!8))))) e!1365445))))

(assert (=> b!2138288 (= tp!660046 (and (inv!31925 (c!340410 (totalInput!3098 (h!29659 stack!8)))) e!1365446))))

(assert (= (and b!2138288 ((_ is Node!7901) (c!340410 (totalInput!3098 (h!29659 stack!8))))) b!2138532))

(assert (= b!2138533 b!2138534))

(assert (= (and b!2138288 ((_ is Leaf!11550) (c!340410 (totalInput!3098 (h!29659 stack!8))))) b!2138533))

(declare-fun m!2585058 () Bool)

(assert (=> b!2138532 m!2585058))

(declare-fun m!2585060 () Bool)

(assert (=> b!2138532 m!2585060))

(declare-fun m!2585062 () Bool)

(assert (=> b!2138533 m!2585062))

(assert (=> b!2138288 m!2584902))

(declare-fun b!2138535 () Bool)

(declare-fun e!1365447 () Bool)

(declare-fun tp!660248 () Bool)

(declare-fun tp!660249 () Bool)

(assert (=> b!2138535 (= e!1365447 (and tp!660248 tp!660249))))

(assert (=> b!2138295 (= tp!660041 e!1365447)))

(assert (= (and b!2138295 ((_ is Cons!24253) (exprs!1833 setElem!16087))) b!2138535))

(declare-fun e!1365449 () Bool)

(declare-fun b!2138536 () Bool)

(declare-fun tp!660251 () Bool)

(declare-fun tp!660250 () Bool)

(assert (=> b!2138536 (= e!1365449 (and (inv!31925 (left!18667 (c!340410 totalInput!851))) tp!660250 (inv!31925 (right!18997 (c!340410 totalInput!851))) tp!660251))))

(declare-fun b!2138538 () Bool)

(declare-fun e!1365448 () Bool)

(declare-fun tp!660252 () Bool)

(assert (=> b!2138538 (= e!1365448 tp!660252)))

(declare-fun b!2138537 () Bool)

(assert (=> b!2138537 (= e!1365449 (and (inv!31934 (xs!10843 (c!340410 totalInput!851))) e!1365448))))

(assert (=> b!2138280 (= tp!660034 (and (inv!31925 (c!340410 totalInput!851)) e!1365449))))

(assert (= (and b!2138280 ((_ is Node!7901) (c!340410 totalInput!851))) b!2138536))

(assert (= b!2138537 b!2138538))

(assert (= (and b!2138280 ((_ is Leaf!11550) (c!340410 totalInput!851))) b!2138537))

(declare-fun m!2585064 () Bool)

(assert (=> b!2138536 m!2585064))

(declare-fun m!2585066 () Bool)

(assert (=> b!2138536 m!2585066))

(declare-fun m!2585068 () Bool)

(assert (=> b!2138537 m!2585068))

(assert (=> b!2138280 m!2584846))

(declare-fun b_lambda!70597 () Bool)

(assert (= b_lambda!70593 (or b!2138297 b_lambda!70597)))

(declare-fun bs!444433 () Bool)

(declare-fun d!644481 () Bool)

(assert (= bs!444433 (and d!644481 b!2138297)))

(assert (=> bs!444433 (= (dynLambda!11367 lambda!79838 (h!29659 stack!8)) (= (totalInput!3098 (h!29659 stack!8)) totalInput!851))))

(assert (=> b!2138324 d!644481))

(declare-fun b_lambda!70599 () Bool)

(assert (= b_lambda!70595 (or b!2138299 b_lambda!70599)))

(declare-fun bs!444434 () Bool)

(declare-fun d!644483 () Bool)

(assert (= bs!444434 (and d!644483 b!2138299)))

(assert (=> bs!444434 (= (dynLambda!11367 lambda!79837 (h!29659 stack!8)) (= (res!923663 (h!29659 stack!8)) lt!797759))))

(assert (=> b!2138338 d!644483))

(check-sat (not b!2138353) (not b!2138538) (not b!2138493) (not b!2138371) (not b!2138442) (not setNonEmpty!16103) (not b!2138515) (not b!2138489) (not setNonEmpty!16101) (not b!2138465) (not b_next!63527) (not b!2138469) (not b!2138462) (not b!2138382) (not setNonEmpty!16113) (not b_next!63519) (not b!2138416) (not d!644473) (not b!2138375) (not b!2138417) (not b!2138495) (not d!644445) b_and!172403 (not b!2138530) b_and!172401 (not b!2138467) (not setNonEmpty!16126) (not setNonEmpty!16118) (not d!644439) (not b!2138429) (not d!644471) (not setNonEmpty!16094) (not b!2138528) (not b!2138461) (not b!2138404) (not b!2138494) (not b!2138282) (not b!2138443) (not b!2138487) (not b!2138387) b_and!172395 (not b!2138500) (not b!2138385) (not b!2138529) (not d!644427) (not setNonEmpty!16110) (not b!2138470) (not b!2138534) b_and!172393 (not d!644469) b_and!172399 (not b!2138466) (not b!2138513) (not d!644447) (not b!2138464) (not b!2138516) (not b!2138418) (not setNonEmpty!16119) (not b!2138471) (not b_next!63523) (not b!2138454) (not b!2138441) (not b!2138488) (not b!2138449) (not d!644459) (not b!2138444) (not b!2138339) (not setNonEmpty!16093) (not b_lambda!70599) (not b_lambda!70597) (not b_next!63525) (not b!2138370) (not setNonEmpty!16112) tp_is_empty!9505 (not d!644443) (not b!2138445) (not b!2138280) b_and!172397 (not b!2138535) (not b!2138337) (not mapNonEmpty!12987) (not b!2138405) (not b!2138381) (not b!2138369) (not b!2138512) (not b!2138514) (not setNonEmpty!16106) (not b!2138468) (not b!2138431) (not setNonEmpty!16130) (not setNonEmpty!16131) (not b!2138432) (not b!2138427) (not setNonEmpty!16127) (not setNonEmpty!16125) (not b!2138447) (not b!2138334) (not setNonEmpty!16097) (not b!2138537) (not setNonEmpty!16100) (not b!2138472) (not mapNonEmpty!12990) (not d!644433) (not b!2138406) (not b!2138491) (not b!2138407) (not b!2138384) (not b!2138536) (not b!2138511) (not b!2138402) (not setNonEmpty!16102) (not d!644479) (not setNonEmpty!16111) (not b!2138325) (not b!2138463) (not mapNonEmpty!12984) (not b!2138531) (not b!2138527) (not b!2138430) (not b!2138378) (not b!2138403) (not b!2138332) (not b!2138532) (not setNonEmpty!16109) (not b!2138446) (not b_next!63517) (not b!2138533) (not b!2138372) (not setNonEmpty!16120) (not b_next!63521) (not b!2138428) (not b!2138351) (not b!2138448) (not b!2138492) (not b!2138490) (not b!2138288))
(check-sat (not b_next!63527) (not b_next!63519) b_and!172403 b_and!172401 b_and!172395 b_and!172393 b_and!172399 (not b_next!63523) (not b_next!63525) b_and!172397 (not b_next!63517) (not b_next!63521))
(get-model)

(declare-fun d!644485 () Bool)

(declare-fun lt!797774 () Int)

(assert (=> d!644485 (>= lt!797774 0)))

(declare-fun e!1365452 () Int)

(assert (=> d!644485 (= lt!797774 e!1365452)))

(declare-fun c!340426 () Bool)

(assert (=> d!644485 (= c!340426 ((_ is Nil!24255) (list!9544 totalInput!851)))))

(assert (=> d!644485 (= (size!18974 (list!9544 totalInput!851)) lt!797774)))

(declare-fun b!2138543 () Bool)

(assert (=> b!2138543 (= e!1365452 0)))

(declare-fun b!2138544 () Bool)

(assert (=> b!2138544 (= e!1365452 (+ 1 (size!18974 (t!196867 (list!9544 totalInput!851)))))))

(assert (= (and d!644485 c!340426) b!2138543))

(assert (= (and d!644485 (not c!340426)) b!2138544))

(declare-fun m!2585070 () Bool)

(assert (=> b!2138544 m!2585070))

(assert (=> d!644473 d!644485))

(declare-fun d!644487 () Bool)

(declare-fun list!9545 (Conc!7901) List!24339)

(assert (=> d!644487 (= (list!9544 totalInput!851) (list!9545 (c!340410 totalInput!851)))))

(declare-fun bs!444435 () Bool)

(assert (= bs!444435 d!644487))

(declare-fun m!2585072 () Bool)

(assert (=> bs!444435 m!2585072))

(assert (=> d!644473 d!644487))

(declare-fun d!644489 () Bool)

(declare-fun lt!797777 () Int)

(assert (=> d!644489 (= lt!797777 (size!18974 (list!9545 (c!340410 totalInput!851))))))

(assert (=> d!644489 (= lt!797777 (ite ((_ is Empty!7901) (c!340410 totalInput!851)) 0 (ite ((_ is Leaf!11550) (c!340410 totalInput!851)) (csize!16033 (c!340410 totalInput!851)) (csize!16032 (c!340410 totalInput!851)))))))

(assert (=> d!644489 (= (size!18975 (c!340410 totalInput!851)) lt!797777)))

(declare-fun bs!444436 () Bool)

(assert (= bs!444436 d!644489))

(assert (=> bs!444436 m!2585072))

(assert (=> bs!444436 m!2585072))

(declare-fun m!2585074 () Bool)

(assert (=> bs!444436 m!2585074))

(assert (=> d!644473 d!644489))

(declare-fun b!2138550 () Bool)

(assert (=> b!2138550 true))

(declare-fun d!644491 () Bool)

(declare-fun res!923714 () Bool)

(declare-fun e!1365455 () Bool)

(assert (=> d!644491 (=> (not res!923714) (not e!1365455))))

(declare-fun valid!2127 (MutableMap!2635) Bool)

(assert (=> d!644491 (= res!923714 (valid!2127 (cache!3016 cacheFurthestNullable!114)))))

(assert (=> d!644491 (= (validCacheMapFurthestNullable!102 (cache!3016 cacheFurthestNullable!114) (totalInput!3097 cacheFurthestNullable!114)) e!1365455)))

(declare-fun b!2138549 () Bool)

(declare-fun res!923715 () Bool)

(assert (=> b!2138549 (=> (not res!923715) (not e!1365455))))

(declare-fun invariantList!308 (List!24340) Bool)

(declare-datatypes ((ListMap!665 0))(
  ( (ListMap!666 (toList!1074 List!24340)) )
))
(declare-fun map!4889 (MutableMap!2635) ListMap!665)

(assert (=> b!2138549 (= res!923715 (invariantList!308 (toList!1074 (map!4889 (cache!3016 cacheFurthestNullable!114)))))))

(declare-fun lambda!79848 () Int)

(declare-fun forall!4950 (List!24340 Int) Bool)

(assert (=> b!2138550 (= e!1365455 (forall!4950 (toList!1074 (map!4889 (cache!3016 cacheFurthestNullable!114))) lambda!79848))))

(assert (= (and d!644491 res!923714) b!2138549))

(assert (= (and b!2138549 res!923715) b!2138550))

(declare-fun m!2585077 () Bool)

(assert (=> d!644491 m!2585077))

(declare-fun m!2585079 () Bool)

(assert (=> b!2138549 m!2585079))

(declare-fun m!2585081 () Bool)

(assert (=> b!2138549 m!2585081))

(assert (=> b!2138550 m!2585079))

(declare-fun m!2585083 () Bool)

(assert (=> b!2138550 m!2585083))

(assert (=> b!2138375 d!644491))

(declare-fun bs!444437 () Bool)

(declare-fun d!644493 () Bool)

(assert (= bs!444437 (and d!644493 d!644443)))

(declare-fun lambda!79849 () Int)

(assert (=> bs!444437 (= lambda!79849 lambda!79841)))

(assert (=> d!644493 (= (nullableZipper!131 (z!5837 (h!29659 stack!8))) (exists!703 (z!5837 (h!29659 stack!8)) lambda!79849))))

(declare-fun bs!444438 () Bool)

(assert (= bs!444438 d!644493))

(declare-fun m!2585085 () Bool)

(assert (=> bs!444438 m!2585085))

(assert (=> b!2138371 d!644493))

(declare-fun bs!444439 () Bool)

(declare-fun d!644495 () Bool)

(assert (= bs!444439 (and d!644495 d!644447)))

(declare-fun lambda!79850 () Int)

(assert (=> bs!444439 (= lambda!79850 lambda!79844)))

(declare-fun bs!444440 () Bool)

(assert (= bs!444440 (and d!644495 d!644471)))

(assert (=> bs!444440 (= lambda!79850 lambda!79845)))

(assert (=> d!644495 (= (inv!31930 setElem!16093) (forall!4949 (exprs!1833 setElem!16093) lambda!79850))))

(declare-fun bs!444441 () Bool)

(assert (= bs!444441 d!644495))

(declare-fun m!2585087 () Bool)

(assert (=> bs!444441 m!2585087))

(assert (=> setNonEmpty!16093 d!644495))

(declare-fun bs!444442 () Bool)

(declare-fun d!644497 () Bool)

(assert (= bs!444442 (and d!644497 d!644447)))

(declare-fun lambda!79851 () Int)

(assert (=> bs!444442 (= lambda!79851 lambda!79844)))

(declare-fun bs!444443 () Bool)

(assert (= bs!444443 (and d!644497 d!644471)))

(assert (=> bs!444443 (= lambda!79851 lambda!79845)))

(declare-fun bs!444444 () Bool)

(assert (= bs!444444 (and d!644497 d!644495)))

(assert (=> bs!444444 (= lambda!79851 lambda!79850)))

(assert (=> d!644497 (= (inv!31930 (_1!14184 (_1!14185 (h!29655 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))))) (forall!4949 (exprs!1833 (_1!14184 (_1!14185 (h!29655 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))))) lambda!79851))))

(declare-fun bs!444445 () Bool)

(assert (= bs!444445 d!644497))

(declare-fun m!2585089 () Bool)

(assert (=> bs!444445 m!2585089))

(assert (=> b!2138430 d!644497))

(declare-fun d!644499 () Bool)

(declare-fun res!923722 () Bool)

(declare-fun e!1365460 () Bool)

(assert (=> d!644499 (=> (not res!923722) (not e!1365460))))

(declare-fun valid!2128 (MutableMap!2636) Bool)

(assert (=> d!644499 (= res!923722 (valid!2128 (cache!3017 cacheDown!1098)))))

(assert (=> d!644499 (= (validCacheMapDown!250 (cache!3017 cacheDown!1098)) e!1365460)))

(declare-fun b!2138559 () Bool)

(declare-fun res!923723 () Bool)

(assert (=> b!2138559 (=> (not res!923723) (not e!1365460))))

(declare-fun invariantList!309 (List!24341) Bool)

(declare-datatypes ((ListMap!667 0))(
  ( (ListMap!668 (toList!1075 List!24341)) )
))
(declare-fun map!4890 (MutableMap!2636) ListMap!667)

(assert (=> b!2138559 (= res!923723 (invariantList!309 (toList!1075 (map!4890 (cache!3017 cacheDown!1098)))))))

(declare-fun b!2138560 () Bool)

(declare-fun lambda!79854 () Int)

(declare-fun forall!4951 (List!24341 Int) Bool)

(assert (=> b!2138560 (= e!1365460 (forall!4951 (toList!1075 (map!4890 (cache!3017 cacheDown!1098))) lambda!79854))))

(assert (= (and d!644499 res!923722) b!2138559))

(assert (= (and b!2138559 res!923723) b!2138560))

(declare-fun m!2585092 () Bool)

(assert (=> d!644499 m!2585092))

(declare-fun m!2585094 () Bool)

(assert (=> b!2138559 m!2585094))

(declare-fun m!2585096 () Bool)

(assert (=> b!2138559 m!2585096))

(assert (=> b!2138560 m!2585094))

(declare-fun m!2585098 () Bool)

(assert (=> b!2138560 m!2585098))

(assert (=> d!644433 d!644499))

(declare-fun d!644501 () Bool)

(assert (=> d!644501 (= (inv!31934 (xs!10843 (c!340410 (totalInput!3098 (h!29659 stack!8))))) (<= (size!18974 (innerList!7961 (xs!10843 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) 2147483647))))

(declare-fun bs!444446 () Bool)

(assert (= bs!444446 d!644501))

(declare-fun m!2585100 () Bool)

(assert (=> bs!444446 m!2585100))

(assert (=> b!2138533 d!644501))

(declare-fun bs!444447 () Bool)

(declare-fun d!644503 () Bool)

(assert (= bs!444447 (and d!644503 d!644447)))

(declare-fun lambda!79855 () Int)

(assert (=> bs!444447 (= lambda!79855 lambda!79844)))

(declare-fun bs!444448 () Bool)

(assert (= bs!444448 (and d!644503 d!644471)))

(assert (=> bs!444448 (= lambda!79855 lambda!79845)))

(declare-fun bs!444449 () Bool)

(assert (= bs!444449 (and d!644503 d!644495)))

(assert (=> bs!444449 (= lambda!79855 lambda!79850)))

(declare-fun bs!444450 () Bool)

(assert (= bs!444450 (and d!644503 d!644497)))

(assert (=> bs!444450 (= lambda!79855 lambda!79851)))

(assert (=> d!644503 (= (inv!31930 (_1!14184 (_1!14185 (h!29655 mapDefault!12987)))) (forall!4949 (exprs!1833 (_1!14184 (_1!14185 (h!29655 mapDefault!12987)))) lambda!79855))))

(declare-fun bs!444451 () Bool)

(assert (= bs!444451 d!644503))

(declare-fun m!2585102 () Bool)

(assert (=> bs!444451 m!2585102))

(assert (=> b!2138487 d!644503))

(declare-fun d!644505 () Bool)

(assert (=> d!644505 (= (get!7416 lt!797762) (v!28834 lt!797762))))

(assert (=> b!2138337 d!644505))

(declare-fun b!2138561 () Bool)

(declare-fun e!1365463 () Int)

(assert (=> b!2138561 (= e!1365463 lastNullablePos!123)))

(declare-fun b!2138562 () Bool)

(declare-fun e!1365461 () Bool)

(assert (=> b!2138562 (= e!1365461 (lostCauseZipper!107 z!3839))))

(declare-fun e!1365462 () Int)

(declare-fun b!2138564 () Bool)

(declare-fun lt!797779 () (InoxSet Context!2666))

(assert (=> b!2138564 (= e!1365463 (furthestNullablePosition!67 lt!797779 (+ from!1043 1) (totalInput!3097 cacheFurthestNullable!114) (size!18973 (totalInput!3097 cacheFurthestNullable!114)) e!1365462))))

(assert (=> b!2138564 (= lt!797779 (derivationStepZipper!91 z!3839 (apply!5954 (totalInput!3097 cacheFurthestNullable!114) from!1043)))))

(declare-fun c!340428 () Bool)

(assert (=> b!2138564 (= c!340428 (nullableZipper!131 lt!797779))))

(declare-fun b!2138565 () Bool)

(assert (=> b!2138565 (= e!1365462 lastNullablePos!123)))

(declare-fun lt!797778 () Int)

(declare-fun d!644507 () Bool)

(assert (=> d!644507 (and (>= lt!797778 (- 1)) (< lt!797778 (size!18973 (totalInput!3097 cacheFurthestNullable!114))) (>= lt!797778 lastNullablePos!123) (or (= lt!797778 lastNullablePos!123) (>= lt!797778 from!1043)))))

(assert (=> d!644507 (= lt!797778 e!1365463)))

(declare-fun c!340427 () Bool)

(assert (=> d!644507 (= c!340427 e!1365461)))

(declare-fun res!923724 () Bool)

(assert (=> d!644507 (=> res!923724 e!1365461)))

(assert (=> d!644507 (= res!923724 (= from!1043 (size!18973 (totalInput!3097 cacheFurthestNullable!114))))))

(assert (=> d!644507 (and (>= from!1043 0) (<= from!1043 (size!18973 (totalInput!3097 cacheFurthestNullable!114))))))

(assert (=> d!644507 (= (furthestNullablePosition!67 z!3839 from!1043 (totalInput!3097 cacheFurthestNullable!114) (size!18973 (totalInput!3097 cacheFurthestNullable!114)) lastNullablePos!123) lt!797778)))

(declare-fun b!2138563 () Bool)

(assert (=> b!2138563 (= e!1365462 from!1043)))

(assert (= (and d!644507 (not res!923724)) b!2138562))

(assert (= (and d!644507 c!340427) b!2138561))

(assert (= (and d!644507 (not c!340427)) b!2138564))

(assert (= (and b!2138564 c!340428) b!2138563))

(assert (= (and b!2138564 (not c!340428)) b!2138565))

(assert (=> b!2138562 m!2584936))

(assert (=> b!2138564 m!2584922))

(declare-fun m!2585104 () Bool)

(assert (=> b!2138564 m!2585104))

(declare-fun m!2585106 () Bool)

(assert (=> b!2138564 m!2585106))

(assert (=> b!2138564 m!2585106))

(declare-fun m!2585108 () Bool)

(assert (=> b!2138564 m!2585108))

(declare-fun m!2585110 () Bool)

(assert (=> b!2138564 m!2585110))

(assert (=> b!2138337 d!644507))

(declare-fun d!644509 () Bool)

(declare-fun lt!797780 () Int)

(assert (=> d!644509 (= lt!797780 (size!18974 (list!9544 (totalInput!3097 cacheFurthestNullable!114))))))

(assert (=> d!644509 (= lt!797780 (size!18975 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))

(assert (=> d!644509 (= (size!18973 (totalInput!3097 cacheFurthestNullable!114)) lt!797780)))

(declare-fun bs!444452 () Bool)

(assert (= bs!444452 d!644509))

(declare-fun m!2585112 () Bool)

(assert (=> bs!444452 m!2585112))

(assert (=> bs!444452 m!2585112))

(declare-fun m!2585114 () Bool)

(assert (=> bs!444452 m!2585114))

(declare-fun m!2585116 () Bool)

(assert (=> bs!444452 m!2585116))

(assert (=> b!2138337 d!644509))

(declare-fun bs!444453 () Bool)

(declare-fun d!644511 () Bool)

(assert (= bs!444453 (and d!644511 d!644447)))

(declare-fun lambda!79856 () Int)

(assert (=> bs!444453 (= lambda!79856 lambda!79844)))

(declare-fun bs!444454 () Bool)

(assert (= bs!444454 (and d!644511 d!644495)))

(assert (=> bs!444454 (= lambda!79856 lambda!79850)))

(declare-fun bs!444455 () Bool)

(assert (= bs!444455 (and d!644511 d!644503)))

(assert (=> bs!444455 (= lambda!79856 lambda!79855)))

(declare-fun bs!444456 () Bool)

(assert (= bs!444456 (and d!644511 d!644471)))

(assert (=> bs!444456 (= lambda!79856 lambda!79845)))

(declare-fun bs!444457 () Bool)

(assert (= bs!444457 (and d!644511 d!644497)))

(assert (=> bs!444457 (= lambda!79856 lambda!79851)))

(assert (=> d!644511 (= (inv!31930 (_2!14188 (_1!14189 (h!29658 mapDefault!12984)))) (forall!4949 (exprs!1833 (_2!14188 (_1!14189 (h!29658 mapDefault!12984)))) lambda!79856))))

(declare-fun bs!444458 () Bool)

(assert (= bs!444458 d!644511))

(declare-fun m!2585118 () Bool)

(assert (=> bs!444458 m!2585118))

(assert (=> b!2138405 d!644511))

(declare-fun b!2138566 () Bool)

(declare-fun e!1365466 () Int)

(assert (=> b!2138566 (= e!1365466 e!1365303)))

(declare-fun b!2138567 () Bool)

(declare-fun e!1365464 () Bool)

(assert (=> b!2138567 (= e!1365464 (lostCauseZipper!107 lt!797768))))

(declare-fun e!1365465 () Int)

(declare-fun lt!797782 () (InoxSet Context!2666))

(declare-fun b!2138569 () Bool)

(assert (=> b!2138569 (= e!1365466 (furthestNullablePosition!67 lt!797782 (+ from!1043 1 1) totalInput!851 lt!797757 e!1365465))))

(assert (=> b!2138569 (= lt!797782 (derivationStepZipper!91 lt!797768 (apply!5954 totalInput!851 (+ from!1043 1))))))

(declare-fun c!340430 () Bool)

(assert (=> b!2138569 (= c!340430 (nullableZipper!131 lt!797782))))

(declare-fun b!2138570 () Bool)

(assert (=> b!2138570 (= e!1365465 e!1365303)))

(declare-fun d!644513 () Bool)

(declare-fun lt!797781 () Int)

(assert (=> d!644513 (and (>= lt!797781 (- 1)) (< lt!797781 lt!797757) (>= lt!797781 e!1365303) (or (= lt!797781 e!1365303) (>= lt!797781 (+ from!1043 1))))))

(assert (=> d!644513 (= lt!797781 e!1365466)))

(declare-fun c!340429 () Bool)

(assert (=> d!644513 (= c!340429 e!1365464)))

(declare-fun res!923725 () Bool)

(assert (=> d!644513 (=> res!923725 e!1365464)))

(assert (=> d!644513 (= res!923725 (= (+ from!1043 1) lt!797757))))

(assert (=> d!644513 (and (>= (+ from!1043 1) 0) (<= (+ from!1043 1) lt!797757))))

(assert (=> d!644513 (= (furthestNullablePosition!67 lt!797768 (+ from!1043 1) totalInput!851 lt!797757 e!1365303) lt!797781)))

(declare-fun b!2138568 () Bool)

(assert (=> b!2138568 (= e!1365465 (+ from!1043 1))))

(assert (= (and d!644513 (not res!923725)) b!2138567))

(assert (= (and d!644513 c!340429) b!2138566))

(assert (= (and d!644513 (not c!340429)) b!2138569))

(assert (= (and b!2138569 c!340430) b!2138568))

(assert (= (and b!2138569 (not c!340430)) b!2138570))

(declare-fun m!2585120 () Bool)

(assert (=> b!2138567 m!2585120))

(declare-fun m!2585122 () Bool)

(assert (=> b!2138569 m!2585122))

(declare-fun m!2585124 () Bool)

(assert (=> b!2138569 m!2585124))

(assert (=> b!2138569 m!2585124))

(declare-fun m!2585126 () Bool)

(assert (=> b!2138569 m!2585126))

(declare-fun m!2585128 () Bool)

(assert (=> b!2138569 m!2585128))

(assert (=> b!2138353 d!644513))

(declare-fun d!644515 () Bool)

(assert (=> d!644515 true))

(declare-fun lambda!79859 () Int)

(declare-fun flatMap!130 ((InoxSet Context!2666) Int) (InoxSet Context!2666))

(assert (=> d!644515 (= (derivationStepZipper!91 z!3839 (apply!5954 totalInput!851 from!1043)) (flatMap!130 z!3839 lambda!79859))))

(declare-fun bs!444459 () Bool)

(assert (= bs!444459 d!644515))

(declare-fun m!2585130 () Bool)

(assert (=> bs!444459 m!2585130))

(assert (=> b!2138353 d!644515))

(declare-fun d!644517 () Bool)

(declare-fun lt!797785 () C!11672)

(declare-fun apply!5955 (List!24339 Int) C!11672)

(assert (=> d!644517 (= lt!797785 (apply!5955 (list!9544 totalInput!851) from!1043))))

(declare-fun apply!5956 (Conc!7901 Int) C!11672)

(assert (=> d!644517 (= lt!797785 (apply!5956 (c!340410 totalInput!851) from!1043))))

(declare-fun e!1365469 () Bool)

(assert (=> d!644517 e!1365469))

(declare-fun res!923728 () Bool)

(assert (=> d!644517 (=> (not res!923728) (not e!1365469))))

(assert (=> d!644517 (= res!923728 (<= 0 from!1043))))

(assert (=> d!644517 (= (apply!5954 totalInput!851 from!1043) lt!797785)))

(declare-fun b!2138575 () Bool)

(assert (=> b!2138575 (= e!1365469 (< from!1043 (size!18973 totalInput!851)))))

(assert (= (and d!644517 res!923728) b!2138575))

(assert (=> d!644517 m!2584960))

(assert (=> d!644517 m!2584960))

(declare-fun m!2585132 () Bool)

(assert (=> d!644517 m!2585132))

(declare-fun m!2585134 () Bool)

(assert (=> d!644517 m!2585134))

(assert (=> b!2138575 m!2584870))

(assert (=> b!2138353 d!644517))

(declare-fun bs!444460 () Bool)

(declare-fun d!644519 () Bool)

(assert (= bs!444460 (and d!644519 d!644443)))

(declare-fun lambda!79860 () Int)

(assert (=> bs!444460 (= lambda!79860 lambda!79841)))

(declare-fun bs!444461 () Bool)

(assert (= bs!444461 (and d!644519 d!644493)))

(assert (=> bs!444461 (= lambda!79860 lambda!79849)))

(assert (=> d!644519 (= (nullableZipper!131 lt!797768) (exists!703 lt!797768 lambda!79860))))

(declare-fun bs!444462 () Bool)

(assert (= bs!444462 d!644519))

(declare-fun m!2585136 () Bool)

(assert (=> bs!444462 m!2585136))

(assert (=> b!2138353 d!644519))

(declare-fun bs!444463 () Bool)

(declare-fun d!644521 () Bool)

(assert (= bs!444463 (and d!644521 d!644443)))

(declare-fun lambda!79873 () Int)

(assert (=> bs!444463 (not (= lambda!79873 lambda!79841))))

(declare-fun bs!444464 () Bool)

(assert (= bs!444464 (and d!644521 d!644493)))

(assert (=> bs!444464 (not (= lambda!79873 lambda!79849))))

(declare-fun bs!444465 () Bool)

(assert (= bs!444465 (and d!644521 d!644519)))

(assert (=> bs!444465 (not (= lambda!79873 lambda!79860))))

(declare-fun bs!444466 () Bool)

(declare-fun b!2138580 () Bool)

(assert (= bs!444466 (and b!2138580 d!644443)))

(declare-fun lambda!79874 () Int)

(assert (=> bs!444466 (not (= lambda!79874 lambda!79841))))

(declare-fun bs!444467 () Bool)

(assert (= bs!444467 (and b!2138580 d!644493)))

(assert (=> bs!444467 (not (= lambda!79874 lambda!79849))))

(declare-fun bs!444468 () Bool)

(assert (= bs!444468 (and b!2138580 d!644519)))

(assert (=> bs!444468 (not (= lambda!79874 lambda!79860))))

(declare-fun bs!444469 () Bool)

(assert (= bs!444469 (and b!2138580 d!644521)))

(assert (=> bs!444469 (not (= lambda!79874 lambda!79873))))

(declare-fun bs!444470 () Bool)

(declare-fun b!2138581 () Bool)

(assert (= bs!444470 (and b!2138581 d!644443)))

(declare-fun lambda!79875 () Int)

(assert (=> bs!444470 (not (= lambda!79875 lambda!79841))))

(declare-fun bs!444471 () Bool)

(assert (= bs!444471 (and b!2138581 d!644519)))

(assert (=> bs!444471 (not (= lambda!79875 lambda!79860))))

(declare-fun bs!444472 () Bool)

(assert (= bs!444472 (and b!2138581 d!644521)))

(assert (=> bs!444472 (not (= lambda!79875 lambda!79873))))

(declare-fun bs!444473 () Bool)

(assert (= bs!444473 (and b!2138581 d!644493)))

(assert (=> bs!444473 (not (= lambda!79875 lambda!79849))))

(declare-fun bs!444474 () Bool)

(assert (= bs!444474 (and b!2138581 b!2138580)))

(assert (=> bs!444474 (= lambda!79875 lambda!79874)))

(declare-datatypes ((Unit!37677 0))(
  ( (Unit!37678) )
))
(declare-fun e!1365476 () Unit!37677)

(declare-fun Unit!37679 () Unit!37677)

(assert (=> b!2138580 (= e!1365476 Unit!37679)))

(declare-datatypes ((List!24343 0))(
  ( (Nil!24259) (Cons!24259 (h!29660 Context!2666) (t!196873 List!24343)) )
))
(declare-fun lt!797805 () List!24343)

(declare-fun call!128795 () List!24343)

(assert (=> b!2138580 (= lt!797805 call!128795)))

(declare-fun lt!797807 () Unit!37677)

(declare-fun lemmaNotForallThenExists!17 (List!24343 Int) Unit!37677)

(assert (=> b!2138580 (= lt!797807 (lemmaNotForallThenExists!17 lt!797805 lambda!79873))))

(declare-fun call!128794 () Bool)

(assert (=> b!2138580 call!128794))

(declare-fun lt!797808 () Unit!37677)

(assert (=> b!2138580 (= lt!797808 lt!797807)))

(declare-fun lt!797806 () List!24343)

(declare-fun bm!128789 () Bool)

(declare-fun c!340443 () Bool)

(declare-fun exists!704 (List!24343 Int) Bool)

(assert (=> bm!128789 (= call!128794 (exists!704 (ite c!340443 lt!797805 lt!797806) (ite c!340443 lambda!79874 lambda!79875)))))

(declare-fun lt!797803 () Bool)

(declare-datatypes ((Option!4925 0))(
  ( (None!4924) (Some!4924 (v!28835 List!24339)) )
))
(declare-fun isEmpty!14323 (Option!4925) Bool)

(declare-fun getLanguageWitness!102 ((InoxSet Context!2666)) Option!4925)

(assert (=> d!644521 (= lt!797803 (isEmpty!14323 (getLanguageWitness!102 z!3839)))))

(declare-fun forall!4952 ((InoxSet Context!2666) Int) Bool)

(assert (=> d!644521 (= lt!797803 (forall!4952 z!3839 lambda!79873))))

(declare-fun lt!797809 () Unit!37677)

(assert (=> d!644521 (= lt!797809 e!1365476)))

(assert (=> d!644521 (= c!340443 (not (forall!4952 z!3839 lambda!79873)))))

(assert (=> d!644521 (= (lostCauseZipper!107 z!3839) lt!797803)))

(declare-fun bm!128790 () Bool)

(declare-fun toList!1076 ((InoxSet Context!2666)) List!24343)

(assert (=> bm!128790 (= call!128795 (toList!1076 z!3839))))

(declare-fun Unit!37680 () Unit!37677)

(assert (=> b!2138581 (= e!1365476 Unit!37680)))

(assert (=> b!2138581 (= lt!797806 call!128795)))

(declare-fun lt!797802 () Unit!37677)

(declare-fun lemmaForallThenNotExists!17 (List!24343 Int) Unit!37677)

(assert (=> b!2138581 (= lt!797802 (lemmaForallThenNotExists!17 lt!797806 lambda!79873))))

(assert (=> b!2138581 (not call!128794)))

(declare-fun lt!797804 () Unit!37677)

(assert (=> b!2138581 (= lt!797804 lt!797802)))

(assert (= (and d!644521 c!340443) b!2138580))

(assert (= (and d!644521 (not c!340443)) b!2138581))

(assert (= (or b!2138580 b!2138581) bm!128789))

(assert (= (or b!2138580 b!2138581) bm!128790))

(declare-fun m!2585138 () Bool)

(assert (=> b!2138580 m!2585138))

(declare-fun m!2585140 () Bool)

(assert (=> d!644521 m!2585140))

(assert (=> d!644521 m!2585140))

(declare-fun m!2585142 () Bool)

(assert (=> d!644521 m!2585142))

(declare-fun m!2585144 () Bool)

(assert (=> d!644521 m!2585144))

(assert (=> d!644521 m!2585144))

(declare-fun m!2585146 () Bool)

(assert (=> bm!128789 m!2585146))

(declare-fun m!2585148 () Bool)

(assert (=> b!2138581 m!2585148))

(declare-fun m!2585150 () Bool)

(assert (=> bm!128790 m!2585150))

(assert (=> b!2138351 d!644521))

(declare-fun bs!444475 () Bool)

(declare-fun d!644523 () Bool)

(assert (= bs!444475 (and d!644523 d!644447)))

(declare-fun lambda!79876 () Int)

(assert (=> bs!444475 (= lambda!79876 lambda!79844)))

(declare-fun bs!444476 () Bool)

(assert (= bs!444476 (and d!644523 d!644495)))

(assert (=> bs!444476 (= lambda!79876 lambda!79850)))

(declare-fun bs!444477 () Bool)

(assert (= bs!444477 (and d!644523 d!644503)))

(assert (=> bs!444477 (= lambda!79876 lambda!79855)))

(declare-fun bs!444478 () Bool)

(assert (= bs!444478 (and d!644523 d!644471)))

(assert (=> bs!444478 (= lambda!79876 lambda!79845)))

(declare-fun bs!444479 () Bool)

(assert (= bs!444479 (and d!644523 d!644497)))

(assert (=> bs!444479 (= lambda!79876 lambda!79851)))

(declare-fun bs!444480 () Bool)

(assert (= bs!444480 (and d!644523 d!644511)))

(assert (=> bs!444480 (= lambda!79876 lambda!79856)))

(assert (=> d!644523 (= (inv!31930 setElem!16100) (forall!4949 (exprs!1833 setElem!16100) lambda!79876))))

(declare-fun bs!444481 () Bool)

(assert (= bs!444481 d!644523))

(declare-fun m!2585152 () Bool)

(assert (=> bs!444481 m!2585152))

(assert (=> setNonEmpty!16100 d!644523))

(declare-fun bs!444482 () Bool)

(declare-fun d!644525 () Bool)

(assert (= bs!444482 (and d!644525 d!644447)))

(declare-fun lambda!79877 () Int)

(assert (=> bs!444482 (= lambda!79877 lambda!79844)))

(declare-fun bs!444483 () Bool)

(assert (= bs!444483 (and d!644525 d!644495)))

(assert (=> bs!444483 (= lambda!79877 lambda!79850)))

(declare-fun bs!444484 () Bool)

(assert (= bs!444484 (and d!644525 d!644523)))

(assert (=> bs!444484 (= lambda!79877 lambda!79876)))

(declare-fun bs!444485 () Bool)

(assert (= bs!444485 (and d!644525 d!644503)))

(assert (=> bs!444485 (= lambda!79877 lambda!79855)))

(declare-fun bs!444486 () Bool)

(assert (= bs!444486 (and d!644525 d!644471)))

(assert (=> bs!444486 (= lambda!79877 lambda!79845)))

(declare-fun bs!444487 () Bool)

(assert (= bs!444487 (and d!644525 d!644497)))

(assert (=> bs!444487 (= lambda!79877 lambda!79851)))

(declare-fun bs!444488 () Bool)

(assert (= bs!444488 (and d!644525 d!644511)))

(assert (=> bs!444488 (= lambda!79877 lambda!79856)))

(assert (=> d!644525 (= (inv!31930 setElem!16113) (forall!4949 (exprs!1833 setElem!16113) lambda!79877))))

(declare-fun bs!444489 () Bool)

(assert (= bs!444489 d!644525))

(declare-fun m!2585154 () Bool)

(assert (=> bs!444489 m!2585154))

(assert (=> setNonEmpty!16113 d!644525))

(declare-fun bs!444490 () Bool)

(declare-fun d!644527 () Bool)

(assert (= bs!444490 (and d!644527 d!644525)))

(declare-fun lambda!79878 () Int)

(assert (=> bs!444490 (= lambda!79878 lambda!79877)))

(declare-fun bs!444491 () Bool)

(assert (= bs!444491 (and d!644527 d!644447)))

(assert (=> bs!444491 (= lambda!79878 lambda!79844)))

(declare-fun bs!444492 () Bool)

(assert (= bs!444492 (and d!644527 d!644495)))

(assert (=> bs!444492 (= lambda!79878 lambda!79850)))

(declare-fun bs!444493 () Bool)

(assert (= bs!444493 (and d!644527 d!644523)))

(assert (=> bs!444493 (= lambda!79878 lambda!79876)))

(declare-fun bs!444494 () Bool)

(assert (= bs!444494 (and d!644527 d!644503)))

(assert (=> bs!444494 (= lambda!79878 lambda!79855)))

(declare-fun bs!444495 () Bool)

(assert (= bs!444495 (and d!644527 d!644471)))

(assert (=> bs!444495 (= lambda!79878 lambda!79845)))

(declare-fun bs!444496 () Bool)

(assert (= bs!444496 (and d!644527 d!644497)))

(assert (=> bs!444496 (= lambda!79878 lambda!79851)))

(declare-fun bs!444497 () Bool)

(assert (= bs!444497 (and d!644527 d!644511)))

(assert (=> bs!444497 (= lambda!79878 lambda!79856)))

(assert (=> d!644527 (= (inv!31930 (_1!14184 (_1!14185 (h!29655 mapValue!12987)))) (forall!4949 (exprs!1833 (_1!14184 (_1!14185 (h!29655 mapValue!12987)))) lambda!79878))))

(declare-fun bs!444498 () Bool)

(assert (= bs!444498 d!644527))

(declare-fun m!2585156 () Bool)

(assert (=> bs!444498 m!2585156))

(assert (=> b!2138490 d!644527))

(declare-fun d!644529 () Bool)

(declare-fun res!923733 () Bool)

(declare-fun e!1365481 () Bool)

(assert (=> d!644529 (=> res!923733 e!1365481)))

(assert (=> d!644529 (= res!923733 ((_ is Nil!24253) (exprs!1833 setElem!16088)))))

(assert (=> d!644529 (= (forall!4949 (exprs!1833 setElem!16088) lambda!79844) e!1365481)))

(declare-fun b!2138586 () Bool)

(declare-fun e!1365482 () Bool)

(assert (=> b!2138586 (= e!1365481 e!1365482)))

(declare-fun res!923734 () Bool)

(assert (=> b!2138586 (=> (not res!923734) (not e!1365482))))

(declare-fun dynLambda!11368 (Int Regex!5763) Bool)

(assert (=> b!2138586 (= res!923734 (dynLambda!11368 lambda!79844 (h!29654 (exprs!1833 setElem!16088))))))

(declare-fun b!2138587 () Bool)

(assert (=> b!2138587 (= e!1365482 (forall!4949 (t!196865 (exprs!1833 setElem!16088)) lambda!79844))))

(assert (= (and d!644529 (not res!923733)) b!2138586))

(assert (= (and b!2138586 res!923734) b!2138587))

(declare-fun b_lambda!70601 () Bool)

(assert (=> (not b_lambda!70601) (not b!2138586)))

(declare-fun m!2585158 () Bool)

(assert (=> b!2138586 m!2585158))

(declare-fun m!2585160 () Bool)

(assert (=> b!2138587 m!2585160))

(assert (=> d!644447 d!644529))

(declare-fun bs!444499 () Bool)

(declare-fun d!644531 () Bool)

(assert (= bs!444499 (and d!644531 d!644525)))

(declare-fun lambda!79879 () Int)

(assert (=> bs!444499 (= lambda!79879 lambda!79877)))

(declare-fun bs!444500 () Bool)

(assert (= bs!444500 (and d!644531 d!644447)))

(assert (=> bs!444500 (= lambda!79879 lambda!79844)))

(declare-fun bs!444501 () Bool)

(assert (= bs!444501 (and d!644531 d!644495)))

(assert (=> bs!444501 (= lambda!79879 lambda!79850)))

(declare-fun bs!444502 () Bool)

(assert (= bs!444502 (and d!644531 d!644503)))

(assert (=> bs!444502 (= lambda!79879 lambda!79855)))

(declare-fun bs!444503 () Bool)

(assert (= bs!444503 (and d!644531 d!644471)))

(assert (=> bs!444503 (= lambda!79879 lambda!79845)))

(declare-fun bs!444504 () Bool)

(assert (= bs!444504 (and d!644531 d!644497)))

(assert (=> bs!444504 (= lambda!79879 lambda!79851)))

(declare-fun bs!444505 () Bool)

(assert (= bs!444505 (and d!644531 d!644511)))

(assert (=> bs!444505 (= lambda!79879 lambda!79856)))

(declare-fun bs!444506 () Bool)

(assert (= bs!444506 (and d!644531 d!644523)))

(assert (=> bs!444506 (= lambda!79879 lambda!79876)))

(declare-fun bs!444507 () Bool)

(assert (= bs!444507 (and d!644531 d!644527)))

(assert (=> bs!444507 (= lambda!79879 lambda!79878)))

(assert (=> d!644531 (= (inv!31930 setElem!16097) (forall!4949 (exprs!1833 setElem!16097) lambda!79879))))

(declare-fun bs!444508 () Bool)

(assert (= bs!444508 d!644531))

(declare-fun m!2585162 () Bool)

(assert (=> bs!444508 m!2585162))

(assert (=> setNonEmpty!16097 d!644531))

(declare-fun b!2138600 () Bool)

(declare-fun res!923747 () Bool)

(declare-fun e!1365487 () Bool)

(assert (=> b!2138600 (=> (not res!923747) (not e!1365487))))

(assert (=> b!2138600 (= res!923747 (isBalanced!2456 (left!18667 (c!340410 totalInput!851))))))

(declare-fun b!2138601 () Bool)

(declare-fun e!1365488 () Bool)

(assert (=> b!2138601 (= e!1365488 e!1365487)))

(declare-fun res!923751 () Bool)

(assert (=> b!2138601 (=> (not res!923751) (not e!1365487))))

(declare-fun height!1237 (Conc!7901) Int)

(assert (=> b!2138601 (= res!923751 (<= (- 1) (- (height!1237 (left!18667 (c!340410 totalInput!851))) (height!1237 (right!18997 (c!340410 totalInput!851))))))))

(declare-fun d!644533 () Bool)

(declare-fun res!923750 () Bool)

(assert (=> d!644533 (=> res!923750 e!1365488)))

(assert (=> d!644533 (= res!923750 (not ((_ is Node!7901) (c!340410 totalInput!851))))))

(assert (=> d!644533 (= (isBalanced!2456 (c!340410 totalInput!851)) e!1365488)))

(declare-fun b!2138602 () Bool)

(declare-fun res!923752 () Bool)

(assert (=> b!2138602 (=> (not res!923752) (not e!1365487))))

(declare-fun isEmpty!14324 (Conc!7901) Bool)

(assert (=> b!2138602 (= res!923752 (not (isEmpty!14324 (left!18667 (c!340410 totalInput!851)))))))

(declare-fun b!2138603 () Bool)

(assert (=> b!2138603 (= e!1365487 (not (isEmpty!14324 (right!18997 (c!340410 totalInput!851)))))))

(declare-fun b!2138604 () Bool)

(declare-fun res!923748 () Bool)

(assert (=> b!2138604 (=> (not res!923748) (not e!1365487))))

(assert (=> b!2138604 (= res!923748 (<= (- (height!1237 (left!18667 (c!340410 totalInput!851))) (height!1237 (right!18997 (c!340410 totalInput!851)))) 1))))

(declare-fun b!2138605 () Bool)

(declare-fun res!923749 () Bool)

(assert (=> b!2138605 (=> (not res!923749) (not e!1365487))))

(assert (=> b!2138605 (= res!923749 (isBalanced!2456 (right!18997 (c!340410 totalInput!851))))))

(assert (= (and d!644533 (not res!923750)) b!2138601))

(assert (= (and b!2138601 res!923751) b!2138604))

(assert (= (and b!2138604 res!923748) b!2138600))

(assert (= (and b!2138600 res!923747) b!2138605))

(assert (= (and b!2138605 res!923749) b!2138602))

(assert (= (and b!2138602 res!923752) b!2138603))

(declare-fun m!2585164 () Bool)

(assert (=> b!2138600 m!2585164))

(declare-fun m!2585166 () Bool)

(assert (=> b!2138605 m!2585166))

(declare-fun m!2585168 () Bool)

(assert (=> b!2138603 m!2585168))

(declare-fun m!2585170 () Bool)

(assert (=> b!2138601 m!2585170))

(declare-fun m!2585172 () Bool)

(assert (=> b!2138601 m!2585172))

(assert (=> b!2138604 m!2585170))

(assert (=> b!2138604 m!2585172))

(declare-fun m!2585174 () Bool)

(assert (=> b!2138602 m!2585174))

(assert (=> d!644469 d!644533))

(declare-fun d!644535 () Bool)

(declare-fun res!923753 () Bool)

(declare-fun e!1365489 () Bool)

(assert (=> d!644535 (=> res!923753 e!1365489)))

(assert (=> d!644535 (= res!923753 ((_ is Nil!24258) (t!196870 stack!8)))))

(assert (=> d!644535 (= (forall!4948 (t!196870 stack!8) lambda!79838) e!1365489)))

(declare-fun b!2138606 () Bool)

(declare-fun e!1365490 () Bool)

(assert (=> b!2138606 (= e!1365489 e!1365490)))

(declare-fun res!923754 () Bool)

(assert (=> b!2138606 (=> (not res!923754) (not e!1365490))))

(assert (=> b!2138606 (= res!923754 (dynLambda!11367 lambda!79838 (h!29659 (t!196870 stack!8))))))

(declare-fun b!2138607 () Bool)

(assert (=> b!2138607 (= e!1365490 (forall!4948 (t!196870 (t!196870 stack!8)) lambda!79838))))

(assert (= (and d!644535 (not res!923753)) b!2138606))

(assert (= (and b!2138606 res!923754) b!2138607))

(declare-fun b_lambda!70603 () Bool)

(assert (=> (not b_lambda!70603) (not b!2138606)))

(declare-fun m!2585176 () Bool)

(assert (=> b!2138606 m!2585176))

(declare-fun m!2585178 () Bool)

(assert (=> b!2138607 m!2585178))

(assert (=> b!2138325 d!644535))

(assert (=> b!2138282 d!644437))

(declare-fun bs!444509 () Bool)

(declare-fun d!644537 () Bool)

(assert (= bs!444509 (and d!644537 d!644525)))

(declare-fun lambda!79880 () Int)

(assert (=> bs!444509 (= lambda!79880 lambda!79877)))

(declare-fun bs!444510 () Bool)

(assert (= bs!444510 (and d!644537 d!644447)))

(assert (=> bs!444510 (= lambda!79880 lambda!79844)))

(declare-fun bs!444511 () Bool)

(assert (= bs!444511 (and d!644537 d!644495)))

(assert (=> bs!444511 (= lambda!79880 lambda!79850)))

(declare-fun bs!444512 () Bool)

(assert (= bs!444512 (and d!644537 d!644503)))

(assert (=> bs!444512 (= lambda!79880 lambda!79855)))

(declare-fun bs!444513 () Bool)

(assert (= bs!444513 (and d!644537 d!644471)))

(assert (=> bs!444513 (= lambda!79880 lambda!79845)))

(declare-fun bs!444514 () Bool)

(assert (= bs!444514 (and d!644537 d!644531)))

(assert (=> bs!444514 (= lambda!79880 lambda!79879)))

(declare-fun bs!444515 () Bool)

(assert (= bs!444515 (and d!644537 d!644497)))

(assert (=> bs!444515 (= lambda!79880 lambda!79851)))

(declare-fun bs!444516 () Bool)

(assert (= bs!444516 (and d!644537 d!644511)))

(assert (=> bs!444516 (= lambda!79880 lambda!79856)))

(declare-fun bs!444517 () Bool)

(assert (= bs!444517 (and d!644537 d!644523)))

(assert (=> bs!444517 (= lambda!79880 lambda!79876)))

(declare-fun bs!444518 () Bool)

(assert (= bs!444518 (and d!644537 d!644527)))

(assert (=> bs!444518 (= lambda!79880 lambda!79878)))

(assert (=> d!644537 (= (inv!31930 (_1!14184 (_1!14185 (h!29655 mapValue!12980)))) (forall!4949 (exprs!1833 (_1!14184 (_1!14185 (h!29655 mapValue!12980)))) lambda!79880))))

(declare-fun bs!444519 () Bool)

(assert (= bs!444519 d!644537))

(declare-fun m!2585180 () Bool)

(assert (=> bs!444519 m!2585180))

(assert (=> b!2138493 d!644537))

(declare-fun bs!444520 () Bool)

(declare-fun d!644539 () Bool)

(assert (= bs!444520 (and d!644539 d!644525)))

(declare-fun lambda!79881 () Int)

(assert (=> bs!444520 (= lambda!79881 lambda!79877)))

(declare-fun bs!444521 () Bool)

(assert (= bs!444521 (and d!644539 d!644447)))

(assert (=> bs!444521 (= lambda!79881 lambda!79844)))

(declare-fun bs!444522 () Bool)

(assert (= bs!444522 (and d!644539 d!644495)))

(assert (=> bs!444522 (= lambda!79881 lambda!79850)))

(declare-fun bs!444523 () Bool)

(assert (= bs!444523 (and d!644539 d!644503)))

(assert (=> bs!444523 (= lambda!79881 lambda!79855)))

(declare-fun bs!444524 () Bool)

(assert (= bs!444524 (and d!644539 d!644531)))

(assert (=> bs!444524 (= lambda!79881 lambda!79879)))

(declare-fun bs!444525 () Bool)

(assert (= bs!444525 (and d!644539 d!644497)))

(assert (=> bs!444525 (= lambda!79881 lambda!79851)))

(declare-fun bs!444526 () Bool)

(assert (= bs!444526 (and d!644539 d!644511)))

(assert (=> bs!444526 (= lambda!79881 lambda!79856)))

(declare-fun bs!444527 () Bool)

(assert (= bs!444527 (and d!644539 d!644523)))

(assert (=> bs!444527 (= lambda!79881 lambda!79876)))

(declare-fun bs!444528 () Bool)

(assert (= bs!444528 (and d!644539 d!644527)))

(assert (=> bs!444528 (= lambda!79881 lambda!79878)))

(declare-fun bs!444529 () Bool)

(assert (= bs!444529 (and d!644539 d!644471)))

(assert (=> bs!444529 (= lambda!79881 lambda!79845)))

(declare-fun bs!444530 () Bool)

(assert (= bs!444530 (and d!644539 d!644537)))

(assert (=> bs!444530 (= lambda!79881 lambda!79880)))

(assert (=> d!644539 (= (inv!31930 setElem!16131) (forall!4949 (exprs!1833 setElem!16131) lambda!79881))))

(declare-fun bs!444531 () Bool)

(assert (= bs!444531 d!644539))

(declare-fun m!2585182 () Bool)

(assert (=> bs!444531 m!2585182))

(assert (=> setNonEmpty!16131 d!644539))

(declare-fun d!644541 () Bool)

(declare-fun c!340444 () Bool)

(assert (=> d!644541 (= c!340444 ((_ is Node!7901) (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8))))))))

(declare-fun e!1365491 () Bool)

(assert (=> d!644541 (= (inv!31925 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8))))) e!1365491)))

(declare-fun b!2138608 () Bool)

(assert (=> b!2138608 (= e!1365491 (inv!31932 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8))))))))

(declare-fun b!2138609 () Bool)

(declare-fun e!1365492 () Bool)

(assert (=> b!2138609 (= e!1365491 e!1365492)))

(declare-fun res!923755 () Bool)

(assert (=> b!2138609 (= res!923755 (not ((_ is Leaf!11550) (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8)))))))))

(assert (=> b!2138609 (=> res!923755 e!1365492)))

(declare-fun b!2138610 () Bool)

(assert (=> b!2138610 (= e!1365492 (inv!31933 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8))))))))

(assert (= (and d!644541 c!340444) b!2138608))

(assert (= (and d!644541 (not c!340444)) b!2138609))

(assert (= (and b!2138609 (not res!923755)) b!2138610))

(declare-fun m!2585184 () Bool)

(assert (=> b!2138608 m!2585184))

(declare-fun m!2585186 () Bool)

(assert (=> b!2138610 m!2585186))

(assert (=> b!2138528 d!644541))

(declare-fun bs!444532 () Bool)

(declare-fun d!644543 () Bool)

(assert (= bs!444532 (and d!644543 d!644525)))

(declare-fun lambda!79882 () Int)

(assert (=> bs!444532 (= lambda!79882 lambda!79877)))

(declare-fun bs!444533 () Bool)

(assert (= bs!444533 (and d!644543 d!644447)))

(assert (=> bs!444533 (= lambda!79882 lambda!79844)))

(declare-fun bs!444534 () Bool)

(assert (= bs!444534 (and d!644543 d!644495)))

(assert (=> bs!444534 (= lambda!79882 lambda!79850)))

(declare-fun bs!444535 () Bool)

(assert (= bs!444535 (and d!644543 d!644503)))

(assert (=> bs!444535 (= lambda!79882 lambda!79855)))

(declare-fun bs!444536 () Bool)

(assert (= bs!444536 (and d!644543 d!644531)))

(assert (=> bs!444536 (= lambda!79882 lambda!79879)))

(declare-fun bs!444537 () Bool)

(assert (= bs!444537 (and d!644543 d!644539)))

(assert (=> bs!444537 (= lambda!79882 lambda!79881)))

(declare-fun bs!444538 () Bool)

(assert (= bs!444538 (and d!644543 d!644497)))

(assert (=> bs!444538 (= lambda!79882 lambda!79851)))

(declare-fun bs!444539 () Bool)

(assert (= bs!444539 (and d!644543 d!644511)))

(assert (=> bs!444539 (= lambda!79882 lambda!79856)))

(declare-fun bs!444540 () Bool)

(assert (= bs!444540 (and d!644543 d!644523)))

(assert (=> bs!444540 (= lambda!79882 lambda!79876)))

(declare-fun bs!444541 () Bool)

(assert (= bs!444541 (and d!644543 d!644527)))

(assert (=> bs!444541 (= lambda!79882 lambda!79878)))

(declare-fun bs!444542 () Bool)

(assert (= bs!444542 (and d!644543 d!644471)))

(assert (=> bs!444542 (= lambda!79882 lambda!79845)))

(declare-fun bs!444543 () Bool)

(assert (= bs!444543 (and d!644543 d!644537)))

(assert (=> bs!444543 (= lambda!79882 lambda!79880)))

(assert (=> d!644543 (= (inv!31930 setElem!16106) (forall!4949 (exprs!1833 setElem!16106) lambda!79882))))

(declare-fun bs!444544 () Bool)

(assert (= bs!444544 d!644543))

(declare-fun m!2585188 () Bool)

(assert (=> bs!444544 m!2585188))

(assert (=> setNonEmpty!16106 d!644543))

(declare-fun bs!444545 () Bool)

(declare-fun d!644545 () Bool)

(assert (= bs!444545 (and d!644545 d!644525)))

(declare-fun lambda!79883 () Int)

(assert (=> bs!444545 (= lambda!79883 lambda!79877)))

(declare-fun bs!444546 () Bool)

(assert (= bs!444546 (and d!644545 d!644495)))

(assert (=> bs!444546 (= lambda!79883 lambda!79850)))

(declare-fun bs!444547 () Bool)

(assert (= bs!444547 (and d!644545 d!644503)))

(assert (=> bs!444547 (= lambda!79883 lambda!79855)))

(declare-fun bs!444548 () Bool)

(assert (= bs!444548 (and d!644545 d!644531)))

(assert (=> bs!444548 (= lambda!79883 lambda!79879)))

(declare-fun bs!444549 () Bool)

(assert (= bs!444549 (and d!644545 d!644539)))

(assert (=> bs!444549 (= lambda!79883 lambda!79881)))

(declare-fun bs!444550 () Bool)

(assert (= bs!444550 (and d!644545 d!644497)))

(assert (=> bs!444550 (= lambda!79883 lambda!79851)))

(declare-fun bs!444551 () Bool)

(assert (= bs!444551 (and d!644545 d!644511)))

(assert (=> bs!444551 (= lambda!79883 lambda!79856)))

(declare-fun bs!444552 () Bool)

(assert (= bs!444552 (and d!644545 d!644543)))

(assert (=> bs!444552 (= lambda!79883 lambda!79882)))

(declare-fun bs!444553 () Bool)

(assert (= bs!444553 (and d!644545 d!644447)))

(assert (=> bs!444553 (= lambda!79883 lambda!79844)))

(declare-fun bs!444554 () Bool)

(assert (= bs!444554 (and d!644545 d!644523)))

(assert (=> bs!444554 (= lambda!79883 lambda!79876)))

(declare-fun bs!444555 () Bool)

(assert (= bs!444555 (and d!644545 d!644527)))

(assert (=> bs!444555 (= lambda!79883 lambda!79878)))

(declare-fun bs!444556 () Bool)

(assert (= bs!444556 (and d!644545 d!644471)))

(assert (=> bs!444556 (= lambda!79883 lambda!79845)))

(declare-fun bs!444557 () Bool)

(assert (= bs!444557 (and d!644545 d!644537)))

(assert (=> bs!444557 (= lambda!79883 lambda!79880)))

(assert (=> d!644545 (= (inv!31930 setElem!16130) (forall!4949 (exprs!1833 setElem!16130) lambda!79883))))

(declare-fun bs!444558 () Bool)

(assert (= bs!444558 d!644545))

(declare-fun m!2585190 () Bool)

(assert (=> bs!444558 m!2585190))

(assert (=> setNonEmpty!16130 d!644545))

(declare-fun d!644547 () Bool)

(assert (=> d!644547 (= (inv!31926 (totalInput!3098 (h!29659 (t!196870 stack!8)))) (isBalanced!2456 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8))))))))

(declare-fun bs!444559 () Bool)

(assert (= bs!444559 d!644547))

(declare-fun m!2585192 () Bool)

(assert (=> bs!444559 m!2585192))

(assert (=> b!2138529 d!644547))

(declare-fun bs!444560 () Bool)

(declare-fun d!644549 () Bool)

(assert (= bs!444560 (and d!644549 d!644525)))

(declare-fun lambda!79884 () Int)

(assert (=> bs!444560 (= lambda!79884 lambda!79877)))

(declare-fun bs!444561 () Bool)

(assert (= bs!444561 (and d!644549 d!644495)))

(assert (=> bs!444561 (= lambda!79884 lambda!79850)))

(declare-fun bs!444562 () Bool)

(assert (= bs!444562 (and d!644549 d!644503)))

(assert (=> bs!444562 (= lambda!79884 lambda!79855)))

(declare-fun bs!444563 () Bool)

(assert (= bs!444563 (and d!644549 d!644531)))

(assert (=> bs!444563 (= lambda!79884 lambda!79879)))

(declare-fun bs!444564 () Bool)

(assert (= bs!444564 (and d!644549 d!644539)))

(assert (=> bs!444564 (= lambda!79884 lambda!79881)))

(declare-fun bs!444565 () Bool)

(assert (= bs!444565 (and d!644549 d!644497)))

(assert (=> bs!444565 (= lambda!79884 lambda!79851)))

(declare-fun bs!444566 () Bool)

(assert (= bs!444566 (and d!644549 d!644511)))

(assert (=> bs!444566 (= lambda!79884 lambda!79856)))

(declare-fun bs!444567 () Bool)

(assert (= bs!444567 (and d!644549 d!644543)))

(assert (=> bs!444567 (= lambda!79884 lambda!79882)))

(declare-fun bs!444568 () Bool)

(assert (= bs!444568 (and d!644549 d!644545)))

(assert (=> bs!444568 (= lambda!79884 lambda!79883)))

(declare-fun bs!444569 () Bool)

(assert (= bs!444569 (and d!644549 d!644447)))

(assert (=> bs!444569 (= lambda!79884 lambda!79844)))

(declare-fun bs!444570 () Bool)

(assert (= bs!444570 (and d!644549 d!644523)))

(assert (=> bs!444570 (= lambda!79884 lambda!79876)))

(declare-fun bs!444571 () Bool)

(assert (= bs!444571 (and d!644549 d!644527)))

(assert (=> bs!444571 (= lambda!79884 lambda!79878)))

(declare-fun bs!444572 () Bool)

(assert (= bs!444572 (and d!644549 d!644471)))

(assert (=> bs!444572 (= lambda!79884 lambda!79845)))

(declare-fun bs!444573 () Bool)

(assert (= bs!444573 (and d!644549 d!644537)))

(assert (=> bs!444573 (= lambda!79884 lambda!79880)))

(assert (=> d!644549 (= (inv!31930 (_2!14188 (_1!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))))) (forall!4949 (exprs!1833 (_2!14188 (_1!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))))) lambda!79884))))

(declare-fun bs!444574 () Bool)

(assert (= bs!444574 d!644549))

(declare-fun m!2585194 () Bool)

(assert (=> bs!444574 m!2585194))

(assert (=> b!2138463 d!644549))

(declare-fun bs!444575 () Bool)

(declare-fun d!644551 () Bool)

(assert (= bs!444575 (and d!644551 d!644525)))

(declare-fun lambda!79885 () Int)

(assert (=> bs!444575 (= lambda!79885 lambda!79877)))

(declare-fun bs!444576 () Bool)

(assert (= bs!444576 (and d!644551 d!644495)))

(assert (=> bs!444576 (= lambda!79885 lambda!79850)))

(declare-fun bs!444577 () Bool)

(assert (= bs!444577 (and d!644551 d!644503)))

(assert (=> bs!444577 (= lambda!79885 lambda!79855)))

(declare-fun bs!444578 () Bool)

(assert (= bs!444578 (and d!644551 d!644531)))

(assert (=> bs!444578 (= lambda!79885 lambda!79879)))

(declare-fun bs!444579 () Bool)

(assert (= bs!444579 (and d!644551 d!644549)))

(assert (=> bs!444579 (= lambda!79885 lambda!79884)))

(declare-fun bs!444580 () Bool)

(assert (= bs!444580 (and d!644551 d!644539)))

(assert (=> bs!444580 (= lambda!79885 lambda!79881)))

(declare-fun bs!444581 () Bool)

(assert (= bs!444581 (and d!644551 d!644497)))

(assert (=> bs!444581 (= lambda!79885 lambda!79851)))

(declare-fun bs!444582 () Bool)

(assert (= bs!444582 (and d!644551 d!644511)))

(assert (=> bs!444582 (= lambda!79885 lambda!79856)))

(declare-fun bs!444583 () Bool)

(assert (= bs!444583 (and d!644551 d!644543)))

(assert (=> bs!444583 (= lambda!79885 lambda!79882)))

(declare-fun bs!444584 () Bool)

(assert (= bs!444584 (and d!644551 d!644545)))

(assert (=> bs!444584 (= lambda!79885 lambda!79883)))

(declare-fun bs!444585 () Bool)

(assert (= bs!444585 (and d!644551 d!644447)))

(assert (=> bs!444585 (= lambda!79885 lambda!79844)))

(declare-fun bs!444586 () Bool)

(assert (= bs!444586 (and d!644551 d!644523)))

(assert (=> bs!444586 (= lambda!79885 lambda!79876)))

(declare-fun bs!444587 () Bool)

(assert (= bs!444587 (and d!644551 d!644527)))

(assert (=> bs!444587 (= lambda!79885 lambda!79878)))

(declare-fun bs!444588 () Bool)

(assert (= bs!444588 (and d!644551 d!644471)))

(assert (=> bs!444588 (= lambda!79885 lambda!79845)))

(declare-fun bs!444589 () Bool)

(assert (= bs!444589 (and d!644551 d!644537)))

(assert (=> bs!444589 (= lambda!79885 lambda!79880)))

(assert (=> d!644551 (= (inv!31930 (_2!14188 (_1!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))))) (forall!4949 (exprs!1833 (_2!14188 (_1!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))))) lambda!79885))))

(declare-fun bs!444590 () Bool)

(assert (= bs!444590 d!644551))

(declare-fun m!2585196 () Bool)

(assert (=> bs!444590 m!2585196))

(assert (=> b!2138466 d!644551))

(declare-fun b!2138611 () Bool)

(declare-fun e!1365495 () Int)

(assert (=> b!2138611 (= e!1365495 (lastNullablePos!407 (h!29659 stack!8)))))

(declare-fun b!2138612 () Bool)

(declare-fun e!1365493 () Bool)

(assert (=> b!2138612 (= e!1365493 (lostCauseZipper!107 (z!5837 (h!29659 stack!8))))))

(declare-fun b!2138614 () Bool)

(declare-fun lt!797811 () (InoxSet Context!2666))

(declare-fun e!1365494 () Int)

(assert (=> b!2138614 (= e!1365495 (furthestNullablePosition!67 lt!797811 (+ (from!2720 (h!29659 stack!8)) 1) (totalInput!3098 (h!29659 stack!8)) (size!18973 (totalInput!3098 (h!29659 stack!8))) e!1365494))))

(assert (=> b!2138614 (= lt!797811 (derivationStepZipper!91 (z!5837 (h!29659 stack!8)) (apply!5954 (totalInput!3098 (h!29659 stack!8)) (from!2720 (h!29659 stack!8)))))))

(declare-fun c!340446 () Bool)

(assert (=> b!2138614 (= c!340446 (nullableZipper!131 lt!797811))))

(declare-fun b!2138615 () Bool)

(assert (=> b!2138615 (= e!1365494 (lastNullablePos!407 (h!29659 stack!8)))))

(declare-fun d!644553 () Bool)

(declare-fun lt!797810 () Int)

(assert (=> d!644553 (and (>= lt!797810 (- 1)) (< lt!797810 (size!18973 (totalInput!3098 (h!29659 stack!8)))) (>= lt!797810 (lastNullablePos!407 (h!29659 stack!8))) (or (= lt!797810 (lastNullablePos!407 (h!29659 stack!8))) (>= lt!797810 (from!2720 (h!29659 stack!8)))))))

(assert (=> d!644553 (= lt!797810 e!1365495)))

(declare-fun c!340445 () Bool)

(assert (=> d!644553 (= c!340445 e!1365493)))

(declare-fun res!923756 () Bool)

(assert (=> d!644553 (=> res!923756 e!1365493)))

(assert (=> d!644553 (= res!923756 (= (from!2720 (h!29659 stack!8)) (size!18973 (totalInput!3098 (h!29659 stack!8)))))))

(assert (=> d!644553 (and (>= (from!2720 (h!29659 stack!8)) 0) (<= (from!2720 (h!29659 stack!8)) (size!18973 (totalInput!3098 (h!29659 stack!8)))))))

(assert (=> d!644553 (= (furthestNullablePosition!67 (z!5837 (h!29659 stack!8)) (from!2720 (h!29659 stack!8)) (totalInput!3098 (h!29659 stack!8)) (size!18973 (totalInput!3098 (h!29659 stack!8))) (lastNullablePos!407 (h!29659 stack!8))) lt!797810)))

(declare-fun b!2138613 () Bool)

(assert (=> b!2138613 (= e!1365494 (from!2720 (h!29659 stack!8)))))

(assert (= (and d!644553 (not res!923756)) b!2138612))

(assert (= (and d!644553 c!340445) b!2138611))

(assert (= (and d!644553 (not c!340445)) b!2138614))

(assert (= (and b!2138614 c!340446) b!2138613))

(assert (= (and b!2138614 (not c!340446)) b!2138615))

(declare-fun m!2585198 () Bool)

(assert (=> b!2138612 m!2585198))

(assert (=> b!2138614 m!2584948))

(declare-fun m!2585200 () Bool)

(assert (=> b!2138614 m!2585200))

(declare-fun m!2585202 () Bool)

(assert (=> b!2138614 m!2585202))

(assert (=> b!2138614 m!2585202))

(declare-fun m!2585204 () Bool)

(assert (=> b!2138614 m!2585204))

(declare-fun m!2585206 () Bool)

(assert (=> b!2138614 m!2585206))

(assert (=> b!2138369 d!644553))

(declare-fun d!644555 () Bool)

(declare-fun lt!797812 () Int)

(assert (=> d!644555 (= lt!797812 (size!18974 (list!9544 (totalInput!3098 (h!29659 stack!8)))))))

(assert (=> d!644555 (= lt!797812 (size!18975 (c!340410 (totalInput!3098 (h!29659 stack!8)))))))

(assert (=> d!644555 (= (size!18973 (totalInput!3098 (h!29659 stack!8))) lt!797812)))

(declare-fun bs!444591 () Bool)

(assert (= bs!444591 d!644555))

(declare-fun m!2585208 () Bool)

(assert (=> bs!444591 m!2585208))

(assert (=> bs!444591 m!2585208))

(declare-fun m!2585210 () Bool)

(assert (=> bs!444591 m!2585210))

(declare-fun m!2585212 () Bool)

(assert (=> bs!444591 m!2585212))

(assert (=> b!2138369 d!644555))

(declare-fun bs!444592 () Bool)

(declare-fun d!644557 () Bool)

(assert (= bs!444592 (and d!644557 d!644525)))

(declare-fun lambda!79886 () Int)

(assert (=> bs!444592 (= lambda!79886 lambda!79877)))

(declare-fun bs!444593 () Bool)

(assert (= bs!444593 (and d!644557 d!644495)))

(assert (=> bs!444593 (= lambda!79886 lambda!79850)))

(declare-fun bs!444594 () Bool)

(assert (= bs!444594 (and d!644557 d!644503)))

(assert (=> bs!444594 (= lambda!79886 lambda!79855)))

(declare-fun bs!444595 () Bool)

(assert (= bs!444595 (and d!644557 d!644531)))

(assert (=> bs!444595 (= lambda!79886 lambda!79879)))

(declare-fun bs!444596 () Bool)

(assert (= bs!444596 (and d!644557 d!644549)))

(assert (=> bs!444596 (= lambda!79886 lambda!79884)))

(declare-fun bs!444597 () Bool)

(assert (= bs!444597 (and d!644557 d!644539)))

(assert (=> bs!444597 (= lambda!79886 lambda!79881)))

(declare-fun bs!444598 () Bool)

(assert (= bs!444598 (and d!644557 d!644497)))

(assert (=> bs!444598 (= lambda!79886 lambda!79851)))

(declare-fun bs!444599 () Bool)

(assert (= bs!444599 (and d!644557 d!644511)))

(assert (=> bs!444599 (= lambda!79886 lambda!79856)))

(declare-fun bs!444600 () Bool)

(assert (= bs!444600 (and d!644557 d!644551)))

(assert (=> bs!444600 (= lambda!79886 lambda!79885)))

(declare-fun bs!444601 () Bool)

(assert (= bs!444601 (and d!644557 d!644543)))

(assert (=> bs!444601 (= lambda!79886 lambda!79882)))

(declare-fun bs!444602 () Bool)

(assert (= bs!444602 (and d!644557 d!644545)))

(assert (=> bs!444602 (= lambda!79886 lambda!79883)))

(declare-fun bs!444603 () Bool)

(assert (= bs!444603 (and d!644557 d!644447)))

(assert (=> bs!444603 (= lambda!79886 lambda!79844)))

(declare-fun bs!444604 () Bool)

(assert (= bs!444604 (and d!644557 d!644523)))

(assert (=> bs!444604 (= lambda!79886 lambda!79876)))

(declare-fun bs!444605 () Bool)

(assert (= bs!444605 (and d!644557 d!644527)))

(assert (=> bs!444605 (= lambda!79886 lambda!79878)))

(declare-fun bs!444606 () Bool)

(assert (= bs!444606 (and d!644557 d!644471)))

(assert (=> bs!444606 (= lambda!79886 lambda!79845)))

(declare-fun bs!444607 () Bool)

(assert (= bs!444607 (and d!644557 d!644537)))

(assert (=> bs!444607 (= lambda!79886 lambda!79880)))

(assert (=> d!644557 (= (inv!31930 setElem!16102) (forall!4949 (exprs!1833 setElem!16102) lambda!79886))))

(declare-fun bs!444608 () Bool)

(assert (= bs!444608 d!644557))

(declare-fun m!2585214 () Bool)

(assert (=> bs!444608 m!2585214))

(assert (=> setNonEmpty!16102 d!644557))

(declare-fun bs!444609 () Bool)

(declare-fun d!644559 () Bool)

(assert (= bs!444609 (and d!644559 d!644525)))

(declare-fun lambda!79887 () Int)

(assert (=> bs!444609 (= lambda!79887 lambda!79877)))

(declare-fun bs!444610 () Bool)

(assert (= bs!444610 (and d!644559 d!644495)))

(assert (=> bs!444610 (= lambda!79887 lambda!79850)))

(declare-fun bs!444611 () Bool)

(assert (= bs!444611 (and d!644559 d!644503)))

(assert (=> bs!444611 (= lambda!79887 lambda!79855)))

(declare-fun bs!444612 () Bool)

(assert (= bs!444612 (and d!644559 d!644531)))

(assert (=> bs!444612 (= lambda!79887 lambda!79879)))

(declare-fun bs!444613 () Bool)

(assert (= bs!444613 (and d!644559 d!644549)))

(assert (=> bs!444613 (= lambda!79887 lambda!79884)))

(declare-fun bs!444614 () Bool)

(assert (= bs!444614 (and d!644559 d!644497)))

(assert (=> bs!444614 (= lambda!79887 lambda!79851)))

(declare-fun bs!444615 () Bool)

(assert (= bs!444615 (and d!644559 d!644511)))

(assert (=> bs!444615 (= lambda!79887 lambda!79856)))

(declare-fun bs!444616 () Bool)

(assert (= bs!444616 (and d!644559 d!644551)))

(assert (=> bs!444616 (= lambda!79887 lambda!79885)))

(declare-fun bs!444617 () Bool)

(assert (= bs!444617 (and d!644559 d!644543)))

(assert (=> bs!444617 (= lambda!79887 lambda!79882)))

(declare-fun bs!444618 () Bool)

(assert (= bs!444618 (and d!644559 d!644545)))

(assert (=> bs!444618 (= lambda!79887 lambda!79883)))

(declare-fun bs!444619 () Bool)

(assert (= bs!444619 (and d!644559 d!644447)))

(assert (=> bs!444619 (= lambda!79887 lambda!79844)))

(declare-fun bs!444620 () Bool)

(assert (= bs!444620 (and d!644559 d!644523)))

(assert (=> bs!444620 (= lambda!79887 lambda!79876)))

(declare-fun bs!444621 () Bool)

(assert (= bs!444621 (and d!644559 d!644527)))

(assert (=> bs!444621 (= lambda!79887 lambda!79878)))

(declare-fun bs!444622 () Bool)

(assert (= bs!444622 (and d!644559 d!644471)))

(assert (=> bs!444622 (= lambda!79887 lambda!79845)))

(declare-fun bs!444623 () Bool)

(assert (= bs!444623 (and d!644559 d!644537)))

(assert (=> bs!444623 (= lambda!79887 lambda!79880)))

(declare-fun bs!444624 () Bool)

(assert (= bs!444624 (and d!644559 d!644557)))

(assert (=> bs!444624 (= lambda!79887 lambda!79886)))

(declare-fun bs!444625 () Bool)

(assert (= bs!444625 (and d!644559 d!644539)))

(assert (=> bs!444625 (= lambda!79887 lambda!79881)))

(assert (=> d!644559 (= (inv!31930 setElem!16103) (forall!4949 (exprs!1833 setElem!16103) lambda!79887))))

(declare-fun bs!444626 () Bool)

(assert (= bs!444626 d!644559))

(declare-fun m!2585216 () Bool)

(assert (=> bs!444626 m!2585216))

(assert (=> setNonEmpty!16103 d!644559))

(declare-fun bs!444627 () Bool)

(declare-fun d!644561 () Bool)

(assert (= bs!444627 (and d!644561 d!644495)))

(declare-fun lambda!79888 () Int)

(assert (=> bs!444627 (= lambda!79888 lambda!79850)))

(declare-fun bs!444628 () Bool)

(assert (= bs!444628 (and d!644561 d!644503)))

(assert (=> bs!444628 (= lambda!79888 lambda!79855)))

(declare-fun bs!444629 () Bool)

(assert (= bs!444629 (and d!644561 d!644531)))

(assert (=> bs!444629 (= lambda!79888 lambda!79879)))

(declare-fun bs!444630 () Bool)

(assert (= bs!444630 (and d!644561 d!644549)))

(assert (=> bs!444630 (= lambda!79888 lambda!79884)))

(declare-fun bs!444631 () Bool)

(assert (= bs!444631 (and d!644561 d!644497)))

(assert (=> bs!444631 (= lambda!79888 lambda!79851)))

(declare-fun bs!444632 () Bool)

(assert (= bs!444632 (and d!644561 d!644511)))

(assert (=> bs!444632 (= lambda!79888 lambda!79856)))

(declare-fun bs!444633 () Bool)

(assert (= bs!444633 (and d!644561 d!644551)))

(assert (=> bs!444633 (= lambda!79888 lambda!79885)))

(declare-fun bs!444634 () Bool)

(assert (= bs!444634 (and d!644561 d!644525)))

(assert (=> bs!444634 (= lambda!79888 lambda!79877)))

(declare-fun bs!444635 () Bool)

(assert (= bs!444635 (and d!644561 d!644559)))

(assert (=> bs!444635 (= lambda!79888 lambda!79887)))

(declare-fun bs!444636 () Bool)

(assert (= bs!444636 (and d!644561 d!644543)))

(assert (=> bs!444636 (= lambda!79888 lambda!79882)))

(declare-fun bs!444637 () Bool)

(assert (= bs!444637 (and d!644561 d!644545)))

(assert (=> bs!444637 (= lambda!79888 lambda!79883)))

(declare-fun bs!444638 () Bool)

(assert (= bs!444638 (and d!644561 d!644447)))

(assert (=> bs!444638 (= lambda!79888 lambda!79844)))

(declare-fun bs!444639 () Bool)

(assert (= bs!444639 (and d!644561 d!644523)))

(assert (=> bs!444639 (= lambda!79888 lambda!79876)))

(declare-fun bs!444640 () Bool)

(assert (= bs!444640 (and d!644561 d!644527)))

(assert (=> bs!444640 (= lambda!79888 lambda!79878)))

(declare-fun bs!444641 () Bool)

(assert (= bs!444641 (and d!644561 d!644471)))

(assert (=> bs!444641 (= lambda!79888 lambda!79845)))

(declare-fun bs!444642 () Bool)

(assert (= bs!444642 (and d!644561 d!644537)))

(assert (=> bs!444642 (= lambda!79888 lambda!79880)))

(declare-fun bs!444643 () Bool)

(assert (= bs!444643 (and d!644561 d!644557)))

(assert (=> bs!444643 (= lambda!79888 lambda!79886)))

(declare-fun bs!444644 () Bool)

(assert (= bs!444644 (and d!644561 d!644539)))

(assert (=> bs!444644 (= lambda!79888 lambda!79881)))

(assert (=> d!644561 (= (inv!31930 setElem!16127) (forall!4949 (exprs!1833 setElem!16127) lambda!79888))))

(declare-fun bs!444645 () Bool)

(assert (= bs!444645 d!644561))

(declare-fun m!2585218 () Bool)

(assert (=> bs!444645 m!2585218))

(assert (=> setNonEmpty!16127 d!644561))

(declare-fun d!644563 () Bool)

(declare-fun c!340447 () Bool)

(assert (=> d!644563 (= c!340447 ((_ is Node!7901) (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(declare-fun e!1365496 () Bool)

(assert (=> d!644563 (= (inv!31925 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) e!1365496)))

(declare-fun b!2138616 () Bool)

(assert (=> b!2138616 (= e!1365496 (inv!31932 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(declare-fun b!2138617 () Bool)

(declare-fun e!1365497 () Bool)

(assert (=> b!2138617 (= e!1365496 e!1365497)))

(declare-fun res!923757 () Bool)

(assert (=> b!2138617 (= res!923757 (not ((_ is Leaf!11550) (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))))

(assert (=> b!2138617 (=> res!923757 e!1365497)))

(declare-fun b!2138618 () Bool)

(assert (=> b!2138618 (= e!1365497 (inv!31933 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(assert (= (and d!644563 c!340447) b!2138616))

(assert (= (and d!644563 (not c!340447)) b!2138617))

(assert (= (and b!2138617 (not res!923757)) b!2138618))

(declare-fun m!2585220 () Bool)

(assert (=> b!2138616 m!2585220))

(declare-fun m!2585222 () Bool)

(assert (=> b!2138618 m!2585222))

(assert (=> b!2138441 d!644563))

(declare-fun d!644565 () Bool)

(declare-fun c!340448 () Bool)

(assert (=> d!644565 (= c!340448 ((_ is Node!7901) (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(declare-fun e!1365498 () Bool)

(assert (=> d!644565 (= (inv!31925 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) e!1365498)))

(declare-fun b!2138619 () Bool)

(assert (=> b!2138619 (= e!1365498 (inv!31932 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(declare-fun b!2138620 () Bool)

(declare-fun e!1365499 () Bool)

(assert (=> b!2138620 (= e!1365498 e!1365499)))

(declare-fun res!923758 () Bool)

(assert (=> b!2138620 (= res!923758 (not ((_ is Leaf!11550) (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))))

(assert (=> b!2138620 (=> res!923758 e!1365499)))

(declare-fun b!2138621 () Bool)

(assert (=> b!2138621 (= e!1365499 (inv!31933 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(assert (= (and d!644565 c!340448) b!2138619))

(assert (= (and d!644565 (not c!340448)) b!2138620))

(assert (= (and b!2138620 (not res!923758)) b!2138621))

(declare-fun m!2585224 () Bool)

(assert (=> b!2138619 m!2585224))

(declare-fun m!2585226 () Bool)

(assert (=> b!2138621 m!2585226))

(assert (=> b!2138441 d!644565))

(declare-fun d!644567 () Bool)

(declare-fun c!340449 () Bool)

(assert (=> d!644567 (= c!340449 ((_ is Node!7901) (left!18667 (c!340410 totalInput!851))))))

(declare-fun e!1365500 () Bool)

(assert (=> d!644567 (= (inv!31925 (left!18667 (c!340410 totalInput!851))) e!1365500)))

(declare-fun b!2138622 () Bool)

(assert (=> b!2138622 (= e!1365500 (inv!31932 (left!18667 (c!340410 totalInput!851))))))

(declare-fun b!2138623 () Bool)

(declare-fun e!1365501 () Bool)

(assert (=> b!2138623 (= e!1365500 e!1365501)))

(declare-fun res!923759 () Bool)

(assert (=> b!2138623 (= res!923759 (not ((_ is Leaf!11550) (left!18667 (c!340410 totalInput!851)))))))

(assert (=> b!2138623 (=> res!923759 e!1365501)))

(declare-fun b!2138624 () Bool)

(assert (=> b!2138624 (= e!1365501 (inv!31933 (left!18667 (c!340410 totalInput!851))))))

(assert (= (and d!644567 c!340449) b!2138622))

(assert (= (and d!644567 (not c!340449)) b!2138623))

(assert (= (and b!2138623 (not res!923759)) b!2138624))

(declare-fun m!2585228 () Bool)

(assert (=> b!2138622 m!2585228))

(declare-fun m!2585230 () Bool)

(assert (=> b!2138624 m!2585230))

(assert (=> b!2138536 d!644567))

(declare-fun d!644569 () Bool)

(declare-fun c!340450 () Bool)

(assert (=> d!644569 (= c!340450 ((_ is Node!7901) (right!18997 (c!340410 totalInput!851))))))

(declare-fun e!1365502 () Bool)

(assert (=> d!644569 (= (inv!31925 (right!18997 (c!340410 totalInput!851))) e!1365502)))

(declare-fun b!2138625 () Bool)

(assert (=> b!2138625 (= e!1365502 (inv!31932 (right!18997 (c!340410 totalInput!851))))))

(declare-fun b!2138626 () Bool)

(declare-fun e!1365503 () Bool)

(assert (=> b!2138626 (= e!1365502 e!1365503)))

(declare-fun res!923760 () Bool)

(assert (=> b!2138626 (= res!923760 (not ((_ is Leaf!11550) (right!18997 (c!340410 totalInput!851)))))))

(assert (=> b!2138626 (=> res!923760 e!1365503)))

(declare-fun b!2138627 () Bool)

(assert (=> b!2138627 (= e!1365503 (inv!31933 (right!18997 (c!340410 totalInput!851))))))

(assert (= (and d!644569 c!340450) b!2138625))

(assert (= (and d!644569 (not c!340450)) b!2138626))

(assert (= (and b!2138626 (not res!923760)) b!2138627))

(declare-fun m!2585232 () Bool)

(assert (=> b!2138625 m!2585232))

(declare-fun m!2585234 () Bool)

(assert (=> b!2138627 m!2585234))

(assert (=> b!2138536 d!644569))

(assert (=> b!2138372 d!644555))

(declare-fun bs!444646 () Bool)

(declare-fun d!644571 () Bool)

(assert (= bs!444646 (and d!644571 d!644495)))

(declare-fun lambda!79889 () Int)

(assert (=> bs!444646 (= lambda!79889 lambda!79850)))

(declare-fun bs!444647 () Bool)

(assert (= bs!444647 (and d!644571 d!644503)))

(assert (=> bs!444647 (= lambda!79889 lambda!79855)))

(declare-fun bs!444648 () Bool)

(assert (= bs!444648 (and d!644571 d!644531)))

(assert (=> bs!444648 (= lambda!79889 lambda!79879)))

(declare-fun bs!444649 () Bool)

(assert (= bs!444649 (and d!644571 d!644549)))

(assert (=> bs!444649 (= lambda!79889 lambda!79884)))

(declare-fun bs!444650 () Bool)

(assert (= bs!444650 (and d!644571 d!644561)))

(assert (=> bs!444650 (= lambda!79889 lambda!79888)))

(declare-fun bs!444651 () Bool)

(assert (= bs!444651 (and d!644571 d!644497)))

(assert (=> bs!444651 (= lambda!79889 lambda!79851)))

(declare-fun bs!444652 () Bool)

(assert (= bs!444652 (and d!644571 d!644511)))

(assert (=> bs!444652 (= lambda!79889 lambda!79856)))

(declare-fun bs!444653 () Bool)

(assert (= bs!444653 (and d!644571 d!644551)))

(assert (=> bs!444653 (= lambda!79889 lambda!79885)))

(declare-fun bs!444654 () Bool)

(assert (= bs!444654 (and d!644571 d!644525)))

(assert (=> bs!444654 (= lambda!79889 lambda!79877)))

(declare-fun bs!444655 () Bool)

(assert (= bs!444655 (and d!644571 d!644559)))

(assert (=> bs!444655 (= lambda!79889 lambda!79887)))

(declare-fun bs!444656 () Bool)

(assert (= bs!444656 (and d!644571 d!644543)))

(assert (=> bs!444656 (= lambda!79889 lambda!79882)))

(declare-fun bs!444657 () Bool)

(assert (= bs!444657 (and d!644571 d!644545)))

(assert (=> bs!444657 (= lambda!79889 lambda!79883)))

(declare-fun bs!444658 () Bool)

(assert (= bs!444658 (and d!644571 d!644447)))

(assert (=> bs!444658 (= lambda!79889 lambda!79844)))

(declare-fun bs!444659 () Bool)

(assert (= bs!444659 (and d!644571 d!644523)))

(assert (=> bs!444659 (= lambda!79889 lambda!79876)))

(declare-fun bs!444660 () Bool)

(assert (= bs!444660 (and d!644571 d!644527)))

(assert (=> bs!444660 (= lambda!79889 lambda!79878)))

(declare-fun bs!444661 () Bool)

(assert (= bs!444661 (and d!644571 d!644471)))

(assert (=> bs!444661 (= lambda!79889 lambda!79845)))

(declare-fun bs!444662 () Bool)

(assert (= bs!444662 (and d!644571 d!644537)))

(assert (=> bs!444662 (= lambda!79889 lambda!79880)))

(declare-fun bs!444663 () Bool)

(assert (= bs!444663 (and d!644571 d!644557)))

(assert (=> bs!444663 (= lambda!79889 lambda!79886)))

(declare-fun bs!444664 () Bool)

(assert (= bs!444664 (and d!644571 d!644539)))

(assert (=> bs!444664 (= lambda!79889 lambda!79881)))

(assert (=> d!644571 (= (inv!31930 setElem!16126) (forall!4949 (exprs!1833 setElem!16126) lambda!79889))))

(declare-fun bs!444665 () Bool)

(assert (= bs!444665 d!644571))

(declare-fun m!2585236 () Bool)

(assert (=> bs!444665 m!2585236))

(assert (=> setNonEmpty!16126 d!644571))

(declare-fun d!644573 () Bool)

(declare-fun c!340451 () Bool)

(assert (=> d!644573 (= c!340451 ((_ is Node!7901) (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(declare-fun e!1365504 () Bool)

(assert (=> d!644573 (= (inv!31925 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))) e!1365504)))

(declare-fun b!2138628 () Bool)

(assert (=> b!2138628 (= e!1365504 (inv!31932 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(declare-fun b!2138629 () Bool)

(declare-fun e!1365505 () Bool)

(assert (=> b!2138629 (= e!1365504 e!1365505)))

(declare-fun res!923761 () Bool)

(assert (=> b!2138629 (= res!923761 (not ((_ is Leaf!11550) (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8)))))))))

(assert (=> b!2138629 (=> res!923761 e!1365505)))

(declare-fun b!2138630 () Bool)

(assert (=> b!2138630 (= e!1365505 (inv!31933 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(assert (= (and d!644573 c!340451) b!2138628))

(assert (= (and d!644573 (not c!340451)) b!2138629))

(assert (= (and b!2138629 (not res!923761)) b!2138630))

(declare-fun m!2585238 () Bool)

(assert (=> b!2138628 m!2585238))

(declare-fun m!2585240 () Bool)

(assert (=> b!2138630 m!2585240))

(assert (=> b!2138532 d!644573))

(declare-fun d!644575 () Bool)

(declare-fun c!340452 () Bool)

(assert (=> d!644575 (= c!340452 ((_ is Node!7901) (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(declare-fun e!1365506 () Bool)

(assert (=> d!644575 (= (inv!31925 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))) e!1365506)))

(declare-fun b!2138631 () Bool)

(assert (=> b!2138631 (= e!1365506 (inv!31932 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(declare-fun b!2138632 () Bool)

(declare-fun e!1365507 () Bool)

(assert (=> b!2138632 (= e!1365506 e!1365507)))

(declare-fun res!923762 () Bool)

(assert (=> b!2138632 (= res!923762 (not ((_ is Leaf!11550) (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))))))

(assert (=> b!2138632 (=> res!923762 e!1365507)))

(declare-fun b!2138633 () Bool)

(assert (=> b!2138633 (= e!1365507 (inv!31933 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(assert (= (and d!644575 c!340452) b!2138631))

(assert (= (and d!644575 (not c!340452)) b!2138632))

(assert (= (and b!2138632 (not res!923762)) b!2138633))

(declare-fun m!2585242 () Bool)

(assert (=> b!2138631 m!2585242))

(declare-fun m!2585244 () Bool)

(assert (=> b!2138633 m!2585244))

(assert (=> b!2138532 d!644575))

(declare-fun d!644577 () Bool)

(declare-fun res!923767 () Bool)

(declare-fun e!1365510 () Bool)

(assert (=> d!644577 (=> (not res!923767) (not e!1365510))))

(declare-fun list!9546 (IArray!15807) List!24339)

(assert (=> d!644577 (= res!923767 (<= (size!18974 (list!9546 (xs!10843 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) 512))))

(assert (=> d!644577 (= (inv!31933 (c!340410 (totalInput!3098 (h!29659 stack!8)))) e!1365510)))

(declare-fun b!2138638 () Bool)

(declare-fun res!923768 () Bool)

(assert (=> b!2138638 (=> (not res!923768) (not e!1365510))))

(assert (=> b!2138638 (= res!923768 (= (csize!16033 (c!340410 (totalInput!3098 (h!29659 stack!8)))) (size!18974 (list!9546 (xs!10843 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))))

(declare-fun b!2138639 () Bool)

(assert (=> b!2138639 (= e!1365510 (and (> (csize!16033 (c!340410 (totalInput!3098 (h!29659 stack!8)))) 0) (<= (csize!16033 (c!340410 (totalInput!3098 (h!29659 stack!8)))) 512)))))

(assert (= (and d!644577 res!923767) b!2138638))

(assert (= (and b!2138638 res!923768) b!2138639))

(declare-fun m!2585246 () Bool)

(assert (=> d!644577 m!2585246))

(assert (=> d!644577 m!2585246))

(declare-fun m!2585248 () Bool)

(assert (=> d!644577 m!2585248))

(assert (=> b!2138638 m!2585246))

(assert (=> b!2138638 m!2585246))

(assert (=> b!2138638 m!2585248))

(assert (=> b!2138384 d!644577))

(declare-fun d!644579 () Bool)

(declare-fun res!923769 () Bool)

(declare-fun e!1365511 () Bool)

(assert (=> d!644579 (=> res!923769 e!1365511)))

(assert (=> d!644579 (= res!923769 ((_ is Nil!24258) (t!196870 stack!8)))))

(assert (=> d!644579 (= (forall!4948 (t!196870 stack!8) lambda!79837) e!1365511)))

(declare-fun b!2138640 () Bool)

(declare-fun e!1365512 () Bool)

(assert (=> b!2138640 (= e!1365511 e!1365512)))

(declare-fun res!923770 () Bool)

(assert (=> b!2138640 (=> (not res!923770) (not e!1365512))))

(assert (=> b!2138640 (= res!923770 (dynLambda!11367 lambda!79837 (h!29659 (t!196870 stack!8))))))

(declare-fun b!2138641 () Bool)

(assert (=> b!2138641 (= e!1365512 (forall!4948 (t!196870 (t!196870 stack!8)) lambda!79837))))

(assert (= (and d!644579 (not res!923769)) b!2138640))

(assert (= (and b!2138640 res!923770) b!2138641))

(declare-fun b_lambda!70605 () Bool)

(assert (=> (not b_lambda!70605) (not b!2138640)))

(declare-fun m!2585250 () Bool)

(assert (=> b!2138640 m!2585250))

(declare-fun m!2585252 () Bool)

(assert (=> b!2138641 m!2585252))

(assert (=> b!2138339 d!644579))

(declare-fun d!644581 () Bool)

(declare-fun res!923777 () Bool)

(declare-fun e!1365515 () Bool)

(assert (=> d!644581 (=> (not res!923777) (not e!1365515))))

(assert (=> d!644581 (= res!923777 (= (csize!16032 (c!340410 (totalInput!3098 (h!29659 stack!8)))) (+ (size!18975 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))) (size!18975 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))))

(assert (=> d!644581 (= (inv!31932 (c!340410 (totalInput!3098 (h!29659 stack!8)))) e!1365515)))

(declare-fun b!2138648 () Bool)

(declare-fun res!923778 () Bool)

(assert (=> b!2138648 (=> (not res!923778) (not e!1365515))))

(assert (=> b!2138648 (= res!923778 (and (not (= (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8)))) Empty!7901)) (not (= (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))) Empty!7901))))))

(declare-fun b!2138649 () Bool)

(declare-fun res!923779 () Bool)

(assert (=> b!2138649 (=> (not res!923779) (not e!1365515))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2138649 (= res!923779 (= (cheight!8112 (c!340410 (totalInput!3098 (h!29659 stack!8)))) (+ (max!0 (height!1237 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))) (height!1237 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) 1)))))

(declare-fun b!2138650 () Bool)

(assert (=> b!2138650 (= e!1365515 (<= 0 (cheight!8112 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(assert (= (and d!644581 res!923777) b!2138648))

(assert (= (and b!2138648 res!923778) b!2138649))

(assert (= (and b!2138649 res!923779) b!2138650))

(declare-fun m!2585254 () Bool)

(assert (=> d!644581 m!2585254))

(declare-fun m!2585256 () Bool)

(assert (=> d!644581 m!2585256))

(declare-fun m!2585258 () Bool)

(assert (=> b!2138649 m!2585258))

(declare-fun m!2585260 () Bool)

(assert (=> b!2138649 m!2585260))

(assert (=> b!2138649 m!2585258))

(assert (=> b!2138649 m!2585260))

(declare-fun m!2585262 () Bool)

(assert (=> b!2138649 m!2585262))

(assert (=> b!2138382 d!644581))

(declare-fun d!644583 () Bool)

(declare-fun res!923784 () Bool)

(declare-fun e!1365518 () Bool)

(assert (=> d!644583 (=> (not res!923784) (not e!1365518))))

(declare-fun valid!2129 (MutableMap!2634) Bool)

(assert (=> d!644583 (= res!923784 (valid!2129 (cache!3015 cacheUp!979)))))

(assert (=> d!644583 (= (validCacheMapUp!252 (cache!3015 cacheUp!979)) e!1365518)))

(declare-fun b!2138655 () Bool)

(declare-fun res!923785 () Bool)

(assert (=> b!2138655 (=> (not res!923785) (not e!1365518))))

(declare-fun invariantList!310 (List!24338) Bool)

(declare-datatypes ((ListMap!669 0))(
  ( (ListMap!670 (toList!1077 List!24338)) )
))
(declare-fun map!4891 (MutableMap!2634) ListMap!669)

(assert (=> b!2138655 (= res!923785 (invariantList!310 (toList!1077 (map!4891 (cache!3015 cacheUp!979)))))))

(declare-fun b!2138656 () Bool)

(declare-fun lambda!79892 () Int)

(declare-fun forall!4953 (List!24338 Int) Bool)

(assert (=> b!2138656 (= e!1365518 (forall!4953 (toList!1077 (map!4891 (cache!3015 cacheUp!979))) lambda!79892))))

(assert (= (and d!644583 res!923784) b!2138655))

(assert (= (and b!2138655 res!923785) b!2138656))

(declare-fun m!2585265 () Bool)

(assert (=> d!644583 m!2585265))

(declare-fun m!2585267 () Bool)

(assert (=> b!2138655 m!2585267))

(declare-fun m!2585269 () Bool)

(assert (=> b!2138655 m!2585269))

(assert (=> b!2138656 m!2585267))

(declare-fun m!2585271 () Bool)

(assert (=> b!2138656 m!2585271))

(assert (=> d!644479 d!644583))

(declare-fun d!644585 () Bool)

(declare-fun res!923786 () Bool)

(declare-fun e!1365519 () Bool)

(assert (=> d!644585 (=> (not res!923786) (not e!1365519))))

(assert (=> d!644585 (= res!923786 (<= (size!18974 (list!9546 (xs!10843 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) 512))))

(assert (=> d!644585 (= (inv!31933 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) e!1365519)))

(declare-fun b!2138657 () Bool)

(declare-fun res!923787 () Bool)

(assert (=> b!2138657 (=> (not res!923787) (not e!1365519))))

(assert (=> b!2138657 (= res!923787 (= (csize!16033 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) (size!18974 (list!9546 (xs!10843 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))))

(declare-fun b!2138658 () Bool)

(assert (=> b!2138658 (= e!1365519 (and (> (csize!16033 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) 0) (<= (csize!16033 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) 512)))))

(assert (= (and d!644585 res!923786) b!2138657))

(assert (= (and b!2138657 res!923787) b!2138658))

(declare-fun m!2585273 () Bool)

(assert (=> d!644585 m!2585273))

(assert (=> d!644585 m!2585273))

(declare-fun m!2585275 () Bool)

(assert (=> d!644585 m!2585275))

(assert (=> b!2138657 m!2585273))

(assert (=> b!2138657 m!2585273))

(assert (=> b!2138657 m!2585275))

(assert (=> b!2138334 d!644585))

(declare-fun bs!444666 () Bool)

(declare-fun d!644587 () Bool)

(assert (= bs!444666 (and d!644587 d!644495)))

(declare-fun lambda!79893 () Int)

(assert (=> bs!444666 (= lambda!79893 lambda!79850)))

(declare-fun bs!444667 () Bool)

(assert (= bs!444667 (and d!644587 d!644503)))

(assert (=> bs!444667 (= lambda!79893 lambda!79855)))

(declare-fun bs!444668 () Bool)

(assert (= bs!444668 (and d!644587 d!644531)))

(assert (=> bs!444668 (= lambda!79893 lambda!79879)))

(declare-fun bs!444669 () Bool)

(assert (= bs!444669 (and d!644587 d!644549)))

(assert (=> bs!444669 (= lambda!79893 lambda!79884)))

(declare-fun bs!444670 () Bool)

(assert (= bs!444670 (and d!644587 d!644561)))

(assert (=> bs!444670 (= lambda!79893 lambda!79888)))

(declare-fun bs!444671 () Bool)

(assert (= bs!444671 (and d!644587 d!644497)))

(assert (=> bs!444671 (= lambda!79893 lambda!79851)))

(declare-fun bs!444672 () Bool)

(assert (= bs!444672 (and d!644587 d!644511)))

(assert (=> bs!444672 (= lambda!79893 lambda!79856)))

(declare-fun bs!444673 () Bool)

(assert (= bs!444673 (and d!644587 d!644551)))

(assert (=> bs!444673 (= lambda!79893 lambda!79885)))

(declare-fun bs!444674 () Bool)

(assert (= bs!444674 (and d!644587 d!644525)))

(assert (=> bs!444674 (= lambda!79893 lambda!79877)))

(declare-fun bs!444675 () Bool)

(assert (= bs!444675 (and d!644587 d!644571)))

(assert (=> bs!444675 (= lambda!79893 lambda!79889)))

(declare-fun bs!444676 () Bool)

(assert (= bs!444676 (and d!644587 d!644559)))

(assert (=> bs!444676 (= lambda!79893 lambda!79887)))

(declare-fun bs!444677 () Bool)

(assert (= bs!444677 (and d!644587 d!644543)))

(assert (=> bs!444677 (= lambda!79893 lambda!79882)))

(declare-fun bs!444678 () Bool)

(assert (= bs!444678 (and d!644587 d!644545)))

(assert (=> bs!444678 (= lambda!79893 lambda!79883)))

(declare-fun bs!444679 () Bool)

(assert (= bs!444679 (and d!644587 d!644447)))

(assert (=> bs!444679 (= lambda!79893 lambda!79844)))

(declare-fun bs!444680 () Bool)

(assert (= bs!444680 (and d!644587 d!644523)))

(assert (=> bs!444680 (= lambda!79893 lambda!79876)))

(declare-fun bs!444681 () Bool)

(assert (= bs!444681 (and d!644587 d!644527)))

(assert (=> bs!444681 (= lambda!79893 lambda!79878)))

(declare-fun bs!444682 () Bool)

(assert (= bs!444682 (and d!644587 d!644471)))

(assert (=> bs!444682 (= lambda!79893 lambda!79845)))

(declare-fun bs!444683 () Bool)

(assert (= bs!444683 (and d!644587 d!644537)))

(assert (=> bs!444683 (= lambda!79893 lambda!79880)))

(declare-fun bs!444684 () Bool)

(assert (= bs!444684 (and d!644587 d!644557)))

(assert (=> bs!444684 (= lambda!79893 lambda!79886)))

(declare-fun bs!444685 () Bool)

(assert (= bs!444685 (and d!644587 d!644539)))

(assert (=> bs!444685 (= lambda!79893 lambda!79881)))

(assert (=> d!644587 (= (inv!31930 setElem!16109) (forall!4949 (exprs!1833 setElem!16109) lambda!79893))))

(declare-fun bs!444686 () Bool)

(assert (= bs!444686 d!644587))

(declare-fun m!2585277 () Bool)

(assert (=> bs!444686 m!2585277))

(assert (=> setNonEmpty!16109 d!644587))

(declare-fun bs!444687 () Bool)

(declare-fun d!644589 () Bool)

(assert (= bs!444687 (and d!644589 d!644495)))

(declare-fun lambda!79894 () Int)

(assert (=> bs!444687 (= lambda!79894 lambda!79850)))

(declare-fun bs!444688 () Bool)

(assert (= bs!444688 (and d!644589 d!644503)))

(assert (=> bs!444688 (= lambda!79894 lambda!79855)))

(declare-fun bs!444689 () Bool)

(assert (= bs!444689 (and d!644589 d!644531)))

(assert (=> bs!444689 (= lambda!79894 lambda!79879)))

(declare-fun bs!444690 () Bool)

(assert (= bs!444690 (and d!644589 d!644549)))

(assert (=> bs!444690 (= lambda!79894 lambda!79884)))

(declare-fun bs!444691 () Bool)

(assert (= bs!444691 (and d!644589 d!644561)))

(assert (=> bs!444691 (= lambda!79894 lambda!79888)))

(declare-fun bs!444692 () Bool)

(assert (= bs!444692 (and d!644589 d!644497)))

(assert (=> bs!444692 (= lambda!79894 lambda!79851)))

(declare-fun bs!444693 () Bool)

(assert (= bs!444693 (and d!644589 d!644511)))

(assert (=> bs!444693 (= lambda!79894 lambda!79856)))

(declare-fun bs!444694 () Bool)

(assert (= bs!444694 (and d!644589 d!644551)))

(assert (=> bs!444694 (= lambda!79894 lambda!79885)))

(declare-fun bs!444695 () Bool)

(assert (= bs!444695 (and d!644589 d!644587)))

(assert (=> bs!444695 (= lambda!79894 lambda!79893)))

(declare-fun bs!444696 () Bool)

(assert (= bs!444696 (and d!644589 d!644525)))

(assert (=> bs!444696 (= lambda!79894 lambda!79877)))

(declare-fun bs!444697 () Bool)

(assert (= bs!444697 (and d!644589 d!644571)))

(assert (=> bs!444697 (= lambda!79894 lambda!79889)))

(declare-fun bs!444698 () Bool)

(assert (= bs!444698 (and d!644589 d!644559)))

(assert (=> bs!444698 (= lambda!79894 lambda!79887)))

(declare-fun bs!444699 () Bool)

(assert (= bs!444699 (and d!644589 d!644543)))

(assert (=> bs!444699 (= lambda!79894 lambda!79882)))

(declare-fun bs!444700 () Bool)

(assert (= bs!444700 (and d!644589 d!644545)))

(assert (=> bs!444700 (= lambda!79894 lambda!79883)))

(declare-fun bs!444701 () Bool)

(assert (= bs!444701 (and d!644589 d!644447)))

(assert (=> bs!444701 (= lambda!79894 lambda!79844)))

(declare-fun bs!444702 () Bool)

(assert (= bs!444702 (and d!644589 d!644523)))

(assert (=> bs!444702 (= lambda!79894 lambda!79876)))

(declare-fun bs!444703 () Bool)

(assert (= bs!444703 (and d!644589 d!644527)))

(assert (=> bs!444703 (= lambda!79894 lambda!79878)))

(declare-fun bs!444704 () Bool)

(assert (= bs!444704 (and d!644589 d!644471)))

(assert (=> bs!444704 (= lambda!79894 lambda!79845)))

(declare-fun bs!444705 () Bool)

(assert (= bs!444705 (and d!644589 d!644537)))

(assert (=> bs!444705 (= lambda!79894 lambda!79880)))

(declare-fun bs!444706 () Bool)

(assert (= bs!444706 (and d!644589 d!644557)))

(assert (=> bs!444706 (= lambda!79894 lambda!79886)))

(declare-fun bs!444707 () Bool)

(assert (= bs!444707 (and d!644589 d!644539)))

(assert (=> bs!444707 (= lambda!79894 lambda!79881)))

(assert (=> d!644589 (= (inv!31930 setElem!16119) (forall!4949 (exprs!1833 setElem!16119) lambda!79894))))

(declare-fun bs!444708 () Bool)

(assert (= bs!444708 d!644589))

(declare-fun m!2585279 () Bool)

(assert (=> bs!444708 m!2585279))

(assert (=> setNonEmpty!16118 d!644589))

(declare-fun b!2138659 () Bool)

(declare-fun res!923788 () Bool)

(declare-fun e!1365520 () Bool)

(assert (=> b!2138659 (=> (not res!923788) (not e!1365520))))

(assert (=> b!2138659 (= res!923788 (isBalanced!2456 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(declare-fun b!2138660 () Bool)

(declare-fun e!1365521 () Bool)

(assert (=> b!2138660 (= e!1365521 e!1365520)))

(declare-fun res!923792 () Bool)

(assert (=> b!2138660 (=> (not res!923792) (not e!1365520))))

(assert (=> b!2138660 (= res!923792 (<= (- 1) (- (height!1237 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))) (height!1237 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))))

(declare-fun d!644591 () Bool)

(declare-fun res!923791 () Bool)

(assert (=> d!644591 (=> res!923791 e!1365521)))

(assert (=> d!644591 (= res!923791 (not ((_ is Node!7901) (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(assert (=> d!644591 (= (isBalanced!2456 (c!340410 (totalInput!3098 (h!29659 stack!8)))) e!1365521)))

(declare-fun b!2138661 () Bool)

(declare-fun res!923793 () Bool)

(assert (=> b!2138661 (=> (not res!923793) (not e!1365520))))

(assert (=> b!2138661 (= res!923793 (not (isEmpty!14324 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8)))))))))

(declare-fun b!2138662 () Bool)

(assert (=> b!2138662 (= e!1365520 (not (isEmpty!14324 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))))))

(declare-fun b!2138663 () Bool)

(declare-fun res!923789 () Bool)

(assert (=> b!2138663 (=> (not res!923789) (not e!1365520))))

(assert (=> b!2138663 (= res!923789 (<= (- (height!1237 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))) (height!1237 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) 1))))

(declare-fun b!2138664 () Bool)

(declare-fun res!923790 () Bool)

(assert (=> b!2138664 (=> (not res!923790) (not e!1365520))))

(assert (=> b!2138664 (= res!923790 (isBalanced!2456 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))))))

(assert (= (and d!644591 (not res!923791)) b!2138660))

(assert (= (and b!2138660 res!923792) b!2138663))

(assert (= (and b!2138663 res!923789) b!2138659))

(assert (= (and b!2138659 res!923788) b!2138664))

(assert (= (and b!2138664 res!923790) b!2138661))

(assert (= (and b!2138661 res!923793) b!2138662))

(declare-fun m!2585281 () Bool)

(assert (=> b!2138659 m!2585281))

(declare-fun m!2585283 () Bool)

(assert (=> b!2138664 m!2585283))

(declare-fun m!2585285 () Bool)

(assert (=> b!2138662 m!2585285))

(assert (=> b!2138660 m!2585258))

(assert (=> b!2138660 m!2585260))

(assert (=> b!2138663 m!2585258))

(assert (=> b!2138663 m!2585260))

(declare-fun m!2585287 () Bool)

(assert (=> b!2138661 m!2585287))

(assert (=> d!644445 d!644591))

(declare-fun bs!444709 () Bool)

(declare-fun d!644593 () Bool)

(assert (= bs!444709 (and d!644593 d!644495)))

(declare-fun lambda!79895 () Int)

(assert (=> bs!444709 (= lambda!79895 lambda!79850)))

(declare-fun bs!444710 () Bool)

(assert (= bs!444710 (and d!644593 d!644503)))

(assert (=> bs!444710 (= lambda!79895 lambda!79855)))

(declare-fun bs!444711 () Bool)

(assert (= bs!444711 (and d!644593 d!644531)))

(assert (=> bs!444711 (= lambda!79895 lambda!79879)))

(declare-fun bs!444712 () Bool)

(assert (= bs!444712 (and d!644593 d!644549)))

(assert (=> bs!444712 (= lambda!79895 lambda!79884)))

(declare-fun bs!444713 () Bool)

(assert (= bs!444713 (and d!644593 d!644561)))

(assert (=> bs!444713 (= lambda!79895 lambda!79888)))

(declare-fun bs!444714 () Bool)

(assert (= bs!444714 (and d!644593 d!644497)))

(assert (=> bs!444714 (= lambda!79895 lambda!79851)))

(declare-fun bs!444715 () Bool)

(assert (= bs!444715 (and d!644593 d!644511)))

(assert (=> bs!444715 (= lambda!79895 lambda!79856)))

(declare-fun bs!444716 () Bool)

(assert (= bs!444716 (and d!644593 d!644551)))

(assert (=> bs!444716 (= lambda!79895 lambda!79885)))

(declare-fun bs!444717 () Bool)

(assert (= bs!444717 (and d!644593 d!644587)))

(assert (=> bs!444717 (= lambda!79895 lambda!79893)))

(declare-fun bs!444718 () Bool)

(assert (= bs!444718 (and d!644593 d!644525)))

(assert (=> bs!444718 (= lambda!79895 lambda!79877)))

(declare-fun bs!444719 () Bool)

(assert (= bs!444719 (and d!644593 d!644571)))

(assert (=> bs!444719 (= lambda!79895 lambda!79889)))

(declare-fun bs!444720 () Bool)

(assert (= bs!444720 (and d!644593 d!644559)))

(assert (=> bs!444720 (= lambda!79895 lambda!79887)))

(declare-fun bs!444721 () Bool)

(assert (= bs!444721 (and d!644593 d!644543)))

(assert (=> bs!444721 (= lambda!79895 lambda!79882)))

(declare-fun bs!444722 () Bool)

(assert (= bs!444722 (and d!644593 d!644545)))

(assert (=> bs!444722 (= lambda!79895 lambda!79883)))

(declare-fun bs!444723 () Bool)

(assert (= bs!444723 (and d!644593 d!644447)))

(assert (=> bs!444723 (= lambda!79895 lambda!79844)))

(declare-fun bs!444724 () Bool)

(assert (= bs!444724 (and d!644593 d!644523)))

(assert (=> bs!444724 (= lambda!79895 lambda!79876)))

(declare-fun bs!444725 () Bool)

(assert (= bs!444725 (and d!644593 d!644527)))

(assert (=> bs!444725 (= lambda!79895 lambda!79878)))

(declare-fun bs!444726 () Bool)

(assert (= bs!444726 (and d!644593 d!644471)))

(assert (=> bs!444726 (= lambda!79895 lambda!79845)))

(declare-fun bs!444727 () Bool)

(assert (= bs!444727 (and d!644593 d!644537)))

(assert (=> bs!444727 (= lambda!79895 lambda!79880)))

(declare-fun bs!444728 () Bool)

(assert (= bs!444728 (and d!644593 d!644589)))

(assert (=> bs!444728 (= lambda!79895 lambda!79894)))

(declare-fun bs!444729 () Bool)

(assert (= bs!444729 (and d!644593 d!644557)))

(assert (=> bs!444729 (= lambda!79895 lambda!79886)))

(declare-fun bs!444730 () Bool)

(assert (= bs!444730 (and d!644593 d!644539)))

(assert (=> bs!444730 (= lambda!79895 lambda!79881)))

(assert (=> d!644593 (= (inv!31930 (_2!14188 (_1!14189 (h!29658 mapValue!12984)))) (forall!4949 (exprs!1833 (_2!14188 (_1!14189 (h!29658 mapValue!12984)))) lambda!79895))))

(declare-fun bs!444731 () Bool)

(assert (= bs!444731 d!644593))

(declare-fun m!2585289 () Bool)

(assert (=> bs!444731 m!2585289))

(assert (=> b!2138404 d!644593))

(declare-fun d!644595 () Bool)

(assert (=> d!644595 (= (isEmpty!14322 lt!797762) (not ((_ is Some!4923) lt!797762)))))

(assert (=> d!644439 d!644595))

(declare-fun d!644597 () Bool)

(declare-fun e!1365524 () Bool)

(assert (=> d!644597 e!1365524))

(declare-fun res!923799 () Bool)

(assert (=> d!644597 (=> res!923799 e!1365524)))

(declare-fun res!923798 () Option!4924)

(assert (=> d!644597 (= res!923799 (isEmpty!14322 res!923798))))

(assert (=> d!644597 true))

(assert (=> d!644597 (= (choose!12679 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) res!923798)))

(declare-fun b!2138667 () Bool)

(assert (=> b!2138667 (= e!1365524 (= (get!7416 res!923798) (furthestNullablePosition!67 z!3839 from!1043 (totalInput!3097 cacheFurthestNullable!114) (size!18973 (totalInput!3097 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!644597 (not res!923799)) b!2138667))

(declare-fun m!2585291 () Bool)

(assert (=> d!644597 m!2585291))

(declare-fun m!2585293 () Bool)

(assert (=> b!2138667 m!2585293))

(assert (=> b!2138667 m!2584922))

(assert (=> b!2138667 m!2584922))

(assert (=> b!2138667 m!2584924))

(assert (=> d!644439 d!644597))

(assert (=> b!2138381 d!644583))

(declare-fun bs!444732 () Bool)

(declare-fun d!644599 () Bool)

(assert (= bs!444732 (and d!644599 d!644495)))

(declare-fun lambda!79896 () Int)

(assert (=> bs!444732 (= lambda!79896 lambda!79850)))

(declare-fun bs!444733 () Bool)

(assert (= bs!444733 (and d!644599 d!644503)))

(assert (=> bs!444733 (= lambda!79896 lambda!79855)))

(declare-fun bs!444734 () Bool)

(assert (= bs!444734 (and d!644599 d!644531)))

(assert (=> bs!444734 (= lambda!79896 lambda!79879)))

(declare-fun bs!444735 () Bool)

(assert (= bs!444735 (and d!644599 d!644549)))

(assert (=> bs!444735 (= lambda!79896 lambda!79884)))

(declare-fun bs!444736 () Bool)

(assert (= bs!444736 (and d!644599 d!644561)))

(assert (=> bs!444736 (= lambda!79896 lambda!79888)))

(declare-fun bs!444737 () Bool)

(assert (= bs!444737 (and d!644599 d!644497)))

(assert (=> bs!444737 (= lambda!79896 lambda!79851)))

(declare-fun bs!444738 () Bool)

(assert (= bs!444738 (and d!644599 d!644511)))

(assert (=> bs!444738 (= lambda!79896 lambda!79856)))

(declare-fun bs!444739 () Bool)

(assert (= bs!444739 (and d!644599 d!644551)))

(assert (=> bs!444739 (= lambda!79896 lambda!79885)))

(declare-fun bs!444740 () Bool)

(assert (= bs!444740 (and d!644599 d!644587)))

(assert (=> bs!444740 (= lambda!79896 lambda!79893)))

(declare-fun bs!444741 () Bool)

(assert (= bs!444741 (and d!644599 d!644525)))

(assert (=> bs!444741 (= lambda!79896 lambda!79877)))

(declare-fun bs!444742 () Bool)

(assert (= bs!444742 (and d!644599 d!644571)))

(assert (=> bs!444742 (= lambda!79896 lambda!79889)))

(declare-fun bs!444743 () Bool)

(assert (= bs!444743 (and d!644599 d!644559)))

(assert (=> bs!444743 (= lambda!79896 lambda!79887)))

(declare-fun bs!444744 () Bool)

(assert (= bs!444744 (and d!644599 d!644545)))

(assert (=> bs!444744 (= lambda!79896 lambda!79883)))

(declare-fun bs!444745 () Bool)

(assert (= bs!444745 (and d!644599 d!644447)))

(assert (=> bs!444745 (= lambda!79896 lambda!79844)))

(declare-fun bs!444746 () Bool)

(assert (= bs!444746 (and d!644599 d!644593)))

(assert (=> bs!444746 (= lambda!79896 lambda!79895)))

(declare-fun bs!444747 () Bool)

(assert (= bs!444747 (and d!644599 d!644543)))

(assert (=> bs!444747 (= lambda!79896 lambda!79882)))

(declare-fun bs!444748 () Bool)

(assert (= bs!444748 (and d!644599 d!644523)))

(assert (=> bs!444748 (= lambda!79896 lambda!79876)))

(declare-fun bs!444749 () Bool)

(assert (= bs!444749 (and d!644599 d!644527)))

(assert (=> bs!444749 (= lambda!79896 lambda!79878)))

(declare-fun bs!444750 () Bool)

(assert (= bs!444750 (and d!644599 d!644471)))

(assert (=> bs!444750 (= lambda!79896 lambda!79845)))

(declare-fun bs!444751 () Bool)

(assert (= bs!444751 (and d!644599 d!644537)))

(assert (=> bs!444751 (= lambda!79896 lambda!79880)))

(declare-fun bs!444752 () Bool)

(assert (= bs!444752 (and d!644599 d!644589)))

(assert (=> bs!444752 (= lambda!79896 lambda!79894)))

(declare-fun bs!444753 () Bool)

(assert (= bs!444753 (and d!644599 d!644557)))

(assert (=> bs!444753 (= lambda!79896 lambda!79886)))

(declare-fun bs!444754 () Bool)

(assert (= bs!444754 (and d!644599 d!644539)))

(assert (=> bs!444754 (= lambda!79896 lambda!79881)))

(assert (=> d!644599 (= (inv!31930 setElem!16101) (forall!4949 (exprs!1833 setElem!16101) lambda!79896))))

(declare-fun bs!444755 () Bool)

(assert (= bs!444755 d!644599))

(declare-fun m!2585295 () Bool)

(assert (=> bs!444755 m!2585295))

(assert (=> setNonEmpty!16101 d!644599))

(assert (=> d!644427 d!644491))

(declare-fun bs!444756 () Bool)

(declare-fun d!644601 () Bool)

(assert (= bs!444756 (and d!644601 d!644495)))

(declare-fun lambda!79897 () Int)

(assert (=> bs!444756 (= lambda!79897 lambda!79850)))

(declare-fun bs!444757 () Bool)

(assert (= bs!444757 (and d!644601 d!644503)))

(assert (=> bs!444757 (= lambda!79897 lambda!79855)))

(declare-fun bs!444758 () Bool)

(assert (= bs!444758 (and d!644601 d!644531)))

(assert (=> bs!444758 (= lambda!79897 lambda!79879)))

(declare-fun bs!444759 () Bool)

(assert (= bs!444759 (and d!644601 d!644561)))

(assert (=> bs!444759 (= lambda!79897 lambda!79888)))

(declare-fun bs!444760 () Bool)

(assert (= bs!444760 (and d!644601 d!644497)))

(assert (=> bs!444760 (= lambda!79897 lambda!79851)))

(declare-fun bs!444761 () Bool)

(assert (= bs!444761 (and d!644601 d!644511)))

(assert (=> bs!444761 (= lambda!79897 lambda!79856)))

(declare-fun bs!444762 () Bool)

(assert (= bs!444762 (and d!644601 d!644551)))

(assert (=> bs!444762 (= lambda!79897 lambda!79885)))

(declare-fun bs!444763 () Bool)

(assert (= bs!444763 (and d!644601 d!644587)))

(assert (=> bs!444763 (= lambda!79897 lambda!79893)))

(declare-fun bs!444764 () Bool)

(assert (= bs!444764 (and d!644601 d!644525)))

(assert (=> bs!444764 (= lambda!79897 lambda!79877)))

(declare-fun bs!444765 () Bool)

(assert (= bs!444765 (and d!644601 d!644571)))

(assert (=> bs!444765 (= lambda!79897 lambda!79889)))

(declare-fun bs!444766 () Bool)

(assert (= bs!444766 (and d!644601 d!644559)))

(assert (=> bs!444766 (= lambda!79897 lambda!79887)))

(declare-fun bs!444767 () Bool)

(assert (= bs!444767 (and d!644601 d!644545)))

(assert (=> bs!444767 (= lambda!79897 lambda!79883)))

(declare-fun bs!444768 () Bool)

(assert (= bs!444768 (and d!644601 d!644447)))

(assert (=> bs!444768 (= lambda!79897 lambda!79844)))

(declare-fun bs!444769 () Bool)

(assert (= bs!444769 (and d!644601 d!644593)))

(assert (=> bs!444769 (= lambda!79897 lambda!79895)))

(declare-fun bs!444770 () Bool)

(assert (= bs!444770 (and d!644601 d!644543)))

(assert (=> bs!444770 (= lambda!79897 lambda!79882)))

(declare-fun bs!444771 () Bool)

(assert (= bs!444771 (and d!644601 d!644523)))

(assert (=> bs!444771 (= lambda!79897 lambda!79876)))

(declare-fun bs!444772 () Bool)

(assert (= bs!444772 (and d!644601 d!644527)))

(assert (=> bs!444772 (= lambda!79897 lambda!79878)))

(declare-fun bs!444773 () Bool)

(assert (= bs!444773 (and d!644601 d!644471)))

(assert (=> bs!444773 (= lambda!79897 lambda!79845)))

(declare-fun bs!444774 () Bool)

(assert (= bs!444774 (and d!644601 d!644537)))

(assert (=> bs!444774 (= lambda!79897 lambda!79880)))

(declare-fun bs!444775 () Bool)

(assert (= bs!444775 (and d!644601 d!644589)))

(assert (=> bs!444775 (= lambda!79897 lambda!79894)))

(declare-fun bs!444776 () Bool)

(assert (= bs!444776 (and d!644601 d!644549)))

(assert (=> bs!444776 (= lambda!79897 lambda!79884)))

(declare-fun bs!444777 () Bool)

(assert (= bs!444777 (and d!644601 d!644599)))

(assert (=> bs!444777 (= lambda!79897 lambda!79896)))

(declare-fun bs!444778 () Bool)

(assert (= bs!444778 (and d!644601 d!644557)))

(assert (=> bs!444778 (= lambda!79897 lambda!79886)))

(declare-fun bs!444779 () Bool)

(assert (= bs!444779 (and d!644601 d!644539)))

(assert (=> bs!444779 (= lambda!79897 lambda!79881)))

(assert (=> d!644601 (= (inv!31930 (_1!14184 (_1!14185 (h!29655 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))))) (forall!4949 (exprs!1833 (_1!14184 (_1!14185 (h!29655 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))))) lambda!79897))))

(declare-fun bs!444780 () Bool)

(assert (= bs!444780 d!644601))

(declare-fun m!2585297 () Bool)

(assert (=> bs!444780 m!2585297))

(assert (=> b!2138427 d!644601))

(declare-fun bs!444781 () Bool)

(declare-fun d!644603 () Bool)

(assert (= bs!444781 (and d!644603 d!644601)))

(declare-fun lambda!79898 () Int)

(assert (=> bs!444781 (= lambda!79898 lambda!79897)))

(declare-fun bs!444782 () Bool)

(assert (= bs!444782 (and d!644603 d!644495)))

(assert (=> bs!444782 (= lambda!79898 lambda!79850)))

(declare-fun bs!444783 () Bool)

(assert (= bs!444783 (and d!644603 d!644503)))

(assert (=> bs!444783 (= lambda!79898 lambda!79855)))

(declare-fun bs!444784 () Bool)

(assert (= bs!444784 (and d!644603 d!644531)))

(assert (=> bs!444784 (= lambda!79898 lambda!79879)))

(declare-fun bs!444785 () Bool)

(assert (= bs!444785 (and d!644603 d!644561)))

(assert (=> bs!444785 (= lambda!79898 lambda!79888)))

(declare-fun bs!444786 () Bool)

(assert (= bs!444786 (and d!644603 d!644497)))

(assert (=> bs!444786 (= lambda!79898 lambda!79851)))

(declare-fun bs!444787 () Bool)

(assert (= bs!444787 (and d!644603 d!644511)))

(assert (=> bs!444787 (= lambda!79898 lambda!79856)))

(declare-fun bs!444788 () Bool)

(assert (= bs!444788 (and d!644603 d!644551)))

(assert (=> bs!444788 (= lambda!79898 lambda!79885)))

(declare-fun bs!444789 () Bool)

(assert (= bs!444789 (and d!644603 d!644587)))

(assert (=> bs!444789 (= lambda!79898 lambda!79893)))

(declare-fun bs!444790 () Bool)

(assert (= bs!444790 (and d!644603 d!644525)))

(assert (=> bs!444790 (= lambda!79898 lambda!79877)))

(declare-fun bs!444791 () Bool)

(assert (= bs!444791 (and d!644603 d!644571)))

(assert (=> bs!444791 (= lambda!79898 lambda!79889)))

(declare-fun bs!444792 () Bool)

(assert (= bs!444792 (and d!644603 d!644559)))

(assert (=> bs!444792 (= lambda!79898 lambda!79887)))

(declare-fun bs!444793 () Bool)

(assert (= bs!444793 (and d!644603 d!644545)))

(assert (=> bs!444793 (= lambda!79898 lambda!79883)))

(declare-fun bs!444794 () Bool)

(assert (= bs!444794 (and d!644603 d!644447)))

(assert (=> bs!444794 (= lambda!79898 lambda!79844)))

(declare-fun bs!444795 () Bool)

(assert (= bs!444795 (and d!644603 d!644593)))

(assert (=> bs!444795 (= lambda!79898 lambda!79895)))

(declare-fun bs!444796 () Bool)

(assert (= bs!444796 (and d!644603 d!644543)))

(assert (=> bs!444796 (= lambda!79898 lambda!79882)))

(declare-fun bs!444797 () Bool)

(assert (= bs!444797 (and d!644603 d!644523)))

(assert (=> bs!444797 (= lambda!79898 lambda!79876)))

(declare-fun bs!444798 () Bool)

(assert (= bs!444798 (and d!644603 d!644527)))

(assert (=> bs!444798 (= lambda!79898 lambda!79878)))

(declare-fun bs!444799 () Bool)

(assert (= bs!444799 (and d!644603 d!644471)))

(assert (=> bs!444799 (= lambda!79898 lambda!79845)))

(declare-fun bs!444800 () Bool)

(assert (= bs!444800 (and d!644603 d!644537)))

(assert (=> bs!444800 (= lambda!79898 lambda!79880)))

(declare-fun bs!444801 () Bool)

(assert (= bs!444801 (and d!644603 d!644589)))

(assert (=> bs!444801 (= lambda!79898 lambda!79894)))

(declare-fun bs!444802 () Bool)

(assert (= bs!444802 (and d!644603 d!644549)))

(assert (=> bs!444802 (= lambda!79898 lambda!79884)))

(declare-fun bs!444803 () Bool)

(assert (= bs!444803 (and d!644603 d!644599)))

(assert (=> bs!444803 (= lambda!79898 lambda!79896)))

(declare-fun bs!444804 () Bool)

(assert (= bs!444804 (and d!644603 d!644557)))

(assert (=> bs!444804 (= lambda!79898 lambda!79886)))

(declare-fun bs!444805 () Bool)

(assert (= bs!444805 (and d!644603 d!644539)))

(assert (=> bs!444805 (= lambda!79898 lambda!79881)))

(assert (=> d!644603 (= (inv!31930 setElem!16118) (forall!4949 (exprs!1833 setElem!16118) lambda!79898))))

(declare-fun bs!444806 () Bool)

(assert (= bs!444806 d!644603))

(declare-fun m!2585299 () Bool)

(assert (=> bs!444806 m!2585299))

(assert (=> setNonEmpty!16119 d!644603))

(declare-fun bs!444807 () Bool)

(declare-fun d!644605 () Bool)

(assert (= bs!444807 (and d!644605 d!644601)))

(declare-fun lambda!79899 () Int)

(assert (=> bs!444807 (= lambda!79899 lambda!79897)))

(declare-fun bs!444808 () Bool)

(assert (= bs!444808 (and d!644605 d!644495)))

(assert (=> bs!444808 (= lambda!79899 lambda!79850)))

(declare-fun bs!444809 () Bool)

(assert (= bs!444809 (and d!644605 d!644503)))

(assert (=> bs!444809 (= lambda!79899 lambda!79855)))

(declare-fun bs!444810 () Bool)

(assert (= bs!444810 (and d!644605 d!644531)))

(assert (=> bs!444810 (= lambda!79899 lambda!79879)))

(declare-fun bs!444811 () Bool)

(assert (= bs!444811 (and d!644605 d!644561)))

(assert (=> bs!444811 (= lambda!79899 lambda!79888)))

(declare-fun bs!444812 () Bool)

(assert (= bs!444812 (and d!644605 d!644497)))

(assert (=> bs!444812 (= lambda!79899 lambda!79851)))

(declare-fun bs!444813 () Bool)

(assert (= bs!444813 (and d!644605 d!644511)))

(assert (=> bs!444813 (= lambda!79899 lambda!79856)))

(declare-fun bs!444814 () Bool)

(assert (= bs!444814 (and d!644605 d!644551)))

(assert (=> bs!444814 (= lambda!79899 lambda!79885)))

(declare-fun bs!444815 () Bool)

(assert (= bs!444815 (and d!644605 d!644587)))

(assert (=> bs!444815 (= lambda!79899 lambda!79893)))

(declare-fun bs!444816 () Bool)

(assert (= bs!444816 (and d!644605 d!644525)))

(assert (=> bs!444816 (= lambda!79899 lambda!79877)))

(declare-fun bs!444817 () Bool)

(assert (= bs!444817 (and d!644605 d!644571)))

(assert (=> bs!444817 (= lambda!79899 lambda!79889)))

(declare-fun bs!444818 () Bool)

(assert (= bs!444818 (and d!644605 d!644559)))

(assert (=> bs!444818 (= lambda!79899 lambda!79887)))

(declare-fun bs!444819 () Bool)

(assert (= bs!444819 (and d!644605 d!644545)))

(assert (=> bs!444819 (= lambda!79899 lambda!79883)))

(declare-fun bs!444820 () Bool)

(assert (= bs!444820 (and d!644605 d!644447)))

(assert (=> bs!444820 (= lambda!79899 lambda!79844)))

(declare-fun bs!444821 () Bool)

(assert (= bs!444821 (and d!644605 d!644593)))

(assert (=> bs!444821 (= lambda!79899 lambda!79895)))

(declare-fun bs!444822 () Bool)

(assert (= bs!444822 (and d!644605 d!644543)))

(assert (=> bs!444822 (= lambda!79899 lambda!79882)))

(declare-fun bs!444823 () Bool)

(assert (= bs!444823 (and d!644605 d!644523)))

(assert (=> bs!444823 (= lambda!79899 lambda!79876)))

(declare-fun bs!444824 () Bool)

(assert (= bs!444824 (and d!644605 d!644527)))

(assert (=> bs!444824 (= lambda!79899 lambda!79878)))

(declare-fun bs!444825 () Bool)

(assert (= bs!444825 (and d!644605 d!644537)))

(assert (=> bs!444825 (= lambda!79899 lambda!79880)))

(declare-fun bs!444826 () Bool)

(assert (= bs!444826 (and d!644605 d!644589)))

(assert (=> bs!444826 (= lambda!79899 lambda!79894)))

(declare-fun bs!444827 () Bool)

(assert (= bs!444827 (and d!644605 d!644471)))

(assert (=> bs!444827 (= lambda!79899 lambda!79845)))

(declare-fun bs!444828 () Bool)

(assert (= bs!444828 (and d!644605 d!644603)))

(assert (=> bs!444828 (= lambda!79899 lambda!79898)))

(declare-fun bs!444829 () Bool)

(assert (= bs!444829 (and d!644605 d!644549)))

(assert (=> bs!444829 (= lambda!79899 lambda!79884)))

(declare-fun bs!444830 () Bool)

(assert (= bs!444830 (and d!644605 d!644599)))

(assert (=> bs!444830 (= lambda!79899 lambda!79896)))

(declare-fun bs!444831 () Bool)

(assert (= bs!444831 (and d!644605 d!644557)))

(assert (=> bs!444831 (= lambda!79899 lambda!79886)))

(declare-fun bs!444832 () Bool)

(assert (= bs!444832 (and d!644605 d!644539)))

(assert (=> bs!444832 (= lambda!79899 lambda!79881)))

(assert (=> d!644605 (= (inv!31930 setElem!16094) (forall!4949 (exprs!1833 setElem!16094) lambda!79899))))

(declare-fun bs!444833 () Bool)

(assert (= bs!444833 d!644605))

(declare-fun m!2585301 () Bool)

(assert (=> bs!444833 m!2585301))

(assert (=> setNonEmpty!16094 d!644605))

(declare-fun d!644607 () Bool)

(declare-fun lt!797815 () Bool)

(assert (=> d!644607 (= lt!797815 (exists!704 (toList!1076 z!3839) lambda!79841))))

(declare-fun choose!12680 ((InoxSet Context!2666) Int) Bool)

(assert (=> d!644607 (= lt!797815 (choose!12680 z!3839 lambda!79841))))

(assert (=> d!644607 (= (exists!703 z!3839 lambda!79841) lt!797815)))

(declare-fun bs!444834 () Bool)

(assert (= bs!444834 d!644607))

(assert (=> bs!444834 m!2585150))

(assert (=> bs!444834 m!2585150))

(declare-fun m!2585303 () Bool)

(assert (=> bs!444834 m!2585303))

(declare-fun m!2585305 () Bool)

(assert (=> bs!444834 m!2585305))

(assert (=> d!644443 d!644607))

(assert (=> b!2138280 d!644477))

(declare-fun bs!444835 () Bool)

(declare-fun d!644609 () Bool)

(assert (= bs!444835 (and d!644609 d!644601)))

(declare-fun lambda!79900 () Int)

(assert (=> bs!444835 (= lambda!79900 lambda!79897)))

(declare-fun bs!444836 () Bool)

(assert (= bs!444836 (and d!644609 d!644495)))

(assert (=> bs!444836 (= lambda!79900 lambda!79850)))

(declare-fun bs!444837 () Bool)

(assert (= bs!444837 (and d!644609 d!644503)))

(assert (=> bs!444837 (= lambda!79900 lambda!79855)))

(declare-fun bs!444838 () Bool)

(assert (= bs!444838 (and d!644609 d!644531)))

(assert (=> bs!444838 (= lambda!79900 lambda!79879)))

(declare-fun bs!444839 () Bool)

(assert (= bs!444839 (and d!644609 d!644561)))

(assert (=> bs!444839 (= lambda!79900 lambda!79888)))

(declare-fun bs!444840 () Bool)

(assert (= bs!444840 (and d!644609 d!644497)))

(assert (=> bs!444840 (= lambda!79900 lambda!79851)))

(declare-fun bs!444841 () Bool)

(assert (= bs!444841 (and d!644609 d!644511)))

(assert (=> bs!444841 (= lambda!79900 lambda!79856)))

(declare-fun bs!444842 () Bool)

(assert (= bs!444842 (and d!644609 d!644551)))

(assert (=> bs!444842 (= lambda!79900 lambda!79885)))

(declare-fun bs!444843 () Bool)

(assert (= bs!444843 (and d!644609 d!644587)))

(assert (=> bs!444843 (= lambda!79900 lambda!79893)))

(declare-fun bs!444844 () Bool)

(assert (= bs!444844 (and d!644609 d!644525)))

(assert (=> bs!444844 (= lambda!79900 lambda!79877)))

(declare-fun bs!444845 () Bool)

(assert (= bs!444845 (and d!644609 d!644571)))

(assert (=> bs!444845 (= lambda!79900 lambda!79889)))

(declare-fun bs!444846 () Bool)

(assert (= bs!444846 (and d!644609 d!644559)))

(assert (=> bs!444846 (= lambda!79900 lambda!79887)))

(declare-fun bs!444847 () Bool)

(assert (= bs!444847 (and d!644609 d!644545)))

(assert (=> bs!444847 (= lambda!79900 lambda!79883)))

(declare-fun bs!444848 () Bool)

(assert (= bs!444848 (and d!644609 d!644447)))

(assert (=> bs!444848 (= lambda!79900 lambda!79844)))

(declare-fun bs!444849 () Bool)

(assert (= bs!444849 (and d!644609 d!644593)))

(assert (=> bs!444849 (= lambda!79900 lambda!79895)))

(declare-fun bs!444850 () Bool)

(assert (= bs!444850 (and d!644609 d!644543)))

(assert (=> bs!444850 (= lambda!79900 lambda!79882)))

(declare-fun bs!444851 () Bool)

(assert (= bs!444851 (and d!644609 d!644523)))

(assert (=> bs!444851 (= lambda!79900 lambda!79876)))

(declare-fun bs!444852 () Bool)

(assert (= bs!444852 (and d!644609 d!644527)))

(assert (=> bs!444852 (= lambda!79900 lambda!79878)))

(declare-fun bs!444853 () Bool)

(assert (= bs!444853 (and d!644609 d!644537)))

(assert (=> bs!444853 (= lambda!79900 lambda!79880)))

(declare-fun bs!444854 () Bool)

(assert (= bs!444854 (and d!644609 d!644589)))

(assert (=> bs!444854 (= lambda!79900 lambda!79894)))

(declare-fun bs!444855 () Bool)

(assert (= bs!444855 (and d!644609 d!644471)))

(assert (=> bs!444855 (= lambda!79900 lambda!79845)))

(declare-fun bs!444856 () Bool)

(assert (= bs!444856 (and d!644609 d!644603)))

(assert (=> bs!444856 (= lambda!79900 lambda!79898)))

(declare-fun bs!444857 () Bool)

(assert (= bs!444857 (and d!644609 d!644599)))

(assert (=> bs!444857 (= lambda!79900 lambda!79896)))

(declare-fun bs!444858 () Bool)

(assert (= bs!444858 (and d!644609 d!644549)))

(assert (=> bs!444858 (= lambda!79900 lambda!79884)))

(declare-fun bs!444859 () Bool)

(assert (= bs!444859 (and d!644609 d!644605)))

(assert (=> bs!444859 (= lambda!79900 lambda!79899)))

(declare-fun bs!444860 () Bool)

(assert (= bs!444860 (and d!644609 d!644557)))

(assert (=> bs!444860 (= lambda!79900 lambda!79886)))

(declare-fun bs!444861 () Bool)

(assert (= bs!444861 (and d!644609 d!644539)))

(assert (=> bs!444861 (= lambda!79900 lambda!79881)))

(assert (=> d!644609 (= (inv!31930 (_2!14188 (_1!14189 (h!29658 mapValue!12979)))) (forall!4949 (exprs!1833 (_2!14188 (_1!14189 (h!29658 mapValue!12979)))) lambda!79900))))

(declare-fun bs!444862 () Bool)

(assert (= bs!444862 d!644609))

(declare-fun m!2585307 () Bool)

(assert (=> bs!444862 m!2585307))

(assert (=> b!2138416 d!644609))

(declare-fun b!2138668 () Bool)

(declare-fun res!923800 () Bool)

(declare-fun e!1365525 () Bool)

(assert (=> b!2138668 (=> (not res!923800) (not e!1365525))))

(assert (=> b!2138668 (= res!923800 (isBalanced!2456 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(declare-fun b!2138669 () Bool)

(declare-fun e!1365526 () Bool)

(assert (=> b!2138669 (= e!1365526 e!1365525)))

(declare-fun res!923804 () Bool)

(assert (=> b!2138669 (=> (not res!923804) (not e!1365525))))

(assert (=> b!2138669 (= res!923804 (<= (- 1) (- (height!1237 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) (height!1237 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))))

(declare-fun d!644611 () Bool)

(declare-fun res!923803 () Bool)

(assert (=> d!644611 (=> res!923803 e!1365526)))

(assert (=> d!644611 (= res!923803 (not ((_ is Node!7901) (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(assert (=> d!644611 (= (isBalanced!2456 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) e!1365526)))

(declare-fun b!2138670 () Bool)

(declare-fun res!923805 () Bool)

(assert (=> b!2138670 (=> (not res!923805) (not e!1365525))))

(assert (=> b!2138670 (= res!923805 (not (isEmpty!14324 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))))

(declare-fun b!2138671 () Bool)

(assert (=> b!2138671 (= e!1365525 (not (isEmpty!14324 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))))))

(declare-fun b!2138672 () Bool)

(declare-fun res!923801 () Bool)

(assert (=> b!2138672 (=> (not res!923801) (not e!1365525))))

(assert (=> b!2138672 (= res!923801 (<= (- (height!1237 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) (height!1237 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) 1))))

(declare-fun b!2138673 () Bool)

(declare-fun res!923802 () Bool)

(assert (=> b!2138673 (=> (not res!923802) (not e!1365525))))

(assert (=> b!2138673 (= res!923802 (isBalanced!2456 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(assert (= (and d!644611 (not res!923803)) b!2138669))

(assert (= (and b!2138669 res!923804) b!2138672))

(assert (= (and b!2138672 res!923801) b!2138668))

(assert (= (and b!2138668 res!923800) b!2138673))

(assert (= (and b!2138673 res!923802) b!2138670))

(assert (= (and b!2138670 res!923805) b!2138671))

(declare-fun m!2585309 () Bool)

(assert (=> b!2138668 m!2585309))

(declare-fun m!2585311 () Bool)

(assert (=> b!2138673 m!2585311))

(declare-fun m!2585313 () Bool)

(assert (=> b!2138671 m!2585313))

(declare-fun m!2585315 () Bool)

(assert (=> b!2138669 m!2585315))

(declare-fun m!2585317 () Bool)

(assert (=> b!2138669 m!2585317))

(assert (=> b!2138672 m!2585315))

(assert (=> b!2138672 m!2585317))

(declare-fun m!2585319 () Bool)

(assert (=> b!2138670 m!2585319))

(assert (=> d!644459 d!644611))

(declare-fun bs!444863 () Bool)

(declare-fun d!644613 () Bool)

(assert (= bs!444863 (and d!644613 d!644601)))

(declare-fun lambda!79901 () Int)

(assert (=> bs!444863 (= lambda!79901 lambda!79897)))

(declare-fun bs!444864 () Bool)

(assert (= bs!444864 (and d!644613 d!644495)))

(assert (=> bs!444864 (= lambda!79901 lambda!79850)))

(declare-fun bs!444865 () Bool)

(assert (= bs!444865 (and d!644613 d!644503)))

(assert (=> bs!444865 (= lambda!79901 lambda!79855)))

(declare-fun bs!444866 () Bool)

(assert (= bs!444866 (and d!644613 d!644531)))

(assert (=> bs!444866 (= lambda!79901 lambda!79879)))

(declare-fun bs!444867 () Bool)

(assert (= bs!444867 (and d!644613 d!644609)))

(assert (=> bs!444867 (= lambda!79901 lambda!79900)))

(declare-fun bs!444868 () Bool)

(assert (= bs!444868 (and d!644613 d!644561)))

(assert (=> bs!444868 (= lambda!79901 lambda!79888)))

(declare-fun bs!444869 () Bool)

(assert (= bs!444869 (and d!644613 d!644497)))

(assert (=> bs!444869 (= lambda!79901 lambda!79851)))

(declare-fun bs!444870 () Bool)

(assert (= bs!444870 (and d!644613 d!644511)))

(assert (=> bs!444870 (= lambda!79901 lambda!79856)))

(declare-fun bs!444871 () Bool)

(assert (= bs!444871 (and d!644613 d!644551)))

(assert (=> bs!444871 (= lambda!79901 lambda!79885)))

(declare-fun bs!444872 () Bool)

(assert (= bs!444872 (and d!644613 d!644587)))

(assert (=> bs!444872 (= lambda!79901 lambda!79893)))

(declare-fun bs!444873 () Bool)

(assert (= bs!444873 (and d!644613 d!644525)))

(assert (=> bs!444873 (= lambda!79901 lambda!79877)))

(declare-fun bs!444874 () Bool)

(assert (= bs!444874 (and d!644613 d!644571)))

(assert (=> bs!444874 (= lambda!79901 lambda!79889)))

(declare-fun bs!444875 () Bool)

(assert (= bs!444875 (and d!644613 d!644559)))

(assert (=> bs!444875 (= lambda!79901 lambda!79887)))

(declare-fun bs!444876 () Bool)

(assert (= bs!444876 (and d!644613 d!644545)))

(assert (=> bs!444876 (= lambda!79901 lambda!79883)))

(declare-fun bs!444877 () Bool)

(assert (= bs!444877 (and d!644613 d!644447)))

(assert (=> bs!444877 (= lambda!79901 lambda!79844)))

(declare-fun bs!444878 () Bool)

(assert (= bs!444878 (and d!644613 d!644593)))

(assert (=> bs!444878 (= lambda!79901 lambda!79895)))

(declare-fun bs!444879 () Bool)

(assert (= bs!444879 (and d!644613 d!644543)))

(assert (=> bs!444879 (= lambda!79901 lambda!79882)))

(declare-fun bs!444880 () Bool)

(assert (= bs!444880 (and d!644613 d!644523)))

(assert (=> bs!444880 (= lambda!79901 lambda!79876)))

(declare-fun bs!444881 () Bool)

(assert (= bs!444881 (and d!644613 d!644527)))

(assert (=> bs!444881 (= lambda!79901 lambda!79878)))

(declare-fun bs!444882 () Bool)

(assert (= bs!444882 (and d!644613 d!644537)))

(assert (=> bs!444882 (= lambda!79901 lambda!79880)))

(declare-fun bs!444883 () Bool)

(assert (= bs!444883 (and d!644613 d!644589)))

(assert (=> bs!444883 (= lambda!79901 lambda!79894)))

(declare-fun bs!444884 () Bool)

(assert (= bs!444884 (and d!644613 d!644471)))

(assert (=> bs!444884 (= lambda!79901 lambda!79845)))

(declare-fun bs!444885 () Bool)

(assert (= bs!444885 (and d!644613 d!644603)))

(assert (=> bs!444885 (= lambda!79901 lambda!79898)))

(declare-fun bs!444886 () Bool)

(assert (= bs!444886 (and d!644613 d!644599)))

(assert (=> bs!444886 (= lambda!79901 lambda!79896)))

(declare-fun bs!444887 () Bool)

(assert (= bs!444887 (and d!644613 d!644549)))

(assert (=> bs!444887 (= lambda!79901 lambda!79884)))

(declare-fun bs!444888 () Bool)

(assert (= bs!444888 (and d!644613 d!644605)))

(assert (=> bs!444888 (= lambda!79901 lambda!79899)))

(declare-fun bs!444889 () Bool)

(assert (= bs!444889 (and d!644613 d!644557)))

(assert (=> bs!444889 (= lambda!79901 lambda!79886)))

(declare-fun bs!444890 () Bool)

(assert (= bs!444890 (and d!644613 d!644539)))

(assert (=> bs!444890 (= lambda!79901 lambda!79881)))

(assert (=> d!644613 (= (inv!31930 setElem!16112) (forall!4949 (exprs!1833 setElem!16112) lambda!79901))))

(declare-fun bs!444891 () Bool)

(assert (= bs!444891 d!644613))

(declare-fun m!2585321 () Bool)

(assert (=> bs!444891 m!2585321))

(assert (=> setNonEmpty!16112 d!644613))

(declare-fun d!644615 () Bool)

(declare-fun res!923806 () Bool)

(declare-fun e!1365527 () Bool)

(assert (=> d!644615 (=> (not res!923806) (not e!1365527))))

(assert (=> d!644615 (= res!923806 (<= (size!18974 (list!9546 (xs!10843 (c!340410 totalInput!851)))) 512))))

(assert (=> d!644615 (= (inv!31933 (c!340410 totalInput!851)) e!1365527)))

(declare-fun b!2138674 () Bool)

(declare-fun res!923807 () Bool)

(assert (=> b!2138674 (=> (not res!923807) (not e!1365527))))

(assert (=> b!2138674 (= res!923807 (= (csize!16033 (c!340410 totalInput!851)) (size!18974 (list!9546 (xs!10843 (c!340410 totalInput!851))))))))

(declare-fun b!2138675 () Bool)

(assert (=> b!2138675 (= e!1365527 (and (> (csize!16033 (c!340410 totalInput!851)) 0) (<= (csize!16033 (c!340410 totalInput!851)) 512)))))

(assert (= (and d!644615 res!923806) b!2138674))

(assert (= (and b!2138674 res!923807) b!2138675))

(declare-fun m!2585323 () Bool)

(assert (=> d!644615 m!2585323))

(assert (=> d!644615 m!2585323))

(declare-fun m!2585325 () Bool)

(assert (=> d!644615 m!2585325))

(assert (=> b!2138674 m!2585323))

(assert (=> b!2138674 m!2585323))

(assert (=> b!2138674 m!2585325))

(assert (=> b!2138387 d!644615))

(declare-fun b!2138676 () Bool)

(declare-fun e!1365528 () Bool)

(assert (=> b!2138676 (= e!1365528 (= (lastNullablePos!407 (h!29659 (t!196870 stack!8))) (- (from!2720 (h!29659 (t!196870 stack!8))) 1)))))

(declare-fun b!2138677 () Bool)

(declare-fun res!923812 () Bool)

(declare-fun e!1365529 () Bool)

(assert (=> b!2138677 (=> (not res!923812) (not e!1365529))))

(assert (=> b!2138677 (= res!923812 (and (>= (lastNullablePos!407 (h!29659 (t!196870 stack!8))) (- 1)) (< (lastNullablePos!407 (h!29659 (t!196870 stack!8))) (from!2720 (h!29659 (t!196870 stack!8))))))))

(declare-fun b!2138678 () Bool)

(assert (=> b!2138678 (= e!1365529 (= (res!923663 (h!29659 (t!196870 stack!8))) (furthestNullablePosition!67 (z!5837 (h!29659 (t!196870 stack!8))) (from!2720 (h!29659 (t!196870 stack!8))) (totalInput!3098 (h!29659 (t!196870 stack!8))) (size!18973 (totalInput!3098 (h!29659 (t!196870 stack!8)))) (lastNullablePos!407 (h!29659 (t!196870 stack!8))))))))

(declare-fun b!2138679 () Bool)

(declare-fun res!923809 () Bool)

(assert (=> b!2138679 (=> (not res!923809) (not e!1365529))))

(assert (=> b!2138679 (= res!923809 (= (size!18973 (totalInput!3098 (h!29659 (t!196870 stack!8)))) (size!18973 (totalInput!3098 (h!29659 (t!196870 stack!8))))))))

(declare-fun d!644617 () Bool)

(declare-fun res!923808 () Bool)

(assert (=> d!644617 (=> (not res!923808) (not e!1365529))))

(assert (=> d!644617 (= res!923808 (>= (from!2720 (h!29659 (t!196870 stack!8))) 0))))

(assert (=> d!644617 (= (inv!31931 (h!29659 (t!196870 stack!8))) e!1365529)))

(declare-fun b!2138680 () Bool)

(declare-fun res!923810 () Bool)

(assert (=> b!2138680 (=> (not res!923810) (not e!1365529))))

(assert (=> b!2138680 (= res!923810 e!1365528)))

(declare-fun res!923811 () Bool)

(assert (=> b!2138680 (=> res!923811 e!1365528)))

(assert (=> b!2138680 (= res!923811 (not (nullableZipper!131 (z!5837 (h!29659 (t!196870 stack!8))))))))

(declare-fun b!2138681 () Bool)

(declare-fun res!923813 () Bool)

(assert (=> b!2138681 (=> (not res!923813) (not e!1365529))))

(assert (=> b!2138681 (= res!923813 (<= (from!2720 (h!29659 (t!196870 stack!8))) (size!18973 (totalInput!3098 (h!29659 (t!196870 stack!8))))))))

(assert (= (and d!644617 res!923808) b!2138681))

(assert (= (and b!2138681 res!923813) b!2138679))

(assert (= (and b!2138679 res!923809) b!2138677))

(assert (= (and b!2138677 res!923812) b!2138680))

(assert (= (and b!2138680 (not res!923811)) b!2138676))

(assert (= (and b!2138680 res!923810) b!2138678))

(declare-fun m!2585327 () Bool)

(assert (=> b!2138678 m!2585327))

(assert (=> b!2138678 m!2585327))

(declare-fun m!2585329 () Bool)

(assert (=> b!2138678 m!2585329))

(assert (=> b!2138679 m!2585327))

(declare-fun m!2585331 () Bool)

(assert (=> b!2138680 m!2585331))

(assert (=> b!2138681 m!2585327))

(assert (=> b!2138527 d!644617))

(declare-fun d!644619 () Bool)

(declare-fun res!923814 () Bool)

(declare-fun e!1365530 () Bool)

(assert (=> d!644619 (=> (not res!923814) (not e!1365530))))

(assert (=> d!644619 (= res!923814 (= (csize!16032 (c!340410 totalInput!851)) (+ (size!18975 (left!18667 (c!340410 totalInput!851))) (size!18975 (right!18997 (c!340410 totalInput!851))))))))

(assert (=> d!644619 (= (inv!31932 (c!340410 totalInput!851)) e!1365530)))

(declare-fun b!2138682 () Bool)

(declare-fun res!923815 () Bool)

(assert (=> b!2138682 (=> (not res!923815) (not e!1365530))))

(assert (=> b!2138682 (= res!923815 (and (not (= (left!18667 (c!340410 totalInput!851)) Empty!7901)) (not (= (right!18997 (c!340410 totalInput!851)) Empty!7901))))))

(declare-fun b!2138683 () Bool)

(declare-fun res!923816 () Bool)

(assert (=> b!2138683 (=> (not res!923816) (not e!1365530))))

(assert (=> b!2138683 (= res!923816 (= (cheight!8112 (c!340410 totalInput!851)) (+ (max!0 (height!1237 (left!18667 (c!340410 totalInput!851))) (height!1237 (right!18997 (c!340410 totalInput!851)))) 1)))))

(declare-fun b!2138684 () Bool)

(assert (=> b!2138684 (= e!1365530 (<= 0 (cheight!8112 (c!340410 totalInput!851))))))

(assert (= (and d!644619 res!923814) b!2138682))

(assert (= (and b!2138682 res!923815) b!2138683))

(assert (= (and b!2138683 res!923816) b!2138684))

(declare-fun m!2585333 () Bool)

(assert (=> d!644619 m!2585333))

(declare-fun m!2585335 () Bool)

(assert (=> d!644619 m!2585335))

(assert (=> b!2138683 m!2585170))

(assert (=> b!2138683 m!2585172))

(assert (=> b!2138683 m!2585170))

(assert (=> b!2138683 m!2585172))

(declare-fun m!2585337 () Bool)

(assert (=> b!2138683 m!2585337))

(assert (=> b!2138385 d!644619))

(assert (=> b!2138378 d!644499))

(declare-fun bs!444892 () Bool)

(declare-fun d!644621 () Bool)

(assert (= bs!444892 (and d!644621 d!644601)))

(declare-fun lambda!79902 () Int)

(assert (=> bs!444892 (= lambda!79902 lambda!79897)))

(declare-fun bs!444893 () Bool)

(assert (= bs!444893 (and d!644621 d!644495)))

(assert (=> bs!444893 (= lambda!79902 lambda!79850)))

(declare-fun bs!444894 () Bool)

(assert (= bs!444894 (and d!644621 d!644503)))

(assert (=> bs!444894 (= lambda!79902 lambda!79855)))

(declare-fun bs!444895 () Bool)

(assert (= bs!444895 (and d!644621 d!644531)))

(assert (=> bs!444895 (= lambda!79902 lambda!79879)))

(declare-fun bs!444896 () Bool)

(assert (= bs!444896 (and d!644621 d!644609)))

(assert (=> bs!444896 (= lambda!79902 lambda!79900)))

(declare-fun bs!444897 () Bool)

(assert (= bs!444897 (and d!644621 d!644561)))

(assert (=> bs!444897 (= lambda!79902 lambda!79888)))

(declare-fun bs!444898 () Bool)

(assert (= bs!444898 (and d!644621 d!644497)))

(assert (=> bs!444898 (= lambda!79902 lambda!79851)))

(declare-fun bs!444899 () Bool)

(assert (= bs!444899 (and d!644621 d!644551)))

(assert (=> bs!444899 (= lambda!79902 lambda!79885)))

(declare-fun bs!444900 () Bool)

(assert (= bs!444900 (and d!644621 d!644587)))

(assert (=> bs!444900 (= lambda!79902 lambda!79893)))

(declare-fun bs!444901 () Bool)

(assert (= bs!444901 (and d!644621 d!644525)))

(assert (=> bs!444901 (= lambda!79902 lambda!79877)))

(declare-fun bs!444902 () Bool)

(assert (= bs!444902 (and d!644621 d!644571)))

(assert (=> bs!444902 (= lambda!79902 lambda!79889)))

(declare-fun bs!444903 () Bool)

(assert (= bs!444903 (and d!644621 d!644559)))

(assert (=> bs!444903 (= lambda!79902 lambda!79887)))

(declare-fun bs!444904 () Bool)

(assert (= bs!444904 (and d!644621 d!644545)))

(assert (=> bs!444904 (= lambda!79902 lambda!79883)))

(declare-fun bs!444905 () Bool)

(assert (= bs!444905 (and d!644621 d!644447)))

(assert (=> bs!444905 (= lambda!79902 lambda!79844)))

(declare-fun bs!444906 () Bool)

(assert (= bs!444906 (and d!644621 d!644593)))

(assert (=> bs!444906 (= lambda!79902 lambda!79895)))

(declare-fun bs!444907 () Bool)

(assert (= bs!444907 (and d!644621 d!644543)))

(assert (=> bs!444907 (= lambda!79902 lambda!79882)))

(declare-fun bs!444908 () Bool)

(assert (= bs!444908 (and d!644621 d!644523)))

(assert (=> bs!444908 (= lambda!79902 lambda!79876)))

(declare-fun bs!444909 () Bool)

(assert (= bs!444909 (and d!644621 d!644527)))

(assert (=> bs!444909 (= lambda!79902 lambda!79878)))

(declare-fun bs!444910 () Bool)

(assert (= bs!444910 (and d!644621 d!644537)))

(assert (=> bs!444910 (= lambda!79902 lambda!79880)))

(declare-fun bs!444911 () Bool)

(assert (= bs!444911 (and d!644621 d!644589)))

(assert (=> bs!444911 (= lambda!79902 lambda!79894)))

(declare-fun bs!444912 () Bool)

(assert (= bs!444912 (and d!644621 d!644471)))

(assert (=> bs!444912 (= lambda!79902 lambda!79845)))

(declare-fun bs!444913 () Bool)

(assert (= bs!444913 (and d!644621 d!644603)))

(assert (=> bs!444913 (= lambda!79902 lambda!79898)))

(declare-fun bs!444914 () Bool)

(assert (= bs!444914 (and d!644621 d!644599)))

(assert (=> bs!444914 (= lambda!79902 lambda!79896)))

(declare-fun bs!444915 () Bool)

(assert (= bs!444915 (and d!644621 d!644549)))

(assert (=> bs!444915 (= lambda!79902 lambda!79884)))

(declare-fun bs!444916 () Bool)

(assert (= bs!444916 (and d!644621 d!644605)))

(assert (=> bs!444916 (= lambda!79902 lambda!79899)))

(declare-fun bs!444917 () Bool)

(assert (= bs!444917 (and d!644621 d!644557)))

(assert (=> bs!444917 (= lambda!79902 lambda!79886)))

(declare-fun bs!444918 () Bool)

(assert (= bs!444918 (and d!644621 d!644539)))

(assert (=> bs!444918 (= lambda!79902 lambda!79881)))

(declare-fun bs!444919 () Bool)

(assert (= bs!444919 (and d!644621 d!644511)))

(assert (=> bs!444919 (= lambda!79902 lambda!79856)))

(declare-fun bs!444920 () Bool)

(assert (= bs!444920 (and d!644621 d!644613)))

(assert (=> bs!444920 (= lambda!79902 lambda!79901)))

(assert (=> d!644621 (= (inv!31930 (_2!14188 (_1!14189 (h!29658 mapDefault!12979)))) (forall!4949 (exprs!1833 (_2!14188 (_1!14189 (h!29658 mapDefault!12979)))) lambda!79902))))

(declare-fun bs!444921 () Bool)

(assert (= bs!444921 d!644621))

(declare-fun m!2585339 () Bool)

(assert (=> bs!444921 m!2585339))

(assert (=> b!2138447 d!644621))

(declare-fun bs!444922 () Bool)

(declare-fun d!644623 () Bool)

(assert (= bs!444922 (and d!644623 d!644601)))

(declare-fun lambda!79903 () Int)

(assert (=> bs!444922 (= lambda!79903 lambda!79897)))

(declare-fun bs!444923 () Bool)

(assert (= bs!444923 (and d!644623 d!644495)))

(assert (=> bs!444923 (= lambda!79903 lambda!79850)))

(declare-fun bs!444924 () Bool)

(assert (= bs!444924 (and d!644623 d!644503)))

(assert (=> bs!444924 (= lambda!79903 lambda!79855)))

(declare-fun bs!444925 () Bool)

(assert (= bs!444925 (and d!644623 d!644531)))

(assert (=> bs!444925 (= lambda!79903 lambda!79879)))

(declare-fun bs!444926 () Bool)

(assert (= bs!444926 (and d!644623 d!644609)))

(assert (=> bs!444926 (= lambda!79903 lambda!79900)))

(declare-fun bs!444927 () Bool)

(assert (= bs!444927 (and d!644623 d!644561)))

(assert (=> bs!444927 (= lambda!79903 lambda!79888)))

(declare-fun bs!444928 () Bool)

(assert (= bs!444928 (and d!644623 d!644551)))

(assert (=> bs!444928 (= lambda!79903 lambda!79885)))

(declare-fun bs!444929 () Bool)

(assert (= bs!444929 (and d!644623 d!644587)))

(assert (=> bs!444929 (= lambda!79903 lambda!79893)))

(declare-fun bs!444930 () Bool)

(assert (= bs!444930 (and d!644623 d!644525)))

(assert (=> bs!444930 (= lambda!79903 lambda!79877)))

(declare-fun bs!444931 () Bool)

(assert (= bs!444931 (and d!644623 d!644571)))

(assert (=> bs!444931 (= lambda!79903 lambda!79889)))

(declare-fun bs!444932 () Bool)

(assert (= bs!444932 (and d!644623 d!644559)))

(assert (=> bs!444932 (= lambda!79903 lambda!79887)))

(declare-fun bs!444933 () Bool)

(assert (= bs!444933 (and d!644623 d!644545)))

(assert (=> bs!444933 (= lambda!79903 lambda!79883)))

(declare-fun bs!444934 () Bool)

(assert (= bs!444934 (and d!644623 d!644447)))

(assert (=> bs!444934 (= lambda!79903 lambda!79844)))

(declare-fun bs!444935 () Bool)

(assert (= bs!444935 (and d!644623 d!644593)))

(assert (=> bs!444935 (= lambda!79903 lambda!79895)))

(declare-fun bs!444936 () Bool)

(assert (= bs!444936 (and d!644623 d!644543)))

(assert (=> bs!444936 (= lambda!79903 lambda!79882)))

(declare-fun bs!444937 () Bool)

(assert (= bs!444937 (and d!644623 d!644523)))

(assert (=> bs!444937 (= lambda!79903 lambda!79876)))

(declare-fun bs!444938 () Bool)

(assert (= bs!444938 (and d!644623 d!644527)))

(assert (=> bs!444938 (= lambda!79903 lambda!79878)))

(declare-fun bs!444939 () Bool)

(assert (= bs!444939 (and d!644623 d!644537)))

(assert (=> bs!444939 (= lambda!79903 lambda!79880)))

(declare-fun bs!444940 () Bool)

(assert (= bs!444940 (and d!644623 d!644589)))

(assert (=> bs!444940 (= lambda!79903 lambda!79894)))

(declare-fun bs!444941 () Bool)

(assert (= bs!444941 (and d!644623 d!644471)))

(assert (=> bs!444941 (= lambda!79903 lambda!79845)))

(declare-fun bs!444942 () Bool)

(assert (= bs!444942 (and d!644623 d!644603)))

(assert (=> bs!444942 (= lambda!79903 lambda!79898)))

(declare-fun bs!444943 () Bool)

(assert (= bs!444943 (and d!644623 d!644599)))

(assert (=> bs!444943 (= lambda!79903 lambda!79896)))

(declare-fun bs!444944 () Bool)

(assert (= bs!444944 (and d!644623 d!644549)))

(assert (=> bs!444944 (= lambda!79903 lambda!79884)))

(declare-fun bs!444945 () Bool)

(assert (= bs!444945 (and d!644623 d!644605)))

(assert (=> bs!444945 (= lambda!79903 lambda!79899)))

(declare-fun bs!444946 () Bool)

(assert (= bs!444946 (and d!644623 d!644557)))

(assert (=> bs!444946 (= lambda!79903 lambda!79886)))

(declare-fun bs!444947 () Bool)

(assert (= bs!444947 (and d!644623 d!644539)))

(assert (=> bs!444947 (= lambda!79903 lambda!79881)))

(declare-fun bs!444948 () Bool)

(assert (= bs!444948 (and d!644623 d!644621)))

(assert (=> bs!444948 (= lambda!79903 lambda!79902)))

(declare-fun bs!444949 () Bool)

(assert (= bs!444949 (and d!644623 d!644497)))

(assert (=> bs!444949 (= lambda!79903 lambda!79851)))

(declare-fun bs!444950 () Bool)

(assert (= bs!444950 (and d!644623 d!644511)))

(assert (=> bs!444950 (= lambda!79903 lambda!79856)))

(declare-fun bs!444951 () Bool)

(assert (= bs!444951 (and d!644623 d!644613)))

(assert (=> bs!444951 (= lambda!79903 lambda!79901)))

(assert (=> d!644623 (= (inv!31930 setElem!16111) (forall!4949 (exprs!1833 setElem!16111) lambda!79903))))

(declare-fun bs!444952 () Bool)

(assert (= bs!444952 d!644623))

(declare-fun m!2585341 () Bool)

(assert (=> bs!444952 m!2585341))

(assert (=> setNonEmpty!16111 d!644623))

(declare-fun bs!444953 () Bool)

(declare-fun d!644625 () Bool)

(assert (= bs!444953 (and d!644625 d!644601)))

(declare-fun lambda!79904 () Int)

(assert (=> bs!444953 (= lambda!79904 lambda!79897)))

(declare-fun bs!444954 () Bool)

(assert (= bs!444954 (and d!644625 d!644495)))

(assert (=> bs!444954 (= lambda!79904 lambda!79850)))

(declare-fun bs!444955 () Bool)

(assert (= bs!444955 (and d!644625 d!644503)))

(assert (=> bs!444955 (= lambda!79904 lambda!79855)))

(declare-fun bs!444956 () Bool)

(assert (= bs!444956 (and d!644625 d!644623)))

(assert (=> bs!444956 (= lambda!79904 lambda!79903)))

(declare-fun bs!444957 () Bool)

(assert (= bs!444957 (and d!644625 d!644531)))

(assert (=> bs!444957 (= lambda!79904 lambda!79879)))

(declare-fun bs!444958 () Bool)

(assert (= bs!444958 (and d!644625 d!644609)))

(assert (=> bs!444958 (= lambda!79904 lambda!79900)))

(declare-fun bs!444959 () Bool)

(assert (= bs!444959 (and d!644625 d!644561)))

(assert (=> bs!444959 (= lambda!79904 lambda!79888)))

(declare-fun bs!444960 () Bool)

(assert (= bs!444960 (and d!644625 d!644551)))

(assert (=> bs!444960 (= lambda!79904 lambda!79885)))

(declare-fun bs!444961 () Bool)

(assert (= bs!444961 (and d!644625 d!644587)))

(assert (=> bs!444961 (= lambda!79904 lambda!79893)))

(declare-fun bs!444962 () Bool)

(assert (= bs!444962 (and d!644625 d!644525)))

(assert (=> bs!444962 (= lambda!79904 lambda!79877)))

(declare-fun bs!444963 () Bool)

(assert (= bs!444963 (and d!644625 d!644571)))

(assert (=> bs!444963 (= lambda!79904 lambda!79889)))

(declare-fun bs!444964 () Bool)

(assert (= bs!444964 (and d!644625 d!644559)))

(assert (=> bs!444964 (= lambda!79904 lambda!79887)))

(declare-fun bs!444965 () Bool)

(assert (= bs!444965 (and d!644625 d!644545)))

(assert (=> bs!444965 (= lambda!79904 lambda!79883)))

(declare-fun bs!444966 () Bool)

(assert (= bs!444966 (and d!644625 d!644447)))

(assert (=> bs!444966 (= lambda!79904 lambda!79844)))

(declare-fun bs!444967 () Bool)

(assert (= bs!444967 (and d!644625 d!644593)))

(assert (=> bs!444967 (= lambda!79904 lambda!79895)))

(declare-fun bs!444968 () Bool)

(assert (= bs!444968 (and d!644625 d!644543)))

(assert (=> bs!444968 (= lambda!79904 lambda!79882)))

(declare-fun bs!444969 () Bool)

(assert (= bs!444969 (and d!644625 d!644523)))

(assert (=> bs!444969 (= lambda!79904 lambda!79876)))

(declare-fun bs!444970 () Bool)

(assert (= bs!444970 (and d!644625 d!644527)))

(assert (=> bs!444970 (= lambda!79904 lambda!79878)))

(declare-fun bs!444971 () Bool)

(assert (= bs!444971 (and d!644625 d!644537)))

(assert (=> bs!444971 (= lambda!79904 lambda!79880)))

(declare-fun bs!444972 () Bool)

(assert (= bs!444972 (and d!644625 d!644589)))

(assert (=> bs!444972 (= lambda!79904 lambda!79894)))

(declare-fun bs!444973 () Bool)

(assert (= bs!444973 (and d!644625 d!644471)))

(assert (=> bs!444973 (= lambda!79904 lambda!79845)))

(declare-fun bs!444974 () Bool)

(assert (= bs!444974 (and d!644625 d!644603)))

(assert (=> bs!444974 (= lambda!79904 lambda!79898)))

(declare-fun bs!444975 () Bool)

(assert (= bs!444975 (and d!644625 d!644599)))

(assert (=> bs!444975 (= lambda!79904 lambda!79896)))

(declare-fun bs!444976 () Bool)

(assert (= bs!444976 (and d!644625 d!644549)))

(assert (=> bs!444976 (= lambda!79904 lambda!79884)))

(declare-fun bs!444977 () Bool)

(assert (= bs!444977 (and d!644625 d!644605)))

(assert (=> bs!444977 (= lambda!79904 lambda!79899)))

(declare-fun bs!444978 () Bool)

(assert (= bs!444978 (and d!644625 d!644557)))

(assert (=> bs!444978 (= lambda!79904 lambda!79886)))

(declare-fun bs!444979 () Bool)

(assert (= bs!444979 (and d!644625 d!644539)))

(assert (=> bs!444979 (= lambda!79904 lambda!79881)))

(declare-fun bs!444980 () Bool)

(assert (= bs!444980 (and d!644625 d!644621)))

(assert (=> bs!444980 (= lambda!79904 lambda!79902)))

(declare-fun bs!444981 () Bool)

(assert (= bs!444981 (and d!644625 d!644497)))

(assert (=> bs!444981 (= lambda!79904 lambda!79851)))

(declare-fun bs!444982 () Bool)

(assert (= bs!444982 (and d!644625 d!644511)))

(assert (=> bs!444982 (= lambda!79904 lambda!79856)))

(declare-fun bs!444983 () Bool)

(assert (= bs!444983 (and d!644625 d!644613)))

(assert (=> bs!444983 (= lambda!79904 lambda!79901)))

(assert (=> d!644625 (= (inv!31930 (_1!14184 (_1!14185 (h!29655 mapDefault!12980)))) (forall!4949 (exprs!1833 (_1!14184 (_1!14185 (h!29655 mapDefault!12980)))) lambda!79904))))

(declare-fun bs!444984 () Bool)

(assert (= bs!444984 d!644625))

(declare-fun m!2585343 () Bool)

(assert (=> bs!444984 m!2585343))

(assert (=> b!2138444 d!644625))

(declare-fun bs!444985 () Bool)

(declare-fun d!644627 () Bool)

(assert (= bs!444985 (and d!644627 d!644601)))

(declare-fun lambda!79905 () Int)

(assert (=> bs!444985 (= lambda!79905 lambda!79897)))

(declare-fun bs!444986 () Bool)

(assert (= bs!444986 (and d!644627 d!644495)))

(assert (=> bs!444986 (= lambda!79905 lambda!79850)))

(declare-fun bs!444987 () Bool)

(assert (= bs!444987 (and d!644627 d!644503)))

(assert (=> bs!444987 (= lambda!79905 lambda!79855)))

(declare-fun bs!444988 () Bool)

(assert (= bs!444988 (and d!644627 d!644623)))

(assert (=> bs!444988 (= lambda!79905 lambda!79903)))

(declare-fun bs!444989 () Bool)

(assert (= bs!444989 (and d!644627 d!644609)))

(assert (=> bs!444989 (= lambda!79905 lambda!79900)))

(declare-fun bs!444990 () Bool)

(assert (= bs!444990 (and d!644627 d!644561)))

(assert (=> bs!444990 (= lambda!79905 lambda!79888)))

(declare-fun bs!444991 () Bool)

(assert (= bs!444991 (and d!644627 d!644551)))

(assert (=> bs!444991 (= lambda!79905 lambda!79885)))

(declare-fun bs!444992 () Bool)

(assert (= bs!444992 (and d!644627 d!644587)))

(assert (=> bs!444992 (= lambda!79905 lambda!79893)))

(declare-fun bs!444993 () Bool)

(assert (= bs!444993 (and d!644627 d!644525)))

(assert (=> bs!444993 (= lambda!79905 lambda!79877)))

(declare-fun bs!444994 () Bool)

(assert (= bs!444994 (and d!644627 d!644571)))

(assert (=> bs!444994 (= lambda!79905 lambda!79889)))

(declare-fun bs!444995 () Bool)

(assert (= bs!444995 (and d!644627 d!644559)))

(assert (=> bs!444995 (= lambda!79905 lambda!79887)))

(declare-fun bs!444996 () Bool)

(assert (= bs!444996 (and d!644627 d!644545)))

(assert (=> bs!444996 (= lambda!79905 lambda!79883)))

(declare-fun bs!444997 () Bool)

(assert (= bs!444997 (and d!644627 d!644447)))

(assert (=> bs!444997 (= lambda!79905 lambda!79844)))

(declare-fun bs!444998 () Bool)

(assert (= bs!444998 (and d!644627 d!644593)))

(assert (=> bs!444998 (= lambda!79905 lambda!79895)))

(declare-fun bs!444999 () Bool)

(assert (= bs!444999 (and d!644627 d!644543)))

(assert (=> bs!444999 (= lambda!79905 lambda!79882)))

(declare-fun bs!445000 () Bool)

(assert (= bs!445000 (and d!644627 d!644523)))

(assert (=> bs!445000 (= lambda!79905 lambda!79876)))

(declare-fun bs!445001 () Bool)

(assert (= bs!445001 (and d!644627 d!644527)))

(assert (=> bs!445001 (= lambda!79905 lambda!79878)))

(declare-fun bs!445002 () Bool)

(assert (= bs!445002 (and d!644627 d!644537)))

(assert (=> bs!445002 (= lambda!79905 lambda!79880)))

(declare-fun bs!445003 () Bool)

(assert (= bs!445003 (and d!644627 d!644589)))

(assert (=> bs!445003 (= lambda!79905 lambda!79894)))

(declare-fun bs!445004 () Bool)

(assert (= bs!445004 (and d!644627 d!644471)))

(assert (=> bs!445004 (= lambda!79905 lambda!79845)))

(declare-fun bs!445005 () Bool)

(assert (= bs!445005 (and d!644627 d!644603)))

(assert (=> bs!445005 (= lambda!79905 lambda!79898)))

(declare-fun bs!445006 () Bool)

(assert (= bs!445006 (and d!644627 d!644625)))

(assert (=> bs!445006 (= lambda!79905 lambda!79904)))

(declare-fun bs!445007 () Bool)

(assert (= bs!445007 (and d!644627 d!644531)))

(assert (=> bs!445007 (= lambda!79905 lambda!79879)))

(declare-fun bs!445008 () Bool)

(assert (= bs!445008 (and d!644627 d!644599)))

(assert (=> bs!445008 (= lambda!79905 lambda!79896)))

(declare-fun bs!445009 () Bool)

(assert (= bs!445009 (and d!644627 d!644549)))

(assert (=> bs!445009 (= lambda!79905 lambda!79884)))

(declare-fun bs!445010 () Bool)

(assert (= bs!445010 (and d!644627 d!644605)))

(assert (=> bs!445010 (= lambda!79905 lambda!79899)))

(declare-fun bs!445011 () Bool)

(assert (= bs!445011 (and d!644627 d!644557)))

(assert (=> bs!445011 (= lambda!79905 lambda!79886)))

(declare-fun bs!445012 () Bool)

(assert (= bs!445012 (and d!644627 d!644539)))

(assert (=> bs!445012 (= lambda!79905 lambda!79881)))

(declare-fun bs!445013 () Bool)

(assert (= bs!445013 (and d!644627 d!644621)))

(assert (=> bs!445013 (= lambda!79905 lambda!79902)))

(declare-fun bs!445014 () Bool)

(assert (= bs!445014 (and d!644627 d!644497)))

(assert (=> bs!445014 (= lambda!79905 lambda!79851)))

(declare-fun bs!445015 () Bool)

(assert (= bs!445015 (and d!644627 d!644511)))

(assert (=> bs!445015 (= lambda!79905 lambda!79856)))

(declare-fun bs!445016 () Bool)

(assert (= bs!445016 (and d!644627 d!644613)))

(assert (=> bs!445016 (= lambda!79905 lambda!79901)))

(assert (=> d!644627 (= (inv!31930 setElem!16110) (forall!4949 (exprs!1833 setElem!16110) lambda!79905))))

(declare-fun bs!445017 () Bool)

(assert (= bs!445017 d!644627))

(declare-fun m!2585345 () Bool)

(assert (=> bs!445017 m!2585345))

(assert (=> setNonEmpty!16110 d!644627))

(declare-fun d!644629 () Bool)

(declare-fun res!923817 () Bool)

(declare-fun e!1365531 () Bool)

(assert (=> d!644629 (=> res!923817 e!1365531)))

(assert (=> d!644629 (= res!923817 ((_ is Nil!24253) (exprs!1833 setElem!16087)))))

(assert (=> d!644629 (= (forall!4949 (exprs!1833 setElem!16087) lambda!79845) e!1365531)))

(declare-fun b!2138685 () Bool)

(declare-fun e!1365532 () Bool)

(assert (=> b!2138685 (= e!1365531 e!1365532)))

(declare-fun res!923818 () Bool)

(assert (=> b!2138685 (=> (not res!923818) (not e!1365532))))

(assert (=> b!2138685 (= res!923818 (dynLambda!11368 lambda!79845 (h!29654 (exprs!1833 setElem!16087))))))

(declare-fun b!2138686 () Bool)

(assert (=> b!2138686 (= e!1365532 (forall!4949 (t!196865 (exprs!1833 setElem!16087)) lambda!79845))))

(assert (= (and d!644629 (not res!923817)) b!2138685))

(assert (= (and b!2138685 res!923818) b!2138686))

(declare-fun b_lambda!70607 () Bool)

(assert (=> (not b_lambda!70607) (not b!2138685)))

(declare-fun m!2585347 () Bool)

(assert (=> b!2138685 m!2585347))

(declare-fun m!2585349 () Bool)

(assert (=> b!2138686 m!2585349))

(assert (=> d!644471 d!644629))

(declare-fun bs!445018 () Bool)

(declare-fun d!644631 () Bool)

(assert (= bs!445018 (and d!644631 d!644601)))

(declare-fun lambda!79906 () Int)

(assert (=> bs!445018 (= lambda!79906 lambda!79897)))

(declare-fun bs!445019 () Bool)

(assert (= bs!445019 (and d!644631 d!644495)))

(assert (=> bs!445019 (= lambda!79906 lambda!79850)))

(declare-fun bs!445020 () Bool)

(assert (= bs!445020 (and d!644631 d!644503)))

(assert (=> bs!445020 (= lambda!79906 lambda!79855)))

(declare-fun bs!445021 () Bool)

(assert (= bs!445021 (and d!644631 d!644623)))

(assert (=> bs!445021 (= lambda!79906 lambda!79903)))

(declare-fun bs!445022 () Bool)

(assert (= bs!445022 (and d!644631 d!644609)))

(assert (=> bs!445022 (= lambda!79906 lambda!79900)))

(declare-fun bs!445023 () Bool)

(assert (= bs!445023 (and d!644631 d!644561)))

(assert (=> bs!445023 (= lambda!79906 lambda!79888)))

(declare-fun bs!445024 () Bool)

(assert (= bs!445024 (and d!644631 d!644627)))

(assert (=> bs!445024 (= lambda!79906 lambda!79905)))

(declare-fun bs!445025 () Bool)

(assert (= bs!445025 (and d!644631 d!644551)))

(assert (=> bs!445025 (= lambda!79906 lambda!79885)))

(declare-fun bs!445026 () Bool)

(assert (= bs!445026 (and d!644631 d!644587)))

(assert (=> bs!445026 (= lambda!79906 lambda!79893)))

(declare-fun bs!445027 () Bool)

(assert (= bs!445027 (and d!644631 d!644525)))

(assert (=> bs!445027 (= lambda!79906 lambda!79877)))

(declare-fun bs!445028 () Bool)

(assert (= bs!445028 (and d!644631 d!644571)))

(assert (=> bs!445028 (= lambda!79906 lambda!79889)))

(declare-fun bs!445029 () Bool)

(assert (= bs!445029 (and d!644631 d!644559)))

(assert (=> bs!445029 (= lambda!79906 lambda!79887)))

(declare-fun bs!445030 () Bool)

(assert (= bs!445030 (and d!644631 d!644545)))

(assert (=> bs!445030 (= lambda!79906 lambda!79883)))

(declare-fun bs!445031 () Bool)

(assert (= bs!445031 (and d!644631 d!644447)))

(assert (=> bs!445031 (= lambda!79906 lambda!79844)))

(declare-fun bs!445032 () Bool)

(assert (= bs!445032 (and d!644631 d!644593)))

(assert (=> bs!445032 (= lambda!79906 lambda!79895)))

(declare-fun bs!445033 () Bool)

(assert (= bs!445033 (and d!644631 d!644543)))

(assert (=> bs!445033 (= lambda!79906 lambda!79882)))

(declare-fun bs!445034 () Bool)

(assert (= bs!445034 (and d!644631 d!644523)))

(assert (=> bs!445034 (= lambda!79906 lambda!79876)))

(declare-fun bs!445035 () Bool)

(assert (= bs!445035 (and d!644631 d!644527)))

(assert (=> bs!445035 (= lambda!79906 lambda!79878)))

(declare-fun bs!445036 () Bool)

(assert (= bs!445036 (and d!644631 d!644537)))

(assert (=> bs!445036 (= lambda!79906 lambda!79880)))

(declare-fun bs!445037 () Bool)

(assert (= bs!445037 (and d!644631 d!644589)))

(assert (=> bs!445037 (= lambda!79906 lambda!79894)))

(declare-fun bs!445038 () Bool)

(assert (= bs!445038 (and d!644631 d!644471)))

(assert (=> bs!445038 (= lambda!79906 lambda!79845)))

(declare-fun bs!445039 () Bool)

(assert (= bs!445039 (and d!644631 d!644603)))

(assert (=> bs!445039 (= lambda!79906 lambda!79898)))

(declare-fun bs!445040 () Bool)

(assert (= bs!445040 (and d!644631 d!644625)))

(assert (=> bs!445040 (= lambda!79906 lambda!79904)))

(declare-fun bs!445041 () Bool)

(assert (= bs!445041 (and d!644631 d!644531)))

(assert (=> bs!445041 (= lambda!79906 lambda!79879)))

(declare-fun bs!445042 () Bool)

(assert (= bs!445042 (and d!644631 d!644599)))

(assert (=> bs!445042 (= lambda!79906 lambda!79896)))

(declare-fun bs!445043 () Bool)

(assert (= bs!445043 (and d!644631 d!644549)))

(assert (=> bs!445043 (= lambda!79906 lambda!79884)))

(declare-fun bs!445044 () Bool)

(assert (= bs!445044 (and d!644631 d!644605)))

(assert (=> bs!445044 (= lambda!79906 lambda!79899)))

(declare-fun bs!445045 () Bool)

(assert (= bs!445045 (and d!644631 d!644557)))

(assert (=> bs!445045 (= lambda!79906 lambda!79886)))

(declare-fun bs!445046 () Bool)

(assert (= bs!445046 (and d!644631 d!644539)))

(assert (=> bs!445046 (= lambda!79906 lambda!79881)))

(declare-fun bs!445047 () Bool)

(assert (= bs!445047 (and d!644631 d!644621)))

(assert (=> bs!445047 (= lambda!79906 lambda!79902)))

(declare-fun bs!445048 () Bool)

(assert (= bs!445048 (and d!644631 d!644497)))

(assert (=> bs!445048 (= lambda!79906 lambda!79851)))

(declare-fun bs!445049 () Bool)

(assert (= bs!445049 (and d!644631 d!644511)))

(assert (=> bs!445049 (= lambda!79906 lambda!79856)))

(declare-fun bs!445050 () Bool)

(assert (= bs!445050 (and d!644631 d!644613)))

(assert (=> bs!445050 (= lambda!79906 lambda!79901)))

(assert (=> d!644631 (= (inv!31930 setElem!16120) (forall!4949 (exprs!1833 setElem!16120) lambda!79906))))

(declare-fun bs!445051 () Bool)

(assert (= bs!445051 d!644631))

(declare-fun m!2585351 () Bool)

(assert (=> bs!445051 m!2585351))

(assert (=> setNonEmpty!16120 d!644631))

(declare-fun d!644633 () Bool)

(declare-fun res!923819 () Bool)

(declare-fun e!1365533 () Bool)

(assert (=> d!644633 (=> (not res!923819) (not e!1365533))))

(assert (=> d!644633 (= res!923819 (= (csize!16032 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) (+ (size!18975 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) (size!18975 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))))

(assert (=> d!644633 (= (inv!31932 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) e!1365533)))

(declare-fun b!2138687 () Bool)

(declare-fun res!923820 () Bool)

(assert (=> b!2138687 (=> (not res!923820) (not e!1365533))))

(assert (=> b!2138687 (= res!923820 (and (not (= (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) Empty!7901)) (not (= (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) Empty!7901))))))

(declare-fun b!2138688 () Bool)

(declare-fun res!923821 () Bool)

(assert (=> b!2138688 (=> (not res!923821) (not e!1365533))))

(assert (=> b!2138688 (= res!923821 (= (cheight!8112 (c!340410 (totalInput!3097 cacheFurthestNullable!114))) (+ (max!0 (height!1237 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) (height!1237 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) 1)))))

(declare-fun b!2138689 () Bool)

(assert (=> b!2138689 (= e!1365533 (<= 0 (cheight!8112 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))))

(assert (= (and d!644633 res!923819) b!2138687))

(assert (= (and b!2138687 res!923820) b!2138688))

(assert (= (and b!2138688 res!923821) b!2138689))

(declare-fun m!2585353 () Bool)

(assert (=> d!644633 m!2585353))

(declare-fun m!2585355 () Bool)

(assert (=> d!644633 m!2585355))

(assert (=> b!2138688 m!2585315))

(assert (=> b!2138688 m!2585317))

(assert (=> b!2138688 m!2585315))

(assert (=> b!2138688 m!2585317))

(declare-fun m!2585357 () Bool)

(assert (=> b!2138688 m!2585357))

(assert (=> b!2138332 d!644633))

(declare-fun d!644635 () Bool)

(assert (=> d!644635 (= (inv!31934 (xs!10843 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) (<= (size!18974 (innerList!7961 (xs!10843 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) 2147483647))))

(declare-fun bs!445052 () Bool)

(assert (= bs!445052 d!644635))

(declare-fun m!2585359 () Bool)

(assert (=> bs!445052 m!2585359))

(assert (=> b!2138442 d!644635))

(assert (=> b!2138288 d!644475))

(assert (=> b!2138370 d!644555))

(declare-fun d!644637 () Bool)

(assert (=> d!644637 (= (inv!31934 (xs!10843 (c!340410 totalInput!851))) (<= (size!18974 (innerList!7961 (xs!10843 (c!340410 totalInput!851)))) 2147483647))))

(declare-fun bs!445053 () Bool)

(assert (= bs!445053 d!644637))

(declare-fun m!2585361 () Bool)

(assert (=> bs!445053 m!2585361))

(assert (=> b!2138537 d!644637))

(declare-fun bs!445054 () Bool)

(declare-fun d!644639 () Bool)

(assert (= bs!445054 (and d!644639 d!644601)))

(declare-fun lambda!79907 () Int)

(assert (=> bs!445054 (= lambda!79907 lambda!79897)))

(declare-fun bs!445055 () Bool)

(assert (= bs!445055 (and d!644639 d!644495)))

(assert (=> bs!445055 (= lambda!79907 lambda!79850)))

(declare-fun bs!445056 () Bool)

(assert (= bs!445056 (and d!644639 d!644503)))

(assert (=> bs!445056 (= lambda!79907 lambda!79855)))

(declare-fun bs!445057 () Bool)

(assert (= bs!445057 (and d!644639 d!644623)))

(assert (=> bs!445057 (= lambda!79907 lambda!79903)))

(declare-fun bs!445058 () Bool)

(assert (= bs!445058 (and d!644639 d!644609)))

(assert (=> bs!445058 (= lambda!79907 lambda!79900)))

(declare-fun bs!445059 () Bool)

(assert (= bs!445059 (and d!644639 d!644561)))

(assert (=> bs!445059 (= lambda!79907 lambda!79888)))

(declare-fun bs!445060 () Bool)

(assert (= bs!445060 (and d!644639 d!644627)))

(assert (=> bs!445060 (= lambda!79907 lambda!79905)))

(declare-fun bs!445061 () Bool)

(assert (= bs!445061 (and d!644639 d!644551)))

(assert (=> bs!445061 (= lambda!79907 lambda!79885)))

(declare-fun bs!445062 () Bool)

(assert (= bs!445062 (and d!644639 d!644587)))

(assert (=> bs!445062 (= lambda!79907 lambda!79893)))

(declare-fun bs!445063 () Bool)

(assert (= bs!445063 (and d!644639 d!644525)))

(assert (=> bs!445063 (= lambda!79907 lambda!79877)))

(declare-fun bs!445064 () Bool)

(assert (= bs!445064 (and d!644639 d!644571)))

(assert (=> bs!445064 (= lambda!79907 lambda!79889)))

(declare-fun bs!445065 () Bool)

(assert (= bs!445065 (and d!644639 d!644559)))

(assert (=> bs!445065 (= lambda!79907 lambda!79887)))

(declare-fun bs!445066 () Bool)

(assert (= bs!445066 (and d!644639 d!644545)))

(assert (=> bs!445066 (= lambda!79907 lambda!79883)))

(declare-fun bs!445067 () Bool)

(assert (= bs!445067 (and d!644639 d!644447)))

(assert (=> bs!445067 (= lambda!79907 lambda!79844)))

(declare-fun bs!445068 () Bool)

(assert (= bs!445068 (and d!644639 d!644593)))

(assert (=> bs!445068 (= lambda!79907 lambda!79895)))

(declare-fun bs!445069 () Bool)

(assert (= bs!445069 (and d!644639 d!644543)))

(assert (=> bs!445069 (= lambda!79907 lambda!79882)))

(declare-fun bs!445070 () Bool)

(assert (= bs!445070 (and d!644639 d!644523)))

(assert (=> bs!445070 (= lambda!79907 lambda!79876)))

(declare-fun bs!445071 () Bool)

(assert (= bs!445071 (and d!644639 d!644527)))

(assert (=> bs!445071 (= lambda!79907 lambda!79878)))

(declare-fun bs!445072 () Bool)

(assert (= bs!445072 (and d!644639 d!644537)))

(assert (=> bs!445072 (= lambda!79907 lambda!79880)))

(declare-fun bs!445073 () Bool)

(assert (= bs!445073 (and d!644639 d!644589)))

(assert (=> bs!445073 (= lambda!79907 lambda!79894)))

(declare-fun bs!445074 () Bool)

(assert (= bs!445074 (and d!644639 d!644631)))

(assert (=> bs!445074 (= lambda!79907 lambda!79906)))

(declare-fun bs!445075 () Bool)

(assert (= bs!445075 (and d!644639 d!644471)))

(assert (=> bs!445075 (= lambda!79907 lambda!79845)))

(declare-fun bs!445076 () Bool)

(assert (= bs!445076 (and d!644639 d!644603)))

(assert (=> bs!445076 (= lambda!79907 lambda!79898)))

(declare-fun bs!445077 () Bool)

(assert (= bs!445077 (and d!644639 d!644625)))

(assert (=> bs!445077 (= lambda!79907 lambda!79904)))

(declare-fun bs!445078 () Bool)

(assert (= bs!445078 (and d!644639 d!644531)))

(assert (=> bs!445078 (= lambda!79907 lambda!79879)))

(declare-fun bs!445079 () Bool)

(assert (= bs!445079 (and d!644639 d!644599)))

(assert (=> bs!445079 (= lambda!79907 lambda!79896)))

(declare-fun bs!445080 () Bool)

(assert (= bs!445080 (and d!644639 d!644549)))

(assert (=> bs!445080 (= lambda!79907 lambda!79884)))

(declare-fun bs!445081 () Bool)

(assert (= bs!445081 (and d!644639 d!644605)))

(assert (=> bs!445081 (= lambda!79907 lambda!79899)))

(declare-fun bs!445082 () Bool)

(assert (= bs!445082 (and d!644639 d!644557)))

(assert (=> bs!445082 (= lambda!79907 lambda!79886)))

(declare-fun bs!445083 () Bool)

(assert (= bs!445083 (and d!644639 d!644539)))

(assert (=> bs!445083 (= lambda!79907 lambda!79881)))

(declare-fun bs!445084 () Bool)

(assert (= bs!445084 (and d!644639 d!644621)))

(assert (=> bs!445084 (= lambda!79907 lambda!79902)))

(declare-fun bs!445085 () Bool)

(assert (= bs!445085 (and d!644639 d!644497)))

(assert (=> bs!445085 (= lambda!79907 lambda!79851)))

(declare-fun bs!445086 () Bool)

(assert (= bs!445086 (and d!644639 d!644511)))

(assert (=> bs!445086 (= lambda!79907 lambda!79856)))

(declare-fun bs!445087 () Bool)

(assert (= bs!445087 (and d!644639 d!644613)))

(assert (=> bs!445087 (= lambda!79907 lambda!79901)))

(assert (=> d!644639 (= (inv!31930 setElem!16125) (forall!4949 (exprs!1833 setElem!16125) lambda!79907))))

(declare-fun bs!445088 () Bool)

(assert (= bs!445088 d!644639))

(declare-fun m!2585363 () Bool)

(assert (=> bs!445088 m!2585363))

(assert (=> setNonEmpty!16125 d!644639))

(declare-fun b!2138690 () Bool)

(declare-fun e!1365534 () Bool)

(declare-fun tp!660253 () Bool)

(declare-fun tp!660254 () Bool)

(assert (=> b!2138690 (= e!1365534 (and tp!660253 tp!660254))))

(assert (=> b!2138462 (= tp!660151 e!1365534)))

(assert (= (and b!2138462 ((_ is Cons!24253) (exprs!1833 setElem!16109))) b!2138690))

(declare-fun b!2138695 () Bool)

(declare-fun e!1365537 () Bool)

(declare-fun tp!660257 () Bool)

(assert (=> b!2138695 (= e!1365537 (and tp_is_empty!9505 tp!660257))))

(assert (=> b!2138443 (= tp!660129 e!1365537)))

(assert (= (and b!2138443 ((_ is Cons!24255) (innerList!7961 (xs!10843 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))))) b!2138695))

(declare-fun b!2138696 () Bool)

(declare-fun e!1365538 () Bool)

(declare-fun tp!660258 () Bool)

(declare-fun tp!660259 () Bool)

(assert (=> b!2138696 (= e!1365538 (and tp!660258 tp!660259))))

(assert (=> b!2138514 (= tp!660226 e!1365538)))

(assert (= (and b!2138514 ((_ is Cons!24253) (exprs!1833 setElem!16126))) b!2138696))

(declare-fun b!2138697 () Bool)

(declare-fun e!1365539 () Bool)

(declare-fun tp!660260 () Bool)

(assert (=> b!2138697 (= e!1365539 (and tp_is_empty!9505 tp!660260))))

(assert (=> b!2138538 (= tp!660252 e!1365539)))

(assert (= (and b!2138538 ((_ is Cons!24255) (innerList!7961 (xs!10843 (c!340410 totalInput!851))))) b!2138697))

(declare-fun condSetEmpty!16132 () Bool)

(assert (=> setNonEmpty!16093 (= condSetEmpty!16132 (= setRest!16093 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16132 () Bool)

(assert (=> setNonEmpty!16093 (= tp!660088 setRes!16132)))

(declare-fun setIsEmpty!16132 () Bool)

(assert (=> setIsEmpty!16132 setRes!16132))

(declare-fun tp!660262 () Bool)

(declare-fun e!1365540 () Bool)

(declare-fun setNonEmpty!16132 () Bool)

(declare-fun setElem!16132 () Context!2666)

(assert (=> setNonEmpty!16132 (= setRes!16132 (and tp!660262 (inv!31930 setElem!16132) e!1365540))))

(declare-fun setRest!16132 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16132 (= setRest!16093 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16132 true) setRest!16132))))

(declare-fun b!2138698 () Bool)

(declare-fun tp!660261 () Bool)

(assert (=> b!2138698 (= e!1365540 tp!660261)))

(assert (= (and setNonEmpty!16093 condSetEmpty!16132) setIsEmpty!16132))

(assert (= (and setNonEmpty!16093 (not condSetEmpty!16132)) setNonEmpty!16132))

(assert (= setNonEmpty!16132 b!2138698))

(declare-fun m!2585365 () Bool)

(assert (=> setNonEmpty!16132 m!2585365))

(declare-fun tp!660264 () Bool)

(declare-fun e!1365543 () Bool)

(declare-fun b!2138699 () Bool)

(declare-fun e!1365541 () Bool)

(declare-fun setRes!16133 () Bool)

(assert (=> b!2138699 (= e!1365543 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 (t!196866 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))))))) e!1365541 tp_is_empty!9505 setRes!16133 tp!660264))))

(declare-fun condSetEmpty!16133 () Bool)

(assert (=> b!2138699 (= condSetEmpty!16133 (= (_2!14185 (h!29655 (t!196866 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16133 () Bool)

(assert (=> setIsEmpty!16133 setRes!16133))

(declare-fun b!2138700 () Bool)

(declare-fun tp!660266 () Bool)

(assert (=> b!2138700 (= e!1365541 tp!660266)))

(declare-fun setNonEmpty!16133 () Bool)

(declare-fun e!1365542 () Bool)

(declare-fun tp!660263 () Bool)

(declare-fun setElem!16133 () Context!2666)

(assert (=> setNonEmpty!16133 (= setRes!16133 (and tp!660263 (inv!31930 setElem!16133) e!1365542))))

(declare-fun setRest!16133 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16133 (= (_2!14185 (h!29655 (t!196866 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16133 true) setRest!16133))))

(declare-fun b!2138701 () Bool)

(declare-fun tp!660265 () Bool)

(assert (=> b!2138701 (= e!1365542 tp!660265)))

(assert (=> b!2138430 (= tp!660118 e!1365543)))

(assert (= b!2138699 b!2138700))

(assert (= (and b!2138699 condSetEmpty!16133) setIsEmpty!16133))

(assert (= (and b!2138699 (not condSetEmpty!16133)) setNonEmpty!16133))

(assert (= setNonEmpty!16133 b!2138701))

(assert (= (and b!2138430 ((_ is Cons!24254) (t!196866 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))))) b!2138699))

(declare-fun m!2585367 () Bool)

(assert (=> b!2138699 m!2585367))

(declare-fun m!2585369 () Bool)

(assert (=> setNonEmpty!16133 m!2585369))

(declare-fun b!2138702 () Bool)

(declare-fun e!1365544 () Bool)

(declare-fun tp!660267 () Bool)

(declare-fun tp!660268 () Bool)

(assert (=> b!2138702 (= e!1365544 (and tp!660267 tp!660268))))

(assert (=> b!2138488 (= tp!660188 e!1365544)))

(assert (= (and b!2138488 ((_ is Cons!24253) (exprs!1833 setElem!16119))) b!2138702))

(declare-fun b!2138703 () Bool)

(declare-fun e!1365545 () Bool)

(declare-fun tp!660269 () Bool)

(declare-fun tp!660270 () Bool)

(assert (=> b!2138703 (= e!1365545 (and tp!660269 tp!660270))))

(assert (=> b!2138403 (= tp!660080 e!1365545)))

(assert (= (and b!2138403 ((_ is Cons!24253) (exprs!1833 (_2!14188 (_1!14189 (h!29658 mapValue!12984)))))) b!2138703))

(declare-fun b!2138704 () Bool)

(declare-fun e!1365548 () Bool)

(declare-fun e!1365546 () Bool)

(declare-fun setRes!16134 () Bool)

(declare-fun tp!660272 () Bool)

(assert (=> b!2138704 (= e!1365548 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 (t!196866 mapDefault!12987))))) e!1365546 tp_is_empty!9505 setRes!16134 tp!660272))))

(declare-fun condSetEmpty!16134 () Bool)

(assert (=> b!2138704 (= condSetEmpty!16134 (= (_2!14185 (h!29655 (t!196866 mapDefault!12987))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16134 () Bool)

(assert (=> setIsEmpty!16134 setRes!16134))

(declare-fun b!2138705 () Bool)

(declare-fun tp!660274 () Bool)

(assert (=> b!2138705 (= e!1365546 tp!660274)))

(declare-fun setNonEmpty!16134 () Bool)

(declare-fun setElem!16134 () Context!2666)

(declare-fun tp!660271 () Bool)

(declare-fun e!1365547 () Bool)

(assert (=> setNonEmpty!16134 (= setRes!16134 (and tp!660271 (inv!31930 setElem!16134) e!1365547))))

(declare-fun setRest!16134 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16134 (= (_2!14185 (h!29655 (t!196866 mapDefault!12987))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16134 true) setRest!16134))))

(declare-fun b!2138706 () Bool)

(declare-fun tp!660273 () Bool)

(assert (=> b!2138706 (= e!1365547 tp!660273)))

(assert (=> b!2138487 (= tp!660195 e!1365548)))

(assert (= b!2138704 b!2138705))

(assert (= (and b!2138704 condSetEmpty!16134) setIsEmpty!16134))

(assert (= (and b!2138704 (not condSetEmpty!16134)) setNonEmpty!16134))

(assert (= setNonEmpty!16134 b!2138706))

(assert (= (and b!2138487 ((_ is Cons!24254) (t!196866 mapDefault!12987))) b!2138704))

(declare-fun m!2585371 () Bool)

(assert (=> b!2138704 m!2585371))

(declare-fun m!2585373 () Bool)

(assert (=> setNonEmpty!16134 m!2585373))

(declare-fun b!2138718 () Bool)

(declare-fun e!1365551 () Bool)

(declare-fun tp!660289 () Bool)

(declare-fun tp!660288 () Bool)

(assert (=> b!2138718 (= e!1365551 (and tp!660289 tp!660288))))

(declare-fun b!2138717 () Bool)

(assert (=> b!2138717 (= e!1365551 tp_is_empty!9505)))

(declare-fun b!2138720 () Bool)

(declare-fun tp!660287 () Bool)

(declare-fun tp!660285 () Bool)

(assert (=> b!2138720 (= e!1365551 (and tp!660287 tp!660285))))

(declare-fun b!2138719 () Bool)

(declare-fun tp!660286 () Bool)

(assert (=> b!2138719 (= e!1365551 tp!660286)))

(assert (=> b!2138405 (= tp!660081 e!1365551)))

(assert (= (and b!2138405 ((_ is ElementMatch!5763) (_1!14188 (_1!14189 (h!29658 mapDefault!12984))))) b!2138717))

(assert (= (and b!2138405 ((_ is Concat!10065) (_1!14188 (_1!14189 (h!29658 mapDefault!12984))))) b!2138718))

(assert (= (and b!2138405 ((_ is Star!5763) (_1!14188 (_1!14189 (h!29658 mapDefault!12984))))) b!2138719))

(assert (= (and b!2138405 ((_ is Union!5763) (_1!14188 (_1!14189 (h!29658 mapDefault!12984))))) b!2138720))

(declare-fun b!2138721 () Bool)

(declare-fun e!1365554 () Bool)

(declare-fun tp!660291 () Bool)

(declare-fun setRes!16135 () Bool)

(declare-fun tp!660290 () Bool)

(declare-fun e!1365553 () Bool)

(assert (=> b!2138721 (= e!1365554 (and tp!660291 (inv!31930 (_2!14188 (_1!14189 (h!29658 (t!196869 mapDefault!12984))))) e!1365553 tp_is_empty!9505 setRes!16135 tp!660290))))

(declare-fun condSetEmpty!16135 () Bool)

(assert (=> b!2138721 (= condSetEmpty!16135 (= (_2!14189 (h!29658 (t!196869 mapDefault!12984))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun tp!660294 () Bool)

(declare-fun e!1365552 () Bool)

(declare-fun setElem!16135 () Context!2666)

(declare-fun setNonEmpty!16135 () Bool)

(assert (=> setNonEmpty!16135 (= setRes!16135 (and tp!660294 (inv!31930 setElem!16135) e!1365552))))

(declare-fun setRest!16135 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16135 (= (_2!14189 (h!29658 (t!196869 mapDefault!12984))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16135 true) setRest!16135))))

(declare-fun setIsEmpty!16135 () Bool)

(assert (=> setIsEmpty!16135 setRes!16135))

(declare-fun b!2138722 () Bool)

(declare-fun tp!660293 () Bool)

(assert (=> b!2138722 (= e!1365553 tp!660293)))

(assert (=> b!2138405 (= tp!660089 e!1365554)))

(declare-fun b!2138723 () Bool)

(declare-fun tp!660292 () Bool)

(assert (=> b!2138723 (= e!1365552 tp!660292)))

(assert (= b!2138721 b!2138722))

(assert (= (and b!2138721 condSetEmpty!16135) setIsEmpty!16135))

(assert (= (and b!2138721 (not condSetEmpty!16135)) setNonEmpty!16135))

(assert (= setNonEmpty!16135 b!2138723))

(assert (= (and b!2138405 ((_ is Cons!24257) (t!196869 mapDefault!12984))) b!2138721))

(declare-fun m!2585375 () Bool)

(assert (=> b!2138721 m!2585375))

(declare-fun m!2585377 () Bool)

(assert (=> setNonEmpty!16135 m!2585377))

(declare-fun b!2138724 () Bool)

(declare-fun e!1365555 () Bool)

(declare-fun tp!660295 () Bool)

(declare-fun tp!660296 () Bool)

(assert (=> b!2138724 (= e!1365555 (and tp!660295 tp!660296))))

(assert (=> b!2138431 (= tp!660120 e!1365555)))

(assert (= (and b!2138431 ((_ is Cons!24253) (exprs!1833 (_1!14184 (_1!14185 (h!29655 (minValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))))))) b!2138724))

(declare-fun setIsEmpty!16136 () Bool)

(declare-fun setRes!16136 () Bool)

(assert (=> setIsEmpty!16136 setRes!16136))

(declare-fun tp!660298 () Bool)

(declare-fun e!1365557 () Bool)

(declare-fun setElem!16136 () Context!2666)

(declare-fun setNonEmpty!16136 () Bool)

(assert (=> setNonEmpty!16136 (= setRes!16136 (and tp!660298 (inv!31930 setElem!16136) e!1365557))))

(declare-fun setRest!16136 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16136 (= (_1!14186 (_1!14187 (h!29657 (t!196868 (minValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114)))))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16136 true) setRest!16136))))

(declare-fun b!2138725 () Bool)

(declare-fun e!1365556 () Bool)

(declare-fun tp!660299 () Bool)

(assert (=> b!2138725 (= e!1365556 (and setRes!16136 tp!660299))))

(declare-fun condSetEmpty!16136 () Bool)

(assert (=> b!2138725 (= condSetEmpty!16136 (= (_1!14186 (_1!14187 (h!29657 (t!196868 (minValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114)))))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138726 () Bool)

(declare-fun tp!660297 () Bool)

(assert (=> b!2138726 (= e!1365557 tp!660297)))

(assert (=> b!2138471 (= tp!660169 e!1365556)))

(assert (= (and b!2138725 condSetEmpty!16136) setIsEmpty!16136))

(assert (= (and b!2138725 (not condSetEmpty!16136)) setNonEmpty!16136))

(assert (= setNonEmpty!16136 b!2138726))

(assert (= (and b!2138471 ((_ is Cons!24256) (t!196868 (minValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))))) b!2138725))

(declare-fun m!2585379 () Bool)

(assert (=> setNonEmpty!16136 m!2585379))

(declare-fun b!2138727 () Bool)

(declare-fun e!1365558 () Bool)

(declare-fun tp!660300 () Bool)

(declare-fun tp!660301 () Bool)

(assert (=> b!2138727 (= e!1365558 (and tp!660300 tp!660301))))

(assert (=> b!2138406 (= tp!660087 e!1365558)))

(assert (= (and b!2138406 ((_ is Cons!24253) (exprs!1833 (_2!14188 (_1!14189 (h!29658 mapDefault!12984)))))) b!2138727))

(declare-fun condSetEmpty!16137 () Bool)

(assert (=> setNonEmpty!16100 (= condSetEmpty!16137 (= setRest!16100 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16137 () Bool)

(assert (=> setNonEmpty!16100 (= tp!660113 setRes!16137)))

(declare-fun setIsEmpty!16137 () Bool)

(assert (=> setIsEmpty!16137 setRes!16137))

(declare-fun e!1365559 () Bool)

(declare-fun setElem!16137 () Context!2666)

(declare-fun tp!660303 () Bool)

(declare-fun setNonEmpty!16137 () Bool)

(assert (=> setNonEmpty!16137 (= setRes!16137 (and tp!660303 (inv!31930 setElem!16137) e!1365559))))

(declare-fun setRest!16137 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16137 (= setRest!16100 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16137 true) setRest!16137))))

(declare-fun b!2138728 () Bool)

(declare-fun tp!660302 () Bool)

(assert (=> b!2138728 (= e!1365559 tp!660302)))

(assert (= (and setNonEmpty!16100 condSetEmpty!16137) setIsEmpty!16137))

(assert (= (and setNonEmpty!16100 (not condSetEmpty!16137)) setNonEmpty!16137))

(assert (= setNonEmpty!16137 b!2138728))

(declare-fun m!2585381 () Bool)

(assert (=> setNonEmpty!16137 m!2585381))

(declare-fun b!2138729 () Bool)

(declare-fun e!1365560 () Bool)

(declare-fun tp!660304 () Bool)

(declare-fun tp!660305 () Bool)

(assert (=> b!2138729 (= e!1365560 (and tp!660304 tp!660305))))

(assert (=> b!2138432 (= tp!660119 e!1365560)))

(assert (= (and b!2138432 ((_ is Cons!24253) (exprs!1833 setElem!16101))) b!2138729))

(declare-fun condSetEmpty!16138 () Bool)

(assert (=> setNonEmpty!16113 (= condSetEmpty!16138 (= setRest!16113 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16138 () Bool)

(assert (=> setNonEmpty!16113 (= tp!660168 setRes!16138)))

(declare-fun setIsEmpty!16138 () Bool)

(assert (=> setIsEmpty!16138 setRes!16138))

(declare-fun e!1365561 () Bool)

(declare-fun setNonEmpty!16138 () Bool)

(declare-fun setElem!16138 () Context!2666)

(declare-fun tp!660307 () Bool)

(assert (=> setNonEmpty!16138 (= setRes!16138 (and tp!660307 (inv!31930 setElem!16138) e!1365561))))

(declare-fun setRest!16138 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16138 (= setRest!16113 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16138 true) setRest!16138))))

(declare-fun b!2138730 () Bool)

(declare-fun tp!660306 () Bool)

(assert (=> b!2138730 (= e!1365561 tp!660306)))

(assert (= (and setNonEmpty!16113 condSetEmpty!16138) setIsEmpty!16138))

(assert (= (and setNonEmpty!16113 (not condSetEmpty!16138)) setNonEmpty!16138))

(assert (= setNonEmpty!16138 b!2138730))

(declare-fun m!2585383 () Bool)

(assert (=> setNonEmpty!16138 m!2585383))

(declare-fun e!1365562 () Bool)

(declare-fun b!2138731 () Bool)

(declare-fun setRes!16139 () Bool)

(declare-fun tp!660309 () Bool)

(declare-fun e!1365564 () Bool)

(assert (=> b!2138731 (= e!1365564 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 (t!196866 mapValue!12987))))) e!1365562 tp_is_empty!9505 setRes!16139 tp!660309))))

(declare-fun condSetEmpty!16139 () Bool)

(assert (=> b!2138731 (= condSetEmpty!16139 (= (_2!14185 (h!29655 (t!196866 mapValue!12987))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16139 () Bool)

(assert (=> setIsEmpty!16139 setRes!16139))

(declare-fun b!2138732 () Bool)

(declare-fun tp!660311 () Bool)

(assert (=> b!2138732 (= e!1365562 tp!660311)))

(declare-fun e!1365563 () Bool)

(declare-fun tp!660308 () Bool)

(declare-fun setElem!16139 () Context!2666)

(declare-fun setNonEmpty!16139 () Bool)

(assert (=> setNonEmpty!16139 (= setRes!16139 (and tp!660308 (inv!31930 setElem!16139) e!1365563))))

(declare-fun setRest!16139 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16139 (= (_2!14185 (h!29655 (t!196866 mapValue!12987))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16139 true) setRest!16139))))

(declare-fun b!2138733 () Bool)

(declare-fun tp!660310 () Bool)

(assert (=> b!2138733 (= e!1365563 tp!660310)))

(assert (=> b!2138490 (= tp!660193 e!1365564)))

(assert (= b!2138731 b!2138732))

(assert (= (and b!2138731 condSetEmpty!16139) setIsEmpty!16139))

(assert (= (and b!2138731 (not condSetEmpty!16139)) setNonEmpty!16139))

(assert (= setNonEmpty!16139 b!2138733))

(assert (= (and b!2138490 ((_ is Cons!24254) (t!196866 mapValue!12987))) b!2138731))

(declare-fun m!2585385 () Bool)

(assert (=> b!2138731 m!2585385))

(declare-fun m!2585387 () Bool)

(assert (=> setNonEmpty!16139 m!2585387))

(declare-fun b!2138734 () Bool)

(declare-fun e!1365565 () Bool)

(declare-fun tp!660312 () Bool)

(declare-fun tp!660313 () Bool)

(assert (=> b!2138734 (= e!1365565 (and tp!660312 tp!660313))))

(assert (=> b!2138492 (= tp!660196 e!1365565)))

(assert (= (and b!2138492 ((_ is Cons!24253) (exprs!1833 (_1!14184 (_1!14185 (h!29655 mapDefault!12987)))))) b!2138734))

(declare-fun condSetEmpty!16140 () Bool)

(assert (=> setNonEmpty!16097 (= condSetEmpty!16140 (= setRest!16097 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16140 () Bool)

(assert (=> setNonEmpty!16097 (= tp!660104 setRes!16140)))

(declare-fun setIsEmpty!16140 () Bool)

(assert (=> setIsEmpty!16140 setRes!16140))

(declare-fun setElem!16140 () Context!2666)

(declare-fun e!1365566 () Bool)

(declare-fun setNonEmpty!16140 () Bool)

(declare-fun tp!660315 () Bool)

(assert (=> setNonEmpty!16140 (= setRes!16140 (and tp!660315 (inv!31930 setElem!16140) e!1365566))))

(declare-fun setRest!16140 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16140 (= setRest!16097 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16140 true) setRest!16140))))

(declare-fun b!2138735 () Bool)

(declare-fun tp!660314 () Bool)

(assert (=> b!2138735 (= e!1365566 tp!660314)))

(assert (= (and setNonEmpty!16097 condSetEmpty!16140) setIsEmpty!16140))

(assert (= (and setNonEmpty!16097 (not condSetEmpty!16140)) setNonEmpty!16140))

(assert (= setNonEmpty!16140 b!2138735))

(declare-fun m!2585389 () Bool)

(assert (=> setNonEmpty!16140 m!2585389))

(declare-fun b!2138736 () Bool)

(declare-fun e!1365567 () Bool)

(declare-fun tp!660316 () Bool)

(declare-fun tp!660317 () Bool)

(assert (=> b!2138736 (= e!1365567 (and tp!660316 tp!660317))))

(assert (=> b!2138417 (= tp!660103 e!1365567)))

(assert (= (and b!2138417 ((_ is Cons!24253) (exprs!1833 (_2!14188 (_1!14189 (h!29658 mapValue!12979)))))) b!2138736))

(declare-fun b!2138737 () Bool)

(declare-fun e!1365568 () Bool)

(declare-fun tp!660318 () Bool)

(declare-fun tp!660319 () Bool)

(assert (=> b!2138737 (= e!1365568 (and tp!660318 tp!660319))))

(assert (=> b!2138494 (= tp!660200 e!1365568)))

(assert (= (and b!2138494 ((_ is Cons!24253) (exprs!1833 (_1!14184 (_1!14185 (h!29655 mapValue!12980)))))) b!2138737))

(declare-fun setIsEmpty!16141 () Bool)

(declare-fun setRes!16142 () Bool)

(assert (=> setIsEmpty!16141 setRes!16142))

(declare-fun b!2138738 () Bool)

(declare-fun e!1365571 () Bool)

(declare-fun tp!660320 () Bool)

(assert (=> b!2138738 (= e!1365571 tp!660320)))

(declare-fun condMapEmpty!12991 () Bool)

(declare-fun mapDefault!12991 () List!24340)

(assert (=> mapNonEmpty!12990 (= condMapEmpty!12991 (= mapRest!12990 ((as const (Array (_ BitVec 32) List!24340)) mapDefault!12991)))))

(declare-fun e!1365569 () Bool)

(declare-fun mapRes!12991 () Bool)

(assert (=> mapNonEmpty!12990 (= tp!660224 (and e!1365569 mapRes!12991))))

(declare-fun mapNonEmpty!12991 () Bool)

(declare-fun tp!660323 () Bool)

(declare-fun e!1365572 () Bool)

(assert (=> mapNonEmpty!12991 (= mapRes!12991 (and tp!660323 e!1365572))))

(declare-fun mapValue!12991 () List!24340)

(declare-fun mapRest!12991 () (Array (_ BitVec 32) List!24340))

(declare-fun mapKey!12991 () (_ BitVec 32))

(assert (=> mapNonEmpty!12991 (= mapRest!12990 (store mapRest!12991 mapKey!12991 mapValue!12991))))

(declare-fun setIsEmpty!16142 () Bool)

(declare-fun setRes!16141 () Bool)

(assert (=> setIsEmpty!16142 setRes!16141))

(declare-fun b!2138739 () Bool)

(declare-fun tp!660322 () Bool)

(assert (=> b!2138739 (= e!1365572 (and setRes!16141 tp!660322))))

(declare-fun condSetEmpty!16141 () Bool)

(assert (=> b!2138739 (= condSetEmpty!16141 (= (_1!14186 (_1!14187 (h!29657 mapValue!12991))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setNonEmpty!16141 () Bool)

(declare-fun setElem!16141 () Context!2666)

(declare-fun tp!660324 () Bool)

(assert (=> setNonEmpty!16141 (= setRes!16141 (and tp!660324 (inv!31930 setElem!16141) e!1365571))))

(declare-fun setRest!16142 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16141 (= (_1!14186 (_1!14187 (h!29657 mapValue!12991))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16141 true) setRest!16142))))

(declare-fun b!2138740 () Bool)

(declare-fun tp!660321 () Bool)

(assert (=> b!2138740 (= e!1365569 (and setRes!16142 tp!660321))))

(declare-fun condSetEmpty!16142 () Bool)

(assert (=> b!2138740 (= condSetEmpty!16142 (= (_1!14186 (_1!14187 (h!29657 mapDefault!12991))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun mapIsEmpty!12991 () Bool)

(assert (=> mapIsEmpty!12991 mapRes!12991))

(declare-fun b!2138741 () Bool)

(declare-fun e!1365570 () Bool)

(declare-fun tp!660325 () Bool)

(assert (=> b!2138741 (= e!1365570 tp!660325)))

(declare-fun tp!660326 () Bool)

(declare-fun setNonEmpty!16142 () Bool)

(declare-fun setElem!16142 () Context!2666)

(assert (=> setNonEmpty!16142 (= setRes!16142 (and tp!660326 (inv!31930 setElem!16142) e!1365570))))

(declare-fun setRest!16141 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16142 (= (_1!14186 (_1!14187 (h!29657 mapDefault!12991))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16142 true) setRest!16141))))

(assert (= (and mapNonEmpty!12990 condMapEmpty!12991) mapIsEmpty!12991))

(assert (= (and mapNonEmpty!12990 (not condMapEmpty!12991)) mapNonEmpty!12991))

(assert (= (and b!2138739 condSetEmpty!16141) setIsEmpty!16142))

(assert (= (and b!2138739 (not condSetEmpty!16141)) setNonEmpty!16141))

(assert (= setNonEmpty!16141 b!2138738))

(assert (= (and mapNonEmpty!12991 ((_ is Cons!24256) mapValue!12991)) b!2138739))

(assert (= (and b!2138740 condSetEmpty!16142) setIsEmpty!16141))

(assert (= (and b!2138740 (not condSetEmpty!16142)) setNonEmpty!16142))

(assert (= setNonEmpty!16142 b!2138741))

(assert (= (and mapNonEmpty!12990 ((_ is Cons!24256) mapDefault!12991)) b!2138740))

(declare-fun m!2585391 () Bool)

(assert (=> mapNonEmpty!12991 m!2585391))

(declare-fun m!2585393 () Bool)

(assert (=> setNonEmpty!16141 m!2585393))

(declare-fun m!2585395 () Bool)

(assert (=> setNonEmpty!16142 m!2585395))

(declare-fun e!1365573 () Bool)

(declare-fun e!1365575 () Bool)

(declare-fun tp!660328 () Bool)

(declare-fun setRes!16143 () Bool)

(declare-fun b!2138742 () Bool)

(assert (=> b!2138742 (= e!1365575 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 (t!196866 mapValue!12980))))) e!1365573 tp_is_empty!9505 setRes!16143 tp!660328))))

(declare-fun condSetEmpty!16143 () Bool)

(assert (=> b!2138742 (= condSetEmpty!16143 (= (_2!14185 (h!29655 (t!196866 mapValue!12980))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16143 () Bool)

(assert (=> setIsEmpty!16143 setRes!16143))

(declare-fun b!2138743 () Bool)

(declare-fun tp!660330 () Bool)

(assert (=> b!2138743 (= e!1365573 tp!660330)))

(declare-fun setNonEmpty!16143 () Bool)

(declare-fun tp!660327 () Bool)

(declare-fun setElem!16143 () Context!2666)

(declare-fun e!1365574 () Bool)

(assert (=> setNonEmpty!16143 (= setRes!16143 (and tp!660327 (inv!31930 setElem!16143) e!1365574))))

(declare-fun setRest!16143 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16143 (= (_2!14185 (h!29655 (t!196866 mapValue!12980))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16143 true) setRest!16143))))

(declare-fun b!2138744 () Bool)

(declare-fun tp!660329 () Bool)

(assert (=> b!2138744 (= e!1365574 tp!660329)))

(assert (=> b!2138493 (= tp!660198 e!1365575)))

(assert (= b!2138742 b!2138743))

(assert (= (and b!2138742 condSetEmpty!16143) setIsEmpty!16143))

(assert (= (and b!2138742 (not condSetEmpty!16143)) setNonEmpty!16143))

(assert (= setNonEmpty!16143 b!2138744))

(assert (= (and b!2138493 ((_ is Cons!24254) (t!196866 mapValue!12980))) b!2138742))

(declare-fun m!2585397 () Bool)

(assert (=> b!2138742 m!2585397))

(declare-fun m!2585399 () Bool)

(assert (=> setNonEmpty!16143 m!2585399))

(declare-fun b!2138746 () Bool)

(declare-fun e!1365576 () Bool)

(declare-fun tp!660335 () Bool)

(declare-fun tp!660334 () Bool)

(assert (=> b!2138746 (= e!1365576 (and tp!660335 tp!660334))))

(declare-fun b!2138745 () Bool)

(assert (=> b!2138745 (= e!1365576 tp_is_empty!9505)))

(declare-fun b!2138748 () Bool)

(declare-fun tp!660333 () Bool)

(declare-fun tp!660331 () Bool)

(assert (=> b!2138748 (= e!1365576 (and tp!660333 tp!660331))))

(declare-fun b!2138747 () Bool)

(declare-fun tp!660332 () Bool)

(assert (=> b!2138747 (= e!1365576 tp!660332)))

(assert (=> b!2138535 (= tp!660248 e!1365576)))

(assert (= (and b!2138535 ((_ is ElementMatch!5763) (h!29654 (exprs!1833 setElem!16087)))) b!2138745))

(assert (= (and b!2138535 ((_ is Concat!10065) (h!29654 (exprs!1833 setElem!16087)))) b!2138746))

(assert (= (and b!2138535 ((_ is Star!5763) (h!29654 (exprs!1833 setElem!16087)))) b!2138747))

(assert (= (and b!2138535 ((_ is Union!5763) (h!29654 (exprs!1833 setElem!16087)))) b!2138748))

(declare-fun b!2138749 () Bool)

(declare-fun e!1365577 () Bool)

(declare-fun tp!660336 () Bool)

(declare-fun tp!660337 () Bool)

(assert (=> b!2138749 (= e!1365577 (and tp!660336 tp!660337))))

(assert (=> b!2138535 (= tp!660249 e!1365577)))

(assert (= (and b!2138535 ((_ is Cons!24253) (t!196865 (exprs!1833 setElem!16087)))) b!2138749))

(declare-fun condSetEmpty!16144 () Bool)

(assert (=> setNonEmpty!16131 (= condSetEmpty!16144 (= setRest!16131 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16144 () Bool)

(assert (=> setNonEmpty!16131 (= tp!660244 setRes!16144)))

(declare-fun setIsEmpty!16144 () Bool)

(assert (=> setIsEmpty!16144 setRes!16144))

(declare-fun setElem!16144 () Context!2666)

(declare-fun tp!660339 () Bool)

(declare-fun setNonEmpty!16144 () Bool)

(declare-fun e!1365578 () Bool)

(assert (=> setNonEmpty!16144 (= setRes!16144 (and tp!660339 (inv!31930 setElem!16144) e!1365578))))

(declare-fun setRest!16144 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16144 (= setRest!16131 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16144 true) setRest!16144))))

(declare-fun b!2138750 () Bool)

(declare-fun tp!660338 () Bool)

(assert (=> b!2138750 (= e!1365578 tp!660338)))

(assert (= (and setNonEmpty!16131 condSetEmpty!16144) setIsEmpty!16144))

(assert (= (and setNonEmpty!16131 (not condSetEmpty!16144)) setNonEmpty!16144))

(assert (= setNonEmpty!16144 b!2138750))

(declare-fun m!2585401 () Bool)

(assert (=> setNonEmpty!16144 m!2585401))

(declare-fun e!1365580 () Bool)

(declare-fun tp!660341 () Bool)

(declare-fun tp!660340 () Bool)

(declare-fun b!2138751 () Bool)

(assert (=> b!2138751 (= e!1365580 (and (inv!31925 (left!18667 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8)))))) tp!660340 (inv!31925 (right!18997 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8)))))) tp!660341))))

(declare-fun b!2138753 () Bool)

(declare-fun e!1365579 () Bool)

(declare-fun tp!660342 () Bool)

(assert (=> b!2138753 (= e!1365579 tp!660342)))

(declare-fun b!2138752 () Bool)

(assert (=> b!2138752 (= e!1365580 (and (inv!31934 (xs!10843 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8)))))) e!1365579))))

(assert (=> b!2138528 (= tp!660240 (and (inv!31925 (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8))))) e!1365580))))

(assert (= (and b!2138528 ((_ is Node!7901) (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8)))))) b!2138751))

(assert (= b!2138752 b!2138753))

(assert (= (and b!2138528 ((_ is Leaf!11550) (c!340410 (totalInput!3098 (h!29659 (t!196870 stack!8)))))) b!2138752))

(declare-fun m!2585403 () Bool)

(assert (=> b!2138751 m!2585403))

(declare-fun m!2585405 () Bool)

(assert (=> b!2138751 m!2585405))

(declare-fun m!2585407 () Bool)

(assert (=> b!2138752 m!2585407))

(assert (=> b!2138528 m!2585050))

(declare-fun setIsEmpty!16145 () Bool)

(declare-fun setRes!16145 () Bool)

(assert (=> setIsEmpty!16145 setRes!16145))

(declare-fun setNonEmpty!16145 () Bool)

(declare-fun tp!660344 () Bool)

(declare-fun e!1365582 () Bool)

(declare-fun setElem!16145 () Context!2666)

(assert (=> setNonEmpty!16145 (= setRes!16145 (and tp!660344 (inv!31930 setElem!16145) e!1365582))))

(declare-fun setRest!16145 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16145 (= (_1!14186 (_1!14187 (h!29657 (t!196868 mapValue!12981)))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16145 true) setRest!16145))))

(declare-fun b!2138754 () Bool)

(declare-fun e!1365581 () Bool)

(declare-fun tp!660345 () Bool)

(assert (=> b!2138754 (= e!1365581 (and setRes!16145 tp!660345))))

(declare-fun condSetEmpty!16145 () Bool)

(assert (=> b!2138754 (= condSetEmpty!16145 (= (_1!14186 (_1!14187 (h!29657 (t!196868 mapValue!12981)))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138755 () Bool)

(declare-fun tp!660343 () Bool)

(assert (=> b!2138755 (= e!1365582 tp!660343)))

(assert (=> b!2138515 (= tp!660230 e!1365581)))

(assert (= (and b!2138754 condSetEmpty!16145) setIsEmpty!16145))

(assert (= (and b!2138754 (not condSetEmpty!16145)) setNonEmpty!16145))

(assert (= setNonEmpty!16145 b!2138755))

(assert (= (and b!2138515 ((_ is Cons!24256) (t!196868 mapValue!12981))) b!2138754))

(declare-fun m!2585409 () Bool)

(assert (=> setNonEmpty!16145 m!2585409))

(declare-fun b!2138756 () Bool)

(declare-fun e!1365583 () Bool)

(declare-fun tp!660346 () Bool)

(declare-fun tp!660347 () Bool)

(assert (=> b!2138756 (= e!1365583 (and tp!660346 tp!660347))))

(assert (=> b!2138495 (= tp!660199 e!1365583)))

(assert (= (and b!2138495 ((_ is Cons!24253) (exprs!1833 setElem!16120))) b!2138756))

(declare-fun setIsEmpty!16146 () Bool)

(declare-fun setRes!16146 () Bool)

(assert (=> setIsEmpty!16146 setRes!16146))

(declare-fun setElem!16146 () Context!2666)

(declare-fun tp!660349 () Bool)

(declare-fun e!1365585 () Bool)

(declare-fun setNonEmpty!16146 () Bool)

(assert (=> setNonEmpty!16146 (= setRes!16146 (and tp!660349 (inv!31930 setElem!16146) e!1365585))))

(declare-fun setRest!16146 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16146 (= (_1!14186 (_1!14187 (h!29657 (t!196868 mapValue!12990)))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16146 true) setRest!16146))))

(declare-fun b!2138757 () Bool)

(declare-fun e!1365584 () Bool)

(declare-fun tp!660350 () Bool)

(assert (=> b!2138757 (= e!1365584 (and setRes!16146 tp!660350))))

(declare-fun condSetEmpty!16146 () Bool)

(assert (=> b!2138757 (= condSetEmpty!16146 (= (_1!14186 (_1!14187 (h!29657 (t!196868 mapValue!12990)))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138758 () Bool)

(declare-fun tp!660348 () Bool)

(assert (=> b!2138758 (= e!1365585 tp!660348)))

(assert (=> b!2138512 (= tp!660223 e!1365584)))

(assert (= (and b!2138757 condSetEmpty!16146) setIsEmpty!16146))

(assert (= (and b!2138757 (not condSetEmpty!16146)) setNonEmpty!16146))

(assert (= setNonEmpty!16146 b!2138758))

(assert (= (and b!2138512 ((_ is Cons!24256) (t!196868 mapValue!12990))) b!2138757))

(declare-fun m!2585411 () Bool)

(assert (=> setNonEmpty!16146 m!2585411))

(declare-fun condSetEmpty!16147 () Bool)

(assert (=> setNonEmpty!16106 (= condSetEmpty!16147 (= setRest!16106 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16147 () Bool)

(assert (=> setNonEmpty!16106 (= tp!660144 setRes!16147)))

(declare-fun setIsEmpty!16147 () Bool)

(assert (=> setIsEmpty!16147 setRes!16147))

(declare-fun setNonEmpty!16147 () Bool)

(declare-fun setElem!16147 () Context!2666)

(declare-fun tp!660352 () Bool)

(declare-fun e!1365586 () Bool)

(assert (=> setNonEmpty!16147 (= setRes!16147 (and tp!660352 (inv!31930 setElem!16147) e!1365586))))

(declare-fun setRest!16147 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16147 (= setRest!16106 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16147 true) setRest!16147))))

(declare-fun b!2138759 () Bool)

(declare-fun tp!660351 () Bool)

(assert (=> b!2138759 (= e!1365586 tp!660351)))

(assert (= (and setNonEmpty!16106 condSetEmpty!16147) setIsEmpty!16147))

(assert (= (and setNonEmpty!16106 (not condSetEmpty!16147)) setNonEmpty!16147))

(assert (= setNonEmpty!16147 b!2138759))

(declare-fun m!2585413 () Bool)

(assert (=> setNonEmpty!16147 m!2585413))

(declare-fun condSetEmpty!16148 () Bool)

(assert (=> setNonEmpty!16130 (= condSetEmpty!16148 (= setRest!16130 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16148 () Bool)

(assert (=> setNonEmpty!16130 (= tp!660241 setRes!16148)))

(declare-fun setIsEmpty!16148 () Bool)

(assert (=> setIsEmpty!16148 setRes!16148))

(declare-fun setElem!16148 () Context!2666)

(declare-fun setNonEmpty!16148 () Bool)

(declare-fun tp!660354 () Bool)

(declare-fun e!1365587 () Bool)

(assert (=> setNonEmpty!16148 (= setRes!16148 (and tp!660354 (inv!31930 setElem!16148) e!1365587))))

(declare-fun setRest!16148 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16148 (= setRest!16130 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16148 true) setRest!16148))))

(declare-fun b!2138760 () Bool)

(declare-fun tp!660353 () Bool)

(assert (=> b!2138760 (= e!1365587 tp!660353)))

(assert (= (and setNonEmpty!16130 condSetEmpty!16148) setIsEmpty!16148))

(assert (= (and setNonEmpty!16130 (not condSetEmpty!16148)) setNonEmpty!16148))

(assert (= setNonEmpty!16148 b!2138760))

(declare-fun m!2585415 () Bool)

(assert (=> setNonEmpty!16148 m!2585415))

(declare-fun b!2138761 () Bool)

(declare-fun e!1365588 () Bool)

(declare-fun tp!660355 () Bool)

(declare-fun tp!660356 () Bool)

(assert (=> b!2138761 (= e!1365588 (and tp!660355 tp!660356))))

(assert (=> b!2138470 (= tp!660164 e!1365588)))

(assert (= (and b!2138470 ((_ is Cons!24253) (exprs!1833 setElem!16112))) b!2138761))

(declare-fun b!2138763 () Bool)

(declare-fun e!1365589 () Bool)

(declare-fun tp!660361 () Bool)

(declare-fun tp!660360 () Bool)

(assert (=> b!2138763 (= e!1365589 (and tp!660361 tp!660360))))

(declare-fun b!2138762 () Bool)

(assert (=> b!2138762 (= e!1365589 tp_is_empty!9505)))

(declare-fun b!2138765 () Bool)

(declare-fun tp!660359 () Bool)

(declare-fun tp!660357 () Bool)

(assert (=> b!2138765 (= e!1365589 (and tp!660359 tp!660357))))

(declare-fun b!2138764 () Bool)

(declare-fun tp!660358 () Bool)

(assert (=> b!2138764 (= e!1365589 tp!660358)))

(assert (=> b!2138463 (= tp!660155 e!1365589)))

(assert (= (and b!2138463 ((_ is ElementMatch!5763) (_1!14188 (_1!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) b!2138762))

(assert (= (and b!2138463 ((_ is Concat!10065) (_1!14188 (_1!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) b!2138763))

(assert (= (and b!2138463 ((_ is Star!5763) (_1!14188 (_1!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) b!2138764))

(assert (= (and b!2138463 ((_ is Union!5763) (_1!14188 (_1!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) b!2138765))

(declare-fun e!1365592 () Bool)

(declare-fun b!2138766 () Bool)

(declare-fun setRes!16149 () Bool)

(declare-fun tp!660363 () Bool)

(declare-fun e!1365591 () Bool)

(declare-fun tp!660362 () Bool)

(assert (=> b!2138766 (= e!1365592 (and tp!660363 (inv!31930 (_2!14188 (_1!14189 (h!29658 (t!196869 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) e!1365591 tp_is_empty!9505 setRes!16149 tp!660362))))

(declare-fun condSetEmpty!16149 () Bool)

(assert (=> b!2138766 (= condSetEmpty!16149 (= (_2!14189 (h!29658 (t!196869 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun e!1365590 () Bool)

(declare-fun tp!660366 () Bool)

(declare-fun setNonEmpty!16149 () Bool)

(declare-fun setElem!16149 () Context!2666)

(assert (=> setNonEmpty!16149 (= setRes!16149 (and tp!660366 (inv!31930 setElem!16149) e!1365590))))

(declare-fun setRest!16149 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16149 (= (_2!14189 (h!29658 (t!196869 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16149 true) setRest!16149))))

(declare-fun setIsEmpty!16149 () Bool)

(assert (=> setIsEmpty!16149 setRes!16149))

(declare-fun b!2138767 () Bool)

(declare-fun tp!660365 () Bool)

(assert (=> b!2138767 (= e!1365591 tp!660365)))

(assert (=> b!2138463 (= tp!660154 e!1365592)))

(declare-fun b!2138768 () Bool)

(declare-fun tp!660364 () Bool)

(assert (=> b!2138768 (= e!1365590 tp!660364)))

(assert (= b!2138766 b!2138767))

(assert (= (and b!2138766 condSetEmpty!16149) setIsEmpty!16149))

(assert (= (and b!2138766 (not condSetEmpty!16149)) setNonEmpty!16149))

(assert (= setNonEmpty!16149 b!2138768))

(assert (= (and b!2138463 ((_ is Cons!24257) (t!196869 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))) b!2138766))

(declare-fun m!2585417 () Bool)

(assert (=> b!2138766 m!2585417))

(declare-fun m!2585419 () Bool)

(assert (=> setNonEmpty!16149 m!2585419))

(declare-fun b!2138770 () Bool)

(declare-fun e!1365593 () Bool)

(declare-fun tp!660371 () Bool)

(declare-fun tp!660370 () Bool)

(assert (=> b!2138770 (= e!1365593 (and tp!660371 tp!660370))))

(declare-fun b!2138769 () Bool)

(assert (=> b!2138769 (= e!1365593 tp_is_empty!9505)))

(declare-fun b!2138772 () Bool)

(declare-fun tp!660369 () Bool)

(declare-fun tp!660367 () Bool)

(assert (=> b!2138772 (= e!1365593 (and tp!660369 tp!660367))))

(declare-fun b!2138771 () Bool)

(declare-fun tp!660368 () Bool)

(assert (=> b!2138771 (= e!1365593 tp!660368)))

(assert (=> b!2138466 (= tp!660160 e!1365593)))

(assert (= (and b!2138466 ((_ is ElementMatch!5763) (_1!14188 (_1!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) b!2138769))

(assert (= (and b!2138466 ((_ is Concat!10065) (_1!14188 (_1!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) b!2138770))

(assert (= (and b!2138466 ((_ is Star!5763) (_1!14188 (_1!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) b!2138771))

(assert (= (and b!2138466 ((_ is Union!5763) (_1!14188 (_1!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) b!2138772))

(declare-fun b!2138773 () Bool)

(declare-fun e!1365595 () Bool)

(declare-fun tp!660372 () Bool)

(declare-fun tp!660373 () Bool)

(declare-fun setRes!16150 () Bool)

(declare-fun e!1365596 () Bool)

(assert (=> b!2138773 (= e!1365596 (and tp!660373 (inv!31930 (_2!14188 (_1!14189 (h!29658 (t!196869 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))))) e!1365595 tp_is_empty!9505 setRes!16150 tp!660372))))

(declare-fun condSetEmpty!16150 () Bool)

(assert (=> b!2138773 (= condSetEmpty!16150 (= (_2!14189 (h!29658 (t!196869 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun e!1365594 () Bool)

(declare-fun setNonEmpty!16150 () Bool)

(declare-fun setElem!16150 () Context!2666)

(declare-fun tp!660376 () Bool)

(assert (=> setNonEmpty!16150 (= setRes!16150 (and tp!660376 (inv!31930 setElem!16150) e!1365594))))

(declare-fun setRest!16150 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16150 (= (_2!14189 (h!29658 (t!196869 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16150 true) setRest!16150))))

(declare-fun setIsEmpty!16150 () Bool)

(assert (=> setIsEmpty!16150 setRes!16150))

(declare-fun b!2138774 () Bool)

(declare-fun tp!660375 () Bool)

(assert (=> b!2138774 (= e!1365595 tp!660375)))

(assert (=> b!2138466 (= tp!660159 e!1365596)))

(declare-fun b!2138775 () Bool)

(declare-fun tp!660374 () Bool)

(assert (=> b!2138775 (= e!1365594 tp!660374)))

(assert (= b!2138773 b!2138774))

(assert (= (and b!2138773 condSetEmpty!16150) setIsEmpty!16150))

(assert (= (and b!2138773 (not condSetEmpty!16150)) setNonEmpty!16150))

(assert (= setNonEmpty!16150 b!2138775))

(assert (= (and b!2138466 ((_ is Cons!24257) (t!196869 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098))))))))) b!2138773))

(declare-fun m!2585421 () Bool)

(assert (=> b!2138773 m!2585421))

(declare-fun m!2585423 () Bool)

(assert (=> setNonEmpty!16150 m!2585423))

(declare-fun condSetEmpty!16151 () Bool)

(assert (=> setNonEmpty!16102 (= condSetEmpty!16151 (= setRest!16102 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16151 () Bool)

(assert (=> setNonEmpty!16102 (= tp!660130 setRes!16151)))

(declare-fun setIsEmpty!16151 () Bool)

(assert (=> setIsEmpty!16151 setRes!16151))

(declare-fun setElem!16151 () Context!2666)

(declare-fun e!1365597 () Bool)

(declare-fun setNonEmpty!16151 () Bool)

(declare-fun tp!660378 () Bool)

(assert (=> setNonEmpty!16151 (= setRes!16151 (and tp!660378 (inv!31930 setElem!16151) e!1365597))))

(declare-fun setRest!16151 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16151 (= setRest!16102 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16151 true) setRest!16151))))

(declare-fun b!2138776 () Bool)

(declare-fun tp!660377 () Bool)

(assert (=> b!2138776 (= e!1365597 tp!660377)))

(assert (= (and setNonEmpty!16102 condSetEmpty!16151) setIsEmpty!16151))

(assert (= (and setNonEmpty!16102 (not condSetEmpty!16151)) setNonEmpty!16151))

(assert (= setNonEmpty!16151 b!2138776))

(declare-fun m!2585425 () Bool)

(assert (=> setNonEmpty!16151 m!2585425))

(declare-fun b!2138777 () Bool)

(declare-fun e!1365598 () Bool)

(declare-fun tp!660379 () Bool)

(declare-fun tp!660380 () Bool)

(assert (=> b!2138777 (= e!1365598 (and tp!660379 tp!660380))))

(assert (=> b!2138465 (= tp!660156 e!1365598)))

(assert (= (and b!2138465 ((_ is Cons!24253) (exprs!1833 setElem!16110))) b!2138777))

(declare-fun b!2138778 () Bool)

(declare-fun e!1365599 () Bool)

(declare-fun tp!660381 () Bool)

(declare-fun tp!660382 () Bool)

(assert (=> b!2138778 (= e!1365599 (and tp!660381 tp!660382))))

(assert (=> b!2138468 (= tp!660161 e!1365599)))

(assert (= (and b!2138468 ((_ is Cons!24253) (exprs!1833 setElem!16111))) b!2138778))

(declare-fun b!2138779 () Bool)

(declare-fun e!1365600 () Bool)

(declare-fun tp!660383 () Bool)

(declare-fun tp!660384 () Bool)

(assert (=> b!2138779 (= e!1365600 (and tp!660383 tp!660384))))

(assert (=> b!2138448 (= tp!660137 e!1365600)))

(assert (= (and b!2138448 ((_ is Cons!24253) (exprs!1833 (_2!14188 (_1!14189 (h!29658 mapDefault!12979)))))) b!2138779))

(declare-fun condSetEmpty!16152 () Bool)

(assert (=> setNonEmpty!16103 (= condSetEmpty!16152 (= setRest!16103 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16152 () Bool)

(assert (=> setNonEmpty!16103 (= tp!660138 setRes!16152)))

(declare-fun setIsEmpty!16152 () Bool)

(assert (=> setIsEmpty!16152 setRes!16152))

(declare-fun setNonEmpty!16152 () Bool)

(declare-fun setElem!16152 () Context!2666)

(declare-fun e!1365601 () Bool)

(declare-fun tp!660386 () Bool)

(assert (=> setNonEmpty!16152 (= setRes!16152 (and tp!660386 (inv!31930 setElem!16152) e!1365601))))

(declare-fun setRest!16152 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16152 (= setRest!16103 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16152 true) setRest!16152))))

(declare-fun b!2138780 () Bool)

(declare-fun tp!660385 () Bool)

(assert (=> b!2138780 (= e!1365601 tp!660385)))

(assert (= (and setNonEmpty!16103 condSetEmpty!16152) setIsEmpty!16152))

(assert (= (and setNonEmpty!16103 (not condSetEmpty!16152)) setNonEmpty!16152))

(assert (= setNonEmpty!16152 b!2138780))

(declare-fun m!2585427 () Bool)

(assert (=> setNonEmpty!16152 m!2585427))

(declare-fun condSetEmpty!16153 () Bool)

(assert (=> setNonEmpty!16127 (= condSetEmpty!16153 (= setRest!16127 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16153 () Bool)

(assert (=> setNonEmpty!16127 (= tp!660229 setRes!16153)))

(declare-fun setIsEmpty!16153 () Bool)

(assert (=> setIsEmpty!16153 setRes!16153))

(declare-fun tp!660388 () Bool)

(declare-fun setElem!16153 () Context!2666)

(declare-fun e!1365602 () Bool)

(declare-fun setNonEmpty!16153 () Bool)

(assert (=> setNonEmpty!16153 (= setRes!16153 (and tp!660388 (inv!31930 setElem!16153) e!1365602))))

(declare-fun setRest!16153 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16153 (= setRest!16127 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16153 true) setRest!16153))))

(declare-fun b!2138781 () Bool)

(declare-fun tp!660387 () Bool)

(assert (=> b!2138781 (= e!1365602 tp!660387)))

(assert (= (and setNonEmpty!16127 condSetEmpty!16153) setIsEmpty!16153))

(assert (= (and setNonEmpty!16127 (not condSetEmpty!16153)) setNonEmpty!16153))

(assert (= setNonEmpty!16153 b!2138781))

(declare-fun m!2585429 () Bool)

(assert (=> setNonEmpty!16153 m!2585429))

(declare-fun e!1365604 () Bool)

(declare-fun b!2138782 () Bool)

(declare-fun tp!660389 () Bool)

(declare-fun tp!660390 () Bool)

(assert (=> b!2138782 (= e!1365604 (and (inv!31925 (left!18667 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) tp!660389 (inv!31925 (right!18997 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) tp!660390))))

(declare-fun b!2138784 () Bool)

(declare-fun e!1365603 () Bool)

(declare-fun tp!660391 () Bool)

(assert (=> b!2138784 (= e!1365603 tp!660391)))

(declare-fun b!2138783 () Bool)

(assert (=> b!2138783 (= e!1365604 (and (inv!31934 (xs!10843 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) e!1365603))))

(assert (=> b!2138441 (= tp!660127 (and (inv!31925 (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) e!1365604))))

(assert (= (and b!2138441 ((_ is Node!7901) (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) b!2138782))

(assert (= b!2138783 b!2138784))

(assert (= (and b!2138441 ((_ is Leaf!11550) (left!18667 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) b!2138783))

(declare-fun m!2585431 () Bool)

(assert (=> b!2138782 m!2585431))

(declare-fun m!2585433 () Bool)

(assert (=> b!2138782 m!2585433))

(declare-fun m!2585435 () Bool)

(assert (=> b!2138783 m!2585435))

(assert (=> b!2138441 m!2584996))

(declare-fun tp!660392 () Bool)

(declare-fun tp!660393 () Bool)

(declare-fun e!1365606 () Bool)

(declare-fun b!2138785 () Bool)

(assert (=> b!2138785 (= e!1365606 (and (inv!31925 (left!18667 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) tp!660392 (inv!31925 (right!18997 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) tp!660393))))

(declare-fun b!2138787 () Bool)

(declare-fun e!1365605 () Bool)

(declare-fun tp!660394 () Bool)

(assert (=> b!2138787 (= e!1365605 tp!660394)))

(declare-fun b!2138786 () Bool)

(assert (=> b!2138786 (= e!1365606 (and (inv!31934 (xs!10843 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) e!1365605))))

(assert (=> b!2138441 (= tp!660128 (and (inv!31925 (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114)))) e!1365606))))

(assert (= (and b!2138441 ((_ is Node!7901) (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) b!2138785))

(assert (= b!2138786 b!2138787))

(assert (= (and b!2138441 ((_ is Leaf!11550) (right!18997 (c!340410 (totalInput!3097 cacheFurthestNullable!114))))) b!2138786))

(declare-fun m!2585437 () Bool)

(assert (=> b!2138785 m!2585437))

(declare-fun m!2585439 () Bool)

(assert (=> b!2138785 m!2585439))

(declare-fun m!2585441 () Bool)

(assert (=> b!2138786 m!2585441))

(assert (=> b!2138441 m!2584998))

(declare-fun setIsEmpty!16154 () Bool)

(declare-fun setRes!16154 () Bool)

(assert (=> setIsEmpty!16154 setRes!16154))

(declare-fun setNonEmpty!16154 () Bool)

(declare-fun tp!660396 () Bool)

(declare-fun setElem!16154 () Context!2666)

(declare-fun e!1365608 () Bool)

(assert (=> setNonEmpty!16154 (= setRes!16154 (and tp!660396 (inv!31930 setElem!16154) e!1365608))))

(declare-fun setRest!16154 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16154 (= (_1!14186 (_1!14187 (h!29657 (t!196868 mapDefault!12990)))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16154 true) setRest!16154))))

(declare-fun b!2138788 () Bool)

(declare-fun e!1365607 () Bool)

(declare-fun tp!660397 () Bool)

(assert (=> b!2138788 (= e!1365607 (and setRes!16154 tp!660397))))

(declare-fun condSetEmpty!16154 () Bool)

(assert (=> b!2138788 (= condSetEmpty!16154 (= (_1!14186 (_1!14187 (h!29657 (t!196868 mapDefault!12990)))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138789 () Bool)

(declare-fun tp!660395 () Bool)

(assert (=> b!2138789 (= e!1365608 tp!660395)))

(assert (=> b!2138513 (= tp!660222 e!1365607)))

(assert (= (and b!2138788 condSetEmpty!16154) setIsEmpty!16154))

(assert (= (and b!2138788 (not condSetEmpty!16154)) setNonEmpty!16154))

(assert (= setNonEmpty!16154 b!2138789))

(assert (= (and b!2138513 ((_ is Cons!24256) (t!196868 mapDefault!12990))) b!2138788))

(declare-fun m!2585443 () Bool)

(assert (=> setNonEmpty!16154 m!2585443))

(declare-fun b!2138790 () Bool)

(declare-fun tp!660398 () Bool)

(declare-fun e!1365610 () Bool)

(declare-fun tp!660399 () Bool)

(assert (=> b!2138790 (= e!1365610 (and (inv!31925 (left!18667 (left!18667 (c!340410 totalInput!851)))) tp!660398 (inv!31925 (right!18997 (left!18667 (c!340410 totalInput!851)))) tp!660399))))

(declare-fun b!2138792 () Bool)

(declare-fun e!1365609 () Bool)

(declare-fun tp!660400 () Bool)

(assert (=> b!2138792 (= e!1365609 tp!660400)))

(declare-fun b!2138791 () Bool)

(assert (=> b!2138791 (= e!1365610 (and (inv!31934 (xs!10843 (left!18667 (c!340410 totalInput!851)))) e!1365609))))

(assert (=> b!2138536 (= tp!660250 (and (inv!31925 (left!18667 (c!340410 totalInput!851))) e!1365610))))

(assert (= (and b!2138536 ((_ is Node!7901) (left!18667 (c!340410 totalInput!851)))) b!2138790))

(assert (= b!2138791 b!2138792))

(assert (= (and b!2138536 ((_ is Leaf!11550) (left!18667 (c!340410 totalInput!851)))) b!2138791))

(declare-fun m!2585445 () Bool)

(assert (=> b!2138790 m!2585445))

(declare-fun m!2585447 () Bool)

(assert (=> b!2138790 m!2585447))

(declare-fun m!2585449 () Bool)

(assert (=> b!2138791 m!2585449))

(assert (=> b!2138536 m!2585064))

(declare-fun tp!660402 () Bool)

(declare-fun tp!660401 () Bool)

(declare-fun e!1365612 () Bool)

(declare-fun b!2138793 () Bool)

(assert (=> b!2138793 (= e!1365612 (and (inv!31925 (left!18667 (right!18997 (c!340410 totalInput!851)))) tp!660401 (inv!31925 (right!18997 (right!18997 (c!340410 totalInput!851)))) tp!660402))))

(declare-fun b!2138795 () Bool)

(declare-fun e!1365611 () Bool)

(declare-fun tp!660403 () Bool)

(assert (=> b!2138795 (= e!1365611 tp!660403)))

(declare-fun b!2138794 () Bool)

(assert (=> b!2138794 (= e!1365612 (and (inv!31934 (xs!10843 (right!18997 (c!340410 totalInput!851)))) e!1365611))))

(assert (=> b!2138536 (= tp!660251 (and (inv!31925 (right!18997 (c!340410 totalInput!851))) e!1365612))))

(assert (= (and b!2138536 ((_ is Node!7901) (right!18997 (c!340410 totalInput!851)))) b!2138793))

(assert (= b!2138794 b!2138795))

(assert (= (and b!2138536 ((_ is Leaf!11550) (right!18997 (c!340410 totalInput!851)))) b!2138794))

(declare-fun m!2585451 () Bool)

(assert (=> b!2138793 m!2585451))

(declare-fun m!2585453 () Bool)

(assert (=> b!2138793 m!2585453))

(declare-fun m!2585455 () Bool)

(assert (=> b!2138794 m!2585455))

(assert (=> b!2138536 m!2585066))

(declare-fun condSetEmpty!16155 () Bool)

(assert (=> setNonEmpty!16126 (= condSetEmpty!16155 (= setRest!16125 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16155 () Bool)

(assert (=> setNonEmpty!16126 (= tp!660227 setRes!16155)))

(declare-fun setIsEmpty!16155 () Bool)

(assert (=> setIsEmpty!16155 setRes!16155))

(declare-fun tp!660405 () Bool)

(declare-fun e!1365613 () Bool)

(declare-fun setElem!16155 () Context!2666)

(declare-fun setNonEmpty!16155 () Bool)

(assert (=> setNonEmpty!16155 (= setRes!16155 (and tp!660405 (inv!31930 setElem!16155) e!1365613))))

(declare-fun setRest!16155 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16155 (= setRest!16125 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16155 true) setRest!16155))))

(declare-fun b!2138796 () Bool)

(declare-fun tp!660404 () Bool)

(assert (=> b!2138796 (= e!1365613 tp!660404)))

(assert (= (and setNonEmpty!16126 condSetEmpty!16155) setIsEmpty!16155))

(assert (= (and setNonEmpty!16126 (not condSetEmpty!16155)) setNonEmpty!16155))

(assert (= setNonEmpty!16155 b!2138796))

(declare-fun m!2585457 () Bool)

(assert (=> setNonEmpty!16155 m!2585457))

(declare-fun tp!660406 () Bool)

(declare-fun e!1365615 () Bool)

(declare-fun b!2138797 () Bool)

(declare-fun tp!660407 () Bool)

(assert (=> b!2138797 (= e!1365615 (and (inv!31925 (left!18667 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) tp!660406 (inv!31925 (right!18997 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) tp!660407))))

(declare-fun b!2138799 () Bool)

(declare-fun e!1365614 () Bool)

(declare-fun tp!660408 () Bool)

(assert (=> b!2138799 (= e!1365614 tp!660408)))

(declare-fun b!2138798 () Bool)

(assert (=> b!2138798 (= e!1365615 (and (inv!31934 (xs!10843 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) e!1365614))))

(assert (=> b!2138532 (= tp!660245 (and (inv!31925 (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8))))) e!1365615))))

(assert (= (and b!2138532 ((_ is Node!7901) (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) b!2138797))

(assert (= b!2138798 b!2138799))

(assert (= (and b!2138532 ((_ is Leaf!11550) (left!18667 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) b!2138798))

(declare-fun m!2585459 () Bool)

(assert (=> b!2138797 m!2585459))

(declare-fun m!2585461 () Bool)

(assert (=> b!2138797 m!2585461))

(declare-fun m!2585463 () Bool)

(assert (=> b!2138798 m!2585463))

(assert (=> b!2138532 m!2585058))

(declare-fun b!2138800 () Bool)

(declare-fun e!1365617 () Bool)

(declare-fun tp!660410 () Bool)

(declare-fun tp!660409 () Bool)

(assert (=> b!2138800 (= e!1365617 (and (inv!31925 (left!18667 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) tp!660409 (inv!31925 (right!18997 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) tp!660410))))

(declare-fun b!2138802 () Bool)

(declare-fun e!1365616 () Bool)

(declare-fun tp!660411 () Bool)

(assert (=> b!2138802 (= e!1365616 tp!660411)))

(declare-fun b!2138801 () Bool)

(assert (=> b!2138801 (= e!1365617 (and (inv!31934 (xs!10843 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) e!1365616))))

(assert (=> b!2138532 (= tp!660246 (and (inv!31925 (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8))))) e!1365617))))

(assert (= (and b!2138532 ((_ is Node!7901) (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) b!2138800))

(assert (= b!2138801 b!2138802))

(assert (= (and b!2138532 ((_ is Leaf!11550) (right!18997 (c!340410 (totalInput!3098 (h!29659 stack!8)))))) b!2138801))

(declare-fun m!2585465 () Bool)

(assert (=> b!2138800 m!2585465))

(declare-fun m!2585467 () Bool)

(assert (=> b!2138800 m!2585467))

(declare-fun m!2585469 () Bool)

(assert (=> b!2138801 m!2585469))

(assert (=> b!2138532 m!2585060))

(declare-fun mapNonEmpty!12992 () Bool)

(declare-fun mapRes!12992 () Bool)

(declare-fun tp!660416 () Bool)

(declare-fun e!1365620 () Bool)

(assert (=> mapNonEmpty!12992 (= mapRes!12992 (and tp!660416 e!1365620))))

(declare-fun mapRest!12992 () (Array (_ BitVec 32) List!24338))

(declare-fun mapValue!12992 () List!24338)

(declare-fun mapKey!12992 () (_ BitVec 32))

(assert (=> mapNonEmpty!12992 (= mapRest!12987 (store mapRest!12992 mapKey!12992 mapValue!12992))))

(declare-fun e!1365621 () Bool)

(declare-fun tp!660419 () Bool)

(declare-fun mapDefault!12992 () List!24338)

(declare-fun setRes!16156 () Bool)

(declare-fun e!1365622 () Bool)

(declare-fun b!2138803 () Bool)

(assert (=> b!2138803 (= e!1365621 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 mapDefault!12992)))) e!1365622 tp_is_empty!9505 setRes!16156 tp!660419))))

(declare-fun condSetEmpty!16156 () Bool)

(assert (=> b!2138803 (= condSetEmpty!16156 (= (_2!14185 (h!29655 mapDefault!12992)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun tp!660414 () Bool)

(declare-fun e!1365619 () Bool)

(declare-fun setRes!16157 () Bool)

(declare-fun setElem!16157 () Context!2666)

(declare-fun setNonEmpty!16156 () Bool)

(assert (=> setNonEmpty!16156 (= setRes!16157 (and tp!660414 (inv!31930 setElem!16157) e!1365619))))

(declare-fun setRest!16156 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16156 (= (_2!14185 (h!29655 mapValue!12992)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16157 true) setRest!16156))))

(declare-fun b!2138804 () Bool)

(declare-fun tp!660412 () Bool)

(assert (=> b!2138804 (= e!1365619 tp!660412)))

(declare-fun setIsEmpty!16156 () Bool)

(assert (=> setIsEmpty!16156 setRes!16157))

(declare-fun setIsEmpty!16157 () Bool)

(assert (=> setIsEmpty!16157 setRes!16156))

(declare-fun b!2138805 () Bool)

(declare-fun e!1365618 () Bool)

(declare-fun tp!660413 () Bool)

(assert (=> b!2138805 (= e!1365618 tp!660413)))

(declare-fun tp!660417 () Bool)

(declare-fun b!2138806 () Bool)

(declare-fun e!1365623 () Bool)

(assert (=> b!2138806 (= e!1365620 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 mapValue!12992)))) e!1365623 tp_is_empty!9505 setRes!16157 tp!660417))))

(declare-fun condSetEmpty!16157 () Bool)

(assert (=> b!2138806 (= condSetEmpty!16157 (= (_2!14185 (h!29655 mapValue!12992)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setElem!16156 () Context!2666)

(declare-fun setNonEmpty!16157 () Bool)

(declare-fun tp!660415 () Bool)

(assert (=> setNonEmpty!16157 (= setRes!16156 (and tp!660415 (inv!31930 setElem!16156) e!1365618))))

(declare-fun setRest!16157 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16157 (= (_2!14185 (h!29655 mapDefault!12992)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16156 true) setRest!16157))))

(declare-fun condMapEmpty!12992 () Bool)

(assert (=> mapNonEmpty!12987 (= condMapEmpty!12992 (= mapRest!12987 ((as const (Array (_ BitVec 32) List!24338)) mapDefault!12992)))))

(assert (=> mapNonEmpty!12987 (= tp!660192 (and e!1365621 mapRes!12992))))

(declare-fun b!2138807 () Bool)

(declare-fun tp!660418 () Bool)

(assert (=> b!2138807 (= e!1365623 tp!660418)))

(declare-fun b!2138808 () Bool)

(declare-fun tp!660420 () Bool)

(assert (=> b!2138808 (= e!1365622 tp!660420)))

(declare-fun mapIsEmpty!12992 () Bool)

(assert (=> mapIsEmpty!12992 mapRes!12992))

(assert (= (and mapNonEmpty!12987 condMapEmpty!12992) mapIsEmpty!12992))

(assert (= (and mapNonEmpty!12987 (not condMapEmpty!12992)) mapNonEmpty!12992))

(assert (= b!2138806 b!2138807))

(assert (= (and b!2138806 condSetEmpty!16157) setIsEmpty!16156))

(assert (= (and b!2138806 (not condSetEmpty!16157)) setNonEmpty!16156))

(assert (= setNonEmpty!16156 b!2138804))

(assert (= (and mapNonEmpty!12992 ((_ is Cons!24254) mapValue!12992)) b!2138806))

(assert (= b!2138803 b!2138808))

(assert (= (and b!2138803 condSetEmpty!16156) setIsEmpty!16157))

(assert (= (and b!2138803 (not condSetEmpty!16156)) setNonEmpty!16157))

(assert (= setNonEmpty!16157 b!2138805))

(assert (= (and mapNonEmpty!12987 ((_ is Cons!24254) mapDefault!12992)) b!2138803))

(declare-fun m!2585471 () Bool)

(assert (=> setNonEmpty!16157 m!2585471))

(declare-fun m!2585473 () Bool)

(assert (=> mapNonEmpty!12992 m!2585473))

(declare-fun m!2585475 () Bool)

(assert (=> b!2138806 m!2585475))

(declare-fun m!2585477 () Bool)

(assert (=> setNonEmpty!16156 m!2585477))

(declare-fun m!2585479 () Bool)

(assert (=> b!2138803 m!2585479))

(declare-fun b!2138809 () Bool)

(declare-fun e!1365624 () Bool)

(declare-fun tp!660421 () Bool)

(declare-fun tp!660422 () Bool)

(assert (=> b!2138809 (= e!1365624 (and tp!660421 tp!660422))))

(assert (=> b!2138402 (= tp!660085 e!1365624)))

(assert (= (and b!2138402 ((_ is Cons!24253) (exprs!1833 setElem!16094))) b!2138809))

(declare-fun b!2138810 () Bool)

(declare-fun e!1365625 () Bool)

(declare-fun tp!660423 () Bool)

(declare-fun tp!660424 () Bool)

(assert (=> b!2138810 (= e!1365625 (and tp!660423 tp!660424))))

(assert (=> b!2138449 (= tp!660136 e!1365625)))

(assert (= (and b!2138449 ((_ is Cons!24253) (exprs!1833 setElem!16103))) b!2138810))

(declare-fun condSetEmpty!16158 () Bool)

(assert (=> setNonEmpty!16109 (= condSetEmpty!16158 (= setRest!16109 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16158 () Bool)

(assert (=> setNonEmpty!16109 (= tp!660152 setRes!16158)))

(declare-fun setIsEmpty!16158 () Bool)

(assert (=> setIsEmpty!16158 setRes!16158))

(declare-fun setNonEmpty!16158 () Bool)

(declare-fun setElem!16158 () Context!2666)

(declare-fun tp!660426 () Bool)

(declare-fun e!1365626 () Bool)

(assert (=> setNonEmpty!16158 (= setRes!16158 (and tp!660426 (inv!31930 setElem!16158) e!1365626))))

(declare-fun setRest!16158 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16158 (= setRest!16109 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16158 true) setRest!16158))))

(declare-fun b!2138811 () Bool)

(declare-fun tp!660425 () Bool)

(assert (=> b!2138811 (= e!1365626 tp!660425)))

(assert (= (and setNonEmpty!16109 condSetEmpty!16158) setIsEmpty!16158))

(assert (= (and setNonEmpty!16109 (not condSetEmpty!16158)) setNonEmpty!16158))

(assert (= setNonEmpty!16158 b!2138811))

(declare-fun m!2585481 () Bool)

(assert (=> setNonEmpty!16158 m!2585481))

(declare-fun b!2138812 () Bool)

(declare-fun e!1365627 () Bool)

(declare-fun tp!660427 () Bool)

(declare-fun tp!660428 () Bool)

(assert (=> b!2138812 (= e!1365627 (and tp!660427 tp!660428))))

(assert (=> b!2138446 (= tp!660132 e!1365627)))

(assert (= (and b!2138446 ((_ is Cons!24253) (exprs!1833 setElem!16102))) b!2138812))

(declare-fun condSetEmpty!16159 () Bool)

(assert (=> setNonEmpty!16118 (= condSetEmpty!16159 (= setRest!16118 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16159 () Bool)

(assert (=> setNonEmpty!16118 (= tp!660190 setRes!16159)))

(declare-fun setIsEmpty!16159 () Bool)

(assert (=> setIsEmpty!16159 setRes!16159))

(declare-fun setNonEmpty!16159 () Bool)

(declare-fun tp!660430 () Bool)

(declare-fun setElem!16159 () Context!2666)

(declare-fun e!1365628 () Bool)

(assert (=> setNonEmpty!16159 (= setRes!16159 (and tp!660430 (inv!31930 setElem!16159) e!1365628))))

(declare-fun setRest!16159 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16159 (= setRest!16118 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16159 true) setRest!16159))))

(declare-fun b!2138813 () Bool)

(declare-fun tp!660429 () Bool)

(assert (=> b!2138813 (= e!1365628 tp!660429)))

(assert (= (and setNonEmpty!16118 condSetEmpty!16159) setIsEmpty!16159))

(assert (= (and setNonEmpty!16118 (not condSetEmpty!16159)) setNonEmpty!16159))

(assert (= setNonEmpty!16159 b!2138813))

(declare-fun m!2585483 () Bool)

(assert (=> setNonEmpty!16159 m!2585483))

(declare-fun b!2138815 () Bool)

(declare-fun e!1365629 () Bool)

(declare-fun tp!660435 () Bool)

(declare-fun tp!660434 () Bool)

(assert (=> b!2138815 (= e!1365629 (and tp!660435 tp!660434))))

(declare-fun b!2138814 () Bool)

(assert (=> b!2138814 (= e!1365629 tp_is_empty!9505)))

(declare-fun b!2138817 () Bool)

(declare-fun tp!660433 () Bool)

(declare-fun tp!660431 () Bool)

(assert (=> b!2138817 (= e!1365629 (and tp!660433 tp!660431))))

(declare-fun b!2138816 () Bool)

(declare-fun tp!660432 () Bool)

(assert (=> b!2138816 (= e!1365629 tp!660432)))

(assert (=> b!2138404 (= tp!660083 e!1365629)))

(assert (= (and b!2138404 ((_ is ElementMatch!5763) (_1!14188 (_1!14189 (h!29658 mapValue!12984))))) b!2138814))

(assert (= (and b!2138404 ((_ is Concat!10065) (_1!14188 (_1!14189 (h!29658 mapValue!12984))))) b!2138815))

(assert (= (and b!2138404 ((_ is Star!5763) (_1!14188 (_1!14189 (h!29658 mapValue!12984))))) b!2138816))

(assert (= (and b!2138404 ((_ is Union!5763) (_1!14188 (_1!14189 (h!29658 mapValue!12984))))) b!2138817))

(declare-fun e!1365631 () Bool)

(declare-fun setRes!16160 () Bool)

(declare-fun tp!660436 () Bool)

(declare-fun e!1365632 () Bool)

(declare-fun b!2138818 () Bool)

(declare-fun tp!660437 () Bool)

(assert (=> b!2138818 (= e!1365632 (and tp!660437 (inv!31930 (_2!14188 (_1!14189 (h!29658 (t!196869 mapValue!12984))))) e!1365631 tp_is_empty!9505 setRes!16160 tp!660436))))

(declare-fun condSetEmpty!16160 () Bool)

(assert (=> b!2138818 (= condSetEmpty!16160 (= (_2!14189 (h!29658 (t!196869 mapValue!12984))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun tp!660440 () Bool)

(declare-fun setElem!16160 () Context!2666)

(declare-fun setNonEmpty!16160 () Bool)

(declare-fun e!1365630 () Bool)

(assert (=> setNonEmpty!16160 (= setRes!16160 (and tp!660440 (inv!31930 setElem!16160) e!1365630))))

(declare-fun setRest!16160 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16160 (= (_2!14189 (h!29658 (t!196869 mapValue!12984))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16160 true) setRest!16160))))

(declare-fun setIsEmpty!16160 () Bool)

(assert (=> setIsEmpty!16160 setRes!16160))

(declare-fun b!2138819 () Bool)

(declare-fun tp!660439 () Bool)

(assert (=> b!2138819 (= e!1365631 tp!660439)))

(assert (=> b!2138404 (= tp!660086 e!1365632)))

(declare-fun b!2138820 () Bool)

(declare-fun tp!660438 () Bool)

(assert (=> b!2138820 (= e!1365630 tp!660438)))

(assert (= b!2138818 b!2138819))

(assert (= (and b!2138818 condSetEmpty!16160) setIsEmpty!16160))

(assert (= (and b!2138818 (not condSetEmpty!16160)) setNonEmpty!16160))

(assert (= setNonEmpty!16160 b!2138820))

(assert (= (and b!2138404 ((_ is Cons!24257) (t!196869 mapValue!12984))) b!2138818))

(declare-fun m!2585485 () Bool)

(assert (=> b!2138818 m!2585485))

(declare-fun m!2585487 () Bool)

(assert (=> setNonEmpty!16160 m!2585487))

(declare-fun b!2138821 () Bool)

(declare-fun e!1365633 () Bool)

(declare-fun tp!660441 () Bool)

(assert (=> b!2138821 (= e!1365633 (and tp_is_empty!9505 tp!660441))))

(assert (=> b!2138534 (= tp!660247 e!1365633)))

(assert (= (and b!2138534 ((_ is Cons!24255) (innerList!7961 (xs!10843 (c!340410 (totalInput!3098 (h!29659 stack!8))))))) b!2138821))

(declare-fun condSetEmpty!16161 () Bool)

(assert (=> setNonEmpty!16101 (= condSetEmpty!16161 (= setRest!16101 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16161 () Bool)

(assert (=> setNonEmpty!16101 (= tp!660117 setRes!16161)))

(declare-fun setIsEmpty!16161 () Bool)

(assert (=> setIsEmpty!16161 setRes!16161))

(declare-fun setNonEmpty!16161 () Bool)

(declare-fun e!1365634 () Bool)

(declare-fun tp!660443 () Bool)

(declare-fun setElem!16161 () Context!2666)

(assert (=> setNonEmpty!16161 (= setRes!16161 (and tp!660443 (inv!31930 setElem!16161) e!1365634))))

(declare-fun setRest!16161 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16161 (= setRest!16101 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16161 true) setRest!16161))))

(declare-fun b!2138822 () Bool)

(declare-fun tp!660442 () Bool)

(assert (=> b!2138822 (= e!1365634 tp!660442)))

(assert (= (and setNonEmpty!16101 condSetEmpty!16161) setIsEmpty!16161))

(assert (= (and setNonEmpty!16101 (not condSetEmpty!16161)) setNonEmpty!16161))

(assert (= setNonEmpty!16161 b!2138822))

(declare-fun m!2585489 () Bool)

(assert (=> setNonEmpty!16161 m!2585489))

(declare-fun b!2138823 () Bool)

(declare-fun e!1365635 () Bool)

(declare-fun tp!660450 () Bool)

(assert (=> b!2138823 (= e!1365635 tp!660450)))

(declare-fun b!2138824 () Bool)

(declare-fun e!1365639 () Bool)

(declare-fun tp!660445 () Bool)

(assert (=> b!2138824 (= e!1365639 tp!660445)))

(declare-fun tp!660448 () Bool)

(declare-fun b!2138825 () Bool)

(declare-fun e!1365638 () Bool)

(declare-fun mapValue!12993 () List!24341)

(declare-fun setRes!16163 () Bool)

(declare-fun tp!660451 () Bool)

(assert (=> b!2138825 (= e!1365638 (and tp!660448 (inv!31930 (_2!14188 (_1!14189 (h!29658 mapValue!12993)))) e!1365639 tp_is_empty!9505 setRes!16163 tp!660451))))

(declare-fun condSetEmpty!16162 () Bool)

(assert (=> b!2138825 (= condSetEmpty!16162 (= (_2!14189 (h!29658 mapValue!12993)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setElem!16162 () Context!2666)

(declare-fun tp!660453 () Bool)

(declare-fun setRes!16162 () Bool)

(declare-fun e!1365640 () Bool)

(declare-fun setNonEmpty!16162 () Bool)

(assert (=> setNonEmpty!16162 (= setRes!16162 (and tp!660453 (inv!31930 setElem!16162) e!1365640))))

(declare-fun mapDefault!12993 () List!24341)

(declare-fun setRest!16162 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16162 (= (_2!14189 (h!29658 mapDefault!12993)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16162 true) setRest!16162))))

(declare-fun mapNonEmpty!12993 () Bool)

(declare-fun mapRes!12993 () Bool)

(declare-fun tp!660447 () Bool)

(assert (=> mapNonEmpty!12993 (= mapRes!12993 (and tp!660447 e!1365638))))

(declare-fun mapKey!12993 () (_ BitVec 32))

(declare-fun mapRest!12993 () (Array (_ BitVec 32) List!24341))

(assert (=> mapNonEmpty!12993 (= mapRest!12984 (store mapRest!12993 mapKey!12993 mapValue!12993))))

(declare-fun e!1365637 () Bool)

(declare-fun e!1365636 () Bool)

(declare-fun tp!660454 () Bool)

(declare-fun b!2138826 () Bool)

(declare-fun tp!660446 () Bool)

(assert (=> b!2138826 (= e!1365636 (and tp!660446 (inv!31930 (_2!14188 (_1!14189 (h!29658 mapDefault!12993)))) e!1365637 tp_is_empty!9505 setRes!16162 tp!660454))))

(declare-fun condSetEmpty!16163 () Bool)

(assert (=> b!2138826 (= condSetEmpty!16163 (= (_2!14189 (h!29658 mapDefault!12993)) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16162 () Bool)

(assert (=> setIsEmpty!16162 setRes!16162))

(declare-fun condMapEmpty!12993 () Bool)

(assert (=> mapNonEmpty!12984 (= condMapEmpty!12993 (= mapRest!12984 ((as const (Array (_ BitVec 32) List!24341)) mapDefault!12993)))))

(assert (=> mapNonEmpty!12984 (= tp!660082 (and e!1365636 mapRes!12993))))

(declare-fun b!2138827 () Bool)

(declare-fun tp!660452 () Bool)

(assert (=> b!2138827 (= e!1365637 tp!660452)))

(declare-fun setElem!16163 () Context!2666)

(declare-fun tp!660444 () Bool)

(declare-fun setNonEmpty!16163 () Bool)

(assert (=> setNonEmpty!16163 (= setRes!16163 (and tp!660444 (inv!31930 setElem!16163) e!1365635))))

(declare-fun setRest!16163 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16163 (= (_2!14189 (h!29658 mapValue!12993)) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16163 true) setRest!16163))))

(declare-fun b!2138828 () Bool)

(declare-fun tp!660449 () Bool)

(assert (=> b!2138828 (= e!1365640 tp!660449)))

(declare-fun setIsEmpty!16163 () Bool)

(assert (=> setIsEmpty!16163 setRes!16163))

(declare-fun mapIsEmpty!12993 () Bool)

(assert (=> mapIsEmpty!12993 mapRes!12993))

(assert (= (and mapNonEmpty!12984 condMapEmpty!12993) mapIsEmpty!12993))

(assert (= (and mapNonEmpty!12984 (not condMapEmpty!12993)) mapNonEmpty!12993))

(assert (= b!2138825 b!2138824))

(assert (= (and b!2138825 condSetEmpty!16162) setIsEmpty!16163))

(assert (= (and b!2138825 (not condSetEmpty!16162)) setNonEmpty!16163))

(assert (= setNonEmpty!16163 b!2138823))

(assert (= (and mapNonEmpty!12993 ((_ is Cons!24257) mapValue!12993)) b!2138825))

(assert (= b!2138826 b!2138827))

(assert (= (and b!2138826 condSetEmpty!16163) setIsEmpty!16162))

(assert (= (and b!2138826 (not condSetEmpty!16163)) setNonEmpty!16162))

(assert (= setNonEmpty!16162 b!2138828))

(assert (= (and mapNonEmpty!12984 ((_ is Cons!24257) mapDefault!12993)) b!2138826))

(declare-fun m!2585491 () Bool)

(assert (=> setNonEmpty!16162 m!2585491))

(declare-fun m!2585493 () Bool)

(assert (=> b!2138825 m!2585493))

(declare-fun m!2585495 () Bool)

(assert (=> mapNonEmpty!12993 m!2585495))

(declare-fun m!2585497 () Bool)

(assert (=> b!2138826 m!2585497))

(declare-fun m!2585499 () Bool)

(assert (=> setNonEmpty!16163 m!2585499))

(declare-fun e!1365641 () Bool)

(declare-fun e!1365643 () Bool)

(declare-fun setRes!16164 () Bool)

(declare-fun b!2138829 () Bool)

(declare-fun tp!660456 () Bool)

(assert (=> b!2138829 (= e!1365643 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 (t!196866 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))))))) e!1365641 tp_is_empty!9505 setRes!16164 tp!660456))))

(declare-fun condSetEmpty!16164 () Bool)

(assert (=> b!2138829 (= condSetEmpty!16164 (= (_2!14185 (h!29655 (t!196866 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16164 () Bool)

(assert (=> setIsEmpty!16164 setRes!16164))

(declare-fun b!2138830 () Bool)

(declare-fun tp!660458 () Bool)

(assert (=> b!2138830 (= e!1365641 tp!660458)))

(declare-fun setElem!16164 () Context!2666)

(declare-fun setNonEmpty!16164 () Bool)

(declare-fun tp!660455 () Bool)

(declare-fun e!1365642 () Bool)

(assert (=> setNonEmpty!16164 (= setRes!16164 (and tp!660455 (inv!31930 setElem!16164) e!1365642))))

(declare-fun setRest!16164 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16164 (= (_2!14185 (h!29655 (t!196866 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16164 true) setRest!16164))))

(declare-fun b!2138831 () Bool)

(declare-fun tp!660457 () Bool)

(assert (=> b!2138831 (= e!1365642 tp!660457)))

(assert (=> b!2138427 (= tp!660114 e!1365643)))

(assert (= b!2138829 b!2138830))

(assert (= (and b!2138829 condSetEmpty!16164) setIsEmpty!16164))

(assert (= (and b!2138829 (not condSetEmpty!16164)) setNonEmpty!16164))

(assert (= setNonEmpty!16164 b!2138831))

(assert (= (and b!2138427 ((_ is Cons!24254) (t!196866 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979))))))))) b!2138829))

(declare-fun m!2585501 () Bool)

(assert (=> b!2138829 m!2585501))

(declare-fun m!2585503 () Bool)

(assert (=> setNonEmpty!16164 m!2585503))

(declare-fun b!2138832 () Bool)

(declare-fun e!1365644 () Bool)

(declare-fun tp!660459 () Bool)

(declare-fun tp!660460 () Bool)

(assert (=> b!2138832 (= e!1365644 (and tp!660459 tp!660460))))

(assert (=> b!2138472 (= tp!660167 e!1365644)))

(assert (= (and b!2138472 ((_ is Cons!24253) (exprs!1833 setElem!16113))) b!2138832))

(declare-fun condSetEmpty!16165 () Bool)

(assert (=> setNonEmpty!16119 (= condSetEmpty!16165 (= setRest!16119 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16165 () Bool)

(assert (=> setNonEmpty!16119 (= tp!660191 setRes!16165)))

(declare-fun setIsEmpty!16165 () Bool)

(assert (=> setIsEmpty!16165 setRes!16165))

(declare-fun e!1365645 () Bool)

(declare-fun tp!660462 () Bool)

(declare-fun setNonEmpty!16165 () Bool)

(declare-fun setElem!16165 () Context!2666)

(assert (=> setNonEmpty!16165 (= setRes!16165 (and tp!660462 (inv!31930 setElem!16165) e!1365645))))

(declare-fun setRest!16165 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16165 (= setRest!16119 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16165 true) setRest!16165))))

(declare-fun b!2138833 () Bool)

(declare-fun tp!660461 () Bool)

(assert (=> b!2138833 (= e!1365645 tp!660461)))

(assert (= (and setNonEmpty!16119 condSetEmpty!16165) setIsEmpty!16165))

(assert (= (and setNonEmpty!16119 (not condSetEmpty!16165)) setNonEmpty!16165))

(assert (= setNonEmpty!16165 b!2138833))

(declare-fun m!2585505 () Bool)

(assert (=> setNonEmpty!16165 m!2585505))

(declare-fun condSetEmpty!16166 () Bool)

(assert (=> setNonEmpty!16094 (= condSetEmpty!16166 (= setRest!16094 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16166 () Bool)

(assert (=> setNonEmpty!16094 (= tp!660079 setRes!16166)))

(declare-fun setIsEmpty!16166 () Bool)

(assert (=> setIsEmpty!16166 setRes!16166))

(declare-fun tp!660464 () Bool)

(declare-fun e!1365646 () Bool)

(declare-fun setNonEmpty!16166 () Bool)

(declare-fun setElem!16166 () Context!2666)

(assert (=> setNonEmpty!16166 (= setRes!16166 (and tp!660464 (inv!31930 setElem!16166) e!1365646))))

(declare-fun setRest!16166 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16166 (= setRest!16094 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16166 true) setRest!16166))))

(declare-fun b!2138834 () Bool)

(declare-fun tp!660463 () Bool)

(assert (=> b!2138834 (= e!1365646 tp!660463)))

(assert (= (and setNonEmpty!16094 condSetEmpty!16166) setIsEmpty!16166))

(assert (= (and setNonEmpty!16094 (not condSetEmpty!16166)) setNonEmpty!16166))

(assert (= setNonEmpty!16166 b!2138834))

(declare-fun m!2585507 () Bool)

(assert (=> setNonEmpty!16166 m!2585507))

(declare-fun b!2138835 () Bool)

(declare-fun e!1365647 () Bool)

(declare-fun tp!660465 () Bool)

(declare-fun tp!660466 () Bool)

(assert (=> b!2138835 (= e!1365647 (and tp!660465 tp!660466))))

(assert (=> b!2138429 (= tp!660115 e!1365647)))

(assert (= (and b!2138429 ((_ is Cons!24253) (exprs!1833 setElem!16100))) b!2138835))

(declare-fun b!2138836 () Bool)

(declare-fun e!1365648 () Bool)

(declare-fun tp!660467 () Bool)

(declare-fun tp!660468 () Bool)

(assert (=> b!2138836 (= e!1365648 (and tp!660467 tp!660468))))

(assert (=> b!2138489 (= tp!660189 e!1365648)))

(assert (= (and b!2138489 ((_ is Cons!24253) (exprs!1833 setElem!16118))) b!2138836))

(declare-fun b!2138837 () Bool)

(declare-fun e!1365649 () Bool)

(declare-fun tp!660469 () Bool)

(declare-fun tp!660470 () Bool)

(assert (=> b!2138837 (= e!1365649 (and tp!660469 tp!660470))))

(assert (=> b!2138428 (= tp!660116 e!1365649)))

(assert (= (and b!2138428 ((_ is Cons!24253) (exprs!1833 (_1!14184 (_1!14185 (h!29655 (zeroValue!2978 (v!28828 (underlying!5635 (v!28829 (underlying!5636 (cache!3015 cacheUp!979)))))))))))) b!2138837))

(declare-fun b!2138839 () Bool)

(declare-fun e!1365650 () Bool)

(declare-fun tp!660475 () Bool)

(declare-fun tp!660474 () Bool)

(assert (=> b!2138839 (= e!1365650 (and tp!660475 tp!660474))))

(declare-fun b!2138838 () Bool)

(assert (=> b!2138838 (= e!1365650 tp_is_empty!9505)))

(declare-fun b!2138841 () Bool)

(declare-fun tp!660473 () Bool)

(declare-fun tp!660471 () Bool)

(assert (=> b!2138841 (= e!1365650 (and tp!660473 tp!660471))))

(declare-fun b!2138840 () Bool)

(declare-fun tp!660472 () Bool)

(assert (=> b!2138840 (= e!1365650 tp!660472)))

(assert (=> b!2138416 (= tp!660101 e!1365650)))

(assert (= (and b!2138416 ((_ is ElementMatch!5763) (_1!14188 (_1!14189 (h!29658 mapValue!12979))))) b!2138838))

(assert (= (and b!2138416 ((_ is Concat!10065) (_1!14188 (_1!14189 (h!29658 mapValue!12979))))) b!2138839))

(assert (= (and b!2138416 ((_ is Star!5763) (_1!14188 (_1!14189 (h!29658 mapValue!12979))))) b!2138840))

(assert (= (and b!2138416 ((_ is Union!5763) (_1!14188 (_1!14189 (h!29658 mapValue!12979))))) b!2138841))

(declare-fun tp!660477 () Bool)

(declare-fun b!2138842 () Bool)

(declare-fun e!1365653 () Bool)

(declare-fun e!1365652 () Bool)

(declare-fun tp!660476 () Bool)

(declare-fun setRes!16167 () Bool)

(assert (=> b!2138842 (= e!1365653 (and tp!660477 (inv!31930 (_2!14188 (_1!14189 (h!29658 (t!196869 mapValue!12979))))) e!1365652 tp_is_empty!9505 setRes!16167 tp!660476))))

(declare-fun condSetEmpty!16167 () Bool)

(assert (=> b!2138842 (= condSetEmpty!16167 (= (_2!14189 (h!29658 (t!196869 mapValue!12979))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setElem!16167 () Context!2666)

(declare-fun setNonEmpty!16167 () Bool)

(declare-fun e!1365651 () Bool)

(declare-fun tp!660480 () Bool)

(assert (=> setNonEmpty!16167 (= setRes!16167 (and tp!660480 (inv!31930 setElem!16167) e!1365651))))

(declare-fun setRest!16167 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16167 (= (_2!14189 (h!29658 (t!196869 mapValue!12979))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16167 true) setRest!16167))))

(declare-fun setIsEmpty!16167 () Bool)

(assert (=> setIsEmpty!16167 setRes!16167))

(declare-fun b!2138843 () Bool)

(declare-fun tp!660479 () Bool)

(assert (=> b!2138843 (= e!1365652 tp!660479)))

(assert (=> b!2138416 (= tp!660100 e!1365653)))

(declare-fun b!2138844 () Bool)

(declare-fun tp!660478 () Bool)

(assert (=> b!2138844 (= e!1365651 tp!660478)))

(assert (= b!2138842 b!2138843))

(assert (= (and b!2138842 condSetEmpty!16167) setIsEmpty!16167))

(assert (= (and b!2138842 (not condSetEmpty!16167)) setNonEmpty!16167))

(assert (= setNonEmpty!16167 b!2138844))

(assert (= (and b!2138416 ((_ is Cons!24257) (t!196869 mapValue!12979))) b!2138842))

(declare-fun m!2585509 () Bool)

(assert (=> b!2138842 m!2585509))

(declare-fun m!2585511 () Bool)

(assert (=> setNonEmpty!16167 m!2585511))

(declare-fun b!2138845 () Bool)

(declare-fun e!1365654 () Bool)

(declare-fun tp!660481 () Bool)

(declare-fun tp!660482 () Bool)

(assert (=> b!2138845 (= e!1365654 (and tp!660481 tp!660482))))

(assert (=> b!2138407 (= tp!660084 e!1365654)))

(assert (= (and b!2138407 ((_ is Cons!24253) (exprs!1833 setElem!16093))) b!2138845))

(declare-fun b!2138846 () Bool)

(declare-fun e!1365655 () Bool)

(declare-fun tp!660483 () Bool)

(declare-fun tp!660484 () Bool)

(assert (=> b!2138846 (= e!1365655 (and tp!660483 tp!660484))))

(assert (=> b!2138491 (= tp!660194 e!1365655)))

(assert (= (and b!2138491 ((_ is Cons!24253) (exprs!1833 (_1!14184 (_1!14185 (h!29655 mapValue!12987)))))) b!2138846))

(declare-fun b!2138847 () Bool)

(declare-fun e!1365656 () Bool)

(declare-fun tp!660485 () Bool)

(declare-fun tp!660486 () Bool)

(assert (=> b!2138847 (= e!1365656 (and tp!660485 tp!660486))))

(assert (=> b!2138511 (= tp!660221 e!1365656)))

(assert (= (and b!2138511 ((_ is Cons!24253) (exprs!1833 setElem!16125))) b!2138847))

(declare-fun b!2138848 () Bool)

(declare-fun e!1365657 () Bool)

(declare-fun tp!660487 () Bool)

(declare-fun tp!660488 () Bool)

(assert (=> b!2138848 (= e!1365657 (and tp!660487 tp!660488))))

(assert (=> b!2138531 (= tp!660243 e!1365657)))

(assert (= (and b!2138531 ((_ is Cons!24253) (exprs!1833 setElem!16131))) b!2138848))

(declare-fun condSetEmpty!16168 () Bool)

(assert (=> setNonEmpty!16112 (= condSetEmpty!16168 (= setRest!16112 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16168 () Bool)

(assert (=> setNonEmpty!16112 (= tp!660165 setRes!16168)))

(declare-fun setIsEmpty!16168 () Bool)

(assert (=> setIsEmpty!16168 setRes!16168))

(declare-fun tp!660490 () Bool)

(declare-fun setElem!16168 () Context!2666)

(declare-fun setNonEmpty!16168 () Bool)

(declare-fun e!1365658 () Bool)

(assert (=> setNonEmpty!16168 (= setRes!16168 (and tp!660490 (inv!31930 setElem!16168) e!1365658))))

(declare-fun setRest!16168 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16168 (= setRest!16112 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16168 true) setRest!16168))))

(declare-fun b!2138849 () Bool)

(declare-fun tp!660489 () Bool)

(assert (=> b!2138849 (= e!1365658 tp!660489)))

(assert (= (and setNonEmpty!16112 condSetEmpty!16168) setIsEmpty!16168))

(assert (= (and setNonEmpty!16112 (not condSetEmpty!16168)) setNonEmpty!16168))

(assert (= setNonEmpty!16168 b!2138849))

(declare-fun m!2585513 () Bool)

(assert (=> setNonEmpty!16168 m!2585513))

(declare-fun setIsEmpty!16169 () Bool)

(declare-fun setRes!16169 () Bool)

(assert (=> setIsEmpty!16169 setRes!16169))

(declare-fun tp!660492 () Bool)

(declare-fun e!1365660 () Bool)

(declare-fun setElem!16169 () Context!2666)

(declare-fun setNonEmpty!16169 () Bool)

(assert (=> setNonEmpty!16169 (= setRes!16169 (and tp!660492 (inv!31930 setElem!16169) e!1365660))))

(declare-fun setRest!16169 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16169 (= (_1!14186 (_1!14187 (h!29657 (t!196868 (zeroValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114)))))))))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16169 true) setRest!16169))))

(declare-fun b!2138850 () Bool)

(declare-fun e!1365659 () Bool)

(declare-fun tp!660493 () Bool)

(assert (=> b!2138850 (= e!1365659 (and setRes!16169 tp!660493))))

(declare-fun condSetEmpty!16169 () Bool)

(assert (=> b!2138850 (= condSetEmpty!16169 (= (_1!14186 (_1!14187 (h!29657 (t!196868 (zeroValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114)))))))))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138851 () Bool)

(declare-fun tp!660491 () Bool)

(assert (=> b!2138851 (= e!1365660 tp!660491)))

(assert (=> b!2138469 (= tp!660166 e!1365659)))

(assert (= (and b!2138850 condSetEmpty!16169) setIsEmpty!16169))

(assert (= (and b!2138850 (not condSetEmpty!16169)) setNonEmpty!16169))

(assert (= setNonEmpty!16169 b!2138851))

(assert (= (and b!2138469 ((_ is Cons!24256) (t!196868 (zeroValue!2979 (v!28830 (underlying!5637 (v!28831 (underlying!5638 (cache!3016 cacheFurthestNullable!114))))))))) b!2138850))

(declare-fun m!2585515 () Bool)

(assert (=> setNonEmpty!16169 m!2585515))

(declare-fun tp!660497 () Bool)

(declare-fun e!1365662 () Bool)

(declare-fun b!2138852 () Bool)

(declare-fun e!1365663 () Bool)

(assert (=> b!2138852 (= e!1365662 (and (inv!31931 (h!29659 (t!196870 (t!196870 stack!8)))) e!1365663 tp!660497))))

(assert (=> b!2138527 (= tp!660242 e!1365662)))

(declare-fun b!2138853 () Bool)

(declare-fun e!1365661 () Bool)

(declare-fun tp!660495 () Bool)

(assert (=> b!2138853 (= e!1365661 (and (inv!31925 (c!340410 (totalInput!3098 (h!29659 (t!196870 (t!196870 stack!8)))))) tp!660495))))

(declare-fun setIsEmpty!16170 () Bool)

(declare-fun setRes!16170 () Bool)

(assert (=> setIsEmpty!16170 setRes!16170))

(declare-fun b!2138854 () Bool)

(assert (=> b!2138854 (= e!1365663 (and setRes!16170 (inv!31926 (totalInput!3098 (h!29659 (t!196870 (t!196870 stack!8))))) e!1365661))))

(declare-fun condSetEmpty!16170 () Bool)

(assert (=> b!2138854 (= condSetEmpty!16170 (= (z!5837 (h!29659 (t!196870 (t!196870 stack!8)))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138855 () Bool)

(declare-fun e!1365664 () Bool)

(declare-fun tp!660494 () Bool)

(assert (=> b!2138855 (= e!1365664 tp!660494)))

(declare-fun setNonEmpty!16170 () Bool)

(declare-fun tp!660496 () Bool)

(declare-fun setElem!16170 () Context!2666)

(assert (=> setNonEmpty!16170 (= setRes!16170 (and tp!660496 (inv!31930 setElem!16170) e!1365664))))

(declare-fun setRest!16170 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16170 (= (z!5837 (h!29659 (t!196870 (t!196870 stack!8)))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16170 true) setRest!16170))))

(assert (= (and b!2138854 condSetEmpty!16170) setIsEmpty!16170))

(assert (= (and b!2138854 (not condSetEmpty!16170)) setNonEmpty!16170))

(assert (= setNonEmpty!16170 b!2138855))

(assert (= b!2138854 b!2138853))

(assert (= b!2138852 b!2138854))

(assert (= (and b!2138527 ((_ is Cons!24258) (t!196870 (t!196870 stack!8)))) b!2138852))

(declare-fun m!2585517 () Bool)

(assert (=> b!2138852 m!2585517))

(declare-fun m!2585519 () Bool)

(assert (=> b!2138853 m!2585519))

(declare-fun m!2585521 () Bool)

(assert (=> b!2138854 m!2585521))

(declare-fun m!2585523 () Bool)

(assert (=> setNonEmpty!16170 m!2585523))

(declare-fun b!2138857 () Bool)

(declare-fun e!1365665 () Bool)

(declare-fun tp!660502 () Bool)

(declare-fun tp!660501 () Bool)

(assert (=> b!2138857 (= e!1365665 (and tp!660502 tp!660501))))

(declare-fun b!2138856 () Bool)

(assert (=> b!2138856 (= e!1365665 tp_is_empty!9505)))

(declare-fun b!2138859 () Bool)

(declare-fun tp!660500 () Bool)

(declare-fun tp!660498 () Bool)

(assert (=> b!2138859 (= e!1365665 (and tp!660500 tp!660498))))

(declare-fun b!2138858 () Bool)

(declare-fun tp!660499 () Bool)

(assert (=> b!2138858 (= e!1365665 tp!660499)))

(assert (=> b!2138447 (= tp!660135 e!1365665)))

(assert (= (and b!2138447 ((_ is ElementMatch!5763) (_1!14188 (_1!14189 (h!29658 mapDefault!12979))))) b!2138856))

(assert (= (and b!2138447 ((_ is Concat!10065) (_1!14188 (_1!14189 (h!29658 mapDefault!12979))))) b!2138857))

(assert (= (and b!2138447 ((_ is Star!5763) (_1!14188 (_1!14189 (h!29658 mapDefault!12979))))) b!2138858))

(assert (= (and b!2138447 ((_ is Union!5763) (_1!14188 (_1!14189 (h!29658 mapDefault!12979))))) b!2138859))

(declare-fun tp!660504 () Bool)

(declare-fun setRes!16171 () Bool)

(declare-fun e!1365668 () Bool)

(declare-fun e!1365667 () Bool)

(declare-fun tp!660503 () Bool)

(declare-fun b!2138860 () Bool)

(assert (=> b!2138860 (= e!1365668 (and tp!660504 (inv!31930 (_2!14188 (_1!14189 (h!29658 (t!196869 mapDefault!12979))))) e!1365667 tp_is_empty!9505 setRes!16171 tp!660503))))

(declare-fun condSetEmpty!16171 () Bool)

(assert (=> b!2138860 (= condSetEmpty!16171 (= (_2!14189 (h!29658 (t!196869 mapDefault!12979))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun tp!660507 () Bool)

(declare-fun e!1365666 () Bool)

(declare-fun setElem!16171 () Context!2666)

(declare-fun setNonEmpty!16171 () Bool)

(assert (=> setNonEmpty!16171 (= setRes!16171 (and tp!660507 (inv!31930 setElem!16171) e!1365666))))

(declare-fun setRest!16171 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16171 (= (_2!14189 (h!29658 (t!196869 mapDefault!12979))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16171 true) setRest!16171))))

(declare-fun setIsEmpty!16171 () Bool)

(assert (=> setIsEmpty!16171 setRes!16171))

(declare-fun b!2138861 () Bool)

(declare-fun tp!660506 () Bool)

(assert (=> b!2138861 (= e!1365667 tp!660506)))

(assert (=> b!2138447 (= tp!660134 e!1365668)))

(declare-fun b!2138862 () Bool)

(declare-fun tp!660505 () Bool)

(assert (=> b!2138862 (= e!1365666 tp!660505)))

(assert (= b!2138860 b!2138861))

(assert (= (and b!2138860 condSetEmpty!16171) setIsEmpty!16171))

(assert (= (and b!2138860 (not condSetEmpty!16171)) setNonEmpty!16171))

(assert (= setNonEmpty!16171 b!2138862))

(assert (= (and b!2138447 ((_ is Cons!24257) (t!196869 mapDefault!12979))) b!2138860))

(declare-fun m!2585525 () Bool)

(assert (=> b!2138860 m!2585525))

(declare-fun m!2585527 () Bool)

(assert (=> setNonEmpty!16171 m!2585527))

(declare-fun b!2138863 () Bool)

(declare-fun e!1365669 () Bool)

(declare-fun tp!660508 () Bool)

(declare-fun tp!660509 () Bool)

(assert (=> b!2138863 (= e!1365669 (and tp!660508 tp!660509))))

(assert (=> b!2138530 (= tp!660239 e!1365669)))

(assert (= (and b!2138530 ((_ is Cons!24253) (exprs!1833 setElem!16130))) b!2138863))

(declare-fun condSetEmpty!16172 () Bool)

(assert (=> setNonEmpty!16111 (= condSetEmpty!16172 (= setRest!16111 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16172 () Bool)

(assert (=> setNonEmpty!16111 (= tp!660163 setRes!16172)))

(declare-fun setIsEmpty!16172 () Bool)

(assert (=> setIsEmpty!16172 setRes!16172))

(declare-fun e!1365670 () Bool)

(declare-fun setNonEmpty!16172 () Bool)

(declare-fun setElem!16172 () Context!2666)

(declare-fun tp!660511 () Bool)

(assert (=> setNonEmpty!16172 (= setRes!16172 (and tp!660511 (inv!31930 setElem!16172) e!1365670))))

(declare-fun setRest!16172 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16172 (= setRest!16111 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16172 true) setRest!16172))))

(declare-fun b!2138864 () Bool)

(declare-fun tp!660510 () Bool)

(assert (=> b!2138864 (= e!1365670 tp!660510)))

(assert (= (and setNonEmpty!16111 condSetEmpty!16172) setIsEmpty!16172))

(assert (= (and setNonEmpty!16111 (not condSetEmpty!16172)) setNonEmpty!16172))

(assert (= setNonEmpty!16172 b!2138864))

(declare-fun m!2585529 () Bool)

(assert (=> setNonEmpty!16172 m!2585529))

(declare-fun setRes!16173 () Bool)

(declare-fun e!1365673 () Bool)

(declare-fun b!2138865 () Bool)

(declare-fun e!1365671 () Bool)

(declare-fun tp!660513 () Bool)

(assert (=> b!2138865 (= e!1365673 (and (inv!31930 (_1!14184 (_1!14185 (h!29655 (t!196866 mapDefault!12980))))) e!1365671 tp_is_empty!9505 setRes!16173 tp!660513))))

(declare-fun condSetEmpty!16173 () Bool)

(assert (=> b!2138865 (= condSetEmpty!16173 (= (_2!14185 (h!29655 (t!196866 mapDefault!12980))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setIsEmpty!16173 () Bool)

(assert (=> setIsEmpty!16173 setRes!16173))

(declare-fun b!2138866 () Bool)

(declare-fun tp!660515 () Bool)

(assert (=> b!2138866 (= e!1365671 tp!660515)))

(declare-fun setElem!16173 () Context!2666)

(declare-fun e!1365672 () Bool)

(declare-fun setNonEmpty!16173 () Bool)

(declare-fun tp!660512 () Bool)

(assert (=> setNonEmpty!16173 (= setRes!16173 (and tp!660512 (inv!31930 setElem!16173) e!1365672))))

(declare-fun setRest!16173 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16173 (= (_2!14185 (h!29655 (t!196866 mapDefault!12980))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16173 true) setRest!16173))))

(declare-fun b!2138867 () Bool)

(declare-fun tp!660514 () Bool)

(assert (=> b!2138867 (= e!1365672 tp!660514)))

(assert (=> b!2138444 (= tp!660131 e!1365673)))

(assert (= b!2138865 b!2138866))

(assert (= (and b!2138865 condSetEmpty!16173) setIsEmpty!16173))

(assert (= (and b!2138865 (not condSetEmpty!16173)) setNonEmpty!16173))

(assert (= setNonEmpty!16173 b!2138867))

(assert (= (and b!2138444 ((_ is Cons!24254) (t!196866 mapDefault!12980))) b!2138865))

(declare-fun m!2585531 () Bool)

(assert (=> b!2138865 m!2585531))

(declare-fun m!2585533 () Bool)

(assert (=> setNonEmpty!16173 m!2585533))

(declare-fun condSetEmpty!16174 () Bool)

(assert (=> setNonEmpty!16110 (= condSetEmpty!16174 (= setRest!16110 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16174 () Bool)

(assert (=> setNonEmpty!16110 (= tp!660158 setRes!16174)))

(declare-fun setIsEmpty!16174 () Bool)

(assert (=> setIsEmpty!16174 setRes!16174))

(declare-fun setNonEmpty!16174 () Bool)

(declare-fun e!1365674 () Bool)

(declare-fun setElem!16174 () Context!2666)

(declare-fun tp!660517 () Bool)

(assert (=> setNonEmpty!16174 (= setRes!16174 (and tp!660517 (inv!31930 setElem!16174) e!1365674))))

(declare-fun setRest!16174 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16174 (= setRest!16110 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16174 true) setRest!16174))))

(declare-fun b!2138868 () Bool)

(declare-fun tp!660516 () Bool)

(assert (=> b!2138868 (= e!1365674 tp!660516)))

(assert (= (and setNonEmpty!16110 condSetEmpty!16174) setIsEmpty!16174))

(assert (= (and setNonEmpty!16110 (not condSetEmpty!16174)) setNonEmpty!16174))

(assert (= setNonEmpty!16174 b!2138868))

(declare-fun m!2585535 () Bool)

(assert (=> setNonEmpty!16174 m!2585535))

(declare-fun b!2138870 () Bool)

(declare-fun e!1365675 () Bool)

(declare-fun tp!660522 () Bool)

(declare-fun tp!660521 () Bool)

(assert (=> b!2138870 (= e!1365675 (and tp!660522 tp!660521))))

(declare-fun b!2138869 () Bool)

(assert (=> b!2138869 (= e!1365675 tp_is_empty!9505)))

(declare-fun b!2138872 () Bool)

(declare-fun tp!660520 () Bool)

(declare-fun tp!660518 () Bool)

(assert (=> b!2138872 (= e!1365675 (and tp!660520 tp!660518))))

(declare-fun b!2138871 () Bool)

(declare-fun tp!660519 () Bool)

(assert (=> b!2138871 (= e!1365675 tp!660519)))

(assert (=> b!2138500 (= tp!660205 e!1365675)))

(assert (= (and b!2138500 ((_ is ElementMatch!5763) (h!29654 (exprs!1833 setElem!16088)))) b!2138869))

(assert (= (and b!2138500 ((_ is Concat!10065) (h!29654 (exprs!1833 setElem!16088)))) b!2138870))

(assert (= (and b!2138500 ((_ is Star!5763) (h!29654 (exprs!1833 setElem!16088)))) b!2138871))

(assert (= (and b!2138500 ((_ is Union!5763) (h!29654 (exprs!1833 setElem!16088)))) b!2138872))

(declare-fun b!2138873 () Bool)

(declare-fun e!1365676 () Bool)

(declare-fun tp!660523 () Bool)

(declare-fun tp!660524 () Bool)

(assert (=> b!2138873 (= e!1365676 (and tp!660523 tp!660524))))

(assert (=> b!2138500 (= tp!660206 e!1365676)))

(assert (= (and b!2138500 ((_ is Cons!24253) (t!196865 (exprs!1833 setElem!16088)))) b!2138873))

(declare-fun b!2138874 () Bool)

(declare-fun e!1365677 () Bool)

(declare-fun tp!660525 () Bool)

(declare-fun tp!660526 () Bool)

(assert (=> b!2138874 (= e!1365677 (and tp!660525 tp!660526))))

(assert (=> b!2138418 (= tp!660102 e!1365677)))

(assert (= (and b!2138418 ((_ is Cons!24253) (exprs!1833 setElem!16097))) b!2138874))

(declare-fun condSetEmpty!16175 () Bool)

(assert (=> setNonEmpty!16120 (= condSetEmpty!16175 (= setRest!16120 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16175 () Bool)

(assert (=> setNonEmpty!16120 (= tp!660197 setRes!16175)))

(declare-fun setIsEmpty!16175 () Bool)

(assert (=> setIsEmpty!16175 setRes!16175))

(declare-fun setElem!16175 () Context!2666)

(declare-fun setNonEmpty!16175 () Bool)

(declare-fun e!1365678 () Bool)

(declare-fun tp!660528 () Bool)

(assert (=> setNonEmpty!16175 (= setRes!16175 (and tp!660528 (inv!31930 setElem!16175) e!1365678))))

(declare-fun setRest!16175 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16175 (= setRest!16120 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16175 true) setRest!16175))))

(declare-fun b!2138875 () Bool)

(declare-fun tp!660527 () Bool)

(assert (=> b!2138875 (= e!1365678 tp!660527)))

(assert (= (and setNonEmpty!16120 condSetEmpty!16175) setIsEmpty!16175))

(assert (= (and setNonEmpty!16120 (not condSetEmpty!16175)) setNonEmpty!16175))

(assert (= setNonEmpty!16175 b!2138875))

(declare-fun m!2585537 () Bool)

(assert (=> setNonEmpty!16175 m!2585537))

(declare-fun setIsEmpty!16176 () Bool)

(declare-fun setRes!16176 () Bool)

(assert (=> setIsEmpty!16176 setRes!16176))

(declare-fun setElem!16176 () Context!2666)

(declare-fun tp!660530 () Bool)

(declare-fun setNonEmpty!16176 () Bool)

(declare-fun e!1365680 () Bool)

(assert (=> setNonEmpty!16176 (= setRes!16176 (and tp!660530 (inv!31930 setElem!16176) e!1365680))))

(declare-fun setRest!16176 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16176 (= (_1!14186 (_1!14187 (h!29657 (t!196868 mapDefault!12981)))) ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16176 true) setRest!16176))))

(declare-fun b!2138876 () Bool)

(declare-fun e!1365679 () Bool)

(declare-fun tp!660531 () Bool)

(assert (=> b!2138876 (= e!1365679 (and setRes!16176 tp!660531))))

(declare-fun condSetEmpty!16176 () Bool)

(assert (=> b!2138876 (= condSetEmpty!16176 (= (_1!14186 (_1!14187 (h!29657 (t!196868 mapDefault!12981)))) ((as const (Array Context!2666 Bool)) false)))))

(declare-fun b!2138877 () Bool)

(declare-fun tp!660529 () Bool)

(assert (=> b!2138877 (= e!1365680 tp!660529)))

(assert (=> b!2138461 (= tp!660153 e!1365679)))

(assert (= (and b!2138876 condSetEmpty!16176) setIsEmpty!16176))

(assert (= (and b!2138876 (not condSetEmpty!16176)) setNonEmpty!16176))

(assert (= setNonEmpty!16176 b!2138877))

(assert (= (and b!2138461 ((_ is Cons!24256) (t!196868 mapDefault!12981))) b!2138876))

(declare-fun m!2585539 () Bool)

(assert (=> setNonEmpty!16176 m!2585539))

(declare-fun b!2138878 () Bool)

(declare-fun e!1365681 () Bool)

(declare-fun tp!660532 () Bool)

(declare-fun tp!660533 () Bool)

(assert (=> b!2138878 (= e!1365681 (and tp!660532 tp!660533))))

(assert (=> b!2138445 (= tp!660133 e!1365681)))

(assert (= (and b!2138445 ((_ is Cons!24253) (exprs!1833 (_1!14184 (_1!14185 (h!29655 mapDefault!12980)))))) b!2138878))

(declare-fun b!2138879 () Bool)

(declare-fun e!1365682 () Bool)

(declare-fun tp!660534 () Bool)

(declare-fun tp!660535 () Bool)

(assert (=> b!2138879 (= e!1365682 (and tp!660534 tp!660535))))

(assert (=> b!2138464 (= tp!660157 e!1365682)))

(assert (= (and b!2138464 ((_ is Cons!24253) (exprs!1833 (_2!14188 (_1!14189 (h!29658 (zeroValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))))))) b!2138879))

(declare-fun b!2138880 () Bool)

(declare-fun e!1365683 () Bool)

(declare-fun tp!660536 () Bool)

(declare-fun tp!660537 () Bool)

(assert (=> b!2138880 (= e!1365683 (and tp!660536 tp!660537))))

(assert (=> b!2138516 (= tp!660228 e!1365683)))

(assert (= (and b!2138516 ((_ is Cons!24253) (exprs!1833 setElem!16127))) b!2138880))

(declare-fun b!2138881 () Bool)

(declare-fun e!1365684 () Bool)

(declare-fun tp!660538 () Bool)

(declare-fun tp!660539 () Bool)

(assert (=> b!2138881 (= e!1365684 (and tp!660538 tp!660539))))

(assert (=> b!2138454 (= tp!660143 e!1365684)))

(assert (= (and b!2138454 ((_ is Cons!24253) (exprs!1833 setElem!16106))) b!2138881))

(declare-fun condSetEmpty!16177 () Bool)

(assert (=> setNonEmpty!16125 (= condSetEmpty!16177 (= setRest!16126 ((as const (Array Context!2666 Bool)) false)))))

(declare-fun setRes!16177 () Bool)

(assert (=> setNonEmpty!16125 (= tp!660225 setRes!16177)))

(declare-fun setIsEmpty!16177 () Bool)

(assert (=> setIsEmpty!16177 setRes!16177))

(declare-fun setNonEmpty!16177 () Bool)

(declare-fun e!1365685 () Bool)

(declare-fun setElem!16177 () Context!2666)

(declare-fun tp!660541 () Bool)

(assert (=> setNonEmpty!16177 (= setRes!16177 (and tp!660541 (inv!31930 setElem!16177) e!1365685))))

(declare-fun setRest!16177 () (InoxSet Context!2666))

(assert (=> setNonEmpty!16177 (= setRest!16126 ((_ map or) (store ((as const (Array Context!2666 Bool)) false) setElem!16177 true) setRest!16177))))

(declare-fun b!2138882 () Bool)

(declare-fun tp!660540 () Bool)

(assert (=> b!2138882 (= e!1365685 tp!660540)))

(assert (= (and setNonEmpty!16125 condSetEmpty!16177) setIsEmpty!16177))

(assert (= (and setNonEmpty!16125 (not condSetEmpty!16177)) setNonEmpty!16177))

(assert (= setNonEmpty!16177 b!2138882))

(declare-fun m!2585541 () Bool)

(assert (=> setNonEmpty!16177 m!2585541))

(declare-fun b!2138883 () Bool)

(declare-fun e!1365686 () Bool)

(declare-fun tp!660542 () Bool)

(declare-fun tp!660543 () Bool)

(assert (=> b!2138883 (= e!1365686 (and tp!660542 tp!660543))))

(assert (=> b!2138467 (= tp!660162 e!1365686)))

(assert (= (and b!2138467 ((_ is Cons!24253) (exprs!1833 (_2!14188 (_1!14189 (h!29658 (minValue!2980 (v!28832 (underlying!5639 (v!28833 (underlying!5640 (cache!3017 cacheDown!1098)))))))))))) b!2138883))

(declare-fun b_lambda!70609 () Bool)

(assert (= b_lambda!70605 (or b!2138299 b_lambda!70609)))

(declare-fun bs!445089 () Bool)

(declare-fun d!644641 () Bool)

(assert (= bs!445089 (and d!644641 b!2138299)))

(assert (=> bs!445089 (= (dynLambda!11367 lambda!79837 (h!29659 (t!196870 stack!8))) (= (res!923663 (h!29659 (t!196870 stack!8))) lt!797759))))

(assert (=> b!2138640 d!644641))

(declare-fun b_lambda!70611 () Bool)

(assert (= b_lambda!70607 (or d!644471 b_lambda!70611)))

(declare-fun bs!445090 () Bool)

(declare-fun d!644643 () Bool)

(assert (= bs!445090 (and d!644643 d!644471)))

(declare-fun validRegex!2233 (Regex!5763) Bool)

(assert (=> bs!445090 (= (dynLambda!11368 lambda!79845 (h!29654 (exprs!1833 setElem!16087))) (validRegex!2233 (h!29654 (exprs!1833 setElem!16087))))))

(declare-fun m!2585543 () Bool)

(assert (=> bs!445090 m!2585543))

(assert (=> b!2138685 d!644643))

(declare-fun b_lambda!70613 () Bool)

(assert (= b_lambda!70601 (or d!644447 b_lambda!70613)))

(declare-fun bs!445091 () Bool)

(declare-fun d!644645 () Bool)

(assert (= bs!445091 (and d!644645 d!644447)))

(assert (=> bs!445091 (= (dynLambda!11368 lambda!79844 (h!29654 (exprs!1833 setElem!16088))) (validRegex!2233 (h!29654 (exprs!1833 setElem!16088))))))

(declare-fun m!2585545 () Bool)

(assert (=> bs!445091 m!2585545))

(assert (=> b!2138586 d!644645))

(declare-fun b_lambda!70615 () Bool)

(assert (= b_lambda!70603 (or b!2138297 b_lambda!70615)))

(declare-fun bs!445092 () Bool)

(declare-fun d!644647 () Bool)

(assert (= bs!445092 (and d!644647 b!2138297)))

(assert (=> bs!445092 (= (dynLambda!11367 lambda!79838 (h!29659 (t!196870 stack!8))) (= (totalInput!3098 (h!29659 (t!196870 stack!8))) totalInput!851))))

(assert (=> b!2138606 d!644647))

(check-sat (not setNonEmpty!16144) (not d!644621) (not b!2138818) (not b!2138671) (not b!2138831) (not setNonEmpty!16155) (not b!2138873) (not b!2138544) (not b!2138841) (not d!644551) (not b_lambda!70609) (not b!2138649) (not b!2138815) (not d!644491) (not b!2138782) (not b_next!63527) (not b!2138641) (not b!2138758) (not b!2138729) (not b!2138688) (not b!2138811) (not b_next!63519) (not b!2138857) (not d!644585) (not b!2138776) (not b!2138701) (not b!2138868) (not b!2138727) (not b!2138810) (not b!2138733) (not b!2138765) (not setNonEmpty!16156) (not b!2138621) (not b!2138660) (not d!644547) (not b!2138549) (not b!2138679) b_and!172403 (not setNonEmpty!16172) (not b!2138787) (not b!2138834) (not bm!128789) (not b!2138855) b_and!172401 (not b!2138874) (not d!644589) (not b!2138624) (not d!644527) (not b!2138726) (not b!2138603) (not b!2138785) (not b!2138739) (not d!644523) (not d!644501) (not b!2138788) (not b!2138859) (not b!2138775) (not b!2138812) (not d!644597) (not b!2138718) (not setNonEmpty!16154) (not setNonEmpty!16152) (not b!2138751) (not d!644561) (not b!2138795) (not b!2138862) (not b!2138761) (not b!2138725) (not b!2138528) (not b!2138560) (not bs!445091) (not setNonEmpty!16145) (not setNonEmpty!16159) (not b!2138731) (not d!644517) (not b!2138674) (not setNonEmpty!16161) (not b!2138673) (not setNonEmpty!16175) (not b!2138879) (not d!644525) (not d!644601) (not setNonEmpty!16167) (not d!644487) (not d!644603) (not b!2138672) (not setNonEmpty!16150) (not b!2138602) (not b!2138821) (not b!2138848) b_and!172395 (not d!644627) (not setNonEmpty!16160) (not b!2138663) (not d!644607) (not b!2138772) (not b!2138793) (not setNonEmpty!16136) (not b!2138686) (not b!2138880) (not d!644539) (not b!2138792) (not b_lambda!70615) (not b!2138680) (not b!2138783) (not b!2138872) b_and!172393 (not b!2138861) (not b!2138797) (not d!644615) (not b!2138698) (not b!2138638) b_and!172399 (not b!2138846) (not b!2138827) (not b!2138699) (not b!2138836) (not b!2138777) (not b!2138823) (not b!2138562) (not d!644593) (not b!2138819) (not b!2138781) (not bm!128790) (not b!2138883) (not b!2138774) (not b!2138564) (not b!2138559) (not b!2138607) (not b!2138608) (not b!2138871) (not b!2138837) (not b!2138670) (not b!2138580) (not b!2138619) (not d!644609) (not setNonEmpty!16174) (not b!2138695) (not b!2138600) (not b!2138870) (not b!2138770) (not b_next!63523) (not b!2138696) (not b!2138833) (not b!2138741) (not b!2138441) (not d!644489) (not b!2138773) (not b!2138877) (not d!644639) (not b!2138845) (not b!2138825) (not b!2138587) (not b!2138867) (not setNonEmpty!16166) (not setNonEmpty!16168) (not d!644557) (not d!644605) (not b!2138605) (not b!2138704) (not b!2138763) (not mapNonEmpty!12992) (not b!2138850) (not b!2138860) (not setNonEmpty!16162) (not setNonEmpty!16146) (not setNonEmpty!16153) (not b!2138794) (not d!644495) (not d!644583) (not setNonEmpty!16163) (not b!2138656) (not b!2138853) (not b!2138759) (not setNonEmpty!16143) (not b!2138721) (not b_lambda!70599) (not b_lambda!70611) (not b_lambda!70597) (not mapNonEmpty!12991) (not b!2138735) (not b!2138567) (not b!2138728) (not b!2138744) (not b_next!63525) (not b!2138740) (not b!2138882) (not b!2138835) (not b!2138702) (not b!2138876) tp_is_empty!9505 (not b!2138832) (not b!2138760) b_and!172397 (not b!2138612) (not b!2138569) (not b!2138664) (not b!2138668) (not b!2138628) (not b!2138655) (not d!644625) (not b!2138722) (not b!2138706) (not d!644613) (not b!2138852) (not b!2138813) (not b!2138622) (not d!644545) (not b!2138662) (not b!2138720) (not b!2138690) (not b!2138858) (not setNonEmpty!16141) (not d!644577) (not setNonEmpty!16132) (not b!2138748) (not d!644587) (not d!644537) (not b!2138881) (not b!2138866) (not b!2138828) (not b!2138791) (not b!2138661) (not b!2138808) (not b!2138700) (not d!644503) (not setNonEmpty!16165) (not b!2138657) (not b!2138822) (not b!2138627) (not b!2138738) (not b!2138705) (not b!2138801) (not setNonEmpty!16176) (not b!2138742) (not setNonEmpty!16137) (not b!2138830) (not b!2138842) (not d!644549) (not b!2138779) (not b!2138829) (not b!2138681) (not b!2138802) (not d!644635) (not b!2138766) (not setNonEmpty!16151) (not b!2138864) (not d!644559) (not setNonEmpty!16134) (not b!2138616) (not d!644571) (not b!2138752) (not b!2138817) (not setNonEmpty!16171) (not b!2138809) (not setNonEmpty!16149) (not d!644531) (not d!644633) (not b!2138724) (not b!2138581) (not d!644519) (not setNonEmpty!16148) (not b!2138840) (not d!644515) (not b!2138631) (not b!2138799) (not b!2138755) (not setNonEmpty!16170) (not b!2138601) (not d!644493) (not b!2138536) (not b!2138730) (not b!2138816) (not d!644499) (not b!2138697) (not b!2138757) (not b!2138630) (not b_lambda!70613) (not b!2138669) (not setNonEmpty!16135) (not d!644623) (not b!2138667) (not b!2138786) (not b!2138854) (not b!2138784) (not b!2138778) (not b!2138754) (not b!2138678) (not b!2138618) (not setNonEmpty!16164) (not b!2138865) (not b!2138875) (not b!2138806) (not setNonEmpty!16140) (not b!2138610) (not b!2138804) (not b!2138796) (not d!644581) (not b!2138800) (not bs!445090) (not d!644509) (not b!2138767) (not setNonEmpty!16158) (not b!2138550) (not b!2138703) (not b!2138604) (not b!2138723) (not b!2138824) (not d!644511) (not b!2138736) (not b!2138789) (not setNonEmpty!16157) (not b!2138747) (not b!2138805) (not b!2138771) (not b!2138839) (not d!644555) (not b!2138878) (not mapNonEmpty!12993) (not setNonEmpty!16169) (not b!2138732) (not b!2138803) (not d!644599) (not b!2138734) (not b!2138768) (not b!2138756) (not setNonEmpty!16173) (not b!2138790) (not d!644637) (not setNonEmpty!16133) (not d!644521) (not b!2138532) (not b!2138844) (not b!2138575) (not b!2138746) (not b!2138750) (not d!644619) (not b!2138659) (not b!2138743) (not setNonEmpty!16142) (not b!2138847) (not setNonEmpty!16177) (not b!2138843) (not setNonEmpty!16138) (not b!2138851) (not b!2138764) (not b_next!63517) (not b!2138820) (not b!2138780) (not b!2138683) (not setNonEmpty!16139) (not b!2138798) (not b!2138633) (not d!644497) (not b!2138625) (not b_next!63521) (not b!2138753) (not b!2138849) (not d!644631) (not b!2138749) (not b!2138863) (not d!644543) (not setNonEmpty!16147) (not b!2138737) (not b!2138614) (not b!2138807) (not b!2138826) (not b!2138719))
(check-sat (not b_next!63527) (not b_next!63519) b_and!172403 b_and!172401 b_and!172395 b_and!172393 b_and!172399 (not b_next!63523) (not b_next!63525) b_and!172397 (not b_next!63517) (not b_next!63521))
