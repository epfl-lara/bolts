; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97862 () Bool)

(assert start!97862)

(declare-fun b_free!23527 () Bool)

(declare-fun b_next!23527 () Bool)

(assert (=> start!97862 (= b_free!23527 (not b_next!23527))))

(declare-fun tp!83285 () Bool)

(declare-fun b_and!37859 () Bool)

(assert (=> start!97862 (= tp!83285 b_and!37859)))

(declare-fun b!1119492 () Bool)

(declare-fun res!747874 () Bool)

(declare-fun e!637601 () Bool)

(assert (=> b!1119492 (=> (not res!747874) (not e!637601))))

(declare-datatypes ((array!72940 0))(
  ( (array!72941 (arr!35119 (Array (_ BitVec 32) (_ BitVec 64))) (size!35656 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72940)

(declare-datatypes ((List!24560 0))(
  ( (Nil!24557) (Cons!24556 (h!25765 (_ BitVec 64)) (t!35086 List!24560)) )
))
(declare-fun arrayNoDuplicates!0 (array!72940 (_ BitVec 32) List!24560) Bool)

(assert (=> b!1119492 (= res!747874 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24557))))

(declare-fun b!1119493 () Bool)

(declare-fun res!747870 () Bool)

(assert (=> b!1119493 (=> (not res!747870) (not e!637601))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119493 (= res!747870 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!43903 () Bool)

(declare-fun mapRes!43903 () Bool)

(assert (=> mapIsEmpty!43903 mapRes!43903))

(declare-fun b!1119494 () Bool)

(declare-fun res!747873 () Bool)

(assert (=> b!1119494 (=> (not res!747873) (not e!637601))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119494 (= res!747873 (= (select (arr!35119 _keys!1208) i!673) k!934))))

(declare-fun b!1119495 () Bool)

(declare-fun e!637597 () Bool)

(declare-fun e!637600 () Bool)

(assert (=> b!1119495 (= e!637597 (not e!637600))))

(declare-fun res!747878 () Bool)

(assert (=> b!1119495 (=> res!747878 e!637600)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1119495 (= res!747878 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119495 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36651 0))(
  ( (Unit!36652) )
))
(declare-fun lt!497754 () Unit!36651)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72940 (_ BitVec 64) (_ BitVec 32)) Unit!36651)

(assert (=> b!1119495 (= lt!497754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119496 () Bool)

(assert (=> b!1119496 (= e!637600 true)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!42537 0))(
  ( (V!42538 (val!14085 Int)) )
))
(declare-datatypes ((tuple2!17724 0))(
  ( (tuple2!17725 (_1!8872 (_ BitVec 64)) (_2!8872 V!42537)) )
))
(declare-datatypes ((List!24561 0))(
  ( (Nil!24558) (Cons!24557 (h!25766 tuple2!17724) (t!35087 List!24561)) )
))
(declare-datatypes ((ListLongMap!15705 0))(
  ( (ListLongMap!15706 (toList!7868 List!24561)) )
))
(declare-fun lt!497753 () ListLongMap!15705)

(declare-datatypes ((ValueCell!13319 0))(
  ( (ValueCellFull!13319 (v!16719 V!42537)) (EmptyCell!13319) )
))
(declare-datatypes ((array!72942 0))(
  ( (array!72943 (arr!35120 (Array (_ BitVec 32) ValueCell!13319)) (size!35657 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72942)

(declare-fun minValue!944 () V!42537)

(declare-fun zeroValue!944 () V!42537)

(declare-fun lt!497752 () array!72940)

(declare-fun getCurrentListMapNoExtraKeys!4329 (array!72940 array!72942 (_ BitVec 32) (_ BitVec 32) V!42537 V!42537 (_ BitVec 32) Int) ListLongMap!15705)

(declare-fun dynLambda!2431 (Int (_ BitVec 64)) V!42537)

(assert (=> b!1119496 (= lt!497753 (getCurrentListMapNoExtraKeys!4329 lt!497752 (array!72943 (store (arr!35120 _values!996) i!673 (ValueCellFull!13319 (dynLambda!2431 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35657 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497751 () ListLongMap!15705)

(assert (=> b!1119496 (= lt!497751 (getCurrentListMapNoExtraKeys!4329 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119497 () Bool)

(declare-fun res!747877 () Bool)

(assert (=> b!1119497 (=> (not res!747877) (not e!637601))))

(assert (=> b!1119497 (= res!747877 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35656 _keys!1208))))))

(declare-fun b!1119498 () Bool)

(declare-fun res!747871 () Bool)

(assert (=> b!1119498 (=> (not res!747871) (not e!637601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119498 (= res!747871 (validMask!0 mask!1564))))

(declare-fun b!1119499 () Bool)

(declare-fun res!747876 () Bool)

(assert (=> b!1119499 (=> (not res!747876) (not e!637601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72940 (_ BitVec 32)) Bool)

(assert (=> b!1119499 (= res!747876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119500 () Bool)

(declare-fun e!637595 () Bool)

(declare-fun e!637598 () Bool)

(assert (=> b!1119500 (= e!637595 (and e!637598 mapRes!43903))))

(declare-fun condMapEmpty!43903 () Bool)

(declare-fun mapDefault!43903 () ValueCell!13319)

