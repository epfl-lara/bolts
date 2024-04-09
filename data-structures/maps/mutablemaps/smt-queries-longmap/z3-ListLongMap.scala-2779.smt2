; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40572 () Bool)

(assert start!40572)

(declare-fun b_free!10575 () Bool)

(declare-fun b_next!10575 () Bool)

(assert (=> start!40572 (= b_free!10575 (not b_next!10575))))

(declare-fun tp!37545 () Bool)

(declare-fun b_and!18601 () Bool)

(assert (=> start!40572 (= tp!37545 b_and!18601)))

(declare-fun b!446912 () Bool)

(declare-fun res!265432 () Bool)

(declare-fun e!262491 () Bool)

(assert (=> b!446912 (=> (not res!265432) (not e!262491))))

(declare-datatypes ((array!27595 0))(
  ( (array!27596 (arr!13240 (Array (_ BitVec 32) (_ BitVec 64))) (size!13592 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27595)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446912 (= res!265432 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!446913 () Bool)

(declare-fun e!262488 () Bool)

(declare-fun tp_is_empty!11913 () Bool)

(assert (=> b!446913 (= e!262488 tp_is_empty!11913)))

(declare-fun b!446914 () Bool)

(declare-fun res!265429 () Bool)

(declare-fun e!262490 () Bool)

(assert (=> b!446914 (=> (not res!265429) (not e!262490))))

(declare-fun lt!203875 () array!27595)

(declare-datatypes ((List!7904 0))(
  ( (Nil!7901) (Cons!7900 (h!8756 (_ BitVec 64)) (t!13674 List!7904)) )
))
(declare-fun arrayNoDuplicates!0 (array!27595 (_ BitVec 32) List!7904) Bool)

(assert (=> b!446914 (= res!265429 (arrayNoDuplicates!0 lt!203875 #b00000000000000000000000000000000 Nil!7901))))

(declare-fun b!446915 () Bool)

(declare-fun res!265423 () Bool)

(assert (=> b!446915 (=> (not res!265423) (not e!262491))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446915 (= res!265423 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13592 _keys!709))))))

(declare-fun b!446916 () Bool)

(assert (=> b!446916 (= e!262490 false)))

(declare-datatypes ((V!16989 0))(
  ( (V!16990 (val!6001 Int)) )
))
(declare-fun minValue!515 () V!16989)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5613 0))(
  ( (ValueCellFull!5613 (v!8252 V!16989)) (EmptyCell!5613) )
))
(declare-datatypes ((array!27597 0))(
  ( (array!27598 (arr!13241 (Array (_ BitVec 32) ValueCell!5613)) (size!13593 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27597)

(declare-fun zeroValue!515 () V!16989)

(declare-datatypes ((tuple2!7792 0))(
  ( (tuple2!7793 (_1!3906 (_ BitVec 64)) (_2!3906 V!16989)) )
))
(declare-datatypes ((List!7905 0))(
  ( (Nil!7902) (Cons!7901 (h!8757 tuple2!7792) (t!13675 List!7905)) )
))
(declare-datatypes ((ListLongMap!6719 0))(
  ( (ListLongMap!6720 (toList!3375 List!7905)) )
))
(declare-fun lt!203874 () ListLongMap!6719)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1555 (array!27595 array!27597 (_ BitVec 32) (_ BitVec 32) V!16989 V!16989 (_ BitVec 32) Int) ListLongMap!6719)

(assert (=> b!446916 (= lt!203874 (getCurrentListMapNoExtraKeys!1555 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!446917 () Bool)

(declare-fun res!265431 () Bool)

(assert (=> b!446917 (=> (not res!265431) (not e!262491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27595 (_ BitVec 32)) Bool)

(assert (=> b!446917 (= res!265431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446918 () Bool)

(declare-fun res!265434 () Bool)

(assert (=> b!446918 (=> (not res!265434) (not e!262491))))

(assert (=> b!446918 (= res!265434 (or (= (select (arr!13240 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13240 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!446919 () Bool)

(assert (=> b!446919 (= e!262491 e!262490)))

(declare-fun res!265428 () Bool)

(assert (=> b!446919 (=> (not res!265428) (not e!262490))))

(assert (=> b!446919 (= res!265428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203875 mask!1025))))

(assert (=> b!446919 (= lt!203875 (array!27596 (store (arr!13240 _keys!709) i!563 k0!794) (size!13592 _keys!709)))))

(declare-fun mapIsEmpty!19503 () Bool)

(declare-fun mapRes!19503 () Bool)

(assert (=> mapIsEmpty!19503 mapRes!19503))

(declare-fun res!265433 () Bool)

(assert (=> start!40572 (=> (not res!265433) (not e!262491))))

(assert (=> start!40572 (= res!265433 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13592 _keys!709))))))

(assert (=> start!40572 e!262491))

(assert (=> start!40572 tp_is_empty!11913))

(assert (=> start!40572 tp!37545))

(assert (=> start!40572 true))

(declare-fun e!262487 () Bool)

(declare-fun array_inv!9588 (array!27597) Bool)

(assert (=> start!40572 (and (array_inv!9588 _values!549) e!262487)))

(declare-fun array_inv!9589 (array!27595) Bool)

(assert (=> start!40572 (array_inv!9589 _keys!709)))

(declare-fun b!446920 () Bool)

(declare-fun res!265427 () Bool)

(assert (=> b!446920 (=> (not res!265427) (not e!262491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!446920 (= res!265427 (validMask!0 mask!1025))))

(declare-fun b!446921 () Bool)

(declare-fun res!265424 () Bool)

(assert (=> b!446921 (=> (not res!265424) (not e!262491))))

(assert (=> b!446921 (= res!265424 (and (= (size!13593 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13592 _keys!709) (size!13593 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446922 () Bool)

(declare-fun res!265425 () Bool)

(assert (=> b!446922 (=> (not res!265425) (not e!262490))))

(assert (=> b!446922 (= res!265425 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19503 () Bool)

(declare-fun tp!37544 () Bool)

(assert (=> mapNonEmpty!19503 (= mapRes!19503 (and tp!37544 e!262488))))

(declare-fun mapValue!19503 () ValueCell!5613)

(declare-fun mapRest!19503 () (Array (_ BitVec 32) ValueCell!5613))

(declare-fun mapKey!19503 () (_ BitVec 32))

(assert (=> mapNonEmpty!19503 (= (arr!13241 _values!549) (store mapRest!19503 mapKey!19503 mapValue!19503))))

(declare-fun b!446923 () Bool)

(declare-fun e!262486 () Bool)

(assert (=> b!446923 (= e!262486 tp_is_empty!11913)))

(declare-fun b!446924 () Bool)

(declare-fun res!265430 () Bool)

(assert (=> b!446924 (=> (not res!265430) (not e!262491))))

(assert (=> b!446924 (= res!265430 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7901))))

(declare-fun b!446925 () Bool)

(declare-fun res!265426 () Bool)

(assert (=> b!446925 (=> (not res!265426) (not e!262491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446925 (= res!265426 (validKeyInArray!0 k0!794))))

(declare-fun b!446926 () Bool)

(assert (=> b!446926 (= e!262487 (and e!262486 mapRes!19503))))

(declare-fun condMapEmpty!19503 () Bool)

(declare-fun mapDefault!19503 () ValueCell!5613)

(assert (=> b!446926 (= condMapEmpty!19503 (= (arr!13241 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5613)) mapDefault!19503)))))

(assert (= (and start!40572 res!265433) b!446920))

(assert (= (and b!446920 res!265427) b!446921))

(assert (= (and b!446921 res!265424) b!446917))

(assert (= (and b!446917 res!265431) b!446924))

(assert (= (and b!446924 res!265430) b!446915))

(assert (= (and b!446915 res!265423) b!446925))

(assert (= (and b!446925 res!265426) b!446918))

(assert (= (and b!446918 res!265434) b!446912))

(assert (= (and b!446912 res!265432) b!446919))

(assert (= (and b!446919 res!265428) b!446914))

(assert (= (and b!446914 res!265429) b!446922))

(assert (= (and b!446922 res!265425) b!446916))

(assert (= (and b!446926 condMapEmpty!19503) mapIsEmpty!19503))

(assert (= (and b!446926 (not condMapEmpty!19503)) mapNonEmpty!19503))

(get-info :version)

(assert (= (and mapNonEmpty!19503 ((_ is ValueCellFull!5613) mapValue!19503)) b!446913))

(assert (= (and b!446926 ((_ is ValueCellFull!5613) mapDefault!19503)) b!446923))

(assert (= start!40572 b!446926))

(declare-fun m!431965 () Bool)

(assert (=> b!446914 m!431965))

(declare-fun m!431967 () Bool)

(assert (=> mapNonEmpty!19503 m!431967))

(declare-fun m!431969 () Bool)

(assert (=> b!446912 m!431969))

(declare-fun m!431971 () Bool)

(assert (=> b!446920 m!431971))

(declare-fun m!431973 () Bool)

(assert (=> b!446918 m!431973))

(declare-fun m!431975 () Bool)

(assert (=> b!446925 m!431975))

(declare-fun m!431977 () Bool)

(assert (=> b!446924 m!431977))

(declare-fun m!431979 () Bool)

(assert (=> b!446919 m!431979))

(declare-fun m!431981 () Bool)

(assert (=> b!446919 m!431981))

(declare-fun m!431983 () Bool)

(assert (=> b!446916 m!431983))

(declare-fun m!431985 () Bool)

(assert (=> b!446917 m!431985))

(declare-fun m!431987 () Bool)

(assert (=> start!40572 m!431987))

(declare-fun m!431989 () Bool)

(assert (=> start!40572 m!431989))

(check-sat (not b!446925) (not b!446919) (not b!446916) (not start!40572) (not b_next!10575) (not b!446912) (not b!446914) b_and!18601 (not b!446924) tp_is_empty!11913 (not mapNonEmpty!19503) (not b!446917) (not b!446920))
(check-sat b_and!18601 (not b_next!10575))
