; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36890 () Bool)

(assert start!36890)

(declare-fun b_free!8009 () Bool)

(declare-fun b_next!8009 () Bool)

(assert (=> start!36890 (= b_free!8009 (not b_next!8009))))

(declare-fun tp!28742 () Bool)

(declare-fun b_and!15269 () Bool)

(assert (=> start!36890 (= tp!28742 b_and!15269)))

(declare-fun b!369020 () Bool)

(declare-fun res!207035 () Bool)

(declare-fun e!225584 () Bool)

(assert (=> b!369020 (=> (not res!207035) (not e!225584))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369020 (= res!207035 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!14550 () Bool)

(declare-fun mapRes!14550 () Bool)

(assert (=> mapIsEmpty!14550 mapRes!14550))

(declare-fun b!369021 () Bool)

(declare-fun e!225587 () Bool)

(declare-fun tp_is_empty!8657 () Bool)

(assert (=> b!369021 (= e!225587 tp_is_empty!8657)))

(declare-fun b!369022 () Bool)

(declare-fun res!207038 () Bool)

(declare-fun e!225588 () Bool)

(assert (=> b!369022 (=> (not res!207038) (not e!225588))))

(declare-datatypes ((array!21237 0))(
  ( (array!21238 (arr!10084 (Array (_ BitVec 32) (_ BitVec 64))) (size!10436 (_ BitVec 32))) )
))
(declare-fun lt!169647 () array!21237)

(declare-datatypes ((List!5651 0))(
  ( (Nil!5648) (Cons!5647 (h!6503 (_ BitVec 64)) (t!10809 List!5651)) )
))
(declare-fun arrayNoDuplicates!0 (array!21237 (_ BitVec 32) List!5651) Bool)

(assert (=> b!369022 (= res!207038 (arrayNoDuplicates!0 lt!169647 #b00000000000000000000000000000000 Nil!5648))))

(declare-fun b!369023 () Bool)

(declare-fun res!207044 () Bool)

(assert (=> b!369023 (=> (not res!207044) (not e!225584))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!21237)

(assert (=> b!369023 (= res!207044 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10436 _keys!658))))))

(declare-fun b!369024 () Bool)

(declare-fun res!207039 () Bool)

(assert (=> b!369024 (=> (not res!207039) (not e!225584))))

(assert (=> b!369024 (= res!207039 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5648))))

(declare-fun b!369025 () Bool)

(declare-fun res!207041 () Bool)

(assert (=> b!369025 (=> (not res!207041) (not e!225584))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21237 (_ BitVec 32)) Bool)

(assert (=> b!369025 (= res!207041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!207043 () Bool)

(assert (=> start!36890 (=> (not res!207043) (not e!225584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36890 (= res!207043 (validMask!0 mask!970))))

(assert (=> start!36890 e!225584))

(declare-datatypes ((V!12647 0))(
  ( (V!12648 (val!4373 Int)) )
))
(declare-datatypes ((ValueCell!3985 0))(
  ( (ValueCellFull!3985 (v!6566 V!12647)) (EmptyCell!3985) )
))
(declare-datatypes ((array!21239 0))(
  ( (array!21240 (arr!10085 (Array (_ BitVec 32) ValueCell!3985)) (size!10437 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21239)

(declare-fun e!225586 () Bool)

(declare-fun array_inv!7450 (array!21239) Bool)

(assert (=> start!36890 (and (array_inv!7450 _values!506) e!225586)))

(assert (=> start!36890 tp!28742))

(assert (=> start!36890 true))

(assert (=> start!36890 tp_is_empty!8657))

(declare-fun array_inv!7451 (array!21237) Bool)

(assert (=> start!36890 (array_inv!7451 _keys!658)))

(declare-fun b!369026 () Bool)

(assert (=> b!369026 (= e!225588 false)))

(declare-datatypes ((tuple2!5792 0))(
  ( (tuple2!5793 (_1!2906 (_ BitVec 64)) (_2!2906 V!12647)) )
))
(declare-datatypes ((List!5652 0))(
  ( (Nil!5649) (Cons!5648 (h!6504 tuple2!5792) (t!10810 List!5652)) )
))
(declare-datatypes ((ListLongMap!4719 0))(
  ( (ListLongMap!4720 (toList!2375 List!5652)) )
))
(declare-fun lt!169648 () ListLongMap!4719)

(declare-fun zeroValue!472 () V!12647)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12647)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!12647)

(declare-fun getCurrentListMapNoExtraKeys!643 (array!21237 array!21239 (_ BitVec 32) (_ BitVec 32) V!12647 V!12647 (_ BitVec 32) Int) ListLongMap!4719)

(assert (=> b!369026 (= lt!169648 (getCurrentListMapNoExtraKeys!643 lt!169647 (array!21240 (store (arr!10085 _values!506) i!548 (ValueCellFull!3985 v!373)) (size!10437 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169646 () ListLongMap!4719)

(assert (=> b!369026 (= lt!169646 (getCurrentListMapNoExtraKeys!643 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369027 () Bool)

(declare-fun res!207040 () Bool)

(assert (=> b!369027 (=> (not res!207040) (not e!225584))))

(assert (=> b!369027 (= res!207040 (and (= (size!10437 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10436 _keys!658) (size!10437 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369028 () Bool)

(assert (=> b!369028 (= e!225586 (and e!225587 mapRes!14550))))

(declare-fun condMapEmpty!14550 () Bool)

(declare-fun mapDefault!14550 () ValueCell!3985)

