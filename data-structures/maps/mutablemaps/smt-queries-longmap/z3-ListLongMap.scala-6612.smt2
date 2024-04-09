; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83586 () Bool)

(assert start!83586)

(declare-fun b_free!19545 () Bool)

(declare-fun b_next!19545 () Bool)

(assert (=> start!83586 (= b_free!19545 (not b_next!19545))))

(declare-fun tp!67923 () Bool)

(declare-fun b_and!31201 () Bool)

(assert (=> start!83586 (= tp!67923 b_and!31201)))

(declare-fun b!976281 () Bool)

(declare-fun res!653682 () Bool)

(declare-fun e!550230 () Bool)

(assert (=> b!976281 (=> (not res!653682) (not e!550230))))

(declare-datatypes ((array!60911 0))(
  ( (array!60912 (arr!29315 (Array (_ BitVec 32) (_ BitVec 64))) (size!29795 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60911)

(declare-datatypes ((List!20479 0))(
  ( (Nil!20476) (Cons!20475 (h!21637 (_ BitVec 64)) (t!29000 List!20479)) )
))
(declare-fun arrayNoDuplicates!0 (array!60911 (_ BitVec 32) List!20479) Bool)

(assert (=> b!976281 (= res!653682 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20476))))

(declare-fun res!653683 () Bool)

(assert (=> start!83586 (=> (not res!653683) (not e!550230))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83586 (= res!653683 (validMask!0 mask!2147))))

(assert (=> start!83586 e!550230))

(assert (=> start!83586 true))

(declare-datatypes ((V!34915 0))(
  ( (V!34916 (val!11275 Int)) )
))
(declare-datatypes ((ValueCell!10743 0))(
  ( (ValueCellFull!10743 (v!13834 V!34915)) (EmptyCell!10743) )
))
(declare-datatypes ((array!60913 0))(
  ( (array!60914 (arr!29316 (Array (_ BitVec 32) ValueCell!10743)) (size!29796 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60913)

(declare-fun e!550228 () Bool)

(declare-fun array_inv!22569 (array!60913) Bool)

(assert (=> start!83586 (and (array_inv!22569 _values!1425) e!550228)))

(declare-fun tp_is_empty!22449 () Bool)

(assert (=> start!83586 tp_is_empty!22449))

(assert (=> start!83586 tp!67923))

(declare-fun array_inv!22570 (array!60911) Bool)

(assert (=> start!83586 (array_inv!22570 _keys!1717)))

(declare-fun b!976282 () Bool)

(declare-fun e!550227 () Bool)

(assert (=> b!976282 (= e!550230 e!550227)))

(declare-fun res!653686 () Bool)

(assert (=> b!976282 (=> (not res!653686) (not e!550227))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976282 (= res!653686 (not (validKeyInArray!0 (select (arr!29315 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-datatypes ((tuple2!14608 0))(
  ( (tuple2!14609 (_1!7314 (_ BitVec 64)) (_2!7314 V!34915)) )
))
(declare-datatypes ((List!20480 0))(
  ( (Nil!20477) (Cons!20476 (h!21638 tuple2!14608) (t!29001 List!20480)) )
))
(declare-datatypes ((ListLongMap!13319 0))(
  ( (ListLongMap!13320 (toList!6675 List!20480)) )
))
(declare-fun lt!433078 () ListLongMap!13319)

(declare-fun zeroValue!1367 () V!34915)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34915)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3860 (array!60911 array!60913 (_ BitVec 32) (_ BitVec 32) V!34915 V!34915 (_ BitVec 32) Int) ListLongMap!13319)

(assert (=> b!976282 (= lt!433078 (getCurrentListMap!3860 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976283 () Bool)

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976283 (= e!550227 (bvslt i!822 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!35683 () Bool)

(declare-fun mapRes!35683 () Bool)

(assert (=> mapIsEmpty!35683 mapRes!35683))

(declare-fun b!976284 () Bool)

(declare-fun res!653689 () Bool)

(assert (=> b!976284 (=> (not res!653689) (not e!550230))))

(assert (=> b!976284 (= res!653689 (validKeyInArray!0 (select (arr!29315 _keys!1717) i!822)))))

(declare-fun b!976285 () Bool)

(declare-fun e!550226 () Bool)

(assert (=> b!976285 (= e!550226 tp_is_empty!22449)))

(declare-fun mapNonEmpty!35683 () Bool)

(declare-fun tp!67924 () Bool)

(declare-fun e!550229 () Bool)

(assert (=> mapNonEmpty!35683 (= mapRes!35683 (and tp!67924 e!550229))))

(declare-fun mapValue!35683 () ValueCell!10743)

(declare-fun mapKey!35683 () (_ BitVec 32))

(declare-fun mapRest!35683 () (Array (_ BitVec 32) ValueCell!10743))

(assert (=> mapNonEmpty!35683 (= (arr!29316 _values!1425) (store mapRest!35683 mapKey!35683 mapValue!35683))))

(declare-fun b!976286 () Bool)

(declare-fun res!653685 () Bool)

(assert (=> b!976286 (=> (not res!653685) (not e!550230))))

(declare-fun contains!5706 (ListLongMap!13319 (_ BitVec 64)) Bool)

(assert (=> b!976286 (= res!653685 (contains!5706 (getCurrentListMap!3860 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29315 _keys!1717) i!822)))))

(declare-fun b!976287 () Bool)

(declare-fun res!653687 () Bool)

(assert (=> b!976287 (=> (not res!653687) (not e!550230))))

(assert (=> b!976287 (= res!653687 (and (= (size!29796 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29795 _keys!1717) (size!29796 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976288 () Bool)

(declare-fun res!653684 () Bool)

(assert (=> b!976288 (=> (not res!653684) (not e!550230))))

(assert (=> b!976288 (= res!653684 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29795 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29795 _keys!1717))))))

(declare-fun b!976289 () Bool)

(assert (=> b!976289 (= e!550229 tp_is_empty!22449)))

(declare-fun b!976290 () Bool)

(declare-fun res!653688 () Bool)

(assert (=> b!976290 (=> (not res!653688) (not e!550230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60911 (_ BitVec 32)) Bool)

(assert (=> b!976290 (= res!653688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!976291 () Bool)

(assert (=> b!976291 (= e!550228 (and e!550226 mapRes!35683))))

(declare-fun condMapEmpty!35683 () Bool)

(declare-fun mapDefault!35683 () ValueCell!10743)

(assert (=> b!976291 (= condMapEmpty!35683 (= (arr!29316 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10743)) mapDefault!35683)))))

(assert (= (and start!83586 res!653683) b!976287))

(assert (= (and b!976287 res!653687) b!976290))

(assert (= (and b!976290 res!653688) b!976281))

(assert (= (and b!976281 res!653682) b!976288))

(assert (= (and b!976288 res!653684) b!976284))

(assert (= (and b!976284 res!653689) b!976286))

(assert (= (and b!976286 res!653685) b!976282))

(assert (= (and b!976282 res!653686) b!976283))

(assert (= (and b!976291 condMapEmpty!35683) mapIsEmpty!35683))

(assert (= (and b!976291 (not condMapEmpty!35683)) mapNonEmpty!35683))

(get-info :version)

(assert (= (and mapNonEmpty!35683 ((_ is ValueCellFull!10743) mapValue!35683)) b!976289))

(assert (= (and b!976291 ((_ is ValueCellFull!10743) mapDefault!35683)) b!976285))

(assert (= start!83586 b!976291))

(declare-fun m!903637 () Bool)

(assert (=> b!976282 m!903637))

(assert (=> b!976282 m!903637))

(declare-fun m!903639 () Bool)

(assert (=> b!976282 m!903639))

(declare-fun m!903641 () Bool)

(assert (=> b!976282 m!903641))

(declare-fun m!903643 () Bool)

(assert (=> b!976284 m!903643))

(assert (=> b!976284 m!903643))

(declare-fun m!903645 () Bool)

(assert (=> b!976284 m!903645))

(declare-fun m!903647 () Bool)

(assert (=> b!976290 m!903647))

(declare-fun m!903649 () Bool)

(assert (=> start!83586 m!903649))

(declare-fun m!903651 () Bool)

(assert (=> start!83586 m!903651))

(declare-fun m!903653 () Bool)

(assert (=> start!83586 m!903653))

(declare-fun m!903655 () Bool)

(assert (=> b!976286 m!903655))

(assert (=> b!976286 m!903643))

(assert (=> b!976286 m!903655))

(assert (=> b!976286 m!903643))

(declare-fun m!903657 () Bool)

(assert (=> b!976286 m!903657))

(declare-fun m!903659 () Bool)

(assert (=> b!976281 m!903659))

(declare-fun m!903661 () Bool)

(assert (=> mapNonEmpty!35683 m!903661))

(check-sat b_and!31201 (not b!976284) (not mapNonEmpty!35683) (not start!83586) (not b!976281) tp_is_empty!22449 (not b!976290) (not b_next!19545) (not b!976286) (not b!976282))
(check-sat b_and!31201 (not b_next!19545))
