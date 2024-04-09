; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70374 () Bool)

(assert start!70374)

(declare-fun b_free!12707 () Bool)

(declare-fun b_next!12707 () Bool)

(assert (=> start!70374 (= b_free!12707 (not b_next!12707))))

(declare-fun tp!44847 () Bool)

(declare-fun b_and!21537 () Bool)

(assert (=> start!70374 (= tp!44847 b_and!21537)))

(declare-fun mapNonEmpty!23218 () Bool)

(declare-fun mapRes!23218 () Bool)

(declare-fun tp!44848 () Bool)

(declare-fun e!453421 () Bool)

(assert (=> mapNonEmpty!23218 (= mapRes!23218 (and tp!44848 e!453421))))

(declare-fun mapKey!23218 () (_ BitVec 32))

(declare-datatypes ((V!24223 0))(
  ( (V!24224 (val!7256 Int)) )
))
(declare-datatypes ((ValueCell!6793 0))(
  ( (ValueCellFull!6793 (v!9681 V!24223)) (EmptyCell!6793) )
))
(declare-datatypes ((array!45010 0))(
  ( (array!45011 (arr!21557 (Array (_ BitVec 32) ValueCell!6793)) (size!21978 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45010)

(declare-fun mapValue!23218 () ValueCell!6793)

(declare-fun mapRest!23218 () (Array (_ BitVec 32) ValueCell!6793))

(assert (=> mapNonEmpty!23218 (= (arr!21557 _values!788) (store mapRest!23218 mapKey!23218 mapValue!23218))))

(declare-fun b!817119 () Bool)

(declare-fun e!453420 () Bool)

(declare-fun e!453419 () Bool)

(assert (=> b!817119 (= e!453420 (and e!453419 mapRes!23218))))

(declare-fun condMapEmpty!23218 () Bool)

(declare-fun mapDefault!23218 () ValueCell!6793)

