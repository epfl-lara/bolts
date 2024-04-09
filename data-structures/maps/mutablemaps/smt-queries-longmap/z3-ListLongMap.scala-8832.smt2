; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107254 () Bool)

(assert start!107254)

(declare-fun res!845706 () Bool)

(declare-fun e!724610 () Bool)

(assert (=> start!107254 (=> (not res!845706) (not e!724610))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107254 (= res!845706 (validMask!0 mask!1730))))

(assert (=> start!107254 e!724610))

(declare-datatypes ((V!49069 0))(
  ( (V!49070 (val!16528 Int)) )
))
(declare-datatypes ((ValueCell!15600 0))(
  ( (ValueCellFull!15600 (v!19163 V!49069)) (EmptyCell!15600) )
))
(declare-datatypes ((array!83033 0))(
  ( (array!83034 (arr!40049 (Array (_ BitVec 32) ValueCell!15600)) (size!40586 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83033)

(declare-fun e!724609 () Bool)

(declare-fun array_inv!30407 (array!83033) Bool)

(assert (=> start!107254 (and (array_inv!30407 _values!1134) e!724609)))

(assert (=> start!107254 true))

(declare-datatypes ((array!83035 0))(
  ( (array!83036 (arr!40050 (Array (_ BitVec 32) (_ BitVec 64))) (size!40587 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83035)

(declare-fun array_inv!30408 (array!83035) Bool)

(assert (=> start!107254 (array_inv!30408 _keys!1364)))

(declare-fun b!1270887 () Bool)

(declare-fun e!724611 () Bool)

(declare-fun mapRes!50941 () Bool)

(assert (=> b!1270887 (= e!724609 (and e!724611 mapRes!50941))))

(declare-fun condMapEmpty!50941 () Bool)

(declare-fun mapDefault!50941 () ValueCell!15600)

(assert (=> b!1270887 (= condMapEmpty!50941 (= (arr!40049 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15600)) mapDefault!50941)))))

(declare-fun mapIsEmpty!50941 () Bool)

(assert (=> mapIsEmpty!50941 mapRes!50941))

(declare-fun b!1270888 () Bool)

(assert (=> b!1270888 (= e!724610 false)))

(declare-fun lt!574733 () Bool)

(declare-datatypes ((List!28672 0))(
  ( (Nil!28669) (Cons!28668 (h!29877 (_ BitVec 64)) (t!42208 List!28672)) )
))
(declare-fun arrayNoDuplicates!0 (array!83035 (_ BitVec 32) List!28672) Bool)

(assert (=> b!1270888 (= lt!574733 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28669))))

(declare-fun b!1270889 () Bool)

(declare-fun res!845708 () Bool)

(assert (=> b!1270889 (=> (not res!845708) (not e!724610))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270889 (= res!845708 (and (= (size!40586 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40587 _keys!1364) (size!40586 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270890 () Bool)

(declare-fun tp_is_empty!32907 () Bool)

(assert (=> b!1270890 (= e!724611 tp_is_empty!32907)))

(declare-fun b!1270891 () Bool)

(declare-fun res!845707 () Bool)

(assert (=> b!1270891 (=> (not res!845707) (not e!724610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83035 (_ BitVec 32)) Bool)

(assert (=> b!1270891 (= res!845707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270892 () Bool)

(declare-fun e!724612 () Bool)

(assert (=> b!1270892 (= e!724612 tp_is_empty!32907)))

(declare-fun mapNonEmpty!50941 () Bool)

(declare-fun tp!97283 () Bool)

(assert (=> mapNonEmpty!50941 (= mapRes!50941 (and tp!97283 e!724612))))

(declare-fun mapValue!50941 () ValueCell!15600)

(declare-fun mapKey!50941 () (_ BitVec 32))

(declare-fun mapRest!50941 () (Array (_ BitVec 32) ValueCell!15600))

(assert (=> mapNonEmpty!50941 (= (arr!40049 _values!1134) (store mapRest!50941 mapKey!50941 mapValue!50941))))

(assert (= (and start!107254 res!845706) b!1270889))

(assert (= (and b!1270889 res!845708) b!1270891))

(assert (= (and b!1270891 res!845707) b!1270888))

(assert (= (and b!1270887 condMapEmpty!50941) mapIsEmpty!50941))

(assert (= (and b!1270887 (not condMapEmpty!50941)) mapNonEmpty!50941))

(get-info :version)

(assert (= (and mapNonEmpty!50941 ((_ is ValueCellFull!15600) mapValue!50941)) b!1270892))

(assert (= (and b!1270887 ((_ is ValueCellFull!15600) mapDefault!50941)) b!1270890))

(assert (= start!107254 b!1270887))

(declare-fun m!1169033 () Bool)

(assert (=> start!107254 m!1169033))

(declare-fun m!1169035 () Bool)

(assert (=> start!107254 m!1169035))

(declare-fun m!1169037 () Bool)

(assert (=> start!107254 m!1169037))

(declare-fun m!1169039 () Bool)

(assert (=> b!1270888 m!1169039))

(declare-fun m!1169041 () Bool)

(assert (=> b!1270891 m!1169041))

(declare-fun m!1169043 () Bool)

(assert (=> mapNonEmpty!50941 m!1169043))

(check-sat tp_is_empty!32907 (not mapNonEmpty!50941) (not start!107254) (not b!1270891) (not b!1270888))
(check-sat)
