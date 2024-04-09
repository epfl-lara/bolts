; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84688 () Bool)

(assert start!84688)

(declare-fun b_free!20071 () Bool)

(declare-fun b_next!20071 () Bool)

(assert (=> start!84688 (= b_free!20071 (not b_next!20071))))

(declare-fun tp!70008 () Bool)

(declare-fun b_and!32231 () Bool)

(assert (=> start!84688 (= tp!70008 b_and!32231)))

(declare-fun b!989945 () Bool)

(declare-fun e!558238 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((V!36033 0))(
  ( (V!36034 (val!11694 Int)) )
))
(declare-datatypes ((ValueCell!11162 0))(
  ( (ValueCellFull!11162 (v!14264 V!36033)) (EmptyCell!11162) )
))
(declare-datatypes ((array!62523 0))(
  ( (array!62524 (arr!30109 (Array (_ BitVec 32) ValueCell!11162)) (size!30589 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62523)

(assert (=> b!989945 (= e!558238 (not (bvslt from!1932 (size!30589 _values!1278))))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!36033)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!36033)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!15002 0))(
  ( (tuple2!15003 (_1!7511 (_ BitVec 64)) (_2!7511 V!36033)) )
))
(declare-datatypes ((List!20952 0))(
  ( (Nil!20949) (Cons!20948 (h!22110 tuple2!15002) (t!29927 List!20952)) )
))
(declare-datatypes ((ListLongMap!13713 0))(
  ( (ListLongMap!13714 (toList!6872 List!20952)) )
))
(declare-fun lt!439168 () ListLongMap!13713)

(declare-datatypes ((array!62525 0))(
  ( (array!62526 (arr!30110 (Array (_ BitVec 32) (_ BitVec 64))) (size!30590 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62525)

(declare-fun getCurrentListMap!3881 (array!62525 array!62523 (_ BitVec 32) (_ BitVec 32) V!36033 V!36033 (_ BitVec 32) Int) ListLongMap!13713)

(assert (=> b!989945 (= lt!439168 (getCurrentListMap!3881 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439169 () ListLongMap!13713)

(declare-fun lt!439164 () tuple2!15002)

(declare-fun lt!439165 () tuple2!15002)

(declare-fun +!3050 (ListLongMap!13713 tuple2!15002) ListLongMap!13713)

(assert (=> b!989945 (= (+!3050 (+!3050 lt!439169 lt!439164) lt!439165) (+!3050 (+!3050 lt!439169 lt!439165) lt!439164))))

(declare-fun lt!439167 () V!36033)

(assert (=> b!989945 (= lt!439165 (tuple2!15003 (select (arr!30110 _keys!1544) from!1932) lt!439167))))

(assert (=> b!989945 (= lt!439164 (tuple2!15003 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32806 0))(
  ( (Unit!32807) )
))
(declare-fun lt!439166 () Unit!32806)

(declare-fun addCommutativeForDiffKeys!704 (ListLongMap!13713 (_ BitVec 64) V!36033 (_ BitVec 64) V!36033) Unit!32806)

(assert (=> b!989945 (= lt!439166 (addCommutativeForDiffKeys!704 lt!439169 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30110 _keys!1544) from!1932) lt!439167))))

(declare-fun b!989946 () Bool)

(declare-fun res!662083 () Bool)

(declare-fun e!558236 () Bool)

(assert (=> b!989946 (=> (not res!662083) (not e!558236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989946 (= res!662083 (validKeyInArray!0 (select (arr!30110 _keys!1544) from!1932)))))

(declare-fun b!989947 () Bool)

(declare-fun e!558237 () Bool)

(declare-fun tp_is_empty!23287 () Bool)

(assert (=> b!989947 (= e!558237 tp_is_empty!23287)))

(declare-fun b!989948 () Bool)

(declare-fun res!662086 () Bool)

(assert (=> b!989948 (=> (not res!662086) (not e!558236))))

(assert (=> b!989948 (= res!662086 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30590 _keys!1544))))))

(declare-fun mapIsEmpty!36979 () Bool)

(declare-fun mapRes!36979 () Bool)

(assert (=> mapIsEmpty!36979 mapRes!36979))

(declare-fun res!662079 () Bool)

(assert (=> start!84688 (=> (not res!662079) (not e!558236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84688 (= res!662079 (validMask!0 mask!1948))))

(assert (=> start!84688 e!558236))

(assert (=> start!84688 true))

(assert (=> start!84688 tp_is_empty!23287))

(declare-fun e!558235 () Bool)

(declare-fun array_inv!23119 (array!62523) Bool)

(assert (=> start!84688 (and (array_inv!23119 _values!1278) e!558235)))

(assert (=> start!84688 tp!70008))

(declare-fun array_inv!23120 (array!62525) Bool)

(assert (=> start!84688 (array_inv!23120 _keys!1544)))

(declare-fun b!989949 () Bool)

(declare-fun res!662084 () Bool)

(assert (=> b!989949 (=> (not res!662084) (not e!558236))))

(declare-datatypes ((List!20953 0))(
  ( (Nil!20950) (Cons!20949 (h!22111 (_ BitVec 64)) (t!29928 List!20953)) )
))
(declare-fun arrayNoDuplicates!0 (array!62525 (_ BitVec 32) List!20953) Bool)

(assert (=> b!989949 (= res!662084 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20950))))

(declare-fun b!989950 () Bool)

(declare-fun res!662080 () Bool)

(assert (=> b!989950 (=> (not res!662080) (not e!558236))))

(assert (=> b!989950 (= res!662080 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!989951 () Bool)

(declare-fun res!662081 () Bool)

(assert (=> b!989951 (=> (not res!662081) (not e!558236))))

(assert (=> b!989951 (= res!662081 (and (= (size!30589 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30590 _keys!1544) (size!30589 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989952 () Bool)

(declare-fun e!558239 () Bool)

(assert (=> b!989952 (= e!558235 (and e!558239 mapRes!36979))))

(declare-fun condMapEmpty!36979 () Bool)

(declare-fun mapDefault!36979 () ValueCell!11162)

