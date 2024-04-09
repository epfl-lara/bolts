; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81952 () Bool)

(assert start!81952)

(declare-fun b_free!18419 () Bool)

(declare-fun b_next!18419 () Bool)

(assert (=> start!81952 (= b_free!18419 (not b_next!18419))))

(declare-fun tp!63958 () Bool)

(declare-fun b_and!29923 () Bool)

(assert (=> start!81952 (= tp!63958 b_and!29923)))

(declare-fun b!955437 () Bool)

(declare-fun res!639935 () Bool)

(declare-fun e!538278 () Bool)

(assert (=> b!955437 (=> (not res!639935) (not e!538278))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58051 0))(
  ( (array!58052 (arr!27901 (Array (_ BitVec 32) (_ BitVec 64))) (size!28381 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58051)

(assert (=> b!955437 (= res!639935 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28381 _keys!1441))))))

(declare-fun b!955438 () Bool)

(declare-fun e!538281 () Bool)

(declare-fun tp_is_empty!20963 () Bool)

(assert (=> b!955438 (= e!538281 tp_is_empty!20963)))

(declare-fun b!955439 () Bool)

(declare-fun res!639937 () Bool)

(assert (=> b!955439 (=> (not res!639937) (not e!538278))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32933 0))(
  ( (V!32934 (val!10532 Int)) )
))
(declare-datatypes ((ValueCell!10000 0))(
  ( (ValueCellFull!10000 (v!13087 V!32933)) (EmptyCell!10000) )
))
(declare-datatypes ((array!58053 0))(
  ( (array!58054 (arr!27902 (Array (_ BitVec 32) ValueCell!10000)) (size!28382 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58053)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32933)

(declare-fun minValue!1139 () V!32933)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13770 0))(
  ( (tuple2!13771 (_1!6895 (_ BitVec 64)) (_2!6895 V!32933)) )
))
(declare-datatypes ((List!19587 0))(
  ( (Nil!19584) (Cons!19583 (h!20745 tuple2!13770) (t!27956 List!19587)) )
))
(declare-datatypes ((ListLongMap!12481 0))(
  ( (ListLongMap!12482 (toList!6256 List!19587)) )
))
(declare-fun contains!5306 (ListLongMap!12481 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3441 (array!58051 array!58053 (_ BitVec 32) (_ BitVec 32) V!32933 V!32933 (_ BitVec 32) Int) ListLongMap!12481)

(assert (=> b!955439 (= res!639937 (contains!5306 (getCurrentListMap!3441 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27901 _keys!1441) i!735)))))

(declare-fun res!639932 () Bool)

(assert (=> start!81952 (=> (not res!639932) (not e!538278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81952 (= res!639932 (validMask!0 mask!1823))))

(assert (=> start!81952 e!538278))

(assert (=> start!81952 true))

(assert (=> start!81952 tp_is_empty!20963))

(declare-fun array_inv!21603 (array!58051) Bool)

(assert (=> start!81952 (array_inv!21603 _keys!1441)))

(declare-fun e!538279 () Bool)

(declare-fun array_inv!21604 (array!58053) Bool)

(assert (=> start!81952 (and (array_inv!21604 _values!1197) e!538279)))

(assert (=> start!81952 tp!63958))

(declare-fun mapNonEmpty!33406 () Bool)

(declare-fun mapRes!33406 () Bool)

(declare-fun tp!63957 () Bool)

(assert (=> mapNonEmpty!33406 (= mapRes!33406 (and tp!63957 e!538281))))

(declare-fun mapValue!33406 () ValueCell!10000)

(declare-fun mapRest!33406 () (Array (_ BitVec 32) ValueCell!10000))

(declare-fun mapKey!33406 () (_ BitVec 32))

(assert (=> mapNonEmpty!33406 (= (arr!27902 _values!1197) (store mapRest!33406 mapKey!33406 mapValue!33406))))

(declare-fun mapIsEmpty!33406 () Bool)

(assert (=> mapIsEmpty!33406 mapRes!33406))

(declare-fun b!955440 () Bool)

(declare-fun e!538280 () Bool)

(assert (=> b!955440 (= e!538279 (and e!538280 mapRes!33406))))

(declare-fun condMapEmpty!33406 () Bool)

(declare-fun mapDefault!33406 () ValueCell!10000)

