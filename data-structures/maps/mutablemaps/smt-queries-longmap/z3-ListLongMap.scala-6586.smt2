; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83430 () Bool)

(assert start!83430)

(declare-fun b_free!19395 () Bool)

(declare-fun b_next!19395 () Bool)

(assert (=> start!83430 (= b_free!19395 (not b_next!19395))))

(declare-fun tp!67464 () Bool)

(declare-fun b_and!31015 () Bool)

(assert (=> start!83430 (= tp!67464 b_and!31015)))

(declare-fun mapIsEmpty!35449 () Bool)

(declare-fun mapRes!35449 () Bool)

(assert (=> mapIsEmpty!35449 mapRes!35449))

(declare-fun b!973864 () Bool)

(declare-fun res!652008 () Bool)

(declare-fun e!548964 () Bool)

(assert (=> b!973864 (=> (not res!652008) (not e!548964))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34707 0))(
  ( (V!34708 (val!11197 Int)) )
))
(declare-datatypes ((ValueCell!10665 0))(
  ( (ValueCellFull!10665 (v!13756 V!34707)) (EmptyCell!10665) )
))
(declare-datatypes ((array!60607 0))(
  ( (array!60608 (arr!29163 (Array (_ BitVec 32) ValueCell!10665)) (size!29643 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60607)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60609 0))(
  ( (array!60610 (arr!29164 (Array (_ BitVec 32) (_ BitVec 64))) (size!29644 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60609)

(assert (=> b!973864 (= res!652008 (and (= (size!29643 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29644 _keys!1717) (size!29643 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973865 () Bool)

(declare-fun e!548961 () Bool)

(declare-fun tp_is_empty!22293 () Bool)

(assert (=> b!973865 (= e!548961 tp_is_empty!22293)))

(declare-fun b!973866 () Bool)

(declare-fun res!652006 () Bool)

(assert (=> b!973866 (=> (not res!652006) (not e!548964))))

(declare-fun zeroValue!1367 () V!34707)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34707)

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14480 0))(
  ( (tuple2!14481 (_1!7250 (_ BitVec 64)) (_2!7250 V!34707)) )
))
(declare-datatypes ((List!20358 0))(
  ( (Nil!20355) (Cons!20354 (h!21516 tuple2!14480) (t!28843 List!20358)) )
))
(declare-datatypes ((ListLongMap!13191 0))(
  ( (ListLongMap!13192 (toList!6611 List!20358)) )
))
(declare-fun contains!5653 (ListLongMap!13191 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3796 (array!60609 array!60607 (_ BitVec 32) (_ BitVec 32) V!34707 V!34707 (_ BitVec 32) Int) ListLongMap!13191)

(assert (=> b!973866 (= res!652006 (contains!5653 (getCurrentListMap!3796 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29164 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35449 () Bool)

(declare-fun tp!67465 () Bool)

(declare-fun e!548960 () Bool)

(assert (=> mapNonEmpty!35449 (= mapRes!35449 (and tp!67465 e!548960))))

(declare-fun mapKey!35449 () (_ BitVec 32))

(declare-fun mapRest!35449 () (Array (_ BitVec 32) ValueCell!10665))

(declare-fun mapValue!35449 () ValueCell!10665)

(assert (=> mapNonEmpty!35449 (= (arr!29163 _values!1425) (store mapRest!35449 mapKey!35449 mapValue!35449))))

(declare-fun b!973867 () Bool)

(declare-fun e!548963 () Bool)

(assert (=> b!973867 (= e!548963 (and e!548961 mapRes!35449))))

(declare-fun condMapEmpty!35449 () Bool)

(declare-fun mapDefault!35449 () ValueCell!10665)

(assert (=> b!973867 (= condMapEmpty!35449 (= (arr!29163 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10665)) mapDefault!35449)))))

(declare-fun b!973868 () Bool)

(declare-fun res!652009 () Bool)

(assert (=> b!973868 (=> (not res!652009) (not e!548964))))

(declare-datatypes ((List!20359 0))(
  ( (Nil!20356) (Cons!20355 (h!21517 (_ BitVec 64)) (t!28844 List!20359)) )
))
(declare-fun arrayNoDuplicates!0 (array!60609 (_ BitVec 32) List!20359) Bool)

(assert (=> b!973868 (= res!652009 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20356))))

(declare-fun b!973869 () Bool)

(declare-fun res!652004 () Bool)

(assert (=> b!973869 (=> (not res!652004) (not e!548964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973869 (= res!652004 (validKeyInArray!0 (select (arr!29164 _keys!1717) i!822)))))

(declare-fun res!652005 () Bool)

(assert (=> start!83430 (=> (not res!652005) (not e!548964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83430 (= res!652005 (validMask!0 mask!2147))))

(assert (=> start!83430 e!548964))

(assert (=> start!83430 true))

(declare-fun array_inv!22455 (array!60607) Bool)

(assert (=> start!83430 (and (array_inv!22455 _values!1425) e!548963)))

(assert (=> start!83430 tp_is_empty!22293))

(assert (=> start!83430 tp!67464))

(declare-fun array_inv!22456 (array!60609) Bool)

(assert (=> start!83430 (array_inv!22456 _keys!1717)))

(declare-fun b!973870 () Bool)

(declare-fun res!652003 () Bool)

(assert (=> b!973870 (=> (not res!652003) (not e!548964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60609 (_ BitVec 32)) Bool)

(assert (=> b!973870 (= res!652003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973871 () Bool)

(assert (=> b!973871 (= e!548964 false)))

(declare-fun lt!432673 () ListLongMap!13191)

(assert (=> b!973871 (= lt!432673 (getCurrentListMap!3796 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973872 () Bool)

(declare-fun res!652007 () Bool)

(assert (=> b!973872 (=> (not res!652007) (not e!548964))))

(assert (=> b!973872 (= res!652007 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29644 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29644 _keys!1717))))))

(declare-fun b!973873 () Bool)

(assert (=> b!973873 (= e!548960 tp_is_empty!22293)))

(assert (= (and start!83430 res!652005) b!973864))

(assert (= (and b!973864 res!652008) b!973870))

(assert (= (and b!973870 res!652003) b!973868))

(assert (= (and b!973868 res!652009) b!973872))

(assert (= (and b!973872 res!652007) b!973869))

(assert (= (and b!973869 res!652004) b!973866))

(assert (= (and b!973866 res!652006) b!973871))

(assert (= (and b!973867 condMapEmpty!35449) mapIsEmpty!35449))

(assert (= (and b!973867 (not condMapEmpty!35449)) mapNonEmpty!35449))

(get-info :version)

(assert (= (and mapNonEmpty!35449 ((_ is ValueCellFull!10665) mapValue!35449)) b!973873))

(assert (= (and b!973867 ((_ is ValueCellFull!10665) mapDefault!35449)) b!973865))

(assert (= start!83430 b!973867))

(declare-fun m!901605 () Bool)

(assert (=> b!973870 m!901605))

(declare-fun m!901607 () Bool)

(assert (=> start!83430 m!901607))

(declare-fun m!901609 () Bool)

(assert (=> start!83430 m!901609))

(declare-fun m!901611 () Bool)

(assert (=> start!83430 m!901611))

(declare-fun m!901613 () Bool)

(assert (=> b!973866 m!901613))

(declare-fun m!901615 () Bool)

(assert (=> b!973866 m!901615))

(assert (=> b!973866 m!901613))

(assert (=> b!973866 m!901615))

(declare-fun m!901617 () Bool)

(assert (=> b!973866 m!901617))

(declare-fun m!901619 () Bool)

(assert (=> mapNonEmpty!35449 m!901619))

(declare-fun m!901621 () Bool)

(assert (=> b!973871 m!901621))

(declare-fun m!901623 () Bool)

(assert (=> b!973868 m!901623))

(assert (=> b!973869 m!901615))

(assert (=> b!973869 m!901615))

(declare-fun m!901625 () Bool)

(assert (=> b!973869 m!901625))

(check-sat b_and!31015 (not b!973869) tp_is_empty!22293 (not b!973866) (not start!83430) (not b!973870) (not mapNonEmpty!35449) (not b!973868) (not b_next!19395) (not b!973871))
(check-sat b_and!31015 (not b_next!19395))
