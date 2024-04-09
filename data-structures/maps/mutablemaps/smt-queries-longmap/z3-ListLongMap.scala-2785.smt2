; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40608 () Bool)

(assert start!40608)

(declare-fun b_free!10611 () Bool)

(declare-fun b_next!10611 () Bool)

(assert (=> start!40608 (= b_free!10611 (not b_next!10611))))

(declare-fun tp!37652 () Bool)

(declare-fun b_and!18637 () Bool)

(assert (=> start!40608 (= tp!37652 b_and!18637)))

(declare-fun b!447722 () Bool)

(declare-fun e!262813 () Bool)

(declare-fun tp_is_empty!11949 () Bool)

(assert (=> b!447722 (= e!262813 tp_is_empty!11949)))

(declare-fun mapNonEmpty!19557 () Bool)

(declare-fun mapRes!19557 () Bool)

(declare-fun tp!37653 () Bool)

(declare-fun e!262812 () Bool)

(assert (=> mapNonEmpty!19557 (= mapRes!19557 (and tp!37653 e!262812))))

(declare-datatypes ((V!17037 0))(
  ( (V!17038 (val!6019 Int)) )
))
(declare-datatypes ((ValueCell!5631 0))(
  ( (ValueCellFull!5631 (v!8270 V!17037)) (EmptyCell!5631) )
))
(declare-fun mapValue!19557 () ValueCell!5631)

(declare-datatypes ((array!27665 0))(
  ( (array!27666 (arr!13275 (Array (_ BitVec 32) ValueCell!5631)) (size!13627 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27665)

(declare-fun mapRest!19557 () (Array (_ BitVec 32) ValueCell!5631))

(declare-fun mapKey!19557 () (_ BitVec 32))

(assert (=> mapNonEmpty!19557 (= (arr!13275 _values!549) (store mapRest!19557 mapKey!19557 mapValue!19557))))

(declare-fun b!447723 () Bool)

(assert (=> b!447723 (= e!262812 tp_is_empty!11949)))

(declare-fun res!266075 () Bool)

(declare-fun e!262815 () Bool)

(assert (=> start!40608 (=> (not res!266075) (not e!262815))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27667 0))(
  ( (array!27668 (arr!13276 (Array (_ BitVec 32) (_ BitVec 64))) (size!13628 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27667)

(assert (=> start!40608 (= res!266075 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13628 _keys!709))))))

(assert (=> start!40608 e!262815))

(assert (=> start!40608 tp_is_empty!11949))

(assert (=> start!40608 tp!37652))

(assert (=> start!40608 true))

(declare-fun e!262811 () Bool)

(declare-fun array_inv!9616 (array!27665) Bool)

(assert (=> start!40608 (and (array_inv!9616 _values!549) e!262811)))

(declare-fun array_inv!9617 (array!27667) Bool)

(assert (=> start!40608 (array_inv!9617 _keys!709)))

(declare-fun b!447724 () Bool)

(declare-fun res!266078 () Bool)

(assert (=> b!447724 (=> (not res!266078) (not e!262815))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447724 (= res!266078 (validKeyInArray!0 k0!794))))

(declare-fun b!447725 () Bool)

(declare-fun res!266079 () Bool)

(assert (=> b!447725 (=> (not res!266079) (not e!262815))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447725 (= res!266079 (validMask!0 mask!1025))))

(declare-fun b!447726 () Bool)

(declare-fun res!266072 () Bool)

(assert (=> b!447726 (=> (not res!266072) (not e!262815))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27667 (_ BitVec 32)) Bool)

(assert (=> b!447726 (= res!266072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447727 () Bool)

(declare-fun e!262810 () Bool)

(assert (=> b!447727 (= e!262815 e!262810)))

(declare-fun res!266073 () Bool)

(assert (=> b!447727 (=> (not res!266073) (not e!262810))))

(declare-fun lt!204025 () array!27667)

(assert (=> b!447727 (= res!266073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204025 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447727 (= lt!204025 (array!27668 (store (arr!13276 _keys!709) i!563 k0!794) (size!13628 _keys!709)))))

(declare-fun b!447728 () Bool)

(assert (=> b!447728 (= e!262810 false)))

(declare-fun minValue!515 () V!17037)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17037)

(declare-datatypes ((tuple2!7822 0))(
  ( (tuple2!7823 (_1!3921 (_ BitVec 64)) (_2!3921 V!17037)) )
))
(declare-datatypes ((List!7933 0))(
  ( (Nil!7930) (Cons!7929 (h!8785 tuple2!7822) (t!13703 List!7933)) )
))
(declare-datatypes ((ListLongMap!6749 0))(
  ( (ListLongMap!6750 (toList!3390 List!7933)) )
))
(declare-fun lt!204024 () ListLongMap!6749)

(declare-fun v!412 () V!17037)

(declare-fun getCurrentListMapNoExtraKeys!1570 (array!27667 array!27665 (_ BitVec 32) (_ BitVec 32) V!17037 V!17037 (_ BitVec 32) Int) ListLongMap!6749)

(assert (=> b!447728 (= lt!204024 (getCurrentListMapNoExtraKeys!1570 lt!204025 (array!27666 (store (arr!13275 _values!549) i!563 (ValueCellFull!5631 v!412)) (size!13627 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204023 () ListLongMap!6749)

(assert (=> b!447728 (= lt!204023 (getCurrentListMapNoExtraKeys!1570 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447729 () Bool)

(declare-fun res!266071 () Bool)

(assert (=> b!447729 (=> (not res!266071) (not e!262815))))

(assert (=> b!447729 (= res!266071 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13628 _keys!709))))))

(declare-fun b!447730 () Bool)

(declare-fun res!266080 () Bool)

(assert (=> b!447730 (=> (not res!266080) (not e!262815))))

(declare-datatypes ((List!7934 0))(
  ( (Nil!7931) (Cons!7930 (h!8786 (_ BitVec 64)) (t!13704 List!7934)) )
))
(declare-fun arrayNoDuplicates!0 (array!27667 (_ BitVec 32) List!7934) Bool)

(assert (=> b!447730 (= res!266080 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7931))))

(declare-fun b!447731 () Bool)

(declare-fun res!266077 () Bool)

(assert (=> b!447731 (=> (not res!266077) (not e!262815))))

(assert (=> b!447731 (= res!266077 (or (= (select (arr!13276 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13276 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447732 () Bool)

(assert (=> b!447732 (= e!262811 (and e!262813 mapRes!19557))))

(declare-fun condMapEmpty!19557 () Bool)

(declare-fun mapDefault!19557 () ValueCell!5631)

(assert (=> b!447732 (= condMapEmpty!19557 (= (arr!13275 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5631)) mapDefault!19557)))))

(declare-fun b!447733 () Bool)

(declare-fun res!266076 () Bool)

(assert (=> b!447733 (=> (not res!266076) (not e!262810))))

(assert (=> b!447733 (= res!266076 (arrayNoDuplicates!0 lt!204025 #b00000000000000000000000000000000 Nil!7931))))

(declare-fun b!447734 () Bool)

(declare-fun res!266082 () Bool)

(assert (=> b!447734 (=> (not res!266082) (not e!262810))))

(assert (=> b!447734 (= res!266082 (bvsle from!863 i!563))))

(declare-fun b!447735 () Bool)

(declare-fun res!266081 () Bool)

(assert (=> b!447735 (=> (not res!266081) (not e!262815))))

(assert (=> b!447735 (= res!266081 (and (= (size!13627 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13628 _keys!709) (size!13627 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447736 () Bool)

(declare-fun res!266074 () Bool)

(assert (=> b!447736 (=> (not res!266074) (not e!262815))))

(declare-fun arrayContainsKey!0 (array!27667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447736 (= res!266074 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19557 () Bool)

(assert (=> mapIsEmpty!19557 mapRes!19557))

(assert (= (and start!40608 res!266075) b!447725))

(assert (= (and b!447725 res!266079) b!447735))

(assert (= (and b!447735 res!266081) b!447726))

(assert (= (and b!447726 res!266072) b!447730))

(assert (= (and b!447730 res!266080) b!447729))

(assert (= (and b!447729 res!266071) b!447724))

(assert (= (and b!447724 res!266078) b!447731))

(assert (= (and b!447731 res!266077) b!447736))

(assert (= (and b!447736 res!266074) b!447727))

(assert (= (and b!447727 res!266073) b!447733))

(assert (= (and b!447733 res!266076) b!447734))

(assert (= (and b!447734 res!266082) b!447728))

(assert (= (and b!447732 condMapEmpty!19557) mapIsEmpty!19557))

(assert (= (and b!447732 (not condMapEmpty!19557)) mapNonEmpty!19557))

(get-info :version)

(assert (= (and mapNonEmpty!19557 ((_ is ValueCellFull!5631) mapValue!19557)) b!447723))

(assert (= (and b!447732 ((_ is ValueCellFull!5631) mapDefault!19557)) b!447722))

(assert (= start!40608 b!447732))

(declare-fun m!432485 () Bool)

(assert (=> mapNonEmpty!19557 m!432485))

(declare-fun m!432487 () Bool)

(assert (=> b!447726 m!432487))

(declare-fun m!432489 () Bool)

(assert (=> b!447731 m!432489))

(declare-fun m!432491 () Bool)

(assert (=> b!447733 m!432491))

(declare-fun m!432493 () Bool)

(assert (=> b!447725 m!432493))

(declare-fun m!432495 () Bool)

(assert (=> b!447727 m!432495))

(declare-fun m!432497 () Bool)

(assert (=> b!447727 m!432497))

(declare-fun m!432499 () Bool)

(assert (=> b!447736 m!432499))

(declare-fun m!432501 () Bool)

(assert (=> start!40608 m!432501))

(declare-fun m!432503 () Bool)

(assert (=> start!40608 m!432503))

(declare-fun m!432505 () Bool)

(assert (=> b!447728 m!432505))

(declare-fun m!432507 () Bool)

(assert (=> b!447728 m!432507))

(declare-fun m!432509 () Bool)

(assert (=> b!447728 m!432509))

(declare-fun m!432511 () Bool)

(assert (=> b!447730 m!432511))

(declare-fun m!432513 () Bool)

(assert (=> b!447724 m!432513))

(check-sat tp_is_empty!11949 (not b!447725) (not b_next!10611) (not b!447728) (not b!447724) (not b!447730) (not b!447726) (not b!447733) (not b!447727) b_and!18637 (not b!447736) (not mapNonEmpty!19557) (not start!40608))
(check-sat b_and!18637 (not b_next!10611))
