; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82960 () Bool)

(assert start!82960)

(declare-fun b_free!19059 () Bool)

(declare-fun b_next!19059 () Bool)

(assert (=> start!82960 (= b_free!19059 (not b_next!19059))))

(declare-fun tp!66306 () Bool)

(declare-fun b_and!30565 () Bool)

(assert (=> start!82960 (= tp!66306 b_and!30565)))

(declare-fun b!967662 () Bool)

(declare-fun res!647901 () Bool)

(declare-fun e!545400 () Bool)

(assert (=> b!967662 (=> (not res!647901) (not e!545400))))

(declare-datatypes ((array!59785 0))(
  ( (array!59786 (arr!28757 (Array (_ BitVec 32) (_ BitVec 64))) (size!29237 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59785)

(declare-datatypes ((List!20091 0))(
  ( (Nil!20088) (Cons!20087 (h!21249 (_ BitVec 64)) (t!28462 List!20091)) )
))
(declare-fun arrayNoDuplicates!0 (array!59785 (_ BitVec 32) List!20091) Bool)

(assert (=> b!967662 (= res!647901 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20088))))

(declare-fun b!967663 () Bool)

(declare-fun res!647898 () Bool)

(assert (=> b!967663 (=> (not res!647898) (not e!545400))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59785 (_ BitVec 32)) Bool)

(assert (=> b!967663 (= res!647898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967664 () Bool)

(declare-fun res!647900 () Bool)

(assert (=> b!967664 (=> (not res!647900) (not e!545400))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34139 0))(
  ( (V!34140 (val!10984 Int)) )
))
(declare-datatypes ((ValueCell!10452 0))(
  ( (ValueCellFull!10452 (v!13542 V!34139)) (EmptyCell!10452) )
))
(declare-datatypes ((array!59787 0))(
  ( (array!59788 (arr!28758 (Array (_ BitVec 32) ValueCell!10452)) (size!29238 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59787)

(assert (=> b!967664 (= res!647900 (and (= (size!29238 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29237 _keys!1686) (size!29238 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967665 () Bool)

(declare-fun e!545401 () Bool)

(declare-fun tp_is_empty!21867 () Bool)

(assert (=> b!967665 (= e!545401 tp_is_empty!21867)))

(declare-fun b!967666 () Bool)

(declare-fun e!545402 () Bool)

(assert (=> b!967666 (= e!545402 tp_is_empty!21867)))

(declare-fun mapIsEmpty!34795 () Bool)

(declare-fun mapRes!34795 () Bool)

(assert (=> mapIsEmpty!34795 mapRes!34795))

(declare-fun b!967667 () Bool)

(declare-fun res!647903 () Bool)

(assert (=> b!967667 (=> (not res!647903) (not e!545400))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!967667 (= res!647903 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29237 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29237 _keys!1686))))))

(declare-fun b!967668 () Bool)

(declare-fun e!545403 () Bool)

(assert (=> b!967668 (= e!545403 (and e!545402 mapRes!34795))))

(declare-fun condMapEmpty!34795 () Bool)

(declare-fun mapDefault!34795 () ValueCell!10452)

(assert (=> b!967668 (= condMapEmpty!34795 (= (arr!28758 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10452)) mapDefault!34795)))))

(declare-fun b!967669 () Bool)

(declare-fun res!647896 () Bool)

(assert (=> b!967669 (=> (not res!647896) (not e!545400))))

(declare-fun minValue!1342 () V!34139)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34139)

(declare-datatypes ((tuple2!14218 0))(
  ( (tuple2!14219 (_1!7119 (_ BitVec 64)) (_2!7119 V!34139)) )
))
(declare-datatypes ((List!20092 0))(
  ( (Nil!20089) (Cons!20088 (h!21250 tuple2!14218) (t!28463 List!20092)) )
))
(declare-datatypes ((ListLongMap!12929 0))(
  ( (ListLongMap!12930 (toList!6480 List!20092)) )
))
(declare-fun contains!5531 (ListLongMap!12929 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3665 (array!59785 array!59787 (_ BitVec 32) (_ BitVec 32) V!34139 V!34139 (_ BitVec 32) Int) ListLongMap!12929)

(assert (=> b!967669 (= res!647896 (contains!5531 (getCurrentListMap!3665 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28757 _keys!1686) i!803)))))

(declare-fun b!967670 () Bool)

(declare-fun res!647897 () Bool)

(assert (=> b!967670 (=> (not res!647897) (not e!545400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967670 (= res!647897 (validKeyInArray!0 (select (arr!28757 _keys!1686) i!803)))))

(declare-fun res!647899 () Bool)

(assert (=> start!82960 (=> (not res!647899) (not e!545400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82960 (= res!647899 (validMask!0 mask!2110))))

(assert (=> start!82960 e!545400))

(assert (=> start!82960 true))

(declare-fun array_inv!22157 (array!59787) Bool)

(assert (=> start!82960 (and (array_inv!22157 _values!1400) e!545403)))

(declare-fun array_inv!22158 (array!59785) Bool)

(assert (=> start!82960 (array_inv!22158 _keys!1686)))

(assert (=> start!82960 tp!66306))

(assert (=> start!82960 tp_is_empty!21867))

(declare-fun b!967671 () Bool)

(assert (=> b!967671 (= e!545400 (not (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29237 _keys!1686)) (bvsge i!803 (bvsub from!2084 #b00000000000000000000000000000001)))))))

(assert (=> b!967671 (contains!5531 (getCurrentListMap!3665 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28757 _keys!1686) i!803))))

(declare-datatypes ((Unit!32311 0))(
  ( (Unit!32312) )
))
(declare-fun lt!431400 () Unit!32311)

(declare-fun lemmaInListMapFromThenInFromMinusOne!62 (array!59785 array!59787 (_ BitVec 32) (_ BitVec 32) V!34139 V!34139 (_ BitVec 32) (_ BitVec 32) Int) Unit!32311)

(assert (=> b!967671 (= lt!431400 (lemmaInListMapFromThenInFromMinusOne!62 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun mapNonEmpty!34795 () Bool)

(declare-fun tp!66307 () Bool)

(assert (=> mapNonEmpty!34795 (= mapRes!34795 (and tp!66307 e!545401))))

(declare-fun mapKey!34795 () (_ BitVec 32))

(declare-fun mapRest!34795 () (Array (_ BitVec 32) ValueCell!10452))

(declare-fun mapValue!34795 () ValueCell!10452)

(assert (=> mapNonEmpty!34795 (= (arr!28758 _values!1400) (store mapRest!34795 mapKey!34795 mapValue!34795))))

(declare-fun b!967672 () Bool)

(declare-fun res!647902 () Bool)

(assert (=> b!967672 (=> (not res!647902) (not e!545400))))

(assert (=> b!967672 (= res!647902 (bvsgt from!2084 newFrom!159))))

(assert (= (and start!82960 res!647899) b!967664))

(assert (= (and b!967664 res!647900) b!967663))

(assert (= (and b!967663 res!647898) b!967662))

(assert (= (and b!967662 res!647901) b!967667))

(assert (= (and b!967667 res!647903) b!967670))

(assert (= (and b!967670 res!647897) b!967669))

(assert (= (and b!967669 res!647896) b!967672))

(assert (= (and b!967672 res!647902) b!967671))

(assert (= (and b!967668 condMapEmpty!34795) mapIsEmpty!34795))

(assert (= (and b!967668 (not condMapEmpty!34795)) mapNonEmpty!34795))

(get-info :version)

(assert (= (and mapNonEmpty!34795 ((_ is ValueCellFull!10452) mapValue!34795)) b!967665))

(assert (= (and b!967668 ((_ is ValueCellFull!10452) mapDefault!34795)) b!967666))

(assert (= start!82960 b!967668))

(declare-fun m!896241 () Bool)

(assert (=> b!967671 m!896241))

(declare-fun m!896243 () Bool)

(assert (=> b!967671 m!896243))

(assert (=> b!967671 m!896241))

(assert (=> b!967671 m!896243))

(declare-fun m!896245 () Bool)

(assert (=> b!967671 m!896245))

(declare-fun m!896247 () Bool)

(assert (=> b!967671 m!896247))

(declare-fun m!896249 () Bool)

(assert (=> b!967669 m!896249))

(assert (=> b!967669 m!896243))

(assert (=> b!967669 m!896249))

(assert (=> b!967669 m!896243))

(declare-fun m!896251 () Bool)

(assert (=> b!967669 m!896251))

(assert (=> b!967670 m!896243))

(assert (=> b!967670 m!896243))

(declare-fun m!896253 () Bool)

(assert (=> b!967670 m!896253))

(declare-fun m!896255 () Bool)

(assert (=> start!82960 m!896255))

(declare-fun m!896257 () Bool)

(assert (=> start!82960 m!896257))

(declare-fun m!896259 () Bool)

(assert (=> start!82960 m!896259))

(declare-fun m!896261 () Bool)

(assert (=> b!967662 m!896261))

(declare-fun m!896263 () Bool)

(assert (=> b!967663 m!896263))

(declare-fun m!896265 () Bool)

(assert (=> mapNonEmpty!34795 m!896265))

(check-sat (not b!967671) (not b!967669) (not b!967663) (not mapNonEmpty!34795) (not b!967670) (not b_next!19059) tp_is_empty!21867 (not start!82960) b_and!30565 (not b!967662))
(check-sat b_and!30565 (not b_next!19059))
