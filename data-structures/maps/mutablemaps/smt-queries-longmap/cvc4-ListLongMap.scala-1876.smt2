; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33702 () Bool)

(assert start!33702)

(declare-fun b_free!6929 () Bool)

(declare-fun b_next!6929 () Bool)

(assert (=> start!33702 (= b_free!6929 (not b_next!6929))))

(declare-fun tp!24290 () Bool)

(declare-fun b_and!14127 () Bool)

(assert (=> start!33702 (= tp!24290 b_and!14127)))

(declare-fun b!334630 () Bool)

(declare-fun e!205409 () Bool)

(declare-fun e!205408 () Bool)

(assert (=> b!334630 (= e!205409 e!205408)))

(declare-fun res!184619 () Bool)

(assert (=> b!334630 (=> (not res!184619) (not e!205408))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17347 0))(
  ( (array!17348 (arr!8201 (Array (_ BitVec 32) (_ BitVec 64))) (size!8553 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17347)

(declare-datatypes ((SeekEntryResult!3180 0))(
  ( (MissingZero!3180 (index!14899 (_ BitVec 32))) (Found!3180 (index!14900 (_ BitVec 32))) (Intermediate!3180 (undefined!3992 Bool) (index!14901 (_ BitVec 32)) (x!33365 (_ BitVec 32))) (Undefined!3180) (MissingVacant!3180 (index!14902 (_ BitVec 32))) )
))
(declare-fun lt!159571 () SeekEntryResult!3180)

(assert (=> b!334630 (= res!184619 (and (is-Found!3180 lt!159571) (= (select (arr!8201 _keys!1895) (index!14900 lt!159571)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17347 (_ BitVec 32)) SeekEntryResult!3180)

(assert (=> b!334630 (= lt!159571 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!334631 () Bool)

(declare-fun res!184616 () Bool)

(declare-fun e!205410 () Bool)

(assert (=> b!334631 (=> (not res!184616) (not e!205410))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10151 0))(
  ( (V!10152 (val!3485 Int)) )
))
(declare-datatypes ((ValueCell!3097 0))(
  ( (ValueCellFull!3097 (v!5643 V!10151)) (EmptyCell!3097) )
))
(declare-datatypes ((array!17349 0))(
  ( (array!17350 (arr!8202 (Array (_ BitVec 32) ValueCell!3097)) (size!8554 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17349)

(assert (=> b!334631 (= res!184616 (and (= (size!8554 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8553 _keys!1895) (size!8554 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334632 () Bool)

(declare-fun e!205411 () Bool)

(declare-fun tp_is_empty!6881 () Bool)

(assert (=> b!334632 (= e!205411 tp_is_empty!6881)))

(declare-fun b!334634 () Bool)

(declare-fun res!184621 () Bool)

(assert (=> b!334634 (=> (not res!184621) (not e!205408))))

(declare-fun arrayContainsKey!0 (array!17347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334634 (= res!184621 (arrayContainsKey!0 _keys!1895 k!1348 (index!14900 lt!159571)))))

(declare-fun mapIsEmpty!11718 () Bool)

(declare-fun mapRes!11718 () Bool)

(assert (=> mapIsEmpty!11718 mapRes!11718))

(declare-fun b!334635 () Bool)

(declare-fun e!205413 () Bool)

(declare-fun e!205412 () Bool)

(assert (=> b!334635 (= e!205413 (and e!205412 mapRes!11718))))

(declare-fun condMapEmpty!11718 () Bool)

(declare-fun mapDefault!11718 () ValueCell!3097)

