; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40972 () Bool)

(assert start!40972)

(declare-fun b_free!10899 () Bool)

(declare-fun b_next!10899 () Bool)

(assert (=> start!40972 (= b_free!10899 (not b_next!10899))))

(declare-fun tp!38524 () Bool)

(declare-fun b_and!19059 () Bool)

(assert (=> start!40972 (= tp!38524 b_and!19059)))

(declare-fun b!455657 () Bool)

(declare-fun e!266339 () Bool)

(declare-fun e!266338 () Bool)

(assert (=> b!455657 (= e!266339 e!266338)))

(declare-fun res!271856 () Bool)

(assert (=> b!455657 (=> (not res!271856) (not e!266338))))

(declare-datatypes ((array!28243 0))(
  ( (array!28244 (arr!13562 (Array (_ BitVec 32) (_ BitVec 64))) (size!13914 (_ BitVec 32))) )
))
(declare-fun lt!206380 () array!28243)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28243 (_ BitVec 32)) Bool)

(assert (=> b!455657 (= res!271856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206380 mask!1025))))

(declare-fun _keys!709 () array!28243)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455657 (= lt!206380 (array!28244 (store (arr!13562 _keys!709) i!563 k0!794) (size!13914 _keys!709)))))

(declare-fun b!455658 () Bool)

(declare-fun res!271853 () Bool)

(assert (=> b!455658 (=> (not res!271853) (not e!266338))))

(declare-datatypes ((List!8176 0))(
  ( (Nil!8173) (Cons!8172 (h!9028 (_ BitVec 64)) (t!14012 List!8176)) )
))
(declare-fun arrayNoDuplicates!0 (array!28243 (_ BitVec 32) List!8176) Bool)

(assert (=> b!455658 (= res!271853 (arrayNoDuplicates!0 lt!206380 #b00000000000000000000000000000000 Nil!8173))))

(declare-fun b!455659 () Bool)

(declare-fun res!271855 () Bool)

(assert (=> b!455659 (=> (not res!271855) (not e!266339))))

(assert (=> b!455659 (= res!271855 (or (= (select (arr!13562 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13562 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455660 () Bool)

(assert (=> b!455660 (= e!266338 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17421 0))(
  ( (V!17422 (val!6163 Int)) )
))
(declare-datatypes ((tuple2!8070 0))(
  ( (tuple2!8071 (_1!4045 (_ BitVec 64)) (_2!4045 V!17421)) )
))
(declare-datatypes ((List!8177 0))(
  ( (Nil!8174) (Cons!8173 (h!9029 tuple2!8070) (t!14013 List!8177)) )
))
(declare-datatypes ((ListLongMap!6997 0))(
  ( (ListLongMap!6998 (toList!3514 List!8177)) )
))
(declare-fun lt!206381 () ListLongMap!6997)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5775 0))(
  ( (ValueCellFull!5775 (v!8425 V!17421)) (EmptyCell!5775) )
))
(declare-datatypes ((array!28245 0))(
  ( (array!28246 (arr!13563 (Array (_ BitVec 32) ValueCell!5775)) (size!13915 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28245)

(declare-fun zeroValue!515 () V!17421)

(declare-fun v!412 () V!17421)

(declare-fun minValue!515 () V!17421)

(declare-fun getCurrentListMapNoExtraKeys!1690 (array!28243 array!28245 (_ BitVec 32) (_ BitVec 32) V!17421 V!17421 (_ BitVec 32) Int) ListLongMap!6997)

(assert (=> b!455660 (= lt!206381 (getCurrentListMapNoExtraKeys!1690 lt!206380 (array!28246 (store (arr!13563 _values!549) i!563 (ValueCellFull!5775 v!412)) (size!13915 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206382 () ListLongMap!6997)

(assert (=> b!455660 (= lt!206382 (getCurrentListMapNoExtraKeys!1690 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455661 () Bool)

(declare-fun res!271854 () Bool)

(assert (=> b!455661 (=> (not res!271854) (not e!266339))))

(assert (=> b!455661 (= res!271854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455663 () Bool)

(declare-fun res!271861 () Bool)

(assert (=> b!455663 (=> (not res!271861) (not e!266339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455663 (= res!271861 (validMask!0 mask!1025))))

(declare-fun b!455664 () Bool)

(declare-fun res!271860 () Bool)

(assert (=> b!455664 (=> (not res!271860) (not e!266339))))

(declare-fun arrayContainsKey!0 (array!28243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455664 (= res!271860 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!455665 () Bool)

(declare-fun e!266337 () Bool)

(declare-fun tp_is_empty!12237 () Bool)

(assert (=> b!455665 (= e!266337 tp_is_empty!12237)))

(declare-fun b!455666 () Bool)

(declare-fun res!271857 () Bool)

(assert (=> b!455666 (=> (not res!271857) (not e!266339))))

(assert (=> b!455666 (= res!271857 (and (= (size!13915 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13914 _keys!709) (size!13915 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455667 () Bool)

(declare-fun res!271851 () Bool)

(assert (=> b!455667 (=> (not res!271851) (not e!266339))))

(assert (=> b!455667 (= res!271851 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13914 _keys!709))))))

(declare-fun b!455668 () Bool)

(declare-fun res!271862 () Bool)

(assert (=> b!455668 (=> (not res!271862) (not e!266339))))

(assert (=> b!455668 (= res!271862 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8173))))

(declare-fun mapNonEmpty!19996 () Bool)

(declare-fun mapRes!19996 () Bool)

(declare-fun tp!38523 () Bool)

(assert (=> mapNonEmpty!19996 (= mapRes!19996 (and tp!38523 e!266337))))

(declare-fun mapRest!19996 () (Array (_ BitVec 32) ValueCell!5775))

(declare-fun mapValue!19996 () ValueCell!5775)

(declare-fun mapKey!19996 () (_ BitVec 32))

(assert (=> mapNonEmpty!19996 (= (arr!13563 _values!549) (store mapRest!19996 mapKey!19996 mapValue!19996))))

(declare-fun mapIsEmpty!19996 () Bool)

(assert (=> mapIsEmpty!19996 mapRes!19996))

(declare-fun b!455669 () Bool)

(declare-fun e!266341 () Bool)

(assert (=> b!455669 (= e!266341 tp_is_empty!12237)))

(declare-fun b!455662 () Bool)

(declare-fun res!271858 () Bool)

(assert (=> b!455662 (=> (not res!271858) (not e!266338))))

(assert (=> b!455662 (= res!271858 (bvsle from!863 i!563))))

(declare-fun res!271852 () Bool)

(assert (=> start!40972 (=> (not res!271852) (not e!266339))))

(assert (=> start!40972 (= res!271852 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13914 _keys!709))))))

(assert (=> start!40972 e!266339))

(assert (=> start!40972 tp_is_empty!12237))

(assert (=> start!40972 tp!38524))

(assert (=> start!40972 true))

(declare-fun e!266342 () Bool)

(declare-fun array_inv!9810 (array!28245) Bool)

(assert (=> start!40972 (and (array_inv!9810 _values!549) e!266342)))

(declare-fun array_inv!9811 (array!28243) Bool)

(assert (=> start!40972 (array_inv!9811 _keys!709)))

(declare-fun b!455670 () Bool)

(declare-fun res!271859 () Bool)

(assert (=> b!455670 (=> (not res!271859) (not e!266339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455670 (= res!271859 (validKeyInArray!0 k0!794))))

(declare-fun b!455671 () Bool)

(assert (=> b!455671 (= e!266342 (and e!266341 mapRes!19996))))

(declare-fun condMapEmpty!19996 () Bool)

(declare-fun mapDefault!19996 () ValueCell!5775)

(assert (=> b!455671 (= condMapEmpty!19996 (= (arr!13563 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5775)) mapDefault!19996)))))

(assert (= (and start!40972 res!271852) b!455663))

(assert (= (and b!455663 res!271861) b!455666))

(assert (= (and b!455666 res!271857) b!455661))

(assert (= (and b!455661 res!271854) b!455668))

(assert (= (and b!455668 res!271862) b!455667))

(assert (= (and b!455667 res!271851) b!455670))

(assert (= (and b!455670 res!271859) b!455659))

(assert (= (and b!455659 res!271855) b!455664))

(assert (= (and b!455664 res!271860) b!455657))

(assert (= (and b!455657 res!271856) b!455658))

(assert (= (and b!455658 res!271853) b!455662))

(assert (= (and b!455662 res!271858) b!455660))

(assert (= (and b!455671 condMapEmpty!19996) mapIsEmpty!19996))

(assert (= (and b!455671 (not condMapEmpty!19996)) mapNonEmpty!19996))

(get-info :version)

(assert (= (and mapNonEmpty!19996 ((_ is ValueCellFull!5775) mapValue!19996)) b!455665))

(assert (= (and b!455671 ((_ is ValueCellFull!5775) mapDefault!19996)) b!455669))

(assert (= start!40972 b!455671))

(declare-fun m!439341 () Bool)

(assert (=> b!455670 m!439341))

(declare-fun m!439343 () Bool)

(assert (=> b!455657 m!439343))

(declare-fun m!439345 () Bool)

(assert (=> b!455657 m!439345))

(declare-fun m!439347 () Bool)

(assert (=> b!455659 m!439347))

(declare-fun m!439349 () Bool)

(assert (=> b!455660 m!439349))

(declare-fun m!439351 () Bool)

(assert (=> b!455660 m!439351))

(declare-fun m!439353 () Bool)

(assert (=> b!455660 m!439353))

(declare-fun m!439355 () Bool)

(assert (=> b!455664 m!439355))

(declare-fun m!439357 () Bool)

(assert (=> b!455658 m!439357))

(declare-fun m!439359 () Bool)

(assert (=> b!455661 m!439359))

(declare-fun m!439361 () Bool)

(assert (=> mapNonEmpty!19996 m!439361))

(declare-fun m!439363 () Bool)

(assert (=> b!455663 m!439363))

(declare-fun m!439365 () Bool)

(assert (=> b!455668 m!439365))

(declare-fun m!439367 () Bool)

(assert (=> start!40972 m!439367))

(declare-fun m!439369 () Bool)

(assert (=> start!40972 m!439369))

(check-sat (not b!455657) (not b!455668) (not b!455670) (not b!455658) b_and!19059 (not mapNonEmpty!19996) (not b_next!10899) (not b!455660) (not b!455664) (not b!455663) (not b!455661) tp_is_empty!12237 (not start!40972))
(check-sat b_and!19059 (not b_next!10899))
