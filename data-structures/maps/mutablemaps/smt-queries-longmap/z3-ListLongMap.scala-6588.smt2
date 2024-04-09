; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83442 () Bool)

(assert start!83442)

(declare-fun b_free!19407 () Bool)

(declare-fun b_next!19407 () Bool)

(assert (=> start!83442 (= b_free!19407 (not b_next!19407))))

(declare-fun tp!67501 () Bool)

(declare-fun b_and!31027 () Bool)

(assert (=> start!83442 (= tp!67501 b_and!31027)))

(declare-fun mapIsEmpty!35467 () Bool)

(declare-fun mapRes!35467 () Bool)

(assert (=> mapIsEmpty!35467 mapRes!35467))

(declare-fun res!652131 () Bool)

(declare-fun e!549053 () Bool)

(assert (=> start!83442 (=> (not res!652131) (not e!549053))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83442 (= res!652131 (validMask!0 mask!2147))))

(assert (=> start!83442 e!549053))

(assert (=> start!83442 true))

(declare-datatypes ((V!34723 0))(
  ( (V!34724 (val!11203 Int)) )
))
(declare-datatypes ((ValueCell!10671 0))(
  ( (ValueCellFull!10671 (v!13762 V!34723)) (EmptyCell!10671) )
))
(declare-datatypes ((array!60631 0))(
  ( (array!60632 (arr!29175 (Array (_ BitVec 32) ValueCell!10671)) (size!29655 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60631)

(declare-fun e!549051 () Bool)

(declare-fun array_inv!22465 (array!60631) Bool)

(assert (=> start!83442 (and (array_inv!22465 _values!1425) e!549051)))

(declare-fun tp_is_empty!22305 () Bool)

(assert (=> start!83442 tp_is_empty!22305))

(assert (=> start!83442 tp!67501))

(declare-datatypes ((array!60633 0))(
  ( (array!60634 (arr!29176 (Array (_ BitVec 32) (_ BitVec 64))) (size!29656 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60633)

(declare-fun array_inv!22466 (array!60633) Bool)

(assert (=> start!83442 (array_inv!22466 _keys!1717)))

(declare-fun b!974044 () Bool)

(declare-fun res!652135 () Bool)

(assert (=> b!974044 (=> (not res!652135) (not e!549053))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974044 (= res!652135 (validKeyInArray!0 (select (arr!29176 _keys!1717) i!822)))))

(declare-fun b!974045 () Bool)

(declare-fun res!652134 () Bool)

(assert (=> b!974045 (=> (not res!652134) (not e!549053))))

(declare-datatypes ((List!20368 0))(
  ( (Nil!20365) (Cons!20364 (h!21526 (_ BitVec 64)) (t!28853 List!20368)) )
))
(declare-fun arrayNoDuplicates!0 (array!60633 (_ BitVec 32) List!20368) Bool)

(assert (=> b!974045 (= res!652134 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20365))))

(declare-fun b!974046 () Bool)

(declare-fun res!652133 () Bool)

(assert (=> b!974046 (=> (not res!652133) (not e!549053))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!974046 (= res!652133 (and (= (size!29655 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29656 _keys!1717) (size!29655 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974047 () Bool)

(declare-fun res!652130 () Bool)

(assert (=> b!974047 (=> (not res!652130) (not e!549053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60633 (_ BitVec 32)) Bool)

(assert (=> b!974047 (= res!652130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974048 () Bool)

(declare-fun res!652129 () Bool)

(assert (=> b!974048 (=> (not res!652129) (not e!549053))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!974048 (= res!652129 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29656 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29656 _keys!1717))))))

(declare-fun b!974049 () Bool)

(declare-fun e!549052 () Bool)

(assert (=> b!974049 (= e!549052 tp_is_empty!22305)))

(declare-fun b!974050 () Bool)

(assert (=> b!974050 (= e!549053 false)))

(declare-fun zeroValue!1367 () V!34723)

(declare-datatypes ((tuple2!14490 0))(
  ( (tuple2!14491 (_1!7255 (_ BitVec 64)) (_2!7255 V!34723)) )
))
(declare-datatypes ((List!20369 0))(
  ( (Nil!20366) (Cons!20365 (h!21527 tuple2!14490) (t!28854 List!20369)) )
))
(declare-datatypes ((ListLongMap!13201 0))(
  ( (ListLongMap!13202 (toList!6616 List!20369)) )
))
(declare-fun lt!432691 () ListLongMap!13201)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34723)

(declare-fun getCurrentListMap!3801 (array!60633 array!60631 (_ BitVec 32) (_ BitVec 32) V!34723 V!34723 (_ BitVec 32) Int) ListLongMap!13201)

(assert (=> b!974050 (= lt!432691 (getCurrentListMap!3801 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974051 () Bool)

(declare-fun e!549050 () Bool)

(assert (=> b!974051 (= e!549050 tp_is_empty!22305)))

(declare-fun b!974052 () Bool)

(assert (=> b!974052 (= e!549051 (and e!549052 mapRes!35467))))

(declare-fun condMapEmpty!35467 () Bool)

(declare-fun mapDefault!35467 () ValueCell!10671)

(assert (=> b!974052 (= condMapEmpty!35467 (= (arr!29175 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10671)) mapDefault!35467)))))

(declare-fun mapNonEmpty!35467 () Bool)

(declare-fun tp!67500 () Bool)

(assert (=> mapNonEmpty!35467 (= mapRes!35467 (and tp!67500 e!549050))))

(declare-fun mapKey!35467 () (_ BitVec 32))

(declare-fun mapValue!35467 () ValueCell!10671)

(declare-fun mapRest!35467 () (Array (_ BitVec 32) ValueCell!10671))

(assert (=> mapNonEmpty!35467 (= (arr!29175 _values!1425) (store mapRest!35467 mapKey!35467 mapValue!35467))))

(declare-fun b!974053 () Bool)

(declare-fun res!652132 () Bool)

(assert (=> b!974053 (=> (not res!652132) (not e!549053))))

(declare-fun contains!5657 (ListLongMap!13201 (_ BitVec 64)) Bool)

(assert (=> b!974053 (= res!652132 (contains!5657 (getCurrentListMap!3801 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29176 _keys!1717) i!822)))))

(assert (= (and start!83442 res!652131) b!974046))

(assert (= (and b!974046 res!652133) b!974047))

(assert (= (and b!974047 res!652130) b!974045))

(assert (= (and b!974045 res!652134) b!974048))

(assert (= (and b!974048 res!652129) b!974044))

(assert (= (and b!974044 res!652135) b!974053))

(assert (= (and b!974053 res!652132) b!974050))

(assert (= (and b!974052 condMapEmpty!35467) mapIsEmpty!35467))

(assert (= (and b!974052 (not condMapEmpty!35467)) mapNonEmpty!35467))

(get-info :version)

(assert (= (and mapNonEmpty!35467 ((_ is ValueCellFull!10671) mapValue!35467)) b!974051))

(assert (= (and b!974052 ((_ is ValueCellFull!10671) mapDefault!35467)) b!974049))

(assert (= start!83442 b!974052))

(declare-fun m!901737 () Bool)

(assert (=> b!974047 m!901737))

(declare-fun m!901739 () Bool)

(assert (=> b!974053 m!901739))

(declare-fun m!901741 () Bool)

(assert (=> b!974053 m!901741))

(assert (=> b!974053 m!901739))

(assert (=> b!974053 m!901741))

(declare-fun m!901743 () Bool)

(assert (=> b!974053 m!901743))

(declare-fun m!901745 () Bool)

(assert (=> start!83442 m!901745))

(declare-fun m!901747 () Bool)

(assert (=> start!83442 m!901747))

(declare-fun m!901749 () Bool)

(assert (=> start!83442 m!901749))

(assert (=> b!974044 m!901741))

(assert (=> b!974044 m!901741))

(declare-fun m!901751 () Bool)

(assert (=> b!974044 m!901751))

(declare-fun m!901753 () Bool)

(assert (=> b!974045 m!901753))

(declare-fun m!901755 () Bool)

(assert (=> b!974050 m!901755))

(declare-fun m!901757 () Bool)

(assert (=> mapNonEmpty!35467 m!901757))

(check-sat tp_is_empty!22305 (not b_next!19407) (not b!974044) (not mapNonEmpty!35467) (not b!974047) (not b!974050) (not b!974045) b_and!31027 (not start!83442) (not b!974053))
(check-sat b_and!31027 (not b_next!19407))
