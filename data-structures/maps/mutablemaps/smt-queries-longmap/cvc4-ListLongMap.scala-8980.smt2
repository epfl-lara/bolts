; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108680 () Bool)

(assert start!108680)

(declare-fun b_free!28157 () Bool)

(declare-fun b_next!28157 () Bool)

(assert (=> start!108680 (= b_free!28157 (not b_next!28157))))

(declare-fun tp!99588 () Bool)

(declare-fun b_and!46233 () Bool)

(assert (=> start!108680 (= tp!99588 b_and!46233)))

(declare-fun res!851846 () Bool)

(declare-fun e!732711 () Bool)

(assert (=> start!108680 (=> (not res!851846) (not e!732711))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108680 (= res!851846 (validMask!0 mask!2175))))

(assert (=> start!108680 e!732711))

(declare-fun tp_is_empty!33797 () Bool)

(assert (=> start!108680 tp_is_empty!33797))

(assert (=> start!108680 true))

(declare-datatypes ((V!50165 0))(
  ( (V!50166 (val!16973 Int)) )
))
(declare-datatypes ((ValueCell!16000 0))(
  ( (ValueCellFull!16000 (v!19573 V!50165)) (EmptyCell!16000) )
))
(declare-datatypes ((array!84617 0))(
  ( (array!84618 (arr!40806 (Array (_ BitVec 32) ValueCell!16000)) (size!41357 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84617)

(declare-fun e!732715 () Bool)

(declare-fun array_inv!30937 (array!84617) Bool)

(assert (=> start!108680 (and (array_inv!30937 _values!1445) e!732715)))

(declare-datatypes ((array!84619 0))(
  ( (array!84620 (arr!40807 (Array (_ BitVec 32) (_ BitVec 64))) (size!41358 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84619)

(declare-fun array_inv!30938 (array!84619) Bool)

(assert (=> start!108680 (array_inv!30938 _keys!1741)))

(assert (=> start!108680 tp!99588))

(declare-fun b!1282323 () Bool)

(declare-fun res!851843 () Bool)

(assert (=> b!1282323 (=> (not res!851843) (not e!732711))))

(declare-datatypes ((List!29087 0))(
  ( (Nil!29084) (Cons!29083 (h!30292 (_ BitVec 64)) (t!42638 List!29087)) )
))
(declare-fun arrayNoDuplicates!0 (array!84619 (_ BitVec 32) List!29087) Bool)

(assert (=> b!1282323 (= res!851843 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29084))))

(declare-fun b!1282324 () Bool)

(declare-fun e!732714 () Bool)

(declare-fun mapRes!52253 () Bool)

(assert (=> b!1282324 (= e!732715 (and e!732714 mapRes!52253))))

(declare-fun condMapEmpty!52253 () Bool)

(declare-fun mapDefault!52253 () ValueCell!16000)

