; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37240 () Bool)

(assert start!37240)

(declare-fun b_free!8359 () Bool)

(declare-fun b_next!8359 () Bool)

(assert (=> start!37240 (= b_free!8359 (not b_next!8359))))

(declare-fun tp!29792 () Bool)

(declare-fun b_and!15619 () Bool)

(assert (=> start!37240 (= tp!29792 b_and!15619)))

(declare-fun b!376326 () Bool)

(declare-fun res!212768 () Bool)

(declare-fun e!229203 () Bool)

(assert (=> b!376326 (=> (not res!212768) (not e!229203))))

(declare-datatypes ((array!21913 0))(
  ( (array!21914 (arr!10422 (Array (_ BitVec 32) (_ BitVec 64))) (size!10774 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21913)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376326 (= res!212768 (or (= (select (arr!10422 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10422 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376327 () Bool)

(declare-fun e!229199 () Bool)

(declare-fun tp_is_empty!9007 () Bool)

(assert (=> b!376327 (= e!229199 tp_is_empty!9007)))

(declare-fun b!376328 () Bool)

(declare-fun res!212772 () Bool)

(assert (=> b!376328 (=> (not res!212772) (not e!229203))))

(assert (=> b!376328 (= res!212772 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10774 _keys!658))))))

(declare-fun b!376329 () Bool)

(declare-fun res!212766 () Bool)

(assert (=> b!376329 (=> (not res!212766) (not e!229203))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376329 (= res!212766 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!376331 () Bool)

(declare-fun e!229202 () Bool)

(assert (=> b!376331 (= e!229203 e!229202)))

(declare-fun res!212777 () Bool)

(assert (=> b!376331 (=> (not res!212777) (not e!229202))))

(declare-fun lt!174667 () array!21913)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21913 (_ BitVec 32)) Bool)

(assert (=> b!376331 (= res!212777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174667 mask!970))))

(assert (=> b!376331 (= lt!174667 (array!21914 (store (arr!10422 _keys!658) i!548 k!778) (size!10774 _keys!658)))))

(declare-fun mapIsEmpty!15075 () Bool)

(declare-fun mapRes!15075 () Bool)

(assert (=> mapIsEmpty!15075 mapRes!15075))

(declare-fun b!376332 () Bool)

(declare-fun res!212771 () Bool)

(assert (=> b!376332 (=> (not res!212771) (not e!229203))))

(declare-datatypes ((List!5901 0))(
  ( (Nil!5898) (Cons!5897 (h!6753 (_ BitVec 64)) (t!11059 List!5901)) )
))
(declare-fun arrayNoDuplicates!0 (array!21913 (_ BitVec 32) List!5901) Bool)

(assert (=> b!376332 (= res!212771 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5898))))

(declare-fun b!376333 () Bool)

(declare-fun res!212775 () Bool)

(assert (=> b!376333 (=> (not res!212775) (not e!229203))))

(assert (=> b!376333 (= res!212775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376334 () Bool)

(declare-fun e!229197 () Bool)

(declare-fun e!229198 () Bool)

(assert (=> b!376334 (= e!229197 e!229198)))

(declare-fun res!212776 () Bool)

(assert (=> b!376334 (=> res!212776 e!229198)))

(assert (=> b!376334 (= res!212776 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13115 0))(
  ( (V!13116 (val!4548 Int)) )
))
(declare-datatypes ((tuple2!6030 0))(
  ( (tuple2!6031 (_1!3025 (_ BitVec 64)) (_2!3025 V!13115)) )
))
(declare-datatypes ((List!5902 0))(
  ( (Nil!5899) (Cons!5898 (h!6754 tuple2!6030) (t!11060 List!5902)) )
))
(declare-datatypes ((ListLongMap!4957 0))(
  ( (ListLongMap!4958 (toList!2494 List!5902)) )
))
(declare-fun lt!174672 () ListLongMap!4957)

(declare-fun lt!174668 () ListLongMap!4957)

(assert (=> b!376334 (= lt!174672 lt!174668)))

(declare-fun lt!174665 () ListLongMap!4957)

(declare-fun lt!174661 () tuple2!6030)

(declare-fun +!835 (ListLongMap!4957 tuple2!6030) ListLongMap!4957)

(assert (=> b!376334 (= lt!174668 (+!835 lt!174665 lt!174661))))

(declare-fun lt!174666 () ListLongMap!4957)

(declare-fun lt!174671 () ListLongMap!4957)

(assert (=> b!376334 (= lt!174666 lt!174671)))

(declare-fun lt!174669 () ListLongMap!4957)

(assert (=> b!376334 (= lt!174671 (+!835 lt!174669 lt!174661))))

(declare-fun lt!174663 () ListLongMap!4957)

(assert (=> b!376334 (= lt!174672 (+!835 lt!174663 lt!174661))))

(declare-fun zeroValue!472 () V!13115)

(assert (=> b!376334 (= lt!174661 (tuple2!6031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376335 () Bool)

(declare-fun e!229196 () Bool)

(assert (=> b!376335 (= e!229196 tp_is_empty!9007)))

(declare-fun b!376336 () Bool)

(assert (=> b!376336 (= e!229198 true)))

(declare-fun lt!174673 () tuple2!6030)

(assert (=> b!376336 (= lt!174668 (+!835 lt!174671 lt!174673))))

(declare-datatypes ((Unit!11573 0))(
  ( (Unit!11574) )
))
(declare-fun lt!174670 () Unit!11573)

(declare-fun v!373 () V!13115)

(declare-fun addCommutativeForDiffKeys!259 (ListLongMap!4957 (_ BitVec 64) V!13115 (_ BitVec 64) V!13115) Unit!11573)

(assert (=> b!376336 (= lt!174670 (addCommutativeForDiffKeys!259 lt!174669 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376337 () Bool)

(declare-fun res!212774 () Bool)

(assert (=> b!376337 (=> (not res!212774) (not e!229202))))

(assert (=> b!376337 (= res!212774 (arrayNoDuplicates!0 lt!174667 #b00000000000000000000000000000000 Nil!5898))))

(declare-fun b!376338 () Bool)

(declare-fun res!212773 () Bool)

(assert (=> b!376338 (=> (not res!212773) (not e!229203))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4160 0))(
  ( (ValueCellFull!4160 (v!6741 V!13115)) (EmptyCell!4160) )
))
(declare-datatypes ((array!21915 0))(
  ( (array!21916 (arr!10423 (Array (_ BitVec 32) ValueCell!4160)) (size!10775 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21915)

(assert (=> b!376338 (= res!212773 (and (= (size!10775 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10774 _keys!658) (size!10775 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15075 () Bool)

(declare-fun tp!29793 () Bool)

(assert (=> mapNonEmpty!15075 (= mapRes!15075 (and tp!29793 e!229196))))

(declare-fun mapRest!15075 () (Array (_ BitVec 32) ValueCell!4160))

(declare-fun mapKey!15075 () (_ BitVec 32))

(declare-fun mapValue!15075 () ValueCell!4160)

(assert (=> mapNonEmpty!15075 (= (arr!10423 _values!506) (store mapRest!15075 mapKey!15075 mapValue!15075))))

(declare-fun b!376330 () Bool)

(declare-fun res!212770 () Bool)

(assert (=> b!376330 (=> (not res!212770) (not e!229203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376330 (= res!212770 (validKeyInArray!0 k!778))))

(declare-fun res!212769 () Bool)

(assert (=> start!37240 (=> (not res!212769) (not e!229203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37240 (= res!212769 (validMask!0 mask!970))))

(assert (=> start!37240 e!229203))

(declare-fun e!229201 () Bool)

(declare-fun array_inv!7674 (array!21915) Bool)

(assert (=> start!37240 (and (array_inv!7674 _values!506) e!229201)))

(assert (=> start!37240 tp!29792))

(assert (=> start!37240 true))

(assert (=> start!37240 tp_is_empty!9007))

(declare-fun array_inv!7675 (array!21913) Bool)

(assert (=> start!37240 (array_inv!7675 _keys!658)))

(declare-fun b!376339 () Bool)

(assert (=> b!376339 (= e!229202 (not e!229197))))

(declare-fun res!212767 () Bool)

(assert (=> b!376339 (=> res!212767 e!229197)))

(assert (=> b!376339 (= res!212767 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13115)

(declare-fun getCurrentListMap!1933 (array!21913 array!21915 (_ BitVec 32) (_ BitVec 32) V!13115 V!13115 (_ BitVec 32) Int) ListLongMap!4957)

(assert (=> b!376339 (= lt!174666 (getCurrentListMap!1933 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174662 () array!21915)

(assert (=> b!376339 (= lt!174672 (getCurrentListMap!1933 lt!174667 lt!174662 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376339 (and (= lt!174663 lt!174665) (= lt!174665 lt!174663))))

(assert (=> b!376339 (= lt!174665 (+!835 lt!174669 lt!174673))))

(assert (=> b!376339 (= lt!174673 (tuple2!6031 k!778 v!373))))

(declare-fun lt!174664 () Unit!11573)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!84 (array!21913 array!21915 (_ BitVec 32) (_ BitVec 32) V!13115 V!13115 (_ BitVec 32) (_ BitVec 64) V!13115 (_ BitVec 32) Int) Unit!11573)

(assert (=> b!376339 (= lt!174664 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!84 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!751 (array!21913 array!21915 (_ BitVec 32) (_ BitVec 32) V!13115 V!13115 (_ BitVec 32) Int) ListLongMap!4957)

(assert (=> b!376339 (= lt!174663 (getCurrentListMapNoExtraKeys!751 lt!174667 lt!174662 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376339 (= lt!174662 (array!21916 (store (arr!10423 _values!506) i!548 (ValueCellFull!4160 v!373)) (size!10775 _values!506)))))

(assert (=> b!376339 (= lt!174669 (getCurrentListMapNoExtraKeys!751 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376340 () Bool)

(assert (=> b!376340 (= e!229201 (and e!229199 mapRes!15075))))

(declare-fun condMapEmpty!15075 () Bool)

(declare-fun mapDefault!15075 () ValueCell!4160)

