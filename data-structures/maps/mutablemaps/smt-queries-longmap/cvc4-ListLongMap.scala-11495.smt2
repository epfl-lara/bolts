; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133814 () Bool)

(assert start!133814)

(declare-fun b!1564168 () Bool)

(declare-fun e!871823 () Bool)

(declare-fun tp_is_empty!38855 () Bool)

(assert (=> b!1564168 (= e!871823 tp_is_empty!38855)))

(declare-fun mapNonEmpty!59661 () Bool)

(declare-fun mapRes!59661 () Bool)

(declare-fun tp!113587 () Bool)

(assert (=> mapNonEmpty!59661 (= mapRes!59661 (and tp!113587 e!871823))))

(declare-fun mapKey!59661 () (_ BitVec 32))

(declare-datatypes ((V!60013 0))(
  ( (V!60014 (val!19511 Int)) )
))
(declare-datatypes ((ValueCell!18397 0))(
  ( (ValueCellFull!18397 (v!22260 V!60013)) (EmptyCell!18397) )
))
(declare-fun mapValue!59661 () ValueCell!18397)

(declare-fun mapRest!59661 () (Array (_ BitVec 32) ValueCell!18397))

(declare-datatypes ((array!104369 0))(
  ( (array!104370 (arr!50371 (Array (_ BitVec 32) ValueCell!18397)) (size!50922 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104369)

(assert (=> mapNonEmpty!59661 (= (arr!50371 _values!487) (store mapRest!59661 mapKey!59661 mapValue!59661))))

(declare-fun b!1564169 () Bool)

(declare-fun e!871822 () Bool)

(declare-fun e!871819 () Bool)

(assert (=> b!1564169 (= e!871822 (and e!871819 mapRes!59661))))

(declare-fun condMapEmpty!59661 () Bool)

(declare-fun mapDefault!59661 () ValueCell!18397)

