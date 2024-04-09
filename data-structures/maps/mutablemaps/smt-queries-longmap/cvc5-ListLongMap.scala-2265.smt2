; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37060 () Bool)

(assert start!37060)

(declare-fun b_free!8179 () Bool)

(declare-fun b_next!8179 () Bool)

(assert (=> start!37060 (= b_free!8179 (not b_next!8179))))

(declare-fun tp!29252 () Bool)

(declare-fun b_and!15439 () Bool)

(assert (=> start!37060 (= tp!29252 b_and!15439)))

(declare-fun b!372335 () Bool)

(declare-fun res!209587 () Bool)

(declare-fun e!227118 () Bool)

(assert (=> b!372335 (=> (not res!209587) (not e!227118))))

(declare-datatypes ((array!21563 0))(
  ( (array!21564 (arr!10247 (Array (_ BitVec 32) (_ BitVec 64))) (size!10599 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21563)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372335 (= res!209587 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!372336 () Bool)

(declare-fun e!227114 () Bool)

(assert (=> b!372336 (= e!227118 e!227114)))

(declare-fun res!209593 () Bool)

(assert (=> b!372336 (=> (not res!209593) (not e!227114))))

(declare-fun lt!170763 () array!21563)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21563 (_ BitVec 32)) Bool)

(assert (=> b!372336 (= res!209593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170763 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372336 (= lt!170763 (array!21564 (store (arr!10247 _keys!658) i!548 k!778) (size!10599 _keys!658)))))

(declare-fun res!209586 () Bool)

(assert (=> start!37060 (=> (not res!209586) (not e!227118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37060 (= res!209586 (validMask!0 mask!970))))

(assert (=> start!37060 e!227118))

(declare-datatypes ((V!12875 0))(
  ( (V!12876 (val!4458 Int)) )
))
(declare-datatypes ((ValueCell!4070 0))(
  ( (ValueCellFull!4070 (v!6651 V!12875)) (EmptyCell!4070) )
))
(declare-datatypes ((array!21565 0))(
  ( (array!21566 (arr!10248 (Array (_ BitVec 32) ValueCell!4070)) (size!10600 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21565)

(declare-fun e!227113 () Bool)

(declare-fun array_inv!7566 (array!21565) Bool)

(assert (=> start!37060 (and (array_inv!7566 _values!506) e!227113)))

(assert (=> start!37060 tp!29252))

(assert (=> start!37060 true))

(declare-fun tp_is_empty!8827 () Bool)

(assert (=> start!37060 tp_is_empty!8827))

(declare-fun array_inv!7567 (array!21563) Bool)

(assert (=> start!37060 (array_inv!7567 _keys!658)))

(declare-fun b!372337 () Bool)

(assert (=> b!372337 (= e!227114 (not true))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!170764 () array!21565)

(declare-fun zeroValue!472 () V!12875)

(declare-fun minValue!472 () V!12875)

(declare-datatypes ((tuple2!5890 0))(
  ( (tuple2!5891 (_1!2955 (_ BitVec 64)) (_2!2955 V!12875)) )
))
(declare-datatypes ((List!5765 0))(
  ( (Nil!5762) (Cons!5761 (h!6617 tuple2!5890) (t!10923 List!5765)) )
))
(declare-datatypes ((ListLongMap!4817 0))(
  ( (ListLongMap!4818 (toList!2424 List!5765)) )
))
(declare-fun lt!170766 () ListLongMap!4817)

(declare-fun getCurrentListMap!1874 (array!21563 array!21565 (_ BitVec 32) (_ BitVec 32) V!12875 V!12875 (_ BitVec 32) Int) ListLongMap!4817)

(assert (=> b!372337 (= lt!170766 (getCurrentListMap!1874 lt!170763 lt!170764 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170767 () ListLongMap!4817)

(declare-fun lt!170762 () ListLongMap!4817)

(assert (=> b!372337 (and (= lt!170767 lt!170762) (= lt!170762 lt!170767))))

(declare-fun v!373 () V!12875)

(declare-fun lt!170761 () ListLongMap!4817)

(declare-fun +!765 (ListLongMap!4817 tuple2!5890) ListLongMap!4817)

(assert (=> b!372337 (= lt!170762 (+!765 lt!170761 (tuple2!5891 k!778 v!373)))))

(declare-datatypes ((Unit!11435 0))(
  ( (Unit!11436) )
))
(declare-fun lt!170765 () Unit!11435)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!25 (array!21563 array!21565 (_ BitVec 32) (_ BitVec 32) V!12875 V!12875 (_ BitVec 32) (_ BitVec 64) V!12875 (_ BitVec 32) Int) Unit!11435)

(assert (=> b!372337 (= lt!170765 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!25 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!692 (array!21563 array!21565 (_ BitVec 32) (_ BitVec 32) V!12875 V!12875 (_ BitVec 32) Int) ListLongMap!4817)

(assert (=> b!372337 (= lt!170767 (getCurrentListMapNoExtraKeys!692 lt!170763 lt!170764 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372337 (= lt!170764 (array!21566 (store (arr!10248 _values!506) i!548 (ValueCellFull!4070 v!373)) (size!10600 _values!506)))))

(assert (=> b!372337 (= lt!170761 (getCurrentListMapNoExtraKeys!692 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372338 () Bool)

(declare-fun res!209588 () Bool)

(assert (=> b!372338 (=> (not res!209588) (not e!227118))))

(assert (=> b!372338 (= res!209588 (or (= (select (arr!10247 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10247 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372339 () Bool)

(declare-fun res!209594 () Bool)

(assert (=> b!372339 (=> (not res!209594) (not e!227118))))

(assert (=> b!372339 (= res!209594 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10599 _keys!658))))))

(declare-fun b!372340 () Bool)

(declare-fun res!209585 () Bool)

(assert (=> b!372340 (=> (not res!209585) (not e!227118))))

(declare-datatypes ((List!5766 0))(
  ( (Nil!5763) (Cons!5762 (h!6618 (_ BitVec 64)) (t!10924 List!5766)) )
))
(declare-fun arrayNoDuplicates!0 (array!21563 (_ BitVec 32) List!5766) Bool)

(assert (=> b!372340 (= res!209585 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5763))))

(declare-fun b!372341 () Bool)

(declare-fun e!227117 () Bool)

(assert (=> b!372341 (= e!227117 tp_is_empty!8827)))

(declare-fun b!372342 () Bool)

(declare-fun res!209590 () Bool)

(assert (=> b!372342 (=> (not res!209590) (not e!227118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372342 (= res!209590 (validKeyInArray!0 k!778))))

(declare-fun b!372343 () Bool)

(declare-fun res!209591 () Bool)

(assert (=> b!372343 (=> (not res!209591) (not e!227118))))

(assert (=> b!372343 (= res!209591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14805 () Bool)

(declare-fun mapRes!14805 () Bool)

(assert (=> mapIsEmpty!14805 mapRes!14805))

(declare-fun b!372344 () Bool)

(declare-fun e!227115 () Bool)

(assert (=> b!372344 (= e!227115 tp_is_empty!8827)))

(declare-fun b!372345 () Bool)

(assert (=> b!372345 (= e!227113 (and e!227115 mapRes!14805))))

(declare-fun condMapEmpty!14805 () Bool)

(declare-fun mapDefault!14805 () ValueCell!4070)

