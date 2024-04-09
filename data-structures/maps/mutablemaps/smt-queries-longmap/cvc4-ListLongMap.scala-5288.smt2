; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70946 () Bool)

(assert start!70946)

(declare-fun b_free!13139 () Bool)

(declare-fun b_next!13139 () Bool)

(assert (=> start!70946 (= b_free!13139 (not b_next!13139))))

(declare-fun tp!46167 () Bool)

(declare-fun b_and!22053 () Bool)

(assert (=> start!70946 (= tp!46167 b_and!22053)))

(declare-fun b!823537 () Bool)

(declare-fun res!561676 () Bool)

(declare-fun e!458100 () Bool)

(assert (=> b!823537 (=> (not res!561676) (not e!458100))))

(declare-datatypes ((array!45848 0))(
  ( (array!45849 (arr!21968 (Array (_ BitVec 32) (_ BitVec 64))) (size!22389 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45848)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45848 (_ BitVec 32)) Bool)

(assert (=> b!823537 (= res!561676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823538 () Bool)

(declare-fun res!561679 () Bool)

(assert (=> b!823538 (=> (not res!561679) (not e!458100))))

(declare-datatypes ((List!15732 0))(
  ( (Nil!15729) (Cons!15728 (h!16857 (_ BitVec 64)) (t!22081 List!15732)) )
))
(declare-fun arrayNoDuplicates!0 (array!45848 (_ BitVec 32) List!15732) Bool)

(assert (=> b!823538 (= res!561679 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15729))))

(declare-fun b!823539 () Bool)

(declare-fun e!458097 () Bool)

(declare-fun tp_is_empty!14849 () Bool)

(assert (=> b!823539 (= e!458097 tp_is_empty!14849)))

(declare-fun b!823540 () Bool)

(declare-fun e!458099 () Bool)

(declare-fun e!458098 () Bool)

(declare-fun mapRes!23890 () Bool)

(assert (=> b!823540 (= e!458099 (and e!458098 mapRes!23890))))

(declare-fun condMapEmpty!23890 () Bool)

(declare-datatypes ((V!24799 0))(
  ( (V!24800 (val!7472 Int)) )
))
(declare-datatypes ((ValueCell!7009 0))(
  ( (ValueCellFull!7009 (v!9901 V!24799)) (EmptyCell!7009) )
))
(declare-datatypes ((array!45850 0))(
  ( (array!45851 (arr!21969 (Array (_ BitVec 32) ValueCell!7009)) (size!22390 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45850)

(declare-fun mapDefault!23890 () ValueCell!7009)

