; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4108 () Bool)

(assert start!4108)

(declare-fun b_free!1015 () Bool)

(declare-fun b_next!1015 () Bool)

(assert (=> start!4108 (= b_free!1015 (not b_next!1015))))

(declare-fun tp!4465 () Bool)

(declare-fun b_and!1827 () Bool)

(assert (=> start!4108 (= tp!4465 b_and!1827)))

(declare-fun b!30644 () Bool)

(declare-fun e!19638 () Bool)

(declare-fun tp_is_empty!1369 () Bool)

(assert (=> b!30644 (= e!19638 tp_is_empty!1369)))

(declare-fun b!30645 () Bool)

(declare-fun res!18466 () Bool)

(declare-fun e!19640 () Bool)

(assert (=> b!30645 (=> (not res!18466) (not e!19640))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30645 (= res!18466 (validKeyInArray!0 k!1304))))

(declare-fun b!30646 () Bool)

(declare-fun e!19642 () Bool)

(declare-fun mapRes!1582 () Bool)

(assert (=> b!30646 (= e!19642 (and e!19638 mapRes!1582))))

(declare-fun condMapEmpty!1582 () Bool)

(declare-datatypes ((V!1651 0))(
  ( (V!1652 (val!711 Int)) )
))
(declare-datatypes ((ValueCell!485 0))(
  ( (ValueCellFull!485 (v!1800 V!1651)) (EmptyCell!485) )
))
(declare-datatypes ((array!1953 0))(
  ( (array!1954 (arr!930 (Array (_ BitVec 32) ValueCell!485)) (size!1031 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1953)

(declare-fun mapDefault!1582 () ValueCell!485)

