; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97714 () Bool)

(assert start!97714)

(declare-fun res!745516 () Bool)

(declare-fun e!636128 () Bool)

(assert (=> start!97714 (=> (not res!745516) (not e!636128))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72656 0))(
  ( (array!72657 (arr!34977 (Array (_ BitVec 32) (_ BitVec 64))) (size!35514 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72656)

(assert (=> start!97714 (= res!745516 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35514 _keys!1208))))))

(assert (=> start!97714 e!636128))

(declare-fun array_inv!26742 (array!72656) Bool)

(assert (=> start!97714 (array_inv!26742 _keys!1208)))

(assert (=> start!97714 true))

(declare-datatypes ((V!42339 0))(
  ( (V!42340 (val!14011 Int)) )
))
(declare-datatypes ((ValueCell!13245 0))(
  ( (ValueCellFull!13245 (v!16645 V!42339)) (EmptyCell!13245) )
))
(declare-datatypes ((array!72658 0))(
  ( (array!72659 (arr!34978 (Array (_ BitVec 32) ValueCell!13245)) (size!35515 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72658)

(declare-fun e!636131 () Bool)

(declare-fun array_inv!26743 (array!72658) Bool)

(assert (=> start!97714 (and (array_inv!26743 _values!996) e!636131)))

(declare-fun b!1116433 () Bool)

(declare-fun res!745520 () Bool)

(assert (=> b!1116433 (=> (not res!745520) (not e!636128))))

(declare-datatypes ((List!24474 0))(
  ( (Nil!24471) (Cons!24470 (h!25679 (_ BitVec 64)) (t!34962 List!24474)) )
))
(declare-fun arrayNoDuplicates!0 (array!72656 (_ BitVec 32) List!24474) Bool)

(assert (=> b!1116433 (= res!745520 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24471))))

(declare-fun b!1116434 () Bool)

(declare-fun e!636129 () Bool)

(declare-fun mapRes!43681 () Bool)

(assert (=> b!1116434 (= e!636131 (and e!636129 mapRes!43681))))

(declare-fun condMapEmpty!43681 () Bool)

(declare-fun mapDefault!43681 () ValueCell!13245)

(assert (=> b!1116434 (= condMapEmpty!43681 (= (arr!34978 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13245)) mapDefault!43681)))))

(declare-fun b!1116435 () Bool)

(declare-fun res!745519 () Bool)

(assert (=> b!1116435 (=> (not res!745519) (not e!636128))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1116435 (= res!745519 (and (= (size!35515 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35514 _keys!1208) (size!35515 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116436 () Bool)

(declare-fun e!636126 () Bool)

(assert (=> b!1116436 (= e!636126 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116436 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36543 0))(
  ( (Unit!36544) )
))
(declare-fun lt!497115 () Unit!36543)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72656 (_ BitVec 64) (_ BitVec 32)) Unit!36543)

(assert (=> b!1116436 (= lt!497115 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!43681 () Bool)

(declare-fun tp!82926 () Bool)

(declare-fun e!636127 () Bool)

(assert (=> mapNonEmpty!43681 (= mapRes!43681 (and tp!82926 e!636127))))

(declare-fun mapRest!43681 () (Array (_ BitVec 32) ValueCell!13245))

(declare-fun mapKey!43681 () (_ BitVec 32))

(declare-fun mapValue!43681 () ValueCell!13245)

(assert (=> mapNonEmpty!43681 (= (arr!34978 _values!996) (store mapRest!43681 mapKey!43681 mapValue!43681))))

(declare-fun b!1116437 () Bool)

(declare-fun tp_is_empty!27909 () Bool)

(assert (=> b!1116437 (= e!636129 tp_is_empty!27909)))

(declare-fun mapIsEmpty!43681 () Bool)

(assert (=> mapIsEmpty!43681 mapRes!43681))

(declare-fun b!1116438 () Bool)

(declare-fun res!745518 () Bool)

(assert (=> b!1116438 (=> (not res!745518) (not e!636128))))

(assert (=> b!1116438 (= res!745518 (= (select (arr!34977 _keys!1208) i!673) k0!934))))

(declare-fun b!1116439 () Bool)

(declare-fun res!745517 () Bool)

(assert (=> b!1116439 (=> (not res!745517) (not e!636128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72656 (_ BitVec 32)) Bool)

(assert (=> b!1116439 (= res!745517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116440 () Bool)

(assert (=> b!1116440 (= e!636128 e!636126)))

(declare-fun res!745512 () Bool)

(assert (=> b!1116440 (=> (not res!745512) (not e!636126))))

(declare-fun lt!497114 () array!72656)

(assert (=> b!1116440 (= res!745512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497114 mask!1564))))

(assert (=> b!1116440 (= lt!497114 (array!72657 (store (arr!34977 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35514 _keys!1208)))))

(declare-fun b!1116441 () Bool)

(declare-fun res!745515 () Bool)

(assert (=> b!1116441 (=> (not res!745515) (not e!636126))))

(assert (=> b!1116441 (= res!745515 (arrayNoDuplicates!0 lt!497114 #b00000000000000000000000000000000 Nil!24471))))

(declare-fun b!1116442 () Bool)

(assert (=> b!1116442 (= e!636127 tp_is_empty!27909)))

(declare-fun b!1116443 () Bool)

(declare-fun res!745513 () Bool)

(assert (=> b!1116443 (=> (not res!745513) (not e!636128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116443 (= res!745513 (validKeyInArray!0 k0!934))))

(declare-fun b!1116444 () Bool)

(declare-fun res!745521 () Bool)

(assert (=> b!1116444 (=> (not res!745521) (not e!636128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116444 (= res!745521 (validMask!0 mask!1564))))

(declare-fun b!1116445 () Bool)

(declare-fun res!745514 () Bool)

(assert (=> b!1116445 (=> (not res!745514) (not e!636128))))

(assert (=> b!1116445 (= res!745514 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35514 _keys!1208))))))

(assert (= (and start!97714 res!745516) b!1116444))

(assert (= (and b!1116444 res!745521) b!1116435))

(assert (= (and b!1116435 res!745519) b!1116439))

(assert (= (and b!1116439 res!745517) b!1116433))

(assert (= (and b!1116433 res!745520) b!1116445))

(assert (= (and b!1116445 res!745514) b!1116443))

(assert (= (and b!1116443 res!745513) b!1116438))

(assert (= (and b!1116438 res!745518) b!1116440))

(assert (= (and b!1116440 res!745512) b!1116441))

(assert (= (and b!1116441 res!745515) b!1116436))

(assert (= (and b!1116434 condMapEmpty!43681) mapIsEmpty!43681))

(assert (= (and b!1116434 (not condMapEmpty!43681)) mapNonEmpty!43681))

(get-info :version)

(assert (= (and mapNonEmpty!43681 ((_ is ValueCellFull!13245) mapValue!43681)) b!1116442))

(assert (= (and b!1116434 ((_ is ValueCellFull!13245) mapDefault!43681)) b!1116437))

(assert (= start!97714 b!1116434))

(declare-fun m!1032747 () Bool)

(assert (=> b!1116439 m!1032747))

(declare-fun m!1032749 () Bool)

(assert (=> b!1116433 m!1032749))

(declare-fun m!1032751 () Bool)

(assert (=> b!1116436 m!1032751))

(declare-fun m!1032753 () Bool)

(assert (=> b!1116436 m!1032753))

(declare-fun m!1032755 () Bool)

(assert (=> b!1116443 m!1032755))

(declare-fun m!1032757 () Bool)

(assert (=> b!1116440 m!1032757))

(declare-fun m!1032759 () Bool)

(assert (=> b!1116440 m!1032759))

(declare-fun m!1032761 () Bool)

(assert (=> b!1116441 m!1032761))

(declare-fun m!1032763 () Bool)

(assert (=> mapNonEmpty!43681 m!1032763))

(declare-fun m!1032765 () Bool)

(assert (=> start!97714 m!1032765))

(declare-fun m!1032767 () Bool)

(assert (=> start!97714 m!1032767))

(declare-fun m!1032769 () Bool)

(assert (=> b!1116444 m!1032769))

(declare-fun m!1032771 () Bool)

(assert (=> b!1116438 m!1032771))

(check-sat (not mapNonEmpty!43681) (not b!1116441) (not b!1116444) tp_is_empty!27909 (not start!97714) (not b!1116436) (not b!1116439) (not b!1116443) (not b!1116440) (not b!1116433))
(check-sat)
