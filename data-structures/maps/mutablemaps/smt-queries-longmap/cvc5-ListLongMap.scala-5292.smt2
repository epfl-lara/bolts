; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70966 () Bool)

(assert start!70966)

(declare-fun b_free!13159 () Bool)

(declare-fun b_next!13159 () Bool)

(assert (=> start!70966 (= b_free!13159 (not b_next!13159))))

(declare-fun tp!46228 () Bool)

(declare-fun b_and!22073 () Bool)

(assert (=> start!70966 (= tp!46228 b_and!22073)))

(declare-fun mapIsEmpty!23920 () Bool)

(declare-fun mapRes!23920 () Bool)

(assert (=> mapIsEmpty!23920 mapRes!23920))

(declare-fun mapNonEmpty!23920 () Bool)

(declare-fun tp!46227 () Bool)

(declare-fun e!458246 () Bool)

(assert (=> mapNonEmpty!23920 (= mapRes!23920 (and tp!46227 e!458246))))

(declare-datatypes ((V!24827 0))(
  ( (V!24828 (val!7482 Int)) )
))
(declare-datatypes ((ValueCell!7019 0))(
  ( (ValueCellFull!7019 (v!9911 V!24827)) (EmptyCell!7019) )
))
(declare-datatypes ((array!45888 0))(
  ( (array!45889 (arr!21988 (Array (_ BitVec 32) ValueCell!7019)) (size!22409 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45888)

(declare-fun mapValue!23920 () ValueCell!7019)

(declare-fun mapRest!23920 () (Array (_ BitVec 32) ValueCell!7019))

(declare-fun mapKey!23920 () (_ BitVec 32))

(assert (=> mapNonEmpty!23920 (= (arr!21988 _values!788) (store mapRest!23920 mapKey!23920 mapValue!23920))))

(declare-fun b!823747 () Bool)

(declare-fun e!458248 () Bool)

(declare-fun e!458249 () Bool)

(assert (=> b!823747 (= e!458248 (and e!458249 mapRes!23920))))

(declare-fun condMapEmpty!23920 () Bool)

(declare-fun mapDefault!23920 () ValueCell!7019)

