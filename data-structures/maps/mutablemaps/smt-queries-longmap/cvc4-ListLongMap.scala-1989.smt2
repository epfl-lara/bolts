; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34830 () Bool)

(assert start!34830)

(declare-fun b_free!7607 () Bool)

(declare-fun b_next!7607 () Bool)

(assert (=> start!34830 (= b_free!7607 (not b_next!7607))))

(declare-fun tp!26387 () Bool)

(declare-fun b_and!14847 () Bool)

(assert (=> start!34830 (= tp!26387 b_and!14847)))

(declare-fun mapIsEmpty!12798 () Bool)

(declare-fun mapRes!12798 () Bool)

(assert (=> mapIsEmpty!12798 mapRes!12798))

(declare-fun b!348372 () Bool)

(declare-fun res!193074 () Bool)

(declare-fun e!213447 () Bool)

(assert (=> b!348372 (=> (not res!193074) (not e!213447))))

(declare-datatypes ((array!18671 0))(
  ( (array!18672 (arr!8842 (Array (_ BitVec 32) (_ BitVec 64))) (size!9194 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18671)

(declare-datatypes ((List!5163 0))(
  ( (Nil!5160) (Cons!5159 (h!6015 (_ BitVec 64)) (t!10301 List!5163)) )
))
(declare-fun arrayNoDuplicates!0 (array!18671 (_ BitVec 32) List!5163) Bool)

(assert (=> b!348372 (= res!193074 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5160))))

(declare-fun b!348373 () Bool)

(declare-fun res!193069 () Bool)

(assert (=> b!348373 (=> (not res!193069) (not e!213447))))

(declare-datatypes ((V!11055 0))(
  ( (V!11056 (val!3824 Int)) )
))
(declare-datatypes ((ValueCell!3436 0))(
  ( (ValueCellFull!3436 (v!6003 V!11055)) (EmptyCell!3436) )
))
(declare-datatypes ((array!18673 0))(
  ( (array!18674 (arr!8843 (Array (_ BitVec 32) ValueCell!3436)) (size!9195 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18673)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun mask!2385 () (_ BitVec 32))

(assert (=> b!348373 (= res!193069 (and (= (size!9195 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9194 _keys!1895) (size!9195 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348374 () Bool)

(declare-fun e!213445 () Bool)

(declare-fun e!213449 () Bool)

(assert (=> b!348374 (= e!213445 (and e!213449 mapRes!12798))))

(declare-fun condMapEmpty!12798 () Bool)

(declare-fun mapDefault!12798 () ValueCell!3436)

