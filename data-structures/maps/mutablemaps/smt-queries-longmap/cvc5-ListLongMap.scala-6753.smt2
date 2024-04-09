; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84694 () Bool)

(assert start!84694)

(declare-fun b_free!20077 () Bool)

(declare-fun b_next!20077 () Bool)

(assert (=> start!84694 (= b_free!20077 (not b_next!20077))))

(declare-fun tp!70027 () Bool)

(declare-fun b_and!32243 () Bool)

(assert (=> start!84694 (= tp!70027 b_and!32243)))

(declare-fun b!990050 () Bool)

(declare-fun res!662156 () Bool)

(declare-fun e!558288 () Bool)

(assert (=> b!990050 (=> (not res!662156) (not e!558288))))

(declare-datatypes ((array!62535 0))(
  ( (array!62536 (arr!30115 (Array (_ BitVec 32) (_ BitVec 64))) (size!30595 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62535)

(declare-datatypes ((List!20958 0))(
  ( (Nil!20955) (Cons!20954 (h!22116 (_ BitVec 64)) (t!29939 List!20958)) )
))
(declare-fun arrayNoDuplicates!0 (array!62535 (_ BitVec 32) List!20958) Bool)

(assert (=> b!990050 (= res!662156 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20955))))

(declare-fun b!990051 () Bool)

(declare-fun e!558289 () Bool)

(assert (=> b!990051 (= e!558288 e!558289)))

(declare-fun res!662157 () Bool)

(assert (=> b!990051 (=> (not res!662157) (not e!558289))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!990051 (= res!662157 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30115 _keys!1544) from!1932))))))

(declare-datatypes ((V!36041 0))(
  ( (V!36042 (val!11697 Int)) )
))
(declare-datatypes ((ValueCell!11165 0))(
  ( (ValueCellFull!11165 (v!14267 V!36041)) (EmptyCell!11165) )
))
(declare-datatypes ((array!62537 0))(
  ( (array!62538 (arr!30116 (Array (_ BitVec 32) ValueCell!11165)) (size!30596 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62537)

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!439219 () V!36041)

(declare-fun get!15652 (ValueCell!11165 V!36041) V!36041)

(declare-fun dynLambda!1879 (Int (_ BitVec 64)) V!36041)

(assert (=> b!990051 (= lt!439219 (get!15652 (select (arr!30116 _values!1278) from!1932) (dynLambda!1879 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!36041)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!15008 0))(
  ( (tuple2!15009 (_1!7514 (_ BitVec 64)) (_2!7514 V!36041)) )
))
(declare-datatypes ((List!20959 0))(
  ( (Nil!20956) (Cons!20955 (h!22117 tuple2!15008) (t!29940 List!20959)) )
))
(declare-datatypes ((ListLongMap!13719 0))(
  ( (ListLongMap!13720 (toList!6875 List!20959)) )
))
(declare-fun lt!439217 () ListLongMap!13719)

(declare-fun zeroValue!1220 () V!36041)

(declare-fun getCurrentListMapNoExtraKeys!3523 (array!62535 array!62537 (_ BitVec 32) (_ BitVec 32) V!36041 V!36041 (_ BitVec 32) Int) ListLongMap!13719)

(assert (=> b!990051 (= lt!439217 (getCurrentListMapNoExtraKeys!3523 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!990052 () Bool)

(declare-fun res!662155 () Bool)

(assert (=> b!990052 (=> (not res!662155) (not e!558288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62535 (_ BitVec 32)) Bool)

(assert (=> b!990052 (= res!662155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990053 () Bool)

(declare-fun res!662158 () Bool)

(assert (=> b!990053 (=> (not res!662158) (not e!558288))))

(assert (=> b!990053 (= res!662158 (and (= (size!30596 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30595 _keys!1544) (size!30596 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!990054 () Bool)

(declare-fun res!662152 () Bool)

(assert (=> b!990054 (=> (not res!662152) (not e!558288))))

(assert (=> b!990054 (= res!662152 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!439220 () tuple2!15008)

(declare-fun b!990055 () Bool)

(declare-fun getCurrentListMap!3884 (array!62535 array!62537 (_ BitVec 32) (_ BitVec 32) V!36041 V!36041 (_ BitVec 32) Int) ListLongMap!13719)

(declare-fun +!3053 (ListLongMap!13719 tuple2!15008) ListLongMap!13719)

(assert (=> b!990055 (= e!558289 (not (= (getCurrentListMap!3884 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) (+!3053 (getCurrentListMap!3884 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439220))))))

(declare-fun lt!439218 () tuple2!15008)

(assert (=> b!990055 (= (+!3053 (+!3053 lt!439217 lt!439218) lt!439220) (+!3053 (+!3053 lt!439217 lt!439220) lt!439218))))

(assert (=> b!990055 (= lt!439220 (tuple2!15009 (select (arr!30115 _keys!1544) from!1932) lt!439219))))

(assert (=> b!990055 (= lt!439218 (tuple2!15009 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32812 0))(
  ( (Unit!32813) )
))
(declare-fun lt!439216 () Unit!32812)

(declare-fun addCommutativeForDiffKeys!707 (ListLongMap!13719 (_ BitVec 64) V!36041 (_ BitVec 64) V!36041) Unit!32812)

(assert (=> b!990055 (= lt!439216 (addCommutativeForDiffKeys!707 lt!439217 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30115 _keys!1544) from!1932) lt!439219))))

(declare-fun res!662151 () Bool)

(assert (=> start!84694 (=> (not res!662151) (not e!558288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84694 (= res!662151 (validMask!0 mask!1948))))

(assert (=> start!84694 e!558288))

(assert (=> start!84694 true))

(declare-fun tp_is_empty!23293 () Bool)

(assert (=> start!84694 tp_is_empty!23293))

(declare-fun e!558293 () Bool)

(declare-fun array_inv!23125 (array!62537) Bool)

(assert (=> start!84694 (and (array_inv!23125 _values!1278) e!558293)))

(assert (=> start!84694 tp!70027))

(declare-fun array_inv!23126 (array!62535) Bool)

(assert (=> start!84694 (array_inv!23126 _keys!1544)))

(declare-fun b!990056 () Bool)

(declare-fun e!558290 () Bool)

(assert (=> b!990056 (= e!558290 tp_is_empty!23293)))

(declare-fun mapIsEmpty!36988 () Bool)

(declare-fun mapRes!36988 () Bool)

(assert (=> mapIsEmpty!36988 mapRes!36988))

(declare-fun b!990057 () Bool)

(declare-fun e!558292 () Bool)

(assert (=> b!990057 (= e!558292 tp_is_empty!23293)))

(declare-fun b!990058 () Bool)

(assert (=> b!990058 (= e!558293 (and e!558290 mapRes!36988))))

(declare-fun condMapEmpty!36988 () Bool)

(declare-fun mapDefault!36988 () ValueCell!11165)

