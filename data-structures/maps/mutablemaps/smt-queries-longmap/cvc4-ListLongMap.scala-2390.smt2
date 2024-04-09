; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37814 () Bool)

(assert start!37814)

(declare-fun b_free!8909 () Bool)

(declare-fun b_next!8909 () Bool)

(assert (=> start!37814 (= b_free!8909 (not b_next!8909))))

(declare-fun tp!31478 () Bool)

(declare-fun b_and!16169 () Bool)

(assert (=> start!37814 (= tp!31478 b_and!16169)))

(declare-fun mapIsEmpty!15936 () Bool)

(declare-fun mapRes!15936 () Bool)

(assert (=> mapIsEmpty!15936 mapRes!15936))

(declare-fun b!388243 () Bool)

(declare-fun e!235253 () Bool)

(declare-fun e!235252 () Bool)

(assert (=> b!388243 (= e!235253 (not e!235252))))

(declare-fun res!222106 () Bool)

(assert (=> b!388243 (=> res!222106 e!235252)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!388243 (= res!222106 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13879 0))(
  ( (V!13880 (val!4835 Int)) )
))
(declare-datatypes ((ValueCell!4447 0))(
  ( (ValueCellFull!4447 (v!7028 V!13879)) (EmptyCell!4447) )
))
(declare-datatypes ((array!23029 0))(
  ( (array!23030 (arr!10980 (Array (_ BitVec 32) ValueCell!4447)) (size!11332 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23029)

(declare-datatypes ((tuple2!6442 0))(
  ( (tuple2!6443 (_1!3231 (_ BitVec 64)) (_2!3231 V!13879)) )
))
(declare-datatypes ((List!6326 0))(
  ( (Nil!6323) (Cons!6322 (h!7178 tuple2!6442) (t!11484 List!6326)) )
))
(declare-datatypes ((ListLongMap!5369 0))(
  ( (ListLongMap!5370 (toList!2700 List!6326)) )
))
(declare-fun lt!182327 () ListLongMap!5369)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13879)

(declare-datatypes ((array!23031 0))(
  ( (array!23032 (arr!10981 (Array (_ BitVec 32) (_ BitVec 64))) (size!11333 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23031)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13879)

(declare-fun getCurrentListMap!2072 (array!23031 array!23029 (_ BitVec 32) (_ BitVec 32) V!13879 V!13879 (_ BitVec 32) Int) ListLongMap!5369)

(assert (=> b!388243 (= lt!182327 (getCurrentListMap!2072 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182329 () ListLongMap!5369)

(declare-fun lt!182324 () array!23031)

(declare-fun lt!182328 () array!23029)

(assert (=> b!388243 (= lt!182329 (getCurrentListMap!2072 lt!182324 lt!182328 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182322 () ListLongMap!5369)

(declare-fun lt!182325 () ListLongMap!5369)

(assert (=> b!388243 (and (= lt!182322 lt!182325) (= lt!182325 lt!182322))))

(declare-fun v!373 () V!13879)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!182323 () ListLongMap!5369)

(declare-fun +!998 (ListLongMap!5369 tuple2!6442) ListLongMap!5369)

(assert (=> b!388243 (= lt!182325 (+!998 lt!182323 (tuple2!6443 k!778 v!373)))))

(declare-datatypes ((Unit!11885 0))(
  ( (Unit!11886) )
))
(declare-fun lt!182326 () Unit!11885)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!229 (array!23031 array!23029 (_ BitVec 32) (_ BitVec 32) V!13879 V!13879 (_ BitVec 32) (_ BitVec 64) V!13879 (_ BitVec 32) Int) Unit!11885)

(assert (=> b!388243 (= lt!182326 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!229 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!934 (array!23031 array!23029 (_ BitVec 32) (_ BitVec 32) V!13879 V!13879 (_ BitVec 32) Int) ListLongMap!5369)

(assert (=> b!388243 (= lt!182322 (getCurrentListMapNoExtraKeys!934 lt!182324 lt!182328 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388243 (= lt!182328 (array!23030 (store (arr!10980 _values!506) i!548 (ValueCellFull!4447 v!373)) (size!11332 _values!506)))))

(assert (=> b!388243 (= lt!182323 (getCurrentListMapNoExtraKeys!934 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388244 () Bool)

(declare-fun res!222105 () Bool)

(declare-fun e!235250 () Bool)

(assert (=> b!388244 (=> (not res!222105) (not e!235250))))

(declare-fun arrayContainsKey!0 (array!23031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388244 (= res!222105 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!388245 () Bool)

(declare-fun e!235254 () Bool)

(declare-fun tp_is_empty!9581 () Bool)

(assert (=> b!388245 (= e!235254 tp_is_empty!9581)))

(declare-fun b!388246 () Bool)

(declare-fun res!222100 () Bool)

(assert (=> b!388246 (=> (not res!222100) (not e!235250))))

(declare-datatypes ((List!6327 0))(
  ( (Nil!6324) (Cons!6323 (h!7179 (_ BitVec 64)) (t!11485 List!6327)) )
))
(declare-fun arrayNoDuplicates!0 (array!23031 (_ BitVec 32) List!6327) Bool)

(assert (=> b!388246 (= res!222100 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6324))))

(declare-fun b!388247 () Bool)

(declare-fun res!222101 () Bool)

(assert (=> b!388247 (=> (not res!222101) (not e!235250))))

(assert (=> b!388247 (= res!222101 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11333 _keys!658))))))

(declare-fun res!222110 () Bool)

(assert (=> start!37814 (=> (not res!222110) (not e!235250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37814 (= res!222110 (validMask!0 mask!970))))

(assert (=> start!37814 e!235250))

(declare-fun e!235249 () Bool)

(declare-fun array_inv!8048 (array!23029) Bool)

(assert (=> start!37814 (and (array_inv!8048 _values!506) e!235249)))

(assert (=> start!37814 tp!31478))

(assert (=> start!37814 true))

(assert (=> start!37814 tp_is_empty!9581))

(declare-fun array_inv!8049 (array!23031) Bool)

(assert (=> start!37814 (array_inv!8049 _keys!658)))

(declare-fun b!388248 () Bool)

(assert (=> b!388248 (= e!235250 e!235253)))

(declare-fun res!222103 () Bool)

(assert (=> b!388248 (=> (not res!222103) (not e!235253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23031 (_ BitVec 32)) Bool)

(assert (=> b!388248 (= res!222103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182324 mask!970))))

(assert (=> b!388248 (= lt!182324 (array!23032 (store (arr!10981 _keys!658) i!548 k!778) (size!11333 _keys!658)))))

(declare-fun b!388249 () Bool)

(declare-fun e!235251 () Bool)

(assert (=> b!388249 (= e!235251 tp_is_empty!9581)))

(declare-fun b!388250 () Bool)

(declare-fun res!222102 () Bool)

(assert (=> b!388250 (=> (not res!222102) (not e!235250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388250 (= res!222102 (validKeyInArray!0 k!778))))

(declare-fun b!388251 () Bool)

(declare-fun res!222109 () Bool)

(assert (=> b!388251 (=> (not res!222109) (not e!235250))))

(assert (=> b!388251 (= res!222109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!388252 () Bool)

(declare-fun res!222107 () Bool)

(assert (=> b!388252 (=> (not res!222107) (not e!235250))))

(assert (=> b!388252 (= res!222107 (and (= (size!11332 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11333 _keys!658) (size!11332 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!388253 () Bool)

(assert (=> b!388253 (= e!235249 (and e!235251 mapRes!15936))))

(declare-fun condMapEmpty!15936 () Bool)

(declare-fun mapDefault!15936 () ValueCell!4447)

