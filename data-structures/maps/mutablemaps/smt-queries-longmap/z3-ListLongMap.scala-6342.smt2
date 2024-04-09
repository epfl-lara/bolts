; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81774 () Bool)

(assert start!81774)

(declare-fun b!953559 () Bool)

(declare-fun e!537179 () Bool)

(declare-fun tp_is_empty!20829 () Bool)

(assert (=> b!953559 (= e!537179 tp_is_empty!20829)))

(declare-fun mapIsEmpty!33190 () Bool)

(declare-fun mapRes!33190 () Bool)

(assert (=> mapIsEmpty!33190 mapRes!33190))

(declare-fun res!638720 () Bool)

(declare-fun e!537178 () Bool)

(assert (=> start!81774 (=> (not res!638720) (not e!537178))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81774 (= res!638720 (validMask!0 mask!1823))))

(assert (=> start!81774 e!537178))

(assert (=> start!81774 true))

(declare-datatypes ((V!32755 0))(
  ( (V!32756 (val!10465 Int)) )
))
(declare-datatypes ((ValueCell!9933 0))(
  ( (ValueCellFull!9933 (v!13019 V!32755)) (EmptyCell!9933) )
))
(declare-datatypes ((array!57779 0))(
  ( (array!57780 (arr!27770 (Array (_ BitVec 32) ValueCell!9933)) (size!28250 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57779)

(declare-fun e!537180 () Bool)

(declare-fun array_inv!21499 (array!57779) Bool)

(assert (=> start!81774 (and (array_inv!21499 _values!1197) e!537180)))

(declare-datatypes ((array!57781 0))(
  ( (array!57782 (arr!27771 (Array (_ BitVec 32) (_ BitVec 64))) (size!28251 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57781)

(declare-fun array_inv!21500 (array!57781) Bool)

(assert (=> start!81774 (array_inv!21500 _keys!1441)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun b!953560 () Bool)

(assert (=> b!953560 (= e!537178 (and (= (size!28250 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28251 _keys!1441) (size!28250 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011) (= (size!28251 _keys!1441) (bvadd #b00000000000000000000000000000001 mask!1823)) (bvsgt #b00000000000000000000000000000000 (size!28251 _keys!1441))))))

(declare-fun b!953561 () Bool)

(declare-fun e!537177 () Bool)

(assert (=> b!953561 (= e!537177 tp_is_empty!20829)))

(declare-fun b!953562 () Bool)

(assert (=> b!953562 (= e!537180 (and e!537179 mapRes!33190))))

(declare-fun condMapEmpty!33190 () Bool)

(declare-fun mapDefault!33190 () ValueCell!9933)

(assert (=> b!953562 (= condMapEmpty!33190 (= (arr!27770 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9933)) mapDefault!33190)))))

(declare-fun mapNonEmpty!33190 () Bool)

(declare-fun tp!63580 () Bool)

(assert (=> mapNonEmpty!33190 (= mapRes!33190 (and tp!63580 e!537177))))

(declare-fun mapValue!33190 () ValueCell!9933)

(declare-fun mapRest!33190 () (Array (_ BitVec 32) ValueCell!9933))

(declare-fun mapKey!33190 () (_ BitVec 32))

(assert (=> mapNonEmpty!33190 (= (arr!27770 _values!1197) (store mapRest!33190 mapKey!33190 mapValue!33190))))

(assert (= (and start!81774 res!638720) b!953560))

(assert (= (and b!953562 condMapEmpty!33190) mapIsEmpty!33190))

(assert (= (and b!953562 (not condMapEmpty!33190)) mapNonEmpty!33190))

(get-info :version)

(assert (= (and mapNonEmpty!33190 ((_ is ValueCellFull!9933) mapValue!33190)) b!953561))

(assert (= (and b!953562 ((_ is ValueCellFull!9933) mapDefault!33190)) b!953559))

(assert (= start!81774 b!953562))

(declare-fun m!885643 () Bool)

(assert (=> start!81774 m!885643))

(declare-fun m!885645 () Bool)

(assert (=> start!81774 m!885645))

(declare-fun m!885647 () Bool)

(assert (=> start!81774 m!885647))

(declare-fun m!885649 () Bool)

(assert (=> mapNonEmpty!33190 m!885649))

(check-sat (not start!81774) (not mapNonEmpty!33190) tp_is_empty!20829)
(check-sat)
(get-model)

(declare-fun d!115639 () Bool)

(assert (=> d!115639 (= (validMask!0 mask!1823) (and (or (= mask!1823 #b00000000000000000000000000000111) (= mask!1823 #b00000000000000000000000000001111) (= mask!1823 #b00000000000000000000000000011111) (= mask!1823 #b00000000000000000000000000111111) (= mask!1823 #b00000000000000000000000001111111) (= mask!1823 #b00000000000000000000000011111111) (= mask!1823 #b00000000000000000000000111111111) (= mask!1823 #b00000000000000000000001111111111) (= mask!1823 #b00000000000000000000011111111111) (= mask!1823 #b00000000000000000000111111111111) (= mask!1823 #b00000000000000000001111111111111) (= mask!1823 #b00000000000000000011111111111111) (= mask!1823 #b00000000000000000111111111111111) (= mask!1823 #b00000000000000001111111111111111) (= mask!1823 #b00000000000000011111111111111111) (= mask!1823 #b00000000000000111111111111111111) (= mask!1823 #b00000000000001111111111111111111) (= mask!1823 #b00000000000011111111111111111111) (= mask!1823 #b00000000000111111111111111111111) (= mask!1823 #b00000000001111111111111111111111) (= mask!1823 #b00000000011111111111111111111111) (= mask!1823 #b00000000111111111111111111111111) (= mask!1823 #b00000001111111111111111111111111) (= mask!1823 #b00000011111111111111111111111111) (= mask!1823 #b00000111111111111111111111111111) (= mask!1823 #b00001111111111111111111111111111) (= mask!1823 #b00011111111111111111111111111111) (= mask!1823 #b00111111111111111111111111111111)) (bvsle mask!1823 #b00111111111111111111111111111111)))))

(assert (=> start!81774 d!115639))

(declare-fun d!115641 () Bool)

(assert (=> d!115641 (= (array_inv!21499 _values!1197) (bvsge (size!28250 _values!1197) #b00000000000000000000000000000000))))

(assert (=> start!81774 d!115641))

(declare-fun d!115643 () Bool)

(assert (=> d!115643 (= (array_inv!21500 _keys!1441) (bvsge (size!28251 _keys!1441) #b00000000000000000000000000000000))))

(assert (=> start!81774 d!115643))

(declare-fun mapIsEmpty!33196 () Bool)

(declare-fun mapRes!33196 () Bool)

(assert (=> mapIsEmpty!33196 mapRes!33196))

(declare-fun condMapEmpty!33196 () Bool)

(declare-fun mapDefault!33196 () ValueCell!9933)

(assert (=> mapNonEmpty!33190 (= condMapEmpty!33196 (= mapRest!33190 ((as const (Array (_ BitVec 32) ValueCell!9933)) mapDefault!33196)))))

(declare-fun e!537202 () Bool)

(assert (=> mapNonEmpty!33190 (= tp!63580 (and e!537202 mapRes!33196))))

(declare-fun b!953581 () Bool)

(declare-fun e!537201 () Bool)

(assert (=> b!953581 (= e!537201 tp_is_empty!20829)))

(declare-fun b!953582 () Bool)

(assert (=> b!953582 (= e!537202 tp_is_empty!20829)))

(declare-fun mapNonEmpty!33196 () Bool)

(declare-fun tp!63586 () Bool)

(assert (=> mapNonEmpty!33196 (= mapRes!33196 (and tp!63586 e!537201))))

(declare-fun mapRest!33196 () (Array (_ BitVec 32) ValueCell!9933))

(declare-fun mapValue!33196 () ValueCell!9933)

(declare-fun mapKey!33196 () (_ BitVec 32))

(assert (=> mapNonEmpty!33196 (= mapRest!33190 (store mapRest!33196 mapKey!33196 mapValue!33196))))

(assert (= (and mapNonEmpty!33190 condMapEmpty!33196) mapIsEmpty!33196))

(assert (= (and mapNonEmpty!33190 (not condMapEmpty!33196)) mapNonEmpty!33196))

(assert (= (and mapNonEmpty!33196 ((_ is ValueCellFull!9933) mapValue!33196)) b!953581))

(assert (= (and mapNonEmpty!33190 ((_ is ValueCellFull!9933) mapDefault!33196)) b!953582))

(declare-fun m!885659 () Bool)

(assert (=> mapNonEmpty!33196 m!885659))

(check-sat (not mapNonEmpty!33196) tp_is_empty!20829)
(check-sat)
