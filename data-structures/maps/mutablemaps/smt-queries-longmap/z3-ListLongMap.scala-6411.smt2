; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82292 () Bool)

(assert start!82292)

(declare-fun b_free!18537 () Bool)

(declare-fun b_next!18537 () Bool)

(assert (=> start!82292 (= b_free!18537 (not b_next!18537))))

(declare-fun tp!64573 () Bool)

(declare-fun b_and!30043 () Bool)

(assert (=> start!82292 (= tp!64573 b_and!30043)))

(declare-fun res!641900 () Bool)

(declare-fun e!540548 () Bool)

(assert (=> start!82292 (=> (not res!641900) (not e!540548))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82292 (= res!641900 (validMask!0 mask!2088))))

(assert (=> start!82292 e!540548))

(assert (=> start!82292 true))

(declare-fun tp_is_empty!21243 () Bool)

(assert (=> start!82292 tp_is_empty!21243))

(declare-datatypes ((array!58599 0))(
  ( (array!58600 (arr!28169 (Array (_ BitVec 32) (_ BitVec 64))) (size!28649 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58599)

(declare-fun array_inv!21785 (array!58599) Bool)

(assert (=> start!82292 (array_inv!21785 _keys!1668)))

(declare-datatypes ((V!33307 0))(
  ( (V!33308 (val!10672 Int)) )
))
(declare-datatypes ((ValueCell!10140 0))(
  ( (ValueCellFull!10140 (v!13229 V!33307)) (EmptyCell!10140) )
))
(declare-datatypes ((array!58601 0))(
  ( (array!58602 (arr!28170 (Array (_ BitVec 32) ValueCell!10140)) (size!28650 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58601)

(declare-fun e!540544 () Bool)

(declare-fun array_inv!21786 (array!58601) Bool)

(assert (=> start!82292 (and (array_inv!21786 _values!1386) e!540544)))

(assert (=> start!82292 tp!64573))

(declare-fun b!958792 () Bool)

(declare-fun res!641903 () Bool)

(assert (=> b!958792 (=> (not res!641903) (not e!540548))))

(declare-fun minValue!1328 () V!33307)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33307)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13848 0))(
  ( (tuple2!13849 (_1!6934 (_ BitVec 64)) (_2!6934 V!33307)) )
))
(declare-datatypes ((List!19714 0))(
  ( (Nil!19711) (Cons!19710 (h!20872 tuple2!13848) (t!28085 List!19714)) )
))
(declare-datatypes ((ListLongMap!12559 0))(
  ( (ListLongMap!12560 (toList!6295 List!19714)) )
))
(declare-fun contains!5348 (ListLongMap!12559 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3480 (array!58599 array!58601 (_ BitVec 32) (_ BitVec 32) V!33307 V!33307 (_ BitVec 32) Int) ListLongMap!12559)

(assert (=> b!958792 (= res!641903 (contains!5348 (getCurrentListMap!3480 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28169 _keys!1668) i!793)))))

(declare-fun b!958793 () Bool)

(declare-fun res!641902 () Bool)

(assert (=> b!958793 (=> (not res!641902) (not e!540548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58599 (_ BitVec 32)) Bool)

(assert (=> b!958793 (= res!641902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958794 () Bool)

(declare-fun res!641901 () Bool)

(assert (=> b!958794 (=> (not res!641901) (not e!540548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958794 (= res!641901 (validKeyInArray!0 (select (arr!28169 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33844 () Bool)

(declare-fun mapRes!33844 () Bool)

(declare-fun tp!64572 () Bool)

(declare-fun e!540545 () Bool)

(assert (=> mapNonEmpty!33844 (= mapRes!33844 (and tp!64572 e!540545))))

(declare-fun mapRest!33844 () (Array (_ BitVec 32) ValueCell!10140))

(declare-fun mapKey!33844 () (_ BitVec 32))

(declare-fun mapValue!33844 () ValueCell!10140)

(assert (=> mapNonEmpty!33844 (= (arr!28170 _values!1386) (store mapRest!33844 mapKey!33844 mapValue!33844))))

(declare-fun b!958795 () Bool)

(assert (=> b!958795 (= e!540548 (not true))))

(assert (=> b!958795 (contains!5348 (getCurrentListMap!3480 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 #b00000000000000000000000000000000 defaultEntry!1389) (select (arr!28169 _keys!1668) i!793))))

(declare-datatypes ((Unit!32145 0))(
  ( (Unit!32146) )
))
(declare-fun lt!430442 () Unit!32145)

(declare-fun lemmaInListMapFromThenInFromSmaller!2 (array!58599 array!58601 (_ BitVec 32) (_ BitVec 32) V!33307 V!33307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32145)

(assert (=> b!958795 (= lt!430442 (lemmaInListMapFromThenInFromSmaller!2 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 #b00000000000000000000000000000000 i!793 defaultEntry!1389))))

(declare-fun mapIsEmpty!33844 () Bool)

(assert (=> mapIsEmpty!33844 mapRes!33844))

(declare-fun b!958796 () Bool)

(declare-fun e!540547 () Bool)

(assert (=> b!958796 (= e!540547 tp_is_empty!21243)))

(declare-fun b!958797 () Bool)

(assert (=> b!958797 (= e!540544 (and e!540547 mapRes!33844))))

(declare-fun condMapEmpty!33844 () Bool)

(declare-fun mapDefault!33844 () ValueCell!10140)

(assert (=> b!958797 (= condMapEmpty!33844 (= (arr!28170 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10140)) mapDefault!33844)))))

(declare-fun b!958798 () Bool)

(assert (=> b!958798 (= e!540545 tp_is_empty!21243)))

(declare-fun b!958799 () Bool)

(declare-fun res!641904 () Bool)

(assert (=> b!958799 (=> (not res!641904) (not e!540548))))

(declare-datatypes ((List!19715 0))(
  ( (Nil!19712) (Cons!19711 (h!20873 (_ BitVec 64)) (t!28086 List!19715)) )
))
(declare-fun arrayNoDuplicates!0 (array!58599 (_ BitVec 32) List!19715) Bool)

(assert (=> b!958799 (= res!641904 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19712))))

(declare-fun b!958800 () Bool)

(declare-fun res!641899 () Bool)

(assert (=> b!958800 (=> (not res!641899) (not e!540548))))

(assert (=> b!958800 (= res!641899 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28649 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28649 _keys!1668))))))

(declare-fun b!958801 () Bool)

(declare-fun res!641898 () Bool)

(assert (=> b!958801 (=> (not res!641898) (not e!540548))))

(assert (=> b!958801 (= res!641898 (and (= (size!28650 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28649 _keys!1668) (size!28650 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(assert (= (and start!82292 res!641900) b!958801))

(assert (= (and b!958801 res!641898) b!958793))

(assert (= (and b!958793 res!641902) b!958799))

(assert (= (and b!958799 res!641904) b!958800))

(assert (= (and b!958800 res!641899) b!958794))

(assert (= (and b!958794 res!641901) b!958792))

(assert (= (and b!958792 res!641903) b!958795))

(assert (= (and b!958797 condMapEmpty!33844) mapIsEmpty!33844))

(assert (= (and b!958797 (not condMapEmpty!33844)) mapNonEmpty!33844))

(get-info :version)

(assert (= (and mapNonEmpty!33844 ((_ is ValueCellFull!10140) mapValue!33844)) b!958798))

(assert (= (and b!958797 ((_ is ValueCellFull!10140) mapDefault!33844)) b!958796))

(assert (= start!82292 b!958797))

(declare-fun m!889457 () Bool)

(assert (=> mapNonEmpty!33844 m!889457))

(declare-fun m!889459 () Bool)

(assert (=> b!958794 m!889459))

(assert (=> b!958794 m!889459))

(declare-fun m!889461 () Bool)

(assert (=> b!958794 m!889461))

(declare-fun m!889463 () Bool)

(assert (=> start!82292 m!889463))

(declare-fun m!889465 () Bool)

(assert (=> start!82292 m!889465))

(declare-fun m!889467 () Bool)

(assert (=> start!82292 m!889467))

(declare-fun m!889469 () Bool)

(assert (=> b!958799 m!889469))

(declare-fun m!889471 () Bool)

(assert (=> b!958792 m!889471))

(assert (=> b!958792 m!889459))

(assert (=> b!958792 m!889471))

(assert (=> b!958792 m!889459))

(declare-fun m!889473 () Bool)

(assert (=> b!958792 m!889473))

(declare-fun m!889475 () Bool)

(assert (=> b!958793 m!889475))

(declare-fun m!889477 () Bool)

(assert (=> b!958795 m!889477))

(assert (=> b!958795 m!889459))

(assert (=> b!958795 m!889477))

(assert (=> b!958795 m!889459))

(declare-fun m!889479 () Bool)

(assert (=> b!958795 m!889479))

(declare-fun m!889481 () Bool)

(assert (=> b!958795 m!889481))

(check-sat (not b!958794) (not mapNonEmpty!33844) b_and!30043 (not b!958793) (not b!958799) tp_is_empty!21243 (not start!82292) (not b!958792) (not b!958795) (not b_next!18537))
(check-sat b_and!30043 (not b_next!18537))
