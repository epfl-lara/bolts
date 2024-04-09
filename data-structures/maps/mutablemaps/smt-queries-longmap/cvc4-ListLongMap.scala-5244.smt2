; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70592 () Bool)

(assert start!70592)

(declare-fun b_free!12875 () Bool)

(declare-fun b_next!12875 () Bool)

(assert (=> start!70592 (= b_free!12875 (not b_next!12875))))

(declare-fun tp!45360 () Bool)

(declare-fun b_and!21735 () Bool)

(assert (=> start!70592 (= tp!45360 b_and!21735)))

(declare-fun mapNonEmpty!23479 () Bool)

(declare-fun mapRes!23479 () Bool)

(declare-fun tp!45361 () Bool)

(declare-fun e!455248 () Bool)

(assert (=> mapNonEmpty!23479 (= mapRes!23479 (and tp!45361 e!455248))))

(declare-datatypes ((V!24447 0))(
  ( (V!24448 (val!7340 Int)) )
))
(declare-datatypes ((ValueCell!6877 0))(
  ( (ValueCellFull!6877 (v!9766 V!24447)) (EmptyCell!6877) )
))
(declare-fun mapValue!23479 () ValueCell!6877)

(declare-datatypes ((array!45338 0))(
  ( (array!45339 (arr!21718 (Array (_ BitVec 32) ValueCell!6877)) (size!22139 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45338)

(declare-fun mapRest!23479 () (Array (_ BitVec 32) ValueCell!6877))

(declare-fun mapKey!23479 () (_ BitVec 32))

(assert (=> mapNonEmpty!23479 (= (arr!21718 _values!788) (store mapRest!23479 mapKey!23479 mapValue!23479))))

(declare-fun b!819605 () Bool)

(declare-fun e!455247 () Bool)

(declare-fun e!455252 () Bool)

(assert (=> b!819605 (= e!455247 (and e!455252 mapRes!23479))))

(declare-fun condMapEmpty!23479 () Bool)

(declare-fun mapDefault!23479 () ValueCell!6877)

