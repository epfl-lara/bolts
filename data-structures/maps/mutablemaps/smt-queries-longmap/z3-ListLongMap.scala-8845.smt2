; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107332 () Bool)

(assert start!107332)

(declare-fun b!1271589 () Bool)

(declare-fun e!725194 () Bool)

(declare-fun tp_is_empty!32985 () Bool)

(assert (=> b!1271589 (= e!725194 tp_is_empty!32985)))

(declare-fun b!1271590 () Bool)

(declare-fun res!846059 () Bool)

(declare-fun e!725196 () Bool)

(assert (=> b!1271590 (=> (not res!846059) (not e!725196))))

(declare-datatypes ((array!83169 0))(
  ( (array!83170 (arr!40117 (Array (_ BitVec 32) (_ BitVec 64))) (size!40654 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83169)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83169 (_ BitVec 32)) Bool)

(assert (=> b!1271590 (= res!846059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!846057 () Bool)

(assert (=> start!107332 (=> (not res!846057) (not e!725196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107332 (= res!846057 (validMask!0 mask!1730))))

(assert (=> start!107332 e!725196))

(declare-datatypes ((V!49173 0))(
  ( (V!49174 (val!16567 Int)) )
))
(declare-datatypes ((ValueCell!15639 0))(
  ( (ValueCellFull!15639 (v!19202 V!49173)) (EmptyCell!15639) )
))
(declare-datatypes ((array!83171 0))(
  ( (array!83172 (arr!40118 (Array (_ BitVec 32) ValueCell!15639)) (size!40655 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83171)

(declare-fun e!725198 () Bool)

(declare-fun array_inv!30451 (array!83171) Bool)

(assert (=> start!107332 (and (array_inv!30451 _values!1134) e!725198)))

(assert (=> start!107332 true))

(declare-fun array_inv!30452 (array!83169) Bool)

(assert (=> start!107332 (array_inv!30452 _keys!1364)))

(declare-fun mapNonEmpty!51058 () Bool)

(declare-fun mapRes!51058 () Bool)

(declare-fun tp!97400 () Bool)

(assert (=> mapNonEmpty!51058 (= mapRes!51058 (and tp!97400 e!725194))))

(declare-fun mapKey!51058 () (_ BitVec 32))

(declare-fun mapValue!51058 () ValueCell!15639)

(declare-fun mapRest!51058 () (Array (_ BitVec 32) ValueCell!15639))

(assert (=> mapNonEmpty!51058 (= (arr!40118 _values!1134) (store mapRest!51058 mapKey!51058 mapValue!51058))))

(declare-fun b!1271591 () Bool)

(declare-fun e!725197 () Bool)

(assert (=> b!1271591 (= e!725197 tp_is_empty!32985)))

(declare-fun b!1271592 () Bool)

(assert (=> b!1271592 (= e!725196 false)))

(declare-fun lt!574850 () Bool)

(declare-datatypes ((List!28694 0))(
  ( (Nil!28691) (Cons!28690 (h!29899 (_ BitVec 64)) (t!42230 List!28694)) )
))
(declare-fun arrayNoDuplicates!0 (array!83169 (_ BitVec 32) List!28694) Bool)

(assert (=> b!1271592 (= lt!574850 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28691))))

(declare-fun b!1271593 () Bool)

(declare-fun res!846058 () Bool)

(assert (=> b!1271593 (=> (not res!846058) (not e!725196))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271593 (= res!846058 (and (= (size!40655 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40654 _keys!1364) (size!40655 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271594 () Bool)

(assert (=> b!1271594 (= e!725198 (and e!725197 mapRes!51058))))

(declare-fun condMapEmpty!51058 () Bool)

(declare-fun mapDefault!51058 () ValueCell!15639)

(assert (=> b!1271594 (= condMapEmpty!51058 (= (arr!40118 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15639)) mapDefault!51058)))))

(declare-fun mapIsEmpty!51058 () Bool)

(assert (=> mapIsEmpty!51058 mapRes!51058))

(assert (= (and start!107332 res!846057) b!1271593))

(assert (= (and b!1271593 res!846058) b!1271590))

(assert (= (and b!1271590 res!846059) b!1271592))

(assert (= (and b!1271594 condMapEmpty!51058) mapIsEmpty!51058))

(assert (= (and b!1271594 (not condMapEmpty!51058)) mapNonEmpty!51058))

(get-info :version)

(assert (= (and mapNonEmpty!51058 ((_ is ValueCellFull!15639) mapValue!51058)) b!1271589))

(assert (= (and b!1271594 ((_ is ValueCellFull!15639) mapDefault!51058)) b!1271591))

(assert (= start!107332 b!1271594))

(declare-fun m!1169501 () Bool)

(assert (=> b!1271590 m!1169501))

(declare-fun m!1169503 () Bool)

(assert (=> start!107332 m!1169503))

(declare-fun m!1169505 () Bool)

(assert (=> start!107332 m!1169505))

(declare-fun m!1169507 () Bool)

(assert (=> start!107332 m!1169507))

(declare-fun m!1169509 () Bool)

(assert (=> mapNonEmpty!51058 m!1169509))

(declare-fun m!1169511 () Bool)

(assert (=> b!1271592 m!1169511))

(check-sat (not b!1271592) (not b!1271590) (not start!107332) (not mapNonEmpty!51058) tp_is_empty!32985)
(check-sat)
