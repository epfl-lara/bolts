; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95736 () Bool)

(assert start!95736)

(declare-fun b_free!22353 () Bool)

(declare-fun b_next!22353 () Bool)

(assert (=> start!95736 (= b_free!22353 (not b_next!22353))))

(declare-fun tp!78909 () Bool)

(declare-fun b_and!35399 () Bool)

(assert (=> start!95736 (= tp!78909 b_and!35399)))

(declare-fun b!1081869 () Bool)

(declare-fun res!721222 () Bool)

(declare-fun e!618370 () Bool)

(assert (=> b!1081869 (=> (not res!721222) (not e!618370))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69614 0))(
  ( (array!69615 (arr!33477 (Array (_ BitVec 32) (_ BitVec 64))) (size!34014 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69614)

(declare-datatypes ((V!40267 0))(
  ( (V!40268 (val!13234 Int)) )
))
(declare-datatypes ((ValueCell!12468 0))(
  ( (ValueCellFull!12468 (v!15856 V!40267)) (EmptyCell!12468) )
))
(declare-datatypes ((array!69616 0))(
  ( (array!69617 (arr!33478 (Array (_ BitVec 32) ValueCell!12468)) (size!34015 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69616)

(assert (=> b!1081869 (= res!721222 (and (= (size!34015 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34014 _keys!1070) (size!34015 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081870 () Bool)

(declare-fun res!721229 () Bool)

(assert (=> b!1081870 (=> (not res!721229) (not e!618370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69614 (_ BitVec 32)) Bool)

(assert (=> b!1081870 (= res!721229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081871 () Bool)

(declare-fun res!721225 () Bool)

(assert (=> b!1081871 (=> (not res!721225) (not e!618370))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081871 (= res!721225 (validKeyInArray!0 k0!904))))

(declare-fun res!721221 () Bool)

(assert (=> start!95736 (=> (not res!721221) (not e!618370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95736 (= res!721221 (validMask!0 mask!1414))))

(assert (=> start!95736 e!618370))

(assert (=> start!95736 tp!78909))

(assert (=> start!95736 true))

(declare-fun tp_is_empty!26355 () Bool)

(assert (=> start!95736 tp_is_empty!26355))

(declare-fun array_inv!25702 (array!69614) Bool)

(assert (=> start!95736 (array_inv!25702 _keys!1070)))

(declare-fun e!618373 () Bool)

(declare-fun array_inv!25703 (array!69616) Bool)

(assert (=> start!95736 (and (array_inv!25703 _values!874) e!618373)))

(declare-fun b!1081872 () Bool)

(declare-fun e!618369 () Bool)

(assert (=> b!1081872 (= e!618369 tp_is_empty!26355)))

(declare-fun b!1081873 () Bool)

(declare-fun e!618372 () Bool)

(assert (=> b!1081873 (= e!618370 e!618372)))

(declare-fun res!721227 () Bool)

(assert (=> b!1081873 (=> (not res!721227) (not e!618372))))

(declare-fun lt!479432 () array!69614)

(assert (=> b!1081873 (= res!721227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479432 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081873 (= lt!479432 (array!69615 (store (arr!33477 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34014 _keys!1070)))))

(declare-fun b!1081874 () Bool)

(declare-fun res!721223 () Bool)

(assert (=> b!1081874 (=> (not res!721223) (not e!618372))))

(declare-datatypes ((List!23465 0))(
  ( (Nil!23462) (Cons!23461 (h!24670 (_ BitVec 64)) (t!32883 List!23465)) )
))
(declare-fun arrayNoDuplicates!0 (array!69614 (_ BitVec 32) List!23465) Bool)

(assert (=> b!1081874 (= res!721223 (arrayNoDuplicates!0 lt!479432 #b00000000000000000000000000000000 Nil!23462))))

(declare-fun b!1081875 () Bool)

(declare-fun res!721224 () Bool)

(assert (=> b!1081875 (=> (not res!721224) (not e!618370))))

(assert (=> b!1081875 (= res!721224 (= (select (arr!33477 _keys!1070) i!650) k0!904))))

(declare-fun b!1081876 () Bool)

(declare-fun e!618368 () Bool)

(assert (=> b!1081876 (= e!618368 tp_is_empty!26355)))

(declare-fun b!1081877 () Bool)

(declare-fun mapRes!41287 () Bool)

(assert (=> b!1081877 (= e!618373 (and e!618368 mapRes!41287))))

(declare-fun condMapEmpty!41287 () Bool)

(declare-fun mapDefault!41287 () ValueCell!12468)

(assert (=> b!1081877 (= condMapEmpty!41287 (= (arr!33478 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12468)) mapDefault!41287)))))

(declare-fun b!1081878 () Bool)

(declare-fun res!721228 () Bool)

(assert (=> b!1081878 (=> (not res!721228) (not e!618370))))

(assert (=> b!1081878 (= res!721228 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34014 _keys!1070))))))

(declare-fun b!1081879 () Bool)

(assert (=> b!1081879 (= e!618372 (not true))))

(declare-fun minValue!831 () V!40267)

(declare-fun zeroValue!831 () V!40267)

(declare-datatypes ((tuple2!16834 0))(
  ( (tuple2!16835 (_1!8427 (_ BitVec 64)) (_2!8427 V!40267)) )
))
(declare-datatypes ((List!23466 0))(
  ( (Nil!23463) (Cons!23462 (h!24671 tuple2!16834) (t!32884 List!23466)) )
))
(declare-datatypes ((ListLongMap!14815 0))(
  ( (ListLongMap!14816 (toList!7423 List!23466)) )
))
(declare-fun lt!479431 () ListLongMap!14815)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3934 (array!69614 array!69616 (_ BitVec 32) (_ BitVec 32) V!40267 V!40267 (_ BitVec 32) Int) ListLongMap!14815)

(declare-fun dynLambda!2070 (Int (_ BitVec 64)) V!40267)

(assert (=> b!1081879 (= lt!479431 (getCurrentListMapNoExtraKeys!3934 lt!479432 (array!69617 (store (arr!33478 _values!874) i!650 (ValueCellFull!12468 (dynLambda!2070 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34015 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479429 () ListLongMap!14815)

(assert (=> b!1081879 (= lt!479429 (getCurrentListMapNoExtraKeys!3934 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081879 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35525 0))(
  ( (Unit!35526) )
))
(declare-fun lt!479430 () Unit!35525)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69614 (_ BitVec 64) (_ BitVec 32)) Unit!35525)

(assert (=> b!1081879 (= lt!479430 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1081880 () Bool)

(declare-fun res!721226 () Bool)

(assert (=> b!1081880 (=> (not res!721226) (not e!618370))))

(assert (=> b!1081880 (= res!721226 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23462))))

(declare-fun mapIsEmpty!41287 () Bool)

(assert (=> mapIsEmpty!41287 mapRes!41287))

(declare-fun mapNonEmpty!41287 () Bool)

(declare-fun tp!78908 () Bool)

(assert (=> mapNonEmpty!41287 (= mapRes!41287 (and tp!78908 e!618369))))

(declare-fun mapKey!41287 () (_ BitVec 32))

(declare-fun mapRest!41287 () (Array (_ BitVec 32) ValueCell!12468))

(declare-fun mapValue!41287 () ValueCell!12468)

(assert (=> mapNonEmpty!41287 (= (arr!33478 _values!874) (store mapRest!41287 mapKey!41287 mapValue!41287))))

(assert (= (and start!95736 res!721221) b!1081869))

(assert (= (and b!1081869 res!721222) b!1081870))

(assert (= (and b!1081870 res!721229) b!1081880))

(assert (= (and b!1081880 res!721226) b!1081878))

(assert (= (and b!1081878 res!721228) b!1081871))

(assert (= (and b!1081871 res!721225) b!1081875))

(assert (= (and b!1081875 res!721224) b!1081873))

(assert (= (and b!1081873 res!721227) b!1081874))

(assert (= (and b!1081874 res!721223) b!1081879))

(assert (= (and b!1081877 condMapEmpty!41287) mapIsEmpty!41287))

(assert (= (and b!1081877 (not condMapEmpty!41287)) mapNonEmpty!41287))

(get-info :version)

(assert (= (and mapNonEmpty!41287 ((_ is ValueCellFull!12468) mapValue!41287)) b!1081872))

(assert (= (and b!1081877 ((_ is ValueCellFull!12468) mapDefault!41287)) b!1081876))

(assert (= start!95736 b!1081877))

(declare-fun b_lambda!17053 () Bool)

(assert (=> (not b_lambda!17053) (not b!1081879)))

(declare-fun t!32882 () Bool)

(declare-fun tb!7239 () Bool)

(assert (=> (and start!95736 (= defaultEntry!882 defaultEntry!882) t!32882) tb!7239))

(declare-fun result!14989 () Bool)

(assert (=> tb!7239 (= result!14989 tp_is_empty!26355)))

(assert (=> b!1081879 t!32882))

(declare-fun b_and!35401 () Bool)

(assert (= b_and!35399 (and (=> t!32882 result!14989) b_and!35401)))

(declare-fun m!999745 () Bool)

(assert (=> b!1081874 m!999745))

(declare-fun m!999747 () Bool)

(assert (=> mapNonEmpty!41287 m!999747))

(declare-fun m!999749 () Bool)

(assert (=> b!1081875 m!999749))

(declare-fun m!999751 () Bool)

(assert (=> b!1081871 m!999751))

(declare-fun m!999753 () Bool)

(assert (=> b!1081873 m!999753))

(declare-fun m!999755 () Bool)

(assert (=> b!1081873 m!999755))

(declare-fun m!999757 () Bool)

(assert (=> b!1081880 m!999757))

(declare-fun m!999759 () Bool)

(assert (=> b!1081879 m!999759))

(declare-fun m!999761 () Bool)

(assert (=> b!1081879 m!999761))

(declare-fun m!999763 () Bool)

(assert (=> b!1081879 m!999763))

(declare-fun m!999765 () Bool)

(assert (=> b!1081879 m!999765))

(declare-fun m!999767 () Bool)

(assert (=> b!1081879 m!999767))

(declare-fun m!999769 () Bool)

(assert (=> b!1081879 m!999769))

(declare-fun m!999771 () Bool)

(assert (=> start!95736 m!999771))

(declare-fun m!999773 () Bool)

(assert (=> start!95736 m!999773))

(declare-fun m!999775 () Bool)

(assert (=> start!95736 m!999775))

(declare-fun m!999777 () Bool)

(assert (=> b!1081870 m!999777))

(check-sat (not b!1081870) (not start!95736) (not b_next!22353) b_and!35401 (not b_lambda!17053) (not b!1081879) tp_is_empty!26355 (not b!1081871) (not mapNonEmpty!41287) (not b!1081874) (not b!1081873) (not b!1081880))
(check-sat b_and!35401 (not b_next!22353))
