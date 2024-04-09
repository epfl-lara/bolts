; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37740 () Bool)

(assert start!37740)

(declare-fun b_free!8835 () Bool)

(declare-fun b_next!8835 () Bool)

(assert (=> start!37740 (= b_free!8835 (not b_next!8835))))

(declare-fun tp!31256 () Bool)

(declare-fun b_and!16095 () Bool)

(assert (=> start!37740 (= tp!31256 b_and!16095)))

(declare-fun mapIsEmpty!15825 () Bool)

(declare-fun mapRes!15825 () Bool)

(assert (=> mapIsEmpty!15825 mapRes!15825))

(declare-fun b!386792 () Bool)

(declare-fun res!220989 () Bool)

(declare-fun e!234576 () Bool)

(assert (=> b!386792 (=> (not res!220989) (not e!234576))))

(declare-datatypes ((array!22883 0))(
  ( (array!22884 (arr!10907 (Array (_ BitVec 32) (_ BitVec 64))) (size!11259 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22883)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!386792 (= res!220989 (or (= (select (arr!10907 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10907 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386793 () Bool)

(declare-fun res!220991 () Bool)

(assert (=> b!386793 (=> (not res!220991) (not e!234576))))

(declare-datatypes ((List!6274 0))(
  ( (Nil!6271) (Cons!6270 (h!7126 (_ BitVec 64)) (t!11432 List!6274)) )
))
(declare-fun arrayNoDuplicates!0 (array!22883 (_ BitVec 32) List!6274) Bool)

(assert (=> b!386793 (= res!220991 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6271))))

(declare-fun res!220985 () Bool)

(assert (=> start!37740 (=> (not res!220985) (not e!234576))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37740 (= res!220985 (validMask!0 mask!970))))

(assert (=> start!37740 e!234576))

(declare-datatypes ((V!13781 0))(
  ( (V!13782 (val!4798 Int)) )
))
(declare-datatypes ((ValueCell!4410 0))(
  ( (ValueCellFull!4410 (v!6991 V!13781)) (EmptyCell!4410) )
))
(declare-datatypes ((array!22885 0))(
  ( (array!22886 (arr!10908 (Array (_ BitVec 32) ValueCell!4410)) (size!11260 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22885)

(declare-fun e!234574 () Bool)

(declare-fun array_inv!7998 (array!22885) Bool)

(assert (=> start!37740 (and (array_inv!7998 _values!506) e!234574)))

(assert (=> start!37740 tp!31256))

(assert (=> start!37740 true))

(declare-fun tp_is_empty!9507 () Bool)

(assert (=> start!37740 tp_is_empty!9507))

(declare-fun array_inv!7999 (array!22883) Bool)

(assert (=> start!37740 (array_inv!7999 _keys!658)))

(declare-fun b!386794 () Bool)

(declare-fun res!220983 () Bool)

(assert (=> b!386794 (=> (not res!220983) (not e!234576))))

(assert (=> b!386794 (= res!220983 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11259 _keys!658))))))

(declare-fun b!386795 () Bool)

(declare-fun res!220988 () Bool)

(assert (=> b!386795 (=> (not res!220988) (not e!234576))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386795 (= res!220988 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15825 () Bool)

(declare-fun tp!31257 () Bool)

(declare-fun e!234578 () Bool)

(assert (=> mapNonEmpty!15825 (= mapRes!15825 (and tp!31257 e!234578))))

(declare-fun mapRest!15825 () (Array (_ BitVec 32) ValueCell!4410))

(declare-fun mapKey!15825 () (_ BitVec 32))

(declare-fun mapValue!15825 () ValueCell!4410)

(assert (=> mapNonEmpty!15825 (= (arr!10908 _values!506) (store mapRest!15825 mapKey!15825 mapValue!15825))))

(declare-fun b!386796 () Bool)

(declare-fun e!234577 () Bool)

(assert (=> b!386796 (= e!234577 tp_is_empty!9507)))

(declare-fun b!386797 () Bool)

(assert (=> b!386797 (= e!234578 tp_is_empty!9507)))

(declare-fun b!386798 () Bool)

(declare-fun res!220986 () Bool)

(declare-fun e!234579 () Bool)

(assert (=> b!386798 (=> (not res!220986) (not e!234579))))

(declare-fun lt!181896 () array!22883)

(assert (=> b!386798 (= res!220986 (arrayNoDuplicates!0 lt!181896 #b00000000000000000000000000000000 Nil!6271))))

(declare-fun b!386799 () Bool)

(declare-fun res!220987 () Bool)

(assert (=> b!386799 (=> (not res!220987) (not e!234576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22883 (_ BitVec 32)) Bool)

(assert (=> b!386799 (= res!220987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386800 () Bool)

(declare-fun res!220984 () Bool)

(assert (=> b!386800 (=> (not res!220984) (not e!234576))))

(declare-fun arrayContainsKey!0 (array!22883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386800 (= res!220984 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!386801 () Bool)

(assert (=> b!386801 (= e!234574 (and e!234577 mapRes!15825))))

(declare-fun condMapEmpty!15825 () Bool)

(declare-fun mapDefault!15825 () ValueCell!4410)

(assert (=> b!386801 (= condMapEmpty!15825 (= (arr!10908 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4410)) mapDefault!15825)))))

(declare-fun b!386802 () Bool)

(declare-fun res!220990 () Bool)

(assert (=> b!386802 (=> (not res!220990) (not e!234576))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!386802 (= res!220990 (and (= (size!11260 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11259 _keys!658) (size!11260 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386803 () Bool)

(assert (=> b!386803 (= e!234576 e!234579)))

(declare-fun res!220982 () Bool)

(assert (=> b!386803 (=> (not res!220982) (not e!234579))))

(assert (=> b!386803 (= res!220982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181896 mask!970))))

(assert (=> b!386803 (= lt!181896 (array!22884 (store (arr!10907 _keys!658) i!548 k0!778) (size!11259 _keys!658)))))

(declare-fun b!386804 () Bool)

(assert (=> b!386804 (= e!234579 false)))

(declare-datatypes ((tuple2!6390 0))(
  ( (tuple2!6391 (_1!3205 (_ BitVec 64)) (_2!3205 V!13781)) )
))
(declare-datatypes ((List!6275 0))(
  ( (Nil!6272) (Cons!6271 (h!7127 tuple2!6390) (t!11433 List!6275)) )
))
(declare-datatypes ((ListLongMap!5317 0))(
  ( (ListLongMap!5318 (toList!2674 List!6275)) )
))
(declare-fun lt!181897 () ListLongMap!5317)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13781)

(declare-fun v!373 () V!13781)

(declare-fun minValue!472 () V!13781)

(declare-fun getCurrentListMapNoExtraKeys!908 (array!22883 array!22885 (_ BitVec 32) (_ BitVec 32) V!13781 V!13781 (_ BitVec 32) Int) ListLongMap!5317)

(assert (=> b!386804 (= lt!181897 (getCurrentListMapNoExtraKeys!908 lt!181896 (array!22886 (store (arr!10908 _values!506) i!548 (ValueCellFull!4410 v!373)) (size!11260 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181895 () ListLongMap!5317)

(assert (=> b!386804 (= lt!181895 (getCurrentListMapNoExtraKeys!908 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37740 res!220985) b!386802))

(assert (= (and b!386802 res!220990) b!386799))

(assert (= (and b!386799 res!220987) b!386793))

(assert (= (and b!386793 res!220991) b!386794))

(assert (= (and b!386794 res!220983) b!386795))

(assert (= (and b!386795 res!220988) b!386792))

(assert (= (and b!386792 res!220989) b!386800))

(assert (= (and b!386800 res!220984) b!386803))

(assert (= (and b!386803 res!220982) b!386798))

(assert (= (and b!386798 res!220986) b!386804))

(assert (= (and b!386801 condMapEmpty!15825) mapIsEmpty!15825))

(assert (= (and b!386801 (not condMapEmpty!15825)) mapNonEmpty!15825))

(get-info :version)

(assert (= (and mapNonEmpty!15825 ((_ is ValueCellFull!4410) mapValue!15825)) b!386797))

(assert (= (and b!386801 ((_ is ValueCellFull!4410) mapDefault!15825)) b!386796))

(assert (= start!37740 b!386801))

(declare-fun m!383051 () Bool)

(assert (=> b!386795 m!383051))

(declare-fun m!383053 () Bool)

(assert (=> b!386799 m!383053))

(declare-fun m!383055 () Bool)

(assert (=> b!386803 m!383055))

(declare-fun m!383057 () Bool)

(assert (=> b!386803 m!383057))

(declare-fun m!383059 () Bool)

(assert (=> b!386804 m!383059))

(declare-fun m!383061 () Bool)

(assert (=> b!386804 m!383061))

(declare-fun m!383063 () Bool)

(assert (=> b!386804 m!383063))

(declare-fun m!383065 () Bool)

(assert (=> mapNonEmpty!15825 m!383065))

(declare-fun m!383067 () Bool)

(assert (=> b!386793 m!383067))

(declare-fun m!383069 () Bool)

(assert (=> b!386792 m!383069))

(declare-fun m!383071 () Bool)

(assert (=> b!386798 m!383071))

(declare-fun m!383073 () Bool)

(assert (=> start!37740 m!383073))

(declare-fun m!383075 () Bool)

(assert (=> start!37740 m!383075))

(declare-fun m!383077 () Bool)

(assert (=> start!37740 m!383077))

(declare-fun m!383079 () Bool)

(assert (=> b!386800 m!383079))

(check-sat (not b!386795) (not b!386793) b_and!16095 (not b!386798) (not b!386803) (not b!386800) (not b_next!8835) (not start!37740) (not b!386804) (not b!386799) tp_is_empty!9507 (not mapNonEmpty!15825))
(check-sat b_and!16095 (not b_next!8835))
