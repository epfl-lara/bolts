; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83810 () Bool)

(assert start!83810)

(declare-fun b_free!19591 () Bool)

(declare-fun b_next!19591 () Bool)

(assert (=> start!83810 (= b_free!19591 (not b_next!19591))))

(declare-fun tp!68216 () Bool)

(declare-fun b_and!31289 () Bool)

(assert (=> start!83810 (= tp!68216 b_and!31289)))

(declare-fun b!978279 () Bool)

(declare-fun res!654798 () Bool)

(declare-fun e!551561 () Bool)

(assert (=> b!978279 (=> (not res!654798) (not e!551561))))

(declare-datatypes ((array!61185 0))(
  ( (array!61186 (arr!29446 (Array (_ BitVec 32) (_ BitVec 64))) (size!29926 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61185)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61185 (_ BitVec 32)) Bool)

(assert (=> b!978279 (= res!654798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978280 () Bool)

(declare-fun e!551562 () Bool)

(declare-fun tp_is_empty!22585 () Bool)

(assert (=> b!978280 (= e!551562 tp_is_empty!22585)))

(declare-fun mapIsEmpty!35906 () Bool)

(declare-fun mapRes!35906 () Bool)

(assert (=> mapIsEmpty!35906 mapRes!35906))

(declare-fun b!978281 () Bool)

(declare-fun res!654800 () Bool)

(assert (=> b!978281 (=> (not res!654800) (not e!551561))))

(declare-datatypes ((List!20541 0))(
  ( (Nil!20538) (Cons!20537 (h!21699 (_ BitVec 64)) (t!29096 List!20541)) )
))
(declare-fun arrayNoDuplicates!0 (array!61185 (_ BitVec 32) List!20541) Bool)

(assert (=> b!978281 (= res!654800 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20538))))

(declare-fun b!978282 () Bool)

(declare-fun res!654801 () Bool)

(assert (=> b!978282 (=> (not res!654801) (not e!551561))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978282 (= res!654801 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!35906 () Bool)

(declare-fun tp!68215 () Bool)

(assert (=> mapNonEmpty!35906 (= mapRes!35906 (and tp!68215 e!551562))))

(declare-datatypes ((V!35097 0))(
  ( (V!35098 (val!11343 Int)) )
))
(declare-datatypes ((ValueCell!10811 0))(
  ( (ValueCellFull!10811 (v!13905 V!35097)) (EmptyCell!10811) )
))
(declare-fun mapRest!35906 () (Array (_ BitVec 32) ValueCell!10811))

(declare-datatypes ((array!61187 0))(
  ( (array!61188 (arr!29447 (Array (_ BitVec 32) ValueCell!10811)) (size!29927 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61187)

(declare-fun mapValue!35906 () ValueCell!10811)

(declare-fun mapKey!35906 () (_ BitVec 32))

(assert (=> mapNonEmpty!35906 (= (arr!29447 _values!1278) (store mapRest!35906 mapKey!35906 mapValue!35906))))

(declare-fun b!978283 () Bool)

(declare-fun e!551563 () Bool)

(assert (=> b!978283 (= e!551563 tp_is_empty!22585)))

(declare-fun b!978284 () Bool)

(declare-fun e!551560 () Bool)

(assert (=> b!978284 (= e!551560 (and e!551563 mapRes!35906))))

(declare-fun condMapEmpty!35906 () Bool)

(declare-fun mapDefault!35906 () ValueCell!10811)

