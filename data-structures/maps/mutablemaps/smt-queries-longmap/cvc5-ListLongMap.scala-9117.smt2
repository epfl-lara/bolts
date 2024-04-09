; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109522 () Bool)

(assert start!109522)

(declare-fun b_free!28975 () Bool)

(declare-fun b_next!28975 () Bool)

(assert (=> start!109522 (= b_free!28975 (not b_next!28975))))

(declare-fun tp!102044 () Bool)

(declare-fun b_and!47075 () Bool)

(assert (=> start!109522 (= tp!102044 b_and!47075)))

(declare-fun b!1296628 () Bool)

(declare-fun e!739762 () Bool)

(declare-fun tp_is_empty!34615 () Bool)

(assert (=> b!1296628 (= e!739762 tp_is_empty!34615)))

(declare-fun b!1296629 () Bool)

(declare-fun res!861815 () Bool)

(declare-fun e!739760 () Bool)

(assert (=> b!1296629 (=> (not res!861815) (not e!739760))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86209 0))(
  ( (array!86210 (arr!41601 (Array (_ BitVec 32) (_ BitVec 64))) (size!42152 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86209)

(assert (=> b!1296629 (= res!861815 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42152 _keys!1741))))))

(declare-fun b!1296630 () Bool)

(declare-fun res!861819 () Bool)

(assert (=> b!1296630 (=> (not res!861819) (not e!739760))))

(declare-datatypes ((List!29711 0))(
  ( (Nil!29708) (Cons!29707 (h!30916 (_ BitVec 64)) (t!43282 List!29711)) )
))
(declare-fun arrayNoDuplicates!0 (array!86209 (_ BitVec 32) List!29711) Bool)

(assert (=> b!1296630 (= res!861819 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29708))))

(declare-fun b!1296631 () Bool)

(declare-fun res!861817 () Bool)

(assert (=> b!1296631 (=> (not res!861817) (not e!739760))))

(declare-datatypes ((V!51257 0))(
  ( (V!51258 (val!17382 Int)) )
))
(declare-datatypes ((ValueCell!16409 0))(
  ( (ValueCellFull!16409 (v!19983 V!51257)) (EmptyCell!16409) )
))
(declare-datatypes ((array!86211 0))(
  ( (array!86212 (arr!41602 (Array (_ BitVec 32) ValueCell!16409)) (size!42153 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86211)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1296631 (= res!861817 (and (= (size!42153 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42152 _keys!1741) (size!42153 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296632 () Bool)

(declare-fun e!739759 () Bool)

(declare-fun e!739761 () Bool)

(declare-fun mapRes!53483 () Bool)

(assert (=> b!1296632 (= e!739759 (and e!739761 mapRes!53483))))

(declare-fun condMapEmpty!53483 () Bool)

(declare-fun mapDefault!53483 () ValueCell!16409)

