; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!267798 () Bool)

(assert start!267798)

(declare-fun b!2766024 () Bool)

(declare-fun b_free!78101 () Bool)

(declare-fun b_next!78805 () Bool)

(assert (=> b!2766024 (= b_free!78101 (not b_next!78805))))

(declare-fun tp!874235 () Bool)

(declare-fun b_and!202839 () Bool)

(assert (=> b!2766024 (= tp!874235 b_and!202839)))

(declare-fun b!2766058 () Bool)

(declare-fun b_free!78103 () Bool)

(declare-fun b_next!78807 () Bool)

(assert (=> b!2766058 (= b_free!78103 (not b_next!78807))))

(declare-fun tp!874241 () Bool)

(declare-fun b_and!202841 () Bool)

(assert (=> b!2766058 (= tp!874241 b_and!202841)))

(declare-fun b!2766072 () Bool)

(declare-fun b_free!78105 () Bool)

(declare-fun b_next!78809 () Bool)

(assert (=> b!2766072 (= b_free!78105 (not b_next!78809))))

(declare-fun tp!874238 () Bool)

(declare-fun b_and!202843 () Bool)

(assert (=> b!2766072 (= tp!874238 b_and!202843)))

(declare-fun b!2766071 () Bool)

(declare-fun b_free!78107 () Bool)

(declare-fun b_next!78811 () Bool)

(assert (=> b!2766071 (= b_free!78107 (not b_next!78811))))

(declare-fun tp!874237 () Bool)

(declare-fun b_and!202845 () Bool)

(assert (=> b!2766071 (= tp!874237 b_and!202845)))

(declare-fun b!2766022 () Bool)

(declare-fun e!1744029 () Bool)

(declare-datatypes ((C!16300 0))(
  ( (C!16301 (val!10084 Int)) )
))
(declare-datatypes ((Regex!8071 0))(
  ( (ElementMatch!8071 (c!448724 C!16300)) (Concat!13159 (regOne!16654 Regex!8071) (regTwo!16654 Regex!8071)) (EmptyExpr!8071) (Star!8071 (reg!8400 Regex!8071)) (EmptyLang!8071) (Union!8071 (regOne!16655 Regex!8071) (regTwo!16655 Regex!8071)) )
))
(declare-datatypes ((List!32044 0))(
  ( (Nil!31944) (Cons!31944 (h!37364 Regex!8071) (t!228164 List!32044)) )
))
(declare-datatypes ((Context!4578 0))(
  ( (Context!4579 (exprs!2789 List!32044)) )
))
(declare-datatypes ((tuple2!32044 0))(
  ( (tuple2!32045 (_1!18871 Context!4578) (_2!18871 C!16300)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32046 0))(
  ( (tuple2!32047 (_1!18872 tuple2!32044) (_2!18872 (InoxSet Context!4578))) )
))
(declare-datatypes ((List!32045 0))(
  ( (Nil!31945) (Cons!31945 (h!37365 tuple2!32046) (t!228165 List!32045)) )
))
(declare-datatypes ((Hashable!3666 0))(
  ( (HashableExt!3665 (__x!20900 Int)) )
))
(declare-datatypes ((array!13351 0))(
  ( (array!13352 (arr!5954 (Array (_ BitVec 32) List!32045)) (size!24715 (_ BitVec 32))) )
))
(declare-datatypes ((array!13353 0))(
  ( (array!13354 (arr!5955 (Array (_ BitVec 32) (_ BitVec 64))) (size!24716 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7500 0))(
  ( (LongMapFixedSize!7501 (defaultEntry!4135 Int) (mask!9522 (_ BitVec 32)) (extraKeys!3999 (_ BitVec 32)) (zeroValue!4009 List!32045) (minValue!4009 List!32045) (_size!7543 (_ BitVec 32)) (_keys!4050 array!13353) (_values!4031 array!13351) (_vacant!3811 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14809 0))(
  ( (Cell!14810 (v!33552 LongMapFixedSize!7500)) )
))
(declare-datatypes ((MutLongMap!3750 0))(
  ( (LongMap!3750 (underlying!7703 Cell!14809)) (MutLongMapExt!3749 (__x!20901 Int)) )
))
(declare-datatypes ((Cell!14811 0))(
  ( (Cell!14812 (v!33553 MutLongMap!3750)) )
))
(declare-datatypes ((MutableMap!3656 0))(
  ( (MutableMapExt!3655 (__x!20902 Int)) (HashMap!3656 (underlying!7704 Cell!14811) (hashF!5698 Hashable!3666) (_size!7544 (_ BitVec 32)) (defaultValue!3827 Int)) )
))
(declare-datatypes ((CacheUp!2362 0))(
  ( (CacheUp!2363 (cache!3799 MutableMap!3656)) )
))
(declare-datatypes ((tuple3!4758 0))(
  ( (tuple3!4759 (_1!18873 Regex!8071) (_2!18873 Context!4578) (_3!2849 C!16300)) )
))
(declare-datatypes ((tuple2!32048 0))(
  ( (tuple2!32049 (_1!18874 tuple3!4758) (_2!18874 (InoxSet Context!4578))) )
))
(declare-datatypes ((List!32046 0))(
  ( (Nil!31946) (Cons!31946 (h!37366 tuple2!32048) (t!228166 List!32046)) )
))
(declare-datatypes ((array!13355 0))(
  ( (array!13356 (arr!5956 (Array (_ BitVec 32) List!32046)) (size!24717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7502 0))(
  ( (LongMapFixedSize!7503 (defaultEntry!4136 Int) (mask!9523 (_ BitVec 32)) (extraKeys!4000 (_ BitVec 32)) (zeroValue!4010 List!32046) (minValue!4010 List!32046) (_size!7545 (_ BitVec 32)) (_keys!4051 array!13353) (_values!4032 array!13355) (_vacant!3812 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14813 0))(
  ( (Cell!14814 (v!33554 LongMapFixedSize!7502)) )
))
(declare-datatypes ((MutLongMap!3751 0))(
  ( (LongMap!3751 (underlying!7705 Cell!14813)) (MutLongMapExt!3750 (__x!20903 Int)) )
))
(declare-datatypes ((Cell!14815 0))(
  ( (Cell!14816 (v!33555 MutLongMap!3751)) )
))
(declare-datatypes ((Hashable!3667 0))(
  ( (HashableExt!3666 (__x!20904 Int)) )
))
(declare-datatypes ((MutableMap!3657 0))(
  ( (MutableMapExt!3656 (__x!20905 Int)) (HashMap!3657 (underlying!7706 Cell!14815) (hashF!5699 Hashable!3667) (_size!7546 (_ BitVec 32)) (defaultValue!3828 Int)) )
))
(declare-datatypes ((CacheDown!2482 0))(
  ( (CacheDown!2483 (cache!3800 MutableMap!3657)) )
))
(declare-datatypes ((tuple3!4760 0))(
  ( (tuple3!4761 (_1!18875 Int) (_2!18875 CacheUp!2362) (_3!2850 CacheDown!2482)) )
))
(declare-fun lt!984089 () tuple3!4760)

(declare-fun call!180265 () Int)

(assert (=> b!2766022 (= e!1744029 (= (_1!18875 lt!984089) call!180265))))

(declare-fun b!2766023 () Bool)

(declare-fun e!1744023 () Bool)

(declare-fun lt!984053 () Int)

(declare-fun e!1744007 () Int)

(assert (=> b!2766023 (= e!1744023 (= lt!984053 e!1744007))))

(declare-fun c!448717 () Bool)

(declare-fun lt!984072 () Int)

(assert (=> b!2766023 (= c!448717 (= 0 lt!984072))))

(declare-fun e!1744037 () Bool)

(declare-fun e!1744027 () Bool)

(assert (=> b!2766024 (= e!1744037 (and e!1744027 tp!874235))))

(declare-fun res!1157415 () Bool)

(declare-fun e!1744016 () Bool)

(assert (=> start!267798 (=> (not res!1157415) (not e!1744016))))

(declare-fun cacheUp!820 () CacheUp!2362)

(declare-fun valid!2922 (CacheUp!2362) Bool)

(assert (=> start!267798 (= res!1157415 (valid!2922 cacheUp!820))))

(assert (=> start!267798 e!1744016))

(declare-fun e!1744006 () Bool)

(declare-fun inv!43377 (CacheUp!2362) Bool)

(assert (=> start!267798 (and (inv!43377 cacheUp!820) e!1744006)))

(declare-fun cacheDown!939 () CacheDown!2482)

(declare-fun e!1744035 () Bool)

(declare-fun inv!43378 (CacheDown!2482) Bool)

(assert (=> start!267798 (and (inv!43378 cacheDown!939) e!1744035)))

(declare-fun condSetEmpty!22573 () Bool)

(declare-fun z!3597 () (InoxSet Context!4578))

(assert (=> start!267798 (= condSetEmpty!22573 (= z!3597 ((as const (Array Context!4578 Bool)) false)))))

(declare-fun setRes!22573 () Bool)

(assert (=> start!267798 setRes!22573))

(declare-datatypes ((List!32047 0))(
  ( (Nil!31947) (Cons!31947 (h!37367 C!16300) (t!228167 List!32047)) )
))
(declare-datatypes ((IArray!19911 0))(
  ( (IArray!19912 (innerList!10013 List!32047)) )
))
(declare-datatypes ((Conc!9953 0))(
  ( (Node!9953 (left!24368 Conc!9953) (right!24698 Conc!9953) (csize!20136 Int) (cheight!10164 Int)) (Leaf!15157 (xs!13062 IArray!19911) (csize!20137 Int)) (Empty!9953) )
))
(declare-datatypes ((BalanceConc!19520 0))(
  ( (BalanceConc!19521 (c!448725 Conc!9953)) )
))
(declare-fun input!5495 () BalanceConc!19520)

(declare-fun e!1744021 () Bool)

(declare-fun inv!43379 (BalanceConc!19520) Bool)

(assert (=> start!267798 (and (inv!43379 input!5495) e!1744021)))

(declare-fun b!2766025 () Bool)

(declare-fun res!1157407 () Bool)

(declare-fun call!180263 () Bool)

(assert (=> b!2766025 (= res!1157407 call!180263)))

(declare-fun e!1744008 () Bool)

(assert (=> b!2766025 (=> (not res!1157407) (not e!1744008))))

(declare-fun b!2766026 () Bool)

(declare-datatypes ((tuple2!32050 0))(
  ( (tuple2!32051 (_1!18876 List!32047) (_2!18876 List!32047)) )
))
(declare-fun e!1744011 () tuple2!32050)

(declare-fun lt!984048 () List!32047)

(assert (=> b!2766026 (= e!1744011 (tuple2!32051 Nil!31947 lt!984048))))

(declare-fun b!2766027 () Bool)

(declare-fun e!1744012 () Bool)

(declare-fun e!1744032 () Bool)

(assert (=> b!2766027 (= e!1744012 e!1744032)))

(declare-fun b!2766028 () Bool)

(declare-fun res!1157416 () Bool)

(declare-fun e!1744030 () Bool)

(assert (=> b!2766028 (=> (not res!1157416) (not e!1744030))))

(declare-fun lt!984059 () tuple3!4760)

(declare-fun valid!2923 (CacheDown!2482) Bool)

(assert (=> b!2766028 (= res!1157416 (valid!2923 (_3!2850 lt!984059)))))

(declare-fun b!2766029 () Bool)

(declare-fun lt!984090 () Bool)

(declare-fun call!180255 () Bool)

(assert (=> b!2766029 (= lt!984090 call!180255)))

(assert (=> b!2766029 (= lt!984048 Nil!31947)))

(declare-datatypes ((Unit!46013 0))(
  ( (Unit!46014) )
))
(declare-fun lt!984106 () Unit!46013)

(declare-fun call!180267 () Unit!46013)

(assert (=> b!2766029 (= lt!984106 call!180267)))

(declare-fun call!180251 () Bool)

(assert (=> b!2766029 call!180251))

(declare-fun lt!984114 () Unit!46013)

(declare-fun call!180269 () Unit!46013)

(assert (=> b!2766029 (= lt!984114 call!180269)))

(assert (=> b!2766029 (= e!1744007 0)))

(declare-fun b!2766030 () Bool)

(declare-fun e!1744033 () Bool)

(assert (=> b!2766030 (= e!1744035 e!1744033)))

(declare-fun call!180254 () tuple3!4760)

(declare-fun bm!180244 () Bool)

(declare-datatypes ((tuple3!4762 0))(
  ( (tuple3!4763 (_1!18877 (InoxSet Context!4578)) (_2!18877 CacheUp!2362) (_3!2851 CacheDown!2482)) )
))
(declare-fun lt!984116 () tuple3!4762)

(declare-fun lt!984063 () tuple3!4762)

(declare-fun lt!984062 () List!32047)

(declare-fun lt!984076 () List!32047)

(declare-fun c!448718 () Bool)

(declare-fun findLongestMatchInnerZipperFastMem!24 (CacheUp!2362 CacheDown!2482 (InoxSet Context!4578) List!32047 Int List!32047 BalanceConc!19520 Int) tuple3!4760)

(assert (=> bm!180244 (= call!180254 (findLongestMatchInnerZipperFastMem!24 (ite c!448718 (_2!18877 lt!984063) (_2!18877 lt!984116)) (ite c!448718 (_3!2851 lt!984063) (_3!2851 lt!984116)) (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116)) lt!984062 1 lt!984076 input!5495 lt!984072))))

(declare-fun b!2766031 () Bool)

(declare-fun e!1744039 () Bool)

(declare-fun tp!874230 () Bool)

(assert (=> b!2766031 (= e!1744039 tp!874230)))

(declare-fun b!2766032 () Bool)

(declare-datatypes ((tuple3!4764 0))(
  ( (tuple3!4765 (_1!18878 Int) (_2!18878 CacheDown!2482) (_3!2852 CacheUp!2362)) )
))
(declare-fun e!1744004 () tuple3!4764)

(declare-fun lt!984103 () tuple3!4760)

(assert (=> b!2766032 (= e!1744004 (tuple3!4765 (ite (= (_1!18875 lt!984103) 0) 0 (_1!18875 lt!984103)) (_3!2850 lt!984103) (_2!18875 lt!984103)))))

(declare-fun call!180264 () tuple3!4762)

(assert (=> b!2766032 (= lt!984063 call!180264)))

(assert (=> b!2766032 (= lt!984103 call!180254)))

(declare-fun res!1157417 () Bool)

(declare-fun call!180250 () Bool)

(assert (=> b!2766032 (= res!1157417 call!180250)))

(assert (=> b!2766032 (=> (not res!1157417) (not e!1744008))))

(assert (=> b!2766032 e!1744008))

(declare-fun b!2766033 () Bool)

(declare-fun e!1744003 () Bool)

(assert (=> b!2766033 (= e!1744032 e!1744003)))

(declare-fun b!2766034 () Bool)

(declare-fun e!1744036 () tuple2!32050)

(declare-fun e!1744018 () tuple2!32050)

(assert (=> b!2766034 (= e!1744036 e!1744018)))

(declare-fun lt!984067 () tuple2!32050)

(declare-fun call!180252 () tuple2!32050)

(assert (=> b!2766034 (= lt!984067 call!180252)))

(declare-fun c!448714 () Bool)

(declare-fun isEmpty!18086 (List!32047) Bool)

(assert (=> b!2766034 (= c!448714 (isEmpty!18086 (_1!18876 lt!984067)))))

(declare-fun b!2766035 () Bool)

(declare-fun e!1744013 () Bool)

(assert (=> b!2766035 (= e!1744016 (not e!1744013))))

(declare-fun res!1157414 () Bool)

(assert (=> b!2766035 (=> res!1157414 e!1744013)))

(declare-fun lt!984077 () List!32047)

(assert (=> b!2766035 (= res!1157414 (not (= lt!984077 lt!984048)))))

(declare-fun lt!984064 () List!32047)

(declare-datatypes ((tuple2!32052 0))(
  ( (tuple2!32053 (_1!18879 BalanceConc!19520) (_2!18879 BalanceConc!19520)) )
))
(declare-fun lt!984071 () tuple2!32052)

(declare-fun list!12062 (BalanceConc!19520) List!32047)

(assert (=> b!2766035 (= lt!984064 (list!12062 (_2!18879 lt!984071)))))

(declare-fun lt!984110 () List!32047)

(assert (=> b!2766035 (= lt!984110 (list!12062 (_1!18879 lt!984071)))))

(declare-fun lt!984054 () tuple3!4760)

(declare-fun splitAt!105 (BalanceConc!19520 Int) tuple2!32052)

(assert (=> b!2766035 (= lt!984071 (splitAt!105 input!5495 (_1!18875 lt!984054)))))

(declare-fun e!1744010 () Bool)

(assert (=> b!2766035 e!1744010))

(declare-fun c!448719 () Bool)

(declare-fun lt!984078 () Bool)

(assert (=> b!2766035 (= c!448719 lt!984078)))

(declare-fun lt!984080 () tuple2!32050)

(declare-fun findLongestMatchInnerZipper!15 ((InoxSet Context!4578) List!32047 Int List!32047 List!32047 Int) tuple2!32050)

(assert (=> b!2766035 (= lt!984080 (findLongestMatchInnerZipper!15 z!3597 Nil!31947 0 lt!984048 lt!984048 lt!984072))))

(assert (=> b!2766035 e!1744023))

(declare-fun c!448716 () Bool)

(assert (=> b!2766035 (= c!448716 lt!984078)))

(declare-fun findLongestMatchInnerZipperFast!29 ((InoxSet Context!4578) List!32047 Int List!32047 BalanceConc!19520 Int) Int)

(assert (=> b!2766035 (= lt!984053 (findLongestMatchInnerZipperFast!29 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072))))

(declare-fun lt!984051 () tuple3!4764)

(assert (=> b!2766035 (= lt!984059 (tuple3!4761 (_1!18878 lt!984051) (_3!2852 lt!984051) (_2!18878 lt!984051)))))

(declare-fun e!1744022 () tuple3!4764)

(assert (=> b!2766035 (= lt!984051 e!1744022)))

(declare-fun c!448713 () Bool)

(assert (=> b!2766035 (= c!448713 lt!984078)))

(declare-fun lostCauseZipper!432 ((InoxSet Context!4578)) Bool)

(assert (=> b!2766035 (= lt!984078 (lostCauseZipper!432 z!3597))))

(declare-fun lt!984060 () List!32047)

(assert (=> b!2766035 (and (= lt!984048 lt!984060) (= lt!984060 lt!984048))))

(declare-fun lt!984113 () Unit!46013)

(declare-fun lemmaSamePrefixThenSameSuffix!1130 (List!32047 List!32047 List!32047 List!32047 List!32047) Unit!46013)

(assert (=> b!2766035 (= lt!984113 (lemmaSamePrefixThenSameSuffix!1130 Nil!31947 lt!984048 Nil!31947 lt!984060 lt!984048))))

(declare-fun getSuffix!1228 (List!32047 List!32047) List!32047)

(assert (=> b!2766035 (= lt!984060 (getSuffix!1228 lt!984048 Nil!31947))))

(declare-fun isPrefix!2545 (List!32047 List!32047) Bool)

(assert (=> b!2766035 (isPrefix!2545 Nil!31947 lt!984077)))

(declare-fun ++!7907 (List!32047 List!32047) List!32047)

(assert (=> b!2766035 (= lt!984077 (++!7907 Nil!31947 lt!984048))))

(declare-fun lt!984111 () Unit!46013)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1656 (List!32047 List!32047) Unit!46013)

(assert (=> b!2766035 (= lt!984111 (lemmaConcatTwoListThenFirstIsPrefix!1656 Nil!31947 lt!984048))))

(assert (=> b!2766035 e!1744030))

(declare-fun res!1157408 () Bool)

(assert (=> b!2766035 (=> (not res!1157408) (not e!1744030))))

(assert (=> b!2766035 (= res!1157408 (valid!2922 (_2!18875 lt!984059)))))

(assert (=> b!2766035 (= lt!984059 (findLongestMatchInnerZipperFastMem!24 (_2!18875 lt!984054) (_3!2850 lt!984054) z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072))))

(declare-fun e!1744038 () Bool)

(assert (=> b!2766035 e!1744038))

(declare-fun res!1157418 () Bool)

(assert (=> b!2766035 (=> (not res!1157418) (not e!1744038))))

(assert (=> b!2766035 (= res!1157418 (valid!2922 (_2!18875 lt!984054)))))

(assert (=> b!2766035 (= lt!984054 (findLongestMatchInnerZipperFastMem!24 cacheUp!820 cacheDown!939 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072))))

(declare-fun size!24718 (BalanceConc!19520) Int)

(assert (=> b!2766035 (= lt!984072 (size!24718 input!5495))))

(assert (=> b!2766035 (= lt!984048 (list!12062 input!5495))))

(declare-fun bm!180245 () Bool)

(assert (=> bm!180245 (= call!180263 (valid!2923 (ite c!448718 (_3!2850 lt!984103) (_3!2850 lt!984089))))))

(declare-fun bm!180246 () Bool)

(declare-fun lt!984070 () C!16300)

(declare-fun derivationStepZipperMem!91 ((InoxSet Context!4578) C!16300 CacheUp!2362 CacheDown!2482) tuple3!4762)

(assert (=> bm!180246 (= call!180264 (derivationStepZipperMem!91 z!3597 lt!984070 (_2!18875 lt!984054) (_3!2850 lt!984054)))))

(declare-fun b!2766036 () Bool)

(declare-fun res!1157412 () Bool)

(assert (=> b!2766036 (=> (not res!1157412) (not e!1744016))))

(assert (=> b!2766036 (= res!1157412 (valid!2923 cacheDown!939))))

(declare-fun mapNonEmpty!17103 () Bool)

(declare-fun mapRes!17103 () Bool)

(declare-fun tp!874239 () Bool)

(declare-fun tp!874231 () Bool)

(assert (=> mapNonEmpty!17103 (= mapRes!17103 (and tp!874239 tp!874231))))

(declare-fun mapValue!17104 () List!32045)

(declare-fun mapKey!17104 () (_ BitVec 32))

(declare-fun mapRest!17104 () (Array (_ BitVec 32) List!32045))

(assert (=> mapNonEmpty!17103 (= (arr!5954 (_values!4031 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))) (store mapRest!17104 mapKey!17104 mapValue!17104))))

(declare-fun bm!180247 () Bool)

(declare-fun call!180268 () Unit!46013)

(declare-fun lemmaIsPrefixSameLengthThenSameList!453 (List!32047 List!32047 List!32047) Unit!46013)

(assert (=> bm!180247 (= call!180268 (lemmaIsPrefixSameLengthThenSameList!453 lt!984048 Nil!31947 lt!984048))))

(declare-fun b!2766037 () Bool)

(declare-fun e!1744017 () tuple2!32050)

(assert (=> b!2766037 (= e!1744010 (= lt!984080 e!1744017))))

(declare-fun c!448721 () Bool)

(assert (=> b!2766037 (= c!448721 (= 0 lt!984072))))

(declare-fun mapIsEmpty!17103 () Bool)

(declare-fun mapRes!17104 () Bool)

(assert (=> mapIsEmpty!17103 mapRes!17104))

(declare-fun b!2766038 () Bool)

(assert (=> b!2766038 (= e!1744038 (= (_1!18875 lt!984054) (findLongestMatchInnerZipperFast!29 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072)))))

(declare-fun bm!180248 () Bool)

(declare-fun call!180260 () Bool)

(assert (=> bm!180248 (= call!180260 (isPrefix!2545 lt!984048 lt!984048))))

(declare-fun b!2766039 () Bool)

(assert (=> b!2766039 (= e!1744023 (= lt!984053 0))))

(declare-fun b!2766040 () Bool)

(declare-fun e!1744026 () Int)

(declare-fun lt!984100 () Int)

(assert (=> b!2766040 (= e!1744026 (ite (= lt!984100 0) 0 lt!984100))))

(declare-fun call!180253 () Int)

(assert (=> b!2766040 (= lt!984100 call!180253)))

(declare-fun b!2766041 () Bool)

(declare-fun tp!874245 () Bool)

(declare-fun inv!43380 (Conc!9953) Bool)

(assert (=> b!2766041 (= e!1744021 (and (inv!43380 (c!448725 input!5495)) tp!874245))))

(declare-fun b!2766042 () Bool)

(assert (=> b!2766042 (= e!1744018 (tuple2!32051 Nil!31947 lt!984048))))

(declare-fun b!2766043 () Bool)

(declare-fun c!448712 () Bool)

(assert (=> b!2766043 (= c!448712 call!180255)))

(declare-fun lt!984046 () List!32047)

(declare-fun lt!984079 () List!32047)

(assert (=> b!2766043 (= (++!7907 lt!984046 lt!984079) lt!984048)))

(declare-fun lt!984052 () C!16300)

(assert (=> b!2766043 (= lt!984046 (++!7907 Nil!31947 (Cons!31947 lt!984052 Nil!31947)))))

(declare-fun lt!984096 () Unit!46013)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!862 (List!32047 C!16300 List!32047 List!32047) Unit!46013)

(assert (=> b!2766043 (= lt!984096 (lemmaMoveElementToOtherListKeepsConcatEq!862 Nil!31947 lt!984052 lt!984079 lt!984048))))

(declare-fun tail!4379 (List!32047) List!32047)

(assert (=> b!2766043 (= lt!984079 (tail!4379 lt!984048))))

(declare-fun apply!7486 (BalanceConc!19520 Int) C!16300)

(assert (=> b!2766043 (= lt!984052 (apply!7486 input!5495 0))))

(declare-fun head!6141 (List!32047) C!16300)

(assert (=> b!2766043 (isPrefix!2545 (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947)) lt!984048)))

(declare-fun lt!984058 () Unit!46013)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!450 (List!32047 List!32047) Unit!46013)

(assert (=> b!2766043 (= lt!984058 (lemmaAddHeadSuffixToPrefixStillPrefix!450 Nil!31947 lt!984048))))

(declare-fun lt!984069 () Unit!46013)

(declare-fun e!1744020 () Unit!46013)

(assert (=> b!2766043 (= lt!984069 e!1744020)))

(declare-fun c!448722 () Bool)

(declare-fun lt!984074 () Int)

(assert (=> b!2766043 (= c!448722 (= lt!984074 lt!984072))))

(declare-fun size!24719 (List!32047) Int)

(assert (=> b!2766043 (<= lt!984074 (size!24719 lt!984048))))

(assert (=> b!2766043 (= lt!984074 (size!24719 Nil!31947))))

(declare-fun lt!984108 () Unit!46013)

(declare-fun lemmaIsPrefixThenSmallerEqSize!253 (List!32047 List!32047) Unit!46013)

(assert (=> b!2766043 (= lt!984108 (lemmaIsPrefixThenSmallerEqSize!253 Nil!31947 lt!984048))))

(declare-fun drop!1699 (List!32047 Int) List!32047)

(declare-fun apply!7487 (List!32047 Int) C!16300)

(assert (=> b!2766043 (= (head!6141 (drop!1699 lt!984048 0)) (apply!7487 lt!984048 0))))

(declare-fun lt!984107 () Unit!46013)

(declare-fun lemmaDropApply!905 (List!32047 Int) Unit!46013)

(assert (=> b!2766043 (= lt!984107 (lemmaDropApply!905 lt!984048 0))))

(declare-fun lt!984083 () List!32047)

(declare-fun lt!984105 () List!32047)

(assert (=> b!2766043 (and (= lt!984083 Nil!31947) (= lt!984105 lt!984048))))

(declare-fun lt!984086 () Unit!46013)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!331 (List!32047 List!32047 List!32047 List!32047) Unit!46013)

(assert (=> b!2766043 (= lt!984086 (lemmaConcatSameAndSameSizesThenSameLists!331 lt!984083 lt!984105 Nil!31947 lt!984048))))

(declare-fun lt!984061 () tuple2!32052)

(assert (=> b!2766043 (= lt!984105 (list!12062 (_2!18879 lt!984061)))))

(assert (=> b!2766043 (= lt!984083 (list!12062 (_1!18879 lt!984061)))))

(assert (=> b!2766043 (= lt!984061 (splitAt!105 input!5495 0))))

(assert (=> b!2766043 (= e!1744007 e!1744026)))

(declare-fun b!2766044 () Bool)

(assert (=> b!2766044 (= e!1744006 e!1744037)))

(declare-fun b!2766045 () Bool)

(declare-fun e!1744034 () Unit!46013)

(declare-fun Unit!46015 () Unit!46013)

(assert (=> b!2766045 (= e!1744034 Unit!46015)))

(declare-fun bm!180249 () Bool)

(declare-fun call!180266 () Unit!46013)

(declare-fun lemmaIsPrefixRefl!1671 (List!32047 List!32047) Unit!46013)

(assert (=> bm!180249 (= call!180266 (lemmaIsPrefixRefl!1671 lt!984048 lt!984048))))

(declare-fun b!2766046 () Bool)

(declare-fun e!1744014 () Bool)

(declare-fun e!1744028 () Bool)

(assert (=> b!2766046 (= e!1744014 e!1744028)))

(declare-fun b!2766047 () Bool)

(assert (=> b!2766047 (= e!1744004 (tuple3!4765 (_1!18875 lt!984089) (_3!2850 lt!984089) (_2!18875 lt!984089)))))

(assert (=> b!2766047 (= lt!984116 call!180264)))

(assert (=> b!2766047 (= lt!984089 call!180254)))

(declare-fun res!1157409 () Bool)

(assert (=> b!2766047 (= res!1157409 call!180250)))

(assert (=> b!2766047 (=> (not res!1157409) (not e!1744029))))

(assert (=> b!2766047 e!1744029))

(declare-fun bm!180250 () Bool)

(assert (=> bm!180250 (= call!180251 (isPrefix!2545 lt!984048 lt!984048))))

(declare-fun b!2766048 () Bool)

(assert (=> b!2766048 (= e!1744036 call!180252)))

(declare-fun bm!180251 () Bool)

(declare-fun lt!984091 () List!32047)

(declare-fun call!180256 () (InoxSet Context!4578))

(declare-fun lt!984088 () List!32047)

(assert (=> bm!180251 (= call!180252 (findLongestMatchInnerZipper!15 call!180256 lt!984088 1 lt!984091 lt!984048 lt!984072))))

(declare-fun bm!180252 () Bool)

(assert (=> bm!180252 (= call!180267 (lemmaIsPrefixSameLengthThenSameList!453 lt!984048 Nil!31947 lt!984048))))

(declare-fun b!2766049 () Bool)

(declare-fun e!1744031 () Bool)

(declare-fun tp!874233 () Bool)

(assert (=> b!2766049 (= e!1744031 (and tp!874233 mapRes!17104))))

(declare-fun condMapEmpty!17103 () Bool)

(declare-fun mapDefault!17103 () List!32046)

(assert (=> b!2766049 (= condMapEmpty!17103 (= (arr!5956 (_values!4032 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32046)) mapDefault!17103)))))

(declare-fun b!2766050 () Bool)

(assert (=> b!2766050 (= e!1744013 (= lt!984072 (size!24719 lt!984048)))))

(declare-fun b!2766051 () Bool)

(declare-fun e!1744005 () Bool)

(declare-fun lt!984066 () MutLongMap!3751)

(get-info :version)

(assert (=> b!2766051 (= e!1744005 (and e!1744012 ((_ is LongMap!3751) lt!984066)))))

(assert (=> b!2766051 (= lt!984066 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))

(declare-fun bm!180253 () Bool)

(declare-fun call!180259 () Unit!46013)

(assert (=> bm!180253 (= call!180259 (lemmaIsPrefixSameLengthThenSameList!453 lt!984048 Nil!31947 lt!984048))))

(declare-fun bm!180254 () Bool)

(declare-fun call!180262 () Unit!46013)

(assert (=> bm!180254 (= call!180262 (lemmaIsPrefixRefl!1671 lt!984048 lt!984048))))

(declare-fun bm!180255 () Bool)

(assert (=> bm!180255 (= call!180250 (valid!2922 (ite c!448718 (_2!18875 lt!984103) (_2!18875 lt!984089))))))

(declare-fun b!2766052 () Bool)

(assert (=> b!2766052 (= e!1744026 call!180253)))

(declare-fun b!2766053 () Bool)

(declare-fun c!448720 () Bool)

(declare-fun call!180257 () Bool)

(assert (=> b!2766053 (= c!448720 call!180257)))

(assert (=> b!2766053 (= lt!984048 Nil!31947)))

(declare-fun lt!984087 () Unit!46013)

(assert (=> b!2766053 (= lt!984087 call!180259)))

(declare-fun call!180261 () Bool)

(assert (=> b!2766053 call!180261))

(declare-fun lt!984065 () Unit!46013)

(assert (=> b!2766053 (= lt!984065 call!180262)))

(assert (=> b!2766053 (= e!1744017 e!1744011)))

(declare-fun bm!180256 () Bool)

(declare-fun call!180258 () (InoxSet Context!4578))

(assert (=> bm!180256 (= call!180253 (findLongestMatchInnerZipperFast!29 call!180258 lt!984046 1 lt!984079 input!5495 lt!984072))))

(declare-fun b!2766054 () Bool)

(assert (=> b!2766054 (= e!1744030 (= (_1!18875 lt!984059) (findLongestMatchInnerZipperFast!29 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072)))))

(declare-fun b!2766055 () Bool)

(declare-fun Unit!46016 () Unit!46013)

(assert (=> b!2766055 (= e!1744020 Unit!46016)))

(declare-fun lt!984101 () Unit!46013)

(assert (=> b!2766055 (= lt!984101 call!180269)))

(assert (=> b!2766055 call!180251))

(declare-fun lt!984093 () Unit!46013)

(assert (=> b!2766055 (= lt!984093 call!180267)))

(assert (=> b!2766055 false))

(declare-fun b!2766056 () Bool)

(declare-fun Unit!46017 () Unit!46013)

(assert (=> b!2766056 (= e!1744034 Unit!46017)))

(declare-fun lt!984068 () Unit!46013)

(assert (=> b!2766056 (= lt!984068 call!180262)))

(assert (=> b!2766056 call!180261))

(declare-fun lt!984098 () Unit!46013)

(assert (=> b!2766056 (= lt!984098 call!180259)))

(assert (=> b!2766056 false))

(declare-fun b!2766057 () Bool)

(assert (=> b!2766057 (= e!1744008 (= (_1!18875 lt!984103) call!180265))))

(declare-fun tp!874229 () Bool)

(declare-fun setNonEmpty!22573 () Bool)

(declare-fun setElem!22573 () Context!4578)

(declare-fun inv!43381 (Context!4578) Bool)

(assert (=> setNonEmpty!22573 (= setRes!22573 (and tp!874229 (inv!43381 setElem!22573) e!1744039))))

(declare-fun setRest!22573 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22573 (= z!3597 ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22573 true) setRest!22573))))

(declare-fun bm!180257 () Bool)

(assert (=> bm!180257 (= call!180261 (isPrefix!2545 lt!984048 lt!984048))))

(declare-fun bm!180258 () Bool)

(declare-fun nullableZipper!625 ((InoxSet Context!4578)) Bool)

(assert (=> bm!180258 (= call!180257 (nullableZipper!625 z!3597))))

(assert (=> b!2766058 (= e!1744033 (and e!1744005 tp!874241))))

(declare-fun b!2766059 () Bool)

(declare-fun Unit!46018 () Unit!46013)

(assert (=> b!2766059 (= e!1744020 Unit!46018)))

(declare-fun bm!180259 () Bool)

(assert (=> bm!180259 (= call!180265 (findLongestMatchInnerZipperFast!29 (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116)) lt!984062 1 lt!984076 input!5495 lt!984072))))

(declare-fun b!2766060 () Bool)

(assert (=> b!2766060 (= e!1744022 (tuple3!4765 0 (_3!2850 lt!984054) (_2!18875 lt!984054)))))

(declare-fun b!2766061 () Bool)

(declare-fun e!1744025 () Unit!46013)

(declare-fun Unit!46019 () Unit!46013)

(assert (=> b!2766061 (= e!1744025 Unit!46019)))

(declare-fun lt!984094 () Unit!46013)

(assert (=> b!2766061 (= lt!984094 call!180266)))

(assert (=> b!2766061 call!180260))

(declare-fun lt!984095 () Unit!46013)

(assert (=> b!2766061 (= lt!984095 call!180268)))

(assert (=> b!2766061 false))

(declare-fun bm!180260 () Bool)

(assert (=> bm!180260 (= call!180255 (nullableZipper!625 z!3597))))

(declare-fun mapNonEmpty!17104 () Bool)

(declare-fun tp!874234 () Bool)

(declare-fun tp!874236 () Bool)

(assert (=> mapNonEmpty!17104 (= mapRes!17104 (and tp!874234 tp!874236))))

(declare-fun mapKey!17103 () (_ BitVec 32))

(declare-fun mapValue!17103 () List!32046)

(declare-fun mapRest!17103 () (Array (_ BitVec 32) List!32046))

(assert (=> mapNonEmpty!17104 (= (arr!5956 (_values!4032 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))) (store mapRest!17103 mapKey!17103 mapValue!17103))))

(declare-fun b!2766062 () Bool)

(declare-fun res!1157411 () Bool)

(assert (=> b!2766062 (= res!1157411 call!180263)))

(assert (=> b!2766062 (=> (not res!1157411) (not e!1744029))))

(declare-fun b!2766063 () Bool)

(declare-fun call!180249 () Bool)

(assert (=> b!2766063 (= c!448718 call!180249)))

(assert (=> b!2766063 (= (++!7907 lt!984062 lt!984076) lt!984048)))

(assert (=> b!2766063 (= lt!984062 (++!7907 Nil!31947 (Cons!31947 lt!984070 Nil!31947)))))

(declare-fun lt!984085 () Unit!46013)

(assert (=> b!2766063 (= lt!984085 (lemmaMoveElementToOtherListKeepsConcatEq!862 Nil!31947 lt!984070 lt!984076 lt!984048))))

(assert (=> b!2766063 (= lt!984076 (tail!4379 lt!984048))))

(assert (=> b!2766063 (= lt!984070 (apply!7486 input!5495 0))))

(assert (=> b!2766063 (isPrefix!2545 (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947)) lt!984048)))

(declare-fun lt!984047 () Unit!46013)

(assert (=> b!2766063 (= lt!984047 (lemmaAddHeadSuffixToPrefixStillPrefix!450 Nil!31947 lt!984048))))

(declare-fun lt!984081 () Unit!46013)

(assert (=> b!2766063 (= lt!984081 e!1744025)))

(declare-fun c!448710 () Bool)

(declare-fun lt!984092 () Int)

(assert (=> b!2766063 (= c!448710 (= lt!984092 lt!984072))))

(assert (=> b!2766063 (<= lt!984092 (size!24719 lt!984048))))

(assert (=> b!2766063 (= lt!984092 (size!24719 Nil!31947))))

(declare-fun lt!984057 () Unit!46013)

(assert (=> b!2766063 (= lt!984057 (lemmaIsPrefixThenSmallerEqSize!253 Nil!31947 lt!984048))))

(assert (=> b!2766063 (= (head!6141 (drop!1699 lt!984048 0)) (apply!7487 lt!984048 0))))

(declare-fun lt!984075 () Unit!46013)

(assert (=> b!2766063 (= lt!984075 (lemmaDropApply!905 lt!984048 0))))

(declare-fun lt!984050 () List!32047)

(declare-fun lt!984112 () List!32047)

(assert (=> b!2766063 (and (= lt!984050 Nil!31947) (= lt!984112 lt!984048))))

(declare-fun lt!984082 () Unit!46013)

(assert (=> b!2766063 (= lt!984082 (lemmaConcatSameAndSameSizesThenSameLists!331 lt!984050 lt!984112 Nil!31947 lt!984048))))

(declare-fun lt!984049 () tuple2!32052)

(assert (=> b!2766063 (= lt!984112 (list!12062 (_2!18879 lt!984049)))))

(assert (=> b!2766063 (= lt!984050 (list!12062 (_1!18879 lt!984049)))))

(assert (=> b!2766063 (= lt!984049 (splitAt!105 input!5495 0))))

(declare-fun e!1744009 () tuple3!4764)

(assert (=> b!2766063 (= e!1744009 e!1744004)))

(declare-fun b!2766064 () Bool)

(declare-fun res!1157410 () Bool)

(assert (=> b!2766064 (=> res!1157410 e!1744013)))

(assert (=> b!2766064 (= res!1157410 (not (= 0 (size!24719 Nil!31947))))))

(declare-fun b!2766065 () Bool)

(declare-fun c!448711 () Bool)

(assert (=> b!2766065 (= c!448711 call!180257)))

(assert (=> b!2766065 (= (++!7907 lt!984088 lt!984091) lt!984048)))

(declare-fun lt!984055 () C!16300)

(declare-fun lt!984084 () Unit!46013)

(assert (=> b!2766065 (= lt!984084 (lemmaMoveElementToOtherListKeepsConcatEq!862 Nil!31947 lt!984055 lt!984091 lt!984048))))

(assert (=> b!2766065 (= lt!984091 (tail!4379 lt!984048))))

(assert (=> b!2766065 (isPrefix!2545 (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947)) lt!984048)))

(declare-fun lt!984102 () Unit!46013)

(assert (=> b!2766065 (= lt!984102 (lemmaAddHeadSuffixToPrefixStillPrefix!450 Nil!31947 lt!984048))))

(assert (=> b!2766065 (= lt!984088 (++!7907 Nil!31947 (Cons!31947 lt!984055 Nil!31947)))))

(assert (=> b!2766065 (= lt!984055 (head!6141 lt!984048))))

(declare-fun lt!984056 () Unit!46013)

(assert (=> b!2766065 (= lt!984056 e!1744034)))

(declare-fun c!448715 () Bool)

(declare-fun lt!984099 () Int)

(declare-fun lt!984115 () Int)

(assert (=> b!2766065 (= c!448715 (= lt!984099 lt!984115))))

(assert (=> b!2766065 (<= lt!984099 lt!984115)))

(assert (=> b!2766065 (= lt!984115 (size!24719 lt!984048))))

(assert (=> b!2766065 (= lt!984099 (size!24719 Nil!31947))))

(declare-fun lt!984097 () Unit!46013)

(assert (=> b!2766065 (= lt!984097 (lemmaIsPrefixThenSmallerEqSize!253 Nil!31947 lt!984048))))

(assert (=> b!2766065 (= e!1744017 e!1744036)))

(declare-fun bm!180261 () Bool)

(assert (=> bm!180261 (= call!180269 (lemmaIsPrefixRefl!1671 lt!984048 lt!984048))))

(declare-fun b!2766066 () Bool)

(declare-fun e!1744019 () Bool)

(declare-fun tp!874242 () Bool)

(assert (=> b!2766066 (= e!1744019 (and tp!874242 mapRes!17103))))

(declare-fun condMapEmpty!17104 () Bool)

(declare-fun mapDefault!17104 () List!32045)

(assert (=> b!2766066 (= condMapEmpty!17104 (= (arr!5954 (_values!4031 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32045)) mapDefault!17104)))))

(declare-fun b!2766067 () Bool)

(declare-fun lt!984073 () Bool)

(assert (=> b!2766067 (= lt!984073 call!180249)))

(assert (=> b!2766067 (= lt!984048 Nil!31947)))

(declare-fun lt!984117 () Unit!46013)

(assert (=> b!2766067 (= lt!984117 call!180268)))

(assert (=> b!2766067 call!180260))

(declare-fun lt!984109 () Unit!46013)

(assert (=> b!2766067 (= lt!984109 call!180266)))

(assert (=> b!2766067 (= e!1744009 (tuple3!4765 0 (_3!2850 lt!984054) (_2!18875 lt!984054)))))

(declare-fun b!2766068 () Bool)

(declare-fun Unit!46020 () Unit!46013)

(assert (=> b!2766068 (= e!1744025 Unit!46020)))

(declare-fun bm!180262 () Bool)

(declare-fun derivationStepZipper!360 ((InoxSet Context!4578) C!16300) (InoxSet Context!4578))

(assert (=> bm!180262 (= call!180258 (derivationStepZipper!360 z!3597 lt!984052))))

(declare-fun b!2766069 () Bool)

(assert (=> b!2766069 (= e!1744022 e!1744009)))

(declare-fun c!448723 () Bool)

(assert (=> b!2766069 (= c!448723 (= 0 lt!984072))))

(declare-fun bm!180263 () Bool)

(assert (=> bm!180263 (= call!180249 (nullableZipper!625 z!3597))))

(declare-fun b!2766070 () Bool)

(assert (=> b!2766070 (= e!1744010 (= lt!984080 (tuple2!32051 Nil!31947 lt!984048)))))

(declare-fun tp!874243 () Bool)

(declare-fun tp!874240 () Bool)

(declare-fun array_inv!4258 (array!13353) Bool)

(declare-fun array_inv!4259 (array!13355) Bool)

(assert (=> b!2766071 (= e!1744003 (and tp!874237 tp!874240 tp!874243 (array_inv!4258 (_keys!4051 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))) (array_inv!4259 (_values!4032 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))) e!1744031))))

(declare-fun bm!180264 () Bool)

(assert (=> bm!180264 (= call!180256 (derivationStepZipper!360 z!3597 lt!984055))))

(declare-fun e!1744024 () Bool)

(declare-fun tp!874232 () Bool)

(declare-fun tp!874244 () Bool)

(declare-fun array_inv!4260 (array!13351) Bool)

(assert (=> b!2766072 (= e!1744024 (and tp!874238 tp!874232 tp!874244 (array_inv!4258 (_keys!4050 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))) (array_inv!4260 (_values!4031 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))) e!1744019))))

(declare-fun setIsEmpty!22573 () Bool)

(assert (=> setIsEmpty!22573 setRes!22573))

(declare-fun mapIsEmpty!17104 () Bool)

(assert (=> mapIsEmpty!17104 mapRes!17103))

(declare-fun b!2766073 () Bool)

(assert (=> b!2766073 (= e!1744011 (tuple2!32051 Nil!31947 Nil!31947))))

(declare-fun b!2766074 () Bool)

(assert (=> b!2766074 (= e!1744028 e!1744024)))

(declare-fun b!2766075 () Bool)

(declare-fun res!1157413 () Bool)

(assert (=> b!2766075 (=> (not res!1157413) (not e!1744038))))

(assert (=> b!2766075 (= res!1157413 (valid!2923 (_3!2850 lt!984054)))))

(declare-fun b!2766076 () Bool)

(declare-fun lt!984104 () MutLongMap!3750)

(assert (=> b!2766076 (= e!1744027 (and e!1744014 ((_ is LongMap!3750) lt!984104)))))

(assert (=> b!2766076 (= lt!984104 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))

(declare-fun b!2766077 () Bool)

(assert (=> b!2766077 (= e!1744018 lt!984067)))

(assert (= (and start!267798 res!1157415) b!2766036))

(assert (= (and b!2766036 res!1157412) b!2766035))

(assert (= (and b!2766035 res!1157418) b!2766075))

(assert (= (and b!2766075 res!1157413) b!2766038))

(assert (= (and b!2766035 res!1157408) b!2766028))

(assert (= (and b!2766028 res!1157416) b!2766054))

(assert (= (and b!2766035 c!448713) b!2766060))

(assert (= (and b!2766035 (not c!448713)) b!2766069))

(assert (= (and b!2766069 c!448723) b!2766067))

(assert (= (and b!2766069 (not c!448723)) b!2766063))

(assert (= (and b!2766063 c!448710) b!2766061))

(assert (= (and b!2766063 (not c!448710)) b!2766068))

(assert (= (and b!2766063 c!448718) b!2766032))

(assert (= (and b!2766063 (not c!448718)) b!2766047))

(assert (= (and b!2766032 res!1157417) b!2766025))

(assert (= (and b!2766025 res!1157407) b!2766057))

(assert (= (and b!2766047 res!1157409) b!2766062))

(assert (= (and b!2766062 res!1157411) b!2766022))

(assert (= (or b!2766057 b!2766022) bm!180259))

(assert (= (or b!2766032 b!2766047) bm!180246))

(assert (= (or b!2766032 b!2766047) bm!180244))

(assert (= (or b!2766032 b!2766047) bm!180255))

(assert (= (or b!2766025 b!2766062) bm!180245))

(assert (= (or b!2766067 b!2766063) bm!180263))

(assert (= (or b!2766067 b!2766061) bm!180249))

(assert (= (or b!2766067 b!2766061) bm!180247))

(assert (= (or b!2766067 b!2766061) bm!180248))

(assert (= (and b!2766035 c!448716) b!2766039))

(assert (= (and b!2766035 (not c!448716)) b!2766023))

(assert (= (and b!2766023 c!448717) b!2766029))

(assert (= (and b!2766023 (not c!448717)) b!2766043))

(assert (= (and b!2766043 c!448722) b!2766055))

(assert (= (and b!2766043 (not c!448722)) b!2766059))

(assert (= (and b!2766043 c!448712) b!2766040))

(assert (= (and b!2766043 (not c!448712)) b!2766052))

(assert (= (or b!2766040 b!2766052) bm!180262))

(assert (= (or b!2766040 b!2766052) bm!180256))

(assert (= (or b!2766029 b!2766043) bm!180260))

(assert (= (or b!2766029 b!2766055) bm!180261))

(assert (= (or b!2766029 b!2766055) bm!180252))

(assert (= (or b!2766029 b!2766055) bm!180250))

(assert (= (and b!2766035 c!448719) b!2766070))

(assert (= (and b!2766035 (not c!448719)) b!2766037))

(assert (= (and b!2766037 c!448721) b!2766053))

(assert (= (and b!2766037 (not c!448721)) b!2766065))

(assert (= (and b!2766053 c!448720) b!2766073))

(assert (= (and b!2766053 (not c!448720)) b!2766026))

(assert (= (and b!2766065 c!448715) b!2766056))

(assert (= (and b!2766065 (not c!448715)) b!2766045))

(assert (= (and b!2766065 c!448711) b!2766034))

(assert (= (and b!2766065 (not c!448711)) b!2766048))

(assert (= (and b!2766034 c!448714) b!2766042))

(assert (= (and b!2766034 (not c!448714)) b!2766077))

(assert (= (or b!2766034 b!2766048) bm!180264))

(assert (= (or b!2766034 b!2766048) bm!180251))

(assert (= (or b!2766053 b!2766065) bm!180258))

(assert (= (or b!2766053 b!2766056) bm!180254))

(assert (= (or b!2766053 b!2766056) bm!180253))

(assert (= (or b!2766053 b!2766056) bm!180257))

(assert (= (and b!2766035 (not res!1157414)) b!2766064))

(assert (= (and b!2766064 (not res!1157410)) b!2766050))

(assert (= (and b!2766066 condMapEmpty!17104) mapIsEmpty!17104))

(assert (= (and b!2766066 (not condMapEmpty!17104)) mapNonEmpty!17103))

(assert (= b!2766072 b!2766066))

(assert (= b!2766074 b!2766072))

(assert (= b!2766046 b!2766074))

(assert (= (and b!2766076 ((_ is LongMap!3750) (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))) b!2766046))

(assert (= b!2766024 b!2766076))

(assert (= (and b!2766044 ((_ is HashMap!3656) (cache!3799 cacheUp!820))) b!2766024))

(assert (= start!267798 b!2766044))

(assert (= (and b!2766049 condMapEmpty!17103) mapIsEmpty!17103))

(assert (= (and b!2766049 (not condMapEmpty!17103)) mapNonEmpty!17104))

(assert (= b!2766071 b!2766049))

(assert (= b!2766033 b!2766071))

(assert (= b!2766027 b!2766033))

(assert (= (and b!2766051 ((_ is LongMap!3751) (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))) b!2766027))

(assert (= b!2766058 b!2766051))

(assert (= (and b!2766030 ((_ is HashMap!3657) (cache!3800 cacheDown!939))) b!2766058))

(assert (= start!267798 b!2766030))

(assert (= (and start!267798 condSetEmpty!22573) setIsEmpty!22573))

(assert (= (and start!267798 (not condSetEmpty!22573)) setNonEmpty!22573))

(assert (= setNonEmpty!22573 b!2766031))

(assert (= start!267798 b!2766041))

(declare-fun m!3189061 () Bool)

(assert (=> bm!180262 m!3189061))

(declare-fun m!3189063 () Bool)

(assert (=> bm!180254 m!3189063))

(declare-fun m!3189065 () Bool)

(assert (=> bm!180255 m!3189065))

(declare-fun m!3189067 () Bool)

(assert (=> b!2766035 m!3189067))

(declare-fun m!3189069 () Bool)

(assert (=> b!2766035 m!3189069))

(declare-fun m!3189071 () Bool)

(assert (=> b!2766035 m!3189071))

(declare-fun m!3189073 () Bool)

(assert (=> b!2766035 m!3189073))

(declare-fun m!3189075 () Bool)

(assert (=> b!2766035 m!3189075))

(declare-fun m!3189077 () Bool)

(assert (=> b!2766035 m!3189077))

(declare-fun m!3189079 () Bool)

(assert (=> b!2766035 m!3189079))

(declare-fun m!3189081 () Bool)

(assert (=> b!2766035 m!3189081))

(declare-fun m!3189083 () Bool)

(assert (=> b!2766035 m!3189083))

(declare-fun m!3189085 () Bool)

(assert (=> b!2766035 m!3189085))

(declare-fun m!3189087 () Bool)

(assert (=> b!2766035 m!3189087))

(declare-fun m!3189089 () Bool)

(assert (=> b!2766035 m!3189089))

(declare-fun m!3189091 () Bool)

(assert (=> b!2766035 m!3189091))

(declare-fun m!3189093 () Bool)

(assert (=> b!2766035 m!3189093))

(declare-fun m!3189095 () Bool)

(assert (=> b!2766035 m!3189095))

(declare-fun m!3189097 () Bool)

(assert (=> b!2766035 m!3189097))

(declare-fun m!3189099 () Bool)

(assert (=> b!2766035 m!3189099))

(declare-fun m!3189101 () Bool)

(assert (=> bm!180259 m!3189101))

(declare-fun m!3189103 () Bool)

(assert (=> b!2766043 m!3189103))

(declare-fun m!3189105 () Bool)

(assert (=> b!2766043 m!3189105))

(declare-fun m!3189107 () Bool)

(assert (=> b!2766043 m!3189107))

(declare-fun m!3189109 () Bool)

(assert (=> b!2766043 m!3189109))

(declare-fun m!3189111 () Bool)

(assert (=> b!2766043 m!3189111))

(declare-fun m!3189113 () Bool)

(assert (=> b!2766043 m!3189113))

(declare-fun m!3189115 () Bool)

(assert (=> b!2766043 m!3189115))

(assert (=> b!2766043 m!3189113))

(declare-fun m!3189117 () Bool)

(assert (=> b!2766043 m!3189117))

(declare-fun m!3189119 () Bool)

(assert (=> b!2766043 m!3189119))

(declare-fun m!3189121 () Bool)

(assert (=> b!2766043 m!3189121))

(declare-fun m!3189123 () Bool)

(assert (=> b!2766043 m!3189123))

(declare-fun m!3189125 () Bool)

(assert (=> b!2766043 m!3189125))

(declare-fun m!3189127 () Bool)

(assert (=> b!2766043 m!3189127))

(declare-fun m!3189129 () Bool)

(assert (=> b!2766043 m!3189129))

(declare-fun m!3189131 () Bool)

(assert (=> b!2766043 m!3189131))

(assert (=> b!2766043 m!3189107))

(declare-fun m!3189133 () Bool)

(assert (=> b!2766043 m!3189133))

(declare-fun m!3189135 () Bool)

(assert (=> b!2766043 m!3189135))

(declare-fun m!3189137 () Bool)

(assert (=> b!2766043 m!3189137))

(declare-fun m!3189139 () Bool)

(assert (=> b!2766043 m!3189139))

(declare-fun m!3189141 () Bool)

(assert (=> b!2766043 m!3189141))

(declare-fun m!3189143 () Bool)

(assert (=> bm!180245 m!3189143))

(declare-fun m!3189145 () Bool)

(assert (=> b!2766075 m!3189145))

(assert (=> bm!180261 m!3189063))

(declare-fun m!3189147 () Bool)

(assert (=> bm!180257 m!3189147))

(declare-fun m!3189149 () Bool)

(assert (=> bm!180252 m!3189149))

(declare-fun m!3189151 () Bool)

(assert (=> bm!180244 m!3189151))

(assert (=> bm!180247 m!3189149))

(declare-fun m!3189153 () Bool)

(assert (=> mapNonEmpty!17104 m!3189153))

(declare-fun m!3189155 () Bool)

(assert (=> start!267798 m!3189155))

(declare-fun m!3189157 () Bool)

(assert (=> start!267798 m!3189157))

(declare-fun m!3189159 () Bool)

(assert (=> start!267798 m!3189159))

(declare-fun m!3189161 () Bool)

(assert (=> start!267798 m!3189161))

(declare-fun m!3189163 () Bool)

(assert (=> bm!180260 m!3189163))

(assert (=> bm!180248 m!3189147))

(declare-fun m!3189165 () Bool)

(assert (=> b!2766034 m!3189165))

(declare-fun m!3189167 () Bool)

(assert (=> bm!180256 m!3189167))

(declare-fun m!3189169 () Bool)

(assert (=> bm!180264 m!3189169))

(assert (=> bm!180258 m!3189163))

(declare-fun m!3189171 () Bool)

(assert (=> bm!180251 m!3189171))

(declare-fun m!3189173 () Bool)

(assert (=> mapNonEmpty!17103 m!3189173))

(assert (=> b!2766064 m!3189137))

(declare-fun m!3189175 () Bool)

(assert (=> b!2766028 m!3189175))

(declare-fun m!3189177 () Bool)

(assert (=> b!2766072 m!3189177))

(declare-fun m!3189179 () Bool)

(assert (=> b!2766072 m!3189179))

(assert (=> b!2766065 m!3189103))

(assert (=> b!2766065 m!3189107))

(assert (=> b!2766065 m!3189109))

(declare-fun m!3189181 () Bool)

(assert (=> b!2766065 m!3189181))

(declare-fun m!3189183 () Bool)

(assert (=> b!2766065 m!3189183))

(assert (=> b!2766065 m!3189119))

(declare-fun m!3189185 () Bool)

(assert (=> b!2766065 m!3189185))

(assert (=> b!2766065 m!3189125))

(declare-fun m!3189187 () Bool)

(assert (=> b!2766065 m!3189187))

(assert (=> b!2766065 m!3189131))

(assert (=> b!2766065 m!3189107))

(assert (=> b!2766065 m!3189137))

(assert (=> b!2766065 m!3189139))

(declare-fun m!3189189 () Bool)

(assert (=> b!2766041 m!3189189))

(assert (=> b!2766038 m!3189087))

(declare-fun m!3189191 () Bool)

(assert (=> bm!180246 m!3189191))

(assert (=> bm!180263 m!3189163))

(declare-fun m!3189193 () Bool)

(assert (=> setNonEmpty!22573 m!3189193))

(declare-fun m!3189195 () Bool)

(assert (=> b!2766071 m!3189195))

(declare-fun m!3189197 () Bool)

(assert (=> b!2766071 m!3189197))

(assert (=> b!2766063 m!3189107))

(assert (=> b!2766063 m!3189109))

(assert (=> b!2766063 m!3189111))

(declare-fun m!3189199 () Bool)

(assert (=> b!2766063 m!3189199))

(assert (=> b!2766063 m!3189119))

(assert (=> b!2766063 m!3189133))

(assert (=> b!2766063 m!3189121))

(assert (=> b!2766063 m!3189125))

(assert (=> b!2766063 m!3189127))

(declare-fun m!3189201 () Bool)

(assert (=> b!2766063 m!3189201))

(declare-fun m!3189203 () Bool)

(assert (=> b!2766063 m!3189203))

(assert (=> b!2766063 m!3189103))

(declare-fun m!3189205 () Bool)

(assert (=> b!2766063 m!3189205))

(assert (=> b!2766063 m!3189113))

(assert (=> b!2766063 m!3189115))

(declare-fun m!3189207 () Bool)

(assert (=> b!2766063 m!3189207))

(declare-fun m!3189209 () Bool)

(assert (=> b!2766063 m!3189209))

(assert (=> b!2766063 m!3189113))

(assert (=> b!2766063 m!3189131))

(assert (=> b!2766063 m!3189107))

(assert (=> b!2766063 m!3189137))

(assert (=> b!2766063 m!3189139))

(assert (=> bm!180249 m!3189063))

(declare-fun m!3189211 () Bool)

(assert (=> b!2766036 m!3189211))

(assert (=> bm!180250 m!3189147))

(assert (=> b!2766054 m!3189087))

(assert (=> bm!180253 m!3189149))

(assert (=> b!2766050 m!3189119))

(check-sat (not bm!180247) (not b!2766043) (not b!2766054) (not b!2766035) (not b!2766031) (not bm!180253) (not bm!180263) (not bm!180262) (not b!2766071) (not b!2766034) (not b!2766036) b_and!202839 b_and!202845 (not bm!180259) (not bm!180264) (not bm!180258) (not b_next!78807) (not b!2766072) (not b!2766063) (not b_next!78805) (not setNonEmpty!22573) (not b!2766049) (not b!2766041) (not bm!180244) (not bm!180251) (not b!2766075) (not b!2766064) (not bm!180255) (not b!2766065) b_and!202843 (not bm!180245) (not start!267798) (not mapNonEmpty!17103) (not bm!180260) (not bm!180257) (not b!2766028) (not b_next!78809) (not b_next!78811) (not bm!180254) (not bm!180261) (not bm!180248) (not bm!180252) (not bm!180250) (not mapNonEmpty!17104) (not b!2766066) (not bm!180249) (not bm!180256) (not b!2766050) b_and!202841 (not b!2766038) (not bm!180246))
(check-sat b_and!202839 b_and!202845 (not b_next!78807) (not b_next!78805) b_and!202843 b_and!202841 (not b_next!78809) (not b_next!78811))
(get-model)

(declare-fun b!2766086 () Bool)

(declare-fun e!1744047 () Bool)

(declare-fun e!1744049 () Bool)

(assert (=> b!2766086 (= e!1744047 e!1744049)))

(declare-fun res!1157428 () Bool)

(assert (=> b!2766086 (=> (not res!1157428) (not e!1744049))))

(assert (=> b!2766086 (= res!1157428 (not ((_ is Nil!31947) lt!984048)))))

(declare-fun b!2766087 () Bool)

(declare-fun res!1157430 () Bool)

(assert (=> b!2766087 (=> (not res!1157430) (not e!1744049))))

(assert (=> b!2766087 (= res!1157430 (= (head!6141 lt!984048) (head!6141 lt!984048)))))

(declare-fun b!2766088 () Bool)

(assert (=> b!2766088 (= e!1744049 (isPrefix!2545 (tail!4379 lt!984048) (tail!4379 lt!984048)))))

(declare-fun d!803106 () Bool)

(declare-fun e!1744048 () Bool)

(assert (=> d!803106 e!1744048))

(declare-fun res!1157429 () Bool)

(assert (=> d!803106 (=> res!1157429 e!1744048)))

(declare-fun lt!984120 () Bool)

(assert (=> d!803106 (= res!1157429 (not lt!984120))))

(assert (=> d!803106 (= lt!984120 e!1744047)))

(declare-fun res!1157427 () Bool)

(assert (=> d!803106 (=> res!1157427 e!1744047)))

(assert (=> d!803106 (= res!1157427 ((_ is Nil!31947) lt!984048))))

(assert (=> d!803106 (= (isPrefix!2545 lt!984048 lt!984048) lt!984120)))

(declare-fun b!2766089 () Bool)

(assert (=> b!2766089 (= e!1744048 (>= (size!24719 lt!984048) (size!24719 lt!984048)))))

(assert (= (and d!803106 (not res!1157427)) b!2766086))

(assert (= (and b!2766086 res!1157428) b!2766087))

(assert (= (and b!2766087 res!1157430) b!2766088))

(assert (= (and d!803106 (not res!1157429)) b!2766089))

(assert (=> b!2766087 m!3189183))

(assert (=> b!2766087 m!3189183))

(assert (=> b!2766088 m!3189131))

(assert (=> b!2766088 m!3189131))

(assert (=> b!2766088 m!3189131))

(assert (=> b!2766088 m!3189131))

(declare-fun m!3189213 () Bool)

(assert (=> b!2766088 m!3189213))

(assert (=> b!2766089 m!3189119))

(assert (=> b!2766089 m!3189119))

(assert (=> bm!180250 d!803106))

(declare-fun d!803108 () Bool)

(assert (=> d!803108 (= (isEmpty!18086 (_1!18876 lt!984067)) ((_ is Nil!31947) (_1!18876 lt!984067)))))

(assert (=> b!2766034 d!803108))

(declare-fun d!803110 () Bool)

(assert (=> d!803110 (= (array_inv!4258 (_keys!4050 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))) (bvsge (size!24716 (_keys!4050 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2766072 d!803110))

(declare-fun d!803112 () Bool)

(assert (=> d!803112 (= (array_inv!4260 (_values!4031 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))) (bvsge (size!24715 (_values!4031 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2766072 d!803112))

(declare-fun bm!180281 () Bool)

(declare-fun call!180288 () Unit!46013)

(assert (=> bm!180281 (= call!180288 (lemmaIsPrefixRefl!1671 lt!984048 lt!984048))))

(declare-fun b!2766118 () Bool)

(declare-fun e!1744071 () tuple2!32050)

(assert (=> b!2766118 (= e!1744071 (tuple2!32051 Nil!31947 lt!984048))))

(declare-fun b!2766119 () Bool)

(declare-fun e!1744070 () tuple2!32050)

(declare-fun e!1744073 () tuple2!32050)

(assert (=> b!2766119 (= e!1744070 e!1744073)))

(declare-fun lt!984186 () tuple2!32050)

(declare-fun call!180289 () tuple2!32050)

(assert (=> b!2766119 (= lt!984186 call!180289)))

(declare-fun c!448742 () Bool)

(assert (=> b!2766119 (= c!448742 (isEmpty!18086 (_1!18876 lt!984186)))))

(declare-fun b!2766120 () Bool)

(assert (=> b!2766120 (= e!1744073 (tuple2!32051 lt!984088 lt!984091))))

(declare-fun b!2766121 () Bool)

(declare-fun c!448743 () Bool)

(declare-fun call!180290 () Bool)

(assert (=> b!2766121 (= c!448743 call!180290)))

(declare-fun lt!984185 () Unit!46013)

(declare-fun lt!984173 () Unit!46013)

(assert (=> b!2766121 (= lt!984185 lt!984173)))

(declare-fun lt!984192 () List!32047)

(declare-fun lt!984177 () C!16300)

(assert (=> b!2766121 (= (++!7907 (++!7907 lt!984088 (Cons!31947 lt!984177 Nil!31947)) lt!984192) lt!984048)))

(assert (=> b!2766121 (= lt!984173 (lemmaMoveElementToOtherListKeepsConcatEq!862 lt!984088 lt!984177 lt!984192 lt!984048))))

(assert (=> b!2766121 (= lt!984192 (tail!4379 lt!984091))))

(assert (=> b!2766121 (= lt!984177 (head!6141 lt!984091))))

(declare-fun lt!984175 () Unit!46013)

(declare-fun lt!984196 () Unit!46013)

(assert (=> b!2766121 (= lt!984175 lt!984196)))

(assert (=> b!2766121 (isPrefix!2545 (++!7907 lt!984088 (Cons!31947 (head!6141 (getSuffix!1228 lt!984048 lt!984088)) Nil!31947)) lt!984048)))

(assert (=> b!2766121 (= lt!984196 (lemmaAddHeadSuffixToPrefixStillPrefix!450 lt!984088 lt!984048))))

(declare-fun lt!984190 () List!32047)

(assert (=> b!2766121 (= lt!984190 (++!7907 lt!984088 (Cons!31947 (head!6141 lt!984091) Nil!31947)))))

(declare-fun lt!984197 () Unit!46013)

(declare-fun e!1744067 () Unit!46013)

(assert (=> b!2766121 (= lt!984197 e!1744067)))

(declare-fun c!448738 () Bool)

(assert (=> b!2766121 (= c!448738 (= (size!24719 lt!984088) (size!24719 lt!984048)))))

(declare-fun lt!984194 () Unit!46013)

(declare-fun lt!984198 () Unit!46013)

(assert (=> b!2766121 (= lt!984194 lt!984198)))

(assert (=> b!2766121 (<= (size!24719 lt!984088) (size!24719 lt!984048))))

(assert (=> b!2766121 (= lt!984198 (lemmaIsPrefixThenSmallerEqSize!253 lt!984088 lt!984048))))

(declare-fun e!1744072 () tuple2!32050)

(assert (=> b!2766121 (= e!1744072 e!1744070)))

(declare-fun bm!180282 () Bool)

(assert (=> bm!180282 (= call!180290 (nullableZipper!625 call!180256))))

(declare-fun bm!180283 () Bool)

(declare-fun call!180286 () List!32047)

(assert (=> bm!180283 (= call!180286 (tail!4379 lt!984091))))

(declare-fun bm!180284 () Bool)

(declare-fun call!180291 () Unit!46013)

(assert (=> bm!180284 (= call!180291 (lemmaIsPrefixSameLengthThenSameList!453 lt!984048 lt!984088 lt!984048))))

(declare-fun bm!180285 () Bool)

(declare-fun call!180292 () Bool)

(assert (=> bm!180285 (= call!180292 (isPrefix!2545 lt!984048 lt!984048))))

(declare-fun d!803114 () Bool)

(declare-fun e!1744069 () Bool)

(assert (=> d!803114 e!1744069))

(declare-fun res!1157436 () Bool)

(assert (=> d!803114 (=> (not res!1157436) (not e!1744069))))

(declare-fun lt!984188 () tuple2!32050)

(assert (=> d!803114 (= res!1157436 (= (++!7907 (_1!18876 lt!984188) (_2!18876 lt!984188)) lt!984048))))

(declare-fun e!1744068 () tuple2!32050)

(assert (=> d!803114 (= lt!984188 e!1744068)))

(declare-fun c!448740 () Bool)

(assert (=> d!803114 (= c!448740 (lostCauseZipper!432 call!180256))))

(declare-fun lt!984184 () Unit!46013)

(declare-fun Unit!46021 () Unit!46013)

(assert (=> d!803114 (= lt!984184 Unit!46021)))

(assert (=> d!803114 (= (getSuffix!1228 lt!984048 lt!984088) lt!984091)))

(declare-fun lt!984191 () Unit!46013)

(declare-fun lt!984178 () Unit!46013)

(assert (=> d!803114 (= lt!984191 lt!984178)))

(declare-fun lt!984187 () List!32047)

(assert (=> d!803114 (= lt!984091 lt!984187)))

(assert (=> d!803114 (= lt!984178 (lemmaSamePrefixThenSameSuffix!1130 lt!984088 lt!984091 lt!984088 lt!984187 lt!984048))))

(assert (=> d!803114 (= lt!984187 (getSuffix!1228 lt!984048 lt!984088))))

(declare-fun lt!984183 () Unit!46013)

(declare-fun lt!984195 () Unit!46013)

(assert (=> d!803114 (= lt!984183 lt!984195)))

(assert (=> d!803114 (isPrefix!2545 lt!984088 (++!7907 lt!984088 lt!984091))))

(assert (=> d!803114 (= lt!984195 (lemmaConcatTwoListThenFirstIsPrefix!1656 lt!984088 lt!984091))))

(assert (=> d!803114 (= (++!7907 lt!984088 lt!984091) lt!984048)))

(assert (=> d!803114 (= (findLongestMatchInnerZipper!15 call!180256 lt!984088 1 lt!984091 lt!984048 lt!984072) lt!984188)))

(declare-fun b!2766122 () Bool)

(declare-fun Unit!46022 () Unit!46013)

(assert (=> b!2766122 (= e!1744067 Unit!46022)))

(declare-fun lt!984181 () Unit!46013)

(assert (=> b!2766122 (= lt!984181 call!180288)))

(assert (=> b!2766122 call!180292))

(declare-fun lt!984180 () Unit!46013)

(assert (=> b!2766122 (= lt!984180 lt!984181)))

(declare-fun lt!984176 () Unit!46013)

(assert (=> b!2766122 (= lt!984176 call!180291)))

(assert (=> b!2766122 (= lt!984048 lt!984088)))

(declare-fun lt!984182 () Unit!46013)

(assert (=> b!2766122 (= lt!984182 lt!984176)))

(assert (=> b!2766122 false))

(declare-fun b!2766123 () Bool)

(assert (=> b!2766123 (= e!1744070 call!180289)))

(declare-fun b!2766124 () Bool)

(assert (=> b!2766124 (= e!1744068 (tuple2!32051 Nil!31947 lt!984048))))

(declare-fun b!2766125 () Bool)

(assert (=> b!2766125 (= e!1744073 lt!984186)))

(declare-fun b!2766126 () Bool)

(declare-fun c!448739 () Bool)

(assert (=> b!2766126 (= c!448739 call!180290)))

(declare-fun lt!984189 () Unit!46013)

(declare-fun lt!984174 () Unit!46013)

(assert (=> b!2766126 (= lt!984189 lt!984174)))

(assert (=> b!2766126 (= lt!984048 lt!984088)))

(assert (=> b!2766126 (= lt!984174 call!180291)))

(declare-fun lt!984179 () Unit!46013)

(declare-fun lt!984193 () Unit!46013)

(assert (=> b!2766126 (= lt!984179 lt!984193)))

(assert (=> b!2766126 call!180292))

(assert (=> b!2766126 (= lt!984193 call!180288)))

(assert (=> b!2766126 (= e!1744072 e!1744071)))

(declare-fun b!2766127 () Bool)

(declare-fun Unit!46023 () Unit!46013)

(assert (=> b!2766127 (= e!1744067 Unit!46023)))

(declare-fun call!180287 () (InoxSet Context!4578))

(declare-fun bm!180286 () Bool)

(assert (=> bm!180286 (= call!180289 (findLongestMatchInnerZipper!15 call!180287 lt!984190 (+ 1 1) call!180286 lt!984048 lt!984072))))

(declare-fun b!2766128 () Bool)

(assert (=> b!2766128 (= e!1744071 (tuple2!32051 lt!984088 Nil!31947))))

(declare-fun bm!180287 () Bool)

(declare-fun call!180293 () C!16300)

(assert (=> bm!180287 (= call!180293 (head!6141 lt!984091))))

(declare-fun bm!180288 () Bool)

(assert (=> bm!180288 (= call!180287 (derivationStepZipper!360 call!180256 call!180293))))

(declare-fun b!2766129 () Bool)

(declare-fun e!1744066 () Bool)

(assert (=> b!2766129 (= e!1744066 (>= (size!24719 (_1!18876 lt!984188)) (size!24719 lt!984088)))))

(declare-fun b!2766130 () Bool)

(assert (=> b!2766130 (= e!1744068 e!1744072)))

(declare-fun c!448741 () Bool)

(assert (=> b!2766130 (= c!448741 (= 1 lt!984072))))

(declare-fun b!2766131 () Bool)

(assert (=> b!2766131 (= e!1744069 e!1744066)))

(declare-fun res!1157435 () Bool)

(assert (=> b!2766131 (=> res!1157435 e!1744066)))

(assert (=> b!2766131 (= res!1157435 (isEmpty!18086 (_1!18876 lt!984188)))))

(assert (= (and d!803114 c!448740) b!2766124))

(assert (= (and d!803114 (not c!448740)) b!2766130))

(assert (= (and b!2766130 c!448741) b!2766126))

(assert (= (and b!2766130 (not c!448741)) b!2766121))

(assert (= (and b!2766126 c!448739) b!2766128))

(assert (= (and b!2766126 (not c!448739)) b!2766118))

(assert (= (and b!2766121 c!448738) b!2766122))

(assert (= (and b!2766121 (not c!448738)) b!2766127))

(assert (= (and b!2766121 c!448743) b!2766119))

(assert (= (and b!2766121 (not c!448743)) b!2766123))

(assert (= (and b!2766119 c!448742) b!2766120))

(assert (= (and b!2766119 (not c!448742)) b!2766125))

(assert (= (or b!2766119 b!2766123) bm!180283))

(assert (= (or b!2766119 b!2766123) bm!180287))

(assert (= (or b!2766119 b!2766123) bm!180288))

(assert (= (or b!2766119 b!2766123) bm!180286))

(assert (= (or b!2766126 b!2766121) bm!180282))

(assert (= (or b!2766126 b!2766122) bm!180281))

(assert (= (or b!2766126 b!2766122) bm!180284))

(assert (= (or b!2766126 b!2766122) bm!180285))

(assert (= (and d!803114 res!1157436) b!2766131))

(assert (= (and b!2766131 (not res!1157435)) b!2766129))

(declare-fun m!3189215 () Bool)

(assert (=> bm!180283 m!3189215))

(declare-fun m!3189217 () Bool)

(assert (=> bm!180284 m!3189217))

(assert (=> b!2766121 m!3189119))

(declare-fun m!3189219 () Bool)

(assert (=> b!2766121 m!3189219))

(declare-fun m!3189221 () Bool)

(assert (=> b!2766121 m!3189221))

(assert (=> b!2766121 m!3189221))

(declare-fun m!3189223 () Bool)

(assert (=> b!2766121 m!3189223))

(declare-fun m!3189225 () Bool)

(assert (=> b!2766121 m!3189225))

(declare-fun m!3189227 () Bool)

(assert (=> b!2766121 m!3189227))

(declare-fun m!3189229 () Bool)

(assert (=> b!2766121 m!3189229))

(declare-fun m!3189231 () Bool)

(assert (=> b!2766121 m!3189231))

(declare-fun m!3189233 () Bool)

(assert (=> b!2766121 m!3189233))

(assert (=> b!2766121 m!3189215))

(declare-fun m!3189235 () Bool)

(assert (=> b!2766121 m!3189235))

(declare-fun m!3189237 () Bool)

(assert (=> b!2766121 m!3189237))

(declare-fun m!3189239 () Bool)

(assert (=> b!2766121 m!3189239))

(declare-fun m!3189241 () Bool)

(assert (=> b!2766121 m!3189241))

(assert (=> b!2766121 m!3189225))

(assert (=> b!2766121 m!3189235))

(declare-fun m!3189243 () Bool)

(assert (=> d!803114 m!3189243))

(assert (=> d!803114 m!3189235))

(assert (=> d!803114 m!3189181))

(declare-fun m!3189245 () Bool)

(assert (=> d!803114 m!3189245))

(assert (=> d!803114 m!3189181))

(declare-fun m!3189247 () Bool)

(assert (=> d!803114 m!3189247))

(declare-fun m!3189249 () Bool)

(assert (=> d!803114 m!3189249))

(declare-fun m!3189251 () Bool)

(assert (=> d!803114 m!3189251))

(declare-fun m!3189253 () Bool)

(assert (=> b!2766131 m!3189253))

(declare-fun m!3189255 () Bool)

(assert (=> bm!180288 m!3189255))

(assert (=> bm!180281 m!3189063))

(assert (=> bm!180285 m!3189147))

(declare-fun m!3189257 () Bool)

(assert (=> bm!180286 m!3189257))

(declare-fun m!3189259 () Bool)

(assert (=> b!2766119 m!3189259))

(declare-fun m!3189261 () Bool)

(assert (=> bm!180282 m!3189261))

(declare-fun m!3189263 () Bool)

(assert (=> b!2766129 m!3189263))

(assert (=> b!2766129 m!3189233))

(assert (=> bm!180287 m!3189241))

(assert (=> bm!180251 d!803114))

(declare-fun d!803116 () Bool)

(declare-fun validCacheMapDown!391 (MutableMap!3657) Bool)

(assert (=> d!803116 (= (valid!2923 (ite c!448718 (_3!2850 lt!984103) (_3!2850 lt!984089))) (validCacheMapDown!391 (cache!3800 (ite c!448718 (_3!2850 lt!984103) (_3!2850 lt!984089)))))))

(declare-fun bs!500311 () Bool)

(assert (= bs!500311 d!803116))

(declare-fun m!3189265 () Bool)

(assert (=> bs!500311 m!3189265))

(assert (=> bm!180245 d!803116))

(declare-fun d!803118 () Bool)

(assert (=> d!803118 (= lt!984048 Nil!31947)))

(declare-fun lt!984201 () Unit!46013)

(declare-fun choose!16224 (List!32047 List!32047 List!32047) Unit!46013)

(assert (=> d!803118 (= lt!984201 (choose!16224 lt!984048 Nil!31947 lt!984048))))

(assert (=> d!803118 (isPrefix!2545 lt!984048 lt!984048)))

(assert (=> d!803118 (= (lemmaIsPrefixSameLengthThenSameList!453 lt!984048 Nil!31947 lt!984048) lt!984201)))

(declare-fun bs!500312 () Bool)

(assert (= bs!500312 d!803118))

(declare-fun m!3189267 () Bool)

(assert (=> bs!500312 m!3189267))

(assert (=> bs!500312 m!3189147))

(assert (=> bm!180252 d!803118))

(declare-fun b!2766156 () Bool)

(declare-fun e!1744086 () Int)

(assert (=> b!2766156 (= e!1744086 1)))

(declare-fun bm!180309 () Bool)

(declare-fun call!180318 () List!32047)

(declare-fun call!180319 () C!16300)

(assert (=> bm!180309 (= call!180318 (++!7907 lt!984062 (Cons!31947 call!180319 Nil!31947)))))

(declare-fun b!2766157 () Bool)

(declare-fun e!1744087 () List!32047)

(declare-fun call!180320 () List!32047)

(assert (=> b!2766157 (= e!1744087 call!180320)))

(declare-fun b!2766158 () Bool)

(declare-fun c!448760 () Bool)

(declare-fun call!180321 () Bool)

(assert (=> b!2766158 (= c!448760 call!180321)))

(declare-fun lt!984326 () Unit!46013)

(declare-fun lt!984310 () Unit!46013)

(assert (=> b!2766158 (= lt!984326 lt!984310)))

(declare-fun lt!984313 () List!32047)

(assert (=> b!2766158 (= lt!984313 lt!984062)))

(declare-fun call!180316 () Unit!46013)

(assert (=> b!2766158 (= lt!984310 call!180316)))

(assert (=> b!2766158 (= lt!984313 call!180320)))

(declare-fun lt!984320 () Unit!46013)

(declare-fun lt!984293 () Unit!46013)

(assert (=> b!2766158 (= lt!984320 lt!984293)))

(declare-fun call!180314 () Bool)

(assert (=> b!2766158 call!180314))

(declare-fun call!180322 () Unit!46013)

(assert (=> b!2766158 (= lt!984293 call!180322)))

(declare-fun lt!984314 () List!32047)

(assert (=> b!2766158 (= lt!984314 call!180320)))

(declare-fun lt!984315 () List!32047)

(assert (=> b!2766158 (= lt!984315 call!180320)))

(declare-fun e!1744089 () Int)

(assert (=> b!2766158 (= e!1744089 e!1744086)))

(declare-fun b!2766160 () Bool)

(assert (=> b!2766160 (= e!1744086 0)))

(declare-fun b!2766161 () Bool)

(declare-fun e!1744090 () Unit!46013)

(declare-fun Unit!46024 () Unit!46013)

(assert (=> b!2766161 (= e!1744090 Unit!46024)))

(declare-fun lt!984327 () tuple2!32052)

(declare-fun c!448761 () Bool)

(declare-fun bm!180310 () Bool)

(assert (=> bm!180310 (= call!180320 (list!12062 (ite c!448761 input!5495 (_2!18879 lt!984327))))))

(declare-fun b!2766162 () Bool)

(declare-fun c!448757 () Bool)

(assert (=> b!2766162 (= c!448757 call!180321)))

(declare-fun lt!984325 () Unit!46013)

(declare-fun lt!984322 () Unit!46013)

(assert (=> b!2766162 (= lt!984325 lt!984322)))

(declare-fun lt!984303 () C!16300)

(declare-fun lt!984296 () List!32047)

(declare-fun lt!984294 () List!32047)

(assert (=> b!2766162 (= (++!7907 (++!7907 lt!984062 (Cons!31947 lt!984303 Nil!31947)) lt!984294) lt!984296)))

(assert (=> b!2766162 (= lt!984322 (lemmaMoveElementToOtherListKeepsConcatEq!862 lt!984062 lt!984303 lt!984294 lt!984296))))

(assert (=> b!2766162 (= lt!984296 (list!12062 input!5495))))

(assert (=> b!2766162 (= lt!984294 (tail!4379 lt!984076))))

(assert (=> b!2766162 (= lt!984303 (apply!7486 input!5495 1))))

(declare-fun lt!984288 () Unit!46013)

(declare-fun lt!984309 () Unit!46013)

(assert (=> b!2766162 (= lt!984288 lt!984309)))

(declare-fun lt!984297 () List!32047)

(assert (=> b!2766162 (isPrefix!2545 (++!7907 lt!984062 (Cons!31947 (head!6141 (getSuffix!1228 lt!984297 lt!984062)) Nil!31947)) lt!984297)))

(assert (=> b!2766162 (= lt!984309 (lemmaAddHeadSuffixToPrefixStillPrefix!450 lt!984062 lt!984297))))

(assert (=> b!2766162 (= lt!984297 (list!12062 input!5495))))

(declare-fun lt!984308 () Unit!46013)

(assert (=> b!2766162 (= lt!984308 e!1744090)))

(declare-fun c!448759 () Bool)

(assert (=> b!2766162 (= c!448759 (= (size!24719 lt!984062) (size!24718 input!5495)))))

(declare-fun lt!984291 () Unit!46013)

(declare-fun lt!984300 () Unit!46013)

(assert (=> b!2766162 (= lt!984291 lt!984300)))

(declare-fun lt!984301 () List!32047)

(assert (=> b!2766162 (<= (size!24719 lt!984062) (size!24719 lt!984301))))

(assert (=> b!2766162 (= lt!984300 (lemmaIsPrefixThenSmallerEqSize!253 lt!984062 lt!984301))))

(assert (=> b!2766162 (= lt!984301 (list!12062 input!5495))))

(declare-fun lt!984316 () Unit!46013)

(declare-fun lt!984287 () Unit!46013)

(assert (=> b!2766162 (= lt!984316 lt!984287)))

(declare-fun lt!984319 () List!32047)

(assert (=> b!2766162 (= (head!6141 (drop!1699 lt!984319 1)) (apply!7487 lt!984319 1))))

(assert (=> b!2766162 (= lt!984287 (lemmaDropApply!905 lt!984319 1))))

(assert (=> b!2766162 (= lt!984319 (list!12062 input!5495))))

(declare-fun lt!984286 () Unit!46013)

(declare-fun lt!984323 () Unit!46013)

(assert (=> b!2766162 (= lt!984286 lt!984323)))

(declare-fun lt!984304 () List!32047)

(declare-fun lt!984321 () List!32047)

(assert (=> b!2766162 (and (= lt!984321 lt!984062) (= lt!984304 lt!984076))))

(assert (=> b!2766162 (= lt!984323 (lemmaConcatSameAndSameSizesThenSameLists!331 lt!984321 lt!984304 lt!984062 lt!984076))))

(assert (=> b!2766162 (= lt!984304 call!180320)))

(assert (=> b!2766162 (= lt!984321 (list!12062 (_1!18879 lt!984327)))))

(assert (=> b!2766162 (= lt!984327 (splitAt!105 input!5495 1))))

(declare-fun e!1744091 () Int)

(assert (=> b!2766162 (= e!1744089 e!1744091)))

(declare-fun lt!984312 () List!32047)

(declare-fun bm!180311 () Bool)

(declare-fun lt!984290 () List!32047)

(assert (=> bm!180311 (= call!180322 (lemmaIsPrefixRefl!1671 (ite c!448761 lt!984315 lt!984312) (ite c!448761 lt!984314 lt!984290)))))

(declare-fun b!2766163 () Bool)

(declare-fun lt!984292 () Int)

(assert (=> b!2766163 (= e!1744091 (ite (= lt!984292 0) 1 lt!984292))))

(declare-fun call!180317 () Int)

(assert (=> b!2766163 (= lt!984292 call!180317)))

(declare-fun b!2766164 () Bool)

(declare-fun e!1744088 () Int)

(assert (=> b!2766164 (= e!1744088 e!1744089)))

(assert (=> b!2766164 (= c!448761 (= 1 lt!984072))))

(declare-fun call!180315 () (InoxSet Context!4578))

(declare-fun bm!180312 () Bool)

(declare-fun call!180323 () List!32047)

(assert (=> bm!180312 (= call!180317 (findLongestMatchInnerZipperFast!29 call!180315 call!180318 (+ 1 1) call!180323 input!5495 lt!984072))))

(declare-fun b!2766165 () Bool)

(assert (=> b!2766165 (= e!1744088 0)))

(declare-fun bm!180313 () Bool)

(assert (=> bm!180313 (= call!180319 (apply!7486 input!5495 1))))

(declare-fun b!2766166 () Bool)

(declare-fun Unit!46025 () Unit!46013)

(assert (=> b!2766166 (= e!1744090 Unit!46025)))

(assert (=> b!2766166 (= lt!984312 (list!12062 input!5495))))

(assert (=> b!2766166 (= lt!984290 (list!12062 input!5495))))

(declare-fun lt!984299 () Unit!46013)

(assert (=> b!2766166 (= lt!984299 call!180322)))

(assert (=> b!2766166 call!180314))

(declare-fun lt!984306 () Unit!46013)

(assert (=> b!2766166 (= lt!984306 lt!984299)))

(declare-fun lt!984307 () List!32047)

(assert (=> b!2766166 (= lt!984307 (list!12062 input!5495))))

(declare-fun lt!984317 () Unit!46013)

(assert (=> b!2766166 (= lt!984317 call!180316)))

(assert (=> b!2766166 (= lt!984307 lt!984062)))

(declare-fun lt!984289 () Unit!46013)

(assert (=> b!2766166 (= lt!984289 lt!984317)))

(assert (=> b!2766166 false))

(declare-fun bm!180314 () Bool)

(assert (=> bm!180314 (= call!180315 (derivationStepZipper!360 (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116)) call!180319))))

(declare-fun bm!180315 () Bool)

(assert (=> bm!180315 (= call!180314 (isPrefix!2545 (ite c!448761 lt!984315 lt!984312) (ite c!448761 lt!984314 lt!984290)))))

(declare-fun d!803120 () Bool)

(declare-fun lt!984318 () Int)

(assert (=> d!803120 (= (size!24719 (_1!18876 (findLongestMatchInnerZipper!15 (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116)) lt!984062 1 lt!984076 (list!12062 input!5495) lt!984072))) lt!984318)))

(assert (=> d!803120 (= lt!984318 e!1744088)))

(declare-fun c!448758 () Bool)

(assert (=> d!803120 (= c!448758 (lostCauseZipper!432 (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116))))))

(declare-fun lt!984311 () Unit!46013)

(declare-fun Unit!46026 () Unit!46013)

(assert (=> d!803120 (= lt!984311 Unit!46026)))

(assert (=> d!803120 (= (getSuffix!1228 (list!12062 input!5495) lt!984062) lt!984076)))

(declare-fun lt!984324 () Unit!46013)

(declare-fun lt!984298 () Unit!46013)

(assert (=> d!803120 (= lt!984324 lt!984298)))

(declare-fun lt!984302 () List!32047)

(assert (=> d!803120 (= lt!984076 lt!984302)))

(assert (=> d!803120 (= lt!984298 (lemmaSamePrefixThenSameSuffix!1130 lt!984062 lt!984076 lt!984062 lt!984302 (list!12062 input!5495)))))

(assert (=> d!803120 (= lt!984302 (getSuffix!1228 (list!12062 input!5495) lt!984062))))

(declare-fun lt!984305 () Unit!46013)

(declare-fun lt!984295 () Unit!46013)

(assert (=> d!803120 (= lt!984305 lt!984295)))

(assert (=> d!803120 (isPrefix!2545 lt!984062 (++!7907 lt!984062 lt!984076))))

(assert (=> d!803120 (= lt!984295 (lemmaConcatTwoListThenFirstIsPrefix!1656 lt!984062 lt!984076))))

(assert (=> d!803120 (= (++!7907 lt!984062 lt!984076) (list!12062 input!5495))))

(assert (=> d!803120 (= (findLongestMatchInnerZipperFast!29 (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116)) lt!984062 1 lt!984076 input!5495 lt!984072) lt!984318)))

(declare-fun b!2766159 () Bool)

(assert (=> b!2766159 (= e!1744091 call!180317)))

(declare-fun bm!180316 () Bool)

(assert (=> bm!180316 (= call!180323 (tail!4379 lt!984076))))

(declare-fun b!2766167 () Bool)

(assert (=> b!2766167 (= e!1744087 (list!12062 input!5495))))

(declare-fun bm!180317 () Bool)

(assert (=> bm!180317 (= call!180321 (nullableZipper!625 (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116))))))

(declare-fun bm!180318 () Bool)

(declare-fun c!448756 () Bool)

(assert (=> bm!180318 (= c!448756 c!448761)))

(assert (=> bm!180318 (= call!180316 (lemmaIsPrefixSameLengthThenSameList!453 (ite c!448761 lt!984313 lt!984307) lt!984062 e!1744087))))

(assert (= (and d!803120 c!448758) b!2766165))

(assert (= (and d!803120 (not c!448758)) b!2766164))

(assert (= (and b!2766164 c!448761) b!2766158))

(assert (= (and b!2766164 (not c!448761)) b!2766162))

(assert (= (and b!2766158 c!448760) b!2766156))

(assert (= (and b!2766158 (not c!448760)) b!2766160))

(assert (= (and b!2766162 c!448759) b!2766166))

(assert (= (and b!2766162 (not c!448759)) b!2766161))

(assert (= (and b!2766162 c!448757) b!2766163))

(assert (= (and b!2766162 (not c!448757)) b!2766159))

(assert (= (or b!2766163 b!2766159) bm!180313))

(assert (= (or b!2766163 b!2766159) bm!180316))

(assert (= (or b!2766163 b!2766159) bm!180309))

(assert (= (or b!2766163 b!2766159) bm!180314))

(assert (= (or b!2766163 b!2766159) bm!180312))

(assert (= (or b!2766158 b!2766162) bm!180317))

(assert (= (or b!2766158 b!2766166) bm!180315))

(assert (= (or b!2766158 b!2766166) bm!180311))

(assert (= (or b!2766158 b!2766162) bm!180310))

(assert (= (or b!2766158 b!2766166) bm!180318))

(assert (= (and bm!180318 c!448756) b!2766157))

(assert (= (and bm!180318 (not c!448756)) b!2766167))

(declare-fun m!3189269 () Bool)

(assert (=> bm!180315 m!3189269))

(declare-fun m!3189271 () Bool)

(assert (=> bm!180314 m!3189271))

(declare-fun m!3189273 () Bool)

(assert (=> bm!180311 m!3189273))

(declare-fun m!3189275 () Bool)

(assert (=> bm!180312 m!3189275))

(declare-fun m!3189277 () Bool)

(assert (=> bm!180313 m!3189277))

(assert (=> b!2766167 m!3189071))

(declare-fun m!3189279 () Bool)

(assert (=> bm!180309 m!3189279))

(assert (=> d!803120 m!3189071))

(declare-fun m!3189281 () Bool)

(assert (=> d!803120 m!3189281))

(assert (=> d!803120 m!3189203))

(declare-fun m!3189283 () Bool)

(assert (=> d!803120 m!3189283))

(assert (=> d!803120 m!3189071))

(declare-fun m!3189285 () Bool)

(assert (=> d!803120 m!3189285))

(assert (=> d!803120 m!3189203))

(declare-fun m!3189287 () Bool)

(assert (=> d!803120 m!3189287))

(assert (=> d!803120 m!3189071))

(declare-fun m!3189289 () Bool)

(assert (=> d!803120 m!3189289))

(assert (=> d!803120 m!3189071))

(declare-fun m!3189291 () Bool)

(assert (=> d!803120 m!3189291))

(declare-fun m!3189293 () Bool)

(assert (=> d!803120 m!3189293))

(declare-fun m!3189295 () Bool)

(assert (=> b!2766162 m!3189295))

(declare-fun m!3189297 () Bool)

(assert (=> b!2766162 m!3189297))

(declare-fun m!3189299 () Bool)

(assert (=> b!2766162 m!3189299))

(declare-fun m!3189301 () Bool)

(assert (=> b!2766162 m!3189301))

(declare-fun m!3189303 () Bool)

(assert (=> b!2766162 m!3189303))

(assert (=> b!2766162 m!3189295))

(declare-fun m!3189305 () Bool)

(assert (=> b!2766162 m!3189305))

(declare-fun m!3189307 () Bool)

(assert (=> b!2766162 m!3189307))

(declare-fun m!3189309 () Bool)

(assert (=> b!2766162 m!3189309))

(declare-fun m!3189311 () Bool)

(assert (=> b!2766162 m!3189311))

(declare-fun m!3189313 () Bool)

(assert (=> b!2766162 m!3189313))

(declare-fun m!3189315 () Bool)

(assert (=> b!2766162 m!3189315))

(declare-fun m!3189317 () Bool)

(assert (=> b!2766162 m!3189317))

(declare-fun m!3189319 () Bool)

(assert (=> b!2766162 m!3189319))

(assert (=> b!2766162 m!3189097))

(declare-fun m!3189321 () Bool)

(assert (=> b!2766162 m!3189321))

(assert (=> b!2766162 m!3189071))

(declare-fun m!3189323 () Bool)

(assert (=> b!2766162 m!3189323))

(assert (=> b!2766162 m!3189299))

(assert (=> b!2766162 m!3189307))

(declare-fun m!3189325 () Bool)

(assert (=> b!2766162 m!3189325))

(declare-fun m!3189327 () Bool)

(assert (=> b!2766162 m!3189327))

(declare-fun m!3189329 () Bool)

(assert (=> b!2766162 m!3189329))

(assert (=> b!2766162 m!3189313))

(assert (=> b!2766162 m!3189277))

(declare-fun m!3189331 () Bool)

(assert (=> b!2766162 m!3189331))

(declare-fun m!3189333 () Bool)

(assert (=> bm!180317 m!3189333))

(assert (=> bm!180316 m!3189327))

(declare-fun m!3189335 () Bool)

(assert (=> bm!180310 m!3189335))

(declare-fun m!3189337 () Bool)

(assert (=> bm!180318 m!3189337))

(assert (=> b!2766166 m!3189071))

(assert (=> bm!180259 d!803120))

(declare-fun d!803122 () Bool)

(declare-fun e!1744094 () Bool)

(assert (=> d!803122 e!1744094))

(declare-fun res!1157441 () Bool)

(assert (=> d!803122 (=> (not res!1157441) (not e!1744094))))

(declare-fun lt!984330 () tuple3!4760)

(assert (=> d!803122 (= res!1157441 (valid!2922 (_2!18875 lt!984330)))))

(declare-fun choose!16225 (CacheUp!2362 CacheDown!2482 (InoxSet Context!4578) List!32047 Int List!32047 BalanceConc!19520 Int) tuple3!4760)

(assert (=> d!803122 (= lt!984330 (choose!16225 cacheUp!820 cacheDown!939 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072))))

(assert (=> d!803122 (= (++!7907 Nil!31947 lt!984048) (list!12062 input!5495))))

(assert (=> d!803122 (= (findLongestMatchInnerZipperFastMem!24 cacheUp!820 cacheDown!939 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072) lt!984330)))

(declare-fun b!2766172 () Bool)

(declare-fun res!1157442 () Bool)

(assert (=> b!2766172 (=> (not res!1157442) (not e!1744094))))

(assert (=> b!2766172 (= res!1157442 (valid!2923 (_3!2850 lt!984330)))))

(declare-fun b!2766173 () Bool)

(assert (=> b!2766173 (= e!1744094 (= (_1!18875 lt!984330) (findLongestMatchInnerZipperFast!29 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072)))))

(assert (= (and d!803122 res!1157441) b!2766172))

(assert (= (and b!2766172 res!1157442) b!2766173))

(declare-fun m!3189339 () Bool)

(assert (=> d!803122 m!3189339))

(declare-fun m!3189341 () Bool)

(assert (=> d!803122 m!3189341))

(assert (=> d!803122 m!3189081))

(assert (=> d!803122 m!3189071))

(declare-fun m!3189343 () Bool)

(assert (=> b!2766172 m!3189343))

(assert (=> b!2766173 m!3189087))

(assert (=> b!2766035 d!803122))

(declare-fun d!803124 () Bool)

(assert (=> d!803124 (isPrefix!2545 Nil!31947 (++!7907 Nil!31947 lt!984048))))

(declare-fun lt!984333 () Unit!46013)

(declare-fun choose!16226 (List!32047 List!32047) Unit!46013)

(assert (=> d!803124 (= lt!984333 (choose!16226 Nil!31947 lt!984048))))

(assert (=> d!803124 (= (lemmaConcatTwoListThenFirstIsPrefix!1656 Nil!31947 lt!984048) lt!984333)))

(declare-fun bs!500313 () Bool)

(assert (= bs!500313 d!803124))

(assert (=> bs!500313 m!3189081))

(assert (=> bs!500313 m!3189081))

(declare-fun m!3189345 () Bool)

(assert (=> bs!500313 m!3189345))

(declare-fun m!3189347 () Bool)

(assert (=> bs!500313 m!3189347))

(assert (=> b!2766035 d!803124))

(declare-fun d!803126 () Bool)

(declare-fun list!12063 (Conc!9953) List!32047)

(assert (=> d!803126 (= (list!12062 input!5495) (list!12063 (c!448725 input!5495)))))

(declare-fun bs!500314 () Bool)

(assert (= bs!500314 d!803126))

(declare-fun m!3189349 () Bool)

(assert (=> bs!500314 m!3189349))

(assert (=> b!2766035 d!803126))

(declare-fun d!803128 () Bool)

(declare-fun lt!984336 () Int)

(assert (=> d!803128 (= lt!984336 (size!24719 (list!12062 input!5495)))))

(declare-fun size!24720 (Conc!9953) Int)

(assert (=> d!803128 (= lt!984336 (size!24720 (c!448725 input!5495)))))

(assert (=> d!803128 (= (size!24718 input!5495) lt!984336)))

(declare-fun bs!500315 () Bool)

(assert (= bs!500315 d!803128))

(assert (=> bs!500315 m!3189071))

(assert (=> bs!500315 m!3189071))

(declare-fun m!3189351 () Bool)

(assert (=> bs!500315 m!3189351))

(declare-fun m!3189353 () Bool)

(assert (=> bs!500315 m!3189353))

(assert (=> b!2766035 d!803128))

(declare-fun b!2766174 () Bool)

(declare-fun e!1744095 () Bool)

(declare-fun e!1744097 () Bool)

(assert (=> b!2766174 (= e!1744095 e!1744097)))

(declare-fun res!1157444 () Bool)

(assert (=> b!2766174 (=> (not res!1157444) (not e!1744097))))

(assert (=> b!2766174 (= res!1157444 (not ((_ is Nil!31947) lt!984077)))))

(declare-fun b!2766175 () Bool)

(declare-fun res!1157446 () Bool)

(assert (=> b!2766175 (=> (not res!1157446) (not e!1744097))))

(assert (=> b!2766175 (= res!1157446 (= (head!6141 Nil!31947) (head!6141 lt!984077)))))

(declare-fun b!2766176 () Bool)

(assert (=> b!2766176 (= e!1744097 (isPrefix!2545 (tail!4379 Nil!31947) (tail!4379 lt!984077)))))

(declare-fun d!803130 () Bool)

(declare-fun e!1744096 () Bool)

(assert (=> d!803130 e!1744096))

(declare-fun res!1157445 () Bool)

(assert (=> d!803130 (=> res!1157445 e!1744096)))

(declare-fun lt!984337 () Bool)

(assert (=> d!803130 (= res!1157445 (not lt!984337))))

(assert (=> d!803130 (= lt!984337 e!1744095)))

(declare-fun res!1157443 () Bool)

(assert (=> d!803130 (=> res!1157443 e!1744095)))

(assert (=> d!803130 (= res!1157443 ((_ is Nil!31947) Nil!31947))))

(assert (=> d!803130 (= (isPrefix!2545 Nil!31947 lt!984077) lt!984337)))

(declare-fun b!2766177 () Bool)

(assert (=> b!2766177 (= e!1744096 (>= (size!24719 lt!984077) (size!24719 Nil!31947)))))

(assert (= (and d!803130 (not res!1157443)) b!2766174))

(assert (= (and b!2766174 res!1157444) b!2766175))

(assert (= (and b!2766175 res!1157446) b!2766176))

(assert (= (and d!803130 (not res!1157445)) b!2766177))

(declare-fun m!3189355 () Bool)

(assert (=> b!2766175 m!3189355))

(declare-fun m!3189357 () Bool)

(assert (=> b!2766175 m!3189357))

(declare-fun m!3189359 () Bool)

(assert (=> b!2766176 m!3189359))

(declare-fun m!3189361 () Bool)

(assert (=> b!2766176 m!3189361))

(assert (=> b!2766176 m!3189359))

(assert (=> b!2766176 m!3189361))

(declare-fun m!3189363 () Bool)

(assert (=> b!2766176 m!3189363))

(declare-fun m!3189365 () Bool)

(assert (=> b!2766177 m!3189365))

(assert (=> b!2766177 m!3189137))

(assert (=> b!2766035 d!803130))

(declare-fun d!803132 () Bool)

(assert (=> d!803132 (= (list!12062 (_1!18879 lt!984071)) (list!12063 (c!448725 (_1!18879 lt!984071))))))

(declare-fun bs!500316 () Bool)

(assert (= bs!500316 d!803132))

(declare-fun m!3189367 () Bool)

(assert (=> bs!500316 m!3189367))

(assert (=> b!2766035 d!803132))

(declare-fun d!803134 () Bool)

(assert (=> d!803134 (= lt!984048 lt!984060)))

(declare-fun lt!984340 () Unit!46013)

(declare-fun choose!16227 (List!32047 List!32047 List!32047 List!32047 List!32047) Unit!46013)

(assert (=> d!803134 (= lt!984340 (choose!16227 Nil!31947 lt!984048 Nil!31947 lt!984060 lt!984048))))

(assert (=> d!803134 (isPrefix!2545 Nil!31947 lt!984048)))

(assert (=> d!803134 (= (lemmaSamePrefixThenSameSuffix!1130 Nil!31947 lt!984048 Nil!31947 lt!984060 lt!984048) lt!984340)))

(declare-fun bs!500317 () Bool)

(assert (= bs!500317 d!803134))

(declare-fun m!3189369 () Bool)

(assert (=> bs!500317 m!3189369))

(declare-fun m!3189371 () Bool)

(assert (=> bs!500317 m!3189371))

(assert (=> b!2766035 d!803134))

(declare-fun bm!180319 () Bool)

(declare-fun call!180326 () Unit!46013)

(assert (=> bm!180319 (= call!180326 (lemmaIsPrefixRefl!1671 lt!984048 lt!984048))))

(declare-fun b!2766178 () Bool)

(declare-fun e!1744103 () tuple2!32050)

(assert (=> b!2766178 (= e!1744103 (tuple2!32051 Nil!31947 lt!984048))))

(declare-fun b!2766179 () Bool)

(declare-fun e!1744102 () tuple2!32050)

(declare-fun e!1744105 () tuple2!32050)

(assert (=> b!2766179 (= e!1744102 e!1744105)))

(declare-fun lt!984354 () tuple2!32050)

(declare-fun call!180327 () tuple2!32050)

(assert (=> b!2766179 (= lt!984354 call!180327)))

(declare-fun c!448766 () Bool)

(assert (=> b!2766179 (= c!448766 (isEmpty!18086 (_1!18876 lt!984354)))))

(declare-fun b!2766180 () Bool)

(assert (=> b!2766180 (= e!1744105 (tuple2!32051 Nil!31947 lt!984048))))

(declare-fun b!2766181 () Bool)

(declare-fun c!448767 () Bool)

(declare-fun call!180328 () Bool)

(assert (=> b!2766181 (= c!448767 call!180328)))

(declare-fun lt!984353 () Unit!46013)

(declare-fun lt!984341 () Unit!46013)

(assert (=> b!2766181 (= lt!984353 lt!984341)))

(declare-fun lt!984345 () C!16300)

(declare-fun lt!984360 () List!32047)

(assert (=> b!2766181 (= (++!7907 (++!7907 Nil!31947 (Cons!31947 lt!984345 Nil!31947)) lt!984360) lt!984048)))

(assert (=> b!2766181 (= lt!984341 (lemmaMoveElementToOtherListKeepsConcatEq!862 Nil!31947 lt!984345 lt!984360 lt!984048))))

(assert (=> b!2766181 (= lt!984360 (tail!4379 lt!984048))))

(assert (=> b!2766181 (= lt!984345 (head!6141 lt!984048))))

(declare-fun lt!984343 () Unit!46013)

(declare-fun lt!984364 () Unit!46013)

(assert (=> b!2766181 (= lt!984343 lt!984364)))

(assert (=> b!2766181 (isPrefix!2545 (++!7907 Nil!31947 (Cons!31947 (head!6141 (getSuffix!1228 lt!984048 Nil!31947)) Nil!31947)) lt!984048)))

(assert (=> b!2766181 (= lt!984364 (lemmaAddHeadSuffixToPrefixStillPrefix!450 Nil!31947 lt!984048))))

(declare-fun lt!984358 () List!32047)

(assert (=> b!2766181 (= lt!984358 (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984048) Nil!31947)))))

(declare-fun lt!984365 () Unit!46013)

(declare-fun e!1744099 () Unit!46013)

(assert (=> b!2766181 (= lt!984365 e!1744099)))

(declare-fun c!448762 () Bool)

(assert (=> b!2766181 (= c!448762 (= (size!24719 Nil!31947) (size!24719 lt!984048)))))

(declare-fun lt!984362 () Unit!46013)

(declare-fun lt!984366 () Unit!46013)

(assert (=> b!2766181 (= lt!984362 lt!984366)))

(assert (=> b!2766181 (<= (size!24719 Nil!31947) (size!24719 lt!984048))))

(assert (=> b!2766181 (= lt!984366 (lemmaIsPrefixThenSmallerEqSize!253 Nil!31947 lt!984048))))

(declare-fun e!1744104 () tuple2!32050)

(assert (=> b!2766181 (= e!1744104 e!1744102)))

(declare-fun bm!180320 () Bool)

(assert (=> bm!180320 (= call!180328 (nullableZipper!625 z!3597))))

(declare-fun bm!180321 () Bool)

(declare-fun call!180324 () List!32047)

(assert (=> bm!180321 (= call!180324 (tail!4379 lt!984048))))

(declare-fun bm!180322 () Bool)

(declare-fun call!180329 () Unit!46013)

(assert (=> bm!180322 (= call!180329 (lemmaIsPrefixSameLengthThenSameList!453 lt!984048 Nil!31947 lt!984048))))

(declare-fun bm!180323 () Bool)

(declare-fun call!180330 () Bool)

(assert (=> bm!180323 (= call!180330 (isPrefix!2545 lt!984048 lt!984048))))

(declare-fun d!803136 () Bool)

(declare-fun e!1744101 () Bool)

(assert (=> d!803136 e!1744101))

(declare-fun res!1157448 () Bool)

(assert (=> d!803136 (=> (not res!1157448) (not e!1744101))))

(declare-fun lt!984356 () tuple2!32050)

(assert (=> d!803136 (= res!1157448 (= (++!7907 (_1!18876 lt!984356) (_2!18876 lt!984356)) lt!984048))))

(declare-fun e!1744100 () tuple2!32050)

(assert (=> d!803136 (= lt!984356 e!1744100)))

(declare-fun c!448764 () Bool)

(assert (=> d!803136 (= c!448764 (lostCauseZipper!432 z!3597))))

(declare-fun lt!984352 () Unit!46013)

(declare-fun Unit!46027 () Unit!46013)

(assert (=> d!803136 (= lt!984352 Unit!46027)))

(assert (=> d!803136 (= (getSuffix!1228 lt!984048 Nil!31947) lt!984048)))

(declare-fun lt!984359 () Unit!46013)

(declare-fun lt!984346 () Unit!46013)

(assert (=> d!803136 (= lt!984359 lt!984346)))

(declare-fun lt!984355 () List!32047)

(assert (=> d!803136 (= lt!984048 lt!984355)))

(assert (=> d!803136 (= lt!984346 (lemmaSamePrefixThenSameSuffix!1130 Nil!31947 lt!984048 Nil!31947 lt!984355 lt!984048))))

(assert (=> d!803136 (= lt!984355 (getSuffix!1228 lt!984048 Nil!31947))))

(declare-fun lt!984351 () Unit!46013)

(declare-fun lt!984363 () Unit!46013)

(assert (=> d!803136 (= lt!984351 lt!984363)))

(assert (=> d!803136 (isPrefix!2545 Nil!31947 (++!7907 Nil!31947 lt!984048))))

(assert (=> d!803136 (= lt!984363 (lemmaConcatTwoListThenFirstIsPrefix!1656 Nil!31947 lt!984048))))

(assert (=> d!803136 (= (++!7907 Nil!31947 lt!984048) lt!984048)))

(assert (=> d!803136 (= (findLongestMatchInnerZipper!15 z!3597 Nil!31947 0 lt!984048 lt!984048 lt!984072) lt!984356)))

(declare-fun b!2766182 () Bool)

(declare-fun Unit!46028 () Unit!46013)

(assert (=> b!2766182 (= e!1744099 Unit!46028)))

(declare-fun lt!984349 () Unit!46013)

(assert (=> b!2766182 (= lt!984349 call!180326)))

(assert (=> b!2766182 call!180330))

(declare-fun lt!984348 () Unit!46013)

(assert (=> b!2766182 (= lt!984348 lt!984349)))

(declare-fun lt!984344 () Unit!46013)

(assert (=> b!2766182 (= lt!984344 call!180329)))

(assert (=> b!2766182 (= lt!984048 Nil!31947)))

(declare-fun lt!984350 () Unit!46013)

(assert (=> b!2766182 (= lt!984350 lt!984344)))

(assert (=> b!2766182 false))

(declare-fun b!2766183 () Bool)

(assert (=> b!2766183 (= e!1744102 call!180327)))

(declare-fun b!2766184 () Bool)

(assert (=> b!2766184 (= e!1744100 (tuple2!32051 Nil!31947 lt!984048))))

(declare-fun b!2766185 () Bool)

(assert (=> b!2766185 (= e!1744105 lt!984354)))

(declare-fun b!2766186 () Bool)

(declare-fun c!448763 () Bool)

(assert (=> b!2766186 (= c!448763 call!180328)))

(declare-fun lt!984357 () Unit!46013)

(declare-fun lt!984342 () Unit!46013)

(assert (=> b!2766186 (= lt!984357 lt!984342)))

(assert (=> b!2766186 (= lt!984048 Nil!31947)))

(assert (=> b!2766186 (= lt!984342 call!180329)))

(declare-fun lt!984347 () Unit!46013)

(declare-fun lt!984361 () Unit!46013)

(assert (=> b!2766186 (= lt!984347 lt!984361)))

(assert (=> b!2766186 call!180330))

(assert (=> b!2766186 (= lt!984361 call!180326)))

(assert (=> b!2766186 (= e!1744104 e!1744103)))

(declare-fun b!2766187 () Bool)

(declare-fun Unit!46029 () Unit!46013)

(assert (=> b!2766187 (= e!1744099 Unit!46029)))

(declare-fun bm!180324 () Bool)

(declare-fun call!180325 () (InoxSet Context!4578))

(assert (=> bm!180324 (= call!180327 (findLongestMatchInnerZipper!15 call!180325 lt!984358 (+ 0 1) call!180324 lt!984048 lt!984072))))

(declare-fun b!2766188 () Bool)

(assert (=> b!2766188 (= e!1744103 (tuple2!32051 Nil!31947 Nil!31947))))

(declare-fun bm!180325 () Bool)

(declare-fun call!180331 () C!16300)

(assert (=> bm!180325 (= call!180331 (head!6141 lt!984048))))

(declare-fun bm!180326 () Bool)

(assert (=> bm!180326 (= call!180325 (derivationStepZipper!360 z!3597 call!180331))))

(declare-fun b!2766189 () Bool)

(declare-fun e!1744098 () Bool)

(assert (=> b!2766189 (= e!1744098 (>= (size!24719 (_1!18876 lt!984356)) (size!24719 Nil!31947)))))

(declare-fun b!2766190 () Bool)

(assert (=> b!2766190 (= e!1744100 e!1744104)))

(declare-fun c!448765 () Bool)

(assert (=> b!2766190 (= c!448765 (= 0 lt!984072))))

(declare-fun b!2766191 () Bool)

(assert (=> b!2766191 (= e!1744101 e!1744098)))

(declare-fun res!1157447 () Bool)

(assert (=> b!2766191 (=> res!1157447 e!1744098)))

(assert (=> b!2766191 (= res!1157447 (isEmpty!18086 (_1!18876 lt!984356)))))

(assert (= (and d!803136 c!448764) b!2766184))

(assert (= (and d!803136 (not c!448764)) b!2766190))

(assert (= (and b!2766190 c!448765) b!2766186))

(assert (= (and b!2766190 (not c!448765)) b!2766181))

(assert (= (and b!2766186 c!448763) b!2766188))

(assert (= (and b!2766186 (not c!448763)) b!2766178))

(assert (= (and b!2766181 c!448762) b!2766182))

(assert (= (and b!2766181 (not c!448762)) b!2766187))

(assert (= (and b!2766181 c!448767) b!2766179))

(assert (= (and b!2766181 (not c!448767)) b!2766183))

(assert (= (and b!2766179 c!448766) b!2766180))

(assert (= (and b!2766179 (not c!448766)) b!2766185))

(assert (= (or b!2766179 b!2766183) bm!180321))

(assert (= (or b!2766179 b!2766183) bm!180325))

(assert (= (or b!2766179 b!2766183) bm!180326))

(assert (= (or b!2766179 b!2766183) bm!180324))

(assert (= (or b!2766186 b!2766181) bm!180320))

(assert (= (or b!2766186 b!2766182) bm!180319))

(assert (= (or b!2766186 b!2766182) bm!180322))

(assert (= (or b!2766186 b!2766182) bm!180323))

(assert (= (and d!803136 res!1157448) b!2766191))

(assert (= (and b!2766191 (not res!1157447)) b!2766189))

(assert (=> bm!180321 m!3189131))

(assert (=> bm!180322 m!3189149))

(assert (=> b!2766181 m!3189119))

(declare-fun m!3189373 () Bool)

(assert (=> b!2766181 m!3189373))

(declare-fun m!3189375 () Bool)

(assert (=> b!2766181 m!3189375))

(assert (=> b!2766181 m!3189375))

(declare-fun m!3189377 () Bool)

(assert (=> b!2766181 m!3189377))

(declare-fun m!3189379 () Bool)

(assert (=> b!2766181 m!3189379))

(declare-fun m!3189381 () Bool)

(assert (=> b!2766181 m!3189381))

(assert (=> b!2766181 m!3189103))

(assert (=> b!2766181 m!3189139))

(assert (=> b!2766181 m!3189137))

(assert (=> b!2766181 m!3189131))

(assert (=> b!2766181 m!3189085))

(declare-fun m!3189383 () Bool)

(assert (=> b!2766181 m!3189383))

(declare-fun m!3189385 () Bool)

(assert (=> b!2766181 m!3189385))

(assert (=> b!2766181 m!3189183))

(assert (=> b!2766181 m!3189379))

(assert (=> b!2766181 m!3189085))

(assert (=> d!803136 m!3189069))

(assert (=> d!803136 m!3189085))

(assert (=> d!803136 m!3189081))

(declare-fun m!3189387 () Bool)

(assert (=> d!803136 m!3189387))

(assert (=> d!803136 m!3189081))

(assert (=> d!803136 m!3189345))

(assert (=> d!803136 m!3189095))

(declare-fun m!3189389 () Bool)

(assert (=> d!803136 m!3189389))

(declare-fun m!3189391 () Bool)

(assert (=> b!2766191 m!3189391))

(declare-fun m!3189393 () Bool)

(assert (=> bm!180326 m!3189393))

(assert (=> bm!180319 m!3189063))

(assert (=> bm!180323 m!3189147))

(declare-fun m!3189395 () Bool)

(assert (=> bm!180324 m!3189395))

(declare-fun m!3189397 () Bool)

(assert (=> b!2766179 m!3189397))

(assert (=> bm!180320 m!3189163))

(declare-fun m!3189399 () Bool)

(assert (=> b!2766189 m!3189399))

(assert (=> b!2766189 m!3189137))

(assert (=> bm!180325 m!3189183))

(assert (=> b!2766035 d!803136))

(declare-fun d!803138 () Bool)

(declare-fun e!1744111 () Bool)

(assert (=> d!803138 e!1744111))

(declare-fun res!1157453 () Bool)

(assert (=> d!803138 (=> (not res!1157453) (not e!1744111))))

(declare-fun lt!984369 () List!32047)

(declare-fun content!4498 (List!32047) (InoxSet C!16300))

(assert (=> d!803138 (= res!1157453 (= (content!4498 lt!984369) ((_ map or) (content!4498 Nil!31947) (content!4498 lt!984048))))))

(declare-fun e!1744110 () List!32047)

(assert (=> d!803138 (= lt!984369 e!1744110)))

(declare-fun c!448770 () Bool)

(assert (=> d!803138 (= c!448770 ((_ is Nil!31947) Nil!31947))))

(assert (=> d!803138 (= (++!7907 Nil!31947 lt!984048) lt!984369)))

(declare-fun b!2766200 () Bool)

(assert (=> b!2766200 (= e!1744110 lt!984048)))

(declare-fun b!2766201 () Bool)

(assert (=> b!2766201 (= e!1744110 (Cons!31947 (h!37367 Nil!31947) (++!7907 (t!228167 Nil!31947) lt!984048)))))

(declare-fun b!2766203 () Bool)

(assert (=> b!2766203 (= e!1744111 (or (not (= lt!984048 Nil!31947)) (= lt!984369 Nil!31947)))))

(declare-fun b!2766202 () Bool)

(declare-fun res!1157454 () Bool)

(assert (=> b!2766202 (=> (not res!1157454) (not e!1744111))))

(assert (=> b!2766202 (= res!1157454 (= (size!24719 lt!984369) (+ (size!24719 Nil!31947) (size!24719 lt!984048))))))

(assert (= (and d!803138 c!448770) b!2766200))

(assert (= (and d!803138 (not c!448770)) b!2766201))

(assert (= (and d!803138 res!1157453) b!2766202))

(assert (= (and b!2766202 res!1157454) b!2766203))

(declare-fun m!3189401 () Bool)

(assert (=> d!803138 m!3189401))

(declare-fun m!3189403 () Bool)

(assert (=> d!803138 m!3189403))

(declare-fun m!3189405 () Bool)

(assert (=> d!803138 m!3189405))

(declare-fun m!3189407 () Bool)

(assert (=> b!2766201 m!3189407))

(declare-fun m!3189409 () Bool)

(assert (=> b!2766202 m!3189409))

(assert (=> b!2766202 m!3189137))

(assert (=> b!2766202 m!3189119))

(assert (=> b!2766035 d!803138))

(declare-fun bs!500318 () Bool)

(declare-fun b!2766208 () Bool)

(declare-fun d!803140 () Bool)

(assert (= bs!500318 (and b!2766208 d!803140)))

(declare-fun lambda!101534 () Int)

(declare-fun lambda!101533 () Int)

(assert (=> bs!500318 (not (= lambda!101534 lambda!101533))))

(declare-fun bs!500319 () Bool)

(declare-fun b!2766209 () Bool)

(assert (= bs!500319 (and b!2766209 d!803140)))

(declare-fun lambda!101535 () Int)

(assert (=> bs!500319 (not (= lambda!101535 lambda!101533))))

(declare-fun bs!500320 () Bool)

(assert (= bs!500320 (and b!2766209 b!2766208)))

(assert (=> bs!500320 (= lambda!101535 lambda!101534)))

(declare-fun e!1744118 () Unit!46013)

(declare-fun Unit!46030 () Unit!46013)

(assert (=> b!2766208 (= e!1744118 Unit!46030)))

(declare-datatypes ((List!32048 0))(
  ( (Nil!31948) (Cons!31948 (h!37368 Context!4578) (t!228168 List!32048)) )
))
(declare-fun lt!984392 () List!32048)

(declare-fun call!180336 () List!32048)

(assert (=> b!2766208 (= lt!984392 call!180336)))

(declare-fun lt!984390 () Unit!46013)

(declare-fun lemmaNotForallThenExists!81 (List!32048 Int) Unit!46013)

(assert (=> b!2766208 (= lt!984390 (lemmaNotForallThenExists!81 lt!984392 lambda!101533))))

(declare-fun call!180337 () Bool)

(assert (=> b!2766208 call!180337))

(declare-fun lt!984388 () Unit!46013)

(assert (=> b!2766208 (= lt!984388 lt!984390)))

(declare-fun c!448781 () Bool)

(declare-fun lt!984393 () List!32048)

(declare-fun bm!180331 () Bool)

(declare-fun exists!969 (List!32048 Int) Bool)

(assert (=> bm!180331 (= call!180337 (exists!969 (ite c!448781 lt!984392 lt!984393) (ite c!448781 lambda!101534 lambda!101535)))))

(declare-fun bm!180332 () Bool)

(declare-fun toList!1834 ((InoxSet Context!4578)) List!32048)

(assert (=> bm!180332 (= call!180336 (toList!1834 z!3597))))

(declare-fun Unit!46031 () Unit!46013)

(assert (=> b!2766209 (= e!1744118 Unit!46031)))

(assert (=> b!2766209 (= lt!984393 call!180336)))

(declare-fun lt!984389 () Unit!46013)

(declare-fun lemmaForallThenNotExists!81 (List!32048 Int) Unit!46013)

(assert (=> b!2766209 (= lt!984389 (lemmaForallThenNotExists!81 lt!984393 lambda!101533))))

(assert (=> b!2766209 (not call!180337)))

(declare-fun lt!984387 () Unit!46013)

(assert (=> b!2766209 (= lt!984387 lt!984389)))

(declare-fun lt!984391 () Bool)

(declare-datatypes ((Option!6259 0))(
  ( (None!6258) (Some!6258 (v!33556 List!32047)) )
))
(declare-fun isEmpty!18087 (Option!6259) Bool)

(declare-fun getLanguageWitness!184 ((InoxSet Context!4578)) Option!6259)

(assert (=> d!803140 (= lt!984391 (isEmpty!18087 (getLanguageWitness!184 z!3597)))))

(declare-fun forall!6616 ((InoxSet Context!4578) Int) Bool)

(assert (=> d!803140 (= lt!984391 (forall!6616 z!3597 lambda!101533))))

(declare-fun lt!984386 () Unit!46013)

(assert (=> d!803140 (= lt!984386 e!1744118)))

(assert (=> d!803140 (= c!448781 (not (forall!6616 z!3597 lambda!101533)))))

(assert (=> d!803140 (= (lostCauseZipper!432 z!3597) lt!984391)))

(assert (= (and d!803140 c!448781) b!2766208))

(assert (= (and d!803140 (not c!448781)) b!2766209))

(assert (= (or b!2766208 b!2766209) bm!180331))

(assert (= (or b!2766208 b!2766209) bm!180332))

(declare-fun m!3189411 () Bool)

(assert (=> d!803140 m!3189411))

(assert (=> d!803140 m!3189411))

(declare-fun m!3189413 () Bool)

(assert (=> d!803140 m!3189413))

(declare-fun m!3189415 () Bool)

(assert (=> d!803140 m!3189415))

(assert (=> d!803140 m!3189415))

(declare-fun m!3189417 () Bool)

(assert (=> bm!180332 m!3189417))

(declare-fun m!3189419 () Bool)

(assert (=> b!2766209 m!3189419))

(declare-fun m!3189421 () Bool)

(assert (=> bm!180331 m!3189421))

(declare-fun m!3189423 () Bool)

(assert (=> b!2766208 m!3189423))

(assert (=> b!2766035 d!803140))

(declare-fun d!803142 () Bool)

(declare-fun e!1744121 () Bool)

(assert (=> d!803142 e!1744121))

(declare-fun res!1157460 () Bool)

(assert (=> d!803142 (=> (not res!1157460) (not e!1744121))))

(declare-fun lt!984398 () tuple2!32052)

(declare-fun isBalanced!3034 (Conc!9953) Bool)

(assert (=> d!803142 (= res!1157460 (isBalanced!3034 (c!448725 (_1!18879 lt!984398))))))

(declare-datatypes ((tuple2!32054 0))(
  ( (tuple2!32055 (_1!18880 Conc!9953) (_2!18880 Conc!9953)) )
))
(declare-fun lt!984399 () tuple2!32054)

(assert (=> d!803142 (= lt!984398 (tuple2!32053 (BalanceConc!19521 (_1!18880 lt!984399)) (BalanceConc!19521 (_2!18880 lt!984399))))))

(declare-fun splitAt!106 (Conc!9953 Int) tuple2!32054)

(assert (=> d!803142 (= lt!984399 (splitAt!106 (c!448725 input!5495) (_1!18875 lt!984054)))))

(assert (=> d!803142 (isBalanced!3034 (c!448725 input!5495))))

(assert (=> d!803142 (= (splitAt!105 input!5495 (_1!18875 lt!984054)) lt!984398)))

(declare-fun b!2766214 () Bool)

(declare-fun res!1157459 () Bool)

(assert (=> b!2766214 (=> (not res!1157459) (not e!1744121))))

(assert (=> b!2766214 (= res!1157459 (isBalanced!3034 (c!448725 (_2!18879 lt!984398))))))

(declare-fun b!2766215 () Bool)

(declare-fun splitAtIndex!49 (List!32047 Int) tuple2!32050)

(assert (=> b!2766215 (= e!1744121 (= (tuple2!32051 (list!12062 (_1!18879 lt!984398)) (list!12062 (_2!18879 lt!984398))) (splitAtIndex!49 (list!12062 input!5495) (_1!18875 lt!984054))))))

(assert (= (and d!803142 res!1157460) b!2766214))

(assert (= (and b!2766214 res!1157459) b!2766215))

(declare-fun m!3189425 () Bool)

(assert (=> d!803142 m!3189425))

(declare-fun m!3189427 () Bool)

(assert (=> d!803142 m!3189427))

(declare-fun m!3189429 () Bool)

(assert (=> d!803142 m!3189429))

(declare-fun m!3189431 () Bool)

(assert (=> b!2766214 m!3189431))

(declare-fun m!3189433 () Bool)

(assert (=> b!2766215 m!3189433))

(declare-fun m!3189435 () Bool)

(assert (=> b!2766215 m!3189435))

(assert (=> b!2766215 m!3189071))

(assert (=> b!2766215 m!3189071))

(declare-fun m!3189437 () Bool)

(assert (=> b!2766215 m!3189437))

(assert (=> b!2766035 d!803142))

(declare-fun d!803144 () Bool)

(declare-fun validCacheMapUp!360 (MutableMap!3656) Bool)

(assert (=> d!803144 (= (valid!2922 (_2!18875 lt!984054)) (validCacheMapUp!360 (cache!3799 (_2!18875 lt!984054))))))

(declare-fun bs!500321 () Bool)

(assert (= bs!500321 d!803144))

(declare-fun m!3189439 () Bool)

(assert (=> bs!500321 m!3189439))

(assert (=> b!2766035 d!803144))

(declare-fun d!803146 () Bool)

(assert (=> d!803146 (= (list!12062 (_2!18879 lt!984071)) (list!12063 (c!448725 (_2!18879 lt!984071))))))

(declare-fun bs!500322 () Bool)

(assert (= bs!500322 d!803146))

(declare-fun m!3189441 () Bool)

(assert (=> bs!500322 m!3189441))

(assert (=> b!2766035 d!803146))

(declare-fun d!803148 () Bool)

(declare-fun lt!984402 () List!32047)

(assert (=> d!803148 (= (++!7907 Nil!31947 lt!984402) lt!984048)))

(declare-fun e!1744124 () List!32047)

(assert (=> d!803148 (= lt!984402 e!1744124)))

(declare-fun c!448784 () Bool)

(assert (=> d!803148 (= c!448784 ((_ is Cons!31947) Nil!31947))))

(assert (=> d!803148 (>= (size!24719 lt!984048) (size!24719 Nil!31947))))

(assert (=> d!803148 (= (getSuffix!1228 lt!984048 Nil!31947) lt!984402)))

(declare-fun b!2766220 () Bool)

(assert (=> b!2766220 (= e!1744124 (getSuffix!1228 (tail!4379 lt!984048) (t!228167 Nil!31947)))))

(declare-fun b!2766221 () Bool)

(assert (=> b!2766221 (= e!1744124 lt!984048)))

(assert (= (and d!803148 c!448784) b!2766220))

(assert (= (and d!803148 (not c!448784)) b!2766221))

(declare-fun m!3189443 () Bool)

(assert (=> d!803148 m!3189443))

(assert (=> d!803148 m!3189119))

(assert (=> d!803148 m!3189137))

(assert (=> b!2766220 m!3189131))

(assert (=> b!2766220 m!3189131))

(declare-fun m!3189445 () Bool)

(assert (=> b!2766220 m!3189445))

(assert (=> b!2766035 d!803148))

(declare-fun d!803150 () Bool)

(declare-fun e!1744125 () Bool)

(assert (=> d!803150 e!1744125))

(declare-fun res!1157461 () Bool)

(assert (=> d!803150 (=> (not res!1157461) (not e!1744125))))

(declare-fun lt!984403 () tuple3!4760)

(assert (=> d!803150 (= res!1157461 (valid!2922 (_2!18875 lt!984403)))))

(assert (=> d!803150 (= lt!984403 (choose!16225 (_2!18875 lt!984054) (_3!2850 lt!984054) z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072))))

(assert (=> d!803150 (= (++!7907 Nil!31947 lt!984048) (list!12062 input!5495))))

(assert (=> d!803150 (= (findLongestMatchInnerZipperFastMem!24 (_2!18875 lt!984054) (_3!2850 lt!984054) z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072) lt!984403)))

(declare-fun b!2766222 () Bool)

(declare-fun res!1157462 () Bool)

(assert (=> b!2766222 (=> (not res!1157462) (not e!1744125))))

(assert (=> b!2766222 (= res!1157462 (valid!2923 (_3!2850 lt!984403)))))

(declare-fun b!2766223 () Bool)

(assert (=> b!2766223 (= e!1744125 (= (_1!18875 lt!984403) (findLongestMatchInnerZipperFast!29 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072)))))

(assert (= (and d!803150 res!1157461) b!2766222))

(assert (= (and b!2766222 res!1157462) b!2766223))

(declare-fun m!3189447 () Bool)

(assert (=> d!803150 m!3189447))

(declare-fun m!3189449 () Bool)

(assert (=> d!803150 m!3189449))

(assert (=> d!803150 m!3189081))

(assert (=> d!803150 m!3189071))

(declare-fun m!3189451 () Bool)

(assert (=> b!2766222 m!3189451))

(assert (=> b!2766223 m!3189087))

(assert (=> b!2766035 d!803150))

(declare-fun d!803152 () Bool)

(assert (=> d!803152 (= (valid!2922 (_2!18875 lt!984059)) (validCacheMapUp!360 (cache!3799 (_2!18875 lt!984059))))))

(declare-fun bs!500323 () Bool)

(assert (= bs!500323 d!803152))

(declare-fun m!3189453 () Bool)

(assert (=> bs!500323 m!3189453))

(assert (=> b!2766035 d!803152))

(declare-fun b!2766224 () Bool)

(declare-fun e!1744126 () Int)

(assert (=> b!2766224 (= e!1744126 0)))

(declare-fun bm!180333 () Bool)

(declare-fun call!180342 () List!32047)

(declare-fun call!180343 () C!16300)

(assert (=> bm!180333 (= call!180342 (++!7907 Nil!31947 (Cons!31947 call!180343 Nil!31947)))))

(declare-fun b!2766225 () Bool)

(declare-fun e!1744127 () List!32047)

(declare-fun call!180344 () List!32047)

(assert (=> b!2766225 (= e!1744127 call!180344)))

(declare-fun b!2766226 () Bool)

(declare-fun c!448789 () Bool)

(declare-fun call!180345 () Bool)

(assert (=> b!2766226 (= c!448789 call!180345)))

(declare-fun lt!984444 () Unit!46013)

(declare-fun lt!984428 () Unit!46013)

(assert (=> b!2766226 (= lt!984444 lt!984428)))

(declare-fun lt!984431 () List!32047)

(assert (=> b!2766226 (= lt!984431 Nil!31947)))

(declare-fun call!180340 () Unit!46013)

(assert (=> b!2766226 (= lt!984428 call!180340)))

(assert (=> b!2766226 (= lt!984431 call!180344)))

(declare-fun lt!984438 () Unit!46013)

(declare-fun lt!984411 () Unit!46013)

(assert (=> b!2766226 (= lt!984438 lt!984411)))

(declare-fun call!180338 () Bool)

(assert (=> b!2766226 call!180338))

(declare-fun call!180346 () Unit!46013)

(assert (=> b!2766226 (= lt!984411 call!180346)))

(declare-fun lt!984432 () List!32047)

(assert (=> b!2766226 (= lt!984432 call!180344)))

(declare-fun lt!984433 () List!32047)

(assert (=> b!2766226 (= lt!984433 call!180344)))

(declare-fun e!1744129 () Int)

(assert (=> b!2766226 (= e!1744129 e!1744126)))

(declare-fun b!2766228 () Bool)

(assert (=> b!2766228 (= e!1744126 0)))

(declare-fun b!2766229 () Bool)

(declare-fun e!1744130 () Unit!46013)

(declare-fun Unit!46032 () Unit!46013)

(assert (=> b!2766229 (= e!1744130 Unit!46032)))

(declare-fun lt!984445 () tuple2!32052)

(declare-fun bm!180334 () Bool)

(declare-fun c!448790 () Bool)

(assert (=> bm!180334 (= call!180344 (list!12062 (ite c!448790 input!5495 (_2!18879 lt!984445))))))

(declare-fun b!2766230 () Bool)

(declare-fun c!448786 () Bool)

(assert (=> b!2766230 (= c!448786 call!180345)))

(declare-fun lt!984443 () Unit!46013)

(declare-fun lt!984440 () Unit!46013)

(assert (=> b!2766230 (= lt!984443 lt!984440)))

(declare-fun lt!984421 () C!16300)

(declare-fun lt!984412 () List!32047)

(declare-fun lt!984414 () List!32047)

(assert (=> b!2766230 (= (++!7907 (++!7907 Nil!31947 (Cons!31947 lt!984421 Nil!31947)) lt!984412) lt!984414)))

(assert (=> b!2766230 (= lt!984440 (lemmaMoveElementToOtherListKeepsConcatEq!862 Nil!31947 lt!984421 lt!984412 lt!984414))))

(assert (=> b!2766230 (= lt!984414 (list!12062 input!5495))))

(assert (=> b!2766230 (= lt!984412 (tail!4379 lt!984048))))

(assert (=> b!2766230 (= lt!984421 (apply!7486 input!5495 0))))

(declare-fun lt!984406 () Unit!46013)

(declare-fun lt!984427 () Unit!46013)

(assert (=> b!2766230 (= lt!984406 lt!984427)))

(declare-fun lt!984415 () List!32047)

(assert (=> b!2766230 (isPrefix!2545 (++!7907 Nil!31947 (Cons!31947 (head!6141 (getSuffix!1228 lt!984415 Nil!31947)) Nil!31947)) lt!984415)))

(assert (=> b!2766230 (= lt!984427 (lemmaAddHeadSuffixToPrefixStillPrefix!450 Nil!31947 lt!984415))))

(assert (=> b!2766230 (= lt!984415 (list!12062 input!5495))))

(declare-fun lt!984426 () Unit!46013)

(assert (=> b!2766230 (= lt!984426 e!1744130)))

(declare-fun c!448788 () Bool)

(assert (=> b!2766230 (= c!448788 (= (size!24719 Nil!31947) (size!24718 input!5495)))))

(declare-fun lt!984409 () Unit!46013)

(declare-fun lt!984418 () Unit!46013)

(assert (=> b!2766230 (= lt!984409 lt!984418)))

(declare-fun lt!984419 () List!32047)

(assert (=> b!2766230 (<= (size!24719 Nil!31947) (size!24719 lt!984419))))

(assert (=> b!2766230 (= lt!984418 (lemmaIsPrefixThenSmallerEqSize!253 Nil!31947 lt!984419))))

(assert (=> b!2766230 (= lt!984419 (list!12062 input!5495))))

(declare-fun lt!984434 () Unit!46013)

(declare-fun lt!984405 () Unit!46013)

(assert (=> b!2766230 (= lt!984434 lt!984405)))

(declare-fun lt!984437 () List!32047)

(assert (=> b!2766230 (= (head!6141 (drop!1699 lt!984437 0)) (apply!7487 lt!984437 0))))

(assert (=> b!2766230 (= lt!984405 (lemmaDropApply!905 lt!984437 0))))

(assert (=> b!2766230 (= lt!984437 (list!12062 input!5495))))

(declare-fun lt!984404 () Unit!46013)

(declare-fun lt!984441 () Unit!46013)

(assert (=> b!2766230 (= lt!984404 lt!984441)))

(declare-fun lt!984439 () List!32047)

(declare-fun lt!984422 () List!32047)

(assert (=> b!2766230 (and (= lt!984439 Nil!31947) (= lt!984422 lt!984048))))

(assert (=> b!2766230 (= lt!984441 (lemmaConcatSameAndSameSizesThenSameLists!331 lt!984439 lt!984422 Nil!31947 lt!984048))))

(assert (=> b!2766230 (= lt!984422 call!180344)))

(assert (=> b!2766230 (= lt!984439 (list!12062 (_1!18879 lt!984445)))))

(assert (=> b!2766230 (= lt!984445 (splitAt!105 input!5495 0))))

(declare-fun e!1744131 () Int)

(assert (=> b!2766230 (= e!1744129 e!1744131)))

(declare-fun lt!984408 () List!32047)

(declare-fun bm!180335 () Bool)

(declare-fun lt!984430 () List!32047)

(assert (=> bm!180335 (= call!180346 (lemmaIsPrefixRefl!1671 (ite c!448790 lt!984433 lt!984430) (ite c!448790 lt!984432 lt!984408)))))

(declare-fun b!2766231 () Bool)

(declare-fun lt!984410 () Int)

(assert (=> b!2766231 (= e!1744131 (ite (= lt!984410 0) 0 lt!984410))))

(declare-fun call!180341 () Int)

(assert (=> b!2766231 (= lt!984410 call!180341)))

(declare-fun b!2766232 () Bool)

(declare-fun e!1744128 () Int)

(assert (=> b!2766232 (= e!1744128 e!1744129)))

(assert (=> b!2766232 (= c!448790 (= 0 lt!984072))))

(declare-fun bm!180336 () Bool)

(declare-fun call!180339 () (InoxSet Context!4578))

(declare-fun call!180347 () List!32047)

(assert (=> bm!180336 (= call!180341 (findLongestMatchInnerZipperFast!29 call!180339 call!180342 (+ 0 1) call!180347 input!5495 lt!984072))))

(declare-fun b!2766233 () Bool)

(assert (=> b!2766233 (= e!1744128 0)))

(declare-fun bm!180337 () Bool)

(assert (=> bm!180337 (= call!180343 (apply!7486 input!5495 0))))

(declare-fun b!2766234 () Bool)

(declare-fun Unit!46033 () Unit!46013)

(assert (=> b!2766234 (= e!1744130 Unit!46033)))

(assert (=> b!2766234 (= lt!984430 (list!12062 input!5495))))

(assert (=> b!2766234 (= lt!984408 (list!12062 input!5495))))

(declare-fun lt!984417 () Unit!46013)

(assert (=> b!2766234 (= lt!984417 call!180346)))

(assert (=> b!2766234 call!180338))

(declare-fun lt!984424 () Unit!46013)

(assert (=> b!2766234 (= lt!984424 lt!984417)))

(declare-fun lt!984425 () List!32047)

(assert (=> b!2766234 (= lt!984425 (list!12062 input!5495))))

(declare-fun lt!984435 () Unit!46013)

(assert (=> b!2766234 (= lt!984435 call!180340)))

(assert (=> b!2766234 (= lt!984425 Nil!31947)))

(declare-fun lt!984407 () Unit!46013)

(assert (=> b!2766234 (= lt!984407 lt!984435)))

(assert (=> b!2766234 false))

(declare-fun bm!180338 () Bool)

(assert (=> bm!180338 (= call!180339 (derivationStepZipper!360 z!3597 call!180343))))

(declare-fun bm!180339 () Bool)

(assert (=> bm!180339 (= call!180338 (isPrefix!2545 (ite c!448790 lt!984433 lt!984430) (ite c!448790 lt!984432 lt!984408)))))

(declare-fun d!803154 () Bool)

(declare-fun lt!984436 () Int)

(assert (=> d!803154 (= (size!24719 (_1!18876 (findLongestMatchInnerZipper!15 z!3597 Nil!31947 0 lt!984048 (list!12062 input!5495) lt!984072))) lt!984436)))

(assert (=> d!803154 (= lt!984436 e!1744128)))

(declare-fun c!448787 () Bool)

(assert (=> d!803154 (= c!448787 (lostCauseZipper!432 z!3597))))

(declare-fun lt!984429 () Unit!46013)

(declare-fun Unit!46034 () Unit!46013)

(assert (=> d!803154 (= lt!984429 Unit!46034)))

(assert (=> d!803154 (= (getSuffix!1228 (list!12062 input!5495) Nil!31947) lt!984048)))

(declare-fun lt!984442 () Unit!46013)

(declare-fun lt!984416 () Unit!46013)

(assert (=> d!803154 (= lt!984442 lt!984416)))

(declare-fun lt!984420 () List!32047)

(assert (=> d!803154 (= lt!984048 lt!984420)))

(assert (=> d!803154 (= lt!984416 (lemmaSamePrefixThenSameSuffix!1130 Nil!31947 lt!984048 Nil!31947 lt!984420 (list!12062 input!5495)))))

(assert (=> d!803154 (= lt!984420 (getSuffix!1228 (list!12062 input!5495) Nil!31947))))

(declare-fun lt!984423 () Unit!46013)

(declare-fun lt!984413 () Unit!46013)

(assert (=> d!803154 (= lt!984423 lt!984413)))

(assert (=> d!803154 (isPrefix!2545 Nil!31947 (++!7907 Nil!31947 lt!984048))))

(assert (=> d!803154 (= lt!984413 (lemmaConcatTwoListThenFirstIsPrefix!1656 Nil!31947 lt!984048))))

(assert (=> d!803154 (= (++!7907 Nil!31947 lt!984048) (list!12062 input!5495))))

(assert (=> d!803154 (= (findLongestMatchInnerZipperFast!29 z!3597 Nil!31947 0 lt!984048 input!5495 lt!984072) lt!984436)))

(declare-fun b!2766227 () Bool)

(assert (=> b!2766227 (= e!1744131 call!180341)))

(declare-fun bm!180340 () Bool)

(assert (=> bm!180340 (= call!180347 (tail!4379 lt!984048))))

(declare-fun b!2766235 () Bool)

(assert (=> b!2766235 (= e!1744127 (list!12062 input!5495))))

(declare-fun bm!180341 () Bool)

(assert (=> bm!180341 (= call!180345 (nullableZipper!625 z!3597))))

(declare-fun bm!180342 () Bool)

(declare-fun c!448785 () Bool)

(assert (=> bm!180342 (= c!448785 c!448790)))

(assert (=> bm!180342 (= call!180340 (lemmaIsPrefixSameLengthThenSameList!453 (ite c!448790 lt!984431 lt!984425) Nil!31947 e!1744127))))

(assert (= (and d!803154 c!448787) b!2766233))

(assert (= (and d!803154 (not c!448787)) b!2766232))

(assert (= (and b!2766232 c!448790) b!2766226))

(assert (= (and b!2766232 (not c!448790)) b!2766230))

(assert (= (and b!2766226 c!448789) b!2766224))

(assert (= (and b!2766226 (not c!448789)) b!2766228))

(assert (= (and b!2766230 c!448788) b!2766234))

(assert (= (and b!2766230 (not c!448788)) b!2766229))

(assert (= (and b!2766230 c!448786) b!2766231))

(assert (= (and b!2766230 (not c!448786)) b!2766227))

(assert (= (or b!2766231 b!2766227) bm!180337))

(assert (= (or b!2766231 b!2766227) bm!180340))

(assert (= (or b!2766231 b!2766227) bm!180333))

(assert (= (or b!2766231 b!2766227) bm!180338))

(assert (= (or b!2766231 b!2766227) bm!180336))

(assert (= (or b!2766226 b!2766230) bm!180341))

(assert (= (or b!2766226 b!2766234) bm!180339))

(assert (= (or b!2766226 b!2766234) bm!180335))

(assert (= (or b!2766226 b!2766230) bm!180334))

(assert (= (or b!2766226 b!2766234) bm!180342))

(assert (= (and bm!180342 c!448785) b!2766225))

(assert (= (and bm!180342 (not c!448785)) b!2766235))

(declare-fun m!3189455 () Bool)

(assert (=> bm!180339 m!3189455))

(declare-fun m!3189457 () Bool)

(assert (=> bm!180338 m!3189457))

(declare-fun m!3189459 () Bool)

(assert (=> bm!180335 m!3189459))

(declare-fun m!3189461 () Bool)

(assert (=> bm!180336 m!3189461))

(assert (=> bm!180337 m!3189121))

(assert (=> b!2766235 m!3189071))

(declare-fun m!3189463 () Bool)

(assert (=> bm!180333 m!3189463))

(assert (=> d!803154 m!3189071))

(declare-fun m!3189465 () Bool)

(assert (=> d!803154 m!3189465))

(assert (=> d!803154 m!3189081))

(assert (=> d!803154 m!3189345))

(assert (=> d!803154 m!3189071))

(declare-fun m!3189467 () Bool)

(assert (=> d!803154 m!3189467))

(assert (=> d!803154 m!3189081))

(assert (=> d!803154 m!3189069))

(assert (=> d!803154 m!3189071))

(declare-fun m!3189469 () Bool)

(assert (=> d!803154 m!3189469))

(assert (=> d!803154 m!3189071))

(declare-fun m!3189471 () Bool)

(assert (=> d!803154 m!3189471))

(assert (=> d!803154 m!3189095))

(declare-fun m!3189473 () Bool)

(assert (=> b!2766230 m!3189473))

(declare-fun m!3189475 () Bool)

(assert (=> b!2766230 m!3189475))

(declare-fun m!3189477 () Bool)

(assert (=> b!2766230 m!3189477))

(declare-fun m!3189479 () Bool)

(assert (=> b!2766230 m!3189479))

(declare-fun m!3189481 () Bool)

(assert (=> b!2766230 m!3189481))

(assert (=> b!2766230 m!3189473))

(declare-fun m!3189483 () Bool)

(assert (=> b!2766230 m!3189483))

(declare-fun m!3189485 () Bool)

(assert (=> b!2766230 m!3189485))

(assert (=> b!2766230 m!3189137))

(assert (=> b!2766230 m!3189111))

(declare-fun m!3189487 () Bool)

(assert (=> b!2766230 m!3189487))

(declare-fun m!3189489 () Bool)

(assert (=> b!2766230 m!3189489))

(declare-fun m!3189491 () Bool)

(assert (=> b!2766230 m!3189491))

(declare-fun m!3189493 () Bool)

(assert (=> b!2766230 m!3189493))

(assert (=> b!2766230 m!3189097))

(declare-fun m!3189495 () Bool)

(assert (=> b!2766230 m!3189495))

(assert (=> b!2766230 m!3189071))

(declare-fun m!3189497 () Bool)

(assert (=> b!2766230 m!3189497))

(assert (=> b!2766230 m!3189477))

(assert (=> b!2766230 m!3189485))

(declare-fun m!3189499 () Bool)

(assert (=> b!2766230 m!3189499))

(assert (=> b!2766230 m!3189131))

(declare-fun m!3189501 () Bool)

(assert (=> b!2766230 m!3189501))

(assert (=> b!2766230 m!3189487))

(assert (=> b!2766230 m!3189121))

(declare-fun m!3189503 () Bool)

(assert (=> b!2766230 m!3189503))

(assert (=> bm!180341 m!3189163))

(assert (=> bm!180340 m!3189131))

(declare-fun m!3189505 () Bool)

(assert (=> bm!180334 m!3189505))

(declare-fun m!3189507 () Bool)

(assert (=> bm!180342 m!3189507))

(assert (=> b!2766234 m!3189071))

(assert (=> b!2766035 d!803154))

(declare-fun d!803156 () Bool)

(declare-fun lt!984448 () Int)

(assert (=> d!803156 (>= lt!984448 0)))

(declare-fun e!1744134 () Int)

(assert (=> d!803156 (= lt!984448 e!1744134)))

(declare-fun c!448793 () Bool)

(assert (=> d!803156 (= c!448793 ((_ is Nil!31947) lt!984048))))

(assert (=> d!803156 (= (size!24719 lt!984048) lt!984448)))

(declare-fun b!2766240 () Bool)

(assert (=> b!2766240 (= e!1744134 0)))

(declare-fun b!2766241 () Bool)

(assert (=> b!2766241 (= e!1744134 (+ 1 (size!24719 (t!228167 lt!984048))))))

(assert (= (and d!803156 c!448793) b!2766240))

(assert (= (and d!803156 (not c!448793)) b!2766241))

(declare-fun m!3189509 () Bool)

(assert (=> b!2766241 m!3189509))

(assert (=> b!2766050 d!803156))

(declare-fun d!803158 () Bool)

(declare-fun e!1744137 () Bool)

(assert (=> d!803158 e!1744137))

(declare-fun res!1157467 () Bool)

(assert (=> d!803158 (=> (not res!1157467) (not e!1744137))))

(declare-fun lt!984451 () tuple3!4762)

(assert (=> d!803158 (= res!1157467 (= (_1!18877 lt!984451) (derivationStepZipper!360 z!3597 lt!984070)))))

(declare-fun choose!16228 ((InoxSet Context!4578) C!16300 CacheUp!2362 CacheDown!2482) tuple3!4762)

(assert (=> d!803158 (= lt!984451 (choose!16228 z!3597 lt!984070 (_2!18875 lt!984054) (_3!2850 lt!984054)))))

(assert (=> d!803158 (= (derivationStepZipperMem!91 z!3597 lt!984070 (_2!18875 lt!984054) (_3!2850 lt!984054)) lt!984451)))

(declare-fun b!2766246 () Bool)

(declare-fun res!1157468 () Bool)

(assert (=> b!2766246 (=> (not res!1157468) (not e!1744137))))

(assert (=> b!2766246 (= res!1157468 (valid!2922 (_2!18877 lt!984451)))))

(declare-fun b!2766247 () Bool)

(assert (=> b!2766247 (= e!1744137 (valid!2923 (_3!2851 lt!984451)))))

(assert (= (and d!803158 res!1157467) b!2766246))

(assert (= (and b!2766246 res!1157468) b!2766247))

(declare-fun m!3189511 () Bool)

(assert (=> d!803158 m!3189511))

(declare-fun m!3189513 () Bool)

(assert (=> d!803158 m!3189513))

(declare-fun m!3189515 () Bool)

(assert (=> b!2766246 m!3189515))

(declare-fun m!3189517 () Bool)

(assert (=> b!2766247 m!3189517))

(assert (=> bm!180246 d!803158))

(declare-fun d!803160 () Bool)

(assert (=> d!803160 (= (valid!2923 (_3!2850 lt!984054)) (validCacheMapDown!391 (cache!3800 (_3!2850 lt!984054))))))

(declare-fun bs!500324 () Bool)

(assert (= bs!500324 d!803160))

(declare-fun m!3189519 () Bool)

(assert (=> bs!500324 m!3189519))

(assert (=> b!2766075 d!803160))

(declare-fun bs!500325 () Bool)

(declare-fun d!803162 () Bool)

(assert (= bs!500325 (and d!803162 d!803140)))

(declare-fun lambda!101538 () Int)

(assert (=> bs!500325 (not (= lambda!101538 lambda!101533))))

(declare-fun bs!500326 () Bool)

(assert (= bs!500326 (and d!803162 b!2766208)))

(assert (=> bs!500326 (not (= lambda!101538 lambda!101534))))

(declare-fun bs!500327 () Bool)

(assert (= bs!500327 (and d!803162 b!2766209)))

(assert (=> bs!500327 (not (= lambda!101538 lambda!101535))))

(declare-fun exists!970 ((InoxSet Context!4578) Int) Bool)

(assert (=> d!803162 (= (nullableZipper!625 z!3597) (exists!970 z!3597 lambda!101538))))

(declare-fun bs!500328 () Bool)

(assert (= bs!500328 d!803162))

(declare-fun m!3189521 () Bool)

(assert (=> bs!500328 m!3189521))

(assert (=> bm!180260 d!803162))

(declare-fun d!803164 () Bool)

(assert (=> d!803164 (= (valid!2923 cacheDown!939) (validCacheMapDown!391 (cache!3800 cacheDown!939)))))

(declare-fun bs!500329 () Bool)

(assert (= bs!500329 d!803164))

(declare-fun m!3189523 () Bool)

(assert (=> bs!500329 m!3189523))

(assert (=> b!2766036 d!803164))

(declare-fun d!803166 () Bool)

(declare-fun lt!984452 () Int)

(assert (=> d!803166 (>= lt!984452 0)))

(declare-fun e!1744138 () Int)

(assert (=> d!803166 (= lt!984452 e!1744138)))

(declare-fun c!448796 () Bool)

(assert (=> d!803166 (= c!448796 ((_ is Nil!31947) Nil!31947))))

(assert (=> d!803166 (= (size!24719 Nil!31947) lt!984452)))

(declare-fun b!2766248 () Bool)

(assert (=> b!2766248 (= e!1744138 0)))

(declare-fun b!2766249 () Bool)

(assert (=> b!2766249 (= e!1744138 (+ 1 (size!24719 (t!228167 Nil!31947))))))

(assert (= (and d!803166 c!448796) b!2766248))

(assert (= (and d!803166 (not c!448796)) b!2766249))

(declare-fun m!3189525 () Bool)

(assert (=> b!2766249 m!3189525))

(assert (=> b!2766064 d!803166))

(declare-fun d!803168 () Bool)

(assert (=> d!803168 (isPrefix!2545 lt!984048 lt!984048)))

(declare-fun lt!984455 () Unit!46013)

(declare-fun choose!16229 (List!32047 List!32047) Unit!46013)

(assert (=> d!803168 (= lt!984455 (choose!16229 lt!984048 lt!984048))))

(assert (=> d!803168 (= (lemmaIsPrefixRefl!1671 lt!984048 lt!984048) lt!984455)))

(declare-fun bs!500330 () Bool)

(assert (= bs!500330 d!803168))

(assert (=> bs!500330 m!3189147))

(declare-fun m!3189527 () Bool)

(assert (=> bs!500330 m!3189527))

(assert (=> bm!180254 d!803168))

(assert (=> bm!180247 d!803118))

(declare-fun d!803170 () Bool)

(assert (=> d!803170 (= (++!7907 (++!7907 Nil!31947 (Cons!31947 lt!984070 Nil!31947)) lt!984076) lt!984048)))

(declare-fun lt!984458 () Unit!46013)

(declare-fun choose!16230 (List!32047 C!16300 List!32047 List!32047) Unit!46013)

(assert (=> d!803170 (= lt!984458 (choose!16230 Nil!31947 lt!984070 lt!984076 lt!984048))))

(assert (=> d!803170 (= (++!7907 Nil!31947 (Cons!31947 lt!984070 lt!984076)) lt!984048)))

(assert (=> d!803170 (= (lemmaMoveElementToOtherListKeepsConcatEq!862 Nil!31947 lt!984070 lt!984076 lt!984048) lt!984458)))

(declare-fun bs!500331 () Bool)

(assert (= bs!500331 d!803170))

(assert (=> bs!500331 m!3189205))

(assert (=> bs!500331 m!3189205))

(declare-fun m!3189529 () Bool)

(assert (=> bs!500331 m!3189529))

(declare-fun m!3189531 () Bool)

(assert (=> bs!500331 m!3189531))

(declare-fun m!3189533 () Bool)

(assert (=> bs!500331 m!3189533))

(assert (=> b!2766063 d!803170))

(declare-fun d!803172 () Bool)

(assert (=> d!803172 (<= (size!24719 Nil!31947) (size!24719 lt!984048))))

(declare-fun lt!984461 () Unit!46013)

(declare-fun choose!16231 (List!32047 List!32047) Unit!46013)

(assert (=> d!803172 (= lt!984461 (choose!16231 Nil!31947 lt!984048))))

(assert (=> d!803172 (isPrefix!2545 Nil!31947 lt!984048)))

(assert (=> d!803172 (= (lemmaIsPrefixThenSmallerEqSize!253 Nil!31947 lt!984048) lt!984461)))

(declare-fun bs!500332 () Bool)

(assert (= bs!500332 d!803172))

(assert (=> bs!500332 m!3189137))

(assert (=> bs!500332 m!3189119))

(declare-fun m!3189535 () Bool)

(assert (=> bs!500332 m!3189535))

(assert (=> bs!500332 m!3189371))

(assert (=> b!2766063 d!803172))

(declare-fun d!803174 () Bool)

(declare-fun e!1744140 () Bool)

(assert (=> d!803174 e!1744140))

(declare-fun res!1157469 () Bool)

(assert (=> d!803174 (=> (not res!1157469) (not e!1744140))))

(declare-fun lt!984462 () List!32047)

(assert (=> d!803174 (= res!1157469 (= (content!4498 lt!984462) ((_ map or) (content!4498 Nil!31947) (content!4498 (Cons!31947 (head!6141 lt!984060) Nil!31947)))))))

(declare-fun e!1744139 () List!32047)

(assert (=> d!803174 (= lt!984462 e!1744139)))

(declare-fun c!448797 () Bool)

(assert (=> d!803174 (= c!448797 ((_ is Nil!31947) Nil!31947))))

(assert (=> d!803174 (= (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947)) lt!984462)))

(declare-fun b!2766250 () Bool)

(assert (=> b!2766250 (= e!1744139 (Cons!31947 (head!6141 lt!984060) Nil!31947))))

(declare-fun b!2766251 () Bool)

(assert (=> b!2766251 (= e!1744139 (Cons!31947 (h!37367 Nil!31947) (++!7907 (t!228167 Nil!31947) (Cons!31947 (head!6141 lt!984060) Nil!31947))))))

(declare-fun b!2766253 () Bool)

(assert (=> b!2766253 (= e!1744140 (or (not (= (Cons!31947 (head!6141 lt!984060) Nil!31947) Nil!31947)) (= lt!984462 Nil!31947)))))

(declare-fun b!2766252 () Bool)

(declare-fun res!1157470 () Bool)

(assert (=> b!2766252 (=> (not res!1157470) (not e!1744140))))

(assert (=> b!2766252 (= res!1157470 (= (size!24719 lt!984462) (+ (size!24719 Nil!31947) (size!24719 (Cons!31947 (head!6141 lt!984060) Nil!31947)))))))

(assert (= (and d!803174 c!448797) b!2766250))

(assert (= (and d!803174 (not c!448797)) b!2766251))

(assert (= (and d!803174 res!1157469) b!2766252))

(assert (= (and b!2766252 res!1157470) b!2766253))

(declare-fun m!3189537 () Bool)

(assert (=> d!803174 m!3189537))

(assert (=> d!803174 m!3189403))

(declare-fun m!3189539 () Bool)

(assert (=> d!803174 m!3189539))

(declare-fun m!3189541 () Bool)

(assert (=> b!2766251 m!3189541))

(declare-fun m!3189543 () Bool)

(assert (=> b!2766252 m!3189543))

(assert (=> b!2766252 m!3189137))

(declare-fun m!3189545 () Bool)

(assert (=> b!2766252 m!3189545))

(assert (=> b!2766063 d!803174))

(declare-fun d!803176 () Bool)

(assert (=> d!803176 (isPrefix!2545 (++!7907 Nil!31947 (Cons!31947 (head!6141 (getSuffix!1228 lt!984048 Nil!31947)) Nil!31947)) lt!984048)))

(declare-fun lt!984465 () Unit!46013)

(declare-fun choose!16232 (List!32047 List!32047) Unit!46013)

(assert (=> d!803176 (= lt!984465 (choose!16232 Nil!31947 lt!984048))))

(assert (=> d!803176 (isPrefix!2545 Nil!31947 lt!984048)))

(assert (=> d!803176 (= (lemmaAddHeadSuffixToPrefixStillPrefix!450 Nil!31947 lt!984048) lt!984465)))

(declare-fun bs!500333 () Bool)

(assert (= bs!500333 d!803176))

(assert (=> bs!500333 m!3189375))

(assert (=> bs!500333 m!3189375))

(assert (=> bs!500333 m!3189377))

(assert (=> bs!500333 m!3189371))

(assert (=> bs!500333 m!3189085))

(declare-fun m!3189547 () Bool)

(assert (=> bs!500333 m!3189547))

(assert (=> bs!500333 m!3189085))

(assert (=> bs!500333 m!3189383))

(assert (=> b!2766063 d!803176))

(declare-fun d!803178 () Bool)

(declare-fun lt!984468 () C!16300)

(assert (=> d!803178 (= lt!984468 (apply!7487 (list!12062 input!5495) 0))))

(declare-fun apply!7488 (Conc!9953 Int) C!16300)

(assert (=> d!803178 (= lt!984468 (apply!7488 (c!448725 input!5495) 0))))

(declare-fun e!1744143 () Bool)

(assert (=> d!803178 e!1744143))

(declare-fun res!1157473 () Bool)

(assert (=> d!803178 (=> (not res!1157473) (not e!1744143))))

(assert (=> d!803178 (= res!1157473 (<= 0 0))))

(assert (=> d!803178 (= (apply!7486 input!5495 0) lt!984468)))

(declare-fun b!2766256 () Bool)

(assert (=> b!2766256 (= e!1744143 (< 0 (size!24718 input!5495)))))

(assert (= (and d!803178 res!1157473) b!2766256))

(assert (=> d!803178 m!3189071))

(assert (=> d!803178 m!3189071))

(declare-fun m!3189549 () Bool)

(assert (=> d!803178 m!3189549))

(declare-fun m!3189551 () Bool)

(assert (=> d!803178 m!3189551))

(assert (=> b!2766256 m!3189097))

(assert (=> b!2766063 d!803178))

(declare-fun b!2766257 () Bool)

(declare-fun e!1744144 () Bool)

(declare-fun e!1744146 () Bool)

(assert (=> b!2766257 (= e!1744144 e!1744146)))

(declare-fun res!1157475 () Bool)

(assert (=> b!2766257 (=> (not res!1157475) (not e!1744146))))

(assert (=> b!2766257 (= res!1157475 (not ((_ is Nil!31947) lt!984048)))))

(declare-fun b!2766258 () Bool)

(declare-fun res!1157477 () Bool)

(assert (=> b!2766258 (=> (not res!1157477) (not e!1744146))))

(assert (=> b!2766258 (= res!1157477 (= (head!6141 (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947))) (head!6141 lt!984048)))))

(declare-fun b!2766259 () Bool)

(assert (=> b!2766259 (= e!1744146 (isPrefix!2545 (tail!4379 (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947))) (tail!4379 lt!984048)))))

(declare-fun d!803180 () Bool)

(declare-fun e!1744145 () Bool)

(assert (=> d!803180 e!1744145))

(declare-fun res!1157476 () Bool)

(assert (=> d!803180 (=> res!1157476 e!1744145)))

(declare-fun lt!984469 () Bool)

(assert (=> d!803180 (= res!1157476 (not lt!984469))))

(assert (=> d!803180 (= lt!984469 e!1744144)))

(declare-fun res!1157474 () Bool)

(assert (=> d!803180 (=> res!1157474 e!1744144)))

(assert (=> d!803180 (= res!1157474 ((_ is Nil!31947) (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947))))))

(assert (=> d!803180 (= (isPrefix!2545 (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947)) lt!984048) lt!984469)))

(declare-fun b!2766260 () Bool)

(assert (=> b!2766260 (= e!1744145 (>= (size!24719 lt!984048) (size!24719 (++!7907 Nil!31947 (Cons!31947 (head!6141 lt!984060) Nil!31947)))))))

(assert (= (and d!803180 (not res!1157474)) b!2766257))

(assert (= (and b!2766257 res!1157475) b!2766258))

(assert (= (and b!2766258 res!1157477) b!2766259))

(assert (= (and d!803180 (not res!1157476)) b!2766260))

(assert (=> b!2766258 m!3189107))

(declare-fun m!3189553 () Bool)

(assert (=> b!2766258 m!3189553))

(assert (=> b!2766258 m!3189183))

(assert (=> b!2766259 m!3189107))

(declare-fun m!3189555 () Bool)

(assert (=> b!2766259 m!3189555))

(assert (=> b!2766259 m!3189131))

(assert (=> b!2766259 m!3189555))

(assert (=> b!2766259 m!3189131))

(declare-fun m!3189557 () Bool)

(assert (=> b!2766259 m!3189557))

(assert (=> b!2766260 m!3189119))

(assert (=> b!2766260 m!3189107))

(declare-fun m!3189559 () Bool)

(assert (=> b!2766260 m!3189559))

(assert (=> b!2766063 d!803180))

(assert (=> b!2766063 d!803156))

(assert (=> b!2766063 d!803166))

(declare-fun d!803182 () Bool)

(declare-fun e!1744148 () Bool)

(assert (=> d!803182 e!1744148))

(declare-fun res!1157478 () Bool)

(assert (=> d!803182 (=> (not res!1157478) (not e!1744148))))

(declare-fun lt!984470 () List!32047)

(assert (=> d!803182 (= res!1157478 (= (content!4498 lt!984470) ((_ map or) (content!4498 lt!984062) (content!4498 lt!984076))))))

(declare-fun e!1744147 () List!32047)

(assert (=> d!803182 (= lt!984470 e!1744147)))

(declare-fun c!448798 () Bool)

(assert (=> d!803182 (= c!448798 ((_ is Nil!31947) lt!984062))))

(assert (=> d!803182 (= (++!7907 lt!984062 lt!984076) lt!984470)))

(declare-fun b!2766261 () Bool)

(assert (=> b!2766261 (= e!1744147 lt!984076)))

(declare-fun b!2766262 () Bool)

(assert (=> b!2766262 (= e!1744147 (Cons!31947 (h!37367 lt!984062) (++!7907 (t!228167 lt!984062) lt!984076)))))

(declare-fun b!2766264 () Bool)

(assert (=> b!2766264 (= e!1744148 (or (not (= lt!984076 Nil!31947)) (= lt!984470 lt!984062)))))

(declare-fun b!2766263 () Bool)

(declare-fun res!1157479 () Bool)

(assert (=> b!2766263 (=> (not res!1157479) (not e!1744148))))

(assert (=> b!2766263 (= res!1157479 (= (size!24719 lt!984470) (+ (size!24719 lt!984062) (size!24719 lt!984076))))))

(assert (= (and d!803182 c!448798) b!2766261))

(assert (= (and d!803182 (not c!448798)) b!2766262))

(assert (= (and d!803182 res!1157478) b!2766263))

(assert (= (and b!2766263 res!1157479) b!2766264))

(declare-fun m!3189561 () Bool)

(assert (=> d!803182 m!3189561))

(declare-fun m!3189563 () Bool)

(assert (=> d!803182 m!3189563))

(declare-fun m!3189565 () Bool)

(assert (=> d!803182 m!3189565))

(declare-fun m!3189567 () Bool)

(assert (=> b!2766262 m!3189567))

(declare-fun m!3189569 () Bool)

(assert (=> b!2766263 m!3189569))

(assert (=> b!2766263 m!3189309))

(declare-fun m!3189571 () Bool)

(assert (=> b!2766263 m!3189571))

(assert (=> b!2766063 d!803182))

(declare-fun d!803184 () Bool)

(declare-fun e!1744150 () Bool)

(assert (=> d!803184 e!1744150))

(declare-fun res!1157480 () Bool)

(assert (=> d!803184 (=> (not res!1157480) (not e!1744150))))

(declare-fun lt!984471 () List!32047)

(assert (=> d!803184 (= res!1157480 (= (content!4498 lt!984471) ((_ map or) (content!4498 Nil!31947) (content!4498 (Cons!31947 lt!984070 Nil!31947)))))))

(declare-fun e!1744149 () List!32047)

(assert (=> d!803184 (= lt!984471 e!1744149)))

(declare-fun c!448799 () Bool)

(assert (=> d!803184 (= c!448799 ((_ is Nil!31947) Nil!31947))))

(assert (=> d!803184 (= (++!7907 Nil!31947 (Cons!31947 lt!984070 Nil!31947)) lt!984471)))

(declare-fun b!2766265 () Bool)

(assert (=> b!2766265 (= e!1744149 (Cons!31947 lt!984070 Nil!31947))))

(declare-fun b!2766266 () Bool)

(assert (=> b!2766266 (= e!1744149 (Cons!31947 (h!37367 Nil!31947) (++!7907 (t!228167 Nil!31947) (Cons!31947 lt!984070 Nil!31947))))))

(declare-fun b!2766268 () Bool)

(assert (=> b!2766268 (= e!1744150 (or (not (= (Cons!31947 lt!984070 Nil!31947) Nil!31947)) (= lt!984471 Nil!31947)))))

(declare-fun b!2766267 () Bool)

(declare-fun res!1157481 () Bool)

(assert (=> b!2766267 (=> (not res!1157481) (not e!1744150))))

(assert (=> b!2766267 (= res!1157481 (= (size!24719 lt!984471) (+ (size!24719 Nil!31947) (size!24719 (Cons!31947 lt!984070 Nil!31947)))))))

(assert (= (and d!803184 c!448799) b!2766265))

(assert (= (and d!803184 (not c!448799)) b!2766266))

(assert (= (and d!803184 res!1157480) b!2766267))

(assert (= (and b!2766267 res!1157481) b!2766268))

(declare-fun m!3189573 () Bool)

(assert (=> d!803184 m!3189573))

(assert (=> d!803184 m!3189403))

(declare-fun m!3189575 () Bool)

(assert (=> d!803184 m!3189575))

(declare-fun m!3189577 () Bool)

(assert (=> b!2766266 m!3189577))

(declare-fun m!3189579 () Bool)

(assert (=> b!2766267 m!3189579))

(assert (=> b!2766267 m!3189137))

(declare-fun m!3189581 () Bool)

(assert (=> b!2766267 m!3189581))

(assert (=> b!2766063 d!803184))

(declare-fun d!803186 () Bool)

(declare-fun lt!984474 () C!16300)

(declare-fun contains!5992 (List!32047 C!16300) Bool)

(assert (=> d!803186 (contains!5992 lt!984048 lt!984474)))

(declare-fun e!1744156 () C!16300)

(assert (=> d!803186 (= lt!984474 e!1744156)))

(declare-fun c!448802 () Bool)

(assert (=> d!803186 (= c!448802 (= 0 0))))

(declare-fun e!1744155 () Bool)

(assert (=> d!803186 e!1744155))

(declare-fun res!1157484 () Bool)

(assert (=> d!803186 (=> (not res!1157484) (not e!1744155))))

(assert (=> d!803186 (= res!1157484 (<= 0 0))))

(assert (=> d!803186 (= (apply!7487 lt!984048 0) lt!984474)))

(declare-fun b!2766275 () Bool)

(assert (=> b!2766275 (= e!1744155 (< 0 (size!24719 lt!984048)))))

(declare-fun b!2766276 () Bool)

(assert (=> b!2766276 (= e!1744156 (head!6141 lt!984048))))

(declare-fun b!2766277 () Bool)

(assert (=> b!2766277 (= e!1744156 (apply!7487 (tail!4379 lt!984048) (- 0 1)))))

(assert (= (and d!803186 res!1157484) b!2766275))

(assert (= (and d!803186 c!448802) b!2766276))

(assert (= (and d!803186 (not c!448802)) b!2766277))

(declare-fun m!3189583 () Bool)

(assert (=> d!803186 m!3189583))

(assert (=> b!2766275 m!3189119))

(assert (=> b!2766276 m!3189183))

(assert (=> b!2766277 m!3189131))

(assert (=> b!2766277 m!3189131))

(declare-fun m!3189585 () Bool)

(assert (=> b!2766277 m!3189585))

(assert (=> b!2766063 d!803186))

(declare-fun d!803188 () Bool)

(assert (=> d!803188 (and (= lt!984050 Nil!31947) (= lt!984112 lt!984048))))

(declare-fun lt!984477 () Unit!46013)

(declare-fun choose!16233 (List!32047 List!32047 List!32047 List!32047) Unit!46013)

(assert (=> d!803188 (= lt!984477 (choose!16233 lt!984050 lt!984112 Nil!31947 lt!984048))))

(assert (=> d!803188 (= (++!7907 lt!984050 lt!984112) (++!7907 Nil!31947 lt!984048))))

(assert (=> d!803188 (= (lemmaConcatSameAndSameSizesThenSameLists!331 lt!984050 lt!984112 Nil!31947 lt!984048) lt!984477)))

(declare-fun bs!500334 () Bool)

(assert (= bs!500334 d!803188))

(declare-fun m!3189587 () Bool)

(assert (=> bs!500334 m!3189587))

(declare-fun m!3189589 () Bool)

(assert (=> bs!500334 m!3189589))

(assert (=> bs!500334 m!3189081))

(assert (=> b!2766063 d!803188))

(declare-fun d!803190 () Bool)

(assert (=> d!803190 (= (tail!4379 lt!984048) (t!228167 lt!984048))))

(assert (=> b!2766063 d!803190))

(declare-fun d!803192 () Bool)

(assert (=> d!803192 (= (list!12062 (_1!18879 lt!984049)) (list!12063 (c!448725 (_1!18879 lt!984049))))))

(declare-fun bs!500335 () Bool)

(assert (= bs!500335 d!803192))

(declare-fun m!3189591 () Bool)

(assert (=> bs!500335 m!3189591))

(assert (=> b!2766063 d!803192))

(declare-fun d!803194 () Bool)

(assert (=> d!803194 (= (list!12062 (_2!18879 lt!984049)) (list!12063 (c!448725 (_2!18879 lt!984049))))))

(declare-fun bs!500336 () Bool)

(assert (= bs!500336 d!803194))

(declare-fun m!3189593 () Bool)

(assert (=> bs!500336 m!3189593))

(assert (=> b!2766063 d!803194))

(declare-fun b!2766296 () Bool)

(declare-fun e!1744168 () Int)

(declare-fun e!1744167 () Int)

(assert (=> b!2766296 (= e!1744168 e!1744167)))

(declare-fun c!448814 () Bool)

(declare-fun call!180350 () Int)

(assert (=> b!2766296 (= c!448814 (>= 0 call!180350))))

(declare-fun bm!180345 () Bool)

(assert (=> bm!180345 (= call!180350 (size!24719 lt!984048))))

(declare-fun b!2766297 () Bool)

(declare-fun e!1744171 () List!32047)

(assert (=> b!2766297 (= e!1744171 Nil!31947)))

(declare-fun b!2766298 () Bool)

(assert (=> b!2766298 (= e!1744167 (- call!180350 0))))

(declare-fun b!2766299 () Bool)

(assert (=> b!2766299 (= e!1744167 0)))

(declare-fun b!2766300 () Bool)

(declare-fun e!1744169 () List!32047)

(assert (=> b!2766300 (= e!1744171 e!1744169)))

(declare-fun c!448812 () Bool)

(assert (=> b!2766300 (= c!448812 (<= 0 0))))

(declare-fun b!2766302 () Bool)

(declare-fun e!1744170 () Bool)

(declare-fun lt!984480 () List!32047)

(assert (=> b!2766302 (= e!1744170 (= (size!24719 lt!984480) e!1744168))))

(declare-fun c!448813 () Bool)

(assert (=> b!2766302 (= c!448813 (<= 0 0))))

(declare-fun b!2766303 () Bool)

(assert (=> b!2766303 (= e!1744169 lt!984048)))

(declare-fun b!2766304 () Bool)

(assert (=> b!2766304 (= e!1744168 call!180350)))

(declare-fun b!2766301 () Bool)

(assert (=> b!2766301 (= e!1744169 (drop!1699 (t!228167 lt!984048) (- 0 1)))))

(declare-fun d!803196 () Bool)

(assert (=> d!803196 e!1744170))

(declare-fun res!1157487 () Bool)

(assert (=> d!803196 (=> (not res!1157487) (not e!1744170))))

(assert (=> d!803196 (= res!1157487 (= ((_ map implies) (content!4498 lt!984480) (content!4498 lt!984048)) ((as const (InoxSet C!16300)) true)))))

(assert (=> d!803196 (= lt!984480 e!1744171)))

(declare-fun c!448811 () Bool)

(assert (=> d!803196 (= c!448811 ((_ is Nil!31947) lt!984048))))

(assert (=> d!803196 (= (drop!1699 lt!984048 0) lt!984480)))

(assert (= (and d!803196 c!448811) b!2766297))

(assert (= (and d!803196 (not c!448811)) b!2766300))

(assert (= (and b!2766300 c!448812) b!2766303))

(assert (= (and b!2766300 (not c!448812)) b!2766301))

(assert (= (and d!803196 res!1157487) b!2766302))

(assert (= (and b!2766302 c!448813) b!2766304))

(assert (= (and b!2766302 (not c!448813)) b!2766296))

(assert (= (and b!2766296 c!448814) b!2766299))

(assert (= (and b!2766296 (not c!448814)) b!2766298))

(assert (= (or b!2766304 b!2766296 b!2766298) bm!180345))

(assert (=> bm!180345 m!3189119))

(declare-fun m!3189595 () Bool)

(assert (=> b!2766302 m!3189595))

(declare-fun m!3189597 () Bool)

(assert (=> b!2766301 m!3189597))

(declare-fun m!3189599 () Bool)

(assert (=> d!803196 m!3189599))

(assert (=> d!803196 m!3189405))

(assert (=> b!2766063 d!803196))

(declare-fun d!803198 () Bool)

(assert (=> d!803198 (= (head!6141 lt!984060) (h!37367 lt!984060))))

(assert (=> b!2766063 d!803198))

(declare-fun d!803200 () Bool)

(assert (=> d!803200 (= (head!6141 (drop!1699 lt!984048 0)) (h!37367 (drop!1699 lt!984048 0)))))

(assert (=> b!2766063 d!803200))

(declare-fun d!803202 () Bool)

(declare-fun e!1744172 () Bool)

(assert (=> d!803202 e!1744172))

(declare-fun res!1157489 () Bool)

(assert (=> d!803202 (=> (not res!1157489) (not e!1744172))))

(declare-fun lt!984481 () tuple2!32052)

(assert (=> d!803202 (= res!1157489 (isBalanced!3034 (c!448725 (_1!18879 lt!984481))))))

(declare-fun lt!984482 () tuple2!32054)

(assert (=> d!803202 (= lt!984481 (tuple2!32053 (BalanceConc!19521 (_1!18880 lt!984482)) (BalanceConc!19521 (_2!18880 lt!984482))))))

(assert (=> d!803202 (= lt!984482 (splitAt!106 (c!448725 input!5495) 0))))

(assert (=> d!803202 (isBalanced!3034 (c!448725 input!5495))))

(assert (=> d!803202 (= (splitAt!105 input!5495 0) lt!984481)))

(declare-fun b!2766305 () Bool)

(declare-fun res!1157488 () Bool)

(assert (=> b!2766305 (=> (not res!1157488) (not e!1744172))))

(assert (=> b!2766305 (= res!1157488 (isBalanced!3034 (c!448725 (_2!18879 lt!984481))))))

(declare-fun b!2766306 () Bool)

(assert (=> b!2766306 (= e!1744172 (= (tuple2!32051 (list!12062 (_1!18879 lt!984481)) (list!12062 (_2!18879 lt!984481))) (splitAtIndex!49 (list!12062 input!5495) 0)))))

(assert (= (and d!803202 res!1157489) b!2766305))

(assert (= (and b!2766305 res!1157488) b!2766306))

(declare-fun m!3189601 () Bool)

(assert (=> d!803202 m!3189601))

(declare-fun m!3189603 () Bool)

(assert (=> d!803202 m!3189603))

(assert (=> d!803202 m!3189429))

(declare-fun m!3189605 () Bool)

(assert (=> b!2766305 m!3189605))

(declare-fun m!3189607 () Bool)

(assert (=> b!2766306 m!3189607))

(declare-fun m!3189609 () Bool)

(assert (=> b!2766306 m!3189609))

(assert (=> b!2766306 m!3189071))

(assert (=> b!2766306 m!3189071))

(declare-fun m!3189611 () Bool)

(assert (=> b!2766306 m!3189611))

(assert (=> b!2766063 d!803202))

(declare-fun d!803204 () Bool)

(assert (=> d!803204 (= (head!6141 (drop!1699 lt!984048 0)) (apply!7487 lt!984048 0))))

(declare-fun lt!984485 () Unit!46013)

(declare-fun choose!16234 (List!32047 Int) Unit!46013)

(assert (=> d!803204 (= lt!984485 (choose!16234 lt!984048 0))))

(declare-fun e!1744175 () Bool)

(assert (=> d!803204 e!1744175))

(declare-fun res!1157492 () Bool)

(assert (=> d!803204 (=> (not res!1157492) (not e!1744175))))

(assert (=> d!803204 (= res!1157492 (>= 0 0))))

(assert (=> d!803204 (= (lemmaDropApply!905 lt!984048 0) lt!984485)))

(declare-fun b!2766309 () Bool)

(assert (=> b!2766309 (= e!1744175 (< 0 (size!24719 lt!984048)))))

(assert (= (and d!803204 res!1157492) b!2766309))

(assert (=> d!803204 m!3189113))

(assert (=> d!803204 m!3189113))

(assert (=> d!803204 m!3189115))

(assert (=> d!803204 m!3189127))

(declare-fun m!3189613 () Bool)

(assert (=> d!803204 m!3189613))

(assert (=> b!2766309 m!3189119))

(assert (=> b!2766063 d!803204))

(assert (=> bm!180253 d!803118))

(assert (=> bm!180248 d!803106))

(assert (=> b!2766065 d!803172))

(assert (=> b!2766065 d!803190))

(assert (=> b!2766065 d!803174))

(assert (=> b!2766065 d!803176))

(declare-fun d!803206 () Bool)

(assert (=> d!803206 (= (++!7907 (++!7907 Nil!31947 (Cons!31947 lt!984055 Nil!31947)) lt!984091) lt!984048)))

(declare-fun lt!984486 () Unit!46013)

(assert (=> d!803206 (= lt!984486 (choose!16230 Nil!31947 lt!984055 lt!984091 lt!984048))))

(assert (=> d!803206 (= (++!7907 Nil!31947 (Cons!31947 lt!984055 lt!984091)) lt!984048)))

(assert (=> d!803206 (= (lemmaMoveElementToOtherListKeepsConcatEq!862 Nil!31947 lt!984055 lt!984091 lt!984048) lt!984486)))

(declare-fun bs!500337 () Bool)

(assert (= bs!500337 d!803206))

(assert (=> bs!500337 m!3189187))

(assert (=> bs!500337 m!3189187))

(declare-fun m!3189615 () Bool)

(assert (=> bs!500337 m!3189615))

(declare-fun m!3189617 () Bool)

(assert (=> bs!500337 m!3189617))

(declare-fun m!3189619 () Bool)

(assert (=> bs!500337 m!3189619))

(assert (=> b!2766065 d!803206))

(assert (=> b!2766065 d!803180))

(assert (=> b!2766065 d!803156))

(declare-fun d!803208 () Bool)

(assert (=> d!803208 (= (head!6141 lt!984048) (h!37367 lt!984048))))

(assert (=> b!2766065 d!803208))

(declare-fun d!803210 () Bool)

(declare-fun e!1744177 () Bool)

(assert (=> d!803210 e!1744177))

(declare-fun res!1157493 () Bool)

(assert (=> d!803210 (=> (not res!1157493) (not e!1744177))))

(declare-fun lt!984487 () List!32047)

(assert (=> d!803210 (= res!1157493 (= (content!4498 lt!984487) ((_ map or) (content!4498 lt!984088) (content!4498 lt!984091))))))

(declare-fun e!1744176 () List!32047)

(assert (=> d!803210 (= lt!984487 e!1744176)))

(declare-fun c!448815 () Bool)

(assert (=> d!803210 (= c!448815 ((_ is Nil!31947) lt!984088))))

(assert (=> d!803210 (= (++!7907 lt!984088 lt!984091) lt!984487)))

(declare-fun b!2766310 () Bool)

(assert (=> b!2766310 (= e!1744176 lt!984091)))

(declare-fun b!2766311 () Bool)

(assert (=> b!2766311 (= e!1744176 (Cons!31947 (h!37367 lt!984088) (++!7907 (t!228167 lt!984088) lt!984091)))))

(declare-fun b!2766313 () Bool)

(assert (=> b!2766313 (= e!1744177 (or (not (= lt!984091 Nil!31947)) (= lt!984487 lt!984088)))))

(declare-fun b!2766312 () Bool)

(declare-fun res!1157494 () Bool)

(assert (=> b!2766312 (=> (not res!1157494) (not e!1744177))))

(assert (=> b!2766312 (= res!1157494 (= (size!24719 lt!984487) (+ (size!24719 lt!984088) (size!24719 lt!984091))))))

(assert (= (and d!803210 c!448815) b!2766310))

(assert (= (and d!803210 (not c!448815)) b!2766311))

(assert (= (and d!803210 res!1157493) b!2766312))

(assert (= (and b!2766312 res!1157494) b!2766313))

(declare-fun m!3189621 () Bool)

(assert (=> d!803210 m!3189621))

(declare-fun m!3189623 () Bool)

(assert (=> d!803210 m!3189623))

(declare-fun m!3189625 () Bool)

(assert (=> d!803210 m!3189625))

(declare-fun m!3189627 () Bool)

(assert (=> b!2766311 m!3189627))

(declare-fun m!3189629 () Bool)

(assert (=> b!2766312 m!3189629))

(assert (=> b!2766312 m!3189233))

(declare-fun m!3189631 () Bool)

(assert (=> b!2766312 m!3189631))

(assert (=> b!2766065 d!803210))

(assert (=> b!2766065 d!803198))

(declare-fun d!803212 () Bool)

(declare-fun e!1744179 () Bool)

(assert (=> d!803212 e!1744179))

(declare-fun res!1157495 () Bool)

(assert (=> d!803212 (=> (not res!1157495) (not e!1744179))))

(declare-fun lt!984488 () List!32047)

(assert (=> d!803212 (= res!1157495 (= (content!4498 lt!984488) ((_ map or) (content!4498 Nil!31947) (content!4498 (Cons!31947 lt!984055 Nil!31947)))))))

(declare-fun e!1744178 () List!32047)

(assert (=> d!803212 (= lt!984488 e!1744178)))

(declare-fun c!448816 () Bool)

(assert (=> d!803212 (= c!448816 ((_ is Nil!31947) Nil!31947))))

(assert (=> d!803212 (= (++!7907 Nil!31947 (Cons!31947 lt!984055 Nil!31947)) lt!984488)))

(declare-fun b!2766314 () Bool)

(assert (=> b!2766314 (= e!1744178 (Cons!31947 lt!984055 Nil!31947))))

(declare-fun b!2766315 () Bool)

(assert (=> b!2766315 (= e!1744178 (Cons!31947 (h!37367 Nil!31947) (++!7907 (t!228167 Nil!31947) (Cons!31947 lt!984055 Nil!31947))))))

(declare-fun b!2766317 () Bool)

(assert (=> b!2766317 (= e!1744179 (or (not (= (Cons!31947 lt!984055 Nil!31947) Nil!31947)) (= lt!984488 Nil!31947)))))

(declare-fun b!2766316 () Bool)

(declare-fun res!1157496 () Bool)

(assert (=> b!2766316 (=> (not res!1157496) (not e!1744179))))

(assert (=> b!2766316 (= res!1157496 (= (size!24719 lt!984488) (+ (size!24719 Nil!31947) (size!24719 (Cons!31947 lt!984055 Nil!31947)))))))

(assert (= (and d!803212 c!448816) b!2766314))

(assert (= (and d!803212 (not c!448816)) b!2766315))

(assert (= (and d!803212 res!1157495) b!2766316))

(assert (= (and b!2766316 res!1157496) b!2766317))

(declare-fun m!3189633 () Bool)

(assert (=> d!803212 m!3189633))

(assert (=> d!803212 m!3189403))

(declare-fun m!3189635 () Bool)

(assert (=> d!803212 m!3189635))

(declare-fun m!3189637 () Bool)

(assert (=> b!2766315 m!3189637))

(declare-fun m!3189639 () Bool)

(assert (=> b!2766316 m!3189639))

(assert (=> b!2766316 m!3189137))

(declare-fun m!3189641 () Bool)

(assert (=> b!2766316 m!3189641))

(assert (=> b!2766065 d!803212))

(assert (=> b!2766065 d!803166))

(declare-fun d!803214 () Bool)

(assert (=> d!803214 (= (valid!2922 (ite c!448718 (_2!18875 lt!984103) (_2!18875 lt!984089))) (validCacheMapUp!360 (cache!3799 (ite c!448718 (_2!18875 lt!984103) (_2!18875 lt!984089)))))))

(declare-fun bs!500338 () Bool)

(assert (= bs!500338 d!803214))

(declare-fun m!3189643 () Bool)

(assert (=> bs!500338 m!3189643))

(assert (=> bm!180255 d!803214))

(assert (=> b!2766038 d!803154))

(assert (=> bm!180261 d!803168))

(assert (=> b!2766054 d!803154))

(declare-fun d!803216 () Bool)

(declare-fun c!448819 () Bool)

(assert (=> d!803216 (= c!448819 ((_ is Node!9953) (c!448725 input!5495)))))

(declare-fun e!1744184 () Bool)

(assert (=> d!803216 (= (inv!43380 (c!448725 input!5495)) e!1744184)))

(declare-fun b!2766324 () Bool)

(declare-fun inv!43382 (Conc!9953) Bool)

(assert (=> b!2766324 (= e!1744184 (inv!43382 (c!448725 input!5495)))))

(declare-fun b!2766325 () Bool)

(declare-fun e!1744185 () Bool)

(assert (=> b!2766325 (= e!1744184 e!1744185)))

(declare-fun res!1157499 () Bool)

(assert (=> b!2766325 (= res!1157499 (not ((_ is Leaf!15157) (c!448725 input!5495))))))

(assert (=> b!2766325 (=> res!1157499 e!1744185)))

(declare-fun b!2766326 () Bool)

(declare-fun inv!43383 (Conc!9953) Bool)

(assert (=> b!2766326 (= e!1744185 (inv!43383 (c!448725 input!5495)))))

(assert (= (and d!803216 c!448819) b!2766324))

(assert (= (and d!803216 (not c!448819)) b!2766325))

(assert (= (and b!2766325 (not res!1157499)) b!2766326))

(declare-fun m!3189645 () Bool)

(assert (=> b!2766324 m!3189645))

(declare-fun m!3189647 () Bool)

(assert (=> b!2766326 m!3189647))

(assert (=> b!2766041 d!803216))

(declare-fun d!803218 () Bool)

(assert (=> d!803218 true))

(declare-fun lambda!101541 () Int)

(declare-fun flatMap!183 ((InoxSet Context!4578) Int) (InoxSet Context!4578))

(assert (=> d!803218 (= (derivationStepZipper!360 z!3597 lt!984052) (flatMap!183 z!3597 lambda!101541))))

(declare-fun bs!500339 () Bool)

(assert (= bs!500339 d!803218))

(declare-fun m!3189649 () Bool)

(assert (=> bs!500339 m!3189649))

(assert (=> bm!180262 d!803218))

(declare-fun b!2766329 () Bool)

(declare-fun e!1744186 () Int)

(assert (=> b!2766329 (= e!1744186 1)))

(declare-fun bm!180346 () Bool)

(declare-fun call!180355 () List!32047)

(declare-fun call!180356 () C!16300)

(assert (=> bm!180346 (= call!180355 (++!7907 lt!984046 (Cons!31947 call!180356 Nil!31947)))))

(declare-fun b!2766330 () Bool)

(declare-fun e!1744187 () List!32047)

(declare-fun call!180357 () List!32047)

(assert (=> b!2766330 (= e!1744187 call!180357)))

(declare-fun b!2766331 () Bool)

(declare-fun c!448826 () Bool)

(declare-fun call!180358 () Bool)

(assert (=> b!2766331 (= c!448826 call!180358)))

(declare-fun lt!984529 () Unit!46013)

(declare-fun lt!984513 () Unit!46013)

(assert (=> b!2766331 (= lt!984529 lt!984513)))

(declare-fun lt!984516 () List!32047)

(assert (=> b!2766331 (= lt!984516 lt!984046)))

(declare-fun call!180353 () Unit!46013)

(assert (=> b!2766331 (= lt!984513 call!180353)))

(assert (=> b!2766331 (= lt!984516 call!180357)))

(declare-fun lt!984523 () Unit!46013)

(declare-fun lt!984496 () Unit!46013)

(assert (=> b!2766331 (= lt!984523 lt!984496)))

(declare-fun call!180351 () Bool)

(assert (=> b!2766331 call!180351))

(declare-fun call!180359 () Unit!46013)

(assert (=> b!2766331 (= lt!984496 call!180359)))

(declare-fun lt!984517 () List!32047)

(assert (=> b!2766331 (= lt!984517 call!180357)))

(declare-fun lt!984518 () List!32047)

(assert (=> b!2766331 (= lt!984518 call!180357)))

(declare-fun e!1744189 () Int)

(assert (=> b!2766331 (= e!1744189 e!1744186)))

(declare-fun b!2766333 () Bool)

(assert (=> b!2766333 (= e!1744186 0)))

(declare-fun b!2766334 () Bool)

(declare-fun e!1744190 () Unit!46013)

(declare-fun Unit!46035 () Unit!46013)

(assert (=> b!2766334 (= e!1744190 Unit!46035)))

(declare-fun bm!180347 () Bool)

(declare-fun lt!984530 () tuple2!32052)

(declare-fun c!448827 () Bool)

(assert (=> bm!180347 (= call!180357 (list!12062 (ite c!448827 input!5495 (_2!18879 lt!984530))))))

(declare-fun b!2766335 () Bool)

(declare-fun c!448823 () Bool)

(assert (=> b!2766335 (= c!448823 call!180358)))

(declare-fun lt!984528 () Unit!46013)

(declare-fun lt!984525 () Unit!46013)

(assert (=> b!2766335 (= lt!984528 lt!984525)))

(declare-fun lt!984497 () List!32047)

(declare-fun lt!984499 () List!32047)

(declare-fun lt!984506 () C!16300)

(assert (=> b!2766335 (= (++!7907 (++!7907 lt!984046 (Cons!31947 lt!984506 Nil!31947)) lt!984497) lt!984499)))

(assert (=> b!2766335 (= lt!984525 (lemmaMoveElementToOtherListKeepsConcatEq!862 lt!984046 lt!984506 lt!984497 lt!984499))))

(assert (=> b!2766335 (= lt!984499 (list!12062 input!5495))))

(assert (=> b!2766335 (= lt!984497 (tail!4379 lt!984079))))

(assert (=> b!2766335 (= lt!984506 (apply!7486 input!5495 1))))

(declare-fun lt!984491 () Unit!46013)

(declare-fun lt!984512 () Unit!46013)

(assert (=> b!2766335 (= lt!984491 lt!984512)))

(declare-fun lt!984500 () List!32047)

(assert (=> b!2766335 (isPrefix!2545 (++!7907 lt!984046 (Cons!31947 (head!6141 (getSuffix!1228 lt!984500 lt!984046)) Nil!31947)) lt!984500)))

(assert (=> b!2766335 (= lt!984512 (lemmaAddHeadSuffixToPrefixStillPrefix!450 lt!984046 lt!984500))))

(assert (=> b!2766335 (= lt!984500 (list!12062 input!5495))))

(declare-fun lt!984511 () Unit!46013)

(assert (=> b!2766335 (= lt!984511 e!1744190)))

(declare-fun c!448825 () Bool)

(assert (=> b!2766335 (= c!448825 (= (size!24719 lt!984046) (size!24718 input!5495)))))

(declare-fun lt!984494 () Unit!46013)

(declare-fun lt!984503 () Unit!46013)

(assert (=> b!2766335 (= lt!984494 lt!984503)))

(declare-fun lt!984504 () List!32047)

(assert (=> b!2766335 (<= (size!24719 lt!984046) (size!24719 lt!984504))))

(assert (=> b!2766335 (= lt!984503 (lemmaIsPrefixThenSmallerEqSize!253 lt!984046 lt!984504))))

(assert (=> b!2766335 (= lt!984504 (list!12062 input!5495))))

(declare-fun lt!984519 () Unit!46013)

(declare-fun lt!984490 () Unit!46013)

(assert (=> b!2766335 (= lt!984519 lt!984490)))

(declare-fun lt!984522 () List!32047)

(assert (=> b!2766335 (= (head!6141 (drop!1699 lt!984522 1)) (apply!7487 lt!984522 1))))

(assert (=> b!2766335 (= lt!984490 (lemmaDropApply!905 lt!984522 1))))

(assert (=> b!2766335 (= lt!984522 (list!12062 input!5495))))

(declare-fun lt!984489 () Unit!46013)

(declare-fun lt!984526 () Unit!46013)

(assert (=> b!2766335 (= lt!984489 lt!984526)))

(declare-fun lt!984507 () List!32047)

(declare-fun lt!984524 () List!32047)

(assert (=> b!2766335 (and (= lt!984524 lt!984046) (= lt!984507 lt!984079))))

(assert (=> b!2766335 (= lt!984526 (lemmaConcatSameAndSameSizesThenSameLists!331 lt!984524 lt!984507 lt!984046 lt!984079))))

(assert (=> b!2766335 (= lt!984507 call!180357)))

(assert (=> b!2766335 (= lt!984524 (list!12062 (_1!18879 lt!984530)))))

(assert (=> b!2766335 (= lt!984530 (splitAt!105 input!5495 1))))

(declare-fun e!1744191 () Int)

(assert (=> b!2766335 (= e!1744189 e!1744191)))

(declare-fun lt!984493 () List!32047)

(declare-fun lt!984515 () List!32047)

(declare-fun bm!180348 () Bool)

(assert (=> bm!180348 (= call!180359 (lemmaIsPrefixRefl!1671 (ite c!448827 lt!984518 lt!984515) (ite c!448827 lt!984517 lt!984493)))))

(declare-fun b!2766336 () Bool)

(declare-fun lt!984495 () Int)

(assert (=> b!2766336 (= e!1744191 (ite (= lt!984495 0) 1 lt!984495))))

(declare-fun call!180354 () Int)

(assert (=> b!2766336 (= lt!984495 call!180354)))

(declare-fun b!2766337 () Bool)

(declare-fun e!1744188 () Int)

(assert (=> b!2766337 (= e!1744188 e!1744189)))

(assert (=> b!2766337 (= c!448827 (= 1 lt!984072))))

(declare-fun call!180360 () List!32047)

(declare-fun bm!180349 () Bool)

(declare-fun call!180352 () (InoxSet Context!4578))

(assert (=> bm!180349 (= call!180354 (findLongestMatchInnerZipperFast!29 call!180352 call!180355 (+ 1 1) call!180360 input!5495 lt!984072))))

(declare-fun b!2766338 () Bool)

(assert (=> b!2766338 (= e!1744188 0)))

(declare-fun bm!180350 () Bool)

(assert (=> bm!180350 (= call!180356 (apply!7486 input!5495 1))))

(declare-fun b!2766339 () Bool)

(declare-fun Unit!46036 () Unit!46013)

(assert (=> b!2766339 (= e!1744190 Unit!46036)))

(assert (=> b!2766339 (= lt!984515 (list!12062 input!5495))))

(assert (=> b!2766339 (= lt!984493 (list!12062 input!5495))))

(declare-fun lt!984502 () Unit!46013)

(assert (=> b!2766339 (= lt!984502 call!180359)))

(assert (=> b!2766339 call!180351))

(declare-fun lt!984509 () Unit!46013)

(assert (=> b!2766339 (= lt!984509 lt!984502)))

(declare-fun lt!984510 () List!32047)

(assert (=> b!2766339 (= lt!984510 (list!12062 input!5495))))

(declare-fun lt!984520 () Unit!46013)

(assert (=> b!2766339 (= lt!984520 call!180353)))

(assert (=> b!2766339 (= lt!984510 lt!984046)))

(declare-fun lt!984492 () Unit!46013)

(assert (=> b!2766339 (= lt!984492 lt!984520)))

(assert (=> b!2766339 false))

(declare-fun bm!180351 () Bool)

(assert (=> bm!180351 (= call!180352 (derivationStepZipper!360 call!180258 call!180356))))

(declare-fun bm!180352 () Bool)

(assert (=> bm!180352 (= call!180351 (isPrefix!2545 (ite c!448827 lt!984518 lt!984515) (ite c!448827 lt!984517 lt!984493)))))

(declare-fun lt!984521 () Int)

(declare-fun d!803220 () Bool)

(assert (=> d!803220 (= (size!24719 (_1!18876 (findLongestMatchInnerZipper!15 call!180258 lt!984046 1 lt!984079 (list!12062 input!5495) lt!984072))) lt!984521)))

(assert (=> d!803220 (= lt!984521 e!1744188)))

(declare-fun c!448824 () Bool)

(assert (=> d!803220 (= c!448824 (lostCauseZipper!432 call!180258))))

(declare-fun lt!984514 () Unit!46013)

(declare-fun Unit!46037 () Unit!46013)

(assert (=> d!803220 (= lt!984514 Unit!46037)))

(assert (=> d!803220 (= (getSuffix!1228 (list!12062 input!5495) lt!984046) lt!984079)))

(declare-fun lt!984527 () Unit!46013)

(declare-fun lt!984501 () Unit!46013)

(assert (=> d!803220 (= lt!984527 lt!984501)))

(declare-fun lt!984505 () List!32047)

(assert (=> d!803220 (= lt!984079 lt!984505)))

(assert (=> d!803220 (= lt!984501 (lemmaSamePrefixThenSameSuffix!1130 lt!984046 lt!984079 lt!984046 lt!984505 (list!12062 input!5495)))))

(assert (=> d!803220 (= lt!984505 (getSuffix!1228 (list!12062 input!5495) lt!984046))))

(declare-fun lt!984508 () Unit!46013)

(declare-fun lt!984498 () Unit!46013)

(assert (=> d!803220 (= lt!984508 lt!984498)))

(assert (=> d!803220 (isPrefix!2545 lt!984046 (++!7907 lt!984046 lt!984079))))

(assert (=> d!803220 (= lt!984498 (lemmaConcatTwoListThenFirstIsPrefix!1656 lt!984046 lt!984079))))

(assert (=> d!803220 (= (++!7907 lt!984046 lt!984079) (list!12062 input!5495))))

(assert (=> d!803220 (= (findLongestMatchInnerZipperFast!29 call!180258 lt!984046 1 lt!984079 input!5495 lt!984072) lt!984521)))

(declare-fun b!2766332 () Bool)

(assert (=> b!2766332 (= e!1744191 call!180354)))

(declare-fun bm!180353 () Bool)

(assert (=> bm!180353 (= call!180360 (tail!4379 lt!984079))))

(declare-fun b!2766340 () Bool)

(assert (=> b!2766340 (= e!1744187 (list!12062 input!5495))))

(declare-fun bm!180354 () Bool)

(assert (=> bm!180354 (= call!180358 (nullableZipper!625 call!180258))))

(declare-fun bm!180355 () Bool)

(declare-fun c!448822 () Bool)

(assert (=> bm!180355 (= c!448822 c!448827)))

(assert (=> bm!180355 (= call!180353 (lemmaIsPrefixSameLengthThenSameList!453 (ite c!448827 lt!984516 lt!984510) lt!984046 e!1744187))))

(assert (= (and d!803220 c!448824) b!2766338))

(assert (= (and d!803220 (not c!448824)) b!2766337))

(assert (= (and b!2766337 c!448827) b!2766331))

(assert (= (and b!2766337 (not c!448827)) b!2766335))

(assert (= (and b!2766331 c!448826) b!2766329))

(assert (= (and b!2766331 (not c!448826)) b!2766333))

(assert (= (and b!2766335 c!448825) b!2766339))

(assert (= (and b!2766335 (not c!448825)) b!2766334))

(assert (= (and b!2766335 c!448823) b!2766336))

(assert (= (and b!2766335 (not c!448823)) b!2766332))

(assert (= (or b!2766336 b!2766332) bm!180350))

(assert (= (or b!2766336 b!2766332) bm!180353))

(assert (= (or b!2766336 b!2766332) bm!180346))

(assert (= (or b!2766336 b!2766332) bm!180351))

(assert (= (or b!2766336 b!2766332) bm!180349))

(assert (= (or b!2766331 b!2766335) bm!180354))

(assert (= (or b!2766331 b!2766339) bm!180352))

(assert (= (or b!2766331 b!2766339) bm!180348))

(assert (= (or b!2766331 b!2766335) bm!180347))

(assert (= (or b!2766331 b!2766339) bm!180355))

(assert (= (and bm!180355 c!448822) b!2766330))

(assert (= (and bm!180355 (not c!448822)) b!2766340))

(declare-fun m!3189651 () Bool)

(assert (=> bm!180352 m!3189651))

(declare-fun m!3189653 () Bool)

(assert (=> bm!180351 m!3189653))

(declare-fun m!3189655 () Bool)

(assert (=> bm!180348 m!3189655))

(declare-fun m!3189657 () Bool)

(assert (=> bm!180349 m!3189657))

(assert (=> bm!180350 m!3189277))

(assert (=> b!2766340 m!3189071))

(declare-fun m!3189659 () Bool)

(assert (=> bm!180346 m!3189659))

(assert (=> d!803220 m!3189071))

(declare-fun m!3189661 () Bool)

(assert (=> d!803220 m!3189661))

(assert (=> d!803220 m!3189141))

(declare-fun m!3189663 () Bool)

(assert (=> d!803220 m!3189663))

(assert (=> d!803220 m!3189071))

(declare-fun m!3189665 () Bool)

(assert (=> d!803220 m!3189665))

(assert (=> d!803220 m!3189141))

(declare-fun m!3189667 () Bool)

(assert (=> d!803220 m!3189667))

(assert (=> d!803220 m!3189071))

(declare-fun m!3189669 () Bool)

(assert (=> d!803220 m!3189669))

(assert (=> d!803220 m!3189071))

(declare-fun m!3189671 () Bool)

(assert (=> d!803220 m!3189671))

(declare-fun m!3189673 () Bool)

(assert (=> d!803220 m!3189673))

(declare-fun m!3189675 () Bool)

(assert (=> b!2766335 m!3189675))

(declare-fun m!3189677 () Bool)

(assert (=> b!2766335 m!3189677))

(declare-fun m!3189679 () Bool)

(assert (=> b!2766335 m!3189679))

(declare-fun m!3189681 () Bool)

(assert (=> b!2766335 m!3189681))

(declare-fun m!3189683 () Bool)

(assert (=> b!2766335 m!3189683))

(assert (=> b!2766335 m!3189675))

(declare-fun m!3189685 () Bool)

(assert (=> b!2766335 m!3189685))

(declare-fun m!3189687 () Bool)

(assert (=> b!2766335 m!3189687))

(declare-fun m!3189689 () Bool)

(assert (=> b!2766335 m!3189689))

(assert (=> b!2766335 m!3189311))

(declare-fun m!3189691 () Bool)

(assert (=> b!2766335 m!3189691))

(declare-fun m!3189693 () Bool)

(assert (=> b!2766335 m!3189693))

(declare-fun m!3189695 () Bool)

(assert (=> b!2766335 m!3189695))

(declare-fun m!3189697 () Bool)

(assert (=> b!2766335 m!3189697))

(assert (=> b!2766335 m!3189097))

(declare-fun m!3189699 () Bool)

(assert (=> b!2766335 m!3189699))

(assert (=> b!2766335 m!3189071))

(declare-fun m!3189701 () Bool)

(assert (=> b!2766335 m!3189701))

(assert (=> b!2766335 m!3189679))

(assert (=> b!2766335 m!3189687))

(declare-fun m!3189703 () Bool)

(assert (=> b!2766335 m!3189703))

(declare-fun m!3189705 () Bool)

(assert (=> b!2766335 m!3189705))

(declare-fun m!3189707 () Bool)

(assert (=> b!2766335 m!3189707))

(assert (=> b!2766335 m!3189691))

(assert (=> b!2766335 m!3189277))

(declare-fun m!3189709 () Bool)

(assert (=> b!2766335 m!3189709))

(declare-fun m!3189711 () Bool)

(assert (=> bm!180354 m!3189711))

(assert (=> bm!180353 m!3189705))

(declare-fun m!3189713 () Bool)

(assert (=> bm!180347 m!3189713))

(declare-fun m!3189715 () Bool)

(assert (=> bm!180355 m!3189715))

(assert (=> b!2766339 m!3189071))

(assert (=> bm!180256 d!803220))

(declare-fun d!803222 () Bool)

(declare-fun e!1744193 () Bool)

(assert (=> d!803222 e!1744193))

(declare-fun res!1157500 () Bool)

(assert (=> d!803222 (=> (not res!1157500) (not e!1744193))))

(declare-fun lt!984531 () List!32047)

(assert (=> d!803222 (= res!1157500 (= (content!4498 lt!984531) ((_ map or) (content!4498 Nil!31947) (content!4498 (Cons!31947 lt!984052 Nil!31947)))))))

(declare-fun e!1744192 () List!32047)

(assert (=> d!803222 (= lt!984531 e!1744192)))

(declare-fun c!448828 () Bool)

(assert (=> d!803222 (= c!448828 ((_ is Nil!31947) Nil!31947))))

(assert (=> d!803222 (= (++!7907 Nil!31947 (Cons!31947 lt!984052 Nil!31947)) lt!984531)))

(declare-fun b!2766341 () Bool)

(assert (=> b!2766341 (= e!1744192 (Cons!31947 lt!984052 Nil!31947))))

(declare-fun b!2766342 () Bool)

(assert (=> b!2766342 (= e!1744192 (Cons!31947 (h!37367 Nil!31947) (++!7907 (t!228167 Nil!31947) (Cons!31947 lt!984052 Nil!31947))))))

(declare-fun b!2766344 () Bool)

(assert (=> b!2766344 (= e!1744193 (or (not (= (Cons!31947 lt!984052 Nil!31947) Nil!31947)) (= lt!984531 Nil!31947)))))

(declare-fun b!2766343 () Bool)

(declare-fun res!1157501 () Bool)

(assert (=> b!2766343 (=> (not res!1157501) (not e!1744193))))

(assert (=> b!2766343 (= res!1157501 (= (size!24719 lt!984531) (+ (size!24719 Nil!31947) (size!24719 (Cons!31947 lt!984052 Nil!31947)))))))

(assert (= (and d!803222 c!448828) b!2766341))

(assert (= (and d!803222 (not c!448828)) b!2766342))

(assert (= (and d!803222 res!1157500) b!2766343))

(assert (= (and b!2766343 res!1157501) b!2766344))

(declare-fun m!3189717 () Bool)

(assert (=> d!803222 m!3189717))

(assert (=> d!803222 m!3189403))

(declare-fun m!3189719 () Bool)

(assert (=> d!803222 m!3189719))

(declare-fun m!3189721 () Bool)

(assert (=> b!2766342 m!3189721))

(declare-fun m!3189723 () Bool)

(assert (=> b!2766343 m!3189723))

(assert (=> b!2766343 m!3189137))

(declare-fun m!3189725 () Bool)

(assert (=> b!2766343 m!3189725))

(assert (=> b!2766043 d!803222))

(assert (=> b!2766043 d!803172))

(declare-fun d!803224 () Bool)

(declare-fun e!1744195 () Bool)

(assert (=> d!803224 e!1744195))

(declare-fun res!1157502 () Bool)

(assert (=> d!803224 (=> (not res!1157502) (not e!1744195))))

(declare-fun lt!984532 () List!32047)

(assert (=> d!803224 (= res!1157502 (= (content!4498 lt!984532) ((_ map or) (content!4498 lt!984046) (content!4498 lt!984079))))))

(declare-fun e!1744194 () List!32047)

(assert (=> d!803224 (= lt!984532 e!1744194)))

(declare-fun c!448829 () Bool)

(assert (=> d!803224 (= c!448829 ((_ is Nil!31947) lt!984046))))

(assert (=> d!803224 (= (++!7907 lt!984046 lt!984079) lt!984532)))

(declare-fun b!2766345 () Bool)

(assert (=> b!2766345 (= e!1744194 lt!984079)))

(declare-fun b!2766346 () Bool)

(assert (=> b!2766346 (= e!1744194 (Cons!31947 (h!37367 lt!984046) (++!7907 (t!228167 lt!984046) lt!984079)))))

(declare-fun b!2766348 () Bool)

(assert (=> b!2766348 (= e!1744195 (or (not (= lt!984079 Nil!31947)) (= lt!984532 lt!984046)))))

(declare-fun b!2766347 () Bool)

(declare-fun res!1157503 () Bool)

(assert (=> b!2766347 (=> (not res!1157503) (not e!1744195))))

(assert (=> b!2766347 (= res!1157503 (= (size!24719 lt!984532) (+ (size!24719 lt!984046) (size!24719 lt!984079))))))

(assert (= (and d!803224 c!448829) b!2766345))

(assert (= (and d!803224 (not c!448829)) b!2766346))

(assert (= (and d!803224 res!1157502) b!2766347))

(assert (= (and b!2766347 res!1157503) b!2766348))

(declare-fun m!3189727 () Bool)

(assert (=> d!803224 m!3189727))

(declare-fun m!3189729 () Bool)

(assert (=> d!803224 m!3189729))

(declare-fun m!3189731 () Bool)

(assert (=> d!803224 m!3189731))

(declare-fun m!3189733 () Bool)

(assert (=> b!2766346 m!3189733))

(declare-fun m!3189735 () Bool)

(assert (=> b!2766347 m!3189735))

(assert (=> b!2766347 m!3189689))

(declare-fun m!3189737 () Bool)

(assert (=> b!2766347 m!3189737))

(assert (=> b!2766043 d!803224))

(assert (=> b!2766043 d!803174))

(assert (=> b!2766043 d!803176))

(assert (=> b!2766043 d!803178))

(assert (=> b!2766043 d!803180))

(assert (=> b!2766043 d!803196))

(declare-fun d!803226 () Bool)

(assert (=> d!803226 (= (list!12062 (_1!18879 lt!984061)) (list!12063 (c!448725 (_1!18879 lt!984061))))))

(declare-fun bs!500340 () Bool)

(assert (= bs!500340 d!803226))

(declare-fun m!3189739 () Bool)

(assert (=> bs!500340 m!3189739))

(assert (=> b!2766043 d!803226))

(assert (=> b!2766043 d!803166))

(declare-fun d!803228 () Bool)

(assert (=> d!803228 (= (list!12062 (_2!18879 lt!984061)) (list!12063 (c!448725 (_2!18879 lt!984061))))))

(declare-fun bs!500341 () Bool)

(assert (= bs!500341 d!803228))

(declare-fun m!3189741 () Bool)

(assert (=> bs!500341 m!3189741))

(assert (=> b!2766043 d!803228))

(assert (=> b!2766043 d!803186))

(assert (=> b!2766043 d!803190))

(declare-fun d!803230 () Bool)

(assert (=> d!803230 (= (++!7907 (++!7907 Nil!31947 (Cons!31947 lt!984052 Nil!31947)) lt!984079) lt!984048)))

(declare-fun lt!984533 () Unit!46013)

(assert (=> d!803230 (= lt!984533 (choose!16230 Nil!31947 lt!984052 lt!984079 lt!984048))))

(assert (=> d!803230 (= (++!7907 Nil!31947 (Cons!31947 lt!984052 lt!984079)) lt!984048)))

(assert (=> d!803230 (= (lemmaMoveElementToOtherListKeepsConcatEq!862 Nil!31947 lt!984052 lt!984079 lt!984048) lt!984533)))

(declare-fun bs!500342 () Bool)

(assert (= bs!500342 d!803230))

(assert (=> bs!500342 m!3189105))

(assert (=> bs!500342 m!3189105))

(declare-fun m!3189743 () Bool)

(assert (=> bs!500342 m!3189743))

(declare-fun m!3189745 () Bool)

(assert (=> bs!500342 m!3189745))

(declare-fun m!3189747 () Bool)

(assert (=> bs!500342 m!3189747))

(assert (=> b!2766043 d!803230))

(declare-fun d!803232 () Bool)

(assert (=> d!803232 (and (= lt!984083 Nil!31947) (= lt!984105 lt!984048))))

(declare-fun lt!984534 () Unit!46013)

(assert (=> d!803232 (= lt!984534 (choose!16233 lt!984083 lt!984105 Nil!31947 lt!984048))))

(assert (=> d!803232 (= (++!7907 lt!984083 lt!984105) (++!7907 Nil!31947 lt!984048))))

(assert (=> d!803232 (= (lemmaConcatSameAndSameSizesThenSameLists!331 lt!984083 lt!984105 Nil!31947 lt!984048) lt!984534)))

(declare-fun bs!500343 () Bool)

(assert (= bs!500343 d!803232))

(declare-fun m!3189749 () Bool)

(assert (=> bs!500343 m!3189749))

(declare-fun m!3189751 () Bool)

(assert (=> bs!500343 m!3189751))

(assert (=> bs!500343 m!3189081))

(assert (=> b!2766043 d!803232))

(assert (=> b!2766043 d!803156))

(assert (=> b!2766043 d!803198))

(assert (=> b!2766043 d!803200))

(assert (=> b!2766043 d!803202))

(assert (=> b!2766043 d!803204))

(assert (=> bm!180263 d!803162))

(declare-fun d!803234 () Bool)

(assert (=> d!803234 (= (valid!2923 (_3!2850 lt!984059)) (validCacheMapDown!391 (cache!3800 (_3!2850 lt!984059))))))

(declare-fun bs!500344 () Bool)

(assert (= bs!500344 d!803234))

(declare-fun m!3189753 () Bool)

(assert (=> bs!500344 m!3189753))

(assert (=> b!2766028 d!803234))

(declare-fun d!803236 () Bool)

(assert (=> d!803236 (= (valid!2922 cacheUp!820) (validCacheMapUp!360 (cache!3799 cacheUp!820)))))

(declare-fun bs!500345 () Bool)

(assert (= bs!500345 d!803236))

(declare-fun m!3189755 () Bool)

(assert (=> bs!500345 m!3189755))

(assert (=> start!267798 d!803236))

(declare-fun d!803238 () Bool)

(declare-fun res!1157506 () Bool)

(declare-fun e!1744198 () Bool)

(assert (=> d!803238 (=> (not res!1157506) (not e!1744198))))

(assert (=> d!803238 (= res!1157506 ((_ is HashMap!3656) (cache!3799 cacheUp!820)))))

(assert (=> d!803238 (= (inv!43377 cacheUp!820) e!1744198)))

(declare-fun b!2766351 () Bool)

(assert (=> b!2766351 (= e!1744198 (validCacheMapUp!360 (cache!3799 cacheUp!820)))))

(assert (= (and d!803238 res!1157506) b!2766351))

(assert (=> b!2766351 m!3189755))

(assert (=> start!267798 d!803238))

(declare-fun d!803240 () Bool)

(declare-fun res!1157509 () Bool)

(declare-fun e!1744201 () Bool)

(assert (=> d!803240 (=> (not res!1157509) (not e!1744201))))

(assert (=> d!803240 (= res!1157509 ((_ is HashMap!3657) (cache!3800 cacheDown!939)))))

(assert (=> d!803240 (= (inv!43378 cacheDown!939) e!1744201)))

(declare-fun b!2766354 () Bool)

(assert (=> b!2766354 (= e!1744201 (validCacheMapDown!391 (cache!3800 cacheDown!939)))))

(assert (= (and d!803240 res!1157509) b!2766354))

(assert (=> b!2766354 m!3189523))

(assert (=> start!267798 d!803240))

(declare-fun d!803242 () Bool)

(assert (=> d!803242 (= (inv!43379 input!5495) (isBalanced!3034 (c!448725 input!5495)))))

(declare-fun bs!500346 () Bool)

(assert (= bs!500346 d!803242))

(assert (=> bs!500346 m!3189429))

(assert (=> start!267798 d!803242))

(assert (=> bm!180257 d!803106))

(assert (=> bm!180249 d!803168))

(declare-fun bs!500347 () Bool)

(declare-fun d!803244 () Bool)

(assert (= bs!500347 (and d!803244 d!803218)))

(declare-fun lambda!101542 () Int)

(assert (=> bs!500347 (= (= lt!984055 lt!984052) (= lambda!101542 lambda!101541))))

(assert (=> d!803244 true))

(assert (=> d!803244 (= (derivationStepZipper!360 z!3597 lt!984055) (flatMap!183 z!3597 lambda!101542))))

(declare-fun bs!500348 () Bool)

(assert (= bs!500348 d!803244))

(declare-fun m!3189757 () Bool)

(assert (=> bs!500348 m!3189757))

(assert (=> bm!180264 d!803244))

(assert (=> bm!180258 d!803162))

(declare-fun d!803246 () Bool)

(declare-fun lambda!101545 () Int)

(declare-fun forall!6617 (List!32044 Int) Bool)

(assert (=> d!803246 (= (inv!43381 setElem!22573) (forall!6617 (exprs!2789 setElem!22573) lambda!101545))))

(declare-fun bs!500349 () Bool)

(assert (= bs!500349 d!803246))

(declare-fun m!3189759 () Bool)

(assert (=> bs!500349 m!3189759))

(assert (=> setNonEmpty!22573 d!803246))

(declare-fun d!803248 () Bool)

(declare-fun e!1744202 () Bool)

(assert (=> d!803248 e!1744202))

(declare-fun res!1157510 () Bool)

(assert (=> d!803248 (=> (not res!1157510) (not e!1744202))))

(declare-fun lt!984535 () tuple3!4760)

(assert (=> d!803248 (= res!1157510 (valid!2922 (_2!18875 lt!984535)))))

(assert (=> d!803248 (= lt!984535 (choose!16225 (ite c!448718 (_2!18877 lt!984063) (_2!18877 lt!984116)) (ite c!448718 (_3!2851 lt!984063) (_3!2851 lt!984116)) (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116)) lt!984062 1 lt!984076 input!5495 lt!984072))))

(assert (=> d!803248 (= (++!7907 lt!984062 lt!984076) (list!12062 input!5495))))

(assert (=> d!803248 (= (findLongestMatchInnerZipperFastMem!24 (ite c!448718 (_2!18877 lt!984063) (_2!18877 lt!984116)) (ite c!448718 (_3!2851 lt!984063) (_3!2851 lt!984116)) (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116)) lt!984062 1 lt!984076 input!5495 lt!984072) lt!984535)))

(declare-fun b!2766355 () Bool)

(declare-fun res!1157511 () Bool)

(assert (=> b!2766355 (=> (not res!1157511) (not e!1744202))))

(assert (=> b!2766355 (= res!1157511 (valid!2923 (_3!2850 lt!984535)))))

(declare-fun b!2766356 () Bool)

(assert (=> b!2766356 (= e!1744202 (= (_1!18875 lt!984535) (findLongestMatchInnerZipperFast!29 (ite c!448718 (_1!18877 lt!984063) (_1!18877 lt!984116)) lt!984062 1 lt!984076 input!5495 lt!984072)))))

(assert (= (and d!803248 res!1157510) b!2766355))

(assert (= (and b!2766355 res!1157511) b!2766356))

(declare-fun m!3189761 () Bool)

(assert (=> d!803248 m!3189761))

(declare-fun m!3189763 () Bool)

(assert (=> d!803248 m!3189763))

(assert (=> d!803248 m!3189203))

(assert (=> d!803248 m!3189071))

(declare-fun m!3189765 () Bool)

(assert (=> b!2766355 m!3189765))

(assert (=> b!2766356 m!3189101))

(assert (=> bm!180244 d!803248))

(declare-fun d!803250 () Bool)

(assert (=> d!803250 (= (array_inv!4258 (_keys!4051 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))) (bvsge (size!24716 (_keys!4051 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2766071 d!803250))

(declare-fun d!803252 () Bool)

(assert (=> d!803252 (= (array_inv!4259 (_values!4032 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))) (bvsge (size!24717 (_values!4032 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2766071 d!803252))

(declare-fun setIsEmpty!22576 () Bool)

(declare-fun setRes!22576 () Bool)

(assert (=> setIsEmpty!22576 setRes!22576))

(declare-fun e!1744211 () Bool)

(assert (=> b!2766066 (= tp!874242 e!1744211)))

(declare-fun e!1744210 () Bool)

(declare-fun tp!874254 () Bool)

(declare-fun setNonEmpty!22576 () Bool)

(declare-fun setElem!22576 () Context!4578)

(assert (=> setNonEmpty!22576 (= setRes!22576 (and tp!874254 (inv!43381 setElem!22576) e!1744210))))

(declare-fun setRest!22576 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22576 (= (_2!18872 (h!37365 mapDefault!17104)) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22576 true) setRest!22576))))

(declare-fun b!2766365 () Bool)

(declare-fun tp_is_empty!14005 () Bool)

(declare-fun tp!874255 () Bool)

(declare-fun e!1744209 () Bool)

(assert (=> b!2766365 (= e!1744211 (and (inv!43381 (_1!18871 (_1!18872 (h!37365 mapDefault!17104)))) e!1744209 tp_is_empty!14005 setRes!22576 tp!874255))))

(declare-fun condSetEmpty!22576 () Bool)

(assert (=> b!2766365 (= condSetEmpty!22576 (= (_2!18872 (h!37365 mapDefault!17104)) ((as const (Array Context!4578 Bool)) false)))))

(declare-fun b!2766366 () Bool)

(declare-fun tp!874257 () Bool)

(assert (=> b!2766366 (= e!1744209 tp!874257)))

(declare-fun b!2766367 () Bool)

(declare-fun tp!874256 () Bool)

(assert (=> b!2766367 (= e!1744210 tp!874256)))

(assert (= b!2766365 b!2766366))

(assert (= (and b!2766365 condSetEmpty!22576) setIsEmpty!22576))

(assert (= (and b!2766365 (not condSetEmpty!22576)) setNonEmpty!22576))

(assert (= setNonEmpty!22576 b!2766367))

(assert (= (and b!2766066 ((_ is Cons!31945) mapDefault!17104)) b!2766365))

(declare-fun m!3189767 () Bool)

(assert (=> setNonEmpty!22576 m!3189767))

(declare-fun m!3189769 () Bool)

(assert (=> b!2766365 m!3189769))

(declare-fun setIsEmpty!22577 () Bool)

(declare-fun setRes!22577 () Bool)

(assert (=> setIsEmpty!22577 setRes!22577))

(declare-fun e!1744214 () Bool)

(assert (=> b!2766072 (= tp!874232 e!1744214)))

(declare-fun setElem!22577 () Context!4578)

(declare-fun setNonEmpty!22577 () Bool)

(declare-fun tp!874258 () Bool)

(declare-fun e!1744213 () Bool)

(assert (=> setNonEmpty!22577 (= setRes!22577 (and tp!874258 (inv!43381 setElem!22577) e!1744213))))

(declare-fun setRest!22577 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22577 (= (_2!18872 (h!37365 (zeroValue!4009 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22577 true) setRest!22577))))

(declare-fun tp!874259 () Bool)

(declare-fun e!1744212 () Bool)

(declare-fun b!2766368 () Bool)

(assert (=> b!2766368 (= e!1744214 (and (inv!43381 (_1!18871 (_1!18872 (h!37365 (zeroValue!4009 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820)))))))))) e!1744212 tp_is_empty!14005 setRes!22577 tp!874259))))

(declare-fun condSetEmpty!22577 () Bool)

(assert (=> b!2766368 (= condSetEmpty!22577 (= (_2!18872 (h!37365 (zeroValue!4009 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820)))))))) ((as const (Array Context!4578 Bool)) false)))))

(declare-fun b!2766369 () Bool)

(declare-fun tp!874261 () Bool)

(assert (=> b!2766369 (= e!1744212 tp!874261)))

(declare-fun b!2766370 () Bool)

(declare-fun tp!874260 () Bool)

(assert (=> b!2766370 (= e!1744213 tp!874260)))

(assert (= b!2766368 b!2766369))

(assert (= (and b!2766368 condSetEmpty!22577) setIsEmpty!22577))

(assert (= (and b!2766368 (not condSetEmpty!22577)) setNonEmpty!22577))

(assert (= setNonEmpty!22577 b!2766370))

(assert (= (and b!2766072 ((_ is Cons!31945) (zeroValue!4009 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820)))))))) b!2766368))

(declare-fun m!3189771 () Bool)

(assert (=> setNonEmpty!22577 m!3189771))

(declare-fun m!3189773 () Bool)

(assert (=> b!2766368 m!3189773))

(declare-fun setIsEmpty!22578 () Bool)

(declare-fun setRes!22578 () Bool)

(assert (=> setIsEmpty!22578 setRes!22578))

(declare-fun e!1744217 () Bool)

(assert (=> b!2766072 (= tp!874244 e!1744217)))

(declare-fun e!1744216 () Bool)

(declare-fun setElem!22578 () Context!4578)

(declare-fun setNonEmpty!22578 () Bool)

(declare-fun tp!874262 () Bool)

(assert (=> setNonEmpty!22578 (= setRes!22578 (and tp!874262 (inv!43381 setElem!22578) e!1744216))))

(declare-fun setRest!22578 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22578 (= (_2!18872 (h!37365 (minValue!4009 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22578 true) setRest!22578))))

(declare-fun b!2766371 () Bool)

(declare-fun tp!874263 () Bool)

(declare-fun e!1744215 () Bool)

(assert (=> b!2766371 (= e!1744217 (and (inv!43381 (_1!18871 (_1!18872 (h!37365 (minValue!4009 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820)))))))))) e!1744215 tp_is_empty!14005 setRes!22578 tp!874263))))

(declare-fun condSetEmpty!22578 () Bool)

(assert (=> b!2766371 (= condSetEmpty!22578 (= (_2!18872 (h!37365 (minValue!4009 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820)))))))) ((as const (Array Context!4578 Bool)) false)))))

(declare-fun b!2766372 () Bool)

(declare-fun tp!874265 () Bool)

(assert (=> b!2766372 (= e!1744215 tp!874265)))

(declare-fun b!2766373 () Bool)

(declare-fun tp!874264 () Bool)

(assert (=> b!2766373 (= e!1744216 tp!874264)))

(assert (= b!2766371 b!2766372))

(assert (= (and b!2766371 condSetEmpty!22578) setIsEmpty!22578))

(assert (= (and b!2766371 (not condSetEmpty!22578)) setNonEmpty!22578))

(assert (= setNonEmpty!22578 b!2766373))

(assert (= (and b!2766072 ((_ is Cons!31945) (minValue!4009 (v!33552 (underlying!7703 (v!33553 (underlying!7704 (cache!3799 cacheUp!820)))))))) b!2766371))

(declare-fun m!3189775 () Bool)

(assert (=> setNonEmpty!22578 m!3189775))

(declare-fun m!3189777 () Bool)

(assert (=> b!2766371 m!3189777))

(declare-fun tp!874274 () Bool)

(declare-fun tp!874273 () Bool)

(declare-fun b!2766382 () Bool)

(declare-fun e!1744223 () Bool)

(assert (=> b!2766382 (= e!1744223 (and (inv!43380 (left!24368 (c!448725 input!5495))) tp!874274 (inv!43380 (right!24698 (c!448725 input!5495))) tp!874273))))

(declare-fun b!2766384 () Bool)

(declare-fun e!1744222 () Bool)

(declare-fun tp!874272 () Bool)

(assert (=> b!2766384 (= e!1744222 tp!874272)))

(declare-fun b!2766383 () Bool)

(declare-fun inv!43384 (IArray!19911) Bool)

(assert (=> b!2766383 (= e!1744223 (and (inv!43384 (xs!13062 (c!448725 input!5495))) e!1744222))))

(assert (=> b!2766041 (= tp!874245 (and (inv!43380 (c!448725 input!5495)) e!1744223))))

(assert (= (and b!2766041 ((_ is Node!9953) (c!448725 input!5495))) b!2766382))

(assert (= b!2766383 b!2766384))

(assert (= (and b!2766041 ((_ is Leaf!15157) (c!448725 input!5495))) b!2766383))

(declare-fun m!3189779 () Bool)

(assert (=> b!2766382 m!3189779))

(declare-fun m!3189781 () Bool)

(assert (=> b!2766382 m!3189781))

(declare-fun m!3189783 () Bool)

(assert (=> b!2766383 m!3189783))

(assert (=> b!2766041 m!3189189))

(declare-fun mapIsEmpty!17107 () Bool)

(declare-fun mapRes!17107 () Bool)

(assert (=> mapIsEmpty!17107 mapRes!17107))

(declare-fun e!1744241 () Bool)

(declare-fun setElem!22583 () Context!4578)

(declare-fun setRes!22583 () Bool)

(declare-fun setNonEmpty!22583 () Bool)

(declare-fun tp!874297 () Bool)

(assert (=> setNonEmpty!22583 (= setRes!22583 (and tp!874297 (inv!43381 setElem!22583) e!1744241))))

(declare-fun mapDefault!17107 () List!32046)

(declare-fun setRest!22584 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22583 (= (_2!18874 (h!37366 mapDefault!17107)) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22583 true) setRest!22584))))

(declare-fun setIsEmpty!22583 () Bool)

(assert (=> setIsEmpty!22583 setRes!22583))

(declare-fun tp!874299 () Bool)

(declare-fun setElem!22584 () Context!4578)

(declare-fun e!1744237 () Bool)

(declare-fun setNonEmpty!22584 () Bool)

(declare-fun setRes!22584 () Bool)

(assert (=> setNonEmpty!22584 (= setRes!22584 (and tp!874299 (inv!43381 setElem!22584) e!1744237))))

(declare-fun mapValue!17107 () List!32046)

(declare-fun setRest!22583 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22584 (= (_2!18874 (h!37366 mapValue!17107)) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22584 true) setRest!22583))))

(declare-fun b!2766400 () Bool)

(declare-fun e!1744236 () Bool)

(declare-fun tp!874305 () Bool)

(assert (=> b!2766400 (= e!1744236 tp!874305)))

(declare-fun b!2766401 () Bool)

(declare-fun e!1744239 () Bool)

(declare-fun tp!874306 () Bool)

(declare-fun tp!874303 () Bool)

(assert (=> b!2766401 (= e!1744239 (and tp!874306 (inv!43381 (_2!18873 (_1!18874 (h!37366 mapDefault!17107)))) e!1744236 tp_is_empty!14005 setRes!22583 tp!874303))))

(declare-fun condSetEmpty!22583 () Bool)

(assert (=> b!2766401 (= condSetEmpty!22583 (= (_2!18874 (h!37366 mapDefault!17107)) ((as const (Array Context!4578 Bool)) false)))))

(declare-fun b!2766402 () Bool)

(declare-fun e!1744240 () Bool)

(declare-fun tp!874302 () Bool)

(assert (=> b!2766402 (= e!1744240 tp!874302)))

(declare-fun mapNonEmpty!17107 () Bool)

(declare-fun tp!874300 () Bool)

(declare-fun e!1744238 () Bool)

(assert (=> mapNonEmpty!17107 (= mapRes!17107 (and tp!874300 e!1744238))))

(declare-fun mapRest!17107 () (Array (_ BitVec 32) List!32046))

(declare-fun mapKey!17107 () (_ BitVec 32))

(assert (=> mapNonEmpty!17107 (= mapRest!17103 (store mapRest!17107 mapKey!17107 mapValue!17107))))

(declare-fun setIsEmpty!22584 () Bool)

(assert (=> setIsEmpty!22584 setRes!22584))

(declare-fun b!2766403 () Bool)

(declare-fun tp!874298 () Bool)

(assert (=> b!2766403 (= e!1744241 tp!874298)))

(declare-fun b!2766404 () Bool)

(declare-fun tp!874307 () Bool)

(assert (=> b!2766404 (= e!1744237 tp!874307)))

(declare-fun condMapEmpty!17107 () Bool)

(assert (=> mapNonEmpty!17104 (= condMapEmpty!17107 (= mapRest!17103 ((as const (Array (_ BitVec 32) List!32046)) mapDefault!17107)))))

(assert (=> mapNonEmpty!17104 (= tp!874234 (and e!1744239 mapRes!17107))))

(declare-fun tp!874301 () Bool)

(declare-fun b!2766399 () Bool)

(declare-fun tp!874304 () Bool)

(assert (=> b!2766399 (= e!1744238 (and tp!874301 (inv!43381 (_2!18873 (_1!18874 (h!37366 mapValue!17107)))) e!1744240 tp_is_empty!14005 setRes!22584 tp!874304))))

(declare-fun condSetEmpty!22584 () Bool)

(assert (=> b!2766399 (= condSetEmpty!22584 (= (_2!18874 (h!37366 mapValue!17107)) ((as const (Array Context!4578 Bool)) false)))))

(assert (= (and mapNonEmpty!17104 condMapEmpty!17107) mapIsEmpty!17107))

(assert (= (and mapNonEmpty!17104 (not condMapEmpty!17107)) mapNonEmpty!17107))

(assert (= b!2766399 b!2766402))

(assert (= (and b!2766399 condSetEmpty!22584) setIsEmpty!22584))

(assert (= (and b!2766399 (not condSetEmpty!22584)) setNonEmpty!22584))

(assert (= setNonEmpty!22584 b!2766404))

(assert (= (and mapNonEmpty!17107 ((_ is Cons!31946) mapValue!17107)) b!2766399))

(assert (= b!2766401 b!2766400))

(assert (= (and b!2766401 condSetEmpty!22583) setIsEmpty!22583))

(assert (= (and b!2766401 (not condSetEmpty!22583)) setNonEmpty!22583))

(assert (= setNonEmpty!22583 b!2766403))

(assert (= (and mapNonEmpty!17104 ((_ is Cons!31946) mapDefault!17107)) b!2766401))

(declare-fun m!3189785 () Bool)

(assert (=> b!2766401 m!3189785))

(declare-fun m!3189787 () Bool)

(assert (=> b!2766399 m!3189787))

(declare-fun m!3189789 () Bool)

(assert (=> mapNonEmpty!17107 m!3189789))

(declare-fun m!3189791 () Bool)

(assert (=> setNonEmpty!22584 m!3189791))

(declare-fun m!3189793 () Bool)

(assert (=> setNonEmpty!22583 m!3189793))

(declare-fun tp!874320 () Bool)

(declare-fun tp!874322 () Bool)

(declare-fun setRes!22587 () Bool)

(declare-fun e!1744248 () Bool)

(declare-fun e!1744249 () Bool)

(declare-fun b!2766413 () Bool)

(assert (=> b!2766413 (= e!1744249 (and tp!874322 (inv!43381 (_2!18873 (_1!18874 (h!37366 mapValue!17103)))) e!1744248 tp_is_empty!14005 setRes!22587 tp!874320))))

(declare-fun condSetEmpty!22587 () Bool)

(assert (=> b!2766413 (= condSetEmpty!22587 (= (_2!18874 (h!37366 mapValue!17103)) ((as const (Array Context!4578 Bool)) false)))))

(assert (=> mapNonEmpty!17104 (= tp!874236 e!1744249)))

(declare-fun b!2766414 () Bool)

(declare-fun e!1744250 () Bool)

(declare-fun tp!874321 () Bool)

(assert (=> b!2766414 (= e!1744250 tp!874321)))

(declare-fun setElem!22587 () Context!4578)

(declare-fun setNonEmpty!22587 () Bool)

(declare-fun tp!874318 () Bool)

(assert (=> setNonEmpty!22587 (= setRes!22587 (and tp!874318 (inv!43381 setElem!22587) e!1744250))))

(declare-fun setRest!22587 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22587 (= (_2!18874 (h!37366 mapValue!17103)) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22587 true) setRest!22587))))

(declare-fun setIsEmpty!22587 () Bool)

(assert (=> setIsEmpty!22587 setRes!22587))

(declare-fun b!2766415 () Bool)

(declare-fun tp!874319 () Bool)

(assert (=> b!2766415 (= e!1744248 tp!874319)))

(assert (= b!2766413 b!2766415))

(assert (= (and b!2766413 condSetEmpty!22587) setIsEmpty!22587))

(assert (= (and b!2766413 (not condSetEmpty!22587)) setNonEmpty!22587))

(assert (= setNonEmpty!22587 b!2766414))

(assert (= (and mapNonEmpty!17104 ((_ is Cons!31946) mapValue!17103)) b!2766413))

(declare-fun m!3189795 () Bool)

(assert (=> b!2766413 m!3189795))

(declare-fun m!3189797 () Bool)

(assert (=> setNonEmpty!22587 m!3189797))

(declare-fun setIsEmpty!22592 () Bool)

(declare-fun setRes!22592 () Bool)

(assert (=> setIsEmpty!22592 setRes!22592))

(declare-fun setIsEmpty!22593 () Bool)

(declare-fun setRes!22593 () Bool)

(assert (=> setIsEmpty!22593 setRes!22593))

(declare-fun condMapEmpty!17110 () Bool)

(declare-fun mapDefault!17110 () List!32045)

(assert (=> mapNonEmpty!17103 (= condMapEmpty!17110 (= mapRest!17104 ((as const (Array (_ BitVec 32) List!32045)) mapDefault!17110)))))

(declare-fun e!1744267 () Bool)

(declare-fun mapRes!17110 () Bool)

(assert (=> mapNonEmpty!17103 (= tp!874239 (and e!1744267 mapRes!17110))))

(declare-fun b!2766430 () Bool)

(declare-fun e!1744264 () Bool)

(declare-fun tp!874345 () Bool)

(assert (=> b!2766430 (= e!1744264 tp!874345)))

(declare-fun b!2766431 () Bool)

(declare-fun e!1744266 () Bool)

(declare-fun tp!874344 () Bool)

(assert (=> b!2766431 (= e!1744266 tp!874344)))

(declare-fun b!2766432 () Bool)

(declare-fun e!1744268 () Bool)

(declare-fun tp!874341 () Bool)

(assert (=> b!2766432 (= e!1744268 tp!874341)))

(declare-fun mapIsEmpty!17110 () Bool)

(assert (=> mapIsEmpty!17110 mapRes!17110))

(declare-fun setNonEmpty!22592 () Bool)

(declare-fun setElem!22593 () Context!4578)

(declare-fun tp!874347 () Bool)

(assert (=> setNonEmpty!22592 (= setRes!22592 (and tp!874347 (inv!43381 setElem!22593) e!1744268))))

(declare-fun mapValue!17110 () List!32045)

(declare-fun setRest!22592 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22592 (= (_2!18872 (h!37365 mapValue!17110)) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22593 true) setRest!22592))))

(declare-fun mapNonEmpty!17110 () Bool)

(declare-fun tp!874342 () Bool)

(declare-fun e!1744265 () Bool)

(assert (=> mapNonEmpty!17110 (= mapRes!17110 (and tp!874342 e!1744265))))

(declare-fun mapKey!17110 () (_ BitVec 32))

(declare-fun mapRest!17110 () (Array (_ BitVec 32) List!32045))

(assert (=> mapNonEmpty!17110 (= mapRest!17104 (store mapRest!17110 mapKey!17110 mapValue!17110))))

(declare-fun b!2766433 () Bool)

(declare-fun tp!874346 () Bool)

(assert (=> b!2766433 (= e!1744265 (and (inv!43381 (_1!18871 (_1!18872 (h!37365 mapValue!17110)))) e!1744266 tp_is_empty!14005 setRes!22592 tp!874346))))

(declare-fun condSetEmpty!22592 () Bool)

(assert (=> b!2766433 (= condSetEmpty!22592 (= (_2!18872 (h!37365 mapValue!17110)) ((as const (Array Context!4578 Bool)) false)))))

(declare-fun b!2766434 () Bool)

(declare-fun e!1744263 () Bool)

(declare-fun tp!874348 () Bool)

(assert (=> b!2766434 (= e!1744263 tp!874348)))

(declare-fun b!2766435 () Bool)

(declare-fun tp!874349 () Bool)

(assert (=> b!2766435 (= e!1744267 (and (inv!43381 (_1!18871 (_1!18872 (h!37365 mapDefault!17110)))) e!1744264 tp_is_empty!14005 setRes!22593 tp!874349))))

(declare-fun condSetEmpty!22593 () Bool)

(assert (=> b!2766435 (= condSetEmpty!22593 (= (_2!18872 (h!37365 mapDefault!17110)) ((as const (Array Context!4578 Bool)) false)))))

(declare-fun tp!874343 () Bool)

(declare-fun setElem!22592 () Context!4578)

(declare-fun setNonEmpty!22593 () Bool)

(assert (=> setNonEmpty!22593 (= setRes!22593 (and tp!874343 (inv!43381 setElem!22592) e!1744263))))

(declare-fun setRest!22593 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22593 (= (_2!18872 (h!37365 mapDefault!17110)) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22592 true) setRest!22593))))

(assert (= (and mapNonEmpty!17103 condMapEmpty!17110) mapIsEmpty!17110))

(assert (= (and mapNonEmpty!17103 (not condMapEmpty!17110)) mapNonEmpty!17110))

(assert (= b!2766433 b!2766431))

(assert (= (and b!2766433 condSetEmpty!22592) setIsEmpty!22592))

(assert (= (and b!2766433 (not condSetEmpty!22592)) setNonEmpty!22592))

(assert (= setNonEmpty!22592 b!2766432))

(assert (= (and mapNonEmpty!17110 ((_ is Cons!31945) mapValue!17110)) b!2766433))

(assert (= b!2766435 b!2766430))

(assert (= (and b!2766435 condSetEmpty!22593) setIsEmpty!22593))

(assert (= (and b!2766435 (not condSetEmpty!22593)) setNonEmpty!22593))

(assert (= setNonEmpty!22593 b!2766434))

(assert (= (and mapNonEmpty!17103 ((_ is Cons!31945) mapDefault!17110)) b!2766435))

(declare-fun m!3189799 () Bool)

(assert (=> b!2766433 m!3189799))

(declare-fun m!3189801 () Bool)

(assert (=> setNonEmpty!22593 m!3189801))

(declare-fun m!3189803 () Bool)

(assert (=> mapNonEmpty!17110 m!3189803))

(declare-fun m!3189805 () Bool)

(assert (=> b!2766435 m!3189805))

(declare-fun m!3189807 () Bool)

(assert (=> setNonEmpty!22592 m!3189807))

(declare-fun setIsEmpty!22594 () Bool)

(declare-fun setRes!22594 () Bool)

(assert (=> setIsEmpty!22594 setRes!22594))

(declare-fun e!1744271 () Bool)

(assert (=> mapNonEmpty!17103 (= tp!874231 e!1744271)))

(declare-fun e!1744270 () Bool)

(declare-fun setNonEmpty!22594 () Bool)

(declare-fun setElem!22594 () Context!4578)

(declare-fun tp!874350 () Bool)

(assert (=> setNonEmpty!22594 (= setRes!22594 (and tp!874350 (inv!43381 setElem!22594) e!1744270))))

(declare-fun setRest!22594 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22594 (= (_2!18872 (h!37365 mapValue!17104)) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22594 true) setRest!22594))))

(declare-fun e!1744269 () Bool)

(declare-fun b!2766436 () Bool)

(declare-fun tp!874351 () Bool)

(assert (=> b!2766436 (= e!1744271 (and (inv!43381 (_1!18871 (_1!18872 (h!37365 mapValue!17104)))) e!1744269 tp_is_empty!14005 setRes!22594 tp!874351))))

(declare-fun condSetEmpty!22594 () Bool)

(assert (=> b!2766436 (= condSetEmpty!22594 (= (_2!18872 (h!37365 mapValue!17104)) ((as const (Array Context!4578 Bool)) false)))))

(declare-fun b!2766437 () Bool)

(declare-fun tp!874353 () Bool)

(assert (=> b!2766437 (= e!1744269 tp!874353)))

(declare-fun b!2766438 () Bool)

(declare-fun tp!874352 () Bool)

(assert (=> b!2766438 (= e!1744270 tp!874352)))

(assert (= b!2766436 b!2766437))

(assert (= (and b!2766436 condSetEmpty!22594) setIsEmpty!22594))

(assert (= (and b!2766436 (not condSetEmpty!22594)) setNonEmpty!22594))

(assert (= setNonEmpty!22594 b!2766438))

(assert (= (and mapNonEmpty!17103 ((_ is Cons!31945) mapValue!17104)) b!2766436))

(declare-fun m!3189809 () Bool)

(assert (=> setNonEmpty!22594 m!3189809))

(declare-fun m!3189811 () Bool)

(assert (=> b!2766436 m!3189811))

(declare-fun tp!874356 () Bool)

(declare-fun setRes!22595 () Bool)

(declare-fun b!2766439 () Bool)

(declare-fun e!1744273 () Bool)

(declare-fun e!1744272 () Bool)

(declare-fun tp!874358 () Bool)

(assert (=> b!2766439 (= e!1744273 (and tp!874358 (inv!43381 (_2!18873 (_1!18874 (h!37366 mapDefault!17103)))) e!1744272 tp_is_empty!14005 setRes!22595 tp!874356))))

(declare-fun condSetEmpty!22595 () Bool)

(assert (=> b!2766439 (= condSetEmpty!22595 (= (_2!18874 (h!37366 mapDefault!17103)) ((as const (Array Context!4578 Bool)) false)))))

(assert (=> b!2766049 (= tp!874233 e!1744273)))

(declare-fun b!2766440 () Bool)

(declare-fun e!1744274 () Bool)

(declare-fun tp!874357 () Bool)

(assert (=> b!2766440 (= e!1744274 tp!874357)))

(declare-fun setElem!22595 () Context!4578)

(declare-fun setNonEmpty!22595 () Bool)

(declare-fun tp!874354 () Bool)

(assert (=> setNonEmpty!22595 (= setRes!22595 (and tp!874354 (inv!43381 setElem!22595) e!1744274))))

(declare-fun setRest!22595 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22595 (= (_2!18874 (h!37366 mapDefault!17103)) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22595 true) setRest!22595))))

(declare-fun setIsEmpty!22595 () Bool)

(assert (=> setIsEmpty!22595 setRes!22595))

(declare-fun b!2766441 () Bool)

(declare-fun tp!874355 () Bool)

(assert (=> b!2766441 (= e!1744272 tp!874355)))

(assert (= b!2766439 b!2766441))

(assert (= (and b!2766439 condSetEmpty!22595) setIsEmpty!22595))

(assert (= (and b!2766439 (not condSetEmpty!22595)) setNonEmpty!22595))

(assert (= setNonEmpty!22595 b!2766440))

(assert (= (and b!2766049 ((_ is Cons!31946) mapDefault!17103)) b!2766439))

(declare-fun m!3189813 () Bool)

(assert (=> b!2766439 m!3189813))

(declare-fun m!3189815 () Bool)

(assert (=> setNonEmpty!22595 m!3189815))

(declare-fun b!2766446 () Bool)

(declare-fun e!1744277 () Bool)

(declare-fun tp!874363 () Bool)

(declare-fun tp!874364 () Bool)

(assert (=> b!2766446 (= e!1744277 (and tp!874363 tp!874364))))

(assert (=> b!2766031 (= tp!874230 e!1744277)))

(assert (= (and b!2766031 ((_ is Cons!31944) (exprs!2789 setElem!22573))) b!2766446))

(declare-fun condSetEmpty!22598 () Bool)

(assert (=> setNonEmpty!22573 (= condSetEmpty!22598 (= setRest!22573 ((as const (Array Context!4578 Bool)) false)))))

(declare-fun setRes!22598 () Bool)

(assert (=> setNonEmpty!22573 (= tp!874229 setRes!22598)))

(declare-fun setIsEmpty!22598 () Bool)

(assert (=> setIsEmpty!22598 setRes!22598))

(declare-fun setElem!22598 () Context!4578)

(declare-fun e!1744280 () Bool)

(declare-fun tp!874369 () Bool)

(declare-fun setNonEmpty!22598 () Bool)

(assert (=> setNonEmpty!22598 (= setRes!22598 (and tp!874369 (inv!43381 setElem!22598) e!1744280))))

(declare-fun setRest!22598 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22598 (= setRest!22573 ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22598 true) setRest!22598))))

(declare-fun b!2766451 () Bool)

(declare-fun tp!874370 () Bool)

(assert (=> b!2766451 (= e!1744280 tp!874370)))

(assert (= (and setNonEmpty!22573 condSetEmpty!22598) setIsEmpty!22598))

(assert (= (and setNonEmpty!22573 (not condSetEmpty!22598)) setNonEmpty!22598))

(assert (= setNonEmpty!22598 b!2766451))

(declare-fun m!3189817 () Bool)

(assert (=> setNonEmpty!22598 m!3189817))

(declare-fun tp!874373 () Bool)

(declare-fun tp!874375 () Bool)

(declare-fun b!2766452 () Bool)

(declare-fun setRes!22599 () Bool)

(declare-fun e!1744282 () Bool)

(declare-fun e!1744281 () Bool)

(assert (=> b!2766452 (= e!1744282 (and tp!874375 (inv!43381 (_2!18873 (_1!18874 (h!37366 (zeroValue!4010 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939)))))))))) e!1744281 tp_is_empty!14005 setRes!22599 tp!874373))))

(declare-fun condSetEmpty!22599 () Bool)

(assert (=> b!2766452 (= condSetEmpty!22599 (= (_2!18874 (h!37366 (zeroValue!4010 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939)))))))) ((as const (Array Context!4578 Bool)) false)))))

(assert (=> b!2766071 (= tp!874240 e!1744282)))

(declare-fun b!2766453 () Bool)

(declare-fun e!1744283 () Bool)

(declare-fun tp!874374 () Bool)

(assert (=> b!2766453 (= e!1744283 tp!874374)))

(declare-fun setNonEmpty!22599 () Bool)

(declare-fun tp!874371 () Bool)

(declare-fun setElem!22599 () Context!4578)

(assert (=> setNonEmpty!22599 (= setRes!22599 (and tp!874371 (inv!43381 setElem!22599) e!1744283))))

(declare-fun setRest!22599 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22599 (= (_2!18874 (h!37366 (zeroValue!4010 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22599 true) setRest!22599))))

(declare-fun setIsEmpty!22599 () Bool)

(assert (=> setIsEmpty!22599 setRes!22599))

(declare-fun b!2766454 () Bool)

(declare-fun tp!874372 () Bool)

(assert (=> b!2766454 (= e!1744281 tp!874372)))

(assert (= b!2766452 b!2766454))

(assert (= (and b!2766452 condSetEmpty!22599) setIsEmpty!22599))

(assert (= (and b!2766452 (not condSetEmpty!22599)) setNonEmpty!22599))

(assert (= setNonEmpty!22599 b!2766453))

(assert (= (and b!2766071 ((_ is Cons!31946) (zeroValue!4010 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939)))))))) b!2766452))

(declare-fun m!3189819 () Bool)

(assert (=> b!2766452 m!3189819))

(declare-fun m!3189821 () Bool)

(assert (=> setNonEmpty!22599 m!3189821))

(declare-fun setRes!22600 () Bool)

(declare-fun e!1744284 () Bool)

(declare-fun b!2766455 () Bool)

(declare-fun tp!874378 () Bool)

(declare-fun e!1744285 () Bool)

(declare-fun tp!874380 () Bool)

(assert (=> b!2766455 (= e!1744285 (and tp!874380 (inv!43381 (_2!18873 (_1!18874 (h!37366 (minValue!4010 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939)))))))))) e!1744284 tp_is_empty!14005 setRes!22600 tp!874378))))

(declare-fun condSetEmpty!22600 () Bool)

(assert (=> b!2766455 (= condSetEmpty!22600 (= (_2!18874 (h!37366 (minValue!4010 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939)))))))) ((as const (Array Context!4578 Bool)) false)))))

(assert (=> b!2766071 (= tp!874243 e!1744285)))

(declare-fun b!2766456 () Bool)

(declare-fun e!1744286 () Bool)

(declare-fun tp!874379 () Bool)

(assert (=> b!2766456 (= e!1744286 tp!874379)))

(declare-fun setNonEmpty!22600 () Bool)

(declare-fun setElem!22600 () Context!4578)

(declare-fun tp!874376 () Bool)

(assert (=> setNonEmpty!22600 (= setRes!22600 (and tp!874376 (inv!43381 setElem!22600) e!1744286))))

(declare-fun setRest!22600 () (InoxSet Context!4578))

(assert (=> setNonEmpty!22600 (= (_2!18874 (h!37366 (minValue!4010 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4578 Bool)) false) setElem!22600 true) setRest!22600))))

(declare-fun setIsEmpty!22600 () Bool)

(assert (=> setIsEmpty!22600 setRes!22600))

(declare-fun b!2766457 () Bool)

(declare-fun tp!874377 () Bool)

(assert (=> b!2766457 (= e!1744284 tp!874377)))

(assert (= b!2766455 b!2766457))

(assert (= (and b!2766455 condSetEmpty!22600) setIsEmpty!22600))

(assert (= (and b!2766455 (not condSetEmpty!22600)) setNonEmpty!22600))

(assert (= setNonEmpty!22600 b!2766456))

(assert (= (and b!2766071 ((_ is Cons!31946) (minValue!4010 (v!33554 (underlying!7705 (v!33555 (underlying!7706 (cache!3800 cacheDown!939)))))))) b!2766455))

(declare-fun m!3189823 () Bool)

(assert (=> b!2766455 m!3189823))

(declare-fun m!3189825 () Bool)

(assert (=> setNonEmpty!22600 m!3189825))

(check-sat (not b!2766191) (not bm!180324) (not d!803248) (not b!2766384) (not bm!180311) (not d!803152) (not b!2766452) (not b!2766351) (not d!803218) (not d!803144) (not d!803150) (not b!2766131) (not b!2766414) (not bm!180310) (not d!803234) (not bm!180334) (not d!803178) (not d!803182) (not b!2766335) (not b!2766258) (not bm!180316) (not d!803188) (not b!2766432) (not d!803114) (not b!2766339) (not b!2766088) (not bm!180352) (not bm!180315) (not b!2766167) b_and!202839 (not b!2766215) (not d!803214) (not bm!180313) (not bm!180342) (not b!2766202) b_and!202845 (not bm!180339) (not bm!180350) (not d!803226) (not d!803242) (not bm!180318) (not d!803186) (not b!2766234) (not b!2766267) (not d!803220) (not d!803222) (not b!2766260) (not b!2766372) (not b!2766263) (not d!803118) (not d!803172) (not b!2766368) (not b!2766201) (not b!2766415) (not b!2766275) (not b!2766342) (not bm!180340) (not d!803168) (not d!803202) (not setNonEmpty!22594) (not b!2766446) (not b!2766438) (not b!2766431) (not b!2766453) (not d!803230) (not bm!180309) (not b!2766220) (not d!803136) (not setNonEmpty!22578) (not b!2766189) (not b_next!78807) (not b!2766356) (not b!2766252) (not d!803174) (not d!803160) (not d!803124) (not b!2766129) (not b!2766382) (not bm!180287) (not b_next!78805) (not b!2766413) (not b!2766434) (not bm!180321) (not bm!180286) (not bm!180282) (not bm!180283) (not b!2766176) (not setNonEmpty!22587) (not bm!180346) (not bm!180332) (not b!2766302) (not b!2766277) (not d!803236) (not b!2766087) (not b!2766041) (not bm!180322) (not b!2766266) (not b!2766365) (not setNonEmpty!22595) (not bm!180312) (not d!803128) (not d!803148) (not bm!180336) (not b!2766440) (not bm!180353) (not d!803196) (not d!803140) (not b!2766119) (not d!803204) (not bm!180355) (not b!2766251) (not b!2766355) (not b!2766402) (not d!803192) (not bm!180345) (not b!2766343) (not bm!180349) (not b!2766346) (not setNonEmpty!22598) (not d!803158) (not d!803244) (not b!2766433) (not b!2766367) (not b!2766311) (not b!2766209) (not d!803132) (not b!2766305) (not bm!180337) (not bm!180331) (not d!803184) (not d!803232) (not b!2766383) (not setNonEmpty!22583) (not b!2766172) (not mapNonEmpty!17110) (not b!2766256) (not b!2766208) (not bm!180285) (not b!2766316) (not b!2766222) (not setNonEmpty!22592) (not b!2766439) (not d!803206) (not d!803246) (not b!2766259) (not bm!180333) (not mapNonEmpty!17107) (not b!2766400) (not d!803170) (not d!803122) (not b!2766177) (not bm!180335) (not b!2766223) (not setNonEmpty!22584) (not b!2766401) (not b!2766241) (not b!2766457) (not bm!180348) b_and!202843 (not bm!180281) (not d!803116) (not b!2766249) (not bm!180338) (not b!2766399) (not d!803162) (not bm!180325) (not bm!180319) (not bm!180351) (not b!2766366) (not b!2766451) (not b!2766326) tp_is_empty!14005 (not b!2766454) (not b!2766354) (not bm!180354) (not d!803212) (not b!2766403) (not b!2766430) (not bm!180347) (not b_next!78809) (not b_next!78811) (not d!803224) (not b!2766315) (not d!803176) (not d!803134) (not bm!180341) (not d!803142) (not b!2766181) (not b!2766404) (not b!2766166) (not b!2766441) (not setNonEmpty!22577) (not b!2766306) (not b!2766247) (not setNonEmpty!22600) (not b!2766456) (not b!2766246) (not b!2766173) (not d!803210) (not b!2766369) (not b!2766301) (not b!2766371) (not bm!180314) (not d!803154) (not b!2766347) (not setNonEmpty!22599) (not d!803164) (not b!2766309) (not bm!180320) (not b!2766214) (not bm!180326) (not b!2766162) (not b!2766089) (not b!2766312) (not bm!180317) (not d!803126) (not b!2766235) (not bm!180288) (not setNonEmpty!22593) (not b!2766437) (not b!2766276) (not bm!180284) (not b!2766340) (not bm!180323) (not b!2766230) (not b!2766175) (not setNonEmpty!22576) (not d!803138) (not b!2766436) (not b!2766324) (not b!2766455) (not d!803194) (not b!2766435) (not d!803146) b_and!202841 (not b!2766179) (not b!2766262) (not b!2766121) (not b!2766370) (not d!803228) (not b!2766373) (not d!803120))
(check-sat b_and!202839 b_and!202845 (not b_next!78807) (not b_next!78805) b_and!202843 b_and!202841 (not b_next!78809) (not b_next!78811))
