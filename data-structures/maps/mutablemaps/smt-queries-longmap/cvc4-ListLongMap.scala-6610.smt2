; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83576 () Bool)

(assert start!83576)

(declare-fun b_free!19535 () Bool)

(declare-fun b_next!19535 () Bool)

(assert (=> start!83576 (= b_free!19535 (not b_next!19535))))

(declare-fun tp!67894 () Bool)

(declare-fun b_and!31183 () Bool)

(assert (=> start!83576 (= tp!67894 b_and!31183)))

(declare-fun b!976108 () Bool)

(declare-fun res!653564 () Bool)

(declare-fun e!550130 () Bool)

(assert (=> b!976108 (=> (not res!653564) (not e!550130))))

(declare-datatypes ((array!60893 0))(
  ( (array!60894 (arr!29306 (Array (_ BitVec 32) (_ BitVec 64))) (size!29786 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60893)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976108 (= res!653564 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29786 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29786 _keys!1717))))))

(declare-fun b!976109 () Bool)

(declare-fun e!550126 () Bool)

(assert (=> b!976109 (= e!550126 (not (bvsge i!822 #b00000000000000000000000000000000)))))

(declare-datatypes ((V!34901 0))(
  ( (V!34902 (val!11270 Int)) )
))
(declare-datatypes ((tuple2!14600 0))(
  ( (tuple2!14601 (_1!7310 (_ BitVec 64)) (_2!7310 V!34901)) )
))
(declare-fun lt!433009 () tuple2!14600)

(declare-datatypes ((List!20471 0))(
  ( (Nil!20468) (Cons!20467 (h!21629 tuple2!14600) (t!28986 List!20471)) )
))
(declare-datatypes ((ListLongMap!13311 0))(
  ( (ListLongMap!13312 (toList!6671 List!20471)) )
))
(declare-fun lt!433008 () ListLongMap!13311)

(declare-fun contains!5702 (ListLongMap!13311 (_ BitVec 64)) Bool)

(declare-fun +!2882 (ListLongMap!13311 tuple2!14600) ListLongMap!13311)

(assert (=> b!976109 (contains!5702 (+!2882 lt!433008 lt!433009) (select (arr!29306 _keys!1717) i!822))))

(declare-datatypes ((Unit!32425 0))(
  ( (Unit!32426) )
))
(declare-fun lt!433006 () Unit!32425)

(declare-fun lt!433004 () (_ BitVec 64))

(declare-fun lt!433003 () V!34901)

(declare-fun addStillContains!615 (ListLongMap!13311 (_ BitVec 64) V!34901 (_ BitVec 64)) Unit!32425)

(assert (=> b!976109 (= lt!433006 (addStillContains!615 lt!433008 lt!433004 lt!433003 (select (arr!29306 _keys!1717) i!822)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10738 0))(
  ( (ValueCellFull!10738 (v!13829 V!34901)) (EmptyCell!10738) )
))
(declare-datatypes ((array!60895 0))(
  ( (array!60896 (arr!29307 (Array (_ BitVec 32) ValueCell!10738)) (size!29787 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60895)

(declare-fun zeroValue!1367 () V!34901)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34901)

(declare-fun lt!433007 () ListLongMap!13311)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3856 (array!60893 array!60895 (_ BitVec 32) (_ BitVec 32) V!34901 V!34901 (_ BitVec 32) Int) ListLongMap!13311)

(assert (=> b!976109 (= lt!433007 (+!2882 (getCurrentListMap!3856 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!433009))))

(assert (=> b!976109 (= lt!433009 (tuple2!14601 lt!433004 lt!433003))))

(declare-fun get!15197 (ValueCell!10738 V!34901) V!34901)

(declare-fun dynLambda!1721 (Int (_ BitVec 64)) V!34901)

(assert (=> b!976109 (= lt!433003 (get!15197 (select (arr!29307 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1721 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!433005 () Unit!32425)

(declare-fun lemmaListMapRecursiveValidKeyArray!293 (array!60893 array!60895 (_ BitVec 32) (_ BitVec 32) V!34901 V!34901 (_ BitVec 32) Int) Unit!32425)

(assert (=> b!976109 (= lt!433005 (lemmaListMapRecursiveValidKeyArray!293 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976110 () Bool)

(declare-fun e!550129 () Bool)

(assert (=> b!976110 (= e!550129 e!550126)))

(declare-fun res!653567 () Bool)

(assert (=> b!976110 (=> (not res!653567) (not e!550126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976110 (= res!653567 (validKeyInArray!0 lt!433004))))

(assert (=> b!976110 (= lt!433004 (select (arr!29306 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!976110 (= lt!433007 (getCurrentListMap!3856 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976111 () Bool)

(declare-fun res!653565 () Bool)

(assert (=> b!976111 (=> (not res!653565) (not e!550130))))

(assert (=> b!976111 (= res!653565 (and (= (size!29787 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29786 _keys!1717) (size!29787 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!653566 () Bool)

(assert (=> start!83576 (=> (not res!653566) (not e!550130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83576 (= res!653566 (validMask!0 mask!2147))))

(assert (=> start!83576 e!550130))

(assert (=> start!83576 true))

(declare-fun e!550127 () Bool)

(declare-fun array_inv!22561 (array!60895) Bool)

(assert (=> start!83576 (and (array_inv!22561 _values!1425) e!550127)))

(declare-fun tp_is_empty!22439 () Bool)

(assert (=> start!83576 tp_is_empty!22439))

(assert (=> start!83576 tp!67894))

(declare-fun array_inv!22562 (array!60893) Bool)

(assert (=> start!83576 (array_inv!22562 _keys!1717)))

(declare-fun mapIsEmpty!35668 () Bool)

(declare-fun mapRes!35668 () Bool)

(assert (=> mapIsEmpty!35668 mapRes!35668))

(declare-fun b!976112 () Bool)

(declare-fun res!653569 () Bool)

(assert (=> b!976112 (=> (not res!653569) (not e!550130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60893 (_ BitVec 32)) Bool)

(assert (=> b!976112 (= res!653569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!976113 () Bool)

(declare-fun e!550128 () Bool)

(assert (=> b!976113 (= e!550128 tp_is_empty!22439)))

(declare-fun b!976114 () Bool)

(assert (=> b!976114 (= e!550130 e!550129)))

(declare-fun res!653562 () Bool)

(assert (=> b!976114 (=> (not res!653562) (not e!550129))))

(assert (=> b!976114 (= res!653562 (contains!5702 lt!433008 (select (arr!29306 _keys!1717) i!822)))))

(assert (=> b!976114 (= lt!433008 (getCurrentListMap!3856 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!976115 () Bool)

(declare-fun res!653563 () Bool)

(assert (=> b!976115 (=> (not res!653563) (not e!550130))))

(assert (=> b!976115 (= res!653563 (validKeyInArray!0 (select (arr!29306 _keys!1717) i!822)))))

(declare-fun b!976116 () Bool)

(declare-fun res!653568 () Bool)

(assert (=> b!976116 (=> (not res!653568) (not e!550130))))

(declare-datatypes ((List!20472 0))(
  ( (Nil!20469) (Cons!20468 (h!21630 (_ BitVec 64)) (t!28987 List!20472)) )
))
(declare-fun arrayNoDuplicates!0 (array!60893 (_ BitVec 32) List!20472) Bool)

(assert (=> b!976116 (= res!653568 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20469))))

(declare-fun b!976117 () Bool)

(declare-fun e!550125 () Bool)

(assert (=> b!976117 (= e!550125 tp_is_empty!22439)))

(declare-fun mapNonEmpty!35668 () Bool)

(declare-fun tp!67893 () Bool)

(assert (=> mapNonEmpty!35668 (= mapRes!35668 (and tp!67893 e!550128))))

(declare-fun mapValue!35668 () ValueCell!10738)

(declare-fun mapRest!35668 () (Array (_ BitVec 32) ValueCell!10738))

(declare-fun mapKey!35668 () (_ BitVec 32))

(assert (=> mapNonEmpty!35668 (= (arr!29307 _values!1425) (store mapRest!35668 mapKey!35668 mapValue!35668))))

(declare-fun b!976118 () Bool)

(assert (=> b!976118 (= e!550127 (and e!550125 mapRes!35668))))

(declare-fun condMapEmpty!35668 () Bool)

(declare-fun mapDefault!35668 () ValueCell!10738)

