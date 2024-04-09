; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70382 () Bool)

(assert start!70382)

(declare-fun b_free!12715 () Bool)

(declare-fun b_next!12715 () Bool)

(assert (=> start!70382 (= b_free!12715 (not b_next!12715))))

(declare-fun tp!44872 () Bool)

(declare-fun b_and!21545 () Bool)

(assert (=> start!70382 (= tp!44872 b_and!21545)))

(declare-fun mapIsEmpty!23230 () Bool)

(declare-fun mapRes!23230 () Bool)

(assert (=> mapIsEmpty!23230 mapRes!23230))

(declare-fun res!557949 () Bool)

(declare-fun e!453478 () Bool)

(assert (=> start!70382 (=> (not res!557949) (not e!453478))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70382 (= res!557949 (validMask!0 mask!1312))))

(assert (=> start!70382 e!453478))

(declare-fun tp_is_empty!14425 () Bool)

(assert (=> start!70382 tp_is_empty!14425))

(declare-datatypes ((array!45024 0))(
  ( (array!45025 (arr!21564 (Array (_ BitVec 32) (_ BitVec 64))) (size!21985 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45024)

(declare-fun array_inv!17225 (array!45024) Bool)

(assert (=> start!70382 (array_inv!17225 _keys!976)))

(assert (=> start!70382 true))

(declare-datatypes ((V!24235 0))(
  ( (V!24236 (val!7260 Int)) )
))
(declare-datatypes ((ValueCell!6797 0))(
  ( (ValueCellFull!6797 (v!9685 V!24235)) (EmptyCell!6797) )
))
(declare-datatypes ((array!45026 0))(
  ( (array!45027 (arr!21565 (Array (_ BitVec 32) ValueCell!6797)) (size!21986 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45026)

(declare-fun e!453481 () Bool)

(declare-fun array_inv!17226 (array!45026) Bool)

(assert (=> start!70382 (and (array_inv!17226 _values!788) e!453481)))

(assert (=> start!70382 tp!44872))

(declare-fun b!817203 () Bool)

(declare-fun e!453479 () Bool)

(assert (=> b!817203 (= e!453481 (and e!453479 mapRes!23230))))

(declare-fun condMapEmpty!23230 () Bool)

(declare-fun mapDefault!23230 () ValueCell!6797)

