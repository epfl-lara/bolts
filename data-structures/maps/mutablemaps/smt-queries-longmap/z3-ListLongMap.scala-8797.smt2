; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107044 () Bool)

(assert start!107044)

(declare-fun b!1268673 () Bool)

(declare-fun e!723035 () Bool)

(assert (=> b!1268673 (= e!723035 false)))

(declare-fun lt!574418 () Bool)

(declare-datatypes ((array!82641 0))(
  ( (array!82642 (arr!39853 (Array (_ BitVec 32) (_ BitVec 64))) (size!40390 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82641)

(declare-datatypes ((List!28569 0))(
  ( (Nil!28566) (Cons!28565 (h!29774 (_ BitVec 64)) (t!42105 List!28569)) )
))
(declare-fun arrayNoDuplicates!0 (array!82641 (_ BitVec 32) List!28569) Bool)

(assert (=> b!1268673 (= lt!574418 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28566))))

(declare-fun mapIsEmpty!50626 () Bool)

(declare-fun mapRes!50626 () Bool)

(assert (=> mapIsEmpty!50626 mapRes!50626))

(declare-fun res!844437 () Bool)

(assert (=> start!107044 (=> (not res!844437) (not e!723035))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107044 (= res!844437 (validMask!0 mask!1730))))

(assert (=> start!107044 e!723035))

(declare-datatypes ((V!48789 0))(
  ( (V!48790 (val!16423 Int)) )
))
(declare-datatypes ((ValueCell!15495 0))(
  ( (ValueCellFull!15495 (v!19058 V!48789)) (EmptyCell!15495) )
))
(declare-datatypes ((array!82643 0))(
  ( (array!82644 (arr!39854 (Array (_ BitVec 32) ValueCell!15495)) (size!40391 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82643)

(declare-fun e!723037 () Bool)

(declare-fun array_inv!30285 (array!82643) Bool)

(assert (=> start!107044 (and (array_inv!30285 _values!1134) e!723037)))

(assert (=> start!107044 true))

(declare-fun array_inv!30286 (array!82641) Bool)

(assert (=> start!107044 (array_inv!30286 _keys!1364)))

(declare-fun b!1268674 () Bool)

(declare-fun e!723036 () Bool)

(declare-fun tp_is_empty!32697 () Bool)

(assert (=> b!1268674 (= e!723036 tp_is_empty!32697)))

(declare-fun b!1268675 () Bool)

(declare-fun res!844439 () Bool)

(assert (=> b!1268675 (=> (not res!844439) (not e!723035))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268675 (= res!844439 (and (= (size!40391 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40390 _keys!1364) (size!40391 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268676 () Bool)

(declare-fun e!723038 () Bool)

(assert (=> b!1268676 (= e!723038 tp_is_empty!32697)))

(declare-fun b!1268677 () Bool)

(declare-fun res!844438 () Bool)

(assert (=> b!1268677 (=> (not res!844438) (not e!723035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82641 (_ BitVec 32)) Bool)

(assert (=> b!1268677 (= res!844438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268678 () Bool)

(assert (=> b!1268678 (= e!723037 (and e!723038 mapRes!50626))))

(declare-fun condMapEmpty!50626 () Bool)

(declare-fun mapDefault!50626 () ValueCell!15495)

(assert (=> b!1268678 (= condMapEmpty!50626 (= (arr!39854 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15495)) mapDefault!50626)))))

(declare-fun mapNonEmpty!50626 () Bool)

(declare-fun tp!96806 () Bool)

(assert (=> mapNonEmpty!50626 (= mapRes!50626 (and tp!96806 e!723036))))

(declare-fun mapRest!50626 () (Array (_ BitVec 32) ValueCell!15495))

(declare-fun mapKey!50626 () (_ BitVec 32))

(declare-fun mapValue!50626 () ValueCell!15495)

(assert (=> mapNonEmpty!50626 (= (arr!39854 _values!1134) (store mapRest!50626 mapKey!50626 mapValue!50626))))

(assert (= (and start!107044 res!844437) b!1268675))

(assert (= (and b!1268675 res!844439) b!1268677))

(assert (= (and b!1268677 res!844438) b!1268673))

(assert (= (and b!1268678 condMapEmpty!50626) mapIsEmpty!50626))

(assert (= (and b!1268678 (not condMapEmpty!50626)) mapNonEmpty!50626))

(get-info :version)

(assert (= (and mapNonEmpty!50626 ((_ is ValueCellFull!15495) mapValue!50626)) b!1268674))

(assert (= (and b!1268678 ((_ is ValueCellFull!15495) mapDefault!50626)) b!1268676))

(assert (= start!107044 b!1268678))

(declare-fun m!1167449 () Bool)

(assert (=> b!1268673 m!1167449))

(declare-fun m!1167451 () Bool)

(assert (=> start!107044 m!1167451))

(declare-fun m!1167453 () Bool)

(assert (=> start!107044 m!1167453))

(declare-fun m!1167455 () Bool)

(assert (=> start!107044 m!1167455))

(declare-fun m!1167457 () Bool)

(assert (=> b!1268677 m!1167457))

(declare-fun m!1167459 () Bool)

(assert (=> mapNonEmpty!50626 m!1167459))

(check-sat tp_is_empty!32697 (not mapNonEmpty!50626) (not b!1268677) (not start!107044) (not b!1268673))
(check-sat)
