; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110792 () Bool)

(assert start!110792)

(declare-fun b_free!29591 () Bool)

(declare-fun b_next!29591 () Bool)

(assert (=> start!110792 (= b_free!29591 (not b_next!29591))))

(declare-fun tp!104095 () Bool)

(declare-fun b_and!47809 () Bool)

(assert (=> start!110792 (= tp!104095 b_and!47809)))

(declare-fun b!1310778 () Bool)

(declare-fun e!747768 () Bool)

(declare-fun e!747770 () Bool)

(declare-fun mapRes!54610 () Bool)

(assert (=> b!1310778 (= e!747768 (and e!747770 mapRes!54610))))

(declare-fun condMapEmpty!54610 () Bool)

(declare-datatypes ((V!52197 0))(
  ( (V!52198 (val!17735 Int)) )
))
(declare-datatypes ((ValueCell!16762 0))(
  ( (ValueCellFull!16762 (v!20360 V!52197)) (EmptyCell!16762) )
))
(declare-datatypes ((array!87595 0))(
  ( (array!87596 (arr!42273 (Array (_ BitVec 32) ValueCell!16762)) (size!42824 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87595)

(declare-fun mapDefault!54610 () ValueCell!16762)

