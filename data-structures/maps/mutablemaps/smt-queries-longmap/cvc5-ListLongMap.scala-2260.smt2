; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37030 () Bool)

(assert start!37030)

(declare-fun b_free!8149 () Bool)

(declare-fun b_next!8149 () Bool)

(assert (=> start!37030 (= b_free!8149 (not b_next!8149))))

(declare-fun tp!29163 () Bool)

(declare-fun b_and!15409 () Bool)

(assert (=> start!37030 (= tp!29163 b_and!15409)))

(declare-fun b!371750 () Bool)

(declare-fun e!226843 () Bool)

(assert (=> b!371750 (= e!226843 (not true))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12835 0))(
  ( (V!12836 (val!4443 Int)) )
))
(declare-datatypes ((tuple2!5872 0))(
  ( (tuple2!5873 (_1!2946 (_ BitVec 64)) (_2!2946 V!12835)) )
))
(declare-datatypes ((List!5743 0))(
  ( (Nil!5740) (Cons!5739 (h!6595 tuple2!5872) (t!10901 List!5743)) )
))
(declare-datatypes ((ListLongMap!4799 0))(
  ( (ListLongMap!4800 (toList!2415 List!5743)) )
))
(declare-fun lt!170451 () ListLongMap!4799)

(declare-datatypes ((ValueCell!4055 0))(
  ( (ValueCellFull!4055 (v!6636 V!12835)) (EmptyCell!4055) )
))
(declare-datatypes ((array!21505 0))(
  ( (array!21506 (arr!10218 (Array (_ BitVec 32) ValueCell!4055)) (size!10570 (_ BitVec 32))) )
))
(declare-fun lt!170448 () array!21505)

(declare-fun zeroValue!472 () V!12835)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!21507 0))(
  ( (array!21508 (arr!10219 (Array (_ BitVec 32) (_ BitVec 64))) (size!10571 (_ BitVec 32))) )
))
(declare-fun lt!170450 () array!21507)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12835)

(declare-fun getCurrentListMap!1865 (array!21507 array!21505 (_ BitVec 32) (_ BitVec 32) V!12835 V!12835 (_ BitVec 32) Int) ListLongMap!4799)

(assert (=> b!371750 (= lt!170451 (getCurrentListMap!1865 lt!170450 lt!170448 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170446 () ListLongMap!4799)

(declare-fun lt!170452 () ListLongMap!4799)

(assert (=> b!371750 (and (= lt!170446 lt!170452) (= lt!170452 lt!170446))))

(declare-fun v!373 () V!12835)

(declare-fun lt!170449 () ListLongMap!4799)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!756 (ListLongMap!4799 tuple2!5872) ListLongMap!4799)

(assert (=> b!371750 (= lt!170452 (+!756 lt!170449 (tuple2!5873 k!778 v!373)))))

(declare-fun _values!506 () array!21505)

(declare-datatypes ((Unit!11417 0))(
  ( (Unit!11418) )
))
(declare-fun lt!170447 () Unit!11417)

(declare-fun _keys!658 () array!21507)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!16 (array!21507 array!21505 (_ BitVec 32) (_ BitVec 32) V!12835 V!12835 (_ BitVec 32) (_ BitVec 64) V!12835 (_ BitVec 32) Int) Unit!11417)

(assert (=> b!371750 (= lt!170447 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!16 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!683 (array!21507 array!21505 (_ BitVec 32) (_ BitVec 32) V!12835 V!12835 (_ BitVec 32) Int) ListLongMap!4799)

(assert (=> b!371750 (= lt!170446 (getCurrentListMapNoExtraKeys!683 lt!170450 lt!170448 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371750 (= lt!170448 (array!21506 (store (arr!10218 _values!506) i!548 (ValueCellFull!4055 v!373)) (size!10570 _values!506)))))

(assert (=> b!371750 (= lt!170449 (getCurrentListMapNoExtraKeys!683 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371751 () Bool)

(declare-fun e!226848 () Bool)

(declare-fun tp_is_empty!8797 () Bool)

(assert (=> b!371751 (= e!226848 tp_is_empty!8797)))

(declare-fun b!371752 () Bool)

(declare-fun res!209140 () Bool)

(declare-fun e!226845 () Bool)

(assert (=> b!371752 (=> (not res!209140) (not e!226845))))

(assert (=> b!371752 (= res!209140 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10571 _keys!658))))))

(declare-fun b!371753 () Bool)

(declare-fun res!209135 () Bool)

(assert (=> b!371753 (=> (not res!209135) (not e!226845))))

(assert (=> b!371753 (= res!209135 (and (= (size!10570 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10571 _keys!658) (size!10570 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371754 () Bool)

(declare-fun res!209142 () Bool)

(assert (=> b!371754 (=> (not res!209142) (not e!226843))))

(declare-datatypes ((List!5744 0))(
  ( (Nil!5741) (Cons!5740 (h!6596 (_ BitVec 64)) (t!10902 List!5744)) )
))
(declare-fun arrayNoDuplicates!0 (array!21507 (_ BitVec 32) List!5744) Bool)

(assert (=> b!371754 (= res!209142 (arrayNoDuplicates!0 lt!170450 #b00000000000000000000000000000000 Nil!5741))))

(declare-fun mapIsEmpty!14760 () Bool)

(declare-fun mapRes!14760 () Bool)

(assert (=> mapIsEmpty!14760 mapRes!14760))

(declare-fun b!371755 () Bool)

(declare-fun e!226844 () Bool)

(declare-fun e!226847 () Bool)

(assert (=> b!371755 (= e!226844 (and e!226847 mapRes!14760))))

(declare-fun condMapEmpty!14760 () Bool)

(declare-fun mapDefault!14760 () ValueCell!4055)

