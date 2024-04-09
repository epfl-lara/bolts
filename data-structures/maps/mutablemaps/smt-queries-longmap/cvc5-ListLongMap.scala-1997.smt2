; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34918 () Bool)

(assert start!34918)

(declare-fun b_free!7651 () Bool)

(declare-fun b_next!7651 () Bool)

(assert (=> start!34918 (= b_free!7651 (not b_next!7651))))

(declare-fun tp!26526 () Bool)

(declare-fun b_and!14895 () Bool)

(assert (=> start!34918 (= tp!26526 b_and!14895)))

(declare-fun b!349389 () Bool)

(declare-datatypes ((Unit!10818 0))(
  ( (Unit!10819) )
))
(declare-fun e!214037 () Unit!10818)

(declare-fun Unit!10820 () Unit!10818)

(assert (=> b!349389 (= e!214037 Unit!10820)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun lt!164197 () Unit!10818)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11115 0))(
  ( (V!11116 (val!3846 Int)) )
))
(declare-fun zeroValue!1467 () V!11115)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3458 0))(
  ( (ValueCellFull!3458 (v!6027 V!11115)) (EmptyCell!3458) )
))
(declare-datatypes ((array!18761 0))(
  ( (array!18762 (arr!8885 (Array (_ BitVec 32) ValueCell!3458)) (size!9237 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18761)

(declare-datatypes ((array!18763 0))(
  ( (array!18764 (arr!8886 (Array (_ BitVec 32) (_ BitVec 64))) (size!9238 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18763)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11115)

(declare-fun lemmaArrayContainsKeyThenInListMap!318 (array!18763 array!18761 (_ BitVec 32) (_ BitVec 32) V!11115 V!11115 (_ BitVec 64) (_ BitVec 32) Int) Unit!10818)

(declare-fun arrayScanForKey!0 (array!18763 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349389 (= lt!164197 (lemmaArrayContainsKeyThenInListMap!318 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!349389 false))

(declare-fun b!349390 () Bool)

(declare-fun e!214035 () Bool)

(declare-fun tp_is_empty!7603 () Bool)

(assert (=> b!349390 (= e!214035 tp_is_empty!7603)))

(declare-fun b!349391 () Bool)

(declare-fun e!214033 () Bool)

(assert (=> b!349391 (= e!214033 tp_is_empty!7603)))

(declare-fun b!349392 () Bool)

(declare-fun res!193709 () Bool)

(declare-fun e!214034 () Bool)

(assert (=> b!349392 (=> (not res!193709) (not e!214034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349392 (= res!193709 (validKeyInArray!0 k!1348))))

(declare-fun b!349393 () Bool)

(declare-fun res!193713 () Bool)

(assert (=> b!349393 (=> (not res!193713) (not e!214034))))

(declare-datatypes ((List!5191 0))(
  ( (Nil!5188) (Cons!5187 (h!6043 (_ BitVec 64)) (t!10333 List!5191)) )
))
(declare-fun arrayNoDuplicates!0 (array!18763 (_ BitVec 32) List!5191) Bool)

(assert (=> b!349393 (= res!193713 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5188))))

(declare-fun b!349394 () Bool)

(declare-fun Unit!10821 () Unit!10818)

(assert (=> b!349394 (= e!214037 Unit!10821)))

(declare-fun b!349395 () Bool)

(declare-fun e!214039 () Bool)

(assert (=> b!349395 (= e!214034 e!214039)))

(declare-fun res!193711 () Bool)

(assert (=> b!349395 (=> (not res!193711) (not e!214039))))

(declare-datatypes ((SeekEntryResult!3421 0))(
  ( (MissingZero!3421 (index!15863 (_ BitVec 32))) (Found!3421 (index!15864 (_ BitVec 32))) (Intermediate!3421 (undefined!4233 Bool) (index!15865 (_ BitVec 32)) (x!34804 (_ BitVec 32))) (Undefined!3421) (MissingVacant!3421 (index!15866 (_ BitVec 32))) )
))
(declare-fun lt!164196 () SeekEntryResult!3421)

(assert (=> b!349395 (= res!193711 (and (not (is-Found!3421 lt!164196)) (is-MissingZero!3421 lt!164196)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18763 (_ BitVec 32)) SeekEntryResult!3421)

(assert (=> b!349395 (= lt!164196 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!349396 () Bool)

(declare-fun res!193707 () Bool)

(assert (=> b!349396 (=> (not res!193707) (not e!214034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18763 (_ BitVec 32)) Bool)

(assert (=> b!349396 (= res!193707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12870 () Bool)

(declare-fun mapRes!12870 () Bool)

(assert (=> mapIsEmpty!12870 mapRes!12870))

(declare-fun b!349397 () Bool)

(declare-fun lt!164199 () Bool)

(assert (=> b!349397 (= e!214039 lt!164199)))

(declare-fun lt!164198 () Unit!10818)

(assert (=> b!349397 (= lt!164198 e!214037)))

(declare-fun c!53210 () Bool)

(assert (=> b!349397 (= c!53210 lt!164199)))

(declare-fun arrayContainsKey!0 (array!18763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349397 (= lt!164199 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!349398 () Bool)

(declare-fun res!193710 () Bool)

(assert (=> b!349398 (=> (not res!193710) (not e!214034))))

(assert (=> b!349398 (= res!193710 (and (= (size!9237 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9238 _keys!1895) (size!9237 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349399 () Bool)

(declare-fun res!193708 () Bool)

(assert (=> b!349399 (=> (not res!193708) (not e!214034))))

(declare-datatypes ((tuple2!5552 0))(
  ( (tuple2!5553 (_1!2786 (_ BitVec 64)) (_2!2786 V!11115)) )
))
(declare-datatypes ((List!5192 0))(
  ( (Nil!5189) (Cons!5188 (h!6044 tuple2!5552) (t!10334 List!5192)) )
))
(declare-datatypes ((ListLongMap!4479 0))(
  ( (ListLongMap!4480 (toList!2255 List!5192)) )
))
(declare-fun contains!2318 (ListLongMap!4479 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1772 (array!18763 array!18761 (_ BitVec 32) (_ BitVec 32) V!11115 V!11115 (_ BitVec 32) Int) ListLongMap!4479)

(assert (=> b!349399 (= res!193708 (not (contains!2318 (getCurrentListMap!1772 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!349400 () Bool)

(declare-fun e!214036 () Bool)

(assert (=> b!349400 (= e!214036 (and e!214033 mapRes!12870))))

(declare-fun condMapEmpty!12870 () Bool)

(declare-fun mapDefault!12870 () ValueCell!3458)

