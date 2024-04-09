; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33648 () Bool)

(assert start!33648)

(declare-fun b_free!6875 () Bool)

(declare-fun b_next!6875 () Bool)

(assert (=> start!33648 (= b_free!6875 (not b_next!6875))))

(declare-fun tp!24129 () Bool)

(declare-fun b_and!14073 () Bool)

(assert (=> start!33648 (= tp!24129 b_and!14073)))

(declare-fun b!333739 () Bool)

(declare-fun res!183970 () Bool)

(declare-fun e!204914 () Bool)

(assert (=> b!333739 (=> (not res!183970) (not e!204914))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10079 0))(
  ( (V!10080 (val!3458 Int)) )
))
(declare-datatypes ((ValueCell!3070 0))(
  ( (ValueCellFull!3070 (v!5616 V!10079)) (EmptyCell!3070) )
))
(declare-datatypes ((array!17245 0))(
  ( (array!17246 (arr!8150 (Array (_ BitVec 32) ValueCell!3070)) (size!8502 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17245)

(declare-datatypes ((array!17247 0))(
  ( (array!17248 (arr!8151 (Array (_ BitVec 32) (_ BitVec 64))) (size!8503 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17247)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333739 (= res!183970 (and (= (size!8502 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8503 _keys!1895) (size!8502 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333740 () Bool)

(declare-fun e!204915 () Bool)

(declare-fun tp_is_empty!6827 () Bool)

(assert (=> b!333740 (= e!204915 tp_is_empty!6827)))

(declare-fun mapIsEmpty!11637 () Bool)

(declare-fun mapRes!11637 () Bool)

(assert (=> mapIsEmpty!11637 mapRes!11637))

(declare-fun b!333741 () Bool)

(declare-fun e!204918 () Bool)

(assert (=> b!333741 (= e!204914 e!204918)))

(declare-fun res!183971 () Bool)

(assert (=> b!333741 (=> (not res!183971) (not e!204918))))

(declare-datatypes ((SeekEntryResult!3161 0))(
  ( (MissingZero!3161 (index!14823 (_ BitVec 32))) (Found!3161 (index!14824 (_ BitVec 32))) (Intermediate!3161 (undefined!3973 Bool) (index!14825 (_ BitVec 32)) (x!33274 (_ BitVec 32))) (Undefined!3161) (MissingVacant!3161 (index!14826 (_ BitVec 32))) )
))
(declare-fun lt!159393 () SeekEntryResult!3161)

(declare-fun k!1348 () (_ BitVec 64))

(assert (=> b!333741 (= res!183971 (and (is-Found!3161 lt!159393) (= (select (arr!8151 _keys!1895) (index!14824 lt!159393)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17247 (_ BitVec 32)) SeekEntryResult!3161)

(assert (=> b!333741 (= lt!159393 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!333742 () Bool)

(declare-fun res!183973 () Bool)

(assert (=> b!333742 (=> (not res!183973) (not e!204914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17247 (_ BitVec 32)) Bool)

(assert (=> b!333742 (= res!183973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333743 () Bool)

(declare-fun e!204916 () Bool)

(declare-fun e!204917 () Bool)

(assert (=> b!333743 (= e!204916 (and e!204917 mapRes!11637))))

(declare-fun condMapEmpty!11637 () Bool)

(declare-fun mapDefault!11637 () ValueCell!3070)

