; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112956 () Bool)

(assert start!112956)

(declare-fun b!1338706 () Bool)

(declare-fun e!762385 () Bool)

(declare-fun e!762386 () Bool)

(declare-fun mapRes!57199 () Bool)

(assert (=> b!1338706 (= e!762385 (and e!762386 mapRes!57199))))

(declare-fun condMapEmpty!57199 () Bool)

(declare-datatypes ((V!54437 0))(
  ( (V!54438 (val!18575 Int)) )
))
(declare-datatypes ((ValueCell!17602 0))(
  ( (ValueCellFull!17602 (v!21220 V!54437)) (EmptyCell!17602) )
))
(declare-datatypes ((array!90833 0))(
  ( (array!90834 (arr!43871 (Array (_ BitVec 32) ValueCell!17602)) (size!44422 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90833)

(declare-fun mapDefault!57199 () ValueCell!17602)

