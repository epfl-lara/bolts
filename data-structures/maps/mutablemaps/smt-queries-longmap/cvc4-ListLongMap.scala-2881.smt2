; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41428 () Bool)

(assert start!41428)

(declare-fun b_free!11099 () Bool)

(declare-fun b_next!11099 () Bool)

(assert (=> start!41428 (= b_free!11099 (not b_next!11099))))

(declare-fun tp!39292 () Bool)

(declare-fun b_and!19453 () Bool)

(assert (=> start!41428 (= tp!39292 b_and!19453)))

(declare-fun b!462618 () Bool)

(declare-fun e!270037 () Bool)

(declare-fun e!270035 () Bool)

(declare-fun mapRes!20464 () Bool)

(assert (=> b!462618 (= e!270037 (and e!270035 mapRes!20464))))

(declare-fun condMapEmpty!20464 () Bool)

(declare-datatypes ((V!17807 0))(
  ( (V!17808 (val!6308 Int)) )
))
(declare-datatypes ((ValueCell!5920 0))(
  ( (ValueCellFull!5920 (v!8591 V!17807)) (EmptyCell!5920) )
))
(declare-datatypes ((array!28819 0))(
  ( (array!28820 (arr!13839 (Array (_ BitVec 32) ValueCell!5920)) (size!14191 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28819)

(declare-fun mapDefault!20464 () ValueCell!5920)

