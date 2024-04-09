; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108896 () Bool)

(assert start!108896)

(declare-fun b_free!28373 () Bool)

(declare-fun b_next!28373 () Bool)

(assert (=> start!108896 (= b_free!28373 (not b_next!28373))))

(declare-fun tp!100235 () Bool)

(declare-fun b_and!46449 () Bool)

(assert (=> start!108896 (= tp!100235 b_and!46449)))

(declare-fun b!1285509 () Bool)

(declare-fun e!734334 () Bool)

(declare-fun e!734335 () Bool)

(declare-fun mapRes!52577 () Bool)

(assert (=> b!1285509 (= e!734334 (and e!734335 mapRes!52577))))

(declare-fun condMapEmpty!52577 () Bool)

(declare-datatypes ((V!50453 0))(
  ( (V!50454 (val!17081 Int)) )
))
(declare-datatypes ((ValueCell!16108 0))(
  ( (ValueCellFull!16108 (v!19681 V!50453)) (EmptyCell!16108) )
))
(declare-datatypes ((array!85037 0))(
  ( (array!85038 (arr!41016 (Array (_ BitVec 32) ValueCell!16108)) (size!41567 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85037)

(declare-fun mapDefault!52577 () ValueCell!16108)

