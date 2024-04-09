; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108860 () Bool)

(assert start!108860)

(declare-fun b_free!28337 () Bool)

(declare-fun b_next!28337 () Bool)

(assert (=> start!108860 (= b_free!28337 (not b_next!28337))))

(declare-fun tp!100128 () Bool)

(declare-fun b_and!46413 () Bool)

(assert (=> start!108860 (= tp!100128 b_and!46413)))

(declare-fun b!1285077 () Bool)

(declare-fun res!853789 () Bool)

(declare-fun e!734063 () Bool)

(assert (=> b!1285077 (=> (not res!853789) (not e!734063))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84967 0))(
  ( (array!84968 (arr!40981 (Array (_ BitVec 32) (_ BitVec 64))) (size!41532 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84967)

(assert (=> b!1285077 (= res!853789 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41532 _keys!1741))))))

(declare-fun b!1285078 () Bool)

(declare-fun e!734062 () Bool)

(declare-fun tp_is_empty!33977 () Bool)

(assert (=> b!1285078 (= e!734062 tp_is_empty!33977)))

(declare-fun b!1285079 () Bool)

(declare-fun e!734064 () Bool)

(declare-fun e!734065 () Bool)

(declare-fun mapRes!52523 () Bool)

(assert (=> b!1285079 (= e!734064 (and e!734065 mapRes!52523))))

(declare-fun condMapEmpty!52523 () Bool)

(declare-datatypes ((V!50405 0))(
  ( (V!50406 (val!17063 Int)) )
))
(declare-datatypes ((ValueCell!16090 0))(
  ( (ValueCellFull!16090 (v!19663 V!50405)) (EmptyCell!16090) )
))
(declare-datatypes ((array!84969 0))(
  ( (array!84970 (arr!40982 (Array (_ BitVec 32) ValueCell!16090)) (size!41533 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84969)

(declare-fun mapDefault!52523 () ValueCell!16090)

