; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112938 () Bool)

(assert start!112938)

(declare-fun b!1338596 () Bool)

(declare-fun e!762293 () Bool)

(declare-fun e!762296 () Bool)

(declare-fun mapRes!57181 () Bool)

(assert (=> b!1338596 (= e!762293 (and e!762296 mapRes!57181))))

(declare-fun condMapEmpty!57181 () Bool)

(declare-datatypes ((V!54425 0))(
  ( (V!54426 (val!18570 Int)) )
))
(declare-datatypes ((ValueCell!17597 0))(
  ( (ValueCellFull!17597 (v!21215 V!54425)) (EmptyCell!17597) )
))
(declare-datatypes ((array!90815 0))(
  ( (array!90816 (arr!43863 (Array (_ BitVec 32) ValueCell!17597)) (size!44414 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90815)

(declare-fun mapDefault!57181 () ValueCell!17597)

