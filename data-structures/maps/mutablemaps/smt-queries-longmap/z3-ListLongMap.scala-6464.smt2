; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82654 () Bool)

(assert start!82654)

(declare-fun b_free!18759 () Bool)

(declare-fun b_next!18759 () Bool)

(assert (=> start!82654 (= b_free!18759 (not b_next!18759))))

(declare-fun tp!65397 () Bool)

(declare-fun b_and!30265 () Bool)

(assert (=> start!82654 (= tp!65397 b_and!30265)))

(declare-fun b!962946 () Bool)

(declare-fun res!644558 () Bool)

(declare-fun e!543027 () Bool)

(assert (=> b!962946 (=> (not res!644558) (not e!543027))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962946 (= res!644558 (bvsgt from!2084 newFrom!159))))

(declare-fun res!644561 () Bool)

(assert (=> start!82654 (=> (not res!644561) (not e!543027))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82654 (= res!644561 (validMask!0 mask!2110))))

(assert (=> start!82654 e!543027))

(assert (=> start!82654 true))

(declare-datatypes ((V!33731 0))(
  ( (V!33732 (val!10831 Int)) )
))
(declare-datatypes ((ValueCell!10299 0))(
  ( (ValueCellFull!10299 (v!13389 V!33731)) (EmptyCell!10299) )
))
(declare-datatypes ((array!59199 0))(
  ( (array!59200 (arr!28464 (Array (_ BitVec 32) ValueCell!10299)) (size!28944 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59199)

(declare-fun e!543028 () Bool)

(declare-fun array_inv!21979 (array!59199) Bool)

(assert (=> start!82654 (and (array_inv!21979 _values!1400) e!543028)))

(declare-datatypes ((array!59201 0))(
  ( (array!59202 (arr!28465 (Array (_ BitVec 32) (_ BitVec 64))) (size!28945 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59201)

(declare-fun array_inv!21980 (array!59201) Bool)

(assert (=> start!82654 (array_inv!21980 _keys!1686)))

(assert (=> start!82654 tp!65397))

(declare-fun tp_is_empty!21561 () Bool)

(assert (=> start!82654 tp_is_empty!21561))

(declare-fun b!962947 () Bool)

(declare-fun e!543026 () Bool)

(assert (=> b!962947 (= e!543026 tp_is_empty!21561)))

(declare-fun b!962948 () Bool)

(assert (=> b!962948 (= e!543027 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33731)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33731)

(declare-datatypes ((tuple2!13994 0))(
  ( (tuple2!13995 (_1!7007 (_ BitVec 64)) (_2!7007 V!33731)) )
))
(declare-datatypes ((List!19877 0))(
  ( (Nil!19874) (Cons!19873 (h!21035 tuple2!13994) (t!28248 List!19877)) )
))
(declare-datatypes ((ListLongMap!12705 0))(
  ( (ListLongMap!12706 (toList!6368 List!19877)) )
))
(declare-fun contains!5422 (ListLongMap!12705 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3553 (array!59201 array!59199 (_ BitVec 32) (_ BitVec 32) V!33731 V!33731 (_ BitVec 32) Int) ListLongMap!12705)

(assert (=> b!962948 (contains!5422 (getCurrentListMap!3553 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28465 _keys!1686) i!803))))

(declare-datatypes ((Unit!32201 0))(
  ( (Unit!32202) )
))
(declare-fun lt!430887 () Unit!32201)

(declare-fun lemmaInListMapFromThenInFromMinusOne!9 (array!59201 array!59199 (_ BitVec 32) (_ BitVec 32) V!33731 V!33731 (_ BitVec 32) (_ BitVec 32) Int) Unit!32201)

(assert (=> b!962948 (= lt!430887 (lemmaInListMapFromThenInFromMinusOne!9 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!962949 () Bool)

(declare-fun e!543025 () Bool)

(assert (=> b!962949 (= e!543025 tp_is_empty!21561)))

(declare-fun mapNonEmpty!34336 () Bool)

(declare-fun mapRes!34336 () Bool)

(declare-fun tp!65398 () Bool)

(assert (=> mapNonEmpty!34336 (= mapRes!34336 (and tp!65398 e!543026))))

(declare-fun mapRest!34336 () (Array (_ BitVec 32) ValueCell!10299))

(declare-fun mapValue!34336 () ValueCell!10299)

(declare-fun mapKey!34336 () (_ BitVec 32))

(assert (=> mapNonEmpty!34336 (= (arr!28464 _values!1400) (store mapRest!34336 mapKey!34336 mapValue!34336))))

(declare-fun b!962950 () Bool)

(declare-fun res!644557 () Bool)

(assert (=> b!962950 (=> (not res!644557) (not e!543027))))

(assert (=> b!962950 (= res!644557 (and (= (size!28944 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28945 _keys!1686) (size!28944 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962951 () Bool)

(declare-fun res!644559 () Bool)

(assert (=> b!962951 (=> (not res!644559) (not e!543027))))

(assert (=> b!962951 (= res!644559 (contains!5422 (getCurrentListMap!3553 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28465 _keys!1686) i!803)))))

(declare-fun b!962952 () Bool)

(declare-fun res!644560 () Bool)

(assert (=> b!962952 (=> (not res!644560) (not e!543027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962952 (= res!644560 (validKeyInArray!0 (select (arr!28465 _keys!1686) i!803)))))

(declare-fun b!962953 () Bool)

(declare-fun res!644563 () Bool)

(assert (=> b!962953 (=> (not res!644563) (not e!543027))))

(declare-datatypes ((List!19878 0))(
  ( (Nil!19875) (Cons!19874 (h!21036 (_ BitVec 64)) (t!28249 List!19878)) )
))
(declare-fun arrayNoDuplicates!0 (array!59201 (_ BitVec 32) List!19878) Bool)

(assert (=> b!962953 (= res!644563 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19875))))

(declare-fun mapIsEmpty!34336 () Bool)

(assert (=> mapIsEmpty!34336 mapRes!34336))

(declare-fun b!962954 () Bool)

(assert (=> b!962954 (= e!543028 (and e!543025 mapRes!34336))))

(declare-fun condMapEmpty!34336 () Bool)

(declare-fun mapDefault!34336 () ValueCell!10299)

(assert (=> b!962954 (= condMapEmpty!34336 (= (arr!28464 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10299)) mapDefault!34336)))))

(declare-fun b!962955 () Bool)

(declare-fun res!644562 () Bool)

(assert (=> b!962955 (=> (not res!644562) (not e!543027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59201 (_ BitVec 32)) Bool)

(assert (=> b!962955 (= res!644562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962956 () Bool)

(declare-fun res!644564 () Bool)

(assert (=> b!962956 (=> (not res!644564) (not e!543027))))

(assert (=> b!962956 (= res!644564 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28945 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28945 _keys!1686))))))

(assert (= (and start!82654 res!644561) b!962950))

(assert (= (and b!962950 res!644557) b!962955))

(assert (= (and b!962955 res!644562) b!962953))

(assert (= (and b!962953 res!644563) b!962956))

(assert (= (and b!962956 res!644564) b!962952))

(assert (= (and b!962952 res!644560) b!962951))

(assert (= (and b!962951 res!644559) b!962946))

(assert (= (and b!962946 res!644558) b!962948))

(assert (= (and b!962954 condMapEmpty!34336) mapIsEmpty!34336))

(assert (= (and b!962954 (not condMapEmpty!34336)) mapNonEmpty!34336))

(get-info :version)

(assert (= (and mapNonEmpty!34336 ((_ is ValueCellFull!10299) mapValue!34336)) b!962947))

(assert (= (and b!962954 ((_ is ValueCellFull!10299) mapDefault!34336)) b!962949))

(assert (= start!82654 b!962954))

(declare-fun m!892545 () Bool)

(assert (=> b!962955 m!892545))

(declare-fun m!892547 () Bool)

(assert (=> b!962953 m!892547))

(declare-fun m!892549 () Bool)

(assert (=> b!962948 m!892549))

(declare-fun m!892551 () Bool)

(assert (=> b!962948 m!892551))

(assert (=> b!962948 m!892549))

(assert (=> b!962948 m!892551))

(declare-fun m!892553 () Bool)

(assert (=> b!962948 m!892553))

(declare-fun m!892555 () Bool)

(assert (=> b!962948 m!892555))

(declare-fun m!892557 () Bool)

(assert (=> b!962951 m!892557))

(assert (=> b!962951 m!892551))

(assert (=> b!962951 m!892557))

(assert (=> b!962951 m!892551))

(declare-fun m!892559 () Bool)

(assert (=> b!962951 m!892559))

(declare-fun m!892561 () Bool)

(assert (=> start!82654 m!892561))

(declare-fun m!892563 () Bool)

(assert (=> start!82654 m!892563))

(declare-fun m!892565 () Bool)

(assert (=> start!82654 m!892565))

(assert (=> b!962952 m!892551))

(assert (=> b!962952 m!892551))

(declare-fun m!892567 () Bool)

(assert (=> b!962952 m!892567))

(declare-fun m!892569 () Bool)

(assert (=> mapNonEmpty!34336 m!892569))

(check-sat (not b!962951) (not b!962952) (not b_next!18759) (not b!962955) (not b!962948) tp_is_empty!21561 (not b!962953) b_and!30265 (not start!82654) (not mapNonEmpty!34336))
(check-sat b_and!30265 (not b_next!18759))
