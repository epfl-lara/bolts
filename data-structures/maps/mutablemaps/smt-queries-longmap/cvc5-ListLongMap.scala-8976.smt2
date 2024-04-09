; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108638 () Bool)

(assert start!108638)

(declare-fun b_free!28129 () Bool)

(declare-fun b_next!28129 () Bool)

(assert (=> start!108638 (= b_free!28129 (not b_next!28129))))

(declare-fun tp!99501 () Bool)

(declare-fun b_and!46203 () Bool)

(assert (=> start!108638 (= tp!99501 b_and!46203)))

(declare-fun b!1281871 () Bool)

(declare-fun e!732432 () Bool)

(declare-fun e!732430 () Bool)

(declare-fun mapRes!52208 () Bool)

(assert (=> b!1281871 (= e!732432 (and e!732430 mapRes!52208))))

(declare-fun condMapEmpty!52208 () Bool)

(declare-datatypes ((V!50129 0))(
  ( (V!50130 (val!16959 Int)) )
))
(declare-datatypes ((ValueCell!15986 0))(
  ( (ValueCellFull!15986 (v!19558 V!50129)) (EmptyCell!15986) )
))
(declare-datatypes ((array!84563 0))(
  ( (array!84564 (arr!40780 (Array (_ BitVec 32) ValueCell!15986)) (size!41331 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84563)

(declare-fun mapDefault!52208 () ValueCell!15986)

