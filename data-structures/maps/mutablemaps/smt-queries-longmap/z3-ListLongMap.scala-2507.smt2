; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38870 () Bool)

(assert start!38870)

(declare-fun b!405806 () Bool)

(declare-fun res!234398 () Bool)

(declare-fun e!243926 () Bool)

(assert (=> b!405806 (=> (not res!234398) (not e!243926))))

(declare-datatypes ((array!24419 0))(
  ( (array!24420 (arr!11656 (Array (_ BitVec 32) (_ BitVec 64))) (size!12008 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24419)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!405806 (= res!234398 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!405807 () Bool)

(declare-fun e!243929 () Bool)

(declare-fun tp_is_empty!10281 () Bool)

(assert (=> b!405807 (= e!243929 tp_is_empty!10281)))

(declare-fun b!405808 () Bool)

(declare-fun res!234395 () Bool)

(assert (=> b!405808 (=> (not res!234395) (not e!243926))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24419 (_ BitVec 32)) Bool)

(assert (=> b!405808 (= res!234395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!405809 () Bool)

(declare-fun e!243927 () Bool)

(declare-fun mapRes!17043 () Bool)

(assert (=> b!405809 (= e!243927 (and e!243929 mapRes!17043))))

(declare-fun condMapEmpty!17043 () Bool)

(declare-datatypes ((V!14813 0))(
  ( (V!14814 (val!5185 Int)) )
))
(declare-datatypes ((ValueCell!4797 0))(
  ( (ValueCellFull!4797 (v!7428 V!14813)) (EmptyCell!4797) )
))
(declare-datatypes ((array!24421 0))(
  ( (array!24422 (arr!11657 (Array (_ BitVec 32) ValueCell!4797)) (size!12009 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24421)

(declare-fun mapDefault!17043 () ValueCell!4797)

(assert (=> b!405809 (= condMapEmpty!17043 (= (arr!11657 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4797)) mapDefault!17043)))))

(declare-fun b!405810 () Bool)

(declare-fun res!234402 () Bool)

(assert (=> b!405810 (=> (not res!234402) (not e!243926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!405810 (= res!234402 (validMask!0 mask!1025))))

(declare-fun b!405811 () Bool)

(declare-fun res!234400 () Bool)

(assert (=> b!405811 (=> (not res!234400) (not e!243926))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!405811 (= res!234400 (or (= (select (arr!11656 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11656 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17043 () Bool)

(declare-fun tp!33162 () Bool)

(declare-fun e!243930 () Bool)

(assert (=> mapNonEmpty!17043 (= mapRes!17043 (and tp!33162 e!243930))))

(declare-fun mapRest!17043 () (Array (_ BitVec 32) ValueCell!4797))

(declare-fun mapKey!17043 () (_ BitVec 32))

(declare-fun mapValue!17043 () ValueCell!4797)

(assert (=> mapNonEmpty!17043 (= (arr!11657 _values!549) (store mapRest!17043 mapKey!17043 mapValue!17043))))

(declare-fun b!405812 () Bool)

(declare-fun res!234394 () Bool)

(assert (=> b!405812 (=> (not res!234394) (not e!243926))))

(assert (=> b!405812 (= res!234394 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12008 _keys!709))))))

(declare-fun res!234396 () Bool)

(assert (=> start!38870 (=> (not res!234396) (not e!243926))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38870 (= res!234396 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12008 _keys!709))))))

(assert (=> start!38870 e!243926))

(assert (=> start!38870 true))

(declare-fun array_inv!8518 (array!24421) Bool)

(assert (=> start!38870 (and (array_inv!8518 _values!549) e!243927)))

(declare-fun array_inv!8519 (array!24419) Bool)

(assert (=> start!38870 (array_inv!8519 _keys!709)))

(declare-fun b!405813 () Bool)

(declare-fun res!234397 () Bool)

(assert (=> b!405813 (=> (not res!234397) (not e!243926))))

(declare-datatypes ((List!6752 0))(
  ( (Nil!6749) (Cons!6748 (h!7604 (_ BitVec 64)) (t!11934 List!6752)) )
))
(declare-fun arrayNoDuplicates!0 (array!24419 (_ BitVec 32) List!6752) Bool)

(assert (=> b!405813 (= res!234397 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6749))))

(declare-fun b!405814 () Bool)

(declare-fun e!243928 () Bool)

(assert (=> b!405814 (= e!243928 false)))

(declare-fun lt!188384 () Bool)

(declare-fun lt!188385 () array!24419)

(assert (=> b!405814 (= lt!188384 (arrayNoDuplicates!0 lt!188385 #b00000000000000000000000000000000 Nil!6749))))

(declare-fun mapIsEmpty!17043 () Bool)

(assert (=> mapIsEmpty!17043 mapRes!17043))

(declare-fun b!405815 () Bool)

(assert (=> b!405815 (= e!243926 e!243928)))

(declare-fun res!234399 () Bool)

(assert (=> b!405815 (=> (not res!234399) (not e!243928))))

(assert (=> b!405815 (= res!234399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188385 mask!1025))))

(assert (=> b!405815 (= lt!188385 (array!24420 (store (arr!11656 _keys!709) i!563 k0!794) (size!12008 _keys!709)))))

(declare-fun b!405816 () Bool)

(declare-fun res!234401 () Bool)

(assert (=> b!405816 (=> (not res!234401) (not e!243926))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!405816 (= res!234401 (and (= (size!12009 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12008 _keys!709) (size!12009 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!405817 () Bool)

(declare-fun res!234393 () Bool)

(assert (=> b!405817 (=> (not res!234393) (not e!243926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!405817 (= res!234393 (validKeyInArray!0 k0!794))))

(declare-fun b!405818 () Bool)

(assert (=> b!405818 (= e!243930 tp_is_empty!10281)))

(assert (= (and start!38870 res!234396) b!405810))

(assert (= (and b!405810 res!234402) b!405816))

(assert (= (and b!405816 res!234401) b!405808))

(assert (= (and b!405808 res!234395) b!405813))

(assert (= (and b!405813 res!234397) b!405812))

(assert (= (and b!405812 res!234394) b!405817))

(assert (= (and b!405817 res!234393) b!405811))

(assert (= (and b!405811 res!234400) b!405806))

(assert (= (and b!405806 res!234398) b!405815))

(assert (= (and b!405815 res!234399) b!405814))

(assert (= (and b!405809 condMapEmpty!17043) mapIsEmpty!17043))

(assert (= (and b!405809 (not condMapEmpty!17043)) mapNonEmpty!17043))

(get-info :version)

(assert (= (and mapNonEmpty!17043 ((_ is ValueCellFull!4797) mapValue!17043)) b!405818))

(assert (= (and b!405809 ((_ is ValueCellFull!4797) mapDefault!17043)) b!405807))

(assert (= start!38870 b!405809))

(declare-fun m!398085 () Bool)

(assert (=> b!405814 m!398085))

(declare-fun m!398087 () Bool)

(assert (=> b!405806 m!398087))

(declare-fun m!398089 () Bool)

(assert (=> b!405808 m!398089))

(declare-fun m!398091 () Bool)

(assert (=> start!38870 m!398091))

(declare-fun m!398093 () Bool)

(assert (=> start!38870 m!398093))

(declare-fun m!398095 () Bool)

(assert (=> b!405815 m!398095))

(declare-fun m!398097 () Bool)

(assert (=> b!405815 m!398097))

(declare-fun m!398099 () Bool)

(assert (=> b!405813 m!398099))

(declare-fun m!398101 () Bool)

(assert (=> b!405817 m!398101))

(declare-fun m!398103 () Bool)

(assert (=> b!405811 m!398103))

(declare-fun m!398105 () Bool)

(assert (=> b!405810 m!398105))

(declare-fun m!398107 () Bool)

(assert (=> mapNonEmpty!17043 m!398107))

(check-sat (not mapNonEmpty!17043) (not b!405813) (not start!38870) (not b!405808) (not b!405814) (not b!405810) (not b!405817) (not b!405815) (not b!405806) tp_is_empty!10281)
(check-sat)
