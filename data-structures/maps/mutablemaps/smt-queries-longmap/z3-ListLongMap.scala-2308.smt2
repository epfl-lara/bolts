; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37320 () Bool)

(assert start!37320)

(declare-fun b_free!8439 () Bool)

(declare-fun b_next!8439 () Bool)

(assert (=> start!37320 (= b_free!8439 (not b_next!8439))))

(declare-fun tp!30033 () Bool)

(declare-fun b_and!15699 () Bool)

(assert (=> start!37320 (= tp!30033 b_and!15699)))

(declare-fun b!378131 () Bool)

(declare-fun res!214219 () Bool)

(declare-fun e!230161 () Bool)

(assert (=> b!378131 (=> (not res!214219) (not e!230161))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22071 0))(
  ( (array!22072 (arr!10501 (Array (_ BitVec 32) (_ BitVec 64))) (size!10853 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22071)

(assert (=> b!378131 (= res!214219 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10853 _keys!658))))))

(declare-fun mapNonEmpty!15195 () Bool)

(declare-fun mapRes!15195 () Bool)

(declare-fun tp!30032 () Bool)

(declare-fun e!230157 () Bool)

(assert (=> mapNonEmpty!15195 (= mapRes!15195 (and tp!30032 e!230157))))

(declare-datatypes ((V!13221 0))(
  ( (V!13222 (val!4588 Int)) )
))
(declare-datatypes ((ValueCell!4200 0))(
  ( (ValueCellFull!4200 (v!6781 V!13221)) (EmptyCell!4200) )
))
(declare-datatypes ((array!22073 0))(
  ( (array!22074 (arr!10502 (Array (_ BitVec 32) ValueCell!4200)) (size!10854 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22073)

(declare-fun mapValue!15195 () ValueCell!4200)

(declare-fun mapKey!15195 () (_ BitVec 32))

(declare-fun mapRest!15195 () (Array (_ BitVec 32) ValueCell!4200))

(assert (=> mapNonEmpty!15195 (= (arr!10502 _values!506) (store mapRest!15195 mapKey!15195 mapValue!15195))))

(declare-fun b!378132 () Bool)

(declare-fun e!230158 () Bool)

(declare-fun e!230160 () Bool)

(assert (=> b!378132 (= e!230158 (and e!230160 mapRes!15195))))

(declare-fun condMapEmpty!15195 () Bool)

(declare-fun mapDefault!15195 () ValueCell!4200)

(assert (=> b!378132 (= condMapEmpty!15195 (= (arr!10502 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4200)) mapDefault!15195)))))

(declare-fun b!378133 () Bool)

(declare-fun res!214214 () Bool)

(assert (=> b!378133 (=> (not res!214214) (not e!230161))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378133 (= res!214214 (validKeyInArray!0 k0!778))))

(declare-fun b!378134 () Bool)

(declare-fun res!214218 () Bool)

(assert (=> b!378134 (=> (not res!214218) (not e!230161))))

(assert (=> b!378134 (= res!214218 (or (= (select (arr!10501 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10501 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15195 () Bool)

(assert (=> mapIsEmpty!15195 mapRes!15195))

(declare-fun b!378135 () Bool)

(declare-fun res!214222 () Bool)

(assert (=> b!378135 (=> (not res!214222) (not e!230161))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22071 (_ BitVec 32)) Bool)

(assert (=> b!378135 (= res!214222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378136 () Bool)

(declare-fun e!230156 () Bool)

(declare-fun e!230159 () Bool)

(assert (=> b!378136 (= e!230156 (not e!230159))))

(declare-fun res!214211 () Bool)

(assert (=> b!378136 (=> res!214211 e!230159)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378136 (= res!214211 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6096 0))(
  ( (tuple2!6097 (_1!3058 (_ BitVec 64)) (_2!3058 V!13221)) )
))
(declare-datatypes ((List!5968 0))(
  ( (Nil!5965) (Cons!5964 (h!6820 tuple2!6096) (t!11126 List!5968)) )
))
(declare-datatypes ((ListLongMap!5023 0))(
  ( (ListLongMap!5024 (toList!2527 List!5968)) )
))
(declare-fun lt!176201 () ListLongMap!5023)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13221)

(declare-fun minValue!472 () V!13221)

(declare-fun getCurrentListMap!1960 (array!22071 array!22073 (_ BitVec 32) (_ BitVec 32) V!13221 V!13221 (_ BitVec 32) Int) ListLongMap!5023)

(assert (=> b!378136 (= lt!176201 (getCurrentListMap!1960 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176203 () array!22073)

(declare-fun lt!176209 () array!22071)

(declare-fun lt!176207 () ListLongMap!5023)

(assert (=> b!378136 (= lt!176207 (getCurrentListMap!1960 lt!176209 lt!176203 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176202 () ListLongMap!5023)

(declare-fun lt!176208 () ListLongMap!5023)

(assert (=> b!378136 (and (= lt!176202 lt!176208) (= lt!176208 lt!176202))))

(declare-fun lt!176205 () ListLongMap!5023)

(declare-fun v!373 () V!13221)

(declare-fun +!868 (ListLongMap!5023 tuple2!6096) ListLongMap!5023)

(assert (=> b!378136 (= lt!176208 (+!868 lt!176205 (tuple2!6097 k0!778 v!373)))))

(declare-datatypes ((Unit!11633 0))(
  ( (Unit!11634) )
))
(declare-fun lt!176204 () Unit!11633)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!111 (array!22071 array!22073 (_ BitVec 32) (_ BitVec 32) V!13221 V!13221 (_ BitVec 32) (_ BitVec 64) V!13221 (_ BitVec 32) Int) Unit!11633)

(assert (=> b!378136 (= lt!176204 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!111 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!778 (array!22071 array!22073 (_ BitVec 32) (_ BitVec 32) V!13221 V!13221 (_ BitVec 32) Int) ListLongMap!5023)

(assert (=> b!378136 (= lt!176202 (getCurrentListMapNoExtraKeys!778 lt!176209 lt!176203 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378136 (= lt!176203 (array!22074 (store (arr!10502 _values!506) i!548 (ValueCellFull!4200 v!373)) (size!10854 _values!506)))))

(assert (=> b!378136 (= lt!176205 (getCurrentListMapNoExtraKeys!778 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378137 () Bool)

(declare-fun res!214223 () Bool)

(assert (=> b!378137 (=> (not res!214223) (not e!230156))))

(declare-datatypes ((List!5969 0))(
  ( (Nil!5966) (Cons!5965 (h!6821 (_ BitVec 64)) (t!11127 List!5969)) )
))
(declare-fun arrayNoDuplicates!0 (array!22071 (_ BitVec 32) List!5969) Bool)

(assert (=> b!378137 (= res!214223 (arrayNoDuplicates!0 lt!176209 #b00000000000000000000000000000000 Nil!5966))))

(declare-fun lt!176206 () tuple2!6096)

(declare-fun e!230163 () Bool)

(declare-fun b!378139 () Bool)

(assert (=> b!378139 (= e!230163 (= lt!176201 (+!868 lt!176205 lt!176206)))))

(declare-fun res!214220 () Bool)

(assert (=> start!37320 (=> (not res!214220) (not e!230161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37320 (= res!214220 (validMask!0 mask!970))))

(assert (=> start!37320 e!230161))

(declare-fun array_inv!7726 (array!22073) Bool)

(assert (=> start!37320 (and (array_inv!7726 _values!506) e!230158)))

(assert (=> start!37320 tp!30033))

(assert (=> start!37320 true))

(declare-fun tp_is_empty!9087 () Bool)

(assert (=> start!37320 tp_is_empty!9087))

(declare-fun array_inv!7727 (array!22071) Bool)

(assert (=> start!37320 (array_inv!7727 _keys!658)))

(declare-fun b!378138 () Bool)

(declare-fun res!214215 () Bool)

(assert (=> b!378138 (=> (not res!214215) (not e!230163))))

(assert (=> b!378138 (= res!214215 (= lt!176207 (+!868 lt!176208 lt!176206)))))

(declare-fun b!378140 () Bool)

(assert (=> b!378140 (= e!230161 e!230156)))

(declare-fun res!214221 () Bool)

(assert (=> b!378140 (=> (not res!214221) (not e!230156))))

(assert (=> b!378140 (= res!214221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176209 mask!970))))

(assert (=> b!378140 (= lt!176209 (array!22072 (store (arr!10501 _keys!658) i!548 k0!778) (size!10853 _keys!658)))))

(declare-fun b!378141 () Bool)

(assert (=> b!378141 (= e!230157 tp_is_empty!9087)))

(declare-fun b!378142 () Bool)

(assert (=> b!378142 (= e!230160 tp_is_empty!9087)))

(declare-fun b!378143 () Bool)

(declare-fun res!214213 () Bool)

(assert (=> b!378143 (=> (not res!214213) (not e!230161))))

(assert (=> b!378143 (= res!214213 (and (= (size!10854 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10853 _keys!658) (size!10854 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378144 () Bool)

(declare-fun res!214212 () Bool)

(assert (=> b!378144 (=> (not res!214212) (not e!230161))))

(assert (=> b!378144 (= res!214212 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5966))))

(declare-fun b!378145 () Bool)

(assert (=> b!378145 (= e!230159 true)))

(assert (=> b!378145 e!230163))

(declare-fun res!214216 () Bool)

(assert (=> b!378145 (=> (not res!214216) (not e!230163))))

(assert (=> b!378145 (= res!214216 (= lt!176207 (+!868 lt!176202 lt!176206)))))

(assert (=> b!378145 (= lt!176206 (tuple2!6097 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378146 () Bool)

(declare-fun res!214217 () Bool)

(assert (=> b!378146 (=> (not res!214217) (not e!230161))))

(declare-fun arrayContainsKey!0 (array!22071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378146 (= res!214217 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37320 res!214220) b!378143))

(assert (= (and b!378143 res!214213) b!378135))

(assert (= (and b!378135 res!214222) b!378144))

(assert (= (and b!378144 res!214212) b!378131))

(assert (= (and b!378131 res!214219) b!378133))

(assert (= (and b!378133 res!214214) b!378134))

(assert (= (and b!378134 res!214218) b!378146))

(assert (= (and b!378146 res!214217) b!378140))

(assert (= (and b!378140 res!214221) b!378137))

(assert (= (and b!378137 res!214223) b!378136))

(assert (= (and b!378136 (not res!214211)) b!378145))

(assert (= (and b!378145 res!214216) b!378138))

(assert (= (and b!378138 res!214215) b!378139))

(assert (= (and b!378132 condMapEmpty!15195) mapIsEmpty!15195))

(assert (= (and b!378132 (not condMapEmpty!15195)) mapNonEmpty!15195))

(get-info :version)

(assert (= (and mapNonEmpty!15195 ((_ is ValueCellFull!4200) mapValue!15195)) b!378141))

(assert (= (and b!378132 ((_ is ValueCellFull!4200) mapDefault!15195)) b!378142))

(assert (= start!37320 b!378132))

(declare-fun m!374989 () Bool)

(assert (=> b!378134 m!374989))

(declare-fun m!374991 () Bool)

(assert (=> b!378139 m!374991))

(declare-fun m!374993 () Bool)

(assert (=> b!378137 m!374993))

(declare-fun m!374995 () Bool)

(assert (=> b!378140 m!374995))

(declare-fun m!374997 () Bool)

(assert (=> b!378140 m!374997))

(declare-fun m!374999 () Bool)

(assert (=> start!37320 m!374999))

(declare-fun m!375001 () Bool)

(assert (=> start!37320 m!375001))

(declare-fun m!375003 () Bool)

(assert (=> start!37320 m!375003))

(declare-fun m!375005 () Bool)

(assert (=> b!378146 m!375005))

(declare-fun m!375007 () Bool)

(assert (=> b!378135 m!375007))

(declare-fun m!375009 () Bool)

(assert (=> b!378145 m!375009))

(declare-fun m!375011 () Bool)

(assert (=> b!378136 m!375011))

(declare-fun m!375013 () Bool)

(assert (=> b!378136 m!375013))

(declare-fun m!375015 () Bool)

(assert (=> b!378136 m!375015))

(declare-fun m!375017 () Bool)

(assert (=> b!378136 m!375017))

(declare-fun m!375019 () Bool)

(assert (=> b!378136 m!375019))

(declare-fun m!375021 () Bool)

(assert (=> b!378136 m!375021))

(declare-fun m!375023 () Bool)

(assert (=> b!378136 m!375023))

(declare-fun m!375025 () Bool)

(assert (=> b!378144 m!375025))

(declare-fun m!375027 () Bool)

(assert (=> mapNonEmpty!15195 m!375027))

(declare-fun m!375029 () Bool)

(assert (=> b!378138 m!375029))

(declare-fun m!375031 () Bool)

(assert (=> b!378133 m!375031))

(check-sat (not start!37320) (not b!378138) (not b!378135) tp_is_empty!9087 (not mapNonEmpty!15195) (not b!378139) (not b!378146) b_and!15699 (not b_next!8439) (not b!378145) (not b!378140) (not b!378136) (not b!378133) (not b!378144) (not b!378137))
(check-sat b_and!15699 (not b_next!8439))
