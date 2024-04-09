; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112260 () Bool)

(assert start!112260)

(declare-fun b_free!30619 () Bool)

(declare-fun b_next!30619 () Bool)

(assert (=> start!112260 (= b_free!30619 (not b_next!30619))))

(declare-fun tp!107494 () Bool)

(declare-fun b_and!49303 () Bool)

(assert (=> start!112260 (= tp!107494 b_and!49303)))

(declare-fun mapIsEmpty!56467 () Bool)

(declare-fun mapRes!56467 () Bool)

(assert (=> mapIsEmpty!56467 mapRes!56467))

(declare-fun b!1329222 () Bool)

(declare-fun e!757816 () Bool)

(declare-fun tp_is_empty!36529 () Bool)

(assert (=> b!1329222 (= e!757816 tp_is_empty!36529)))

(declare-fun b!1329223 () Bool)

(declare-fun res!882041 () Bool)

(declare-fun e!757818 () Bool)

(assert (=> b!1329223 (=> (not res!882041) (not e!757818))))

(declare-datatypes ((V!53809 0))(
  ( (V!53810 (val!18339 Int)) )
))
(declare-datatypes ((ValueCell!17366 0))(
  ( (ValueCellFull!17366 (v!20974 V!53809)) (EmptyCell!17366) )
))
(declare-datatypes ((array!89913 0))(
  ( (array!89914 (arr!43418 (Array (_ BitVec 32) ValueCell!17366)) (size!43969 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89913)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89915 0))(
  ( (array!89916 (arr!43419 (Array (_ BitVec 32) (_ BitVec 64))) (size!43970 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89915)

(assert (=> b!1329223 (= res!882041 (and (= (size!43969 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43970 _keys!1590) (size!43969 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329224 () Bool)

(declare-fun res!882035 () Bool)

(assert (=> b!1329224 (=> (not res!882035) (not e!757818))))

(assert (=> b!1329224 (= res!882035 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329225 () Bool)

(declare-fun res!882033 () Bool)

(assert (=> b!1329225 (=> (not res!882033) (not e!757818))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1329225 (= res!882033 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43970 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329226 () Bool)

(declare-fun res!882037 () Bool)

(assert (=> b!1329226 (=> (not res!882037) (not e!757818))))

(declare-datatypes ((List!30945 0))(
  ( (Nil!30942) (Cons!30941 (h!32150 (_ BitVec 64)) (t!44984 List!30945)) )
))
(declare-fun arrayNoDuplicates!0 (array!89915 (_ BitVec 32) List!30945) Bool)

(assert (=> b!1329226 (= res!882037 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30942))))

(declare-fun b!1329227 () Bool)

(declare-fun res!882040 () Bool)

(assert (=> b!1329227 (=> (not res!882040) (not e!757818))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53809)

(declare-fun zeroValue!1262 () V!53809)

(declare-datatypes ((tuple2!23754 0))(
  ( (tuple2!23755 (_1!11887 (_ BitVec 64)) (_2!11887 V!53809)) )
))
(declare-datatypes ((List!30946 0))(
  ( (Nil!30943) (Cons!30942 (h!32151 tuple2!23754) (t!44985 List!30946)) )
))
(declare-datatypes ((ListLongMap!21423 0))(
  ( (ListLongMap!21424 (toList!10727 List!30946)) )
))
(declare-fun contains!8827 (ListLongMap!21423 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5659 (array!89915 array!89913 (_ BitVec 32) (_ BitVec 32) V!53809 V!53809 (_ BitVec 32) Int) ListLongMap!21423)

(assert (=> b!1329227 (= res!882040 (contains!8827 (getCurrentListMap!5659 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!882036 () Bool)

(assert (=> start!112260 (=> (not res!882036) (not e!757818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112260 (= res!882036 (validMask!0 mask!1998))))

(assert (=> start!112260 e!757818))

(declare-fun e!757817 () Bool)

(declare-fun array_inv!32709 (array!89913) Bool)

(assert (=> start!112260 (and (array_inv!32709 _values!1320) e!757817)))

(assert (=> start!112260 true))

(declare-fun array_inv!32710 (array!89915) Bool)

(assert (=> start!112260 (array_inv!32710 _keys!1590)))

(assert (=> start!112260 tp!107494))

(assert (=> start!112260 tp_is_empty!36529))

(declare-fun b!1329228 () Bool)

(assert (=> b!1329228 (= e!757818 (not true))))

(declare-fun lt!590869 () ListLongMap!21423)

(assert (=> b!1329228 (contains!8827 lt!590869 k!1153)))

(declare-datatypes ((Unit!43675 0))(
  ( (Unit!43676) )
))
(declare-fun lt!590870 () Unit!43675)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!229 ((_ BitVec 64) (_ BitVec 64) V!53809 ListLongMap!21423) Unit!43675)

(assert (=> b!1329228 (= lt!590870 (lemmaInListMapAfterAddingDiffThenInBefore!229 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590869))))

(declare-fun +!4624 (ListLongMap!21423 tuple2!23754) ListLongMap!21423)

(declare-fun getCurrentListMapNoExtraKeys!6342 (array!89915 array!89913 (_ BitVec 32) (_ BitVec 32) V!53809 V!53809 (_ BitVec 32) Int) ListLongMap!21423)

(declare-fun get!21916 (ValueCell!17366 V!53809) V!53809)

(declare-fun dynLambda!3661 (Int (_ BitVec 64)) V!53809)

(assert (=> b!1329228 (= lt!590869 (+!4624 (getCurrentListMapNoExtraKeys!6342 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23755 (select (arr!43419 _keys!1590) from!1980) (get!21916 (select (arr!43418 _values!1320) from!1980) (dynLambda!3661 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329229 () Bool)

(assert (=> b!1329229 (= e!757817 (and e!757816 mapRes!56467))))

(declare-fun condMapEmpty!56467 () Bool)

(declare-fun mapDefault!56467 () ValueCell!17366)

