; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111638 () Bool)

(assert start!111638)

(declare-fun b_free!30259 () Bool)

(declare-fun b_next!30259 () Bool)

(assert (=> start!111638 (= b_free!30259 (not b_next!30259))))

(declare-fun tp!106254 () Bool)

(declare-fun b_and!48687 () Bool)

(assert (=> start!111638 (= tp!106254 b_and!48687)))

(declare-fun b!1321649 () Bool)

(declare-fun e!753753 () Bool)

(declare-fun e!753757 () Bool)

(declare-fun mapRes!55766 () Bool)

(assert (=> b!1321649 (= e!753753 (and e!753757 mapRes!55766))))

(declare-fun condMapEmpty!55766 () Bool)

(declare-datatypes ((V!53209 0))(
  ( (V!53210 (val!18114 Int)) )
))
(declare-datatypes ((ValueCell!17141 0))(
  ( (ValueCellFull!17141 (v!20742 V!53209)) (EmptyCell!17141) )
))
(declare-datatypes ((array!89043 0))(
  ( (array!89044 (arr!42991 (Array (_ BitVec 32) ValueCell!17141)) (size!43542 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89043)

(declare-fun mapDefault!55766 () ValueCell!17141)

