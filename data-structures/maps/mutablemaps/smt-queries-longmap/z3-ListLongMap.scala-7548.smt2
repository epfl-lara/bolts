; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95646 () Bool)

(assert start!95646)

(declare-fun b_free!22263 () Bool)

(declare-fun b_next!22263 () Bool)

(assert (=> start!95646 (= b_free!22263 (not b_next!22263))))

(declare-fun tp!78639 () Bool)

(declare-fun b_and!35259 () Bool)

(assert (=> start!95646 (= tp!78639 b_and!35259)))

(declare-fun b!1080199 () Bool)

(declare-fun res!720012 () Bool)

(declare-fun e!617558 () Bool)

(assert (=> b!1080199 (=> (not res!720012) (not e!617558))))

(declare-datatypes ((array!69436 0))(
  ( (array!69437 (arr!33388 (Array (_ BitVec 32) (_ BitVec 64))) (size!33925 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69436)

(declare-datatypes ((List!23394 0))(
  ( (Nil!23391) (Cons!23390 (h!24599 (_ BitVec 64)) (t!32760 List!23394)) )
))
(declare-fun arrayNoDuplicates!0 (array!69436 (_ BitVec 32) List!23394) Bool)

(assert (=> b!1080199 (= res!720012 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23391))))

(declare-fun b!1080200 () Bool)

(declare-fun res!720010 () Bool)

(assert (=> b!1080200 (=> (not res!720010) (not e!617558))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40147 0))(
  ( (V!40148 (val!13189 Int)) )
))
(declare-datatypes ((ValueCell!12423 0))(
  ( (ValueCellFull!12423 (v!15811 V!40147)) (EmptyCell!12423) )
))
(declare-datatypes ((array!69438 0))(
  ( (array!69439 (arr!33389 (Array (_ BitVec 32) ValueCell!12423)) (size!33926 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69438)

(assert (=> b!1080200 (= res!720010 (and (= (size!33926 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33925 _keys!1070) (size!33926 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080201 () Bool)

(declare-fun res!720006 () Bool)

(assert (=> b!1080201 (=> (not res!720006) (not e!617558))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080201 (= res!720006 (= (select (arr!33388 _keys!1070) i!650) k0!904))))

(declare-fun b!1080202 () Bool)

(declare-fun e!617560 () Bool)

(assert (=> b!1080202 (= e!617560 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40147)

(declare-datatypes ((tuple2!16772 0))(
  ( (tuple2!16773 (_1!8396 (_ BitVec 64)) (_2!8396 V!40147)) )
))
(declare-datatypes ((List!23395 0))(
  ( (Nil!23392) (Cons!23391 (h!24600 tuple2!16772) (t!32761 List!23395)) )
))
(declare-datatypes ((ListLongMap!14753 0))(
  ( (ListLongMap!14754 (toList!7392 List!23395)) )
))
(declare-fun lt!478949 () ListLongMap!14753)

(declare-fun zeroValue!831 () V!40147)

(declare-fun getCurrentListMapNoExtraKeys!3903 (array!69436 array!69438 (_ BitVec 32) (_ BitVec 32) V!40147 V!40147 (_ BitVec 32) Int) ListLongMap!14753)

(assert (=> b!1080202 (= lt!478949 (getCurrentListMapNoExtraKeys!3903 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080202 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35463 0))(
  ( (Unit!35464) )
))
(declare-fun lt!478947 () Unit!35463)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69436 (_ BitVec 64) (_ BitVec 32)) Unit!35463)

(assert (=> b!1080202 (= lt!478947 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1080203 () Bool)

(declare-fun res!720011 () Bool)

(assert (=> b!1080203 (=> (not res!720011) (not e!617558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69436 (_ BitVec 32)) Bool)

(assert (=> b!1080203 (= res!720011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080204 () Bool)

(declare-fun e!617562 () Bool)

(declare-fun e!617563 () Bool)

(declare-fun mapRes!41152 () Bool)

(assert (=> b!1080204 (= e!617562 (and e!617563 mapRes!41152))))

(declare-fun condMapEmpty!41152 () Bool)

(declare-fun mapDefault!41152 () ValueCell!12423)

(assert (=> b!1080204 (= condMapEmpty!41152 (= (arr!33389 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12423)) mapDefault!41152)))))

(declare-fun res!720007 () Bool)

(assert (=> start!95646 (=> (not res!720007) (not e!617558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95646 (= res!720007 (validMask!0 mask!1414))))

(assert (=> start!95646 e!617558))

(assert (=> start!95646 tp!78639))

(assert (=> start!95646 true))

(declare-fun tp_is_empty!26265 () Bool)

(assert (=> start!95646 tp_is_empty!26265))

(declare-fun array_inv!25642 (array!69436) Bool)

(assert (=> start!95646 (array_inv!25642 _keys!1070)))

(declare-fun array_inv!25643 (array!69438) Bool)

(assert (=> start!95646 (and (array_inv!25643 _values!874) e!617562)))

(declare-fun b!1080205 () Bool)

(declare-fun e!617559 () Bool)

(assert (=> b!1080205 (= e!617559 tp_is_empty!26265)))

(declare-fun mapIsEmpty!41152 () Bool)

(assert (=> mapIsEmpty!41152 mapRes!41152))

(declare-fun b!1080206 () Bool)

(declare-fun res!720008 () Bool)

(assert (=> b!1080206 (=> (not res!720008) (not e!617558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080206 (= res!720008 (validKeyInArray!0 k0!904))))

(declare-fun b!1080207 () Bool)

(declare-fun res!720014 () Bool)

(assert (=> b!1080207 (=> (not res!720014) (not e!617560))))

(declare-fun lt!478948 () array!69436)

(assert (=> b!1080207 (= res!720014 (arrayNoDuplicates!0 lt!478948 #b00000000000000000000000000000000 Nil!23391))))

(declare-fun b!1080208 () Bool)

(assert (=> b!1080208 (= e!617563 tp_is_empty!26265)))

(declare-fun mapNonEmpty!41152 () Bool)

(declare-fun tp!78638 () Bool)

(assert (=> mapNonEmpty!41152 (= mapRes!41152 (and tp!78638 e!617559))))

(declare-fun mapRest!41152 () (Array (_ BitVec 32) ValueCell!12423))

(declare-fun mapValue!41152 () ValueCell!12423)

(declare-fun mapKey!41152 () (_ BitVec 32))

(assert (=> mapNonEmpty!41152 (= (arr!33389 _values!874) (store mapRest!41152 mapKey!41152 mapValue!41152))))

(declare-fun b!1080209 () Bool)

(declare-fun res!720009 () Bool)

(assert (=> b!1080209 (=> (not res!720009) (not e!617558))))

(assert (=> b!1080209 (= res!720009 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33925 _keys!1070))))))

(declare-fun b!1080210 () Bool)

(assert (=> b!1080210 (= e!617558 e!617560)))

(declare-fun res!720013 () Bool)

(assert (=> b!1080210 (=> (not res!720013) (not e!617560))))

(assert (=> b!1080210 (= res!720013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478948 mask!1414))))

(assert (=> b!1080210 (= lt!478948 (array!69437 (store (arr!33388 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33925 _keys!1070)))))

(assert (= (and start!95646 res!720007) b!1080200))

(assert (= (and b!1080200 res!720010) b!1080203))

(assert (= (and b!1080203 res!720011) b!1080199))

(assert (= (and b!1080199 res!720012) b!1080209))

(assert (= (and b!1080209 res!720009) b!1080206))

(assert (= (and b!1080206 res!720008) b!1080201))

(assert (= (and b!1080201 res!720006) b!1080210))

(assert (= (and b!1080210 res!720013) b!1080207))

(assert (= (and b!1080207 res!720014) b!1080202))

(assert (= (and b!1080204 condMapEmpty!41152) mapIsEmpty!41152))

(assert (= (and b!1080204 (not condMapEmpty!41152)) mapNonEmpty!41152))

(get-info :version)

(assert (= (and mapNonEmpty!41152 ((_ is ValueCellFull!12423) mapValue!41152)) b!1080205))

(assert (= (and b!1080204 ((_ is ValueCellFull!12423) mapDefault!41152)) b!1080208))

(assert (= start!95646 b!1080204))

(declare-fun m!998335 () Bool)

(assert (=> b!1080202 m!998335))

(declare-fun m!998337 () Bool)

(assert (=> b!1080202 m!998337))

(declare-fun m!998339 () Bool)

(assert (=> b!1080202 m!998339))

(declare-fun m!998341 () Bool)

(assert (=> b!1080207 m!998341))

(declare-fun m!998343 () Bool)

(assert (=> start!95646 m!998343))

(declare-fun m!998345 () Bool)

(assert (=> start!95646 m!998345))

(declare-fun m!998347 () Bool)

(assert (=> start!95646 m!998347))

(declare-fun m!998349 () Bool)

(assert (=> b!1080203 m!998349))

(declare-fun m!998351 () Bool)

(assert (=> b!1080201 m!998351))

(declare-fun m!998353 () Bool)

(assert (=> b!1080206 m!998353))

(declare-fun m!998355 () Bool)

(assert (=> mapNonEmpty!41152 m!998355))

(declare-fun m!998357 () Bool)

(assert (=> b!1080210 m!998357))

(declare-fun m!998359 () Bool)

(assert (=> b!1080210 m!998359))

(declare-fun m!998361 () Bool)

(assert (=> b!1080199 m!998361))

(check-sat (not b_next!22263) (not b!1080199) tp_is_empty!26265 (not b!1080203) (not start!95646) (not b!1080206) (not b!1080207) b_and!35259 (not b!1080202) (not b!1080210) (not mapNonEmpty!41152))
(check-sat b_and!35259 (not b_next!22263))
