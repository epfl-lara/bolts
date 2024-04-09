; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70942 () Bool)

(assert start!70942)

(declare-fun b_free!13135 () Bool)

(declare-fun b_next!13135 () Bool)

(assert (=> start!70942 (= b_free!13135 (not b_next!13135))))

(declare-fun tp!46155 () Bool)

(declare-fun b_and!22049 () Bool)

(assert (=> start!70942 (= tp!46155 b_and!22049)))

(declare-fun b!823495 () Bool)

(declare-fun e!458066 () Bool)

(declare-fun e!458070 () Bool)

(declare-fun mapRes!23884 () Bool)

(assert (=> b!823495 (= e!458066 (and e!458070 mapRes!23884))))

(declare-fun condMapEmpty!23884 () Bool)

(declare-datatypes ((V!24795 0))(
  ( (V!24796 (val!7470 Int)) )
))
(declare-datatypes ((ValueCell!7007 0))(
  ( (ValueCellFull!7007 (v!9899 V!24795)) (EmptyCell!7007) )
))
(declare-datatypes ((array!45842 0))(
  ( (array!45843 (arr!21965 (Array (_ BitVec 32) ValueCell!7007)) (size!22386 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45842)

(declare-fun mapDefault!23884 () ValueCell!7007)

