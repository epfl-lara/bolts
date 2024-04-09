; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100848 () Bool)

(assert start!100848)

(declare-fun b_free!25951 () Bool)

(declare-fun b_next!25951 () Bool)

(assert (=> start!100848 (= b_free!25951 (not b_next!25951))))

(declare-fun tp!90860 () Bool)

(declare-fun b_and!42917 () Bool)

(assert (=> start!100848 (= tp!90860 b_and!42917)))

(declare-fun b!1206571 () Bool)

(declare-datatypes ((Unit!39921 0))(
  ( (Unit!39922) )
))
(declare-fun e!685243 () Unit!39921)

(declare-fun e!685250 () Unit!39921)

(assert (=> b!1206571 (= e!685243 e!685250)))

(declare-fun c!118456 () Bool)

(declare-fun lt!547360 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1206571 (= c!118456 (and (not lt!547360) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1206572 () Bool)

(declare-fun lt!547355 () Unit!39921)

(assert (=> b!1206572 (= e!685243 lt!547355)))

(declare-datatypes ((V!46001 0))(
  ( (V!46002 (val!15384 Int)) )
))
(declare-fun zeroValue!944 () V!46001)

(declare-datatypes ((tuple2!19874 0))(
  ( (tuple2!19875 (_1!9947 (_ BitVec 64)) (_2!9947 V!46001)) )
))
(declare-datatypes ((List!26697 0))(
  ( (Nil!26694) (Cons!26693 (h!27902 tuple2!19874) (t!39635 List!26697)) )
))
(declare-datatypes ((ListLongMap!17855 0))(
  ( (ListLongMap!17856 (toList!8943 List!26697)) )
))
(declare-fun lt!547352 () ListLongMap!17855)

(declare-fun lt!547353 () Unit!39921)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun addStillContains!1036 (ListLongMap!17855 (_ BitVec 64) V!46001 (_ BitVec 64)) Unit!39921)

(assert (=> b!1206572 (= lt!547353 (addStillContains!1036 lt!547352 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!547357 () ListLongMap!17855)

(declare-fun call!58765 () ListLongMap!17855)

(assert (=> b!1206572 (= lt!547357 call!58765)))

(declare-fun call!58766 () Bool)

(assert (=> b!1206572 call!58766))

(declare-fun call!58762 () Unit!39921)

(assert (=> b!1206572 (= lt!547355 call!58762)))

(declare-fun minValue!944 () V!46001)

(declare-fun contains!6946 (ListLongMap!17855 (_ BitVec 64)) Bool)

(declare-fun +!3972 (ListLongMap!17855 tuple2!19874) ListLongMap!17855)

(assert (=> b!1206572 (contains!6946 (+!3972 lt!547357 (tuple2!19875 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1206573 () Bool)

(declare-fun res!802456 () Bool)

(declare-fun e!685244 () Bool)

(assert (=> b!1206573 (=> (not res!802456) (not e!685244))))

(declare-datatypes ((array!78068 0))(
  ( (array!78069 (arr!37670 (Array (_ BitVec 32) (_ BitVec 64))) (size!38207 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78068)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1206573 (= res!802456 (= (select (arr!37670 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!47841 () Bool)

(declare-fun mapRes!47841 () Bool)

(declare-fun tp!90859 () Bool)

(declare-fun e!685249 () Bool)

(assert (=> mapNonEmpty!47841 (= mapRes!47841 (and tp!90859 e!685249))))

(declare-datatypes ((ValueCell!14618 0))(
  ( (ValueCellFull!14618 (v!18030 V!46001)) (EmptyCell!14618) )
))
(declare-fun mapValue!47841 () ValueCell!14618)

(declare-fun mapRest!47841 () (Array (_ BitVec 32) ValueCell!14618))

(declare-datatypes ((array!78070 0))(
  ( (array!78071 (arr!37671 (Array (_ BitVec 32) ValueCell!14618)) (size!38208 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78070)

(declare-fun mapKey!47841 () (_ BitVec 32))

(assert (=> mapNonEmpty!47841 (= (arr!37671 _values!996) (store mapRest!47841 mapKey!47841 mapValue!47841))))

(declare-fun c!118454 () Bool)

(declare-fun bm!58757 () Bool)

(assert (=> bm!58757 (= call!58765 (+!3972 lt!547352 (ite (or c!118454 c!118456) (tuple2!19875 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19875 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun mapIsEmpty!47841 () Bool)

(assert (=> mapIsEmpty!47841 mapRes!47841))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!547358 () array!78068)

(declare-fun call!58760 () ListLongMap!17855)

(declare-fun lt!547356 () array!78070)

(declare-fun bm!58758 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5350 (array!78068 array!78070 (_ BitVec 32) (_ BitVec 32) V!46001 V!46001 (_ BitVec 32) Int) ListLongMap!17855)

(assert (=> bm!58758 (= call!58760 (getCurrentListMapNoExtraKeys!5350 lt!547358 lt!547356 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206574 () Bool)

(declare-fun tp_is_empty!30655 () Bool)

(assert (=> b!1206574 (= e!685249 tp_is_empty!30655)))

(declare-fun bm!58759 () Bool)

(declare-fun call!58764 () ListLongMap!17855)

(assert (=> bm!58759 (= call!58766 (contains!6946 (ite c!118454 lt!547357 call!58764) k!934))))

(declare-fun b!1206575 () Bool)

(declare-fun res!802450 () Bool)

(assert (=> b!1206575 (=> (not res!802450) (not e!685244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78068 (_ BitVec 32)) Bool)

(assert (=> b!1206575 (= res!802450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1206576 () Bool)

(declare-fun res!802448 () Bool)

(assert (=> b!1206576 (=> (not res!802448) (not e!685244))))

(assert (=> b!1206576 (= res!802448 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38207 _keys!1208))))))

(declare-fun b!1206577 () Bool)

(declare-fun e!685246 () Bool)

(assert (=> b!1206577 (= e!685246 true)))

(declare-datatypes ((List!26698 0))(
  ( (Nil!26695) (Cons!26694 (h!27903 (_ BitVec 64)) (t!39636 List!26698)) )
))
(declare-fun arrayNoDuplicates!0 (array!78068 (_ BitVec 32) List!26698) Bool)

(assert (=> b!1206577 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26695)))

(declare-fun lt!547349 () Unit!39921)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78068 (_ BitVec 32) (_ BitVec 32)) Unit!39921)

(assert (=> b!1206577 (= lt!547349 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!685248 () Bool)

(assert (=> b!1206577 e!685248))

(declare-fun res!802444 () Bool)

(assert (=> b!1206577 (=> (not res!802444) (not e!685248))))

(declare-fun e!685251 () Bool)

(assert (=> b!1206577 (= res!802444 e!685251)))

(declare-fun c!118455 () Bool)

(assert (=> b!1206577 (= c!118455 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547359 () Unit!39921)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!575 (array!78068 array!78070 (_ BitVec 32) (_ BitVec 32) V!46001 V!46001 (_ BitVec 64) (_ BitVec 32) Int) Unit!39921)

(assert (=> b!1206577 (= lt!547359 (lemmaListMapContainsThenArrayContainsFrom!575 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547346 () Unit!39921)

(assert (=> b!1206577 (= lt!547346 e!685243)))

(assert (=> b!1206577 (= c!118454 (and (not lt!547360) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1206577 (= lt!547360 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1206578 () Bool)

(declare-fun e!685256 () Bool)

(declare-fun e!685254 () Bool)

(assert (=> b!1206578 (= e!685256 (and e!685254 mapRes!47841))))

(declare-fun condMapEmpty!47841 () Bool)

(declare-fun mapDefault!47841 () ValueCell!14618)

