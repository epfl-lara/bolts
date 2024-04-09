; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97708 () Bool)

(assert start!97708)

(declare-fun b!1116316 () Bool)

(declare-fun e!636072 () Bool)

(declare-fun e!636073 () Bool)

(assert (=> b!1116316 (= e!636072 e!636073)))

(declare-fun res!745431 () Bool)

(assert (=> b!1116316 (=> (not res!745431) (not e!636073))))

(declare-datatypes ((array!72646 0))(
  ( (array!72647 (arr!34972 (Array (_ BitVec 32) (_ BitVec 64))) (size!35509 (_ BitVec 32))) )
))
(declare-fun lt!497096 () array!72646)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72646 (_ BitVec 32)) Bool)

(assert (=> b!1116316 (= res!745431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497096 mask!1564))))

(declare-fun _keys!1208 () array!72646)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116316 (= lt!497096 (array!72647 (store (arr!34972 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35509 _keys!1208)))))

(declare-fun b!1116317 () Bool)

(assert (=> b!1116317 (= e!636073 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116317 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36539 0))(
  ( (Unit!36540) )
))
(declare-fun lt!497097 () Unit!36539)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72646 (_ BitVec 64) (_ BitVec 32)) Unit!36539)

(assert (=> b!1116317 (= lt!497097 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!43672 () Bool)

(declare-fun mapRes!43672 () Bool)

(declare-fun tp!82917 () Bool)

(declare-fun e!636075 () Bool)

(assert (=> mapNonEmpty!43672 (= mapRes!43672 (and tp!82917 e!636075))))

(declare-datatypes ((V!42331 0))(
  ( (V!42332 (val!14008 Int)) )
))
(declare-datatypes ((ValueCell!13242 0))(
  ( (ValueCellFull!13242 (v!16642 V!42331)) (EmptyCell!13242) )
))
(declare-fun mapValue!43672 () ValueCell!13242)

(declare-datatypes ((array!72648 0))(
  ( (array!72649 (arr!34973 (Array (_ BitVec 32) ValueCell!13242)) (size!35510 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72648)

(declare-fun mapRest!43672 () (Array (_ BitVec 32) ValueCell!13242))

(declare-fun mapKey!43672 () (_ BitVec 32))

(assert (=> mapNonEmpty!43672 (= (arr!34973 _values!996) (store mapRest!43672 mapKey!43672 mapValue!43672))))

(declare-fun res!745428 () Bool)

(assert (=> start!97708 (=> (not res!745428) (not e!636072))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97708 (= res!745428 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35509 _keys!1208))))))

(assert (=> start!97708 e!636072))

(declare-fun array_inv!26738 (array!72646) Bool)

(assert (=> start!97708 (array_inv!26738 _keys!1208)))

(assert (=> start!97708 true))

(declare-fun e!636074 () Bool)

(declare-fun array_inv!26739 (array!72648) Bool)

(assert (=> start!97708 (and (array_inv!26739 _values!996) e!636074)))

(declare-fun b!1116318 () Bool)

(declare-fun tp_is_empty!27903 () Bool)

(assert (=> b!1116318 (= e!636075 tp_is_empty!27903)))

(declare-fun b!1116319 () Bool)

(declare-fun res!745424 () Bool)

(assert (=> b!1116319 (=> (not res!745424) (not e!636072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116319 (= res!745424 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!43672 () Bool)

(assert (=> mapIsEmpty!43672 mapRes!43672))

(declare-fun b!1116320 () Bool)

(declare-fun res!745429 () Bool)

(assert (=> b!1116320 (=> (not res!745429) (not e!636072))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116320 (= res!745429 (and (= (size!35510 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35509 _keys!1208) (size!35510 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116321 () Bool)

(declare-fun res!745423 () Bool)

(assert (=> b!1116321 (=> (not res!745423) (not e!636072))))

(assert (=> b!1116321 (= res!745423 (= (select (arr!34972 _keys!1208) i!673) k0!934))))

(declare-fun b!1116322 () Bool)

(declare-fun res!745425 () Bool)

(assert (=> b!1116322 (=> (not res!745425) (not e!636072))))

(assert (=> b!1116322 (= res!745425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116323 () Bool)

(declare-fun res!745422 () Bool)

(assert (=> b!1116323 (=> (not res!745422) (not e!636072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116323 (= res!745422 (validMask!0 mask!1564))))

(declare-fun b!1116324 () Bool)

(declare-fun res!745427 () Bool)

(assert (=> b!1116324 (=> (not res!745427) (not e!636072))))

(assert (=> b!1116324 (= res!745427 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35509 _keys!1208))))))

(declare-fun b!1116325 () Bool)

(declare-fun res!745426 () Bool)

(assert (=> b!1116325 (=> (not res!745426) (not e!636072))))

(declare-datatypes ((List!24472 0))(
  ( (Nil!24469) (Cons!24468 (h!25677 (_ BitVec 64)) (t!34960 List!24472)) )
))
(declare-fun arrayNoDuplicates!0 (array!72646 (_ BitVec 32) List!24472) Bool)

(assert (=> b!1116325 (= res!745426 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24469))))

(declare-fun b!1116326 () Bool)

(declare-fun e!636077 () Bool)

(assert (=> b!1116326 (= e!636074 (and e!636077 mapRes!43672))))

(declare-fun condMapEmpty!43672 () Bool)

(declare-fun mapDefault!43672 () ValueCell!13242)

(assert (=> b!1116326 (= condMapEmpty!43672 (= (arr!34973 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13242)) mapDefault!43672)))))

(declare-fun b!1116327 () Bool)

(declare-fun res!745430 () Bool)

(assert (=> b!1116327 (=> (not res!745430) (not e!636073))))

(assert (=> b!1116327 (= res!745430 (arrayNoDuplicates!0 lt!497096 #b00000000000000000000000000000000 Nil!24469))))

(declare-fun b!1116328 () Bool)

(assert (=> b!1116328 (= e!636077 tp_is_empty!27903)))

(assert (= (and start!97708 res!745428) b!1116323))

(assert (= (and b!1116323 res!745422) b!1116320))

(assert (= (and b!1116320 res!745429) b!1116322))

(assert (= (and b!1116322 res!745425) b!1116325))

(assert (= (and b!1116325 res!745426) b!1116324))

(assert (= (and b!1116324 res!745427) b!1116319))

(assert (= (and b!1116319 res!745424) b!1116321))

(assert (= (and b!1116321 res!745423) b!1116316))

(assert (= (and b!1116316 res!745431) b!1116327))

(assert (= (and b!1116327 res!745430) b!1116317))

(assert (= (and b!1116326 condMapEmpty!43672) mapIsEmpty!43672))

(assert (= (and b!1116326 (not condMapEmpty!43672)) mapNonEmpty!43672))

(get-info :version)

(assert (= (and mapNonEmpty!43672 ((_ is ValueCellFull!13242) mapValue!43672)) b!1116318))

(assert (= (and b!1116326 ((_ is ValueCellFull!13242) mapDefault!43672)) b!1116328))

(assert (= start!97708 b!1116326))

(declare-fun m!1032669 () Bool)

(assert (=> b!1116327 m!1032669))

(declare-fun m!1032671 () Bool)

(assert (=> b!1116321 m!1032671))

(declare-fun m!1032673 () Bool)

(assert (=> mapNonEmpty!43672 m!1032673))

(declare-fun m!1032675 () Bool)

(assert (=> b!1116325 m!1032675))

(declare-fun m!1032677 () Bool)

(assert (=> b!1116322 m!1032677))

(declare-fun m!1032679 () Bool)

(assert (=> b!1116319 m!1032679))

(declare-fun m!1032681 () Bool)

(assert (=> start!97708 m!1032681))

(declare-fun m!1032683 () Bool)

(assert (=> start!97708 m!1032683))

(declare-fun m!1032685 () Bool)

(assert (=> b!1116316 m!1032685))

(declare-fun m!1032687 () Bool)

(assert (=> b!1116316 m!1032687))

(declare-fun m!1032689 () Bool)

(assert (=> b!1116323 m!1032689))

(declare-fun m!1032691 () Bool)

(assert (=> b!1116317 m!1032691))

(declare-fun m!1032693 () Bool)

(assert (=> b!1116317 m!1032693))

(check-sat (not b!1116317) (not b!1116325) (not b!1116319) (not b!1116322) (not mapNonEmpty!43672) (not start!97708) (not b!1116327) (not b!1116316) tp_is_empty!27903 (not b!1116323))
(check-sat)
