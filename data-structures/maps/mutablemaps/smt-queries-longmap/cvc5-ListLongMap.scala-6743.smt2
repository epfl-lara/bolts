; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84550 () Bool)

(assert start!84550)

(declare-fun b_free!20017 () Bool)

(declare-fun b_next!20017 () Bool)

(assert (=> start!84550 (= b_free!20017 (not b_next!20017))))

(declare-fun tp!69836 () Bool)

(declare-fun b_and!32129 () Bool)

(assert (=> start!84550 (= tp!69836 b_and!32129)))

(declare-fun b!988432 () Bool)

(declare-fun e!557396 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((V!35961 0))(
  ( (V!35962 (val!11667 Int)) )
))
(declare-datatypes ((ValueCell!11135 0))(
  ( (ValueCellFull!11135 (v!14234 V!35961)) (EmptyCell!11135) )
))
(declare-datatypes ((array!62415 0))(
  ( (array!62416 (arr!30058 (Array (_ BitVec 32) ValueCell!11135)) (size!30538 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62415)

(assert (=> b!988432 (= e!557396 (bvsge from!1932 (size!30538 _values!1278)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35961)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35961)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((array!62417 0))(
  ( (array!62418 (arr!30059 (Array (_ BitVec 32) (_ BitVec 64))) (size!30539 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62417)

(declare-datatypes ((tuple2!14964 0))(
  ( (tuple2!14965 (_1!7492 (_ BitVec 64)) (_2!7492 V!35961)) )
))
(declare-datatypes ((List!20916 0))(
  ( (Nil!20913) (Cons!20912 (h!22074 tuple2!14964) (t!29861 List!20916)) )
))
(declare-datatypes ((ListLongMap!13675 0))(
  ( (ListLongMap!13676 (toList!6853 List!20916)) )
))
(declare-fun lt!438477 () ListLongMap!13675)

(declare-fun getCurrentListMapNoExtraKeys!3503 (array!62417 array!62415 (_ BitVec 32) (_ BitVec 32) V!35961 V!35961 (_ BitVec 32) Int) ListLongMap!13675)

(assert (=> b!988432 (= lt!438477 (getCurrentListMapNoExtraKeys!3503 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988433 () Bool)

(declare-fun res!661216 () Bool)

(assert (=> b!988433 (=> (not res!661216) (not e!557396))))

(assert (=> b!988433 (= res!661216 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30539 _keys!1544))))))

(declare-fun b!988434 () Bool)

(declare-fun e!557397 () Bool)

(declare-fun tp_is_empty!23233 () Bool)

(assert (=> b!988434 (= e!557397 tp_is_empty!23233)))

(declare-fun b!988435 () Bool)

(declare-fun e!557393 () Bool)

(assert (=> b!988435 (= e!557393 tp_is_empty!23233)))

(declare-fun b!988436 () Bool)

(declare-fun res!661212 () Bool)

(assert (=> b!988436 (=> (not res!661212) (not e!557396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62417 (_ BitVec 32)) Bool)

(assert (=> b!988436 (= res!661212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!988437 () Bool)

(declare-fun res!661214 () Bool)

(assert (=> b!988437 (=> (not res!661214) (not e!557396))))

(assert (=> b!988437 (= res!661214 (and (= (size!30538 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30539 _keys!1544) (size!30538 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!988438 () Bool)

(declare-fun e!557395 () Bool)

(declare-fun mapRes!36888 () Bool)

(assert (=> b!988438 (= e!557395 (and e!557397 mapRes!36888))))

(declare-fun condMapEmpty!36888 () Bool)

(declare-fun mapDefault!36888 () ValueCell!11135)

