; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95894 () Bool)

(assert start!95894)

(declare-fun b_free!22511 () Bool)

(declare-fun b_next!22511 () Bool)

(assert (=> start!95894 (= b_free!22511 (not b_next!22511))))

(declare-fun tp!79383 () Bool)

(declare-fun b_and!35715 () Bool)

(assert (=> start!95894 (= tp!79383 b_and!35715)))

(declare-fun b!1084924 () Bool)

(declare-fun res!723416 () Bool)

(declare-fun e!619839 () Bool)

(assert (=> b!1084924 (=> (not res!723416) (not e!619839))))

(declare-datatypes ((array!69928 0))(
  ( (array!69929 (arr!33634 (Array (_ BitVec 32) (_ BitVec 64))) (size!34171 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69928)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084924 (= res!723416 (= (select (arr!33634 _keys!1070) i!650) k!904))))

(declare-fun b!1084925 () Bool)

(declare-fun e!619833 () Bool)

(declare-fun tp_is_empty!26513 () Bool)

(assert (=> b!1084925 (= e!619833 tp_is_empty!26513)))

(declare-fun mapIsEmpty!41524 () Bool)

(declare-fun mapRes!41524 () Bool)

(assert (=> mapIsEmpty!41524 mapRes!41524))

(declare-fun b!1084926 () Bool)

(declare-fun res!723411 () Bool)

(assert (=> b!1084926 (=> (not res!723411) (not e!619839))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69928 (_ BitVec 32)) Bool)

(assert (=> b!1084926 (= res!723411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084927 () Bool)

(declare-fun res!723410 () Bool)

(assert (=> b!1084927 (=> (not res!723410) (not e!619839))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084927 (= res!723410 (validKeyInArray!0 k!904))))

(declare-fun b!1084928 () Bool)

(declare-fun e!619837 () Bool)

(declare-fun e!619834 () Bool)

(assert (=> b!1084928 (= e!619837 (not e!619834))))

(declare-fun res!723409 () Bool)

(assert (=> b!1084928 (=> res!723409 e!619834)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084928 (= res!723409 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40477 0))(
  ( (V!40478 (val!13313 Int)) )
))
(declare-fun minValue!831 () V!40477)

(declare-datatypes ((tuple2!16942 0))(
  ( (tuple2!16943 (_1!8481 (_ BitVec 64)) (_2!8481 V!40477)) )
))
(declare-datatypes ((List!23584 0))(
  ( (Nil!23581) (Cons!23580 (h!24789 tuple2!16942) (t!33160 List!23584)) )
))
(declare-datatypes ((ListLongMap!14923 0))(
  ( (ListLongMap!14924 (toList!7477 List!23584)) )
))
(declare-fun lt!481120 () ListLongMap!14923)

(declare-fun zeroValue!831 () V!40477)

(declare-datatypes ((ValueCell!12547 0))(
  ( (ValueCellFull!12547 (v!15935 V!40477)) (EmptyCell!12547) )
))
(declare-datatypes ((array!69930 0))(
  ( (array!69931 (arr!33635 (Array (_ BitVec 32) ValueCell!12547)) (size!34172 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69930)

(declare-fun getCurrentListMap!4234 (array!69928 array!69930 (_ BitVec 32) (_ BitVec 32) V!40477 V!40477 (_ BitVec 32) Int) ListLongMap!14923)

(assert (=> b!1084928 (= lt!481120 (getCurrentListMap!4234 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481122 () array!69930)

(declare-fun lt!481123 () ListLongMap!14923)

(declare-fun lt!481134 () array!69928)

(assert (=> b!1084928 (= lt!481123 (getCurrentListMap!4234 lt!481134 lt!481122 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481128 () ListLongMap!14923)

(declare-fun lt!481135 () ListLongMap!14923)

(assert (=> b!1084928 (and (= lt!481128 lt!481135) (= lt!481135 lt!481128))))

(declare-fun lt!481132 () ListLongMap!14923)

(declare-fun -!758 (ListLongMap!14923 (_ BitVec 64)) ListLongMap!14923)

(assert (=> b!1084928 (= lt!481135 (-!758 lt!481132 k!904))))

(declare-datatypes ((Unit!35631 0))(
  ( (Unit!35632) )
))
(declare-fun lt!481126 () Unit!35631)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!40 (array!69928 array!69930 (_ BitVec 32) (_ BitVec 32) V!40477 V!40477 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35631)

(assert (=> b!1084928 (= lt!481126 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!40 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3986 (array!69928 array!69930 (_ BitVec 32) (_ BitVec 32) V!40477 V!40477 (_ BitVec 32) Int) ListLongMap!14923)

(assert (=> b!1084928 (= lt!481128 (getCurrentListMapNoExtraKeys!3986 lt!481134 lt!481122 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2122 (Int (_ BitVec 64)) V!40477)

(assert (=> b!1084928 (= lt!481122 (array!69931 (store (arr!33635 _values!874) i!650 (ValueCellFull!12547 (dynLambda!2122 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34172 _values!874)))))

(assert (=> b!1084928 (= lt!481132 (getCurrentListMapNoExtraKeys!3986 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084928 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481124 () Unit!35631)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69928 (_ BitVec 64) (_ BitVec 32)) Unit!35631)

(assert (=> b!1084928 (= lt!481124 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1084929 () Bool)

(declare-fun e!619836 () Bool)

(assert (=> b!1084929 (= e!619834 e!619836)))

(declare-fun res!723414 () Bool)

(assert (=> b!1084929 (=> res!723414 e!619836)))

(assert (=> b!1084929 (= res!723414 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!481127 () ListLongMap!14923)

(declare-fun lt!481121 () ListLongMap!14923)

(assert (=> b!1084929 (= lt!481127 lt!481121)))

(declare-fun lt!481130 () ListLongMap!14923)

(assert (=> b!1084929 (= lt!481127 (-!758 lt!481130 k!904))))

(declare-fun lt!481125 () Unit!35631)

(declare-fun addRemoveCommutativeForDiffKeys!5 (ListLongMap!14923 (_ BitVec 64) V!40477 (_ BitVec 64)) Unit!35631)

(assert (=> b!1084929 (= lt!481125 (addRemoveCommutativeForDiffKeys!5 lt!481132 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!481136 () tuple2!16942)

(declare-fun +!3209 (ListLongMap!14923 tuple2!16942) ListLongMap!14923)

(assert (=> b!1084929 (= lt!481123 (+!3209 lt!481121 lt!481136))))

(declare-fun lt!481129 () tuple2!16942)

(assert (=> b!1084929 (= lt!481121 (+!3209 lt!481135 lt!481129))))

(declare-fun lt!481131 () ListLongMap!14923)

(assert (=> b!1084929 (= lt!481120 lt!481131)))

(assert (=> b!1084929 (= lt!481131 (+!3209 lt!481130 lt!481136))))

(assert (=> b!1084929 (= lt!481130 (+!3209 lt!481132 lt!481129))))

(assert (=> b!1084929 (= lt!481123 (+!3209 (+!3209 lt!481128 lt!481129) lt!481136))))

(assert (=> b!1084929 (= lt!481136 (tuple2!16943 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1084929 (= lt!481129 (tuple2!16943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1084930 () Bool)

(declare-fun e!619835 () Bool)

(assert (=> b!1084930 (= e!619835 tp_is_empty!26513)))

(declare-fun b!1084931 () Bool)

(declare-fun res!723415 () Bool)

(assert (=> b!1084931 (=> (not res!723415) (not e!619839))))

(declare-datatypes ((List!23585 0))(
  ( (Nil!23582) (Cons!23581 (h!24790 (_ BitVec 64)) (t!33161 List!23585)) )
))
(declare-fun arrayNoDuplicates!0 (array!69928 (_ BitVec 32) List!23585) Bool)

(assert (=> b!1084931 (= res!723415 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23582))))

(declare-fun b!1084932 () Bool)

(declare-fun res!723406 () Bool)

(assert (=> b!1084932 (=> (not res!723406) (not e!619837))))

(assert (=> b!1084932 (= res!723406 (arrayNoDuplicates!0 lt!481134 #b00000000000000000000000000000000 Nil!23582))))

(declare-fun mapNonEmpty!41524 () Bool)

(declare-fun tp!79382 () Bool)

(assert (=> mapNonEmpty!41524 (= mapRes!41524 (and tp!79382 e!619835))))

(declare-fun mapValue!41524 () ValueCell!12547)

(declare-fun mapRest!41524 () (Array (_ BitVec 32) ValueCell!12547))

(declare-fun mapKey!41524 () (_ BitVec 32))

(assert (=> mapNonEmpty!41524 (= (arr!33635 _values!874) (store mapRest!41524 mapKey!41524 mapValue!41524))))

(declare-fun b!1084933 () Bool)

(declare-fun res!723408 () Bool)

(assert (=> b!1084933 (=> (not res!723408) (not e!619839))))

(assert (=> b!1084933 (= res!723408 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34171 _keys!1070))))))

(declare-fun b!1084934 () Bool)

(declare-fun e!619840 () Bool)

(assert (=> b!1084934 (= e!619840 (and e!619833 mapRes!41524))))

(declare-fun condMapEmpty!41524 () Bool)

(declare-fun mapDefault!41524 () ValueCell!12547)

