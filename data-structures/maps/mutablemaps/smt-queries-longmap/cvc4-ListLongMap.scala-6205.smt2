; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79396 () Bool)

(assert start!79396)

(declare-fun b_free!17555 () Bool)

(declare-fun b_next!17555 () Bool)

(assert (=> start!79396 (= b_free!17555 (not b_next!17555))))

(declare-fun tp!61110 () Bool)

(declare-fun b_and!28687 () Bool)

(assert (=> start!79396 (= tp!61110 b_and!28687)))

(declare-fun b!932213 () Bool)

(declare-fun e!523540 () Bool)

(declare-fun e!523538 () Bool)

(declare-fun mapRes!31854 () Bool)

(assert (=> b!932213 (= e!523540 (and e!523538 mapRes!31854))))

(declare-fun condMapEmpty!31854 () Bool)

(declare-datatypes ((V!31715 0))(
  ( (V!31716 (val!10082 Int)) )
))
(declare-datatypes ((ValueCell!9550 0))(
  ( (ValueCellFull!9550 (v!12601 V!31715)) (EmptyCell!9550) )
))
(declare-datatypes ((array!56090 0))(
  ( (array!56091 (arr!26985 (Array (_ BitVec 32) ValueCell!9550)) (size!27445 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56090)

(declare-fun mapDefault!31854 () ValueCell!9550)

