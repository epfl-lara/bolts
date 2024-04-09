; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73526 () Bool)

(assert start!73526)

(declare-fun b_free!14413 () Bool)

(declare-fun b_next!14413 () Bool)

(assert (=> start!73526 (= b_free!14413 (not b_next!14413))))

(declare-fun tp!50744 () Bool)

(declare-fun b_and!23823 () Bool)

(assert (=> start!73526 (= tp!50744 b_and!23823)))

(declare-fun b!858520 () Bool)

(declare-fun e!478487 () Bool)

(declare-fun tp_is_empty!16549 () Bool)

(assert (=> b!858520 (= e!478487 tp_is_empty!16549)))

(declare-fun b!858521 () Bool)

(declare-fun e!478486 () Bool)

(assert (=> b!858521 (= e!478486 tp_is_empty!16549)))

(declare-fun b!858522 () Bool)

(declare-fun res!583375 () Bool)

(declare-fun e!478484 () Bool)

(assert (=> b!858522 (=> (not res!583375) (not e!478484))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858522 (= res!583375 (validMask!0 mask!1196))))

(declare-fun b!858523 () Bool)

(declare-fun e!478488 () Bool)

(declare-fun mapRes!26423 () Bool)

(assert (=> b!858523 (= e!478488 (and e!478486 mapRes!26423))))

(declare-fun condMapEmpty!26423 () Bool)

(declare-datatypes ((V!27113 0))(
  ( (V!27114 (val!8322 Int)) )
))
(declare-datatypes ((ValueCell!7835 0))(
  ( (ValueCellFull!7835 (v!10743 V!27113)) (EmptyCell!7835) )
))
(declare-datatypes ((array!49258 0))(
  ( (array!49259 (arr!23656 (Array (_ BitVec 32) ValueCell!7835)) (size!24097 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49258)

(declare-fun mapDefault!26423 () ValueCell!7835)

