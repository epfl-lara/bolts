; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133534 () Bool)

(assert start!133534)

(declare-fun mapIsEmpty!59253 () Bool)

(declare-fun mapRes!59253 () Bool)

(assert (=> mapIsEmpty!59253 mapRes!59253))

(declare-fun b!1560557 () Bool)

(declare-fun res!1067172 () Bool)

(declare-fun e!869668 () Bool)

(assert (=> b!1560557 (=> (not res!1067172) (not e!869668))))

(declare-datatypes ((array!103843 0))(
  ( (array!103844 (arr!50109 (Array (_ BitVec 32) (_ BitVec 64))) (size!50660 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103843)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103843 (_ BitVec 32)) Bool)

(assert (=> b!1560557 (= res!1067172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560558 () Bool)

(assert (=> b!1560558 (= e!869668 false)))

(declare-fun lt!670956 () Bool)

(declare-datatypes ((List!36554 0))(
  ( (Nil!36551) (Cons!36550 (h!37997 (_ BitVec 64)) (t!51294 List!36554)) )
))
(declare-fun arrayNoDuplicates!0 (array!103843 (_ BitVec 32) List!36554) Bool)

(assert (=> b!1560558 (= lt!670956 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36551))))

(declare-fun b!1560559 () Bool)

(declare-fun e!869671 () Bool)

(declare-fun tp_is_empty!38585 () Bool)

(assert (=> b!1560559 (= e!869671 tp_is_empty!38585)))

(declare-fun b!1560560 () Bool)

(declare-fun res!1067173 () Bool)

(assert (=> b!1560560 (=> (not res!1067173) (not e!869668))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59653 0))(
  ( (V!59654 (val!19376 Int)) )
))
(declare-datatypes ((ValueCell!18262 0))(
  ( (ValueCellFull!18262 (v!22125 V!59653)) (EmptyCell!18262) )
))
(declare-datatypes ((array!103845 0))(
  ( (array!103846 (arr!50110 (Array (_ BitVec 32) ValueCell!18262)) (size!50661 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103845)

(assert (=> b!1560560 (= res!1067173 (and (= (size!50661 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50660 _keys!637) (size!50661 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59253 () Bool)

(declare-fun tp!112909 () Bool)

(assert (=> mapNonEmpty!59253 (= mapRes!59253 (and tp!112909 e!869671))))

(declare-fun mapKey!59253 () (_ BitVec 32))

(declare-fun mapValue!59253 () ValueCell!18262)

(declare-fun mapRest!59253 () (Array (_ BitVec 32) ValueCell!18262))

(assert (=> mapNonEmpty!59253 (= (arr!50110 _values!487) (store mapRest!59253 mapKey!59253 mapValue!59253))))

(declare-fun res!1067174 () Bool)

(assert (=> start!133534 (=> (not res!1067174) (not e!869668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133534 (= res!1067174 (validMask!0 mask!947))))

(assert (=> start!133534 e!869668))

(assert (=> start!133534 true))

(declare-fun e!869672 () Bool)

(declare-fun array_inv!38875 (array!103845) Bool)

(assert (=> start!133534 (and (array_inv!38875 _values!487) e!869672)))

(declare-fun array_inv!38876 (array!103843) Bool)

(assert (=> start!133534 (array_inv!38876 _keys!637)))

(declare-fun b!1560561 () Bool)

(declare-fun e!869670 () Bool)

(assert (=> b!1560561 (= e!869672 (and e!869670 mapRes!59253))))

(declare-fun condMapEmpty!59253 () Bool)

(declare-fun mapDefault!59253 () ValueCell!18262)

