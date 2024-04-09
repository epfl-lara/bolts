; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107032 () Bool)

(assert start!107032)

(declare-fun b!1268565 () Bool)

(declare-fun e!722946 () Bool)

(declare-fun e!722945 () Bool)

(declare-fun mapRes!50608 () Bool)

(assert (=> b!1268565 (= e!722946 (and e!722945 mapRes!50608))))

(declare-fun condMapEmpty!50608 () Bool)

(declare-datatypes ((V!48773 0))(
  ( (V!48774 (val!16417 Int)) )
))
(declare-datatypes ((ValueCell!15489 0))(
  ( (ValueCellFull!15489 (v!19052 V!48773)) (EmptyCell!15489) )
))
(declare-datatypes ((array!82617 0))(
  ( (array!82618 (arr!39841 (Array (_ BitVec 32) ValueCell!15489)) (size!40378 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82617)

(declare-fun mapDefault!50608 () ValueCell!15489)

(assert (=> b!1268565 (= condMapEmpty!50608 (= (arr!39841 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15489)) mapDefault!50608)))))

(declare-fun b!1268566 () Bool)

(declare-fun res!844383 () Bool)

(declare-fun e!722948 () Bool)

(assert (=> b!1268566 (=> (not res!844383) (not e!722948))))

(declare-datatypes ((array!82619 0))(
  ( (array!82620 (arr!39842 (Array (_ BitVec 32) (_ BitVec 64))) (size!40379 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82619)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82619 (_ BitVec 32)) Bool)

(assert (=> b!1268566 (= res!844383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50608 () Bool)

(declare-fun tp!96788 () Bool)

(declare-fun e!722944 () Bool)

(assert (=> mapNonEmpty!50608 (= mapRes!50608 (and tp!96788 e!722944))))

(declare-fun mapKey!50608 () (_ BitVec 32))

(declare-fun mapRest!50608 () (Array (_ BitVec 32) ValueCell!15489))

(declare-fun mapValue!50608 () ValueCell!15489)

(assert (=> mapNonEmpty!50608 (= (arr!39841 _values!1134) (store mapRest!50608 mapKey!50608 mapValue!50608))))

(declare-fun res!844385 () Bool)

(assert (=> start!107032 (=> (not res!844385) (not e!722948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107032 (= res!844385 (validMask!0 mask!1730))))

(assert (=> start!107032 e!722948))

(declare-fun array_inv!30273 (array!82617) Bool)

(assert (=> start!107032 (and (array_inv!30273 _values!1134) e!722946)))

(assert (=> start!107032 true))

(declare-fun array_inv!30274 (array!82619) Bool)

(assert (=> start!107032 (array_inv!30274 _keys!1364)))

(declare-fun b!1268567 () Bool)

(declare-fun tp_is_empty!32685 () Bool)

(assert (=> b!1268567 (= e!722945 tp_is_empty!32685)))

(declare-fun b!1268568 () Bool)

(declare-fun res!844384 () Bool)

(assert (=> b!1268568 (=> (not res!844384) (not e!722948))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268568 (= res!844384 (and (= (size!40378 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40379 _keys!1364) (size!40378 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!50608 () Bool)

(assert (=> mapIsEmpty!50608 mapRes!50608))

(declare-fun b!1268569 () Bool)

(assert (=> b!1268569 (= e!722944 tp_is_empty!32685)))

(declare-fun b!1268570 () Bool)

(assert (=> b!1268570 (= e!722948 false)))

(declare-fun lt!574400 () Bool)

(declare-datatypes ((List!28565 0))(
  ( (Nil!28562) (Cons!28561 (h!29770 (_ BitVec 64)) (t!42101 List!28565)) )
))
(declare-fun arrayNoDuplicates!0 (array!82619 (_ BitVec 32) List!28565) Bool)

(assert (=> b!1268570 (= lt!574400 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28562))))

(assert (= (and start!107032 res!844385) b!1268568))

(assert (= (and b!1268568 res!844384) b!1268566))

(assert (= (and b!1268566 res!844383) b!1268570))

(assert (= (and b!1268565 condMapEmpty!50608) mapIsEmpty!50608))

(assert (= (and b!1268565 (not condMapEmpty!50608)) mapNonEmpty!50608))

(get-info :version)

(assert (= (and mapNonEmpty!50608 ((_ is ValueCellFull!15489) mapValue!50608)) b!1268569))

(assert (= (and b!1268565 ((_ is ValueCellFull!15489) mapDefault!50608)) b!1268567))

(assert (= start!107032 b!1268565))

(declare-fun m!1167377 () Bool)

(assert (=> b!1268566 m!1167377))

(declare-fun m!1167379 () Bool)

(assert (=> mapNonEmpty!50608 m!1167379))

(declare-fun m!1167381 () Bool)

(assert (=> start!107032 m!1167381))

(declare-fun m!1167383 () Bool)

(assert (=> start!107032 m!1167383))

(declare-fun m!1167385 () Bool)

(assert (=> start!107032 m!1167385))

(declare-fun m!1167387 () Bool)

(assert (=> b!1268570 m!1167387))

(check-sat tp_is_empty!32685 (not start!107032) (not b!1268566) (not mapNonEmpty!50608) (not b!1268570))
(check-sat)
