; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1978 () Bool)

(assert start!1978)

(declare-fun b!35951 () Bool)

(declare-fun b_free!533 () Bool)

(declare-fun b_next!533 () Bool)

(assert (=> b!35951 (= b_free!533 (not b_next!533))))

(declare-fun tp!24815 () Bool)

(declare-fun b_and!567 () Bool)

(assert (=> b!35951 (= tp!24815 b_and!567)))

(declare-fun b!35957 () Bool)

(declare-fun b_free!535 () Bool)

(declare-fun b_next!535 () Bool)

(assert (=> b!35957 (= b_free!535 (not b_next!535))))

(declare-fun tp!24823 () Bool)

(declare-fun b_and!569 () Bool)

(assert (=> b!35957 (= tp!24823 b_and!569)))

(declare-fun b!35949 () Bool)

(declare-fun e!17578 () Bool)

(declare-fun tp_is_empty!363 () Bool)

(assert (=> b!35949 (= e!17578 tp_is_empty!363)))

(declare-fun b!35950 () Bool)

(declare-fun e!17580 () Bool)

(declare-fun e!17581 () Bool)

(assert (=> b!35950 (= e!17580 e!17581)))

(declare-fun e!17573 () Bool)

(assert (=> b!35951 (= e!17581 (and e!17573 tp!24815))))

(declare-fun mapIsEmpty!349 () Bool)

(declare-fun mapRes!349 () Bool)

(assert (=> mapIsEmpty!349 mapRes!349))

(declare-fun res!28107 () Bool)

(declare-fun e!17576 () Bool)

(assert (=> start!1978 (=> (not res!28107) (not e!17576))))

(declare-datatypes ((C!1372 0))(
  ( (C!1373 (val!205 Int)) )
))
(declare-datatypes ((Regex!169 0))(
  ( (ElementMatch!169 (c!15464 C!1372)) (Concat!288 (regOne!850 Regex!169) (regTwo!850 Regex!169)) (EmptyExpr!169) (Star!169 (reg!498 Regex!169)) (EmptyLang!169) (Union!169 (regOne!851 Regex!169) (regTwo!851 Regex!169)) )
))
(declare-fun r!13380 () Regex!169)

(declare-fun validRegex!7 (Regex!169) Bool)

(assert (=> start!1978 (= res!28107 (validRegex!7 r!13380))))

(assert (=> start!1978 e!17576))

(assert (=> start!1978 e!17578))

(declare-datatypes ((tuple2!344 0))(
  ( (tuple2!345 (_1!238 Regex!169) (_2!238 C!1372)) )
))
(declare-datatypes ((tuple2!346 0))(
  ( (tuple2!347 (_1!239 tuple2!344) (_2!239 Regex!169)) )
))
(declare-datatypes ((List!399 0))(
  ( (Nil!397) (Cons!397 (h!5793 tuple2!346) (t!15235 List!399)) )
))
(declare-datatypes ((array!346 0))(
  ( (array!347 (arr!188 (Array (_ BitVec 32) List!399)) (size!444 (_ BitVec 32))) )
))
(declare-datatypes ((array!348 0))(
  ( (array!349 (arr!189 (Array (_ BitVec 32) (_ BitVec 64))) (size!445 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!210 0))(
  ( (LongMapFixedSize!211 (defaultEntry!443 Int) (mask!791 (_ BitVec 32)) (extraKeys!351 (_ BitVec 32)) (zeroValue!361 List!399) (minValue!361 List!399) (_size!342 (_ BitVec 32)) (_keys!396 array!348) (_values!383 array!346) (_vacant!165 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!101 0))(
  ( (HashableExt!100 (__x!737 Int)) )
))
(declare-datatypes ((Cell!409 0))(
  ( (Cell!410 (v!12178 LongMapFixedSize!210)) )
))
(declare-datatypes ((MutLongMap!105 0))(
  ( (LongMap!105 (underlying!405 Cell!409)) (MutLongMapExt!104 (__x!738 Int)) )
))
(declare-datatypes ((Cell!411 0))(
  ( (Cell!412 (v!12179 MutLongMap!105)) )
))
(declare-datatypes ((MutableMap!101 0))(
  ( (MutableMapExt!100 (__x!739 Int)) (HashMap!101 (underlying!406 Cell!411) (hashF!1969 Hashable!101) (_size!343 (_ BitVec 32)) (defaultValue!250 Int)) )
))
(declare-datatypes ((Cache!10 0))(
  ( (Cache!11 (cache!580 MutableMap!101)) )
))
(declare-fun cache!443 () Cache!10)

(declare-fun inv!698 (Cache!10) Bool)

(assert (=> start!1978 (and (inv!698 cache!443) e!17580)))

(declare-fun e!17575 () Bool)

(assert (=> start!1978 e!17575))

(declare-fun b!35952 () Bool)

(declare-fun tp!24819 () Bool)

(assert (=> b!35952 (= e!17575 (and tp_is_empty!363 tp!24819))))

(declare-fun b!35953 () Bool)

(declare-fun tp!24825 () Bool)

(declare-fun tp!24824 () Bool)

(assert (=> b!35953 (= e!17578 (and tp!24825 tp!24824))))

(declare-fun b!35954 () Bool)

(declare-datatypes ((List!400 0))(
  ( (Nil!398) (Cons!398 (h!5794 C!1372) (t!15236 List!400)) )
))
(declare-fun input!6011 () List!400)

(assert (=> b!35954 (= e!17576 (= input!6011 Nil!398))))

(declare-fun b!35955 () Bool)

(declare-fun tp!24820 () Bool)

(declare-fun tp!24827 () Bool)

(assert (=> b!35955 (= e!17578 (and tp!24820 tp!24827))))

(declare-fun b!35956 () Bool)

(declare-fun e!17582 () Bool)

(declare-fun lt!2988 () MutLongMap!105)

(get-info :version)

(assert (=> b!35956 (= e!17573 (and e!17582 ((_ is LongMap!105) lt!2988)))))

(assert (=> b!35956 (= lt!2988 (v!12179 (underlying!406 (cache!580 cache!443))))))

(declare-fun mapNonEmpty!349 () Bool)

(declare-fun tp!24818 () Bool)

(declare-fun tp!24826 () Bool)

(assert (=> mapNonEmpty!349 (= mapRes!349 (and tp!24818 tp!24826))))

(declare-fun mapRest!349 () (Array (_ BitVec 32) List!399))

(declare-fun mapKey!349 () (_ BitVec 32))

(declare-fun mapValue!349 () List!399)

(assert (=> mapNonEmpty!349 (= (arr!188 (_values!383 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443))))))) (store mapRest!349 mapKey!349 mapValue!349))))

(declare-fun tp!24822 () Bool)

(declare-fun e!17572 () Bool)

(declare-fun e!17574 () Bool)

(declare-fun tp!24816 () Bool)

(declare-fun array_inv!110 (array!348) Bool)

(declare-fun array_inv!111 (array!346) Bool)

(assert (=> b!35957 (= e!17574 (and tp!24823 tp!24822 tp!24816 (array_inv!110 (_keys!396 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443))))))) (array_inv!111 (_values!383 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443))))))) e!17572))))

(declare-fun b!35958 () Bool)

(declare-fun res!28106 () Bool)

(assert (=> b!35958 (=> (not res!28106) (not e!17576))))

(declare-fun isEmpty!87 (List!400) Bool)

(assert (=> b!35958 (= res!28106 (not (isEmpty!87 input!6011)))))

(declare-fun b!35959 () Bool)

(declare-fun res!28105 () Bool)

(assert (=> b!35959 (=> (not res!28105) (not e!17576))))

(declare-fun valid!115 (Cache!10) Bool)

(assert (=> b!35959 (= res!28105 (valid!115 cache!443))))

(declare-fun b!35960 () Bool)

(declare-fun e!17577 () Bool)

(assert (=> b!35960 (= e!17582 e!17577)))

(declare-fun b!35961 () Bool)

(declare-fun tp!24821 () Bool)

(assert (=> b!35961 (= e!17572 (and tp!24821 mapRes!349))))

(declare-fun condMapEmpty!349 () Bool)

(declare-fun mapDefault!349 () List!399)

(assert (=> b!35961 (= condMapEmpty!349 (= (arr!188 (_values!383 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443))))))) ((as const (Array (_ BitVec 32) List!399)) mapDefault!349)))))

(declare-fun b!35962 () Bool)

(declare-fun tp!24817 () Bool)

(assert (=> b!35962 (= e!17578 tp!24817)))

(declare-fun b!35963 () Bool)

(assert (=> b!35963 (= e!17577 e!17574)))

(assert (= (and start!1978 res!28107) b!35959))

(assert (= (and b!35959 res!28105) b!35958))

(assert (= (and b!35958 res!28106) b!35954))

(assert (= (and start!1978 ((_ is ElementMatch!169) r!13380)) b!35949))

(assert (= (and start!1978 ((_ is Concat!288) r!13380)) b!35953))

(assert (= (and start!1978 ((_ is Star!169) r!13380)) b!35962))

(assert (= (and start!1978 ((_ is Union!169) r!13380)) b!35955))

(assert (= (and b!35961 condMapEmpty!349) mapIsEmpty!349))

(assert (= (and b!35961 (not condMapEmpty!349)) mapNonEmpty!349))

(assert (= b!35957 b!35961))

(assert (= b!35963 b!35957))

(assert (= b!35960 b!35963))

(assert (= (and b!35956 ((_ is LongMap!105) (v!12179 (underlying!406 (cache!580 cache!443))))) b!35960))

(assert (= b!35951 b!35956))

(assert (= (and b!35950 ((_ is HashMap!101) (cache!580 cache!443))) b!35951))

(assert (= start!1978 b!35950))

(assert (= (and start!1978 ((_ is Cons!398) input!6011)) b!35952))

(declare-fun m!11698 () Bool)

(assert (=> b!35959 m!11698))

(declare-fun m!11700 () Bool)

(assert (=> mapNonEmpty!349 m!11700))

(declare-fun m!11702 () Bool)

(assert (=> start!1978 m!11702))

(declare-fun m!11704 () Bool)

(assert (=> start!1978 m!11704))

(declare-fun m!11706 () Bool)

(assert (=> b!35958 m!11706))

(declare-fun m!11708 () Bool)

(assert (=> b!35957 m!11708))

(declare-fun m!11710 () Bool)

(assert (=> b!35957 m!11710))

(check-sat tp_is_empty!363 b_and!569 (not b!35952) b_and!567 (not start!1978) (not b_next!535) (not b!35955) (not b!35959) (not b!35961) (not mapNonEmpty!349) (not b!35953) (not b!35962) (not b_next!533) (not b!35957) (not b!35958))
(check-sat b_and!569 b_and!567 (not b_next!535) (not b_next!533))
(get-model)

(declare-fun d!3863 () Bool)

(assert (=> d!3863 (= (isEmpty!87 input!6011) ((_ is Nil!398) input!6011))))

(assert (=> b!35958 d!3863))

(declare-fun b!35982 () Bool)

(declare-fun e!17603 () Bool)

(declare-fun e!17597 () Bool)

(assert (=> b!35982 (= e!17603 e!17597)))

(declare-fun c!15470 () Bool)

(assert (=> b!35982 (= c!15470 ((_ is Union!169) r!13380))))

(declare-fun b!35983 () Bool)

(declare-fun e!17600 () Bool)

(declare-fun e!17602 () Bool)

(assert (=> b!35983 (= e!17600 e!17602)))

(declare-fun res!28121 () Bool)

(assert (=> b!35983 (=> (not res!28121) (not e!17602))))

(declare-fun call!2676 () Bool)

(assert (=> b!35983 (= res!28121 call!2676)))

(declare-fun b!35984 () Bool)

(declare-fun e!17599 () Bool)

(declare-fun call!2678 () Bool)

(assert (=> b!35984 (= e!17599 call!2678)))

(declare-fun b!35985 () Bool)

(assert (=> b!35985 (= e!17602 call!2678)))

(declare-fun b!35986 () Bool)

(declare-fun e!17601 () Bool)

(assert (=> b!35986 (= e!17601 e!17603)))

(declare-fun c!15469 () Bool)

(assert (=> b!35986 (= c!15469 ((_ is Star!169) r!13380))))

(declare-fun b!35987 () Bool)

(declare-fun res!28122 () Bool)

(assert (=> b!35987 (=> (not res!28122) (not e!17599))))

(assert (=> b!35987 (= res!28122 call!2676)))

(assert (=> b!35987 (= e!17597 e!17599)))

(declare-fun b!35988 () Bool)

(declare-fun e!17598 () Bool)

(declare-fun call!2677 () Bool)

(assert (=> b!35988 (= e!17598 call!2677)))

(declare-fun bm!2671 () Bool)

(assert (=> bm!2671 (= call!2676 call!2677)))

(declare-fun d!3865 () Bool)

(declare-fun res!28120 () Bool)

(assert (=> d!3865 (=> res!28120 e!17601)))

(assert (=> d!3865 (= res!28120 ((_ is ElementMatch!169) r!13380))))

(assert (=> d!3865 (= (validRegex!7 r!13380) e!17601)))

(declare-fun bm!2672 () Bool)

(assert (=> bm!2672 (= call!2677 (validRegex!7 (ite c!15469 (reg!498 r!13380) (ite c!15470 (regOne!851 r!13380) (regOne!850 r!13380)))))))

(declare-fun b!35989 () Bool)

(declare-fun res!28118 () Bool)

(assert (=> b!35989 (=> res!28118 e!17600)))

(assert (=> b!35989 (= res!28118 (not ((_ is Concat!288) r!13380)))))

(assert (=> b!35989 (= e!17597 e!17600)))

(declare-fun b!35990 () Bool)

(assert (=> b!35990 (= e!17603 e!17598)))

(declare-fun res!28119 () Bool)

(declare-fun nullable!8 (Regex!169) Bool)

(assert (=> b!35990 (= res!28119 (not (nullable!8 (reg!498 r!13380))))))

(assert (=> b!35990 (=> (not res!28119) (not e!17598))))

(declare-fun bm!2673 () Bool)

(assert (=> bm!2673 (= call!2678 (validRegex!7 (ite c!15470 (regTwo!851 r!13380) (regTwo!850 r!13380))))))

(assert (= (and d!3865 (not res!28120)) b!35986))

(assert (= (and b!35986 c!15469) b!35990))

(assert (= (and b!35986 (not c!15469)) b!35982))

(assert (= (and b!35990 res!28119) b!35988))

(assert (= (and b!35982 c!15470) b!35987))

(assert (= (and b!35982 (not c!15470)) b!35989))

(assert (= (and b!35987 res!28122) b!35984))

(assert (= (and b!35989 (not res!28118)) b!35983))

(assert (= (and b!35983 res!28121) b!35985))

(assert (= (or b!35987 b!35983) bm!2671))

(assert (= (or b!35984 b!35985) bm!2673))

(assert (= (or b!35988 bm!2671) bm!2672))

(declare-fun m!11712 () Bool)

(assert (=> bm!2672 m!11712))

(declare-fun m!11714 () Bool)

(assert (=> b!35990 m!11714))

(declare-fun m!11716 () Bool)

(assert (=> bm!2673 m!11716))

(assert (=> start!1978 d!3865))

(declare-fun d!3867 () Bool)

(declare-fun res!28125 () Bool)

(declare-fun e!17606 () Bool)

(assert (=> d!3867 (=> (not res!28125) (not e!17606))))

(assert (=> d!3867 (= res!28125 ((_ is HashMap!101) (cache!580 cache!443)))))

(assert (=> d!3867 (= (inv!698 cache!443) e!17606)))

(declare-fun b!35993 () Bool)

(declare-fun validCacheMap!1 (MutableMap!101) Bool)

(assert (=> b!35993 (= e!17606 (validCacheMap!1 (cache!580 cache!443)))))

(assert (= (and d!3867 res!28125) b!35993))

(declare-fun m!11718 () Bool)

(assert (=> b!35993 m!11718))

(assert (=> start!1978 d!3867))

(declare-fun d!3869 () Bool)

(assert (=> d!3869 (= (array_inv!110 (_keys!396 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443))))))) (bvsge (size!445 (_keys!396 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!35957 d!3869))

(declare-fun d!3871 () Bool)

(assert (=> d!3871 (= (array_inv!111 (_values!383 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443))))))) (bvsge (size!444 (_values!383 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!35957 d!3871))

(declare-fun d!3873 () Bool)

(assert (=> d!3873 (= (valid!115 cache!443) (validCacheMap!1 (cache!580 cache!443)))))

(declare-fun bs!4960 () Bool)

(assert (= bs!4960 d!3873))

(assert (=> bs!4960 m!11718))

(assert (=> b!35959 d!3873))

(declare-fun e!17609 () Bool)

(assert (=> b!35953 (= tp!24825 e!17609)))

(declare-fun b!36004 () Bool)

(assert (=> b!36004 (= e!17609 tp_is_empty!363)))

(declare-fun b!36007 () Bool)

(declare-fun tp!24842 () Bool)

(declare-fun tp!24838 () Bool)

(assert (=> b!36007 (= e!17609 (and tp!24842 tp!24838))))

(declare-fun b!36005 () Bool)

(declare-fun tp!24841 () Bool)

(declare-fun tp!24839 () Bool)

(assert (=> b!36005 (= e!17609 (and tp!24841 tp!24839))))

(declare-fun b!36006 () Bool)

(declare-fun tp!24840 () Bool)

(assert (=> b!36006 (= e!17609 tp!24840)))

(assert (= (and b!35953 ((_ is ElementMatch!169) (regOne!850 r!13380))) b!36004))

(assert (= (and b!35953 ((_ is Concat!288) (regOne!850 r!13380))) b!36005))

(assert (= (and b!35953 ((_ is Star!169) (regOne!850 r!13380))) b!36006))

(assert (= (and b!35953 ((_ is Union!169) (regOne!850 r!13380))) b!36007))

(declare-fun e!17610 () Bool)

(assert (=> b!35953 (= tp!24824 e!17610)))

(declare-fun b!36008 () Bool)

(assert (=> b!36008 (= e!17610 tp_is_empty!363)))

(declare-fun b!36011 () Bool)

(declare-fun tp!24847 () Bool)

(declare-fun tp!24843 () Bool)

(assert (=> b!36011 (= e!17610 (and tp!24847 tp!24843))))

(declare-fun b!36009 () Bool)

(declare-fun tp!24846 () Bool)

(declare-fun tp!24844 () Bool)

(assert (=> b!36009 (= e!17610 (and tp!24846 tp!24844))))

(declare-fun b!36010 () Bool)

(declare-fun tp!24845 () Bool)

(assert (=> b!36010 (= e!17610 tp!24845)))

(assert (= (and b!35953 ((_ is ElementMatch!169) (regTwo!850 r!13380))) b!36008))

(assert (= (and b!35953 ((_ is Concat!288) (regTwo!850 r!13380))) b!36009))

(assert (= (and b!35953 ((_ is Star!169) (regTwo!850 r!13380))) b!36010))

(assert (= (and b!35953 ((_ is Union!169) (regTwo!850 r!13380))) b!36011))

(declare-fun b!36016 () Bool)

(declare-fun tp!24854 () Bool)

(declare-fun tp!24855 () Bool)

(declare-fun e!17613 () Bool)

(declare-fun tp!24856 () Bool)

(assert (=> b!36016 (= e!17613 (and tp!24854 tp_is_empty!363 tp!24855 tp!24856))))

(assert (=> b!35957 (= tp!24822 e!17613)))

(assert (= (and b!35957 ((_ is Cons!397) (zeroValue!361 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443)))))))) b!36016))

(declare-fun e!17614 () Bool)

(declare-fun tp!24859 () Bool)

(declare-fun b!36017 () Bool)

(declare-fun tp!24857 () Bool)

(declare-fun tp!24858 () Bool)

(assert (=> b!36017 (= e!17614 (and tp!24857 tp_is_empty!363 tp!24858 tp!24859))))

(assert (=> b!35957 (= tp!24816 e!17614)))

(assert (= (and b!35957 ((_ is Cons!397) (minValue!361 (v!12178 (underlying!405 (v!12179 (underlying!406 (cache!580 cache!443)))))))) b!36017))

(declare-fun e!17615 () Bool)

(assert (=> b!35962 (= tp!24817 e!17615)))

(declare-fun b!36018 () Bool)

(assert (=> b!36018 (= e!17615 tp_is_empty!363)))

(declare-fun b!36021 () Bool)

(declare-fun tp!24864 () Bool)

(declare-fun tp!24860 () Bool)

(assert (=> b!36021 (= e!17615 (and tp!24864 tp!24860))))

(declare-fun b!36019 () Bool)

(declare-fun tp!24863 () Bool)

(declare-fun tp!24861 () Bool)

(assert (=> b!36019 (= e!17615 (and tp!24863 tp!24861))))

(declare-fun b!36020 () Bool)

(declare-fun tp!24862 () Bool)

(assert (=> b!36020 (= e!17615 tp!24862)))

(assert (= (and b!35962 ((_ is ElementMatch!169) (reg!498 r!13380))) b!36018))

(assert (= (and b!35962 ((_ is Concat!288) (reg!498 r!13380))) b!36019))

(assert (= (and b!35962 ((_ is Star!169) (reg!498 r!13380))) b!36020))

(assert (= (and b!35962 ((_ is Union!169) (reg!498 r!13380))) b!36021))

(declare-fun b!36026 () Bool)

(declare-fun e!17618 () Bool)

(declare-fun tp!24867 () Bool)

(assert (=> b!36026 (= e!17618 (and tp_is_empty!363 tp!24867))))

(assert (=> b!35952 (= tp!24819 e!17618)))

(assert (= (and b!35952 ((_ is Cons!398) (t!15236 input!6011))) b!36026))

(declare-fun tp!24887 () Bool)

(declare-fun tp!24883 () Bool)

(declare-fun tp!24882 () Bool)

(declare-fun b!36034 () Bool)

(declare-fun e!17624 () Bool)

(assert (=> b!36034 (= e!17624 (and tp!24883 tp_is_empty!363 tp!24887 tp!24882))))

(declare-fun mapIsEmpty!352 () Bool)

(declare-fun mapRes!352 () Bool)

(assert (=> mapIsEmpty!352 mapRes!352))

(declare-fun mapNonEmpty!352 () Bool)

(declare-fun tp!24886 () Bool)

(declare-fun e!17623 () Bool)

(assert (=> mapNonEmpty!352 (= mapRes!352 (and tp!24886 e!17623))))

(declare-fun mapKey!352 () (_ BitVec 32))

(declare-fun mapRest!352 () (Array (_ BitVec 32) List!399))

(declare-fun mapValue!352 () List!399)

(assert (=> mapNonEmpty!352 (= mapRest!349 (store mapRest!352 mapKey!352 mapValue!352))))

(declare-fun condMapEmpty!352 () Bool)

(declare-fun mapDefault!352 () List!399)

(assert (=> mapNonEmpty!349 (= condMapEmpty!352 (= mapRest!349 ((as const (Array (_ BitVec 32) List!399)) mapDefault!352)))))

(assert (=> mapNonEmpty!349 (= tp!24818 (and e!17624 mapRes!352))))

(declare-fun tp!24888 () Bool)

(declare-fun tp!24884 () Bool)

(declare-fun b!36033 () Bool)

(declare-fun tp!24885 () Bool)

(assert (=> b!36033 (= e!17623 (and tp!24888 tp_is_empty!363 tp!24885 tp!24884))))

(assert (= (and mapNonEmpty!349 condMapEmpty!352) mapIsEmpty!352))

(assert (= (and mapNonEmpty!349 (not condMapEmpty!352)) mapNonEmpty!352))

(assert (= (and mapNonEmpty!352 ((_ is Cons!397) mapValue!352)) b!36033))

(assert (= (and mapNonEmpty!349 ((_ is Cons!397) mapDefault!352)) b!36034))

(declare-fun m!11720 () Bool)

(assert (=> mapNonEmpty!352 m!11720))

(declare-fun tp!24891 () Bool)

(declare-fun tp!24889 () Bool)

(declare-fun b!36035 () Bool)

(declare-fun tp!24890 () Bool)

(declare-fun e!17625 () Bool)

(assert (=> b!36035 (= e!17625 (and tp!24889 tp_is_empty!363 tp!24890 tp!24891))))

(assert (=> mapNonEmpty!349 (= tp!24826 e!17625)))

(assert (= (and mapNonEmpty!349 ((_ is Cons!397) mapValue!349)) b!36035))

(declare-fun b!36036 () Bool)

(declare-fun tp!24893 () Bool)

(declare-fun e!17626 () Bool)

(declare-fun tp!24892 () Bool)

(declare-fun tp!24894 () Bool)

(assert (=> b!36036 (= e!17626 (and tp!24892 tp_is_empty!363 tp!24893 tp!24894))))

(assert (=> b!35961 (= tp!24821 e!17626)))

(assert (= (and b!35961 ((_ is Cons!397) mapDefault!349)) b!36036))

(declare-fun e!17627 () Bool)

(assert (=> b!35955 (= tp!24820 e!17627)))

(declare-fun b!36037 () Bool)

(assert (=> b!36037 (= e!17627 tp_is_empty!363)))

(declare-fun b!36040 () Bool)

(declare-fun tp!24899 () Bool)

(declare-fun tp!24895 () Bool)

(assert (=> b!36040 (= e!17627 (and tp!24899 tp!24895))))

(declare-fun b!36038 () Bool)

(declare-fun tp!24898 () Bool)

(declare-fun tp!24896 () Bool)

(assert (=> b!36038 (= e!17627 (and tp!24898 tp!24896))))

(declare-fun b!36039 () Bool)

(declare-fun tp!24897 () Bool)

(assert (=> b!36039 (= e!17627 tp!24897)))

(assert (= (and b!35955 ((_ is ElementMatch!169) (regOne!851 r!13380))) b!36037))

(assert (= (and b!35955 ((_ is Concat!288) (regOne!851 r!13380))) b!36038))

(assert (= (and b!35955 ((_ is Star!169) (regOne!851 r!13380))) b!36039))

(assert (= (and b!35955 ((_ is Union!169) (regOne!851 r!13380))) b!36040))

(declare-fun e!17628 () Bool)

(assert (=> b!35955 (= tp!24827 e!17628)))

(declare-fun b!36041 () Bool)

(assert (=> b!36041 (= e!17628 tp_is_empty!363)))

(declare-fun b!36044 () Bool)

(declare-fun tp!24904 () Bool)

(declare-fun tp!24900 () Bool)

(assert (=> b!36044 (= e!17628 (and tp!24904 tp!24900))))

(declare-fun b!36042 () Bool)

(declare-fun tp!24903 () Bool)

(declare-fun tp!24901 () Bool)

(assert (=> b!36042 (= e!17628 (and tp!24903 tp!24901))))

(declare-fun b!36043 () Bool)

(declare-fun tp!24902 () Bool)

(assert (=> b!36043 (= e!17628 tp!24902)))

(assert (= (and b!35955 ((_ is ElementMatch!169) (regTwo!851 r!13380))) b!36041))

(assert (= (and b!35955 ((_ is Concat!288) (regTwo!851 r!13380))) b!36042))

(assert (= (and b!35955 ((_ is Star!169) (regTwo!851 r!13380))) b!36043))

(assert (= (and b!35955 ((_ is Union!169) (regTwo!851 r!13380))) b!36044))

(check-sat tp_is_empty!363 (not b!35993) (not b!36021) (not b!36035) (not b!36026) (not b!36011) (not b!36043) (not b!36016) (not b!36036) (not b!36040) (not b!36010) (not b!36017) (not b!36034) (not b!36020) (not b!36007) (not b!35990) (not b!36019) b_and!569 (not b!36044) b_and!567 (not mapNonEmpty!352) (not b!36038) (not b_next!533) (not bm!2673) (not b!36009) (not bm!2672) (not b!36006) (not b!36039) (not b_next!535) (not b!36042) (not d!3873) (not b!36005) (not b!36033))
(check-sat b_and!569 b_and!567 (not b_next!535) (not b_next!533))
