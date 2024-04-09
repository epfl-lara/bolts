; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83912 () Bool)

(assert start!83912)

(declare-fun b_free!19693 () Bool)

(declare-fun b_next!19693 () Bool)

(assert (=> start!83912 (= b_free!19693 (not b_next!19693))))

(declare-fun tp!68522 () Bool)

(declare-fun b_and!31493 () Bool)

(assert (=> start!83912 (= tp!68522 b_and!31493)))

(declare-fun mapIsEmpty!36059 () Bool)

(declare-fun mapRes!36059 () Bool)

(assert (=> mapIsEmpty!36059 mapRes!36059))

(declare-fun b!980021 () Bool)

(declare-fun res!655982 () Bool)

(declare-fun e!552436 () Bool)

(assert (=> b!980021 (=> (not res!655982) (not e!552436))))

(declare-datatypes ((array!61383 0))(
  ( (array!61384 (arr!29545 (Array (_ BitVec 32) (_ BitVec 64))) (size!30025 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61383)

(declare-datatypes ((List!20611 0))(
  ( (Nil!20608) (Cons!20607 (h!21769 (_ BitVec 64)) (t!29268 List!20611)) )
))
(declare-fun arrayNoDuplicates!0 (array!61383 (_ BitVec 32) List!20611) Bool)

(assert (=> b!980021 (= res!655982 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20608))))

(declare-fun b!980022 () Bool)

(declare-fun res!655980 () Bool)

(assert (=> b!980022 (=> (not res!655980) (not e!552436))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980022 (= res!655980 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!655985 () Bool)

(assert (=> start!83912 (=> (not res!655985) (not e!552436))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83912 (= res!655985 (validMask!0 mask!1948))))

(assert (=> start!83912 e!552436))

(assert (=> start!83912 true))

(declare-fun tp_is_empty!22687 () Bool)

(assert (=> start!83912 tp_is_empty!22687))

(declare-datatypes ((V!35233 0))(
  ( (V!35234 (val!11394 Int)) )
))
(declare-datatypes ((ValueCell!10862 0))(
  ( (ValueCellFull!10862 (v!13956 V!35233)) (EmptyCell!10862) )
))
(declare-datatypes ((array!61385 0))(
  ( (array!61386 (arr!29546 (Array (_ BitVec 32) ValueCell!10862)) (size!30026 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61385)

(declare-fun e!552435 () Bool)

(declare-fun array_inv!22729 (array!61385) Bool)

(assert (=> start!83912 (and (array_inv!22729 _values!1278) e!552435)))

(assert (=> start!83912 tp!68522))

(declare-fun array_inv!22730 (array!61383) Bool)

(assert (=> start!83912 (array_inv!22730 _keys!1544)))

(declare-fun b!980023 () Bool)

(declare-fun e!552439 () Bool)

(assert (=> b!980023 (= e!552436 (not e!552439))))

(declare-fun res!655986 () Bool)

(assert (=> b!980023 (=> res!655986 e!552439)))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!980023 (= res!655986 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29545 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14720 0))(
  ( (tuple2!14721 (_1!7370 (_ BitVec 64)) (_2!7370 V!35233)) )
))
(declare-datatypes ((List!20612 0))(
  ( (Nil!20609) (Cons!20608 (h!21770 tuple2!14720) (t!29269 List!20612)) )
))
(declare-datatypes ((ListLongMap!13431 0))(
  ( (ListLongMap!13432 (toList!6731 List!20612)) )
))
(declare-fun lt!435033 () ListLongMap!13431)

(declare-fun lt!435032 () ListLongMap!13431)

(declare-fun lt!435025 () tuple2!14720)

(declare-fun lt!435030 () tuple2!14720)

(declare-fun +!2937 (ListLongMap!13431 tuple2!14720) ListLongMap!13431)

(assert (=> b!980023 (= (+!2937 lt!435033 lt!435025) (+!2937 lt!435032 lt!435030))))

(declare-fun lt!435031 () ListLongMap!13431)

(assert (=> b!980023 (= lt!435032 (+!2937 lt!435031 lt!435025))))

(declare-fun lt!435028 () V!35233)

(assert (=> b!980023 (= lt!435025 (tuple2!14721 (select (arr!29545 _keys!1544) from!1932) lt!435028))))

(assert (=> b!980023 (= lt!435033 (+!2937 lt!435031 lt!435030))))

(declare-fun minValue!1220 () V!35233)

(assert (=> b!980023 (= lt!435030 (tuple2!14721 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32549 0))(
  ( (Unit!32550) )
))
(declare-fun lt!435034 () Unit!32549)

(declare-fun addCommutativeForDiffKeys!599 (ListLongMap!13431 (_ BitVec 64) V!35233 (_ BitVec 64) V!35233) Unit!32549)

(assert (=> b!980023 (= lt!435034 (addCommutativeForDiffKeys!599 lt!435031 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29545 _keys!1544) from!1932) lt!435028))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15334 (ValueCell!10862 V!35233) V!35233)

(declare-fun dynLambda!1771 (Int (_ BitVec 64)) V!35233)

(assert (=> b!980023 (= lt!435028 (get!15334 (select (arr!29546 _values!1278) from!1932) (dynLambda!1771 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!435029 () ListLongMap!13431)

(declare-fun lt!435026 () tuple2!14720)

(assert (=> b!980023 (= lt!435031 (+!2937 lt!435029 lt!435026))))

(declare-fun zeroValue!1220 () V!35233)

(assert (=> b!980023 (= lt!435026 (tuple2!14721 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3396 (array!61383 array!61385 (_ BitVec 32) (_ BitVec 32) V!35233 V!35233 (_ BitVec 32) Int) ListLongMap!13431)

(assert (=> b!980023 (= lt!435029 (getCurrentListMapNoExtraKeys!3396 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapNonEmpty!36059 () Bool)

(declare-fun tp!68521 () Bool)

(declare-fun e!552438 () Bool)

(assert (=> mapNonEmpty!36059 (= mapRes!36059 (and tp!68521 e!552438))))

(declare-fun mapValue!36059 () ValueCell!10862)

(declare-fun mapRest!36059 () (Array (_ BitVec 32) ValueCell!10862))

(declare-fun mapKey!36059 () (_ BitVec 32))

(assert (=> mapNonEmpty!36059 (= (arr!29546 _values!1278) (store mapRest!36059 mapKey!36059 mapValue!36059))))

(declare-fun b!980024 () Bool)

(assert (=> b!980024 (= e!552439 true)))

(assert (=> b!980024 (= lt!435032 (+!2937 (+!2937 lt!435029 lt!435025) lt!435026))))

(declare-fun lt!435027 () Unit!32549)

(assert (=> b!980024 (= lt!435027 (addCommutativeForDiffKeys!599 lt!435029 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29545 _keys!1544) from!1932) lt!435028))))

(declare-fun b!980025 () Bool)

(declare-fun res!655981 () Bool)

(assert (=> b!980025 (=> (not res!655981) (not e!552436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980025 (= res!655981 (validKeyInArray!0 (select (arr!29545 _keys!1544) from!1932)))))

(declare-fun b!980026 () Bool)

(declare-fun e!552440 () Bool)

(assert (=> b!980026 (= e!552440 tp_is_empty!22687)))

(declare-fun b!980027 () Bool)

(assert (=> b!980027 (= e!552438 tp_is_empty!22687)))

(declare-fun b!980028 () Bool)

(declare-fun res!655979 () Bool)

(assert (=> b!980028 (=> (not res!655979) (not e!552436))))

(assert (=> b!980028 (= res!655979 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30025 _keys!1544))))))

(declare-fun b!980029 () Bool)

(assert (=> b!980029 (= e!552435 (and e!552440 mapRes!36059))))

(declare-fun condMapEmpty!36059 () Bool)

(declare-fun mapDefault!36059 () ValueCell!10862)

