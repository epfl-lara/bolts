; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37546 () Bool)

(assert start!37546)

(declare-fun b_free!8665 () Bool)

(declare-fun b_next!8665 () Bool)

(assert (=> start!37546 (= b_free!8665 (not b_next!8665))))

(declare-fun tp!30711 () Bool)

(declare-fun b_and!15925 () Bool)

(assert (=> start!37546 (= tp!30711 b_and!15925)))

(declare-fun mapNonEmpty!15534 () Bool)

(declare-fun mapRes!15534 () Bool)

(declare-fun tp!30710 () Bool)

(declare-fun e!232698 () Bool)

(assert (=> mapNonEmpty!15534 (= mapRes!15534 (and tp!30710 e!232698))))

(declare-datatypes ((V!13523 0))(
  ( (V!13524 (val!4701 Int)) )
))
(declare-datatypes ((ValueCell!4313 0))(
  ( (ValueCellFull!4313 (v!6894 V!13523)) (EmptyCell!4313) )
))
(declare-fun mapValue!15534 () ValueCell!4313)

(declare-datatypes ((array!22517 0))(
  ( (array!22518 (arr!10724 (Array (_ BitVec 32) ValueCell!4313)) (size!11076 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22517)

(declare-fun mapKey!15534 () (_ BitVec 32))

(declare-fun mapRest!15534 () (Array (_ BitVec 32) ValueCell!4313))

(assert (=> mapNonEmpty!15534 (= (arr!10724 _values!506) (store mapRest!15534 mapKey!15534 mapValue!15534))))

(declare-fun b!383047 () Bool)

(declare-fun res!218120 () Bool)

(declare-fun e!232697 () Bool)

(assert (=> b!383047 (=> (not res!218120) (not e!232697))))

(declare-datatypes ((array!22519 0))(
  ( (array!22520 (arr!10725 (Array (_ BitVec 32) (_ BitVec 64))) (size!11077 (_ BitVec 32))) )
))
(declare-fun lt!179926 () array!22519)

(declare-datatypes ((List!6143 0))(
  ( (Nil!6140) (Cons!6139 (h!6995 (_ BitVec 64)) (t!11301 List!6143)) )
))
(declare-fun arrayNoDuplicates!0 (array!22519 (_ BitVec 32) List!6143) Bool)

(assert (=> b!383047 (= res!218120 (arrayNoDuplicates!0 lt!179926 #b00000000000000000000000000000000 Nil!6140))))

(declare-fun b!383048 () Bool)

(declare-fun res!218118 () Bool)

(declare-fun e!232696 () Bool)

(assert (=> b!383048 (=> (not res!218118) (not e!232696))))

(declare-fun _keys!658 () array!22519)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383048 (= res!218118 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!218116 () Bool)

(assert (=> start!37546 (=> (not res!218116) (not e!232696))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37546 (= res!218116 (validMask!0 mask!970))))

(assert (=> start!37546 e!232696))

(declare-fun e!232699 () Bool)

(declare-fun array_inv!7876 (array!22517) Bool)

(assert (=> start!37546 (and (array_inv!7876 _values!506) e!232699)))

(assert (=> start!37546 tp!30711))

(assert (=> start!37546 true))

(declare-fun tp_is_empty!9313 () Bool)

(assert (=> start!37546 tp_is_empty!9313))

(declare-fun array_inv!7877 (array!22519) Bool)

(assert (=> start!37546 (array_inv!7877 _keys!658)))

(declare-fun mapIsEmpty!15534 () Bool)

(assert (=> mapIsEmpty!15534 mapRes!15534))

(declare-fun b!383049 () Bool)

(declare-fun e!232700 () Bool)

(assert (=> b!383049 (= e!232700 tp_is_empty!9313)))

(declare-fun b!383050 () Bool)

(assert (=> b!383050 (= e!232696 e!232697)))

(declare-fun res!218115 () Bool)

(assert (=> b!383050 (=> (not res!218115) (not e!232697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22519 (_ BitVec 32)) Bool)

(assert (=> b!383050 (= res!218115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179926 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383050 (= lt!179926 (array!22520 (store (arr!10725 _keys!658) i!548 k!778) (size!11077 _keys!658)))))

(declare-fun b!383051 () Bool)

(declare-fun res!218112 () Bool)

(assert (=> b!383051 (=> (not res!218112) (not e!232696))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383051 (= res!218112 (and (= (size!11076 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11077 _keys!658) (size!11076 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383052 () Bool)

(assert (=> b!383052 (= e!232698 tp_is_empty!9313)))

(declare-fun b!383053 () Bool)

(declare-fun res!218110 () Bool)

(assert (=> b!383053 (=> (not res!218110) (not e!232696))))

(assert (=> b!383053 (= res!218110 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11077 _keys!658))))))

(declare-fun b!383054 () Bool)

(declare-fun e!232701 () Bool)

(assert (=> b!383054 (= e!232701 true)))

(declare-datatypes ((tuple2!6276 0))(
  ( (tuple2!6277 (_1!3148 (_ BitVec 64)) (_2!3148 V!13523)) )
))
(declare-datatypes ((List!6144 0))(
  ( (Nil!6141) (Cons!6140 (h!6996 tuple2!6276) (t!11302 List!6144)) )
))
(declare-datatypes ((ListLongMap!5203 0))(
  ( (ListLongMap!5204 (toList!2617 List!6144)) )
))
(declare-fun lt!179925 () ListLongMap!5203)

(declare-fun lt!179928 () ListLongMap!5203)

(declare-fun lt!179930 () tuple2!6276)

(declare-fun +!953 (ListLongMap!5203 tuple2!6276) ListLongMap!5203)

(assert (=> b!383054 (= lt!179925 (+!953 lt!179928 lt!179930))))

(declare-fun lt!179924 () ListLongMap!5203)

(declare-fun lt!179929 () ListLongMap!5203)

(assert (=> b!383054 (= lt!179924 lt!179929)))

(declare-fun b!383055 () Bool)

(declare-fun res!218119 () Bool)

(assert (=> b!383055 (=> (not res!218119) (not e!232696))))

(assert (=> b!383055 (= res!218119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383056 () Bool)

(declare-fun res!218117 () Bool)

(assert (=> b!383056 (=> (not res!218117) (not e!232696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383056 (= res!218117 (validKeyInArray!0 k!778))))

(declare-fun b!383057 () Bool)

(assert (=> b!383057 (= e!232697 (not e!232701))))

(declare-fun res!218113 () Bool)

(assert (=> b!383057 (=> res!218113 e!232701)))

(declare-fun lt!179931 () Bool)

(assert (=> b!383057 (= res!218113 (or (and (not lt!179931) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179931) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179931)))))

(assert (=> b!383057 (= lt!179931 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13523)

(declare-fun minValue!472 () V!13523)

(declare-fun getCurrentListMap!2035 (array!22519 array!22517 (_ BitVec 32) (_ BitVec 32) V!13523 V!13523 (_ BitVec 32) Int) ListLongMap!5203)

(assert (=> b!383057 (= lt!179928 (getCurrentListMap!2035 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179932 () array!22517)

(assert (=> b!383057 (= lt!179924 (getCurrentListMap!2035 lt!179926 lt!179932 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179922 () ListLongMap!5203)

(assert (=> b!383057 (and (= lt!179929 lt!179922) (= lt!179922 lt!179929))))

(declare-fun lt!179927 () ListLongMap!5203)

(assert (=> b!383057 (= lt!179922 (+!953 lt!179927 lt!179930))))

(declare-fun v!373 () V!13523)

(assert (=> b!383057 (= lt!179930 (tuple2!6277 k!778 v!373))))

(declare-datatypes ((Unit!11799 0))(
  ( (Unit!11800) )
))
(declare-fun lt!179923 () Unit!11799)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!186 (array!22519 array!22517 (_ BitVec 32) (_ BitVec 32) V!13523 V!13523 (_ BitVec 32) (_ BitVec 64) V!13523 (_ BitVec 32) Int) Unit!11799)

(assert (=> b!383057 (= lt!179923 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!186 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!853 (array!22519 array!22517 (_ BitVec 32) (_ BitVec 32) V!13523 V!13523 (_ BitVec 32) Int) ListLongMap!5203)

(assert (=> b!383057 (= lt!179929 (getCurrentListMapNoExtraKeys!853 lt!179926 lt!179932 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383057 (= lt!179932 (array!22518 (store (arr!10724 _values!506) i!548 (ValueCellFull!4313 v!373)) (size!11076 _values!506)))))

(assert (=> b!383057 (= lt!179927 (getCurrentListMapNoExtraKeys!853 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383058 () Bool)

(declare-fun res!218111 () Bool)

(assert (=> b!383058 (=> (not res!218111) (not e!232696))))

(assert (=> b!383058 (= res!218111 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6140))))

(declare-fun b!383059 () Bool)

(declare-fun res!218114 () Bool)

(assert (=> b!383059 (=> (not res!218114) (not e!232696))))

(assert (=> b!383059 (= res!218114 (or (= (select (arr!10725 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10725 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383060 () Bool)

(assert (=> b!383060 (= e!232699 (and e!232700 mapRes!15534))))

(declare-fun condMapEmpty!15534 () Bool)

(declare-fun mapDefault!15534 () ValueCell!4313)

