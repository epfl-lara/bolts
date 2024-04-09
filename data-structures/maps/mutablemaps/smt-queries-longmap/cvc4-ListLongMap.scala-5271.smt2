; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70804 () Bool)

(assert start!70804)

(declare-fun b_free!13037 () Bool)

(declare-fun b_next!13037 () Bool)

(assert (=> start!70804 (= b_free!13037 (not b_next!13037))))

(declare-fun tp!45856 () Bool)

(declare-fun b_and!21927 () Bool)

(assert (=> start!70804 (= tp!45856 b_and!21927)))

(declare-fun b!821959 () Bool)

(declare-fun e!456963 () Bool)

(declare-fun e!456960 () Bool)

(declare-fun mapRes!23731 () Bool)

(assert (=> b!821959 (= e!456963 (and e!456960 mapRes!23731))))

(declare-fun condMapEmpty!23731 () Bool)

(declare-datatypes ((V!24663 0))(
  ( (V!24664 (val!7421 Int)) )
))
(declare-datatypes ((ValueCell!6958 0))(
  ( (ValueCellFull!6958 (v!9848 V!24663)) (EmptyCell!6958) )
))
(declare-datatypes ((array!45648 0))(
  ( (array!45649 (arr!21870 (Array (_ BitVec 32) ValueCell!6958)) (size!22291 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45648)

(declare-fun mapDefault!23731 () ValueCell!6958)

