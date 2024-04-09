; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83876 () Bool)

(assert start!83876)

(declare-fun b_free!19657 () Bool)

(declare-fun b_next!19657 () Bool)

(assert (=> start!83876 (= b_free!19657 (not b_next!19657))))

(declare-fun tp!68413 () Bool)

(declare-fun b_and!31421 () Bool)

(assert (=> start!83876 (= tp!68413 b_and!31421)))

(declare-fun b!979391 () Bool)

(declare-fun res!655554 () Bool)

(declare-fun e!552113 () Bool)

(assert (=> b!979391 (=> (not res!655554) (not e!552113))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61315 0))(
  ( (array!61316 (arr!29511 (Array (_ BitVec 32) (_ BitVec 64))) (size!29991 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61315)

(declare-datatypes ((V!35185 0))(
  ( (V!35186 (val!11376 Int)) )
))
(declare-datatypes ((ValueCell!10844 0))(
  ( (ValueCellFull!10844 (v!13938 V!35185)) (EmptyCell!10844) )
))
(declare-datatypes ((array!61317 0))(
  ( (array!61318 (arr!29512 (Array (_ BitVec 32) ValueCell!10844)) (size!29992 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61317)

(assert (=> b!979391 (= res!655554 (and (= (size!29992 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29991 _keys!1544) (size!29992 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979393 () Bool)

(declare-fun res!655550 () Bool)

(assert (=> b!979393 (=> (not res!655550) (not e!552113))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979393 (= res!655550 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29991 _keys!1544))))))

(declare-fun mapNonEmpty!36005 () Bool)

(declare-fun mapRes!36005 () Bool)

(declare-fun tp!68414 () Bool)

(declare-fun e!552111 () Bool)

(assert (=> mapNonEmpty!36005 (= mapRes!36005 (and tp!68414 e!552111))))

(declare-fun mapKey!36005 () (_ BitVec 32))

(declare-fun mapRest!36005 () (Array (_ BitVec 32) ValueCell!10844))

(declare-fun mapValue!36005 () ValueCell!10844)

(assert (=> mapNonEmpty!36005 (= (arr!29512 _values!1278) (store mapRest!36005 mapKey!36005 mapValue!36005))))

(declare-fun b!979394 () Bool)

(declare-fun e!552116 () Bool)

(assert (=> b!979394 (= e!552116 true)))

(declare-datatypes ((tuple2!14690 0))(
  ( (tuple2!14691 (_1!7355 (_ BitVec 64)) (_2!7355 V!35185)) )
))
(declare-datatypes ((List!20585 0))(
  ( (Nil!20582) (Cons!20581 (h!21743 tuple2!14690) (t!29206 List!20585)) )
))
(declare-datatypes ((ListLongMap!13401 0))(
  ( (ListLongMap!13402 (toList!6716 List!20585)) )
))
(declare-fun lt!434490 () ListLongMap!13401)

(declare-fun lt!434487 () tuple2!14690)

(declare-fun lt!434488 () tuple2!14690)

(declare-fun lt!434485 () ListLongMap!13401)

(declare-fun +!2922 (ListLongMap!13401 tuple2!14690) ListLongMap!13401)

(assert (=> b!979394 (= lt!434485 (+!2922 (+!2922 lt!434490 lt!434488) lt!434487))))

(declare-fun zeroValue!1220 () V!35185)

(declare-datatypes ((Unit!32519 0))(
  ( (Unit!32520) )
))
(declare-fun lt!434489 () Unit!32519)

(declare-fun lt!434492 () V!35185)

(declare-fun addCommutativeForDiffKeys!584 (ListLongMap!13401 (_ BitVec 64) V!35185 (_ BitVec 64) V!35185) Unit!32519)

(assert (=> b!979394 (= lt!434489 (addCommutativeForDiffKeys!584 lt!434490 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29511 _keys!1544) from!1932) lt!434492))))

(declare-fun b!979395 () Bool)

(declare-fun res!655551 () Bool)

(assert (=> b!979395 (=> (not res!655551) (not e!552113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979395 (= res!655551 (validKeyInArray!0 (select (arr!29511 _keys!1544) from!1932)))))

(declare-fun b!979396 () Bool)

(declare-fun e!552114 () Bool)

(declare-fun e!552112 () Bool)

(assert (=> b!979396 (= e!552114 (and e!552112 mapRes!36005))))

(declare-fun condMapEmpty!36005 () Bool)

(declare-fun mapDefault!36005 () ValueCell!10844)

