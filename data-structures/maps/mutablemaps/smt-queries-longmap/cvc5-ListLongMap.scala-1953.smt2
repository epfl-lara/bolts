; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34472 () Bool)

(assert start!34472)

(declare-fun b_free!7387 () Bool)

(declare-fun b_next!7387 () Bool)

(assert (=> start!34472 (= b_free!7387 (not b_next!7387))))

(declare-fun tp!25706 () Bool)

(declare-fun b_and!14613 () Bool)

(assert (=> start!34472 (= tp!25706 b_and!14613)))

(declare-fun mapIsEmpty!12447 () Bool)

(declare-fun mapRes!12447 () Bool)

(assert (=> mapIsEmpty!12447 mapRes!12447))

(declare-fun b!344069 () Bool)

(declare-fun res!190333 () Bool)

(declare-fun e!210944 () Bool)

(assert (=> b!344069 (=> (not res!190333) (not e!210944))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344069 (= res!190333 (validKeyInArray!0 k!1348))))

(declare-fun b!344070 () Bool)

(declare-fun res!190330 () Bool)

(assert (=> b!344070 (=> (not res!190330) (not e!210944))))

(declare-datatypes ((array!18235 0))(
  ( (array!18236 (arr!8631 (Array (_ BitVec 32) (_ BitVec 64))) (size!8983 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18235)

(declare-datatypes ((List!5010 0))(
  ( (Nil!5007) (Cons!5006 (h!5862 (_ BitVec 64)) (t!10134 List!5010)) )
))
(declare-fun arrayNoDuplicates!0 (array!18235 (_ BitVec 32) List!5010) Bool)

(assert (=> b!344070 (= res!190330 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5007))))

(declare-fun mapNonEmpty!12447 () Bool)

(declare-fun tp!25707 () Bool)

(declare-fun e!210946 () Bool)

(assert (=> mapNonEmpty!12447 (= mapRes!12447 (and tp!25707 e!210946))))

(declare-datatypes ((V!10763 0))(
  ( (V!10764 (val!3714 Int)) )
))
(declare-datatypes ((ValueCell!3326 0))(
  ( (ValueCellFull!3326 (v!5886 V!10763)) (EmptyCell!3326) )
))
(declare-fun mapRest!12447 () (Array (_ BitVec 32) ValueCell!3326))

(declare-fun mapKey!12447 () (_ BitVec 32))

(declare-datatypes ((array!18237 0))(
  ( (array!18238 (arr!8632 (Array (_ BitVec 32) ValueCell!3326)) (size!8984 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18237)

(declare-fun mapValue!12447 () ValueCell!3326)

(assert (=> mapNonEmpty!12447 (= (arr!8632 _values!1525) (store mapRest!12447 mapKey!12447 mapValue!12447))))

(declare-fun b!344071 () Bool)

(declare-fun res!190329 () Bool)

(assert (=> b!344071 (=> (not res!190329) (not e!210944))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10763)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10763)

(declare-datatypes ((tuple2!5364 0))(
  ( (tuple2!5365 (_1!2692 (_ BitVec 64)) (_2!2692 V!10763)) )
))
(declare-datatypes ((List!5011 0))(
  ( (Nil!5008) (Cons!5007 (h!5863 tuple2!5364) (t!10135 List!5011)) )
))
(declare-datatypes ((ListLongMap!4291 0))(
  ( (ListLongMap!4292 (toList!2161 List!5011)) )
))
(declare-fun contains!2215 (ListLongMap!4291 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1681 (array!18235 array!18237 (_ BitVec 32) (_ BitVec 32) V!10763 V!10763 (_ BitVec 32) Int) ListLongMap!4291)

(assert (=> b!344071 (= res!190329 (not (contains!2215 (getCurrentListMap!1681 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!344072 () Bool)

(declare-fun res!190332 () Bool)

(assert (=> b!344072 (=> (not res!190332) (not e!210944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18235 (_ BitVec 32)) Bool)

(assert (=> b!344072 (= res!190332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344073 () Bool)

(declare-fun tp_is_empty!7339 () Bool)

(assert (=> b!344073 (= e!210946 tp_is_empty!7339)))

(declare-fun res!190334 () Bool)

(assert (=> start!34472 (=> (not res!190334) (not e!210944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34472 (= res!190334 (validMask!0 mask!2385))))

(assert (=> start!34472 e!210944))

(assert (=> start!34472 true))

(assert (=> start!34472 tp_is_empty!7339))

(assert (=> start!34472 tp!25706))

(declare-fun e!210947 () Bool)

(declare-fun array_inv!6384 (array!18237) Bool)

(assert (=> start!34472 (and (array_inv!6384 _values!1525) e!210947)))

(declare-fun array_inv!6385 (array!18235) Bool)

(assert (=> start!34472 (array_inv!6385 _keys!1895)))

(declare-fun b!344074 () Bool)

(assert (=> b!344074 (= e!210944 false)))

(declare-datatypes ((SeekEntryResult!3330 0))(
  ( (MissingZero!3330 (index!15499 (_ BitVec 32))) (Found!3330 (index!15500 (_ BitVec 32))) (Intermediate!3330 (undefined!4142 Bool) (index!15501 (_ BitVec 32)) (x!34271 (_ BitVec 32))) (Undefined!3330) (MissingVacant!3330 (index!15502 (_ BitVec 32))) )
))
(declare-fun lt!162615 () SeekEntryResult!3330)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18235 (_ BitVec 32)) SeekEntryResult!3330)

(assert (=> b!344074 (= lt!162615 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!344075 () Bool)

(declare-fun e!210948 () Bool)

(assert (=> b!344075 (= e!210947 (and e!210948 mapRes!12447))))

(declare-fun condMapEmpty!12447 () Bool)

(declare-fun mapDefault!12447 () ValueCell!3326)

