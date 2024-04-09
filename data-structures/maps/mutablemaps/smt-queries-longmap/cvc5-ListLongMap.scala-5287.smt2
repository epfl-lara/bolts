; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70916 () Bool)

(assert start!70916)

(declare-fun b_free!13129 () Bool)

(declare-fun b_next!13129 () Bool)

(assert (=> start!70916 (= b_free!13129 (not b_next!13129))))

(declare-fun tp!46134 () Bool)

(declare-fun b_and!22031 () Bool)

(assert (=> start!70916 (= tp!46134 b_and!22031)))

(declare-fun mapIsEmpty!23872 () Bool)

(declare-fun mapRes!23872 () Bool)

(assert (=> mapIsEmpty!23872 mapRes!23872))

(declare-fun b!823244 () Bool)

(declare-fun e!457901 () Bool)

(declare-fun e!457904 () Bool)

(assert (=> b!823244 (= e!457901 (and e!457904 mapRes!23872))))

(declare-fun condMapEmpty!23872 () Bool)

(declare-datatypes ((V!24787 0))(
  ( (V!24788 (val!7467 Int)) )
))
(declare-datatypes ((ValueCell!7004 0))(
  ( (ValueCellFull!7004 (v!9895 V!24787)) (EmptyCell!7004) )
))
(declare-datatypes ((array!45830 0))(
  ( (array!45831 (arr!21960 (Array (_ BitVec 32) ValueCell!7004)) (size!22381 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45830)

(declare-fun mapDefault!23872 () ValueCell!7004)

