; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107356 () Bool)

(assert start!107356)

(declare-fun mapNonEmpty!51094 () Bool)

(declare-fun mapRes!51094 () Bool)

(declare-fun tp!97436 () Bool)

(declare-fun e!725376 () Bool)

(assert (=> mapNonEmpty!51094 (= mapRes!51094 (and tp!97436 e!725376))))

(declare-datatypes ((V!49205 0))(
  ( (V!49206 (val!16579 Int)) )
))
(declare-datatypes ((ValueCell!15651 0))(
  ( (ValueCellFull!15651 (v!19214 V!49205)) (EmptyCell!15651) )
))
(declare-datatypes ((array!83209 0))(
  ( (array!83210 (arr!40137 (Array (_ BitVec 32) ValueCell!15651)) (size!40674 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83209)

(declare-fun mapKey!51094 () (_ BitVec 32))

(declare-fun mapRest!51094 () (Array (_ BitVec 32) ValueCell!15651))

(declare-fun mapValue!51094 () ValueCell!15651)

(assert (=> mapNonEmpty!51094 (= (arr!40137 _values!1134) (store mapRest!51094 mapKey!51094 mapValue!51094))))

(declare-fun b!1271810 () Bool)

(declare-fun e!725375 () Bool)

(declare-fun tp_is_empty!33009 () Bool)

(assert (=> b!1271810 (= e!725375 tp_is_empty!33009)))

(declare-fun b!1271811 () Bool)

(declare-fun e!725377 () Bool)

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!83211 0))(
  ( (array!83212 (arr!40138 (Array (_ BitVec 32) (_ BitVec 64))) (size!40675 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83211)

(assert (=> b!1271811 (= e!725377 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40675 _keys!1364)) (bvslt from!1698 (size!40675 _keys!1364)) (bvslt (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1271812 () Bool)

(declare-fun res!846173 () Bool)

(assert (=> b!1271812 (=> (not res!846173) (not e!725377))))

(declare-datatypes ((List!28702 0))(
  ( (Nil!28699) (Cons!28698 (h!29907 (_ BitVec 64)) (t!42238 List!28702)) )
))
(declare-fun arrayNoDuplicates!0 (array!83211 (_ BitVec 32) List!28702) Bool)

(assert (=> b!1271812 (= res!846173 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28699))))

(declare-fun res!846171 () Bool)

(assert (=> start!107356 (=> (not res!846171) (not e!725377))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107356 (= res!846171 (validMask!0 mask!1730))))

(assert (=> start!107356 e!725377))

(declare-fun e!725374 () Bool)

(declare-fun array_inv!30467 (array!83209) Bool)

(assert (=> start!107356 (and (array_inv!30467 _values!1134) e!725374)))

(assert (=> start!107356 true))

(declare-fun array_inv!30468 (array!83211) Bool)

(assert (=> start!107356 (array_inv!30468 _keys!1364)))

(declare-fun mapIsEmpty!51094 () Bool)

(assert (=> mapIsEmpty!51094 mapRes!51094))

(declare-fun b!1271813 () Bool)

(declare-fun res!846170 () Bool)

(assert (=> b!1271813 (=> (not res!846170) (not e!725377))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271813 (= res!846170 (and (= (size!40674 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40675 _keys!1364) (size!40674 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271814 () Bool)

(declare-fun res!846172 () Bool)

(assert (=> b!1271814 (=> (not res!846172) (not e!725377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83211 (_ BitVec 32)) Bool)

(assert (=> b!1271814 (= res!846172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271815 () Bool)

(assert (=> b!1271815 (= e!725376 tp_is_empty!33009)))

(declare-fun b!1271816 () Bool)

(assert (=> b!1271816 (= e!725374 (and e!725375 mapRes!51094))))

(declare-fun condMapEmpty!51094 () Bool)

(declare-fun mapDefault!51094 () ValueCell!15651)

(assert (=> b!1271816 (= condMapEmpty!51094 (= (arr!40137 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15651)) mapDefault!51094)))))

(assert (= (and start!107356 res!846171) b!1271813))

(assert (= (and b!1271813 res!846170) b!1271814))

(assert (= (and b!1271814 res!846172) b!1271812))

(assert (= (and b!1271812 res!846173) b!1271811))

(assert (= (and b!1271816 condMapEmpty!51094) mapIsEmpty!51094))

(assert (= (and b!1271816 (not condMapEmpty!51094)) mapNonEmpty!51094))

(get-info :version)

(assert (= (and mapNonEmpty!51094 ((_ is ValueCellFull!15651) mapValue!51094)) b!1271815))

(assert (= (and b!1271816 ((_ is ValueCellFull!15651) mapDefault!51094)) b!1271810))

(assert (= start!107356 b!1271816))

(declare-fun m!1169645 () Bool)

(assert (=> mapNonEmpty!51094 m!1169645))

(declare-fun m!1169647 () Bool)

(assert (=> b!1271812 m!1169647))

(declare-fun m!1169649 () Bool)

(assert (=> start!107356 m!1169649))

(declare-fun m!1169651 () Bool)

(assert (=> start!107356 m!1169651))

(declare-fun m!1169653 () Bool)

(assert (=> start!107356 m!1169653))

(declare-fun m!1169655 () Bool)

(assert (=> b!1271814 m!1169655))

(check-sat (not b!1271814) tp_is_empty!33009 (not start!107356) (not mapNonEmpty!51094) (not b!1271812))
(check-sat)
