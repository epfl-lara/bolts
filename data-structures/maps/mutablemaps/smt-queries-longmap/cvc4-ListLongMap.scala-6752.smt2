; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84692 () Bool)

(assert start!84692)

(declare-fun b_free!20075 () Bool)

(declare-fun b_next!20075 () Bool)

(assert (=> start!84692 (= b_free!20075 (not b_next!20075))))

(declare-fun tp!70021 () Bool)

(declare-fun b_and!32239 () Bool)

(assert (=> start!84692 (= tp!70021 b_and!32239)))

(declare-fun b!990015 () Bool)

(declare-fun res!662127 () Bool)

(declare-fun e!558273 () Bool)

(assert (=> b!990015 (=> (not res!662127) (not e!558273))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!36037 0))(
  ( (V!36038 (val!11696 Int)) )
))
(declare-datatypes ((ValueCell!11164 0))(
  ( (ValueCellFull!11164 (v!14266 V!36037)) (EmptyCell!11164) )
))
(declare-datatypes ((array!62531 0))(
  ( (array!62532 (arr!30113 (Array (_ BitVec 32) ValueCell!11164)) (size!30593 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62531)

(declare-datatypes ((array!62533 0))(
  ( (array!62534 (arr!30114 (Array (_ BitVec 32) (_ BitVec 64))) (size!30594 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62533)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!990015 (= res!662127 (and (= (size!30593 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30594 _keys!1544) (size!30593 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36985 () Bool)

(declare-fun mapRes!36985 () Bool)

(declare-fun tp!70020 () Bool)

(declare-fun e!558275 () Bool)

(assert (=> mapNonEmpty!36985 (= mapRes!36985 (and tp!70020 e!558275))))

(declare-fun mapValue!36985 () ValueCell!11164)

(declare-fun mapKey!36985 () (_ BitVec 32))

(declare-fun mapRest!36985 () (Array (_ BitVec 32) ValueCell!11164))

(assert (=> mapNonEmpty!36985 (= (arr!30113 _values!1278) (store mapRest!36985 mapKey!36985 mapValue!36985))))

(declare-fun b!990016 () Bool)

(declare-fun res!662128 () Bool)

(assert (=> b!990016 (=> (not res!662128) (not e!558273))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!990016 (= res!662128 (validKeyInArray!0 (select (arr!30114 _keys!1544) from!1932)))))

(declare-fun b!990017 () Bool)

(declare-fun res!662134 () Bool)

(assert (=> b!990017 (=> (not res!662134) (not e!558273))))

(assert (=> b!990017 (= res!662134 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30594 _keys!1544))))))

(declare-fun b!990018 () Bool)

(declare-fun e!558272 () Bool)

(assert (=> b!990018 (= e!558272 (not (bvslt from!1932 (size!30593 _values!1278))))))

(declare-fun minValue!1220 () V!36037)

(declare-fun zeroValue!1220 () V!36037)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!15006 0))(
  ( (tuple2!15007 (_1!7513 (_ BitVec 64)) (_2!7513 V!36037)) )
))
(declare-datatypes ((List!20956 0))(
  ( (Nil!20953) (Cons!20952 (h!22114 tuple2!15006) (t!29935 List!20956)) )
))
(declare-datatypes ((ListLongMap!13717 0))(
  ( (ListLongMap!13718 (toList!6874 List!20956)) )
))
(declare-fun lt!439205 () ListLongMap!13717)

(declare-fun getCurrentListMap!3883 (array!62533 array!62531 (_ BitVec 32) (_ BitVec 32) V!36037 V!36037 (_ BitVec 32) Int) ListLongMap!13717)

(assert (=> b!990018 (= lt!439205 (getCurrentListMap!3883 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439203 () ListLongMap!13717)

(declare-fun lt!439200 () tuple2!15006)

(declare-fun lt!439201 () tuple2!15006)

(declare-fun +!3052 (ListLongMap!13717 tuple2!15006) ListLongMap!13717)

(assert (=> b!990018 (= (+!3052 (+!3052 lt!439203 lt!439200) lt!439201) (+!3052 (+!3052 lt!439203 lt!439201) lt!439200))))

(declare-fun lt!439202 () V!36037)

(assert (=> b!990018 (= lt!439201 (tuple2!15007 (select (arr!30114 _keys!1544) from!1932) lt!439202))))

(assert (=> b!990018 (= lt!439200 (tuple2!15007 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32810 0))(
  ( (Unit!32811) )
))
(declare-fun lt!439204 () Unit!32810)

(declare-fun addCommutativeForDiffKeys!706 (ListLongMap!13717 (_ BitVec 64) V!36037 (_ BitVec 64) V!36037) Unit!32810)

(assert (=> b!990018 (= lt!439204 (addCommutativeForDiffKeys!706 lt!439203 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30114 _keys!1544) from!1932) lt!439202))))

(declare-fun b!990019 () Bool)

(assert (=> b!990019 (= e!558273 e!558272)))

(declare-fun res!662130 () Bool)

(assert (=> b!990019 (=> (not res!662130) (not e!558272))))

(assert (=> b!990019 (= res!662130 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30114 _keys!1544) from!1932))))))

(declare-fun get!15649 (ValueCell!11164 V!36037) V!36037)

(declare-fun dynLambda!1878 (Int (_ BitVec 64)) V!36037)

(assert (=> b!990019 (= lt!439202 (get!15649 (select (arr!30113 _values!1278) from!1932) (dynLambda!1878 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!3522 (array!62533 array!62531 (_ BitVec 32) (_ BitVec 32) V!36037 V!36037 (_ BitVec 32) Int) ListLongMap!13717)

(assert (=> b!990019 (= lt!439203 (getCurrentListMapNoExtraKeys!3522 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!990020 () Bool)

(declare-fun res!662132 () Bool)

(assert (=> b!990020 (=> (not res!662132) (not e!558273))))

(assert (=> b!990020 (= res!662132 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!990021 () Bool)

(declare-fun tp_is_empty!23291 () Bool)

(assert (=> b!990021 (= e!558275 tp_is_empty!23291)))

(declare-fun res!662131 () Bool)

(assert (=> start!84692 (=> (not res!662131) (not e!558273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84692 (= res!662131 (validMask!0 mask!1948))))

(assert (=> start!84692 e!558273))

(assert (=> start!84692 true))

(assert (=> start!84692 tp_is_empty!23291))

(declare-fun e!558270 () Bool)

(declare-fun array_inv!23123 (array!62531) Bool)

(assert (=> start!84692 (and (array_inv!23123 _values!1278) e!558270)))

(assert (=> start!84692 tp!70021))

(declare-fun array_inv!23124 (array!62533) Bool)

(assert (=> start!84692 (array_inv!23124 _keys!1544)))

(declare-fun b!990022 () Bool)

(declare-fun res!662133 () Bool)

(assert (=> b!990022 (=> (not res!662133) (not e!558273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62533 (_ BitVec 32)) Bool)

(assert (=> b!990022 (= res!662133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990023 () Bool)

(declare-fun res!662129 () Bool)

(assert (=> b!990023 (=> (not res!662129) (not e!558273))))

(declare-datatypes ((List!20957 0))(
  ( (Nil!20954) (Cons!20953 (h!22115 (_ BitVec 64)) (t!29936 List!20957)) )
))
(declare-fun arrayNoDuplicates!0 (array!62533 (_ BitVec 32) List!20957) Bool)

(assert (=> b!990023 (= res!662129 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20954))))

(declare-fun b!990024 () Bool)

(declare-fun e!558271 () Bool)

(assert (=> b!990024 (= e!558270 (and e!558271 mapRes!36985))))

(declare-fun condMapEmpty!36985 () Bool)

(declare-fun mapDefault!36985 () ValueCell!11164)

