; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84292 () Bool)

(assert start!84292)

(declare-fun b!985699 () Bool)

(declare-fun e!555662 () Bool)

(assert (=> b!985699 (= e!555662 false)))

(declare-fun lt!437341 () Bool)

(declare-datatypes ((array!62097 0))(
  ( (array!62098 (arr!29902 (Array (_ BitVec 32) (_ BitVec 64))) (size!30382 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62097)

(declare-datatypes ((List!20839 0))(
  ( (Nil!20836) (Cons!20835 (h!21997 (_ BitVec 64)) (t!29746 List!20839)) )
))
(declare-fun arrayNoDuplicates!0 (array!62097 (_ BitVec 32) List!20839) Bool)

(assert (=> b!985699 (= lt!437341 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20836))))

(declare-fun b!985700 () Bool)

(declare-fun res!659696 () Bool)

(assert (=> b!985700 (=> (not res!659696) (not e!555662))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62097 (_ BitVec 32)) Bool)

(assert (=> b!985700 (= res!659696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!659695 () Bool)

(assert (=> start!84292 (=> (not res!659695) (not e!555662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84292 (= res!659695 (validMask!0 mask!1948))))

(assert (=> start!84292 e!555662))

(assert (=> start!84292 true))

(declare-datatypes ((V!35739 0))(
  ( (V!35740 (val!11584 Int)) )
))
(declare-datatypes ((ValueCell!11052 0))(
  ( (ValueCellFull!11052 (v!14146 V!35739)) (EmptyCell!11052) )
))
(declare-datatypes ((array!62099 0))(
  ( (array!62100 (arr!29903 (Array (_ BitVec 32) ValueCell!11052)) (size!30383 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62099)

(declare-fun e!555665 () Bool)

(declare-fun array_inv!22977 (array!62099) Bool)

(assert (=> start!84292 (and (array_inv!22977 _values!1278) e!555665)))

(declare-fun array_inv!22978 (array!62097) Bool)

(assert (=> start!84292 (array_inv!22978 _keys!1544)))

(declare-fun mapNonEmpty!36629 () Bool)

(declare-fun mapRes!36629 () Bool)

(declare-fun tp!69485 () Bool)

(declare-fun e!555661 () Bool)

(assert (=> mapNonEmpty!36629 (= mapRes!36629 (and tp!69485 e!555661))))

(declare-fun mapValue!36629 () ValueCell!11052)

(declare-fun mapRest!36629 () (Array (_ BitVec 32) ValueCell!11052))

(declare-fun mapKey!36629 () (_ BitVec 32))

(assert (=> mapNonEmpty!36629 (= (arr!29903 _values!1278) (store mapRest!36629 mapKey!36629 mapValue!36629))))

(declare-fun b!985701 () Bool)

(declare-fun e!555663 () Bool)

(declare-fun tp_is_empty!23067 () Bool)

(assert (=> b!985701 (= e!555663 tp_is_empty!23067)))

(declare-fun mapIsEmpty!36629 () Bool)

(assert (=> mapIsEmpty!36629 mapRes!36629))

(declare-fun b!985702 () Bool)

(declare-fun res!659697 () Bool)

(assert (=> b!985702 (=> (not res!659697) (not e!555662))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985702 (= res!659697 (and (= (size!30383 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30382 _keys!1544) (size!30383 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985703 () Bool)

(assert (=> b!985703 (= e!555665 (and e!555663 mapRes!36629))))

(declare-fun condMapEmpty!36629 () Bool)

(declare-fun mapDefault!36629 () ValueCell!11052)

(assert (=> b!985703 (= condMapEmpty!36629 (= (arr!29903 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11052)) mapDefault!36629)))))

(declare-fun b!985704 () Bool)

(assert (=> b!985704 (= e!555661 tp_is_empty!23067)))

(assert (= (and start!84292 res!659695) b!985702))

(assert (= (and b!985702 res!659697) b!985700))

(assert (= (and b!985700 res!659696) b!985699))

(assert (= (and b!985703 condMapEmpty!36629) mapIsEmpty!36629))

(assert (= (and b!985703 (not condMapEmpty!36629)) mapNonEmpty!36629))

(get-info :version)

(assert (= (and mapNonEmpty!36629 ((_ is ValueCellFull!11052) mapValue!36629)) b!985704))

(assert (= (and b!985703 ((_ is ValueCellFull!11052) mapDefault!36629)) b!985701))

(assert (= start!84292 b!985703))

(declare-fun m!912839 () Bool)

(assert (=> b!985699 m!912839))

(declare-fun m!912841 () Bool)

(assert (=> b!985700 m!912841))

(declare-fun m!912843 () Bool)

(assert (=> start!84292 m!912843))

(declare-fun m!912845 () Bool)

(assert (=> start!84292 m!912845))

(declare-fun m!912847 () Bool)

(assert (=> start!84292 m!912847))

(declare-fun m!912849 () Bool)

(assert (=> mapNonEmpty!36629 m!912849))

(check-sat (not mapNonEmpty!36629) tp_is_empty!23067 (not b!985700) (not b!985699) (not start!84292))
(check-sat)
