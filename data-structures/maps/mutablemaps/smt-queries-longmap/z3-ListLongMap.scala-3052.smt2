; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43120 () Bool)

(assert start!43120)

(declare-fun mapIsEmpty!21997 () Bool)

(declare-fun mapRes!21997 () Bool)

(assert (=> mapIsEmpty!21997 mapRes!21997))

(declare-fun b!478059 () Bool)

(declare-fun e!281034 () Bool)

(declare-fun tp_is_empty!13545 () Bool)

(assert (=> b!478059 (= e!281034 tp_is_empty!13545)))

(declare-fun mapNonEmpty!21997 () Bool)

(declare-fun tp!42472 () Bool)

(assert (=> mapNonEmpty!21997 (= mapRes!21997 (and tp!42472 e!281034))))

(declare-datatypes ((V!19131 0))(
  ( (V!19132 (val!6820 Int)) )
))
(declare-datatypes ((ValueCell!6411 0))(
  ( (ValueCellFull!6411 (v!9104 V!19131)) (EmptyCell!6411) )
))
(declare-fun mapRest!21997 () (Array (_ BitVec 32) ValueCell!6411))

(declare-fun mapValue!21997 () ValueCell!6411)

(declare-fun mapKey!21997 () (_ BitVec 32))

(declare-datatypes ((array!30729 0))(
  ( (array!30730 (arr!14774 (Array (_ BitVec 32) ValueCell!6411)) (size!15132 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30729)

(assert (=> mapNonEmpty!21997 (= (arr!14774 _values!1516) (store mapRest!21997 mapKey!21997 mapValue!21997))))

(declare-fun res!285325 () Bool)

(declare-fun e!281033 () Bool)

(assert (=> start!43120 (=> (not res!285325) (not e!281033))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43120 (= res!285325 (validMask!0 mask!2352))))

(assert (=> start!43120 e!281033))

(assert (=> start!43120 true))

(declare-fun e!281032 () Bool)

(declare-fun array_inv!10648 (array!30729) Bool)

(assert (=> start!43120 (and (array_inv!10648 _values!1516) e!281032)))

(declare-datatypes ((array!30731 0))(
  ( (array!30732 (arr!14775 (Array (_ BitVec 32) (_ BitVec 64))) (size!15133 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30731)

(declare-fun array_inv!10649 (array!30731) Bool)

(assert (=> start!43120 (array_inv!10649 _keys!1874)))

(declare-fun b!478060 () Bool)

(declare-fun e!281035 () Bool)

(assert (=> b!478060 (= e!281032 (and e!281035 mapRes!21997))))

(declare-fun condMapEmpty!21997 () Bool)

(declare-fun mapDefault!21997 () ValueCell!6411)

(assert (=> b!478060 (= condMapEmpty!21997 (= (arr!14774 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6411)) mapDefault!21997)))))

(declare-fun b!478061 () Bool)

(assert (=> b!478061 (= e!281035 tp_is_empty!13545)))

(declare-fun b!478062 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478062 (= e!281033 (and (= (size!15132 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15133 _keys!1874) (size!15132 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011) (= (size!15133 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352)) (bvsgt #b00000000000000000000000000000000 (size!15133 _keys!1874))))))

(assert (= (and start!43120 res!285325) b!478062))

(assert (= (and b!478060 condMapEmpty!21997) mapIsEmpty!21997))

(assert (= (and b!478060 (not condMapEmpty!21997)) mapNonEmpty!21997))

(get-info :version)

(assert (= (and mapNonEmpty!21997 ((_ is ValueCellFull!6411) mapValue!21997)) b!478059))

(assert (= (and b!478060 ((_ is ValueCellFull!6411) mapDefault!21997)) b!478061))

(assert (= start!43120 b!478060))

(declare-fun m!460445 () Bool)

(assert (=> mapNonEmpty!21997 m!460445))

(declare-fun m!460447 () Bool)

(assert (=> start!43120 m!460447))

(declare-fun m!460449 () Bool)

(assert (=> start!43120 m!460449))

(declare-fun m!460451 () Bool)

(assert (=> start!43120 m!460451))

(check-sat (not start!43120) (not mapNonEmpty!21997) tp_is_empty!13545)
(check-sat)
(get-model)

(declare-fun d!76453 () Bool)

(assert (=> d!76453 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43120 d!76453))

(declare-fun d!76455 () Bool)

(assert (=> d!76455 (= (array_inv!10648 _values!1516) (bvsge (size!15132 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43120 d!76455))

(declare-fun d!76457 () Bool)

(assert (=> d!76457 (= (array_inv!10649 _keys!1874) (bvsge (size!15133 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43120 d!76457))

(declare-fun b!478081 () Bool)

(declare-fun e!281057 () Bool)

(assert (=> b!478081 (= e!281057 tp_is_empty!13545)))

(declare-fun mapNonEmpty!22003 () Bool)

(declare-fun mapRes!22003 () Bool)

(declare-fun tp!42478 () Bool)

(assert (=> mapNonEmpty!22003 (= mapRes!22003 (and tp!42478 e!281057))))

(declare-fun mapRest!22003 () (Array (_ BitVec 32) ValueCell!6411))

(declare-fun mapKey!22003 () (_ BitVec 32))

(declare-fun mapValue!22003 () ValueCell!6411)

(assert (=> mapNonEmpty!22003 (= mapRest!21997 (store mapRest!22003 mapKey!22003 mapValue!22003))))

(declare-fun condMapEmpty!22003 () Bool)

(declare-fun mapDefault!22003 () ValueCell!6411)

(assert (=> mapNonEmpty!21997 (= condMapEmpty!22003 (= mapRest!21997 ((as const (Array (_ BitVec 32) ValueCell!6411)) mapDefault!22003)))))

(declare-fun e!281056 () Bool)

(assert (=> mapNonEmpty!21997 (= tp!42472 (and e!281056 mapRes!22003))))

(declare-fun mapIsEmpty!22003 () Bool)

(assert (=> mapIsEmpty!22003 mapRes!22003))

(declare-fun b!478082 () Bool)

(assert (=> b!478082 (= e!281056 tp_is_empty!13545)))

(assert (= (and mapNonEmpty!21997 condMapEmpty!22003) mapIsEmpty!22003))

(assert (= (and mapNonEmpty!21997 (not condMapEmpty!22003)) mapNonEmpty!22003))

(assert (= (and mapNonEmpty!22003 ((_ is ValueCellFull!6411) mapValue!22003)) b!478081))

(assert (= (and mapNonEmpty!21997 ((_ is ValueCellFull!6411) mapDefault!22003)) b!478082))

(declare-fun m!460461 () Bool)

(assert (=> mapNonEmpty!22003 m!460461))

(check-sat (not mapNonEmpty!22003) tp_is_empty!13545)
(check-sat)
