; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71026 () Bool)

(assert start!71026)

(declare-fun b_free!13205 () Bool)

(declare-fun b_next!13205 () Bool)

(assert (=> start!71026 (= b_free!13205 (not b_next!13205))))

(declare-fun tp!46368 () Bool)

(declare-fun b_and!22127 () Bool)

(assert (=> start!71026 (= tp!46368 b_and!22127)))

(declare-fun res!562131 () Bool)

(declare-fun e!458672 () Bool)

(assert (=> start!71026 (=> (not res!562131) (not e!458672))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71026 (= res!562131 (validMask!0 mask!1312))))

(assert (=> start!71026 e!458672))

(declare-fun tp_is_empty!14915 () Bool)

(assert (=> start!71026 tp_is_empty!14915))

(declare-datatypes ((array!45976 0))(
  ( (array!45977 (arr!22031 (Array (_ BitVec 32) (_ BitVec 64))) (size!22452 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45976)

(declare-fun array_inv!17555 (array!45976) Bool)

(assert (=> start!71026 (array_inv!17555 _keys!976)))

(assert (=> start!71026 true))

(declare-datatypes ((V!24887 0))(
  ( (V!24888 (val!7505 Int)) )
))
(declare-datatypes ((ValueCell!7042 0))(
  ( (ValueCellFull!7042 (v!9934 V!24887)) (EmptyCell!7042) )
))
(declare-datatypes ((array!45978 0))(
  ( (array!45979 (arr!22032 (Array (_ BitVec 32) ValueCell!7042)) (size!22453 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45978)

(declare-fun e!458673 () Bool)

(declare-fun array_inv!17556 (array!45978) Bool)

(assert (=> start!71026 (and (array_inv!17556 _values!788) e!458673)))

(assert (=> start!71026 tp!46368))

(declare-fun mapNonEmpty!23992 () Bool)

(declare-fun mapRes!23992 () Bool)

(declare-fun tp!46369 () Bool)

(declare-fun e!458674 () Bool)

(assert (=> mapNonEmpty!23992 (= mapRes!23992 (and tp!46369 e!458674))))

(declare-fun mapKey!23992 () (_ BitVec 32))

(declare-fun mapValue!23992 () ValueCell!7042)

(declare-fun mapRest!23992 () (Array (_ BitVec 32) ValueCell!7042))

(assert (=> mapNonEmpty!23992 (= (arr!22032 _values!788) (store mapRest!23992 mapKey!23992 mapValue!23992))))

(declare-fun b!824341 () Bool)

(declare-fun e!458676 () Bool)

(assert (=> b!824341 (= e!458673 (and e!458676 mapRes!23992))))

(declare-fun condMapEmpty!23992 () Bool)

(declare-fun mapDefault!23992 () ValueCell!7042)

