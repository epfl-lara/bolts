; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134142 () Bool)

(assert start!134142)

(declare-fun b_free!32221 () Bool)

(declare-fun b_next!32221 () Bool)

(assert (=> start!134142 (= b_free!32221 (not b_next!32221))))

(declare-fun tp!113986 () Bool)

(declare-fun b_and!51879 () Bool)

(assert (=> start!134142 (= tp!113986 b_and!51879)))

(declare-fun b!1567240 () Bool)

(declare-fun res!1071221 () Bool)

(declare-fun e!873650 () Bool)

(assert (=> b!1567240 (=> (not res!1071221) (not e!873650))))

(declare-datatypes ((array!104665 0))(
  ( (array!104666 (arr!50512 (Array (_ BitVec 32) (_ BitVec 64))) (size!51063 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104665)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567240 (= res!1071221 (not (validKeyInArray!0 (select (arr!50512 _keys!637) from!782))))))

(declare-fun mapNonEmpty!59904 () Bool)

(declare-fun mapRes!59904 () Bool)

(declare-fun tp!113985 () Bool)

(declare-fun e!873652 () Bool)

(assert (=> mapNonEmpty!59904 (= mapRes!59904 (and tp!113985 e!873652))))

(declare-fun mapKey!59904 () (_ BitVec 32))

(declare-datatypes ((V!60209 0))(
  ( (V!60210 (val!19584 Int)) )
))
(declare-datatypes ((ValueCell!18470 0))(
  ( (ValueCellFull!18470 (v!22341 V!60209)) (EmptyCell!18470) )
))
(declare-fun mapValue!59904 () ValueCell!18470)

(declare-fun mapRest!59904 () (Array (_ BitVec 32) ValueCell!18470))

(declare-datatypes ((array!104667 0))(
  ( (array!104668 (arr!50513 (Array (_ BitVec 32) ValueCell!18470)) (size!51064 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104667)

(assert (=> mapNonEmpty!59904 (= (arr!50513 _values!487) (store mapRest!59904 mapKey!59904 mapValue!59904))))

(declare-fun b!1567241 () Bool)

(declare-fun e!873649 () Bool)

(declare-fun e!873648 () Bool)

(assert (=> b!1567241 (= e!873649 (and e!873648 mapRes!59904))))

(declare-fun condMapEmpty!59904 () Bool)

(declare-fun mapDefault!59904 () ValueCell!18470)

