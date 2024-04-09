; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95686 () Bool)

(assert start!95686)

(declare-fun b_free!22303 () Bool)

(declare-fun b_next!22303 () Bool)

(assert (=> start!95686 (= b_free!22303 (not b_next!22303))))

(declare-fun tp!78759 () Bool)

(declare-fun b_and!35299 () Bool)

(assert (=> start!95686 (= tp!78759 b_and!35299)))

(declare-fun b!1080919 () Bool)

(declare-fun e!617918 () Bool)

(declare-fun e!617921 () Bool)

(assert (=> b!1080919 (= e!617918 e!617921)))

(declare-fun res!720551 () Bool)

(assert (=> b!1080919 (=> (not res!720551) (not e!617921))))

(declare-datatypes ((array!69514 0))(
  ( (array!69515 (arr!33427 (Array (_ BitVec 32) (_ BitVec 64))) (size!33964 (_ BitVec 32))) )
))
(declare-fun lt!479131 () array!69514)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69514 (_ BitVec 32)) Bool)

(assert (=> b!1080919 (= res!720551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479131 mask!1414))))

(declare-fun _keys!1070 () array!69514)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080919 (= lt!479131 (array!69515 (store (arr!33427 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33964 _keys!1070)))))

(declare-fun b!1080920 () Bool)

(declare-fun res!720552 () Bool)

(assert (=> b!1080920 (=> (not res!720552) (not e!617918))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1080920 (= res!720552 (= (select (arr!33427 _keys!1070) i!650) k!904))))

(declare-fun b!1080921 () Bool)

(declare-fun res!720546 () Bool)

(assert (=> b!1080921 (=> (not res!720546) (not e!617918))))

(assert (=> b!1080921 (= res!720546 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33964 _keys!1070))))))

(declare-fun b!1080922 () Bool)

(declare-fun e!617920 () Bool)

(declare-fun tp_is_empty!26305 () Bool)

(assert (=> b!1080922 (= e!617920 tp_is_empty!26305)))

(declare-fun mapIsEmpty!41212 () Bool)

(declare-fun mapRes!41212 () Bool)

(assert (=> mapIsEmpty!41212 mapRes!41212))

(declare-fun b!1080923 () Bool)

(declare-fun res!720549 () Bool)

(assert (=> b!1080923 (=> (not res!720549) (not e!617918))))

(assert (=> b!1080923 (= res!720549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41212 () Bool)

(declare-fun tp!78758 () Bool)

(assert (=> mapNonEmpty!41212 (= mapRes!41212 (and tp!78758 e!617920))))

(declare-datatypes ((V!40201 0))(
  ( (V!40202 (val!13209 Int)) )
))
(declare-datatypes ((ValueCell!12443 0))(
  ( (ValueCellFull!12443 (v!15831 V!40201)) (EmptyCell!12443) )
))
(declare-datatypes ((array!69516 0))(
  ( (array!69517 (arr!33428 (Array (_ BitVec 32) ValueCell!12443)) (size!33965 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69516)

(declare-fun mapValue!41212 () ValueCell!12443)

(declare-fun mapRest!41212 () (Array (_ BitVec 32) ValueCell!12443))

(declare-fun mapKey!41212 () (_ BitVec 32))

(assert (=> mapNonEmpty!41212 (= (arr!33428 _values!874) (store mapRest!41212 mapKey!41212 mapValue!41212))))

(declare-fun b!1080924 () Bool)

(declare-fun e!617922 () Bool)

(assert (=> b!1080924 (= e!617922 tp_is_empty!26305)))

(declare-fun b!1080925 () Bool)

(declare-fun res!720548 () Bool)

(assert (=> b!1080925 (=> (not res!720548) (not e!617921))))

(declare-datatypes ((List!23427 0))(
  ( (Nil!23424) (Cons!23423 (h!24632 (_ BitVec 64)) (t!32795 List!23427)) )
))
(declare-fun arrayNoDuplicates!0 (array!69514 (_ BitVec 32) List!23427) Bool)

(assert (=> b!1080925 (= res!720548 (arrayNoDuplicates!0 lt!479131 #b00000000000000000000000000000000 Nil!23424))))

(declare-fun b!1080926 () Bool)

(declare-fun res!720553 () Bool)

(assert (=> b!1080926 (=> (not res!720553) (not e!617918))))

(assert (=> b!1080926 (= res!720553 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23424))))

(declare-fun b!1080928 () Bool)

(assert (=> b!1080928 (= e!617921 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40201)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40201)

(declare-datatypes ((tuple2!16802 0))(
  ( (tuple2!16803 (_1!8411 (_ BitVec 64)) (_2!8411 V!40201)) )
))
(declare-datatypes ((List!23428 0))(
  ( (Nil!23425) (Cons!23424 (h!24633 tuple2!16802) (t!32796 List!23428)) )
))
(declare-datatypes ((ListLongMap!14783 0))(
  ( (ListLongMap!14784 (toList!7407 List!23428)) )
))
(declare-fun lt!479129 () ListLongMap!14783)

(declare-fun getCurrentListMapNoExtraKeys!3918 (array!69514 array!69516 (_ BitVec 32) (_ BitVec 32) V!40201 V!40201 (_ BitVec 32) Int) ListLongMap!14783)

(declare-fun dynLambda!2054 (Int (_ BitVec 64)) V!40201)

(assert (=> b!1080928 (= lt!479129 (getCurrentListMapNoExtraKeys!3918 lt!479131 (array!69517 (store (arr!33428 _values!874) i!650 (ValueCellFull!12443 (dynLambda!2054 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33965 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479130 () ListLongMap!14783)

(assert (=> b!1080928 (= lt!479130 (getCurrentListMapNoExtraKeys!3918 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080928 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35493 0))(
  ( (Unit!35494) )
))
(declare-fun lt!479132 () Unit!35493)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69514 (_ BitVec 64) (_ BitVec 32)) Unit!35493)

(assert (=> b!1080928 (= lt!479132 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080929 () Bool)

(declare-fun res!720547 () Bool)

(assert (=> b!1080929 (=> (not res!720547) (not e!617918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080929 (= res!720547 (validKeyInArray!0 k!904))))

(declare-fun b!1080930 () Bool)

(declare-fun res!720550 () Bool)

(assert (=> b!1080930 (=> (not res!720550) (not e!617918))))

(assert (=> b!1080930 (= res!720550 (and (= (size!33965 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33964 _keys!1070) (size!33965 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!720554 () Bool)

(assert (=> start!95686 (=> (not res!720554) (not e!617918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95686 (= res!720554 (validMask!0 mask!1414))))

(assert (=> start!95686 e!617918))

(assert (=> start!95686 tp!78759))

(assert (=> start!95686 true))

(assert (=> start!95686 tp_is_empty!26305))

(declare-fun array_inv!25670 (array!69514) Bool)

(assert (=> start!95686 (array_inv!25670 _keys!1070)))

(declare-fun e!617923 () Bool)

(declare-fun array_inv!25671 (array!69516) Bool)

(assert (=> start!95686 (and (array_inv!25671 _values!874) e!617923)))

(declare-fun b!1080927 () Bool)

(assert (=> b!1080927 (= e!617923 (and e!617922 mapRes!41212))))

(declare-fun condMapEmpty!41212 () Bool)

(declare-fun mapDefault!41212 () ValueCell!12443)

