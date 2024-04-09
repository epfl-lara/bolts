; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109720 () Bool)

(assert start!109720)

(declare-fun b_free!29137 () Bool)

(declare-fun b_next!29137 () Bool)

(assert (=> start!109720 (= b_free!29137 (not b_next!29137))))

(declare-fun tp!102536 () Bool)

(declare-fun b_and!47243 () Bool)

(assert (=> start!109720 (= tp!102536 b_and!47243)))

(declare-fun b!1299086 () Bool)

(declare-fun res!863399 () Bool)

(declare-fun e!741162 () Bool)

(assert (=> b!1299086 (=> (not res!863399) (not e!741162))))

(declare-datatypes ((array!86525 0))(
  ( (array!86526 (arr!41757 (Array (_ BitVec 32) (_ BitVec 64))) (size!42308 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86525)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86525 (_ BitVec 32)) Bool)

(assert (=> b!1299086 (= res!863399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299087 () Bool)

(declare-fun res!863398 () Bool)

(assert (=> b!1299087 (=> (not res!863398) (not e!741162))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1299087 (= res!863398 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42308 _keys!1741))))))

(declare-fun b!1299088 () Bool)

(declare-fun e!741158 () Bool)

(declare-fun e!741161 () Bool)

(declare-fun mapRes!53732 () Bool)

(assert (=> b!1299088 (= e!741158 (and e!741161 mapRes!53732))))

(declare-fun condMapEmpty!53732 () Bool)

(declare-datatypes ((V!51473 0))(
  ( (V!51474 (val!17463 Int)) )
))
(declare-datatypes ((ValueCell!16490 0))(
  ( (ValueCellFull!16490 (v!20066 V!51473)) (EmptyCell!16490) )
))
(declare-datatypes ((array!86527 0))(
  ( (array!86528 (arr!41758 (Array (_ BitVec 32) ValueCell!16490)) (size!42309 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86527)

(declare-fun mapDefault!53732 () ValueCell!16490)

