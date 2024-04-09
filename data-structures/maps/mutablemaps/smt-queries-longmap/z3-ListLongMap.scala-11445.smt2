; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133502 () Bool)

(assert start!133502)

(declare-fun b!1560269 () Bool)

(declare-fun e!869428 () Bool)

(assert (=> b!1560269 (= e!869428 false)))

(declare-fun lt!670908 () Bool)

(declare-datatypes ((array!103781 0))(
  ( (array!103782 (arr!50078 (Array (_ BitVec 32) (_ BitVec 64))) (size!50629 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103781)

(declare-datatypes ((List!36541 0))(
  ( (Nil!36538) (Cons!36537 (h!37984 (_ BitVec 64)) (t!51281 List!36541)) )
))
(declare-fun arrayNoDuplicates!0 (array!103781 (_ BitVec 32) List!36541) Bool)

(assert (=> b!1560269 (= lt!670908 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36538))))

(declare-fun b!1560270 () Bool)

(declare-fun e!869430 () Bool)

(declare-fun e!869429 () Bool)

(declare-fun mapRes!59205 () Bool)

(assert (=> b!1560270 (= e!869430 (and e!869429 mapRes!59205))))

(declare-fun condMapEmpty!59205 () Bool)

(declare-datatypes ((V!59611 0))(
  ( (V!59612 (val!19360 Int)) )
))
(declare-datatypes ((ValueCell!18246 0))(
  ( (ValueCellFull!18246 (v!22109 V!59611)) (EmptyCell!18246) )
))
(declare-datatypes ((array!103783 0))(
  ( (array!103784 (arr!50079 (Array (_ BitVec 32) ValueCell!18246)) (size!50630 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103783)

(declare-fun mapDefault!59205 () ValueCell!18246)

(assert (=> b!1560270 (= condMapEmpty!59205 (= (arr!50079 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18246)) mapDefault!59205)))))

(declare-fun b!1560271 () Bool)

(declare-fun res!1067030 () Bool)

(assert (=> b!1560271 (=> (not res!1067030) (not e!869428))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103781 (_ BitVec 32)) Bool)

(assert (=> b!1560271 (= res!1067030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560272 () Bool)

(declare-fun tp_is_empty!38553 () Bool)

(assert (=> b!1560272 (= e!869429 tp_is_empty!38553)))

(declare-fun b!1560273 () Bool)

(declare-fun res!1067028 () Bool)

(assert (=> b!1560273 (=> (not res!1067028) (not e!869428))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560273 (= res!1067028 (and (= (size!50630 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50629 _keys!637) (size!50630 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1067029 () Bool)

(assert (=> start!133502 (=> (not res!1067029) (not e!869428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133502 (= res!1067029 (validMask!0 mask!947))))

(assert (=> start!133502 e!869428))

(assert (=> start!133502 true))

(declare-fun array_inv!38849 (array!103783) Bool)

(assert (=> start!133502 (and (array_inv!38849 _values!487) e!869430)))

(declare-fun array_inv!38850 (array!103781) Bool)

(assert (=> start!133502 (array_inv!38850 _keys!637)))

(declare-fun mapIsEmpty!59205 () Bool)

(assert (=> mapIsEmpty!59205 mapRes!59205))

(declare-fun mapNonEmpty!59205 () Bool)

(declare-fun tp!112861 () Bool)

(declare-fun e!869432 () Bool)

(assert (=> mapNonEmpty!59205 (= mapRes!59205 (and tp!112861 e!869432))))

(declare-fun mapKey!59205 () (_ BitVec 32))

(declare-fun mapValue!59205 () ValueCell!18246)

(declare-fun mapRest!59205 () (Array (_ BitVec 32) ValueCell!18246))

(assert (=> mapNonEmpty!59205 (= (arr!50079 _values!487) (store mapRest!59205 mapKey!59205 mapValue!59205))))

(declare-fun b!1560274 () Bool)

(assert (=> b!1560274 (= e!869432 tp_is_empty!38553)))

(assert (= (and start!133502 res!1067029) b!1560273))

(assert (= (and b!1560273 res!1067028) b!1560271))

(assert (= (and b!1560271 res!1067030) b!1560269))

(assert (= (and b!1560270 condMapEmpty!59205) mapIsEmpty!59205))

(assert (= (and b!1560270 (not condMapEmpty!59205)) mapNonEmpty!59205))

(get-info :version)

(assert (= (and mapNonEmpty!59205 ((_ is ValueCellFull!18246) mapValue!59205)) b!1560274))

(assert (= (and b!1560270 ((_ is ValueCellFull!18246) mapDefault!59205)) b!1560272))

(assert (= start!133502 b!1560270))

(declare-fun m!1436179 () Bool)

(assert (=> b!1560269 m!1436179))

(declare-fun m!1436181 () Bool)

(assert (=> b!1560271 m!1436181))

(declare-fun m!1436183 () Bool)

(assert (=> start!133502 m!1436183))

(declare-fun m!1436185 () Bool)

(assert (=> start!133502 m!1436185))

(declare-fun m!1436187 () Bool)

(assert (=> start!133502 m!1436187))

(declare-fun m!1436189 () Bool)

(assert (=> mapNonEmpty!59205 m!1436189))

(check-sat tp_is_empty!38553 (not b!1560271) (not b!1560269) (not start!133502) (not mapNonEmpty!59205))
(check-sat)
