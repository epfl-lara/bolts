; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40888 () Bool)

(assert start!40888)

(declare-fun b_free!10815 () Bool)

(declare-fun b_next!10815 () Bool)

(assert (=> start!40888 (= b_free!10815 (not b_next!10815))))

(declare-fun tp!38272 () Bool)

(declare-fun b_and!18975 () Bool)

(assert (=> start!40888 (= tp!38272 b_and!18975)))

(declare-fun b!453767 () Bool)

(declare-fun e!265583 () Bool)

(declare-fun tp_is_empty!12153 () Bool)

(assert (=> b!453767 (= e!265583 tp_is_empty!12153)))

(declare-fun b!453768 () Bool)

(declare-fun res!270344 () Bool)

(declare-fun e!265581 () Bool)

(assert (=> b!453768 (=> (not res!270344) (not e!265581))))

(declare-datatypes ((array!28075 0))(
  ( (array!28076 (arr!13478 (Array (_ BitVec 32) (_ BitVec 64))) (size!13830 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28075)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!453768 (= res!270344 (or (= (select (arr!13478 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13478 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19870 () Bool)

(declare-fun mapRes!19870 () Bool)

(assert (=> mapIsEmpty!19870 mapRes!19870))

(declare-fun b!453769 () Bool)

(declare-fun e!265582 () Bool)

(assert (=> b!453769 (= e!265582 tp_is_empty!12153)))

(declare-fun res!270345 () Bool)

(assert (=> start!40888 (=> (not res!270345) (not e!265581))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40888 (= res!270345 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13830 _keys!709))))))

(assert (=> start!40888 e!265581))

(assert (=> start!40888 tp_is_empty!12153))

(assert (=> start!40888 tp!38272))

(assert (=> start!40888 true))

(declare-datatypes ((V!17309 0))(
  ( (V!17310 (val!6121 Int)) )
))
(declare-datatypes ((ValueCell!5733 0))(
  ( (ValueCellFull!5733 (v!8383 V!17309)) (EmptyCell!5733) )
))
(declare-datatypes ((array!28077 0))(
  ( (array!28078 (arr!13479 (Array (_ BitVec 32) ValueCell!5733)) (size!13831 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28077)

(declare-fun e!265584 () Bool)

(declare-fun array_inv!9758 (array!28077) Bool)

(assert (=> start!40888 (and (array_inv!9758 _values!549) e!265584)))

(declare-fun array_inv!9759 (array!28075) Bool)

(assert (=> start!40888 (array_inv!9759 _keys!709)))

(declare-fun b!453770 () Bool)

(declare-fun res!270348 () Bool)

(declare-fun e!265586 () Bool)

(assert (=> b!453770 (=> (not res!270348) (not e!265586))))

(declare-fun lt!206002 () array!28075)

(declare-datatypes ((List!8112 0))(
  ( (Nil!8109) (Cons!8108 (h!8964 (_ BitVec 64)) (t!13948 List!8112)) )
))
(declare-fun arrayNoDuplicates!0 (array!28075 (_ BitVec 32) List!8112) Bool)

(assert (=> b!453770 (= res!270348 (arrayNoDuplicates!0 lt!206002 #b00000000000000000000000000000000 Nil!8109))))

(declare-fun mapNonEmpty!19870 () Bool)

(declare-fun tp!38271 () Bool)

(assert (=> mapNonEmpty!19870 (= mapRes!19870 (and tp!38271 e!265582))))

(declare-fun mapKey!19870 () (_ BitVec 32))

(declare-fun mapValue!19870 () ValueCell!5733)

(declare-fun mapRest!19870 () (Array (_ BitVec 32) ValueCell!5733))

(assert (=> mapNonEmpty!19870 (= (arr!13479 _values!549) (store mapRest!19870 mapKey!19870 mapValue!19870))))

(declare-fun b!453771 () Bool)

(declare-fun res!270342 () Bool)

(assert (=> b!453771 (=> (not res!270342) (not e!265581))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!453771 (= res!270342 (and (= (size!13831 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13830 _keys!709) (size!13831 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!453772 () Bool)

(assert (=> b!453772 (= e!265581 e!265586)))

(declare-fun res!270343 () Bool)

(assert (=> b!453772 (=> (not res!270343) (not e!265586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28075 (_ BitVec 32)) Bool)

(assert (=> b!453772 (= res!270343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206002 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!453772 (= lt!206002 (array!28076 (store (arr!13478 _keys!709) i!563 k0!794) (size!13830 _keys!709)))))

(declare-fun b!453773 () Bool)

(declare-fun res!270347 () Bool)

(assert (=> b!453773 (=> (not res!270347) (not e!265581))))

(assert (=> b!453773 (= res!270347 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8109))))

(declare-fun b!453774 () Bool)

(declare-fun res!270340 () Bool)

(assert (=> b!453774 (=> (not res!270340) (not e!265581))))

(declare-fun arrayContainsKey!0 (array!28075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!453774 (= res!270340 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!453775 () Bool)

(declare-fun res!270341 () Bool)

(assert (=> b!453775 (=> (not res!270341) (not e!265581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!453775 (= res!270341 (validKeyInArray!0 k0!794))))

(declare-fun b!453776 () Bool)

(declare-fun res!270350 () Bool)

(assert (=> b!453776 (=> (not res!270350) (not e!265581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!453776 (= res!270350 (validMask!0 mask!1025))))

(declare-fun b!453777 () Bool)

(declare-fun res!270346 () Bool)

(assert (=> b!453777 (=> (not res!270346) (not e!265586))))

(assert (=> b!453777 (= res!270346 (bvsle from!863 i!563))))

(declare-fun b!453778 () Bool)

(declare-fun res!270349 () Bool)

(assert (=> b!453778 (=> (not res!270349) (not e!265581))))

(assert (=> b!453778 (= res!270349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!453779 () Bool)

(declare-fun res!270339 () Bool)

(assert (=> b!453779 (=> (not res!270339) (not e!265581))))

(assert (=> b!453779 (= res!270339 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13830 _keys!709))))))

(declare-fun b!453780 () Bool)

(assert (=> b!453780 (= e!265586 false)))

(declare-fun minValue!515 () V!17309)

(declare-fun zeroValue!515 () V!17309)

(declare-datatypes ((tuple2!8010 0))(
  ( (tuple2!8011 (_1!4015 (_ BitVec 64)) (_2!4015 V!17309)) )
))
(declare-datatypes ((List!8113 0))(
  ( (Nil!8110) (Cons!8109 (h!8965 tuple2!8010) (t!13949 List!8113)) )
))
(declare-datatypes ((ListLongMap!6937 0))(
  ( (ListLongMap!6938 (toList!3484 List!8113)) )
))
(declare-fun lt!206004 () ListLongMap!6937)

(declare-fun v!412 () V!17309)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1660 (array!28075 array!28077 (_ BitVec 32) (_ BitVec 32) V!17309 V!17309 (_ BitVec 32) Int) ListLongMap!6937)

(assert (=> b!453780 (= lt!206004 (getCurrentListMapNoExtraKeys!1660 lt!206002 (array!28078 (store (arr!13479 _values!549) i!563 (ValueCellFull!5733 v!412)) (size!13831 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206003 () ListLongMap!6937)

(assert (=> b!453780 (= lt!206003 (getCurrentListMapNoExtraKeys!1660 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!453781 () Bool)

(assert (=> b!453781 (= e!265584 (and e!265583 mapRes!19870))))

(declare-fun condMapEmpty!19870 () Bool)

(declare-fun mapDefault!19870 () ValueCell!5733)

(assert (=> b!453781 (= condMapEmpty!19870 (= (arr!13479 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5733)) mapDefault!19870)))))

(assert (= (and start!40888 res!270345) b!453776))

(assert (= (and b!453776 res!270350) b!453771))

(assert (= (and b!453771 res!270342) b!453778))

(assert (= (and b!453778 res!270349) b!453773))

(assert (= (and b!453773 res!270347) b!453779))

(assert (= (and b!453779 res!270339) b!453775))

(assert (= (and b!453775 res!270341) b!453768))

(assert (= (and b!453768 res!270344) b!453774))

(assert (= (and b!453774 res!270340) b!453772))

(assert (= (and b!453772 res!270343) b!453770))

(assert (= (and b!453770 res!270348) b!453777))

(assert (= (and b!453777 res!270346) b!453780))

(assert (= (and b!453781 condMapEmpty!19870) mapIsEmpty!19870))

(assert (= (and b!453781 (not condMapEmpty!19870)) mapNonEmpty!19870))

(get-info :version)

(assert (= (and mapNonEmpty!19870 ((_ is ValueCellFull!5733) mapValue!19870)) b!453769))

(assert (= (and b!453781 ((_ is ValueCellFull!5733) mapDefault!19870)) b!453767))

(assert (= start!40888 b!453781))

(declare-fun m!438081 () Bool)

(assert (=> b!453778 m!438081))

(declare-fun m!438083 () Bool)

(assert (=> b!453775 m!438083))

(declare-fun m!438085 () Bool)

(assert (=> start!40888 m!438085))

(declare-fun m!438087 () Bool)

(assert (=> start!40888 m!438087))

(declare-fun m!438089 () Bool)

(assert (=> b!453768 m!438089))

(declare-fun m!438091 () Bool)

(assert (=> b!453774 m!438091))

(declare-fun m!438093 () Bool)

(assert (=> mapNonEmpty!19870 m!438093))

(declare-fun m!438095 () Bool)

(assert (=> b!453772 m!438095))

(declare-fun m!438097 () Bool)

(assert (=> b!453772 m!438097))

(declare-fun m!438099 () Bool)

(assert (=> b!453776 m!438099))

(declare-fun m!438101 () Bool)

(assert (=> b!453770 m!438101))

(declare-fun m!438103 () Bool)

(assert (=> b!453780 m!438103))

(declare-fun m!438105 () Bool)

(assert (=> b!453780 m!438105))

(declare-fun m!438107 () Bool)

(assert (=> b!453780 m!438107))

(declare-fun m!438109 () Bool)

(assert (=> b!453773 m!438109))

(check-sat (not mapNonEmpty!19870) (not b!453772) b_and!18975 (not b_next!10815) tp_is_empty!12153 (not b!453774) (not start!40888) (not b!453770) (not b!453775) (not b!453776) (not b!453778) (not b!453780) (not b!453773))
(check-sat b_and!18975 (not b_next!10815))
