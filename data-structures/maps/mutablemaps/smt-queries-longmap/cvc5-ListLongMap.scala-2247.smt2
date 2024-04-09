; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36952 () Bool)

(assert start!36952)

(declare-fun b_free!8071 () Bool)

(declare-fun b_next!8071 () Bool)

(assert (=> start!36952 (= b_free!8071 (not b_next!8071))))

(declare-fun tp!28929 () Bool)

(declare-fun b_and!15331 () Bool)

(assert (=> start!36952 (= tp!28929 b_and!15331)))

(declare-fun b!370229 () Bool)

(declare-fun e!226141 () Bool)

(declare-fun e!226142 () Bool)

(declare-fun mapRes!14643 () Bool)

(assert (=> b!370229 (= e!226141 (and e!226142 mapRes!14643))))

(declare-fun condMapEmpty!14643 () Bool)

(declare-datatypes ((V!12731 0))(
  ( (V!12732 (val!4404 Int)) )
))
(declare-datatypes ((ValueCell!4016 0))(
  ( (ValueCellFull!4016 (v!6597 V!12731)) (EmptyCell!4016) )
))
(declare-datatypes ((array!21359 0))(
  ( (array!21360 (arr!10145 (Array (_ BitVec 32) ValueCell!4016)) (size!10497 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21359)

(declare-fun mapDefault!14643 () ValueCell!4016)

