; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83520 () Bool)

(assert start!83520)

(declare-fun b_free!19479 () Bool)

(declare-fun b_next!19479 () Bool)

(assert (=> start!83520 (= b_free!19479 (not b_next!19479))))

(declare-fun tp!67726 () Bool)

(declare-fun b_and!31099 () Bool)

(assert (=> start!83520 (= tp!67726 b_and!31099)))

(declare-fun b!975187 () Bool)

(declare-fun res!652926 () Bool)

(declare-fun e!549644 () Bool)

(assert (=> b!975187 (=> (not res!652926) (not e!549644))))

(declare-datatypes ((array!60781 0))(
  ( (array!60782 (arr!29250 (Array (_ BitVec 32) (_ BitVec 64))) (size!29730 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60781)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975187 (= res!652926 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29730 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29730 _keys!1717))))))

(declare-fun mapIsEmpty!35584 () Bool)

(declare-fun mapRes!35584 () Bool)

(assert (=> mapIsEmpty!35584 mapRes!35584))

(declare-fun res!652924 () Bool)

(assert (=> start!83520 (=> (not res!652924) (not e!549644))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83520 (= res!652924 (validMask!0 mask!2147))))

(assert (=> start!83520 e!549644))

(assert (=> start!83520 true))

(declare-datatypes ((V!34827 0))(
  ( (V!34828 (val!11242 Int)) )
))
(declare-datatypes ((ValueCell!10710 0))(
  ( (ValueCellFull!10710 (v!13801 V!34827)) (EmptyCell!10710) )
))
(declare-datatypes ((array!60783 0))(
  ( (array!60784 (arr!29251 (Array (_ BitVec 32) ValueCell!10710)) (size!29731 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60783)

(declare-fun e!549647 () Bool)

(declare-fun array_inv!22517 (array!60783) Bool)

(assert (=> start!83520 (and (array_inv!22517 _values!1425) e!549647)))

(declare-fun tp_is_empty!22383 () Bool)

(assert (=> start!83520 tp_is_empty!22383))

(assert (=> start!83520 tp!67726))

(declare-fun array_inv!22518 (array!60781) Bool)

(assert (=> start!83520 (array_inv!22518 _keys!1717)))

(declare-fun b!975188 () Bool)

(declare-fun e!549648 () Bool)

(assert (=> b!975188 (= e!549648 tp_is_empty!22383)))

(declare-fun b!975189 () Bool)

(declare-fun e!549645 () Bool)

(assert (=> b!975189 (= e!549647 (and e!549645 mapRes!35584))))

(declare-fun condMapEmpty!35584 () Bool)

(declare-fun mapDefault!35584 () ValueCell!10710)

(assert (=> b!975189 (= condMapEmpty!35584 (= (arr!29251 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10710)) mapDefault!35584)))))

(declare-fun b!975190 () Bool)

(declare-fun res!652923 () Bool)

(assert (=> b!975190 (=> (not res!652923) (not e!549644))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975190 (= res!652923 (and (= (size!29731 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29730 _keys!1717) (size!29731 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975191 () Bool)

(assert (=> b!975191 (= e!549644 false)))

(declare-fun zeroValue!1367 () V!34827)

(declare-datatypes ((tuple2!14554 0))(
  ( (tuple2!14555 (_1!7287 (_ BitVec 64)) (_2!7287 V!34827)) )
))
(declare-datatypes ((List!20426 0))(
  ( (Nil!20423) (Cons!20422 (h!21584 tuple2!14554) (t!28911 List!20426)) )
))
(declare-datatypes ((ListLongMap!13265 0))(
  ( (ListLongMap!13266 (toList!6648 List!20426)) )
))
(declare-fun lt!432799 () ListLongMap!13265)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34827)

(declare-fun getCurrentListMap!3833 (array!60781 array!60783 (_ BitVec 32) (_ BitVec 32) V!34827 V!34827 (_ BitVec 32) Int) ListLongMap!13265)

(assert (=> b!975191 (= lt!432799 (getCurrentListMap!3833 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35584 () Bool)

(declare-fun tp!67725 () Bool)

(assert (=> mapNonEmpty!35584 (= mapRes!35584 (and tp!67725 e!549648))))

(declare-fun mapKey!35584 () (_ BitVec 32))

(declare-fun mapValue!35584 () ValueCell!10710)

(declare-fun mapRest!35584 () (Array (_ BitVec 32) ValueCell!10710))

(assert (=> mapNonEmpty!35584 (= (arr!29251 _values!1425) (store mapRest!35584 mapKey!35584 mapValue!35584))))

(declare-fun b!975192 () Bool)

(declare-fun res!652922 () Bool)

(assert (=> b!975192 (=> (not res!652922) (not e!549644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60781 (_ BitVec 32)) Bool)

(assert (=> b!975192 (= res!652922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975193 () Bool)

(declare-fun res!652921 () Bool)

(assert (=> b!975193 (=> (not res!652921) (not e!549644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975193 (= res!652921 (validKeyInArray!0 (select (arr!29250 _keys!1717) i!822)))))

(declare-fun b!975194 () Bool)

(assert (=> b!975194 (= e!549645 tp_is_empty!22383)))

(declare-fun b!975195 () Bool)

(declare-fun res!652925 () Bool)

(assert (=> b!975195 (=> (not res!652925) (not e!549644))))

(declare-fun contains!5681 (ListLongMap!13265 (_ BitVec 64)) Bool)

(assert (=> b!975195 (= res!652925 (contains!5681 (getCurrentListMap!3833 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29250 _keys!1717) i!822)))))

(declare-fun b!975196 () Bool)

(declare-fun res!652927 () Bool)

(assert (=> b!975196 (=> (not res!652927) (not e!549644))))

(declare-datatypes ((List!20427 0))(
  ( (Nil!20424) (Cons!20423 (h!21585 (_ BitVec 64)) (t!28912 List!20427)) )
))
(declare-fun arrayNoDuplicates!0 (array!60781 (_ BitVec 32) List!20427) Bool)

(assert (=> b!975196 (= res!652927 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20424))))

(assert (= (and start!83520 res!652924) b!975190))

(assert (= (and b!975190 res!652923) b!975192))

(assert (= (and b!975192 res!652922) b!975196))

(assert (= (and b!975196 res!652927) b!975187))

(assert (= (and b!975187 res!652926) b!975193))

(assert (= (and b!975193 res!652921) b!975195))

(assert (= (and b!975195 res!652925) b!975191))

(assert (= (and b!975189 condMapEmpty!35584) mapIsEmpty!35584))

(assert (= (and b!975189 (not condMapEmpty!35584)) mapNonEmpty!35584))

(get-info :version)

(assert (= (and mapNonEmpty!35584 ((_ is ValueCellFull!10710) mapValue!35584)) b!975188))

(assert (= (and b!975189 ((_ is ValueCellFull!10710) mapDefault!35584)) b!975194))

(assert (= start!83520 b!975189))

(declare-fun m!902565 () Bool)

(assert (=> b!975195 m!902565))

(declare-fun m!902567 () Bool)

(assert (=> b!975195 m!902567))

(assert (=> b!975195 m!902565))

(assert (=> b!975195 m!902567))

(declare-fun m!902569 () Bool)

(assert (=> b!975195 m!902569))

(declare-fun m!902571 () Bool)

(assert (=> b!975191 m!902571))

(declare-fun m!902573 () Bool)

(assert (=> mapNonEmpty!35584 m!902573))

(assert (=> b!975193 m!902567))

(assert (=> b!975193 m!902567))

(declare-fun m!902575 () Bool)

(assert (=> b!975193 m!902575))

(declare-fun m!902577 () Bool)

(assert (=> start!83520 m!902577))

(declare-fun m!902579 () Bool)

(assert (=> start!83520 m!902579))

(declare-fun m!902581 () Bool)

(assert (=> start!83520 m!902581))

(declare-fun m!902583 () Bool)

(assert (=> b!975196 m!902583))

(declare-fun m!902585 () Bool)

(assert (=> b!975192 m!902585))

(check-sat (not b!975193) (not b!975196) (not mapNonEmpty!35584) tp_is_empty!22383 (not b_next!19479) b_and!31099 (not b!975195) (not b!975191) (not start!83520) (not b!975192))
(check-sat b_and!31099 (not b_next!19479))
