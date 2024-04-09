; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97822 () Bool)

(assert start!97822)

(declare-fun b_free!23487 () Bool)

(declare-fun b_next!23487 () Bool)

(assert (=> start!97822 (= b_free!23487 (not b_next!23487))))

(declare-fun tp!83166 () Bool)

(declare-fun b_and!37783 () Bool)

(assert (=> start!97822 (= tp!83166 b_and!37783)))

(declare-fun b!1118616 () Bool)

(declare-fun e!637176 () Bool)

(declare-fun tp_is_empty!28017 () Bool)

(assert (=> b!1118616 (= e!637176 tp_is_empty!28017)))

(declare-fun mapNonEmpty!43843 () Bool)

(declare-fun mapRes!43843 () Bool)

(declare-fun tp!83165 () Bool)

(declare-fun e!637177 () Bool)

(assert (=> mapNonEmpty!43843 (= mapRes!43843 (and tp!83165 e!637177))))

(declare-datatypes ((V!42483 0))(
  ( (V!42484 (val!14065 Int)) )
))
(declare-datatypes ((ValueCell!13299 0))(
  ( (ValueCellFull!13299 (v!16699 V!42483)) (EmptyCell!13299) )
))
(declare-fun mapRest!43843 () (Array (_ BitVec 32) ValueCell!13299))

(declare-fun mapKey!43843 () (_ BitVec 32))

(declare-fun mapValue!43843 () ValueCell!13299)

(declare-datatypes ((array!72862 0))(
  ( (array!72863 (arr!35080 (Array (_ BitVec 32) ValueCell!13299)) (size!35617 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72862)

(assert (=> mapNonEmpty!43843 (= (arr!35080 _values!996) (store mapRest!43843 mapKey!43843 mapValue!43843))))

(declare-fun b!1118617 () Bool)

(declare-fun e!637179 () Bool)

(declare-fun e!637175 () Bool)

(assert (=> b!1118617 (= e!637179 e!637175)))

(declare-fun res!747214 () Bool)

(assert (=> b!1118617 (=> (not res!747214) (not e!637175))))

(declare-datatypes ((array!72864 0))(
  ( (array!72865 (arr!35081 (Array (_ BitVec 32) (_ BitVec 64))) (size!35618 (_ BitVec 32))) )
))
(declare-fun lt!497517 () array!72864)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72864 (_ BitVec 32)) Bool)

(assert (=> b!1118617 (= res!747214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497517 mask!1564))))

(declare-fun _keys!1208 () array!72864)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118617 (= lt!497517 (array!72865 (store (arr!35081 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35618 _keys!1208)))))

(declare-fun b!1118618 () Bool)

(declare-fun res!747211 () Bool)

(assert (=> b!1118618 (=> (not res!747211) (not e!637179))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1118618 (= res!747211 (= (select (arr!35081 _keys!1208) i!673) k0!934))))

(declare-fun b!1118619 () Bool)

(declare-fun e!637180 () Bool)

(assert (=> b!1118619 (= e!637175 (not e!637180))))

(declare-fun res!747216 () Bool)

(assert (=> b!1118619 (=> res!747216 e!637180)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1118619 (= res!747216 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118619 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36621 0))(
  ( (Unit!36622) )
))
(declare-fun lt!497515 () Unit!36621)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72864 (_ BitVec 64) (_ BitVec 32)) Unit!36621)

(assert (=> b!1118619 (= lt!497515 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1118620 () Bool)

(declare-fun res!747217 () Bool)

(assert (=> b!1118620 (=> (not res!747217) (not e!637179))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1118620 (= res!747217 (and (= (size!35617 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35618 _keys!1208) (size!35617 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118621 () Bool)

(declare-fun res!747210 () Bool)

(assert (=> b!1118621 (=> (not res!747210) (not e!637179))))

(declare-datatypes ((List!24533 0))(
  ( (Nil!24530) (Cons!24529 (h!25738 (_ BitVec 64)) (t!35021 List!24533)) )
))
(declare-fun arrayNoDuplicates!0 (array!72864 (_ BitVec 32) List!24533) Bool)

(assert (=> b!1118621 (= res!747210 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24530))))

(declare-fun b!1118622 () Bool)

(declare-fun e!637181 () Bool)

(assert (=> b!1118622 (= e!637181 (and e!637176 mapRes!43843))))

(declare-fun condMapEmpty!43843 () Bool)

(declare-fun mapDefault!43843 () ValueCell!13299)

(assert (=> b!1118622 (= condMapEmpty!43843 (= (arr!35080 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13299)) mapDefault!43843)))))

(declare-fun b!1118623 () Bool)

(declare-fun res!747213 () Bool)

(assert (=> b!1118623 (=> (not res!747213) (not e!637179))))

(assert (=> b!1118623 (= res!747213 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35618 _keys!1208))))))

(declare-fun b!1118624 () Bool)

(declare-fun res!747218 () Bool)

(assert (=> b!1118624 (=> (not res!747218) (not e!637179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118624 (= res!747218 (validMask!0 mask!1564))))

(declare-fun res!747209 () Bool)

(assert (=> start!97822 (=> (not res!747209) (not e!637179))))

(assert (=> start!97822 (= res!747209 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35618 _keys!1208))))))

(assert (=> start!97822 e!637179))

(assert (=> start!97822 tp_is_empty!28017))

(declare-fun array_inv!26818 (array!72864) Bool)

(assert (=> start!97822 (array_inv!26818 _keys!1208)))

(assert (=> start!97822 true))

(assert (=> start!97822 tp!83166))

(declare-fun array_inv!26819 (array!72862) Bool)

(assert (=> start!97822 (and (array_inv!26819 _values!996) e!637181)))

(declare-fun mapIsEmpty!43843 () Bool)

(assert (=> mapIsEmpty!43843 mapRes!43843))

(declare-fun b!1118625 () Bool)

(declare-fun res!747215 () Bool)

(assert (=> b!1118625 (=> (not res!747215) (not e!637179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118625 (= res!747215 (validKeyInArray!0 k0!934))))

(declare-fun b!1118626 () Bool)

(assert (=> b!1118626 (= e!637180 true)))

(declare-fun zeroValue!944 () V!42483)

(declare-datatypes ((tuple2!17696 0))(
  ( (tuple2!17697 (_1!8858 (_ BitVec 64)) (_2!8858 V!42483)) )
))
(declare-datatypes ((List!24534 0))(
  ( (Nil!24531) (Cons!24530 (h!25739 tuple2!17696) (t!35022 List!24534)) )
))
(declare-datatypes ((ListLongMap!15677 0))(
  ( (ListLongMap!15678 (toList!7854 List!24534)) )
))
(declare-fun lt!497516 () ListLongMap!15677)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42483)

(declare-fun getCurrentListMapNoExtraKeys!4315 (array!72864 array!72862 (_ BitVec 32) (_ BitVec 32) V!42483 V!42483 (_ BitVec 32) Int) ListLongMap!15677)

(assert (=> b!1118626 (= lt!497516 (getCurrentListMapNoExtraKeys!4315 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118627 () Bool)

(declare-fun res!747212 () Bool)

(assert (=> b!1118627 (=> (not res!747212) (not e!637175))))

(assert (=> b!1118627 (= res!747212 (arrayNoDuplicates!0 lt!497517 #b00000000000000000000000000000000 Nil!24530))))

(declare-fun b!1118628 () Bool)

(assert (=> b!1118628 (= e!637177 tp_is_empty!28017)))

(declare-fun b!1118629 () Bool)

(declare-fun res!747219 () Bool)

(assert (=> b!1118629 (=> (not res!747219) (not e!637179))))

(assert (=> b!1118629 (= res!747219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97822 res!747209) b!1118624))

(assert (= (and b!1118624 res!747218) b!1118620))

(assert (= (and b!1118620 res!747217) b!1118629))

(assert (= (and b!1118629 res!747219) b!1118621))

(assert (= (and b!1118621 res!747210) b!1118623))

(assert (= (and b!1118623 res!747213) b!1118625))

(assert (= (and b!1118625 res!747215) b!1118618))

(assert (= (and b!1118618 res!747211) b!1118617))

(assert (= (and b!1118617 res!747214) b!1118627))

(assert (= (and b!1118627 res!747212) b!1118619))

(assert (= (and b!1118619 (not res!747216)) b!1118626))

(assert (= (and b!1118622 condMapEmpty!43843) mapIsEmpty!43843))

(assert (= (and b!1118622 (not condMapEmpty!43843)) mapNonEmpty!43843))

(get-info :version)

(assert (= (and mapNonEmpty!43843 ((_ is ValueCellFull!13299) mapValue!43843)) b!1118628))

(assert (= (and b!1118622 ((_ is ValueCellFull!13299) mapDefault!43843)) b!1118616))

(assert (= start!97822 b!1118622))

(declare-fun m!1034201 () Bool)

(assert (=> mapNonEmpty!43843 m!1034201))

(declare-fun m!1034203 () Bool)

(assert (=> start!97822 m!1034203))

(declare-fun m!1034205 () Bool)

(assert (=> start!97822 m!1034205))

(declare-fun m!1034207 () Bool)

(assert (=> b!1118618 m!1034207))

(declare-fun m!1034209 () Bool)

(assert (=> b!1118617 m!1034209))

(declare-fun m!1034211 () Bool)

(assert (=> b!1118617 m!1034211))

(declare-fun m!1034213 () Bool)

(assert (=> b!1118629 m!1034213))

(declare-fun m!1034215 () Bool)

(assert (=> b!1118624 m!1034215))

(declare-fun m!1034217 () Bool)

(assert (=> b!1118619 m!1034217))

(declare-fun m!1034219 () Bool)

(assert (=> b!1118619 m!1034219))

(declare-fun m!1034221 () Bool)

(assert (=> b!1118625 m!1034221))

(declare-fun m!1034223 () Bool)

(assert (=> b!1118627 m!1034223))

(declare-fun m!1034225 () Bool)

(assert (=> b!1118621 m!1034225))

(declare-fun m!1034227 () Bool)

(assert (=> b!1118626 m!1034227))

(check-sat (not b!1118626) tp_is_empty!28017 (not b!1118625) (not b!1118621) (not b_next!23487) b_and!37783 (not b!1118624) (not start!97822) (not b!1118617) (not b!1118619) (not b!1118627) (not mapNonEmpty!43843) (not b!1118629))
(check-sat b_and!37783 (not b_next!23487))
