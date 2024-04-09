; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100814 () Bool)

(assert start!100814)

(declare-fun b_free!25949 () Bool)

(declare-fun b_next!25949 () Bool)

(assert (=> start!100814 (= b_free!25949 (not b_next!25949))))

(declare-fun tp!90851 () Bool)

(declare-fun b_and!42895 () Bool)

(assert (=> start!100814 (= tp!90851 b_and!42895)))

(declare-fun b!1206317 () Bool)

(declare-fun e!685090 () Bool)

(declare-fun e!685096 () Bool)

(assert (=> b!1206317 (= e!685090 e!685096)))

(declare-fun res!802337 () Bool)

(assert (=> b!1206317 (=> res!802337 e!685096)))

(declare-datatypes ((V!45997 0))(
  ( (V!45998 (val!15383 Int)) )
))
(declare-datatypes ((tuple2!19872 0))(
  ( (tuple2!19873 (_1!9946 (_ BitVec 64)) (_2!9946 V!45997)) )
))
(declare-datatypes ((List!26695 0))(
  ( (Nil!26692) (Cons!26691 (h!27900 tuple2!19872) (t!39631 List!26695)) )
))
(declare-datatypes ((ListLongMap!17853 0))(
  ( (ListLongMap!17854 (toList!8942 List!26695)) )
))
(declare-fun lt!547204 () ListLongMap!17853)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6943 (ListLongMap!17853 (_ BitVec 64)) Bool)

(assert (=> b!1206317 (= res!802337 (not (contains!6943 lt!547204 k!934)))))

(declare-fun zeroValue!944 () V!45997)

(declare-datatypes ((array!78062 0))(
  ( (array!78063 (arr!37668 (Array (_ BitVec 32) (_ BitVec 64))) (size!38205 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78062)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14617 0))(
  ( (ValueCellFull!14617 (v!18028 V!45997)) (EmptyCell!14617) )
))
(declare-datatypes ((array!78064 0))(
  ( (array!78065 (arr!37669 (Array (_ BitVec 32) ValueCell!14617)) (size!38206 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78064)

(declare-fun minValue!944 () V!45997)

(declare-fun getCurrentListMapNoExtraKeys!5349 (array!78062 array!78064 (_ BitVec 32) (_ BitVec 32) V!45997 V!45997 (_ BitVec 32) Int) ListLongMap!17853)

(assert (=> b!1206317 (= lt!547204 (getCurrentListMapNoExtraKeys!5349 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58712 () Bool)

(declare-fun call!58719 () ListLongMap!17853)

(declare-fun c!118396 () Bool)

(declare-fun c!118395 () Bool)

(declare-fun +!3971 (ListLongMap!17853 tuple2!19872) ListLongMap!17853)

(assert (=> bm!58712 (= call!58719 (+!3971 lt!547204 (ite (or c!118395 c!118396) (tuple2!19873 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19873 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1206318 () Bool)

(declare-fun res!802340 () Bool)

(declare-fun e!685091 () Bool)

(assert (=> b!1206318 (=> (not res!802340) (not e!685091))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1206318 (= res!802340 (= (select (arr!37668 _keys!1208) i!673) k!934))))

(declare-fun b!1206319 () Bool)

(declare-fun res!802336 () Bool)

(assert (=> b!1206319 (=> (not res!802336) (not e!685091))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1206319 (= res!802336 (validKeyInArray!0 k!934))))

(declare-fun b!1206320 () Bool)

(declare-fun res!802329 () Bool)

(assert (=> b!1206320 (=> (not res!802329) (not e!685091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1206320 (= res!802329 (validMask!0 mask!1564))))

(declare-fun b!1206322 () Bool)

(declare-fun e!685093 () Bool)

(declare-fun e!685095 () Bool)

(assert (=> b!1206322 (= e!685093 e!685095)))

(declare-fun res!802338 () Bool)

(assert (=> b!1206322 (=> res!802338 e!685095)))

(assert (=> b!1206322 (= res!802338 (not (= from!1455 i!673)))))

(declare-fun lt!547191 () array!78064)

(declare-fun lt!547199 () array!78062)

(declare-fun lt!547190 () ListLongMap!17853)

(assert (=> b!1206322 (= lt!547190 (getCurrentListMapNoExtraKeys!5349 lt!547199 lt!547191 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3270 (Int (_ BitVec 64)) V!45997)

(assert (=> b!1206322 (= lt!547191 (array!78065 (store (arr!37669 _values!996) i!673 (ValueCellFull!14617 (dynLambda!3270 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38206 _values!996)))))

(declare-fun lt!547203 () ListLongMap!17853)

(assert (=> b!1206322 (= lt!547203 (getCurrentListMapNoExtraKeys!5349 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1206323 () Bool)

(declare-fun res!802333 () Bool)

(assert (=> b!1206323 (=> (not res!802333) (not e!685091))))

(assert (=> b!1206323 (= res!802333 (and (= (size!38206 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38205 _keys!1208) (size!38206 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1206324 () Bool)

(declare-fun res!802342 () Bool)

(declare-fun e!685086 () Bool)

(assert (=> b!1206324 (=> (not res!802342) (not e!685086))))

(declare-datatypes ((List!26696 0))(
  ( (Nil!26693) (Cons!26692 (h!27901 (_ BitVec 64)) (t!39632 List!26696)) )
))
(declare-fun arrayNoDuplicates!0 (array!78062 (_ BitVec 32) List!26696) Bool)

(assert (=> b!1206324 (= res!802342 (arrayNoDuplicates!0 lt!547199 #b00000000000000000000000000000000 Nil!26693))))

(declare-fun bm!58713 () Bool)

(declare-fun call!58717 () ListLongMap!17853)

(assert (=> bm!58713 (= call!58717 call!58719)))

(declare-fun b!1206325 () Bool)

(declare-datatypes ((Unit!39916 0))(
  ( (Unit!39917) )
))
(declare-fun e!685087 () Unit!39916)

(declare-fun e!685092 () Unit!39916)

(assert (=> b!1206325 (= e!685087 e!685092)))

(declare-fun lt!547192 () Bool)

(assert (=> b!1206325 (= c!118396 (and (not lt!547192) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!58714 () Bool)

(declare-fun call!58722 () Bool)

(declare-fun call!58715 () Bool)

(assert (=> bm!58714 (= call!58722 call!58715)))

(declare-fun b!1206326 () Bool)

(declare-fun res!802328 () Bool)

(assert (=> b!1206326 (=> (not res!802328) (not e!685091))))

(assert (=> b!1206326 (= res!802328 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38205 _keys!1208))))))

(declare-fun b!1206327 () Bool)

(declare-fun e!685084 () Bool)

(declare-fun call!58718 () ListLongMap!17853)

(declare-fun call!58721 () ListLongMap!17853)

(assert (=> b!1206327 (= e!685084 (= call!58718 call!58721))))

(declare-fun mapNonEmpty!47835 () Bool)

(declare-fun mapRes!47835 () Bool)

(declare-fun tp!90850 () Bool)

(declare-fun e!685083 () Bool)

(assert (=> mapNonEmpty!47835 (= mapRes!47835 (and tp!90850 e!685083))))

(declare-fun mapValue!47835 () ValueCell!14617)

(declare-fun mapRest!47835 () (Array (_ BitVec 32) ValueCell!14617))

(declare-fun mapKey!47835 () (_ BitVec 32))

(assert (=> mapNonEmpty!47835 (= (arr!37669 _values!996) (store mapRest!47835 mapKey!47835 mapValue!47835))))

(declare-fun lt!547198 () ListLongMap!17853)

(declare-fun bm!58715 () Bool)

(assert (=> bm!58715 (= call!58715 (contains!6943 (ite c!118395 lt!547198 call!58717) k!934))))

(declare-fun b!1206328 () Bool)

(assert (=> b!1206328 (= e!685091 e!685086)))

(declare-fun res!802331 () Bool)

(assert (=> b!1206328 (=> (not res!802331) (not e!685086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78062 (_ BitVec 32)) Bool)

(assert (=> b!1206328 (= res!802331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547199 mask!1564))))

(assert (=> b!1206328 (= lt!547199 (array!78063 (store (arr!37668 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38205 _keys!1208)))))

(declare-fun mapIsEmpty!47835 () Bool)

(assert (=> mapIsEmpty!47835 mapRes!47835))

(declare-fun b!1206321 () Bool)

(declare-fun tp_is_empty!30653 () Bool)

(assert (=> b!1206321 (= e!685083 tp_is_empty!30653)))

(declare-fun res!802339 () Bool)

(assert (=> start!100814 (=> (not res!802339) (not e!685091))))

(assert (=> start!100814 (= res!802339 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38205 _keys!1208))))))

(assert (=> start!100814 e!685091))

(assert (=> start!100814 tp_is_empty!30653))

(declare-fun array_inv!28596 (array!78062) Bool)

(assert (=> start!100814 (array_inv!28596 _keys!1208)))

(assert (=> start!100814 true))

(assert (=> start!100814 tp!90851))

(declare-fun e!685085 () Bool)

(declare-fun array_inv!28597 (array!78064) Bool)

(assert (=> start!100814 (and (array_inv!28597 _values!996) e!685085)))

(declare-fun b!1206329 () Bool)

(declare-fun e!685089 () Unit!39916)

(declare-fun lt!547202 () Unit!39916)

(assert (=> b!1206329 (= e!685089 lt!547202)))

(declare-fun call!58720 () Unit!39916)

(assert (=> b!1206329 (= lt!547202 call!58720)))

(assert (=> b!1206329 call!58722))

(declare-fun b!1206330 () Bool)

(declare-fun e!685088 () Bool)

(declare-fun arrayContainsKey!0 (array!78062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1206330 (= e!685088 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206331 () Bool)

(declare-fun e!685094 () Bool)

(assert (=> b!1206331 (= e!685085 (and e!685094 mapRes!47835))))

(declare-fun condMapEmpty!47835 () Bool)

(declare-fun mapDefault!47835 () ValueCell!14617)

