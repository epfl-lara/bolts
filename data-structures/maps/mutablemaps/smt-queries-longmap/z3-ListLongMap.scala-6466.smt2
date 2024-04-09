; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82666 () Bool)

(assert start!82666)

(declare-fun b_free!18771 () Bool)

(declare-fun b_next!18771 () Bool)

(assert (=> start!82666 (= b_free!18771 (not b_next!18771))))

(declare-fun tp!65433 () Bool)

(declare-fun b_and!30277 () Bool)

(assert (=> start!82666 (= tp!65433 b_and!30277)))

(declare-fun b!963144 () Bool)

(declare-fun e!543114 () Bool)

(assert (=> b!963144 (= e!543114 (not true))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33747 0))(
  ( (V!33748 (val!10837 Int)) )
))
(declare-datatypes ((ValueCell!10305 0))(
  ( (ValueCellFull!10305 (v!13395 V!33747)) (EmptyCell!10305) )
))
(declare-datatypes ((array!59223 0))(
  ( (array!59224 (arr!28476 (Array (_ BitVec 32) ValueCell!10305)) (size!28956 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59223)

(declare-datatypes ((array!59225 0))(
  ( (array!59226 (arr!28477 (Array (_ BitVec 32) (_ BitVec 64))) (size!28957 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59225)

(declare-fun minValue!1342 () V!33747)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33747)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14004 0))(
  ( (tuple2!14005 (_1!7012 (_ BitVec 64)) (_2!7012 V!33747)) )
))
(declare-datatypes ((List!19886 0))(
  ( (Nil!19883) (Cons!19882 (h!21044 tuple2!14004) (t!28257 List!19886)) )
))
(declare-datatypes ((ListLongMap!12715 0))(
  ( (ListLongMap!12716 (toList!6373 List!19886)) )
))
(declare-fun contains!5427 (ListLongMap!12715 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3558 (array!59225 array!59223 (_ BitVec 32) (_ BitVec 32) V!33747 V!33747 (_ BitVec 32) Int) ListLongMap!12715)

(assert (=> b!963144 (contains!5427 (getCurrentListMap!3558 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28477 _keys!1686) i!803))))

(declare-datatypes ((Unit!32207 0))(
  ( (Unit!32208) )
))
(declare-fun lt!430905 () Unit!32207)

(declare-fun lemmaInListMapFromThenInFromMinusOne!12 (array!59225 array!59223 (_ BitVec 32) (_ BitVec 32) V!33747 V!33747 (_ BitVec 32) (_ BitVec 32) Int) Unit!32207)

(assert (=> b!963144 (= lt!430905 (lemmaInListMapFromThenInFromMinusOne!12 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963145 () Bool)

(declare-fun res!644704 () Bool)

(assert (=> b!963145 (=> (not res!644704) (not e!543114))))

(assert (=> b!963145 (= res!644704 (and (= (size!28956 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28957 _keys!1686) (size!28956 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963146 () Bool)

(declare-fun e!543117 () Bool)

(declare-fun e!543116 () Bool)

(declare-fun mapRes!34354 () Bool)

(assert (=> b!963146 (= e!543117 (and e!543116 mapRes!34354))))

(declare-fun condMapEmpty!34354 () Bool)

(declare-fun mapDefault!34354 () ValueCell!10305)

(assert (=> b!963146 (= condMapEmpty!34354 (= (arr!28476 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10305)) mapDefault!34354)))))

(declare-fun b!963147 () Bool)

(declare-fun e!543118 () Bool)

(declare-fun tp_is_empty!21573 () Bool)

(assert (=> b!963147 (= e!543118 tp_is_empty!21573)))

(declare-fun mapIsEmpty!34354 () Bool)

(assert (=> mapIsEmpty!34354 mapRes!34354))

(declare-fun b!963148 () Bool)

(declare-fun res!644703 () Bool)

(assert (=> b!963148 (=> (not res!644703) (not e!543114))))

(assert (=> b!963148 (= res!644703 (contains!5427 (getCurrentListMap!3558 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28477 _keys!1686) i!803)))))

(declare-fun res!644705 () Bool)

(assert (=> start!82666 (=> (not res!644705) (not e!543114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82666 (= res!644705 (validMask!0 mask!2110))))

(assert (=> start!82666 e!543114))

(assert (=> start!82666 true))

(declare-fun array_inv!21983 (array!59223) Bool)

(assert (=> start!82666 (and (array_inv!21983 _values!1400) e!543117)))

(declare-fun array_inv!21984 (array!59225) Bool)

(assert (=> start!82666 (array_inv!21984 _keys!1686)))

(assert (=> start!82666 tp!65433))

(assert (=> start!82666 tp_is_empty!21573))

(declare-fun mapNonEmpty!34354 () Bool)

(declare-fun tp!65434 () Bool)

(assert (=> mapNonEmpty!34354 (= mapRes!34354 (and tp!65434 e!543118))))

(declare-fun mapValue!34354 () ValueCell!10305)

(declare-fun mapKey!34354 () (_ BitVec 32))

(declare-fun mapRest!34354 () (Array (_ BitVec 32) ValueCell!10305))

(assert (=> mapNonEmpty!34354 (= (arr!28476 _values!1400) (store mapRest!34354 mapKey!34354 mapValue!34354))))

(declare-fun b!963149 () Bool)

(declare-fun res!644708 () Bool)

(assert (=> b!963149 (=> (not res!644708) (not e!543114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59225 (_ BitVec 32)) Bool)

(assert (=> b!963149 (= res!644708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963150 () Bool)

(assert (=> b!963150 (= e!543116 tp_is_empty!21573)))

(declare-fun b!963151 () Bool)

(declare-fun res!644707 () Bool)

(assert (=> b!963151 (=> (not res!644707) (not e!543114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963151 (= res!644707 (validKeyInArray!0 (select (arr!28477 _keys!1686) i!803)))))

(declare-fun b!963152 () Bool)

(declare-fun res!644702 () Bool)

(assert (=> b!963152 (=> (not res!644702) (not e!543114))))

(declare-datatypes ((List!19887 0))(
  ( (Nil!19884) (Cons!19883 (h!21045 (_ BitVec 64)) (t!28258 List!19887)) )
))
(declare-fun arrayNoDuplicates!0 (array!59225 (_ BitVec 32) List!19887) Bool)

(assert (=> b!963152 (= res!644702 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19884))))

(declare-fun b!963153 () Bool)

(declare-fun res!644701 () Bool)

(assert (=> b!963153 (=> (not res!644701) (not e!543114))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963153 (= res!644701 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963154 () Bool)

(declare-fun res!644706 () Bool)

(assert (=> b!963154 (=> (not res!644706) (not e!543114))))

(assert (=> b!963154 (= res!644706 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28957 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28957 _keys!1686))))))

(assert (= (and start!82666 res!644705) b!963145))

(assert (= (and b!963145 res!644704) b!963149))

(assert (= (and b!963149 res!644708) b!963152))

(assert (= (and b!963152 res!644702) b!963154))

(assert (= (and b!963154 res!644706) b!963151))

(assert (= (and b!963151 res!644707) b!963148))

(assert (= (and b!963148 res!644703) b!963153))

(assert (= (and b!963153 res!644701) b!963144))

(assert (= (and b!963146 condMapEmpty!34354) mapIsEmpty!34354))

(assert (= (and b!963146 (not condMapEmpty!34354)) mapNonEmpty!34354))

(get-info :version)

(assert (= (and mapNonEmpty!34354 ((_ is ValueCellFull!10305) mapValue!34354)) b!963147))

(assert (= (and b!963146 ((_ is ValueCellFull!10305) mapDefault!34354)) b!963150))

(assert (= start!82666 b!963146))

(declare-fun m!892701 () Bool)

(assert (=> b!963151 m!892701))

(assert (=> b!963151 m!892701))

(declare-fun m!892703 () Bool)

(assert (=> b!963151 m!892703))

(declare-fun m!892705 () Bool)

(assert (=> b!963144 m!892705))

(assert (=> b!963144 m!892701))

(assert (=> b!963144 m!892705))

(assert (=> b!963144 m!892701))

(declare-fun m!892707 () Bool)

(assert (=> b!963144 m!892707))

(declare-fun m!892709 () Bool)

(assert (=> b!963144 m!892709))

(declare-fun m!892711 () Bool)

(assert (=> mapNonEmpty!34354 m!892711))

(declare-fun m!892713 () Bool)

(assert (=> b!963152 m!892713))

(declare-fun m!892715 () Bool)

(assert (=> start!82666 m!892715))

(declare-fun m!892717 () Bool)

(assert (=> start!82666 m!892717))

(declare-fun m!892719 () Bool)

(assert (=> start!82666 m!892719))

(declare-fun m!892721 () Bool)

(assert (=> b!963148 m!892721))

(assert (=> b!963148 m!892701))

(assert (=> b!963148 m!892721))

(assert (=> b!963148 m!892701))

(declare-fun m!892723 () Bool)

(assert (=> b!963148 m!892723))

(declare-fun m!892725 () Bool)

(assert (=> b!963149 m!892725))

(check-sat (not b!963148) b_and!30277 (not mapNonEmpty!34354) (not b_next!18771) (not b!963151) (not b!963149) (not b!963144) (not start!82666) tp_is_empty!21573 (not b!963152))
(check-sat b_and!30277 (not b_next!18771))
