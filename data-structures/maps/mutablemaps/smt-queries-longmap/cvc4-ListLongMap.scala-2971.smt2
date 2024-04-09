; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42094 () Bool)

(assert start!42094)

(declare-fun b_free!11639 () Bool)

(declare-fun b_next!11639 () Bool)

(assert (=> start!42094 (= b_free!11639 (not b_next!11639))))

(declare-fun tp!40936 () Bool)

(declare-fun b_and!20067 () Bool)

(assert (=> start!42094 (= tp!40936 b_and!20067)))

(declare-fun b!469706 () Bool)

(declare-fun e!275118 () Bool)

(declare-fun tp_is_empty!13067 () Bool)

(assert (=> b!469706 (= e!275118 tp_is_empty!13067)))

(declare-fun res!280767 () Bool)

(declare-fun e!275121 () Bool)

(assert (=> start!42094 (=> (not res!280767) (not e!275121))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42094 (= res!280767 (validMask!0 mask!1365))))

(assert (=> start!42094 e!275121))

(assert (=> start!42094 tp_is_empty!13067))

(assert (=> start!42094 tp!40936))

(assert (=> start!42094 true))

(declare-datatypes ((array!29867 0))(
  ( (array!29868 (arr!14355 (Array (_ BitVec 32) (_ BitVec 64))) (size!14707 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29867)

(declare-fun array_inv!10352 (array!29867) Bool)

(assert (=> start!42094 (array_inv!10352 _keys!1025)))

(declare-datatypes ((V!18527 0))(
  ( (V!18528 (val!6578 Int)) )
))
(declare-datatypes ((ValueCell!6190 0))(
  ( (ValueCellFull!6190 (v!8864 V!18527)) (EmptyCell!6190) )
))
(declare-datatypes ((array!29869 0))(
  ( (array!29870 (arr!14356 (Array (_ BitVec 32) ValueCell!6190)) (size!14708 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29869)

(declare-fun e!275122 () Bool)

(declare-fun array_inv!10353 (array!29869) Bool)

(assert (=> start!42094 (and (array_inv!10353 _values!833) e!275122)))

(declare-fun b!469707 () Bool)

(declare-fun res!280769 () Bool)

(assert (=> b!469707 (=> (not res!280769) (not e!275121))))

(declare-datatypes ((List!8754 0))(
  ( (Nil!8751) (Cons!8750 (h!9606 (_ BitVec 64)) (t!14722 List!8754)) )
))
(declare-fun arrayNoDuplicates!0 (array!29867 (_ BitVec 32) List!8754) Bool)

(assert (=> b!469707 (= res!280769 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8751))))

(declare-fun b!469708 () Bool)

(declare-fun mapRes!21298 () Bool)

(assert (=> b!469708 (= e!275122 (and e!275118 mapRes!21298))))

(declare-fun condMapEmpty!21298 () Bool)

(declare-fun mapDefault!21298 () ValueCell!6190)

