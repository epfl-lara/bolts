; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70454 () Bool)

(assert start!70454)

(declare-fun b_free!12773 () Bool)

(declare-fun b_next!12773 () Bool)

(assert (=> start!70454 (= b_free!12773 (not b_next!12773))))

(declare-fun tp!45048 () Bool)

(declare-fun b_and!21611 () Bool)

(assert (=> start!70454 (= tp!45048 b_and!21611)))

(declare-fun b!817932 () Bool)

(declare-fun e!454008 () Bool)

(declare-fun e!454005 () Bool)

(declare-fun mapRes!23320 () Bool)

(assert (=> b!817932 (= e!454008 (and e!454005 mapRes!23320))))

(declare-fun condMapEmpty!23320 () Bool)

(declare-datatypes ((V!24311 0))(
  ( (V!24312 (val!7289 Int)) )
))
(declare-datatypes ((ValueCell!6826 0))(
  ( (ValueCellFull!6826 (v!9714 V!24311)) (EmptyCell!6826) )
))
(declare-datatypes ((array!45142 0))(
  ( (array!45143 (arr!21622 (Array (_ BitVec 32) ValueCell!6826)) (size!22043 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45142)

(declare-fun mapDefault!23320 () ValueCell!6826)

