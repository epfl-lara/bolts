; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107038 () Bool)

(assert start!107038)

(declare-fun mapNonEmpty!50617 () Bool)

(declare-fun mapRes!50617 () Bool)

(declare-fun tp!96797 () Bool)

(declare-fun e!722992 () Bool)

(assert (=> mapNonEmpty!50617 (= mapRes!50617 (and tp!96797 e!722992))))

(declare-datatypes ((V!48781 0))(
  ( (V!48782 (val!16420 Int)) )
))
(declare-datatypes ((ValueCell!15492 0))(
  ( (ValueCellFull!15492 (v!19055 V!48781)) (EmptyCell!15492) )
))
(declare-datatypes ((array!82629 0))(
  ( (array!82630 (arr!39847 (Array (_ BitVec 32) ValueCell!15492)) (size!40384 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82629)

(declare-fun mapKey!50617 () (_ BitVec 32))

(declare-fun mapRest!50617 () (Array (_ BitVec 32) ValueCell!15492))

(declare-fun mapValue!50617 () ValueCell!15492)

(assert (=> mapNonEmpty!50617 (= (arr!39847 _values!1134) (store mapRest!50617 mapKey!50617 mapValue!50617))))

(declare-fun b!1268619 () Bool)

(declare-fun tp_is_empty!32691 () Bool)

(assert (=> b!1268619 (= e!722992 tp_is_empty!32691)))

(declare-fun res!844412 () Bool)

(declare-fun e!722991 () Bool)

(assert (=> start!107038 (=> (not res!844412) (not e!722991))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107038 (= res!844412 (validMask!0 mask!1730))))

(assert (=> start!107038 e!722991))

(declare-fun e!722990 () Bool)

(declare-fun array_inv!30279 (array!82629) Bool)

(assert (=> start!107038 (and (array_inv!30279 _values!1134) e!722990)))

(assert (=> start!107038 true))

(declare-datatypes ((array!82631 0))(
  ( (array!82632 (arr!39848 (Array (_ BitVec 32) (_ BitVec 64))) (size!40385 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82631)

(declare-fun array_inv!30280 (array!82631) Bool)

(assert (=> start!107038 (array_inv!30280 _keys!1364)))

(declare-fun mapIsEmpty!50617 () Bool)

(assert (=> mapIsEmpty!50617 mapRes!50617))

(declare-fun b!1268620 () Bool)

(declare-fun e!722989 () Bool)

(assert (=> b!1268620 (= e!722989 tp_is_empty!32691)))

(declare-fun b!1268621 () Bool)

(declare-fun res!844410 () Bool)

(assert (=> b!1268621 (=> (not res!844410) (not e!722991))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268621 (= res!844410 (and (= (size!40384 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40385 _keys!1364) (size!40384 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268622 () Bool)

(assert (=> b!1268622 (= e!722991 false)))

(declare-fun lt!574409 () Bool)

(declare-datatypes ((List!28567 0))(
  ( (Nil!28564) (Cons!28563 (h!29772 (_ BitVec 64)) (t!42103 List!28567)) )
))
(declare-fun arrayNoDuplicates!0 (array!82631 (_ BitVec 32) List!28567) Bool)

(assert (=> b!1268622 (= lt!574409 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28564))))

(declare-fun b!1268623 () Bool)

(assert (=> b!1268623 (= e!722990 (and e!722989 mapRes!50617))))

(declare-fun condMapEmpty!50617 () Bool)

(declare-fun mapDefault!50617 () ValueCell!15492)

(assert (=> b!1268623 (= condMapEmpty!50617 (= (arr!39847 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15492)) mapDefault!50617)))))

(declare-fun b!1268624 () Bool)

(declare-fun res!844411 () Bool)

(assert (=> b!1268624 (=> (not res!844411) (not e!722991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82631 (_ BitVec 32)) Bool)

(assert (=> b!1268624 (= res!844411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(assert (= (and start!107038 res!844412) b!1268621))

(assert (= (and b!1268621 res!844410) b!1268624))

(assert (= (and b!1268624 res!844411) b!1268622))

(assert (= (and b!1268623 condMapEmpty!50617) mapIsEmpty!50617))

(assert (= (and b!1268623 (not condMapEmpty!50617)) mapNonEmpty!50617))

(get-info :version)

(assert (= (and mapNonEmpty!50617 ((_ is ValueCellFull!15492) mapValue!50617)) b!1268619))

(assert (= (and b!1268623 ((_ is ValueCellFull!15492) mapDefault!50617)) b!1268620))

(assert (= start!107038 b!1268623))

(declare-fun m!1167413 () Bool)

(assert (=> mapNonEmpty!50617 m!1167413))

(declare-fun m!1167415 () Bool)

(assert (=> start!107038 m!1167415))

(declare-fun m!1167417 () Bool)

(assert (=> start!107038 m!1167417))

(declare-fun m!1167419 () Bool)

(assert (=> start!107038 m!1167419))

(declare-fun m!1167421 () Bool)

(assert (=> b!1268622 m!1167421))

(declare-fun m!1167423 () Bool)

(assert (=> b!1268624 m!1167423))

(check-sat tp_is_empty!32691 (not b!1268624) (not start!107038) (not mapNonEmpty!50617) (not b!1268622))
(check-sat)
