; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37354 () Bool)

(assert start!37354)

(declare-fun b_free!8473 () Bool)

(declare-fun b_next!8473 () Bool)

(assert (=> start!37354 (= b_free!8473 (not b_next!8473))))

(declare-fun tp!30135 () Bool)

(declare-fun b_and!15733 () Bool)

(assert (=> start!37354 (= tp!30135 b_and!15733)))

(declare-fun b!378900 () Bool)

(declare-fun res!214833 () Bool)

(declare-fun e!230567 () Bool)

(assert (=> b!378900 (=> (not res!214833) (not e!230567))))

(declare-datatypes ((array!22139 0))(
  ( (array!22140 (arr!10535 (Array (_ BitVec 32) (_ BitVec 64))) (size!10887 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22139)

(declare-datatypes ((List!5998 0))(
  ( (Nil!5995) (Cons!5994 (h!6850 (_ BitVec 64)) (t!11156 List!5998)) )
))
(declare-fun arrayNoDuplicates!0 (array!22139 (_ BitVec 32) List!5998) Bool)

(assert (=> b!378900 (= res!214833 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5995))))

(declare-fun b!378901 () Bool)

(declare-fun res!214830 () Bool)

(assert (=> b!378901 (=> (not res!214830) (not e!230567))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13267 0))(
  ( (V!13268 (val!4605 Int)) )
))
(declare-datatypes ((ValueCell!4217 0))(
  ( (ValueCellFull!4217 (v!6798 V!13267)) (EmptyCell!4217) )
))
(declare-datatypes ((array!22141 0))(
  ( (array!22142 (arr!10536 (Array (_ BitVec 32) ValueCell!4217)) (size!10888 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22141)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!378901 (= res!214830 (and (= (size!10888 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10887 _keys!658) (size!10888 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378902 () Bool)

(declare-fun e!230566 () Bool)

(assert (=> b!378902 (= e!230566 true)))

(declare-datatypes ((tuple2!6126 0))(
  ( (tuple2!6127 (_1!3073 (_ BitVec 64)) (_2!3073 V!13267)) )
))
(declare-datatypes ((List!5999 0))(
  ( (Nil!5996) (Cons!5995 (h!6851 tuple2!6126) (t!11157 List!5999)) )
))
(declare-datatypes ((ListLongMap!5053 0))(
  ( (ListLongMap!5054 (toList!2542 List!5999)) )
))
(declare-fun lt!176849 () ListLongMap!5053)

(declare-fun lt!176848 () ListLongMap!5053)

(declare-fun lt!176851 () tuple2!6126)

(declare-fun +!883 (ListLongMap!5053 tuple2!6126) ListLongMap!5053)

(assert (=> b!378902 (= lt!176849 (+!883 lt!176848 lt!176851))))

(declare-fun v!373 () V!13267)

(declare-fun lt!176859 () ListLongMap!5053)

(declare-fun k!778 () (_ BitVec 64))

(declare-datatypes ((Unit!11661 0))(
  ( (Unit!11662) )
))
(declare-fun lt!176854 () Unit!11661)

(declare-fun minValue!472 () V!13267)

(declare-fun addCommutativeForDiffKeys!297 (ListLongMap!5053 (_ BitVec 64) V!13267 (_ BitVec 64) V!13267) Unit!11661)

(assert (=> b!378902 (= lt!176854 (addCommutativeForDiffKeys!297 lt!176859 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378903 () Bool)

(declare-fun res!214832 () Bool)

(assert (=> b!378903 (=> (not res!214832) (not e!230567))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378903 (= res!214832 (or (= (select (arr!10535 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10535 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378904 () Bool)

(declare-fun e!230565 () Bool)

(declare-fun e!230569 () Bool)

(assert (=> b!378904 (= e!230565 (not e!230569))))

(declare-fun res!214837 () Bool)

(assert (=> b!378904 (=> res!214837 e!230569)))

(assert (=> b!378904 (= res!214837 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!176850 () ListLongMap!5053)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13267)

(declare-fun getCurrentListMap!1970 (array!22139 array!22141 (_ BitVec 32) (_ BitVec 32) V!13267 V!13267 (_ BitVec 32) Int) ListLongMap!5053)

(assert (=> b!378904 (= lt!176850 (getCurrentListMap!1970 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176860 () array!22139)

(declare-fun lt!176853 () array!22141)

(declare-fun lt!176855 () ListLongMap!5053)

(assert (=> b!378904 (= lt!176855 (getCurrentListMap!1970 lt!176860 lt!176853 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176856 () ListLongMap!5053)

(declare-fun lt!176852 () ListLongMap!5053)

(assert (=> b!378904 (and (= lt!176856 lt!176852) (= lt!176852 lt!176856))))

(assert (=> b!378904 (= lt!176852 (+!883 lt!176859 lt!176851))))

(assert (=> b!378904 (= lt!176851 (tuple2!6127 k!778 v!373))))

(declare-fun lt!176857 () Unit!11661)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!121 (array!22139 array!22141 (_ BitVec 32) (_ BitVec 32) V!13267 V!13267 (_ BitVec 32) (_ BitVec 64) V!13267 (_ BitVec 32) Int) Unit!11661)

(assert (=> b!378904 (= lt!176857 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!121 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!788 (array!22139 array!22141 (_ BitVec 32) (_ BitVec 32) V!13267 V!13267 (_ BitVec 32) Int) ListLongMap!5053)

(assert (=> b!378904 (= lt!176856 (getCurrentListMapNoExtraKeys!788 lt!176860 lt!176853 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378904 (= lt!176853 (array!22142 (store (arr!10536 _values!506) i!548 (ValueCellFull!4217 v!373)) (size!10888 _values!506)))))

(assert (=> b!378904 (= lt!176859 (getCurrentListMapNoExtraKeys!788 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378906 () Bool)

(declare-fun e!230570 () Bool)

(declare-fun tp_is_empty!9121 () Bool)

(assert (=> b!378906 (= e!230570 tp_is_empty!9121)))

(declare-fun b!378907 () Bool)

(assert (=> b!378907 (= e!230569 e!230566)))

(declare-fun res!214836 () Bool)

(assert (=> b!378907 (=> res!214836 e!230566)))

(assert (=> b!378907 (= res!214836 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!378907 (= lt!176850 lt!176848)))

(declare-fun lt!176858 () tuple2!6126)

(assert (=> b!378907 (= lt!176848 (+!883 lt!176859 lt!176858))))

(assert (=> b!378907 (= lt!176855 lt!176849)))

(assert (=> b!378907 (= lt!176849 (+!883 lt!176852 lt!176858))))

(assert (=> b!378907 (= lt!176855 (+!883 lt!176856 lt!176858))))

(assert (=> b!378907 (= lt!176858 (tuple2!6127 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378908 () Bool)

(declare-fun res!214827 () Bool)

(assert (=> b!378908 (=> (not res!214827) (not e!230567))))

(declare-fun arrayContainsKey!0 (array!22139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378908 (= res!214827 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!378909 () Bool)

(declare-fun res!214828 () Bool)

(assert (=> b!378909 (=> (not res!214828) (not e!230567))))

(assert (=> b!378909 (= res!214828 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10887 _keys!658))))))

(declare-fun b!378910 () Bool)

(assert (=> b!378910 (= e!230567 e!230565)))

(declare-fun res!214829 () Bool)

(assert (=> b!378910 (=> (not res!214829) (not e!230565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22139 (_ BitVec 32)) Bool)

(assert (=> b!378910 (= res!214829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176860 mask!970))))

(assert (=> b!378910 (= lt!176860 (array!22140 (store (arr!10535 _keys!658) i!548 k!778) (size!10887 _keys!658)))))

(declare-fun mapIsEmpty!15246 () Bool)

(declare-fun mapRes!15246 () Bool)

(assert (=> mapIsEmpty!15246 mapRes!15246))

(declare-fun b!378911 () Bool)

(declare-fun res!214838 () Bool)

(assert (=> b!378911 (=> (not res!214838) (not e!230567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378911 (= res!214838 (validKeyInArray!0 k!778))))

(declare-fun b!378912 () Bool)

(declare-fun res!214835 () Bool)

(assert (=> b!378912 (=> (not res!214835) (not e!230567))))

(assert (=> b!378912 (= res!214835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378913 () Bool)

(declare-fun e!230571 () Bool)

(declare-fun e!230564 () Bool)

(assert (=> b!378913 (= e!230571 (and e!230564 mapRes!15246))))

(declare-fun condMapEmpty!15246 () Bool)

(declare-fun mapDefault!15246 () ValueCell!4217)

