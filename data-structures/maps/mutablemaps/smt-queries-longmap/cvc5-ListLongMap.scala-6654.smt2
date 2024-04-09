; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83924 () Bool)

(assert start!83924)

(declare-fun b_free!19705 () Bool)

(declare-fun b_next!19705 () Bool)

(assert (=> start!83924 (= b_free!19705 (not b_next!19705))))

(declare-fun tp!68558 () Bool)

(declare-fun b_and!31517 () Bool)

(assert (=> start!83924 (= tp!68558 b_and!31517)))

(declare-fun b!980231 () Bool)

(declare-fun res!656126 () Bool)

(declare-fun e!552547 () Bool)

(assert (=> b!980231 (=> (not res!656126) (not e!552547))))

(declare-datatypes ((array!61405 0))(
  ( (array!61406 (arr!29556 (Array (_ BitVec 32) (_ BitVec 64))) (size!30036 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61405)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980231 (= res!656126 (validKeyInArray!0 (select (arr!29556 _keys!1544) from!1932)))))

(declare-fun b!980232 () Bool)

(declare-fun e!552546 () Bool)

(assert (=> b!980232 (= e!552547 (not e!552546))))

(declare-fun res!656124 () Bool)

(assert (=> b!980232 (=> res!656124 e!552546)))

(assert (=> b!980232 (= res!656124 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29556 _keys!1544) from!1932)))))

(declare-datatypes ((V!35249 0))(
  ( (V!35250 (val!11400 Int)) )
))
(declare-datatypes ((tuple2!14730 0))(
  ( (tuple2!14731 (_1!7375 (_ BitVec 64)) (_2!7375 V!35249)) )
))
(declare-fun lt!435211 () tuple2!14730)

(declare-fun lt!435208 () tuple2!14730)

(declare-datatypes ((List!20621 0))(
  ( (Nil!20618) (Cons!20617 (h!21779 tuple2!14730) (t!29290 List!20621)) )
))
(declare-datatypes ((ListLongMap!13441 0))(
  ( (ListLongMap!13442 (toList!6736 List!20621)) )
))
(declare-fun lt!435206 () ListLongMap!13441)

(declare-fun lt!435207 () ListLongMap!13441)

(declare-fun +!2942 (ListLongMap!13441 tuple2!14730) ListLongMap!13441)

(assert (=> b!980232 (= (+!2942 lt!435207 lt!435211) (+!2942 lt!435206 lt!435208))))

(declare-fun lt!435212 () ListLongMap!13441)

(assert (=> b!980232 (= lt!435206 (+!2942 lt!435212 lt!435211))))

(declare-fun lt!435214 () V!35249)

(assert (=> b!980232 (= lt!435211 (tuple2!14731 (select (arr!29556 _keys!1544) from!1932) lt!435214))))

(assert (=> b!980232 (= lt!435207 (+!2942 lt!435212 lt!435208))))

(declare-fun minValue!1220 () V!35249)

(assert (=> b!980232 (= lt!435208 (tuple2!14731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32559 0))(
  ( (Unit!32560) )
))
(declare-fun lt!435210 () Unit!32559)

(declare-fun addCommutativeForDiffKeys!604 (ListLongMap!13441 (_ BitVec 64) V!35249 (_ BitVec 64) V!35249) Unit!32559)

(assert (=> b!980232 (= lt!435210 (addCommutativeForDiffKeys!604 lt!435212 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29556 _keys!1544) from!1932) lt!435214))))

(declare-datatypes ((ValueCell!10868 0))(
  ( (ValueCellFull!10868 (v!13962 V!35249)) (EmptyCell!10868) )
))
(declare-datatypes ((array!61407 0))(
  ( (array!61408 (arr!29557 (Array (_ BitVec 32) ValueCell!10868)) (size!30037 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61407)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15342 (ValueCell!10868 V!35249) V!35249)

(declare-fun dynLambda!1775 (Int (_ BitVec 64)) V!35249)

(assert (=> b!980232 (= lt!435214 (get!15342 (select (arr!29557 _values!1278) from!1932) (dynLambda!1775 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!435209 () ListLongMap!13441)

(declare-fun lt!435205 () tuple2!14730)

(assert (=> b!980232 (= lt!435212 (+!2942 lt!435209 lt!435205))))

(declare-fun zeroValue!1220 () V!35249)

(assert (=> b!980232 (= lt!435205 (tuple2!14731 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3400 (array!61405 array!61407 (_ BitVec 32) (_ BitVec 32) V!35249 V!35249 (_ BitVec 32) Int) ListLongMap!13441)

(assert (=> b!980232 (= lt!435209 (getCurrentListMapNoExtraKeys!3400 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!980233 () Bool)

(assert (=> b!980233 (= e!552546 true)))

(assert (=> b!980233 (= lt!435206 (+!2942 (+!2942 lt!435209 lt!435211) lt!435205))))

(declare-fun lt!435213 () Unit!32559)

(assert (=> b!980233 (= lt!435213 (addCommutativeForDiffKeys!604 lt!435209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29556 _keys!1544) from!1932) lt!435214))))

(declare-fun b!980234 () Bool)

(declare-fun res!656130 () Bool)

(assert (=> b!980234 (=> (not res!656130) (not e!552547))))

(assert (=> b!980234 (= res!656130 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!980235 () Bool)

(declare-fun e!552545 () Bool)

(declare-fun tp_is_empty!22699 () Bool)

(assert (=> b!980235 (= e!552545 tp_is_empty!22699)))

(declare-fun res!656128 () Bool)

(assert (=> start!83924 (=> (not res!656128) (not e!552547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83924 (= res!656128 (validMask!0 mask!1948))))

(assert (=> start!83924 e!552547))

(assert (=> start!83924 true))

(assert (=> start!83924 tp_is_empty!22699))

(declare-fun e!552543 () Bool)

(declare-fun array_inv!22737 (array!61407) Bool)

(assert (=> start!83924 (and (array_inv!22737 _values!1278) e!552543)))

(assert (=> start!83924 tp!68558))

(declare-fun array_inv!22738 (array!61405) Bool)

(assert (=> start!83924 (array_inv!22738 _keys!1544)))

(declare-fun b!980236 () Bool)

(declare-fun res!656125 () Bool)

(assert (=> b!980236 (=> (not res!656125) (not e!552547))))

(assert (=> b!980236 (= res!656125 (and (= (size!30037 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30036 _keys!1544) (size!30037 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980237 () Bool)

(declare-fun mapRes!36077 () Bool)

(assert (=> b!980237 (= e!552543 (and e!552545 mapRes!36077))))

(declare-fun condMapEmpty!36077 () Bool)

(declare-fun mapDefault!36077 () ValueCell!10868)

