; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95760 () Bool)

(assert start!95760)

(declare-fun b_free!22377 () Bool)

(declare-fun b_next!22377 () Bool)

(assert (=> start!95760 (= b_free!22377 (not b_next!22377))))

(declare-fun tp!78980 () Bool)

(declare-fun b_and!35447 () Bool)

(assert (=> start!95760 (= tp!78980 b_and!35447)))

(declare-fun b!1082325 () Bool)

(declare-fun res!721550 () Bool)

(declare-fun e!618588 () Bool)

(assert (=> b!1082325 (=> (not res!721550) (not e!618588))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082325 (= res!721550 (validKeyInArray!0 k0!904))))

(declare-fun b!1082326 () Bool)

(declare-fun res!721548 () Bool)

(assert (=> b!1082326 (=> (not res!721548) (not e!618588))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69662 0))(
  ( (array!69663 (arr!33501 (Array (_ BitVec 32) (_ BitVec 64))) (size!34038 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69662)

(declare-datatypes ((V!40299 0))(
  ( (V!40300 (val!13246 Int)) )
))
(declare-datatypes ((ValueCell!12480 0))(
  ( (ValueCellFull!12480 (v!15868 V!40299)) (EmptyCell!12480) )
))
(declare-datatypes ((array!69664 0))(
  ( (array!69665 (arr!33502 (Array (_ BitVec 32) ValueCell!12480)) (size!34039 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69664)

(assert (=> b!1082326 (= res!721548 (and (= (size!34039 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34038 _keys!1070) (size!34039 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082327 () Bool)

(declare-fun e!618584 () Bool)

(declare-fun tp_is_empty!26379 () Bool)

(assert (=> b!1082327 (= e!618584 tp_is_empty!26379)))

(declare-fun mapNonEmpty!41323 () Bool)

(declare-fun mapRes!41323 () Bool)

(declare-fun tp!78981 () Bool)

(assert (=> mapNonEmpty!41323 (= mapRes!41323 (and tp!78981 e!618584))))

(declare-fun mapValue!41323 () ValueCell!12480)

(declare-fun mapKey!41323 () (_ BitVec 32))

(declare-fun mapRest!41323 () (Array (_ BitVec 32) ValueCell!12480))

(assert (=> mapNonEmpty!41323 (= (arr!33502 _values!874) (store mapRest!41323 mapKey!41323 mapValue!41323))))

(declare-fun b!1082328 () Bool)

(declare-fun res!721546 () Bool)

(assert (=> b!1082328 (=> (not res!721546) (not e!618588))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082328 (= res!721546 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34038 _keys!1070))))))

(declare-fun b!1082329 () Bool)

(declare-fun e!618587 () Bool)

(declare-fun e!618586 () Bool)

(assert (=> b!1082329 (= e!618587 (and e!618586 mapRes!41323))))

(declare-fun condMapEmpty!41323 () Bool)

(declare-fun mapDefault!41323 () ValueCell!12480)

(assert (=> b!1082329 (= condMapEmpty!41323 (= (arr!33502 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12480)) mapDefault!41323)))))

(declare-fun b!1082330 () Bool)

(declare-fun res!721552 () Bool)

(assert (=> b!1082330 (=> (not res!721552) (not e!618588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69662 (_ BitVec 32)) Bool)

(assert (=> b!1082330 (= res!721552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41323 () Bool)

(assert (=> mapIsEmpty!41323 mapRes!41323))

(declare-fun b!1082331 () Bool)

(declare-fun e!618585 () Bool)

(assert (=> b!1082331 (= e!618588 e!618585)))

(declare-fun res!721549 () Bool)

(assert (=> b!1082331 (=> (not res!721549) (not e!618585))))

(declare-fun lt!479574 () array!69662)

(assert (=> b!1082331 (= res!721549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479574 mask!1414))))

(assert (=> b!1082331 (= lt!479574 (array!69663 (store (arr!33501 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34038 _keys!1070)))))

(declare-fun b!1082333 () Bool)

(declare-fun res!721545 () Bool)

(assert (=> b!1082333 (=> (not res!721545) (not e!618588))))

(assert (=> b!1082333 (= res!721545 (= (select (arr!33501 _keys!1070) i!650) k0!904))))

(declare-fun b!1082334 () Bool)

(assert (=> b!1082334 (= e!618586 tp_is_empty!26379)))

(declare-fun b!1082335 () Bool)

(declare-fun res!721551 () Bool)

(assert (=> b!1082335 (=> (not res!721551) (not e!618585))))

(declare-datatypes ((List!23485 0))(
  ( (Nil!23482) (Cons!23481 (h!24690 (_ BitVec 64)) (t!32927 List!23485)) )
))
(declare-fun arrayNoDuplicates!0 (array!69662 (_ BitVec 32) List!23485) Bool)

(assert (=> b!1082335 (= res!721551 (arrayNoDuplicates!0 lt!479574 #b00000000000000000000000000000000 Nil!23482))))

(declare-fun b!1082336 () Bool)

(declare-fun res!721547 () Bool)

(assert (=> b!1082336 (=> (not res!721547) (not e!618588))))

(assert (=> b!1082336 (= res!721547 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23482))))

(declare-fun res!721553 () Bool)

(assert (=> start!95760 (=> (not res!721553) (not e!618588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95760 (= res!721553 (validMask!0 mask!1414))))

(assert (=> start!95760 e!618588))

(assert (=> start!95760 tp!78980))

(assert (=> start!95760 true))

(assert (=> start!95760 tp_is_empty!26379))

(declare-fun array_inv!25722 (array!69662) Bool)

(assert (=> start!95760 (array_inv!25722 _keys!1070)))

(declare-fun array_inv!25723 (array!69664) Bool)

(assert (=> start!95760 (and (array_inv!25723 _values!874) e!618587)))

(declare-fun b!1082332 () Bool)

(assert (=> b!1082332 (= e!618585 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40299)

(declare-datatypes ((tuple2!16852 0))(
  ( (tuple2!16853 (_1!8436 (_ BitVec 64)) (_2!8436 V!40299)) )
))
(declare-datatypes ((List!23486 0))(
  ( (Nil!23483) (Cons!23482 (h!24691 tuple2!16852) (t!32928 List!23486)) )
))
(declare-datatypes ((ListLongMap!14833 0))(
  ( (ListLongMap!14834 (toList!7432 List!23486)) )
))
(declare-fun lt!479576 () ListLongMap!14833)

(declare-fun zeroValue!831 () V!40299)

(declare-fun getCurrentListMapNoExtraKeys!3943 (array!69662 array!69664 (_ BitVec 32) (_ BitVec 32) V!40299 V!40299 (_ BitVec 32) Int) ListLongMap!14833)

(declare-fun dynLambda!2079 (Int (_ BitVec 64)) V!40299)

(assert (=> b!1082332 (= lt!479576 (getCurrentListMapNoExtraKeys!3943 lt!479574 (array!69665 (store (arr!33502 _values!874) i!650 (ValueCellFull!12480 (dynLambda!2079 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34039 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479575 () ListLongMap!14833)

(assert (=> b!1082332 (= lt!479575 (getCurrentListMapNoExtraKeys!3943 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082332 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35543 0))(
  ( (Unit!35544) )
))
(declare-fun lt!479573 () Unit!35543)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69662 (_ BitVec 64) (_ BitVec 32)) Unit!35543)

(assert (=> b!1082332 (= lt!479573 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!95760 res!721553) b!1082326))

(assert (= (and b!1082326 res!721548) b!1082330))

(assert (= (and b!1082330 res!721552) b!1082336))

(assert (= (and b!1082336 res!721547) b!1082328))

(assert (= (and b!1082328 res!721546) b!1082325))

(assert (= (and b!1082325 res!721550) b!1082333))

(assert (= (and b!1082333 res!721545) b!1082331))

(assert (= (and b!1082331 res!721549) b!1082335))

(assert (= (and b!1082335 res!721551) b!1082332))

(assert (= (and b!1082329 condMapEmpty!41323) mapIsEmpty!41323))

(assert (= (and b!1082329 (not condMapEmpty!41323)) mapNonEmpty!41323))

(get-info :version)

(assert (= (and mapNonEmpty!41323 ((_ is ValueCellFull!12480) mapValue!41323)) b!1082327))

(assert (= (and b!1082329 ((_ is ValueCellFull!12480) mapDefault!41323)) b!1082334))

(assert (= start!95760 b!1082329))

(declare-fun b_lambda!17077 () Bool)

(assert (=> (not b_lambda!17077) (not b!1082332)))

(declare-fun t!32926 () Bool)

(declare-fun tb!7263 () Bool)

(assert (=> (and start!95760 (= defaultEntry!882 defaultEntry!882) t!32926) tb!7263))

(declare-fun result!15037 () Bool)

(assert (=> tb!7263 (= result!15037 tp_is_empty!26379)))

(assert (=> b!1082332 t!32926))

(declare-fun b_and!35449 () Bool)

(assert (= b_and!35447 (and (=> t!32926 result!15037) b_and!35449)))

(declare-fun m!1000153 () Bool)

(assert (=> b!1082336 m!1000153))

(declare-fun m!1000155 () Bool)

(assert (=> b!1082335 m!1000155))

(declare-fun m!1000157 () Bool)

(assert (=> mapNonEmpty!41323 m!1000157))

(declare-fun m!1000159 () Bool)

(assert (=> b!1082333 m!1000159))

(declare-fun m!1000161 () Bool)

(assert (=> start!95760 m!1000161))

(declare-fun m!1000163 () Bool)

(assert (=> start!95760 m!1000163))

(declare-fun m!1000165 () Bool)

(assert (=> start!95760 m!1000165))

(declare-fun m!1000167 () Bool)

(assert (=> b!1082330 m!1000167))

(declare-fun m!1000169 () Bool)

(assert (=> b!1082331 m!1000169))

(declare-fun m!1000171 () Bool)

(assert (=> b!1082331 m!1000171))

(declare-fun m!1000173 () Bool)

(assert (=> b!1082332 m!1000173))

(declare-fun m!1000175 () Bool)

(assert (=> b!1082332 m!1000175))

(declare-fun m!1000177 () Bool)

(assert (=> b!1082332 m!1000177))

(declare-fun m!1000179 () Bool)

(assert (=> b!1082332 m!1000179))

(declare-fun m!1000181 () Bool)

(assert (=> b!1082332 m!1000181))

(declare-fun m!1000183 () Bool)

(assert (=> b!1082332 m!1000183))

(declare-fun m!1000185 () Bool)

(assert (=> b!1082325 m!1000185))

(check-sat (not b!1082325) (not b!1082330) (not b!1082331) (not b!1082332) (not b_next!22377) (not start!95760) (not b_lambda!17077) tp_is_empty!26379 b_and!35449 (not mapNonEmpty!41323) (not b!1082335) (not b!1082336))
(check-sat b_and!35449 (not b_next!22377))
