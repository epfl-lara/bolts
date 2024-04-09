; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100352 () Bool)

(assert start!100352)

(declare-fun b_free!25703 () Bool)

(declare-fun b_next!25703 () Bool)

(assert (=> start!100352 (= b_free!25703 (not b_next!25703))))

(declare-fun tp!90057 () Bool)

(declare-fun b_and!42287 () Bool)

(assert (=> start!100352 (= tp!90057 b_and!42287)))

(declare-datatypes ((V!45637 0))(
  ( (V!45638 (val!15248 Int)) )
))
(declare-fun zeroValue!944 () V!45637)

(declare-datatypes ((array!77524 0))(
  ( (array!77525 (arr!37405 (Array (_ BitVec 32) (_ BitVec 64))) (size!37942 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77524)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!57226 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19664 0))(
  ( (tuple2!19665 (_1!9842 (_ BitVec 64)) (_2!9842 V!45637)) )
))
(declare-datatypes ((List!26481 0))(
  ( (Nil!26478) (Cons!26477 (h!27686 tuple2!19664) (t!39183 List!26481)) )
))
(declare-datatypes ((ListLongMap!17645 0))(
  ( (ListLongMap!17646 (toList!8838 List!26481)) )
))
(declare-fun call!57230 () ListLongMap!17645)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14482 0))(
  ( (ValueCellFull!14482 (v!17887 V!45637)) (EmptyCell!14482) )
))
(declare-datatypes ((array!77526 0))(
  ( (array!77527 (arr!37406 (Array (_ BitVec 32) ValueCell!14482)) (size!37943 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77526)

(declare-fun minValue!944 () V!45637)

(declare-fun getCurrentListMapNoExtraKeys!5251 (array!77524 array!77526 (_ BitVec 32) (_ BitVec 32) V!45637 V!45637 (_ BitVec 32) Int) ListLongMap!17645)

(assert (=> bm!57226 (= call!57230 (getCurrentListMapNoExtraKeys!5251 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!796775 () Bool)

(declare-fun e!680115 () Bool)

(assert (=> start!100352 (=> (not res!796775) (not e!680115))))

(assert (=> start!100352 (= res!796775 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37942 _keys!1208))))))

(assert (=> start!100352 e!680115))

(declare-fun tp_is_empty!30383 () Bool)

(assert (=> start!100352 tp_is_empty!30383))

(declare-fun array_inv!28412 (array!77524) Bool)

(assert (=> start!100352 (array_inv!28412 _keys!1208)))

(assert (=> start!100352 true))

(assert (=> start!100352 tp!90057))

(declare-fun e!680116 () Bool)

(declare-fun array_inv!28413 (array!77526) Bool)

(assert (=> start!100352 (and (array_inv!28413 _values!996) e!680116)))

(declare-fun b!1197099 () Bool)

(declare-fun res!796772 () Bool)

(assert (=> b!1197099 (=> (not res!796772) (not e!680115))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197099 (= res!796772 (= (select (arr!37405 _keys!1208) i!673) k!934))))

(declare-fun b!1197100 () Bool)

(declare-fun e!680122 () Bool)

(declare-fun call!57229 () ListLongMap!17645)

(assert (=> b!1197100 (= e!680122 (= call!57229 call!57230))))

(declare-fun b!1197101 () Bool)

(declare-fun e!680118 () Bool)

(assert (=> b!1197101 (= e!680115 e!680118)))

(declare-fun res!796770 () Bool)

(assert (=> b!1197101 (=> (not res!796770) (not e!680118))))

(declare-fun lt!543156 () array!77524)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77524 (_ BitVec 32)) Bool)

(assert (=> b!1197101 (= res!796770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543156 mask!1564))))

(assert (=> b!1197101 (= lt!543156 (array!77525 (store (arr!37405 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37942 _keys!1208)))))

(declare-fun b!1197102 () Bool)

(declare-fun e!680121 () Bool)

(declare-fun mapRes!47411 () Bool)

(assert (=> b!1197102 (= e!680116 (and e!680121 mapRes!47411))))

(declare-fun condMapEmpty!47411 () Bool)

(declare-fun mapDefault!47411 () ValueCell!14482)

