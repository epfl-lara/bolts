; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20340 () Bool)

(assert start!20340)

(declare-fun b_free!4987 () Bool)

(declare-fun b_next!4987 () Bool)

(assert (=> start!20340 (= b_free!4987 (not b_next!4987))))

(declare-fun tp!17992 () Bool)

(declare-fun b_and!11751 () Bool)

(assert (=> start!20340 (= tp!17992 b_and!11751)))

(declare-fun b!200350 () Bool)

(declare-fun e!131396 () Bool)

(declare-fun e!131394 () Bool)

(assert (=> b!200350 (= e!131396 (not e!131394))))

(declare-fun res!95464 () Bool)

(assert (=> b!200350 (=> res!95464 e!131394)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200350 (= res!95464 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6105 0))(
  ( (V!6106 (val!2466 Int)) )
))
(declare-datatypes ((tuple2!3722 0))(
  ( (tuple2!3723 (_1!1871 (_ BitVec 64)) (_2!1871 V!6105)) )
))
(declare-datatypes ((List!2662 0))(
  ( (Nil!2659) (Cons!2658 (h!3300 tuple2!3722) (t!7601 List!2662)) )
))
(declare-datatypes ((ListLongMap!2649 0))(
  ( (ListLongMap!2650 (toList!1340 List!2662)) )
))
(declare-fun lt!99011 () ListLongMap!2649)

(declare-datatypes ((ValueCell!2078 0))(
  ( (ValueCellFull!2078 (v!4432 V!6105)) (EmptyCell!2078) )
))
(declare-datatypes ((array!8916 0))(
  ( (array!8917 (arr!4208 (Array (_ BitVec 32) ValueCell!2078)) (size!4533 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8916)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6105)

(declare-datatypes ((array!8918 0))(
  ( (array!8919 (arr!4209 (Array (_ BitVec 32) (_ BitVec 64))) (size!4534 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8918)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6105)

(declare-fun getCurrentListMap!925 (array!8918 array!8916 (_ BitVec 32) (_ BitVec 32) V!6105 V!6105 (_ BitVec 32) Int) ListLongMap!2649)

(assert (=> b!200350 (= lt!99011 (getCurrentListMap!925 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99007 () ListLongMap!2649)

(declare-fun lt!99009 () array!8916)

(assert (=> b!200350 (= lt!99007 (getCurrentListMap!925 _keys!825 lt!99009 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99000 () ListLongMap!2649)

(declare-fun lt!99010 () ListLongMap!2649)

(assert (=> b!200350 (and (= lt!99000 lt!99010) (= lt!99010 lt!99000))))

(declare-fun lt!99013 () ListLongMap!2649)

(declare-fun lt!99012 () tuple2!3722)

(declare-fun +!357 (ListLongMap!2649 tuple2!3722) ListLongMap!2649)

(assert (=> b!200350 (= lt!99010 (+!357 lt!99013 lt!99012))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6105)

(assert (=> b!200350 (= lt!99012 (tuple2!3723 k!843 v!520))))

(declare-datatypes ((Unit!6021 0))(
  ( (Unit!6022) )
))
(declare-fun lt!99005 () Unit!6021)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!38 (array!8918 array!8916 (_ BitVec 32) (_ BitVec 32) V!6105 V!6105 (_ BitVec 32) (_ BitVec 64) V!6105 (_ BitVec 32) Int) Unit!6021)

(assert (=> b!200350 (= lt!99005 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!38 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!296 (array!8918 array!8916 (_ BitVec 32) (_ BitVec 32) V!6105 V!6105 (_ BitVec 32) Int) ListLongMap!2649)

(assert (=> b!200350 (= lt!99000 (getCurrentListMapNoExtraKeys!296 _keys!825 lt!99009 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200350 (= lt!99009 (array!8917 (store (arr!4208 _values!649) i!601 (ValueCellFull!2078 v!520)) (size!4533 _values!649)))))

(assert (=> b!200350 (= lt!99013 (getCurrentListMapNoExtraKeys!296 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!95470 () Bool)

(assert (=> start!20340 (=> (not res!95470) (not e!131396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20340 (= res!95470 (validMask!0 mask!1149))))

(assert (=> start!20340 e!131396))

(declare-fun e!131393 () Bool)

(declare-fun array_inv!2759 (array!8916) Bool)

(assert (=> start!20340 (and (array_inv!2759 _values!649) e!131393)))

(assert (=> start!20340 true))

(declare-fun tp_is_empty!4843 () Bool)

(assert (=> start!20340 tp_is_empty!4843))

(declare-fun array_inv!2760 (array!8918) Bool)

(assert (=> start!20340 (array_inv!2760 _keys!825)))

(assert (=> start!20340 tp!17992))

(declare-fun b!200351 () Bool)

(declare-fun e!131392 () Bool)

(assert (=> b!200351 (= e!131392 true)))

(declare-fun lt!98999 () tuple2!3722)

(declare-fun lt!99002 () ListLongMap!2649)

(declare-fun lt!99004 () ListLongMap!2649)

(assert (=> b!200351 (= (+!357 lt!99004 lt!98999) (+!357 lt!99002 lt!99012))))

(declare-fun lt!99008 () ListLongMap!2649)

(declare-fun lt!99003 () Unit!6021)

(declare-fun addCommutativeForDiffKeys!81 (ListLongMap!2649 (_ BitVec 64) V!6105 (_ BitVec 64) V!6105) Unit!6021)

(assert (=> b!200351 (= lt!99003 (addCommutativeForDiffKeys!81 lt!99008 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200352 () Bool)

(declare-fun res!95462 () Bool)

(assert (=> b!200352 (=> (not res!95462) (not e!131396))))

(declare-datatypes ((List!2663 0))(
  ( (Nil!2660) (Cons!2659 (h!3301 (_ BitVec 64)) (t!7602 List!2663)) )
))
(declare-fun arrayNoDuplicates!0 (array!8918 (_ BitVec 32) List!2663) Bool)

(assert (=> b!200352 (= res!95462 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2660))))

(declare-fun mapIsEmpty!8333 () Bool)

(declare-fun mapRes!8333 () Bool)

(assert (=> mapIsEmpty!8333 mapRes!8333))

(declare-fun mapNonEmpty!8333 () Bool)

(declare-fun tp!17993 () Bool)

(declare-fun e!131395 () Bool)

(assert (=> mapNonEmpty!8333 (= mapRes!8333 (and tp!17993 e!131395))))

(declare-fun mapKey!8333 () (_ BitVec 32))

(declare-fun mapRest!8333 () (Array (_ BitVec 32) ValueCell!2078))

(declare-fun mapValue!8333 () ValueCell!2078)

(assert (=> mapNonEmpty!8333 (= (arr!4208 _values!649) (store mapRest!8333 mapKey!8333 mapValue!8333))))

(declare-fun b!200353 () Bool)

(assert (=> b!200353 (= e!131394 e!131392)))

(declare-fun res!95467 () Bool)

(assert (=> b!200353 (=> res!95467 e!131392)))

(assert (=> b!200353 (= res!95467 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!98998 () ListLongMap!2649)

(assert (=> b!200353 (= lt!98998 lt!99004)))

(assert (=> b!200353 (= lt!99004 (+!357 lt!99008 lt!99012))))

(declare-fun lt!99006 () Unit!6021)

(assert (=> b!200353 (= lt!99006 (addCommutativeForDiffKeys!81 lt!99013 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!200353 (= lt!99007 (+!357 lt!98998 lt!98999))))

(declare-fun lt!99001 () tuple2!3722)

(assert (=> b!200353 (= lt!98998 (+!357 lt!99010 lt!99001))))

(assert (=> b!200353 (= lt!99011 lt!99002)))

(assert (=> b!200353 (= lt!99002 (+!357 lt!99008 lt!98999))))

(assert (=> b!200353 (= lt!99008 (+!357 lt!99013 lt!99001))))

(assert (=> b!200353 (= lt!99007 (+!357 (+!357 lt!99000 lt!99001) lt!98999))))

(assert (=> b!200353 (= lt!98999 (tuple2!3723 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200353 (= lt!99001 (tuple2!3723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!200354 () Bool)

(assert (=> b!200354 (= e!131395 tp_is_empty!4843)))

(declare-fun b!200355 () Bool)

(declare-fun res!95468 () Bool)

(assert (=> b!200355 (=> (not res!95468) (not e!131396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200355 (= res!95468 (validKeyInArray!0 k!843))))

(declare-fun b!200356 () Bool)

(declare-fun e!131397 () Bool)

(assert (=> b!200356 (= e!131397 tp_is_empty!4843)))

(declare-fun b!200357 () Bool)

(declare-fun res!95463 () Bool)

(assert (=> b!200357 (=> (not res!95463) (not e!131396))))

(assert (=> b!200357 (= res!95463 (= (select (arr!4209 _keys!825) i!601) k!843))))

(declare-fun b!200358 () Bool)

(declare-fun res!95469 () Bool)

(assert (=> b!200358 (=> (not res!95469) (not e!131396))))

(assert (=> b!200358 (= res!95469 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4534 _keys!825))))))

(declare-fun b!200359 () Bool)

(declare-fun res!95465 () Bool)

(assert (=> b!200359 (=> (not res!95465) (not e!131396))))

(assert (=> b!200359 (= res!95465 (and (= (size!4533 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4534 _keys!825) (size!4533 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200360 () Bool)

(assert (=> b!200360 (= e!131393 (and e!131397 mapRes!8333))))

(declare-fun condMapEmpty!8333 () Bool)

(declare-fun mapDefault!8333 () ValueCell!2078)

