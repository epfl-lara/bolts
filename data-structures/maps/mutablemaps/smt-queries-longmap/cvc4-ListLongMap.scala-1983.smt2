; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34794 () Bool)

(assert start!34794)

(declare-fun b_free!7571 () Bool)

(declare-fun b_next!7571 () Bool)

(assert (=> start!34794 (= b_free!7571 (not b_next!7571))))

(declare-fun tp!26280 () Bool)

(declare-fun b_and!14811 () Bool)

(assert (=> start!34794 (= tp!26280 b_and!14811)))

(declare-fun b!347778 () Bool)

(declare-fun e!213116 () Bool)

(declare-fun tp_is_empty!7523 () Bool)

(assert (=> b!347778 (= e!213116 tp_is_empty!7523)))

(declare-fun b!347779 () Bool)

(declare-fun res!192638 () Bool)

(declare-fun e!213114 () Bool)

(assert (=> b!347779 (=> (not res!192638) (not e!213114))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347779 (= res!192638 (validKeyInArray!0 k!1348))))

(declare-fun b!347780 () Bool)

(declare-fun e!213110 () Bool)

(assert (=> b!347780 (= e!213110 tp_is_empty!7523)))

(declare-fun mapIsEmpty!12744 () Bool)

(declare-fun mapRes!12744 () Bool)

(assert (=> mapIsEmpty!12744 mapRes!12744))

(declare-fun b!347781 () Bool)

(declare-fun res!192642 () Bool)

(declare-fun e!213113 () Bool)

(assert (=> b!347781 (=> (not res!192642) (not e!213113))))

(declare-datatypes ((SeekEntryResult!3395 0))(
  ( (MissingZero!3395 (index!15759 (_ BitVec 32))) (Found!3395 (index!15760 (_ BitVec 32))) (Intermediate!3395 (undefined!4207 Bool) (index!15761 (_ BitVec 32)) (x!34646 (_ BitVec 32))) (Undefined!3395) (MissingVacant!3395 (index!15762 (_ BitVec 32))) )
))
(declare-fun lt!163735 () SeekEntryResult!3395)

(declare-datatypes ((array!18601 0))(
  ( (array!18602 (arr!8807 (Array (_ BitVec 32) (_ BitVec 64))) (size!9159 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18601)

(declare-fun arrayContainsKey!0 (array!18601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347781 (= res!192642 (arrayContainsKey!0 _keys!1895 k!1348 (index!15760 lt!163735)))))

(declare-fun b!347782 () Bool)

(declare-fun res!192643 () Bool)

(assert (=> b!347782 (=> (not res!192643) (not e!213114))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11007 0))(
  ( (V!11008 (val!3806 Int)) )
))
(declare-datatypes ((ValueCell!3418 0))(
  ( (ValueCellFull!3418 (v!5985 V!11007)) (EmptyCell!3418) )
))
(declare-datatypes ((array!18603 0))(
  ( (array!18604 (arr!8808 (Array (_ BitVec 32) ValueCell!3418)) (size!9160 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18603)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!347782 (= res!192643 (and (= (size!9160 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9159 _keys!1895) (size!9160 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347783 () Bool)

(assert (=> b!347783 (= e!213113 (not true))))

(declare-datatypes ((tuple2!5496 0))(
  ( (tuple2!5497 (_1!2758 (_ BitVec 64)) (_2!2758 V!11007)) )
))
(declare-datatypes ((List!5140 0))(
  ( (Nil!5137) (Cons!5136 (h!5992 tuple2!5496) (t!10278 List!5140)) )
))
(declare-datatypes ((ListLongMap!4423 0))(
  ( (ListLongMap!4424 (toList!2227 List!5140)) )
))
(declare-fun lt!163737 () ListLongMap!4423)

(declare-fun contains!2288 (ListLongMap!4423 (_ BitVec 64)) Bool)

(assert (=> b!347783 (contains!2288 lt!163737 (select (arr!8807 _keys!1895) (index!15760 lt!163735)))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11007)

(declare-fun zeroValue!1467 () V!11007)

(declare-datatypes ((Unit!10802 0))(
  ( (Unit!10803) )
))
(declare-fun lt!163736 () Unit!10802)

(declare-fun lemmaValidKeyInArrayIsInListMap!173 (array!18601 array!18603 (_ BitVec 32) (_ BitVec 32) V!11007 V!11007 (_ BitVec 32) Int) Unit!10802)

(assert (=> b!347783 (= lt!163736 (lemmaValidKeyInArrayIsInListMap!173 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!15760 lt!163735) defaultEntry!1528))))

(assert (=> b!347783 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163734 () Unit!10802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18601 (_ BitVec 64) (_ BitVec 32)) Unit!10802)

(assert (=> b!347783 (= lt!163734 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15760 lt!163735)))))

(declare-fun b!347784 () Bool)

(declare-fun e!213111 () Bool)

(assert (=> b!347784 (= e!213111 e!213113)))

(declare-fun res!192641 () Bool)

(assert (=> b!347784 (=> (not res!192641) (not e!213113))))

(assert (=> b!347784 (= res!192641 (and (is-Found!3395 lt!163735) (= (select (arr!8807 _keys!1895) (index!15760 lt!163735)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18601 (_ BitVec 32)) SeekEntryResult!3395)

(assert (=> b!347784 (= lt!163735 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!347786 () Bool)

(declare-fun e!213112 () Bool)

(assert (=> b!347786 (= e!213112 (and e!213110 mapRes!12744))))

(declare-fun condMapEmpty!12744 () Bool)

(declare-fun mapDefault!12744 () ValueCell!3418)

