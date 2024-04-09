; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84086 () Bool)

(assert start!84086)

(declare-fun b_free!19813 () Bool)

(declare-fun b_next!19813 () Bool)

(assert (=> start!84086 (= b_free!19813 (not b_next!19813))))

(declare-fun tp!68963 () Bool)

(declare-fun b_and!31727 () Bool)

(assert (=> start!84086 (= tp!68963 b_and!31727)))

(declare-fun b!982619 () Bool)

(declare-fun res!657683 () Bool)

(declare-fun e!553913 () Bool)

(assert (=> b!982619 (=> (not res!657683) (not e!553913))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982619 (= res!657683 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36320 () Bool)

(declare-fun mapRes!36320 () Bool)

(declare-fun tp!68962 () Bool)

(declare-fun e!553915 () Bool)

(assert (=> mapNonEmpty!36320 (= mapRes!36320 (and tp!68962 e!553915))))

(declare-datatypes ((V!35465 0))(
  ( (V!35466 (val!11481 Int)) )
))
(declare-datatypes ((ValueCell!10949 0))(
  ( (ValueCellFull!10949 (v!14043 V!35465)) (EmptyCell!10949) )
))
(declare-datatypes ((array!61707 0))(
  ( (array!61708 (arr!29707 (Array (_ BitVec 32) ValueCell!10949)) (size!30187 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61707)

(declare-fun mapKey!36320 () (_ BitVec 32))

(declare-fun mapRest!36320 () (Array (_ BitVec 32) ValueCell!10949))

(declare-fun mapValue!36320 () ValueCell!10949)

(assert (=> mapNonEmpty!36320 (= (arr!29707 _values!1278) (store mapRest!36320 mapKey!36320 mapValue!36320))))

(declare-fun b!982620 () Bool)

(declare-fun res!657682 () Bool)

(assert (=> b!982620 (=> (not res!657682) (not e!553913))))

(declare-datatypes ((array!61709 0))(
  ( (array!61710 (arr!29708 (Array (_ BitVec 32) (_ BitVec 64))) (size!30188 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61709)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61709 (_ BitVec 32)) Bool)

(assert (=> b!982620 (= res!657682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982621 () Bool)

(declare-fun res!657687 () Bool)

(assert (=> b!982621 (=> (not res!657687) (not e!553913))))

(declare-datatypes ((List!20720 0))(
  ( (Nil!20717) (Cons!20716 (h!21878 (_ BitVec 64)) (t!29491 List!20720)) )
))
(declare-fun arrayNoDuplicates!0 (array!61709 (_ BitVec 32) List!20720) Bool)

(assert (=> b!982621 (= res!657687 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20717))))

(declare-fun b!982622 () Bool)

(declare-fun res!657680 () Bool)

(assert (=> b!982622 (=> (not res!657680) (not e!553913))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982622 (= res!657680 (validKeyInArray!0 (select (arr!29708 _keys!1544) from!1932)))))

(declare-fun b!982623 () Bool)

(declare-fun e!553916 () Bool)

(declare-fun e!553912 () Bool)

(assert (=> b!982623 (= e!553916 (and e!553912 mapRes!36320))))

(declare-fun condMapEmpty!36320 () Bool)

(declare-fun mapDefault!36320 () ValueCell!10949)

