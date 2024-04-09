; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37144 () Bool)

(assert start!37144)

(declare-fun b_free!8263 () Bool)

(declare-fun b_next!8263 () Bool)

(assert (=> start!37144 (= b_free!8263 (not b_next!8263))))

(declare-fun tp!29505 () Bool)

(declare-fun b_and!15523 () Bool)

(assert (=> start!37144 (= tp!29505 b_and!15523)))

(declare-fun b!374157 () Bool)

(declare-fun e!228049 () Bool)

(declare-fun e!228045 () Bool)

(assert (=> b!374157 (= e!228049 e!228045)))

(declare-fun res!211038 () Bool)

(assert (=> b!374157 (=> res!211038 e!228045)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!374157 (= res!211038 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!12987 0))(
  ( (V!12988 (val!4500 Int)) )
))
(declare-datatypes ((tuple2!5960 0))(
  ( (tuple2!5961 (_1!2990 (_ BitVec 64)) (_2!2990 V!12987)) )
))
(declare-datatypes ((List!5831 0))(
  ( (Nil!5828) (Cons!5827 (h!6683 tuple2!5960) (t!10989 List!5831)) )
))
(declare-datatypes ((ListLongMap!4887 0))(
  ( (ListLongMap!4888 (toList!2459 List!5831)) )
))
(declare-fun lt!172487 () ListLongMap!4887)

(declare-fun lt!172484 () ListLongMap!4887)

(assert (=> b!374157 (= lt!172487 lt!172484)))

(declare-fun lt!172476 () ListLongMap!4887)

(declare-fun lt!172477 () tuple2!5960)

(declare-fun +!800 (ListLongMap!4887 tuple2!5960) ListLongMap!4887)

(assert (=> b!374157 (= lt!172484 (+!800 lt!172476 lt!172477))))

(declare-datatypes ((Unit!11503 0))(
  ( (Unit!11504) )
))
(declare-fun lt!172486 () Unit!11503)

(declare-fun v!373 () V!12987)

(declare-fun lt!172480 () ListLongMap!4887)

(declare-fun zeroValue!472 () V!12987)

(declare-fun addCommutativeForDiffKeys!229 (ListLongMap!4887 (_ BitVec 64) V!12987 (_ BitVec 64) V!12987) Unit!11503)

(assert (=> b!374157 (= lt!172486 (addCommutativeForDiffKeys!229 lt!172480 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!172483 () ListLongMap!4887)

(declare-fun lt!172479 () tuple2!5960)

(assert (=> b!374157 (= lt!172483 (+!800 lt!172487 lt!172479))))

(declare-fun lt!172489 () ListLongMap!4887)

(declare-fun lt!172478 () tuple2!5960)

(assert (=> b!374157 (= lt!172487 (+!800 lt!172489 lt!172478))))

(declare-fun lt!172482 () ListLongMap!4887)

(declare-fun lt!172474 () ListLongMap!4887)

(assert (=> b!374157 (= lt!172482 lt!172474)))

(assert (=> b!374157 (= lt!172474 (+!800 lt!172476 lt!172479))))

(assert (=> b!374157 (= lt!172476 (+!800 lt!172480 lt!172478))))

(declare-fun lt!172485 () ListLongMap!4887)

(assert (=> b!374157 (= lt!172483 (+!800 (+!800 lt!172485 lt!172478) lt!172479))))

(declare-fun minValue!472 () V!12987)

(assert (=> b!374157 (= lt!172479 (tuple2!5961 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374157 (= lt!172478 (tuple2!5961 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374158 () Bool)

(declare-fun res!211030 () Bool)

(declare-fun e!228050 () Bool)

(assert (=> b!374158 (=> (not res!211030) (not e!228050))))

(declare-datatypes ((array!21727 0))(
  ( (array!21728 (arr!10329 (Array (_ BitVec 32) (_ BitVec 64))) (size!10681 (_ BitVec 32))) )
))
(declare-fun lt!172473 () array!21727)

(declare-datatypes ((List!5832 0))(
  ( (Nil!5829) (Cons!5828 (h!6684 (_ BitVec 64)) (t!10990 List!5832)) )
))
(declare-fun arrayNoDuplicates!0 (array!21727 (_ BitVec 32) List!5832) Bool)

(assert (=> b!374158 (= res!211030 (arrayNoDuplicates!0 lt!172473 #b00000000000000000000000000000000 Nil!5829))))

(declare-fun b!374159 () Bool)

(declare-fun e!228047 () Bool)

(assert (=> b!374159 (= e!228047 e!228050)))

(declare-fun res!211040 () Bool)

(assert (=> b!374159 (=> (not res!211040) (not e!228050))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21727 (_ BitVec 32)) Bool)

(assert (=> b!374159 (= res!211040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172473 mask!970))))

(declare-fun _keys!658 () array!21727)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374159 (= lt!172473 (array!21728 (store (arr!10329 _keys!658) i!548 k!778) (size!10681 _keys!658)))))

(declare-fun b!374160 () Bool)

(assert (=> b!374160 (= e!228050 (not e!228049))))

(declare-fun res!211039 () Bool)

(assert (=> b!374160 (=> res!211039 e!228049)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!374160 (= res!211039 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4112 0))(
  ( (ValueCellFull!4112 (v!6693 V!12987)) (EmptyCell!4112) )
))
(declare-datatypes ((array!21729 0))(
  ( (array!21730 (arr!10330 (Array (_ BitVec 32) ValueCell!4112)) (size!10682 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21729)

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1904 (array!21727 array!21729 (_ BitVec 32) (_ BitVec 32) V!12987 V!12987 (_ BitVec 32) Int) ListLongMap!4887)

(assert (=> b!374160 (= lt!172482 (getCurrentListMap!1904 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172475 () array!21729)

(assert (=> b!374160 (= lt!172483 (getCurrentListMap!1904 lt!172473 lt!172475 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374160 (and (= lt!172485 lt!172489) (= lt!172489 lt!172485))))

(assert (=> b!374160 (= lt!172489 (+!800 lt!172480 lt!172477))))

(assert (=> b!374160 (= lt!172477 (tuple2!5961 k!778 v!373))))

(declare-fun lt!172488 () Unit!11503)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!55 (array!21727 array!21729 (_ BitVec 32) (_ BitVec 32) V!12987 V!12987 (_ BitVec 32) (_ BitVec 64) V!12987 (_ BitVec 32) Int) Unit!11503)

(assert (=> b!374160 (= lt!172488 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!55 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!722 (array!21727 array!21729 (_ BitVec 32) (_ BitVec 32) V!12987 V!12987 (_ BitVec 32) Int) ListLongMap!4887)

(assert (=> b!374160 (= lt!172485 (getCurrentListMapNoExtraKeys!722 lt!172473 lt!172475 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374160 (= lt!172475 (array!21730 (store (arr!10330 _values!506) i!548 (ValueCellFull!4112 v!373)) (size!10682 _values!506)))))

(assert (=> b!374160 (= lt!172480 (getCurrentListMapNoExtraKeys!722 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374161 () Bool)

(declare-fun res!211031 () Bool)

(assert (=> b!374161 (=> (not res!211031) (not e!228047))))

(declare-fun arrayContainsKey!0 (array!21727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374161 (= res!211031 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!374162 () Bool)

(declare-fun res!211029 () Bool)

(assert (=> b!374162 (=> (not res!211029) (not e!228047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374162 (= res!211029 (validKeyInArray!0 k!778))))

(declare-fun b!374163 () Bool)

(declare-fun res!211033 () Bool)

(assert (=> b!374163 (=> (not res!211033) (not e!228047))))

(assert (=> b!374163 (= res!211033 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10681 _keys!658))))))

(declare-fun b!374165 () Bool)

(declare-fun e!228044 () Bool)

(declare-fun tp_is_empty!8911 () Bool)

(assert (=> b!374165 (= e!228044 tp_is_empty!8911)))

(declare-fun mapNonEmpty!14931 () Bool)

(declare-fun mapRes!14931 () Bool)

(declare-fun tp!29504 () Bool)

(assert (=> mapNonEmpty!14931 (= mapRes!14931 (and tp!29504 e!228044))))

(declare-fun mapKey!14931 () (_ BitVec 32))

(declare-fun mapValue!14931 () ValueCell!4112)

(declare-fun mapRest!14931 () (Array (_ BitVec 32) ValueCell!4112))

(assert (=> mapNonEmpty!14931 (= (arr!10330 _values!506) (store mapRest!14931 mapKey!14931 mapValue!14931))))

(declare-fun b!374166 () Bool)

(declare-fun res!211036 () Bool)

(assert (=> b!374166 (=> (not res!211036) (not e!228047))))

(assert (=> b!374166 (= res!211036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374167 () Bool)

(assert (=> b!374167 (= e!228045 (bvsle #b00000000000000000000000000000000 (size!10681 _keys!658)))))

(assert (=> b!374167 (= (+!800 lt!172484 lt!172479) (+!800 lt!172474 lt!172477))))

(declare-fun lt!172481 () Unit!11503)

(assert (=> b!374167 (= lt!172481 (addCommutativeForDiffKeys!229 lt!172476 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374168 () Bool)

(declare-fun e!228051 () Bool)

(assert (=> b!374168 (= e!228051 tp_is_empty!8911)))

(declare-fun b!374164 () Bool)

(declare-fun e!228046 () Bool)

(assert (=> b!374164 (= e!228046 (and e!228051 mapRes!14931))))

(declare-fun condMapEmpty!14931 () Bool)

(declare-fun mapDefault!14931 () ValueCell!4112)

