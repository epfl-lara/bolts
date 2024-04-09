; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39688 () Bool)

(assert start!39688)

(declare-fun b_free!9947 () Bool)

(declare-fun b_next!9947 () Bool)

(assert (=> start!39688 (= b_free!9947 (not b_next!9947))))

(declare-fun tp!35369 () Bool)

(declare-fun b_and!17621 () Bool)

(assert (=> start!39688 (= tp!35369 b_and!17621)))

(declare-fun b!425948 () Bool)

(declare-fun res!249614 () Bool)

(declare-fun e!252768 () Bool)

(assert (=> b!425948 (=> (not res!249614) (not e!252768))))

(declare-datatypes ((array!26023 0))(
  ( (array!26024 (arr!12458 (Array (_ BitVec 32) (_ BitVec 64))) (size!12810 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26023)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26023 (_ BitVec 32)) Bool)

(assert (=> b!425948 (= res!249614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18270 () Bool)

(declare-fun mapRes!18270 () Bool)

(assert (=> mapIsEmpty!18270 mapRes!18270))

(declare-fun b!425949 () Bool)

(declare-fun res!249615 () Bool)

(assert (=> b!425949 (=> (not res!249615) (not e!252768))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425949 (= res!249615 (validKeyInArray!0 k!794))))

(declare-fun b!425951 () Bool)

(declare-fun e!252765 () Bool)

(assert (=> b!425951 (= e!252768 e!252765)))

(declare-fun res!249616 () Bool)

(assert (=> b!425951 (=> (not res!249616) (not e!252765))))

(declare-fun lt!194835 () array!26023)

(assert (=> b!425951 (= res!249616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194835 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425951 (= lt!194835 (array!26024 (store (arr!12458 _keys!709) i!563 k!794) (size!12810 _keys!709)))))

(declare-fun b!425952 () Bool)

(declare-fun e!252764 () Bool)

(assert (=> b!425952 (= e!252765 e!252764)))

(declare-fun res!249623 () Bool)

(assert (=> b!425952 (=> (not res!249623) (not e!252764))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!425952 (= res!249623 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15903 0))(
  ( (V!15904 (val!5594 Int)) )
))
(declare-fun minValue!515 () V!15903)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5206 0))(
  ( (ValueCellFull!5206 (v!7837 V!15903)) (EmptyCell!5206) )
))
(declare-datatypes ((array!26025 0))(
  ( (array!26026 (arr!12459 (Array (_ BitVec 32) ValueCell!5206)) (size!12811 (_ BitVec 32))) )
))
(declare-fun lt!194831 () array!26025)

(declare-datatypes ((tuple2!7292 0))(
  ( (tuple2!7293 (_1!3656 (_ BitVec 64)) (_2!3656 V!15903)) )
))
(declare-datatypes ((List!7337 0))(
  ( (Nil!7334) (Cons!7333 (h!8189 tuple2!7292) (t!12789 List!7337)) )
))
(declare-datatypes ((ListLongMap!6219 0))(
  ( (ListLongMap!6220 (toList!3125 List!7337)) )
))
(declare-fun lt!194834 () ListLongMap!6219)

(declare-fun zeroValue!515 () V!15903)

(declare-fun getCurrentListMapNoExtraKeys!1326 (array!26023 array!26025 (_ BitVec 32) (_ BitVec 32) V!15903 V!15903 (_ BitVec 32) Int) ListLongMap!6219)

(assert (=> b!425952 (= lt!194834 (getCurrentListMapNoExtraKeys!1326 lt!194835 lt!194831 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26025)

(declare-fun v!412 () V!15903)

(assert (=> b!425952 (= lt!194831 (array!26026 (store (arr!12459 _values!549) i!563 (ValueCellFull!5206 v!412)) (size!12811 _values!549)))))

(declare-fun lt!194833 () ListLongMap!6219)

(assert (=> b!425952 (= lt!194833 (getCurrentListMapNoExtraKeys!1326 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425953 () Bool)

(declare-fun res!249622 () Bool)

(assert (=> b!425953 (=> (not res!249622) (not e!252768))))

(assert (=> b!425953 (= res!249622 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12810 _keys!709))))))

(declare-fun b!425954 () Bool)

(declare-fun res!249619 () Bool)

(assert (=> b!425954 (=> (not res!249619) (not e!252765))))

(declare-datatypes ((List!7338 0))(
  ( (Nil!7335) (Cons!7334 (h!8190 (_ BitVec 64)) (t!12790 List!7338)) )
))
(declare-fun arrayNoDuplicates!0 (array!26023 (_ BitVec 32) List!7338) Bool)

(assert (=> b!425954 (= res!249619 (arrayNoDuplicates!0 lt!194835 #b00000000000000000000000000000000 Nil!7335))))

(declare-fun res!249618 () Bool)

(assert (=> start!39688 (=> (not res!249618) (not e!252768))))

(assert (=> start!39688 (= res!249618 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12810 _keys!709))))))

(assert (=> start!39688 e!252768))

(declare-fun tp_is_empty!11099 () Bool)

(assert (=> start!39688 tp_is_empty!11099))

(assert (=> start!39688 tp!35369))

(assert (=> start!39688 true))

(declare-fun e!252763 () Bool)

(declare-fun array_inv!9080 (array!26025) Bool)

(assert (=> start!39688 (and (array_inv!9080 _values!549) e!252763)))

(declare-fun array_inv!9081 (array!26023) Bool)

(assert (=> start!39688 (array_inv!9081 _keys!709)))

(declare-fun b!425950 () Bool)

(declare-fun e!252766 () Bool)

(assert (=> b!425950 (= e!252763 (and e!252766 mapRes!18270))))

(declare-fun condMapEmpty!18270 () Bool)

(declare-fun mapDefault!18270 () ValueCell!5206)

