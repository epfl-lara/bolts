; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20442 () Bool)

(assert start!20442)

(declare-fun b_free!5089 () Bool)

(declare-fun b_next!5089 () Bool)

(assert (=> start!20442 (= b_free!5089 (not b_next!5089))))

(declare-fun tp!18298 () Bool)

(declare-fun b_and!11853 () Bool)

(assert (=> start!20442 (= tp!18298 b_and!11853)))

(declare-fun b!202186 () Bool)

(declare-fun e!132464 () Bool)

(declare-datatypes ((array!9114 0))(
  ( (array!9115 (arr!4307 (Array (_ BitVec 32) (_ BitVec 64))) (size!4632 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9114)

(assert (=> b!202186 (= e!132464 (bvsle #b00000000000000000000000000000000 (size!4632 _keys!825)))))

(declare-datatypes ((V!6241 0))(
  ( (V!6242 (val!2517 Int)) )
))
(declare-datatypes ((tuple2!3810 0))(
  ( (tuple2!3811 (_1!1915 (_ BitVec 64)) (_2!1915 V!6241)) )
))
(declare-fun lt!101449 () tuple2!3810)

(declare-datatypes ((List!2742 0))(
  ( (Nil!2739) (Cons!2738 (h!3380 tuple2!3810) (t!7681 List!2742)) )
))
(declare-datatypes ((ListLongMap!2737 0))(
  ( (ListLongMap!2738 (toList!1384 List!2742)) )
))
(declare-fun lt!101455 () ListLongMap!2737)

(declare-fun lt!101447 () tuple2!3810)

(declare-fun lt!101454 () ListLongMap!2737)

(declare-fun +!401 (ListLongMap!2737 tuple2!3810) ListLongMap!2737)

(assert (=> b!202186 (= (+!401 lt!101454 lt!101447) (+!401 lt!101455 lt!101449))))

(declare-fun minValue!615 () V!6241)

(declare-fun lt!101458 () ListLongMap!2737)

(declare-fun v!520 () V!6241)

(declare-fun k!843 () (_ BitVec 64))

(declare-datatypes ((Unit!6109 0))(
  ( (Unit!6110) )
))
(declare-fun lt!101460 () Unit!6109)

(declare-fun addCommutativeForDiffKeys!122 (ListLongMap!2737 (_ BitVec 64) V!6241 (_ BitVec 64) V!6241) Unit!6109)

(assert (=> b!202186 (= lt!101460 (addCommutativeForDiffKeys!122 lt!101458 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!202187 () Bool)

(declare-fun e!132466 () Bool)

(assert (=> b!202187 (= e!132466 e!132464)))

(declare-fun res!96843 () Bool)

(assert (=> b!202187 (=> res!96843 e!132464)))

(assert (=> b!202187 (= res!96843 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!101453 () ListLongMap!2737)

(assert (=> b!202187 (= lt!101453 lt!101454)))

(assert (=> b!202187 (= lt!101454 (+!401 lt!101458 lt!101449))))

(declare-fun lt!101456 () Unit!6109)

(declare-fun lt!101448 () ListLongMap!2737)

(declare-fun zeroValue!615 () V!6241)

(assert (=> b!202187 (= lt!101456 (addCommutativeForDiffKeys!122 lt!101448 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!101451 () ListLongMap!2737)

(assert (=> b!202187 (= lt!101451 (+!401 lt!101453 lt!101447))))

(declare-fun lt!101457 () ListLongMap!2737)

(declare-fun lt!101450 () tuple2!3810)

(assert (=> b!202187 (= lt!101453 (+!401 lt!101457 lt!101450))))

(declare-fun lt!101452 () ListLongMap!2737)

(assert (=> b!202187 (= lt!101452 lt!101455)))

(assert (=> b!202187 (= lt!101455 (+!401 lt!101458 lt!101447))))

(assert (=> b!202187 (= lt!101458 (+!401 lt!101448 lt!101450))))

(declare-fun lt!101446 () ListLongMap!2737)

(assert (=> b!202187 (= lt!101451 (+!401 (+!401 lt!101446 lt!101450) lt!101447))))

(assert (=> b!202187 (= lt!101447 (tuple2!3811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!202187 (= lt!101450 (tuple2!3811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202188 () Bool)

(declare-fun res!96841 () Bool)

(declare-fun e!132467 () Bool)

(assert (=> b!202188 (=> (not res!96841) (not e!132467))))

(declare-datatypes ((List!2743 0))(
  ( (Nil!2740) (Cons!2739 (h!3381 (_ BitVec 64)) (t!7682 List!2743)) )
))
(declare-fun arrayNoDuplicates!0 (array!9114 (_ BitVec 32) List!2743) Bool)

(assert (=> b!202188 (= res!96841 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2740))))

(declare-fun b!202189 () Bool)

(declare-fun res!96845 () Bool)

(assert (=> b!202189 (=> (not res!96845) (not e!132467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202189 (= res!96845 (validKeyInArray!0 k!843))))

(declare-fun b!202190 () Bool)

(declare-fun res!96839 () Bool)

(assert (=> b!202190 (=> (not res!96839) (not e!132467))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2129 0))(
  ( (ValueCellFull!2129 (v!4483 V!6241)) (EmptyCell!2129) )
))
(declare-datatypes ((array!9116 0))(
  ( (array!9117 (arr!4308 (Array (_ BitVec 32) ValueCell!2129)) (size!4633 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9116)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!202190 (= res!96839 (and (= (size!4633 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4632 _keys!825) (size!4633 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202191 () Bool)

(assert (=> b!202191 (= e!132467 (not e!132466))))

(declare-fun res!96842 () Bool)

(assert (=> b!202191 (=> res!96842 e!132466)))

(assert (=> b!202191 (= res!96842 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!962 (array!9114 array!9116 (_ BitVec 32) (_ BitVec 32) V!6241 V!6241 (_ BitVec 32) Int) ListLongMap!2737)

(assert (=> b!202191 (= lt!101452 (getCurrentListMap!962 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101459 () array!9116)

(assert (=> b!202191 (= lt!101451 (getCurrentListMap!962 _keys!825 lt!101459 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202191 (and (= lt!101446 lt!101457) (= lt!101457 lt!101446))))

(assert (=> b!202191 (= lt!101457 (+!401 lt!101448 lt!101449))))

(assert (=> b!202191 (= lt!101449 (tuple2!3811 k!843 v!520))))

(declare-fun lt!101461 () Unit!6109)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!75 (array!9114 array!9116 (_ BitVec 32) (_ BitVec 32) V!6241 V!6241 (_ BitVec 32) (_ BitVec 64) V!6241 (_ BitVec 32) Int) Unit!6109)

(assert (=> b!202191 (= lt!101461 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!75 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!333 (array!9114 array!9116 (_ BitVec 32) (_ BitVec 32) V!6241 V!6241 (_ BitVec 32) Int) ListLongMap!2737)

(assert (=> b!202191 (= lt!101446 (getCurrentListMapNoExtraKeys!333 _keys!825 lt!101459 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202191 (= lt!101459 (array!9117 (store (arr!4308 _values!649) i!601 (ValueCellFull!2129 v!520)) (size!4633 _values!649)))))

(assert (=> b!202191 (= lt!101448 (getCurrentListMapNoExtraKeys!333 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202192 () Bool)

(declare-fun res!96846 () Bool)

(assert (=> b!202192 (=> (not res!96846) (not e!132467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9114 (_ BitVec 32)) Bool)

(assert (=> b!202192 (= res!96846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202193 () Bool)

(declare-fun e!132469 () Bool)

(declare-fun e!132468 () Bool)

(declare-fun mapRes!8486 () Bool)

(assert (=> b!202193 (= e!132469 (and e!132468 mapRes!8486))))

(declare-fun condMapEmpty!8486 () Bool)

(declare-fun mapDefault!8486 () ValueCell!2129)

