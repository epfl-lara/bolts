; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133518 () Bool)

(assert start!133518)

(declare-fun b!1560413 () Bool)

(declare-fun e!869552 () Bool)

(declare-fun tp_is_empty!38569 () Bool)

(assert (=> b!1560413 (= e!869552 tp_is_empty!38569)))

(declare-fun b!1560414 () Bool)

(declare-fun res!1067102 () Bool)

(declare-fun e!869548 () Bool)

(assert (=> b!1560414 (=> (not res!1067102) (not e!869548))))

(declare-datatypes ((array!103813 0))(
  ( (array!103814 (arr!50094 (Array (_ BitVec 32) (_ BitVec 64))) (size!50645 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103813)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103813 (_ BitVec 32)) Bool)

(assert (=> b!1560414 (= res!1067102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560415 () Bool)

(declare-fun e!869549 () Bool)

(assert (=> b!1560415 (= e!869549 tp_is_empty!38569)))

(declare-fun res!1067100 () Bool)

(assert (=> start!133518 (=> (not res!1067100) (not e!869548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133518 (= res!1067100 (validMask!0 mask!947))))

(assert (=> start!133518 e!869548))

(assert (=> start!133518 true))

(declare-datatypes ((V!59633 0))(
  ( (V!59634 (val!19368 Int)) )
))
(declare-datatypes ((ValueCell!18254 0))(
  ( (ValueCellFull!18254 (v!22117 V!59633)) (EmptyCell!18254) )
))
(declare-datatypes ((array!103815 0))(
  ( (array!103816 (arr!50095 (Array (_ BitVec 32) ValueCell!18254)) (size!50646 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103815)

(declare-fun e!869551 () Bool)

(declare-fun array_inv!38865 (array!103815) Bool)

(assert (=> start!133518 (and (array_inv!38865 _values!487) e!869551)))

(declare-fun array_inv!38866 (array!103813) Bool)

(assert (=> start!133518 (array_inv!38866 _keys!637)))

(declare-fun mapIsEmpty!59229 () Bool)

(declare-fun mapRes!59229 () Bool)

(assert (=> mapIsEmpty!59229 mapRes!59229))

(declare-fun b!1560416 () Bool)

(declare-fun res!1067101 () Bool)

(assert (=> b!1560416 (=> (not res!1067101) (not e!869548))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560416 (= res!1067101 (and (= (size!50646 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50645 _keys!637) (size!50646 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560417 () Bool)

(assert (=> b!1560417 (= e!869548 false)))

(declare-fun lt!670932 () Bool)

(declare-datatypes ((List!36547 0))(
  ( (Nil!36544) (Cons!36543 (h!37990 (_ BitVec 64)) (t!51287 List!36547)) )
))
(declare-fun arrayNoDuplicates!0 (array!103813 (_ BitVec 32) List!36547) Bool)

(assert (=> b!1560417 (= lt!670932 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36544))))

(declare-fun mapNonEmpty!59229 () Bool)

(declare-fun tp!112885 () Bool)

(assert (=> mapNonEmpty!59229 (= mapRes!59229 (and tp!112885 e!869549))))

(declare-fun mapKey!59229 () (_ BitVec 32))

(declare-fun mapValue!59229 () ValueCell!18254)

(declare-fun mapRest!59229 () (Array (_ BitVec 32) ValueCell!18254))

(assert (=> mapNonEmpty!59229 (= (arr!50095 _values!487) (store mapRest!59229 mapKey!59229 mapValue!59229))))

(declare-fun b!1560418 () Bool)

(assert (=> b!1560418 (= e!869551 (and e!869552 mapRes!59229))))

(declare-fun condMapEmpty!59229 () Bool)

(declare-fun mapDefault!59229 () ValueCell!18254)

