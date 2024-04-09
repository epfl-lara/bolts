; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34848 () Bool)

(assert start!34848)

(declare-fun b_free!7625 () Bool)

(declare-fun b_next!7625 () Bool)

(assert (=> start!34848 (= b_free!7625 (not b_next!7625))))

(declare-fun tp!26442 () Bool)

(declare-fun b_and!14865 () Bool)

(assert (=> start!34848 (= tp!26442 b_and!14865)))

(declare-fun mapIsEmpty!12825 () Bool)

(declare-fun mapRes!12825 () Bool)

(assert (=> mapIsEmpty!12825 mapRes!12825))

(declare-fun b!348669 () Bool)

(declare-fun res!193284 () Bool)

(declare-fun e!213610 () Bool)

(assert (=> b!348669 (=> (not res!193284) (not e!213610))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11079 0))(
  ( (V!11080 (val!3833 Int)) )
))
(declare-fun zeroValue!1467 () V!11079)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3445 0))(
  ( (ValueCellFull!3445 (v!6012 V!11079)) (EmptyCell!3445) )
))
(declare-datatypes ((array!18707 0))(
  ( (array!18708 (arr!8860 (Array (_ BitVec 32) ValueCell!3445)) (size!9212 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18707)

(declare-datatypes ((array!18709 0))(
  ( (array!18710 (arr!8861 (Array (_ BitVec 32) (_ BitVec 64))) (size!9213 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18709)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11079)

(declare-datatypes ((tuple2!5534 0))(
  ( (tuple2!5535 (_1!2777 (_ BitVec 64)) (_2!2777 V!11079)) )
))
(declare-datatypes ((List!5176 0))(
  ( (Nil!5173) (Cons!5172 (h!6028 tuple2!5534) (t!10314 List!5176)) )
))
(declare-datatypes ((ListLongMap!4461 0))(
  ( (ListLongMap!4462 (toList!2246 List!5176)) )
))
(declare-fun contains!2307 (ListLongMap!4461 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1763 (array!18709 array!18707 (_ BitVec 32) (_ BitVec 32) V!11079 V!11079 (_ BitVec 32) Int) ListLongMap!4461)

(assert (=> b!348669 (= res!193284 (not (contains!2307 (getCurrentListMap!1763 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348670 () Bool)

(declare-fun res!193285 () Bool)

(declare-fun e!213606 () Bool)

(assert (=> b!348670 (=> (not res!193285) (not e!213606))))

(declare-fun arrayContainsKey!0 (array!18709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348670 (= res!193285 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348671 () Bool)

(declare-fun res!193290 () Bool)

(assert (=> b!348671 (=> (not res!193290) (not e!213610))))

(declare-datatypes ((List!5177 0))(
  ( (Nil!5174) (Cons!5173 (h!6029 (_ BitVec 64)) (t!10315 List!5177)) )
))
(declare-fun arrayNoDuplicates!0 (array!18709 (_ BitVec 32) List!5177) Bool)

(assert (=> b!348671 (= res!193290 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5174))))

(declare-fun b!348672 () Bool)

(declare-fun e!213607 () Bool)

(declare-fun tp_is_empty!7577 () Bool)

(assert (=> b!348672 (= e!213607 tp_is_empty!7577)))

(declare-fun mapNonEmpty!12825 () Bool)

(declare-fun tp!26441 () Bool)

(declare-fun e!213608 () Bool)

(assert (=> mapNonEmpty!12825 (= mapRes!12825 (and tp!26441 e!213608))))

(declare-fun mapValue!12825 () ValueCell!3445)

(declare-fun mapKey!12825 () (_ BitVec 32))

(declare-fun mapRest!12825 () (Array (_ BitVec 32) ValueCell!3445))

(assert (=> mapNonEmpty!12825 (= (arr!8860 _values!1525) (store mapRest!12825 mapKey!12825 mapValue!12825))))

(declare-fun res!193289 () Bool)

(assert (=> start!34848 (=> (not res!193289) (not e!213610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34848 (= res!193289 (validMask!0 mask!2385))))

(assert (=> start!34848 e!213610))

(assert (=> start!34848 true))

(assert (=> start!34848 tp_is_empty!7577))

(assert (=> start!34848 tp!26442))

(declare-fun e!213609 () Bool)

(declare-fun array_inv!6536 (array!18707) Bool)

(assert (=> start!34848 (and (array_inv!6536 _values!1525) e!213609)))

(declare-fun array_inv!6537 (array!18709) Bool)

(assert (=> start!34848 (array_inv!6537 _keys!1895)))

(declare-fun b!348673 () Bool)

(assert (=> b!348673 (= e!213608 tp_is_empty!7577)))

(declare-fun b!348674 () Bool)

(assert (=> b!348674 (= e!213606 false)))

(declare-fun lt!163917 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18709 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348674 (= lt!163917 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348675 () Bool)

(declare-fun res!193291 () Bool)

(assert (=> b!348675 (=> (not res!193291) (not e!213610))))

(assert (=> b!348675 (= res!193291 (and (= (size!9212 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9213 _keys!1895) (size!9212 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348676 () Bool)

(declare-fun res!193288 () Bool)

(assert (=> b!348676 (=> (not res!193288) (not e!213610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18709 (_ BitVec 32)) Bool)

(assert (=> b!348676 (= res!193288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348677 () Bool)

(assert (=> b!348677 (= e!213610 e!213606)))

(declare-fun res!193287 () Bool)

(assert (=> b!348677 (=> (not res!193287) (not e!213606))))

(declare-datatypes ((SeekEntryResult!3413 0))(
  ( (MissingZero!3413 (index!15831 (_ BitVec 32))) (Found!3413 (index!15832 (_ BitVec 32))) (Intermediate!3413 (undefined!4225 Bool) (index!15833 (_ BitVec 32)) (x!34736 (_ BitVec 32))) (Undefined!3413) (MissingVacant!3413 (index!15834 (_ BitVec 32))) )
))
(declare-fun lt!163916 () SeekEntryResult!3413)

(assert (=> b!348677 (= res!193287 (and (not (is-Found!3413 lt!163916)) (is-MissingZero!3413 lt!163916)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18709 (_ BitVec 32)) SeekEntryResult!3413)

(assert (=> b!348677 (= lt!163916 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!348678 () Bool)

(declare-fun res!193286 () Bool)

(assert (=> b!348678 (=> (not res!193286) (not e!213610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348678 (= res!193286 (validKeyInArray!0 k!1348))))

(declare-fun b!348679 () Bool)

(assert (=> b!348679 (= e!213609 (and e!213607 mapRes!12825))))

(declare-fun condMapEmpty!12825 () Bool)

(declare-fun mapDefault!12825 () ValueCell!3445)

