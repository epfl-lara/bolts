; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34916 () Bool)

(assert start!34916)

(declare-fun b_free!7649 () Bool)

(declare-fun b_next!7649 () Bool)

(assert (=> start!34916 (= b_free!7649 (not b_next!7649))))

(declare-fun tp!26520 () Bool)

(declare-fun b_and!14893 () Bool)

(assert (=> start!34916 (= tp!26520 b_and!14893)))

(declare-fun b!349355 () Bool)

(declare-fun e!214014 () Bool)

(assert (=> b!349355 (= e!214014 (not true))))

(assert (=> b!349355 false))

(declare-datatypes ((V!11111 0))(
  ( (V!11112 (val!3845 Int)) )
))
(declare-fun zeroValue!1467 () V!11111)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3457 0))(
  ( (ValueCellFull!3457 (v!6026 V!11111)) (EmptyCell!3457) )
))
(declare-datatypes ((array!18757 0))(
  ( (array!18758 (arr!8883 (Array (_ BitVec 32) ValueCell!3457)) (size!9235 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18757)

(declare-datatypes ((array!18759 0))(
  ( (array!18760 (arr!8884 (Array (_ BitVec 32) (_ BitVec 64))) (size!9236 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18759)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11111)

(declare-datatypes ((Unit!10816 0))(
  ( (Unit!10817) )
))
(declare-fun lt!164187 () Unit!10816)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!317 (array!18759 array!18757 (_ BitVec 32) (_ BitVec 32) V!11111 V!11111 (_ BitVec 64) (_ BitVec 32) Int) Unit!10816)

(declare-fun arrayScanForKey!0 (array!18759 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349355 (= lt!164187 (lemmaArrayContainsKeyThenInListMap!317 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(declare-fun b!349356 () Bool)

(declare-fun e!214017 () Bool)

(declare-fun e!214018 () Bool)

(declare-fun mapRes!12867 () Bool)

(assert (=> b!349356 (= e!214017 (and e!214018 mapRes!12867))))

(declare-fun condMapEmpty!12867 () Bool)

(declare-fun mapDefault!12867 () ValueCell!3457)

