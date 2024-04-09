; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83418 () Bool)

(assert start!83418)

(declare-fun b_free!19383 () Bool)

(declare-fun b_next!19383 () Bool)

(assert (=> start!83418 (= b_free!19383 (not b_next!19383))))

(declare-fun tp!67428 () Bool)

(declare-fun b_and!31003 () Bool)

(assert (=> start!83418 (= tp!67428 b_and!31003)))

(declare-fun mapIsEmpty!35431 () Bool)

(declare-fun mapRes!35431 () Bool)

(assert (=> mapIsEmpty!35431 mapRes!35431))

(declare-fun b!973684 () Bool)

(declare-fun res!651879 () Bool)

(declare-fun e!548873 () Bool)

(assert (=> b!973684 (=> (not res!651879) (not e!548873))))

(declare-datatypes ((array!60587 0))(
  ( (array!60588 (arr!29153 (Array (_ BitVec 32) (_ BitVec 64))) (size!29633 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60587)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!973684 (= res!651879 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29633 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29633 _keys!1717))))))

(declare-fun res!651882 () Bool)

(assert (=> start!83418 (=> (not res!651882) (not e!548873))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83418 (= res!651882 (validMask!0 mask!2147))))

(assert (=> start!83418 e!548873))

(assert (=> start!83418 true))

(declare-datatypes ((V!34691 0))(
  ( (V!34692 (val!11191 Int)) )
))
(declare-datatypes ((ValueCell!10659 0))(
  ( (ValueCellFull!10659 (v!13750 V!34691)) (EmptyCell!10659) )
))
(declare-datatypes ((array!60589 0))(
  ( (array!60590 (arr!29154 (Array (_ BitVec 32) ValueCell!10659)) (size!29634 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60589)

(declare-fun e!548874 () Bool)

(declare-fun array_inv!22447 (array!60589) Bool)

(assert (=> start!83418 (and (array_inv!22447 _values!1425) e!548874)))

(declare-fun tp_is_empty!22281 () Bool)

(assert (=> start!83418 tp_is_empty!22281))

(assert (=> start!83418 tp!67428))

(declare-fun array_inv!22448 (array!60587) Bool)

(assert (=> start!83418 (array_inv!22448 _keys!1717)))

(declare-fun b!973685 () Bool)

(declare-fun res!651880 () Bool)

(assert (=> b!973685 (=> (not res!651880) (not e!548873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973685 (= res!651880 (validKeyInArray!0 (select (arr!29153 _keys!1717) i!822)))))

(declare-fun b!973686 () Bool)

(declare-fun res!651878 () Bool)

(assert (=> b!973686 (=> (not res!651878) (not e!548873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60587 (_ BitVec 32)) Bool)

(assert (=> b!973686 (= res!651878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!973687 () Bool)

(declare-fun e!548872 () Bool)

(assert (=> b!973687 (= e!548872 tp_is_empty!22281)))

(declare-fun b!973688 () Bool)

(assert (=> b!973688 (= e!548873 false)))

(declare-datatypes ((tuple2!14472 0))(
  ( (tuple2!14473 (_1!7246 (_ BitVec 64)) (_2!7246 V!34691)) )
))
(declare-datatypes ((List!20350 0))(
  ( (Nil!20347) (Cons!20346 (h!21508 tuple2!14472) (t!28835 List!20350)) )
))
(declare-datatypes ((ListLongMap!13183 0))(
  ( (ListLongMap!13184 (toList!6607 List!20350)) )
))
(declare-fun lt!432655 () ListLongMap!13183)

(declare-fun zeroValue!1367 () V!34691)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34691)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3792 (array!60587 array!60589 (_ BitVec 32) (_ BitVec 32) V!34691 V!34691 (_ BitVec 32) Int) ListLongMap!13183)

(assert (=> b!973688 (= lt!432655 (getCurrentListMap!3792 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973689 () Bool)

(declare-fun e!548871 () Bool)

(assert (=> b!973689 (= e!548871 tp_is_empty!22281)))

(declare-fun b!973690 () Bool)

(declare-fun res!651881 () Bool)

(assert (=> b!973690 (=> (not res!651881) (not e!548873))))

(declare-datatypes ((List!20351 0))(
  ( (Nil!20348) (Cons!20347 (h!21509 (_ BitVec 64)) (t!28836 List!20351)) )
))
(declare-fun arrayNoDuplicates!0 (array!60587 (_ BitVec 32) List!20351) Bool)

(assert (=> b!973690 (= res!651881 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20348))))

(declare-fun b!973691 () Bool)

(declare-fun res!651883 () Bool)

(assert (=> b!973691 (=> (not res!651883) (not e!548873))))

(declare-fun contains!5650 (ListLongMap!13183 (_ BitVec 64)) Bool)

(assert (=> b!973691 (= res!651883 (contains!5650 (getCurrentListMap!3792 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29153 _keys!1717) i!822)))))

(declare-fun b!973692 () Bool)

(declare-fun res!651877 () Bool)

(assert (=> b!973692 (=> (not res!651877) (not e!548873))))

(assert (=> b!973692 (= res!651877 (and (= (size!29634 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29633 _keys!1717) (size!29634 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35431 () Bool)

(declare-fun tp!67429 () Bool)

(assert (=> mapNonEmpty!35431 (= mapRes!35431 (and tp!67429 e!548871))))

(declare-fun mapKey!35431 () (_ BitVec 32))

(declare-fun mapRest!35431 () (Array (_ BitVec 32) ValueCell!10659))

(declare-fun mapValue!35431 () ValueCell!10659)

(assert (=> mapNonEmpty!35431 (= (arr!29154 _values!1425) (store mapRest!35431 mapKey!35431 mapValue!35431))))

(declare-fun b!973693 () Bool)

(assert (=> b!973693 (= e!548874 (and e!548872 mapRes!35431))))

(declare-fun condMapEmpty!35431 () Bool)

(declare-fun mapDefault!35431 () ValueCell!10659)

(assert (=> b!973693 (= condMapEmpty!35431 (= (arr!29154 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10659)) mapDefault!35431)))))

(assert (= (and start!83418 res!651882) b!973692))

(assert (= (and b!973692 res!651877) b!973686))

(assert (= (and b!973686 res!651878) b!973690))

(assert (= (and b!973690 res!651881) b!973684))

(assert (= (and b!973684 res!651879) b!973685))

(assert (= (and b!973685 res!651880) b!973691))

(assert (= (and b!973691 res!651883) b!973688))

(assert (= (and b!973693 condMapEmpty!35431) mapIsEmpty!35431))

(assert (= (and b!973693 (not condMapEmpty!35431)) mapNonEmpty!35431))

(get-info :version)

(assert (= (and mapNonEmpty!35431 ((_ is ValueCellFull!10659) mapValue!35431)) b!973689))

(assert (= (and b!973693 ((_ is ValueCellFull!10659) mapDefault!35431)) b!973687))

(assert (= start!83418 b!973693))

(declare-fun m!901473 () Bool)

(assert (=> b!973691 m!901473))

(declare-fun m!901475 () Bool)

(assert (=> b!973691 m!901475))

(assert (=> b!973691 m!901473))

(assert (=> b!973691 m!901475))

(declare-fun m!901477 () Bool)

(assert (=> b!973691 m!901477))

(declare-fun m!901479 () Bool)

(assert (=> start!83418 m!901479))

(declare-fun m!901481 () Bool)

(assert (=> start!83418 m!901481))

(declare-fun m!901483 () Bool)

(assert (=> start!83418 m!901483))

(assert (=> b!973685 m!901475))

(assert (=> b!973685 m!901475))

(declare-fun m!901485 () Bool)

(assert (=> b!973685 m!901485))

(declare-fun m!901487 () Bool)

(assert (=> b!973686 m!901487))

(declare-fun m!901489 () Bool)

(assert (=> b!973690 m!901489))

(declare-fun m!901491 () Bool)

(assert (=> mapNonEmpty!35431 m!901491))

(declare-fun m!901493 () Bool)

(assert (=> b!973688 m!901493))

(check-sat (not b!973690) tp_is_empty!22281 (not start!83418) (not b!973685) (not b!973691) (not mapNonEmpty!35431) b_and!31003 (not b!973688) (not b!973686) (not b_next!19383))
(check-sat b_and!31003 (not b_next!19383))
