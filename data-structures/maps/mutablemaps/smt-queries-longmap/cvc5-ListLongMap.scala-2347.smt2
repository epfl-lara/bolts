; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37552 () Bool)

(assert start!37552)

(declare-fun b_free!8671 () Bool)

(declare-fun b_next!8671 () Bool)

(assert (=> start!37552 (= b_free!8671 (not b_next!8671))))

(declare-fun tp!30728 () Bool)

(declare-fun b_and!15931 () Bool)

(assert (=> start!37552 (= tp!30728 b_and!15931)))

(declare-fun b!383173 () Bool)

(declare-fun res!218209 () Bool)

(declare-fun e!232759 () Bool)

(assert (=> b!383173 (=> (not res!218209) (not e!232759))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22529 0))(
  ( (array!22530 (arr!10730 (Array (_ BitVec 32) (_ BitVec 64))) (size!11082 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22529)

(assert (=> b!383173 (= res!218209 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11082 _keys!658))))))

(declare-fun b!383174 () Bool)

(declare-fun e!232764 () Bool)

(declare-fun tp_is_empty!9319 () Bool)

(assert (=> b!383174 (= e!232764 tp_is_empty!9319)))

(declare-fun res!218218 () Bool)

(assert (=> start!37552 (=> (not res!218218) (not e!232759))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37552 (= res!218218 (validMask!0 mask!970))))

(assert (=> start!37552 e!232759))

(declare-datatypes ((V!13531 0))(
  ( (V!13532 (val!4704 Int)) )
))
(declare-datatypes ((ValueCell!4316 0))(
  ( (ValueCellFull!4316 (v!6897 V!13531)) (EmptyCell!4316) )
))
(declare-datatypes ((array!22531 0))(
  ( (array!22532 (arr!10731 (Array (_ BitVec 32) ValueCell!4316)) (size!11083 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22531)

(declare-fun e!232760 () Bool)

(declare-fun array_inv!7880 (array!22531) Bool)

(assert (=> start!37552 (and (array_inv!7880 _values!506) e!232760)))

(assert (=> start!37552 tp!30728))

(assert (=> start!37552 true))

(assert (=> start!37552 tp_is_empty!9319))

(declare-fun array_inv!7881 (array!22529) Bool)

(assert (=> start!37552 (array_inv!7881 _keys!658)))

(declare-fun b!383175 () Bool)

(declare-fun res!218215 () Bool)

(assert (=> b!383175 (=> (not res!218215) (not e!232759))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383175 (= res!218215 (and (= (size!11083 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11082 _keys!658) (size!11083 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383176 () Bool)

(declare-fun e!232761 () Bool)

(declare-fun e!232758 () Bool)

(assert (=> b!383176 (= e!232761 (not e!232758))))

(declare-fun res!218219 () Bool)

(assert (=> b!383176 (=> res!218219 e!232758)))

(declare-fun lt!180031 () Bool)

(assert (=> b!383176 (= res!218219 (or (and (not lt!180031) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180031) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180031)))))

(assert (=> b!383176 (= lt!180031 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6280 0))(
  ( (tuple2!6281 (_1!3150 (_ BitVec 64)) (_2!3150 V!13531)) )
))
(declare-datatypes ((List!6148 0))(
  ( (Nil!6145) (Cons!6144 (h!7000 tuple2!6280) (t!11306 List!6148)) )
))
(declare-datatypes ((ListLongMap!5207 0))(
  ( (ListLongMap!5208 (toList!2619 List!6148)) )
))
(declare-fun lt!180028 () ListLongMap!5207)

(declare-fun zeroValue!472 () V!13531)

(declare-fun minValue!472 () V!13531)

(declare-fun getCurrentListMap!2037 (array!22529 array!22531 (_ BitVec 32) (_ BitVec 32) V!13531 V!13531 (_ BitVec 32) Int) ListLongMap!5207)

(assert (=> b!383176 (= lt!180028 (getCurrentListMap!2037 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180021 () array!22531)

(declare-fun lt!180026 () ListLongMap!5207)

(declare-fun lt!180025 () array!22529)

(assert (=> b!383176 (= lt!180026 (getCurrentListMap!2037 lt!180025 lt!180021 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180029 () ListLongMap!5207)

(declare-fun lt!180024 () ListLongMap!5207)

(assert (=> b!383176 (and (= lt!180029 lt!180024) (= lt!180024 lt!180029))))

(declare-fun lt!180023 () ListLongMap!5207)

(declare-fun lt!180027 () tuple2!6280)

(declare-fun +!955 (ListLongMap!5207 tuple2!6280) ListLongMap!5207)

(assert (=> b!383176 (= lt!180024 (+!955 lt!180023 lt!180027))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13531)

(assert (=> b!383176 (= lt!180027 (tuple2!6281 k!778 v!373))))

(declare-datatypes ((Unit!11803 0))(
  ( (Unit!11804) )
))
(declare-fun lt!180022 () Unit!11803)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!188 (array!22529 array!22531 (_ BitVec 32) (_ BitVec 32) V!13531 V!13531 (_ BitVec 32) (_ BitVec 64) V!13531 (_ BitVec 32) Int) Unit!11803)

(assert (=> b!383176 (= lt!180022 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!188 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!855 (array!22529 array!22531 (_ BitVec 32) (_ BitVec 32) V!13531 V!13531 (_ BitVec 32) Int) ListLongMap!5207)

(assert (=> b!383176 (= lt!180029 (getCurrentListMapNoExtraKeys!855 lt!180025 lt!180021 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383176 (= lt!180021 (array!22532 (store (arr!10731 _values!506) i!548 (ValueCellFull!4316 v!373)) (size!11083 _values!506)))))

(assert (=> b!383176 (= lt!180023 (getCurrentListMapNoExtraKeys!855 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383177 () Bool)

(declare-fun res!218217 () Bool)

(assert (=> b!383177 (=> (not res!218217) (not e!232759))))

(declare-datatypes ((List!6149 0))(
  ( (Nil!6146) (Cons!6145 (h!7001 (_ BitVec 64)) (t!11307 List!6149)) )
))
(declare-fun arrayNoDuplicates!0 (array!22529 (_ BitVec 32) List!6149) Bool)

(assert (=> b!383177 (= res!218217 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6146))))

(declare-fun mapIsEmpty!15543 () Bool)

(declare-fun mapRes!15543 () Bool)

(assert (=> mapIsEmpty!15543 mapRes!15543))

(declare-fun mapNonEmpty!15543 () Bool)

(declare-fun tp!30729 () Bool)

(declare-fun e!232762 () Bool)

(assert (=> mapNonEmpty!15543 (= mapRes!15543 (and tp!30729 e!232762))))

(declare-fun mapKey!15543 () (_ BitVec 32))

(declare-fun mapRest!15543 () (Array (_ BitVec 32) ValueCell!4316))

(declare-fun mapValue!15543 () ValueCell!4316)

(assert (=> mapNonEmpty!15543 (= (arr!10731 _values!506) (store mapRest!15543 mapKey!15543 mapValue!15543))))

(declare-fun b!383178 () Bool)

(declare-fun res!218212 () Bool)

(assert (=> b!383178 (=> (not res!218212) (not e!232759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22529 (_ BitVec 32)) Bool)

(assert (=> b!383178 (= res!218212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383179 () Bool)

(assert (=> b!383179 (= e!232758 true)))

(declare-fun lt!180030 () ListLongMap!5207)

(assert (=> b!383179 (= lt!180030 (+!955 lt!180028 lt!180027))))

(assert (=> b!383179 (= lt!180026 lt!180029)))

(declare-fun b!383180 () Bool)

(assert (=> b!383180 (= e!232760 (and e!232764 mapRes!15543))))

(declare-fun condMapEmpty!15543 () Bool)

(declare-fun mapDefault!15543 () ValueCell!4316)

