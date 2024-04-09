; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7332 () Bool)

(assert start!7332)

(declare-fun b!47104 () Bool)

(declare-fun e!30095 () Bool)

(declare-fun e!30092 () Bool)

(declare-fun mapRes!2030 () Bool)

(assert (=> b!47104 (= e!30095 (and e!30092 mapRes!2030))))

(declare-fun condMapEmpty!2030 () Bool)

(declare-datatypes ((V!2401 0))(
  ( (V!2402 (val!1039 Int)) )
))
(declare-datatypes ((ValueCell!711 0))(
  ( (ValueCellFull!711 (v!2098 V!2401)) (EmptyCell!711) )
))
(declare-datatypes ((array!3060 0))(
  ( (array!3061 (arr!1469 (Array (_ BitVec 32) ValueCell!711)) (size!1691 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3060)

(declare-fun mapDefault!2030 () ValueCell!711)

(assert (=> b!47104 (= condMapEmpty!2030 (= (arr!1469 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!711)) mapDefault!2030)))))

(declare-fun res!27433 () Bool)

(declare-fun e!30094 () Bool)

(assert (=> start!7332 (=> (not res!27433) (not e!30094))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7332 (= res!27433 (validMask!0 mask!2458))))

(assert (=> start!7332 e!30094))

(assert (=> start!7332 true))

(declare-fun array_inv!832 (array!3060) Bool)

(assert (=> start!7332 (and (array_inv!832 _values!1550) e!30095)))

(declare-datatypes ((array!3062 0))(
  ( (array!3063 (arr!1470 (Array (_ BitVec 32) (_ BitVec 64))) (size!1692 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3062)

(declare-fun array_inv!833 (array!3062) Bool)

(assert (=> start!7332 (array_inv!833 _keys!1940)))

(declare-fun b!47105 () Bool)

(declare-fun e!30091 () Bool)

(declare-fun tp_is_empty!2001 () Bool)

(assert (=> b!47105 (= e!30091 tp_is_empty!2001)))

(declare-fun mapIsEmpty!2030 () Bool)

(assert (=> mapIsEmpty!2030 mapRes!2030))

(declare-fun b!47106 () Bool)

(assert (=> b!47106 (= e!30092 tp_is_empty!2001)))

(declare-fun mapNonEmpty!2030 () Bool)

(declare-fun tp!6179 () Bool)

(assert (=> mapNonEmpty!2030 (= mapRes!2030 (and tp!6179 e!30091))))

(declare-fun mapValue!2030 () ValueCell!711)

(declare-fun mapKey!2030 () (_ BitVec 32))

(declare-fun mapRest!2030 () (Array (_ BitVec 32) ValueCell!711))

(assert (=> mapNonEmpty!2030 (= (arr!1469 _values!1550) (store mapRest!2030 mapKey!2030 mapValue!2030))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun b!47107 () Bool)

(assert (=> b!47107 (= e!30094 (and (= (size!1691 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1692 _keys!1940) (size!1691 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011) (not (= (size!1692 _keys!1940) (bvadd #b00000000000000000000000000000001 mask!2458)))))))

(assert (= (and start!7332 res!27433) b!47107))

(assert (= (and b!47104 condMapEmpty!2030) mapIsEmpty!2030))

(assert (= (and b!47104 (not condMapEmpty!2030)) mapNonEmpty!2030))

(get-info :version)

(assert (= (and mapNonEmpty!2030 ((_ is ValueCellFull!711) mapValue!2030)) b!47105))

(assert (= (and b!47104 ((_ is ValueCellFull!711) mapDefault!2030)) b!47106))

(assert (= start!7332 b!47104))

(declare-fun m!41483 () Bool)

(assert (=> start!7332 m!41483))

(declare-fun m!41485 () Bool)

(assert (=> start!7332 m!41485))

(declare-fun m!41487 () Bool)

(assert (=> start!7332 m!41487))

(declare-fun m!41489 () Bool)

(assert (=> mapNonEmpty!2030 m!41489))

(check-sat (not start!7332) (not mapNonEmpty!2030) tp_is_empty!2001)
(check-sat)
