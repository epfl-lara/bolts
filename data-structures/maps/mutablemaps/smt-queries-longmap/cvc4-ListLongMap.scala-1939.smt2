; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34340 () Bool)

(assert start!34340)

(declare-fun b_free!7307 () Bool)

(declare-fun b_next!7307 () Bool)

(assert (=> start!34340 (= b_free!7307 (not b_next!7307))))

(declare-fun tp!25460 () Bool)

(declare-fun b_and!14529 () Bool)

(assert (=> start!34340 (= tp!25460 b_and!14529)))

(declare-fun b!342564 () Bool)

(declare-fun e!210074 () Bool)

(declare-fun tp_is_empty!7259 () Bool)

(assert (=> b!342564 (= e!210074 tp_is_empty!7259)))

(declare-fun b!342565 () Bool)

(declare-fun res!189440 () Bool)

(declare-fun e!210077 () Bool)

(assert (=> b!342565 (=> (not res!189440) (not e!210077))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10655 0))(
  ( (V!10656 (val!3674 Int)) )
))
(declare-datatypes ((ValueCell!3286 0))(
  ( (ValueCellFull!3286 (v!5844 V!10655)) (EmptyCell!3286) )
))
(declare-datatypes ((array!18085 0))(
  ( (array!18086 (arr!8558 (Array (_ BitVec 32) ValueCell!3286)) (size!8910 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18085)

(declare-datatypes ((array!18087 0))(
  ( (array!18088 (arr!8559 (Array (_ BitVec 32) (_ BitVec 64))) (size!8911 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18087)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!342565 (= res!189440 (and (= (size!8910 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8911 _keys!1895) (size!8910 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342566 () Bool)

(declare-fun e!210073 () Bool)

(assert (=> b!342566 (= e!210073 tp_is_empty!7259)))

(declare-fun b!342567 () Bool)

(declare-fun res!189437 () Bool)

(assert (=> b!342567 (=> (not res!189437) (not e!210077))))

(declare-datatypes ((List!4956 0))(
  ( (Nil!4953) (Cons!4952 (h!5808 (_ BitVec 64)) (t!10076 List!4956)) )
))
(declare-fun arrayNoDuplicates!0 (array!18087 (_ BitVec 32) List!4956) Bool)

(assert (=> b!342567 (= res!189437 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4953))))

(declare-fun b!342568 () Bool)

(declare-fun e!210078 () Bool)

(assert (=> b!342568 (= e!210077 e!210078)))

(declare-fun res!189434 () Bool)

(assert (=> b!342568 (=> (not res!189434) (not e!210078))))

(declare-datatypes ((SeekEntryResult!3301 0))(
  ( (MissingZero!3301 (index!15383 (_ BitVec 32))) (Found!3301 (index!15384 (_ BitVec 32))) (Intermediate!3301 (undefined!4113 Bool) (index!15385 (_ BitVec 32)) (x!34110 (_ BitVec 32))) (Undefined!3301) (MissingVacant!3301 (index!15386 (_ BitVec 32))) )
))
(declare-fun lt!162201 () SeekEntryResult!3301)

(assert (=> b!342568 (= res!189434 (and (not (is-Found!3301 lt!162201)) (not (is-MissingZero!3301 lt!162201)) (is-MissingVacant!3301 lt!162201)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18087 (_ BitVec 32)) SeekEntryResult!3301)

(assert (=> b!342568 (= lt!162201 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!342570 () Bool)

(declare-fun res!189435 () Bool)

(assert (=> b!342570 (=> (not res!189435) (not e!210077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342570 (= res!189435 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12321 () Bool)

(declare-fun mapRes!12321 () Bool)

(assert (=> mapIsEmpty!12321 mapRes!12321))

(declare-fun b!342571 () Bool)

(declare-datatypes ((Unit!10682 0))(
  ( (Unit!10683) )
))
(declare-fun e!210075 () Unit!10682)

(declare-fun Unit!10684 () Unit!10682)

(assert (=> b!342571 (= e!210075 Unit!10684)))

(declare-fun zeroValue!1467 () V!10655)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!162200 () Unit!10682)

(declare-fun minValue!1467 () V!10655)

(declare-fun lemmaArrayContainsKeyThenInListMap!307 (array!18087 array!18085 (_ BitVec 32) (_ BitVec 32) V!10655 V!10655 (_ BitVec 64) (_ BitVec 32) Int) Unit!10682)

(declare-fun arrayScanForKey!0 (array!18087 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342571 (= lt!162200 (lemmaArrayContainsKeyThenInListMap!307 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342571 false))

(declare-fun b!342572 () Bool)

(assert (=> b!342572 (= e!210078 false)))

(declare-fun lt!162199 () Unit!10682)

(assert (=> b!342572 (= lt!162199 e!210075)))

(declare-fun c!52763 () Bool)

(declare-fun arrayContainsKey!0 (array!18087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342572 (= c!52763 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12321 () Bool)

(declare-fun tp!25461 () Bool)

(assert (=> mapNonEmpty!12321 (= mapRes!12321 (and tp!25461 e!210074))))

(declare-fun mapValue!12321 () ValueCell!3286)

(declare-fun mapKey!12321 () (_ BitVec 32))

(declare-fun mapRest!12321 () (Array (_ BitVec 32) ValueCell!3286))

(assert (=> mapNonEmpty!12321 (= (arr!8558 _values!1525) (store mapRest!12321 mapKey!12321 mapValue!12321))))

(declare-fun b!342573 () Bool)

(declare-fun res!189436 () Bool)

(assert (=> b!342573 (=> (not res!189436) (not e!210077))))

(declare-datatypes ((tuple2!5314 0))(
  ( (tuple2!5315 (_1!2667 (_ BitVec 64)) (_2!2667 V!10655)) )
))
(declare-datatypes ((List!4957 0))(
  ( (Nil!4954) (Cons!4953 (h!5809 tuple2!5314) (t!10077 List!4957)) )
))
(declare-datatypes ((ListLongMap!4241 0))(
  ( (ListLongMap!4242 (toList!2136 List!4957)) )
))
(declare-fun contains!2188 (ListLongMap!4241 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1656 (array!18087 array!18085 (_ BitVec 32) (_ BitVec 32) V!10655 V!10655 (_ BitVec 32) Int) ListLongMap!4241)

(assert (=> b!342573 (= res!189436 (not (contains!2188 (getCurrentListMap!1656 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!342574 () Bool)

(declare-fun res!189439 () Bool)

(assert (=> b!342574 (=> (not res!189439) (not e!210077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18087 (_ BitVec 32)) Bool)

(assert (=> b!342574 (= res!189439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342575 () Bool)

(declare-fun Unit!10685 () Unit!10682)

(assert (=> b!342575 (= e!210075 Unit!10685)))

(declare-fun res!189438 () Bool)

(assert (=> start!34340 (=> (not res!189438) (not e!210077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34340 (= res!189438 (validMask!0 mask!2385))))

(assert (=> start!34340 e!210077))

(assert (=> start!34340 true))

(assert (=> start!34340 tp_is_empty!7259))

(assert (=> start!34340 tp!25460))

(declare-fun e!210072 () Bool)

(declare-fun array_inv!6328 (array!18085) Bool)

(assert (=> start!34340 (and (array_inv!6328 _values!1525) e!210072)))

(declare-fun array_inv!6329 (array!18087) Bool)

(assert (=> start!34340 (array_inv!6329 _keys!1895)))

(declare-fun b!342569 () Bool)

(assert (=> b!342569 (= e!210072 (and e!210073 mapRes!12321))))

(declare-fun condMapEmpty!12321 () Bool)

(declare-fun mapDefault!12321 () ValueCell!3286)

