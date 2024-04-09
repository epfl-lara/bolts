; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36888 () Bool)

(assert start!36888)

(declare-fun b_free!8007 () Bool)

(declare-fun b_next!8007 () Bool)

(assert (=> start!36888 (= b_free!8007 (not b_next!8007))))

(declare-fun tp!28736 () Bool)

(declare-fun b_and!15267 () Bool)

(assert (=> start!36888 (= tp!28736 b_and!15267)))

(declare-fun b!368981 () Bool)

(declare-fun res!207008 () Bool)

(declare-fun e!225568 () Bool)

(assert (=> b!368981 (=> (not res!207008) (not e!225568))))

(declare-datatypes ((array!21233 0))(
  ( (array!21234 (arr!10082 (Array (_ BitVec 32) (_ BitVec 64))) (size!10434 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21233)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21233 (_ BitVec 32)) Bool)

(assert (=> b!368981 (= res!207008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368982 () Bool)

(declare-fun e!225569 () Bool)

(assert (=> b!368982 (= e!225568 e!225569)))

(declare-fun res!207010 () Bool)

(assert (=> b!368982 (=> (not res!207010) (not e!225569))))

(declare-fun lt!169638 () array!21233)

(assert (=> b!368982 (= res!207010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169638 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368982 (= lt!169638 (array!21234 (store (arr!10082 _keys!658) i!548 k0!778) (size!10434 _keys!658)))))

(declare-fun mapNonEmpty!14547 () Bool)

(declare-fun mapRes!14547 () Bool)

(declare-fun tp!28737 () Bool)

(declare-fun e!225565 () Bool)

(assert (=> mapNonEmpty!14547 (= mapRes!14547 (and tp!28737 e!225565))))

(declare-datatypes ((V!12645 0))(
  ( (V!12646 (val!4372 Int)) )
))
(declare-datatypes ((ValueCell!3984 0))(
  ( (ValueCellFull!3984 (v!6565 V!12645)) (EmptyCell!3984) )
))
(declare-datatypes ((array!21235 0))(
  ( (array!21236 (arr!10083 (Array (_ BitVec 32) ValueCell!3984)) (size!10435 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21235)

(declare-fun mapKey!14547 () (_ BitVec 32))

(declare-fun mapRest!14547 () (Array (_ BitVec 32) ValueCell!3984))

(declare-fun mapValue!14547 () ValueCell!3984)

(assert (=> mapNonEmpty!14547 (= (arr!10083 _values!506) (store mapRest!14547 mapKey!14547 mapValue!14547))))

(declare-fun b!368983 () Bool)

(declare-fun e!225566 () Bool)

(declare-fun e!225570 () Bool)

(assert (=> b!368983 (= e!225566 (and e!225570 mapRes!14547))))

(declare-fun condMapEmpty!14547 () Bool)

(declare-fun mapDefault!14547 () ValueCell!3984)

(assert (=> b!368983 (= condMapEmpty!14547 (= (arr!10083 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3984)) mapDefault!14547)))))

(declare-fun b!368984 () Bool)

(declare-fun res!207012 () Bool)

(assert (=> b!368984 (=> (not res!207012) (not e!225568))))

(declare-datatypes ((List!5649 0))(
  ( (Nil!5646) (Cons!5645 (h!6501 (_ BitVec 64)) (t!10807 List!5649)) )
))
(declare-fun arrayNoDuplicates!0 (array!21233 (_ BitVec 32) List!5649) Bool)

(assert (=> b!368984 (= res!207012 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5646))))

(declare-fun b!368985 () Bool)

(declare-fun tp_is_empty!8655 () Bool)

(assert (=> b!368985 (= e!225570 tp_is_empty!8655)))

(declare-fun b!368986 () Bool)

(assert (=> b!368986 (= e!225569 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12645)

(declare-datatypes ((tuple2!5790 0))(
  ( (tuple2!5791 (_1!2905 (_ BitVec 64)) (_2!2905 V!12645)) )
))
(declare-datatypes ((List!5650 0))(
  ( (Nil!5647) (Cons!5646 (h!6502 tuple2!5790) (t!10808 List!5650)) )
))
(declare-datatypes ((ListLongMap!4717 0))(
  ( (ListLongMap!4718 (toList!2374 List!5650)) )
))
(declare-fun lt!169637 () ListLongMap!4717)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12645)

(declare-fun minValue!472 () V!12645)

(declare-fun getCurrentListMapNoExtraKeys!642 (array!21233 array!21235 (_ BitVec 32) (_ BitVec 32) V!12645 V!12645 (_ BitVec 32) Int) ListLongMap!4717)

(assert (=> b!368986 (= lt!169637 (getCurrentListMapNoExtraKeys!642 lt!169638 (array!21236 (store (arr!10083 _values!506) i!548 (ValueCellFull!3984 v!373)) (size!10435 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169639 () ListLongMap!4717)

(assert (=> b!368986 (= lt!169639 (getCurrentListMapNoExtraKeys!642 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368987 () Bool)

(declare-fun res!207009 () Bool)

(assert (=> b!368987 (=> (not res!207009) (not e!225568))))

(declare-fun arrayContainsKey!0 (array!21233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368987 (= res!207009 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!368988 () Bool)

(assert (=> b!368988 (= e!225565 tp_is_empty!8655)))

(declare-fun b!368989 () Bool)

(declare-fun res!207006 () Bool)

(assert (=> b!368989 (=> (not res!207006) (not e!225568))))

(assert (=> b!368989 (= res!207006 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10434 _keys!658))))))

(declare-fun b!368990 () Bool)

(declare-fun res!207014 () Bool)

(assert (=> b!368990 (=> (not res!207014) (not e!225568))))

(assert (=> b!368990 (= res!207014 (and (= (size!10435 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10434 _keys!658) (size!10435 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368991 () Bool)

(declare-fun res!207013 () Bool)

(assert (=> b!368991 (=> (not res!207013) (not e!225569))))

(assert (=> b!368991 (= res!207013 (arrayNoDuplicates!0 lt!169638 #b00000000000000000000000000000000 Nil!5646))))

(declare-fun res!207011 () Bool)

(assert (=> start!36888 (=> (not res!207011) (not e!225568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36888 (= res!207011 (validMask!0 mask!970))))

(assert (=> start!36888 e!225568))

(declare-fun array_inv!7448 (array!21235) Bool)

(assert (=> start!36888 (and (array_inv!7448 _values!506) e!225566)))

(assert (=> start!36888 tp!28736))

(assert (=> start!36888 true))

(assert (=> start!36888 tp_is_empty!8655))

(declare-fun array_inv!7449 (array!21233) Bool)

(assert (=> start!36888 (array_inv!7449 _keys!658)))

(declare-fun mapIsEmpty!14547 () Bool)

(assert (=> mapIsEmpty!14547 mapRes!14547))

(declare-fun b!368992 () Bool)

(declare-fun res!207005 () Bool)

(assert (=> b!368992 (=> (not res!207005) (not e!225568))))

(assert (=> b!368992 (= res!207005 (or (= (select (arr!10082 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10082 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368993 () Bool)

(declare-fun res!207007 () Bool)

(assert (=> b!368993 (=> (not res!207007) (not e!225568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368993 (= res!207007 (validKeyInArray!0 k0!778))))

(assert (= (and start!36888 res!207011) b!368990))

(assert (= (and b!368990 res!207014) b!368981))

(assert (= (and b!368981 res!207008) b!368984))

(assert (= (and b!368984 res!207012) b!368989))

(assert (= (and b!368989 res!207006) b!368993))

(assert (= (and b!368993 res!207007) b!368992))

(assert (= (and b!368992 res!207005) b!368987))

(assert (= (and b!368987 res!207009) b!368982))

(assert (= (and b!368982 res!207010) b!368991))

(assert (= (and b!368991 res!207013) b!368986))

(assert (= (and b!368983 condMapEmpty!14547) mapIsEmpty!14547))

(assert (= (and b!368983 (not condMapEmpty!14547)) mapNonEmpty!14547))

(get-info :version)

(assert (= (and mapNonEmpty!14547 ((_ is ValueCellFull!3984) mapValue!14547)) b!368988))

(assert (= (and b!368983 ((_ is ValueCellFull!3984) mapDefault!14547)) b!368985))

(assert (= start!36888 b!368983))

(declare-fun m!365459 () Bool)

(assert (=> b!368984 m!365459))

(declare-fun m!365461 () Bool)

(assert (=> b!368986 m!365461))

(declare-fun m!365463 () Bool)

(assert (=> b!368986 m!365463))

(declare-fun m!365465 () Bool)

(assert (=> b!368986 m!365465))

(declare-fun m!365467 () Bool)

(assert (=> b!368992 m!365467))

(declare-fun m!365469 () Bool)

(assert (=> mapNonEmpty!14547 m!365469))

(declare-fun m!365471 () Bool)

(assert (=> b!368993 m!365471))

(declare-fun m!365473 () Bool)

(assert (=> b!368991 m!365473))

(declare-fun m!365475 () Bool)

(assert (=> b!368982 m!365475))

(declare-fun m!365477 () Bool)

(assert (=> b!368982 m!365477))

(declare-fun m!365479 () Bool)

(assert (=> start!36888 m!365479))

(declare-fun m!365481 () Bool)

(assert (=> start!36888 m!365481))

(declare-fun m!365483 () Bool)

(assert (=> start!36888 m!365483))

(declare-fun m!365485 () Bool)

(assert (=> b!368987 m!365485))

(declare-fun m!365487 () Bool)

(assert (=> b!368981 m!365487))

(check-sat b_and!15267 (not b!368986) (not b!368993) (not start!36888) (not b!368984) (not b_next!8007) (not mapNonEmpty!14547) (not b!368991) (not b!368987) (not b!368981) (not b!368982) tp_is_empty!8655)
(check-sat b_and!15267 (not b_next!8007))
