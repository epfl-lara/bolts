; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83738 () Bool)

(assert start!83738)

(declare-fun b!977350 () Bool)

(declare-fun e!551021 () Bool)

(assert (=> b!977350 (= e!551021 false)))

(declare-fun lt!433423 () Bool)

(declare-datatypes ((array!61043 0))(
  ( (array!61044 (arr!29375 (Array (_ BitVec 32) (_ BitVec 64))) (size!29855 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61043)

(declare-datatypes ((List!20501 0))(
  ( (Nil!20498) (Cons!20497 (h!21659 (_ BitVec 64)) (t!29024 List!20501)) )
))
(declare-fun arrayNoDuplicates!0 (array!61043 (_ BitVec 32) List!20501) Bool)

(assert (=> b!977350 (= lt!433423 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20498))))

(declare-fun b!977351 () Bool)

(declare-fun e!551020 () Bool)

(declare-fun e!551023 () Bool)

(declare-fun mapRes!35798 () Bool)

(assert (=> b!977351 (= e!551020 (and e!551023 mapRes!35798))))

(declare-fun condMapEmpty!35798 () Bool)

(declare-datatypes ((V!35001 0))(
  ( (V!35002 (val!11307 Int)) )
))
(declare-datatypes ((ValueCell!10775 0))(
  ( (ValueCellFull!10775 (v!13869 V!35001)) (EmptyCell!10775) )
))
(declare-datatypes ((array!61045 0))(
  ( (array!61046 (arr!29376 (Array (_ BitVec 32) ValueCell!10775)) (size!29856 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61045)

(declare-fun mapDefault!35798 () ValueCell!10775)

