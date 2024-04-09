; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72446 () Bool)

(assert start!72446)

(declare-fun b_free!13603 () Bool)

(declare-fun b_next!13603 () Bool)

(assert (=> start!72446 (= b_free!13603 (not b_next!13603))))

(declare-fun tp!47908 () Bool)

(declare-fun b_and!22707 () Bool)

(assert (=> start!72446 (= tp!47908 b_and!22707)))

(declare-datatypes ((V!25673 0))(
  ( (V!25674 (val!7782 Int)) )
))
(declare-datatypes ((tuple2!10326 0))(
  ( (tuple2!10327 (_1!5173 (_ BitVec 64)) (_2!5173 V!25673)) )
))
(declare-datatypes ((List!16158 0))(
  ( (Nil!16155) (Cons!16154 (h!17285 tuple2!10326) (t!22537 List!16158)) )
))
(declare-datatypes ((ListLongMap!9109 0))(
  ( (ListLongMap!9110 (toList!4570 List!16158)) )
))
(declare-fun call!37043 () ListLongMap!9109)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47190 0))(
  ( (array!47191 (arr!22622 (Array (_ BitVec 32) (_ BitVec 64))) (size!23063 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47190)

(declare-datatypes ((ValueCell!7295 0))(
  ( (ValueCellFull!7295 (v!10203 V!25673)) (EmptyCell!7295) )
))
(declare-datatypes ((array!47192 0))(
  ( (array!47193 (arr!22623 (Array (_ BitVec 32) ValueCell!7295)) (size!23064 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47192)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25673)

(declare-fun zeroValue!654 () V!25673)

(declare-fun v!557 () V!25673)

(declare-fun bm!37039 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2563 (array!47190 array!47192 (_ BitVec 32) (_ BitVec 32) V!25673 V!25673 (_ BitVec 32) Int) ListLongMap!9109)

(assert (=> bm!37039 (= call!37043 (getCurrentListMapNoExtraKeys!2563 _keys!868 (array!47193 (store (arr!22623 _values!688) i!612 (ValueCellFull!7295 v!557)) (size!23064 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839420 () Bool)

(declare-fun e!468487 () Bool)

(assert (=> b!839420 (= e!468487 (not true))))

(declare-fun e!468492 () Bool)

(assert (=> b!839420 e!468492))

(declare-fun c!91182 () Bool)

(assert (=> b!839420 (= c!91182 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((Unit!28830 0))(
  ( (Unit!28831) )
))
(declare-fun lt!380715 () Unit!28830)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!264 (array!47190 array!47192 (_ BitVec 32) (_ BitVec 32) V!25673 V!25673 (_ BitVec 32) (_ BitVec 64) V!25673 (_ BitVec 32) Int) Unit!28830)

(assert (=> b!839420 (= lt!380715 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!264 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839421 () Bool)

(declare-fun e!468488 () Bool)

(declare-fun tp_is_empty!15469 () Bool)

(assert (=> b!839421 (= e!468488 tp_is_empty!15469)))

(declare-fun b!839422 () Bool)

(declare-fun res!570841 () Bool)

(assert (=> b!839422 (=> (not res!570841) (not e!468487))))

(assert (=> b!839422 (= res!570841 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23063 _keys!868))))))

(declare-fun b!839423 () Bool)

(declare-fun e!468490 () Bool)

(assert (=> b!839423 (= e!468490 tp_is_empty!15469)))

(declare-fun res!570844 () Bool)

(assert (=> start!72446 (=> (not res!570844) (not e!468487))))

(assert (=> start!72446 (= res!570844 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23063 _keys!868))))))

(assert (=> start!72446 e!468487))

(assert (=> start!72446 tp_is_empty!15469))

(assert (=> start!72446 true))

(assert (=> start!72446 tp!47908))

(declare-fun array_inv!17992 (array!47190) Bool)

(assert (=> start!72446 (array_inv!17992 _keys!868)))

(declare-fun e!468489 () Bool)

(declare-fun array_inv!17993 (array!47192) Bool)

(assert (=> start!72446 (and (array_inv!17993 _values!688) e!468489)))

(declare-fun b!839424 () Bool)

(declare-fun res!570839 () Bool)

(assert (=> b!839424 (=> (not res!570839) (not e!468487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47190 (_ BitVec 32)) Bool)

(assert (=> b!839424 (= res!570839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839425 () Bool)

(declare-fun res!570845 () Bool)

(assert (=> b!839425 (=> (not res!570845) (not e!468487))))

(assert (=> b!839425 (= res!570845 (and (= (size!23064 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23063 _keys!868) (size!23064 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839426 () Bool)

(declare-fun res!570840 () Bool)

(assert (=> b!839426 (=> (not res!570840) (not e!468487))))

(declare-datatypes ((List!16159 0))(
  ( (Nil!16156) (Cons!16155 (h!17286 (_ BitVec 64)) (t!22538 List!16159)) )
))
(declare-fun arrayNoDuplicates!0 (array!47190 (_ BitVec 32) List!16159) Bool)

(assert (=> b!839426 (= res!570840 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16156))))

(declare-fun b!839427 () Bool)

(declare-fun res!570843 () Bool)

(assert (=> b!839427 (=> (not res!570843) (not e!468487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839427 (= res!570843 (validKeyInArray!0 k!854))))

(declare-fun b!839428 () Bool)

(declare-fun mapRes!24803 () Bool)

(assert (=> b!839428 (= e!468489 (and e!468488 mapRes!24803))))

(declare-fun condMapEmpty!24803 () Bool)

(declare-fun mapDefault!24803 () ValueCell!7295)

