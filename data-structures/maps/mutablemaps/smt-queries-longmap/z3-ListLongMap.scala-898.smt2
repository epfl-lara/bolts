; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20498 () Bool)

(assert start!20498)

(declare-fun b_free!5145 () Bool)

(declare-fun b_next!5145 () Bool)

(assert (=> start!20498 (= b_free!5145 (not b_next!5145))))

(declare-fun tp!18466 () Bool)

(declare-fun b_and!11909 () Bool)

(assert (=> start!20498 (= tp!18466 b_and!11909)))

(declare-fun res!97604 () Bool)

(declare-fun e!133054 () Bool)

(assert (=> start!20498 (=> (not res!97604) (not e!133054))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20498 (= res!97604 (validMask!0 mask!1149))))

(assert (=> start!20498 e!133054))

(declare-datatypes ((V!6315 0))(
  ( (V!6316 (val!2545 Int)) )
))
(declare-datatypes ((ValueCell!2157 0))(
  ( (ValueCellFull!2157 (v!4511 V!6315)) (EmptyCell!2157) )
))
(declare-datatypes ((array!9226 0))(
  ( (array!9227 (arr!4363 (Array (_ BitVec 32) ValueCell!2157)) (size!4688 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9226)

(declare-fun e!133052 () Bool)

(declare-fun array_inv!2875 (array!9226) Bool)

(assert (=> start!20498 (and (array_inv!2875 _values!649) e!133052)))

(assert (=> start!20498 true))

(declare-fun tp_is_empty!5001 () Bool)

(assert (=> start!20498 tp_is_empty!5001))

(declare-datatypes ((array!9228 0))(
  ( (array!9229 (arr!4364 (Array (_ BitVec 32) (_ BitVec 64))) (size!4689 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9228)

(declare-fun array_inv!2876 (array!9228) Bool)

(assert (=> start!20498 (array_inv!2876 _keys!825)))

(assert (=> start!20498 tp!18466))

(declare-fun b!203203 () Bool)

(declare-fun res!97611 () Bool)

(assert (=> b!203203 (=> (not res!97611) (not e!133054))))

(declare-datatypes ((List!2784 0))(
  ( (Nil!2781) (Cons!2780 (h!3422 (_ BitVec 64)) (t!7723 List!2784)) )
))
(declare-fun arrayNoDuplicates!0 (array!9228 (_ BitVec 32) List!2784) Bool)

(assert (=> b!203203 (= res!97611 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2781))))

(declare-fun b!203204 () Bool)

(declare-fun e!133056 () Bool)

(declare-fun e!133053 () Bool)

(assert (=> b!203204 (= e!133056 e!133053)))

(declare-fun res!97606 () Bool)

(assert (=> b!203204 (=> res!97606 e!133053)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!203204 (= res!97606 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3858 0))(
  ( (tuple2!3859 (_1!1939 (_ BitVec 64)) (_2!1939 V!6315)) )
))
(declare-datatypes ((List!2785 0))(
  ( (Nil!2782) (Cons!2781 (h!3423 tuple2!3858) (t!7724 List!2785)) )
))
(declare-datatypes ((ListLongMap!2785 0))(
  ( (ListLongMap!2786 (toList!1408 List!2785)) )
))
(declare-fun lt!102453 () ListLongMap!2785)

(declare-fun lt!102449 () ListLongMap!2785)

(assert (=> b!203204 (= lt!102453 lt!102449)))

(declare-fun lt!102452 () ListLongMap!2785)

(declare-fun lt!102448 () tuple2!3858)

(declare-fun +!425 (ListLongMap!2785 tuple2!3858) ListLongMap!2785)

(assert (=> b!203204 (= lt!102449 (+!425 lt!102452 lt!102448))))

(declare-fun lt!102450 () ListLongMap!2785)

(declare-fun lt!102455 () ListLongMap!2785)

(assert (=> b!203204 (= lt!102450 lt!102455)))

(declare-fun lt!102454 () ListLongMap!2785)

(assert (=> b!203204 (= lt!102455 (+!425 lt!102454 lt!102448))))

(declare-fun lt!102456 () ListLongMap!2785)

(assert (=> b!203204 (= lt!102453 (+!425 lt!102456 lt!102448))))

(declare-fun zeroValue!615 () V!6315)

(assert (=> b!203204 (= lt!102448 (tuple2!3859 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203205 () Bool)

(declare-fun e!133057 () Bool)

(assert (=> b!203205 (= e!133057 tp_is_empty!5001)))

(declare-fun b!203206 () Bool)

(declare-fun res!97612 () Bool)

(assert (=> b!203206 (=> (not res!97612) (not e!133054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9228 (_ BitVec 32)) Bool)

(assert (=> b!203206 (= res!97612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203207 () Bool)

(declare-fun res!97610 () Bool)

(assert (=> b!203207 (=> (not res!97610) (not e!133054))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203207 (= res!97610 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4689 _keys!825))))))

(declare-fun mapNonEmpty!8570 () Bool)

(declare-fun mapRes!8570 () Bool)

(declare-fun tp!18467 () Bool)

(assert (=> mapNonEmpty!8570 (= mapRes!8570 (and tp!18467 e!133057))))

(declare-fun mapValue!8570 () ValueCell!2157)

(declare-fun mapKey!8570 () (_ BitVec 32))

(declare-fun mapRest!8570 () (Array (_ BitVec 32) ValueCell!2157))

(assert (=> mapNonEmpty!8570 (= (arr!4363 _values!649) (store mapRest!8570 mapKey!8570 mapValue!8570))))

(declare-fun b!203208 () Bool)

(declare-fun e!133051 () Bool)

(assert (=> b!203208 (= e!133052 (and e!133051 mapRes!8570))))

(declare-fun condMapEmpty!8570 () Bool)

(declare-fun mapDefault!8570 () ValueCell!2157)

(assert (=> b!203208 (= condMapEmpty!8570 (= (arr!4363 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2157)) mapDefault!8570)))))

(declare-fun mapIsEmpty!8570 () Bool)

(assert (=> mapIsEmpty!8570 mapRes!8570))

(declare-fun b!203209 () Bool)

(assert (=> b!203209 (= e!133053 true)))

(declare-fun lt!102446 () tuple2!3858)

(assert (=> b!203209 (= lt!102449 (+!425 lt!102455 lt!102446))))

(declare-datatypes ((Unit!6151 0))(
  ( (Unit!6152) )
))
(declare-fun lt!102457 () Unit!6151)

(declare-fun v!520 () V!6315)

(declare-fun addCommutativeForDiffKeys!140 (ListLongMap!2785 (_ BitVec 64) V!6315 (_ BitVec 64) V!6315) Unit!6151)

(assert (=> b!203209 (= lt!102457 (addCommutativeForDiffKeys!140 lt!102454 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203210 () Bool)

(declare-fun res!97608 () Bool)

(assert (=> b!203210 (=> (not res!97608) (not e!133054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203210 (= res!97608 (validKeyInArray!0 k0!843))))

(declare-fun b!203211 () Bool)

(declare-fun res!97609 () Bool)

(assert (=> b!203211 (=> (not res!97609) (not e!133054))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203211 (= res!97609 (and (= (size!4688 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4689 _keys!825) (size!4688 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203212 () Bool)

(declare-fun res!97605 () Bool)

(assert (=> b!203212 (=> (not res!97605) (not e!133054))))

(assert (=> b!203212 (= res!97605 (= (select (arr!4364 _keys!825) i!601) k0!843))))

(declare-fun b!203213 () Bool)

(assert (=> b!203213 (= e!133054 (not e!133056))))

(declare-fun res!97607 () Bool)

(assert (=> b!203213 (=> res!97607 e!133056)))

(assert (=> b!203213 (= res!97607 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6315)

(declare-fun getCurrentListMap!978 (array!9228 array!9226 (_ BitVec 32) (_ BitVec 32) V!6315 V!6315 (_ BitVec 32) Int) ListLongMap!2785)

(assert (=> b!203213 (= lt!102450 (getCurrentListMap!978 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102447 () array!9226)

(assert (=> b!203213 (= lt!102453 (getCurrentListMap!978 _keys!825 lt!102447 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203213 (and (= lt!102456 lt!102452) (= lt!102452 lt!102456))))

(assert (=> b!203213 (= lt!102452 (+!425 lt!102454 lt!102446))))

(assert (=> b!203213 (= lt!102446 (tuple2!3859 k0!843 v!520))))

(declare-fun lt!102451 () Unit!6151)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!91 (array!9228 array!9226 (_ BitVec 32) (_ BitVec 32) V!6315 V!6315 (_ BitVec 32) (_ BitVec 64) V!6315 (_ BitVec 32) Int) Unit!6151)

(assert (=> b!203213 (= lt!102451 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!91 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!349 (array!9228 array!9226 (_ BitVec 32) (_ BitVec 32) V!6315 V!6315 (_ BitVec 32) Int) ListLongMap!2785)

(assert (=> b!203213 (= lt!102456 (getCurrentListMapNoExtraKeys!349 _keys!825 lt!102447 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203213 (= lt!102447 (array!9227 (store (arr!4363 _values!649) i!601 (ValueCellFull!2157 v!520)) (size!4688 _values!649)))))

(assert (=> b!203213 (= lt!102454 (getCurrentListMapNoExtraKeys!349 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203214 () Bool)

(assert (=> b!203214 (= e!133051 tp_is_empty!5001)))

(assert (= (and start!20498 res!97604) b!203211))

(assert (= (and b!203211 res!97609) b!203206))

(assert (= (and b!203206 res!97612) b!203203))

(assert (= (and b!203203 res!97611) b!203207))

(assert (= (and b!203207 res!97610) b!203210))

(assert (= (and b!203210 res!97608) b!203212))

(assert (= (and b!203212 res!97605) b!203213))

(assert (= (and b!203213 (not res!97607)) b!203204))

(assert (= (and b!203204 (not res!97606)) b!203209))

(assert (= (and b!203208 condMapEmpty!8570) mapIsEmpty!8570))

(assert (= (and b!203208 (not condMapEmpty!8570)) mapNonEmpty!8570))

(get-info :version)

(assert (= (and mapNonEmpty!8570 ((_ is ValueCellFull!2157) mapValue!8570)) b!203205))

(assert (= (and b!203208 ((_ is ValueCellFull!2157) mapDefault!8570)) b!203214))

(assert (= start!20498 b!203208))

(declare-fun m!230629 () Bool)

(assert (=> b!203203 m!230629))

(declare-fun m!230631 () Bool)

(assert (=> b!203206 m!230631))

(declare-fun m!230633 () Bool)

(assert (=> b!203212 m!230633))

(declare-fun m!230635 () Bool)

(assert (=> b!203213 m!230635))

(declare-fun m!230637 () Bool)

(assert (=> b!203213 m!230637))

(declare-fun m!230639 () Bool)

(assert (=> b!203213 m!230639))

(declare-fun m!230641 () Bool)

(assert (=> b!203213 m!230641))

(declare-fun m!230643 () Bool)

(assert (=> b!203213 m!230643))

(declare-fun m!230645 () Bool)

(assert (=> b!203213 m!230645))

(declare-fun m!230647 () Bool)

(assert (=> b!203213 m!230647))

(declare-fun m!230649 () Bool)

(assert (=> b!203204 m!230649))

(declare-fun m!230651 () Bool)

(assert (=> b!203204 m!230651))

(declare-fun m!230653 () Bool)

(assert (=> b!203204 m!230653))

(declare-fun m!230655 () Bool)

(assert (=> mapNonEmpty!8570 m!230655))

(declare-fun m!230657 () Bool)

(assert (=> b!203209 m!230657))

(declare-fun m!230659 () Bool)

(assert (=> b!203209 m!230659))

(declare-fun m!230661 () Bool)

(assert (=> b!203210 m!230661))

(declare-fun m!230663 () Bool)

(assert (=> start!20498 m!230663))

(declare-fun m!230665 () Bool)

(assert (=> start!20498 m!230665))

(declare-fun m!230667 () Bool)

(assert (=> start!20498 m!230667))

(check-sat (not b_next!5145) (not b!203213) (not start!20498) (not mapNonEmpty!8570) tp_is_empty!5001 (not b!203206) b_and!11909 (not b!203204) (not b!203209) (not b!203203) (not b!203210))
(check-sat b_and!11909 (not b_next!5145))
