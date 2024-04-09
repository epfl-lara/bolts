; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7424 () Bool)

(assert start!7424)

(declare-fun b!47664 () Bool)

(declare-fun e!30547 () Bool)

(declare-fun tp_is_empty!2049 () Bool)

(assert (=> b!47664 (= e!30547 tp_is_empty!2049)))

(declare-fun mapNonEmpty!2117 () Bool)

(declare-fun mapRes!2117 () Bool)

(declare-fun tp!6266 () Bool)

(declare-fun e!30549 () Bool)

(assert (=> mapNonEmpty!2117 (= mapRes!2117 (and tp!6266 e!30549))))

(declare-datatypes ((V!2465 0))(
  ( (V!2466 (val!1063 Int)) )
))
(declare-datatypes ((ValueCell!735 0))(
  ( (ValueCellFull!735 (v!2123 V!2465)) (EmptyCell!735) )
))
(declare-datatypes ((array!3160 0))(
  ( (array!3161 (arr!1514 (Array (_ BitVec 32) ValueCell!735)) (size!1736 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3160)

(declare-fun mapValue!2117 () ValueCell!735)

(declare-fun mapRest!2117 () (Array (_ BitVec 32) ValueCell!735))

(declare-fun mapKey!2117 () (_ BitVec 32))

(assert (=> mapNonEmpty!2117 (= (arr!1514 _values!1550) (store mapRest!2117 mapKey!2117 mapValue!2117))))

(declare-fun b!47665 () Bool)

(declare-fun res!27716 () Bool)

(declare-fun e!30548 () Bool)

(assert (=> b!47665 (=> (not res!27716) (not e!30548))))

(declare-datatypes ((array!3162 0))(
  ( (array!3163 (arr!1515 (Array (_ BitVec 32) (_ BitVec 64))) (size!1737 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3162)

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3162 (_ BitVec 32)) Bool)

(assert (=> b!47665 (= res!27716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47666 () Bool)

(declare-fun res!27713 () Bool)

(assert (=> b!47666 (=> (not res!27713) (not e!30548))))

(declare-datatypes ((List!1280 0))(
  ( (Nil!1277) (Cons!1276 (h!1856 (_ BitVec 64)) (t!4316 List!1280)) )
))
(declare-fun arrayNoDuplicates!0 (array!3162 (_ BitVec 32) List!1280) Bool)

(assert (=> b!47666 (= res!27713 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1277))))

(declare-fun res!27714 () Bool)

(assert (=> start!7424 (=> (not res!27714) (not e!30548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7424 (= res!27714 (validMask!0 mask!2458))))

(assert (=> start!7424 e!30548))

(assert (=> start!7424 true))

(declare-fun array_inv!868 (array!3162) Bool)

(assert (=> start!7424 (array_inv!868 _keys!1940)))

(declare-fun e!30550 () Bool)

(declare-fun array_inv!869 (array!3160) Bool)

(assert (=> start!7424 (and (array_inv!869 _values!1550) e!30550)))

(declare-fun b!47667 () Bool)

(assert (=> b!47667 (= e!30550 (and e!30547 mapRes!2117))))

(declare-fun condMapEmpty!2117 () Bool)

(declare-fun mapDefault!2117 () ValueCell!735)

(assert (=> b!47667 (= condMapEmpty!2117 (= (arr!1514 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!735)) mapDefault!2117)))))

(declare-fun b!47668 () Bool)

(declare-fun res!27715 () Bool)

(assert (=> b!47668 (=> (not res!27715) (not e!30548))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47668 (= res!27715 (and (= (size!1736 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1737 _keys!1940) (size!1736 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47669 () Bool)

(assert (=> b!47669 (= e!30549 tp_is_empty!2049)))

(declare-fun b!47670 () Bool)

(declare-fun res!27717 () Bool)

(assert (=> b!47670 (=> (not res!27717) (not e!30548))))

(declare-fun k0!1421 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47670 (= res!27717 (validKeyInArray!0 k0!1421))))

(declare-fun b!47671 () Bool)

(assert (=> b!47671 (= e!30548 (not (= (size!1737 _keys!1940) (bvadd #b00000000000000000000000000000001 mask!2458))))))

(declare-fun mapIsEmpty!2117 () Bool)

(assert (=> mapIsEmpty!2117 mapRes!2117))

(assert (= (and start!7424 res!27714) b!47668))

(assert (= (and b!47668 res!27715) b!47665))

(assert (= (and b!47665 res!27716) b!47666))

(assert (= (and b!47666 res!27713) b!47670))

(assert (= (and b!47670 res!27717) b!47671))

(assert (= (and b!47667 condMapEmpty!2117) mapIsEmpty!2117))

(assert (= (and b!47667 (not condMapEmpty!2117)) mapNonEmpty!2117))

(get-info :version)

(assert (= (and mapNonEmpty!2117 ((_ is ValueCellFull!735) mapValue!2117)) b!47669))

(assert (= (and b!47667 ((_ is ValueCellFull!735) mapDefault!2117)) b!47664))

(assert (= start!7424 b!47667))

(declare-fun m!41829 () Bool)

(assert (=> b!47665 m!41829))

(declare-fun m!41831 () Bool)

(assert (=> b!47670 m!41831))

(declare-fun m!41833 () Bool)

(assert (=> start!7424 m!41833))

(declare-fun m!41835 () Bool)

(assert (=> start!7424 m!41835))

(declare-fun m!41837 () Bool)

(assert (=> start!7424 m!41837))

(declare-fun m!41839 () Bool)

(assert (=> b!47666 m!41839))

(declare-fun m!41841 () Bool)

(assert (=> mapNonEmpty!2117 m!41841))

(check-sat tp_is_empty!2049 (not b!47665) (not start!7424) (not b!47666) (not mapNonEmpty!2117) (not b!47670))
(check-sat)
