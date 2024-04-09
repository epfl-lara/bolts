; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37460 () Bool)

(assert start!37460)

(declare-fun b_free!8579 () Bool)

(declare-fun b_next!8579 () Bool)

(assert (=> start!37460 (= b_free!8579 (not b_next!8579))))

(declare-fun tp!30453 () Bool)

(declare-fun b_and!15839 () Bool)

(assert (=> start!37460 (= tp!30453 b_and!15839)))

(declare-fun res!216701 () Bool)

(declare-fun e!231793 () Bool)

(assert (=> start!37460 (=> (not res!216701) (not e!231793))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37460 (= res!216701 (validMask!0 mask!970))))

(assert (=> start!37460 e!231793))

(declare-datatypes ((V!13407 0))(
  ( (V!13408 (val!4658 Int)) )
))
(declare-datatypes ((ValueCell!4270 0))(
  ( (ValueCellFull!4270 (v!6851 V!13407)) (EmptyCell!4270) )
))
(declare-datatypes ((array!22347 0))(
  ( (array!22348 (arr!10639 (Array (_ BitVec 32) ValueCell!4270)) (size!10991 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22347)

(declare-fun e!231796 () Bool)

(declare-fun array_inv!7820 (array!22347) Bool)

(assert (=> start!37460 (and (array_inv!7820 _values!506) e!231796)))

(assert (=> start!37460 tp!30453))

(assert (=> start!37460 true))

(declare-fun tp_is_empty!9227 () Bool)

(assert (=> start!37460 tp_is_empty!9227))

(declare-datatypes ((array!22349 0))(
  ( (array!22350 (arr!10640 (Array (_ BitVec 32) (_ BitVec 64))) (size!10992 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22349)

(declare-fun array_inv!7821 (array!22349) Bool)

(assert (=> start!37460 (array_inv!7821 _keys!658)))

(declare-fun b!381241 () Bool)

(declare-fun e!231798 () Bool)

(assert (=> b!381241 (= e!231798 tp_is_empty!9227)))

(declare-fun b!381242 () Bool)

(declare-fun res!216693 () Bool)

(assert (=> b!381242 (=> (not res!216693) (not e!231793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22349 (_ BitVec 32)) Bool)

(assert (=> b!381242 (= res!216693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381243 () Bool)

(declare-fun res!216695 () Bool)

(assert (=> b!381243 (=> (not res!216695) (not e!231793))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381243 (= res!216695 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15405 () Bool)

(declare-fun mapRes!15405 () Bool)

(declare-fun tp!30452 () Bool)

(declare-fun e!231792 () Bool)

(assert (=> mapNonEmpty!15405 (= mapRes!15405 (and tp!30452 e!231792))))

(declare-fun mapValue!15405 () ValueCell!4270)

(declare-fun mapKey!15405 () (_ BitVec 32))

(declare-fun mapRest!15405 () (Array (_ BitVec 32) ValueCell!4270))

(assert (=> mapNonEmpty!15405 (= (arr!10639 _values!506) (store mapRest!15405 mapKey!15405 mapValue!15405))))

(declare-fun b!381244 () Bool)

(declare-fun res!216700 () Bool)

(assert (=> b!381244 (=> (not res!216700) (not e!231793))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381244 (= res!216700 (and (= (size!10991 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10992 _keys!658) (size!10991 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15405 () Bool)

(assert (=> mapIsEmpty!15405 mapRes!15405))

(declare-fun b!381245 () Bool)

(declare-fun e!231794 () Bool)

(assert (=> b!381245 (= e!231794 true)))

(declare-datatypes ((tuple2!6210 0))(
  ( (tuple2!6211 (_1!3115 (_ BitVec 64)) (_2!3115 V!13407)) )
))
(declare-datatypes ((List!6081 0))(
  ( (Nil!6078) (Cons!6077 (h!6933 tuple2!6210) (t!11239 List!6081)) )
))
(declare-datatypes ((ListLongMap!5137 0))(
  ( (ListLongMap!5138 (toList!2584 List!6081)) )
))
(declare-fun lt!178745 () ListLongMap!5137)

(declare-fun lt!178739 () ListLongMap!5137)

(assert (=> b!381245 (= lt!178745 lt!178739)))

(declare-fun b!381246 () Bool)

(declare-fun res!216696 () Bool)

(assert (=> b!381246 (=> (not res!216696) (not e!231793))))

(declare-datatypes ((List!6082 0))(
  ( (Nil!6079) (Cons!6078 (h!6934 (_ BitVec 64)) (t!11240 List!6082)) )
))
(declare-fun arrayNoDuplicates!0 (array!22349 (_ BitVec 32) List!6082) Bool)

(assert (=> b!381246 (= res!216696 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6079))))

(declare-fun b!381247 () Bool)

(declare-fun res!216697 () Bool)

(declare-fun e!231797 () Bool)

(assert (=> b!381247 (=> (not res!216697) (not e!231797))))

(declare-fun lt!178741 () array!22349)

(assert (=> b!381247 (= res!216697 (arrayNoDuplicates!0 lt!178741 #b00000000000000000000000000000000 Nil!6079))))

(declare-fun b!381248 () Bool)

(assert (=> b!381248 (= e!231797 (not e!231794))))

(declare-fun res!216694 () Bool)

(assert (=> b!381248 (=> res!216694 e!231794)))

(declare-fun lt!178740 () Bool)

(assert (=> b!381248 (= res!216694 (or (and (not lt!178740) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178740) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178740)))))

(assert (=> b!381248 (= lt!178740 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!178747 () ListLongMap!5137)

(declare-fun zeroValue!472 () V!13407)

(declare-fun minValue!472 () V!13407)

(declare-fun getCurrentListMap!2004 (array!22349 array!22347 (_ BitVec 32) (_ BitVec 32) V!13407 V!13407 (_ BitVec 32) Int) ListLongMap!5137)

(assert (=> b!381248 (= lt!178747 (getCurrentListMap!2004 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178742 () array!22347)

(assert (=> b!381248 (= lt!178745 (getCurrentListMap!2004 lt!178741 lt!178742 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178744 () ListLongMap!5137)

(assert (=> b!381248 (and (= lt!178739 lt!178744) (= lt!178744 lt!178739))))

(declare-fun v!373 () V!13407)

(declare-fun lt!178746 () ListLongMap!5137)

(declare-fun +!922 (ListLongMap!5137 tuple2!6210) ListLongMap!5137)

(assert (=> b!381248 (= lt!178744 (+!922 lt!178746 (tuple2!6211 k!778 v!373)))))

(declare-datatypes ((Unit!11737 0))(
  ( (Unit!11738) )
))
(declare-fun lt!178743 () Unit!11737)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!155 (array!22349 array!22347 (_ BitVec 32) (_ BitVec 32) V!13407 V!13407 (_ BitVec 32) (_ BitVec 64) V!13407 (_ BitVec 32) Int) Unit!11737)

(assert (=> b!381248 (= lt!178743 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!155 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!822 (array!22349 array!22347 (_ BitVec 32) (_ BitVec 32) V!13407 V!13407 (_ BitVec 32) Int) ListLongMap!5137)

(assert (=> b!381248 (= lt!178739 (getCurrentListMapNoExtraKeys!822 lt!178741 lt!178742 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381248 (= lt!178742 (array!22348 (store (arr!10639 _values!506) i!548 (ValueCellFull!4270 v!373)) (size!10991 _values!506)))))

(assert (=> b!381248 (= lt!178746 (getCurrentListMapNoExtraKeys!822 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381249 () Bool)

(declare-fun res!216699 () Bool)

(assert (=> b!381249 (=> (not res!216699) (not e!231793))))

(assert (=> b!381249 (= res!216699 (or (= (select (arr!10640 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10640 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381250 () Bool)

(assert (=> b!381250 (= e!231796 (and e!231798 mapRes!15405))))

(declare-fun condMapEmpty!15405 () Bool)

(declare-fun mapDefault!15405 () ValueCell!4270)

