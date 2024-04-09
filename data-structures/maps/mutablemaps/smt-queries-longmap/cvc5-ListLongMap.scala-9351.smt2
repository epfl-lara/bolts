; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111578 () Bool)

(assert start!111578)

(declare-fun b_free!30199 () Bool)

(declare-fun b_next!30199 () Bool)

(assert (=> start!111578 (= b_free!30199 (not b_next!30199))))

(declare-fun tp!106073 () Bool)

(declare-fun b_and!48567 () Bool)

(assert (=> start!111578 (= tp!106073 b_and!48567)))

(declare-fun b!1320599 () Bool)

(declare-fun e!753305 () Bool)

(declare-fun e!753303 () Bool)

(declare-fun mapRes!55676 () Bool)

(assert (=> b!1320599 (= e!753305 (and e!753303 mapRes!55676))))

(declare-fun condMapEmpty!55676 () Bool)

(declare-datatypes ((V!53129 0))(
  ( (V!53130 (val!18084 Int)) )
))
(declare-datatypes ((ValueCell!17111 0))(
  ( (ValueCellFull!17111 (v!20712 V!53129)) (EmptyCell!17111) )
))
(declare-datatypes ((array!88933 0))(
  ( (array!88934 (arr!42936 (Array (_ BitVec 32) ValueCell!17111)) (size!43487 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88933)

(declare-fun mapDefault!55676 () ValueCell!17111)

