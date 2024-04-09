; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93956 () Bool)

(assert start!93956)

(declare-fun b_free!21379 () Bool)

(declare-fun b_next!21379 () Bool)

(assert (=> start!93956 (= b_free!21379 (not b_next!21379))))

(declare-fun tp!75563 () Bool)

(declare-fun b_and!34119 () Bool)

(assert (=> start!93956 (= tp!75563 b_and!34119)))

(declare-fun b!1062143 () Bool)

(declare-fun e!605011 () Bool)

(declare-fun e!605010 () Bool)

(declare-fun mapRes!39457 () Bool)

(assert (=> b!1062143 (= e!605011 (and e!605010 mapRes!39457))))

(declare-fun condMapEmpty!39457 () Bool)

(declare-datatypes ((V!38721 0))(
  ( (V!38722 (val!12645 Int)) )
))
(declare-datatypes ((ValueCell!11891 0))(
  ( (ValueCellFull!11891 (v!15256 V!38721)) (EmptyCell!11891) )
))
(declare-datatypes ((array!67358 0))(
  ( (array!67359 (arr!32382 (Array (_ BitVec 32) ValueCell!11891)) (size!32919 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67358)

(declare-fun mapDefault!39457 () ValueCell!11891)

