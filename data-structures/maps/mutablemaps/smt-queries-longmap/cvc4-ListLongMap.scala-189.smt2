; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3756 () Bool)

(assert start!3756)

(declare-fun b!26245 () Bool)

(declare-fun e!17055 () Bool)

(assert (=> b!26245 (= e!17055 false)))

(declare-fun lt!10338 () Bool)

(declare-datatypes ((array!1391 0))(
  ( (array!1392 (arr!653 (Array (_ BitVec 32) (_ BitVec 64))) (size!754 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1391)

(declare-datatypes ((List!579 0))(
  ( (Nil!576) (Cons!575 (h!1142 (_ BitVec 64)) (t!3268 List!579)) )
))
(declare-fun arrayNoDuplicates!0 (array!1391 (_ BitVec 32) List!579) Bool)

(assert (=> b!26245 (= lt!10338 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!576))))

(declare-fun b!26246 () Bool)

(declare-fun e!17052 () Bool)

(declare-fun tp_is_empty!1079 () Bool)

(assert (=> b!26246 (= e!17052 tp_is_empty!1079)))

(declare-fun b!26247 () Bool)

(declare-fun e!17056 () Bool)

(assert (=> b!26247 (= e!17056 tp_is_empty!1079)))

(declare-fun b!26248 () Bool)

(declare-fun e!17054 () Bool)

(declare-fun mapRes!1135 () Bool)

(assert (=> b!26248 (= e!17054 (and e!17052 mapRes!1135))))

(declare-fun condMapEmpty!1135 () Bool)

(declare-datatypes ((V!1263 0))(
  ( (V!1264 (val!566 Int)) )
))
(declare-datatypes ((ValueCell!340 0))(
  ( (ValueCellFull!340 (v!1652 V!1263)) (EmptyCell!340) )
))
(declare-datatypes ((array!1393 0))(
  ( (array!1394 (arr!654 (Array (_ BitVec 32) ValueCell!340)) (size!755 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1393)

(declare-fun mapDefault!1135 () ValueCell!340)

