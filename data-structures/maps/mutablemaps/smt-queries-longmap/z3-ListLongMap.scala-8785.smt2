; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106928 () Bool)

(assert start!106928)

(declare-fun b!1267907 () Bool)

(declare-fun e!722400 () Bool)

(declare-fun tp_is_empty!32625 () Bool)

(assert (=> b!1267907 (= e!722400 tp_is_empty!32625)))

(declare-datatypes ((V!48693 0))(
  ( (V!48694 (val!16387 Int)) )
))
(declare-datatypes ((ValueCell!15459 0))(
  ( (ValueCellFull!15459 (v!19021 V!48693)) (EmptyCell!15459) )
))
(declare-datatypes ((array!82501 0))(
  ( (array!82502 (arr!39788 (Array (_ BitVec 32) ValueCell!15459)) (size!40325 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82501)

(declare-fun e!722401 () Bool)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82503 0))(
  ( (array!82504 (arr!39789 (Array (_ BitVec 32) (_ BitVec 64))) (size!40326 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82503)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun b!1267908 () Bool)

(assert (=> b!1267908 (= e!722401 (and (= (size!40325 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40326 _keys!1364) (size!40325 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011) (not (= (size!40326 _keys!1364) (bvadd #b00000000000000000000000000000001 mask!1730)))))))

(declare-fun res!844059 () Bool)

(assert (=> start!106928 (=> (not res!844059) (not e!722401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106928 (= res!844059 (validMask!0 mask!1730))))

(assert (=> start!106928 e!722401))

(declare-fun e!722402 () Bool)

(declare-fun array_inv!30237 (array!82501) Bool)

(assert (=> start!106928 (and (array_inv!30237 _values!1134) e!722402)))

(assert (=> start!106928 true))

(declare-fun array_inv!30238 (array!82503) Bool)

(assert (=> start!106928 (array_inv!30238 _keys!1364)))

(declare-fun mapIsEmpty!50503 () Bool)

(declare-fun mapRes!50503 () Bool)

(assert (=> mapIsEmpty!50503 mapRes!50503))

(declare-fun mapNonEmpty!50503 () Bool)

(declare-fun tp!96683 () Bool)

(declare-fun e!722403 () Bool)

(assert (=> mapNonEmpty!50503 (= mapRes!50503 (and tp!96683 e!722403))))

(declare-fun mapRest!50503 () (Array (_ BitVec 32) ValueCell!15459))

(declare-fun mapKey!50503 () (_ BitVec 32))

(declare-fun mapValue!50503 () ValueCell!15459)

(assert (=> mapNonEmpty!50503 (= (arr!39788 _values!1134) (store mapRest!50503 mapKey!50503 mapValue!50503))))

(declare-fun b!1267909 () Bool)

(assert (=> b!1267909 (= e!722403 tp_is_empty!32625)))

(declare-fun b!1267910 () Bool)

(assert (=> b!1267910 (= e!722402 (and e!722400 mapRes!50503))))

(declare-fun condMapEmpty!50503 () Bool)

(declare-fun mapDefault!50503 () ValueCell!15459)

(assert (=> b!1267910 (= condMapEmpty!50503 (= (arr!39788 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15459)) mapDefault!50503)))))

(assert (= (and start!106928 res!844059) b!1267908))

(assert (= (and b!1267910 condMapEmpty!50503) mapIsEmpty!50503))

(assert (= (and b!1267910 (not condMapEmpty!50503)) mapNonEmpty!50503))

(get-info :version)

(assert (= (and mapNonEmpty!50503 ((_ is ValueCellFull!15459) mapValue!50503)) b!1267909))

(assert (= (and b!1267910 ((_ is ValueCellFull!15459) mapDefault!50503)) b!1267907))

(assert (= start!106928 b!1267910))

(declare-fun m!1166961 () Bool)

(assert (=> start!106928 m!1166961))

(declare-fun m!1166963 () Bool)

(assert (=> start!106928 m!1166963))

(declare-fun m!1166965 () Bool)

(assert (=> start!106928 m!1166965))

(declare-fun m!1166967 () Bool)

(assert (=> mapNonEmpty!50503 m!1166967))

(check-sat (not start!106928) (not mapNonEmpty!50503) tp_is_empty!32625)
(check-sat)
