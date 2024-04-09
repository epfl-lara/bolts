; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107224 () Bool)

(assert start!107224)

(declare-fun res!845572 () Bool)

(declare-fun e!724387 () Bool)

(assert (=> start!107224 (=> (not res!845572) (not e!724387))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107224 (= res!845572 (validMask!0 mask!1730))))

(assert (=> start!107224 e!724387))

(declare-datatypes ((V!49029 0))(
  ( (V!49030 (val!16513 Int)) )
))
(declare-datatypes ((ValueCell!15585 0))(
  ( (ValueCellFull!15585 (v!19148 V!49029)) (EmptyCell!15585) )
))
(declare-datatypes ((array!82977 0))(
  ( (array!82978 (arr!40021 (Array (_ BitVec 32) ValueCell!15585)) (size!40558 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82977)

(declare-fun e!724384 () Bool)

(declare-fun array_inv!30391 (array!82977) Bool)

(assert (=> start!107224 (and (array_inv!30391 _values!1134) e!724384)))

(assert (=> start!107224 true))

(declare-datatypes ((array!82979 0))(
  ( (array!82980 (arr!40022 (Array (_ BitVec 32) (_ BitVec 64))) (size!40559 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82979)

(declare-fun array_inv!30392 (array!82979) Bool)

(assert (=> start!107224 (array_inv!30392 _keys!1364)))

(declare-fun mapNonEmpty!50896 () Bool)

(declare-fun mapRes!50896 () Bool)

(declare-fun tp!97238 () Bool)

(declare-fun e!724386 () Bool)

(assert (=> mapNonEmpty!50896 (= mapRes!50896 (and tp!97238 e!724386))))

(declare-fun mapValue!50896 () ValueCell!15585)

(declare-fun mapKey!50896 () (_ BitVec 32))

(declare-fun mapRest!50896 () (Array (_ BitVec 32) ValueCell!15585))

(assert (=> mapNonEmpty!50896 (= (arr!40021 _values!1134) (store mapRest!50896 mapKey!50896 mapValue!50896))))

(declare-fun b!1270617 () Bool)

(assert (=> b!1270617 (= e!724387 false)))

(declare-fun lt!574688 () Bool)

(declare-datatypes ((List!28660 0))(
  ( (Nil!28657) (Cons!28656 (h!29865 (_ BitVec 64)) (t!42196 List!28660)) )
))
(declare-fun arrayNoDuplicates!0 (array!82979 (_ BitVec 32) List!28660) Bool)

(assert (=> b!1270617 (= lt!574688 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28657))))

(declare-fun b!1270618 () Bool)

(declare-fun res!845573 () Bool)

(assert (=> b!1270618 (=> (not res!845573) (not e!724387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82979 (_ BitVec 32)) Bool)

(assert (=> b!1270618 (= res!845573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270619 () Bool)

(declare-fun res!845571 () Bool)

(assert (=> b!1270619 (=> (not res!845571) (not e!724387))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270619 (= res!845571 (and (= (size!40558 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40559 _keys!1364) (size!40558 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!50896 () Bool)

(assert (=> mapIsEmpty!50896 mapRes!50896))

(declare-fun b!1270620 () Bool)

(declare-fun e!724388 () Bool)

(declare-fun tp_is_empty!32877 () Bool)

(assert (=> b!1270620 (= e!724388 tp_is_empty!32877)))

(declare-fun b!1270621 () Bool)

(assert (=> b!1270621 (= e!724386 tp_is_empty!32877)))

(declare-fun b!1270622 () Bool)

(assert (=> b!1270622 (= e!724384 (and e!724388 mapRes!50896))))

(declare-fun condMapEmpty!50896 () Bool)

(declare-fun mapDefault!50896 () ValueCell!15585)

(assert (=> b!1270622 (= condMapEmpty!50896 (= (arr!40021 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15585)) mapDefault!50896)))))

(assert (= (and start!107224 res!845572) b!1270619))

(assert (= (and b!1270619 res!845571) b!1270618))

(assert (= (and b!1270618 res!845573) b!1270617))

(assert (= (and b!1270622 condMapEmpty!50896) mapIsEmpty!50896))

(assert (= (and b!1270622 (not condMapEmpty!50896)) mapNonEmpty!50896))

(get-info :version)

(assert (= (and mapNonEmpty!50896 ((_ is ValueCellFull!15585) mapValue!50896)) b!1270621))

(assert (= (and b!1270622 ((_ is ValueCellFull!15585) mapDefault!50896)) b!1270620))

(assert (= start!107224 b!1270622))

(declare-fun m!1168853 () Bool)

(assert (=> start!107224 m!1168853))

(declare-fun m!1168855 () Bool)

(assert (=> start!107224 m!1168855))

(declare-fun m!1168857 () Bool)

(assert (=> start!107224 m!1168857))

(declare-fun m!1168859 () Bool)

(assert (=> mapNonEmpty!50896 m!1168859))

(declare-fun m!1168861 () Bool)

(assert (=> b!1270617 m!1168861))

(declare-fun m!1168863 () Bool)

(assert (=> b!1270618 m!1168863))

(check-sat (not start!107224) (not mapNonEmpty!50896) (not b!1270618) (not b!1270617) tp_is_empty!32877)
(check-sat)
