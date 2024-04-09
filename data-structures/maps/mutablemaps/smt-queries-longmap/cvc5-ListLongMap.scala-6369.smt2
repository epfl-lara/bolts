; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81978 () Bool)

(assert start!81978)

(declare-fun mapNonEmpty!33445 () Bool)

(declare-fun mapRes!33445 () Bool)

(declare-fun tp!64024 () Bool)

(declare-fun e!538473 () Bool)

(assert (=> mapNonEmpty!33445 (= mapRes!33445 (and tp!64024 e!538473))))

(declare-fun mapKey!33445 () (_ BitVec 32))

(declare-datatypes ((V!32969 0))(
  ( (V!32970 (val!10545 Int)) )
))
(declare-datatypes ((ValueCell!10013 0))(
  ( (ValueCellFull!10013 (v!13100 V!32969)) (EmptyCell!10013) )
))
(declare-fun mapValue!33445 () ValueCell!10013)

(declare-datatypes ((array!58099 0))(
  ( (array!58100 (arr!27925 (Array (_ BitVec 32) ValueCell!10013)) (size!28405 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58099)

(declare-fun mapRest!33445 () (Array (_ BitVec 32) ValueCell!10013))

(assert (=> mapNonEmpty!33445 (= (arr!27925 _values!1197) (store mapRest!33445 mapKey!33445 mapValue!33445))))

(declare-fun b!955783 () Bool)

(declare-fun tp_is_empty!20989 () Bool)

(assert (=> b!955783 (= e!538473 tp_is_empty!20989)))

(declare-fun res!640161 () Bool)

(declare-fun e!538475 () Bool)

(assert (=> start!81978 (=> (not res!640161) (not e!538475))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81978 (= res!640161 (validMask!0 mask!1823))))

(assert (=> start!81978 e!538475))

(assert (=> start!81978 true))

(declare-fun e!538474 () Bool)

(declare-fun array_inv!21617 (array!58099) Bool)

(assert (=> start!81978 (and (array_inv!21617 _values!1197) e!538474)))

(declare-datatypes ((array!58101 0))(
  ( (array!58102 (arr!27926 (Array (_ BitVec 32) (_ BitVec 64))) (size!28406 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58101)

(declare-fun array_inv!21618 (array!58101) Bool)

(assert (=> start!81978 (array_inv!21618 _keys!1441)))

(declare-fun mapIsEmpty!33445 () Bool)

(assert (=> mapIsEmpty!33445 mapRes!33445))

(declare-fun b!955784 () Bool)

(declare-fun e!538476 () Bool)

(assert (=> b!955784 (= e!538476 tp_is_empty!20989)))

(declare-fun b!955785 () Bool)

(declare-fun res!640160 () Bool)

(assert (=> b!955785 (=> (not res!640160) (not e!538475))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58101 (_ BitVec 32)) Bool)

(assert (=> b!955785 (= res!640160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955786 () Bool)

(assert (=> b!955786 (= e!538475 false)))

(declare-fun lt!430006 () Bool)

(declare-datatypes ((List!19604 0))(
  ( (Nil!19601) (Cons!19600 (h!20762 (_ BitVec 64)) (t!27973 List!19604)) )
))
(declare-fun arrayNoDuplicates!0 (array!58101 (_ BitVec 32) List!19604) Bool)

(assert (=> b!955786 (= lt!430006 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19601))))

(declare-fun b!955787 () Bool)

(assert (=> b!955787 (= e!538474 (and e!538476 mapRes!33445))))

(declare-fun condMapEmpty!33445 () Bool)

(declare-fun mapDefault!33445 () ValueCell!10013)

