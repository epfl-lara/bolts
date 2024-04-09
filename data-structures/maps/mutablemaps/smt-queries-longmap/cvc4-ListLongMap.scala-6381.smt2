; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82070 () Bool)

(assert start!82070)

(declare-fun b_free!18449 () Bool)

(declare-fun b_next!18449 () Bool)

(assert (=> start!82070 (= b_free!18449 (not b_next!18449))))

(declare-fun tp!64158 () Bool)

(declare-fun b_and!29955 () Bool)

(assert (=> start!82070 (= tp!64158 b_and!29955)))

(declare-fun mapNonEmpty!33562 () Bool)

(declare-fun mapRes!33562 () Bool)

(declare-fun tp!64159 () Bool)

(declare-fun e!539118 () Bool)

(assert (=> mapNonEmpty!33562 (= mapRes!33562 (and tp!64159 e!539118))))

(declare-datatypes ((V!33069 0))(
  ( (V!33070 (val!10583 Int)) )
))
(declare-datatypes ((ValueCell!10051 0))(
  ( (ValueCellFull!10051 (v!13139 V!33069)) (EmptyCell!10051) )
))
(declare-fun mapRest!33562 () (Array (_ BitVec 32) ValueCell!10051))

(declare-fun mapKey!33562 () (_ BitVec 32))

(declare-datatypes ((array!58249 0))(
  ( (array!58250 (arr!27999 (Array (_ BitVec 32) ValueCell!10051)) (size!28479 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58249)

(declare-fun mapValue!33562 () ValueCell!10051)

(assert (=> mapNonEmpty!33562 (= (arr!27999 _values!1197) (store mapRest!33562 mapKey!33562 mapValue!33562))))

(declare-fun b!956635 () Bool)

(declare-fun e!539117 () Bool)

(declare-fun tp_is_empty!21065 () Bool)

(assert (=> b!956635 (= e!539117 tp_is_empty!21065)))

(declare-fun b!956636 () Bool)

(assert (=> b!956636 (= e!539118 tp_is_empty!21065)))

(declare-fun res!640611 () Bool)

(declare-fun e!539116 () Bool)

(assert (=> start!82070 (=> (not res!640611) (not e!539116))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82070 (= res!640611 (validMask!0 mask!1823))))

(assert (=> start!82070 e!539116))

(assert (=> start!82070 true))

(assert (=> start!82070 tp_is_empty!21065))

(declare-datatypes ((array!58251 0))(
  ( (array!58252 (arr!28000 (Array (_ BitVec 32) (_ BitVec 64))) (size!28480 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58251)

(declare-fun array_inv!21663 (array!58251) Bool)

(assert (=> start!82070 (array_inv!21663 _keys!1441)))

(declare-fun e!539115 () Bool)

(declare-fun array_inv!21664 (array!58249) Bool)

(assert (=> start!82070 (and (array_inv!21664 _values!1197) e!539115)))

(assert (=> start!82070 tp!64158))

(declare-fun b!956637 () Bool)

(declare-fun res!640606 () Bool)

(assert (=> b!956637 (=> (not res!640606) (not e!539116))))

(declare-datatypes ((List!19635 0))(
  ( (Nil!19632) (Cons!19631 (h!20793 (_ BitVec 64)) (t!28006 List!19635)) )
))
(declare-fun arrayNoDuplicates!0 (array!58251 (_ BitVec 32) List!19635) Bool)

(assert (=> b!956637 (= res!640606 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19632))))

(declare-fun b!956638 () Bool)

(declare-fun res!640607 () Bool)

(assert (=> b!956638 (=> (not res!640607) (not e!539116))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!956638 (= res!640607 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28480 _keys!1441))))))

(declare-fun b!956639 () Bool)

(declare-fun res!640612 () Bool)

(assert (=> b!956639 (=> (not res!640612) (not e!539116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!956639 (= res!640612 (validKeyInArray!0 (select (arr!28000 _keys!1441) i!735)))))

(declare-fun b!956640 () Bool)

(assert (=> b!956640 (= e!539115 (and e!539117 mapRes!33562))))

(declare-fun condMapEmpty!33562 () Bool)

(declare-fun mapDefault!33562 () ValueCell!10051)

