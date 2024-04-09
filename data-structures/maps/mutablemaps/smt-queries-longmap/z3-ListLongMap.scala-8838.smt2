; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107290 () Bool)

(assert start!107290)

(declare-fun b!1271211 () Bool)

(declare-fun res!845869 () Bool)

(declare-fun e!724882 () Bool)

(assert (=> b!1271211 (=> (not res!845869) (not e!724882))))

(declare-datatypes ((V!49117 0))(
  ( (V!49118 (val!16546 Int)) )
))
(declare-datatypes ((ValueCell!15618 0))(
  ( (ValueCellFull!15618 (v!19181 V!49117)) (EmptyCell!15618) )
))
(declare-datatypes ((array!83097 0))(
  ( (array!83098 (arr!40081 (Array (_ BitVec 32) ValueCell!15618)) (size!40618 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83097)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83099 0))(
  ( (array!83100 (arr!40082 (Array (_ BitVec 32) (_ BitVec 64))) (size!40619 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83099)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271211 (= res!845869 (and (= (size!40618 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40619 _keys!1364) (size!40618 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271212 () Bool)

(assert (=> b!1271212 (= e!724882 false)))

(declare-fun lt!574787 () Bool)

(declare-datatypes ((List!28683 0))(
  ( (Nil!28680) (Cons!28679 (h!29888 (_ BitVec 64)) (t!42219 List!28683)) )
))
(declare-fun arrayNoDuplicates!0 (array!83099 (_ BitVec 32) List!28683) Bool)

(assert (=> b!1271212 (= lt!574787 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28680))))

(declare-fun res!845870 () Bool)

(assert (=> start!107290 (=> (not res!845870) (not e!724882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107290 (= res!845870 (validMask!0 mask!1730))))

(assert (=> start!107290 e!724882))

(declare-fun e!724883 () Bool)

(declare-fun array_inv!30431 (array!83097) Bool)

(assert (=> start!107290 (and (array_inv!30431 _values!1134) e!724883)))

(assert (=> start!107290 true))

(declare-fun array_inv!30432 (array!83099) Bool)

(assert (=> start!107290 (array_inv!30432 _keys!1364)))

(declare-fun b!1271213 () Bool)

(declare-fun e!724881 () Bool)

(declare-fun tp_is_empty!32943 () Bool)

(assert (=> b!1271213 (= e!724881 tp_is_empty!32943)))

(declare-fun b!1271214 () Bool)

(declare-fun e!724880 () Bool)

(declare-fun mapRes!50995 () Bool)

(assert (=> b!1271214 (= e!724883 (and e!724880 mapRes!50995))))

(declare-fun condMapEmpty!50995 () Bool)

(declare-fun mapDefault!50995 () ValueCell!15618)

(assert (=> b!1271214 (= condMapEmpty!50995 (= (arr!40081 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15618)) mapDefault!50995)))))

(declare-fun b!1271215 () Bool)

(assert (=> b!1271215 (= e!724880 tp_is_empty!32943)))

(declare-fun mapIsEmpty!50995 () Bool)

(assert (=> mapIsEmpty!50995 mapRes!50995))

(declare-fun b!1271216 () Bool)

(declare-fun res!845868 () Bool)

(assert (=> b!1271216 (=> (not res!845868) (not e!724882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83099 (_ BitVec 32)) Bool)

(assert (=> b!1271216 (= res!845868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50995 () Bool)

(declare-fun tp!97337 () Bool)

(assert (=> mapNonEmpty!50995 (= mapRes!50995 (and tp!97337 e!724881))))

(declare-fun mapRest!50995 () (Array (_ BitVec 32) ValueCell!15618))

(declare-fun mapValue!50995 () ValueCell!15618)

(declare-fun mapKey!50995 () (_ BitVec 32))

(assert (=> mapNonEmpty!50995 (= (arr!40081 _values!1134) (store mapRest!50995 mapKey!50995 mapValue!50995))))

(assert (= (and start!107290 res!845870) b!1271211))

(assert (= (and b!1271211 res!845869) b!1271216))

(assert (= (and b!1271216 res!845868) b!1271212))

(assert (= (and b!1271214 condMapEmpty!50995) mapIsEmpty!50995))

(assert (= (and b!1271214 (not condMapEmpty!50995)) mapNonEmpty!50995))

(get-info :version)

(assert (= (and mapNonEmpty!50995 ((_ is ValueCellFull!15618) mapValue!50995)) b!1271213))

(assert (= (and b!1271214 ((_ is ValueCellFull!15618) mapDefault!50995)) b!1271215))

(assert (= start!107290 b!1271214))

(declare-fun m!1169249 () Bool)

(assert (=> b!1271212 m!1169249))

(declare-fun m!1169251 () Bool)

(assert (=> start!107290 m!1169251))

(declare-fun m!1169253 () Bool)

(assert (=> start!107290 m!1169253))

(declare-fun m!1169255 () Bool)

(assert (=> start!107290 m!1169255))

(declare-fun m!1169257 () Bool)

(assert (=> b!1271216 m!1169257))

(declare-fun m!1169259 () Bool)

(assert (=> mapNonEmpty!50995 m!1169259))

(check-sat tp_is_empty!32943 (not start!107290) (not mapNonEmpty!50995) (not b!1271212) (not b!1271216))
(check-sat)
