; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42294 () Bool)

(assert start!42294)

(declare-fun b_free!11791 () Bool)

(declare-fun b_next!11791 () Bool)

(assert (=> start!42294 (= b_free!11791 (not b_next!11791))))

(declare-fun tp!41401 () Bool)

(declare-fun b_and!20247 () Bool)

(assert (=> start!42294 (= tp!41401 b_and!20247)))

(declare-fun b!471661 () Bool)

(declare-fun e!276489 () Bool)

(declare-fun e!276492 () Bool)

(declare-fun mapRes!21535 () Bool)

(assert (=> b!471661 (= e!276489 (and e!276492 mapRes!21535))))

(declare-fun condMapEmpty!21535 () Bool)

(declare-datatypes ((V!18731 0))(
  ( (V!18732 (val!6654 Int)) )
))
(declare-datatypes ((ValueCell!6266 0))(
  ( (ValueCellFull!6266 (v!8941 V!18731)) (EmptyCell!6266) )
))
(declare-datatypes ((array!30163 0))(
  ( (array!30164 (arr!14500 (Array (_ BitVec 32) ValueCell!6266)) (size!14852 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30163)

(declare-fun mapDefault!21535 () ValueCell!6266)

