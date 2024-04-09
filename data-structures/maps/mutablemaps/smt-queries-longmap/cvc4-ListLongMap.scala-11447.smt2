; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133516 () Bool)

(assert start!133516)

(declare-fun mapNonEmpty!59226 () Bool)

(declare-fun mapRes!59226 () Bool)

(declare-fun tp!112882 () Bool)

(declare-fun e!869534 () Bool)

(assert (=> mapNonEmpty!59226 (= mapRes!59226 (and tp!112882 e!869534))))

(declare-fun mapKey!59226 () (_ BitVec 32))

(declare-datatypes ((V!59629 0))(
  ( (V!59630 (val!19367 Int)) )
))
(declare-datatypes ((ValueCell!18253 0))(
  ( (ValueCellFull!18253 (v!22116 V!59629)) (EmptyCell!18253) )
))
(declare-fun mapRest!59226 () (Array (_ BitVec 32) ValueCell!18253))

(declare-fun mapValue!59226 () ValueCell!18253)

(declare-datatypes ((array!103809 0))(
  ( (array!103810 (arr!50092 (Array (_ BitVec 32) ValueCell!18253)) (size!50643 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103809)

(assert (=> mapNonEmpty!59226 (= (arr!50092 _values!487) (store mapRest!59226 mapKey!59226 mapValue!59226))))

(declare-fun mapIsEmpty!59226 () Bool)

(assert (=> mapIsEmpty!59226 mapRes!59226))

(declare-fun b!1560395 () Bool)

(declare-fun e!869537 () Bool)

(assert (=> b!1560395 (= e!869537 false)))

(declare-fun lt!670929 () Bool)

(declare-datatypes ((array!103811 0))(
  ( (array!103812 (arr!50093 (Array (_ BitVec 32) (_ BitVec 64))) (size!50644 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103811)

(declare-datatypes ((List!36546 0))(
  ( (Nil!36543) (Cons!36542 (h!37989 (_ BitVec 64)) (t!51286 List!36546)) )
))
(declare-fun arrayNoDuplicates!0 (array!103811 (_ BitVec 32) List!36546) Bool)

(assert (=> b!1560395 (= lt!670929 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36543))))

(declare-fun b!1560396 () Bool)

(declare-fun e!869533 () Bool)

(declare-fun tp_is_empty!38567 () Bool)

(assert (=> b!1560396 (= e!869533 tp_is_empty!38567)))

(declare-fun b!1560397 () Bool)

(declare-fun res!1067092 () Bool)

(assert (=> b!1560397 (=> (not res!1067092) (not e!869537))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103811 (_ BitVec 32)) Bool)

(assert (=> b!1560397 (= res!1067092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560398 () Bool)

(declare-fun res!1067091 () Bool)

(assert (=> b!1560398 (=> (not res!1067091) (not e!869537))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560398 (= res!1067091 (and (= (size!50643 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50644 _keys!637) (size!50643 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1067093 () Bool)

(assert (=> start!133516 (=> (not res!1067093) (not e!869537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133516 (= res!1067093 (validMask!0 mask!947))))

(assert (=> start!133516 e!869537))

(assert (=> start!133516 true))

(declare-fun e!869535 () Bool)

(declare-fun array_inv!38863 (array!103809) Bool)

(assert (=> start!133516 (and (array_inv!38863 _values!487) e!869535)))

(declare-fun array_inv!38864 (array!103811) Bool)

(assert (=> start!133516 (array_inv!38864 _keys!637)))

(declare-fun b!1560399 () Bool)

(assert (=> b!1560399 (= e!869535 (and e!869533 mapRes!59226))))

(declare-fun condMapEmpty!59226 () Bool)

(declare-fun mapDefault!59226 () ValueCell!18253)

