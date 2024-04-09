; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106934 () Bool)

(assert start!106934)

(declare-fun mapNonEmpty!50512 () Bool)

(declare-fun mapRes!50512 () Bool)

(declare-fun tp!96692 () Bool)

(declare-fun e!722447 () Bool)

(assert (=> mapNonEmpty!50512 (= mapRes!50512 (and tp!96692 e!722447))))

(declare-datatypes ((V!48701 0))(
  ( (V!48702 (val!16390 Int)) )
))
(declare-datatypes ((ValueCell!15462 0))(
  ( (ValueCellFull!15462 (v!19024 V!48701)) (EmptyCell!15462) )
))
(declare-datatypes ((array!82509 0))(
  ( (array!82510 (arr!39792 (Array (_ BitVec 32) ValueCell!15462)) (size!40329 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82509)

(declare-fun mapRest!50512 () (Array (_ BitVec 32) ValueCell!15462))

(declare-fun mapKey!50512 () (_ BitVec 32))

(declare-fun mapValue!50512 () ValueCell!15462)

(assert (=> mapNonEmpty!50512 (= (arr!39792 _values!1134) (store mapRest!50512 mapKey!50512 mapValue!50512))))

(declare-fun b!1267943 () Bool)

(declare-fun e!722448 () Bool)

(declare-fun tp_is_empty!32631 () Bool)

(assert (=> b!1267943 (= e!722448 tp_is_empty!32631)))

(declare-fun b!1267944 () Bool)

(declare-fun e!722444 () Bool)

(assert (=> b!1267944 (= e!722444 (and e!722448 mapRes!50512))))

(declare-fun condMapEmpty!50512 () Bool)

(declare-fun mapDefault!50512 () ValueCell!15462)

(assert (=> b!1267944 (= condMapEmpty!50512 (= (arr!39792 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15462)) mapDefault!50512)))))

(declare-fun res!844068 () Bool)

(declare-fun e!722445 () Bool)

(assert (=> start!106934 (=> (not res!844068) (not e!722445))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106934 (= res!844068 (validMask!0 mask!1730))))

(assert (=> start!106934 e!722445))

(declare-fun array_inv!30239 (array!82509) Bool)

(assert (=> start!106934 (and (array_inv!30239 _values!1134) e!722444)))

(assert (=> start!106934 true))

(declare-datatypes ((array!82511 0))(
  ( (array!82512 (arr!39793 (Array (_ BitVec 32) (_ BitVec 64))) (size!40330 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82511)

(declare-fun array_inv!30240 (array!82511) Bool)

(assert (=> start!106934 (array_inv!30240 _keys!1364)))

(declare-fun mapIsEmpty!50512 () Bool)

(assert (=> mapIsEmpty!50512 mapRes!50512))

(declare-fun b!1267945 () Bool)

(assert (=> b!1267945 (= e!722447 tp_is_empty!32631)))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun b!1267946 () Bool)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1267946 (= e!722445 (and (= (size!40329 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40330 _keys!1364) (size!40329 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011) (= (size!40330 _keys!1364) (bvadd #b00000000000000000000000000000001 mask!1730)) (bvsgt #b00000000000000000000000000000000 (size!40330 _keys!1364))))))

(assert (= (and start!106934 res!844068) b!1267946))

(assert (= (and b!1267944 condMapEmpty!50512) mapIsEmpty!50512))

(assert (= (and b!1267944 (not condMapEmpty!50512)) mapNonEmpty!50512))

(get-info :version)

(assert (= (and mapNonEmpty!50512 ((_ is ValueCellFull!15462) mapValue!50512)) b!1267945))

(assert (= (and b!1267944 ((_ is ValueCellFull!15462) mapDefault!50512)) b!1267943))

(assert (= start!106934 b!1267944))

(declare-fun m!1166985 () Bool)

(assert (=> mapNonEmpty!50512 m!1166985))

(declare-fun m!1166987 () Bool)

(assert (=> start!106934 m!1166987))

(declare-fun m!1166989 () Bool)

(assert (=> start!106934 m!1166989))

(declare-fun m!1166991 () Bool)

(assert (=> start!106934 m!1166991))

(check-sat (not start!106934) (not mapNonEmpty!50512) tp_is_empty!32631)
(check-sat)
(get-model)

(declare-fun d!139549 () Bool)

(assert (=> d!139549 (= (validMask!0 mask!1730) (and (or (= mask!1730 #b00000000000000000000000000000111) (= mask!1730 #b00000000000000000000000000001111) (= mask!1730 #b00000000000000000000000000011111) (= mask!1730 #b00000000000000000000000000111111) (= mask!1730 #b00000000000000000000000001111111) (= mask!1730 #b00000000000000000000000011111111) (= mask!1730 #b00000000000000000000000111111111) (= mask!1730 #b00000000000000000000001111111111) (= mask!1730 #b00000000000000000000011111111111) (= mask!1730 #b00000000000000000000111111111111) (= mask!1730 #b00000000000000000001111111111111) (= mask!1730 #b00000000000000000011111111111111) (= mask!1730 #b00000000000000000111111111111111) (= mask!1730 #b00000000000000001111111111111111) (= mask!1730 #b00000000000000011111111111111111) (= mask!1730 #b00000000000000111111111111111111) (= mask!1730 #b00000000000001111111111111111111) (= mask!1730 #b00000000000011111111111111111111) (= mask!1730 #b00000000000111111111111111111111) (= mask!1730 #b00000000001111111111111111111111) (= mask!1730 #b00000000011111111111111111111111) (= mask!1730 #b00000000111111111111111111111111) (= mask!1730 #b00000001111111111111111111111111) (= mask!1730 #b00000011111111111111111111111111) (= mask!1730 #b00000111111111111111111111111111) (= mask!1730 #b00001111111111111111111111111111) (= mask!1730 #b00011111111111111111111111111111) (= mask!1730 #b00111111111111111111111111111111)) (bvsle mask!1730 #b00111111111111111111111111111111)))))

(assert (=> start!106934 d!139549))

(declare-fun d!139551 () Bool)

(assert (=> d!139551 (= (array_inv!30239 _values!1134) (bvsge (size!40329 _values!1134) #b00000000000000000000000000000000))))

(assert (=> start!106934 d!139551))

(declare-fun d!139553 () Bool)

(assert (=> d!139553 (= (array_inv!30240 _keys!1364) (bvsge (size!40330 _keys!1364) #b00000000000000000000000000000000))))

(assert (=> start!106934 d!139553))

(declare-fun mapIsEmpty!50518 () Bool)

(declare-fun mapRes!50518 () Bool)

(assert (=> mapIsEmpty!50518 mapRes!50518))

(declare-fun b!1267965 () Bool)

(declare-fun e!722469 () Bool)

(assert (=> b!1267965 (= e!722469 tp_is_empty!32631)))

(declare-fun condMapEmpty!50518 () Bool)

(declare-fun mapDefault!50518 () ValueCell!15462)

(assert (=> mapNonEmpty!50512 (= condMapEmpty!50518 (= mapRest!50512 ((as const (Array (_ BitVec 32) ValueCell!15462)) mapDefault!50518)))))

(declare-fun e!722468 () Bool)

(assert (=> mapNonEmpty!50512 (= tp!96692 (and e!722468 mapRes!50518))))

(declare-fun b!1267966 () Bool)

(assert (=> b!1267966 (= e!722468 tp_is_empty!32631)))

(declare-fun mapNonEmpty!50518 () Bool)

(declare-fun tp!96698 () Bool)

(assert (=> mapNonEmpty!50518 (= mapRes!50518 (and tp!96698 e!722469))))

(declare-fun mapValue!50518 () ValueCell!15462)

(declare-fun mapRest!50518 () (Array (_ BitVec 32) ValueCell!15462))

(declare-fun mapKey!50518 () (_ BitVec 32))

(assert (=> mapNonEmpty!50518 (= mapRest!50512 (store mapRest!50518 mapKey!50518 mapValue!50518))))

(assert (= (and mapNonEmpty!50512 condMapEmpty!50518) mapIsEmpty!50518))

(assert (= (and mapNonEmpty!50512 (not condMapEmpty!50518)) mapNonEmpty!50518))

(assert (= (and mapNonEmpty!50518 ((_ is ValueCellFull!15462) mapValue!50518)) b!1267965))

(assert (= (and mapNonEmpty!50512 ((_ is ValueCellFull!15462) mapDefault!50518)) b!1267966))

(declare-fun m!1167001 () Bool)

(assert (=> mapNonEmpty!50518 m!1167001))

(check-sat (not mapNonEmpty!50518) tp_is_empty!32631)
(check-sat)
