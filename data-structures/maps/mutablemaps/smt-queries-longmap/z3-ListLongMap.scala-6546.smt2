; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83190 () Bool)

(assert start!83190)

(declare-fun b_free!19155 () Bool)

(declare-fun b_next!19155 () Bool)

(assert (=> start!83190 (= b_free!19155 (not b_next!19155))))

(declare-fun tp!66745 () Bool)

(declare-fun b_and!30661 () Bool)

(assert (=> start!83190 (= tp!66745 b_and!30661)))

(declare-fun mapIsEmpty!35089 () Bool)

(declare-fun mapRes!35089 () Bool)

(assert (=> mapIsEmpty!35089 mapRes!35089))

(declare-fun b!970046 () Bool)

(declare-fun res!649382 () Bool)

(declare-fun e!546911 () Bool)

(assert (=> b!970046 (=> (not res!649382) (not e!546911))))

(declare-datatypes ((array!60149 0))(
  ( (array!60150 (arr!28934 (Array (_ BitVec 32) (_ BitVec 64))) (size!29414 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60149)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970046 (= res!649382 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29414 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29414 _keys!1717))))))

(declare-fun b!970048 () Bool)

(declare-fun res!649379 () Bool)

(assert (=> b!970048 (=> (not res!649379) (not e!546911))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34387 0))(
  ( (V!34388 (val!11077 Int)) )
))
(declare-datatypes ((ValueCell!10545 0))(
  ( (ValueCellFull!10545 (v!13636 V!34387)) (EmptyCell!10545) )
))
(declare-datatypes ((array!60151 0))(
  ( (array!60152 (arr!28935 (Array (_ BitVec 32) ValueCell!10545)) (size!29415 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60151)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970048 (= res!649379 (and (= (size!29415 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29414 _keys!1717) (size!29415 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970049 () Bool)

(declare-fun e!546910 () Bool)

(declare-fun tp_is_empty!22053 () Bool)

(assert (=> b!970049 (= e!546910 tp_is_empty!22053)))

(declare-fun b!970050 () Bool)

(declare-fun e!546909 () Bool)

(assert (=> b!970050 (= e!546909 (and e!546910 mapRes!35089))))

(declare-fun condMapEmpty!35089 () Bool)

(declare-fun mapDefault!35089 () ValueCell!10545)

(assert (=> b!970050 (= condMapEmpty!35089 (= (arr!28935 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10545)) mapDefault!35089)))))

(declare-fun mapNonEmpty!35089 () Bool)

(declare-fun tp!66744 () Bool)

(declare-fun e!546908 () Bool)

(assert (=> mapNonEmpty!35089 (= mapRes!35089 (and tp!66744 e!546908))))

(declare-fun mapRest!35089 () (Array (_ BitVec 32) ValueCell!10545))

(declare-fun mapKey!35089 () (_ BitVec 32))

(declare-fun mapValue!35089 () ValueCell!10545)

(assert (=> mapNonEmpty!35089 (= (arr!28935 _values!1425) (store mapRest!35089 mapKey!35089 mapValue!35089))))

(declare-fun b!970051 () Bool)

(declare-fun res!649381 () Bool)

(assert (=> b!970051 (=> (not res!649381) (not e!546911))))

(declare-datatypes ((List!20182 0))(
  ( (Nil!20179) (Cons!20178 (h!21340 (_ BitVec 64)) (t!28553 List!20182)) )
))
(declare-fun arrayNoDuplicates!0 (array!60149 (_ BitVec 32) List!20182) Bool)

(assert (=> b!970051 (= res!649381 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20179))))

(declare-fun b!970052 () Bool)

(declare-fun res!649383 () Bool)

(assert (=> b!970052 (=> (not res!649383) (not e!546911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60149 (_ BitVec 32)) Bool)

(assert (=> b!970052 (= res!649383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970047 () Bool)

(assert (=> b!970047 (= e!546911 false)))

(declare-fun zeroValue!1367 () V!34387)

(declare-fun lt!431656 () Bool)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34387)

(declare-datatypes ((tuple2!14290 0))(
  ( (tuple2!14291 (_1!7155 (_ BitVec 64)) (_2!7155 V!34387)) )
))
(declare-datatypes ((List!20183 0))(
  ( (Nil!20180) (Cons!20179 (h!21341 tuple2!14290) (t!28554 List!20183)) )
))
(declare-datatypes ((ListLongMap!13001 0))(
  ( (ListLongMap!13002 (toList!6516 List!20183)) )
))
(declare-fun contains!5571 (ListLongMap!13001 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3701 (array!60149 array!60151 (_ BitVec 32) (_ BitVec 32) V!34387 V!34387 (_ BitVec 32) Int) ListLongMap!13001)

(assert (=> b!970047 (= lt!431656 (contains!5571 (getCurrentListMap!3701 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28934 _keys!1717) i!822)))))

(declare-fun res!649380 () Bool)

(assert (=> start!83190 (=> (not res!649380) (not e!546911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83190 (= res!649380 (validMask!0 mask!2147))))

(assert (=> start!83190 e!546911))

(assert (=> start!83190 true))

(declare-fun array_inv!22285 (array!60151) Bool)

(assert (=> start!83190 (and (array_inv!22285 _values!1425) e!546909)))

(assert (=> start!83190 tp_is_empty!22053))

(assert (=> start!83190 tp!66745))

(declare-fun array_inv!22286 (array!60149) Bool)

(assert (=> start!83190 (array_inv!22286 _keys!1717)))

(declare-fun b!970053 () Bool)

(assert (=> b!970053 (= e!546908 tp_is_empty!22053)))

(declare-fun b!970054 () Bool)

(declare-fun res!649384 () Bool)

(assert (=> b!970054 (=> (not res!649384) (not e!546911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970054 (= res!649384 (validKeyInArray!0 (select (arr!28934 _keys!1717) i!822)))))

(assert (= (and start!83190 res!649380) b!970048))

(assert (= (and b!970048 res!649379) b!970052))

(assert (= (and b!970052 res!649383) b!970051))

(assert (= (and b!970051 res!649381) b!970046))

(assert (= (and b!970046 res!649382) b!970054))

(assert (= (and b!970054 res!649384) b!970047))

(assert (= (and b!970050 condMapEmpty!35089) mapIsEmpty!35089))

(assert (= (and b!970050 (not condMapEmpty!35089)) mapNonEmpty!35089))

(get-info :version)

(assert (= (and mapNonEmpty!35089 ((_ is ValueCellFull!10545) mapValue!35089)) b!970053))

(assert (= (and b!970050 ((_ is ValueCellFull!10545) mapDefault!35089)) b!970049))

(assert (= start!83190 b!970050))

(declare-fun m!897943 () Bool)

(assert (=> b!970047 m!897943))

(declare-fun m!897945 () Bool)

(assert (=> b!970047 m!897945))

(assert (=> b!970047 m!897943))

(assert (=> b!970047 m!897945))

(declare-fun m!897947 () Bool)

(assert (=> b!970047 m!897947))

(declare-fun m!897949 () Bool)

(assert (=> start!83190 m!897949))

(declare-fun m!897951 () Bool)

(assert (=> start!83190 m!897951))

(declare-fun m!897953 () Bool)

(assert (=> start!83190 m!897953))

(declare-fun m!897955 () Bool)

(assert (=> b!970052 m!897955))

(declare-fun m!897957 () Bool)

(assert (=> mapNonEmpty!35089 m!897957))

(assert (=> b!970054 m!897945))

(assert (=> b!970054 m!897945))

(declare-fun m!897959 () Bool)

(assert (=> b!970054 m!897959))

(declare-fun m!897961 () Bool)

(assert (=> b!970051 m!897961))

(check-sat b_and!30661 (not b!970051) (not b!970052) (not b!970047) (not mapNonEmpty!35089) tp_is_empty!22053 (not b!970054) (not start!83190) (not b_next!19155))
(check-sat b_and!30661 (not b_next!19155))
