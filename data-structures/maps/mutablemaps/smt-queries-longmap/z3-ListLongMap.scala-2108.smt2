; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35826 () Bool)

(assert start!35826)

(declare-fun b!359617 () Bool)

(declare-fun e!220300 () Bool)

(declare-fun tp_is_empty!8271 () Bool)

(assert (=> b!359617 (= e!220300 tp_is_empty!8271)))

(declare-fun b!359618 () Bool)

(declare-fun res!199961 () Bool)

(declare-fun e!220299 () Bool)

(assert (=> b!359618 (=> (not res!199961) (not e!220299))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359618 (= res!199961 (validKeyInArray!0 k0!1077))))

(declare-fun b!359619 () Bool)

(declare-fun e!220297 () Bool)

(declare-fun e!220298 () Bool)

(declare-fun mapRes!13914 () Bool)

(assert (=> b!359619 (= e!220297 (and e!220298 mapRes!13914))))

(declare-fun condMapEmpty!13914 () Bool)

(declare-datatypes ((V!12005 0))(
  ( (V!12006 (val!4180 Int)) )
))
(declare-datatypes ((ValueCell!3792 0))(
  ( (ValueCellFull!3792 (v!6370 V!12005)) (EmptyCell!3792) )
))
(declare-datatypes ((array!20063 0))(
  ( (array!20064 (arr!9522 (Array (_ BitVec 32) ValueCell!3792)) (size!9874 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20063)

(declare-fun mapDefault!13914 () ValueCell!3792)

(assert (=> b!359619 (= condMapEmpty!13914 (= (arr!9522 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3792)) mapDefault!13914)))))

(declare-fun b!359620 () Bool)

(declare-fun res!199960 () Bool)

(assert (=> b!359620 (=> (not res!199960) (not e!220299))))

(declare-datatypes ((array!20065 0))(
  ( (array!20066 (arr!9523 (Array (_ BitVec 32) (_ BitVec 64))) (size!9875 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20065)

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!359620 (= res!199960 (not (= (select (arr!9523 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!359621 () Bool)

(declare-fun res!199959 () Bool)

(assert (=> b!359621 (=> (not res!199959) (not e!220299))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20065 (_ BitVec 32)) Bool)

(assert (=> b!359621 (= res!199959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359622 () Bool)

(declare-fun res!199964 () Bool)

(assert (=> b!359622 (=> (not res!199964) (not e!220299))))

(assert (=> b!359622 (= res!199964 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9875 _keys!1456))))))

(declare-fun mapNonEmpty!13914 () Bool)

(declare-fun tp!27981 () Bool)

(assert (=> mapNonEmpty!13914 (= mapRes!13914 (and tp!27981 e!220300))))

(declare-fun mapValue!13914 () ValueCell!3792)

(declare-fun mapKey!13914 () (_ BitVec 32))

(declare-fun mapRest!13914 () (Array (_ BitVec 32) ValueCell!3792))

(assert (=> mapNonEmpty!13914 (= (arr!9522 _values!1208) (store mapRest!13914 mapKey!13914 mapValue!13914))))

(declare-fun b!359623 () Bool)

(declare-fun res!199966 () Bool)

(assert (=> b!359623 (=> (not res!199966) (not e!220299))))

(declare-datatypes ((List!5503 0))(
  ( (Nil!5500) (Cons!5499 (h!6355 (_ BitVec 64)) (t!10661 List!5503)) )
))
(declare-fun arrayNoDuplicates!0 (array!20065 (_ BitVec 32) List!5503) Bool)

(assert (=> b!359623 (= res!199966 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5500))))

(declare-fun res!199965 () Bool)

(assert (=> start!35826 (=> (not res!199965) (not e!220299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35826 (= res!199965 (validMask!0 mask!1842))))

(assert (=> start!35826 e!220299))

(assert (=> start!35826 tp_is_empty!8271))

(assert (=> start!35826 true))

(declare-fun array_inv!7012 (array!20065) Bool)

(assert (=> start!35826 (array_inv!7012 _keys!1456)))

(declare-fun array_inv!7013 (array!20063) Bool)

(assert (=> start!35826 (and (array_inv!7013 _values!1208) e!220297)))

(declare-fun b!359624 () Bool)

(declare-fun res!199963 () Bool)

(assert (=> b!359624 (=> (not res!199963) (not e!220299))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359624 (= res!199963 (and (= (size!9874 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9875 _keys!1456) (size!9874 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359625 () Bool)

(assert (=> b!359625 (= e!220298 tp_is_empty!8271)))

(declare-fun b!359626 () Bool)

(assert (=> b!359626 (= e!220299 (not true))))

(declare-fun arrayContainsKey!0 (array!20065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359626 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!12005)

(declare-datatypes ((Unit!11055 0))(
  ( (Unit!11056) )
))
(declare-fun lt!166354 () Unit!11055)

(declare-fun zeroValue!1150 () V!12005)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!44 (array!20065 array!20063 (_ BitVec 32) (_ BitVec 32) V!12005 V!12005 (_ BitVec 64) (_ BitVec 32)) Unit!11055)

(assert (=> b!359626 (= lt!166354 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!44 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun b!359627 () Bool)

(declare-fun res!199962 () Bool)

(assert (=> b!359627 (=> (not res!199962) (not e!220299))))

(assert (=> b!359627 (= res!199962 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13914 () Bool)

(assert (=> mapIsEmpty!13914 mapRes!13914))

(assert (= (and start!35826 res!199965) b!359624))

(assert (= (and b!359624 res!199963) b!359621))

(assert (= (and b!359621 res!199959) b!359623))

(assert (= (and b!359623 res!199966) b!359618))

(assert (= (and b!359618 res!199961) b!359622))

(assert (= (and b!359622 res!199964) b!359627))

(assert (= (and b!359627 res!199962) b!359620))

(assert (= (and b!359620 res!199960) b!359626))

(assert (= (and b!359619 condMapEmpty!13914) mapIsEmpty!13914))

(assert (= (and b!359619 (not condMapEmpty!13914)) mapNonEmpty!13914))

(get-info :version)

(assert (= (and mapNonEmpty!13914 ((_ is ValueCellFull!3792) mapValue!13914)) b!359617))

(assert (= (and b!359619 ((_ is ValueCellFull!3792) mapDefault!13914)) b!359625))

(assert (= start!35826 b!359619))

(declare-fun m!357031 () Bool)

(assert (=> mapNonEmpty!13914 m!357031))

(declare-fun m!357033 () Bool)

(assert (=> b!359618 m!357033))

(declare-fun m!357035 () Bool)

(assert (=> b!359627 m!357035))

(declare-fun m!357037 () Bool)

(assert (=> b!359621 m!357037))

(declare-fun m!357039 () Bool)

(assert (=> start!35826 m!357039))

(declare-fun m!357041 () Bool)

(assert (=> start!35826 m!357041))

(declare-fun m!357043 () Bool)

(assert (=> start!35826 m!357043))

(declare-fun m!357045 () Bool)

(assert (=> b!359626 m!357045))

(declare-fun m!357047 () Bool)

(assert (=> b!359626 m!357047))

(declare-fun m!357049 () Bool)

(assert (=> b!359620 m!357049))

(declare-fun m!357051 () Bool)

(assert (=> b!359623 m!357051))

(check-sat (not mapNonEmpty!13914) (not b!359618) (not start!35826) tp_is_empty!8271 (not b!359623) (not b!359626) (not b!359621) (not b!359627))
(check-sat)
