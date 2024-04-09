; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20368 () Bool)

(assert start!20368)

(declare-fun b_free!5015 () Bool)

(declare-fun b_next!5015 () Bool)

(assert (=> start!20368 (= b_free!5015 (not b_next!5015))))

(declare-fun tp!18077 () Bool)

(declare-fun b_and!11779 () Bool)

(assert (=> start!20368 (= tp!18077 b_and!11779)))

(declare-fun b!200854 () Bool)

(declare-fun res!95848 () Bool)

(declare-fun e!131691 () Bool)

(assert (=> b!200854 (=> (not res!95848) (not e!131691))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200854 (= res!95848 (validKeyInArray!0 k!843))))

(declare-fun b!200855 () Bool)

(declare-fun res!95845 () Bool)

(assert (=> b!200855 (=> (not res!95845) (not e!131691))))

(declare-datatypes ((array!8972 0))(
  ( (array!8973 (arr!4236 (Array (_ BitVec 32) (_ BitVec 64))) (size!4561 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8972)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!200855 (= res!95845 (= (select (arr!4236 _keys!825) i!601) k!843))))

(declare-fun b!200856 () Bool)

(declare-fun e!131690 () Bool)

(declare-fun e!131687 () Bool)

(assert (=> b!200856 (= e!131690 e!131687)))

(declare-fun res!95847 () Bool)

(assert (=> b!200856 (=> res!95847 e!131687)))

(assert (=> b!200856 (= res!95847 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6141 0))(
  ( (V!6142 (val!2480 Int)) )
))
(declare-datatypes ((tuple2!3748 0))(
  ( (tuple2!3749 (_1!1884 (_ BitVec 64)) (_2!1884 V!6141)) )
))
(declare-datatypes ((List!2688 0))(
  ( (Nil!2685) (Cons!2684 (h!3326 tuple2!3748) (t!7627 List!2688)) )
))
(declare-datatypes ((ListLongMap!2675 0))(
  ( (ListLongMap!2676 (toList!1353 List!2688)) )
))
(declare-fun lt!99676 () ListLongMap!2675)

(declare-fun lt!99678 () ListLongMap!2675)

(assert (=> b!200856 (= lt!99676 lt!99678)))

(declare-fun lt!99679 () ListLongMap!2675)

(declare-fun lt!99683 () tuple2!3748)

(declare-fun +!370 (ListLongMap!2675 tuple2!3748) ListLongMap!2675)

(assert (=> b!200856 (= lt!99678 (+!370 lt!99679 lt!99683))))

(declare-fun lt!99682 () ListLongMap!2675)

(declare-datatypes ((Unit!6047 0))(
  ( (Unit!6048) )
))
(declare-fun lt!99684 () Unit!6047)

(declare-fun v!520 () V!6141)

(declare-fun zeroValue!615 () V!6141)

(declare-fun addCommutativeForDiffKeys!91 (ListLongMap!2675 (_ BitVec 64) V!6141 (_ BitVec 64) V!6141) Unit!6047)

(assert (=> b!200856 (= lt!99684 (addCommutativeForDiffKeys!91 lt!99682 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!99670 () ListLongMap!2675)

(declare-fun lt!99675 () tuple2!3748)

(assert (=> b!200856 (= lt!99670 (+!370 lt!99676 lt!99675))))

(declare-fun lt!99681 () ListLongMap!2675)

(declare-fun lt!99671 () tuple2!3748)

(assert (=> b!200856 (= lt!99676 (+!370 lt!99681 lt!99671))))

(declare-fun lt!99677 () ListLongMap!2675)

(declare-fun lt!99685 () ListLongMap!2675)

(assert (=> b!200856 (= lt!99677 lt!99685)))

(assert (=> b!200856 (= lt!99685 (+!370 lt!99679 lt!99675))))

(assert (=> b!200856 (= lt!99679 (+!370 lt!99682 lt!99671))))

(declare-fun lt!99680 () ListLongMap!2675)

(assert (=> b!200856 (= lt!99670 (+!370 (+!370 lt!99680 lt!99671) lt!99675))))

(declare-fun minValue!615 () V!6141)

(assert (=> b!200856 (= lt!99675 (tuple2!3749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200856 (= lt!99671 (tuple2!3749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!200857 () Bool)

(assert (=> b!200857 (= e!131691 (not e!131690))))

(declare-fun res!95842 () Bool)

(assert (=> b!200857 (=> res!95842 e!131690)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200857 (= res!95842 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2092 0))(
  ( (ValueCellFull!2092 (v!4446 V!6141)) (EmptyCell!2092) )
))
(declare-datatypes ((array!8974 0))(
  ( (array!8975 (arr!4237 (Array (_ BitVec 32) ValueCell!2092)) (size!4562 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8974)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!937 (array!8972 array!8974 (_ BitVec 32) (_ BitVec 32) V!6141 V!6141 (_ BitVec 32) Int) ListLongMap!2675)

(assert (=> b!200857 (= lt!99677 (getCurrentListMap!937 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99673 () array!8974)

(assert (=> b!200857 (= lt!99670 (getCurrentListMap!937 _keys!825 lt!99673 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200857 (and (= lt!99680 lt!99681) (= lt!99681 lt!99680))))

(assert (=> b!200857 (= lt!99681 (+!370 lt!99682 lt!99683))))

(assert (=> b!200857 (= lt!99683 (tuple2!3749 k!843 v!520))))

(declare-fun lt!99674 () Unit!6047)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!50 (array!8972 array!8974 (_ BitVec 32) (_ BitVec 32) V!6141 V!6141 (_ BitVec 32) (_ BitVec 64) V!6141 (_ BitVec 32) Int) Unit!6047)

(assert (=> b!200857 (= lt!99674 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!50 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!308 (array!8972 array!8974 (_ BitVec 32) (_ BitVec 32) V!6141 V!6141 (_ BitVec 32) Int) ListLongMap!2675)

(assert (=> b!200857 (= lt!99680 (getCurrentListMapNoExtraKeys!308 _keys!825 lt!99673 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200857 (= lt!99673 (array!8975 (store (arr!4237 _values!649) i!601 (ValueCellFull!2092 v!520)) (size!4562 _values!649)))))

(assert (=> b!200857 (= lt!99682 (getCurrentListMapNoExtraKeys!308 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200858 () Bool)

(declare-fun res!95840 () Bool)

(assert (=> b!200858 (=> (not res!95840) (not e!131691))))

(assert (=> b!200858 (= res!95840 (and (= (size!4562 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4561 _keys!825) (size!4562 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200859 () Bool)

(declare-fun res!95846 () Bool)

(assert (=> b!200859 (=> (not res!95846) (not e!131691))))

(assert (=> b!200859 (= res!95846 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4561 _keys!825))))))

(declare-fun b!200860 () Bool)

(declare-fun res!95844 () Bool)

(assert (=> b!200860 (=> (not res!95844) (not e!131691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8972 (_ BitVec 32)) Bool)

(assert (=> b!200860 (= res!95844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8375 () Bool)

(declare-fun mapRes!8375 () Bool)

(declare-fun tp!18076 () Bool)

(declare-fun e!131692 () Bool)

(assert (=> mapNonEmpty!8375 (= mapRes!8375 (and tp!18076 e!131692))))

(declare-fun mapKey!8375 () (_ BitVec 32))

(declare-fun mapRest!8375 () (Array (_ BitVec 32) ValueCell!2092))

(declare-fun mapValue!8375 () ValueCell!2092)

(assert (=> mapNonEmpty!8375 (= (arr!4237 _values!649) (store mapRest!8375 mapKey!8375 mapValue!8375))))

(declare-fun b!200861 () Bool)

(declare-fun e!131686 () Bool)

(declare-fun tp_is_empty!4871 () Bool)

(assert (=> b!200861 (= e!131686 tp_is_empty!4871)))

(declare-fun mapIsEmpty!8375 () Bool)

(assert (=> mapIsEmpty!8375 mapRes!8375))

(declare-fun b!200863 () Bool)

(assert (=> b!200863 (= e!131692 tp_is_empty!4871)))

(declare-fun b!200864 () Bool)

(declare-fun res!95843 () Bool)

(assert (=> b!200864 (=> (not res!95843) (not e!131691))))

(declare-datatypes ((List!2689 0))(
  ( (Nil!2686) (Cons!2685 (h!3327 (_ BitVec 64)) (t!7628 List!2689)) )
))
(declare-fun arrayNoDuplicates!0 (array!8972 (_ BitVec 32) List!2689) Bool)

(assert (=> b!200864 (= res!95843 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2686))))

(declare-fun b!200865 () Bool)

(assert (=> b!200865 (= e!131687 true)))

(assert (=> b!200865 (= (+!370 lt!99678 lt!99675) (+!370 lt!99685 lt!99683))))

(declare-fun lt!99672 () Unit!6047)

(assert (=> b!200865 (= lt!99672 (addCommutativeForDiffKeys!91 lt!99679 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200862 () Bool)

(declare-fun e!131688 () Bool)

(assert (=> b!200862 (= e!131688 (and e!131686 mapRes!8375))))

(declare-fun condMapEmpty!8375 () Bool)

(declare-fun mapDefault!8375 () ValueCell!2092)

