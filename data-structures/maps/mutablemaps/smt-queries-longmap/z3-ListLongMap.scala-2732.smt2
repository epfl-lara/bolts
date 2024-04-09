; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40220 () Bool)

(assert start!40220)

(declare-fun b_free!10479 () Bool)

(declare-fun b_next!10479 () Bool)

(assert (=> start!40220 (= b_free!10479 (not b_next!10479))))

(declare-fun tp!36965 () Bool)

(declare-fun b_and!18465 () Bool)

(assert (=> start!40220 (= tp!36965 b_and!18465)))

(declare-fun b!440657 () Bool)

(declare-fun res!260787 () Bool)

(declare-fun e!259570 () Bool)

(assert (=> b!440657 (=> (not res!260787) (not e!259570))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27049 0))(
  ( (array!27050 (arr!12971 (Array (_ BitVec 32) (_ BitVec 64))) (size!13323 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27049)

(assert (=> b!440657 (= res!260787 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13323 _keys!709))))))

(declare-fun mapNonEmpty!19068 () Bool)

(declare-fun mapRes!19068 () Bool)

(declare-fun tp!36966 () Bool)

(declare-fun e!259569 () Bool)

(assert (=> mapNonEmpty!19068 (= mapRes!19068 (and tp!36966 e!259569))))

(declare-datatypes ((V!16613 0))(
  ( (V!16614 (val!5860 Int)) )
))
(declare-datatypes ((ValueCell!5472 0))(
  ( (ValueCellFull!5472 (v!8103 V!16613)) (EmptyCell!5472) )
))
(declare-fun mapRest!19068 () (Array (_ BitVec 32) ValueCell!5472))

(declare-fun mapKey!19068 () (_ BitVec 32))

(declare-datatypes ((array!27051 0))(
  ( (array!27052 (arr!12972 (Array (_ BitVec 32) ValueCell!5472)) (size!13324 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27051)

(declare-fun mapValue!19068 () ValueCell!5472)

(assert (=> mapNonEmpty!19068 (= (arr!12972 _values!549) (store mapRest!19068 mapKey!19068 mapValue!19068))))

(declare-fun b!440658 () Bool)

(declare-fun res!260796 () Bool)

(assert (=> b!440658 (=> (not res!260796) (not e!259570))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440658 (= res!260796 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!440659 () Bool)

(declare-fun e!259567 () Bool)

(declare-fun e!259564 () Bool)

(assert (=> b!440659 (= e!259567 e!259564)))

(declare-fun res!260788 () Bool)

(assert (=> b!440659 (=> (not res!260788) (not e!259564))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!440659 (= res!260788 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202677 () array!27049)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16613)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!202676 () array!27051)

(declare-datatypes ((tuple2!7714 0))(
  ( (tuple2!7715 (_1!3867 (_ BitVec 64)) (_2!3867 V!16613)) )
))
(declare-datatypes ((List!7755 0))(
  ( (Nil!7752) (Cons!7751 (h!8607 tuple2!7714) (t!13519 List!7755)) )
))
(declare-datatypes ((ListLongMap!6641 0))(
  ( (ListLongMap!6642 (toList!3336 List!7755)) )
))
(declare-fun lt!202675 () ListLongMap!6641)

(declare-fun minValue!515 () V!16613)

(declare-fun getCurrentListMapNoExtraKeys!1518 (array!27049 array!27051 (_ BitVec 32) (_ BitVec 32) V!16613 V!16613 (_ BitVec 32) Int) ListLongMap!6641)

(assert (=> b!440659 (= lt!202675 (getCurrentListMapNoExtraKeys!1518 lt!202677 lt!202676 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16613)

(assert (=> b!440659 (= lt!202676 (array!27052 (store (arr!12972 _values!549) i!563 (ValueCellFull!5472 v!412)) (size!13324 _values!549)))))

(declare-fun lt!202673 () ListLongMap!6641)

(assert (=> b!440659 (= lt!202673 (getCurrentListMapNoExtraKeys!1518 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440660 () Bool)

(declare-fun tp_is_empty!11631 () Bool)

(assert (=> b!440660 (= e!259569 tp_is_empty!11631)))

(declare-fun b!440661 () Bool)

(declare-fun res!260798 () Bool)

(assert (=> b!440661 (=> (not res!260798) (not e!259567))))

(assert (=> b!440661 (= res!260798 (bvsle from!863 i!563))))

(declare-fun b!440662 () Bool)

(declare-fun res!260799 () Bool)

(assert (=> b!440662 (=> (not res!260799) (not e!259570))))

(declare-datatypes ((List!7756 0))(
  ( (Nil!7753) (Cons!7752 (h!8608 (_ BitVec 64)) (t!13520 List!7756)) )
))
(declare-fun arrayNoDuplicates!0 (array!27049 (_ BitVec 32) List!7756) Bool)

(assert (=> b!440662 (= res!260799 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7753))))

(declare-fun res!260790 () Bool)

(assert (=> start!40220 (=> (not res!260790) (not e!259570))))

(assert (=> start!40220 (= res!260790 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13323 _keys!709))))))

(assert (=> start!40220 e!259570))

(assert (=> start!40220 tp_is_empty!11631))

(assert (=> start!40220 tp!36965))

(assert (=> start!40220 true))

(declare-fun e!259566 () Bool)

(declare-fun array_inv!9406 (array!27051) Bool)

(assert (=> start!40220 (and (array_inv!9406 _values!549) e!259566)))

(declare-fun array_inv!9407 (array!27049) Bool)

(assert (=> start!40220 (array_inv!9407 _keys!709)))

(declare-fun b!440663 () Bool)

(declare-fun e!259565 () Bool)

(assert (=> b!440663 (= e!259566 (and e!259565 mapRes!19068))))

(declare-fun condMapEmpty!19068 () Bool)

(declare-fun mapDefault!19068 () ValueCell!5472)

(assert (=> b!440663 (= condMapEmpty!19068 (= (arr!12972 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5472)) mapDefault!19068)))))

(declare-fun b!440664 () Bool)

(declare-fun res!260792 () Bool)

(assert (=> b!440664 (=> (not res!260792) (not e!259570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440664 (= res!260792 (validKeyInArray!0 k0!794))))

(declare-fun b!440665 () Bool)

(declare-fun res!260797 () Bool)

(assert (=> b!440665 (=> (not res!260797) (not e!259567))))

(assert (=> b!440665 (= res!260797 (arrayNoDuplicates!0 lt!202677 #b00000000000000000000000000000000 Nil!7753))))

(declare-fun b!440666 () Bool)

(assert (=> b!440666 (= e!259565 tp_is_empty!11631)))

(declare-fun b!440667 () Bool)

(declare-fun res!260789 () Bool)

(assert (=> b!440667 (=> (not res!260789) (not e!259570))))

(assert (=> b!440667 (= res!260789 (and (= (size!13324 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13323 _keys!709) (size!13324 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440668 () Bool)

(assert (=> b!440668 (= e!259564 (not true))))

(declare-fun +!1472 (ListLongMap!6641 tuple2!7714) ListLongMap!6641)

(assert (=> b!440668 (= (getCurrentListMapNoExtraKeys!1518 lt!202677 lt!202676 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1472 (getCurrentListMapNoExtraKeys!1518 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7715 k0!794 v!412)))))

(declare-datatypes ((Unit!13059 0))(
  ( (Unit!13060) )
))
(declare-fun lt!202674 () Unit!13059)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!650 (array!27049 array!27051 (_ BitVec 32) (_ BitVec 32) V!16613 V!16613 (_ BitVec 32) (_ BitVec 64) V!16613 (_ BitVec 32) Int) Unit!13059)

(assert (=> b!440668 (= lt!202674 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!650 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!19068 () Bool)

(assert (=> mapIsEmpty!19068 mapRes!19068))

(declare-fun b!440669 () Bool)

(declare-fun res!260793 () Bool)

(assert (=> b!440669 (=> (not res!260793) (not e!259570))))

(assert (=> b!440669 (= res!260793 (or (= (select (arr!12971 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12971 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440670 () Bool)

(assert (=> b!440670 (= e!259570 e!259567)))

(declare-fun res!260795 () Bool)

(assert (=> b!440670 (=> (not res!260795) (not e!259567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27049 (_ BitVec 32)) Bool)

(assert (=> b!440670 (= res!260795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202677 mask!1025))))

(assert (=> b!440670 (= lt!202677 (array!27050 (store (arr!12971 _keys!709) i!563 k0!794) (size!13323 _keys!709)))))

(declare-fun b!440671 () Bool)

(declare-fun res!260794 () Bool)

(assert (=> b!440671 (=> (not res!260794) (not e!259570))))

(assert (=> b!440671 (= res!260794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!440672 () Bool)

(declare-fun res!260791 () Bool)

(assert (=> b!440672 (=> (not res!260791) (not e!259570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440672 (= res!260791 (validMask!0 mask!1025))))

(assert (= (and start!40220 res!260790) b!440672))

(assert (= (and b!440672 res!260791) b!440667))

(assert (= (and b!440667 res!260789) b!440671))

(assert (= (and b!440671 res!260794) b!440662))

(assert (= (and b!440662 res!260799) b!440657))

(assert (= (and b!440657 res!260787) b!440664))

(assert (= (and b!440664 res!260792) b!440669))

(assert (= (and b!440669 res!260793) b!440658))

(assert (= (and b!440658 res!260796) b!440670))

(assert (= (and b!440670 res!260795) b!440665))

(assert (= (and b!440665 res!260797) b!440661))

(assert (= (and b!440661 res!260798) b!440659))

(assert (= (and b!440659 res!260788) b!440668))

(assert (= (and b!440663 condMapEmpty!19068) mapIsEmpty!19068))

(assert (= (and b!440663 (not condMapEmpty!19068)) mapNonEmpty!19068))

(get-info :version)

(assert (= (and mapNonEmpty!19068 ((_ is ValueCellFull!5472) mapValue!19068)) b!440660))

(assert (= (and b!440663 ((_ is ValueCellFull!5472) mapDefault!19068)) b!440666))

(assert (= start!40220 b!440663))

(declare-fun m!427653 () Bool)

(assert (=> b!440668 m!427653))

(declare-fun m!427655 () Bool)

(assert (=> b!440668 m!427655))

(assert (=> b!440668 m!427655))

(declare-fun m!427657 () Bool)

(assert (=> b!440668 m!427657))

(declare-fun m!427659 () Bool)

(assert (=> b!440668 m!427659))

(declare-fun m!427661 () Bool)

(assert (=> b!440671 m!427661))

(declare-fun m!427663 () Bool)

(assert (=> mapNonEmpty!19068 m!427663))

(declare-fun m!427665 () Bool)

(assert (=> b!440669 m!427665))

(declare-fun m!427667 () Bool)

(assert (=> b!440664 m!427667))

(declare-fun m!427669 () Bool)

(assert (=> b!440672 m!427669))

(declare-fun m!427671 () Bool)

(assert (=> b!440659 m!427671))

(declare-fun m!427673 () Bool)

(assert (=> b!440659 m!427673))

(declare-fun m!427675 () Bool)

(assert (=> b!440659 m!427675))

(declare-fun m!427677 () Bool)

(assert (=> b!440662 m!427677))

(declare-fun m!427679 () Bool)

(assert (=> b!440665 m!427679))

(declare-fun m!427681 () Bool)

(assert (=> start!40220 m!427681))

(declare-fun m!427683 () Bool)

(assert (=> start!40220 m!427683))

(declare-fun m!427685 () Bool)

(assert (=> b!440658 m!427685))

(declare-fun m!427687 () Bool)

(assert (=> b!440670 m!427687))

(declare-fun m!427689 () Bool)

(assert (=> b!440670 m!427689))

(check-sat tp_is_empty!11631 (not b!440665) (not b!440659) (not b!440671) (not mapNonEmpty!19068) (not start!40220) (not b_next!10479) (not b!440672) (not b!440658) (not b!440668) (not b!440662) (not b!440670) b_and!18465 (not b!440664))
(check-sat b_and!18465 (not b_next!10479))
