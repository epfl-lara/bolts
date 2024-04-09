; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84166 () Bool)

(assert start!84166)

(declare-fun b!983600 () Bool)

(declare-fun e!554555 () Bool)

(declare-fun tp_is_empty!22941 () Bool)

(assert (=> b!983600 (= e!554555 tp_is_empty!22941)))

(declare-fun b!983601 () Bool)

(declare-fun res!658275 () Bool)

(declare-fun e!554556 () Bool)

(assert (=> b!983601 (=> (not res!658275) (not e!554556))))

(declare-datatypes ((array!61853 0))(
  ( (array!61854 (arr!29780 (Array (_ BitVec 32) (_ BitVec 64))) (size!30260 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61853)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983601 (= res!658275 (validKeyInArray!0 (select (arr!29780 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36440 () Bool)

(declare-fun mapRes!36440 () Bool)

(assert (=> mapIsEmpty!36440 mapRes!36440))

(declare-fun b!983602 () Bool)

(declare-fun res!658273 () Bool)

(assert (=> b!983602 (=> (not res!658273) (not e!554556))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35571 0))(
  ( (V!35572 (val!11521 Int)) )
))
(declare-datatypes ((ValueCell!10989 0))(
  ( (ValueCellFull!10989 (v!14083 V!35571)) (EmptyCell!10989) )
))
(declare-datatypes ((array!61855 0))(
  ( (array!61856 (arr!29781 (Array (_ BitVec 32) ValueCell!10989)) (size!30261 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61855)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983602 (= res!658273 (and (= (size!30261 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30260 _keys!1544) (size!30261 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983599 () Bool)

(declare-fun e!554557 () Bool)

(assert (=> b!983599 (= e!554557 tp_is_empty!22941)))

(declare-fun res!658271 () Bool)

(assert (=> start!84166 (=> (not res!658271) (not e!554556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84166 (= res!658271 (validMask!0 mask!1948))))

(assert (=> start!84166 e!554556))

(assert (=> start!84166 true))

(declare-fun e!554554 () Bool)

(declare-fun array_inv!22893 (array!61855) Bool)

(assert (=> start!84166 (and (array_inv!22893 _values!1278) e!554554)))

(declare-fun array_inv!22894 (array!61853) Bool)

(assert (=> start!84166 (array_inv!22894 _keys!1544)))

(declare-fun b!983603 () Bool)

(assert (=> b!983603 (= e!554556 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun b!983604 () Bool)

(declare-fun res!658272 () Bool)

(assert (=> b!983604 (=> (not res!658272) (not e!554556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61853 (_ BitVec 32)) Bool)

(assert (=> b!983604 (= res!658272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983605 () Bool)

(declare-fun res!658274 () Bool)

(assert (=> b!983605 (=> (not res!658274) (not e!554556))))

(assert (=> b!983605 (= res!658274 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30260 _keys!1544))))))

(declare-fun b!983606 () Bool)

(assert (=> b!983606 (= e!554554 (and e!554555 mapRes!36440))))

(declare-fun condMapEmpty!36440 () Bool)

(declare-fun mapDefault!36440 () ValueCell!10989)

(assert (=> b!983606 (= condMapEmpty!36440 (= (arr!29781 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10989)) mapDefault!36440)))))

(declare-fun b!983607 () Bool)

(declare-fun res!658270 () Bool)

(assert (=> b!983607 (=> (not res!658270) (not e!554556))))

(declare-datatypes ((List!20752 0))(
  ( (Nil!20749) (Cons!20748 (h!21910 (_ BitVec 64)) (t!29551 List!20752)) )
))
(declare-fun arrayNoDuplicates!0 (array!61853 (_ BitVec 32) List!20752) Bool)

(assert (=> b!983607 (= res!658270 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20749))))

(declare-fun mapNonEmpty!36440 () Bool)

(declare-fun tp!69125 () Bool)

(assert (=> mapNonEmpty!36440 (= mapRes!36440 (and tp!69125 e!554557))))

(declare-fun mapKey!36440 () (_ BitVec 32))

(declare-fun mapValue!36440 () ValueCell!10989)

(declare-fun mapRest!36440 () (Array (_ BitVec 32) ValueCell!10989))

(assert (=> mapNonEmpty!36440 (= (arr!29781 _values!1278) (store mapRest!36440 mapKey!36440 mapValue!36440))))

(assert (= (and start!84166 res!658271) b!983602))

(assert (= (and b!983602 res!658273) b!983604))

(assert (= (and b!983604 res!658272) b!983607))

(assert (= (and b!983607 res!658270) b!983605))

(assert (= (and b!983605 res!658274) b!983601))

(assert (= (and b!983601 res!658275) b!983603))

(assert (= (and b!983606 condMapEmpty!36440) mapIsEmpty!36440))

(assert (= (and b!983606 (not condMapEmpty!36440)) mapNonEmpty!36440))

(get-info :version)

(assert (= (and mapNonEmpty!36440 ((_ is ValueCellFull!10989) mapValue!36440)) b!983599))

(assert (= (and b!983606 ((_ is ValueCellFull!10989) mapDefault!36440)) b!983600))

(assert (= start!84166 b!983606))

(declare-fun m!910869 () Bool)

(assert (=> b!983604 m!910869))

(declare-fun m!910871 () Bool)

(assert (=> b!983607 m!910871))

(declare-fun m!910873 () Bool)

(assert (=> b!983601 m!910873))

(assert (=> b!983601 m!910873))

(declare-fun m!910875 () Bool)

(assert (=> b!983601 m!910875))

(declare-fun m!910877 () Bool)

(assert (=> start!84166 m!910877))

(declare-fun m!910879 () Bool)

(assert (=> start!84166 m!910879))

(declare-fun m!910881 () Bool)

(assert (=> start!84166 m!910881))

(declare-fun m!910883 () Bool)

(assert (=> mapNonEmpty!36440 m!910883))

(check-sat (not b!983601) (not start!84166) (not b!983607) (not mapNonEmpty!36440) (not b!983604) tp_is_empty!22941)
(check-sat)
