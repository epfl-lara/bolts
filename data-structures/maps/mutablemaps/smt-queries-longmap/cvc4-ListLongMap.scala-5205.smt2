; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70272 () Bool)

(assert start!70272)

(declare-fun b_free!12641 () Bool)

(declare-fun b_next!12641 () Bool)

(assert (=> start!70272 (= b_free!12641 (not b_next!12641))))

(declare-fun tp!44644 () Bool)

(declare-fun b_and!21447 () Bool)

(assert (=> start!70272 (= tp!44644 b_and!21447)))

(declare-fun res!557266 () Bool)

(declare-fun e!452624 () Bool)

(assert (=> start!70272 (=> (not res!557266) (not e!452624))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70272 (= res!557266 (validMask!0 mask!1312))))

(assert (=> start!70272 e!452624))

(declare-fun tp_is_empty!14351 () Bool)

(assert (=> start!70272 tp_is_empty!14351))

(declare-datatypes ((array!44882 0))(
  ( (array!44883 (arr!21495 (Array (_ BitVec 32) (_ BitVec 64))) (size!21916 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44882)

(declare-fun array_inv!17177 (array!44882) Bool)

(assert (=> start!70272 (array_inv!17177 _keys!976)))

(assert (=> start!70272 true))

(declare-datatypes ((V!24135 0))(
  ( (V!24136 (val!7223 Int)) )
))
(declare-datatypes ((ValueCell!6760 0))(
  ( (ValueCellFull!6760 (v!9646 V!24135)) (EmptyCell!6760) )
))
(declare-datatypes ((array!44884 0))(
  ( (array!44885 (arr!21496 (Array (_ BitVec 32) ValueCell!6760)) (size!21917 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44884)

(declare-fun e!452625 () Bool)

(declare-fun array_inv!17178 (array!44884) Bool)

(assert (=> start!70272 (and (array_inv!17178 _values!788) e!452625)))

(assert (=> start!70272 tp!44644))

(declare-fun mapIsEmpty!23113 () Bool)

(declare-fun mapRes!23113 () Bool)

(assert (=> mapIsEmpty!23113 mapRes!23113))

(declare-fun mapNonEmpty!23113 () Bool)

(declare-fun tp!44643 () Bool)

(declare-fun e!452626 () Bool)

(assert (=> mapNonEmpty!23113 (= mapRes!23113 (and tp!44643 e!452626))))

(declare-fun mapRest!23113 () (Array (_ BitVec 32) ValueCell!6760))

(declare-fun mapValue!23113 () ValueCell!6760)

(declare-fun mapKey!23113 () (_ BitVec 32))

(assert (=> mapNonEmpty!23113 (= (arr!21496 _values!788) (store mapRest!23113 mapKey!23113 mapValue!23113))))

(declare-fun b!815984 () Bool)

(declare-fun e!452622 () Bool)

(assert (=> b!815984 (= e!452625 (and e!452622 mapRes!23113))))

(declare-fun condMapEmpty!23113 () Bool)

(declare-fun mapDefault!23113 () ValueCell!6760)

