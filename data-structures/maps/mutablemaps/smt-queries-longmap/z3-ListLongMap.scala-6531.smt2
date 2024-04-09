; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83100 () Bool)

(assert start!83100)

(declare-fun b!968943 () Bool)

(declare-fun res!648680 () Bool)

(declare-fun e!546236 () Bool)

(assert (=> b!968943 (=> (not res!648680) (not e!546236))))

(declare-datatypes ((array!59975 0))(
  ( (array!59976 (arr!28847 (Array (_ BitVec 32) (_ BitVec 64))) (size!29327 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59975)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59975 (_ BitVec 32)) Bool)

(assert (=> b!968943 (= res!648680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968944 () Bool)

(assert (=> b!968944 (= e!546236 false)))

(declare-fun lt!431539 () Bool)

(declare-datatypes ((List!20133 0))(
  ( (Nil!20130) (Cons!20129 (h!21291 (_ BitVec 64)) (t!28504 List!20133)) )
))
(declare-fun arrayNoDuplicates!0 (array!59975 (_ BitVec 32) List!20133) Bool)

(assert (=> b!968944 (= lt!431539 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20130))))

(declare-fun b!968945 () Bool)

(declare-fun e!546237 () Bool)

(declare-fun e!546235 () Bool)

(declare-fun mapRes!34954 () Bool)

(assert (=> b!968945 (= e!546237 (and e!546235 mapRes!34954))))

(declare-fun condMapEmpty!34954 () Bool)

(declare-datatypes ((V!34267 0))(
  ( (V!34268 (val!11032 Int)) )
))
(declare-datatypes ((ValueCell!10500 0))(
  ( (ValueCellFull!10500 (v!13591 V!34267)) (EmptyCell!10500) )
))
(declare-datatypes ((array!59977 0))(
  ( (array!59978 (arr!28848 (Array (_ BitVec 32) ValueCell!10500)) (size!29328 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59977)

(declare-fun mapDefault!34954 () ValueCell!10500)

(assert (=> b!968945 (= condMapEmpty!34954 (= (arr!28848 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10500)) mapDefault!34954)))))

(declare-fun b!968946 () Bool)

(declare-fun tp_is_empty!21963 () Bool)

(assert (=> b!968946 (= e!546235 tp_is_empty!21963)))

(declare-fun mapIsEmpty!34954 () Bool)

(assert (=> mapIsEmpty!34954 mapRes!34954))

(declare-fun b!968942 () Bool)

(declare-fun res!648681 () Bool)

(assert (=> b!968942 (=> (not res!648681) (not e!546236))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968942 (= res!648681 (and (= (size!29328 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29327 _keys!1717) (size!29328 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!648682 () Bool)

(assert (=> start!83100 (=> (not res!648682) (not e!546236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83100 (= res!648682 (validMask!0 mask!2147))))

(assert (=> start!83100 e!546236))

(assert (=> start!83100 true))

(declare-fun array_inv!22227 (array!59977) Bool)

(assert (=> start!83100 (and (array_inv!22227 _values!1425) e!546237)))

(declare-fun array_inv!22228 (array!59975) Bool)

(assert (=> start!83100 (array_inv!22228 _keys!1717)))

(declare-fun mapNonEmpty!34954 () Bool)

(declare-fun tp!66523 () Bool)

(declare-fun e!546233 () Bool)

(assert (=> mapNonEmpty!34954 (= mapRes!34954 (and tp!66523 e!546233))))

(declare-fun mapValue!34954 () ValueCell!10500)

(declare-fun mapKey!34954 () (_ BitVec 32))

(declare-fun mapRest!34954 () (Array (_ BitVec 32) ValueCell!10500))

(assert (=> mapNonEmpty!34954 (= (arr!28848 _values!1425) (store mapRest!34954 mapKey!34954 mapValue!34954))))

(declare-fun b!968947 () Bool)

(assert (=> b!968947 (= e!546233 tp_is_empty!21963)))

(assert (= (and start!83100 res!648682) b!968942))

(assert (= (and b!968942 res!648681) b!968943))

(assert (= (and b!968943 res!648680) b!968944))

(assert (= (and b!968945 condMapEmpty!34954) mapIsEmpty!34954))

(assert (= (and b!968945 (not condMapEmpty!34954)) mapNonEmpty!34954))

(get-info :version)

(assert (= (and mapNonEmpty!34954 ((_ is ValueCellFull!10500) mapValue!34954)) b!968947))

(assert (= (and b!968945 ((_ is ValueCellFull!10500) mapDefault!34954)) b!968946))

(assert (= start!83100 b!968945))

(declare-fun m!897167 () Bool)

(assert (=> b!968943 m!897167))

(declare-fun m!897169 () Bool)

(assert (=> b!968944 m!897169))

(declare-fun m!897171 () Bool)

(assert (=> start!83100 m!897171))

(declare-fun m!897173 () Bool)

(assert (=> start!83100 m!897173))

(declare-fun m!897175 () Bool)

(assert (=> start!83100 m!897175))

(declare-fun m!897177 () Bool)

(assert (=> mapNonEmpty!34954 m!897177))

(check-sat (not b!968943) (not b!968944) (not mapNonEmpty!34954) tp_is_empty!21963 (not start!83100))
(check-sat)
