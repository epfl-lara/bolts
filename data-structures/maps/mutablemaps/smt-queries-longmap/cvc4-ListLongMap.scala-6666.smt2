; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84000 () Bool)

(assert start!84000)

(declare-fun b!981133 () Bool)

(declare-fun e!553148 () Bool)

(declare-fun tp_is_empty!22775 () Bool)

(assert (=> b!981133 (= e!553148 tp_is_empty!22775)))

(declare-fun b!981134 () Bool)

(declare-fun e!553149 () Bool)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981134 (= e!553149 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!36191 () Bool)

(declare-fun mapRes!36191 () Bool)

(declare-fun tp!68705 () Bool)

(assert (=> mapNonEmpty!36191 (= mapRes!36191 (and tp!68705 e!553148))))

(declare-datatypes ((V!35349 0))(
  ( (V!35350 (val!11438 Int)) )
))
(declare-datatypes ((ValueCell!10906 0))(
  ( (ValueCellFull!10906 (v!14000 V!35349)) (EmptyCell!10906) )
))
(declare-datatypes ((array!61545 0))(
  ( (array!61546 (arr!29626 (Array (_ BitVec 32) ValueCell!10906)) (size!30106 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61545)

(declare-fun mapRest!36191 () (Array (_ BitVec 32) ValueCell!10906))

(declare-fun mapKey!36191 () (_ BitVec 32))

(declare-fun mapValue!36191 () ValueCell!10906)

(assert (=> mapNonEmpty!36191 (= (arr!29626 _values!1278) (store mapRest!36191 mapKey!36191 mapValue!36191))))

(declare-fun b!981135 () Bool)

(declare-fun res!656659 () Bool)

(assert (=> b!981135 (=> (not res!656659) (not e!553149))))

(declare-datatypes ((array!61547 0))(
  ( (array!61548 (arr!29627 (Array (_ BitVec 32) (_ BitVec 64))) (size!30107 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61547)

(assert (=> b!981135 (= res!656659 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30107 _keys!1544))))))

(declare-fun b!981136 () Bool)

(declare-fun e!553151 () Bool)

(assert (=> b!981136 (= e!553151 tp_is_empty!22775)))

(declare-fun b!981137 () Bool)

(declare-fun res!656663 () Bool)

(assert (=> b!981137 (=> (not res!656663) (not e!553149))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61547 (_ BitVec 32)) Bool)

(assert (=> b!981137 (= res!656663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981138 () Bool)

(declare-fun res!656660 () Bool)

(assert (=> b!981138 (=> (not res!656660) (not e!553149))))

(assert (=> b!981138 (= res!656660 (and (= (size!30106 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30107 _keys!1544) (size!30106 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!656662 () Bool)

(assert (=> start!84000 (=> (not res!656662) (not e!553149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84000 (= res!656662 (validMask!0 mask!1948))))

(assert (=> start!84000 e!553149))

(assert (=> start!84000 true))

(declare-fun e!553147 () Bool)

(declare-fun array_inv!22787 (array!61545) Bool)

(assert (=> start!84000 (and (array_inv!22787 _values!1278) e!553147)))

(declare-fun array_inv!22788 (array!61547) Bool)

(assert (=> start!84000 (array_inv!22788 _keys!1544)))

(declare-fun mapIsEmpty!36191 () Bool)

(assert (=> mapIsEmpty!36191 mapRes!36191))

(declare-fun b!981139 () Bool)

(assert (=> b!981139 (= e!553147 (and e!553151 mapRes!36191))))

(declare-fun condMapEmpty!36191 () Bool)

(declare-fun mapDefault!36191 () ValueCell!10906)

