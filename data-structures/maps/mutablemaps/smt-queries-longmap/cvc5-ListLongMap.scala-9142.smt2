; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109672 () Bool)

(assert start!109672)

(declare-fun b_free!29125 () Bool)

(declare-fun b_next!29125 () Bool)

(assert (=> start!109672 (= b_free!29125 (not b_next!29125))))

(declare-fun tp!102495 () Bool)

(declare-fun b_and!47225 () Bool)

(assert (=> start!109672 (= tp!102495 b_and!47225)))

(declare-fun b!1298641 () Bool)

(declare-fun res!863154 () Bool)

(declare-fun e!740889 () Bool)

(assert (=> b!1298641 (=> (not res!863154) (not e!740889))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86499 0))(
  ( (array!86500 (arr!41746 (Array (_ BitVec 32) (_ BitVec 64))) (size!42297 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86499)

(assert (=> b!1298641 (= res!863154 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42297 _keys!1741)) (not (= (select (arr!41746 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1298642 () Bool)

(declare-fun res!863156 () Bool)

(assert (=> b!1298642 (=> (not res!863156) (not e!740889))))

(assert (=> b!1298642 (= res!863156 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42297 _keys!1741))))))

(declare-fun b!1298643 () Bool)

(declare-fun e!740890 () Bool)

(declare-fun e!740885 () Bool)

(declare-fun mapRes!53708 () Bool)

(assert (=> b!1298643 (= e!740890 (and e!740885 mapRes!53708))))

(declare-fun condMapEmpty!53708 () Bool)

(declare-datatypes ((V!51457 0))(
  ( (V!51458 (val!17457 Int)) )
))
(declare-datatypes ((ValueCell!16484 0))(
  ( (ValueCellFull!16484 (v!20058 V!51457)) (EmptyCell!16484) )
))
(declare-datatypes ((array!86501 0))(
  ( (array!86502 (arr!41747 (Array (_ BitVec 32) ValueCell!16484)) (size!42298 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86501)

(declare-fun mapDefault!53708 () ValueCell!16484)

