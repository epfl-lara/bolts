; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412164 () Bool)

(assert start!412164)

(declare-fun b!4292816 () Bool)

(declare-fun b_free!127567 () Bool)

(declare-fun b_next!128271 () Bool)

(assert (=> b!4292816 (= b_free!127567 (not b_next!128271))))

(declare-fun tp!1317188 () Bool)

(declare-fun b_and!338783 () Bool)

(assert (=> b!4292816 (= tp!1317188 b_and!338783)))

(declare-fun b!4292823 () Bool)

(declare-fun b_free!127569 () Bool)

(declare-fun b_next!128273 () Bool)

(assert (=> b!4292823 (= b_free!127569 (not b_next!128273))))

(declare-fun tp!1317191 () Bool)

(declare-fun b_and!338785 () Bool)

(assert (=> b!4292823 (= tp!1317191 b_and!338785)))

(declare-fun b!4292843 () Bool)

(declare-fun b_free!127571 () Bool)

(declare-fun b_next!128275 () Bool)

(assert (=> b!4292843 (= b_free!127571 (not b_next!128275))))

(declare-fun tp!1317183 () Bool)

(declare-fun b_and!338787 () Bool)

(assert (=> b!4292843 (= tp!1317183 b_and!338787)))

(declare-fun b!4292848 () Bool)

(declare-fun b_free!127573 () Bool)

(declare-fun b_next!128277 () Bool)

(assert (=> b!4292848 (= b_free!127573 (not b_next!128277))))

(declare-fun tp!1317189 () Bool)

(declare-fun b_and!338789 () Bool)

(assert (=> b!4292848 (= tp!1317189 b_and!338789)))

(declare-fun b!4292851 () Bool)

(declare-fun b_free!127575 () Bool)

(declare-fun b_next!128279 () Bool)

(assert (=> b!4292851 (= b_free!127575 (not b_next!128279))))

(declare-fun tp!1317204 () Bool)

(declare-fun b_and!338791 () Bool)

(assert (=> b!4292851 (= tp!1317204 b_and!338791)))

(declare-fun b!4292824 () Bool)

(declare-fun b_free!127577 () Bool)

(declare-fun b_next!128281 () Bool)

(assert (=> b!4292824 (= b_free!127577 (not b_next!128281))))

(declare-fun tp!1317192 () Bool)

(declare-fun b_and!338793 () Bool)

(assert (=> b!4292824 (= tp!1317192 b_and!338793)))

(declare-fun b!4292812 () Bool)

(declare-fun e!2667145 () Bool)

(declare-fun tp!1317201 () Bool)

(declare-fun mapRes!19934 () Bool)

(assert (=> b!4292812 (= e!2667145 (and tp!1317201 mapRes!19934))))

(declare-fun condMapEmpty!19934 () Bool)

(declare-datatypes ((C!26136 0))(
  ( (C!26137 (val!15394 Int)) )
))
(declare-datatypes ((Regex!12969 0))(
  ( (ElementMatch!12969 (c!730570 C!26136)) (Concat!21288 (regOne!26450 Regex!12969) (regTwo!26450 Regex!12969)) (EmptyExpr!12969) (Star!12969 (reg!13298 Regex!12969)) (EmptyLang!12969) (Union!12969 (regOne!26451 Regex!12969) (regTwo!26451 Regex!12969)) )
))
(declare-datatypes ((List!47871 0))(
  ( (Nil!47747) (Cons!47747 (h!53167 Regex!12969) (t!354475 List!47871)) )
))
(declare-datatypes ((Context!5718 0))(
  ( (Context!5719 (exprs!3359 List!47871)) )
))
(declare-datatypes ((tuple3!5454 0))(
  ( (tuple3!5455 (_1!25969 Regex!12969) (_2!25969 Context!5718) (_3!3247 C!26136)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45444 0))(
  ( (tuple2!45445 (_1!25970 tuple3!5454) (_2!25970 (InoxSet Context!5718))) )
))
(declare-datatypes ((List!47872 0))(
  ( (Nil!47748) (Cons!47748 (h!53168 tuple2!45444) (t!354476 List!47872)) )
))
(declare-datatypes ((Hashable!4346 0))(
  ( (HashableExt!4345 (__x!29315 Int)) )
))
(declare-datatypes ((array!15816 0))(
  ( (array!15817 (arr!7066 (Array (_ BitVec 32) (_ BitVec 64))) (size!35058 (_ BitVec 32))) )
))
(declare-datatypes ((array!15818 0))(
  ( (array!15819 (arr!7067 (Array (_ BitVec 32) List!47872)) (size!35059 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8860 0))(
  ( (LongMapFixedSize!8861 (defaultEntry!4815 Int) (mask!12884 (_ BitVec 32)) (extraKeys!4679 (_ BitVec 32)) (zeroValue!4689 List!47872) (minValue!4689 List!47872) (_size!8903 (_ BitVec 32)) (_keys!4730 array!15816) (_values!4711 array!15818) (_vacant!4491 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17529 0))(
  ( (Cell!17530 (v!41681 LongMapFixedSize!8860)) )
))
(declare-datatypes ((MutLongMap!4430 0))(
  ( (LongMap!4430 (underlying!9089 Cell!17529)) (MutLongMapExt!4429 (__x!29316 Int)) )
))
(declare-datatypes ((Cell!17531 0))(
  ( (Cell!17532 (v!41682 MutLongMap!4430)) )
))
(declare-datatypes ((MutableMap!4336 0))(
  ( (MutableMapExt!4335 (__x!29317 Int)) (HashMap!4336 (underlying!9090 Cell!17531) (hashF!6378 Hashable!4346) (_size!8904 (_ BitVec 32)) (defaultValue!4507 Int)) )
))
(declare-datatypes ((CacheDown!2946 0))(
  ( (CacheDown!2947 (cache!4476 MutableMap!4336)) )
))
(declare-fun cacheDown!1066 () CacheDown!2946)

(declare-fun mapDefault!19934 () List!47872)

(assert (=> b!4292812 (= condMapEmpty!19934 (= (arr!7067 (_values!4711 (v!41681 (underlying!9089 (v!41682 (underlying!9090 (cache!4476 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47872)) mapDefault!19934)))))

(declare-fun mapIsEmpty!19933 () Bool)

(declare-fun mapRes!19935 () Bool)

(assert (=> mapIsEmpty!19933 mapRes!19935))

(declare-fun b!4292813 () Bool)

(declare-fun res!1760152 () Bool)

(declare-datatypes ((tuple2!45446 0))(
  ( (tuple2!45447 (_1!25971 Context!5718) (_2!25971 C!26136)) )
))
(declare-datatypes ((tuple2!45448 0))(
  ( (tuple2!45449 (_1!25972 tuple2!45446) (_2!25972 (InoxSet Context!5718))) )
))
(declare-datatypes ((tuple2!45450 0))(
  ( (tuple2!45451 (_1!25973 (InoxSet Context!5718)) (_2!25973 Int)) )
))
(declare-datatypes ((tuple2!45452 0))(
  ( (tuple2!45453 (_1!25974 tuple2!45450) (_2!25974 Int)) )
))
(declare-datatypes ((List!47873 0))(
  ( (Nil!47749) (Cons!47749 (h!53169 tuple2!45452) (t!354477 List!47873)) )
))
(declare-datatypes ((array!15820 0))(
  ( (array!15821 (arr!7068 (Array (_ BitVec 32) List!47873)) (size!35060 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8862 0))(
  ( (LongMapFixedSize!8863 (defaultEntry!4816 Int) (mask!12885 (_ BitVec 32)) (extraKeys!4680 (_ BitVec 32)) (zeroValue!4690 List!47873) (minValue!4690 List!47873) (_size!8905 (_ BitVec 32)) (_keys!4731 array!15816) (_values!4712 array!15820) (_vacant!4492 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17533 0))(
  ( (Cell!17534 (v!41683 LongMapFixedSize!8862)) )
))
(declare-datatypes ((MutLongMap!4431 0))(
  ( (LongMap!4431 (underlying!9091 Cell!17533)) (MutLongMapExt!4430 (__x!29318 Int)) )
))
(declare-datatypes ((Hashable!4347 0))(
  ( (HashableExt!4346 (__x!29319 Int)) )
))
(declare-datatypes ((Cell!17535 0))(
  ( (Cell!17536 (v!41684 MutLongMap!4431)) )
))
(declare-datatypes ((MutableMap!4337 0))(
  ( (MutableMapExt!4336 (__x!29320 Int)) (HashMap!4337 (underlying!9092 Cell!17535) (hashF!6379 Hashable!4347) (_size!8906 (_ BitVec 32)) (defaultValue!4508 Int)) )
))
(declare-datatypes ((List!47874 0))(
  ( (Nil!47750) (Cons!47750 (h!53170 tuple2!45448) (t!354478 List!47874)) )
))
(declare-datatypes ((array!15822 0))(
  ( (array!15823 (arr!7069 (Array (_ BitVec 32) List!47874)) (size!35061 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8864 0))(
  ( (LongMapFixedSize!8865 (defaultEntry!4817 Int) (mask!12886 (_ BitVec 32)) (extraKeys!4681 (_ BitVec 32)) (zeroValue!4691 List!47874) (minValue!4691 List!47874) (_size!8907 (_ BitVec 32)) (_keys!4732 array!15816) (_values!4713 array!15822) (_vacant!4493 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17537 0))(
  ( (Cell!17538 (v!41685 LongMapFixedSize!8864)) )
))
(declare-datatypes ((List!47875 0))(
  ( (Nil!47751) (Cons!47751 (h!53171 C!26136) (t!354479 List!47875)) )
))
(declare-datatypes ((IArray!28881 0))(
  ( (IArray!28882 (innerList!14498 List!47875)) )
))
(declare-datatypes ((Conc!14410 0))(
  ( (Node!14410 (left!35433 Conc!14410) (right!35763 Conc!14410) (csize!29050 Int) (cheight!14621 Int)) (Leaf!22296 (xs!17716 IArray!28881) (csize!29051 Int)) (Empty!14410) )
))
(declare-datatypes ((MutLongMap!4432 0))(
  ( (LongMap!4432 (underlying!9093 Cell!17537)) (MutLongMapExt!4431 (__x!29321 Int)) )
))
(declare-datatypes ((Cell!17539 0))(
  ( (Cell!17540 (v!41686 MutLongMap!4432)) )
))
(declare-datatypes ((Hashable!4348 0))(
  ( (HashableExt!4347 (__x!29322 Int)) )
))
(declare-datatypes ((MutableMap!4338 0))(
  ( (MutableMapExt!4337 (__x!29323 Int)) (HashMap!4338 (underlying!9094 Cell!17539) (hashF!6380 Hashable!4348) (_size!8908 (_ BitVec 32)) (defaultValue!4509 Int)) )
))
(declare-datatypes ((CacheUp!2826 0))(
  ( (CacheUp!2827 (cache!4477 MutableMap!4338)) )
))
(declare-datatypes ((BalanceConc!28310 0))(
  ( (BalanceConc!28311 (c!730571 Conc!14410)) )
))
(declare-datatypes ((CacheFindLongestMatch!508 0))(
  ( (CacheFindLongestMatch!509 (cache!4478 MutableMap!4337) (totalInput!4376 BalanceConc!28310)) )
))
(declare-datatypes ((tuple4!1040 0))(
  ( (tuple4!1041 (_1!25975 Int) (_2!25975 CacheUp!2826) (_3!3248 CacheDown!2946) (_4!520 CacheFindLongestMatch!508)) )
))
(declare-fun lt!1517342 () tuple4!1040)

(declare-fun valid!3433 (CacheDown!2946) Bool)

(assert (=> b!4292813 (= res!1760152 (valid!3433 (_3!3248 lt!1517342)))))

(declare-fun e!2667133 () Bool)

(assert (=> b!4292813 (=> (not res!1760152) (not e!2667133))))

(declare-fun b!4292814 () Bool)

(declare-fun res!1760157 () Bool)

(declare-fun valid!3434 (CacheUp!2826) Bool)

(assert (=> b!4292814 (= res!1760157 (valid!3434 (_2!25975 lt!1517342)))))

(assert (=> b!4292814 (=> (not res!1760157) (not e!2667133))))

(declare-fun b!4292815 () Bool)

(declare-fun e!2667170 () Bool)

(declare-fun e!2667131 () Bool)

(declare-fun lt!1517346 () MutLongMap!4432)

(get-info :version)

(assert (=> b!4292815 (= e!2667170 (and e!2667131 ((_ is LongMap!4432) lt!1517346)))))

(declare-fun cacheUp!947 () CacheUp!2826)

(assert (=> b!4292815 (= lt!1517346 (v!41686 (underlying!9094 (cache!4477 cacheUp!947))))))

(declare-fun e!2667135 () Bool)

(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!508)

(declare-fun tp!1317203 () Bool)

(declare-fun tp!1317185 () Bool)

(declare-fun e!2667134 () Bool)

(declare-fun array_inv!5066 (array!15816) Bool)

(declare-fun array_inv!5067 (array!15820) Bool)

(assert (=> b!4292816 (= e!2667135 (and tp!1317188 tp!1317203 tp!1317185 (array_inv!5066 (_keys!4731 (v!41683 (underlying!9091 (v!41684 (underlying!9092 (cache!4478 cacheFindLongestMatch!183))))))) (array_inv!5067 (_values!4712 (v!41683 (underlying!9091 (v!41684 (underlying!9092 (cache!4478 cacheFindLongestMatch!183))))))) e!2667134))))

(declare-fun b!4292817 () Bool)

(declare-fun e!2667169 () Int)

(assert (=> b!4292817 (= e!2667169 (+ 1 (_1!25975 lt!1517342)))))

(declare-fun b!4292818 () Bool)

(declare-fun e!2667149 () Bool)

(declare-fun e!2667157 () Bool)

(assert (=> b!4292818 (= e!2667149 e!2667157)))

(declare-fun b!4292819 () Bool)

(declare-fun e!2667150 () Int)

(assert (=> b!4292819 (= e!2667150 1)))

(declare-fun b!4292820 () Bool)

(declare-fun res!1760154 () Bool)

(declare-fun valid!3435 (CacheFindLongestMatch!508) Bool)

(assert (=> b!4292820 (= res!1760154 (valid!3435 (_4!520 lt!1517342)))))

(assert (=> b!4292820 (=> (not res!1760154) (not e!2667133))))

(declare-fun b!4292821 () Bool)

(declare-fun e!2667138 () Bool)

(declare-fun e!2667151 () Bool)

(assert (=> b!4292821 (= e!2667138 (not e!2667151))))

(declare-fun res!1760158 () Bool)

(assert (=> b!4292821 (=> res!1760158 e!2667151)))

(declare-datatypes ((tuple4!1042 0))(
  ( (tuple4!1043 (_1!25976 Int) (_2!25976 CacheFindLongestMatch!508) (_3!3249 CacheDown!2946) (_4!521 CacheUp!2826)) )
))
(declare-fun lt!1517344 () tuple4!1042)

(declare-fun lt!1517348 () Int)

(assert (=> b!4292821 (= res!1760158 (not (= (_1!25976 lt!1517344) lt!1517348)))))

(declare-fun e!2667154 () Bool)

(assert (=> b!4292821 e!2667154))

(declare-fun c!730564 () Bool)

(declare-fun lt!1517350 () Bool)

(assert (=> b!4292821 (= c!730564 lt!1517350)))

(declare-fun z!3765 () (InoxSet Context!5718))

(declare-fun from!999 () Int)

(declare-fun totalInput!812 () BalanceConc!28310)

(declare-fun totalInputSize!257 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!37 ((InoxSet Context!5718) Int BalanceConc!28310 Int) Int)

(assert (=> b!4292821 (= lt!1517348 (findLongestMatchInnerZipperFastV2!37 z!3765 from!999 totalInput!812 totalInputSize!257))))

(declare-fun e!2667142 () tuple4!1042)

(assert (=> b!4292821 (= lt!1517344 e!2667142)))

(declare-fun c!730569 () Bool)

(assert (=> b!4292821 (= c!730569 lt!1517350)))

(declare-fun e!2667139 () Bool)

(assert (=> b!4292821 (= lt!1517350 e!2667139)))

(declare-fun res!1760155 () Bool)

(assert (=> b!4292821 (=> res!1760155 e!2667139)))

(assert (=> b!4292821 (= res!1760155 (= from!999 totalInputSize!257))))

(declare-fun b!4292822 () Bool)

(declare-fun e!2667146 () Bool)

(declare-fun tp!1317184 () Bool)

(declare-fun inv!63263 (Conc!14410) Bool)

(assert (=> b!4292822 (= e!2667146 (and (inv!63263 (c!730571 totalInput!812)) tp!1317184))))

(declare-fun e!2667163 () Bool)

(declare-fun tp!1317181 () Bool)

(declare-fun e!2667164 () Bool)

(declare-fun tp!1317195 () Bool)

(declare-fun array_inv!5068 (array!15822) Bool)

(assert (=> b!4292823 (= e!2667163 (and tp!1317191 tp!1317195 tp!1317181 (array_inv!5066 (_keys!4732 (v!41685 (underlying!9093 (v!41686 (underlying!9094 (cache!4477 cacheUp!947))))))) (array_inv!5068 (_values!4713 (v!41685 (underlying!9093 (v!41686 (underlying!9094 (cache!4477 cacheUp!947))))))) e!2667164))))

(declare-fun e!2667168 () Bool)

(declare-fun e!2667152 () Bool)

(assert (=> b!4292824 (= e!2667168 (and e!2667152 tp!1317192))))

(declare-fun b!4292825 () Bool)

(declare-fun e!2667162 () Bool)

(declare-fun e!2667143 () Bool)

(assert (=> b!4292825 (= e!2667162 e!2667143)))

(declare-fun b!4292826 () Bool)

(declare-fun e!2667159 () Int)

(declare-fun lt!1517347 () Int)

(assert (=> b!4292826 (= e!2667159 (+ 1 lt!1517347))))

(declare-fun b!4292827 () Bool)

(declare-fun tp!1317182 () Bool)

(assert (=> b!4292827 (= e!2667134 (and tp!1317182 mapRes!19935))))

(declare-fun condMapEmpty!19933 () Bool)

(declare-fun mapDefault!19935 () List!47873)

(assert (=> b!4292827 (= condMapEmpty!19933 (= (arr!7068 (_values!4712 (v!41683 (underlying!9091 (v!41684 (underlying!9092 (cache!4478 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47873)) mapDefault!19935)))))

(declare-fun b!4292828 () Bool)

(declare-fun e!2667166 () Int)

(assert (=> b!4292828 (= e!2667166 1)))

(declare-fun b!4292829 () Bool)

(assert (=> b!4292829 (= e!2667142 (tuple4!1043 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4292830 () Bool)

(declare-fun e!2667167 () Bool)

(assert (=> b!4292830 (= e!2667151 e!2667167)))

(declare-fun res!1760161 () Bool)

(assert (=> b!4292830 (=> res!1760161 e!2667167)))

(assert (=> b!4292830 (= res!1760161 (not (= totalInput!812 (totalInput!4376 (_2!25976 lt!1517344)))))))

(declare-datatypes ((Unit!66416 0))(
  ( (Unit!66417) )
))
(declare-fun lt!1517352 () Unit!66416)

(declare-fun lemmaInvariant!412 (CacheFindLongestMatch!508) Unit!66416)

(assert (=> b!4292830 (= lt!1517352 (lemmaInvariant!412 (_2!25976 lt!1517344)))))

(declare-fun b!4292831 () Bool)

(assert (=> b!4292831 (= e!2667142 (tuple4!1043 e!2667169 (_4!520 lt!1517342) (_3!3248 lt!1517342) (_2!25975 lt!1517342)))))

(declare-datatypes ((tuple3!5456 0))(
  ( (tuple3!5457 (_1!25977 (InoxSet Context!5718)) (_2!25977 CacheUp!2826) (_3!3250 CacheDown!2946)) )
))
(declare-fun lt!1517349 () tuple3!5456)

(declare-fun derivationStepZipperMem!133 ((InoxSet Context!5718) C!26136 CacheUp!2826 CacheDown!2946) tuple3!5456)

(declare-fun apply!10840 (BalanceConc!28310 Int) C!26136)

(assert (=> b!4292831 (= lt!1517349 (derivationStepZipperMem!133 z!3765 (apply!10840 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!17 ((InoxSet Context!5718) Int BalanceConc!28310 Int CacheUp!2826 CacheDown!2946 CacheFindLongestMatch!508) tuple4!1040)

(assert (=> b!4292831 (= lt!1517342 (findLongestMatchInnerZipperFastV2Mem!17 (_1!25977 lt!1517349) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25977 lt!1517349) (_3!3250 lt!1517349) cacheFindLongestMatch!183))))

(declare-fun res!1760153 () Bool)

(assert (=> b!4292831 (= res!1760153 (= (_1!25975 lt!1517342) (findLongestMatchInnerZipperFastV2!37 (_1!25977 lt!1517349) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(assert (=> b!4292831 (=> (not res!1760153) (not e!2667133))))

(assert (=> b!4292831 e!2667133))

(declare-fun c!730566 () Bool)

(assert (=> b!4292831 (= c!730566 (> (_1!25975 lt!1517342) 0))))

(declare-fun e!2667147 () Bool)

(declare-fun setRes!26529 () Bool)

(declare-fun setElem!26529 () Context!5718)

(declare-fun setNonEmpty!26529 () Bool)

(declare-fun tp!1317200 () Bool)

(declare-fun inv!63264 (Context!5718) Bool)

(assert (=> setNonEmpty!26529 (= setRes!26529 (and tp!1317200 (inv!63264 setElem!26529) e!2667147))))

(declare-fun setRest!26529 () (InoxSet Context!5718))

(assert (=> setNonEmpty!26529 (= z!3765 ((_ map or) (store ((as const (Array Context!5718 Bool)) false) setElem!26529 true) setRest!26529))))

(declare-fun b!4292832 () Bool)

(declare-fun e!2667155 () Bool)

(assert (=> b!4292832 (= e!2667155 e!2667162)))

(declare-fun b!4292833 () Bool)

(declare-fun e!2667161 () Bool)

(declare-fun tp!1317187 () Bool)

(assert (=> b!4292833 (= e!2667161 (and (inv!63263 (c!730571 (totalInput!4376 cacheFindLongestMatch!183))) tp!1317187))))

(declare-fun b!4292834 () Bool)

(declare-fun lt!1517345 () MutLongMap!4430)

(assert (=> b!4292834 (= e!2667152 (and e!2667155 ((_ is LongMap!4430) lt!1517345)))))

(assert (=> b!4292834 (= lt!1517345 (v!41682 (underlying!9090 (cache!4476 cacheDown!1066))))))

(declare-fun b!4292835 () Bool)

(declare-fun lostCauseZipper!648 ((InoxSet Context!5718)) Bool)

(assert (=> b!4292835 (= e!2667139 (lostCauseZipper!648 z!3765))))

(declare-fun b!4292836 () Bool)

(declare-fun e!2667132 () Bool)

(declare-fun e!2667165 () Bool)

(assert (=> b!4292836 (= e!2667132 e!2667165)))

(declare-fun b!4292837 () Bool)

(assert (=> b!4292837 (= e!2667133 (= (totalInput!4376 (_4!520 lt!1517342)) totalInput!812))))

(declare-fun b!4292838 () Bool)

(assert (=> b!4292838 (= e!2667150 0)))

(declare-fun setIsEmpty!26529 () Bool)

(assert (=> setIsEmpty!26529 setRes!26529))

(declare-fun b!4292839 () Bool)

(assert (=> b!4292839 (= e!2667157 e!2667135)))

(declare-fun b!4292840 () Bool)

(declare-fun c!730565 () Bool)

(declare-fun lt!1517343 () (InoxSet Context!5718))

(declare-fun nullableZipper!770 ((InoxSet Context!5718)) Bool)

(assert (=> b!4292840 (= c!730565 (nullableZipper!770 lt!1517343))))

(assert (=> b!4292840 (= e!2667159 e!2667150)))

(declare-fun b!4292841 () Bool)

(assert (=> b!4292841 (= e!2667154 (= lt!1517348 0))))

(declare-fun b!4292842 () Bool)

(declare-fun e!2667158 () Bool)

(assert (=> b!4292842 (= e!2667158 e!2667138)))

(declare-fun res!1760162 () Bool)

(assert (=> b!4292842 (=> (not res!1760162) (not e!2667138))))

(declare-fun lt!1517351 () Int)

(assert (=> b!4292842 (= res!1760162 (and (<= from!999 lt!1517351) (= totalInputSize!257 lt!1517351) (= (totalInput!4376 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35062 (BalanceConc!28310) Int)

(assert (=> b!4292842 (= lt!1517351 (size!35062 totalInput!812))))

(assert (=> b!4292843 (= e!2667165 (and e!2667170 tp!1317183))))

(declare-fun mapNonEmpty!19933 () Bool)

(declare-fun tp!1317194 () Bool)

(declare-fun tp!1317199 () Bool)

(assert (=> mapNonEmpty!19933 (= mapRes!19935 (and tp!1317194 tp!1317199))))

(declare-fun mapKey!19935 () (_ BitVec 32))

(declare-fun mapValue!19934 () List!47873)

(declare-fun mapRest!19933 () (Array (_ BitVec 32) List!47873))

(assert (=> mapNonEmpty!19933 (= (arr!7068 (_values!4712 (v!41683 (underlying!9091 (v!41684 (underlying!9092 (cache!4478 cacheFindLongestMatch!183))))))) (store mapRest!19933 mapKey!19935 mapValue!19934))))

(declare-fun b!4292844 () Bool)

(declare-fun e!2667136 () Bool)

(assert (=> b!4292844 (= e!2667167 e!2667136)))

(declare-fun res!1760159 () Bool)

(assert (=> b!4292844 (=> res!1760159 e!2667136)))

(declare-fun lt!1517353 () Int)

(assert (=> b!4292844 (= res!1760159 (> from!999 lt!1517353))))

(assert (=> b!4292844 (= lt!1517353 (size!35062 (totalInput!4376 (_2!25976 lt!1517344))))))

(declare-fun b!4292845 () Bool)

(declare-fun res!1760163 () Bool)

(assert (=> b!4292845 (=> res!1760163 e!2667167)))

(declare-fun validCacheMapFindLongestMatch!80 (MutableMap!4337 BalanceConc!28310) Bool)

(assert (=> b!4292845 (= res!1760163 (not (validCacheMapFindLongestMatch!80 (cache!4478 (_2!25976 lt!1517344)) (totalInput!4376 (_2!25976 lt!1517344)))))))

(declare-fun b!4292846 () Bool)

(declare-fun e!2667148 () Bool)

(assert (=> b!4292846 (= e!2667148 e!2667168)))

(declare-fun mapIsEmpty!19934 () Bool)

(declare-fun mapRes!19933 () Bool)

(assert (=> mapIsEmpty!19934 mapRes!19933))

(declare-fun b!4292847 () Bool)

(declare-fun res!1760156 () Bool)

(assert (=> b!4292847 (=> (not res!1760156) (not e!2667138))))

(declare-datatypes ((Option!10141 0))(
  ( (None!10140) (Some!10140 (v!41687 Int)) )
))
(declare-fun get!15457 (CacheFindLongestMatch!508 (InoxSet Context!5718) Int) Option!10141)

(assert (=> b!4292847 (= res!1760156 (not ((_ is Some!10140) (get!15457 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun mapIsEmpty!19935 () Bool)

(assert (=> mapIsEmpty!19935 mapRes!19934))

(declare-fun e!2667141 () Bool)

(declare-fun e!2667160 () Bool)

(assert (=> b!4292848 (= e!2667141 (and e!2667160 tp!1317189))))

(declare-fun b!4292849 () Bool)

(declare-fun c!730567 () Bool)

(assert (=> b!4292849 (= c!730567 (nullableZipper!770 (_1!25977 lt!1517349)))))

(assert (=> b!4292849 (= e!2667169 e!2667166)))

(declare-fun b!4292850 () Bool)

(declare-fun tp!1317180 () Bool)

(assert (=> b!4292850 (= e!2667164 (and tp!1317180 mapRes!19933))))

(declare-fun condMapEmpty!19935 () Bool)

(declare-fun mapDefault!19933 () List!47874)

(assert (=> b!4292850 (= condMapEmpty!19935 (= (arr!7069 (_values!4713 (v!41685 (underlying!9093 (v!41686 (underlying!9094 (cache!4477 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47874)) mapDefault!19933)))))

(declare-fun res!1760160 () Bool)

(assert (=> start!412164 (=> (not res!1760160) (not e!2667158))))

(assert (=> start!412164 (= res!1760160 (>= from!999 0))))

(assert (=> start!412164 e!2667158))

(declare-fun inv!63265 (CacheDown!2946) Bool)

(assert (=> start!412164 (and (inv!63265 cacheDown!1066) e!2667148)))

(declare-fun e!2667144 () Bool)

(declare-fun inv!63266 (CacheFindLongestMatch!508) Bool)

(assert (=> start!412164 (and (inv!63266 cacheFindLongestMatch!183) e!2667144)))

(declare-fun condSetEmpty!26529 () Bool)

(assert (=> start!412164 (= condSetEmpty!26529 (= z!3765 ((as const (Array Context!5718 Bool)) false)))))

(assert (=> start!412164 setRes!26529))

(assert (=> start!412164 true))

(declare-fun inv!63267 (BalanceConc!28310) Bool)

(assert (=> start!412164 (and (inv!63267 totalInput!812) e!2667146)))

(declare-fun inv!63268 (CacheUp!2826) Bool)

(assert (=> start!412164 (and (inv!63268 cacheUp!947) e!2667132)))

(declare-fun tp!1317190 () Bool)

(declare-fun tp!1317202 () Bool)

(declare-fun array_inv!5069 (array!15818) Bool)

(assert (=> b!4292851 (= e!2667143 (and tp!1317204 tp!1317190 tp!1317202 (array_inv!5066 (_keys!4730 (v!41681 (underlying!9089 (v!41682 (underlying!9090 (cache!4476 cacheDown!1066))))))) (array_inv!5069 (_values!4711 (v!41681 (underlying!9089 (v!41682 (underlying!9090 (cache!4476 cacheDown!1066))))))) e!2667145))))

(declare-fun b!4292852 () Bool)

(declare-fun lt!1517354 () MutLongMap!4431)

(assert (=> b!4292852 (= e!2667160 (and e!2667149 ((_ is LongMap!4431) lt!1517354)))))

(assert (=> b!4292852 (= lt!1517354 (v!41684 (underlying!9092 (cache!4478 cacheFindLongestMatch!183))))))

(declare-fun b!4292853 () Bool)

(declare-fun tp!1317186 () Bool)

(assert (=> b!4292853 (= e!2667147 tp!1317186)))

(declare-fun mapNonEmpty!19934 () Bool)

(declare-fun tp!1317196 () Bool)

(declare-fun tp!1317198 () Bool)

(assert (=> mapNonEmpty!19934 (= mapRes!19934 (and tp!1317196 tp!1317198))))

(declare-fun mapRest!19935 () (Array (_ BitVec 32) List!47872))

(declare-fun mapValue!19935 () List!47872)

(declare-fun mapKey!19934 () (_ BitVec 32))

(assert (=> mapNonEmpty!19934 (= (arr!7067 (_values!4711 (v!41681 (underlying!9089 (v!41682 (underlying!9090 (cache!4476 cacheDown!1066))))))) (store mapRest!19935 mapKey!19934 mapValue!19935))))

(declare-fun b!4292854 () Bool)

(assert (=> b!4292854 (= e!2667136 (= (_1!25976 lt!1517344) (findLongestMatchInnerZipperFastV2!37 z!3765 from!999 (totalInput!4376 (_2!25976 lt!1517344)) lt!1517353)))))

(declare-fun b!4292855 () Bool)

(declare-fun e!2667156 () Bool)

(assert (=> b!4292855 (= e!2667156 e!2667163)))

(declare-fun b!4292856 () Bool)

(assert (=> b!4292856 (= e!2667144 (and e!2667141 (inv!63267 (totalInput!4376 cacheFindLongestMatch!183)) e!2667161))))

(declare-fun b!4292857 () Bool)

(assert (=> b!4292857 (= e!2667131 e!2667156)))

(declare-fun b!4292858 () Bool)

(assert (=> b!4292858 (= e!2667166 0)))

(declare-fun mapNonEmpty!19935 () Bool)

(declare-fun tp!1317193 () Bool)

(declare-fun tp!1317197 () Bool)

(assert (=> mapNonEmpty!19935 (= mapRes!19933 (and tp!1317193 tp!1317197))))

(declare-fun mapKey!19933 () (_ BitVec 32))

(declare-fun mapValue!19933 () List!47874)

(declare-fun mapRest!19934 () (Array (_ BitVec 32) List!47874))

(assert (=> mapNonEmpty!19935 (= (arr!7069 (_values!4713 (v!41685 (underlying!9093 (v!41686 (underlying!9094 (cache!4477 cacheUp!947))))))) (store mapRest!19934 mapKey!19933 mapValue!19933))))

(declare-fun b!4292859 () Bool)

(assert (=> b!4292859 (= e!2667154 (= lt!1517348 e!2667159))))

(declare-fun derivationStepZipper!549 ((InoxSet Context!5718) C!26136) (InoxSet Context!5718))

(assert (=> b!4292859 (= lt!1517343 (derivationStepZipper!549 z!3765 (apply!10840 totalInput!812 from!999)))))

(assert (=> b!4292859 (= lt!1517347 (findLongestMatchInnerZipperFastV2!37 lt!1517343 (+ 1 from!999) totalInput!812 totalInputSize!257))))

(declare-fun c!730568 () Bool)

(assert (=> b!4292859 (= c!730568 (> lt!1517347 0))))

(assert (= (and start!412164 res!1760160) b!4292842))

(assert (= (and b!4292842 res!1760162) b!4292847))

(assert (= (and b!4292847 res!1760156) b!4292821))

(assert (= (and b!4292821 (not res!1760155)) b!4292835))

(assert (= (and b!4292821 c!730569) b!4292829))

(assert (= (and b!4292821 (not c!730569)) b!4292831))

(assert (= (and b!4292831 res!1760153) b!4292814))

(assert (= (and b!4292814 res!1760157) b!4292813))

(assert (= (and b!4292813 res!1760152) b!4292820))

(assert (= (and b!4292820 res!1760154) b!4292837))

(assert (= (and b!4292831 c!730566) b!4292817))

(assert (= (and b!4292831 (not c!730566)) b!4292849))

(assert (= (and b!4292849 c!730567) b!4292828))

(assert (= (and b!4292849 (not c!730567)) b!4292858))

(assert (= (and b!4292821 c!730564) b!4292841))

(assert (= (and b!4292821 (not c!730564)) b!4292859))

(assert (= (and b!4292859 c!730568) b!4292826))

(assert (= (and b!4292859 (not c!730568)) b!4292840))

(assert (= (and b!4292840 c!730565) b!4292819))

(assert (= (and b!4292840 (not c!730565)) b!4292838))

(assert (= (and b!4292821 (not res!1760158)) b!4292830))

(assert (= (and b!4292830 (not res!1760161)) b!4292845))

(assert (= (and b!4292845 (not res!1760163)) b!4292844))

(assert (= (and b!4292844 (not res!1760159)) b!4292854))

(assert (= (and b!4292812 condMapEmpty!19934) mapIsEmpty!19935))

(assert (= (and b!4292812 (not condMapEmpty!19934)) mapNonEmpty!19934))

(assert (= b!4292851 b!4292812))

(assert (= b!4292825 b!4292851))

(assert (= b!4292832 b!4292825))

(assert (= (and b!4292834 ((_ is LongMap!4430) (v!41682 (underlying!9090 (cache!4476 cacheDown!1066))))) b!4292832))

(assert (= b!4292824 b!4292834))

(assert (= (and b!4292846 ((_ is HashMap!4336) (cache!4476 cacheDown!1066))) b!4292824))

(assert (= start!412164 b!4292846))

(assert (= (and b!4292827 condMapEmpty!19933) mapIsEmpty!19933))

(assert (= (and b!4292827 (not condMapEmpty!19933)) mapNonEmpty!19933))

(assert (= b!4292816 b!4292827))

(assert (= b!4292839 b!4292816))

(assert (= b!4292818 b!4292839))

(assert (= (and b!4292852 ((_ is LongMap!4431) (v!41684 (underlying!9092 (cache!4478 cacheFindLongestMatch!183))))) b!4292818))

(assert (= b!4292848 b!4292852))

(assert (= (and b!4292856 ((_ is HashMap!4337) (cache!4478 cacheFindLongestMatch!183))) b!4292848))

(assert (= b!4292856 b!4292833))

(assert (= start!412164 b!4292856))

(assert (= (and start!412164 condSetEmpty!26529) setIsEmpty!26529))

(assert (= (and start!412164 (not condSetEmpty!26529)) setNonEmpty!26529))

(assert (= setNonEmpty!26529 b!4292853))

(assert (= start!412164 b!4292822))

(assert (= (and b!4292850 condMapEmpty!19935) mapIsEmpty!19934))

(assert (= (and b!4292850 (not condMapEmpty!19935)) mapNonEmpty!19935))

(assert (= b!4292823 b!4292850))

(assert (= b!4292855 b!4292823))

(assert (= b!4292857 b!4292855))

(assert (= (and b!4292815 ((_ is LongMap!4432) (v!41686 (underlying!9094 (cache!4477 cacheUp!947))))) b!4292857))

(assert (= b!4292843 b!4292815))

(assert (= (and b!4292836 ((_ is HashMap!4338) (cache!4477 cacheUp!947))) b!4292843))

(assert (= start!412164 b!4292836))

(declare-fun m!4886146 () Bool)

(assert (=> b!4292813 m!4886146))

(declare-fun m!4886148 () Bool)

(assert (=> b!4292820 m!4886148))

(declare-fun m!4886150 () Bool)

(assert (=> b!4292845 m!4886150))

(declare-fun m!4886152 () Bool)

(assert (=> b!4292831 m!4886152))

(assert (=> b!4292831 m!4886152))

(declare-fun m!4886154 () Bool)

(assert (=> b!4292831 m!4886154))

(declare-fun m!4886156 () Bool)

(assert (=> b!4292831 m!4886156))

(declare-fun m!4886158 () Bool)

(assert (=> b!4292831 m!4886158))

(declare-fun m!4886160 () Bool)

(assert (=> setNonEmpty!26529 m!4886160))

(declare-fun m!4886162 () Bool)

(assert (=> b!4292842 m!4886162))

(declare-fun m!4886164 () Bool)

(assert (=> mapNonEmpty!19933 m!4886164))

(declare-fun m!4886166 () Bool)

(assert (=> mapNonEmpty!19935 m!4886166))

(assert (=> b!4292859 m!4886152))

(assert (=> b!4292859 m!4886152))

(declare-fun m!4886168 () Bool)

(assert (=> b!4292859 m!4886168))

(declare-fun m!4886170 () Bool)

(assert (=> b!4292859 m!4886170))

(declare-fun m!4886172 () Bool)

(assert (=> b!4292854 m!4886172))

(declare-fun m!4886174 () Bool)

(assert (=> b!4292814 m!4886174))

(declare-fun m!4886176 () Bool)

(assert (=> mapNonEmpty!19934 m!4886176))

(declare-fun m!4886178 () Bool)

(assert (=> b!4292856 m!4886178))

(declare-fun m!4886180 () Bool)

(assert (=> b!4292847 m!4886180))

(declare-fun m!4886182 () Bool)

(assert (=> b!4292851 m!4886182))

(declare-fun m!4886184 () Bool)

(assert (=> b!4292851 m!4886184))

(declare-fun m!4886186 () Bool)

(assert (=> b!4292821 m!4886186))

(declare-fun m!4886188 () Bool)

(assert (=> b!4292823 m!4886188))

(declare-fun m!4886190 () Bool)

(assert (=> b!4292823 m!4886190))

(declare-fun m!4886192 () Bool)

(assert (=> b!4292830 m!4886192))

(declare-fun m!4886194 () Bool)

(assert (=> start!412164 m!4886194))

(declare-fun m!4886196 () Bool)

(assert (=> start!412164 m!4886196))

(declare-fun m!4886198 () Bool)

(assert (=> start!412164 m!4886198))

(declare-fun m!4886200 () Bool)

(assert (=> start!412164 m!4886200))

(declare-fun m!4886202 () Bool)

(assert (=> b!4292835 m!4886202))

(declare-fun m!4886204 () Bool)

(assert (=> b!4292844 m!4886204))

(declare-fun m!4886206 () Bool)

(assert (=> b!4292816 m!4886206))

(declare-fun m!4886208 () Bool)

(assert (=> b!4292816 m!4886208))

(declare-fun m!4886210 () Bool)

(assert (=> b!4292833 m!4886210))

(declare-fun m!4886212 () Bool)

(assert (=> b!4292822 m!4886212))

(declare-fun m!4886214 () Bool)

(assert (=> b!4292840 m!4886214))

(declare-fun m!4886216 () Bool)

(assert (=> b!4292849 m!4886216))

(check-sat b_and!338789 b_and!338787 (not b!4292816) (not b!4292831) (not start!412164) b_and!338785 b_and!338791 (not b_next!128271) (not b!4292856) (not b!4292813) (not b_next!128279) (not b!4292814) (not b_next!128273) (not b!4292820) (not b!4292830) (not b!4292823) (not mapNonEmpty!19933) (not b!4292842) (not setNonEmpty!26529) (not b!4292850) (not b_next!128277) (not b!4292849) (not b!4292844) (not b!4292847) (not b!4292827) b_and!338793 (not b!4292840) (not b!4292851) (not b!4292845) b_and!338783 (not b!4292812) (not b!4292854) (not b!4292821) (not b_next!128281) (not mapNonEmpty!19935) (not b!4292822) (not b!4292853) (not b!4292835) (not b!4292859) (not b_next!128275) (not mapNonEmpty!19934) (not b!4292833))
(check-sat b_and!338789 b_and!338787 (not b_next!128277) b_and!338793 b_and!338785 b_and!338791 (not b_next!128271) b_and!338783 (not b_next!128281) (not b_next!128275) (not b_next!128279) (not b_next!128273))
