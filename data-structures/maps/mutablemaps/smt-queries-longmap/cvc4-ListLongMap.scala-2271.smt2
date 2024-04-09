; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37100 () Bool)

(assert start!37100)

(declare-fun b_free!8219 () Bool)

(declare-fun b_next!8219 () Bool)

(assert (=> start!37100 (= b_free!8219 (not b_next!8219))))

(declare-fun tp!29372 () Bool)

(declare-fun b_and!15479 () Bool)

(assert (=> start!37100 (= tp!29372 b_and!15479)))

(declare-fun b!373167 () Bool)

(declare-fun res!210241 () Bool)

(declare-fun e!227520 () Bool)

(assert (=> b!373167 (=> (not res!210241) (not e!227520))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21641 0))(
  ( (array!21642 (arr!10286 (Array (_ BitVec 32) (_ BitVec 64))) (size!10638 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21641)

(assert (=> b!373167 (= res!210241 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10638 _keys!658))))))

(declare-fun b!373168 () Bool)

(declare-fun e!227522 () Bool)

(assert (=> b!373168 (= e!227522 true)))

(declare-datatypes ((V!12927 0))(
  ( (V!12928 (val!4478 Int)) )
))
(declare-datatypes ((tuple2!5920 0))(
  ( (tuple2!5921 (_1!2970 (_ BitVec 64)) (_2!2970 V!12927)) )
))
(declare-datatypes ((List!5796 0))(
  ( (Nil!5793) (Cons!5792 (h!6648 tuple2!5920) (t!10954 List!5796)) )
))
(declare-datatypes ((ListLongMap!4847 0))(
  ( (ListLongMap!4848 (toList!2439 List!5796)) )
))
(declare-fun lt!171356 () ListLongMap!4847)

(declare-fun lt!171352 () tuple2!5920)

(declare-fun lt!171363 () ListLongMap!4847)

(declare-fun lt!171355 () tuple2!5920)

(declare-fun +!780 (ListLongMap!4847 tuple2!5920) ListLongMap!4847)

(assert (=> b!373168 (= (+!780 lt!171363 lt!171352) (+!780 lt!171356 lt!171355))))

(declare-fun v!373 () V!12927)

(declare-datatypes ((Unit!11463 0))(
  ( (Unit!11464) )
))
(declare-fun lt!171362 () Unit!11463)

(declare-fun lt!171366 () ListLongMap!4847)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!12927)

(declare-fun addCommutativeForDiffKeys!210 (ListLongMap!4847 (_ BitVec 64) V!12927 (_ BitVec 64) V!12927) Unit!11463)

(assert (=> b!373168 (= lt!171362 (addCommutativeForDiffKeys!210 lt!171366 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373169 () Bool)

(declare-fun res!210244 () Bool)

(declare-fun e!227519 () Bool)

(assert (=> b!373169 (=> (not res!210244) (not e!227519))))

(declare-fun lt!171354 () array!21641)

(declare-datatypes ((List!5797 0))(
  ( (Nil!5794) (Cons!5793 (h!6649 (_ BitVec 64)) (t!10955 List!5797)) )
))
(declare-fun arrayNoDuplicates!0 (array!21641 (_ BitVec 32) List!5797) Bool)

(assert (=> b!373169 (= res!210244 (arrayNoDuplicates!0 lt!171354 #b00000000000000000000000000000000 Nil!5794))))

(declare-fun b!373170 () Bool)

(declare-fun e!227517 () Bool)

(declare-fun tp_is_empty!8867 () Bool)

(assert (=> b!373170 (= e!227517 tp_is_empty!8867)))

(declare-fun b!373171 () Bool)

(declare-fun res!210247 () Bool)

(assert (=> b!373171 (=> (not res!210247) (not e!227520))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21641 (_ BitVec 32)) Bool)

(assert (=> b!373171 (= res!210247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373172 () Bool)

(declare-fun e!227516 () Bool)

(assert (=> b!373172 (= e!227516 tp_is_empty!8867)))

(declare-fun mapIsEmpty!14865 () Bool)

(declare-fun mapRes!14865 () Bool)

(assert (=> mapIsEmpty!14865 mapRes!14865))

(declare-fun b!373173 () Bool)

(assert (=> b!373173 (= e!227520 e!227519)))

(declare-fun res!210242 () Bool)

(assert (=> b!373173 (=> (not res!210242) (not e!227519))))

(assert (=> b!373173 (= res!210242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171354 mask!970))))

(assert (=> b!373173 (= lt!171354 (array!21642 (store (arr!10286 _keys!658) i!548 k!778) (size!10638 _keys!658)))))

(declare-fun b!373174 () Bool)

(declare-fun e!227521 () Bool)

(assert (=> b!373174 (= e!227519 (not e!227521))))

(declare-fun res!210248 () Bool)

(assert (=> b!373174 (=> res!210248 e!227521)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373174 (= res!210248 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4090 0))(
  ( (ValueCellFull!4090 (v!6671 V!12927)) (EmptyCell!4090) )
))
(declare-datatypes ((array!21643 0))(
  ( (array!21644 (arr!10287 (Array (_ BitVec 32) ValueCell!4090)) (size!10639 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21643)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!171357 () ListLongMap!4847)

(declare-fun zeroValue!472 () V!12927)

(declare-fun getCurrentListMap!1888 (array!21641 array!21643 (_ BitVec 32) (_ BitVec 32) V!12927 V!12927 (_ BitVec 32) Int) ListLongMap!4847)

(assert (=> b!373174 (= lt!171357 (getCurrentListMap!1888 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171365 () ListLongMap!4847)

(declare-fun lt!171361 () array!21643)

(assert (=> b!373174 (= lt!171365 (getCurrentListMap!1888 lt!171354 lt!171361 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171358 () ListLongMap!4847)

(declare-fun lt!171359 () ListLongMap!4847)

(assert (=> b!373174 (and (= lt!171358 lt!171359) (= lt!171359 lt!171358))))

(declare-fun lt!171364 () ListLongMap!4847)

(assert (=> b!373174 (= lt!171359 (+!780 lt!171364 lt!171355))))

(assert (=> b!373174 (= lt!171355 (tuple2!5921 k!778 v!373))))

(declare-fun lt!171360 () Unit!11463)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!39 (array!21641 array!21643 (_ BitVec 32) (_ BitVec 32) V!12927 V!12927 (_ BitVec 32) (_ BitVec 64) V!12927 (_ BitVec 32) Int) Unit!11463)

(assert (=> b!373174 (= lt!171360 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!39 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!706 (array!21641 array!21643 (_ BitVec 32) (_ BitVec 32) V!12927 V!12927 (_ BitVec 32) Int) ListLongMap!4847)

(assert (=> b!373174 (= lt!171358 (getCurrentListMapNoExtraKeys!706 lt!171354 lt!171361 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373174 (= lt!171361 (array!21644 (store (arr!10287 _values!506) i!548 (ValueCellFull!4090 v!373)) (size!10639 _values!506)))))

(assert (=> b!373174 (= lt!171364 (getCurrentListMapNoExtraKeys!706 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373175 () Bool)

(declare-fun e!227518 () Bool)

(assert (=> b!373175 (= e!227518 (and e!227516 mapRes!14865))))

(declare-fun condMapEmpty!14865 () Bool)

(declare-fun mapDefault!14865 () ValueCell!4090)

