; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96592 () Bool)

(assert start!96592)

(declare-fun b_free!23083 () Bool)

(declare-fun b_next!23083 () Bool)

(assert (=> start!96592 (= b_free!23083 (not b_next!23083))))

(declare-fun tp!81182 () Bool)

(declare-fun b_and!36875 () Bool)

(assert (=> start!96592 (= tp!81182 b_and!36875)))

(declare-fun b!1098056 () Bool)

(declare-fun res!732928 () Bool)

(declare-fun e!626760 () Bool)

(assert (=> b!1098056 (=> (not res!732928) (not e!626760))))

(declare-datatypes ((array!71130 0))(
  ( (array!71131 (arr!34231 (Array (_ BitVec 32) (_ BitVec 64))) (size!34768 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71130)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71130 (_ BitVec 32)) Bool)

(assert (=> b!1098056 (= res!732928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1098057 () Bool)

(declare-fun res!732922 () Bool)

(declare-fun e!626754 () Bool)

(assert (=> b!1098057 (=> (not res!732922) (not e!626754))))

(declare-datatypes ((V!41305 0))(
  ( (V!41306 (val!13623 Int)) )
))
(declare-datatypes ((tuple2!17368 0))(
  ( (tuple2!17369 (_1!8694 (_ BitVec 64)) (_2!8694 V!41305)) )
))
(declare-datatypes ((List!24046 0))(
  ( (Nil!24043) (Cons!24042 (h!25251 tuple2!17368) (t!34182 List!24046)) )
))
(declare-datatypes ((ListLongMap!15349 0))(
  ( (ListLongMap!15350 (toList!7690 List!24046)) )
))
(declare-fun lt!491066 () ListLongMap!15349)

(declare-fun lt!491074 () ListLongMap!15349)

(declare-fun lt!491064 () tuple2!17368)

(declare-fun lt!491072 () tuple2!17368)

(declare-fun +!3325 (ListLongMap!15349 tuple2!17368) ListLongMap!15349)

(assert (=> b!1098057 (= res!732922 (= lt!491074 (+!3325 (+!3325 lt!491066 lt!491064) lt!491072)))))

(declare-fun b!1098058 () Bool)

(declare-fun res!732931 () Bool)

(assert (=> b!1098058 (=> (not res!732931) (not e!626760))))

(declare-datatypes ((ValueCell!12857 0))(
  ( (ValueCellFull!12857 (v!16247 V!41305)) (EmptyCell!12857) )
))
(declare-datatypes ((array!71132 0))(
  ( (array!71133 (arr!34232 (Array (_ BitVec 32) ValueCell!12857)) (size!34769 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71132)

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098058 (= res!732931 (and (= (size!34769 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34768 _keys!1070) (size!34769 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun lt!491065 () ListLongMap!15349)

(declare-fun b!1098059 () Bool)

(declare-fun lt!491071 () ListLongMap!15349)

(assert (=> b!1098059 (= e!626754 (= lt!491071 (+!3325 (+!3325 lt!491065 lt!491064) lt!491072)))))

(declare-fun b!1098060 () Bool)

(declare-fun e!626759 () Bool)

(declare-fun tp_is_empty!27133 () Bool)

(assert (=> b!1098060 (= e!626759 tp_is_empty!27133)))

(declare-fun b!1098061 () Bool)

(declare-fun e!626758 () Bool)

(assert (=> b!1098061 (= e!626758 tp_is_empty!27133)))

(declare-fun b!1098062 () Bool)

(declare-fun e!626755 () Bool)

(declare-fun e!626756 () Bool)

(assert (=> b!1098062 (= e!626755 (not e!626756))))

(declare-fun res!732926 () Bool)

(assert (=> b!1098062 (=> res!732926 e!626756)))

(assert (=> b!1098062 (= res!732926 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!41305)

(declare-fun zeroValue!831 () V!41305)

(declare-fun getCurrentListMap!4388 (array!71130 array!71132 (_ BitVec 32) (_ BitVec 32) V!41305 V!41305 (_ BitVec 32) Int) ListLongMap!15349)

(assert (=> b!1098062 (= lt!491074 (getCurrentListMap!4388 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491069 () array!71132)

(declare-fun lt!491068 () array!71130)

(assert (=> b!1098062 (= lt!491071 (getCurrentListMap!4388 lt!491068 lt!491069 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491070 () ListLongMap!15349)

(assert (=> b!1098062 (and (= lt!491070 lt!491065) (= lt!491065 lt!491070))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!935 (ListLongMap!15349 (_ BitVec 64)) ListLongMap!15349)

(assert (=> b!1098062 (= lt!491065 (-!935 lt!491066 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36053 0))(
  ( (Unit!36054) )
))
(declare-fun lt!491073 () Unit!36053)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!200 (array!71130 array!71132 (_ BitVec 32) (_ BitVec 32) V!41305 V!41305 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36053)

(assert (=> b!1098062 (= lt!491073 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!200 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4175 (array!71130 array!71132 (_ BitVec 32) (_ BitVec 32) V!41305 V!41305 (_ BitVec 32) Int) ListLongMap!15349)

(assert (=> b!1098062 (= lt!491070 (getCurrentListMapNoExtraKeys!4175 lt!491068 lt!491069 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2306 (Int (_ BitVec 64)) V!41305)

(assert (=> b!1098062 (= lt!491069 (array!71133 (store (arr!34232 _values!874) i!650 (ValueCellFull!12857 (dynLambda!2306 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34769 _values!874)))))

(assert (=> b!1098062 (= lt!491066 (getCurrentListMapNoExtraKeys!4175 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1098062 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!491067 () Unit!36053)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71130 (_ BitVec 64) (_ BitVec 32)) Unit!36053)

(assert (=> b!1098062 (= lt!491067 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1098063 () Bool)

(declare-fun res!732924 () Bool)

(assert (=> b!1098063 (=> (not res!732924) (not e!626760))))

(assert (=> b!1098063 (= res!732924 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34768 _keys!1070))))))

(declare-fun res!732923 () Bool)

(assert (=> start!96592 (=> (not res!732923) (not e!626760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96592 (= res!732923 (validMask!0 mask!1414))))

(assert (=> start!96592 e!626760))

(assert (=> start!96592 tp!81182))

(assert (=> start!96592 true))

(assert (=> start!96592 tp_is_empty!27133))

(declare-fun array_inv!26228 (array!71130) Bool)

(assert (=> start!96592 (array_inv!26228 _keys!1070)))

(declare-fun e!626757 () Bool)

(declare-fun array_inv!26229 (array!71132) Bool)

(assert (=> start!96592 (and (array_inv!26229 _values!874) e!626757)))

(declare-fun b!1098064 () Bool)

(declare-fun res!732930 () Bool)

(assert (=> b!1098064 (=> (not res!732930) (not e!626760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098064 (= res!732930 (validKeyInArray!0 k!904))))

(declare-fun b!1098065 () Bool)

(declare-fun res!732932 () Bool)

(assert (=> b!1098065 (=> (not res!732932) (not e!626760))))

(assert (=> b!1098065 (= res!732932 (= (select (arr!34231 _keys!1070) i!650) k!904))))

(declare-fun b!1098066 () Bool)

(declare-fun mapRes!42466 () Bool)

(assert (=> b!1098066 (= e!626757 (and e!626759 mapRes!42466))))

(declare-fun condMapEmpty!42466 () Bool)

(declare-fun mapDefault!42466 () ValueCell!12857)

