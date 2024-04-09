; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83508 () Bool)

(assert start!83508)

(declare-fun b_free!19467 () Bool)

(declare-fun b_next!19467 () Bool)

(assert (=> start!83508 (= b_free!19467 (not b_next!19467))))

(declare-fun tp!67689 () Bool)

(declare-fun b_and!31087 () Bool)

(assert (=> start!83508 (= tp!67689 b_and!31087)))

(declare-fun b!975007 () Bool)

(declare-fun e!549557 () Bool)

(declare-fun e!549554 () Bool)

(declare-fun mapRes!35566 () Bool)

(assert (=> b!975007 (= e!549557 (and e!549554 mapRes!35566))))

(declare-fun condMapEmpty!35566 () Bool)

(declare-datatypes ((V!34811 0))(
  ( (V!34812 (val!11236 Int)) )
))
(declare-datatypes ((ValueCell!10704 0))(
  ( (ValueCellFull!10704 (v!13795 V!34811)) (EmptyCell!10704) )
))
(declare-datatypes ((array!60757 0))(
  ( (array!60758 (arr!29238 (Array (_ BitVec 32) ValueCell!10704)) (size!29718 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60757)

(declare-fun mapDefault!35566 () ValueCell!10704)

(assert (=> b!975007 (= condMapEmpty!35566 (= (arr!29238 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10704)) mapDefault!35566)))))

(declare-fun b!975008 () Bool)

(declare-fun res!652799 () Bool)

(declare-fun e!549558 () Bool)

(assert (=> b!975008 (=> (not res!652799) (not e!549558))))

(declare-datatypes ((array!60759 0))(
  ( (array!60760 (arr!29239 (Array (_ BitVec 32) (_ BitVec 64))) (size!29719 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60759)

(declare-datatypes ((List!20416 0))(
  ( (Nil!20413) (Cons!20412 (h!21574 (_ BitVec 64)) (t!28901 List!20416)) )
))
(declare-fun arrayNoDuplicates!0 (array!60759 (_ BitVec 32) List!20416) Bool)

(assert (=> b!975008 (= res!652799 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20413))))

(declare-fun b!975009 () Bool)

(declare-fun res!652797 () Bool)

(assert (=> b!975009 (=> (not res!652797) (not e!549558))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975009 (= res!652797 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29719 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29719 _keys!1717))))))

(declare-fun mapIsEmpty!35566 () Bool)

(assert (=> mapIsEmpty!35566 mapRes!35566))

(declare-fun b!975010 () Bool)

(declare-fun tp_is_empty!22371 () Bool)

(assert (=> b!975010 (= e!549554 tp_is_empty!22371)))

(declare-fun b!975011 () Bool)

(declare-fun e!549555 () Bool)

(assert (=> b!975011 (= e!549555 tp_is_empty!22371)))

(declare-fun b!975013 () Bool)

(declare-fun res!652800 () Bool)

(assert (=> b!975013 (=> (not res!652800) (not e!549558))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34811)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34811)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14542 0))(
  ( (tuple2!14543 (_1!7281 (_ BitVec 64)) (_2!7281 V!34811)) )
))
(declare-datatypes ((List!20417 0))(
  ( (Nil!20414) (Cons!20413 (h!21575 tuple2!14542) (t!28902 List!20417)) )
))
(declare-datatypes ((ListLongMap!13253 0))(
  ( (ListLongMap!13254 (toList!6642 List!20417)) )
))
(declare-fun contains!5677 (ListLongMap!13253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3827 (array!60759 array!60757 (_ BitVec 32) (_ BitVec 32) V!34811 V!34811 (_ BitVec 32) Int) ListLongMap!13253)

(assert (=> b!975013 (= res!652800 (contains!5677 (getCurrentListMap!3827 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29239 _keys!1717) i!822)))))

(declare-fun b!975014 () Bool)

(declare-fun res!652801 () Bool)

(assert (=> b!975014 (=> (not res!652801) (not e!549558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60759 (_ BitVec 32)) Bool)

(assert (=> b!975014 (= res!652801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975015 () Bool)

(assert (=> b!975015 (= e!549558 false)))

(declare-fun lt!432781 () ListLongMap!13253)

(assert (=> b!975015 (= lt!432781 (getCurrentListMap!3827 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!652796 () Bool)

(assert (=> start!83508 (=> (not res!652796) (not e!549558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83508 (= res!652796 (validMask!0 mask!2147))))

(assert (=> start!83508 e!549558))

(assert (=> start!83508 true))

(declare-fun array_inv!22507 (array!60757) Bool)

(assert (=> start!83508 (and (array_inv!22507 _values!1425) e!549557)))

(assert (=> start!83508 tp_is_empty!22371))

(assert (=> start!83508 tp!67689))

(declare-fun array_inv!22508 (array!60759) Bool)

(assert (=> start!83508 (array_inv!22508 _keys!1717)))

(declare-fun b!975012 () Bool)

(declare-fun res!652795 () Bool)

(assert (=> b!975012 (=> (not res!652795) (not e!549558))))

(assert (=> b!975012 (= res!652795 (and (= (size!29718 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29719 _keys!1717) (size!29718 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35566 () Bool)

(declare-fun tp!67690 () Bool)

(assert (=> mapNonEmpty!35566 (= mapRes!35566 (and tp!67690 e!549555))))

(declare-fun mapValue!35566 () ValueCell!10704)

(declare-fun mapKey!35566 () (_ BitVec 32))

(declare-fun mapRest!35566 () (Array (_ BitVec 32) ValueCell!10704))

(assert (=> mapNonEmpty!35566 (= (arr!29238 _values!1425) (store mapRest!35566 mapKey!35566 mapValue!35566))))

(declare-fun b!975016 () Bool)

(declare-fun res!652798 () Bool)

(assert (=> b!975016 (=> (not res!652798) (not e!549558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975016 (= res!652798 (validKeyInArray!0 (select (arr!29239 _keys!1717) i!822)))))

(assert (= (and start!83508 res!652796) b!975012))

(assert (= (and b!975012 res!652795) b!975014))

(assert (= (and b!975014 res!652801) b!975008))

(assert (= (and b!975008 res!652799) b!975009))

(assert (= (and b!975009 res!652797) b!975016))

(assert (= (and b!975016 res!652798) b!975013))

(assert (= (and b!975013 res!652800) b!975015))

(assert (= (and b!975007 condMapEmpty!35566) mapIsEmpty!35566))

(assert (= (and b!975007 (not condMapEmpty!35566)) mapNonEmpty!35566))

(get-info :version)

(assert (= (and mapNonEmpty!35566 ((_ is ValueCellFull!10704) mapValue!35566)) b!975011))

(assert (= (and b!975007 ((_ is ValueCellFull!10704) mapDefault!35566)) b!975010))

(assert (= start!83508 b!975007))

(declare-fun m!902433 () Bool)

(assert (=> b!975008 m!902433))

(declare-fun m!902435 () Bool)

(assert (=> b!975013 m!902435))

(declare-fun m!902437 () Bool)

(assert (=> b!975013 m!902437))

(assert (=> b!975013 m!902435))

(assert (=> b!975013 m!902437))

(declare-fun m!902439 () Bool)

(assert (=> b!975013 m!902439))

(declare-fun m!902441 () Bool)

(assert (=> mapNonEmpty!35566 m!902441))

(declare-fun m!902443 () Bool)

(assert (=> b!975015 m!902443))

(declare-fun m!902445 () Bool)

(assert (=> b!975014 m!902445))

(assert (=> b!975016 m!902437))

(assert (=> b!975016 m!902437))

(declare-fun m!902447 () Bool)

(assert (=> b!975016 m!902447))

(declare-fun m!902449 () Bool)

(assert (=> start!83508 m!902449))

(declare-fun m!902451 () Bool)

(assert (=> start!83508 m!902451))

(declare-fun m!902453 () Bool)

(assert (=> start!83508 m!902453))

(check-sat (not b!975008) tp_is_empty!22371 (not b!975015) b_and!31087 (not b!975016) (not b!975013) (not start!83508) (not b_next!19467) (not mapNonEmpty!35566) (not b!975014))
(check-sat b_and!31087 (not b_next!19467))
