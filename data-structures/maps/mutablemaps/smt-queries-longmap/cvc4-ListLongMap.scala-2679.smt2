; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39904 () Bool)

(assert start!39904)

(declare-fun b_free!10163 () Bool)

(declare-fun b_next!10163 () Bool)

(assert (=> start!39904 (= b_free!10163 (not b_next!10163))))

(declare-fun tp!36018 () Bool)

(declare-fun b_and!18003 () Bool)

(assert (=> start!39904 (= tp!36018 b_and!18003)))

(declare-fun b!432059 () Bool)

(declare-fun e!255602 () Bool)

(declare-fun e!255595 () Bool)

(declare-fun mapRes!18594 () Bool)

(assert (=> b!432059 (= e!255602 (and e!255595 mapRes!18594))))

(declare-fun condMapEmpty!18594 () Bool)

(declare-datatypes ((V!16191 0))(
  ( (V!16192 (val!5702 Int)) )
))
(declare-datatypes ((ValueCell!5314 0))(
  ( (ValueCellFull!5314 (v!7945 V!16191)) (EmptyCell!5314) )
))
(declare-datatypes ((array!26443 0))(
  ( (array!26444 (arr!12668 (Array (_ BitVec 32) ValueCell!5314)) (size!13020 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26443)

(declare-fun mapDefault!18594 () ValueCell!5314)

