; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96352 () Bool)

(assert start!96352)

(declare-fun b!1094505 () Bool)

(declare-fun res!730489 () Bool)

(declare-fun e!624927 () Bool)

(assert (=> b!1094505 (=> (not res!730489) (not e!624927))))

(declare-datatypes ((array!70810 0))(
  ( (array!70811 (arr!34075 (Array (_ BitVec 32) (_ BitVec 64))) (size!34612 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70810)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70810 (_ BitVec 32)) Bool)

(assert (=> b!1094505 (= res!730489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!730491 () Bool)

(assert (=> start!96352 (=> (not res!730491) (not e!624927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96352 (= res!730491 (validMask!0 mask!1414))))

(assert (=> start!96352 e!624927))

(assert (=> start!96352 true))

(declare-fun array_inv!26110 (array!70810) Bool)

(assert (=> start!96352 (array_inv!26110 _keys!1070)))

(declare-datatypes ((V!41089 0))(
  ( (V!41090 (val!13542 Int)) )
))
(declare-datatypes ((ValueCell!12776 0))(
  ( (ValueCellFull!12776 (v!16164 V!41089)) (EmptyCell!12776) )
))
(declare-datatypes ((array!70812 0))(
  ( (array!70813 (arr!34076 (Array (_ BitVec 32) ValueCell!12776)) (size!34613 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70812)

(declare-fun e!624930 () Bool)

(declare-fun array_inv!26111 (array!70812) Bool)

(assert (=> start!96352 (and (array_inv!26111 _values!874) e!624930)))

(declare-fun b!1094506 () Bool)

(declare-fun e!624931 () Bool)

(declare-fun tp_is_empty!26971 () Bool)

(assert (=> b!1094506 (= e!624931 tp_is_empty!26971)))

(declare-fun b!1094507 () Bool)

(declare-fun e!624929 () Bool)

(declare-fun mapRes!42211 () Bool)

(assert (=> b!1094507 (= e!624930 (and e!624929 mapRes!42211))))

(declare-fun condMapEmpty!42211 () Bool)

(declare-fun mapDefault!42211 () ValueCell!12776)

