; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34532 () Bool)

(assert start!34532)

(declare-fun b_free!7447 () Bool)

(declare-fun b_next!7447 () Bool)

(assert (=> start!34532 (= b_free!7447 (not b_next!7447))))

(declare-fun tp!25887 () Bool)

(declare-fun b_and!14673 () Bool)

(assert (=> start!34532 (= tp!25887 b_and!14673)))

(declare-fun b!344879 () Bool)

(declare-fun res!190871 () Bool)

(declare-fun e!211396 () Bool)

(assert (=> b!344879 (=> (not res!190871) (not e!211396))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10843 0))(
  ( (V!10844 (val!3744 Int)) )
))
(declare-datatypes ((ValueCell!3356 0))(
  ( (ValueCellFull!3356 (v!5916 V!10843)) (EmptyCell!3356) )
))
(declare-datatypes ((array!18353 0))(
  ( (array!18354 (arr!8690 (Array (_ BitVec 32) ValueCell!3356)) (size!9042 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18353)

(declare-datatypes ((array!18355 0))(
  ( (array!18356 (arr!8691 (Array (_ BitVec 32) (_ BitVec 64))) (size!9043 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18355)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344879 (= res!190871 (and (= (size!9042 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9043 _keys!1895) (size!9042 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!190872 () Bool)

(assert (=> start!34532 (=> (not res!190872) (not e!211396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34532 (= res!190872 (validMask!0 mask!2385))))

(assert (=> start!34532 e!211396))

(assert (=> start!34532 true))

(declare-fun tp_is_empty!7399 () Bool)

(assert (=> start!34532 tp_is_empty!7399))

(assert (=> start!34532 tp!25887))

(declare-fun e!211395 () Bool)

(declare-fun array_inv!6426 (array!18353) Bool)

(assert (=> start!34532 (and (array_inv!6426 _values!1525) e!211395)))

(declare-fun array_inv!6427 (array!18355) Bool)

(assert (=> start!34532 (array_inv!6427 _keys!1895)))

(declare-fun mapNonEmpty!12537 () Bool)

(declare-fun mapRes!12537 () Bool)

(declare-fun tp!25886 () Bool)

(declare-fun e!211394 () Bool)

(assert (=> mapNonEmpty!12537 (= mapRes!12537 (and tp!25886 e!211394))))

(declare-fun mapRest!12537 () (Array (_ BitVec 32) ValueCell!3356))

(declare-fun mapValue!12537 () ValueCell!3356)

(declare-fun mapKey!12537 () (_ BitVec 32))

(assert (=> mapNonEmpty!12537 (= (arr!8690 _values!1525) (store mapRest!12537 mapKey!12537 mapValue!12537))))

(declare-fun b!344880 () Bool)

(declare-fun res!190869 () Bool)

(assert (=> b!344880 (=> (not res!190869) (not e!211396))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10843)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10843)

(declare-datatypes ((tuple2!5406 0))(
  ( (tuple2!5407 (_1!2713 (_ BitVec 64)) (_2!2713 V!10843)) )
))
(declare-datatypes ((List!5053 0))(
  ( (Nil!5050) (Cons!5049 (h!5905 tuple2!5406) (t!10177 List!5053)) )
))
(declare-datatypes ((ListLongMap!4333 0))(
  ( (ListLongMap!4334 (toList!2182 List!5053)) )
))
(declare-fun contains!2236 (ListLongMap!4333 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1702 (array!18355 array!18353 (_ BitVec 32) (_ BitVec 32) V!10843 V!10843 (_ BitVec 32) Int) ListLongMap!4333)

(assert (=> b!344880 (= res!190869 (not (contains!2236 (getCurrentListMap!1702 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!344881 () Bool)

(declare-fun res!190870 () Bool)

(assert (=> b!344881 (=> (not res!190870) (not e!211396))))

(declare-datatypes ((List!5054 0))(
  ( (Nil!5051) (Cons!5050 (h!5906 (_ BitVec 64)) (t!10178 List!5054)) )
))
(declare-fun arrayNoDuplicates!0 (array!18355 (_ BitVec 32) List!5054) Bool)

(assert (=> b!344881 (= res!190870 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5051))))

(declare-fun b!344882 () Bool)

(declare-fun res!190874 () Bool)

(assert (=> b!344882 (=> (not res!190874) (not e!211396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344882 (= res!190874 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12537 () Bool)

(assert (=> mapIsEmpty!12537 mapRes!12537))

(declare-fun b!344883 () Bool)

(assert (=> b!344883 (= e!211396 false)))

(declare-datatypes ((SeekEntryResult!3347 0))(
  ( (MissingZero!3347 (index!15567 (_ BitVec 32))) (Found!3347 (index!15568 (_ BitVec 32))) (Intermediate!3347 (undefined!4159 Bool) (index!15569 (_ BitVec 32)) (x!34368 (_ BitVec 32))) (Undefined!3347) (MissingVacant!3347 (index!15570 (_ BitVec 32))) )
))
(declare-fun lt!162705 () SeekEntryResult!3347)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18355 (_ BitVec 32)) SeekEntryResult!3347)

(assert (=> b!344883 (= lt!162705 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!344884 () Bool)

(declare-fun e!211397 () Bool)

(assert (=> b!344884 (= e!211397 tp_is_empty!7399)))

(declare-fun b!344885 () Bool)

(assert (=> b!344885 (= e!211395 (and e!211397 mapRes!12537))))

(declare-fun condMapEmpty!12537 () Bool)

(declare-fun mapDefault!12537 () ValueCell!3356)

