; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34638 () Bool)

(assert start!34638)

(declare-fun b_free!7477 () Bool)

(declare-fun b_next!7477 () Bool)

(assert (=> start!34638 (= b_free!7477 (not b_next!7477))))

(declare-fun tp!25988 () Bool)

(declare-fun b_and!14711 () Bool)

(assert (=> start!34638 (= tp!25988 b_and!14711)))

(declare-fun b!345835 () Bool)

(declare-fun res!191364 () Bool)

(declare-fun e!211980 () Bool)

(assert (=> b!345835 (=> (not res!191364) (not e!211980))))

(declare-datatypes ((SeekEntryResult!3356 0))(
  ( (MissingZero!3356 (index!15603 (_ BitVec 32))) (Found!3356 (index!15604 (_ BitVec 32))) (Intermediate!3356 (undefined!4168 Bool) (index!15605 (_ BitVec 32)) (x!34457 (_ BitVec 32))) (Undefined!3356) (MissingVacant!3356 (index!15606 (_ BitVec 32))) )
))
(declare-fun lt!163134 () SeekEntryResult!3356)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18415 0))(
  ( (array!18416 (arr!8717 (Array (_ BitVec 32) (_ BitVec 64))) (size!9069 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18415)

(declare-fun arrayContainsKey!0 (array!18415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!345835 (= res!191364 (arrayContainsKey!0 _keys!1895 k!1348 (index!15604 lt!163134)))))

(declare-fun b!345836 () Bool)

(declare-fun res!191362 () Bool)

(declare-fun e!211976 () Bool)

(assert (=> b!345836 (=> (not res!191362) (not e!211976))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18415 (_ BitVec 32)) Bool)

(assert (=> b!345836 (= res!191362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!345837 () Bool)

(declare-fun e!211978 () Bool)

(declare-fun tp_is_empty!7429 () Bool)

(assert (=> b!345837 (= e!211978 tp_is_empty!7429)))

(declare-fun b!345838 () Bool)

(assert (=> b!345838 (= e!211976 e!211980)))

(declare-fun res!191369 () Bool)

(assert (=> b!345838 (=> (not res!191369) (not e!211980))))

(assert (=> b!345838 (= res!191369 (and (is-Found!3356 lt!163134) (= (select (arr!8717 _keys!1895) (index!15604 lt!163134)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18415 (_ BitVec 32)) SeekEntryResult!3356)

(assert (=> b!345838 (= lt!163134 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!345839 () Bool)

(declare-fun res!191367 () Bool)

(assert (=> b!345839 (=> (not res!191367) (not e!211976))))

(declare-datatypes ((V!10883 0))(
  ( (V!10884 (val!3759 Int)) )
))
(declare-fun zeroValue!1467 () V!10883)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3371 0))(
  ( (ValueCellFull!3371 (v!5935 V!10883)) (EmptyCell!3371) )
))
(declare-datatypes ((array!18417 0))(
  ( (array!18418 (arr!8718 (Array (_ BitVec 32) ValueCell!3371)) (size!9070 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18417)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10883)

(declare-datatypes ((tuple2!5424 0))(
  ( (tuple2!5425 (_1!2722 (_ BitVec 64)) (_2!2722 V!10883)) )
))
(declare-datatypes ((List!5071 0))(
  ( (Nil!5068) (Cons!5067 (h!5923 tuple2!5424) (t!10203 List!5071)) )
))
(declare-datatypes ((ListLongMap!4351 0))(
  ( (ListLongMap!4352 (toList!2191 List!5071)) )
))
(declare-fun contains!2249 (ListLongMap!4351 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1711 (array!18415 array!18417 (_ BitVec 32) (_ BitVec 32) V!10883 V!10883 (_ BitVec 32) Int) ListLongMap!4351)

(assert (=> b!345839 (= res!191367 (not (contains!2249 (getCurrentListMap!1711 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!345840 () Bool)

(declare-fun res!191366 () Bool)

(assert (=> b!345840 (=> (not res!191366) (not e!211976))))

(declare-datatypes ((List!5072 0))(
  ( (Nil!5069) (Cons!5068 (h!5924 (_ BitVec 64)) (t!10204 List!5072)) )
))
(declare-fun arrayNoDuplicates!0 (array!18415 (_ BitVec 32) List!5072) Bool)

(assert (=> b!345840 (= res!191366 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5069))))

(declare-fun res!191365 () Bool)

(assert (=> start!34638 (=> (not res!191365) (not e!211976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34638 (= res!191365 (validMask!0 mask!2385))))

(assert (=> start!34638 e!211976))

(assert (=> start!34638 true))

(assert (=> start!34638 tp_is_empty!7429))

(assert (=> start!34638 tp!25988))

(declare-fun e!211975 () Bool)

(declare-fun array_inv!6446 (array!18417) Bool)

(assert (=> start!34638 (and (array_inv!6446 _values!1525) e!211975)))

(declare-fun array_inv!6447 (array!18415) Bool)

(assert (=> start!34638 (array_inv!6447 _keys!1895)))

(declare-fun b!345841 () Bool)

(declare-fun e!211977 () Bool)

(assert (=> b!345841 (= e!211977 tp_is_empty!7429)))

(declare-fun mapIsEmpty!12594 () Bool)

(declare-fun mapRes!12594 () Bool)

(assert (=> mapIsEmpty!12594 mapRes!12594))

(declare-fun mapNonEmpty!12594 () Bool)

(declare-fun tp!25989 () Bool)

(assert (=> mapNonEmpty!12594 (= mapRes!12594 (and tp!25989 e!211977))))

(declare-fun mapKey!12594 () (_ BitVec 32))

(declare-fun mapValue!12594 () ValueCell!3371)

(declare-fun mapRest!12594 () (Array (_ BitVec 32) ValueCell!3371))

(assert (=> mapNonEmpty!12594 (= (arr!8718 _values!1525) (store mapRest!12594 mapKey!12594 mapValue!12594))))

(declare-fun b!345842 () Bool)

(assert (=> b!345842 (= e!211980 (and (bvsge (index!15604 lt!163134) #b00000000000000000000000000000000) (bvsge (index!15604 lt!163134) (size!9069 _keys!1895))))))

(declare-fun b!345843 () Bool)

(declare-fun res!191363 () Bool)

(assert (=> b!345843 (=> (not res!191363) (not e!211976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345843 (= res!191363 (validKeyInArray!0 k!1348))))

(declare-fun b!345844 () Bool)

(assert (=> b!345844 (= e!211975 (and e!211978 mapRes!12594))))

(declare-fun condMapEmpty!12594 () Bool)

(declare-fun mapDefault!12594 () ValueCell!3371)

