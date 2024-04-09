; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95852 () Bool)

(assert start!95852)

(declare-fun b_free!22469 () Bool)

(declare-fun b_next!22469 () Bool)

(assert (=> start!95852 (= b_free!22469 (not b_next!22469))))

(declare-fun tp!79256 () Bool)

(declare-fun b_and!35631 () Bool)

(assert (=> start!95852 (= tp!79256 b_and!35631)))

(declare-fun b!1084073 () Bool)

(declare-fun res!722788 () Bool)

(declare-fun e!619415 () Bool)

(assert (=> b!1084073 (=> (not res!722788) (not e!619415))))

(declare-datatypes ((array!69844 0))(
  ( (array!69845 (arr!33592 (Array (_ BitVec 32) (_ BitVec 64))) (size!34129 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69844)

(declare-datatypes ((List!23551 0))(
  ( (Nil!23548) (Cons!23547 (h!24756 (_ BitVec 64)) (t!33085 List!23551)) )
))
(declare-fun arrayNoDuplicates!0 (array!69844 (_ BitVec 32) List!23551) Bool)

(assert (=> b!1084073 (= res!722788 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23548))))

(declare-fun b!1084074 () Bool)

(declare-fun e!619417 () Bool)

(declare-fun e!619412 () Bool)

(declare-fun mapRes!41461 () Bool)

(assert (=> b!1084074 (= e!619417 (and e!619412 mapRes!41461))))

(declare-fun condMapEmpty!41461 () Bool)

(declare-datatypes ((V!40421 0))(
  ( (V!40422 (val!13292 Int)) )
))
(declare-datatypes ((ValueCell!12526 0))(
  ( (ValueCellFull!12526 (v!15914 V!40421)) (EmptyCell!12526) )
))
(declare-datatypes ((array!69846 0))(
  ( (array!69847 (arr!33593 (Array (_ BitVec 32) ValueCell!12526)) (size!34130 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69846)

(declare-fun mapDefault!41461 () ValueCell!12526)

