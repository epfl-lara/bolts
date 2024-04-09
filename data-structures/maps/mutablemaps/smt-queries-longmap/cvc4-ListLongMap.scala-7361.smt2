; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93910 () Bool)

(assert start!93910)

(declare-fun b_free!21347 () Bool)

(declare-fun b_next!21347 () Bool)

(assert (=> start!93910 (= b_free!21347 (not b_next!21347))))

(declare-fun tp!75464 () Bool)

(declare-fun b_and!34079 () Bool)

(assert (=> start!93910 (= tp!75464 b_and!34079)))

(declare-fun b!1061655 () Bool)

(declare-fun e!604650 () Bool)

(declare-fun e!604651 () Bool)

(declare-fun mapRes!39406 () Bool)

(assert (=> b!1061655 (= e!604650 (and e!604651 mapRes!39406))))

(declare-fun condMapEmpty!39406 () Bool)

(declare-datatypes ((V!38677 0))(
  ( (V!38678 (val!12629 Int)) )
))
(declare-datatypes ((ValueCell!11875 0))(
  ( (ValueCellFull!11875 (v!15240 V!38677)) (EmptyCell!11875) )
))
(declare-datatypes ((array!67296 0))(
  ( (array!67297 (arr!32352 (Array (_ BitVec 32) ValueCell!11875)) (size!32889 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67296)

(declare-fun mapDefault!39406 () ValueCell!11875)

