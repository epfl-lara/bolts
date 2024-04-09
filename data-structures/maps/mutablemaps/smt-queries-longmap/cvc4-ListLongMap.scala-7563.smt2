; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95738 () Bool)

(assert start!95738)

(declare-fun b_free!22355 () Bool)

(declare-fun b_next!22355 () Bool)

(assert (=> start!95738 (= b_free!22355 (not b_next!22355))))

(declare-fun tp!78915 () Bool)

(declare-fun b_and!35403 () Bool)

(assert (=> start!95738 (= tp!78915 b_and!35403)))

(declare-fun b!1081907 () Bool)

(declare-fun e!618387 () Bool)

(assert (=> b!1081907 (= e!618387 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40269 0))(
  ( (V!40270 (val!13235 Int)) )
))
(declare-datatypes ((ValueCell!12469 0))(
  ( (ValueCellFull!12469 (v!15857 V!40269)) (EmptyCell!12469) )
))
(declare-datatypes ((array!69618 0))(
  ( (array!69619 (arr!33479 (Array (_ BitVec 32) ValueCell!12469)) (size!34016 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69618)

(declare-fun minValue!831 () V!40269)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16836 0))(
  ( (tuple2!16837 (_1!8428 (_ BitVec 64)) (_2!8428 V!40269)) )
))
(declare-datatypes ((List!23467 0))(
  ( (Nil!23464) (Cons!23463 (h!24672 tuple2!16836) (t!32887 List!23467)) )
))
(declare-datatypes ((ListLongMap!14817 0))(
  ( (ListLongMap!14818 (toList!7424 List!23467)) )
))
(declare-fun lt!479441 () ListLongMap!14817)

(declare-fun zeroValue!831 () V!40269)

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69620 0))(
  ( (array!69621 (arr!33480 (Array (_ BitVec 32) (_ BitVec 64))) (size!34017 (_ BitVec 32))) )
))
(declare-fun lt!479443 () array!69620)

(declare-fun getCurrentListMapNoExtraKeys!3935 (array!69620 array!69618 (_ BitVec 32) (_ BitVec 32) V!40269 V!40269 (_ BitVec 32) Int) ListLongMap!14817)

(declare-fun dynLambda!2071 (Int (_ BitVec 64)) V!40269)

(assert (=> b!1081907 (= lt!479441 (getCurrentListMapNoExtraKeys!3935 lt!479443 (array!69619 (store (arr!33479 _values!874) i!650 (ValueCellFull!12469 (dynLambda!2071 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34016 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479442 () ListLongMap!14817)

(declare-fun _keys!1070 () array!69620)

(assert (=> b!1081907 (= lt!479442 (getCurrentListMapNoExtraKeys!3935 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081907 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35527 0))(
  ( (Unit!35528) )
))
(declare-fun lt!479444 () Unit!35527)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69620 (_ BitVec 64) (_ BitVec 32)) Unit!35527)

(assert (=> b!1081907 (= lt!479444 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1081908 () Bool)

(declare-fun res!721251 () Bool)

(declare-fun e!618386 () Bool)

(assert (=> b!1081908 (=> (not res!721251) (not e!618386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69620 (_ BitVec 32)) Bool)

(assert (=> b!1081908 (= res!721251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!721248 () Bool)

(assert (=> start!95738 (=> (not res!721248) (not e!618386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95738 (= res!721248 (validMask!0 mask!1414))))

(assert (=> start!95738 e!618386))

(assert (=> start!95738 tp!78915))

(assert (=> start!95738 true))

(declare-fun tp_is_empty!26357 () Bool)

(assert (=> start!95738 tp_is_empty!26357))

(declare-fun array_inv!25704 (array!69620) Bool)

(assert (=> start!95738 (array_inv!25704 _keys!1070)))

(declare-fun e!618390 () Bool)

(declare-fun array_inv!25705 (array!69618) Bool)

(assert (=> start!95738 (and (array_inv!25705 _values!874) e!618390)))

(declare-fun mapNonEmpty!41290 () Bool)

(declare-fun mapRes!41290 () Bool)

(declare-fun tp!78914 () Bool)

(declare-fun e!618388 () Bool)

(assert (=> mapNonEmpty!41290 (= mapRes!41290 (and tp!78914 e!618388))))

(declare-fun mapValue!41290 () ValueCell!12469)

(declare-fun mapRest!41290 () (Array (_ BitVec 32) ValueCell!12469))

(declare-fun mapKey!41290 () (_ BitVec 32))

(assert (=> mapNonEmpty!41290 (= (arr!33479 _values!874) (store mapRest!41290 mapKey!41290 mapValue!41290))))

(declare-fun b!1081909 () Bool)

(declare-fun res!721249 () Bool)

(assert (=> b!1081909 (=> (not res!721249) (not e!618386))))

(declare-datatypes ((List!23468 0))(
  ( (Nil!23465) (Cons!23464 (h!24673 (_ BitVec 64)) (t!32888 List!23468)) )
))
(declare-fun arrayNoDuplicates!0 (array!69620 (_ BitVec 32) List!23468) Bool)

(assert (=> b!1081909 (= res!721249 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23465))))

(declare-fun b!1081910 () Bool)

(declare-fun res!721252 () Bool)

(assert (=> b!1081910 (=> (not res!721252) (not e!618386))))

(assert (=> b!1081910 (= res!721252 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34017 _keys!1070))))))

(declare-fun b!1081911 () Bool)

(declare-fun res!721253 () Bool)

(assert (=> b!1081911 (=> (not res!721253) (not e!618386))))

(assert (=> b!1081911 (= res!721253 (= (select (arr!33480 _keys!1070) i!650) k!904))))

(declare-fun b!1081912 () Bool)

(assert (=> b!1081912 (= e!618388 tp_is_empty!26357)))

(declare-fun b!1081913 () Bool)

(declare-fun res!721250 () Bool)

(assert (=> b!1081913 (=> (not res!721250) (not e!618387))))

(assert (=> b!1081913 (= res!721250 (arrayNoDuplicates!0 lt!479443 #b00000000000000000000000000000000 Nil!23465))))

(declare-fun mapIsEmpty!41290 () Bool)

(assert (=> mapIsEmpty!41290 mapRes!41290))

(declare-fun b!1081914 () Bool)

(assert (=> b!1081914 (= e!618386 e!618387)))

(declare-fun res!721255 () Bool)

(assert (=> b!1081914 (=> (not res!721255) (not e!618387))))

(assert (=> b!1081914 (= res!721255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479443 mask!1414))))

(assert (=> b!1081914 (= lt!479443 (array!69621 (store (arr!33480 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34017 _keys!1070)))))

(declare-fun b!1081915 () Bool)

(declare-fun res!721254 () Bool)

(assert (=> b!1081915 (=> (not res!721254) (not e!618386))))

(assert (=> b!1081915 (= res!721254 (and (= (size!34016 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34017 _keys!1070) (size!34016 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081916 () Bool)

(declare-fun e!618389 () Bool)

(assert (=> b!1081916 (= e!618390 (and e!618389 mapRes!41290))))

(declare-fun condMapEmpty!41290 () Bool)

(declare-fun mapDefault!41290 () ValueCell!12469)

