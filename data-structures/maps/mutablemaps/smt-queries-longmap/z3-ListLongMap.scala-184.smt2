; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3680 () Bool)

(assert start!3680)

(declare-fun b!25821 () Bool)

(declare-fun e!16718 () Bool)

(declare-fun tp_is_empty!1047 () Bool)

(assert (=> b!25821 (= e!16718 tp_is_empty!1047)))

(declare-fun mapIsEmpty!1072 () Bool)

(declare-fun mapRes!1072 () Bool)

(assert (=> mapIsEmpty!1072 mapRes!1072))

(declare-fun b!25822 () Bool)

(declare-fun e!16720 () Bool)

(assert (=> b!25822 (= e!16720 tp_is_empty!1047)))

(declare-fun res!15368 () Bool)

(declare-fun e!16717 () Bool)

(assert (=> start!3680 (=> (not res!15368) (not e!16717))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3680 (= res!15368 (validMask!0 mask!2294))))

(assert (=> start!3680 e!16717))

(assert (=> start!3680 true))

(declare-datatypes ((V!1221 0))(
  ( (V!1222 (val!550 Int)) )
))
(declare-datatypes ((ValueCell!324 0))(
  ( (ValueCellFull!324 (v!1635 V!1221)) (EmptyCell!324) )
))
(declare-datatypes ((array!1327 0))(
  ( (array!1328 (arr!626 (Array (_ BitVec 32) ValueCell!324)) (size!727 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1327)

(declare-fun e!16719 () Bool)

(declare-fun array_inv!437 (array!1327) Bool)

(assert (=> start!3680 (and (array_inv!437 _values!1501) e!16719)))

(declare-datatypes ((array!1329 0))(
  ( (array!1330 (arr!627 (Array (_ BitVec 32) (_ BitVec 64))) (size!728 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1329)

(declare-fun array_inv!438 (array!1329) Bool)

(assert (=> start!3680 (array_inv!438 _keys!1833)))

(declare-fun b!25823 () Bool)

(assert (=> b!25823 (= e!16719 (and e!16718 mapRes!1072))))

(declare-fun condMapEmpty!1072 () Bool)

(declare-fun mapDefault!1072 () ValueCell!324)

(assert (=> b!25823 (= condMapEmpty!1072 (= (arr!626 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!324)) mapDefault!1072)))))

(declare-fun mapNonEmpty!1072 () Bool)

(declare-fun tp!3592 () Bool)

(assert (=> mapNonEmpty!1072 (= mapRes!1072 (and tp!3592 e!16720))))

(declare-fun mapKey!1072 () (_ BitVec 32))

(declare-fun mapRest!1072 () (Array (_ BitVec 32) ValueCell!324))

(declare-fun mapValue!1072 () ValueCell!324)

(assert (=> mapNonEmpty!1072 (= (arr!626 _values!1501) (store mapRest!1072 mapKey!1072 mapValue!1072))))

(declare-fun b!25824 () Bool)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!25824 (= e!16717 (and (= (size!727 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!728 _keys!1833) (size!727 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011) (= (size!728 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294)) (bvsgt #b00000000000000000000000000000000 (size!728 _keys!1833))))))

(assert (= (and start!3680 res!15368) b!25824))

(assert (= (and b!25823 condMapEmpty!1072) mapIsEmpty!1072))

(assert (= (and b!25823 (not condMapEmpty!1072)) mapNonEmpty!1072))

(get-info :version)

(assert (= (and mapNonEmpty!1072 ((_ is ValueCellFull!324) mapValue!1072)) b!25822))

(assert (= (and b!25823 ((_ is ValueCellFull!324) mapDefault!1072)) b!25821))

(assert (= start!3680 b!25823))

(declare-fun m!20837 () Bool)

(assert (=> start!3680 m!20837))

(declare-fun m!20839 () Bool)

(assert (=> start!3680 m!20839))

(declare-fun m!20841 () Bool)

(assert (=> start!3680 m!20841))

(declare-fun m!20843 () Bool)

(assert (=> mapNonEmpty!1072 m!20843))

(check-sat (not start!3680) (not mapNonEmpty!1072) tp_is_empty!1047)
(check-sat)
(get-model)

(declare-fun d!4829 () Bool)

(assert (=> d!4829 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3680 d!4829))

(declare-fun d!4831 () Bool)

(assert (=> d!4831 (= (array_inv!437 _values!1501) (bvsge (size!727 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3680 d!4831))

(declare-fun d!4833 () Bool)

(assert (=> d!4833 (= (array_inv!438 _keys!1833) (bvsge (size!728 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3680 d!4833))

(declare-fun b!25843 () Bool)

(declare-fun e!16742 () Bool)

(assert (=> b!25843 (= e!16742 tp_is_empty!1047)))

(declare-fun mapIsEmpty!1078 () Bool)

(declare-fun mapRes!1078 () Bool)

(assert (=> mapIsEmpty!1078 mapRes!1078))

(declare-fun condMapEmpty!1078 () Bool)

(declare-fun mapDefault!1078 () ValueCell!324)

(assert (=> mapNonEmpty!1072 (= condMapEmpty!1078 (= mapRest!1072 ((as const (Array (_ BitVec 32) ValueCell!324)) mapDefault!1078)))))

(declare-fun e!16741 () Bool)

(assert (=> mapNonEmpty!1072 (= tp!3592 (and e!16741 mapRes!1078))))

(declare-fun b!25844 () Bool)

(assert (=> b!25844 (= e!16741 tp_is_empty!1047)))

(declare-fun mapNonEmpty!1078 () Bool)

(declare-fun tp!3598 () Bool)

(assert (=> mapNonEmpty!1078 (= mapRes!1078 (and tp!3598 e!16742))))

(declare-fun mapKey!1078 () (_ BitVec 32))

(declare-fun mapValue!1078 () ValueCell!324)

(declare-fun mapRest!1078 () (Array (_ BitVec 32) ValueCell!324))

(assert (=> mapNonEmpty!1078 (= mapRest!1072 (store mapRest!1078 mapKey!1078 mapValue!1078))))

(assert (= (and mapNonEmpty!1072 condMapEmpty!1078) mapIsEmpty!1078))

(assert (= (and mapNonEmpty!1072 (not condMapEmpty!1078)) mapNonEmpty!1078))

(assert (= (and mapNonEmpty!1078 ((_ is ValueCellFull!324) mapValue!1078)) b!25843))

(assert (= (and mapNonEmpty!1072 ((_ is ValueCellFull!324) mapDefault!1078)) b!25844))

(declare-fun m!20853 () Bool)

(assert (=> mapNonEmpty!1078 m!20853))

(check-sat (not mapNonEmpty!1078) tp_is_empty!1047)
(check-sat)
