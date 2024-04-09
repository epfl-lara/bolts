; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77738 () Bool)

(assert start!77738)

(declare-fun b_free!16295 () Bool)

(declare-fun b_next!16295 () Bool)

(assert (=> start!77738 (= b_free!16295 (not b_next!16295))))

(declare-fun tp!57147 () Bool)

(declare-fun b_and!26761 () Bool)

(assert (=> start!77738 (= tp!57147 b_and!26761)))

(declare-fun mapNonEmpty!29782 () Bool)

(declare-fun mapRes!29782 () Bool)

(declare-fun tp!57148 () Bool)

(declare-fun e!507984 () Bool)

(assert (=> mapNonEmpty!29782 (= mapRes!29782 (and tp!57148 e!507984))))

(declare-datatypes ((V!29915 0))(
  ( (V!29916 (val!9407 Int)) )
))
(declare-datatypes ((ValueCell!8875 0))(
  ( (ValueCellFull!8875 (v!11912 V!29915)) (EmptyCell!8875) )
))
(declare-datatypes ((array!53454 0))(
  ( (array!53455 (arr!25682 (Array (_ BitVec 32) ValueCell!8875)) (size!26142 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53454)

(declare-fun mapRest!29782 () (Array (_ BitVec 32) ValueCell!8875))

(declare-fun mapValue!29782 () ValueCell!8875)

(declare-fun mapKey!29782 () (_ BitVec 32))

(assert (=> mapNonEmpty!29782 (= (arr!25682 _values!1152) (store mapRest!29782 mapKey!29782 mapValue!29782))))

(declare-fun b!906408 () Bool)

(declare-fun e!507987 () Bool)

(declare-fun tp_is_empty!18713 () Bool)

(assert (=> b!906408 (= e!507987 tp_is_empty!18713)))

(declare-fun b!906409 () Bool)

(declare-fun e!507985 () Bool)

(assert (=> b!906409 (= e!507985 (and e!507987 mapRes!29782))))

(declare-fun condMapEmpty!29782 () Bool)

(declare-fun mapDefault!29782 () ValueCell!8875)

