; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37396 () Bool)

(assert start!37396)

(declare-fun b_free!8515 () Bool)

(declare-fun b_next!8515 () Bool)

(assert (=> start!37396 (= b_free!8515 (not b_next!8515))))

(declare-fun tp!30261 () Bool)

(declare-fun b_and!15775 () Bool)

(assert (=> start!37396 (= tp!30261 b_and!15775)))

(declare-fun b!379845 () Bool)

(declare-fun e!231075 () Bool)

(declare-fun tp_is_empty!9163 () Bool)

(assert (=> b!379845 (= e!231075 tp_is_empty!9163)))

(declare-fun b!379846 () Bool)

(declare-fun res!215585 () Bool)

(declare-fun e!231068 () Bool)

(assert (=> b!379846 (=> (not res!215585) (not e!231068))))

(declare-datatypes ((array!22223 0))(
  ( (array!22224 (arr!10577 (Array (_ BitVec 32) (_ BitVec 64))) (size!10929 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22223)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379846 (= res!215585 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379847 () Bool)

(declare-fun e!231071 () Bool)

(assert (=> b!379847 (= e!231068 e!231071)))

(declare-fun res!215593 () Bool)

(assert (=> b!379847 (=> (not res!215593) (not e!231071))))

(declare-fun lt!177679 () array!22223)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22223 (_ BitVec 32)) Bool)

(assert (=> b!379847 (= res!215593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177679 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379847 (= lt!177679 (array!22224 (store (arr!10577 _keys!658) i!548 k!778) (size!10929 _keys!658)))))

(declare-fun mapIsEmpty!15309 () Bool)

(declare-fun mapRes!15309 () Bool)

(assert (=> mapIsEmpty!15309 mapRes!15309))

(declare-fun b!379848 () Bool)

(declare-fun e!231070 () Bool)

(assert (=> b!379848 (= e!231070 tp_is_empty!9163)))

(declare-fun b!379849 () Bool)

(declare-fun res!215584 () Bool)

(assert (=> b!379849 (=> (not res!215584) (not e!231068))))

(assert (=> b!379849 (= res!215584 (or (= (select (arr!10577 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10577 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379850 () Bool)

(declare-fun e!231069 () Bool)

(assert (=> b!379850 (= e!231069 true)))

(declare-datatypes ((V!13323 0))(
  ( (V!13324 (val!4626 Int)) )
))
(declare-datatypes ((tuple2!6162 0))(
  ( (tuple2!6163 (_1!3091 (_ BitVec 64)) (_2!3091 V!13323)) )
))
(declare-datatypes ((List!6034 0))(
  ( (Nil!6031) (Cons!6030 (h!6886 tuple2!6162) (t!11192 List!6034)) )
))
(declare-datatypes ((ListLongMap!5089 0))(
  ( (ListLongMap!5090 (toList!2560 List!6034)) )
))
(declare-fun lt!177672 () ListLongMap!5089)

(declare-fun lt!177673 () ListLongMap!5089)

(declare-fun lt!177668 () tuple2!6162)

(declare-fun +!901 (ListLongMap!5089 tuple2!6162) ListLongMap!5089)

(assert (=> b!379850 (= lt!177672 (+!901 lt!177673 lt!177668))))

(declare-fun v!373 () V!13323)

(declare-fun lt!177676 () ListLongMap!5089)

(declare-fun minValue!472 () V!13323)

(declare-datatypes ((Unit!11697 0))(
  ( (Unit!11698) )
))
(declare-fun lt!177675 () Unit!11697)

(declare-fun addCommutativeForDiffKeys!312 (ListLongMap!5089 (_ BitVec 64) V!13323 (_ BitVec 64) V!13323) Unit!11697)

(assert (=> b!379850 (= lt!177675 (addCommutativeForDiffKeys!312 lt!177676 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379851 () Bool)

(declare-fun e!231072 () Bool)

(assert (=> b!379851 (= e!231072 e!231069)))

(declare-fun res!215590 () Bool)

(assert (=> b!379851 (=> res!215590 e!231069)))

(assert (=> b!379851 (= res!215590 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!177674 () ListLongMap!5089)

(assert (=> b!379851 (= lt!177674 lt!177673)))

(declare-fun lt!177670 () tuple2!6162)

(assert (=> b!379851 (= lt!177673 (+!901 lt!177676 lt!177670))))

(declare-fun lt!177671 () ListLongMap!5089)

(assert (=> b!379851 (= lt!177671 lt!177672)))

(declare-fun lt!177669 () ListLongMap!5089)

(assert (=> b!379851 (= lt!177672 (+!901 lt!177669 lt!177670))))

(declare-fun lt!177678 () ListLongMap!5089)

(assert (=> b!379851 (= lt!177671 (+!901 lt!177678 lt!177670))))

(assert (=> b!379851 (= lt!177670 (tuple2!6163 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379852 () Bool)

(declare-fun res!215591 () Bool)

(assert (=> b!379852 (=> (not res!215591) (not e!231068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379852 (= res!215591 (validKeyInArray!0 k!778))))

(declare-fun b!379853 () Bool)

(assert (=> b!379853 (= e!231071 (not e!231072))))

(declare-fun res!215586 () Bool)

(assert (=> b!379853 (=> res!215586 e!231072)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379853 (= res!215586 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4238 0))(
  ( (ValueCellFull!4238 (v!6819 V!13323)) (EmptyCell!4238) )
))
(declare-datatypes ((array!22225 0))(
  ( (array!22226 (arr!10578 (Array (_ BitVec 32) ValueCell!4238)) (size!10930 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22225)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13323)

(declare-fun getCurrentListMap!1985 (array!22223 array!22225 (_ BitVec 32) (_ BitVec 32) V!13323 V!13323 (_ BitVec 32) Int) ListLongMap!5089)

(assert (=> b!379853 (= lt!177674 (getCurrentListMap!1985 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177667 () array!22225)

(assert (=> b!379853 (= lt!177671 (getCurrentListMap!1985 lt!177679 lt!177667 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379853 (and (= lt!177678 lt!177669) (= lt!177669 lt!177678))))

(assert (=> b!379853 (= lt!177669 (+!901 lt!177676 lt!177668))))

(assert (=> b!379853 (= lt!177668 (tuple2!6163 k!778 v!373))))

(declare-fun lt!177677 () Unit!11697)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!136 (array!22223 array!22225 (_ BitVec 32) (_ BitVec 32) V!13323 V!13323 (_ BitVec 32) (_ BitVec 64) V!13323 (_ BitVec 32) Int) Unit!11697)

(assert (=> b!379853 (= lt!177677 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!136 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!803 (array!22223 array!22225 (_ BitVec 32) (_ BitVec 32) V!13323 V!13323 (_ BitVec 32) Int) ListLongMap!5089)

(assert (=> b!379853 (= lt!177678 (getCurrentListMapNoExtraKeys!803 lt!177679 lt!177667 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379853 (= lt!177667 (array!22226 (store (arr!10578 _values!506) i!548 (ValueCellFull!4238 v!373)) (size!10930 _values!506)))))

(assert (=> b!379853 (= lt!177676 (getCurrentListMapNoExtraKeys!803 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!215592 () Bool)

(assert (=> start!37396 (=> (not res!215592) (not e!231068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37396 (= res!215592 (validMask!0 mask!970))))

(assert (=> start!37396 e!231068))

(declare-fun e!231074 () Bool)

(declare-fun array_inv!7780 (array!22225) Bool)

(assert (=> start!37396 (and (array_inv!7780 _values!506) e!231074)))

(assert (=> start!37396 tp!30261))

(assert (=> start!37396 true))

(assert (=> start!37396 tp_is_empty!9163))

(declare-fun array_inv!7781 (array!22223) Bool)

(assert (=> start!37396 (array_inv!7781 _keys!658)))

(declare-fun b!379854 () Bool)

(assert (=> b!379854 (= e!231074 (and e!231070 mapRes!15309))))

(declare-fun condMapEmpty!15309 () Bool)

(declare-fun mapDefault!15309 () ValueCell!4238)

