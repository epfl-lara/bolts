; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83194 () Bool)

(assert start!83194)

(declare-fun b_free!19159 () Bool)

(declare-fun b_next!19159 () Bool)

(assert (=> start!83194 (= b_free!19159 (not b_next!19159))))

(declare-fun tp!66756 () Bool)

(declare-fun b_and!30665 () Bool)

(assert (=> start!83194 (= tp!66756 b_and!30665)))

(declare-fun b!970100 () Bool)

(declare-fun e!546938 () Bool)

(declare-fun tp_is_empty!22057 () Bool)

(assert (=> b!970100 (= e!546938 tp_is_empty!22057)))

(declare-fun b!970101 () Bool)

(declare-fun res!649417 () Bool)

(declare-fun e!546941 () Bool)

(assert (=> b!970101 (=> (not res!649417) (not e!546941))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34393 0))(
  ( (V!34394 (val!11079 Int)) )
))
(declare-datatypes ((ValueCell!10547 0))(
  ( (ValueCellFull!10547 (v!13638 V!34393)) (EmptyCell!10547) )
))
(declare-datatypes ((array!60157 0))(
  ( (array!60158 (arr!28938 (Array (_ BitVec 32) ValueCell!10547)) (size!29418 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60157)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60159 0))(
  ( (array!60160 (arr!28939 (Array (_ BitVec 32) (_ BitVec 64))) (size!29419 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60159)

(assert (=> b!970101 (= res!649417 (and (= (size!29418 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29419 _keys!1717) (size!29418 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970102 () Bool)

(declare-fun res!649420 () Bool)

(assert (=> b!970102 (=> (not res!649420) (not e!546941))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970102 (= res!649420 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29419 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29419 _keys!1717))))))

(declare-fun mapIsEmpty!35095 () Bool)

(declare-fun mapRes!35095 () Bool)

(assert (=> mapIsEmpty!35095 mapRes!35095))

(declare-fun b!970103 () Bool)

(declare-fun res!649419 () Bool)

(assert (=> b!970103 (=> (not res!649419) (not e!546941))))

(declare-datatypes ((List!20184 0))(
  ( (Nil!20181) (Cons!20180 (h!21342 (_ BitVec 64)) (t!28555 List!20184)) )
))
(declare-fun arrayNoDuplicates!0 (array!60159 (_ BitVec 32) List!20184) Bool)

(assert (=> b!970103 (= res!649419 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20181))))

(declare-fun res!649415 () Bool)

(assert (=> start!83194 (=> (not res!649415) (not e!546941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83194 (= res!649415 (validMask!0 mask!2147))))

(assert (=> start!83194 e!546941))

(assert (=> start!83194 true))

(declare-fun e!546942 () Bool)

(declare-fun array_inv!22287 (array!60157) Bool)

(assert (=> start!83194 (and (array_inv!22287 _values!1425) e!546942)))

(assert (=> start!83194 tp_is_empty!22057))

(assert (=> start!83194 tp!66756))

(declare-fun array_inv!22288 (array!60159) Bool)

(assert (=> start!83194 (array_inv!22288 _keys!1717)))

(declare-fun mapNonEmpty!35095 () Bool)

(declare-fun tp!66757 () Bool)

(assert (=> mapNonEmpty!35095 (= mapRes!35095 (and tp!66757 e!546938))))

(declare-fun mapValue!35095 () ValueCell!10547)

(declare-fun mapKey!35095 () (_ BitVec 32))

(declare-fun mapRest!35095 () (Array (_ BitVec 32) ValueCell!10547))

(assert (=> mapNonEmpty!35095 (= (arr!28938 _values!1425) (store mapRest!35095 mapKey!35095 mapValue!35095))))

(declare-fun b!970104 () Bool)

(assert (=> b!970104 (= e!546941 false)))

(declare-fun lt!431662 () Bool)

(declare-fun zeroValue!1367 () V!34393)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34393)

(declare-datatypes ((tuple2!14292 0))(
  ( (tuple2!14293 (_1!7156 (_ BitVec 64)) (_2!7156 V!34393)) )
))
(declare-datatypes ((List!20185 0))(
  ( (Nil!20182) (Cons!20181 (h!21343 tuple2!14292) (t!28556 List!20185)) )
))
(declare-datatypes ((ListLongMap!13003 0))(
  ( (ListLongMap!13004 (toList!6517 List!20185)) )
))
(declare-fun contains!5572 (ListLongMap!13003 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3702 (array!60159 array!60157 (_ BitVec 32) (_ BitVec 32) V!34393 V!34393 (_ BitVec 32) Int) ListLongMap!13003)

(assert (=> b!970104 (= lt!431662 (contains!5572 (getCurrentListMap!3702 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28939 _keys!1717) i!822)))))

(declare-fun b!970105 () Bool)

(declare-fun e!546939 () Bool)

(assert (=> b!970105 (= e!546942 (and e!546939 mapRes!35095))))

(declare-fun condMapEmpty!35095 () Bool)

(declare-fun mapDefault!35095 () ValueCell!10547)

