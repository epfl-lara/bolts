; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83838 () Bool)

(assert start!83838)

(declare-fun b_free!19619 () Bool)

(declare-fun b_next!19619 () Bool)

(assert (=> start!83838 (= b_free!19619 (not b_next!19619))))

(declare-fun tp!68300 () Bool)

(declare-fun b_and!31345 () Bool)

(assert (=> start!83838 (= tp!68300 b_and!31345)))

(declare-fun b!978728 () Bool)

(declare-fun e!551771 () Bool)

(declare-fun tp_is_empty!22613 () Bool)

(assert (=> b!978728 (= e!551771 tp_is_empty!22613)))

(declare-fun mapNonEmpty!35948 () Bool)

(declare-fun mapRes!35948 () Bool)

(declare-fun tp!68299 () Bool)

(assert (=> mapNonEmpty!35948 (= mapRes!35948 (and tp!68299 e!551771))))

(declare-datatypes ((V!35133 0))(
  ( (V!35134 (val!11357 Int)) )
))
(declare-datatypes ((ValueCell!10825 0))(
  ( (ValueCellFull!10825 (v!13919 V!35133)) (EmptyCell!10825) )
))
(declare-fun mapRest!35948 () (Array (_ BitVec 32) ValueCell!10825))

(declare-datatypes ((array!61241 0))(
  ( (array!61242 (arr!29474 (Array (_ BitVec 32) ValueCell!10825)) (size!29954 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61241)

(declare-fun mapValue!35948 () ValueCell!10825)

(declare-fun mapKey!35948 () (_ BitVec 32))

(assert (=> mapNonEmpty!35948 (= (arr!29474 _values!1278) (store mapRest!35948 mapKey!35948 mapValue!35948))))

(declare-fun b!978729 () Bool)

(declare-fun res!655092 () Bool)

(declare-fun e!551772 () Bool)

(assert (=> b!978729 (=> (not res!655092) (not e!551772))))

(declare-datatypes ((array!61243 0))(
  ( (array!61244 (arr!29475 (Array (_ BitVec 32) (_ BitVec 64))) (size!29955 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61243)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61243 (_ BitVec 32)) Bool)

(assert (=> b!978729 (= res!655092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978730 () Bool)

(declare-fun res!655094 () Bool)

(assert (=> b!978730 (=> (not res!655094) (not e!551772))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978730 (= res!655094 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978731 () Bool)

(declare-fun res!655095 () Bool)

(assert (=> b!978731 (=> (not res!655095) (not e!551772))))

(assert (=> b!978731 (= res!655095 (and (= (size!29954 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29955 _keys!1544) (size!29954 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35948 () Bool)

(assert (=> mapIsEmpty!35948 mapRes!35948))

(declare-fun b!978732 () Bool)

(declare-fun res!655093 () Bool)

(assert (=> b!978732 (=> (not res!655093) (not e!551772))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978732 (= res!655093 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29955 _keys!1544))))))

(declare-fun b!978733 () Bool)

(assert (=> b!978733 (= e!551772 (not true))))

(declare-datatypes ((tuple2!14660 0))(
  ( (tuple2!14661 (_1!7340 (_ BitVec 64)) (_2!7340 V!35133)) )
))
(declare-datatypes ((List!20559 0))(
  ( (Nil!20556) (Cons!20555 (h!21717 tuple2!14660) (t!29142 List!20559)) )
))
(declare-datatypes ((ListLongMap!13371 0))(
  ( (ListLongMap!13372 (toList!6701 List!20559)) )
))
(declare-fun lt!433921 () ListLongMap!13371)

(declare-fun lt!433922 () tuple2!14660)

(declare-fun lt!433924 () tuple2!14660)

(declare-fun +!2907 (ListLongMap!13371 tuple2!14660) ListLongMap!13371)

(assert (=> b!978733 (= (+!2907 (+!2907 lt!433921 lt!433922) lt!433924) (+!2907 (+!2907 lt!433921 lt!433924) lt!433922))))

(declare-fun lt!433920 () V!35133)

(assert (=> b!978733 (= lt!433924 (tuple2!14661 (select (arr!29475 _keys!1544) from!1932) lt!433920))))

(declare-fun minValue!1220 () V!35133)

(assert (=> b!978733 (= lt!433922 (tuple2!14661 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32489 0))(
  ( (Unit!32490) )
))
(declare-fun lt!433923 () Unit!32489)

(declare-fun addCommutativeForDiffKeys!569 (ListLongMap!13371 (_ BitVec 64) V!35133 (_ BitVec 64) V!35133) Unit!32489)

(assert (=> b!978733 (= lt!433923 (addCommutativeForDiffKeys!569 lt!433921 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29475 _keys!1544) from!1932) lt!433920))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15280 (ValueCell!10825 V!35133) V!35133)

(declare-fun dynLambda!1743 (Int (_ BitVec 64)) V!35133)

(assert (=> b!978733 (= lt!433920 (get!15280 (select (arr!29474 _values!1278) from!1932) (dynLambda!1743 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35133)

(declare-fun getCurrentListMapNoExtraKeys!3368 (array!61243 array!61241 (_ BitVec 32) (_ BitVec 32) V!35133 V!35133 (_ BitVec 32) Int) ListLongMap!13371)

(assert (=> b!978733 (= lt!433921 (+!2907 (getCurrentListMapNoExtraKeys!3368 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14661 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978734 () Bool)

(declare-fun res!655096 () Bool)

(assert (=> b!978734 (=> (not res!655096) (not e!551772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978734 (= res!655096 (validKeyInArray!0 (select (arr!29475 _keys!1544) from!1932)))))

(declare-fun b!978735 () Bool)

(declare-fun res!655097 () Bool)

(assert (=> b!978735 (=> (not res!655097) (not e!551772))))

(declare-datatypes ((List!20560 0))(
  ( (Nil!20557) (Cons!20556 (h!21718 (_ BitVec 64)) (t!29143 List!20560)) )
))
(declare-fun arrayNoDuplicates!0 (array!61243 (_ BitVec 32) List!20560) Bool)

(assert (=> b!978735 (= res!655097 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20557))))

(declare-fun b!978736 () Bool)

(declare-fun e!551773 () Bool)

(assert (=> b!978736 (= e!551773 tp_is_empty!22613)))

(declare-fun res!655098 () Bool)

(assert (=> start!83838 (=> (not res!655098) (not e!551772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83838 (= res!655098 (validMask!0 mask!1948))))

(assert (=> start!83838 e!551772))

(assert (=> start!83838 true))

(assert (=> start!83838 tp_is_empty!22613))

(declare-fun e!551770 () Bool)

(declare-fun array_inv!22685 (array!61241) Bool)

(assert (=> start!83838 (and (array_inv!22685 _values!1278) e!551770)))

(assert (=> start!83838 tp!68300))

(declare-fun array_inv!22686 (array!61243) Bool)

(assert (=> start!83838 (array_inv!22686 _keys!1544)))

(declare-fun b!978727 () Bool)

(assert (=> b!978727 (= e!551770 (and e!551773 mapRes!35948))))

(declare-fun condMapEmpty!35948 () Bool)

(declare-fun mapDefault!35948 () ValueCell!10825)

