; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84038 () Bool)

(assert start!84038)

(declare-fun b_free!19765 () Bool)

(declare-fun b_next!19765 () Bool)

(assert (=> start!84038 (= b_free!19765 (not b_next!19765))))

(declare-fun tp!68818 () Bool)

(declare-fun b_and!31631 () Bool)

(assert (=> start!84038 (= tp!68818 b_and!31631)))

(declare-fun b!981779 () Bool)

(declare-fun e!553481 () Bool)

(declare-fun e!553480 () Bool)

(declare-fun mapRes!36248 () Bool)

(assert (=> b!981779 (= e!553481 (and e!553480 mapRes!36248))))

(declare-fun condMapEmpty!36248 () Bool)

(declare-datatypes ((V!35401 0))(
  ( (V!35402 (val!11457 Int)) )
))
(declare-datatypes ((ValueCell!10925 0))(
  ( (ValueCellFull!10925 (v!14019 V!35401)) (EmptyCell!10925) )
))
(declare-datatypes ((array!61619 0))(
  ( (array!61620 (arr!29663 (Array (_ BitVec 32) ValueCell!10925)) (size!30143 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61619)

(declare-fun mapDefault!36248 () ValueCell!10925)

