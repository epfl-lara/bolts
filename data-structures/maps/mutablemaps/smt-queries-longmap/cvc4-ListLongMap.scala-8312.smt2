; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101260 () Bool)

(assert start!101260)

(declare-fun b_free!26147 () Bool)

(declare-fun b_next!26147 () Bool)

(assert (=> start!101260 (= b_free!26147 (not b_next!26147))))

(declare-fun tp!91464 () Bool)

(declare-fun b_and!43421 () Bool)

(assert (=> start!101260 (= tp!91464 b_and!43421)))

(declare-fun b!1215432 () Bool)

(declare-fun res!807100 () Bool)

(declare-fun e!690177 () Bool)

(assert (=> b!1215432 (=> (not res!807100) (not e!690177))))

(declare-datatypes ((array!78456 0))(
  ( (array!78457 (arr!37859 (Array (_ BitVec 32) (_ BitVec 64))) (size!38396 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78456)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46261 0))(
  ( (V!46262 (val!15482 Int)) )
))
(declare-datatypes ((ValueCell!14716 0))(
  ( (ValueCellFull!14716 (v!18136 V!46261)) (EmptyCell!14716) )
))
(declare-datatypes ((array!78458 0))(
  ( (array!78459 (arr!37860 (Array (_ BitVec 32) ValueCell!14716)) (size!38397 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78458)

(assert (=> b!1215432 (= res!807100 (and (= (size!38397 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38396 _keys!1208) (size!38397 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215433 () Bool)

(declare-fun res!807106 () Bool)

(assert (=> b!1215433 (=> (not res!807106) (not e!690177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78456 (_ BitVec 32)) Bool)

(assert (=> b!1215433 (= res!807106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!48151 () Bool)

(declare-fun mapRes!48151 () Bool)

(assert (=> mapIsEmpty!48151 mapRes!48151))

(declare-fun b!1215434 () Bool)

(declare-fun res!807105 () Bool)

(assert (=> b!1215434 (=> (not res!807105) (not e!690177))))

(declare-datatypes ((List!26861 0))(
  ( (Nil!26858) (Cons!26857 (h!28066 (_ BitVec 64)) (t!39995 List!26861)) )
))
(declare-fun arrayNoDuplicates!0 (array!78456 (_ BitVec 32) List!26861) Bool)

(assert (=> b!1215434 (= res!807105 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26858))))

(declare-fun b!1215435 () Bool)

(declare-fun e!690173 () Bool)

(declare-fun tp_is_empty!30851 () Bool)

(assert (=> b!1215435 (= e!690173 tp_is_empty!30851)))

(declare-fun b!1215436 () Bool)

(declare-fun e!690176 () Bool)

(assert (=> b!1215436 (= e!690176 tp_is_empty!30851)))

(declare-fun b!1215437 () Bool)

(declare-fun e!690174 () Bool)

(declare-fun e!690175 () Bool)

(assert (=> b!1215437 (= e!690174 (not e!690175))))

(declare-fun res!807098 () Bool)

(assert (=> b!1215437 (=> res!807098 e!690175)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1215437 (= res!807098 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215437 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40238 0))(
  ( (Unit!40239) )
))
(declare-fun lt!552572 () Unit!40238)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78456 (_ BitVec 64) (_ BitVec 32)) Unit!40238)

(assert (=> b!1215437 (= lt!552572 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!48151 () Bool)

(declare-fun tp!91463 () Bool)

(assert (=> mapNonEmpty!48151 (= mapRes!48151 (and tp!91463 e!690173))))

(declare-fun mapValue!48151 () ValueCell!14716)

(declare-fun mapKey!48151 () (_ BitVec 32))

(declare-fun mapRest!48151 () (Array (_ BitVec 32) ValueCell!14716))

(assert (=> mapNonEmpty!48151 (= (arr!37860 _values!996) (store mapRest!48151 mapKey!48151 mapValue!48151))))

(declare-fun b!1215438 () Bool)

(assert (=> b!1215438 (= e!690175 true)))

(declare-fun zeroValue!944 () V!46261)

(declare-fun lt!552573 () array!78456)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20042 0))(
  ( (tuple2!20043 (_1!10031 (_ BitVec 64)) (_2!10031 V!46261)) )
))
(declare-datatypes ((List!26862 0))(
  ( (Nil!26859) (Cons!26858 (h!28067 tuple2!20042) (t!39996 List!26862)) )
))
(declare-datatypes ((ListLongMap!18023 0))(
  ( (ListLongMap!18024 (toList!9027 List!26862)) )
))
(declare-fun lt!552574 () ListLongMap!18023)

(declare-fun minValue!944 () V!46261)

(declare-fun getCurrentListMapNoExtraKeys!5432 (array!78456 array!78458 (_ BitVec 32) (_ BitVec 32) V!46261 V!46261 (_ BitVec 32) Int) ListLongMap!18023)

(declare-fun dynLambda!3341 (Int (_ BitVec 64)) V!46261)

(assert (=> b!1215438 (= lt!552574 (getCurrentListMapNoExtraKeys!5432 lt!552573 (array!78459 (store (arr!37860 _values!996) i!673 (ValueCellFull!14716 (dynLambda!3341 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38397 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552575 () ListLongMap!18023)

(assert (=> b!1215438 (= lt!552575 (getCurrentListMapNoExtraKeys!5432 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215439 () Bool)

(declare-fun res!807097 () Bool)

(assert (=> b!1215439 (=> (not res!807097) (not e!690177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215439 (= res!807097 (validMask!0 mask!1564))))

(declare-fun b!1215440 () Bool)

(declare-fun res!807101 () Bool)

(assert (=> b!1215440 (=> (not res!807101) (not e!690174))))

(assert (=> b!1215440 (= res!807101 (arrayNoDuplicates!0 lt!552573 #b00000000000000000000000000000000 Nil!26858))))

(declare-fun res!807096 () Bool)

(assert (=> start!101260 (=> (not res!807096) (not e!690177))))

(assert (=> start!101260 (= res!807096 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38396 _keys!1208))))))

(assert (=> start!101260 e!690177))

(assert (=> start!101260 tp_is_empty!30851))

(declare-fun array_inv!28732 (array!78456) Bool)

(assert (=> start!101260 (array_inv!28732 _keys!1208)))

(assert (=> start!101260 true))

(assert (=> start!101260 tp!91464))

(declare-fun e!690171 () Bool)

(declare-fun array_inv!28733 (array!78458) Bool)

(assert (=> start!101260 (and (array_inv!28733 _values!996) e!690171)))

(declare-fun b!1215441 () Bool)

(declare-fun res!807104 () Bool)

(assert (=> b!1215441 (=> (not res!807104) (not e!690177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215441 (= res!807104 (validKeyInArray!0 k!934))))

(declare-fun b!1215442 () Bool)

(assert (=> b!1215442 (= e!690177 e!690174)))

(declare-fun res!807102 () Bool)

(assert (=> b!1215442 (=> (not res!807102) (not e!690174))))

(assert (=> b!1215442 (= res!807102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552573 mask!1564))))

(assert (=> b!1215442 (= lt!552573 (array!78457 (store (arr!37859 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38396 _keys!1208)))))

(declare-fun b!1215443 () Bool)

(declare-fun res!807103 () Bool)

(assert (=> b!1215443 (=> (not res!807103) (not e!690177))))

(assert (=> b!1215443 (= res!807103 (= (select (arr!37859 _keys!1208) i!673) k!934))))

(declare-fun b!1215444 () Bool)

(declare-fun res!807099 () Bool)

(assert (=> b!1215444 (=> (not res!807099) (not e!690177))))

(assert (=> b!1215444 (= res!807099 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38396 _keys!1208))))))

(declare-fun b!1215445 () Bool)

(assert (=> b!1215445 (= e!690171 (and e!690176 mapRes!48151))))

(declare-fun condMapEmpty!48151 () Bool)

(declare-fun mapDefault!48151 () ValueCell!14716)

