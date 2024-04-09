; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108472 () Bool)

(assert start!108472)

(declare-fun b_free!27983 () Bool)

(declare-fun b_next!27983 () Bool)

(assert (=> start!108472 (= b_free!27983 (not b_next!27983))))

(declare-fun tp!99060 () Bool)

(declare-fun b_and!46053 () Bool)

(assert (=> start!108472 (= tp!99060 b_and!46053)))

(declare-fun b!1279711 () Bool)

(declare-fun res!850166 () Bool)

(declare-fun e!731214 () Bool)

(assert (=> b!1279711 (=> (not res!850166) (not e!731214))))

(declare-datatypes ((array!84281 0))(
  ( (array!84282 (arr!40640 (Array (_ BitVec 32) (_ BitVec 64))) (size!41191 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84281)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84281 (_ BitVec 32)) Bool)

(assert (=> b!1279711 (= res!850166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279712 () Bool)

(declare-fun e!731212 () Bool)

(declare-fun e!731213 () Bool)

(declare-fun mapRes!51986 () Bool)

(assert (=> b!1279712 (= e!731212 (and e!731213 mapRes!51986))))

(declare-fun condMapEmpty!51986 () Bool)

(declare-datatypes ((V!49933 0))(
  ( (V!49934 (val!16886 Int)) )
))
(declare-datatypes ((ValueCell!15913 0))(
  ( (ValueCellFull!15913 (v!19484 V!49933)) (EmptyCell!15913) )
))
(declare-datatypes ((array!84283 0))(
  ( (array!84284 (arr!40641 (Array (_ BitVec 32) ValueCell!15913)) (size!41192 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84283)

(declare-fun mapDefault!51986 () ValueCell!15913)

