; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!620 () Bool)

(assert start!620)

(declare-fun b_free!93 () Bool)

(declare-fun b_next!93 () Bool)

(assert (=> start!620 (= b_free!93 (not b_next!93))))

(declare-fun tp!497 () Bool)

(declare-fun b_and!231 () Bool)

(assert (=> start!620 (= tp!497 b_and!231)))

(declare-fun mapNonEmpty!215 () Bool)

(declare-fun mapRes!215 () Bool)

(declare-fun tp!496 () Bool)

(declare-fun e!2000 () Bool)

(assert (=> mapNonEmpty!215 (= mapRes!215 (and tp!496 e!2000))))

(declare-datatypes ((V!405 0))(
  ( (V!406 (val!91 Int)) )
))
(declare-datatypes ((ValueCell!69 0))(
  ( (ValueCellFull!69 (v!1178 V!405)) (EmptyCell!69) )
))
(declare-fun mapRest!215 () (Array (_ BitVec 32) ValueCell!69))

(declare-datatypes ((array!275 0))(
  ( (array!276 (arr!130 (Array (_ BitVec 32) ValueCell!69)) (size!192 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!275)

(declare-fun mapValue!215 () ValueCell!69)

(declare-fun mapKey!215 () (_ BitVec 32))

(assert (=> mapNonEmpty!215 (= (arr!130 _values!1492) (store mapRest!215 mapKey!215 mapValue!215))))

(declare-fun b!3910 () Bool)

(declare-fun tp_is_empty!171 () Bool)

(assert (=> b!3910 (= e!2000 tp_is_empty!171)))

(declare-fun b!3911 () Bool)

(declare-fun e!1996 () Bool)

(declare-fun e!1997 () Bool)

(assert (=> b!3911 (= e!1996 (and e!1997 mapRes!215))))

(declare-fun condMapEmpty!215 () Bool)

(declare-fun mapDefault!215 () ValueCell!69)

(assert (=> b!3911 (= condMapEmpty!215 (= (arr!130 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!69)) mapDefault!215)))))

(declare-fun mapIsEmpty!215 () Bool)

(assert (=> mapIsEmpty!215 mapRes!215))

(declare-fun b!3913 () Bool)

(declare-fun res!5437 () Bool)

(declare-fun e!1998 () Bool)

(assert (=> b!3913 (=> (not res!5437) (not e!1998))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((array!277 0))(
  ( (array!278 (arr!131 (Array (_ BitVec 32) (_ BitVec 64))) (size!193 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!277)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3913 (= res!5437 (and (= (size!192 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!193 _keys!1806) (size!192 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3914 () Bool)

(assert (=> b!3914 (= e!1997 tp_is_empty!171)))

(declare-fun b!3912 () Bool)

(declare-fun res!5439 () Bool)

(assert (=> b!3912 (=> (not res!5439) (not e!1998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!277 (_ BitVec 32)) Bool)

(assert (=> b!3912 (= res!5439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!5440 () Bool)

(assert (=> start!620 (=> (not res!5440) (not e!1998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!620 (= res!5440 (validMask!0 mask!2250))))

(assert (=> start!620 e!1998))

(assert (=> start!620 tp!497))

(assert (=> start!620 true))

(declare-fun array_inv!91 (array!275) Bool)

(assert (=> start!620 (and (array_inv!91 _values!1492) e!1996)))

(assert (=> start!620 tp_is_empty!171))

(declare-fun array_inv!92 (array!277) Bool)

(assert (=> start!620 (array_inv!92 _keys!1806)))

(declare-fun b!3915 () Bool)

(declare-fun res!5438 () Bool)

(assert (=> b!3915 (=> (not res!5438) (not e!1998))))

(declare-datatypes ((List!79 0))(
  ( (Nil!76) (Cons!75 (h!641 (_ BitVec 64)) (t!2206 List!79)) )
))
(declare-fun arrayNoDuplicates!0 (array!277 (_ BitVec 32) List!79) Bool)

(assert (=> b!3915 (= res!5438 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!76))))

(declare-fun b!3916 () Bool)

(assert (=> b!3916 (= e!1998 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!540 () Bool)

(declare-fun minValue!1434 () V!405)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!405)

(declare-datatypes ((tuple2!74 0))(
  ( (tuple2!75 (_1!37 (_ BitVec 64)) (_2!37 V!405)) )
))
(declare-datatypes ((List!80 0))(
  ( (Nil!77) (Cons!76 (h!642 tuple2!74) (t!2207 List!80)) )
))
(declare-datatypes ((ListLongMap!79 0))(
  ( (ListLongMap!80 (toList!55 List!80)) )
))
(declare-fun contains!25 (ListLongMap!79 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!14 (array!277 array!275 (_ BitVec 32) (_ BitVec 32) V!405 V!405 (_ BitVec 32) Int) ListLongMap!79)

(assert (=> b!3916 (= lt!540 (contains!25 (getCurrentListMap!14 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(assert (= (and start!620 res!5440) b!3913))

(assert (= (and b!3913 res!5437) b!3912))

(assert (= (and b!3912 res!5439) b!3915))

(assert (= (and b!3915 res!5438) b!3916))

(assert (= (and b!3911 condMapEmpty!215) mapIsEmpty!215))

(assert (= (and b!3911 (not condMapEmpty!215)) mapNonEmpty!215))

(get-info :version)

(assert (= (and mapNonEmpty!215 ((_ is ValueCellFull!69) mapValue!215)) b!3910))

(assert (= (and b!3911 ((_ is ValueCellFull!69) mapDefault!215)) b!3914))

(assert (= start!620 b!3911))

(declare-fun m!1983 () Bool)

(assert (=> start!620 m!1983))

(declare-fun m!1985 () Bool)

(assert (=> start!620 m!1985))

(declare-fun m!1987 () Bool)

(assert (=> start!620 m!1987))

(declare-fun m!1989 () Bool)

(assert (=> b!3915 m!1989))

(declare-fun m!1991 () Bool)

(assert (=> mapNonEmpty!215 m!1991))

(declare-fun m!1993 () Bool)

(assert (=> b!3912 m!1993))

(declare-fun m!1995 () Bool)

(assert (=> b!3916 m!1995))

(assert (=> b!3916 m!1995))

(declare-fun m!1997 () Bool)

(assert (=> b!3916 m!1997))

(check-sat (not b!3916) tp_is_empty!171 (not start!620) b_and!231 (not b!3915) (not b_next!93) (not mapNonEmpty!215) (not b!3912))
(check-sat b_and!231 (not b_next!93))
