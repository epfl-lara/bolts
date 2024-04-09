; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42220 () Bool)

(assert start!42220)

(declare-fun b_free!11731 () Bool)

(declare-fun b_next!11731 () Bool)

(assert (=> start!42220 (= b_free!11731 (not b_next!11731))))

(declare-fun tp!41217 () Bool)

(declare-fun b_and!20179 () Bool)

(assert (=> start!42220 (= tp!41217 b_and!20179)))

(declare-fun b!470946 () Bool)

(declare-fun e!275988 () Bool)

(declare-fun e!275985 () Bool)

(declare-fun mapRes!21442 () Bool)

(assert (=> b!470946 (= e!275988 (and e!275985 mapRes!21442))))

(declare-fun condMapEmpty!21442 () Bool)

(declare-datatypes ((V!18651 0))(
  ( (V!18652 (val!6624 Int)) )
))
(declare-datatypes ((ValueCell!6236 0))(
  ( (ValueCellFull!6236 (v!8911 V!18651)) (EmptyCell!6236) )
))
(declare-datatypes ((array!30047 0))(
  ( (array!30048 (arr!14443 (Array (_ BitVec 32) ValueCell!6236)) (size!14795 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30047)

(declare-fun mapDefault!21442 () ValueCell!6236)

