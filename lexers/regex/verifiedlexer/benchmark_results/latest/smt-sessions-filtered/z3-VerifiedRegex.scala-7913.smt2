; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412724 () Bool)

(assert start!412724)

(declare-fun b_free!127941 () Bool)

(declare-fun b_next!128645 () Bool)

(assert (=> start!412724 (= b_free!127941 (not b_next!128645))))

(declare-fun tp!1320649 () Bool)

(declare-fun b_and!339215 () Bool)

(assert (=> start!412724 (= tp!1320649 b_and!339215)))

(declare-fun b!4298724 () Bool)

(declare-fun b_free!127943 () Bool)

(declare-fun b_next!128647 () Bool)

(assert (=> b!4298724 (= b_free!127943 (not b_next!128647))))

(declare-fun tp!1320650 () Bool)

(declare-fun b_and!339217 () Bool)

(assert (=> b!4298724 (= tp!1320650 b_and!339217)))

(declare-fun b!4298725 () Bool)

(declare-fun b_free!127945 () Bool)

(declare-fun b_next!128649 () Bool)

(assert (=> b!4298725 (= b_free!127945 (not b_next!128649))))

(declare-fun tp!1320653 () Bool)

(declare-fun b_and!339219 () Bool)

(assert (=> b!4298725 (= tp!1320653 b_and!339219)))

(declare-fun b!4298714 () Bool)

(declare-fun e!2671828 () Bool)

(declare-fun e!2671825 () Bool)

(assert (=> b!4298714 (= e!2671828 e!2671825)))

(declare-fun b!4298715 () Bool)

(declare-datatypes ((Unit!66667 0))(
  ( (Unit!66668) )
))
(declare-fun e!2671829 () Unit!66667)

(declare-fun lt!1520425 () Unit!66667)

(assert (=> b!4298715 (= e!2671829 lt!1520425)))

(declare-datatypes ((K!9014 0))(
  ( (K!9015 (val!15469 Int)) )
))
(declare-fun k0!1716 () K!9014)

(declare-datatypes ((V!9216 0))(
  ( (V!9217 (val!15470 Int)) )
))
(declare-fun v!9471 () V!9216)

(declare-fun lt!1520424 () Unit!66667)

(declare-datatypes ((tuple2!45804 0))(
  ( (tuple2!45805 (_1!26181 K!9014) (_2!26181 V!9216)) )
))
(declare-datatypes ((List!48039 0))(
  ( (Nil!47915) (Cons!47915 (h!53335 tuple2!45804) (t!354706 List!48039)) )
))
(declare-datatypes ((ListMap!1453 0))(
  ( (ListMap!1454 (toList!2176 List!48039)) )
))
(declare-fun lt!1520428 () ListMap!1453)

(declare-fun p!6034 () Int)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!6 (List!48039 K!9014 V!9216 Int) Unit!66667)

(assert (=> b!4298715 (= lt!1520424 (lemmaInsertNoDuplicatedKeysPreservesForall!6 (toList!2176 lt!1520428) k0!1716 v!9471 p!6034))))

(declare-fun forall!8614 (List!48039 Int) Bool)

(declare-fun insertNoDuplicatedKeys!15 (List!48039 K!9014 V!9216) List!48039)

(assert (=> b!4298715 (forall!8614 (insertNoDuplicatedKeys!15 (toList!2176 lt!1520428) k0!1716 v!9471) p!6034)))

(declare-fun lt!1520429 () ListMap!1453)

(declare-datatypes ((Hashable!4423 0))(
  ( (HashableExt!4422 (__x!29546 Int)) )
))
(declare-datatypes ((array!16120 0))(
  ( (array!16121 (arr!7199 (Array (_ BitVec 32) (_ BitVec 64))) (size!35238 (_ BitVec 32))) )
))
(declare-datatypes ((array!16122 0))(
  ( (array!16123 (arr!7200 (Array (_ BitVec 32) List!48039)) (size!35239 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9014 0))(
  ( (LongMapFixedSize!9015 (defaultEntry!4892 Int) (mask!12989 (_ BitVec 32)) (extraKeys!4756 (_ BitVec 32)) (zeroValue!4766 List!48039) (minValue!4766 List!48039) (_size!9057 (_ BitVec 32)) (_keys!4807 array!16120) (_values!4788 array!16122) (_vacant!4568 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17837 0))(
  ( (Cell!17838 (v!41865 LongMapFixedSize!9014)) )
))
(declare-datatypes ((MutLongMap!4507 0))(
  ( (LongMap!4507 (underlying!9243 Cell!17837)) (MutLongMapExt!4506 (__x!29547 Int)) )
))
(declare-datatypes ((Cell!17839 0))(
  ( (Cell!17840 (v!41866 MutLongMap!4507)) )
))
(declare-datatypes ((MutableMap!4413 0))(
  ( (MutableMapExt!4412 (__x!29548 Int)) (HashMap!4413 (underlying!9244 Cell!17839) (hashF!6455 Hashable!4423) (_size!9058 (_ BitVec 32)) (defaultValue!4584 Int)) )
))
(declare-datatypes ((tuple2!45806 0))(
  ( (tuple2!45807 (_1!26182 Bool) (_2!26182 MutableMap!4413)) )
))
(declare-fun lt!1520422 () tuple2!45806)

(declare-fun map!9874 (MutableMap!4413) ListMap!1453)

(assert (=> b!4298715 (= lt!1520429 (map!9874 (_2!26182 lt!1520422)))))

(declare-fun lt!1520423 () ListMap!1453)

(declare-fun lemmaForallSubset!16 (List!48039 List!48039 Int) Unit!66667)

(assert (=> b!4298715 (= lt!1520425 (lemmaForallSubset!16 (toList!2176 lt!1520429) (toList!2176 lt!1520423) p!6034))))

(assert (=> b!4298715 (forall!8614 (toList!2176 lt!1520429) p!6034)))

(declare-fun b!4298716 () Bool)

(declare-fun e!2671820 () Bool)

(declare-fun tp!1320654 () Bool)

(declare-fun mapRes!20247 () Bool)

(assert (=> b!4298716 (= e!2671820 (and tp!1320654 mapRes!20247))))

(declare-fun condMapEmpty!20247 () Bool)

(declare-fun hm!64 () MutableMap!4413)

(declare-fun mapDefault!20247 () List!48039)

(assert (=> b!4298716 (= condMapEmpty!20247 (= (arr!7200 (_values!4788 (v!41865 (underlying!9243 (v!41866 (underlying!9244 hm!64)))))) ((as const (Array (_ BitVec 32) List!48039)) mapDefault!20247)))))

(declare-fun b!4298717 () Bool)

(declare-fun e!2671821 () Bool)

(assert (=> b!4298717 (= e!2671821 e!2671828)))

(declare-fun b!4298718 () Bool)

(declare-fun res!1761864 () Bool)

(declare-fun e!2671830 () Bool)

(assert (=> b!4298718 (=> (not res!1761864) (not e!2671830))))

(declare-fun valid!3485 (MutableMap!4413) Bool)

(assert (=> b!4298718 (= res!1761864 (valid!3485 hm!64))))

(declare-fun b!4298719 () Bool)

(declare-fun e!2671826 () Bool)

(declare-fun lt!1520427 () MutLongMap!4507)

(get-info :version)

(assert (=> b!4298719 (= e!2671826 (and e!2671821 ((_ is LongMap!4507) lt!1520427)))))

(assert (=> b!4298719 (= lt!1520427 (v!41866 (underlying!9244 hm!64)))))

(declare-fun mapNonEmpty!20247 () Bool)

(declare-fun tp!1320652 () Bool)

(declare-fun tp!1320648 () Bool)

(assert (=> mapNonEmpty!20247 (= mapRes!20247 (and tp!1320652 tp!1320648))))

(declare-fun mapValue!20247 () List!48039)

(declare-fun mapKey!20247 () (_ BitVec 32))

(declare-fun mapRest!20247 () (Array (_ BitVec 32) List!48039))

(assert (=> mapNonEmpty!20247 (= (arr!7200 (_values!4788 (v!41865 (underlying!9243 (v!41866 (underlying!9244 hm!64)))))) (store mapRest!20247 mapKey!20247 mapValue!20247))))

(declare-fun b!4298721 () Bool)

(declare-fun e!2671822 () Bool)

(declare-fun e!2671824 () Bool)

(assert (=> b!4298721 (= e!2671822 e!2671824)))

(declare-fun res!1761865 () Bool)

(assert (=> b!4298721 (=> (not res!1761865) (not e!2671824))))

(declare-fun lt!1520426 () tuple2!45804)

(declare-fun dynLambda!20349 (Int tuple2!45804) Bool)

(assert (=> b!4298721 (= res!1761865 (dynLambda!20349 p!6034 lt!1520426))))

(assert (=> b!4298721 (= lt!1520426 (tuple2!45805 k0!1716 v!9471))))

(declare-fun b!4298722 () Bool)

(declare-fun Unit!66669 () Unit!66667)

(assert (=> b!4298722 (= e!2671829 Unit!66669)))

(declare-fun b!4298723 () Bool)

(assert (=> b!4298723 (= e!2671830 e!2671822)))

(declare-fun res!1761866 () Bool)

(assert (=> b!4298723 (=> (not res!1761866) (not e!2671822))))

(assert (=> b!4298723 (= res!1761866 (forall!8614 (toList!2176 lt!1520428) p!6034))))

(assert (=> b!4298723 (= lt!1520428 (map!9874 hm!64))))

(declare-fun e!2671827 () Bool)

(assert (=> b!4298724 (= e!2671827 (and e!2671826 tp!1320650))))

(declare-fun tp!1320655 () Bool)

(declare-fun tp!1320651 () Bool)

(declare-fun array_inv!5157 (array!16120) Bool)

(declare-fun array_inv!5158 (array!16122) Bool)

(assert (=> b!4298725 (= e!2671825 (and tp!1320653 tp!1320651 tp!1320655 (array_inv!5157 (_keys!4807 (v!41865 (underlying!9243 (v!41866 (underlying!9244 hm!64)))))) (array_inv!5158 (_values!4788 (v!41865 (underlying!9243 (v!41866 (underlying!9244 hm!64)))))) e!2671820))))

(declare-fun mapIsEmpty!20247 () Bool)

(assert (=> mapIsEmpty!20247 mapRes!20247))

(declare-fun res!1761863 () Bool)

(assert (=> start!412724 (=> (not res!1761863) (not e!2671830))))

(assert (=> start!412724 (= res!1761863 ((_ is HashMap!4413) hm!64))))

(assert (=> start!412724 e!2671830))

(assert (=> start!412724 e!2671827))

(declare-fun tp_is_empty!23201 () Bool)

(assert (=> start!412724 tp_is_empty!23201))

(declare-fun tp_is_empty!23203 () Bool)

(assert (=> start!412724 tp_is_empty!23203))

(assert (=> start!412724 tp!1320649))

(declare-fun b!4298720 () Bool)

(assert (=> b!4298720 (= e!2671824 false)))

(declare-fun lt!1520421 () Unit!66667)

(assert (=> b!4298720 (= lt!1520421 e!2671829)))

(declare-fun c!731227 () Bool)

(assert (=> b!4298720 (= c!731227 (_1!26182 lt!1520422))))

(declare-fun update!314 (MutableMap!4413 K!9014 V!9216) tuple2!45806)

(assert (=> b!4298720 (= lt!1520422 (update!314 hm!64 k0!1716 v!9471))))

(declare-fun +!156 (ListMap!1453 tuple2!45804) ListMap!1453)

(assert (=> b!4298720 (= lt!1520423 (+!156 lt!1520428 lt!1520426))))

(assert (= (and start!412724 res!1761863) b!4298718))

(assert (= (and b!4298718 res!1761864) b!4298723))

(assert (= (and b!4298723 res!1761866) b!4298721))

(assert (= (and b!4298721 res!1761865) b!4298720))

(assert (= (and b!4298720 c!731227) b!4298715))

(assert (= (and b!4298720 (not c!731227)) b!4298722))

(assert (= (and b!4298716 condMapEmpty!20247) mapIsEmpty!20247))

(assert (= (and b!4298716 (not condMapEmpty!20247)) mapNonEmpty!20247))

(assert (= b!4298725 b!4298716))

(assert (= b!4298714 b!4298725))

(assert (= b!4298717 b!4298714))

(assert (= (and b!4298719 ((_ is LongMap!4507) (v!41866 (underlying!9244 hm!64)))) b!4298717))

(assert (= b!4298724 b!4298719))

(assert (= (and start!412724 ((_ is HashMap!4413) hm!64)) b!4298724))

(declare-fun b_lambda!126235 () Bool)

(assert (=> (not b_lambda!126235) (not b!4298721)))

(declare-fun t!354705 () Bool)

(declare-fun tb!257151 () Bool)

(assert (=> (and start!412724 (= p!6034 p!6034) t!354705) tb!257151))

(declare-fun result!314408 () Bool)

(assert (=> tb!257151 (= result!314408 true)))

(assert (=> b!4298721 t!354705))

(declare-fun b_and!339221 () Bool)

(assert (= b_and!339215 (and (=> t!354705 result!314408) b_and!339221)))

(declare-fun m!4890815 () Bool)

(assert (=> b!4298715 m!4890815))

(declare-fun m!4890817 () Bool)

(assert (=> b!4298715 m!4890817))

(declare-fun m!4890819 () Bool)

(assert (=> b!4298715 m!4890819))

(declare-fun m!4890821 () Bool)

(assert (=> b!4298715 m!4890821))

(declare-fun m!4890823 () Bool)

(assert (=> b!4298715 m!4890823))

(assert (=> b!4298715 m!4890819))

(declare-fun m!4890825 () Bool)

(assert (=> b!4298715 m!4890825))

(declare-fun m!4890827 () Bool)

(assert (=> b!4298721 m!4890827))

(declare-fun m!4890829 () Bool)

(assert (=> mapNonEmpty!20247 m!4890829))

(declare-fun m!4890831 () Bool)

(assert (=> b!4298725 m!4890831))

(declare-fun m!4890833 () Bool)

(assert (=> b!4298725 m!4890833))

(declare-fun m!4890835 () Bool)

(assert (=> b!4298723 m!4890835))

(declare-fun m!4890837 () Bool)

(assert (=> b!4298723 m!4890837))

(declare-fun m!4890839 () Bool)

(assert (=> b!4298720 m!4890839))

(declare-fun m!4890841 () Bool)

(assert (=> b!4298720 m!4890841))

(declare-fun m!4890843 () Bool)

(assert (=> b!4298718 m!4890843))

(check-sat (not b!4298720) (not b_next!128645) (not b!4298725) b_and!339219 (not b!4298716) (not b_next!128647) (not mapNonEmpty!20247) (not b!4298715) (not b!4298723) (not b_lambda!126235) tp_is_empty!23203 tp_is_empty!23201 b_and!339221 (not b_next!128649) (not b!4298718) b_and!339217)
(check-sat (not b_next!128645) b_and!339219 (not b_next!128647) b_and!339217 b_and!339221 (not b_next!128649))
