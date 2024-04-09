; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82002 () Bool)

(assert start!82002)

(declare-fun b!955999 () Bool)

(declare-fun e!538654 () Bool)

(assert (=> b!955999 (= e!538654 false)))

(declare-fun lt!430042 () Bool)

(declare-datatypes ((array!58147 0))(
  ( (array!58148 (arr!27949 (Array (_ BitVec 32) (_ BitVec 64))) (size!28429 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58147)

(declare-datatypes ((List!19614 0))(
  ( (Nil!19611) (Cons!19610 (h!20772 (_ BitVec 64)) (t!27983 List!19614)) )
))
(declare-fun arrayNoDuplicates!0 (array!58147 (_ BitVec 32) List!19614) Bool)

(assert (=> b!955999 (= lt!430042 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19611))))

(declare-fun b!956000 () Bool)

(declare-fun res!640269 () Bool)

(assert (=> b!956000 (=> (not res!640269) (not e!538654))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58147 (_ BitVec 32)) Bool)

(assert (=> b!956000 (= res!640269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun res!640268 () Bool)

(assert (=> start!82002 (=> (not res!640268) (not e!538654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82002 (= res!640268 (validMask!0 mask!1823))))

(assert (=> start!82002 e!538654))

(assert (=> start!82002 true))

(declare-datatypes ((V!33001 0))(
  ( (V!33002 (val!10557 Int)) )
))
(declare-datatypes ((ValueCell!10025 0))(
  ( (ValueCellFull!10025 (v!13112 V!33001)) (EmptyCell!10025) )
))
(declare-datatypes ((array!58149 0))(
  ( (array!58150 (arr!27950 (Array (_ BitVec 32) ValueCell!10025)) (size!28430 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58149)

(declare-fun e!538655 () Bool)

(declare-fun array_inv!21633 (array!58149) Bool)

(assert (=> start!82002 (and (array_inv!21633 _values!1197) e!538655)))

(declare-fun array_inv!21634 (array!58147) Bool)

(assert (=> start!82002 (array_inv!21634 _keys!1441)))

(declare-fun b!956001 () Bool)

(declare-fun res!640270 () Bool)

(assert (=> b!956001 (=> (not res!640270) (not e!538654))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!956001 (= res!640270 (and (= (size!28430 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28429 _keys!1441) (size!28430 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956002 () Bool)

(declare-fun e!538653 () Bool)

(declare-fun tp_is_empty!21013 () Bool)

(assert (=> b!956002 (= e!538653 tp_is_empty!21013)))

(declare-fun mapIsEmpty!33481 () Bool)

(declare-fun mapRes!33481 () Bool)

(assert (=> mapIsEmpty!33481 mapRes!33481))

(declare-fun b!956003 () Bool)

(declare-fun e!538652 () Bool)

(assert (=> b!956003 (= e!538652 tp_is_empty!21013)))

(declare-fun mapNonEmpty!33481 () Bool)

(declare-fun tp!64060 () Bool)

(assert (=> mapNonEmpty!33481 (= mapRes!33481 (and tp!64060 e!538653))))

(declare-fun mapValue!33481 () ValueCell!10025)

(declare-fun mapRest!33481 () (Array (_ BitVec 32) ValueCell!10025))

(declare-fun mapKey!33481 () (_ BitVec 32))

(assert (=> mapNonEmpty!33481 (= (arr!27950 _values!1197) (store mapRest!33481 mapKey!33481 mapValue!33481))))

(declare-fun b!956004 () Bool)

(assert (=> b!956004 (= e!538655 (and e!538652 mapRes!33481))))

(declare-fun condMapEmpty!33481 () Bool)

(declare-fun mapDefault!33481 () ValueCell!10025)

