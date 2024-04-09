; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41710 () Bool)

(assert start!41710)

(declare-fun b_free!11341 () Bool)

(declare-fun b_next!11341 () Bool)

(assert (=> start!41710 (= b_free!11341 (not b_next!11341))))

(declare-fun tp!40027 () Bool)

(declare-fun b_and!19715 () Bool)

(assert (=> start!41710 (= tp!40027 b_and!19715)))

(declare-fun b!465431 () Bool)

(declare-fun e!272039 () Bool)

(declare-fun e!272038 () Bool)

(declare-fun mapRes!20836 () Bool)

(assert (=> b!465431 (= e!272039 (and e!272038 mapRes!20836))))

(declare-fun condMapEmpty!20836 () Bool)

(declare-datatypes ((V!18131 0))(
  ( (V!18132 (val!6429 Int)) )
))
(declare-datatypes ((ValueCell!6041 0))(
  ( (ValueCellFull!6041 (v!8712 V!18131)) (EmptyCell!6041) )
))
(declare-datatypes ((array!29277 0))(
  ( (array!29278 (arr!14065 (Array (_ BitVec 32) ValueCell!6041)) (size!14417 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29277)

(declare-fun mapDefault!20836 () ValueCell!6041)

