; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97080 () Bool)

(assert start!97080)

(declare-fun b!1103797 () Bool)

(declare-fun res!736490 () Bool)

(declare-fun e!630138 () Bool)

(assert (=> b!1103797 (=> (not res!736490) (not e!630138))))

(declare-datatypes ((array!71540 0))(
  ( (array!71541 (arr!34423 (Array (_ BitVec 32) (_ BitVec 64))) (size!34960 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71540)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71540 (_ BitVec 32)) Bool)

(assert (=> b!1103797 (= res!736490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71541 (store (arr!34423 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34960 _keys!1208)) mask!1564))))

(declare-fun mapNonEmpty!42805 () Bool)

(declare-fun mapRes!42805 () Bool)

(declare-fun tp!81726 () Bool)

(declare-fun e!630139 () Bool)

(assert (=> mapNonEmpty!42805 (= mapRes!42805 (and tp!81726 e!630139))))

(declare-datatypes ((V!41571 0))(
  ( (V!41572 (val!13723 Int)) )
))
(declare-datatypes ((ValueCell!12957 0))(
  ( (ValueCellFull!12957 (v!16356 V!41571)) (EmptyCell!12957) )
))
(declare-fun mapValue!42805 () ValueCell!12957)

(declare-datatypes ((array!71542 0))(
  ( (array!71543 (arr!34424 (Array (_ BitVec 32) ValueCell!12957)) (size!34961 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71542)

(declare-fun mapKey!42805 () (_ BitVec 32))

(declare-fun mapRest!42805 () (Array (_ BitVec 32) ValueCell!12957))

(assert (=> mapNonEmpty!42805 (= (arr!34424 _values!996) (store mapRest!42805 mapKey!42805 mapValue!42805))))

(declare-fun b!1103798 () Bool)

(declare-fun res!736485 () Bool)

(assert (=> b!1103798 (=> (not res!736485) (not e!630138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103798 (= res!736485 (validMask!0 mask!1564))))

(declare-fun b!1103799 () Bool)

(declare-fun res!736486 () Bool)

(assert (=> b!1103799 (=> (not res!736486) (not e!630138))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103799 (= res!736486 (and (= (size!34961 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34960 _keys!1208) (size!34961 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103800 () Bool)

(assert (=> b!1103800 (= e!630138 (bvsgt #b00000000000000000000000000000000 (size!34960 _keys!1208)))))

(declare-fun b!1103801 () Bool)

(declare-fun tp_is_empty!27333 () Bool)

(assert (=> b!1103801 (= e!630139 tp_is_empty!27333)))

(declare-fun b!1103802 () Bool)

(declare-fun e!630136 () Bool)

(assert (=> b!1103802 (= e!630136 tp_is_empty!27333)))

(declare-fun b!1103803 () Bool)

(declare-fun res!736489 () Bool)

(assert (=> b!1103803 (=> (not res!736489) (not e!630138))))

(declare-datatypes ((List!24168 0))(
  ( (Nil!24165) (Cons!24164 (h!25373 (_ BitVec 64)) (t!34440 List!24168)) )
))
(declare-fun arrayNoDuplicates!0 (array!71540 (_ BitVec 32) List!24168) Bool)

(assert (=> b!1103803 (= res!736489 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24165))))

(declare-fun b!1103804 () Bool)

(declare-fun res!736482 () Bool)

(assert (=> b!1103804 (=> (not res!736482) (not e!630138))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103804 (= res!736482 (validKeyInArray!0 k0!934))))

(declare-fun b!1103805 () Bool)

(declare-fun res!736483 () Bool)

(assert (=> b!1103805 (=> (not res!736483) (not e!630138))))

(assert (=> b!1103805 (= res!736483 (= (select (arr!34423 _keys!1208) i!673) k0!934))))

(declare-fun res!736488 () Bool)

(assert (=> start!97080 (=> (not res!736488) (not e!630138))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97080 (= res!736488 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34960 _keys!1208))))))

(assert (=> start!97080 e!630138))

(declare-fun array_inv!26360 (array!71540) Bool)

(assert (=> start!97080 (array_inv!26360 _keys!1208)))

(assert (=> start!97080 true))

(declare-fun e!630137 () Bool)

(declare-fun array_inv!26361 (array!71542) Bool)

(assert (=> start!97080 (and (array_inv!26361 _values!996) e!630137)))

(declare-fun b!1103806 () Bool)

(declare-fun res!736484 () Bool)

(assert (=> b!1103806 (=> (not res!736484) (not e!630138))))

(assert (=> b!1103806 (= res!736484 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34960 _keys!1208))))))

(declare-fun b!1103807 () Bool)

(declare-fun res!736487 () Bool)

(assert (=> b!1103807 (=> (not res!736487) (not e!630138))))

(assert (=> b!1103807 (= res!736487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103808 () Bool)

(assert (=> b!1103808 (= e!630137 (and e!630136 mapRes!42805))))

(declare-fun condMapEmpty!42805 () Bool)

(declare-fun mapDefault!42805 () ValueCell!12957)

(assert (=> b!1103808 (= condMapEmpty!42805 (= (arr!34424 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12957)) mapDefault!42805)))))

(declare-fun mapIsEmpty!42805 () Bool)

(assert (=> mapIsEmpty!42805 mapRes!42805))

(assert (= (and start!97080 res!736488) b!1103798))

(assert (= (and b!1103798 res!736485) b!1103799))

(assert (= (and b!1103799 res!736486) b!1103807))

(assert (= (and b!1103807 res!736487) b!1103803))

(assert (= (and b!1103803 res!736489) b!1103806))

(assert (= (and b!1103806 res!736484) b!1103804))

(assert (= (and b!1103804 res!736482) b!1103805))

(assert (= (and b!1103805 res!736483) b!1103797))

(assert (= (and b!1103797 res!736490) b!1103800))

(assert (= (and b!1103808 condMapEmpty!42805) mapIsEmpty!42805))

(assert (= (and b!1103808 (not condMapEmpty!42805)) mapNonEmpty!42805))

(get-info :version)

(assert (= (and mapNonEmpty!42805 ((_ is ValueCellFull!12957) mapValue!42805)) b!1103801))

(assert (= (and b!1103808 ((_ is ValueCellFull!12957) mapDefault!42805)) b!1103802))

(assert (= start!97080 b!1103808))

(declare-fun m!1023907 () Bool)

(assert (=> mapNonEmpty!42805 m!1023907))

(declare-fun m!1023909 () Bool)

(assert (=> b!1103807 m!1023909))

(declare-fun m!1023911 () Bool)

(assert (=> b!1103798 m!1023911))

(declare-fun m!1023913 () Bool)

(assert (=> start!97080 m!1023913))

(declare-fun m!1023915 () Bool)

(assert (=> start!97080 m!1023915))

(declare-fun m!1023917 () Bool)

(assert (=> b!1103805 m!1023917))

(declare-fun m!1023919 () Bool)

(assert (=> b!1103803 m!1023919))

(declare-fun m!1023921 () Bool)

(assert (=> b!1103797 m!1023921))

(declare-fun m!1023923 () Bool)

(assert (=> b!1103797 m!1023923))

(declare-fun m!1023925 () Bool)

(assert (=> b!1103804 m!1023925))

(check-sat (not b!1103797) (not start!97080) (not b!1103804) (not mapNonEmpty!42805) (not b!1103798) (not b!1103803) (not b!1103807) tp_is_empty!27333)
(check-sat)
