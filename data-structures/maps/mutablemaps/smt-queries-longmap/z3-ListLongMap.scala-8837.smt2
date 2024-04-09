; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107284 () Bool)

(assert start!107284)

(declare-fun b!1271157 () Bool)

(declare-fun e!724838 () Bool)

(assert (=> b!1271157 (= e!724838 false)))

(declare-fun lt!574778 () Bool)

(declare-datatypes ((array!83087 0))(
  ( (array!83088 (arr!40076 (Array (_ BitVec 32) (_ BitVec 64))) (size!40613 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83087)

(declare-datatypes ((List!28681 0))(
  ( (Nil!28678) (Cons!28677 (h!29886 (_ BitVec 64)) (t!42217 List!28681)) )
))
(declare-fun arrayNoDuplicates!0 (array!83087 (_ BitVec 32) List!28681) Bool)

(assert (=> b!1271157 (= lt!574778 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28678))))

(declare-fun res!845841 () Bool)

(assert (=> start!107284 (=> (not res!845841) (not e!724838))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107284 (= res!845841 (validMask!0 mask!1730))))

(assert (=> start!107284 e!724838))

(declare-datatypes ((V!49109 0))(
  ( (V!49110 (val!16543 Int)) )
))
(declare-datatypes ((ValueCell!15615 0))(
  ( (ValueCellFull!15615 (v!19178 V!49109)) (EmptyCell!15615) )
))
(declare-datatypes ((array!83089 0))(
  ( (array!83090 (arr!40077 (Array (_ BitVec 32) ValueCell!15615)) (size!40614 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83089)

(declare-fun e!724836 () Bool)

(declare-fun array_inv!30427 (array!83089) Bool)

(assert (=> start!107284 (and (array_inv!30427 _values!1134) e!724836)))

(assert (=> start!107284 true))

(declare-fun array_inv!30428 (array!83087) Bool)

(assert (=> start!107284 (array_inv!30428 _keys!1364)))

(declare-fun mapNonEmpty!50986 () Bool)

(declare-fun mapRes!50986 () Bool)

(declare-fun tp!97328 () Bool)

(declare-fun e!724837 () Bool)

(assert (=> mapNonEmpty!50986 (= mapRes!50986 (and tp!97328 e!724837))))

(declare-fun mapRest!50986 () (Array (_ BitVec 32) ValueCell!15615))

(declare-fun mapValue!50986 () ValueCell!15615)

(declare-fun mapKey!50986 () (_ BitVec 32))

(assert (=> mapNonEmpty!50986 (= (arr!40077 _values!1134) (store mapRest!50986 mapKey!50986 mapValue!50986))))

(declare-fun mapIsEmpty!50986 () Bool)

(assert (=> mapIsEmpty!50986 mapRes!50986))

(declare-fun b!1271158 () Bool)

(declare-fun res!845843 () Bool)

(assert (=> b!1271158 (=> (not res!845843) (not e!724838))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271158 (= res!845843 (and (= (size!40614 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40613 _keys!1364) (size!40614 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271159 () Bool)

(declare-fun e!724834 () Bool)

(assert (=> b!1271159 (= e!724836 (and e!724834 mapRes!50986))))

(declare-fun condMapEmpty!50986 () Bool)

(declare-fun mapDefault!50986 () ValueCell!15615)

(assert (=> b!1271159 (= condMapEmpty!50986 (= (arr!40077 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15615)) mapDefault!50986)))))

(declare-fun b!1271160 () Bool)

(declare-fun tp_is_empty!32937 () Bool)

(assert (=> b!1271160 (= e!724837 tp_is_empty!32937)))

(declare-fun b!1271161 () Bool)

(assert (=> b!1271161 (= e!724834 tp_is_empty!32937)))

(declare-fun b!1271162 () Bool)

(declare-fun res!845842 () Bool)

(assert (=> b!1271162 (=> (not res!845842) (not e!724838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83087 (_ BitVec 32)) Bool)

(assert (=> b!1271162 (= res!845842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(assert (= (and start!107284 res!845841) b!1271158))

(assert (= (and b!1271158 res!845843) b!1271162))

(assert (= (and b!1271162 res!845842) b!1271157))

(assert (= (and b!1271159 condMapEmpty!50986) mapIsEmpty!50986))

(assert (= (and b!1271159 (not condMapEmpty!50986)) mapNonEmpty!50986))

(get-info :version)

(assert (= (and mapNonEmpty!50986 ((_ is ValueCellFull!15615) mapValue!50986)) b!1271160))

(assert (= (and b!1271159 ((_ is ValueCellFull!15615) mapDefault!50986)) b!1271161))

(assert (= start!107284 b!1271159))

(declare-fun m!1169213 () Bool)

(assert (=> b!1271157 m!1169213))

(declare-fun m!1169215 () Bool)

(assert (=> start!107284 m!1169215))

(declare-fun m!1169217 () Bool)

(assert (=> start!107284 m!1169217))

(declare-fun m!1169219 () Bool)

(assert (=> start!107284 m!1169219))

(declare-fun m!1169221 () Bool)

(assert (=> mapNonEmpty!50986 m!1169221))

(declare-fun m!1169223 () Bool)

(assert (=> b!1271162 m!1169223))

(check-sat (not mapNonEmpty!50986) (not start!107284) (not b!1271157) tp_is_empty!32937 (not b!1271162))
(check-sat)
