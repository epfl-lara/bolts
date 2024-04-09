; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84118 () Bool)

(assert start!84118)

(declare-fun b!983152 () Bool)

(declare-fun e!554195 () Bool)

(declare-fun tp_is_empty!22893 () Bool)

(assert (=> b!983152 (= e!554195 tp_is_empty!22893)))

(declare-fun mapIsEmpty!36368 () Bool)

(declare-fun mapRes!36368 () Bool)

(assert (=> mapIsEmpty!36368 mapRes!36368))

(declare-fun b!983153 () Bool)

(declare-fun res!658040 () Bool)

(declare-fun e!554197 () Bool)

(assert (=> b!983153 (=> (not res!658040) (not e!554197))))

(declare-datatypes ((array!61769 0))(
  ( (array!61770 (arr!29738 (Array (_ BitVec 32) (_ BitVec 64))) (size!30218 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61769)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61769 (_ BitVec 32)) Bool)

(assert (=> b!983153 (= res!658040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36368 () Bool)

(declare-fun tp!69053 () Bool)

(declare-fun e!554196 () Bool)

(assert (=> mapNonEmpty!36368 (= mapRes!36368 (and tp!69053 e!554196))))

(declare-datatypes ((V!35507 0))(
  ( (V!35508 (val!11497 Int)) )
))
(declare-datatypes ((ValueCell!10965 0))(
  ( (ValueCellFull!10965 (v!14059 V!35507)) (EmptyCell!10965) )
))
(declare-datatypes ((array!61771 0))(
  ( (array!61772 (arr!29739 (Array (_ BitVec 32) ValueCell!10965)) (size!30219 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61771)

(declare-fun mapRest!36368 () (Array (_ BitVec 32) ValueCell!10965))

(declare-fun mapKey!36368 () (_ BitVec 32))

(declare-fun mapValue!36368 () ValueCell!10965)

(assert (=> mapNonEmpty!36368 (= (arr!29739 _values!1278) (store mapRest!36368 mapKey!36368 mapValue!36368))))

(declare-fun b!983154 () Bool)

(assert (=> b!983154 (= e!554197 false)))

(declare-fun lt!436441 () Bool)

(declare-datatypes ((List!20739 0))(
  ( (Nil!20736) (Cons!20735 (h!21897 (_ BitVec 64)) (t!29538 List!20739)) )
))
(declare-fun arrayNoDuplicates!0 (array!61769 (_ BitVec 32) List!20739) Bool)

(assert (=> b!983154 (= lt!436441 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20736))))

(declare-fun b!983155 () Bool)

(declare-fun e!554194 () Bool)

(assert (=> b!983155 (= e!554194 (and e!554195 mapRes!36368))))

(declare-fun condMapEmpty!36368 () Bool)

(declare-fun mapDefault!36368 () ValueCell!10965)

(assert (=> b!983155 (= condMapEmpty!36368 (= (arr!29739 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10965)) mapDefault!36368)))))

(declare-fun res!658039 () Bool)

(assert (=> start!84118 (=> (not res!658039) (not e!554197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84118 (= res!658039 (validMask!0 mask!1948))))

(assert (=> start!84118 e!554197))

(assert (=> start!84118 true))

(declare-fun array_inv!22867 (array!61771) Bool)

(assert (=> start!84118 (and (array_inv!22867 _values!1278) e!554194)))

(declare-fun array_inv!22868 (array!61769) Bool)

(assert (=> start!84118 (array_inv!22868 _keys!1544)))

(declare-fun b!983156 () Bool)

(declare-fun res!658041 () Bool)

(assert (=> b!983156 (=> (not res!658041) (not e!554197))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983156 (= res!658041 (and (= (size!30219 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30218 _keys!1544) (size!30219 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983157 () Bool)

(assert (=> b!983157 (= e!554196 tp_is_empty!22893)))

(assert (= (and start!84118 res!658039) b!983156))

(assert (= (and b!983156 res!658041) b!983153))

(assert (= (and b!983153 res!658040) b!983154))

(assert (= (and b!983155 condMapEmpty!36368) mapIsEmpty!36368))

(assert (= (and b!983155 (not condMapEmpty!36368)) mapNonEmpty!36368))

(get-info :version)

(assert (= (and mapNonEmpty!36368 ((_ is ValueCellFull!10965) mapValue!36368)) b!983157))

(assert (= (and b!983155 ((_ is ValueCellFull!10965) mapDefault!36368)) b!983152))

(assert (= start!84118 b!983155))

(declare-fun m!910577 () Bool)

(assert (=> b!983153 m!910577))

(declare-fun m!910579 () Bool)

(assert (=> mapNonEmpty!36368 m!910579))

(declare-fun m!910581 () Bool)

(assert (=> b!983154 m!910581))

(declare-fun m!910583 () Bool)

(assert (=> start!84118 m!910583))

(declare-fun m!910585 () Bool)

(assert (=> start!84118 m!910585))

(declare-fun m!910587 () Bool)

(assert (=> start!84118 m!910587))

(check-sat (not mapNonEmpty!36368) (not b!983153) (not start!84118) tp_is_empty!22893 (not b!983154))
(check-sat)
