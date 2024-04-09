; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84124 () Bool)

(assert start!84124)

(declare-fun b!983206 () Bool)

(declare-fun e!554240 () Bool)

(declare-fun tp_is_empty!22899 () Bool)

(assert (=> b!983206 (= e!554240 tp_is_empty!22899)))

(declare-fun res!658067 () Bool)

(declare-fun e!554241 () Bool)

(assert (=> start!84124 (=> (not res!658067) (not e!554241))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84124 (= res!658067 (validMask!0 mask!1948))))

(assert (=> start!84124 e!554241))

(assert (=> start!84124 true))

(declare-datatypes ((V!35515 0))(
  ( (V!35516 (val!11500 Int)) )
))
(declare-datatypes ((ValueCell!10968 0))(
  ( (ValueCellFull!10968 (v!14062 V!35515)) (EmptyCell!10968) )
))
(declare-datatypes ((array!61779 0))(
  ( (array!61780 (arr!29743 (Array (_ BitVec 32) ValueCell!10968)) (size!30223 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61779)

(declare-fun e!554239 () Bool)

(declare-fun array_inv!22871 (array!61779) Bool)

(assert (=> start!84124 (and (array_inv!22871 _values!1278) e!554239)))

(declare-datatypes ((array!61781 0))(
  ( (array!61782 (arr!29744 (Array (_ BitVec 32) (_ BitVec 64))) (size!30224 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61781)

(declare-fun array_inv!22872 (array!61781) Bool)

(assert (=> start!84124 (array_inv!22872 _keys!1544)))

(declare-fun b!983207 () Bool)

(declare-fun mapRes!36377 () Bool)

(assert (=> b!983207 (= e!554239 (and e!554240 mapRes!36377))))

(declare-fun condMapEmpty!36377 () Bool)

(declare-fun mapDefault!36377 () ValueCell!10968)

(assert (=> b!983207 (= condMapEmpty!36377 (= (arr!29743 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10968)) mapDefault!36377)))))

(declare-fun b!983208 () Bool)

(declare-fun e!554243 () Bool)

(assert (=> b!983208 (= e!554243 tp_is_empty!22899)))

(declare-fun b!983209 () Bool)

(assert (=> b!983209 (= e!554241 false)))

(declare-fun lt!436450 () Bool)

(declare-datatypes ((List!20740 0))(
  ( (Nil!20737) (Cons!20736 (h!21898 (_ BitVec 64)) (t!29539 List!20740)) )
))
(declare-fun arrayNoDuplicates!0 (array!61781 (_ BitVec 32) List!20740) Bool)

(assert (=> b!983209 (= lt!436450 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20737))))

(declare-fun b!983210 () Bool)

(declare-fun res!658068 () Bool)

(assert (=> b!983210 (=> (not res!658068) (not e!554241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61781 (_ BitVec 32)) Bool)

(assert (=> b!983210 (= res!658068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36377 () Bool)

(assert (=> mapIsEmpty!36377 mapRes!36377))

(declare-fun mapNonEmpty!36377 () Bool)

(declare-fun tp!69062 () Bool)

(assert (=> mapNonEmpty!36377 (= mapRes!36377 (and tp!69062 e!554243))))

(declare-fun mapRest!36377 () (Array (_ BitVec 32) ValueCell!10968))

(declare-fun mapKey!36377 () (_ BitVec 32))

(declare-fun mapValue!36377 () ValueCell!10968)

(assert (=> mapNonEmpty!36377 (= (arr!29743 _values!1278) (store mapRest!36377 mapKey!36377 mapValue!36377))))

(declare-fun b!983211 () Bool)

(declare-fun res!658066 () Bool)

(assert (=> b!983211 (=> (not res!658066) (not e!554241))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983211 (= res!658066 (and (= (size!30223 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30224 _keys!1544) (size!30223 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(assert (= (and start!84124 res!658067) b!983211))

(assert (= (and b!983211 res!658066) b!983210))

(assert (= (and b!983210 res!658068) b!983209))

(assert (= (and b!983207 condMapEmpty!36377) mapIsEmpty!36377))

(assert (= (and b!983207 (not condMapEmpty!36377)) mapNonEmpty!36377))

(get-info :version)

(assert (= (and mapNonEmpty!36377 ((_ is ValueCellFull!10968) mapValue!36377)) b!983208))

(assert (= (and b!983207 ((_ is ValueCellFull!10968) mapDefault!36377)) b!983206))

(assert (= start!84124 b!983207))

(declare-fun m!910613 () Bool)

(assert (=> start!84124 m!910613))

(declare-fun m!910615 () Bool)

(assert (=> start!84124 m!910615))

(declare-fun m!910617 () Bool)

(assert (=> start!84124 m!910617))

(declare-fun m!910619 () Bool)

(assert (=> b!983209 m!910619))

(declare-fun m!910621 () Bool)

(assert (=> b!983210 m!910621))

(declare-fun m!910623 () Bool)

(assert (=> mapNonEmpty!36377 m!910623))

(check-sat (not b!983210) tp_is_empty!22899 (not b!983209) (not start!84124) (not mapNonEmpty!36377))
(check-sat)
