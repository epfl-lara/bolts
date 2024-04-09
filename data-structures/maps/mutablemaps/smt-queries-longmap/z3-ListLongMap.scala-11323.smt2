; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131876 () Bool)

(assert start!131876)

(declare-fun mapIsEmpty!58453 () Bool)

(declare-fun mapRes!58453 () Bool)

(assert (=> mapIsEmpty!58453 mapRes!58453))

(declare-fun res!1059061 () Bool)

(declare-fun e!859009 () Bool)

(assert (=> start!131876 (=> (not res!1059061) (not e!859009))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131876 (= res!1059061 (validMask!0 mask!926))))

(assert (=> start!131876 e!859009))

(assert (=> start!131876 true))

(declare-datatypes ((V!58887 0))(
  ( (V!58888 (val!18994 Int)) )
))
(declare-datatypes ((ValueCell!18006 0))(
  ( (ValueCellFull!18006 (v!21792 V!58887)) (EmptyCell!18006) )
))
(declare-datatypes ((array!102843 0))(
  ( (array!102844 (arr!49619 (Array (_ BitVec 32) ValueCell!18006)) (size!50170 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102843)

(declare-fun e!859010 () Bool)

(declare-fun array_inv!38523 (array!102843) Bool)

(assert (=> start!131876 (and (array_inv!38523 _values!470) e!859010)))

(declare-datatypes ((array!102845 0))(
  ( (array!102846 (arr!49620 (Array (_ BitVec 32) (_ BitVec 64))) (size!50171 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102845)

(declare-fun array_inv!38524 (array!102845) Bool)

(assert (=> start!131876 (array_inv!38524 _keys!618)))

(declare-fun b!1543424 () Bool)

(declare-fun e!859011 () Bool)

(assert (=> b!1543424 (= e!859010 (and e!859011 mapRes!58453))))

(declare-fun condMapEmpty!58453 () Bool)

(declare-fun mapDefault!58453 () ValueCell!18006)

(assert (=> b!1543424 (= condMapEmpty!58453 (= (arr!49619 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18006)) mapDefault!58453)))))

(declare-fun b!1543425 () Bool)

(declare-fun res!1059062 () Bool)

(assert (=> b!1543425 (=> (not res!1059062) (not e!859009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102845 (_ BitVec 32)) Bool)

(assert (=> b!1543425 (= res!1059062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543426 () Bool)

(declare-fun tp_is_empty!37833 () Bool)

(assert (=> b!1543426 (= e!859011 tp_is_empty!37833)))

(declare-fun mapNonEmpty!58453 () Bool)

(declare-fun tp!110981 () Bool)

(declare-fun e!859008 () Bool)

(assert (=> mapNonEmpty!58453 (= mapRes!58453 (and tp!110981 e!859008))))

(declare-fun mapValue!58453 () ValueCell!18006)

(declare-fun mapKey!58453 () (_ BitVec 32))

(declare-fun mapRest!58453 () (Array (_ BitVec 32) ValueCell!18006))

(assert (=> mapNonEmpty!58453 (= (arr!49619 _values!470) (store mapRest!58453 mapKey!58453 mapValue!58453))))

(declare-fun b!1543427 () Bool)

(declare-fun res!1059060 () Bool)

(assert (=> b!1543427 (=> (not res!1059060) (not e!859009))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1543427 (= res!1059060 (and (= (size!50170 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50171 _keys!618) (size!50170 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543428 () Bool)

(assert (=> b!1543428 (= e!859008 tp_is_empty!37833)))

(declare-fun b!1543429 () Bool)

(assert (=> b!1543429 (= e!859009 false)))

(declare-fun lt!665924 () Bool)

(declare-datatypes ((List!36070 0))(
  ( (Nil!36067) (Cons!36066 (h!37512 (_ BitVec 64)) (t!50771 List!36070)) )
))
(declare-fun arrayNoDuplicates!0 (array!102845 (_ BitVec 32) List!36070) Bool)

(assert (=> b!1543429 (= lt!665924 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36067))))

(assert (= (and start!131876 res!1059061) b!1543427))

(assert (= (and b!1543427 res!1059060) b!1543425))

(assert (= (and b!1543425 res!1059062) b!1543429))

(assert (= (and b!1543424 condMapEmpty!58453) mapIsEmpty!58453))

(assert (= (and b!1543424 (not condMapEmpty!58453)) mapNonEmpty!58453))

(get-info :version)

(assert (= (and mapNonEmpty!58453 ((_ is ValueCellFull!18006) mapValue!58453)) b!1543428))

(assert (= (and b!1543424 ((_ is ValueCellFull!18006) mapDefault!58453)) b!1543426))

(assert (= start!131876 b!1543424))

(declare-fun m!1424743 () Bool)

(assert (=> start!131876 m!1424743))

(declare-fun m!1424745 () Bool)

(assert (=> start!131876 m!1424745))

(declare-fun m!1424747 () Bool)

(assert (=> start!131876 m!1424747))

(declare-fun m!1424749 () Bool)

(assert (=> b!1543425 m!1424749))

(declare-fun m!1424751 () Bool)

(assert (=> mapNonEmpty!58453 m!1424751))

(declare-fun m!1424753 () Bool)

(assert (=> b!1543429 m!1424753))

(check-sat tp_is_empty!37833 (not b!1543429) (not start!131876) (not mapNonEmpty!58453) (not b!1543425))
(check-sat)
