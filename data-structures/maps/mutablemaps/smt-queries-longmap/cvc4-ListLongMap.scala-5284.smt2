; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70902 () Bool)

(assert start!70902)

(declare-fun b_free!13115 () Bool)

(declare-fun b_next!13115 () Bool)

(assert (=> start!70902 (= b_free!13115 (not b_next!13115))))

(declare-fun tp!46093 () Bool)

(declare-fun b_and!22017 () Bool)

(assert (=> start!70902 (= tp!46093 b_and!22017)))

(declare-fun mapNonEmpty!23851 () Bool)

(declare-fun mapRes!23851 () Bool)

(declare-fun tp!46092 () Bool)

(declare-fun e!457776 () Bool)

(assert (=> mapNonEmpty!23851 (= mapRes!23851 (and tp!46092 e!457776))))

(declare-datatypes ((V!24767 0))(
  ( (V!24768 (val!7460 Int)) )
))
(declare-datatypes ((ValueCell!6997 0))(
  ( (ValueCellFull!6997 (v!9888 V!24767)) (EmptyCell!6997) )
))
(declare-fun mapRest!23851 () (Array (_ BitVec 32) ValueCell!6997))

(declare-fun mapKey!23851 () (_ BitVec 32))

(declare-datatypes ((array!45804 0))(
  ( (array!45805 (arr!21947 (Array (_ BitVec 32) ValueCell!6997)) (size!22368 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45804)

(declare-fun mapValue!23851 () ValueCell!6997)

(assert (=> mapNonEmpty!23851 (= (arr!21947 _values!788) (store mapRest!23851 mapKey!23851 mapValue!23851))))

(declare-fun b!823076 () Bool)

(declare-fun e!457779 () Bool)

(declare-fun e!457780 () Bool)

(assert (=> b!823076 (= e!457779 (and e!457780 mapRes!23851))))

(declare-fun condMapEmpty!23851 () Bool)

(declare-fun mapDefault!23851 () ValueCell!6997)

