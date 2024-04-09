; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35186 () Bool)

(assert start!35186)

(declare-fun b_free!7771 () Bool)

(declare-fun b_next!7771 () Bool)

(assert (=> start!35186 (= b_free!7771 (not b_next!7771))))

(declare-fun tp!26904 () Bool)

(declare-fun b_and!15027 () Bool)

(assert (=> start!35186 (= tp!26904 b_and!15027)))

(declare-fun b!352415 () Bool)

(declare-fun e!215823 () Bool)

(declare-fun tp_is_empty!7723 () Bool)

(assert (=> b!352415 (= e!215823 tp_is_empty!7723)))

(declare-fun b!352416 () Bool)

(declare-fun res!195472 () Bool)

(declare-fun e!215822 () Bool)

(assert (=> b!352416 (=> (not res!195472) (not e!215822))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11275 0))(
  ( (V!11276 (val!3906 Int)) )
))
(declare-fun zeroValue!1467 () V!11275)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3518 0))(
  ( (ValueCellFull!3518 (v!6093 V!11275)) (EmptyCell!3518) )
))
(declare-datatypes ((array!18995 0))(
  ( (array!18996 (arr!8996 (Array (_ BitVec 32) ValueCell!3518)) (size!9348 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18995)

(declare-datatypes ((array!18997 0))(
  ( (array!18998 (arr!8997 (Array (_ BitVec 32) (_ BitVec 64))) (size!9349 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18997)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11275)

(declare-datatypes ((tuple2!5632 0))(
  ( (tuple2!5633 (_1!2826 (_ BitVec 64)) (_2!2826 V!11275)) )
))
(declare-datatypes ((List!5269 0))(
  ( (Nil!5266) (Cons!5265 (h!6121 tuple2!5632) (t!10423 List!5269)) )
))
(declare-datatypes ((ListLongMap!4559 0))(
  ( (ListLongMap!4560 (toList!2295 List!5269)) )
))
(declare-fun contains!2364 (ListLongMap!4559 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1812 (array!18997 array!18995 (_ BitVec 32) (_ BitVec 32) V!11275 V!11275 (_ BitVec 32) Int) ListLongMap!4559)

(assert (=> b!352416 (= res!195472 (not (contains!2364 (getCurrentListMap!1812 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!352417 () Bool)

(declare-fun res!195471 () Bool)

(assert (=> b!352417 (=> (not res!195471) (not e!215822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352417 (= res!195471 (validKeyInArray!0 k!1348))))

(declare-fun b!352418 () Bool)

(declare-fun e!215825 () Bool)

(declare-fun e!215826 () Bool)

(declare-fun mapRes!13068 () Bool)

(assert (=> b!352418 (= e!215825 (and e!215826 mapRes!13068))))

(declare-fun condMapEmpty!13068 () Bool)

(declare-fun mapDefault!13068 () ValueCell!3518)

