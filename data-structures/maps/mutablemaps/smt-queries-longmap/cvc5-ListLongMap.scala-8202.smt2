; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100114 () Bool)

(assert start!100114)

(declare-fun b_free!25657 () Bool)

(declare-fun b_next!25657 () Bool)

(assert (=> start!100114 (= b_free!25657 (not b_next!25657))))

(declare-fun tp!89686 () Bool)

(declare-fun b_and!42195 () Bool)

(assert (=> start!100114 (= tp!89686 b_and!42195)))

(declare-fun mapIsEmpty!47108 () Bool)

(declare-fun mapRes!47108 () Bool)

(assert (=> mapIsEmpty!47108 mapRes!47108))

(declare-fun b!1193049 () Bool)

(declare-fun e!678129 () Bool)

(declare-fun e!678130 () Bool)

(assert (=> b!1193049 (= e!678129 (not e!678130))))

(declare-fun res!793812 () Bool)

(assert (=> b!1193049 (=> res!793812 e!678130)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193049 (= res!793812 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77138 0))(
  ( (array!77139 (arr!37215 (Array (_ BitVec 32) (_ BitVec 64))) (size!37752 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77138)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193049 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39520 0))(
  ( (Unit!39521) )
))
(declare-fun lt!542422 () Unit!39520)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77138 (_ BitVec 64) (_ BitVec 32)) Unit!39520)

(assert (=> b!1193049 (= lt!542422 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1193050 () Bool)

(declare-fun res!793811 () Bool)

(declare-fun e!678133 () Bool)

(assert (=> b!1193050 (=> (not res!793811) (not e!678133))))

(assert (=> b!1193050 (= res!793811 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37752 _keys!1208))))))

(declare-fun res!793810 () Bool)

(assert (=> start!100114 (=> (not res!793810) (not e!678133))))

(assert (=> start!100114 (= res!793810 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37752 _keys!1208))))))

(assert (=> start!100114 e!678133))

(declare-fun tp_is_empty!30187 () Bool)

(assert (=> start!100114 tp_is_empty!30187))

(declare-fun array_inv!28272 (array!77138) Bool)

(assert (=> start!100114 (array_inv!28272 _keys!1208)))

(assert (=> start!100114 true))

(assert (=> start!100114 tp!89686))

(declare-datatypes ((V!45377 0))(
  ( (V!45378 (val!15150 Int)) )
))
(declare-datatypes ((ValueCell!14384 0))(
  ( (ValueCellFull!14384 (v!17789 V!45377)) (EmptyCell!14384) )
))
(declare-datatypes ((array!77140 0))(
  ( (array!77141 (arr!37216 (Array (_ BitVec 32) ValueCell!14384)) (size!37753 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77140)

(declare-fun e!678126 () Bool)

(declare-fun array_inv!28273 (array!77140) Bool)

(assert (=> start!100114 (and (array_inv!28273 _values!996) e!678126)))

(declare-fun b!1193051 () Bool)

(declare-fun res!793805 () Bool)

(assert (=> b!1193051 (=> (not res!793805) (not e!678133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193051 (= res!793805 (validKeyInArray!0 k!934))))

(declare-fun b!1193052 () Bool)

(declare-fun res!793814 () Bool)

(assert (=> b!1193052 (=> (not res!793814) (not e!678133))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193052 (= res!793814 (validMask!0 mask!1564))))

(declare-fun b!1193053 () Bool)

(declare-fun e!678132 () Bool)

(assert (=> b!1193053 (= e!678130 e!678132)))

(declare-fun res!793809 () Bool)

(assert (=> b!1193053 (=> res!793809 e!678132)))

(assert (=> b!1193053 (= res!793809 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45377)

(declare-fun lt!542423 () array!77140)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!542420 () array!77138)

(declare-fun minValue!944 () V!45377)

(declare-datatypes ((tuple2!19624 0))(
  ( (tuple2!19625 (_1!9822 (_ BitVec 64)) (_2!9822 V!45377)) )
))
(declare-datatypes ((List!26382 0))(
  ( (Nil!26379) (Cons!26378 (h!27587 tuple2!19624) (t!39038 List!26382)) )
))
(declare-datatypes ((ListLongMap!17605 0))(
  ( (ListLongMap!17606 (toList!8818 List!26382)) )
))
(declare-fun lt!542421 () ListLongMap!17605)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5232 (array!77138 array!77140 (_ BitVec 32) (_ BitVec 32) V!45377 V!45377 (_ BitVec 32) Int) ListLongMap!17605)

(assert (=> b!1193053 (= lt!542421 (getCurrentListMapNoExtraKeys!5232 lt!542420 lt!542423 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3171 (Int (_ BitVec 64)) V!45377)

(assert (=> b!1193053 (= lt!542423 (array!77141 (store (arr!37216 _values!996) i!673 (ValueCellFull!14384 (dynLambda!3171 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37753 _values!996)))))

(declare-fun lt!542424 () ListLongMap!17605)

(assert (=> b!1193053 (= lt!542424 (getCurrentListMapNoExtraKeys!5232 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1193054 () Bool)

(declare-fun res!793806 () Bool)

(assert (=> b!1193054 (=> (not res!793806) (not e!678133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77138 (_ BitVec 32)) Bool)

(assert (=> b!1193054 (= res!793806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193055 () Bool)

(declare-fun e!678128 () Bool)

(assert (=> b!1193055 (= e!678126 (and e!678128 mapRes!47108))))

(declare-fun condMapEmpty!47108 () Bool)

(declare-fun mapDefault!47108 () ValueCell!14384)

