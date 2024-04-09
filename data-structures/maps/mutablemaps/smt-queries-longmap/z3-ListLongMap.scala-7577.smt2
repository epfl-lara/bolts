; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95820 () Bool)

(assert start!95820)

(declare-fun b_free!22437 () Bool)

(declare-fun b_next!22437 () Bool)

(assert (=> start!95820 (= b_free!22437 (not b_next!22437))))

(declare-fun tp!79160 () Bool)

(declare-fun b_and!35567 () Bool)

(assert (=> start!95820 (= tp!79160 b_and!35567)))

(declare-fun b!1083465 () Bool)

(declare-fun e!619126 () Bool)

(declare-fun tp_is_empty!26439 () Bool)

(assert (=> b!1083465 (= e!619126 tp_is_empty!26439)))

(declare-fun b!1083466 () Bool)

(declare-fun e!619129 () Bool)

(declare-fun e!619125 () Bool)

(declare-fun mapRes!41413 () Bool)

(assert (=> b!1083466 (= e!619129 (and e!619125 mapRes!41413))))

(declare-fun condMapEmpty!41413 () Bool)

(declare-datatypes ((V!40379 0))(
  ( (V!40380 (val!13276 Int)) )
))
(declare-datatypes ((ValueCell!12510 0))(
  ( (ValueCellFull!12510 (v!15898 V!40379)) (EmptyCell!12510) )
))
(declare-datatypes ((array!69780 0))(
  ( (array!69781 (arr!33560 (Array (_ BitVec 32) ValueCell!12510)) (size!34097 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69780)

(declare-fun mapDefault!41413 () ValueCell!12510)

(assert (=> b!1083466 (= condMapEmpty!41413 (= (arr!33560 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12510)) mapDefault!41413)))))

(declare-fun mapIsEmpty!41413 () Bool)

(assert (=> mapIsEmpty!41413 mapRes!41413))

(declare-fun b!1083467 () Bool)

(declare-fun res!722358 () Bool)

(declare-fun e!619128 () Bool)

(assert (=> b!1083467 (=> (not res!722358) (not e!619128))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69782 0))(
  ( (array!69783 (arr!33561 (Array (_ BitVec 32) (_ BitVec 64))) (size!34098 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69782)

(declare-fun mask!1414 () (_ BitVec 32))

(assert (=> b!1083467 (= res!722358 (and (= (size!34097 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34098 _keys!1070) (size!34097 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083468 () Bool)

(declare-fun res!722356 () Bool)

(assert (=> b!1083468 (=> (not res!722356) (not e!619128))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083468 (= res!722356 (= (select (arr!33561 _keys!1070) i!650) k0!904))))

(declare-fun b!1083469 () Bool)

(declare-fun e!619127 () Bool)

(assert (=> b!1083469 (= e!619128 e!619127)))

(declare-fun res!722361 () Bool)

(assert (=> b!1083469 (=> (not res!722361) (not e!619127))))

(declare-fun lt!480091 () array!69782)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69782 (_ BitVec 32)) Bool)

(assert (=> b!1083469 (= res!722361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480091 mask!1414))))

(assert (=> b!1083469 (= lt!480091 (array!69783 (store (arr!33561 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34098 _keys!1070)))))

(declare-fun b!1083470 () Bool)

(declare-fun res!722359 () Bool)

(assert (=> b!1083470 (=> (not res!722359) (not e!619128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083470 (= res!722359 (validKeyInArray!0 k0!904))))

(declare-fun b!1083471 () Bool)

(declare-fun res!722355 () Bool)

(assert (=> b!1083471 (=> (not res!722355) (not e!619127))))

(declare-datatypes ((List!23526 0))(
  ( (Nil!23523) (Cons!23522 (h!24731 (_ BitVec 64)) (t!33028 List!23526)) )
))
(declare-fun arrayNoDuplicates!0 (array!69782 (_ BitVec 32) List!23526) Bool)

(assert (=> b!1083471 (= res!722355 (arrayNoDuplicates!0 lt!480091 #b00000000000000000000000000000000 Nil!23523))))

(declare-fun b!1083472 () Bool)

(declare-fun res!722362 () Bool)

(assert (=> b!1083472 (=> (not res!722362) (not e!619128))))

(assert (=> b!1083472 (= res!722362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083473 () Bool)

(assert (=> b!1083473 (= e!619125 tp_is_empty!26439)))

(declare-fun res!722363 () Bool)

(assert (=> start!95820 (=> (not res!722363) (not e!619128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95820 (= res!722363 (validMask!0 mask!1414))))

(assert (=> start!95820 e!619128))

(assert (=> start!95820 tp!79160))

(assert (=> start!95820 true))

(assert (=> start!95820 tp_is_empty!26439))

(declare-fun array_inv!25754 (array!69782) Bool)

(assert (=> start!95820 (array_inv!25754 _keys!1070)))

(declare-fun array_inv!25755 (array!69780) Bool)

(assert (=> start!95820 (and (array_inv!25755 _values!874) e!619129)))

(declare-fun b!1083474 () Bool)

(declare-fun res!722360 () Bool)

(assert (=> b!1083474 (=> (not res!722360) (not e!619128))))

(assert (=> b!1083474 (= res!722360 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23523))))

(declare-fun b!1083475 () Bool)

(declare-fun res!722357 () Bool)

(assert (=> b!1083475 (=> (not res!722357) (not e!619128))))

(assert (=> b!1083475 (= res!722357 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34098 _keys!1070))))))

(declare-fun b!1083476 () Bool)

(assert (=> b!1083476 (= e!619127 (not (bvsle #b00000000000000000000000000000000 (size!34098 _keys!1070))))))

(declare-datatypes ((tuple2!16888 0))(
  ( (tuple2!16889 (_1!8454 (_ BitVec 64)) (_2!8454 V!40379)) )
))
(declare-datatypes ((List!23527 0))(
  ( (Nil!23524) (Cons!23523 (h!24732 tuple2!16888) (t!33029 List!23527)) )
))
(declare-datatypes ((ListLongMap!14869 0))(
  ( (ListLongMap!14870 (toList!7450 List!23527)) )
))
(declare-fun lt!480092 () ListLongMap!14869)

(declare-fun lt!480088 () ListLongMap!14869)

(assert (=> b!1083476 (and (= lt!480092 lt!480088) (= lt!480088 lt!480092))))

(declare-fun lt!480087 () ListLongMap!14869)

(declare-fun -!732 (ListLongMap!14869 (_ BitVec 64)) ListLongMap!14869)

(assert (=> b!1083476 (= lt!480088 (-!732 lt!480087 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40379)

(declare-datatypes ((Unit!35579 0))(
  ( (Unit!35580) )
))
(declare-fun lt!480090 () Unit!35579)

(declare-fun zeroValue!831 () V!40379)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!15 (array!69782 array!69780 (_ BitVec 32) (_ BitVec 32) V!40379 V!40379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35579)

(assert (=> b!1083476 (= lt!480090 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!15 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3961 (array!69782 array!69780 (_ BitVec 32) (_ BitVec 32) V!40379 V!40379 (_ BitVec 32) Int) ListLongMap!14869)

(declare-fun dynLambda!2097 (Int (_ BitVec 64)) V!40379)

(assert (=> b!1083476 (= lt!480092 (getCurrentListMapNoExtraKeys!3961 lt!480091 (array!69781 (store (arr!33560 _values!874) i!650 (ValueCellFull!12510 (dynLambda!2097 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34097 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1083476 (= lt!480087 (getCurrentListMapNoExtraKeys!3961 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083476 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480089 () Unit!35579)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69782 (_ BitVec 64) (_ BitVec 32)) Unit!35579)

(assert (=> b!1083476 (= lt!480089 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41413 () Bool)

(declare-fun tp!79161 () Bool)

(assert (=> mapNonEmpty!41413 (= mapRes!41413 (and tp!79161 e!619126))))

(declare-fun mapValue!41413 () ValueCell!12510)

(declare-fun mapKey!41413 () (_ BitVec 32))

(declare-fun mapRest!41413 () (Array (_ BitVec 32) ValueCell!12510))

(assert (=> mapNonEmpty!41413 (= (arr!33560 _values!874) (store mapRest!41413 mapKey!41413 mapValue!41413))))

(assert (= (and start!95820 res!722363) b!1083467))

(assert (= (and b!1083467 res!722358) b!1083472))

(assert (= (and b!1083472 res!722362) b!1083474))

(assert (= (and b!1083474 res!722360) b!1083475))

(assert (= (and b!1083475 res!722357) b!1083470))

(assert (= (and b!1083470 res!722359) b!1083468))

(assert (= (and b!1083468 res!722356) b!1083469))

(assert (= (and b!1083469 res!722361) b!1083471))

(assert (= (and b!1083471 res!722355) b!1083476))

(assert (= (and b!1083466 condMapEmpty!41413) mapIsEmpty!41413))

(assert (= (and b!1083466 (not condMapEmpty!41413)) mapNonEmpty!41413))

(get-info :version)

(assert (= (and mapNonEmpty!41413 ((_ is ValueCellFull!12510) mapValue!41413)) b!1083465))

(assert (= (and b!1083466 ((_ is ValueCellFull!12510) mapDefault!41413)) b!1083473))

(assert (= start!95820 b!1083466))

(declare-fun b_lambda!17137 () Bool)

(assert (=> (not b_lambda!17137) (not b!1083476)))

(declare-fun t!33027 () Bool)

(declare-fun tb!7323 () Bool)

(assert (=> (and start!95820 (= defaultEntry!882 defaultEntry!882) t!33027) tb!7323))

(declare-fun result!15157 () Bool)

(assert (=> tb!7323 (= result!15157 tp_is_empty!26439)))

(assert (=> b!1083476 t!33027))

(declare-fun b_and!35569 () Bool)

(assert (= b_and!35567 (and (=> t!33027 result!15157) b_and!35569)))

(declare-fun m!1001273 () Bool)

(assert (=> mapNonEmpty!41413 m!1001273))

(declare-fun m!1001275 () Bool)

(assert (=> b!1083469 m!1001275))

(declare-fun m!1001277 () Bool)

(assert (=> b!1083469 m!1001277))

(declare-fun m!1001279 () Bool)

(assert (=> b!1083474 m!1001279))

(declare-fun m!1001281 () Bool)

(assert (=> b!1083472 m!1001281))

(declare-fun m!1001283 () Bool)

(assert (=> b!1083470 m!1001283))

(declare-fun m!1001285 () Bool)

(assert (=> b!1083476 m!1001285))

(declare-fun m!1001287 () Bool)

(assert (=> b!1083476 m!1001287))

(declare-fun m!1001289 () Bool)

(assert (=> b!1083476 m!1001289))

(declare-fun m!1001291 () Bool)

(assert (=> b!1083476 m!1001291))

(declare-fun m!1001293 () Bool)

(assert (=> b!1083476 m!1001293))

(declare-fun m!1001295 () Bool)

(assert (=> b!1083476 m!1001295))

(declare-fun m!1001297 () Bool)

(assert (=> b!1083476 m!1001297))

(declare-fun m!1001299 () Bool)

(assert (=> b!1083476 m!1001299))

(declare-fun m!1001301 () Bool)

(assert (=> start!95820 m!1001301))

(declare-fun m!1001303 () Bool)

(assert (=> start!95820 m!1001303))

(declare-fun m!1001305 () Bool)

(assert (=> start!95820 m!1001305))

(declare-fun m!1001307 () Bool)

(assert (=> b!1083471 m!1001307))

(declare-fun m!1001309 () Bool)

(assert (=> b!1083468 m!1001309))

(check-sat (not b!1083476) (not b_next!22437) tp_is_empty!26439 b_and!35569 (not b!1083471) (not b!1083470) (not b!1083472) (not start!95820) (not b_lambda!17137) (not mapNonEmpty!41413) (not b!1083469) (not b!1083474))
(check-sat b_and!35569 (not b_next!22437))
