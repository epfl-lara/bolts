; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96590 () Bool)

(assert start!96590)

(declare-fun b_free!23081 () Bool)

(declare-fun b_next!23081 () Bool)

(assert (=> start!96590 (= b_free!23081 (not b_next!23081))))

(declare-fun tp!81177 () Bool)

(declare-fun b_and!36871 () Bool)

(assert (=> start!96590 (= tp!81177 b_and!36871)))

(declare-fun mapIsEmpty!42463 () Bool)

(declare-fun mapRes!42463 () Bool)

(assert (=> mapIsEmpty!42463 mapRes!42463))

(declare-fun b!1098010 () Bool)

(declare-fun e!626731 () Bool)

(declare-fun e!626732 () Bool)

(assert (=> b!1098010 (= e!626731 (not e!626732))))

(declare-fun res!732890 () Bool)

(assert (=> b!1098010 (=> res!732890 e!626732)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098010 (= res!732890 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!41301 0))(
  ( (V!41302 (val!13622 Int)) )
))
(declare-fun minValue!831 () V!41301)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17366 0))(
  ( (tuple2!17367 (_1!8693 (_ BitVec 64)) (_2!8693 V!41301)) )
))
(declare-datatypes ((List!24044 0))(
  ( (Nil!24041) (Cons!24040 (h!25249 tuple2!17366) (t!34178 List!24044)) )
))
(declare-datatypes ((ListLongMap!15347 0))(
  ( (ListLongMap!15348 (toList!7689 List!24044)) )
))
(declare-fun lt!491033 () ListLongMap!15347)

(declare-fun zeroValue!831 () V!41301)

(declare-datatypes ((array!71126 0))(
  ( (array!71127 (arr!34229 (Array (_ BitVec 32) (_ BitVec 64))) (size!34766 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71126)

(declare-datatypes ((ValueCell!12856 0))(
  ( (ValueCellFull!12856 (v!16246 V!41301)) (EmptyCell!12856) )
))
(declare-datatypes ((array!71128 0))(
  ( (array!71129 (arr!34230 (Array (_ BitVec 32) ValueCell!12856)) (size!34767 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71128)

(declare-fun getCurrentListMap!4387 (array!71126 array!71128 (_ BitVec 32) (_ BitVec 32) V!41301 V!41301 (_ BitVec 32) Int) ListLongMap!15347)

(assert (=> b!1098010 (= lt!491033 (getCurrentListMap!4387 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491038 () array!71128)

(declare-fun lt!491031 () ListLongMap!15347)

(declare-fun lt!491040 () array!71126)

(assert (=> b!1098010 (= lt!491031 (getCurrentListMap!4387 lt!491040 lt!491038 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491032 () ListLongMap!15347)

(declare-fun lt!491041 () ListLongMap!15347)

(assert (=> b!1098010 (and (= lt!491032 lt!491041) (= lt!491041 lt!491032))))

(declare-fun lt!491034 () ListLongMap!15347)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!934 (ListLongMap!15347 (_ BitVec 64)) ListLongMap!15347)

(assert (=> b!1098010 (= lt!491041 (-!934 lt!491034 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36051 0))(
  ( (Unit!36052) )
))
(declare-fun lt!491036 () Unit!36051)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!199 (array!71126 array!71128 (_ BitVec 32) (_ BitVec 32) V!41301 V!41301 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36051)

(assert (=> b!1098010 (= lt!491036 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!199 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4174 (array!71126 array!71128 (_ BitVec 32) (_ BitVec 32) V!41301 V!41301 (_ BitVec 32) Int) ListLongMap!15347)

(assert (=> b!1098010 (= lt!491032 (getCurrentListMapNoExtraKeys!4174 lt!491040 lt!491038 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2305 (Int (_ BitVec 64)) V!41301)

(assert (=> b!1098010 (= lt!491038 (array!71129 (store (arr!34230 _values!874) i!650 (ValueCellFull!12856 (dynLambda!2305 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34767 _values!874)))))

(assert (=> b!1098010 (= lt!491034 (getCurrentListMapNoExtraKeys!4174 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1098010 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!491039 () Unit!36051)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71126 (_ BitVec 64) (_ BitVec 32)) Unit!36051)

(assert (=> b!1098010 (= lt!491039 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1098011 () Bool)

(declare-fun e!626730 () Bool)

(declare-fun tp_is_empty!27131 () Bool)

(assert (=> b!1098011 (= e!626730 tp_is_empty!27131)))

(declare-fun b!1098012 () Bool)

(declare-fun res!732893 () Bool)

(declare-fun e!626733 () Bool)

(assert (=> b!1098012 (=> (not res!732893) (not e!626733))))

(assert (=> b!1098012 (= res!732893 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34766 _keys!1070))))))

(declare-fun res!732887 () Bool)

(assert (=> start!96590 (=> (not res!732887) (not e!626733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96590 (= res!732887 (validMask!0 mask!1414))))

(assert (=> start!96590 e!626733))

(assert (=> start!96590 tp!81177))

(assert (=> start!96590 true))

(assert (=> start!96590 tp_is_empty!27131))

(declare-fun array_inv!26226 (array!71126) Bool)

(assert (=> start!96590 (array_inv!26226 _keys!1070)))

(declare-fun e!626737 () Bool)

(declare-fun array_inv!26227 (array!71128) Bool)

(assert (=> start!96590 (and (array_inv!26227 _values!874) e!626737)))

(declare-fun b!1098013 () Bool)

(declare-fun res!732895 () Bool)

(assert (=> b!1098013 (=> (not res!732895) (not e!626733))))

(assert (=> b!1098013 (= res!732895 (= (select (arr!34229 _keys!1070) i!650) k!904))))

(declare-fun e!626734 () Bool)

(declare-fun lt!491035 () tuple2!17366)

(declare-fun b!1098014 () Bool)

(declare-fun lt!491037 () tuple2!17366)

(declare-fun +!3324 (ListLongMap!15347 tuple2!17366) ListLongMap!15347)

(assert (=> b!1098014 (= e!626734 (= lt!491033 (+!3324 (+!3324 lt!491034 lt!491035) lt!491037)))))

(declare-fun b!1098015 () Bool)

(declare-fun res!732892 () Bool)

(assert (=> b!1098015 (=> (not res!732892) (not e!626731))))

(declare-datatypes ((List!24045 0))(
  ( (Nil!24042) (Cons!24041 (h!25250 (_ BitVec 64)) (t!34179 List!24045)) )
))
(declare-fun arrayNoDuplicates!0 (array!71126 (_ BitVec 32) List!24045) Bool)

(assert (=> b!1098015 (= res!732892 (arrayNoDuplicates!0 lt!491040 #b00000000000000000000000000000000 Nil!24042))))

(declare-fun b!1098016 () Bool)

(declare-fun res!732891 () Bool)

(assert (=> b!1098016 (=> (not res!732891) (not e!626733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71126 (_ BitVec 32)) Bool)

(assert (=> b!1098016 (= res!732891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1098017 () Bool)

(assert (=> b!1098017 (= e!626733 e!626731)))

(declare-fun res!732888 () Bool)

(assert (=> b!1098017 (=> (not res!732888) (not e!626731))))

(assert (=> b!1098017 (= res!732888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491040 mask!1414))))

(assert (=> b!1098017 (= lt!491040 (array!71127 (store (arr!34229 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34766 _keys!1070)))))

(declare-fun b!1098018 () Bool)

(declare-fun res!732894 () Bool)

(assert (=> b!1098018 (=> (not res!732894) (not e!626733))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098018 (= res!732894 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!42463 () Bool)

(declare-fun tp!81176 () Bool)

(assert (=> mapNonEmpty!42463 (= mapRes!42463 (and tp!81176 e!626730))))

(declare-fun mapKey!42463 () (_ BitVec 32))

(declare-fun mapValue!42463 () ValueCell!12856)

(declare-fun mapRest!42463 () (Array (_ BitVec 32) ValueCell!12856))

(assert (=> mapNonEmpty!42463 (= (arr!34230 _values!874) (store mapRest!42463 mapKey!42463 mapValue!42463))))

(declare-fun b!1098019 () Bool)

(declare-fun res!732889 () Bool)

(assert (=> b!1098019 (=> (not res!732889) (not e!626733))))

(assert (=> b!1098019 (= res!732889 (and (= (size!34767 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34766 _keys!1070) (size!34767 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1098020 () Bool)

(assert (=> b!1098020 (= e!626732 (= lt!491031 (+!3324 (+!3324 lt!491041 lt!491035) lt!491037)))))

(assert (=> b!1098020 e!626734))

(declare-fun res!732886 () Bool)

(assert (=> b!1098020 (=> (not res!732886) (not e!626734))))

(assert (=> b!1098020 (= res!732886 (= lt!491031 (+!3324 (+!3324 lt!491032 lt!491035) lt!491037)))))

(assert (=> b!1098020 (= lt!491037 (tuple2!17367 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098020 (= lt!491035 (tuple2!17367 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098021 () Bool)

(declare-fun e!626736 () Bool)

(assert (=> b!1098021 (= e!626737 (and e!626736 mapRes!42463))))

(declare-fun condMapEmpty!42463 () Bool)

(declare-fun mapDefault!42463 () ValueCell!12856)

