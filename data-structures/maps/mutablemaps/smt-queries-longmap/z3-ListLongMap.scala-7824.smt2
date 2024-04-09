; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97726 () Bool)

(assert start!97726)

(declare-fun b!1116667 () Bool)

(declare-fun res!745701 () Bool)

(declare-fun e!636236 () Bool)

(assert (=> b!1116667 (=> (not res!745701) (not e!636236))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116667 (= res!745701 (validKeyInArray!0 k0!934))))

(declare-fun b!1116668 () Bool)

(declare-fun res!745699 () Bool)

(assert (=> b!1116668 (=> (not res!745699) (not e!636236))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116668 (= res!745699 (validMask!0 mask!1564))))

(declare-fun b!1116669 () Bool)

(declare-fun res!745695 () Bool)

(assert (=> b!1116669 (=> (not res!745695) (not e!636236))))

(declare-datatypes ((array!72680 0))(
  ( (array!72681 (arr!34989 (Array (_ BitVec 32) (_ BitVec 64))) (size!35526 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72680)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116669 (= res!745695 (= (select (arr!34989 _keys!1208) i!673) k0!934))))

(declare-fun b!1116670 () Bool)

(declare-fun e!636235 () Bool)

(declare-fun tp_is_empty!27921 () Bool)

(assert (=> b!1116670 (= e!636235 tp_is_empty!27921)))

(declare-fun b!1116671 () Bool)

(declare-fun e!636239 () Bool)

(declare-fun e!636237 () Bool)

(declare-fun mapRes!43699 () Bool)

(assert (=> b!1116671 (= e!636239 (and e!636237 mapRes!43699))))

(declare-fun condMapEmpty!43699 () Bool)

(declare-datatypes ((V!42355 0))(
  ( (V!42356 (val!14017 Int)) )
))
(declare-datatypes ((ValueCell!13251 0))(
  ( (ValueCellFull!13251 (v!16651 V!42355)) (EmptyCell!13251) )
))
(declare-datatypes ((array!72682 0))(
  ( (array!72683 (arr!34990 (Array (_ BitVec 32) ValueCell!13251)) (size!35527 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72682)

(declare-fun mapDefault!43699 () ValueCell!13251)

(assert (=> b!1116671 (= condMapEmpty!43699 (= (arr!34990 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13251)) mapDefault!43699)))))

(declare-fun b!1116672 () Bool)

(declare-fun res!745692 () Bool)

(assert (=> b!1116672 (=> (not res!745692) (not e!636236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72680 (_ BitVec 32)) Bool)

(assert (=> b!1116672 (= res!745692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1116673 () Bool)

(assert (=> b!1116673 (= e!636237 tp_is_empty!27921)))

(declare-fun mapNonEmpty!43699 () Bool)

(declare-fun tp!82944 () Bool)

(assert (=> mapNonEmpty!43699 (= mapRes!43699 (and tp!82944 e!636235))))

(declare-fun mapValue!43699 () ValueCell!13251)

(declare-fun mapKey!43699 () (_ BitVec 32))

(declare-fun mapRest!43699 () (Array (_ BitVec 32) ValueCell!13251))

(assert (=> mapNonEmpty!43699 (= (arr!34990 _values!996) (store mapRest!43699 mapKey!43699 mapValue!43699))))

(declare-fun b!1116674 () Bool)

(declare-fun res!745694 () Bool)

(assert (=> b!1116674 (=> (not res!745694) (not e!636236))))

(assert (=> b!1116674 (= res!745694 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35526 _keys!1208))))))

(declare-fun b!1116675 () Bool)

(declare-fun res!745697 () Bool)

(assert (=> b!1116675 (=> (not res!745697) (not e!636236))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116675 (= res!745697 (and (= (size!35527 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35526 _keys!1208) (size!35527 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116676 () Bool)

(declare-fun res!745698 () Bool)

(declare-fun e!636234 () Bool)

(assert (=> b!1116676 (=> (not res!745698) (not e!636234))))

(declare-fun lt!497150 () array!72680)

(declare-datatypes ((List!24479 0))(
  ( (Nil!24476) (Cons!24475 (h!25684 (_ BitVec 64)) (t!34967 List!24479)) )
))
(declare-fun arrayNoDuplicates!0 (array!72680 (_ BitVec 32) List!24479) Bool)

(assert (=> b!1116676 (= res!745698 (arrayNoDuplicates!0 lt!497150 #b00000000000000000000000000000000 Nil!24476))))

(declare-fun res!745696 () Bool)

(assert (=> start!97726 (=> (not res!745696) (not e!636236))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97726 (= res!745696 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35526 _keys!1208))))))

(assert (=> start!97726 e!636236))

(declare-fun array_inv!26752 (array!72680) Bool)

(assert (=> start!97726 (array_inv!26752 _keys!1208)))

(assert (=> start!97726 true))

(declare-fun array_inv!26753 (array!72682) Bool)

(assert (=> start!97726 (and (array_inv!26753 _values!996) e!636239)))

(declare-fun mapIsEmpty!43699 () Bool)

(assert (=> mapIsEmpty!43699 mapRes!43699))

(declare-fun b!1116677 () Bool)

(declare-fun res!745700 () Bool)

(assert (=> b!1116677 (=> (not res!745700) (not e!636236))))

(assert (=> b!1116677 (= res!745700 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24476))))

(declare-fun b!1116678 () Bool)

(assert (=> b!1116678 (= e!636236 e!636234)))

(declare-fun res!745693 () Bool)

(assert (=> b!1116678 (=> (not res!745693) (not e!636234))))

(assert (=> b!1116678 (= res!745693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497150 mask!1564))))

(assert (=> b!1116678 (= lt!497150 (array!72681 (store (arr!34989 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35526 _keys!1208)))))

(declare-fun b!1116679 () Bool)

(assert (=> b!1116679 (= e!636234 (not true))))

(declare-fun arrayContainsKey!0 (array!72680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116679 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36553 0))(
  ( (Unit!36554) )
))
(declare-fun lt!497151 () Unit!36553)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72680 (_ BitVec 64) (_ BitVec 32)) Unit!36553)

(assert (=> b!1116679 (= lt!497151 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97726 res!745696) b!1116668))

(assert (= (and b!1116668 res!745699) b!1116675))

(assert (= (and b!1116675 res!745697) b!1116672))

(assert (= (and b!1116672 res!745692) b!1116677))

(assert (= (and b!1116677 res!745700) b!1116674))

(assert (= (and b!1116674 res!745694) b!1116667))

(assert (= (and b!1116667 res!745701) b!1116669))

(assert (= (and b!1116669 res!745695) b!1116678))

(assert (= (and b!1116678 res!745693) b!1116676))

(assert (= (and b!1116676 res!745698) b!1116679))

(assert (= (and b!1116671 condMapEmpty!43699) mapIsEmpty!43699))

(assert (= (and b!1116671 (not condMapEmpty!43699)) mapNonEmpty!43699))

(get-info :version)

(assert (= (and mapNonEmpty!43699 ((_ is ValueCellFull!13251) mapValue!43699)) b!1116670))

(assert (= (and b!1116671 ((_ is ValueCellFull!13251) mapDefault!43699)) b!1116673))

(assert (= start!97726 b!1116671))

(declare-fun m!1032903 () Bool)

(assert (=> b!1116669 m!1032903))

(declare-fun m!1032905 () Bool)

(assert (=> b!1116678 m!1032905))

(declare-fun m!1032907 () Bool)

(assert (=> b!1116678 m!1032907))

(declare-fun m!1032909 () Bool)

(assert (=> mapNonEmpty!43699 m!1032909))

(declare-fun m!1032911 () Bool)

(assert (=> b!1116672 m!1032911))

(declare-fun m!1032913 () Bool)

(assert (=> b!1116676 m!1032913))

(declare-fun m!1032915 () Bool)

(assert (=> b!1116677 m!1032915))

(declare-fun m!1032917 () Bool)

(assert (=> b!1116667 m!1032917))

(declare-fun m!1032919 () Bool)

(assert (=> start!97726 m!1032919))

(declare-fun m!1032921 () Bool)

(assert (=> start!97726 m!1032921))

(declare-fun m!1032923 () Bool)

(assert (=> b!1116679 m!1032923))

(declare-fun m!1032925 () Bool)

(assert (=> b!1116679 m!1032925))

(declare-fun m!1032927 () Bool)

(assert (=> b!1116668 m!1032927))

(check-sat (not b!1116667) (not b!1116677) (not b!1116678) (not start!97726) (not b!1116668) tp_is_empty!27921 (not b!1116679) (not mapNonEmpty!43699) (not b!1116676) (not b!1116672))
(check-sat)
