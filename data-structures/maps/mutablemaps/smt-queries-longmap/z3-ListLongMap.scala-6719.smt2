; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84316 () Bool)

(assert start!84316)

(declare-fun mapIsEmpty!36665 () Bool)

(declare-fun mapRes!36665 () Bool)

(assert (=> mapIsEmpty!36665 mapRes!36665))

(declare-fun b!985915 () Bool)

(declare-fun e!555843 () Bool)

(declare-fun e!555842 () Bool)

(assert (=> b!985915 (= e!555843 (and e!555842 mapRes!36665))))

(declare-fun condMapEmpty!36665 () Bool)

(declare-datatypes ((V!35771 0))(
  ( (V!35772 (val!11596 Int)) )
))
(declare-datatypes ((ValueCell!11064 0))(
  ( (ValueCellFull!11064 (v!14158 V!35771)) (EmptyCell!11064) )
))
(declare-datatypes ((array!62141 0))(
  ( (array!62142 (arr!29924 (Array (_ BitVec 32) ValueCell!11064)) (size!30404 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62141)

(declare-fun mapDefault!36665 () ValueCell!11064)

(assert (=> b!985915 (= condMapEmpty!36665 (= (arr!29924 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11064)) mapDefault!36665)))))

(declare-fun b!985916 () Bool)

(declare-fun tp_is_empty!23091 () Bool)

(assert (=> b!985916 (= e!555842 tp_is_empty!23091)))

(declare-fun b!985917 () Bool)

(declare-fun res!659804 () Bool)

(declare-fun e!555841 () Bool)

(assert (=> b!985917 (=> (not res!659804) (not e!555841))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62143 0))(
  ( (array!62144 (arr!29925 (Array (_ BitVec 32) (_ BitVec 64))) (size!30405 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62143)

(assert (=> b!985917 (= res!659804 (and (= (size!30404 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30405 _keys!1544) (size!30404 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985918 () Bool)

(assert (=> b!985918 (= e!555841 false)))

(declare-fun lt!437377 () Bool)

(declare-datatypes ((List!20844 0))(
  ( (Nil!20841) (Cons!20840 (h!22002 (_ BitVec 64)) (t!29751 List!20844)) )
))
(declare-fun arrayNoDuplicates!0 (array!62143 (_ BitVec 32) List!20844) Bool)

(assert (=> b!985918 (= lt!437377 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20841))))

(declare-fun res!659803 () Bool)

(assert (=> start!84316 (=> (not res!659803) (not e!555841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84316 (= res!659803 (validMask!0 mask!1948))))

(assert (=> start!84316 e!555841))

(assert (=> start!84316 true))

(declare-fun array_inv!22995 (array!62141) Bool)

(assert (=> start!84316 (and (array_inv!22995 _values!1278) e!555843)))

(declare-fun array_inv!22996 (array!62143) Bool)

(assert (=> start!84316 (array_inv!22996 _keys!1544)))

(declare-fun b!985919 () Bool)

(declare-fun res!659805 () Bool)

(assert (=> b!985919 (=> (not res!659805) (not e!555841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62143 (_ BitVec 32)) Bool)

(assert (=> b!985919 (= res!659805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985920 () Bool)

(declare-fun e!555844 () Bool)

(assert (=> b!985920 (= e!555844 tp_is_empty!23091)))

(declare-fun mapNonEmpty!36665 () Bool)

(declare-fun tp!69521 () Bool)

(assert (=> mapNonEmpty!36665 (= mapRes!36665 (and tp!69521 e!555844))))

(declare-fun mapRest!36665 () (Array (_ BitVec 32) ValueCell!11064))

(declare-fun mapKey!36665 () (_ BitVec 32))

(declare-fun mapValue!36665 () ValueCell!11064)

(assert (=> mapNonEmpty!36665 (= (arr!29924 _values!1278) (store mapRest!36665 mapKey!36665 mapValue!36665))))

(assert (= (and start!84316 res!659803) b!985917))

(assert (= (and b!985917 res!659804) b!985919))

(assert (= (and b!985919 res!659805) b!985918))

(assert (= (and b!985915 condMapEmpty!36665) mapIsEmpty!36665))

(assert (= (and b!985915 (not condMapEmpty!36665)) mapNonEmpty!36665))

(get-info :version)

(assert (= (and mapNonEmpty!36665 ((_ is ValueCellFull!11064) mapValue!36665)) b!985920))

(assert (= (and b!985915 ((_ is ValueCellFull!11064) mapDefault!36665)) b!985916))

(assert (= start!84316 b!985915))

(declare-fun m!912983 () Bool)

(assert (=> b!985918 m!912983))

(declare-fun m!912985 () Bool)

(assert (=> start!84316 m!912985))

(declare-fun m!912987 () Bool)

(assert (=> start!84316 m!912987))

(declare-fun m!912989 () Bool)

(assert (=> start!84316 m!912989))

(declare-fun m!912991 () Bool)

(assert (=> b!985919 m!912991))

(declare-fun m!912993 () Bool)

(assert (=> mapNonEmpty!36665 m!912993))

(check-sat (not mapNonEmpty!36665) (not b!985918) (not start!84316) tp_is_empty!23091 (not b!985919))
(check-sat)
