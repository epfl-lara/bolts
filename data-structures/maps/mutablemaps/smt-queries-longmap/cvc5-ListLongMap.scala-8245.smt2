; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100454 () Bool)

(assert start!100454)

(declare-fun b_free!25741 () Bool)

(declare-fun b_next!25741 () Bool)

(assert (=> start!100454 (= b_free!25741 (not b_next!25741))))

(declare-fun tp!90214 () Bool)

(declare-fun b_and!42383 () Bool)

(assert (=> start!100454 (= tp!90214 b_and!42383)))

(declare-fun b!1198640 () Bool)

(declare-fun e!680902 () Bool)

(declare-fun e!680900 () Bool)

(declare-fun mapRes!47510 () Bool)

(assert (=> b!1198640 (= e!680902 (and e!680900 mapRes!47510))))

(declare-fun condMapEmpty!47510 () Bool)

(declare-datatypes ((V!45721 0))(
  ( (V!45722 (val!15279 Int)) )
))
(declare-datatypes ((ValueCell!14513 0))(
  ( (ValueCellFull!14513 (v!17918 V!45721)) (EmptyCell!14513) )
))
(declare-datatypes ((array!77652 0))(
  ( (array!77653 (arr!37467 (Array (_ BitVec 32) ValueCell!14513)) (size!38004 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77652)

(declare-fun mapDefault!47510 () ValueCell!14513)

