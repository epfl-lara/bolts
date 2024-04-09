; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70690 () Bool)

(assert start!70690)

(declare-fun b_free!12953 () Bool)

(declare-fun b_next!12953 () Bool)

(assert (=> start!70690 (= b_free!12953 (not b_next!12953))))

(declare-fun tp!45597 () Bool)

(declare-fun b_and!21825 () Bool)

(assert (=> start!70690 (= tp!45597 b_and!21825)))

(declare-fun mapNonEmpty!23599 () Bool)

(declare-fun mapRes!23599 () Bool)

(declare-fun tp!45598 () Bool)

(declare-fun e!456069 () Bool)

(assert (=> mapNonEmpty!23599 (= mapRes!23599 (and tp!45598 e!456069))))

(declare-datatypes ((V!24551 0))(
  ( (V!24552 (val!7379 Int)) )
))
(declare-datatypes ((ValueCell!6916 0))(
  ( (ValueCellFull!6916 (v!9806 V!24551)) (EmptyCell!6916) )
))
(declare-fun mapRest!23599 () (Array (_ BitVec 32) ValueCell!6916))

(declare-datatypes ((array!45488 0))(
  ( (array!45489 (arr!21792 (Array (_ BitVec 32) ValueCell!6916)) (size!22213 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45488)

(declare-fun mapValue!23599 () ValueCell!6916)

(declare-fun mapKey!23599 () (_ BitVec 32))

(assert (=> mapNonEmpty!23599 (= (arr!21792 _values!788) (store mapRest!23599 mapKey!23599 mapValue!23599))))

(declare-fun b!820728 () Bool)

(declare-fun e!456068 () Bool)

(declare-fun e!456067 () Bool)

(assert (=> b!820728 (= e!456068 (and e!456067 mapRes!23599))))

(declare-fun condMapEmpty!23599 () Bool)

(declare-fun mapDefault!23599 () ValueCell!6916)

