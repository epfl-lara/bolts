; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107350 () Bool)

(assert start!107350)

(declare-fun b!1271751 () Bool)

(declare-fun e!725333 () Bool)

(declare-fun tp_is_empty!33003 () Bool)

(assert (=> b!1271751 (= e!725333 tp_is_empty!33003)))

(declare-fun res!846140 () Bool)

(declare-fun e!725332 () Bool)

(assert (=> start!107350 (=> (not res!846140) (not e!725332))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107350 (= res!846140 (validMask!0 mask!1730))))

(assert (=> start!107350 e!725332))

(declare-datatypes ((V!49197 0))(
  ( (V!49198 (val!16576 Int)) )
))
(declare-datatypes ((ValueCell!15648 0))(
  ( (ValueCellFull!15648 (v!19211 V!49197)) (EmptyCell!15648) )
))
(declare-datatypes ((array!83199 0))(
  ( (array!83200 (arr!40132 (Array (_ BitVec 32) ValueCell!15648)) (size!40669 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83199)

(declare-fun e!725330 () Bool)

(declare-fun array_inv!30463 (array!83199) Bool)

(assert (=> start!107350 (and (array_inv!30463 _values!1134) e!725330)))

(assert (=> start!107350 true))

(declare-datatypes ((array!83201 0))(
  ( (array!83202 (arr!40133 (Array (_ BitVec 32) (_ BitVec 64))) (size!40670 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83201)

(declare-fun array_inv!30464 (array!83201) Bool)

(assert (=> start!107350 (array_inv!30464 _keys!1364)))

(declare-fun b!1271752 () Bool)

(declare-fun res!846138 () Bool)

(assert (=> b!1271752 (=> (not res!846138) (not e!725332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83201 (_ BitVec 32)) Bool)

(assert (=> b!1271752 (= res!846138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!51085 () Bool)

(declare-fun mapRes!51085 () Bool)

(assert (=> mapIsEmpty!51085 mapRes!51085))

(declare-fun b!1271753 () Bool)

(assert (=> b!1271753 (= e!725332 false)))

(declare-fun lt!574877 () Bool)

(declare-datatypes ((List!28700 0))(
  ( (Nil!28697) (Cons!28696 (h!29905 (_ BitVec 64)) (t!42236 List!28700)) )
))
(declare-fun arrayNoDuplicates!0 (array!83201 (_ BitVec 32) List!28700) Bool)

(assert (=> b!1271753 (= lt!574877 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28697))))

(declare-fun b!1271754 () Bool)

(assert (=> b!1271754 (= e!725330 (and e!725333 mapRes!51085))))

(declare-fun condMapEmpty!51085 () Bool)

(declare-fun mapDefault!51085 () ValueCell!15648)

(assert (=> b!1271754 (= condMapEmpty!51085 (= (arr!40132 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15648)) mapDefault!51085)))))

(declare-fun b!1271755 () Bool)

(declare-fun res!846139 () Bool)

(assert (=> b!1271755 (=> (not res!846139) (not e!725332))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271755 (= res!846139 (and (= (size!40669 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40670 _keys!1364) (size!40669 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271756 () Bool)

(declare-fun e!725329 () Bool)

(assert (=> b!1271756 (= e!725329 tp_is_empty!33003)))

(declare-fun mapNonEmpty!51085 () Bool)

(declare-fun tp!97427 () Bool)

(assert (=> mapNonEmpty!51085 (= mapRes!51085 (and tp!97427 e!725329))))

(declare-fun mapKey!51085 () (_ BitVec 32))

(declare-fun mapRest!51085 () (Array (_ BitVec 32) ValueCell!15648))

(declare-fun mapValue!51085 () ValueCell!15648)

(assert (=> mapNonEmpty!51085 (= (arr!40132 _values!1134) (store mapRest!51085 mapKey!51085 mapValue!51085))))

(assert (= (and start!107350 res!846140) b!1271755))

(assert (= (and b!1271755 res!846139) b!1271752))

(assert (= (and b!1271752 res!846138) b!1271753))

(assert (= (and b!1271754 condMapEmpty!51085) mapIsEmpty!51085))

(assert (= (and b!1271754 (not condMapEmpty!51085)) mapNonEmpty!51085))

(get-info :version)

(assert (= (and mapNonEmpty!51085 ((_ is ValueCellFull!15648) mapValue!51085)) b!1271756))

(assert (= (and b!1271754 ((_ is ValueCellFull!15648) mapDefault!51085)) b!1271751))

(assert (= start!107350 b!1271754))

(declare-fun m!1169609 () Bool)

(assert (=> start!107350 m!1169609))

(declare-fun m!1169611 () Bool)

(assert (=> start!107350 m!1169611))

(declare-fun m!1169613 () Bool)

(assert (=> start!107350 m!1169613))

(declare-fun m!1169615 () Bool)

(assert (=> b!1271752 m!1169615))

(declare-fun m!1169617 () Bool)

(assert (=> b!1271753 m!1169617))

(declare-fun m!1169619 () Bool)

(assert (=> mapNonEmpty!51085 m!1169619))

(check-sat (not mapNonEmpty!51085) tp_is_empty!33003 (not b!1271752) (not start!107350) (not b!1271753))
(check-sat)
