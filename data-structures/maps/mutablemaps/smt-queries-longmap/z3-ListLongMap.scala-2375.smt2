; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37722 () Bool)

(assert start!37722)

(declare-fun b_free!8817 () Bool)

(declare-fun b_next!8817 () Bool)

(assert (=> start!37722 (= b_free!8817 (not b_next!8817))))

(declare-fun tp!31203 () Bool)

(declare-fun b_and!16077 () Bool)

(assert (=> start!37722 (= tp!31203 b_and!16077)))

(declare-fun b!386441 () Bool)

(declare-fun res!220712 () Bool)

(declare-fun e!234416 () Bool)

(assert (=> b!386441 (=> (not res!220712) (not e!234416))))

(declare-datatypes ((array!22849 0))(
  ( (array!22850 (arr!10890 (Array (_ BitVec 32) (_ BitVec 64))) (size!11242 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22849)

(declare-datatypes ((List!6261 0))(
  ( (Nil!6258) (Cons!6257 (h!7113 (_ BitVec 64)) (t!11419 List!6261)) )
))
(declare-fun arrayNoDuplicates!0 (array!22849 (_ BitVec 32) List!6261) Bool)

(assert (=> b!386441 (= res!220712 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6258))))

(declare-fun b!386442 () Bool)

(declare-fun res!220713 () Bool)

(assert (=> b!386442 (=> (not res!220713) (not e!234416))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!386442 (= res!220713 (or (= (select (arr!10890 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10890 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386443 () Bool)

(declare-fun res!220716 () Bool)

(assert (=> b!386443 (=> (not res!220716) (not e!234416))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386443 (= res!220716 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15798 () Bool)

(declare-fun mapRes!15798 () Bool)

(declare-fun tp!31202 () Bool)

(declare-fun e!234414 () Bool)

(assert (=> mapNonEmpty!15798 (= mapRes!15798 (and tp!31202 e!234414))))

(declare-datatypes ((V!13757 0))(
  ( (V!13758 (val!4789 Int)) )
))
(declare-datatypes ((ValueCell!4401 0))(
  ( (ValueCellFull!4401 (v!6982 V!13757)) (EmptyCell!4401) )
))
(declare-datatypes ((array!22851 0))(
  ( (array!22852 (arr!10891 (Array (_ BitVec 32) ValueCell!4401)) (size!11243 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22851)

(declare-fun mapValue!15798 () ValueCell!4401)

(declare-fun mapKey!15798 () (_ BitVec 32))

(declare-fun mapRest!15798 () (Array (_ BitVec 32) ValueCell!4401))

(assert (=> mapNonEmpty!15798 (= (arr!10891 _values!506) (store mapRest!15798 mapKey!15798 mapValue!15798))))

(declare-fun b!386444 () Bool)

(declare-fun e!234413 () Bool)

(assert (=> b!386444 (= e!234413 false)))

(declare-datatypes ((tuple2!6380 0))(
  ( (tuple2!6381 (_1!3200 (_ BitVec 64)) (_2!3200 V!13757)) )
))
(declare-datatypes ((List!6262 0))(
  ( (Nil!6259) (Cons!6258 (h!7114 tuple2!6380) (t!11420 List!6262)) )
))
(declare-datatypes ((ListLongMap!5307 0))(
  ( (ListLongMap!5308 (toList!2669 List!6262)) )
))
(declare-fun lt!181816 () ListLongMap!5307)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!181814 () array!22849)

(declare-fun zeroValue!472 () V!13757)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13757)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13757)

(declare-fun getCurrentListMapNoExtraKeys!903 (array!22849 array!22851 (_ BitVec 32) (_ BitVec 32) V!13757 V!13757 (_ BitVec 32) Int) ListLongMap!5307)

(assert (=> b!386444 (= lt!181816 (getCurrentListMapNoExtraKeys!903 lt!181814 (array!22852 (store (arr!10891 _values!506) i!548 (ValueCellFull!4401 v!373)) (size!11243 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181815 () ListLongMap!5307)

(assert (=> b!386444 (= lt!181815 (getCurrentListMapNoExtraKeys!903 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386445 () Bool)

(declare-fun res!220719 () Bool)

(assert (=> b!386445 (=> (not res!220719) (not e!234416))))

(assert (=> b!386445 (= res!220719 (and (= (size!11243 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11242 _keys!658) (size!11243 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386446 () Bool)

(declare-fun res!220717 () Bool)

(assert (=> b!386446 (=> (not res!220717) (not e!234416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22849 (_ BitVec 32)) Bool)

(assert (=> b!386446 (= res!220717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386447 () Bool)

(declare-fun e!234412 () Bool)

(declare-fun tp_is_empty!9489 () Bool)

(assert (=> b!386447 (= e!234412 tp_is_empty!9489)))

(declare-fun res!220715 () Bool)

(assert (=> start!37722 (=> (not res!220715) (not e!234416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37722 (= res!220715 (validMask!0 mask!970))))

(assert (=> start!37722 e!234416))

(declare-fun e!234417 () Bool)

(declare-fun array_inv!7986 (array!22851) Bool)

(assert (=> start!37722 (and (array_inv!7986 _values!506) e!234417)))

(assert (=> start!37722 tp!31203))

(assert (=> start!37722 true))

(assert (=> start!37722 tp_is_empty!9489))

(declare-fun array_inv!7987 (array!22849) Bool)

(assert (=> start!37722 (array_inv!7987 _keys!658)))

(declare-fun mapIsEmpty!15798 () Bool)

(assert (=> mapIsEmpty!15798 mapRes!15798))

(declare-fun b!386448 () Bool)

(assert (=> b!386448 (= e!234416 e!234413)))

(declare-fun res!220720 () Bool)

(assert (=> b!386448 (=> (not res!220720) (not e!234413))))

(assert (=> b!386448 (= res!220720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181814 mask!970))))

(assert (=> b!386448 (= lt!181814 (array!22850 (store (arr!10890 _keys!658) i!548 k0!778) (size!11242 _keys!658)))))

(declare-fun b!386449 () Bool)

(declare-fun res!220721 () Bool)

(assert (=> b!386449 (=> (not res!220721) (not e!234416))))

(assert (=> b!386449 (= res!220721 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11242 _keys!658))))))

(declare-fun b!386450 () Bool)

(assert (=> b!386450 (= e!234414 tp_is_empty!9489)))

(declare-fun b!386451 () Bool)

(declare-fun res!220718 () Bool)

(assert (=> b!386451 (=> (not res!220718) (not e!234413))))

(assert (=> b!386451 (= res!220718 (arrayNoDuplicates!0 lt!181814 #b00000000000000000000000000000000 Nil!6258))))

(declare-fun b!386452 () Bool)

(assert (=> b!386452 (= e!234417 (and e!234412 mapRes!15798))))

(declare-fun condMapEmpty!15798 () Bool)

(declare-fun mapDefault!15798 () ValueCell!4401)

(assert (=> b!386452 (= condMapEmpty!15798 (= (arr!10891 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4401)) mapDefault!15798)))))

(declare-fun b!386453 () Bool)

(declare-fun res!220714 () Bool)

(assert (=> b!386453 (=> (not res!220714) (not e!234416))))

(declare-fun arrayContainsKey!0 (array!22849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386453 (= res!220714 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37722 res!220715) b!386445))

(assert (= (and b!386445 res!220719) b!386446))

(assert (= (and b!386446 res!220717) b!386441))

(assert (= (and b!386441 res!220712) b!386449))

(assert (= (and b!386449 res!220721) b!386443))

(assert (= (and b!386443 res!220716) b!386442))

(assert (= (and b!386442 res!220713) b!386453))

(assert (= (and b!386453 res!220714) b!386448))

(assert (= (and b!386448 res!220720) b!386451))

(assert (= (and b!386451 res!220718) b!386444))

(assert (= (and b!386452 condMapEmpty!15798) mapIsEmpty!15798))

(assert (= (and b!386452 (not condMapEmpty!15798)) mapNonEmpty!15798))

(get-info :version)

(assert (= (and mapNonEmpty!15798 ((_ is ValueCellFull!4401) mapValue!15798)) b!386450))

(assert (= (and b!386452 ((_ is ValueCellFull!4401) mapDefault!15798)) b!386447))

(assert (= start!37722 b!386452))

(declare-fun m!382781 () Bool)

(assert (=> b!386444 m!382781))

(declare-fun m!382783 () Bool)

(assert (=> b!386444 m!382783))

(declare-fun m!382785 () Bool)

(assert (=> b!386444 m!382785))

(declare-fun m!382787 () Bool)

(assert (=> b!386443 m!382787))

(declare-fun m!382789 () Bool)

(assert (=> b!386441 m!382789))

(declare-fun m!382791 () Bool)

(assert (=> mapNonEmpty!15798 m!382791))

(declare-fun m!382793 () Bool)

(assert (=> b!386453 m!382793))

(declare-fun m!382795 () Bool)

(assert (=> b!386448 m!382795))

(declare-fun m!382797 () Bool)

(assert (=> b!386448 m!382797))

(declare-fun m!382799 () Bool)

(assert (=> start!37722 m!382799))

(declare-fun m!382801 () Bool)

(assert (=> start!37722 m!382801))

(declare-fun m!382803 () Bool)

(assert (=> start!37722 m!382803))

(declare-fun m!382805 () Bool)

(assert (=> b!386451 m!382805))

(declare-fun m!382807 () Bool)

(assert (=> b!386446 m!382807))

(declare-fun m!382809 () Bool)

(assert (=> b!386442 m!382809))

(check-sat (not b_next!8817) (not b!386448) (not b!386451) (not b!386453) tp_is_empty!9489 (not mapNonEmpty!15798) b_and!16077 (not b!386446) (not b!386444) (not b!386443) (not start!37722) (not b!386441))
(check-sat b_and!16077 (not b_next!8817))
