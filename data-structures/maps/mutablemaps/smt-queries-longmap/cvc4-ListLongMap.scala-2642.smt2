; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39682 () Bool)

(assert start!39682)

(declare-fun b_free!9941 () Bool)

(declare-fun b_next!9941 () Bool)

(assert (=> start!39682 (= b_free!9941 (not b_next!9941))))

(declare-fun tp!35351 () Bool)

(declare-fun b_and!17615 () Bool)

(assert (=> start!39682 (= tp!35351 b_and!17615)))

(declare-fun b!425804 () Bool)

(declare-fun e!252701 () Bool)

(declare-fun e!252706 () Bool)

(assert (=> b!425804 (= e!252701 e!252706)))

(declare-fun res!249499 () Bool)

(assert (=> b!425804 (=> (not res!249499) (not e!252706))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!425804 (= res!249499 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15895 0))(
  ( (V!15896 (val!5591 Int)) )
))
(declare-fun minValue!515 () V!15895)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7286 0))(
  ( (tuple2!7287 (_1!3653 (_ BitVec 64)) (_2!3653 V!15895)) )
))
(declare-datatypes ((List!7331 0))(
  ( (Nil!7328) (Cons!7327 (h!8183 tuple2!7286) (t!12783 List!7331)) )
))
(declare-datatypes ((ListLongMap!6213 0))(
  ( (ListLongMap!6214 (toList!3122 List!7331)) )
))
(declare-fun lt!194789 () ListLongMap!6213)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((array!26011 0))(
  ( (array!26012 (arr!12452 (Array (_ BitVec 32) (_ BitVec 64))) (size!12804 (_ BitVec 32))) )
))
(declare-fun lt!194786 () array!26011)

(declare-datatypes ((ValueCell!5203 0))(
  ( (ValueCellFull!5203 (v!7834 V!15895)) (EmptyCell!5203) )
))
(declare-datatypes ((array!26013 0))(
  ( (array!26014 (arr!12453 (Array (_ BitVec 32) ValueCell!5203)) (size!12805 (_ BitVec 32))) )
))
(declare-fun lt!194788 () array!26013)

(declare-fun zeroValue!515 () V!15895)

(declare-fun getCurrentListMapNoExtraKeys!1323 (array!26011 array!26013 (_ BitVec 32) (_ BitVec 32) V!15895 V!15895 (_ BitVec 32) Int) ListLongMap!6213)

(assert (=> b!425804 (= lt!194789 (getCurrentListMapNoExtraKeys!1323 lt!194786 lt!194788 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26013)

(declare-fun v!412 () V!15895)

(assert (=> b!425804 (= lt!194788 (array!26014 (store (arr!12453 _values!549) i!563 (ValueCellFull!5203 v!412)) (size!12805 _values!549)))))

(declare-fun lt!194790 () ListLongMap!6213)

(declare-fun _keys!709 () array!26011)

(assert (=> b!425804 (= lt!194790 (getCurrentListMapNoExtraKeys!1323 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425805 () Bool)

(declare-fun e!252702 () Bool)

(declare-fun tp_is_empty!11093 () Bool)

(assert (=> b!425805 (= e!252702 tp_is_empty!11093)))

(declare-fun b!425806 () Bool)

(declare-fun res!249502 () Bool)

(assert (=> b!425806 (=> (not res!249502) (not e!252701))))

(declare-datatypes ((List!7332 0))(
  ( (Nil!7329) (Cons!7328 (h!8184 (_ BitVec 64)) (t!12784 List!7332)) )
))
(declare-fun arrayNoDuplicates!0 (array!26011 (_ BitVec 32) List!7332) Bool)

(assert (=> b!425806 (= res!249502 (arrayNoDuplicates!0 lt!194786 #b00000000000000000000000000000000 Nil!7329))))

(declare-fun b!425807 () Bool)

(declare-fun e!252705 () Bool)

(assert (=> b!425807 (= e!252705 tp_is_empty!11093)))

(declare-fun b!425808 () Bool)

(declare-fun res!249504 () Bool)

(declare-fun e!252704 () Bool)

(assert (=> b!425808 (=> (not res!249504) (not e!252704))))

(assert (=> b!425808 (= res!249504 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7329))))

(declare-fun b!425809 () Bool)

(declare-fun res!249495 () Bool)

(assert (=> b!425809 (=> (not res!249495) (not e!252704))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425809 (= res!249495 (validKeyInArray!0 k!794))))

(declare-fun b!425810 () Bool)

(declare-fun res!249507 () Bool)

(assert (=> b!425810 (=> (not res!249507) (not e!252704))))

(declare-fun arrayContainsKey!0 (array!26011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425810 (= res!249507 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!425811 () Bool)

(declare-fun res!249496 () Bool)

(assert (=> b!425811 (=> (not res!249496) (not e!252704))))

(assert (=> b!425811 (= res!249496 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12804 _keys!709))))))

(declare-fun b!425812 () Bool)

(declare-fun res!249497 () Bool)

(assert (=> b!425812 (=> (not res!249497) (not e!252704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26011 (_ BitVec 32)) Bool)

(assert (=> b!425812 (= res!249497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!425813 () Bool)

(declare-fun e!252700 () Bool)

(declare-fun mapRes!18261 () Bool)

(assert (=> b!425813 (= e!252700 (and e!252702 mapRes!18261))))

(declare-fun condMapEmpty!18261 () Bool)

(declare-fun mapDefault!18261 () ValueCell!5203)

