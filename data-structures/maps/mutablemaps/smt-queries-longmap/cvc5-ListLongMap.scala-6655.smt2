; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83930 () Bool)

(assert start!83930)

(declare-fun b_free!19711 () Bool)

(declare-fun b_next!19711 () Bool)

(assert (=> start!83930 (= b_free!19711 (not b_next!19711))))

(declare-fun tp!68575 () Bool)

(declare-fun b_and!31529 () Bool)

(assert (=> start!83930 (= tp!68575 b_and!31529)))

(declare-fun b!980336 () Bool)

(declare-fun e!552600 () Bool)

(declare-fun e!552597 () Bool)

(assert (=> b!980336 (= e!552600 (not e!552597))))

(declare-fun res!656195 () Bool)

(assert (=> b!980336 (=> res!656195 e!552597)))

(declare-datatypes ((array!61417 0))(
  ( (array!61418 (arr!29562 (Array (_ BitVec 32) (_ BitVec 64))) (size!30042 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61417)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!980336 (= res!656195 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29562 _keys!1544) from!1932)))))

(declare-datatypes ((V!35257 0))(
  ( (V!35258 (val!11403 Int)) )
))
(declare-datatypes ((tuple2!14736 0))(
  ( (tuple2!14737 (_1!7378 (_ BitVec 64)) (_2!7378 V!35257)) )
))
(declare-fun lt!435303 () tuple2!14736)

(declare-datatypes ((List!20626 0))(
  ( (Nil!20623) (Cons!20622 (h!21784 tuple2!14736) (t!29301 List!20626)) )
))
(declare-datatypes ((ListLongMap!13447 0))(
  ( (ListLongMap!13448 (toList!6739 List!20626)) )
))
(declare-fun lt!435297 () ListLongMap!13447)

(declare-fun lt!435298 () tuple2!14736)

(declare-fun lt!435299 () ListLongMap!13447)

(declare-fun +!2945 (ListLongMap!13447 tuple2!14736) ListLongMap!13447)

(assert (=> b!980336 (= (+!2945 lt!435299 lt!435298) (+!2945 lt!435297 lt!435303))))

(declare-fun lt!435302 () ListLongMap!13447)

(assert (=> b!980336 (= lt!435297 (+!2945 lt!435302 lt!435298))))

(declare-fun lt!435296 () V!35257)

(assert (=> b!980336 (= lt!435298 (tuple2!14737 (select (arr!29562 _keys!1544) from!1932) lt!435296))))

(assert (=> b!980336 (= lt!435299 (+!2945 lt!435302 lt!435303))))

(declare-fun minValue!1220 () V!35257)

(assert (=> b!980336 (= lt!435303 (tuple2!14737 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32565 0))(
  ( (Unit!32566) )
))
(declare-fun lt!435304 () Unit!32565)

(declare-fun addCommutativeForDiffKeys!607 (ListLongMap!13447 (_ BitVec 64) V!35257 (_ BitVec 64) V!35257) Unit!32565)

(assert (=> b!980336 (= lt!435304 (addCommutativeForDiffKeys!607 lt!435302 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29562 _keys!1544) from!1932) lt!435296))))

(declare-datatypes ((ValueCell!10871 0))(
  ( (ValueCellFull!10871 (v!13965 V!35257)) (EmptyCell!10871) )
))
(declare-datatypes ((array!61419 0))(
  ( (array!61420 (arr!29563 (Array (_ BitVec 32) ValueCell!10871)) (size!30043 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61419)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15347 (ValueCell!10871 V!35257) V!35257)

(declare-fun dynLambda!1778 (Int (_ BitVec 64)) V!35257)

(assert (=> b!980336 (= lt!435296 (get!15347 (select (arr!29563 _values!1278) from!1932) (dynLambda!1778 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!435300 () ListLongMap!13447)

(declare-fun lt!435301 () tuple2!14736)

(assert (=> b!980336 (= lt!435302 (+!2945 lt!435300 lt!435301))))

(declare-fun zeroValue!1220 () V!35257)

(assert (=> b!980336 (= lt!435301 (tuple2!14737 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3403 (array!61417 array!61419 (_ BitVec 32) (_ BitVec 32) V!35257 V!35257 (_ BitVec 32) Int) ListLongMap!13447)

(assert (=> b!980336 (= lt!435300 (getCurrentListMapNoExtraKeys!3403 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!980337 () Bool)

(declare-fun e!552599 () Bool)

(declare-fun tp_is_empty!22705 () Bool)

(assert (=> b!980337 (= e!552599 tp_is_empty!22705)))

(declare-fun mapNonEmpty!36086 () Bool)

(declare-fun mapRes!36086 () Bool)

(declare-fun tp!68576 () Bool)

(declare-fun e!552602 () Bool)

(assert (=> mapNonEmpty!36086 (= mapRes!36086 (and tp!68576 e!552602))))

(declare-fun mapRest!36086 () (Array (_ BitVec 32) ValueCell!10871))

(declare-fun mapKey!36086 () (_ BitVec 32))

(declare-fun mapValue!36086 () ValueCell!10871)

(assert (=> mapNonEmpty!36086 (= (arr!29563 _values!1278) (store mapRest!36086 mapKey!36086 mapValue!36086))))

(declare-fun b!980338 () Bool)

(declare-fun res!656197 () Bool)

(assert (=> b!980338 (=> (not res!656197) (not e!552600))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980338 (= res!656197 (validKeyInArray!0 (select (arr!29562 _keys!1544) from!1932)))))

(declare-fun b!980339 () Bool)

(declare-fun res!656201 () Bool)

(assert (=> b!980339 (=> (not res!656201) (not e!552600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61417 (_ BitVec 32)) Bool)

(assert (=> b!980339 (= res!656201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36086 () Bool)

(assert (=> mapIsEmpty!36086 mapRes!36086))

(declare-fun b!980340 () Bool)

(declare-fun res!656198 () Bool)

(assert (=> b!980340 (=> (not res!656198) (not e!552600))))

(declare-datatypes ((List!20627 0))(
  ( (Nil!20624) (Cons!20623 (h!21785 (_ BitVec 64)) (t!29302 List!20627)) )
))
(declare-fun arrayNoDuplicates!0 (array!61417 (_ BitVec 32) List!20627) Bool)

(assert (=> b!980340 (= res!656198 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20624))))

(declare-fun b!980342 () Bool)

(assert (=> b!980342 (= e!552597 true)))

(assert (=> b!980342 (= lt!435297 (+!2945 (+!2945 lt!435300 lt!435298) lt!435301))))

(declare-fun lt!435295 () Unit!32565)

(assert (=> b!980342 (= lt!435295 (addCommutativeForDiffKeys!607 lt!435300 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29562 _keys!1544) from!1932) lt!435296))))

(declare-fun b!980343 () Bool)

(declare-fun res!656202 () Bool)

(assert (=> b!980343 (=> (not res!656202) (not e!552600))))

(assert (=> b!980343 (= res!656202 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980344 () Bool)

(declare-fun res!656200 () Bool)

(assert (=> b!980344 (=> (not res!656200) (not e!552600))))

(assert (=> b!980344 (= res!656200 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30042 _keys!1544))))))

(declare-fun b!980345 () Bool)

(declare-fun res!656199 () Bool)

(assert (=> b!980345 (=> (not res!656199) (not e!552600))))

(assert (=> b!980345 (= res!656199 (and (= (size!30043 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30042 _keys!1544) (size!30043 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980346 () Bool)

(assert (=> b!980346 (= e!552602 tp_is_empty!22705)))

(declare-fun res!656196 () Bool)

(assert (=> start!83930 (=> (not res!656196) (not e!552600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83930 (= res!656196 (validMask!0 mask!1948))))

(assert (=> start!83930 e!552600))

(assert (=> start!83930 true))

(assert (=> start!83930 tp_is_empty!22705))

(declare-fun e!552598 () Bool)

(declare-fun array_inv!22743 (array!61419) Bool)

(assert (=> start!83930 (and (array_inv!22743 _values!1278) e!552598)))

(assert (=> start!83930 tp!68575))

(declare-fun array_inv!22744 (array!61417) Bool)

(assert (=> start!83930 (array_inv!22744 _keys!1544)))

(declare-fun b!980341 () Bool)

(assert (=> b!980341 (= e!552598 (and e!552599 mapRes!36086))))

(declare-fun condMapEmpty!36086 () Bool)

(declare-fun mapDefault!36086 () ValueCell!10871)

