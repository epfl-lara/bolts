; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107206 () Bool)

(assert start!107206)

(declare-fun b!1270455 () Bool)

(declare-fun e!724253 () Bool)

(declare-fun e!724250 () Bool)

(declare-fun mapRes!50869 () Bool)

(assert (=> b!1270455 (= e!724253 (and e!724250 mapRes!50869))))

(declare-fun condMapEmpty!50869 () Bool)

(declare-datatypes ((V!49005 0))(
  ( (V!49006 (val!16504 Int)) )
))
(declare-datatypes ((ValueCell!15576 0))(
  ( (ValueCellFull!15576 (v!19139 V!49005)) (EmptyCell!15576) )
))
(declare-datatypes ((array!82945 0))(
  ( (array!82946 (arr!40005 (Array (_ BitVec 32) ValueCell!15576)) (size!40542 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82945)

(declare-fun mapDefault!50869 () ValueCell!15576)

(assert (=> b!1270455 (= condMapEmpty!50869 (= (arr!40005 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15576)) mapDefault!50869)))))

(declare-fun b!1270456 () Bool)

(declare-fun res!845492 () Bool)

(declare-fun e!724249 () Bool)

(assert (=> b!1270456 (=> (not res!845492) (not e!724249))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82947 0))(
  ( (array!82948 (arr!40006 (Array (_ BitVec 32) (_ BitVec 64))) (size!40543 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82947)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270456 (= res!845492 (and (= (size!40542 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40543 _keys!1364) (size!40542 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270457 () Bool)

(declare-fun res!845490 () Bool)

(assert (=> b!1270457 (=> (not res!845490) (not e!724249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82947 (_ BitVec 32)) Bool)

(assert (=> b!1270457 (= res!845490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50869 () Bool)

(assert (=> mapIsEmpty!50869 mapRes!50869))

(declare-fun res!845491 () Bool)

(assert (=> start!107206 (=> (not res!845491) (not e!724249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107206 (= res!845491 (validMask!0 mask!1730))))

(assert (=> start!107206 e!724249))

(declare-fun array_inv!30381 (array!82945) Bool)

(assert (=> start!107206 (and (array_inv!30381 _values!1134) e!724253)))

(assert (=> start!107206 true))

(declare-fun array_inv!30382 (array!82947) Bool)

(assert (=> start!107206 (array_inv!30382 _keys!1364)))

(declare-fun b!1270458 () Bool)

(declare-fun e!724251 () Bool)

(declare-fun tp_is_empty!32859 () Bool)

(assert (=> b!1270458 (= e!724251 tp_is_empty!32859)))

(declare-fun b!1270459 () Bool)

(assert (=> b!1270459 (= e!724249 false)))

(declare-fun lt!574661 () Bool)

(declare-datatypes ((List!28656 0))(
  ( (Nil!28653) (Cons!28652 (h!29861 (_ BitVec 64)) (t!42192 List!28656)) )
))
(declare-fun arrayNoDuplicates!0 (array!82947 (_ BitVec 32) List!28656) Bool)

(assert (=> b!1270459 (= lt!574661 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28653))))

(declare-fun b!1270460 () Bool)

(assert (=> b!1270460 (= e!724250 tp_is_empty!32859)))

(declare-fun mapNonEmpty!50869 () Bool)

(declare-fun tp!97211 () Bool)

(assert (=> mapNonEmpty!50869 (= mapRes!50869 (and tp!97211 e!724251))))

(declare-fun mapRest!50869 () (Array (_ BitVec 32) ValueCell!15576))

(declare-fun mapValue!50869 () ValueCell!15576)

(declare-fun mapKey!50869 () (_ BitVec 32))

(assert (=> mapNonEmpty!50869 (= (arr!40005 _values!1134) (store mapRest!50869 mapKey!50869 mapValue!50869))))

(assert (= (and start!107206 res!845491) b!1270456))

(assert (= (and b!1270456 res!845492) b!1270457))

(assert (= (and b!1270457 res!845490) b!1270459))

(assert (= (and b!1270455 condMapEmpty!50869) mapIsEmpty!50869))

(assert (= (and b!1270455 (not condMapEmpty!50869)) mapNonEmpty!50869))

(get-info :version)

(assert (= (and mapNonEmpty!50869 ((_ is ValueCellFull!15576) mapValue!50869)) b!1270458))

(assert (= (and b!1270455 ((_ is ValueCellFull!15576) mapDefault!50869)) b!1270460))

(assert (= start!107206 b!1270455))

(declare-fun m!1168745 () Bool)

(assert (=> b!1270457 m!1168745))

(declare-fun m!1168747 () Bool)

(assert (=> start!107206 m!1168747))

(declare-fun m!1168749 () Bool)

(assert (=> start!107206 m!1168749))

(declare-fun m!1168751 () Bool)

(assert (=> start!107206 m!1168751))

(declare-fun m!1168753 () Bool)

(assert (=> b!1270459 m!1168753))

(declare-fun m!1168755 () Bool)

(assert (=> mapNonEmpty!50869 m!1168755))

(check-sat (not start!107206) (not b!1270457) tp_is_empty!32859 (not mapNonEmpty!50869) (not b!1270459))
(check-sat)
