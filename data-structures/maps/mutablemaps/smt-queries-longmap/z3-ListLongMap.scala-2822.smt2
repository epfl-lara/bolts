; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40906 () Bool)

(assert start!40906)

(declare-fun b_free!10833 () Bool)

(declare-fun b_next!10833 () Bool)

(assert (=> start!40906 (= b_free!10833 (not b_next!10833))))

(declare-fun tp!38326 () Bool)

(declare-fun b_and!18993 () Bool)

(assert (=> start!40906 (= tp!38326 b_and!18993)))

(declare-fun b!454172 () Bool)

(declare-fun res!270665 () Bool)

(declare-fun e!265743 () Bool)

(assert (=> b!454172 (=> (not res!270665) (not e!265743))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28111 0))(
  ( (array!28112 (arr!13496 (Array (_ BitVec 32) (_ BitVec 64))) (size!13848 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28111)

(assert (=> b!454172 (= res!270665 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13848 _keys!709))))))

(declare-fun b!454173 () Bool)

(declare-fun res!270670 () Bool)

(declare-fun e!265744 () Bool)

(assert (=> b!454173 (=> (not res!270670) (not e!265744))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!454173 (= res!270670 (bvsle from!863 i!563))))

(declare-fun b!454174 () Bool)

(declare-fun e!265747 () Bool)

(declare-fun tp_is_empty!12171 () Bool)

(assert (=> b!454174 (= e!265747 tp_is_empty!12171)))

(declare-fun b!454175 () Bool)

(declare-fun res!270671 () Bool)

(assert (=> b!454175 (=> (not res!270671) (not e!265743))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17333 0))(
  ( (V!17334 (val!6130 Int)) )
))
(declare-datatypes ((ValueCell!5742 0))(
  ( (ValueCellFull!5742 (v!8392 V!17333)) (EmptyCell!5742) )
))
(declare-datatypes ((array!28113 0))(
  ( (array!28114 (arr!13497 (Array (_ BitVec 32) ValueCell!5742)) (size!13849 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28113)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!454175 (= res!270671 (and (= (size!13849 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13848 _keys!709) (size!13849 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454176 () Bool)

(assert (=> b!454176 (= e!265744 false)))

(declare-fun minValue!515 () V!17333)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8024 0))(
  ( (tuple2!8025 (_1!4022 (_ BitVec 64)) (_2!4022 V!17333)) )
))
(declare-datatypes ((List!8127 0))(
  ( (Nil!8124) (Cons!8123 (h!8979 tuple2!8024) (t!13963 List!8127)) )
))
(declare-datatypes ((ListLongMap!6951 0))(
  ( (ListLongMap!6952 (toList!3491 List!8127)) )
))
(declare-fun lt!206083 () ListLongMap!6951)

(declare-fun zeroValue!515 () V!17333)

(declare-fun v!412 () V!17333)

(declare-fun lt!206085 () array!28111)

(declare-fun getCurrentListMapNoExtraKeys!1667 (array!28111 array!28113 (_ BitVec 32) (_ BitVec 32) V!17333 V!17333 (_ BitVec 32) Int) ListLongMap!6951)

(assert (=> b!454176 (= lt!206083 (getCurrentListMapNoExtraKeys!1667 lt!206085 (array!28114 (store (arr!13497 _values!549) i!563 (ValueCellFull!5742 v!412)) (size!13849 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206084 () ListLongMap!6951)

(assert (=> b!454176 (= lt!206084 (getCurrentListMapNoExtraKeys!1667 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454177 () Bool)

(declare-fun res!270672 () Bool)

(assert (=> b!454177 (=> (not res!270672) (not e!265743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454177 (= res!270672 (validMask!0 mask!1025))))

(declare-fun b!454178 () Bool)

(assert (=> b!454178 (= e!265743 e!265744)))

(declare-fun res!270673 () Bool)

(assert (=> b!454178 (=> (not res!270673) (not e!265744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28111 (_ BitVec 32)) Bool)

(assert (=> b!454178 (= res!270673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206085 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!454178 (= lt!206085 (array!28112 (store (arr!13496 _keys!709) i!563 k0!794) (size!13848 _keys!709)))))

(declare-fun b!454180 () Bool)

(declare-fun res!270664 () Bool)

(assert (=> b!454180 (=> (not res!270664) (not e!265743))))

(declare-datatypes ((List!8128 0))(
  ( (Nil!8125) (Cons!8124 (h!8980 (_ BitVec 64)) (t!13964 List!8128)) )
))
(declare-fun arrayNoDuplicates!0 (array!28111 (_ BitVec 32) List!8128) Bool)

(assert (=> b!454180 (= res!270664 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8125))))

(declare-fun mapNonEmpty!19897 () Bool)

(declare-fun mapRes!19897 () Bool)

(declare-fun tp!38325 () Bool)

(declare-fun e!265748 () Bool)

(assert (=> mapNonEmpty!19897 (= mapRes!19897 (and tp!38325 e!265748))))

(declare-fun mapRest!19897 () (Array (_ BitVec 32) ValueCell!5742))

(declare-fun mapValue!19897 () ValueCell!5742)

(declare-fun mapKey!19897 () (_ BitVec 32))

(assert (=> mapNonEmpty!19897 (= (arr!13497 _values!549) (store mapRest!19897 mapKey!19897 mapValue!19897))))

(declare-fun mapIsEmpty!19897 () Bool)

(assert (=> mapIsEmpty!19897 mapRes!19897))

(declare-fun b!454181 () Bool)

(declare-fun e!265745 () Bool)

(assert (=> b!454181 (= e!265745 (and e!265747 mapRes!19897))))

(declare-fun condMapEmpty!19897 () Bool)

(declare-fun mapDefault!19897 () ValueCell!5742)

(assert (=> b!454181 (= condMapEmpty!19897 (= (arr!13497 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5742)) mapDefault!19897)))))

(declare-fun b!454182 () Bool)

(declare-fun res!270674 () Bool)

(assert (=> b!454182 (=> (not res!270674) (not e!265743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454182 (= res!270674 (validKeyInArray!0 k0!794))))

(declare-fun b!454183 () Bool)

(declare-fun res!270666 () Bool)

(assert (=> b!454183 (=> (not res!270666) (not e!265743))))

(assert (=> b!454183 (= res!270666 (or (= (select (arr!13496 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13496 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454184 () Bool)

(declare-fun res!270667 () Bool)

(assert (=> b!454184 (=> (not res!270667) (not e!265743))))

(declare-fun arrayContainsKey!0 (array!28111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454184 (= res!270667 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!270669 () Bool)

(assert (=> start!40906 (=> (not res!270669) (not e!265743))))

(assert (=> start!40906 (= res!270669 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13848 _keys!709))))))

(assert (=> start!40906 e!265743))

(assert (=> start!40906 tp_is_empty!12171))

(assert (=> start!40906 tp!38326))

(assert (=> start!40906 true))

(declare-fun array_inv!9768 (array!28113) Bool)

(assert (=> start!40906 (and (array_inv!9768 _values!549) e!265745)))

(declare-fun array_inv!9769 (array!28111) Bool)

(assert (=> start!40906 (array_inv!9769 _keys!709)))

(declare-fun b!454179 () Bool)

(assert (=> b!454179 (= e!265748 tp_is_empty!12171)))

(declare-fun b!454185 () Bool)

(declare-fun res!270663 () Bool)

(assert (=> b!454185 (=> (not res!270663) (not e!265744))))

(assert (=> b!454185 (= res!270663 (arrayNoDuplicates!0 lt!206085 #b00000000000000000000000000000000 Nil!8125))))

(declare-fun b!454186 () Bool)

(declare-fun res!270668 () Bool)

(assert (=> b!454186 (=> (not res!270668) (not e!265743))))

(assert (=> b!454186 (= res!270668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40906 res!270669) b!454177))

(assert (= (and b!454177 res!270672) b!454175))

(assert (= (and b!454175 res!270671) b!454186))

(assert (= (and b!454186 res!270668) b!454180))

(assert (= (and b!454180 res!270664) b!454172))

(assert (= (and b!454172 res!270665) b!454182))

(assert (= (and b!454182 res!270674) b!454183))

(assert (= (and b!454183 res!270666) b!454184))

(assert (= (and b!454184 res!270667) b!454178))

(assert (= (and b!454178 res!270673) b!454185))

(assert (= (and b!454185 res!270663) b!454173))

(assert (= (and b!454173 res!270670) b!454176))

(assert (= (and b!454181 condMapEmpty!19897) mapIsEmpty!19897))

(assert (= (and b!454181 (not condMapEmpty!19897)) mapNonEmpty!19897))

(get-info :version)

(assert (= (and mapNonEmpty!19897 ((_ is ValueCellFull!5742) mapValue!19897)) b!454179))

(assert (= (and b!454181 ((_ is ValueCellFull!5742) mapDefault!19897)) b!454174))

(assert (= start!40906 b!454181))

(declare-fun m!438351 () Bool)

(assert (=> start!40906 m!438351))

(declare-fun m!438353 () Bool)

(assert (=> start!40906 m!438353))

(declare-fun m!438355 () Bool)

(assert (=> b!454185 m!438355))

(declare-fun m!438357 () Bool)

(assert (=> mapNonEmpty!19897 m!438357))

(declare-fun m!438359 () Bool)

(assert (=> b!454182 m!438359))

(declare-fun m!438361 () Bool)

(assert (=> b!454180 m!438361))

(declare-fun m!438363 () Bool)

(assert (=> b!454176 m!438363))

(declare-fun m!438365 () Bool)

(assert (=> b!454176 m!438365))

(declare-fun m!438367 () Bool)

(assert (=> b!454176 m!438367))

(declare-fun m!438369 () Bool)

(assert (=> b!454184 m!438369))

(declare-fun m!438371 () Bool)

(assert (=> b!454186 m!438371))

(declare-fun m!438373 () Bool)

(assert (=> b!454178 m!438373))

(declare-fun m!438375 () Bool)

(assert (=> b!454178 m!438375))

(declare-fun m!438377 () Bool)

(assert (=> b!454183 m!438377))

(declare-fun m!438379 () Bool)

(assert (=> b!454177 m!438379))

(check-sat (not b!454186) (not b!454177) (not mapNonEmpty!19897) (not start!40906) b_and!18993 (not b!454184) (not b!454178) tp_is_empty!12171 (not b!454185) (not b_next!10833) (not b!454176) (not b!454182) (not b!454180))
(check-sat b_and!18993 (not b_next!10833))
