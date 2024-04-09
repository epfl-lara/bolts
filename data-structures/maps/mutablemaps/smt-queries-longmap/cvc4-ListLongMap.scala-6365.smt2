; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81958 () Bool)

(assert start!81958)

(declare-fun b_free!18425 () Bool)

(declare-fun b_next!18425 () Bool)

(assert (=> start!81958 (= b_free!18425 (not b_next!18425))))

(declare-fun tp!63976 () Bool)

(declare-fun b_and!29929 () Bool)

(assert (=> start!81958 (= tp!63976 b_and!29929)))

(declare-fun b!955527 () Bool)

(declare-fun res!639999 () Bool)

(declare-fun e!538325 () Bool)

(assert (=> b!955527 (=> (not res!639999) (not e!538325))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58063 0))(
  ( (array!58064 (arr!27907 (Array (_ BitVec 32) (_ BitVec 64))) (size!28387 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58063)

(assert (=> b!955527 (= res!639999 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28387 _keys!1441))))))

(declare-fun res!640000 () Bool)

(assert (=> start!81958 (=> (not res!640000) (not e!538325))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81958 (= res!640000 (validMask!0 mask!1823))))

(assert (=> start!81958 e!538325))

(assert (=> start!81958 true))

(declare-fun tp_is_empty!20969 () Bool)

(assert (=> start!81958 tp_is_empty!20969))

(declare-fun array_inv!21607 (array!58063) Bool)

(assert (=> start!81958 (array_inv!21607 _keys!1441)))

(declare-datatypes ((V!32941 0))(
  ( (V!32942 (val!10535 Int)) )
))
(declare-datatypes ((ValueCell!10003 0))(
  ( (ValueCellFull!10003 (v!13090 V!32941)) (EmptyCell!10003) )
))
(declare-datatypes ((array!58065 0))(
  ( (array!58066 (arr!27908 (Array (_ BitVec 32) ValueCell!10003)) (size!28388 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58065)

(declare-fun e!538326 () Bool)

(declare-fun array_inv!21608 (array!58065) Bool)

(assert (=> start!81958 (and (array_inv!21608 _values!1197) e!538326)))

(assert (=> start!81958 tp!63976))

(declare-fun b!955528 () Bool)

(declare-fun res!639994 () Bool)

(assert (=> b!955528 (=> (not res!639994) (not e!538325))))

(declare-fun zeroValue!1139 () V!32941)

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32941)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13774 0))(
  ( (tuple2!13775 (_1!6897 (_ BitVec 64)) (_2!6897 V!32941)) )
))
(declare-datatypes ((List!19591 0))(
  ( (Nil!19588) (Cons!19587 (h!20749 tuple2!13774) (t!27960 List!19591)) )
))
(declare-datatypes ((ListLongMap!12485 0))(
  ( (ListLongMap!12486 (toList!6258 List!19591)) )
))
(declare-fun contains!5308 (ListLongMap!12485 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3443 (array!58063 array!58065 (_ BitVec 32) (_ BitVec 32) V!32941 V!32941 (_ BitVec 32) Int) ListLongMap!12485)

(assert (=> b!955528 (= res!639994 (contains!5308 (getCurrentListMap!3443 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27907 _keys!1441) i!735)))))

(declare-fun b!955529 () Bool)

(declare-fun res!639997 () Bool)

(assert (=> b!955529 (=> (not res!639997) (not e!538325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955529 (= res!639997 (validKeyInArray!0 (select (arr!27907 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33415 () Bool)

(declare-fun mapRes!33415 () Bool)

(declare-fun tp!63975 () Bool)

(declare-fun e!538323 () Bool)

(assert (=> mapNonEmpty!33415 (= mapRes!33415 (and tp!63975 e!538323))))

(declare-fun mapKey!33415 () (_ BitVec 32))

(declare-fun mapRest!33415 () (Array (_ BitVec 32) ValueCell!10003))

(declare-fun mapValue!33415 () ValueCell!10003)

(assert (=> mapNonEmpty!33415 (= (arr!27908 _values!1197) (store mapRest!33415 mapKey!33415 mapValue!33415))))

(declare-fun b!955530 () Bool)

(assert (=> b!955530 (= e!538323 tp_is_empty!20969)))

(declare-fun b!955531 () Bool)

(declare-fun res!639998 () Bool)

(assert (=> b!955531 (=> (not res!639998) (not e!538325))))

(declare-datatypes ((List!19592 0))(
  ( (Nil!19589) (Cons!19588 (h!20750 (_ BitVec 64)) (t!27961 List!19592)) )
))
(declare-fun arrayNoDuplicates!0 (array!58063 (_ BitVec 32) List!19592) Bool)

(assert (=> b!955531 (= res!639998 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19589))))

(declare-fun b!955532 () Bool)

(declare-fun e!538322 () Bool)

(assert (=> b!955532 (= e!538326 (and e!538322 mapRes!33415))))

(declare-fun condMapEmpty!33415 () Bool)

(declare-fun mapDefault!33415 () ValueCell!10003)

