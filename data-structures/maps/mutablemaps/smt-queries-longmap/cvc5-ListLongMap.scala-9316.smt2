; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111368 () Bool)

(assert start!111368)

(declare-fun b!1317328 () Bool)

(declare-fun e!751730 () Bool)

(declare-fun e!751729 () Bool)

(declare-fun mapRes!55361 () Bool)

(assert (=> b!1317328 (= e!751730 (and e!751729 mapRes!55361))))

(declare-fun condMapEmpty!55361 () Bool)

(declare-datatypes ((V!52849 0))(
  ( (V!52850 (val!17979 Int)) )
))
(declare-datatypes ((ValueCell!17006 0))(
  ( (ValueCellFull!17006 (v!20607 V!52849)) (EmptyCell!17006) )
))
(declare-datatypes ((array!88529 0))(
  ( (array!88530 (arr!42734 (Array (_ BitVec 32) ValueCell!17006)) (size!43285 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88529)

(declare-fun mapDefault!55361 () ValueCell!17006)

