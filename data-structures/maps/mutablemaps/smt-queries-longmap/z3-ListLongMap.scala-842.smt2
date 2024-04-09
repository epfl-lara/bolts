; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20162 () Bool)

(assert start!20162)

(declare-fun b_free!4809 () Bool)

(declare-fun b_next!4809 () Bool)

(assert (=> start!20162 (= b_free!4809 (not b_next!4809))))

(declare-fun tp!17458 () Bool)

(declare-fun b_and!11573 () Bool)

(assert (=> start!20162 (= tp!17458 b_and!11573)))

(declare-fun b!197640 () Bool)

(declare-fun e!130029 () Bool)

(declare-fun tp_is_empty!4665 () Bool)

(assert (=> b!197640 (= e!130029 tp_is_empty!4665)))

(declare-fun mapIsEmpty!8066 () Bool)

(declare-fun mapRes!8066 () Bool)

(assert (=> mapIsEmpty!8066 mapRes!8066))

(declare-fun b!197642 () Bool)

(declare-fun e!130030 () Bool)

(assert (=> b!197642 (= e!130030 false)))

(declare-datatypes ((V!5867 0))(
  ( (V!5868 (val!2377 Int)) )
))
(declare-datatypes ((ValueCell!1989 0))(
  ( (ValueCellFull!1989 (v!4343 V!5867)) (EmptyCell!1989) )
))
(declare-datatypes ((array!8582 0))(
  ( (array!8583 (arr!4041 (Array (_ BitVec 32) ValueCell!1989)) (size!4366 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8582)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!5867)

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8584 0))(
  ( (array!8585 (arr!4042 (Array (_ BitVec 32) (_ BitVec 64))) (size!4367 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8584)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5867)

(declare-fun zeroValue!615 () V!5867)

(declare-datatypes ((tuple2!3606 0))(
  ( (tuple2!3607 (_1!1813 (_ BitVec 64)) (_2!1813 V!5867)) )
))
(declare-datatypes ((List!2544 0))(
  ( (Nil!2541) (Cons!2540 (h!3182 tuple2!3606) (t!7483 List!2544)) )
))
(declare-datatypes ((ListLongMap!2533 0))(
  ( (ListLongMap!2534 (toList!1282 List!2544)) )
))
(declare-fun lt!97789 () ListLongMap!2533)

(declare-fun getCurrentListMapNoExtraKeys!239 (array!8584 array!8582 (_ BitVec 32) (_ BitVec 32) V!5867 V!5867 (_ BitVec 32) Int) ListLongMap!2533)

(assert (=> b!197642 (= lt!97789 (getCurrentListMapNoExtraKeys!239 _keys!825 (array!8583 (store (arr!4041 _values!649) i!601 (ValueCellFull!1989 v!520)) (size!4366 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97788 () ListLongMap!2533)

(assert (=> b!197642 (= lt!97788 (getCurrentListMapNoExtraKeys!239 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197643 () Bool)

(declare-fun e!130026 () Bool)

(assert (=> b!197643 (= e!130026 tp_is_empty!4665)))

(declare-fun mapNonEmpty!8066 () Bool)

(declare-fun tp!17459 () Bool)

(assert (=> mapNonEmpty!8066 (= mapRes!8066 (and tp!17459 e!130026))))

(declare-fun mapKey!8066 () (_ BitVec 32))

(declare-fun mapRest!8066 () (Array (_ BitVec 32) ValueCell!1989))

(declare-fun mapValue!8066 () ValueCell!1989)

(assert (=> mapNonEmpty!8066 (= (arr!4041 _values!649) (store mapRest!8066 mapKey!8066 mapValue!8066))))

(declare-fun b!197644 () Bool)

(declare-fun res!93555 () Bool)

(assert (=> b!197644 (=> (not res!93555) (not e!130030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8584 (_ BitVec 32)) Bool)

(assert (=> b!197644 (= res!93555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197645 () Bool)

(declare-fun res!93556 () Bool)

(assert (=> b!197645 (=> (not res!93556) (not e!130030))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197645 (= res!93556 (validKeyInArray!0 k0!843))))

(declare-fun b!197646 () Bool)

(declare-fun res!93554 () Bool)

(assert (=> b!197646 (=> (not res!93554) (not e!130030))))

(declare-datatypes ((List!2545 0))(
  ( (Nil!2542) (Cons!2541 (h!3183 (_ BitVec 64)) (t!7484 List!2545)) )
))
(declare-fun arrayNoDuplicates!0 (array!8584 (_ BitVec 32) List!2545) Bool)

(assert (=> b!197646 (= res!93554 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2542))))

(declare-fun b!197647 () Bool)

(declare-fun e!130028 () Bool)

(assert (=> b!197647 (= e!130028 (and e!130029 mapRes!8066))))

(declare-fun condMapEmpty!8066 () Bool)

(declare-fun mapDefault!8066 () ValueCell!1989)

(assert (=> b!197647 (= condMapEmpty!8066 (= (arr!4041 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1989)) mapDefault!8066)))))

(declare-fun res!93559 () Bool)

(assert (=> start!20162 (=> (not res!93559) (not e!130030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20162 (= res!93559 (validMask!0 mask!1149))))

(assert (=> start!20162 e!130030))

(declare-fun array_inv!2627 (array!8582) Bool)

(assert (=> start!20162 (and (array_inv!2627 _values!649) e!130028)))

(assert (=> start!20162 true))

(assert (=> start!20162 tp_is_empty!4665))

(declare-fun array_inv!2628 (array!8584) Bool)

(assert (=> start!20162 (array_inv!2628 _keys!825)))

(assert (=> start!20162 tp!17458))

(declare-fun b!197641 () Bool)

(declare-fun res!93557 () Bool)

(assert (=> b!197641 (=> (not res!93557) (not e!130030))))

(assert (=> b!197641 (= res!93557 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4367 _keys!825))))))

(declare-fun b!197648 () Bool)

(declare-fun res!93553 () Bool)

(assert (=> b!197648 (=> (not res!93553) (not e!130030))))

(assert (=> b!197648 (= res!93553 (and (= (size!4366 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4367 _keys!825) (size!4366 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197649 () Bool)

(declare-fun res!93558 () Bool)

(assert (=> b!197649 (=> (not res!93558) (not e!130030))))

(assert (=> b!197649 (= res!93558 (= (select (arr!4042 _keys!825) i!601) k0!843))))

(assert (= (and start!20162 res!93559) b!197648))

(assert (= (and b!197648 res!93553) b!197644))

(assert (= (and b!197644 res!93555) b!197646))

(assert (= (and b!197646 res!93554) b!197641))

(assert (= (and b!197641 res!93557) b!197645))

(assert (= (and b!197645 res!93556) b!197649))

(assert (= (and b!197649 res!93558) b!197642))

(assert (= (and b!197647 condMapEmpty!8066) mapIsEmpty!8066))

(assert (= (and b!197647 (not condMapEmpty!8066)) mapNonEmpty!8066))

(get-info :version)

(assert (= (and mapNonEmpty!8066 ((_ is ValueCellFull!1989) mapValue!8066)) b!197643))

(assert (= (and b!197647 ((_ is ValueCellFull!1989) mapDefault!8066)) b!197640))

(assert (= start!20162 b!197647))

(declare-fun m!224473 () Bool)

(assert (=> b!197646 m!224473))

(declare-fun m!224475 () Bool)

(assert (=> start!20162 m!224475))

(declare-fun m!224477 () Bool)

(assert (=> start!20162 m!224477))

(declare-fun m!224479 () Bool)

(assert (=> start!20162 m!224479))

(declare-fun m!224481 () Bool)

(assert (=> b!197644 m!224481))

(declare-fun m!224483 () Bool)

(assert (=> b!197649 m!224483))

(declare-fun m!224485 () Bool)

(assert (=> b!197645 m!224485))

(declare-fun m!224487 () Bool)

(assert (=> mapNonEmpty!8066 m!224487))

(declare-fun m!224489 () Bool)

(assert (=> b!197642 m!224489))

(declare-fun m!224491 () Bool)

(assert (=> b!197642 m!224491))

(declare-fun m!224493 () Bool)

(assert (=> b!197642 m!224493))

(check-sat (not b!197644) (not b_next!4809) tp_is_empty!4665 (not b!197645) (not mapNonEmpty!8066) (not b!197642) b_and!11573 (not start!20162) (not b!197646))
(check-sat b_and!11573 (not b_next!4809))
