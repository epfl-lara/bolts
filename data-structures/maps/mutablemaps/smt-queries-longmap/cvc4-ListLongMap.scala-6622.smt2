; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83736 () Bool)

(assert start!83736)

(declare-fun mapIsEmpty!35795 () Bool)

(declare-fun mapRes!35795 () Bool)

(assert (=> mapIsEmpty!35795 mapRes!35795))

(declare-fun b!977332 () Bool)

(declare-fun e!551006 () Bool)

(declare-fun tp_is_empty!22511 () Bool)

(assert (=> b!977332 (= e!551006 tp_is_empty!22511)))

(declare-fun res!654214 () Bool)

(declare-fun e!551008 () Bool)

(assert (=> start!83736 (=> (not res!654214) (not e!551008))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83736 (= res!654214 (validMask!0 mask!1948))))

(assert (=> start!83736 e!551008))

(assert (=> start!83736 true))

(declare-datatypes ((V!34997 0))(
  ( (V!34998 (val!11306 Int)) )
))
(declare-datatypes ((ValueCell!10774 0))(
  ( (ValueCellFull!10774 (v!13868 V!34997)) (EmptyCell!10774) )
))
(declare-datatypes ((array!61039 0))(
  ( (array!61040 (arr!29373 (Array (_ BitVec 32) ValueCell!10774)) (size!29853 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61039)

(declare-fun e!551009 () Bool)

(declare-fun array_inv!22611 (array!61039) Bool)

(assert (=> start!83736 (and (array_inv!22611 _values!1278) e!551009)))

(declare-datatypes ((array!61041 0))(
  ( (array!61042 (arr!29374 (Array (_ BitVec 32) (_ BitVec 64))) (size!29854 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61041)

(declare-fun array_inv!22612 (array!61041) Bool)

(assert (=> start!83736 (array_inv!22612 _keys!1544)))

(declare-fun b!977333 () Bool)

(declare-fun res!654215 () Bool)

(assert (=> b!977333 (=> (not res!654215) (not e!551008))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977333 (= res!654215 (and (= (size!29853 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29854 _keys!1544) (size!29853 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977334 () Bool)

(declare-fun e!551005 () Bool)

(assert (=> b!977334 (= e!551009 (and e!551005 mapRes!35795))))

(declare-fun condMapEmpty!35795 () Bool)

(declare-fun mapDefault!35795 () ValueCell!10774)

