; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43230 () Bool)

(assert start!43230)

(declare-fun b!478789 () Bool)

(declare-fun res!285695 () Bool)

(declare-fun e!281623 () Bool)

(assert (=> b!478789 (=> (not res!285695) (not e!281623))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30863 0))(
  ( (array!30864 (arr!14836 (Array (_ BitVec 32) (_ BitVec 64))) (size!15194 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30863)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19219 0))(
  ( (V!19220 (val!6853 Int)) )
))
(declare-datatypes ((ValueCell!6444 0))(
  ( (ValueCellFull!6444 (v!9138 V!19219)) (EmptyCell!6444) )
))
(declare-datatypes ((array!30865 0))(
  ( (array!30866 (arr!14837 (Array (_ BitVec 32) ValueCell!6444)) (size!15195 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30865)

(assert (=> b!478789 (= res!285695 (and (= (size!15195 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15194 _keys!1874) (size!15195 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22111 () Bool)

(declare-fun mapRes!22111 () Bool)

(declare-fun tp!42586 () Bool)

(declare-fun e!281625 () Bool)

(assert (=> mapNonEmpty!22111 (= mapRes!22111 (and tp!42586 e!281625))))

(declare-fun mapValue!22111 () ValueCell!6444)

(declare-fun mapRest!22111 () (Array (_ BitVec 32) ValueCell!6444))

(declare-fun mapKey!22111 () (_ BitVec 32))

(assert (=> mapNonEmpty!22111 (= (arr!14837 _values!1516) (store mapRest!22111 mapKey!22111 mapValue!22111))))

(declare-fun b!478790 () Bool)

(declare-fun e!281626 () Bool)

(declare-fun e!281622 () Bool)

(assert (=> b!478790 (= e!281626 (and e!281622 mapRes!22111))))

(declare-fun condMapEmpty!22111 () Bool)

(declare-fun mapDefault!22111 () ValueCell!6444)

(assert (=> b!478790 (= condMapEmpty!22111 (= (arr!14837 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6444)) mapDefault!22111)))))

(declare-fun mapIsEmpty!22111 () Bool)

(assert (=> mapIsEmpty!22111 mapRes!22111))

(declare-fun b!478791 () Bool)

(declare-fun res!285694 () Bool)

(assert (=> b!478791 (=> (not res!285694) (not e!281623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30863 (_ BitVec 32)) Bool)

(assert (=> b!478791 (= res!285694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun res!285696 () Bool)

(assert (=> start!43230 (=> (not res!285696) (not e!281623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43230 (= res!285696 (validMask!0 mask!2352))))

(assert (=> start!43230 e!281623))

(assert (=> start!43230 true))

(declare-fun array_inv!10694 (array!30865) Bool)

(assert (=> start!43230 (and (array_inv!10694 _values!1516) e!281626)))

(declare-fun array_inv!10695 (array!30863) Bool)

(assert (=> start!43230 (array_inv!10695 _keys!1874)))

(declare-fun b!478792 () Bool)

(declare-fun tp_is_empty!13611 () Bool)

(assert (=> b!478792 (= e!281625 tp_is_empty!13611)))

(declare-fun b!478793 () Bool)

(assert (=> b!478793 (= e!281622 tp_is_empty!13611)))

(declare-fun b!478794 () Bool)

(assert (=> b!478794 (= e!281623 false)))

(declare-fun lt!217763 () Bool)

(declare-datatypes ((List!9106 0))(
  ( (Nil!9103) (Cons!9102 (h!9958 (_ BitVec 64)) (t!15320 List!9106)) )
))
(declare-fun arrayNoDuplicates!0 (array!30863 (_ BitVec 32) List!9106) Bool)

(assert (=> b!478794 (= lt!217763 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9103))))

(assert (= (and start!43230 res!285696) b!478789))

(assert (= (and b!478789 res!285695) b!478791))

(assert (= (and b!478791 res!285694) b!478794))

(assert (= (and b!478790 condMapEmpty!22111) mapIsEmpty!22111))

(assert (= (and b!478790 (not condMapEmpty!22111)) mapNonEmpty!22111))

(get-info :version)

(assert (= (and mapNonEmpty!22111 ((_ is ValueCellFull!6444) mapValue!22111)) b!478792))

(assert (= (and b!478790 ((_ is ValueCellFull!6444) mapDefault!22111)) b!478793))

(assert (= start!43230 b!478790))

(declare-fun m!460909 () Bool)

(assert (=> mapNonEmpty!22111 m!460909))

(declare-fun m!460911 () Bool)

(assert (=> b!478791 m!460911))

(declare-fun m!460913 () Bool)

(assert (=> start!43230 m!460913))

(declare-fun m!460915 () Bool)

(assert (=> start!43230 m!460915))

(declare-fun m!460917 () Bool)

(assert (=> start!43230 m!460917))

(declare-fun m!460919 () Bool)

(assert (=> b!478794 m!460919))

(check-sat (not mapNonEmpty!22111) (not b!478794) (not start!43230) (not b!478791) tp_is_empty!13611)
(check-sat)
