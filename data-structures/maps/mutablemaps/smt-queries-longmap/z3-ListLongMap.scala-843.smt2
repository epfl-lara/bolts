; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20168 () Bool)

(assert start!20168)

(declare-fun b_free!4815 () Bool)

(declare-fun b_next!4815 () Bool)

(assert (=> start!20168 (= b_free!4815 (not b_next!4815))))

(declare-fun tp!17477 () Bool)

(declare-fun b_and!11579 () Bool)

(assert (=> start!20168 (= tp!17477 b_and!11579)))

(declare-fun b!197730 () Bool)

(declare-fun res!93617 () Bool)

(declare-fun e!130073 () Bool)

(assert (=> b!197730 (=> (not res!93617) (not e!130073))))

(declare-datatypes ((array!8594 0))(
  ( (array!8595 (arr!4047 (Array (_ BitVec 32) (_ BitVec 64))) (size!4372 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8594)

(declare-datatypes ((List!2548 0))(
  ( (Nil!2545) (Cons!2544 (h!3186 (_ BitVec 64)) (t!7487 List!2548)) )
))
(declare-fun arrayNoDuplicates!0 (array!8594 (_ BitVec 32) List!2548) Bool)

(assert (=> b!197730 (= res!93617 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2545))))

(declare-fun b!197731 () Bool)

(declare-fun e!130072 () Bool)

(declare-fun e!130075 () Bool)

(declare-fun mapRes!8075 () Bool)

(assert (=> b!197731 (= e!130072 (and e!130075 mapRes!8075))))

(declare-fun condMapEmpty!8075 () Bool)

(declare-datatypes ((V!5875 0))(
  ( (V!5876 (val!2380 Int)) )
))
(declare-datatypes ((ValueCell!1992 0))(
  ( (ValueCellFull!1992 (v!4346 V!5875)) (EmptyCell!1992) )
))
(declare-datatypes ((array!8596 0))(
  ( (array!8597 (arr!4048 (Array (_ BitVec 32) ValueCell!1992)) (size!4373 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8596)

(declare-fun mapDefault!8075 () ValueCell!1992)

(assert (=> b!197731 (= condMapEmpty!8075 (= (arr!4048 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1992)) mapDefault!8075)))))

(declare-fun mapIsEmpty!8075 () Bool)

(assert (=> mapIsEmpty!8075 mapRes!8075))

(declare-fun b!197733 () Bool)

(declare-fun tp_is_empty!4671 () Bool)

(assert (=> b!197733 (= e!130075 tp_is_empty!4671)))

(declare-fun b!197734 () Bool)

(declare-fun res!93621 () Bool)

(assert (=> b!197734 (=> (not res!93621) (not e!130073))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197734 (= res!93621 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4372 _keys!825))))))

(declare-fun b!197735 () Bool)

(declare-fun res!93616 () Bool)

(assert (=> b!197735 (=> (not res!93616) (not e!130073))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8594 (_ BitVec 32)) Bool)

(assert (=> b!197735 (= res!93616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8075 () Bool)

(declare-fun tp!17476 () Bool)

(declare-fun e!130074 () Bool)

(assert (=> mapNonEmpty!8075 (= mapRes!8075 (and tp!17476 e!130074))))

(declare-fun mapValue!8075 () ValueCell!1992)

(declare-fun mapRest!8075 () (Array (_ BitVec 32) ValueCell!1992))

(declare-fun mapKey!8075 () (_ BitVec 32))

(assert (=> mapNonEmpty!8075 (= (arr!4048 _values!649) (store mapRest!8075 mapKey!8075 mapValue!8075))))

(declare-fun b!197736 () Bool)

(declare-fun res!93620 () Bool)

(assert (=> b!197736 (=> (not res!93620) (not e!130073))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197736 (= res!93620 (and (= (size!4373 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4372 _keys!825) (size!4373 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197737 () Bool)

(assert (=> b!197737 (= e!130073 false)))

(declare-fun v!520 () V!5875)

(declare-fun zeroValue!615 () V!5875)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5875)

(declare-datatypes ((tuple2!3610 0))(
  ( (tuple2!3611 (_1!1815 (_ BitVec 64)) (_2!1815 V!5875)) )
))
(declare-datatypes ((List!2549 0))(
  ( (Nil!2546) (Cons!2545 (h!3187 tuple2!3610) (t!7488 List!2549)) )
))
(declare-datatypes ((ListLongMap!2537 0))(
  ( (ListLongMap!2538 (toList!1284 List!2549)) )
))
(declare-fun lt!97806 () ListLongMap!2537)

(declare-fun getCurrentListMapNoExtraKeys!241 (array!8594 array!8596 (_ BitVec 32) (_ BitVec 32) V!5875 V!5875 (_ BitVec 32) Int) ListLongMap!2537)

(assert (=> b!197737 (= lt!97806 (getCurrentListMapNoExtraKeys!241 _keys!825 (array!8597 (store (arr!4048 _values!649) i!601 (ValueCellFull!1992 v!520)) (size!4373 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97807 () ListLongMap!2537)

(assert (=> b!197737 (= lt!97807 (getCurrentListMapNoExtraKeys!241 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197732 () Bool)

(declare-fun res!93619 () Bool)

(assert (=> b!197732 (=> (not res!93619) (not e!130073))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197732 (= res!93619 (validKeyInArray!0 k0!843))))

(declare-fun res!93618 () Bool)

(assert (=> start!20168 (=> (not res!93618) (not e!130073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20168 (= res!93618 (validMask!0 mask!1149))))

(assert (=> start!20168 e!130073))

(declare-fun array_inv!2633 (array!8596) Bool)

(assert (=> start!20168 (and (array_inv!2633 _values!649) e!130072)))

(assert (=> start!20168 true))

(assert (=> start!20168 tp_is_empty!4671))

(declare-fun array_inv!2634 (array!8594) Bool)

(assert (=> start!20168 (array_inv!2634 _keys!825)))

(assert (=> start!20168 tp!17477))

(declare-fun b!197738 () Bool)

(declare-fun res!93622 () Bool)

(assert (=> b!197738 (=> (not res!93622) (not e!130073))))

(assert (=> b!197738 (= res!93622 (= (select (arr!4047 _keys!825) i!601) k0!843))))

(declare-fun b!197739 () Bool)

(assert (=> b!197739 (= e!130074 tp_is_empty!4671)))

(assert (= (and start!20168 res!93618) b!197736))

(assert (= (and b!197736 res!93620) b!197735))

(assert (= (and b!197735 res!93616) b!197730))

(assert (= (and b!197730 res!93617) b!197734))

(assert (= (and b!197734 res!93621) b!197732))

(assert (= (and b!197732 res!93619) b!197738))

(assert (= (and b!197738 res!93622) b!197737))

(assert (= (and b!197731 condMapEmpty!8075) mapIsEmpty!8075))

(assert (= (and b!197731 (not condMapEmpty!8075)) mapNonEmpty!8075))

(get-info :version)

(assert (= (and mapNonEmpty!8075 ((_ is ValueCellFull!1992) mapValue!8075)) b!197739))

(assert (= (and b!197731 ((_ is ValueCellFull!1992) mapDefault!8075)) b!197733))

(assert (= start!20168 b!197731))

(declare-fun m!224539 () Bool)

(assert (=> b!197737 m!224539))

(declare-fun m!224541 () Bool)

(assert (=> b!197737 m!224541))

(declare-fun m!224543 () Bool)

(assert (=> b!197737 m!224543))

(declare-fun m!224545 () Bool)

(assert (=> b!197730 m!224545))

(declare-fun m!224547 () Bool)

(assert (=> b!197738 m!224547))

(declare-fun m!224549 () Bool)

(assert (=> b!197732 m!224549))

(declare-fun m!224551 () Bool)

(assert (=> b!197735 m!224551))

(declare-fun m!224553 () Bool)

(assert (=> mapNonEmpty!8075 m!224553))

(declare-fun m!224555 () Bool)

(assert (=> start!20168 m!224555))

(declare-fun m!224557 () Bool)

(assert (=> start!20168 m!224557))

(declare-fun m!224559 () Bool)

(assert (=> start!20168 m!224559))

(check-sat (not b!197737) (not mapNonEmpty!8075) (not b!197735) (not b!197730) (not b!197732) (not start!20168) (not b_next!4815) b_and!11579 tp_is_empty!4671)
(check-sat b_and!11579 (not b_next!4815))
