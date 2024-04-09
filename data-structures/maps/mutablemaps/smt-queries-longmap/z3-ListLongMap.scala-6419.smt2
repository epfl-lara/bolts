; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82340 () Bool)

(assert start!82340)

(declare-fun b!959497 () Bool)

(declare-fun e!540907 () Bool)

(declare-fun tp_is_empty!21291 () Bool)

(assert (=> b!959497 (= e!540907 tp_is_empty!21291)))

(declare-fun mapNonEmpty!33916 () Bool)

(declare-fun mapRes!33916 () Bool)

(declare-fun tp!64711 () Bool)

(assert (=> mapNonEmpty!33916 (= mapRes!33916 (and tp!64711 e!540907))))

(declare-datatypes ((V!33371 0))(
  ( (V!33372 (val!10696 Int)) )
))
(declare-datatypes ((ValueCell!10164 0))(
  ( (ValueCellFull!10164 (v!13253 V!33371)) (EmptyCell!10164) )
))
(declare-fun mapValue!33916 () ValueCell!10164)

(declare-fun mapKey!33916 () (_ BitVec 32))

(declare-fun mapRest!33916 () (Array (_ BitVec 32) ValueCell!10164))

(declare-datatypes ((array!58689 0))(
  ( (array!58690 (arr!28214 (Array (_ BitVec 32) ValueCell!10164)) (size!28694 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58689)

(assert (=> mapNonEmpty!33916 (= (arr!28214 _values!1386) (store mapRest!33916 mapKey!33916 mapValue!33916))))

(declare-fun res!642389 () Bool)

(declare-fun e!540904 () Bool)

(assert (=> start!82340 (=> (not res!642389) (not e!540904))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82340 (= res!642389 (validMask!0 mask!2088))))

(assert (=> start!82340 e!540904))

(assert (=> start!82340 true))

(declare-datatypes ((array!58691 0))(
  ( (array!58692 (arr!28215 (Array (_ BitVec 32) (_ BitVec 64))) (size!28695 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58691)

(declare-fun array_inv!21817 (array!58691) Bool)

(assert (=> start!82340 (array_inv!21817 _keys!1668)))

(declare-fun e!540906 () Bool)

(declare-fun array_inv!21818 (array!58689) Bool)

(assert (=> start!82340 (and (array_inv!21818 _values!1386) e!540906)))

(declare-fun b!959498 () Bool)

(declare-fun res!642387 () Bool)

(assert (=> b!959498 (=> (not res!642387) (not e!540904))))

(declare-datatypes ((List!19746 0))(
  ( (Nil!19743) (Cons!19742 (h!20904 (_ BitVec 64)) (t!28117 List!19746)) )
))
(declare-fun arrayNoDuplicates!0 (array!58691 (_ BitVec 32) List!19746) Bool)

(assert (=> b!959498 (= res!642387 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19743))))

(declare-fun b!959499 () Bool)

(declare-fun e!540908 () Bool)

(assert (=> b!959499 (= e!540906 (and e!540908 mapRes!33916))))

(declare-fun condMapEmpty!33916 () Bool)

(declare-fun mapDefault!33916 () ValueCell!10164)

(assert (=> b!959499 (= condMapEmpty!33916 (= (arr!28214 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10164)) mapDefault!33916)))))

(declare-fun b!959500 () Bool)

(assert (=> b!959500 (= e!540908 tp_is_empty!21291)))

(declare-fun b!959501 () Bool)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959501 (= e!540904 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28695 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28695 _keys!1668)) (bvslt i!793 #b00000000000000000000000000000000)))))

(declare-fun b!959502 () Bool)

(declare-fun res!642390 () Bool)

(assert (=> b!959502 (=> (not res!642390) (not e!540904))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!959502 (= res!642390 (and (= (size!28694 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28695 _keys!1668) (size!28694 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33916 () Bool)

(assert (=> mapIsEmpty!33916 mapRes!33916))

(declare-fun b!959503 () Bool)

(declare-fun res!642388 () Bool)

(assert (=> b!959503 (=> (not res!642388) (not e!540904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58691 (_ BitVec 32)) Bool)

(assert (=> b!959503 (= res!642388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82340 res!642389) b!959502))

(assert (= (and b!959502 res!642390) b!959503))

(assert (= (and b!959503 res!642388) b!959498))

(assert (= (and b!959498 res!642387) b!959501))

(assert (= (and b!959499 condMapEmpty!33916) mapIsEmpty!33916))

(assert (= (and b!959499 (not condMapEmpty!33916)) mapNonEmpty!33916))

(get-info :version)

(assert (= (and mapNonEmpty!33916 ((_ is ValueCellFull!10164) mapValue!33916)) b!959497))

(assert (= (and b!959499 ((_ is ValueCellFull!10164) mapDefault!33916)) b!959500))

(assert (= start!82340 b!959499))

(declare-fun m!890067 () Bool)

(assert (=> mapNonEmpty!33916 m!890067))

(declare-fun m!890069 () Bool)

(assert (=> start!82340 m!890069))

(declare-fun m!890071 () Bool)

(assert (=> start!82340 m!890071))

(declare-fun m!890073 () Bool)

(assert (=> start!82340 m!890073))

(declare-fun m!890075 () Bool)

(assert (=> b!959498 m!890075))

(declare-fun m!890077 () Bool)

(assert (=> b!959503 m!890077))

(check-sat (not b!959498) (not mapNonEmpty!33916) tp_is_empty!21291 (not start!82340) (not b!959503))
(check-sat)
