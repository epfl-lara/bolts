; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270842 () Bool)

(assert start!270842)

(declare-fun b!2801040 () Bool)

(declare-fun b_free!79437 () Bool)

(declare-fun b_next!80141 () Bool)

(assert (=> b!2801040 (= b_free!79437 (not b_next!80141))))

(declare-fun tp!892592 () Bool)

(declare-fun b_and!204175 () Bool)

(assert (=> b!2801040 (= tp!892592 b_and!204175)))

(declare-fun b!2801021 () Bool)

(declare-fun b_free!79439 () Bool)

(declare-fun b_next!80143 () Bool)

(assert (=> b!2801021 (= b_free!79439 (not b_next!80143))))

(declare-fun tp!892589 () Bool)

(declare-fun b_and!204177 () Bool)

(assert (=> b!2801021 (= tp!892589 b_and!204177)))

(declare-fun b!2801036 () Bool)

(declare-fun b_free!79441 () Bool)

(declare-fun b_next!80145 () Bool)

(assert (=> b!2801036 (= b_free!79441 (not b_next!80145))))

(declare-fun tp!892580 () Bool)

(declare-fun b_and!204179 () Bool)

(assert (=> b!2801036 (= tp!892580 b_and!204179)))

(declare-fun b!2801028 () Bool)

(declare-fun b_free!79443 () Bool)

(declare-fun b_next!80147 () Bool)

(assert (=> b!2801028 (= b_free!79443 (not b_next!80147))))

(declare-fun tp!892584 () Bool)

(declare-fun b_and!204181 () Bool)

(assert (=> b!2801028 (= tp!892584 b_and!204181)))

(declare-fun b!2801015 () Bool)

(declare-fun res!1167296 () Bool)

(declare-fun e!1769962 () Bool)

(assert (=> b!2801015 (=> res!1167296 e!1769962)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2801015 (= res!1167296 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2801016 () Bool)

(declare-fun e!1769961 () Bool)

(declare-fun e!1769945 () Bool)

(assert (=> b!2801016 (= e!1769961 e!1769945)))

(declare-fun res!1167298 () Bool)

(assert (=> b!2801016 (=> res!1167298 e!1769945)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!16608 0))(
  ( (C!16609 (val!10238 Int)) )
))
(declare-datatypes ((Regex!8225 0))(
  ( (ElementMatch!8225 (c!454125 C!16608)) (Concat!13313 (regOne!16962 Regex!8225) (regTwo!16962 Regex!8225)) (EmptyExpr!8225) (Star!8225 (reg!8554 Regex!8225)) (EmptyLang!8225) (Union!8225 (regOne!16963 Regex!8225) (regTwo!16963 Regex!8225)) )
))
(declare-datatypes ((List!32665 0))(
  ( (Nil!32565) (Cons!32565 (h!37985 Regex!8225) (t!228830 List!32665)) )
))
(declare-datatypes ((Context!4886 0))(
  ( (Context!4887 (exprs!2943 List!32665)) )
))
(declare-fun z!3684 () (InoxSet Context!4886))

(declare-fun nullableZipper!662 ((InoxSet Context!4886)) Bool)

(assert (=> b!2801016 (= res!1167298 (nullableZipper!662 z!3684))))

(declare-datatypes ((List!32666 0))(
  ( (Nil!32566) (Cons!32566 (h!37986 C!16608) (t!228831 List!32666)) )
))
(declare-fun lt!1001367 () List!32666)

(declare-fun lt!1001366 () List!32666)

(declare-fun lt!1001381 () List!32666)

(declare-fun ++!8028 (List!32666 List!32666) List!32666)

(assert (=> b!2801016 (= (++!8028 lt!1001367 lt!1001366) lt!1001381)))

(declare-fun testedP!183 () List!32666)

(declare-fun lt!1001359 () C!16608)

(assert (=> b!2801016 (= lt!1001367 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566)))))

(declare-datatypes ((Unit!46678 0))(
  ( (Unit!46679) )
))
(declare-fun lt!1001365 () Unit!46678)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!898 (List!32666 C!16608 List!32666 List!32666) Unit!46678)

(assert (=> b!2801016 (= lt!1001365 (lemmaMoveElementToOtherListKeepsConcatEq!898 testedP!183 lt!1001359 lt!1001366 lt!1001381))))

(declare-fun testedSuffix!143 () List!32666)

(declare-fun tail!4434 (List!32666) List!32666)

(assert (=> b!2801016 (= lt!1001366 (tail!4434 testedSuffix!143))))

(declare-fun lt!1001372 () List!32666)

(declare-fun isPrefix!2640 (List!32666 List!32666) Bool)

(declare-fun head!6207 (List!32666) C!16608)

(assert (=> b!2801016 (isPrefix!2640 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566)) lt!1001381)))

(declare-fun lt!1001377 () Unit!46678)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!490 (List!32666 List!32666) Unit!46678)

(assert (=> b!2801016 (= lt!1001377 (lemmaAddHeadSuffixToPrefixStillPrefix!490 testedP!183 lt!1001381))))

(declare-fun b!2801017 () Bool)

(declare-fun e!1769957 () Bool)

(declare-fun e!1769942 () Bool)

(assert (=> b!2801017 (= e!1769957 e!1769942)))

(declare-fun res!1167297 () Bool)

(assert (=> b!2801017 (=> (not res!1167297) (not e!1769942))))

(declare-fun lt!1001362 () Int)

(assert (=> b!2801017 (= res!1167297 (= testedPSize!143 lt!1001362))))

(declare-fun size!25423 (List!32666) Int)

(assert (=> b!2801017 (= lt!1001362 (size!25423 testedP!183))))

(declare-fun b!2801018 () Bool)

(declare-fun e!1769949 () Bool)

(declare-fun e!1769960 () Bool)

(assert (=> b!2801018 (= e!1769949 e!1769960)))

(declare-fun b!2801019 () Bool)

(declare-fun e!1769947 () Bool)

(declare-fun e!1769937 () Bool)

(assert (=> b!2801019 (= e!1769947 e!1769937)))

(declare-fun e!1769936 () Bool)

(declare-fun e!1769943 () Bool)

(assert (=> b!2801021 (= e!1769936 (and e!1769943 tp!892589))))

(declare-fun b!2801022 () Bool)

(declare-fun e!1769939 () Bool)

(declare-fun e!1769944 () Bool)

(assert (=> b!2801022 (= e!1769939 e!1769944)))

(declare-fun b!2801023 () Bool)

(declare-fun e!1769953 () Bool)

(declare-datatypes ((IArray!20169 0))(
  ( (IArray!20170 (innerList!10142 List!32666)) )
))
(declare-datatypes ((Conc!10082 0))(
  ( (Node!10082 (left!24594 Conc!10082) (right!24924 Conc!10082) (csize!20394 Int) (cheight!10293 Int)) (Leaf!15363 (xs!13194 IArray!20169) (csize!20395 Int)) (Empty!10082) )
))
(declare-datatypes ((BalanceConc!19778 0))(
  ( (BalanceConc!19779 (c!454126 Conc!10082)) )
))
(declare-fun totalInput!758 () BalanceConc!19778)

(declare-fun tp!892587 () Bool)

(declare-fun inv!44228 (Conc!10082) Bool)

(assert (=> b!2801023 (= e!1769953 (and (inv!44228 (c!454126 totalInput!758)) tp!892587))))

(declare-fun b!2801024 () Bool)

(declare-fun e!1769959 () Bool)

(declare-fun e!1769963 () Bool)

(assert (=> b!2801024 (= e!1769959 e!1769963)))

(declare-fun res!1167287 () Bool)

(assert (=> b!2801024 (=> res!1167287 e!1769963)))

(assert (=> b!2801024 (= res!1167287 (not (= lt!1001359 (head!6207 testedSuffix!143))))))

(declare-fun apply!7615 (BalanceConc!19778 Int) C!16608)

(assert (=> b!2801024 (= lt!1001359 (apply!7615 totalInput!758 testedPSize!143))))

(declare-fun drop!1754 (List!32666 Int) List!32666)

(declare-fun apply!7616 (List!32666 Int) C!16608)

(assert (=> b!2801024 (= (head!6207 (drop!1754 lt!1001381 testedPSize!143)) (apply!7616 lt!1001381 testedPSize!143))))

(declare-fun lt!1001376 () Unit!46678)

(declare-fun lemmaDropApply!958 (List!32666 Int) Unit!46678)

(assert (=> b!2801024 (= lt!1001376 (lemmaDropApply!958 lt!1001381 testedPSize!143))))

(declare-fun lt!1001371 () List!32666)

(declare-fun lt!1001374 () List!32666)

(assert (=> b!2801024 (not (or (not (= lt!1001371 testedP!183)) (not (= lt!1001374 testedSuffix!143))))))

(declare-fun lt!1001382 () Unit!46678)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!388 (List!32666 List!32666 List!32666 List!32666) Unit!46678)

(assert (=> b!2801024 (= lt!1001382 (lemmaConcatSameAndSameSizesThenSameLists!388 lt!1001371 lt!1001374 testedP!183 testedSuffix!143))))

(declare-fun b!2801025 () Bool)

(declare-fun e!1769938 () Bool)

(declare-fun tp!892586 () Bool)

(assert (=> b!2801025 (= e!1769938 tp!892586)))

(declare-fun b!2801026 () Bool)

(declare-fun e!1769941 () Bool)

(declare-fun tp!892596 () Bool)

(declare-fun mapRes!18359 () Bool)

(assert (=> b!2801026 (= e!1769941 (and tp!892596 mapRes!18359))))

(declare-fun condMapEmpty!18360 () Bool)

(declare-datatypes ((Hashable!3956 0))(
  ( (HashableExt!3955 (__x!21770 Int)) )
))
(declare-datatypes ((tuple2!33196 0))(
  ( (tuple2!33197 (_1!19669 Context!4886) (_2!19669 C!16608)) )
))
(declare-datatypes ((tuple2!33198 0))(
  ( (tuple2!33199 (_1!19670 tuple2!33196) (_2!19670 (InoxSet Context!4886))) )
))
(declare-datatypes ((List!32667 0))(
  ( (Nil!32567) (Cons!32567 (h!37987 tuple2!33198) (t!228832 List!32667)) )
))
(declare-datatypes ((array!14359 0))(
  ( (array!14360 (arr!6398 (Array (_ BitVec 32) List!32667)) (size!25424 (_ BitVec 32))) )
))
(declare-datatypes ((array!14361 0))(
  ( (array!14362 (arr!6399 (Array (_ BitVec 32) (_ BitVec 64))) (size!25425 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8080 0))(
  ( (LongMapFixedSize!8081 (defaultEntry!4425 Int) (mask!9889 (_ BitVec 32)) (extraKeys!4289 (_ BitVec 32)) (zeroValue!4299 List!32667) (minValue!4299 List!32667) (_size!8123 (_ BitVec 32)) (_keys!4340 array!14361) (_values!4321 array!14359) (_vacant!4101 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15969 0))(
  ( (Cell!15970 (v!34167 LongMapFixedSize!8080)) )
))
(declare-datatypes ((MutLongMap!4040 0))(
  ( (LongMap!4040 (underlying!8283 Cell!15969)) (MutLongMapExt!4039 (__x!21771 Int)) )
))
(declare-datatypes ((Cell!15971 0))(
  ( (Cell!15972 (v!34168 MutLongMap!4040)) )
))
(declare-datatypes ((MutableMap!3946 0))(
  ( (MutableMapExt!3945 (__x!21772 Int)) (HashMap!3946 (underlying!8284 Cell!15971) (hashF!5988 Hashable!3956) (_size!8124 (_ BitVec 32)) (defaultValue!4117 Int)) )
))
(declare-datatypes ((CacheUp!2648 0))(
  ( (CacheUp!2649 (cache!4089 MutableMap!3946)) )
))
(declare-fun cacheUp!890 () CacheUp!2648)

(declare-fun mapDefault!18359 () List!32667)

(assert (=> b!2801026 (= condMapEmpty!18360 (= (arr!6398 (_values!4321 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32667)) mapDefault!18359)))))

(declare-fun b!2801027 () Bool)

(declare-fun e!1769954 () Bool)

(declare-fun lt!1001370 () MutLongMap!4040)

(get-info :version)

(assert (=> b!2801027 (= e!1769943 (and e!1769954 ((_ is LongMap!4040) lt!1001370)))))

(assert (=> b!2801027 (= lt!1001370 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))

(declare-fun e!1769958 () Bool)

(declare-fun tp!892593 () Bool)

(declare-fun tp!892595 () Bool)

(declare-datatypes ((tuple3!5202 0))(
  ( (tuple3!5203 (_1!19671 Regex!8225) (_2!19671 Context!4886) (_3!3071 C!16608)) )
))
(declare-datatypes ((tuple2!33200 0))(
  ( (tuple2!33201 (_1!19672 tuple3!5202) (_2!19672 (InoxSet Context!4886))) )
))
(declare-datatypes ((List!32668 0))(
  ( (Nil!32568) (Cons!32568 (h!37988 tuple2!33200) (t!228833 List!32668)) )
))
(declare-datatypes ((array!14363 0))(
  ( (array!14364 (arr!6400 (Array (_ BitVec 32) List!32668)) (size!25426 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8082 0))(
  ( (LongMapFixedSize!8083 (defaultEntry!4426 Int) (mask!9890 (_ BitVec 32)) (extraKeys!4290 (_ BitVec 32)) (zeroValue!4300 List!32668) (minValue!4300 List!32668) (_size!8125 (_ BitVec 32)) (_keys!4341 array!14361) (_values!4322 array!14363) (_vacant!4102 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15973 0))(
  ( (Cell!15974 (v!34169 LongMapFixedSize!8082)) )
))
(declare-datatypes ((MutLongMap!4041 0))(
  ( (LongMap!4041 (underlying!8285 Cell!15973)) (MutLongMapExt!4040 (__x!21773 Int)) )
))
(declare-datatypes ((Cell!15975 0))(
  ( (Cell!15976 (v!34170 MutLongMap!4041)) )
))
(declare-datatypes ((Hashable!3957 0))(
  ( (HashableExt!3956 (__x!21774 Int)) )
))
(declare-datatypes ((MutableMap!3947 0))(
  ( (MutableMapExt!3946 (__x!21775 Int)) (HashMap!3947 (underlying!8286 Cell!15975) (hashF!5989 Hashable!3957) (_size!8126 (_ BitVec 32)) (defaultValue!4118 Int)) )
))
(declare-datatypes ((CacheDown!2776 0))(
  ( (CacheDown!2777 (cache!4090 MutableMap!3947)) )
))
(declare-fun cacheDown!1009 () CacheDown!2776)

(declare-fun array_inv!4582 (array!14361) Bool)

(declare-fun array_inv!4583 (array!14363) Bool)

(assert (=> b!2801028 (= e!1769960 (and tp!892584 tp!892593 tp!892595 (array_inv!4582 (_keys!4341 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))) (array_inv!4583 (_values!4322 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))) e!1769958))))

(declare-fun b!2801029 () Bool)

(declare-fun e!1769964 () Bool)

(assert (=> b!2801029 (= e!1769964 e!1769936)))

(declare-fun b!2801030 () Bool)

(assert (=> b!2801030 (= e!1769945 (= (+ 1 testedPSize!143) (size!25423 lt!1001367)))))

(declare-datatypes ((tuple3!5204 0))(
  ( (tuple3!5205 (_1!19673 (InoxSet Context!4886)) (_2!19673 CacheUp!2648) (_3!3072 CacheDown!2776)) )
))
(declare-fun lt!1001363 () tuple3!5204)

(declare-fun derivationStepZipperMem!117 ((InoxSet Context!4886) C!16608 CacheUp!2648 CacheDown!2776) tuple3!5204)

(assert (=> b!2801030 (= lt!1001363 (derivationStepZipperMem!117 z!3684 lt!1001359 cacheUp!890 cacheDown!1009))))

(declare-fun b!2801031 () Bool)

(assert (=> b!2801031 (= e!1769954 e!1769947)))

(declare-fun mapNonEmpty!18359 () Bool)

(declare-fun tp!892591 () Bool)

(declare-fun tp!892581 () Bool)

(assert (=> mapNonEmpty!18359 (= mapRes!18359 (and tp!892591 tp!892581))))

(declare-fun mapValue!18359 () List!32667)

(declare-fun mapRest!18360 () (Array (_ BitVec 32) List!32667))

(declare-fun mapKey!18360 () (_ BitVec 32))

(assert (=> mapNonEmpty!18359 (= (arr!6398 (_values!4321 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))) (store mapRest!18360 mapKey!18360 mapValue!18359))))

(declare-fun b!2801032 () Bool)

(declare-fun res!1167292 () Bool)

(assert (=> b!2801032 (=> res!1167292 e!1769959)))

(declare-datatypes ((tuple2!33202 0))(
  ( (tuple2!33203 (_1!19674 BalanceConc!19778) (_2!19674 BalanceConc!19778)) )
))
(declare-fun lt!1001379 () tuple2!33202)

(declare-fun size!25427 (BalanceConc!19778) Int)

(assert (=> b!2801032 (= res!1167292 (not (= (size!25427 (_1!19674 lt!1001379)) testedPSize!143)))))

(declare-fun b!2801033 () Bool)

(declare-fun e!1769948 () Bool)

(assert (=> b!2801033 (= e!1769948 e!1769949)))

(declare-fun b!2801034 () Bool)

(declare-fun res!1167288 () Bool)

(declare-fun e!1769946 () Bool)

(assert (=> b!2801034 (=> (not res!1167288) (not e!1769946))))

(declare-fun valid!3162 (CacheDown!2776) Bool)

(assert (=> b!2801034 (= res!1167288 (valid!3162 cacheDown!1009))))

(declare-fun b!2801035 () Bool)

(assert (=> b!2801035 (= e!1769962 e!1769959)))

(declare-fun res!1167289 () Bool)

(assert (=> b!2801035 (=> res!1167289 e!1769959)))

(assert (=> b!2801035 (= res!1167289 (not (= (++!8028 lt!1001371 lt!1001374) lt!1001381)))))

(declare-fun list!12220 (BalanceConc!19778) List!32666)

(assert (=> b!2801035 (= lt!1001374 (list!12220 (_2!19674 lt!1001379)))))

(assert (=> b!2801035 (= lt!1001371 (list!12220 (_1!19674 lt!1001379)))))

(declare-fun splitAt!200 (BalanceConc!19778 Int) tuple2!33202)

(assert (=> b!2801035 (= lt!1001379 (splitAt!200 totalInput!758 testedPSize!143))))

(declare-fun e!1769935 () Bool)

(assert (=> b!2801036 (= e!1769944 (and e!1769935 tp!892580))))

(declare-fun res!1167290 () Bool)

(assert (=> start!270842 (=> (not res!1167290) (not e!1769957))))

(declare-fun lt!1001364 () List!32666)

(assert (=> start!270842 (= res!1167290 (= lt!1001364 lt!1001381))))

(assert (=> start!270842 (= lt!1001381 (list!12220 totalInput!758))))

(assert (=> start!270842 (= lt!1001364 (++!8028 testedP!183 testedSuffix!143))))

(assert (=> start!270842 e!1769957))

(declare-fun inv!44229 (BalanceConc!19778) Bool)

(assert (=> start!270842 (and (inv!44229 totalInput!758) e!1769953)))

(declare-fun condSetEmpty!24523 () Bool)

(assert (=> start!270842 (= condSetEmpty!24523 (= z!3684 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24523 () Bool)

(assert (=> start!270842 setRes!24523))

(assert (=> start!270842 true))

(declare-fun e!1769955 () Bool)

(assert (=> start!270842 e!1769955))

(declare-fun e!1769950 () Bool)

(assert (=> start!270842 e!1769950))

(declare-fun inv!44230 (CacheDown!2776) Bool)

(assert (=> start!270842 (and (inv!44230 cacheDown!1009) e!1769939)))

(declare-fun inv!44231 (CacheUp!2648) Bool)

(assert (=> start!270842 (and (inv!44231 cacheUp!890) e!1769964)))

(declare-fun b!2801020 () Bool)

(declare-fun e!1769940 () Bool)

(assert (=> b!2801020 (= e!1769940 e!1769962)))

(declare-fun res!1167299 () Bool)

(assert (=> b!2801020 (=> res!1167299 e!1769962)))

(declare-fun lostCauseZipper!511 ((InoxSet Context!4886)) Bool)

(assert (=> b!2801020 (= res!1167299 (lostCauseZipper!511 z!3684))))

(assert (=> b!2801020 (and (= testedSuffix!143 lt!1001372) (= lt!1001372 testedSuffix!143))))

(declare-fun lt!1001373 () Unit!46678)

(declare-fun lemmaSamePrefixThenSameSuffix!1214 (List!32666 List!32666 List!32666 List!32666 List!32666) Unit!46678)

(assert (=> b!2801020 (= lt!1001373 (lemmaSamePrefixThenSameSuffix!1214 testedP!183 testedSuffix!143 testedP!183 lt!1001372 lt!1001381))))

(declare-fun getSuffix!1316 (List!32666 List!32666) List!32666)

(assert (=> b!2801020 (= lt!1001372 (getSuffix!1316 lt!1001381 testedP!183))))

(declare-fun b!2801037 () Bool)

(assert (=> b!2801037 (= e!1769946 (not e!1769940))))

(declare-fun res!1167291 () Bool)

(assert (=> b!2801037 (=> res!1167291 e!1769940)))

(assert (=> b!2801037 (= res!1167291 (not (isPrefix!2640 testedP!183 lt!1001381)))))

(assert (=> b!2801037 (isPrefix!2640 testedP!183 lt!1001364)))

(declare-fun lt!1001375 () Unit!46678)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1746 (List!32666 List!32666) Unit!46678)

(assert (=> b!2801037 (= lt!1001375 (lemmaConcatTwoListThenFirstIsPrefix!1746 testedP!183 testedSuffix!143))))

(declare-fun setIsEmpty!24523 () Bool)

(assert (=> setIsEmpty!24523 setRes!24523))

(declare-fun b!2801038 () Bool)

(declare-fun e!1769952 () Unit!46678)

(declare-fun Unit!46680 () Unit!46678)

(assert (=> b!2801038 (= e!1769952 Unit!46680)))

(declare-fun lt!1001380 () Unit!46678)

(declare-fun lemmaIsPrefixRefl!1722 (List!32666 List!32666) Unit!46678)

(assert (=> b!2801038 (= lt!1001380 (lemmaIsPrefixRefl!1722 lt!1001381 lt!1001381))))

(assert (=> b!2801038 (isPrefix!2640 lt!1001381 lt!1001381)))

(declare-fun lt!1001378 () Unit!46678)

(declare-fun lemmaIsPrefixSameLengthThenSameList!498 (List!32666 List!32666 List!32666) Unit!46678)

(assert (=> b!2801038 (= lt!1001378 (lemmaIsPrefixSameLengthThenSameList!498 lt!1001381 testedP!183 lt!1001381))))

(assert (=> b!2801038 false))

(declare-fun mapIsEmpty!18359 () Bool)

(declare-fun mapRes!18360 () Bool)

(assert (=> mapIsEmpty!18359 mapRes!18360))

(declare-fun b!2801039 () Bool)

(declare-fun tp!892590 () Bool)

(assert (=> b!2801039 (= e!1769958 (and tp!892590 mapRes!18360))))

(declare-fun condMapEmpty!18359 () Bool)

(declare-fun mapDefault!18360 () List!32668)

(assert (=> b!2801039 (= condMapEmpty!18359 (= (arr!6400 (_values!4322 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32668)) mapDefault!18360)))))

(declare-fun tp!892598 () Bool)

(declare-fun tp!892583 () Bool)

(declare-fun array_inv!4584 (array!14359) Bool)

(assert (=> b!2801040 (= e!1769937 (and tp!892592 tp!892583 tp!892598 (array_inv!4582 (_keys!4340 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))) (array_inv!4584 (_values!4321 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))) e!1769941))))

(declare-fun mapIsEmpty!18360 () Bool)

(assert (=> mapIsEmpty!18360 mapRes!18359))

(declare-fun b!2801041 () Bool)

(declare-fun Unit!46681 () Unit!46678)

(assert (=> b!2801041 (= e!1769952 Unit!46681)))

(declare-fun mapNonEmpty!18360 () Bool)

(declare-fun tp!892585 () Bool)

(declare-fun tp!892594 () Bool)

(assert (=> mapNonEmpty!18360 (= mapRes!18360 (and tp!892585 tp!892594))))

(declare-fun mapKey!18359 () (_ BitVec 32))

(declare-fun mapRest!18359 () (Array (_ BitVec 32) List!32668))

(declare-fun mapValue!18360 () List!32668)

(assert (=> mapNonEmpty!18360 (= (arr!6400 (_values!4322 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))) (store mapRest!18359 mapKey!18359 mapValue!18360))))

(declare-fun b!2801042 () Bool)

(declare-fun res!1167294 () Bool)

(assert (=> b!2801042 (=> (not res!1167294) (not e!1769946))))

(declare-fun valid!3163 (CacheUp!2648) Bool)

(assert (=> b!2801042 (= res!1167294 (valid!3163 cacheUp!890))))

(declare-fun b!2801043 () Bool)

(declare-fun tp_is_empty!14263 () Bool)

(declare-fun tp!892582 () Bool)

(assert (=> b!2801043 (= e!1769955 (and tp_is_empty!14263 tp!892582))))

(declare-fun b!2801044 () Bool)

(declare-fun tp!892597 () Bool)

(assert (=> b!2801044 (= e!1769950 (and tp_is_empty!14263 tp!892597))))

(declare-fun setElem!24523 () Context!4886)

(declare-fun setNonEmpty!24523 () Bool)

(declare-fun tp!892588 () Bool)

(declare-fun inv!44232 (Context!4886) Bool)

(assert (=> setNonEmpty!24523 (= setRes!24523 (and tp!892588 (inv!44232 setElem!24523) e!1769938))))

(declare-fun setRest!24523 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24523 (= z!3684 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24523 true) setRest!24523))))

(declare-fun b!2801045 () Bool)

(assert (=> b!2801045 (= e!1769942 e!1769946)))

(declare-fun res!1167293 () Bool)

(assert (=> b!2801045 (=> (not res!1167293) (not e!1769946))))

(declare-fun lt!1001361 () Int)

(assert (=> b!2801045 (= res!1167293 (= totalInputSize!205 lt!1001361))))

(assert (=> b!2801045 (= lt!1001361 (size!25427 totalInput!758))))

(declare-fun b!2801046 () Bool)

(assert (=> b!2801046 (= e!1769963 e!1769961)))

(declare-fun res!1167295 () Bool)

(assert (=> b!2801046 (=> res!1167295 e!1769961)))

(assert (=> b!2801046 (= res!1167295 (>= lt!1001362 lt!1001361))))

(declare-fun lt!1001368 () Unit!46678)

(assert (=> b!2801046 (= lt!1001368 e!1769952)))

(declare-fun c!454124 () Bool)

(assert (=> b!2801046 (= c!454124 (= lt!1001362 lt!1001361))))

(assert (=> b!2801046 (<= lt!1001362 (size!25423 lt!1001381))))

(declare-fun lt!1001360 () Unit!46678)

(declare-fun lemmaIsPrefixThenSmallerEqSize!298 (List!32666 List!32666) Unit!46678)

(assert (=> b!2801046 (= lt!1001360 (lemmaIsPrefixThenSmallerEqSize!298 testedP!183 lt!1001381))))

(declare-fun b!2801047 () Bool)

(declare-fun lt!1001369 () MutLongMap!4041)

(assert (=> b!2801047 (= e!1769935 (and e!1769948 ((_ is LongMap!4041) lt!1001369)))))

(assert (=> b!2801047 (= lt!1001369 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))

(assert (= (and start!270842 res!1167290) b!2801017))

(assert (= (and b!2801017 res!1167297) b!2801045))

(assert (= (and b!2801045 res!1167293) b!2801042))

(assert (= (and b!2801042 res!1167294) b!2801034))

(assert (= (and b!2801034 res!1167288) b!2801037))

(assert (= (and b!2801037 (not res!1167291)) b!2801020))

(assert (= (and b!2801020 (not res!1167299)) b!2801015))

(assert (= (and b!2801015 (not res!1167296)) b!2801035))

(assert (= (and b!2801035 (not res!1167289)) b!2801032))

(assert (= (and b!2801032 (not res!1167292)) b!2801024))

(assert (= (and b!2801024 (not res!1167287)) b!2801046))

(assert (= (and b!2801046 c!454124) b!2801038))

(assert (= (and b!2801046 (not c!454124)) b!2801041))

(assert (= (and b!2801046 (not res!1167295)) b!2801016))

(assert (= (and b!2801016 (not res!1167298)) b!2801030))

(assert (= start!270842 b!2801023))

(assert (= (and start!270842 condSetEmpty!24523) setIsEmpty!24523))

(assert (= (and start!270842 (not condSetEmpty!24523)) setNonEmpty!24523))

(assert (= setNonEmpty!24523 b!2801025))

(assert (= (and start!270842 ((_ is Cons!32566) testedP!183)) b!2801043))

(assert (= (and start!270842 ((_ is Cons!32566) testedSuffix!143)) b!2801044))

(assert (= (and b!2801039 condMapEmpty!18359) mapIsEmpty!18359))

(assert (= (and b!2801039 (not condMapEmpty!18359)) mapNonEmpty!18360))

(assert (= b!2801028 b!2801039))

(assert (= b!2801018 b!2801028))

(assert (= b!2801033 b!2801018))

(assert (= (and b!2801047 ((_ is LongMap!4041) (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))) b!2801033))

(assert (= b!2801036 b!2801047))

(assert (= (and b!2801022 ((_ is HashMap!3947) (cache!4090 cacheDown!1009))) b!2801036))

(assert (= start!270842 b!2801022))

(assert (= (and b!2801026 condMapEmpty!18360) mapIsEmpty!18360))

(assert (= (and b!2801026 (not condMapEmpty!18360)) mapNonEmpty!18359))

(assert (= b!2801040 b!2801026))

(assert (= b!2801019 b!2801040))

(assert (= b!2801031 b!2801019))

(assert (= (and b!2801027 ((_ is LongMap!4040) (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))) b!2801031))

(assert (= b!2801021 b!2801027))

(assert (= (and b!2801029 ((_ is HashMap!3946) (cache!4089 cacheUp!890))) b!2801021))

(assert (= start!270842 b!2801029))

(declare-fun m!3230569 () Bool)

(assert (=> b!2801034 m!3230569))

(declare-fun m!3230571 () Bool)

(assert (=> b!2801035 m!3230571))

(declare-fun m!3230573 () Bool)

(assert (=> b!2801035 m!3230573))

(declare-fun m!3230575 () Bool)

(assert (=> b!2801035 m!3230575))

(declare-fun m!3230577 () Bool)

(assert (=> b!2801035 m!3230577))

(declare-fun m!3230579 () Bool)

(assert (=> b!2801017 m!3230579))

(declare-fun m!3230581 () Bool)

(assert (=> b!2801016 m!3230581))

(declare-fun m!3230583 () Bool)

(assert (=> b!2801016 m!3230583))

(declare-fun m!3230585 () Bool)

(assert (=> b!2801016 m!3230585))

(declare-fun m!3230587 () Bool)

(assert (=> b!2801016 m!3230587))

(declare-fun m!3230589 () Bool)

(assert (=> b!2801016 m!3230589))

(declare-fun m!3230591 () Bool)

(assert (=> b!2801016 m!3230591))

(declare-fun m!3230593 () Bool)

(assert (=> b!2801016 m!3230593))

(assert (=> b!2801016 m!3230591))

(declare-fun m!3230595 () Bool)

(assert (=> b!2801016 m!3230595))

(declare-fun m!3230597 () Bool)

(assert (=> b!2801016 m!3230597))

(declare-fun m!3230599 () Bool)

(assert (=> b!2801023 m!3230599))

(declare-fun m!3230601 () Bool)

(assert (=> b!2801037 m!3230601))

(declare-fun m!3230603 () Bool)

(assert (=> b!2801037 m!3230603))

(declare-fun m!3230605 () Bool)

(assert (=> b!2801037 m!3230605))

(declare-fun m!3230607 () Bool)

(assert (=> setNonEmpty!24523 m!3230607))

(declare-fun m!3230609 () Bool)

(assert (=> b!2801045 m!3230609))

(declare-fun m!3230611 () Bool)

(assert (=> b!2801020 m!3230611))

(declare-fun m!3230613 () Bool)

(assert (=> b!2801020 m!3230613))

(declare-fun m!3230615 () Bool)

(assert (=> b!2801020 m!3230615))

(declare-fun m!3230617 () Bool)

(assert (=> b!2801030 m!3230617))

(declare-fun m!3230619 () Bool)

(assert (=> b!2801030 m!3230619))

(declare-fun m!3230621 () Bool)

(assert (=> b!2801040 m!3230621))

(declare-fun m!3230623 () Bool)

(assert (=> b!2801040 m!3230623))

(declare-fun m!3230625 () Bool)

(assert (=> mapNonEmpty!18360 m!3230625))

(declare-fun m!3230627 () Bool)

(assert (=> start!270842 m!3230627))

(declare-fun m!3230629 () Bool)

(assert (=> start!270842 m!3230629))

(declare-fun m!3230631 () Bool)

(assert (=> start!270842 m!3230631))

(declare-fun m!3230633 () Bool)

(assert (=> start!270842 m!3230633))

(declare-fun m!3230635 () Bool)

(assert (=> start!270842 m!3230635))

(declare-fun m!3230637 () Bool)

(assert (=> mapNonEmpty!18359 m!3230637))

(declare-fun m!3230639 () Bool)

(assert (=> b!2801042 m!3230639))

(declare-fun m!3230641 () Bool)

(assert (=> b!2801024 m!3230641))

(declare-fun m!3230643 () Bool)

(assert (=> b!2801024 m!3230643))

(declare-fun m!3230645 () Bool)

(assert (=> b!2801024 m!3230645))

(declare-fun m!3230647 () Bool)

(assert (=> b!2801024 m!3230647))

(declare-fun m!3230649 () Bool)

(assert (=> b!2801024 m!3230649))

(assert (=> b!2801024 m!3230641))

(declare-fun m!3230651 () Bool)

(assert (=> b!2801024 m!3230651))

(declare-fun m!3230653 () Bool)

(assert (=> b!2801024 m!3230653))

(declare-fun m!3230655 () Bool)

(assert (=> b!2801028 m!3230655))

(declare-fun m!3230657 () Bool)

(assert (=> b!2801028 m!3230657))

(declare-fun m!3230659 () Bool)

(assert (=> b!2801038 m!3230659))

(declare-fun m!3230661 () Bool)

(assert (=> b!2801038 m!3230661))

(declare-fun m!3230663 () Bool)

(assert (=> b!2801038 m!3230663))

(declare-fun m!3230665 () Bool)

(assert (=> b!2801032 m!3230665))

(declare-fun m!3230667 () Bool)

(assert (=> b!2801046 m!3230667))

(declare-fun m!3230669 () Bool)

(assert (=> b!2801046 m!3230669))

(check-sat (not b!2801023) (not mapNonEmpty!18359) (not b!2801025) (not b_next!80141) (not setNonEmpty!24523) (not b!2801020) (not b!2801016) (not b!2801032) (not b!2801040) tp_is_empty!14263 (not b!2801046) (not b_next!80143) (not b!2801045) b_and!204175 (not b!2801026) (not b!2801039) b_and!204179 (not b!2801038) b_and!204181 (not b!2801042) b_and!204177 (not b!2801035) (not b!2801043) (not b!2801024) (not mapNonEmpty!18360) (not b!2801037) (not b!2801017) (not b!2801044) (not b!2801030) (not b_next!80147) (not start!270842) (not b!2801034) (not b!2801028) (not b_next!80145))
(check-sat (not b_next!80143) b_and!204175 b_and!204179 b_and!204181 (not b_next!80141) b_and!204177 (not b_next!80147) (not b_next!80145))
(get-model)

(declare-fun d!813601 () Bool)

(assert (=> d!813601 (isPrefix!2640 lt!1001381 lt!1001381)))

(declare-fun lt!1001385 () Unit!46678)

(declare-fun choose!16499 (List!32666 List!32666) Unit!46678)

(assert (=> d!813601 (= lt!1001385 (choose!16499 lt!1001381 lt!1001381))))

(assert (=> d!813601 (= (lemmaIsPrefixRefl!1722 lt!1001381 lt!1001381) lt!1001385)))

(declare-fun bs!515580 () Bool)

(assert (= bs!515580 d!813601))

(assert (=> bs!515580 m!3230661))

(declare-fun m!3230671 () Bool)

(assert (=> bs!515580 m!3230671))

(assert (=> b!2801038 d!813601))

(declare-fun b!2801056 () Bool)

(declare-fun e!1769971 () Bool)

(declare-fun e!1769973 () Bool)

(assert (=> b!2801056 (= e!1769971 e!1769973)))

(declare-fun res!1167310 () Bool)

(assert (=> b!2801056 (=> (not res!1167310) (not e!1769973))))

(assert (=> b!2801056 (= res!1167310 (not ((_ is Nil!32566) lt!1001381)))))

(declare-fun d!813603 () Bool)

(declare-fun e!1769972 () Bool)

(assert (=> d!813603 e!1769972))

(declare-fun res!1167309 () Bool)

(assert (=> d!813603 (=> res!1167309 e!1769972)))

(declare-fun lt!1001388 () Bool)

(assert (=> d!813603 (= res!1167309 (not lt!1001388))))

(assert (=> d!813603 (= lt!1001388 e!1769971)))

(declare-fun res!1167308 () Bool)

(assert (=> d!813603 (=> res!1167308 e!1769971)))

(assert (=> d!813603 (= res!1167308 ((_ is Nil!32566) lt!1001381))))

(assert (=> d!813603 (= (isPrefix!2640 lt!1001381 lt!1001381) lt!1001388)))

(declare-fun b!2801057 () Bool)

(declare-fun res!1167311 () Bool)

(assert (=> b!2801057 (=> (not res!1167311) (not e!1769973))))

(assert (=> b!2801057 (= res!1167311 (= (head!6207 lt!1001381) (head!6207 lt!1001381)))))

(declare-fun b!2801059 () Bool)

(assert (=> b!2801059 (= e!1769972 (>= (size!25423 lt!1001381) (size!25423 lt!1001381)))))

(declare-fun b!2801058 () Bool)

(assert (=> b!2801058 (= e!1769973 (isPrefix!2640 (tail!4434 lt!1001381) (tail!4434 lt!1001381)))))

(assert (= (and d!813603 (not res!1167308)) b!2801056))

(assert (= (and b!2801056 res!1167310) b!2801057))

(assert (= (and b!2801057 res!1167311) b!2801058))

(assert (= (and d!813603 (not res!1167309)) b!2801059))

(declare-fun m!3230673 () Bool)

(assert (=> b!2801057 m!3230673))

(assert (=> b!2801057 m!3230673))

(assert (=> b!2801059 m!3230667))

(assert (=> b!2801059 m!3230667))

(declare-fun m!3230675 () Bool)

(assert (=> b!2801058 m!3230675))

(assert (=> b!2801058 m!3230675))

(assert (=> b!2801058 m!3230675))

(assert (=> b!2801058 m!3230675))

(declare-fun m!3230677 () Bool)

(assert (=> b!2801058 m!3230677))

(assert (=> b!2801038 d!813603))

(declare-fun d!813605 () Bool)

(assert (=> d!813605 (= lt!1001381 testedP!183)))

(declare-fun lt!1001391 () Unit!46678)

(declare-fun choose!16500 (List!32666 List!32666 List!32666) Unit!46678)

(assert (=> d!813605 (= lt!1001391 (choose!16500 lt!1001381 testedP!183 lt!1001381))))

(assert (=> d!813605 (isPrefix!2640 lt!1001381 lt!1001381)))

(assert (=> d!813605 (= (lemmaIsPrefixSameLengthThenSameList!498 lt!1001381 testedP!183 lt!1001381) lt!1001391)))

(declare-fun bs!515581 () Bool)

(assert (= bs!515581 d!813605))

(declare-fun m!3230679 () Bool)

(assert (=> bs!515581 m!3230679))

(assert (=> bs!515581 m!3230661))

(assert (=> b!2801038 d!813605))

(declare-fun d!813607 () Bool)

(declare-fun lt!1001394 () Int)

(assert (=> d!813607 (= lt!1001394 (size!25423 (list!12220 totalInput!758)))))

(declare-fun size!25428 (Conc!10082) Int)

(assert (=> d!813607 (= lt!1001394 (size!25428 (c!454126 totalInput!758)))))

(assert (=> d!813607 (= (size!25427 totalInput!758) lt!1001394)))

(declare-fun bs!515582 () Bool)

(assert (= bs!515582 d!813607))

(assert (=> bs!515582 m!3230627))

(assert (=> bs!515582 m!3230627))

(declare-fun m!3230681 () Bool)

(assert (=> bs!515582 m!3230681))

(declare-fun m!3230683 () Bool)

(assert (=> bs!515582 m!3230683))

(assert (=> b!2801045 d!813607))

(declare-fun d!813609 () Bool)

(declare-fun lt!1001397 () Int)

(assert (=> d!813609 (>= lt!1001397 0)))

(declare-fun e!1769976 () Int)

(assert (=> d!813609 (= lt!1001397 e!1769976)))

(declare-fun c!454129 () Bool)

(assert (=> d!813609 (= c!454129 ((_ is Nil!32566) lt!1001367))))

(assert (=> d!813609 (= (size!25423 lt!1001367) lt!1001397)))

(declare-fun b!2801064 () Bool)

(assert (=> b!2801064 (= e!1769976 0)))

(declare-fun b!2801065 () Bool)

(assert (=> b!2801065 (= e!1769976 (+ 1 (size!25423 (t!228831 lt!1001367))))))

(assert (= (and d!813609 c!454129) b!2801064))

(assert (= (and d!813609 (not c!454129)) b!2801065))

(declare-fun m!3230685 () Bool)

(assert (=> b!2801065 m!3230685))

(assert (=> b!2801030 d!813609))

(declare-fun d!813611 () Bool)

(declare-fun e!1769979 () Bool)

(assert (=> d!813611 e!1769979))

(declare-fun res!1167316 () Bool)

(assert (=> d!813611 (=> (not res!1167316) (not e!1769979))))

(declare-fun lt!1001400 () tuple3!5204)

(declare-fun derivationStepZipper!380 ((InoxSet Context!4886) C!16608) (InoxSet Context!4886))

(assert (=> d!813611 (= res!1167316 (= (_1!19673 lt!1001400) (derivationStepZipper!380 z!3684 lt!1001359)))))

(declare-fun choose!16501 ((InoxSet Context!4886) C!16608 CacheUp!2648 CacheDown!2776) tuple3!5204)

(assert (=> d!813611 (= lt!1001400 (choose!16501 z!3684 lt!1001359 cacheUp!890 cacheDown!1009))))

(assert (=> d!813611 (= (derivationStepZipperMem!117 z!3684 lt!1001359 cacheUp!890 cacheDown!1009) lt!1001400)))

(declare-fun b!2801070 () Bool)

(declare-fun res!1167317 () Bool)

(assert (=> b!2801070 (=> (not res!1167317) (not e!1769979))))

(assert (=> b!2801070 (= res!1167317 (valid!3163 (_2!19673 lt!1001400)))))

(declare-fun b!2801071 () Bool)

(assert (=> b!2801071 (= e!1769979 (valid!3162 (_3!3072 lt!1001400)))))

(assert (= (and d!813611 res!1167316) b!2801070))

(assert (= (and b!2801070 res!1167317) b!2801071))

(declare-fun m!3230687 () Bool)

(assert (=> d!813611 m!3230687))

(declare-fun m!3230689 () Bool)

(assert (=> d!813611 m!3230689))

(declare-fun m!3230691 () Bool)

(assert (=> b!2801070 m!3230691))

(declare-fun m!3230693 () Bool)

(assert (=> b!2801071 m!3230693))

(assert (=> b!2801030 d!813611))

(declare-fun d!813613 () Bool)

(declare-fun lt!1001401 () Int)

(assert (=> d!813613 (>= lt!1001401 0)))

(declare-fun e!1769980 () Int)

(assert (=> d!813613 (= lt!1001401 e!1769980)))

(declare-fun c!454130 () Bool)

(assert (=> d!813613 (= c!454130 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813613 (= (size!25423 testedP!183) lt!1001401)))

(declare-fun b!2801072 () Bool)

(assert (=> b!2801072 (= e!1769980 0)))

(declare-fun b!2801073 () Bool)

(assert (=> b!2801073 (= e!1769980 (+ 1 (size!25423 (t!228831 testedP!183))))))

(assert (= (and d!813613 c!454130) b!2801072))

(assert (= (and d!813613 (not c!454130)) b!2801073))

(declare-fun m!3230695 () Bool)

(assert (=> b!2801073 m!3230695))

(assert (=> b!2801017 d!813613))

(declare-fun d!813615 () Bool)

(assert (=> d!813615 (= (array_inv!4582 (_keys!4341 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))) (bvsge (size!25425 (_keys!4341 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2801028 d!813615))

(declare-fun d!813617 () Bool)

(assert (=> d!813617 (= (array_inv!4583 (_values!4322 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))) (bvsge (size!25426 (_values!4322 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2801028 d!813617))

(declare-fun d!813619 () Bool)

(declare-fun lambda!102878 () Int)

(declare-fun forall!6710 (List!32665 Int) Bool)

(assert (=> d!813619 (= (inv!44232 setElem!24523) (forall!6710 (exprs!2943 setElem!24523) lambda!102878))))

(declare-fun bs!515583 () Bool)

(assert (= bs!515583 d!813619))

(declare-fun m!3230697 () Bool)

(assert (=> bs!515583 m!3230697))

(assert (=> setNonEmpty!24523 d!813619))

(declare-fun d!813621 () Bool)

(assert (=> d!813621 (= (array_inv!4582 (_keys!4340 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))) (bvsge (size!25425 (_keys!4340 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2801040 d!813621))

(declare-fun d!813623 () Bool)

(assert (=> d!813623 (= (array_inv!4584 (_values!4321 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))) (bvsge (size!25424 (_values!4321 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2801040 d!813623))

(declare-fun d!813625 () Bool)

(declare-fun res!1167320 () Bool)

(declare-fun e!1769983 () Bool)

(assert (=> d!813625 (=> (not res!1167320) (not e!1769983))))

(assert (=> d!813625 (= res!1167320 ((_ is HashMap!3946) (cache!4089 cacheUp!890)))))

(assert (=> d!813625 (= (inv!44231 cacheUp!890) e!1769983)))

(declare-fun b!2801076 () Bool)

(declare-fun validCacheMapUp!400 (MutableMap!3946) Bool)

(assert (=> b!2801076 (= e!1769983 (validCacheMapUp!400 (cache!4089 cacheUp!890)))))

(assert (= (and d!813625 res!1167320) b!2801076))

(declare-fun m!3230699 () Bool)

(assert (=> b!2801076 m!3230699))

(assert (=> start!270842 d!813625))

(declare-fun d!813627 () Bool)

(declare-fun isBalanced!3076 (Conc!10082) Bool)

(assert (=> d!813627 (= (inv!44229 totalInput!758) (isBalanced!3076 (c!454126 totalInput!758)))))

(declare-fun bs!515584 () Bool)

(assert (= bs!515584 d!813627))

(declare-fun m!3230701 () Bool)

(assert (=> bs!515584 m!3230701))

(assert (=> start!270842 d!813627))

(declare-fun d!813629 () Bool)

(declare-fun res!1167323 () Bool)

(declare-fun e!1769986 () Bool)

(assert (=> d!813629 (=> (not res!1167323) (not e!1769986))))

(assert (=> d!813629 (= res!1167323 ((_ is HashMap!3947) (cache!4090 cacheDown!1009)))))

(assert (=> d!813629 (= (inv!44230 cacheDown!1009) e!1769986)))

(declare-fun b!2801079 () Bool)

(declare-fun validCacheMapDown!431 (MutableMap!3947) Bool)

(assert (=> b!2801079 (= e!1769986 (validCacheMapDown!431 (cache!4090 cacheDown!1009)))))

(assert (= (and d!813629 res!1167323) b!2801079))

(declare-fun m!3230703 () Bool)

(assert (=> b!2801079 m!3230703))

(assert (=> start!270842 d!813629))

(declare-fun d!813631 () Bool)

(declare-fun list!12221 (Conc!10082) List!32666)

(assert (=> d!813631 (= (list!12220 totalInput!758) (list!12221 (c!454126 totalInput!758)))))

(declare-fun bs!515585 () Bool)

(assert (= bs!515585 d!813631))

(declare-fun m!3230705 () Bool)

(assert (=> bs!515585 m!3230705))

(assert (=> start!270842 d!813631))

(declare-fun b!2801088 () Bool)

(declare-fun e!1769991 () List!32666)

(assert (=> b!2801088 (= e!1769991 testedSuffix!143)))

(declare-fun b!2801091 () Bool)

(declare-fun e!1769992 () Bool)

(declare-fun lt!1001404 () List!32666)

(assert (=> b!2801091 (= e!1769992 (or (not (= testedSuffix!143 Nil!32566)) (= lt!1001404 testedP!183)))))

(declare-fun b!2801090 () Bool)

(declare-fun res!1167329 () Bool)

(assert (=> b!2801090 (=> (not res!1167329) (not e!1769992))))

(assert (=> b!2801090 (= res!1167329 (= (size!25423 lt!1001404) (+ (size!25423 testedP!183) (size!25423 testedSuffix!143))))))

(declare-fun b!2801089 () Bool)

(assert (=> b!2801089 (= e!1769991 (Cons!32566 (h!37986 testedP!183) (++!8028 (t!228831 testedP!183) testedSuffix!143)))))

(declare-fun d!813633 () Bool)

(assert (=> d!813633 e!1769992))

(declare-fun res!1167328 () Bool)

(assert (=> d!813633 (=> (not res!1167328) (not e!1769992))))

(declare-fun content!4545 (List!32666) (InoxSet C!16608))

(assert (=> d!813633 (= res!1167328 (= (content!4545 lt!1001404) ((_ map or) (content!4545 testedP!183) (content!4545 testedSuffix!143))))))

(assert (=> d!813633 (= lt!1001404 e!1769991)))

(declare-fun c!454133 () Bool)

(assert (=> d!813633 (= c!454133 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813633 (= (++!8028 testedP!183 testedSuffix!143) lt!1001404)))

(assert (= (and d!813633 c!454133) b!2801088))

(assert (= (and d!813633 (not c!454133)) b!2801089))

(assert (= (and d!813633 res!1167328) b!2801090))

(assert (= (and b!2801090 res!1167329) b!2801091))

(declare-fun m!3230707 () Bool)

(assert (=> b!2801090 m!3230707))

(assert (=> b!2801090 m!3230579))

(declare-fun m!3230709 () Bool)

(assert (=> b!2801090 m!3230709))

(declare-fun m!3230711 () Bool)

(assert (=> b!2801089 m!3230711))

(declare-fun m!3230713 () Bool)

(assert (=> d!813633 m!3230713))

(declare-fun m!3230715 () Bool)

(assert (=> d!813633 m!3230715))

(declare-fun m!3230717 () Bool)

(assert (=> d!813633 m!3230717))

(assert (=> start!270842 d!813633))

(declare-fun d!813635 () Bool)

(declare-fun lt!1001405 () Int)

(assert (=> d!813635 (>= lt!1001405 0)))

(declare-fun e!1769993 () Int)

(assert (=> d!813635 (= lt!1001405 e!1769993)))

(declare-fun c!454134 () Bool)

(assert (=> d!813635 (= c!454134 ((_ is Nil!32566) lt!1001381))))

(assert (=> d!813635 (= (size!25423 lt!1001381) lt!1001405)))

(declare-fun b!2801092 () Bool)

(assert (=> b!2801092 (= e!1769993 0)))

(declare-fun b!2801093 () Bool)

(assert (=> b!2801093 (= e!1769993 (+ 1 (size!25423 (t!228831 lt!1001381))))))

(assert (= (and d!813635 c!454134) b!2801092))

(assert (= (and d!813635 (not c!454134)) b!2801093))

(declare-fun m!3230719 () Bool)

(assert (=> b!2801093 m!3230719))

(assert (=> b!2801046 d!813635))

(declare-fun d!813637 () Bool)

(assert (=> d!813637 (<= (size!25423 testedP!183) (size!25423 lt!1001381))))

(declare-fun lt!1001408 () Unit!46678)

(declare-fun choose!16502 (List!32666 List!32666) Unit!46678)

(assert (=> d!813637 (= lt!1001408 (choose!16502 testedP!183 lt!1001381))))

(assert (=> d!813637 (isPrefix!2640 testedP!183 lt!1001381)))

(assert (=> d!813637 (= (lemmaIsPrefixThenSmallerEqSize!298 testedP!183 lt!1001381) lt!1001408)))

(declare-fun bs!515586 () Bool)

(assert (= bs!515586 d!813637))

(assert (=> bs!515586 m!3230579))

(assert (=> bs!515586 m!3230667))

(declare-fun m!3230721 () Bool)

(assert (=> bs!515586 m!3230721))

(assert (=> bs!515586 m!3230601))

(assert (=> b!2801046 d!813637))

(declare-fun bs!515587 () Bool)

(declare-fun b!2801098 () Bool)

(declare-fun d!813639 () Bool)

(assert (= bs!515587 (and b!2801098 d!813639)))

(declare-fun lambda!102892 () Int)

(declare-fun lambda!102891 () Int)

(assert (=> bs!515587 (not (= lambda!102892 lambda!102891))))

(declare-fun bs!515588 () Bool)

(declare-fun b!2801099 () Bool)

(assert (= bs!515588 (and b!2801099 d!813639)))

(declare-fun lambda!102893 () Int)

(assert (=> bs!515588 (not (= lambda!102893 lambda!102891))))

(declare-fun bs!515589 () Bool)

(assert (= bs!515589 (and b!2801099 b!2801098)))

(assert (=> bs!515589 (= lambda!102893 lambda!102892)))

(declare-fun e!1770000 () Unit!46678)

(declare-fun Unit!46682 () Unit!46678)

(assert (=> b!2801099 (= e!1770000 Unit!46682)))

(declare-datatypes ((List!32669 0))(
  ( (Nil!32569) (Cons!32569 (h!37989 Context!4886) (t!228834 List!32669)) )
))
(declare-fun lt!1001426 () List!32669)

(declare-fun call!182858 () List!32669)

(assert (=> b!2801099 (= lt!1001426 call!182858)))

(declare-fun lt!1001427 () Unit!46678)

(declare-fun lemmaForallThenNotExists!111 (List!32669 Int) Unit!46678)

(assert (=> b!2801099 (= lt!1001427 (lemmaForallThenNotExists!111 lt!1001426 lambda!102891))))

(declare-fun call!182857 () Bool)

(assert (=> b!2801099 (not call!182857)))

(declare-fun lt!1001430 () Unit!46678)

(assert (=> b!2801099 (= lt!1001430 lt!1001427)))

(declare-fun bm!182852 () Bool)

(declare-fun toList!1886 ((InoxSet Context!4886)) List!32669)

(assert (=> bm!182852 (= call!182858 (toList!1886 z!3684))))

(declare-fun bm!182853 () Bool)

(declare-fun c!454145 () Bool)

(declare-fun lt!1001431 () List!32669)

(declare-fun exists!1020 (List!32669 Int) Bool)

(assert (=> bm!182853 (= call!182857 (exists!1020 (ite c!454145 lt!1001431 lt!1001426) (ite c!454145 lambda!102892 lambda!102893)))))

(declare-fun Unit!46683 () Unit!46678)

(assert (=> b!2801098 (= e!1770000 Unit!46683)))

(assert (=> b!2801098 (= lt!1001431 call!182858)))

(declare-fun lt!1001429 () Unit!46678)

(declare-fun lemmaNotForallThenExists!111 (List!32669 Int) Unit!46678)

(assert (=> b!2801098 (= lt!1001429 (lemmaNotForallThenExists!111 lt!1001431 lambda!102891))))

(assert (=> b!2801098 call!182857))

(declare-fun lt!1001428 () Unit!46678)

(assert (=> b!2801098 (= lt!1001428 lt!1001429)))

(declare-fun lt!1001432 () Bool)

(declare-datatypes ((Option!6289 0))(
  ( (None!6288) (Some!6288 (v!34171 List!32666)) )
))
(declare-fun isEmpty!18139 (Option!6289) Bool)

(declare-fun getLanguageWitness!224 ((InoxSet Context!4886)) Option!6289)

(assert (=> d!813639 (= lt!1001432 (isEmpty!18139 (getLanguageWitness!224 z!3684)))))

(declare-fun forall!6711 ((InoxSet Context!4886) Int) Bool)

(assert (=> d!813639 (= lt!1001432 (forall!6711 z!3684 lambda!102891))))

(declare-fun lt!1001425 () Unit!46678)

(assert (=> d!813639 (= lt!1001425 e!1770000)))

(assert (=> d!813639 (= c!454145 (not (forall!6711 z!3684 lambda!102891)))))

(assert (=> d!813639 (= (lostCauseZipper!511 z!3684) lt!1001432)))

(assert (= (and d!813639 c!454145) b!2801098))

(assert (= (and d!813639 (not c!454145)) b!2801099))

(assert (= (or b!2801098 b!2801099) bm!182852))

(assert (= (or b!2801098 b!2801099) bm!182853))

(declare-fun m!3230723 () Bool)

(assert (=> bm!182853 m!3230723))

(declare-fun m!3230725 () Bool)

(assert (=> b!2801098 m!3230725))

(declare-fun m!3230727 () Bool)

(assert (=> d!813639 m!3230727))

(assert (=> d!813639 m!3230727))

(declare-fun m!3230729 () Bool)

(assert (=> d!813639 m!3230729))

(declare-fun m!3230731 () Bool)

(assert (=> d!813639 m!3230731))

(assert (=> d!813639 m!3230731))

(declare-fun m!3230733 () Bool)

(assert (=> b!2801099 m!3230733))

(declare-fun m!3230735 () Bool)

(assert (=> bm!182852 m!3230735))

(assert (=> b!2801020 d!813639))

(declare-fun d!813641 () Bool)

(assert (=> d!813641 (= testedSuffix!143 lt!1001372)))

(declare-fun lt!1001435 () Unit!46678)

(declare-fun choose!16503 (List!32666 List!32666 List!32666 List!32666 List!32666) Unit!46678)

(assert (=> d!813641 (= lt!1001435 (choose!16503 testedP!183 testedSuffix!143 testedP!183 lt!1001372 lt!1001381))))

(assert (=> d!813641 (isPrefix!2640 testedP!183 lt!1001381)))

(assert (=> d!813641 (= (lemmaSamePrefixThenSameSuffix!1214 testedP!183 testedSuffix!143 testedP!183 lt!1001372 lt!1001381) lt!1001435)))

(declare-fun bs!515590 () Bool)

(assert (= bs!515590 d!813641))

(declare-fun m!3230737 () Bool)

(assert (=> bs!515590 m!3230737))

(assert (=> bs!515590 m!3230601))

(assert (=> b!2801020 d!813641))

(declare-fun d!813643 () Bool)

(declare-fun lt!1001438 () List!32666)

(assert (=> d!813643 (= (++!8028 testedP!183 lt!1001438) lt!1001381)))

(declare-fun e!1770003 () List!32666)

(assert (=> d!813643 (= lt!1001438 e!1770003)))

(declare-fun c!454148 () Bool)

(assert (=> d!813643 (= c!454148 ((_ is Cons!32566) testedP!183))))

(assert (=> d!813643 (>= (size!25423 lt!1001381) (size!25423 testedP!183))))

(assert (=> d!813643 (= (getSuffix!1316 lt!1001381 testedP!183) lt!1001438)))

(declare-fun b!2801104 () Bool)

(assert (=> b!2801104 (= e!1770003 (getSuffix!1316 (tail!4434 lt!1001381) (t!228831 testedP!183)))))

(declare-fun b!2801105 () Bool)

(assert (=> b!2801105 (= e!1770003 lt!1001381)))

(assert (= (and d!813643 c!454148) b!2801104))

(assert (= (and d!813643 (not c!454148)) b!2801105))

(declare-fun m!3230739 () Bool)

(assert (=> d!813643 m!3230739))

(assert (=> d!813643 m!3230667))

(assert (=> d!813643 m!3230579))

(assert (=> b!2801104 m!3230675))

(assert (=> b!2801104 m!3230675))

(declare-fun m!3230741 () Bool)

(assert (=> b!2801104 m!3230741))

(assert (=> b!2801020 d!813643))

(declare-fun d!813645 () Bool)

(assert (=> d!813645 (and (= lt!1001371 testedP!183) (= lt!1001374 testedSuffix!143))))

(declare-fun lt!1001441 () Unit!46678)

(declare-fun choose!16504 (List!32666 List!32666 List!32666 List!32666) Unit!46678)

(assert (=> d!813645 (= lt!1001441 (choose!16504 lt!1001371 lt!1001374 testedP!183 testedSuffix!143))))

(assert (=> d!813645 (= (++!8028 lt!1001371 lt!1001374) (++!8028 testedP!183 testedSuffix!143))))

(assert (=> d!813645 (= (lemmaConcatSameAndSameSizesThenSameLists!388 lt!1001371 lt!1001374 testedP!183 testedSuffix!143) lt!1001441)))

(declare-fun bs!515591 () Bool)

(assert (= bs!515591 d!813645))

(declare-fun m!3230743 () Bool)

(assert (=> bs!515591 m!3230743))

(assert (=> bs!515591 m!3230571))

(assert (=> bs!515591 m!3230635))

(assert (=> b!2801024 d!813645))

(declare-fun bm!182856 () Bool)

(declare-fun call!182861 () Int)

(assert (=> bm!182856 (= call!182861 (size!25423 lt!1001381))))

(declare-fun b!2801124 () Bool)

(declare-fun e!1770016 () List!32666)

(declare-fun e!1770018 () List!32666)

(assert (=> b!2801124 (= e!1770016 e!1770018)))

(declare-fun c!454160 () Bool)

(assert (=> b!2801124 (= c!454160 (<= testedPSize!143 0))))

(declare-fun b!2801126 () Bool)

(declare-fun e!1770014 () Int)

(assert (=> b!2801126 (= e!1770014 call!182861)))

(declare-fun b!2801127 () Bool)

(assert (=> b!2801127 (= e!1770016 Nil!32566)))

(declare-fun b!2801128 () Bool)

(declare-fun e!1770017 () Int)

(assert (=> b!2801128 (= e!1770017 0)))

(declare-fun b!2801129 () Bool)

(declare-fun e!1770015 () Bool)

(declare-fun lt!1001444 () List!32666)

(assert (=> b!2801129 (= e!1770015 (= (size!25423 lt!1001444) e!1770014))))

(declare-fun c!454158 () Bool)

(assert (=> b!2801129 (= c!454158 (<= testedPSize!143 0))))

(declare-fun b!2801130 () Bool)

(assert (=> b!2801130 (= e!1770018 lt!1001381)))

(declare-fun b!2801131 () Bool)

(assert (=> b!2801131 (= e!1770017 (- call!182861 testedPSize!143))))

(declare-fun b!2801132 () Bool)

(assert (=> b!2801132 (= e!1770018 (drop!1754 (t!228831 lt!1001381) (- testedPSize!143 1)))))

(declare-fun d!813647 () Bool)

(assert (=> d!813647 e!1770015))

(declare-fun res!1167332 () Bool)

(assert (=> d!813647 (=> (not res!1167332) (not e!1770015))))

(assert (=> d!813647 (= res!1167332 (= ((_ map implies) (content!4545 lt!1001444) (content!4545 lt!1001381)) ((as const (InoxSet C!16608)) true)))))

(assert (=> d!813647 (= lt!1001444 e!1770016)))

(declare-fun c!454157 () Bool)

(assert (=> d!813647 (= c!454157 ((_ is Nil!32566) lt!1001381))))

(assert (=> d!813647 (= (drop!1754 lt!1001381 testedPSize!143) lt!1001444)))

(declare-fun b!2801125 () Bool)

(assert (=> b!2801125 (= e!1770014 e!1770017)))

(declare-fun c!454159 () Bool)

(assert (=> b!2801125 (= c!454159 (>= testedPSize!143 call!182861))))

(assert (= (and d!813647 c!454157) b!2801127))

(assert (= (and d!813647 (not c!454157)) b!2801124))

(assert (= (and b!2801124 c!454160) b!2801130))

(assert (= (and b!2801124 (not c!454160)) b!2801132))

(assert (= (and d!813647 res!1167332) b!2801129))

(assert (= (and b!2801129 c!454158) b!2801126))

(assert (= (and b!2801129 (not c!454158)) b!2801125))

(assert (= (and b!2801125 c!454159) b!2801128))

(assert (= (and b!2801125 (not c!454159)) b!2801131))

(assert (= (or b!2801126 b!2801125 b!2801131) bm!182856))

(assert (=> bm!182856 m!3230667))

(declare-fun m!3230745 () Bool)

(assert (=> b!2801129 m!3230745))

(declare-fun m!3230747 () Bool)

(assert (=> b!2801132 m!3230747))

(declare-fun m!3230749 () Bool)

(assert (=> d!813647 m!3230749))

(declare-fun m!3230751 () Bool)

(assert (=> d!813647 m!3230751))

(assert (=> b!2801024 d!813647))

(declare-fun d!813649 () Bool)

(assert (=> d!813649 (= (head!6207 (drop!1754 lt!1001381 testedPSize!143)) (apply!7616 lt!1001381 testedPSize!143))))

(declare-fun lt!1001447 () Unit!46678)

(declare-fun choose!16505 (List!32666 Int) Unit!46678)

(assert (=> d!813649 (= lt!1001447 (choose!16505 lt!1001381 testedPSize!143))))

(declare-fun e!1770021 () Bool)

(assert (=> d!813649 e!1770021))

(declare-fun res!1167335 () Bool)

(assert (=> d!813649 (=> (not res!1167335) (not e!1770021))))

(assert (=> d!813649 (= res!1167335 (>= testedPSize!143 0))))

(assert (=> d!813649 (= (lemmaDropApply!958 lt!1001381 testedPSize!143) lt!1001447)))

(declare-fun b!2801135 () Bool)

(assert (=> b!2801135 (= e!1770021 (< testedPSize!143 (size!25423 lt!1001381)))))

(assert (= (and d!813649 res!1167335) b!2801135))

(assert (=> d!813649 m!3230641))

(assert (=> d!813649 m!3230641))

(assert (=> d!813649 m!3230651))

(assert (=> d!813649 m!3230649))

(declare-fun m!3230753 () Bool)

(assert (=> d!813649 m!3230753))

(assert (=> b!2801135 m!3230667))

(assert (=> b!2801024 d!813649))

(declare-fun d!813651 () Bool)

(declare-fun lt!1001450 () C!16608)

(declare-fun contains!6018 (List!32666 C!16608) Bool)

(assert (=> d!813651 (contains!6018 lt!1001381 lt!1001450)))

(declare-fun e!1770027 () C!16608)

(assert (=> d!813651 (= lt!1001450 e!1770027)))

(declare-fun c!454163 () Bool)

(assert (=> d!813651 (= c!454163 (= testedPSize!143 0))))

(declare-fun e!1770026 () Bool)

(assert (=> d!813651 e!1770026))

(declare-fun res!1167338 () Bool)

(assert (=> d!813651 (=> (not res!1167338) (not e!1770026))))

(assert (=> d!813651 (= res!1167338 (<= 0 testedPSize!143))))

(assert (=> d!813651 (= (apply!7616 lt!1001381 testedPSize!143) lt!1001450)))

(declare-fun b!2801142 () Bool)

(assert (=> b!2801142 (= e!1770026 (< testedPSize!143 (size!25423 lt!1001381)))))

(declare-fun b!2801143 () Bool)

(assert (=> b!2801143 (= e!1770027 (head!6207 lt!1001381))))

(declare-fun b!2801144 () Bool)

(assert (=> b!2801144 (= e!1770027 (apply!7616 (tail!4434 lt!1001381) (- testedPSize!143 1)))))

(assert (= (and d!813651 res!1167338) b!2801142))

(assert (= (and d!813651 c!454163) b!2801143))

(assert (= (and d!813651 (not c!454163)) b!2801144))

(declare-fun m!3230755 () Bool)

(assert (=> d!813651 m!3230755))

(assert (=> b!2801142 m!3230667))

(assert (=> b!2801143 m!3230673))

(assert (=> b!2801144 m!3230675))

(assert (=> b!2801144 m!3230675))

(declare-fun m!3230757 () Bool)

(assert (=> b!2801144 m!3230757))

(assert (=> b!2801024 d!813651))

(declare-fun d!813653 () Bool)

(declare-fun lt!1001453 () C!16608)

(assert (=> d!813653 (= lt!1001453 (apply!7616 (list!12220 totalInput!758) testedPSize!143))))

(declare-fun apply!7617 (Conc!10082 Int) C!16608)

(assert (=> d!813653 (= lt!1001453 (apply!7617 (c!454126 totalInput!758) testedPSize!143))))

(declare-fun e!1770030 () Bool)

(assert (=> d!813653 e!1770030))

(declare-fun res!1167341 () Bool)

(assert (=> d!813653 (=> (not res!1167341) (not e!1770030))))

(assert (=> d!813653 (= res!1167341 (<= 0 testedPSize!143))))

(assert (=> d!813653 (= (apply!7615 totalInput!758 testedPSize!143) lt!1001453)))

(declare-fun b!2801147 () Bool)

(assert (=> b!2801147 (= e!1770030 (< testedPSize!143 (size!25427 totalInput!758)))))

(assert (= (and d!813653 res!1167341) b!2801147))

(assert (=> d!813653 m!3230627))

(assert (=> d!813653 m!3230627))

(declare-fun m!3230759 () Bool)

(assert (=> d!813653 m!3230759))

(declare-fun m!3230761 () Bool)

(assert (=> d!813653 m!3230761))

(assert (=> b!2801147 m!3230609))

(assert (=> b!2801024 d!813653))

(declare-fun d!813655 () Bool)

(assert (=> d!813655 (= (head!6207 (drop!1754 lt!1001381 testedPSize!143)) (h!37986 (drop!1754 lt!1001381 testedPSize!143)))))

(assert (=> b!2801024 d!813655))

(declare-fun d!813657 () Bool)

(assert (=> d!813657 (= (head!6207 testedSuffix!143) (h!37986 testedSuffix!143))))

(assert (=> b!2801024 d!813657))

(declare-fun d!813659 () Bool)

(assert (=> d!813659 (= (valid!3162 cacheDown!1009) (validCacheMapDown!431 (cache!4090 cacheDown!1009)))))

(declare-fun bs!515592 () Bool)

(assert (= bs!515592 d!813659))

(assert (=> bs!515592 m!3230703))

(assert (=> b!2801034 d!813659))

(declare-fun d!813661 () Bool)

(declare-fun lt!1001454 () Int)

(assert (=> d!813661 (= lt!1001454 (size!25423 (list!12220 (_1!19674 lt!1001379))))))

(assert (=> d!813661 (= lt!1001454 (size!25428 (c!454126 (_1!19674 lt!1001379))))))

(assert (=> d!813661 (= (size!25427 (_1!19674 lt!1001379)) lt!1001454)))

(declare-fun bs!515593 () Bool)

(assert (= bs!515593 d!813661))

(assert (=> bs!515593 m!3230575))

(assert (=> bs!515593 m!3230575))

(declare-fun m!3230763 () Bool)

(assert (=> bs!515593 m!3230763))

(declare-fun m!3230765 () Bool)

(assert (=> bs!515593 m!3230765))

(assert (=> b!2801032 d!813661))

(declare-fun d!813663 () Bool)

(declare-fun c!454166 () Bool)

(assert (=> d!813663 (= c!454166 ((_ is Node!10082) (c!454126 totalInput!758)))))

(declare-fun e!1770035 () Bool)

(assert (=> d!813663 (= (inv!44228 (c!454126 totalInput!758)) e!1770035)))

(declare-fun b!2801154 () Bool)

(declare-fun inv!44233 (Conc!10082) Bool)

(assert (=> b!2801154 (= e!1770035 (inv!44233 (c!454126 totalInput!758)))))

(declare-fun b!2801155 () Bool)

(declare-fun e!1770036 () Bool)

(assert (=> b!2801155 (= e!1770035 e!1770036)))

(declare-fun res!1167344 () Bool)

(assert (=> b!2801155 (= res!1167344 (not ((_ is Leaf!15363) (c!454126 totalInput!758))))))

(assert (=> b!2801155 (=> res!1167344 e!1770036)))

(declare-fun b!2801156 () Bool)

(declare-fun inv!44234 (Conc!10082) Bool)

(assert (=> b!2801156 (= e!1770036 (inv!44234 (c!454126 totalInput!758)))))

(assert (= (and d!813663 c!454166) b!2801154))

(assert (= (and d!813663 (not c!454166)) b!2801155))

(assert (= (and b!2801155 (not res!1167344)) b!2801156))

(declare-fun m!3230767 () Bool)

(assert (=> b!2801154 m!3230767))

(declare-fun m!3230769 () Bool)

(assert (=> b!2801156 m!3230769))

(assert (=> b!2801023 d!813663))

(declare-fun b!2801157 () Bool)

(declare-fun e!1770037 () Bool)

(declare-fun e!1770039 () Bool)

(assert (=> b!2801157 (= e!1770037 e!1770039)))

(declare-fun res!1167347 () Bool)

(assert (=> b!2801157 (=> (not res!1167347) (not e!1770039))))

(assert (=> b!2801157 (= res!1167347 (not ((_ is Nil!32566) lt!1001381)))))

(declare-fun d!813665 () Bool)

(declare-fun e!1770038 () Bool)

(assert (=> d!813665 e!1770038))

(declare-fun res!1167346 () Bool)

(assert (=> d!813665 (=> res!1167346 e!1770038)))

(declare-fun lt!1001455 () Bool)

(assert (=> d!813665 (= res!1167346 (not lt!1001455))))

(assert (=> d!813665 (= lt!1001455 e!1770037)))

(declare-fun res!1167345 () Bool)

(assert (=> d!813665 (=> res!1167345 e!1770037)))

(assert (=> d!813665 (= res!1167345 ((_ is Nil!32566) (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))))))

(assert (=> d!813665 (= (isPrefix!2640 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566)) lt!1001381) lt!1001455)))

(declare-fun b!2801158 () Bool)

(declare-fun res!1167348 () Bool)

(assert (=> b!2801158 (=> (not res!1167348) (not e!1770039))))

(assert (=> b!2801158 (= res!1167348 (= (head!6207 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))) (head!6207 lt!1001381)))))

(declare-fun b!2801160 () Bool)

(assert (=> b!2801160 (= e!1770038 (>= (size!25423 lt!1001381) (size!25423 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))))

(declare-fun b!2801159 () Bool)

(assert (=> b!2801159 (= e!1770039 (isPrefix!2640 (tail!4434 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))) (tail!4434 lt!1001381)))))

(assert (= (and d!813665 (not res!1167345)) b!2801157))

(assert (= (and b!2801157 res!1167347) b!2801158))

(assert (= (and b!2801158 res!1167348) b!2801159))

(assert (= (and d!813665 (not res!1167346)) b!2801160))

(assert (=> b!2801158 m!3230591))

(declare-fun m!3230771 () Bool)

(assert (=> b!2801158 m!3230771))

(assert (=> b!2801158 m!3230673))

(assert (=> b!2801160 m!3230667))

(assert (=> b!2801160 m!3230591))

(declare-fun m!3230773 () Bool)

(assert (=> b!2801160 m!3230773))

(assert (=> b!2801159 m!3230591))

(declare-fun m!3230775 () Bool)

(assert (=> b!2801159 m!3230775))

(assert (=> b!2801159 m!3230675))

(assert (=> b!2801159 m!3230775))

(assert (=> b!2801159 m!3230675))

(declare-fun m!3230777 () Bool)

(assert (=> b!2801159 m!3230777))

(assert (=> b!2801016 d!813665))

(declare-fun d!813667 () Bool)

(assert (=> d!813667 (= (++!8028 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566)) lt!1001366) lt!1001381)))

(declare-fun lt!1001458 () Unit!46678)

(declare-fun choose!16506 (List!32666 C!16608 List!32666 List!32666) Unit!46678)

(assert (=> d!813667 (= lt!1001458 (choose!16506 testedP!183 lt!1001359 lt!1001366 lt!1001381))))

(assert (=> d!813667 (= (++!8028 testedP!183 (Cons!32566 lt!1001359 lt!1001366)) lt!1001381)))

(assert (=> d!813667 (= (lemmaMoveElementToOtherListKeepsConcatEq!898 testedP!183 lt!1001359 lt!1001366 lt!1001381) lt!1001458)))

(declare-fun bs!515594 () Bool)

(assert (= bs!515594 d!813667))

(assert (=> bs!515594 m!3230587))

(assert (=> bs!515594 m!3230587))

(declare-fun m!3230779 () Bool)

(assert (=> bs!515594 m!3230779))

(declare-fun m!3230781 () Bool)

(assert (=> bs!515594 m!3230781))

(declare-fun m!3230783 () Bool)

(assert (=> bs!515594 m!3230783))

(assert (=> b!2801016 d!813667))

(declare-fun d!813669 () Bool)

(assert (=> d!813669 (isPrefix!2640 (++!8028 testedP!183 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566)) lt!1001381)))

(declare-fun lt!1001461 () Unit!46678)

(declare-fun choose!16507 (List!32666 List!32666) Unit!46678)

(assert (=> d!813669 (= lt!1001461 (choose!16507 testedP!183 lt!1001381))))

(assert (=> d!813669 (isPrefix!2640 testedP!183 lt!1001381)))

(assert (=> d!813669 (= (lemmaAddHeadSuffixToPrefixStillPrefix!490 testedP!183 lt!1001381) lt!1001461)))

(declare-fun bs!515595 () Bool)

(assert (= bs!515595 d!813669))

(declare-fun m!3230785 () Bool)

(assert (=> bs!515595 m!3230785))

(declare-fun m!3230787 () Bool)

(assert (=> bs!515595 m!3230787))

(assert (=> bs!515595 m!3230601))

(assert (=> bs!515595 m!3230785))

(declare-fun m!3230789 () Bool)

(assert (=> bs!515595 m!3230789))

(assert (=> bs!515595 m!3230615))

(declare-fun m!3230791 () Bool)

(assert (=> bs!515595 m!3230791))

(assert (=> bs!515595 m!3230615))

(assert (=> b!2801016 d!813669))

(declare-fun d!813671 () Bool)

(assert (=> d!813671 (= (tail!4434 testedSuffix!143) (t!228831 testedSuffix!143))))

(assert (=> b!2801016 d!813671))

(declare-fun b!2801161 () Bool)

(declare-fun e!1770040 () List!32666)

(assert (=> b!2801161 (= e!1770040 (Cons!32566 lt!1001359 Nil!32566))))

(declare-fun e!1770041 () Bool)

(declare-fun b!2801164 () Bool)

(declare-fun lt!1001462 () List!32666)

(assert (=> b!2801164 (= e!1770041 (or (not (= (Cons!32566 lt!1001359 Nil!32566) Nil!32566)) (= lt!1001462 testedP!183)))))

(declare-fun b!2801163 () Bool)

(declare-fun res!1167350 () Bool)

(assert (=> b!2801163 (=> (not res!1167350) (not e!1770041))))

(assert (=> b!2801163 (= res!1167350 (= (size!25423 lt!1001462) (+ (size!25423 testedP!183) (size!25423 (Cons!32566 lt!1001359 Nil!32566)))))))

(declare-fun b!2801162 () Bool)

(assert (=> b!2801162 (= e!1770040 (Cons!32566 (h!37986 testedP!183) (++!8028 (t!228831 testedP!183) (Cons!32566 lt!1001359 Nil!32566))))))

(declare-fun d!813673 () Bool)

(assert (=> d!813673 e!1770041))

(declare-fun res!1167349 () Bool)

(assert (=> d!813673 (=> (not res!1167349) (not e!1770041))))

(assert (=> d!813673 (= res!1167349 (= (content!4545 lt!1001462) ((_ map or) (content!4545 testedP!183) (content!4545 (Cons!32566 lt!1001359 Nil!32566)))))))

(assert (=> d!813673 (= lt!1001462 e!1770040)))

(declare-fun c!454167 () Bool)

(assert (=> d!813673 (= c!454167 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813673 (= (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566)) lt!1001462)))

(assert (= (and d!813673 c!454167) b!2801161))

(assert (= (and d!813673 (not c!454167)) b!2801162))

(assert (= (and d!813673 res!1167349) b!2801163))

(assert (= (and b!2801163 res!1167350) b!2801164))

(declare-fun m!3230793 () Bool)

(assert (=> b!2801163 m!3230793))

(assert (=> b!2801163 m!3230579))

(declare-fun m!3230795 () Bool)

(assert (=> b!2801163 m!3230795))

(declare-fun m!3230797 () Bool)

(assert (=> b!2801162 m!3230797))

(declare-fun m!3230799 () Bool)

(assert (=> d!813673 m!3230799))

(assert (=> d!813673 m!3230715))

(declare-fun m!3230801 () Bool)

(assert (=> d!813673 m!3230801))

(assert (=> b!2801016 d!813673))

(declare-fun b!2801165 () Bool)

(declare-fun e!1770042 () List!32666)

(assert (=> b!2801165 (= e!1770042 lt!1001366)))

(declare-fun b!2801168 () Bool)

(declare-fun e!1770043 () Bool)

(declare-fun lt!1001463 () List!32666)

(assert (=> b!2801168 (= e!1770043 (or (not (= lt!1001366 Nil!32566)) (= lt!1001463 lt!1001367)))))

(declare-fun b!2801167 () Bool)

(declare-fun res!1167352 () Bool)

(assert (=> b!2801167 (=> (not res!1167352) (not e!1770043))))

(assert (=> b!2801167 (= res!1167352 (= (size!25423 lt!1001463) (+ (size!25423 lt!1001367) (size!25423 lt!1001366))))))

(declare-fun b!2801166 () Bool)

(assert (=> b!2801166 (= e!1770042 (Cons!32566 (h!37986 lt!1001367) (++!8028 (t!228831 lt!1001367) lt!1001366)))))

(declare-fun d!813675 () Bool)

(assert (=> d!813675 e!1770043))

(declare-fun res!1167351 () Bool)

(assert (=> d!813675 (=> (not res!1167351) (not e!1770043))))

(assert (=> d!813675 (= res!1167351 (= (content!4545 lt!1001463) ((_ map or) (content!4545 lt!1001367) (content!4545 lt!1001366))))))

(assert (=> d!813675 (= lt!1001463 e!1770042)))

(declare-fun c!454168 () Bool)

(assert (=> d!813675 (= c!454168 ((_ is Nil!32566) lt!1001367))))

(assert (=> d!813675 (= (++!8028 lt!1001367 lt!1001366) lt!1001463)))

(assert (= (and d!813675 c!454168) b!2801165))

(assert (= (and d!813675 (not c!454168)) b!2801166))

(assert (= (and d!813675 res!1167351) b!2801167))

(assert (= (and b!2801167 res!1167352) b!2801168))

(declare-fun m!3230803 () Bool)

(assert (=> b!2801167 m!3230803))

(assert (=> b!2801167 m!3230617))

(declare-fun m!3230805 () Bool)

(assert (=> b!2801167 m!3230805))

(declare-fun m!3230807 () Bool)

(assert (=> b!2801166 m!3230807))

(declare-fun m!3230809 () Bool)

(assert (=> d!813675 m!3230809))

(declare-fun m!3230811 () Bool)

(assert (=> d!813675 m!3230811))

(declare-fun m!3230813 () Bool)

(assert (=> d!813675 m!3230813))

(assert (=> b!2801016 d!813675))

(declare-fun b!2801169 () Bool)

(declare-fun e!1770044 () List!32666)

(assert (=> b!2801169 (= e!1770044 (Cons!32566 (head!6207 lt!1001372) Nil!32566))))

(declare-fun b!2801172 () Bool)

(declare-fun e!1770045 () Bool)

(declare-fun lt!1001464 () List!32666)

(assert (=> b!2801172 (= e!1770045 (or (not (= (Cons!32566 (head!6207 lt!1001372) Nil!32566) Nil!32566)) (= lt!1001464 testedP!183)))))

(declare-fun b!2801171 () Bool)

(declare-fun res!1167354 () Bool)

(assert (=> b!2801171 (=> (not res!1167354) (not e!1770045))))

(assert (=> b!2801171 (= res!1167354 (= (size!25423 lt!1001464) (+ (size!25423 testedP!183) (size!25423 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))))

(declare-fun b!2801170 () Bool)

(assert (=> b!2801170 (= e!1770044 (Cons!32566 (h!37986 testedP!183) (++!8028 (t!228831 testedP!183) (Cons!32566 (head!6207 lt!1001372) Nil!32566))))))

(declare-fun d!813677 () Bool)

(assert (=> d!813677 e!1770045))

(declare-fun res!1167353 () Bool)

(assert (=> d!813677 (=> (not res!1167353) (not e!1770045))))

(assert (=> d!813677 (= res!1167353 (= (content!4545 lt!1001464) ((_ map or) (content!4545 testedP!183) (content!4545 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))))

(assert (=> d!813677 (= lt!1001464 e!1770044)))

(declare-fun c!454169 () Bool)

(assert (=> d!813677 (= c!454169 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813677 (= (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566)) lt!1001464)))

(assert (= (and d!813677 c!454169) b!2801169))

(assert (= (and d!813677 (not c!454169)) b!2801170))

(assert (= (and d!813677 res!1167353) b!2801171))

(assert (= (and b!2801171 res!1167354) b!2801172))

(declare-fun m!3230815 () Bool)

(assert (=> b!2801171 m!3230815))

(assert (=> b!2801171 m!3230579))

(declare-fun m!3230817 () Bool)

(assert (=> b!2801171 m!3230817))

(declare-fun m!3230819 () Bool)

(assert (=> b!2801170 m!3230819))

(declare-fun m!3230821 () Bool)

(assert (=> d!813677 m!3230821))

(assert (=> d!813677 m!3230715))

(declare-fun m!3230823 () Bool)

(assert (=> d!813677 m!3230823))

(assert (=> b!2801016 d!813677))

(declare-fun d!813679 () Bool)

(assert (=> d!813679 (= (head!6207 lt!1001372) (h!37986 lt!1001372))))

(assert (=> b!2801016 d!813679))

(declare-fun bs!515596 () Bool)

(declare-fun d!813681 () Bool)

(assert (= bs!515596 (and d!813681 d!813639)))

(declare-fun lambda!102896 () Int)

(assert (=> bs!515596 (not (= lambda!102896 lambda!102891))))

(declare-fun bs!515597 () Bool)

(assert (= bs!515597 (and d!813681 b!2801098)))

(assert (=> bs!515597 (not (= lambda!102896 lambda!102892))))

(declare-fun bs!515598 () Bool)

(assert (= bs!515598 (and d!813681 b!2801099)))

(assert (=> bs!515598 (not (= lambda!102896 lambda!102893))))

(declare-fun exists!1021 ((InoxSet Context!4886) Int) Bool)

(assert (=> d!813681 (= (nullableZipper!662 z!3684) (exists!1021 z!3684 lambda!102896))))

(declare-fun bs!515599 () Bool)

(assert (= bs!515599 d!813681))

(declare-fun m!3230825 () Bool)

(assert (=> bs!515599 m!3230825))

(assert (=> b!2801016 d!813681))

(declare-fun b!2801173 () Bool)

(declare-fun e!1770046 () Bool)

(declare-fun e!1770048 () Bool)

(assert (=> b!2801173 (= e!1770046 e!1770048)))

(declare-fun res!1167357 () Bool)

(assert (=> b!2801173 (=> (not res!1167357) (not e!1770048))))

(assert (=> b!2801173 (= res!1167357 (not ((_ is Nil!32566) lt!1001381)))))

(declare-fun d!813683 () Bool)

(declare-fun e!1770047 () Bool)

(assert (=> d!813683 e!1770047))

(declare-fun res!1167356 () Bool)

(assert (=> d!813683 (=> res!1167356 e!1770047)))

(declare-fun lt!1001465 () Bool)

(assert (=> d!813683 (= res!1167356 (not lt!1001465))))

(assert (=> d!813683 (= lt!1001465 e!1770046)))

(declare-fun res!1167355 () Bool)

(assert (=> d!813683 (=> res!1167355 e!1770046)))

(assert (=> d!813683 (= res!1167355 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813683 (= (isPrefix!2640 testedP!183 lt!1001381) lt!1001465)))

(declare-fun b!2801174 () Bool)

(declare-fun res!1167358 () Bool)

(assert (=> b!2801174 (=> (not res!1167358) (not e!1770048))))

(assert (=> b!2801174 (= res!1167358 (= (head!6207 testedP!183) (head!6207 lt!1001381)))))

(declare-fun b!2801176 () Bool)

(assert (=> b!2801176 (= e!1770047 (>= (size!25423 lt!1001381) (size!25423 testedP!183)))))

(declare-fun b!2801175 () Bool)

(assert (=> b!2801175 (= e!1770048 (isPrefix!2640 (tail!4434 testedP!183) (tail!4434 lt!1001381)))))

(assert (= (and d!813683 (not res!1167355)) b!2801173))

(assert (= (and b!2801173 res!1167357) b!2801174))

(assert (= (and b!2801174 res!1167358) b!2801175))

(assert (= (and d!813683 (not res!1167356)) b!2801176))

(declare-fun m!3230827 () Bool)

(assert (=> b!2801174 m!3230827))

(assert (=> b!2801174 m!3230673))

(assert (=> b!2801176 m!3230667))

(assert (=> b!2801176 m!3230579))

(declare-fun m!3230829 () Bool)

(assert (=> b!2801175 m!3230829))

(assert (=> b!2801175 m!3230675))

(assert (=> b!2801175 m!3230829))

(assert (=> b!2801175 m!3230675))

(declare-fun m!3230831 () Bool)

(assert (=> b!2801175 m!3230831))

(assert (=> b!2801037 d!813683))

(declare-fun b!2801177 () Bool)

(declare-fun e!1770049 () Bool)

(declare-fun e!1770051 () Bool)

(assert (=> b!2801177 (= e!1770049 e!1770051)))

(declare-fun res!1167361 () Bool)

(assert (=> b!2801177 (=> (not res!1167361) (not e!1770051))))

(assert (=> b!2801177 (= res!1167361 (not ((_ is Nil!32566) lt!1001364)))))

(declare-fun d!813685 () Bool)

(declare-fun e!1770050 () Bool)

(assert (=> d!813685 e!1770050))

(declare-fun res!1167360 () Bool)

(assert (=> d!813685 (=> res!1167360 e!1770050)))

(declare-fun lt!1001466 () Bool)

(assert (=> d!813685 (= res!1167360 (not lt!1001466))))

(assert (=> d!813685 (= lt!1001466 e!1770049)))

(declare-fun res!1167359 () Bool)

(assert (=> d!813685 (=> res!1167359 e!1770049)))

(assert (=> d!813685 (= res!1167359 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813685 (= (isPrefix!2640 testedP!183 lt!1001364) lt!1001466)))

(declare-fun b!2801178 () Bool)

(declare-fun res!1167362 () Bool)

(assert (=> b!2801178 (=> (not res!1167362) (not e!1770051))))

(assert (=> b!2801178 (= res!1167362 (= (head!6207 testedP!183) (head!6207 lt!1001364)))))

(declare-fun b!2801180 () Bool)

(assert (=> b!2801180 (= e!1770050 (>= (size!25423 lt!1001364) (size!25423 testedP!183)))))

(declare-fun b!2801179 () Bool)

(assert (=> b!2801179 (= e!1770051 (isPrefix!2640 (tail!4434 testedP!183) (tail!4434 lt!1001364)))))

(assert (= (and d!813685 (not res!1167359)) b!2801177))

(assert (= (and b!2801177 res!1167361) b!2801178))

(assert (= (and b!2801178 res!1167362) b!2801179))

(assert (= (and d!813685 (not res!1167360)) b!2801180))

(assert (=> b!2801178 m!3230827))

(declare-fun m!3230833 () Bool)

(assert (=> b!2801178 m!3230833))

(declare-fun m!3230835 () Bool)

(assert (=> b!2801180 m!3230835))

(assert (=> b!2801180 m!3230579))

(assert (=> b!2801179 m!3230829))

(declare-fun m!3230837 () Bool)

(assert (=> b!2801179 m!3230837))

(assert (=> b!2801179 m!3230829))

(assert (=> b!2801179 m!3230837))

(declare-fun m!3230839 () Bool)

(assert (=> b!2801179 m!3230839))

(assert (=> b!2801037 d!813685))

(declare-fun d!813687 () Bool)

(assert (=> d!813687 (isPrefix!2640 testedP!183 (++!8028 testedP!183 testedSuffix!143))))

(declare-fun lt!1001469 () Unit!46678)

(declare-fun choose!16508 (List!32666 List!32666) Unit!46678)

(assert (=> d!813687 (= lt!1001469 (choose!16508 testedP!183 testedSuffix!143))))

(assert (=> d!813687 (= (lemmaConcatTwoListThenFirstIsPrefix!1746 testedP!183 testedSuffix!143) lt!1001469)))

(declare-fun bs!515600 () Bool)

(assert (= bs!515600 d!813687))

(assert (=> bs!515600 m!3230635))

(assert (=> bs!515600 m!3230635))

(declare-fun m!3230841 () Bool)

(assert (=> bs!515600 m!3230841))

(declare-fun m!3230843 () Bool)

(assert (=> bs!515600 m!3230843))

(assert (=> b!2801037 d!813687))

(declare-fun b!2801181 () Bool)

(declare-fun e!1770052 () List!32666)

(assert (=> b!2801181 (= e!1770052 lt!1001374)))

(declare-fun lt!1001470 () List!32666)

(declare-fun e!1770053 () Bool)

(declare-fun b!2801184 () Bool)

(assert (=> b!2801184 (= e!1770053 (or (not (= lt!1001374 Nil!32566)) (= lt!1001470 lt!1001371)))))

(declare-fun b!2801183 () Bool)

(declare-fun res!1167364 () Bool)

(assert (=> b!2801183 (=> (not res!1167364) (not e!1770053))))

(assert (=> b!2801183 (= res!1167364 (= (size!25423 lt!1001470) (+ (size!25423 lt!1001371) (size!25423 lt!1001374))))))

(declare-fun b!2801182 () Bool)

(assert (=> b!2801182 (= e!1770052 (Cons!32566 (h!37986 lt!1001371) (++!8028 (t!228831 lt!1001371) lt!1001374)))))

(declare-fun d!813689 () Bool)

(assert (=> d!813689 e!1770053))

(declare-fun res!1167363 () Bool)

(assert (=> d!813689 (=> (not res!1167363) (not e!1770053))))

(assert (=> d!813689 (= res!1167363 (= (content!4545 lt!1001470) ((_ map or) (content!4545 lt!1001371) (content!4545 lt!1001374))))))

(assert (=> d!813689 (= lt!1001470 e!1770052)))

(declare-fun c!454172 () Bool)

(assert (=> d!813689 (= c!454172 ((_ is Nil!32566) lt!1001371))))

(assert (=> d!813689 (= (++!8028 lt!1001371 lt!1001374) lt!1001470)))

(assert (= (and d!813689 c!454172) b!2801181))

(assert (= (and d!813689 (not c!454172)) b!2801182))

(assert (= (and d!813689 res!1167363) b!2801183))

(assert (= (and b!2801183 res!1167364) b!2801184))

(declare-fun m!3230845 () Bool)

(assert (=> b!2801183 m!3230845))

(declare-fun m!3230847 () Bool)

(assert (=> b!2801183 m!3230847))

(declare-fun m!3230849 () Bool)

(assert (=> b!2801183 m!3230849))

(declare-fun m!3230851 () Bool)

(assert (=> b!2801182 m!3230851))

(declare-fun m!3230853 () Bool)

(assert (=> d!813689 m!3230853))

(declare-fun m!3230855 () Bool)

(assert (=> d!813689 m!3230855))

(declare-fun m!3230857 () Bool)

(assert (=> d!813689 m!3230857))

(assert (=> b!2801035 d!813689))

(declare-fun d!813691 () Bool)

(assert (=> d!813691 (= (list!12220 (_2!19674 lt!1001379)) (list!12221 (c!454126 (_2!19674 lt!1001379))))))

(declare-fun bs!515601 () Bool)

(assert (= bs!515601 d!813691))

(declare-fun m!3230859 () Bool)

(assert (=> bs!515601 m!3230859))

(assert (=> b!2801035 d!813691))

(declare-fun d!813693 () Bool)

(assert (=> d!813693 (= (list!12220 (_1!19674 lt!1001379)) (list!12221 (c!454126 (_1!19674 lt!1001379))))))

(declare-fun bs!515602 () Bool)

(assert (= bs!515602 d!813693))

(declare-fun m!3230861 () Bool)

(assert (=> bs!515602 m!3230861))

(assert (=> b!2801035 d!813693))

(declare-fun d!813695 () Bool)

(declare-fun e!1770056 () Bool)

(assert (=> d!813695 e!1770056))

(declare-fun res!1167369 () Bool)

(assert (=> d!813695 (=> (not res!1167369) (not e!1770056))))

(declare-fun lt!1001476 () tuple2!33202)

(assert (=> d!813695 (= res!1167369 (isBalanced!3076 (c!454126 (_1!19674 lt!1001476))))))

(declare-datatypes ((tuple2!33204 0))(
  ( (tuple2!33205 (_1!19675 Conc!10082) (_2!19675 Conc!10082)) )
))
(declare-fun lt!1001475 () tuple2!33204)

(assert (=> d!813695 (= lt!1001476 (tuple2!33203 (BalanceConc!19779 (_1!19675 lt!1001475)) (BalanceConc!19779 (_2!19675 lt!1001475))))))

(declare-fun splitAt!201 (Conc!10082 Int) tuple2!33204)

(assert (=> d!813695 (= lt!1001475 (splitAt!201 (c!454126 totalInput!758) testedPSize!143))))

(assert (=> d!813695 (isBalanced!3076 (c!454126 totalInput!758))))

(assert (=> d!813695 (= (splitAt!200 totalInput!758 testedPSize!143) lt!1001476)))

(declare-fun b!2801189 () Bool)

(declare-fun res!1167370 () Bool)

(assert (=> b!2801189 (=> (not res!1167370) (not e!1770056))))

(assert (=> b!2801189 (= res!1167370 (isBalanced!3076 (c!454126 (_2!19674 lt!1001476))))))

(declare-fun b!2801190 () Bool)

(declare-datatypes ((tuple2!33206 0))(
  ( (tuple2!33207 (_1!19676 List!32666) (_2!19676 List!32666)) )
))
(declare-fun splitAtIndex!76 (List!32666 Int) tuple2!33206)

(assert (=> b!2801190 (= e!1770056 (= (tuple2!33207 (list!12220 (_1!19674 lt!1001476)) (list!12220 (_2!19674 lt!1001476))) (splitAtIndex!76 (list!12220 totalInput!758) testedPSize!143)))))

(assert (= (and d!813695 res!1167369) b!2801189))

(assert (= (and b!2801189 res!1167370) b!2801190))

(declare-fun m!3230863 () Bool)

(assert (=> d!813695 m!3230863))

(declare-fun m!3230865 () Bool)

(assert (=> d!813695 m!3230865))

(assert (=> d!813695 m!3230701))

(declare-fun m!3230867 () Bool)

(assert (=> b!2801189 m!3230867))

(declare-fun m!3230869 () Bool)

(assert (=> b!2801190 m!3230869))

(declare-fun m!3230871 () Bool)

(assert (=> b!2801190 m!3230871))

(assert (=> b!2801190 m!3230627))

(assert (=> b!2801190 m!3230627))

(declare-fun m!3230873 () Bool)

(assert (=> b!2801190 m!3230873))

(assert (=> b!2801035 d!813695))

(declare-fun d!813697 () Bool)

(assert (=> d!813697 (= (valid!3163 cacheUp!890) (validCacheMapUp!400 (cache!4089 cacheUp!890)))))

(declare-fun bs!515603 () Bool)

(assert (= bs!515603 d!813697))

(assert (=> bs!515603 m!3230699))

(assert (=> b!2801042 d!813697))

(declare-fun b!2801195 () Bool)

(declare-fun e!1770059 () Bool)

(declare-fun tp!892601 () Bool)

(assert (=> b!2801195 (= e!1770059 (and tp_is_empty!14263 tp!892601))))

(assert (=> b!2801044 (= tp!892597 e!1770059)))

(assert (= (and b!2801044 ((_ is Cons!32566) (t!228831 testedSuffix!143))) b!2801195))

(declare-fun b!2801204 () Bool)

(declare-fun e!1770066 () Bool)

(declare-fun tp!892615 () Bool)

(assert (=> b!2801204 (= e!1770066 tp!892615)))

(declare-fun tp!892614 () Bool)

(declare-fun setElem!24526 () Context!4886)

(declare-fun setNonEmpty!24526 () Bool)

(declare-fun setRes!24526 () Bool)

(assert (=> setNonEmpty!24526 (= setRes!24526 (and tp!892614 (inv!44232 setElem!24526) e!1770066))))

(declare-fun setRest!24526 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24526 (= (_2!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24526 true) setRest!24526))))

(declare-fun b!2801205 () Bool)

(declare-fun e!1770068 () Bool)

(declare-fun tp!892613 () Bool)

(assert (=> b!2801205 (= e!1770068 tp!892613)))

(declare-fun setIsEmpty!24526 () Bool)

(assert (=> setIsEmpty!24526 setRes!24526))

(declare-fun e!1770067 () Bool)

(declare-fun b!2801206 () Bool)

(declare-fun tp!892616 () Bool)

(declare-fun tp!892612 () Bool)

(assert (=> b!2801206 (= e!1770067 (and tp!892612 (inv!44232 (_2!19671 (_1!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))))) e!1770068 tp_is_empty!14263 setRes!24526 tp!892616))))

(declare-fun condSetEmpty!24526 () Bool)

(assert (=> b!2801206 (= condSetEmpty!24526 (= (_2!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801028 (= tp!892593 e!1770067)))

(assert (= b!2801206 b!2801205))

(assert (= (and b!2801206 condSetEmpty!24526) setIsEmpty!24526))

(assert (= (and b!2801206 (not condSetEmpty!24526)) setNonEmpty!24526))

(assert (= setNonEmpty!24526 b!2801204))

(assert (= (and b!2801028 ((_ is Cons!32568) (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))) b!2801206))

(declare-fun m!3230875 () Bool)

(assert (=> setNonEmpty!24526 m!3230875))

(declare-fun m!3230877 () Bool)

(assert (=> b!2801206 m!3230877))

(declare-fun b!2801207 () Bool)

(declare-fun e!1770069 () Bool)

(declare-fun tp!892620 () Bool)

(assert (=> b!2801207 (= e!1770069 tp!892620)))

(declare-fun setElem!24527 () Context!4886)

(declare-fun tp!892619 () Bool)

(declare-fun setRes!24527 () Bool)

(declare-fun setNonEmpty!24527 () Bool)

(assert (=> setNonEmpty!24527 (= setRes!24527 (and tp!892619 (inv!44232 setElem!24527) e!1770069))))

(declare-fun setRest!24527 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24527 (= (_2!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24527 true) setRest!24527))))

(declare-fun b!2801208 () Bool)

(declare-fun e!1770071 () Bool)

(declare-fun tp!892618 () Bool)

(assert (=> b!2801208 (= e!1770071 tp!892618)))

(declare-fun setIsEmpty!24527 () Bool)

(assert (=> setIsEmpty!24527 setRes!24527))

(declare-fun tp!892617 () Bool)

(declare-fun b!2801209 () Bool)

(declare-fun e!1770070 () Bool)

(declare-fun tp!892621 () Bool)

(assert (=> b!2801209 (= e!1770070 (and tp!892617 (inv!44232 (_2!19671 (_1!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))))) e!1770071 tp_is_empty!14263 setRes!24527 tp!892621))))

(declare-fun condSetEmpty!24527 () Bool)

(assert (=> b!2801209 (= condSetEmpty!24527 (= (_2!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801028 (= tp!892595 e!1770070)))

(assert (= b!2801209 b!2801208))

(assert (= (and b!2801209 condSetEmpty!24527) setIsEmpty!24527))

(assert (= (and b!2801209 (not condSetEmpty!24527)) setNonEmpty!24527))

(assert (= setNonEmpty!24527 b!2801207))

(assert (= (and b!2801028 ((_ is Cons!32568) (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))) b!2801209))

(declare-fun m!3230879 () Bool)

(assert (=> setNonEmpty!24527 m!3230879))

(declare-fun m!3230881 () Bool)

(assert (=> b!2801209 m!3230881))

(declare-fun condSetEmpty!24530 () Bool)

(assert (=> setNonEmpty!24523 (= condSetEmpty!24530 (= setRest!24523 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24530 () Bool)

(assert (=> setNonEmpty!24523 (= tp!892588 setRes!24530)))

(declare-fun setIsEmpty!24530 () Bool)

(assert (=> setIsEmpty!24530 setRes!24530))

(declare-fun setElem!24530 () Context!4886)

(declare-fun tp!892627 () Bool)

(declare-fun setNonEmpty!24530 () Bool)

(declare-fun e!1770074 () Bool)

(assert (=> setNonEmpty!24530 (= setRes!24530 (and tp!892627 (inv!44232 setElem!24530) e!1770074))))

(declare-fun setRest!24530 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24530 (= setRest!24523 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24530 true) setRest!24530))))

(declare-fun b!2801214 () Bool)

(declare-fun tp!892626 () Bool)

(assert (=> b!2801214 (= e!1770074 tp!892626)))

(assert (= (and setNonEmpty!24523 condSetEmpty!24530) setIsEmpty!24530))

(assert (= (and setNonEmpty!24523 (not condSetEmpty!24530)) setNonEmpty!24530))

(assert (= setNonEmpty!24530 b!2801214))

(declare-fun m!3230883 () Bool)

(assert (=> setNonEmpty!24530 m!3230883))

(declare-fun b!2801229 () Bool)

(declare-fun e!1770091 () Bool)

(declare-fun tp!892652 () Bool)

(assert (=> b!2801229 (= e!1770091 tp!892652)))

(declare-fun mapNonEmpty!18363 () Bool)

(declare-fun mapRes!18363 () Bool)

(declare-fun tp!892653 () Bool)

(declare-fun e!1770090 () Bool)

(assert (=> mapNonEmpty!18363 (= mapRes!18363 (and tp!892653 e!1770090))))

(declare-fun mapValue!18363 () List!32667)

(declare-fun mapKey!18363 () (_ BitVec 32))

(declare-fun mapRest!18363 () (Array (_ BitVec 32) List!32667))

(assert (=> mapNonEmpty!18363 (= mapRest!18360 (store mapRest!18363 mapKey!18363 mapValue!18363))))

(declare-fun b!2801230 () Bool)

(declare-fun e!1770088 () Bool)

(declare-fun tp!892654 () Bool)

(assert (=> b!2801230 (= e!1770088 tp!892654)))

(declare-fun setNonEmpty!24535 () Bool)

(declare-fun setElem!24536 () Context!4886)

(declare-fun setRes!24536 () Bool)

(declare-fun tp!892646 () Bool)

(assert (=> setNonEmpty!24535 (= setRes!24536 (and tp!892646 (inv!44232 setElem!24536) e!1770091))))

(declare-fun setRest!24535 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24535 (= (_2!19670 (h!37987 mapValue!18363)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24536 true) setRest!24535))))

(declare-fun setIsEmpty!24535 () Bool)

(assert (=> setIsEmpty!24535 setRes!24536))

(declare-fun b!2801231 () Bool)

(declare-fun e!1770087 () Bool)

(declare-fun tp!892650 () Bool)

(assert (=> b!2801231 (= e!1770087 tp!892650)))

(declare-fun mapDefault!18363 () List!32667)

(declare-fun b!2801232 () Bool)

(declare-fun e!1770089 () Bool)

(declare-fun e!1770092 () Bool)

(declare-fun tp!892648 () Bool)

(declare-fun setRes!24535 () Bool)

(assert (=> b!2801232 (= e!1770092 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 mapDefault!18363)))) e!1770089 tp_is_empty!14263 setRes!24535 tp!892648))))

(declare-fun condSetEmpty!24535 () Bool)

(assert (=> b!2801232 (= condSetEmpty!24535 (= (_2!19670 (h!37987 mapDefault!18363)) ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setIsEmpty!24536 () Bool)

(assert (=> setIsEmpty!24536 setRes!24535))

(declare-fun b!2801233 () Bool)

(declare-fun tp!892649 () Bool)

(assert (=> b!2801233 (= e!1770089 tp!892649)))

(declare-fun condMapEmpty!18363 () Bool)

(assert (=> mapNonEmpty!18359 (= condMapEmpty!18363 (= mapRest!18360 ((as const (Array (_ BitVec 32) List!32667)) mapDefault!18363)))))

(assert (=> mapNonEmpty!18359 (= tp!892591 (and e!1770092 mapRes!18363))))

(declare-fun tp!892647 () Bool)

(declare-fun setElem!24535 () Context!4886)

(declare-fun setNonEmpty!24536 () Bool)

(assert (=> setNonEmpty!24536 (= setRes!24535 (and tp!892647 (inv!44232 setElem!24535) e!1770087))))

(declare-fun setRest!24536 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24536 (= (_2!19670 (h!37987 mapDefault!18363)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24535 true) setRest!24536))))

(declare-fun b!2801234 () Bool)

(declare-fun tp!892651 () Bool)

(assert (=> b!2801234 (= e!1770090 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 mapValue!18363)))) e!1770088 tp_is_empty!14263 setRes!24536 tp!892651))))

(declare-fun condSetEmpty!24536 () Bool)

(assert (=> b!2801234 (= condSetEmpty!24536 (= (_2!19670 (h!37987 mapValue!18363)) ((as const (Array Context!4886 Bool)) false)))))

(declare-fun mapIsEmpty!18363 () Bool)

(assert (=> mapIsEmpty!18363 mapRes!18363))

(assert (= (and mapNonEmpty!18359 condMapEmpty!18363) mapIsEmpty!18363))

(assert (= (and mapNonEmpty!18359 (not condMapEmpty!18363)) mapNonEmpty!18363))

(assert (= b!2801234 b!2801230))

(assert (= (and b!2801234 condSetEmpty!24536) setIsEmpty!24535))

(assert (= (and b!2801234 (not condSetEmpty!24536)) setNonEmpty!24535))

(assert (= setNonEmpty!24535 b!2801229))

(assert (= (and mapNonEmpty!18363 ((_ is Cons!32567) mapValue!18363)) b!2801234))

(assert (= b!2801232 b!2801233))

(assert (= (and b!2801232 condSetEmpty!24535) setIsEmpty!24536))

(assert (= (and b!2801232 (not condSetEmpty!24535)) setNonEmpty!24536))

(assert (= setNonEmpty!24536 b!2801231))

(assert (= (and mapNonEmpty!18359 ((_ is Cons!32567) mapDefault!18363)) b!2801232))

(declare-fun m!3230885 () Bool)

(assert (=> setNonEmpty!24536 m!3230885))

(declare-fun m!3230887 () Bool)

(assert (=> mapNonEmpty!18363 m!3230887))

(declare-fun m!3230889 () Bool)

(assert (=> b!2801234 m!3230889))

(declare-fun m!3230891 () Bool)

(assert (=> setNonEmpty!24535 m!3230891))

(declare-fun m!3230893 () Bool)

(assert (=> b!2801232 m!3230893))

(declare-fun b!2801244 () Bool)

(declare-fun e!1770099 () Bool)

(declare-fun tp!892663 () Bool)

(assert (=> b!2801244 (= e!1770099 tp!892663)))

(declare-fun setIsEmpty!24539 () Bool)

(declare-fun setRes!24539 () Bool)

(assert (=> setIsEmpty!24539 setRes!24539))

(declare-fun b!2801245 () Bool)

(declare-fun e!1770100 () Bool)

(declare-fun tp!892665 () Bool)

(assert (=> b!2801245 (= e!1770100 tp!892665)))

(declare-fun setNonEmpty!24539 () Bool)

(declare-fun tp!892666 () Bool)

(declare-fun setElem!24539 () Context!4886)

(assert (=> setNonEmpty!24539 (= setRes!24539 (and tp!892666 (inv!44232 setElem!24539) e!1770099))))

(declare-fun setRest!24539 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24539 (= (_2!19670 (h!37987 mapValue!18359)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24539 true) setRest!24539))))

(declare-fun e!1770101 () Bool)

(assert (=> mapNonEmpty!18359 (= tp!892581 e!1770101)))

(declare-fun tp!892664 () Bool)

(declare-fun b!2801243 () Bool)

(assert (=> b!2801243 (= e!1770101 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 mapValue!18359)))) e!1770100 tp_is_empty!14263 setRes!24539 tp!892664))))

(declare-fun condSetEmpty!24539 () Bool)

(assert (=> b!2801243 (= condSetEmpty!24539 (= (_2!19670 (h!37987 mapValue!18359)) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801243 b!2801245))

(assert (= (and b!2801243 condSetEmpty!24539) setIsEmpty!24539))

(assert (= (and b!2801243 (not condSetEmpty!24539)) setNonEmpty!24539))

(assert (= setNonEmpty!24539 b!2801244))

(assert (= (and mapNonEmpty!18359 ((_ is Cons!32567) mapValue!18359)) b!2801243))

(declare-fun m!3230895 () Bool)

(assert (=> setNonEmpty!24539 m!3230895))

(declare-fun m!3230897 () Bool)

(assert (=> b!2801243 m!3230897))

(declare-fun b!2801247 () Bool)

(declare-fun e!1770102 () Bool)

(declare-fun tp!892667 () Bool)

(assert (=> b!2801247 (= e!1770102 tp!892667)))

(declare-fun setIsEmpty!24540 () Bool)

(declare-fun setRes!24540 () Bool)

(assert (=> setIsEmpty!24540 setRes!24540))

(declare-fun b!2801248 () Bool)

(declare-fun e!1770103 () Bool)

(declare-fun tp!892669 () Bool)

(assert (=> b!2801248 (= e!1770103 tp!892669)))

(declare-fun tp!892670 () Bool)

(declare-fun setNonEmpty!24540 () Bool)

(declare-fun setElem!24540 () Context!4886)

(assert (=> setNonEmpty!24540 (= setRes!24540 (and tp!892670 (inv!44232 setElem!24540) e!1770102))))

(declare-fun setRest!24540 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24540 (= (_2!19670 (h!37987 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24540 true) setRest!24540))))

(declare-fun e!1770104 () Bool)

(assert (=> b!2801040 (= tp!892583 e!1770104)))

(declare-fun b!2801246 () Bool)

(declare-fun tp!892668 () Bool)

(assert (=> b!2801246 (= e!1770104 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))))) e!1770103 tp_is_empty!14263 setRes!24540 tp!892668))))

(declare-fun condSetEmpty!24540 () Bool)

(assert (=> b!2801246 (= condSetEmpty!24540 (= (_2!19670 (h!37987 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801246 b!2801248))

(assert (= (and b!2801246 condSetEmpty!24540) setIsEmpty!24540))

(assert (= (and b!2801246 (not condSetEmpty!24540)) setNonEmpty!24540))

(assert (= setNonEmpty!24540 b!2801247))

(assert (= (and b!2801040 ((_ is Cons!32567) (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))) b!2801246))

(declare-fun m!3230899 () Bool)

(assert (=> setNonEmpty!24540 m!3230899))

(declare-fun m!3230901 () Bool)

(assert (=> b!2801246 m!3230901))

(declare-fun b!2801250 () Bool)

(declare-fun e!1770105 () Bool)

(declare-fun tp!892671 () Bool)

(assert (=> b!2801250 (= e!1770105 tp!892671)))

(declare-fun setIsEmpty!24541 () Bool)

(declare-fun setRes!24541 () Bool)

(assert (=> setIsEmpty!24541 setRes!24541))

(declare-fun b!2801251 () Bool)

(declare-fun e!1770106 () Bool)

(declare-fun tp!892673 () Bool)

(assert (=> b!2801251 (= e!1770106 tp!892673)))

(declare-fun tp!892674 () Bool)

(declare-fun setNonEmpty!24541 () Bool)

(declare-fun setElem!24541 () Context!4886)

(assert (=> setNonEmpty!24541 (= setRes!24541 (and tp!892674 (inv!44232 setElem!24541) e!1770105))))

(declare-fun setRest!24541 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24541 (= (_2!19670 (h!37987 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24541 true) setRest!24541))))

(declare-fun e!1770107 () Bool)

(assert (=> b!2801040 (= tp!892598 e!1770107)))

(declare-fun tp!892672 () Bool)

(declare-fun b!2801249 () Bool)

(assert (=> b!2801249 (= e!1770107 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))))) e!1770106 tp_is_empty!14263 setRes!24541 tp!892672))))

(declare-fun condSetEmpty!24541 () Bool)

(assert (=> b!2801249 (= condSetEmpty!24541 (= (_2!19670 (h!37987 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801249 b!2801251))

(assert (= (and b!2801249 condSetEmpty!24541) setIsEmpty!24541))

(assert (= (and b!2801249 (not condSetEmpty!24541)) setNonEmpty!24541))

(assert (= setNonEmpty!24541 b!2801250))

(assert (= (and b!2801040 ((_ is Cons!32567) (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))) b!2801249))

(declare-fun m!3230903 () Bool)

(assert (=> setNonEmpty!24541 m!3230903))

(declare-fun m!3230905 () Bool)

(assert (=> b!2801249 m!3230905))

(declare-fun b!2801252 () Bool)

(declare-fun e!1770108 () Bool)

(declare-fun tp!892678 () Bool)

(assert (=> b!2801252 (= e!1770108 tp!892678)))

(declare-fun setRes!24542 () Bool)

(declare-fun setElem!24542 () Context!4886)

(declare-fun tp!892677 () Bool)

(declare-fun setNonEmpty!24542 () Bool)

(assert (=> setNonEmpty!24542 (= setRes!24542 (and tp!892677 (inv!44232 setElem!24542) e!1770108))))

(declare-fun setRest!24542 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24542 (= (_2!19672 (h!37988 mapDefault!18360)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24542 true) setRest!24542))))

(declare-fun b!2801253 () Bool)

(declare-fun e!1770110 () Bool)

(declare-fun tp!892676 () Bool)

(assert (=> b!2801253 (= e!1770110 tp!892676)))

(declare-fun setIsEmpty!24542 () Bool)

(assert (=> setIsEmpty!24542 setRes!24542))

(declare-fun e!1770109 () Bool)

(declare-fun tp!892679 () Bool)

(declare-fun tp!892675 () Bool)

(declare-fun b!2801254 () Bool)

(assert (=> b!2801254 (= e!1770109 (and tp!892675 (inv!44232 (_2!19671 (_1!19672 (h!37988 mapDefault!18360)))) e!1770110 tp_is_empty!14263 setRes!24542 tp!892679))))

(declare-fun condSetEmpty!24542 () Bool)

(assert (=> b!2801254 (= condSetEmpty!24542 (= (_2!19672 (h!37988 mapDefault!18360)) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801039 (= tp!892590 e!1770109)))

(assert (= b!2801254 b!2801253))

(assert (= (and b!2801254 condSetEmpty!24542) setIsEmpty!24542))

(assert (= (and b!2801254 (not condSetEmpty!24542)) setNonEmpty!24542))

(assert (= setNonEmpty!24542 b!2801252))

(assert (= (and b!2801039 ((_ is Cons!32568) mapDefault!18360)) b!2801254))

(declare-fun m!3230907 () Bool)

(assert (=> setNonEmpty!24542 m!3230907))

(declare-fun m!3230909 () Bool)

(assert (=> b!2801254 m!3230909))

(declare-fun condMapEmpty!18366 () Bool)

(declare-fun mapDefault!18366 () List!32668)

(assert (=> mapNonEmpty!18360 (= condMapEmpty!18366 (= mapRest!18359 ((as const (Array (_ BitVec 32) List!32668)) mapDefault!18366)))))

(declare-fun e!1770125 () Bool)

(declare-fun mapRes!18366 () Bool)

(assert (=> mapNonEmpty!18360 (= tp!892585 (and e!1770125 mapRes!18366))))

(declare-fun b!2801269 () Bool)

(declare-fun e!1770127 () Bool)

(declare-fun tp!892708 () Bool)

(assert (=> b!2801269 (= e!1770127 tp!892708)))

(declare-fun tp!892711 () Bool)

(declare-fun tp!892710 () Bool)

(declare-fun b!2801270 () Bool)

(declare-fun setRes!24547 () Bool)

(assert (=> b!2801270 (= e!1770125 (and tp!892710 (inv!44232 (_2!19671 (_1!19672 (h!37988 mapDefault!18366)))) e!1770127 tp_is_empty!14263 setRes!24547 tp!892711))))

(declare-fun condSetEmpty!24547 () Bool)

(assert (=> b!2801270 (= condSetEmpty!24547 (= (_2!19672 (h!37988 mapDefault!18366)) ((as const (Array Context!4886 Bool)) false)))))

(declare-fun b!2801271 () Bool)

(declare-fun e!1770126 () Bool)

(declare-fun tp!892702 () Bool)

(assert (=> b!2801271 (= e!1770126 tp!892702)))

(declare-fun mapIsEmpty!18366 () Bool)

(assert (=> mapIsEmpty!18366 mapRes!18366))

(declare-fun setElem!24548 () Context!4886)

(declare-fun setNonEmpty!24547 () Bool)

(declare-fun setRes!24548 () Bool)

(declare-fun tp!892706 () Bool)

(declare-fun e!1770128 () Bool)

(assert (=> setNonEmpty!24547 (= setRes!24548 (and tp!892706 (inv!44232 setElem!24548) e!1770128))))

(declare-fun mapValue!18366 () List!32668)

(declare-fun setRest!24547 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24547 (= (_2!19672 (h!37988 mapValue!18366)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24548 true) setRest!24547))))

(declare-fun setIsEmpty!24547 () Bool)

(assert (=> setIsEmpty!24547 setRes!24547))

(declare-fun tp!892705 () Bool)

(declare-fun b!2801272 () Bool)

(declare-fun tp!892704 () Bool)

(declare-fun e!1770123 () Bool)

(assert (=> b!2801272 (= e!1770123 (and tp!892705 (inv!44232 (_2!19671 (_1!19672 (h!37988 mapValue!18366)))) e!1770126 tp_is_empty!14263 setRes!24548 tp!892704))))

(declare-fun condSetEmpty!24548 () Bool)

(assert (=> b!2801272 (= condSetEmpty!24548 (= (_2!19672 (h!37988 mapValue!18366)) ((as const (Array Context!4886 Bool)) false)))))

(declare-fun mapNonEmpty!18366 () Bool)

(declare-fun tp!892707 () Bool)

(assert (=> mapNonEmpty!18366 (= mapRes!18366 (and tp!892707 e!1770123))))

(declare-fun mapKey!18366 () (_ BitVec 32))

(declare-fun mapRest!18366 () (Array (_ BitVec 32) List!32668))

(assert (=> mapNonEmpty!18366 (= mapRest!18359 (store mapRest!18366 mapKey!18366 mapValue!18366))))

(declare-fun setIsEmpty!24548 () Bool)

(assert (=> setIsEmpty!24548 setRes!24548))

(declare-fun b!2801273 () Bool)

(declare-fun tp!892712 () Bool)

(assert (=> b!2801273 (= e!1770128 tp!892712)))

(declare-fun b!2801274 () Bool)

(declare-fun e!1770124 () Bool)

(declare-fun tp!892709 () Bool)

(assert (=> b!2801274 (= e!1770124 tp!892709)))

(declare-fun setNonEmpty!24548 () Bool)

(declare-fun setElem!24547 () Context!4886)

(declare-fun tp!892703 () Bool)

(assert (=> setNonEmpty!24548 (= setRes!24547 (and tp!892703 (inv!44232 setElem!24547) e!1770124))))

(declare-fun setRest!24548 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24548 (= (_2!19672 (h!37988 mapDefault!18366)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24547 true) setRest!24548))))

(assert (= (and mapNonEmpty!18360 condMapEmpty!18366) mapIsEmpty!18366))

(assert (= (and mapNonEmpty!18360 (not condMapEmpty!18366)) mapNonEmpty!18366))

(assert (= b!2801272 b!2801271))

(assert (= (and b!2801272 condSetEmpty!24548) setIsEmpty!24548))

(assert (= (and b!2801272 (not condSetEmpty!24548)) setNonEmpty!24547))

(assert (= setNonEmpty!24547 b!2801273))

(assert (= (and mapNonEmpty!18366 ((_ is Cons!32568) mapValue!18366)) b!2801272))

(assert (= b!2801270 b!2801269))

(assert (= (and b!2801270 condSetEmpty!24547) setIsEmpty!24547))

(assert (= (and b!2801270 (not condSetEmpty!24547)) setNonEmpty!24548))

(assert (= setNonEmpty!24548 b!2801274))

(assert (= (and mapNonEmpty!18360 ((_ is Cons!32568) mapDefault!18366)) b!2801270))

(declare-fun m!3230911 () Bool)

(assert (=> mapNonEmpty!18366 m!3230911))

(declare-fun m!3230913 () Bool)

(assert (=> b!2801272 m!3230913))

(declare-fun m!3230915 () Bool)

(assert (=> setNonEmpty!24548 m!3230915))

(declare-fun m!3230917 () Bool)

(assert (=> setNonEmpty!24547 m!3230917))

(declare-fun m!3230919 () Bool)

(assert (=> b!2801270 m!3230919))

(declare-fun b!2801275 () Bool)

(declare-fun e!1770129 () Bool)

(declare-fun tp!892716 () Bool)

(assert (=> b!2801275 (= e!1770129 tp!892716)))

(declare-fun setRes!24549 () Bool)

(declare-fun setElem!24549 () Context!4886)

(declare-fun setNonEmpty!24549 () Bool)

(declare-fun tp!892715 () Bool)

(assert (=> setNonEmpty!24549 (= setRes!24549 (and tp!892715 (inv!44232 setElem!24549) e!1770129))))

(declare-fun setRest!24549 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24549 (= (_2!19672 (h!37988 mapValue!18360)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24549 true) setRest!24549))))

(declare-fun b!2801276 () Bool)

(declare-fun e!1770131 () Bool)

(declare-fun tp!892714 () Bool)

(assert (=> b!2801276 (= e!1770131 tp!892714)))

(declare-fun setIsEmpty!24549 () Bool)

(assert (=> setIsEmpty!24549 setRes!24549))

(declare-fun tp!892713 () Bool)

(declare-fun b!2801277 () Bool)

(declare-fun e!1770130 () Bool)

(declare-fun tp!892717 () Bool)

(assert (=> b!2801277 (= e!1770130 (and tp!892713 (inv!44232 (_2!19671 (_1!19672 (h!37988 mapValue!18360)))) e!1770131 tp_is_empty!14263 setRes!24549 tp!892717))))

(declare-fun condSetEmpty!24549 () Bool)

(assert (=> b!2801277 (= condSetEmpty!24549 (= (_2!19672 (h!37988 mapValue!18360)) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> mapNonEmpty!18360 (= tp!892594 e!1770130)))

(assert (= b!2801277 b!2801276))

(assert (= (and b!2801277 condSetEmpty!24549) setIsEmpty!24549))

(assert (= (and b!2801277 (not condSetEmpty!24549)) setNonEmpty!24549))

(assert (= setNonEmpty!24549 b!2801275))

(assert (= (and mapNonEmpty!18360 ((_ is Cons!32568) mapValue!18360)) b!2801277))

(declare-fun m!3230921 () Bool)

(assert (=> setNonEmpty!24549 m!3230921))

(declare-fun m!3230923 () Bool)

(assert (=> b!2801277 m!3230923))

(declare-fun b!2801286 () Bool)

(declare-fun tp!892725 () Bool)

(declare-fun e!1770137 () Bool)

(declare-fun tp!892726 () Bool)

(assert (=> b!2801286 (= e!1770137 (and (inv!44228 (left!24594 (c!454126 totalInput!758))) tp!892725 (inv!44228 (right!24924 (c!454126 totalInput!758))) tp!892726))))

(declare-fun b!2801288 () Bool)

(declare-fun e!1770136 () Bool)

(declare-fun tp!892724 () Bool)

(assert (=> b!2801288 (= e!1770136 tp!892724)))

(declare-fun b!2801287 () Bool)

(declare-fun inv!44235 (IArray!20169) Bool)

(assert (=> b!2801287 (= e!1770137 (and (inv!44235 (xs!13194 (c!454126 totalInput!758))) e!1770136))))

(assert (=> b!2801023 (= tp!892587 (and (inv!44228 (c!454126 totalInput!758)) e!1770137))))

(assert (= (and b!2801023 ((_ is Node!10082) (c!454126 totalInput!758))) b!2801286))

(assert (= b!2801287 b!2801288))

(assert (= (and b!2801023 ((_ is Leaf!15363) (c!454126 totalInput!758))) b!2801287))

(declare-fun m!3230925 () Bool)

(assert (=> b!2801286 m!3230925))

(declare-fun m!3230927 () Bool)

(assert (=> b!2801286 m!3230927))

(declare-fun m!3230929 () Bool)

(assert (=> b!2801287 m!3230929))

(assert (=> b!2801023 m!3230599))

(declare-fun b!2801289 () Bool)

(declare-fun e!1770138 () Bool)

(declare-fun tp!892727 () Bool)

(assert (=> b!2801289 (= e!1770138 (and tp_is_empty!14263 tp!892727))))

(assert (=> b!2801043 (= tp!892582 e!1770138)))

(assert (= (and b!2801043 ((_ is Cons!32566) (t!228831 testedP!183))) b!2801289))

(declare-fun b!2801294 () Bool)

(declare-fun e!1770141 () Bool)

(declare-fun tp!892732 () Bool)

(declare-fun tp!892733 () Bool)

(assert (=> b!2801294 (= e!1770141 (and tp!892732 tp!892733))))

(assert (=> b!2801025 (= tp!892586 e!1770141)))

(assert (= (and b!2801025 ((_ is Cons!32565) (exprs!2943 setElem!24523))) b!2801294))

(declare-fun b!2801296 () Bool)

(declare-fun e!1770142 () Bool)

(declare-fun tp!892734 () Bool)

(assert (=> b!2801296 (= e!1770142 tp!892734)))

(declare-fun setIsEmpty!24550 () Bool)

(declare-fun setRes!24550 () Bool)

(assert (=> setIsEmpty!24550 setRes!24550))

(declare-fun b!2801297 () Bool)

(declare-fun e!1770143 () Bool)

(declare-fun tp!892736 () Bool)

(assert (=> b!2801297 (= e!1770143 tp!892736)))

(declare-fun tp!892737 () Bool)

(declare-fun setElem!24550 () Context!4886)

(declare-fun setNonEmpty!24550 () Bool)

(assert (=> setNonEmpty!24550 (= setRes!24550 (and tp!892737 (inv!44232 setElem!24550) e!1770142))))

(declare-fun setRest!24550 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24550 (= (_2!19670 (h!37987 mapDefault!18359)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24550 true) setRest!24550))))

(declare-fun e!1770144 () Bool)

(assert (=> b!2801026 (= tp!892596 e!1770144)))

(declare-fun tp!892735 () Bool)

(declare-fun b!2801295 () Bool)

(assert (=> b!2801295 (= e!1770144 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 mapDefault!18359)))) e!1770143 tp_is_empty!14263 setRes!24550 tp!892735))))

(declare-fun condSetEmpty!24550 () Bool)

(assert (=> b!2801295 (= condSetEmpty!24550 (= (_2!19670 (h!37987 mapDefault!18359)) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801295 b!2801297))

(assert (= (and b!2801295 condSetEmpty!24550) setIsEmpty!24550))

(assert (= (and b!2801295 (not condSetEmpty!24550)) setNonEmpty!24550))

(assert (= setNonEmpty!24550 b!2801296))

(assert (= (and b!2801026 ((_ is Cons!32567) mapDefault!18359)) b!2801295))

(declare-fun m!3230931 () Bool)

(assert (=> setNonEmpty!24550 m!3230931))

(declare-fun m!3230933 () Bool)

(assert (=> b!2801295 m!3230933))

(check-sat (not b!2801144) (not setNonEmpty!24547) (not b!2801276) (not d!813637) (not d!813653) (not setNonEmpty!24548) (not setNonEmpty!24530) (not b!2801098) (not d!813627) (not b!2801170) (not b!2801071) (not b!2801232) (not b!2801207) (not b_next!80143) (not b!2801243) (not setNonEmpty!24527) (not setNonEmpty!24536) (not b!2801023) (not d!813693) (not d!813649) (not b!2801183) (not b!2801156) (not d!813639) (not b!2801089) (not d!813611) (not b!2801182) (not setNonEmpty!24540) (not b!2801275) (not b!2801178) (not d!813601) (not d!813689) (not b!2801234) (not b!2801159) b_and!204175 (not b!2801251) (not b!2801158) (not b!2801271) (not d!813631) (not d!813607) (not d!813661) (not d!813619) (not d!813645) (not b!2801287) (not b!2801180) (not d!813633) (not b!2801230) (not d!813695) (not b!2801070) (not d!813659) (not d!813687) (not b!2801142) b_and!204179 (not setNonEmpty!24535) (not b!2801171) (not b!2801176) (not b!2801059) (not bm!182856) b_and!204181 (not d!813673) (not b!2801129) (not b!2801229) (not b!2801244) (not b!2801277) (not b!2801167) (not b!2801147) (not b!2801231) (not b_next!80141) (not b!2801253) (not d!813643) (not b!2801246) (not d!813691) b_and!204177 (not b!2801058) (not b!2801214) (not b!2801189) (not d!813677) (not b!2801206) (not d!813647) (not b!2801093) (not b!2801204) (not b!2801272) (not b!2801254) (not b!2801065) (not b!2801090) (not b!2801249) (not setNonEmpty!24550) (not d!813641) (not b!2801175) (not mapNonEmpty!18366) (not b!2801190) (not b!2801195) (not b!2801076) (not b!2801073) (not b!2801248) (not b!2801166) (not b!2801208) (not setNonEmpty!24549) (not b!2801233) (not b!2801104) (not setNonEmpty!24542) (not bm!182852) (not d!813675) (not d!813697) (not b!2801288) (not b!2801245) (not setNonEmpty!24541) (not b!2801252) (not mapNonEmpty!18363) (not b!2801297) (not b!2801057) (not b!2801296) (not d!813669) (not b!2801270) (not b!2801163) (not b!2801135) (not b!2801160) (not b!2801247) (not d!813681) (not b!2801162) (not b_next!80147) (not b!2801132) (not bm!182853) (not setNonEmpty!24539) (not b!2801250) (not d!813605) (not b!2801294) (not b!2801174) (not b!2801143) (not b_next!80145) (not d!813667) (not d!813651) (not b!2801209) (not b!2801286) (not b!2801179) (not b!2801205) (not setNonEmpty!24526) (not b!2801289) (not b!2801274) (not b!2801154) tp_is_empty!14263 (not b!2801079) (not b!2801269) (not b!2801295) (not b!2801099) (not b!2801273))
(check-sat (not b_next!80143) b_and!204175 b_and!204179 b_and!204181 (not b_next!80141) b_and!204177 (not b_next!80147) (not b_next!80145))
(get-model)

(declare-fun d!813699 () Bool)

(declare-fun c!454173 () Bool)

(assert (=> d!813699 (= c!454173 ((_ is Node!10082) (left!24594 (c!454126 totalInput!758))))))

(declare-fun e!1770145 () Bool)

(assert (=> d!813699 (= (inv!44228 (left!24594 (c!454126 totalInput!758))) e!1770145)))

(declare-fun b!2801298 () Bool)

(assert (=> b!2801298 (= e!1770145 (inv!44233 (left!24594 (c!454126 totalInput!758))))))

(declare-fun b!2801299 () Bool)

(declare-fun e!1770146 () Bool)

(assert (=> b!2801299 (= e!1770145 e!1770146)))

(declare-fun res!1167371 () Bool)

(assert (=> b!2801299 (= res!1167371 (not ((_ is Leaf!15363) (left!24594 (c!454126 totalInput!758)))))))

(assert (=> b!2801299 (=> res!1167371 e!1770146)))

(declare-fun b!2801300 () Bool)

(assert (=> b!2801300 (= e!1770146 (inv!44234 (left!24594 (c!454126 totalInput!758))))))

(assert (= (and d!813699 c!454173) b!2801298))

(assert (= (and d!813699 (not c!454173)) b!2801299))

(assert (= (and b!2801299 (not res!1167371)) b!2801300))

(declare-fun m!3230935 () Bool)

(assert (=> b!2801298 m!3230935))

(declare-fun m!3230937 () Bool)

(assert (=> b!2801300 m!3230937))

(assert (=> b!2801286 d!813699))

(declare-fun d!813701 () Bool)

(declare-fun c!454174 () Bool)

(assert (=> d!813701 (= c!454174 ((_ is Node!10082) (right!24924 (c!454126 totalInput!758))))))

(declare-fun e!1770147 () Bool)

(assert (=> d!813701 (= (inv!44228 (right!24924 (c!454126 totalInput!758))) e!1770147)))

(declare-fun b!2801301 () Bool)

(assert (=> b!2801301 (= e!1770147 (inv!44233 (right!24924 (c!454126 totalInput!758))))))

(declare-fun b!2801302 () Bool)

(declare-fun e!1770148 () Bool)

(assert (=> b!2801302 (= e!1770147 e!1770148)))

(declare-fun res!1167372 () Bool)

(assert (=> b!2801302 (= res!1167372 (not ((_ is Leaf!15363) (right!24924 (c!454126 totalInput!758)))))))

(assert (=> b!2801302 (=> res!1167372 e!1770148)))

(declare-fun b!2801303 () Bool)

(assert (=> b!2801303 (= e!1770148 (inv!44234 (right!24924 (c!454126 totalInput!758))))))

(assert (= (and d!813701 c!454174) b!2801301))

(assert (= (and d!813701 (not c!454174)) b!2801302))

(assert (= (and b!2801302 (not res!1167372)) b!2801303))

(declare-fun m!3230939 () Bool)

(assert (=> b!2801301 m!3230939))

(declare-fun m!3230941 () Bool)

(assert (=> b!2801303 m!3230941))

(assert (=> b!2801286 d!813701))

(assert (=> b!2801135 d!813635))

(assert (=> d!813669 d!813683))

(assert (=> d!813669 d!813643))

(declare-fun b!2801304 () Bool)

(declare-fun e!1770149 () List!32666)

(assert (=> b!2801304 (= e!1770149 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566))))

(declare-fun lt!1001477 () List!32666)

(declare-fun e!1770150 () Bool)

(declare-fun b!2801307 () Bool)

(assert (=> b!2801307 (= e!1770150 (or (not (= (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566) Nil!32566)) (= lt!1001477 testedP!183)))))

(declare-fun b!2801306 () Bool)

(declare-fun res!1167374 () Bool)

(assert (=> b!2801306 (=> (not res!1167374) (not e!1770150))))

(assert (=> b!2801306 (= res!1167374 (= (size!25423 lt!1001477) (+ (size!25423 testedP!183) (size!25423 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566)))))))

(declare-fun b!2801305 () Bool)

(assert (=> b!2801305 (= e!1770149 (Cons!32566 (h!37986 testedP!183) (++!8028 (t!228831 testedP!183) (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566))))))

(declare-fun d!813703 () Bool)

(assert (=> d!813703 e!1770150))

(declare-fun res!1167373 () Bool)

(assert (=> d!813703 (=> (not res!1167373) (not e!1770150))))

(assert (=> d!813703 (= res!1167373 (= (content!4545 lt!1001477) ((_ map or) (content!4545 testedP!183) (content!4545 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566)))))))

(assert (=> d!813703 (= lt!1001477 e!1770149)))

(declare-fun c!454175 () Bool)

(assert (=> d!813703 (= c!454175 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813703 (= (++!8028 testedP!183 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566)) lt!1001477)))

(assert (= (and d!813703 c!454175) b!2801304))

(assert (= (and d!813703 (not c!454175)) b!2801305))

(assert (= (and d!813703 res!1167373) b!2801306))

(assert (= (and b!2801306 res!1167374) b!2801307))

(declare-fun m!3230943 () Bool)

(assert (=> b!2801306 m!3230943))

(assert (=> b!2801306 m!3230579))

(declare-fun m!3230945 () Bool)

(assert (=> b!2801306 m!3230945))

(declare-fun m!3230947 () Bool)

(assert (=> b!2801305 m!3230947))

(declare-fun m!3230949 () Bool)

(assert (=> d!813703 m!3230949))

(assert (=> d!813703 m!3230715))

(declare-fun m!3230951 () Bool)

(assert (=> d!813703 m!3230951))

(assert (=> d!813669 d!813703))

(declare-fun d!813705 () Bool)

(assert (=> d!813705 (isPrefix!2640 (++!8028 testedP!183 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566)) lt!1001381)))

(assert (=> d!813705 true))

(declare-fun _$65!1248 () Unit!46678)

(assert (=> d!813705 (= (choose!16507 testedP!183 lt!1001381) _$65!1248)))

(declare-fun bs!515604 () Bool)

(assert (= bs!515604 d!813705))

(assert (=> bs!515604 m!3230615))

(assert (=> bs!515604 m!3230615))

(assert (=> bs!515604 m!3230791))

(assert (=> bs!515604 m!3230785))

(assert (=> bs!515604 m!3230785))

(assert (=> bs!515604 m!3230787))

(assert (=> d!813669 d!813705))

(declare-fun d!813707 () Bool)

(assert (=> d!813707 (= (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) (h!37986 (getSuffix!1316 lt!1001381 testedP!183)))))

(assert (=> d!813669 d!813707))

(declare-fun b!2801308 () Bool)

(declare-fun e!1770151 () Bool)

(declare-fun e!1770153 () Bool)

(assert (=> b!2801308 (= e!1770151 e!1770153)))

(declare-fun res!1167377 () Bool)

(assert (=> b!2801308 (=> (not res!1167377) (not e!1770153))))

(assert (=> b!2801308 (= res!1167377 (not ((_ is Nil!32566) lt!1001381)))))

(declare-fun d!813709 () Bool)

(declare-fun e!1770152 () Bool)

(assert (=> d!813709 e!1770152))

(declare-fun res!1167376 () Bool)

(assert (=> d!813709 (=> res!1167376 e!1770152)))

(declare-fun lt!1001478 () Bool)

(assert (=> d!813709 (= res!1167376 (not lt!1001478))))

(assert (=> d!813709 (= lt!1001478 e!1770151)))

(declare-fun res!1167375 () Bool)

(assert (=> d!813709 (=> res!1167375 e!1770151)))

(assert (=> d!813709 (= res!1167375 ((_ is Nil!32566) (++!8028 testedP!183 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566))))))

(assert (=> d!813709 (= (isPrefix!2640 (++!8028 testedP!183 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566)) lt!1001381) lt!1001478)))

(declare-fun b!2801309 () Bool)

(declare-fun res!1167378 () Bool)

(assert (=> b!2801309 (=> (not res!1167378) (not e!1770153))))

(assert (=> b!2801309 (= res!1167378 (= (head!6207 (++!8028 testedP!183 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566))) (head!6207 lt!1001381)))))

(declare-fun b!2801311 () Bool)

(assert (=> b!2801311 (= e!1770152 (>= (size!25423 lt!1001381) (size!25423 (++!8028 testedP!183 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566)))))))

(declare-fun b!2801310 () Bool)

(assert (=> b!2801310 (= e!1770153 (isPrefix!2640 (tail!4434 (++!8028 testedP!183 (Cons!32566 (head!6207 (getSuffix!1316 lt!1001381 testedP!183)) Nil!32566))) (tail!4434 lt!1001381)))))

(assert (= (and d!813709 (not res!1167375)) b!2801308))

(assert (= (and b!2801308 res!1167377) b!2801309))

(assert (= (and b!2801309 res!1167378) b!2801310))

(assert (= (and d!813709 (not res!1167376)) b!2801311))

(assert (=> b!2801309 m!3230785))

(declare-fun m!3230953 () Bool)

(assert (=> b!2801309 m!3230953))

(assert (=> b!2801309 m!3230673))

(assert (=> b!2801311 m!3230667))

(assert (=> b!2801311 m!3230785))

(declare-fun m!3230955 () Bool)

(assert (=> b!2801311 m!3230955))

(assert (=> b!2801310 m!3230785))

(declare-fun m!3230957 () Bool)

(assert (=> b!2801310 m!3230957))

(assert (=> b!2801310 m!3230675))

(assert (=> b!2801310 m!3230957))

(assert (=> b!2801310 m!3230675))

(declare-fun m!3230959 () Bool)

(assert (=> b!2801310 m!3230959))

(assert (=> d!813669 d!813709))

(declare-fun b!2801312 () Bool)

(declare-fun e!1770154 () Bool)

(declare-fun e!1770156 () Bool)

(assert (=> b!2801312 (= e!1770154 e!1770156)))

(declare-fun res!1167381 () Bool)

(assert (=> b!2801312 (=> (not res!1167381) (not e!1770156))))

(assert (=> b!2801312 (= res!1167381 (not ((_ is Nil!32566) (++!8028 testedP!183 testedSuffix!143))))))

(declare-fun d!813711 () Bool)

(declare-fun e!1770155 () Bool)

(assert (=> d!813711 e!1770155))

(declare-fun res!1167380 () Bool)

(assert (=> d!813711 (=> res!1167380 e!1770155)))

(declare-fun lt!1001479 () Bool)

(assert (=> d!813711 (= res!1167380 (not lt!1001479))))

(assert (=> d!813711 (= lt!1001479 e!1770154)))

(declare-fun res!1167379 () Bool)

(assert (=> d!813711 (=> res!1167379 e!1770154)))

(assert (=> d!813711 (= res!1167379 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813711 (= (isPrefix!2640 testedP!183 (++!8028 testedP!183 testedSuffix!143)) lt!1001479)))

(declare-fun b!2801313 () Bool)

(declare-fun res!1167382 () Bool)

(assert (=> b!2801313 (=> (not res!1167382) (not e!1770156))))

(assert (=> b!2801313 (= res!1167382 (= (head!6207 testedP!183) (head!6207 (++!8028 testedP!183 testedSuffix!143))))))

(declare-fun b!2801315 () Bool)

(assert (=> b!2801315 (= e!1770155 (>= (size!25423 (++!8028 testedP!183 testedSuffix!143)) (size!25423 testedP!183)))))

(declare-fun b!2801314 () Bool)

(assert (=> b!2801314 (= e!1770156 (isPrefix!2640 (tail!4434 testedP!183) (tail!4434 (++!8028 testedP!183 testedSuffix!143))))))

(assert (= (and d!813711 (not res!1167379)) b!2801312))

(assert (= (and b!2801312 res!1167381) b!2801313))

(assert (= (and b!2801313 res!1167382) b!2801314))

(assert (= (and d!813711 (not res!1167380)) b!2801315))

(assert (=> b!2801313 m!3230827))

(assert (=> b!2801313 m!3230635))

(declare-fun m!3230961 () Bool)

(assert (=> b!2801313 m!3230961))

(assert (=> b!2801315 m!3230635))

(declare-fun m!3230963 () Bool)

(assert (=> b!2801315 m!3230963))

(assert (=> b!2801315 m!3230579))

(assert (=> b!2801314 m!3230829))

(assert (=> b!2801314 m!3230635))

(declare-fun m!3230965 () Bool)

(assert (=> b!2801314 m!3230965))

(assert (=> b!2801314 m!3230829))

(assert (=> b!2801314 m!3230965))

(declare-fun m!3230967 () Bool)

(assert (=> b!2801314 m!3230967))

(assert (=> d!813687 d!813711))

(assert (=> d!813687 d!813633))

(declare-fun d!813713 () Bool)

(assert (=> d!813713 (isPrefix!2640 testedP!183 (++!8028 testedP!183 testedSuffix!143))))

(assert (=> d!813713 true))

(declare-fun _$46!1413 () Unit!46678)

(assert (=> d!813713 (= (choose!16508 testedP!183 testedSuffix!143) _$46!1413)))

(declare-fun bs!515605 () Bool)

(assert (= bs!515605 d!813713))

(assert (=> bs!515605 m!3230635))

(assert (=> bs!515605 m!3230635))

(assert (=> bs!515605 m!3230841))

(assert (=> d!813687 d!813713))

(declare-fun d!813715 () Bool)

(declare-fun res!1167389 () Bool)

(declare-fun e!1770161 () Bool)

(assert (=> d!813715 (=> (not res!1167389) (not e!1770161))))

(declare-fun valid!3164 (MutableMap!3947) Bool)

(assert (=> d!813715 (= res!1167389 (valid!3164 (cache!4090 cacheDown!1009)))))

(assert (=> d!813715 (= (validCacheMapDown!431 (cache!4090 cacheDown!1009)) e!1770161)))

(declare-fun b!2801322 () Bool)

(declare-fun res!1167390 () Bool)

(assert (=> b!2801322 (=> (not res!1167390) (not e!1770161))))

(declare-fun invariantList!466 (List!32668) Bool)

(declare-datatypes ((ListMap!1265 0))(
  ( (ListMap!1266 (toList!1887 List!32668)) )
))
(declare-fun map!7050 (MutableMap!3947) ListMap!1265)

(assert (=> b!2801322 (= res!1167390 (invariantList!466 (toList!1887 (map!7050 (cache!4090 cacheDown!1009)))))))

(declare-fun b!2801323 () Bool)

(declare-fun lambda!102899 () Int)

(declare-fun forall!6712 (List!32668 Int) Bool)

(assert (=> b!2801323 (= e!1770161 (forall!6712 (toList!1887 (map!7050 (cache!4090 cacheDown!1009))) lambda!102899))))

(assert (= (and d!813715 res!1167389) b!2801322))

(assert (= (and b!2801322 res!1167390) b!2801323))

(declare-fun m!3230970 () Bool)

(assert (=> d!813715 m!3230970))

(declare-fun m!3230972 () Bool)

(assert (=> b!2801322 m!3230972))

(declare-fun m!3230974 () Bool)

(assert (=> b!2801322 m!3230974))

(assert (=> b!2801323 m!3230972))

(declare-fun m!3230976 () Bool)

(assert (=> b!2801323 m!3230976))

(assert (=> d!813659 d!813715))

(declare-fun d!813717 () Bool)

(declare-fun lt!1001482 () Bool)

(assert (=> d!813717 (= lt!1001482 (select (content!4545 lt!1001381) lt!1001450))))

(declare-fun e!1770166 () Bool)

(assert (=> d!813717 (= lt!1001482 e!1770166)))

(declare-fun res!1167395 () Bool)

(assert (=> d!813717 (=> (not res!1167395) (not e!1770166))))

(assert (=> d!813717 (= res!1167395 ((_ is Cons!32566) lt!1001381))))

(assert (=> d!813717 (= (contains!6018 lt!1001381 lt!1001450) lt!1001482)))

(declare-fun b!2801328 () Bool)

(declare-fun e!1770167 () Bool)

(assert (=> b!2801328 (= e!1770166 e!1770167)))

(declare-fun res!1167396 () Bool)

(assert (=> b!2801328 (=> res!1167396 e!1770167)))

(assert (=> b!2801328 (= res!1167396 (= (h!37986 lt!1001381) lt!1001450))))

(declare-fun b!2801329 () Bool)

(assert (=> b!2801329 (= e!1770167 (contains!6018 (t!228831 lt!1001381) lt!1001450))))

(assert (= (and d!813717 res!1167395) b!2801328))

(assert (= (and b!2801328 (not res!1167396)) b!2801329))

(assert (=> d!813717 m!3230751))

(declare-fun m!3230978 () Bool)

(assert (=> d!813717 m!3230978))

(declare-fun m!3230980 () Bool)

(assert (=> b!2801329 m!3230980))

(assert (=> d!813651 d!813717))

(declare-fun d!813719 () Bool)

(declare-fun lt!1001483 () C!16608)

(assert (=> d!813719 (contains!6018 (list!12220 totalInput!758) lt!1001483)))

(declare-fun e!1770169 () C!16608)

(assert (=> d!813719 (= lt!1001483 e!1770169)))

(declare-fun c!454176 () Bool)

(assert (=> d!813719 (= c!454176 (= testedPSize!143 0))))

(declare-fun e!1770168 () Bool)

(assert (=> d!813719 e!1770168))

(declare-fun res!1167397 () Bool)

(assert (=> d!813719 (=> (not res!1167397) (not e!1770168))))

(assert (=> d!813719 (= res!1167397 (<= 0 testedPSize!143))))

(assert (=> d!813719 (= (apply!7616 (list!12220 totalInput!758) testedPSize!143) lt!1001483)))

(declare-fun b!2801330 () Bool)

(assert (=> b!2801330 (= e!1770168 (< testedPSize!143 (size!25423 (list!12220 totalInput!758))))))

(declare-fun b!2801331 () Bool)

(assert (=> b!2801331 (= e!1770169 (head!6207 (list!12220 totalInput!758)))))

(declare-fun b!2801332 () Bool)

(assert (=> b!2801332 (= e!1770169 (apply!7616 (tail!4434 (list!12220 totalInput!758)) (- testedPSize!143 1)))))

(assert (= (and d!813719 res!1167397) b!2801330))

(assert (= (and d!813719 c!454176) b!2801331))

(assert (= (and d!813719 (not c!454176)) b!2801332))

(assert (=> d!813719 m!3230627))

(declare-fun m!3230982 () Bool)

(assert (=> d!813719 m!3230982))

(assert (=> b!2801330 m!3230627))

(assert (=> b!2801330 m!3230681))

(assert (=> b!2801331 m!3230627))

(declare-fun m!3230984 () Bool)

(assert (=> b!2801331 m!3230984))

(assert (=> b!2801332 m!3230627))

(declare-fun m!3230986 () Bool)

(assert (=> b!2801332 m!3230986))

(assert (=> b!2801332 m!3230986))

(declare-fun m!3230988 () Bool)

(assert (=> b!2801332 m!3230988))

(assert (=> d!813653 d!813719))

(assert (=> d!813653 d!813631))

(declare-fun b!2801347 () Bool)

(declare-fun e!1770180 () Int)

(assert (=> b!2801347 (= e!1770180 (- testedPSize!143 (size!25428 (left!24594 (c!454126 totalInput!758)))))))

(declare-fun b!2801348 () Bool)

(declare-fun e!1770178 () Bool)

(assert (=> b!2801348 (= e!1770178 (< testedPSize!143 (size!25428 (c!454126 totalInput!758))))))

(declare-fun b!2801349 () Bool)

(declare-fun e!1770179 () C!16608)

(declare-fun call!182864 () C!16608)

(assert (=> b!2801349 (= e!1770179 call!182864)))

(declare-fun b!2801350 () Bool)

(declare-fun e!1770181 () C!16608)

(assert (=> b!2801350 (= e!1770181 e!1770179)))

(declare-fun lt!1001488 () Bool)

(declare-fun appendIndex!287 (List!32666 List!32666 Int) Bool)

(assert (=> b!2801350 (= lt!1001488 (appendIndex!287 (list!12221 (left!24594 (c!454126 totalInput!758))) (list!12221 (right!24924 (c!454126 totalInput!758))) testedPSize!143))))

(declare-fun c!454184 () Bool)

(assert (=> b!2801350 (= c!454184 (< testedPSize!143 (size!25428 (left!24594 (c!454126 totalInput!758)))))))

(declare-fun b!2801351 () Bool)

(assert (=> b!2801351 (= e!1770179 call!182864)))

(declare-fun b!2801352 () Bool)

(assert (=> b!2801352 (= e!1770180 testedPSize!143)))

(declare-fun b!2801353 () Bool)

(declare-fun apply!7618 (IArray!20169 Int) C!16608)

(assert (=> b!2801353 (= e!1770181 (apply!7618 (xs!13194 (c!454126 totalInput!758)) testedPSize!143))))

(declare-fun bm!182859 () Bool)

(declare-fun c!454185 () Bool)

(assert (=> bm!182859 (= c!454185 c!454184)))

(assert (=> bm!182859 (= call!182864 (apply!7617 (ite c!454184 (left!24594 (c!454126 totalInput!758)) (right!24924 (c!454126 totalInput!758))) e!1770180))))

(declare-fun d!813721 () Bool)

(declare-fun lt!1001489 () C!16608)

(assert (=> d!813721 (= lt!1001489 (apply!7616 (list!12221 (c!454126 totalInput!758)) testedPSize!143))))

(assert (=> d!813721 (= lt!1001489 e!1770181)))

(declare-fun c!454183 () Bool)

(assert (=> d!813721 (= c!454183 ((_ is Leaf!15363) (c!454126 totalInput!758)))))

(assert (=> d!813721 e!1770178))

(declare-fun res!1167400 () Bool)

(assert (=> d!813721 (=> (not res!1167400) (not e!1770178))))

(assert (=> d!813721 (= res!1167400 (<= 0 testedPSize!143))))

(assert (=> d!813721 (= (apply!7617 (c!454126 totalInput!758) testedPSize!143) lt!1001489)))

(assert (= (and d!813721 res!1167400) b!2801348))

(assert (= (and d!813721 c!454183) b!2801353))

(assert (= (and d!813721 (not c!454183)) b!2801350))

(assert (= (and b!2801350 c!454184) b!2801351))

(assert (= (and b!2801350 (not c!454184)) b!2801349))

(assert (= (or b!2801351 b!2801349) bm!182859))

(assert (= (and bm!182859 c!454185) b!2801352))

(assert (= (and bm!182859 (not c!454185)) b!2801347))

(declare-fun m!3230990 () Bool)

(assert (=> bm!182859 m!3230990))

(declare-fun m!3230992 () Bool)

(assert (=> b!2801353 m!3230992))

(assert (=> b!2801348 m!3230683))

(declare-fun m!3230994 () Bool)

(assert (=> b!2801350 m!3230994))

(declare-fun m!3230996 () Bool)

(assert (=> b!2801350 m!3230996))

(assert (=> b!2801350 m!3230994))

(assert (=> b!2801350 m!3230996))

(declare-fun m!3230998 () Bool)

(assert (=> b!2801350 m!3230998))

(declare-fun m!3231000 () Bool)

(assert (=> b!2801350 m!3231000))

(assert (=> d!813721 m!3230705))

(assert (=> d!813721 m!3230705))

(declare-fun m!3231002 () Bool)

(assert (=> d!813721 m!3231002))

(assert (=> b!2801347 m!3231000))

(assert (=> d!813653 d!813721))

(declare-fun d!813723 () Bool)

(assert (=> d!813723 true))

(declare-fun lambda!102902 () Int)

(declare-fun flatMap!190 ((InoxSet Context!4886) Int) (InoxSet Context!4886))

(assert (=> d!813723 (= (derivationStepZipper!380 z!3684 lt!1001359) (flatMap!190 z!3684 lambda!102902))))

(declare-fun bs!515606 () Bool)

(assert (= bs!515606 d!813723))

(declare-fun m!3231004 () Bool)

(assert (=> bs!515606 m!3231004))

(assert (=> d!813611 d!813723))

(declare-fun b!2801402 () Bool)

(declare-fun b_free!79445 () Bool)

(declare-fun b_next!80149 () Bool)

(assert (=> b!2801402 (= b_free!79445 (not b_next!80149))))

(declare-fun tp!892785 () Bool)

(declare-fun b_and!204183 () Bool)

(assert (=> b!2801402 (= tp!892785 b_and!204183)))

(declare-fun b!2801399 () Bool)

(declare-fun b_free!79447 () Bool)

(declare-fun b_next!80151 () Bool)

(assert (=> b!2801399 (= b_free!79447 (not b_next!80151))))

(declare-fun tp!892771 () Bool)

(declare-fun b_and!204185 () Bool)

(assert (=> b!2801399 (= tp!892771 b_and!204185)))

(declare-fun b!2801394 () Bool)

(declare-fun b_free!79449 () Bool)

(declare-fun b_next!80153 () Bool)

(assert (=> b!2801394 (= b_free!79449 (not b_next!80153))))

(declare-fun tp!892781 () Bool)

(declare-fun b_and!204187 () Bool)

(assert (=> b!2801394 (= tp!892781 b_and!204187)))

(declare-fun b!2801393 () Bool)

(declare-fun b_free!79451 () Bool)

(declare-fun b_next!80155 () Bool)

(assert (=> b!2801393 (= b_free!79451 (not b_next!80155))))

(declare-fun tp!892784 () Bool)

(declare-fun b_and!204189 () Bool)

(assert (=> b!2801393 (= tp!892784 b_and!204189)))

(declare-fun setIsEmpty!24553 () Bool)

(declare-fun setRes!24553 () Bool)

(assert (=> setIsEmpty!24553 setRes!24553))

(declare-fun b!2801390 () Bool)

(declare-fun e!1770224 () Bool)

(declare-fun e!1770220 () Bool)

(declare-fun lt!1001494 () MutLongMap!4041)

(assert (=> b!2801390 (= e!1770224 (and e!1770220 ((_ is LongMap!4041) lt!1001494)))))

(declare-fun res!1167407 () tuple3!5204)

(assert (=> b!2801390 (= lt!1001494 (v!34170 (underlying!8286 (cache!4090 (_3!3072 res!1167407)))))))

(declare-fun b!2801391 () Bool)

(declare-fun e!1770219 () Bool)

(declare-fun e!1770226 () Bool)

(assert (=> b!2801391 (= e!1770219 e!1770226)))

(declare-fun b!2801392 () Bool)

(declare-fun e!1770222 () Bool)

(declare-fun e!1770234 () Bool)

(declare-fun lt!1001495 () MutLongMap!4040)

(assert (=> b!2801392 (= e!1770222 (and e!1770234 ((_ is LongMap!4040) lt!1001495)))))

(assert (=> b!2801392 (= lt!1001495 (v!34168 (underlying!8284 (cache!4089 (_2!19673 res!1167407)))))))

(declare-fun e!1770228 () Bool)

(declare-fun tp!892774 () Bool)

(declare-fun e!1770218 () Bool)

(declare-fun tp!892783 () Bool)

(assert (=> b!2801393 (= e!1770228 (and tp!892784 tp!892774 tp!892783 (array_inv!4582 (_keys!4341 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 (_3!3072 res!1167407)))))))) (array_inv!4583 (_values!4322 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 (_3!3072 res!1167407)))))))) e!1770218))))

(assert (=> b!2801394 (= e!1770226 (and e!1770222 tp!892781))))

(declare-fun d!813725 () Bool)

(declare-fun e!1770229 () Bool)

(assert (=> d!813725 e!1770229))

(declare-fun res!1167408 () Bool)

(assert (=> d!813725 (=> (not res!1167408) (not e!1770229))))

(assert (=> d!813725 (= res!1167408 (= (_1!19673 res!1167407) (derivationStepZipper!380 z!3684 lt!1001359)))))

(declare-fun e!1770231 () Bool)

(assert (=> d!813725 (and setRes!24553 (inv!44231 (_2!19673 res!1167407)) e!1770219 (inv!44230 (_3!3072 res!1167407)) e!1770231)))

(declare-fun condSetEmpty!24553 () Bool)

(assert (=> d!813725 (= condSetEmpty!24553 (= (_1!19673 res!1167407) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> d!813725 (= (choose!16501 z!3684 lt!1001359 cacheUp!890 cacheDown!1009) res!1167407)))

(declare-fun b!2801395 () Bool)

(declare-fun e!1770230 () Bool)

(declare-fun e!1770225 () Bool)

(assert (=> b!2801395 (= e!1770230 e!1770225)))

(declare-fun setNonEmpty!24553 () Bool)

(declare-fun tp!892778 () Bool)

(declare-fun e!1770227 () Bool)

(declare-fun setElem!24553 () Context!4886)

(assert (=> setNonEmpty!24553 (= setRes!24553 (and tp!892778 (inv!44232 setElem!24553) e!1770227))))

(declare-fun setRest!24553 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24553 (= (_1!19673 res!1167407) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24553 true) setRest!24553))))

(declare-fun mapNonEmpty!18371 () Bool)

(declare-fun mapRes!18372 () Bool)

(declare-fun tp!892775 () Bool)

(declare-fun tp!892780 () Bool)

(assert (=> mapNonEmpty!18371 (= mapRes!18372 (and tp!892775 tp!892780))))

(declare-fun mapRest!18372 () (Array (_ BitVec 32) List!32667))

(declare-fun mapValue!18371 () List!32667)

(declare-fun mapKey!18372 () (_ BitVec 32))

(assert (=> mapNonEmpty!18371 (= (arr!6398 (_values!4321 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 (_2!19673 res!1167407)))))))) (store mapRest!18372 mapKey!18372 mapValue!18371))))

(declare-fun mapNonEmpty!18372 () Bool)

(declare-fun mapRes!18371 () Bool)

(declare-fun tp!892782 () Bool)

(declare-fun tp!892770 () Bool)

(assert (=> mapNonEmpty!18372 (= mapRes!18371 (and tp!892782 tp!892770))))

(declare-fun mapKey!18371 () (_ BitVec 32))

(declare-fun mapRest!18371 () (Array (_ BitVec 32) List!32668))

(declare-fun mapValue!18372 () List!32668)

(assert (=> mapNonEmpty!18372 (= (arr!6400 (_values!4322 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 (_3!3072 res!1167407)))))))) (store mapRest!18371 mapKey!18371 mapValue!18372))))

(declare-fun mapIsEmpty!18371 () Bool)

(assert (=> mapIsEmpty!18371 mapRes!18372))

(declare-fun b!2801396 () Bool)

(assert (=> b!2801396 (= e!1770234 e!1770230)))

(declare-fun b!2801397 () Bool)

(declare-fun e!1770232 () Bool)

(assert (=> b!2801397 (= e!1770231 e!1770232)))

(declare-fun b!2801398 () Bool)

(declare-fun e!1770233 () Bool)

(assert (=> b!2801398 (= e!1770220 e!1770233)))

(assert (=> b!2801399 (= e!1770232 (and e!1770224 tp!892771))))

(declare-fun b!2801400 () Bool)

(declare-fun tp!892776 () Bool)

(assert (=> b!2801400 (= e!1770227 tp!892776)))

(declare-fun b!2801401 () Bool)

(declare-fun e!1770235 () Bool)

(declare-fun tp!892772 () Bool)

(assert (=> b!2801401 (= e!1770235 (and tp!892772 mapRes!18372))))

(declare-fun condMapEmpty!18372 () Bool)

(declare-fun mapDefault!18371 () List!32667)

(assert (=> b!2801401 (= condMapEmpty!18372 (= (arr!6398 (_values!4321 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 (_2!19673 res!1167407)))))))) ((as const (Array (_ BitVec 32) List!32667)) mapDefault!18371)))))

(declare-fun tp!892777 () Bool)

(declare-fun tp!892773 () Bool)

(assert (=> b!2801402 (= e!1770225 (and tp!892785 tp!892773 tp!892777 (array_inv!4582 (_keys!4340 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 (_2!19673 res!1167407)))))))) (array_inv!4584 (_values!4321 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 (_2!19673 res!1167407)))))))) e!1770235))))

(declare-fun b!2801403 () Bool)

(declare-fun res!1167409 () Bool)

(assert (=> b!2801403 (=> (not res!1167409) (not e!1770229))))

(assert (=> b!2801403 (= res!1167409 (valid!3163 (_2!19673 res!1167407)))))

(declare-fun b!2801404 () Bool)

(declare-fun tp!892779 () Bool)

(assert (=> b!2801404 (= e!1770218 (and tp!892779 mapRes!18371))))

(declare-fun condMapEmpty!18371 () Bool)

(declare-fun mapDefault!18372 () List!32668)

(assert (=> b!2801404 (= condMapEmpty!18371 (= (arr!6400 (_values!4322 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 (_3!3072 res!1167407)))))))) ((as const (Array (_ BitVec 32) List!32668)) mapDefault!18372)))))

(declare-fun b!2801405 () Bool)

(assert (=> b!2801405 (= e!1770229 (valid!3162 (_3!3072 res!1167407)))))

(declare-fun mapIsEmpty!18372 () Bool)

(assert (=> mapIsEmpty!18372 mapRes!18371))

(declare-fun b!2801406 () Bool)

(assert (=> b!2801406 (= e!1770233 e!1770228)))

(assert (= (and d!813725 condSetEmpty!24553) setIsEmpty!24553))

(assert (= (and d!813725 (not condSetEmpty!24553)) setNonEmpty!24553))

(assert (= setNonEmpty!24553 b!2801400))

(assert (= (and b!2801401 condMapEmpty!18372) mapIsEmpty!18371))

(assert (= (and b!2801401 (not condMapEmpty!18372)) mapNonEmpty!18371))

(assert (= b!2801402 b!2801401))

(assert (= b!2801395 b!2801402))

(assert (= b!2801396 b!2801395))

(assert (= (and b!2801392 ((_ is LongMap!4040) (v!34168 (underlying!8284 (cache!4089 (_2!19673 res!1167407)))))) b!2801396))

(assert (= b!2801394 b!2801392))

(assert (= (and b!2801391 ((_ is HashMap!3946) (cache!4089 (_2!19673 res!1167407)))) b!2801394))

(assert (= d!813725 b!2801391))

(assert (= (and b!2801404 condMapEmpty!18371) mapIsEmpty!18372))

(assert (= (and b!2801404 (not condMapEmpty!18371)) mapNonEmpty!18372))

(assert (= b!2801393 b!2801404))

(assert (= b!2801406 b!2801393))

(assert (= b!2801398 b!2801406))

(assert (= (and b!2801390 ((_ is LongMap!4041) (v!34170 (underlying!8286 (cache!4090 (_3!3072 res!1167407)))))) b!2801398))

(assert (= b!2801399 b!2801390))

(assert (= (and b!2801397 ((_ is HashMap!3947) (cache!4090 (_3!3072 res!1167407)))) b!2801399))

(assert (= d!813725 b!2801397))

(assert (= (and d!813725 res!1167408) b!2801403))

(assert (= (and b!2801403 res!1167409) b!2801405))

(declare-fun m!3231006 () Bool)

(assert (=> b!2801402 m!3231006))

(declare-fun m!3231008 () Bool)

(assert (=> b!2801402 m!3231008))

(declare-fun m!3231010 () Bool)

(assert (=> mapNonEmpty!18371 m!3231010))

(declare-fun m!3231012 () Bool)

(assert (=> mapNonEmpty!18372 m!3231012))

(declare-fun m!3231014 () Bool)

(assert (=> b!2801393 m!3231014))

(declare-fun m!3231016 () Bool)

(assert (=> b!2801393 m!3231016))

(declare-fun m!3231018 () Bool)

(assert (=> setNonEmpty!24553 m!3231018))

(assert (=> d!813725 m!3230687))

(declare-fun m!3231020 () Bool)

(assert (=> d!813725 m!3231020))

(declare-fun m!3231022 () Bool)

(assert (=> d!813725 m!3231022))

(declare-fun m!3231024 () Bool)

(assert (=> b!2801405 m!3231024))

(declare-fun m!3231026 () Bool)

(assert (=> b!2801403 m!3231026))

(assert (=> d!813611 d!813725))

(declare-fun bs!515607 () Bool)

(declare-fun d!813727 () Bool)

(assert (= bs!515607 (and d!813727 d!813619)))

(declare-fun lambda!102903 () Int)

(assert (=> bs!515607 (= lambda!102903 lambda!102878)))

(assert (=> d!813727 (= (inv!44232 setElem!24540) (forall!6710 (exprs!2943 setElem!24540) lambda!102903))))

(declare-fun bs!515608 () Bool)

(assert (= bs!515608 d!813727))

(declare-fun m!3231028 () Bool)

(assert (=> bs!515608 m!3231028))

(assert (=> setNonEmpty!24540 d!813727))

(declare-fun d!813729 () Bool)

(declare-fun res!1167414 () Bool)

(declare-fun e!1770238 () Bool)

(assert (=> d!813729 (=> (not res!1167414) (not e!1770238))))

(declare-fun list!12222 (IArray!20169) List!32666)

(assert (=> d!813729 (= res!1167414 (<= (size!25423 (list!12222 (xs!13194 (c!454126 totalInput!758)))) 512))))

(assert (=> d!813729 (= (inv!44234 (c!454126 totalInput!758)) e!1770238)))

(declare-fun b!2801411 () Bool)

(declare-fun res!1167415 () Bool)

(assert (=> b!2801411 (=> (not res!1167415) (not e!1770238))))

(assert (=> b!2801411 (= res!1167415 (= (csize!20395 (c!454126 totalInput!758)) (size!25423 (list!12222 (xs!13194 (c!454126 totalInput!758))))))))

(declare-fun b!2801412 () Bool)

(assert (=> b!2801412 (= e!1770238 (and (> (csize!20395 (c!454126 totalInput!758)) 0) (<= (csize!20395 (c!454126 totalInput!758)) 512)))))

(assert (= (and d!813729 res!1167414) b!2801411))

(assert (= (and b!2801411 res!1167415) b!2801412))

(declare-fun m!3231030 () Bool)

(assert (=> d!813729 m!3231030))

(assert (=> d!813729 m!3231030))

(declare-fun m!3231032 () Bool)

(assert (=> d!813729 m!3231032))

(assert (=> b!2801411 m!3231030))

(assert (=> b!2801411 m!3231030))

(assert (=> b!2801411 m!3231032))

(assert (=> b!2801156 d!813729))

(declare-fun bs!515609 () Bool)

(declare-fun d!813731 () Bool)

(assert (= bs!515609 (and d!813731 d!813639)))

(declare-fun lambda!102906 () Int)

(assert (=> bs!515609 (not (= lambda!102906 lambda!102891))))

(declare-fun bs!515610 () Bool)

(assert (= bs!515610 (and d!813731 b!2801098)))

(assert (=> bs!515610 (not (= lambda!102906 lambda!102892))))

(declare-fun bs!515611 () Bool)

(assert (= bs!515611 (and d!813731 b!2801099)))

(assert (=> bs!515611 (not (= lambda!102906 lambda!102893))))

(declare-fun bs!515612 () Bool)

(assert (= bs!515612 (and d!813731 d!813681)))

(assert (=> bs!515612 (not (= lambda!102906 lambda!102896))))

(assert (=> d!813731 true))

(declare-fun order!17251 () Int)

(declare-fun dynLambda!13625 (Int Int) Int)

(assert (=> d!813731 (< (dynLambda!13625 order!17251 (ite c!454145 lambda!102892 lambda!102893)) (dynLambda!13625 order!17251 lambda!102906))))

(declare-fun forall!6713 (List!32669 Int) Bool)

(assert (=> d!813731 (= (exists!1020 (ite c!454145 lt!1001431 lt!1001426) (ite c!454145 lambda!102892 lambda!102893)) (not (forall!6713 (ite c!454145 lt!1001431 lt!1001426) lambda!102906)))))

(declare-fun bs!515613 () Bool)

(assert (= bs!515613 d!813731))

(declare-fun m!3231034 () Bool)

(assert (=> bs!515613 m!3231034))

(assert (=> bm!182853 d!813731))

(declare-fun d!813733 () Bool)

(declare-fun lt!1001496 () List!32666)

(assert (=> d!813733 (= (++!8028 (t!228831 testedP!183) lt!1001496) (tail!4434 lt!1001381))))

(declare-fun e!1770239 () List!32666)

(assert (=> d!813733 (= lt!1001496 e!1770239)))

(declare-fun c!454188 () Bool)

(assert (=> d!813733 (= c!454188 ((_ is Cons!32566) (t!228831 testedP!183)))))

(assert (=> d!813733 (>= (size!25423 (tail!4434 lt!1001381)) (size!25423 (t!228831 testedP!183)))))

(assert (=> d!813733 (= (getSuffix!1316 (tail!4434 lt!1001381) (t!228831 testedP!183)) lt!1001496)))

(declare-fun b!2801415 () Bool)

(assert (=> b!2801415 (= e!1770239 (getSuffix!1316 (tail!4434 (tail!4434 lt!1001381)) (t!228831 (t!228831 testedP!183))))))

(declare-fun b!2801416 () Bool)

(assert (=> b!2801416 (= e!1770239 (tail!4434 lt!1001381))))

(assert (= (and d!813733 c!454188) b!2801415))

(assert (= (and d!813733 (not c!454188)) b!2801416))

(declare-fun m!3231036 () Bool)

(assert (=> d!813733 m!3231036))

(assert (=> d!813733 m!3230675))

(declare-fun m!3231038 () Bool)

(assert (=> d!813733 m!3231038))

(assert (=> d!813733 m!3230695))

(assert (=> b!2801415 m!3230675))

(declare-fun m!3231040 () Bool)

(assert (=> b!2801415 m!3231040))

(assert (=> b!2801415 m!3231040))

(declare-fun m!3231042 () Bool)

(assert (=> b!2801415 m!3231042))

(assert (=> b!2801104 d!813733))

(declare-fun d!813735 () Bool)

(assert (=> d!813735 (= (tail!4434 lt!1001381) (t!228831 lt!1001381))))

(assert (=> b!2801104 d!813735))

(declare-fun b!2801429 () Bool)

(declare-fun e!1770244 () Bool)

(declare-fun e!1770245 () Bool)

(assert (=> b!2801429 (= e!1770244 e!1770245)))

(declare-fun res!1167430 () Bool)

(assert (=> b!2801429 (=> (not res!1167430) (not e!1770245))))

(declare-fun height!1498 (Conc!10082) Int)

(assert (=> b!2801429 (= res!1167430 (<= (- 1) (- (height!1498 (left!24594 (c!454126 totalInput!758))) (height!1498 (right!24924 (c!454126 totalInput!758))))))))

(declare-fun b!2801430 () Bool)

(declare-fun res!1167432 () Bool)

(assert (=> b!2801430 (=> (not res!1167432) (not e!1770245))))

(declare-fun isEmpty!18140 (Conc!10082) Bool)

(assert (=> b!2801430 (= res!1167432 (not (isEmpty!18140 (left!24594 (c!454126 totalInput!758)))))))

(declare-fun b!2801431 () Bool)

(declare-fun res!1167429 () Bool)

(assert (=> b!2801431 (=> (not res!1167429) (not e!1770245))))

(assert (=> b!2801431 (= res!1167429 (isBalanced!3076 (left!24594 (c!454126 totalInput!758))))))

(declare-fun b!2801433 () Bool)

(declare-fun res!1167431 () Bool)

(assert (=> b!2801433 (=> (not res!1167431) (not e!1770245))))

(assert (=> b!2801433 (= res!1167431 (<= (- (height!1498 (left!24594 (c!454126 totalInput!758))) (height!1498 (right!24924 (c!454126 totalInput!758)))) 1))))

(declare-fun b!2801434 () Bool)

(assert (=> b!2801434 (= e!1770245 (not (isEmpty!18140 (right!24924 (c!454126 totalInput!758)))))))

(declare-fun b!2801432 () Bool)

(declare-fun res!1167428 () Bool)

(assert (=> b!2801432 (=> (not res!1167428) (not e!1770245))))

(assert (=> b!2801432 (= res!1167428 (isBalanced!3076 (right!24924 (c!454126 totalInput!758))))))

(declare-fun d!813737 () Bool)

(declare-fun res!1167433 () Bool)

(assert (=> d!813737 (=> res!1167433 e!1770244)))

(assert (=> d!813737 (= res!1167433 (not ((_ is Node!10082) (c!454126 totalInput!758))))))

(assert (=> d!813737 (= (isBalanced!3076 (c!454126 totalInput!758)) e!1770244)))

(assert (= (and d!813737 (not res!1167433)) b!2801429))

(assert (= (and b!2801429 res!1167430) b!2801433))

(assert (= (and b!2801433 res!1167431) b!2801431))

(assert (= (and b!2801431 res!1167429) b!2801432))

(assert (= (and b!2801432 res!1167428) b!2801430))

(assert (= (and b!2801430 res!1167432) b!2801434))

(declare-fun m!3231044 () Bool)

(assert (=> b!2801432 m!3231044))

(declare-fun m!3231046 () Bool)

(assert (=> b!2801430 m!3231046))

(declare-fun m!3231048 () Bool)

(assert (=> b!2801434 m!3231048))

(declare-fun m!3231050 () Bool)

(assert (=> b!2801429 m!3231050))

(declare-fun m!3231052 () Bool)

(assert (=> b!2801429 m!3231052))

(assert (=> b!2801433 m!3231050))

(assert (=> b!2801433 m!3231052))

(declare-fun m!3231054 () Bool)

(assert (=> b!2801431 m!3231054))

(assert (=> d!813627 d!813737))

(declare-fun d!813739 () Bool)

(declare-fun c!454191 () Bool)

(assert (=> d!813739 (= c!454191 ((_ is Nil!32566) lt!1001444))))

(declare-fun e!1770248 () (InoxSet C!16608))

(assert (=> d!813739 (= (content!4545 lt!1001444) e!1770248)))

(declare-fun b!2801439 () Bool)

(assert (=> b!2801439 (= e!1770248 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801440 () Bool)

(assert (=> b!2801440 (= e!1770248 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001444) true) (content!4545 (t!228831 lt!1001444))))))

(assert (= (and d!813739 c!454191) b!2801439))

(assert (= (and d!813739 (not c!454191)) b!2801440))

(declare-fun m!3231056 () Bool)

(assert (=> b!2801440 m!3231056))

(declare-fun m!3231058 () Bool)

(assert (=> b!2801440 m!3231058))

(assert (=> d!813647 d!813739))

(declare-fun d!813741 () Bool)

(declare-fun c!454192 () Bool)

(assert (=> d!813741 (= c!454192 ((_ is Nil!32566) lt!1001381))))

(declare-fun e!1770249 () (InoxSet C!16608))

(assert (=> d!813741 (= (content!4545 lt!1001381) e!1770249)))

(declare-fun b!2801441 () Bool)

(assert (=> b!2801441 (= e!1770249 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801442 () Bool)

(assert (=> b!2801442 (= e!1770249 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001381) true) (content!4545 (t!228831 lt!1001381))))))

(assert (= (and d!813741 c!454192) b!2801441))

(assert (= (and d!813741 (not c!454192)) b!2801442))

(declare-fun m!3231060 () Bool)

(assert (=> b!2801442 m!3231060))

(declare-fun m!3231062 () Bool)

(assert (=> b!2801442 m!3231062))

(assert (=> d!813647 d!813741))

(declare-fun bs!515614 () Bool)

(declare-fun d!813743 () Bool)

(assert (= bs!515614 (and d!813743 d!813619)))

(declare-fun lambda!102907 () Int)

(assert (=> bs!515614 (= lambda!102907 lambda!102878)))

(declare-fun bs!515615 () Bool)

(assert (= bs!515615 (and d!813743 d!813727)))

(assert (=> bs!515615 (= lambda!102907 lambda!102903)))

(assert (=> d!813743 (= (inv!44232 setElem!24536) (forall!6710 (exprs!2943 setElem!24536) lambda!102907))))

(declare-fun bs!515616 () Bool)

(assert (= bs!515616 d!813743))

(declare-fun m!3231064 () Bool)

(assert (=> bs!515616 m!3231064))

(assert (=> setNonEmpty!24535 d!813743))

(declare-fun d!813745 () Bool)

(assert (=> d!813745 (= (head!6207 testedP!183) (h!37986 testedP!183))))

(assert (=> b!2801178 d!813745))

(declare-fun d!813747 () Bool)

(assert (=> d!813747 (= (head!6207 lt!1001364) (h!37986 lt!1001364))))

(assert (=> b!2801178 d!813747))

(declare-fun bs!515617 () Bool)

(declare-fun d!813749 () Bool)

(assert (= bs!515617 (and d!813749 d!813619)))

(declare-fun lambda!102908 () Int)

(assert (=> bs!515617 (= lambda!102908 lambda!102878)))

(declare-fun bs!515618 () Bool)

(assert (= bs!515618 (and d!813749 d!813727)))

(assert (=> bs!515618 (= lambda!102908 lambda!102903)))

(declare-fun bs!515619 () Bool)

(assert (= bs!515619 (and d!813749 d!813743)))

(assert (=> bs!515619 (= lambda!102908 lambda!102907)))

(assert (=> d!813749 (= (inv!44232 setElem!24542) (forall!6710 (exprs!2943 setElem!24542) lambda!102908))))

(declare-fun bs!515620 () Bool)

(assert (= bs!515620 d!813749))

(declare-fun m!3231066 () Bool)

(assert (=> bs!515620 m!3231066))

(assert (=> setNonEmpty!24542 d!813749))

(declare-fun d!813751 () Bool)

(declare-fun lt!1001497 () Int)

(assert (=> d!813751 (>= lt!1001497 0)))

(declare-fun e!1770250 () Int)

(assert (=> d!813751 (= lt!1001497 e!1770250)))

(declare-fun c!454193 () Bool)

(assert (=> d!813751 (= c!454193 ((_ is Nil!32566) (t!228831 lt!1001367)))))

(assert (=> d!813751 (= (size!25423 (t!228831 lt!1001367)) lt!1001497)))

(declare-fun b!2801443 () Bool)

(assert (=> b!2801443 (= e!1770250 0)))

(declare-fun b!2801444 () Bool)

(assert (=> b!2801444 (= e!1770250 (+ 1 (size!25423 (t!228831 (t!228831 lt!1001367)))))))

(assert (= (and d!813751 c!454193) b!2801443))

(assert (= (and d!813751 (not c!454193)) b!2801444))

(declare-fun m!3231068 () Bool)

(assert (=> b!2801444 m!3231068))

(assert (=> b!2801065 d!813751))

(declare-fun d!813753 () Bool)

(declare-fun lt!1001498 () Int)

(assert (=> d!813753 (>= lt!1001498 0)))

(declare-fun e!1770251 () Int)

(assert (=> d!813753 (= lt!1001498 e!1770251)))

(declare-fun c!454194 () Bool)

(assert (=> d!813753 (= c!454194 ((_ is Nil!32566) lt!1001444))))

(assert (=> d!813753 (= (size!25423 lt!1001444) lt!1001498)))

(declare-fun b!2801445 () Bool)

(assert (=> b!2801445 (= e!1770251 0)))

(declare-fun b!2801446 () Bool)

(assert (=> b!2801446 (= e!1770251 (+ 1 (size!25423 (t!228831 lt!1001444))))))

(assert (= (and d!813753 c!454194) b!2801445))

(assert (= (and d!813753 (not c!454194)) b!2801446))

(declare-fun m!3231070 () Bool)

(assert (=> b!2801446 m!3231070))

(assert (=> b!2801129 d!813753))

(declare-fun bs!515621 () Bool)

(declare-fun d!813755 () Bool)

(assert (= bs!515621 (and d!813755 d!813619)))

(declare-fun lambda!102909 () Int)

(assert (=> bs!515621 (= lambda!102909 lambda!102878)))

(declare-fun bs!515622 () Bool)

(assert (= bs!515622 (and d!813755 d!813727)))

(assert (=> bs!515622 (= lambda!102909 lambda!102903)))

(declare-fun bs!515623 () Bool)

(assert (= bs!515623 (and d!813755 d!813743)))

(assert (=> bs!515623 (= lambda!102909 lambda!102907)))

(declare-fun bs!515624 () Bool)

(assert (= bs!515624 (and d!813755 d!813749)))

(assert (=> bs!515624 (= lambda!102909 lambda!102908)))

(assert (=> d!813755 (= (inv!44232 (_1!19669 (_1!19670 (h!37987 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))))) (forall!6710 (exprs!2943 (_1!19669 (_1!19670 (h!37987 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))))) lambda!102909))))

(declare-fun bs!515625 () Bool)

(assert (= bs!515625 d!813755))

(declare-fun m!3231072 () Bool)

(assert (=> bs!515625 m!3231072))

(assert (=> b!2801246 d!813755))

(declare-fun b!2801447 () Bool)

(declare-fun e!1770252 () Bool)

(declare-fun e!1770254 () Bool)

(assert (=> b!2801447 (= e!1770252 e!1770254)))

(declare-fun res!1167436 () Bool)

(assert (=> b!2801447 (=> (not res!1167436) (not e!1770254))))

(assert (=> b!2801447 (= res!1167436 (not ((_ is Nil!32566) (tail!4434 lt!1001381))))))

(declare-fun d!813757 () Bool)

(declare-fun e!1770253 () Bool)

(assert (=> d!813757 e!1770253))

(declare-fun res!1167435 () Bool)

(assert (=> d!813757 (=> res!1167435 e!1770253)))

(declare-fun lt!1001499 () Bool)

(assert (=> d!813757 (= res!1167435 (not lt!1001499))))

(assert (=> d!813757 (= lt!1001499 e!1770252)))

(declare-fun res!1167434 () Bool)

(assert (=> d!813757 (=> res!1167434 e!1770252)))

(assert (=> d!813757 (= res!1167434 ((_ is Nil!32566) (tail!4434 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))))

(assert (=> d!813757 (= (isPrefix!2640 (tail!4434 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))) (tail!4434 lt!1001381)) lt!1001499)))

(declare-fun b!2801448 () Bool)

(declare-fun res!1167437 () Bool)

(assert (=> b!2801448 (=> (not res!1167437) (not e!1770254))))

(assert (=> b!2801448 (= res!1167437 (= (head!6207 (tail!4434 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))) (head!6207 (tail!4434 lt!1001381))))))

(declare-fun b!2801450 () Bool)

(assert (=> b!2801450 (= e!1770253 (>= (size!25423 (tail!4434 lt!1001381)) (size!25423 (tail!4434 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))))))))

(declare-fun b!2801449 () Bool)

(assert (=> b!2801449 (= e!1770254 (isPrefix!2640 (tail!4434 (tail!4434 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))) (tail!4434 (tail!4434 lt!1001381))))))

(assert (= (and d!813757 (not res!1167434)) b!2801447))

(assert (= (and b!2801447 res!1167436) b!2801448))

(assert (= (and b!2801448 res!1167437) b!2801449))

(assert (= (and d!813757 (not res!1167435)) b!2801450))

(assert (=> b!2801448 m!3230775))

(declare-fun m!3231074 () Bool)

(assert (=> b!2801448 m!3231074))

(assert (=> b!2801448 m!3230675))

(declare-fun m!3231076 () Bool)

(assert (=> b!2801448 m!3231076))

(assert (=> b!2801450 m!3230675))

(assert (=> b!2801450 m!3231038))

(assert (=> b!2801450 m!3230775))

(declare-fun m!3231078 () Bool)

(assert (=> b!2801450 m!3231078))

(assert (=> b!2801449 m!3230775))

(declare-fun m!3231080 () Bool)

(assert (=> b!2801449 m!3231080))

(assert (=> b!2801449 m!3230675))

(assert (=> b!2801449 m!3231040))

(assert (=> b!2801449 m!3231080))

(assert (=> b!2801449 m!3231040))

(declare-fun m!3231082 () Bool)

(assert (=> b!2801449 m!3231082))

(assert (=> b!2801159 d!813757))

(declare-fun d!813759 () Bool)

(assert (=> d!813759 (= (tail!4434 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))) (t!228831 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))))))

(assert (=> b!2801159 d!813759))

(assert (=> b!2801159 d!813735))

(assert (=> d!813649 d!813655))

(assert (=> d!813649 d!813647))

(assert (=> d!813649 d!813651))

(declare-fun d!813761 () Bool)

(assert (=> d!813761 (= (head!6207 (drop!1754 lt!1001381 testedPSize!143)) (apply!7616 lt!1001381 testedPSize!143))))

(assert (=> d!813761 true))

(declare-fun _$27!832 () Unit!46678)

(assert (=> d!813761 (= (choose!16505 lt!1001381 testedPSize!143) _$27!832)))

(declare-fun bs!515626 () Bool)

(assert (= bs!515626 d!813761))

(assert (=> bs!515626 m!3230641))

(assert (=> bs!515626 m!3230641))

(assert (=> bs!515626 m!3230651))

(assert (=> bs!515626 m!3230649))

(assert (=> d!813649 d!813761))

(declare-fun d!813763 () Bool)

(declare-fun res!1167442 () Bool)

(declare-fun e!1770257 () Bool)

(assert (=> d!813763 (=> (not res!1167442) (not e!1770257))))

(declare-fun valid!3165 (MutableMap!3946) Bool)

(assert (=> d!813763 (= res!1167442 (valid!3165 (cache!4089 cacheUp!890)))))

(assert (=> d!813763 (= (validCacheMapUp!400 (cache!4089 cacheUp!890)) e!1770257)))

(declare-fun b!2801455 () Bool)

(declare-fun res!1167443 () Bool)

(assert (=> b!2801455 (=> (not res!1167443) (not e!1770257))))

(declare-fun invariantList!467 (List!32667) Bool)

(declare-datatypes ((ListMap!1267 0))(
  ( (ListMap!1268 (toList!1888 List!32667)) )
))
(declare-fun map!7051 (MutableMap!3946) ListMap!1267)

(assert (=> b!2801455 (= res!1167443 (invariantList!467 (toList!1888 (map!7051 (cache!4089 cacheUp!890)))))))

(declare-fun b!2801456 () Bool)

(declare-fun lambda!102912 () Int)

(declare-fun forall!6714 (List!32667 Int) Bool)

(assert (=> b!2801456 (= e!1770257 (forall!6714 (toList!1888 (map!7051 (cache!4089 cacheUp!890))) lambda!102912))))

(assert (= (and d!813763 res!1167442) b!2801455))

(assert (= (and b!2801455 res!1167443) b!2801456))

(declare-fun m!3231085 () Bool)

(assert (=> d!813763 m!3231085))

(declare-fun m!3231087 () Bool)

(assert (=> b!2801455 m!3231087))

(declare-fun m!3231089 () Bool)

(assert (=> b!2801455 m!3231089))

(assert (=> b!2801456 m!3231087))

(declare-fun m!3231091 () Bool)

(assert (=> b!2801456 m!3231091))

(assert (=> b!2801076 d!813763))

(assert (=> d!813697 d!813763))

(assert (=> b!2801142 d!813635))

(declare-fun d!813765 () Bool)

(declare-fun lt!1001502 () Bool)

(assert (=> d!813765 (= lt!1001502 (exists!1020 (toList!1886 z!3684) lambda!102896))))

(declare-fun choose!16509 ((InoxSet Context!4886) Int) Bool)

(assert (=> d!813765 (= lt!1001502 (choose!16509 z!3684 lambda!102896))))

(assert (=> d!813765 (= (exists!1021 z!3684 lambda!102896) lt!1001502)))

(declare-fun bs!515627 () Bool)

(assert (= bs!515627 d!813765))

(assert (=> bs!515627 m!3230735))

(assert (=> bs!515627 m!3230735))

(declare-fun m!3231093 () Bool)

(assert (=> bs!515627 m!3231093))

(declare-fun m!3231095 () Bool)

(assert (=> bs!515627 m!3231095))

(assert (=> d!813681 d!813765))

(declare-fun d!813767 () Bool)

(assert (=> d!813767 (= (head!6207 lt!1001381) (h!37986 lt!1001381))))

(assert (=> b!2801057 d!813767))

(declare-fun d!813769 () Bool)

(assert (=> d!813769 (= (inv!44235 (xs!13194 (c!454126 totalInput!758))) (<= (size!25423 (innerList!10142 (xs!13194 (c!454126 totalInput!758)))) 2147483647))))

(declare-fun bs!515628 () Bool)

(assert (= bs!515628 d!813769))

(declare-fun m!3231097 () Bool)

(assert (=> bs!515628 m!3231097))

(assert (=> b!2801287 d!813769))

(declare-fun d!813771 () Bool)

(assert (=> d!813771 (= (isEmpty!18139 (getLanguageWitness!224 z!3684)) (not ((_ is Some!6288) (getLanguageWitness!224 z!3684))))))

(assert (=> d!813639 d!813771))

(declare-fun bs!515629 () Bool)

(declare-fun d!813773 () Bool)

(assert (= bs!515629 (and d!813773 d!813681)))

(declare-fun lambda!102919 () Int)

(assert (=> bs!515629 (not (= lambda!102919 lambda!102896))))

(declare-fun bs!515630 () Bool)

(assert (= bs!515630 (and d!813773 d!813731)))

(assert (=> bs!515630 (not (= lambda!102919 lambda!102906))))

(declare-fun bs!515631 () Bool)

(assert (= bs!515631 (and d!813773 d!813639)))

(assert (=> bs!515631 (not (= lambda!102919 lambda!102891))))

(declare-fun bs!515632 () Bool)

(assert (= bs!515632 (and d!813773 b!2801098)))

(assert (=> bs!515632 (= lambda!102919 lambda!102892)))

(declare-fun bs!515633 () Bool)

(assert (= bs!515633 (and d!813773 b!2801099)))

(assert (=> bs!515633 (= lambda!102919 lambda!102893)))

(declare-fun lt!1001505 () Option!6289)

(declare-fun isDefined!4944 (Option!6289) Bool)

(assert (=> d!813773 (= (isDefined!4944 lt!1001505) (exists!1021 z!3684 lambda!102919))))

(declare-fun e!1770260 () Option!6289)

(assert (=> d!813773 (= lt!1001505 e!1770260)))

(declare-fun c!454203 () Bool)

(assert (=> d!813773 (= c!454203 (exists!1021 z!3684 lambda!102919))))

(assert (=> d!813773 (= (getLanguageWitness!224 z!3684) lt!1001505)))

(declare-fun b!2801461 () Bool)

(declare-fun getLanguageWitness!225 (Context!4886) Option!6289)

(declare-fun getWitness!575 ((InoxSet Context!4886) Int) Context!4886)

(assert (=> b!2801461 (= e!1770260 (getLanguageWitness!225 (getWitness!575 z!3684 lambda!102919)))))

(declare-fun b!2801462 () Bool)

(assert (=> b!2801462 (= e!1770260 None!6288)))

(assert (= (and d!813773 c!454203) b!2801461))

(assert (= (and d!813773 (not c!454203)) b!2801462))

(declare-fun m!3231099 () Bool)

(assert (=> d!813773 m!3231099))

(declare-fun m!3231101 () Bool)

(assert (=> d!813773 m!3231101))

(assert (=> d!813773 m!3231101))

(declare-fun m!3231103 () Bool)

(assert (=> b!2801461 m!3231103))

(assert (=> b!2801461 m!3231103))

(declare-fun m!3231105 () Bool)

(assert (=> b!2801461 m!3231105))

(assert (=> d!813639 d!813773))

(declare-fun d!813775 () Bool)

(declare-fun lt!1001508 () Bool)

(assert (=> d!813775 (= lt!1001508 (forall!6713 (toList!1886 z!3684) lambda!102891))))

(declare-fun choose!16510 ((InoxSet Context!4886) Int) Bool)

(assert (=> d!813775 (= lt!1001508 (choose!16510 z!3684 lambda!102891))))

(assert (=> d!813775 (= (forall!6711 z!3684 lambda!102891) lt!1001508)))

(declare-fun bs!515634 () Bool)

(assert (= bs!515634 d!813775))

(assert (=> bs!515634 m!3230735))

(assert (=> bs!515634 m!3230735))

(declare-fun m!3231107 () Bool)

(assert (=> bs!515634 m!3231107))

(declare-fun m!3231109 () Bool)

(assert (=> bs!515634 m!3231109))

(assert (=> d!813639 d!813775))

(declare-fun b!2801463 () Bool)

(declare-fun e!1770261 () List!32666)

(assert (=> b!2801463 (= e!1770261 lt!1001374)))

(declare-fun e!1770262 () Bool)

(declare-fun b!2801466 () Bool)

(declare-fun lt!1001509 () List!32666)

(assert (=> b!2801466 (= e!1770262 (or (not (= lt!1001374 Nil!32566)) (= lt!1001509 (t!228831 lt!1001371))))))

(declare-fun b!2801465 () Bool)

(declare-fun res!1167445 () Bool)

(assert (=> b!2801465 (=> (not res!1167445) (not e!1770262))))

(assert (=> b!2801465 (= res!1167445 (= (size!25423 lt!1001509) (+ (size!25423 (t!228831 lt!1001371)) (size!25423 lt!1001374))))))

(declare-fun b!2801464 () Bool)

(assert (=> b!2801464 (= e!1770261 (Cons!32566 (h!37986 (t!228831 lt!1001371)) (++!8028 (t!228831 (t!228831 lt!1001371)) lt!1001374)))))

(declare-fun d!813777 () Bool)

(assert (=> d!813777 e!1770262))

(declare-fun res!1167444 () Bool)

(assert (=> d!813777 (=> (not res!1167444) (not e!1770262))))

(assert (=> d!813777 (= res!1167444 (= (content!4545 lt!1001509) ((_ map or) (content!4545 (t!228831 lt!1001371)) (content!4545 lt!1001374))))))

(assert (=> d!813777 (= lt!1001509 e!1770261)))

(declare-fun c!454204 () Bool)

(assert (=> d!813777 (= c!454204 ((_ is Nil!32566) (t!228831 lt!1001371)))))

(assert (=> d!813777 (= (++!8028 (t!228831 lt!1001371) lt!1001374) lt!1001509)))

(assert (= (and d!813777 c!454204) b!2801463))

(assert (= (and d!813777 (not c!454204)) b!2801464))

(assert (= (and d!813777 res!1167444) b!2801465))

(assert (= (and b!2801465 res!1167445) b!2801466))

(declare-fun m!3231111 () Bool)

(assert (=> b!2801465 m!3231111))

(declare-fun m!3231113 () Bool)

(assert (=> b!2801465 m!3231113))

(assert (=> b!2801465 m!3230849))

(declare-fun m!3231115 () Bool)

(assert (=> b!2801464 m!3231115))

(declare-fun m!3231117 () Bool)

(assert (=> d!813777 m!3231117))

(declare-fun m!3231119 () Bool)

(assert (=> d!813777 m!3231119))

(assert (=> d!813777 m!3230857))

(assert (=> b!2801182 d!813777))

(declare-fun bs!515635 () Bool)

(declare-fun d!813779 () Bool)

(assert (= bs!515635 (and d!813779 d!813681)))

(declare-fun lambda!102922 () Int)

(assert (=> bs!515635 (not (= lambda!102922 lambda!102896))))

(declare-fun bs!515636 () Bool)

(assert (= bs!515636 (and d!813779 d!813731)))

(assert (=> bs!515636 (= (= lambda!102891 (ite c!454145 lambda!102892 lambda!102893)) (= lambda!102922 lambda!102906))))

(declare-fun bs!515637 () Bool)

(assert (= bs!515637 (and d!813779 d!813639)))

(assert (=> bs!515637 (not (= lambda!102922 lambda!102891))))

(declare-fun bs!515638 () Bool)

(assert (= bs!515638 (and d!813779 d!813773)))

(assert (=> bs!515638 (not (= lambda!102922 lambda!102919))))

(declare-fun bs!515639 () Bool)

(assert (= bs!515639 (and d!813779 b!2801098)))

(assert (=> bs!515639 (not (= lambda!102922 lambda!102892))))

(declare-fun bs!515640 () Bool)

(assert (= bs!515640 (and d!813779 b!2801099)))

(assert (=> bs!515640 (not (= lambda!102922 lambda!102893))))

(assert (=> d!813779 true))

(assert (=> d!813779 (< (dynLambda!13625 order!17251 lambda!102891) (dynLambda!13625 order!17251 lambda!102922))))

(assert (=> d!813779 (exists!1020 lt!1001431 lambda!102922)))

(declare-fun lt!1001512 () Unit!46678)

(declare-fun choose!16511 (List!32669 Int) Unit!46678)

(assert (=> d!813779 (= lt!1001512 (choose!16511 lt!1001431 lambda!102891))))

(assert (=> d!813779 (not (forall!6713 lt!1001431 lambda!102891))))

(assert (=> d!813779 (= (lemmaNotForallThenExists!111 lt!1001431 lambda!102891) lt!1001512)))

(declare-fun bs!515641 () Bool)

(assert (= bs!515641 d!813779))

(declare-fun m!3231121 () Bool)

(assert (=> bs!515641 m!3231121))

(declare-fun m!3231123 () Bool)

(assert (=> bs!515641 m!3231123))

(declare-fun m!3231125 () Bool)

(assert (=> bs!515641 m!3231125))

(assert (=> b!2801098 d!813779))

(assert (=> b!2801160 d!813635))

(declare-fun d!813781 () Bool)

(declare-fun lt!1001513 () Int)

(assert (=> d!813781 (>= lt!1001513 0)))

(declare-fun e!1770265 () Int)

(assert (=> d!813781 (= lt!1001513 e!1770265)))

(declare-fun c!454205 () Bool)

(assert (=> d!813781 (= c!454205 ((_ is Nil!32566) (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))))))

(assert (=> d!813781 (= (size!25423 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))) lt!1001513)))

(declare-fun b!2801467 () Bool)

(assert (=> b!2801467 (= e!1770265 0)))

(declare-fun b!2801468 () Bool)

(assert (=> b!2801468 (= e!1770265 (+ 1 (size!25423 (t!228831 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))))))))

(assert (= (and d!813781 c!454205) b!2801467))

(assert (= (and d!813781 (not c!454205)) b!2801468))

(declare-fun m!3231127 () Bool)

(assert (=> b!2801468 m!3231127))

(assert (=> b!2801160 d!813781))

(assert (=> b!2801023 d!813663))

(declare-fun d!813783 () Bool)

(declare-fun c!454206 () Bool)

(assert (=> d!813783 (= c!454206 ((_ is Nil!32566) lt!1001470))))

(declare-fun e!1770266 () (InoxSet C!16608))

(assert (=> d!813783 (= (content!4545 lt!1001470) e!1770266)))

(declare-fun b!2801469 () Bool)

(assert (=> b!2801469 (= e!1770266 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801470 () Bool)

(assert (=> b!2801470 (= e!1770266 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001470) true) (content!4545 (t!228831 lt!1001470))))))

(assert (= (and d!813783 c!454206) b!2801469))

(assert (= (and d!813783 (not c!454206)) b!2801470))

(declare-fun m!3231129 () Bool)

(assert (=> b!2801470 m!3231129))

(declare-fun m!3231131 () Bool)

(assert (=> b!2801470 m!3231131))

(assert (=> d!813689 d!813783))

(declare-fun d!813785 () Bool)

(declare-fun c!454207 () Bool)

(assert (=> d!813785 (= c!454207 ((_ is Nil!32566) lt!1001371))))

(declare-fun e!1770267 () (InoxSet C!16608))

(assert (=> d!813785 (= (content!4545 lt!1001371) e!1770267)))

(declare-fun b!2801471 () Bool)

(assert (=> b!2801471 (= e!1770267 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801472 () Bool)

(assert (=> b!2801472 (= e!1770267 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001371) true) (content!4545 (t!228831 lt!1001371))))))

(assert (= (and d!813785 c!454207) b!2801471))

(assert (= (and d!813785 (not c!454207)) b!2801472))

(declare-fun m!3231133 () Bool)

(assert (=> b!2801472 m!3231133))

(assert (=> b!2801472 m!3231119))

(assert (=> d!813689 d!813785))

(declare-fun d!813787 () Bool)

(declare-fun c!454208 () Bool)

(assert (=> d!813787 (= c!454208 ((_ is Nil!32566) lt!1001374))))

(declare-fun e!1770268 () (InoxSet C!16608))

(assert (=> d!813787 (= (content!4545 lt!1001374) e!1770268)))

(declare-fun b!2801473 () Bool)

(assert (=> b!2801473 (= e!1770268 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801474 () Bool)

(assert (=> b!2801474 (= e!1770268 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001374) true) (content!4545 (t!228831 lt!1001374))))))

(assert (= (and d!813787 c!454208) b!2801473))

(assert (= (and d!813787 (not c!454208)) b!2801474))

(declare-fun m!3231135 () Bool)

(assert (=> b!2801474 m!3231135))

(declare-fun m!3231137 () Bool)

(assert (=> b!2801474 m!3231137))

(assert (=> d!813689 d!813787))

(declare-fun bs!515642 () Bool)

(declare-fun d!813789 () Bool)

(assert (= bs!515642 (and d!813789 d!813749)))

(declare-fun lambda!102923 () Int)

(assert (=> bs!515642 (= lambda!102923 lambda!102908)))

(declare-fun bs!515643 () Bool)

(assert (= bs!515643 (and d!813789 d!813619)))

(assert (=> bs!515643 (= lambda!102923 lambda!102878)))

(declare-fun bs!515644 () Bool)

(assert (= bs!515644 (and d!813789 d!813755)))

(assert (=> bs!515644 (= lambda!102923 lambda!102909)))

(declare-fun bs!515645 () Bool)

(assert (= bs!515645 (and d!813789 d!813743)))

(assert (=> bs!515645 (= lambda!102923 lambda!102907)))

(declare-fun bs!515646 () Bool)

(assert (= bs!515646 (and d!813789 d!813727)))

(assert (=> bs!515646 (= lambda!102923 lambda!102903)))

(assert (=> d!813789 (= (inv!44232 (_2!19671 (_1!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))))) (forall!6710 (exprs!2943 (_2!19671 (_1!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))))) lambda!102923))))

(declare-fun bs!515647 () Bool)

(assert (= bs!515647 d!813789))

(declare-fun m!3231139 () Bool)

(assert (=> bs!515647 m!3231139))

(assert (=> b!2801209 d!813789))

(declare-fun bs!515648 () Bool)

(declare-fun d!813791 () Bool)

(assert (= bs!515648 (and d!813791 d!813789)))

(declare-fun lambda!102924 () Int)

(assert (=> bs!515648 (= lambda!102924 lambda!102923)))

(declare-fun bs!515649 () Bool)

(assert (= bs!515649 (and d!813791 d!813749)))

(assert (=> bs!515649 (= lambda!102924 lambda!102908)))

(declare-fun bs!515650 () Bool)

(assert (= bs!515650 (and d!813791 d!813619)))

(assert (=> bs!515650 (= lambda!102924 lambda!102878)))

(declare-fun bs!515651 () Bool)

(assert (= bs!515651 (and d!813791 d!813755)))

(assert (=> bs!515651 (= lambda!102924 lambda!102909)))

(declare-fun bs!515652 () Bool)

(assert (= bs!515652 (and d!813791 d!813743)))

(assert (=> bs!515652 (= lambda!102924 lambda!102907)))

(declare-fun bs!515653 () Bool)

(assert (= bs!515653 (and d!813791 d!813727)))

(assert (=> bs!515653 (= lambda!102924 lambda!102903)))

(assert (=> d!813791 (= (inv!44232 (_2!19671 (_1!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))))) (forall!6710 (exprs!2943 (_2!19671 (_1!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))))) lambda!102924))))

(declare-fun bs!515654 () Bool)

(assert (= bs!515654 d!813791))

(declare-fun m!3231141 () Bool)

(assert (=> bs!515654 m!3231141))

(assert (=> b!2801206 d!813791))

(declare-fun bs!515655 () Bool)

(declare-fun d!813793 () Bool)

(assert (= bs!515655 (and d!813793 d!813789)))

(declare-fun lambda!102925 () Int)

(assert (=> bs!515655 (= lambda!102925 lambda!102923)))

(declare-fun bs!515656 () Bool)

(assert (= bs!515656 (and d!813793 d!813749)))

(assert (=> bs!515656 (= lambda!102925 lambda!102908)))

(declare-fun bs!515657 () Bool)

(assert (= bs!515657 (and d!813793 d!813619)))

(assert (=> bs!515657 (= lambda!102925 lambda!102878)))

(declare-fun bs!515658 () Bool)

(assert (= bs!515658 (and d!813793 d!813755)))

(assert (=> bs!515658 (= lambda!102925 lambda!102909)))

(declare-fun bs!515659 () Bool)

(assert (= bs!515659 (and d!813793 d!813743)))

(assert (=> bs!515659 (= lambda!102925 lambda!102907)))

(declare-fun bs!515660 () Bool)

(assert (= bs!515660 (and d!813793 d!813727)))

(assert (=> bs!515660 (= lambda!102925 lambda!102903)))

(declare-fun bs!515661 () Bool)

(assert (= bs!515661 (and d!813793 d!813791)))

(assert (=> bs!515661 (= lambda!102925 lambda!102924)))

(assert (=> d!813793 (= (inv!44232 setElem!24539) (forall!6710 (exprs!2943 setElem!24539) lambda!102925))))

(declare-fun bs!515662 () Bool)

(assert (= bs!515662 d!813793))

(declare-fun m!3231143 () Bool)

(assert (=> bs!515662 m!3231143))

(assert (=> setNonEmpty!24539 d!813793))

(declare-fun d!813795 () Bool)

(declare-fun lt!1001514 () Int)

(assert (=> d!813795 (>= lt!1001514 0)))

(declare-fun e!1770269 () Int)

(assert (=> d!813795 (= lt!1001514 e!1770269)))

(declare-fun c!454209 () Bool)

(assert (=> d!813795 (= c!454209 ((_ is Nil!32566) (t!228831 testedP!183)))))

(assert (=> d!813795 (= (size!25423 (t!228831 testedP!183)) lt!1001514)))

(declare-fun b!2801475 () Bool)

(assert (=> b!2801475 (= e!1770269 0)))

(declare-fun b!2801476 () Bool)

(assert (=> b!2801476 (= e!1770269 (+ 1 (size!25423 (t!228831 (t!228831 testedP!183)))))))

(assert (= (and d!813795 c!454209) b!2801475))

(assert (= (and d!813795 (not c!454209)) b!2801476))

(declare-fun m!3231145 () Bool)

(assert (=> b!2801476 m!3231145))

(assert (=> b!2801073 d!813795))

(declare-fun d!813797 () Bool)

(assert (=> d!813797 (= testedSuffix!143 lt!1001372)))

(assert (=> d!813797 true))

(declare-fun _$63!897 () Unit!46678)

(assert (=> d!813797 (= (choose!16503 testedP!183 testedSuffix!143 testedP!183 lt!1001372 lt!1001381) _$63!897)))

(assert (=> d!813641 d!813797))

(assert (=> d!813641 d!813683))

(declare-fun bs!515663 () Bool)

(declare-fun d!813799 () Bool)

(assert (= bs!515663 (and d!813799 d!813789)))

(declare-fun lambda!102926 () Int)

(assert (=> bs!515663 (= lambda!102926 lambda!102923)))

(declare-fun bs!515664 () Bool)

(assert (= bs!515664 (and d!813799 d!813749)))

(assert (=> bs!515664 (= lambda!102926 lambda!102908)))

(declare-fun bs!515665 () Bool)

(assert (= bs!515665 (and d!813799 d!813619)))

(assert (=> bs!515665 (= lambda!102926 lambda!102878)))

(declare-fun bs!515666 () Bool)

(assert (= bs!515666 (and d!813799 d!813755)))

(assert (=> bs!515666 (= lambda!102926 lambda!102909)))

(declare-fun bs!515667 () Bool)

(assert (= bs!515667 (and d!813799 d!813793)))

(assert (=> bs!515667 (= lambda!102926 lambda!102925)))

(declare-fun bs!515668 () Bool)

(assert (= bs!515668 (and d!813799 d!813743)))

(assert (=> bs!515668 (= lambda!102926 lambda!102907)))

(declare-fun bs!515669 () Bool)

(assert (= bs!515669 (and d!813799 d!813727)))

(assert (=> bs!515669 (= lambda!102926 lambda!102903)))

(declare-fun bs!515670 () Bool)

(assert (= bs!515670 (and d!813799 d!813791)))

(assert (=> bs!515670 (= lambda!102926 lambda!102924)))

(assert (=> d!813799 (= (inv!44232 setElem!24548) (forall!6710 (exprs!2943 setElem!24548) lambda!102926))))

(declare-fun bs!515671 () Bool)

(assert (= bs!515671 d!813799))

(declare-fun m!3231147 () Bool)

(assert (=> bs!515671 m!3231147))

(assert (=> setNonEmpty!24547 d!813799))

(declare-fun bs!515672 () Bool)

(declare-fun d!813801 () Bool)

(assert (= bs!515672 (and d!813801 d!813789)))

(declare-fun lambda!102927 () Int)

(assert (=> bs!515672 (= lambda!102927 lambda!102923)))

(declare-fun bs!515673 () Bool)

(assert (= bs!515673 (and d!813801 d!813799)))

(assert (=> bs!515673 (= lambda!102927 lambda!102926)))

(declare-fun bs!515674 () Bool)

(assert (= bs!515674 (and d!813801 d!813749)))

(assert (=> bs!515674 (= lambda!102927 lambda!102908)))

(declare-fun bs!515675 () Bool)

(assert (= bs!515675 (and d!813801 d!813619)))

(assert (=> bs!515675 (= lambda!102927 lambda!102878)))

(declare-fun bs!515676 () Bool)

(assert (= bs!515676 (and d!813801 d!813755)))

(assert (=> bs!515676 (= lambda!102927 lambda!102909)))

(declare-fun bs!515677 () Bool)

(assert (= bs!515677 (and d!813801 d!813793)))

(assert (=> bs!515677 (= lambda!102927 lambda!102925)))

(declare-fun bs!515678 () Bool)

(assert (= bs!515678 (and d!813801 d!813743)))

(assert (=> bs!515678 (= lambda!102927 lambda!102907)))

(declare-fun bs!515679 () Bool)

(assert (= bs!515679 (and d!813801 d!813727)))

(assert (=> bs!515679 (= lambda!102927 lambda!102903)))

(declare-fun bs!515680 () Bool)

(assert (= bs!515680 (and d!813801 d!813791)))

(assert (=> bs!515680 (= lambda!102927 lambda!102924)))

(assert (=> d!813801 (= (inv!44232 (_2!19671 (_1!19672 (h!37988 mapValue!18360)))) (forall!6710 (exprs!2943 (_2!19671 (_1!19672 (h!37988 mapValue!18360)))) lambda!102927))))

(declare-fun bs!515681 () Bool)

(assert (= bs!515681 d!813801))

(declare-fun m!3231149 () Bool)

(assert (=> bs!515681 m!3231149))

(assert (=> b!2801277 d!813801))

(declare-fun b!2801477 () Bool)

(declare-fun e!1770270 () List!32666)

(assert (=> b!2801477 (= e!1770270 (Cons!32566 lt!1001359 Nil!32566))))

(declare-fun e!1770271 () Bool)

(declare-fun b!2801480 () Bool)

(declare-fun lt!1001515 () List!32666)

(assert (=> b!2801480 (= e!1770271 (or (not (= (Cons!32566 lt!1001359 Nil!32566) Nil!32566)) (= lt!1001515 (t!228831 testedP!183))))))

(declare-fun b!2801479 () Bool)

(declare-fun res!1167447 () Bool)

(assert (=> b!2801479 (=> (not res!1167447) (not e!1770271))))

(assert (=> b!2801479 (= res!1167447 (= (size!25423 lt!1001515) (+ (size!25423 (t!228831 testedP!183)) (size!25423 (Cons!32566 lt!1001359 Nil!32566)))))))

(declare-fun b!2801478 () Bool)

(assert (=> b!2801478 (= e!1770270 (Cons!32566 (h!37986 (t!228831 testedP!183)) (++!8028 (t!228831 (t!228831 testedP!183)) (Cons!32566 lt!1001359 Nil!32566))))))

(declare-fun d!813803 () Bool)

(assert (=> d!813803 e!1770271))

(declare-fun res!1167446 () Bool)

(assert (=> d!813803 (=> (not res!1167446) (not e!1770271))))

(assert (=> d!813803 (= res!1167446 (= (content!4545 lt!1001515) ((_ map or) (content!4545 (t!228831 testedP!183)) (content!4545 (Cons!32566 lt!1001359 Nil!32566)))))))

(assert (=> d!813803 (= lt!1001515 e!1770270)))

(declare-fun c!454210 () Bool)

(assert (=> d!813803 (= c!454210 ((_ is Nil!32566) (t!228831 testedP!183)))))

(assert (=> d!813803 (= (++!8028 (t!228831 testedP!183) (Cons!32566 lt!1001359 Nil!32566)) lt!1001515)))

(assert (= (and d!813803 c!454210) b!2801477))

(assert (= (and d!813803 (not c!454210)) b!2801478))

(assert (= (and d!813803 res!1167446) b!2801479))

(assert (= (and b!2801479 res!1167447) b!2801480))

(declare-fun m!3231151 () Bool)

(assert (=> b!2801479 m!3231151))

(assert (=> b!2801479 m!3230695))

(assert (=> b!2801479 m!3230795))

(declare-fun m!3231153 () Bool)

(assert (=> b!2801478 m!3231153))

(declare-fun m!3231155 () Bool)

(assert (=> d!813803 m!3231155))

(declare-fun m!3231157 () Bool)

(assert (=> d!813803 m!3231157))

(assert (=> d!813803 m!3230801))

(assert (=> b!2801162 d!813803))

(declare-fun b!2801481 () Bool)

(declare-fun e!1770272 () List!32666)

(assert (=> b!2801481 (= e!1770272 testedSuffix!143)))

(declare-fun lt!1001516 () List!32666)

(declare-fun e!1770273 () Bool)

(declare-fun b!2801484 () Bool)

(assert (=> b!2801484 (= e!1770273 (or (not (= testedSuffix!143 Nil!32566)) (= lt!1001516 (t!228831 testedP!183))))))

(declare-fun b!2801483 () Bool)

(declare-fun res!1167449 () Bool)

(assert (=> b!2801483 (=> (not res!1167449) (not e!1770273))))

(assert (=> b!2801483 (= res!1167449 (= (size!25423 lt!1001516) (+ (size!25423 (t!228831 testedP!183)) (size!25423 testedSuffix!143))))))

(declare-fun b!2801482 () Bool)

(assert (=> b!2801482 (= e!1770272 (Cons!32566 (h!37986 (t!228831 testedP!183)) (++!8028 (t!228831 (t!228831 testedP!183)) testedSuffix!143)))))

(declare-fun d!813805 () Bool)

(assert (=> d!813805 e!1770273))

(declare-fun res!1167448 () Bool)

(assert (=> d!813805 (=> (not res!1167448) (not e!1770273))))

(assert (=> d!813805 (= res!1167448 (= (content!4545 lt!1001516) ((_ map or) (content!4545 (t!228831 testedP!183)) (content!4545 testedSuffix!143))))))

(assert (=> d!813805 (= lt!1001516 e!1770272)))

(declare-fun c!454211 () Bool)

(assert (=> d!813805 (= c!454211 ((_ is Nil!32566) (t!228831 testedP!183)))))

(assert (=> d!813805 (= (++!8028 (t!228831 testedP!183) testedSuffix!143) lt!1001516)))

(assert (= (and d!813805 c!454211) b!2801481))

(assert (= (and d!813805 (not c!454211)) b!2801482))

(assert (= (and d!813805 res!1167448) b!2801483))

(assert (= (and b!2801483 res!1167449) b!2801484))

(declare-fun m!3231159 () Bool)

(assert (=> b!2801483 m!3231159))

(assert (=> b!2801483 m!3230695))

(assert (=> b!2801483 m!3230709))

(declare-fun m!3231161 () Bool)

(assert (=> b!2801482 m!3231161))

(declare-fun m!3231163 () Bool)

(assert (=> d!813805 m!3231163))

(assert (=> d!813805 m!3231157))

(assert (=> d!813805 m!3230717))

(assert (=> b!2801089 d!813805))

(assert (=> d!813637 d!813613))

(assert (=> d!813637 d!813635))

(declare-fun d!813807 () Bool)

(assert (=> d!813807 (<= (size!25423 testedP!183) (size!25423 lt!1001381))))

(assert (=> d!813807 true))

(declare-fun _$64!545 () Unit!46678)

(assert (=> d!813807 (= (choose!16502 testedP!183 lt!1001381) _$64!545)))

(declare-fun bs!515682 () Bool)

(assert (= bs!515682 d!813807))

(assert (=> bs!515682 m!3230579))

(assert (=> bs!515682 m!3230667))

(assert (=> d!813637 d!813807))

(assert (=> d!813637 d!813683))

(assert (=> b!2801174 d!813745))

(assert (=> b!2801174 d!813767))

(declare-fun b!2801485 () Bool)

(declare-fun e!1770274 () Bool)

(declare-fun e!1770276 () Bool)

(assert (=> b!2801485 (= e!1770274 e!1770276)))

(declare-fun res!1167452 () Bool)

(assert (=> b!2801485 (=> (not res!1167452) (not e!1770276))))

(assert (=> b!2801485 (= res!1167452 (not ((_ is Nil!32566) (tail!4434 lt!1001364))))))

(declare-fun d!813809 () Bool)

(declare-fun e!1770275 () Bool)

(assert (=> d!813809 e!1770275))

(declare-fun res!1167451 () Bool)

(assert (=> d!813809 (=> res!1167451 e!1770275)))

(declare-fun lt!1001517 () Bool)

(assert (=> d!813809 (= res!1167451 (not lt!1001517))))

(assert (=> d!813809 (= lt!1001517 e!1770274)))

(declare-fun res!1167450 () Bool)

(assert (=> d!813809 (=> res!1167450 e!1770274)))

(assert (=> d!813809 (= res!1167450 ((_ is Nil!32566) (tail!4434 testedP!183)))))

(assert (=> d!813809 (= (isPrefix!2640 (tail!4434 testedP!183) (tail!4434 lt!1001364)) lt!1001517)))

(declare-fun b!2801486 () Bool)

(declare-fun res!1167453 () Bool)

(assert (=> b!2801486 (=> (not res!1167453) (not e!1770276))))

(assert (=> b!2801486 (= res!1167453 (= (head!6207 (tail!4434 testedP!183)) (head!6207 (tail!4434 lt!1001364))))))

(declare-fun b!2801488 () Bool)

(assert (=> b!2801488 (= e!1770275 (>= (size!25423 (tail!4434 lt!1001364)) (size!25423 (tail!4434 testedP!183))))))

(declare-fun b!2801487 () Bool)

(assert (=> b!2801487 (= e!1770276 (isPrefix!2640 (tail!4434 (tail!4434 testedP!183)) (tail!4434 (tail!4434 lt!1001364))))))

(assert (= (and d!813809 (not res!1167450)) b!2801485))

(assert (= (and b!2801485 res!1167452) b!2801486))

(assert (= (and b!2801486 res!1167453) b!2801487))

(assert (= (and d!813809 (not res!1167451)) b!2801488))

(assert (=> b!2801486 m!3230829))

(declare-fun m!3231165 () Bool)

(assert (=> b!2801486 m!3231165))

(assert (=> b!2801486 m!3230837))

(declare-fun m!3231167 () Bool)

(assert (=> b!2801486 m!3231167))

(assert (=> b!2801488 m!3230837))

(declare-fun m!3231169 () Bool)

(assert (=> b!2801488 m!3231169))

(assert (=> b!2801488 m!3230829))

(declare-fun m!3231171 () Bool)

(assert (=> b!2801488 m!3231171))

(assert (=> b!2801487 m!3230829))

(declare-fun m!3231173 () Bool)

(assert (=> b!2801487 m!3231173))

(assert (=> b!2801487 m!3230837))

(declare-fun m!3231175 () Bool)

(assert (=> b!2801487 m!3231175))

(assert (=> b!2801487 m!3231173))

(assert (=> b!2801487 m!3231175))

(declare-fun m!3231177 () Bool)

(assert (=> b!2801487 m!3231177))

(assert (=> b!2801179 d!813809))

(declare-fun d!813811 () Bool)

(assert (=> d!813811 (= (tail!4434 testedP!183) (t!228831 testedP!183))))

(assert (=> b!2801179 d!813811))

(declare-fun d!813813 () Bool)

(assert (=> d!813813 (= (tail!4434 lt!1001364) (t!228831 lt!1001364))))

(assert (=> b!2801179 d!813813))

(assert (=> d!813601 d!813603))

(declare-fun d!813815 () Bool)

(assert (=> d!813815 (isPrefix!2640 lt!1001381 lt!1001381)))

(assert (=> d!813815 true))

(declare-fun _$45!1687 () Unit!46678)

(assert (=> d!813815 (= (choose!16499 lt!1001381 lt!1001381) _$45!1687)))

(declare-fun bs!515683 () Bool)

(assert (= bs!515683 d!813815))

(assert (=> bs!515683 m!3230661))

(assert (=> d!813601 d!813815))

(declare-fun b!2801489 () Bool)

(declare-fun e!1770277 () List!32666)

(assert (=> b!2801489 (= e!1770277 (Cons!32566 (head!6207 lt!1001372) Nil!32566))))

(declare-fun lt!1001518 () List!32666)

(declare-fun e!1770278 () Bool)

(declare-fun b!2801492 () Bool)

(assert (=> b!2801492 (= e!1770278 (or (not (= (Cons!32566 (head!6207 lt!1001372) Nil!32566) Nil!32566)) (= lt!1001518 (t!228831 testedP!183))))))

(declare-fun b!2801491 () Bool)

(declare-fun res!1167455 () Bool)

(assert (=> b!2801491 (=> (not res!1167455) (not e!1770278))))

(assert (=> b!2801491 (= res!1167455 (= (size!25423 lt!1001518) (+ (size!25423 (t!228831 testedP!183)) (size!25423 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))))

(declare-fun b!2801490 () Bool)

(assert (=> b!2801490 (= e!1770277 (Cons!32566 (h!37986 (t!228831 testedP!183)) (++!8028 (t!228831 (t!228831 testedP!183)) (Cons!32566 (head!6207 lt!1001372) Nil!32566))))))

(declare-fun d!813817 () Bool)

(assert (=> d!813817 e!1770278))

(declare-fun res!1167454 () Bool)

(assert (=> d!813817 (=> (not res!1167454) (not e!1770278))))

(assert (=> d!813817 (= res!1167454 (= (content!4545 lt!1001518) ((_ map or) (content!4545 (t!228831 testedP!183)) (content!4545 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))))

(assert (=> d!813817 (= lt!1001518 e!1770277)))

(declare-fun c!454212 () Bool)

(assert (=> d!813817 (= c!454212 ((_ is Nil!32566) (t!228831 testedP!183)))))

(assert (=> d!813817 (= (++!8028 (t!228831 testedP!183) (Cons!32566 (head!6207 lt!1001372) Nil!32566)) lt!1001518)))

(assert (= (and d!813817 c!454212) b!2801489))

(assert (= (and d!813817 (not c!454212)) b!2801490))

(assert (= (and d!813817 res!1167454) b!2801491))

(assert (= (and b!2801491 res!1167455) b!2801492))

(declare-fun m!3231179 () Bool)

(assert (=> b!2801491 m!3231179))

(assert (=> b!2801491 m!3230695))

(assert (=> b!2801491 m!3230817))

(declare-fun m!3231181 () Bool)

(assert (=> b!2801490 m!3231181))

(declare-fun m!3231183 () Bool)

(assert (=> d!813817 m!3231183))

(assert (=> d!813817 m!3231157))

(assert (=> d!813817 m!3230823))

(assert (=> b!2801170 d!813817))

(declare-fun bs!515684 () Bool)

(declare-fun d!813819 () Bool)

(assert (= bs!515684 (and d!813819 d!813789)))

(declare-fun lambda!102928 () Int)

(assert (=> bs!515684 (= lambda!102928 lambda!102923)))

(declare-fun bs!515685 () Bool)

(assert (= bs!515685 (and d!813819 d!813799)))

(assert (=> bs!515685 (= lambda!102928 lambda!102926)))

(declare-fun bs!515686 () Bool)

(assert (= bs!515686 (and d!813819 d!813749)))

(assert (=> bs!515686 (= lambda!102928 lambda!102908)))

(declare-fun bs!515687 () Bool)

(assert (= bs!515687 (and d!813819 d!813619)))

(assert (=> bs!515687 (= lambda!102928 lambda!102878)))

(declare-fun bs!515688 () Bool)

(assert (= bs!515688 (and d!813819 d!813801)))

(assert (=> bs!515688 (= lambda!102928 lambda!102927)))

(declare-fun bs!515689 () Bool)

(assert (= bs!515689 (and d!813819 d!813755)))

(assert (=> bs!515689 (= lambda!102928 lambda!102909)))

(declare-fun bs!515690 () Bool)

(assert (= bs!515690 (and d!813819 d!813793)))

(assert (=> bs!515690 (= lambda!102928 lambda!102925)))

(declare-fun bs!515691 () Bool)

(assert (= bs!515691 (and d!813819 d!813743)))

(assert (=> bs!515691 (= lambda!102928 lambda!102907)))

(declare-fun bs!515692 () Bool)

(assert (= bs!515692 (and d!813819 d!813727)))

(assert (=> bs!515692 (= lambda!102928 lambda!102903)))

(declare-fun bs!515693 () Bool)

(assert (= bs!515693 (and d!813819 d!813791)))

(assert (=> bs!515693 (= lambda!102928 lambda!102924)))

(assert (=> d!813819 (= (inv!44232 (_1!19669 (_1!19670 (h!37987 mapValue!18359)))) (forall!6710 (exprs!2943 (_1!19669 (_1!19670 (h!37987 mapValue!18359)))) lambda!102928))))

(declare-fun bs!515694 () Bool)

(assert (= bs!515694 d!813819))

(declare-fun m!3231185 () Bool)

(assert (=> bs!515694 m!3231185))

(assert (=> b!2801243 d!813819))

(declare-fun d!813821 () Bool)

(declare-fun c!454213 () Bool)

(assert (=> d!813821 (= c!454213 ((_ is Nil!32566) lt!1001464))))

(declare-fun e!1770279 () (InoxSet C!16608))

(assert (=> d!813821 (= (content!4545 lt!1001464) e!1770279)))

(declare-fun b!2801493 () Bool)

(assert (=> b!2801493 (= e!1770279 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801494 () Bool)

(assert (=> b!2801494 (= e!1770279 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001464) true) (content!4545 (t!228831 lt!1001464))))))

(assert (= (and d!813821 c!454213) b!2801493))

(assert (= (and d!813821 (not c!454213)) b!2801494))

(declare-fun m!3231187 () Bool)

(assert (=> b!2801494 m!3231187))

(declare-fun m!3231189 () Bool)

(assert (=> b!2801494 m!3231189))

(assert (=> d!813677 d!813821))

(declare-fun d!813823 () Bool)

(declare-fun c!454214 () Bool)

(assert (=> d!813823 (= c!454214 ((_ is Nil!32566) testedP!183))))

(declare-fun e!1770280 () (InoxSet C!16608))

(assert (=> d!813823 (= (content!4545 testedP!183) e!1770280)))

(declare-fun b!2801495 () Bool)

(assert (=> b!2801495 (= e!1770280 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801496 () Bool)

(assert (=> b!2801496 (= e!1770280 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 testedP!183) true) (content!4545 (t!228831 testedP!183))))))

(assert (= (and d!813823 c!454214) b!2801495))

(assert (= (and d!813823 (not c!454214)) b!2801496))

(declare-fun m!3231191 () Bool)

(assert (=> b!2801496 m!3231191))

(assert (=> b!2801496 m!3231157))

(assert (=> d!813677 d!813823))

(declare-fun d!813825 () Bool)

(declare-fun c!454215 () Bool)

(assert (=> d!813825 (= c!454215 ((_ is Nil!32566) (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))

(declare-fun e!1770281 () (InoxSet C!16608))

(assert (=> d!813825 (= (content!4545 (Cons!32566 (head!6207 lt!1001372) Nil!32566)) e!1770281)))

(declare-fun b!2801497 () Bool)

(assert (=> b!2801497 (= e!1770281 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801498 () Bool)

(assert (=> b!2801498 (= e!1770281 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 (Cons!32566 (head!6207 lt!1001372) Nil!32566)) true) (content!4545 (t!228831 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))))

(assert (= (and d!813825 c!454215) b!2801497))

(assert (= (and d!813825 (not c!454215)) b!2801498))

(declare-fun m!3231193 () Bool)

(assert (=> b!2801498 m!3231193))

(declare-fun m!3231195 () Bool)

(assert (=> b!2801498 m!3231195))

(assert (=> d!813677 d!813825))

(declare-fun d!813827 () Bool)

(declare-fun lt!1001519 () Int)

(assert (=> d!813827 (>= lt!1001519 0)))

(declare-fun e!1770282 () Int)

(assert (=> d!813827 (= lt!1001519 e!1770282)))

(declare-fun c!454216 () Bool)

(assert (=> d!813827 (= c!454216 ((_ is Nil!32566) (list!12220 (_1!19674 lt!1001379))))))

(assert (=> d!813827 (= (size!25423 (list!12220 (_1!19674 lt!1001379))) lt!1001519)))

(declare-fun b!2801499 () Bool)

(assert (=> b!2801499 (= e!1770282 0)))

(declare-fun b!2801500 () Bool)

(assert (=> b!2801500 (= e!1770282 (+ 1 (size!25423 (t!228831 (list!12220 (_1!19674 lt!1001379))))))))

(assert (= (and d!813827 c!454216) b!2801499))

(assert (= (and d!813827 (not c!454216)) b!2801500))

(declare-fun m!3231197 () Bool)

(assert (=> b!2801500 m!3231197))

(assert (=> d!813661 d!813827))

(assert (=> d!813661 d!813693))

(declare-fun d!813829 () Bool)

(declare-fun lt!1001522 () Int)

(assert (=> d!813829 (= lt!1001522 (size!25423 (list!12221 (c!454126 (_1!19674 lt!1001379)))))))

(assert (=> d!813829 (= lt!1001522 (ite ((_ is Empty!10082) (c!454126 (_1!19674 lt!1001379))) 0 (ite ((_ is Leaf!15363) (c!454126 (_1!19674 lt!1001379))) (csize!20395 (c!454126 (_1!19674 lt!1001379))) (csize!20394 (c!454126 (_1!19674 lt!1001379))))))))

(assert (=> d!813829 (= (size!25428 (c!454126 (_1!19674 lt!1001379))) lt!1001522)))

(declare-fun bs!515695 () Bool)

(assert (= bs!515695 d!813829))

(assert (=> bs!515695 m!3230861))

(assert (=> bs!515695 m!3230861))

(declare-fun m!3231199 () Bool)

(assert (=> bs!515695 m!3231199))

(assert (=> d!813661 d!813829))

(declare-fun d!813831 () Bool)

(declare-fun lt!1001523 () Int)

(assert (=> d!813831 (>= lt!1001523 0)))

(declare-fun e!1770283 () Int)

(assert (=> d!813831 (= lt!1001523 e!1770283)))

(declare-fun c!454217 () Bool)

(assert (=> d!813831 (= c!454217 ((_ is Nil!32566) (t!228831 lt!1001381)))))

(assert (=> d!813831 (= (size!25423 (t!228831 lt!1001381)) lt!1001523)))

(declare-fun b!2801501 () Bool)

(assert (=> b!2801501 (= e!1770283 0)))

(declare-fun b!2801502 () Bool)

(assert (=> b!2801502 (= e!1770283 (+ 1 (size!25423 (t!228831 (t!228831 lt!1001381)))))))

(assert (= (and d!813831 c!454217) b!2801501))

(assert (= (and d!813831 (not c!454217)) b!2801502))

(declare-fun m!3231201 () Bool)

(assert (=> b!2801502 m!3231201))

(assert (=> b!2801093 d!813831))

(assert (=> b!2801143 d!813767))

(declare-fun b!2801513 () Bool)

(declare-fun e!1770289 () List!32666)

(assert (=> b!2801513 (= e!1770289 (list!12222 (xs!13194 (c!454126 (_2!19674 lt!1001379)))))))

(declare-fun b!2801511 () Bool)

(declare-fun e!1770288 () List!32666)

(assert (=> b!2801511 (= e!1770288 Nil!32566)))

(declare-fun b!2801514 () Bool)

(assert (=> b!2801514 (= e!1770289 (++!8028 (list!12221 (left!24594 (c!454126 (_2!19674 lt!1001379)))) (list!12221 (right!24924 (c!454126 (_2!19674 lt!1001379))))))))

(declare-fun d!813833 () Bool)

(declare-fun c!454222 () Bool)

(assert (=> d!813833 (= c!454222 ((_ is Empty!10082) (c!454126 (_2!19674 lt!1001379))))))

(assert (=> d!813833 (= (list!12221 (c!454126 (_2!19674 lt!1001379))) e!1770288)))

(declare-fun b!2801512 () Bool)

(assert (=> b!2801512 (= e!1770288 e!1770289)))

(declare-fun c!454223 () Bool)

(assert (=> b!2801512 (= c!454223 ((_ is Leaf!15363) (c!454126 (_2!19674 lt!1001379))))))

(assert (= (and d!813833 c!454222) b!2801511))

(assert (= (and d!813833 (not c!454222)) b!2801512))

(assert (= (and b!2801512 c!454223) b!2801513))

(assert (= (and b!2801512 (not c!454223)) b!2801514))

(declare-fun m!3231203 () Bool)

(assert (=> b!2801513 m!3231203))

(declare-fun m!3231205 () Bool)

(assert (=> b!2801514 m!3231205))

(declare-fun m!3231207 () Bool)

(assert (=> b!2801514 m!3231207))

(assert (=> b!2801514 m!3231205))

(assert (=> b!2801514 m!3231207))

(declare-fun m!3231209 () Bool)

(assert (=> b!2801514 m!3231209))

(assert (=> d!813691 d!813833))

(declare-fun b!2801515 () Bool)

(declare-fun e!1770290 () Bool)

(declare-fun e!1770292 () Bool)

(assert (=> b!2801515 (= e!1770290 e!1770292)))

(declare-fun res!1167458 () Bool)

(assert (=> b!2801515 (=> (not res!1167458) (not e!1770292))))

(assert (=> b!2801515 (= res!1167458 (not ((_ is Nil!32566) (tail!4434 lt!1001381))))))

(declare-fun d!813835 () Bool)

(declare-fun e!1770291 () Bool)

(assert (=> d!813835 e!1770291))

(declare-fun res!1167457 () Bool)

(assert (=> d!813835 (=> res!1167457 e!1770291)))

(declare-fun lt!1001524 () Bool)

(assert (=> d!813835 (= res!1167457 (not lt!1001524))))

(assert (=> d!813835 (= lt!1001524 e!1770290)))

(declare-fun res!1167456 () Bool)

(assert (=> d!813835 (=> res!1167456 e!1770290)))

(assert (=> d!813835 (= res!1167456 ((_ is Nil!32566) (tail!4434 lt!1001381)))))

(assert (=> d!813835 (= (isPrefix!2640 (tail!4434 lt!1001381) (tail!4434 lt!1001381)) lt!1001524)))

(declare-fun b!2801516 () Bool)

(declare-fun res!1167459 () Bool)

(assert (=> b!2801516 (=> (not res!1167459) (not e!1770292))))

(assert (=> b!2801516 (= res!1167459 (= (head!6207 (tail!4434 lt!1001381)) (head!6207 (tail!4434 lt!1001381))))))

(declare-fun b!2801518 () Bool)

(assert (=> b!2801518 (= e!1770291 (>= (size!25423 (tail!4434 lt!1001381)) (size!25423 (tail!4434 lt!1001381))))))

(declare-fun b!2801517 () Bool)

(assert (=> b!2801517 (= e!1770292 (isPrefix!2640 (tail!4434 (tail!4434 lt!1001381)) (tail!4434 (tail!4434 lt!1001381))))))

(assert (= (and d!813835 (not res!1167456)) b!2801515))

(assert (= (and b!2801515 res!1167458) b!2801516))

(assert (= (and b!2801516 res!1167459) b!2801517))

(assert (= (and d!813835 (not res!1167457)) b!2801518))

(assert (=> b!2801516 m!3230675))

(assert (=> b!2801516 m!3231076))

(assert (=> b!2801516 m!3230675))

(assert (=> b!2801516 m!3231076))

(assert (=> b!2801518 m!3230675))

(assert (=> b!2801518 m!3231038))

(assert (=> b!2801518 m!3230675))

(assert (=> b!2801518 m!3231038))

(assert (=> b!2801517 m!3230675))

(assert (=> b!2801517 m!3231040))

(assert (=> b!2801517 m!3230675))

(assert (=> b!2801517 m!3231040))

(assert (=> b!2801517 m!3231040))

(assert (=> b!2801517 m!3231040))

(declare-fun m!3231211 () Bool)

(assert (=> b!2801517 m!3231211))

(assert (=> b!2801058 d!813835))

(assert (=> b!2801058 d!813735))

(declare-fun d!813837 () Bool)

(declare-fun c!454224 () Bool)

(assert (=> d!813837 (= c!454224 ((_ is Nil!32566) lt!1001462))))

(declare-fun e!1770293 () (InoxSet C!16608))

(assert (=> d!813837 (= (content!4545 lt!1001462) e!1770293)))

(declare-fun b!2801519 () Bool)

(assert (=> b!2801519 (= e!1770293 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801520 () Bool)

(assert (=> b!2801520 (= e!1770293 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001462) true) (content!4545 (t!228831 lt!1001462))))))

(assert (= (and d!813837 c!454224) b!2801519))

(assert (= (and d!813837 (not c!454224)) b!2801520))

(declare-fun m!3231213 () Bool)

(assert (=> b!2801520 m!3231213))

(declare-fun m!3231215 () Bool)

(assert (=> b!2801520 m!3231215))

(assert (=> d!813673 d!813837))

(assert (=> d!813673 d!813823))

(declare-fun d!813839 () Bool)

(declare-fun c!454225 () Bool)

(assert (=> d!813839 (= c!454225 ((_ is Nil!32566) (Cons!32566 lt!1001359 Nil!32566)))))

(declare-fun e!1770294 () (InoxSet C!16608))

(assert (=> d!813839 (= (content!4545 (Cons!32566 lt!1001359 Nil!32566)) e!1770294)))

(declare-fun b!2801521 () Bool)

(assert (=> b!2801521 (= e!1770294 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801522 () Bool)

(assert (=> b!2801522 (= e!1770294 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 (Cons!32566 lt!1001359 Nil!32566)) true) (content!4545 (t!228831 (Cons!32566 lt!1001359 Nil!32566)))))))

(assert (= (and d!813839 c!454225) b!2801521))

(assert (= (and d!813839 (not c!454225)) b!2801522))

(declare-fun m!3231217 () Bool)

(assert (=> b!2801522 m!3231217))

(declare-fun m!3231219 () Bool)

(assert (=> b!2801522 m!3231219))

(assert (=> d!813673 d!813839))

(declare-fun d!813841 () Bool)

(assert (=> d!813841 (= (valid!3163 (_2!19673 lt!1001400)) (validCacheMapUp!400 (cache!4089 (_2!19673 lt!1001400))))))

(declare-fun bs!515696 () Bool)

(assert (= bs!515696 d!813841))

(declare-fun m!3231221 () Bool)

(assert (=> bs!515696 m!3231221))

(assert (=> b!2801070 d!813841))

(declare-fun d!813843 () Bool)

(declare-fun lt!1001525 () Int)

(assert (=> d!813843 (>= lt!1001525 0)))

(declare-fun e!1770295 () Int)

(assert (=> d!813843 (= lt!1001525 e!1770295)))

(declare-fun c!454226 () Bool)

(assert (=> d!813843 (= c!454226 ((_ is Nil!32566) lt!1001470))))

(assert (=> d!813843 (= (size!25423 lt!1001470) lt!1001525)))

(declare-fun b!2801523 () Bool)

(assert (=> b!2801523 (= e!1770295 0)))

(declare-fun b!2801524 () Bool)

(assert (=> b!2801524 (= e!1770295 (+ 1 (size!25423 (t!228831 lt!1001470))))))

(assert (= (and d!813843 c!454226) b!2801523))

(assert (= (and d!813843 (not c!454226)) b!2801524))

(declare-fun m!3231223 () Bool)

(assert (=> b!2801524 m!3231223))

(assert (=> b!2801183 d!813843))

(declare-fun d!813845 () Bool)

(declare-fun lt!1001526 () Int)

(assert (=> d!813845 (>= lt!1001526 0)))

(declare-fun e!1770296 () Int)

(assert (=> d!813845 (= lt!1001526 e!1770296)))

(declare-fun c!454227 () Bool)

(assert (=> d!813845 (= c!454227 ((_ is Nil!32566) lt!1001371))))

(assert (=> d!813845 (= (size!25423 lt!1001371) lt!1001526)))

(declare-fun b!2801525 () Bool)

(assert (=> b!2801525 (= e!1770296 0)))

(declare-fun b!2801526 () Bool)

(assert (=> b!2801526 (= e!1770296 (+ 1 (size!25423 (t!228831 lt!1001371))))))

(assert (= (and d!813845 c!454227) b!2801525))

(assert (= (and d!813845 (not c!454227)) b!2801526))

(assert (=> b!2801526 m!3231113))

(assert (=> b!2801183 d!813845))

(declare-fun d!813847 () Bool)

(declare-fun lt!1001527 () Int)

(assert (=> d!813847 (>= lt!1001527 0)))

(declare-fun e!1770297 () Int)

(assert (=> d!813847 (= lt!1001527 e!1770297)))

(declare-fun c!454228 () Bool)

(assert (=> d!813847 (= c!454228 ((_ is Nil!32566) lt!1001374))))

(assert (=> d!813847 (= (size!25423 lt!1001374) lt!1001527)))

(declare-fun b!2801527 () Bool)

(assert (=> b!2801527 (= e!1770297 0)))

(declare-fun b!2801528 () Bool)

(assert (=> b!2801528 (= e!1770297 (+ 1 (size!25423 (t!228831 lt!1001374))))))

(assert (= (and d!813847 c!454228) b!2801527))

(assert (= (and d!813847 (not c!454228)) b!2801528))

(declare-fun m!3231225 () Bool)

(assert (=> b!2801528 m!3231225))

(assert (=> b!2801183 d!813847))

(declare-fun bs!515697 () Bool)

(declare-fun d!813849 () Bool)

(assert (= bs!515697 (and d!813849 d!813789)))

(declare-fun lambda!102929 () Int)

(assert (=> bs!515697 (= lambda!102929 lambda!102923)))

(declare-fun bs!515698 () Bool)

(assert (= bs!515698 (and d!813849 d!813799)))

(assert (=> bs!515698 (= lambda!102929 lambda!102926)))

(declare-fun bs!515699 () Bool)

(assert (= bs!515699 (and d!813849 d!813749)))

(assert (=> bs!515699 (= lambda!102929 lambda!102908)))

(declare-fun bs!515700 () Bool)

(assert (= bs!515700 (and d!813849 d!813619)))

(assert (=> bs!515700 (= lambda!102929 lambda!102878)))

(declare-fun bs!515701 () Bool)

(assert (= bs!515701 (and d!813849 d!813801)))

(assert (=> bs!515701 (= lambda!102929 lambda!102927)))

(declare-fun bs!515702 () Bool)

(assert (= bs!515702 (and d!813849 d!813755)))

(assert (=> bs!515702 (= lambda!102929 lambda!102909)))

(declare-fun bs!515703 () Bool)

(assert (= bs!515703 (and d!813849 d!813793)))

(assert (=> bs!515703 (= lambda!102929 lambda!102925)))

(declare-fun bs!515704 () Bool)

(assert (= bs!515704 (and d!813849 d!813743)))

(assert (=> bs!515704 (= lambda!102929 lambda!102907)))

(declare-fun bs!515705 () Bool)

(assert (= bs!515705 (and d!813849 d!813727)))

(assert (=> bs!515705 (= lambda!102929 lambda!102903)))

(declare-fun bs!515706 () Bool)

(assert (= bs!515706 (and d!813849 d!813791)))

(assert (=> bs!515706 (= lambda!102929 lambda!102924)))

(declare-fun bs!515707 () Bool)

(assert (= bs!515707 (and d!813849 d!813819)))

(assert (=> bs!515707 (= lambda!102929 lambda!102928)))

(assert (=> d!813849 (= (inv!44232 setElem!24535) (forall!6710 (exprs!2943 setElem!24535) lambda!102929))))

(declare-fun bs!515708 () Bool)

(assert (= bs!515708 d!813849))

(declare-fun m!3231227 () Bool)

(assert (=> bs!515708 m!3231227))

(assert (=> setNonEmpty!24536 d!813849))

(declare-fun bs!515709 () Bool)

(declare-fun d!813851 () Bool)

(assert (= bs!515709 (and d!813851 d!813789)))

(declare-fun lambda!102930 () Int)

(assert (=> bs!515709 (= lambda!102930 lambda!102923)))

(declare-fun bs!515710 () Bool)

(assert (= bs!515710 (and d!813851 d!813799)))

(assert (=> bs!515710 (= lambda!102930 lambda!102926)))

(declare-fun bs!515711 () Bool)

(assert (= bs!515711 (and d!813851 d!813749)))

(assert (=> bs!515711 (= lambda!102930 lambda!102908)))

(declare-fun bs!515712 () Bool)

(assert (= bs!515712 (and d!813851 d!813619)))

(assert (=> bs!515712 (= lambda!102930 lambda!102878)))

(declare-fun bs!515713 () Bool)

(assert (= bs!515713 (and d!813851 d!813801)))

(assert (=> bs!515713 (= lambda!102930 lambda!102927)))

(declare-fun bs!515714 () Bool)

(assert (= bs!515714 (and d!813851 d!813755)))

(assert (=> bs!515714 (= lambda!102930 lambda!102909)))

(declare-fun bs!515715 () Bool)

(assert (= bs!515715 (and d!813851 d!813793)))

(assert (=> bs!515715 (= lambda!102930 lambda!102925)))

(declare-fun bs!515716 () Bool)

(assert (= bs!515716 (and d!813851 d!813743)))

(assert (=> bs!515716 (= lambda!102930 lambda!102907)))

(declare-fun bs!515717 () Bool)

(assert (= bs!515717 (and d!813851 d!813727)))

(assert (=> bs!515717 (= lambda!102930 lambda!102903)))

(declare-fun bs!515718 () Bool)

(assert (= bs!515718 (and d!813851 d!813849)))

(assert (=> bs!515718 (= lambda!102930 lambda!102929)))

(declare-fun bs!515719 () Bool)

(assert (= bs!515719 (and d!813851 d!813791)))

(assert (=> bs!515719 (= lambda!102930 lambda!102924)))

(declare-fun bs!515720 () Bool)

(assert (= bs!515720 (and d!813851 d!813819)))

(assert (=> bs!515720 (= lambda!102930 lambda!102928)))

(assert (=> d!813851 (= (inv!44232 (_2!19671 (_1!19672 (h!37988 mapDefault!18366)))) (forall!6710 (exprs!2943 (_2!19671 (_1!19672 (h!37988 mapDefault!18366)))) lambda!102930))))

(declare-fun bs!515721 () Bool)

(assert (= bs!515721 d!813851))

(declare-fun m!3231229 () Bool)

(assert (=> bs!515721 m!3231229))

(assert (=> b!2801270 d!813851))

(declare-fun bs!515722 () Bool)

(declare-fun d!813853 () Bool)

(assert (= bs!515722 (and d!813853 d!813789)))

(declare-fun lambda!102931 () Int)

(assert (=> bs!515722 (= lambda!102931 lambda!102923)))

(declare-fun bs!515723 () Bool)

(assert (= bs!515723 (and d!813853 d!813799)))

(assert (=> bs!515723 (= lambda!102931 lambda!102926)))

(declare-fun bs!515724 () Bool)

(assert (= bs!515724 (and d!813853 d!813749)))

(assert (=> bs!515724 (= lambda!102931 lambda!102908)))

(declare-fun bs!515725 () Bool)

(assert (= bs!515725 (and d!813853 d!813619)))

(assert (=> bs!515725 (= lambda!102931 lambda!102878)))

(declare-fun bs!515726 () Bool)

(assert (= bs!515726 (and d!813853 d!813801)))

(assert (=> bs!515726 (= lambda!102931 lambda!102927)))

(declare-fun bs!515727 () Bool)

(assert (= bs!515727 (and d!813853 d!813755)))

(assert (=> bs!515727 (= lambda!102931 lambda!102909)))

(declare-fun bs!515728 () Bool)

(assert (= bs!515728 (and d!813853 d!813793)))

(assert (=> bs!515728 (= lambda!102931 lambda!102925)))

(declare-fun bs!515729 () Bool)

(assert (= bs!515729 (and d!813853 d!813743)))

(assert (=> bs!515729 (= lambda!102931 lambda!102907)))

(declare-fun bs!515730 () Bool)

(assert (= bs!515730 (and d!813853 d!813727)))

(assert (=> bs!515730 (= lambda!102931 lambda!102903)))

(declare-fun bs!515731 () Bool)

(assert (= bs!515731 (and d!813853 d!813849)))

(assert (=> bs!515731 (= lambda!102931 lambda!102929)))

(declare-fun bs!515732 () Bool)

(assert (= bs!515732 (and d!813853 d!813791)))

(assert (=> bs!515732 (= lambda!102931 lambda!102924)))

(declare-fun bs!515733 () Bool)

(assert (= bs!515733 (and d!813853 d!813851)))

(assert (=> bs!515733 (= lambda!102931 lambda!102930)))

(declare-fun bs!515734 () Bool)

(assert (= bs!515734 (and d!813853 d!813819)))

(assert (=> bs!515734 (= lambda!102931 lambda!102928)))

(assert (=> d!813853 (= (inv!44232 setElem!24526) (forall!6710 (exprs!2943 setElem!24526) lambda!102931))))

(declare-fun bs!515735 () Bool)

(assert (= bs!515735 d!813853))

(declare-fun m!3231231 () Bool)

(assert (=> bs!515735 m!3231231))

(assert (=> setNonEmpty!24526 d!813853))

(declare-fun bs!515736 () Bool)

(declare-fun d!813855 () Bool)

(assert (= bs!515736 (and d!813855 d!813681)))

(declare-fun lambda!102934 () Int)

(assert (=> bs!515736 (not (= lambda!102934 lambda!102896))))

(declare-fun bs!515737 () Bool)

(assert (= bs!515737 (and d!813855 d!813779)))

(assert (=> bs!515737 (= lambda!102934 lambda!102922)))

(declare-fun bs!515738 () Bool)

(assert (= bs!515738 (and d!813855 d!813731)))

(assert (=> bs!515738 (= (= lambda!102891 (ite c!454145 lambda!102892 lambda!102893)) (= lambda!102934 lambda!102906))))

(declare-fun bs!515739 () Bool)

(assert (= bs!515739 (and d!813855 d!813639)))

(assert (=> bs!515739 (not (= lambda!102934 lambda!102891))))

(declare-fun bs!515740 () Bool)

(assert (= bs!515740 (and d!813855 d!813773)))

(assert (=> bs!515740 (not (= lambda!102934 lambda!102919))))

(declare-fun bs!515741 () Bool)

(assert (= bs!515741 (and d!813855 b!2801098)))

(assert (=> bs!515741 (not (= lambda!102934 lambda!102892))))

(declare-fun bs!515742 () Bool)

(assert (= bs!515742 (and d!813855 b!2801099)))

(assert (=> bs!515742 (not (= lambda!102934 lambda!102893))))

(assert (=> d!813855 true))

(assert (=> d!813855 (< (dynLambda!13625 order!17251 lambda!102891) (dynLambda!13625 order!17251 lambda!102934))))

(assert (=> d!813855 (not (exists!1020 lt!1001426 lambda!102934))))

(declare-fun lt!1001530 () Unit!46678)

(declare-fun choose!16512 (List!32669 Int) Unit!46678)

(assert (=> d!813855 (= lt!1001530 (choose!16512 lt!1001426 lambda!102891))))

(assert (=> d!813855 (forall!6713 lt!1001426 lambda!102891)))

(assert (=> d!813855 (= (lemmaForallThenNotExists!111 lt!1001426 lambda!102891) lt!1001530)))

(declare-fun bs!515743 () Bool)

(assert (= bs!515743 d!813855))

(declare-fun m!3231233 () Bool)

(assert (=> bs!515743 m!3231233))

(declare-fun m!3231235 () Bool)

(assert (=> bs!515743 m!3231235))

(declare-fun m!3231237 () Bool)

(assert (=> bs!515743 m!3231237))

(assert (=> b!2801099 d!813855))

(declare-fun d!813857 () Bool)

(declare-fun res!1167466 () Bool)

(declare-fun e!1770302 () Bool)

(assert (=> d!813857 (=> (not res!1167466) (not e!1770302))))

(assert (=> d!813857 (= res!1167466 (= (csize!20394 (c!454126 totalInput!758)) (+ (size!25428 (left!24594 (c!454126 totalInput!758))) (size!25428 (right!24924 (c!454126 totalInput!758))))))))

(assert (=> d!813857 (= (inv!44233 (c!454126 totalInput!758)) e!1770302)))

(declare-fun b!2801535 () Bool)

(declare-fun res!1167467 () Bool)

(assert (=> b!2801535 (=> (not res!1167467) (not e!1770302))))

(assert (=> b!2801535 (= res!1167467 (and (not (= (left!24594 (c!454126 totalInput!758)) Empty!10082)) (not (= (right!24924 (c!454126 totalInput!758)) Empty!10082))))))

(declare-fun b!2801536 () Bool)

(declare-fun res!1167468 () Bool)

(assert (=> b!2801536 (=> (not res!1167468) (not e!1770302))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2801536 (= res!1167468 (= (cheight!10293 (c!454126 totalInput!758)) (+ (max!0 (height!1498 (left!24594 (c!454126 totalInput!758))) (height!1498 (right!24924 (c!454126 totalInput!758)))) 1)))))

(declare-fun b!2801537 () Bool)

(assert (=> b!2801537 (= e!1770302 (<= 0 (cheight!10293 (c!454126 totalInput!758))))))

(assert (= (and d!813857 res!1167466) b!2801535))

(assert (= (and b!2801535 res!1167467) b!2801536))

(assert (= (and b!2801536 res!1167468) b!2801537))

(assert (=> d!813857 m!3231000))

(declare-fun m!3231239 () Bool)

(assert (=> d!813857 m!3231239))

(assert (=> b!2801536 m!3231050))

(assert (=> b!2801536 m!3231052))

(assert (=> b!2801536 m!3231050))

(assert (=> b!2801536 m!3231052))

(declare-fun m!3231241 () Bool)

(assert (=> b!2801536 m!3231241))

(assert (=> b!2801154 d!813857))

(declare-fun d!813859 () Bool)

(declare-fun lt!1001531 () Int)

(assert (=> d!813859 (>= lt!1001531 0)))

(declare-fun e!1770303 () Int)

(assert (=> d!813859 (= lt!1001531 e!1770303)))

(declare-fun c!454229 () Bool)

(assert (=> d!813859 (= c!454229 ((_ is Nil!32566) lt!1001404))))

(assert (=> d!813859 (= (size!25423 lt!1001404) lt!1001531)))

(declare-fun b!2801538 () Bool)

(assert (=> b!2801538 (= e!1770303 0)))

(declare-fun b!2801539 () Bool)

(assert (=> b!2801539 (= e!1770303 (+ 1 (size!25423 (t!228831 lt!1001404))))))

(assert (= (and d!813859 c!454229) b!2801538))

(assert (= (and d!813859 (not c!454229)) b!2801539))

(declare-fun m!3231243 () Bool)

(assert (=> b!2801539 m!3231243))

(assert (=> b!2801090 d!813859))

(assert (=> b!2801090 d!813613))

(declare-fun d!813861 () Bool)

(declare-fun lt!1001532 () Int)

(assert (=> d!813861 (>= lt!1001532 0)))

(declare-fun e!1770304 () Int)

(assert (=> d!813861 (= lt!1001532 e!1770304)))

(declare-fun c!454230 () Bool)

(assert (=> d!813861 (= c!454230 ((_ is Nil!32566) testedSuffix!143))))

(assert (=> d!813861 (= (size!25423 testedSuffix!143) lt!1001532)))

(declare-fun b!2801540 () Bool)

(assert (=> b!2801540 (= e!1770304 0)))

(declare-fun b!2801541 () Bool)

(assert (=> b!2801541 (= e!1770304 (+ 1 (size!25423 (t!228831 testedSuffix!143))))))

(assert (= (and d!813861 c!454230) b!2801540))

(assert (= (and d!813861 (not c!454230)) b!2801541))

(declare-fun m!3231245 () Bool)

(assert (=> b!2801541 m!3231245))

(assert (=> b!2801090 d!813861))

(declare-fun d!813863 () Bool)

(assert (=> d!813863 (= lt!1001381 testedP!183)))

(assert (=> d!813863 true))

(declare-fun _$60!759 () Unit!46678)

(assert (=> d!813863 (= (choose!16500 lt!1001381 testedP!183 lt!1001381) _$60!759)))

(assert (=> d!813605 d!813863))

(assert (=> d!813605 d!813603))

(declare-fun d!813865 () Bool)

(declare-fun lt!1001533 () C!16608)

(assert (=> d!813865 (contains!6018 (tail!4434 lt!1001381) lt!1001533)))

(declare-fun e!1770306 () C!16608)

(assert (=> d!813865 (= lt!1001533 e!1770306)))

(declare-fun c!454231 () Bool)

(assert (=> d!813865 (= c!454231 (= (- testedPSize!143 1) 0))))

(declare-fun e!1770305 () Bool)

(assert (=> d!813865 e!1770305))

(declare-fun res!1167469 () Bool)

(assert (=> d!813865 (=> (not res!1167469) (not e!1770305))))

(assert (=> d!813865 (= res!1167469 (<= 0 (- testedPSize!143 1)))))

(assert (=> d!813865 (= (apply!7616 (tail!4434 lt!1001381) (- testedPSize!143 1)) lt!1001533)))

(declare-fun b!2801542 () Bool)

(assert (=> b!2801542 (= e!1770305 (< (- testedPSize!143 1) (size!25423 (tail!4434 lt!1001381))))))

(declare-fun b!2801543 () Bool)

(assert (=> b!2801543 (= e!1770306 (head!6207 (tail!4434 lt!1001381)))))

(declare-fun b!2801544 () Bool)

(assert (=> b!2801544 (= e!1770306 (apply!7616 (tail!4434 (tail!4434 lt!1001381)) (- (- testedPSize!143 1) 1)))))

(assert (= (and d!813865 res!1167469) b!2801542))

(assert (= (and d!813865 c!454231) b!2801543))

(assert (= (and d!813865 (not c!454231)) b!2801544))

(assert (=> d!813865 m!3230675))

(declare-fun m!3231247 () Bool)

(assert (=> d!813865 m!3231247))

(assert (=> b!2801542 m!3230675))

(assert (=> b!2801542 m!3231038))

(assert (=> b!2801543 m!3230675))

(assert (=> b!2801543 m!3231076))

(assert (=> b!2801544 m!3230675))

(assert (=> b!2801544 m!3231040))

(assert (=> b!2801544 m!3231040))

(declare-fun m!3231249 () Bool)

(assert (=> b!2801544 m!3231249))

(assert (=> b!2801144 d!813865))

(assert (=> b!2801144 d!813735))

(declare-fun d!813867 () Bool)

(declare-fun lt!1001534 () Int)

(assert (=> d!813867 (>= lt!1001534 0)))

(declare-fun e!1770307 () Int)

(assert (=> d!813867 (= lt!1001534 e!1770307)))

(declare-fun c!454232 () Bool)

(assert (=> d!813867 (= c!454232 ((_ is Nil!32566) lt!1001462))))

(assert (=> d!813867 (= (size!25423 lt!1001462) lt!1001534)))

(declare-fun b!2801545 () Bool)

(assert (=> b!2801545 (= e!1770307 0)))

(declare-fun b!2801546 () Bool)

(assert (=> b!2801546 (= e!1770307 (+ 1 (size!25423 (t!228831 lt!1001462))))))

(assert (= (and d!813867 c!454232) b!2801545))

(assert (= (and d!813867 (not c!454232)) b!2801546))

(declare-fun m!3231251 () Bool)

(assert (=> b!2801546 m!3231251))

(assert (=> b!2801163 d!813867))

(assert (=> b!2801163 d!813613))

(declare-fun d!813869 () Bool)

(declare-fun lt!1001535 () Int)

(assert (=> d!813869 (>= lt!1001535 0)))

(declare-fun e!1770308 () Int)

(assert (=> d!813869 (= lt!1001535 e!1770308)))

(declare-fun c!454233 () Bool)

(assert (=> d!813869 (= c!454233 ((_ is Nil!32566) (Cons!32566 lt!1001359 Nil!32566)))))

(assert (=> d!813869 (= (size!25423 (Cons!32566 lt!1001359 Nil!32566)) lt!1001535)))

(declare-fun b!2801547 () Bool)

(assert (=> b!2801547 (= e!1770308 0)))

(declare-fun b!2801548 () Bool)

(assert (=> b!2801548 (= e!1770308 (+ 1 (size!25423 (t!228831 (Cons!32566 lt!1001359 Nil!32566)))))))

(assert (= (and d!813869 c!454233) b!2801547))

(assert (= (and d!813869 (not c!454233)) b!2801548))

(declare-fun m!3231253 () Bool)

(assert (=> b!2801548 m!3231253))

(assert (=> b!2801163 d!813869))

(declare-fun b!2801549 () Bool)

(declare-fun e!1770309 () List!32666)

(assert (=> b!2801549 (= e!1770309 lt!1001366)))

(declare-fun b!2801552 () Bool)

(declare-fun lt!1001536 () List!32666)

(declare-fun e!1770310 () Bool)

(assert (=> b!2801552 (= e!1770310 (or (not (= lt!1001366 Nil!32566)) (= lt!1001536 (t!228831 lt!1001367))))))

(declare-fun b!2801551 () Bool)

(declare-fun res!1167471 () Bool)

(assert (=> b!2801551 (=> (not res!1167471) (not e!1770310))))

(assert (=> b!2801551 (= res!1167471 (= (size!25423 lt!1001536) (+ (size!25423 (t!228831 lt!1001367)) (size!25423 lt!1001366))))))

(declare-fun b!2801550 () Bool)

(assert (=> b!2801550 (= e!1770309 (Cons!32566 (h!37986 (t!228831 lt!1001367)) (++!8028 (t!228831 (t!228831 lt!1001367)) lt!1001366)))))

(declare-fun d!813871 () Bool)

(assert (=> d!813871 e!1770310))

(declare-fun res!1167470 () Bool)

(assert (=> d!813871 (=> (not res!1167470) (not e!1770310))))

(assert (=> d!813871 (= res!1167470 (= (content!4545 lt!1001536) ((_ map or) (content!4545 (t!228831 lt!1001367)) (content!4545 lt!1001366))))))

(assert (=> d!813871 (= lt!1001536 e!1770309)))

(declare-fun c!454234 () Bool)

(assert (=> d!813871 (= c!454234 ((_ is Nil!32566) (t!228831 lt!1001367)))))

(assert (=> d!813871 (= (++!8028 (t!228831 lt!1001367) lt!1001366) lt!1001536)))

(assert (= (and d!813871 c!454234) b!2801549))

(assert (= (and d!813871 (not c!454234)) b!2801550))

(assert (= (and d!813871 res!1167470) b!2801551))

(assert (= (and b!2801551 res!1167471) b!2801552))

(declare-fun m!3231255 () Bool)

(assert (=> b!2801551 m!3231255))

(assert (=> b!2801551 m!3230685))

(assert (=> b!2801551 m!3230805))

(declare-fun m!3231257 () Bool)

(assert (=> b!2801550 m!3231257))

(declare-fun m!3231259 () Bool)

(assert (=> d!813871 m!3231259))

(declare-fun m!3231261 () Bool)

(assert (=> d!813871 m!3231261))

(assert (=> d!813871 m!3230813))

(assert (=> b!2801166 d!813871))

(declare-fun b!2801553 () Bool)

(declare-fun e!1770311 () Bool)

(declare-fun e!1770312 () Bool)

(assert (=> b!2801553 (= e!1770311 e!1770312)))

(declare-fun res!1167474 () Bool)

(assert (=> b!2801553 (=> (not res!1167474) (not e!1770312))))

(assert (=> b!2801553 (= res!1167474 (<= (- 1) (- (height!1498 (left!24594 (c!454126 (_2!19674 lt!1001476)))) (height!1498 (right!24924 (c!454126 (_2!19674 lt!1001476)))))))))

(declare-fun b!2801554 () Bool)

(declare-fun res!1167476 () Bool)

(assert (=> b!2801554 (=> (not res!1167476) (not e!1770312))))

(assert (=> b!2801554 (= res!1167476 (not (isEmpty!18140 (left!24594 (c!454126 (_2!19674 lt!1001476))))))))

(declare-fun b!2801555 () Bool)

(declare-fun res!1167473 () Bool)

(assert (=> b!2801555 (=> (not res!1167473) (not e!1770312))))

(assert (=> b!2801555 (= res!1167473 (isBalanced!3076 (left!24594 (c!454126 (_2!19674 lt!1001476)))))))

(declare-fun b!2801557 () Bool)

(declare-fun res!1167475 () Bool)

(assert (=> b!2801557 (=> (not res!1167475) (not e!1770312))))

(assert (=> b!2801557 (= res!1167475 (<= (- (height!1498 (left!24594 (c!454126 (_2!19674 lt!1001476)))) (height!1498 (right!24924 (c!454126 (_2!19674 lt!1001476))))) 1))))

(declare-fun b!2801558 () Bool)

(assert (=> b!2801558 (= e!1770312 (not (isEmpty!18140 (right!24924 (c!454126 (_2!19674 lt!1001476))))))))

(declare-fun b!2801556 () Bool)

(declare-fun res!1167472 () Bool)

(assert (=> b!2801556 (=> (not res!1167472) (not e!1770312))))

(assert (=> b!2801556 (= res!1167472 (isBalanced!3076 (right!24924 (c!454126 (_2!19674 lt!1001476)))))))

(declare-fun d!813873 () Bool)

(declare-fun res!1167477 () Bool)

(assert (=> d!813873 (=> res!1167477 e!1770311)))

(assert (=> d!813873 (= res!1167477 (not ((_ is Node!10082) (c!454126 (_2!19674 lt!1001476)))))))

(assert (=> d!813873 (= (isBalanced!3076 (c!454126 (_2!19674 lt!1001476))) e!1770311)))

(assert (= (and d!813873 (not res!1167477)) b!2801553))

(assert (= (and b!2801553 res!1167474) b!2801557))

(assert (= (and b!2801557 res!1167475) b!2801555))

(assert (= (and b!2801555 res!1167473) b!2801556))

(assert (= (and b!2801556 res!1167472) b!2801554))

(assert (= (and b!2801554 res!1167476) b!2801558))

(declare-fun m!3231263 () Bool)

(assert (=> b!2801556 m!3231263))

(declare-fun m!3231265 () Bool)

(assert (=> b!2801554 m!3231265))

(declare-fun m!3231267 () Bool)

(assert (=> b!2801558 m!3231267))

(declare-fun m!3231269 () Bool)

(assert (=> b!2801553 m!3231269))

(declare-fun m!3231271 () Bool)

(assert (=> b!2801553 m!3231271))

(assert (=> b!2801557 m!3231269))

(assert (=> b!2801557 m!3231271))

(declare-fun m!3231273 () Bool)

(assert (=> b!2801555 m!3231273))

(assert (=> b!2801189 d!813873))

(declare-fun d!813875 () Bool)

(declare-fun res!1167482 () Bool)

(declare-fun e!1770317 () Bool)

(assert (=> d!813875 (=> res!1167482 e!1770317)))

(assert (=> d!813875 (= res!1167482 ((_ is Nil!32565) (exprs!2943 setElem!24523)))))

(assert (=> d!813875 (= (forall!6710 (exprs!2943 setElem!24523) lambda!102878) e!1770317)))

(declare-fun b!2801563 () Bool)

(declare-fun e!1770318 () Bool)

(assert (=> b!2801563 (= e!1770317 e!1770318)))

(declare-fun res!1167483 () Bool)

(assert (=> b!2801563 (=> (not res!1167483) (not e!1770318))))

(declare-fun dynLambda!13626 (Int Regex!8225) Bool)

(assert (=> b!2801563 (= res!1167483 (dynLambda!13626 lambda!102878 (h!37985 (exprs!2943 setElem!24523))))))

(declare-fun b!2801564 () Bool)

(assert (=> b!2801564 (= e!1770318 (forall!6710 (t!228830 (exprs!2943 setElem!24523)) lambda!102878))))

(assert (= (and d!813875 (not res!1167482)) b!2801563))

(assert (= (and b!2801563 res!1167483) b!2801564))

(declare-fun b_lambda!83751 () Bool)

(assert (=> (not b_lambda!83751) (not b!2801563)))

(declare-fun m!3231275 () Bool)

(assert (=> b!2801563 m!3231275))

(declare-fun m!3231277 () Bool)

(assert (=> b!2801564 m!3231277))

(assert (=> d!813619 d!813875))

(declare-fun d!813877 () Bool)

(declare-fun lt!1001537 () Int)

(assert (=> d!813877 (>= lt!1001537 0)))

(declare-fun e!1770319 () Int)

(assert (=> d!813877 (= lt!1001537 e!1770319)))

(declare-fun c!454235 () Bool)

(assert (=> d!813877 (= c!454235 ((_ is Nil!32566) lt!1001464))))

(assert (=> d!813877 (= (size!25423 lt!1001464) lt!1001537)))

(declare-fun b!2801565 () Bool)

(assert (=> b!2801565 (= e!1770319 0)))

(declare-fun b!2801566 () Bool)

(assert (=> b!2801566 (= e!1770319 (+ 1 (size!25423 (t!228831 lt!1001464))))))

(assert (= (and d!813877 c!454235) b!2801565))

(assert (= (and d!813877 (not c!454235)) b!2801566))

(declare-fun m!3231279 () Bool)

(assert (=> b!2801566 m!3231279))

(assert (=> b!2801171 d!813877))

(assert (=> b!2801171 d!813613))

(declare-fun d!813879 () Bool)

(declare-fun lt!1001538 () Int)

(assert (=> d!813879 (>= lt!1001538 0)))

(declare-fun e!1770320 () Int)

(assert (=> d!813879 (= lt!1001538 e!1770320)))

(declare-fun c!454236 () Bool)

(assert (=> d!813879 (= c!454236 ((_ is Nil!32566) (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))

(assert (=> d!813879 (= (size!25423 (Cons!32566 (head!6207 lt!1001372) Nil!32566)) lt!1001538)))

(declare-fun b!2801567 () Bool)

(assert (=> b!2801567 (= e!1770320 0)))

(declare-fun b!2801568 () Bool)

(assert (=> b!2801568 (= e!1770320 (+ 1 (size!25423 (t!228831 (Cons!32566 (head!6207 lt!1001372) Nil!32566)))))))

(assert (= (and d!813879 c!454236) b!2801567))

(assert (= (and d!813879 (not c!454236)) b!2801568))

(declare-fun m!3231281 () Bool)

(assert (=> b!2801568 m!3231281))

(assert (=> b!2801171 d!813879))

(declare-fun bs!515744 () Bool)

(declare-fun d!813881 () Bool)

(assert (= bs!515744 (and d!813881 d!813789)))

(declare-fun lambda!102935 () Int)

(assert (=> bs!515744 (= lambda!102935 lambda!102923)))

(declare-fun bs!515745 () Bool)

(assert (= bs!515745 (and d!813881 d!813799)))

(assert (=> bs!515745 (= lambda!102935 lambda!102926)))

(declare-fun bs!515746 () Bool)

(assert (= bs!515746 (and d!813881 d!813749)))

(assert (=> bs!515746 (= lambda!102935 lambda!102908)))

(declare-fun bs!515747 () Bool)

(assert (= bs!515747 (and d!813881 d!813619)))

(assert (=> bs!515747 (= lambda!102935 lambda!102878)))

(declare-fun bs!515748 () Bool)

(assert (= bs!515748 (and d!813881 d!813853)))

(assert (=> bs!515748 (= lambda!102935 lambda!102931)))

(declare-fun bs!515749 () Bool)

(assert (= bs!515749 (and d!813881 d!813801)))

(assert (=> bs!515749 (= lambda!102935 lambda!102927)))

(declare-fun bs!515750 () Bool)

(assert (= bs!515750 (and d!813881 d!813755)))

(assert (=> bs!515750 (= lambda!102935 lambda!102909)))

(declare-fun bs!515751 () Bool)

(assert (= bs!515751 (and d!813881 d!813793)))

(assert (=> bs!515751 (= lambda!102935 lambda!102925)))

(declare-fun bs!515752 () Bool)

(assert (= bs!515752 (and d!813881 d!813743)))

(assert (=> bs!515752 (= lambda!102935 lambda!102907)))

(declare-fun bs!515753 () Bool)

(assert (= bs!515753 (and d!813881 d!813727)))

(assert (=> bs!515753 (= lambda!102935 lambda!102903)))

(declare-fun bs!515754 () Bool)

(assert (= bs!515754 (and d!813881 d!813849)))

(assert (=> bs!515754 (= lambda!102935 lambda!102929)))

(declare-fun bs!515755 () Bool)

(assert (= bs!515755 (and d!813881 d!813791)))

(assert (=> bs!515755 (= lambda!102935 lambda!102924)))

(declare-fun bs!515756 () Bool)

(assert (= bs!515756 (and d!813881 d!813851)))

(assert (=> bs!515756 (= lambda!102935 lambda!102930)))

(declare-fun bs!515757 () Bool)

(assert (= bs!515757 (and d!813881 d!813819)))

(assert (=> bs!515757 (= lambda!102935 lambda!102928)))

(assert (=> d!813881 (= (inv!44232 setElem!24527) (forall!6710 (exprs!2943 setElem!24527) lambda!102935))))

(declare-fun bs!515758 () Bool)

(assert (= bs!515758 d!813881))

(declare-fun m!3231283 () Bool)

(assert (=> bs!515758 m!3231283))

(assert (=> setNonEmpty!24527 d!813881))

(declare-fun d!813883 () Bool)

(declare-fun lt!1001539 () Int)

(assert (=> d!813883 (>= lt!1001539 0)))

(declare-fun e!1770321 () Int)

(assert (=> d!813883 (= lt!1001539 e!1770321)))

(declare-fun c!454237 () Bool)

(assert (=> d!813883 (= c!454237 ((_ is Nil!32566) lt!1001364))))

(assert (=> d!813883 (= (size!25423 lt!1001364) lt!1001539)))

(declare-fun b!2801569 () Bool)

(assert (=> b!2801569 (= e!1770321 0)))

(declare-fun b!2801570 () Bool)

(assert (=> b!2801570 (= e!1770321 (+ 1 (size!25423 (t!228831 lt!1001364))))))

(assert (= (and d!813883 c!454237) b!2801569))

(assert (= (and d!813883 (not c!454237)) b!2801570))

(declare-fun m!3231285 () Bool)

(assert (=> b!2801570 m!3231285))

(assert (=> b!2801180 d!813883))

(assert (=> b!2801180 d!813613))

(declare-fun bs!515759 () Bool)

(declare-fun d!813885 () Bool)

(assert (= bs!515759 (and d!813885 d!813789)))

(declare-fun lambda!102936 () Int)

(assert (=> bs!515759 (= lambda!102936 lambda!102923)))

(declare-fun bs!515760 () Bool)

(assert (= bs!515760 (and d!813885 d!813799)))

(assert (=> bs!515760 (= lambda!102936 lambda!102926)))

(declare-fun bs!515761 () Bool)

(assert (= bs!515761 (and d!813885 d!813749)))

(assert (=> bs!515761 (= lambda!102936 lambda!102908)))

(declare-fun bs!515762 () Bool)

(assert (= bs!515762 (and d!813885 d!813619)))

(assert (=> bs!515762 (= lambda!102936 lambda!102878)))

(declare-fun bs!515763 () Bool)

(assert (= bs!515763 (and d!813885 d!813853)))

(assert (=> bs!515763 (= lambda!102936 lambda!102931)))

(declare-fun bs!515764 () Bool)

(assert (= bs!515764 (and d!813885 d!813801)))

(assert (=> bs!515764 (= lambda!102936 lambda!102927)))

(declare-fun bs!515765 () Bool)

(assert (= bs!515765 (and d!813885 d!813755)))

(assert (=> bs!515765 (= lambda!102936 lambda!102909)))

(declare-fun bs!515766 () Bool)

(assert (= bs!515766 (and d!813885 d!813793)))

(assert (=> bs!515766 (= lambda!102936 lambda!102925)))

(declare-fun bs!515767 () Bool)

(assert (= bs!515767 (and d!813885 d!813743)))

(assert (=> bs!515767 (= lambda!102936 lambda!102907)))

(declare-fun bs!515768 () Bool)

(assert (= bs!515768 (and d!813885 d!813727)))

(assert (=> bs!515768 (= lambda!102936 lambda!102903)))

(declare-fun bs!515769 () Bool)

(assert (= bs!515769 (and d!813885 d!813849)))

(assert (=> bs!515769 (= lambda!102936 lambda!102929)))

(declare-fun bs!515770 () Bool)

(assert (= bs!515770 (and d!813885 d!813791)))

(assert (=> bs!515770 (= lambda!102936 lambda!102924)))

(declare-fun bs!515771 () Bool)

(assert (= bs!515771 (and d!813885 d!813851)))

(assert (=> bs!515771 (= lambda!102936 lambda!102930)))

(declare-fun bs!515772 () Bool)

(assert (= bs!515772 (and d!813885 d!813881)))

(assert (=> bs!515772 (= lambda!102936 lambda!102935)))

(declare-fun bs!515773 () Bool)

(assert (= bs!515773 (and d!813885 d!813819)))

(assert (=> bs!515773 (= lambda!102936 lambda!102928)))

(assert (=> d!813885 (= (inv!44232 setElem!24530) (forall!6710 (exprs!2943 setElem!24530) lambda!102936))))

(declare-fun bs!515774 () Bool)

(assert (= bs!515774 d!813885))

(declare-fun m!3231287 () Bool)

(assert (=> bs!515774 m!3231287))

(assert (=> setNonEmpty!24530 d!813885))

(declare-fun b!2801571 () Bool)

(declare-fun e!1770322 () Bool)

(declare-fun e!1770324 () Bool)

(assert (=> b!2801571 (= e!1770322 e!1770324)))

(declare-fun res!1167486 () Bool)

(assert (=> b!2801571 (=> (not res!1167486) (not e!1770324))))

(assert (=> b!2801571 (= res!1167486 (not ((_ is Nil!32566) (tail!4434 lt!1001381))))))

(declare-fun d!813887 () Bool)

(declare-fun e!1770323 () Bool)

(assert (=> d!813887 e!1770323))

(declare-fun res!1167485 () Bool)

(assert (=> d!813887 (=> res!1167485 e!1770323)))

(declare-fun lt!1001540 () Bool)

(assert (=> d!813887 (= res!1167485 (not lt!1001540))))

(assert (=> d!813887 (= lt!1001540 e!1770322)))

(declare-fun res!1167484 () Bool)

(assert (=> d!813887 (=> res!1167484 e!1770322)))

(assert (=> d!813887 (= res!1167484 ((_ is Nil!32566) (tail!4434 testedP!183)))))

(assert (=> d!813887 (= (isPrefix!2640 (tail!4434 testedP!183) (tail!4434 lt!1001381)) lt!1001540)))

(declare-fun b!2801572 () Bool)

(declare-fun res!1167487 () Bool)

(assert (=> b!2801572 (=> (not res!1167487) (not e!1770324))))

(assert (=> b!2801572 (= res!1167487 (= (head!6207 (tail!4434 testedP!183)) (head!6207 (tail!4434 lt!1001381))))))

(declare-fun b!2801574 () Bool)

(assert (=> b!2801574 (= e!1770323 (>= (size!25423 (tail!4434 lt!1001381)) (size!25423 (tail!4434 testedP!183))))))

(declare-fun b!2801573 () Bool)

(assert (=> b!2801573 (= e!1770324 (isPrefix!2640 (tail!4434 (tail!4434 testedP!183)) (tail!4434 (tail!4434 lt!1001381))))))

(assert (= (and d!813887 (not res!1167484)) b!2801571))

(assert (= (and b!2801571 res!1167486) b!2801572))

(assert (= (and b!2801572 res!1167487) b!2801573))

(assert (= (and d!813887 (not res!1167485)) b!2801574))

(assert (=> b!2801572 m!3230829))

(assert (=> b!2801572 m!3231165))

(assert (=> b!2801572 m!3230675))

(assert (=> b!2801572 m!3231076))

(assert (=> b!2801574 m!3230675))

(assert (=> b!2801574 m!3231038))

(assert (=> b!2801574 m!3230829))

(assert (=> b!2801574 m!3231171))

(assert (=> b!2801573 m!3230829))

(assert (=> b!2801573 m!3231173))

(assert (=> b!2801573 m!3230675))

(assert (=> b!2801573 m!3231040))

(assert (=> b!2801573 m!3231173))

(assert (=> b!2801573 m!3231040))

(declare-fun m!3231289 () Bool)

(assert (=> b!2801573 m!3231289))

(assert (=> b!2801175 d!813887))

(assert (=> b!2801175 d!813811))

(assert (=> b!2801175 d!813735))

(declare-fun d!813889 () Bool)

(assert (=> d!813889 (= (valid!3162 (_3!3072 lt!1001400)) (validCacheMapDown!431 (cache!4090 (_3!3072 lt!1001400))))))

(declare-fun bs!515775 () Bool)

(assert (= bs!515775 d!813889))

(declare-fun m!3231291 () Bool)

(assert (=> bs!515775 m!3231291))

(assert (=> b!2801071 d!813889))

(declare-fun b!2801577 () Bool)

(declare-fun e!1770326 () List!32666)

(assert (=> b!2801577 (= e!1770326 (list!12222 (xs!13194 (c!454126 (_1!19674 lt!1001379)))))))

(declare-fun b!2801575 () Bool)

(declare-fun e!1770325 () List!32666)

(assert (=> b!2801575 (= e!1770325 Nil!32566)))

(declare-fun b!2801578 () Bool)

(assert (=> b!2801578 (= e!1770326 (++!8028 (list!12221 (left!24594 (c!454126 (_1!19674 lt!1001379)))) (list!12221 (right!24924 (c!454126 (_1!19674 lt!1001379))))))))

(declare-fun d!813891 () Bool)

(declare-fun c!454238 () Bool)

(assert (=> d!813891 (= c!454238 ((_ is Empty!10082) (c!454126 (_1!19674 lt!1001379))))))

(assert (=> d!813891 (= (list!12221 (c!454126 (_1!19674 lt!1001379))) e!1770325)))

(declare-fun b!2801576 () Bool)

(assert (=> b!2801576 (= e!1770325 e!1770326)))

(declare-fun c!454239 () Bool)

(assert (=> b!2801576 (= c!454239 ((_ is Leaf!15363) (c!454126 (_1!19674 lt!1001379))))))

(assert (= (and d!813891 c!454238) b!2801575))

(assert (= (and d!813891 (not c!454238)) b!2801576))

(assert (= (and b!2801576 c!454239) b!2801577))

(assert (= (and b!2801576 (not c!454239)) b!2801578))

(declare-fun m!3231293 () Bool)

(assert (=> b!2801577 m!3231293))

(declare-fun m!3231295 () Bool)

(assert (=> b!2801578 m!3231295))

(declare-fun m!3231297 () Bool)

(assert (=> b!2801578 m!3231297))

(assert (=> b!2801578 m!3231295))

(assert (=> b!2801578 m!3231297))

(declare-fun m!3231299 () Bool)

(assert (=> b!2801578 m!3231299))

(assert (=> d!813693 d!813891))

(assert (=> bm!182856 d!813635))

(declare-fun bs!515776 () Bool)

(declare-fun d!813893 () Bool)

(assert (= bs!515776 (and d!813893 d!813789)))

(declare-fun lambda!102937 () Int)

(assert (=> bs!515776 (= lambda!102937 lambda!102923)))

(declare-fun bs!515777 () Bool)

(assert (= bs!515777 (and d!813893 d!813799)))

(assert (=> bs!515777 (= lambda!102937 lambda!102926)))

(declare-fun bs!515778 () Bool)

(assert (= bs!515778 (and d!813893 d!813749)))

(assert (=> bs!515778 (= lambda!102937 lambda!102908)))

(declare-fun bs!515779 () Bool)

(assert (= bs!515779 (and d!813893 d!813619)))

(assert (=> bs!515779 (= lambda!102937 lambda!102878)))

(declare-fun bs!515780 () Bool)

(assert (= bs!515780 (and d!813893 d!813853)))

(assert (=> bs!515780 (= lambda!102937 lambda!102931)))

(declare-fun bs!515781 () Bool)

(assert (= bs!515781 (and d!813893 d!813801)))

(assert (=> bs!515781 (= lambda!102937 lambda!102927)))

(declare-fun bs!515782 () Bool)

(assert (= bs!515782 (and d!813893 d!813755)))

(assert (=> bs!515782 (= lambda!102937 lambda!102909)))

(declare-fun bs!515783 () Bool)

(assert (= bs!515783 (and d!813893 d!813885)))

(assert (=> bs!515783 (= lambda!102937 lambda!102936)))

(declare-fun bs!515784 () Bool)

(assert (= bs!515784 (and d!813893 d!813793)))

(assert (=> bs!515784 (= lambda!102937 lambda!102925)))

(declare-fun bs!515785 () Bool)

(assert (= bs!515785 (and d!813893 d!813743)))

(assert (=> bs!515785 (= lambda!102937 lambda!102907)))

(declare-fun bs!515786 () Bool)

(assert (= bs!515786 (and d!813893 d!813727)))

(assert (=> bs!515786 (= lambda!102937 lambda!102903)))

(declare-fun bs!515787 () Bool)

(assert (= bs!515787 (and d!813893 d!813849)))

(assert (=> bs!515787 (= lambda!102937 lambda!102929)))

(declare-fun bs!515788 () Bool)

(assert (= bs!515788 (and d!813893 d!813791)))

(assert (=> bs!515788 (= lambda!102937 lambda!102924)))

(declare-fun bs!515789 () Bool)

(assert (= bs!515789 (and d!813893 d!813851)))

(assert (=> bs!515789 (= lambda!102937 lambda!102930)))

(declare-fun bs!515790 () Bool)

(assert (= bs!515790 (and d!813893 d!813881)))

(assert (=> bs!515790 (= lambda!102937 lambda!102935)))

(declare-fun bs!515791 () Bool)

(assert (= bs!515791 (and d!813893 d!813819)))

(assert (=> bs!515791 (= lambda!102937 lambda!102928)))

(assert (=> d!813893 (= (inv!44232 setElem!24549) (forall!6710 (exprs!2943 setElem!24549) lambda!102937))))

(declare-fun bs!515792 () Bool)

(assert (= bs!515792 d!813893))

(declare-fun m!3231301 () Bool)

(assert (=> bs!515792 m!3231301))

(assert (=> setNonEmpty!24549 d!813893))

(declare-fun bs!515793 () Bool)

(declare-fun d!813895 () Bool)

(assert (= bs!515793 (and d!813895 d!813789)))

(declare-fun lambda!102938 () Int)

(assert (=> bs!515793 (= lambda!102938 lambda!102923)))

(declare-fun bs!515794 () Bool)

(assert (= bs!515794 (and d!813895 d!813799)))

(assert (=> bs!515794 (= lambda!102938 lambda!102926)))

(declare-fun bs!515795 () Bool)

(assert (= bs!515795 (and d!813895 d!813749)))

(assert (=> bs!515795 (= lambda!102938 lambda!102908)))

(declare-fun bs!515796 () Bool)

(assert (= bs!515796 (and d!813895 d!813619)))

(assert (=> bs!515796 (= lambda!102938 lambda!102878)))

(declare-fun bs!515797 () Bool)

(assert (= bs!515797 (and d!813895 d!813853)))

(assert (=> bs!515797 (= lambda!102938 lambda!102931)))

(declare-fun bs!515798 () Bool)

(assert (= bs!515798 (and d!813895 d!813801)))

(assert (=> bs!515798 (= lambda!102938 lambda!102927)))

(declare-fun bs!515799 () Bool)

(assert (= bs!515799 (and d!813895 d!813755)))

(assert (=> bs!515799 (= lambda!102938 lambda!102909)))

(declare-fun bs!515800 () Bool)

(assert (= bs!515800 (and d!813895 d!813885)))

(assert (=> bs!515800 (= lambda!102938 lambda!102936)))

(declare-fun bs!515801 () Bool)

(assert (= bs!515801 (and d!813895 d!813743)))

(assert (=> bs!515801 (= lambda!102938 lambda!102907)))

(declare-fun bs!515802 () Bool)

(assert (= bs!515802 (and d!813895 d!813727)))

(assert (=> bs!515802 (= lambda!102938 lambda!102903)))

(declare-fun bs!515803 () Bool)

(assert (= bs!515803 (and d!813895 d!813849)))

(assert (=> bs!515803 (= lambda!102938 lambda!102929)))

(declare-fun bs!515804 () Bool)

(assert (= bs!515804 (and d!813895 d!813791)))

(assert (=> bs!515804 (= lambda!102938 lambda!102924)))

(declare-fun bs!515805 () Bool)

(assert (= bs!515805 (and d!813895 d!813851)))

(assert (=> bs!515805 (= lambda!102938 lambda!102930)))

(declare-fun bs!515806 () Bool)

(assert (= bs!515806 (and d!813895 d!813881)))

(assert (=> bs!515806 (= lambda!102938 lambda!102935)))

(declare-fun bs!515807 () Bool)

(assert (= bs!515807 (and d!813895 d!813819)))

(assert (=> bs!515807 (= lambda!102938 lambda!102928)))

(declare-fun bs!515808 () Bool)

(assert (= bs!515808 (and d!813895 d!813893)))

(assert (=> bs!515808 (= lambda!102938 lambda!102937)))

(declare-fun bs!515809 () Bool)

(assert (= bs!515809 (and d!813895 d!813793)))

(assert (=> bs!515809 (= lambda!102938 lambda!102925)))

(assert (=> d!813895 (= (inv!44232 (_2!19671 (_1!19672 (h!37988 mapValue!18366)))) (forall!6710 (exprs!2943 (_2!19671 (_1!19672 (h!37988 mapValue!18366)))) lambda!102938))))

(declare-fun bs!515810 () Bool)

(assert (= bs!515810 d!813895))

(declare-fun m!3231303 () Bool)

(assert (=> bs!515810 m!3231303))

(assert (=> b!2801272 d!813895))

(declare-fun d!813897 () Bool)

(declare-fun c!454240 () Bool)

(assert (=> d!813897 (= c!454240 ((_ is Nil!32566) lt!1001404))))

(declare-fun e!1770327 () (InoxSet C!16608))

(assert (=> d!813897 (= (content!4545 lt!1001404) e!1770327)))

(declare-fun b!2801579 () Bool)

(assert (=> b!2801579 (= e!1770327 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801580 () Bool)

(assert (=> b!2801580 (= e!1770327 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001404) true) (content!4545 (t!228831 lt!1001404))))))

(assert (= (and d!813897 c!454240) b!2801579))

(assert (= (and d!813897 (not c!454240)) b!2801580))

(declare-fun m!3231305 () Bool)

(assert (=> b!2801580 m!3231305))

(declare-fun m!3231307 () Bool)

(assert (=> b!2801580 m!3231307))

(assert (=> d!813633 d!813897))

(assert (=> d!813633 d!813823))

(declare-fun d!813899 () Bool)

(declare-fun c!454241 () Bool)

(assert (=> d!813899 (= c!454241 ((_ is Nil!32566) testedSuffix!143))))

(declare-fun e!1770328 () (InoxSet C!16608))

(assert (=> d!813899 (= (content!4545 testedSuffix!143) e!1770328)))

(declare-fun b!2801581 () Bool)

(assert (=> b!2801581 (= e!1770328 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801582 () Bool)

(assert (=> b!2801582 (= e!1770328 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 testedSuffix!143) true) (content!4545 (t!228831 testedSuffix!143))))))

(assert (= (and d!813899 c!454241) b!2801581))

(assert (= (and d!813899 (not c!454241)) b!2801582))

(declare-fun m!3231309 () Bool)

(assert (=> b!2801582 m!3231309))

(declare-fun m!3231311 () Bool)

(assert (=> b!2801582 m!3231311))

(assert (=> d!813633 d!813899))

(assert (=> b!2801059 d!813635))

(declare-fun d!813901 () Bool)

(declare-fun lt!1001541 () Int)

(assert (=> d!813901 (>= lt!1001541 0)))

(declare-fun e!1770329 () Int)

(assert (=> d!813901 (= lt!1001541 e!1770329)))

(declare-fun c!454242 () Bool)

(assert (=> d!813901 (= c!454242 ((_ is Nil!32566) (list!12220 totalInput!758)))))

(assert (=> d!813901 (= (size!25423 (list!12220 totalInput!758)) lt!1001541)))

(declare-fun b!2801583 () Bool)

(assert (=> b!2801583 (= e!1770329 0)))

(declare-fun b!2801584 () Bool)

(assert (=> b!2801584 (= e!1770329 (+ 1 (size!25423 (t!228831 (list!12220 totalInput!758)))))))

(assert (= (and d!813901 c!454242) b!2801583))

(assert (= (and d!813901 (not c!454242)) b!2801584))

(declare-fun m!3231313 () Bool)

(assert (=> b!2801584 m!3231313))

(assert (=> d!813607 d!813901))

(assert (=> d!813607 d!813631))

(declare-fun d!813903 () Bool)

(declare-fun lt!1001542 () Int)

(assert (=> d!813903 (= lt!1001542 (size!25423 (list!12221 (c!454126 totalInput!758))))))

(assert (=> d!813903 (= lt!1001542 (ite ((_ is Empty!10082) (c!454126 totalInput!758)) 0 (ite ((_ is Leaf!15363) (c!454126 totalInput!758)) (csize!20395 (c!454126 totalInput!758)) (csize!20394 (c!454126 totalInput!758)))))))

(assert (=> d!813903 (= (size!25428 (c!454126 totalInput!758)) lt!1001542)))

(declare-fun bs!515811 () Bool)

(assert (= bs!515811 d!813903))

(assert (=> bs!515811 m!3230705))

(assert (=> bs!515811 m!3230705))

(declare-fun m!3231315 () Bool)

(assert (=> bs!515811 m!3231315))

(assert (=> d!813607 d!813903))

(declare-fun bs!515812 () Bool)

(declare-fun d!813905 () Bool)

(assert (= bs!515812 (and d!813905 d!813789)))

(declare-fun lambda!102939 () Int)

(assert (=> bs!515812 (= lambda!102939 lambda!102923)))

(declare-fun bs!515813 () Bool)

(assert (= bs!515813 (and d!813905 d!813799)))

(assert (=> bs!515813 (= lambda!102939 lambda!102926)))

(declare-fun bs!515814 () Bool)

(assert (= bs!515814 (and d!813905 d!813749)))

(assert (=> bs!515814 (= lambda!102939 lambda!102908)))

(declare-fun bs!515815 () Bool)

(assert (= bs!515815 (and d!813905 d!813619)))

(assert (=> bs!515815 (= lambda!102939 lambda!102878)))

(declare-fun bs!515816 () Bool)

(assert (= bs!515816 (and d!813905 d!813853)))

(assert (=> bs!515816 (= lambda!102939 lambda!102931)))

(declare-fun bs!515817 () Bool)

(assert (= bs!515817 (and d!813905 d!813801)))

(assert (=> bs!515817 (= lambda!102939 lambda!102927)))

(declare-fun bs!515818 () Bool)

(assert (= bs!515818 (and d!813905 d!813755)))

(assert (=> bs!515818 (= lambda!102939 lambda!102909)))

(declare-fun bs!515819 () Bool)

(assert (= bs!515819 (and d!813905 d!813885)))

(assert (=> bs!515819 (= lambda!102939 lambda!102936)))

(declare-fun bs!515820 () Bool)

(assert (= bs!515820 (and d!813905 d!813743)))

(assert (=> bs!515820 (= lambda!102939 lambda!102907)))

(declare-fun bs!515821 () Bool)

(assert (= bs!515821 (and d!813905 d!813727)))

(assert (=> bs!515821 (= lambda!102939 lambda!102903)))

(declare-fun bs!515822 () Bool)

(assert (= bs!515822 (and d!813905 d!813849)))

(assert (=> bs!515822 (= lambda!102939 lambda!102929)))

(declare-fun bs!515823 () Bool)

(assert (= bs!515823 (and d!813905 d!813791)))

(assert (=> bs!515823 (= lambda!102939 lambda!102924)))

(declare-fun bs!515824 () Bool)

(assert (= bs!515824 (and d!813905 d!813851)))

(assert (=> bs!515824 (= lambda!102939 lambda!102930)))

(declare-fun bs!515825 () Bool)

(assert (= bs!515825 (and d!813905 d!813895)))

(assert (=> bs!515825 (= lambda!102939 lambda!102938)))

(declare-fun bs!515826 () Bool)

(assert (= bs!515826 (and d!813905 d!813881)))

(assert (=> bs!515826 (= lambda!102939 lambda!102935)))

(declare-fun bs!515827 () Bool)

(assert (= bs!515827 (and d!813905 d!813819)))

(assert (=> bs!515827 (= lambda!102939 lambda!102928)))

(declare-fun bs!515828 () Bool)

(assert (= bs!515828 (and d!813905 d!813893)))

(assert (=> bs!515828 (= lambda!102939 lambda!102937)))

(declare-fun bs!515829 () Bool)

(assert (= bs!515829 (and d!813905 d!813793)))

(assert (=> bs!515829 (= lambda!102939 lambda!102925)))

(assert (=> d!813905 (= (inv!44232 setElem!24550) (forall!6710 (exprs!2943 setElem!24550) lambda!102939))))

(declare-fun bs!515830 () Bool)

(assert (= bs!515830 d!813905))

(declare-fun m!3231317 () Bool)

(assert (=> bs!515830 m!3231317))

(assert (=> setNonEmpty!24550 d!813905))

(declare-fun b!2801585 () Bool)

(declare-fun e!1770330 () List!32666)

(assert (=> b!2801585 (= e!1770330 lt!1001366)))

(declare-fun b!2801588 () Bool)

(declare-fun e!1770331 () Bool)

(declare-fun lt!1001543 () List!32666)

(assert (=> b!2801588 (= e!1770331 (or (not (= lt!1001366 Nil!32566)) (= lt!1001543 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566)))))))

(declare-fun b!2801587 () Bool)

(declare-fun res!1167489 () Bool)

(assert (=> b!2801587 (=> (not res!1167489) (not e!1770331))))

(assert (=> b!2801587 (= res!1167489 (= (size!25423 lt!1001543) (+ (size!25423 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566))) (size!25423 lt!1001366))))))

(declare-fun b!2801586 () Bool)

(assert (=> b!2801586 (= e!1770330 (Cons!32566 (h!37986 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566))) (++!8028 (t!228831 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566))) lt!1001366)))))

(declare-fun d!813907 () Bool)

(assert (=> d!813907 e!1770331))

(declare-fun res!1167488 () Bool)

(assert (=> d!813907 (=> (not res!1167488) (not e!1770331))))

(assert (=> d!813907 (= res!1167488 (= (content!4545 lt!1001543) ((_ map or) (content!4545 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566))) (content!4545 lt!1001366))))))

(assert (=> d!813907 (= lt!1001543 e!1770330)))

(declare-fun c!454243 () Bool)

(assert (=> d!813907 (= c!454243 ((_ is Nil!32566) (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566))))))

(assert (=> d!813907 (= (++!8028 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566)) lt!1001366) lt!1001543)))

(assert (= (and d!813907 c!454243) b!2801585))

(assert (= (and d!813907 (not c!454243)) b!2801586))

(assert (= (and d!813907 res!1167488) b!2801587))

(assert (= (and b!2801587 res!1167489) b!2801588))

(declare-fun m!3231319 () Bool)

(assert (=> b!2801587 m!3231319))

(assert (=> b!2801587 m!3230587))

(declare-fun m!3231321 () Bool)

(assert (=> b!2801587 m!3231321))

(assert (=> b!2801587 m!3230805))

(declare-fun m!3231323 () Bool)

(assert (=> b!2801586 m!3231323))

(declare-fun m!3231325 () Bool)

(assert (=> d!813907 m!3231325))

(assert (=> d!813907 m!3230587))

(declare-fun m!3231327 () Bool)

(assert (=> d!813907 m!3231327))

(assert (=> d!813907 m!3230813))

(assert (=> d!813667 d!813907))

(assert (=> d!813667 d!813673))

(declare-fun d!813909 () Bool)

(assert (=> d!813909 (= (++!8028 (++!8028 testedP!183 (Cons!32566 lt!1001359 Nil!32566)) lt!1001366) lt!1001381)))

(assert (=> d!813909 true))

(declare-fun _$68!679 () Unit!46678)

(assert (=> d!813909 (= (choose!16506 testedP!183 lt!1001359 lt!1001366 lt!1001381) _$68!679)))

(declare-fun bs!515831 () Bool)

(assert (= bs!515831 d!813909))

(assert (=> bs!515831 m!3230587))

(assert (=> bs!515831 m!3230587))

(assert (=> bs!515831 m!3230779))

(assert (=> d!813667 d!813909))

(declare-fun b!2801589 () Bool)

(declare-fun e!1770332 () List!32666)

(assert (=> b!2801589 (= e!1770332 (Cons!32566 lt!1001359 lt!1001366))))

(declare-fun b!2801592 () Bool)

(declare-fun e!1770333 () Bool)

(declare-fun lt!1001544 () List!32666)

(assert (=> b!2801592 (= e!1770333 (or (not (= (Cons!32566 lt!1001359 lt!1001366) Nil!32566)) (= lt!1001544 testedP!183)))))

(declare-fun b!2801591 () Bool)

(declare-fun res!1167491 () Bool)

(assert (=> b!2801591 (=> (not res!1167491) (not e!1770333))))

(assert (=> b!2801591 (= res!1167491 (= (size!25423 lt!1001544) (+ (size!25423 testedP!183) (size!25423 (Cons!32566 lt!1001359 lt!1001366)))))))

(declare-fun b!2801590 () Bool)

(assert (=> b!2801590 (= e!1770332 (Cons!32566 (h!37986 testedP!183) (++!8028 (t!228831 testedP!183) (Cons!32566 lt!1001359 lt!1001366))))))

(declare-fun d!813911 () Bool)

(assert (=> d!813911 e!1770333))

(declare-fun res!1167490 () Bool)

(assert (=> d!813911 (=> (not res!1167490) (not e!1770333))))

(assert (=> d!813911 (= res!1167490 (= (content!4545 lt!1001544) ((_ map or) (content!4545 testedP!183) (content!4545 (Cons!32566 lt!1001359 lt!1001366)))))))

(assert (=> d!813911 (= lt!1001544 e!1770332)))

(declare-fun c!454244 () Bool)

(assert (=> d!813911 (= c!454244 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813911 (= (++!8028 testedP!183 (Cons!32566 lt!1001359 lt!1001366)) lt!1001544)))

(assert (= (and d!813911 c!454244) b!2801589))

(assert (= (and d!813911 (not c!454244)) b!2801590))

(assert (= (and d!813911 res!1167490) b!2801591))

(assert (= (and b!2801591 res!1167491) b!2801592))

(declare-fun m!3231329 () Bool)

(assert (=> b!2801591 m!3231329))

(assert (=> b!2801591 m!3230579))

(declare-fun m!3231331 () Bool)

(assert (=> b!2801591 m!3231331))

(declare-fun m!3231333 () Bool)

(assert (=> b!2801590 m!3231333))

(declare-fun m!3231335 () Bool)

(assert (=> d!813911 m!3231335))

(assert (=> d!813911 m!3230715))

(declare-fun m!3231337 () Bool)

(assert (=> d!813911 m!3231337))

(assert (=> d!813667 d!813911))

(declare-fun d!813913 () Bool)

(declare-fun c!454245 () Bool)

(assert (=> d!813913 (= c!454245 ((_ is Nil!32566) lt!1001463))))

(declare-fun e!1770334 () (InoxSet C!16608))

(assert (=> d!813913 (= (content!4545 lt!1001463) e!1770334)))

(declare-fun b!2801593 () Bool)

(assert (=> b!2801593 (= e!1770334 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801594 () Bool)

(assert (=> b!2801594 (= e!1770334 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001463) true) (content!4545 (t!228831 lt!1001463))))))

(assert (= (and d!813913 c!454245) b!2801593))

(assert (= (and d!813913 (not c!454245)) b!2801594))

(declare-fun m!3231339 () Bool)

(assert (=> b!2801594 m!3231339))

(declare-fun m!3231341 () Bool)

(assert (=> b!2801594 m!3231341))

(assert (=> d!813675 d!813913))

(declare-fun d!813915 () Bool)

(declare-fun c!454246 () Bool)

(assert (=> d!813915 (= c!454246 ((_ is Nil!32566) lt!1001367))))

(declare-fun e!1770335 () (InoxSet C!16608))

(assert (=> d!813915 (= (content!4545 lt!1001367) e!1770335)))

(declare-fun b!2801595 () Bool)

(assert (=> b!2801595 (= e!1770335 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801596 () Bool)

(assert (=> b!2801596 (= e!1770335 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001367) true) (content!4545 (t!228831 lt!1001367))))))

(assert (= (and d!813915 c!454246) b!2801595))

(assert (= (and d!813915 (not c!454246)) b!2801596))

(declare-fun m!3231343 () Bool)

(assert (=> b!2801596 m!3231343))

(assert (=> b!2801596 m!3231261))

(assert (=> d!813675 d!813915))

(declare-fun d!813917 () Bool)

(declare-fun c!454247 () Bool)

(assert (=> d!813917 (= c!454247 ((_ is Nil!32566) lt!1001366))))

(declare-fun e!1770336 () (InoxSet C!16608))

(assert (=> d!813917 (= (content!4545 lt!1001366) e!1770336)))

(declare-fun b!2801597 () Bool)

(assert (=> b!2801597 (= e!1770336 ((as const (Array C!16608 Bool)) false))))

(declare-fun b!2801598 () Bool)

(assert (=> b!2801598 (= e!1770336 ((_ map or) (store ((as const (Array C!16608 Bool)) false) (h!37986 lt!1001366) true) (content!4545 (t!228831 lt!1001366))))))

(assert (= (and d!813917 c!454247) b!2801597))

(assert (= (and d!813917 (not c!454247)) b!2801598))

(declare-fun m!3231345 () Bool)

(assert (=> b!2801598 m!3231345))

(declare-fun m!3231347 () Bool)

(assert (=> b!2801598 m!3231347))

(assert (=> d!813675 d!813917))

(declare-fun bm!182860 () Bool)

(declare-fun call!182865 () Int)

(assert (=> bm!182860 (= call!182865 (size!25423 (t!228831 lt!1001381)))))

(declare-fun b!2801599 () Bool)

(declare-fun e!1770339 () List!32666)

(declare-fun e!1770341 () List!32666)

(assert (=> b!2801599 (= e!1770339 e!1770341)))

(declare-fun c!454251 () Bool)

(assert (=> b!2801599 (= c!454251 (<= (- testedPSize!143 1) 0))))

(declare-fun b!2801601 () Bool)

(declare-fun e!1770337 () Int)

(assert (=> b!2801601 (= e!1770337 call!182865)))

(declare-fun b!2801602 () Bool)

(assert (=> b!2801602 (= e!1770339 Nil!32566)))

(declare-fun b!2801603 () Bool)

(declare-fun e!1770340 () Int)

(assert (=> b!2801603 (= e!1770340 0)))

(declare-fun b!2801604 () Bool)

(declare-fun e!1770338 () Bool)

(declare-fun lt!1001545 () List!32666)

(assert (=> b!2801604 (= e!1770338 (= (size!25423 lt!1001545) e!1770337))))

(declare-fun c!454249 () Bool)

(assert (=> b!2801604 (= c!454249 (<= (- testedPSize!143 1) 0))))

(declare-fun b!2801605 () Bool)

(assert (=> b!2801605 (= e!1770341 (t!228831 lt!1001381))))

(declare-fun b!2801606 () Bool)

(assert (=> b!2801606 (= e!1770340 (- call!182865 (- testedPSize!143 1)))))

(declare-fun b!2801607 () Bool)

(assert (=> b!2801607 (= e!1770341 (drop!1754 (t!228831 (t!228831 lt!1001381)) (- (- testedPSize!143 1) 1)))))

(declare-fun d!813919 () Bool)

(assert (=> d!813919 e!1770338))

(declare-fun res!1167492 () Bool)

(assert (=> d!813919 (=> (not res!1167492) (not e!1770338))))

(assert (=> d!813919 (= res!1167492 (= ((_ map implies) (content!4545 lt!1001545) (content!4545 (t!228831 lt!1001381))) ((as const (InoxSet C!16608)) true)))))

(assert (=> d!813919 (= lt!1001545 e!1770339)))

(declare-fun c!454248 () Bool)

(assert (=> d!813919 (= c!454248 ((_ is Nil!32566) (t!228831 lt!1001381)))))

(assert (=> d!813919 (= (drop!1754 (t!228831 lt!1001381) (- testedPSize!143 1)) lt!1001545)))

(declare-fun b!2801600 () Bool)

(assert (=> b!2801600 (= e!1770337 e!1770340)))

(declare-fun c!454250 () Bool)

(assert (=> b!2801600 (= c!454250 (>= (- testedPSize!143 1) call!182865))))

(assert (= (and d!813919 c!454248) b!2801602))

(assert (= (and d!813919 (not c!454248)) b!2801599))

(assert (= (and b!2801599 c!454251) b!2801605))

(assert (= (and b!2801599 (not c!454251)) b!2801607))

(assert (= (and d!813919 res!1167492) b!2801604))

(assert (= (and b!2801604 c!454249) b!2801601))

(assert (= (and b!2801604 (not c!454249)) b!2801600))

(assert (= (and b!2801600 c!454250) b!2801603))

(assert (= (and b!2801600 (not c!454250)) b!2801606))

(assert (= (or b!2801601 b!2801600 b!2801606) bm!182860))

(assert (=> bm!182860 m!3230719))

(declare-fun m!3231349 () Bool)

(assert (=> b!2801604 m!3231349))

(declare-fun m!3231351 () Bool)

(assert (=> b!2801607 m!3231351))

(declare-fun m!3231353 () Bool)

(assert (=> d!813919 m!3231353))

(assert (=> d!813919 m!3231062))

(assert (=> b!2801132 d!813919))

(assert (=> b!2801176 d!813635))

(assert (=> b!2801176 d!813613))

(declare-fun bs!515832 () Bool)

(declare-fun d!813921 () Bool)

(assert (= bs!515832 (and d!813921 d!813789)))

(declare-fun lambda!102940 () Int)

(assert (=> bs!515832 (= lambda!102940 lambda!102923)))

(declare-fun bs!515833 () Bool)

(assert (= bs!515833 (and d!813921 d!813799)))

(assert (=> bs!515833 (= lambda!102940 lambda!102926)))

(declare-fun bs!515834 () Bool)

(assert (= bs!515834 (and d!813921 d!813749)))

(assert (=> bs!515834 (= lambda!102940 lambda!102908)))

(declare-fun bs!515835 () Bool)

(assert (= bs!515835 (and d!813921 d!813619)))

(assert (=> bs!515835 (= lambda!102940 lambda!102878)))

(declare-fun bs!515836 () Bool)

(assert (= bs!515836 (and d!813921 d!813853)))

(assert (=> bs!515836 (= lambda!102940 lambda!102931)))

(declare-fun bs!515837 () Bool)

(assert (= bs!515837 (and d!813921 d!813801)))

(assert (=> bs!515837 (= lambda!102940 lambda!102927)))

(declare-fun bs!515838 () Bool)

(assert (= bs!515838 (and d!813921 d!813755)))

(assert (=> bs!515838 (= lambda!102940 lambda!102909)))

(declare-fun bs!515839 () Bool)

(assert (= bs!515839 (and d!813921 d!813885)))

(assert (=> bs!515839 (= lambda!102940 lambda!102936)))

(declare-fun bs!515840 () Bool)

(assert (= bs!515840 (and d!813921 d!813727)))

(assert (=> bs!515840 (= lambda!102940 lambda!102903)))

(declare-fun bs!515841 () Bool)

(assert (= bs!515841 (and d!813921 d!813849)))

(assert (=> bs!515841 (= lambda!102940 lambda!102929)))

(declare-fun bs!515842 () Bool)

(assert (= bs!515842 (and d!813921 d!813791)))

(assert (=> bs!515842 (= lambda!102940 lambda!102924)))

(declare-fun bs!515843 () Bool)

(assert (= bs!515843 (and d!813921 d!813851)))

(assert (=> bs!515843 (= lambda!102940 lambda!102930)))

(declare-fun bs!515844 () Bool)

(assert (= bs!515844 (and d!813921 d!813895)))

(assert (=> bs!515844 (= lambda!102940 lambda!102938)))

(declare-fun bs!515845 () Bool)

(assert (= bs!515845 (and d!813921 d!813881)))

(assert (=> bs!515845 (= lambda!102940 lambda!102935)))

(declare-fun bs!515846 () Bool)

(assert (= bs!515846 (and d!813921 d!813819)))

(assert (=> bs!515846 (= lambda!102940 lambda!102928)))

(declare-fun bs!515847 () Bool)

(assert (= bs!515847 (and d!813921 d!813893)))

(assert (=> bs!515847 (= lambda!102940 lambda!102937)))

(declare-fun bs!515848 () Bool)

(assert (= bs!515848 (and d!813921 d!813793)))

(assert (=> bs!515848 (= lambda!102940 lambda!102925)))

(declare-fun bs!515849 () Bool)

(assert (= bs!515849 (and d!813921 d!813743)))

(assert (=> bs!515849 (= lambda!102940 lambda!102907)))

(declare-fun bs!515850 () Bool)

(assert (= bs!515850 (and d!813921 d!813905)))

(assert (=> bs!515850 (= lambda!102940 lambda!102939)))

(assert (=> d!813921 (= (inv!44232 (_2!19671 (_1!19672 (h!37988 mapDefault!18360)))) (forall!6710 (exprs!2943 (_2!19671 (_1!19672 (h!37988 mapDefault!18360)))) lambda!102940))))

(declare-fun bs!515851 () Bool)

(assert (= bs!515851 d!813921))

(declare-fun m!3231355 () Bool)

(assert (=> bs!515851 m!3231355))

(assert (=> b!2801254 d!813921))

(declare-fun bs!515852 () Bool)

(declare-fun d!813923 () Bool)

(assert (= bs!515852 (and d!813923 d!813789)))

(declare-fun lambda!102941 () Int)

(assert (=> bs!515852 (= lambda!102941 lambda!102923)))

(declare-fun bs!515853 () Bool)

(assert (= bs!515853 (and d!813923 d!813799)))

(assert (=> bs!515853 (= lambda!102941 lambda!102926)))

(declare-fun bs!515854 () Bool)

(assert (= bs!515854 (and d!813923 d!813749)))

(assert (=> bs!515854 (= lambda!102941 lambda!102908)))

(declare-fun bs!515855 () Bool)

(assert (= bs!515855 (and d!813923 d!813619)))

(assert (=> bs!515855 (= lambda!102941 lambda!102878)))

(declare-fun bs!515856 () Bool)

(assert (= bs!515856 (and d!813923 d!813853)))

(assert (=> bs!515856 (= lambda!102941 lambda!102931)))

(declare-fun bs!515857 () Bool)

(assert (= bs!515857 (and d!813923 d!813921)))

(assert (=> bs!515857 (= lambda!102941 lambda!102940)))

(declare-fun bs!515858 () Bool)

(assert (= bs!515858 (and d!813923 d!813801)))

(assert (=> bs!515858 (= lambda!102941 lambda!102927)))

(declare-fun bs!515859 () Bool)

(assert (= bs!515859 (and d!813923 d!813755)))

(assert (=> bs!515859 (= lambda!102941 lambda!102909)))

(declare-fun bs!515860 () Bool)

(assert (= bs!515860 (and d!813923 d!813885)))

(assert (=> bs!515860 (= lambda!102941 lambda!102936)))

(declare-fun bs!515861 () Bool)

(assert (= bs!515861 (and d!813923 d!813727)))

(assert (=> bs!515861 (= lambda!102941 lambda!102903)))

(declare-fun bs!515862 () Bool)

(assert (= bs!515862 (and d!813923 d!813849)))

(assert (=> bs!515862 (= lambda!102941 lambda!102929)))

(declare-fun bs!515863 () Bool)

(assert (= bs!515863 (and d!813923 d!813791)))

(assert (=> bs!515863 (= lambda!102941 lambda!102924)))

(declare-fun bs!515864 () Bool)

(assert (= bs!515864 (and d!813923 d!813851)))

(assert (=> bs!515864 (= lambda!102941 lambda!102930)))

(declare-fun bs!515865 () Bool)

(assert (= bs!515865 (and d!813923 d!813895)))

(assert (=> bs!515865 (= lambda!102941 lambda!102938)))

(declare-fun bs!515866 () Bool)

(assert (= bs!515866 (and d!813923 d!813881)))

(assert (=> bs!515866 (= lambda!102941 lambda!102935)))

(declare-fun bs!515867 () Bool)

(assert (= bs!515867 (and d!813923 d!813819)))

(assert (=> bs!515867 (= lambda!102941 lambda!102928)))

(declare-fun bs!515868 () Bool)

(assert (= bs!515868 (and d!813923 d!813893)))

(assert (=> bs!515868 (= lambda!102941 lambda!102937)))

(declare-fun bs!515869 () Bool)

(assert (= bs!515869 (and d!813923 d!813793)))

(assert (=> bs!515869 (= lambda!102941 lambda!102925)))

(declare-fun bs!515870 () Bool)

(assert (= bs!515870 (and d!813923 d!813743)))

(assert (=> bs!515870 (= lambda!102941 lambda!102907)))

(declare-fun bs!515871 () Bool)

(assert (= bs!515871 (and d!813923 d!813905)))

(assert (=> bs!515871 (= lambda!102941 lambda!102939)))

(assert (=> d!813923 (= (inv!44232 setElem!24541) (forall!6710 (exprs!2943 setElem!24541) lambda!102941))))

(declare-fun bs!515872 () Bool)

(assert (= bs!515872 d!813923))

(declare-fun m!3231357 () Bool)

(assert (=> bs!515872 m!3231357))

(assert (=> setNonEmpty!24541 d!813923))

(declare-fun bs!515873 () Bool)

(declare-fun d!813925 () Bool)

(assert (= bs!515873 (and d!813925 d!813789)))

(declare-fun lambda!102942 () Int)

(assert (=> bs!515873 (= lambda!102942 lambda!102923)))

(declare-fun bs!515874 () Bool)

(assert (= bs!515874 (and d!813925 d!813799)))

(assert (=> bs!515874 (= lambda!102942 lambda!102926)))

(declare-fun bs!515875 () Bool)

(assert (= bs!515875 (and d!813925 d!813749)))

(assert (=> bs!515875 (= lambda!102942 lambda!102908)))

(declare-fun bs!515876 () Bool)

(assert (= bs!515876 (and d!813925 d!813619)))

(assert (=> bs!515876 (= lambda!102942 lambda!102878)))

(declare-fun bs!515877 () Bool)

(assert (= bs!515877 (and d!813925 d!813853)))

(assert (=> bs!515877 (= lambda!102942 lambda!102931)))

(declare-fun bs!515878 () Bool)

(assert (= bs!515878 (and d!813925 d!813923)))

(assert (=> bs!515878 (= lambda!102942 lambda!102941)))

(declare-fun bs!515879 () Bool)

(assert (= bs!515879 (and d!813925 d!813921)))

(assert (=> bs!515879 (= lambda!102942 lambda!102940)))

(declare-fun bs!515880 () Bool)

(assert (= bs!515880 (and d!813925 d!813801)))

(assert (=> bs!515880 (= lambda!102942 lambda!102927)))

(declare-fun bs!515881 () Bool)

(assert (= bs!515881 (and d!813925 d!813755)))

(assert (=> bs!515881 (= lambda!102942 lambda!102909)))

(declare-fun bs!515882 () Bool)

(assert (= bs!515882 (and d!813925 d!813885)))

(assert (=> bs!515882 (= lambda!102942 lambda!102936)))

(declare-fun bs!515883 () Bool)

(assert (= bs!515883 (and d!813925 d!813727)))

(assert (=> bs!515883 (= lambda!102942 lambda!102903)))

(declare-fun bs!515884 () Bool)

(assert (= bs!515884 (and d!813925 d!813849)))

(assert (=> bs!515884 (= lambda!102942 lambda!102929)))

(declare-fun bs!515885 () Bool)

(assert (= bs!515885 (and d!813925 d!813791)))

(assert (=> bs!515885 (= lambda!102942 lambda!102924)))

(declare-fun bs!515886 () Bool)

(assert (= bs!515886 (and d!813925 d!813851)))

(assert (=> bs!515886 (= lambda!102942 lambda!102930)))

(declare-fun bs!515887 () Bool)

(assert (= bs!515887 (and d!813925 d!813895)))

(assert (=> bs!515887 (= lambda!102942 lambda!102938)))

(declare-fun bs!515888 () Bool)

(assert (= bs!515888 (and d!813925 d!813881)))

(assert (=> bs!515888 (= lambda!102942 lambda!102935)))

(declare-fun bs!515889 () Bool)

(assert (= bs!515889 (and d!813925 d!813819)))

(assert (=> bs!515889 (= lambda!102942 lambda!102928)))

(declare-fun bs!515890 () Bool)

(assert (= bs!515890 (and d!813925 d!813893)))

(assert (=> bs!515890 (= lambda!102942 lambda!102937)))

(declare-fun bs!515891 () Bool)

(assert (= bs!515891 (and d!813925 d!813793)))

(assert (=> bs!515891 (= lambda!102942 lambda!102925)))

(declare-fun bs!515892 () Bool)

(assert (= bs!515892 (and d!813925 d!813743)))

(assert (=> bs!515892 (= lambda!102942 lambda!102907)))

(declare-fun bs!515893 () Bool)

(assert (= bs!515893 (and d!813925 d!813905)))

(assert (=> bs!515893 (= lambda!102942 lambda!102939)))

(assert (=> d!813925 (= (inv!44232 (_1!19669 (_1!19670 (h!37987 mapValue!18363)))) (forall!6710 (exprs!2943 (_1!19669 (_1!19670 (h!37987 mapValue!18363)))) lambda!102942))))

(declare-fun bs!515894 () Bool)

(assert (= bs!515894 d!813925))

(declare-fun m!3231359 () Bool)

(assert (=> bs!515894 m!3231359))

(assert (=> b!2801234 d!813925))

(declare-fun d!813927 () Bool)

(assert (=> d!813927 (and (= lt!1001371 testedP!183) (= lt!1001374 testedSuffix!143))))

(assert (=> d!813927 true))

(declare-fun _$50!340 () Unit!46678)

(assert (=> d!813927 (= (choose!16504 lt!1001371 lt!1001374 testedP!183 testedSuffix!143) _$50!340)))

(assert (=> d!813645 d!813927))

(assert (=> d!813645 d!813689))

(assert (=> d!813645 d!813633))

(declare-fun d!813929 () Bool)

(declare-fun e!1770344 () Bool)

(assert (=> d!813929 e!1770344))

(declare-fun res!1167495 () Bool)

(assert (=> d!813929 (=> (not res!1167495) (not e!1770344))))

(declare-fun lt!1001548 () List!32669)

(declare-fun noDuplicate!550 (List!32669) Bool)

(assert (=> d!813929 (= res!1167495 (noDuplicate!550 lt!1001548))))

(declare-fun choose!16513 ((InoxSet Context!4886)) List!32669)

(assert (=> d!813929 (= lt!1001548 (choose!16513 z!3684))))

(assert (=> d!813929 (= (toList!1886 z!3684) lt!1001548)))

(declare-fun b!2801610 () Bool)

(declare-fun content!4546 (List!32669) (InoxSet Context!4886))

(assert (=> b!2801610 (= e!1770344 (= (content!4546 lt!1001548) z!3684))))

(assert (= (and d!813929 res!1167495) b!2801610))

(declare-fun m!3231361 () Bool)

(assert (=> d!813929 m!3231361))

(declare-fun m!3231363 () Bool)

(assert (=> d!813929 m!3231363))

(declare-fun m!3231365 () Bool)

(assert (=> b!2801610 m!3231365))

(assert (=> bm!182852 d!813929))

(declare-fun bs!515895 () Bool)

(declare-fun d!813931 () Bool)

(assert (= bs!515895 (and d!813931 d!813789)))

(declare-fun lambda!102943 () Int)

(assert (=> bs!515895 (= lambda!102943 lambda!102923)))

(declare-fun bs!515896 () Bool)

(assert (= bs!515896 (and d!813931 d!813799)))

(assert (=> bs!515896 (= lambda!102943 lambda!102926)))

(declare-fun bs!515897 () Bool)

(assert (= bs!515897 (and d!813931 d!813749)))

(assert (=> bs!515897 (= lambda!102943 lambda!102908)))

(declare-fun bs!515898 () Bool)

(assert (= bs!515898 (and d!813931 d!813619)))

(assert (=> bs!515898 (= lambda!102943 lambda!102878)))

(declare-fun bs!515899 () Bool)

(assert (= bs!515899 (and d!813931 d!813853)))

(assert (=> bs!515899 (= lambda!102943 lambda!102931)))

(declare-fun bs!515900 () Bool)

(assert (= bs!515900 (and d!813931 d!813923)))

(assert (=> bs!515900 (= lambda!102943 lambda!102941)))

(declare-fun bs!515901 () Bool)

(assert (= bs!515901 (and d!813931 d!813921)))

(assert (=> bs!515901 (= lambda!102943 lambda!102940)))

(declare-fun bs!515902 () Bool)

(assert (= bs!515902 (and d!813931 d!813801)))

(assert (=> bs!515902 (= lambda!102943 lambda!102927)))

(declare-fun bs!515903 () Bool)

(assert (= bs!515903 (and d!813931 d!813755)))

(assert (=> bs!515903 (= lambda!102943 lambda!102909)))

(declare-fun bs!515904 () Bool)

(assert (= bs!515904 (and d!813931 d!813885)))

(assert (=> bs!515904 (= lambda!102943 lambda!102936)))

(declare-fun bs!515905 () Bool)

(assert (= bs!515905 (and d!813931 d!813727)))

(assert (=> bs!515905 (= lambda!102943 lambda!102903)))

(declare-fun bs!515906 () Bool)

(assert (= bs!515906 (and d!813931 d!813791)))

(assert (=> bs!515906 (= lambda!102943 lambda!102924)))

(declare-fun bs!515907 () Bool)

(assert (= bs!515907 (and d!813931 d!813851)))

(assert (=> bs!515907 (= lambda!102943 lambda!102930)))

(declare-fun bs!515908 () Bool)

(assert (= bs!515908 (and d!813931 d!813895)))

(assert (=> bs!515908 (= lambda!102943 lambda!102938)))

(declare-fun bs!515909 () Bool)

(assert (= bs!515909 (and d!813931 d!813881)))

(assert (=> bs!515909 (= lambda!102943 lambda!102935)))

(declare-fun bs!515910 () Bool)

(assert (= bs!515910 (and d!813931 d!813819)))

(assert (=> bs!515910 (= lambda!102943 lambda!102928)))

(declare-fun bs!515911 () Bool)

(assert (= bs!515911 (and d!813931 d!813893)))

(assert (=> bs!515911 (= lambda!102943 lambda!102937)))

(declare-fun bs!515912 () Bool)

(assert (= bs!515912 (and d!813931 d!813793)))

(assert (=> bs!515912 (= lambda!102943 lambda!102925)))

(declare-fun bs!515913 () Bool)

(assert (= bs!515913 (and d!813931 d!813743)))

(assert (=> bs!515913 (= lambda!102943 lambda!102907)))

(declare-fun bs!515914 () Bool)

(assert (= bs!515914 (and d!813931 d!813905)))

(assert (=> bs!515914 (= lambda!102943 lambda!102939)))

(declare-fun bs!515915 () Bool)

(assert (= bs!515915 (and d!813931 d!813925)))

(assert (=> bs!515915 (= lambda!102943 lambda!102942)))

(declare-fun bs!515916 () Bool)

(assert (= bs!515916 (and d!813931 d!813849)))

(assert (=> bs!515916 (= lambda!102943 lambda!102929)))

(assert (=> d!813931 (= (inv!44232 (_1!19669 (_1!19670 (h!37987 mapDefault!18359)))) (forall!6710 (exprs!2943 (_1!19669 (_1!19670 (h!37987 mapDefault!18359)))) lambda!102943))))

(declare-fun bs!515917 () Bool)

(assert (= bs!515917 d!813931))

(declare-fun m!3231367 () Bool)

(assert (=> bs!515917 m!3231367))

(assert (=> b!2801295 d!813931))

(assert (=> b!2801147 d!813607))

(declare-fun b!2801611 () Bool)

(declare-fun e!1770345 () Bool)

(declare-fun e!1770346 () Bool)

(assert (=> b!2801611 (= e!1770345 e!1770346)))

(declare-fun res!1167498 () Bool)

(assert (=> b!2801611 (=> (not res!1167498) (not e!1770346))))

(assert (=> b!2801611 (= res!1167498 (<= (- 1) (- (height!1498 (left!24594 (c!454126 (_1!19674 lt!1001476)))) (height!1498 (right!24924 (c!454126 (_1!19674 lt!1001476)))))))))

(declare-fun b!2801612 () Bool)

(declare-fun res!1167500 () Bool)

(assert (=> b!2801612 (=> (not res!1167500) (not e!1770346))))

(assert (=> b!2801612 (= res!1167500 (not (isEmpty!18140 (left!24594 (c!454126 (_1!19674 lt!1001476))))))))

(declare-fun b!2801613 () Bool)

(declare-fun res!1167497 () Bool)

(assert (=> b!2801613 (=> (not res!1167497) (not e!1770346))))

(assert (=> b!2801613 (= res!1167497 (isBalanced!3076 (left!24594 (c!454126 (_1!19674 lt!1001476)))))))

(declare-fun b!2801615 () Bool)

(declare-fun res!1167499 () Bool)

(assert (=> b!2801615 (=> (not res!1167499) (not e!1770346))))

(assert (=> b!2801615 (= res!1167499 (<= (- (height!1498 (left!24594 (c!454126 (_1!19674 lt!1001476)))) (height!1498 (right!24924 (c!454126 (_1!19674 lt!1001476))))) 1))))

(declare-fun b!2801616 () Bool)

(assert (=> b!2801616 (= e!1770346 (not (isEmpty!18140 (right!24924 (c!454126 (_1!19674 lt!1001476))))))))

(declare-fun b!2801614 () Bool)

(declare-fun res!1167496 () Bool)

(assert (=> b!2801614 (=> (not res!1167496) (not e!1770346))))

(assert (=> b!2801614 (= res!1167496 (isBalanced!3076 (right!24924 (c!454126 (_1!19674 lt!1001476)))))))

(declare-fun d!813933 () Bool)

(declare-fun res!1167501 () Bool)

(assert (=> d!813933 (=> res!1167501 e!1770345)))

(assert (=> d!813933 (= res!1167501 (not ((_ is Node!10082) (c!454126 (_1!19674 lt!1001476)))))))

(assert (=> d!813933 (= (isBalanced!3076 (c!454126 (_1!19674 lt!1001476))) e!1770345)))

(assert (= (and d!813933 (not res!1167501)) b!2801611))

(assert (= (and b!2801611 res!1167498) b!2801615))

(assert (= (and b!2801615 res!1167499) b!2801613))

(assert (= (and b!2801613 res!1167497) b!2801614))

(assert (= (and b!2801614 res!1167496) b!2801612))

(assert (= (and b!2801612 res!1167500) b!2801616))

(declare-fun m!3231369 () Bool)

(assert (=> b!2801614 m!3231369))

(declare-fun m!3231371 () Bool)

(assert (=> b!2801612 m!3231371))

(declare-fun m!3231373 () Bool)

(assert (=> b!2801616 m!3231373))

(declare-fun m!3231375 () Bool)

(assert (=> b!2801611 m!3231375))

(declare-fun m!3231377 () Bool)

(assert (=> b!2801611 m!3231377))

(assert (=> b!2801615 m!3231375))

(assert (=> b!2801615 m!3231377))

(declare-fun m!3231379 () Bool)

(assert (=> b!2801613 m!3231379))

(assert (=> d!813695 d!813933))

(declare-fun b!2801665 () Bool)

(declare-fun lt!1001576 () tuple2!33204)

(declare-fun call!182882 () tuple2!33204)

(assert (=> b!2801665 (= lt!1001576 call!182882)))

(declare-fun e!1770371 () tuple2!33204)

(declare-fun call!182878 () Conc!10082)

(assert (=> b!2801665 (= e!1770371 (tuple2!33205 call!182878 (_2!19675 lt!1001576)))))

(declare-fun b!2801666 () Bool)

(declare-fun e!1770374 () tuple2!33204)

(assert (=> b!2801666 (= e!1770374 (tuple2!33205 (left!24594 (c!454126 totalInput!758)) (right!24924 (c!454126 totalInput!758))))))

(declare-fun b!2801667 () Bool)

(declare-fun e!1770373 () Int)

(assert (=> b!2801667 (= e!1770373 testedPSize!143)))

(declare-fun b!2801668 () Bool)

(declare-fun e!1770377 () Int)

(assert (=> b!2801668 (= e!1770377 testedPSize!143)))

(declare-fun e!1770376 () List!32666)

(declare-fun lt!1001579 () List!32666)

(declare-fun lt!1001577 () List!32666)

(declare-fun b!2801669 () Bool)

(declare-fun c!454274 () Bool)

(assert (=> b!2801669 (= e!1770376 (ite c!454274 lt!1001577 lt!1001579))))

(declare-fun b!2801671 () Bool)

(declare-fun c!454278 () Bool)

(assert (=> b!2801671 (= c!454278 (<= testedPSize!143 0))))

(declare-fun e!1770375 () tuple2!33204)

(declare-fun e!1770381 () tuple2!33204)

(assert (=> b!2801671 (= e!1770375 e!1770381)))

(declare-fun call!182879 () List!32666)

(declare-fun lt!1001581 () tuple2!33206)

(declare-fun lt!1001585 () tuple2!33206)

(declare-fun bm!182873 () Bool)

(assert (=> bm!182873 (= call!182879 (++!8028 (ite c!454274 (_2!19676 lt!1001585) lt!1001577) (ite c!454274 lt!1001579 (_1!19676 lt!1001581))))))

(declare-fun bm!182874 () Bool)

(declare-fun c!454279 () Bool)

(declare-fun c!454282 () Bool)

(assert (=> bm!182874 (= c!454279 c!454282)))

(assert (=> bm!182874 (= call!182882 (splitAt!201 (ite c!454282 (left!24594 (c!454126 totalInput!758)) (right!24924 (c!454126 totalInput!758))) e!1770377))))

(declare-fun b!2801672 () Bool)

(declare-fun e!1770372 () tuple2!33204)

(assert (=> b!2801672 (= e!1770372 e!1770375)))

(declare-fun c!454276 () Bool)

(assert (=> b!2801672 (= c!454276 ((_ is Leaf!15363) (c!454126 totalInput!758)))))

(declare-fun b!2801673 () Bool)

(declare-fun e!1770379 () tuple2!33204)

(assert (=> b!2801673 (= e!1770381 e!1770379)))

(declare-fun c!454275 () Bool)

(assert (=> b!2801673 (= c!454275 (= testedPSize!143 (csize!20395 (c!454126 totalInput!758))))))

(declare-fun b!2801674 () Bool)

(declare-fun call!182883 () Int)

(assert (=> b!2801674 (= e!1770373 (- testedPSize!143 call!182883))))

(declare-fun bm!182875 () Bool)

(declare-fun lt!1001586 () tuple2!33204)

(declare-fun ++!8029 (Conc!10082 Conc!10082) Conc!10082)

(assert (=> bm!182875 (= call!182878 (++!8029 (ite c!454282 (_2!19675 lt!1001586) (left!24594 (c!454126 totalInput!758))) (ite c!454282 (right!24924 (c!454126 totalInput!758)) (_1!19675 lt!1001576))))))

(declare-fun b!2801675 () Bool)

(assert (=> b!2801675 (= e!1770376 (list!12222 (xs!13194 (c!454126 totalInput!758))))))

(declare-fun b!2801676 () Bool)

(declare-fun c!454283 () Bool)

(assert (=> b!2801676 (= c!454283 (= (size!25428 (left!24594 (c!454126 totalInput!758))) testedPSize!143))))

(declare-fun lt!1001584 () Unit!46678)

(declare-fun lt!1001587 () Unit!46678)

(assert (=> b!2801676 (= lt!1001584 lt!1001587)))

(declare-fun e!1770380 () tuple2!33206)

(assert (=> b!2801676 (= (splitAtIndex!76 (++!8028 lt!1001577 lt!1001579) testedPSize!143) e!1770380)))

(declare-fun c!454277 () Bool)

(assert (=> b!2801676 (= c!454277 (= call!182883 testedPSize!143))))

(declare-fun splitAtLemma!20 (List!32666 List!32666 Int) Unit!46678)

(assert (=> b!2801676 (= lt!1001587 (splitAtLemma!20 lt!1001577 lt!1001579 testedPSize!143))))

(assert (=> b!2801676 (= lt!1001579 (list!12221 (right!24924 (c!454126 totalInput!758))))))

(assert (=> b!2801676 (= lt!1001577 (list!12221 (left!24594 (c!454126 totalInput!758))))))

(assert (=> b!2801676 (= e!1770375 e!1770374)))

(declare-fun b!2801677 () Bool)

(assert (=> b!2801677 (= e!1770377 (- testedPSize!143 (size!25428 (left!24594 (c!454126 totalInput!758)))))))

(declare-fun b!2801678 () Bool)

(declare-fun e!1770382 () Bool)

(declare-fun lt!1001580 () tuple2!33204)

(assert (=> b!2801678 (= e!1770382 (= (tuple2!33207 (list!12221 (_1!19675 lt!1001580)) (list!12221 (_2!19675 lt!1001580))) (splitAtIndex!76 (list!12221 (c!454126 totalInput!758)) testedPSize!143)))))

(declare-fun b!2801679 () Bool)

(declare-fun lt!1001583 () Unit!46678)

(declare-fun lt!1001582 () Unit!46678)

(assert (=> b!2801679 (= lt!1001583 lt!1001582)))

(declare-fun lt!1001578 () List!32666)

(declare-fun slice!756 (List!32666 Int Int) List!32666)

(assert (=> b!2801679 (= (drop!1754 lt!1001578 testedPSize!143) (slice!756 lt!1001578 testedPSize!143 call!182883))))

(declare-fun dropLemma!20 (List!32666 Int) Unit!46678)

(assert (=> b!2801679 (= lt!1001582 (dropLemma!20 lt!1001578 testedPSize!143))))

(assert (=> b!2801679 (= lt!1001578 (list!12222 (xs!13194 (c!454126 totalInput!758))))))

(declare-fun lt!1001575 () tuple2!33206)

(declare-fun call!182880 () tuple2!33206)

(assert (=> b!2801679 (= lt!1001575 call!182880)))

(declare-fun slice!757 (IArray!20169 Int Int) IArray!20169)

(assert (=> b!2801679 (= e!1770379 (tuple2!33205 (Leaf!15363 (slice!757 (xs!13194 (c!454126 totalInput!758)) 0 testedPSize!143) testedPSize!143) (Leaf!15363 (slice!757 (xs!13194 (c!454126 totalInput!758)) testedPSize!143 (csize!20395 (c!454126 totalInput!758))) (- (csize!20395 (c!454126 totalInput!758)) testedPSize!143))))))

(declare-fun bm!182876 () Bool)

(declare-fun c!454284 () Bool)

(assert (=> bm!182876 (= c!454284 c!454274)))

(declare-fun call!182881 () tuple2!33206)

(assert (=> bm!182876 (= call!182881 call!182880)))

(declare-fun b!2801680 () Bool)

(declare-fun res!1167507 () Bool)

(assert (=> b!2801680 (=> (not res!1167507) (not e!1770382))))

(assert (=> b!2801680 (= res!1167507 (isBalanced!3076 (_2!19675 lt!1001580)))))

(declare-fun b!2801681 () Bool)

(assert (=> b!2801681 (= lt!1001586 call!182882)))

(assert (=> b!2801681 (= e!1770371 (tuple2!33205 (_1!19675 lt!1001586) call!182878))))

(declare-fun b!2801682 () Bool)

(assert (=> b!2801682 (= e!1770374 e!1770371)))

(assert (=> b!2801682 (= c!454282 (< testedPSize!143 (size!25428 (left!24594 (c!454126 totalInput!758)))))))

(declare-fun b!2801683 () Bool)

(assert (=> b!2801683 (= e!1770381 (tuple2!33205 Empty!10082 (c!454126 totalInput!758)))))

(declare-fun b!2801684 () Bool)

(assert (=> b!2801684 (= e!1770380 (tuple2!33207 lt!1001577 lt!1001579))))

(declare-fun b!2801685 () Bool)

(assert (=> b!2801685 (= lt!1001585 call!182881)))

(declare-fun e!1770378 () tuple2!33206)

(assert (=> b!2801685 (= e!1770378 (tuple2!33207 (_1!19676 lt!1001585) call!182879))))

(declare-fun b!2801686 () Bool)

(assert (=> b!2801686 (= lt!1001581 call!182881)))

(assert (=> b!2801686 (= e!1770378 (tuple2!33207 call!182879 (_2!19676 lt!1001581)))))

(declare-fun b!2801670 () Bool)

(assert (=> b!2801670 (= e!1770379 (tuple2!33205 (c!454126 totalInput!758) Empty!10082))))

(declare-fun d!813935 () Bool)

(assert (=> d!813935 e!1770382))

(declare-fun res!1167506 () Bool)

(assert (=> d!813935 (=> (not res!1167506) (not e!1770382))))

(assert (=> d!813935 (= res!1167506 (isBalanced!3076 (_1!19675 lt!1001580)))))

(assert (=> d!813935 (= lt!1001580 e!1770372)))

(declare-fun c!454281 () Bool)

(assert (=> d!813935 (= c!454281 ((_ is Empty!10082) (c!454126 totalInput!758)))))

(assert (=> d!813935 (isBalanced!3076 (c!454126 totalInput!758))))

(assert (=> d!813935 (= (splitAt!201 (c!454126 totalInput!758) testedPSize!143) lt!1001580)))

(declare-fun bm!182877 () Bool)

(declare-fun c!454280 () Bool)

(assert (=> bm!182877 (= c!454280 c!454276)))

(assert (=> bm!182877 (= call!182880 (splitAtIndex!76 e!1770376 (ite c!454276 testedPSize!143 e!1770373)))))

(declare-fun b!2801687 () Bool)

(assert (=> b!2801687 (= e!1770380 e!1770378)))

(assert (=> b!2801687 (= c!454274 (< testedPSize!143 call!182883))))

(declare-fun bm!182878 () Bool)

(assert (=> bm!182878 (= call!182883 (size!25423 (ite c!454276 lt!1001578 lt!1001577)))))

(declare-fun b!2801688 () Bool)

(assert (=> b!2801688 (= e!1770372 (tuple2!33205 (c!454126 totalInput!758) (c!454126 totalInput!758)))))

(assert (= (and d!813935 c!454281) b!2801688))

(assert (= (and d!813935 (not c!454281)) b!2801672))

(assert (= (and b!2801672 c!454276) b!2801671))

(assert (= (and b!2801672 (not c!454276)) b!2801676))

(assert (= (and b!2801671 c!454278) b!2801683))

(assert (= (and b!2801671 (not c!454278)) b!2801673))

(assert (= (and b!2801673 c!454275) b!2801670))

(assert (= (and b!2801673 (not c!454275)) b!2801679))

(assert (= (and b!2801676 c!454277) b!2801684))

(assert (= (and b!2801676 (not c!454277)) b!2801687))

(assert (= (and b!2801687 c!454274) b!2801685))

(assert (= (and b!2801687 (not c!454274)) b!2801686))

(assert (= (or b!2801685 b!2801686) bm!182873))

(assert (= (or b!2801685 b!2801686) bm!182876))

(assert (= (and bm!182876 c!454284) b!2801667))

(assert (= (and bm!182876 (not c!454284)) b!2801674))

(assert (= (and b!2801676 c!454283) b!2801666))

(assert (= (and b!2801676 (not c!454283)) b!2801682))

(assert (= (and b!2801682 c!454282) b!2801681))

(assert (= (and b!2801682 (not c!454282)) b!2801665))

(assert (= (or b!2801681 b!2801665) bm!182875))

(assert (= (or b!2801681 b!2801665) bm!182874))

(assert (= (and bm!182874 c!454279) b!2801668))

(assert (= (and bm!182874 (not c!454279)) b!2801677))

(assert (= (or b!2801679 b!2801676 b!2801687 b!2801674) bm!182878))

(assert (= (or b!2801679 bm!182876) bm!182877))

(assert (= (and bm!182877 c!454280) b!2801675))

(assert (= (and bm!182877 (not c!454280)) b!2801669))

(assert (= (and d!813935 res!1167506) b!2801680))

(assert (= (and b!2801680 res!1167507) b!2801678))

(assert (=> b!2801682 m!3231000))

(declare-fun m!3231381 () Bool)

(assert (=> bm!182874 m!3231381))

(declare-fun m!3231383 () Bool)

(assert (=> d!813935 m!3231383))

(assert (=> d!813935 m!3230701))

(declare-fun m!3231385 () Bool)

(assert (=> bm!182877 m!3231385))

(declare-fun m!3231387 () Bool)

(assert (=> bm!182873 m!3231387))

(declare-fun m!3231389 () Bool)

(assert (=> b!2801679 m!3231389))

(declare-fun m!3231391 () Bool)

(assert (=> b!2801679 m!3231391))

(assert (=> b!2801679 m!3231030))

(declare-fun m!3231393 () Bool)

(assert (=> b!2801679 m!3231393))

(declare-fun m!3231395 () Bool)

(assert (=> b!2801679 m!3231395))

(declare-fun m!3231397 () Bool)

(assert (=> b!2801679 m!3231397))

(declare-fun m!3231399 () Bool)

(assert (=> b!2801680 m!3231399))

(assert (=> b!2801677 m!3231000))

(declare-fun m!3231401 () Bool)

(assert (=> bm!182878 m!3231401))

(declare-fun m!3231403 () Bool)

(assert (=> bm!182875 m!3231403))

(assert (=> b!2801675 m!3231030))

(declare-fun m!3231405 () Bool)

(assert (=> b!2801678 m!3231405))

(declare-fun m!3231407 () Bool)

(assert (=> b!2801678 m!3231407))

(assert (=> b!2801678 m!3230705))

(assert (=> b!2801678 m!3230705))

(declare-fun m!3231409 () Bool)

(assert (=> b!2801678 m!3231409))

(declare-fun m!3231411 () Bool)

(assert (=> b!2801676 m!3231411))

(assert (=> b!2801676 m!3230994))

(declare-fun m!3231413 () Bool)

(assert (=> b!2801676 m!3231413))

(declare-fun m!3231415 () Bool)

(assert (=> b!2801676 m!3231415))

(assert (=> b!2801676 m!3230996))

(assert (=> b!2801676 m!3231413))

(assert (=> b!2801676 m!3231000))

(assert (=> d!813695 d!813935))

(assert (=> d!813695 d!813737))

(declare-fun d!813937 () Bool)

(declare-fun lt!1001588 () Int)

(assert (=> d!813937 (>= lt!1001588 0)))

(declare-fun e!1770383 () Int)

(assert (=> d!813937 (= lt!1001588 e!1770383)))

(declare-fun c!454285 () Bool)

(assert (=> d!813937 (= c!454285 ((_ is Nil!32566) lt!1001463))))

(assert (=> d!813937 (= (size!25423 lt!1001463) lt!1001588)))

(declare-fun b!2801689 () Bool)

(assert (=> b!2801689 (= e!1770383 0)))

(declare-fun b!2801690 () Bool)

(assert (=> b!2801690 (= e!1770383 (+ 1 (size!25423 (t!228831 lt!1001463))))))

(assert (= (and d!813937 c!454285) b!2801689))

(assert (= (and d!813937 (not c!454285)) b!2801690))

(declare-fun m!3231417 () Bool)

(assert (=> b!2801690 m!3231417))

(assert (=> b!2801167 d!813937))

(assert (=> b!2801167 d!813609))

(declare-fun d!813939 () Bool)

(declare-fun lt!1001589 () Int)

(assert (=> d!813939 (>= lt!1001589 0)))

(declare-fun e!1770384 () Int)

(assert (=> d!813939 (= lt!1001589 e!1770384)))

(declare-fun c!454286 () Bool)

(assert (=> d!813939 (= c!454286 ((_ is Nil!32566) lt!1001366))))

(assert (=> d!813939 (= (size!25423 lt!1001366) lt!1001589)))

(declare-fun b!2801691 () Bool)

(assert (=> b!2801691 (= e!1770384 0)))

(declare-fun b!2801692 () Bool)

(assert (=> b!2801692 (= e!1770384 (+ 1 (size!25423 (t!228831 lt!1001366))))))

(assert (= (and d!813939 c!454286) b!2801691))

(assert (= (and d!813939 (not c!454286)) b!2801692))

(declare-fun m!3231419 () Bool)

(assert (=> b!2801692 m!3231419))

(assert (=> b!2801167 d!813939))

(declare-fun bs!515918 () Bool)

(declare-fun d!813941 () Bool)

(assert (= bs!515918 (and d!813941 d!813789)))

(declare-fun lambda!102944 () Int)

(assert (=> bs!515918 (= lambda!102944 lambda!102923)))

(declare-fun bs!515919 () Bool)

(assert (= bs!515919 (and d!813941 d!813799)))

(assert (=> bs!515919 (= lambda!102944 lambda!102926)))

(declare-fun bs!515920 () Bool)

(assert (= bs!515920 (and d!813941 d!813749)))

(assert (=> bs!515920 (= lambda!102944 lambda!102908)))

(declare-fun bs!515921 () Bool)

(assert (= bs!515921 (and d!813941 d!813619)))

(assert (=> bs!515921 (= lambda!102944 lambda!102878)))

(declare-fun bs!515922 () Bool)

(assert (= bs!515922 (and d!813941 d!813853)))

(assert (=> bs!515922 (= lambda!102944 lambda!102931)))

(declare-fun bs!515923 () Bool)

(assert (= bs!515923 (and d!813941 d!813923)))

(assert (=> bs!515923 (= lambda!102944 lambda!102941)))

(declare-fun bs!515924 () Bool)

(assert (= bs!515924 (and d!813941 d!813921)))

(assert (=> bs!515924 (= lambda!102944 lambda!102940)))

(declare-fun bs!515925 () Bool)

(assert (= bs!515925 (and d!813941 d!813801)))

(assert (=> bs!515925 (= lambda!102944 lambda!102927)))

(declare-fun bs!515926 () Bool)

(assert (= bs!515926 (and d!813941 d!813755)))

(assert (=> bs!515926 (= lambda!102944 lambda!102909)))

(declare-fun bs!515927 () Bool)

(assert (= bs!515927 (and d!813941 d!813885)))

(assert (=> bs!515927 (= lambda!102944 lambda!102936)))

(declare-fun bs!515928 () Bool)

(assert (= bs!515928 (and d!813941 d!813727)))

(assert (=> bs!515928 (= lambda!102944 lambda!102903)))

(declare-fun bs!515929 () Bool)

(assert (= bs!515929 (and d!813941 d!813791)))

(assert (=> bs!515929 (= lambda!102944 lambda!102924)))

(declare-fun bs!515930 () Bool)

(assert (= bs!515930 (and d!813941 d!813851)))

(assert (=> bs!515930 (= lambda!102944 lambda!102930)))

(declare-fun bs!515931 () Bool)

(assert (= bs!515931 (and d!813941 d!813895)))

(assert (=> bs!515931 (= lambda!102944 lambda!102938)))

(declare-fun bs!515932 () Bool)

(assert (= bs!515932 (and d!813941 d!813881)))

(assert (=> bs!515932 (= lambda!102944 lambda!102935)))

(declare-fun bs!515933 () Bool)

(assert (= bs!515933 (and d!813941 d!813819)))

(assert (=> bs!515933 (= lambda!102944 lambda!102928)))

(declare-fun bs!515934 () Bool)

(assert (= bs!515934 (and d!813941 d!813893)))

(assert (=> bs!515934 (= lambda!102944 lambda!102937)))

(declare-fun bs!515935 () Bool)

(assert (= bs!515935 (and d!813941 d!813793)))

(assert (=> bs!515935 (= lambda!102944 lambda!102925)))

(declare-fun bs!515936 () Bool)

(assert (= bs!515936 (and d!813941 d!813743)))

(assert (=> bs!515936 (= lambda!102944 lambda!102907)))

(declare-fun bs!515937 () Bool)

(assert (= bs!515937 (and d!813941 d!813905)))

(assert (=> bs!515937 (= lambda!102944 lambda!102939)))

(declare-fun bs!515938 () Bool)

(assert (= bs!515938 (and d!813941 d!813931)))

(assert (=> bs!515938 (= lambda!102944 lambda!102943)))

(declare-fun bs!515939 () Bool)

(assert (= bs!515939 (and d!813941 d!813925)))

(assert (=> bs!515939 (= lambda!102944 lambda!102942)))

(declare-fun bs!515940 () Bool)

(assert (= bs!515940 (and d!813941 d!813849)))

(assert (=> bs!515940 (= lambda!102944 lambda!102929)))

(assert (=> d!813941 (= (inv!44232 (_1!19669 (_1!19670 (h!37987 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))))) (forall!6710 (exprs!2943 (_1!19669 (_1!19670 (h!37987 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))))) lambda!102944))))

(declare-fun bs!515941 () Bool)

(assert (= bs!515941 d!813941))

(declare-fun m!3231421 () Bool)

(assert (=> bs!515941 m!3231421))

(assert (=> b!2801249 d!813941))

(declare-fun b!2801693 () Bool)

(declare-fun e!1770385 () List!32666)

(assert (=> b!2801693 (= e!1770385 lt!1001438)))

(declare-fun b!2801696 () Bool)

(declare-fun e!1770386 () Bool)

(declare-fun lt!1001590 () List!32666)

(assert (=> b!2801696 (= e!1770386 (or (not (= lt!1001438 Nil!32566)) (= lt!1001590 testedP!183)))))

(declare-fun b!2801695 () Bool)

(declare-fun res!1167509 () Bool)

(assert (=> b!2801695 (=> (not res!1167509) (not e!1770386))))

(assert (=> b!2801695 (= res!1167509 (= (size!25423 lt!1001590) (+ (size!25423 testedP!183) (size!25423 lt!1001438))))))

(declare-fun b!2801694 () Bool)

(assert (=> b!2801694 (= e!1770385 (Cons!32566 (h!37986 testedP!183) (++!8028 (t!228831 testedP!183) lt!1001438)))))

(declare-fun d!813943 () Bool)

(assert (=> d!813943 e!1770386))

(declare-fun res!1167508 () Bool)

(assert (=> d!813943 (=> (not res!1167508) (not e!1770386))))

(assert (=> d!813943 (= res!1167508 (= (content!4545 lt!1001590) ((_ map or) (content!4545 testedP!183) (content!4545 lt!1001438))))))

(assert (=> d!813943 (= lt!1001590 e!1770385)))

(declare-fun c!454287 () Bool)

(assert (=> d!813943 (= c!454287 ((_ is Nil!32566) testedP!183))))

(assert (=> d!813943 (= (++!8028 testedP!183 lt!1001438) lt!1001590)))

(assert (= (and d!813943 c!454287) b!2801693))

(assert (= (and d!813943 (not c!454287)) b!2801694))

(assert (= (and d!813943 res!1167508) b!2801695))

(assert (= (and b!2801695 res!1167509) b!2801696))

(declare-fun m!3231423 () Bool)

(assert (=> b!2801695 m!3231423))

(assert (=> b!2801695 m!3230579))

(declare-fun m!3231425 () Bool)

(assert (=> b!2801695 m!3231425))

(declare-fun m!3231427 () Bool)

(assert (=> b!2801694 m!3231427))

(declare-fun m!3231429 () Bool)

(assert (=> d!813943 m!3231429))

(assert (=> d!813943 m!3230715))

(declare-fun m!3231431 () Bool)

(assert (=> d!813943 m!3231431))

(assert (=> d!813643 d!813943))

(assert (=> d!813643 d!813635))

(assert (=> d!813643 d!813613))

(declare-fun d!813945 () Bool)

(assert (=> d!813945 (= (head!6207 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))) (h!37986 (++!8028 testedP!183 (Cons!32566 (head!6207 lt!1001372) Nil!32566))))))

(assert (=> b!2801158 d!813945))

(assert (=> b!2801158 d!813767))

(declare-fun bs!515942 () Bool)

(declare-fun d!813947 () Bool)

(assert (= bs!515942 (and d!813947 d!813789)))

(declare-fun lambda!102945 () Int)

(assert (=> bs!515942 (= lambda!102945 lambda!102923)))

(declare-fun bs!515943 () Bool)

(assert (= bs!515943 (and d!813947 d!813749)))

(assert (=> bs!515943 (= lambda!102945 lambda!102908)))

(declare-fun bs!515944 () Bool)

(assert (= bs!515944 (and d!813947 d!813619)))

(assert (=> bs!515944 (= lambda!102945 lambda!102878)))

(declare-fun bs!515945 () Bool)

(assert (= bs!515945 (and d!813947 d!813853)))

(assert (=> bs!515945 (= lambda!102945 lambda!102931)))

(declare-fun bs!515946 () Bool)

(assert (= bs!515946 (and d!813947 d!813923)))

(assert (=> bs!515946 (= lambda!102945 lambda!102941)))

(declare-fun bs!515947 () Bool)

(assert (= bs!515947 (and d!813947 d!813921)))

(assert (=> bs!515947 (= lambda!102945 lambda!102940)))

(declare-fun bs!515948 () Bool)

(assert (= bs!515948 (and d!813947 d!813801)))

(assert (=> bs!515948 (= lambda!102945 lambda!102927)))

(declare-fun bs!515949 () Bool)

(assert (= bs!515949 (and d!813947 d!813755)))

(assert (=> bs!515949 (= lambda!102945 lambda!102909)))

(declare-fun bs!515950 () Bool)

(assert (= bs!515950 (and d!813947 d!813885)))

(assert (=> bs!515950 (= lambda!102945 lambda!102936)))

(declare-fun bs!515951 () Bool)

(assert (= bs!515951 (and d!813947 d!813727)))

(assert (=> bs!515951 (= lambda!102945 lambda!102903)))

(declare-fun bs!515952 () Bool)

(assert (= bs!515952 (and d!813947 d!813791)))

(assert (=> bs!515952 (= lambda!102945 lambda!102924)))

(declare-fun bs!515953 () Bool)

(assert (= bs!515953 (and d!813947 d!813851)))

(assert (=> bs!515953 (= lambda!102945 lambda!102930)))

(declare-fun bs!515954 () Bool)

(assert (= bs!515954 (and d!813947 d!813895)))

(assert (=> bs!515954 (= lambda!102945 lambda!102938)))

(declare-fun bs!515955 () Bool)

(assert (= bs!515955 (and d!813947 d!813881)))

(assert (=> bs!515955 (= lambda!102945 lambda!102935)))

(declare-fun bs!515956 () Bool)

(assert (= bs!515956 (and d!813947 d!813819)))

(assert (=> bs!515956 (= lambda!102945 lambda!102928)))

(declare-fun bs!515957 () Bool)

(assert (= bs!515957 (and d!813947 d!813799)))

(assert (=> bs!515957 (= lambda!102945 lambda!102926)))

(declare-fun bs!515958 () Bool)

(assert (= bs!515958 (and d!813947 d!813941)))

(assert (=> bs!515958 (= lambda!102945 lambda!102944)))

(declare-fun bs!515959 () Bool)

(assert (= bs!515959 (and d!813947 d!813893)))

(assert (=> bs!515959 (= lambda!102945 lambda!102937)))

(declare-fun bs!515960 () Bool)

(assert (= bs!515960 (and d!813947 d!813793)))

(assert (=> bs!515960 (= lambda!102945 lambda!102925)))

(declare-fun bs!515961 () Bool)

(assert (= bs!515961 (and d!813947 d!813743)))

(assert (=> bs!515961 (= lambda!102945 lambda!102907)))

(declare-fun bs!515962 () Bool)

(assert (= bs!515962 (and d!813947 d!813905)))

(assert (=> bs!515962 (= lambda!102945 lambda!102939)))

(declare-fun bs!515963 () Bool)

(assert (= bs!515963 (and d!813947 d!813931)))

(assert (=> bs!515963 (= lambda!102945 lambda!102943)))

(declare-fun bs!515964 () Bool)

(assert (= bs!515964 (and d!813947 d!813925)))

(assert (=> bs!515964 (= lambda!102945 lambda!102942)))

(declare-fun bs!515965 () Bool)

(assert (= bs!515965 (and d!813947 d!813849)))

(assert (=> bs!515965 (= lambda!102945 lambda!102929)))

(assert (=> d!813947 (= (inv!44232 (_1!19669 (_1!19670 (h!37987 mapDefault!18363)))) (forall!6710 (exprs!2943 (_1!19669 (_1!19670 (h!37987 mapDefault!18363)))) lambda!102945))))

(declare-fun bs!515966 () Bool)

(assert (= bs!515966 d!813947))

(declare-fun m!3231433 () Bool)

(assert (=> bs!515966 m!3231433))

(assert (=> b!2801232 d!813947))

(declare-fun d!813949 () Bool)

(assert (=> d!813949 (= (list!12220 (_1!19674 lt!1001476)) (list!12221 (c!454126 (_1!19674 lt!1001476))))))

(declare-fun bs!515967 () Bool)

(assert (= bs!515967 d!813949))

(declare-fun m!3231435 () Bool)

(assert (=> bs!515967 m!3231435))

(assert (=> b!2801190 d!813949))

(declare-fun d!813951 () Bool)

(assert (=> d!813951 (= (list!12220 (_2!19674 lt!1001476)) (list!12221 (c!454126 (_2!19674 lt!1001476))))))

(declare-fun bs!515968 () Bool)

(assert (= bs!515968 d!813951))

(declare-fun m!3231437 () Bool)

(assert (=> bs!515968 m!3231437))

(assert (=> b!2801190 d!813951))

(declare-fun b!2801709 () Bool)

(declare-fun lt!1001596 () tuple2!33206)

(assert (=> b!2801709 (= lt!1001596 (splitAtIndex!76 (t!228831 (list!12220 totalInput!758)) (- testedPSize!143 1)))))

(declare-fun e!1770394 () tuple2!33206)

(assert (=> b!2801709 (= e!1770394 (tuple2!33207 (Cons!32566 (h!37986 (list!12220 totalInput!758)) (_1!19676 lt!1001596)) (_2!19676 lt!1001596)))))

(declare-fun b!2801710 () Bool)

(declare-fun e!1770393 () Bool)

(declare-fun lt!1001595 () tuple2!33206)

(assert (=> b!2801710 (= e!1770393 (= (_2!19676 lt!1001595) (drop!1754 (list!12220 totalInput!758) testedPSize!143)))))

(declare-fun b!2801711 () Bool)

(declare-fun res!1167514 () Bool)

(assert (=> b!2801711 (=> (not res!1167514) (not e!1770393))))

(declare-fun take!511 (List!32666 Int) List!32666)

(assert (=> b!2801711 (= res!1167514 (= (_1!19676 lt!1001595) (take!511 (list!12220 totalInput!758) testedPSize!143)))))

(declare-fun b!2801712 () Bool)

(declare-fun e!1770395 () tuple2!33206)

(assert (=> b!2801712 (= e!1770395 e!1770394)))

(declare-fun c!454293 () Bool)

(assert (=> b!2801712 (= c!454293 (<= testedPSize!143 0))))

(declare-fun b!2801713 () Bool)

(assert (=> b!2801713 (= e!1770395 (tuple2!33207 Nil!32566 Nil!32566))))

(declare-fun d!813953 () Bool)

(assert (=> d!813953 e!1770393))

(declare-fun res!1167515 () Bool)

(assert (=> d!813953 (=> (not res!1167515) (not e!1770393))))

(assert (=> d!813953 (= res!1167515 (= (++!8028 (_1!19676 lt!1001595) (_2!19676 lt!1001595)) (list!12220 totalInput!758)))))

(assert (=> d!813953 (= lt!1001595 e!1770395)))

(declare-fun c!454292 () Bool)

(assert (=> d!813953 (= c!454292 ((_ is Nil!32566) (list!12220 totalInput!758)))))

(assert (=> d!813953 (= (splitAtIndex!76 (list!12220 totalInput!758) testedPSize!143) lt!1001595)))

(declare-fun b!2801714 () Bool)

(assert (=> b!2801714 (= e!1770394 (tuple2!33207 Nil!32566 (list!12220 totalInput!758)))))

(assert (= (and d!813953 c!454292) b!2801713))

(assert (= (and d!813953 (not c!454292)) b!2801712))

(assert (= (and b!2801712 c!454293) b!2801714))

(assert (= (and b!2801712 (not c!454293)) b!2801709))

(assert (= (and d!813953 res!1167515) b!2801711))

(assert (= (and b!2801711 res!1167514) b!2801710))

(declare-fun m!3231439 () Bool)

(assert (=> b!2801709 m!3231439))

(assert (=> b!2801710 m!3230627))

(declare-fun m!3231441 () Bool)

(assert (=> b!2801710 m!3231441))

(assert (=> b!2801711 m!3230627))

(declare-fun m!3231443 () Bool)

(assert (=> b!2801711 m!3231443))

(declare-fun m!3231445 () Bool)

(assert (=> d!813953 m!3231445))

(assert (=> b!2801190 d!813953))

(assert (=> b!2801190 d!813631))

(declare-fun b!2801717 () Bool)

(declare-fun e!1770397 () List!32666)

(assert (=> b!2801717 (= e!1770397 (list!12222 (xs!13194 (c!454126 totalInput!758))))))

(declare-fun b!2801715 () Bool)

(declare-fun e!1770396 () List!32666)

(assert (=> b!2801715 (= e!1770396 Nil!32566)))

(declare-fun b!2801718 () Bool)

(assert (=> b!2801718 (= e!1770397 (++!8028 (list!12221 (left!24594 (c!454126 totalInput!758))) (list!12221 (right!24924 (c!454126 totalInput!758)))))))

(declare-fun d!813955 () Bool)

(declare-fun c!454294 () Bool)

(assert (=> d!813955 (= c!454294 ((_ is Empty!10082) (c!454126 totalInput!758)))))

(assert (=> d!813955 (= (list!12221 (c!454126 totalInput!758)) e!1770396)))

(declare-fun b!2801716 () Bool)

(assert (=> b!2801716 (= e!1770396 e!1770397)))

(declare-fun c!454295 () Bool)

(assert (=> b!2801716 (= c!454295 ((_ is Leaf!15363) (c!454126 totalInput!758)))))

(assert (= (and d!813955 c!454294) b!2801715))

(assert (= (and d!813955 (not c!454294)) b!2801716))

(assert (= (and b!2801716 c!454295) b!2801717))

(assert (= (and b!2801716 (not c!454295)) b!2801718))

(assert (=> b!2801717 m!3231030))

(assert (=> b!2801718 m!3230994))

(assert (=> b!2801718 m!3230996))

(assert (=> b!2801718 m!3230994))

(assert (=> b!2801718 m!3230996))

(declare-fun m!3231447 () Bool)

(assert (=> b!2801718 m!3231447))

(assert (=> d!813631 d!813955))

(declare-fun bs!515969 () Bool)

(declare-fun d!813957 () Bool)

(assert (= bs!515969 (and d!813957 d!813789)))

(declare-fun lambda!102946 () Int)

(assert (=> bs!515969 (= lambda!102946 lambda!102923)))

(declare-fun bs!515970 () Bool)

(assert (= bs!515970 (and d!813957 d!813749)))

(assert (=> bs!515970 (= lambda!102946 lambda!102908)))

(declare-fun bs!515971 () Bool)

(assert (= bs!515971 (and d!813957 d!813619)))

(assert (=> bs!515971 (= lambda!102946 lambda!102878)))

(declare-fun bs!515972 () Bool)

(assert (= bs!515972 (and d!813957 d!813853)))

(assert (=> bs!515972 (= lambda!102946 lambda!102931)))

(declare-fun bs!515973 () Bool)

(assert (= bs!515973 (and d!813957 d!813923)))

(assert (=> bs!515973 (= lambda!102946 lambda!102941)))

(declare-fun bs!515974 () Bool)

(assert (= bs!515974 (and d!813957 d!813947)))

(assert (=> bs!515974 (= lambda!102946 lambda!102945)))

(declare-fun bs!515975 () Bool)

(assert (= bs!515975 (and d!813957 d!813921)))

(assert (=> bs!515975 (= lambda!102946 lambda!102940)))

(declare-fun bs!515976 () Bool)

(assert (= bs!515976 (and d!813957 d!813801)))

(assert (=> bs!515976 (= lambda!102946 lambda!102927)))

(declare-fun bs!515977 () Bool)

(assert (= bs!515977 (and d!813957 d!813755)))

(assert (=> bs!515977 (= lambda!102946 lambda!102909)))

(declare-fun bs!515978 () Bool)

(assert (= bs!515978 (and d!813957 d!813885)))

(assert (=> bs!515978 (= lambda!102946 lambda!102936)))

(declare-fun bs!515979 () Bool)

(assert (= bs!515979 (and d!813957 d!813727)))

(assert (=> bs!515979 (= lambda!102946 lambda!102903)))

(declare-fun bs!515980 () Bool)

(assert (= bs!515980 (and d!813957 d!813791)))

(assert (=> bs!515980 (= lambda!102946 lambda!102924)))

(declare-fun bs!515981 () Bool)

(assert (= bs!515981 (and d!813957 d!813851)))

(assert (=> bs!515981 (= lambda!102946 lambda!102930)))

(declare-fun bs!515982 () Bool)

(assert (= bs!515982 (and d!813957 d!813895)))

(assert (=> bs!515982 (= lambda!102946 lambda!102938)))

(declare-fun bs!515983 () Bool)

(assert (= bs!515983 (and d!813957 d!813881)))

(assert (=> bs!515983 (= lambda!102946 lambda!102935)))

(declare-fun bs!515984 () Bool)

(assert (= bs!515984 (and d!813957 d!813819)))

(assert (=> bs!515984 (= lambda!102946 lambda!102928)))

(declare-fun bs!515985 () Bool)

(assert (= bs!515985 (and d!813957 d!813799)))

(assert (=> bs!515985 (= lambda!102946 lambda!102926)))

(declare-fun bs!515986 () Bool)

(assert (= bs!515986 (and d!813957 d!813941)))

(assert (=> bs!515986 (= lambda!102946 lambda!102944)))

(declare-fun bs!515987 () Bool)

(assert (= bs!515987 (and d!813957 d!813893)))

(assert (=> bs!515987 (= lambda!102946 lambda!102937)))

(declare-fun bs!515988 () Bool)

(assert (= bs!515988 (and d!813957 d!813793)))

(assert (=> bs!515988 (= lambda!102946 lambda!102925)))

(declare-fun bs!515989 () Bool)

(assert (= bs!515989 (and d!813957 d!813743)))

(assert (=> bs!515989 (= lambda!102946 lambda!102907)))

(declare-fun bs!515990 () Bool)

(assert (= bs!515990 (and d!813957 d!813905)))

(assert (=> bs!515990 (= lambda!102946 lambda!102939)))

(declare-fun bs!515991 () Bool)

(assert (= bs!515991 (and d!813957 d!813931)))

(assert (=> bs!515991 (= lambda!102946 lambda!102943)))

(declare-fun bs!515992 () Bool)

(assert (= bs!515992 (and d!813957 d!813925)))

(assert (=> bs!515992 (= lambda!102946 lambda!102942)))

(declare-fun bs!515993 () Bool)

(assert (= bs!515993 (and d!813957 d!813849)))

(assert (=> bs!515993 (= lambda!102946 lambda!102929)))

(assert (=> d!813957 (= (inv!44232 setElem!24547) (forall!6710 (exprs!2943 setElem!24547) lambda!102946))))

(declare-fun bs!515994 () Bool)

(assert (= bs!515994 d!813957))

(declare-fun m!3231449 () Bool)

(assert (=> bs!515994 m!3231449))

(assert (=> setNonEmpty!24548 d!813957))

(assert (=> b!2801079 d!813715))

(declare-fun tp!892788 () Bool)

(declare-fun b!2801719 () Bool)

(declare-fun tp!892787 () Bool)

(declare-fun e!1770399 () Bool)

(assert (=> b!2801719 (= e!1770399 (and (inv!44228 (left!24594 (left!24594 (c!454126 totalInput!758)))) tp!892787 (inv!44228 (right!24924 (left!24594 (c!454126 totalInput!758)))) tp!892788))))

(declare-fun b!2801721 () Bool)

(declare-fun e!1770398 () Bool)

(declare-fun tp!892786 () Bool)

(assert (=> b!2801721 (= e!1770398 tp!892786)))

(declare-fun b!2801720 () Bool)

(assert (=> b!2801720 (= e!1770399 (and (inv!44235 (xs!13194 (left!24594 (c!454126 totalInput!758)))) e!1770398))))

(assert (=> b!2801286 (= tp!892725 (and (inv!44228 (left!24594 (c!454126 totalInput!758))) e!1770399))))

(assert (= (and b!2801286 ((_ is Node!10082) (left!24594 (c!454126 totalInput!758)))) b!2801719))

(assert (= b!2801720 b!2801721))

(assert (= (and b!2801286 ((_ is Leaf!15363) (left!24594 (c!454126 totalInput!758)))) b!2801720))

(declare-fun m!3231451 () Bool)

(assert (=> b!2801719 m!3231451))

(declare-fun m!3231453 () Bool)

(assert (=> b!2801719 m!3231453))

(declare-fun m!3231455 () Bool)

(assert (=> b!2801720 m!3231455))

(assert (=> b!2801286 m!3230925))

(declare-fun tp!892790 () Bool)

(declare-fun b!2801722 () Bool)

(declare-fun e!1770401 () Bool)

(declare-fun tp!892791 () Bool)

(assert (=> b!2801722 (= e!1770401 (and (inv!44228 (left!24594 (right!24924 (c!454126 totalInput!758)))) tp!892790 (inv!44228 (right!24924 (right!24924 (c!454126 totalInput!758)))) tp!892791))))

(declare-fun b!2801724 () Bool)

(declare-fun e!1770400 () Bool)

(declare-fun tp!892789 () Bool)

(assert (=> b!2801724 (= e!1770400 tp!892789)))

(declare-fun b!2801723 () Bool)

(assert (=> b!2801723 (= e!1770401 (and (inv!44235 (xs!13194 (right!24924 (c!454126 totalInput!758)))) e!1770400))))

(assert (=> b!2801286 (= tp!892726 (and (inv!44228 (right!24924 (c!454126 totalInput!758))) e!1770401))))

(assert (= (and b!2801286 ((_ is Node!10082) (right!24924 (c!454126 totalInput!758)))) b!2801722))

(assert (= b!2801723 b!2801724))

(assert (= (and b!2801286 ((_ is Leaf!15363) (right!24924 (c!454126 totalInput!758)))) b!2801723))

(declare-fun m!3231457 () Bool)

(assert (=> b!2801722 m!3231457))

(declare-fun m!3231459 () Bool)

(assert (=> b!2801722 m!3231459))

(declare-fun m!3231461 () Bool)

(assert (=> b!2801723 m!3231461))

(assert (=> b!2801286 m!3230927))

(declare-fun b!2801725 () Bool)

(declare-fun e!1770402 () Bool)

(declare-fun tp!892792 () Bool)

(declare-fun tp!892793 () Bool)

(assert (=> b!2801725 (= e!1770402 (and tp!892792 tp!892793))))

(assert (=> b!2801296 (= tp!892734 e!1770402)))

(assert (= (and b!2801296 ((_ is Cons!32565) (exprs!2943 setElem!24550))) b!2801725))

(declare-fun b!2801726 () Bool)

(declare-fun e!1770403 () Bool)

(declare-fun tp!892794 () Bool)

(declare-fun tp!892795 () Bool)

(assert (=> b!2801726 (= e!1770403 (and tp!892794 tp!892795))))

(assert (=> b!2801297 (= tp!892736 e!1770403)))

(assert (= (and b!2801297 ((_ is Cons!32565) (exprs!2943 (_1!19669 (_1!19670 (h!37987 mapDefault!18359)))))) b!2801726))

(declare-fun condMapEmpty!18373 () Bool)

(declare-fun mapDefault!18373 () List!32668)

(assert (=> mapNonEmpty!18366 (= condMapEmpty!18373 (= mapRest!18366 ((as const (Array (_ BitVec 32) List!32668)) mapDefault!18373)))))

(declare-fun e!1770406 () Bool)

(declare-fun mapRes!18373 () Bool)

(assert (=> mapNonEmpty!18366 (= tp!892707 (and e!1770406 mapRes!18373))))

(declare-fun b!2801727 () Bool)

(declare-fun e!1770408 () Bool)

(declare-fun tp!892802 () Bool)

(assert (=> b!2801727 (= e!1770408 tp!892802)))

(declare-fun setRes!24554 () Bool)

(declare-fun b!2801728 () Bool)

(declare-fun tp!892804 () Bool)

(declare-fun tp!892805 () Bool)

(assert (=> b!2801728 (= e!1770406 (and tp!892804 (inv!44232 (_2!19671 (_1!19672 (h!37988 mapDefault!18373)))) e!1770408 tp_is_empty!14263 setRes!24554 tp!892805))))

(declare-fun condSetEmpty!24554 () Bool)

(assert (=> b!2801728 (= condSetEmpty!24554 (= (_2!19672 (h!37988 mapDefault!18373)) ((as const (Array Context!4886 Bool)) false)))))

(declare-fun b!2801729 () Bool)

(declare-fun e!1770407 () Bool)

(declare-fun tp!892796 () Bool)

(assert (=> b!2801729 (= e!1770407 tp!892796)))

(declare-fun mapIsEmpty!18373 () Bool)

(assert (=> mapIsEmpty!18373 mapRes!18373))

(declare-fun setRes!24555 () Bool)

(declare-fun setElem!24555 () Context!4886)

(declare-fun e!1770409 () Bool)

(declare-fun tp!892800 () Bool)

(declare-fun setNonEmpty!24554 () Bool)

(assert (=> setNonEmpty!24554 (= setRes!24555 (and tp!892800 (inv!44232 setElem!24555) e!1770409))))

(declare-fun mapValue!18373 () List!32668)

(declare-fun setRest!24554 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24554 (= (_2!19672 (h!37988 mapValue!18373)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24555 true) setRest!24554))))

(declare-fun setIsEmpty!24554 () Bool)

(assert (=> setIsEmpty!24554 setRes!24554))

(declare-fun tp!892799 () Bool)

(declare-fun tp!892798 () Bool)

(declare-fun e!1770404 () Bool)

(declare-fun b!2801730 () Bool)

(assert (=> b!2801730 (= e!1770404 (and tp!892799 (inv!44232 (_2!19671 (_1!19672 (h!37988 mapValue!18373)))) e!1770407 tp_is_empty!14263 setRes!24555 tp!892798))))

(declare-fun condSetEmpty!24555 () Bool)

(assert (=> b!2801730 (= condSetEmpty!24555 (= (_2!19672 (h!37988 mapValue!18373)) ((as const (Array Context!4886 Bool)) false)))))

(declare-fun mapNonEmpty!18373 () Bool)

(declare-fun tp!892801 () Bool)

(assert (=> mapNonEmpty!18373 (= mapRes!18373 (and tp!892801 e!1770404))))

(declare-fun mapRest!18373 () (Array (_ BitVec 32) List!32668))

(declare-fun mapKey!18373 () (_ BitVec 32))

(assert (=> mapNonEmpty!18373 (= mapRest!18366 (store mapRest!18373 mapKey!18373 mapValue!18373))))

(declare-fun setIsEmpty!24555 () Bool)

(assert (=> setIsEmpty!24555 setRes!24555))

(declare-fun b!2801731 () Bool)

(declare-fun tp!892806 () Bool)

(assert (=> b!2801731 (= e!1770409 tp!892806)))

(declare-fun b!2801732 () Bool)

(declare-fun e!1770405 () Bool)

(declare-fun tp!892803 () Bool)

(assert (=> b!2801732 (= e!1770405 tp!892803)))

(declare-fun tp!892797 () Bool)

(declare-fun setNonEmpty!24555 () Bool)

(declare-fun setElem!24554 () Context!4886)

(assert (=> setNonEmpty!24555 (= setRes!24554 (and tp!892797 (inv!44232 setElem!24554) e!1770405))))

(declare-fun setRest!24555 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24555 (= (_2!19672 (h!37988 mapDefault!18373)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24554 true) setRest!24555))))

(assert (= (and mapNonEmpty!18366 condMapEmpty!18373) mapIsEmpty!18373))

(assert (= (and mapNonEmpty!18366 (not condMapEmpty!18373)) mapNonEmpty!18373))

(assert (= b!2801730 b!2801729))

(assert (= (and b!2801730 condSetEmpty!24555) setIsEmpty!24555))

(assert (= (and b!2801730 (not condSetEmpty!24555)) setNonEmpty!24554))

(assert (= setNonEmpty!24554 b!2801731))

(assert (= (and mapNonEmpty!18373 ((_ is Cons!32568) mapValue!18373)) b!2801730))

(assert (= b!2801728 b!2801727))

(assert (= (and b!2801728 condSetEmpty!24554) setIsEmpty!24554))

(assert (= (and b!2801728 (not condSetEmpty!24554)) setNonEmpty!24555))

(assert (= setNonEmpty!24555 b!2801732))

(assert (= (and mapNonEmpty!18366 ((_ is Cons!32568) mapDefault!18373)) b!2801728))

(declare-fun m!3231463 () Bool)

(assert (=> mapNonEmpty!18373 m!3231463))

(declare-fun m!3231465 () Bool)

(assert (=> b!2801730 m!3231465))

(declare-fun m!3231467 () Bool)

(assert (=> setNonEmpty!24555 m!3231467))

(declare-fun m!3231469 () Bool)

(assert (=> setNonEmpty!24554 m!3231469))

(declare-fun m!3231471 () Bool)

(assert (=> b!2801728 m!3231471))

(declare-fun b!2801733 () Bool)

(declare-fun e!1770410 () Bool)

(declare-fun tp!892807 () Bool)

(declare-fun tp!892808 () Bool)

(assert (=> b!2801733 (= e!1770410 (and tp!892807 tp!892808))))

(assert (=> b!2801273 (= tp!892712 e!1770410)))

(assert (= (and b!2801273 ((_ is Cons!32565) (exprs!2943 setElem!24548))) b!2801733))

(declare-fun b!2801734 () Bool)

(declare-fun e!1770411 () Bool)

(declare-fun tp!892809 () Bool)

(assert (=> b!2801734 (= e!1770411 (and tp_is_empty!14263 tp!892809))))

(assert (=> b!2801288 (= tp!892724 e!1770411)))

(assert (= (and b!2801288 ((_ is Cons!32566) (innerList!10142 (xs!13194 (c!454126 totalInput!758))))) b!2801734))

(declare-fun condSetEmpty!24556 () Bool)

(assert (=> setNonEmpty!24536 (= condSetEmpty!24556 (= setRest!24536 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24556 () Bool)

(assert (=> setNonEmpty!24536 (= tp!892647 setRes!24556)))

(declare-fun setIsEmpty!24556 () Bool)

(assert (=> setIsEmpty!24556 setRes!24556))

(declare-fun e!1770412 () Bool)

(declare-fun tp!892811 () Bool)

(declare-fun setElem!24556 () Context!4886)

(declare-fun setNonEmpty!24556 () Bool)

(assert (=> setNonEmpty!24556 (= setRes!24556 (and tp!892811 (inv!44232 setElem!24556) e!1770412))))

(declare-fun setRest!24556 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24556 (= setRest!24536 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24556 true) setRest!24556))))

(declare-fun b!2801735 () Bool)

(declare-fun tp!892810 () Bool)

(assert (=> b!2801735 (= e!1770412 tp!892810)))

(assert (= (and setNonEmpty!24536 condSetEmpty!24556) setIsEmpty!24556))

(assert (= (and setNonEmpty!24536 (not condSetEmpty!24556)) setNonEmpty!24556))

(assert (= setNonEmpty!24556 b!2801735))

(declare-fun m!3231473 () Bool)

(assert (=> setNonEmpty!24556 m!3231473))

(declare-fun b!2801748 () Bool)

(declare-fun e!1770415 () Bool)

(declare-fun tp!892825 () Bool)

(assert (=> b!2801748 (= e!1770415 tp!892825)))

(assert (=> b!2801270 (= tp!892710 e!1770415)))

(declare-fun b!2801746 () Bool)

(assert (=> b!2801746 (= e!1770415 tp_is_empty!14263)))

(declare-fun b!2801749 () Bool)

(declare-fun tp!892826 () Bool)

(declare-fun tp!892824 () Bool)

(assert (=> b!2801749 (= e!1770415 (and tp!892826 tp!892824))))

(declare-fun b!2801747 () Bool)

(declare-fun tp!892822 () Bool)

(declare-fun tp!892823 () Bool)

(assert (=> b!2801747 (= e!1770415 (and tp!892822 tp!892823))))

(assert (= (and b!2801270 ((_ is ElementMatch!8225) (_1!19671 (_1!19672 (h!37988 mapDefault!18366))))) b!2801746))

(assert (= (and b!2801270 ((_ is Concat!13313) (_1!19671 (_1!19672 (h!37988 mapDefault!18366))))) b!2801747))

(assert (= (and b!2801270 ((_ is Star!8225) (_1!19671 (_1!19672 (h!37988 mapDefault!18366))))) b!2801748))

(assert (= (and b!2801270 ((_ is Union!8225) (_1!19671 (_1!19672 (h!37988 mapDefault!18366))))) b!2801749))

(declare-fun b!2801750 () Bool)

(declare-fun e!1770416 () Bool)

(declare-fun tp!892830 () Bool)

(assert (=> b!2801750 (= e!1770416 tp!892830)))

(declare-fun setNonEmpty!24557 () Bool)

(declare-fun setElem!24557 () Context!4886)

(declare-fun setRes!24557 () Bool)

(declare-fun tp!892829 () Bool)

(assert (=> setNonEmpty!24557 (= setRes!24557 (and tp!892829 (inv!44232 setElem!24557) e!1770416))))

(declare-fun setRest!24557 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24557 (= (_2!19672 (h!37988 (t!228833 mapDefault!18366))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24557 true) setRest!24557))))

(declare-fun b!2801751 () Bool)

(declare-fun e!1770418 () Bool)

(declare-fun tp!892828 () Bool)

(assert (=> b!2801751 (= e!1770418 tp!892828)))

(declare-fun setIsEmpty!24557 () Bool)

(assert (=> setIsEmpty!24557 setRes!24557))

(declare-fun e!1770417 () Bool)

(declare-fun b!2801752 () Bool)

(declare-fun tp!892831 () Bool)

(declare-fun tp!892827 () Bool)

(assert (=> b!2801752 (= e!1770417 (and tp!892827 (inv!44232 (_2!19671 (_1!19672 (h!37988 (t!228833 mapDefault!18366))))) e!1770418 tp_is_empty!14263 setRes!24557 tp!892831))))

(declare-fun condSetEmpty!24557 () Bool)

(assert (=> b!2801752 (= condSetEmpty!24557 (= (_2!19672 (h!37988 (t!228833 mapDefault!18366))) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801270 (= tp!892711 e!1770417)))

(assert (= b!2801752 b!2801751))

(assert (= (and b!2801752 condSetEmpty!24557) setIsEmpty!24557))

(assert (= (and b!2801752 (not condSetEmpty!24557)) setNonEmpty!24557))

(assert (= setNonEmpty!24557 b!2801750))

(assert (= (and b!2801270 ((_ is Cons!32568) (t!228833 mapDefault!18366))) b!2801752))

(declare-fun m!3231475 () Bool)

(assert (=> setNonEmpty!24557 m!3231475))

(declare-fun m!3231477 () Bool)

(assert (=> b!2801752 m!3231477))

(declare-fun b!2801767 () Bool)

(declare-fun e!1770434 () Bool)

(declare-fun lt!1001602 () MutLongMap!4040)

(assert (=> b!2801767 (= e!1770434 ((_ is LongMap!4040) lt!1001602))))

(assert (=> b!2801767 (= lt!1001602 (v!34168 (underlying!8284 (cache!4089 (_2!19673 (derivationStepZipperMem!117 z!3684 lt!1001359 cacheUp!890 cacheDown!1009))))))))

(declare-fun b!2801768 () Bool)

(declare-fun e!1770431 () Bool)

(declare-fun e!1770436 () Bool)

(assert (=> b!2801768 (= e!1770431 e!1770436)))

(declare-fun e!1770433 () Bool)

(declare-fun e!1770432 () Bool)

(assert (=> d!813611 (= true (and e!1770433 e!1770432))))

(declare-fun b!2801769 () Bool)

(assert (=> b!2801769 (= e!1770432 e!1770431)))

(declare-fun b!2801770 () Bool)

(declare-fun e!1770435 () Bool)

(assert (=> b!2801770 (= e!1770435 e!1770434)))

(declare-fun b!2801771 () Bool)

(declare-fun lt!1001601 () MutLongMap!4041)

(assert (=> b!2801771 (= e!1770436 ((_ is LongMap!4041) lt!1001601))))

(assert (=> b!2801771 (= lt!1001601 (v!34170 (underlying!8286 (cache!4090 (_3!3072 (derivationStepZipperMem!117 z!3684 lt!1001359 cacheUp!890 cacheDown!1009))))))))

(declare-fun b!2801772 () Bool)

(assert (=> b!2801772 (= e!1770433 e!1770435)))

(assert (= b!2801770 b!2801767))

(assert (= (and b!2801772 ((_ is HashMap!3946) (cache!4089 (_2!19673 (derivationStepZipperMem!117 z!3684 lt!1001359 cacheUp!890 cacheDown!1009))))) b!2801770))

(assert (= d!813611 b!2801772))

(assert (= b!2801768 b!2801771))

(assert (= (and b!2801769 ((_ is HashMap!3947) (cache!4090 (_3!3072 (derivationStepZipperMem!117 z!3684 lt!1001359 cacheUp!890 cacheDown!1009))))) b!2801768))

(assert (= d!813611 b!2801769))

(declare-fun condSetEmpty!24558 () Bool)

(assert (=> setNonEmpty!24526 (= condSetEmpty!24558 (= setRest!24526 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24558 () Bool)

(assert (=> setNonEmpty!24526 (= tp!892614 setRes!24558)))

(declare-fun setIsEmpty!24558 () Bool)

(assert (=> setIsEmpty!24558 setRes!24558))

(declare-fun setElem!24558 () Context!4886)

(declare-fun setNonEmpty!24558 () Bool)

(declare-fun e!1770437 () Bool)

(declare-fun tp!892833 () Bool)

(assert (=> setNonEmpty!24558 (= setRes!24558 (and tp!892833 (inv!44232 setElem!24558) e!1770437))))

(declare-fun setRest!24558 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24558 (= setRest!24526 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24558 true) setRest!24558))))

(declare-fun b!2801773 () Bool)

(declare-fun tp!892832 () Bool)

(assert (=> b!2801773 (= e!1770437 tp!892832)))

(assert (= (and setNonEmpty!24526 condSetEmpty!24558) setIsEmpty!24558))

(assert (= (and setNonEmpty!24526 (not condSetEmpty!24558)) setNonEmpty!24558))

(assert (= setNonEmpty!24558 b!2801773))

(declare-fun m!3231479 () Bool)

(assert (=> setNonEmpty!24558 m!3231479))

(declare-fun b!2801774 () Bool)

(declare-fun e!1770438 () Bool)

(declare-fun tp!892834 () Bool)

(declare-fun tp!892835 () Bool)

(assert (=> b!2801774 (= e!1770438 (and tp!892834 tp!892835))))

(assert (=> b!2801244 (= tp!892663 e!1770438)))

(assert (= (and b!2801244 ((_ is Cons!32565) (exprs!2943 setElem!24539))) b!2801774))

(declare-fun b!2801775 () Bool)

(declare-fun e!1770439 () Bool)

(declare-fun tp!892836 () Bool)

(declare-fun tp!892837 () Bool)

(assert (=> b!2801775 (= e!1770439 (and tp!892836 tp!892837))))

(assert (=> b!2801245 (= tp!892665 e!1770439)))

(assert (= (and b!2801245 ((_ is Cons!32565) (exprs!2943 (_1!19669 (_1!19670 (h!37987 mapValue!18359)))))) b!2801775))

(declare-fun condSetEmpty!24559 () Bool)

(assert (=> setNonEmpty!24540 (= condSetEmpty!24559 (= setRest!24540 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24559 () Bool)

(assert (=> setNonEmpty!24540 (= tp!892670 setRes!24559)))

(declare-fun setIsEmpty!24559 () Bool)

(assert (=> setIsEmpty!24559 setRes!24559))

(declare-fun tp!892839 () Bool)

(declare-fun setNonEmpty!24559 () Bool)

(declare-fun setElem!24559 () Context!4886)

(declare-fun e!1770440 () Bool)

(assert (=> setNonEmpty!24559 (= setRes!24559 (and tp!892839 (inv!44232 setElem!24559) e!1770440))))

(declare-fun setRest!24559 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24559 (= setRest!24540 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24559 true) setRest!24559))))

(declare-fun b!2801776 () Bool)

(declare-fun tp!892838 () Bool)

(assert (=> b!2801776 (= e!1770440 tp!892838)))

(assert (= (and setNonEmpty!24540 condSetEmpty!24559) setIsEmpty!24559))

(assert (= (and setNonEmpty!24540 (not condSetEmpty!24559)) setNonEmpty!24559))

(assert (= setNonEmpty!24559 b!2801776))

(declare-fun m!3231481 () Bool)

(assert (=> setNonEmpty!24559 m!3231481))

(declare-fun b!2801777 () Bool)

(declare-fun e!1770441 () Bool)

(declare-fun tp!892840 () Bool)

(assert (=> b!2801777 (= e!1770441 (and tp_is_empty!14263 tp!892840))))

(assert (=> b!2801289 (= tp!892727 e!1770441)))

(assert (= (and b!2801289 ((_ is Cons!32566) (t!228831 (t!228831 testedP!183)))) b!2801777))

(declare-fun condSetEmpty!24560 () Bool)

(assert (=> setNonEmpty!24535 (= condSetEmpty!24560 (= setRest!24535 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24560 () Bool)

(assert (=> setNonEmpty!24535 (= tp!892646 setRes!24560)))

(declare-fun setIsEmpty!24560 () Bool)

(assert (=> setIsEmpty!24560 setRes!24560))

(declare-fun setElem!24560 () Context!4886)

(declare-fun e!1770442 () Bool)

(declare-fun tp!892842 () Bool)

(declare-fun setNonEmpty!24560 () Bool)

(assert (=> setNonEmpty!24560 (= setRes!24560 (and tp!892842 (inv!44232 setElem!24560) e!1770442))))

(declare-fun setRest!24560 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24560 (= setRest!24535 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24560 true) setRest!24560))))

(declare-fun b!2801778 () Bool)

(declare-fun tp!892841 () Bool)

(assert (=> b!2801778 (= e!1770442 tp!892841)))

(assert (= (and setNonEmpty!24535 condSetEmpty!24560) setIsEmpty!24560))

(assert (= (and setNonEmpty!24535 (not condSetEmpty!24560)) setNonEmpty!24560))

(assert (= setNonEmpty!24560 b!2801778))

(declare-fun m!3231483 () Bool)

(assert (=> setNonEmpty!24560 m!3231483))

(declare-fun condSetEmpty!24561 () Bool)

(assert (=> setNonEmpty!24542 (= condSetEmpty!24561 (= setRest!24542 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24561 () Bool)

(assert (=> setNonEmpty!24542 (= tp!892677 setRes!24561)))

(declare-fun setIsEmpty!24561 () Bool)

(assert (=> setIsEmpty!24561 setRes!24561))

(declare-fun setNonEmpty!24561 () Bool)

(declare-fun e!1770443 () Bool)

(declare-fun tp!892844 () Bool)

(declare-fun setElem!24561 () Context!4886)

(assert (=> setNonEmpty!24561 (= setRes!24561 (and tp!892844 (inv!44232 setElem!24561) e!1770443))))

(declare-fun setRest!24561 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24561 (= setRest!24542 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24561 true) setRest!24561))))

(declare-fun b!2801779 () Bool)

(declare-fun tp!892843 () Bool)

(assert (=> b!2801779 (= e!1770443 tp!892843)))

(assert (= (and setNonEmpty!24542 condSetEmpty!24561) setIsEmpty!24561))

(assert (= (and setNonEmpty!24542 (not condSetEmpty!24561)) setNonEmpty!24561))

(assert (= setNonEmpty!24561 b!2801779))

(declare-fun m!3231485 () Bool)

(assert (=> setNonEmpty!24561 m!3231485))

(declare-fun b!2801780 () Bool)

(declare-fun e!1770444 () Bool)

(declare-fun tp!892845 () Bool)

(declare-fun tp!892846 () Bool)

(assert (=> b!2801780 (= e!1770444 (and tp!892845 tp!892846))))

(assert (=> b!2801231 (= tp!892650 e!1770444)))

(assert (= (and b!2801231 ((_ is Cons!32565) (exprs!2943 setElem!24535))) b!2801780))

(declare-fun b!2801781 () Bool)

(declare-fun e!1770445 () Bool)

(declare-fun tp!892847 () Bool)

(declare-fun tp!892848 () Bool)

(assert (=> b!2801781 (= e!1770445 (and tp!892847 tp!892848))))

(assert (=> b!2801250 (= tp!892671 e!1770445)))

(assert (= (and b!2801250 ((_ is Cons!32565) (exprs!2943 setElem!24541))) b!2801781))

(declare-fun b!2801783 () Bool)

(declare-fun e!1770446 () Bool)

(declare-fun tp!892849 () Bool)

(assert (=> b!2801783 (= e!1770446 tp!892849)))

(declare-fun setIsEmpty!24562 () Bool)

(declare-fun setRes!24562 () Bool)

(assert (=> setIsEmpty!24562 setRes!24562))

(declare-fun b!2801784 () Bool)

(declare-fun e!1770447 () Bool)

(declare-fun tp!892851 () Bool)

(assert (=> b!2801784 (= e!1770447 tp!892851)))

(declare-fun setNonEmpty!24562 () Bool)

(declare-fun setElem!24562 () Context!4886)

(declare-fun tp!892852 () Bool)

(assert (=> setNonEmpty!24562 (= setRes!24562 (and tp!892852 (inv!44232 setElem!24562) e!1770446))))

(declare-fun setRest!24562 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24562 (= (_2!19670 (h!37987 (t!228832 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24562 true) setRest!24562))))

(declare-fun e!1770448 () Bool)

(assert (=> b!2801246 (= tp!892668 e!1770448)))

(declare-fun tp!892850 () Bool)

(declare-fun b!2801782 () Bool)

(assert (=> b!2801782 (= e!1770448 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 (t!228832 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))))))) e!1770447 tp_is_empty!14263 setRes!24562 tp!892850))))

(declare-fun condSetEmpty!24562 () Bool)

(assert (=> b!2801782 (= condSetEmpty!24562 (= (_2!19670 (h!37987 (t!228832 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))))) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801782 b!2801784))

(assert (= (and b!2801782 condSetEmpty!24562) setIsEmpty!24562))

(assert (= (and b!2801782 (not condSetEmpty!24562)) setNonEmpty!24562))

(assert (= setNonEmpty!24562 b!2801783))

(assert (= (and b!2801246 ((_ is Cons!32567) (t!228832 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))))) b!2801782))

(declare-fun m!3231487 () Bool)

(assert (=> setNonEmpty!24562 m!3231487))

(declare-fun m!3231489 () Bool)

(assert (=> b!2801782 m!3231489))

(declare-fun b!2801785 () Bool)

(declare-fun e!1770449 () Bool)

(declare-fun tp!892853 () Bool)

(declare-fun tp!892854 () Bool)

(assert (=> b!2801785 (= e!1770449 (and tp!892853 tp!892854))))

(assert (=> b!2801251 (= tp!892673 e!1770449)))

(assert (= (and b!2801251 ((_ is Cons!32565) (exprs!2943 (_1!19669 (_1!19670 (h!37987 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))))))) b!2801785))

(declare-fun condSetEmpty!24563 () Bool)

(assert (=> setNonEmpty!24527 (= condSetEmpty!24563 (= setRest!24527 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24563 () Bool)

(assert (=> setNonEmpty!24527 (= tp!892619 setRes!24563)))

(declare-fun setIsEmpty!24563 () Bool)

(assert (=> setIsEmpty!24563 setRes!24563))

(declare-fun e!1770450 () Bool)

(declare-fun tp!892856 () Bool)

(declare-fun setElem!24563 () Context!4886)

(declare-fun setNonEmpty!24563 () Bool)

(assert (=> setNonEmpty!24563 (= setRes!24563 (and tp!892856 (inv!44232 setElem!24563) e!1770450))))

(declare-fun setRest!24563 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24563 (= setRest!24527 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24563 true) setRest!24563))))

(declare-fun b!2801786 () Bool)

(declare-fun tp!892855 () Bool)

(assert (=> b!2801786 (= e!1770450 tp!892855)))

(assert (= (and setNonEmpty!24527 condSetEmpty!24563) setIsEmpty!24563))

(assert (= (and setNonEmpty!24527 (not condSetEmpty!24563)) setNonEmpty!24563))

(assert (= setNonEmpty!24563 b!2801786))

(declare-fun m!3231491 () Bool)

(assert (=> setNonEmpty!24563 m!3231491))

(declare-fun condSetEmpty!24564 () Bool)

(assert (=> setNonEmpty!24530 (= condSetEmpty!24564 (= setRest!24530 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24564 () Bool)

(assert (=> setNonEmpty!24530 (= tp!892627 setRes!24564)))

(declare-fun setIsEmpty!24564 () Bool)

(assert (=> setIsEmpty!24564 setRes!24564))

(declare-fun e!1770451 () Bool)

(declare-fun tp!892858 () Bool)

(declare-fun setElem!24564 () Context!4886)

(declare-fun setNonEmpty!24564 () Bool)

(assert (=> setNonEmpty!24564 (= setRes!24564 (and tp!892858 (inv!44232 setElem!24564) e!1770451))))

(declare-fun setRest!24564 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24564 (= setRest!24530 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24564 true) setRest!24564))))

(declare-fun b!2801787 () Bool)

(declare-fun tp!892857 () Bool)

(assert (=> b!2801787 (= e!1770451 tp!892857)))

(assert (= (and setNonEmpty!24530 condSetEmpty!24564) setIsEmpty!24564))

(assert (= (and setNonEmpty!24530 (not condSetEmpty!24564)) setNonEmpty!24564))

(assert (= setNonEmpty!24564 b!2801787))

(declare-fun m!3231493 () Bool)

(assert (=> setNonEmpty!24564 m!3231493))

(declare-fun b!2801788 () Bool)

(declare-fun e!1770456 () Bool)

(declare-fun tp!892865 () Bool)

(assert (=> b!2801788 (= e!1770456 tp!892865)))

(declare-fun mapNonEmpty!18374 () Bool)

(declare-fun mapRes!18374 () Bool)

(declare-fun tp!892866 () Bool)

(declare-fun e!1770455 () Bool)

(assert (=> mapNonEmpty!18374 (= mapRes!18374 (and tp!892866 e!1770455))))

(declare-fun mapKey!18374 () (_ BitVec 32))

(declare-fun mapValue!18374 () List!32667)

(declare-fun mapRest!18374 () (Array (_ BitVec 32) List!32667))

(assert (=> mapNonEmpty!18374 (= mapRest!18363 (store mapRest!18374 mapKey!18374 mapValue!18374))))

(declare-fun b!2801789 () Bool)

(declare-fun e!1770453 () Bool)

(declare-fun tp!892867 () Bool)

(assert (=> b!2801789 (= e!1770453 tp!892867)))

(declare-fun setRes!24566 () Bool)

(declare-fun setNonEmpty!24565 () Bool)

(declare-fun setElem!24566 () Context!4886)

(declare-fun tp!892859 () Bool)

(assert (=> setNonEmpty!24565 (= setRes!24566 (and tp!892859 (inv!44232 setElem!24566) e!1770456))))

(declare-fun setRest!24565 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24565 (= (_2!19670 (h!37987 mapValue!18374)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24566 true) setRest!24565))))

(declare-fun setIsEmpty!24565 () Bool)

(assert (=> setIsEmpty!24565 setRes!24566))

(declare-fun b!2801790 () Bool)

(declare-fun e!1770452 () Bool)

(declare-fun tp!892863 () Bool)

(assert (=> b!2801790 (= e!1770452 tp!892863)))

(declare-fun e!1770454 () Bool)

(declare-fun setRes!24565 () Bool)

(declare-fun tp!892861 () Bool)

(declare-fun mapDefault!18374 () List!32667)

(declare-fun e!1770457 () Bool)

(declare-fun b!2801791 () Bool)

(assert (=> b!2801791 (= e!1770457 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 mapDefault!18374)))) e!1770454 tp_is_empty!14263 setRes!24565 tp!892861))))

(declare-fun condSetEmpty!24565 () Bool)

(assert (=> b!2801791 (= condSetEmpty!24565 (= (_2!19670 (h!37987 mapDefault!18374)) ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setIsEmpty!24566 () Bool)

(assert (=> setIsEmpty!24566 setRes!24565))

(declare-fun b!2801792 () Bool)

(declare-fun tp!892862 () Bool)

(assert (=> b!2801792 (= e!1770454 tp!892862)))

(declare-fun condMapEmpty!18374 () Bool)

(assert (=> mapNonEmpty!18363 (= condMapEmpty!18374 (= mapRest!18363 ((as const (Array (_ BitVec 32) List!32667)) mapDefault!18374)))))

(assert (=> mapNonEmpty!18363 (= tp!892653 (and e!1770457 mapRes!18374))))

(declare-fun tp!892860 () Bool)

(declare-fun setElem!24565 () Context!4886)

(declare-fun setNonEmpty!24566 () Bool)

(assert (=> setNonEmpty!24566 (= setRes!24565 (and tp!892860 (inv!44232 setElem!24565) e!1770452))))

(declare-fun setRest!24566 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24566 (= (_2!19670 (h!37987 mapDefault!18374)) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24565 true) setRest!24566))))

(declare-fun tp!892864 () Bool)

(declare-fun b!2801793 () Bool)

(assert (=> b!2801793 (= e!1770455 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 mapValue!18374)))) e!1770453 tp_is_empty!14263 setRes!24566 tp!892864))))

(declare-fun condSetEmpty!24566 () Bool)

(assert (=> b!2801793 (= condSetEmpty!24566 (= (_2!19670 (h!37987 mapValue!18374)) ((as const (Array Context!4886 Bool)) false)))))

(declare-fun mapIsEmpty!18374 () Bool)

(assert (=> mapIsEmpty!18374 mapRes!18374))

(assert (= (and mapNonEmpty!18363 condMapEmpty!18374) mapIsEmpty!18374))

(assert (= (and mapNonEmpty!18363 (not condMapEmpty!18374)) mapNonEmpty!18374))

(assert (= b!2801793 b!2801789))

(assert (= (and b!2801793 condSetEmpty!24566) setIsEmpty!24565))

(assert (= (and b!2801793 (not condSetEmpty!24566)) setNonEmpty!24565))

(assert (= setNonEmpty!24565 b!2801788))

(assert (= (and mapNonEmpty!18374 ((_ is Cons!32567) mapValue!18374)) b!2801793))

(assert (= b!2801791 b!2801792))

(assert (= (and b!2801791 condSetEmpty!24565) setIsEmpty!24566))

(assert (= (and b!2801791 (not condSetEmpty!24565)) setNonEmpty!24566))

(assert (= setNonEmpty!24566 b!2801790))

(assert (= (and mapNonEmpty!18363 ((_ is Cons!32567) mapDefault!18374)) b!2801791))

(declare-fun m!3231495 () Bool)

(assert (=> setNonEmpty!24566 m!3231495))

(declare-fun m!3231497 () Bool)

(assert (=> mapNonEmpty!18374 m!3231497))

(declare-fun m!3231499 () Bool)

(assert (=> b!2801793 m!3231499))

(declare-fun m!3231501 () Bool)

(assert (=> setNonEmpty!24565 m!3231501))

(declare-fun m!3231503 () Bool)

(assert (=> b!2801791 m!3231503))

(declare-fun condSetEmpty!24567 () Bool)

(assert (=> setNonEmpty!24549 (= condSetEmpty!24567 (= setRest!24549 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24567 () Bool)

(assert (=> setNonEmpty!24549 (= tp!892715 setRes!24567)))

(declare-fun setIsEmpty!24567 () Bool)

(assert (=> setIsEmpty!24567 setRes!24567))

(declare-fun setNonEmpty!24567 () Bool)

(declare-fun e!1770458 () Bool)

(declare-fun tp!892869 () Bool)

(declare-fun setElem!24567 () Context!4886)

(assert (=> setNonEmpty!24567 (= setRes!24567 (and tp!892869 (inv!44232 setElem!24567) e!1770458))))

(declare-fun setRest!24567 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24567 (= setRest!24549 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24567 true) setRest!24567))))

(declare-fun b!2801794 () Bool)

(declare-fun tp!892868 () Bool)

(assert (=> b!2801794 (= e!1770458 tp!892868)))

(assert (= (and setNonEmpty!24549 condSetEmpty!24567) setIsEmpty!24567))

(assert (= (and setNonEmpty!24549 (not condSetEmpty!24567)) setNonEmpty!24567))

(assert (= setNonEmpty!24567 b!2801794))

(declare-fun m!3231505 () Bool)

(assert (=> setNonEmpty!24567 m!3231505))

(declare-fun b!2801797 () Bool)

(declare-fun e!1770459 () Bool)

(declare-fun tp!892873 () Bool)

(assert (=> b!2801797 (= e!1770459 tp!892873)))

(assert (=> b!2801272 (= tp!892705 e!1770459)))

(declare-fun b!2801795 () Bool)

(assert (=> b!2801795 (= e!1770459 tp_is_empty!14263)))

(declare-fun b!2801798 () Bool)

(declare-fun tp!892874 () Bool)

(declare-fun tp!892872 () Bool)

(assert (=> b!2801798 (= e!1770459 (and tp!892874 tp!892872))))

(declare-fun b!2801796 () Bool)

(declare-fun tp!892870 () Bool)

(declare-fun tp!892871 () Bool)

(assert (=> b!2801796 (= e!1770459 (and tp!892870 tp!892871))))

(assert (= (and b!2801272 ((_ is ElementMatch!8225) (_1!19671 (_1!19672 (h!37988 mapValue!18366))))) b!2801795))

(assert (= (and b!2801272 ((_ is Concat!13313) (_1!19671 (_1!19672 (h!37988 mapValue!18366))))) b!2801796))

(assert (= (and b!2801272 ((_ is Star!8225) (_1!19671 (_1!19672 (h!37988 mapValue!18366))))) b!2801797))

(assert (= (and b!2801272 ((_ is Union!8225) (_1!19671 (_1!19672 (h!37988 mapValue!18366))))) b!2801798))

(declare-fun b!2801799 () Bool)

(declare-fun e!1770460 () Bool)

(declare-fun tp!892878 () Bool)

(assert (=> b!2801799 (= e!1770460 tp!892878)))

(declare-fun setElem!24568 () Context!4886)

(declare-fun tp!892877 () Bool)

(declare-fun setNonEmpty!24568 () Bool)

(declare-fun setRes!24568 () Bool)

(assert (=> setNonEmpty!24568 (= setRes!24568 (and tp!892877 (inv!44232 setElem!24568) e!1770460))))

(declare-fun setRest!24568 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24568 (= (_2!19672 (h!37988 (t!228833 mapValue!18366))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24568 true) setRest!24568))))

(declare-fun b!2801800 () Bool)

(declare-fun e!1770462 () Bool)

(declare-fun tp!892876 () Bool)

(assert (=> b!2801800 (= e!1770462 tp!892876)))

(declare-fun setIsEmpty!24568 () Bool)

(assert (=> setIsEmpty!24568 setRes!24568))

(declare-fun tp!892879 () Bool)

(declare-fun tp!892875 () Bool)

(declare-fun b!2801801 () Bool)

(declare-fun e!1770461 () Bool)

(assert (=> b!2801801 (= e!1770461 (and tp!892875 (inv!44232 (_2!19671 (_1!19672 (h!37988 (t!228833 mapValue!18366))))) e!1770462 tp_is_empty!14263 setRes!24568 tp!892879))))

(declare-fun condSetEmpty!24568 () Bool)

(assert (=> b!2801801 (= condSetEmpty!24568 (= (_2!19672 (h!37988 (t!228833 mapValue!18366))) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801272 (= tp!892704 e!1770461)))

(assert (= b!2801801 b!2801800))

(assert (= (and b!2801801 condSetEmpty!24568) setIsEmpty!24568))

(assert (= (and b!2801801 (not condSetEmpty!24568)) setNonEmpty!24568))

(assert (= setNonEmpty!24568 b!2801799))

(assert (= (and b!2801272 ((_ is Cons!32568) (t!228833 mapValue!18366))) b!2801801))

(declare-fun m!3231507 () Bool)

(assert (=> setNonEmpty!24568 m!3231507))

(declare-fun m!3231509 () Bool)

(assert (=> b!2801801 m!3231509))

(declare-fun condSetEmpty!24569 () Bool)

(assert (=> setNonEmpty!24550 (= condSetEmpty!24569 (= setRest!24550 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24569 () Bool)

(assert (=> setNonEmpty!24550 (= tp!892737 setRes!24569)))

(declare-fun setIsEmpty!24569 () Bool)

(assert (=> setIsEmpty!24569 setRes!24569))

(declare-fun tp!892881 () Bool)

(declare-fun e!1770463 () Bool)

(declare-fun setElem!24569 () Context!4886)

(declare-fun setNonEmpty!24569 () Bool)

(assert (=> setNonEmpty!24569 (= setRes!24569 (and tp!892881 (inv!44232 setElem!24569) e!1770463))))

(declare-fun setRest!24569 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24569 (= setRest!24550 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24569 true) setRest!24569))))

(declare-fun b!2801802 () Bool)

(declare-fun tp!892880 () Bool)

(assert (=> b!2801802 (= e!1770463 tp!892880)))

(assert (= (and setNonEmpty!24550 condSetEmpty!24569) setIsEmpty!24569))

(assert (= (and setNonEmpty!24550 (not condSetEmpty!24569)) setNonEmpty!24569))

(assert (= setNonEmpty!24569 b!2801802))

(declare-fun m!3231511 () Bool)

(assert (=> setNonEmpty!24569 m!3231511))

(declare-fun b!2801803 () Bool)

(declare-fun e!1770464 () Bool)

(declare-fun tp!892882 () Bool)

(assert (=> b!2801803 (= e!1770464 (and tp_is_empty!14263 tp!892882))))

(assert (=> b!2801195 (= tp!892601 e!1770464)))

(assert (= (and b!2801195 ((_ is Cons!32566) (t!228831 (t!228831 testedSuffix!143)))) b!2801803))

(declare-fun b!2801804 () Bool)

(declare-fun e!1770465 () Bool)

(declare-fun tp!892883 () Bool)

(declare-fun tp!892884 () Bool)

(assert (=> b!2801804 (= e!1770465 (and tp!892883 tp!892884))))

(assert (=> b!2801274 (= tp!892709 e!1770465)))

(assert (= (and b!2801274 ((_ is Cons!32565) (exprs!2943 setElem!24547))) b!2801804))

(declare-fun b!2801805 () Bool)

(declare-fun e!1770466 () Bool)

(declare-fun tp!892885 () Bool)

(declare-fun tp!892886 () Bool)

(assert (=> b!2801805 (= e!1770466 (and tp!892885 tp!892886))))

(assert (=> b!2801208 (= tp!892618 e!1770466)))

(assert (= (and b!2801208 ((_ is Cons!32565) (exprs!2943 (_2!19671 (_1!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))))))) b!2801805))

(declare-fun b!2801806 () Bool)

(declare-fun e!1770467 () Bool)

(declare-fun tp!892887 () Bool)

(declare-fun tp!892888 () Bool)

(assert (=> b!2801806 (= e!1770467 (and tp!892887 tp!892888))))

(assert (=> b!2801248 (= tp!892669 e!1770467)))

(assert (= (and b!2801248 ((_ is Cons!32565) (exprs!2943 (_1!19669 (_1!19670 (h!37987 (zeroValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890)))))))))))) b!2801806))

(declare-fun b!2801807 () Bool)

(declare-fun e!1770468 () Bool)

(declare-fun tp!892889 () Bool)

(declare-fun tp!892890 () Bool)

(assert (=> b!2801807 (= e!1770468 (and tp!892889 tp!892890))))

(assert (=> b!2801205 (= tp!892613 e!1770468)))

(assert (= (and b!2801205 ((_ is Cons!32565) (exprs!2943 (_2!19671 (_1!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009)))))))))))) b!2801807))

(declare-fun b!2801808 () Bool)

(declare-fun e!1770469 () Bool)

(declare-fun tp!892891 () Bool)

(declare-fun tp!892892 () Bool)

(assert (=> b!2801808 (= e!1770469 (and tp!892891 tp!892892))))

(assert (=> b!2801214 (= tp!892626 e!1770469)))

(assert (= (and b!2801214 ((_ is Cons!32565) (exprs!2943 setElem!24530))) b!2801808))

(declare-fun b!2801811 () Bool)

(declare-fun e!1770470 () Bool)

(declare-fun tp!892896 () Bool)

(assert (=> b!2801811 (= e!1770470 tp!892896)))

(assert (=> b!2801254 (= tp!892675 e!1770470)))

(declare-fun b!2801809 () Bool)

(assert (=> b!2801809 (= e!1770470 tp_is_empty!14263)))

(declare-fun b!2801812 () Bool)

(declare-fun tp!892897 () Bool)

(declare-fun tp!892895 () Bool)

(assert (=> b!2801812 (= e!1770470 (and tp!892897 tp!892895))))

(declare-fun b!2801810 () Bool)

(declare-fun tp!892893 () Bool)

(declare-fun tp!892894 () Bool)

(assert (=> b!2801810 (= e!1770470 (and tp!892893 tp!892894))))

(assert (= (and b!2801254 ((_ is ElementMatch!8225) (_1!19671 (_1!19672 (h!37988 mapDefault!18360))))) b!2801809))

(assert (= (and b!2801254 ((_ is Concat!13313) (_1!19671 (_1!19672 (h!37988 mapDefault!18360))))) b!2801810))

(assert (= (and b!2801254 ((_ is Star!8225) (_1!19671 (_1!19672 (h!37988 mapDefault!18360))))) b!2801811))

(assert (= (and b!2801254 ((_ is Union!8225) (_1!19671 (_1!19672 (h!37988 mapDefault!18360))))) b!2801812))

(declare-fun b!2801813 () Bool)

(declare-fun e!1770471 () Bool)

(declare-fun tp!892901 () Bool)

(assert (=> b!2801813 (= e!1770471 tp!892901)))

(declare-fun setRes!24570 () Bool)

(declare-fun setNonEmpty!24570 () Bool)

(declare-fun tp!892900 () Bool)

(declare-fun setElem!24570 () Context!4886)

(assert (=> setNonEmpty!24570 (= setRes!24570 (and tp!892900 (inv!44232 setElem!24570) e!1770471))))

(declare-fun setRest!24570 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24570 (= (_2!19672 (h!37988 (t!228833 mapDefault!18360))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24570 true) setRest!24570))))

(declare-fun b!2801814 () Bool)

(declare-fun e!1770473 () Bool)

(declare-fun tp!892899 () Bool)

(assert (=> b!2801814 (= e!1770473 tp!892899)))

(declare-fun setIsEmpty!24570 () Bool)

(assert (=> setIsEmpty!24570 setRes!24570))

(declare-fun e!1770472 () Bool)

(declare-fun tp!892898 () Bool)

(declare-fun tp!892902 () Bool)

(declare-fun b!2801815 () Bool)

(assert (=> b!2801815 (= e!1770472 (and tp!892898 (inv!44232 (_2!19671 (_1!19672 (h!37988 (t!228833 mapDefault!18360))))) e!1770473 tp_is_empty!14263 setRes!24570 tp!892902))))

(declare-fun condSetEmpty!24570 () Bool)

(assert (=> b!2801815 (= condSetEmpty!24570 (= (_2!19672 (h!37988 (t!228833 mapDefault!18360))) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801254 (= tp!892679 e!1770472)))

(assert (= b!2801815 b!2801814))

(assert (= (and b!2801815 condSetEmpty!24570) setIsEmpty!24570))

(assert (= (and b!2801815 (not condSetEmpty!24570)) setNonEmpty!24570))

(assert (= setNonEmpty!24570 b!2801813))

(assert (= (and b!2801254 ((_ is Cons!32568) (t!228833 mapDefault!18360))) b!2801815))

(declare-fun m!3231513 () Bool)

(assert (=> setNonEmpty!24570 m!3231513))

(declare-fun m!3231515 () Bool)

(assert (=> b!2801815 m!3231515))

(declare-fun b!2801816 () Bool)

(declare-fun e!1770474 () Bool)

(declare-fun tp!892903 () Bool)

(declare-fun tp!892904 () Bool)

(assert (=> b!2801816 (= e!1770474 (and tp!892903 tp!892904))))

(assert (=> b!2801233 (= tp!892649 e!1770474)))

(assert (= (and b!2801233 ((_ is Cons!32565) (exprs!2943 (_1!19669 (_1!19670 (h!37987 mapDefault!18363)))))) b!2801816))

(declare-fun b!2801817 () Bool)

(declare-fun e!1770475 () Bool)

(declare-fun tp!892905 () Bool)

(declare-fun tp!892906 () Bool)

(assert (=> b!2801817 (= e!1770475 (and tp!892905 tp!892906))))

(assert (=> b!2801269 (= tp!892708 e!1770475)))

(assert (= (and b!2801269 ((_ is Cons!32565) (exprs!2943 (_2!19671 (_1!19672 (h!37988 mapDefault!18366)))))) b!2801817))

(declare-fun condSetEmpty!24571 () Bool)

(assert (=> setNonEmpty!24541 (= condSetEmpty!24571 (= setRest!24541 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24571 () Bool)

(assert (=> setNonEmpty!24541 (= tp!892674 setRes!24571)))

(declare-fun setIsEmpty!24571 () Bool)

(assert (=> setIsEmpty!24571 setRes!24571))

(declare-fun setElem!24571 () Context!4886)

(declare-fun setNonEmpty!24571 () Bool)

(declare-fun e!1770476 () Bool)

(declare-fun tp!892908 () Bool)

(assert (=> setNonEmpty!24571 (= setRes!24571 (and tp!892908 (inv!44232 setElem!24571) e!1770476))))

(declare-fun setRest!24571 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24571 (= setRest!24541 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24571 true) setRest!24571))))

(declare-fun b!2801818 () Bool)

(declare-fun tp!892907 () Bool)

(assert (=> b!2801818 (= e!1770476 tp!892907)))

(assert (= (and setNonEmpty!24541 condSetEmpty!24571) setIsEmpty!24571))

(assert (= (and setNonEmpty!24541 (not condSetEmpty!24571)) setNonEmpty!24571))

(assert (= setNonEmpty!24571 b!2801818))

(declare-fun m!3231517 () Bool)

(assert (=> setNonEmpty!24571 m!3231517))

(declare-fun b!2801820 () Bool)

(declare-fun e!1770477 () Bool)

(declare-fun tp!892909 () Bool)

(assert (=> b!2801820 (= e!1770477 tp!892909)))

(declare-fun setIsEmpty!24572 () Bool)

(declare-fun setRes!24572 () Bool)

(assert (=> setIsEmpty!24572 setRes!24572))

(declare-fun b!2801821 () Bool)

(declare-fun e!1770478 () Bool)

(declare-fun tp!892911 () Bool)

(assert (=> b!2801821 (= e!1770478 tp!892911)))

(declare-fun setElem!24572 () Context!4886)

(declare-fun tp!892912 () Bool)

(declare-fun setNonEmpty!24572 () Bool)

(assert (=> setNonEmpty!24572 (= setRes!24572 (and tp!892912 (inv!44232 setElem!24572) e!1770477))))

(declare-fun setRest!24572 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24572 (= (_2!19670 (h!37987 (t!228832 mapValue!18363))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24572 true) setRest!24572))))

(declare-fun e!1770479 () Bool)

(assert (=> b!2801234 (= tp!892651 e!1770479)))

(declare-fun b!2801819 () Bool)

(declare-fun tp!892910 () Bool)

(assert (=> b!2801819 (= e!1770479 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 (t!228832 mapValue!18363))))) e!1770478 tp_is_empty!14263 setRes!24572 tp!892910))))

(declare-fun condSetEmpty!24572 () Bool)

(assert (=> b!2801819 (= condSetEmpty!24572 (= (_2!19670 (h!37987 (t!228832 mapValue!18363))) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801819 b!2801821))

(assert (= (and b!2801819 condSetEmpty!24572) setIsEmpty!24572))

(assert (= (and b!2801819 (not condSetEmpty!24572)) setNonEmpty!24572))

(assert (= setNonEmpty!24572 b!2801820))

(assert (= (and b!2801234 ((_ is Cons!32567) (t!228832 mapValue!18363))) b!2801819))

(declare-fun m!3231519 () Bool)

(assert (=> setNonEmpty!24572 m!3231519))

(declare-fun m!3231521 () Bool)

(assert (=> b!2801819 m!3231521))

(declare-fun b!2801822 () Bool)

(declare-fun e!1770480 () Bool)

(declare-fun tp!892913 () Bool)

(declare-fun tp!892914 () Bool)

(assert (=> b!2801822 (= e!1770480 (and tp!892913 tp!892914))))

(assert (=> b!2801271 (= tp!892702 e!1770480)))

(assert (= (and b!2801271 ((_ is Cons!32565) (exprs!2943 (_2!19671 (_1!19672 (h!37988 mapValue!18366)))))) b!2801822))

(declare-fun b!2801825 () Bool)

(declare-fun e!1770481 () Bool)

(declare-fun tp!892918 () Bool)

(assert (=> b!2801825 (= e!1770481 tp!892918)))

(assert (=> b!2801209 (= tp!892617 e!1770481)))

(declare-fun b!2801823 () Bool)

(assert (=> b!2801823 (= e!1770481 tp_is_empty!14263)))

(declare-fun b!2801826 () Bool)

(declare-fun tp!892919 () Bool)

(declare-fun tp!892917 () Bool)

(assert (=> b!2801826 (= e!1770481 (and tp!892919 tp!892917))))

(declare-fun b!2801824 () Bool)

(declare-fun tp!892915 () Bool)

(declare-fun tp!892916 () Bool)

(assert (=> b!2801824 (= e!1770481 (and tp!892915 tp!892916))))

(assert (= (and b!2801209 ((_ is ElementMatch!8225) (_1!19671 (_1!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) b!2801823))

(assert (= (and b!2801209 ((_ is Concat!13313) (_1!19671 (_1!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) b!2801824))

(assert (= (and b!2801209 ((_ is Star!8225) (_1!19671 (_1!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) b!2801825))

(assert (= (and b!2801209 ((_ is Union!8225) (_1!19671 (_1!19672 (h!37988 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) b!2801826))

(declare-fun b!2801827 () Bool)

(declare-fun e!1770482 () Bool)

(declare-fun tp!892923 () Bool)

(assert (=> b!2801827 (= e!1770482 tp!892923)))

(declare-fun setRes!24573 () Bool)

(declare-fun setElem!24573 () Context!4886)

(declare-fun setNonEmpty!24573 () Bool)

(declare-fun tp!892922 () Bool)

(assert (=> setNonEmpty!24573 (= setRes!24573 (and tp!892922 (inv!44232 setElem!24573) e!1770482))))

(declare-fun setRest!24573 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24573 (= (_2!19672 (h!37988 (t!228833 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24573 true) setRest!24573))))

(declare-fun b!2801828 () Bool)

(declare-fun e!1770484 () Bool)

(declare-fun tp!892921 () Bool)

(assert (=> b!2801828 (= e!1770484 tp!892921)))

(declare-fun setIsEmpty!24573 () Bool)

(assert (=> setIsEmpty!24573 setRes!24573))

(declare-fun e!1770483 () Bool)

(declare-fun tp!892924 () Bool)

(declare-fun tp!892920 () Bool)

(declare-fun b!2801829 () Bool)

(assert (=> b!2801829 (= e!1770483 (and tp!892920 (inv!44232 (_2!19671 (_1!19672 (h!37988 (t!228833 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) e!1770484 tp_is_empty!14263 setRes!24573 tp!892924))))

(declare-fun condSetEmpty!24573 () Bool)

(assert (=> b!2801829 (= condSetEmpty!24573 (= (_2!19672 (h!37988 (t!228833 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801209 (= tp!892621 e!1770483)))

(assert (= b!2801829 b!2801828))

(assert (= (and b!2801829 condSetEmpty!24573) setIsEmpty!24573))

(assert (= (and b!2801829 (not condSetEmpty!24573)) setNonEmpty!24573))

(assert (= setNonEmpty!24573 b!2801827))

(assert (= (and b!2801209 ((_ is Cons!32568) (t!228833 (minValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))) b!2801829))

(declare-fun m!3231523 () Bool)

(assert (=> setNonEmpty!24573 m!3231523))

(declare-fun m!3231525 () Bool)

(assert (=> b!2801829 m!3231525))

(declare-fun b!2801832 () Bool)

(declare-fun e!1770485 () Bool)

(declare-fun tp!892928 () Bool)

(assert (=> b!2801832 (= e!1770485 tp!892928)))

(assert (=> b!2801206 (= tp!892612 e!1770485)))

(declare-fun b!2801830 () Bool)

(assert (=> b!2801830 (= e!1770485 tp_is_empty!14263)))

(declare-fun b!2801833 () Bool)

(declare-fun tp!892929 () Bool)

(declare-fun tp!892927 () Bool)

(assert (=> b!2801833 (= e!1770485 (and tp!892929 tp!892927))))

(declare-fun b!2801831 () Bool)

(declare-fun tp!892925 () Bool)

(declare-fun tp!892926 () Bool)

(assert (=> b!2801831 (= e!1770485 (and tp!892925 tp!892926))))

(assert (= (and b!2801206 ((_ is ElementMatch!8225) (_1!19671 (_1!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) b!2801830))

(assert (= (and b!2801206 ((_ is Concat!13313) (_1!19671 (_1!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) b!2801831))

(assert (= (and b!2801206 ((_ is Star!8225) (_1!19671 (_1!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) b!2801832))

(assert (= (and b!2801206 ((_ is Union!8225) (_1!19671 (_1!19672 (h!37988 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) b!2801833))

(declare-fun b!2801834 () Bool)

(declare-fun e!1770486 () Bool)

(declare-fun tp!892933 () Bool)

(assert (=> b!2801834 (= e!1770486 tp!892933)))

(declare-fun setNonEmpty!24574 () Bool)

(declare-fun setRes!24574 () Bool)

(declare-fun setElem!24574 () Context!4886)

(declare-fun tp!892932 () Bool)

(assert (=> setNonEmpty!24574 (= setRes!24574 (and tp!892932 (inv!44232 setElem!24574) e!1770486))))

(declare-fun setRest!24574 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24574 (= (_2!19672 (h!37988 (t!228833 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24574 true) setRest!24574))))

(declare-fun b!2801835 () Bool)

(declare-fun e!1770488 () Bool)

(declare-fun tp!892931 () Bool)

(assert (=> b!2801835 (= e!1770488 tp!892931)))

(declare-fun setIsEmpty!24574 () Bool)

(assert (=> setIsEmpty!24574 setRes!24574))

(declare-fun e!1770487 () Bool)

(declare-fun b!2801836 () Bool)

(declare-fun tp!892934 () Bool)

(declare-fun tp!892930 () Bool)

(assert (=> b!2801836 (= e!1770487 (and tp!892930 (inv!44232 (_2!19671 (_1!19672 (h!37988 (t!228833 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))))) e!1770488 tp_is_empty!14263 setRes!24574 tp!892934))))

(declare-fun condSetEmpty!24574 () Bool)

(assert (=> b!2801836 (= condSetEmpty!24574 (= (_2!19672 (h!37988 (t!228833 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801206 (= tp!892616 e!1770487)))

(assert (= b!2801836 b!2801835))

(assert (= (and b!2801836 condSetEmpty!24574) setIsEmpty!24574))

(assert (= (and b!2801836 (not condSetEmpty!24574)) setNonEmpty!24574))

(assert (= setNonEmpty!24574 b!2801834))

(assert (= (and b!2801206 ((_ is Cons!32568) (t!228833 (zeroValue!4300 (v!34169 (underlying!8285 (v!34170 (underlying!8286 (cache!4090 cacheDown!1009))))))))) b!2801836))

(declare-fun m!3231527 () Bool)

(assert (=> setNonEmpty!24574 m!3231527))

(declare-fun m!3231529 () Bool)

(assert (=> b!2801836 m!3231529))

(declare-fun condSetEmpty!24575 () Bool)

(assert (=> setNonEmpty!24539 (= condSetEmpty!24575 (= setRest!24539 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24575 () Bool)

(assert (=> setNonEmpty!24539 (= tp!892666 setRes!24575)))

(declare-fun setIsEmpty!24575 () Bool)

(assert (=> setIsEmpty!24575 setRes!24575))

(declare-fun e!1770489 () Bool)

(declare-fun setNonEmpty!24575 () Bool)

(declare-fun setElem!24575 () Context!4886)

(declare-fun tp!892936 () Bool)

(assert (=> setNonEmpty!24575 (= setRes!24575 (and tp!892936 (inv!44232 setElem!24575) e!1770489))))

(declare-fun setRest!24575 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24575 (= setRest!24539 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24575 true) setRest!24575))))

(declare-fun b!2801837 () Bool)

(declare-fun tp!892935 () Bool)

(assert (=> b!2801837 (= e!1770489 tp!892935)))

(assert (= (and setNonEmpty!24539 condSetEmpty!24575) setIsEmpty!24575))

(assert (= (and setNonEmpty!24539 (not condSetEmpty!24575)) setNonEmpty!24575))

(assert (= setNonEmpty!24575 b!2801837))

(declare-fun m!3231531 () Bool)

(assert (=> setNonEmpty!24575 m!3231531))

(declare-fun condSetEmpty!24576 () Bool)

(assert (=> setNonEmpty!24547 (= condSetEmpty!24576 (= setRest!24547 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24576 () Bool)

(assert (=> setNonEmpty!24547 (= tp!892706 setRes!24576)))

(declare-fun setIsEmpty!24576 () Bool)

(assert (=> setIsEmpty!24576 setRes!24576))

(declare-fun tp!892938 () Bool)

(declare-fun setElem!24576 () Context!4886)

(declare-fun e!1770490 () Bool)

(declare-fun setNonEmpty!24576 () Bool)

(assert (=> setNonEmpty!24576 (= setRes!24576 (and tp!892938 (inv!44232 setElem!24576) e!1770490))))

(declare-fun setRest!24576 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24576 (= setRest!24547 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24576 true) setRest!24576))))

(declare-fun b!2801838 () Bool)

(declare-fun tp!892937 () Bool)

(assert (=> b!2801838 (= e!1770490 tp!892937)))

(assert (= (and setNonEmpty!24547 condSetEmpty!24576) setIsEmpty!24576))

(assert (= (and setNonEmpty!24547 (not condSetEmpty!24576)) setNonEmpty!24576))

(assert (= setNonEmpty!24576 b!2801838))

(declare-fun m!3231533 () Bool)

(assert (=> setNonEmpty!24576 m!3231533))

(declare-fun b!2801840 () Bool)

(declare-fun e!1770491 () Bool)

(declare-fun tp!892939 () Bool)

(assert (=> b!2801840 (= e!1770491 tp!892939)))

(declare-fun setIsEmpty!24577 () Bool)

(declare-fun setRes!24577 () Bool)

(assert (=> setIsEmpty!24577 setRes!24577))

(declare-fun b!2801841 () Bool)

(declare-fun e!1770492 () Bool)

(declare-fun tp!892941 () Bool)

(assert (=> b!2801841 (= e!1770492 tp!892941)))

(declare-fun setElem!24577 () Context!4886)

(declare-fun tp!892942 () Bool)

(declare-fun setNonEmpty!24577 () Bool)

(assert (=> setNonEmpty!24577 (= setRes!24577 (and tp!892942 (inv!44232 setElem!24577) e!1770491))))

(declare-fun setRest!24577 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24577 (= (_2!19670 (h!37987 (t!228832 mapDefault!18359))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24577 true) setRest!24577))))

(declare-fun e!1770493 () Bool)

(assert (=> b!2801295 (= tp!892735 e!1770493)))

(declare-fun tp!892940 () Bool)

(declare-fun b!2801839 () Bool)

(assert (=> b!2801839 (= e!1770493 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 (t!228832 mapDefault!18359))))) e!1770492 tp_is_empty!14263 setRes!24577 tp!892940))))

(declare-fun condSetEmpty!24577 () Bool)

(assert (=> b!2801839 (= condSetEmpty!24577 (= (_2!19670 (h!37987 (t!228832 mapDefault!18359))) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801839 b!2801841))

(assert (= (and b!2801839 condSetEmpty!24577) setIsEmpty!24577))

(assert (= (and b!2801839 (not condSetEmpty!24577)) setNonEmpty!24577))

(assert (= setNonEmpty!24577 b!2801840))

(assert (= (and b!2801295 ((_ is Cons!32567) (t!228832 mapDefault!18359))) b!2801839))

(declare-fun m!3231535 () Bool)

(assert (=> setNonEmpty!24577 m!3231535))

(declare-fun m!3231537 () Bool)

(assert (=> b!2801839 m!3231537))

(declare-fun b!2801844 () Bool)

(declare-fun e!1770494 () Bool)

(declare-fun tp!892946 () Bool)

(assert (=> b!2801844 (= e!1770494 tp!892946)))

(assert (=> b!2801277 (= tp!892713 e!1770494)))

(declare-fun b!2801842 () Bool)

(assert (=> b!2801842 (= e!1770494 tp_is_empty!14263)))

(declare-fun b!2801845 () Bool)

(declare-fun tp!892947 () Bool)

(declare-fun tp!892945 () Bool)

(assert (=> b!2801845 (= e!1770494 (and tp!892947 tp!892945))))

(declare-fun b!2801843 () Bool)

(declare-fun tp!892943 () Bool)

(declare-fun tp!892944 () Bool)

(assert (=> b!2801843 (= e!1770494 (and tp!892943 tp!892944))))

(assert (= (and b!2801277 ((_ is ElementMatch!8225) (_1!19671 (_1!19672 (h!37988 mapValue!18360))))) b!2801842))

(assert (= (and b!2801277 ((_ is Concat!13313) (_1!19671 (_1!19672 (h!37988 mapValue!18360))))) b!2801843))

(assert (= (and b!2801277 ((_ is Star!8225) (_1!19671 (_1!19672 (h!37988 mapValue!18360))))) b!2801844))

(assert (= (and b!2801277 ((_ is Union!8225) (_1!19671 (_1!19672 (h!37988 mapValue!18360))))) b!2801845))

(declare-fun b!2801846 () Bool)

(declare-fun e!1770495 () Bool)

(declare-fun tp!892951 () Bool)

(assert (=> b!2801846 (= e!1770495 tp!892951)))

(declare-fun setElem!24578 () Context!4886)

(declare-fun setRes!24578 () Bool)

(declare-fun setNonEmpty!24578 () Bool)

(declare-fun tp!892950 () Bool)

(assert (=> setNonEmpty!24578 (= setRes!24578 (and tp!892950 (inv!44232 setElem!24578) e!1770495))))

(declare-fun setRest!24578 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24578 (= (_2!19672 (h!37988 (t!228833 mapValue!18360))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24578 true) setRest!24578))))

(declare-fun b!2801847 () Bool)

(declare-fun e!1770497 () Bool)

(declare-fun tp!892949 () Bool)

(assert (=> b!2801847 (= e!1770497 tp!892949)))

(declare-fun setIsEmpty!24578 () Bool)

(assert (=> setIsEmpty!24578 setRes!24578))

(declare-fun e!1770496 () Bool)

(declare-fun tp!892948 () Bool)

(declare-fun b!2801848 () Bool)

(declare-fun tp!892952 () Bool)

(assert (=> b!2801848 (= e!1770496 (and tp!892948 (inv!44232 (_2!19671 (_1!19672 (h!37988 (t!228833 mapValue!18360))))) e!1770497 tp_is_empty!14263 setRes!24578 tp!892952))))

(declare-fun condSetEmpty!24578 () Bool)

(assert (=> b!2801848 (= condSetEmpty!24578 (= (_2!19672 (h!37988 (t!228833 mapValue!18360))) ((as const (Array Context!4886 Bool)) false)))))

(assert (=> b!2801277 (= tp!892717 e!1770496)))

(assert (= b!2801848 b!2801847))

(assert (= (and b!2801848 condSetEmpty!24578) setIsEmpty!24578))

(assert (= (and b!2801848 (not condSetEmpty!24578)) setNonEmpty!24578))

(assert (= setNonEmpty!24578 b!2801846))

(assert (= (and b!2801277 ((_ is Cons!32568) (t!228833 mapValue!18360))) b!2801848))

(declare-fun m!3231539 () Bool)

(assert (=> setNonEmpty!24578 m!3231539))

(declare-fun m!3231541 () Bool)

(assert (=> b!2801848 m!3231541))

(declare-fun b!2801849 () Bool)

(declare-fun e!1770498 () Bool)

(declare-fun tp!892953 () Bool)

(declare-fun tp!892954 () Bool)

(assert (=> b!2801849 (= e!1770498 (and tp!892953 tp!892954))))

(assert (=> b!2801252 (= tp!892678 e!1770498)))

(assert (= (and b!2801252 ((_ is Cons!32565) (exprs!2943 setElem!24542))) b!2801849))

(declare-fun b!2801851 () Bool)

(declare-fun e!1770499 () Bool)

(declare-fun tp!892955 () Bool)

(assert (=> b!2801851 (= e!1770499 tp!892955)))

(declare-fun setIsEmpty!24579 () Bool)

(declare-fun setRes!24579 () Bool)

(assert (=> setIsEmpty!24579 setRes!24579))

(declare-fun b!2801852 () Bool)

(declare-fun e!1770500 () Bool)

(declare-fun tp!892957 () Bool)

(assert (=> b!2801852 (= e!1770500 tp!892957)))

(declare-fun tp!892958 () Bool)

(declare-fun setElem!24579 () Context!4886)

(declare-fun setNonEmpty!24579 () Bool)

(assert (=> setNonEmpty!24579 (= setRes!24579 (and tp!892958 (inv!44232 setElem!24579) e!1770499))))

(declare-fun setRest!24579 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24579 (= (_2!19670 (h!37987 (t!228832 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24579 true) setRest!24579))))

(declare-fun e!1770501 () Bool)

(assert (=> b!2801249 (= tp!892672 e!1770501)))

(declare-fun tp!892956 () Bool)

(declare-fun b!2801850 () Bool)

(assert (=> b!2801850 (= e!1770501 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 (t!228832 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))))))) e!1770500 tp_is_empty!14263 setRes!24579 tp!892956))))

(declare-fun condSetEmpty!24579 () Bool)

(assert (=> b!2801850 (= condSetEmpty!24579 (= (_2!19670 (h!37987 (t!228832 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))))) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801850 b!2801852))

(assert (= (and b!2801850 condSetEmpty!24579) setIsEmpty!24579))

(assert (= (and b!2801850 (not condSetEmpty!24579)) setNonEmpty!24579))

(assert (= setNonEmpty!24579 b!2801851))

(assert (= (and b!2801249 ((_ is Cons!32567) (t!228832 (minValue!4299 (v!34167 (underlying!8283 (v!34168 (underlying!8284 (cache!4089 cacheUp!890))))))))) b!2801850))

(declare-fun m!3231543 () Bool)

(assert (=> setNonEmpty!24579 m!3231543))

(declare-fun m!3231545 () Bool)

(assert (=> b!2801850 m!3231545))

(declare-fun b!2801853 () Bool)

(declare-fun e!1770502 () Bool)

(declare-fun tp!892959 () Bool)

(declare-fun tp!892960 () Bool)

(assert (=> b!2801853 (= e!1770502 (and tp!892959 tp!892960))))

(assert (=> b!2801253 (= tp!892676 e!1770502)))

(assert (= (and b!2801253 ((_ is Cons!32565) (exprs!2943 (_2!19671 (_1!19672 (h!37988 mapDefault!18360)))))) b!2801853))

(declare-fun b!2801855 () Bool)

(declare-fun e!1770503 () Bool)

(declare-fun tp!892961 () Bool)

(assert (=> b!2801855 (= e!1770503 tp!892961)))

(declare-fun setIsEmpty!24580 () Bool)

(declare-fun setRes!24580 () Bool)

(assert (=> setIsEmpty!24580 setRes!24580))

(declare-fun b!2801856 () Bool)

(declare-fun e!1770504 () Bool)

(declare-fun tp!892963 () Bool)

(assert (=> b!2801856 (= e!1770504 tp!892963)))

(declare-fun tp!892964 () Bool)

(declare-fun setNonEmpty!24580 () Bool)

(declare-fun setElem!24580 () Context!4886)

(assert (=> setNonEmpty!24580 (= setRes!24580 (and tp!892964 (inv!44232 setElem!24580) e!1770503))))

(declare-fun setRest!24580 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24580 (= (_2!19670 (h!37987 (t!228832 mapDefault!18363))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24580 true) setRest!24580))))

(declare-fun e!1770505 () Bool)

(assert (=> b!2801232 (= tp!892648 e!1770505)))

(declare-fun tp!892962 () Bool)

(declare-fun b!2801854 () Bool)

(assert (=> b!2801854 (= e!1770505 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 (t!228832 mapDefault!18363))))) e!1770504 tp_is_empty!14263 setRes!24580 tp!892962))))

(declare-fun condSetEmpty!24580 () Bool)

(assert (=> b!2801854 (= condSetEmpty!24580 (= (_2!19670 (h!37987 (t!228832 mapDefault!18363))) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801854 b!2801856))

(assert (= (and b!2801854 condSetEmpty!24580) setIsEmpty!24580))

(assert (= (and b!2801854 (not condSetEmpty!24580)) setNonEmpty!24580))

(assert (= setNonEmpty!24580 b!2801855))

(assert (= (and b!2801232 ((_ is Cons!32567) (t!228832 mapDefault!18363))) b!2801854))

(declare-fun m!3231547 () Bool)

(assert (=> setNonEmpty!24580 m!3231547))

(declare-fun m!3231549 () Bool)

(assert (=> b!2801854 m!3231549))

(declare-fun b!2801857 () Bool)

(declare-fun e!1770506 () Bool)

(declare-fun tp!892965 () Bool)

(declare-fun tp!892966 () Bool)

(assert (=> b!2801857 (= e!1770506 (and tp!892965 tp!892966))))

(assert (=> b!2801207 (= tp!892620 e!1770506)))

(assert (= (and b!2801207 ((_ is Cons!32565) (exprs!2943 setElem!24527))) b!2801857))

(declare-fun b!2801858 () Bool)

(declare-fun e!1770507 () Bool)

(declare-fun tp!892967 () Bool)

(declare-fun tp!892968 () Bool)

(assert (=> b!2801858 (= e!1770507 (and tp!892967 tp!892968))))

(assert (=> b!2801247 (= tp!892667 e!1770507)))

(assert (= (and b!2801247 ((_ is Cons!32565) (exprs!2943 setElem!24540))) b!2801858))

(declare-fun b!2801859 () Bool)

(declare-fun e!1770508 () Bool)

(declare-fun tp!892969 () Bool)

(declare-fun tp!892970 () Bool)

(assert (=> b!2801859 (= e!1770508 (and tp!892969 tp!892970))))

(assert (=> b!2801204 (= tp!892615 e!1770508)))

(assert (= (and b!2801204 ((_ is Cons!32565) (exprs!2943 setElem!24526))) b!2801859))

(declare-fun b!2801861 () Bool)

(declare-fun e!1770509 () Bool)

(declare-fun tp!892971 () Bool)

(assert (=> b!2801861 (= e!1770509 tp!892971)))

(declare-fun setIsEmpty!24581 () Bool)

(declare-fun setRes!24581 () Bool)

(assert (=> setIsEmpty!24581 setRes!24581))

(declare-fun b!2801862 () Bool)

(declare-fun e!1770510 () Bool)

(declare-fun tp!892973 () Bool)

(assert (=> b!2801862 (= e!1770510 tp!892973)))

(declare-fun setElem!24581 () Context!4886)

(declare-fun setNonEmpty!24581 () Bool)

(declare-fun tp!892974 () Bool)

(assert (=> setNonEmpty!24581 (= setRes!24581 (and tp!892974 (inv!44232 setElem!24581) e!1770509))))

(declare-fun setRest!24581 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24581 (= (_2!19670 (h!37987 (t!228832 mapValue!18359))) ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24581 true) setRest!24581))))

(declare-fun e!1770511 () Bool)

(assert (=> b!2801243 (= tp!892664 e!1770511)))

(declare-fun b!2801860 () Bool)

(declare-fun tp!892972 () Bool)

(assert (=> b!2801860 (= e!1770511 (and (inv!44232 (_1!19669 (_1!19670 (h!37987 (t!228832 mapValue!18359))))) e!1770510 tp_is_empty!14263 setRes!24581 tp!892972))))

(declare-fun condSetEmpty!24581 () Bool)

(assert (=> b!2801860 (= condSetEmpty!24581 (= (_2!19670 (h!37987 (t!228832 mapValue!18359))) ((as const (Array Context!4886 Bool)) false)))))

(assert (= b!2801860 b!2801862))

(assert (= (and b!2801860 condSetEmpty!24581) setIsEmpty!24581))

(assert (= (and b!2801860 (not condSetEmpty!24581)) setNonEmpty!24581))

(assert (= setNonEmpty!24581 b!2801861))

(assert (= (and b!2801243 ((_ is Cons!32567) (t!228832 mapValue!18359))) b!2801860))

(declare-fun m!3231551 () Bool)

(assert (=> setNonEmpty!24581 m!3231551))

(declare-fun m!3231553 () Bool)

(assert (=> b!2801860 m!3231553))

(declare-fun condSetEmpty!24582 () Bool)

(assert (=> setNonEmpty!24548 (= condSetEmpty!24582 (= setRest!24548 ((as const (Array Context!4886 Bool)) false)))))

(declare-fun setRes!24582 () Bool)

(assert (=> setNonEmpty!24548 (= tp!892703 setRes!24582)))

(declare-fun setIsEmpty!24582 () Bool)

(assert (=> setIsEmpty!24582 setRes!24582))

(declare-fun setElem!24582 () Context!4886)

(declare-fun setNonEmpty!24582 () Bool)

(declare-fun e!1770512 () Bool)

(declare-fun tp!892976 () Bool)

(assert (=> setNonEmpty!24582 (= setRes!24582 (and tp!892976 (inv!44232 setElem!24582) e!1770512))))

(declare-fun setRest!24582 () (InoxSet Context!4886))

(assert (=> setNonEmpty!24582 (= setRest!24548 ((_ map or) (store ((as const (Array Context!4886 Bool)) false) setElem!24582 true) setRest!24582))))

(declare-fun b!2801863 () Bool)

(declare-fun tp!892975 () Bool)

(assert (=> b!2801863 (= e!1770512 tp!892975)))

(assert (= (and setNonEmpty!24548 condSetEmpty!24582) setIsEmpty!24582))

(assert (= (and setNonEmpty!24548 (not condSetEmpty!24582)) setNonEmpty!24582))

(assert (= setNonEmpty!24582 b!2801863))

(declare-fun m!3231555 () Bool)

(assert (=> setNonEmpty!24582 m!3231555))

(declare-fun b!2801864 () Bool)

(declare-fun e!1770513 () Bool)

(declare-fun tp!892977 () Bool)

(declare-fun tp!892978 () Bool)

(assert (=> b!2801864 (= e!1770513 (and tp!892977 tp!892978))))

(assert (=> b!2801275 (= tp!892716 e!1770513)))

(assert (= (and b!2801275 ((_ is Cons!32565) (exprs!2943 setElem!24549))) b!2801864))

(declare-fun b!2801865 () Bool)

(declare-fun e!1770514 () Bool)

(declare-fun tp!892979 () Bool)

(declare-fun tp!892980 () Bool)

(assert (=> b!2801865 (= e!1770514 (and tp!892979 tp!892980))))

(assert (=> b!2801229 (= tp!892652 e!1770514)))

(assert (= (and b!2801229 ((_ is Cons!32565) (exprs!2943 setElem!24536))) b!2801865))

(declare-fun b!2801868 () Bool)

(declare-fun e!1770515 () Bool)

(declare-fun tp!892984 () Bool)

(assert (=> b!2801868 (= e!1770515 tp!892984)))

(assert (=> b!2801294 (= tp!892732 e!1770515)))

(declare-fun b!2801866 () Bool)

(assert (=> b!2801866 (= e!1770515 tp_is_empty!14263)))

(declare-fun b!2801869 () Bool)

(declare-fun tp!892985 () Bool)

(declare-fun tp!892983 () Bool)

(assert (=> b!2801869 (= e!1770515 (and tp!892985 tp!892983))))

(declare-fun b!2801867 () Bool)

(declare-fun tp!892981 () Bool)

(declare-fun tp!892982 () Bool)

(assert (=> b!2801867 (= e!1770515 (and tp!892981 tp!892982))))

(assert (= (and b!2801294 ((_ is ElementMatch!8225) (h!37985 (exprs!2943 setElem!24523)))) b!2801866))

(assert (= (and b!2801294 ((_ is Concat!13313) (h!37985 (exprs!2943 setElem!24523)))) b!2801867))

(assert (= (and b!2801294 ((_ is Star!8225) (h!37985 (exprs!2943 setElem!24523)))) b!2801868))

(assert (= (and b!2801294 ((_ is Union!8225) (h!37985 (exprs!2943 setElem!24523)))) b!2801869))

(declare-fun b!2801870 () Bool)

(declare-fun e!1770516 () Bool)

(declare-fun tp!892986 () Bool)

(declare-fun tp!892987 () Bool)

(assert (=> b!2801870 (= e!1770516 (and tp!892986 tp!892987))))

(assert (=> b!2801294 (= tp!892733 e!1770516)))

(assert (= (and b!2801294 ((_ is Cons!32565) (t!228830 (exprs!2943 setElem!24523)))) b!2801870))

(declare-fun b!2801871 () Bool)

(declare-fun e!1770517 () Bool)

(declare-fun tp!892988 () Bool)

(declare-fun tp!892989 () Bool)

(assert (=> b!2801871 (= e!1770517 (and tp!892988 tp!892989))))

(assert (=> b!2801230 (= tp!892654 e!1770517)))

(assert (= (and b!2801230 ((_ is Cons!32565) (exprs!2943 (_1!19669 (_1!19670 (h!37987 mapValue!18363)))))) b!2801871))

(declare-fun b!2801872 () Bool)

(declare-fun e!1770518 () Bool)

(declare-fun tp!892990 () Bool)

(declare-fun tp!892991 () Bool)

(assert (=> b!2801872 (= e!1770518 (and tp!892990 tp!892991))))

(assert (=> b!2801276 (= tp!892714 e!1770518)))

(assert (= (and b!2801276 ((_ is Cons!32565) (exprs!2943 (_2!19671 (_1!19672 (h!37988 mapValue!18360)))))) b!2801872))

(declare-fun b_lambda!83753 () Bool)

(assert (= b_lambda!83751 (or d!813619 b_lambda!83753)))

(declare-fun bs!515995 () Bool)

(declare-fun d!813959 () Bool)

(assert (= bs!515995 (and d!813959 d!813619)))

(declare-fun validRegex!3343 (Regex!8225) Bool)

(assert (=> bs!515995 (= (dynLambda!13626 lambda!102878 (h!37985 (exprs!2943 setElem!24523))) (validRegex!3343 (h!37985 (exprs!2943 setElem!24523))))))

(declare-fun m!3231557 () Bool)

(assert (=> bs!515995 m!3231557))

(assert (=> b!2801563 d!813959))

(check-sat (not bm!182859) (not b!2801568) (not b!2801722) (not b!2801305) (not b!2801528) (not b!2801812) (not b!2801478) (not b!2801520) (not b!2801784) (not b!2801300) (not b!2801855) (not b!2801846) (not bm!182860) (not b!2801465) (not bm!182878) (not b!2801448) (not d!813729) (not b!2801611) (not d!813943) (not b!2801826) (not setNonEmpty!24553) (not b!2801730) (not b!2801541) (not b_next!80143) (not d!813905) (not b!2801310) (not b!2801850) (not b!2801591) (not b!2801821) (not b!2801450) (not b!2801752) (not b!2801717) (not d!813791) (not b!2801825) (not b!2801779) (not b!2801446) (not b!2801802) (not b!2801554) (not b_lambda!83753) (not b!2801837) (not d!813953) (not b!2801679) (not b!2801584) (not setNonEmpty!24559) (not d!813853) (not d!813849) (not b!2801863) (not b!2801851) (not b!2801735) (not setNonEmpty!24557) (not b!2801836) (not b!2801789) (not b!2801862) (not b!2801734) (not b!2801834) (not b!2801403) (not d!813941) (not d!813815) (not b!2801677) (not b!2801861) (not b!2801749) b_and!204185 (not d!813769) (not b!2801557) b_and!204189 (not b!2801711) b_and!204175 b_and!204183 (not d!813717) (not b!2801831) (not setNonEmpty!24574) (not b!2801849) (not b!2801322) (not b!2801455) (not b!2801607) (not setNonEmpty!24564) (not b!2801544) (not d!813921) (not b!2801487) (not b!2801847) (not d!813951) (not b!2801724) (not b!2801449) (not b!2801800) (not b!2801476) (not b!2801786) (not b!2801483) (not setNonEmpty!24560) (not mapNonEmpty!18374) (not d!813749) (not setNonEmpty!24577) (not b!2801486) b_and!204179 (not b!2801817) (not d!813935) (not d!813957) (not b!2801306) (not b!2801433) (not b!2801496) (not setNonEmpty!24562) (not d!813789) (not b!2801298) (not d!813793) (not b!2801479) (not b!2801841) (not d!813705) (not b!2801690) (not d!813895) (not b!2801872) b_and!204181 (not b!2801474) (not bm!182873) (not b!2801720) (not bm!182874) (not b!2801799) (not bm!182875) (not d!813841) (not b!2801311) (not b!2801553) (not b!2801857) (not b!2801719) (not setNonEmpty!24555) (not b!2801806) (not d!813765) (not b!2801524) (not d!813919) (not setNonEmpty!24581) (not b!2801313) (not b!2801804) (not b!2801400) (not b!2801429) (not b!2801329) (not b!2801803) (not b!2801404) (not b_next!80141) (not b!2801432) (not b!2801616) (not b!2801488) (not mapNonEmpty!18372) (not d!813801) (not b!2801838) (not setNonEmpty!24573) (not b_next!80153) (not mapNonEmpty!18373) (not bm!182877) (not b!2801818) (not b!2801727) (not b!2801490) b_and!204187 (not b!2801614) (not d!813855) (not b!2801729) (not setNonEmpty!24558) (not b!2801840) b_and!204177 (not b!2801558) (not b_next!80149) (not b!2801539) (not d!813713) (not b!2801615) (not b!2801572) (not setNonEmpty!24575) (not b!2801839) (not d!813881) (not b!2801598) (not b!2801518) (not b!2801780) (not b!2801590) (not setNonEmpty!24561) (not setNonEmpty!24571) (not setNonEmpty!24580) (not b!2801431) (not d!813719) (not b!2801747) (not b!2801726) (not b!2801514) (not d!813865) (not b!2801852) (not b!2801750) (not b!2801522) (not b!2801574) (not d!813721) (not b!2801309) (not b!2801748) (not d!813947) (not setNonEmpty!24569) (not b!2801731) (not mapNonEmpty!18371) (not b!2801468) (not d!813857) (not b!2801828) (not b!2801578) (not b!2801860) (not b!2801733) (not d!813871) (not b!2801573) (not b!2801776) (not b!2801596) (not d!813727) (not b!2801347) (not b!2801513) (not b!2801551) (not d!813885) (not b!2801723) (not b!2801612) (not b!2801792) (not b!2801393) (not b!2801778) (not b!2801788) (not b!2801856) (not b!2801832) (not b!2801556) (not d!813799) (not b!2801824) (not b!2801751) (not b!2801859) (not b!2801526) (not b!2801613) (not b!2801411) (not d!813803) (not b!2801676) (not b!2801858) (not b!2801853) (not b!2801516) (not b!2801464) (not d!813925) (not b!2801801) (not d!813909) (not b!2801548) (not b!2801353) (not b!2801604) (not setNonEmpty!24570) (not b!2801785) (not d!813851) (not b!2801709) (not b!2801796) (not b!2801793) (not d!813715) (not b!2801868) (not b!2801833) (not d!813911) (not b!2801402) (not b!2801869) (not b!2801810) (not setNonEmpty!24582) (not b!2801787) (not b!2801835) (not b!2801678) (not b!2801728) (not d!813761) (not setNonEmpty!24565) (not b!2801820) (not d!813733) (not b!2801807) (not b!2801864) (not b!2801694) (not b!2801774) (not setNonEmpty!24566) (not b!2801564) (not b!2801871) (not b!2801854) (not b!2801500) (not b!2801542) (not b!2801332) (not b!2801472) (not d!813819) (not b!2801566) (not b!2801822) (not b!2801783) (not d!813777) (not b!2801442) (not setNonEmpty!24578) (not d!813931) (not d!813703) (not b!2801444) (not b!2801330) (not b!2801502) (not d!813763) (not b!2801775) (not b!2801498) (not b!2801543) (not b!2801415) (not d!813817) (not b!2801844) (not d!813923) (not d!813829) (not setNonEmpty!24579) (not b!2801401) (not b!2801586) (not b!2801405) (not b!2801718) (not b!2801816) (not d!813807) (not b!2801555) (not setNonEmpty!24556) (not b!2801323) (not b_next!80155) (not b!2801695) (not b!2801675) (not b!2801782) (not d!813779) (not b!2801440) (not b!2801725) (not b!2801827) (not d!813907) (not b!2801482) (not b!2801808) (not d!813775) (not b!2801550) (not b!2801797) (not d!813903) (not b!2801517) (not setNonEmpty!24563) (not b!2801790) (not b!2801494) (not b!2801798) (not b!2801794) (not d!813773) (not b!2801773) (not b!2801805) (not d!813929) (not b_next!80151) (not b!2801536) (not b!2801303) (not b!2801845) (not b!2801594) (not b!2801692) (not b!2801848) (not d!813731) (not b!2801331) (not b_next!80147) (not b!2801813) (not d!813889) (not b!2801721) (not setNonEmpty!24567) (not b!2801577) (not b!2801710) (not b!2801430) (not bs!515995) (not b!2801570) (not b!2801582) (not b!2801315) (not b!2801546) (not b!2801777) (not b_next!80145) (not setNonEmpty!24576) (not b!2801434) (not b!2801348) (not d!813893) (not b!2801814) (not b!2801587) (not b!2801461) (not b!2801865) (not d!813725) (not d!813805) (not b!2801870) (not setNonEmpty!24572) (not b!2801301) (not b!2801843) (not b!2801286) (not b!2801456) (not setNonEmpty!24568) (not b!2801314) (not b!2801732) (not b!2801811) (not b!2801781) (not setNonEmpty!24554) (not b!2801470) tp_is_empty!14263 (not b!2801791) (not d!813949) (not b!2801829) (not b!2801350) (not d!813755) (not b!2801867) (not b!2801491) (not d!813723) (not b!2801680) (not b!2801580) (not b!2801819) (not b!2801682) (not b!2801610) (not b!2801815) (not d!813743))
(check-sat (not b_next!80143) b_and!204179 b_and!204181 (not b_next!80141) (not b_next!80155) (not b_next!80151) (not b_next!80147) (not b_next!80145) b_and!204189 b_and!204185 b_and!204175 b_and!204183 b_and!204187 (not b_next!80153) b_and!204177 (not b_next!80149))
