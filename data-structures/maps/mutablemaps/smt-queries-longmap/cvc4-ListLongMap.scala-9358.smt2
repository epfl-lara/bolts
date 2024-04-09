; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111624 () Bool)

(assert start!111624)

(declare-fun b_free!30245 () Bool)

(declare-fun b_next!30245 () Bool)

(assert (=> start!111624 (= b_free!30245 (not b_next!30245))))

(declare-fun tp!106211 () Bool)

(declare-fun b_and!48659 () Bool)

(assert (=> start!111624 (= tp!106211 b_and!48659)))

(declare-fun b!1321404 () Bool)

(declare-fun e!753648 () Bool)

(declare-fun tp_is_empty!36065 () Bool)

(assert (=> b!1321404 (= e!753648 tp_is_empty!36065)))

(declare-fun mapIsEmpty!55745 () Bool)

(declare-fun mapRes!55745 () Bool)

(assert (=> mapIsEmpty!55745 mapRes!55745))

(declare-fun b!1321405 () Bool)

(declare-fun e!753652 () Bool)

(assert (=> b!1321405 (= e!753652 (and e!753648 mapRes!55745))))

(declare-fun condMapEmpty!55745 () Bool)

(declare-datatypes ((V!53189 0))(
  ( (V!53190 (val!18107 Int)) )
))
(declare-datatypes ((ValueCell!17134 0))(
  ( (ValueCellFull!17134 (v!20735 V!53189)) (EmptyCell!17134) )
))
(declare-datatypes ((array!89019 0))(
  ( (array!89020 (arr!42979 (Array (_ BitVec 32) ValueCell!17134)) (size!43530 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89019)

(declare-fun mapDefault!55745 () ValueCell!17134)

