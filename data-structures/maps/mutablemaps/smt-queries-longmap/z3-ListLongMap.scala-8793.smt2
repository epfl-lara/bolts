; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107020 () Bool)

(assert start!107020)

(declare-fun b!1268457 () Bool)

(declare-fun res!844329 () Bool)

(declare-fun e!722858 () Bool)

(assert (=> b!1268457 (=> (not res!844329) (not e!722858))))

(declare-datatypes ((V!48757 0))(
  ( (V!48758 (val!16411 Int)) )
))
(declare-datatypes ((ValueCell!15483 0))(
  ( (ValueCellFull!15483 (v!19046 V!48757)) (EmptyCell!15483) )
))
(declare-datatypes ((array!82597 0))(
  ( (array!82598 (arr!39831 (Array (_ BitVec 32) ValueCell!15483)) (size!40368 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82597)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82599 0))(
  ( (array!82600 (arr!39832 (Array (_ BitVec 32) (_ BitVec 64))) (size!40369 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82599)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268457 (= res!844329 (and (= (size!40368 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40369 _keys!1364) (size!40368 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844330 () Bool)

(assert (=> start!107020 (=> (not res!844330) (not e!722858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107020 (= res!844330 (validMask!0 mask!1730))))

(assert (=> start!107020 e!722858))

(declare-fun e!722857 () Bool)

(declare-fun array_inv!30265 (array!82597) Bool)

(assert (=> start!107020 (and (array_inv!30265 _values!1134) e!722857)))

(assert (=> start!107020 true))

(declare-fun array_inv!30266 (array!82599) Bool)

(assert (=> start!107020 (array_inv!30266 _keys!1364)))

(declare-fun b!1268458 () Bool)

(assert (=> b!1268458 (= e!722858 false)))

(declare-fun lt!574382 () Bool)

(declare-datatypes ((List!28562 0))(
  ( (Nil!28559) (Cons!28558 (h!29767 (_ BitVec 64)) (t!42098 List!28562)) )
))
(declare-fun arrayNoDuplicates!0 (array!82599 (_ BitVec 32) List!28562) Bool)

(assert (=> b!1268458 (= lt!574382 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28559))))

(declare-fun b!1268459 () Bool)

(declare-fun e!722855 () Bool)

(declare-fun tp_is_empty!32673 () Bool)

(assert (=> b!1268459 (= e!722855 tp_is_empty!32673)))

(declare-fun b!1268460 () Bool)

(declare-fun mapRes!50590 () Bool)

(assert (=> b!1268460 (= e!722857 (and e!722855 mapRes!50590))))

(declare-fun condMapEmpty!50590 () Bool)

(declare-fun mapDefault!50590 () ValueCell!15483)

(assert (=> b!1268460 (= condMapEmpty!50590 (= (arr!39831 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15483)) mapDefault!50590)))))

(declare-fun b!1268461 () Bool)

(declare-fun e!722854 () Bool)

(assert (=> b!1268461 (= e!722854 tp_is_empty!32673)))

(declare-fun b!1268462 () Bool)

(declare-fun res!844331 () Bool)

(assert (=> b!1268462 (=> (not res!844331) (not e!722858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82599 (_ BitVec 32)) Bool)

(assert (=> b!1268462 (= res!844331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50590 () Bool)

(declare-fun tp!96770 () Bool)

(assert (=> mapNonEmpty!50590 (= mapRes!50590 (and tp!96770 e!722854))))

(declare-fun mapRest!50590 () (Array (_ BitVec 32) ValueCell!15483))

(declare-fun mapValue!50590 () ValueCell!15483)

(declare-fun mapKey!50590 () (_ BitVec 32))

(assert (=> mapNonEmpty!50590 (= (arr!39831 _values!1134) (store mapRest!50590 mapKey!50590 mapValue!50590))))

(declare-fun mapIsEmpty!50590 () Bool)

(assert (=> mapIsEmpty!50590 mapRes!50590))

(assert (= (and start!107020 res!844330) b!1268457))

(assert (= (and b!1268457 res!844329) b!1268462))

(assert (= (and b!1268462 res!844331) b!1268458))

(assert (= (and b!1268460 condMapEmpty!50590) mapIsEmpty!50590))

(assert (= (and b!1268460 (not condMapEmpty!50590)) mapNonEmpty!50590))

(get-info :version)

(assert (= (and mapNonEmpty!50590 ((_ is ValueCellFull!15483) mapValue!50590)) b!1268461))

(assert (= (and b!1268460 ((_ is ValueCellFull!15483) mapDefault!50590)) b!1268459))

(assert (= start!107020 b!1268460))

(declare-fun m!1167305 () Bool)

(assert (=> start!107020 m!1167305))

(declare-fun m!1167307 () Bool)

(assert (=> start!107020 m!1167307))

(declare-fun m!1167309 () Bool)

(assert (=> start!107020 m!1167309))

(declare-fun m!1167311 () Bool)

(assert (=> b!1268458 m!1167311))

(declare-fun m!1167313 () Bool)

(assert (=> b!1268462 m!1167313))

(declare-fun m!1167315 () Bool)

(assert (=> mapNonEmpty!50590 m!1167315))

(check-sat (not b!1268458) tp_is_empty!32673 (not b!1268462) (not start!107020) (not mapNonEmpty!50590))
(check-sat)
