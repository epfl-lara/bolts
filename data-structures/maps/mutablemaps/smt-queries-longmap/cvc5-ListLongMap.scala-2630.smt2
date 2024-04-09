; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39606 () Bool)

(assert start!39606)

(declare-fun b_free!9865 () Bool)

(declare-fun b_next!9865 () Bool)

(assert (=> start!39606 (= b_free!9865 (not b_next!9865))))

(declare-fun tp!35124 () Bool)

(declare-fun b_and!17539 () Bool)

(assert (=> start!39606 (= tp!35124 b_and!17539)))

(declare-fun b!424014 () Bool)

(declare-fun res!248056 () Bool)

(declare-fun e!251941 () Bool)

(assert (=> b!424014 (=> (not res!248056) (not e!251941))))

(declare-datatypes ((array!25861 0))(
  ( (array!25862 (arr!12377 (Array (_ BitVec 32) (_ BitVec 64))) (size!12729 (_ BitVec 32))) )
))
(declare-fun lt!194284 () array!25861)

(declare-datatypes ((List!7269 0))(
  ( (Nil!7266) (Cons!7265 (h!8121 (_ BitVec 64)) (t!12721 List!7269)) )
))
(declare-fun arrayNoDuplicates!0 (array!25861 (_ BitVec 32) List!7269) Bool)

(assert (=> b!424014 (= res!248056 (arrayNoDuplicates!0 lt!194284 #b00000000000000000000000000000000 Nil!7266))))

(declare-fun b!424016 () Bool)

(assert (=> b!424016 (= e!251941 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15795 0))(
  ( (V!15796 (val!5553 Int)) )
))
(declare-fun minValue!515 () V!15795)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5165 0))(
  ( (ValueCellFull!5165 (v!7796 V!15795)) (EmptyCell!5165) )
))
(declare-datatypes ((array!25863 0))(
  ( (array!25864 (arr!12378 (Array (_ BitVec 32) ValueCell!5165)) (size!12730 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25863)

(declare-fun zeroValue!515 () V!15795)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7222 0))(
  ( (tuple2!7223 (_1!3621 (_ BitVec 64)) (_2!3621 V!15795)) )
))
(declare-datatypes ((List!7270 0))(
  ( (Nil!7267) (Cons!7266 (h!8122 tuple2!7222) (t!12722 List!7270)) )
))
(declare-datatypes ((ListLongMap!6149 0))(
  ( (ListLongMap!6150 (toList!3090 List!7270)) )
))
(declare-fun lt!194285 () ListLongMap!6149)

(declare-fun v!412 () V!15795)

(declare-fun getCurrentListMapNoExtraKeys!1291 (array!25861 array!25863 (_ BitVec 32) (_ BitVec 32) V!15795 V!15795 (_ BitVec 32) Int) ListLongMap!6149)

(assert (=> b!424016 (= lt!194285 (getCurrentListMapNoExtraKeys!1291 lt!194284 (array!25864 (store (arr!12378 _values!549) i!563 (ValueCellFull!5165 v!412)) (size!12730 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194286 () ListLongMap!6149)

(declare-fun _keys!709 () array!25861)

(assert (=> b!424016 (= lt!194286 (getCurrentListMapNoExtraKeys!1291 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424017 () Bool)

(declare-fun e!251939 () Bool)

(declare-fun tp_is_empty!11017 () Bool)

(assert (=> b!424017 (= e!251939 tp_is_empty!11017)))

(declare-fun b!424018 () Bool)

(declare-fun res!248055 () Bool)

(declare-fun e!251940 () Bool)

(assert (=> b!424018 (=> (not res!248055) (not e!251940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25861 (_ BitVec 32)) Bool)

(assert (=> b!424018 (= res!248055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424019 () Bool)

(declare-fun e!251937 () Bool)

(assert (=> b!424019 (= e!251937 tp_is_empty!11017)))

(declare-fun mapIsEmpty!18147 () Bool)

(declare-fun mapRes!18147 () Bool)

(assert (=> mapIsEmpty!18147 mapRes!18147))

(declare-fun b!424020 () Bool)

(assert (=> b!424020 (= e!251940 e!251941)))

(declare-fun res!248057 () Bool)

(assert (=> b!424020 (=> (not res!248057) (not e!251941))))

(assert (=> b!424020 (= res!248057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194284 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!424020 (= lt!194284 (array!25862 (store (arr!12377 _keys!709) i!563 k!794) (size!12729 _keys!709)))))

(declare-fun b!424021 () Bool)

(declare-fun res!248053 () Bool)

(assert (=> b!424021 (=> (not res!248053) (not e!251940))))

(assert (=> b!424021 (= res!248053 (or (= (select (arr!12377 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12377 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424022 () Bool)

(declare-fun res!248049 () Bool)

(assert (=> b!424022 (=> (not res!248049) (not e!251940))))

(assert (=> b!424022 (= res!248049 (and (= (size!12730 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12729 _keys!709) (size!12730 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424023 () Bool)

(declare-fun res!248052 () Bool)

(assert (=> b!424023 (=> (not res!248052) (not e!251941))))

(assert (=> b!424023 (= res!248052 (bvsle from!863 i!563))))

(declare-fun b!424015 () Bool)

(declare-fun res!248058 () Bool)

(assert (=> b!424015 (=> (not res!248058) (not e!251940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424015 (= res!248058 (validKeyInArray!0 k!794))))

(declare-fun res!248047 () Bool)

(assert (=> start!39606 (=> (not res!248047) (not e!251940))))

(assert (=> start!39606 (= res!248047 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12729 _keys!709))))))

(assert (=> start!39606 e!251940))

(assert (=> start!39606 tp_is_empty!11017))

(assert (=> start!39606 tp!35124))

(assert (=> start!39606 true))

(declare-fun e!251936 () Bool)

(declare-fun array_inv!9022 (array!25863) Bool)

(assert (=> start!39606 (and (array_inv!9022 _values!549) e!251936)))

(declare-fun array_inv!9023 (array!25861) Bool)

(assert (=> start!39606 (array_inv!9023 _keys!709)))

(declare-fun b!424024 () Bool)

(declare-fun res!248054 () Bool)

(assert (=> b!424024 (=> (not res!248054) (not e!251940))))

(assert (=> b!424024 (= res!248054 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12729 _keys!709))))))

(declare-fun b!424025 () Bool)

(assert (=> b!424025 (= e!251936 (and e!251937 mapRes!18147))))

(declare-fun condMapEmpty!18147 () Bool)

(declare-fun mapDefault!18147 () ValueCell!5165)

