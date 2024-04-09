; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101410 () Bool)

(assert start!101410)

(declare-fun b_free!26245 () Bool)

(declare-fun b_next!26245 () Bool)

(assert (=> start!101410 (= b_free!26245 (not b_next!26245))))

(declare-fun tp!91763 () Bool)

(declare-fun b_and!43653 () Bool)

(assert (=> start!101410 (= tp!91763 b_and!43653)))

(declare-datatypes ((array!78648 0))(
  ( (array!78649 (arr!37953 (Array (_ BitVec 32) (_ BitVec 64))) (size!38490 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78648)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1218091 () Bool)

(declare-fun e!691612 () Bool)

(assert (=> b!1218091 (= e!691612 (or (not (= (select (arr!37953 _keys!1208) from!1455) k!934)) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun e!691609 () Bool)

(assert (=> b!1218091 e!691609))

(declare-fun res!809050 () Bool)

(assert (=> b!1218091 (=> (not res!809050) (not e!691609))))

(declare-datatypes ((V!46393 0))(
  ( (V!46394 (val!15531 Int)) )
))
(declare-datatypes ((tuple2!20112 0))(
  ( (tuple2!20113 (_1!10066 (_ BitVec 64)) (_2!10066 V!46393)) )
))
(declare-datatypes ((List!26933 0))(
  ( (Nil!26930) (Cons!26929 (h!28138 tuple2!20112) (t!40165 List!26933)) )
))
(declare-datatypes ((ListLongMap!18093 0))(
  ( (ListLongMap!18094 (toList!9062 List!26933)) )
))
(declare-fun lt!553682 () ListLongMap!18093)

(declare-fun lt!553686 () V!46393)

(declare-datatypes ((ValueCell!14765 0))(
  ( (ValueCellFull!14765 (v!18187 V!46393)) (EmptyCell!14765) )
))
(declare-datatypes ((array!78650 0))(
  ( (array!78651 (arr!37954 (Array (_ BitVec 32) ValueCell!14765)) (size!38491 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78650)

(declare-fun lt!553687 () ListLongMap!18093)

(declare-fun +!4043 (ListLongMap!18093 tuple2!20112) ListLongMap!18093)

(declare-fun get!19387 (ValueCell!14765 V!46393) V!46393)

(assert (=> b!1218091 (= res!809050 (= lt!553687 (+!4043 lt!553682 (tuple2!20113 (select (arr!37953 _keys!1208) from!1455) (get!19387 (select (arr!37954 _values!996) from!1455) lt!553686)))))))

(declare-fun b!1218092 () Bool)

(declare-fun e!691608 () Bool)

(declare-fun e!691607 () Bool)

(assert (=> b!1218092 (= e!691608 e!691607)))

(declare-fun res!809055 () Bool)

(assert (=> b!1218092 (=> res!809055 e!691607)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1218092 (= res!809055 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46393)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!553688 () array!78648)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!553685 () array!78650)

(declare-fun minValue!944 () V!46393)

(declare-fun getCurrentListMapNoExtraKeys!5466 (array!78648 array!78650 (_ BitVec 32) (_ BitVec 32) V!46393 V!46393 (_ BitVec 32) Int) ListLongMap!18093)

(assert (=> b!1218092 (= lt!553687 (getCurrentListMapNoExtraKeys!5466 lt!553688 lt!553685 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1218092 (= lt!553685 (array!78651 (store (arr!37954 _values!996) i!673 (ValueCellFull!14765 lt!553686)) (size!38491 _values!996)))))

(declare-fun dynLambda!3370 (Int (_ BitVec 64)) V!46393)

(assert (=> b!1218092 (= lt!553686 (dynLambda!3370 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553683 () ListLongMap!18093)

(assert (=> b!1218092 (= lt!553683 (getCurrentListMapNoExtraKeys!5466 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!691610 () Bool)

(declare-fun b!1218093 () Bool)

(declare-fun arrayContainsKey!0 (array!78648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218093 (= e!691610 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1218094 () Bool)

(declare-fun e!691615 () Bool)

(declare-fun tp_is_empty!30949 () Bool)

(assert (=> b!1218094 (= e!691615 tp_is_empty!30949)))

(declare-fun b!1218095 () Bool)

(declare-fun e!691613 () Bool)

(declare-fun mapRes!48304 () Bool)

(assert (=> b!1218095 (= e!691613 (and e!691615 mapRes!48304))))

(declare-fun condMapEmpty!48304 () Bool)

(declare-fun mapDefault!48304 () ValueCell!14765)

