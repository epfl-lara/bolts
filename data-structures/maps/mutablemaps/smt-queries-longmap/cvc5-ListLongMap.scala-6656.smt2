; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83936 () Bool)

(assert start!83936)

(declare-fun b_free!19717 () Bool)

(declare-fun b_next!19717 () Bool)

(assert (=> start!83936 (= b_free!19717 (not b_next!19717))))

(declare-fun tp!68593 () Bool)

(declare-fun b_and!31541 () Bool)

(assert (=> start!83936 (= tp!68593 b_and!31541)))

(declare-fun b!980441 () Bool)

(declare-fun res!656271 () Bool)

(declare-fun e!552652 () Bool)

(assert (=> b!980441 (=> (not res!656271) (not e!552652))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61429 0))(
  ( (array!61430 (arr!29568 (Array (_ BitVec 32) (_ BitVec 64))) (size!30048 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61429)

(assert (=> b!980441 (= res!656271 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30048 _keys!1544))))))

(declare-fun mapNonEmpty!36095 () Bool)

(declare-fun mapRes!36095 () Bool)

(declare-fun tp!68594 () Bool)

(declare-fun e!552654 () Bool)

(assert (=> mapNonEmpty!36095 (= mapRes!36095 (and tp!68594 e!552654))))

(declare-fun mapKey!36095 () (_ BitVec 32))

(declare-datatypes ((V!35265 0))(
  ( (V!35266 (val!11406 Int)) )
))
(declare-datatypes ((ValueCell!10874 0))(
  ( (ValueCellFull!10874 (v!13968 V!35265)) (EmptyCell!10874) )
))
(declare-datatypes ((array!61431 0))(
  ( (array!61432 (arr!29569 (Array (_ BitVec 32) ValueCell!10874)) (size!30049 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61431)

(declare-fun mapRest!36095 () (Array (_ BitVec 32) ValueCell!10874))

(declare-fun mapValue!36095 () ValueCell!10874)

(assert (=> mapNonEmpty!36095 (= (arr!29569 _values!1278) (store mapRest!36095 mapKey!36095 mapValue!36095))))

(declare-fun b!980442 () Bool)

(declare-fun res!656274 () Bool)

(assert (=> b!980442 (=> (not res!656274) (not e!552652))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980442 (= res!656274 (and (= (size!30049 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30048 _keys!1544) (size!30049 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980443 () Bool)

(declare-fun e!552656 () Bool)

(declare-fun tp_is_empty!22711 () Bool)

(assert (=> b!980443 (= e!552656 tp_is_empty!22711)))

(declare-fun b!980444 () Bool)

(declare-fun e!552655 () Bool)

(assert (=> b!980444 (= e!552655 true)))

(declare-datatypes ((tuple2!14742 0))(
  ( (tuple2!14743 (_1!7381 (_ BitVec 64)) (_2!7381 V!35265)) )
))
(declare-datatypes ((List!20632 0))(
  ( (Nil!20629) (Cons!20628 (h!21790 tuple2!14742) (t!29313 List!20632)) )
))
(declare-datatypes ((ListLongMap!13453 0))(
  ( (ListLongMap!13454 (toList!6742 List!20632)) )
))
(declare-fun lt!435394 () ListLongMap!13453)

(declare-fun lt!435390 () tuple2!14742)

(declare-fun lt!435391 () ListLongMap!13453)

(declare-fun lt!435387 () tuple2!14742)

(declare-fun +!2948 (ListLongMap!13453 tuple2!14742) ListLongMap!13453)

(assert (=> b!980444 (= lt!435391 (+!2948 (+!2948 lt!435394 lt!435387) lt!435390))))

(declare-fun lt!435385 () V!35265)

(declare-datatypes ((Unit!32571 0))(
  ( (Unit!32572) )
))
(declare-fun lt!435392 () Unit!32571)

(declare-fun zeroValue!1220 () V!35265)

(declare-fun addCommutativeForDiffKeys!610 (ListLongMap!13453 (_ BitVec 64) V!35265 (_ BitVec 64) V!35265) Unit!32571)

(assert (=> b!980444 (= lt!435392 (addCommutativeForDiffKeys!610 lt!435394 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29568 _keys!1544) from!1932) lt!435385))))

(declare-fun b!980445 () Bool)

(declare-fun res!656268 () Bool)

(assert (=> b!980445 (=> (not res!656268) (not e!552652))))

(assert (=> b!980445 (= res!656268 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980446 () Bool)

(declare-fun res!656269 () Bool)

(assert (=> b!980446 (=> (not res!656269) (not e!552652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61429 (_ BitVec 32)) Bool)

(assert (=> b!980446 (= res!656269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36095 () Bool)

(assert (=> mapIsEmpty!36095 mapRes!36095))

(declare-fun b!980447 () Bool)

(declare-fun res!656267 () Bool)

(assert (=> b!980447 (=> (not res!656267) (not e!552652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980447 (= res!656267 (validKeyInArray!0 (select (arr!29568 _keys!1544) from!1932)))))

(declare-fun b!980448 () Bool)

(declare-fun res!656273 () Bool)

(assert (=> b!980448 (=> (not res!656273) (not e!552652))))

(declare-datatypes ((List!20633 0))(
  ( (Nil!20630) (Cons!20629 (h!21791 (_ BitVec 64)) (t!29314 List!20633)) )
))
(declare-fun arrayNoDuplicates!0 (array!61429 (_ BitVec 32) List!20633) Bool)

(assert (=> b!980448 (= res!656273 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20630))))

(declare-fun b!980449 () Bool)

(assert (=> b!980449 (= e!552652 (not e!552655))))

(declare-fun res!656272 () Bool)

(assert (=> b!980449 (=> res!656272 e!552655)))

(assert (=> b!980449 (= res!656272 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29568 _keys!1544) from!1932)))))

(declare-fun lt!435393 () ListLongMap!13453)

(declare-fun lt!435388 () tuple2!14742)

(assert (=> b!980449 (= (+!2948 lt!435393 lt!435387) (+!2948 lt!435391 lt!435388))))

(declare-fun lt!435386 () ListLongMap!13453)

(assert (=> b!980449 (= lt!435391 (+!2948 lt!435386 lt!435387))))

(assert (=> b!980449 (= lt!435387 (tuple2!14743 (select (arr!29568 _keys!1544) from!1932) lt!435385))))

(assert (=> b!980449 (= lt!435393 (+!2948 lt!435386 lt!435388))))

(declare-fun minValue!1220 () V!35265)

(assert (=> b!980449 (= lt!435388 (tuple2!14743 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!435389 () Unit!32571)

(assert (=> b!980449 (= lt!435389 (addCommutativeForDiffKeys!610 lt!435386 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29568 _keys!1544) from!1932) lt!435385))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15351 (ValueCell!10874 V!35265) V!35265)

(declare-fun dynLambda!1780 (Int (_ BitVec 64)) V!35265)

(assert (=> b!980449 (= lt!435385 (get!15351 (select (arr!29569 _values!1278) from!1932) (dynLambda!1780 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!980449 (= lt!435386 (+!2948 lt!435394 lt!435390))))

(assert (=> b!980449 (= lt!435390 (tuple2!14743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3405 (array!61429 array!61431 (_ BitVec 32) (_ BitVec 32) V!35265 V!35265 (_ BitVec 32) Int) ListLongMap!13453)

(assert (=> b!980449 (= lt!435394 (getCurrentListMapNoExtraKeys!3405 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!980450 () Bool)

(assert (=> b!980450 (= e!552654 tp_is_empty!22711)))

(declare-fun res!656270 () Bool)

(assert (=> start!83936 (=> (not res!656270) (not e!552652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83936 (= res!656270 (validMask!0 mask!1948))))

(assert (=> start!83936 e!552652))

(assert (=> start!83936 true))

(assert (=> start!83936 tp_is_empty!22711))

(declare-fun e!552651 () Bool)

(declare-fun array_inv!22747 (array!61431) Bool)

(assert (=> start!83936 (and (array_inv!22747 _values!1278) e!552651)))

(assert (=> start!83936 tp!68593))

(declare-fun array_inv!22748 (array!61429) Bool)

(assert (=> start!83936 (array_inv!22748 _keys!1544)))

(declare-fun b!980451 () Bool)

(assert (=> b!980451 (= e!552651 (and e!552656 mapRes!36095))))

(declare-fun condMapEmpty!36095 () Bool)

(declare-fun mapDefault!36095 () ValueCell!10874)

