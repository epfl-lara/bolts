; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34850 () Bool)

(assert start!34850)

(declare-fun b_free!7627 () Bool)

(declare-fun b_next!7627 () Bool)

(assert (=> start!34850 (= b_free!7627 (not b_next!7627))))

(declare-fun tp!26448 () Bool)

(declare-fun b_and!14867 () Bool)

(assert (=> start!34850 (= tp!26448 b_and!14867)))

(declare-fun b!348702 () Bool)

(declare-fun res!193309 () Bool)

(declare-fun e!213628 () Bool)

(assert (=> b!348702 (=> (not res!193309) (not e!213628))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11083 0))(
  ( (V!11084 (val!3834 Int)) )
))
(declare-fun zeroValue!1467 () V!11083)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3446 0))(
  ( (ValueCellFull!3446 (v!6013 V!11083)) (EmptyCell!3446) )
))
(declare-datatypes ((array!18711 0))(
  ( (array!18712 (arr!8862 (Array (_ BitVec 32) ValueCell!3446)) (size!9214 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18711)

(declare-datatypes ((array!18713 0))(
  ( (array!18714 (arr!8863 (Array (_ BitVec 32) (_ BitVec 64))) (size!9215 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18713)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11083)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((tuple2!5536 0))(
  ( (tuple2!5537 (_1!2778 (_ BitVec 64)) (_2!2778 V!11083)) )
))
(declare-datatypes ((List!5178 0))(
  ( (Nil!5175) (Cons!5174 (h!6030 tuple2!5536) (t!10316 List!5178)) )
))
(declare-datatypes ((ListLongMap!4463 0))(
  ( (ListLongMap!4464 (toList!2247 List!5178)) )
))
(declare-fun contains!2308 (ListLongMap!4463 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1764 (array!18713 array!18711 (_ BitVec 32) (_ BitVec 32) V!11083 V!11083 (_ BitVec 32) Int) ListLongMap!4463)

(assert (=> b!348702 (= res!193309 (not (contains!2308 (getCurrentListMap!1764 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348703 () Bool)

(declare-fun e!213626 () Bool)

(declare-fun tp_is_empty!7579 () Bool)

(assert (=> b!348703 (= e!213626 tp_is_empty!7579)))

(declare-fun b!348704 () Bool)

(declare-fun res!193308 () Bool)

(assert (=> b!348704 (=> (not res!193308) (not e!213628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18713 (_ BitVec 32)) Bool)

(assert (=> b!348704 (= res!193308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12828 () Bool)

(declare-fun mapRes!12828 () Bool)

(declare-fun tp!26447 () Bool)

(assert (=> mapNonEmpty!12828 (= mapRes!12828 (and tp!26447 e!213626))))

(declare-fun mapValue!12828 () ValueCell!3446)

(declare-fun mapKey!12828 () (_ BitVec 32))

(declare-fun mapRest!12828 () (Array (_ BitVec 32) ValueCell!3446))

(assert (=> mapNonEmpty!12828 (= (arr!8862 _values!1525) (store mapRest!12828 mapKey!12828 mapValue!12828))))

(declare-fun b!348705 () Bool)

(declare-fun e!213625 () Bool)

(assert (=> b!348705 (= e!213625 false)))

(declare-fun lt!163923 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18713 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348705 (= lt!163923 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348706 () Bool)

(declare-fun res!193311 () Bool)

(assert (=> b!348706 (=> (not res!193311) (not e!213628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348706 (= res!193311 (validKeyInArray!0 k!1348))))

(declare-fun b!348707 () Bool)

(declare-fun e!213629 () Bool)

(assert (=> b!348707 (= e!213629 tp_is_empty!7579)))

(declare-fun b!348708 () Bool)

(declare-fun e!213624 () Bool)

(assert (=> b!348708 (= e!213624 (and e!213629 mapRes!12828))))

(declare-fun condMapEmpty!12828 () Bool)

(declare-fun mapDefault!12828 () ValueCell!3446)

