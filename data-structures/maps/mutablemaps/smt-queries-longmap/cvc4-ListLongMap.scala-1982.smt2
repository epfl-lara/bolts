; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34788 () Bool)

(assert start!34788)

(declare-fun b_free!7565 () Bool)

(declare-fun b_next!7565 () Bool)

(assert (=> start!34788 (= b_free!7565 (not b_next!7565))))

(declare-fun tp!26262 () Bool)

(declare-fun b_and!14805 () Bool)

(assert (=> start!34788 (= tp!26262 b_and!14805)))

(declare-fun mapIsEmpty!12735 () Bool)

(declare-fun mapRes!12735 () Bool)

(assert (=> mapIsEmpty!12735 mapRes!12735))

(declare-fun b!347679 () Bool)

(declare-fun e!213049 () Bool)

(declare-fun e!213053 () Bool)

(assert (=> b!347679 (= e!213049 e!213053)))

(declare-fun res!192564 () Bool)

(assert (=> b!347679 (=> (not res!192564) (not e!213053))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3393 0))(
  ( (MissingZero!3393 (index!15751 (_ BitVec 32))) (Found!3393 (index!15752 (_ BitVec 32))) (Intermediate!3393 (undefined!4205 Bool) (index!15753 (_ BitVec 32)) (x!34636 (_ BitVec 32))) (Undefined!3393) (MissingVacant!3393 (index!15754 (_ BitVec 32))) )
))
(declare-fun lt!163701 () SeekEntryResult!3393)

(declare-datatypes ((array!18591 0))(
  ( (array!18592 (arr!8802 (Array (_ BitVec 32) (_ BitVec 64))) (size!9154 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18591)

(assert (=> b!347679 (= res!192564 (and (is-Found!3393 lt!163701) (= (select (arr!8802 _keys!1895) (index!15752 lt!163701)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18591 (_ BitVec 32)) SeekEntryResult!3393)

(assert (=> b!347679 (= lt!163701 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!192569 () Bool)

(declare-fun e!213052 () Bool)

(assert (=> start!34788 (=> (not res!192569) (not e!213052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34788 (= res!192569 (validMask!0 mask!2385))))

(assert (=> start!34788 e!213052))

(assert (=> start!34788 true))

(declare-fun tp_is_empty!7517 () Bool)

(assert (=> start!34788 tp_is_empty!7517))

(assert (=> start!34788 tp!26262))

(declare-datatypes ((V!10999 0))(
  ( (V!11000 (val!3803 Int)) )
))
(declare-datatypes ((ValueCell!3415 0))(
  ( (ValueCellFull!3415 (v!5982 V!10999)) (EmptyCell!3415) )
))
(declare-datatypes ((array!18593 0))(
  ( (array!18594 (arr!8803 (Array (_ BitVec 32) ValueCell!3415)) (size!9155 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18593)

(declare-fun e!213048 () Bool)

(declare-fun array_inv!6502 (array!18593) Bool)

(assert (=> start!34788 (and (array_inv!6502 _values!1525) e!213048)))

(declare-fun array_inv!6503 (array!18591) Bool)

(assert (=> start!34788 (array_inv!6503 _keys!1895)))

(declare-fun b!347680 () Bool)

(assert (=> b!347680 (= e!213053 (not true))))

(declare-datatypes ((tuple2!5492 0))(
  ( (tuple2!5493 (_1!2756 (_ BitVec 64)) (_2!2756 V!10999)) )
))
(declare-datatypes ((List!5136 0))(
  ( (Nil!5133) (Cons!5132 (h!5988 tuple2!5492) (t!10274 List!5136)) )
))
(declare-datatypes ((ListLongMap!4419 0))(
  ( (ListLongMap!4420 (toList!2225 List!5136)) )
))
(declare-fun lt!163698 () ListLongMap!4419)

(declare-fun contains!2286 (ListLongMap!4419 (_ BitVec 64)) Bool)

(assert (=> b!347680 (contains!2286 lt!163698 (select (arr!8802 _keys!1895) (index!15752 lt!163701)))))

(declare-fun zeroValue!1467 () V!10999)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10999)

(declare-datatypes ((Unit!10798 0))(
  ( (Unit!10799) )
))
(declare-fun lt!163699 () Unit!10798)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lemmaValidKeyInArrayIsInListMap!171 (array!18591 array!18593 (_ BitVec 32) (_ BitVec 32) V!10999 V!10999 (_ BitVec 32) Int) Unit!10798)

(assert (=> b!347680 (= lt!163699 (lemmaValidKeyInArrayIsInListMap!171 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!15752 lt!163701) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!18591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347680 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163700 () Unit!10798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18591 (_ BitVec 64) (_ BitVec 32)) Unit!10798)

(assert (=> b!347680 (= lt!163700 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15752 lt!163701)))))

(declare-fun b!347681 () Bool)

(declare-fun res!192565 () Bool)

(assert (=> b!347681 (=> (not res!192565) (not e!213052))))

(declare-datatypes ((List!5137 0))(
  ( (Nil!5134) (Cons!5133 (h!5989 (_ BitVec 64)) (t!10275 List!5137)) )
))
(declare-fun arrayNoDuplicates!0 (array!18591 (_ BitVec 32) List!5137) Bool)

(assert (=> b!347681 (= res!192565 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5134))))

(declare-fun b!347682 () Bool)

(declare-fun e!213050 () Bool)

(assert (=> b!347682 (= e!213050 tp_is_empty!7517)))

(declare-fun mapNonEmpty!12735 () Bool)

(declare-fun tp!26261 () Bool)

(declare-fun e!213051 () Bool)

(assert (=> mapNonEmpty!12735 (= mapRes!12735 (and tp!26261 e!213051))))

(declare-fun mapValue!12735 () ValueCell!3415)

(declare-fun mapKey!12735 () (_ BitVec 32))

(declare-fun mapRest!12735 () (Array (_ BitVec 32) ValueCell!3415))

(assert (=> mapNonEmpty!12735 (= (arr!8803 _values!1525) (store mapRest!12735 mapKey!12735 mapValue!12735))))

(declare-fun b!347683 () Bool)

(assert (=> b!347683 (= e!213048 (and e!213050 mapRes!12735))))

(declare-fun condMapEmpty!12735 () Bool)

(declare-fun mapDefault!12735 () ValueCell!3415)

