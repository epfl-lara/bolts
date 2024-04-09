; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96338 () Bool)

(assert start!96338)

(declare-fun mapNonEmpty!42190 () Bool)

(declare-fun mapRes!42190 () Bool)

(declare-fun tp!80706 () Bool)

(declare-fun e!624823 () Bool)

(assert (=> mapNonEmpty!42190 (= mapRes!42190 (and tp!80706 e!624823))))

(declare-datatypes ((V!41069 0))(
  ( (V!41070 (val!13535 Int)) )
))
(declare-datatypes ((ValueCell!12769 0))(
  ( (ValueCellFull!12769 (v!16157 V!41069)) (EmptyCell!12769) )
))
(declare-datatypes ((array!70784 0))(
  ( (array!70785 (arr!34062 (Array (_ BitVec 32) ValueCell!12769)) (size!34599 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70784)

(declare-fun mapKey!42190 () (_ BitVec 32))

(declare-fun mapValue!42190 () ValueCell!12769)

(declare-fun mapRest!42190 () (Array (_ BitVec 32) ValueCell!12769))

(assert (=> mapNonEmpty!42190 (= (arr!34062 _values!874) (store mapRest!42190 mapKey!42190 mapValue!42190))))

(declare-fun b!1094365 () Bool)

(declare-fun res!730418 () Bool)

(declare-fun e!624822 () Bool)

(assert (=> b!1094365 (=> (not res!730418) (not e!624822))))

(declare-datatypes ((array!70786 0))(
  ( (array!70787 (arr!34063 (Array (_ BitVec 32) (_ BitVec 64))) (size!34600 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70786)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094365 (= res!730418 (= (select (arr!34063 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!42190 () Bool)

(assert (=> mapIsEmpty!42190 mapRes!42190))

(declare-fun b!1094366 () Bool)

(declare-fun res!730415 () Bool)

(assert (=> b!1094366 (=> (not res!730415) (not e!624822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094366 (= res!730415 (validKeyInArray!0 k!904))))

(declare-fun b!1094367 () Bool)

(declare-fun res!730413 () Bool)

(assert (=> b!1094367 (=> (not res!730413) (not e!624822))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70786 (_ BitVec 32)) Bool)

(assert (=> b!1094367 (= res!730413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094368 () Bool)

(declare-fun res!730417 () Bool)

(declare-fun e!624821 () Bool)

(assert (=> b!1094368 (=> (not res!730417) (not e!624821))))

(declare-fun lt!489622 () array!70786)

(declare-datatypes ((List!23935 0))(
  ( (Nil!23932) (Cons!23931 (h!25140 (_ BitVec 64)) (t!33949 List!23935)) )
))
(declare-fun arrayNoDuplicates!0 (array!70786 (_ BitVec 32) List!23935) Bool)

(assert (=> b!1094368 (= res!730417 (arrayNoDuplicates!0 lt!489622 #b00000000000000000000000000000000 Nil!23932))))

(declare-fun b!1094369 () Bool)

(declare-fun e!624826 () Bool)

(declare-fun tp_is_empty!26957 () Bool)

(assert (=> b!1094369 (= e!624826 tp_is_empty!26957)))

(declare-fun b!1094370 () Bool)

(assert (=> b!1094370 (= e!624823 tp_is_empty!26957)))

(declare-fun b!1094371 () Bool)

(declare-fun res!730412 () Bool)

(assert (=> b!1094371 (=> (not res!730412) (not e!624822))))

(assert (=> b!1094371 (= res!730412 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23932))))

(declare-fun b!1094373 () Bool)

(declare-fun e!624825 () Bool)

(assert (=> b!1094373 (= e!624825 (and e!624826 mapRes!42190))))

(declare-fun condMapEmpty!42190 () Bool)

(declare-fun mapDefault!42190 () ValueCell!12769)

