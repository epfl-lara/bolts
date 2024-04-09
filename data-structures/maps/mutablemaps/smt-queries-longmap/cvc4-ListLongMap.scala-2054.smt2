; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35504 () Bool)

(assert start!35504)

(declare-fun b!355534 () Bool)

(declare-fun res!197325 () Bool)

(declare-fun e!217804 () Bool)

(assert (=> b!355534 (=> (not res!197325) (not e!217804))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19445 0))(
  ( (array!19446 (arr!9213 (Array (_ BitVec 32) (_ BitVec 64))) (size!9565 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19445)

(declare-datatypes ((V!11575 0))(
  ( (V!11576 (val!4019 Int)) )
))
(declare-datatypes ((ValueCell!3631 0))(
  ( (ValueCellFull!3631 (v!6209 V!11575)) (EmptyCell!3631) )
))
(declare-datatypes ((array!19447 0))(
  ( (array!19448 (arr!9214 (Array (_ BitVec 32) ValueCell!3631)) (size!9566 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19447)

(assert (=> b!355534 (= res!197325 (and (= (size!9566 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9565 _keys!1456) (size!9566 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355535 () Bool)

(declare-fun e!217802 () Bool)

(declare-fun e!217801 () Bool)

(declare-fun mapRes!13431 () Bool)

(assert (=> b!355535 (= e!217802 (and e!217801 mapRes!13431))))

(declare-fun condMapEmpty!13431 () Bool)

(declare-fun mapDefault!13431 () ValueCell!3631)

