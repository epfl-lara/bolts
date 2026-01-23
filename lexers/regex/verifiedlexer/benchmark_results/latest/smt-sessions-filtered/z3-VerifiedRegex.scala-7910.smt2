; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412684 () Bool)

(assert start!412684)

(declare-fun b!4298341 () Bool)

(declare-fun b_free!127905 () Bool)

(declare-fun b_next!128609 () Bool)

(assert (=> b!4298341 (= b_free!127905 (not b_next!128609))))

(declare-fun tp!1320481 () Bool)

(declare-fun b_and!339163 () Bool)

(assert (=> b!4298341 (= tp!1320481 b_and!339163)))

(declare-fun b!4298336 () Bool)

(declare-fun b_free!127907 () Bool)

(declare-fun b_next!128611 () Bool)

(assert (=> b!4298336 (= b_free!127907 (not b_next!128611))))

(declare-fun tp!1320478 () Bool)

(declare-fun b_and!339165 () Bool)

(assert (=> b!4298336 (= tp!1320478 b_and!339165)))

(declare-fun b_free!127909 () Bool)

(declare-fun b_next!128613 () Bool)

(assert (=> start!412684 (= b_free!127909 (not b_next!128613))))

(declare-fun tp!1320477 () Bool)

(declare-fun b_and!339167 () Bool)

(assert (=> start!412684 (= tp!1320477 b_and!339167)))

(declare-fun b!4298329 () Bool)

(declare-fun e!2671515 () Bool)

(declare-fun e!2671521 () Bool)

(assert (=> b!4298329 (= e!2671515 e!2671521)))

(declare-fun res!1761712 () Bool)

(assert (=> b!4298329 (=> (not res!1761712) (not e!2671521))))

(declare-fun p!6034 () Int)

(declare-datatypes ((K!8999 0))(
  ( (K!9000 (val!15457 Int)) )
))
(declare-datatypes ((V!9201 0))(
  ( (V!9202 (val!15458 Int)) )
))
(declare-datatypes ((tuple2!45772 0))(
  ( (tuple2!45773 (_1!26165 K!8999) (_2!26165 V!9201)) )
))
(declare-fun lt!1519950 () tuple2!45772)

(declare-fun dynLambda!20345 (Int tuple2!45772) Bool)

(assert (=> b!4298329 (= res!1761712 (dynLambda!20345 p!6034 lt!1519950))))

(declare-fun k0!1716 () K!8999)

(declare-fun v!9471 () V!9201)

(assert (=> b!4298329 (= lt!1519950 (tuple2!45773 k0!1716 v!9471))))

(declare-fun b!4298330 () Bool)

(declare-fun e!2671523 () Bool)

(declare-fun e!2671519 () Bool)

(assert (=> b!4298330 (= e!2671523 e!2671519)))

(declare-fun b!4298331 () Bool)

(declare-fun res!1761715 () Bool)

(declare-fun e!2671520 () Bool)

(assert (=> b!4298331 (=> (not res!1761715) (not e!2671520))))

(declare-datatypes ((List!48031 0))(
  ( (Nil!47907) (Cons!47907 (h!53327 tuple2!45772) (t!354682 List!48031)) )
))
(declare-datatypes ((array!16092 0))(
  ( (array!16093 (arr!7187 (Array (_ BitVec 32) (_ BitVec 64))) (size!35226 (_ BitVec 32))) )
))
(declare-datatypes ((array!16094 0))(
  ( (array!16095 (arr!7188 (Array (_ BitVec 32) List!48031)) (size!35227 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9002 0))(
  ( (LongMapFixedSize!9003 (defaultEntry!4886 Int) (mask!12980 (_ BitVec 32)) (extraKeys!4750 (_ BitVec 32)) (zeroValue!4760 List!48031) (minValue!4760 List!48031) (_size!9045 (_ BitVec 32)) (_keys!4801 array!16092) (_values!4782 array!16094) (_vacant!4562 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17813 0))(
  ( (Cell!17814 (v!41849 LongMapFixedSize!9002)) )
))
(declare-datatypes ((MutLongMap!4501 0))(
  ( (LongMap!4501 (underlying!9231 Cell!17813)) (MutLongMapExt!4500 (__x!29528 Int)) )
))
(declare-datatypes ((Hashable!4417 0))(
  ( (HashableExt!4416 (__x!29529 Int)) )
))
(declare-datatypes ((Cell!17815 0))(
  ( (Cell!17816 (v!41850 MutLongMap!4501)) )
))
(declare-datatypes ((MutableMap!4407 0))(
  ( (MutableMapExt!4406 (__x!29530 Int)) (HashMap!4407 (underlying!9232 Cell!17815) (hashF!6449 Hashable!4417) (_size!9046 (_ BitVec 32)) (defaultValue!4578 Int)) )
))
(declare-fun hm!64 () MutableMap!4407)

(declare-fun valid!3480 (MutableMap!4407) Bool)

(assert (=> b!4298331 (= res!1761715 (valid!3480 hm!64))))

(declare-fun mapIsEmpty!20223 () Bool)

(declare-fun mapRes!20223 () Bool)

(assert (=> mapIsEmpty!20223 mapRes!20223))

(declare-fun b!4298332 () Bool)

(assert (=> b!4298332 (= e!2671520 e!2671515)))

(declare-fun res!1761718 () Bool)

(assert (=> b!4298332 (=> (not res!1761718) (not e!2671515))))

(declare-datatypes ((ListMap!1443 0))(
  ( (ListMap!1444 (toList!2169 List!48031)) )
))
(declare-fun lt!1519955 () ListMap!1443)

(declare-fun forall!8607 (List!48031 Int) Bool)

(assert (=> b!4298332 (= res!1761718 (forall!8607 (toList!2169 lt!1519955) p!6034))))

(declare-fun map!9864 (MutableMap!4407) ListMap!1443)

(assert (=> b!4298332 (= lt!1519955 (map!9864 hm!64))))

(declare-fun b!4298333 () Bool)

(declare-fun e!2671518 () Bool)

(assert (=> b!4298333 (= e!2671518 true)))

(declare-fun b!4298334 () Bool)

(declare-fun res!1761719 () Bool)

(assert (=> b!4298334 (=> res!1761719 e!2671518)))

(declare-fun lt!1519949 () ListMap!1443)

(declare-fun invariantList!531 (List!48031) Bool)

(assert (=> b!4298334 (= res!1761719 (not (invariantList!531 (toList!2169 lt!1519949))))))

(declare-fun b!4298335 () Bool)

(declare-fun e!2671511 () Bool)

(declare-fun lt!1519953 () MutLongMap!4501)

(get-info :version)

(assert (=> b!4298335 (= e!2671511 (and e!2671523 ((_ is LongMap!4501) lt!1519953)))))

(assert (=> b!4298335 (= lt!1519953 (v!41850 (underlying!9232 hm!64)))))

(declare-fun tp!1320474 () Bool)

(declare-fun e!2671512 () Bool)

(declare-fun e!2671516 () Bool)

(declare-fun tp!1320479 () Bool)

(declare-fun array_inv!5149 (array!16092) Bool)

(declare-fun array_inv!5150 (array!16094) Bool)

(assert (=> b!4298336 (= e!2671512 (and tp!1320478 tp!1320474 tp!1320479 (array_inv!5149 (_keys!4801 (v!41849 (underlying!9231 (v!41850 (underlying!9232 hm!64)))))) (array_inv!5150 (_values!4782 (v!41849 (underlying!9231 (v!41850 (underlying!9232 hm!64)))))) e!2671516))))

(declare-fun mapNonEmpty!20223 () Bool)

(declare-fun tp!1320475 () Bool)

(declare-fun tp!1320480 () Bool)

(assert (=> mapNonEmpty!20223 (= mapRes!20223 (and tp!1320475 tp!1320480))))

(declare-fun mapKey!20223 () (_ BitVec 32))

(declare-fun mapValue!20223 () List!48031)

(declare-fun mapRest!20223 () (Array (_ BitVec 32) List!48031))

(assert (=> mapNonEmpty!20223 (= (arr!7188 (_values!4782 (v!41849 (underlying!9231 (v!41850 (underlying!9232 hm!64)))))) (store mapRest!20223 mapKey!20223 mapValue!20223))))

(declare-fun res!1761720 () Bool)

(assert (=> start!412684 (=> (not res!1761720) (not e!2671520))))

(assert (=> start!412684 (= res!1761720 ((_ is HashMap!4407) hm!64))))

(assert (=> start!412684 e!2671520))

(declare-fun e!2671514 () Bool)

(assert (=> start!412684 e!2671514))

(declare-fun tp_is_empty!23177 () Bool)

(assert (=> start!412684 tp_is_empty!23177))

(declare-fun tp_is_empty!23179 () Bool)

(assert (=> start!412684 tp_is_empty!23179))

(assert (=> start!412684 tp!1320477))

(declare-fun b!4298337 () Bool)

(declare-fun res!1761717 () Bool)

(assert (=> b!4298337 (=> res!1761717 e!2671518)))

(declare-fun lt!1519954 () ListMap!1443)

(assert (=> b!4298337 (= res!1761717 (not (invariantList!531 (toList!2169 lt!1519954))))))

(declare-fun b!4298338 () Bool)

(declare-fun e!2671517 () Bool)

(assert (=> b!4298338 (= e!2671521 e!2671517)))

(declare-fun res!1761716 () Bool)

(assert (=> b!4298338 (=> (not res!1761716) (not e!2671517))))

(declare-datatypes ((tuple2!45774 0))(
  ( (tuple2!45775 (_1!26166 Bool) (_2!26166 MutableMap!4407)) )
))
(declare-fun lt!1519951 () tuple2!45774)

(assert (=> b!4298338 (= res!1761716 (_1!26166 lt!1519951))))

(declare-fun update!308 (MutableMap!4407 K!8999 V!9201) tuple2!45774)

(assert (=> b!4298338 (= lt!1519951 (update!308 hm!64 k0!1716 v!9471))))

(declare-fun +!150 (ListMap!1443 tuple2!45772) ListMap!1443)

(assert (=> b!4298338 (= lt!1519954 (+!150 lt!1519955 lt!1519950))))

(declare-fun b!4298339 () Bool)

(declare-fun e!2671522 () Bool)

(assert (=> b!4298339 (= e!2671522 (not e!2671518))))

(declare-fun res!1761714 () Bool)

(assert (=> b!4298339 (=> res!1761714 e!2671518)))

(assert (=> b!4298339 (= res!1761714 (not (forall!8607 (toList!2169 lt!1519954) p!6034)))))

(declare-fun insertNoDuplicatedKeys!12 (List!48031 K!8999 V!9201) List!48031)

(assert (=> b!4298339 (forall!8607 (insertNoDuplicatedKeys!12 (toList!2169 lt!1519955) k0!1716 v!9471) p!6034)))

(declare-datatypes ((Unit!66621 0))(
  ( (Unit!66622) )
))
(declare-fun lt!1519952 () Unit!66621)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!5 (List!48031 K!8999 V!9201 Int) Unit!66621)

(assert (=> b!4298339 (= lt!1519952 (lemmaInsertNoDuplicatedKeysPreservesForall!5 (toList!2169 lt!1519955) k0!1716 v!9471 p!6034))))

(declare-fun b!4298340 () Bool)

(assert (=> b!4298340 (= e!2671519 e!2671512)))

(assert (=> b!4298341 (= e!2671514 (and e!2671511 tp!1320481))))

(declare-fun b!4298342 () Bool)

(assert (=> b!4298342 (= e!2671517 e!2671522)))

(declare-fun res!1761713 () Bool)

(assert (=> b!4298342 (=> (not res!1761713) (not e!2671522))))

(declare-fun eq!91 (ListMap!1443 ListMap!1443) Bool)

(assert (=> b!4298342 (= res!1761713 (eq!91 lt!1519949 lt!1519954))))

(assert (=> b!4298342 (= lt!1519949 (map!9864 (_2!26166 lt!1519951)))))

(declare-fun b!4298343 () Bool)

(declare-fun tp!1320476 () Bool)

(assert (=> b!4298343 (= e!2671516 (and tp!1320476 mapRes!20223))))

(declare-fun condMapEmpty!20223 () Bool)

(declare-fun mapDefault!20223 () List!48031)

(assert (=> b!4298343 (= condMapEmpty!20223 (= (arr!7188 (_values!4782 (v!41849 (underlying!9231 (v!41850 (underlying!9232 hm!64)))))) ((as const (Array (_ BitVec 32) List!48031)) mapDefault!20223)))))

(assert (= (and start!412684 res!1761720) b!4298331))

(assert (= (and b!4298331 res!1761715) b!4298332))

(assert (= (and b!4298332 res!1761718) b!4298329))

(assert (= (and b!4298329 res!1761712) b!4298338))

(assert (= (and b!4298338 res!1761716) b!4298342))

(assert (= (and b!4298342 res!1761713) b!4298339))

(assert (= (and b!4298339 (not res!1761714)) b!4298334))

(assert (= (and b!4298334 (not res!1761719)) b!4298337))

(assert (= (and b!4298337 (not res!1761717)) b!4298333))

(assert (= (and b!4298343 condMapEmpty!20223) mapIsEmpty!20223))

(assert (= (and b!4298343 (not condMapEmpty!20223)) mapNonEmpty!20223))

(assert (= b!4298336 b!4298343))

(assert (= b!4298340 b!4298336))

(assert (= b!4298330 b!4298340))

(assert (= (and b!4298335 ((_ is LongMap!4501) (v!41850 (underlying!9232 hm!64)))) b!4298330))

(assert (= b!4298341 b!4298335))

(assert (= (and start!412684 ((_ is HashMap!4407) hm!64)) b!4298341))

(declare-fun b_lambda!126211 () Bool)

(assert (=> (not b_lambda!126211) (not b!4298329)))

(declare-fun t!354681 () Bool)

(declare-fun tb!257135 () Bool)

(assert (=> (and start!412684 (= p!6034 p!6034) t!354681) tb!257135))

(declare-fun result!314384 () Bool)

(assert (=> tb!257135 (= result!314384 true)))

(assert (=> b!4298329 t!354681))

(declare-fun b_and!339169 () Bool)

(assert (= b_and!339167 (and (=> t!354681 result!314384) b_and!339169)))

(declare-fun m!4890439 () Bool)

(assert (=> mapNonEmpty!20223 m!4890439))

(declare-fun m!4890441 () Bool)

(assert (=> b!4298331 m!4890441))

(declare-fun m!4890443 () Bool)

(assert (=> b!4298329 m!4890443))

(declare-fun m!4890445 () Bool)

(assert (=> b!4298337 m!4890445))

(declare-fun m!4890447 () Bool)

(assert (=> b!4298334 m!4890447))

(declare-fun m!4890449 () Bool)

(assert (=> b!4298336 m!4890449))

(declare-fun m!4890451 () Bool)

(assert (=> b!4298336 m!4890451))

(declare-fun m!4890453 () Bool)

(assert (=> b!4298332 m!4890453))

(declare-fun m!4890455 () Bool)

(assert (=> b!4298332 m!4890455))

(declare-fun m!4890457 () Bool)

(assert (=> b!4298339 m!4890457))

(declare-fun m!4890459 () Bool)

(assert (=> b!4298339 m!4890459))

(assert (=> b!4298339 m!4890459))

(declare-fun m!4890461 () Bool)

(assert (=> b!4298339 m!4890461))

(declare-fun m!4890463 () Bool)

(assert (=> b!4298339 m!4890463))

(declare-fun m!4890465 () Bool)

(assert (=> b!4298338 m!4890465))

(declare-fun m!4890467 () Bool)

(assert (=> b!4298338 m!4890467))

(declare-fun m!4890469 () Bool)

(assert (=> b!4298342 m!4890469))

(declare-fun m!4890471 () Bool)

(assert (=> b!4298342 m!4890471))

(check-sat (not b!4298336) (not b_next!128611) (not b_lambda!126211) (not b_next!128609) (not b!4298338) (not b!4298337) tp_is_empty!23177 (not b!4298339) b_and!339165 (not b!4298342) b_and!339163 b_and!339169 (not b!4298332) (not mapNonEmpty!20223) tp_is_empty!23179 (not b!4298331) (not b_next!128613) (not b!4298334) (not b!4298343))
(check-sat (not b_next!128613) (not b_next!128611) (not b_next!128609) b_and!339165 b_and!339163 b_and!339169)
