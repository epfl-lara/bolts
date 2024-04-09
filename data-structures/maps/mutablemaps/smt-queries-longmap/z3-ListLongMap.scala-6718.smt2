; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84310 () Bool)

(assert start!84310)

(declare-fun mapIsEmpty!36656 () Bool)

(declare-fun mapRes!36656 () Bool)

(assert (=> mapIsEmpty!36656 mapRes!36656))

(declare-fun b!985861 () Bool)

(declare-fun res!659776 () Bool)

(declare-fun e!555797 () Bool)

(assert (=> b!985861 (=> (not res!659776) (not e!555797))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35763 0))(
  ( (V!35764 (val!11593 Int)) )
))
(declare-datatypes ((ValueCell!11061 0))(
  ( (ValueCellFull!11061 (v!14155 V!35763)) (EmptyCell!11061) )
))
(declare-datatypes ((array!62129 0))(
  ( (array!62130 (arr!29918 (Array (_ BitVec 32) ValueCell!11061)) (size!30398 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62129)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62131 0))(
  ( (array!62132 (arr!29919 (Array (_ BitVec 32) (_ BitVec 64))) (size!30399 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62131)

(assert (=> b!985861 (= res!659776 (and (= (size!30398 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30399 _keys!1544) (size!30398 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985862 () Bool)

(declare-fun e!555798 () Bool)

(declare-fun e!555800 () Bool)

(assert (=> b!985862 (= e!555798 (and e!555800 mapRes!36656))))

(declare-fun condMapEmpty!36656 () Bool)

(declare-fun mapDefault!36656 () ValueCell!11061)

(assert (=> b!985862 (= condMapEmpty!36656 (= (arr!29918 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11061)) mapDefault!36656)))))

(declare-fun b!985863 () Bool)

(declare-fun e!555796 () Bool)

(declare-fun tp_is_empty!23085 () Bool)

(assert (=> b!985863 (= e!555796 tp_is_empty!23085)))

(declare-fun res!659778 () Bool)

(assert (=> start!84310 (=> (not res!659778) (not e!555797))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84310 (= res!659778 (validMask!0 mask!1948))))

(assert (=> start!84310 e!555797))

(assert (=> start!84310 true))

(declare-fun array_inv!22991 (array!62129) Bool)

(assert (=> start!84310 (and (array_inv!22991 _values!1278) e!555798)))

(declare-fun array_inv!22992 (array!62131) Bool)

(assert (=> start!84310 (array_inv!22992 _keys!1544)))

(declare-fun mapNonEmpty!36656 () Bool)

(declare-fun tp!69512 () Bool)

(assert (=> mapNonEmpty!36656 (= mapRes!36656 (and tp!69512 e!555796))))

(declare-fun mapValue!36656 () ValueCell!11061)

(declare-fun mapRest!36656 () (Array (_ BitVec 32) ValueCell!11061))

(declare-fun mapKey!36656 () (_ BitVec 32))

(assert (=> mapNonEmpty!36656 (= (arr!29918 _values!1278) (store mapRest!36656 mapKey!36656 mapValue!36656))))

(declare-fun b!985864 () Bool)

(assert (=> b!985864 (= e!555797 false)))

(declare-fun lt!437368 () Bool)

(declare-datatypes ((List!20843 0))(
  ( (Nil!20840) (Cons!20839 (h!22001 (_ BitVec 64)) (t!29750 List!20843)) )
))
(declare-fun arrayNoDuplicates!0 (array!62131 (_ BitVec 32) List!20843) Bool)

(assert (=> b!985864 (= lt!437368 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20840))))

(declare-fun b!985865 () Bool)

(assert (=> b!985865 (= e!555800 tp_is_empty!23085)))

(declare-fun b!985866 () Bool)

(declare-fun res!659777 () Bool)

(assert (=> b!985866 (=> (not res!659777) (not e!555797))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62131 (_ BitVec 32)) Bool)

(assert (=> b!985866 (= res!659777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(assert (= (and start!84310 res!659778) b!985861))

(assert (= (and b!985861 res!659776) b!985866))

(assert (= (and b!985866 res!659777) b!985864))

(assert (= (and b!985862 condMapEmpty!36656) mapIsEmpty!36656))

(assert (= (and b!985862 (not condMapEmpty!36656)) mapNonEmpty!36656))

(get-info :version)

(assert (= (and mapNonEmpty!36656 ((_ is ValueCellFull!11061) mapValue!36656)) b!985863))

(assert (= (and b!985862 ((_ is ValueCellFull!11061) mapDefault!36656)) b!985865))

(assert (= start!84310 b!985862))

(declare-fun m!912947 () Bool)

(assert (=> start!84310 m!912947))

(declare-fun m!912949 () Bool)

(assert (=> start!84310 m!912949))

(declare-fun m!912951 () Bool)

(assert (=> start!84310 m!912951))

(declare-fun m!912953 () Bool)

(assert (=> mapNonEmpty!36656 m!912953))

(declare-fun m!912955 () Bool)

(assert (=> b!985864 m!912955))

(declare-fun m!912957 () Bool)

(assert (=> b!985866 m!912957))

(check-sat (not start!84310) tp_is_empty!23085 (not mapNonEmpty!36656) (not b!985866) (not b!985864))
(check-sat)
