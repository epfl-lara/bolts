; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108078 () Bool)

(assert start!108078)

(declare-fun mapNonEmpty!51500 () Bool)

(declare-fun mapRes!51500 () Bool)

(declare-fun tp!98259 () Bool)

(declare-fun e!728590 () Bool)

(assert (=> mapNonEmpty!51500 (= mapRes!51500 (and tp!98259 e!728590))))

(declare-datatypes ((V!49523 0))(
  ( (V!49524 (val!16732 Int)) )
))
(declare-datatypes ((ValueCell!15759 0))(
  ( (ValueCellFull!15759 (v!19327 V!49523)) (EmptyCell!15759) )
))
(declare-fun mapValue!51500 () ValueCell!15759)

(declare-fun mapKey!51500 () (_ BitVec 32))

(declare-fun mapRest!51500 () (Array (_ BitVec 32) ValueCell!15759))

(declare-datatypes ((array!83681 0))(
  ( (array!83682 (arr!40348 (Array (_ BitVec 32) ValueCell!15759)) (size!40899 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83681)

(assert (=> mapNonEmpty!51500 (= (arr!40348 _values!1187) (store mapRest!51500 mapKey!51500 mapValue!51500))))

(declare-fun b!1275974 () Bool)

(declare-fun e!728591 () Bool)

(declare-fun tp_is_empty!33315 () Bool)

(assert (=> b!1275974 (= e!728591 tp_is_empty!33315)))

(declare-fun b!1275975 () Bool)

(declare-fun e!728593 () Bool)

(assert (=> b!1275975 (= e!728593 false)))

(declare-fun lt!575376 () Bool)

(declare-datatypes ((array!83683 0))(
  ( (array!83684 (arr!40349 (Array (_ BitVec 32) (_ BitVec 64))) (size!40900 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83683)

(declare-datatypes ((List!28794 0))(
  ( (Nil!28791) (Cons!28790 (h!29999 (_ BitVec 64)) (t!42337 List!28794)) )
))
(declare-fun arrayNoDuplicates!0 (array!83683 (_ BitVec 32) List!28794) Bool)

(assert (=> b!1275975 (= lt!575376 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28791))))

(declare-fun b!1275976 () Bool)

(assert (=> b!1275976 (= e!728590 tp_is_empty!33315)))

(declare-fun b!1275977 () Bool)

(declare-fun res!848101 () Bool)

(assert (=> b!1275977 (=> (not res!848101) (not e!728593))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275977 (= res!848101 (and (= (size!40899 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40900 _keys!1427) (size!40899 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun res!848102 () Bool)

(assert (=> start!108078 (=> (not res!848102) (not e!728593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108078 (= res!848102 (validMask!0 mask!1805))))

(assert (=> start!108078 e!728593))

(assert (=> start!108078 true))

(declare-fun e!728594 () Bool)

(declare-fun array_inv!30623 (array!83681) Bool)

(assert (=> start!108078 (and (array_inv!30623 _values!1187) e!728594)))

(declare-fun array_inv!30624 (array!83683) Bool)

(assert (=> start!108078 (array_inv!30624 _keys!1427)))

(declare-fun mapIsEmpty!51500 () Bool)

(assert (=> mapIsEmpty!51500 mapRes!51500))

(declare-fun b!1275978 () Bool)

(declare-fun res!848103 () Bool)

(assert (=> b!1275978 (=> (not res!848103) (not e!728593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83683 (_ BitVec 32)) Bool)

(assert (=> b!1275978 (= res!848103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275979 () Bool)

(assert (=> b!1275979 (= e!728594 (and e!728591 mapRes!51500))))

(declare-fun condMapEmpty!51500 () Bool)

(declare-fun mapDefault!51500 () ValueCell!15759)

(assert (=> b!1275979 (= condMapEmpty!51500 (= (arr!40348 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15759)) mapDefault!51500)))))

(assert (= (and start!108078 res!848102) b!1275977))

(assert (= (and b!1275977 res!848101) b!1275978))

(assert (= (and b!1275978 res!848103) b!1275975))

(assert (= (and b!1275979 condMapEmpty!51500) mapIsEmpty!51500))

(assert (= (and b!1275979 (not condMapEmpty!51500)) mapNonEmpty!51500))

(get-info :version)

(assert (= (and mapNonEmpty!51500 ((_ is ValueCellFull!15759) mapValue!51500)) b!1275976))

(assert (= (and b!1275979 ((_ is ValueCellFull!15759) mapDefault!51500)) b!1275974))

(assert (= start!108078 b!1275979))

(declare-fun m!1172045 () Bool)

(assert (=> mapNonEmpty!51500 m!1172045))

(declare-fun m!1172047 () Bool)

(assert (=> b!1275975 m!1172047))

(declare-fun m!1172049 () Bool)

(assert (=> start!108078 m!1172049))

(declare-fun m!1172051 () Bool)

(assert (=> start!108078 m!1172051))

(declare-fun m!1172053 () Bool)

(assert (=> start!108078 m!1172053))

(declare-fun m!1172055 () Bool)

(assert (=> b!1275978 m!1172055))

(check-sat (not start!108078) (not b!1275978) tp_is_empty!33315 (not b!1275975) (not mapNonEmpty!51500))
(check-sat)
