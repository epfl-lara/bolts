; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412592 () Bool)

(assert start!412592)

(declare-fun b!4297431 () Bool)

(declare-fun b_free!127833 () Bool)

(declare-fun b_next!128537 () Bool)

(assert (=> b!4297431 (= b_free!127833 (not b_next!128537))))

(declare-fun tp!1320131 () Bool)

(declare-fun b_and!339051 () Bool)

(assert (=> b!4297431 (= tp!1320131 b_and!339051)))

(declare-fun b!4297425 () Bool)

(declare-fun b_free!127835 () Bool)

(declare-fun b_next!128539 () Bool)

(assert (=> b!4297425 (= b_free!127835 (not b_next!128539))))

(declare-fun tp!1320130 () Bool)

(declare-fun b_and!339053 () Bool)

(assert (=> b!4297425 (= tp!1320130 b_and!339053)))

(declare-fun b_free!127837 () Bool)

(declare-fun b_next!128541 () Bool)

(assert (=> start!412592 (= b_free!127837 (not b_next!128541))))

(declare-fun tp!1320127 () Bool)

(declare-fun b_and!339055 () Bool)

(assert (=> start!412592 (= tp!1320127 b_and!339055)))

(declare-fun b!4297424 () Bool)

(declare-fun e!2670821 () Bool)

(declare-fun e!2670824 () Bool)

(declare-datatypes ((K!8969 0))(
  ( (K!8970 (val!15433 Int)) )
))
(declare-datatypes ((V!9171 0))(
  ( (V!9172 (val!15434 Int)) )
))
(declare-datatypes ((tuple2!45704 0))(
  ( (tuple2!45705 (_1!26131 K!8969) (_2!26131 V!9171)) )
))
(declare-datatypes ((List!48013 0))(
  ( (Nil!47889) (Cons!47889 (h!53309 tuple2!45704) (t!354624 List!48013)) )
))
(declare-datatypes ((array!16036 0))(
  ( (array!16037 (arr!7163 (Array (_ BitVec 32) (_ BitVec 64))) (size!35202 (_ BitVec 32))) )
))
(declare-datatypes ((array!16038 0))(
  ( (array!16039 (arr!7164 (Array (_ BitVec 32) List!48013)) (size!35203 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8978 0))(
  ( (LongMapFixedSize!8979 (defaultEntry!4874 Int) (mask!12962 (_ BitVec 32)) (extraKeys!4738 (_ BitVec 32)) (zeroValue!4748 List!48013) (minValue!4748 List!48013) (_size!9021 (_ BitVec 32)) (_keys!4789 array!16036) (_values!4770 array!16038) (_vacant!4550 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17765 0))(
  ( (Cell!17766 (v!41817 LongMapFixedSize!8978)) )
))
(declare-datatypes ((MutLongMap!4489 0))(
  ( (LongMap!4489 (underlying!9207 Cell!17765)) (MutLongMapExt!4488 (__x!29492 Int)) )
))
(declare-fun lt!1518948 () MutLongMap!4489)

(get-info :version)

(assert (=> b!4297424 (= e!2670821 (and e!2670824 ((_ is LongMap!4489) lt!1518948)))))

(declare-datatypes ((Hashable!4405 0))(
  ( (HashableExt!4404 (__x!29493 Int)) )
))
(declare-datatypes ((Cell!17767 0))(
  ( (Cell!17768 (v!41818 MutLongMap!4489)) )
))
(declare-datatypes ((MutableMap!4395 0))(
  ( (MutableMapExt!4394 (__x!29494 Int)) (HashMap!4395 (underlying!9208 Cell!17767) (hashF!6437 Hashable!4405) (_size!9022 (_ BitVec 32)) (defaultValue!4566 Int)) )
))
(declare-fun hm!64 () MutableMap!4395)

(assert (=> b!4297424 (= lt!1518948 (v!41818 (underlying!9208 hm!64)))))

(declare-fun e!2670829 () Bool)

(assert (=> b!4297425 (= e!2670829 (and e!2670821 tp!1320130))))

(declare-fun b!4297426 () Bool)

(declare-fun e!2670822 () Bool)

(declare-fun e!2670827 () Bool)

(assert (=> b!4297426 (= e!2670822 e!2670827)))

(declare-fun res!1761315 () Bool)

(declare-fun e!2670823 () Bool)

(assert (=> start!412592 (=> (not res!1761315) (not e!2670823))))

(assert (=> start!412592 (= res!1761315 ((_ is HashMap!4395) hm!64))))

(assert (=> start!412592 e!2670823))

(assert (=> start!412592 e!2670829))

(declare-fun tp_is_empty!23129 () Bool)

(assert (=> start!412592 tp_is_empty!23129))

(declare-fun tp_is_empty!23131 () Bool)

(assert (=> start!412592 tp_is_empty!23131))

(assert (=> start!412592 tp!1320127))

(declare-fun b!4297427 () Bool)

(declare-fun e!2670828 () Bool)

(assert (=> b!4297427 (= e!2670828 false)))

(declare-datatypes ((ListMap!1421 0))(
  ( (ListMap!1422 (toList!2154 List!48013)) )
))
(declare-fun lt!1518951 () ListMap!1421)

(declare-fun lt!1518949 () ListMap!1421)

(declare-fun lt!1518950 () tuple2!45704)

(declare-fun +!137 (ListMap!1421 tuple2!45704) ListMap!1421)

(assert (=> b!4297427 (= lt!1518951 (+!137 lt!1518949 lt!1518950))))

(declare-fun mapNonEmpty!20175 () Bool)

(declare-fun mapRes!20175 () Bool)

(declare-fun tp!1320128 () Bool)

(declare-fun tp!1320129 () Bool)

(assert (=> mapNonEmpty!20175 (= mapRes!20175 (and tp!1320128 tp!1320129))))

(declare-fun mapKey!20175 () (_ BitVec 32))

(declare-fun mapRest!20175 () (Array (_ BitVec 32) List!48013))

(declare-fun mapValue!20175 () List!48013)

(assert (=> mapNonEmpty!20175 (= (arr!7164 (_values!4770 (v!41817 (underlying!9207 (v!41818 (underlying!9208 hm!64)))))) (store mapRest!20175 mapKey!20175 mapValue!20175))))

(declare-fun b!4297428 () Bool)

(declare-fun e!2670820 () Bool)

(assert (=> b!4297428 (= e!2670820 e!2670828)))

(declare-fun res!1761318 () Bool)

(assert (=> b!4297428 (=> (not res!1761318) (not e!2670828))))

(declare-fun p!6034 () Int)

(declare-fun dynLambda!20335 (Int tuple2!45704) Bool)

(assert (=> b!4297428 (= res!1761318 (dynLambda!20335 p!6034 lt!1518950))))

(declare-fun k0!1716 () K!8969)

(declare-fun v!9471 () V!9171)

(assert (=> b!4297428 (= lt!1518950 (tuple2!45705 k0!1716 v!9471))))

(declare-fun b!4297429 () Bool)

(declare-fun res!1761316 () Bool)

(assert (=> b!4297429 (=> (not res!1761316) (not e!2670823))))

(declare-fun valid!3466 (MutableMap!4395) Bool)

(assert (=> b!4297429 (= res!1761316 (valid!3466 hm!64))))

(declare-fun mapIsEmpty!20175 () Bool)

(assert (=> mapIsEmpty!20175 mapRes!20175))

(declare-fun b!4297430 () Bool)

(assert (=> b!4297430 (= e!2670823 e!2670820)))

(declare-fun res!1761317 () Bool)

(assert (=> b!4297430 (=> (not res!1761317) (not e!2670820))))

(declare-fun forall!8593 (List!48013 Int) Bool)

(assert (=> b!4297430 (= res!1761317 (forall!8593 (toList!2154 lt!1518949) p!6034))))

(declare-fun map!9844 (MutableMap!4395) ListMap!1421)

(assert (=> b!4297430 (= lt!1518949 (map!9844 hm!64))))

(declare-fun tp!1320132 () Bool)

(declare-fun e!2670826 () Bool)

(declare-fun tp!1320133 () Bool)

(declare-fun array_inv!5133 (array!16036) Bool)

(declare-fun array_inv!5134 (array!16038) Bool)

(assert (=> b!4297431 (= e!2670827 (and tp!1320131 tp!1320132 tp!1320133 (array_inv!5133 (_keys!4789 (v!41817 (underlying!9207 (v!41818 (underlying!9208 hm!64)))))) (array_inv!5134 (_values!4770 (v!41817 (underlying!9207 (v!41818 (underlying!9208 hm!64)))))) e!2670826))))

(declare-fun b!4297432 () Bool)

(declare-fun tp!1320126 () Bool)

(assert (=> b!4297432 (= e!2670826 (and tp!1320126 mapRes!20175))))

(declare-fun condMapEmpty!20175 () Bool)

(declare-fun mapDefault!20175 () List!48013)

(assert (=> b!4297432 (= condMapEmpty!20175 (= (arr!7164 (_values!4770 (v!41817 (underlying!9207 (v!41818 (underlying!9208 hm!64)))))) ((as const (Array (_ BitVec 32) List!48013)) mapDefault!20175)))))

(declare-fun b!4297433 () Bool)

(assert (=> b!4297433 (= e!2670824 e!2670822)))

(assert (= (and start!412592 res!1761315) b!4297429))

(assert (= (and b!4297429 res!1761316) b!4297430))

(assert (= (and b!4297430 res!1761317) b!4297428))

(assert (= (and b!4297428 res!1761318) b!4297427))

(assert (= (and b!4297432 condMapEmpty!20175) mapIsEmpty!20175))

(assert (= (and b!4297432 (not condMapEmpty!20175)) mapNonEmpty!20175))

(assert (= b!4297431 b!4297432))

(assert (= b!4297426 b!4297431))

(assert (= b!4297433 b!4297426))

(assert (= (and b!4297424 ((_ is LongMap!4489) (v!41818 (underlying!9208 hm!64)))) b!4297433))

(assert (= b!4297425 b!4297424))

(assert (= (and start!412592 ((_ is HashMap!4395) hm!64)) b!4297425))

(declare-fun b_lambda!126147 () Bool)

(assert (=> (not b_lambda!126147) (not b!4297428)))

(declare-fun t!354623 () Bool)

(declare-fun tb!257095 () Bool)

(assert (=> (and start!412592 (= p!6034 p!6034) t!354623) tb!257095))

(declare-fun result!314328 () Bool)

(assert (=> tb!257095 (= result!314328 true)))

(assert (=> b!4297428 t!354623))

(declare-fun b_and!339057 () Bool)

(assert (= b_and!339055 (and (=> t!354623 result!314328) b_and!339057)))

(declare-fun m!4889549 () Bool)

(assert (=> b!4297428 m!4889549))

(declare-fun m!4889551 () Bool)

(assert (=> mapNonEmpty!20175 m!4889551))

(declare-fun m!4889553 () Bool)

(assert (=> b!4297427 m!4889553))

(declare-fun m!4889555 () Bool)

(assert (=> b!4297430 m!4889555))

(declare-fun m!4889557 () Bool)

(assert (=> b!4297430 m!4889557))

(declare-fun m!4889559 () Bool)

(assert (=> b!4297429 m!4889559))

(declare-fun m!4889561 () Bool)

(assert (=> b!4297431 m!4889561))

(declare-fun m!4889563 () Bool)

(assert (=> b!4297431 m!4889563))

(check-sat (not b!4297429) b_and!339051 tp_is_empty!23131 (not b!4297431) (not b_next!128539) (not b!4297427) tp_is_empty!23129 (not b!4297430) (not b_next!128537) (not b!4297432) b_and!339057 b_and!339053 (not b_lambda!126147) (not b_next!128541) (not mapNonEmpty!20175))
(check-sat b_and!339051 (not b_next!128537) (not b_next!128539) (not b_next!128541) b_and!339057 b_and!339053)
