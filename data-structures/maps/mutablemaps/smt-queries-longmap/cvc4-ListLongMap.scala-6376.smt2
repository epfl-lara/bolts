; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82024 () Bool)

(assert start!82024)

(declare-fun b!956197 () Bool)

(declare-fun res!640369 () Bool)

(declare-fun e!538817 () Bool)

(assert (=> b!956197 (=> (not res!640369) (not e!538817))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!58189 0))(
  ( (array!58190 (arr!27970 (Array (_ BitVec 32) (_ BitVec 64))) (size!28450 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58189)

(declare-datatypes ((V!33029 0))(
  ( (V!33030 (val!10568 Int)) )
))
(declare-datatypes ((ValueCell!10036 0))(
  ( (ValueCellFull!10036 (v!13123 V!33029)) (EmptyCell!10036) )
))
(declare-datatypes ((array!58191 0))(
  ( (array!58192 (arr!27971 (Array (_ BitVec 32) ValueCell!10036)) (size!28451 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58191)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!956197 (= res!640369 (and (= (size!28451 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28450 _keys!1441) (size!28451 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33514 () Bool)

(declare-fun mapRes!33514 () Bool)

(declare-fun tp!64093 () Bool)

(declare-fun e!538818 () Bool)

(assert (=> mapNonEmpty!33514 (= mapRes!33514 (and tp!64093 e!538818))))

(declare-fun mapKey!33514 () (_ BitVec 32))

(declare-fun mapRest!33514 () (Array (_ BitVec 32) ValueCell!10036))

(declare-fun mapValue!33514 () ValueCell!10036)

(assert (=> mapNonEmpty!33514 (= (arr!27971 _values!1197) (store mapRest!33514 mapKey!33514 mapValue!33514))))

(declare-fun b!956198 () Bool)

(declare-fun e!538821 () Bool)

(declare-fun tp_is_empty!21035 () Bool)

(assert (=> b!956198 (= e!538821 tp_is_empty!21035)))

(declare-fun b!956199 () Bool)

(declare-fun res!640368 () Bool)

(assert (=> b!956199 (=> (not res!640368) (not e!538817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58189 (_ BitVec 32)) Bool)

(assert (=> b!956199 (= res!640368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956200 () Bool)

(declare-fun e!538820 () Bool)

(assert (=> b!956200 (= e!538820 (and e!538821 mapRes!33514))))

(declare-fun condMapEmpty!33514 () Bool)

(declare-fun mapDefault!33514 () ValueCell!10036)

