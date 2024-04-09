; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94924 () Bool)

(assert start!94924)

(declare-fun b_free!22093 () Bool)

(declare-fun b_next!22093 () Bool)

(assert (=> start!94924 (= b_free!22093 (not b_next!22093))))

(declare-fun tp!77745 () Bool)

(declare-fun b_and!34965 () Bool)

(assert (=> start!94924 (= tp!77745 b_and!34965)))

(declare-fun b!1072872 () Bool)

(declare-fun res!715707 () Bool)

(declare-fun e!612907 () Bool)

(assert (=> b!1072872 (=> (not res!715707) (not e!612907))))

(declare-datatypes ((array!68736 0))(
  ( (array!68737 (arr!33058 (Array (_ BitVec 32) (_ BitVec 64))) (size!33595 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68736)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68736 (_ BitVec 32)) Bool)

(assert (=> b!1072872 (= res!715707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072873 () Bool)

(declare-fun e!612904 () Bool)

(declare-fun e!612903 () Bool)

(declare-fun mapRes!40567 () Bool)

(assert (=> b!1072873 (= e!612904 (and e!612903 mapRes!40567))))

(declare-fun condMapEmpty!40567 () Bool)

(declare-datatypes ((V!39673 0))(
  ( (V!39674 (val!13002 Int)) )
))
(declare-datatypes ((ValueCell!12248 0))(
  ( (ValueCellFull!12248 (v!15621 V!39673)) (EmptyCell!12248) )
))
(declare-datatypes ((array!68738 0))(
  ( (array!68739 (arr!33059 (Array (_ BitVec 32) ValueCell!12248)) (size!33596 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68738)

(declare-fun mapDefault!40567 () ValueCell!12248)

