; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96256 () Bool)

(assert start!96256)

(declare-fun b_free!22873 () Bool)

(declare-fun b_next!22873 () Bool)

(assert (=> start!96256 (= b_free!22873 (not b_next!22873))))

(declare-fun tp!80469 () Bool)

(declare-fun b_and!36439 () Bool)

(assert (=> start!96256 (= tp!80469 b_and!36439)))

(declare-fun mapNonEmpty!42067 () Bool)

(declare-fun mapRes!42067 () Bool)

(declare-fun tp!80468 () Bool)

(declare-fun e!624087 () Bool)

(assert (=> mapNonEmpty!42067 (= mapRes!42067 (and tp!80468 e!624087))))

(declare-datatypes ((V!40961 0))(
  ( (V!40962 (val!13494 Int)) )
))
(declare-datatypes ((ValueCell!12728 0))(
  ( (ValueCellFull!12728 (v!16116 V!40961)) (EmptyCell!12728) )
))
(declare-datatypes ((array!70624 0))(
  ( (array!70625 (arr!33982 (Array (_ BitVec 32) ValueCell!12728)) (size!34519 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70624)

(declare-fun mapKey!42067 () (_ BitVec 32))

(declare-fun mapRest!42067 () (Array (_ BitVec 32) ValueCell!12728))

(declare-fun mapValue!42067 () ValueCell!12728)

(assert (=> mapNonEmpty!42067 (= (arr!33982 _values!874) (store mapRest!42067 mapKey!42067 mapValue!42067))))

(declare-fun b!1092811 () Bool)

(declare-fun res!729303 () Bool)

(declare-fun e!624086 () Bool)

(assert (=> b!1092811 (=> (not res!729303) (not e!624086))))

(declare-datatypes ((array!70626 0))(
  ( (array!70627 (arr!33983 (Array (_ BitVec 32) (_ BitVec 64))) (size!34520 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70626)

(declare-datatypes ((List!23875 0))(
  ( (Nil!23872) (Cons!23871 (h!25080 (_ BitVec 64)) (t!33813 List!23875)) )
))
(declare-fun arrayNoDuplicates!0 (array!70626 (_ BitVec 32) List!23875) Bool)

(assert (=> b!1092811 (= res!729303 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23872))))

(declare-fun mapIsEmpty!42067 () Bool)

(assert (=> mapIsEmpty!42067 mapRes!42067))

(declare-fun b!1092812 () Bool)

(declare-fun e!624085 () Bool)

(declare-fun e!624083 () Bool)

(assert (=> b!1092812 (= e!624085 (and e!624083 mapRes!42067))))

(declare-fun condMapEmpty!42067 () Bool)

(declare-fun mapDefault!42067 () ValueCell!12728)

