; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458 () Bool)

(assert start!458)

(declare-fun b!2717 () Bool)

(declare-fun e!1064 () Bool)

(declare-fun tp_is_empty!63 () Bool)

(assert (=> b!2717 (= e!1064 tp_is_empty!63)))

(declare-fun mapNonEmpty!35 () Bool)

(declare-fun mapRes!35 () Bool)

(declare-fun tp!275 () Bool)

(declare-fun e!1065 () Bool)

(assert (=> mapNonEmpty!35 (= mapRes!35 (and tp!275 e!1065))))

(declare-datatypes ((V!261 0))(
  ( (V!262 (val!37 Int)) )
))
(declare-datatypes ((ValueCell!15 0))(
  ( (ValueCellFull!15 (v!1123 V!261)) (EmptyCell!15) )
))
(declare-datatypes ((array!53 0))(
  ( (array!54 (arr!25 (Array (_ BitVec 32) ValueCell!15)) (size!87 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!53)

(declare-fun mapKey!35 () (_ BitVec 32))

(declare-fun mapRest!35 () (Array (_ BitVec 32) ValueCell!15))

(declare-fun mapValue!35 () ValueCell!15)

(assert (=> mapNonEmpty!35 (= (arr!25 _values!1492) (store mapRest!35 mapKey!35 mapValue!35))))

(declare-fun mapIsEmpty!35 () Bool)

(assert (=> mapIsEmpty!35 mapRes!35))

(declare-fun b!2718 () Bool)

(assert (=> b!2718 (= e!1065 tp_is_empty!63)))

(declare-fun b!2719 () Bool)

(declare-fun e!1068 () Bool)

(assert (=> b!2719 (= e!1068 (and e!1064 mapRes!35))))

(declare-fun condMapEmpty!35 () Bool)

(declare-fun mapDefault!35 () ValueCell!15)

(assert (=> b!2719 (= condMapEmpty!35 (= (arr!25 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!15)) mapDefault!35)))))

(declare-fun res!4814 () Bool)

(declare-fun e!1066 () Bool)

(assert (=> start!458 (=> (not res!4814) (not e!1066))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!458 (= res!4814 (validMask!0 mask!2250))))

(assert (=> start!458 e!1066))

(assert (=> start!458 true))

(declare-fun array_inv!13 (array!53) Bool)

(assert (=> start!458 (and (array_inv!13 _values!1492) e!1068)))

(declare-datatypes ((array!55 0))(
  ( (array!56 (arr!26 (Array (_ BitVec 32) (_ BitVec 64))) (size!88 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!55)

(declare-fun array_inv!14 (array!55) Bool)

(assert (=> start!458 (array_inv!14 _keys!1806)))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun b!2720 () Bool)

(assert (=> b!2720 (= e!1066 (and (= (size!87 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!88 _keys!1806) (size!87 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011) (= (size!88 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250)) (bvsgt #b00000000000000000000000000000000 (size!88 _keys!1806))))))

(assert (= (and start!458 res!4814) b!2720))

(assert (= (and b!2719 condMapEmpty!35) mapIsEmpty!35))

(assert (= (and b!2719 (not condMapEmpty!35)) mapNonEmpty!35))

(get-info :version)

(assert (= (and mapNonEmpty!35 ((_ is ValueCellFull!15) mapValue!35)) b!2718))

(assert (= (and b!2719 ((_ is ValueCellFull!15) mapDefault!35)) b!2717))

(assert (= start!458 b!2719))

(declare-fun m!1197 () Bool)

(assert (=> mapNonEmpty!35 m!1197))

(declare-fun m!1199 () Bool)

(assert (=> start!458 m!1199))

(declare-fun m!1201 () Bool)

(assert (=> start!458 m!1201))

(declare-fun m!1203 () Bool)

(assert (=> start!458 m!1203))

(check-sat (not start!458) (not mapNonEmpty!35) tp_is_empty!63)
(check-sat)
(get-model)

(declare-fun d!565 () Bool)

(assert (=> d!565 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!458 d!565))

(declare-fun d!567 () Bool)

(assert (=> d!567 (= (array_inv!13 _values!1492) (bvsge (size!87 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!458 d!567))

(declare-fun d!569 () Bool)

(assert (=> d!569 (= (array_inv!14 _keys!1806) (bvsge (size!88 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!458 d!569))

(declare-fun mapNonEmpty!41 () Bool)

(declare-fun mapRes!41 () Bool)

(declare-fun tp!281 () Bool)

(declare-fun e!1088 () Bool)

(assert (=> mapNonEmpty!41 (= mapRes!41 (and tp!281 e!1088))))

(declare-fun mapKey!41 () (_ BitVec 32))

(declare-fun mapValue!41 () ValueCell!15)

(declare-fun mapRest!41 () (Array (_ BitVec 32) ValueCell!15))

(assert (=> mapNonEmpty!41 (= mapRest!35 (store mapRest!41 mapKey!41 mapValue!41))))

(declare-fun b!2739 () Bool)

(assert (=> b!2739 (= e!1088 tp_is_empty!63)))

(declare-fun mapIsEmpty!41 () Bool)

(assert (=> mapIsEmpty!41 mapRes!41))

(declare-fun condMapEmpty!41 () Bool)

(declare-fun mapDefault!41 () ValueCell!15)

(assert (=> mapNonEmpty!35 (= condMapEmpty!41 (= mapRest!35 ((as const (Array (_ BitVec 32) ValueCell!15)) mapDefault!41)))))

(declare-fun e!1089 () Bool)

(assert (=> mapNonEmpty!35 (= tp!275 (and e!1089 mapRes!41))))

(declare-fun b!2740 () Bool)

(assert (=> b!2740 (= e!1089 tp_is_empty!63)))

(assert (= (and mapNonEmpty!35 condMapEmpty!41) mapIsEmpty!41))

(assert (= (and mapNonEmpty!35 (not condMapEmpty!41)) mapNonEmpty!41))

(assert (= (and mapNonEmpty!41 ((_ is ValueCellFull!15) mapValue!41)) b!2739))

(assert (= (and mapNonEmpty!35 ((_ is ValueCellFull!15) mapDefault!41)) b!2740))

(declare-fun m!1213 () Bool)

(assert (=> mapNonEmpty!41 m!1213))

(check-sat (not mapNonEmpty!41) tp_is_empty!63)
(check-sat)
