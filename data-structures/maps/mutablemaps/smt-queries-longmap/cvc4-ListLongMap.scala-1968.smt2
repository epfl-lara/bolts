; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34642 () Bool)

(assert start!34642)

(declare-fun b_free!7481 () Bool)

(declare-fun b_next!7481 () Bool)

(assert (=> start!34642 (= b_free!7481 (not b_next!7481))))

(declare-fun tp!26001 () Bool)

(declare-fun b_and!14715 () Bool)

(assert (=> start!34642 (= tp!26001 b_and!14715)))

(declare-fun b!345901 () Bool)

(declare-fun res!191414 () Bool)

(declare-fun e!212011 () Bool)

(assert (=> b!345901 (=> (not res!191414) (not e!212011))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345901 (= res!191414 (validKeyInArray!0 k!1348))))

(declare-fun b!345902 () Bool)

(declare-fun res!191417 () Bool)

(assert (=> b!345902 (=> (not res!191417) (not e!212011))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10887 0))(
  ( (V!10888 (val!3761 Int)) )
))
(declare-fun zeroValue!1467 () V!10887)

(declare-datatypes ((array!18423 0))(
  ( (array!18424 (arr!8721 (Array (_ BitVec 32) (_ BitVec 64))) (size!9073 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18423)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10887)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3373 0))(
  ( (ValueCellFull!3373 (v!5937 V!10887)) (EmptyCell!3373) )
))
(declare-datatypes ((array!18425 0))(
  ( (array!18426 (arr!8722 (Array (_ BitVec 32) ValueCell!3373)) (size!9074 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18425)

(declare-datatypes ((tuple2!5428 0))(
  ( (tuple2!5429 (_1!2724 (_ BitVec 64)) (_2!2724 V!10887)) )
))
(declare-datatypes ((List!5075 0))(
  ( (Nil!5072) (Cons!5071 (h!5927 tuple2!5428) (t!10207 List!5075)) )
))
(declare-datatypes ((ListLongMap!4355 0))(
  ( (ListLongMap!4356 (toList!2193 List!5075)) )
))
(declare-fun contains!2251 (ListLongMap!4355 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1713 (array!18423 array!18425 (_ BitVec 32) (_ BitVec 32) V!10887 V!10887 (_ BitVec 32) Int) ListLongMap!4355)

(assert (=> b!345902 (= res!191417 (not (contains!2251 (getCurrentListMap!1713 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun res!191412 () Bool)

(assert (=> start!34642 (=> (not res!191412) (not e!212011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34642 (= res!191412 (validMask!0 mask!2385))))

(assert (=> start!34642 e!212011))

(assert (=> start!34642 true))

(declare-fun tp_is_empty!7433 () Bool)

(assert (=> start!34642 tp_is_empty!7433))

(assert (=> start!34642 tp!26001))

(declare-fun e!212014 () Bool)

(declare-fun array_inv!6450 (array!18425) Bool)

(assert (=> start!34642 (and (array_inv!6450 _values!1525) e!212014)))

(declare-fun array_inv!6451 (array!18423) Bool)

(assert (=> start!34642 (array_inv!6451 _keys!1895)))

(declare-fun b!345903 () Bool)

(declare-fun e!212012 () Bool)

(assert (=> b!345903 (= e!212012 tp_is_empty!7433)))

(declare-fun b!345904 () Bool)

(declare-fun res!191411 () Bool)

(assert (=> b!345904 (=> (not res!191411) (not e!212011))))

(declare-datatypes ((List!5076 0))(
  ( (Nil!5073) (Cons!5072 (h!5928 (_ BitVec 64)) (t!10208 List!5076)) )
))
(declare-fun arrayNoDuplicates!0 (array!18423 (_ BitVec 32) List!5076) Bool)

(assert (=> b!345904 (= res!191411 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5073))))

(declare-fun b!345905 () Bool)

(declare-fun e!212016 () Bool)

(assert (=> b!345905 (= e!212016 tp_is_empty!7433)))

(declare-fun b!345906 () Bool)

(declare-fun res!191415 () Bool)

(declare-fun e!212013 () Bool)

(assert (=> b!345906 (=> (not res!191415) (not e!212013))))

(declare-datatypes ((SeekEntryResult!3358 0))(
  ( (MissingZero!3358 (index!15611 (_ BitVec 32))) (Found!3358 (index!15612 (_ BitVec 32))) (Intermediate!3358 (undefined!4170 Bool) (index!15613 (_ BitVec 32)) (x!34459 (_ BitVec 32))) (Undefined!3358) (MissingVacant!3358 (index!15614 (_ BitVec 32))) )
))
(declare-fun lt!163140 () SeekEntryResult!3358)

(declare-fun arrayContainsKey!0 (array!18423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!345906 (= res!191415 (arrayContainsKey!0 _keys!1895 k!1348 (index!15612 lt!163140)))))

(declare-fun b!345907 () Bool)

(declare-fun res!191416 () Bool)

(assert (=> b!345907 (=> (not res!191416) (not e!212011))))

(assert (=> b!345907 (= res!191416 (and (= (size!9074 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9073 _keys!1895) (size!9074 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!345908 () Bool)

(assert (=> b!345908 (= e!212011 e!212013)))

(declare-fun res!191413 () Bool)

(assert (=> b!345908 (=> (not res!191413) (not e!212013))))

(assert (=> b!345908 (= res!191413 (and (is-Found!3358 lt!163140) (= (select (arr!8721 _keys!1895) (index!15612 lt!163140)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18423 (_ BitVec 32)) SeekEntryResult!3358)

(assert (=> b!345908 (= lt!163140 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12600 () Bool)

(declare-fun mapRes!12600 () Bool)

(assert (=> mapIsEmpty!12600 mapRes!12600))

(declare-fun b!345909 () Bool)

(assert (=> b!345909 (= e!212014 (and e!212016 mapRes!12600))))

(declare-fun condMapEmpty!12600 () Bool)

(declare-fun mapDefault!12600 () ValueCell!3373)

