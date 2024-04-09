; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93590 () Bool)

(assert start!93590)

(declare-fun mapNonEmpty!39004 () Bool)

(declare-fun mapRes!39004 () Bool)

(declare-fun tp!74811 () Bool)

(declare-fun e!602574 () Bool)

(assert (=> mapNonEmpty!39004 (= mapRes!39004 (and tp!74811 e!602574))))

(declare-fun mapKey!39004 () (_ BitVec 32))

(declare-datatypes ((V!38339 0))(
  ( (V!38340 (val!12502 Int)) )
))
(declare-datatypes ((ValueCell!11748 0))(
  ( (ValueCellFull!11748 (v!15112 V!38339)) (EmptyCell!11748) )
))
(declare-fun mapRest!39004 () (Array (_ BitVec 32) ValueCell!11748))

(declare-datatypes ((array!66812 0))(
  ( (array!66813 (arr!32117 (Array (_ BitVec 32) ValueCell!11748)) (size!32654 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66812)

(declare-fun mapValue!39004 () ValueCell!11748)

(assert (=> mapNonEmpty!39004 (= (arr!32117 _values!955) (store mapRest!39004 mapKey!39004 mapValue!39004))))

(declare-fun b!1058883 () Bool)

(declare-fun tp_is_empty!24903 () Bool)

(assert (=> b!1058883 (= e!602574 tp_is_empty!24903)))

(declare-fun b!1058884 () Bool)

(declare-fun e!602573 () Bool)

(declare-fun e!602577 () Bool)

(assert (=> b!1058884 (= e!602573 (and e!602577 mapRes!39004))))

(declare-fun condMapEmpty!39004 () Bool)

(declare-fun mapDefault!39004 () ValueCell!11748)

(assert (=> b!1058884 (= condMapEmpty!39004 (= (arr!32117 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11748)) mapDefault!39004)))))

(declare-fun mapIsEmpty!39004 () Bool)

(assert (=> mapIsEmpty!39004 mapRes!39004))

(declare-fun res!707533 () Bool)

(declare-fun e!602575 () Bool)

(assert (=> start!93590 (=> (not res!707533) (not e!602575))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93590 (= res!707533 (validMask!0 mask!1515))))

(assert (=> start!93590 e!602575))

(assert (=> start!93590 true))

(declare-fun array_inv!24738 (array!66812) Bool)

(assert (=> start!93590 (and (array_inv!24738 _values!955) e!602573)))

(declare-datatypes ((array!66814 0))(
  ( (array!66815 (arr!32118 (Array (_ BitVec 32) (_ BitVec 64))) (size!32655 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66814)

(declare-fun array_inv!24739 (array!66814) Bool)

(assert (=> start!93590 (array_inv!24739 _keys!1163)))

(declare-fun b!1058885 () Bool)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1058885 (= e!602575 (and (= (size!32654 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32655 _keys!1163) (size!32654 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (size!32655 _keys!1163) (bvadd #b00000000000000000000000000000001 mask!1515)))))))

(declare-fun b!1058886 () Bool)

(assert (=> b!1058886 (= e!602577 tp_is_empty!24903)))

(assert (= (and start!93590 res!707533) b!1058885))

(assert (= (and b!1058884 condMapEmpty!39004) mapIsEmpty!39004))

(assert (= (and b!1058884 (not condMapEmpty!39004)) mapNonEmpty!39004))

(get-info :version)

(assert (= (and mapNonEmpty!39004 ((_ is ValueCellFull!11748) mapValue!39004)) b!1058883))

(assert (= (and b!1058884 ((_ is ValueCellFull!11748) mapDefault!39004)) b!1058886))

(assert (= start!93590 b!1058884))

(declare-fun m!978637 () Bool)

(assert (=> mapNonEmpty!39004 m!978637))

(declare-fun m!978639 () Bool)

(assert (=> start!93590 m!978639))

(declare-fun m!978641 () Bool)

(assert (=> start!93590 m!978641))

(declare-fun m!978643 () Bool)

(assert (=> start!93590 m!978643))

(check-sat (not start!93590) (not mapNonEmpty!39004) tp_is_empty!24903)
(check-sat)
