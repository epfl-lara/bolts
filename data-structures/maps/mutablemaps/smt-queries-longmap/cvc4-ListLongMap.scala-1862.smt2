; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33618 () Bool)

(assert start!33618)

(declare-fun b_free!6845 () Bool)

(declare-fun b_next!6845 () Bool)

(assert (=> start!33618 (= b_free!6845 (not b_next!6845))))

(declare-fun tp!24038 () Bool)

(declare-fun b_and!14043 () Bool)

(assert (=> start!33618 (= tp!24038 b_and!14043)))

(declare-fun b!333300 () Bool)

(declare-fun res!183667 () Bool)

(declare-fun e!204675 () Bool)

(assert (=> b!333300 (=> (not res!183667) (not e!204675))))

(declare-datatypes ((array!17191 0))(
  ( (array!17192 (arr!8123 (Array (_ BitVec 32) (_ BitVec 64))) (size!8475 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17191)

(declare-datatypes ((List!4651 0))(
  ( (Nil!4648) (Cons!4647 (h!5503 (_ BitVec 64)) (t!9747 List!4651)) )
))
(declare-fun arrayNoDuplicates!0 (array!17191 (_ BitVec 32) List!4651) Bool)

(assert (=> b!333300 (= res!183667 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4648))))

(declare-fun b!333301 () Bool)

(declare-fun res!183666 () Bool)

(assert (=> b!333301 (=> (not res!183666) (not e!204675))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333301 (= res!183666 (validKeyInArray!0 k!1348))))

(declare-fun b!333302 () Bool)

(declare-fun e!204673 () Bool)

(declare-fun e!204674 () Bool)

(declare-fun mapRes!11592 () Bool)

(assert (=> b!333302 (= e!204673 (and e!204674 mapRes!11592))))

(declare-fun condMapEmpty!11592 () Bool)

(declare-datatypes ((V!10039 0))(
  ( (V!10040 (val!3443 Int)) )
))
(declare-datatypes ((ValueCell!3055 0))(
  ( (ValueCellFull!3055 (v!5601 V!10039)) (EmptyCell!3055) )
))
(declare-datatypes ((array!17193 0))(
  ( (array!17194 (arr!8124 (Array (_ BitVec 32) ValueCell!3055)) (size!8476 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17193)

(declare-fun mapDefault!11592 () ValueCell!3055)

