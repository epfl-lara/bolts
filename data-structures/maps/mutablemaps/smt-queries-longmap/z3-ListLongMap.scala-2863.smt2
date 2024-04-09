; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41244 () Bool)

(assert start!41244)

(declare-fun b_free!11079 () Bool)

(declare-fun b_next!11079 () Bool)

(assert (=> start!41244 (= b_free!11079 (not b_next!11079))))

(declare-fun tp!39076 () Bool)

(declare-fun b_and!19417 () Bool)

(assert (=> start!41244 (= tp!39076 b_and!19417)))

(declare-fun res!275853 () Bool)

(declare-fun e!268942 () Bool)

(assert (=> start!41244 (=> (not res!275853) (not e!268942))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28597 0))(
  ( (array!28598 (arr!13735 (Array (_ BitVec 32) (_ BitVec 64))) (size!14087 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28597)

(assert (=> start!41244 (= res!275853 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14087 _keys!709))))))

(assert (=> start!41244 e!268942))

(declare-fun tp_is_empty!12417 () Bool)

(assert (=> start!41244 tp_is_empty!12417))

(assert (=> start!41244 tp!39076))

(assert (=> start!41244 true))

(declare-datatypes ((V!17661 0))(
  ( (V!17662 (val!6253 Int)) )
))
(declare-datatypes ((ValueCell!5865 0))(
  ( (ValueCellFull!5865 (v!8531 V!17661)) (EmptyCell!5865) )
))
(declare-datatypes ((array!28599 0))(
  ( (array!28600 (arr!13736 (Array (_ BitVec 32) ValueCell!5865)) (size!14088 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28599)

(declare-fun e!268941 () Bool)

(declare-fun array_inv!9920 (array!28599) Bool)

(assert (=> start!41244 (and (array_inv!9920 _values!549) e!268941)))

(declare-fun array_inv!9921 (array!28597) Bool)

(assert (=> start!41244 (array_inv!9921 _keys!709)))

(declare-fun b!461098 () Bool)

(declare-fun res!275857 () Bool)

(assert (=> b!461098 (=> (not res!275857) (not e!268942))))

(declare-datatypes ((List!8323 0))(
  ( (Nil!8320) (Cons!8319 (h!9175 (_ BitVec 64)) (t!14273 List!8323)) )
))
(declare-fun arrayNoDuplicates!0 (array!28597 (_ BitVec 32) List!8323) Bool)

(assert (=> b!461098 (= res!275857 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8320))))

(declare-fun b!461099 () Bool)

(declare-fun e!268943 () Bool)

(assert (=> b!461099 (= e!268943 (not true))))

(declare-fun minValue!515 () V!17661)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!208906 () array!28599)

(declare-fun zeroValue!515 () V!17661)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!208907 () array!28597)

(declare-fun v!412 () V!17661)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!8220 0))(
  ( (tuple2!8221 (_1!4120 (_ BitVec 64)) (_2!4120 V!17661)) )
))
(declare-datatypes ((List!8324 0))(
  ( (Nil!8321) (Cons!8320 (h!9176 tuple2!8220) (t!14274 List!8324)) )
))
(declare-datatypes ((ListLongMap!7147 0))(
  ( (ListLongMap!7148 (toList!3589 List!8324)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1757 (array!28597 array!28599 (_ BitVec 32) (_ BitVec 32) V!17661 V!17661 (_ BitVec 32) Int) ListLongMap!7147)

(declare-fun +!1606 (ListLongMap!7147 tuple2!8220) ListLongMap!7147)

(assert (=> b!461099 (= (getCurrentListMapNoExtraKeys!1757 lt!208907 lt!208906 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1606 (getCurrentListMapNoExtraKeys!1757 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8221 k0!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13375 0))(
  ( (Unit!13376) )
))
(declare-fun lt!208909 () Unit!13375)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!758 (array!28597 array!28599 (_ BitVec 32) (_ BitVec 32) V!17661 V!17661 (_ BitVec 32) (_ BitVec 64) V!17661 (_ BitVec 32) Int) Unit!13375)

(assert (=> b!461099 (= lt!208909 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!758 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!461100 () Bool)

(declare-fun res!275858 () Bool)

(declare-fun e!268946 () Bool)

(assert (=> b!461100 (=> (not res!275858) (not e!268946))))

(assert (=> b!461100 (= res!275858 (arrayNoDuplicates!0 lt!208907 #b00000000000000000000000000000000 Nil!8320))))

(declare-fun mapIsEmpty!20278 () Bool)

(declare-fun mapRes!20278 () Bool)

(assert (=> mapIsEmpty!20278 mapRes!20278))

(declare-fun b!461101 () Bool)

(declare-fun res!275856 () Bool)

(assert (=> b!461101 (=> (not res!275856) (not e!268942))))

(assert (=> b!461101 (= res!275856 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14087 _keys!709))))))

(declare-fun b!461102 () Bool)

(declare-fun res!275864 () Bool)

(assert (=> b!461102 (=> (not res!275864) (not e!268942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461102 (= res!275864 (validKeyInArray!0 k0!794))))

(declare-fun b!461103 () Bool)

(declare-fun res!275861 () Bool)

(assert (=> b!461103 (=> (not res!275861) (not e!268942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!461103 (= res!275861 (validMask!0 mask!1025))))

(declare-fun b!461104 () Bool)

(declare-fun res!275863 () Bool)

(assert (=> b!461104 (=> (not res!275863) (not e!268942))))

(declare-fun arrayContainsKey!0 (array!28597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461104 (= res!275863 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!461105 () Bool)

(declare-fun e!268944 () Bool)

(assert (=> b!461105 (= e!268944 tp_is_empty!12417)))

(declare-fun b!461106 () Bool)

(declare-fun e!268945 () Bool)

(assert (=> b!461106 (= e!268945 tp_is_empty!12417)))

(declare-fun b!461107 () Bool)

(assert (=> b!461107 (= e!268946 e!268943)))

(declare-fun res!275860 () Bool)

(assert (=> b!461107 (=> (not res!275860) (not e!268943))))

(assert (=> b!461107 (= res!275860 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!208908 () ListLongMap!7147)

(assert (=> b!461107 (= lt!208908 (getCurrentListMapNoExtraKeys!1757 lt!208907 lt!208906 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!461107 (= lt!208906 (array!28600 (store (arr!13736 _values!549) i!563 (ValueCellFull!5865 v!412)) (size!14088 _values!549)))))

(declare-fun lt!208905 () ListLongMap!7147)

(assert (=> b!461107 (= lt!208905 (getCurrentListMapNoExtraKeys!1757 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!461108 () Bool)

(declare-fun res!275862 () Bool)

(assert (=> b!461108 (=> (not res!275862) (not e!268942))))

(assert (=> b!461108 (= res!275862 (and (= (size!14088 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14087 _keys!709) (size!14088 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!461109 () Bool)

(assert (=> b!461109 (= e!268941 (and e!268945 mapRes!20278))))

(declare-fun condMapEmpty!20278 () Bool)

(declare-fun mapDefault!20278 () ValueCell!5865)

(assert (=> b!461109 (= condMapEmpty!20278 (= (arr!13736 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5865)) mapDefault!20278)))))

(declare-fun b!461110 () Bool)

(declare-fun res!275855 () Bool)

(assert (=> b!461110 (=> (not res!275855) (not e!268942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28597 (_ BitVec 32)) Bool)

(assert (=> b!461110 (= res!275855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!20278 () Bool)

(declare-fun tp!39075 () Bool)

(assert (=> mapNonEmpty!20278 (= mapRes!20278 (and tp!39075 e!268944))))

(declare-fun mapKey!20278 () (_ BitVec 32))

(declare-fun mapRest!20278 () (Array (_ BitVec 32) ValueCell!5865))

(declare-fun mapValue!20278 () ValueCell!5865)

(assert (=> mapNonEmpty!20278 (= (arr!13736 _values!549) (store mapRest!20278 mapKey!20278 mapValue!20278))))

(declare-fun b!461111 () Bool)

(assert (=> b!461111 (= e!268942 e!268946)))

(declare-fun res!275852 () Bool)

(assert (=> b!461111 (=> (not res!275852) (not e!268946))))

(assert (=> b!461111 (= res!275852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208907 mask!1025))))

(assert (=> b!461111 (= lt!208907 (array!28598 (store (arr!13735 _keys!709) i!563 k0!794) (size!14087 _keys!709)))))

(declare-fun b!461112 () Bool)

(declare-fun res!275854 () Bool)

(assert (=> b!461112 (=> (not res!275854) (not e!268946))))

(assert (=> b!461112 (= res!275854 (bvsle from!863 i!563))))

(declare-fun b!461113 () Bool)

(declare-fun res!275859 () Bool)

(assert (=> b!461113 (=> (not res!275859) (not e!268942))))

(assert (=> b!461113 (= res!275859 (or (= (select (arr!13735 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13735 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!41244 res!275853) b!461103))

(assert (= (and b!461103 res!275861) b!461108))

(assert (= (and b!461108 res!275862) b!461110))

(assert (= (and b!461110 res!275855) b!461098))

(assert (= (and b!461098 res!275857) b!461101))

(assert (= (and b!461101 res!275856) b!461102))

(assert (= (and b!461102 res!275864) b!461113))

(assert (= (and b!461113 res!275859) b!461104))

(assert (= (and b!461104 res!275863) b!461111))

(assert (= (and b!461111 res!275852) b!461100))

(assert (= (and b!461100 res!275858) b!461112))

(assert (= (and b!461112 res!275854) b!461107))

(assert (= (and b!461107 res!275860) b!461099))

(assert (= (and b!461109 condMapEmpty!20278) mapIsEmpty!20278))

(assert (= (and b!461109 (not condMapEmpty!20278)) mapNonEmpty!20278))

(get-info :version)

(assert (= (and mapNonEmpty!20278 ((_ is ValueCellFull!5865) mapValue!20278)) b!461105))

(assert (= (and b!461109 ((_ is ValueCellFull!5865) mapDefault!20278)) b!461106))

(assert (= start!41244 b!461109))

(declare-fun m!444319 () Bool)

(assert (=> b!461102 m!444319))

(declare-fun m!444321 () Bool)

(assert (=> b!461107 m!444321))

(declare-fun m!444323 () Bool)

(assert (=> b!461107 m!444323))

(declare-fun m!444325 () Bool)

(assert (=> b!461107 m!444325))

(declare-fun m!444327 () Bool)

(assert (=> start!41244 m!444327))

(declare-fun m!444329 () Bool)

(assert (=> start!41244 m!444329))

(declare-fun m!444331 () Bool)

(assert (=> b!461099 m!444331))

(declare-fun m!444333 () Bool)

(assert (=> b!461099 m!444333))

(assert (=> b!461099 m!444333))

(declare-fun m!444335 () Bool)

(assert (=> b!461099 m!444335))

(declare-fun m!444337 () Bool)

(assert (=> b!461099 m!444337))

(declare-fun m!444339 () Bool)

(assert (=> b!461100 m!444339))

(declare-fun m!444341 () Bool)

(assert (=> b!461110 m!444341))

(declare-fun m!444343 () Bool)

(assert (=> b!461104 m!444343))

(declare-fun m!444345 () Bool)

(assert (=> b!461098 m!444345))

(declare-fun m!444347 () Bool)

(assert (=> b!461111 m!444347))

(declare-fun m!444349 () Bool)

(assert (=> b!461111 m!444349))

(declare-fun m!444351 () Bool)

(assert (=> b!461103 m!444351))

(declare-fun m!444353 () Bool)

(assert (=> mapNonEmpty!20278 m!444353))

(declare-fun m!444355 () Bool)

(assert (=> b!461113 m!444355))

(check-sat (not b!461104) (not b!461100) (not b!461111) (not b!461103) (not mapNonEmpty!20278) (not b!461110) (not b_next!11079) (not b!461107) (not b!461102) (not b!461099) (not start!41244) b_and!19417 (not b!461098) tp_is_empty!12417)
(check-sat b_and!19417 (not b_next!11079))
