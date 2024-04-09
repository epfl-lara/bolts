; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82918 () Bool)

(assert start!82918)

(declare-fun b_free!19017 () Bool)

(declare-fun b_next!19017 () Bool)

(assert (=> start!82918 (= b_free!19017 (not b_next!19017))))

(declare-fun tp!66181 () Bool)

(declare-fun b_and!30523 () Bool)

(assert (=> start!82918 (= tp!66181 b_and!30523)))

(declare-fun b!966969 () Bool)

(declare-fun e!545087 () Bool)

(declare-fun tp_is_empty!21825 () Bool)

(assert (=> b!966969 (= e!545087 tp_is_empty!21825)))

(declare-fun mapNonEmpty!34732 () Bool)

(declare-fun mapRes!34732 () Bool)

(declare-fun tp!66180 () Bool)

(assert (=> mapNonEmpty!34732 (= mapRes!34732 (and tp!66180 e!545087))))

(declare-datatypes ((V!34083 0))(
  ( (V!34084 (val!10963 Int)) )
))
(declare-datatypes ((ValueCell!10431 0))(
  ( (ValueCellFull!10431 (v!13521 V!34083)) (EmptyCell!10431) )
))
(declare-fun mapRest!34732 () (Array (_ BitVec 32) ValueCell!10431))

(declare-datatypes ((array!59709 0))(
  ( (array!59710 (arr!28719 (Array (_ BitVec 32) ValueCell!10431)) (size!29199 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59709)

(declare-fun mapKey!34732 () (_ BitVec 32))

(declare-fun mapValue!34732 () ValueCell!10431)

(assert (=> mapNonEmpty!34732 (= (arr!28719 _values!1400) (store mapRest!34732 mapKey!34732 mapValue!34732))))

(declare-fun res!647396 () Bool)

(declare-fun e!545088 () Bool)

(assert (=> start!82918 (=> (not res!647396) (not e!545088))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82918 (= res!647396 (validMask!0 mask!2110))))

(assert (=> start!82918 e!545088))

(assert (=> start!82918 true))

(declare-fun e!545086 () Bool)

(declare-fun array_inv!22133 (array!59709) Bool)

(assert (=> start!82918 (and (array_inv!22133 _values!1400) e!545086)))

(declare-datatypes ((array!59711 0))(
  ( (array!59712 (arr!28720 (Array (_ BitVec 32) (_ BitVec 64))) (size!29200 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59711)

(declare-fun array_inv!22134 (array!59711) Bool)

(assert (=> start!82918 (array_inv!22134 _keys!1686)))

(assert (=> start!82918 tp!66181))

(assert (=> start!82918 tp_is_empty!21825))

(declare-fun b!966970 () Bool)

(assert (=> b!966970 (= e!545088 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34083)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34083)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14188 0))(
  ( (tuple2!14189 (_1!7104 (_ BitVec 64)) (_2!7104 V!34083)) )
))
(declare-datatypes ((List!20063 0))(
  ( (Nil!20060) (Cons!20059 (h!21221 tuple2!14188) (t!28434 List!20063)) )
))
(declare-datatypes ((ListLongMap!12899 0))(
  ( (ListLongMap!12900 (toList!6465 List!20063)) )
))
(declare-fun contains!5516 (ListLongMap!12899 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3650 (array!59711 array!59709 (_ BitVec 32) (_ BitVec 32) V!34083 V!34083 (_ BitVec 32) Int) ListLongMap!12899)

(assert (=> b!966970 (contains!5516 (getCurrentListMap!3650 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28720 _keys!1686) i!803))))

(declare-datatypes ((Unit!32283 0))(
  ( (Unit!32284) )
))
(declare-fun lt!431337 () Unit!32283)

(declare-fun lemmaInListMapFromThenInFromMinusOne!48 (array!59711 array!59709 (_ BitVec 32) (_ BitVec 32) V!34083 V!34083 (_ BitVec 32) (_ BitVec 32) Int) Unit!32283)

(assert (=> b!966970 (= lt!431337 (lemmaInListMapFromThenInFromMinusOne!48 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!966971 () Bool)

(declare-fun e!545089 () Bool)

(assert (=> b!966971 (= e!545086 (and e!545089 mapRes!34732))))

(declare-fun condMapEmpty!34732 () Bool)

(declare-fun mapDefault!34732 () ValueCell!10431)

(assert (=> b!966971 (= condMapEmpty!34732 (= (arr!28719 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10431)) mapDefault!34732)))))

(declare-fun b!966972 () Bool)

(declare-fun res!647394 () Bool)

(assert (=> b!966972 (=> (not res!647394) (not e!545088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966972 (= res!647394 (validKeyInArray!0 (select (arr!28720 _keys!1686) i!803)))))

(declare-fun b!966973 () Bool)

(declare-fun res!647395 () Bool)

(assert (=> b!966973 (=> (not res!647395) (not e!545088))))

(assert (=> b!966973 (= res!647395 (and (= (size!29199 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29200 _keys!1686) (size!29199 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34732 () Bool)

(assert (=> mapIsEmpty!34732 mapRes!34732))

(declare-fun b!966974 () Bool)

(declare-fun res!647397 () Bool)

(assert (=> b!966974 (=> (not res!647397) (not e!545088))))

(declare-datatypes ((List!20064 0))(
  ( (Nil!20061) (Cons!20060 (h!21222 (_ BitVec 64)) (t!28435 List!20064)) )
))
(declare-fun arrayNoDuplicates!0 (array!59711 (_ BitVec 32) List!20064) Bool)

(assert (=> b!966974 (= res!647397 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20061))))

(declare-fun b!966975 () Bool)

(declare-fun res!647399 () Bool)

(assert (=> b!966975 (=> (not res!647399) (not e!545088))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966975 (= res!647399 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29200 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29200 _keys!1686))))))

(declare-fun b!966976 () Bool)

(assert (=> b!966976 (= e!545089 tp_is_empty!21825)))

(declare-fun b!966977 () Bool)

(declare-fun res!647393 () Bool)

(assert (=> b!966977 (=> (not res!647393) (not e!545088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59711 (_ BitVec 32)) Bool)

(assert (=> b!966977 (= res!647393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966978 () Bool)

(declare-fun res!647392 () Bool)

(assert (=> b!966978 (=> (not res!647392) (not e!545088))))

(assert (=> b!966978 (= res!647392 (bvsgt from!2084 newFrom!159))))

(declare-fun b!966979 () Bool)

(declare-fun res!647398 () Bool)

(assert (=> b!966979 (=> (not res!647398) (not e!545088))))

(assert (=> b!966979 (= res!647398 (contains!5516 (getCurrentListMap!3650 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28720 _keys!1686) i!803)))))

(assert (= (and start!82918 res!647396) b!966973))

(assert (= (and b!966973 res!647395) b!966977))

(assert (= (and b!966977 res!647393) b!966974))

(assert (= (and b!966974 res!647397) b!966975))

(assert (= (and b!966975 res!647399) b!966972))

(assert (= (and b!966972 res!647394) b!966979))

(assert (= (and b!966979 res!647398) b!966978))

(assert (= (and b!966978 res!647392) b!966970))

(assert (= (and b!966971 condMapEmpty!34732) mapIsEmpty!34732))

(assert (= (and b!966971 (not condMapEmpty!34732)) mapNonEmpty!34732))

(get-info :version)

(assert (= (and mapNonEmpty!34732 ((_ is ValueCellFull!10431) mapValue!34732)) b!966969))

(assert (= (and b!966971 ((_ is ValueCellFull!10431) mapDefault!34732)) b!966976))

(assert (= start!82918 b!966971))

(declare-fun m!895695 () Bool)

(assert (=> mapNonEmpty!34732 m!895695))

(declare-fun m!895697 () Bool)

(assert (=> start!82918 m!895697))

(declare-fun m!895699 () Bool)

(assert (=> start!82918 m!895699))

(declare-fun m!895701 () Bool)

(assert (=> start!82918 m!895701))

(declare-fun m!895703 () Bool)

(assert (=> b!966970 m!895703))

(declare-fun m!895705 () Bool)

(assert (=> b!966970 m!895705))

(assert (=> b!966970 m!895703))

(assert (=> b!966970 m!895705))

(declare-fun m!895707 () Bool)

(assert (=> b!966970 m!895707))

(declare-fun m!895709 () Bool)

(assert (=> b!966970 m!895709))

(declare-fun m!895711 () Bool)

(assert (=> b!966979 m!895711))

(assert (=> b!966979 m!895705))

(assert (=> b!966979 m!895711))

(assert (=> b!966979 m!895705))

(declare-fun m!895713 () Bool)

(assert (=> b!966979 m!895713))

(assert (=> b!966972 m!895705))

(assert (=> b!966972 m!895705))

(declare-fun m!895715 () Bool)

(assert (=> b!966972 m!895715))

(declare-fun m!895717 () Bool)

(assert (=> b!966974 m!895717))

(declare-fun m!895719 () Bool)

(assert (=> b!966977 m!895719))

(check-sat (not start!82918) (not b!966977) (not b!966972) (not b_next!19017) (not b!966974) (not b!966970) (not mapNonEmpty!34732) tp_is_empty!21825 (not b!966979) b_and!30523)
(check-sat b_and!30523 (not b_next!19017))
