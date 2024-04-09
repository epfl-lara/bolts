; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107296 () Bool)

(assert start!107296)

(declare-fun b!1271265 () Bool)

(declare-fun e!724926 () Bool)

(assert (=> b!1271265 (= e!724926 false)))

(declare-fun lt!574796 () Bool)

(declare-datatypes ((array!83109 0))(
  ( (array!83110 (arr!40087 (Array (_ BitVec 32) (_ BitVec 64))) (size!40624 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83109)

(declare-datatypes ((List!28684 0))(
  ( (Nil!28681) (Cons!28680 (h!29889 (_ BitVec 64)) (t!42220 List!28684)) )
))
(declare-fun arrayNoDuplicates!0 (array!83109 (_ BitVec 32) List!28684) Bool)

(assert (=> b!1271265 (= lt!574796 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28681))))

(declare-fun b!1271267 () Bool)

(declare-fun res!845895 () Bool)

(assert (=> b!1271267 (=> (not res!845895) (not e!724926))))

(declare-datatypes ((V!49125 0))(
  ( (V!49126 (val!16549 Int)) )
))
(declare-datatypes ((ValueCell!15621 0))(
  ( (ValueCellFull!15621 (v!19184 V!49125)) (EmptyCell!15621) )
))
(declare-datatypes ((array!83111 0))(
  ( (array!83112 (arr!40088 (Array (_ BitVec 32) ValueCell!15621)) (size!40625 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83111)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271267 (= res!845895 (and (= (size!40625 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40624 _keys!1364) (size!40625 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271268 () Bool)

(declare-fun e!724927 () Bool)

(declare-fun tp_is_empty!32949 () Bool)

(assert (=> b!1271268 (= e!724927 tp_is_empty!32949)))

(declare-fun b!1271269 () Bool)

(declare-fun e!724928 () Bool)

(assert (=> b!1271269 (= e!724928 tp_is_empty!32949)))

(declare-fun mapIsEmpty!51004 () Bool)

(declare-fun mapRes!51004 () Bool)

(assert (=> mapIsEmpty!51004 mapRes!51004))

(declare-fun b!1271266 () Bool)

(declare-fun e!724925 () Bool)

(assert (=> b!1271266 (= e!724925 (and e!724927 mapRes!51004))))

(declare-fun condMapEmpty!51004 () Bool)

(declare-fun mapDefault!51004 () ValueCell!15621)

(assert (=> b!1271266 (= condMapEmpty!51004 (= (arr!40088 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15621)) mapDefault!51004)))))

(declare-fun res!845896 () Bool)

(assert (=> start!107296 (=> (not res!845896) (not e!724926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107296 (= res!845896 (validMask!0 mask!1730))))

(assert (=> start!107296 e!724926))

(declare-fun array_inv!30433 (array!83111) Bool)

(assert (=> start!107296 (and (array_inv!30433 _values!1134) e!724925)))

(assert (=> start!107296 true))

(declare-fun array_inv!30434 (array!83109) Bool)

(assert (=> start!107296 (array_inv!30434 _keys!1364)))

(declare-fun b!1271270 () Bool)

(declare-fun res!845897 () Bool)

(assert (=> b!1271270 (=> (not res!845897) (not e!724926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83109 (_ BitVec 32)) Bool)

(assert (=> b!1271270 (= res!845897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!51004 () Bool)

(declare-fun tp!97346 () Bool)

(assert (=> mapNonEmpty!51004 (= mapRes!51004 (and tp!97346 e!724928))))

(declare-fun mapKey!51004 () (_ BitVec 32))

(declare-fun mapValue!51004 () ValueCell!15621)

(declare-fun mapRest!51004 () (Array (_ BitVec 32) ValueCell!15621))

(assert (=> mapNonEmpty!51004 (= (arr!40088 _values!1134) (store mapRest!51004 mapKey!51004 mapValue!51004))))

(assert (= (and start!107296 res!845896) b!1271267))

(assert (= (and b!1271267 res!845895) b!1271270))

(assert (= (and b!1271270 res!845897) b!1271265))

(assert (= (and b!1271266 condMapEmpty!51004) mapIsEmpty!51004))

(assert (= (and b!1271266 (not condMapEmpty!51004)) mapNonEmpty!51004))

(get-info :version)

(assert (= (and mapNonEmpty!51004 ((_ is ValueCellFull!15621) mapValue!51004)) b!1271269))

(assert (= (and b!1271266 ((_ is ValueCellFull!15621) mapDefault!51004)) b!1271268))

(assert (= start!107296 b!1271266))

(declare-fun m!1169285 () Bool)

(assert (=> b!1271265 m!1169285))

(declare-fun m!1169287 () Bool)

(assert (=> start!107296 m!1169287))

(declare-fun m!1169289 () Bool)

(assert (=> start!107296 m!1169289))

(declare-fun m!1169291 () Bool)

(assert (=> start!107296 m!1169291))

(declare-fun m!1169293 () Bool)

(assert (=> b!1271270 m!1169293))

(declare-fun m!1169295 () Bool)

(assert (=> mapNonEmpty!51004 m!1169295))

(check-sat (not start!107296) tp_is_empty!32949 (not b!1271265) (not mapNonEmpty!51004) (not b!1271270))
(check-sat)
