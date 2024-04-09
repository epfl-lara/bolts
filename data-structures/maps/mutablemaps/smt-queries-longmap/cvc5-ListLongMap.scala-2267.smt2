; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37072 () Bool)

(assert start!37072)

(declare-fun b_free!8191 () Bool)

(declare-fun b_next!8191 () Bool)

(assert (=> start!37072 (= b_free!8191 (not b_next!8191))))

(declare-fun tp!29289 () Bool)

(declare-fun b_and!15451 () Bool)

(assert (=> start!37072 (= tp!29289 b_and!15451)))

(declare-fun b!372569 () Bool)

(declare-fun res!209773 () Bool)

(declare-fun e!227223 () Bool)

(assert (=> b!372569 (=> (not res!209773) (not e!227223))))

(declare-datatypes ((array!21585 0))(
  ( (array!21586 (arr!10258 (Array (_ BitVec 32) (_ BitVec 64))) (size!10610 (_ BitVec 32))) )
))
(declare-fun lt!170892 () array!21585)

(declare-datatypes ((List!5773 0))(
  ( (Nil!5770) (Cons!5769 (h!6625 (_ BitVec 64)) (t!10931 List!5773)) )
))
(declare-fun arrayNoDuplicates!0 (array!21585 (_ BitVec 32) List!5773) Bool)

(assert (=> b!372569 (= res!209773 (arrayNoDuplicates!0 lt!170892 #b00000000000000000000000000000000 Nil!5770))))

(declare-fun b!372570 () Bool)

(declare-fun res!209770 () Bool)

(declare-fun e!227222 () Bool)

(assert (=> b!372570 (=> (not res!209770) (not e!227222))))

(declare-fun _keys!658 () array!21585)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21585 (_ BitVec 32)) Bool)

(assert (=> b!372570 (= res!209770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14823 () Bool)

(declare-fun mapRes!14823 () Bool)

(assert (=> mapIsEmpty!14823 mapRes!14823))

(declare-fun b!372571 () Bool)

(assert (=> b!372571 (= e!227223 (not true))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((V!12891 0))(
  ( (V!12892 (val!4464 Int)) )
))
(declare-fun zeroValue!472 () V!12891)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4076 0))(
  ( (ValueCellFull!4076 (v!6657 V!12891)) (EmptyCell!4076) )
))
(declare-datatypes ((array!21587 0))(
  ( (array!21588 (arr!10259 (Array (_ BitVec 32) ValueCell!4076)) (size!10611 (_ BitVec 32))) )
))
(declare-fun lt!170887 () array!21587)

(declare-datatypes ((tuple2!5898 0))(
  ( (tuple2!5899 (_1!2959 (_ BitVec 64)) (_2!2959 V!12891)) )
))
(declare-datatypes ((List!5774 0))(
  ( (Nil!5771) (Cons!5770 (h!6626 tuple2!5898) (t!10932 List!5774)) )
))
(declare-datatypes ((ListLongMap!4825 0))(
  ( (ListLongMap!4826 (toList!2428 List!5774)) )
))
(declare-fun lt!170893 () ListLongMap!4825)

(declare-fun minValue!472 () V!12891)

(declare-fun getCurrentListMap!1878 (array!21585 array!21587 (_ BitVec 32) (_ BitVec 32) V!12891 V!12891 (_ BitVec 32) Int) ListLongMap!4825)

(assert (=> b!372571 (= lt!170893 (getCurrentListMap!1878 lt!170892 lt!170887 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170891 () ListLongMap!4825)

(declare-fun lt!170889 () ListLongMap!4825)

(assert (=> b!372571 (and (= lt!170891 lt!170889) (= lt!170889 lt!170891))))

(declare-fun v!373 () V!12891)

(declare-fun lt!170888 () ListLongMap!4825)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!769 (ListLongMap!4825 tuple2!5898) ListLongMap!4825)

(assert (=> b!372571 (= lt!170889 (+!769 lt!170888 (tuple2!5899 k!778 v!373)))))

(declare-fun _values!506 () array!21587)

(declare-datatypes ((Unit!11443 0))(
  ( (Unit!11444) )
))
(declare-fun lt!170890 () Unit!11443)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!29 (array!21585 array!21587 (_ BitVec 32) (_ BitVec 32) V!12891 V!12891 (_ BitVec 32) (_ BitVec 64) V!12891 (_ BitVec 32) Int) Unit!11443)

(assert (=> b!372571 (= lt!170890 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!29 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!696 (array!21585 array!21587 (_ BitVec 32) (_ BitVec 32) V!12891 V!12891 (_ BitVec 32) Int) ListLongMap!4825)

(assert (=> b!372571 (= lt!170891 (getCurrentListMapNoExtraKeys!696 lt!170892 lt!170887 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372571 (= lt!170887 (array!21588 (store (arr!10259 _values!506) i!548 (ValueCellFull!4076 v!373)) (size!10611 _values!506)))))

(assert (=> b!372571 (= lt!170888 (getCurrentListMapNoExtraKeys!696 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372572 () Bool)

(declare-fun res!209767 () Bool)

(assert (=> b!372572 (=> (not res!209767) (not e!227222))))

(assert (=> b!372572 (= res!209767 (and (= (size!10611 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10610 _keys!658) (size!10611 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372573 () Bool)

(declare-fun e!227226 () Bool)

(declare-fun tp_is_empty!8839 () Bool)

(assert (=> b!372573 (= e!227226 tp_is_empty!8839)))

(declare-fun b!372574 () Bool)

(declare-fun res!209766 () Bool)

(assert (=> b!372574 (=> (not res!209766) (not e!227222))))

(assert (=> b!372574 (= res!209766 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5770))))

(declare-fun res!209765 () Bool)

(assert (=> start!37072 (=> (not res!209765) (not e!227222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37072 (= res!209765 (validMask!0 mask!970))))

(assert (=> start!37072 e!227222))

(declare-fun e!227221 () Bool)

(declare-fun array_inv!7576 (array!21587) Bool)

(assert (=> start!37072 (and (array_inv!7576 _values!506) e!227221)))

(assert (=> start!37072 tp!29289))

(assert (=> start!37072 true))

(assert (=> start!37072 tp_is_empty!8839))

(declare-fun array_inv!7577 (array!21585) Bool)

(assert (=> start!37072 (array_inv!7577 _keys!658)))

(declare-fun mapNonEmpty!14823 () Bool)

(declare-fun tp!29288 () Bool)

(declare-fun e!227225 () Bool)

(assert (=> mapNonEmpty!14823 (= mapRes!14823 (and tp!29288 e!227225))))

(declare-fun mapRest!14823 () (Array (_ BitVec 32) ValueCell!4076))

(declare-fun mapValue!14823 () ValueCell!4076)

(declare-fun mapKey!14823 () (_ BitVec 32))

(assert (=> mapNonEmpty!14823 (= (arr!10259 _values!506) (store mapRest!14823 mapKey!14823 mapValue!14823))))

(declare-fun b!372575 () Bool)

(declare-fun res!209771 () Bool)

(assert (=> b!372575 (=> (not res!209771) (not e!227222))))

(assert (=> b!372575 (= res!209771 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10610 _keys!658))))))

(declare-fun b!372576 () Bool)

(assert (=> b!372576 (= e!227225 tp_is_empty!8839)))

(declare-fun b!372577 () Bool)

(assert (=> b!372577 (= e!227221 (and e!227226 mapRes!14823))))

(declare-fun condMapEmpty!14823 () Bool)

(declare-fun mapDefault!14823 () ValueCell!4076)

