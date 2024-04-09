; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96074 () Bool)

(assert start!96074)

(declare-fun b_free!22691 () Bool)

(declare-fun b_next!22691 () Bool)

(assert (=> start!96074 (= b_free!22691 (not b_next!22691))))

(declare-fun tp!79922 () Bool)

(declare-fun b_and!36075 () Bool)

(assert (=> start!96074 (= tp!79922 b_and!36075)))

(declare-fun b!1088892 () Bool)

(declare-fun e!621999 () Bool)

(declare-fun e!621996 () Bool)

(assert (=> b!1088892 (= e!621999 e!621996)))

(declare-fun res!726386 () Bool)

(assert (=> b!1088892 (=> (not res!726386) (not e!621996))))

(declare-datatypes ((array!70278 0))(
  ( (array!70279 (arr!33809 (Array (_ BitVec 32) (_ BitVec 64))) (size!34346 (_ BitVec 32))) )
))
(declare-fun lt!485224 () array!70278)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70278 (_ BitVec 32)) Bool)

(assert (=> b!1088892 (= res!726386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485224 mask!1414))))

(declare-fun _keys!1070 () array!70278)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088892 (= lt!485224 (array!70279 (store (arr!33809 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34346 _keys!1070)))))

(declare-fun b!1088894 () Bool)

(declare-fun res!726392 () Bool)

(assert (=> b!1088894 (=> (not res!726392) (not e!621999))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40717 0))(
  ( (V!40718 (val!13403 Int)) )
))
(declare-datatypes ((ValueCell!12637 0))(
  ( (ValueCellFull!12637 (v!16025 V!40717)) (EmptyCell!12637) )
))
(declare-datatypes ((array!70280 0))(
  ( (array!70281 (arr!33810 (Array (_ BitVec 32) ValueCell!12637)) (size!34347 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70280)

(assert (=> b!1088894 (= res!726392 (and (= (size!34347 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34346 _keys!1070) (size!34347 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088895 () Bool)

(declare-fun res!726385 () Bool)

(assert (=> b!1088895 (=> (not res!726385) (not e!621999))))

(declare-datatypes ((List!23735 0))(
  ( (Nil!23732) (Cons!23731 (h!24940 (_ BitVec 64)) (t!33491 List!23735)) )
))
(declare-fun arrayNoDuplicates!0 (array!70278 (_ BitVec 32) List!23735) Bool)

(assert (=> b!1088895 (= res!726385 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23732))))

(declare-fun b!1088896 () Bool)

(declare-fun res!726388 () Bool)

(assert (=> b!1088896 (=> (not res!726388) (not e!621999))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088896 (= res!726388 (validKeyInArray!0 k!904))))

(declare-fun b!1088897 () Bool)

(declare-fun e!622000 () Bool)

(declare-fun e!621995 () Bool)

(assert (=> b!1088897 (= e!622000 e!621995)))

(declare-fun res!726391 () Bool)

(assert (=> b!1088897 (=> res!726391 e!621995)))

(assert (=> b!1088897 (= res!726391 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17096 0))(
  ( (tuple2!17097 (_1!8558 (_ BitVec 64)) (_2!8558 V!40717)) )
))
(declare-datatypes ((List!23736 0))(
  ( (Nil!23733) (Cons!23732 (h!24941 tuple2!17096) (t!33492 List!23736)) )
))
(declare-datatypes ((ListLongMap!15077 0))(
  ( (ListLongMap!15078 (toList!7554 List!23736)) )
))
(declare-fun lt!485229 () ListLongMap!15077)

(declare-fun lt!485221 () ListLongMap!15077)

(assert (=> b!1088897 (= lt!485229 lt!485221)))

(declare-fun lt!485227 () ListLongMap!15077)

(declare-fun lt!485230 () tuple2!17096)

(declare-fun +!3270 (ListLongMap!15077 tuple2!17096) ListLongMap!15077)

(assert (=> b!1088897 (= lt!485221 (+!3270 lt!485227 lt!485230))))

(declare-fun lt!485226 () ListLongMap!15077)

(declare-fun lt!485219 () ListLongMap!15077)

(assert (=> b!1088897 (= lt!485226 lt!485219)))

(declare-fun lt!485220 () ListLongMap!15077)

(assert (=> b!1088897 (= lt!485219 (+!3270 lt!485220 lt!485230))))

(declare-fun lt!485228 () ListLongMap!15077)

(assert (=> b!1088897 (= lt!485229 (+!3270 lt!485228 lt!485230))))

(declare-fun zeroValue!831 () V!40717)

(assert (=> b!1088897 (= lt!485230 (tuple2!17097 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088898 () Bool)

(declare-fun e!621998 () Bool)

(declare-fun e!621993 () Bool)

(declare-fun mapRes!41794 () Bool)

(assert (=> b!1088898 (= e!621998 (and e!621993 mapRes!41794))))

(declare-fun condMapEmpty!41794 () Bool)

(declare-fun mapDefault!41794 () ValueCell!12637)

