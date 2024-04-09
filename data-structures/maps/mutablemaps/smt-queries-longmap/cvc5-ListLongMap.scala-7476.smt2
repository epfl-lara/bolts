; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94840 () Bool)

(assert start!94840)

(declare-fun b_free!22033 () Bool)

(declare-fun b_next!22033 () Bool)

(assert (=> start!94840 (= b_free!22033 (not b_next!22033))))

(declare-fun tp!77562 () Bool)

(declare-fun b_and!34893 () Bool)

(assert (=> start!94840 (= tp!77562 b_and!34893)))

(declare-fun b!1071892 () Bool)

(declare-fun res!715101 () Bool)

(declare-fun e!612175 () Bool)

(assert (=> b!1071892 (=> (not res!715101) (not e!612175))))

(declare-datatypes ((array!68616 0))(
  ( (array!68617 (arr!32999 (Array (_ BitVec 32) (_ BitVec 64))) (size!33536 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68616)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68616 (_ BitVec 32)) Bool)

(assert (=> b!1071892 (= res!715101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071893 () Bool)

(declare-fun e!612173 () Bool)

(declare-fun e!612177 () Bool)

(declare-fun mapRes!40474 () Bool)

(assert (=> b!1071893 (= e!612173 (and e!612177 mapRes!40474))))

(declare-fun condMapEmpty!40474 () Bool)

(declare-datatypes ((V!39593 0))(
  ( (V!39594 (val!12972 Int)) )
))
(declare-datatypes ((ValueCell!12218 0))(
  ( (ValueCellFull!12218 (v!15590 V!39593)) (EmptyCell!12218) )
))
(declare-datatypes ((array!68618 0))(
  ( (array!68619 (arr!33000 (Array (_ BitVec 32) ValueCell!12218)) (size!33537 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68618)

(declare-fun mapDefault!40474 () ValueCell!12218)

