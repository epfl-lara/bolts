; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37326 () Bool)

(assert start!37326)

(declare-fun b_free!8445 () Bool)

(declare-fun b_next!8445 () Bool)

(assert (=> start!37326 (= b_free!8445 (not b_next!8445))))

(declare-fun tp!30050 () Bool)

(declare-fun b_and!15705 () Bool)

(assert (=> start!37326 (= tp!30050 b_and!15705)))

(declare-fun b!378270 () Bool)

(declare-fun e!230235 () Bool)

(declare-fun e!230229 () Bool)

(assert (=> b!378270 (= e!230235 e!230229)))

(declare-fun res!214326 () Bool)

(assert (=> b!378270 (=> (not res!214326) (not e!230229))))

(declare-datatypes ((array!22083 0))(
  ( (array!22084 (arr!10507 (Array (_ BitVec 32) (_ BitVec 64))) (size!10859 (_ BitVec 32))) )
))
(declare-fun lt!176309 () array!22083)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22083 (_ BitVec 32)) Bool)

(assert (=> b!378270 (= res!214326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176309 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22083)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378270 (= lt!176309 (array!22084 (store (arr!10507 _keys!658) i!548 k0!778) (size!10859 _keys!658)))))

(declare-fun mapIsEmpty!15204 () Bool)

(declare-fun mapRes!15204 () Bool)

(assert (=> mapIsEmpty!15204 mapRes!15204))

(declare-fun b!378271 () Bool)

(declare-fun res!214332 () Bool)

(assert (=> b!378271 (=> (not res!214332) (not e!230235))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13229 0))(
  ( (V!13230 (val!4591 Int)) )
))
(declare-datatypes ((ValueCell!4203 0))(
  ( (ValueCellFull!4203 (v!6784 V!13229)) (EmptyCell!4203) )
))
(declare-datatypes ((array!22085 0))(
  ( (array!22086 (arr!10508 (Array (_ BitVec 32) ValueCell!4203)) (size!10860 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22085)

(assert (=> b!378271 (= res!214332 (and (= (size!10860 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10859 _keys!658) (size!10860 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378272 () Bool)

(declare-fun res!214334 () Bool)

(assert (=> b!378272 (=> (not res!214334) (not e!230235))))

(declare-fun arrayContainsKey!0 (array!22083 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378272 (= res!214334 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!214329 () Bool)

(assert (=> start!37326 (=> (not res!214329) (not e!230235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37326 (= res!214329 (validMask!0 mask!970))))

(assert (=> start!37326 e!230235))

(declare-fun e!230228 () Bool)

(declare-fun array_inv!7730 (array!22085) Bool)

(assert (=> start!37326 (and (array_inv!7730 _values!506) e!230228)))

(assert (=> start!37326 tp!30050))

(assert (=> start!37326 true))

(declare-fun tp_is_empty!9093 () Bool)

(assert (=> start!37326 tp_is_empty!9093))

(declare-fun array_inv!7731 (array!22083) Bool)

(assert (=> start!37326 (array_inv!7731 _keys!658)))

(declare-fun b!378273 () Bool)

(declare-fun e!230234 () Bool)

(assert (=> b!378273 (= e!230234 tp_is_empty!9093)))

(declare-fun b!378274 () Bool)

(declare-fun res!214323 () Bool)

(assert (=> b!378274 (=> (not res!214323) (not e!230235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378274 (= res!214323 (validKeyInArray!0 k0!778))))

(declare-fun b!378275 () Bool)

(declare-fun res!214328 () Bool)

(assert (=> b!378275 (=> (not res!214328) (not e!230235))))

(assert (=> b!378275 (= res!214328 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10859 _keys!658))))))

(declare-fun b!378276 () Bool)

(declare-fun e!230232 () Bool)

(assert (=> b!378276 (= e!230232 tp_is_empty!9093)))

(declare-fun b!378277 () Bool)

(declare-fun e!230233 () Bool)

(assert (=> b!378277 (= e!230229 (not e!230233))))

(declare-fun res!214330 () Bool)

(assert (=> b!378277 (=> res!214330 e!230233)))

(assert (=> b!378277 (= res!214330 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6098 0))(
  ( (tuple2!6099 (_1!3059 (_ BitVec 64)) (_2!3059 V!13229)) )
))
(declare-datatypes ((List!5970 0))(
  ( (Nil!5967) (Cons!5966 (h!6822 tuple2!6098) (t!11128 List!5970)) )
))
(declare-datatypes ((ListLongMap!5025 0))(
  ( (ListLongMap!5026 (toList!2528 List!5970)) )
))
(declare-fun lt!176306 () ListLongMap!5025)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13229)

(declare-fun minValue!472 () V!13229)

(declare-fun getCurrentListMap!1961 (array!22083 array!22085 (_ BitVec 32) (_ BitVec 32) V!13229 V!13229 (_ BitVec 32) Int) ListLongMap!5025)

(assert (=> b!378277 (= lt!176306 (getCurrentListMap!1961 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176314 () array!22085)

(declare-fun lt!176308 () ListLongMap!5025)

(assert (=> b!378277 (= lt!176308 (getCurrentListMap!1961 lt!176309 lt!176314 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176312 () ListLongMap!5025)

(declare-fun lt!176311 () ListLongMap!5025)

(assert (=> b!378277 (and (= lt!176312 lt!176311) (= lt!176311 lt!176312))))

(declare-fun lt!176302 () ListLongMap!5025)

(declare-fun lt!176303 () tuple2!6098)

(declare-fun +!869 (ListLongMap!5025 tuple2!6098) ListLongMap!5025)

(assert (=> b!378277 (= lt!176311 (+!869 lt!176302 lt!176303))))

(declare-fun v!373 () V!13229)

(assert (=> b!378277 (= lt!176303 (tuple2!6099 k0!778 v!373))))

(declare-datatypes ((Unit!11635 0))(
  ( (Unit!11636) )
))
(declare-fun lt!176305 () Unit!11635)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!112 (array!22083 array!22085 (_ BitVec 32) (_ BitVec 32) V!13229 V!13229 (_ BitVec 32) (_ BitVec 64) V!13229 (_ BitVec 32) Int) Unit!11635)

(assert (=> b!378277 (= lt!176305 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!112 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!779 (array!22083 array!22085 (_ BitVec 32) (_ BitVec 32) V!13229 V!13229 (_ BitVec 32) Int) ListLongMap!5025)

(assert (=> b!378277 (= lt!176312 (getCurrentListMapNoExtraKeys!779 lt!176309 lt!176314 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378277 (= lt!176314 (array!22086 (store (arr!10508 _values!506) i!548 (ValueCellFull!4203 v!373)) (size!10860 _values!506)))))

(assert (=> b!378277 (= lt!176302 (getCurrentListMapNoExtraKeys!779 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378278 () Bool)

(declare-fun res!214333 () Bool)

(assert (=> b!378278 (=> (not res!214333) (not e!230235))))

(assert (=> b!378278 (= res!214333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378279 () Bool)

(declare-fun e!230231 () Bool)

(assert (=> b!378279 (= e!230231 true)))

(declare-fun lt!176307 () ListLongMap!5025)

(declare-fun lt!176310 () ListLongMap!5025)

(assert (=> b!378279 (= lt!176307 (+!869 lt!176310 lt!176303))))

(declare-fun lt!176304 () Unit!11635)

(declare-fun addCommutativeForDiffKeys!284 (ListLongMap!5025 (_ BitVec 64) V!13229 (_ BitVec 64) V!13229) Unit!11635)

(assert (=> b!378279 (= lt!176304 (addCommutativeForDiffKeys!284 lt!176302 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378280 () Bool)

(declare-fun res!214327 () Bool)

(assert (=> b!378280 (=> (not res!214327) (not e!230235))))

(assert (=> b!378280 (= res!214327 (or (= (select (arr!10507 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10507 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378281 () Bool)

(declare-fun res!214324 () Bool)

(assert (=> b!378281 (=> (not res!214324) (not e!230229))))

(declare-datatypes ((List!5971 0))(
  ( (Nil!5968) (Cons!5967 (h!6823 (_ BitVec 64)) (t!11129 List!5971)) )
))
(declare-fun arrayNoDuplicates!0 (array!22083 (_ BitVec 32) List!5971) Bool)

(assert (=> b!378281 (= res!214324 (arrayNoDuplicates!0 lt!176309 #b00000000000000000000000000000000 Nil!5968))))

(declare-fun b!378282 () Bool)

(declare-fun res!214331 () Bool)

(assert (=> b!378282 (=> (not res!214331) (not e!230235))))

(assert (=> b!378282 (= res!214331 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5968))))

(declare-fun b!378283 () Bool)

(assert (=> b!378283 (= e!230228 (and e!230232 mapRes!15204))))

(declare-fun condMapEmpty!15204 () Bool)

(declare-fun mapDefault!15204 () ValueCell!4203)

(assert (=> b!378283 (= condMapEmpty!15204 (= (arr!10508 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4203)) mapDefault!15204)))))

(declare-fun b!378284 () Bool)

(assert (=> b!378284 (= e!230233 e!230231)))

(declare-fun res!214325 () Bool)

(assert (=> b!378284 (=> res!214325 e!230231)))

(assert (=> b!378284 (= res!214325 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!378284 (= lt!176306 lt!176310)))

(declare-fun lt!176313 () tuple2!6098)

(assert (=> b!378284 (= lt!176310 (+!869 lt!176302 lt!176313))))

(assert (=> b!378284 (= lt!176308 lt!176307)))

(assert (=> b!378284 (= lt!176307 (+!869 lt!176311 lt!176313))))

(assert (=> b!378284 (= lt!176308 (+!869 lt!176312 lt!176313))))

(assert (=> b!378284 (= lt!176313 (tuple2!6099 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!15204 () Bool)

(declare-fun tp!30051 () Bool)

(assert (=> mapNonEmpty!15204 (= mapRes!15204 (and tp!30051 e!230234))))

(declare-fun mapValue!15204 () ValueCell!4203)

(declare-fun mapKey!15204 () (_ BitVec 32))

(declare-fun mapRest!15204 () (Array (_ BitVec 32) ValueCell!4203))

(assert (=> mapNonEmpty!15204 (= (arr!10508 _values!506) (store mapRest!15204 mapKey!15204 mapValue!15204))))

(assert (= (and start!37326 res!214329) b!378271))

(assert (= (and b!378271 res!214332) b!378278))

(assert (= (and b!378278 res!214333) b!378282))

(assert (= (and b!378282 res!214331) b!378275))

(assert (= (and b!378275 res!214328) b!378274))

(assert (= (and b!378274 res!214323) b!378280))

(assert (= (and b!378280 res!214327) b!378272))

(assert (= (and b!378272 res!214334) b!378270))

(assert (= (and b!378270 res!214326) b!378281))

(assert (= (and b!378281 res!214324) b!378277))

(assert (= (and b!378277 (not res!214330)) b!378284))

(assert (= (and b!378284 (not res!214325)) b!378279))

(assert (= (and b!378283 condMapEmpty!15204) mapIsEmpty!15204))

(assert (= (and b!378283 (not condMapEmpty!15204)) mapNonEmpty!15204))

(get-info :version)

(assert (= (and mapNonEmpty!15204 ((_ is ValueCellFull!4203) mapValue!15204)) b!378273))

(assert (= (and b!378283 ((_ is ValueCellFull!4203) mapDefault!15204)) b!378276))

(assert (= start!37326 b!378283))

(declare-fun m!375125 () Bool)

(assert (=> b!378278 m!375125))

(declare-fun m!375127 () Bool)

(assert (=> b!378274 m!375127))

(declare-fun m!375129 () Bool)

(assert (=> b!378280 m!375129))

(declare-fun m!375131 () Bool)

(assert (=> start!37326 m!375131))

(declare-fun m!375133 () Bool)

(assert (=> start!37326 m!375133))

(declare-fun m!375135 () Bool)

(assert (=> start!37326 m!375135))

(declare-fun m!375137 () Bool)

(assert (=> b!378277 m!375137))

(declare-fun m!375139 () Bool)

(assert (=> b!378277 m!375139))

(declare-fun m!375141 () Bool)

(assert (=> b!378277 m!375141))

(declare-fun m!375143 () Bool)

(assert (=> b!378277 m!375143))

(declare-fun m!375145 () Bool)

(assert (=> b!378277 m!375145))

(declare-fun m!375147 () Bool)

(assert (=> b!378277 m!375147))

(declare-fun m!375149 () Bool)

(assert (=> b!378277 m!375149))

(declare-fun m!375151 () Bool)

(assert (=> b!378279 m!375151))

(declare-fun m!375153 () Bool)

(assert (=> b!378279 m!375153))

(declare-fun m!375155 () Bool)

(assert (=> b!378272 m!375155))

(declare-fun m!375157 () Bool)

(assert (=> b!378282 m!375157))

(declare-fun m!375159 () Bool)

(assert (=> mapNonEmpty!15204 m!375159))

(declare-fun m!375161 () Bool)

(assert (=> b!378281 m!375161))

(declare-fun m!375163 () Bool)

(assert (=> b!378284 m!375163))

(declare-fun m!375165 () Bool)

(assert (=> b!378284 m!375165))

(declare-fun m!375167 () Bool)

(assert (=> b!378284 m!375167))

(declare-fun m!375169 () Bool)

(assert (=> b!378270 m!375169))

(declare-fun m!375171 () Bool)

(assert (=> b!378270 m!375171))

(check-sat (not b!378277) (not b!378274) (not b!378278) (not b!378272) (not mapNonEmpty!15204) (not b!378284) tp_is_empty!9093 (not b!378279) (not start!37326) (not b!378281) (not b_next!8445) (not b!378282) (not b!378270) b_and!15705)
(check-sat b_and!15705 (not b_next!8445))
