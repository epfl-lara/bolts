; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110932 () Bool)

(assert start!110932)

(declare-fun b_free!29731 () Bool)

(declare-fun b_next!29731 () Bool)

(assert (=> start!110932 (= b_free!29731 (not b_next!29731))))

(declare-fun tp!104515 () Bool)

(declare-fun b_and!47949 () Bool)

(assert (=> start!110932 (= tp!104515 b_and!47949)))

(declare-fun b!1312782 () Bool)

(declare-fun res!871659 () Bool)

(declare-fun e!748816 () Bool)

(assert (=> b!1312782 (=> (not res!871659) (not e!748816))))

(declare-datatypes ((array!87871 0))(
  ( (array!87872 (arr!42411 (Array (_ BitVec 32) (_ BitVec 64))) (size!42962 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87871)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312782 (= res!871659 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42962 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54820 () Bool)

(declare-fun mapRes!54820 () Bool)

(assert (=> mapIsEmpty!54820 mapRes!54820))

(declare-fun b!1312783 () Bool)

(declare-fun e!748819 () Bool)

(declare-fun tp_is_empty!35461 () Bool)

(assert (=> b!1312783 (= e!748819 tp_is_empty!35461)))

(declare-fun b!1312784 () Bool)

(declare-fun e!748817 () Bool)

(declare-fun e!748818 () Bool)

(assert (=> b!1312784 (= e!748817 (and e!748818 mapRes!54820))))

(declare-fun condMapEmpty!54820 () Bool)

(declare-datatypes ((V!52385 0))(
  ( (V!52386 (val!17805 Int)) )
))
(declare-datatypes ((ValueCell!16832 0))(
  ( (ValueCellFull!16832 (v!20430 V!52385)) (EmptyCell!16832) )
))
(declare-datatypes ((array!87873 0))(
  ( (array!87874 (arr!42412 (Array (_ BitVec 32) ValueCell!16832)) (size!42963 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87873)

(declare-fun mapDefault!54820 () ValueCell!16832)

