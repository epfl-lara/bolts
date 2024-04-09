; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37146 () Bool)

(assert start!37146)

(declare-fun b_free!8265 () Bool)

(declare-fun b_next!8265 () Bool)

(assert (=> start!37146 (= b_free!8265 (not b_next!8265))))

(declare-fun tp!29511 () Bool)

(declare-fun b_and!15525 () Bool)

(assert (=> start!37146 (= tp!29511 b_and!15525)))

(declare-fun b!374202 () Bool)

(declare-fun e!228073 () Bool)

(declare-fun e!228069 () Bool)

(assert (=> b!374202 (= e!228073 e!228069)))

(declare-fun res!211069 () Bool)

(assert (=> b!374202 (=> res!211069 e!228069)))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!374202 (= res!211069 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!12989 0))(
  ( (V!12990 (val!4501 Int)) )
))
(declare-datatypes ((tuple2!5962 0))(
  ( (tuple2!5963 (_1!2991 (_ BitVec 64)) (_2!2991 V!12989)) )
))
(declare-datatypes ((List!5833 0))(
  ( (Nil!5830) (Cons!5829 (h!6685 tuple2!5962) (t!10991 List!5833)) )
))
(declare-datatypes ((ListLongMap!4889 0))(
  ( (ListLongMap!4890 (toList!2460 List!5833)) )
))
(declare-fun lt!172530 () ListLongMap!4889)

(declare-fun lt!172525 () ListLongMap!4889)

(assert (=> b!374202 (= lt!172530 lt!172525)))

(declare-fun lt!172540 () ListLongMap!4889)

(declare-fun lt!172531 () tuple2!5962)

(declare-fun +!801 (ListLongMap!4889 tuple2!5962) ListLongMap!4889)

(assert (=> b!374202 (= lt!172525 (+!801 lt!172540 lt!172531))))

(declare-fun v!373 () V!12989)

(declare-datatypes ((Unit!11505 0))(
  ( (Unit!11506) )
))
(declare-fun lt!172529 () Unit!11505)

(declare-fun zeroValue!472 () V!12989)

(declare-fun lt!172526 () ListLongMap!4889)

(declare-fun addCommutativeForDiffKeys!230 (ListLongMap!4889 (_ BitVec 64) V!12989 (_ BitVec 64) V!12989) Unit!11505)

(assert (=> b!374202 (= lt!172529 (addCommutativeForDiffKeys!230 lt!172526 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172535 () ListLongMap!4889)

(declare-fun lt!172524 () tuple2!5962)

(assert (=> b!374202 (= lt!172535 (+!801 lt!172530 lt!172524))))

(declare-fun lt!172534 () ListLongMap!4889)

(declare-fun lt!172536 () tuple2!5962)

(assert (=> b!374202 (= lt!172530 (+!801 lt!172534 lt!172536))))

(declare-fun lt!172539 () ListLongMap!4889)

(declare-fun lt!172528 () ListLongMap!4889)

(assert (=> b!374202 (= lt!172539 lt!172528)))

(assert (=> b!374202 (= lt!172528 (+!801 lt!172540 lt!172524))))

(assert (=> b!374202 (= lt!172540 (+!801 lt!172526 lt!172536))))

(declare-fun lt!172538 () ListLongMap!4889)

(assert (=> b!374202 (= lt!172535 (+!801 (+!801 lt!172538 lt!172536) lt!172524))))

(declare-fun minValue!472 () V!12989)

(assert (=> b!374202 (= lt!172524 (tuple2!5963 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374202 (= lt!172536 (tuple2!5963 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374203 () Bool)

(declare-fun res!211072 () Bool)

(declare-fun e!228072 () Bool)

(assert (=> b!374203 (=> (not res!211072) (not e!228072))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21731 0))(
  ( (array!21732 (arr!10331 (Array (_ BitVec 32) (_ BitVec 64))) (size!10683 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21731)

(assert (=> b!374203 (= res!211072 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10683 _keys!658))))))

(declare-fun mapIsEmpty!14934 () Bool)

(declare-fun mapRes!14934 () Bool)

(assert (=> mapIsEmpty!14934 mapRes!14934))

(declare-fun b!374204 () Bool)

(declare-fun res!211065 () Bool)

(assert (=> b!374204 (=> (not res!211065) (not e!228072))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21731 (_ BitVec 32)) Bool)

(assert (=> b!374204 (= res!211065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374205 () Bool)

(declare-fun res!211074 () Bool)

(assert (=> b!374205 (=> (not res!211074) (not e!228072))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4113 0))(
  ( (ValueCellFull!4113 (v!6694 V!12989)) (EmptyCell!4113) )
))
(declare-datatypes ((array!21733 0))(
  ( (array!21734 (arr!10332 (Array (_ BitVec 32) ValueCell!4113)) (size!10684 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21733)

(assert (=> b!374205 (= res!211074 (and (= (size!10684 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10683 _keys!658) (size!10684 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!374206 () Bool)

(declare-fun e!228074 () Bool)

(declare-fun tp_is_empty!8913 () Bool)

(assert (=> b!374206 (= e!228074 tp_is_empty!8913)))

(declare-fun mapNonEmpty!14934 () Bool)

(declare-fun tp!29510 () Bool)

(declare-fun e!228070 () Bool)

(assert (=> mapNonEmpty!14934 (= mapRes!14934 (and tp!29510 e!228070))))

(declare-fun mapValue!14934 () ValueCell!4113)

(declare-fun mapRest!14934 () (Array (_ BitVec 32) ValueCell!4113))

(declare-fun mapKey!14934 () (_ BitVec 32))

(assert (=> mapNonEmpty!14934 (= (arr!10332 _values!506) (store mapRest!14934 mapKey!14934 mapValue!14934))))

(declare-fun res!211076 () Bool)

(assert (=> start!37146 (=> (not res!211076) (not e!228072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37146 (= res!211076 (validMask!0 mask!970))))

(assert (=> start!37146 e!228072))

(declare-fun e!228068 () Bool)

(declare-fun array_inv!7620 (array!21733) Bool)

(assert (=> start!37146 (and (array_inv!7620 _values!506) e!228068)))

(assert (=> start!37146 tp!29511))

(assert (=> start!37146 true))

(assert (=> start!37146 tp_is_empty!8913))

(declare-fun array_inv!7621 (array!21731) Bool)

(assert (=> start!37146 (array_inv!7621 _keys!658)))

(declare-fun b!374207 () Bool)

(declare-fun res!211068 () Bool)

(declare-fun e!228071 () Bool)

(assert (=> b!374207 (=> (not res!211068) (not e!228071))))

(declare-fun lt!172537 () array!21731)

(declare-datatypes ((List!5834 0))(
  ( (Nil!5831) (Cons!5830 (h!6686 (_ BitVec 64)) (t!10992 List!5834)) )
))
(declare-fun arrayNoDuplicates!0 (array!21731 (_ BitVec 32) List!5834) Bool)

(assert (=> b!374207 (= res!211068 (arrayNoDuplicates!0 lt!172537 #b00000000000000000000000000000000 Nil!5831))))

(declare-fun b!374208 () Bool)

(assert (=> b!374208 (= e!228069 (bvsle #b00000000000000000000000000000000 (size!10683 _keys!658)))))

(assert (=> b!374208 (= (+!801 lt!172525 lt!172524) (+!801 lt!172528 lt!172531))))

(declare-fun lt!172533 () Unit!11505)

(assert (=> b!374208 (= lt!172533 (addCommutativeForDiffKeys!230 lt!172540 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374209 () Bool)

(assert (=> b!374209 (= e!228072 e!228071)))

(declare-fun res!211066 () Bool)

(assert (=> b!374209 (=> (not res!211066) (not e!228071))))

(assert (=> b!374209 (= res!211066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172537 mask!970))))

(assert (=> b!374209 (= lt!172537 (array!21732 (store (arr!10331 _keys!658) i!548 k0!778) (size!10683 _keys!658)))))

(declare-fun b!374210 () Bool)

(declare-fun res!211073 () Bool)

(assert (=> b!374210 (=> (not res!211073) (not e!228072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374210 (= res!211073 (validKeyInArray!0 k0!778))))

(declare-fun b!374211 () Bool)

(declare-fun res!211075 () Bool)

(assert (=> b!374211 (=> (not res!211075) (not e!228072))))

(assert (=> b!374211 (= res!211075 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5831))))

(declare-fun b!374212 () Bool)

(assert (=> b!374212 (= e!228070 tp_is_empty!8913)))

(declare-fun b!374213 () Bool)

(declare-fun res!211067 () Bool)

(assert (=> b!374213 (=> (not res!211067) (not e!228072))))

(assert (=> b!374213 (= res!211067 (or (= (select (arr!10331 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10331 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374214 () Bool)

(assert (=> b!374214 (= e!228071 (not e!228073))))

(declare-fun res!211070 () Bool)

(assert (=> b!374214 (=> res!211070 e!228073)))

(assert (=> b!374214 (= res!211070 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1905 (array!21731 array!21733 (_ BitVec 32) (_ BitVec 32) V!12989 V!12989 (_ BitVec 32) Int) ListLongMap!4889)

(assert (=> b!374214 (= lt!172539 (getCurrentListMap!1905 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172532 () array!21733)

(assert (=> b!374214 (= lt!172535 (getCurrentListMap!1905 lt!172537 lt!172532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374214 (and (= lt!172538 lt!172534) (= lt!172534 lt!172538))))

(assert (=> b!374214 (= lt!172534 (+!801 lt!172526 lt!172531))))

(assert (=> b!374214 (= lt!172531 (tuple2!5963 k0!778 v!373))))

(declare-fun lt!172527 () Unit!11505)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!56 (array!21731 array!21733 (_ BitVec 32) (_ BitVec 32) V!12989 V!12989 (_ BitVec 32) (_ BitVec 64) V!12989 (_ BitVec 32) Int) Unit!11505)

(assert (=> b!374214 (= lt!172527 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!56 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!723 (array!21731 array!21733 (_ BitVec 32) (_ BitVec 32) V!12989 V!12989 (_ BitVec 32) Int) ListLongMap!4889)

(assert (=> b!374214 (= lt!172538 (getCurrentListMapNoExtraKeys!723 lt!172537 lt!172532 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374214 (= lt!172532 (array!21734 (store (arr!10332 _values!506) i!548 (ValueCellFull!4113 v!373)) (size!10684 _values!506)))))

(assert (=> b!374214 (= lt!172526 (getCurrentListMapNoExtraKeys!723 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374215 () Bool)

(assert (=> b!374215 (= e!228068 (and e!228074 mapRes!14934))))

(declare-fun condMapEmpty!14934 () Bool)

(declare-fun mapDefault!14934 () ValueCell!4113)

(assert (=> b!374215 (= condMapEmpty!14934 (= (arr!10332 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4113)) mapDefault!14934)))))

(declare-fun b!374216 () Bool)

(declare-fun res!211071 () Bool)

(assert (=> b!374216 (=> (not res!211071) (not e!228072))))

(declare-fun arrayContainsKey!0 (array!21731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374216 (= res!211071 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37146 res!211076) b!374205))

(assert (= (and b!374205 res!211074) b!374204))

(assert (= (and b!374204 res!211065) b!374211))

(assert (= (and b!374211 res!211075) b!374203))

(assert (= (and b!374203 res!211072) b!374210))

(assert (= (and b!374210 res!211073) b!374213))

(assert (= (and b!374213 res!211067) b!374216))

(assert (= (and b!374216 res!211071) b!374209))

(assert (= (and b!374209 res!211066) b!374207))

(assert (= (and b!374207 res!211068) b!374214))

(assert (= (and b!374214 (not res!211070)) b!374202))

(assert (= (and b!374202 (not res!211069)) b!374208))

(assert (= (and b!374215 condMapEmpty!14934) mapIsEmpty!14934))

(assert (= (and b!374215 (not condMapEmpty!14934)) mapNonEmpty!14934))

(get-info :version)

(assert (= (and mapNonEmpty!14934 ((_ is ValueCellFull!4113) mapValue!14934)) b!374212))

(assert (= (and b!374215 ((_ is ValueCellFull!4113) mapDefault!14934)) b!374206))

(assert (= start!37146 b!374215))

(declare-fun m!370481 () Bool)

(assert (=> b!374204 m!370481))

(declare-fun m!370483 () Bool)

(assert (=> b!374202 m!370483))

(declare-fun m!370485 () Bool)

(assert (=> b!374202 m!370485))

(declare-fun m!370487 () Bool)

(assert (=> b!374202 m!370487))

(assert (=> b!374202 m!370485))

(declare-fun m!370489 () Bool)

(assert (=> b!374202 m!370489))

(declare-fun m!370491 () Bool)

(assert (=> b!374202 m!370491))

(declare-fun m!370493 () Bool)

(assert (=> b!374202 m!370493))

(declare-fun m!370495 () Bool)

(assert (=> b!374202 m!370495))

(declare-fun m!370497 () Bool)

(assert (=> b!374202 m!370497))

(declare-fun m!370499 () Bool)

(assert (=> b!374210 m!370499))

(declare-fun m!370501 () Bool)

(assert (=> b!374214 m!370501))

(declare-fun m!370503 () Bool)

(assert (=> b!374214 m!370503))

(declare-fun m!370505 () Bool)

(assert (=> b!374214 m!370505))

(declare-fun m!370507 () Bool)

(assert (=> b!374214 m!370507))

(declare-fun m!370509 () Bool)

(assert (=> b!374214 m!370509))

(declare-fun m!370511 () Bool)

(assert (=> b!374214 m!370511))

(declare-fun m!370513 () Bool)

(assert (=> b!374214 m!370513))

(declare-fun m!370515 () Bool)

(assert (=> b!374208 m!370515))

(declare-fun m!370517 () Bool)

(assert (=> b!374208 m!370517))

(declare-fun m!370519 () Bool)

(assert (=> b!374208 m!370519))

(declare-fun m!370521 () Bool)

(assert (=> b!374213 m!370521))

(declare-fun m!370523 () Bool)

(assert (=> mapNonEmpty!14934 m!370523))

(declare-fun m!370525 () Bool)

(assert (=> b!374207 m!370525))

(declare-fun m!370527 () Bool)

(assert (=> b!374216 m!370527))

(declare-fun m!370529 () Bool)

(assert (=> start!37146 m!370529))

(declare-fun m!370531 () Bool)

(assert (=> start!37146 m!370531))

(declare-fun m!370533 () Bool)

(assert (=> start!37146 m!370533))

(declare-fun m!370535 () Bool)

(assert (=> b!374209 m!370535))

(declare-fun m!370537 () Bool)

(assert (=> b!374209 m!370537))

(declare-fun m!370539 () Bool)

(assert (=> b!374211 m!370539))

(check-sat (not b!374207) (not b!374216) (not mapNonEmpty!14934) (not b!374211) (not b!374209) tp_is_empty!8913 (not b!374208) (not b!374210) (not b!374204) (not b_next!8265) (not start!37146) (not b!374214) (not b!374202) b_and!15525)
(check-sat b_and!15525 (not b_next!8265))
