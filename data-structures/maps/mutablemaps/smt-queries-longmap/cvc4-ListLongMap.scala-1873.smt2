; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33684 () Bool)

(assert start!33684)

(declare-fun b_free!6911 () Bool)

(declare-fun b_next!6911 () Bool)

(assert (=> start!33684 (= b_free!6911 (not b_next!6911))))

(declare-fun tp!24237 () Bool)

(declare-fun b_and!14109 () Bool)

(assert (=> start!33684 (= tp!24237 b_and!14109)))

(declare-fun mapNonEmpty!11691 () Bool)

(declare-fun mapRes!11691 () Bool)

(declare-fun tp!24236 () Bool)

(declare-fun e!205241 () Bool)

(assert (=> mapNonEmpty!11691 (= mapRes!11691 (and tp!24236 e!205241))))

(declare-datatypes ((V!10127 0))(
  ( (V!10128 (val!3476 Int)) )
))
(declare-datatypes ((ValueCell!3088 0))(
  ( (ValueCellFull!3088 (v!5634 V!10127)) (EmptyCell!3088) )
))
(declare-fun mapValue!11691 () ValueCell!3088)

(declare-datatypes ((array!17313 0))(
  ( (array!17314 (arr!8184 (Array (_ BitVec 32) ValueCell!3088)) (size!8536 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17313)

(declare-fun mapKey!11691 () (_ BitVec 32))

(declare-fun mapRest!11691 () (Array (_ BitVec 32) ValueCell!3088))

(assert (=> mapNonEmpty!11691 (= (arr!8184 _values!1525) (store mapRest!11691 mapKey!11691 mapValue!11691))))

(declare-fun b!334333 () Bool)

(declare-fun res!184403 () Bool)

(declare-fun e!205242 () Bool)

(assert (=> b!334333 (=> (not res!184403) (not e!205242))))

(declare-datatypes ((SeekEntryResult!3174 0))(
  ( (MissingZero!3174 (index!14875 (_ BitVec 32))) (Found!3174 (index!14876 (_ BitVec 32))) (Intermediate!3174 (undefined!3986 Bool) (index!14877 (_ BitVec 32)) (x!33335 (_ BitVec 32))) (Undefined!3174) (MissingVacant!3174 (index!14878 (_ BitVec 32))) )
))
(declare-fun lt!159500 () SeekEntryResult!3174)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17315 0))(
  ( (array!17316 (arr!8185 (Array (_ BitVec 32) (_ BitVec 64))) (size!8537 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17315)

(declare-fun arrayContainsKey!0 (array!17315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334333 (= res!184403 (arrayContainsKey!0 _keys!1895 k!1348 (index!14876 lt!159500)))))

(declare-fun b!334335 () Bool)

(declare-fun e!205240 () Bool)

(declare-fun tp_is_empty!6863 () Bool)

(assert (=> b!334335 (= e!205240 tp_is_empty!6863)))

(declare-fun b!334336 () Bool)

(declare-fun res!184404 () Bool)

(declare-fun e!205237 () Bool)

(assert (=> b!334336 (=> (not res!184404) (not e!205237))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!334336 (= res!184404 (and (= (size!8536 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8537 _keys!1895) (size!8536 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334337 () Bool)

(declare-fun res!184401 () Bool)

(assert (=> b!334337 (=> (not res!184401) (not e!205237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17315 (_ BitVec 32)) Bool)

(assert (=> b!334337 (= res!184401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334338 () Bool)

(declare-fun res!184406 () Bool)

(assert (=> b!334338 (=> (not res!184406) (not e!205237))))

(declare-datatypes ((List!4693 0))(
  ( (Nil!4690) (Cons!4689 (h!5545 (_ BitVec 64)) (t!9789 List!4693)) )
))
(declare-fun arrayNoDuplicates!0 (array!17315 (_ BitVec 32) List!4693) Bool)

(assert (=> b!334338 (= res!184406 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4690))))

(declare-fun b!334339 () Bool)

(declare-fun e!205238 () Bool)

(assert (=> b!334339 (= e!205238 (and e!205240 mapRes!11691))))

(declare-fun condMapEmpty!11691 () Bool)

(declare-fun mapDefault!11691 () ValueCell!3088)

