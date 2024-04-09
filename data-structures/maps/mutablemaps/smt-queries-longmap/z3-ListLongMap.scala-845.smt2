; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20180 () Bool)

(assert start!20180)

(declare-fun b_free!4827 () Bool)

(declare-fun b_next!4827 () Bool)

(assert (=> start!20180 (= b_free!4827 (not b_next!4827))))

(declare-fun tp!17513 () Bool)

(declare-fun b_and!11591 () Bool)

(assert (=> start!20180 (= tp!17513 b_and!11591)))

(declare-fun b!197910 () Bool)

(declare-fun res!93747 () Bool)

(declare-fun e!130163 () Bool)

(assert (=> b!197910 (=> (not res!93747) (not e!130163))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197910 (= res!93747 (validKeyInArray!0 k0!843))))

(declare-fun b!197911 () Bool)

(declare-fun res!93745 () Bool)

(assert (=> b!197911 (=> (not res!93745) (not e!130163))))

(declare-datatypes ((array!8616 0))(
  ( (array!8617 (arr!4058 (Array (_ BitVec 32) (_ BitVec 64))) (size!4383 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8616)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197911 (= res!93745 (= (select (arr!4058 _keys!825) i!601) k0!843))))

(declare-fun b!197912 () Bool)

(declare-fun e!130165 () Bool)

(declare-fun tp_is_empty!4683 () Bool)

(assert (=> b!197912 (= e!130165 tp_is_empty!4683)))

(declare-fun b!197913 () Bool)

(declare-fun res!93748 () Bool)

(assert (=> b!197913 (=> (not res!93748) (not e!130163))))

(assert (=> b!197913 (= res!93748 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4383 _keys!825))))))

(declare-fun mapIsEmpty!8093 () Bool)

(declare-fun mapRes!8093 () Bool)

(assert (=> mapIsEmpty!8093 mapRes!8093))

(declare-fun res!93746 () Bool)

(assert (=> start!20180 (=> (not res!93746) (not e!130163))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20180 (= res!93746 (validMask!0 mask!1149))))

(assert (=> start!20180 e!130163))

(declare-datatypes ((V!5891 0))(
  ( (V!5892 (val!2386 Int)) )
))
(declare-datatypes ((ValueCell!1998 0))(
  ( (ValueCellFull!1998 (v!4352 V!5891)) (EmptyCell!1998) )
))
(declare-datatypes ((array!8618 0))(
  ( (array!8619 (arr!4059 (Array (_ BitVec 32) ValueCell!1998)) (size!4384 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8618)

(declare-fun e!130164 () Bool)

(declare-fun array_inv!2643 (array!8618) Bool)

(assert (=> start!20180 (and (array_inv!2643 _values!649) e!130164)))

(assert (=> start!20180 true))

(assert (=> start!20180 tp_is_empty!4683))

(declare-fun array_inv!2644 (array!8616) Bool)

(assert (=> start!20180 (array_inv!2644 _keys!825)))

(assert (=> start!20180 tp!17513))

(declare-fun b!197914 () Bool)

(declare-fun e!130162 () Bool)

(assert (=> b!197914 (= e!130162 tp_is_empty!4683)))

(declare-fun b!197915 () Bool)

(assert (=> b!197915 (= e!130164 (and e!130165 mapRes!8093))))

(declare-fun condMapEmpty!8093 () Bool)

(declare-fun mapDefault!8093 () ValueCell!1998)

(assert (=> b!197915 (= condMapEmpty!8093 (= (arr!4059 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1998)) mapDefault!8093)))))

(declare-fun b!197916 () Bool)

(declare-fun res!93744 () Bool)

(assert (=> b!197916 (=> (not res!93744) (not e!130163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8616 (_ BitVec 32)) Bool)

(assert (=> b!197916 (= res!93744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197917 () Bool)

(declare-fun res!93743 () Bool)

(assert (=> b!197917 (=> (not res!93743) (not e!130163))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197917 (= res!93743 (and (= (size!4384 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4383 _keys!825) (size!4384 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197918 () Bool)

(assert (=> b!197918 (= e!130163 false)))

(declare-datatypes ((tuple2!3616 0))(
  ( (tuple2!3617 (_1!1818 (_ BitVec 64)) (_2!1818 V!5891)) )
))
(declare-datatypes ((List!2554 0))(
  ( (Nil!2551) (Cons!2550 (h!3192 tuple2!3616) (t!7493 List!2554)) )
))
(declare-datatypes ((ListLongMap!2543 0))(
  ( (ListLongMap!2544 (toList!1287 List!2554)) )
))
(declare-fun lt!97843 () ListLongMap!2543)

(declare-fun v!520 () V!5891)

(declare-fun zeroValue!615 () V!5891)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5891)

(declare-fun getCurrentListMapNoExtraKeys!244 (array!8616 array!8618 (_ BitVec 32) (_ BitVec 32) V!5891 V!5891 (_ BitVec 32) Int) ListLongMap!2543)

(assert (=> b!197918 (= lt!97843 (getCurrentListMapNoExtraKeys!244 _keys!825 (array!8619 (store (arr!4059 _values!649) i!601 (ValueCellFull!1998 v!520)) (size!4384 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97842 () ListLongMap!2543)

(assert (=> b!197918 (= lt!97842 (getCurrentListMapNoExtraKeys!244 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8093 () Bool)

(declare-fun tp!17512 () Bool)

(assert (=> mapNonEmpty!8093 (= mapRes!8093 (and tp!17512 e!130162))))

(declare-fun mapRest!8093 () (Array (_ BitVec 32) ValueCell!1998))

(declare-fun mapValue!8093 () ValueCell!1998)

(declare-fun mapKey!8093 () (_ BitVec 32))

(assert (=> mapNonEmpty!8093 (= (arr!4059 _values!649) (store mapRest!8093 mapKey!8093 mapValue!8093))))

(declare-fun b!197919 () Bool)

(declare-fun res!93742 () Bool)

(assert (=> b!197919 (=> (not res!93742) (not e!130163))))

(declare-datatypes ((List!2555 0))(
  ( (Nil!2552) (Cons!2551 (h!3193 (_ BitVec 64)) (t!7494 List!2555)) )
))
(declare-fun arrayNoDuplicates!0 (array!8616 (_ BitVec 32) List!2555) Bool)

(assert (=> b!197919 (= res!93742 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2552))))

(assert (= (and start!20180 res!93746) b!197917))

(assert (= (and b!197917 res!93743) b!197916))

(assert (= (and b!197916 res!93744) b!197919))

(assert (= (and b!197919 res!93742) b!197913))

(assert (= (and b!197913 res!93748) b!197910))

(assert (= (and b!197910 res!93747) b!197911))

(assert (= (and b!197911 res!93745) b!197918))

(assert (= (and b!197915 condMapEmpty!8093) mapIsEmpty!8093))

(assert (= (and b!197915 (not condMapEmpty!8093)) mapNonEmpty!8093))

(get-info :version)

(assert (= (and mapNonEmpty!8093 ((_ is ValueCellFull!1998) mapValue!8093)) b!197914))

(assert (= (and b!197915 ((_ is ValueCellFull!1998) mapDefault!8093)) b!197912))

(assert (= start!20180 b!197915))

(declare-fun m!224671 () Bool)

(assert (=> b!197916 m!224671))

(declare-fun m!224673 () Bool)

(assert (=> b!197919 m!224673))

(declare-fun m!224675 () Bool)

(assert (=> b!197911 m!224675))

(declare-fun m!224677 () Bool)

(assert (=> mapNonEmpty!8093 m!224677))

(declare-fun m!224679 () Bool)

(assert (=> start!20180 m!224679))

(declare-fun m!224681 () Bool)

(assert (=> start!20180 m!224681))

(declare-fun m!224683 () Bool)

(assert (=> start!20180 m!224683))

(declare-fun m!224685 () Bool)

(assert (=> b!197910 m!224685))

(declare-fun m!224687 () Bool)

(assert (=> b!197918 m!224687))

(declare-fun m!224689 () Bool)

(assert (=> b!197918 m!224689))

(declare-fun m!224691 () Bool)

(assert (=> b!197918 m!224691))

(check-sat (not b!197918) (not start!20180) tp_is_empty!4683 (not b!197916) (not b!197919) (not mapNonEmpty!8093) (not b!197910) b_and!11591 (not b_next!4827))
(check-sat b_and!11591 (not b_next!4827))
