; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37190 () Bool)

(assert start!37190)

(declare-fun b_free!8309 () Bool)

(declare-fun b_next!8309 () Bool)

(assert (=> start!37190 (= b_free!8309 (not b_next!8309))))

(declare-fun tp!29643 () Bool)

(declare-fun b_and!15569 () Bool)

(assert (=> start!37190 (= tp!29643 b_and!15569)))

(declare-fun b!375192 () Bool)

(declare-fun e!228597 () Bool)

(declare-fun e!228598 () Bool)

(assert (=> b!375192 (= e!228597 (not e!228598))))

(declare-fun res!211862 () Bool)

(assert (=> b!375192 (=> res!211862 e!228598)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375192 (= res!211862 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13047 0))(
  ( (V!13048 (val!4523 Int)) )
))
(declare-datatypes ((ValueCell!4135 0))(
  ( (ValueCellFull!4135 (v!6716 V!13047)) (EmptyCell!4135) )
))
(declare-datatypes ((array!21813 0))(
  ( (array!21814 (arr!10372 (Array (_ BitVec 32) ValueCell!4135)) (size!10724 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21813)

(declare-datatypes ((tuple2!5992 0))(
  ( (tuple2!5993 (_1!3006 (_ BitVec 64)) (_2!3006 V!13047)) )
))
(declare-datatypes ((List!5863 0))(
  ( (Nil!5860) (Cons!5859 (h!6715 tuple2!5992) (t!11021 List!5863)) )
))
(declare-datatypes ((ListLongMap!4919 0))(
  ( (ListLongMap!4920 (toList!2475 List!5863)) )
))
(declare-fun lt!173653 () ListLongMap!4919)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13047)

(declare-datatypes ((array!21815 0))(
  ( (array!21816 (arr!10373 (Array (_ BitVec 32) (_ BitVec 64))) (size!10725 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21815)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13047)

(declare-fun getCurrentListMap!1917 (array!21815 array!21813 (_ BitVec 32) (_ BitVec 32) V!13047 V!13047 (_ BitVec 32) Int) ListLongMap!4919)

(assert (=> b!375192 (= lt!173653 (getCurrentListMap!1917 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173659 () array!21815)

(declare-fun lt!173646 () ListLongMap!4919)

(declare-fun lt!173655 () array!21813)

(assert (=> b!375192 (= lt!173646 (getCurrentListMap!1917 lt!173659 lt!173655 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173652 () ListLongMap!4919)

(declare-fun lt!173647 () ListLongMap!4919)

(assert (=> b!375192 (and (= lt!173652 lt!173647) (= lt!173647 lt!173652))))

(declare-fun lt!173648 () ListLongMap!4919)

(declare-fun lt!173650 () tuple2!5992)

(declare-fun +!816 (ListLongMap!4919 tuple2!5992) ListLongMap!4919)

(assert (=> b!375192 (= lt!173647 (+!816 lt!173648 lt!173650))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13047)

(assert (=> b!375192 (= lt!173650 (tuple2!5993 k!778 v!373))))

(declare-datatypes ((Unit!11535 0))(
  ( (Unit!11536) )
))
(declare-fun lt!173658 () Unit!11535)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!68 (array!21815 array!21813 (_ BitVec 32) (_ BitVec 32) V!13047 V!13047 (_ BitVec 32) (_ BitVec 64) V!13047 (_ BitVec 32) Int) Unit!11535)

(assert (=> b!375192 (= lt!173658 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!68 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!735 (array!21815 array!21813 (_ BitVec 32) (_ BitVec 32) V!13047 V!13047 (_ BitVec 32) Int) ListLongMap!4919)

(assert (=> b!375192 (= lt!173652 (getCurrentListMapNoExtraKeys!735 lt!173659 lt!173655 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375192 (= lt!173655 (array!21814 (store (arr!10372 _values!506) i!548 (ValueCellFull!4135 v!373)) (size!10724 _values!506)))))

(assert (=> b!375192 (= lt!173648 (getCurrentListMapNoExtraKeys!735 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375193 () Bool)

(declare-fun res!211868 () Bool)

(declare-fun e!228602 () Bool)

(assert (=> b!375193 (=> (not res!211868) (not e!228602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21815 (_ BitVec 32)) Bool)

(assert (=> b!375193 (= res!211868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375194 () Bool)

(declare-fun e!228600 () Bool)

(declare-fun tp_is_empty!8957 () Bool)

(assert (=> b!375194 (= e!228600 tp_is_empty!8957)))

(declare-fun b!375195 () Bool)

(declare-fun res!211865 () Bool)

(assert (=> b!375195 (=> (not res!211865) (not e!228602))))

(declare-datatypes ((List!5864 0))(
  ( (Nil!5861) (Cons!5860 (h!6716 (_ BitVec 64)) (t!11022 List!5864)) )
))
(declare-fun arrayNoDuplicates!0 (array!21815 (_ BitVec 32) List!5864) Bool)

(assert (=> b!375195 (= res!211865 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5861))))

(declare-fun b!375196 () Bool)

(declare-fun e!228599 () Bool)

(declare-fun e!228601 () Bool)

(declare-fun mapRes!15000 () Bool)

(assert (=> b!375196 (= e!228599 (and e!228601 mapRes!15000))))

(declare-fun condMapEmpty!15000 () Bool)

(declare-fun mapDefault!15000 () ValueCell!4135)

