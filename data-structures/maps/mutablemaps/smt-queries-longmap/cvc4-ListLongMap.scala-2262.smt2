; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37046 () Bool)

(assert start!37046)

(declare-fun b_free!8165 () Bool)

(declare-fun b_next!8165 () Bool)

(assert (=> start!37046 (= b_free!8165 (not b_next!8165))))

(declare-fun tp!29211 () Bool)

(declare-fun b_and!15425 () Bool)

(assert (=> start!37046 (= tp!29211 b_and!15425)))

(declare-fun b!372062 () Bool)

(declare-fun e!226989 () Bool)

(declare-fun tp_is_empty!8813 () Bool)

(assert (=> b!372062 (= e!226989 tp_is_empty!8813)))

(declare-fun b!372063 () Bool)

(declare-fun res!209375 () Bool)

(declare-fun e!226988 () Bool)

(assert (=> b!372063 (=> (not res!209375) (not e!226988))))

(declare-datatypes ((array!21535 0))(
  ( (array!21536 (arr!10233 (Array (_ BitVec 32) (_ BitVec 64))) (size!10585 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21535)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21535 (_ BitVec 32)) Bool)

(assert (=> b!372063 (= res!209375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372064 () Bool)

(declare-fun res!209376 () Bool)

(assert (=> b!372064 (=> (not res!209376) (not e!226988))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372064 (= res!209376 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!372065 () Bool)

(declare-fun e!226990 () Bool)

(assert (=> b!372065 (= e!226988 e!226990)))

(declare-fun res!209378 () Bool)

(assert (=> b!372065 (=> (not res!209378) (not e!226990))))

(declare-fun lt!170618 () array!21535)

(assert (=> b!372065 (= res!209378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170618 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372065 (= lt!170618 (array!21536 (store (arr!10233 _keys!658) i!548 k!778) (size!10585 _keys!658)))))

(declare-fun b!372066 () Bool)

(assert (=> b!372066 (= e!226990 (not true))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12855 0))(
  ( (V!12856 (val!4451 Int)) )
))
(declare-datatypes ((tuple2!5880 0))(
  ( (tuple2!5881 (_1!2950 (_ BitVec 64)) (_2!2950 V!12855)) )
))
(declare-datatypes ((List!5753 0))(
  ( (Nil!5750) (Cons!5749 (h!6605 tuple2!5880) (t!10911 List!5753)) )
))
(declare-datatypes ((ListLongMap!4807 0))(
  ( (ListLongMap!4808 (toList!2419 List!5753)) )
))
(declare-fun lt!170615 () ListLongMap!4807)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12855)

(declare-datatypes ((ValueCell!4063 0))(
  ( (ValueCellFull!4063 (v!6644 V!12855)) (EmptyCell!4063) )
))
(declare-datatypes ((array!21537 0))(
  ( (array!21538 (arr!10234 (Array (_ BitVec 32) ValueCell!4063)) (size!10586 (_ BitVec 32))) )
))
(declare-fun lt!170619 () array!21537)

(declare-fun minValue!472 () V!12855)

(declare-fun getCurrentListMap!1869 (array!21535 array!21537 (_ BitVec 32) (_ BitVec 32) V!12855 V!12855 (_ BitVec 32) Int) ListLongMap!4807)

(assert (=> b!372066 (= lt!170615 (getCurrentListMap!1869 lt!170618 lt!170619 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170616 () ListLongMap!4807)

(declare-fun lt!170620 () ListLongMap!4807)

(assert (=> b!372066 (and (= lt!170616 lt!170620) (= lt!170620 lt!170616))))

(declare-fun lt!170614 () ListLongMap!4807)

(declare-fun v!373 () V!12855)

(declare-fun +!760 (ListLongMap!4807 tuple2!5880) ListLongMap!4807)

(assert (=> b!372066 (= lt!170620 (+!760 lt!170614 (tuple2!5881 k!778 v!373)))))

(declare-fun _values!506 () array!21537)

(declare-datatypes ((Unit!11425 0))(
  ( (Unit!11426) )
))
(declare-fun lt!170617 () Unit!11425)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!20 (array!21535 array!21537 (_ BitVec 32) (_ BitVec 32) V!12855 V!12855 (_ BitVec 32) (_ BitVec 64) V!12855 (_ BitVec 32) Int) Unit!11425)

(assert (=> b!372066 (= lt!170617 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!20 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!687 (array!21535 array!21537 (_ BitVec 32) (_ BitVec 32) V!12855 V!12855 (_ BitVec 32) Int) ListLongMap!4807)

(assert (=> b!372066 (= lt!170616 (getCurrentListMapNoExtraKeys!687 lt!170618 lt!170619 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372066 (= lt!170619 (array!21538 (store (arr!10234 _values!506) i!548 (ValueCellFull!4063 v!373)) (size!10586 _values!506)))))

(assert (=> b!372066 (= lt!170614 (getCurrentListMapNoExtraKeys!687 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372067 () Bool)

(declare-fun res!209384 () Bool)

(assert (=> b!372067 (=> (not res!209384) (not e!226988))))

(assert (=> b!372067 (= res!209384 (and (= (size!10586 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10585 _keys!658) (size!10586 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372068 () Bool)

(declare-fun res!209380 () Bool)

(assert (=> b!372068 (=> (not res!209380) (not e!226988))))

(assert (=> b!372068 (= res!209380 (or (= (select (arr!10233 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10233 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!209383 () Bool)

(assert (=> start!37046 (=> (not res!209383) (not e!226988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37046 (= res!209383 (validMask!0 mask!970))))

(assert (=> start!37046 e!226988))

(declare-fun e!226991 () Bool)

(declare-fun array_inv!7556 (array!21537) Bool)

(assert (=> start!37046 (and (array_inv!7556 _values!506) e!226991)))

(assert (=> start!37046 tp!29211))

(assert (=> start!37046 true))

(assert (=> start!37046 tp_is_empty!8813))

(declare-fun array_inv!7557 (array!21535) Bool)

(assert (=> start!37046 (array_inv!7557 _keys!658)))

(declare-fun mapIsEmpty!14784 () Bool)

(declare-fun mapRes!14784 () Bool)

(assert (=> mapIsEmpty!14784 mapRes!14784))

(declare-fun b!372069 () Bool)

(declare-fun e!226992 () Bool)

(assert (=> b!372069 (= e!226992 tp_is_empty!8813)))

(declare-fun b!372070 () Bool)

(declare-fun res!209379 () Bool)

(assert (=> b!372070 (=> (not res!209379) (not e!226988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372070 (= res!209379 (validKeyInArray!0 k!778))))

(declare-fun b!372071 () Bool)

(declare-fun res!209381 () Bool)

(assert (=> b!372071 (=> (not res!209381) (not e!226988))))

(declare-datatypes ((List!5754 0))(
  ( (Nil!5751) (Cons!5750 (h!6606 (_ BitVec 64)) (t!10912 List!5754)) )
))
(declare-fun arrayNoDuplicates!0 (array!21535 (_ BitVec 32) List!5754) Bool)

(assert (=> b!372071 (= res!209381 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5751))))

(declare-fun b!372072 () Bool)

(assert (=> b!372072 (= e!226991 (and e!226992 mapRes!14784))))

(declare-fun condMapEmpty!14784 () Bool)

(declare-fun mapDefault!14784 () ValueCell!4063)

