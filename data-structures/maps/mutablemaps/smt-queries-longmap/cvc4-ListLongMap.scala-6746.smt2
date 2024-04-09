; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84586 () Bool)

(assert start!84586)

(declare-fun b_free!20039 () Bool)

(declare-fun b_next!20039 () Bool)

(assert (=> start!84586 (= b_free!20039 (not b_next!20039))))

(declare-fun tp!69906 () Bool)

(declare-fun b_and!32165 () Bool)

(assert (=> start!84586 (= tp!69906 b_and!32165)))

(declare-fun b!988862 () Bool)

(declare-fun res!661487 () Bool)

(declare-fun e!557628 () Bool)

(assert (=> b!988862 (=> (not res!661487) (not e!557628))))

(declare-datatypes ((array!62459 0))(
  ( (array!62460 (arr!30079 (Array (_ BitVec 32) (_ BitVec 64))) (size!30559 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62459)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62459 (_ BitVec 32)) Bool)

(assert (=> b!988862 (= res!661487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!988863 () Bool)

(declare-fun e!557627 () Bool)

(assert (=> b!988863 (= e!557628 e!557627)))

(declare-fun res!661486 () Bool)

(assert (=> b!988863 (=> (not res!661486) (not e!557627))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!988863 (= res!661486 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30079 _keys!1544) from!1932))))))

(declare-datatypes ((V!35989 0))(
  ( (V!35990 (val!11678 Int)) )
))
(declare-datatypes ((ValueCell!11146 0))(
  ( (ValueCellFull!11146 (v!14245 V!35989)) (EmptyCell!11146) )
))
(declare-datatypes ((array!62461 0))(
  ( (array!62462 (arr!30080 (Array (_ BitVec 32) ValueCell!11146)) (size!30560 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62461)

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!438629 () V!35989)

(declare-fun get!15628 (ValueCell!11146 V!35989) V!35989)

(declare-fun dynLambda!1872 (Int (_ BitVec 64)) V!35989)

(assert (=> b!988863 (= lt!438629 (get!15628 (select (arr!30080 _values!1278) from!1932) (dynLambda!1872 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35989)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35989)

(declare-datatypes ((tuple2!14982 0))(
  ( (tuple2!14983 (_1!7501 (_ BitVec 64)) (_2!7501 V!35989)) )
))
(declare-datatypes ((List!20932 0))(
  ( (Nil!20929) (Cons!20928 (h!22090 tuple2!14982) (t!29891 List!20932)) )
))
(declare-datatypes ((ListLongMap!13693 0))(
  ( (ListLongMap!13694 (toList!6862 List!20932)) )
))
(declare-fun lt!438628 () ListLongMap!13693)

(declare-fun getCurrentListMapNoExtraKeys!3512 (array!62459 array!62461 (_ BitVec 32) (_ BitVec 32) V!35989 V!35989 (_ BitVec 32) Int) ListLongMap!13693)

(assert (=> b!988863 (= lt!438628 (getCurrentListMapNoExtraKeys!3512 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988864 () Bool)

(declare-fun res!661488 () Bool)

(assert (=> b!988864 (=> (not res!661488) (not e!557628))))

(declare-datatypes ((List!20933 0))(
  ( (Nil!20930) (Cons!20929 (h!22091 (_ BitVec 64)) (t!29892 List!20933)) )
))
(declare-fun arrayNoDuplicates!0 (array!62459 (_ BitVec 32) List!20933) Bool)

(assert (=> b!988864 (= res!661488 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20930))))

(declare-fun b!988865 () Bool)

(declare-fun res!661491 () Bool)

(assert (=> b!988865 (=> (not res!661491) (not e!557628))))

(assert (=> b!988865 (= res!661491 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!988866 () Bool)

(assert (=> b!988866 (= e!557627 (not (bvslt from!1932 (size!30560 _values!1278))))))

(declare-fun lt!438627 () ListLongMap!13693)

(declare-fun getCurrentListMap!3876 (array!62459 array!62461 (_ BitVec 32) (_ BitVec 32) V!35989 V!35989 (_ BitVec 32) Int) ListLongMap!13693)

(assert (=> b!988866 (= lt!438627 (getCurrentListMap!3876 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!438625 () tuple2!14982)

(declare-fun lt!438626 () tuple2!14982)

(declare-fun +!3044 (ListLongMap!13693 tuple2!14982) ListLongMap!13693)

(assert (=> b!988866 (= (+!3044 (+!3044 lt!438628 lt!438625) lt!438626) (+!3044 (+!3044 lt!438628 lt!438626) lt!438625))))

(assert (=> b!988866 (= lt!438626 (tuple2!14983 (select (arr!30079 _keys!1544) from!1932) lt!438629))))

(assert (=> b!988866 (= lt!438625 (tuple2!14983 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32775 0))(
  ( (Unit!32776) )
))
(declare-fun lt!438630 () Unit!32775)

(declare-fun addCommutativeForDiffKeys!699 (ListLongMap!13693 (_ BitVec 64) V!35989 (_ BitVec 64) V!35989) Unit!32775)

(assert (=> b!988866 (= lt!438630 (addCommutativeForDiffKeys!699 lt!438628 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30079 _keys!1544) from!1932) lt!438629))))

(declare-fun b!988867 () Bool)

(declare-fun res!661489 () Bool)

(assert (=> b!988867 (=> (not res!661489) (not e!557628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988867 (= res!661489 (validKeyInArray!0 (select (arr!30079 _keys!1544) from!1932)))))

(declare-fun b!988868 () Bool)

(declare-fun e!557624 () Bool)

(declare-fun tp_is_empty!23255 () Bool)

(assert (=> b!988868 (= e!557624 tp_is_empty!23255)))

(declare-fun res!661492 () Bool)

(assert (=> start!84586 (=> (not res!661492) (not e!557628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84586 (= res!661492 (validMask!0 mask!1948))))

(assert (=> start!84586 e!557628))

(assert (=> start!84586 true))

(assert (=> start!84586 tp_is_empty!23255))

(declare-fun e!557626 () Bool)

(declare-fun array_inv!23097 (array!62461) Bool)

(assert (=> start!84586 (and (array_inv!23097 _values!1278) e!557626)))

(assert (=> start!84586 tp!69906))

(declare-fun array_inv!23098 (array!62459) Bool)

(assert (=> start!84586 (array_inv!23098 _keys!1544)))

(declare-fun b!988869 () Bool)

(declare-fun res!661490 () Bool)

(assert (=> b!988869 (=> (not res!661490) (not e!557628))))

(assert (=> b!988869 (= res!661490 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30559 _keys!1544))))))

(declare-fun b!988870 () Bool)

(declare-fun mapRes!36924 () Bool)

(assert (=> b!988870 (= e!557626 (and e!557624 mapRes!36924))))

(declare-fun condMapEmpty!36924 () Bool)

(declare-fun mapDefault!36924 () ValueCell!11146)

