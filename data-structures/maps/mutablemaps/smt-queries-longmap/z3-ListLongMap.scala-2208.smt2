; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36672 () Bool)

(assert start!36672)

(declare-fun b!365711 () Bool)

(declare-fun res!204557 () Bool)

(declare-fun e!223974 () Bool)

(assert (=> b!365711 (=> (not res!204557) (not e!223974))))

(declare-datatypes ((array!20905 0))(
  ( (array!20906 (arr!9921 (Array (_ BitVec 32) (_ BitVec 64))) (size!10273 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20905)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365711 (= res!204557 (or (= (select (arr!9921 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9921 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!365712 () Bool)

(declare-fun e!223975 () Bool)

(declare-fun tp_is_empty!8487 () Bool)

(assert (=> b!365712 (= e!223975 tp_is_empty!8487)))

(declare-fun b!365713 () Bool)

(declare-fun res!204560 () Bool)

(assert (=> b!365713 (=> (not res!204560) (not e!223974))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20905 (_ BitVec 32)) Bool)

(assert (=> b!365713 (= res!204560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365714 () Bool)

(declare-fun res!204558 () Bool)

(assert (=> b!365714 (=> (not res!204558) (not e!223974))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12421 0))(
  ( (V!12422 (val!4288 Int)) )
))
(declare-datatypes ((ValueCell!3900 0))(
  ( (ValueCellFull!3900 (v!6480 V!12421)) (EmptyCell!3900) )
))
(declare-datatypes ((array!20907 0))(
  ( (array!20908 (arr!9922 (Array (_ BitVec 32) ValueCell!3900)) (size!10274 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20907)

(assert (=> b!365714 (= res!204558 (and (= (size!10274 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10273 _keys!658) (size!10274 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365715 () Bool)

(declare-fun res!204562 () Bool)

(assert (=> b!365715 (=> (not res!204562) (not e!223974))))

(assert (=> b!365715 (= res!204562 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10273 _keys!658))))))

(declare-fun mapIsEmpty!14286 () Bool)

(declare-fun mapRes!14286 () Bool)

(assert (=> mapIsEmpty!14286 mapRes!14286))

(declare-fun b!365716 () Bool)

(declare-fun res!204564 () Bool)

(assert (=> b!365716 (=> (not res!204564) (not e!223974))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365716 (= res!204564 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!365717 () Bool)

(declare-fun res!204559 () Bool)

(assert (=> b!365717 (=> (not res!204559) (not e!223974))))

(declare-datatypes ((List!5557 0))(
  ( (Nil!5554) (Cons!5553 (h!6409 (_ BitVec 64)) (t!10715 List!5557)) )
))
(declare-fun arrayNoDuplicates!0 (array!20905 (_ BitVec 32) List!5557) Bool)

(assert (=> b!365717 (= res!204559 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5554))))

(declare-fun res!204561 () Bool)

(assert (=> start!36672 (=> (not res!204561) (not e!223974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36672 (= res!204561 (validMask!0 mask!970))))

(assert (=> start!36672 e!223974))

(assert (=> start!36672 true))

(declare-fun e!223977 () Bool)

(declare-fun array_inv!7338 (array!20907) Bool)

(assert (=> start!36672 (and (array_inv!7338 _values!506) e!223977)))

(declare-fun array_inv!7339 (array!20905) Bool)

(assert (=> start!36672 (array_inv!7339 _keys!658)))

(declare-fun b!365718 () Bool)

(declare-fun e!223978 () Bool)

(assert (=> b!365718 (= e!223978 tp_is_empty!8487)))

(declare-fun b!365719 () Bool)

(assert (=> b!365719 (= e!223977 (and e!223978 mapRes!14286))))

(declare-fun condMapEmpty!14286 () Bool)

(declare-fun mapDefault!14286 () ValueCell!3900)

(assert (=> b!365719 (= condMapEmpty!14286 (= (arr!9922 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3900)) mapDefault!14286)))))

(declare-fun mapNonEmpty!14286 () Bool)

(declare-fun tp!28362 () Bool)

(assert (=> mapNonEmpty!14286 (= mapRes!14286 (and tp!28362 e!223975))))

(declare-fun mapValue!14286 () ValueCell!3900)

(declare-fun mapKey!14286 () (_ BitVec 32))

(declare-fun mapRest!14286 () (Array (_ BitVec 32) ValueCell!3900))

(assert (=> mapNonEmpty!14286 (= (arr!9922 _values!506) (store mapRest!14286 mapKey!14286 mapValue!14286))))

(declare-fun b!365720 () Bool)

(declare-fun res!204563 () Bool)

(assert (=> b!365720 (=> (not res!204563) (not e!223974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365720 (= res!204563 (validKeyInArray!0 k0!778))))

(declare-fun b!365721 () Bool)

(assert (=> b!365721 (= e!223974 (not (= (size!10273 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970))))))

(assert (= (and start!36672 res!204561) b!365714))

(assert (= (and b!365714 res!204558) b!365713))

(assert (= (and b!365713 res!204560) b!365717))

(assert (= (and b!365717 res!204559) b!365715))

(assert (= (and b!365715 res!204562) b!365720))

(assert (= (and b!365720 res!204563) b!365711))

(assert (= (and b!365711 res!204557) b!365716))

(assert (= (and b!365716 res!204564) b!365721))

(assert (= (and b!365719 condMapEmpty!14286) mapIsEmpty!14286))

(assert (= (and b!365719 (not condMapEmpty!14286)) mapNonEmpty!14286))

(get-info :version)

(assert (= (and mapNonEmpty!14286 ((_ is ValueCellFull!3900) mapValue!14286)) b!365712))

(assert (= (and b!365719 ((_ is ValueCellFull!3900) mapDefault!14286)) b!365718))

(assert (= start!36672 b!365719))

(declare-fun m!363281 () Bool)

(assert (=> b!365720 m!363281))

(declare-fun m!363283 () Bool)

(assert (=> b!365713 m!363283))

(declare-fun m!363285 () Bool)

(assert (=> b!365717 m!363285))

(declare-fun m!363287 () Bool)

(assert (=> mapNonEmpty!14286 m!363287))

(declare-fun m!363289 () Bool)

(assert (=> start!36672 m!363289))

(declare-fun m!363291 () Bool)

(assert (=> start!36672 m!363291))

(declare-fun m!363293 () Bool)

(assert (=> start!36672 m!363293))

(declare-fun m!363295 () Bool)

(assert (=> b!365711 m!363295))

(declare-fun m!363297 () Bool)

(assert (=> b!365716 m!363297))

(check-sat (not start!36672) (not b!365716) (not b!365717) (not mapNonEmpty!14286) tp_is_empty!8487 (not b!365720) (not b!365713))
(check-sat)
