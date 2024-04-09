; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93972 () Bool)

(assert start!93972)

(declare-fun b_free!21395 () Bool)

(declare-fun b_next!21395 () Bool)

(assert (=> start!93972 (= b_free!21395 (not b_next!21395))))

(declare-fun tp!75612 () Bool)

(declare-fun b_and!34135 () Bool)

(assert (=> start!93972 (= tp!75612 b_and!34135)))

(declare-fun mapNonEmpty!39481 () Bool)

(declare-fun mapRes!39481 () Bool)

(declare-fun tp!75611 () Bool)

(declare-fun e!605181 () Bool)

(assert (=> mapNonEmpty!39481 (= mapRes!39481 (and tp!75611 e!605181))))

(declare-fun mapKey!39481 () (_ BitVec 32))

(declare-datatypes ((V!38741 0))(
  ( (V!38742 (val!12653 Int)) )
))
(declare-datatypes ((ValueCell!11899 0))(
  ( (ValueCellFull!11899 (v!15264 V!38741)) (EmptyCell!11899) )
))
(declare-fun mapRest!39481 () (Array (_ BitVec 32) ValueCell!11899))

(declare-datatypes ((array!67386 0))(
  ( (array!67387 (arr!32396 (Array (_ BitVec 32) ValueCell!11899)) (size!32933 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67386)

(declare-fun mapValue!39481 () ValueCell!11899)

(assert (=> mapNonEmpty!39481 (= (arr!32396 _values!955) (store mapRest!39481 mapKey!39481 mapValue!39481))))

(declare-fun b!1062359 () Bool)

(declare-fun e!605178 () Bool)

(declare-fun e!605180 () Bool)

(assert (=> b!1062359 (= e!605178 (and e!605180 mapRes!39481))))

(declare-fun condMapEmpty!39481 () Bool)

(declare-fun mapDefault!39481 () ValueCell!11899)

