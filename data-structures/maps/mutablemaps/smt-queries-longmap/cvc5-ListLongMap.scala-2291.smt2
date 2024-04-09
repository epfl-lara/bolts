; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37216 () Bool)

(assert start!37216)

(declare-fun b_free!8335 () Bool)

(declare-fun b_next!8335 () Bool)

(assert (=> start!37216 (= b_free!8335 (not b_next!8335))))

(declare-fun tp!29721 () Bool)

(declare-fun b_and!15595 () Bool)

(assert (=> start!37216 (= tp!29721 b_and!15595)))

(declare-fun mapNonEmpty!15039 () Bool)

(declare-fun mapRes!15039 () Bool)

(declare-fun tp!29720 () Bool)

(declare-fun e!228912 () Bool)

(assert (=> mapNonEmpty!15039 (= mapRes!15039 (and tp!29720 e!228912))))

(declare-datatypes ((V!13083 0))(
  ( (V!13084 (val!4536 Int)) )
))
(declare-datatypes ((ValueCell!4148 0))(
  ( (ValueCellFull!4148 (v!6729 V!13083)) (EmptyCell!4148) )
))
(declare-datatypes ((array!21865 0))(
  ( (array!21866 (arr!10398 (Array (_ BitVec 32) ValueCell!4148)) (size!10750 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21865)

(declare-fun mapValue!15039 () ValueCell!4148)

(declare-fun mapKey!15039 () (_ BitVec 32))

(declare-fun mapRest!15039 () (Array (_ BitVec 32) ValueCell!4148))

(assert (=> mapNonEmpty!15039 (= (arr!10398 _values!506) (store mapRest!15039 mapKey!15039 mapValue!15039))))

(declare-fun b!375786 () Bool)

(declare-fun tp_is_empty!8983 () Bool)

(assert (=> b!375786 (= e!228912 tp_is_empty!8983)))

(declare-fun b!375787 () Bool)

(declare-fun res!212334 () Bool)

(declare-fun e!228909 () Bool)

(assert (=> b!375787 (=> (not res!212334) (not e!228909))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!21867 0))(
  ( (array!21868 (arr!10399 (Array (_ BitVec 32) (_ BitVec 64))) (size!10751 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21867)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!375787 (= res!212334 (and (= (size!10750 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10751 _keys!658) (size!10750 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375788 () Bool)

(declare-fun res!212341 () Bool)

(assert (=> b!375788 (=> (not res!212341) (not e!228909))))

(declare-datatypes ((List!5882 0))(
  ( (Nil!5879) (Cons!5878 (h!6734 (_ BitVec 64)) (t!11040 List!5882)) )
))
(declare-fun arrayNoDuplicates!0 (array!21867 (_ BitVec 32) List!5882) Bool)

(assert (=> b!375788 (= res!212341 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5879))))

(declare-fun b!375789 () Bool)

(declare-fun e!228908 () Bool)

(assert (=> b!375789 (= e!228908 true)))

(declare-datatypes ((tuple2!6012 0))(
  ( (tuple2!6013 (_1!3016 (_ BitVec 64)) (_2!3016 V!13083)) )
))
(declare-datatypes ((List!5883 0))(
  ( (Nil!5880) (Cons!5879 (h!6735 tuple2!6012) (t!11041 List!5883)) )
))
(declare-datatypes ((ListLongMap!4939 0))(
  ( (ListLongMap!4940 (toList!2485 List!5883)) )
))
(declare-fun lt!174202 () ListLongMap!4939)

(declare-fun lt!174203 () ListLongMap!4939)

(declare-fun lt!174195 () tuple2!6012)

(declare-fun +!826 (ListLongMap!4939 tuple2!6012) ListLongMap!4939)

(assert (=> b!375789 (= lt!174202 (+!826 lt!174203 lt!174195))))

(declare-datatypes ((Unit!11555 0))(
  ( (Unit!11556) )
))
(declare-fun lt!174198 () Unit!11555)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13083)

(declare-fun v!373 () V!13083)

(declare-fun lt!174194 () ListLongMap!4939)

(declare-fun addCommutativeForDiffKeys!252 (ListLongMap!4939 (_ BitVec 64) V!13083 (_ BitVec 64) V!13083) Unit!11555)

(assert (=> b!375789 (= lt!174198 (addCommutativeForDiffKeys!252 lt!174194 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375790 () Bool)

(declare-fun e!228915 () Bool)

(assert (=> b!375790 (= e!228909 e!228915)))

(declare-fun res!212339 () Bool)

(assert (=> b!375790 (=> (not res!212339) (not e!228915))))

(declare-fun lt!174204 () array!21867)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21867 (_ BitVec 32)) Bool)

(assert (=> b!375790 (= res!212339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174204 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375790 (= lt!174204 (array!21868 (store (arr!10399 _keys!658) i!548 k!778) (size!10751 _keys!658)))))

(declare-fun b!375791 () Bool)

(declare-fun res!212343 () Bool)

(assert (=> b!375791 (=> (not res!212343) (not e!228909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375791 (= res!212343 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!15039 () Bool)

(assert (=> mapIsEmpty!15039 mapRes!15039))

(declare-fun b!375793 () Bool)

(declare-fun res!212345 () Bool)

(assert (=> b!375793 (=> (not res!212345) (not e!228915))))

(assert (=> b!375793 (= res!212345 (arrayNoDuplicates!0 lt!174204 #b00000000000000000000000000000000 Nil!5879))))

(declare-fun b!375794 () Bool)

(declare-fun res!212342 () Bool)

(assert (=> b!375794 (=> (not res!212342) (not e!228909))))

(declare-fun arrayContainsKey!0 (array!21867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375794 (= res!212342 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!212337 () Bool)

(assert (=> start!37216 (=> (not res!212337) (not e!228909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37216 (= res!212337 (validMask!0 mask!970))))

(assert (=> start!37216 e!228909))

(declare-fun e!228911 () Bool)

(declare-fun array_inv!7660 (array!21865) Bool)

(assert (=> start!37216 (and (array_inv!7660 _values!506) e!228911)))

(assert (=> start!37216 tp!29721))

(assert (=> start!37216 true))

(assert (=> start!37216 tp_is_empty!8983))

(declare-fun array_inv!7661 (array!21867) Bool)

(assert (=> start!37216 (array_inv!7661 _keys!658)))

(declare-fun b!375792 () Bool)

(declare-fun e!228913 () Bool)

(assert (=> b!375792 (= e!228913 e!228908)))

(declare-fun res!212335 () Bool)

(assert (=> b!375792 (=> res!212335 e!228908)))

(assert (=> b!375792 (= res!212335 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!174205 () ListLongMap!4939)

(assert (=> b!375792 (= lt!174205 lt!174202)))

(declare-fun lt!174193 () ListLongMap!4939)

(declare-fun lt!174197 () tuple2!6012)

(assert (=> b!375792 (= lt!174202 (+!826 lt!174193 lt!174197))))

(declare-fun lt!174201 () ListLongMap!4939)

(assert (=> b!375792 (= lt!174201 lt!174203)))

(assert (=> b!375792 (= lt!174203 (+!826 lt!174194 lt!174197))))

(declare-fun lt!174196 () ListLongMap!4939)

(assert (=> b!375792 (= lt!174205 (+!826 lt!174196 lt!174197))))

(assert (=> b!375792 (= lt!174197 (tuple2!6013 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375795 () Bool)

(declare-fun e!228910 () Bool)

(assert (=> b!375795 (= e!228910 tp_is_empty!8983)))

(declare-fun b!375796 () Bool)

(declare-fun res!212340 () Bool)

(assert (=> b!375796 (=> (not res!212340) (not e!228909))))

(assert (=> b!375796 (= res!212340 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10751 _keys!658))))))

(declare-fun b!375797 () Bool)

(assert (=> b!375797 (= e!228911 (and e!228910 mapRes!15039))))

(declare-fun condMapEmpty!15039 () Bool)

(declare-fun mapDefault!15039 () ValueCell!4148)

