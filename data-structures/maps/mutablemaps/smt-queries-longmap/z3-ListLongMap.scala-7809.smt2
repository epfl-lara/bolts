; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97636 () Bool)

(assert start!97636)

(declare-fun b!1114912 () Bool)

(declare-fun e!635429 () Bool)

(declare-fun tp_is_empty!27831 () Bool)

(assert (=> b!1114912 (= e!635429 tp_is_empty!27831)))

(declare-fun b!1114913 () Bool)

(declare-fun res!744350 () Bool)

(declare-fun e!635425 () Bool)

(assert (=> b!1114913 (=> (not res!744350) (not e!635425))))

(declare-datatypes ((array!72508 0))(
  ( (array!72509 (arr!34903 (Array (_ BitVec 32) (_ BitVec 64))) (size!35440 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72508)

(declare-datatypes ((List!24445 0))(
  ( (Nil!24442) (Cons!24441 (h!25650 (_ BitVec 64)) (t!34933 List!24445)) )
))
(declare-fun arrayNoDuplicates!0 (array!72508 (_ BitVec 32) List!24445) Bool)

(assert (=> b!1114913 (= res!744350 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24442))))

(declare-fun b!1114914 () Bool)

(declare-fun e!635428 () Bool)

(declare-fun e!635427 () Bool)

(declare-fun mapRes!43564 () Bool)

(assert (=> b!1114914 (= e!635428 (and e!635427 mapRes!43564))))

(declare-fun condMapEmpty!43564 () Bool)

(declare-datatypes ((V!42235 0))(
  ( (V!42236 (val!13972 Int)) )
))
(declare-datatypes ((ValueCell!13206 0))(
  ( (ValueCellFull!13206 (v!16606 V!42235)) (EmptyCell!13206) )
))
(declare-datatypes ((array!72510 0))(
  ( (array!72511 (arr!34904 (Array (_ BitVec 32) ValueCell!13206)) (size!35441 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72510)

(declare-fun mapDefault!43564 () ValueCell!13206)

(assert (=> b!1114914 (= condMapEmpty!43564 (= (arr!34904 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13206)) mapDefault!43564)))))

(declare-fun b!1114915 () Bool)

(declare-fun res!744344 () Bool)

(assert (=> b!1114915 (=> (not res!744344) (not e!635425))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114915 (= res!744344 (validKeyInArray!0 k0!934))))

(declare-fun b!1114916 () Bool)

(declare-fun res!744345 () Bool)

(assert (=> b!1114916 (=> (not res!744345) (not e!635425))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114916 (= res!744345 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35440 _keys!1208))))))

(declare-fun b!1114918 () Bool)

(declare-fun res!744348 () Bool)

(assert (=> b!1114918 (=> (not res!744348) (not e!635425))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1114918 (= res!744348 (and (= (size!35441 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35440 _keys!1208) (size!35441 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114919 () Bool)

(declare-fun res!744349 () Bool)

(assert (=> b!1114919 (=> (not res!744349) (not e!635425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114919 (= res!744349 (validMask!0 mask!1564))))

(declare-fun b!1114920 () Bool)

(declare-fun res!744351 () Bool)

(assert (=> b!1114920 (=> (not res!744351) (not e!635425))))

(assert (=> b!1114920 (= res!744351 (= (select (arr!34903 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43564 () Bool)

(assert (=> mapIsEmpty!43564 mapRes!43564))

(declare-fun b!1114921 () Bool)

(assert (=> b!1114921 (= e!635427 tp_is_empty!27831)))

(declare-fun mapNonEmpty!43564 () Bool)

(declare-fun tp!82809 () Bool)

(assert (=> mapNonEmpty!43564 (= mapRes!43564 (and tp!82809 e!635429))))

(declare-fun mapValue!43564 () ValueCell!13206)

(declare-fun mapKey!43564 () (_ BitVec 32))

(declare-fun mapRest!43564 () (Array (_ BitVec 32) ValueCell!13206))

(assert (=> mapNonEmpty!43564 (= (arr!34904 _values!996) (store mapRest!43564 mapKey!43564 mapValue!43564))))

(declare-fun res!744346 () Bool)

(assert (=> start!97636 (=> (not res!744346) (not e!635425))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97636 (= res!744346 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35440 _keys!1208))))))

(assert (=> start!97636 e!635425))

(declare-fun array_inv!26700 (array!72508) Bool)

(assert (=> start!97636 (array_inv!26700 _keys!1208)))

(assert (=> start!97636 true))

(declare-fun array_inv!26701 (array!72510) Bool)

(assert (=> start!97636 (and (array_inv!26701 _values!996) e!635428)))

(declare-fun b!1114917 () Bool)

(declare-fun e!635426 () Bool)

(assert (=> b!1114917 (= e!635425 e!635426)))

(declare-fun res!744347 () Bool)

(assert (=> b!1114917 (=> (not res!744347) (not e!635426))))

(declare-fun lt!496880 () array!72508)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72508 (_ BitVec 32)) Bool)

(assert (=> b!1114917 (= res!744347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496880 mask!1564))))

(assert (=> b!1114917 (= lt!496880 (array!72509 (store (arr!34903 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35440 _keys!1208)))))

(declare-fun b!1114922 () Bool)

(declare-fun res!744342 () Bool)

(assert (=> b!1114922 (=> (not res!744342) (not e!635425))))

(assert (=> b!1114922 (= res!744342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114923 () Bool)

(assert (=> b!1114923 (= e!635426 (not true))))

(declare-fun arrayContainsKey!0 (array!72508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114923 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36497 0))(
  ( (Unit!36498) )
))
(declare-fun lt!496881 () Unit!36497)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72508 (_ BitVec 64) (_ BitVec 32)) Unit!36497)

(assert (=> b!1114923 (= lt!496881 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1114924 () Bool)

(declare-fun res!744343 () Bool)

(assert (=> b!1114924 (=> (not res!744343) (not e!635426))))

(assert (=> b!1114924 (= res!744343 (arrayNoDuplicates!0 lt!496880 #b00000000000000000000000000000000 Nil!24442))))

(assert (= (and start!97636 res!744346) b!1114919))

(assert (= (and b!1114919 res!744349) b!1114918))

(assert (= (and b!1114918 res!744348) b!1114922))

(assert (= (and b!1114922 res!744342) b!1114913))

(assert (= (and b!1114913 res!744350) b!1114916))

(assert (= (and b!1114916 res!744345) b!1114915))

(assert (= (and b!1114915 res!744344) b!1114920))

(assert (= (and b!1114920 res!744351) b!1114917))

(assert (= (and b!1114917 res!744347) b!1114924))

(assert (= (and b!1114924 res!744343) b!1114923))

(assert (= (and b!1114914 condMapEmpty!43564) mapIsEmpty!43564))

(assert (= (and b!1114914 (not condMapEmpty!43564)) mapNonEmpty!43564))

(get-info :version)

(assert (= (and mapNonEmpty!43564 ((_ is ValueCellFull!13206) mapValue!43564)) b!1114912))

(assert (= (and b!1114914 ((_ is ValueCellFull!13206) mapDefault!43564)) b!1114921))

(assert (= start!97636 b!1114914))

(declare-fun m!1031733 () Bool)

(assert (=> mapNonEmpty!43564 m!1031733))

(declare-fun m!1031735 () Bool)

(assert (=> b!1114913 m!1031735))

(declare-fun m!1031737 () Bool)

(assert (=> start!97636 m!1031737))

(declare-fun m!1031739 () Bool)

(assert (=> start!97636 m!1031739))

(declare-fun m!1031741 () Bool)

(assert (=> b!1114915 m!1031741))

(declare-fun m!1031743 () Bool)

(assert (=> b!1114924 m!1031743))

(declare-fun m!1031745 () Bool)

(assert (=> b!1114919 m!1031745))

(declare-fun m!1031747 () Bool)

(assert (=> b!1114917 m!1031747))

(declare-fun m!1031749 () Bool)

(assert (=> b!1114917 m!1031749))

(declare-fun m!1031751 () Bool)

(assert (=> b!1114922 m!1031751))

(declare-fun m!1031753 () Bool)

(assert (=> b!1114923 m!1031753))

(declare-fun m!1031755 () Bool)

(assert (=> b!1114923 m!1031755))

(declare-fun m!1031757 () Bool)

(assert (=> b!1114920 m!1031757))

(check-sat (not b!1114922) (not b!1114913) (not b!1114915) (not start!97636) (not mapNonEmpty!43564) (not b!1114924) (not b!1114919) (not b!1114917) (not b!1114923) tp_is_empty!27831)
(check-sat)
