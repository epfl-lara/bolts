; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107362 () Bool)

(assert start!107362)

(declare-fun mapIsEmpty!51103 () Bool)

(declare-fun mapRes!51103 () Bool)

(assert (=> mapIsEmpty!51103 mapRes!51103))

(declare-fun b!1271873 () Bool)

(declare-fun res!846207 () Bool)

(declare-fun e!725419 () Bool)

(assert (=> b!1271873 (=> (not res!846207) (not e!725419))))

(declare-datatypes ((V!49213 0))(
  ( (V!49214 (val!16582 Int)) )
))
(declare-datatypes ((ValueCell!15654 0))(
  ( (ValueCellFull!15654 (v!19217 V!49213)) (EmptyCell!15654) )
))
(declare-datatypes ((array!83221 0))(
  ( (array!83222 (arr!40143 (Array (_ BitVec 32) ValueCell!15654)) (size!40680 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83221)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83223 0))(
  ( (array!83224 (arr!40144 (Array (_ BitVec 32) (_ BitVec 64))) (size!40681 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83223)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271873 (= res!846207 (and (= (size!40680 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40681 _keys!1364) (size!40680 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271874 () Bool)

(declare-fun res!846208 () Bool)

(assert (=> b!1271874 (=> (not res!846208) (not e!725419))))

(declare-datatypes ((List!28705 0))(
  ( (Nil!28702) (Cons!28701 (h!29910 (_ BitVec 64)) (t!42241 List!28705)) )
))
(declare-fun arrayNoDuplicates!0 (array!83223 (_ BitVec 32) List!28705) Bool)

(assert (=> b!1271874 (= res!846208 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28702))))

(declare-fun b!1271875 () Bool)

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1271875 (= e!725419 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40681 _keys!1364)) (bvslt from!1698 (size!40681 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000) (bvsge (bvsub (size!40681 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698)) (bvsub (size!40681 _keys!1364) from!1698))))))

(declare-fun b!1271876 () Bool)

(declare-fun res!846209 () Bool)

(assert (=> b!1271876 (=> (not res!846209) (not e!725419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83223 (_ BitVec 32)) Bool)

(assert (=> b!1271876 (= res!846209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271877 () Bool)

(declare-fun e!725423 () Bool)

(declare-fun e!725420 () Bool)

(assert (=> b!1271877 (= e!725423 (and e!725420 mapRes!51103))))

(declare-fun condMapEmpty!51103 () Bool)

(declare-fun mapDefault!51103 () ValueCell!15654)

(assert (=> b!1271877 (= condMapEmpty!51103 (= (arr!40143 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15654)) mapDefault!51103)))))

(declare-fun b!1271878 () Bool)

(declare-fun tp_is_empty!33015 () Bool)

(assert (=> b!1271878 (= e!725420 tp_is_empty!33015)))

(declare-fun res!846206 () Bool)

(assert (=> start!107362 (=> (not res!846206) (not e!725419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107362 (= res!846206 (validMask!0 mask!1730))))

(assert (=> start!107362 e!725419))

(declare-fun array_inv!30473 (array!83221) Bool)

(assert (=> start!107362 (and (array_inv!30473 _values!1134) e!725423)))

(assert (=> start!107362 true))

(declare-fun array_inv!30474 (array!83223) Bool)

(assert (=> start!107362 (array_inv!30474 _keys!1364)))

(declare-fun b!1271879 () Bool)

(declare-fun e!725421 () Bool)

(assert (=> b!1271879 (= e!725421 tp_is_empty!33015)))

(declare-fun mapNonEmpty!51103 () Bool)

(declare-fun tp!97445 () Bool)

(assert (=> mapNonEmpty!51103 (= mapRes!51103 (and tp!97445 e!725421))))

(declare-fun mapValue!51103 () ValueCell!15654)

(declare-fun mapRest!51103 () (Array (_ BitVec 32) ValueCell!15654))

(declare-fun mapKey!51103 () (_ BitVec 32))

(assert (=> mapNonEmpty!51103 (= (arr!40143 _values!1134) (store mapRest!51103 mapKey!51103 mapValue!51103))))

(assert (= (and start!107362 res!846206) b!1271873))

(assert (= (and b!1271873 res!846207) b!1271876))

(assert (= (and b!1271876 res!846209) b!1271874))

(assert (= (and b!1271874 res!846208) b!1271875))

(assert (= (and b!1271877 condMapEmpty!51103) mapIsEmpty!51103))

(assert (= (and b!1271877 (not condMapEmpty!51103)) mapNonEmpty!51103))

(get-info :version)

(assert (= (and mapNonEmpty!51103 ((_ is ValueCellFull!15654) mapValue!51103)) b!1271879))

(assert (= (and b!1271877 ((_ is ValueCellFull!15654) mapDefault!51103)) b!1271878))

(assert (= start!107362 b!1271877))

(declare-fun m!1169681 () Bool)

(assert (=> b!1271874 m!1169681))

(declare-fun m!1169683 () Bool)

(assert (=> b!1271876 m!1169683))

(declare-fun m!1169685 () Bool)

(assert (=> start!107362 m!1169685))

(declare-fun m!1169687 () Bool)

(assert (=> start!107362 m!1169687))

(declare-fun m!1169689 () Bool)

(assert (=> start!107362 m!1169689))

(declare-fun m!1169691 () Bool)

(assert (=> mapNonEmpty!51103 m!1169691))

(check-sat (not mapNonEmpty!51103) (not b!1271876) tp_is_empty!33015 (not start!107362) (not b!1271874))
(check-sat)
