; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37640 () Bool)

(assert start!37640)

(declare-fun b_free!8759 () Bool)

(declare-fun b_next!8759 () Bool)

(assert (=> start!37640 (= b_free!8759 (not b_next!8759))))

(declare-fun tp!30992 () Bool)

(declare-fun b_and!16019 () Bool)

(assert (=> start!37640 (= tp!30992 b_and!16019)))

(declare-fun b!385030 () Bool)

(declare-fun res!219672 () Bool)

(declare-fun e!233694 () Bool)

(assert (=> b!385030 (=> (not res!219672) (not e!233694))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22699 0))(
  ( (array!22700 (arr!10815 (Array (_ BitVec 32) (_ BitVec 64))) (size!11167 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22699)

(assert (=> b!385030 (= res!219672 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11167 _keys!658))))))

(declare-fun mapIsEmpty!15675 () Bool)

(declare-fun mapRes!15675 () Bool)

(assert (=> mapIsEmpty!15675 mapRes!15675))

(declare-fun b!385031 () Bool)

(declare-fun e!233692 () Bool)

(declare-fun tp_is_empty!9407 () Bool)

(assert (=> b!385031 (= e!233692 tp_is_empty!9407)))

(declare-fun b!385032 () Bool)

(declare-fun res!219680 () Bool)

(declare-fun e!233695 () Bool)

(assert (=> b!385032 (=> (not res!219680) (not e!233695))))

(declare-fun lt!181466 () array!22699)

(declare-datatypes ((List!6215 0))(
  ( (Nil!6212) (Cons!6211 (h!7067 (_ BitVec 64)) (t!11373 List!6215)) )
))
(declare-fun arrayNoDuplicates!0 (array!22699 (_ BitVec 32) List!6215) Bool)

(assert (=> b!385032 (= res!219680 (arrayNoDuplicates!0 lt!181466 #b00000000000000000000000000000000 Nil!6212))))

(declare-fun b!385033 () Bool)

(declare-fun res!219676 () Bool)

(assert (=> b!385033 (=> (not res!219676) (not e!233694))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385033 (= res!219676 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15675 () Bool)

(declare-fun tp!30993 () Bool)

(assert (=> mapNonEmpty!15675 (= mapRes!15675 (and tp!30993 e!233692))))

(declare-datatypes ((V!13647 0))(
  ( (V!13648 (val!4748 Int)) )
))
(declare-datatypes ((ValueCell!4360 0))(
  ( (ValueCellFull!4360 (v!6941 V!13647)) (EmptyCell!4360) )
))
(declare-datatypes ((array!22701 0))(
  ( (array!22702 (arr!10816 (Array (_ BitVec 32) ValueCell!4360)) (size!11168 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22701)

(declare-fun mapKey!15675 () (_ BitVec 32))

(declare-fun mapRest!15675 () (Array (_ BitVec 32) ValueCell!4360))

(declare-fun mapValue!15675 () ValueCell!4360)

(assert (=> mapNonEmpty!15675 (= (arr!10816 _values!506) (store mapRest!15675 mapKey!15675 mapValue!15675))))

(declare-fun b!385034 () Bool)

(declare-fun e!233691 () Bool)

(assert (=> b!385034 (= e!233695 (not e!233691))))

(declare-fun res!219670 () Bool)

(assert (=> b!385034 (=> res!219670 e!233691)))

(declare-fun lt!181464 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!385034 (= res!219670 (or (and (not lt!181464) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181464) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181464)))))

(assert (=> b!385034 (= lt!181464 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6348 0))(
  ( (tuple2!6349 (_1!3184 (_ BitVec 64)) (_2!3184 V!13647)) )
))
(declare-datatypes ((List!6216 0))(
  ( (Nil!6213) (Cons!6212 (h!7068 tuple2!6348) (t!11374 List!6216)) )
))
(declare-datatypes ((ListLongMap!5275 0))(
  ( (ListLongMap!5276 (toList!2653 List!6216)) )
))
(declare-fun lt!181472 () ListLongMap!5275)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13647)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13647)

(declare-fun getCurrentListMap!2069 (array!22699 array!22701 (_ BitVec 32) (_ BitVec 32) V!13647 V!13647 (_ BitVec 32) Int) ListLongMap!5275)

(assert (=> b!385034 (= lt!181472 (getCurrentListMap!2069 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181467 () array!22701)

(declare-fun lt!181474 () ListLongMap!5275)

(assert (=> b!385034 (= lt!181474 (getCurrentListMap!2069 lt!181466 lt!181467 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181473 () ListLongMap!5275)

(declare-fun lt!181471 () ListLongMap!5275)

(assert (=> b!385034 (and (= lt!181473 lt!181471) (= lt!181471 lt!181473))))

(declare-fun lt!181465 () ListLongMap!5275)

(declare-fun lt!181468 () tuple2!6348)

(declare-fun +!989 (ListLongMap!5275 tuple2!6348) ListLongMap!5275)

(assert (=> b!385034 (= lt!181471 (+!989 lt!181465 lt!181468))))

(declare-fun v!373 () V!13647)

(assert (=> b!385034 (= lt!181468 (tuple2!6349 k!778 v!373))))

(declare-datatypes ((Unit!11867 0))(
  ( (Unit!11868) )
))
(declare-fun lt!181469 () Unit!11867)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!220 (array!22699 array!22701 (_ BitVec 32) (_ BitVec 32) V!13647 V!13647 (_ BitVec 32) (_ BitVec 64) V!13647 (_ BitVec 32) Int) Unit!11867)

(assert (=> b!385034 (= lt!181469 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!220 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!887 (array!22699 array!22701 (_ BitVec 32) (_ BitVec 32) V!13647 V!13647 (_ BitVec 32) Int) ListLongMap!5275)

(assert (=> b!385034 (= lt!181473 (getCurrentListMapNoExtraKeys!887 lt!181466 lt!181467 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!385034 (= lt!181467 (array!22702 (store (arr!10816 _values!506) i!548 (ValueCellFull!4360 v!373)) (size!11168 _values!506)))))

(assert (=> b!385034 (= lt!181465 (getCurrentListMapNoExtraKeys!887 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385035 () Bool)

(declare-fun res!219678 () Bool)

(assert (=> b!385035 (=> (not res!219678) (not e!233694))))

(assert (=> b!385035 (= res!219678 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6212))))

(declare-fun b!385036 () Bool)

(declare-fun e!233697 () Bool)

(declare-fun e!233696 () Bool)

(assert (=> b!385036 (= e!233697 (and e!233696 mapRes!15675))))

(declare-fun condMapEmpty!15675 () Bool)

(declare-fun mapDefault!15675 () ValueCell!4360)

