; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133650 () Bool)

(assert start!133650)

(declare-fun b_free!32035 () Bool)

(declare-fun b_next!32035 () Bool)

(assert (=> start!133650 (= b_free!32035 (not b_next!32035))))

(declare-fun tp!113230 () Bool)

(declare-fun b_and!51591 () Bool)

(assert (=> start!133650 (= tp!113230 b_and!51591)))

(declare-fun res!1068170 () Bool)

(declare-fun e!870548 () Bool)

(assert (=> start!133650 (=> (not res!1068170) (not e!870548))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133650 (= res!1068170 (validMask!0 mask!947))))

(assert (=> start!133650 e!870548))

(assert (=> start!133650 tp!113230))

(declare-fun tp_is_empty!38701 () Bool)

(assert (=> start!133650 tp_is_empty!38701))

(assert (=> start!133650 true))

(declare-datatypes ((array!104069 0))(
  ( (array!104070 (arr!50222 (Array (_ BitVec 32) (_ BitVec 64))) (size!50773 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104069)

(declare-fun array_inv!38961 (array!104069) Bool)

(assert (=> start!133650 (array_inv!38961 _keys!637)))

(declare-datatypes ((V!59809 0))(
  ( (V!59810 (val!19434 Int)) )
))
(declare-datatypes ((ValueCell!18320 0))(
  ( (ValueCellFull!18320 (v!22183 V!59809)) (EmptyCell!18320) )
))
(declare-datatypes ((array!104071 0))(
  ( (array!104072 (arr!50223 (Array (_ BitVec 32) ValueCell!18320)) (size!50774 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104071)

(declare-fun e!870549 () Bool)

(declare-fun array_inv!38962 (array!104071) Bool)

(assert (=> start!133650 (and (array_inv!38962 _values!487) e!870549)))

(declare-fun mapNonEmpty!59427 () Bool)

(declare-fun mapRes!59427 () Bool)

(declare-fun tp!113229 () Bool)

(declare-fun e!870547 () Bool)

(assert (=> mapNonEmpty!59427 (= mapRes!59427 (and tp!113229 e!870547))))

(declare-fun mapRest!59427 () (Array (_ BitVec 32) ValueCell!18320))

(declare-fun mapKey!59427 () (_ BitVec 32))

(declare-fun mapValue!59427 () ValueCell!18320)

(assert (=> mapNonEmpty!59427 (= (arr!50223 _values!487) (store mapRest!59427 mapKey!59427 mapValue!59427))))

(declare-fun b!1562165 () Bool)

(declare-fun e!870550 () Bool)

(assert (=> b!1562165 (= e!870549 (and e!870550 mapRes!59427))))

(declare-fun condMapEmpty!59427 () Bool)

(declare-fun mapDefault!59427 () ValueCell!18320)

