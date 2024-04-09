; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35006 () Bool)

(assert start!35006)

(declare-fun b_free!7687 () Bool)

(declare-fun b_next!7687 () Bool)

(assert (=> start!35006 (= b_free!7687 (not b_next!7687))))

(declare-fun tp!26639 () Bool)

(declare-fun b_and!14935 () Bool)

(assert (=> start!35006 (= tp!26639 b_and!14935)))

(declare-fun b!350376 () Bool)

(declare-fun e!214626 () Bool)

(assert (=> b!350376 (= e!214626 false)))

(declare-fun lt!164568 () (_ BitVec 32))

(declare-datatypes ((array!18831 0))(
  ( (array!18832 (arr!8918 (Array (_ BitVec 32) (_ BitVec 64))) (size!9270 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18831)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18831 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350376 (= lt!164568 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!350377 () Bool)

(declare-fun res!194253 () Bool)

(declare-fun e!214625 () Bool)

(assert (=> b!350377 (=> (not res!194253) (not e!214625))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11163 0))(
  ( (V!11164 (val!3864 Int)) )
))
(declare-fun zeroValue!1467 () V!11163)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3476 0))(
  ( (ValueCellFull!3476 (v!6047 V!11163)) (EmptyCell!3476) )
))
(declare-datatypes ((array!18833 0))(
  ( (array!18834 (arr!8919 (Array (_ BitVec 32) ValueCell!3476)) (size!9271 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18833)

(declare-fun minValue!1467 () V!11163)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((tuple2!5574 0))(
  ( (tuple2!5575 (_1!2797 (_ BitVec 64)) (_2!2797 V!11163)) )
))
(declare-datatypes ((List!5213 0))(
  ( (Nil!5210) (Cons!5209 (h!6065 tuple2!5574) (t!10359 List!5213)) )
))
(declare-datatypes ((ListLongMap!4501 0))(
  ( (ListLongMap!4502 (toList!2266 List!5213)) )
))
(declare-fun contains!2331 (ListLongMap!4501 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1783 (array!18831 array!18833 (_ BitVec 32) (_ BitVec 32) V!11163 V!11163 (_ BitVec 32) Int) ListLongMap!4501)

(assert (=> b!350377 (= res!194253 (not (contains!2331 (getCurrentListMap!1783 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!350378 () Bool)

(assert (=> b!350378 (= e!214625 e!214626)))

(declare-fun res!194259 () Bool)

(assert (=> b!350378 (=> (not res!194259) (not e!214626))))

(declare-datatypes ((SeekEntryResult!3434 0))(
  ( (MissingZero!3434 (index!15915 (_ BitVec 32))) (Found!3434 (index!15916 (_ BitVec 32))) (Intermediate!3434 (undefined!4246 Bool) (index!15917 (_ BitVec 32)) (x!34885 (_ BitVec 32))) (Undefined!3434) (MissingVacant!3434 (index!15918 (_ BitVec 32))) )
))
(declare-fun lt!164567 () SeekEntryResult!3434)

(assert (=> b!350378 (= res!194259 (and (not (is-Found!3434 lt!164567)) (not (is-MissingZero!3434 lt!164567)) (is-MissingVacant!3434 lt!164567)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18831 (_ BitVec 32)) SeekEntryResult!3434)

(assert (=> b!350378 (= lt!164567 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12930 () Bool)

(declare-fun mapRes!12930 () Bool)

(assert (=> mapIsEmpty!12930 mapRes!12930))

(declare-fun b!350379 () Bool)

(declare-fun res!194252 () Bool)

(assert (=> b!350379 (=> (not res!194252) (not e!214626))))

(declare-fun arrayContainsKey!0 (array!18831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350379 (= res!194252 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12930 () Bool)

(declare-fun tp!26640 () Bool)

(declare-fun e!214629 () Bool)

(assert (=> mapNonEmpty!12930 (= mapRes!12930 (and tp!26640 e!214629))))

(declare-fun mapValue!12930 () ValueCell!3476)

(declare-fun mapKey!12930 () (_ BitVec 32))

(declare-fun mapRest!12930 () (Array (_ BitVec 32) ValueCell!3476))

(assert (=> mapNonEmpty!12930 (= (arr!8919 _values!1525) (store mapRest!12930 mapKey!12930 mapValue!12930))))

(declare-fun b!350380 () Bool)

(declare-fun res!194256 () Bool)

(assert (=> b!350380 (=> (not res!194256) (not e!214625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350380 (= res!194256 (validKeyInArray!0 k!1348))))

(declare-fun b!350381 () Bool)

(declare-fun res!194258 () Bool)

(assert (=> b!350381 (=> (not res!194258) (not e!214625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18831 (_ BitVec 32)) Bool)

(assert (=> b!350381 (= res!194258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350382 () Bool)

(declare-fun res!194257 () Bool)

(assert (=> b!350382 (=> (not res!194257) (not e!214625))))

(assert (=> b!350382 (= res!194257 (and (= (size!9271 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9270 _keys!1895) (size!9271 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350383 () Bool)

(declare-fun e!214628 () Bool)

(declare-fun tp_is_empty!7639 () Bool)

(assert (=> b!350383 (= e!214628 tp_is_empty!7639)))

(declare-fun res!194255 () Bool)

(assert (=> start!35006 (=> (not res!194255) (not e!214625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35006 (= res!194255 (validMask!0 mask!2385))))

(assert (=> start!35006 e!214625))

(assert (=> start!35006 true))

(assert (=> start!35006 tp_is_empty!7639))

(assert (=> start!35006 tp!26639))

(declare-fun e!214630 () Bool)

(declare-fun array_inv!6572 (array!18833) Bool)

(assert (=> start!35006 (and (array_inv!6572 _values!1525) e!214630)))

(declare-fun array_inv!6573 (array!18831) Bool)

(assert (=> start!35006 (array_inv!6573 _keys!1895)))

(declare-fun b!350384 () Bool)

(declare-fun res!194254 () Bool)

(assert (=> b!350384 (=> (not res!194254) (not e!214625))))

(declare-datatypes ((List!5214 0))(
  ( (Nil!5211) (Cons!5210 (h!6066 (_ BitVec 64)) (t!10360 List!5214)) )
))
(declare-fun arrayNoDuplicates!0 (array!18831 (_ BitVec 32) List!5214) Bool)

(assert (=> b!350384 (= res!194254 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5211))))

(declare-fun b!350385 () Bool)

(assert (=> b!350385 (= e!214629 tp_is_empty!7639)))

(declare-fun b!350386 () Bool)

(assert (=> b!350386 (= e!214630 (and e!214628 mapRes!12930))))

(declare-fun condMapEmpty!12930 () Bool)

(declare-fun mapDefault!12930 () ValueCell!3476)

