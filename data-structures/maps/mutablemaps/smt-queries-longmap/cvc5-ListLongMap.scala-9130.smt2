; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109600 () Bool)

(assert start!109600)

(declare-fun b_free!29053 () Bool)

(declare-fun b_next!29053 () Bool)

(assert (=> start!109600 (= b_free!29053 (not b_next!29053))))

(declare-fun tp!102278 () Bool)

(declare-fun b_and!47153 () Bool)

(assert (=> start!109600 (= tp!102278 b_and!47153)))

(declare-fun b!1297573 () Bool)

(declare-fun res!862410 () Bool)

(declare-fun e!740343 () Bool)

(assert (=> b!1297573 (=> (not res!862410) (not e!740343))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86359 0))(
  ( (array!86360 (arr!41676 (Array (_ BitVec 32) (_ BitVec 64))) (size!42227 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86359)

(assert (=> b!1297573 (= res!862410 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42227 _keys!1741))))))

(declare-fun b!1297574 () Bool)

(declare-fun e!740346 () Bool)

(declare-fun e!740347 () Bool)

(declare-fun mapRes!53600 () Bool)

(assert (=> b!1297574 (= e!740346 (and e!740347 mapRes!53600))))

(declare-fun condMapEmpty!53600 () Bool)

(declare-datatypes ((V!51361 0))(
  ( (V!51362 (val!17421 Int)) )
))
(declare-datatypes ((ValueCell!16448 0))(
  ( (ValueCellFull!16448 (v!20022 V!51361)) (EmptyCell!16448) )
))
(declare-datatypes ((array!86361 0))(
  ( (array!86362 (arr!41677 (Array (_ BitVec 32) ValueCell!16448)) (size!42228 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86361)

(declare-fun mapDefault!53600 () ValueCell!16448)

