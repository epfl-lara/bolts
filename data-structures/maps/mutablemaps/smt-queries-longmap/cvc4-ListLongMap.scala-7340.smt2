; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93772 () Bool)

(assert start!93772)

(declare-fun b_free!21221 () Bool)

(declare-fun b_next!21221 () Bool)

(assert (=> start!93772 (= b_free!21221 (not b_next!21221))))

(declare-fun tp!75084 () Bool)

(declare-fun b_and!33949 () Bool)

(assert (=> start!93772 (= tp!75084 b_and!33949)))

(declare-fun b!1060259 () Bool)

(declare-fun e!603658 () Bool)

(declare-fun e!603656 () Bool)

(declare-fun mapRes!39214 () Bool)

(assert (=> b!1060259 (= e!603658 (and e!603656 mapRes!39214))))

(declare-fun condMapEmpty!39214 () Bool)

(declare-datatypes ((V!38509 0))(
  ( (V!38510 (val!12566 Int)) )
))
(declare-datatypes ((ValueCell!11812 0))(
  ( (ValueCellFull!11812 (v!15177 V!38509)) (EmptyCell!11812) )
))
(declare-datatypes ((array!67062 0))(
  ( (array!67063 (arr!32236 (Array (_ BitVec 32) ValueCell!11812)) (size!32773 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67062)

(declare-fun mapDefault!39214 () ValueCell!11812)

