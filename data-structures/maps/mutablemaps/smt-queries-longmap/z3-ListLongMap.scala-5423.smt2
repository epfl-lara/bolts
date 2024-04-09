; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72352 () Bool)

(assert start!72352)

(declare-fun b!837773 () Bool)

(declare-fun e!467673 () Bool)

(assert (=> b!837773 (= e!467673 false)))

(declare-fun lt!380574 () Bool)

(declare-datatypes ((array!47010 0))(
  ( (array!47011 (arr!22532 (Array (_ BitVec 32) (_ BitVec 64))) (size!22973 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47010)

(declare-datatypes ((List!16096 0))(
  ( (Nil!16093) (Cons!16092 (h!17223 (_ BitVec 64)) (t!22475 List!16096)) )
))
(declare-fun arrayNoDuplicates!0 (array!47010 (_ BitVec 32) List!16096) Bool)

(assert (=> b!837773 (= lt!380574 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16093))))

(declare-fun b!837774 () Bool)

(declare-fun res!569837 () Bool)

(assert (=> b!837774 (=> (not res!569837) (not e!467673))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837774 (= res!569837 (validMask!0 mask!1196))))

(declare-fun b!837775 () Bool)

(declare-fun e!467675 () Bool)

(declare-fun tp_is_empty!15375 () Bool)

(assert (=> b!837775 (= e!467675 tp_is_empty!15375)))

(declare-fun mapIsEmpty!24662 () Bool)

(declare-fun mapRes!24662 () Bool)

(assert (=> mapIsEmpty!24662 mapRes!24662))

(declare-fun b!837776 () Bool)

(declare-fun e!467676 () Bool)

(declare-fun e!467672 () Bool)

(assert (=> b!837776 (= e!467676 (and e!467672 mapRes!24662))))

(declare-fun condMapEmpty!24662 () Bool)

(declare-datatypes ((V!25547 0))(
  ( (V!25548 (val!7735 Int)) )
))
(declare-datatypes ((ValueCell!7248 0))(
  ( (ValueCellFull!7248 (v!10156 V!25547)) (EmptyCell!7248) )
))
(declare-datatypes ((array!47012 0))(
  ( (array!47013 (arr!22533 (Array (_ BitVec 32) ValueCell!7248)) (size!22974 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47012)

(declare-fun mapDefault!24662 () ValueCell!7248)

(assert (=> b!837776 (= condMapEmpty!24662 (= (arr!22533 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7248)) mapDefault!24662)))))

(declare-fun b!837777 () Bool)

(declare-fun res!569838 () Bool)

(assert (=> b!837777 (=> (not res!569838) (not e!467673))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837777 (= res!569838 (and (= (size!22974 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22973 _keys!868) (size!22974 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!569835 () Bool)

(assert (=> start!72352 (=> (not res!569835) (not e!467673))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72352 (= res!569835 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22973 _keys!868))))))

(assert (=> start!72352 e!467673))

(assert (=> start!72352 true))

(declare-fun array_inv!17926 (array!47010) Bool)

(assert (=> start!72352 (array_inv!17926 _keys!868)))

(declare-fun array_inv!17927 (array!47012) Bool)

(assert (=> start!72352 (and (array_inv!17927 _values!688) e!467676)))

(declare-fun mapNonEmpty!24662 () Bool)

(declare-fun tp!47657 () Bool)

(assert (=> mapNonEmpty!24662 (= mapRes!24662 (and tp!47657 e!467675))))

(declare-fun mapRest!24662 () (Array (_ BitVec 32) ValueCell!7248))

(declare-fun mapValue!24662 () ValueCell!7248)

(declare-fun mapKey!24662 () (_ BitVec 32))

(assert (=> mapNonEmpty!24662 (= (arr!22533 _values!688) (store mapRest!24662 mapKey!24662 mapValue!24662))))

(declare-fun b!837778 () Bool)

(assert (=> b!837778 (= e!467672 tp_is_empty!15375)))

(declare-fun b!837779 () Bool)

(declare-fun res!569836 () Bool)

(assert (=> b!837779 (=> (not res!569836) (not e!467673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47010 (_ BitVec 32)) Bool)

(assert (=> b!837779 (= res!569836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72352 res!569835) b!837774))

(assert (= (and b!837774 res!569837) b!837777))

(assert (= (and b!837777 res!569838) b!837779))

(assert (= (and b!837779 res!569836) b!837773))

(assert (= (and b!837776 condMapEmpty!24662) mapIsEmpty!24662))

(assert (= (and b!837776 (not condMapEmpty!24662)) mapNonEmpty!24662))

(get-info :version)

(assert (= (and mapNonEmpty!24662 ((_ is ValueCellFull!7248) mapValue!24662)) b!837775))

(assert (= (and b!837776 ((_ is ValueCellFull!7248) mapDefault!24662)) b!837778))

(assert (= start!72352 b!837776))

(declare-fun m!782525 () Bool)

(assert (=> mapNonEmpty!24662 m!782525))

(declare-fun m!782527 () Bool)

(assert (=> start!72352 m!782527))

(declare-fun m!782529 () Bool)

(assert (=> start!72352 m!782529))

(declare-fun m!782531 () Bool)

(assert (=> b!837779 m!782531))

(declare-fun m!782533 () Bool)

(assert (=> b!837774 m!782533))

(declare-fun m!782535 () Bool)

(assert (=> b!837773 m!782535))

(check-sat (not start!72352) (not b!837779) (not b!837774) (not mapNonEmpty!24662) tp_is_empty!15375 (not b!837773))
(check-sat)
