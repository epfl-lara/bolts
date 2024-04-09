; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70474 () Bool)

(assert start!70474)

(declare-fun b_free!12793 () Bool)

(declare-fun b_next!12793 () Bool)

(assert (=> start!70474 (= b_free!12793 (not b_next!12793))))

(declare-fun tp!45108 () Bool)

(declare-fun b_and!21631 () Bool)

(assert (=> start!70474 (= tp!45108 b_and!21631)))

(declare-fun b!818172 () Bool)

(declare-fun e!454188 () Bool)

(declare-fun tp_is_empty!14503 () Bool)

(assert (=> b!818172 (= e!454188 tp_is_empty!14503)))

(declare-fun b!818173 () Bool)

(declare-fun e!454184 () Bool)

(declare-fun mapRes!23350 () Bool)

(assert (=> b!818173 (= e!454184 (and e!454188 mapRes!23350))))

(declare-fun condMapEmpty!23350 () Bool)

(declare-datatypes ((V!24339 0))(
  ( (V!24340 (val!7299 Int)) )
))
(declare-datatypes ((ValueCell!6836 0))(
  ( (ValueCellFull!6836 (v!9724 V!24339)) (EmptyCell!6836) )
))
(declare-datatypes ((array!45180 0))(
  ( (array!45181 (arr!21641 (Array (_ BitVec 32) ValueCell!6836)) (size!22062 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45180)

(declare-fun mapDefault!23350 () ValueCell!6836)

