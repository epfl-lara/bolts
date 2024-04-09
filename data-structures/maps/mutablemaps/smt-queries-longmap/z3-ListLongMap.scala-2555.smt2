; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39158 () Bool)

(assert start!39158)

(declare-fun b_free!9417 () Bool)

(declare-fun b_next!9417 () Bool)

(assert (=> start!39158 (= b_free!9417 (not b_next!9417))))

(declare-fun tp!33779 () Bool)

(declare-fun b_and!16821 () Bool)

(assert (=> start!39158 (= tp!33779 b_and!16821)))

(declare-fun res!239088 () Bool)

(declare-fun e!246518 () Bool)

(assert (=> start!39158 (=> (not res!239088) (not e!246518))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24979 0))(
  ( (array!24980 (arr!11936 (Array (_ BitVec 32) (_ BitVec 64))) (size!12288 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24979)

(assert (=> start!39158 (= res!239088 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12288 _keys!709))))))

(assert (=> start!39158 e!246518))

(declare-fun tp_is_empty!10569 () Bool)

(assert (=> start!39158 tp_is_empty!10569))

(assert (=> start!39158 tp!33779))

(assert (=> start!39158 true))

(declare-datatypes ((V!15197 0))(
  ( (V!15198 (val!5329 Int)) )
))
(declare-datatypes ((ValueCell!4941 0))(
  ( (ValueCellFull!4941 (v!7572 V!15197)) (EmptyCell!4941) )
))
(declare-datatypes ((array!24981 0))(
  ( (array!24982 (arr!11937 (Array (_ BitVec 32) ValueCell!4941)) (size!12289 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24981)

(declare-fun e!246523 () Bool)

(declare-fun array_inv!8708 (array!24981) Bool)

(assert (=> start!39158 (and (array_inv!8708 _values!549) e!246523)))

(declare-fun array_inv!8709 (array!24979) Bool)

(assert (=> start!39158 (array_inv!8709 _keys!709)))

(declare-fun b!411792 () Bool)

(declare-fun e!246521 () Bool)

(assert (=> b!411792 (= e!246521 tp_is_empty!10569)))

(declare-fun b!411793 () Bool)

(declare-fun res!239094 () Bool)

(assert (=> b!411793 (=> (not res!239094) (not e!246518))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411793 (= res!239094 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12288 _keys!709))))))

(declare-fun mapNonEmpty!17475 () Bool)

(declare-fun mapRes!17475 () Bool)

(declare-fun tp!33780 () Bool)

(declare-fun e!246520 () Bool)

(assert (=> mapNonEmpty!17475 (= mapRes!17475 (and tp!33780 e!246520))))

(declare-fun mapValue!17475 () ValueCell!4941)

(declare-fun mapRest!17475 () (Array (_ BitVec 32) ValueCell!4941))

(declare-fun mapKey!17475 () (_ BitVec 32))

(assert (=> mapNonEmpty!17475 (= (arr!11937 _values!549) (store mapRest!17475 mapKey!17475 mapValue!17475))))

(declare-fun b!411794 () Bool)

(declare-fun res!239089 () Bool)

(assert (=> b!411794 (=> (not res!239089) (not e!246518))))

(assert (=> b!411794 (= res!239089 (or (= (select (arr!11936 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11936 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411795 () Bool)

(declare-fun res!239092 () Bool)

(declare-fun e!246522 () Bool)

(assert (=> b!411795 (=> (not res!239092) (not e!246522))))

(assert (=> b!411795 (= res!239092 (bvsle from!863 i!563))))

(declare-fun b!411796 () Bool)

(declare-fun res!239083 () Bool)

(assert (=> b!411796 (=> (not res!239083) (not e!246518))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24979 (_ BitVec 32)) Bool)

(assert (=> b!411796 (= res!239083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411797 () Bool)

(declare-fun res!239093 () Bool)

(assert (=> b!411797 (=> (not res!239093) (not e!246518))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411797 (= res!239093 (validKeyInArray!0 k0!794))))

(declare-fun b!411798 () Bool)

(declare-fun res!239087 () Bool)

(assert (=> b!411798 (=> (not res!239087) (not e!246518))))

(declare-datatypes ((List!6898 0))(
  ( (Nil!6895) (Cons!6894 (h!7750 (_ BitVec 64)) (t!12080 List!6898)) )
))
(declare-fun arrayNoDuplicates!0 (array!24979 (_ BitVec 32) List!6898) Bool)

(assert (=> b!411798 (= res!239087 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6895))))

(declare-fun b!411799 () Bool)

(declare-fun res!239090 () Bool)

(assert (=> b!411799 (=> (not res!239090) (not e!246522))))

(declare-fun lt!189354 () array!24979)

(assert (=> b!411799 (= res!239090 (arrayNoDuplicates!0 lt!189354 #b00000000000000000000000000000000 Nil!6895))))

(declare-fun mapIsEmpty!17475 () Bool)

(assert (=> mapIsEmpty!17475 mapRes!17475))

(declare-fun b!411800 () Bool)

(assert (=> b!411800 (= e!246520 tp_is_empty!10569)))

(declare-fun b!411801 () Bool)

(assert (=> b!411801 (= e!246522 false)))

(declare-datatypes ((tuple2!6842 0))(
  ( (tuple2!6843 (_1!3431 (_ BitVec 64)) (_2!3431 V!15197)) )
))
(declare-datatypes ((List!6899 0))(
  ( (Nil!6896) (Cons!6895 (h!7751 tuple2!6842) (t!12081 List!6899)) )
))
(declare-datatypes ((ListLongMap!5769 0))(
  ( (ListLongMap!5770 (toList!2900 List!6899)) )
))
(declare-fun lt!189352 () ListLongMap!5769)

(declare-fun minValue!515 () V!15197)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun v!412 () V!15197)

(declare-fun zeroValue!515 () V!15197)

(declare-fun getCurrentListMapNoExtraKeys!1110 (array!24979 array!24981 (_ BitVec 32) (_ BitVec 32) V!15197 V!15197 (_ BitVec 32) Int) ListLongMap!5769)

(assert (=> b!411801 (= lt!189352 (getCurrentListMapNoExtraKeys!1110 lt!189354 (array!24982 (store (arr!11937 _values!549) i!563 (ValueCellFull!4941 v!412)) (size!12289 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189353 () ListLongMap!5769)

(assert (=> b!411801 (= lt!189353 (getCurrentListMapNoExtraKeys!1110 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!411802 () Bool)

(declare-fun res!239084 () Bool)

(assert (=> b!411802 (=> (not res!239084) (not e!246518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411802 (= res!239084 (validMask!0 mask!1025))))

(declare-fun b!411803 () Bool)

(assert (=> b!411803 (= e!246523 (and e!246521 mapRes!17475))))

(declare-fun condMapEmpty!17475 () Bool)

(declare-fun mapDefault!17475 () ValueCell!4941)

(assert (=> b!411803 (= condMapEmpty!17475 (= (arr!11937 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4941)) mapDefault!17475)))))

(declare-fun b!411804 () Bool)

(declare-fun res!239085 () Bool)

(assert (=> b!411804 (=> (not res!239085) (not e!246518))))

(declare-fun arrayContainsKey!0 (array!24979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411804 (= res!239085 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!411805 () Bool)

(declare-fun res!239086 () Bool)

(assert (=> b!411805 (=> (not res!239086) (not e!246518))))

(assert (=> b!411805 (= res!239086 (and (= (size!12289 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12288 _keys!709) (size!12289 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411806 () Bool)

(assert (=> b!411806 (= e!246518 e!246522)))

(declare-fun res!239091 () Bool)

(assert (=> b!411806 (=> (not res!239091) (not e!246522))))

(assert (=> b!411806 (= res!239091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189354 mask!1025))))

(assert (=> b!411806 (= lt!189354 (array!24980 (store (arr!11936 _keys!709) i!563 k0!794) (size!12288 _keys!709)))))

(assert (= (and start!39158 res!239088) b!411802))

(assert (= (and b!411802 res!239084) b!411805))

(assert (= (and b!411805 res!239086) b!411796))

(assert (= (and b!411796 res!239083) b!411798))

(assert (= (and b!411798 res!239087) b!411793))

(assert (= (and b!411793 res!239094) b!411797))

(assert (= (and b!411797 res!239093) b!411794))

(assert (= (and b!411794 res!239089) b!411804))

(assert (= (and b!411804 res!239085) b!411806))

(assert (= (and b!411806 res!239091) b!411799))

(assert (= (and b!411799 res!239090) b!411795))

(assert (= (and b!411795 res!239092) b!411801))

(assert (= (and b!411803 condMapEmpty!17475) mapIsEmpty!17475))

(assert (= (and b!411803 (not condMapEmpty!17475)) mapNonEmpty!17475))

(get-info :version)

(assert (= (and mapNonEmpty!17475 ((_ is ValueCellFull!4941) mapValue!17475)) b!411800))

(assert (= (and b!411803 ((_ is ValueCellFull!4941) mapDefault!17475)) b!411792))

(assert (= start!39158 b!411803))

(declare-fun m!401799 () Bool)

(assert (=> b!411802 m!401799))

(declare-fun m!401801 () Bool)

(assert (=> b!411798 m!401801))

(declare-fun m!401803 () Bool)

(assert (=> b!411796 m!401803))

(declare-fun m!401805 () Bool)

(assert (=> b!411799 m!401805))

(declare-fun m!401807 () Bool)

(assert (=> b!411806 m!401807))

(declare-fun m!401809 () Bool)

(assert (=> b!411806 m!401809))

(declare-fun m!401811 () Bool)

(assert (=> b!411797 m!401811))

(declare-fun m!401813 () Bool)

(assert (=> b!411801 m!401813))

(declare-fun m!401815 () Bool)

(assert (=> b!411801 m!401815))

(declare-fun m!401817 () Bool)

(assert (=> b!411801 m!401817))

(declare-fun m!401819 () Bool)

(assert (=> start!39158 m!401819))

(declare-fun m!401821 () Bool)

(assert (=> start!39158 m!401821))

(declare-fun m!401823 () Bool)

(assert (=> mapNonEmpty!17475 m!401823))

(declare-fun m!401825 () Bool)

(assert (=> b!411804 m!401825))

(declare-fun m!401827 () Bool)

(assert (=> b!411794 m!401827))

(check-sat (not b!411797) b_and!16821 (not b!411799) tp_is_empty!10569 (not start!39158) (not b!411804) (not b!411801) (not b!411796) (not b!411802) (not mapNonEmpty!17475) (not b!411798) (not b_next!9417) (not b!411806))
(check-sat b_and!16821 (not b_next!9417))
