; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97558 () Bool)

(assert start!97558)

(declare-fun b!1113391 () Bool)

(declare-fun e!634726 () Bool)

(assert (=> b!1113391 (= e!634726 (not true))))

(declare-datatypes ((array!72360 0))(
  ( (array!72361 (arr!34829 (Array (_ BitVec 32) (_ BitVec 64))) (size!35366 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72360)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113391 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36449 0))(
  ( (Unit!36450) )
))
(declare-fun lt!496646 () Unit!36449)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72360 (_ BitVec 64) (_ BitVec 32)) Unit!36449)

(assert (=> b!1113391 (= lt!496646 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1113392 () Bool)

(declare-fun res!743173 () Bool)

(declare-fun e!634725 () Bool)

(assert (=> b!1113392 (=> (not res!743173) (not e!634725))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113392 (= res!743173 (validMask!0 mask!1564))))

(declare-fun b!1113393 () Bool)

(declare-fun res!743181 () Bool)

(assert (=> b!1113393 (=> (not res!743181) (not e!634725))))

(assert (=> b!1113393 (= res!743181 (= (select (arr!34829 _keys!1208) i!673) k0!934))))

(declare-fun b!1113394 () Bool)

(declare-fun res!743180 () Bool)

(assert (=> b!1113394 (=> (not res!743180) (not e!634725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72360 (_ BitVec 32)) Bool)

(assert (=> b!1113394 (= res!743180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113395 () Bool)

(declare-fun e!634727 () Bool)

(declare-fun tp_is_empty!27753 () Bool)

(assert (=> b!1113395 (= e!634727 tp_is_empty!27753)))

(declare-fun b!1113396 () Bool)

(declare-fun e!634722 () Bool)

(assert (=> b!1113396 (= e!634722 tp_is_empty!27753)))

(declare-fun res!743174 () Bool)

(assert (=> start!97558 (=> (not res!743174) (not e!634725))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97558 (= res!743174 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35366 _keys!1208))))))

(assert (=> start!97558 e!634725))

(declare-fun array_inv!26648 (array!72360) Bool)

(assert (=> start!97558 (array_inv!26648 _keys!1208)))

(assert (=> start!97558 true))

(declare-datatypes ((V!42131 0))(
  ( (V!42132 (val!13933 Int)) )
))
(declare-datatypes ((ValueCell!13167 0))(
  ( (ValueCellFull!13167 (v!16567 V!42131)) (EmptyCell!13167) )
))
(declare-datatypes ((array!72362 0))(
  ( (array!72363 (arr!34830 (Array (_ BitVec 32) ValueCell!13167)) (size!35367 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72362)

(declare-fun e!634723 () Bool)

(declare-fun array_inv!26649 (array!72362) Bool)

(assert (=> start!97558 (and (array_inv!26649 _values!996) e!634723)))

(declare-fun b!1113397 () Bool)

(declare-fun res!743175 () Bool)

(assert (=> b!1113397 (=> (not res!743175) (not e!634725))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113397 (= res!743175 (and (= (size!35367 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35366 _keys!1208) (size!35367 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113398 () Bool)

(declare-fun mapRes!43447 () Bool)

(assert (=> b!1113398 (= e!634723 (and e!634722 mapRes!43447))))

(declare-fun condMapEmpty!43447 () Bool)

(declare-fun mapDefault!43447 () ValueCell!13167)

(assert (=> b!1113398 (= condMapEmpty!43447 (= (arr!34830 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13167)) mapDefault!43447)))))

(declare-fun mapNonEmpty!43447 () Bool)

(declare-fun tp!82692 () Bool)

(assert (=> mapNonEmpty!43447 (= mapRes!43447 (and tp!82692 e!634727))))

(declare-fun mapKey!43447 () (_ BitVec 32))

(declare-fun mapRest!43447 () (Array (_ BitVec 32) ValueCell!13167))

(declare-fun mapValue!43447 () ValueCell!13167)

(assert (=> mapNonEmpty!43447 (= (arr!34830 _values!996) (store mapRest!43447 mapKey!43447 mapValue!43447))))

(declare-fun b!1113399 () Bool)

(declare-fun res!743179 () Bool)

(assert (=> b!1113399 (=> (not res!743179) (not e!634725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113399 (= res!743179 (validKeyInArray!0 k0!934))))

(declare-fun b!1113400 () Bool)

(assert (=> b!1113400 (= e!634725 e!634726)))

(declare-fun res!743172 () Bool)

(assert (=> b!1113400 (=> (not res!743172) (not e!634726))))

(declare-fun lt!496647 () array!72360)

(assert (=> b!1113400 (= res!743172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496647 mask!1564))))

(assert (=> b!1113400 (= lt!496647 (array!72361 (store (arr!34829 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35366 _keys!1208)))))

(declare-fun b!1113401 () Bool)

(declare-fun res!743176 () Bool)

(assert (=> b!1113401 (=> (not res!743176) (not e!634725))))

(assert (=> b!1113401 (= res!743176 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35366 _keys!1208))))))

(declare-fun b!1113402 () Bool)

(declare-fun res!743178 () Bool)

(assert (=> b!1113402 (=> (not res!743178) (not e!634725))))

(declare-datatypes ((List!24418 0))(
  ( (Nil!24415) (Cons!24414 (h!25623 (_ BitVec 64)) (t!34906 List!24418)) )
))
(declare-fun arrayNoDuplicates!0 (array!72360 (_ BitVec 32) List!24418) Bool)

(assert (=> b!1113402 (= res!743178 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24415))))

(declare-fun mapIsEmpty!43447 () Bool)

(assert (=> mapIsEmpty!43447 mapRes!43447))

(declare-fun b!1113403 () Bool)

(declare-fun res!743177 () Bool)

(assert (=> b!1113403 (=> (not res!743177) (not e!634726))))

(assert (=> b!1113403 (= res!743177 (arrayNoDuplicates!0 lt!496647 #b00000000000000000000000000000000 Nil!24415))))

(assert (= (and start!97558 res!743174) b!1113392))

(assert (= (and b!1113392 res!743173) b!1113397))

(assert (= (and b!1113397 res!743175) b!1113394))

(assert (= (and b!1113394 res!743180) b!1113402))

(assert (= (and b!1113402 res!743178) b!1113401))

(assert (= (and b!1113401 res!743176) b!1113399))

(assert (= (and b!1113399 res!743179) b!1113393))

(assert (= (and b!1113393 res!743181) b!1113400))

(assert (= (and b!1113400 res!743172) b!1113403))

(assert (= (and b!1113403 res!743177) b!1113391))

(assert (= (and b!1113398 condMapEmpty!43447) mapIsEmpty!43447))

(assert (= (and b!1113398 (not condMapEmpty!43447)) mapNonEmpty!43447))

(get-info :version)

(assert (= (and mapNonEmpty!43447 ((_ is ValueCellFull!13167) mapValue!43447)) b!1113395))

(assert (= (and b!1113398 ((_ is ValueCellFull!13167) mapDefault!43447)) b!1113396))

(assert (= start!97558 b!1113398))

(declare-fun m!1030719 () Bool)

(assert (=> b!1113400 m!1030719))

(declare-fun m!1030721 () Bool)

(assert (=> b!1113400 m!1030721))

(declare-fun m!1030723 () Bool)

(assert (=> b!1113393 m!1030723))

(declare-fun m!1030725 () Bool)

(assert (=> b!1113402 m!1030725))

(declare-fun m!1030727 () Bool)

(assert (=> b!1113392 m!1030727))

(declare-fun m!1030729 () Bool)

(assert (=> b!1113394 m!1030729))

(declare-fun m!1030731 () Bool)

(assert (=> b!1113399 m!1030731))

(declare-fun m!1030733 () Bool)

(assert (=> b!1113391 m!1030733))

(declare-fun m!1030735 () Bool)

(assert (=> b!1113391 m!1030735))

(declare-fun m!1030737 () Bool)

(assert (=> b!1113403 m!1030737))

(declare-fun m!1030739 () Bool)

(assert (=> start!97558 m!1030739))

(declare-fun m!1030741 () Bool)

(assert (=> start!97558 m!1030741))

(declare-fun m!1030743 () Bool)

(assert (=> mapNonEmpty!43447 m!1030743))

(check-sat (not b!1113392) (not b!1113394) (not b!1113400) (not b!1113391) (not b!1113399) (not mapNonEmpty!43447) (not b!1113402) (not start!97558) tp_is_empty!27753 (not b!1113403))
(check-sat)
