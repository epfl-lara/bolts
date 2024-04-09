; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84298 () Bool)

(assert start!84298)

(declare-fun b!985753 () Bool)

(declare-fun e!555708 () Bool)

(declare-fun tp_is_empty!23073 () Bool)

(assert (=> b!985753 (= e!555708 tp_is_empty!23073)))

(declare-fun b!985754 () Bool)

(declare-fun e!555707 () Bool)

(declare-fun e!555709 () Bool)

(declare-fun mapRes!36638 () Bool)

(assert (=> b!985754 (= e!555707 (and e!555709 mapRes!36638))))

(declare-fun condMapEmpty!36638 () Bool)

(declare-datatypes ((V!35747 0))(
  ( (V!35748 (val!11587 Int)) )
))
(declare-datatypes ((ValueCell!11055 0))(
  ( (ValueCellFull!11055 (v!14149 V!35747)) (EmptyCell!11055) )
))
(declare-datatypes ((array!62109 0))(
  ( (array!62110 (arr!29908 (Array (_ BitVec 32) ValueCell!11055)) (size!30388 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62109)

(declare-fun mapDefault!36638 () ValueCell!11055)

(assert (=> b!985754 (= condMapEmpty!36638 (= (arr!29908 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11055)) mapDefault!36638)))))

(declare-fun b!985755 () Bool)

(declare-fun e!555710 () Bool)

(assert (=> b!985755 (= e!555710 false)))

(declare-fun lt!437350 () Bool)

(declare-datatypes ((array!62111 0))(
  ( (array!62112 (arr!29909 (Array (_ BitVec 32) (_ BitVec 64))) (size!30389 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62111)

(declare-datatypes ((List!20840 0))(
  ( (Nil!20837) (Cons!20836 (h!21998 (_ BitVec 64)) (t!29747 List!20840)) )
))
(declare-fun arrayNoDuplicates!0 (array!62111 (_ BitVec 32) List!20840) Bool)

(assert (=> b!985755 (= lt!437350 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20837))))

(declare-fun b!985756 () Bool)

(declare-fun res!659723 () Bool)

(assert (=> b!985756 (=> (not res!659723) (not e!555710))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985756 (= res!659723 (and (= (size!30388 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30389 _keys!1544) (size!30388 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985757 () Bool)

(declare-fun res!659722 () Bool)

(assert (=> b!985757 (=> (not res!659722) (not e!555710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62111 (_ BitVec 32)) Bool)

(assert (=> b!985757 (= res!659722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36638 () Bool)

(assert (=> mapIsEmpty!36638 mapRes!36638))

(declare-fun res!659724 () Bool)

(assert (=> start!84298 (=> (not res!659724) (not e!555710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84298 (= res!659724 (validMask!0 mask!1948))))

(assert (=> start!84298 e!555710))

(assert (=> start!84298 true))

(declare-fun array_inv!22983 (array!62109) Bool)

(assert (=> start!84298 (and (array_inv!22983 _values!1278) e!555707)))

(declare-fun array_inv!22984 (array!62111) Bool)

(assert (=> start!84298 (array_inv!22984 _keys!1544)))

(declare-fun b!985758 () Bool)

(assert (=> b!985758 (= e!555709 tp_is_empty!23073)))

(declare-fun mapNonEmpty!36638 () Bool)

(declare-fun tp!69494 () Bool)

(assert (=> mapNonEmpty!36638 (= mapRes!36638 (and tp!69494 e!555708))))

(declare-fun mapKey!36638 () (_ BitVec 32))

(declare-fun mapRest!36638 () (Array (_ BitVec 32) ValueCell!11055))

(declare-fun mapValue!36638 () ValueCell!11055)

(assert (=> mapNonEmpty!36638 (= (arr!29908 _values!1278) (store mapRest!36638 mapKey!36638 mapValue!36638))))

(assert (= (and start!84298 res!659724) b!985756))

(assert (= (and b!985756 res!659723) b!985757))

(assert (= (and b!985757 res!659722) b!985755))

(assert (= (and b!985754 condMapEmpty!36638) mapIsEmpty!36638))

(assert (= (and b!985754 (not condMapEmpty!36638)) mapNonEmpty!36638))

(get-info :version)

(assert (= (and mapNonEmpty!36638 ((_ is ValueCellFull!11055) mapValue!36638)) b!985753))

(assert (= (and b!985754 ((_ is ValueCellFull!11055) mapDefault!36638)) b!985758))

(assert (= start!84298 b!985754))

(declare-fun m!912875 () Bool)

(assert (=> b!985755 m!912875))

(declare-fun m!912877 () Bool)

(assert (=> b!985757 m!912877))

(declare-fun m!912879 () Bool)

(assert (=> start!84298 m!912879))

(declare-fun m!912881 () Bool)

(assert (=> start!84298 m!912881))

(declare-fun m!912883 () Bool)

(assert (=> start!84298 m!912883))

(declare-fun m!912885 () Bool)

(assert (=> mapNonEmpty!36638 m!912885))

(check-sat (not b!985755) (not mapNonEmpty!36638) (not b!985757) tp_is_empty!23073 (not start!84298))
(check-sat)
