; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97216 () Bool)

(assert start!97216)

(declare-fun mapIsEmpty!42934 () Bool)

(declare-fun mapRes!42934 () Bool)

(assert (=> mapIsEmpty!42934 mapRes!42934))

(declare-fun b!1105474 () Bool)

(declare-fun e!630966 () Bool)

(declare-fun tp_is_empty!27411 () Bool)

(assert (=> b!1105474 (= e!630966 tp_is_empty!27411)))

(declare-fun b!1105475 () Bool)

(declare-fun res!737723 () Bool)

(declare-fun e!630970 () Bool)

(assert (=> b!1105475 (=> (not res!737723) (not e!630970))))

(declare-datatypes ((array!71694 0))(
  ( (array!71695 (arr!34496 (Array (_ BitVec 32) (_ BitVec 64))) (size!35033 (_ BitVec 32))) )
))
(declare-fun lt!495296 () array!71694)

(declare-datatypes ((List!24196 0))(
  ( (Nil!24193) (Cons!24192 (h!25401 (_ BitVec 64)) (t!34468 List!24196)) )
))
(declare-fun arrayNoDuplicates!0 (array!71694 (_ BitVec 32) List!24196) Bool)

(assert (=> b!1105475 (= res!737723 (arrayNoDuplicates!0 lt!495296 #b00000000000000000000000000000000 Nil!24193))))

(declare-fun b!1105476 () Bool)

(declare-fun res!737727 () Bool)

(declare-fun e!630967 () Bool)

(assert (=> b!1105476 (=> (not res!737727) (not e!630967))))

(declare-fun _keys!1208 () array!71694)

(assert (=> b!1105476 (= res!737727 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24193))))

(declare-fun b!1105477 () Bool)

(declare-fun res!737720 () Bool)

(assert (=> b!1105477 (=> (not res!737720) (not e!630967))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1105477 (= res!737720 (= (select (arr!34496 _keys!1208) i!673) k0!934))))

(declare-fun b!1105478 () Bool)

(assert (=> b!1105478 (= e!630967 e!630970)))

(declare-fun res!737724 () Bool)

(assert (=> b!1105478 (=> (not res!737724) (not e!630970))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71694 (_ BitVec 32)) Bool)

(assert (=> b!1105478 (= res!737724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495296 mask!1564))))

(assert (=> b!1105478 (= lt!495296 (array!71695 (store (arr!34496 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35033 _keys!1208)))))

(declare-fun b!1105480 () Bool)

(declare-fun res!737721 () Bool)

(assert (=> b!1105480 (=> (not res!737721) (not e!630967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105480 (= res!737721 (validKeyInArray!0 k0!934))))

(declare-fun b!1105481 () Bool)

(declare-fun res!737718 () Bool)

(assert (=> b!1105481 (=> (not res!737718) (not e!630967))))

(assert (=> b!1105481 (= res!737718 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35033 _keys!1208))))))

(declare-fun b!1105482 () Bool)

(declare-fun res!737725 () Bool)

(assert (=> b!1105482 (=> (not res!737725) (not e!630967))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41675 0))(
  ( (V!41676 (val!13762 Int)) )
))
(declare-datatypes ((ValueCell!12996 0))(
  ( (ValueCellFull!12996 (v!16396 V!41675)) (EmptyCell!12996) )
))
(declare-datatypes ((array!71696 0))(
  ( (array!71697 (arr!34497 (Array (_ BitVec 32) ValueCell!12996)) (size!35034 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71696)

(assert (=> b!1105482 (= res!737725 (and (= (size!35034 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35033 _keys!1208) (size!35034 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105483 () Bool)

(declare-fun e!630971 () Bool)

(declare-fun e!630969 () Bool)

(assert (=> b!1105483 (= e!630971 (and e!630969 mapRes!42934))))

(declare-fun condMapEmpty!42934 () Bool)

(declare-fun mapDefault!42934 () ValueCell!12996)

(assert (=> b!1105483 (= condMapEmpty!42934 (= (arr!34497 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12996)) mapDefault!42934)))))

(declare-fun mapNonEmpty!42934 () Bool)

(declare-fun tp!81855 () Bool)

(assert (=> mapNonEmpty!42934 (= mapRes!42934 (and tp!81855 e!630966))))

(declare-fun mapRest!42934 () (Array (_ BitVec 32) ValueCell!12996))

(declare-fun mapKey!42934 () (_ BitVec 32))

(declare-fun mapValue!42934 () ValueCell!12996)

(assert (=> mapNonEmpty!42934 (= (arr!34497 _values!996) (store mapRest!42934 mapKey!42934 mapValue!42934))))

(declare-fun b!1105479 () Bool)

(assert (=> b!1105479 (= e!630970 (not true))))

(declare-fun arrayContainsKey!0 (array!71694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105479 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36211 0))(
  ( (Unit!36212) )
))
(declare-fun lt!495297 () Unit!36211)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71694 (_ BitVec 64) (_ BitVec 32)) Unit!36211)

(assert (=> b!1105479 (= lt!495297 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!737722 () Bool)

(assert (=> start!97216 (=> (not res!737722) (not e!630967))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97216 (= res!737722 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35033 _keys!1208))))))

(assert (=> start!97216 e!630967))

(declare-fun array_inv!26412 (array!71694) Bool)

(assert (=> start!97216 (array_inv!26412 _keys!1208)))

(assert (=> start!97216 true))

(declare-fun array_inv!26413 (array!71696) Bool)

(assert (=> start!97216 (and (array_inv!26413 _values!996) e!630971)))

(declare-fun b!1105484 () Bool)

(declare-fun res!737726 () Bool)

(assert (=> b!1105484 (=> (not res!737726) (not e!630967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105484 (= res!737726 (validMask!0 mask!1564))))

(declare-fun b!1105485 () Bool)

(declare-fun res!737719 () Bool)

(assert (=> b!1105485 (=> (not res!737719) (not e!630967))))

(assert (=> b!1105485 (= res!737719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105486 () Bool)

(assert (=> b!1105486 (= e!630969 tp_is_empty!27411)))

(assert (= (and start!97216 res!737722) b!1105484))

(assert (= (and b!1105484 res!737726) b!1105482))

(assert (= (and b!1105482 res!737725) b!1105485))

(assert (= (and b!1105485 res!737719) b!1105476))

(assert (= (and b!1105476 res!737727) b!1105481))

(assert (= (and b!1105481 res!737718) b!1105480))

(assert (= (and b!1105480 res!737721) b!1105477))

(assert (= (and b!1105477 res!737720) b!1105478))

(assert (= (and b!1105478 res!737724) b!1105475))

(assert (= (and b!1105475 res!737723) b!1105479))

(assert (= (and b!1105483 condMapEmpty!42934) mapIsEmpty!42934))

(assert (= (and b!1105483 (not condMapEmpty!42934)) mapNonEmpty!42934))

(get-info :version)

(assert (= (and mapNonEmpty!42934 ((_ is ValueCellFull!12996) mapValue!42934)) b!1105474))

(assert (= (and b!1105483 ((_ is ValueCellFull!12996) mapDefault!42934)) b!1105486))

(assert (= start!97216 b!1105483))

(declare-fun m!1024977 () Bool)

(assert (=> start!97216 m!1024977))

(declare-fun m!1024979 () Bool)

(assert (=> start!97216 m!1024979))

(declare-fun m!1024981 () Bool)

(assert (=> b!1105475 m!1024981))

(declare-fun m!1024983 () Bool)

(assert (=> b!1105484 m!1024983))

(declare-fun m!1024985 () Bool)

(assert (=> b!1105477 m!1024985))

(declare-fun m!1024987 () Bool)

(assert (=> mapNonEmpty!42934 m!1024987))

(declare-fun m!1024989 () Bool)

(assert (=> b!1105478 m!1024989))

(declare-fun m!1024991 () Bool)

(assert (=> b!1105478 m!1024991))

(declare-fun m!1024993 () Bool)

(assert (=> b!1105479 m!1024993))

(declare-fun m!1024995 () Bool)

(assert (=> b!1105479 m!1024995))

(declare-fun m!1024997 () Bool)

(assert (=> b!1105480 m!1024997))

(declare-fun m!1024999 () Bool)

(assert (=> b!1105485 m!1024999))

(declare-fun m!1025001 () Bool)

(assert (=> b!1105476 m!1025001))

(check-sat (not mapNonEmpty!42934) (not b!1105485) (not b!1105480) (not b!1105479) (not b!1105476) (not start!97216) (not b!1105484) tp_is_empty!27411 (not b!1105475) (not b!1105478))
(check-sat)
