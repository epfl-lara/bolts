; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133692 () Bool)

(assert start!133692)

(declare-fun res!1068461 () Bool)

(declare-fun e!870865 () Bool)

(assert (=> start!133692 (=> (not res!1068461) (not e!870865))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133692 (= res!1068461 (validMask!0 mask!947))))

(assert (=> start!133692 e!870865))

(assert (=> start!133692 true))

(declare-datatypes ((V!59865 0))(
  ( (V!59866 (val!19455 Int)) )
))
(declare-datatypes ((ValueCell!18341 0))(
  ( (ValueCellFull!18341 (v!22204 V!59865)) (EmptyCell!18341) )
))
(declare-datatypes ((array!104149 0))(
  ( (array!104150 (arr!50262 (Array (_ BitVec 32) ValueCell!18341)) (size!50813 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104149)

(declare-fun e!870863 () Bool)

(declare-fun array_inv!38995 (array!104149) Bool)

(assert (=> start!133692 (and (array_inv!38995 _values!487) e!870863)))

(declare-datatypes ((array!104151 0))(
  ( (array!104152 (arr!50263 (Array (_ BitVec 32) (_ BitVec 64))) (size!50814 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104151)

(declare-fun array_inv!38996 (array!104151) Bool)

(assert (=> start!133692 (array_inv!38996 _keys!637)))

(declare-fun mapNonEmpty!59490 () Bool)

(declare-fun mapRes!59490 () Bool)

(declare-fun tp!113326 () Bool)

(declare-fun e!870862 () Bool)

(assert (=> mapNonEmpty!59490 (= mapRes!59490 (and tp!113326 e!870862))))

(declare-fun mapKey!59490 () (_ BitVec 32))

(declare-fun mapRest!59490 () (Array (_ BitVec 32) ValueCell!18341))

(declare-fun mapValue!59490 () ValueCell!18341)

(assert (=> mapNonEmpty!59490 (= (arr!50262 _values!487) (store mapRest!59490 mapKey!59490 mapValue!59490))))

(declare-fun b!1562669 () Bool)

(declare-fun res!1068459 () Bool)

(assert (=> b!1562669 (=> (not res!1068459) (not e!870865))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562669 (= res!1068459 (and (= (size!50813 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50814 _keys!637) (size!50813 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562670 () Bool)

(declare-fun tp_is_empty!38743 () Bool)

(assert (=> b!1562670 (= e!870862 tp_is_empty!38743)))

(declare-fun b!1562671 () Bool)

(declare-fun e!870864 () Bool)

(assert (=> b!1562671 (= e!870863 (and e!870864 mapRes!59490))))

(declare-fun condMapEmpty!59490 () Bool)

(declare-fun mapDefault!59490 () ValueCell!18341)

