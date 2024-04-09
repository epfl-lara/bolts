; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41458 () Bool)

(assert start!41458)

(declare-fun b_free!11129 () Bool)

(declare-fun b_next!11129 () Bool)

(assert (=> start!41458 (= b_free!11129 (not b_next!11129))))

(declare-fun tp!39381 () Bool)

(declare-fun b_and!19483 () Bool)

(assert (=> start!41458 (= tp!39381 b_and!19483)))

(declare-fun b!462934 () Bool)

(declare-fun e!270259 () Bool)

(declare-fun tp_is_empty!12557 () Bool)

(assert (=> b!462934 (= e!270259 tp_is_empty!12557)))

(declare-fun b!462935 () Bool)

(declare-fun e!270260 () Bool)

(declare-fun mapRes!20509 () Bool)

(assert (=> b!462935 (= e!270260 (and e!270259 mapRes!20509))))

(declare-fun condMapEmpty!20509 () Bool)

(declare-datatypes ((V!17847 0))(
  ( (V!17848 (val!6323 Int)) )
))
(declare-datatypes ((ValueCell!5935 0))(
  ( (ValueCellFull!5935 (v!8606 V!17847)) (EmptyCell!5935) )
))
(declare-datatypes ((array!28875 0))(
  ( (array!28876 (arr!13867 (Array (_ BitVec 32) ValueCell!5935)) (size!14219 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28875)

(declare-fun mapDefault!20509 () ValueCell!5935)

