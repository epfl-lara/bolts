; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37420 () Bool)

(assert start!37420)

(declare-fun b_free!8539 () Bool)

(declare-fun b_next!8539 () Bool)

(assert (=> start!37420 (= b_free!8539 (not b_next!8539))))

(declare-fun tp!30333 () Bool)

(declare-fun b_and!15799 () Bool)

(assert (=> start!37420 (= tp!30333 b_and!15799)))

(declare-fun res!216023 () Bool)

(declare-fun e!231360 () Bool)

(assert (=> start!37420 (=> (not res!216023) (not e!231360))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37420 (= res!216023 (validMask!0 mask!970))))

(assert (=> start!37420 e!231360))

(declare-datatypes ((V!13355 0))(
  ( (V!13356 (val!4638 Int)) )
))
(declare-datatypes ((ValueCell!4250 0))(
  ( (ValueCellFull!4250 (v!6831 V!13355)) (EmptyCell!4250) )
))
(declare-datatypes ((array!22271 0))(
  ( (array!22272 (arr!10601 (Array (_ BitVec 32) ValueCell!4250)) (size!10953 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22271)

(declare-fun e!231356 () Bool)

(declare-fun array_inv!7798 (array!22271) Bool)

(assert (=> start!37420 (and (array_inv!7798 _values!506) e!231356)))

(assert (=> start!37420 tp!30333))

(assert (=> start!37420 true))

(declare-fun tp_is_empty!9187 () Bool)

(assert (=> start!37420 tp_is_empty!9187))

(declare-datatypes ((array!22273 0))(
  ( (array!22274 (arr!10602 (Array (_ BitVec 32) (_ BitVec 64))) (size!10954 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22273)

(declare-fun array_inv!7799 (array!22273) Bool)

(assert (=> start!37420 (array_inv!7799 _keys!658)))

(declare-fun b!380385 () Bool)

(declare-fun e!231359 () Bool)

(assert (=> b!380385 (= e!231359 tp_is_empty!9187)))

(declare-fun b!380386 () Bool)

(declare-fun res!216026 () Bool)

(assert (=> b!380386 (=> (not res!216026) (not e!231360))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380386 (= res!216026 (or (= (select (arr!10602 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10602 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380387 () Bool)

(declare-fun e!231361 () Bool)

(assert (=> b!380387 (= e!231360 e!231361)))

(declare-fun res!216018 () Bool)

(assert (=> b!380387 (=> (not res!216018) (not e!231361))))

(declare-fun lt!178137 () array!22273)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22273 (_ BitVec 32)) Bool)

(assert (=> b!380387 (= res!216018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178137 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!380387 (= lt!178137 (array!22274 (store (arr!10602 _keys!658) i!548 k!778) (size!10954 _keys!658)))))

(declare-fun b!380388 () Bool)

(declare-fun res!216021 () Bool)

(assert (=> b!380388 (=> (not res!216021) (not e!231360))))

(assert (=> b!380388 (= res!216021 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10954 _keys!658))))))

(declare-fun b!380389 () Bool)

(declare-fun e!231362 () Bool)

(assert (=> b!380389 (= e!231361 (not e!231362))))

(declare-fun res!216020 () Bool)

(assert (=> b!380389 (=> res!216020 e!231362)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380389 (= res!216020 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13355)

(declare-datatypes ((tuple2!6182 0))(
  ( (tuple2!6183 (_1!3101 (_ BitVec 64)) (_2!3101 V!13355)) )
))
(declare-datatypes ((List!6052 0))(
  ( (Nil!6049) (Cons!6048 (h!6904 tuple2!6182) (t!11210 List!6052)) )
))
(declare-datatypes ((ListLongMap!5109 0))(
  ( (ListLongMap!5110 (toList!2570 List!6052)) )
))
(declare-fun lt!178142 () ListLongMap!5109)

(declare-fun minValue!472 () V!13355)

(declare-fun getCurrentListMap!1994 (array!22273 array!22271 (_ BitVec 32) (_ BitVec 32) V!13355 V!13355 (_ BitVec 32) Int) ListLongMap!5109)

(assert (=> b!380389 (= lt!178142 (getCurrentListMap!1994 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178136 () array!22271)

(declare-fun lt!178138 () ListLongMap!5109)

(assert (=> b!380389 (= lt!178138 (getCurrentListMap!1994 lt!178137 lt!178136 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178135 () ListLongMap!5109)

(declare-fun lt!178143 () ListLongMap!5109)

(assert (=> b!380389 (and (= lt!178135 lt!178143) (= lt!178143 lt!178135))))

(declare-fun lt!178141 () ListLongMap!5109)

(declare-fun lt!178147 () tuple2!6182)

(declare-fun +!911 (ListLongMap!5109 tuple2!6182) ListLongMap!5109)

(assert (=> b!380389 (= lt!178143 (+!911 lt!178141 lt!178147))))

(declare-fun v!373 () V!13355)

(assert (=> b!380389 (= lt!178147 (tuple2!6183 k!778 v!373))))

(declare-datatypes ((Unit!11717 0))(
  ( (Unit!11718) )
))
(declare-fun lt!178145 () Unit!11717)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!145 (array!22273 array!22271 (_ BitVec 32) (_ BitVec 32) V!13355 V!13355 (_ BitVec 32) (_ BitVec 64) V!13355 (_ BitVec 32) Int) Unit!11717)

(assert (=> b!380389 (= lt!178145 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!145 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!812 (array!22273 array!22271 (_ BitVec 32) (_ BitVec 32) V!13355 V!13355 (_ BitVec 32) Int) ListLongMap!5109)

(assert (=> b!380389 (= lt!178135 (getCurrentListMapNoExtraKeys!812 lt!178137 lt!178136 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380389 (= lt!178136 (array!22272 (store (arr!10601 _values!506) i!548 (ValueCellFull!4250 v!373)) (size!10953 _values!506)))))

(assert (=> b!380389 (= lt!178141 (getCurrentListMapNoExtraKeys!812 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!380390 () Bool)

(declare-fun res!216016 () Bool)

(assert (=> b!380390 (=> (not res!216016) (not e!231361))))

(declare-datatypes ((List!6053 0))(
  ( (Nil!6050) (Cons!6049 (h!6905 (_ BitVec 64)) (t!11211 List!6053)) )
))
(declare-fun arrayNoDuplicates!0 (array!22273 (_ BitVec 32) List!6053) Bool)

(assert (=> b!380390 (= res!216016 (arrayNoDuplicates!0 lt!178137 #b00000000000000000000000000000000 Nil!6050))))

(declare-fun mapNonEmpty!15345 () Bool)

(declare-fun mapRes!15345 () Bool)

(declare-fun tp!30332 () Bool)

(assert (=> mapNonEmpty!15345 (= mapRes!15345 (and tp!30332 e!231359))))

(declare-fun mapRest!15345 () (Array (_ BitVec 32) ValueCell!4250))

(declare-fun mapKey!15345 () (_ BitVec 32))

(declare-fun mapValue!15345 () ValueCell!4250)

(assert (=> mapNonEmpty!15345 (= (arr!10601 _values!506) (store mapRest!15345 mapKey!15345 mapValue!15345))))

(declare-fun b!380391 () Bool)

(declare-fun e!231357 () Bool)

(assert (=> b!380391 (= e!231357 true)))

(declare-fun lt!178140 () ListLongMap!5109)

(declare-fun lt!178146 () ListLongMap!5109)

(assert (=> b!380391 (= lt!178140 (+!911 lt!178146 lt!178147))))

(declare-fun lt!178139 () Unit!11717)

(declare-fun addCommutativeForDiffKeys!322 (ListLongMap!5109 (_ BitVec 64) V!13355 (_ BitVec 64) V!13355) Unit!11717)

(assert (=> b!380391 (= lt!178139 (addCommutativeForDiffKeys!322 lt!178141 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380392 () Bool)

(assert (=> b!380392 (= e!231362 e!231357)))

(declare-fun res!216025 () Bool)

(assert (=> b!380392 (=> res!216025 e!231357)))

(assert (=> b!380392 (= res!216025 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!380392 (= lt!178142 lt!178146)))

(declare-fun lt!178144 () tuple2!6182)

(assert (=> b!380392 (= lt!178146 (+!911 lt!178141 lt!178144))))

(assert (=> b!380392 (= lt!178138 lt!178140)))

(assert (=> b!380392 (= lt!178140 (+!911 lt!178143 lt!178144))))

(assert (=> b!380392 (= lt!178138 (+!911 lt!178135 lt!178144))))

(assert (=> b!380392 (= lt!178144 (tuple2!6183 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380393 () Bool)

(declare-fun e!231363 () Bool)

(assert (=> b!380393 (= e!231356 (and e!231363 mapRes!15345))))

(declare-fun condMapEmpty!15345 () Bool)

(declare-fun mapDefault!15345 () ValueCell!4250)

