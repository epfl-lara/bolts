; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108658 () Bool)

(assert start!108658)

(declare-fun b_free!28135 () Bool)

(declare-fun b_next!28135 () Bool)

(assert (=> start!108658 (= b_free!28135 (not b_next!28135))))

(declare-fun tp!99522 () Bool)

(declare-fun b_and!46211 () Bool)

(assert (=> start!108658 (= tp!99522 b_and!46211)))

(declare-fun b!1282059 () Bool)

(declare-fun e!732546 () Bool)

(declare-fun tp_is_empty!33775 () Bool)

(assert (=> b!1282059 (= e!732546 tp_is_empty!33775)))

(declare-fun b!1282060 () Bool)

(declare-fun e!732550 () Bool)

(assert (=> b!1282060 (= e!732550 tp_is_empty!33775)))

(declare-fun res!851680 () Bool)

(declare-fun e!732548 () Bool)

(assert (=> start!108658 (=> (not res!851680) (not e!732548))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108658 (= res!851680 (validMask!0 mask!2175))))

(assert (=> start!108658 e!732548))

(assert (=> start!108658 tp_is_empty!33775))

(assert (=> start!108658 true))

(declare-datatypes ((V!50137 0))(
  ( (V!50138 (val!16962 Int)) )
))
(declare-datatypes ((ValueCell!15989 0))(
  ( (ValueCellFull!15989 (v!19562 V!50137)) (EmptyCell!15989) )
))
(declare-datatypes ((array!84575 0))(
  ( (array!84576 (arr!40785 (Array (_ BitVec 32) ValueCell!15989)) (size!41336 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84575)

(declare-fun e!732547 () Bool)

(declare-fun array_inv!30925 (array!84575) Bool)

(assert (=> start!108658 (and (array_inv!30925 _values!1445) e!732547)))

(declare-datatypes ((array!84577 0))(
  ( (array!84578 (arr!40786 (Array (_ BitVec 32) (_ BitVec 64))) (size!41337 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84577)

(declare-fun array_inv!30926 (array!84577) Bool)

(assert (=> start!108658 (array_inv!30926 _keys!1741)))

(assert (=> start!108658 tp!99522))

(declare-fun b!1282061 () Bool)

(declare-fun mapRes!52220 () Bool)

(assert (=> b!1282061 (= e!732547 (and e!732546 mapRes!52220))))

(declare-fun condMapEmpty!52220 () Bool)

(declare-fun mapDefault!52220 () ValueCell!15989)

