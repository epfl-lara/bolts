; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83870 () Bool)

(assert start!83870)

(declare-fun b_free!19651 () Bool)

(declare-fun b_next!19651 () Bool)

(assert (=> start!83870 (= b_free!19651 (not b_next!19651))))

(declare-fun tp!68395 () Bool)

(declare-fun b_and!31409 () Bool)

(assert (=> start!83870 (= tp!68395 b_and!31409)))

(declare-fun b!979286 () Bool)

(declare-fun res!655478 () Bool)

(declare-fun e!552062 () Bool)

(assert (=> b!979286 (=> (not res!655478) (not e!552062))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61303 0))(
  ( (array!61304 (arr!29505 (Array (_ BitVec 32) (_ BitVec 64))) (size!29985 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61303)

(declare-datatypes ((V!35177 0))(
  ( (V!35178 (val!11373 Int)) )
))
(declare-datatypes ((ValueCell!10841 0))(
  ( (ValueCellFull!10841 (v!13935 V!35177)) (EmptyCell!10841) )
))
(declare-datatypes ((array!61305 0))(
  ( (array!61306 (arr!29506 (Array (_ BitVec 32) ValueCell!10841)) (size!29986 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61305)

(assert (=> b!979286 (= res!655478 (and (= (size!29986 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29985 _keys!1544) (size!29986 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35996 () Bool)

(declare-fun mapRes!35996 () Bool)

(assert (=> mapIsEmpty!35996 mapRes!35996))

(declare-fun b!979287 () Bool)

(declare-fun e!552057 () Bool)

(declare-fun e!552061 () Bool)

(assert (=> b!979287 (= e!552057 (and e!552061 mapRes!35996))))

(declare-fun condMapEmpty!35996 () Bool)

(declare-fun mapDefault!35996 () ValueCell!10841)

