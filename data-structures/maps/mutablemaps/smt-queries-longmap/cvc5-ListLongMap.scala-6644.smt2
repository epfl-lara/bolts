; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83864 () Bool)

(assert start!83864)

(declare-fun b_free!19645 () Bool)

(declare-fun b_next!19645 () Bool)

(assert (=> start!83864 (= b_free!19645 (not b_next!19645))))

(declare-fun tp!68377 () Bool)

(declare-fun b_and!31397 () Bool)

(assert (=> start!83864 (= tp!68377 b_and!31397)))

(declare-fun b!979181 () Bool)

(declare-fun res!655408 () Bool)

(declare-fun e!552007 () Bool)

(assert (=> b!979181 (=> (not res!655408) (not e!552007))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61291 0))(
  ( (array!61292 (arr!29499 (Array (_ BitVec 32) (_ BitVec 64))) (size!29979 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61291)

(assert (=> b!979181 (= res!655408 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29979 _keys!1544))))))

(declare-fun b!979182 () Bool)

(declare-fun e!552003 () Bool)

(assert (=> b!979182 (= e!552003 true)))

(declare-datatypes ((V!35169 0))(
  ( (V!35170 (val!11370 Int)) )
))
(declare-datatypes ((tuple2!14680 0))(
  ( (tuple2!14681 (_1!7350 (_ BitVec 64)) (_2!7350 V!35169)) )
))
(declare-datatypes ((List!20576 0))(
  ( (Nil!20573) (Cons!20572 (h!21734 tuple2!14680) (t!29185 List!20576)) )
))
(declare-datatypes ((ListLongMap!13391 0))(
  ( (ListLongMap!13392 (toList!6711 List!20576)) )
))
(declare-fun lt!434313 () ListLongMap!13391)

(declare-fun lt!434308 () ListLongMap!13391)

(declare-fun lt!434314 () tuple2!14680)

(declare-fun lt!434311 () tuple2!14680)

(declare-fun +!2917 (ListLongMap!13391 tuple2!14680) ListLongMap!13391)

(assert (=> b!979182 (= lt!434308 (+!2917 (+!2917 lt!434313 lt!434314) lt!434311))))

(declare-fun lt!434310 () V!35169)

(declare-datatypes ((Unit!32509 0))(
  ( (Unit!32510) )
))
(declare-fun lt!434309 () Unit!32509)

(declare-fun zeroValue!1220 () V!35169)

(declare-fun addCommutativeForDiffKeys!579 (ListLongMap!13391 (_ BitVec 64) V!35169 (_ BitVec 64) V!35169) Unit!32509)

(assert (=> b!979182 (= lt!434309 (addCommutativeForDiffKeys!579 lt!434313 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29499 _keys!1544) from!1932) lt!434310))))

(declare-fun mapIsEmpty!35987 () Bool)

(declare-fun mapRes!35987 () Bool)

(assert (=> mapIsEmpty!35987 mapRes!35987))

(declare-fun b!979183 () Bool)

(declare-fun res!655405 () Bool)

(assert (=> b!979183 (=> (not res!655405) (not e!552007))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61291 (_ BitVec 32)) Bool)

(assert (=> b!979183 (= res!655405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979184 () Bool)

(declare-fun res!655403 () Bool)

(assert (=> b!979184 (=> (not res!655403) (not e!552007))))

(declare-datatypes ((List!20577 0))(
  ( (Nil!20574) (Cons!20573 (h!21735 (_ BitVec 64)) (t!29186 List!20577)) )
))
(declare-fun arrayNoDuplicates!0 (array!61291 (_ BitVec 32) List!20577) Bool)

(assert (=> b!979184 (= res!655403 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20574))))

(declare-fun mapNonEmpty!35987 () Bool)

(declare-fun tp!68378 () Bool)

(declare-fun e!552004 () Bool)

(assert (=> mapNonEmpty!35987 (= mapRes!35987 (and tp!68378 e!552004))))

(declare-datatypes ((ValueCell!10838 0))(
  ( (ValueCellFull!10838 (v!13932 V!35169)) (EmptyCell!10838) )
))
(declare-fun mapValue!35987 () ValueCell!10838)

(declare-fun mapKey!35987 () (_ BitVec 32))

(declare-datatypes ((array!61293 0))(
  ( (array!61294 (arr!29500 (Array (_ BitVec 32) ValueCell!10838)) (size!29980 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61293)

(declare-fun mapRest!35987 () (Array (_ BitVec 32) ValueCell!10838))

(assert (=> mapNonEmpty!35987 (= (arr!29500 _values!1278) (store mapRest!35987 mapKey!35987 mapValue!35987))))

(declare-fun b!979185 () Bool)

(declare-fun res!655407 () Bool)

(assert (=> b!979185 (=> (not res!655407) (not e!552007))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979185 (= res!655407 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979186 () Bool)

(declare-fun tp_is_empty!22639 () Bool)

(assert (=> b!979186 (= e!552004 tp_is_empty!22639)))

(declare-fun b!979187 () Bool)

(assert (=> b!979187 (= e!552007 (not e!552003))))

(declare-fun res!655409 () Bool)

(assert (=> b!979187 (=> res!655409 e!552003)))

(assert (=> b!979187 (= res!655409 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29499 _keys!1544) from!1932)))))

(declare-fun lt!434312 () tuple2!14680)

(declare-fun lt!434307 () ListLongMap!13391)

(assert (=> b!979187 (= (+!2917 lt!434307 lt!434314) (+!2917 lt!434308 lt!434312))))

(declare-fun lt!434305 () ListLongMap!13391)

(assert (=> b!979187 (= lt!434308 (+!2917 lt!434305 lt!434314))))

(assert (=> b!979187 (= lt!434314 (tuple2!14681 (select (arr!29499 _keys!1544) from!1932) lt!434310))))

(assert (=> b!979187 (= lt!434307 (+!2917 lt!434305 lt!434312))))

(declare-fun minValue!1220 () V!35169)

(assert (=> b!979187 (= lt!434312 (tuple2!14681 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!434306 () Unit!32509)

(assert (=> b!979187 (= lt!434306 (addCommutativeForDiffKeys!579 lt!434305 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29499 _keys!1544) from!1932) lt!434310))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15300 (ValueCell!10838 V!35169) V!35169)

(declare-fun dynLambda!1753 (Int (_ BitVec 64)) V!35169)

(assert (=> b!979187 (= lt!434310 (get!15300 (select (arr!29500 _values!1278) from!1932) (dynLambda!1753 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!979187 (= lt!434305 (+!2917 lt!434313 lt!434311))))

(assert (=> b!979187 (= lt!434311 (tuple2!14681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3378 (array!61291 array!61293 (_ BitVec 32) (_ BitVec 32) V!35169 V!35169 (_ BitVec 32) Int) ListLongMap!13391)

(assert (=> b!979187 (= lt!434313 (getCurrentListMapNoExtraKeys!3378 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979188 () Bool)

(declare-fun res!655406 () Bool)

(assert (=> b!979188 (=> (not res!655406) (not e!552007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979188 (= res!655406 (validKeyInArray!0 (select (arr!29499 _keys!1544) from!1932)))))

(declare-fun b!979189 () Bool)

(declare-fun e!552006 () Bool)

(assert (=> b!979189 (= e!552006 tp_is_empty!22639)))

(declare-fun b!979190 () Bool)

(declare-fun e!552008 () Bool)

(assert (=> b!979190 (= e!552008 (and e!552006 mapRes!35987))))

(declare-fun condMapEmpty!35987 () Bool)

(declare-fun mapDefault!35987 () ValueCell!10838)

