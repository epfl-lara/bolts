; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83916 () Bool)

(assert start!83916)

(declare-fun b_free!19697 () Bool)

(declare-fun b_next!19697 () Bool)

(assert (=> start!83916 (= b_free!19697 (not b_next!19697))))

(declare-fun tp!68534 () Bool)

(declare-fun b_and!31501 () Bool)

(assert (=> start!83916 (= tp!68534 b_and!31501)))

(declare-fun b!980091 () Bool)

(declare-fun res!656031 () Bool)

(declare-fun e!552476 () Bool)

(assert (=> b!980091 (=> (not res!656031) (not e!552476))))

(declare-datatypes ((array!61391 0))(
  ( (array!61392 (arr!29549 (Array (_ BitVec 32) (_ BitVec 64))) (size!30029 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61391)

(declare-datatypes ((List!20615 0))(
  ( (Nil!20612) (Cons!20611 (h!21773 (_ BitVec 64)) (t!29276 List!20615)) )
))
(declare-fun arrayNoDuplicates!0 (array!61391 (_ BitVec 32) List!20615) Bool)

(assert (=> b!980091 (= res!656031 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20612))))

(declare-fun b!980092 () Bool)

(declare-fun e!552471 () Bool)

(declare-fun tp_is_empty!22691 () Bool)

(assert (=> b!980092 (= e!552471 tp_is_empty!22691)))

(declare-fun b!980093 () Bool)

(declare-fun e!552474 () Bool)

(assert (=> b!980093 (= e!552476 (not e!552474))))

(declare-fun res!656033 () Bool)

(assert (=> b!980093 (=> res!656033 e!552474)))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!980093 (= res!656033 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29549 _keys!1544) from!1932)))))

(declare-datatypes ((V!35237 0))(
  ( (V!35238 (val!11396 Int)) )
))
(declare-datatypes ((tuple2!14724 0))(
  ( (tuple2!14725 (_1!7372 (_ BitVec 64)) (_2!7372 V!35237)) )
))
(declare-fun lt!435090 () tuple2!14724)

(declare-fun lt!435094 () tuple2!14724)

(declare-datatypes ((List!20616 0))(
  ( (Nil!20613) (Cons!20612 (h!21774 tuple2!14724) (t!29277 List!20616)) )
))
(declare-datatypes ((ListLongMap!13435 0))(
  ( (ListLongMap!13436 (toList!6733 List!20616)) )
))
(declare-fun lt!435092 () ListLongMap!13435)

(declare-fun lt!435087 () ListLongMap!13435)

(declare-fun +!2939 (ListLongMap!13435 tuple2!14724) ListLongMap!13435)

(assert (=> b!980093 (= (+!2939 lt!435092 lt!435090) (+!2939 lt!435087 lt!435094))))

(declare-fun lt!435088 () ListLongMap!13435)

(assert (=> b!980093 (= lt!435087 (+!2939 lt!435088 lt!435090))))

(declare-fun lt!435086 () V!35237)

(assert (=> b!980093 (= lt!435090 (tuple2!14725 (select (arr!29549 _keys!1544) from!1932) lt!435086))))

(assert (=> b!980093 (= lt!435092 (+!2939 lt!435088 lt!435094))))

(declare-fun minValue!1220 () V!35237)

(assert (=> b!980093 (= lt!435094 (tuple2!14725 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32553 0))(
  ( (Unit!32554) )
))
(declare-fun lt!435091 () Unit!32553)

(declare-fun addCommutativeForDiffKeys!601 (ListLongMap!13435 (_ BitVec 64) V!35237 (_ BitVec 64) V!35237) Unit!32553)

(assert (=> b!980093 (= lt!435091 (addCommutativeForDiffKeys!601 lt!435088 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29549 _keys!1544) from!1932) lt!435086))))

(declare-datatypes ((ValueCell!10864 0))(
  ( (ValueCellFull!10864 (v!13958 V!35237)) (EmptyCell!10864) )
))
(declare-datatypes ((array!61393 0))(
  ( (array!61394 (arr!29550 (Array (_ BitVec 32) ValueCell!10864)) (size!30030 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61393)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15336 (ValueCell!10864 V!35237) V!35237)

(declare-fun dynLambda!1773 (Int (_ BitVec 64)) V!35237)

(assert (=> b!980093 (= lt!435086 (get!15336 (select (arr!29550 _values!1278) from!1932) (dynLambda!1773 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!435089 () ListLongMap!13435)

(declare-fun lt!435093 () tuple2!14724)

(assert (=> b!980093 (= lt!435088 (+!2939 lt!435089 lt!435093))))

(declare-fun zeroValue!1220 () V!35237)

(assert (=> b!980093 (= lt!435093 (tuple2!14725 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3398 (array!61391 array!61393 (_ BitVec 32) (_ BitVec 32) V!35237 V!35237 (_ BitVec 32) Int) ListLongMap!13435)

(assert (=> b!980093 (= lt!435089 (getCurrentListMapNoExtraKeys!3398 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!980094 () Bool)

(declare-fun res!656029 () Bool)

(assert (=> b!980094 (=> (not res!656029) (not e!552476))))

(assert (=> b!980094 (= res!656029 (and (= (size!30030 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30029 _keys!1544) (size!30030 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980095 () Bool)

(declare-fun e!552473 () Bool)

(declare-fun e!552475 () Bool)

(declare-fun mapRes!36065 () Bool)

(assert (=> b!980095 (= e!552473 (and e!552475 mapRes!36065))))

(declare-fun condMapEmpty!36065 () Bool)

(declare-fun mapDefault!36065 () ValueCell!10864)

