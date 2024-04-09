; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98556 () Bool)

(assert start!98556)

(declare-fun b_free!24125 () Bool)

(declare-fun b_next!24125 () Bool)

(assert (=> start!98556 (= b_free!24125 (not b_next!24125))))

(declare-fun tp!85086 () Bool)

(declare-fun b_and!39113 () Bool)

(assert (=> start!98556 (= tp!85086 b_and!39113)))

(declare-fun b!1140807 () Bool)

(declare-fun e!649098 () Bool)

(declare-fun e!649087 () Bool)

(declare-fun mapRes!44807 () Bool)

(assert (=> b!1140807 (= e!649098 (and e!649087 mapRes!44807))))

(declare-fun condMapEmpty!44807 () Bool)

(declare-datatypes ((V!43333 0))(
  ( (V!43334 (val!14384 Int)) )
))
(declare-datatypes ((ValueCell!13618 0))(
  ( (ValueCellFull!13618 (v!17022 V!43333)) (EmptyCell!13618) )
))
(declare-datatypes ((array!74122 0))(
  ( (array!74123 (arr!35708 (Array (_ BitVec 32) ValueCell!13618)) (size!36245 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74122)

(declare-fun mapDefault!44807 () ValueCell!13618)

