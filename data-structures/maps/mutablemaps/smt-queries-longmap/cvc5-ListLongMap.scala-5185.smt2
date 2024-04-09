; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70120 () Bool)

(assert start!70120)

(declare-fun b_free!12517 () Bool)

(declare-fun b_next!12517 () Bool)

(assert (=> start!70120 (= b_free!12517 (not b_next!12517))))

(declare-fun tp!44266 () Bool)

(declare-fun b_and!21307 () Bool)

(assert (=> start!70120 (= tp!44266 b_and!21307)))

(declare-fun mapNonEmpty!22921 () Bool)

(declare-fun mapRes!22921 () Bool)

(declare-fun tp!44265 () Bool)

(declare-fun e!451505 () Bool)

(assert (=> mapNonEmpty!22921 (= mapRes!22921 (and tp!44265 e!451505))))

(declare-datatypes ((V!23971 0))(
  ( (V!23972 (val!7161 Int)) )
))
(declare-datatypes ((ValueCell!6698 0))(
  ( (ValueCellFull!6698 (v!9584 V!23971)) (EmptyCell!6698) )
))
(declare-fun mapValue!22921 () ValueCell!6698)

(declare-datatypes ((array!44642 0))(
  ( (array!44643 (arr!21377 (Array (_ BitVec 32) ValueCell!6698)) (size!21798 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44642)

(declare-fun mapKey!22921 () (_ BitVec 32))

(declare-fun mapRest!22921 () (Array (_ BitVec 32) ValueCell!6698))

(assert (=> mapNonEmpty!22921 (= (arr!21377 _values!788) (store mapRest!22921 mapKey!22921 mapValue!22921))))

(declare-fun b!814424 () Bool)

(declare-fun e!451502 () Bool)

(declare-fun e!451501 () Bool)

(assert (=> b!814424 (= e!451502 (and e!451501 mapRes!22921))))

(declare-fun condMapEmpty!22921 () Bool)

(declare-fun mapDefault!22921 () ValueCell!6698)

