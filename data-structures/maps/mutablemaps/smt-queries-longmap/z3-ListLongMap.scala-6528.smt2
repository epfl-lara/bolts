; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83082 () Bool)

(assert start!83082)

(declare-fun mapNonEmpty!34927 () Bool)

(declare-fun mapRes!34927 () Bool)

(declare-fun tp!66496 () Bool)

(declare-fun e!546100 () Bool)

(assert (=> mapNonEmpty!34927 (= mapRes!34927 (and tp!66496 e!546100))))

(declare-datatypes ((V!34243 0))(
  ( (V!34244 (val!11023 Int)) )
))
(declare-datatypes ((ValueCell!10491 0))(
  ( (ValueCellFull!10491 (v!13582 V!34243)) (EmptyCell!10491) )
))
(declare-fun mapValue!34927 () ValueCell!10491)

(declare-datatypes ((array!59941 0))(
  ( (array!59942 (arr!28830 (Array (_ BitVec 32) ValueCell!10491)) (size!29310 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59941)

(declare-fun mapRest!34927 () (Array (_ BitVec 32) ValueCell!10491))

(declare-fun mapKey!34927 () (_ BitVec 32))

(assert (=> mapNonEmpty!34927 (= (arr!28830 _values!1425) (store mapRest!34927 mapKey!34927 mapValue!34927))))

(declare-fun b!968780 () Bool)

(declare-fun res!648599 () Bool)

(declare-fun e!546099 () Bool)

(assert (=> b!968780 (=> (not res!648599) (not e!546099))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!59943 0))(
  ( (array!59944 (arr!28831 (Array (_ BitVec 32) (_ BitVec 64))) (size!29311 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59943)

(assert (=> b!968780 (= res!648599 (and (= (size!29310 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29311 _keys!1717) (size!29310 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968781 () Bool)

(declare-fun e!546102 () Bool)

(declare-fun e!546098 () Bool)

(assert (=> b!968781 (= e!546102 (and e!546098 mapRes!34927))))

(declare-fun condMapEmpty!34927 () Bool)

(declare-fun mapDefault!34927 () ValueCell!10491)

(assert (=> b!968781 (= condMapEmpty!34927 (= (arr!28830 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10491)) mapDefault!34927)))))

(declare-fun b!968782 () Bool)

(declare-fun tp_is_empty!21945 () Bool)

(assert (=> b!968782 (= e!546098 tp_is_empty!21945)))

(declare-fun mapIsEmpty!34927 () Bool)

(assert (=> mapIsEmpty!34927 mapRes!34927))

(declare-fun b!968783 () Bool)

(assert (=> b!968783 (= e!546099 false)))

(declare-fun lt!431512 () Bool)

(declare-datatypes ((List!20126 0))(
  ( (Nil!20123) (Cons!20122 (h!21284 (_ BitVec 64)) (t!28497 List!20126)) )
))
(declare-fun arrayNoDuplicates!0 (array!59943 (_ BitVec 32) List!20126) Bool)

(assert (=> b!968783 (= lt!431512 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20123))))

(declare-fun res!648600 () Bool)

(assert (=> start!83082 (=> (not res!648600) (not e!546099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83082 (= res!648600 (validMask!0 mask!2147))))

(assert (=> start!83082 e!546099))

(assert (=> start!83082 true))

(declare-fun array_inv!22213 (array!59941) Bool)

(assert (=> start!83082 (and (array_inv!22213 _values!1425) e!546102)))

(declare-fun array_inv!22214 (array!59943) Bool)

(assert (=> start!83082 (array_inv!22214 _keys!1717)))

(declare-fun b!968784 () Bool)

(declare-fun res!648601 () Bool)

(assert (=> b!968784 (=> (not res!648601) (not e!546099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59943 (_ BitVec 32)) Bool)

(assert (=> b!968784 (= res!648601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!968785 () Bool)

(assert (=> b!968785 (= e!546100 tp_is_empty!21945)))

(assert (= (and start!83082 res!648600) b!968780))

(assert (= (and b!968780 res!648599) b!968784))

(assert (= (and b!968784 res!648601) b!968783))

(assert (= (and b!968781 condMapEmpty!34927) mapIsEmpty!34927))

(assert (= (and b!968781 (not condMapEmpty!34927)) mapNonEmpty!34927))

(get-info :version)

(assert (= (and mapNonEmpty!34927 ((_ is ValueCellFull!10491) mapValue!34927)) b!968785))

(assert (= (and b!968781 ((_ is ValueCellFull!10491) mapDefault!34927)) b!968782))

(assert (= start!83082 b!968781))

(declare-fun m!897059 () Bool)

(assert (=> mapNonEmpty!34927 m!897059))

(declare-fun m!897061 () Bool)

(assert (=> b!968783 m!897061))

(declare-fun m!897063 () Bool)

(assert (=> start!83082 m!897063))

(declare-fun m!897065 () Bool)

(assert (=> start!83082 m!897065))

(declare-fun m!897067 () Bool)

(assert (=> start!83082 m!897067))

(declare-fun m!897069 () Bool)

(assert (=> b!968784 m!897069))

(check-sat (not start!83082) (not b!968783) tp_is_empty!21945 (not mapNonEmpty!34927) (not b!968784))
(check-sat)
