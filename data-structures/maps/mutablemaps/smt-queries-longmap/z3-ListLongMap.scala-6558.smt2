; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83262 () Bool)

(assert start!83262)

(declare-fun b_free!19227 () Bool)

(declare-fun b_next!19227 () Bool)

(assert (=> start!83262 (= b_free!19227 (not b_next!19227))))

(declare-fun tp!66960 () Bool)

(declare-fun b_and!30733 () Bool)

(assert (=> start!83262 (= tp!66960 b_and!30733)))

(declare-fun b!971059 () Bool)

(declare-fun e!547449 () Bool)

(declare-fun e!547448 () Bool)

(declare-fun mapRes!35197 () Bool)

(assert (=> b!971059 (= e!547449 (and e!547448 mapRes!35197))))

(declare-fun condMapEmpty!35197 () Bool)

(declare-datatypes ((V!34483 0))(
  ( (V!34484 (val!11113 Int)) )
))
(declare-datatypes ((ValueCell!10581 0))(
  ( (ValueCellFull!10581 (v!13672 V!34483)) (EmptyCell!10581) )
))
(declare-datatypes ((array!60283 0))(
  ( (array!60284 (arr!29001 (Array (_ BitVec 32) ValueCell!10581)) (size!29481 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60283)

(declare-fun mapDefault!35197 () ValueCell!10581)

(assert (=> b!971059 (= condMapEmpty!35197 (= (arr!29001 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10581)) mapDefault!35197)))))

(declare-fun b!971060 () Bool)

(declare-fun res!650072 () Bool)

(declare-fun e!547452 () Bool)

(assert (=> b!971060 (=> (not res!650072) (not e!547452))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34483)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60285 0))(
  ( (array!60286 (arr!29002 (Array (_ BitVec 32) (_ BitVec 64))) (size!29482 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60285)

(declare-fun zeroValue!1367 () V!34483)

(declare-datatypes ((tuple2!14346 0))(
  ( (tuple2!14347 (_1!7183 (_ BitVec 64)) (_2!7183 V!34483)) )
))
(declare-datatypes ((List!20236 0))(
  ( (Nil!20233) (Cons!20232 (h!21394 tuple2!14346) (t!28607 List!20236)) )
))
(declare-datatypes ((ListLongMap!13057 0))(
  ( (ListLongMap!13058 (toList!6544 List!20236)) )
))
(declare-fun contains!5597 (ListLongMap!13057 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3729 (array!60285 array!60283 (_ BitVec 32) (_ BitVec 32) V!34483 V!34483 (_ BitVec 32) Int) ListLongMap!13057)

(assert (=> b!971060 (= res!650072 (contains!5597 (getCurrentListMap!3729 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29002 _keys!1717) i!822)))))

(declare-fun b!971061 () Bool)

(declare-fun tp_is_empty!22125 () Bool)

(assert (=> b!971061 (= e!547448 tp_is_empty!22125)))

(declare-fun mapIsEmpty!35197 () Bool)

(assert (=> mapIsEmpty!35197 mapRes!35197))

(declare-fun b!971063 () Bool)

(declare-fun res!650069 () Bool)

(assert (=> b!971063 (=> (not res!650069) (not e!547452))))

(declare-datatypes ((List!20237 0))(
  ( (Nil!20234) (Cons!20233 (h!21395 (_ BitVec 64)) (t!28608 List!20237)) )
))
(declare-fun arrayNoDuplicates!0 (array!60285 (_ BitVec 32) List!20237) Bool)

(assert (=> b!971063 (= res!650069 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20234))))

(declare-fun b!971062 () Bool)

(declare-fun res!650073 () Bool)

(assert (=> b!971062 (=> (not res!650073) (not e!547452))))

(assert (=> b!971062 (= res!650073 (and (= (size!29481 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29482 _keys!1717) (size!29481 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!650071 () Bool)

(assert (=> start!83262 (=> (not res!650071) (not e!547452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83262 (= res!650071 (validMask!0 mask!2147))))

(assert (=> start!83262 e!547452))

(assert (=> start!83262 true))

(declare-fun array_inv!22335 (array!60283) Bool)

(assert (=> start!83262 (and (array_inv!22335 _values!1425) e!547449)))

(assert (=> start!83262 tp_is_empty!22125))

(assert (=> start!83262 tp!66960))

(declare-fun array_inv!22336 (array!60285) Bool)

(assert (=> start!83262 (array_inv!22336 _keys!1717)))

(declare-fun b!971064 () Bool)

(declare-fun res!650068 () Bool)

(assert (=> b!971064 (=> (not res!650068) (not e!547452))))

(assert (=> b!971064 (= res!650068 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29482 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29482 _keys!1717))))))

(declare-fun b!971065 () Bool)

(assert (=> b!971065 (= e!547452 false)))

(declare-fun lt!431755 () ListLongMap!13057)

(assert (=> b!971065 (= lt!431755 (getCurrentListMap!3729 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971066 () Bool)

(declare-fun e!547451 () Bool)

(assert (=> b!971066 (= e!547451 tp_is_empty!22125)))

(declare-fun b!971067 () Bool)

(declare-fun res!650074 () Bool)

(assert (=> b!971067 (=> (not res!650074) (not e!547452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971067 (= res!650074 (validKeyInArray!0 (select (arr!29002 _keys!1717) i!822)))))

(declare-fun b!971068 () Bool)

(declare-fun res!650070 () Bool)

(assert (=> b!971068 (=> (not res!650070) (not e!547452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60285 (_ BitVec 32)) Bool)

(assert (=> b!971068 (= res!650070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapNonEmpty!35197 () Bool)

(declare-fun tp!66961 () Bool)

(assert (=> mapNonEmpty!35197 (= mapRes!35197 (and tp!66961 e!547451))))

(declare-fun mapKey!35197 () (_ BitVec 32))

(declare-fun mapValue!35197 () ValueCell!10581)

(declare-fun mapRest!35197 () (Array (_ BitVec 32) ValueCell!10581))

(assert (=> mapNonEmpty!35197 (= (arr!29001 _values!1425) (store mapRest!35197 mapKey!35197 mapValue!35197))))

(assert (= (and start!83262 res!650071) b!971062))

(assert (= (and b!971062 res!650073) b!971068))

(assert (= (and b!971068 res!650070) b!971063))

(assert (= (and b!971063 res!650069) b!971064))

(assert (= (and b!971064 res!650068) b!971067))

(assert (= (and b!971067 res!650074) b!971060))

(assert (= (and b!971060 res!650072) b!971065))

(assert (= (and b!971059 condMapEmpty!35197) mapIsEmpty!35197))

(assert (= (and b!971059 (not condMapEmpty!35197)) mapNonEmpty!35197))

(get-info :version)

(assert (= (and mapNonEmpty!35197 ((_ is ValueCellFull!10581) mapValue!35197)) b!971066))

(assert (= (and b!971059 ((_ is ValueCellFull!10581) mapDefault!35197)) b!971061))

(assert (= start!83262 b!971059))

(declare-fun m!898683 () Bool)

(assert (=> b!971067 m!898683))

(assert (=> b!971067 m!898683))

(declare-fun m!898685 () Bool)

(assert (=> b!971067 m!898685))

(declare-fun m!898687 () Bool)

(assert (=> b!971063 m!898687))

(declare-fun m!898689 () Bool)

(assert (=> b!971068 m!898689))

(declare-fun m!898691 () Bool)

(assert (=> mapNonEmpty!35197 m!898691))

(declare-fun m!898693 () Bool)

(assert (=> start!83262 m!898693))

(declare-fun m!898695 () Bool)

(assert (=> start!83262 m!898695))

(declare-fun m!898697 () Bool)

(assert (=> start!83262 m!898697))

(declare-fun m!898699 () Bool)

(assert (=> b!971065 m!898699))

(declare-fun m!898701 () Bool)

(assert (=> b!971060 m!898701))

(assert (=> b!971060 m!898683))

(assert (=> b!971060 m!898701))

(assert (=> b!971060 m!898683))

(declare-fun m!898703 () Bool)

(assert (=> b!971060 m!898703))

(check-sat b_and!30733 (not b_next!19227) (not b!971065) (not b!971063) (not b!971060) (not b!971067) tp_is_empty!22125 (not b!971068) (not mapNonEmpty!35197) (not start!83262))
(check-sat b_and!30733 (not b_next!19227))
