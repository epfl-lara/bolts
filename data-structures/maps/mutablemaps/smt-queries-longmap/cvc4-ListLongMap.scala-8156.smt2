; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99842 () Bool)

(assert start!99842)

(declare-fun b_free!25385 () Bool)

(declare-fun b_next!25385 () Bool)

(assert (=> start!99842 (= b_free!25385 (not b_next!25385))))

(declare-fun tp!88869 () Bool)

(declare-fun b_and!41651 () Bool)

(assert (=> start!99842 (= tp!88869 b_and!41651)))

(declare-fun b!1186157 () Bool)

(declare-fun res!788611 () Bool)

(declare-fun e!674467 () Bool)

(assert (=> b!1186157 (=> (not res!788611) (not e!674467))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186157 (= res!788611 (validKeyInArray!0 k!934))))

(declare-fun b!1186158 () Bool)

(declare-fun e!674468 () Bool)

(declare-fun tp_is_empty!29915 () Bool)

(assert (=> b!1186158 (= e!674468 tp_is_empty!29915)))

(declare-fun mapIsEmpty!46700 () Bool)

(declare-fun mapRes!46700 () Bool)

(assert (=> mapIsEmpty!46700 mapRes!46700))

(declare-fun b!1186159 () Bool)

(declare-fun e!674469 () Bool)

(assert (=> b!1186159 (= e!674467 e!674469)))

(declare-fun res!788613 () Bool)

(assert (=> b!1186159 (=> (not res!788613) (not e!674469))))

(declare-datatypes ((array!76598 0))(
  ( (array!76599 (arr!36945 (Array (_ BitVec 32) (_ BitVec 64))) (size!37482 (_ BitVec 32))) )
))
(declare-fun lt!538680 () array!76598)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76598 (_ BitVec 32)) Bool)

(assert (=> b!1186159 (= res!788613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538680 mask!1564))))

(declare-fun _keys!1208 () array!76598)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1186159 (= lt!538680 (array!76599 (store (arr!36945 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37482 _keys!1208)))))

(declare-fun b!1186160 () Bool)

(declare-fun e!674465 () Bool)

(declare-fun e!674466 () Bool)

(assert (=> b!1186160 (= e!674465 e!674466)))

(declare-fun res!788619 () Bool)

(assert (=> b!1186160 (=> res!788619 e!674466)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1186160 (= res!788619 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45013 0))(
  ( (V!45014 (val!15014 Int)) )
))
(declare-datatypes ((tuple2!19392 0))(
  ( (tuple2!19393 (_1!9706 (_ BitVec 64)) (_2!9706 V!45013)) )
))
(declare-datatypes ((List!26153 0))(
  ( (Nil!26150) (Cons!26149 (h!27358 tuple2!19392) (t!38537 List!26153)) )
))
(declare-datatypes ((ListLongMap!17373 0))(
  ( (ListLongMap!17374 (toList!8702 List!26153)) )
))
(declare-fun lt!538673 () ListLongMap!17373)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45013)

(declare-datatypes ((ValueCell!14248 0))(
  ( (ValueCellFull!14248 (v!17653 V!45013)) (EmptyCell!14248) )
))
(declare-datatypes ((array!76600 0))(
  ( (array!76601 (arr!36946 (Array (_ BitVec 32) ValueCell!14248)) (size!37483 (_ BitVec 32))) )
))
(declare-fun lt!538671 () array!76600)

(declare-fun zeroValue!944 () V!45013)

(declare-fun getCurrentListMapNoExtraKeys!5120 (array!76598 array!76600 (_ BitVec 32) (_ BitVec 32) V!45013 V!45013 (_ BitVec 32) Int) ListLongMap!17373)

(assert (=> b!1186160 (= lt!538673 (getCurrentListMapNoExtraKeys!5120 lt!538680 lt!538671 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!538683 () V!45013)

(declare-fun _values!996 () array!76600)

(assert (=> b!1186160 (= lt!538671 (array!76601 (store (arr!36946 _values!996) i!673 (ValueCellFull!14248 lt!538683)) (size!37483 _values!996)))))

(declare-fun dynLambda!3079 (Int (_ BitVec 64)) V!45013)

(assert (=> b!1186160 (= lt!538683 (dynLambda!3079 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!538685 () ListLongMap!17373)

(assert (=> b!1186160 (= lt!538685 (getCurrentListMapNoExtraKeys!5120 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1186161 () Bool)

(declare-fun e!674470 () Bool)

(assert (=> b!1186161 (= e!674466 e!674470)))

(declare-fun res!788616 () Bool)

(assert (=> b!1186161 (=> res!788616 e!674470)))

(assert (=> b!1186161 (= res!788616 (not (validKeyInArray!0 (select (arr!36945 _keys!1208) from!1455))))))

(declare-fun lt!538681 () ListLongMap!17373)

(declare-fun lt!538672 () ListLongMap!17373)

(assert (=> b!1186161 (= lt!538681 lt!538672)))

(declare-fun lt!538689 () ListLongMap!17373)

(declare-fun -!1687 (ListLongMap!17373 (_ BitVec 64)) ListLongMap!17373)

(assert (=> b!1186161 (= lt!538672 (-!1687 lt!538689 k!934))))

(assert (=> b!1186161 (= lt!538681 (getCurrentListMapNoExtraKeys!5120 lt!538680 lt!538671 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1186161 (= lt!538689 (getCurrentListMapNoExtraKeys!5120 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39238 0))(
  ( (Unit!39239) )
))
(declare-fun lt!538678 () Unit!39238)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!900 (array!76598 array!76600 (_ BitVec 32) (_ BitVec 32) V!45013 V!45013 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39238)

(assert (=> b!1186161 (= lt!538678 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!900 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186162 () Bool)

(declare-fun res!788609 () Bool)

(assert (=> b!1186162 (=> (not res!788609) (not e!674467))))

(assert (=> b!1186162 (= res!788609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186163 () Bool)

(declare-fun e!674464 () Bool)

(assert (=> b!1186163 (= e!674464 tp_is_empty!29915)))

(declare-fun b!1186165 () Bool)

(declare-fun res!788617 () Bool)

(assert (=> b!1186165 (=> (not res!788617) (not e!674467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186165 (= res!788617 (validMask!0 mask!1564))))

(declare-fun b!1186166 () Bool)

(declare-fun res!788615 () Bool)

(assert (=> b!1186166 (=> (not res!788615) (not e!674467))))

(assert (=> b!1186166 (= res!788615 (= (select (arr!36945 _keys!1208) i!673) k!934))))

(declare-fun b!1186167 () Bool)

(declare-fun res!788612 () Bool)

(assert (=> b!1186167 (=> (not res!788612) (not e!674467))))

(assert (=> b!1186167 (= res!788612 (and (= (size!37483 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37482 _keys!1208) (size!37483 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1186168 () Bool)

(declare-fun res!788622 () Bool)

(assert (=> b!1186168 (=> (not res!788622) (not e!674469))))

(declare-datatypes ((List!26154 0))(
  ( (Nil!26151) (Cons!26150 (h!27359 (_ BitVec 64)) (t!38538 List!26154)) )
))
(declare-fun arrayNoDuplicates!0 (array!76598 (_ BitVec 32) List!26154) Bool)

(assert (=> b!1186168 (= res!788622 (arrayNoDuplicates!0 lt!538680 #b00000000000000000000000000000000 Nil!26151))))

(declare-fun b!1186169 () Bool)

(declare-fun e!674462 () Bool)

(assert (=> b!1186169 (= e!674462 (and e!674464 mapRes!46700))))

(declare-fun condMapEmpty!46700 () Bool)

(declare-fun mapDefault!46700 () ValueCell!14248)

