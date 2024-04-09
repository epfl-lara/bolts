; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107248 () Bool)

(assert start!107248)

(declare-fun b!1270833 () Bool)

(declare-fun res!845681 () Bool)

(declare-fun e!724568 () Bool)

(assert (=> b!1270833 (=> (not res!845681) (not e!724568))))

(declare-datatypes ((array!83021 0))(
  ( (array!83022 (arr!40043 (Array (_ BitVec 32) (_ BitVec 64))) (size!40580 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83021)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83021 (_ BitVec 32)) Bool)

(assert (=> b!1270833 (= res!845681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270834 () Bool)

(declare-fun e!724565 () Bool)

(declare-fun e!724566 () Bool)

(declare-fun mapRes!50932 () Bool)

(assert (=> b!1270834 (= e!724565 (and e!724566 mapRes!50932))))

(declare-fun condMapEmpty!50932 () Bool)

(declare-datatypes ((V!49061 0))(
  ( (V!49062 (val!16525 Int)) )
))
(declare-datatypes ((ValueCell!15597 0))(
  ( (ValueCellFull!15597 (v!19160 V!49061)) (EmptyCell!15597) )
))
(declare-datatypes ((array!83023 0))(
  ( (array!83024 (arr!40044 (Array (_ BitVec 32) ValueCell!15597)) (size!40581 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83023)

(declare-fun mapDefault!50932 () ValueCell!15597)

(assert (=> b!1270834 (= condMapEmpty!50932 (= (arr!40044 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15597)) mapDefault!50932)))))

(declare-fun b!1270835 () Bool)

(assert (=> b!1270835 (= e!724568 false)))

(declare-fun lt!574724 () Bool)

(declare-datatypes ((List!28669 0))(
  ( (Nil!28666) (Cons!28665 (h!29874 (_ BitVec 64)) (t!42205 List!28669)) )
))
(declare-fun arrayNoDuplicates!0 (array!83021 (_ BitVec 32) List!28669) Bool)

(assert (=> b!1270835 (= lt!574724 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28666))))

(declare-fun b!1270836 () Bool)

(declare-fun e!724567 () Bool)

(declare-fun tp_is_empty!32901 () Bool)

(assert (=> b!1270836 (= e!724567 tp_is_empty!32901)))

(declare-fun b!1270837 () Bool)

(assert (=> b!1270837 (= e!724566 tp_is_empty!32901)))

(declare-fun mapIsEmpty!50932 () Bool)

(assert (=> mapIsEmpty!50932 mapRes!50932))

(declare-fun b!1270838 () Bool)

(declare-fun res!845679 () Bool)

(assert (=> b!1270838 (=> (not res!845679) (not e!724568))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270838 (= res!845679 (and (= (size!40581 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40580 _keys!1364) (size!40581 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50932 () Bool)

(declare-fun tp!97274 () Bool)

(assert (=> mapNonEmpty!50932 (= mapRes!50932 (and tp!97274 e!724567))))

(declare-fun mapKey!50932 () (_ BitVec 32))

(declare-fun mapValue!50932 () ValueCell!15597)

(declare-fun mapRest!50932 () (Array (_ BitVec 32) ValueCell!15597))

(assert (=> mapNonEmpty!50932 (= (arr!40044 _values!1134) (store mapRest!50932 mapKey!50932 mapValue!50932))))

(declare-fun res!845680 () Bool)

(assert (=> start!107248 (=> (not res!845680) (not e!724568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107248 (= res!845680 (validMask!0 mask!1730))))

(assert (=> start!107248 e!724568))

(declare-fun array_inv!30403 (array!83023) Bool)

(assert (=> start!107248 (and (array_inv!30403 _values!1134) e!724565)))

(assert (=> start!107248 true))

(declare-fun array_inv!30404 (array!83021) Bool)

(assert (=> start!107248 (array_inv!30404 _keys!1364)))

(assert (= (and start!107248 res!845680) b!1270838))

(assert (= (and b!1270838 res!845679) b!1270833))

(assert (= (and b!1270833 res!845681) b!1270835))

(assert (= (and b!1270834 condMapEmpty!50932) mapIsEmpty!50932))

(assert (= (and b!1270834 (not condMapEmpty!50932)) mapNonEmpty!50932))

(get-info :version)

(assert (= (and mapNonEmpty!50932 ((_ is ValueCellFull!15597) mapValue!50932)) b!1270836))

(assert (= (and b!1270834 ((_ is ValueCellFull!15597) mapDefault!50932)) b!1270837))

(assert (= start!107248 b!1270834))

(declare-fun m!1168997 () Bool)

(assert (=> b!1270833 m!1168997))

(declare-fun m!1168999 () Bool)

(assert (=> b!1270835 m!1168999))

(declare-fun m!1169001 () Bool)

(assert (=> mapNonEmpty!50932 m!1169001))

(declare-fun m!1169003 () Bool)

(assert (=> start!107248 m!1169003))

(declare-fun m!1169005 () Bool)

(assert (=> start!107248 m!1169005))

(declare-fun m!1169007 () Bool)

(assert (=> start!107248 m!1169007))

(check-sat (not b!1270835) (not b!1270833) tp_is_empty!32901 (not start!107248) (not mapNonEmpty!50932))
(check-sat)
