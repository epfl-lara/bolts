; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20124 () Bool)

(assert start!20124)

(declare-fun b_free!4771 () Bool)

(declare-fun b_next!4771 () Bool)

(assert (=> start!20124 (= b_free!4771 (not b_next!4771))))

(declare-fun tp!17345 () Bool)

(declare-fun b_and!11535 () Bool)

(assert (=> start!20124 (= tp!17345 b_and!11535)))

(declare-fun b!197070 () Bool)

(declare-fun res!93155 () Bool)

(declare-fun e!129745 () Bool)

(assert (=> b!197070 (=> (not res!93155) (not e!129745))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197070 (= res!93155 (validKeyInArray!0 k!843))))

(declare-fun b!197071 () Bool)

(declare-fun e!129741 () Bool)

(declare-fun e!129742 () Bool)

(declare-fun mapRes!8009 () Bool)

(assert (=> b!197071 (= e!129741 (and e!129742 mapRes!8009))))

(declare-fun condMapEmpty!8009 () Bool)

(declare-datatypes ((V!5817 0))(
  ( (V!5818 (val!2358 Int)) )
))
(declare-datatypes ((ValueCell!1970 0))(
  ( (ValueCellFull!1970 (v!4324 V!5817)) (EmptyCell!1970) )
))
(declare-datatypes ((array!8508 0))(
  ( (array!8509 (arr!4004 (Array (_ BitVec 32) ValueCell!1970)) (size!4329 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8508)

(declare-fun mapDefault!8009 () ValueCell!1970)

