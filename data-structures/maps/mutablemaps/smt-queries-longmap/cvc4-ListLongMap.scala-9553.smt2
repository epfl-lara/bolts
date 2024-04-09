; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113220 () Bool)

(assert start!113220)

(declare-fun b_free!31235 () Bool)

(declare-fun b_next!31235 () Bool)

(assert (=> start!113220 (= b_free!31235 (not b_next!31235))))

(declare-fun tp!109511 () Bool)

(declare-fun b_and!50387 () Bool)

(assert (=> start!113220 (= tp!109511 b_and!50387)))

(declare-fun b!1342258 () Bool)

(declare-fun e!764216 () Bool)

(declare-fun e!764213 () Bool)

(declare-fun mapRes!57559 () Bool)

(assert (=> b!1342258 (= e!764216 (and e!764213 mapRes!57559))))

(declare-fun condMapEmpty!57559 () Bool)

(declare-datatypes ((V!54749 0))(
  ( (V!54750 (val!18692 Int)) )
))
(declare-datatypes ((ValueCell!17719 0))(
  ( (ValueCellFull!17719 (v!21338 V!54749)) (EmptyCell!17719) )
))
(declare-datatypes ((array!91279 0))(
  ( (array!91280 (arr!44091 (Array (_ BitVec 32) ValueCell!17719)) (size!44642 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91279)

(declare-fun mapDefault!57559 () ValueCell!17719)

