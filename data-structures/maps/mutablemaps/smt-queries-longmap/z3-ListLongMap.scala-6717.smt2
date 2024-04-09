; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84304 () Bool)

(assert start!84304)

(declare-fun b!985807 () Bool)

(declare-fun res!659750 () Bool)

(declare-fun e!555753 () Bool)

(assert (=> b!985807 (=> (not res!659750) (not e!555753))))

(declare-datatypes ((array!62119 0))(
  ( (array!62120 (arr!29913 (Array (_ BitVec 32) (_ BitVec 64))) (size!30393 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62119)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62119 (_ BitVec 32)) Bool)

(assert (=> b!985807 (= res!659750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985808 () Bool)

(declare-fun e!555754 () Bool)

(declare-fun tp_is_empty!23079 () Bool)

(assert (=> b!985808 (= e!555754 tp_is_empty!23079)))

(declare-fun mapIsEmpty!36647 () Bool)

(declare-fun mapRes!36647 () Bool)

(assert (=> mapIsEmpty!36647 mapRes!36647))

(declare-fun mapNonEmpty!36647 () Bool)

(declare-fun tp!69503 () Bool)

(assert (=> mapNonEmpty!36647 (= mapRes!36647 (and tp!69503 e!555754))))

(declare-datatypes ((V!35755 0))(
  ( (V!35756 (val!11590 Int)) )
))
(declare-datatypes ((ValueCell!11058 0))(
  ( (ValueCellFull!11058 (v!14152 V!35755)) (EmptyCell!11058) )
))
(declare-datatypes ((array!62121 0))(
  ( (array!62122 (arr!29914 (Array (_ BitVec 32) ValueCell!11058)) (size!30394 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62121)

(declare-fun mapKey!36647 () (_ BitVec 32))

(declare-fun mapValue!36647 () ValueCell!11058)

(declare-fun mapRest!36647 () (Array (_ BitVec 32) ValueCell!11058))

(assert (=> mapNonEmpty!36647 (= (arr!29914 _values!1278) (store mapRest!36647 mapKey!36647 mapValue!36647))))

(declare-fun b!985809 () Bool)

(declare-fun e!555755 () Bool)

(declare-fun e!555751 () Bool)

(assert (=> b!985809 (= e!555755 (and e!555751 mapRes!36647))))

(declare-fun condMapEmpty!36647 () Bool)

(declare-fun mapDefault!36647 () ValueCell!11058)

(assert (=> b!985809 (= condMapEmpty!36647 (= (arr!29914 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11058)) mapDefault!36647)))))

(declare-fun b!985810 () Bool)

(declare-fun res!659751 () Bool)

(assert (=> b!985810 (=> (not res!659751) (not e!555753))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985810 (= res!659751 (and (= (size!30394 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30393 _keys!1544) (size!30394 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!659749 () Bool)

(assert (=> start!84304 (=> (not res!659749) (not e!555753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84304 (= res!659749 (validMask!0 mask!1948))))

(assert (=> start!84304 e!555753))

(assert (=> start!84304 true))

(declare-fun array_inv!22987 (array!62121) Bool)

(assert (=> start!84304 (and (array_inv!22987 _values!1278) e!555755)))

(declare-fun array_inv!22988 (array!62119) Bool)

(assert (=> start!84304 (array_inv!22988 _keys!1544)))

(declare-fun b!985811 () Bool)

(assert (=> b!985811 (= e!555753 false)))

(declare-fun lt!437359 () Bool)

(declare-datatypes ((List!20841 0))(
  ( (Nil!20838) (Cons!20837 (h!21999 (_ BitVec 64)) (t!29748 List!20841)) )
))
(declare-fun arrayNoDuplicates!0 (array!62119 (_ BitVec 32) List!20841) Bool)

(assert (=> b!985811 (= lt!437359 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20838))))

(declare-fun b!985812 () Bool)

(assert (=> b!985812 (= e!555751 tp_is_empty!23079)))

(assert (= (and start!84304 res!659749) b!985810))

(assert (= (and b!985810 res!659751) b!985807))

(assert (= (and b!985807 res!659750) b!985811))

(assert (= (and b!985809 condMapEmpty!36647) mapIsEmpty!36647))

(assert (= (and b!985809 (not condMapEmpty!36647)) mapNonEmpty!36647))

(get-info :version)

(assert (= (and mapNonEmpty!36647 ((_ is ValueCellFull!11058) mapValue!36647)) b!985808))

(assert (= (and b!985809 ((_ is ValueCellFull!11058) mapDefault!36647)) b!985812))

(assert (= start!84304 b!985809))

(declare-fun m!912911 () Bool)

(assert (=> b!985807 m!912911))

(declare-fun m!912913 () Bool)

(assert (=> mapNonEmpty!36647 m!912913))

(declare-fun m!912915 () Bool)

(assert (=> start!84304 m!912915))

(declare-fun m!912917 () Bool)

(assert (=> start!84304 m!912917))

(declare-fun m!912919 () Bool)

(assert (=> start!84304 m!912919))

(declare-fun m!912921 () Bool)

(assert (=> b!985811 m!912921))

(check-sat tp_is_empty!23079 (not b!985811) (not mapNonEmpty!36647) (not start!84304) (not b!985807))
(check-sat)
