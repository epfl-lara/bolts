; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83748 () Bool)

(assert start!83748)

(declare-fun b!977440 () Bool)

(declare-fun e!551098 () Bool)

(declare-fun tp_is_empty!22523 () Bool)

(assert (=> b!977440 (= e!551098 tp_is_empty!22523)))

(declare-fun b!977441 () Bool)

(declare-fun res!654269 () Bool)

(declare-fun e!551099 () Bool)

(assert (=> b!977441 (=> (not res!654269) (not e!551099))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35013 0))(
  ( (V!35014 (val!11312 Int)) )
))
(declare-datatypes ((ValueCell!10780 0))(
  ( (ValueCellFull!10780 (v!13874 V!35013)) (EmptyCell!10780) )
))
(declare-datatypes ((array!61063 0))(
  ( (array!61064 (arr!29385 (Array (_ BitVec 32) ValueCell!10780)) (size!29865 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61063)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61065 0))(
  ( (array!61066 (arr!29386 (Array (_ BitVec 32) (_ BitVec 64))) (size!29866 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61065)

(assert (=> b!977441 (= res!654269 (and (= (size!29865 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29866 _keys!1544) (size!29865 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977442 () Bool)

(assert (=> b!977442 (= e!551099 false)))

(declare-fun lt!433438 () Bool)

(declare-datatypes ((List!20505 0))(
  ( (Nil!20502) (Cons!20501 (h!21663 (_ BitVec 64)) (t!29028 List!20505)) )
))
(declare-fun arrayNoDuplicates!0 (array!61065 (_ BitVec 32) List!20505) Bool)

(assert (=> b!977442 (= lt!433438 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20502))))

(declare-fun b!977443 () Bool)

(declare-fun e!551097 () Bool)

(assert (=> b!977443 (= e!551097 tp_is_empty!22523)))

(declare-fun b!977444 () Bool)

(declare-fun e!551095 () Bool)

(declare-fun mapRes!35813 () Bool)

(assert (=> b!977444 (= e!551095 (and e!551097 mapRes!35813))))

(declare-fun condMapEmpty!35813 () Bool)

(declare-fun mapDefault!35813 () ValueCell!10780)

