; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34782 () Bool)

(assert start!34782)

(declare-fun b_free!7559 () Bool)

(declare-fun b_next!7559 () Bool)

(assert (=> start!34782 (= b_free!7559 (not b_next!7559))))

(declare-fun tp!26243 () Bool)

(declare-fun b_and!14799 () Bool)

(assert (=> start!34782 (= tp!26243 b_and!14799)))

(declare-fun mapIsEmpty!12726 () Bool)

(declare-fun mapRes!12726 () Bool)

(assert (=> mapIsEmpty!12726 mapRes!12726))

(declare-fun b!347580 () Bool)

(declare-fun e!212988 () Bool)

(assert (=> b!347580 (= e!212988 (not false))))

(declare-datatypes ((V!10991 0))(
  ( (V!10992 (val!3800 Int)) )
))
(declare-datatypes ((tuple2!5488 0))(
  ( (tuple2!5489 (_1!2754 (_ BitVec 64)) (_2!2754 V!10991)) )
))
(declare-datatypes ((List!5132 0))(
  ( (Nil!5129) (Cons!5128 (h!5984 tuple2!5488) (t!10270 List!5132)) )
))
(declare-datatypes ((ListLongMap!4415 0))(
  ( (ListLongMap!4416 (toList!2223 List!5132)) )
))
(declare-fun lt!163665 () ListLongMap!4415)

(declare-datatypes ((array!18579 0))(
  ( (array!18580 (arr!8796 (Array (_ BitVec 32) (_ BitVec 64))) (size!9148 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18579)

(declare-datatypes ((SeekEntryResult!3390 0))(
  ( (MissingZero!3390 (index!15739 (_ BitVec 32))) (Found!3390 (index!15740 (_ BitVec 32))) (Intermediate!3390 (undefined!4202 Bool) (index!15741 (_ BitVec 32)) (x!34625 (_ BitVec 32))) (Undefined!3390) (MissingVacant!3390 (index!15742 (_ BitVec 32))) )
))
(declare-fun lt!163662 () SeekEntryResult!3390)

(declare-fun contains!2284 (ListLongMap!4415 (_ BitVec 64)) Bool)

(assert (=> b!347580 (contains!2284 lt!163665 (select (arr!8796 _keys!1895) (index!15740 lt!163662)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((Unit!10794 0))(
  ( (Unit!10795) )
))
(declare-fun lt!163663 () Unit!10794)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3412 0))(
  ( (ValueCellFull!3412 (v!5979 V!10991)) (EmptyCell!3412) )
))
(declare-datatypes ((array!18581 0))(
  ( (array!18582 (arr!8797 (Array (_ BitVec 32) ValueCell!3412)) (size!9149 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18581)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10991)

(declare-fun zeroValue!1467 () V!10991)

(declare-fun lemmaValidKeyInArrayIsInListMap!169 (array!18579 array!18581 (_ BitVec 32) (_ BitVec 32) V!10991 V!10991 (_ BitVec 32) Int) Unit!10794)

(assert (=> b!347580 (= lt!163663 (lemmaValidKeyInArrayIsInListMap!169 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!15740 lt!163662) defaultEntry!1528))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347580 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163664 () Unit!10794)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18579 (_ BitVec 64) (_ BitVec 32)) Unit!10794)

(assert (=> b!347580 (= lt!163664 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15740 lt!163662)))))

(declare-fun mapNonEmpty!12726 () Bool)

(declare-fun tp!26244 () Bool)

(declare-fun e!212984 () Bool)

(assert (=> mapNonEmpty!12726 (= mapRes!12726 (and tp!26244 e!212984))))

(declare-fun mapKey!12726 () (_ BitVec 32))

(declare-fun mapValue!12726 () ValueCell!3412)

(declare-fun mapRest!12726 () (Array (_ BitVec 32) ValueCell!3412))

(assert (=> mapNonEmpty!12726 (= (arr!8797 _values!1525) (store mapRest!12726 mapKey!12726 mapValue!12726))))

(declare-fun b!347581 () Bool)

(declare-fun e!212990 () Bool)

(assert (=> b!347581 (= e!212990 e!212988)))

(declare-fun res!192494 () Bool)

(assert (=> b!347581 (=> (not res!192494) (not e!212988))))

(assert (=> b!347581 (= res!192494 (and (is-Found!3390 lt!163662) (= (select (arr!8796 _keys!1895) (index!15740 lt!163662)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18579 (_ BitVec 32)) SeekEntryResult!3390)

(assert (=> b!347581 (= lt!163662 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!347582 () Bool)

(declare-fun res!192492 () Bool)

(declare-fun e!212987 () Bool)

(assert (=> b!347582 (=> (not res!192492) (not e!212987))))

(declare-datatypes ((List!5133 0))(
  ( (Nil!5130) (Cons!5129 (h!5985 (_ BitVec 64)) (t!10271 List!5133)) )
))
(declare-fun arrayNoDuplicates!0 (array!18579 (_ BitVec 32) List!5133) Bool)

(assert (=> b!347582 (= res!192492 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5130))))

(declare-fun b!347584 () Bool)

(declare-fun e!212986 () Bool)

(declare-fun tp_is_empty!7511 () Bool)

(assert (=> b!347584 (= e!212986 tp_is_empty!7511)))

(declare-fun b!347585 () Bool)

(assert (=> b!347585 (= e!212987 e!212990)))

(declare-fun res!192499 () Bool)

(assert (=> b!347585 (=> (not res!192499) (not e!212990))))

(assert (=> b!347585 (= res!192499 (not (contains!2284 lt!163665 k!1348)))))

(declare-fun getCurrentListMap!1742 (array!18579 array!18581 (_ BitVec 32) (_ BitVec 32) V!10991 V!10991 (_ BitVec 32) Int) ListLongMap!4415)

(assert (=> b!347585 (= lt!163665 (getCurrentListMap!1742 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!347586 () Bool)

(declare-fun res!192498 () Bool)

(assert (=> b!347586 (=> (not res!192498) (not e!212987))))

(assert (=> b!347586 (= res!192498 (and (= (size!9149 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9148 _keys!1895) (size!9149 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347587 () Bool)

(declare-fun res!192497 () Bool)

(assert (=> b!347587 (=> (not res!192497) (not e!212987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18579 (_ BitVec 32)) Bool)

(assert (=> b!347587 (= res!192497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347588 () Bool)

(declare-fun res!192496 () Bool)

(assert (=> b!347588 (=> (not res!192496) (not e!212988))))

(assert (=> b!347588 (= res!192496 (arrayContainsKey!0 _keys!1895 k!1348 (index!15740 lt!163662)))))

(declare-fun res!192495 () Bool)

(assert (=> start!34782 (=> (not res!192495) (not e!212987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34782 (= res!192495 (validMask!0 mask!2385))))

(assert (=> start!34782 e!212987))

(assert (=> start!34782 true))

(assert (=> start!34782 tp_is_empty!7511))

(assert (=> start!34782 tp!26243))

(declare-fun e!212989 () Bool)

(declare-fun array_inv!6498 (array!18581) Bool)

(assert (=> start!34782 (and (array_inv!6498 _values!1525) e!212989)))

(declare-fun array_inv!6499 (array!18579) Bool)

(assert (=> start!34782 (array_inv!6499 _keys!1895)))

(declare-fun b!347583 () Bool)

(assert (=> b!347583 (= e!212984 tp_is_empty!7511)))

(declare-fun b!347589 () Bool)

(declare-fun res!192493 () Bool)

(assert (=> b!347589 (=> (not res!192493) (not e!212987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347589 (= res!192493 (validKeyInArray!0 k!1348))))

(declare-fun b!347590 () Bool)

(assert (=> b!347590 (= e!212989 (and e!212986 mapRes!12726))))

(declare-fun condMapEmpty!12726 () Bool)

(declare-fun mapDefault!12726 () ValueCell!3412)

