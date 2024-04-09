; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20102 () Bool)

(assert start!20102)

(declare-fun b_free!4749 () Bool)

(declare-fun b_next!4749 () Bool)

(assert (=> start!20102 (= b_free!4749 (not b_next!4749))))

(declare-fun tp!17278 () Bool)

(declare-fun b_and!11513 () Bool)

(assert (=> start!20102 (= tp!17278 b_and!11513)))

(declare-fun b!196740 () Bool)

(declare-fun e!129578 () Bool)

(declare-fun e!129580 () Bool)

(declare-fun mapRes!7976 () Bool)

(assert (=> b!196740 (= e!129578 (and e!129580 mapRes!7976))))

(declare-fun condMapEmpty!7976 () Bool)

(declare-datatypes ((V!5787 0))(
  ( (V!5788 (val!2347 Int)) )
))
(declare-datatypes ((ValueCell!1959 0))(
  ( (ValueCellFull!1959 (v!4313 V!5787)) (EmptyCell!1959) )
))
(declare-datatypes ((array!8466 0))(
  ( (array!8467 (arr!3983 (Array (_ BitVec 32) ValueCell!1959)) (size!4308 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8466)

(declare-fun mapDefault!7976 () ValueCell!1959)

(assert (=> b!196740 (= condMapEmpty!7976 (= (arr!3983 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1959)) mapDefault!7976)))))

(declare-fun b!196741 () Bool)

(declare-fun res!92926 () Bool)

(declare-fun e!129579 () Bool)

(assert (=> b!196741 (=> (not res!92926) (not e!129579))))

(declare-datatypes ((array!8468 0))(
  ( (array!8469 (arr!3984 (Array (_ BitVec 32) (_ BitVec 64))) (size!4309 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8468)

(declare-datatypes ((List!2508 0))(
  ( (Nil!2505) (Cons!2504 (h!3146 (_ BitVec 64)) (t!7447 List!2508)) )
))
(declare-fun arrayNoDuplicates!0 (array!8468 (_ BitVec 32) List!2508) Bool)

(assert (=> b!196741 (= res!92926 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2505))))

(declare-fun b!196742 () Bool)

(declare-fun e!129577 () Bool)

(declare-fun tp_is_empty!4605 () Bool)

(assert (=> b!196742 (= e!129577 tp_is_empty!4605)))

(declare-fun b!196743 () Bool)

(declare-fun res!92925 () Bool)

(assert (=> b!196743 (=> (not res!92925) (not e!129579))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8468 (_ BitVec 32)) Bool)

(assert (=> b!196743 (= res!92925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196745 () Bool)

(declare-fun res!92923 () Bool)

(assert (=> b!196745 (=> (not res!92923) (not e!129579))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!196745 (= res!92923 (validKeyInArray!0 k0!843))))

(declare-fun b!196746 () Bool)

(declare-fun res!92929 () Bool)

(assert (=> b!196746 (=> (not res!92929) (not e!129579))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!196746 (= res!92929 (= (select (arr!3984 _keys!825) i!601) k0!843))))

(declare-fun b!196747 () Bool)

(assert (=> b!196747 (= e!129580 tp_is_empty!4605)))

(declare-fun b!196748 () Bool)

(declare-fun res!92927 () Bool)

(assert (=> b!196748 (=> (not res!92927) (not e!129579))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196748 (= res!92927 (and (= (size!4308 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4309 _keys!825) (size!4308 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!7976 () Bool)

(assert (=> mapIsEmpty!7976 mapRes!7976))

(declare-fun res!92928 () Bool)

(assert (=> start!20102 (=> (not res!92928) (not e!129579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20102 (= res!92928 (validMask!0 mask!1149))))

(assert (=> start!20102 e!129579))

(declare-fun array_inv!2589 (array!8466) Bool)

(assert (=> start!20102 (and (array_inv!2589 _values!649) e!129578)))

(assert (=> start!20102 true))

(assert (=> start!20102 tp_is_empty!4605))

(declare-fun array_inv!2590 (array!8468) Bool)

(assert (=> start!20102 (array_inv!2590 _keys!825)))

(assert (=> start!20102 tp!17278))

(declare-fun b!196744 () Bool)

(assert (=> b!196744 (= e!129579 false)))

(declare-datatypes ((tuple2!3572 0))(
  ( (tuple2!3573 (_1!1796 (_ BitVec 64)) (_2!1796 V!5787)) )
))
(declare-datatypes ((List!2509 0))(
  ( (Nil!2506) (Cons!2505 (h!3147 tuple2!3572) (t!7448 List!2509)) )
))
(declare-datatypes ((ListLongMap!2499 0))(
  ( (ListLongMap!2500 (toList!1265 List!2509)) )
))
(declare-fun lt!97675 () ListLongMap!2499)

(declare-fun zeroValue!615 () V!5787)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5787)

(declare-fun getCurrentListMapNoExtraKeys!222 (array!8468 array!8466 (_ BitVec 32) (_ BitVec 32) V!5787 V!5787 (_ BitVec 32) Int) ListLongMap!2499)

(assert (=> b!196744 (= lt!97675 (getCurrentListMapNoExtraKeys!222 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!7976 () Bool)

(declare-fun tp!17279 () Bool)

(assert (=> mapNonEmpty!7976 (= mapRes!7976 (and tp!17279 e!129577))))

(declare-fun mapRest!7976 () (Array (_ BitVec 32) ValueCell!1959))

(declare-fun mapKey!7976 () (_ BitVec 32))

(declare-fun mapValue!7976 () ValueCell!1959)

(assert (=> mapNonEmpty!7976 (= (arr!3983 _values!649) (store mapRest!7976 mapKey!7976 mapValue!7976))))

(declare-fun b!196749 () Bool)

(declare-fun res!92924 () Bool)

(assert (=> b!196749 (=> (not res!92924) (not e!129579))))

(assert (=> b!196749 (= res!92924 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4309 _keys!825))))))

(assert (= (and start!20102 res!92928) b!196748))

(assert (= (and b!196748 res!92927) b!196743))

(assert (= (and b!196743 res!92925) b!196741))

(assert (= (and b!196741 res!92926) b!196749))

(assert (= (and b!196749 res!92924) b!196745))

(assert (= (and b!196745 res!92923) b!196746))

(assert (= (and b!196746 res!92929) b!196744))

(assert (= (and b!196740 condMapEmpty!7976) mapIsEmpty!7976))

(assert (= (and b!196740 (not condMapEmpty!7976)) mapNonEmpty!7976))

(get-info :version)

(assert (= (and mapNonEmpty!7976 ((_ is ValueCellFull!1959) mapValue!7976)) b!196742))

(assert (= (and b!196740 ((_ is ValueCellFull!1959) mapDefault!7976)) b!196747))

(assert (= start!20102 b!196740))

(declare-fun m!223905 () Bool)

(assert (=> b!196744 m!223905))

(declare-fun m!223907 () Bool)

(assert (=> start!20102 m!223907))

(declare-fun m!223909 () Bool)

(assert (=> start!20102 m!223909))

(declare-fun m!223911 () Bool)

(assert (=> start!20102 m!223911))

(declare-fun m!223913 () Bool)

(assert (=> mapNonEmpty!7976 m!223913))

(declare-fun m!223915 () Bool)

(assert (=> b!196745 m!223915))

(declare-fun m!223917 () Bool)

(assert (=> b!196746 m!223917))

(declare-fun m!223919 () Bool)

(assert (=> b!196741 m!223919))

(declare-fun m!223921 () Bool)

(assert (=> b!196743 m!223921))

(check-sat (not b!196744) tp_is_empty!4605 (not b!196745) (not start!20102) (not b!196741) (not b!196743) b_and!11513 (not b_next!4749) (not mapNonEmpty!7976))
(check-sat b_and!11513 (not b_next!4749))
