; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36768 () Bool)

(assert start!36768)

(declare-fun b!366699 () Bool)

(declare-fun e!224485 () Bool)

(declare-fun e!224488 () Bool)

(assert (=> b!366699 (= e!224485 e!224488)))

(declare-fun res!205263 () Bool)

(assert (=> b!366699 (=> (not res!205263) (not e!224488))))

(declare-datatypes ((array!20997 0))(
  ( (array!20998 (arr!9964 (Array (_ BitVec 32) (_ BitVec 64))) (size!10316 (_ BitVec 32))) )
))
(declare-fun lt!169255 () array!20997)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20997 (_ BitVec 32)) Bool)

(assert (=> b!366699 (= res!205263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169255 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!20997)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366699 (= lt!169255 (array!20998 (store (arr!9964 _keys!658) i!548 k0!778) (size!10316 _keys!658)))))

(declare-fun b!366700 () Bool)

(declare-fun res!205269 () Bool)

(assert (=> b!366700 (=> (not res!205269) (not e!224485))))

(declare-fun arrayContainsKey!0 (array!20997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366700 (= res!205269 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14367 () Bool)

(declare-fun mapRes!14367 () Bool)

(assert (=> mapIsEmpty!14367 mapRes!14367))

(declare-fun b!366701 () Bool)

(declare-fun res!205265 () Bool)

(assert (=> b!366701 (=> (not res!205265) (not e!224485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366701 (= res!205265 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!14367 () Bool)

(declare-fun tp!28443 () Bool)

(declare-fun e!224487 () Bool)

(assert (=> mapNonEmpty!14367 (= mapRes!14367 (and tp!28443 e!224487))))

(declare-datatypes ((V!12485 0))(
  ( (V!12486 (val!4312 Int)) )
))
(declare-datatypes ((ValueCell!3924 0))(
  ( (ValueCellFull!3924 (v!6505 V!12485)) (EmptyCell!3924) )
))
(declare-datatypes ((array!20999 0))(
  ( (array!21000 (arr!9965 (Array (_ BitVec 32) ValueCell!3924)) (size!10317 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20999)

(declare-fun mapRest!14367 () (Array (_ BitVec 32) ValueCell!3924))

(declare-fun mapKey!14367 () (_ BitVec 32))

(declare-fun mapValue!14367 () ValueCell!3924)

(assert (=> mapNonEmpty!14367 (= (arr!9965 _values!506) (store mapRest!14367 mapKey!14367 mapValue!14367))))

(declare-fun res!205270 () Bool)

(assert (=> start!36768 (=> (not res!205270) (not e!224485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36768 (= res!205270 (validMask!0 mask!970))))

(assert (=> start!36768 e!224485))

(assert (=> start!36768 true))

(declare-fun e!224490 () Bool)

(declare-fun array_inv!7370 (array!20999) Bool)

(assert (=> start!36768 (and (array_inv!7370 _values!506) e!224490)))

(declare-fun array_inv!7371 (array!20997) Bool)

(assert (=> start!36768 (array_inv!7371 _keys!658)))

(declare-fun b!366702 () Bool)

(declare-fun res!205268 () Bool)

(assert (=> b!366702 (=> (not res!205268) (not e!224485))))

(assert (=> b!366702 (= res!205268 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10316 _keys!658))))))

(declare-fun b!366703 () Bool)

(declare-fun res!205267 () Bool)

(assert (=> b!366703 (=> (not res!205267) (not e!224485))))

(assert (=> b!366703 (= res!205267 (or (= (select (arr!9964 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9964 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366704 () Bool)

(declare-fun e!224489 () Bool)

(declare-fun tp_is_empty!8535 () Bool)

(assert (=> b!366704 (= e!224489 tp_is_empty!8535)))

(declare-fun b!366705 () Bool)

(declare-fun res!205264 () Bool)

(assert (=> b!366705 (=> (not res!205264) (not e!224485))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366705 (= res!205264 (and (= (size!10317 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10316 _keys!658) (size!10317 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366706 () Bool)

(assert (=> b!366706 (= e!224487 tp_is_empty!8535)))

(declare-fun b!366707 () Bool)

(declare-fun res!205266 () Bool)

(assert (=> b!366707 (=> (not res!205266) (not e!224485))))

(declare-datatypes ((List!5574 0))(
  ( (Nil!5571) (Cons!5570 (h!6426 (_ BitVec 64)) (t!10732 List!5574)) )
))
(declare-fun arrayNoDuplicates!0 (array!20997 (_ BitVec 32) List!5574) Bool)

(assert (=> b!366707 (= res!205266 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5571))))

(declare-fun b!366708 () Bool)

(declare-fun res!205271 () Bool)

(assert (=> b!366708 (=> (not res!205271) (not e!224485))))

(assert (=> b!366708 (= res!205271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366709 () Bool)

(assert (=> b!366709 (= e!224488 false)))

(declare-fun lt!169254 () Bool)

(assert (=> b!366709 (= lt!169254 (arrayNoDuplicates!0 lt!169255 #b00000000000000000000000000000000 Nil!5571))))

(declare-fun b!366710 () Bool)

(assert (=> b!366710 (= e!224490 (and e!224489 mapRes!14367))))

(declare-fun condMapEmpty!14367 () Bool)

(declare-fun mapDefault!14367 () ValueCell!3924)

(assert (=> b!366710 (= condMapEmpty!14367 (= (arr!9965 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3924)) mapDefault!14367)))))

(assert (= (and start!36768 res!205270) b!366705))

(assert (= (and b!366705 res!205264) b!366708))

(assert (= (and b!366708 res!205271) b!366707))

(assert (= (and b!366707 res!205266) b!366702))

(assert (= (and b!366702 res!205268) b!366701))

(assert (= (and b!366701 res!205265) b!366703))

(assert (= (and b!366703 res!205267) b!366700))

(assert (= (and b!366700 res!205269) b!366699))

(assert (= (and b!366699 res!205263) b!366709))

(assert (= (and b!366710 condMapEmpty!14367) mapIsEmpty!14367))

(assert (= (and b!366710 (not condMapEmpty!14367)) mapNonEmpty!14367))

(get-info :version)

(assert (= (and mapNonEmpty!14367 ((_ is ValueCellFull!3924) mapValue!14367)) b!366706))

(assert (= (and b!366710 ((_ is ValueCellFull!3924) mapDefault!14367)) b!366704))

(assert (= start!36768 b!366710))

(declare-fun m!363905 () Bool)

(assert (=> start!36768 m!363905))

(declare-fun m!363907 () Bool)

(assert (=> start!36768 m!363907))

(declare-fun m!363909 () Bool)

(assert (=> start!36768 m!363909))

(declare-fun m!363911 () Bool)

(assert (=> b!366700 m!363911))

(declare-fun m!363913 () Bool)

(assert (=> b!366701 m!363913))

(declare-fun m!363915 () Bool)

(assert (=> b!366709 m!363915))

(declare-fun m!363917 () Bool)

(assert (=> b!366703 m!363917))

(declare-fun m!363919 () Bool)

(assert (=> b!366707 m!363919))

(declare-fun m!363921 () Bool)

(assert (=> b!366699 m!363921))

(declare-fun m!363923 () Bool)

(assert (=> b!366699 m!363923))

(declare-fun m!363925 () Bool)

(assert (=> b!366708 m!363925))

(declare-fun m!363927 () Bool)

(assert (=> mapNonEmpty!14367 m!363927))

(check-sat (not b!366700) (not b!366708) (not b!366701) (not b!366707) (not start!36768) (not b!366709) tp_is_empty!8535 (not mapNonEmpty!14367) (not b!366699))
(check-sat)
