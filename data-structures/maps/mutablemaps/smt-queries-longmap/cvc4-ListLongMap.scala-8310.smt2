; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101248 () Bool)

(assert start!101248)

(declare-fun b_free!26135 () Bool)

(declare-fun b_next!26135 () Bool)

(assert (=> start!101248 (= b_free!26135 (not b_next!26135))))

(declare-fun tp!91427 () Bool)

(declare-fun b_and!43397 () Bool)

(assert (=> start!101248 (= tp!91427 b_and!43397)))

(declare-fun b!1215168 () Bool)

(declare-fun res!806904 () Bool)

(declare-fun e!690048 () Bool)

(assert (=> b!1215168 (=> (not res!806904) (not e!690048))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78432 0))(
  ( (array!78433 (arr!37847 (Array (_ BitVec 32) (_ BitVec 64))) (size!38384 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78432)

(assert (=> b!1215168 (= res!806904 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38384 _keys!1208))))))

(declare-fun b!1215169 () Bool)

(declare-fun res!806899 () Bool)

(assert (=> b!1215169 (=> (not res!806899) (not e!690048))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215169 (= res!806899 (validMask!0 mask!1564))))

(declare-fun res!806906 () Bool)

(assert (=> start!101248 (=> (not res!806906) (not e!690048))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101248 (= res!806906 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38384 _keys!1208))))))

(assert (=> start!101248 e!690048))

(declare-fun tp_is_empty!30839 () Bool)

(assert (=> start!101248 tp_is_empty!30839))

(declare-fun array_inv!28720 (array!78432) Bool)

(assert (=> start!101248 (array_inv!28720 _keys!1208)))

(assert (=> start!101248 true))

(assert (=> start!101248 tp!91427))

(declare-datatypes ((V!46245 0))(
  ( (V!46246 (val!15476 Int)) )
))
(declare-datatypes ((ValueCell!14710 0))(
  ( (ValueCellFull!14710 (v!18130 V!46245)) (EmptyCell!14710) )
))
(declare-datatypes ((array!78434 0))(
  ( (array!78435 (arr!37848 (Array (_ BitVec 32) ValueCell!14710)) (size!38385 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78434)

(declare-fun e!690051 () Bool)

(declare-fun array_inv!28721 (array!78434) Bool)

(assert (=> start!101248 (and (array_inv!28721 _values!996) e!690051)))

(declare-fun b!1215170 () Bool)

(declare-fun e!690049 () Bool)

(declare-fun e!690045 () Bool)

(assert (=> b!1215170 (= e!690049 (not e!690045))))

(declare-fun res!806902 () Bool)

(assert (=> b!1215170 (=> res!806902 e!690045)))

(assert (=> b!1215170 (= res!806902 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215170 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40228 0))(
  ( (Unit!40229) )
))
(declare-fun lt!552500 () Unit!40228)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78432 (_ BitVec 64) (_ BitVec 32)) Unit!40228)

(assert (=> b!1215170 (= lt!552500 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1215171 () Bool)

(declare-fun res!806905 () Bool)

(assert (=> b!1215171 (=> (not res!806905) (not e!690049))))

(declare-fun lt!552503 () array!78432)

(declare-datatypes ((List!26851 0))(
  ( (Nil!26848) (Cons!26847 (h!28056 (_ BitVec 64)) (t!39973 List!26851)) )
))
(declare-fun arrayNoDuplicates!0 (array!78432 (_ BitVec 32) List!26851) Bool)

(assert (=> b!1215171 (= res!806905 (arrayNoDuplicates!0 lt!552503 #b00000000000000000000000000000000 Nil!26848))))

(declare-fun b!1215172 () Bool)

(assert (=> b!1215172 (= e!690048 e!690049)))

(declare-fun res!806901 () Bool)

(assert (=> b!1215172 (=> (not res!806901) (not e!690049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78432 (_ BitVec 32)) Bool)

(assert (=> b!1215172 (= res!806901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552503 mask!1564))))

(assert (=> b!1215172 (= lt!552503 (array!78433 (store (arr!37847 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38384 _keys!1208)))))

(declare-fun b!1215173 () Bool)

(declare-fun res!806908 () Bool)

(assert (=> b!1215173 (=> (not res!806908) (not e!690048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215173 (= res!806908 (validKeyInArray!0 k!934))))

(declare-fun b!1215174 () Bool)

(declare-fun res!806907 () Bool)

(assert (=> b!1215174 (=> (not res!806907) (not e!690048))))

(assert (=> b!1215174 (= res!806907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48133 () Bool)

(declare-fun mapRes!48133 () Bool)

(declare-fun tp!91428 () Bool)

(declare-fun e!690047 () Bool)

(assert (=> mapNonEmpty!48133 (= mapRes!48133 (and tp!91428 e!690047))))

(declare-fun mapKey!48133 () (_ BitVec 32))

(declare-fun mapValue!48133 () ValueCell!14710)

(declare-fun mapRest!48133 () (Array (_ BitVec 32) ValueCell!14710))

(assert (=> mapNonEmpty!48133 (= (arr!37848 _values!996) (store mapRest!48133 mapKey!48133 mapValue!48133))))

(declare-fun b!1215175 () Bool)

(declare-fun res!806898 () Bool)

(assert (=> b!1215175 (=> (not res!806898) (not e!690048))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1215175 (= res!806898 (and (= (size!38385 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38384 _keys!1208) (size!38385 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215176 () Bool)

(declare-fun res!806900 () Bool)

(assert (=> b!1215176 (=> (not res!806900) (not e!690048))))

(assert (=> b!1215176 (= res!806900 (= (select (arr!37847 _keys!1208) i!673) k!934))))

(declare-fun b!1215177 () Bool)

(declare-fun e!690046 () Bool)

(assert (=> b!1215177 (= e!690051 (and e!690046 mapRes!48133))))

(declare-fun condMapEmpty!48133 () Bool)

(declare-fun mapDefault!48133 () ValueCell!14710)

