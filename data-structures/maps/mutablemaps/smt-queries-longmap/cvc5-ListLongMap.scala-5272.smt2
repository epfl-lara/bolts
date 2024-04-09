; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70806 () Bool)

(assert start!70806)

(declare-fun b_free!13039 () Bool)

(declare-fun b_next!13039 () Bool)

(assert (=> start!70806 (= b_free!13039 (not b_next!13039))))

(declare-fun tp!45862 () Bool)

(declare-fun b_and!21929 () Bool)

(assert (=> start!70806 (= tp!45862 b_and!21929)))

(declare-fun b!821983 () Bool)

(declare-fun res!560777 () Bool)

(declare-fun e!456979 () Bool)

(assert (=> b!821983 (=> (not res!560777) (not e!456979))))

(declare-datatypes ((array!45650 0))(
  ( (array!45651 (arr!21871 (Array (_ BitVec 32) (_ BitVec 64))) (size!22292 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45650)

(declare-datatypes ((List!15650 0))(
  ( (Nil!15647) (Cons!15646 (h!16775 (_ BitVec 64)) (t!21995 List!15650)) )
))
(declare-fun arrayNoDuplicates!0 (array!45650 (_ BitVec 32) List!15650) Bool)

(assert (=> b!821983 (= res!560777 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15647))))

(declare-fun b!821984 () Bool)

(declare-fun e!456982 () Bool)

(declare-fun tp_is_empty!14749 () Bool)

(assert (=> b!821984 (= e!456982 tp_is_empty!14749)))

(declare-fun b!821985 () Bool)

(declare-fun e!456978 () Bool)

(assert (=> b!821985 (= e!456978 tp_is_empty!14749)))

(declare-fun mapNonEmpty!23734 () Bool)

(declare-fun mapRes!23734 () Bool)

(declare-fun tp!45861 () Bool)

(assert (=> mapNonEmpty!23734 (= mapRes!23734 (and tp!45861 e!456978))))

(declare-datatypes ((V!24667 0))(
  ( (V!24668 (val!7422 Int)) )
))
(declare-datatypes ((ValueCell!6959 0))(
  ( (ValueCellFull!6959 (v!9849 V!24667)) (EmptyCell!6959) )
))
(declare-fun mapRest!23734 () (Array (_ BitVec 32) ValueCell!6959))

(declare-fun mapKey!23734 () (_ BitVec 32))

(declare-datatypes ((array!45652 0))(
  ( (array!45653 (arr!21872 (Array (_ BitVec 32) ValueCell!6959)) (size!22293 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45652)

(declare-fun mapValue!23734 () ValueCell!6959)

(assert (=> mapNonEmpty!23734 (= (arr!21872 _values!788) (store mapRest!23734 mapKey!23734 mapValue!23734))))

(declare-fun b!821986 () Bool)

(declare-fun e!456981 () Bool)

(assert (=> b!821986 (= e!456981 (and e!456982 mapRes!23734))))

(declare-fun condMapEmpty!23734 () Bool)

(declare-fun mapDefault!23734 () ValueCell!6959)

