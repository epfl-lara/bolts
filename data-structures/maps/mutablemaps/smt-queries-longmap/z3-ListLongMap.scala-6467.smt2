; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82672 () Bool)

(assert start!82672)

(declare-fun b_free!18777 () Bool)

(declare-fun b_next!18777 () Bool)

(assert (=> start!82672 (= b_free!18777 (not b_next!18777))))

(declare-fun tp!65451 () Bool)

(declare-fun b_and!30283 () Bool)

(assert (=> start!82672 (= tp!65451 b_and!30283)))

(declare-fun b!963243 () Bool)

(declare-fun res!644774 () Bool)

(declare-fun e!543161 () Bool)

(assert (=> b!963243 (=> (not res!644774) (not e!543161))))

(declare-datatypes ((array!59235 0))(
  ( (array!59236 (arr!28482 (Array (_ BitVec 32) (_ BitVec 64))) (size!28962 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59235)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963243 (= res!644774 (validKeyInArray!0 (select (arr!28482 _keys!1686) i!803)))))

(declare-fun b!963244 () Bool)

(declare-fun res!644773 () Bool)

(assert (=> b!963244 (=> (not res!644773) (not e!543161))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!963244 (= res!644773 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963245 () Bool)

(declare-fun res!644779 () Bool)

(assert (=> b!963245 (=> (not res!644779) (not e!543161))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59235 (_ BitVec 32)) Bool)

(assert (=> b!963245 (= res!644779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963246 () Bool)

(declare-fun e!543159 () Bool)

(declare-fun e!543162 () Bool)

(declare-fun mapRes!34363 () Bool)

(assert (=> b!963246 (= e!543159 (and e!543162 mapRes!34363))))

(declare-fun condMapEmpty!34363 () Bool)

(declare-datatypes ((V!33755 0))(
  ( (V!33756 (val!10840 Int)) )
))
(declare-datatypes ((ValueCell!10308 0))(
  ( (ValueCellFull!10308 (v!13398 V!33755)) (EmptyCell!10308) )
))
(declare-datatypes ((array!59237 0))(
  ( (array!59238 (arr!28483 (Array (_ BitVec 32) ValueCell!10308)) (size!28963 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59237)

(declare-fun mapDefault!34363 () ValueCell!10308)

(assert (=> b!963246 (= condMapEmpty!34363 (= (arr!28483 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10308)) mapDefault!34363)))))

(declare-fun b!963247 () Bool)

(declare-fun res!644775 () Bool)

(assert (=> b!963247 (=> (not res!644775) (not e!543161))))

(declare-datatypes ((List!19890 0))(
  ( (Nil!19887) (Cons!19886 (h!21048 (_ BitVec 64)) (t!28261 List!19890)) )
))
(declare-fun arrayNoDuplicates!0 (array!59235 (_ BitVec 32) List!19890) Bool)

(assert (=> b!963247 (= res!644775 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19887))))

(declare-fun res!644778 () Bool)

(assert (=> start!82672 (=> (not res!644778) (not e!543161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82672 (= res!644778 (validMask!0 mask!2110))))

(assert (=> start!82672 e!543161))

(assert (=> start!82672 true))

(declare-fun array_inv!21987 (array!59237) Bool)

(assert (=> start!82672 (and (array_inv!21987 _values!1400) e!543159)))

(declare-fun array_inv!21988 (array!59235) Bool)

(assert (=> start!82672 (array_inv!21988 _keys!1686)))

(assert (=> start!82672 tp!65451))

(declare-fun tp_is_empty!21579 () Bool)

(assert (=> start!82672 tp_is_empty!21579))

(declare-fun mapIsEmpty!34363 () Bool)

(assert (=> mapIsEmpty!34363 mapRes!34363))

(declare-fun b!963248 () Bool)

(declare-fun res!644777 () Bool)

(assert (=> b!963248 (=> (not res!644777) (not e!543161))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!963248 (= res!644777 (and (= (size!28963 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28962 _keys!1686) (size!28963 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963249 () Bool)

(assert (=> b!963249 (= e!543162 tp_is_empty!21579)))

(declare-fun b!963250 () Bool)

(declare-fun res!644776 () Bool)

(assert (=> b!963250 (=> (not res!644776) (not e!543161))))

(declare-fun minValue!1342 () V!33755)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33755)

(declare-datatypes ((tuple2!14008 0))(
  ( (tuple2!14009 (_1!7014 (_ BitVec 64)) (_2!7014 V!33755)) )
))
(declare-datatypes ((List!19891 0))(
  ( (Nil!19888) (Cons!19887 (h!21049 tuple2!14008) (t!28262 List!19891)) )
))
(declare-datatypes ((ListLongMap!12719 0))(
  ( (ListLongMap!12720 (toList!6375 List!19891)) )
))
(declare-fun contains!5429 (ListLongMap!12719 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3560 (array!59235 array!59237 (_ BitVec 32) (_ BitVec 32) V!33755 V!33755 (_ BitVec 32) Int) ListLongMap!12719)

(assert (=> b!963250 (= res!644776 (contains!5429 (getCurrentListMap!3560 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28482 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34363 () Bool)

(declare-fun tp!65452 () Bool)

(declare-fun e!543163 () Bool)

(assert (=> mapNonEmpty!34363 (= mapRes!34363 (and tp!65452 e!543163))))

(declare-fun mapRest!34363 () (Array (_ BitVec 32) ValueCell!10308))

(declare-fun mapKey!34363 () (_ BitVec 32))

(declare-fun mapValue!34363 () ValueCell!10308)

(assert (=> mapNonEmpty!34363 (= (arr!28483 _values!1400) (store mapRest!34363 mapKey!34363 mapValue!34363))))

(declare-fun b!963251 () Bool)

(assert (=> b!963251 (= e!543163 tp_is_empty!21579)))

(declare-fun b!963252 () Bool)

(declare-fun res!644780 () Bool)

(assert (=> b!963252 (=> (not res!644780) (not e!543161))))

(assert (=> b!963252 (= res!644780 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28962 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28962 _keys!1686))))))

(declare-fun b!963253 () Bool)

(assert (=> b!963253 (= e!543161 (not true))))

(assert (=> b!963253 (contains!5429 (getCurrentListMap!3560 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28482 _keys!1686) i!803))))

(declare-datatypes ((Unit!32211 0))(
  ( (Unit!32212) )
))
(declare-fun lt!430914 () Unit!32211)

(declare-fun lemmaInListMapFromThenInFromMinusOne!14 (array!59235 array!59237 (_ BitVec 32) (_ BitVec 32) V!33755 V!33755 (_ BitVec 32) (_ BitVec 32) Int) Unit!32211)

(assert (=> b!963253 (= lt!430914 (lemmaInListMapFromThenInFromMinusOne!14 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(assert (= (and start!82672 res!644778) b!963248))

(assert (= (and b!963248 res!644777) b!963245))

(assert (= (and b!963245 res!644779) b!963247))

(assert (= (and b!963247 res!644775) b!963252))

(assert (= (and b!963252 res!644780) b!963243))

(assert (= (and b!963243 res!644774) b!963250))

(assert (= (and b!963250 res!644776) b!963244))

(assert (= (and b!963244 res!644773) b!963253))

(assert (= (and b!963246 condMapEmpty!34363) mapIsEmpty!34363))

(assert (= (and b!963246 (not condMapEmpty!34363)) mapNonEmpty!34363))

(get-info :version)

(assert (= (and mapNonEmpty!34363 ((_ is ValueCellFull!10308) mapValue!34363)) b!963251))

(assert (= (and b!963246 ((_ is ValueCellFull!10308) mapDefault!34363)) b!963249))

(assert (= start!82672 b!963246))

(declare-fun m!892779 () Bool)

(assert (=> mapNonEmpty!34363 m!892779))

(declare-fun m!892781 () Bool)

(assert (=> b!963243 m!892781))

(assert (=> b!963243 m!892781))

(declare-fun m!892783 () Bool)

(assert (=> b!963243 m!892783))

(declare-fun m!892785 () Bool)

(assert (=> b!963245 m!892785))

(declare-fun m!892787 () Bool)

(assert (=> b!963247 m!892787))

(declare-fun m!892789 () Bool)

(assert (=> b!963253 m!892789))

(assert (=> b!963253 m!892781))

(assert (=> b!963253 m!892789))

(assert (=> b!963253 m!892781))

(declare-fun m!892791 () Bool)

(assert (=> b!963253 m!892791))

(declare-fun m!892793 () Bool)

(assert (=> b!963253 m!892793))

(declare-fun m!892795 () Bool)

(assert (=> b!963250 m!892795))

(assert (=> b!963250 m!892781))

(assert (=> b!963250 m!892795))

(assert (=> b!963250 m!892781))

(declare-fun m!892797 () Bool)

(assert (=> b!963250 m!892797))

(declare-fun m!892799 () Bool)

(assert (=> start!82672 m!892799))

(declare-fun m!892801 () Bool)

(assert (=> start!82672 m!892801))

(declare-fun m!892803 () Bool)

(assert (=> start!82672 m!892803))

(check-sat (not b!963245) (not b!963247) tp_is_empty!21579 b_and!30283 (not b!963250) (not mapNonEmpty!34363) (not b!963253) (not b_next!18777) (not start!82672) (not b!963243))
(check-sat b_and!30283 (not b_next!18777))
