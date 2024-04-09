; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37598 () Bool)

(assert start!37598)

(declare-fun b_free!8717 () Bool)

(declare-fun b_next!8717 () Bool)

(assert (=> start!37598 (= b_free!8717 (not b_next!8717))))

(declare-fun tp!30867 () Bool)

(declare-fun b_and!15977 () Bool)

(assert (=> start!37598 (= tp!30867 b_and!15977)))

(declare-fun b!384148 () Bool)

(declare-fun res!218980 () Bool)

(declare-fun e!233255 () Bool)

(assert (=> b!384148 (=> (not res!218980) (not e!233255))))

(declare-datatypes ((array!22617 0))(
  ( (array!22618 (arr!10774 (Array (_ BitVec 32) (_ BitVec 64))) (size!11126 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22617)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384148 (= res!218980 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!384149 () Bool)

(declare-fun e!233253 () Bool)

(assert (=> b!384149 (= e!233253 true)))

(declare-datatypes ((V!13591 0))(
  ( (V!13592 (val!4727 Int)) )
))
(declare-datatypes ((tuple2!6318 0))(
  ( (tuple2!6319 (_1!3169 (_ BitVec 64)) (_2!3169 V!13591)) )
))
(declare-datatypes ((List!6185 0))(
  ( (Nil!6182) (Cons!6181 (h!7037 tuple2!6318) (t!11343 List!6185)) )
))
(declare-datatypes ((ListLongMap!5245 0))(
  ( (ListLongMap!5246 (toList!2638 List!6185)) )
))
(declare-fun lt!180776 () ListLongMap!5245)

(declare-fun lt!180779 () ListLongMap!5245)

(declare-fun lt!180780 () tuple2!6318)

(declare-fun +!974 (ListLongMap!5245 tuple2!6318) ListLongMap!5245)

(assert (=> b!384149 (= lt!180776 (+!974 lt!180779 lt!180780))))

(declare-fun lt!180778 () ListLongMap!5245)

(declare-fun lt!180775 () ListLongMap!5245)

(assert (=> b!384149 (= lt!180778 lt!180775)))

(declare-fun mapNonEmpty!15612 () Bool)

(declare-fun mapRes!15612 () Bool)

(declare-fun tp!30866 () Bool)

(declare-fun e!233256 () Bool)

(assert (=> mapNonEmpty!15612 (= mapRes!15612 (and tp!30866 e!233256))))

(declare-datatypes ((ValueCell!4339 0))(
  ( (ValueCellFull!4339 (v!6920 V!13591)) (EmptyCell!4339) )
))
(declare-datatypes ((array!22619 0))(
  ( (array!22620 (arr!10775 (Array (_ BitVec 32) ValueCell!4339)) (size!11127 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22619)

(declare-fun mapRest!15612 () (Array (_ BitVec 32) ValueCell!4339))

(declare-fun mapValue!15612 () ValueCell!4339)

(declare-fun mapKey!15612 () (_ BitVec 32))

(assert (=> mapNonEmpty!15612 (= (arr!10775 _values!506) (store mapRest!15612 mapKey!15612 mapValue!15612))))

(declare-fun b!384150 () Bool)

(declare-fun e!233250 () Bool)

(declare-fun tp_is_empty!9365 () Bool)

(assert (=> b!384150 (= e!233250 tp_is_empty!9365)))

(declare-fun b!384151 () Bool)

(declare-fun e!233251 () Bool)

(assert (=> b!384151 (= e!233251 (not e!233253))))

(declare-fun res!218984 () Bool)

(assert (=> b!384151 (=> res!218984 e!233253)))

(declare-fun lt!180781 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384151 (= res!218984 (or (and (not lt!180781) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180781) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180781)))))

(assert (=> b!384151 (= lt!180781 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13591)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13591)

(declare-fun getCurrentListMap!2054 (array!22617 array!22619 (_ BitVec 32) (_ BitVec 32) V!13591 V!13591 (_ BitVec 32) Int) ListLongMap!5245)

(assert (=> b!384151 (= lt!180779 (getCurrentListMap!2054 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180772 () array!22619)

(declare-fun lt!180774 () array!22617)

(assert (=> b!384151 (= lt!180778 (getCurrentListMap!2054 lt!180774 lt!180772 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180771 () ListLongMap!5245)

(assert (=> b!384151 (and (= lt!180775 lt!180771) (= lt!180771 lt!180775))))

(declare-fun lt!180773 () ListLongMap!5245)

(assert (=> b!384151 (= lt!180771 (+!974 lt!180773 lt!180780))))

(declare-fun v!373 () V!13591)

(assert (=> b!384151 (= lt!180780 (tuple2!6319 k!778 v!373))))

(declare-datatypes ((Unit!11837 0))(
  ( (Unit!11838) )
))
(declare-fun lt!180777 () Unit!11837)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!205 (array!22617 array!22619 (_ BitVec 32) (_ BitVec 32) V!13591 V!13591 (_ BitVec 32) (_ BitVec 64) V!13591 (_ BitVec 32) Int) Unit!11837)

(assert (=> b!384151 (= lt!180777 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!205 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!872 (array!22617 array!22619 (_ BitVec 32) (_ BitVec 32) V!13591 V!13591 (_ BitVec 32) Int) ListLongMap!5245)

(assert (=> b!384151 (= lt!180775 (getCurrentListMapNoExtraKeys!872 lt!180774 lt!180772 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384151 (= lt!180772 (array!22620 (store (arr!10775 _values!506) i!548 (ValueCellFull!4339 v!373)) (size!11127 _values!506)))))

(assert (=> b!384151 (= lt!180773 (getCurrentListMapNoExtraKeys!872 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!218979 () Bool)

(assert (=> start!37598 (=> (not res!218979) (not e!233255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37598 (= res!218979 (validMask!0 mask!970))))

(assert (=> start!37598 e!233255))

(declare-fun e!233254 () Bool)

(declare-fun array_inv!7912 (array!22619) Bool)

(assert (=> start!37598 (and (array_inv!7912 _values!506) e!233254)))

(assert (=> start!37598 tp!30867))

(assert (=> start!37598 true))

(assert (=> start!37598 tp_is_empty!9365))

(declare-fun array_inv!7913 (array!22617) Bool)

(assert (=> start!37598 (array_inv!7913 _keys!658)))

(declare-fun b!384152 () Bool)

(declare-fun res!218987 () Bool)

(assert (=> b!384152 (=> (not res!218987) (not e!233255))))

(assert (=> b!384152 (= res!218987 (or (= (select (arr!10774 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10774 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384153 () Bool)

(assert (=> b!384153 (= e!233255 e!233251)))

(declare-fun res!218982 () Bool)

(assert (=> b!384153 (=> (not res!218982) (not e!233251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22617 (_ BitVec 32)) Bool)

(assert (=> b!384153 (= res!218982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180774 mask!970))))

(assert (=> b!384153 (= lt!180774 (array!22618 (store (arr!10774 _keys!658) i!548 k!778) (size!11126 _keys!658)))))

(declare-fun b!384154 () Bool)

(assert (=> b!384154 (= e!233254 (and e!233250 mapRes!15612))))

(declare-fun condMapEmpty!15612 () Bool)

(declare-fun mapDefault!15612 () ValueCell!4339)

