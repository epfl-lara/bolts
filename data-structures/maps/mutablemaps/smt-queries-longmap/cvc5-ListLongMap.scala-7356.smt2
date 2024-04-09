; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93876 () Bool)

(assert start!93876)

(declare-fun b_free!21313 () Bool)

(declare-fun b_next!21313 () Bool)

(assert (=> start!93876 (= b_free!21313 (not b_next!21313))))

(declare-fun tp!75363 () Bool)

(declare-fun b_and!34045 () Bool)

(assert (=> start!93876 (= tp!75363 b_and!34045)))

(declare-fun b!1061298 () Bool)

(declare-fun e!604397 () Bool)

(declare-fun tp_is_empty!25123 () Bool)

(assert (=> b!1061298 (= e!604397 tp_is_empty!25123)))

(declare-fun b!1061299 () Bool)

(declare-fun e!604395 () Bool)

(declare-fun e!604393 () Bool)

(declare-fun mapRes!39355 () Bool)

(assert (=> b!1061299 (= e!604395 (and e!604393 mapRes!39355))))

(declare-fun condMapEmpty!39355 () Bool)

(declare-datatypes ((V!38633 0))(
  ( (V!38634 (val!12612 Int)) )
))
(declare-datatypes ((ValueCell!11858 0))(
  ( (ValueCellFull!11858 (v!15223 V!38633)) (EmptyCell!11858) )
))
(declare-datatypes ((array!67232 0))(
  ( (array!67233 (arr!32320 (Array (_ BitVec 32) ValueCell!11858)) (size!32857 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67232)

(declare-fun mapDefault!39355 () ValueCell!11858)

