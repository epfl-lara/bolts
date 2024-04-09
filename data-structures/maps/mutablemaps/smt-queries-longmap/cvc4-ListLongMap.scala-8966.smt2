; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108562 () Bool)

(assert start!108562)

(declare-fun b_free!28073 () Bool)

(declare-fun b_next!28073 () Bool)

(assert (=> start!108562 (= b_free!28073 (not b_next!28073))))

(declare-fun tp!99329 () Bool)

(declare-fun b_and!46143 () Bool)

(assert (=> start!108562 (= tp!99329 b_and!46143)))

(declare-fun b!1280898 () Bool)

(declare-fun e!731890 () Bool)

(declare-fun tp_is_empty!33713 () Bool)

(assert (=> b!1280898 (= e!731890 tp_is_empty!33713)))

(declare-fun b!1280899 () Bool)

(declare-fun e!731888 () Bool)

(declare-fun mapRes!52121 () Bool)

(assert (=> b!1280899 (= e!731888 (and e!731890 mapRes!52121))))

(declare-fun condMapEmpty!52121 () Bool)

(declare-datatypes ((V!50053 0))(
  ( (V!50054 (val!16931 Int)) )
))
(declare-datatypes ((ValueCell!15958 0))(
  ( (ValueCellFull!15958 (v!19529 V!50053)) (EmptyCell!15958) )
))
(declare-datatypes ((array!84455 0))(
  ( (array!84456 (arr!40727 (Array (_ BitVec 32) ValueCell!15958)) (size!41278 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84455)

(declare-fun mapDefault!52121 () ValueCell!15958)

