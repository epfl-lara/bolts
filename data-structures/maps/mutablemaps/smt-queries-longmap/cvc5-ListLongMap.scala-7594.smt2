; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95920 () Bool)

(assert start!95920)

(declare-fun b_free!22537 () Bool)

(declare-fun b_next!22537 () Bool)

(assert (=> start!95920 (= b_free!22537 (not b_next!22537))))

(declare-fun tp!79460 () Bool)

(declare-fun b_and!35767 () Bool)

(assert (=> start!95920 (= tp!79460 b_and!35767)))

(declare-fun b!1085495 () Bool)

(declare-fun e!620146 () Bool)

(declare-fun tp_is_empty!26539 () Bool)

(assert (=> b!1085495 (= e!620146 tp_is_empty!26539)))

(declare-fun b!1085496 () Bool)

(declare-fun res!723839 () Bool)

(declare-fun e!620147 () Bool)

(assert (=> b!1085496 (=> (not res!723839) (not e!620147))))

(declare-datatypes ((array!69978 0))(
  ( (array!69979 (arr!33659 (Array (_ BitVec 32) (_ BitVec 64))) (size!34196 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69978)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085496 (= res!723839 (= (select (arr!33659 _keys!1070) i!650) k!904))))

(declare-fun b!1085497 () Bool)

(declare-fun e!620151 () Bool)

(declare-fun e!620152 () Bool)

(assert (=> b!1085497 (= e!620151 (not e!620152))))

(declare-fun res!723843 () Bool)

(assert (=> b!1085497 (=> res!723843 e!620152)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085497 (= res!723843 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40513 0))(
  ( (V!40514 (val!13326 Int)) )
))
(declare-fun minValue!831 () V!40513)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12560 0))(
  ( (ValueCellFull!12560 (v!15948 V!40513)) (EmptyCell!12560) )
))
(declare-datatypes ((array!69980 0))(
  ( (array!69981 (arr!33660 (Array (_ BitVec 32) ValueCell!12560)) (size!34197 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69980)

(declare-fun zeroValue!831 () V!40513)

(declare-datatypes ((tuple2!16966 0))(
  ( (tuple2!16967 (_1!8493 (_ BitVec 64)) (_2!8493 V!40513)) )
))
(declare-datatypes ((List!23607 0))(
  ( (Nil!23604) (Cons!23603 (h!24812 tuple2!16966) (t!33209 List!23607)) )
))
(declare-datatypes ((ListLongMap!14947 0))(
  ( (ListLongMap!14948 (toList!7489 List!23607)) )
))
(declare-fun lt!481792 () ListLongMap!14947)

(declare-fun getCurrentListMap!4244 (array!69978 array!69980 (_ BitVec 32) (_ BitVec 32) V!40513 V!40513 (_ BitVec 32) Int) ListLongMap!14947)

(assert (=> b!1085497 (= lt!481792 (getCurrentListMap!4244 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481784 () ListLongMap!14947)

(declare-fun lt!481785 () array!69980)

(declare-fun lt!481799 () array!69978)

(assert (=> b!1085497 (= lt!481784 (getCurrentListMap!4244 lt!481799 lt!481785 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481790 () ListLongMap!14947)

(declare-fun lt!481789 () ListLongMap!14947)

(assert (=> b!1085497 (and (= lt!481790 lt!481789) (= lt!481789 lt!481790))))

(declare-fun lt!481787 () ListLongMap!14947)

(declare-fun -!770 (ListLongMap!14947 (_ BitVec 64)) ListLongMap!14947)

(assert (=> b!1085497 (= lt!481789 (-!770 lt!481787 k!904))))

(declare-datatypes ((Unit!35655 0))(
  ( (Unit!35656) )
))
(declare-fun lt!481796 () Unit!35655)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!50 (array!69978 array!69980 (_ BitVec 32) (_ BitVec 32) V!40513 V!40513 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35655)

(assert (=> b!1085497 (= lt!481796 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!50 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3996 (array!69978 array!69980 (_ BitVec 32) (_ BitVec 32) V!40513 V!40513 (_ BitVec 32) Int) ListLongMap!14947)

(assert (=> b!1085497 (= lt!481790 (getCurrentListMapNoExtraKeys!3996 lt!481799 lt!481785 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2132 (Int (_ BitVec 64)) V!40513)

(assert (=> b!1085497 (= lt!481785 (array!69981 (store (arr!33660 _values!874) i!650 (ValueCellFull!12560 (dynLambda!2132 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34197 _values!874)))))

(assert (=> b!1085497 (= lt!481787 (getCurrentListMapNoExtraKeys!3996 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085497 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!481795 () Unit!35655)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69978 (_ BitVec 64) (_ BitVec 32)) Unit!35655)

(assert (=> b!1085497 (= lt!481795 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1085498 () Bool)

(declare-fun res!723835 () Bool)

(assert (=> b!1085498 (=> (not res!723835) (not e!620147))))

(assert (=> b!1085498 (= res!723835 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34196 _keys!1070))))))

(declare-fun b!1085499 () Bool)

(declare-fun e!620145 () Bool)

(assert (=> b!1085499 (= e!620145 true)))

(declare-fun lt!481791 () ListLongMap!14947)

(declare-fun lt!481794 () ListLongMap!14947)

(declare-fun lt!481797 () tuple2!16966)

(declare-fun +!3220 (ListLongMap!14947 tuple2!16966) ListLongMap!14947)

(assert (=> b!1085499 (= (-!770 lt!481794 k!904) (+!3220 lt!481791 lt!481797))))

(declare-fun lt!481798 () ListLongMap!14947)

(declare-fun lt!481786 () Unit!35655)

(declare-fun addRemoveCommutativeForDiffKeys!16 (ListLongMap!14947 (_ BitVec 64) V!40513 (_ BitVec 64)) Unit!35655)

(assert (=> b!1085499 (= lt!481786 (addRemoveCommutativeForDiffKeys!16 lt!481798 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1085500 () Bool)

(declare-fun res!723838 () Bool)

(assert (=> b!1085500 (=> (not res!723838) (not e!620147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085500 (= res!723838 (validKeyInArray!0 k!904))))

(declare-fun b!1085501 () Bool)

(assert (=> b!1085501 (= e!620147 e!620151)))

(declare-fun res!723840 () Bool)

(assert (=> b!1085501 (=> (not res!723840) (not e!620151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69978 (_ BitVec 32)) Bool)

(assert (=> b!1085501 (= res!723840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481799 mask!1414))))

(assert (=> b!1085501 (= lt!481799 (array!69979 (store (arr!33659 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34196 _keys!1070)))))

(declare-fun b!1085502 () Bool)

(declare-fun e!620150 () Bool)

(declare-fun e!620149 () Bool)

(declare-fun mapRes!41563 () Bool)

(assert (=> b!1085502 (= e!620150 (and e!620149 mapRes!41563))))

(declare-fun condMapEmpty!41563 () Bool)

(declare-fun mapDefault!41563 () ValueCell!12560)

