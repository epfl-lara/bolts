; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40626 () Bool)

(assert start!40626)

(declare-fun b_free!10629 () Bool)

(declare-fun b_next!10629 () Bool)

(assert (=> start!40626 (= b_free!10629 (not b_next!10629))))

(declare-fun tp!37707 () Bool)

(declare-fun b_and!18655 () Bool)

(assert (=> start!40626 (= tp!37707 b_and!18655)))

(declare-fun b!448127 () Bool)

(declare-fun res!266395 () Bool)

(declare-fun e!262974 () Bool)

(assert (=> b!448127 (=> (not res!266395) (not e!262974))))

(declare-datatypes ((array!27701 0))(
  ( (array!27702 (arr!13293 (Array (_ BitVec 32) (_ BitVec 64))) (size!13645 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27701)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27701 (_ BitVec 32)) Bool)

(assert (=> b!448127 (= res!266395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448128 () Bool)

(declare-fun e!262973 () Bool)

(assert (=> b!448128 (= e!262974 e!262973)))

(declare-fun res!266400 () Bool)

(assert (=> b!448128 (=> (not res!266400) (not e!262973))))

(declare-fun lt!204104 () array!27701)

(assert (=> b!448128 (= res!266400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204104 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448128 (= lt!204104 (array!27702 (store (arr!13293 _keys!709) i!563 k0!794) (size!13645 _keys!709)))))

(declare-fun b!448129 () Bool)

(declare-fun res!266401 () Bool)

(assert (=> b!448129 (=> (not res!266401) (not e!262974))))

(assert (=> b!448129 (= res!266401 (or (= (select (arr!13293 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13293 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448130 () Bool)

(declare-fun res!266398 () Bool)

(assert (=> b!448130 (=> (not res!266398) (not e!262974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448130 (= res!266398 (validMask!0 mask!1025))))

(declare-fun b!448131 () Bool)

(declare-fun res!266406 () Bool)

(assert (=> b!448131 (=> (not res!266406) (not e!262974))))

(assert (=> b!448131 (= res!266406 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13645 _keys!709))))))

(declare-fun b!448132 () Bool)

(declare-fun res!266397 () Bool)

(assert (=> b!448132 (=> (not res!266397) (not e!262974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448132 (= res!266397 (validKeyInArray!0 k0!794))))

(declare-fun res!266403 () Bool)

(assert (=> start!40626 (=> (not res!266403) (not e!262974))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40626 (= res!266403 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13645 _keys!709))))))

(assert (=> start!40626 e!262974))

(declare-fun tp_is_empty!11967 () Bool)

(assert (=> start!40626 tp_is_empty!11967))

(assert (=> start!40626 tp!37707))

(assert (=> start!40626 true))

(declare-datatypes ((V!17061 0))(
  ( (V!17062 (val!6028 Int)) )
))
(declare-datatypes ((ValueCell!5640 0))(
  ( (ValueCellFull!5640 (v!8279 V!17061)) (EmptyCell!5640) )
))
(declare-datatypes ((array!27703 0))(
  ( (array!27704 (arr!13294 (Array (_ BitVec 32) ValueCell!5640)) (size!13646 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27703)

(declare-fun e!262976 () Bool)

(declare-fun array_inv!9628 (array!27703) Bool)

(assert (=> start!40626 (and (array_inv!9628 _values!549) e!262976)))

(declare-fun array_inv!9629 (array!27701) Bool)

(assert (=> start!40626 (array_inv!9629 _keys!709)))

(declare-fun mapNonEmpty!19584 () Bool)

(declare-fun mapRes!19584 () Bool)

(declare-fun tp!37706 () Bool)

(declare-fun e!262975 () Bool)

(assert (=> mapNonEmpty!19584 (= mapRes!19584 (and tp!37706 e!262975))))

(declare-fun mapKey!19584 () (_ BitVec 32))

(declare-fun mapValue!19584 () ValueCell!5640)

(declare-fun mapRest!19584 () (Array (_ BitVec 32) ValueCell!5640))

(assert (=> mapNonEmpty!19584 (= (arr!13294 _values!549) (store mapRest!19584 mapKey!19584 mapValue!19584))))

(declare-fun b!448133 () Bool)

(declare-fun res!266399 () Bool)

(assert (=> b!448133 (=> (not res!266399) (not e!262973))))

(declare-datatypes ((List!7950 0))(
  ( (Nil!7947) (Cons!7946 (h!8802 (_ BitVec 64)) (t!13720 List!7950)) )
))
(declare-fun arrayNoDuplicates!0 (array!27701 (_ BitVec 32) List!7950) Bool)

(assert (=> b!448133 (= res!266399 (arrayNoDuplicates!0 lt!204104 #b00000000000000000000000000000000 Nil!7947))))

(declare-fun b!448134 () Bool)

(declare-fun res!266402 () Bool)

(assert (=> b!448134 (=> (not res!266402) (not e!262974))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!448134 (= res!266402 (and (= (size!13646 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13645 _keys!709) (size!13646 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448135 () Bool)

(declare-fun res!266404 () Bool)

(assert (=> b!448135 (=> (not res!266404) (not e!262974))))

(assert (=> b!448135 (= res!266404 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7947))))

(declare-fun b!448136 () Bool)

(declare-fun res!266405 () Bool)

(assert (=> b!448136 (=> (not res!266405) (not e!262973))))

(assert (=> b!448136 (= res!266405 (bvsle from!863 i!563))))

(declare-fun b!448137 () Bool)

(declare-fun res!266396 () Bool)

(assert (=> b!448137 (=> (not res!266396) (not e!262974))))

(declare-fun arrayContainsKey!0 (array!27701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448137 (= res!266396 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!448138 () Bool)

(declare-fun e!262977 () Bool)

(assert (=> b!448138 (= e!262976 (and e!262977 mapRes!19584))))

(declare-fun condMapEmpty!19584 () Bool)

(declare-fun mapDefault!19584 () ValueCell!5640)

(assert (=> b!448138 (= condMapEmpty!19584 (= (arr!13294 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5640)) mapDefault!19584)))))

(declare-fun mapIsEmpty!19584 () Bool)

(assert (=> mapIsEmpty!19584 mapRes!19584))

(declare-fun b!448139 () Bool)

(assert (=> b!448139 (= e!262973 false)))

(declare-fun minValue!515 () V!17061)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17061)

(declare-fun v!412 () V!17061)

(declare-datatypes ((tuple2!7840 0))(
  ( (tuple2!7841 (_1!3930 (_ BitVec 64)) (_2!3930 V!17061)) )
))
(declare-datatypes ((List!7951 0))(
  ( (Nil!7948) (Cons!7947 (h!8803 tuple2!7840) (t!13721 List!7951)) )
))
(declare-datatypes ((ListLongMap!6767 0))(
  ( (ListLongMap!6768 (toList!3399 List!7951)) )
))
(declare-fun lt!204106 () ListLongMap!6767)

(declare-fun getCurrentListMapNoExtraKeys!1579 (array!27701 array!27703 (_ BitVec 32) (_ BitVec 32) V!17061 V!17061 (_ BitVec 32) Int) ListLongMap!6767)

(assert (=> b!448139 (= lt!204106 (getCurrentListMapNoExtraKeys!1579 lt!204104 (array!27704 (store (arr!13294 _values!549) i!563 (ValueCellFull!5640 v!412)) (size!13646 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204105 () ListLongMap!6767)

(assert (=> b!448139 (= lt!204105 (getCurrentListMapNoExtraKeys!1579 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448140 () Bool)

(assert (=> b!448140 (= e!262977 tp_is_empty!11967)))

(declare-fun b!448141 () Bool)

(assert (=> b!448141 (= e!262975 tp_is_empty!11967)))

(assert (= (and start!40626 res!266403) b!448130))

(assert (= (and b!448130 res!266398) b!448134))

(assert (= (and b!448134 res!266402) b!448127))

(assert (= (and b!448127 res!266395) b!448135))

(assert (= (and b!448135 res!266404) b!448131))

(assert (= (and b!448131 res!266406) b!448132))

(assert (= (and b!448132 res!266397) b!448129))

(assert (= (and b!448129 res!266401) b!448137))

(assert (= (and b!448137 res!266396) b!448128))

(assert (= (and b!448128 res!266400) b!448133))

(assert (= (and b!448133 res!266399) b!448136))

(assert (= (and b!448136 res!266405) b!448139))

(assert (= (and b!448138 condMapEmpty!19584) mapIsEmpty!19584))

(assert (= (and b!448138 (not condMapEmpty!19584)) mapNonEmpty!19584))

(get-info :version)

(assert (= (and mapNonEmpty!19584 ((_ is ValueCellFull!5640) mapValue!19584)) b!448141))

(assert (= (and b!448138 ((_ is ValueCellFull!5640) mapDefault!19584)) b!448140))

(assert (= start!40626 b!448138))

(declare-fun m!432755 () Bool)

(assert (=> b!448135 m!432755))

(declare-fun m!432757 () Bool)

(assert (=> mapNonEmpty!19584 m!432757))

(declare-fun m!432759 () Bool)

(assert (=> b!448127 m!432759))

(declare-fun m!432761 () Bool)

(assert (=> b!448129 m!432761))

(declare-fun m!432763 () Bool)

(assert (=> b!448130 m!432763))

(declare-fun m!432765 () Bool)

(assert (=> b!448139 m!432765))

(declare-fun m!432767 () Bool)

(assert (=> b!448139 m!432767))

(declare-fun m!432769 () Bool)

(assert (=> b!448139 m!432769))

(declare-fun m!432771 () Bool)

(assert (=> start!40626 m!432771))

(declare-fun m!432773 () Bool)

(assert (=> start!40626 m!432773))

(declare-fun m!432775 () Bool)

(assert (=> b!448132 m!432775))

(declare-fun m!432777 () Bool)

(assert (=> b!448128 m!432777))

(declare-fun m!432779 () Bool)

(assert (=> b!448128 m!432779))

(declare-fun m!432781 () Bool)

(assert (=> b!448133 m!432781))

(declare-fun m!432783 () Bool)

(assert (=> b!448137 m!432783))

(check-sat (not b!448128) (not b_next!10629) (not b!448127) (not b!448133) (not b!448132) (not b!448135) (not b!448139) tp_is_empty!11967 (not mapNonEmpty!19584) (not b!448130) b_and!18655 (not start!40626) (not b!448137))
(check-sat b_and!18655 (not b_next!10629))
