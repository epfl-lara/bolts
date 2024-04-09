; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96334 () Bool)

(assert start!96334)

(declare-fun b!1094294 () Bool)

(declare-fun e!624789 () Bool)

(declare-fun tp_is_empty!26953 () Bool)

(assert (=> b!1094294 (= e!624789 tp_is_empty!26953)))

(declare-fun b!1094295 () Bool)

(declare-fun e!624786 () Bool)

(declare-fun mapRes!42184 () Bool)

(assert (=> b!1094295 (= e!624786 (and e!624789 mapRes!42184))))

(declare-fun condMapEmpty!42184 () Bool)

(declare-datatypes ((V!41065 0))(
  ( (V!41066 (val!13533 Int)) )
))
(declare-datatypes ((ValueCell!12767 0))(
  ( (ValueCellFull!12767 (v!16155 V!41065)) (EmptyCell!12767) )
))
(declare-datatypes ((array!70778 0))(
  ( (array!70779 (arr!34059 (Array (_ BitVec 32) ValueCell!12767)) (size!34596 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70778)

(declare-fun mapDefault!42184 () ValueCell!12767)

