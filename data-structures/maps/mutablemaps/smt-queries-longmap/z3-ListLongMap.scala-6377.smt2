; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82028 () Bool)

(assert start!82028)

(declare-fun res!640385 () Bool)

(declare-fun e!538851 () Bool)

(assert (=> start!82028 (=> (not res!640385) (not e!538851))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82028 (= res!640385 (validMask!0 mask!1823))))

(assert (=> start!82028 e!538851))

(assert (=> start!82028 true))

(declare-datatypes ((V!33035 0))(
  ( (V!33036 (val!10570 Int)) )
))
(declare-datatypes ((ValueCell!10038 0))(
  ( (ValueCellFull!10038 (v!13125 V!33035)) (EmptyCell!10038) )
))
(declare-datatypes ((array!58197 0))(
  ( (array!58198 (arr!27974 (Array (_ BitVec 32) ValueCell!10038)) (size!28454 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58197)

(declare-fun e!538849 () Bool)

(declare-fun array_inv!21647 (array!58197) Bool)

(assert (=> start!82028 (and (array_inv!21647 _values!1197) e!538849)))

(declare-datatypes ((array!58199 0))(
  ( (array!58200 (arr!27975 (Array (_ BitVec 32) (_ BitVec 64))) (size!28455 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58199)

(declare-fun array_inv!21648 (array!58199) Bool)

(assert (=> start!82028 (array_inv!21648 _keys!1441)))

(declare-fun b!956233 () Bool)

(declare-fun res!640386 () Bool)

(assert (=> b!956233 (=> (not res!640386) (not e!538851))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956233 (= res!640386 (and (= (size!28454 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28455 _keys!1441) (size!28454 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33520 () Bool)

(declare-fun mapRes!33520 () Bool)

(declare-fun tp!64099 () Bool)

(declare-fun e!538847 () Bool)

(assert (=> mapNonEmpty!33520 (= mapRes!33520 (and tp!64099 e!538847))))

(declare-fun mapRest!33520 () (Array (_ BitVec 32) ValueCell!10038))

(declare-fun mapValue!33520 () ValueCell!10038)

(declare-fun mapKey!33520 () (_ BitVec 32))

(assert (=> mapNonEmpty!33520 (= (arr!27974 _values!1197) (store mapRest!33520 mapKey!33520 mapValue!33520))))

(declare-fun b!956234 () Bool)

(assert (=> b!956234 (= e!538851 false)))

(declare-fun lt!430081 () Bool)

(declare-datatypes ((List!19624 0))(
  ( (Nil!19621) (Cons!19620 (h!20782 (_ BitVec 64)) (t!27993 List!19624)) )
))
(declare-fun arrayNoDuplicates!0 (array!58199 (_ BitVec 32) List!19624) Bool)

(assert (=> b!956234 (= lt!430081 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19621))))

(declare-fun b!956235 () Bool)

(declare-fun tp_is_empty!21039 () Bool)

(assert (=> b!956235 (= e!538847 tp_is_empty!21039)))

(declare-fun mapIsEmpty!33520 () Bool)

(assert (=> mapIsEmpty!33520 mapRes!33520))

(declare-fun b!956236 () Bool)

(declare-fun e!538850 () Bool)

(assert (=> b!956236 (= e!538849 (and e!538850 mapRes!33520))))

(declare-fun condMapEmpty!33520 () Bool)

(declare-fun mapDefault!33520 () ValueCell!10038)

(assert (=> b!956236 (= condMapEmpty!33520 (= (arr!27974 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10038)) mapDefault!33520)))))

(declare-fun b!956237 () Bool)

(declare-fun res!640387 () Bool)

(assert (=> b!956237 (=> (not res!640387) (not e!538851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58199 (_ BitVec 32)) Bool)

(assert (=> b!956237 (= res!640387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956238 () Bool)

(assert (=> b!956238 (= e!538850 tp_is_empty!21039)))

(assert (= (and start!82028 res!640385) b!956233))

(assert (= (and b!956233 res!640386) b!956237))

(assert (= (and b!956237 res!640387) b!956234))

(assert (= (and b!956236 condMapEmpty!33520) mapIsEmpty!33520))

(assert (= (and b!956236 (not condMapEmpty!33520)) mapNonEmpty!33520))

(get-info :version)

(assert (= (and mapNonEmpty!33520 ((_ is ValueCellFull!10038) mapValue!33520)) b!956235))

(assert (= (and b!956236 ((_ is ValueCellFull!10038) mapDefault!33520)) b!956238))

(assert (= start!82028 b!956236))

(declare-fun m!887637 () Bool)

(assert (=> start!82028 m!887637))

(declare-fun m!887639 () Bool)

(assert (=> start!82028 m!887639))

(declare-fun m!887641 () Bool)

(assert (=> start!82028 m!887641))

(declare-fun m!887643 () Bool)

(assert (=> mapNonEmpty!33520 m!887643))

(declare-fun m!887645 () Bool)

(assert (=> b!956234 m!887645))

(declare-fun m!887647 () Bool)

(assert (=> b!956237 m!887647))

(check-sat (not b!956234) (not mapNonEmpty!33520) (not b!956237) tp_is_empty!21039 (not start!82028))
(check-sat)
