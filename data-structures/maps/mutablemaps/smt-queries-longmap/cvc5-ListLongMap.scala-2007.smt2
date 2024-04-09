; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35030 () Bool)

(assert start!35030)

(declare-fun b_free!7711 () Bool)

(declare-fun b_next!7711 () Bool)

(assert (=> start!35030 (= b_free!7711 (not b_next!7711))))

(declare-fun tp!26712 () Bool)

(declare-fun b_and!14959 () Bool)

(assert (=> start!35030 (= tp!26712 b_and!14959)))

(declare-fun b!350772 () Bool)

(declare-fun res!194546 () Bool)

(declare-fun e!214844 () Bool)

(assert (=> b!350772 (=> (not res!194546) (not e!214844))))

(declare-datatypes ((array!18871 0))(
  ( (array!18872 (arr!8938 (Array (_ BitVec 32) (_ BitVec 64))) (size!9290 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18871)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18871 (_ BitVec 32)) Bool)

(assert (=> b!350772 (= res!194546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350773 () Bool)

(declare-fun res!194543 () Bool)

(assert (=> b!350773 (=> (not res!194543) (not e!214844))))

(declare-datatypes ((V!11195 0))(
  ( (V!11196 (val!3876 Int)) )
))
(declare-datatypes ((ValueCell!3488 0))(
  ( (ValueCellFull!3488 (v!6059 V!11195)) (EmptyCell!3488) )
))
(declare-datatypes ((array!18873 0))(
  ( (array!18874 (arr!8939 (Array (_ BitVec 32) ValueCell!3488)) (size!9291 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18873)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!350773 (= res!194543 (and (= (size!9291 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9290 _keys!1895) (size!9291 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350774 () Bool)

(declare-fun e!214843 () Bool)

(declare-fun tp_is_empty!7663 () Bool)

(assert (=> b!350774 (= e!214843 tp_is_empty!7663)))

(declare-fun b!350775 () Bool)

(declare-fun res!194541 () Bool)

(assert (=> b!350775 (=> (not res!194541) (not e!214844))))

(declare-datatypes ((List!5224 0))(
  ( (Nil!5221) (Cons!5220 (h!6076 (_ BitVec 64)) (t!10370 List!5224)) )
))
(declare-fun arrayNoDuplicates!0 (array!18871 (_ BitVec 32) List!5224) Bool)

(assert (=> b!350775 (= res!194541 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5221))))

(declare-fun res!194547 () Bool)

(assert (=> start!35030 (=> (not res!194547) (not e!214844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35030 (= res!194547 (validMask!0 mask!2385))))

(assert (=> start!35030 e!214844))

(assert (=> start!35030 true))

(assert (=> start!35030 tp_is_empty!7663))

(assert (=> start!35030 tp!26712))

(declare-fun e!214842 () Bool)

(declare-fun array_inv!6588 (array!18873) Bool)

(assert (=> start!35030 (and (array_inv!6588 _values!1525) e!214842)))

(declare-fun array_inv!6589 (array!18871) Bool)

(assert (=> start!35030 (array_inv!6589 _keys!1895)))

(declare-fun b!350776 () Bool)

(declare-fun res!194545 () Bool)

(declare-fun e!214845 () Bool)

(assert (=> b!350776 (=> (not res!194545) (not e!214845))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350776 (= res!194545 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!350777 () Bool)

(assert (=> b!350777 (= e!214845 false)))

(declare-fun lt!164640 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18871 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350777 (= lt!164640 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12966 () Bool)

(declare-fun mapRes!12966 () Bool)

(declare-fun tp!26711 () Bool)

(declare-fun e!214846 () Bool)

(assert (=> mapNonEmpty!12966 (= mapRes!12966 (and tp!26711 e!214846))))

(declare-fun mapValue!12966 () ValueCell!3488)

(declare-fun mapKey!12966 () (_ BitVec 32))

(declare-fun mapRest!12966 () (Array (_ BitVec 32) ValueCell!3488))

(assert (=> mapNonEmpty!12966 (= (arr!8939 _values!1525) (store mapRest!12966 mapKey!12966 mapValue!12966))))

(declare-fun b!350778 () Bool)

(declare-fun res!194542 () Bool)

(assert (=> b!350778 (=> (not res!194542) (not e!214844))))

(declare-fun zeroValue!1467 () V!11195)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11195)

(declare-datatypes ((tuple2!5586 0))(
  ( (tuple2!5587 (_1!2803 (_ BitVec 64)) (_2!2803 V!11195)) )
))
(declare-datatypes ((List!5225 0))(
  ( (Nil!5222) (Cons!5221 (h!6077 tuple2!5586) (t!10371 List!5225)) )
))
(declare-datatypes ((ListLongMap!4513 0))(
  ( (ListLongMap!4514 (toList!2272 List!5225)) )
))
(declare-fun contains!2337 (ListLongMap!4513 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1789 (array!18871 array!18873 (_ BitVec 32) (_ BitVec 32) V!11195 V!11195 (_ BitVec 32) Int) ListLongMap!4513)

(assert (=> b!350778 (= res!194542 (not (contains!2337 (getCurrentListMap!1789 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12966 () Bool)

(assert (=> mapIsEmpty!12966 mapRes!12966))

(declare-fun b!350779 () Bool)

(assert (=> b!350779 (= e!214842 (and e!214843 mapRes!12966))))

(declare-fun condMapEmpty!12966 () Bool)

(declare-fun mapDefault!12966 () ValueCell!3488)

