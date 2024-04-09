; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83292 () Bool)

(assert start!83292)

(declare-fun b_free!19257 () Bool)

(declare-fun b_next!19257 () Bool)

(assert (=> start!83292 (= b_free!19257 (not b_next!19257))))

(declare-fun tp!67051 () Bool)

(declare-fun b_and!30763 () Bool)

(assert (=> start!83292 (= tp!67051 b_and!30763)))

(declare-fun mapNonEmpty!35242 () Bool)

(declare-fun mapRes!35242 () Bool)

(declare-fun tp!67050 () Bool)

(declare-fun e!547674 () Bool)

(assert (=> mapNonEmpty!35242 (= mapRes!35242 (and tp!67050 e!547674))))

(declare-datatypes ((V!34523 0))(
  ( (V!34524 (val!11128 Int)) )
))
(declare-datatypes ((ValueCell!10596 0))(
  ( (ValueCellFull!10596 (v!13687 V!34523)) (EmptyCell!10596) )
))
(declare-datatypes ((array!60341 0))(
  ( (array!60342 (arr!29030 (Array (_ BitVec 32) ValueCell!10596)) (size!29510 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60341)

(declare-fun mapValue!35242 () ValueCell!10596)

(declare-fun mapKey!35242 () (_ BitVec 32))

(declare-fun mapRest!35242 () (Array (_ BitVec 32) ValueCell!10596))

(assert (=> mapNonEmpty!35242 (= (arr!29030 _values!1425) (store mapRest!35242 mapKey!35242 mapValue!35242))))

(declare-fun b!971509 () Bool)

(declare-fun e!547675 () Bool)

(assert (=> b!971509 (= e!547675 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34523)

(declare-datatypes ((tuple2!14368 0))(
  ( (tuple2!14369 (_1!7194 (_ BitVec 64)) (_2!7194 V!34523)) )
))
(declare-datatypes ((List!20258 0))(
  ( (Nil!20255) (Cons!20254 (h!21416 tuple2!14368) (t!28629 List!20258)) )
))
(declare-datatypes ((ListLongMap!13079 0))(
  ( (ListLongMap!13080 (toList!6555 List!20258)) )
))
(declare-fun lt!431800 () ListLongMap!13079)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34523)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60343 0))(
  ( (array!60344 (arr!29031 (Array (_ BitVec 32) (_ BitVec 64))) (size!29511 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60343)

(declare-fun getCurrentListMap!3740 (array!60343 array!60341 (_ BitVec 32) (_ BitVec 32) V!34523 V!34523 (_ BitVec 32) Int) ListLongMap!13079)

(assert (=> b!971509 (= lt!431800 (getCurrentListMap!3740 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971510 () Bool)

(declare-fun res!650388 () Bool)

(assert (=> b!971510 (=> (not res!650388) (not e!547675))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971510 (= res!650388 (validKeyInArray!0 (select (arr!29031 _keys!1717) i!822)))))

(declare-fun b!971511 () Bool)

(declare-fun tp_is_empty!22155 () Bool)

(assert (=> b!971511 (= e!547674 tp_is_empty!22155)))

(declare-fun b!971512 () Bool)

(declare-fun res!650389 () Bool)

(assert (=> b!971512 (=> (not res!650389) (not e!547675))))

(declare-fun contains!5606 (ListLongMap!13079 (_ BitVec 64)) Bool)

(assert (=> b!971512 (= res!650389 (contains!5606 (getCurrentListMap!3740 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29031 _keys!1717) i!822)))))

(declare-fun b!971513 () Bool)

(declare-fun e!547676 () Bool)

(assert (=> b!971513 (= e!547676 tp_is_empty!22155)))

(declare-fun b!971514 () Bool)

(declare-fun res!650384 () Bool)

(assert (=> b!971514 (=> (not res!650384) (not e!547675))))

(assert (=> b!971514 (= res!650384 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29511 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29511 _keys!1717))))))

(declare-fun b!971515 () Bool)

(declare-fun res!650385 () Bool)

(assert (=> b!971515 (=> (not res!650385) (not e!547675))))

(assert (=> b!971515 (= res!650385 (and (= (size!29510 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29511 _keys!1717) (size!29510 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35242 () Bool)

(assert (=> mapIsEmpty!35242 mapRes!35242))

(declare-fun res!650383 () Bool)

(assert (=> start!83292 (=> (not res!650383) (not e!547675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83292 (= res!650383 (validMask!0 mask!2147))))

(assert (=> start!83292 e!547675))

(assert (=> start!83292 true))

(declare-fun e!547677 () Bool)

(declare-fun array_inv!22357 (array!60341) Bool)

(assert (=> start!83292 (and (array_inv!22357 _values!1425) e!547677)))

(assert (=> start!83292 tp_is_empty!22155))

(assert (=> start!83292 tp!67051))

(declare-fun array_inv!22358 (array!60343) Bool)

(assert (=> start!83292 (array_inv!22358 _keys!1717)))

(declare-fun b!971516 () Bool)

(assert (=> b!971516 (= e!547677 (and e!547676 mapRes!35242))))

(declare-fun condMapEmpty!35242 () Bool)

(declare-fun mapDefault!35242 () ValueCell!10596)

(assert (=> b!971516 (= condMapEmpty!35242 (= (arr!29030 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10596)) mapDefault!35242)))))

(declare-fun b!971517 () Bool)

(declare-fun res!650387 () Bool)

(assert (=> b!971517 (=> (not res!650387) (not e!547675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60343 (_ BitVec 32)) Bool)

(assert (=> b!971517 (= res!650387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971518 () Bool)

(declare-fun res!650386 () Bool)

(assert (=> b!971518 (=> (not res!650386) (not e!547675))))

(declare-datatypes ((List!20259 0))(
  ( (Nil!20256) (Cons!20255 (h!21417 (_ BitVec 64)) (t!28630 List!20259)) )
))
(declare-fun arrayNoDuplicates!0 (array!60343 (_ BitVec 32) List!20259) Bool)

(assert (=> b!971518 (= res!650386 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20256))))

(assert (= (and start!83292 res!650383) b!971515))

(assert (= (and b!971515 res!650385) b!971517))

(assert (= (and b!971517 res!650387) b!971518))

(assert (= (and b!971518 res!650386) b!971514))

(assert (= (and b!971514 res!650384) b!971510))

(assert (= (and b!971510 res!650388) b!971512))

(assert (= (and b!971512 res!650389) b!971509))

(assert (= (and b!971516 condMapEmpty!35242) mapIsEmpty!35242))

(assert (= (and b!971516 (not condMapEmpty!35242)) mapNonEmpty!35242))

(get-info :version)

(assert (= (and mapNonEmpty!35242 ((_ is ValueCellFull!10596) mapValue!35242)) b!971511))

(assert (= (and b!971516 ((_ is ValueCellFull!10596) mapDefault!35242)) b!971513))

(assert (= start!83292 b!971516))

(declare-fun m!899013 () Bool)

(assert (=> b!971517 m!899013))

(declare-fun m!899015 () Bool)

(assert (=> mapNonEmpty!35242 m!899015))

(declare-fun m!899017 () Bool)

(assert (=> b!971512 m!899017))

(declare-fun m!899019 () Bool)

(assert (=> b!971512 m!899019))

(assert (=> b!971512 m!899017))

(assert (=> b!971512 m!899019))

(declare-fun m!899021 () Bool)

(assert (=> b!971512 m!899021))

(declare-fun m!899023 () Bool)

(assert (=> start!83292 m!899023))

(declare-fun m!899025 () Bool)

(assert (=> start!83292 m!899025))

(declare-fun m!899027 () Bool)

(assert (=> start!83292 m!899027))

(declare-fun m!899029 () Bool)

(assert (=> b!971518 m!899029))

(declare-fun m!899031 () Bool)

(assert (=> b!971509 m!899031))

(assert (=> b!971510 m!899019))

(assert (=> b!971510 m!899019))

(declare-fun m!899033 () Bool)

(assert (=> b!971510 m!899033))

(check-sat b_and!30763 (not mapNonEmpty!35242) (not b!971512) (not b!971518) (not b!971517) (not b_next!19257) tp_is_empty!22155 (not start!83292) (not b!971510) (not b!971509))
(check-sat b_and!30763 (not b_next!19257))
