; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70364 () Bool)

(assert start!70364)

(declare-fun b_free!12697 () Bool)

(declare-fun b_next!12697 () Bool)

(assert (=> start!70364 (= b_free!12697 (not b_next!12697))))

(declare-fun tp!44817 () Bool)

(declare-fun b_and!21527 () Bool)

(assert (=> start!70364 (= tp!44817 b_and!21527)))

(declare-fun res!557838 () Bool)

(declare-fun e!453347 () Bool)

(assert (=> start!70364 (=> (not res!557838) (not e!453347))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70364 (= res!557838 (validMask!0 mask!1312))))

(assert (=> start!70364 e!453347))

(declare-fun tp_is_empty!14407 () Bool)

(assert (=> start!70364 tp_is_empty!14407))

(declare-datatypes ((array!44990 0))(
  ( (array!44991 (arr!21547 (Array (_ BitVec 32) (_ BitVec 64))) (size!21968 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44990)

(declare-fun array_inv!17211 (array!44990) Bool)

(assert (=> start!70364 (array_inv!17211 _keys!976)))

(assert (=> start!70364 true))

(declare-datatypes ((V!24211 0))(
  ( (V!24212 (val!7251 Int)) )
))
(declare-datatypes ((ValueCell!6788 0))(
  ( (ValueCellFull!6788 (v!9676 V!24211)) (EmptyCell!6788) )
))
(declare-datatypes ((array!44992 0))(
  ( (array!44993 (arr!21548 (Array (_ BitVec 32) ValueCell!6788)) (size!21969 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44992)

(declare-fun e!453343 () Bool)

(declare-fun array_inv!17212 (array!44992) Bool)

(assert (=> start!70364 (and (array_inv!17212 _values!788) e!453343)))

(assert (=> start!70364 tp!44817))

(declare-fun b!817014 () Bool)

(declare-fun e!453345 () Bool)

(declare-fun mapRes!23203 () Bool)

(assert (=> b!817014 (= e!453343 (and e!453345 mapRes!23203))))

(declare-fun condMapEmpty!23203 () Bool)

(declare-fun mapDefault!23203 () ValueCell!6788)

