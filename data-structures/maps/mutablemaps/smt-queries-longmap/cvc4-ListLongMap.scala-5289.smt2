; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70952 () Bool)

(assert start!70952)

(declare-fun b_free!13145 () Bool)

(declare-fun b_next!13145 () Bool)

(assert (=> start!70952 (= b_free!13145 (not b_next!13145))))

(declare-fun tp!46186 () Bool)

(declare-fun b_and!22059 () Bool)

(assert (=> start!70952 (= tp!46186 b_and!22059)))

(declare-fun b!823600 () Bool)

(declare-fun res!561713 () Bool)

(declare-fun e!458145 () Bool)

(assert (=> b!823600 (=> (not res!561713) (not e!458145))))

(declare-datatypes ((array!45860 0))(
  ( (array!45861 (arr!21974 (Array (_ BitVec 32) (_ BitVec 64))) (size!22395 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45860)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45860 (_ BitVec 32)) Bool)

(assert (=> b!823600 (= res!561713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!561712 () Bool)

(assert (=> start!70952 (=> (not res!561712) (not e!458145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70952 (= res!561712 (validMask!0 mask!1312))))

(assert (=> start!70952 e!458145))

(declare-fun tp_is_empty!14855 () Bool)

(assert (=> start!70952 tp_is_empty!14855))

(declare-fun array_inv!17509 (array!45860) Bool)

(assert (=> start!70952 (array_inv!17509 _keys!976)))

(assert (=> start!70952 true))

(declare-datatypes ((V!24807 0))(
  ( (V!24808 (val!7475 Int)) )
))
(declare-datatypes ((ValueCell!7012 0))(
  ( (ValueCellFull!7012 (v!9904 V!24807)) (EmptyCell!7012) )
))
(declare-datatypes ((array!45862 0))(
  ( (array!45863 (arr!21975 (Array (_ BitVec 32) ValueCell!7012)) (size!22396 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45862)

(declare-fun e!458143 () Bool)

(declare-fun array_inv!17510 (array!45862) Bool)

(assert (=> start!70952 (and (array_inv!17510 _values!788) e!458143)))

(assert (=> start!70952 tp!46186))

(declare-fun b!823601 () Bool)

(declare-fun e!458141 () Bool)

(declare-fun mapRes!23899 () Bool)

(assert (=> b!823601 (= e!458143 (and e!458141 mapRes!23899))))

(declare-fun condMapEmpty!23899 () Bool)

(declare-fun mapDefault!23899 () ValueCell!7012)

