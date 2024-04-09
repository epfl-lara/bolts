; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83772 () Bool)

(assert start!83772)

(declare-fun b!977680 () Bool)

(declare-fun e!551279 () Bool)

(declare-fun tp_is_empty!22547 () Bool)

(assert (=> b!977680 (= e!551279 tp_is_empty!22547)))

(declare-fun b!977681 () Bool)

(declare-fun e!551275 () Bool)

(assert (=> b!977681 (= e!551275 tp_is_empty!22547)))

(declare-fun b!977682 () Bool)

(declare-fun e!551277 () Bool)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!977682 (= e!551277 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!35849 () Bool)

(declare-fun mapRes!35849 () Bool)

(assert (=> mapIsEmpty!35849 mapRes!35849))

(declare-fun b!977683 () Bool)

(declare-fun res!654400 () Bool)

(assert (=> b!977683 (=> (not res!654400) (not e!551277))))

(declare-datatypes ((array!61111 0))(
  ( (array!61112 (arr!29409 (Array (_ BitVec 32) (_ BitVec 64))) (size!29889 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61111)

(declare-datatypes ((List!20514 0))(
  ( (Nil!20511) (Cons!20510 (h!21672 (_ BitVec 64)) (t!29037 List!20514)) )
))
(declare-fun arrayNoDuplicates!0 (array!61111 (_ BitVec 32) List!20514) Bool)

(assert (=> b!977683 (= res!654400 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20511))))

(declare-fun b!977684 () Bool)

(declare-fun res!654401 () Bool)

(assert (=> b!977684 (=> (not res!654401) (not e!551277))))

(assert (=> b!977684 (= res!654401 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29889 _keys!1544))))))

(declare-fun res!654403 () Bool)

(assert (=> start!83772 (=> (not res!654403) (not e!551277))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83772 (= res!654403 (validMask!0 mask!1948))))

(assert (=> start!83772 e!551277))

(assert (=> start!83772 true))

(declare-datatypes ((V!35045 0))(
  ( (V!35046 (val!11324 Int)) )
))
(declare-datatypes ((ValueCell!10792 0))(
  ( (ValueCellFull!10792 (v!13886 V!35045)) (EmptyCell!10792) )
))
(declare-datatypes ((array!61113 0))(
  ( (array!61114 (arr!29410 (Array (_ BitVec 32) ValueCell!10792)) (size!29890 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61113)

(declare-fun e!551276 () Bool)

(declare-fun array_inv!22637 (array!61113) Bool)

(assert (=> start!83772 (and (array_inv!22637 _values!1278) e!551276)))

(declare-fun array_inv!22638 (array!61111) Bool)

(assert (=> start!83772 (array_inv!22638 _keys!1544)))

(declare-fun b!977685 () Bool)

(declare-fun res!654405 () Bool)

(assert (=> b!977685 (=> (not res!654405) (not e!551277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977685 (= res!654405 (validKeyInArray!0 (select (arr!29409 _keys!1544) from!1932)))))

(declare-fun b!977686 () Bool)

(declare-fun res!654402 () Bool)

(assert (=> b!977686 (=> (not res!654402) (not e!551277))))

(assert (=> b!977686 (= res!654402 (and (= (size!29890 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29889 _keys!1544) (size!29890 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!977687 () Bool)

(assert (=> b!977687 (= e!551276 (and e!551279 mapRes!35849))))

(declare-fun condMapEmpty!35849 () Bool)

(declare-fun mapDefault!35849 () ValueCell!10792)

