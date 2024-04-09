; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82984 () Bool)

(assert start!82984)

(declare-fun b_free!19083 () Bool)

(declare-fun b_next!19083 () Bool)

(assert (=> start!82984 (= b_free!19083 (not b_next!19083))))

(declare-fun tp!66379 () Bool)

(declare-fun b_and!30589 () Bool)

(assert (=> start!82984 (= tp!66379 b_and!30589)))

(declare-fun b!968072 () Bool)

(declare-fun res!648201 () Bool)

(declare-fun e!545599 () Bool)

(assert (=> b!968072 (=> (not res!648201) (not e!545599))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((array!59833 0))(
  ( (array!59834 (arr!28781 (Array (_ BitVec 32) (_ BitVec 64))) (size!29261 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59833)

(declare-datatypes ((V!34171 0))(
  ( (V!34172 (val!10996 Int)) )
))
(declare-fun minValue!1342 () V!34171)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10464 0))(
  ( (ValueCellFull!10464 (v!13554 V!34171)) (EmptyCell!10464) )
))
(declare-datatypes ((array!59835 0))(
  ( (array!59836 (arr!28782 (Array (_ BitVec 32) ValueCell!10464)) (size!29262 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59835)

(declare-fun zeroValue!1342 () V!34171)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14238 0))(
  ( (tuple2!14239 (_1!7129 (_ BitVec 64)) (_2!7129 V!34171)) )
))
(declare-datatypes ((List!20109 0))(
  ( (Nil!20106) (Cons!20105 (h!21267 tuple2!14238) (t!28480 List!20109)) )
))
(declare-datatypes ((ListLongMap!12949 0))(
  ( (ListLongMap!12950 (toList!6490 List!20109)) )
))
(declare-fun contains!5541 (ListLongMap!12949 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3675 (array!59833 array!59835 (_ BitVec 32) (_ BitVec 32) V!34171 V!34171 (_ BitVec 32) Int) ListLongMap!12949)

(assert (=> b!968072 (= res!648201 (contains!5541 (getCurrentListMap!3675 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28781 _keys!1686) i!803)))))

(declare-fun b!968073 () Bool)

(declare-fun e!545598 () Bool)

(declare-fun e!545594 () Bool)

(declare-fun mapRes!34831 () Bool)

(assert (=> b!968073 (= e!545598 (and e!545594 mapRes!34831))))

(declare-fun condMapEmpty!34831 () Bool)

(declare-fun mapDefault!34831 () ValueCell!10464)

(assert (=> b!968073 (= condMapEmpty!34831 (= (arr!28782 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10464)) mapDefault!34831)))))

(declare-fun b!968074 () Bool)

(declare-fun res!648206 () Bool)

(assert (=> b!968074 (=> (not res!648206) (not e!545599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59833 (_ BitVec 32)) Bool)

(assert (=> b!968074 (= res!648206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!648202 () Bool)

(assert (=> start!82984 (=> (not res!648202) (not e!545599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82984 (= res!648202 (validMask!0 mask!2110))))

(assert (=> start!82984 e!545599))

(assert (=> start!82984 true))

(declare-fun array_inv!22179 (array!59835) Bool)

(assert (=> start!82984 (and (array_inv!22179 _values!1400) e!545598)))

(declare-fun array_inv!22180 (array!59833) Bool)

(assert (=> start!82984 (array_inv!22180 _keys!1686)))

(assert (=> start!82984 tp!66379))

(declare-fun tp_is_empty!21891 () Bool)

(assert (=> start!82984 tp_is_empty!21891))

(declare-fun b!968075 () Bool)

(declare-fun res!648198 () Bool)

(assert (=> b!968075 (=> (not res!648198) (not e!545599))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!968075 (= res!648198 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29261 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29261 _keys!1686))))))

(declare-fun b!968076 () Bool)

(assert (=> b!968076 (= e!545594 tp_is_empty!21891)))

(declare-fun mapIsEmpty!34831 () Bool)

(assert (=> mapIsEmpty!34831 mapRes!34831))

(declare-fun mapNonEmpty!34831 () Bool)

(declare-fun tp!66378 () Bool)

(declare-fun e!545597 () Bool)

(assert (=> mapNonEmpty!34831 (= mapRes!34831 (and tp!66378 e!545597))))

(declare-fun mapValue!34831 () ValueCell!10464)

(declare-fun mapRest!34831 () (Array (_ BitVec 32) ValueCell!10464))

(declare-fun mapKey!34831 () (_ BitVec 32))

(assert (=> mapNonEmpty!34831 (= (arr!28782 _values!1400) (store mapRest!34831 mapKey!34831 mapValue!34831))))

(declare-fun b!968077 () Bool)

(declare-fun res!648203 () Bool)

(assert (=> b!968077 (=> (not res!648203) (not e!545599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!968077 (= res!648203 (validKeyInArray!0 (select (arr!28781 _keys!1686) i!803)))))

(declare-fun b!968078 () Bool)

(declare-fun e!545595 () Bool)

(assert (=> b!968078 (= e!545595 true)))

(assert (=> b!968078 (contains!5541 (getCurrentListMap!3675 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28781 _keys!1686) i!803))))

(declare-datatypes ((Unit!32329 0))(
  ( (Unit!32330) )
))
(declare-fun lt!431451 () Unit!32329)

(declare-fun lemmaInListMapFromThenInFromSmaller!36 (array!59833 array!59835 (_ BitVec 32) (_ BitVec 32) V!34171 V!34171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32329)

(assert (=> b!968078 (= lt!431451 (lemmaInListMapFromThenInFromSmaller!36 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!968079 () Bool)

(declare-fun res!648205 () Bool)

(assert (=> b!968079 (=> (not res!648205) (not e!545599))))

(declare-datatypes ((List!20110 0))(
  ( (Nil!20107) (Cons!20106 (h!21268 (_ BitVec 64)) (t!28481 List!20110)) )
))
(declare-fun arrayNoDuplicates!0 (array!59833 (_ BitVec 32) List!20110) Bool)

(assert (=> b!968079 (= res!648205 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20107))))

(declare-fun b!968080 () Bool)

(declare-fun res!648204 () Bool)

(assert (=> b!968080 (=> (not res!648204) (not e!545599))))

(assert (=> b!968080 (= res!648204 (bvsgt from!2084 newFrom!159))))

(declare-fun b!968081 () Bool)

(declare-fun res!648200 () Bool)

(assert (=> b!968081 (=> (not res!648200) (not e!545599))))

(assert (=> b!968081 (= res!648200 (and (= (size!29262 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29261 _keys!1686) (size!29262 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!968082 () Bool)

(assert (=> b!968082 (= e!545599 (not e!545595))))

(declare-fun res!648199 () Bool)

(assert (=> b!968082 (=> res!648199 e!545595)))

(assert (=> b!968082 (= res!648199 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29261 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!968082 (contains!5541 (getCurrentListMap!3675 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28781 _keys!1686) i!803))))

(declare-fun lt!431450 () Unit!32329)

(declare-fun lemmaInListMapFromThenInFromMinusOne!71 (array!59833 array!59835 (_ BitVec 32) (_ BitVec 32) V!34171 V!34171 (_ BitVec 32) (_ BitVec 32) Int) Unit!32329)

(assert (=> b!968082 (= lt!431450 (lemmaInListMapFromThenInFromMinusOne!71 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!968083 () Bool)

(assert (=> b!968083 (= e!545597 tp_is_empty!21891)))

(assert (= (and start!82984 res!648202) b!968081))

(assert (= (and b!968081 res!648200) b!968074))

(assert (= (and b!968074 res!648206) b!968079))

(assert (= (and b!968079 res!648205) b!968075))

(assert (= (and b!968075 res!648198) b!968077))

(assert (= (and b!968077 res!648203) b!968072))

(assert (= (and b!968072 res!648201) b!968080))

(assert (= (and b!968080 res!648204) b!968082))

(assert (= (and b!968082 (not res!648199)) b!968078))

(assert (= (and b!968073 condMapEmpty!34831) mapIsEmpty!34831))

(assert (= (and b!968073 (not condMapEmpty!34831)) mapNonEmpty!34831))

(get-info :version)

(assert (= (and mapNonEmpty!34831 ((_ is ValueCellFull!10464) mapValue!34831)) b!968083))

(assert (= (and b!968073 ((_ is ValueCellFull!10464) mapDefault!34831)) b!968076))

(assert (= start!82984 b!968073))

(declare-fun m!896577 () Bool)

(assert (=> b!968072 m!896577))

(declare-fun m!896579 () Bool)

(assert (=> b!968072 m!896579))

(assert (=> b!968072 m!896577))

(assert (=> b!968072 m!896579))

(declare-fun m!896581 () Bool)

(assert (=> b!968072 m!896581))

(declare-fun m!896583 () Bool)

(assert (=> b!968082 m!896583))

(assert (=> b!968082 m!896579))

(assert (=> b!968082 m!896583))

(assert (=> b!968082 m!896579))

(declare-fun m!896585 () Bool)

(assert (=> b!968082 m!896585))

(declare-fun m!896587 () Bool)

(assert (=> b!968082 m!896587))

(declare-fun m!896589 () Bool)

(assert (=> b!968074 m!896589))

(declare-fun m!896591 () Bool)

(assert (=> b!968079 m!896591))

(declare-fun m!896593 () Bool)

(assert (=> start!82984 m!896593))

(declare-fun m!896595 () Bool)

(assert (=> start!82984 m!896595))

(declare-fun m!896597 () Bool)

(assert (=> start!82984 m!896597))

(declare-fun m!896599 () Bool)

(assert (=> mapNonEmpty!34831 m!896599))

(declare-fun m!896601 () Bool)

(assert (=> b!968078 m!896601))

(assert (=> b!968078 m!896579))

(assert (=> b!968078 m!896601))

(assert (=> b!968078 m!896579))

(declare-fun m!896603 () Bool)

(assert (=> b!968078 m!896603))

(declare-fun m!896605 () Bool)

(assert (=> b!968078 m!896605))

(assert (=> b!968077 m!896579))

(assert (=> b!968077 m!896579))

(declare-fun m!896607 () Bool)

(assert (=> b!968077 m!896607))

(check-sat tp_is_empty!21891 (not b!968079) (not mapNonEmpty!34831) (not b!968077) (not start!82984) (not b!968078) (not b!968082) (not b!968074) (not b!968072) b_and!30589 (not b_next!19083))
(check-sat b_and!30589 (not b_next!19083))
