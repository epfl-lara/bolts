; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97510 () Bool)

(assert start!97510)

(declare-fun mapNonEmpty!43375 () Bool)

(declare-fun mapRes!43375 () Bool)

(declare-fun tp!82620 () Bool)

(declare-fun e!634292 () Bool)

(assert (=> mapNonEmpty!43375 (= mapRes!43375 (and tp!82620 e!634292))))

(declare-datatypes ((V!42067 0))(
  ( (V!42068 (val!13909 Int)) )
))
(declare-datatypes ((ValueCell!13143 0))(
  ( (ValueCellFull!13143 (v!16543 V!42067)) (EmptyCell!13143) )
))
(declare-fun mapRest!43375 () (Array (_ BitVec 32) ValueCell!13143))

(declare-fun mapKey!43375 () (_ BitVec 32))

(declare-datatypes ((array!72266 0))(
  ( (array!72267 (arr!34782 (Array (_ BitVec 32) ValueCell!13143)) (size!35319 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72266)

(declare-fun mapValue!43375 () ValueCell!13143)

(assert (=> mapNonEmpty!43375 (= (arr!34782 _values!996) (store mapRest!43375 mapKey!43375 mapValue!43375))))

(declare-fun b!1112455 () Bool)

(declare-fun e!634291 () Bool)

(declare-fun tp_is_empty!27705 () Bool)

(assert (=> b!1112455 (= e!634291 tp_is_empty!27705)))

(declare-fun b!1112456 () Bool)

(declare-fun e!634295 () Bool)

(declare-fun e!634293 () Bool)

(assert (=> b!1112456 (= e!634295 e!634293)))

(declare-fun res!742460 () Bool)

(assert (=> b!1112456 (=> (not res!742460) (not e!634293))))

(declare-datatypes ((array!72268 0))(
  ( (array!72269 (arr!34783 (Array (_ BitVec 32) (_ BitVec 64))) (size!35320 (_ BitVec 32))) )
))
(declare-fun lt!496502 () array!72268)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72268 (_ BitVec 32)) Bool)

(assert (=> b!1112456 (= res!742460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496502 mask!1564))))

(declare-fun _keys!1208 () array!72268)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112456 (= lt!496502 (array!72269 (store (arr!34783 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35320 _keys!1208)))))

(declare-fun b!1112457 () Bool)

(declare-fun res!742461 () Bool)

(assert (=> b!1112457 (=> (not res!742461) (not e!634295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112457 (= res!742461 (validMask!0 mask!1564))))

(declare-fun b!1112458 () Bool)

(declare-fun res!742458 () Bool)

(assert (=> b!1112458 (=> (not res!742458) (not e!634293))))

(declare-datatypes ((List!24399 0))(
  ( (Nil!24396) (Cons!24395 (h!25604 (_ BitVec 64)) (t!34887 List!24399)) )
))
(declare-fun arrayNoDuplicates!0 (array!72268 (_ BitVec 32) List!24399) Bool)

(assert (=> b!1112458 (= res!742458 (arrayNoDuplicates!0 lt!496502 #b00000000000000000000000000000000 Nil!24396))))

(declare-fun b!1112459 () Bool)

(declare-fun e!634294 () Bool)

(assert (=> b!1112459 (= e!634294 (and e!634291 mapRes!43375))))

(declare-fun condMapEmpty!43375 () Bool)

(declare-fun mapDefault!43375 () ValueCell!13143)

(assert (=> b!1112459 (= condMapEmpty!43375 (= (arr!34782 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13143)) mapDefault!43375)))))

(declare-fun res!742453 () Bool)

(assert (=> start!97510 (=> (not res!742453) (not e!634295))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97510 (= res!742453 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35320 _keys!1208))))))

(assert (=> start!97510 e!634295))

(declare-fun array_inv!26618 (array!72268) Bool)

(assert (=> start!97510 (array_inv!26618 _keys!1208)))

(assert (=> start!97510 true))

(declare-fun array_inv!26619 (array!72266) Bool)

(assert (=> start!97510 (and (array_inv!26619 _values!996) e!634294)))

(declare-fun b!1112460 () Bool)

(declare-fun res!742456 () Bool)

(assert (=> b!1112460 (=> (not res!742456) (not e!634295))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1112460 (= res!742456 (and (= (size!35319 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35320 _keys!1208) (size!35319 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112461 () Bool)

(declare-fun res!742454 () Bool)

(assert (=> b!1112461 (=> (not res!742454) (not e!634295))))

(assert (=> b!1112461 (= res!742454 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35320 _keys!1208))))))

(declare-fun mapIsEmpty!43375 () Bool)

(assert (=> mapIsEmpty!43375 mapRes!43375))

(declare-fun b!1112462 () Bool)

(assert (=> b!1112462 (= e!634293 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112462 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36417 0))(
  ( (Unit!36418) )
))
(declare-fun lt!496503 () Unit!36417)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72268 (_ BitVec 64) (_ BitVec 32)) Unit!36417)

(assert (=> b!1112462 (= lt!496503 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1112463 () Bool)

(assert (=> b!1112463 (= e!634292 tp_is_empty!27705)))

(declare-fun b!1112464 () Bool)

(declare-fun res!742452 () Bool)

(assert (=> b!1112464 (=> (not res!742452) (not e!634295))))

(assert (=> b!1112464 (= res!742452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112465 () Bool)

(declare-fun res!742459 () Bool)

(assert (=> b!1112465 (=> (not res!742459) (not e!634295))))

(assert (=> b!1112465 (= res!742459 (= (select (arr!34783 _keys!1208) i!673) k0!934))))

(declare-fun b!1112466 () Bool)

(declare-fun res!742457 () Bool)

(assert (=> b!1112466 (=> (not res!742457) (not e!634295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112466 (= res!742457 (validKeyInArray!0 k0!934))))

(declare-fun b!1112467 () Bool)

(declare-fun res!742455 () Bool)

(assert (=> b!1112467 (=> (not res!742455) (not e!634295))))

(assert (=> b!1112467 (= res!742455 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24396))))

(assert (= (and start!97510 res!742453) b!1112457))

(assert (= (and b!1112457 res!742461) b!1112460))

(assert (= (and b!1112460 res!742456) b!1112464))

(assert (= (and b!1112464 res!742452) b!1112467))

(assert (= (and b!1112467 res!742455) b!1112461))

(assert (= (and b!1112461 res!742454) b!1112466))

(assert (= (and b!1112466 res!742457) b!1112465))

(assert (= (and b!1112465 res!742459) b!1112456))

(assert (= (and b!1112456 res!742460) b!1112458))

(assert (= (and b!1112458 res!742458) b!1112462))

(assert (= (and b!1112459 condMapEmpty!43375) mapIsEmpty!43375))

(assert (= (and b!1112459 (not condMapEmpty!43375)) mapNonEmpty!43375))

(get-info :version)

(assert (= (and mapNonEmpty!43375 ((_ is ValueCellFull!13143) mapValue!43375)) b!1112463))

(assert (= (and b!1112459 ((_ is ValueCellFull!13143) mapDefault!43375)) b!1112455))

(assert (= start!97510 b!1112459))

(declare-fun m!1030095 () Bool)

(assert (=> b!1112464 m!1030095))

(declare-fun m!1030097 () Bool)

(assert (=> b!1112458 m!1030097))

(declare-fun m!1030099 () Bool)

(assert (=> b!1112456 m!1030099))

(declare-fun m!1030101 () Bool)

(assert (=> b!1112456 m!1030101))

(declare-fun m!1030103 () Bool)

(assert (=> b!1112457 m!1030103))

(declare-fun m!1030105 () Bool)

(assert (=> b!1112466 m!1030105))

(declare-fun m!1030107 () Bool)

(assert (=> b!1112462 m!1030107))

(declare-fun m!1030109 () Bool)

(assert (=> b!1112462 m!1030109))

(declare-fun m!1030111 () Bool)

(assert (=> b!1112465 m!1030111))

(declare-fun m!1030113 () Bool)

(assert (=> b!1112467 m!1030113))

(declare-fun m!1030115 () Bool)

(assert (=> mapNonEmpty!43375 m!1030115))

(declare-fun m!1030117 () Bool)

(assert (=> start!97510 m!1030117))

(declare-fun m!1030119 () Bool)

(assert (=> start!97510 m!1030119))

(check-sat (not b!1112456) (not b!1112458) (not mapNonEmpty!43375) tp_is_empty!27705 (not start!97510) (not b!1112467) (not b!1112457) (not b!1112466) (not b!1112462) (not b!1112464))
(check-sat)
