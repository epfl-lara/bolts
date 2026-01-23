; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486572 () Bool)

(assert start!486572)

(declare-fun b!4758081 () Bool)

(declare-fun b_free!129223 () Bool)

(declare-fun b_next!129927 () Bool)

(assert (=> b!4758081 (= b_free!129223 (not b_next!129927))))

(declare-fun tp!1351875 () Bool)

(declare-fun b_and!340827 () Bool)

(assert (=> b!4758081 (= tp!1351875 b_and!340827)))

(declare-fun b!4758086 () Bool)

(declare-fun b_free!129225 () Bool)

(declare-fun b_next!129929 () Bool)

(assert (=> b!4758086 (= b_free!129225 (not b_next!129929))))

(declare-fun tp!1351873 () Bool)

(declare-fun b_and!340829 () Bool)

(assert (=> b!4758086 (= tp!1351873 b_and!340829)))

(declare-fun b!4758080 () Bool)

(declare-fun e!2968676 () Bool)

(declare-fun e!2968668 () Bool)

(declare-fun e!2968677 () Bool)

(declare-datatypes ((C!26248 0))(
  ( (C!26249 (val!20112 Int)) )
))
(declare-datatypes ((Regex!13025 0))(
  ( (ElementMatch!13025 (c!811879 C!26248)) (Concat!21344 (regOne!26562 Regex!13025) (regTwo!26562 Regex!13025)) (EmptyExpr!13025) (Star!13025 (reg!13354 Regex!13025)) (EmptyLang!13025) (Union!13025 (regOne!26563 Regex!13025) (regTwo!26563 Regex!13025)) )
))
(declare-datatypes ((List!53381 0))(
  ( (Nil!53257) (Cons!53257 (h!59668 Regex!13025) (t!360731 List!53381)) )
))
(declare-datatypes ((Context!5830 0))(
  ( (Context!5831 (exprs!3415 List!53381)) )
))
(declare-datatypes ((array!17568 0))(
  ( (array!17569 (arr!7839 (Array (_ BitVec 32) (_ BitVec 64))) (size!36045 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6488 0))(
  ( (HashableExt!6487 (__x!32229 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55156 0))(
  ( (tuple2!55157 (_1!30872 (InoxSet Context!5830)) (_2!30872 Int)) )
))
(declare-datatypes ((tuple2!55158 0))(
  ( (tuple2!55159 (_1!30873 tuple2!55156) (_2!30873 Int)) )
))
(declare-datatypes ((List!53382 0))(
  ( (Nil!53258) (Cons!53258 (h!59669 tuple2!55158) (t!360732 List!53382)) )
))
(declare-datatypes ((List!53383 0))(
  ( (Nil!53259) (Cons!53259 (h!59670 C!26248) (t!360733 List!53383)) )
))
(declare-datatypes ((IArray!28993 0))(
  ( (IArray!28994 (innerList!14554 List!53383)) )
))
(declare-datatypes ((Conc!14466 0))(
  ( (Node!14466 (left!39052 Conc!14466) (right!39382 Conc!14466) (csize!29162 Int) (cheight!14677 Int)) (Leaf!23551 (xs!17772 IArray!28993) (csize!29163 Int)) (Empty!14466) )
))
(declare-datatypes ((BalanceConc!28422 0))(
  ( (BalanceConc!28423 (c!811880 Conc!14466)) )
))
(declare-datatypes ((array!17570 0))(
  ( (array!17571 (arr!7840 (Array (_ BitVec 32) List!53382)) (size!36046 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9654 0))(
  ( (LongMapFixedSize!9655 (defaultEntry!5241 Int) (mask!14526 (_ BitVec 32)) (extraKeys!5097 (_ BitVec 32)) (zeroValue!5110 List!53382) (minValue!5110 List!53382) (_size!9679 (_ BitVec 32)) (_keys!5162 array!17568) (_values!5135 array!17570) (_vacant!4892 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19073 0))(
  ( (Cell!19074 (v!47323 LongMapFixedSize!9654)) )
))
(declare-datatypes ((MutLongMap!4827 0))(
  ( (LongMap!4827 (underlying!9861 Cell!19073)) (MutLongMapExt!4826 (__x!32230 Int)) )
))
(declare-datatypes ((Cell!19075 0))(
  ( (Cell!19076 (v!47324 MutLongMap!4827)) )
))
(declare-datatypes ((MutableMap!4711 0))(
  ( (MutableMapExt!4710 (__x!32231 Int)) (HashMap!4711 (underlying!9862 Cell!19075) (hashF!12298 Hashable!6488) (_size!9680 (_ BitVec 32)) (defaultValue!4882 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!620 0))(
  ( (CacheFindLongestMatch!621 (cache!4553 MutableMap!4711) (totalInput!4461 BalanceConc!28422)) )
))
(declare-fun thiss!28972 () CacheFindLongestMatch!620)

(declare-fun inv!68703 (BalanceConc!28422) Bool)

(assert (=> b!4758080 (= e!2968668 (and e!2968676 (inv!68703 (totalInput!4461 thiss!28972)) e!2968677))))

(declare-fun res!2018505 () Bool)

(declare-fun e!2968669 () Bool)

(assert (=> start!486572 (=> (not res!2018505) (not e!2968669))))

(declare-fun validCacheMapFindLongestMatch!111 (MutableMap!4711 BalanceConc!28422) Bool)

(assert (=> start!486572 (= res!2018505 (validCacheMapFindLongestMatch!111 (cache!4553 thiss!28972) (totalInput!4461 thiss!28972)))))

(assert (=> start!486572 e!2968669))

(declare-fun inv!68704 (CacheFindLongestMatch!620) Bool)

(assert (=> start!486572 (and (inv!68704 thiss!28972) e!2968668)))

(declare-fun condSetEmpty!26980 () Bool)

(declare-fun z!490 () (InoxSet Context!5830))

(assert (=> start!486572 (= condSetEmpty!26980 (= z!490 ((as const (Array Context!5830 Bool)) false)))))

(declare-fun setRes!26980 () Bool)

(assert (=> start!486572 setRes!26980))

(assert (=> start!486572 true))

(declare-fun mapNonEmpty!21473 () Bool)

(declare-fun mapRes!21473 () Bool)

(declare-fun tp!1351872 () Bool)

(declare-fun tp!1351874 () Bool)

(assert (=> mapNonEmpty!21473 (= mapRes!21473 (and tp!1351872 tp!1351874))))

(declare-fun mapRest!21473 () (Array (_ BitVec 32) List!53382))

(declare-fun mapKey!21473 () (_ BitVec 32))

(declare-fun mapValue!21473 () List!53382)

(assert (=> mapNonEmpty!21473 (= (arr!7840 (_values!5135 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))) (store mapRest!21473 mapKey!21473 mapValue!21473))))

(declare-fun e!2968673 () Bool)

(assert (=> b!4758081 (= e!2968676 (and e!2968673 tp!1351875))))

(declare-fun b!4758082 () Bool)

(declare-fun e!2968678 () Bool)

(declare-fun e!2968665 () Bool)

(assert (=> b!4758082 (= e!2968678 (not e!2968665))))

(declare-fun res!2018506 () Bool)

(assert (=> b!4758082 (=> res!2018506 e!2968665)))

(declare-datatypes ((Option!12581 0))(
  ( (None!12580) (Some!12580 (v!47325 Int)) )
))
(declare-fun lt!1923745 () Option!12581)

(declare-fun isEmpty!29261 (Option!12581) Bool)

(assert (=> b!4758082 (= res!2018506 (isEmpty!29261 lt!1923745))))

(declare-fun lt!1923746 () tuple2!55156)

(declare-fun apply!12513 (MutableMap!4711 tuple2!55156) Int)

(assert (=> b!4758082 (= lt!1923745 (Some!12580 (apply!12513 (cache!4553 thiss!28972) lt!1923746)))))

(declare-fun e!2968674 () Bool)

(assert (=> b!4758082 e!2968674))

(declare-fun res!2018507 () Bool)

(assert (=> b!4758082 (=> (not res!2018507) (not e!2968674))))

(declare-fun from!930 () Int)

(assert (=> b!4758082 (= res!2018507 (>= from!930 0))))

(declare-datatypes ((Unit!137751 0))(
  ( (Unit!137752) )
))
(declare-fun lt!1923742 () Unit!137751)

(declare-fun lemmaIfInCacheThenValid!78 (CacheFindLongestMatch!620 (InoxSet Context!5830) Int BalanceConc!28422) Unit!137751)

(assert (=> b!4758082 (= lt!1923742 (lemmaIfInCacheThenValid!78 thiss!28972 z!490 from!930 (totalInput!4461 thiss!28972)))))

(declare-fun b!4758083 () Bool)

(declare-fun tp!1351871 () Bool)

(declare-fun inv!68705 (Conc!14466) Bool)

(assert (=> b!4758083 (= e!2968677 (and (inv!68705 (c!811880 (totalInput!4461 thiss!28972))) tp!1351871))))

(declare-fun mapIsEmpty!21473 () Bool)

(assert (=> mapIsEmpty!21473 mapRes!21473))

(declare-fun e!2968671 () Bool)

(declare-fun setNonEmpty!26980 () Bool)

(declare-fun tp!1351877 () Bool)

(declare-fun setElem!26980 () Context!5830)

(declare-fun inv!68706 (Context!5830) Bool)

(assert (=> setNonEmpty!26980 (= setRes!26980 (and tp!1351877 (inv!68706 setElem!26980) e!2968671))))

(declare-fun setRest!26980 () (InoxSet Context!5830))

(assert (=> setNonEmpty!26980 (= z!490 ((_ map or) (store ((as const (Array Context!5830 Bool)) false) setElem!26980 true) setRest!26980))))

(declare-fun b!4758084 () Bool)

(assert (=> b!4758084 (= e!2968669 e!2968678)))

(declare-fun res!2018504 () Bool)

(assert (=> b!4758084 (=> (not res!2018504) (not e!2968678))))

(declare-fun contains!16620 (MutableMap!4711 tuple2!55156) Bool)

(assert (=> b!4758084 (= res!2018504 (contains!16620 (cache!4553 thiss!28972) lt!1923746))))

(assert (=> b!4758084 (= lt!1923746 (tuple2!55157 z!490 from!930))))

(declare-fun b!4758085 () Bool)

(declare-fun e!2968672 () Bool)

(declare-fun lt!1923743 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!66 ((InoxSet Context!5830) Int BalanceConc!28422 Int) Int)

(assert (=> b!4758085 (= e!2968672 (= (findLongestMatchInnerZipperFastV2!66 z!490 from!930 (totalInput!4461 thiss!28972) lt!1923743) (apply!12513 (cache!4553 thiss!28972) lt!1923746)))))

(declare-fun e!2968670 () Bool)

(declare-fun tp!1351878 () Bool)

(declare-fun tp!1351879 () Bool)

(declare-fun e!2968667 () Bool)

(declare-fun array_inv!5639 (array!17568) Bool)

(declare-fun array_inv!5640 (array!17570) Bool)

(assert (=> b!4758086 (= e!2968667 (and tp!1351873 tp!1351879 tp!1351878 (array_inv!5639 (_keys!5162 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))) (array_inv!5640 (_values!5135 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))) e!2968670))))

(declare-fun setIsEmpty!26980 () Bool)

(assert (=> setIsEmpty!26980 setRes!26980))

(declare-fun b!4758087 () Bool)

(assert (=> b!4758087 (= e!2968674 e!2968672)))

(declare-fun res!2018503 () Bool)

(assert (=> b!4758087 (=> (not res!2018503) (not e!2968672))))

(assert (=> b!4758087 (= res!2018503 (<= from!930 lt!1923743))))

(declare-fun size!36047 (BalanceConc!28422) Int)

(assert (=> b!4758087 (= lt!1923743 (size!36047 (totalInput!4461 thiss!28972)))))

(declare-fun b!4758088 () Bool)

(declare-fun tp!1351880 () Bool)

(assert (=> b!4758088 (= e!2968670 (and tp!1351880 mapRes!21473))))

(declare-fun condMapEmpty!21473 () Bool)

(declare-fun mapDefault!21473 () List!53382)

(assert (=> b!4758088 (= condMapEmpty!21473 (= (arr!7840 (_values!5135 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))) ((as const (Array (_ BitVec 32) List!53382)) mapDefault!21473)))))

(declare-fun b!4758089 () Bool)

(declare-fun tp!1351876 () Bool)

(assert (=> b!4758089 (= e!2968671 tp!1351876)))

(declare-fun b!4758090 () Bool)

(declare-fun e!2968666 () Bool)

(declare-fun e!2968675 () Bool)

(assert (=> b!4758090 (= e!2968666 e!2968675)))

(declare-fun b!4758091 () Bool)

(assert (=> b!4758091 (= e!2968675 e!2968667)))

(declare-fun b!4758092 () Bool)

(declare-fun get!17933 (Option!12581) Int)

(assert (=> b!4758092 (= e!2968665 (= (get!17933 lt!1923745) (findLongestMatchInnerZipperFastV2!66 z!490 from!930 (totalInput!4461 thiss!28972) (size!36047 (totalInput!4461 thiss!28972)))))))

(declare-fun b!4758093 () Bool)

(declare-fun lt!1923744 () MutLongMap!4827)

(get-info :version)

(assert (=> b!4758093 (= e!2968673 (and e!2968666 ((_ is LongMap!4827) lt!1923744)))))

(assert (=> b!4758093 (= lt!1923744 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))

(assert (= (and start!486572 res!2018505) b!4758084))

(assert (= (and b!4758084 res!2018504) b!4758082))

(assert (= (and b!4758082 res!2018507) b!4758087))

(assert (= (and b!4758087 res!2018503) b!4758085))

(assert (= (and b!4758082 (not res!2018506)) b!4758092))

(assert (= (and b!4758088 condMapEmpty!21473) mapIsEmpty!21473))

(assert (= (and b!4758088 (not condMapEmpty!21473)) mapNonEmpty!21473))

(assert (= b!4758086 b!4758088))

(assert (= b!4758091 b!4758086))

(assert (= b!4758090 b!4758091))

(assert (= (and b!4758093 ((_ is LongMap!4827) (v!47324 (underlying!9862 (cache!4553 thiss!28972))))) b!4758090))

(assert (= b!4758081 b!4758093))

(assert (= (and b!4758080 ((_ is HashMap!4711) (cache!4553 thiss!28972))) b!4758081))

(assert (= b!4758080 b!4758083))

(assert (= start!486572 b!4758080))

(assert (= (and start!486572 condSetEmpty!26980) setIsEmpty!26980))

(assert (= (and start!486572 (not condSetEmpty!26980)) setNonEmpty!26980))

(assert (= setNonEmpty!26980 b!4758089))

(declare-fun m!5727644 () Bool)

(assert (=> b!4758082 m!5727644))

(declare-fun m!5727646 () Bool)

(assert (=> b!4758082 m!5727646))

(declare-fun m!5727648 () Bool)

(assert (=> b!4758082 m!5727648))

(declare-fun m!5727650 () Bool)

(assert (=> b!4758087 m!5727650))

(declare-fun m!5727652 () Bool)

(assert (=> b!4758083 m!5727652))

(declare-fun m!5727654 () Bool)

(assert (=> b!4758086 m!5727654))

(declare-fun m!5727656 () Bool)

(assert (=> b!4758086 m!5727656))

(declare-fun m!5727658 () Bool)

(assert (=> b!4758092 m!5727658))

(assert (=> b!4758092 m!5727650))

(assert (=> b!4758092 m!5727650))

(declare-fun m!5727660 () Bool)

(assert (=> b!4758092 m!5727660))

(declare-fun m!5727662 () Bool)

(assert (=> b!4758084 m!5727662))

(declare-fun m!5727664 () Bool)

(assert (=> b!4758085 m!5727664))

(assert (=> b!4758085 m!5727646))

(declare-fun m!5727666 () Bool)

(assert (=> mapNonEmpty!21473 m!5727666))

(declare-fun m!5727668 () Bool)

(assert (=> b!4758080 m!5727668))

(declare-fun m!5727670 () Bool)

(assert (=> setNonEmpty!26980 m!5727670))

(declare-fun m!5727672 () Bool)

(assert (=> start!486572 m!5727672))

(declare-fun m!5727674 () Bool)

(assert (=> start!486572 m!5727674))

(check-sat (not b!4758089) (not b!4758092) (not b!4758082) (not start!486572) (not b!4758086) (not b!4758080) (not b_next!129927) (not b!4758083) b_and!340827 (not b!4758085) (not b!4758084) (not setNonEmpty!26980) (not b!4758088) b_and!340829 (not b_next!129929) (not b!4758087) (not mapNonEmpty!21473))
(check-sat b_and!340827 b_and!340829 (not b_next!129929) (not b_next!129927))
(get-model)

(declare-fun bm!333611 () Bool)

(declare-datatypes ((Option!12582 0))(
  ( (None!12581) (Some!12581 (v!47326 tuple2!55158)) )
))
(declare-fun call!333621 () Option!12582)

(declare-fun call!333617 () List!53382)

(declare-fun getPair!612 (List!53382 tuple2!55156) Option!12582)

(assert (=> bm!333611 (= call!333621 (getPair!612 call!333617 lt!1923746))))

(declare-fun b!4758116 () Bool)

(declare-fun e!2968695 () Unit!137751)

(declare-fun lt!1923805 () (_ BitVec 64))

(declare-fun lambda!223591 () Int)

(declare-datatypes ((tuple2!55160 0))(
  ( (tuple2!55161 (_1!30874 (_ BitVec 64)) (_2!30874 List!53382)) )
))
(declare-datatypes ((List!53384 0))(
  ( (Nil!53260) (Cons!53260 (h!59671 tuple2!55160) (t!360736 List!53384)) )
))
(declare-fun forallContained!3822 (List!53384 Int tuple2!55160) Unit!137751)

(declare-datatypes ((ListLongMap!4591 0))(
  ( (ListLongMap!4592 (toList!6195 List!53384)) )
))
(declare-fun map!11838 (MutLongMap!4827) ListLongMap!4591)

(declare-fun apply!12514 (MutLongMap!4827 (_ BitVec 64)) List!53382)

(assert (=> b!4758116 (= e!2968695 (forallContained!3822 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))) lambda!223591 (tuple2!55161 lt!1923805 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923805))))))

(declare-fun c!811890 () Bool)

(declare-fun contains!16621 (List!53384 tuple2!55160) Bool)

(assert (=> b!4758116 (= c!811890 (not (contains!16621 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))) (tuple2!55161 lt!1923805 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923805)))))))

(declare-fun lt!1923787 () Unit!137751)

(declare-fun e!2968698 () Unit!137751)

(assert (=> b!4758116 (= lt!1923787 e!2968698)))

(declare-fun bm!333612 () Bool)

(declare-fun call!333618 () ListLongMap!4591)

(assert (=> bm!333612 (= call!333618 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972)))))))

(declare-fun e!2968699 () Bool)

(declare-fun b!4758117 () Bool)

(declare-fun isDefined!9766 (Option!12582) Bool)

(assert (=> b!4758117 (= e!2968699 (isDefined!9766 (getPair!612 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923805) lt!1923746)))))

(declare-fun b!4758118 () Bool)

(declare-fun e!2968694 () Unit!137751)

(declare-fun Unit!137753 () Unit!137751)

(assert (=> b!4758118 (= e!2968694 Unit!137753)))

(declare-fun b!4758119 () Bool)

(declare-fun e!2968700 () Bool)

(declare-fun call!333616 () Bool)

(assert (=> b!4758119 (= e!2968700 call!333616)))

(declare-fun bm!333613 () Bool)

(assert (=> bm!333613 (= call!333616 (isDefined!9766 call!333621))))

(declare-fun b!4758120 () Bool)

(assert (=> b!4758120 false))

(declare-fun lt!1923798 () Unit!137751)

(declare-fun lt!1923792 () Unit!137751)

(assert (=> b!4758120 (= lt!1923798 lt!1923792)))

(declare-fun lt!1923801 () ListLongMap!4591)

(declare-datatypes ((ListMap!5693 0))(
  ( (ListMap!5694 (toList!6196 List!53382)) )
))
(declare-fun contains!16622 (ListMap!5693 tuple2!55156) Bool)

(declare-fun extractMap!2112 (List!53384) ListMap!5693)

(assert (=> b!4758120 (contains!16622 (extractMap!2112 (toList!6195 lt!1923801)) lt!1923746)))

(declare-fun lemmaInLongMapThenInGenericMap!176 (ListLongMap!4591 tuple2!55156 Hashable!6488) Unit!137751)

(assert (=> b!4758120 (= lt!1923792 (lemmaInLongMapThenInGenericMap!176 lt!1923801 lt!1923746 (hashF!12298 (cache!4553 thiss!28972))))))

(assert (=> b!4758120 (= lt!1923801 call!333618)))

(declare-fun Unit!137754 () Unit!137751)

(assert (=> b!4758120 (= e!2968694 Unit!137754)))

(declare-fun b!4758121 () Bool)

(declare-fun Unit!137755 () Unit!137751)

(assert (=> b!4758121 (= e!2968698 Unit!137755)))

(declare-fun b!4758122 () Bool)

(declare-fun e!2968696 () Bool)

(assert (=> b!4758122 (= e!2968696 call!333616)))

(declare-fun lt!1923791 () ListLongMap!4591)

(declare-fun bm!333615 () Bool)

(declare-fun c!811889 () Bool)

(declare-fun call!333619 () (_ BitVec 64))

(declare-fun apply!12515 (ListLongMap!4591 (_ BitVec 64)) List!53382)

(assert (=> bm!333615 (= call!333617 (apply!12515 (ite c!811889 lt!1923791 call!333618) call!333619))))

(declare-fun b!4758123 () Bool)

(declare-fun e!2968697 () Unit!137751)

(declare-fun lt!1923796 () Unit!137751)

(assert (=> b!4758123 (= e!2968697 lt!1923796)))

(assert (=> b!4758123 (= lt!1923791 call!333618)))

(declare-fun lemmaInGenericMapThenInLongMap!176 (ListLongMap!4591 tuple2!55156 Hashable!6488) Unit!137751)

(assert (=> b!4758123 (= lt!1923796 (lemmaInGenericMapThenInLongMap!176 lt!1923791 lt!1923746 (hashF!12298 (cache!4553 thiss!28972))))))

(declare-fun res!2018516 () Bool)

(declare-fun call!333620 () Bool)

(assert (=> b!4758123 (= res!2018516 call!333620)))

(assert (=> b!4758123 (=> (not res!2018516) (not e!2968696))))

(assert (=> b!4758123 e!2968696))

(declare-fun b!4758124 () Bool)

(assert (=> b!4758124 (= e!2968697 e!2968694)))

(declare-fun res!2018514 () Bool)

(assert (=> b!4758124 (= res!2018514 call!333620)))

(assert (=> b!4758124 (=> (not res!2018514) (not e!2968700))))

(declare-fun c!811892 () Bool)

(assert (=> b!4758124 (= c!811892 e!2968700)))

(declare-fun b!4758125 () Bool)

(assert (=> b!4758125 false))

(declare-fun lt!1923793 () Unit!137751)

(declare-fun lt!1923799 () Unit!137751)

(assert (=> b!4758125 (= lt!1923793 lt!1923799)))

(declare-fun lt!1923789 () List!53384)

(declare-fun lt!1923806 () List!53382)

(assert (=> b!4758125 (contains!16621 lt!1923789 (tuple2!55161 lt!1923805 lt!1923806))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!890 (List!53384 (_ BitVec 64) List!53382) Unit!137751)

(assert (=> b!4758125 (= lt!1923799 (lemmaGetValueByKeyImpliesContainsTuple!890 lt!1923789 lt!1923805 lt!1923806))))

(assert (=> b!4758125 (= lt!1923806 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923805))))

(assert (=> b!4758125 (= lt!1923789 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))

(declare-fun lt!1923803 () Unit!137751)

(declare-fun lt!1923794 () Unit!137751)

(assert (=> b!4758125 (= lt!1923803 lt!1923794)))

(declare-fun lt!1923790 () List!53384)

(declare-datatypes ((Option!12583 0))(
  ( (None!12582) (Some!12582 (v!47327 List!53382)) )
))
(declare-fun isDefined!9767 (Option!12583) Bool)

(declare-fun getValueByKey!2124 (List!53384 (_ BitVec 64)) Option!12583)

(assert (=> b!4758125 (isDefined!9767 (getValueByKey!2124 lt!1923790 lt!1923805))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1948 (List!53384 (_ BitVec 64)) Unit!137751)

(assert (=> b!4758125 (= lt!1923794 (lemmaContainsKeyImpliesGetValueByKeyDefined!1948 lt!1923790 lt!1923805))))

(assert (=> b!4758125 (= lt!1923790 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))

(declare-fun lt!1923800 () Unit!137751)

(declare-fun lt!1923804 () Unit!137751)

(assert (=> b!4758125 (= lt!1923800 lt!1923804)))

(declare-fun lt!1923802 () List!53384)

(declare-fun containsKey!3631 (List!53384 (_ BitVec 64)) Bool)

(assert (=> b!4758125 (containsKey!3631 lt!1923802 lt!1923805)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!177 (List!53384 (_ BitVec 64)) Unit!137751)

(assert (=> b!4758125 (= lt!1923804 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!177 lt!1923802 lt!1923805))))

(assert (=> b!4758125 (= lt!1923802 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))

(declare-fun Unit!137756 () Unit!137751)

(assert (=> b!4758125 (= e!2968698 Unit!137756)))

(declare-fun b!4758126 () Bool)

(declare-fun Unit!137757 () Unit!137751)

(assert (=> b!4758126 (= e!2968695 Unit!137757)))

(declare-fun bm!333616 () Bool)

(declare-fun contains!16623 (ListLongMap!4591 (_ BitVec 64)) Bool)

(assert (=> bm!333616 (= call!333620 (contains!16623 (ite c!811889 lt!1923791 call!333618) call!333619))))

(declare-fun d!1521079 () Bool)

(declare-fun lt!1923788 () Bool)

(declare-fun map!11839 (MutableMap!4711) ListMap!5693)

(assert (=> d!1521079 (= lt!1923788 (contains!16622 (map!11839 (cache!4553 thiss!28972)) lt!1923746))))

(assert (=> d!1521079 (= lt!1923788 e!2968699)))

(declare-fun res!2018515 () Bool)

(assert (=> d!1521079 (=> (not res!2018515) (not e!2968699))))

(declare-fun contains!16624 (MutLongMap!4827 (_ BitVec 64)) Bool)

(assert (=> d!1521079 (= res!2018515 (contains!16624 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923805))))

(declare-fun lt!1923797 () Unit!137751)

(assert (=> d!1521079 (= lt!1923797 e!2968697)))

(assert (=> d!1521079 (= c!811889 (contains!16622 (extractMap!2112 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972)))))) lt!1923746))))

(declare-fun lt!1923795 () Unit!137751)

(assert (=> d!1521079 (= lt!1923795 e!2968695)))

(declare-fun c!811891 () Bool)

(assert (=> d!1521079 (= c!811891 (contains!16624 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923805))))

(declare-fun hash!4513 (Hashable!6488 tuple2!55156) (_ BitVec 64))

(assert (=> d!1521079 (= lt!1923805 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746))))

(declare-fun valid!3835 (MutableMap!4711) Bool)

(assert (=> d!1521079 (valid!3835 (cache!4553 thiss!28972))))

(assert (=> d!1521079 (= (contains!16620 (cache!4553 thiss!28972) lt!1923746) lt!1923788)))

(declare-fun bm!333614 () Bool)

(assert (=> bm!333614 (= call!333619 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746))))

(assert (= (and d!1521079 c!811891) b!4758116))

(assert (= (and d!1521079 (not c!811891)) b!4758126))

(assert (= (and b!4758116 c!811890) b!4758125))

(assert (= (and b!4758116 (not c!811890)) b!4758121))

(assert (= (and d!1521079 c!811889) b!4758123))

(assert (= (and d!1521079 (not c!811889)) b!4758124))

(assert (= (and b!4758123 res!2018516) b!4758122))

(assert (= (and b!4758124 res!2018514) b!4758119))

(assert (= (and b!4758124 c!811892) b!4758120))

(assert (= (and b!4758124 (not c!811892)) b!4758118))

(assert (= (or b!4758123 b!4758122 b!4758124 b!4758119) bm!333614))

(assert (= (or b!4758123 b!4758124 b!4758119 b!4758120) bm!333612))

(assert (= (or b!4758122 b!4758119) bm!333615))

(assert (= (or b!4758123 b!4758124) bm!333616))

(assert (= (or b!4758122 b!4758119) bm!333611))

(assert (= (or b!4758122 b!4758119) bm!333613))

(assert (= (and d!1521079 res!2018515) b!4758117))

(declare-fun m!5727676 () Bool)

(assert (=> bm!333612 m!5727676))

(declare-fun m!5727678 () Bool)

(assert (=> d!1521079 m!5727678))

(declare-fun m!5727680 () Bool)

(assert (=> d!1521079 m!5727680))

(declare-fun m!5727682 () Bool)

(assert (=> d!1521079 m!5727682))

(assert (=> d!1521079 m!5727680))

(declare-fun m!5727684 () Bool)

(assert (=> d!1521079 m!5727684))

(assert (=> d!1521079 m!5727676))

(declare-fun m!5727686 () Bool)

(assert (=> d!1521079 m!5727686))

(assert (=> d!1521079 m!5727678))

(declare-fun m!5727688 () Bool)

(assert (=> d!1521079 m!5727688))

(declare-fun m!5727690 () Bool)

(assert (=> d!1521079 m!5727690))

(declare-fun m!5727692 () Bool)

(assert (=> b!4758123 m!5727692))

(declare-fun m!5727694 () Bool)

(assert (=> b!4758120 m!5727694))

(assert (=> b!4758120 m!5727694))

(declare-fun m!5727696 () Bool)

(assert (=> b!4758120 m!5727696))

(declare-fun m!5727698 () Bool)

(assert (=> b!4758120 m!5727698))

(assert (=> b!4758116 m!5727676))

(declare-fun m!5727700 () Bool)

(assert (=> b!4758116 m!5727700))

(declare-fun m!5727702 () Bool)

(assert (=> b!4758116 m!5727702))

(declare-fun m!5727704 () Bool)

(assert (=> b!4758116 m!5727704))

(assert (=> bm!333614 m!5727690))

(declare-fun m!5727706 () Bool)

(assert (=> b!4758125 m!5727706))

(assert (=> b!4758125 m!5727700))

(assert (=> b!4758125 m!5727676))

(declare-fun m!5727708 () Bool)

(assert (=> b!4758125 m!5727708))

(declare-fun m!5727710 () Bool)

(assert (=> b!4758125 m!5727710))

(declare-fun m!5727712 () Bool)

(assert (=> b!4758125 m!5727712))

(assert (=> b!4758125 m!5727706))

(declare-fun m!5727714 () Bool)

(assert (=> b!4758125 m!5727714))

(declare-fun m!5727716 () Bool)

(assert (=> b!4758125 m!5727716))

(declare-fun m!5727718 () Bool)

(assert (=> b!4758125 m!5727718))

(declare-fun m!5727720 () Bool)

(assert (=> bm!333615 m!5727720))

(declare-fun m!5727722 () Bool)

(assert (=> bm!333611 m!5727722))

(assert (=> b!4758117 m!5727700))

(assert (=> b!4758117 m!5727700))

(declare-fun m!5727724 () Bool)

(assert (=> b!4758117 m!5727724))

(assert (=> b!4758117 m!5727724))

(declare-fun m!5727726 () Bool)

(assert (=> b!4758117 m!5727726))

(declare-fun m!5727728 () Bool)

(assert (=> bm!333616 m!5727728))

(declare-fun m!5727730 () Bool)

(assert (=> bm!333613 m!5727730))

(assert (=> b!4758084 d!1521079))

(declare-fun d!1521081 () Bool)

(assert (=> d!1521081 (= (array_inv!5639 (_keys!5162 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))) (bvsge (size!36045 (_keys!5162 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758086 d!1521081))

(declare-fun d!1521083 () Bool)

(assert (=> d!1521083 (= (array_inv!5640 (_values!5135 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))) (bvsge (size!36046 (_values!5135 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758086 d!1521083))

(declare-fun b!4758143 () Bool)

(declare-fun e!2968711 () Int)

(declare-fun lt!1923815 () Int)

(assert (=> b!4758143 (= e!2968711 (+ 1 lt!1923815))))

(declare-fun b!4758144 () Bool)

(declare-fun e!2968713 () Int)

(assert (=> b!4758144 (= e!2968713 e!2968711)))

(declare-fun lt!1923813 () (InoxSet Context!5830))

(declare-fun derivationStepZipper!564 ((InoxSet Context!5830) C!26248) (InoxSet Context!5830))

(declare-fun apply!12516 (BalanceConc!28422 Int) C!26248)

(assert (=> b!4758144 (= lt!1923813 (derivationStepZipper!564 z!490 (apply!12516 (totalInput!4461 thiss!28972) from!930)))))

(assert (=> b!4758144 (= lt!1923815 (findLongestMatchInnerZipperFastV2!66 lt!1923813 (+ from!930 1) (totalInput!4461 thiss!28972) lt!1923743))))

(declare-fun c!811901 () Bool)

(assert (=> b!4758144 (= c!811901 (> lt!1923815 0))))

(declare-fun b!4758145 () Bool)

(declare-fun e!2968715 () Bool)

(declare-fun lostCauseZipper!667 ((InoxSet Context!5830)) Bool)

(assert (=> b!4758145 (= e!2968715 (lostCauseZipper!667 z!490))))

(declare-fun b!4758146 () Bool)

(declare-fun e!2968714 () Int)

(assert (=> b!4758146 (= e!2968714 1)))

(declare-fun d!1521085 () Bool)

(declare-fun lt!1923814 () Int)

(assert (=> d!1521085 (and (>= lt!1923814 0) (<= lt!1923814 (- lt!1923743 from!930)))))

(assert (=> d!1521085 (= lt!1923814 e!2968713)))

(declare-fun c!811900 () Bool)

(assert (=> d!1521085 (= c!811900 e!2968715)))

(declare-fun res!2018521 () Bool)

(assert (=> d!1521085 (=> res!2018521 e!2968715)))

(assert (=> d!1521085 (= res!2018521 (= from!930 lt!1923743))))

(declare-fun e!2968712 () Bool)

(assert (=> d!1521085 e!2968712))

(declare-fun res!2018522 () Bool)

(assert (=> d!1521085 (=> (not res!2018522) (not e!2968712))))

(assert (=> d!1521085 (= res!2018522 (>= from!930 0))))

(assert (=> d!1521085 (= (findLongestMatchInnerZipperFastV2!66 z!490 from!930 (totalInput!4461 thiss!28972) lt!1923743) lt!1923814)))

(declare-fun b!4758147 () Bool)

(assert (=> b!4758147 (= e!2968712 (<= from!930 (size!36047 (totalInput!4461 thiss!28972))))))

(declare-fun b!4758148 () Bool)

(declare-fun c!811899 () Bool)

(declare-fun nullableZipper!787 ((InoxSet Context!5830)) Bool)

(assert (=> b!4758148 (= c!811899 (nullableZipper!787 lt!1923813))))

(assert (=> b!4758148 (= e!2968711 e!2968714)))

(declare-fun b!4758149 () Bool)

(assert (=> b!4758149 (= e!2968713 0)))

(declare-fun b!4758150 () Bool)

(assert (=> b!4758150 (= e!2968714 0)))

(assert (= (and d!1521085 res!2018522) b!4758147))

(assert (= (and d!1521085 (not res!2018521)) b!4758145))

(assert (= (and d!1521085 c!811900) b!4758149))

(assert (= (and d!1521085 (not c!811900)) b!4758144))

(assert (= (and b!4758144 c!811901) b!4758143))

(assert (= (and b!4758144 (not c!811901)) b!4758148))

(assert (= (and b!4758148 c!811899) b!4758146))

(assert (= (and b!4758148 (not c!811899)) b!4758150))

(declare-fun m!5727732 () Bool)

(assert (=> b!4758144 m!5727732))

(assert (=> b!4758144 m!5727732))

(declare-fun m!5727734 () Bool)

(assert (=> b!4758144 m!5727734))

(declare-fun m!5727736 () Bool)

(assert (=> b!4758144 m!5727736))

(declare-fun m!5727738 () Bool)

(assert (=> b!4758145 m!5727738))

(assert (=> b!4758147 m!5727650))

(declare-fun m!5727740 () Bool)

(assert (=> b!4758148 m!5727740))

(assert (=> b!4758085 d!1521085))

(declare-fun bs!1146987 () Bool)

(declare-fun b!4758164 () Bool)

(assert (= bs!1146987 (and b!4758164 b!4758116)))

(declare-fun lambda!223598 () Int)

(assert (=> bs!1146987 (= lambda!223598 lambda!223591)))

(declare-fun e!2968724 () Bool)

(declare-fun b!4758163 () Bool)

(declare-fun lt!1923902 () Int)

(declare-fun getValueByKey!2125 (List!53382 tuple2!55156) Option!12581)

(assert (=> b!4758163 (= e!2968724 (= lt!1923902 (get!17933 (getValueByKey!2125 (toList!6196 (map!11839 (cache!4553 thiss!28972))) lt!1923746))))))

(declare-fun d!1521087 () Bool)

(assert (=> d!1521087 e!2968724))

(declare-fun c!811909 () Bool)

(assert (=> d!1521087 (= c!811909 (contains!16620 (cache!4553 thiss!28972) lt!1923746))))

(declare-fun e!2968722 () Int)

(assert (=> d!1521087 (= lt!1923902 e!2968722)))

(declare-fun c!811908 () Bool)

(assert (=> d!1521087 (= c!811908 (not (contains!16620 (cache!4553 thiss!28972) lt!1923746)))))

(assert (=> d!1521087 (valid!3835 (cache!4553 thiss!28972))))

(assert (=> d!1521087 (= (apply!12513 (cache!4553 thiss!28972) lt!1923746) lt!1923902)))

(declare-fun lt!1923886 () (_ BitVec 64))

(declare-fun get!17934 (Option!12582) tuple2!55158)

(assert (=> b!4758164 (= e!2968722 (_2!30873 (get!17934 (getPair!612 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923886) lt!1923746))))))

(assert (=> b!4758164 (= lt!1923886 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746))))

(declare-fun c!811910 () Bool)

(assert (=> b!4758164 (= c!811910 (not (contains!16621 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))) (tuple2!55161 lt!1923886 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923886)))))))

(declare-fun lt!1923881 () Unit!137751)

(declare-fun e!2968723 () Unit!137751)

(assert (=> b!4758164 (= lt!1923881 e!2968723)))

(declare-fun lt!1923900 () Unit!137751)

(assert (=> b!4758164 (= lt!1923900 (forallContained!3822 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))) lambda!223598 (tuple2!55161 lt!1923886 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923886))))))

(declare-fun lt!1923879 () ListLongMap!4591)

(assert (=> b!4758164 (= lt!1923879 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972)))))))

(declare-fun lt!1923888 () Unit!137751)

(declare-fun lemmaGetPairGetSameValueAsMap!44 (ListLongMap!4591 tuple2!55156 Int Hashable!6488) Unit!137751)

(assert (=> b!4758164 (= lt!1923888 (lemmaGetPairGetSameValueAsMap!44 lt!1923879 lt!1923746 (_2!30873 (get!17934 (getPair!612 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923886) lt!1923746))) (hashF!12298 (cache!4553 thiss!28972))))))

(declare-fun lt!1923885 () Unit!137751)

(declare-fun lemmaInGenMapThenLongMapContainsHash!818 (ListLongMap!4591 tuple2!55156 Hashable!6488) Unit!137751)

(assert (=> b!4758164 (= lt!1923885 (lemmaInGenMapThenLongMapContainsHash!818 lt!1923879 lt!1923746 (hashF!12298 (cache!4553 thiss!28972))))))

(assert (=> b!4758164 (contains!16623 lt!1923879 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746))))

(declare-fun lt!1923877 () Unit!137751)

(assert (=> b!4758164 (= lt!1923877 lt!1923885)))

(declare-fun lt!1923880 () (_ BitVec 64))

(assert (=> b!4758164 (= lt!1923880 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746))))

(declare-fun lt!1923901 () List!53382)

(assert (=> b!4758164 (= lt!1923901 (apply!12515 lt!1923879 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746)))))

(declare-fun lt!1923884 () Unit!137751)

(declare-fun lemmaGetValueImpliesTupleContained!417 (ListLongMap!4591 (_ BitVec 64) List!53382) Unit!137751)

(assert (=> b!4758164 (= lt!1923884 (lemmaGetValueImpliesTupleContained!417 lt!1923879 lt!1923880 lt!1923901))))

(assert (=> b!4758164 (contains!16621 (toList!6195 lt!1923879) (tuple2!55161 lt!1923880 lt!1923901))))

(declare-fun lt!1923890 () Unit!137751)

(assert (=> b!4758164 (= lt!1923890 lt!1923884)))

(declare-fun lt!1923876 () Unit!137751)

(assert (=> b!4758164 (= lt!1923876 (forallContained!3822 (toList!6195 lt!1923879) lambda!223598 (tuple2!55161 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746) (apply!12515 lt!1923879 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746)))))))

(declare-fun lt!1923897 () Unit!137751)

(declare-fun lemmaInGenMapThenGetPairDefined!408 (ListLongMap!4591 tuple2!55156 Hashable!6488) Unit!137751)

(assert (=> b!4758164 (= lt!1923897 (lemmaInGenMapThenGetPairDefined!408 lt!1923879 lt!1923746 (hashF!12298 (cache!4553 thiss!28972))))))

(declare-fun lt!1923896 () Unit!137751)

(assert (=> b!4758164 (= lt!1923896 (lemmaInGenMapThenLongMapContainsHash!818 lt!1923879 lt!1923746 (hashF!12298 (cache!4553 thiss!28972))))))

(declare-fun lt!1923891 () Unit!137751)

(assert (=> b!4758164 (= lt!1923891 lt!1923896)))

(declare-fun lt!1923889 () (_ BitVec 64))

(assert (=> b!4758164 (= lt!1923889 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746))))

(declare-fun lt!1923894 () List!53382)

(assert (=> b!4758164 (= lt!1923894 (apply!12515 lt!1923879 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746)))))

(declare-fun lt!1923903 () Unit!137751)

(assert (=> b!4758164 (= lt!1923903 (lemmaGetValueImpliesTupleContained!417 lt!1923879 lt!1923889 lt!1923894))))

(assert (=> b!4758164 (contains!16621 (toList!6195 lt!1923879) (tuple2!55161 lt!1923889 lt!1923894))))

(declare-fun lt!1923878 () Unit!137751)

(assert (=> b!4758164 (= lt!1923878 lt!1923903)))

(declare-fun lt!1923899 () Unit!137751)

(assert (=> b!4758164 (= lt!1923899 (forallContained!3822 (toList!6195 lt!1923879) lambda!223598 (tuple2!55161 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746) (apply!12515 lt!1923879 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746)))))))

(assert (=> b!4758164 (isDefined!9766 (getPair!612 (apply!12515 lt!1923879 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746)) lt!1923746))))

(declare-fun lt!1923895 () Unit!137751)

(assert (=> b!4758164 (= lt!1923895 lt!1923897)))

(assert (=> b!4758164 (= (_2!30873 (get!17934 (getPair!612 (apply!12515 lt!1923879 (hash!4513 (hashF!12298 (cache!4553 thiss!28972)) lt!1923746)) lt!1923746))) (get!17933 (getValueByKey!2125 (toList!6196 (extractMap!2112 (toList!6195 lt!1923879))) lt!1923746)))))

(declare-fun lt!1923887 () Unit!137751)

(assert (=> b!4758164 (= lt!1923887 lt!1923888)))

(declare-fun b!4758165 () Bool)

(declare-fun dynLambda!21911 (Int tuple2!55156) Int)

(assert (=> b!4758165 (= e!2968724 (= lt!1923902 (dynLambda!21911 (defaultValue!4882 (cache!4553 thiss!28972)) lt!1923746)))))

(declare-fun b!4758166 () Bool)

(assert (=> b!4758166 (= e!2968722 (dynLambda!21911 (defaultValue!4882 (cache!4553 thiss!28972)) lt!1923746))))

(declare-fun b!4758167 () Bool)

(declare-fun Unit!137758 () Unit!137751)

(assert (=> b!4758167 (= e!2968723 Unit!137758)))

(declare-fun b!4758168 () Bool)

(assert (=> b!4758168 false))

(declare-fun lt!1923898 () Unit!137751)

(declare-fun lt!1923883 () Unit!137751)

(assert (=> b!4758168 (= lt!1923898 lt!1923883)))

(declare-fun lt!1923905 () List!53384)

(declare-fun lt!1923893 () List!53382)

(assert (=> b!4758168 (contains!16621 lt!1923905 (tuple2!55161 lt!1923886 lt!1923893))))

(assert (=> b!4758168 (= lt!1923883 (lemmaGetValueByKeyImpliesContainsTuple!890 lt!1923905 lt!1923886 lt!1923893))))

(assert (=> b!4758168 (= lt!1923893 (apply!12514 (v!47324 (underlying!9862 (cache!4553 thiss!28972))) lt!1923886))))

(assert (=> b!4758168 (= lt!1923905 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))

(declare-fun lt!1923904 () Unit!137751)

(declare-fun lt!1923892 () Unit!137751)

(assert (=> b!4758168 (= lt!1923904 lt!1923892)))

(declare-fun lt!1923882 () List!53384)

(assert (=> b!4758168 (isDefined!9767 (getValueByKey!2124 lt!1923882 lt!1923886))))

(assert (=> b!4758168 (= lt!1923892 (lemmaContainsKeyImpliesGetValueByKeyDefined!1948 lt!1923882 lt!1923886))))

(assert (=> b!4758168 (= lt!1923882 (toList!6195 (map!11838 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))

(declare-fun Unit!137759 () Unit!137751)

(assert (=> b!4758168 (= e!2968723 Unit!137759)))

(assert (= (and d!1521087 c!811908) b!4758166))

(assert (= (and d!1521087 (not c!811908)) b!4758164))

(assert (= (and b!4758164 c!811910) b!4758168))

(assert (= (and b!4758164 (not c!811910)) b!4758167))

(assert (= (and d!1521087 c!811909) b!4758163))

(assert (= (and d!1521087 (not c!811909)) b!4758165))

(declare-fun b_lambda!183757 () Bool)

(assert (=> (not b_lambda!183757) (not b!4758165)))

(declare-fun t!360735 () Bool)

(declare-fun tb!257403 () Bool)

(assert (=> (and b!4758081 (= (defaultValue!4882 (cache!4553 thiss!28972)) (defaultValue!4882 (cache!4553 thiss!28972))) t!360735) tb!257403))

(declare-fun result!318848 () Bool)

(assert (=> tb!257403 (= result!318848 true)))

(assert (=> b!4758165 t!360735))

(declare-fun b_and!340831 () Bool)

(assert (= b_and!340827 (and (=> t!360735 result!318848) b_and!340831)))

(declare-fun b_lambda!183759 () Bool)

(assert (=> (not b_lambda!183759) (not b!4758166)))

(assert (=> b!4758166 t!360735))

(declare-fun b_and!340833 () Bool)

(assert (= b_and!340831 (and (=> t!360735 result!318848) b_and!340833)))

(assert (=> d!1521087 m!5727662))

(assert (=> d!1521087 m!5727686))

(assert (=> b!4758163 m!5727680))

(declare-fun m!5727742 () Bool)

(assert (=> b!4758163 m!5727742))

(assert (=> b!4758163 m!5727742))

(declare-fun m!5727744 () Bool)

(assert (=> b!4758163 m!5727744))

(declare-fun m!5727746 () Bool)

(assert (=> b!4758168 m!5727746))

(assert (=> b!4758168 m!5727676))

(declare-fun m!5727748 () Bool)

(assert (=> b!4758168 m!5727748))

(declare-fun m!5727750 () Bool)

(assert (=> b!4758168 m!5727750))

(declare-fun m!5727752 () Bool)

(assert (=> b!4758168 m!5727752))

(declare-fun m!5727754 () Bool)

(assert (=> b!4758168 m!5727754))

(assert (=> b!4758168 m!5727754))

(declare-fun m!5727756 () Bool)

(assert (=> b!4758168 m!5727756))

(declare-fun m!5727758 () Bool)

(assert (=> b!4758165 m!5727758))

(declare-fun m!5727760 () Bool)

(assert (=> b!4758164 m!5727760))

(declare-fun m!5727762 () Bool)

(assert (=> b!4758164 m!5727762))

(assert (=> b!4758164 m!5727690))

(declare-fun m!5727764 () Bool)

(assert (=> b!4758164 m!5727764))

(declare-fun m!5727766 () Bool)

(assert (=> b!4758164 m!5727766))

(declare-fun m!5727768 () Bool)

(assert (=> b!4758164 m!5727768))

(declare-fun m!5727770 () Bool)

(assert (=> b!4758164 m!5727770))

(assert (=> b!4758164 m!5727690))

(declare-fun m!5727772 () Bool)

(assert (=> b!4758164 m!5727772))

(declare-fun m!5727774 () Bool)

(assert (=> b!4758164 m!5727774))

(assert (=> b!4758164 m!5727752))

(declare-fun m!5727776 () Bool)

(assert (=> b!4758164 m!5727776))

(declare-fun m!5727778 () Bool)

(assert (=> b!4758164 m!5727778))

(assert (=> b!4758164 m!5727776))

(declare-fun m!5727780 () Bool)

(assert (=> b!4758164 m!5727780))

(declare-fun m!5727782 () Bool)

(assert (=> b!4758164 m!5727782))

(declare-fun m!5727784 () Bool)

(assert (=> b!4758164 m!5727784))

(assert (=> b!4758164 m!5727764))

(assert (=> b!4758164 m!5727768))

(declare-fun m!5727786 () Bool)

(assert (=> b!4758164 m!5727786))

(declare-fun m!5727788 () Bool)

(assert (=> b!4758164 m!5727788))

(assert (=> b!4758164 m!5727676))

(assert (=> b!4758164 m!5727768))

(declare-fun m!5727790 () Bool)

(assert (=> b!4758164 m!5727790))

(declare-fun m!5727792 () Bool)

(assert (=> b!4758164 m!5727792))

(declare-fun m!5727794 () Bool)

(assert (=> b!4758164 m!5727794))

(declare-fun m!5727796 () Bool)

(assert (=> b!4758164 m!5727796))

(assert (=> b!4758164 m!5727752))

(assert (=> b!4758164 m!5727792))

(assert (=> b!4758164 m!5727690))

(declare-fun m!5727798 () Bool)

(assert (=> b!4758164 m!5727798))

(assert (=> b!4758164 m!5727774))

(assert (=> b!4758166 m!5727758))

(assert (=> b!4758085 d!1521087))

(declare-fun d!1521089 () Bool)

(assert (=> d!1521089 (= (isEmpty!29261 lt!1923745) (not ((_ is Some!12580) lt!1923745)))))

(assert (=> b!4758082 d!1521089))

(assert (=> b!4758082 d!1521087))

(declare-fun d!1521091 () Bool)

(declare-fun e!2968729 () Bool)

(assert (=> d!1521091 e!2968729))

(declare-fun res!2018531 () Bool)

(assert (=> d!1521091 (=> res!2018531 e!2968729)))

(assert (=> d!1521091 (= res!2018531 (not (contains!16620 (cache!4553 thiss!28972) (tuple2!55157 z!490 from!930))))))

(declare-fun lt!1923908 () Unit!137751)

(declare-fun choose!33898 (CacheFindLongestMatch!620 (InoxSet Context!5830) Int BalanceConc!28422) Unit!137751)

(assert (=> d!1521091 (= lt!1923908 (choose!33898 thiss!28972 z!490 from!930 (totalInput!4461 thiss!28972)))))

(assert (=> d!1521091 (= (totalInput!4461 thiss!28972) (totalInput!4461 thiss!28972))))

(assert (=> d!1521091 (= (lemmaIfInCacheThenValid!78 thiss!28972 z!490 from!930 (totalInput!4461 thiss!28972)) lt!1923908)))

(declare-fun b!4758175 () Bool)

(declare-fun e!2968730 () Bool)

(assert (=> b!4758175 (= e!2968729 e!2968730)))

(declare-fun res!2018530 () Bool)

(assert (=> b!4758175 (=> (not res!2018530) (not e!2968730))))

(assert (=> b!4758175 (= res!2018530 (>= from!930 0))))

(declare-fun b!4758176 () Bool)

(declare-fun res!2018529 () Bool)

(assert (=> b!4758176 (=> (not res!2018529) (not e!2968730))))

(assert (=> b!4758176 (= res!2018529 (<= from!930 (size!36047 (totalInput!4461 thiss!28972))))))

(declare-fun b!4758177 () Bool)

(assert (=> b!4758177 (= e!2968730 (= (findLongestMatchInnerZipperFastV2!66 z!490 from!930 (totalInput!4461 thiss!28972) (size!36047 (totalInput!4461 thiss!28972))) (apply!12513 (cache!4553 thiss!28972) (tuple2!55157 z!490 from!930))))))

(assert (= (and d!1521091 (not res!2018531)) b!4758175))

(assert (= (and b!4758175 res!2018530) b!4758176))

(assert (= (and b!4758176 res!2018529) b!4758177))

(declare-fun m!5727800 () Bool)

(assert (=> d!1521091 m!5727800))

(declare-fun m!5727802 () Bool)

(assert (=> d!1521091 m!5727802))

(assert (=> b!4758176 m!5727650))

(assert (=> b!4758177 m!5727650))

(assert (=> b!4758177 m!5727650))

(assert (=> b!4758177 m!5727660))

(declare-fun m!5727804 () Bool)

(assert (=> b!4758177 m!5727804))

(assert (=> b!4758082 d!1521091))

(declare-fun d!1521093 () Bool)

(declare-fun c!811913 () Bool)

(assert (=> d!1521093 (= c!811913 ((_ is Node!14466) (c!811880 (totalInput!4461 thiss!28972))))))

(declare-fun e!2968735 () Bool)

(assert (=> d!1521093 (= (inv!68705 (c!811880 (totalInput!4461 thiss!28972))) e!2968735)))

(declare-fun b!4758184 () Bool)

(declare-fun inv!68707 (Conc!14466) Bool)

(assert (=> b!4758184 (= e!2968735 (inv!68707 (c!811880 (totalInput!4461 thiss!28972))))))

(declare-fun b!4758185 () Bool)

(declare-fun e!2968736 () Bool)

(assert (=> b!4758185 (= e!2968735 e!2968736)))

(declare-fun res!2018534 () Bool)

(assert (=> b!4758185 (= res!2018534 (not ((_ is Leaf!23551) (c!811880 (totalInput!4461 thiss!28972)))))))

(assert (=> b!4758185 (=> res!2018534 e!2968736)))

(declare-fun b!4758186 () Bool)

(declare-fun inv!68708 (Conc!14466) Bool)

(assert (=> b!4758186 (= e!2968736 (inv!68708 (c!811880 (totalInput!4461 thiss!28972))))))

(assert (= (and d!1521093 c!811913) b!4758184))

(assert (= (and d!1521093 (not c!811913)) b!4758185))

(assert (= (and b!4758185 (not res!2018534)) b!4758186))

(declare-fun m!5727806 () Bool)

(assert (=> b!4758184 m!5727806))

(declare-fun m!5727808 () Bool)

(assert (=> b!4758186 m!5727808))

(assert (=> b!4758083 d!1521093))

(declare-fun b!4758192 () Bool)

(assert (=> b!4758192 true))

(declare-fun d!1521095 () Bool)

(declare-fun res!2018539 () Bool)

(declare-fun e!2968739 () Bool)

(assert (=> d!1521095 (=> (not res!2018539) (not e!2968739))))

(assert (=> d!1521095 (= res!2018539 (valid!3835 (cache!4553 thiss!28972)))))

(assert (=> d!1521095 (= (validCacheMapFindLongestMatch!111 (cache!4553 thiss!28972) (totalInput!4461 thiss!28972)) e!2968739)))

(declare-fun b!4758191 () Bool)

(declare-fun res!2018540 () Bool)

(assert (=> b!4758191 (=> (not res!2018540) (not e!2968739))))

(declare-fun invariantList!1637 (List!53382) Bool)

(assert (=> b!4758191 (= res!2018540 (invariantList!1637 (toList!6196 (map!11839 (cache!4553 thiss!28972)))))))

(declare-fun lambda!223601 () Int)

(declare-fun forall!11812 (List!53382 Int) Bool)

(assert (=> b!4758192 (= e!2968739 (forall!11812 (toList!6196 (map!11839 (cache!4553 thiss!28972))) lambda!223601))))

(assert (= (and d!1521095 res!2018539) b!4758191))

(assert (= (and b!4758191 res!2018540) b!4758192))

(assert (=> d!1521095 m!5727686))

(assert (=> b!4758191 m!5727680))

(declare-fun m!5727811 () Bool)

(assert (=> b!4758191 m!5727811))

(assert (=> b!4758192 m!5727680))

(declare-fun m!5727813 () Bool)

(assert (=> b!4758192 m!5727813))

(assert (=> start!486572 d!1521095))

(declare-fun d!1521097 () Bool)

(declare-fun res!2018543 () Bool)

(declare-fun e!2968742 () Bool)

(assert (=> d!1521097 (=> (not res!2018543) (not e!2968742))))

(assert (=> d!1521097 (= res!2018543 ((_ is HashMap!4711) (cache!4553 thiss!28972)))))

(assert (=> d!1521097 (= (inv!68704 thiss!28972) e!2968742)))

(declare-fun b!4758197 () Bool)

(assert (=> b!4758197 (= e!2968742 (validCacheMapFindLongestMatch!111 (cache!4553 thiss!28972) (totalInput!4461 thiss!28972)))))

(assert (= (and d!1521097 res!2018543) b!4758197))

(assert (=> b!4758197 m!5727672))

(assert (=> start!486572 d!1521097))

(declare-fun d!1521099 () Bool)

(declare-fun lambda!223604 () Int)

(declare-fun forall!11813 (List!53381 Int) Bool)

(assert (=> d!1521099 (= (inv!68706 setElem!26980) (forall!11813 (exprs!3415 setElem!26980) lambda!223604))))

(declare-fun bs!1146988 () Bool)

(assert (= bs!1146988 d!1521099))

(declare-fun m!5727815 () Bool)

(assert (=> bs!1146988 m!5727815))

(assert (=> setNonEmpty!26980 d!1521099))

(declare-fun d!1521101 () Bool)

(assert (=> d!1521101 (= (get!17933 lt!1923745) (v!47325 lt!1923745))))

(assert (=> b!4758092 d!1521101))

(declare-fun b!4758198 () Bool)

(declare-fun e!2968743 () Int)

(declare-fun lt!1923911 () Int)

(assert (=> b!4758198 (= e!2968743 (+ 1 lt!1923911))))

(declare-fun b!4758199 () Bool)

(declare-fun e!2968745 () Int)

(assert (=> b!4758199 (= e!2968745 e!2968743)))

(declare-fun lt!1923909 () (InoxSet Context!5830))

(assert (=> b!4758199 (= lt!1923909 (derivationStepZipper!564 z!490 (apply!12516 (totalInput!4461 thiss!28972) from!930)))))

(assert (=> b!4758199 (= lt!1923911 (findLongestMatchInnerZipperFastV2!66 lt!1923909 (+ from!930 1) (totalInput!4461 thiss!28972) (size!36047 (totalInput!4461 thiss!28972))))))

(declare-fun c!811916 () Bool)

(assert (=> b!4758199 (= c!811916 (> lt!1923911 0))))

(declare-fun b!4758200 () Bool)

(declare-fun e!2968747 () Bool)

(assert (=> b!4758200 (= e!2968747 (lostCauseZipper!667 z!490))))

(declare-fun b!4758201 () Bool)

(declare-fun e!2968746 () Int)

(assert (=> b!4758201 (= e!2968746 1)))

(declare-fun d!1521103 () Bool)

(declare-fun lt!1923910 () Int)

(assert (=> d!1521103 (and (>= lt!1923910 0) (<= lt!1923910 (- (size!36047 (totalInput!4461 thiss!28972)) from!930)))))

(assert (=> d!1521103 (= lt!1923910 e!2968745)))

(declare-fun c!811915 () Bool)

(assert (=> d!1521103 (= c!811915 e!2968747)))

(declare-fun res!2018544 () Bool)

(assert (=> d!1521103 (=> res!2018544 e!2968747)))

(assert (=> d!1521103 (= res!2018544 (= from!930 (size!36047 (totalInput!4461 thiss!28972))))))

(declare-fun e!2968744 () Bool)

(assert (=> d!1521103 e!2968744))

(declare-fun res!2018545 () Bool)

(assert (=> d!1521103 (=> (not res!2018545) (not e!2968744))))

(assert (=> d!1521103 (= res!2018545 (>= from!930 0))))

(assert (=> d!1521103 (= (findLongestMatchInnerZipperFastV2!66 z!490 from!930 (totalInput!4461 thiss!28972) (size!36047 (totalInput!4461 thiss!28972))) lt!1923910)))

(declare-fun b!4758202 () Bool)

(assert (=> b!4758202 (= e!2968744 (<= from!930 (size!36047 (totalInput!4461 thiss!28972))))))

(declare-fun b!4758203 () Bool)

(declare-fun c!811914 () Bool)

(assert (=> b!4758203 (= c!811914 (nullableZipper!787 lt!1923909))))

(assert (=> b!4758203 (= e!2968743 e!2968746)))

(declare-fun b!4758204 () Bool)

(assert (=> b!4758204 (= e!2968745 0)))

(declare-fun b!4758205 () Bool)

(assert (=> b!4758205 (= e!2968746 0)))

(assert (= (and d!1521103 res!2018545) b!4758202))

(assert (= (and d!1521103 (not res!2018544)) b!4758200))

(assert (= (and d!1521103 c!811915) b!4758204))

(assert (= (and d!1521103 (not c!811915)) b!4758199))

(assert (= (and b!4758199 c!811916) b!4758198))

(assert (= (and b!4758199 (not c!811916)) b!4758203))

(assert (= (and b!4758203 c!811914) b!4758201))

(assert (= (and b!4758203 (not c!811914)) b!4758205))

(assert (=> b!4758199 m!5727732))

(assert (=> b!4758199 m!5727732))

(assert (=> b!4758199 m!5727734))

(assert (=> b!4758199 m!5727650))

(declare-fun m!5727817 () Bool)

(assert (=> b!4758199 m!5727817))

(assert (=> b!4758200 m!5727738))

(assert (=> b!4758202 m!5727650))

(declare-fun m!5727819 () Bool)

(assert (=> b!4758203 m!5727819))

(assert (=> b!4758092 d!1521103))

(declare-fun d!1521105 () Bool)

(declare-fun lt!1923914 () Int)

(declare-fun size!36048 (List!53383) Int)

(declare-fun list!17377 (BalanceConc!28422) List!53383)

(assert (=> d!1521105 (= lt!1923914 (size!36048 (list!17377 (totalInput!4461 thiss!28972))))))

(declare-fun size!36049 (Conc!14466) Int)

(assert (=> d!1521105 (= lt!1923914 (size!36049 (c!811880 (totalInput!4461 thiss!28972))))))

(assert (=> d!1521105 (= (size!36047 (totalInput!4461 thiss!28972)) lt!1923914)))

(declare-fun bs!1146989 () Bool)

(assert (= bs!1146989 d!1521105))

(declare-fun m!5727821 () Bool)

(assert (=> bs!1146989 m!5727821))

(assert (=> bs!1146989 m!5727821))

(declare-fun m!5727823 () Bool)

(assert (=> bs!1146989 m!5727823))

(declare-fun m!5727825 () Bool)

(assert (=> bs!1146989 m!5727825))

(assert (=> b!4758092 d!1521105))

(declare-fun d!1521107 () Bool)

(declare-fun isBalanced!3900 (Conc!14466) Bool)

(assert (=> d!1521107 (= (inv!68703 (totalInput!4461 thiss!28972)) (isBalanced!3900 (c!811880 (totalInput!4461 thiss!28972))))))

(declare-fun bs!1146990 () Bool)

(assert (= bs!1146990 d!1521107))

(declare-fun m!5727827 () Bool)

(assert (=> bs!1146990 m!5727827))

(assert (=> b!4758080 d!1521107))

(assert (=> b!4758087 d!1521105))

(declare-fun b!4758210 () Bool)

(declare-fun e!2968750 () Bool)

(declare-fun tp!1351885 () Bool)

(declare-fun tp!1351886 () Bool)

(assert (=> b!4758210 (= e!2968750 (and tp!1351885 tp!1351886))))

(assert (=> b!4758089 (= tp!1351876 e!2968750)))

(assert (= (and b!4758089 ((_ is Cons!53257) (exprs!3415 setElem!26980))) b!4758210))

(declare-fun b!4758217 () Bool)

(declare-fun e!2968755 () Bool)

(declare-fun setRes!26983 () Bool)

(declare-fun tp!1351895 () Bool)

(assert (=> b!4758217 (= e!2968755 (and setRes!26983 tp!1351895))))

(declare-fun condSetEmpty!26983 () Bool)

(assert (=> b!4758217 (= condSetEmpty!26983 (= (_1!30872 (_1!30873 (h!59669 mapDefault!21473))) ((as const (Array Context!5830 Bool)) false)))))

(assert (=> b!4758088 (= tp!1351880 e!2968755)))

(declare-fun e!2968756 () Bool)

(declare-fun setElem!26983 () Context!5830)

(declare-fun tp!1351894 () Bool)

(declare-fun setNonEmpty!26983 () Bool)

(assert (=> setNonEmpty!26983 (= setRes!26983 (and tp!1351894 (inv!68706 setElem!26983) e!2968756))))

(declare-fun setRest!26983 () (InoxSet Context!5830))

(assert (=> setNonEmpty!26983 (= (_1!30872 (_1!30873 (h!59669 mapDefault!21473))) ((_ map or) (store ((as const (Array Context!5830 Bool)) false) setElem!26983 true) setRest!26983))))

(declare-fun b!4758218 () Bool)

(declare-fun tp!1351893 () Bool)

(assert (=> b!4758218 (= e!2968756 tp!1351893)))

(declare-fun setIsEmpty!26983 () Bool)

(assert (=> setIsEmpty!26983 setRes!26983))

(assert (= (and b!4758217 condSetEmpty!26983) setIsEmpty!26983))

(assert (= (and b!4758217 (not condSetEmpty!26983)) setNonEmpty!26983))

(assert (= setNonEmpty!26983 b!4758218))

(assert (= (and b!4758088 ((_ is Cons!53258) mapDefault!21473)) b!4758217))

(declare-fun m!5727829 () Bool)

(assert (=> setNonEmpty!26983 m!5727829))

(declare-fun b!4758219 () Bool)

(declare-fun e!2968757 () Bool)

(declare-fun setRes!26984 () Bool)

(declare-fun tp!1351898 () Bool)

(assert (=> b!4758219 (= e!2968757 (and setRes!26984 tp!1351898))))

(declare-fun condSetEmpty!26984 () Bool)

(assert (=> b!4758219 (= condSetEmpty!26984 (= (_1!30872 (_1!30873 (h!59669 (zeroValue!5110 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))) ((as const (Array Context!5830 Bool)) false)))))

(assert (=> b!4758086 (= tp!1351879 e!2968757)))

(declare-fun tp!1351897 () Bool)

(declare-fun setElem!26984 () Context!5830)

(declare-fun setNonEmpty!26984 () Bool)

(declare-fun e!2968758 () Bool)

(assert (=> setNonEmpty!26984 (= setRes!26984 (and tp!1351897 (inv!68706 setElem!26984) e!2968758))))

(declare-fun setRest!26984 () (InoxSet Context!5830))

(assert (=> setNonEmpty!26984 (= (_1!30872 (_1!30873 (h!59669 (zeroValue!5110 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))) ((_ map or) (store ((as const (Array Context!5830 Bool)) false) setElem!26984 true) setRest!26984))))

(declare-fun b!4758220 () Bool)

(declare-fun tp!1351896 () Bool)

(assert (=> b!4758220 (= e!2968758 tp!1351896)))

(declare-fun setIsEmpty!26984 () Bool)

(assert (=> setIsEmpty!26984 setRes!26984))

(assert (= (and b!4758219 condSetEmpty!26984) setIsEmpty!26984))

(assert (= (and b!4758219 (not condSetEmpty!26984)) setNonEmpty!26984))

(assert (= setNonEmpty!26984 b!4758220))

(assert (= (and b!4758086 ((_ is Cons!53258) (zeroValue!5110 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972)))))))) b!4758219))

(declare-fun m!5727831 () Bool)

(assert (=> setNonEmpty!26984 m!5727831))

(declare-fun b!4758221 () Bool)

(declare-fun e!2968759 () Bool)

(declare-fun setRes!26985 () Bool)

(declare-fun tp!1351901 () Bool)

(assert (=> b!4758221 (= e!2968759 (and setRes!26985 tp!1351901))))

(declare-fun condSetEmpty!26985 () Bool)

(assert (=> b!4758221 (= condSetEmpty!26985 (= (_1!30872 (_1!30873 (h!59669 (minValue!5110 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))) ((as const (Array Context!5830 Bool)) false)))))

(assert (=> b!4758086 (= tp!1351878 e!2968759)))

(declare-fun e!2968760 () Bool)

(declare-fun setNonEmpty!26985 () Bool)

(declare-fun tp!1351900 () Bool)

(declare-fun setElem!26985 () Context!5830)

(assert (=> setNonEmpty!26985 (= setRes!26985 (and tp!1351900 (inv!68706 setElem!26985) e!2968760))))

(declare-fun setRest!26985 () (InoxSet Context!5830))

(assert (=> setNonEmpty!26985 (= (_1!30872 (_1!30873 (h!59669 (minValue!5110 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972))))))))) ((_ map or) (store ((as const (Array Context!5830 Bool)) false) setElem!26985 true) setRest!26985))))

(declare-fun b!4758222 () Bool)

(declare-fun tp!1351899 () Bool)

(assert (=> b!4758222 (= e!2968760 tp!1351899)))

(declare-fun setIsEmpty!26985 () Bool)

(assert (=> setIsEmpty!26985 setRes!26985))

(assert (= (and b!4758221 condSetEmpty!26985) setIsEmpty!26985))

(assert (= (and b!4758221 (not condSetEmpty!26985)) setNonEmpty!26985))

(assert (= setNonEmpty!26985 b!4758222))

(assert (= (and b!4758086 ((_ is Cons!53258) (minValue!5110 (v!47323 (underlying!9861 (v!47324 (underlying!9862 (cache!4553 thiss!28972)))))))) b!4758221))

(declare-fun m!5727833 () Bool)

(assert (=> setNonEmpty!26985 m!5727833))

(declare-fun b!4758231 () Bool)

(declare-fun tp!1351909 () Bool)

(declare-fun e!2968766 () Bool)

(declare-fun tp!1351908 () Bool)

(assert (=> b!4758231 (= e!2968766 (and (inv!68705 (left!39052 (c!811880 (totalInput!4461 thiss!28972)))) tp!1351908 (inv!68705 (right!39382 (c!811880 (totalInput!4461 thiss!28972)))) tp!1351909))))

(declare-fun b!4758233 () Bool)

(declare-fun e!2968765 () Bool)

(declare-fun tp!1351910 () Bool)

(assert (=> b!4758233 (= e!2968765 tp!1351910)))

(declare-fun b!4758232 () Bool)

(declare-fun inv!68709 (IArray!28993) Bool)

(assert (=> b!4758232 (= e!2968766 (and (inv!68709 (xs!17772 (c!811880 (totalInput!4461 thiss!28972)))) e!2968765))))

(assert (=> b!4758083 (= tp!1351871 (and (inv!68705 (c!811880 (totalInput!4461 thiss!28972))) e!2968766))))

(assert (= (and b!4758083 ((_ is Node!14466) (c!811880 (totalInput!4461 thiss!28972)))) b!4758231))

(assert (= b!4758232 b!4758233))

(assert (= (and b!4758083 ((_ is Leaf!23551) (c!811880 (totalInput!4461 thiss!28972)))) b!4758232))

(declare-fun m!5727835 () Bool)

(assert (=> b!4758231 m!5727835))

(declare-fun m!5727837 () Bool)

(assert (=> b!4758231 m!5727837))

(declare-fun m!5727839 () Bool)

(assert (=> b!4758232 m!5727839))

(assert (=> b!4758083 m!5727652))

(declare-fun condSetEmpty!26988 () Bool)

(assert (=> setNonEmpty!26980 (= condSetEmpty!26988 (= setRest!26980 ((as const (Array Context!5830 Bool)) false)))))

(declare-fun setRes!26988 () Bool)

(assert (=> setNonEmpty!26980 (= tp!1351877 setRes!26988)))

(declare-fun setIsEmpty!26988 () Bool)

(assert (=> setIsEmpty!26988 setRes!26988))

(declare-fun tp!1351916 () Bool)

(declare-fun setNonEmpty!26988 () Bool)

(declare-fun e!2968769 () Bool)

(declare-fun setElem!26988 () Context!5830)

(assert (=> setNonEmpty!26988 (= setRes!26988 (and tp!1351916 (inv!68706 setElem!26988) e!2968769))))

(declare-fun setRest!26988 () (InoxSet Context!5830))

(assert (=> setNonEmpty!26988 (= setRest!26980 ((_ map or) (store ((as const (Array Context!5830 Bool)) false) setElem!26988 true) setRest!26988))))

(declare-fun b!4758238 () Bool)

(declare-fun tp!1351915 () Bool)

(assert (=> b!4758238 (= e!2968769 tp!1351915)))

(assert (= (and setNonEmpty!26980 condSetEmpty!26988) setIsEmpty!26988))

(assert (= (and setNonEmpty!26980 (not condSetEmpty!26988)) setNonEmpty!26988))

(assert (= setNonEmpty!26988 b!4758238))

(declare-fun m!5727841 () Bool)

(assert (=> setNonEmpty!26988 m!5727841))

(declare-fun setIsEmpty!26993 () Bool)

(declare-fun setRes!26994 () Bool)

(assert (=> setIsEmpty!26993 setRes!26994))

(declare-fun mapIsEmpty!21476 () Bool)

(declare-fun mapRes!21476 () Bool)

(assert (=> mapIsEmpty!21476 mapRes!21476))

(declare-fun setRes!26993 () Bool)

(declare-fun setElem!26993 () Context!5830)

(declare-fun setNonEmpty!26993 () Bool)

(declare-fun e!2968778 () Bool)

(declare-fun tp!1351931 () Bool)

(assert (=> setNonEmpty!26993 (= setRes!26993 (and tp!1351931 (inv!68706 setElem!26993) e!2968778))))

(declare-fun mapDefault!21476 () List!53382)

(declare-fun setRest!26993 () (InoxSet Context!5830))

(assert (=> setNonEmpty!26993 (= (_1!30872 (_1!30873 (h!59669 mapDefault!21476))) ((_ map or) (store ((as const (Array Context!5830 Bool)) false) setElem!26993 true) setRest!26993))))

(declare-fun b!4758249 () Bool)

(declare-fun e!2968779 () Bool)

(declare-fun tp!1351935 () Bool)

(assert (=> b!4758249 (= e!2968779 (and setRes!26993 tp!1351935))))

(declare-fun condSetEmpty!26994 () Bool)

(assert (=> b!4758249 (= condSetEmpty!26994 (= (_1!30872 (_1!30873 (h!59669 mapDefault!21476))) ((as const (Array Context!5830 Bool)) false)))))

(declare-fun setNonEmpty!26994 () Bool)

(declare-fun e!2968781 () Bool)

(declare-fun setElem!26994 () Context!5830)

(declare-fun tp!1351934 () Bool)

(assert (=> setNonEmpty!26994 (= setRes!26994 (and tp!1351934 (inv!68706 setElem!26994) e!2968781))))

(declare-fun mapValue!21476 () List!53382)

(declare-fun setRest!26994 () (InoxSet Context!5830))

(assert (=> setNonEmpty!26994 (= (_1!30872 (_1!30873 (h!59669 mapValue!21476))) ((_ map or) (store ((as const (Array Context!5830 Bool)) false) setElem!26994 true) setRest!26994))))

(declare-fun condMapEmpty!21476 () Bool)

(assert (=> mapNonEmpty!21473 (= condMapEmpty!21476 (= mapRest!21473 ((as const (Array (_ BitVec 32) List!53382)) mapDefault!21476)))))

(assert (=> mapNonEmpty!21473 (= tp!1351872 (and e!2968779 mapRes!21476))))

(declare-fun b!4758250 () Bool)

(declare-fun e!2968780 () Bool)

(declare-fun tp!1351936 () Bool)

(assert (=> b!4758250 (= e!2968780 (and setRes!26994 tp!1351936))))

(declare-fun condSetEmpty!26993 () Bool)

(assert (=> b!4758250 (= condSetEmpty!26993 (= (_1!30872 (_1!30873 (h!59669 mapValue!21476))) ((as const (Array Context!5830 Bool)) false)))))

(declare-fun setIsEmpty!26994 () Bool)

(assert (=> setIsEmpty!26994 setRes!26993))

(declare-fun b!4758251 () Bool)

(declare-fun tp!1351937 () Bool)

(assert (=> b!4758251 (= e!2968778 tp!1351937)))

(declare-fun mapNonEmpty!21476 () Bool)

(declare-fun tp!1351933 () Bool)

(assert (=> mapNonEmpty!21476 (= mapRes!21476 (and tp!1351933 e!2968780))))

(declare-fun mapKey!21476 () (_ BitVec 32))

(declare-fun mapRest!21476 () (Array (_ BitVec 32) List!53382))

(assert (=> mapNonEmpty!21476 (= mapRest!21473 (store mapRest!21476 mapKey!21476 mapValue!21476))))

(declare-fun b!4758252 () Bool)

(declare-fun tp!1351932 () Bool)

(assert (=> b!4758252 (= e!2968781 tp!1351932)))

(assert (= (and mapNonEmpty!21473 condMapEmpty!21476) mapIsEmpty!21476))

(assert (= (and mapNonEmpty!21473 (not condMapEmpty!21476)) mapNonEmpty!21476))

(assert (= (and b!4758250 condSetEmpty!26993) setIsEmpty!26993))

(assert (= (and b!4758250 (not condSetEmpty!26993)) setNonEmpty!26994))

(assert (= setNonEmpty!26994 b!4758252))

(assert (= (and mapNonEmpty!21476 ((_ is Cons!53258) mapValue!21476)) b!4758250))

(assert (= (and b!4758249 condSetEmpty!26994) setIsEmpty!26994))

(assert (= (and b!4758249 (not condSetEmpty!26994)) setNonEmpty!26993))

(assert (= setNonEmpty!26993 b!4758251))

(assert (= (and mapNonEmpty!21473 ((_ is Cons!53258) mapDefault!21476)) b!4758249))

(declare-fun m!5727843 () Bool)

(assert (=> setNonEmpty!26993 m!5727843))

(declare-fun m!5727845 () Bool)

(assert (=> setNonEmpty!26994 m!5727845))

(declare-fun m!5727847 () Bool)

(assert (=> mapNonEmpty!21476 m!5727847))

(declare-fun b!4758253 () Bool)

(declare-fun e!2968782 () Bool)

(declare-fun setRes!26995 () Bool)

(declare-fun tp!1351940 () Bool)

(assert (=> b!4758253 (= e!2968782 (and setRes!26995 tp!1351940))))

(declare-fun condSetEmpty!26995 () Bool)

(assert (=> b!4758253 (= condSetEmpty!26995 (= (_1!30872 (_1!30873 (h!59669 mapValue!21473))) ((as const (Array Context!5830 Bool)) false)))))

(assert (=> mapNonEmpty!21473 (= tp!1351874 e!2968782)))

(declare-fun setNonEmpty!26995 () Bool)

(declare-fun e!2968783 () Bool)

(declare-fun tp!1351939 () Bool)

(declare-fun setElem!26995 () Context!5830)

(assert (=> setNonEmpty!26995 (= setRes!26995 (and tp!1351939 (inv!68706 setElem!26995) e!2968783))))

(declare-fun setRest!26995 () (InoxSet Context!5830))

(assert (=> setNonEmpty!26995 (= (_1!30872 (_1!30873 (h!59669 mapValue!21473))) ((_ map or) (store ((as const (Array Context!5830 Bool)) false) setElem!26995 true) setRest!26995))))

(declare-fun b!4758254 () Bool)

(declare-fun tp!1351938 () Bool)

(assert (=> b!4758254 (= e!2968783 tp!1351938)))

(declare-fun setIsEmpty!26995 () Bool)

(assert (=> setIsEmpty!26995 setRes!26995))

(assert (= (and b!4758253 condSetEmpty!26995) setIsEmpty!26995))

(assert (= (and b!4758253 (not condSetEmpty!26995)) setNonEmpty!26995))

(assert (= setNonEmpty!26995 b!4758254))

(assert (= (and mapNonEmpty!21473 ((_ is Cons!53258) mapValue!21473)) b!4758253))

(declare-fun m!5727849 () Bool)

(assert (=> setNonEmpty!26995 m!5727849))

(declare-fun b_lambda!183761 () Bool)

(assert (= b_lambda!183759 (or (and b!4758081 b_free!129223) b_lambda!183761)))

(declare-fun b_lambda!183763 () Bool)

(assert (= b_lambda!183757 (or (and b!4758081 b_free!129223) b_lambda!183763)))

(check-sat (not bm!333613) (not b!4758217) (not b!4758184) (not b!4758116) (not setNonEmpty!26993) (not b!4758148) (not d!1521091) (not b!4758197) (not b!4758252) (not b!4758191) (not b!4758233) (not b_lambda!183761) (not d!1521079) (not bm!333614) (not b!4758219) (not b!4758249) (not b!4758202) (not bm!333615) (not b!4758210) b_and!340833 (not b!4758168) (not b!4758253) (not b!4758231) (not setNonEmpty!26983) (not d!1521105) (not b!4758125) (not b!4758176) (not b!4758220) (not setNonEmpty!26985) (not setNonEmpty!26995) (not d!1521107) (not b!4758200) (not d!1521095) (not b!4758254) (not b!4758164) (not b!4758250) (not b!4758222) (not b!4758147) (not b!4758144) (not b!4758199) (not b!4758163) (not b_lambda!183763) (not b!4758145) (not bm!333612) b_and!340829 (not b!4758120) (not b_next!129929) (not setNonEmpty!26984) (not d!1521087) (not b!4758251) (not b!4758221) (not setNonEmpty!26994) (not mapNonEmpty!21476) (not b!4758186) (not b!4758203) (not b_next!129927) (not d!1521099) (not b!4758083) (not b!4758218) (not b!4758232) (not bm!333611) (not b!4758192) (not b!4758238) (not setNonEmpty!26988) (not b!4758177) (not b!4758123) (not bm!333616) (not b!4758117))
(check-sat b_and!340833 b_and!340829 (not b_next!129929) (not b_next!129927))
