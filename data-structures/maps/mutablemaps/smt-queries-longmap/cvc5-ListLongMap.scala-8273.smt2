; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100714 () Bool)

(assert start!100714)

(declare-fun b_free!25909 () Bool)

(declare-fun b_next!25909 () Bool)

(assert (=> start!100714 (= b_free!25909 (not b_next!25909))))

(declare-fun tp!90724 () Bool)

(declare-fun b_and!42779 () Bool)

(assert (=> start!100714 (= tp!90724 b_and!42779)))

(declare-fun b!1204278 () Bool)

(declare-fun c!118010 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!546073 () Bool)

(assert (=> b!1204278 (= c!118010 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546073))))

(declare-datatypes ((Unit!39855 0))(
  ( (Unit!39856) )
))
(declare-fun e!683927 () Unit!39855)

(declare-fun e!683922 () Unit!39855)

(assert (=> b!1204278 (= e!683927 e!683922)))

(declare-fun res!801304 () Bool)

(declare-fun e!683916 () Bool)

(assert (=> start!100714 (=> (not res!801304) (not e!683916))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77980 0))(
  ( (array!77981 (arr!37629 (Array (_ BitVec 32) (_ BitVec 64))) (size!38166 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77980)

(assert (=> start!100714 (= res!801304 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38166 _keys!1208))))))

(assert (=> start!100714 e!683916))

(declare-fun tp_is_empty!30613 () Bool)

(assert (=> start!100714 tp_is_empty!30613))

(declare-fun array_inv!28570 (array!77980) Bool)

(assert (=> start!100714 (array_inv!28570 _keys!1208)))

(assert (=> start!100714 true))

(assert (=> start!100714 tp!90724))

(declare-datatypes ((V!45945 0))(
  ( (V!45946 (val!15363 Int)) )
))
(declare-datatypes ((ValueCell!14597 0))(
  ( (ValueCellFull!14597 (v!18006 V!45945)) (EmptyCell!14597) )
))
(declare-datatypes ((array!77982 0))(
  ( (array!77983 (arr!37630 (Array (_ BitVec 32) ValueCell!14597)) (size!38167 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77982)

(declare-fun e!683923 () Bool)

(declare-fun array_inv!28571 (array!77982) Bool)

(assert (=> start!100714 (and (array_inv!28571 _values!996) e!683923)))

(declare-fun b!1204279 () Bool)

(declare-fun e!683920 () Bool)

(assert (=> b!1204279 (= e!683920 tp_is_empty!30613)))

(declare-fun b!1204280 () Bool)

(declare-fun e!683918 () Bool)

(declare-datatypes ((tuple2!19834 0))(
  ( (tuple2!19835 (_1!9927 (_ BitVec 64)) (_2!9927 V!45945)) )
))
(declare-datatypes ((List!26661 0))(
  ( (Nil!26658) (Cons!26657 (h!27866 tuple2!19834) (t!39557 List!26661)) )
))
(declare-datatypes ((ListLongMap!17815 0))(
  ( (ListLongMap!17816 (toList!8923 List!26661)) )
))
(declare-fun call!58196 () ListLongMap!17815)

(declare-fun call!58201 () ListLongMap!17815)

(assert (=> b!1204280 (= e!683918 (= call!58196 call!58201))))

(declare-fun b!1204281 () Bool)

(declare-fun e!683921 () Bool)

(declare-fun e!683928 () Bool)

(assert (=> b!1204281 (= e!683921 (not e!683928))))

(declare-fun res!801307 () Bool)

(assert (=> b!1204281 (=> res!801307 e!683928)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1204281 (= res!801307 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1204281 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!546078 () Unit!39855)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77980 (_ BitVec 64) (_ BitVec 32)) Unit!39855)

(assert (=> b!1204281 (= lt!546078 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!683924 () Bool)

(declare-fun b!1204282 () Bool)

(assert (=> b!1204282 (= e!683924 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546073) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!45945)

(declare-fun bm!58192 () Bool)

(declare-fun lt!546077 () ListLongMap!17815)

(declare-fun c!118009 () Bool)

(declare-fun c!118011 () Bool)

(declare-fun minValue!944 () V!45945)

(declare-fun call!58197 () ListLongMap!17815)

(declare-fun +!3957 (ListLongMap!17815 tuple2!19834) ListLongMap!17815)

(assert (=> bm!58192 (= call!58197 (+!3957 lt!546077 (ite (or c!118011 c!118009) (tuple2!19835 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19835 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1204283 () Bool)

(declare-fun e!683926 () Bool)

(assert (=> b!1204283 (= e!683926 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1204283 e!683924))

(declare-fun c!118008 () Bool)

(assert (=> b!1204283 (= c!118008 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!546081 () Unit!39855)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!562 (array!77980 array!77982 (_ BitVec 32) (_ BitVec 32) V!45945 V!45945 (_ BitVec 64) (_ BitVec 32) Int) Unit!39855)

(assert (=> b!1204283 (= lt!546081 (lemmaListMapContainsThenArrayContainsFrom!562 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546071 () Unit!39855)

(declare-fun e!683919 () Unit!39855)

(assert (=> b!1204283 (= lt!546071 e!683919)))

(assert (=> b!1204283 (= c!118011 (and (not lt!546073) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1204283 (= lt!546073 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!58200 () Unit!39855)

(declare-fun bm!58193 () Bool)

(declare-fun addStillContains!1021 (ListLongMap!17815 (_ BitVec 64) V!45945 (_ BitVec 64)) Unit!39855)

(assert (=> bm!58193 (= call!58200 (addStillContains!1021 lt!546077 (ite (or c!118011 c!118009) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118011 c!118009) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1204284 () Bool)

(declare-fun Unit!39857 () Unit!39855)

(assert (=> b!1204284 (= e!683922 Unit!39857)))

(declare-fun bm!58194 () Bool)

(declare-fun call!58199 () Unit!39855)

(assert (=> bm!58194 (= call!58199 call!58200)))

(declare-fun b!1204285 () Bool)

(declare-fun res!801308 () Bool)

(assert (=> b!1204285 (=> (not res!801308) (not e!683916))))

(declare-datatypes ((List!26662 0))(
  ( (Nil!26659) (Cons!26658 (h!27867 (_ BitVec 64)) (t!39558 List!26662)) )
))
(declare-fun arrayNoDuplicates!0 (array!77980 (_ BitVec 32) List!26662) Bool)

(assert (=> b!1204285 (= res!801308 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26659))))

(declare-fun b!1204286 () Bool)

(declare-fun lt!546074 () Unit!39855)

(assert (=> b!1204286 (= e!683919 lt!546074)))

(declare-fun lt!546083 () Unit!39855)

(assert (=> b!1204286 (= lt!546083 call!58200)))

(declare-fun lt!546079 () ListLongMap!17815)

(assert (=> b!1204286 (= lt!546079 call!58197)))

(declare-fun call!58195 () Bool)

(assert (=> b!1204286 call!58195))

(assert (=> b!1204286 (= lt!546074 (addStillContains!1021 lt!546079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6925 (ListLongMap!17815 (_ BitVec 64)) Bool)

(assert (=> b!1204286 (contains!6925 (+!3957 lt!546079 (tuple2!19835 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1204287 () Bool)

(declare-fun res!801305 () Bool)

(assert (=> b!1204287 (=> (not res!801305) (not e!683916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77980 (_ BitVec 32)) Bool)

(assert (=> b!1204287 (= res!801305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1204288 () Bool)

(declare-fun mapRes!47769 () Bool)

(assert (=> b!1204288 (= e!683923 (and e!683920 mapRes!47769))))

(declare-fun condMapEmpty!47769 () Bool)

(declare-fun mapDefault!47769 () ValueCell!14597)

