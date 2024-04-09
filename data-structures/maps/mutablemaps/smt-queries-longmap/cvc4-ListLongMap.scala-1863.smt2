; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33624 () Bool)

(assert start!33624)

(declare-fun b_free!6851 () Bool)

(declare-fun b_next!6851 () Bool)

(assert (=> start!33624 (= b_free!6851 (not b_next!6851))))

(declare-fun tp!24057 () Bool)

(declare-fun b_and!14049 () Bool)

(assert (=> start!33624 (= tp!24057 b_and!14049)))

(declare-fun b!333381 () Bool)

(declare-fun res!183719 () Bool)

(declare-fun e!204716 () Bool)

(assert (=> b!333381 (=> (not res!183719) (not e!204716))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333381 (= res!183719 (validKeyInArray!0 k!1348))))

(declare-fun b!333382 () Bool)

(declare-fun e!204719 () Bool)

(declare-fun e!204718 () Bool)

(declare-fun mapRes!11601 () Bool)

(assert (=> b!333382 (= e!204719 (and e!204718 mapRes!11601))))

(declare-fun condMapEmpty!11601 () Bool)

(declare-datatypes ((V!10047 0))(
  ( (V!10048 (val!3446 Int)) )
))
(declare-datatypes ((ValueCell!3058 0))(
  ( (ValueCellFull!3058 (v!5604 V!10047)) (EmptyCell!3058) )
))
(declare-datatypes ((array!17203 0))(
  ( (array!17204 (arr!8129 (Array (_ BitVec 32) ValueCell!3058)) (size!8481 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17203)

(declare-fun mapDefault!11601 () ValueCell!3058)

