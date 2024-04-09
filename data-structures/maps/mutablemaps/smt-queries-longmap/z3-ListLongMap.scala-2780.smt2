; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40578 () Bool)

(assert start!40578)

(declare-fun b_free!10581 () Bool)

(declare-fun b_next!10581 () Bool)

(assert (=> start!40578 (= b_free!10581 (not b_next!10581))))

(declare-fun tp!37562 () Bool)

(declare-fun b_and!18607 () Bool)

(assert (=> start!40578 (= tp!37562 b_and!18607)))

(declare-fun b!447047 () Bool)

(declare-fun res!265538 () Bool)

(declare-fun e!262540 () Bool)

(assert (=> b!447047 (=> (not res!265538) (not e!262540))))

(declare-datatypes ((array!27607 0))(
  ( (array!27608 (arr!13246 (Array (_ BitVec 32) (_ BitVec 64))) (size!13598 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27607)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16997 0))(
  ( (V!16998 (val!6004 Int)) )
))
(declare-datatypes ((ValueCell!5616 0))(
  ( (ValueCellFull!5616 (v!8255 V!16997)) (EmptyCell!5616) )
))
(declare-datatypes ((array!27609 0))(
  ( (array!27610 (arr!13247 (Array (_ BitVec 32) ValueCell!5616)) (size!13599 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27609)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!447047 (= res!265538 (and (= (size!13599 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13598 _keys!709) (size!13599 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447048 () Bool)

(declare-fun res!265540 () Bool)

(assert (=> b!447048 (=> (not res!265540) (not e!262540))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447048 (= res!265540 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13598 _keys!709))))))

(declare-fun b!447049 () Bool)

(declare-fun res!265536 () Bool)

(assert (=> b!447049 (=> (not res!265536) (not e!262540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447049 (= res!265536 (validMask!0 mask!1025))))

(declare-fun b!447050 () Bool)

(declare-fun e!262541 () Bool)

(assert (=> b!447050 (= e!262541 (bvsge i!563 (size!13599 _values!549)))))

(declare-fun minValue!515 () V!16997)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16997)

(declare-datatypes ((tuple2!7798 0))(
  ( (tuple2!7799 (_1!3909 (_ BitVec 64)) (_2!3909 V!16997)) )
))
(declare-datatypes ((List!7910 0))(
  ( (Nil!7907) (Cons!7906 (h!8762 tuple2!7798) (t!13680 List!7910)) )
))
(declare-datatypes ((ListLongMap!6725 0))(
  ( (ListLongMap!6726 (toList!3378 List!7910)) )
))
(declare-fun lt!203892 () ListLongMap!6725)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1558 (array!27607 array!27609 (_ BitVec 32) (_ BitVec 32) V!16997 V!16997 (_ BitVec 32) Int) ListLongMap!6725)

(assert (=> b!447050 (= lt!203892 (getCurrentListMapNoExtraKeys!1558 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19512 () Bool)

(declare-fun mapRes!19512 () Bool)

(declare-fun tp!37563 () Bool)

(declare-fun e!262545 () Bool)

(assert (=> mapNonEmpty!19512 (= mapRes!19512 (and tp!37563 e!262545))))

(declare-fun mapValue!19512 () ValueCell!5616)

(declare-fun mapKey!19512 () (_ BitVec 32))

(declare-fun mapRest!19512 () (Array (_ BitVec 32) ValueCell!5616))

(assert (=> mapNonEmpty!19512 (= (arr!13247 _values!549) (store mapRest!19512 mapKey!19512 mapValue!19512))))

(declare-fun b!447051 () Bool)

(declare-fun res!265541 () Bool)

(assert (=> b!447051 (=> (not res!265541) (not e!262540))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447051 (= res!265541 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19512 () Bool)

(assert (=> mapIsEmpty!19512 mapRes!19512))

(declare-fun b!447052 () Bool)

(declare-fun res!265542 () Bool)

(assert (=> b!447052 (=> (not res!265542) (not e!262541))))

(declare-fun lt!203893 () array!27607)

(declare-datatypes ((List!7911 0))(
  ( (Nil!7908) (Cons!7907 (h!8763 (_ BitVec 64)) (t!13681 List!7911)) )
))
(declare-fun arrayNoDuplicates!0 (array!27607 (_ BitVec 32) List!7911) Bool)

(assert (=> b!447052 (= res!265542 (arrayNoDuplicates!0 lt!203893 #b00000000000000000000000000000000 Nil!7908))))

(declare-fun b!447053 () Bool)

(declare-fun res!265533 () Bool)

(assert (=> b!447053 (=> (not res!265533) (not e!262540))))

(assert (=> b!447053 (= res!265533 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7908))))

(declare-fun b!447054 () Bool)

(declare-fun res!265535 () Bool)

(assert (=> b!447054 (=> (not res!265535) (not e!262540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447054 (= res!265535 (validKeyInArray!0 k0!794))))

(declare-fun res!265531 () Bool)

(assert (=> start!40578 (=> (not res!265531) (not e!262540))))

(assert (=> start!40578 (= res!265531 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13598 _keys!709))))))

(assert (=> start!40578 e!262540))

(declare-fun tp_is_empty!11919 () Bool)

(assert (=> start!40578 tp_is_empty!11919))

(assert (=> start!40578 tp!37562))

(assert (=> start!40578 true))

(declare-fun e!262543 () Bool)

(declare-fun array_inv!9594 (array!27609) Bool)

(assert (=> start!40578 (and (array_inv!9594 _values!549) e!262543)))

(declare-fun array_inv!9595 (array!27607) Bool)

(assert (=> start!40578 (array_inv!9595 _keys!709)))

(declare-fun b!447055 () Bool)

(declare-fun e!262544 () Bool)

(assert (=> b!447055 (= e!262544 tp_is_empty!11919)))

(declare-fun b!447056 () Bool)

(assert (=> b!447056 (= e!262540 e!262541)))

(declare-fun res!265539 () Bool)

(assert (=> b!447056 (=> (not res!265539) (not e!262541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27607 (_ BitVec 32)) Bool)

(assert (=> b!447056 (= res!265539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203893 mask!1025))))

(assert (=> b!447056 (= lt!203893 (array!27608 (store (arr!13246 _keys!709) i!563 k0!794) (size!13598 _keys!709)))))

(declare-fun b!447057 () Bool)

(declare-fun res!265534 () Bool)

(assert (=> b!447057 (=> (not res!265534) (not e!262540))))

(assert (=> b!447057 (= res!265534 (or (= (select (arr!13246 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13246 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447058 () Bool)

(declare-fun res!265532 () Bool)

(assert (=> b!447058 (=> (not res!265532) (not e!262540))))

(assert (=> b!447058 (= res!265532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!447059 () Bool)

(assert (=> b!447059 (= e!262543 (and e!262544 mapRes!19512))))

(declare-fun condMapEmpty!19512 () Bool)

(declare-fun mapDefault!19512 () ValueCell!5616)

(assert (=> b!447059 (= condMapEmpty!19512 (= (arr!13247 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5616)) mapDefault!19512)))))

(declare-fun b!447060 () Bool)

(assert (=> b!447060 (= e!262545 tp_is_empty!11919)))

(declare-fun b!447061 () Bool)

(declare-fun res!265537 () Bool)

(assert (=> b!447061 (=> (not res!265537) (not e!262541))))

(assert (=> b!447061 (= res!265537 (bvsle from!863 i!563))))

(assert (= (and start!40578 res!265531) b!447049))

(assert (= (and b!447049 res!265536) b!447047))

(assert (= (and b!447047 res!265538) b!447058))

(assert (= (and b!447058 res!265532) b!447053))

(assert (= (and b!447053 res!265533) b!447048))

(assert (= (and b!447048 res!265540) b!447054))

(assert (= (and b!447054 res!265535) b!447057))

(assert (= (and b!447057 res!265534) b!447051))

(assert (= (and b!447051 res!265541) b!447056))

(assert (= (and b!447056 res!265539) b!447052))

(assert (= (and b!447052 res!265542) b!447061))

(assert (= (and b!447061 res!265537) b!447050))

(assert (= (and b!447059 condMapEmpty!19512) mapIsEmpty!19512))

(assert (= (and b!447059 (not condMapEmpty!19512)) mapNonEmpty!19512))

(get-info :version)

(assert (= (and mapNonEmpty!19512 ((_ is ValueCellFull!5616) mapValue!19512)) b!447060))

(assert (= (and b!447059 ((_ is ValueCellFull!5616) mapDefault!19512)) b!447055))

(assert (= start!40578 b!447059))

(declare-fun m!432043 () Bool)

(assert (=> b!447057 m!432043))

(declare-fun m!432045 () Bool)

(assert (=> b!447056 m!432045))

(declare-fun m!432047 () Bool)

(assert (=> b!447056 m!432047))

(declare-fun m!432049 () Bool)

(assert (=> b!447051 m!432049))

(declare-fun m!432051 () Bool)

(assert (=> b!447054 m!432051))

(declare-fun m!432053 () Bool)

(assert (=> b!447053 m!432053))

(declare-fun m!432055 () Bool)

(assert (=> start!40578 m!432055))

(declare-fun m!432057 () Bool)

(assert (=> start!40578 m!432057))

(declare-fun m!432059 () Bool)

(assert (=> b!447058 m!432059))

(declare-fun m!432061 () Bool)

(assert (=> b!447049 m!432061))

(declare-fun m!432063 () Bool)

(assert (=> b!447052 m!432063))

(declare-fun m!432065 () Bool)

(assert (=> b!447050 m!432065))

(declare-fun m!432067 () Bool)

(assert (=> mapNonEmpty!19512 m!432067))

(check-sat (not b!447052) (not b!447053) (not b!447050) (not b!447049) (not b!447054) (not b!447058) (not b!447056) (not start!40578) (not b_next!10581) (not b!447051) (not mapNonEmpty!19512) tp_is_empty!11919 b_and!18607)
(check-sat b_and!18607 (not b_next!10581))
