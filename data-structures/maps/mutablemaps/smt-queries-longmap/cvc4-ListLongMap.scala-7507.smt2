; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95220 () Bool)

(assert start!95220)

(declare-fun b_free!22223 () Bool)

(declare-fun b_next!22223 () Bool)

(assert (=> start!95220 (= b_free!22223 (not b_next!22223))))

(declare-fun tp!78161 () Bool)

(declare-fun b_and!35195 () Bool)

(assert (=> start!95220 (= tp!78161 b_and!35195)))

(declare-fun b!1075862 () Bool)

(declare-fun res!717236 () Bool)

(declare-fun e!614969 () Bool)

(assert (=> b!1075862 (=> (not res!717236) (not e!614969))))

(declare-datatypes ((array!69000 0))(
  ( (array!69001 (arr!33181 (Array (_ BitVec 32) (_ BitVec 64))) (size!33718 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69000)

(declare-datatypes ((List!23293 0))(
  ( (Nil!23290) (Cons!23289 (h!24498 (_ BitVec 64)) (t!32655 List!23293)) )
))
(declare-fun arrayNoDuplicates!0 (array!69000 (_ BitVec 32) List!23293) Bool)

(assert (=> b!1075862 (= res!717236 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23290))))

(declare-fun mapNonEmpty!40789 () Bool)

(declare-fun mapRes!40789 () Bool)

(declare-fun tp!78162 () Bool)

(declare-fun e!614967 () Bool)

(assert (=> mapNonEmpty!40789 (= mapRes!40789 (and tp!78162 e!614967))))

(declare-datatypes ((V!39845 0))(
  ( (V!39846 (val!13067 Int)) )
))
(declare-datatypes ((ValueCell!12313 0))(
  ( (ValueCellFull!12313 (v!15694 V!39845)) (EmptyCell!12313) )
))
(declare-fun mapRest!40789 () (Array (_ BitVec 32) ValueCell!12313))

(declare-datatypes ((array!69002 0))(
  ( (array!69003 (arr!33182 (Array (_ BitVec 32) ValueCell!12313)) (size!33719 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69002)

(declare-fun mapKey!40789 () (_ BitVec 32))

(declare-fun mapValue!40789 () ValueCell!12313)

(assert (=> mapNonEmpty!40789 (= (arr!33182 _values!955) (store mapRest!40789 mapKey!40789 mapValue!40789))))

(declare-fun b!1075863 () Bool)

(declare-fun e!614966 () Bool)

(declare-fun e!614968 () Bool)

(assert (=> b!1075863 (= e!614966 (and e!614968 mapRes!40789))))

(declare-fun condMapEmpty!40789 () Bool)

(declare-fun mapDefault!40789 () ValueCell!12313)

