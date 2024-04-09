; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20828 () Bool)

(assert start!20828)

(declare-fun b_free!5469 () Bool)

(declare-fun b_next!5469 () Bool)

(assert (=> start!20828 (= b_free!5469 (not b_next!5469))))

(declare-fun tp!19447 () Bool)

(declare-fun b_and!12233 () Bool)

(assert (=> start!20828 (= tp!19447 b_and!12233)))

(declare-fun b!208656 () Bool)

(declare-fun res!101574 () Bool)

(declare-fun e!136059 () Bool)

(assert (=> b!208656 (=> (not res!101574) (not e!136059))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!208656 (= res!101574 (validKeyInArray!0 k0!843))))

(declare-fun b!208657 () Bool)

(declare-fun res!101575 () Bool)

(assert (=> b!208657 (=> (not res!101575) (not e!136059))))

(declare-datatypes ((array!9864 0))(
  ( (array!9865 (arr!4682 (Array (_ BitVec 32) (_ BitVec 64))) (size!5007 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9864)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!208657 (= res!101575 (= (select (arr!4682 _keys!825) i!601) k0!843))))

(declare-fun b!208658 () Bool)

(declare-fun e!136058 () Bool)

(declare-fun tp_is_empty!5331 () Bool)

(assert (=> b!208658 (= e!136058 tp_is_empty!5331)))

(declare-fun b!208659 () Bool)

(declare-fun e!136060 () Bool)

(declare-fun e!136056 () Bool)

(declare-fun mapRes!9065 () Bool)

(assert (=> b!208659 (= e!136060 (and e!136056 mapRes!9065))))

(declare-fun condMapEmpty!9065 () Bool)

(declare-datatypes ((V!6755 0))(
  ( (V!6756 (val!2710 Int)) )
))
(declare-datatypes ((ValueCell!2322 0))(
  ( (ValueCellFull!2322 (v!4676 V!6755)) (EmptyCell!2322) )
))
(declare-datatypes ((array!9866 0))(
  ( (array!9867 (arr!4683 (Array (_ BitVec 32) ValueCell!2322)) (size!5008 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9866)

(declare-fun mapDefault!9065 () ValueCell!2322)

(assert (=> b!208659 (= condMapEmpty!9065 (= (arr!4683 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2322)) mapDefault!9065)))))

(declare-fun b!208660 () Bool)

(declare-fun res!101576 () Bool)

(assert (=> b!208660 (=> (not res!101576) (not e!136059))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9864 (_ BitVec 32)) Bool)

(assert (=> b!208660 (= res!101576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208661 () Bool)

(assert (=> b!208661 (= e!136059 false)))

(declare-fun v!520 () V!6755)

(declare-fun zeroValue!615 () V!6755)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6755)

(declare-datatypes ((tuple2!4100 0))(
  ( (tuple2!4101 (_1!2060 (_ BitVec 64)) (_2!2060 V!6755)) )
))
(declare-datatypes ((List!3020 0))(
  ( (Nil!3017) (Cons!3016 (h!3658 tuple2!4100) (t!7959 List!3020)) )
))
(declare-datatypes ((ListLongMap!3027 0))(
  ( (ListLongMap!3028 (toList!1529 List!3020)) )
))
(declare-fun lt!106860 () ListLongMap!3027)

(declare-fun getCurrentListMapNoExtraKeys!462 (array!9864 array!9866 (_ BitVec 32) (_ BitVec 32) V!6755 V!6755 (_ BitVec 32) Int) ListLongMap!3027)

(assert (=> b!208661 (= lt!106860 (getCurrentListMapNoExtraKeys!462 _keys!825 (array!9867 (store (arr!4683 _values!649) i!601 (ValueCellFull!2322 v!520)) (size!5008 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106861 () ListLongMap!3027)

(assert (=> b!208661 (= lt!106861 (getCurrentListMapNoExtraKeys!462 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!208662 () Bool)

(declare-fun res!101577 () Bool)

(assert (=> b!208662 (=> (not res!101577) (not e!136059))))

(assert (=> b!208662 (= res!101577 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5007 _keys!825))))))

(declare-fun b!208663 () Bool)

(declare-fun res!101578 () Bool)

(assert (=> b!208663 (=> (not res!101578) (not e!136059))))

(declare-datatypes ((List!3021 0))(
  ( (Nil!3018) (Cons!3017 (h!3659 (_ BitVec 64)) (t!7960 List!3021)) )
))
(declare-fun arrayNoDuplicates!0 (array!9864 (_ BitVec 32) List!3021) Bool)

(assert (=> b!208663 (= res!101578 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3018))))

(declare-fun b!208664 () Bool)

(declare-fun res!101572 () Bool)

(assert (=> b!208664 (=> (not res!101572) (not e!136059))))

(assert (=> b!208664 (= res!101572 (and (= (size!5008 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5007 _keys!825) (size!5008 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!208665 () Bool)

(assert (=> b!208665 (= e!136056 tp_is_empty!5331)))

(declare-fun mapNonEmpty!9065 () Bool)

(declare-fun tp!19448 () Bool)

(assert (=> mapNonEmpty!9065 (= mapRes!9065 (and tp!19448 e!136058))))

(declare-fun mapRest!9065 () (Array (_ BitVec 32) ValueCell!2322))

(declare-fun mapKey!9065 () (_ BitVec 32))

(declare-fun mapValue!9065 () ValueCell!2322)

(assert (=> mapNonEmpty!9065 (= (arr!4683 _values!649) (store mapRest!9065 mapKey!9065 mapValue!9065))))

(declare-fun res!101573 () Bool)

(assert (=> start!20828 (=> (not res!101573) (not e!136059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20828 (= res!101573 (validMask!0 mask!1149))))

(assert (=> start!20828 e!136059))

(declare-fun array_inv!3099 (array!9866) Bool)

(assert (=> start!20828 (and (array_inv!3099 _values!649) e!136060)))

(assert (=> start!20828 true))

(assert (=> start!20828 tp_is_empty!5331))

(declare-fun array_inv!3100 (array!9864) Bool)

(assert (=> start!20828 (array_inv!3100 _keys!825)))

(assert (=> start!20828 tp!19447))

(declare-fun mapIsEmpty!9065 () Bool)

(assert (=> mapIsEmpty!9065 mapRes!9065))

(assert (= (and start!20828 res!101573) b!208664))

(assert (= (and b!208664 res!101572) b!208660))

(assert (= (and b!208660 res!101576) b!208663))

(assert (= (and b!208663 res!101578) b!208662))

(assert (= (and b!208662 res!101577) b!208656))

(assert (= (and b!208656 res!101574) b!208657))

(assert (= (and b!208657 res!101575) b!208661))

(assert (= (and b!208659 condMapEmpty!9065) mapIsEmpty!9065))

(assert (= (and b!208659 (not condMapEmpty!9065)) mapNonEmpty!9065))

(get-info :version)

(assert (= (and mapNonEmpty!9065 ((_ is ValueCellFull!2322) mapValue!9065)) b!208658))

(assert (= (and b!208659 ((_ is ValueCellFull!2322) mapDefault!9065)) b!208665))

(assert (= start!20828 b!208659))

(declare-fun m!236239 () Bool)

(assert (=> mapNonEmpty!9065 m!236239))

(declare-fun m!236241 () Bool)

(assert (=> b!208656 m!236241))

(declare-fun m!236243 () Bool)

(assert (=> b!208660 m!236243))

(declare-fun m!236245 () Bool)

(assert (=> b!208657 m!236245))

(declare-fun m!236247 () Bool)

(assert (=> b!208661 m!236247))

(declare-fun m!236249 () Bool)

(assert (=> b!208661 m!236249))

(declare-fun m!236251 () Bool)

(assert (=> b!208661 m!236251))

(declare-fun m!236253 () Bool)

(assert (=> start!20828 m!236253))

(declare-fun m!236255 () Bool)

(assert (=> start!20828 m!236255))

(declare-fun m!236257 () Bool)

(assert (=> start!20828 m!236257))

(declare-fun m!236259 () Bool)

(assert (=> b!208663 m!236259))

(check-sat (not start!20828) b_and!12233 tp_is_empty!5331 (not b!208660) (not b!208663) (not b!208656) (not b_next!5469) (not b!208661) (not mapNonEmpty!9065))
(check-sat b_and!12233 (not b_next!5469))
