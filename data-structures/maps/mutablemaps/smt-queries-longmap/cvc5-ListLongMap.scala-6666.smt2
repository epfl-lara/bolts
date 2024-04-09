; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83996 () Bool)

(assert start!83996)

(declare-fun b!981079 () Bool)

(declare-fun e!553119 () Bool)

(declare-fun tp_is_empty!22771 () Bool)

(assert (=> b!981079 (= e!553119 tp_is_empty!22771)))

(declare-fun res!656627 () Bool)

(declare-fun e!553118 () Bool)

(assert (=> start!83996 (=> (not res!656627) (not e!553118))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83996 (= res!656627 (validMask!0 mask!1948))))

(assert (=> start!83996 e!553118))

(assert (=> start!83996 true))

(declare-datatypes ((V!35345 0))(
  ( (V!35346 (val!11436 Int)) )
))
(declare-datatypes ((ValueCell!10904 0))(
  ( (ValueCellFull!10904 (v!13998 V!35345)) (EmptyCell!10904) )
))
(declare-datatypes ((array!61537 0))(
  ( (array!61538 (arr!29622 (Array (_ BitVec 32) ValueCell!10904)) (size!30102 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61537)

(declare-fun e!553117 () Bool)

(declare-fun array_inv!22783 (array!61537) Bool)

(assert (=> start!83996 (and (array_inv!22783 _values!1278) e!553117)))

(declare-datatypes ((array!61539 0))(
  ( (array!61540 (arr!29623 (Array (_ BitVec 32) (_ BitVec 64))) (size!30103 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61539)

(declare-fun array_inv!22784 (array!61539) Bool)

(assert (=> start!83996 (array_inv!22784 _keys!1544)))

(declare-fun b!981080 () Bool)

(declare-fun res!656628 () Bool)

(assert (=> b!981080 (=> (not res!656628) (not e!553118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61539 (_ BitVec 32)) Bool)

(assert (=> b!981080 (= res!656628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981081 () Bool)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981081 (= e!553118 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!36185 () Bool)

(declare-fun mapRes!36185 () Bool)

(assert (=> mapIsEmpty!36185 mapRes!36185))

(declare-fun b!981082 () Bool)

(declare-fun res!656626 () Bool)

(assert (=> b!981082 (=> (not res!656626) (not e!553118))))

(assert (=> b!981082 (= res!656626 (and (= (size!30102 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30103 _keys!1544) (size!30102 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981083 () Bool)

(declare-fun res!656624 () Bool)

(assert (=> b!981083 (=> (not res!656624) (not e!553118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981083 (= res!656624 (validKeyInArray!0 (select (arr!29623 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36185 () Bool)

(declare-fun tp!68699 () Bool)

(declare-fun e!553120 () Bool)

(assert (=> mapNonEmpty!36185 (= mapRes!36185 (and tp!68699 e!553120))))

(declare-fun mapRest!36185 () (Array (_ BitVec 32) ValueCell!10904))

(declare-fun mapValue!36185 () ValueCell!10904)

(declare-fun mapKey!36185 () (_ BitVec 32))

(assert (=> mapNonEmpty!36185 (= (arr!29622 _values!1278) (store mapRest!36185 mapKey!36185 mapValue!36185))))

(declare-fun b!981084 () Bool)

(assert (=> b!981084 (= e!553120 tp_is_empty!22771)))

(declare-fun b!981085 () Bool)

(declare-fun res!656625 () Bool)

(assert (=> b!981085 (=> (not res!656625) (not e!553118))))

(declare-datatypes ((List!20657 0))(
  ( (Nil!20654) (Cons!20653 (h!21815 (_ BitVec 64)) (t!29348 List!20657)) )
))
(declare-fun arrayNoDuplicates!0 (array!61539 (_ BitVec 32) List!20657) Bool)

(assert (=> b!981085 (= res!656625 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20654))))

(declare-fun b!981086 () Bool)

(assert (=> b!981086 (= e!553117 (and e!553119 mapRes!36185))))

(declare-fun condMapEmpty!36185 () Bool)

(declare-fun mapDefault!36185 () ValueCell!10904)

