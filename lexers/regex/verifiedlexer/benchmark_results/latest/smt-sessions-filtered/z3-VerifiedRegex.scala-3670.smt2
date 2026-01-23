; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208184 () Bool)

(assert start!208184)

(declare-fun b!2146476 () Bool)

(declare-fun b_free!63317 () Bool)

(declare-fun b_next!64021 () Bool)

(assert (=> b!2146476 (= b_free!63317 (not b_next!64021))))

(declare-fun tp!665708 () Bool)

(declare-fun b_and!172897 () Bool)

(assert (=> b!2146476 (= tp!665708 b_and!172897)))

(declare-fun b!2146474 () Bool)

(declare-fun b_free!63319 () Bool)

(declare-fun b_next!64023 () Bool)

(assert (=> b!2146474 (= b_free!63319 (not b_next!64023))))

(declare-fun tp!665710 () Bool)

(declare-fun b_and!172899 () Bool)

(assert (=> b!2146474 (= tp!665710 b_and!172899)))

(declare-fun b!2146466 () Bool)

(declare-fun e!1371977 () Bool)

(declare-fun e!1371979 () Bool)

(assert (=> b!2146466 (= e!1371977 e!1371979)))

(declare-fun res!926073 () Bool)

(assert (=> b!2146466 (=> (not res!926073) (not e!1371979))))

(declare-datatypes ((array!9537 0))(
  ( (array!9538 (arr!4260 (Array (_ BitVec 32) (_ BitVec 64))) (size!19171 (_ BitVec 32))) )
))
(declare-datatypes ((C!11760 0))(
  ( (C!11761 (val!6866 Int)) )
))
(declare-datatypes ((Regex!5807 0))(
  ( (ElementMatch!5807 (c!340788 C!11760)) (Concat!10109 (regOne!12126 Regex!5807) (regTwo!12126 Regex!5807)) (EmptyExpr!5807) (Star!5807 (reg!6136 Regex!5807)) (EmptyLang!5807) (Union!5807 (regOne!12127 Regex!5807) (regTwo!12127 Regex!5807)) )
))
(declare-datatypes ((List!24575 0))(
  ( (Nil!24491) (Cons!24491 (h!29892 Regex!5807) (t!197105 List!24575)) )
))
(declare-datatypes ((Context!2754 0))(
  ( (Context!2755 (exprs!1877 List!24575)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3546 0))(
  ( (tuple3!3547 (_1!14424 (InoxSet Context!2754)) (_2!14424 Int) (_3!2243 Int)) )
))
(declare-datatypes ((tuple2!24362 0))(
  ( (tuple2!24363 (_1!14425 tuple3!3546) (_2!14425 Int)) )
))
(declare-datatypes ((List!24576 0))(
  ( (Nil!24492) (Cons!24492 (h!29893 tuple2!24362) (t!197106 List!24576)) )
))
(declare-datatypes ((array!9539 0))(
  ( (array!9540 (arr!4261 (Array (_ BitVec 32) List!24576)) (size!19172 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5664 0))(
  ( (LongMapFixedSize!5665 (defaultEntry!3197 Int) (mask!7051 (_ BitVec 32)) (extraKeys!3080 (_ BitVec 32)) (zeroValue!3090 List!24576) (minValue!3090 List!24576) (_size!5715 (_ BitVec 32)) (_keys!3129 array!9537) (_values!3112 array!9539) (_vacant!2893 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11153 0))(
  ( (Cell!11154 (v!29083 LongMapFixedSize!5664)) )
))
(declare-datatypes ((MutLongMap!2832 0))(
  ( (LongMap!2832 (underlying!5859 Cell!11153)) (MutLongMapExt!2831 (__x!16672 Int)) )
))
(declare-datatypes ((Cell!11155 0))(
  ( (Cell!11156 (v!29084 MutLongMap!2832)) )
))
(declare-datatypes ((List!24577 0))(
  ( (Nil!24493) (Cons!24493 (h!29894 C!11760) (t!197107 List!24577)) )
))
(declare-datatypes ((IArray!15891 0))(
  ( (IArray!15892 (innerList!8003 List!24577)) )
))
(declare-datatypes ((Conc!7943 0))(
  ( (Node!7943 (left!18811 Conc!7943) (right!19141 Conc!7943) (csize!16116 Int) (cheight!8154 Int)) (Leaf!11614 (xs!10885 IArray!15891) (csize!16117 Int)) (Empty!7943) )
))
(declare-datatypes ((Hashable!2746 0))(
  ( (HashableExt!2745 (__x!16673 Int)) )
))
(declare-datatypes ((MutableMap!2746 0))(
  ( (MutableMapExt!2745 (__x!16674 Int)) (HashMap!2746 (underlying!5860 Cell!11155) (hashF!4669 Hashable!2746) (_size!5716 (_ BitVec 32)) (defaultValue!2908 Int)) )
))
(declare-datatypes ((BalanceConc!15648 0))(
  ( (BalanceConc!15649 (c!340789 Conc!7943)) )
))
(declare-datatypes ((CacheFurthestNullable!850 0))(
  ( (CacheFurthestNullable!851 (cache!3127 MutableMap!2746) (totalInput!3181 BalanceConc!15648)) )
))
(declare-fun thiss!29173 () CacheFurthestNullable!850)

(declare-fun lt!798983 () tuple3!3546)

(declare-fun contains!4154 (MutableMap!2746 tuple3!3546) Bool)

(assert (=> b!2146466 (= res!926073 (contains!4154 (cache!3127 thiss!29173) lt!798983))))

(declare-fun lastNullablePos!99 () Int)

(declare-fun from!960 () Int)

(declare-fun z!526 () (InoxSet Context!2754))

(assert (=> b!2146466 (= lt!798983 (tuple3!3547 z!526 from!960 lastNullablePos!99))))

(declare-fun b!2146467 () Bool)

(declare-fun res!926079 () Bool)

(assert (=> b!2146467 (=> (not res!926079) (not e!1371977))))

(declare-fun validCacheMapFurthestNullable!113 (MutableMap!2746 BalanceConc!15648) Bool)

(assert (=> b!2146467 (= res!926079 (validCacheMapFurthestNullable!113 (cache!3127 thiss!29173) (totalInput!3181 thiss!29173)))))

(declare-fun b!2146468 () Bool)

(declare-fun e!1371975 () Bool)

(declare-fun e!1371984 () Bool)

(assert (=> b!2146468 (= e!1371975 e!1371984)))

(declare-fun res!926076 () Bool)

(assert (=> b!2146468 (=> (not res!926076) (not e!1371984))))

(declare-fun lt!798982 () Int)

(assert (=> b!2146468 (= res!926076 (<= from!960 lt!798982))))

(declare-fun size!19173 (BalanceConc!15648) Int)

(assert (=> b!2146468 (= lt!798982 (size!19173 (totalInput!3181 thiss!29173)))))

(declare-fun mapNonEmpty!13457 () Bool)

(declare-fun mapRes!13457 () Bool)

(declare-fun tp!665706 () Bool)

(declare-fun tp!665711 () Bool)

(assert (=> mapNonEmpty!13457 (= mapRes!13457 (and tp!665706 tp!665711))))

(declare-fun mapValue!13457 () List!24576)

(declare-fun mapRest!13457 () (Array (_ BitVec 32) List!24576))

(declare-fun mapKey!13457 () (_ BitVec 32))

(assert (=> mapNonEmpty!13457 (= (arr!4261 (_values!3112 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))) (store mapRest!13457 mapKey!13457 mapValue!13457))))

(declare-fun b!2146469 () Bool)

(declare-fun res!926077 () Bool)

(assert (=> b!2146469 (=> (not res!926077) (not e!1371977))))

(declare-fun e!1371987 () Bool)

(assert (=> b!2146469 (= res!926077 e!1371987)))

(declare-fun res!926078 () Bool)

(assert (=> b!2146469 (=> res!926078 e!1371987)))

(declare-fun nullableZipper!158 ((InoxSet Context!2754)) Bool)

(assert (=> b!2146469 (= res!926078 (not (nullableZipper!158 z!526)))))

(declare-fun b!2146470 () Bool)

(declare-fun e!1371983 () Bool)

(declare-fun e!1371976 () Bool)

(declare-fun lt!798984 () MutLongMap!2832)

(get-info :version)

(assert (=> b!2146470 (= e!1371983 (and e!1371976 ((_ is LongMap!2832) lt!798984)))))

(assert (=> b!2146470 (= lt!798984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))

(declare-fun res!926075 () Bool)

(assert (=> start!208184 (=> (not res!926075) (not e!1371977))))

(assert (=> start!208184 (= res!926075 (and (>= lastNullablePos!99 (- 1)) (< lastNullablePos!99 from!960)))))

(assert (=> start!208184 e!1371977))

(assert (=> start!208184 true))

(declare-fun condSetEmpty!16810 () Bool)

(assert (=> start!208184 (= condSetEmpty!16810 (= z!526 ((as const (Array Context!2754 Bool)) false)))))

(declare-fun setRes!16810 () Bool)

(assert (=> start!208184 setRes!16810))

(declare-fun e!1371981 () Bool)

(declare-fun inv!32213 (CacheFurthestNullable!850) Bool)

(assert (=> start!208184 (and (inv!32213 thiss!29173) e!1371981)))

(declare-fun mapIsEmpty!13457 () Bool)

(assert (=> mapIsEmpty!13457 mapRes!13457))

(declare-fun b!2146471 () Bool)

(declare-fun e!1371974 () Bool)

(declare-fun tp!665703 () Bool)

(assert (=> b!2146471 (= e!1371974 (and tp!665703 mapRes!13457))))

(declare-fun condMapEmpty!13457 () Bool)

(declare-fun mapDefault!13457 () List!24576)

(assert (=> b!2146471 (= condMapEmpty!13457 (= (arr!4261 (_values!3112 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))) ((as const (Array (_ BitVec 32) List!24576)) mapDefault!13457)))))

(declare-fun b!2146472 () Bool)

(declare-fun e!1371980 () Bool)

(declare-fun e!1371982 () Bool)

(declare-fun inv!32214 (BalanceConc!15648) Bool)

(assert (=> b!2146472 (= e!1371981 (and e!1371980 (inv!32214 (totalInput!3181 thiss!29173)) e!1371982))))

(declare-fun b!2146473 () Bool)

(declare-fun e!1371973 () Bool)

(assert (=> b!2146473 (= e!1371976 e!1371973)))

(declare-fun tp!665707 () Bool)

(declare-fun e!1371978 () Bool)

(declare-fun tp!665705 () Bool)

(declare-fun array_inv!3048 (array!9537) Bool)

(declare-fun array_inv!3049 (array!9539) Bool)

(assert (=> b!2146474 (= e!1371978 (and tp!665710 tp!665707 tp!665705 (array_inv!3048 (_keys!3129 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))) (array_inv!3049 (_values!3112 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))) e!1371974))))

(declare-fun setIsEmpty!16810 () Bool)

(assert (=> setIsEmpty!16810 setRes!16810))

(declare-fun b!2146475 () Bool)

(assert (=> b!2146475 (= e!1371987 (= lastNullablePos!99 (- from!960 1)))))

(assert (=> b!2146476 (= e!1371980 (and e!1371983 tp!665708))))

(declare-fun b!2146477 () Bool)

(declare-fun furthestNullablePosition!94 ((InoxSet Context!2754) Int BalanceConc!15648 Int Int) Int)

(declare-fun apply!5982 (MutableMap!2746 tuple3!3546) Int)

(assert (=> b!2146477 (= e!1371984 (= (furthestNullablePosition!94 z!526 from!960 (totalInput!3181 thiss!29173) lt!798982 lastNullablePos!99) (apply!5982 (cache!3127 thiss!29173) lt!798983)))))

(declare-fun b!2146478 () Bool)

(declare-fun tp!665702 () Bool)

(declare-fun inv!32215 (Conc!7943) Bool)

(assert (=> b!2146478 (= e!1371982 (and (inv!32215 (c!340789 (totalInput!3181 thiss!29173))) tp!665702))))

(declare-fun b!2146479 () Bool)

(declare-fun e!1371985 () Bool)

(declare-fun tp!665704 () Bool)

(assert (=> b!2146479 (= e!1371985 tp!665704)))

(declare-fun b!2146480 () Bool)

(assert (=> b!2146480 (= e!1371979 (not ((_ is HashMap!2746) (cache!3127 thiss!29173))))))

(assert (=> b!2146480 e!1371975))

(declare-fun res!926074 () Bool)

(assert (=> b!2146480 (=> (not res!926074) (not e!1371975))))

(assert (=> b!2146480 (= res!926074 (>= from!960 0))))

(declare-datatypes ((Unit!37722 0))(
  ( (Unit!37723) )
))
(declare-fun lt!798981 () Unit!37722)

(declare-fun lemmaIfInCacheThenValid!7 (CacheFurthestNullable!850 (InoxSet Context!2754) Int Int BalanceConc!15648) Unit!37722)

(assert (=> b!2146480 (= lt!798981 (lemmaIfInCacheThenValid!7 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3181 thiss!29173)))))

(declare-fun b!2146481 () Bool)

(assert (=> b!2146481 (= e!1371973 e!1371978)))

(declare-fun tp!665709 () Bool)

(declare-fun setElem!16810 () Context!2754)

(declare-fun setNonEmpty!16810 () Bool)

(declare-fun inv!32216 (Context!2754) Bool)

(assert (=> setNonEmpty!16810 (= setRes!16810 (and tp!665709 (inv!32216 setElem!16810) e!1371985))))

(declare-fun setRest!16810 () (InoxSet Context!2754))

(assert (=> setNonEmpty!16810 (= z!526 ((_ map or) (store ((as const (Array Context!2754 Bool)) false) setElem!16810 true) setRest!16810))))

(assert (= (and start!208184 res!926075) b!2146469))

(assert (= (and b!2146469 (not res!926078)) b!2146475))

(assert (= (and b!2146469 res!926077) b!2146467))

(assert (= (and b!2146467 res!926079) b!2146466))

(assert (= (and b!2146466 res!926073) b!2146480))

(assert (= (and b!2146480 res!926074) b!2146468))

(assert (= (and b!2146468 res!926076) b!2146477))

(assert (= (and start!208184 condSetEmpty!16810) setIsEmpty!16810))

(assert (= (and start!208184 (not condSetEmpty!16810)) setNonEmpty!16810))

(assert (= setNonEmpty!16810 b!2146479))

(assert (= (and b!2146471 condMapEmpty!13457) mapIsEmpty!13457))

(assert (= (and b!2146471 (not condMapEmpty!13457)) mapNonEmpty!13457))

(assert (= b!2146474 b!2146471))

(assert (= b!2146481 b!2146474))

(assert (= b!2146473 b!2146481))

(assert (= (and b!2146470 ((_ is LongMap!2832) (v!29084 (underlying!5860 (cache!3127 thiss!29173))))) b!2146473))

(assert (= b!2146476 b!2146470))

(assert (= (and b!2146472 ((_ is HashMap!2746) (cache!3127 thiss!29173))) b!2146476))

(assert (= b!2146472 b!2146478))

(assert (= start!208184 b!2146472))

(declare-fun m!2590007 () Bool)

(assert (=> b!2146469 m!2590007))

(declare-fun m!2590009 () Bool)

(assert (=> b!2146466 m!2590009))

(declare-fun m!2590011 () Bool)

(assert (=> b!2146474 m!2590011))

(declare-fun m!2590013 () Bool)

(assert (=> b!2146474 m!2590013))

(declare-fun m!2590015 () Bool)

(assert (=> b!2146477 m!2590015))

(declare-fun m!2590017 () Bool)

(assert (=> b!2146477 m!2590017))

(declare-fun m!2590019 () Bool)

(assert (=> b!2146480 m!2590019))

(declare-fun m!2590021 () Bool)

(assert (=> b!2146468 m!2590021))

(declare-fun m!2590023 () Bool)

(assert (=> b!2146467 m!2590023))

(declare-fun m!2590025 () Bool)

(assert (=> start!208184 m!2590025))

(declare-fun m!2590027 () Bool)

(assert (=> b!2146472 m!2590027))

(declare-fun m!2590029 () Bool)

(assert (=> b!2146478 m!2590029))

(declare-fun m!2590031 () Bool)

(assert (=> mapNonEmpty!13457 m!2590031))

(declare-fun m!2590033 () Bool)

(assert (=> setNonEmpty!16810 m!2590033))

(check-sat (not b!2146480) (not setNonEmpty!16810) (not mapNonEmpty!13457) (not b!2146466) (not b!2146478) (not b_next!64023) (not b!2146474) b_and!172899 (not b!2146471) (not b!2146479) (not b!2146468) (not b!2146472) (not b!2146467) (not b!2146477) b_and!172897 (not b!2146469) (not start!208184) (not b_next!64021))
(check-sat b_and!172897 b_and!172899 (not b_next!64021) (not b_next!64023))
(get-model)

(declare-fun c!340800 () Bool)

(declare-datatypes ((tuple2!24364 0))(
  ( (tuple2!24365 (_1!14426 (_ BitVec 64)) (_2!14426 List!24576)) )
))
(declare-datatypes ((List!24578 0))(
  ( (Nil!24494) (Cons!24494 (h!29895 tuple2!24364) (t!197110 List!24578)) )
))
(declare-datatypes ((ListLongMap!235 0))(
  ( (ListLongMap!236 (toList!1084 List!24578)) )
))
(declare-fun call!128857 () ListLongMap!235)

(declare-fun call!128856 () (_ BitVec 64))

(declare-fun call!128854 () List!24576)

(declare-fun lt!799028 () ListLongMap!235)

(declare-fun bm!128848 () Bool)

(declare-fun apply!5983 (ListLongMap!235 (_ BitVec 64)) List!24576)

(assert (=> bm!128848 (= call!128854 (apply!5983 (ite c!340800 lt!799028 call!128857) call!128856))))

(declare-fun bm!128849 () Bool)

(declare-fun call!128858 () Bool)

(declare-datatypes ((Option!4955 0))(
  ( (None!4954) (Some!4954 (v!29085 tuple2!24362)) )
))
(declare-fun call!128855 () Option!4955)

(declare-fun isDefined!4077 (Option!4955) Bool)

(assert (=> bm!128849 (= call!128858 (isDefined!4077 call!128855))))

(declare-fun lambda!80600 () Int)

(declare-fun e!1372005 () Unit!37722)

(declare-fun lt!799043 () (_ BitVec 64))

(declare-fun b!2146504 () Bool)

(declare-fun forallContained!753 (List!24578 Int tuple2!24364) Unit!37722)

(declare-fun map!4914 (MutLongMap!2832) ListLongMap!235)

(declare-fun apply!5984 (MutLongMap!2832 (_ BitVec 64)) List!24576)

(assert (=> b!2146504 (= e!1372005 (forallContained!753 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))) lambda!80600 (tuple2!24365 lt!799043 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799043))))))

(declare-fun c!340801 () Bool)

(declare-fun contains!4155 (List!24578 tuple2!24364) Bool)

(assert (=> b!2146504 (= c!340801 (not (contains!4155 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))) (tuple2!24365 lt!799043 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799043)))))))

(declare-fun lt!799040 () Unit!37722)

(declare-fun e!1372007 () Unit!37722)

(assert (=> b!2146504 (= lt!799040 e!1372007)))

(declare-fun b!2146505 () Bool)

(declare-fun e!1372003 () Unit!37722)

(declare-fun e!1372008 () Unit!37722)

(assert (=> b!2146505 (= e!1372003 e!1372008)))

(declare-fun res!926086 () Bool)

(declare-fun call!128853 () Bool)

(assert (=> b!2146505 (= res!926086 call!128853)))

(declare-fun e!1372004 () Bool)

(assert (=> b!2146505 (=> (not res!926086) (not e!1372004))))

(declare-fun c!340798 () Bool)

(assert (=> b!2146505 (= c!340798 e!1372004)))

(declare-fun b!2146506 () Bool)

(declare-fun Unit!37724 () Unit!37722)

(assert (=> b!2146506 (= e!1372008 Unit!37724)))

(declare-fun b!2146507 () Bool)

(declare-fun e!1372006 () Bool)

(assert (=> b!2146507 (= e!1372006 call!128858)))

(declare-fun b!2146508 () Bool)

(assert (=> b!2146508 false))

(declare-fun lt!799039 () Unit!37722)

(declare-fun lt!799032 () Unit!37722)

(assert (=> b!2146508 (= lt!799039 lt!799032)))

(declare-fun lt!799029 () List!24578)

(declare-fun lt!799034 () List!24576)

(assert (=> b!2146508 (contains!4155 lt!799029 (tuple2!24365 lt!799043 lt!799034))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!7 (List!24578 (_ BitVec 64) List!24576) Unit!37722)

(assert (=> b!2146508 (= lt!799032 (lemmaGetValueByKeyImpliesContainsTuple!7 lt!799029 lt!799043 lt!799034))))

(assert (=> b!2146508 (= lt!799034 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799043))))

(assert (=> b!2146508 (= lt!799029 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))

(declare-fun lt!799026 () Unit!37722)

(declare-fun lt!799025 () Unit!37722)

(assert (=> b!2146508 (= lt!799026 lt!799025)))

(declare-fun lt!799042 () List!24578)

(declare-datatypes ((Option!4956 0))(
  ( (None!4955) (Some!4955 (v!29086 List!24576)) )
))
(declare-fun isDefined!4078 (Option!4956) Bool)

(declare-fun getValueByKey!33 (List!24578 (_ BitVec 64)) Option!4956)

(assert (=> b!2146508 (isDefined!4078 (getValueByKey!33 lt!799042 lt!799043))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!23 (List!24578 (_ BitVec 64)) Unit!37722)

(assert (=> b!2146508 (= lt!799025 (lemmaContainsKeyImpliesGetValueByKeyDefined!23 lt!799042 lt!799043))))

(assert (=> b!2146508 (= lt!799042 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))

(declare-fun lt!799037 () Unit!37722)

(declare-fun lt!799044 () Unit!37722)

(assert (=> b!2146508 (= lt!799037 lt!799044)))

(declare-fun lt!799031 () List!24578)

(declare-fun containsKey!42 (List!24578 (_ BitVec 64)) Bool)

(assert (=> b!2146508 (containsKey!42 lt!799031 lt!799043)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!7 (List!24578 (_ BitVec 64)) Unit!37722)

(assert (=> b!2146508 (= lt!799044 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!7 lt!799031 lt!799043))))

(assert (=> b!2146508 (= lt!799031 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))

(declare-fun Unit!37725 () Unit!37722)

(assert (=> b!2146508 (= e!1372007 Unit!37725)))

(declare-fun b!2146509 () Bool)

(declare-fun e!1372002 () Bool)

(declare-fun getPair!6 (List!24576 tuple3!3546) Option!4955)

(assert (=> b!2146509 (= e!1372002 (isDefined!4077 (getPair!6 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799043) lt!798983)))))

(declare-fun b!2146510 () Bool)

(declare-fun Unit!37726 () Unit!37722)

(assert (=> b!2146510 (= e!1372005 Unit!37726)))

(declare-fun b!2146511 () Bool)

(declare-fun Unit!37727 () Unit!37722)

(assert (=> b!2146511 (= e!1372007 Unit!37727)))

(declare-fun bm!128850 () Bool)

(declare-fun hash!541 (Hashable!2746 tuple3!3546) (_ BitVec 64))

(assert (=> bm!128850 (= call!128856 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983))))

(declare-fun d!645259 () Bool)

(declare-fun lt!799036 () Bool)

(declare-datatypes ((ListMap!671 0))(
  ( (ListMap!672 (toList!1085 List!24576)) )
))
(declare-fun contains!4156 (ListMap!671 tuple3!3546) Bool)

(declare-fun map!4915 (MutableMap!2746) ListMap!671)

(assert (=> d!645259 (= lt!799036 (contains!4156 (map!4915 (cache!3127 thiss!29173)) lt!798983))))

(assert (=> d!645259 (= lt!799036 e!1372002)))

(declare-fun res!926088 () Bool)

(assert (=> d!645259 (=> (not res!926088) (not e!1372002))))

(declare-fun contains!4157 (MutLongMap!2832 (_ BitVec 64)) Bool)

(assert (=> d!645259 (= res!926088 (contains!4157 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799043))))

(declare-fun lt!799041 () Unit!37722)

(assert (=> d!645259 (= lt!799041 e!1372003)))

(declare-fun extractMap!69 (List!24578) ListMap!671)

(assert (=> d!645259 (= c!340800 (contains!4156 (extractMap!69 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173)))))) lt!798983))))

(declare-fun lt!799033 () Unit!37722)

(assert (=> d!645259 (= lt!799033 e!1372005)))

(declare-fun c!340799 () Bool)

(assert (=> d!645259 (= c!340799 (contains!4157 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799043))))

(assert (=> d!645259 (= lt!799043 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983))))

(declare-fun valid!2205 (MutableMap!2746) Bool)

(assert (=> d!645259 (valid!2205 (cache!3127 thiss!29173))))

(assert (=> d!645259 (= (contains!4154 (cache!3127 thiss!29173) lt!798983) lt!799036)))

(declare-fun b!2146512 () Bool)

(assert (=> b!2146512 (= e!1372004 call!128858)))

(declare-fun b!2146513 () Bool)

(assert (=> b!2146513 false))

(declare-fun lt!799035 () Unit!37722)

(declare-fun lt!799038 () Unit!37722)

(assert (=> b!2146513 (= lt!799035 lt!799038)))

(declare-fun lt!799027 () ListLongMap!235)

(assert (=> b!2146513 (contains!4156 (extractMap!69 (toList!1084 lt!799027)) lt!798983)))

(declare-fun lemmaInLongMapThenInGenericMap!6 (ListLongMap!235 tuple3!3546 Hashable!2746) Unit!37722)

(assert (=> b!2146513 (= lt!799038 (lemmaInLongMapThenInGenericMap!6 lt!799027 lt!798983 (hashF!4669 (cache!3127 thiss!29173))))))

(assert (=> b!2146513 (= lt!799027 call!128857)))

(declare-fun Unit!37728 () Unit!37722)

(assert (=> b!2146513 (= e!1372008 Unit!37728)))

(declare-fun bm!128851 () Bool)

(assert (=> bm!128851 (= call!128855 (getPair!6 call!128854 lt!798983))))

(declare-fun bm!128852 () Bool)

(declare-fun contains!4158 (ListLongMap!235 (_ BitVec 64)) Bool)

(assert (=> bm!128852 (= call!128853 (contains!4158 (ite c!340800 lt!799028 call!128857) call!128856))))

(declare-fun bm!128853 () Bool)

(assert (=> bm!128853 (= call!128857 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173)))))))

(declare-fun b!2146514 () Bool)

(declare-fun lt!799030 () Unit!37722)

(assert (=> b!2146514 (= e!1372003 lt!799030)))

(assert (=> b!2146514 (= lt!799028 call!128857)))

(declare-fun lemmaInGenericMapThenInLongMap!6 (ListLongMap!235 tuple3!3546 Hashable!2746) Unit!37722)

(assert (=> b!2146514 (= lt!799030 (lemmaInGenericMapThenInLongMap!6 lt!799028 lt!798983 (hashF!4669 (cache!3127 thiss!29173))))))

(declare-fun res!926087 () Bool)

(assert (=> b!2146514 (= res!926087 call!128853)))

(assert (=> b!2146514 (=> (not res!926087) (not e!1372006))))

(assert (=> b!2146514 e!1372006))

(assert (= (and d!645259 c!340799) b!2146504))

(assert (= (and d!645259 (not c!340799)) b!2146510))

(assert (= (and b!2146504 c!340801) b!2146508))

(assert (= (and b!2146504 (not c!340801)) b!2146511))

(assert (= (and d!645259 c!340800) b!2146514))

(assert (= (and d!645259 (not c!340800)) b!2146505))

(assert (= (and b!2146514 res!926087) b!2146507))

(assert (= (and b!2146505 res!926086) b!2146512))

(assert (= (and b!2146505 c!340798) b!2146513))

(assert (= (and b!2146505 (not c!340798)) b!2146506))

(assert (= (or b!2146514 b!2146507 b!2146505 b!2146512) bm!128850))

(assert (= (or b!2146514 b!2146505 b!2146512 b!2146513) bm!128853))

(assert (= (or b!2146507 b!2146512) bm!128848))

(assert (= (or b!2146514 b!2146505) bm!128852))

(assert (= (or b!2146507 b!2146512) bm!128851))

(assert (= (or b!2146507 b!2146512) bm!128849))

(assert (= (and d!645259 res!926088) b!2146509))

(declare-fun m!2590035 () Bool)

(assert (=> b!2146504 m!2590035))

(declare-fun m!2590037 () Bool)

(assert (=> b!2146504 m!2590037))

(declare-fun m!2590039 () Bool)

(assert (=> b!2146504 m!2590039))

(declare-fun m!2590041 () Bool)

(assert (=> b!2146504 m!2590041))

(declare-fun m!2590043 () Bool)

(assert (=> b!2146508 m!2590043))

(declare-fun m!2590045 () Bool)

(assert (=> b!2146508 m!2590045))

(assert (=> b!2146508 m!2590035))

(declare-fun m!2590047 () Bool)

(assert (=> b!2146508 m!2590047))

(assert (=> b!2146508 m!2590037))

(declare-fun m!2590049 () Bool)

(assert (=> b!2146508 m!2590049))

(declare-fun m!2590051 () Bool)

(assert (=> b!2146508 m!2590051))

(assert (=> b!2146508 m!2590051))

(declare-fun m!2590053 () Bool)

(assert (=> b!2146508 m!2590053))

(declare-fun m!2590055 () Bool)

(assert (=> b!2146508 m!2590055))

(assert (=> bm!128853 m!2590035))

(declare-fun m!2590057 () Bool)

(assert (=> b!2146513 m!2590057))

(assert (=> b!2146513 m!2590057))

(declare-fun m!2590059 () Bool)

(assert (=> b!2146513 m!2590059))

(declare-fun m!2590061 () Bool)

(assert (=> b!2146513 m!2590061))

(declare-fun m!2590063 () Bool)

(assert (=> b!2146514 m!2590063))

(declare-fun m!2590065 () Bool)

(assert (=> bm!128850 m!2590065))

(declare-fun m!2590067 () Bool)

(assert (=> bm!128849 m!2590067))

(declare-fun m!2590069 () Bool)

(assert (=> bm!128852 m!2590069))

(declare-fun m!2590071 () Bool)

(assert (=> d!645259 m!2590071))

(assert (=> d!645259 m!2590035))

(declare-fun m!2590073 () Bool)

(assert (=> d!645259 m!2590073))

(assert (=> d!645259 m!2590073))

(declare-fun m!2590075 () Bool)

(assert (=> d!645259 m!2590075))

(declare-fun m!2590077 () Bool)

(assert (=> d!645259 m!2590077))

(assert (=> d!645259 m!2590077))

(declare-fun m!2590079 () Bool)

(assert (=> d!645259 m!2590079))

(assert (=> d!645259 m!2590065))

(declare-fun m!2590081 () Bool)

(assert (=> d!645259 m!2590081))

(assert (=> b!2146509 m!2590037))

(assert (=> b!2146509 m!2590037))

(declare-fun m!2590083 () Bool)

(assert (=> b!2146509 m!2590083))

(assert (=> b!2146509 m!2590083))

(declare-fun m!2590085 () Bool)

(assert (=> b!2146509 m!2590085))

(declare-fun m!2590087 () Bool)

(assert (=> bm!128848 m!2590087))

(declare-fun m!2590089 () Bool)

(assert (=> bm!128851 m!2590089))

(assert (=> b!2146466 d!645259))

(declare-fun d!645261 () Bool)

(declare-fun e!1372014 () Bool)

(assert (=> d!645261 e!1372014))

(declare-fun res!926096 () Bool)

(assert (=> d!645261 (=> res!926096 e!1372014)))

(assert (=> d!645261 (= res!926096 (not (contains!4154 (cache!3127 thiss!29173) (tuple3!3547 z!526 from!960 lastNullablePos!99))))))

(declare-fun lt!799047 () Unit!37722)

(declare-fun choose!12697 (CacheFurthestNullable!850 (InoxSet Context!2754) Int Int BalanceConc!15648) Unit!37722)

(assert (=> d!645261 (= lt!799047 (choose!12697 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3181 thiss!29173)))))

(assert (=> d!645261 (= (totalInput!3181 thiss!29173) (totalInput!3181 thiss!29173))))

(assert (=> d!645261 (= (lemmaIfInCacheThenValid!7 thiss!29173 z!526 from!960 lastNullablePos!99 (totalInput!3181 thiss!29173)) lt!799047)))

(declare-fun b!2146521 () Bool)

(declare-fun e!1372013 () Bool)

(assert (=> b!2146521 (= e!1372014 e!1372013)))

(declare-fun res!926095 () Bool)

(assert (=> b!2146521 (=> (not res!926095) (not e!1372013))))

(assert (=> b!2146521 (= res!926095 (>= from!960 0))))

(declare-fun b!2146522 () Bool)

(declare-fun res!926097 () Bool)

(assert (=> b!2146522 (=> (not res!926097) (not e!1372013))))

(assert (=> b!2146522 (= res!926097 (<= from!960 (size!19173 (totalInput!3181 thiss!29173))))))

(declare-fun b!2146523 () Bool)

(assert (=> b!2146523 (= e!1372013 (= (furthestNullablePosition!94 z!526 from!960 (totalInput!3181 thiss!29173) (size!19173 (totalInput!3181 thiss!29173)) lastNullablePos!99) (apply!5982 (cache!3127 thiss!29173) (tuple3!3547 z!526 from!960 lastNullablePos!99))))))

(assert (= (and d!645261 (not res!926096)) b!2146521))

(assert (= (and b!2146521 res!926095) b!2146522))

(assert (= (and b!2146522 res!926097) b!2146523))

(declare-fun m!2590091 () Bool)

(assert (=> d!645261 m!2590091))

(declare-fun m!2590093 () Bool)

(assert (=> d!645261 m!2590093))

(assert (=> b!2146522 m!2590021))

(assert (=> b!2146523 m!2590021))

(assert (=> b!2146523 m!2590021))

(declare-fun m!2590095 () Bool)

(assert (=> b!2146523 m!2590095))

(declare-fun m!2590097 () Bool)

(assert (=> b!2146523 m!2590097))

(assert (=> b!2146480 d!645261))

(declare-fun b!2146529 () Bool)

(assert (=> b!2146529 true))

(declare-fun d!645263 () Bool)

(declare-fun res!926102 () Bool)

(declare-fun e!1372017 () Bool)

(assert (=> d!645263 (=> (not res!926102) (not e!1372017))))

(assert (=> d!645263 (= res!926102 (valid!2205 (cache!3127 thiss!29173)))))

(assert (=> d!645263 (= (validCacheMapFurthestNullable!113 (cache!3127 thiss!29173) (totalInput!3181 thiss!29173)) e!1372017)))

(declare-fun b!2146528 () Bool)

(declare-fun res!926103 () Bool)

(assert (=> b!2146528 (=> (not res!926103) (not e!1372017))))

(declare-fun invariantList!311 (List!24576) Bool)

(assert (=> b!2146528 (= res!926103 (invariantList!311 (toList!1085 (map!4915 (cache!3127 thiss!29173)))))))

(declare-fun lambda!80603 () Int)

(declare-fun forall!4998 (List!24576 Int) Bool)

(assert (=> b!2146529 (= e!1372017 (forall!4998 (toList!1085 (map!4915 (cache!3127 thiss!29173))) lambda!80603))))

(assert (= (and d!645263 res!926102) b!2146528))

(assert (= (and b!2146528 res!926103) b!2146529))

(assert (=> d!645263 m!2590081))

(assert (=> b!2146528 m!2590077))

(declare-fun m!2590100 () Bool)

(assert (=> b!2146528 m!2590100))

(assert (=> b!2146529 m!2590077))

(declare-fun m!2590102 () Bool)

(assert (=> b!2146529 m!2590102))

(assert (=> b!2146467 d!645263))

(declare-fun d!645265 () Bool)

(declare-fun lt!799050 () Int)

(declare-fun size!19174 (List!24577) Int)

(declare-fun list!9555 (BalanceConc!15648) List!24577)

(assert (=> d!645265 (= lt!799050 (size!19174 (list!9555 (totalInput!3181 thiss!29173))))))

(declare-fun size!19175 (Conc!7943) Int)

(assert (=> d!645265 (= lt!799050 (size!19175 (c!340789 (totalInput!3181 thiss!29173))))))

(assert (=> d!645265 (= (size!19173 (totalInput!3181 thiss!29173)) lt!799050)))

(declare-fun bs!445444 () Bool)

(assert (= bs!445444 d!645265))

(declare-fun m!2590104 () Bool)

(assert (=> bs!445444 m!2590104))

(assert (=> bs!445444 m!2590104))

(declare-fun m!2590106 () Bool)

(assert (=> bs!445444 m!2590106))

(declare-fun m!2590108 () Bool)

(assert (=> bs!445444 m!2590108))

(assert (=> b!2146468 d!645265))

(declare-fun d!645267 () Bool)

(declare-fun isBalanced!2465 (Conc!7943) Bool)

(assert (=> d!645267 (= (inv!32214 (totalInput!3181 thiss!29173)) (isBalanced!2465 (c!340789 (totalInput!3181 thiss!29173))))))

(declare-fun bs!445445 () Bool)

(assert (= bs!445445 d!645267))

(declare-fun m!2590110 () Bool)

(assert (=> bs!445445 m!2590110))

(assert (=> b!2146472 d!645267))

(declare-fun d!645269 () Bool)

(declare-fun res!926106 () Bool)

(declare-fun e!1372020 () Bool)

(assert (=> d!645269 (=> (not res!926106) (not e!1372020))))

(assert (=> d!645269 (= res!926106 ((_ is HashMap!2746) (cache!3127 thiss!29173)))))

(assert (=> d!645269 (= (inv!32213 thiss!29173) e!1372020)))

(declare-fun b!2146534 () Bool)

(assert (=> b!2146534 (= e!1372020 (validCacheMapFurthestNullable!113 (cache!3127 thiss!29173) (totalInput!3181 thiss!29173)))))

(assert (= (and d!645269 res!926106) b!2146534))

(assert (=> b!2146534 m!2590023))

(assert (=> start!208184 d!645269))

(declare-fun b!2146545 () Bool)

(declare-fun e!1372028 () Int)

(assert (=> b!2146545 (= e!1372028 lastNullablePos!99)))

(declare-fun b!2146546 () Bool)

(declare-fun e!1372029 () Int)

(assert (=> b!2146546 (= e!1372029 lastNullablePos!99)))

(declare-fun b!2146547 () Bool)

(declare-fun e!1372027 () Bool)

(declare-fun lostCauseZipper!133 ((InoxSet Context!2754)) Bool)

(assert (=> b!2146547 (= e!1372027 (lostCauseZipper!133 z!526))))

(declare-fun lt!799056 () (InoxSet Context!2754))

(declare-fun b!2146548 () Bool)

(assert (=> b!2146548 (= e!1372028 (furthestNullablePosition!94 lt!799056 (+ from!960 1) (totalInput!3181 thiss!29173) lt!798982 e!1372029))))

(declare-fun derivationStepZipper!100 ((InoxSet Context!2754) C!11760) (InoxSet Context!2754))

(declare-fun apply!5985 (BalanceConc!15648 Int) C!11760)

(assert (=> b!2146548 (= lt!799056 (derivationStepZipper!100 z!526 (apply!5985 (totalInput!3181 thiss!29173) from!960)))))

(declare-fun c!340807 () Bool)

(assert (=> b!2146548 (= c!340807 (nullableZipper!158 lt!799056))))

(declare-fun b!2146549 () Bool)

(assert (=> b!2146549 (= e!1372029 from!960)))

(declare-fun d!645271 () Bool)

(declare-fun lt!799055 () Int)

(assert (=> d!645271 (and (>= lt!799055 (- 1)) (< lt!799055 lt!798982) (>= lt!799055 lastNullablePos!99) (or (= lt!799055 lastNullablePos!99) (>= lt!799055 from!960)))))

(assert (=> d!645271 (= lt!799055 e!1372028)))

(declare-fun c!340806 () Bool)

(assert (=> d!645271 (= c!340806 e!1372027)))

(declare-fun res!926109 () Bool)

(assert (=> d!645271 (=> res!926109 e!1372027)))

(assert (=> d!645271 (= res!926109 (= from!960 lt!798982))))

(assert (=> d!645271 (and (>= from!960 0) (<= from!960 lt!798982))))

(assert (=> d!645271 (= (furthestNullablePosition!94 z!526 from!960 (totalInput!3181 thiss!29173) lt!798982 lastNullablePos!99) lt!799055)))

(assert (= (and d!645271 (not res!926109)) b!2146547))

(assert (= (and d!645271 c!340806) b!2146545))

(assert (= (and d!645271 (not c!340806)) b!2146548))

(assert (= (and b!2146548 c!340807) b!2146549))

(assert (= (and b!2146548 (not c!340807)) b!2146546))

(declare-fun m!2590112 () Bool)

(assert (=> b!2146547 m!2590112))

(declare-fun m!2590114 () Bool)

(assert (=> b!2146548 m!2590114))

(declare-fun m!2590116 () Bool)

(assert (=> b!2146548 m!2590116))

(assert (=> b!2146548 m!2590116))

(declare-fun m!2590118 () Bool)

(assert (=> b!2146548 m!2590118))

(declare-fun m!2590120 () Bool)

(assert (=> b!2146548 m!2590120))

(assert (=> b!2146477 d!645271))

(declare-fun bs!445446 () Bool)

(declare-fun b!2146562 () Bool)

(assert (= bs!445446 (and b!2146562 b!2146504)))

(declare-fun lambda!80610 () Int)

(assert (=> bs!445446 (= lambda!80610 lambda!80600)))

(declare-fun d!645273 () Bool)

(declare-fun e!1372036 () Bool)

(assert (=> d!645273 e!1372036))

(declare-fun c!340816 () Bool)

(assert (=> d!645273 (= c!340816 (contains!4154 (cache!3127 thiss!29173) lt!798983))))

(declare-fun lt!799123 () Int)

(declare-fun e!1372038 () Int)

(assert (=> d!645273 (= lt!799123 e!1372038)))

(declare-fun c!340815 () Bool)

(assert (=> d!645273 (= c!340815 (not (contains!4154 (cache!3127 thiss!29173) lt!798983)))))

(assert (=> d!645273 (valid!2205 (cache!3127 thiss!29173))))

(assert (=> d!645273 (= (apply!5982 (cache!3127 thiss!29173) lt!798983) lt!799123)))

(declare-fun lt!799119 () (_ BitVec 64))

(declare-fun get!7469 (Option!4955) tuple2!24362)

(assert (=> b!2146562 (= e!1372038 (_2!14425 (get!7469 (getPair!6 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799119) lt!798983))))))

(assert (=> b!2146562 (= lt!799119 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983))))

(declare-fun c!340814 () Bool)

(assert (=> b!2146562 (= c!340814 (not (contains!4155 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))) (tuple2!24365 lt!799119 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799119)))))))

(declare-fun lt!799129 () Unit!37722)

(declare-fun e!1372037 () Unit!37722)

(assert (=> b!2146562 (= lt!799129 e!1372037)))

(declare-fun lt!799141 () Unit!37722)

(assert (=> b!2146562 (= lt!799141 (forallContained!753 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))) lambda!80610 (tuple2!24365 lt!799119 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799119))))))

(declare-fun lt!799121 () ListLongMap!235)

(assert (=> b!2146562 (= lt!799121 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173)))))))

(declare-fun lt!799144 () Unit!37722)

(declare-fun lemmaGetPairGetSameValueAsMap!1 (ListLongMap!235 tuple3!3546 Int Hashable!2746) Unit!37722)

(assert (=> b!2146562 (= lt!799144 (lemmaGetPairGetSameValueAsMap!1 lt!799121 lt!798983 (_2!14425 (get!7469 (getPair!6 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799119) lt!798983))) (hashF!4669 (cache!3127 thiss!29173))))))

(declare-fun lt!799127 () Unit!37722)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1 (ListLongMap!235 tuple3!3546 Hashable!2746) Unit!37722)

(assert (=> b!2146562 (= lt!799127 (lemmaInGenMapThenLongMapContainsHash!1 lt!799121 lt!798983 (hashF!4669 (cache!3127 thiss!29173))))))

(assert (=> b!2146562 (contains!4158 lt!799121 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983))))

(declare-fun lt!799145 () Unit!37722)

(assert (=> b!2146562 (= lt!799145 lt!799127)))

(declare-fun lt!799146 () (_ BitVec 64))

(assert (=> b!2146562 (= lt!799146 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983))))

(declare-fun lt!799125 () List!24576)

(assert (=> b!2146562 (= lt!799125 (apply!5983 lt!799121 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983)))))

(declare-fun lt!799142 () Unit!37722)

(declare-fun lemmaGetValueImpliesTupleContained!2 (ListLongMap!235 (_ BitVec 64) List!24576) Unit!37722)

(assert (=> b!2146562 (= lt!799142 (lemmaGetValueImpliesTupleContained!2 lt!799121 lt!799146 lt!799125))))

(assert (=> b!2146562 (contains!4155 (toList!1084 lt!799121) (tuple2!24365 lt!799146 lt!799125))))

(declare-fun lt!799128 () Unit!37722)

(assert (=> b!2146562 (= lt!799128 lt!799142)))

(declare-fun lt!799136 () Unit!37722)

(assert (=> b!2146562 (= lt!799136 (forallContained!753 (toList!1084 lt!799121) lambda!80610 (tuple2!24365 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983) (apply!5983 lt!799121 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983)))))))

(declare-fun lt!799131 () Unit!37722)

(declare-fun lemmaInGenMapThenGetPairDefined!1 (ListLongMap!235 tuple3!3546 Hashable!2746) Unit!37722)

(assert (=> b!2146562 (= lt!799131 (lemmaInGenMapThenGetPairDefined!1 lt!799121 lt!798983 (hashF!4669 (cache!3127 thiss!29173))))))

(declare-fun lt!799138 () Unit!37722)

(assert (=> b!2146562 (= lt!799138 (lemmaInGenMapThenLongMapContainsHash!1 lt!799121 lt!798983 (hashF!4669 (cache!3127 thiss!29173))))))

(declare-fun lt!799135 () Unit!37722)

(assert (=> b!2146562 (= lt!799135 lt!799138)))

(declare-fun lt!799126 () (_ BitVec 64))

(assert (=> b!2146562 (= lt!799126 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983))))

(declare-fun lt!799133 () List!24576)

(assert (=> b!2146562 (= lt!799133 (apply!5983 lt!799121 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983)))))

(declare-fun lt!799134 () Unit!37722)

(assert (=> b!2146562 (= lt!799134 (lemmaGetValueImpliesTupleContained!2 lt!799121 lt!799126 lt!799133))))

(assert (=> b!2146562 (contains!4155 (toList!1084 lt!799121) (tuple2!24365 lt!799126 lt!799133))))

(declare-fun lt!799120 () Unit!37722)

(assert (=> b!2146562 (= lt!799120 lt!799134)))

(declare-fun lt!799137 () Unit!37722)

(assert (=> b!2146562 (= lt!799137 (forallContained!753 (toList!1084 lt!799121) lambda!80610 (tuple2!24365 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983) (apply!5983 lt!799121 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983)))))))

(assert (=> b!2146562 (isDefined!4077 (getPair!6 (apply!5983 lt!799121 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983)) lt!798983))))

(declare-fun lt!799117 () Unit!37722)

(assert (=> b!2146562 (= lt!799117 lt!799131)))

(declare-datatypes ((Option!4957 0))(
  ( (None!4956) (Some!4956 (v!29087 Int)) )
))
(declare-fun get!7470 (Option!4957) Int)

(declare-fun getValueByKey!34 (List!24576 tuple3!3546) Option!4957)

(assert (=> b!2146562 (= (_2!14425 (get!7469 (getPair!6 (apply!5983 lt!799121 (hash!541 (hashF!4669 (cache!3127 thiss!29173)) lt!798983)) lt!798983))) (get!7470 (getValueByKey!34 (toList!1085 (extractMap!69 (toList!1084 lt!799121))) lt!798983)))))

(declare-fun lt!799139 () Unit!37722)

(assert (=> b!2146562 (= lt!799139 lt!799144)))

(declare-fun b!2146563 () Bool)

(declare-fun Unit!37729 () Unit!37722)

(assert (=> b!2146563 (= e!1372037 Unit!37729)))

(declare-fun b!2146564 () Bool)

(assert (=> b!2146564 false))

(declare-fun lt!799122 () Unit!37722)

(declare-fun lt!799132 () Unit!37722)

(assert (=> b!2146564 (= lt!799122 lt!799132)))

(declare-fun lt!799118 () List!24578)

(declare-fun lt!799124 () List!24576)

(assert (=> b!2146564 (contains!4155 lt!799118 (tuple2!24365 lt!799119 lt!799124))))

(assert (=> b!2146564 (= lt!799132 (lemmaGetValueByKeyImpliesContainsTuple!7 lt!799118 lt!799119 lt!799124))))

(assert (=> b!2146564 (= lt!799124 (apply!5984 (v!29084 (underlying!5860 (cache!3127 thiss!29173))) lt!799119))))

(assert (=> b!2146564 (= lt!799118 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))

(declare-fun lt!799143 () Unit!37722)

(declare-fun lt!799140 () Unit!37722)

(assert (=> b!2146564 (= lt!799143 lt!799140)))

(declare-fun lt!799130 () List!24578)

(assert (=> b!2146564 (isDefined!4078 (getValueByKey!33 lt!799130 lt!799119))))

(assert (=> b!2146564 (= lt!799140 (lemmaContainsKeyImpliesGetValueByKeyDefined!23 lt!799130 lt!799119))))

(assert (=> b!2146564 (= lt!799130 (toList!1084 (map!4914 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))

(declare-fun Unit!37730 () Unit!37722)

(assert (=> b!2146564 (= e!1372037 Unit!37730)))

(declare-fun b!2146565 () Bool)

(declare-fun dynLambda!11382 (Int tuple3!3546) Int)

(assert (=> b!2146565 (= e!1372036 (= lt!799123 (dynLambda!11382 (defaultValue!2908 (cache!3127 thiss!29173)) lt!798983)))))

(declare-fun b!2146566 () Bool)

(assert (=> b!2146566 (= e!1372038 (dynLambda!11382 (defaultValue!2908 (cache!3127 thiss!29173)) lt!798983))))

(declare-fun b!2146567 () Bool)

(assert (=> b!2146567 (= e!1372036 (= lt!799123 (get!7470 (getValueByKey!34 (toList!1085 (map!4915 (cache!3127 thiss!29173))) lt!798983))))))

(assert (= (and d!645273 c!340815) b!2146566))

(assert (= (and d!645273 (not c!340815)) b!2146562))

(assert (= (and b!2146562 c!340814) b!2146564))

(assert (= (and b!2146562 (not c!340814)) b!2146563))

(assert (= (and d!645273 c!340816) b!2146567))

(assert (= (and d!645273 (not c!340816)) b!2146565))

(declare-fun b_lambda!70737 () Bool)

(assert (=> (not b_lambda!70737) (not b!2146565)))

(declare-fun t!197109 () Bool)

(declare-fun tb!132283 () Bool)

(assert (=> (and b!2146476 (= (defaultValue!2908 (cache!3127 thiss!29173)) (defaultValue!2908 (cache!3127 thiss!29173))) t!197109) tb!132283))

(declare-fun result!159166 () Bool)

(assert (=> tb!132283 (= result!159166 true)))

(assert (=> b!2146565 t!197109))

(declare-fun b_and!172901 () Bool)

(assert (= b_and!172897 (and (=> t!197109 result!159166) b_and!172901)))

(declare-fun b_lambda!70739 () Bool)

(assert (=> (not b_lambda!70739) (not b!2146566)))

(assert (=> b!2146566 t!197109))

(declare-fun b_and!172903 () Bool)

(assert (= b_and!172901 (and (=> t!197109 result!159166) b_and!172903)))

(declare-fun m!2590122 () Bool)

(assert (=> b!2146566 m!2590122))

(assert (=> d!645273 m!2590009))

(assert (=> d!645273 m!2590081))

(declare-fun m!2590124 () Bool)

(assert (=> b!2146564 m!2590124))

(declare-fun m!2590126 () Bool)

(assert (=> b!2146564 m!2590126))

(declare-fun m!2590128 () Bool)

(assert (=> b!2146564 m!2590128))

(declare-fun m!2590130 () Bool)

(assert (=> b!2146564 m!2590130))

(declare-fun m!2590132 () Bool)

(assert (=> b!2146564 m!2590132))

(assert (=> b!2146564 m!2590128))

(declare-fun m!2590134 () Bool)

(assert (=> b!2146564 m!2590134))

(assert (=> b!2146564 m!2590035))

(declare-fun m!2590136 () Bool)

(assert (=> b!2146562 m!2590136))

(declare-fun m!2590138 () Bool)

(assert (=> b!2146562 m!2590138))

(declare-fun m!2590140 () Bool)

(assert (=> b!2146562 m!2590140))

(declare-fun m!2590142 () Bool)

(assert (=> b!2146562 m!2590142))

(declare-fun m!2590144 () Bool)

(assert (=> b!2146562 m!2590144))

(declare-fun m!2590146 () Bool)

(assert (=> b!2146562 m!2590146))

(assert (=> b!2146562 m!2590035))

(declare-fun m!2590148 () Bool)

(assert (=> b!2146562 m!2590148))

(declare-fun m!2590150 () Bool)

(assert (=> b!2146562 m!2590150))

(declare-fun m!2590152 () Bool)

(assert (=> b!2146562 m!2590152))

(assert (=> b!2146562 m!2590132))

(assert (=> b!2146562 m!2590132))

(assert (=> b!2146562 m!2590136))

(declare-fun m!2590154 () Bool)

(assert (=> b!2146562 m!2590154))

(assert (=> b!2146562 m!2590065))

(declare-fun m!2590156 () Bool)

(assert (=> b!2146562 m!2590156))

(assert (=> b!2146562 m!2590140))

(declare-fun m!2590158 () Bool)

(assert (=> b!2146562 m!2590158))

(declare-fun m!2590160 () Bool)

(assert (=> b!2146562 m!2590160))

(declare-fun m!2590162 () Bool)

(assert (=> b!2146562 m!2590162))

(assert (=> b!2146562 m!2590140))

(declare-fun m!2590164 () Bool)

(assert (=> b!2146562 m!2590164))

(assert (=> b!2146562 m!2590065))

(assert (=> b!2146562 m!2590162))

(assert (=> b!2146562 m!2590148))

(declare-fun m!2590166 () Bool)

(assert (=> b!2146562 m!2590166))

(declare-fun m!2590168 () Bool)

(assert (=> b!2146562 m!2590168))

(assert (=> b!2146562 m!2590065))

(declare-fun m!2590170 () Bool)

(assert (=> b!2146562 m!2590170))

(assert (=> b!2146562 m!2590156))

(declare-fun m!2590172 () Bool)

(assert (=> b!2146562 m!2590172))

(declare-fun m!2590174 () Bool)

(assert (=> b!2146562 m!2590174))

(assert (=> b!2146567 m!2590077))

(declare-fun m!2590176 () Bool)

(assert (=> b!2146567 m!2590176))

(assert (=> b!2146567 m!2590176))

(declare-fun m!2590178 () Bool)

(assert (=> b!2146567 m!2590178))

(assert (=> b!2146565 m!2590122))

(assert (=> b!2146477 d!645273))

(declare-fun d!645275 () Bool)

(declare-fun lambda!80613 () Int)

(declare-fun forall!4999 (List!24575 Int) Bool)

(assert (=> d!645275 (= (inv!32216 setElem!16810) (forall!4999 (exprs!1877 setElem!16810) lambda!80613))))

(declare-fun bs!445447 () Bool)

(assert (= bs!445447 d!645275))

(declare-fun m!2590180 () Bool)

(assert (=> bs!445447 m!2590180))

(assert (=> setNonEmpty!16810 d!645275))

(declare-fun d!645277 () Bool)

(declare-fun lambda!80616 () Int)

(declare-fun exists!719 ((InoxSet Context!2754) Int) Bool)

(assert (=> d!645277 (= (nullableZipper!158 z!526) (exists!719 z!526 lambda!80616))))

(declare-fun bs!445448 () Bool)

(assert (= bs!445448 d!645277))

(declare-fun m!2590182 () Bool)

(assert (=> bs!445448 m!2590182))

(assert (=> b!2146469 d!645277))

(declare-fun d!645279 () Bool)

(assert (=> d!645279 (= (array_inv!3048 (_keys!3129 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))) (bvsge (size!19171 (_keys!3129 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))) #b00000000000000000000000000000000))))

(assert (=> b!2146474 d!645279))

(declare-fun d!645281 () Bool)

(assert (=> d!645281 (= (array_inv!3049 (_values!3112 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))) (bvsge (size!19172 (_values!3112 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))) #b00000000000000000000000000000000))))

(assert (=> b!2146474 d!645281))

(declare-fun d!645283 () Bool)

(declare-fun c!340821 () Bool)

(assert (=> d!645283 (= c!340821 ((_ is Node!7943) (c!340789 (totalInput!3181 thiss!29173))))))

(declare-fun e!1372043 () Bool)

(assert (=> d!645283 (= (inv!32215 (c!340789 (totalInput!3181 thiss!29173))) e!1372043)))

(declare-fun b!2146574 () Bool)

(declare-fun inv!32217 (Conc!7943) Bool)

(assert (=> b!2146574 (= e!1372043 (inv!32217 (c!340789 (totalInput!3181 thiss!29173))))))

(declare-fun b!2146575 () Bool)

(declare-fun e!1372044 () Bool)

(assert (=> b!2146575 (= e!1372043 e!1372044)))

(declare-fun res!926112 () Bool)

(assert (=> b!2146575 (= res!926112 (not ((_ is Leaf!11614) (c!340789 (totalInput!3181 thiss!29173)))))))

(assert (=> b!2146575 (=> res!926112 e!1372044)))

(declare-fun b!2146576 () Bool)

(declare-fun inv!32218 (Conc!7943) Bool)

(assert (=> b!2146576 (= e!1372044 (inv!32218 (c!340789 (totalInput!3181 thiss!29173))))))

(assert (= (and d!645283 c!340821) b!2146574))

(assert (= (and d!645283 (not c!340821)) b!2146575))

(assert (= (and b!2146575 (not res!926112)) b!2146576))

(declare-fun m!2590184 () Bool)

(assert (=> b!2146574 m!2590184))

(declare-fun m!2590186 () Bool)

(assert (=> b!2146576 m!2590186))

(assert (=> b!2146478 d!645283))

(declare-fun b!2146581 () Bool)

(declare-fun e!1372047 () Bool)

(declare-fun tp!665716 () Bool)

(declare-fun tp!665717 () Bool)

(assert (=> b!2146581 (= e!1372047 (and tp!665716 tp!665717))))

(assert (=> b!2146479 (= tp!665704 e!1372047)))

(assert (= (and b!2146479 ((_ is Cons!24491) (exprs!1877 setElem!16810))) b!2146581))

(declare-fun b!2146588 () Bool)

(declare-fun e!1372053 () Bool)

(declare-fun setRes!16813 () Bool)

(declare-fun tp!665726 () Bool)

(assert (=> b!2146588 (= e!1372053 (and setRes!16813 tp!665726))))

(declare-fun condSetEmpty!16813 () Bool)

(assert (=> b!2146588 (= condSetEmpty!16813 (= (_1!14424 (_1!14425 (h!29893 mapDefault!13457))) ((as const (Array Context!2754 Bool)) false)))))

(assert (=> b!2146471 (= tp!665703 e!1372053)))

(declare-fun b!2146589 () Bool)

(declare-fun e!1372052 () Bool)

(declare-fun tp!665725 () Bool)

(assert (=> b!2146589 (= e!1372052 tp!665725)))

(declare-fun setIsEmpty!16813 () Bool)

(assert (=> setIsEmpty!16813 setRes!16813))

(declare-fun tp!665724 () Bool)

(declare-fun setElem!16813 () Context!2754)

(declare-fun setNonEmpty!16813 () Bool)

(assert (=> setNonEmpty!16813 (= setRes!16813 (and tp!665724 (inv!32216 setElem!16813) e!1372052))))

(declare-fun setRest!16813 () (InoxSet Context!2754))

(assert (=> setNonEmpty!16813 (= (_1!14424 (_1!14425 (h!29893 mapDefault!13457))) ((_ map or) (store ((as const (Array Context!2754 Bool)) false) setElem!16813 true) setRest!16813))))

(assert (= (and b!2146588 condSetEmpty!16813) setIsEmpty!16813))

(assert (= (and b!2146588 (not condSetEmpty!16813)) setNonEmpty!16813))

(assert (= setNonEmpty!16813 b!2146589))

(assert (= (and b!2146471 ((_ is Cons!24492) mapDefault!13457)) b!2146588))

(declare-fun m!2590188 () Bool)

(assert (=> setNonEmpty!16813 m!2590188))

(declare-fun condSetEmpty!16816 () Bool)

(assert (=> setNonEmpty!16810 (= condSetEmpty!16816 (= setRest!16810 ((as const (Array Context!2754 Bool)) false)))))

(declare-fun setRes!16816 () Bool)

(assert (=> setNonEmpty!16810 (= tp!665709 setRes!16816)))

(declare-fun setIsEmpty!16816 () Bool)

(assert (=> setIsEmpty!16816 setRes!16816))

(declare-fun setElem!16816 () Context!2754)

(declare-fun e!1372056 () Bool)

(declare-fun setNonEmpty!16816 () Bool)

(declare-fun tp!665732 () Bool)

(assert (=> setNonEmpty!16816 (= setRes!16816 (and tp!665732 (inv!32216 setElem!16816) e!1372056))))

(declare-fun setRest!16816 () (InoxSet Context!2754))

(assert (=> setNonEmpty!16816 (= setRest!16810 ((_ map or) (store ((as const (Array Context!2754 Bool)) false) setElem!16816 true) setRest!16816))))

(declare-fun b!2146594 () Bool)

(declare-fun tp!665731 () Bool)

(assert (=> b!2146594 (= e!1372056 tp!665731)))

(assert (= (and setNonEmpty!16810 condSetEmpty!16816) setIsEmpty!16816))

(assert (= (and setNonEmpty!16810 (not condSetEmpty!16816)) setNonEmpty!16816))

(assert (= setNonEmpty!16816 b!2146594))

(declare-fun m!2590190 () Bool)

(assert (=> setNonEmpty!16816 m!2590190))

(declare-fun b!2146605 () Bool)

(declare-fun e!1372066 () Bool)

(declare-fun setRes!16821 () Bool)

(declare-fun tp!665751 () Bool)

(assert (=> b!2146605 (= e!1372066 (and setRes!16821 tp!665751))))

(declare-fun condSetEmpty!16822 () Bool)

(declare-fun mapValue!13460 () List!24576)

(assert (=> b!2146605 (= condSetEmpty!16822 (= (_1!14424 (_1!14425 (h!29893 mapValue!13460))) ((as const (Array Context!2754 Bool)) false)))))

(declare-fun setIsEmpty!16821 () Bool)

(declare-fun setRes!16822 () Bool)

(assert (=> setIsEmpty!16821 setRes!16822))

(declare-fun setIsEmpty!16822 () Bool)

(assert (=> setIsEmpty!16822 setRes!16821))

(declare-fun condMapEmpty!13460 () Bool)

(declare-fun mapDefault!13460 () List!24576)

(assert (=> mapNonEmpty!13457 (= condMapEmpty!13460 (= mapRest!13457 ((as const (Array (_ BitVec 32) List!24576)) mapDefault!13460)))))

(declare-fun e!1372067 () Bool)

(declare-fun mapRes!13460 () Bool)

(assert (=> mapNonEmpty!13457 (= tp!665706 (and e!1372067 mapRes!13460))))

(declare-fun setElem!16822 () Context!2754)

(declare-fun tp!665749 () Bool)

(declare-fun setNonEmpty!16821 () Bool)

(declare-fun e!1372065 () Bool)

(assert (=> setNonEmpty!16821 (= setRes!16821 (and tp!665749 (inv!32216 setElem!16822) e!1372065))))

(declare-fun setRest!16822 () (InoxSet Context!2754))

(assert (=> setNonEmpty!16821 (= (_1!14424 (_1!14425 (h!29893 mapValue!13460))) ((_ map or) (store ((as const (Array Context!2754 Bool)) false) setElem!16822 true) setRest!16822))))

(declare-fun mapNonEmpty!13460 () Bool)

(declare-fun tp!665748 () Bool)

(assert (=> mapNonEmpty!13460 (= mapRes!13460 (and tp!665748 e!1372066))))

(declare-fun mapRest!13460 () (Array (_ BitVec 32) List!24576))

(declare-fun mapKey!13460 () (_ BitVec 32))

(assert (=> mapNonEmpty!13460 (= mapRest!13457 (store mapRest!13460 mapKey!13460 mapValue!13460))))

(declare-fun b!2146606 () Bool)

(declare-fun tp!665747 () Bool)

(assert (=> b!2146606 (= e!1372065 tp!665747)))

(declare-fun b!2146607 () Bool)

(declare-fun e!1372068 () Bool)

(declare-fun tp!665750 () Bool)

(assert (=> b!2146607 (= e!1372068 tp!665750)))

(declare-fun b!2146608 () Bool)

(declare-fun tp!665753 () Bool)

(assert (=> b!2146608 (= e!1372067 (and setRes!16822 tp!665753))))

(declare-fun condSetEmpty!16821 () Bool)

(assert (=> b!2146608 (= condSetEmpty!16821 (= (_1!14424 (_1!14425 (h!29893 mapDefault!13460))) ((as const (Array Context!2754 Bool)) false)))))

(declare-fun setNonEmpty!16822 () Bool)

(declare-fun tp!665752 () Bool)

(declare-fun setElem!16821 () Context!2754)

(assert (=> setNonEmpty!16822 (= setRes!16822 (and tp!665752 (inv!32216 setElem!16821) e!1372068))))

(declare-fun setRest!16821 () (InoxSet Context!2754))

(assert (=> setNonEmpty!16822 (= (_1!14424 (_1!14425 (h!29893 mapDefault!13460))) ((_ map or) (store ((as const (Array Context!2754 Bool)) false) setElem!16821 true) setRest!16821))))

(declare-fun mapIsEmpty!13460 () Bool)

(assert (=> mapIsEmpty!13460 mapRes!13460))

(assert (= (and mapNonEmpty!13457 condMapEmpty!13460) mapIsEmpty!13460))

(assert (= (and mapNonEmpty!13457 (not condMapEmpty!13460)) mapNonEmpty!13460))

(assert (= (and b!2146605 condSetEmpty!16822) setIsEmpty!16822))

(assert (= (and b!2146605 (not condSetEmpty!16822)) setNonEmpty!16821))

(assert (= setNonEmpty!16821 b!2146606))

(assert (= (and mapNonEmpty!13460 ((_ is Cons!24492) mapValue!13460)) b!2146605))

(assert (= (and b!2146608 condSetEmpty!16821) setIsEmpty!16821))

(assert (= (and b!2146608 (not condSetEmpty!16821)) setNonEmpty!16822))

(assert (= setNonEmpty!16822 b!2146607))

(assert (= (and mapNonEmpty!13457 ((_ is Cons!24492) mapDefault!13460)) b!2146608))

(declare-fun m!2590192 () Bool)

(assert (=> setNonEmpty!16821 m!2590192))

(declare-fun m!2590194 () Bool)

(assert (=> mapNonEmpty!13460 m!2590194))

(declare-fun m!2590196 () Bool)

(assert (=> setNonEmpty!16822 m!2590196))

(declare-fun b!2146609 () Bool)

(declare-fun e!1372070 () Bool)

(declare-fun setRes!16823 () Bool)

(declare-fun tp!665756 () Bool)

(assert (=> b!2146609 (= e!1372070 (and setRes!16823 tp!665756))))

(declare-fun condSetEmpty!16823 () Bool)

(assert (=> b!2146609 (= condSetEmpty!16823 (= (_1!14424 (_1!14425 (h!29893 mapValue!13457))) ((as const (Array Context!2754 Bool)) false)))))

(assert (=> mapNonEmpty!13457 (= tp!665711 e!1372070)))

(declare-fun b!2146610 () Bool)

(declare-fun e!1372069 () Bool)

(declare-fun tp!665755 () Bool)

(assert (=> b!2146610 (= e!1372069 tp!665755)))

(declare-fun setIsEmpty!16823 () Bool)

(assert (=> setIsEmpty!16823 setRes!16823))

(declare-fun tp!665754 () Bool)

(declare-fun setNonEmpty!16823 () Bool)

(declare-fun setElem!16823 () Context!2754)

(assert (=> setNonEmpty!16823 (= setRes!16823 (and tp!665754 (inv!32216 setElem!16823) e!1372069))))

(declare-fun setRest!16823 () (InoxSet Context!2754))

(assert (=> setNonEmpty!16823 (= (_1!14424 (_1!14425 (h!29893 mapValue!13457))) ((_ map or) (store ((as const (Array Context!2754 Bool)) false) setElem!16823 true) setRest!16823))))

(assert (= (and b!2146609 condSetEmpty!16823) setIsEmpty!16823))

(assert (= (and b!2146609 (not condSetEmpty!16823)) setNonEmpty!16823))

(assert (= setNonEmpty!16823 b!2146610))

(assert (= (and mapNonEmpty!13457 ((_ is Cons!24492) mapValue!13457)) b!2146609))

(declare-fun m!2590198 () Bool)

(assert (=> setNonEmpty!16823 m!2590198))

(declare-fun b!2146611 () Bool)

(declare-fun e!1372072 () Bool)

(declare-fun setRes!16824 () Bool)

(declare-fun tp!665759 () Bool)

(assert (=> b!2146611 (= e!1372072 (and setRes!16824 tp!665759))))

(declare-fun condSetEmpty!16824 () Bool)

(assert (=> b!2146611 (= condSetEmpty!16824 (= (_1!14424 (_1!14425 (h!29893 (zeroValue!3090 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))) ((as const (Array Context!2754 Bool)) false)))))

(assert (=> b!2146474 (= tp!665707 e!1372072)))

(declare-fun b!2146612 () Bool)

(declare-fun e!1372071 () Bool)

(declare-fun tp!665758 () Bool)

(assert (=> b!2146612 (= e!1372071 tp!665758)))

(declare-fun setIsEmpty!16824 () Bool)

(assert (=> setIsEmpty!16824 setRes!16824))

(declare-fun setNonEmpty!16824 () Bool)

(declare-fun tp!665757 () Bool)

(declare-fun setElem!16824 () Context!2754)

(assert (=> setNonEmpty!16824 (= setRes!16824 (and tp!665757 (inv!32216 setElem!16824) e!1372071))))

(declare-fun setRest!16824 () (InoxSet Context!2754))

(assert (=> setNonEmpty!16824 (= (_1!14424 (_1!14425 (h!29893 (zeroValue!3090 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))) ((_ map or) (store ((as const (Array Context!2754 Bool)) false) setElem!16824 true) setRest!16824))))

(assert (= (and b!2146611 condSetEmpty!16824) setIsEmpty!16824))

(assert (= (and b!2146611 (not condSetEmpty!16824)) setNonEmpty!16824))

(assert (= setNonEmpty!16824 b!2146612))

(assert (= (and b!2146474 ((_ is Cons!24492) (zeroValue!3090 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173)))))))) b!2146611))

(declare-fun m!2590200 () Bool)

(assert (=> setNonEmpty!16824 m!2590200))

(declare-fun b!2146613 () Bool)

(declare-fun e!1372074 () Bool)

(declare-fun setRes!16825 () Bool)

(declare-fun tp!665762 () Bool)

(assert (=> b!2146613 (= e!1372074 (and setRes!16825 tp!665762))))

(declare-fun condSetEmpty!16825 () Bool)

(assert (=> b!2146613 (= condSetEmpty!16825 (= (_1!14424 (_1!14425 (h!29893 (minValue!3090 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))) ((as const (Array Context!2754 Bool)) false)))))

(assert (=> b!2146474 (= tp!665705 e!1372074)))

(declare-fun b!2146614 () Bool)

(declare-fun e!1372073 () Bool)

(declare-fun tp!665761 () Bool)

(assert (=> b!2146614 (= e!1372073 tp!665761)))

(declare-fun setIsEmpty!16825 () Bool)

(assert (=> setIsEmpty!16825 setRes!16825))

(declare-fun tp!665760 () Bool)

(declare-fun setElem!16825 () Context!2754)

(declare-fun setNonEmpty!16825 () Bool)

(assert (=> setNonEmpty!16825 (= setRes!16825 (and tp!665760 (inv!32216 setElem!16825) e!1372073))))

(declare-fun setRest!16825 () (InoxSet Context!2754))

(assert (=> setNonEmpty!16825 (= (_1!14424 (_1!14425 (h!29893 (minValue!3090 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173))))))))) ((_ map or) (store ((as const (Array Context!2754 Bool)) false) setElem!16825 true) setRest!16825))))

(assert (= (and b!2146613 condSetEmpty!16825) setIsEmpty!16825))

(assert (= (and b!2146613 (not condSetEmpty!16825)) setNonEmpty!16825))

(assert (= setNonEmpty!16825 b!2146614))

(assert (= (and b!2146474 ((_ is Cons!24492) (minValue!3090 (v!29083 (underlying!5859 (v!29084 (underlying!5860 (cache!3127 thiss!29173)))))))) b!2146613))

(declare-fun m!2590202 () Bool)

(assert (=> setNonEmpty!16825 m!2590202))

(declare-fun tp!665769 () Bool)

(declare-fun tp!665771 () Bool)

(declare-fun b!2146623 () Bool)

(declare-fun e!1372080 () Bool)

(assert (=> b!2146623 (= e!1372080 (and (inv!32215 (left!18811 (c!340789 (totalInput!3181 thiss!29173)))) tp!665769 (inv!32215 (right!19141 (c!340789 (totalInput!3181 thiss!29173)))) tp!665771))))

(declare-fun b!2146625 () Bool)

(declare-fun e!1372079 () Bool)

(declare-fun tp!665770 () Bool)

(assert (=> b!2146625 (= e!1372079 tp!665770)))

(declare-fun b!2146624 () Bool)

(declare-fun inv!32219 (IArray!15891) Bool)

(assert (=> b!2146624 (= e!1372080 (and (inv!32219 (xs!10885 (c!340789 (totalInput!3181 thiss!29173)))) e!1372079))))

(assert (=> b!2146478 (= tp!665702 (and (inv!32215 (c!340789 (totalInput!3181 thiss!29173))) e!1372080))))

(assert (= (and b!2146478 ((_ is Node!7943) (c!340789 (totalInput!3181 thiss!29173)))) b!2146623))

(assert (= b!2146624 b!2146625))

(assert (= (and b!2146478 ((_ is Leaf!11614) (c!340789 (totalInput!3181 thiss!29173)))) b!2146624))

(declare-fun m!2590204 () Bool)

(assert (=> b!2146623 m!2590204))

(declare-fun m!2590206 () Bool)

(assert (=> b!2146623 m!2590206))

(declare-fun m!2590208 () Bool)

(assert (=> b!2146624 m!2590208))

(assert (=> b!2146478 m!2590029))

(declare-fun b_lambda!70741 () Bool)

(assert (= b_lambda!70737 (or (and b!2146476 b_free!63317) b_lambda!70741)))

(declare-fun b_lambda!70743 () Bool)

(assert (= b_lambda!70739 (or (and b!2146476 b_free!63317) b_lambda!70743)))

(check-sat (not b!2146609) (not b!2146612) (not d!645263) (not d!645259) (not b_lambda!70741) (not b!2146625) (not d!645277) (not d!645267) (not b!2146522) (not b!2146514) (not b_lambda!70743) (not d!645265) (not b!2146624) (not b!2146513) (not b!2146562) (not b!2146623) (not b!2146504) (not bm!128848) (not b!2146581) (not b!2146576) (not setNonEmpty!16823) (not bm!128850) (not bm!128852) (not bm!128851) (not b!2146478) (not b_next!64023) (not b!2146608) (not b!2146606) (not b!2146594) (not b!2146588) (not setNonEmpty!16821) (not d!645261) (not b!2146574) (not b!2146523) (not b!2146567) b_and!172899 b_and!172903 (not b!2146534) (not setNonEmpty!16825) (not d!645273) (not b!2146528) (not b_next!64021) (not bm!128849) (not b!2146589) (not b!2146508) (not setNonEmpty!16816) (not b!2146614) (not setNonEmpty!16822) (not b!2146547) (not b!2146613) (not setNonEmpty!16824) (not b!2146611) (not b!2146529) (not b!2146509) (not b!2146564) (not bm!128853) (not b!2146607) (not b!2146610) (not setNonEmpty!16813) (not b!2146548) (not d!645275) (not mapNonEmpty!13460) (not b!2146605))
(check-sat b_and!172903 b_and!172899 (not b_next!64021) (not b_next!64023))
