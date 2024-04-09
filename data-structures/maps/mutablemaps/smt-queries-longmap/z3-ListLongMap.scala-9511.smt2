; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112922 () Bool)

(assert start!112922)

(declare-fun res!888174 () Bool)

(declare-fun e!762213 () Bool)

(assert (=> start!112922 (=> (not res!888174) (not e!762213))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112922 (= res!888174 (validMask!0 mask!1977))))

(assert (=> start!112922 e!762213))

(assert (=> start!112922 true))

(declare-datatypes ((V!54411 0))(
  ( (V!54412 (val!18565 Int)) )
))
(declare-datatypes ((ValueCell!17592 0))(
  ( (ValueCellFull!17592 (v!21210 V!54411)) (EmptyCell!17592) )
))
(declare-datatypes ((array!90799 0))(
  ( (array!90800 (arr!43856 (Array (_ BitVec 32) ValueCell!17592)) (size!44407 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90799)

(declare-fun e!762212 () Bool)

(declare-fun array_inv!32999 (array!90799) Bool)

(assert (=> start!112922 (and (array_inv!32999 _values!1303) e!762212)))

(declare-datatypes ((array!90801 0))(
  ( (array!90802 (arr!43857 (Array (_ BitVec 32) (_ BitVec 64))) (size!44408 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90801)

(declare-fun array_inv!33000 (array!90801) Bool)

(assert (=> start!112922 (array_inv!33000 _keys!1571)))

(declare-fun b!1338524 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1338524 (= e!762213 (and (= (size!44407 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44408 _keys!1571) (size!44407 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011) (not (= (size!44408 _keys!1571) (bvadd #b00000000000000000000000000000001 mask!1977)))))))

(declare-fun mapIsEmpty!57163 () Bool)

(declare-fun mapRes!57163 () Bool)

(assert (=> mapIsEmpty!57163 mapRes!57163))

(declare-fun mapNonEmpty!57163 () Bool)

(declare-fun tp!108863 () Bool)

(declare-fun e!762215 () Bool)

(assert (=> mapNonEmpty!57163 (= mapRes!57163 (and tp!108863 e!762215))))

(declare-fun mapKey!57163 () (_ BitVec 32))

(declare-fun mapRest!57163 () (Array (_ BitVec 32) ValueCell!17592))

(declare-fun mapValue!57163 () ValueCell!17592)

(assert (=> mapNonEmpty!57163 (= (arr!43856 _values!1303) (store mapRest!57163 mapKey!57163 mapValue!57163))))

(declare-fun b!1338525 () Bool)

(declare-fun e!762214 () Bool)

(assert (=> b!1338525 (= e!762212 (and e!762214 mapRes!57163))))

(declare-fun condMapEmpty!57163 () Bool)

(declare-fun mapDefault!57163 () ValueCell!17592)

(assert (=> b!1338525 (= condMapEmpty!57163 (= (arr!43856 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17592)) mapDefault!57163)))))

(declare-fun b!1338526 () Bool)

(declare-fun tp_is_empty!36981 () Bool)

(assert (=> b!1338526 (= e!762214 tp_is_empty!36981)))

(declare-fun b!1338527 () Bool)

(assert (=> b!1338527 (= e!762215 tp_is_empty!36981)))

(assert (= (and start!112922 res!888174) b!1338524))

(assert (= (and b!1338525 condMapEmpty!57163) mapIsEmpty!57163))

(assert (= (and b!1338525 (not condMapEmpty!57163)) mapNonEmpty!57163))

(get-info :version)

(assert (= (and mapNonEmpty!57163 ((_ is ValueCellFull!17592) mapValue!57163)) b!1338527))

(assert (= (and b!1338525 ((_ is ValueCellFull!17592) mapDefault!57163)) b!1338526))

(assert (= start!112922 b!1338525))

(declare-fun m!1226921 () Bool)

(assert (=> start!112922 m!1226921))

(declare-fun m!1226923 () Bool)

(assert (=> start!112922 m!1226923))

(declare-fun m!1226925 () Bool)

(assert (=> start!112922 m!1226925))

(declare-fun m!1226927 () Bool)

(assert (=> mapNonEmpty!57163 m!1226927))

(check-sat (not start!112922) (not mapNonEmpty!57163) tp_is_empty!36981)
(check-sat)
