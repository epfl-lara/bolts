; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133976 () Bool)

(assert start!133976)

(declare-fun b_free!32167 () Bool)

(declare-fun b_next!32167 () Bool)

(assert (=> start!133976 (= b_free!32167 (not b_next!32167))))

(declare-fun tp!113803 () Bool)

(declare-fun b_and!51785 () Bool)

(assert (=> start!133976 (= tp!113803 b_and!51785)))

(declare-fun b!1565657 () Bool)

(declare-fun e!872700 () Bool)

(declare-fun tp_is_empty!38941 () Bool)

(assert (=> b!1565657 (= e!872700 tp_is_empty!38941)))

(declare-fun mapIsEmpty!59803 () Bool)

(declare-fun mapRes!59803 () Bool)

(assert (=> mapIsEmpty!59803 mapRes!59803))

(declare-fun mapNonEmpty!59803 () Bool)

(declare-fun tp!113804 () Bool)

(assert (=> mapNonEmpty!59803 (= mapRes!59803 (and tp!113804 e!872700))))

(declare-datatypes ((V!60129 0))(
  ( (V!60130 (val!19554 Int)) )
))
(declare-datatypes ((ValueCell!18440 0))(
  ( (ValueCellFull!18440 (v!22307 V!60129)) (EmptyCell!18440) )
))
(declare-fun mapRest!59803 () (Array (_ BitVec 32) ValueCell!18440))

(declare-fun mapKey!59803 () (_ BitVec 32))

(declare-datatypes ((array!104543 0))(
  ( (array!104544 (arr!50454 (Array (_ BitVec 32) ValueCell!18440)) (size!51005 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104543)

(declare-fun mapValue!59803 () ValueCell!18440)

(assert (=> mapNonEmpty!59803 (= (arr!50454 _values!487) (store mapRest!59803 mapKey!59803 mapValue!59803))))

(declare-fun b!1565658 () Bool)

(declare-fun res!1070328 () Bool)

(declare-fun e!872701 () Bool)

(assert (=> b!1565658 (=> (not res!1070328) (not e!872701))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104545 0))(
  ( (array!104546 (arr!50455 (Array (_ BitVec 32) (_ BitVec 64))) (size!51006 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104545)

(assert (=> b!1565658 (= res!1070328 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51006 _keys!637)) (bvslt from!782 (size!51006 _keys!637))))))

(declare-fun res!1070330 () Bool)

(assert (=> start!133976 (=> (not res!1070330) (not e!872701))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133976 (= res!1070330 (validMask!0 mask!947))))

(assert (=> start!133976 e!872701))

(assert (=> start!133976 tp!113803))

(assert (=> start!133976 tp_is_empty!38941))

(assert (=> start!133976 true))

(declare-fun array_inv!39123 (array!104545) Bool)

(assert (=> start!133976 (array_inv!39123 _keys!637)))

(declare-fun e!872698 () Bool)

(declare-fun array_inv!39124 (array!104543) Bool)

(assert (=> start!133976 (and (array_inv!39124 _values!487) e!872698)))

(declare-fun b!1565659 () Bool)

(declare-fun e!872699 () Bool)

(assert (=> b!1565659 (= e!872698 (and e!872699 mapRes!59803))))

(declare-fun condMapEmpty!59803 () Bool)

(declare-fun mapDefault!59803 () ValueCell!18440)

