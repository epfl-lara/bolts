; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99222 () Bool)

(assert start!99222)

(declare-fun b_free!24791 () Bool)

(declare-fun b_next!24791 () Bool)

(assert (=> start!99222 (= b_free!24791 (not b_next!24791))))

(declare-fun tp!87084 () Bool)

(declare-fun b_and!40445 () Bool)

(assert (=> start!99222 (= tp!87084 b_and!40445)))

(declare-fun mapNonEmpty!45806 () Bool)

(declare-fun mapRes!45806 () Bool)

(declare-fun tp!87085 () Bool)

(declare-fun e!663656 () Bool)

(assert (=> mapNonEmpty!45806 (= mapRes!45806 (and tp!87085 e!663656))))

(declare-fun mapKey!45806 () (_ BitVec 32))

(declare-datatypes ((V!44221 0))(
  ( (V!44222 (val!14717 Int)) )
))
(declare-datatypes ((ValueCell!13951 0))(
  ( (ValueCellFull!13951 (v!17355 V!44221)) (EmptyCell!13951) )
))
(declare-datatypes ((array!75420 0))(
  ( (array!75421 (arr!36357 (Array (_ BitVec 32) ValueCell!13951)) (size!36894 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75420)

(declare-fun mapRest!45806 () (Array (_ BitVec 32) ValueCell!13951))

(declare-fun mapValue!45806 () ValueCell!13951)

(assert (=> mapNonEmpty!45806 (= (arr!36357 _values!996) (store mapRest!45806 mapKey!45806 mapValue!45806))))

(declare-fun b!1167578 () Bool)

(declare-fun res!774658 () Bool)

(declare-fun e!663658 () Bool)

(assert (=> b!1167578 (=> (not res!774658) (not e!663658))))

(declare-datatypes ((array!75422 0))(
  ( (array!75423 (arr!36358 (Array (_ BitVec 32) (_ BitVec 64))) (size!36895 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75422)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1167578 (= res!774658 (and (= (size!36894 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36895 _keys!1208) (size!36894 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167579 () Bool)

(declare-fun e!663659 () Bool)

(declare-fun tp_is_empty!29321 () Bool)

(assert (=> b!1167579 (= e!663659 tp_is_empty!29321)))

(declare-fun b!1167580 () Bool)

(declare-fun res!774668 () Bool)

(assert (=> b!1167580 (=> (not res!774668) (not e!663658))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167580 (= res!774668 (validKeyInArray!0 k!934))))

(declare-fun b!1167581 () Bool)

(declare-fun res!774666 () Bool)

(declare-fun e!663654 () Bool)

(assert (=> b!1167581 (=> (not res!774666) (not e!663654))))

(declare-fun lt!525658 () array!75422)

(declare-datatypes ((List!25635 0))(
  ( (Nil!25632) (Cons!25631 (h!26840 (_ BitVec 64)) (t!37425 List!25635)) )
))
(declare-fun arrayNoDuplicates!0 (array!75422 (_ BitVec 32) List!25635) Bool)

(assert (=> b!1167581 (= res!774666 (arrayNoDuplicates!0 lt!525658 #b00000000000000000000000000000000 Nil!25632))))

(declare-fun b!1167582 () Bool)

(declare-fun res!774657 () Bool)

(assert (=> b!1167582 (=> (not res!774657) (not e!663658))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167582 (= res!774657 (= (select (arr!36358 _keys!1208) i!673) k!934))))

(declare-fun b!1167583 () Bool)

(declare-fun e!663660 () Bool)

(declare-fun e!663653 () Bool)

(assert (=> b!1167583 (= e!663660 e!663653)))

(declare-fun res!774664 () Bool)

(assert (=> b!1167583 (=> res!774664 e!663653)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1167583 (= res!774664 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44221)

(declare-fun lt!525663 () array!75420)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44221)

(declare-datatypes ((tuple2!18858 0))(
  ( (tuple2!18859 (_1!9439 (_ BitVec 64)) (_2!9439 V!44221)) )
))
(declare-datatypes ((List!25636 0))(
  ( (Nil!25633) (Cons!25632 (h!26841 tuple2!18858) (t!37426 List!25636)) )
))
(declare-datatypes ((ListLongMap!16839 0))(
  ( (ListLongMap!16840 (toList!8435 List!25636)) )
))
(declare-fun lt!525659 () ListLongMap!16839)

(declare-fun getCurrentListMapNoExtraKeys!4868 (array!75422 array!75420 (_ BitVec 32) (_ BitVec 32) V!44221 V!44221 (_ BitVec 32) Int) ListLongMap!16839)

(assert (=> b!1167583 (= lt!525659 (getCurrentListMapNoExtraKeys!4868 lt!525658 lt!525663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2860 (Int (_ BitVec 64)) V!44221)

(assert (=> b!1167583 (= lt!525663 (array!75421 (store (arr!36357 _values!996) i!673 (ValueCellFull!13951 (dynLambda!2860 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36894 _values!996)))))

(declare-fun lt!525661 () ListLongMap!16839)

(assert (=> b!1167583 (= lt!525661 (getCurrentListMapNoExtraKeys!4868 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!774663 () Bool)

(assert (=> start!99222 (=> (not res!774663) (not e!663658))))

(assert (=> start!99222 (= res!774663 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36895 _keys!1208))))))

(assert (=> start!99222 e!663658))

(assert (=> start!99222 tp_is_empty!29321))

(declare-fun array_inv!27674 (array!75422) Bool)

(assert (=> start!99222 (array_inv!27674 _keys!1208)))

(assert (=> start!99222 true))

(assert (=> start!99222 tp!87084))

(declare-fun e!663657 () Bool)

(declare-fun array_inv!27675 (array!75420) Bool)

(assert (=> start!99222 (and (array_inv!27675 _values!996) e!663657)))

(declare-fun b!1167584 () Bool)

(declare-fun res!774661 () Bool)

(assert (=> b!1167584 (=> (not res!774661) (not e!663658))))

(assert (=> b!1167584 (= res!774661 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36895 _keys!1208))))))

(declare-fun b!1167585 () Bool)

(assert (=> b!1167585 (= e!663656 tp_is_empty!29321)))

(declare-fun mapIsEmpty!45806 () Bool)

(assert (=> mapIsEmpty!45806 mapRes!45806))

(declare-fun b!1167586 () Bool)

(assert (=> b!1167586 (= e!663657 (and e!663659 mapRes!45806))))

(declare-fun condMapEmpty!45806 () Bool)

(declare-fun mapDefault!45806 () ValueCell!13951)

