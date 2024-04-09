; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83928 () Bool)

(assert start!83928)

(declare-fun b_free!19709 () Bool)

(declare-fun b_next!19709 () Bool)

(assert (=> start!83928 (= b_free!19709 (not b_next!19709))))

(declare-fun tp!68570 () Bool)

(declare-fun b_and!31525 () Bool)

(assert (=> start!83928 (= tp!68570 b_and!31525)))

(declare-fun b!980301 () Bool)

(declare-fun e!552581 () Bool)

(declare-fun e!552584 () Bool)

(assert (=> b!980301 (= e!552581 (not e!552584))))

(declare-fun res!656173 () Bool)

(assert (=> b!980301 (=> res!656173 e!552584)))

(declare-datatypes ((array!61413 0))(
  ( (array!61414 (arr!29560 (Array (_ BitVec 32) (_ BitVec 64))) (size!30040 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61413)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!980301 (= res!656173 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29560 _keys!1544) from!1932)))))

(declare-datatypes ((V!35253 0))(
  ( (V!35254 (val!11402 Int)) )
))
(declare-datatypes ((tuple2!14734 0))(
  ( (tuple2!14735 (_1!7377 (_ BitVec 64)) (_2!7377 V!35253)) )
))
(declare-fun lt!435267 () tuple2!14734)

(declare-fun lt!435268 () tuple2!14734)

(declare-datatypes ((List!20624 0))(
  ( (Nil!20621) (Cons!20620 (h!21782 tuple2!14734) (t!29297 List!20624)) )
))
(declare-datatypes ((ListLongMap!13445 0))(
  ( (ListLongMap!13446 (toList!6738 List!20624)) )
))
(declare-fun lt!435270 () ListLongMap!13445)

(declare-fun lt!435271 () ListLongMap!13445)

(declare-fun +!2944 (ListLongMap!13445 tuple2!14734) ListLongMap!13445)

(assert (=> b!980301 (= (+!2944 lt!435271 lt!435268) (+!2944 lt!435270 lt!435267))))

(declare-fun lt!435273 () ListLongMap!13445)

(assert (=> b!980301 (= lt!435270 (+!2944 lt!435273 lt!435268))))

(declare-fun lt!435274 () V!35253)

(assert (=> b!980301 (= lt!435268 (tuple2!14735 (select (arr!29560 _keys!1544) from!1932) lt!435274))))

(assert (=> b!980301 (= lt!435271 (+!2944 lt!435273 lt!435267))))

(declare-fun minValue!1220 () V!35253)

(assert (=> b!980301 (= lt!435267 (tuple2!14735 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32563 0))(
  ( (Unit!32564) )
))
(declare-fun lt!435269 () Unit!32563)

(declare-fun addCommutativeForDiffKeys!606 (ListLongMap!13445 (_ BitVec 64) V!35253 (_ BitVec 64) V!35253) Unit!32563)

(assert (=> b!980301 (= lt!435269 (addCommutativeForDiffKeys!606 lt!435273 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29560 _keys!1544) from!1932) lt!435274))))

(declare-datatypes ((ValueCell!10870 0))(
  ( (ValueCellFull!10870 (v!13964 V!35253)) (EmptyCell!10870) )
))
(declare-datatypes ((array!61415 0))(
  ( (array!61416 (arr!29561 (Array (_ BitVec 32) ValueCell!10870)) (size!30041 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61415)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15344 (ValueCell!10870 V!35253) V!35253)

(declare-fun dynLambda!1777 (Int (_ BitVec 64)) V!35253)

(assert (=> b!980301 (= lt!435274 (get!15344 (select (arr!29561 _values!1278) from!1932) (dynLambda!1777 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!435266 () ListLongMap!13445)

(declare-fun lt!435265 () tuple2!14734)

(assert (=> b!980301 (= lt!435273 (+!2944 lt!435266 lt!435265))))

(declare-fun zeroValue!1220 () V!35253)

(assert (=> b!980301 (= lt!435265 (tuple2!14735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3402 (array!61413 array!61415 (_ BitVec 32) (_ BitVec 32) V!35253 V!35253 (_ BitVec 32) Int) ListLongMap!13445)

(assert (=> b!980301 (= lt!435266 (getCurrentListMapNoExtraKeys!3402 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!980302 () Bool)

(declare-fun res!656177 () Bool)

(assert (=> b!980302 (=> (not res!656177) (not e!552581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61413 (_ BitVec 32)) Bool)

(assert (=> b!980302 (= res!656177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980303 () Bool)

(declare-fun res!656171 () Bool)

(assert (=> b!980303 (=> (not res!656171) (not e!552581))))

(declare-datatypes ((List!20625 0))(
  ( (Nil!20622) (Cons!20621 (h!21783 (_ BitVec 64)) (t!29298 List!20625)) )
))
(declare-fun arrayNoDuplicates!0 (array!61413 (_ BitVec 32) List!20625) Bool)

(assert (=> b!980303 (= res!656171 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20622))))

(declare-fun b!980304 () Bool)

(declare-fun res!656175 () Bool)

(assert (=> b!980304 (=> (not res!656175) (not e!552581))))

(assert (=> b!980304 (= res!656175 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980305 () Bool)

(declare-fun res!656172 () Bool)

(assert (=> b!980305 (=> (not res!656172) (not e!552581))))

(assert (=> b!980305 (= res!656172 (and (= (size!30041 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30040 _keys!1544) (size!30041 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!656176 () Bool)

(assert (=> start!83928 (=> (not res!656176) (not e!552581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83928 (= res!656176 (validMask!0 mask!1948))))

(assert (=> start!83928 e!552581))

(assert (=> start!83928 true))

(declare-fun tp_is_empty!22703 () Bool)

(assert (=> start!83928 tp_is_empty!22703))

(declare-fun e!552582 () Bool)

(declare-fun array_inv!22741 (array!61415) Bool)

(assert (=> start!83928 (and (array_inv!22741 _values!1278) e!552582)))

(assert (=> start!83928 tp!68570))

(declare-fun array_inv!22742 (array!61413) Bool)

(assert (=> start!83928 (array_inv!22742 _keys!1544)))

(declare-fun b!980306 () Bool)

(declare-fun e!552580 () Bool)

(declare-fun mapRes!36083 () Bool)

(assert (=> b!980306 (= e!552582 (and e!552580 mapRes!36083))))

(declare-fun condMapEmpty!36083 () Bool)

(declare-fun mapDefault!36083 () ValueCell!10870)

