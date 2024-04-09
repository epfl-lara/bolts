; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95754 () Bool)

(assert start!95754)

(declare-fun b_free!22371 () Bool)

(declare-fun b_next!22371 () Bool)

(assert (=> start!95754 (= b_free!22371 (not b_next!22371))))

(declare-fun tp!78963 () Bool)

(declare-fun b_and!35435 () Bool)

(assert (=> start!95754 (= tp!78963 b_and!35435)))

(declare-fun mapNonEmpty!41314 () Bool)

(declare-fun mapRes!41314 () Bool)

(declare-fun tp!78962 () Bool)

(declare-fun e!618535 () Bool)

(assert (=> mapNonEmpty!41314 (= mapRes!41314 (and tp!78962 e!618535))))

(declare-datatypes ((V!40291 0))(
  ( (V!40292 (val!13243 Int)) )
))
(declare-datatypes ((ValueCell!12477 0))(
  ( (ValueCellFull!12477 (v!15865 V!40291)) (EmptyCell!12477) )
))
(declare-datatypes ((array!69650 0))(
  ( (array!69651 (arr!33495 (Array (_ BitVec 32) ValueCell!12477)) (size!34032 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69650)

(declare-fun mapKey!41314 () (_ BitVec 32))

(declare-fun mapValue!41314 () ValueCell!12477)

(declare-fun mapRest!41314 () (Array (_ BitVec 32) ValueCell!12477))

(assert (=> mapNonEmpty!41314 (= (arr!33495 _values!874) (store mapRest!41314 mapKey!41314 mapValue!41314))))

(declare-fun b!1082211 () Bool)

(declare-fun res!721464 () Bool)

(declare-fun e!618530 () Bool)

(assert (=> b!1082211 (=> (not res!721464) (not e!618530))))

(declare-datatypes ((array!69652 0))(
  ( (array!69653 (arr!33496 (Array (_ BitVec 32) (_ BitVec 64))) (size!34033 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69652)

(declare-datatypes ((List!23480 0))(
  ( (Nil!23477) (Cons!23476 (h!24685 (_ BitVec 64)) (t!32916 List!23480)) )
))
(declare-fun arrayNoDuplicates!0 (array!69652 (_ BitVec 32) List!23480) Bool)

(assert (=> b!1082211 (= res!721464 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23477))))

(declare-fun b!1082212 () Bool)

(declare-fun e!618533 () Bool)

(assert (=> b!1082212 (= e!618530 e!618533)))

(declare-fun res!721469 () Bool)

(assert (=> b!1082212 (=> (not res!721469) (not e!618533))))

(declare-fun lt!479540 () array!69652)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69652 (_ BitVec 32)) Bool)

(assert (=> b!1082212 (= res!721469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479540 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082212 (= lt!479540 (array!69653 (store (arr!33496 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34033 _keys!1070)))))

(declare-fun b!1082213 () Bool)

(declare-fun res!721470 () Bool)

(assert (=> b!1082213 (=> (not res!721470) (not e!618530))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082213 (= res!721470 (validKeyInArray!0 k0!904))))

(declare-fun res!721471 () Bool)

(assert (=> start!95754 (=> (not res!721471) (not e!618530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95754 (= res!721471 (validMask!0 mask!1414))))

(assert (=> start!95754 e!618530))

(assert (=> start!95754 tp!78963))

(assert (=> start!95754 true))

(declare-fun tp_is_empty!26373 () Bool)

(assert (=> start!95754 tp_is_empty!26373))

(declare-fun array_inv!25718 (array!69652) Bool)

(assert (=> start!95754 (array_inv!25718 _keys!1070)))

(declare-fun e!618534 () Bool)

(declare-fun array_inv!25719 (array!69650) Bool)

(assert (=> start!95754 (and (array_inv!25719 _values!874) e!618534)))

(declare-fun b!1082214 () Bool)

(declare-fun res!721466 () Bool)

(assert (=> b!1082214 (=> (not res!721466) (not e!618530))))

(assert (=> b!1082214 (= res!721466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082215 () Bool)

(declare-fun e!618531 () Bool)

(assert (=> b!1082215 (= e!618534 (and e!618531 mapRes!41314))))

(declare-fun condMapEmpty!41314 () Bool)

(declare-fun mapDefault!41314 () ValueCell!12477)

(assert (=> b!1082215 (= condMapEmpty!41314 (= (arr!33495 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12477)) mapDefault!41314)))))

(declare-fun b!1082216 () Bool)

(assert (=> b!1082216 (= e!618535 tp_is_empty!26373)))

(declare-fun mapIsEmpty!41314 () Bool)

(assert (=> mapIsEmpty!41314 mapRes!41314))

(declare-fun b!1082217 () Bool)

(declare-fun res!721468 () Bool)

(assert (=> b!1082217 (=> (not res!721468) (not e!618530))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1082217 (= res!721468 (and (= (size!34032 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34033 _keys!1070) (size!34032 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082218 () Bool)

(declare-fun res!721472 () Bool)

(assert (=> b!1082218 (=> (not res!721472) (not e!618530))))

(assert (=> b!1082218 (= res!721472 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34033 _keys!1070))))))

(declare-fun b!1082219 () Bool)

(assert (=> b!1082219 (= e!618533 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40291)

(declare-fun zeroValue!831 () V!40291)

(declare-datatypes ((tuple2!16848 0))(
  ( (tuple2!16849 (_1!8434 (_ BitVec 64)) (_2!8434 V!40291)) )
))
(declare-datatypes ((List!23481 0))(
  ( (Nil!23478) (Cons!23477 (h!24686 tuple2!16848) (t!32917 List!23481)) )
))
(declare-datatypes ((ListLongMap!14829 0))(
  ( (ListLongMap!14830 (toList!7430 List!23481)) )
))
(declare-fun lt!479537 () ListLongMap!14829)

(declare-fun getCurrentListMapNoExtraKeys!3941 (array!69652 array!69650 (_ BitVec 32) (_ BitVec 32) V!40291 V!40291 (_ BitVec 32) Int) ListLongMap!14829)

(declare-fun dynLambda!2077 (Int (_ BitVec 64)) V!40291)

(assert (=> b!1082219 (= lt!479537 (getCurrentListMapNoExtraKeys!3941 lt!479540 (array!69651 (store (arr!33495 _values!874) i!650 (ValueCellFull!12477 (dynLambda!2077 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34032 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479539 () ListLongMap!14829)

(assert (=> b!1082219 (= lt!479539 (getCurrentListMapNoExtraKeys!3941 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082219 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35539 0))(
  ( (Unit!35540) )
))
(declare-fun lt!479538 () Unit!35539)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69652 (_ BitVec 64) (_ BitVec 32)) Unit!35539)

(assert (=> b!1082219 (= lt!479538 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1082220 () Bool)

(assert (=> b!1082220 (= e!618531 tp_is_empty!26373)))

(declare-fun b!1082221 () Bool)

(declare-fun res!721465 () Bool)

(assert (=> b!1082221 (=> (not res!721465) (not e!618533))))

(assert (=> b!1082221 (= res!721465 (arrayNoDuplicates!0 lt!479540 #b00000000000000000000000000000000 Nil!23477))))

(declare-fun b!1082222 () Bool)

(declare-fun res!721467 () Bool)

(assert (=> b!1082222 (=> (not res!721467) (not e!618530))))

(assert (=> b!1082222 (= res!721467 (= (select (arr!33496 _keys!1070) i!650) k0!904))))

(assert (= (and start!95754 res!721471) b!1082217))

(assert (= (and b!1082217 res!721468) b!1082214))

(assert (= (and b!1082214 res!721466) b!1082211))

(assert (= (and b!1082211 res!721464) b!1082218))

(assert (= (and b!1082218 res!721472) b!1082213))

(assert (= (and b!1082213 res!721470) b!1082222))

(assert (= (and b!1082222 res!721467) b!1082212))

(assert (= (and b!1082212 res!721469) b!1082221))

(assert (= (and b!1082221 res!721465) b!1082219))

(assert (= (and b!1082215 condMapEmpty!41314) mapIsEmpty!41314))

(assert (= (and b!1082215 (not condMapEmpty!41314)) mapNonEmpty!41314))

(get-info :version)

(assert (= (and mapNonEmpty!41314 ((_ is ValueCellFull!12477) mapValue!41314)) b!1082216))

(assert (= (and b!1082215 ((_ is ValueCellFull!12477) mapDefault!41314)) b!1082220))

(assert (= start!95754 b!1082215))

(declare-fun b_lambda!17071 () Bool)

(assert (=> (not b_lambda!17071) (not b!1082219)))

(declare-fun t!32915 () Bool)

(declare-fun tb!7257 () Bool)

(assert (=> (and start!95754 (= defaultEntry!882 defaultEntry!882) t!32915) tb!7257))

(declare-fun result!15025 () Bool)

(assert (=> tb!7257 (= result!15025 tp_is_empty!26373)))

(assert (=> b!1082219 t!32915))

(declare-fun b_and!35437 () Bool)

(assert (= b_and!35435 (and (=> t!32915 result!15025) b_and!35437)))

(declare-fun m!1000051 () Bool)

(assert (=> start!95754 m!1000051))

(declare-fun m!1000053 () Bool)

(assert (=> start!95754 m!1000053))

(declare-fun m!1000055 () Bool)

(assert (=> start!95754 m!1000055))

(declare-fun m!1000057 () Bool)

(assert (=> b!1082212 m!1000057))

(declare-fun m!1000059 () Bool)

(assert (=> b!1082212 m!1000059))

(declare-fun m!1000061 () Bool)

(assert (=> b!1082213 m!1000061))

(declare-fun m!1000063 () Bool)

(assert (=> b!1082222 m!1000063))

(declare-fun m!1000065 () Bool)

(assert (=> b!1082211 m!1000065))

(declare-fun m!1000067 () Bool)

(assert (=> b!1082221 m!1000067))

(declare-fun m!1000069 () Bool)

(assert (=> mapNonEmpty!41314 m!1000069))

(declare-fun m!1000071 () Bool)

(assert (=> b!1082219 m!1000071))

(declare-fun m!1000073 () Bool)

(assert (=> b!1082219 m!1000073))

(declare-fun m!1000075 () Bool)

(assert (=> b!1082219 m!1000075))

(declare-fun m!1000077 () Bool)

(assert (=> b!1082219 m!1000077))

(declare-fun m!1000079 () Bool)

(assert (=> b!1082219 m!1000079))

(declare-fun m!1000081 () Bool)

(assert (=> b!1082219 m!1000081))

(declare-fun m!1000083 () Bool)

(assert (=> b!1082214 m!1000083))

(check-sat (not b!1082211) b_and!35437 (not b!1082212) (not b!1082213) (not b!1082221) (not start!95754) tp_is_empty!26373 (not b!1082219) (not b_next!22371) (not mapNonEmpty!41314) (not b!1082214) (not b_lambda!17071))
(check-sat b_and!35437 (not b_next!22371))
