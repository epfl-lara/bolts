; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34494 () Bool)

(assert start!34494)

(declare-fun b_free!7409 () Bool)

(declare-fun b_next!7409 () Bool)

(assert (=> start!34494 (= b_free!7409 (not b_next!7409))))

(declare-fun tp!25772 () Bool)

(declare-fun b_and!14635 () Bool)

(assert (=> start!34494 (= tp!25772 b_and!14635)))

(declare-fun b!344367 () Bool)

(declare-fun res!190528 () Bool)

(declare-fun e!211109 () Bool)

(assert (=> b!344367 (=> (not res!190528) (not e!211109))))

(declare-datatypes ((array!18277 0))(
  ( (array!18278 (arr!8652 (Array (_ BitVec 32) (_ BitVec 64))) (size!9004 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18277)

(declare-datatypes ((List!5025 0))(
  ( (Nil!5022) (Cons!5021 (h!5877 (_ BitVec 64)) (t!10149 List!5025)) )
))
(declare-fun arrayNoDuplicates!0 (array!18277 (_ BitVec 32) List!5025) Bool)

(assert (=> b!344367 (= res!190528 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5022))))

(declare-fun b!344368 () Bool)

(declare-fun res!190530 () Bool)

(assert (=> b!344368 (=> (not res!190530) (not e!211109))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10791 0))(
  ( (V!10792 (val!3725 Int)) )
))
(declare-fun zeroValue!1467 () V!10791)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3337 0))(
  ( (ValueCellFull!3337 (v!5897 V!10791)) (EmptyCell!3337) )
))
(declare-datatypes ((array!18279 0))(
  ( (array!18280 (arr!8653 (Array (_ BitVec 32) ValueCell!3337)) (size!9005 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18279)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10791)

(declare-datatypes ((tuple2!5380 0))(
  ( (tuple2!5381 (_1!2700 (_ BitVec 64)) (_2!2700 V!10791)) )
))
(declare-datatypes ((List!5026 0))(
  ( (Nil!5023) (Cons!5022 (h!5878 tuple2!5380) (t!10150 List!5026)) )
))
(declare-datatypes ((ListLongMap!4307 0))(
  ( (ListLongMap!4308 (toList!2169 List!5026)) )
))
(declare-fun contains!2223 (ListLongMap!4307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1689 (array!18277 array!18279 (_ BitVec 32) (_ BitVec 32) V!10791 V!10791 (_ BitVec 32) Int) ListLongMap!4307)

(assert (=> b!344368 (= res!190530 (not (contains!2223 (getCurrentListMap!1689 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12480 () Bool)

(declare-fun mapRes!12480 () Bool)

(declare-fun tp!25773 () Bool)

(declare-fun e!211111 () Bool)

(assert (=> mapNonEmpty!12480 (= mapRes!12480 (and tp!25773 e!211111))))

(declare-fun mapRest!12480 () (Array (_ BitVec 32) ValueCell!3337))

(declare-fun mapValue!12480 () ValueCell!3337)

(declare-fun mapKey!12480 () (_ BitVec 32))

(assert (=> mapNonEmpty!12480 (= (arr!8653 _values!1525) (store mapRest!12480 mapKey!12480 mapValue!12480))))

(declare-fun b!344369 () Bool)

(declare-fun tp_is_empty!7361 () Bool)

(assert (=> b!344369 (= e!211111 tp_is_empty!7361)))

(declare-fun mapIsEmpty!12480 () Bool)

(assert (=> mapIsEmpty!12480 mapRes!12480))

(declare-fun b!344370 () Bool)

(declare-fun res!190527 () Bool)

(assert (=> b!344370 (=> (not res!190527) (not e!211109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18277 (_ BitVec 32)) Bool)

(assert (=> b!344370 (= res!190527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344371 () Bool)

(declare-fun e!211112 () Bool)

(declare-fun e!211110 () Bool)

(assert (=> b!344371 (= e!211112 (and e!211110 mapRes!12480))))

(declare-fun condMapEmpty!12480 () Bool)

(declare-fun mapDefault!12480 () ValueCell!3337)

