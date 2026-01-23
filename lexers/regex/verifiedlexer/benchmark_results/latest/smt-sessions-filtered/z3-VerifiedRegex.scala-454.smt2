; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13254 () Bool)

(assert start!13254)

(declare-fun b!128534 () Bool)

(declare-fun b_free!3963 () Bool)

(declare-fun b_next!3963 () Bool)

(assert (=> b!128534 (= b_free!3963 (not b_next!3963))))

(declare-fun tp!69974 () Bool)

(declare-fun b_and!6093 () Bool)

(assert (=> b!128534 (= tp!69974 b_and!6093)))

(declare-fun b!128531 () Bool)

(declare-fun e!73911 () Bool)

(assert (=> b!128531 (= e!73911 false)))

(declare-fun lt!38439 () Bool)

(declare-datatypes ((V!921 0))(
  ( (V!922 (val!802 Int)) )
))
(declare-datatypes ((array!1627 0))(
  ( (array!1628 (arr!754 (Array (_ BitVec 32) V!921)) (size!1948 (_ BitVec 32))) )
))
(declare-datatypes ((array!1629 0))(
  ( (array!1630 (arr!755 (Array (_ BitVec 32) (_ BitVec 64))) (size!1949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!870 0))(
  ( (LongMapFixedSize!871 (defaultEntry!774 Int) (mask!1414 (_ BitVec 32)) (extraKeys!681 (_ BitVec 32)) (zeroValue!691 V!921) (minValue!691 V!921) (_size!1000 (_ BitVec 32)) (_keys!726 array!1629) (_values!713 array!1627) (_vacant!496 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1723 0))(
  ( (Cell!1724 (v!13458 LongMapFixedSize!870)) )
))
(declare-datatypes ((MutLongMap!435 0))(
  ( (LongMap!435 (underlying!1066 Cell!1723)) (MutLongMapExt!434 (__x!2234 Int)) )
))
(declare-fun thiss!47465 () MutLongMap!435)

(declare-fun key!7065 () (_ BitVec 64))

(declare-fun contains!298 (MutLongMap!435 (_ BitVec 64)) Bool)

(assert (=> b!128531 (= lt!38439 (contains!298 thiss!47465 key!7065))))

(declare-fun lt!38438 () V!921)

(declare-fun apply!282 (MutLongMap!435 (_ BitVec 64)) V!921)

(assert (=> b!128531 (= lt!38438 (apply!282 thiss!47465 key!7065))))

(declare-fun b!128532 () Bool)

(declare-fun e!73914 () Bool)

(declare-fun e!73915 () Bool)

(assert (=> b!128532 (= e!73914 e!73915)))

(declare-fun mapNonEmpty!1681 () Bool)

(declare-fun mapRes!1681 () Bool)

(declare-fun tp!69975 () Bool)

(declare-fun tp_is_empty!1277 () Bool)

(assert (=> mapNonEmpty!1681 (= mapRes!1681 (and tp!69975 tp_is_empty!1277))))

(declare-fun mapRest!1681 () (Array (_ BitVec 32) V!921))

(declare-fun mapValue!1681 () V!921)

(declare-fun mapKey!1681 () (_ BitVec 32))

(assert (=> mapNonEmpty!1681 (= (arr!754 (_values!713 (v!13458 (underlying!1066 thiss!47465)))) (store mapRest!1681 mapKey!1681 mapValue!1681))))

(declare-fun mapIsEmpty!1681 () Bool)

(assert (=> mapIsEmpty!1681 mapRes!1681))

(declare-fun b!128533 () Bool)

(declare-fun res!59242 () Bool)

(assert (=> b!128533 (=> (not res!59242) (not e!73911))))

(get-info :version)

(assert (=> b!128533 (= res!59242 ((_ is LongMap!435) thiss!47465))))

(declare-fun e!73913 () Bool)

(declare-fun array_inv!545 (array!1629) Bool)

(declare-fun array_inv!546 (array!1627) Bool)

(assert (=> b!128534 (= e!73915 (and tp!69974 tp_is_empty!1277 (array_inv!545 (_keys!726 (v!13458 (underlying!1066 thiss!47465)))) (array_inv!546 (_values!713 (v!13458 (underlying!1066 thiss!47465)))) e!73913))))

(declare-fun res!59241 () Bool)

(assert (=> start!13254 (=> (not res!59241) (not e!73911))))

(declare-fun valid!391 (MutLongMap!435) Bool)

(assert (=> start!13254 (= res!59241 (valid!391 thiss!47465))))

(assert (=> start!13254 e!73911))

(declare-fun e!73910 () Bool)

(assert (=> start!13254 e!73910))

(assert (=> start!13254 true))

(declare-fun b!128535 () Bool)

(assert (=> b!128535 (= e!73910 e!73914)))

(declare-fun b!128536 () Bool)

(assert (=> b!128536 (= e!73913 (and tp_is_empty!1277 mapRes!1681))))

(declare-fun condMapEmpty!1681 () Bool)

(declare-fun mapDefault!1681 () V!921)

(assert (=> b!128536 (= condMapEmpty!1681 (= (arr!754 (_values!713 (v!13458 (underlying!1066 thiss!47465)))) ((as const (Array (_ BitVec 32) V!921)) mapDefault!1681)))))

(assert (= (and start!13254 res!59241) b!128533))

(assert (= (and b!128533 res!59242) b!128531))

(assert (= (and b!128536 condMapEmpty!1681) mapIsEmpty!1681))

(assert (= (and b!128536 (not condMapEmpty!1681)) mapNonEmpty!1681))

(assert (= b!128534 b!128536))

(assert (= b!128532 b!128534))

(assert (= b!128535 b!128532))

(assert (= (and start!13254 ((_ is LongMap!435) thiss!47465)) b!128535))

(declare-fun m!113181 () Bool)

(assert (=> b!128531 m!113181))

(declare-fun m!113183 () Bool)

(assert (=> b!128531 m!113183))

(declare-fun m!113185 () Bool)

(assert (=> mapNonEmpty!1681 m!113185))

(declare-fun m!113187 () Bool)

(assert (=> b!128534 m!113187))

(declare-fun m!113189 () Bool)

(assert (=> b!128534 m!113189))

(declare-fun m!113191 () Bool)

(assert (=> start!13254 m!113191))

(check-sat b_and!6093 (not b!128531) (not b_next!3963) tp_is_empty!1277 (not b!128534) (not start!13254) (not mapNonEmpty!1681))
(check-sat b_and!6093 (not b_next!3963))
