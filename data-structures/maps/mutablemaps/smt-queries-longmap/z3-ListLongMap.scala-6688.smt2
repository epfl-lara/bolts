; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84130 () Bool)

(assert start!84130)

(declare-fun b!983260 () Bool)

(declare-fun res!658093 () Bool)

(declare-fun e!554285 () Bool)

(assert (=> b!983260 (=> (not res!658093) (not e!554285))))

(declare-datatypes ((array!61787 0))(
  ( (array!61788 (arr!29747 (Array (_ BitVec 32) (_ BitVec 64))) (size!30227 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61787)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61787 (_ BitVec 32)) Bool)

(assert (=> b!983260 (= res!658093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983261 () Bool)

(declare-fun e!554284 () Bool)

(declare-fun tp_is_empty!22905 () Bool)

(assert (=> b!983261 (= e!554284 tp_is_empty!22905)))

(declare-fun mapIsEmpty!36386 () Bool)

(declare-fun mapRes!36386 () Bool)

(assert (=> mapIsEmpty!36386 mapRes!36386))

(declare-fun b!983262 () Bool)

(declare-fun e!554286 () Bool)

(assert (=> b!983262 (= e!554286 tp_is_empty!22905)))

(declare-fun b!983263 () Bool)

(declare-fun res!658095 () Bool)

(assert (=> b!983263 (=> (not res!658095) (not e!554285))))

(declare-datatypes ((V!35523 0))(
  ( (V!35524 (val!11503 Int)) )
))
(declare-datatypes ((ValueCell!10971 0))(
  ( (ValueCellFull!10971 (v!14065 V!35523)) (EmptyCell!10971) )
))
(declare-datatypes ((array!61789 0))(
  ( (array!61790 (arr!29748 (Array (_ BitVec 32) ValueCell!10971)) (size!30228 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61789)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983263 (= res!658095 (and (= (size!30228 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30227 _keys!1544) (size!30228 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983264 () Bool)

(assert (=> b!983264 (= e!554285 false)))

(declare-fun lt!436459 () Bool)

(declare-datatypes ((List!20741 0))(
  ( (Nil!20738) (Cons!20737 (h!21899 (_ BitVec 64)) (t!29540 List!20741)) )
))
(declare-fun arrayNoDuplicates!0 (array!61787 (_ BitVec 32) List!20741) Bool)

(assert (=> b!983264 (= lt!436459 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20738))))

(declare-fun b!983265 () Bool)

(declare-fun e!554288 () Bool)

(assert (=> b!983265 (= e!554288 (and e!554286 mapRes!36386))))

(declare-fun condMapEmpty!36386 () Bool)

(declare-fun mapDefault!36386 () ValueCell!10971)

(assert (=> b!983265 (= condMapEmpty!36386 (= (arr!29748 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10971)) mapDefault!36386)))))

(declare-fun mapNonEmpty!36386 () Bool)

(declare-fun tp!69071 () Bool)

(assert (=> mapNonEmpty!36386 (= mapRes!36386 (and tp!69071 e!554284))))

(declare-fun mapKey!36386 () (_ BitVec 32))

(declare-fun mapValue!36386 () ValueCell!10971)

(declare-fun mapRest!36386 () (Array (_ BitVec 32) ValueCell!10971))

(assert (=> mapNonEmpty!36386 (= (arr!29748 _values!1278) (store mapRest!36386 mapKey!36386 mapValue!36386))))

(declare-fun res!658094 () Bool)

(assert (=> start!84130 (=> (not res!658094) (not e!554285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84130 (= res!658094 (validMask!0 mask!1948))))

(assert (=> start!84130 e!554285))

(assert (=> start!84130 true))

(declare-fun array_inv!22873 (array!61789) Bool)

(assert (=> start!84130 (and (array_inv!22873 _values!1278) e!554288)))

(declare-fun array_inv!22874 (array!61787) Bool)

(assert (=> start!84130 (array_inv!22874 _keys!1544)))

(assert (= (and start!84130 res!658094) b!983263))

(assert (= (and b!983263 res!658095) b!983260))

(assert (= (and b!983260 res!658093) b!983264))

(assert (= (and b!983265 condMapEmpty!36386) mapIsEmpty!36386))

(assert (= (and b!983265 (not condMapEmpty!36386)) mapNonEmpty!36386))

(get-info :version)

(assert (= (and mapNonEmpty!36386 ((_ is ValueCellFull!10971) mapValue!36386)) b!983261))

(assert (= (and b!983265 ((_ is ValueCellFull!10971) mapDefault!36386)) b!983262))

(assert (= start!84130 b!983265))

(declare-fun m!910649 () Bool)

(assert (=> b!983260 m!910649))

(declare-fun m!910651 () Bool)

(assert (=> b!983264 m!910651))

(declare-fun m!910653 () Bool)

(assert (=> mapNonEmpty!36386 m!910653))

(declare-fun m!910655 () Bool)

(assert (=> start!84130 m!910655))

(declare-fun m!910657 () Bool)

(assert (=> start!84130 m!910657))

(declare-fun m!910659 () Bool)

(assert (=> start!84130 m!910659))

(check-sat tp_is_empty!22905 (not mapNonEmpty!36386) (not b!983260) (not start!84130) (not b!983264))
(check-sat)
