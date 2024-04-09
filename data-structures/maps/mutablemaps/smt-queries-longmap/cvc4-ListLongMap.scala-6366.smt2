; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81964 () Bool)

(assert start!81964)

(declare-fun b_free!18431 () Bool)

(declare-fun b_next!18431 () Bool)

(assert (=> start!81964 (= b_free!18431 (not b_next!18431))))

(declare-fun tp!63993 () Bool)

(declare-fun b_and!29935 () Bool)

(assert (=> start!81964 (= tp!63993 b_and!29935)))

(declare-fun res!640062 () Bool)

(declare-fun e!538368 () Bool)

(assert (=> start!81964 (=> (not res!640062) (not e!538368))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81964 (= res!640062 (validMask!0 mask!1823))))

(assert (=> start!81964 e!538368))

(assert (=> start!81964 true))

(declare-fun tp_is_empty!20975 () Bool)

(assert (=> start!81964 tp_is_empty!20975))

(declare-datatypes ((array!58075 0))(
  ( (array!58076 (arr!27913 (Array (_ BitVec 32) (_ BitVec 64))) (size!28393 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58075)

(declare-fun array_inv!21611 (array!58075) Bool)

(assert (=> start!81964 (array_inv!21611 _keys!1441)))

(declare-datatypes ((V!32949 0))(
  ( (V!32950 (val!10538 Int)) )
))
(declare-datatypes ((ValueCell!10006 0))(
  ( (ValueCellFull!10006 (v!13093 V!32949)) (EmptyCell!10006) )
))
(declare-datatypes ((array!58077 0))(
  ( (array!58078 (arr!27914 (Array (_ BitVec 32) ValueCell!10006)) (size!28394 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58077)

(declare-fun e!538370 () Bool)

(declare-fun array_inv!21612 (array!58077) Bool)

(assert (=> start!81964 (and (array_inv!21612 _values!1197) e!538370)))

(assert (=> start!81964 tp!63993))

(declare-fun b!955617 () Bool)

(declare-fun res!640059 () Bool)

(assert (=> b!955617 (=> (not res!640059) (not e!538368))))

(declare-datatypes ((List!19597 0))(
  ( (Nil!19594) (Cons!19593 (h!20755 (_ BitVec 64)) (t!27966 List!19597)) )
))
(declare-fun arrayNoDuplicates!0 (array!58075 (_ BitVec 32) List!19597) Bool)

(assert (=> b!955617 (= res!640059 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19594))))

(declare-fun b!955618 () Bool)

(declare-fun e!538369 () Bool)

(declare-fun mapRes!33424 () Bool)

(assert (=> b!955618 (= e!538370 (and e!538369 mapRes!33424))))

(declare-fun condMapEmpty!33424 () Bool)

(declare-fun mapDefault!33424 () ValueCell!10006)

