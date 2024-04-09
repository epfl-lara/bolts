; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94624 () Bool)

(assert start!94624)

(declare-fun b_free!21871 () Bool)

(declare-fun b_next!21871 () Bool)

(assert (=> start!94624 (= b_free!21871 (not b_next!21871))))

(declare-fun tp!77067 () Bool)

(declare-fun b_and!34701 () Bool)

(assert (=> start!94624 (= tp!77067 b_and!34701)))

(declare-fun b!1069484 () Bool)

(declare-fun res!713663 () Bool)

(declare-fun e!610405 () Bool)

(assert (=> b!1069484 (=> (not res!713663) (not e!610405))))

(declare-datatypes ((array!68310 0))(
  ( (array!68311 (arr!32849 (Array (_ BitVec 32) (_ BitVec 64))) (size!33386 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68310)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68310 (_ BitVec 32)) Bool)

(assert (=> b!1069484 (= res!713663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069485 () Bool)

(declare-fun e!610402 () Bool)

(declare-fun e!610404 () Bool)

(declare-fun mapRes!40222 () Bool)

(assert (=> b!1069485 (= e!610402 (and e!610404 mapRes!40222))))

(declare-fun condMapEmpty!40222 () Bool)

(declare-datatypes ((V!39377 0))(
  ( (V!39378 (val!12891 Int)) )
))
(declare-datatypes ((ValueCell!12137 0))(
  ( (ValueCellFull!12137 (v!15508 V!39377)) (EmptyCell!12137) )
))
(declare-datatypes ((array!68312 0))(
  ( (array!68313 (arr!32850 (Array (_ BitVec 32) ValueCell!12137)) (size!33387 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68312)

(declare-fun mapDefault!40222 () ValueCell!12137)

