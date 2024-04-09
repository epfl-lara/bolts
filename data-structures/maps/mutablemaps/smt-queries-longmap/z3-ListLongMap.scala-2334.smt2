; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37476 () Bool)

(assert start!37476)

(declare-fun b_free!8595 () Bool)

(declare-fun b_next!8595 () Bool)

(assert (=> start!37476 (= b_free!8595 (not b_next!8595))))

(declare-fun tp!30500 () Bool)

(declare-fun b_and!15855 () Bool)

(assert (=> start!37476 (= tp!30500 b_and!15855)))

(declare-fun b!381577 () Bool)

(declare-fun res!216965 () Bool)

(declare-fun e!231963 () Bool)

(assert (=> b!381577 (=> (not res!216965) (not e!231963))))

(declare-datatypes ((array!22377 0))(
  ( (array!22378 (arr!10654 (Array (_ BitVec 32) (_ BitVec 64))) (size!11006 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22377)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381577 (= res!216965 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!381578 () Bool)

(declare-fun res!216958 () Bool)

(assert (=> b!381578 (=> (not res!216958) (not e!231963))))

(declare-datatypes ((List!6089 0))(
  ( (Nil!6086) (Cons!6085 (h!6941 (_ BitVec 64)) (t!11247 List!6089)) )
))
(declare-fun arrayNoDuplicates!0 (array!22377 (_ BitVec 32) List!6089) Bool)

(assert (=> b!381578 (= res!216958 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6086))))

(declare-fun b!381579 () Bool)

(declare-fun e!231965 () Bool)

(assert (=> b!381579 (= e!231965 true)))

(declare-datatypes ((V!13429 0))(
  ( (V!13430 (val!4666 Int)) )
))
(declare-datatypes ((tuple2!6220 0))(
  ( (tuple2!6221 (_1!3120 (_ BitVec 64)) (_2!3120 V!13429)) )
))
(declare-datatypes ((List!6090 0))(
  ( (Nil!6087) (Cons!6086 (h!6942 tuple2!6220) (t!11248 List!6090)) )
))
(declare-datatypes ((ListLongMap!5147 0))(
  ( (ListLongMap!5148 (toList!2589 List!6090)) )
))
(declare-fun lt!178955 () ListLongMap!5147)

(declare-fun lt!178959 () ListLongMap!5147)

(assert (=> b!381579 (= lt!178955 lt!178959)))

(declare-fun b!381580 () Bool)

(declare-fun res!216963 () Bool)

(assert (=> b!381580 (=> (not res!216963) (not e!231963))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22377 (_ BitVec 32)) Bool)

(assert (=> b!381580 (= res!216963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381581 () Bool)

(declare-fun e!231962 () Bool)

(declare-fun e!231961 () Bool)

(declare-fun mapRes!15429 () Bool)

(assert (=> b!381581 (= e!231962 (and e!231961 mapRes!15429))))

(declare-fun condMapEmpty!15429 () Bool)

(declare-datatypes ((ValueCell!4278 0))(
  ( (ValueCellFull!4278 (v!6859 V!13429)) (EmptyCell!4278) )
))
(declare-datatypes ((array!22379 0))(
  ( (array!22380 (arr!10655 (Array (_ BitVec 32) ValueCell!4278)) (size!11007 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22379)

(declare-fun mapDefault!15429 () ValueCell!4278)

(assert (=> b!381581 (= condMapEmpty!15429 (= (arr!10655 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4278)) mapDefault!15429)))))

(declare-fun b!381582 () Bool)

(declare-fun res!216959 () Bool)

(assert (=> b!381582 (=> (not res!216959) (not e!231963))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381582 (= res!216959 (or (= (select (arr!10654 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10654 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381583 () Bool)

(declare-fun res!216955 () Bool)

(assert (=> b!381583 (=> (not res!216955) (not e!231963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381583 (= res!216955 (validKeyInArray!0 k0!778))))

(declare-fun b!381584 () Bool)

(declare-fun e!231966 () Bool)

(assert (=> b!381584 (= e!231963 e!231966)))

(declare-fun res!216957 () Bool)

(assert (=> b!381584 (=> (not res!216957) (not e!231966))))

(declare-fun lt!178961 () array!22377)

(assert (=> b!381584 (= res!216957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178961 mask!970))))

(assert (=> b!381584 (= lt!178961 (array!22378 (store (arr!10654 _keys!658) i!548 k0!778) (size!11006 _keys!658)))))

(declare-fun b!381585 () Bool)

(declare-fun res!216964 () Bool)

(assert (=> b!381585 (=> (not res!216964) (not e!231963))))

(assert (=> b!381585 (= res!216964 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11006 _keys!658))))))

(declare-fun b!381586 () Bool)

(declare-fun res!216962 () Bool)

(assert (=> b!381586 (=> (not res!216962) (not e!231963))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381586 (= res!216962 (and (= (size!11007 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11006 _keys!658) (size!11007 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381587 () Bool)

(declare-fun tp_is_empty!9243 () Bool)

(assert (=> b!381587 (= e!231961 tp_is_empty!9243)))

(declare-fun b!381588 () Bool)

(assert (=> b!381588 (= e!231966 (not e!231965))))

(declare-fun res!216961 () Bool)

(assert (=> b!381588 (=> res!216961 e!231965)))

(declare-fun lt!178956 () Bool)

(assert (=> b!381588 (= res!216961 (or (and (not lt!178956) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178956) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178956)))))

(assert (=> b!381588 (= lt!178956 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!178957 () ListLongMap!5147)

(declare-fun zeroValue!472 () V!13429)

(declare-fun minValue!472 () V!13429)

(declare-fun getCurrentListMap!2008 (array!22377 array!22379 (_ BitVec 32) (_ BitVec 32) V!13429 V!13429 (_ BitVec 32) Int) ListLongMap!5147)

(assert (=> b!381588 (= lt!178957 (getCurrentListMap!2008 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178963 () array!22379)

(assert (=> b!381588 (= lt!178955 (getCurrentListMap!2008 lt!178961 lt!178963 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178962 () ListLongMap!5147)

(assert (=> b!381588 (and (= lt!178959 lt!178962) (= lt!178962 lt!178959))))

(declare-fun v!373 () V!13429)

(declare-fun lt!178960 () ListLongMap!5147)

(declare-fun +!926 (ListLongMap!5147 tuple2!6220) ListLongMap!5147)

(assert (=> b!381588 (= lt!178962 (+!926 lt!178960 (tuple2!6221 k0!778 v!373)))))

(declare-datatypes ((Unit!11745 0))(
  ( (Unit!11746) )
))
(declare-fun lt!178958 () Unit!11745)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!159 (array!22377 array!22379 (_ BitVec 32) (_ BitVec 32) V!13429 V!13429 (_ BitVec 32) (_ BitVec 64) V!13429 (_ BitVec 32) Int) Unit!11745)

(assert (=> b!381588 (= lt!178958 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!159 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!826 (array!22377 array!22379 (_ BitVec 32) (_ BitVec 32) V!13429 V!13429 (_ BitVec 32) Int) ListLongMap!5147)

(assert (=> b!381588 (= lt!178959 (getCurrentListMapNoExtraKeys!826 lt!178961 lt!178963 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381588 (= lt!178963 (array!22380 (store (arr!10655 _values!506) i!548 (ValueCellFull!4278 v!373)) (size!11007 _values!506)))))

(assert (=> b!381588 (= lt!178960 (getCurrentListMapNoExtraKeys!826 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381589 () Bool)

(declare-fun e!231960 () Bool)

(assert (=> b!381589 (= e!231960 tp_is_empty!9243)))

(declare-fun mapIsEmpty!15429 () Bool)

(assert (=> mapIsEmpty!15429 mapRes!15429))

(declare-fun res!216956 () Bool)

(assert (=> start!37476 (=> (not res!216956) (not e!231963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37476 (= res!216956 (validMask!0 mask!970))))

(assert (=> start!37476 e!231963))

(declare-fun array_inv!7826 (array!22379) Bool)

(assert (=> start!37476 (and (array_inv!7826 _values!506) e!231962)))

(assert (=> start!37476 tp!30500))

(assert (=> start!37476 true))

(assert (=> start!37476 tp_is_empty!9243))

(declare-fun array_inv!7827 (array!22377) Bool)

(assert (=> start!37476 (array_inv!7827 _keys!658)))

(declare-fun b!381590 () Bool)

(declare-fun res!216960 () Bool)

(assert (=> b!381590 (=> (not res!216960) (not e!231966))))

(assert (=> b!381590 (= res!216960 (arrayNoDuplicates!0 lt!178961 #b00000000000000000000000000000000 Nil!6086))))

(declare-fun mapNonEmpty!15429 () Bool)

(declare-fun tp!30501 () Bool)

(assert (=> mapNonEmpty!15429 (= mapRes!15429 (and tp!30501 e!231960))))

(declare-fun mapValue!15429 () ValueCell!4278)

(declare-fun mapRest!15429 () (Array (_ BitVec 32) ValueCell!4278))

(declare-fun mapKey!15429 () (_ BitVec 32))

(assert (=> mapNonEmpty!15429 (= (arr!10655 _values!506) (store mapRest!15429 mapKey!15429 mapValue!15429))))

(assert (= (and start!37476 res!216956) b!381586))

(assert (= (and b!381586 res!216962) b!381580))

(assert (= (and b!381580 res!216963) b!381578))

(assert (= (and b!381578 res!216958) b!381585))

(assert (= (and b!381585 res!216964) b!381583))

(assert (= (and b!381583 res!216955) b!381582))

(assert (= (and b!381582 res!216959) b!381577))

(assert (= (and b!381577 res!216965) b!381584))

(assert (= (and b!381584 res!216957) b!381590))

(assert (= (and b!381590 res!216960) b!381588))

(assert (= (and b!381588 (not res!216961)) b!381579))

(assert (= (and b!381581 condMapEmpty!15429) mapIsEmpty!15429))

(assert (= (and b!381581 (not condMapEmpty!15429)) mapNonEmpty!15429))

(get-info :version)

(assert (= (and mapNonEmpty!15429 ((_ is ValueCellFull!4278) mapValue!15429)) b!381589))

(assert (= (and b!381581 ((_ is ValueCellFull!4278) mapDefault!15429)) b!381587))

(assert (= start!37476 b!381581))

(declare-fun m!378505 () Bool)

(assert (=> b!381590 m!378505))

(declare-fun m!378507 () Bool)

(assert (=> b!381578 m!378507))

(declare-fun m!378509 () Bool)

(assert (=> b!381588 m!378509))

(declare-fun m!378511 () Bool)

(assert (=> b!381588 m!378511))

(declare-fun m!378513 () Bool)

(assert (=> b!381588 m!378513))

(declare-fun m!378515 () Bool)

(assert (=> b!381588 m!378515))

(declare-fun m!378517 () Bool)

(assert (=> b!381588 m!378517))

(declare-fun m!378519 () Bool)

(assert (=> b!381588 m!378519))

(declare-fun m!378521 () Bool)

(assert (=> b!381588 m!378521))

(declare-fun m!378523 () Bool)

(assert (=> b!381584 m!378523))

(declare-fun m!378525 () Bool)

(assert (=> b!381584 m!378525))

(declare-fun m!378527 () Bool)

(assert (=> start!37476 m!378527))

(declare-fun m!378529 () Bool)

(assert (=> start!37476 m!378529))

(declare-fun m!378531 () Bool)

(assert (=> start!37476 m!378531))

(declare-fun m!378533 () Bool)

(assert (=> b!381580 m!378533))

(declare-fun m!378535 () Bool)

(assert (=> mapNonEmpty!15429 m!378535))

(declare-fun m!378537 () Bool)

(assert (=> b!381577 m!378537))

(declare-fun m!378539 () Bool)

(assert (=> b!381582 m!378539))

(declare-fun m!378541 () Bool)

(assert (=> b!381583 m!378541))

(check-sat (not b_next!8595) (not b!381584) (not start!37476) (not b!381583) (not b!381588) (not b!381590) (not b!381578) b_and!15855 tp_is_empty!9243 (not b!381577) (not mapNonEmpty!15429) (not b!381580))
(check-sat b_and!15855 (not b_next!8595))
