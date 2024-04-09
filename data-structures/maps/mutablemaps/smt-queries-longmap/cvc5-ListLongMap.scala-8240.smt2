; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100406 () Bool)

(assert start!100406)

(declare-fun b_free!25711 () Bool)

(declare-fun b_next!25711 () Bool)

(assert (=> start!100406 (= b_free!25711 (not b_next!25711))))

(declare-fun tp!90120 () Bool)

(declare-fun b_and!42327 () Bool)

(assert (=> start!100406 (= tp!90120 b_and!42327)))

(declare-fun res!797315 () Bool)

(declare-fun e!680518 () Bool)

(assert (=> start!100406 (=> (not res!797315) (not e!680518))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77590 0))(
  ( (array!77591 (arr!37437 (Array (_ BitVec 32) (_ BitVec 64))) (size!37974 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77590)

(assert (=> start!100406 (= res!797315 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37974 _keys!1208))))))

(assert (=> start!100406 e!680518))

(declare-fun tp_is_empty!30415 () Bool)

(assert (=> start!100406 tp_is_empty!30415))

(declare-fun array_inv!28436 (array!77590) Bool)

(assert (=> start!100406 (array_inv!28436 _keys!1208)))

(assert (=> start!100406 true))

(assert (=> start!100406 tp!90120))

(declare-datatypes ((V!45681 0))(
  ( (V!45682 (val!15264 Int)) )
))
(declare-datatypes ((ValueCell!14498 0))(
  ( (ValueCellFull!14498 (v!17903 V!45681)) (EmptyCell!14498) )
))
(declare-datatypes ((array!77592 0))(
  ( (array!77593 (arr!37438 (Array (_ BitVec 32) ValueCell!14498)) (size!37975 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77592)

(declare-fun e!680516 () Bool)

(declare-fun array_inv!28437 (array!77592) Bool)

(assert (=> start!100406 (and (array_inv!28437 _values!996) e!680516)))

(declare-fun b!1197894 () Bool)

(declare-fun res!797320 () Bool)

(declare-fun e!680515 () Bool)

(assert (=> b!1197894 (=> (not res!797320) (not e!680515))))

(declare-fun lt!543324 () array!77590)

(declare-datatypes ((List!26498 0))(
  ( (Nil!26495) (Cons!26494 (h!27703 (_ BitVec 64)) (t!39208 List!26498)) )
))
(declare-fun arrayNoDuplicates!0 (array!77590 (_ BitVec 32) List!26498) Bool)

(assert (=> b!1197894 (= res!797320 (arrayNoDuplicates!0 lt!543324 #b00000000000000000000000000000000 Nil!26495))))

(declare-fun mapNonEmpty!47462 () Bool)

(declare-fun mapRes!47462 () Bool)

(declare-fun tp!90121 () Bool)

(declare-fun e!680514 () Bool)

(assert (=> mapNonEmpty!47462 (= mapRes!47462 (and tp!90121 e!680514))))

(declare-fun mapValue!47462 () ValueCell!14498)

(declare-fun mapKey!47462 () (_ BitVec 32))

(declare-fun mapRest!47462 () (Array (_ BitVec 32) ValueCell!14498))

(assert (=> mapNonEmpty!47462 (= (arr!37438 _values!996) (store mapRest!47462 mapKey!47462 mapValue!47462))))

(declare-fun b!1197895 () Bool)

(declare-fun e!680517 () Bool)

(assert (=> b!1197895 (= e!680515 (not e!680517))))

(declare-fun res!797321 () Bool)

(assert (=> b!1197895 (=> res!797321 e!680517)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197895 (= res!797321 (or (bvsle from!1455 i!673) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37974 _keys!1208))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197895 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39654 0))(
  ( (Unit!39655) )
))
(declare-fun lt!543323 () Unit!39654)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77590 (_ BitVec 64) (_ BitVec 32)) Unit!39654)

(assert (=> b!1197895 (= lt!543323 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1197896 () Bool)

(declare-fun res!797322 () Bool)

(assert (=> b!1197896 (=> (not res!797322) (not e!680518))))

(assert (=> b!1197896 (= res!797322 (= (select (arr!37437 _keys!1208) i!673) k!934))))

(declare-fun b!1197897 () Bool)

(declare-fun res!797316 () Bool)

(assert (=> b!1197897 (=> (not res!797316) (not e!680518))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197897 (= res!797316 (validMask!0 mask!1564))))

(declare-fun b!1197898 () Bool)

(declare-fun res!797313 () Bool)

(assert (=> b!1197898 (=> (not res!797313) (not e!680518))))

(assert (=> b!1197898 (= res!797313 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26495))))

(declare-fun b!1197899 () Bool)

(declare-fun res!797314 () Bool)

(assert (=> b!1197899 (=> (not res!797314) (not e!680518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197899 (= res!797314 (validKeyInArray!0 k!934))))

(declare-fun b!1197900 () Bool)

(assert (=> b!1197900 (= e!680514 tp_is_empty!30415)))

(declare-fun b!1197901 () Bool)

(declare-fun e!680519 () Bool)

(assert (=> b!1197901 (= e!680519 tp_is_empty!30415)))

(declare-fun b!1197902 () Bool)

(declare-fun res!797317 () Bool)

(assert (=> b!1197902 (=> (not res!797317) (not e!680518))))

(assert (=> b!1197902 (= res!797317 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37974 _keys!1208))))))

(declare-fun mapIsEmpty!47462 () Bool)

(assert (=> mapIsEmpty!47462 mapRes!47462))

(declare-fun zeroValue!944 () V!45681)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1197903 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45681)

(declare-datatypes ((tuple2!19672 0))(
  ( (tuple2!19673 (_1!9846 (_ BitVec 64)) (_2!9846 V!45681)) )
))
(declare-datatypes ((List!26499 0))(
  ( (Nil!26496) (Cons!26495 (h!27704 tuple2!19672) (t!39209 List!26499)) )
))
(declare-datatypes ((ListLongMap!17653 0))(
  ( (ListLongMap!17654 (toList!8842 List!26499)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5255 (array!77590 array!77592 (_ BitVec 32) (_ BitVec 32) V!45681 V!45681 (_ BitVec 32) Int) ListLongMap!17653)

(declare-fun dynLambda!3191 (Int (_ BitVec 64)) V!45681)

(assert (=> b!1197903 (= e!680517 (= (getCurrentListMapNoExtraKeys!5255 lt!543324 (array!77593 (store (arr!37438 _values!996) i!673 (ValueCellFull!14498 (dynLambda!3191 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37975 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) (getCurrentListMapNoExtraKeys!5255 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004)))))

(declare-fun b!1197904 () Bool)

(declare-fun res!797318 () Bool)

(assert (=> b!1197904 (=> (not res!797318) (not e!680518))))

(assert (=> b!1197904 (= res!797318 (and (= (size!37975 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37974 _keys!1208) (size!37975 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197905 () Bool)

(assert (=> b!1197905 (= e!680518 e!680515)))

(declare-fun res!797312 () Bool)

(assert (=> b!1197905 (=> (not res!797312) (not e!680515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77590 (_ BitVec 32)) Bool)

(assert (=> b!1197905 (= res!797312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543324 mask!1564))))

(assert (=> b!1197905 (= lt!543324 (array!77591 (store (arr!37437 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37974 _keys!1208)))))

(declare-fun b!1197906 () Bool)

(declare-fun res!797319 () Bool)

(assert (=> b!1197906 (=> (not res!797319) (not e!680518))))

(assert (=> b!1197906 (= res!797319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197907 () Bool)

(assert (=> b!1197907 (= e!680516 (and e!680519 mapRes!47462))))

(declare-fun condMapEmpty!47462 () Bool)

(declare-fun mapDefault!47462 () ValueCell!14498)

