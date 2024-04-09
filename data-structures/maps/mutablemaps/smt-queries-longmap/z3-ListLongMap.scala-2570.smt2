; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39248 () Bool)

(assert start!39248)

(declare-fun b_free!9507 () Bool)

(declare-fun b_next!9507 () Bool)

(assert (=> start!39248 (= b_free!9507 (not b_next!9507))))

(declare-fun tp!34050 () Bool)

(declare-fun b_and!16911 () Bool)

(assert (=> start!39248 (= tp!34050 b_and!16911)))

(declare-fun b!414053 () Bool)

(declare-fun res!240787 () Bool)

(declare-fun e!247491 () Bool)

(assert (=> b!414053 (=> (not res!240787) (not e!247491))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25157 0))(
  ( (array!25158 (arr!12025 (Array (_ BitVec 32) (_ BitVec 64))) (size!12377 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25157)

(assert (=> b!414053 (= res!240787 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12377 _keys!709))))))

(declare-fun b!414054 () Bool)

(declare-fun res!240794 () Bool)

(assert (=> b!414054 (=> (not res!240794) (not e!247491))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414054 (= res!240794 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!17610 () Bool)

(declare-fun mapRes!17610 () Bool)

(assert (=> mapIsEmpty!17610 mapRes!17610))

(declare-fun b!414055 () Bool)

(declare-fun e!247488 () Bool)

(declare-fun e!247490 () Bool)

(assert (=> b!414055 (= e!247488 e!247490)))

(declare-fun res!240798 () Bool)

(assert (=> b!414055 (=> (not res!240798) (not e!247490))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!414055 (= res!240798 (= from!863 i!563))))

(declare-datatypes ((V!15317 0))(
  ( (V!15318 (val!5374 Int)) )
))
(declare-fun minValue!515 () V!15317)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4986 0))(
  ( (ValueCellFull!4986 (v!7617 V!15317)) (EmptyCell!4986) )
))
(declare-datatypes ((array!25159 0))(
  ( (array!25160 (arr!12026 (Array (_ BitVec 32) ValueCell!4986)) (size!12378 (_ BitVec 32))) )
))
(declare-fun lt!189914 () array!25159)

(declare-datatypes ((tuple2!6916 0))(
  ( (tuple2!6917 (_1!3468 (_ BitVec 64)) (_2!3468 V!15317)) )
))
(declare-datatypes ((List!6973 0))(
  ( (Nil!6970) (Cons!6969 (h!7825 tuple2!6916) (t!12155 List!6973)) )
))
(declare-datatypes ((ListLongMap!5843 0))(
  ( (ListLongMap!5844 (toList!2937 List!6973)) )
))
(declare-fun lt!189913 () ListLongMap!5843)

(declare-fun zeroValue!515 () V!15317)

(declare-fun lt!189911 () array!25157)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1144 (array!25157 array!25159 (_ BitVec 32) (_ BitVec 32) V!15317 V!15317 (_ BitVec 32) Int) ListLongMap!5843)

(assert (=> b!414055 (= lt!189913 (getCurrentListMapNoExtraKeys!1144 lt!189911 lt!189914 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25159)

(declare-fun v!412 () V!15317)

(assert (=> b!414055 (= lt!189914 (array!25160 (store (arr!12026 _values!549) i!563 (ValueCellFull!4986 v!412)) (size!12378 _values!549)))))

(declare-fun lt!189915 () ListLongMap!5843)

(assert (=> b!414055 (= lt!189915 (getCurrentListMapNoExtraKeys!1144 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun call!28697 () ListLongMap!5843)

(declare-fun c!54899 () Bool)

(declare-fun bm!28693 () Bool)

(assert (=> bm!28693 (= call!28697 (getCurrentListMapNoExtraKeys!1144 (ite c!54899 lt!189911 _keys!709) (ite c!54899 lt!189914 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414056 () Bool)

(declare-fun e!247487 () Bool)

(assert (=> b!414056 (= e!247487 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!12377 _keys!709))))))

(declare-fun b!414057 () Bool)

(assert (=> b!414057 (= e!247491 e!247488)))

(declare-fun res!240793 () Bool)

(assert (=> b!414057 (=> (not res!240793) (not e!247488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25157 (_ BitVec 32)) Bool)

(assert (=> b!414057 (= res!240793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189911 mask!1025))))

(assert (=> b!414057 (= lt!189911 (array!25158 (store (arr!12025 _keys!709) i!563 k0!794) (size!12377 _keys!709)))))

(declare-fun b!414058 () Bool)

(declare-fun res!240788 () Bool)

(assert (=> b!414058 (=> (not res!240788) (not e!247491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414058 (= res!240788 (validMask!0 mask!1025))))

(declare-fun b!414059 () Bool)

(declare-fun e!247495 () Bool)

(declare-fun tp_is_empty!10659 () Bool)

(assert (=> b!414059 (= e!247495 tp_is_empty!10659)))

(declare-fun b!414060 () Bool)

(declare-fun res!240797 () Bool)

(assert (=> b!414060 (=> (not res!240797) (not e!247491))))

(declare-datatypes ((List!6974 0))(
  ( (Nil!6971) (Cons!6970 (h!7826 (_ BitVec 64)) (t!12156 List!6974)) )
))
(declare-fun arrayNoDuplicates!0 (array!25157 (_ BitVec 32) List!6974) Bool)

(assert (=> b!414060 (= res!240797 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6971))))

(declare-fun b!414061 () Bool)

(declare-fun res!240785 () Bool)

(assert (=> b!414061 (=> (not res!240785) (not e!247488))))

(assert (=> b!414061 (= res!240785 (bvsle from!863 i!563))))

(declare-fun b!414062 () Bool)

(declare-fun res!240795 () Bool)

(assert (=> b!414062 (=> (not res!240795) (not e!247488))))

(assert (=> b!414062 (= res!240795 (arrayNoDuplicates!0 lt!189911 #b00000000000000000000000000000000 Nil!6971))))

(declare-fun b!414063 () Bool)

(declare-fun e!247493 () Bool)

(declare-fun call!28696 () ListLongMap!5843)

(assert (=> b!414063 (= e!247493 (= call!28696 call!28697))))

(declare-fun b!414064 () Bool)

(declare-fun res!240792 () Bool)

(assert (=> b!414064 (=> (not res!240792) (not e!247491))))

(declare-fun arrayContainsKey!0 (array!25157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414064 (= res!240792 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!414065 () Bool)

(assert (=> b!414065 (= e!247490 (not e!247487))))

(declare-fun res!240791 () Bool)

(assert (=> b!414065 (=> res!240791 e!247487)))

(assert (=> b!414065 (= res!240791 (validKeyInArray!0 (select (arr!12025 _keys!709) from!863)))))

(assert (=> b!414065 e!247493))

(assert (=> b!414065 (= c!54899 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12213 0))(
  ( (Unit!12214) )
))
(declare-fun lt!189912 () Unit!12213)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!369 (array!25157 array!25159 (_ BitVec 32) (_ BitVec 32) V!15317 V!15317 (_ BitVec 32) (_ BitVec 64) V!15317 (_ BitVec 32) Int) Unit!12213)

(assert (=> b!414065 (= lt!189912 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!369 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414066 () Bool)

(declare-fun res!240786 () Bool)

(assert (=> b!414066 (=> (not res!240786) (not e!247491))))

(assert (=> b!414066 (= res!240786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!414067 () Bool)

(declare-fun res!240789 () Bool)

(assert (=> b!414067 (=> (not res!240789) (not e!247491))))

(assert (=> b!414067 (= res!240789 (or (= (select (arr!12025 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12025 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414068 () Bool)

(declare-fun res!240796 () Bool)

(assert (=> b!414068 (=> (not res!240796) (not e!247491))))

(assert (=> b!414068 (= res!240796 (and (= (size!12378 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12377 _keys!709) (size!12378 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414069 () Bool)

(declare-fun +!1155 (ListLongMap!5843 tuple2!6916) ListLongMap!5843)

(assert (=> b!414069 (= e!247493 (= call!28697 (+!1155 call!28696 (tuple2!6917 k0!794 v!412))))))

(declare-fun bm!28694 () Bool)

(assert (=> bm!28694 (= call!28696 (getCurrentListMapNoExtraKeys!1144 (ite c!54899 _keys!709 lt!189911) (ite c!54899 _values!549 lt!189914) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414070 () Bool)

(declare-fun e!247492 () Bool)

(assert (=> b!414070 (= e!247492 tp_is_empty!10659)))

(declare-fun res!240790 () Bool)

(assert (=> start!39248 (=> (not res!240790) (not e!247491))))

(assert (=> start!39248 (= res!240790 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12377 _keys!709))))))

(assert (=> start!39248 e!247491))

(assert (=> start!39248 tp_is_empty!10659))

(assert (=> start!39248 tp!34050))

(assert (=> start!39248 true))

(declare-fun e!247489 () Bool)

(declare-fun array_inv!8772 (array!25159) Bool)

(assert (=> start!39248 (and (array_inv!8772 _values!549) e!247489)))

(declare-fun array_inv!8773 (array!25157) Bool)

(assert (=> start!39248 (array_inv!8773 _keys!709)))

(declare-fun mapNonEmpty!17610 () Bool)

(declare-fun tp!34049 () Bool)

(assert (=> mapNonEmpty!17610 (= mapRes!17610 (and tp!34049 e!247495))))

(declare-fun mapValue!17610 () ValueCell!4986)

(declare-fun mapKey!17610 () (_ BitVec 32))

(declare-fun mapRest!17610 () (Array (_ BitVec 32) ValueCell!4986))

(assert (=> mapNonEmpty!17610 (= (arr!12026 _values!549) (store mapRest!17610 mapKey!17610 mapValue!17610))))

(declare-fun b!414071 () Bool)

(assert (=> b!414071 (= e!247489 (and e!247492 mapRes!17610))))

(declare-fun condMapEmpty!17610 () Bool)

(declare-fun mapDefault!17610 () ValueCell!4986)

(assert (=> b!414071 (= condMapEmpty!17610 (= (arr!12026 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4986)) mapDefault!17610)))))

(assert (= (and start!39248 res!240790) b!414058))

(assert (= (and b!414058 res!240788) b!414068))

(assert (= (and b!414068 res!240796) b!414066))

(assert (= (and b!414066 res!240786) b!414060))

(assert (= (and b!414060 res!240797) b!414053))

(assert (= (and b!414053 res!240787) b!414054))

(assert (= (and b!414054 res!240794) b!414067))

(assert (= (and b!414067 res!240789) b!414064))

(assert (= (and b!414064 res!240792) b!414057))

(assert (= (and b!414057 res!240793) b!414062))

(assert (= (and b!414062 res!240795) b!414061))

(assert (= (and b!414061 res!240785) b!414055))

(assert (= (and b!414055 res!240798) b!414065))

(assert (= (and b!414065 c!54899) b!414069))

(assert (= (and b!414065 (not c!54899)) b!414063))

(assert (= (or b!414069 b!414063) bm!28693))

(assert (= (or b!414069 b!414063) bm!28694))

(assert (= (and b!414065 (not res!240791)) b!414056))

(assert (= (and b!414071 condMapEmpty!17610) mapIsEmpty!17610))

(assert (= (and b!414071 (not condMapEmpty!17610)) mapNonEmpty!17610))

(get-info :version)

(assert (= (and mapNonEmpty!17610 ((_ is ValueCellFull!4986) mapValue!17610)) b!414059))

(assert (= (and b!414071 ((_ is ValueCellFull!4986) mapDefault!17610)) b!414070))

(assert (= start!39248 b!414071))

(declare-fun m!403353 () Bool)

(assert (=> b!414062 m!403353))

(declare-fun m!403355 () Bool)

(assert (=> b!414067 m!403355))

(declare-fun m!403357 () Bool)

(assert (=> start!39248 m!403357))

(declare-fun m!403359 () Bool)

(assert (=> start!39248 m!403359))

(declare-fun m!403361 () Bool)

(assert (=> b!414058 m!403361))

(declare-fun m!403363 () Bool)

(assert (=> bm!28693 m!403363))

(declare-fun m!403365 () Bool)

(assert (=> b!414065 m!403365))

(assert (=> b!414065 m!403365))

(declare-fun m!403367 () Bool)

(assert (=> b!414065 m!403367))

(declare-fun m!403369 () Bool)

(assert (=> b!414065 m!403369))

(declare-fun m!403371 () Bool)

(assert (=> b!414057 m!403371))

(declare-fun m!403373 () Bool)

(assert (=> b!414057 m!403373))

(declare-fun m!403375 () Bool)

(assert (=> b!414060 m!403375))

(declare-fun m!403377 () Bool)

(assert (=> mapNonEmpty!17610 m!403377))

(declare-fun m!403379 () Bool)

(assert (=> b!414054 m!403379))

(declare-fun m!403381 () Bool)

(assert (=> b!414066 m!403381))

(declare-fun m!403383 () Bool)

(assert (=> bm!28694 m!403383))

(declare-fun m!403385 () Bool)

(assert (=> b!414069 m!403385))

(declare-fun m!403387 () Bool)

(assert (=> b!414055 m!403387))

(declare-fun m!403389 () Bool)

(assert (=> b!414055 m!403389))

(declare-fun m!403391 () Bool)

(assert (=> b!414055 m!403391))

(declare-fun m!403393 () Bool)

(assert (=> b!414064 m!403393))

(check-sat (not b_next!9507) (not bm!28693) (not b!414058) (not b!414054) (not b!414066) (not b!414064) tp_is_empty!10659 (not b!414057) (not b!414060) (not b!414055) (not start!39248) (not b!414062) (not mapNonEmpty!17610) b_and!16911 (not b!414065) (not b!414069) (not bm!28694))
(check-sat b_and!16911 (not b_next!9507))
