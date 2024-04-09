; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100506 () Bool)

(assert start!100506)

(declare-fun b_free!25793 () Bool)

(declare-fun b_next!25793 () Bool)

(assert (=> start!100506 (= b_free!25793 (not b_next!25793))))

(declare-fun tp!90370 () Bool)

(declare-fun b_and!42487 () Bool)

(assert (=> start!100506 (= tp!90370 b_and!42487)))

(declare-fun res!798708 () Bool)

(declare-fun e!681445 () Bool)

(assert (=> start!100506 (=> (not res!798708) (not e!681445))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77750 0))(
  ( (array!77751 (arr!37516 (Array (_ BitVec 32) (_ BitVec 64))) (size!38053 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77750)

(assert (=> start!100506 (= res!798708 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38053 _keys!1208))))))

(assert (=> start!100506 e!681445))

(declare-fun tp_is_empty!30497 () Bool)

(assert (=> start!100506 tp_is_empty!30497))

(declare-fun array_inv!28492 (array!77750) Bool)

(assert (=> start!100506 (array_inv!28492 _keys!1208)))

(assert (=> start!100506 true))

(assert (=> start!100506 tp!90370))

(declare-datatypes ((V!45789 0))(
  ( (V!45790 (val!15305 Int)) )
))
(declare-datatypes ((ValueCell!14539 0))(
  ( (ValueCellFull!14539 (v!17944 V!45789)) (EmptyCell!14539) )
))
(declare-datatypes ((array!77752 0))(
  ( (array!77753 (arr!37517 (Array (_ BitVec 32) ValueCell!14539)) (size!38054 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77752)

(declare-fun e!681442 () Bool)

(declare-fun array_inv!28493 (array!77752) Bool)

(assert (=> start!100506 (and (array_inv!28493 _values!996) e!681442)))

(declare-fun b!1199784 () Bool)

(declare-fun e!681443 () Bool)

(assert (=> b!1199784 (= e!681443 true)))

(declare-fun zeroValue!944 () V!45789)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19730 0))(
  ( (tuple2!19731 (_1!9875 (_ BitVec 64)) (_2!9875 V!45789)) )
))
(declare-datatypes ((List!26563 0))(
  ( (Nil!26560) (Cons!26559 (h!27768 tuple2!19730) (t!39343 List!26563)) )
))
(declare-datatypes ((ListLongMap!17711 0))(
  ( (ListLongMap!17712 (toList!8871 List!26563)) )
))
(declare-fun lt!543828 () ListLongMap!17711)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!543826 () array!77750)

(declare-fun minValue!944 () V!45789)

(declare-fun getCurrentListMapNoExtraKeys!5284 (array!77750 array!77752 (_ BitVec 32) (_ BitVec 32) V!45789 V!45789 (_ BitVec 32) Int) ListLongMap!17711)

(declare-fun dynLambda!3215 (Int (_ BitVec 64)) V!45789)

(assert (=> b!1199784 (= lt!543828 (getCurrentListMapNoExtraKeys!5284 lt!543826 (array!77753 (store (arr!37517 _values!996) i!673 (ValueCellFull!14539 (dynLambda!3215 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38054 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543829 () ListLongMap!17711)

(assert (=> b!1199784 (= lt!543829 (getCurrentListMapNoExtraKeys!5284 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199785 () Bool)

(declare-fun e!681448 () Bool)

(assert (=> b!1199785 (= e!681448 (not e!681443))))

(declare-fun res!798717 () Bool)

(assert (=> b!1199785 (=> res!798717 e!681443)))

(assert (=> b!1199785 (= res!798717 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199785 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39710 0))(
  ( (Unit!39711) )
))
(declare-fun lt!543827 () Unit!39710)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77750 (_ BitVec 64) (_ BitVec 32)) Unit!39710)

(assert (=> b!1199785 (= lt!543827 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1199786 () Bool)

(declare-fun res!798707 () Bool)

(assert (=> b!1199786 (=> (not res!798707) (not e!681445))))

(declare-datatypes ((List!26564 0))(
  ( (Nil!26561) (Cons!26560 (h!27769 (_ BitVec 64)) (t!39344 List!26564)) )
))
(declare-fun arrayNoDuplicates!0 (array!77750 (_ BitVec 32) List!26564) Bool)

(assert (=> b!1199786 (= res!798707 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26561))))

(declare-fun b!1199787 () Bool)

(assert (=> b!1199787 (= e!681445 e!681448)))

(declare-fun res!798712 () Bool)

(assert (=> b!1199787 (=> (not res!798712) (not e!681448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77750 (_ BitVec 32)) Bool)

(assert (=> b!1199787 (= res!798712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543826 mask!1564))))

(assert (=> b!1199787 (= lt!543826 (array!77751 (store (arr!37516 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38053 _keys!1208)))))

(declare-fun b!1199788 () Bool)

(declare-fun e!681447 () Bool)

(assert (=> b!1199788 (= e!681447 tp_is_empty!30497)))

(declare-fun mapIsEmpty!47588 () Bool)

(declare-fun mapRes!47588 () Bool)

(assert (=> mapIsEmpty!47588 mapRes!47588))

(declare-fun b!1199789 () Bool)

(declare-fun res!798715 () Bool)

(assert (=> b!1199789 (=> (not res!798715) (not e!681445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199789 (= res!798715 (validMask!0 mask!1564))))

(declare-fun b!1199790 () Bool)

(declare-fun res!798711 () Bool)

(assert (=> b!1199790 (=> (not res!798711) (not e!681445))))

(assert (=> b!1199790 (= res!798711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199791 () Bool)

(declare-fun e!681446 () Bool)

(assert (=> b!1199791 (= e!681442 (and e!681446 mapRes!47588))))

(declare-fun condMapEmpty!47588 () Bool)

(declare-fun mapDefault!47588 () ValueCell!14539)

