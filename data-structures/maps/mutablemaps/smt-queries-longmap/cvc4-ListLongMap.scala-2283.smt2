; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37172 () Bool)

(assert start!37172)

(declare-fun b_free!8291 () Bool)

(declare-fun b_next!8291 () Bool)

(assert (=> start!37172 (= b_free!8291 (not b_next!8291))))

(declare-fun tp!29589 () Bool)

(declare-fun b_and!15551 () Bool)

(assert (=> start!37172 (= tp!29589 b_and!15551)))

(declare-fun b!374787 () Bool)

(declare-fun res!211539 () Bool)

(declare-fun e!228384 () Bool)

(assert (=> b!374787 (=> (not res!211539) (not e!228384))))

(declare-datatypes ((array!21777 0))(
  ( (array!21778 (arr!10354 (Array (_ BitVec 32) (_ BitVec 64))) (size!10706 (_ BitVec 32))) )
))
(declare-fun lt!173202 () array!21777)

(declare-datatypes ((List!5848 0))(
  ( (Nil!5845) (Cons!5844 (h!6700 (_ BitVec 64)) (t!11006 List!5848)) )
))
(declare-fun arrayNoDuplicates!0 (array!21777 (_ BitVec 32) List!5848) Bool)

(assert (=> b!374787 (= res!211539 (arrayNoDuplicates!0 lt!173202 #b00000000000000000000000000000000 Nil!5845))))

(declare-fun b!374788 () Bool)

(declare-fun e!228387 () Bool)

(assert (=> b!374788 (= e!228387 true)))

(declare-datatypes ((V!13023 0))(
  ( (V!13024 (val!4514 Int)) )
))
(declare-datatypes ((tuple2!5978 0))(
  ( (tuple2!5979 (_1!2999 (_ BitVec 64)) (_2!2999 V!13023)) )
))
(declare-datatypes ((List!5849 0))(
  ( (Nil!5846) (Cons!5845 (h!6701 tuple2!5978) (t!11007 List!5849)) )
))
(declare-datatypes ((ListLongMap!4905 0))(
  ( (ListLongMap!4906 (toList!2468 List!5849)) )
))
(declare-fun lt!173188 () ListLongMap!4905)

(declare-fun lt!173197 () ListLongMap!4905)

(declare-fun lt!173189 () tuple2!5978)

(declare-fun lt!173196 () tuple2!5978)

(declare-fun +!809 (ListLongMap!4905 tuple2!5978) ListLongMap!4905)

(assert (=> b!374788 (= (+!809 lt!173197 lt!173196) (+!809 lt!173188 lt!173189))))

(declare-fun v!373 () V!13023)

(declare-fun lt!173191 () ListLongMap!4905)

(declare-fun k!778 () (_ BitVec 64))

(declare-datatypes ((Unit!11521 0))(
  ( (Unit!11522) )
))
(declare-fun lt!173195 () Unit!11521)

(declare-fun minValue!472 () V!13023)

(declare-fun addCommutativeForDiffKeys!238 (ListLongMap!4905 (_ BitVec 64) V!13023 (_ BitVec 64) V!13023) Unit!11521)

(assert (=> b!374788 (= lt!173195 (addCommutativeForDiffKeys!238 lt!173191 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374789 () Bool)

(declare-fun res!211536 () Bool)

(declare-fun e!228386 () Bool)

(assert (=> b!374789 (=> (not res!211536) (not e!228386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374789 (= res!211536 (validKeyInArray!0 k!778))))

(declare-fun b!374790 () Bool)

(declare-fun e!228383 () Bool)

(declare-fun tp_is_empty!8939 () Bool)

(assert (=> b!374790 (= e!228383 tp_is_empty!8939)))

(declare-fun b!374791 () Bool)

(declare-fun e!228382 () Bool)

(assert (=> b!374791 (= e!228384 (not e!228382))))

(declare-fun res!211534 () Bool)

(assert (=> b!374791 (=> res!211534 e!228382)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!374791 (= res!211534 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!173203 () ListLongMap!4905)

(declare-datatypes ((ValueCell!4126 0))(
  ( (ValueCellFull!4126 (v!6707 V!13023)) (EmptyCell!4126) )
))
(declare-datatypes ((array!21779 0))(
  ( (array!21780 (arr!10355 (Array (_ BitVec 32) ValueCell!4126)) (size!10707 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21779)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13023)

(declare-fun _keys!658 () array!21777)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun getCurrentListMap!1911 (array!21777 array!21779 (_ BitVec 32) (_ BitVec 32) V!13023 V!13023 (_ BitVec 32) Int) ListLongMap!4905)

(assert (=> b!374791 (= lt!173203 (getCurrentListMap!1911 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173192 () array!21779)

(declare-fun lt!173193 () ListLongMap!4905)

(assert (=> b!374791 (= lt!173193 (getCurrentListMap!1911 lt!173202 lt!173192 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173190 () ListLongMap!4905)

(declare-fun lt!173198 () ListLongMap!4905)

(assert (=> b!374791 (and (= lt!173190 lt!173198) (= lt!173198 lt!173190))))

(declare-fun lt!173187 () ListLongMap!4905)

(assert (=> b!374791 (= lt!173198 (+!809 lt!173187 lt!173189))))

(assert (=> b!374791 (= lt!173189 (tuple2!5979 k!778 v!373))))

(declare-fun lt!173199 () Unit!11521)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!62 (array!21777 array!21779 (_ BitVec 32) (_ BitVec 32) V!13023 V!13023 (_ BitVec 32) (_ BitVec 64) V!13023 (_ BitVec 32) Int) Unit!11521)

(assert (=> b!374791 (= lt!173199 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!62 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!729 (array!21777 array!21779 (_ BitVec 32) (_ BitVec 32) V!13023 V!13023 (_ BitVec 32) Int) ListLongMap!4905)

(assert (=> b!374791 (= lt!173190 (getCurrentListMapNoExtraKeys!729 lt!173202 lt!173192 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374791 (= lt!173192 (array!21780 (store (arr!10355 _values!506) i!548 (ValueCellFull!4126 v!373)) (size!10707 _values!506)))))

(assert (=> b!374791 (= lt!173187 (getCurrentListMapNoExtraKeys!729 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374792 () Bool)

(declare-fun e!228381 () Bool)

(declare-fun mapRes!14973 () Bool)

(assert (=> b!374792 (= e!228381 (and e!228383 mapRes!14973))))

(declare-fun condMapEmpty!14973 () Bool)

(declare-fun mapDefault!14973 () ValueCell!4126)

