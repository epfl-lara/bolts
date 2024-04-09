; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37408 () Bool)

(assert start!37408)

(declare-fun b_free!8527 () Bool)

(declare-fun b_next!8527 () Bool)

(assert (=> start!37408 (= b_free!8527 (not b_next!8527))))

(declare-fun tp!30297 () Bool)

(declare-fun b_and!15787 () Bool)

(assert (=> start!37408 (= tp!30297 b_and!15787)))

(declare-fun mapNonEmpty!15327 () Bool)

(declare-fun mapRes!15327 () Bool)

(declare-fun tp!30296 () Bool)

(declare-fun e!231216 () Bool)

(assert (=> mapNonEmpty!15327 (= mapRes!15327 (and tp!30296 e!231216))))

(declare-datatypes ((V!13339 0))(
  ( (V!13340 (val!4632 Int)) )
))
(declare-datatypes ((ValueCell!4244 0))(
  ( (ValueCellFull!4244 (v!6825 V!13339)) (EmptyCell!4244) )
))
(declare-fun mapValue!15327 () ValueCell!4244)

(declare-datatypes ((array!22247 0))(
  ( (array!22248 (arr!10589 (Array (_ BitVec 32) ValueCell!4244)) (size!10941 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22247)

(declare-fun mapKey!15327 () (_ BitVec 32))

(declare-fun mapRest!15327 () (Array (_ BitVec 32) ValueCell!4244))

(assert (=> mapNonEmpty!15327 (= (arr!10589 _values!506) (store mapRest!15327 mapKey!15327 mapValue!15327))))

(declare-fun b!380115 () Bool)

(declare-fun res!215809 () Bool)

(declare-fun e!231217 () Bool)

(assert (=> b!380115 (=> (not res!215809) (not e!231217))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22249 0))(
  ( (array!22250 (arr!10590 (Array (_ BitVec 32) (_ BitVec 64))) (size!10942 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22249)

(assert (=> b!380115 (= res!215809 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10942 _keys!658))))))

(declare-fun b!380116 () Bool)

(declare-fun e!231214 () Bool)

(assert (=> b!380116 (= e!231214 true)))

(declare-datatypes ((tuple2!6172 0))(
  ( (tuple2!6173 (_1!3096 (_ BitVec 64)) (_2!3096 V!13339)) )
))
(declare-datatypes ((List!6044 0))(
  ( (Nil!6041) (Cons!6040 (h!6896 tuple2!6172) (t!11202 List!6044)) )
))
(declare-datatypes ((ListLongMap!5099 0))(
  ( (ListLongMap!5100 (toList!2565 List!6044)) )
))
(declare-fun lt!177909 () ListLongMap!5099)

(declare-fun lt!177903 () ListLongMap!5099)

(declare-fun lt!177908 () tuple2!6172)

(declare-fun +!906 (ListLongMap!5099 tuple2!6172) ListLongMap!5099)

(assert (=> b!380116 (= lt!177909 (+!906 lt!177903 lt!177908))))

(declare-fun lt!177906 () ListLongMap!5099)

(declare-fun v!373 () V!13339)

(declare-datatypes ((Unit!11707 0))(
  ( (Unit!11708) )
))
(declare-fun lt!177910 () Unit!11707)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!13339)

(declare-fun addCommutativeForDiffKeys!317 (ListLongMap!5099 (_ BitVec 64) V!13339 (_ BitVec 64) V!13339) Unit!11707)

(assert (=> b!380116 (= lt!177910 (addCommutativeForDiffKeys!317 lt!177906 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380117 () Bool)

(declare-fun e!231219 () Bool)

(declare-fun e!231212 () Bool)

(assert (=> b!380117 (= e!231219 (not e!231212))))

(declare-fun res!215808 () Bool)

(assert (=> b!380117 (=> res!215808 e!231212)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380117 (= res!215808 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!177913 () ListLongMap!5099)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13339)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun getCurrentListMap!1990 (array!22249 array!22247 (_ BitVec 32) (_ BitVec 32) V!13339 V!13339 (_ BitVec 32) Int) ListLongMap!5099)

(assert (=> b!380117 (= lt!177913 (getCurrentListMap!1990 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177905 () array!22249)

(declare-fun lt!177911 () ListLongMap!5099)

(declare-fun lt!177912 () array!22247)

(assert (=> b!380117 (= lt!177911 (getCurrentListMap!1990 lt!177905 lt!177912 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177904 () ListLongMap!5099)

(declare-fun lt!177907 () ListLongMap!5099)

(assert (=> b!380117 (and (= lt!177904 lt!177907) (= lt!177907 lt!177904))))

(assert (=> b!380117 (= lt!177907 (+!906 lt!177906 lt!177908))))

(assert (=> b!380117 (= lt!177908 (tuple2!6173 k!778 v!373))))

(declare-fun lt!177901 () Unit!11707)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!141 (array!22249 array!22247 (_ BitVec 32) (_ BitVec 32) V!13339 V!13339 (_ BitVec 32) (_ BitVec 64) V!13339 (_ BitVec 32) Int) Unit!11707)

(assert (=> b!380117 (= lt!177901 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!141 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!808 (array!22249 array!22247 (_ BitVec 32) (_ BitVec 32) V!13339 V!13339 (_ BitVec 32) Int) ListLongMap!5099)

(assert (=> b!380117 (= lt!177904 (getCurrentListMapNoExtraKeys!808 lt!177905 lt!177912 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380117 (= lt!177912 (array!22248 (store (arr!10589 _values!506) i!548 (ValueCellFull!4244 v!373)) (size!10941 _values!506)))))

(assert (=> b!380117 (= lt!177906 (getCurrentListMapNoExtraKeys!808 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!380118 () Bool)

(declare-fun res!215800 () Bool)

(assert (=> b!380118 (=> (not res!215800) (not e!231217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22249 (_ BitVec 32)) Bool)

(assert (=> b!380118 (= res!215800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!215805 () Bool)

(assert (=> start!37408 (=> (not res!215805) (not e!231217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37408 (= res!215805 (validMask!0 mask!970))))

(assert (=> start!37408 e!231217))

(declare-fun e!231218 () Bool)

(declare-fun array_inv!7790 (array!22247) Bool)

(assert (=> start!37408 (and (array_inv!7790 _values!506) e!231218)))

(assert (=> start!37408 tp!30297))

(assert (=> start!37408 true))

(declare-fun tp_is_empty!9175 () Bool)

(assert (=> start!37408 tp_is_empty!9175))

(declare-fun array_inv!7791 (array!22249) Bool)

(assert (=> start!37408 (array_inv!7791 _keys!658)))

(declare-fun b!380119 () Bool)

(assert (=> b!380119 (= e!231216 tp_is_empty!9175)))

(declare-fun b!380120 () Bool)

(declare-fun res!215806 () Bool)

(assert (=> b!380120 (=> (not res!215806) (not e!231217))))

(assert (=> b!380120 (= res!215806 (or (= (select (arr!10590 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10590 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380121 () Bool)

(declare-fun e!231215 () Bool)

(assert (=> b!380121 (= e!231218 (and e!231215 mapRes!15327))))

(declare-fun condMapEmpty!15327 () Bool)

(declare-fun mapDefault!15327 () ValueCell!4244)

