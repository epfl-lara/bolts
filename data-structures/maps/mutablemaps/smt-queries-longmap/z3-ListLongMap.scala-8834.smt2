; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107266 () Bool)

(assert start!107266)

(declare-fun b!1270995 () Bool)

(declare-fun res!845761 () Bool)

(declare-fun e!724701 () Bool)

(assert (=> b!1270995 (=> (not res!845761) (not e!724701))))

(declare-datatypes ((array!83053 0))(
  ( (array!83054 (arr!40059 (Array (_ BitVec 32) (_ BitVec 64))) (size!40596 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83053)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83053 (_ BitVec 32)) Bool)

(assert (=> b!1270995 (= res!845761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270996 () Bool)

(assert (=> b!1270996 (= e!724701 false)))

(declare-fun lt!574751 () Bool)

(declare-datatypes ((List!28675 0))(
  ( (Nil!28672) (Cons!28671 (h!29880 (_ BitVec 64)) (t!42211 List!28675)) )
))
(declare-fun arrayNoDuplicates!0 (array!83053 (_ BitVec 32) List!28675) Bool)

(assert (=> b!1270996 (= lt!574751 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28672))))

(declare-fun b!1270997 () Bool)

(declare-fun e!724700 () Bool)

(declare-fun e!724699 () Bool)

(declare-fun mapRes!50959 () Bool)

(assert (=> b!1270997 (= e!724700 (and e!724699 mapRes!50959))))

(declare-fun condMapEmpty!50959 () Bool)

(declare-datatypes ((V!49085 0))(
  ( (V!49086 (val!16534 Int)) )
))
(declare-datatypes ((ValueCell!15606 0))(
  ( (ValueCellFull!15606 (v!19169 V!49085)) (EmptyCell!15606) )
))
(declare-datatypes ((array!83055 0))(
  ( (array!83056 (arr!40060 (Array (_ BitVec 32) ValueCell!15606)) (size!40597 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83055)

(declare-fun mapDefault!50959 () ValueCell!15606)

(assert (=> b!1270997 (= condMapEmpty!50959 (= (arr!40060 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15606)) mapDefault!50959)))))

(declare-fun b!1270998 () Bool)

(declare-fun e!724703 () Bool)

(declare-fun tp_is_empty!32919 () Bool)

(assert (=> b!1270998 (= e!724703 tp_is_empty!32919)))

(declare-fun b!1270999 () Bool)

(assert (=> b!1270999 (= e!724699 tp_is_empty!32919)))

(declare-fun mapIsEmpty!50959 () Bool)

(assert (=> mapIsEmpty!50959 mapRes!50959))

(declare-fun b!1271000 () Bool)

(declare-fun res!845760 () Bool)

(assert (=> b!1271000 (=> (not res!845760) (not e!724701))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271000 (= res!845760 (and (= (size!40597 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40596 _keys!1364) (size!40597 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!845762 () Bool)

(assert (=> start!107266 (=> (not res!845762) (not e!724701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107266 (= res!845762 (validMask!0 mask!1730))))

(assert (=> start!107266 e!724701))

(declare-fun array_inv!30413 (array!83055) Bool)

(assert (=> start!107266 (and (array_inv!30413 _values!1134) e!724700)))

(assert (=> start!107266 true))

(declare-fun array_inv!30414 (array!83053) Bool)

(assert (=> start!107266 (array_inv!30414 _keys!1364)))

(declare-fun mapNonEmpty!50959 () Bool)

(declare-fun tp!97301 () Bool)

(assert (=> mapNonEmpty!50959 (= mapRes!50959 (and tp!97301 e!724703))))

(declare-fun mapKey!50959 () (_ BitVec 32))

(declare-fun mapRest!50959 () (Array (_ BitVec 32) ValueCell!15606))

(declare-fun mapValue!50959 () ValueCell!15606)

(assert (=> mapNonEmpty!50959 (= (arr!40060 _values!1134) (store mapRest!50959 mapKey!50959 mapValue!50959))))

(assert (= (and start!107266 res!845762) b!1271000))

(assert (= (and b!1271000 res!845760) b!1270995))

(assert (= (and b!1270995 res!845761) b!1270996))

(assert (= (and b!1270997 condMapEmpty!50959) mapIsEmpty!50959))

(assert (= (and b!1270997 (not condMapEmpty!50959)) mapNonEmpty!50959))

(get-info :version)

(assert (= (and mapNonEmpty!50959 ((_ is ValueCellFull!15606) mapValue!50959)) b!1270998))

(assert (= (and b!1270997 ((_ is ValueCellFull!15606) mapDefault!50959)) b!1270999))

(assert (= start!107266 b!1270997))

(declare-fun m!1169105 () Bool)

(assert (=> b!1270995 m!1169105))

(declare-fun m!1169107 () Bool)

(assert (=> b!1270996 m!1169107))

(declare-fun m!1169109 () Bool)

(assert (=> start!107266 m!1169109))

(declare-fun m!1169111 () Bool)

(assert (=> start!107266 m!1169111))

(declare-fun m!1169113 () Bool)

(assert (=> start!107266 m!1169113))

(declare-fun m!1169115 () Bool)

(assert (=> mapNonEmpty!50959 m!1169115))

(check-sat tp_is_empty!32919 (not start!107266) (not b!1270995) (not mapNonEmpty!50959) (not b!1270996))
(check-sat)
