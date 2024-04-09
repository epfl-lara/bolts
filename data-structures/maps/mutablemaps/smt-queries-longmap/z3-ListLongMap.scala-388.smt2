; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7338 () Bool)

(assert start!7338)

(declare-fun b!47140 () Bool)

(declare-fun e!30138 () Bool)

(declare-fun tp_is_empty!2007 () Bool)

(assert (=> b!47140 (= e!30138 tp_is_empty!2007)))

(declare-fun mapNonEmpty!2039 () Bool)

(declare-fun mapRes!2039 () Bool)

(declare-fun tp!6188 () Bool)

(declare-fun e!30140 () Bool)

(assert (=> mapNonEmpty!2039 (= mapRes!2039 (and tp!6188 e!30140))))

(declare-datatypes ((V!2409 0))(
  ( (V!2410 (val!1042 Int)) )
))
(declare-datatypes ((ValueCell!714 0))(
  ( (ValueCellFull!714 (v!2101 V!2409)) (EmptyCell!714) )
))
(declare-fun mapValue!2039 () ValueCell!714)

(declare-datatypes ((array!3072 0))(
  ( (array!3073 (arr!1475 (Array (_ BitVec 32) ValueCell!714)) (size!1697 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3072)

(declare-fun mapRest!2039 () (Array (_ BitVec 32) ValueCell!714))

(declare-fun mapKey!2039 () (_ BitVec 32))

(assert (=> mapNonEmpty!2039 (= (arr!1475 _values!1550) (store mapRest!2039 mapKey!2039 mapValue!2039))))

(declare-datatypes ((array!3074 0))(
  ( (array!3075 (arr!1476 (Array (_ BitVec 32) (_ BitVec 64))) (size!1698 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3074)

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun e!30139 () Bool)

(declare-fun b!47141 () Bool)

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47141 (= e!30139 (and (= (size!1697 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1698 _keys!1940) (size!1697 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011) (= (size!1698 _keys!1940) (bvadd #b00000000000000000000000000000001 mask!2458)) (bvsgt #b00000000000000000000000000000000 (size!1698 _keys!1940))))))

(declare-fun res!27442 () Bool)

(assert (=> start!7338 (=> (not res!27442) (not e!30139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7338 (= res!27442 (validMask!0 mask!2458))))

(assert (=> start!7338 e!30139))

(assert (=> start!7338 true))

(declare-fun e!30137 () Bool)

(declare-fun array_inv!838 (array!3072) Bool)

(assert (=> start!7338 (and (array_inv!838 _values!1550) e!30137)))

(declare-fun array_inv!839 (array!3074) Bool)

(assert (=> start!7338 (array_inv!839 _keys!1940)))

(declare-fun mapIsEmpty!2039 () Bool)

(assert (=> mapIsEmpty!2039 mapRes!2039))

(declare-fun b!47142 () Bool)

(assert (=> b!47142 (= e!30140 tp_is_empty!2007)))

(declare-fun b!47143 () Bool)

(assert (=> b!47143 (= e!30137 (and e!30138 mapRes!2039))))

(declare-fun condMapEmpty!2039 () Bool)

(declare-fun mapDefault!2039 () ValueCell!714)

(assert (=> b!47143 (= condMapEmpty!2039 (= (arr!1475 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!714)) mapDefault!2039)))))

(assert (= (and start!7338 res!27442) b!47141))

(assert (= (and b!47143 condMapEmpty!2039) mapIsEmpty!2039))

(assert (= (and b!47143 (not condMapEmpty!2039)) mapNonEmpty!2039))

(get-info :version)

(assert (= (and mapNonEmpty!2039 ((_ is ValueCellFull!714) mapValue!2039)) b!47142))

(assert (= (and b!47143 ((_ is ValueCellFull!714) mapDefault!2039)) b!47140))

(assert (= start!7338 b!47143))

(declare-fun m!41507 () Bool)

(assert (=> mapNonEmpty!2039 m!41507))

(declare-fun m!41509 () Bool)

(assert (=> start!7338 m!41509))

(declare-fun m!41511 () Bool)

(assert (=> start!7338 m!41511))

(declare-fun m!41513 () Bool)

(assert (=> start!7338 m!41513))

(check-sat (not start!7338) (not mapNonEmpty!2039) tp_is_empty!2007)
(check-sat)
(get-model)

(declare-fun d!9445 () Bool)

(assert (=> d!9445 (= (validMask!0 mask!2458) (and (or (= mask!2458 #b00000000000000000000000000000111) (= mask!2458 #b00000000000000000000000000001111) (= mask!2458 #b00000000000000000000000000011111) (= mask!2458 #b00000000000000000000000000111111) (= mask!2458 #b00000000000000000000000001111111) (= mask!2458 #b00000000000000000000000011111111) (= mask!2458 #b00000000000000000000000111111111) (= mask!2458 #b00000000000000000000001111111111) (= mask!2458 #b00000000000000000000011111111111) (= mask!2458 #b00000000000000000000111111111111) (= mask!2458 #b00000000000000000001111111111111) (= mask!2458 #b00000000000000000011111111111111) (= mask!2458 #b00000000000000000111111111111111) (= mask!2458 #b00000000000000001111111111111111) (= mask!2458 #b00000000000000011111111111111111) (= mask!2458 #b00000000000000111111111111111111) (= mask!2458 #b00000000000001111111111111111111) (= mask!2458 #b00000000000011111111111111111111) (= mask!2458 #b00000000000111111111111111111111) (= mask!2458 #b00000000001111111111111111111111) (= mask!2458 #b00000000011111111111111111111111) (= mask!2458 #b00000000111111111111111111111111) (= mask!2458 #b00000001111111111111111111111111) (= mask!2458 #b00000011111111111111111111111111) (= mask!2458 #b00000111111111111111111111111111) (= mask!2458 #b00001111111111111111111111111111) (= mask!2458 #b00011111111111111111111111111111) (= mask!2458 #b00111111111111111111111111111111)) (bvsle mask!2458 #b00111111111111111111111111111111)))))

(assert (=> start!7338 d!9445))

(declare-fun d!9447 () Bool)

(assert (=> d!9447 (= (array_inv!838 _values!1550) (bvsge (size!1697 _values!1550) #b00000000000000000000000000000000))))

(assert (=> start!7338 d!9447))

(declare-fun d!9449 () Bool)

(assert (=> d!9449 (= (array_inv!839 _keys!1940) (bvsge (size!1698 _keys!1940) #b00000000000000000000000000000000))))

(assert (=> start!7338 d!9449))

(declare-fun mapIsEmpty!2045 () Bool)

(declare-fun mapRes!2045 () Bool)

(assert (=> mapIsEmpty!2045 mapRes!2045))

(declare-fun condMapEmpty!2045 () Bool)

(declare-fun mapDefault!2045 () ValueCell!714)

(assert (=> mapNonEmpty!2039 (= condMapEmpty!2045 (= mapRest!2039 ((as const (Array (_ BitVec 32) ValueCell!714)) mapDefault!2045)))))

(declare-fun e!30161 () Bool)

(assert (=> mapNonEmpty!2039 (= tp!6188 (and e!30161 mapRes!2045))))

(declare-fun b!47162 () Bool)

(declare-fun e!30160 () Bool)

(assert (=> b!47162 (= e!30160 tp_is_empty!2007)))

(declare-fun b!47163 () Bool)

(assert (=> b!47163 (= e!30161 tp_is_empty!2007)))

(declare-fun mapNonEmpty!2045 () Bool)

(declare-fun tp!6194 () Bool)

(assert (=> mapNonEmpty!2045 (= mapRes!2045 (and tp!6194 e!30160))))

(declare-fun mapRest!2045 () (Array (_ BitVec 32) ValueCell!714))

(declare-fun mapKey!2045 () (_ BitVec 32))

(declare-fun mapValue!2045 () ValueCell!714)

(assert (=> mapNonEmpty!2045 (= mapRest!2039 (store mapRest!2045 mapKey!2045 mapValue!2045))))

(assert (= (and mapNonEmpty!2039 condMapEmpty!2045) mapIsEmpty!2045))

(assert (= (and mapNonEmpty!2039 (not condMapEmpty!2045)) mapNonEmpty!2045))

(assert (= (and mapNonEmpty!2045 ((_ is ValueCellFull!714) mapValue!2045)) b!47162))

(assert (= (and mapNonEmpty!2039 ((_ is ValueCellFull!714) mapDefault!2045)) b!47163))

(declare-fun m!41523 () Bool)

(assert (=> mapNonEmpty!2045 m!41523))

(check-sat (not mapNonEmpty!2045) tp_is_empty!2007)
(check-sat)
