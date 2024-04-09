; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109640 () Bool)

(assert start!109640)

(declare-fun b_free!29093 () Bool)

(declare-fun b_next!29093 () Bool)

(assert (=> start!109640 (= b_free!29093 (not b_next!29093))))

(declare-fun tp!102399 () Bool)

(declare-fun b_and!47193 () Bool)

(assert (=> start!109640 (= tp!102399 b_and!47193)))

(declare-fun b!1298159 () Bool)

(declare-fun res!862818 () Bool)

(declare-fun e!740645 () Bool)

(assert (=> b!1298159 (=> (not res!862818) (not e!740645))))

(declare-datatypes ((array!86435 0))(
  ( (array!86436 (arr!41714 (Array (_ BitVec 32) (_ BitVec 64))) (size!42265 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86435)

(declare-datatypes ((List!29795 0))(
  ( (Nil!29792) (Cons!29791 (h!31000 (_ BitVec 64)) (t!43366 List!29795)) )
))
(declare-fun arrayNoDuplicates!0 (array!86435 (_ BitVec 32) List!29795) Bool)

(assert (=> b!1298159 (= res!862818 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29792))))

(declare-fun mapIsEmpty!53660 () Bool)

(declare-fun mapRes!53660 () Bool)

(assert (=> mapIsEmpty!53660 mapRes!53660))

(declare-fun b!1298160 () Bool)

(declare-fun res!862820 () Bool)

(assert (=> b!1298160 (=> (not res!862820) (not e!740645))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1298160 (= res!862820 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42265 _keys!1741)) (not (= (select (arr!41714 _keys!1741) from!2144) k!1205))))))

(declare-fun mapNonEmpty!53660 () Bool)

(declare-fun tp!102398 () Bool)

(declare-fun e!740646 () Bool)

(assert (=> mapNonEmpty!53660 (= mapRes!53660 (and tp!102398 e!740646))))

(declare-datatypes ((V!51413 0))(
  ( (V!51414 (val!17441 Int)) )
))
(declare-datatypes ((ValueCell!16468 0))(
  ( (ValueCellFull!16468 (v!20042 V!51413)) (EmptyCell!16468) )
))
(declare-fun mapRest!53660 () (Array (_ BitVec 32) ValueCell!16468))

(declare-fun mapValue!53660 () ValueCell!16468)

(declare-fun mapKey!53660 () (_ BitVec 32))

(declare-datatypes ((array!86437 0))(
  ( (array!86438 (arr!41715 (Array (_ BitVec 32) ValueCell!16468)) (size!42266 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86437)

(assert (=> mapNonEmpty!53660 (= (arr!41715 _values!1445) (store mapRest!53660 mapKey!53660 mapValue!53660))))

(declare-fun res!862819 () Bool)

(assert (=> start!109640 (=> (not res!862819) (not e!740645))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109640 (= res!862819 (validMask!0 mask!2175))))

(assert (=> start!109640 e!740645))

(declare-fun tp_is_empty!34733 () Bool)

(assert (=> start!109640 tp_is_empty!34733))

(assert (=> start!109640 true))

(declare-fun e!740647 () Bool)

(declare-fun array_inv!31565 (array!86437) Bool)

(assert (=> start!109640 (and (array_inv!31565 _values!1445) e!740647)))

(declare-fun array_inv!31566 (array!86435) Bool)

(assert (=> start!109640 (array_inv!31566 _keys!1741)))

(assert (=> start!109640 tp!102399))

(declare-fun b!1298161 () Bool)

(declare-fun res!862821 () Bool)

(assert (=> b!1298161 (=> (not res!862821) (not e!740645))))

(assert (=> b!1298161 (= res!862821 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42265 _keys!1741))))))

(declare-fun b!1298162 () Bool)

(declare-fun e!740644 () Bool)

(assert (=> b!1298162 (= e!740644 tp_is_empty!34733)))

(declare-fun b!1298163 () Bool)

(assert (=> b!1298163 (= e!740647 (and e!740644 mapRes!53660))))

(declare-fun condMapEmpty!53660 () Bool)

(declare-fun mapDefault!53660 () ValueCell!16468)

