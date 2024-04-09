; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3674 () Bool)

(assert start!3674)

(declare-datatypes ((V!1213 0))(
  ( (V!1214 (val!547 Int)) )
))
(declare-datatypes ((ValueCell!321 0))(
  ( (ValueCellFull!321 (v!1632 V!1213)) (EmptyCell!321) )
))
(declare-datatypes ((array!1317 0))(
  ( (array!1318 (arr!621 (Array (_ BitVec 32) ValueCell!321)) (size!722 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1317)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun b!25785 () Bool)

(declare-datatypes ((array!1319 0))(
  ( (array!1320 (arr!622 (Array (_ BitVec 32) (_ BitVec 64))) (size!723 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1319)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun e!16673 () Bool)

(assert (=> b!25785 (= e!16673 (and (= (size!722 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!723 _keys!1833) (size!722 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011) (not (= (size!723 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294)))))))

(declare-fun b!25786 () Bool)

(declare-fun e!16676 () Bool)

(declare-fun tp_is_empty!1041 () Bool)

(assert (=> b!25786 (= e!16676 tp_is_empty!1041)))

(declare-fun res!15359 () Bool)

(assert (=> start!3674 (=> (not res!15359) (not e!16673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3674 (= res!15359 (validMask!0 mask!2294))))

(assert (=> start!3674 e!16673))

(assert (=> start!3674 true))

(declare-fun e!16674 () Bool)

(declare-fun array_inv!435 (array!1317) Bool)

(assert (=> start!3674 (and (array_inv!435 _values!1501) e!16674)))

(declare-fun array_inv!436 (array!1319) Bool)

(assert (=> start!3674 (array_inv!436 _keys!1833)))

(declare-fun b!25787 () Bool)

(declare-fun e!16675 () Bool)

(assert (=> b!25787 (= e!16675 tp_is_empty!1041)))

(declare-fun b!25788 () Bool)

(declare-fun mapRes!1063 () Bool)

(assert (=> b!25788 (= e!16674 (and e!16675 mapRes!1063))))

(declare-fun condMapEmpty!1063 () Bool)

(declare-fun mapDefault!1063 () ValueCell!321)

(assert (=> b!25788 (= condMapEmpty!1063 (= (arr!621 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!321)) mapDefault!1063)))))

(declare-fun mapIsEmpty!1063 () Bool)

(assert (=> mapIsEmpty!1063 mapRes!1063))

(declare-fun mapNonEmpty!1063 () Bool)

(declare-fun tp!3583 () Bool)

(assert (=> mapNonEmpty!1063 (= mapRes!1063 (and tp!3583 e!16676))))

(declare-fun mapKey!1063 () (_ BitVec 32))

(declare-fun mapValue!1063 () ValueCell!321)

(declare-fun mapRest!1063 () (Array (_ BitVec 32) ValueCell!321))

(assert (=> mapNonEmpty!1063 (= (arr!621 _values!1501) (store mapRest!1063 mapKey!1063 mapValue!1063))))

(assert (= (and start!3674 res!15359) b!25785))

(assert (= (and b!25788 condMapEmpty!1063) mapIsEmpty!1063))

(assert (= (and b!25788 (not condMapEmpty!1063)) mapNonEmpty!1063))

(get-info :version)

(assert (= (and mapNonEmpty!1063 ((_ is ValueCellFull!321) mapValue!1063)) b!25786))

(assert (= (and b!25788 ((_ is ValueCellFull!321) mapDefault!1063)) b!25787))

(assert (= start!3674 b!25788))

(declare-fun m!20813 () Bool)

(assert (=> start!3674 m!20813))

(declare-fun m!20815 () Bool)

(assert (=> start!3674 m!20815))

(declare-fun m!20817 () Bool)

(assert (=> start!3674 m!20817))

(declare-fun m!20819 () Bool)

(assert (=> mapNonEmpty!1063 m!20819))

(check-sat (not start!3674) (not mapNonEmpty!1063) tp_is_empty!1041)
(check-sat)
