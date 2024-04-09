; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111690 () Bool)

(assert start!111690)

(declare-fun b_free!30311 () Bool)

(declare-fun b_next!30311 () Bool)

(assert (=> start!111690 (= b_free!30311 (not b_next!30311))))

(declare-fun tp!106410 () Bool)

(declare-fun b_and!48791 () Bool)

(assert (=> start!111690 (= tp!106410 b_and!48791)))

(declare-fun b!1322559 () Bool)

(declare-fun res!877930 () Bool)

(declare-fun e!754146 () Bool)

(assert (=> b!1322559 (=> (not res!877930) (not e!754146))))

(declare-datatypes ((array!89141 0))(
  ( (array!89142 (arr!43040 (Array (_ BitVec 32) (_ BitVec 64))) (size!43591 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89141)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1322559 (= res!877930 (not (= (select (arr!43040 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1322560 () Bool)

(declare-fun res!877933 () Bool)

(assert (=> b!1322560 (=> (not res!877933) (not e!754146))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53277 0))(
  ( (V!53278 (val!18140 Int)) )
))
(declare-fun zeroValue!1279 () V!53277)

(declare-datatypes ((ValueCell!17167 0))(
  ( (ValueCellFull!17167 (v!20768 V!53277)) (EmptyCell!17167) )
))
(declare-datatypes ((array!89143 0))(
  ( (array!89144 (arr!43041 (Array (_ BitVec 32) ValueCell!17167)) (size!43592 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89143)

(declare-fun minValue!1279 () V!53277)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23536 0))(
  ( (tuple2!23537 (_1!11778 (_ BitVec 64)) (_2!11778 V!53277)) )
))
(declare-datatypes ((List!30710 0))(
  ( (Nil!30707) (Cons!30706 (h!31915 tuple2!23536) (t!44577 List!30710)) )
))
(declare-datatypes ((ListLongMap!21205 0))(
  ( (ListLongMap!21206 (toList!10618 List!30710)) )
))
(declare-fun contains!8709 (ListLongMap!21205 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5558 (array!89141 array!89143 (_ BitVec 32) (_ BitVec 32) V!53277 V!53277 (_ BitVec 32) Int) ListLongMap!21205)

(assert (=> b!1322560 (= res!877933 (contains!8709 (getCurrentListMap!5558 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1322561 () Bool)

(declare-fun res!877932 () Bool)

(assert (=> b!1322561 (=> (not res!877932) (not e!754146))))

(assert (=> b!1322561 (= res!877932 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43591 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322562 () Bool)

(declare-fun res!877936 () Bool)

(assert (=> b!1322562 (=> (not res!877936) (not e!754146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89141 (_ BitVec 32)) Bool)

(assert (=> b!1322562 (= res!877936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322563 () Bool)

(declare-fun res!877935 () Bool)

(assert (=> b!1322563 (=> (not res!877935) (not e!754146))))

(assert (=> b!1322563 (= res!877935 (and (= (size!43592 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43591 _keys!1609) (size!43592 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1322564 () Bool)

(declare-fun res!877929 () Bool)

(assert (=> b!1322564 (=> (not res!877929) (not e!754146))))

(declare-datatypes ((List!30711 0))(
  ( (Nil!30708) (Cons!30707 (h!31916 (_ BitVec 64)) (t!44578 List!30711)) )
))
(declare-fun arrayNoDuplicates!0 (array!89141 (_ BitVec 32) List!30711) Bool)

(assert (=> b!1322564 (= res!877929 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30708))))

(declare-fun res!877934 () Bool)

(assert (=> start!111690 (=> (not res!877934) (not e!754146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111690 (= res!877934 (validMask!0 mask!2019))))

(assert (=> start!111690 e!754146))

(declare-fun array_inv!32449 (array!89141) Bool)

(assert (=> start!111690 (array_inv!32449 _keys!1609)))

(assert (=> start!111690 true))

(declare-fun tp_is_empty!36131 () Bool)

(assert (=> start!111690 tp_is_empty!36131))

(declare-fun e!754144 () Bool)

(declare-fun array_inv!32450 (array!89143) Bool)

(assert (=> start!111690 (and (array_inv!32450 _values!1337) e!754144)))

(assert (=> start!111690 tp!106410))

(declare-fun b!1322565 () Bool)

(declare-fun e!754145 () Bool)

(assert (=> b!1322565 (= e!754145 tp_is_empty!36131)))

(declare-fun b!1322566 () Bool)

(declare-fun e!754143 () Bool)

(assert (=> b!1322566 (= e!754143 tp_is_empty!36131)))

(declare-fun b!1322567 () Bool)

(declare-fun mapRes!55844 () Bool)

(assert (=> b!1322567 (= e!754144 (and e!754143 mapRes!55844))))

(declare-fun condMapEmpty!55844 () Bool)

(declare-fun mapDefault!55844 () ValueCell!17167)

