; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36852 () Bool)

(assert start!36852)

(declare-fun b_free!7971 () Bool)

(declare-fun b_next!7971 () Bool)

(assert (=> start!36852 (= b_free!7971 (not b_next!7971))))

(declare-fun tp!28629 () Bool)

(declare-fun b_and!15231 () Bool)

(assert (=> start!36852 (= tp!28629 b_and!15231)))

(declare-fun b!368279 () Bool)

(declare-fun e!225244 () Bool)

(declare-fun e!225245 () Bool)

(declare-fun mapRes!14493 () Bool)

(assert (=> b!368279 (= e!225244 (and e!225245 mapRes!14493))))

(declare-fun condMapEmpty!14493 () Bool)

(declare-datatypes ((V!12597 0))(
  ( (V!12598 (val!4354 Int)) )
))
(declare-datatypes ((ValueCell!3966 0))(
  ( (ValueCellFull!3966 (v!6547 V!12597)) (EmptyCell!3966) )
))
(declare-datatypes ((array!21163 0))(
  ( (array!21164 (arr!10047 (Array (_ BitVec 32) ValueCell!3966)) (size!10399 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21163)

(declare-fun mapDefault!14493 () ValueCell!3966)

(assert (=> b!368279 (= condMapEmpty!14493 (= (arr!10047 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3966)) mapDefault!14493)))))

(declare-fun mapIsEmpty!14493 () Bool)

(assert (=> mapIsEmpty!14493 mapRes!14493))

(declare-fun b!368280 () Bool)

(declare-fun res!206467 () Bool)

(declare-fun e!225246 () Bool)

(assert (=> b!368280 (=> (not res!206467) (not e!225246))))

(declare-datatypes ((array!21165 0))(
  ( (array!21166 (arr!10048 (Array (_ BitVec 32) (_ BitVec 64))) (size!10400 (_ BitVec 32))) )
))
(declare-fun lt!169498 () array!21165)

(declare-datatypes ((List!5621 0))(
  ( (Nil!5618) (Cons!5617 (h!6473 (_ BitVec 64)) (t!10779 List!5621)) )
))
(declare-fun arrayNoDuplicates!0 (array!21165 (_ BitVec 32) List!5621) Bool)

(assert (=> b!368280 (= res!206467 (arrayNoDuplicates!0 lt!169498 #b00000000000000000000000000000000 Nil!5618))))

(declare-fun b!368281 () Bool)

(declare-fun res!206472 () Bool)

(declare-fun e!225241 () Bool)

(assert (=> b!368281 (=> (not res!206472) (not e!225241))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun _keys!658 () array!21165)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!368281 (= res!206472 (and (= (size!10399 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10400 _keys!658) (size!10399 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368282 () Bool)

(declare-fun res!206471 () Bool)

(assert (=> b!368282 (=> (not res!206471) (not e!225241))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368282 (= res!206471 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10400 _keys!658))))))

(declare-fun b!368283 () Bool)

(declare-fun res!206466 () Bool)

(assert (=> b!368283 (=> (not res!206466) (not e!225241))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368283 (= res!206466 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!368284 () Bool)

(declare-fun e!225242 () Bool)

(declare-fun tp_is_empty!8619 () Bool)

(assert (=> b!368284 (= e!225242 tp_is_empty!8619)))

(declare-fun res!206465 () Bool)

(assert (=> start!36852 (=> (not res!206465) (not e!225241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36852 (= res!206465 (validMask!0 mask!970))))

(assert (=> start!36852 e!225241))

(assert (=> start!36852 true))

(declare-fun array_inv!7422 (array!21163) Bool)

(assert (=> start!36852 (and (array_inv!7422 _values!506) e!225244)))

(assert (=> start!36852 tp!28629))

(assert (=> start!36852 tp_is_empty!8619))

(declare-fun array_inv!7423 (array!21165) Bool)

(assert (=> start!36852 (array_inv!7423 _keys!658)))

(declare-fun b!368285 () Bool)

(declare-fun res!206468 () Bool)

(assert (=> b!368285 (=> (not res!206468) (not e!225241))))

(assert (=> b!368285 (= res!206468 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5618))))

(declare-fun b!368286 () Bool)

(declare-fun res!206469 () Bool)

(assert (=> b!368286 (=> (not res!206469) (not e!225241))))

(assert (=> b!368286 (= res!206469 (or (= (select (arr!10048 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10048 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368287 () Bool)

(declare-fun res!206474 () Bool)

(assert (=> b!368287 (=> (not res!206474) (not e!225241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21165 (_ BitVec 32)) Bool)

(assert (=> b!368287 (= res!206474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368288 () Bool)

(declare-fun res!206470 () Bool)

(assert (=> b!368288 (=> (not res!206470) (not e!225241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368288 (= res!206470 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!14493 () Bool)

(declare-fun tp!28628 () Bool)

(assert (=> mapNonEmpty!14493 (= mapRes!14493 (and tp!28628 e!225242))))

(declare-fun mapValue!14493 () ValueCell!3966)

(declare-fun mapKey!14493 () (_ BitVec 32))

(declare-fun mapRest!14493 () (Array (_ BitVec 32) ValueCell!3966))

(assert (=> mapNonEmpty!14493 (= (arr!10047 _values!506) (store mapRest!14493 mapKey!14493 mapValue!14493))))

(declare-fun b!368289 () Bool)

(assert (=> b!368289 (= e!225245 tp_is_empty!8619)))

(declare-fun b!368290 () Bool)

(assert (=> b!368290 (= e!225246 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12597)

(declare-datatypes ((tuple2!5760 0))(
  ( (tuple2!5761 (_1!2890 (_ BitVec 64)) (_2!2890 V!12597)) )
))
(declare-datatypes ((List!5622 0))(
  ( (Nil!5619) (Cons!5618 (h!6474 tuple2!5760) (t!10780 List!5622)) )
))
(declare-datatypes ((ListLongMap!4687 0))(
  ( (ListLongMap!4688 (toList!2359 List!5622)) )
))
(declare-fun lt!169497 () ListLongMap!4687)

(declare-fun minValue!472 () V!12597)

(declare-fun getCurrentListMapNoExtraKeys!627 (array!21165 array!21163 (_ BitVec 32) (_ BitVec 32) V!12597 V!12597 (_ BitVec 32) Int) ListLongMap!4687)

(assert (=> b!368290 (= lt!169497 (getCurrentListMapNoExtraKeys!627 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368291 () Bool)

(assert (=> b!368291 (= e!225241 e!225246)))

(declare-fun res!206473 () Bool)

(assert (=> b!368291 (=> (not res!206473) (not e!225246))))

(assert (=> b!368291 (= res!206473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169498 mask!970))))

(assert (=> b!368291 (= lt!169498 (array!21166 (store (arr!10048 _keys!658) i!548 k0!778) (size!10400 _keys!658)))))

(assert (= (and start!36852 res!206465) b!368281))

(assert (= (and b!368281 res!206472) b!368287))

(assert (= (and b!368287 res!206474) b!368285))

(assert (= (and b!368285 res!206468) b!368282))

(assert (= (and b!368282 res!206471) b!368288))

(assert (= (and b!368288 res!206470) b!368286))

(assert (= (and b!368286 res!206469) b!368283))

(assert (= (and b!368283 res!206466) b!368291))

(assert (= (and b!368291 res!206473) b!368280))

(assert (= (and b!368280 res!206467) b!368290))

(assert (= (and b!368279 condMapEmpty!14493) mapIsEmpty!14493))

(assert (= (and b!368279 (not condMapEmpty!14493)) mapNonEmpty!14493))

(get-info :version)

(assert (= (and mapNonEmpty!14493 ((_ is ValueCellFull!3966) mapValue!14493)) b!368284))

(assert (= (and b!368279 ((_ is ValueCellFull!3966) mapDefault!14493)) b!368289))

(assert (= start!36852 b!368279))

(declare-fun m!364951 () Bool)

(assert (=> b!368287 m!364951))

(declare-fun m!364953 () Bool)

(assert (=> b!368280 m!364953))

(declare-fun m!364955 () Bool)

(assert (=> b!368285 m!364955))

(declare-fun m!364957 () Bool)

(assert (=> b!368288 m!364957))

(declare-fun m!364959 () Bool)

(assert (=> b!368283 m!364959))

(declare-fun m!364961 () Bool)

(assert (=> b!368291 m!364961))

(declare-fun m!364963 () Bool)

(assert (=> b!368291 m!364963))

(declare-fun m!364965 () Bool)

(assert (=> b!368286 m!364965))

(declare-fun m!364967 () Bool)

(assert (=> mapNonEmpty!14493 m!364967))

(declare-fun m!364969 () Bool)

(assert (=> start!36852 m!364969))

(declare-fun m!364971 () Bool)

(assert (=> start!36852 m!364971))

(declare-fun m!364973 () Bool)

(assert (=> start!36852 m!364973))

(declare-fun m!364975 () Bool)

(assert (=> b!368290 m!364975))

(check-sat (not b!368280) b_and!15231 (not b!368287) (not b!368290) (not mapNonEmpty!14493) tp_is_empty!8619 (not b_next!7971) (not start!36852) (not b!368288) (not b!368283) (not b!368285) (not b!368291))
(check-sat b_and!15231 (not b_next!7971))
