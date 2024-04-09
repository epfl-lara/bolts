; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109556 () Bool)

(assert start!109556)

(declare-fun b_free!29009 () Bool)

(declare-fun b_next!29009 () Bool)

(assert (=> start!109556 (= b_free!29009 (not b_next!29009))))

(declare-fun tp!102147 () Bool)

(declare-fun b_and!47109 () Bool)

(assert (=> start!109556 (= tp!102147 b_and!47109)))

(declare-fun b!1297045 () Bool)

(declare-fun res!862080 () Bool)

(declare-fun e!740017 () Bool)

(assert (=> b!1297045 (=> (not res!862080) (not e!740017))))

(declare-datatypes ((array!86275 0))(
  ( (array!86276 (arr!41634 (Array (_ BitVec 32) (_ BitVec 64))) (size!42185 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86275)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86275 (_ BitVec 32)) Bool)

(assert (=> b!1297045 (= res!862080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297046 () Bool)

(declare-fun e!740016 () Bool)

(declare-fun tp_is_empty!34649 () Bool)

(assert (=> b!1297046 (= e!740016 tp_is_empty!34649)))

(declare-fun b!1297047 () Bool)

(declare-fun e!740015 () Bool)

(declare-fun mapRes!53534 () Bool)

(assert (=> b!1297047 (= e!740015 (and e!740016 mapRes!53534))))

(declare-fun condMapEmpty!53534 () Bool)

(declare-datatypes ((V!51301 0))(
  ( (V!51302 (val!17399 Int)) )
))
(declare-datatypes ((ValueCell!16426 0))(
  ( (ValueCellFull!16426 (v!20000 V!51301)) (EmptyCell!16426) )
))
(declare-datatypes ((array!86277 0))(
  ( (array!86278 (arr!41635 (Array (_ BitVec 32) ValueCell!16426)) (size!42186 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86277)

(declare-fun mapDefault!53534 () ValueCell!16426)

