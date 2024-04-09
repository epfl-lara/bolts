; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108670 () Bool)

(assert start!108670)

(declare-fun b_free!28147 () Bool)

(declare-fun b_next!28147 () Bool)

(assert (=> start!108670 (= b_free!28147 (not b_next!28147))))

(declare-fun tp!99557 () Bool)

(declare-fun b_and!46223 () Bool)

(assert (=> start!108670 (= tp!99557 b_and!46223)))

(declare-fun mapIsEmpty!52238 () Bool)

(declare-fun mapRes!52238 () Bool)

(assert (=> mapIsEmpty!52238 mapRes!52238))

(declare-fun b!1282203 () Bool)

(declare-fun res!851772 () Bool)

(declare-fun e!732638 () Bool)

(assert (=> b!1282203 (=> (not res!851772) (not e!732638))))

(declare-datatypes ((array!84599 0))(
  ( (array!84600 (arr!40797 (Array (_ BitVec 32) (_ BitVec 64))) (size!41348 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84599)

(declare-datatypes ((List!29081 0))(
  ( (Nil!29078) (Cons!29077 (h!30286 (_ BitVec 64)) (t!42632 List!29081)) )
))
(declare-fun arrayNoDuplicates!0 (array!84599 (_ BitVec 32) List!29081) Bool)

(assert (=> b!1282203 (= res!851772 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29078))))

(declare-fun b!1282205 () Bool)

(declare-fun e!732640 () Bool)

(declare-fun tp_is_empty!33787 () Bool)

(assert (=> b!1282205 (= e!732640 tp_is_empty!33787)))

(declare-fun b!1282206 () Bool)

(declare-fun e!732637 () Bool)

(assert (=> b!1282206 (= e!732637 (and e!732640 mapRes!52238))))

(declare-fun condMapEmpty!52238 () Bool)

(declare-datatypes ((V!50153 0))(
  ( (V!50154 (val!16968 Int)) )
))
(declare-datatypes ((ValueCell!15995 0))(
  ( (ValueCellFull!15995 (v!19568 V!50153)) (EmptyCell!15995) )
))
(declare-datatypes ((array!84601 0))(
  ( (array!84602 (arr!40798 (Array (_ BitVec 32) ValueCell!15995)) (size!41349 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84601)

(declare-fun mapDefault!52238 () ValueCell!15995)

