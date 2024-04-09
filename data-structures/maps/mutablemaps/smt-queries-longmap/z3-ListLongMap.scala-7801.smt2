; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97588 () Bool)

(assert start!97588)

(declare-fun mapNonEmpty!43492 () Bool)

(declare-fun mapRes!43492 () Bool)

(declare-fun tp!82737 () Bool)

(declare-fun e!634993 () Bool)

(assert (=> mapNonEmpty!43492 (= mapRes!43492 (and tp!82737 e!634993))))

(declare-datatypes ((V!42171 0))(
  ( (V!42172 (val!13948 Int)) )
))
(declare-datatypes ((ValueCell!13182 0))(
  ( (ValueCellFull!13182 (v!16582 V!42171)) (EmptyCell!13182) )
))
(declare-fun mapValue!43492 () ValueCell!13182)

(declare-fun mapKey!43492 () (_ BitVec 32))

(declare-datatypes ((array!72414 0))(
  ( (array!72415 (arr!34856 (Array (_ BitVec 32) ValueCell!13182)) (size!35393 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72414)

(declare-fun mapRest!43492 () (Array (_ BitVec 32) ValueCell!13182))

(assert (=> mapNonEmpty!43492 (= (arr!34856 _values!996) (store mapRest!43492 mapKey!43492 mapValue!43492))))

(declare-fun b!1113976 () Bool)

(declare-fun res!743626 () Bool)

(declare-fun e!634994 () Bool)

(assert (=> b!1113976 (=> (not res!743626) (not e!634994))))

(declare-datatypes ((array!72416 0))(
  ( (array!72417 (arr!34857 (Array (_ BitVec 32) (_ BitVec 64))) (size!35394 (_ BitVec 32))) )
))
(declare-fun lt!496736 () array!72416)

(declare-datatypes ((List!24427 0))(
  ( (Nil!24424) (Cons!24423 (h!25632 (_ BitVec 64)) (t!34915 List!24427)) )
))
(declare-fun arrayNoDuplicates!0 (array!72416 (_ BitVec 32) List!24427) Bool)

(assert (=> b!1113976 (= res!743626 (arrayNoDuplicates!0 lt!496736 #b00000000000000000000000000000000 Nil!24424))))

(declare-fun b!1113977 () Bool)

(declare-fun e!634996 () Bool)

(assert (=> b!1113977 (= e!634996 e!634994)))

(declare-fun res!743623 () Bool)

(assert (=> b!1113977 (=> (not res!743623) (not e!634994))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72416 (_ BitVec 32)) Bool)

(assert (=> b!1113977 (= res!743623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496736 mask!1564))))

(declare-fun _keys!1208 () array!72416)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113977 (= lt!496736 (array!72417 (store (arr!34857 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35394 _keys!1208)))))

(declare-fun b!1113978 () Bool)

(declare-fun res!743628 () Bool)

(assert (=> b!1113978 (=> (not res!743628) (not e!634996))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113978 (= res!743628 (and (= (size!35393 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35394 _keys!1208) (size!35393 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113979 () Bool)

(declare-fun res!743629 () Bool)

(assert (=> b!1113979 (=> (not res!743629) (not e!634996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113979 (= res!743629 (validMask!0 mask!1564))))

(declare-fun b!1113980 () Bool)

(declare-fun tp_is_empty!27783 () Bool)

(assert (=> b!1113980 (= e!634993 tp_is_empty!27783)))

(declare-fun res!743627 () Bool)

(assert (=> start!97588 (=> (not res!743627) (not e!634996))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97588 (= res!743627 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35394 _keys!1208))))))

(assert (=> start!97588 e!634996))

(declare-fun array_inv!26664 (array!72416) Bool)

(assert (=> start!97588 (array_inv!26664 _keys!1208)))

(assert (=> start!97588 true))

(declare-fun e!634995 () Bool)

(declare-fun array_inv!26665 (array!72414) Bool)

(assert (=> start!97588 (and (array_inv!26665 _values!996) e!634995)))

(declare-fun b!1113981 () Bool)

(declare-fun res!743625 () Bool)

(assert (=> b!1113981 (=> (not res!743625) (not e!634996))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1113981 (= res!743625 (= (select (arr!34857 _keys!1208) i!673) k0!934))))

(declare-fun b!1113982 () Bool)

(declare-fun res!743624 () Bool)

(assert (=> b!1113982 (=> (not res!743624) (not e!634996))))

(assert (=> b!1113982 (= res!743624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113983 () Bool)

(declare-fun res!743622 () Bool)

(assert (=> b!1113983 (=> (not res!743622) (not e!634996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113983 (= res!743622 (validKeyInArray!0 k0!934))))

(declare-fun b!1113984 () Bool)

(declare-fun res!743630 () Bool)

(assert (=> b!1113984 (=> (not res!743630) (not e!634996))))

(assert (=> b!1113984 (= res!743630 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24424))))

(declare-fun b!1113985 () Bool)

(declare-fun e!634992 () Bool)

(assert (=> b!1113985 (= e!634995 (and e!634992 mapRes!43492))))

(declare-fun condMapEmpty!43492 () Bool)

(declare-fun mapDefault!43492 () ValueCell!13182)

(assert (=> b!1113985 (= condMapEmpty!43492 (= (arr!34856 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13182)) mapDefault!43492)))))

(declare-fun b!1113986 () Bool)

(assert (=> b!1113986 (= e!634994 (not true))))

(declare-fun arrayContainsKey!0 (array!72416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113986 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36467 0))(
  ( (Unit!36468) )
))
(declare-fun lt!496737 () Unit!36467)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72416 (_ BitVec 64) (_ BitVec 32)) Unit!36467)

(assert (=> b!1113986 (= lt!496737 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1113987 () Bool)

(assert (=> b!1113987 (= e!634992 tp_is_empty!27783)))

(declare-fun b!1113988 () Bool)

(declare-fun res!743631 () Bool)

(assert (=> b!1113988 (=> (not res!743631) (not e!634996))))

(assert (=> b!1113988 (= res!743631 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35394 _keys!1208))))))

(declare-fun mapIsEmpty!43492 () Bool)

(assert (=> mapIsEmpty!43492 mapRes!43492))

(assert (= (and start!97588 res!743627) b!1113979))

(assert (= (and b!1113979 res!743629) b!1113978))

(assert (= (and b!1113978 res!743628) b!1113982))

(assert (= (and b!1113982 res!743624) b!1113984))

(assert (= (and b!1113984 res!743630) b!1113988))

(assert (= (and b!1113988 res!743631) b!1113983))

(assert (= (and b!1113983 res!743622) b!1113981))

(assert (= (and b!1113981 res!743625) b!1113977))

(assert (= (and b!1113977 res!743623) b!1113976))

(assert (= (and b!1113976 res!743626) b!1113986))

(assert (= (and b!1113985 condMapEmpty!43492) mapIsEmpty!43492))

(assert (= (and b!1113985 (not condMapEmpty!43492)) mapNonEmpty!43492))

(get-info :version)

(assert (= (and mapNonEmpty!43492 ((_ is ValueCellFull!13182) mapValue!43492)) b!1113980))

(assert (= (and b!1113985 ((_ is ValueCellFull!13182) mapDefault!43492)) b!1113987))

(assert (= start!97588 b!1113985))

(declare-fun m!1031109 () Bool)

(assert (=> b!1113979 m!1031109))

(declare-fun m!1031111 () Bool)

(assert (=> b!1113986 m!1031111))

(declare-fun m!1031113 () Bool)

(assert (=> b!1113986 m!1031113))

(declare-fun m!1031115 () Bool)

(assert (=> b!1113976 m!1031115))

(declare-fun m!1031117 () Bool)

(assert (=> b!1113984 m!1031117))

(declare-fun m!1031119 () Bool)

(assert (=> mapNonEmpty!43492 m!1031119))

(declare-fun m!1031121 () Bool)

(assert (=> b!1113977 m!1031121))

(declare-fun m!1031123 () Bool)

(assert (=> b!1113977 m!1031123))

(declare-fun m!1031125 () Bool)

(assert (=> b!1113982 m!1031125))

(declare-fun m!1031127 () Bool)

(assert (=> b!1113981 m!1031127))

(declare-fun m!1031129 () Bool)

(assert (=> start!97588 m!1031129))

(declare-fun m!1031131 () Bool)

(assert (=> start!97588 m!1031131))

(declare-fun m!1031133 () Bool)

(assert (=> b!1113983 m!1031133))

(check-sat (not b!1113977) tp_is_empty!27783 (not b!1113983) (not b!1113982) (not b!1113979) (not b!1113976) (not b!1113984) (not mapNonEmpty!43492) (not start!97588) (not b!1113986))
(check-sat)
