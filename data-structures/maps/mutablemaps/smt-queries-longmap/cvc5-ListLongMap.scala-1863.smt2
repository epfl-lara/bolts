; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33620 () Bool)

(assert start!33620)

(declare-fun b_free!6847 () Bool)

(declare-fun b_next!6847 () Bool)

(assert (=> start!33620 (= b_free!6847 (not b_next!6847))))

(declare-fun tp!24044 () Bool)

(declare-fun b_and!14045 () Bool)

(assert (=> start!33620 (= tp!24044 b_and!14045)))

(declare-fun mapIsEmpty!11595 () Bool)

(declare-fun mapRes!11595 () Bool)

(assert (=> mapIsEmpty!11595 mapRes!11595))

(declare-fun b!333327 () Bool)

(declare-fun res!183686 () Bool)

(declare-fun e!204687 () Bool)

(assert (=> b!333327 (=> (not res!183686) (not e!204687))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10043 0))(
  ( (V!10044 (val!3444 Int)) )
))
(declare-datatypes ((ValueCell!3056 0))(
  ( (ValueCellFull!3056 (v!5602 V!10043)) (EmptyCell!3056) )
))
(declare-datatypes ((array!17195 0))(
  ( (array!17196 (arr!8125 (Array (_ BitVec 32) ValueCell!3056)) (size!8477 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17195)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((array!17197 0))(
  ( (array!17198 (arr!8126 (Array (_ BitVec 32) (_ BitVec 64))) (size!8478 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17197)

(assert (=> b!333327 (= res!183686 (and (= (size!8477 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8478 _keys!1895) (size!8477 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333328 () Bool)

(assert (=> b!333328 (= e!204687 false)))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3153 0))(
  ( (MissingZero!3153 (index!14791 (_ BitVec 32))) (Found!3153 (index!14792 (_ BitVec 32))) (Intermediate!3153 (undefined!3965 Bool) (index!14793 (_ BitVec 32)) (x!33234 (_ BitVec 32))) (Undefined!3153) (MissingVacant!3153 (index!14794 (_ BitVec 32))) )
))
(declare-fun lt!159333 () SeekEntryResult!3153)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17197 (_ BitVec 32)) SeekEntryResult!3153)

(assert (=> b!333328 (= lt!159333 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!183682 () Bool)

(assert (=> start!33620 (=> (not res!183682) (not e!204687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33620 (= res!183682 (validMask!0 mask!2385))))

(assert (=> start!33620 e!204687))

(assert (=> start!33620 true))

(declare-fun tp_is_empty!6799 () Bool)

(assert (=> start!33620 tp_is_empty!6799))

(assert (=> start!33620 tp!24044))

(declare-fun e!204690 () Bool)

(declare-fun array_inv!6040 (array!17195) Bool)

(assert (=> start!33620 (and (array_inv!6040 _values!1525) e!204690)))

(declare-fun array_inv!6041 (array!17197) Bool)

(assert (=> start!33620 (array_inv!6041 _keys!1895)))

(declare-fun b!333329 () Bool)

(declare-fun res!183684 () Bool)

(assert (=> b!333329 (=> (not res!183684) (not e!204687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333329 (= res!183684 (validKeyInArray!0 k!1348))))

(declare-fun b!333330 () Bool)

(declare-fun e!204686 () Bool)

(assert (=> b!333330 (= e!204690 (and e!204686 mapRes!11595))))

(declare-fun condMapEmpty!11595 () Bool)

(declare-fun mapDefault!11595 () ValueCell!3056)

