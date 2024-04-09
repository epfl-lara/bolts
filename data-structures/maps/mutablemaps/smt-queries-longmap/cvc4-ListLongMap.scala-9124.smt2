; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109568 () Bool)

(assert start!109568)

(declare-fun b_free!29021 () Bool)

(declare-fun b_next!29021 () Bool)

(assert (=> start!109568 (= b_free!29021 (not b_next!29021))))

(declare-fun tp!102183 () Bool)

(declare-fun b_and!47121 () Bool)

(assert (=> start!109568 (= tp!102183 b_and!47121)))

(declare-fun b!1297189 () Bool)

(declare-fun res!862169 () Bool)

(declare-fun e!740106 () Bool)

(assert (=> b!1297189 (=> (not res!862169) (not e!740106))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86299 0))(
  ( (array!86300 (arr!41646 (Array (_ BitVec 32) (_ BitVec 64))) (size!42197 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86299)

(assert (=> b!1297189 (= res!862169 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42197 _keys!1741))))))

(declare-fun b!1297190 () Bool)

(declare-fun e!740104 () Bool)

(declare-fun e!740103 () Bool)

(declare-fun mapRes!53552 () Bool)

(assert (=> b!1297190 (= e!740104 (and e!740103 mapRes!53552))))

(declare-fun condMapEmpty!53552 () Bool)

(declare-datatypes ((V!51317 0))(
  ( (V!51318 (val!17405 Int)) )
))
(declare-datatypes ((ValueCell!16432 0))(
  ( (ValueCellFull!16432 (v!20006 V!51317)) (EmptyCell!16432) )
))
(declare-datatypes ((array!86301 0))(
  ( (array!86302 (arr!41647 (Array (_ BitVec 32) ValueCell!16432)) (size!42198 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86301)

(declare-fun mapDefault!53552 () ValueCell!16432)

