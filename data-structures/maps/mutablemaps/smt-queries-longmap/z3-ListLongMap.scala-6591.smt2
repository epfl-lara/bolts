; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83460 () Bool)

(assert start!83460)

(declare-fun b_free!19425 () Bool)

(declare-fun b_next!19425 () Bool)

(assert (=> start!83460 (= b_free!19425 (not b_next!19425))))

(declare-fun tp!67555 () Bool)

(declare-fun b_and!31045 () Bool)

(assert (=> start!83460 (= tp!67555 b_and!31045)))

(declare-fun b!974314 () Bool)

(declare-fun res!652323 () Bool)

(declare-fun e!549186 () Bool)

(assert (=> b!974314 (=> (not res!652323) (not e!549186))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34747 0))(
  ( (V!34748 (val!11212 Int)) )
))
(declare-datatypes ((ValueCell!10680 0))(
  ( (ValueCellFull!10680 (v!13771 V!34747)) (EmptyCell!10680) )
))
(declare-datatypes ((array!60665 0))(
  ( (array!60666 (arr!29192 (Array (_ BitVec 32) ValueCell!10680)) (size!29672 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60665)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60667 0))(
  ( (array!60668 (arr!29193 (Array (_ BitVec 32) (_ BitVec 64))) (size!29673 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60667)

(assert (=> b!974314 (= res!652323 (and (= (size!29672 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29673 _keys!1717) (size!29672 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35494 () Bool)

(declare-fun mapRes!35494 () Bool)

(declare-fun tp!67554 () Bool)

(declare-fun e!549187 () Bool)

(assert (=> mapNonEmpty!35494 (= mapRes!35494 (and tp!67554 e!549187))))

(declare-fun mapValue!35494 () ValueCell!10680)

(declare-fun mapKey!35494 () (_ BitVec 32))

(declare-fun mapRest!35494 () (Array (_ BitVec 32) ValueCell!10680))

(assert (=> mapNonEmpty!35494 (= (arr!29192 _values!1425) (store mapRest!35494 mapKey!35494 mapValue!35494))))

(declare-fun b!974316 () Bool)

(declare-fun res!652318 () Bool)

(assert (=> b!974316 (=> (not res!652318) (not e!549186))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!974316 (= res!652318 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29673 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29673 _keys!1717))))))

(declare-fun b!974317 () Bool)

(assert (=> b!974317 (= e!549186 false)))

(declare-datatypes ((tuple2!14506 0))(
  ( (tuple2!14507 (_1!7263 (_ BitVec 64)) (_2!7263 V!34747)) )
))
(declare-datatypes ((List!20381 0))(
  ( (Nil!20378) (Cons!20377 (h!21539 tuple2!14506) (t!28866 List!20381)) )
))
(declare-datatypes ((ListLongMap!13217 0))(
  ( (ListLongMap!13218 (toList!6624 List!20381)) )
))
(declare-fun lt!432718 () ListLongMap!13217)

(declare-fun zeroValue!1367 () V!34747)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34747)

(declare-fun getCurrentListMap!3809 (array!60667 array!60665 (_ BitVec 32) (_ BitVec 32) V!34747 V!34747 (_ BitVec 32) Int) ListLongMap!13217)

(assert (=> b!974317 (= lt!432718 (getCurrentListMap!3809 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapIsEmpty!35494 () Bool)

(assert (=> mapIsEmpty!35494 mapRes!35494))

(declare-fun b!974318 () Bool)

(declare-fun res!652324 () Bool)

(assert (=> b!974318 (=> (not res!652324) (not e!549186))))

(declare-fun contains!5663 (ListLongMap!13217 (_ BitVec 64)) Bool)

(assert (=> b!974318 (= res!652324 (contains!5663 (getCurrentListMap!3809 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29193 _keys!1717) i!822)))))

(declare-fun b!974319 () Bool)

(declare-fun tp_is_empty!22323 () Bool)

(assert (=> b!974319 (= e!549187 tp_is_empty!22323)))

(declare-fun res!652319 () Bool)

(assert (=> start!83460 (=> (not res!652319) (not e!549186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83460 (= res!652319 (validMask!0 mask!2147))))

(assert (=> start!83460 e!549186))

(assert (=> start!83460 true))

(declare-fun e!549189 () Bool)

(declare-fun array_inv!22475 (array!60665) Bool)

(assert (=> start!83460 (and (array_inv!22475 _values!1425) e!549189)))

(assert (=> start!83460 tp_is_empty!22323))

(assert (=> start!83460 tp!67555))

(declare-fun array_inv!22476 (array!60667) Bool)

(assert (=> start!83460 (array_inv!22476 _keys!1717)))

(declare-fun b!974315 () Bool)

(declare-fun e!549185 () Bool)

(assert (=> b!974315 (= e!549189 (and e!549185 mapRes!35494))))

(declare-fun condMapEmpty!35494 () Bool)

(declare-fun mapDefault!35494 () ValueCell!10680)

(assert (=> b!974315 (= condMapEmpty!35494 (= (arr!29192 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10680)) mapDefault!35494)))))

(declare-fun b!974320 () Bool)

(declare-fun res!652321 () Bool)

(assert (=> b!974320 (=> (not res!652321) (not e!549186))))

(declare-datatypes ((List!20382 0))(
  ( (Nil!20379) (Cons!20378 (h!21540 (_ BitVec 64)) (t!28867 List!20382)) )
))
(declare-fun arrayNoDuplicates!0 (array!60667 (_ BitVec 32) List!20382) Bool)

(assert (=> b!974320 (= res!652321 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20379))))

(declare-fun b!974321 () Bool)

(assert (=> b!974321 (= e!549185 tp_is_empty!22323)))

(declare-fun b!974322 () Bool)

(declare-fun res!652322 () Bool)

(assert (=> b!974322 (=> (not res!652322) (not e!549186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60667 (_ BitVec 32)) Bool)

(assert (=> b!974322 (= res!652322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974323 () Bool)

(declare-fun res!652320 () Bool)

(assert (=> b!974323 (=> (not res!652320) (not e!549186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974323 (= res!652320 (validKeyInArray!0 (select (arr!29193 _keys!1717) i!822)))))

(assert (= (and start!83460 res!652319) b!974314))

(assert (= (and b!974314 res!652323) b!974322))

(assert (= (and b!974322 res!652322) b!974320))

(assert (= (and b!974320 res!652321) b!974316))

(assert (= (and b!974316 res!652318) b!974323))

(assert (= (and b!974323 res!652320) b!974318))

(assert (= (and b!974318 res!652324) b!974317))

(assert (= (and b!974315 condMapEmpty!35494) mapIsEmpty!35494))

(assert (= (and b!974315 (not condMapEmpty!35494)) mapNonEmpty!35494))

(get-info :version)

(assert (= (and mapNonEmpty!35494 ((_ is ValueCellFull!10680) mapValue!35494)) b!974319))

(assert (= (and b!974315 ((_ is ValueCellFull!10680) mapDefault!35494)) b!974321))

(assert (= start!83460 b!974315))

(declare-fun m!901935 () Bool)

(assert (=> b!974323 m!901935))

(assert (=> b!974323 m!901935))

(declare-fun m!901937 () Bool)

(assert (=> b!974323 m!901937))

(declare-fun m!901939 () Bool)

(assert (=> b!974320 m!901939))

(declare-fun m!901941 () Bool)

(assert (=> start!83460 m!901941))

(declare-fun m!901943 () Bool)

(assert (=> start!83460 m!901943))

(declare-fun m!901945 () Bool)

(assert (=> start!83460 m!901945))

(declare-fun m!901947 () Bool)

(assert (=> b!974317 m!901947))

(declare-fun m!901949 () Bool)

(assert (=> mapNonEmpty!35494 m!901949))

(declare-fun m!901951 () Bool)

(assert (=> b!974322 m!901951))

(declare-fun m!901953 () Bool)

(assert (=> b!974318 m!901953))

(assert (=> b!974318 m!901935))

(assert (=> b!974318 m!901953))

(assert (=> b!974318 m!901935))

(declare-fun m!901955 () Bool)

(assert (=> b!974318 m!901955))

(check-sat (not b!974323) tp_is_empty!22323 (not b!974322) (not mapNonEmpty!35494) b_and!31045 (not b_next!19425) (not start!83460) (not b!974317) (not b!974320) (not b!974318))
(check-sat b_and!31045 (not b_next!19425))
