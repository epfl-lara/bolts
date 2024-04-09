; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37022 () Bool)

(assert start!37022)

(declare-fun b_free!8141 () Bool)

(declare-fun b_next!8141 () Bool)

(assert (=> start!37022 (= b_free!8141 (not b_next!8141))))

(declare-fun tp!29139 () Bool)

(declare-fun b_and!15401 () Bool)

(assert (=> start!37022 (= tp!29139 b_and!15401)))

(declare-fun b!371594 () Bool)

(declare-fun res!209023 () Bool)

(declare-fun e!226774 () Bool)

(assert (=> b!371594 (=> (not res!209023) (not e!226774))))

(declare-datatypes ((array!21489 0))(
  ( (array!21490 (arr!10210 (Array (_ BitVec 32) (_ BitVec 64))) (size!10562 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21489)

(declare-datatypes ((List!5736 0))(
  ( (Nil!5733) (Cons!5732 (h!6588 (_ BitVec 64)) (t!10894 List!5736)) )
))
(declare-fun arrayNoDuplicates!0 (array!21489 (_ BitVec 32) List!5736) Bool)

(assert (=> b!371594 (= res!209023 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5733))))

(declare-fun mapIsEmpty!14748 () Bool)

(declare-fun mapRes!14748 () Bool)

(assert (=> mapIsEmpty!14748 mapRes!14748))

(declare-fun res!209015 () Bool)

(assert (=> start!37022 (=> (not res!209015) (not e!226774))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37022 (= res!209015 (validMask!0 mask!970))))

(assert (=> start!37022 e!226774))

(declare-datatypes ((V!12823 0))(
  ( (V!12824 (val!4439 Int)) )
))
(declare-datatypes ((ValueCell!4051 0))(
  ( (ValueCellFull!4051 (v!6632 V!12823)) (EmptyCell!4051) )
))
(declare-datatypes ((array!21491 0))(
  ( (array!21492 (arr!10211 (Array (_ BitVec 32) ValueCell!4051)) (size!10563 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21491)

(declare-fun e!226773 () Bool)

(declare-fun array_inv!7540 (array!21491) Bool)

(assert (=> start!37022 (and (array_inv!7540 _values!506) e!226773)))

(assert (=> start!37022 tp!29139))

(assert (=> start!37022 true))

(declare-fun tp_is_empty!8789 () Bool)

(assert (=> start!37022 tp_is_empty!8789))

(declare-fun array_inv!7541 (array!21489) Bool)

(assert (=> start!37022 (array_inv!7541 _keys!658)))

(declare-fun b!371595 () Bool)

(declare-fun e!226772 () Bool)

(assert (=> b!371595 (= e!226772 tp_is_empty!8789)))

(declare-fun b!371596 () Bool)

(declare-fun res!209019 () Bool)

(assert (=> b!371596 (=> (not res!209019) (not e!226774))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!371596 (= res!209019 (and (= (size!10563 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10562 _keys!658) (size!10563 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371597 () Bool)

(declare-fun res!209022 () Bool)

(assert (=> b!371597 (=> (not res!209022) (not e!226774))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371597 (= res!209022 (or (= (select (arr!10210 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10210 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371598 () Bool)

(declare-fun res!209024 () Bool)

(assert (=> b!371598 (=> (not res!209024) (not e!226774))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371598 (= res!209024 (validKeyInArray!0 k!778))))

(declare-fun b!371599 () Bool)

(declare-fun res!209020 () Bool)

(declare-fun e!226775 () Bool)

(assert (=> b!371599 (=> (not res!209020) (not e!226775))))

(declare-fun lt!170385 () array!21489)

(assert (=> b!371599 (= res!209020 (arrayNoDuplicates!0 lt!170385 #b00000000000000000000000000000000 Nil!5733))))

(declare-fun b!371600 () Bool)

(assert (=> b!371600 (= e!226775 (not true))))

(declare-datatypes ((tuple2!5864 0))(
  ( (tuple2!5865 (_1!2942 (_ BitVec 64)) (_2!2942 V!12823)) )
))
(declare-datatypes ((List!5737 0))(
  ( (Nil!5734) (Cons!5733 (h!6589 tuple2!5864) (t!10895 List!5737)) )
))
(declare-datatypes ((ListLongMap!4791 0))(
  ( (ListLongMap!4792 (toList!2411 List!5737)) )
))
(declare-fun lt!170383 () ListLongMap!4791)

(declare-fun lt!170384 () ListLongMap!4791)

(assert (=> b!371600 (and (= lt!170383 lt!170384) (= lt!170384 lt!170383))))

(declare-fun lt!170386 () ListLongMap!4791)

(declare-fun v!373 () V!12823)

(declare-fun +!752 (ListLongMap!4791 tuple2!5864) ListLongMap!4791)

(assert (=> b!371600 (= lt!170384 (+!752 lt!170386 (tuple2!5865 k!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12823)

(declare-datatypes ((Unit!11409 0))(
  ( (Unit!11410) )
))
(declare-fun lt!170382 () Unit!11409)

(declare-fun minValue!472 () V!12823)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!12 (array!21489 array!21491 (_ BitVec 32) (_ BitVec 32) V!12823 V!12823 (_ BitVec 32) (_ BitVec 64) V!12823 (_ BitVec 32) Int) Unit!11409)

(assert (=> b!371600 (= lt!170382 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!12 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!679 (array!21489 array!21491 (_ BitVec 32) (_ BitVec 32) V!12823 V!12823 (_ BitVec 32) Int) ListLongMap!4791)

(assert (=> b!371600 (= lt!170383 (getCurrentListMapNoExtraKeys!679 lt!170385 (array!21492 (store (arr!10211 _values!506) i!548 (ValueCellFull!4051 v!373)) (size!10563 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371600 (= lt!170386 (getCurrentListMapNoExtraKeys!679 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371601 () Bool)

(assert (=> b!371601 (= e!226773 (and e!226772 mapRes!14748))))

(declare-fun condMapEmpty!14748 () Bool)

(declare-fun mapDefault!14748 () ValueCell!4051)

