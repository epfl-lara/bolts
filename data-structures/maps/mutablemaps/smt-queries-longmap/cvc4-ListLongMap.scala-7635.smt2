; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96170 () Bool)

(assert start!96170)

(declare-fun b_free!22787 () Bool)

(declare-fun b_next!22787 () Bool)

(assert (=> start!96170 (= b_free!22787 (not b_next!22787))))

(declare-fun tp!80211 () Bool)

(declare-fun b_and!36267 () Bool)

(assert (=> start!96170 (= tp!80211 b_and!36267)))

(declare-fun b!1091013 () Bool)

(declare-fun e!623146 () Bool)

(declare-fun e!623147 () Bool)

(declare-fun mapRes!41938 () Bool)

(assert (=> b!1091013 (= e!623146 (and e!623147 mapRes!41938))))

(declare-fun condMapEmpty!41938 () Bool)

(declare-datatypes ((V!40845 0))(
  ( (V!40846 (val!13451 Int)) )
))
(declare-datatypes ((ValueCell!12685 0))(
  ( (ValueCellFull!12685 (v!16073 V!40845)) (EmptyCell!12685) )
))
(declare-datatypes ((array!70466 0))(
  ( (array!70467 (arr!33903 (Array (_ BitVec 32) ValueCell!12685)) (size!34440 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70466)

(declare-fun mapDefault!41938 () ValueCell!12685)

