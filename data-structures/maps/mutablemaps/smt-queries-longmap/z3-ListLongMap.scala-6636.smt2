; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83818 () Bool)

(assert start!83818)

(declare-fun b_free!19599 () Bool)

(declare-fun b_next!19599 () Bool)

(assert (=> start!83818 (= b_free!19599 (not b_next!19599))))

(declare-fun tp!68240 () Bool)

(declare-fun b_and!31305 () Bool)

(assert (=> start!83818 (= tp!68240 b_and!31305)))

(declare-fun b!978407 () Bool)

(declare-fun e!551620 () Bool)

(assert (=> b!978407 (= e!551620 (not true))))

(declare-datatypes ((V!35107 0))(
  ( (V!35108 (val!11347 Int)) )
))
(declare-datatypes ((tuple2!14648 0))(
  ( (tuple2!14649 (_1!7334 (_ BitVec 64)) (_2!7334 V!35107)) )
))
(declare-datatypes ((List!20548 0))(
  ( (Nil!20545) (Cons!20544 (h!21706 tuple2!14648) (t!29111 List!20548)) )
))
(declare-datatypes ((ListLongMap!13359 0))(
  ( (ListLongMap!13360 (toList!6695 List!20548)) )
))
(declare-fun lt!433770 () ListLongMap!13359)

(declare-fun lt!433772 () tuple2!14648)

(declare-fun lt!433771 () tuple2!14648)

(declare-fun +!2901 (ListLongMap!13359 tuple2!14648) ListLongMap!13359)

(assert (=> b!978407 (= (+!2901 (+!2901 lt!433770 lt!433772) lt!433771) (+!2901 (+!2901 lt!433770 lt!433771) lt!433772))))

(declare-fun lt!433773 () V!35107)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61201 0))(
  ( (array!61202 (arr!29454 (Array (_ BitVec 32) (_ BitVec 64))) (size!29934 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61201)

(assert (=> b!978407 (= lt!433771 (tuple2!14649 (select (arr!29454 _keys!1544) from!1932) lt!433773))))

(declare-fun minValue!1220 () V!35107)

(assert (=> b!978407 (= lt!433772 (tuple2!14649 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32477 0))(
  ( (Unit!32478) )
))
(declare-fun lt!433774 () Unit!32477)

(declare-fun addCommutativeForDiffKeys!563 (ListLongMap!13359 (_ BitVec 64) V!35107 (_ BitVec 64) V!35107) Unit!32477)

(assert (=> b!978407 (= lt!433774 (addCommutativeForDiffKeys!563 lt!433770 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29454 _keys!1544) from!1932) lt!433773))))

(declare-datatypes ((ValueCell!10815 0))(
  ( (ValueCellFull!10815 (v!13909 V!35107)) (EmptyCell!10815) )
))
(declare-datatypes ((array!61203 0))(
  ( (array!61204 (arr!29455 (Array (_ BitVec 32) ValueCell!10815)) (size!29935 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61203)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15268 (ValueCell!10815 V!35107) V!35107)

(declare-fun dynLambda!1737 (Int (_ BitVec 64)) V!35107)

(assert (=> b!978407 (= lt!433773 (get!15268 (select (arr!29455 _values!1278) from!1932) (dynLambda!1737 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35107)

(declare-fun getCurrentListMapNoExtraKeys!3362 (array!61201 array!61203 (_ BitVec 32) (_ BitVec 32) V!35107 V!35107 (_ BitVec 32) Int) ListLongMap!13359)

(assert (=> b!978407 (= lt!433770 (+!2901 (getCurrentListMapNoExtraKeys!3362 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978408 () Bool)

(declare-fun res!654883 () Bool)

(assert (=> b!978408 (=> (not res!654883) (not e!551620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978408 (= res!654883 (validKeyInArray!0 (select (arr!29454 _keys!1544) from!1932)))))

(declare-fun b!978409 () Bool)

(declare-fun res!654887 () Bool)

(assert (=> b!978409 (=> (not res!654887) (not e!551620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61201 (_ BitVec 32)) Bool)

(assert (=> b!978409 (= res!654887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!35918 () Bool)

(declare-fun mapRes!35918 () Bool)

(assert (=> mapIsEmpty!35918 mapRes!35918))

(declare-fun res!654888 () Bool)

(assert (=> start!83818 (=> (not res!654888) (not e!551620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83818 (= res!654888 (validMask!0 mask!1948))))

(assert (=> start!83818 e!551620))

(assert (=> start!83818 true))

(declare-fun tp_is_empty!22593 () Bool)

(assert (=> start!83818 tp_is_empty!22593))

(declare-fun e!551623 () Bool)

(declare-fun array_inv!22667 (array!61203) Bool)

(assert (=> start!83818 (and (array_inv!22667 _values!1278) e!551623)))

(assert (=> start!83818 tp!68240))

(declare-fun array_inv!22668 (array!61201) Bool)

(assert (=> start!83818 (array_inv!22668 _keys!1544)))

(declare-fun b!978410 () Bool)

(declare-fun res!654885 () Bool)

(assert (=> b!978410 (=> (not res!654885) (not e!551620))))

(assert (=> b!978410 (= res!654885 (and (= (size!29935 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29934 _keys!1544) (size!29935 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978411 () Bool)

(declare-fun res!654886 () Bool)

(assert (=> b!978411 (=> (not res!654886) (not e!551620))))

(assert (=> b!978411 (= res!654886 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978412 () Bool)

(declare-fun res!654884 () Bool)

(assert (=> b!978412 (=> (not res!654884) (not e!551620))))

(assert (=> b!978412 (= res!654884 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29934 _keys!1544))))))

(declare-fun b!978413 () Bool)

(declare-fun e!551624 () Bool)

(assert (=> b!978413 (= e!551623 (and e!551624 mapRes!35918))))

(declare-fun condMapEmpty!35918 () Bool)

(declare-fun mapDefault!35918 () ValueCell!10815)

(assert (=> b!978413 (= condMapEmpty!35918 (= (arr!29455 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10815)) mapDefault!35918)))))

(declare-fun b!978414 () Bool)

(declare-fun e!551622 () Bool)

(assert (=> b!978414 (= e!551622 tp_is_empty!22593)))

(declare-fun mapNonEmpty!35918 () Bool)

(declare-fun tp!68239 () Bool)

(assert (=> mapNonEmpty!35918 (= mapRes!35918 (and tp!68239 e!551622))))

(declare-fun mapKey!35918 () (_ BitVec 32))

(declare-fun mapValue!35918 () ValueCell!10815)

(declare-fun mapRest!35918 () (Array (_ BitVec 32) ValueCell!10815))

(assert (=> mapNonEmpty!35918 (= (arr!29455 _values!1278) (store mapRest!35918 mapKey!35918 mapValue!35918))))

(declare-fun b!978415 () Bool)

(assert (=> b!978415 (= e!551624 tp_is_empty!22593)))

(declare-fun b!978416 () Bool)

(declare-fun res!654882 () Bool)

(assert (=> b!978416 (=> (not res!654882) (not e!551620))))

(declare-datatypes ((List!20549 0))(
  ( (Nil!20546) (Cons!20545 (h!21707 (_ BitVec 64)) (t!29112 List!20549)) )
))
(declare-fun arrayNoDuplicates!0 (array!61201 (_ BitVec 32) List!20549) Bool)

(assert (=> b!978416 (= res!654882 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20546))))

(assert (= (and start!83818 res!654888) b!978410))

(assert (= (and b!978410 res!654885) b!978409))

(assert (= (and b!978409 res!654887) b!978416))

(assert (= (and b!978416 res!654882) b!978412))

(assert (= (and b!978412 res!654884) b!978408))

(assert (= (and b!978408 res!654883) b!978411))

(assert (= (and b!978411 res!654886) b!978407))

(assert (= (and b!978413 condMapEmpty!35918) mapIsEmpty!35918))

(assert (= (and b!978413 (not condMapEmpty!35918)) mapNonEmpty!35918))

(get-info :version)

(assert (= (and mapNonEmpty!35918 ((_ is ValueCellFull!10815) mapValue!35918)) b!978414))

(assert (= (and b!978413 ((_ is ValueCellFull!10815) mapDefault!35918)) b!978415))

(assert (= start!83818 b!978413))

(declare-fun b_lambda!14673 () Bool)

(assert (=> (not b_lambda!14673) (not b!978407)))

(declare-fun t!29110 () Bool)

(declare-fun tb!6413 () Bool)

(assert (=> (and start!83818 (= defaultEntry!1281 defaultEntry!1281) t!29110) tb!6413))

(declare-fun result!12807 () Bool)

(assert (=> tb!6413 (= result!12807 tp_is_empty!22593)))

(assert (=> b!978407 t!29110))

(declare-fun b_and!31307 () Bool)

(assert (= b_and!31305 (and (=> t!29110 result!12807) b_and!31307)))

(declare-fun m!905675 () Bool)

(assert (=> b!978416 m!905675))

(declare-fun m!905677 () Bool)

(assert (=> b!978407 m!905677))

(declare-fun m!905679 () Bool)

(assert (=> b!978407 m!905679))

(declare-fun m!905681 () Bool)

(assert (=> b!978407 m!905681))

(declare-fun m!905683 () Bool)

(assert (=> b!978407 m!905683))

(declare-fun m!905685 () Bool)

(assert (=> b!978407 m!905685))

(declare-fun m!905687 () Bool)

(assert (=> b!978407 m!905687))

(declare-fun m!905689 () Bool)

(assert (=> b!978407 m!905689))

(assert (=> b!978407 m!905681))

(assert (=> b!978407 m!905689))

(declare-fun m!905691 () Bool)

(assert (=> b!978407 m!905691))

(assert (=> b!978407 m!905679))

(declare-fun m!905693 () Bool)

(assert (=> b!978407 m!905693))

(assert (=> b!978407 m!905685))

(declare-fun m!905695 () Bool)

(assert (=> b!978407 m!905695))

(assert (=> b!978407 m!905677))

(assert (=> b!978407 m!905695))

(declare-fun m!905697 () Bool)

(assert (=> b!978407 m!905697))

(declare-fun m!905699 () Bool)

(assert (=> start!83818 m!905699))

(declare-fun m!905701 () Bool)

(assert (=> start!83818 m!905701))

(declare-fun m!905703 () Bool)

(assert (=> start!83818 m!905703))

(declare-fun m!905705 () Bool)

(assert (=> mapNonEmpty!35918 m!905705))

(assert (=> b!978408 m!905685))

(assert (=> b!978408 m!905685))

(declare-fun m!905707 () Bool)

(assert (=> b!978408 m!905707))

(declare-fun m!905709 () Bool)

(assert (=> b!978409 m!905709))

(check-sat b_and!31307 (not b!978416) (not b_lambda!14673) tp_is_empty!22593 (not mapNonEmpty!35918) (not b!978408) (not b!978407) (not start!83818) (not b!978409) (not b_next!19599))
(check-sat b_and!31307 (not b_next!19599))
