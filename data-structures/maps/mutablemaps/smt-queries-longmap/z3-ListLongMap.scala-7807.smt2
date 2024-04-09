; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97624 () Bool)

(assert start!97624)

(declare-fun b!1114678 () Bool)

(declare-fun res!744162 () Bool)

(declare-fun e!635321 () Bool)

(assert (=> b!1114678 (=> (not res!744162) (not e!635321))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114678 (= res!744162 (validKeyInArray!0 k0!934))))

(declare-fun b!1114679 () Bool)

(declare-fun res!744169 () Bool)

(declare-fun e!635316 () Bool)

(assert (=> b!1114679 (=> (not res!744169) (not e!635316))))

(declare-datatypes ((array!72486 0))(
  ( (array!72487 (arr!34892 (Array (_ BitVec 32) (_ BitVec 64))) (size!35429 (_ BitVec 32))) )
))
(declare-fun lt!496844 () array!72486)

(declare-datatypes ((List!24441 0))(
  ( (Nil!24438) (Cons!24437 (h!25646 (_ BitVec 64)) (t!34929 List!24441)) )
))
(declare-fun arrayNoDuplicates!0 (array!72486 (_ BitVec 32) List!24441) Bool)

(assert (=> b!1114679 (= res!744169 (arrayNoDuplicates!0 lt!496844 #b00000000000000000000000000000000 Nil!24438))))

(declare-fun b!1114680 () Bool)

(declare-fun e!635320 () Bool)

(declare-fun e!635317 () Bool)

(declare-fun mapRes!43546 () Bool)

(assert (=> b!1114680 (= e!635320 (and e!635317 mapRes!43546))))

(declare-fun condMapEmpty!43546 () Bool)

(declare-datatypes ((V!42219 0))(
  ( (V!42220 (val!13966 Int)) )
))
(declare-datatypes ((ValueCell!13200 0))(
  ( (ValueCellFull!13200 (v!16600 V!42219)) (EmptyCell!13200) )
))
(declare-datatypes ((array!72488 0))(
  ( (array!72489 (arr!34893 (Array (_ BitVec 32) ValueCell!13200)) (size!35430 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72488)

(declare-fun mapDefault!43546 () ValueCell!13200)

(assert (=> b!1114680 (= condMapEmpty!43546 (= (arr!34893 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13200)) mapDefault!43546)))))

(declare-fun b!1114681 () Bool)

(declare-fun res!744165 () Bool)

(assert (=> b!1114681 (=> (not res!744165) (not e!635321))))

(declare-fun _keys!1208 () array!72486)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114681 (= res!744165 (= (select (arr!34892 _keys!1208) i!673) k0!934))))

(declare-fun b!1114682 () Bool)

(declare-fun res!744163 () Bool)

(assert (=> b!1114682 (=> (not res!744163) (not e!635321))))

(assert (=> b!1114682 (= res!744163 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35429 _keys!1208))))))

(declare-fun b!1114683 () Bool)

(declare-fun e!635319 () Bool)

(declare-fun tp_is_empty!27819 () Bool)

(assert (=> b!1114683 (= e!635319 tp_is_empty!27819)))

(declare-fun b!1114684 () Bool)

(declare-fun res!744164 () Bool)

(assert (=> b!1114684 (=> (not res!744164) (not e!635321))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72486 (_ BitVec 32)) Bool)

(assert (=> b!1114684 (= res!744164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114685 () Bool)

(assert (=> b!1114685 (= e!635317 tp_is_empty!27819)))

(declare-fun b!1114686 () Bool)

(assert (=> b!1114686 (= e!635316 (not true))))

(declare-fun arrayContainsKey!0 (array!72486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114686 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36489 0))(
  ( (Unit!36490) )
))
(declare-fun lt!496845 () Unit!36489)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72486 (_ BitVec 64) (_ BitVec 32)) Unit!36489)

(assert (=> b!1114686 (= lt!496845 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1114687 () Bool)

(declare-fun res!744166 () Bool)

(assert (=> b!1114687 (=> (not res!744166) (not e!635321))))

(assert (=> b!1114687 (= res!744166 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24438))))

(declare-fun b!1114688 () Bool)

(declare-fun res!744167 () Bool)

(assert (=> b!1114688 (=> (not res!744167) (not e!635321))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114688 (= res!744167 (and (= (size!35430 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35429 _keys!1208) (size!35430 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43546 () Bool)

(declare-fun tp!82791 () Bool)

(assert (=> mapNonEmpty!43546 (= mapRes!43546 (and tp!82791 e!635319))))

(declare-fun mapValue!43546 () ValueCell!13200)

(declare-fun mapKey!43546 () (_ BitVec 32))

(declare-fun mapRest!43546 () (Array (_ BitVec 32) ValueCell!13200))

(assert (=> mapNonEmpty!43546 (= (arr!34893 _values!996) (store mapRest!43546 mapKey!43546 mapValue!43546))))

(declare-fun b!1114689 () Bool)

(assert (=> b!1114689 (= e!635321 e!635316)))

(declare-fun res!744168 () Bool)

(assert (=> b!1114689 (=> (not res!744168) (not e!635316))))

(assert (=> b!1114689 (= res!744168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496844 mask!1564))))

(assert (=> b!1114689 (= lt!496844 (array!72487 (store (arr!34892 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35429 _keys!1208)))))

(declare-fun res!744170 () Bool)

(assert (=> start!97624 (=> (not res!744170) (not e!635321))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97624 (= res!744170 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35429 _keys!1208))))))

(assert (=> start!97624 e!635321))

(declare-fun array_inv!26692 (array!72486) Bool)

(assert (=> start!97624 (array_inv!26692 _keys!1208)))

(assert (=> start!97624 true))

(declare-fun array_inv!26693 (array!72488) Bool)

(assert (=> start!97624 (and (array_inv!26693 _values!996) e!635320)))

(declare-fun b!1114690 () Bool)

(declare-fun res!744171 () Bool)

(assert (=> b!1114690 (=> (not res!744171) (not e!635321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114690 (= res!744171 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!43546 () Bool)

(assert (=> mapIsEmpty!43546 mapRes!43546))

(assert (= (and start!97624 res!744170) b!1114690))

(assert (= (and b!1114690 res!744171) b!1114688))

(assert (= (and b!1114688 res!744167) b!1114684))

(assert (= (and b!1114684 res!744164) b!1114687))

(assert (= (and b!1114687 res!744166) b!1114682))

(assert (= (and b!1114682 res!744163) b!1114678))

(assert (= (and b!1114678 res!744162) b!1114681))

(assert (= (and b!1114681 res!744165) b!1114689))

(assert (= (and b!1114689 res!744168) b!1114679))

(assert (= (and b!1114679 res!744169) b!1114686))

(assert (= (and b!1114680 condMapEmpty!43546) mapIsEmpty!43546))

(assert (= (and b!1114680 (not condMapEmpty!43546)) mapNonEmpty!43546))

(get-info :version)

(assert (= (and mapNonEmpty!43546 ((_ is ValueCellFull!13200) mapValue!43546)) b!1114683))

(assert (= (and b!1114680 ((_ is ValueCellFull!13200) mapDefault!43546)) b!1114685))

(assert (= start!97624 b!1114680))

(declare-fun m!1031577 () Bool)

(assert (=> b!1114684 m!1031577))

(declare-fun m!1031579 () Bool)

(assert (=> b!1114679 m!1031579))

(declare-fun m!1031581 () Bool)

(assert (=> b!1114686 m!1031581))

(declare-fun m!1031583 () Bool)

(assert (=> b!1114686 m!1031583))

(declare-fun m!1031585 () Bool)

(assert (=> mapNonEmpty!43546 m!1031585))

(declare-fun m!1031587 () Bool)

(assert (=> b!1114690 m!1031587))

(declare-fun m!1031589 () Bool)

(assert (=> start!97624 m!1031589))

(declare-fun m!1031591 () Bool)

(assert (=> start!97624 m!1031591))

(declare-fun m!1031593 () Bool)

(assert (=> b!1114678 m!1031593))

(declare-fun m!1031595 () Bool)

(assert (=> b!1114689 m!1031595))

(declare-fun m!1031597 () Bool)

(assert (=> b!1114689 m!1031597))

(declare-fun m!1031599 () Bool)

(assert (=> b!1114687 m!1031599))

(declare-fun m!1031601 () Bool)

(assert (=> b!1114681 m!1031601))

(check-sat (not b!1114678) (not mapNonEmpty!43546) (not b!1114684) (not b!1114679) (not b!1114689) (not b!1114687) tp_is_empty!27819 (not b!1114686) (not start!97624) (not b!1114690))
(check-sat)
