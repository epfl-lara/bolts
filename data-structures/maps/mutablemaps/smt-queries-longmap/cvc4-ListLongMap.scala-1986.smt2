; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34812 () Bool)

(assert start!34812)

(declare-fun b_free!7589 () Bool)

(declare-fun b_next!7589 () Bool)

(assert (=> start!34812 (= b_free!7589 (not b_next!7589))))

(declare-fun tp!26333 () Bool)

(declare-fun b_and!14829 () Bool)

(assert (=> start!34812 (= tp!26333 b_and!14829)))

(declare-fun mapNonEmpty!12771 () Bool)

(declare-fun mapRes!12771 () Bool)

(declare-fun tp!26334 () Bool)

(declare-fun e!213285 () Bool)

(assert (=> mapNonEmpty!12771 (= mapRes!12771 (and tp!26334 e!213285))))

(declare-fun mapKey!12771 () (_ BitVec 32))

(declare-datatypes ((V!11031 0))(
  ( (V!11032 (val!3815 Int)) )
))
(declare-datatypes ((ValueCell!3427 0))(
  ( (ValueCellFull!3427 (v!5994 V!11031)) (EmptyCell!3427) )
))
(declare-datatypes ((array!18635 0))(
  ( (array!18636 (arr!8824 (Array (_ BitVec 32) ValueCell!3427)) (size!9176 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18635)

(declare-fun mapValue!12771 () ValueCell!3427)

(declare-fun mapRest!12771 () (Array (_ BitVec 32) ValueCell!3427))

(assert (=> mapNonEmpty!12771 (= (arr!8824 _values!1525) (store mapRest!12771 mapKey!12771 mapValue!12771))))

(declare-fun b!348075 () Bool)

(declare-fun res!192853 () Bool)

(declare-fun e!213282 () Bool)

(assert (=> b!348075 (=> (not res!192853) (not e!213282))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!18637 0))(
  ( (array!18638 (arr!8825 (Array (_ BitVec 32) (_ BitVec 64))) (size!9177 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18637)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348075 (= res!192853 (and (= (size!9176 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9177 _keys!1895) (size!9176 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348076 () Bool)

(declare-fun res!192855 () Bool)

(declare-fun e!213286 () Bool)

(assert (=> b!348076 (=> (not res!192855) (not e!213286))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348076 (= res!192855 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348077 () Bool)

(declare-fun res!192859 () Bool)

(assert (=> b!348077 (=> (not res!192859) (not e!213282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18637 (_ BitVec 32)) Bool)

(assert (=> b!348077 (= res!192859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348078 () Bool)

(declare-fun res!192854 () Bool)

(assert (=> b!348078 (=> (not res!192854) (not e!213282))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11031)

(declare-fun zeroValue!1467 () V!11031)

(declare-datatypes ((tuple2!5508 0))(
  ( (tuple2!5509 (_1!2764 (_ BitVec 64)) (_2!2764 V!11031)) )
))
(declare-datatypes ((List!5151 0))(
  ( (Nil!5148) (Cons!5147 (h!6003 tuple2!5508) (t!10289 List!5151)) )
))
(declare-datatypes ((ListLongMap!4435 0))(
  ( (ListLongMap!4436 (toList!2233 List!5151)) )
))
(declare-fun contains!2294 (ListLongMap!4435 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1750 (array!18637 array!18635 (_ BitVec 32) (_ BitVec 32) V!11031 V!11031 (_ BitVec 32) Int) ListLongMap!4435)

(assert (=> b!348078 (= res!192854 (not (contains!2294 (getCurrentListMap!1750 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348079 () Bool)

(declare-fun res!192857 () Bool)

(assert (=> b!348079 (=> (not res!192857) (not e!213282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348079 (= res!192857 (validKeyInArray!0 k!1348))))

(declare-fun b!348080 () Bool)

(declare-fun tp_is_empty!7541 () Bool)

(assert (=> b!348080 (= e!213285 tp_is_empty!7541)))

(declare-fun mapIsEmpty!12771 () Bool)

(assert (=> mapIsEmpty!12771 mapRes!12771))

(declare-fun b!348081 () Bool)

(assert (=> b!348081 (= e!213282 e!213286)))

(declare-fun res!192856 () Bool)

(assert (=> b!348081 (=> (not res!192856) (not e!213286))))

(declare-datatypes ((SeekEntryResult!3400 0))(
  ( (MissingZero!3400 (index!15779 (_ BitVec 32))) (Found!3400 (index!15780 (_ BitVec 32))) (Intermediate!3400 (undefined!4212 Bool) (index!15781 (_ BitVec 32)) (x!34675 (_ BitVec 32))) (Undefined!3400) (MissingVacant!3400 (index!15782 (_ BitVec 32))) )
))
(declare-fun lt!163808 () SeekEntryResult!3400)

(assert (=> b!348081 (= res!192856 (and (not (is-Found!3400 lt!163808)) (is-MissingZero!3400 lt!163808)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18637 (_ BitVec 32)) SeekEntryResult!3400)

(assert (=> b!348081 (= lt!163808 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!348082 () Bool)

(declare-fun e!213287 () Bool)

(assert (=> b!348082 (= e!213287 tp_is_empty!7541)))

(declare-fun res!192858 () Bool)

(assert (=> start!34812 (=> (not res!192858) (not e!213282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34812 (= res!192858 (validMask!0 mask!2385))))

(assert (=> start!34812 e!213282))

(assert (=> start!34812 true))

(assert (=> start!34812 tp_is_empty!7541))

(assert (=> start!34812 tp!26333))

(declare-fun e!213283 () Bool)

(declare-fun array_inv!6516 (array!18635) Bool)

(assert (=> start!34812 (and (array_inv!6516 _values!1525) e!213283)))

(declare-fun array_inv!6517 (array!18637) Bool)

(assert (=> start!34812 (array_inv!6517 _keys!1895)))

(declare-fun b!348083 () Bool)

(assert (=> b!348083 (= e!213286 false)))

(declare-fun lt!163809 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18637 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348083 (= lt!163809 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348084 () Bool)

(assert (=> b!348084 (= e!213283 (and e!213287 mapRes!12771))))

(declare-fun condMapEmpty!12771 () Bool)

(declare-fun mapDefault!12771 () ValueCell!3427)

