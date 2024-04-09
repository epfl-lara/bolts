; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39164 () Bool)

(assert start!39164)

(declare-fun b_free!9423 () Bool)

(declare-fun b_next!9423 () Bool)

(assert (=> start!39164 (= b_free!9423 (not b_next!9423))))

(declare-fun tp!33798 () Bool)

(declare-fun b_and!16827 () Bool)

(assert (=> start!39164 (= tp!33798 b_and!16827)))

(declare-fun b!411927 () Bool)

(declare-fun res!239193 () Bool)

(declare-fun e!246577 () Bool)

(assert (=> b!411927 (=> (not res!239193) (not e!246577))))

(declare-datatypes ((array!24991 0))(
  ( (array!24992 (arr!11942 (Array (_ BitVec 32) (_ BitVec 64))) (size!12294 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24991)

(declare-datatypes ((List!6903 0))(
  ( (Nil!6900) (Cons!6899 (h!7755 (_ BitVec 64)) (t!12085 List!6903)) )
))
(declare-fun arrayNoDuplicates!0 (array!24991 (_ BitVec 32) List!6903) Bool)

(assert (=> b!411927 (= res!239193 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6900))))

(declare-fun b!411928 () Bool)

(declare-fun res!239195 () Bool)

(assert (=> b!411928 (=> (not res!239195) (not e!246577))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15205 0))(
  ( (V!15206 (val!5332 Int)) )
))
(declare-datatypes ((ValueCell!4944 0))(
  ( (ValueCellFull!4944 (v!7575 V!15205)) (EmptyCell!4944) )
))
(declare-datatypes ((array!24993 0))(
  ( (array!24994 (arr!11943 (Array (_ BitVec 32) ValueCell!4944)) (size!12295 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24993)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!411928 (= res!239195 (and (= (size!12295 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12294 _keys!709) (size!12295 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!239192 () Bool)

(assert (=> start!39164 (=> (not res!239192) (not e!246577))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39164 (= res!239192 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12294 _keys!709))))))

(assert (=> start!39164 e!246577))

(declare-fun tp_is_empty!10575 () Bool)

(assert (=> start!39164 tp_is_empty!10575))

(assert (=> start!39164 tp!33798))

(assert (=> start!39164 true))

(declare-fun e!246575 () Bool)

(declare-fun array_inv!8712 (array!24993) Bool)

(assert (=> start!39164 (and (array_inv!8712 _values!549) e!246575)))

(declare-fun array_inv!8713 (array!24991) Bool)

(assert (=> start!39164 (array_inv!8713 _keys!709)))

(declare-fun b!411929 () Bool)

(declare-fun e!246574 () Bool)

(assert (=> b!411929 (= e!246577 e!246574)))

(declare-fun res!239201 () Bool)

(assert (=> b!411929 (=> (not res!239201) (not e!246574))))

(declare-fun lt!189379 () array!24991)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24991 (_ BitVec 32)) Bool)

(assert (=> b!411929 (= res!239201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189379 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!411929 (= lt!189379 (array!24992 (store (arr!11942 _keys!709) i!563 k0!794) (size!12294 _keys!709)))))

(declare-fun b!411930 () Bool)

(declare-fun res!239197 () Bool)

(assert (=> b!411930 (=> (not res!239197) (not e!246577))))

(assert (=> b!411930 (= res!239197 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12294 _keys!709))))))

(declare-fun b!411931 () Bool)

(declare-fun res!239191 () Bool)

(assert (=> b!411931 (=> (not res!239191) (not e!246574))))

(assert (=> b!411931 (= res!239191 (bvsle from!863 i!563))))

(declare-fun b!411932 () Bool)

(declare-fun res!239200 () Bool)

(assert (=> b!411932 (=> (not res!239200) (not e!246577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411932 (= res!239200 (validMask!0 mask!1025))))

(declare-fun b!411933 () Bool)

(declare-fun e!246573 () Bool)

(declare-fun mapRes!17484 () Bool)

(assert (=> b!411933 (= e!246575 (and e!246573 mapRes!17484))))

(declare-fun condMapEmpty!17484 () Bool)

(declare-fun mapDefault!17484 () ValueCell!4944)

(assert (=> b!411933 (= condMapEmpty!17484 (= (arr!11943 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4944)) mapDefault!17484)))))

(declare-fun b!411934 () Bool)

(declare-fun res!239202 () Bool)

(assert (=> b!411934 (=> (not res!239202) (not e!246577))))

(declare-fun arrayContainsKey!0 (array!24991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411934 (= res!239202 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!411935 () Bool)

(declare-fun res!239198 () Bool)

(assert (=> b!411935 (=> (not res!239198) (not e!246577))))

(assert (=> b!411935 (= res!239198 (or (= (select (arr!11942 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11942 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17484 () Bool)

(declare-fun tp!33797 () Bool)

(declare-fun e!246576 () Bool)

(assert (=> mapNonEmpty!17484 (= mapRes!17484 (and tp!33797 e!246576))))

(declare-fun mapRest!17484 () (Array (_ BitVec 32) ValueCell!4944))

(declare-fun mapValue!17484 () ValueCell!4944)

(declare-fun mapKey!17484 () (_ BitVec 32))

(assert (=> mapNonEmpty!17484 (= (arr!11943 _values!549) (store mapRest!17484 mapKey!17484 mapValue!17484))))

(declare-fun b!411936 () Bool)

(assert (=> b!411936 (= e!246576 tp_is_empty!10575)))

(declare-fun mapIsEmpty!17484 () Bool)

(assert (=> mapIsEmpty!17484 mapRes!17484))

(declare-fun b!411937 () Bool)

(declare-fun res!239199 () Bool)

(assert (=> b!411937 (=> (not res!239199) (not e!246574))))

(assert (=> b!411937 (= res!239199 (arrayNoDuplicates!0 lt!189379 #b00000000000000000000000000000000 Nil!6900))))

(declare-fun b!411938 () Bool)

(declare-fun res!239194 () Bool)

(assert (=> b!411938 (=> (not res!239194) (not e!246577))))

(assert (=> b!411938 (= res!239194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411939 () Bool)

(assert (=> b!411939 (= e!246573 tp_is_empty!10575)))

(declare-fun b!411940 () Bool)

(declare-fun res!239196 () Bool)

(assert (=> b!411940 (=> (not res!239196) (not e!246577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411940 (= res!239196 (validKeyInArray!0 k0!794))))

(declare-fun b!411941 () Bool)

(assert (=> b!411941 (= e!246574 false)))

(declare-fun minValue!515 () V!15205)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15205)

(declare-fun v!412 () V!15205)

(declare-datatypes ((tuple2!6846 0))(
  ( (tuple2!6847 (_1!3433 (_ BitVec 64)) (_2!3433 V!15205)) )
))
(declare-datatypes ((List!6904 0))(
  ( (Nil!6901) (Cons!6900 (h!7756 tuple2!6846) (t!12086 List!6904)) )
))
(declare-datatypes ((ListLongMap!5773 0))(
  ( (ListLongMap!5774 (toList!2902 List!6904)) )
))
(declare-fun lt!189380 () ListLongMap!5773)

(declare-fun getCurrentListMapNoExtraKeys!1112 (array!24991 array!24993 (_ BitVec 32) (_ BitVec 32) V!15205 V!15205 (_ BitVec 32) Int) ListLongMap!5773)

(assert (=> b!411941 (= lt!189380 (getCurrentListMapNoExtraKeys!1112 lt!189379 (array!24994 (store (arr!11943 _values!549) i!563 (ValueCellFull!4944 v!412)) (size!12295 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189381 () ListLongMap!5773)

(assert (=> b!411941 (= lt!189381 (getCurrentListMapNoExtraKeys!1112 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39164 res!239192) b!411932))

(assert (= (and b!411932 res!239200) b!411928))

(assert (= (and b!411928 res!239195) b!411938))

(assert (= (and b!411938 res!239194) b!411927))

(assert (= (and b!411927 res!239193) b!411930))

(assert (= (and b!411930 res!239197) b!411940))

(assert (= (and b!411940 res!239196) b!411935))

(assert (= (and b!411935 res!239198) b!411934))

(assert (= (and b!411934 res!239202) b!411929))

(assert (= (and b!411929 res!239201) b!411937))

(assert (= (and b!411937 res!239199) b!411931))

(assert (= (and b!411931 res!239191) b!411941))

(assert (= (and b!411933 condMapEmpty!17484) mapIsEmpty!17484))

(assert (= (and b!411933 (not condMapEmpty!17484)) mapNonEmpty!17484))

(get-info :version)

(assert (= (and mapNonEmpty!17484 ((_ is ValueCellFull!4944) mapValue!17484)) b!411936))

(assert (= (and b!411933 ((_ is ValueCellFull!4944) mapDefault!17484)) b!411939))

(assert (= start!39164 b!411933))

(declare-fun m!401889 () Bool)

(assert (=> mapNonEmpty!17484 m!401889))

(declare-fun m!401891 () Bool)

(assert (=> b!411935 m!401891))

(declare-fun m!401893 () Bool)

(assert (=> b!411941 m!401893))

(declare-fun m!401895 () Bool)

(assert (=> b!411941 m!401895))

(declare-fun m!401897 () Bool)

(assert (=> b!411941 m!401897))

(declare-fun m!401899 () Bool)

(assert (=> b!411927 m!401899))

(declare-fun m!401901 () Bool)

(assert (=> b!411934 m!401901))

(declare-fun m!401903 () Bool)

(assert (=> b!411937 m!401903))

(declare-fun m!401905 () Bool)

(assert (=> start!39164 m!401905))

(declare-fun m!401907 () Bool)

(assert (=> start!39164 m!401907))

(declare-fun m!401909 () Bool)

(assert (=> b!411932 m!401909))

(declare-fun m!401911 () Bool)

(assert (=> b!411938 m!401911))

(declare-fun m!401913 () Bool)

(assert (=> b!411929 m!401913))

(declare-fun m!401915 () Bool)

(assert (=> b!411929 m!401915))

(declare-fun m!401917 () Bool)

(assert (=> b!411940 m!401917))

(check-sat tp_is_empty!10575 (not b!411941) (not start!39164) (not b_next!9423) b_and!16827 (not b!411938) (not b!411927) (not mapNonEmpty!17484) (not b!411934) (not b!411932) (not b!411940) (not b!411929) (not b!411937))
(check-sat b_and!16827 (not b_next!9423))
