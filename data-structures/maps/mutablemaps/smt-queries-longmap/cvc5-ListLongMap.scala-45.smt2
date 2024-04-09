; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!782 () Bool)

(assert start!782)

(declare-fun b_free!175 () Bool)

(declare-fun b_next!175 () Bool)

(assert (=> start!782 (= b_free!175 (not b_next!175))))

(declare-fun tp!755 () Bool)

(declare-fun b_and!321 () Bool)

(assert (=> start!782 (= tp!755 b_and!321)))

(declare-fun mapIsEmpty!350 () Bool)

(declare-fun mapRes!350 () Bool)

(assert (=> mapIsEmpty!350 mapRes!350))

(declare-fun b!5616 () Bool)

(declare-fun res!6332 () Bool)

(declare-fun e!3051 () Bool)

(assert (=> b!5616 (=> (not res!6332) (not e!3051))))

(declare-datatypes ((array!441 0))(
  ( (array!442 (arr!209 (Array (_ BitVec 32) (_ BitVec 64))) (size!271 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!441)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!441 (_ BitVec 32)) Bool)

(assert (=> b!5616 (= res!6332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5617 () Bool)

(declare-fun res!6331 () Bool)

(assert (=> b!5617 (=> (not res!6331) (not e!3051))))

(declare-datatypes ((List!134 0))(
  ( (Nil!131) (Cons!130 (h!696 (_ BitVec 64)) (t!2269 List!134)) )
))
(declare-fun arrayNoDuplicates!0 (array!441 (_ BitVec 32) List!134) Bool)

(assert (=> b!5617 (= res!6331 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!131))))

(declare-fun b!5618 () Bool)

(declare-fun e!3053 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5618 (= e!3053 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!5619 () Bool)

(declare-fun e!3049 () Bool)

(declare-fun e!3052 () Bool)

(assert (=> b!5619 (= e!3049 (and e!3052 mapRes!350))))

(declare-fun condMapEmpty!350 () Bool)

(declare-datatypes ((V!515 0))(
  ( (V!516 (val!132 Int)) )
))
(declare-datatypes ((ValueCell!110 0))(
  ( (ValueCellFull!110 (v!1223 V!515)) (EmptyCell!110) )
))
(declare-datatypes ((array!443 0))(
  ( (array!444 (arr!210 (Array (_ BitVec 32) ValueCell!110)) (size!272 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!443)

(declare-fun mapDefault!350 () ValueCell!110)

