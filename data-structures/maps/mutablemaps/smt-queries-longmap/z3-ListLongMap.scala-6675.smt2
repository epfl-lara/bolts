; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84052 () Bool)

(assert start!84052)

(declare-fun b_free!19779 () Bool)

(declare-fun b_next!19779 () Bool)

(assert (=> start!84052 (= b_free!19779 (not b_next!19779))))

(declare-fun tp!68860 () Bool)

(declare-fun b_and!31659 () Bool)

(assert (=> start!84052 (= tp!68860 b_and!31659)))

(declare-fun mapNonEmpty!36269 () Bool)

(declare-fun mapRes!36269 () Bool)

(declare-fun tp!68861 () Bool)

(declare-fun e!553608 () Bool)

(assert (=> mapNonEmpty!36269 (= mapRes!36269 (and tp!68861 e!553608))))

(declare-datatypes ((V!35419 0))(
  ( (V!35420 (val!11464 Int)) )
))
(declare-datatypes ((ValueCell!10932 0))(
  ( (ValueCellFull!10932 (v!14026 V!35419)) (EmptyCell!10932) )
))
(declare-datatypes ((array!61641 0))(
  ( (array!61642 (arr!29674 (Array (_ BitVec 32) ValueCell!10932)) (size!30154 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61641)

(declare-fun mapKey!36269 () (_ BitVec 32))

(declare-fun mapValue!36269 () ValueCell!10932)

(declare-fun mapRest!36269 () (Array (_ BitVec 32) ValueCell!10932))

(assert (=> mapNonEmpty!36269 (= (arr!29674 _values!1278) (store mapRest!36269 mapKey!36269 mapValue!36269))))

(declare-fun b!982024 () Bool)

(declare-fun e!553606 () Bool)

(declare-fun e!553607 () Bool)

(assert (=> b!982024 (= e!553606 e!553607)))

(declare-fun res!657273 () Bool)

(assert (=> b!982024 (=> (not res!657273) (not e!553607))))

(declare-datatypes ((array!61643 0))(
  ( (array!61644 (arr!29675 (Array (_ BitVec 32) (_ BitVec 64))) (size!30155 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61643)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982024 (= res!657273 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29675 _keys!1544) from!1932))))))

(declare-fun lt!435967 () V!35419)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15406 (ValueCell!10932 V!35419) V!35419)

(declare-fun dynLambda!1797 (Int (_ BitVec 64)) V!35419)

(assert (=> b!982024 (= lt!435967 (get!15406 (select (arr!29674 _values!1278) from!1932) (dynLambda!1797 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35419)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14788 0))(
  ( (tuple2!14789 (_1!7404 (_ BitVec 64)) (_2!7404 V!35419)) )
))
(declare-datatypes ((List!20695 0))(
  ( (Nil!20692) (Cons!20691 (h!21853 tuple2!14788) (t!29432 List!20695)) )
))
(declare-datatypes ((ListLongMap!13499 0))(
  ( (ListLongMap!13500 (toList!6765 List!20695)) )
))
(declare-fun lt!435968 () ListLongMap!13499)

(declare-fun zeroValue!1220 () V!35419)

(declare-fun getCurrentListMapNoExtraKeys!3424 (array!61643 array!61641 (_ BitVec 32) (_ BitVec 32) V!35419 V!35419 (_ BitVec 32) Int) ListLongMap!13499)

(assert (=> b!982024 (= lt!435968 (getCurrentListMapNoExtraKeys!3424 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982025 () Bool)

(declare-fun res!657275 () Bool)

(assert (=> b!982025 (=> (not res!657275) (not e!553606))))

(assert (=> b!982025 (= res!657275 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982026 () Bool)

(declare-fun res!657277 () Bool)

(assert (=> b!982026 (=> (not res!657277) (not e!553606))))

(assert (=> b!982026 (= res!657277 (and (= (size!30154 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30155 _keys!1544) (size!30154 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982028 () Bool)

(declare-fun res!657272 () Bool)

(assert (=> b!982028 (=> (not res!657272) (not e!553606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982028 (= res!657272 (validKeyInArray!0 (select (arr!29675 _keys!1544) from!1932)))))

(declare-fun b!982029 () Bool)

(assert (=> b!982029 (= e!553607 (not true))))

(declare-fun lt!435966 () tuple2!14788)

(declare-fun lt!435970 () tuple2!14788)

(declare-fun +!2968 (ListLongMap!13499 tuple2!14788) ListLongMap!13499)

(assert (=> b!982029 (= (+!2968 (+!2968 lt!435968 lt!435966) lt!435970) (+!2968 (+!2968 lt!435968 lt!435970) lt!435966))))

(assert (=> b!982029 (= lt!435970 (tuple2!14789 (select (arr!29675 _keys!1544) from!1932) lt!435967))))

(assert (=> b!982029 (= lt!435966 (tuple2!14789 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32611 0))(
  ( (Unit!32612) )
))
(declare-fun lt!435969 () Unit!32611)

(declare-fun addCommutativeForDiffKeys!630 (ListLongMap!13499 (_ BitVec 64) V!35419 (_ BitVec 64) V!35419) Unit!32611)

(assert (=> b!982029 (= lt!435969 (addCommutativeForDiffKeys!630 lt!435968 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29675 _keys!1544) from!1932) lt!435967))))

(declare-fun b!982030 () Bool)

(declare-fun res!657279 () Bool)

(assert (=> b!982030 (=> (not res!657279) (not e!553606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61643 (_ BitVec 32)) Bool)

(assert (=> b!982030 (= res!657279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982031 () Bool)

(declare-fun res!657276 () Bool)

(assert (=> b!982031 (=> (not res!657276) (not e!553606))))

(assert (=> b!982031 (= res!657276 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30155 _keys!1544))))))

(declare-fun b!982032 () Bool)

(declare-fun tp_is_empty!22827 () Bool)

(assert (=> b!982032 (= e!553608 tp_is_empty!22827)))

(declare-fun res!657278 () Bool)

(assert (=> start!84052 (=> (not res!657278) (not e!553606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84052 (= res!657278 (validMask!0 mask!1948))))

(assert (=> start!84052 e!553606))

(assert (=> start!84052 true))

(assert (=> start!84052 tp_is_empty!22827))

(declare-fun e!553609 () Bool)

(declare-fun array_inv!22819 (array!61641) Bool)

(assert (=> start!84052 (and (array_inv!22819 _values!1278) e!553609)))

(assert (=> start!84052 tp!68860))

(declare-fun array_inv!22820 (array!61643) Bool)

(assert (=> start!84052 (array_inv!22820 _keys!1544)))

(declare-fun b!982027 () Bool)

(declare-fun e!553605 () Bool)

(assert (=> b!982027 (= e!553605 tp_is_empty!22827)))

(declare-fun mapIsEmpty!36269 () Bool)

(assert (=> mapIsEmpty!36269 mapRes!36269))

(declare-fun b!982033 () Bool)

(declare-fun res!657274 () Bool)

(assert (=> b!982033 (=> (not res!657274) (not e!553606))))

(declare-datatypes ((List!20696 0))(
  ( (Nil!20693) (Cons!20692 (h!21854 (_ BitVec 64)) (t!29433 List!20696)) )
))
(declare-fun arrayNoDuplicates!0 (array!61643 (_ BitVec 32) List!20696) Bool)

(assert (=> b!982033 (= res!657274 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20693))))

(declare-fun b!982034 () Bool)

(assert (=> b!982034 (= e!553609 (and e!553605 mapRes!36269))))

(declare-fun condMapEmpty!36269 () Bool)

(declare-fun mapDefault!36269 () ValueCell!10932)

(assert (=> b!982034 (= condMapEmpty!36269 (= (arr!29674 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10932)) mapDefault!36269)))))

(assert (= (and start!84052 res!657278) b!982026))

(assert (= (and b!982026 res!657277) b!982030))

(assert (= (and b!982030 res!657279) b!982033))

(assert (= (and b!982033 res!657274) b!982031))

(assert (= (and b!982031 res!657276) b!982028))

(assert (= (and b!982028 res!657272) b!982025))

(assert (= (and b!982025 res!657275) b!982024))

(assert (= (and b!982024 res!657273) b!982029))

(assert (= (and b!982034 condMapEmpty!36269) mapIsEmpty!36269))

(assert (= (and b!982034 (not condMapEmpty!36269)) mapNonEmpty!36269))

(get-info :version)

(assert (= (and mapNonEmpty!36269 ((_ is ValueCellFull!10932) mapValue!36269)) b!982032))

(assert (= (and b!982034 ((_ is ValueCellFull!10932) mapDefault!36269)) b!982027))

(assert (= start!84052 b!982034))

(declare-fun b_lambda!14847 () Bool)

(assert (=> (not b_lambda!14847) (not b!982024)))

(declare-fun t!29431 () Bool)

(declare-fun tb!6587 () Bool)

(assert (=> (and start!84052 (= defaultEntry!1281 defaultEntry!1281) t!29431) tb!6587))

(declare-fun result!13155 () Bool)

(assert (=> tb!6587 (= result!13155 tp_is_empty!22827)))

(assert (=> b!982024 t!29431))

(declare-fun b_and!31661 () Bool)

(assert (= b_and!31659 (and (=> t!29431 result!13155) b_and!31661)))

(declare-fun m!909477 () Bool)

(assert (=> mapNonEmpty!36269 m!909477))

(declare-fun m!909479 () Bool)

(assert (=> b!982028 m!909479))

(assert (=> b!982028 m!909479))

(declare-fun m!909481 () Bool)

(assert (=> b!982028 m!909481))

(declare-fun m!909483 () Bool)

(assert (=> b!982033 m!909483))

(declare-fun m!909485 () Bool)

(assert (=> start!84052 m!909485))

(declare-fun m!909487 () Bool)

(assert (=> start!84052 m!909487))

(declare-fun m!909489 () Bool)

(assert (=> start!84052 m!909489))

(assert (=> b!982029 m!909479))

(declare-fun m!909491 () Bool)

(assert (=> b!982029 m!909491))

(declare-fun m!909493 () Bool)

(assert (=> b!982029 m!909493))

(assert (=> b!982029 m!909493))

(declare-fun m!909495 () Bool)

(assert (=> b!982029 m!909495))

(assert (=> b!982029 m!909479))

(declare-fun m!909497 () Bool)

(assert (=> b!982029 m!909497))

(assert (=> b!982029 m!909491))

(declare-fun m!909499 () Bool)

(assert (=> b!982029 m!909499))

(assert (=> b!982024 m!909479))

(declare-fun m!909501 () Bool)

(assert (=> b!982024 m!909501))

(declare-fun m!909503 () Bool)

(assert (=> b!982024 m!909503))

(declare-fun m!909505 () Bool)

(assert (=> b!982024 m!909505))

(assert (=> b!982024 m!909501))

(assert (=> b!982024 m!909505))

(declare-fun m!909507 () Bool)

(assert (=> b!982024 m!909507))

(declare-fun m!909509 () Bool)

(assert (=> b!982030 m!909509))

(check-sat (not b!982029) (not mapNonEmpty!36269) (not b_next!19779) (not b!982024) (not b!982030) tp_is_empty!22827 (not b!982033) b_and!31661 (not b_lambda!14847) (not start!84052) (not b!982028))
(check-sat b_and!31661 (not b_next!19779))
