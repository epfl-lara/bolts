; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74930 () Bool)

(assert start!74930)

(declare-fun b_free!15421 () Bool)

(declare-fun b_next!15421 () Bool)

(assert (=> start!74930 (= b_free!15421 (not b_next!15421))))

(declare-fun tp!53967 () Bool)

(declare-fun b_and!25559 () Bool)

(assert (=> start!74930 (= tp!53967 b_and!25559)))

(declare-fun b!882942 () Bool)

(declare-fun e!491432 () Bool)

(declare-fun e!491436 () Bool)

(declare-fun mapRes!28134 () Bool)

(assert (=> b!882942 (= e!491432 (and e!491436 mapRes!28134))))

(declare-fun condMapEmpty!28134 () Bool)

(declare-datatypes ((V!28601 0))(
  ( (V!28602 (val!8880 Int)) )
))
(declare-datatypes ((ValueCell!8393 0))(
  ( (ValueCellFull!8393 (v!11345 V!28601)) (EmptyCell!8393) )
))
(declare-datatypes ((array!51442 0))(
  ( (array!51443 (arr!24736 (Array (_ BitVec 32) ValueCell!8393)) (size!25177 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51442)

(declare-fun mapDefault!28134 () ValueCell!8393)

