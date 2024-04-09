; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94680 () Bool)

(assert start!94680)

(declare-fun b_free!21913 () Bool)

(declare-fun b_next!21913 () Bool)

(assert (=> start!94680 (= b_free!21913 (not b_next!21913))))

(declare-fun tp!77195 () Bool)

(declare-fun b_and!34751 () Bool)

(assert (=> start!94680 (= tp!77195 b_and!34751)))

(declare-fun b!1070011 () Bool)

(declare-fun res!713949 () Bool)

(declare-fun e!610775 () Bool)

(assert (=> b!1070011 (=> (not res!713949) (not e!610775))))

(declare-datatypes ((array!68394 0))(
  ( (array!68395 (arr!32890 (Array (_ BitVec 32) (_ BitVec 64))) (size!33427 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68394)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68394 (_ BitVec 32)) Bool)

(assert (=> b!1070011 (= res!713949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070012 () Bool)

(declare-fun e!610778 () Bool)

(declare-fun e!610776 () Bool)

(declare-fun mapRes!40288 () Bool)

(assert (=> b!1070012 (= e!610778 (and e!610776 mapRes!40288))))

(declare-fun condMapEmpty!40288 () Bool)

(declare-datatypes ((V!39433 0))(
  ( (V!39434 (val!12912 Int)) )
))
(declare-datatypes ((ValueCell!12158 0))(
  ( (ValueCellFull!12158 (v!15529 V!39433)) (EmptyCell!12158) )
))
(declare-datatypes ((array!68396 0))(
  ( (array!68397 (arr!32891 (Array (_ BitVec 32) ValueCell!12158)) (size!33428 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68396)

(declare-fun mapDefault!40288 () ValueCell!12158)

