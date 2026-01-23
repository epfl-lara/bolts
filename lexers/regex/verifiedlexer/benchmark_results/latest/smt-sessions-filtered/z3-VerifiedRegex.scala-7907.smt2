; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412632 () Bool)

(assert start!412632)

(declare-fun b!4297807 () Bool)

(declare-fun b_free!127869 () Bool)

(declare-fun b_next!128573 () Bool)

(assert (=> b!4297807 (= b_free!127869 (not b_next!128573))))

(declare-fun tp!1320306 () Bool)

(declare-fun b_and!339103 () Bool)

(assert (=> b!4297807 (= tp!1320306 b_and!339103)))

(declare-fun b_free!127871 () Bool)

(declare-fun b_next!128575 () Bool)

(assert (=> start!412632 (= b_free!127871 (not b_next!128575))))

(declare-fun tp!1320307 () Bool)

(declare-fun b_and!339105 () Bool)

(assert (=> start!412632 (= tp!1320307 b_and!339105)))

(declare-fun b!4297814 () Bool)

(declare-fun b_free!127873 () Bool)

(declare-fun b_next!128577 () Bool)

(assert (=> b!4297814 (= b_free!127873 (not b_next!128577))))

(declare-fun tp!1320302 () Bool)

(declare-fun b_and!339107 () Bool)

(assert (=> b!4297814 (= tp!1320302 b_and!339107)))

(declare-fun b!4297804 () Bool)

(declare-fun e!2671136 () Bool)

(declare-fun e!2671126 () Bool)

(declare-datatypes ((K!8984 0))(
  ( (K!8985 (val!15445 Int)) )
))
(declare-datatypes ((V!9186 0))(
  ( (V!9187 (val!15446 Int)) )
))
(declare-datatypes ((tuple2!45736 0))(
  ( (tuple2!45737 (_1!26147 K!8984) (_2!26147 V!9186)) )
))
(declare-datatypes ((List!48021 0))(
  ( (Nil!47897) (Cons!47897 (h!53317 tuple2!45736) (t!354648 List!48021)) )
))
(declare-datatypes ((array!16064 0))(
  ( (array!16065 (arr!7175 (Array (_ BitVec 32) (_ BitVec 64))) (size!35214 (_ BitVec 32))) )
))
(declare-datatypes ((array!16066 0))(
  ( (array!16067 (arr!7176 (Array (_ BitVec 32) List!48021)) (size!35215 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8990 0))(
  ( (LongMapFixedSize!8991 (defaultEntry!4880 Int) (mask!12971 (_ BitVec 32)) (extraKeys!4744 (_ BitVec 32)) (zeroValue!4754 List!48021) (minValue!4754 List!48021) (_size!9033 (_ BitVec 32)) (_keys!4795 array!16064) (_values!4776 array!16066) (_vacant!4556 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17789 0))(
  ( (Cell!17790 (v!41833 LongMapFixedSize!8990)) )
))
(declare-datatypes ((MutLongMap!4495 0))(
  ( (LongMap!4495 (underlying!9219 Cell!17789)) (MutLongMapExt!4494 (__x!29510 Int)) )
))
(declare-fun lt!1519405 () MutLongMap!4495)

(get-info :version)

(assert (=> b!4297804 (= e!2671136 (and e!2671126 ((_ is LongMap!4495) lt!1519405)))))

(declare-datatypes ((Hashable!4411 0))(
  ( (HashableExt!4410 (__x!29511 Int)) )
))
(declare-datatypes ((Cell!17791 0))(
  ( (Cell!17792 (v!41834 MutLongMap!4495)) )
))
(declare-datatypes ((MutableMap!4401 0))(
  ( (MutableMapExt!4400 (__x!29512 Int)) (HashMap!4401 (underlying!9220 Cell!17791) (hashF!6443 Hashable!4411) (_size!9034 (_ BitVec 32)) (defaultValue!4572 Int)) )
))
(declare-fun hm!64 () MutableMap!4401)

(assert (=> b!4297804 (= lt!1519405 (v!41834 (underlying!9220 hm!64)))))

(declare-fun b!4297805 () Bool)

(declare-fun res!1761473 () Bool)

(declare-fun e!2671132 () Bool)

(assert (=> b!4297805 (=> (not res!1761473) (not e!2671132))))

(declare-fun valid!3473 (MutableMap!4401) Bool)

(assert (=> b!4297805 (= res!1761473 (valid!3473 hm!64))))

(declare-fun b!4297806 () Bool)

(declare-fun res!1761475 () Bool)

(declare-fun e!2671129 () Bool)

(assert (=> b!4297806 (=> (not res!1761475) (not e!2671129))))

(declare-datatypes ((tuple2!45738 0))(
  ( (tuple2!45739 (_1!26148 Bool) (_2!26148 MutableMap!4401)) )
))
(declare-fun lt!1519407 () tuple2!45738)

(declare-datatypes ((ListMap!1431 0))(
  ( (ListMap!1432 (toList!2161 List!48021)) )
))
(declare-fun lt!1519402 () ListMap!1431)

(declare-fun eq!86 (ListMap!1431 ListMap!1431) Bool)

(declare-fun map!9854 (MutableMap!4401) ListMap!1431)

(assert (=> b!4297806 (= res!1761475 (eq!86 (map!9854 (_2!26148 lt!1519407)) lt!1519402))))

(declare-fun tp!1320300 () Bool)

(declare-fun e!2671131 () Bool)

(declare-fun tp!1320303 () Bool)

(declare-fun e!2671134 () Bool)

(declare-fun array_inv!5143 (array!16064) Bool)

(declare-fun array_inv!5144 (array!16066) Bool)

(assert (=> b!4297807 (= e!2671131 (and tp!1320306 tp!1320303 tp!1320300 (array_inv!5143 (_keys!4795 (v!41833 (underlying!9219 (v!41834 (underlying!9220 hm!64)))))) (array_inv!5144 (_values!4776 (v!41833 (underlying!9219 (v!41834 (underlying!9220 hm!64)))))) e!2671134))))

(declare-fun b!4297808 () Bool)

(declare-fun e!2671133 () Bool)

(assert (=> b!4297808 (= e!2671126 e!2671133)))

(declare-fun b!4297809 () Bool)

(declare-fun tp!1320305 () Bool)

(declare-fun mapRes!20199 () Bool)

(assert (=> b!4297809 (= e!2671134 (and tp!1320305 mapRes!20199))))

(declare-fun condMapEmpty!20199 () Bool)

(declare-fun mapDefault!20199 () List!48021)

(assert (=> b!4297809 (= condMapEmpty!20199 (= (arr!7176 (_values!4776 (v!41833 (underlying!9219 (v!41834 (underlying!9220 hm!64)))))) ((as const (Array (_ BitVec 32) List!48021)) mapDefault!20199)))))

(declare-fun b!4297810 () Bool)

(declare-fun e!2671128 () Bool)

(assert (=> b!4297810 (= e!2671128 e!2671129)))

(declare-fun res!1761471 () Bool)

(assert (=> b!4297810 (=> (not res!1761471) (not e!2671129))))

(assert (=> b!4297810 (= res!1761471 (_1!26148 lt!1519407))))

(declare-fun k0!1716 () K!8984)

(declare-fun v!9471 () V!9186)

(declare-fun update!302 (MutableMap!4401 K!8984 V!9186) tuple2!45738)

(assert (=> b!4297810 (= lt!1519407 (update!302 hm!64 k0!1716 v!9471))))

(declare-fun lt!1519404 () ListMap!1431)

(declare-fun lt!1519403 () tuple2!45736)

(declare-fun +!144 (ListMap!1431 tuple2!45736) ListMap!1431)

(assert (=> b!4297810 (= lt!1519402 (+!144 lt!1519404 lt!1519403))))

(declare-fun b!4297811 () Bool)

(assert (=> b!4297811 (= e!2671129 false)))

(declare-fun lt!1519406 () Bool)

(declare-fun invariantList!527 (List!48021) Bool)

(assert (=> b!4297811 (= lt!1519406 (invariantList!527 (toList!2161 lt!1519404)))))

(declare-fun res!1761472 () Bool)

(assert (=> start!412632 (=> (not res!1761472) (not e!2671132))))

(assert (=> start!412632 (= res!1761472 ((_ is HashMap!4401) hm!64))))

(assert (=> start!412632 e!2671132))

(declare-fun e!2671127 () Bool)

(assert (=> start!412632 e!2671127))

(declare-fun tp_is_empty!23153 () Bool)

(assert (=> start!412632 tp_is_empty!23153))

(declare-fun tp_is_empty!23155 () Bool)

(assert (=> start!412632 tp_is_empty!23155))

(assert (=> start!412632 tp!1320307))

(declare-fun mapIsEmpty!20199 () Bool)

(assert (=> mapIsEmpty!20199 mapRes!20199))

(declare-fun b!4297812 () Bool)

(declare-fun e!2671130 () Bool)

(assert (=> b!4297812 (= e!2671132 e!2671130)))

(declare-fun res!1761474 () Bool)

(assert (=> b!4297812 (=> (not res!1761474) (not e!2671130))))

(declare-fun p!6034 () Int)

(declare-fun forall!8600 (List!48021 Int) Bool)

(assert (=> b!4297812 (= res!1761474 (forall!8600 (toList!2161 lt!1519404) p!6034))))

(assert (=> b!4297812 (= lt!1519404 (map!9854 hm!64))))

(declare-fun mapNonEmpty!20199 () Bool)

(declare-fun tp!1320301 () Bool)

(declare-fun tp!1320304 () Bool)

(assert (=> mapNonEmpty!20199 (= mapRes!20199 (and tp!1320301 tp!1320304))))

(declare-fun mapValue!20199 () List!48021)

(declare-fun mapRest!20199 () (Array (_ BitVec 32) List!48021))

(declare-fun mapKey!20199 () (_ BitVec 32))

(assert (=> mapNonEmpty!20199 (= (arr!7176 (_values!4776 (v!41833 (underlying!9219 (v!41834 (underlying!9220 hm!64)))))) (store mapRest!20199 mapKey!20199 mapValue!20199))))

(declare-fun b!4297813 () Bool)

(assert (=> b!4297813 (= e!2671130 e!2671128)))

(declare-fun res!1761476 () Bool)

(assert (=> b!4297813 (=> (not res!1761476) (not e!2671128))))

(declare-fun dynLambda!20340 (Int tuple2!45736) Bool)

(assert (=> b!4297813 (= res!1761476 (dynLambda!20340 p!6034 lt!1519403))))

(assert (=> b!4297813 (= lt!1519403 (tuple2!45737 k0!1716 v!9471))))

(assert (=> b!4297814 (= e!2671127 (and e!2671136 tp!1320302))))

(declare-fun b!4297815 () Bool)

(assert (=> b!4297815 (= e!2671133 e!2671131)))

(assert (= (and start!412632 res!1761472) b!4297805))

(assert (= (and b!4297805 res!1761473) b!4297812))

(assert (= (and b!4297812 res!1761474) b!4297813))

(assert (= (and b!4297813 res!1761476) b!4297810))

(assert (= (and b!4297810 res!1761471) b!4297806))

(assert (= (and b!4297806 res!1761475) b!4297811))

(assert (= (and b!4297809 condMapEmpty!20199) mapIsEmpty!20199))

(assert (= (and b!4297809 (not condMapEmpty!20199)) mapNonEmpty!20199))

(assert (= b!4297807 b!4297809))

(assert (= b!4297815 b!4297807))

(assert (= b!4297808 b!4297815))

(assert (= (and b!4297804 ((_ is LongMap!4495) (v!41834 (underlying!9220 hm!64)))) b!4297808))

(assert (= b!4297814 b!4297804))

(assert (= (and start!412632 ((_ is HashMap!4401) hm!64)) b!4297814))

(declare-fun b_lambda!126171 () Bool)

(assert (=> (not b_lambda!126171) (not b!4297813)))

(declare-fun t!354647 () Bool)

(declare-fun tb!257111 () Bool)

(assert (=> (and start!412632 (= p!6034 p!6034) t!354647) tb!257111))

(declare-fun result!314352 () Bool)

(assert (=> tb!257111 (= result!314352 true)))

(assert (=> b!4297813 t!354647))

(declare-fun b_and!339109 () Bool)

(assert (= b_and!339105 (and (=> t!354647 result!314352) b_and!339109)))

(declare-fun m!4889901 () Bool)

(assert (=> b!4297805 m!4889901))

(declare-fun m!4889903 () Bool)

(assert (=> b!4297810 m!4889903))

(declare-fun m!4889905 () Bool)

(assert (=> b!4297810 m!4889905))

(declare-fun m!4889907 () Bool)

(assert (=> b!4297811 m!4889907))

(declare-fun m!4889909 () Bool)

(assert (=> b!4297807 m!4889909))

(declare-fun m!4889911 () Bool)

(assert (=> b!4297807 m!4889911))

(declare-fun m!4889913 () Bool)

(assert (=> b!4297813 m!4889913))

(declare-fun m!4889915 () Bool)

(assert (=> b!4297806 m!4889915))

(assert (=> b!4297806 m!4889915))

(declare-fun m!4889917 () Bool)

(assert (=> b!4297806 m!4889917))

(declare-fun m!4889919 () Bool)

(assert (=> b!4297812 m!4889919))

(declare-fun m!4889921 () Bool)

(assert (=> b!4297812 m!4889921))

(declare-fun m!4889923 () Bool)

(assert (=> mapNonEmpty!20199 m!4889923))

(check-sat (not b_next!128573) (not b!4297810) (not mapNonEmpty!20199) tp_is_empty!23155 b_and!339109 (not b!4297807) (not b!4297806) b_and!339103 (not b!4297809) b_and!339107 (not b!4297805) (not b_next!128577) (not b!4297812) (not b_lambda!126171) (not b!4297811) tp_is_empty!23153 (not b_next!128575))
(check-sat (not b_next!128577) (not b_next!128573) b_and!339109 (not b_next!128575) b_and!339103 b_and!339107)
