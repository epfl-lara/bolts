; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38168 () Bool)

(assert start!38168)

(declare-fun b_free!9041 () Bool)

(declare-fun b_next!9041 () Bool)

(assert (=> start!38168 (= b_free!9041 (not b_next!9041))))

(declare-fun tp!31904 () Bool)

(declare-fun b_and!16421 () Bool)

(assert (=> start!38168 (= tp!31904 b_and!16421)))

(declare-fun b!393223 () Bool)

(declare-fun e!238083 () Bool)

(declare-fun tp_is_empty!9713 () Bool)

(assert (=> b!393223 (= e!238083 tp_is_empty!9713)))

(declare-fun b!393224 () Bool)

(declare-fun e!238086 () Bool)

(declare-fun e!238087 () Bool)

(assert (=> b!393224 (= e!238086 e!238087)))

(declare-fun res!225370 () Bool)

(assert (=> b!393224 (=> (not res!225370) (not e!238087))))

(declare-datatypes ((array!23307 0))(
  ( (array!23308 (arr!11109 (Array (_ BitVec 32) (_ BitVec 64))) (size!11461 (_ BitVec 32))) )
))
(declare-fun lt!186157 () array!23307)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23307 (_ BitVec 32)) Bool)

(assert (=> b!393224 (= res!225370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186157 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!23307)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393224 (= lt!186157 (array!23308 (store (arr!11109 _keys!658) i!548 k!778) (size!11461 _keys!658)))))

(declare-fun lt!186158 () Bool)

(declare-datatypes ((V!14055 0))(
  ( (V!14056 (val!4901 Int)) )
))
(declare-datatypes ((tuple2!6548 0))(
  ( (tuple2!6549 (_1!3284 (_ BitVec 64)) (_2!3284 V!14055)) )
))
(declare-datatypes ((List!6430 0))(
  ( (Nil!6427) (Cons!6426 (h!7282 tuple2!6548) (t!11608 List!6430)) )
))
(declare-datatypes ((ListLongMap!5475 0))(
  ( (ListLongMap!5476 (toList!2753 List!6430)) )
))
(declare-fun lt!186152 () ListLongMap!5475)

(declare-fun b!393225 () Bool)

(declare-fun lt!186150 () ListLongMap!5475)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!393225 (= e!238087 (not (or (and (not lt!186158) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186158) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186158) (= lt!186150 lt!186152))))))

(assert (=> b!393225 (= lt!186158 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!186154 () ListLongMap!5475)

(declare-datatypes ((ValueCell!4513 0))(
  ( (ValueCellFull!4513 (v!7134 V!14055)) (EmptyCell!4513) )
))
(declare-datatypes ((array!23309 0))(
  ( (array!23310 (arr!11110 (Array (_ BitVec 32) ValueCell!4513)) (size!11462 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23309)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14055)

(declare-fun minValue!472 () V!14055)

(declare-fun getCurrentListMap!2113 (array!23307 array!23309 (_ BitVec 32) (_ BitVec 32) V!14055 V!14055 (_ BitVec 32) Int) ListLongMap!5475)

(assert (=> b!393225 (= lt!186154 (getCurrentListMap!2113 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186156 () array!23309)

(assert (=> b!393225 (= lt!186150 (getCurrentListMap!2113 lt!186157 lt!186156 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186155 () ListLongMap!5475)

(assert (=> b!393225 (and (= lt!186152 lt!186155) (= lt!186155 lt!186152))))

(declare-fun v!373 () V!14055)

(declare-fun lt!186151 () ListLongMap!5475)

(declare-fun +!1051 (ListLongMap!5475 tuple2!6548) ListLongMap!5475)

(assert (=> b!393225 (= lt!186155 (+!1051 lt!186151 (tuple2!6549 k!778 v!373)))))

(declare-datatypes ((Unit!11997 0))(
  ( (Unit!11998) )
))
(declare-fun lt!186153 () Unit!11997)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!270 (array!23307 array!23309 (_ BitVec 32) (_ BitVec 32) V!14055 V!14055 (_ BitVec 32) (_ BitVec 64) V!14055 (_ BitVec 32) Int) Unit!11997)

(assert (=> b!393225 (= lt!186153 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!270 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!975 (array!23307 array!23309 (_ BitVec 32) (_ BitVec 32) V!14055 V!14055 (_ BitVec 32) Int) ListLongMap!5475)

(assert (=> b!393225 (= lt!186152 (getCurrentListMapNoExtraKeys!975 lt!186157 lt!186156 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393225 (= lt!186156 (array!23310 (store (arr!11110 _values!506) i!548 (ValueCellFull!4513 v!373)) (size!11462 _values!506)))))

(assert (=> b!393225 (= lt!186151 (getCurrentListMapNoExtraKeys!975 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393226 () Bool)

(declare-fun e!238088 () Bool)

(assert (=> b!393226 (= e!238088 tp_is_empty!9713)))

(declare-fun b!393227 () Bool)

(declare-fun res!225368 () Bool)

(assert (=> b!393227 (=> (not res!225368) (not e!238086))))

(declare-datatypes ((List!6431 0))(
  ( (Nil!6428) (Cons!6427 (h!7283 (_ BitVec 64)) (t!11609 List!6431)) )
))
(declare-fun arrayNoDuplicates!0 (array!23307 (_ BitVec 32) List!6431) Bool)

(assert (=> b!393227 (= res!225368 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6428))))

(declare-fun b!393228 () Bool)

(declare-fun res!225371 () Bool)

(assert (=> b!393228 (=> (not res!225371) (not e!238086))))

(assert (=> b!393228 (= res!225371 (and (= (size!11462 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11461 _keys!658) (size!11462 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!393229 () Bool)

(declare-fun res!225375 () Bool)

(assert (=> b!393229 (=> (not res!225375) (not e!238086))))

(assert (=> b!393229 (= res!225375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!225373 () Bool)

(assert (=> start!38168 (=> (not res!225373) (not e!238086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38168 (= res!225373 (validMask!0 mask!970))))

(assert (=> start!38168 e!238086))

(declare-fun e!238085 () Bool)

(declare-fun array_inv!8144 (array!23309) Bool)

(assert (=> start!38168 (and (array_inv!8144 _values!506) e!238085)))

(assert (=> start!38168 tp!31904))

(assert (=> start!38168 true))

(assert (=> start!38168 tp_is_empty!9713))

(declare-fun array_inv!8145 (array!23307) Bool)

(assert (=> start!38168 (array_inv!8145 _keys!658)))

(declare-fun mapNonEmpty!16164 () Bool)

(declare-fun mapRes!16164 () Bool)

(declare-fun tp!31905 () Bool)

(assert (=> mapNonEmpty!16164 (= mapRes!16164 (and tp!31905 e!238088))))

(declare-fun mapRest!16164 () (Array (_ BitVec 32) ValueCell!4513))

(declare-fun mapKey!16164 () (_ BitVec 32))

(declare-fun mapValue!16164 () ValueCell!4513)

(assert (=> mapNonEmpty!16164 (= (arr!11110 _values!506) (store mapRest!16164 mapKey!16164 mapValue!16164))))

(declare-fun b!393230 () Bool)

(declare-fun res!225366 () Bool)

(assert (=> b!393230 (=> (not res!225366) (not e!238086))))

(declare-fun arrayContainsKey!0 (array!23307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393230 (= res!225366 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!393231 () Bool)

(declare-fun res!225367 () Bool)

(assert (=> b!393231 (=> (not res!225367) (not e!238087))))

(assert (=> b!393231 (= res!225367 (arrayNoDuplicates!0 lt!186157 #b00000000000000000000000000000000 Nil!6428))))

(declare-fun b!393232 () Bool)

(declare-fun res!225369 () Bool)

(assert (=> b!393232 (=> (not res!225369) (not e!238086))))

(assert (=> b!393232 (= res!225369 (or (= (select (arr!11109 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11109 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16164 () Bool)

(assert (=> mapIsEmpty!16164 mapRes!16164))

(declare-fun b!393233 () Bool)

(assert (=> b!393233 (= e!238085 (and e!238083 mapRes!16164))))

(declare-fun condMapEmpty!16164 () Bool)

(declare-fun mapDefault!16164 () ValueCell!4513)

