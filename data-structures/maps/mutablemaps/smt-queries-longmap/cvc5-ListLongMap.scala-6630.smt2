; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83780 () Bool)

(assert start!83780)

(declare-fun b_free!19561 () Bool)

(declare-fun b_next!19561 () Bool)

(assert (=> start!83780 (= b_free!19561 (not b_next!19561))))

(declare-fun tp!68125 () Bool)

(declare-fun b_and!31229 () Bool)

(assert (=> start!83780 (= tp!68125 b_and!31229)))

(declare-fun b!977799 () Bool)

(declare-fun res!654485 () Bool)

(declare-fun e!551339 () Bool)

(assert (=> b!977799 (=> (not res!654485) (not e!551339))))

(declare-datatypes ((array!61127 0))(
  ( (array!61128 (arr!29417 (Array (_ BitVec 32) (_ BitVec 64))) (size!29897 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61127)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61127 (_ BitVec 32)) Bool)

(assert (=> b!977799 (= res!654485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977800 () Bool)

(declare-fun e!551337 () Bool)

(declare-fun tp_is_empty!22555 () Bool)

(assert (=> b!977800 (= e!551337 tp_is_empty!22555)))

(declare-fun b!977801 () Bool)

(declare-fun e!551335 () Bool)

(assert (=> b!977801 (= e!551335 tp_is_empty!22555)))

(declare-fun b!977802 () Bool)

(declare-fun res!654487 () Bool)

(assert (=> b!977802 (=> (not res!654487) (not e!551339))))

(declare-datatypes ((V!35057 0))(
  ( (V!35058 (val!11328 Int)) )
))
(declare-datatypes ((ValueCell!10796 0))(
  ( (ValueCellFull!10796 (v!13890 V!35057)) (EmptyCell!10796) )
))
(declare-datatypes ((array!61129 0))(
  ( (array!61130 (arr!29418 (Array (_ BitVec 32) ValueCell!10796)) (size!29898 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61129)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977802 (= res!654487 (and (= (size!29898 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29897 _keys!1544) (size!29898 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977803 () Bool)

(declare-fun res!654483 () Bool)

(assert (=> b!977803 (=> (not res!654483) (not e!551339))))

(assert (=> b!977803 (= res!654483 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!977804 () Bool)

(declare-fun res!654484 () Bool)

(assert (=> b!977804 (=> (not res!654484) (not e!551339))))

(declare-datatypes ((List!20521 0))(
  ( (Nil!20518) (Cons!20517 (h!21679 (_ BitVec 64)) (t!29046 List!20521)) )
))
(declare-fun arrayNoDuplicates!0 (array!61127 (_ BitVec 32) List!20521) Bool)

(assert (=> b!977804 (= res!654484 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20518))))

(declare-fun mapNonEmpty!35861 () Bool)

(declare-fun mapRes!35861 () Bool)

(declare-fun tp!68126 () Bool)

(assert (=> mapNonEmpty!35861 (= mapRes!35861 (and tp!68126 e!551337))))

(declare-fun mapKey!35861 () (_ BitVec 32))

(declare-fun mapRest!35861 () (Array (_ BitVec 32) ValueCell!10796))

(declare-fun mapValue!35861 () ValueCell!10796)

(assert (=> mapNonEmpty!35861 (= (arr!29418 _values!1278) (store mapRest!35861 mapKey!35861 mapValue!35861))))

(declare-fun b!977805 () Bool)

(declare-fun e!551336 () Bool)

(assert (=> b!977805 (= e!551336 (and e!551335 mapRes!35861))))

(declare-fun condMapEmpty!35861 () Bool)

(declare-fun mapDefault!35861 () ValueCell!10796)

