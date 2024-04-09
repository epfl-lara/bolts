; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37578 () Bool)

(assert start!37578)

(declare-fun b_free!8697 () Bool)

(declare-fun b_next!8697 () Bool)

(assert (=> start!37578 (= b_free!8697 (not b_next!8697))))

(declare-fun tp!30807 () Bool)

(declare-fun b_and!15957 () Bool)

(assert (=> start!37578 (= tp!30807 b_and!15957)))

(declare-fun b!383719 () Bool)

(declare-fun res!218643 () Bool)

(declare-fun e!233035 () Bool)

(assert (=> b!383719 (=> (not res!218643) (not e!233035))))

(declare-datatypes ((array!22581 0))(
  ( (array!22582 (arr!10756 (Array (_ BitVec 32) (_ BitVec 64))) (size!11108 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22581)

(declare-datatypes ((List!6171 0))(
  ( (Nil!6168) (Cons!6167 (h!7023 (_ BitVec 64)) (t!11329 List!6171)) )
))
(declare-fun arrayNoDuplicates!0 (array!22581 (_ BitVec 32) List!6171) Bool)

(assert (=> b!383719 (= res!218643 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6168))))

(declare-fun b!383720 () Bool)

(declare-fun res!218647 () Bool)

(assert (=> b!383720 (=> (not res!218647) (not e!233035))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22581 (_ BitVec 32)) Bool)

(assert (=> b!383720 (= res!218647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!218639 () Bool)

(assert (=> start!37578 (=> (not res!218639) (not e!233035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37578 (= res!218639 (validMask!0 mask!970))))

(assert (=> start!37578 e!233035))

(declare-datatypes ((V!13565 0))(
  ( (V!13566 (val!4717 Int)) )
))
(declare-datatypes ((ValueCell!4329 0))(
  ( (ValueCellFull!4329 (v!6910 V!13565)) (EmptyCell!4329) )
))
(declare-datatypes ((array!22583 0))(
  ( (array!22584 (arr!10757 (Array (_ BitVec 32) ValueCell!4329)) (size!11109 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22583)

(declare-fun e!233031 () Bool)

(declare-fun array_inv!7900 (array!22583) Bool)

(assert (=> start!37578 (and (array_inv!7900 _values!506) e!233031)))

(assert (=> start!37578 tp!30807))

(assert (=> start!37578 true))

(declare-fun tp_is_empty!9345 () Bool)

(assert (=> start!37578 tp_is_empty!9345))

(declare-fun array_inv!7901 (array!22581) Bool)

(assert (=> start!37578 (array_inv!7901 _keys!658)))

(declare-fun b!383721 () Bool)

(declare-fun e!233033 () Bool)

(assert (=> b!383721 (= e!233035 e!233033)))

(declare-fun res!218642 () Bool)

(assert (=> b!383721 (=> (not res!218642) (not e!233033))))

(declare-fun lt!180454 () array!22581)

(assert (=> b!383721 (= res!218642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180454 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383721 (= lt!180454 (array!22582 (store (arr!10756 _keys!658) i!548 k0!778) (size!11108 _keys!658)))))

(declare-fun b!383722 () Bool)

(declare-fun e!233034 () Bool)

(assert (=> b!383722 (= e!233033 (not e!233034))))

(declare-fun res!218648 () Bool)

(assert (=> b!383722 (=> res!218648 e!233034)))

(declare-fun lt!180451 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383722 (= res!218648 (or (and (not lt!180451) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180451) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180451)))))

(assert (=> b!383722 (= lt!180451 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6302 0))(
  ( (tuple2!6303 (_1!3161 (_ BitVec 64)) (_2!3161 V!13565)) )
))
(declare-datatypes ((List!6172 0))(
  ( (Nil!6169) (Cons!6168 (h!7024 tuple2!6302) (t!11330 List!6172)) )
))
(declare-datatypes ((ListLongMap!5229 0))(
  ( (ListLongMap!5230 (toList!2630 List!6172)) )
))
(declare-fun lt!180453 () ListLongMap!5229)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13565)

(declare-fun minValue!472 () V!13565)

(declare-fun getCurrentListMap!2047 (array!22581 array!22583 (_ BitVec 32) (_ BitVec 32) V!13565 V!13565 (_ BitVec 32) Int) ListLongMap!5229)

(assert (=> b!383722 (= lt!180453 (getCurrentListMap!2047 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180452 () array!22583)

(declare-fun lt!180460 () ListLongMap!5229)

(assert (=> b!383722 (= lt!180460 (getCurrentListMap!2047 lt!180454 lt!180452 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180459 () ListLongMap!5229)

(declare-fun lt!180458 () ListLongMap!5229)

(assert (=> b!383722 (and (= lt!180459 lt!180458) (= lt!180458 lt!180459))))

(declare-fun lt!180456 () ListLongMap!5229)

(declare-fun lt!180455 () tuple2!6302)

(declare-fun +!966 (ListLongMap!5229 tuple2!6302) ListLongMap!5229)

(assert (=> b!383722 (= lt!180458 (+!966 lt!180456 lt!180455))))

(declare-fun v!373 () V!13565)

(assert (=> b!383722 (= lt!180455 (tuple2!6303 k0!778 v!373))))

(declare-datatypes ((Unit!11823 0))(
  ( (Unit!11824) )
))
(declare-fun lt!180457 () Unit!11823)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!198 (array!22581 array!22583 (_ BitVec 32) (_ BitVec 32) V!13565 V!13565 (_ BitVec 32) (_ BitVec 64) V!13565 (_ BitVec 32) Int) Unit!11823)

(assert (=> b!383722 (= lt!180457 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!198 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!865 (array!22581 array!22583 (_ BitVec 32) (_ BitVec 32) V!13565 V!13565 (_ BitVec 32) Int) ListLongMap!5229)

(assert (=> b!383722 (= lt!180459 (getCurrentListMapNoExtraKeys!865 lt!180454 lt!180452 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383722 (= lt!180452 (array!22584 (store (arr!10757 _values!506) i!548 (ValueCellFull!4329 v!373)) (size!11109 _values!506)))))

(assert (=> b!383722 (= lt!180456 (getCurrentListMapNoExtraKeys!865 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15582 () Bool)

(declare-fun mapRes!15582 () Bool)

(assert (=> mapIsEmpty!15582 mapRes!15582))

(declare-fun b!383723 () Bool)

(declare-fun e!233036 () Bool)

(assert (=> b!383723 (= e!233036 tp_is_empty!9345)))

(declare-fun b!383724 () Bool)

(declare-fun e!233037 () Bool)

(assert (=> b!383724 (= e!233037 tp_is_empty!9345)))

(declare-fun b!383725 () Bool)

(declare-fun res!218638 () Bool)

(assert (=> b!383725 (=> (not res!218638) (not e!233035))))

(declare-fun arrayContainsKey!0 (array!22581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383725 (= res!218638 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15582 () Bool)

(declare-fun tp!30806 () Bool)

(assert (=> mapNonEmpty!15582 (= mapRes!15582 (and tp!30806 e!233036))))

(declare-fun mapValue!15582 () ValueCell!4329)

(declare-fun mapKey!15582 () (_ BitVec 32))

(declare-fun mapRest!15582 () (Array (_ BitVec 32) ValueCell!4329))

(assert (=> mapNonEmpty!15582 (= (arr!10757 _values!506) (store mapRest!15582 mapKey!15582 mapValue!15582))))

(declare-fun b!383726 () Bool)

(declare-fun res!218640 () Bool)

(assert (=> b!383726 (=> (not res!218640) (not e!233035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383726 (= res!218640 (validKeyInArray!0 k0!778))))

(declare-fun b!383727 () Bool)

(declare-fun res!218641 () Bool)

(assert (=> b!383727 (=> (not res!218641) (not e!233035))))

(assert (=> b!383727 (= res!218641 (and (= (size!11109 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11108 _keys!658) (size!11109 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383728 () Bool)

(declare-fun res!218644 () Bool)

(assert (=> b!383728 (=> (not res!218644) (not e!233035))))

(assert (=> b!383728 (= res!218644 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11108 _keys!658))))))

(declare-fun b!383729 () Bool)

(assert (=> b!383729 (= e!233034 true)))

(declare-fun lt!180450 () ListLongMap!5229)

(assert (=> b!383729 (= lt!180450 (+!966 lt!180453 lt!180455))))

(assert (=> b!383729 (= lt!180460 lt!180459)))

(declare-fun b!383730 () Bool)

(assert (=> b!383730 (= e!233031 (and e!233037 mapRes!15582))))

(declare-fun condMapEmpty!15582 () Bool)

(declare-fun mapDefault!15582 () ValueCell!4329)

(assert (=> b!383730 (= condMapEmpty!15582 (= (arr!10757 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4329)) mapDefault!15582)))))

(declare-fun b!383731 () Bool)

(declare-fun res!218646 () Bool)

(assert (=> b!383731 (=> (not res!218646) (not e!233033))))

(assert (=> b!383731 (= res!218646 (arrayNoDuplicates!0 lt!180454 #b00000000000000000000000000000000 Nil!6168))))

(declare-fun b!383732 () Bool)

(declare-fun res!218645 () Bool)

(assert (=> b!383732 (=> (not res!218645) (not e!233035))))

(assert (=> b!383732 (= res!218645 (or (= (select (arr!10756 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10756 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!37578 res!218639) b!383727))

(assert (= (and b!383727 res!218641) b!383720))

(assert (= (and b!383720 res!218647) b!383719))

(assert (= (and b!383719 res!218643) b!383728))

(assert (= (and b!383728 res!218644) b!383726))

(assert (= (and b!383726 res!218640) b!383732))

(assert (= (and b!383732 res!218645) b!383725))

(assert (= (and b!383725 res!218638) b!383721))

(assert (= (and b!383721 res!218642) b!383731))

(assert (= (and b!383731 res!218646) b!383722))

(assert (= (and b!383722 (not res!218648)) b!383729))

(assert (= (and b!383730 condMapEmpty!15582) mapIsEmpty!15582))

(assert (= (and b!383730 (not condMapEmpty!15582)) mapNonEmpty!15582))

(get-info :version)

(assert (= (and mapNonEmpty!15582 ((_ is ValueCellFull!4329) mapValue!15582)) b!383723))

(assert (= (and b!383730 ((_ is ValueCellFull!4329) mapDefault!15582)) b!383724))

(assert (= start!37578 b!383730))

(declare-fun m!380481 () Bool)

(assert (=> b!383731 m!380481))

(declare-fun m!380483 () Bool)

(assert (=> b!383732 m!380483))

(declare-fun m!380485 () Bool)

(assert (=> mapNonEmpty!15582 m!380485))

(declare-fun m!380487 () Bool)

(assert (=> b!383721 m!380487))

(declare-fun m!380489 () Bool)

(assert (=> b!383721 m!380489))

(declare-fun m!380491 () Bool)

(assert (=> b!383719 m!380491))

(declare-fun m!380493 () Bool)

(assert (=> start!37578 m!380493))

(declare-fun m!380495 () Bool)

(assert (=> start!37578 m!380495))

(declare-fun m!380497 () Bool)

(assert (=> start!37578 m!380497))

(declare-fun m!380499 () Bool)

(assert (=> b!383729 m!380499))

(declare-fun m!380501 () Bool)

(assert (=> b!383725 m!380501))

(declare-fun m!380503 () Bool)

(assert (=> b!383722 m!380503))

(declare-fun m!380505 () Bool)

(assert (=> b!383722 m!380505))

(declare-fun m!380507 () Bool)

(assert (=> b!383722 m!380507))

(declare-fun m!380509 () Bool)

(assert (=> b!383722 m!380509))

(declare-fun m!380511 () Bool)

(assert (=> b!383722 m!380511))

(declare-fun m!380513 () Bool)

(assert (=> b!383722 m!380513))

(declare-fun m!380515 () Bool)

(assert (=> b!383722 m!380515))

(declare-fun m!380517 () Bool)

(assert (=> b!383726 m!380517))

(declare-fun m!380519 () Bool)

(assert (=> b!383720 m!380519))

(check-sat (not b!383720) (not b!383726) (not b_next!8697) tp_is_empty!9345 (not b!383725) (not b!383719) (not b!383722) (not b!383729) (not b!383731) (not b!383721) (not mapNonEmpty!15582) b_and!15957 (not start!37578))
(check-sat b_and!15957 (not b_next!8697))
